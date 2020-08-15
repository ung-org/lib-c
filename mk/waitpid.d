libc_P.1: libc.a(waitpid.o)
libc.a(waitpid.o): $(OBJDIR)/waitpid.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/waitpid.o: src/sys/wait/waitpid.c
$(OBJDIR)/waitpid.o: src/_syscall.h
$(OBJDIR)/waitpid.o: src/signal/union_sigval.c
$(OBJDIR)/waitpid.o: src/signal/siginfo_t.c
$(OBJDIR)/waitpid.o: src/sys/wait/idtype_t.c
$(OBJDIR)/waitpid.o: src/sys/wait/P_PID.c
$(OBJDIR)/waitpid.o: src/sys/wait/P_PGID.c
$(OBJDIR)/waitpid.o: src/sys/wait/P_ALL.c
$(OBJDIR)/waitpid.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/sys/wait/waitpid.c
