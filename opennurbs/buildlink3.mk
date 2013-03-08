# $NetBSD$

BUILDLINK_TREE+=	opennurbs

.if !defined(OPENNURBS_BUILDLINK3_MK)
OPENNURBS_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.opennurbs+=	opennurbs>=20121024
BUILDLINK_PKGSRCDIR.opennurbs?=	../../wip/opennurbs

.include "../../devel/zlib/buildlink3.mk"
.endif	# OPENNURBS_BUILDLINK3_MK

BUILDLINK_TREE+=	-opennurbs
