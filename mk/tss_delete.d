libc_C.201112: libc.a(tss_delete.o)
libc.a(tss_delete.o): $(OBJDIR)/tss_delete.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/tss_delete.o: src/threads/tss_delete.c
$(OBJDIR)/tss_delete.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/threads/tss_delete.c
