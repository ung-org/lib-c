libc_C.1: libc.a(clock.o)
libc.a(clock.o): $(OBJDIR)/clock.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/clock.o: src/time/clock.c
$(OBJDIR)/clock.o: src/_safety.h
$(OBJDIR)/clock.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/time/clock.c
