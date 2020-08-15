libc_C.1: libc.a(iscntrl.o)
libc.a(iscntrl.o): $(OBJDIR)/iscntrl.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/iscntrl.o: src/ctype/iscntrl.c
$(OBJDIR)/iscntrl.o: src/_assert.h
$(OBJDIR)/iscntrl.o: src/ctype/_ctype.h
$(OBJDIR)/iscntrl.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/ctype/iscntrl.c
