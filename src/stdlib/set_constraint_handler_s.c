#include <stdlib.h>
#include "_stdlib.h"

constraint_handler_t set_constraint_handler_s(constraint_handler_t handler)
{
	SIGNAL_SAFE(0);
	
	return handler;
}

/*
CEXT1(201112)
*/
