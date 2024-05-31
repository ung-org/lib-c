libc_C.0: libc.a(__memperm.o)
libc.a(__memperm.o): $(OBJDIR)/__memperm.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/__memperm.o: src/__memperm.c
$(OBJDIR)/__memperm.o: src/_memperm.h
$(OBJDIR)/__memperm.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/__memperm.c
