# $NetBSD$

BUILDLINK_TREE+=	keybinder3

.if !defined(KEYBINDER3_BUILDLINK3_MK)
KEYBINDER3_BUILDLINK3_MK:=

BUILDLINK3_API_DEPENDS.keybinder+=	keybinder>=0.3.0
BUILDLINK3_PKGSRCDIR.keybinder?=	../../wip/keybinder

.include "../../devel/gobject-introspection/buildlink3.mk"
.include "../../x11/gtk2/buildlink3.mk"
.endif	# KEYBINDER3_BUILDLINK3_MK

BUILDLINK_TREE+=	-keybinder3
