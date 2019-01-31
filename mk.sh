#!/bin/sh

classify_source () {
	NAME=$(basename $1 .c)

	if grep -q "^REFERENCE(" $1; then
		echo REFERENCE
	elif grep -q "^#define ${NAME}[ (]" $1; then
		echo MACRO
	elif grep -q "#undef ${NAME}" $1; then
		echo MACRO
	elif grep -q "^typedef.* ${NAME}.*;" $1; then
		echo TYPE
	elif grep -q "^typedef.*{$" $1; then
		echo TYPE_LONG
	elif grep -q "^struct.*{" $1; then
		echo STRUCT
	elif grep -q "^union.*{" $1; then
		echo UNION
	elif grep -q "^[A-Za-z_].* ${NAME};" $1; then
		echo EXTERN
	elif grep -q 'TGFN' $1; then
		echo TGFN
	else
		echo FUNCTION
	fi
}
