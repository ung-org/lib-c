libc_P.1: libc.a(__grp.o)
libc.a(__grp.o): $(OBJDIR)/__grp.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/__grp.o: src/grp/__grp.c
$(OBJDIR)/__grp.o: src/grp/_grp.h
$(OBJDIR)/__grp.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/grp/__grp.c
