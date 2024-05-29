libc_C.1: libc.a(fclose.o)
libc.a(fclose.o): $(OBJDIR)/fclose.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/fclose.o: src/stdio/fclose.c
$(OBJDIR)/fclose.o: src/stdio/_stdio.h
$(OBJDIR)/fclose.o: src/_forced/close.h
$(OBJDIR)/fclose.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/stdio/fclose.c
