libc_P.199309: libc.a(fchmod.o)
libc_X.4: libc.a(fchmod.o)
libc.a(fchmod.o): $(OBJDIR)/fchmod.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/fchmod.o: src/sys/stat/fchmod.c
$(OBJDIR)/fchmod.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/sys/stat/fchmod.c
