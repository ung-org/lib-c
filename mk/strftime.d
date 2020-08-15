libc_C.1: libc.a(strftime.o)
libc.a(strftime.o): $(OBJDIR)/strftime.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/strftime.o: src/time/strftime.c
$(OBJDIR)/strftime.o: src/_assert.h
$(OBJDIR)/strftime.o: src/locale/_locale.h
$(OBJDIR)/strftime.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/time/strftime.c
