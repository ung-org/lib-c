libc_C.1: libc.a(mktime.o)
libc.a(mktime.o): $(OBJDIR)/mktime.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/mktime.o: src/time/mktime.c
$(OBJDIR)/mktime.o: src/time/_time.h
$(OBJDIR)/mktime.o: src/_assert.h
$(OBJDIR)/mktime.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/time/mktime.c
