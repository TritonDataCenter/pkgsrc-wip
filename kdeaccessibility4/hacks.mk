# $NetBSD$

post-patch:
	cp ${BUILDLINK_PREFIX.kdelibs}/include/kspeech.h ${WRKSRC}/kttsd/kttsd/kspeech.h
