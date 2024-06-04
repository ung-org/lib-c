libc_C.0: libc.a(__fpclassify_error.o)
libc.a(__fpclassify_error.o): $(OBJDIR)/__fpclassify_error.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/__fpclassify_error.o: src/math/__fpclassify_error.c
$(OBJDIR)/__fpclassify_error.o: src/_safety.h
$(OBJDIR)/__fpclassify_error.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/math/__fpclassify_error.c
