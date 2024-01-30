libc_P.1: libc.a(execv.o)
libc.a(execv.o): $(OBJDIR)/execv.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/execv.o: src/unistd/execv.c
$(OBJDIR)/execv.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/unistd/execv.c
