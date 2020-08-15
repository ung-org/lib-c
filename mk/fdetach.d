libc_X.400: libc.a(fdetach.o)
libc.a(fdetach.o): $(OBJDIR)/fdetach.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/fdetach.o: src/stropts/fdetach.c
$(OBJDIR)/fdetach.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/stropts/fdetach.c
