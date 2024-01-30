libc_C.0: libc.a(__errno.o)
libc.a(__errno.o): $(OBJDIR)/__errno.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/__errno.o: src/errno/__errno.c
$(OBJDIR)/__errno.o: src/_perthread.h
$(OBJDIR)/__errno.o: src/_safety.h
$(OBJDIR)/__errno.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/errno/__errno.c
