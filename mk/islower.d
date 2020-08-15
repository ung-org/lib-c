libc_C.1: libc.a(islower.o)
libc.a(islower.o): $(OBJDIR)/islower.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/islower.o: src/ctype/islower.c
$(OBJDIR)/islower.o: src/_assert.h
$(OBJDIR)/islower.o: src/ctype/_ctype.h
$(OBJDIR)/islower.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/ctype/islower.c
