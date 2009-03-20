# $NetBSD$

BUILDLINK_TREE+=	py-osd

.if !defined(PY_OSD_BUILDLINK3_MK)
PY_OSD_BUILDLINK3_MK:=

.include "../../lang/python/pyversion.mk"
BUILDLINK_API_DEPENDS.py-osd+=	${PYPKGPREFIX}-osd>=0.2.14
BUILDLINK_PKGSRCDIR.py-osd?=	../../wip/py-osd

.include "../../x11/xosd/buildlink3.mk"
.endif # PY_OSD_BUILDLINK3_MK

BUILDLINK_TREE+=	-py-osd
