# $NetBSD$

BUILDLINK_TREE+=	libmusclecard

.if !defined(LIBMUSCLECARD_BUILDLINK3_MK)
LIBMUSCLECARD_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.libmusclecard+=	libmusclecard>=1.2.9
BUILDLINK_PKGSRCDIR.libmusclecard?=	../../wip/libmusclecard

.include "../../security/pcsc-lite/buildlink3.mk"
.endif # LIBMUSCLECARD_BUILDLINK3_MK

BUILDLINK_TREE+=	-libmusclecard
