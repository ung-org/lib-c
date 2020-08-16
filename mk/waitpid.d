libc_P.1: libc.a(waitpid.o)
libc.a(waitpid.o): $(OBJDIR)/waitpid.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/waitpid.o: src/sys/wait/waitpid.c
$(OBJDIR)/waitpid.o: src/_syscall.h
$(OBJDIR)/waitpid.o: 
$(OBJDIR)/waitpid.o: 
$(OBJDIR)/waitpid.o: 
$(OBJDIR)/waitpid.o: 
$(OBJDIR)/waitpid.o: 
$(OBJDIR)/waitpid.o: 
$(OBJDIR)/waitpid.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/sys/wait/waitpid.c
