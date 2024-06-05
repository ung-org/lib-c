libc_C.0: libc.a(__signal_h.o)
libc.a(__signal_h.o): $(OBJDIR)/__signal_h.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/__signal_h.o: src/signal/__signal_h.c
$(OBJDIR)/__signal_h.o: src/signal/_signal.h
$(OBJDIR)/__signal_h.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/signal/__signal_h.c
