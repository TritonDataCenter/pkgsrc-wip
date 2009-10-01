# $NetBSD$

BUILDLINK_TREE+=			sphinxsearch

.if !defined(SPHINXSEARCH_BUILDLINK3_MK)
SPHINXSEARCH_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.sphinxsearch+=	sphinxsearch>=0.9.8.1nb1
BUILDLINK_PKGSRCDIR.sphinxsearch?=	../../joyent/sphinxsearch

.endif	# SPHINXSEARCH_BUILDLINK3_MK

BUILDLINK_TREE+=			-sphinxsearch
