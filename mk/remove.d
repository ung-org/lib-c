libc_C.1: libc.a(remove.o)
libc.a(remove.o): $(OBJDIR)/remove.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/remove.o: src/stdio/remove.c
$(OBJDIR)/remove.o: src/stdio/_stdio.h
$(OBJDIR)/remove.o: src/_forced/stat.h
$(OBJDIR)/remove.o: src/_forced/rmdir.h
$(OBJDIR)/remove.o: src/_forced/unlink.h
$(OBJDIR)/remove.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/stdio/remove.c
