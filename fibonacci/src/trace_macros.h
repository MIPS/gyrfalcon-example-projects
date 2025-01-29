// trace_macros.hpp
#ifndef __TRACE_MACROS
#define __TRACE_MACROS

#ifndef START_TRACE
#define START_TRACE asm("xor x0, x0, x0");
#endif

#ifndef STOP_TRACE
#define STOP_TRACE asm("xor x0, x1, x1");
#endif
#endif
