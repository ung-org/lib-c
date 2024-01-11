libc_C.0: libc.a(__signal.o)
libc.a(__signal.o): $(OBJDIR)/__signal.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/__signal.o: src/signal/__signal.c
$(OBJDIR)/__signal.o: src/signal/_signal.h
$(OBJDIR)/__signal.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/signal/__signal.c
