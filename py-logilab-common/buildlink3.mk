# $NetBSD$

BUILDLINK_TREE+=	py-logilab-common

.if !defined(PY_LOGILAB_COMMON_BUILDLINK3_MK)
PY_LOGILAB_COMMON_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.py-logilab-common+=	py-logilab-common>=0.41.0
BUILDLINK_PKGSRCDIR.py-logilab-common?=	../../wip/py-logilab-common

.endif	# PY_LOGILAB_COMMON_BUILDLINK3_MK

BUILDLINK_TREE+=	-py-logilab-common
