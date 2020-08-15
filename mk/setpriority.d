libc_X.400: libc.a(setpriority.o)
libc.a(setpriority.o): $(OBJDIR)/setpriority.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/setpriority.o: src/sys/resource/setpriority.c
$(OBJDIR)/setpriority.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/sys/resource/setpriority.c
