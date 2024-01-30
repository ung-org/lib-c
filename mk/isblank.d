libc_C.199901: libc.a(isblank.o)
libc.a(isblank.o): $(OBJDIR)/isblank.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/isblank.o: src/ctype/isblank.c
$(OBJDIR)/isblank.o: src/ctype/_ctype.h
$(OBJDIR)/isblank.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/ctype/isblank.c
