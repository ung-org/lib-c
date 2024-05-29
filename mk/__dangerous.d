libc_C.0: libc.a(__dangerous.o)
libc.a(__dangerous.o): $(OBJDIR)/__dangerous.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/__dangerous.o: src/__dangerous.c
$(OBJDIR)/__dangerous.o: src/_safety.h
$(OBJDIR)/__dangerous.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/__dangerous.c
