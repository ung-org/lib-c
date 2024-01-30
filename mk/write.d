libc_P.1: libc.a(write.o)
libc.a(write.o): $(OBJDIR)/write.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/write.o: src/unistd/write.c
$(OBJDIR)/write.o: src/_assert.h
$(OBJDIR)/write.o: src/_syscall.h
$(OBJDIR)/write.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/unistd/write.c
