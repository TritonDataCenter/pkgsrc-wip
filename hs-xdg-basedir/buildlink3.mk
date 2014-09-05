# $NetBSD$

BUILDLINK_TREE+=	hs-xdg-basedir

.if !defined(HS_XDG_BASEDIR_BUILDLINK3_MK)
HS_XDG_BASEDIR_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.hs-xdg-basedir+=	hs-xdg-basedir>=0.2.1
BUILDLINK_ABI_DEPENDS.hs-xdg-basedir+=	hs-xdg-basedir>=0.2.1
BUILDLINK_PKGSRCDIR.hs-xdg-basedir?=	../../wip/hs-xdg-basedir
.endif	# HS_XDG_BASEDIR_BUILDLINK3_MK

BUILDLINK_TREE+=	-hs-xdg-basedir
