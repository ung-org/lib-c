libc_P.2: libc.a(glob.o)
libc.a(glob.o): $(OBJDIR)/glob.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/glob.o: src/glob/glob.c
$(OBJDIR)/glob.o: src/_assert.h
$(OBJDIR)/glob.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/glob/glob.c
