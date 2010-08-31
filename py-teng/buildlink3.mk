# $NetBSD$

BUILDLINK_TREE+=	py26-teng

.if !defined(PY26_TENG_BUILDLINK3_MK)
PY26_TENG_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.py26-teng+=	py26-teng>=2.0.0
BUILDLINK_PKGSRCDIR.py26-teng?=	../../wip/py-teng

.include "../../wip/teng/buildlink3.mk"
.endif	# PY26_TENG_BUILDLINK3_MK

BUILDLINK_TREE+=	-py26-teng
