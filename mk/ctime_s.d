libc_C_X1.201112: libc.a(ctime_s.o)
libc.a(ctime_s.o): $(OBJDIR)/ctime_s.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/ctime_s.o: src/time/ctime_s.c
$(OBJDIR)/ctime_s.o: src/_safety.h
$(OBJDIR)/ctime_s.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/time/ctime_s.c
