# $NetBSD: buildlink3.mk,v 1.3 2009/03/20 19:24:58 joerg Exp $

BUILDLINK_TREE+=	py-construct

.if !defined(PY_CONSTRUCT_BUILDLINK3_MK)
PY_CONSTRUCT_BUILDLINK3_MK:=

.include "../../lang/python/pyversion.mk"

BUILDLINK_API_DEPENDS.py-construct+=	${PYPKGPREFIX}-construct>=2.04
BUILDLINK_PKGSRCDIR.py-construct?=	../../wip/py-construct

.endif # PY_CONSTRUCT_BUILDLINK3_MK

BUILDLINK_TREE+=	-py-construct
