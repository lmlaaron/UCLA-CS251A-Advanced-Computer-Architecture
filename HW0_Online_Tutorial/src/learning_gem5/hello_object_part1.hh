#ifndef __LEARNING_GEM5_HELLO_OBJECT_PART1_HH__
#define __LEARNING_GEM5_HELLO_OBJECT_PART1_HH__

#include "params/HelloObjectPart1.hh"
#include "sim/sim_object.hh"

class HelloObjectPart1 : public SimObject
{
  public:
    HelloObjectPart1(HelloObjectPart1Params *p);
};

#endif // __LEARNING_GEM5_HELLO_OBJECT_PART1_HH__