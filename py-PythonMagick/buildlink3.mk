# $NetBSD$

BUILDLINK_TREE+=	py-PythonMagick

.if !defined(PY_PYTHONMAGICK_BUILDLINK3_MK)
PY_PYTHONMAGICK_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.py-PythonMagick+=	${PYPKGPREFIX}-PythonMagick>=0.9.1
BUILDLINK_ABI_DEPENDS.py-PythonMagick?=	${PYPKGPREFIX}-PythonMagick>=0.9.1nb3
BUILDLINK_PKGSRCDIR.py-PythonMagick?=	../../wip/py-PythonMagick

.include "../../graphics/ImageMagick/buildlink3.mk"
.include "../../devel/py-boost/buildlink3.mk"
.endif	# PY_PYTHONMAGICK_BUILDLINK3_MK

BUILDLINK_TREE+=	-py-PythonMagick
