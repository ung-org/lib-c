libc_C.199901: libc.a(imaxabs.o)
libc.a(imaxabs.o): $(OBJDIR)/imaxabs.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/imaxabs.o: src/inttypes/imaxabs.c
$(OBJDIR)/imaxabs.o: src/_safety.h
$(OBJDIR)/imaxabs.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/inttypes/imaxabs.c
