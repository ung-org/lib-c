libc_X.400: libc.a(setpgrp.o)
libc.a(setpgrp.o): $(OBJDIR)/setpgrp.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/setpgrp.o: src/unistd/setpgrp.c
$(OBJDIR)/setpgrp.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/unistd/setpgrp.c
