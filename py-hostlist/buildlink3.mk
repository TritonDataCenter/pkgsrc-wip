# $NetBSD$

BUILDLINK_TREE+=	python-hostlist

.if !defined(PYTHON_HOSTLIST_BUILDLINK3_MK)
PYTHON_HOSTLIST_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.python-hostlist+=	python-hostlist>=1.14
BUILDLINK_PKGSRCDIR.python-hostlist?=	../../wip/py-hostlist
.endif	# PYTHON_HOSTLIST_BUILDLINK3_MK

BUILDLINK_TREE+=	-python-hostlist
