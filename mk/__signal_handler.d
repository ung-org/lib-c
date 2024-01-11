libc_C.0: libc.a(__signal_handler.o)
libc.a(__signal_handler.o): $(OBJDIR)/__signal_handler.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/__signal_handler.o: src/signal/__signal_handler.c
$(OBJDIR)/__signal_handler.o: src/signal/_signal.h
$(OBJDIR)/__signal_handler.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/signal/__signal_handler.c
