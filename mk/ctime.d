libc_C.1: libc.a(ctime.o)
libc.a(ctime.o): $(OBJDIR)/ctime.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/ctime.o: src/time/ctime.c
$(OBJDIR)/ctime.o: src/_safety.h
$(OBJDIR)/ctime.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/time/ctime.c
