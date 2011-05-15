# $NetBSD: buildlink3.mk,v 1.3 2009/03/20 19:24:58 joerg Exp $

BUILDLINK_TREE+=	pyconstruct

.if !defined(PY_NUMPY_BUILDLINK3_MK)
PY_NUMPY_BUILDLINK3_MK:=

.include "../../lang/python/pyversion.mk"

BUILDLINK_API_DEPENDS.pyconstruct+=	${PYPKGPREFIX}-construct>=2.04
BUILDLINK_PKGSRCDIR.pyconstruct?=	../../wip/py-construct

.endif # PY_NUMPY_BUILDLINK3_MK

BUILDLINK_TREE+=	-pyconstruct
