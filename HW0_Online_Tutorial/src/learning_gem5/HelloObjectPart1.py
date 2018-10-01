from m5.params import *
from m5.SimObject import SimObject

class HelloObjectPart1(SimObject):
    type = 'HelloObjectPart1'
    cxx_header = "learning_gem5/hello_object_part1.hh"