# $NetBSD$

BUILDLINK_TREE+=	py-gsl

.if !defined(PY_GSL_BUILDLINK3_MK)
PY_GSL_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.py-gsl+=	${PYPKGPREFIX}-gsl>=0.9.5
BUILDLINK_PKGSRCDIR.py-gsl?=	../../wip/py-gsl

.include "../../math/gsl/buildlink3.mk"
#.include "../../math/py-numpy/buildlink3.mk"
.endif	# PY_GSL_BUILDLINK3_MK

BUILDLINK_TREE+=	-py-gsl
