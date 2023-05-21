# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from devices/GpsStatus.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class GpsStatus(genpy.Message):
  _md5sum = "aa776ee501a0e18fe7a26e4b146b0685"
  _type = "devices/GpsStatus"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """string date
float64 time
int16 numsat
int16 quality
float64 hdop"""
  __slots__ = ['date','time','numsat','quality','hdop']
  _slot_types = ['string','float64','int16','int16','float64']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       date,time,numsat,quality,hdop

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(GpsStatus, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.date is None:
        self.date = ''
      if self.time is None:
        self.time = 0.
      if self.numsat is None:
        self.numsat = 0
      if self.quality is None:
        self.quality = 0
      if self.hdop is None:
        self.hdop = 0.
    else:
      self.date = ''
      self.time = 0.
      self.numsat = 0
      self.quality = 0
      self.hdop = 0.

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
      _x = self.date
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_d2hd().pack(_x.time, _x.numsat, _x.quality, _x.hdop))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.date = str[start:end].decode('utf-8')
      else:
        self.date = str[start:end]
      _x = self
      start = end
      end += 20
      (_x.time, _x.numsat, _x.quality, _x.hdop,) = _get_struct_d2hd().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self.date
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_d2hd().pack(_x.time, _x.numsat, _x.quality, _x.hdop))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.date = str[start:end].decode('utf-8')
      else:
        self.date = str[start:end]
      _x = self
      start = end
      end += 20
      (_x.time, _x.numsat, _x.quality, _x.hdop,) = _get_struct_d2hd().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_d2hd = None
def _get_struct_d2hd():
    global _struct_d2hd
    if _struct_d2hd is None:
        _struct_d2hd = struct.Struct("<d2hd")
    return _struct_d2hd
