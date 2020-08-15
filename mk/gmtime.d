libc_C.1: libc.a(gmtime.o)
libc.a(gmtime.o): $(OBJDIR)/gmtime.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/gmtime.o: src/time/gmtime.c
$(OBJDIR)/gmtime.o: src/_assert.h
$(OBJDIR)/gmtime.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/time/gmtime.c
