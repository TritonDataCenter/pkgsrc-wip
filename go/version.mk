# $NetBSD: version.mk,v 1.15 2016/07/18 20:37:40 bsiegert Exp $

.include "../../mk/bsd.prefs.mk"

GO_VERSION=	1.8
GO14_VERSION=	1.4.3

ONLY_FOR_PLATFORM=	*-*-i386 *-*-x86_64 *-*-evbarm
NOT_FOR_PLATFORM=	SunOS-*-i386
.if ${MACHINE_ARCH} == "i386"
GOARCH=		386
GOCHAR=		8
.elif ${MACHINE_ARCH} == "x86_64"
GOARCH=		amd64
GOCHAR=		6
.elif ${MACHINE_ARCH} == "evbarm"
GOARCH=		arm
GOCHAR=		5
.endif
PLIST_SUBST+=	GO_PLATFORM=${LOWER_OPSYS:Q}_${GOARCH:Q} GOARCH=${GOARCH:Q}
PLIST_SUBST+=	GOCHAR=${GOCHAR:Q}
