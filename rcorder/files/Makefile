# $NetBSD$

INSTALL?= /usr/bin/install -c

all:	rcorder

rcorder: ealloc.o hash.o rcorder.o
	$(CC) $(CFLAGS) -o $@ $> -lnbcompat

.c.o:
	$(CC) $(CFLAGS) -I${PREFIX}/include/libnbcompat -c $< -o $@

install:
	${INSTALL} rcorder ${PREFIX}/sbin
	${INSTALL} -m 444 rcorder.8 ${PREFIX}/man/man8
