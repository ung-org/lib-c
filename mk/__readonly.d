libc_C.0: libc.a(__readonly.o)
libc.a(__readonly.o): $(OBJDIR)/__readonly.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/__readonly.o: src/__readonly.c
$(OBJDIR)/__readonly.o: src/_readonly.h
$(OBJDIR)/__readonly.o: src/stdlib/_jkmalloc.h
$(OBJDIR)/__readonly.o: src/_forced/mprotect.h
$(OBJDIR)/__readonly.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/__readonly.c
