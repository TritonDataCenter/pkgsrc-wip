# $NetBSD$

BUILDLINK_TREE+=	py-repositoryhandler

.if !defined(PY_REPOSITORYHANDLER_BUILDLINK3_MK)
PY_REPOSITORYHANDLER_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.py-repositoryhandler+=	${PYPKGPREFIX}-repositoryhandler>=0.3
BUILDLINK_PKGSRCDIR.py-repositoryhandler?=	../../wip/py-repositoryhandler

.include "../../devel/subversion-base/buildlink3.mk"
.include "../../www/curl/buildlink3.mk"
.endif	# PY_REPOSITORYHANDLER_BUILDLINK3_MK

BUILDLINK_TREE+=	-py-repositoryhandler
