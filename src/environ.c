/** process environment **/
char **environ;

/***
points to an array of pointers to strings representing the process's environmnt
variables. Strings are in the form STRING(VAR(variable)=VAR(value)). A
CONST(NULL) pointer indicates the end of the environment.

Note that THIS() is not declared in any header file, and must be declared
(with TYPE(extern) linkage) manually in a program to be used. Alternatively,
it can be manipulated with the functions FUNCTION(getenv), FUNCTION(setenv),
FUNCTION(unsetenv), and FUNCTION(putenv).
***/

/*
POSIX(1)
*/
