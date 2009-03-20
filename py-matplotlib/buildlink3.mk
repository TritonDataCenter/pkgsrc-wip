# $NetBSD: buildlink3.mk,v 1.3 2006/07/08 23:10:53 jlam Exp $

.include "../../lang/python/pyversion.mk"

BUILDLINK_TREE+=	pymatplotlib

.if !defined(PY_MATPLOTLIB_BUILDLINK3_MK)
PY_MATPLOTLIB_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.pymatplotlib+=	${PYPKGPREFIX}-matplotlib>=0.87.2
BUILDLINK_PKGSRCDIR.pymatplotlib?=	../../wip/py-matplotlib
.endif # PY_MATPLOTLIB_BUILDLINK3_MK

BUILDLINK_TREE+=	-pymatplotlib
