libc_P.1: libc.a(getpgrp.o)
libc.a(getpgrp.o): $(OBJDIR)/getpgrp.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/getpgrp.o: src/unistd/getpgrp.c
$(OBJDIR)/getpgrp.o: src/_syscall.h
$(OBJDIR)/getpgrp.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/unistd/getpgrp.c
