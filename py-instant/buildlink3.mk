# $NetBSD$

BUILDLINK_TREE+=	py26-instant

.if !defined(PY26_INSTANT_BUILDLINK3_MK)
PY26_INSTANT_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.py26-instant+=	py26-instant>=1.0.0
BUILDLINK_PKGSRCDIR.py26-instant?=	../../jb-wip/py-instant
.endif	# PY26_INSTANT_BUILDLINK3_MK

BUILDLINK_TREE+=	-py26-instant
