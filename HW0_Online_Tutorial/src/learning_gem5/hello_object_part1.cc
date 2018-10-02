#include "learning_gem5/hello_object_part1.hh"
#include "debug/Hello.hh"

#include <iostream>

HelloObjectPart1::HelloObjectPart1(HelloObjectPart1Params *params) :
    SimObject(params), event([this]{processEvent();}, name()),
    latency(100), timesLeft(10)
{
    /* DPRINTF is a macro. Print to Hello debug flag */
    DPRINTF(Hello, "Created the hello object\n");
}

HelloObjectPart1*
HelloObjectPart1Params::create()
{
    return new HelloObjectPart1(this);
}

void
HelloObjectPart1::processEvent()
{
    timesLeft--;
    DPRINTF(Hello, "Hello world! Processing the event! %d left\n", timesLeft);

    if (timesLeft <= 0) {
        DPRINTF(Hello, "Done firing!\n");
    } else {
        schedule(event, curTick() + latency);
    }
}

void
HelloObjectPart1::startup()
{
    schedule(event, 100);   /* Explicit tick value */
}