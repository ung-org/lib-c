#include <fenv.h>
                                                extern fenv_t const *FE_DFL_ENV;
#define FE_DFL_ENV                                   ((const fenv_t*)FE_DFL_ENV)

/* */
/* represents the default floating-point environment — the one installed at program startup */
/* — and has type ‘‘pointer to const-qualified fenv_t’’. It can be used as an argument to */
/* <fenv.h> functions that manage the floating-point environment. */
/*  */
/* Additional implementation-defined environments, with macro definitions beginning with */
/* FE_ and an uppercase letter, and having type ‘‘pointer to const-qualified fenv_t’’, may */
/* also be specified by the implementation. */
/* */

/*
STDC(199901)
LINK(m)
*/
