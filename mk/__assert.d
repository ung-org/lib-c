libc_C.0: libc.a(__assert.o)
libc.a(__assert.o): $(OBJDIR)/__assert.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/__assert.o: src/assert/__assert.c
$(OBJDIR)/__assert.o: src/_safety.h
$(OBJDIR)/__assert.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/assert/__assert.c
