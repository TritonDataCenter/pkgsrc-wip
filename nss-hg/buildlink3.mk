# $NetBSD: buildlink3.mk,v 1.20 2013/09/14 10:29:22 ryoon Exp $

BUILDLINK_TREE+=	nss

.if !defined(NSS_BUILDLINK3_MK)
NSS_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.nss+=	nss-hg>=2014.09.01
BUILDLINK_PKGSRCDIR.nss?=	../../wip/nss-hg

BUILDLINK_LIBDIRS.nss+=		lib/nss
BUILDLINK_RPATHDIRS.nss+=	lib/nss

BUILDLINK_INCDIRS.nss+=		include/nss/nss

.include "../../wip/nspr-hg/buildlink3.mk"
.endif # NSS_BUILDLINK3_MK

BUILDLINK_TREE+=	-nss
