libc_C.201112: libc.a(tss_dtor_t.o)
libc.a(tss_dtor_t.o): $(OBJDIR)/tss_dtor_t.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/tss_dtor_t.o: src/threads/tss_dtor_t.c
$(OBJDIR)/tss_dtor_t.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/threads/tss_dtor_t.c
