# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from kr_mav_msgs/Bspline.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import genpy
import geometry_msgs.msg

class Bspline(genpy.Message):
  _md5sum = "b352d4f7278a546180de67cbe6793e49"
  _type = "kr_mav_msgs/Bspline"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """int32 order
int64 traj_id
time start_time

float64[] knots
geometry_msgs/Point[] pos_pts

float64[] yaw_pts
float64 yaw_dt


================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
"""
  __slots__ = ['order','traj_id','start_time','knots','pos_pts','yaw_pts','yaw_dt']
  _slot_types = ['int32','int64','time','float64[]','geometry_msgs/Point[]','float64[]','float64']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       order,traj_id,start_time,knots,pos_pts,yaw_pts,yaw_dt

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(Bspline, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.order is None:
        self.order = 0
      if self.traj_id is None:
        self.traj_id = 0
      if self.start_time is None:
        self.start_time = genpy.Time()
      if self.knots is None:
        self.knots = []
      if self.pos_pts is None:
        self.pos_pts = []
      if self.yaw_pts is None:
        self.yaw_pts = []
      if self.yaw_dt is None:
        self.yaw_dt = 0.
    else:
      self.order = 0
      self.traj_id = 0
      self.start_time = genpy.Time()
      self.knots = []
      self.pos_pts = []
      self.yaw_pts = []
      self.yaw_dt = 0.

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self
      buff.write(_get_struct_iq2I().pack(_x.order, _x.traj_id, _x.start_time.secs, _x.start_time.nsecs))
      length = len(self.knots)
      buff.write(_struct_I.pack(length))
      pattern = '<%sd'%length
      buff.write(struct.Struct(pattern).pack(*self.knots))
      length = len(self.pos_pts)
      buff.write(_struct_I.pack(length))
      for val1 in self.pos_pts:
        _x = val1
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
      length = len(self.yaw_pts)
      buff.write(_struct_I.pack(length))
      pattern = '<%sd'%length
      buff.write(struct.Struct(pattern).pack(*self.yaw_pts))
      _x = self.yaw_dt
      buff.write(_get_struct_d().pack(_x))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.start_time is None:
        self.start_time = genpy.Time()
      if self.pos_pts is None:
        self.pos_pts = None
      end = 0
      _x = self
      start = end
      end += 20
      (_x.order, _x.traj_id, _x.start_time.secs, _x.start_time.nsecs,) = _get_struct_iq2I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sd'%length
      start = end
      s = struct.Struct(pattern)
      end += s.size
      self.knots = s.unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.pos_pts = []
      for i in range(0, length):
        val1 = geometry_msgs.msg.Point()
        _x = val1
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        self.pos_pts.append(val1)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sd'%length
      start = end
      s = struct.Struct(pattern)
      end += s.size
      self.yaw_pts = s.unpack(str[start:end])
      start = end
      end += 8
      (self.yaw_dt,) = _get_struct_d().unpack(str[start:end])
      self.start_time.canon()
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_get_struct_iq2I().pack(_x.order, _x.traj_id, _x.start_time.secs, _x.start_time.nsecs))
      length = len(self.knots)
      buff.write(_struct_I.pack(length))
      pattern = '<%sd'%length
      buff.write(self.knots.tostring())
      length = len(self.pos_pts)
      buff.write(_struct_I.pack(length))
      for val1 in self.pos_pts:
        _x = val1
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
      length = len(self.yaw_pts)
      buff.write(_struct_I.pack(length))
      pattern = '<%sd'%length
      buff.write(self.yaw_pts.tostring())
      _x = self.yaw_dt
      buff.write(_get_struct_d().pack(_x))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.start_time is None:
        self.start_time = genpy.Time()
      if self.pos_pts is None:
        self.pos_pts = None
      end = 0
      _x = self
      start = end
      end += 20
      (_x.order, _x.traj_id, _x.start_time.secs, _x.start_time.nsecs,) = _get_struct_iq2I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sd'%length
      start = end
      s = struct.Struct(pattern)
      end += s.size
      self.knots = numpy.frombuffer(str[start:end], dtype=numpy.float64, count=length)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.pos_pts = []
      for i in range(0, length):
        val1 = geometry_msgs.msg.Point()
        _x = val1
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        self.pos_pts.append(val1)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sd'%length
      start = end
      s = struct.Struct(pattern)
      end += s.size
      self.yaw_pts = numpy.frombuffer(str[start:end], dtype=numpy.float64, count=length)
      start = end
      end += 8
      (self.yaw_dt,) = _get_struct_d().unpack(str[start:end])
      self.start_time.canon()
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_3d = None
def _get_struct_3d():
    global _struct_3d
    if _struct_3d is None:
        _struct_3d = struct.Struct("<3d")
    return _struct_3d
_struct_d = None
def _get_struct_d():
    global _struct_d
    if _struct_d is None:
        _struct_d = struct.Struct("<d")
    return _struct_d
_struct_iq2I = None
def _get_struct_iq2I():
    global _struct_iq2I
    if _struct_iq2I is None:
        _struct_iq2I = struct.Struct("<iq2I")
    return _struct_iq2I
