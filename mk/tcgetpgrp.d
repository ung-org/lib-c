libc_P.1: libc.a(tcgetpgrp.o)
libc.a(tcgetpgrp.o): $(OBJDIR)/tcgetpgrp.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/tcgetpgrp.o: src/unistd/tcgetpgrp.c
$(OBJDIR)/tcgetpgrp.o: 
$(OBJDIR)/tcgetpgrp.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/unistd/tcgetpgrp.c
