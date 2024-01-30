libc_C.0: libc.a(assert.o)
libc.a(assert.o): $(OBJDIR)/assert.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/assert.o: src/assert/assert.c
$(OBJDIR)/assert.o: src/stdlib/_stdlib.h
$(OBJDIR)/assert.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/assert/assert.c
