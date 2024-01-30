libc_X.4: libc.a(daylight.o)
libc.a(daylight.o): $(OBJDIR)/daylight.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/daylight.o: src/time/daylight.c
$(OBJDIR)/daylight.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/time/daylight.c
