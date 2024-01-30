libc_C.0: libc.a(__stdio.o)
libc.a(__stdio.o): $(OBJDIR)/__stdio.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/__stdio.o: src/stdio/__stdio.c
$(OBJDIR)/__stdio.o: src/stdio/_stdio.h
$(OBJDIR)/__stdio.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/stdio/__stdio.c
