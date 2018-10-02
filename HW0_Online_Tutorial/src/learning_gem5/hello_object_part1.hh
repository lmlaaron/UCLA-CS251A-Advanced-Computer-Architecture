#ifndef __LEARNING_GEM5_HELLO_OBJECT_PART1_HH__
#define __LEARNING_GEM5_HELLO_OBJECT_PART1_HH__

#include "params/HelloObjectPart1.hh"
#include "sim/sim_object.hh"

class HelloObjectPart1 : public SimObject
{
private:
    void processEvent();            /* Callback func. No param/return */

    EventFunctionWrapper event;     /* Event instance with wrapper */

    Tick latency;

    int timesLeft;

public:
    HelloObjectPart1(HelloObjectPart1Params *p);

    void startup();                 /* Schedule the event */
};

#endif // __LEARNING_GEM5_HELLO_OBJECT_PART1_HH__