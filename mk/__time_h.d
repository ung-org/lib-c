libc_C.-1: libc.a(__time_h.o)
libc.a(__time_h.o): $(OBJDIR)/__time_h.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/__time_h.o: src/time/__time_h.c
$(OBJDIR)/__time_h.o: src/time/_time.h
$(OBJDIR)/__time_h.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/time/__time_h.c
