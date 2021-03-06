#include <pcl/point_cloud.h>
#include <pcl/point_types.h>
// #include <pcl/search/kdtree.h>
#include <pcl/kdtree/kdtree_flann.h>
#include <pcl_conversions/pcl_conversions.h>
#include <iostream>

// for cylinders
#include <visualization_msgs/MarkerArray.h>

#include <geometry_msgs/PoseArray.h>
#include <geometry_msgs/Vector3.h>
#include <math.h>
#include <nav_msgs/Odometry.h>
#include <ros/console.h>
#include <ros/ros.h>
#include <sensor_msgs/PointCloud2.h>

#include <Eigen/Eigen>
#include <random>

#include <std_msgs/Float64.h>

#include <std_msgs/Float64MultiArray.h>

using namespace std;

vector<int> pointIdxRadiusSearch;
vector<float> pointRadiusSquaredDistance;

random_device rd;
default_random_engine eng(rd());
uniform_real_distribution<double> rand_x;
uniform_real_distribution<double> rand_y;
uniform_real_distribution<double> rand_w;
uniform_real_distribution<double> rand_h;

// ros::Publisher _local_map_pub;
ros::Publisher _all_map_cloud_pub;
ros::Publisher click_map_pub_;

// Define publisher for publishing obstacle information
ros::Publisher obstacle_information_publisher;

vector<double> _state;

int _obs_num;
double _x_size, _y_size, _z_size;
double _x_l, _x_h, _y_l, _y_h, _w_l, _w_h, _h_l, _h_h;
double _z_limit, _sensing_range, _resolution, _sense_rate, _init_x, _init_y;
std::string _frame_id;

bool _map_ok = false;
bool _has_odom = false;
bool _set_cylinder = false;

int circle_num_;
double radius_l_, radius_h_, z_l_, z_h_;
double theta_;
uniform_real_distribution<double> rand_radius_;
uniform_real_distribution<double> rand_radius2_;
uniform_real_distribution<double> rand_theta_;
uniform_real_distribution<double> rand_z_;

sensor_msgs::PointCloud2 globalMap_pcd;


pcl::PointCloud<pcl::PointXYZ> cloudMap;
pcl::PointCloud<pcl::PointXYZ> cylinders;



void RandomMapGenerate(ros::NodeHandle n) {
  pcl::PointXYZ pt_random;
  geometry_msgs::Pose pt;
  pt.orientation.w = 1.0;


  rand_x = uniform_real_distribution<double>(_x_l, _x_h);
  rand_y = uniform_real_distribution<double>(_y_l, _y_h);
  rand_w = uniform_real_distribution<double>(_w_l, _w_h);
  rand_h = uniform_real_distribution<double>(_h_l, _h_h);

  rand_radius_ = uniform_real_distribution<double>(radius_l_, radius_h_);
  rand_radius2_ = uniform_real_distribution<double>(radius_l_, 1.2);
  rand_theta_ = uniform_real_distribution<double>(-theta_, theta_);
  rand_z_ = uniform_real_distribution<double>(z_l_, z_h_);


  // Definition for publishing obstacle information
  obstacle_information_publisher = n.advertise<std_msgs::Float64MultiArray>("obstacle_information_topic", 1000);


  ros::Rate inner_loop_rate(10);
  
  // _obs_num is the number of obstacles

  // generate polar obs
  // for (int i = 0; i < _obs_num; i++) {

  // Modify the loop condition to take loop rate into consideration
  // Set i as -1 to solve discrepancy between obstacle publisher and simplical complex subscriber
  int i = -1;
  while (i < _obs_num && ros::ok()) {
    double x, y, w, h;
    x = rand_x(eng);
    y = rand_y(eng);
    w = rand_w(eng);
    h = rand_h(eng);
    int heiNum = ceil(h / _resolution);

    if (sqrt(pow(x - _init_x, 2) + pow(y - _init_y, 2)) < 2.0) {
      i--;
      continue;
    }

    if (sqrt(pow(x - 19.0, 2) + pow(y - 0.0, 2)) < 2.0) {
      i--;
      continue;
    }

    x = floor(x / _resolution) * _resolution + _resolution / 2.0;
    y = floor(y / _resolution) * _resolution + _resolution / 2.0;

    pt.position.x= x;
    pt.position.y = y;
    pt.position.z = 0.5*h;

    pt_random.x = x;
    pt_random.y = y;
    pt_random.z = w; 

    std_msgs::Float64MultiArray obstacle_information;

    /*
    ROS_INFO("Obstacle Index: %d", i);
    ROS_INFO("Obstacle X: %f", x);
    ROS_INFO("Obstacle Y: %f", y);
    ROS_INFO("Obstacle Z: %f", pt.position.z);
    ROS_INFO("Obstacle Width: %f", w);
    */
    
    obstacle_information.data.push_back(i * 1.0);   //Append obstacle index
    obstacle_information.data.push_back(x);         //Append obstacle X coordinate
    obstacle_information.data.push_back(y);         //Append obstacle Y coordinate
    obstacle_information.data.push_back(0.5 * h);   //Append obstacle Z coordinate
    obstacle_information.data.push_back(w);         //Append obstacle width

    obstacle_information_publisher.publish(obstacle_information);
    
    ros::spinOnce();

    inner_loop_rate.sleep();

    // Drop i = -1 to solve discrepancy between obstacle publisher and simplical complex subscriber
    if (i != -1){
      // widNum is the number of square
      int widNum = ceil(w / _resolution); 
      
      for (int r = -widNum / 2.0; r < widNum / 2.0; r++)
        for (int s = -widNum / 2.0; s < widNum / 2.0; s++) {
          //@yuwei: to make it as cylinders
          if ( _set_cylinder && (r*r + s*s) > (widNum*widNum / 4.0)  ){
            continue;
          }
          for (int t = -2.0; t < heiNum; t++) {
            pt_random.x = x + (r + 0.5) * _resolution + 1e-2;
            pt_random.y = y + (s + 0.5) * _resolution + 1e-2;
            pt_random.z = (t + 0.5) * _resolution + 1e-2;
            cloudMap.points.push_back(pt_random);
          }
        }
    }

    
    
    i++;
  }

  // generate circle obs // even if we generate, we will not include them into our shared information
  for (int i = 0; i < circle_num_; ++i) {
    double x, y, z;
    x = rand_x(eng);
    y = rand_y(eng);
    z = rand_z_(eng);

    if (sqrt(pow(x - _init_x, 2) + pow(y - _init_y, 2)) < 2.0) {
      i--;
      continue;
    }

    if (sqrt(pow(x - 19.0, 2) + pow(y - 0.0, 2)) < 2.0) {
      i--;
      continue;
    }

    x = floor(x / _resolution) * _resolution + _resolution / 2.0;
    y = floor(y / _resolution) * _resolution + _resolution / 2.0;
    z = floor(z / _resolution) * _resolution + _resolution / 2.0;

    Eigen::Vector3d translate(x, y, z);

    double theta = rand_theta_(eng);
    Eigen::Matrix3d rotate;
    rotate << cos(theta), -sin(theta), 0.0, sin(theta), cos(theta), 0.0, 0, 0,
        1;

    double radius1 = rand_radius_(eng);
    double radius2 = rand_radius2_(eng);

    // draw a circle centered at (x,y,z)
    Eigen::Vector3d cpt;
    for (double angle = 0.0; angle < 6.282; angle += _resolution / 2) {
      cpt(0) = 0.0;
      cpt(1) = radius1 * cos(angle);
      cpt(2) = radius2 * sin(angle);

      // inflate
      Eigen::Vector3d cpt_if;
      for (int ifx = -0; ifx <= 0; ++ifx)
        for (int ify = -0; ify <= 0; ++ify)
          for (int ifz = -0; ifz <= 0; ++ifz) {
            cpt_if = cpt + Eigen::Vector3d(ifx * _resolution, ify * _resolution,
                                           ifz * _resolution);
            cpt_if = rotate * cpt_if + Eigen::Vector3d(x, y, z);
            pt_random.x = cpt_if(0);
            pt_random.y = cpt_if(1);
            pt_random.z = cpt_if(2);
            cloudMap.push_back(pt_random);
          }
    }
  }

  cloudMap.width = cloudMap.points.size();
  cloudMap.height = 1;
  cloudMap.is_dense = true;

  ROS_WARN("Finished generate random map ");

  _map_ok = true;
}

int i = 0;
void pubSensedPoints() {
  // if (i < 10) {
  pcl::toROSMsg(cloudMap, globalMap_pcd);
  globalMap_pcd.header.frame_id = _frame_id;
  _all_map_cloud_pub.publish(globalMap_pcd);
  // }

  return;
}



int main(int argc, char** argv) {
  ros::init(argc, argv, "random_map_sensing");
  ros::NodeHandle n("~");

  //_local_map_pub = n.advertise<sensor_msgs::PointCloud2>("local_cloud", 1);
  _all_map_cloud_pub = n.advertise<sensor_msgs::PointCloud2>("global_cloud", 1);


  n.param("init_state_x", _init_x, 0.0);
  n.param("init_state_y", _init_y, 0.0);

  n.param("map/x_size", _x_size, 50.0);
  n.param("map/y_size", _y_size, 50.0);
  n.param("map/z_size", _z_size, 5.0);

  // clearance for multi robots. 
  _x_size -= 2.0;
  _y_size -= 2.0;


  n.param("map/obs_num", _obs_num, 30);
  n.param("map/resolution", _resolution, 0.1);
  n.param("map/circle_num", circle_num_, 30);
  n.param("map/frame_id", _frame_id, string("map"));


  n.param("ObstacleShape/lower_rad", _w_l, 0.3);
  n.param("ObstacleShape/upper_rad", _w_h, 0.8);
  n.param("ObstacleShape/lower_hei", _h_l, 3.0);
  n.param("ObstacleShape/upper_hei", _h_h, 7.0);
  n.param("ObstacleShape/set_cylinder", _set_cylinder, false);


  n.param("ObstacleShape/radius_l", radius_l_, 7.0);
  n.param("ObstacleShape/radius_h", radius_h_, 7.0);
  n.param("ObstacleShape/z_l", z_l_, 7.0);
  n.param("ObstacleShape/z_h", z_h_, 7.0);
  n.param("ObstacleShape/theta", theta_, 7.0);

  n.param("sensing/radius", _sensing_range, 10.0);
  n.param("sensing/radius", _sense_rate, 10.0);


  _x_l = -_x_size / 2.0;
  _x_h = +_x_size / 2.0;

  _y_l = -_y_size / 2.0;
  _y_h = +_y_size / 2.0;

  _obs_num = min(_obs_num, (int)_x_size * 10);
  _z_limit = _z_size;

  ros::Duration(0.5).sleep();

  RandomMapGenerate(n);

  ros::Rate loop_rate(_sense_rate);

  while (ros::ok()) {
    pubSensedPoints();
    ros::spinOnce();
    loop_rate.sleep();
  }
}