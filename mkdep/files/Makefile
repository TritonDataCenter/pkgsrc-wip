# $NetBSD$

all:	mkdep

mkdep: findcc.o mkdep.o
	$(CC) $(CFLAGS) $(LDFLAGS) -o $@ $> -lnbcompat

.c.o:
	$(CC) $(CFLAGS) -I${PREFIX}/include/libnbcompat -c $< -o $@
