# $NetBSD: buildlink3.mk,v 1.10 2011/03/09 16:30:44 drochner Exp $

BUILDLINK_TREE+=	libalkimia

.if !defined(LIBALKIMIA_BUILDLINK3_MK)
LIBALKIMIA_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.libalkimia+=	libalkimia>=4.0.0
BUILDLINK_ABI_DEPENDS.libalkimia?=	libalkimia>=4.3.1
BUILDLINK_PKGSRCDIR.libalkimia?=	../../wip/libalkimia

.include "../../devel/gmp/buildlink3.mk"
.include "../../meta-pkgs/kde4/kde4.mk"
.include "../../x11/kdelibs4/buildlink3.mk"


.endif # KDELIBS_BUILDLINK3_MK

BUILDLINK_TREE+=	-libalkimia
