libc_C.1: libc.a(localtime.o)
libc.a(localtime.o): $(OBJDIR)/localtime.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/localtime.o: src/time/localtime.c
$(OBJDIR)/localtime.o: src/_assert.h
$(OBJDIR)/localtime.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/time/localtime.c
