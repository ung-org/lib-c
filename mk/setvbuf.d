libc_C.1: libc.a(setvbuf.o)
libc.a(setvbuf.o): $(OBJDIR)/setvbuf.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/setvbuf.o: src/stdio/setvbuf.c
$(OBJDIR)/setvbuf.o: src/stdio/_stdio.h
$(OBJDIR)/setvbuf.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/stdio/setvbuf.c
