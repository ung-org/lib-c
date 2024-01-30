libc_X.4: libc.a(wcswcs.o)
libc.a(wcswcs.o): $(OBJDIR)/wcswcs.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/wcswcs.o: src/wchar/wcswcs.c
$(OBJDIR)/wcswcs.o: 
$(OBJDIR)/wcswcs.o: 
$(OBJDIR)/wcswcs.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/wchar/wcswcs.c
