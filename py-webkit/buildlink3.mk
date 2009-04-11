# $NetBSD$
#

BUILDLINK_TREE+=	pywebkitgtk

.if !defined(PY_WEBKITGTK_BUILDLINK3_MK)
PY_WEBKITGTK_BUILDLINK3_MK:=

.include "../../lang/python/pyversion.mk"

BUILDLINK_API_DEPENDS.pywebkitgtk+=	${PYPKGPREFIX}-webkitgtk>=1.1.4
BUILDLINK_PKGSRCDIR.pywebkitgtk?=	../../wip/py-webkit

.include "../../x11/py-gtk2/buildlink3.mk"
.include "../../www/webkit-gtk/buildlink3.mk"
.endif	# PY_WEBKITGTK_BUILDLINK3_MK

BUILDLINK_TREE+=	-py-webkitgtk
