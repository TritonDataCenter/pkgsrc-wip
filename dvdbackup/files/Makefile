# $NetBSD$

dvdbackup.o: dvdbackup.c
	${LIBTOOL} --mode=compile ${CC} -c -I${BUILDLINK_DIR}/include	\
		dvdbackup.c

all dvdbackup: dvdbackup.o
	${LIBTOOL} --mode=link ${CC} -o dvdbackup			\
	       -L${BUILDLINK_DIR}/lib					\
	       -ldvdread dvdbackup.o
