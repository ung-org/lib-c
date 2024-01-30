libc_C.201112: libc.a(timespec_get.o)
libc.a(timespec_get.o): $(OBJDIR)/timespec_get.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/timespec_get.o: src/time/timespec_get.c
$(OBJDIR)/timespec_get.o: src/_safety.h
$(OBJDIR)/timespec_get.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/time/timespec_get.c
