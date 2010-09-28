# $NetBSD$

BUILDLINK_TREE+=	sword

.if !defined(SWORD_BUILDLINK3_MK)
SWORD_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.sword+=	sword>=1.6.1
BUILDLINK_PKGSRCDIR.sword?=	../../wip/sword

.include "../../textproc/icu/buildlink3.mk"
.include "../../textproc/libclucene/buildlink3.mk"
.include "../../devel/zlib/buildlink3.mk"
.include "../../www/curl/buildlink3.mk"
.endif	# SWORD_BUILDLINK3_MK

BUILDLINK_TREE+=	-sword
