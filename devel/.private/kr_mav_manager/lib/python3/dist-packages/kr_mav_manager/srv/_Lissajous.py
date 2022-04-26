# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from kr_mav_manager/LissajousRequest.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class LissajousRequest(genpy.Message):
  _md5sum = "c943e68ce1a4a9f23725880ddfca8fa9"
  _type = "kr_mav_manager/LissajousRequest"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """float32 x_amp
float32 y_amp
float32 z_amp
float32 yaw_amp
float32 x_num_periods
float32 y_num_periods
float32 z_num_periods
float32 yaw_num_periods
float32 period
float32 num_cycles
float32 ramp_time
"""
  __slots__ = ['x_amp','y_amp','z_amp','yaw_amp','x_num_periods','y_num_periods','z_num_periods','yaw_num_periods','period','num_cycles','ramp_time']
  _slot_types = ['float32','float32','float32','float32','float32','float32','float32','float32','float32','float32','float32']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       x_amp,y_amp,z_amp,yaw_amp,x_num_periods,y_num_periods,z_num_periods,yaw_num_periods,period,num_cycles,ramp_time

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(LissajousRequest, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.x_amp is None:
        self.x_amp = 0.
      if self.y_amp is None:
        self.y_amp = 0.
      if self.z_amp is None:
        self.z_amp = 0.
      if self.yaw_amp is None:
        self.yaw_amp = 0.
      if self.x_num_periods is None:
        self.x_num_periods = 0.
      if self.y_num_periods is None:
        self.y_num_periods = 0.
      if self.z_num_periods is None:
        self.z_num_periods = 0.
      if self.yaw_num_periods is None:
        self.yaw_num_periods = 0.
      if self.period is None:
        self.period = 0.
      if self.num_cycles is None:
        self.num_cycles = 0.
      if self.ramp_time is None:
        self.ramp_time = 0.
    else:
      self.x_amp = 0.
      self.y_amp = 0.
      self.z_amp = 0.
      self.yaw_amp = 0.
      self.x_num_periods = 0.
      self.y_num_periods = 0.
      self.z_num_periods = 0.
      self.yaw_num_periods = 0.
      self.period = 0.
      self.num_cycles = 0.
      self.ramp_time = 0.

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
      buff.write(_get_struct_11f().pack(_x.x_amp, _x.y_amp, _x.z_amp, _x.yaw_amp, _x.x_num_periods, _x.y_num_periods, _x.z_num_periods, _x.yaw_num_periods, _x.period, _x.num_cycles, _x.ramp_time))
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
      end = 0
      _x = self
      start = end
      end += 44
      (_x.x_amp, _x.y_amp, _x.z_amp, _x.yaw_amp, _x.x_num_periods, _x.y_num_periods, _x.z_num_periods, _x.yaw_num_periods, _x.period, _x.num_cycles, _x.ramp_time,) = _get_struct_11f().unpack(str[start:end])
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
      buff.write(_get_struct_11f().pack(_x.x_amp, _x.y_amp, _x.z_amp, _x.yaw_amp, _x.x_num_periods, _x.y_num_periods, _x.z_num_periods, _x.yaw_num_periods, _x.period, _x.num_cycles, _x.ramp_time))
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
      end = 0
      _x = self
      start = end
      end += 44
      (_x.x_amp, _x.y_amp, _x.z_amp, _x.yaw_amp, _x.x_num_periods, _x.y_num_periods, _x.z_num_periods, _x.yaw_num_periods, _x.period, _x.num_cycles, _x.ramp_time,) = _get_struct_11f().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_11f = None
def _get_struct_11f():
    global _struct_11f
    if _struct_11f is None:
        _struct_11f = struct.Struct("<11f")
    return _struct_11f
# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from kr_mav_manager/LissajousResponse.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class LissajousResponse(genpy.Message):
  _md5sum = "937c9679a518e3a18d831e57125ea522"
  _type = "kr_mav_manager/LissajousResponse"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """bool success
string message

"""
  __slots__ = ['success','message']
  _slot_types = ['bool','string']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       success,message

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(LissajousResponse, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.success is None:
        self.success = False
      if self.message is None:
        self.message = ''
    else:
      self.success = False
      self.message = ''

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
      _x = self.success
      buff.write(_get_struct_B().pack(_x))
      _x = self.message
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
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
      end = 0
      start = end
      end += 1
      (self.success,) = _get_struct_B().unpack(str[start:end])
      self.success = bool(self.success)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.message = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.message = str[start:end]
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
      _x = self.success
      buff.write(_get_struct_B().pack(_x))
      _x = self.message
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
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
      end = 0
      start = end
      end += 1
      (self.success,) = _get_struct_B().unpack(str[start:end])
      self.success = bool(self.success)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.message = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.message = str[start:end]
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_B = None
def _get_struct_B():
    global _struct_B
    if _struct_B is None:
        _struct_B = struct.Struct("<B")
    return _struct_B
class Lissajous(object):
  _type          = 'kr_mav_manager/Lissajous'
  _md5sum = 'f81be309608c349bc23d64ad353b7acd'
  _request_class  = LissajousRequest
  _response_class = LissajousResponse