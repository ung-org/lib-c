printf '#define %s(__x) _Generic((__x), \\\n' $1
printf '\tlong double complex: c%sl, \\\n' $1
printf '\tdouble complex: c%s, \\\n' $1
printf '\tfloat complex: c%sf, \\\n' $1
printf '\tlong double: $sl, \\\n' $1
printf '\tdouble: %s, \\\n' $1
printf '\tunsigned long long: %s, \\\n' $1
printf '\tlong long: %s, \\\n' $1
printf '\tunsigned long: %s, \\\n' $1
printf '\tlong: %s, \\\n' $1
printf '\tunsigned int: %s, \\\n' $1
printf '\tint: %s, \\\n' $1
printf '\tunsigned short: %s, \\\n' $1
printf '\tshort: %s, \\\n' $1
printf '\tunsigned char: %s, \\\n' $1
printf '\tsigned char: %s, \\\n' $1
printf '\tchar: %s, \\\n' $1
printf '\tfloat: %s \\\n' $1
printf '\t)(__x)\\n\n' $1
	
