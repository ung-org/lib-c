libc_C.0: libc.a(__printf.o)
libc.a(__printf.o): $(OBJDIR)/__printf.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/__printf.o: src/stdio/__printf.c
$(OBJDIR)/__printf.o: src/stdio/_stdio.h
$(OBJDIR)/__printf.o: 
$(OBJDIR)/__printf.o: 
$(OBJDIR)/__printf.o: 
$(OBJDIR)/__printf.o: 
$(OBJDIR)/__printf.o: 
$(OBJDIR)/__printf.o: 
$(OBJDIR)/__printf.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/stdio/__printf.c
