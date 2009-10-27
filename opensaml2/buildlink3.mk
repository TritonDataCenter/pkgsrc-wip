# $NetBSD$
#

BUILDLINK_TREE+=	opensaml2

.if !defined(OPENSAML2_BUILDLINK3_MK)
OPENSAML2_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.opensaml2+=	opensaml2>=2.2.1
BUILDLINK_PKGSRCDIR.opensaml2?=	../../wip/opensaml2

.include "../../security/openssl/buildlink3.mk"
.endif	# OPENSAML2_BUILDLINK3_MK

BUILDLINK_TREE+=	-opensaml2
