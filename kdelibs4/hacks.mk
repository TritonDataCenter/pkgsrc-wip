# $NetBSD$

.if ${OPSYS} == "NetBSD"
post-configure:
	cp ${FILESDIR}/kshareddatacache.cpp ${WRKSRC}/kdecore/util/kshareddatacache.cpp
.endif

# fix up buildlinks failure to build link tree correctly
post-wrapper:
	ln -s netbsd-g++ ${BUILDLINK_DIR}/qt4/mkspecs/default
