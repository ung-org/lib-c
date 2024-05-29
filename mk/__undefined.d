libc_C.0: libc.a(__undefined.o)
libc.a(__undefined.o): $(OBJDIR)/__undefined.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/__undefined.o: src/__undefined.c
$(OBJDIR)/__undefined.o: src/_safety.h
$(OBJDIR)/__undefined.o: src/_forced/_Exit.h
$(OBJDIR)/__undefined.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/__undefined.c
