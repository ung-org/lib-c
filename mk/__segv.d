libc_C.0: libc.a(__segv.o)
libc.a(__segv.o): $(OBJDIR)/__segv.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/__segv.o: src/signal/__segv.c
$(OBJDIR)/__segv.o: src/_safety.h
$(OBJDIR)/__segv.o: src/_forced/sigaction.h
$(OBJDIR)/__segv.o: src/stdlib/_jkmalloc.h
$(OBJDIR)/__segv.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/signal/__segv.c
