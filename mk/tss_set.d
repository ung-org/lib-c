libc_C.201112: libc.a(tss_set.o)
libc.a(tss_set.o): $(OBJDIR)/tss_set.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/tss_set.o: src/threads/tss_set.c
$(OBJDIR)/tss_set.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/threads/tss_set.c
