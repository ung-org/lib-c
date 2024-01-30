libc_C.1: libc.a(asctime.o)
libc.a(asctime.o): $(OBJDIR)/asctime.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/asctime.o: src/time/asctime.c
$(OBJDIR)/asctime.o: src/_safety.h
$(OBJDIR)/asctime.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/time/asctime.c
