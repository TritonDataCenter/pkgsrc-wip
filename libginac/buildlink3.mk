# $NetBSD$

BUILDLINK_TREE+=	libginac

.if !defined(LIBGINAC_BUILDLINK3_MK)
LIBGINAC_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.libginac+=	libginac>=1.5.8
BUILDLINK_PKGSRCDIR.libginac?=	../../wip/libginac

.include "../../mk/readline.buildlink3.mk"
.include "../../math/cln/buildlink3.mk"
.endif	# LIBGINAC_BUILDLINK3_MK

BUILDLINK_TREE+=	-libginac
