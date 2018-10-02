#include "learning_gem5/hello_object_part1.hh"
#include "debug/Hello.hh"

#include <iostream>

HelloObjectPart1::HelloObjectPart1(HelloObjectPart1Params *params) :
    SimObject(params), event([this]{processEvent();}, name())
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
    DPRINTF(Hello, "Hello world! Processing the event!\n");
}

void
HelloObjectPart1::startup()
{
    schedule(event, 100);   /* Explicit tick value */
}