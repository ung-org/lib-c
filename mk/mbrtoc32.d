libc_C.201112: libc.a(mbrtoc32.o)
libc.a(mbrtoc32.o): $(OBJDIR)/mbrtoc32.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/mbrtoc32.o: src/uchar/mbrtoc32.c
$(OBJDIR)/mbrtoc32.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/uchar/mbrtoc32.c
