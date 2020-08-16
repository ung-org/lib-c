libc_C.0: libc.a(__main.o)
libc.a(__main.o): $(OBJDIR)/__main.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/__main.o: src/__main.c
$(OBJDIR)/__main.o: src/stdio/_stdio.h
$(OBJDIR)/__main.o: src/stdlib/_stdlib.h
$(OBJDIR)/__main.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/__main.c
