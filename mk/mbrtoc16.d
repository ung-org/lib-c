libc_C.201112: libc.a(mbrtoc16.o)
libc.a(mbrtoc16.o): $(OBJDIR)/mbrtoc16.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/mbrtoc16.o: src/uchar/mbrtoc16.c
$(OBJDIR)/mbrtoc16.o: src/_safety.h
$(OBJDIR)/mbrtoc16.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/uchar/mbrtoc16.c
