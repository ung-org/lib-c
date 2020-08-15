libc_C.0: libc.a(__time.o)
libc.a(__time.o): $(OBJDIR)/__time.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/__time.o: src/time/__time.c
$(OBJDIR)/__time.o: src/time/_time.h
$(OBJDIR)/__time.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/time/__time.c
