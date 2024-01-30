libc_P.1: libc.a(tcsetpgrp.o)
libc.a(tcsetpgrp.o): $(OBJDIR)/tcsetpgrp.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/tcsetpgrp.o: src/unistd/tcsetpgrp.c
$(OBJDIR)/tcsetpgrp.o: 
$(OBJDIR)/tcsetpgrp.o: 
$(OBJDIR)/tcsetpgrp.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/unistd/tcsetpgrp.c
