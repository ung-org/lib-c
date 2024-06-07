#include <fenv.h>
#include "_fenv.h"

static struct __fenv_t __fe_dfl_env = {
	0,
};

const fenv_t __FE_DFL_ENV = { &__fe_dfl_env };
