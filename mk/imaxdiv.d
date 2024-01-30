libc_C.199901: libc.a(imaxdiv.o)
libc.a(imaxdiv.o): $(OBJDIR)/imaxdiv.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/imaxdiv.o: src/inttypes/imaxdiv.c
$(OBJDIR)/imaxdiv.o: src/_safety.h
$(OBJDIR)/imaxdiv.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/inttypes/imaxdiv.c
