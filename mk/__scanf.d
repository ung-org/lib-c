libc_C.0: libc.a(__scanf.o)
libc.a(__scanf.o): $(OBJDIR)/__scanf.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/__scanf.o: src/stdio/__scanf.c
$(OBJDIR)/__scanf.o: src/stdio/_stdio.h
$(OBJDIR)/__scanf.o: src/_safety.h
$(OBJDIR)/__scanf.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/stdio/__scanf.c
