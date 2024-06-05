libc_C.0: libc.a(__wchar_h.o)
libc.a(__wchar_h.o): $(OBJDIR)/__wchar_h.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/__wchar_h.o: src/wchar/__wchar_h.c
$(OBJDIR)/__wchar_h.o: src/wchar/_wchar.h
$(OBJDIR)/__wchar_h.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/wchar/__wchar_h.c
