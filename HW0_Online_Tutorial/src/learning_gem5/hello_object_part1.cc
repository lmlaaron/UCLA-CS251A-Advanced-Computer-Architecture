#include "learning_gem5/hello_object_part1.hh"

#include <iostream>

HelloObjectPart1::HelloObjectPart1(HelloObjectPart1Params *params) :
    SimObject(params)
{
    std::cout << "Hello World! From a SimObject!" << std::endl;
}

HelloObjectPart1*
HelloObjectPart1Params::create()
{
    return new HelloObjectPart1(this);
}