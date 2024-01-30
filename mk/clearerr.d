libc_C.1: libc.a(clearerr.o)
libc.a(clearerr.o): $(OBJDIR)/clearerr.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/clearerr.o: src/stdio/clearerr.c
$(OBJDIR)/clearerr.o: src/stdio/_stdio.h
$(OBJDIR)/clearerr.o: src/_safety.h
$(OBJDIR)/clearerr.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/stdio/clearerr.c
