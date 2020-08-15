libc_C.201112: libc.a(tss_get.o)
libc.a(tss_get.o): $(OBJDIR)/tss_get.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/tss_get.o: src/threads/tss_get.c
$(OBJDIR)/tss_get.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/threads/tss_get.c
