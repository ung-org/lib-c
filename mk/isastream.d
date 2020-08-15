libc_X.400: libc.a(isastream.o)
libc.a(isastream.o): $(OBJDIR)/isastream.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/isastream.o: src/stropts/isastream.c
$(OBJDIR)/isastream.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/stropts/isastream.c
