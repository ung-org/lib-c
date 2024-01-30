libc_X.400: libc.a(select.o)
libc.a(select.o): $(OBJDIR)/select.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/select.o: src/sys/time/select.c
$(OBJDIR)/select.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/sys/time/select.c
