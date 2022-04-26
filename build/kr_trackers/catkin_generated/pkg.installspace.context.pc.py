# generated from catkin/cmake/template/pkg.context.pc.in
CATKIN_PACKAGE_PREFIX = ""
PROJECT_PKG_CONFIG_INCLUDE_DIRS = "${prefix}/include;/usr/include/eigen3".split(';') if "${prefix}/include;/usr/include/eigen3" != "" else []
PROJECT_CATKIN_DEPENDS = "actionlib;std_msgs;geometry_msgs;nav_msgs;tf;kr_mav_msgs;kr_tracker_msgs;kr_trackers_manager;bspline".replace(';', ' ')
PKG_CONFIG_LIBRARIES_WITH_PREFIX = "-lkr_trackers".split(';') if "-lkr_trackers" != "" else []
PROJECT_NAME = "kr_trackers"
PROJECT_SPACE_DIR = "/home/xechariah/projects/entry_level_project/install"
PROJECT_VERSION = "1.0.0"
