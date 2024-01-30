libc_C.201112: libc.a(mbrtoc32.o)
libc.a(mbrtoc32.o): $(OBJDIR)/mbrtoc32.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/mbrtoc32.o: src/uchar/mbrtoc32.c
$(OBJDIR)/mbrtoc32.o: src/_safety.h
$(OBJDIR)/mbrtoc32.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/uchar/mbrtoc32.c
