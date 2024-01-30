libc_P.1: libc.a(tzset.o)
libc.a(tzset.o): $(OBJDIR)/tzset.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/tzset.o: src/time/tzset.c
$(OBJDIR)/tzset.o: src/time/_time.h
$(OBJDIR)/tzset.o: src/_safety.h
$(OBJDIR)/tzset.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/time/tzset.c
