libc_C.1: libc.a(fscanf.o)
libc.a(fscanf.o): $(OBJDIR)/fscanf.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/fscanf.o: src/stdio/fscanf.c
$(OBJDIR)/fscanf.o: src/stdio/_stdio.h
$(OBJDIR)/fscanf.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/stdio/fscanf.c
