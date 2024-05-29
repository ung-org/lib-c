libc_C.0: libc.a(__musl.o)
libc.a(__musl.o): $(OBJDIR)/__musl.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/__musl.o: src/__musl.c
$(OBJDIR)/__musl.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/__musl.c
