# $NetBSD$

BUILDLINK_TREE+=	hs-bytestring-trie

.if !defined(HS_BYTESTRING_TRIE_BUILDLINK3_MK)
HS_BYTESTRING_TRIE_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.hs-bytestring-trie+=	hs-bytestring-trie>=0.2.3
BUILDLINK_ABI_DEPENDS.hs-bytestring-trie+=	hs-bytestring-trie>=0.2.3
BUILDLINK_PKGSRCDIR.hs-bytestring-trie?=	../../wip/hs-bytestring-trie

.endif	# HS_BYTESTRING_TRIE_BUILDLINK3_MK

BUILDLINK_TREE+=	-hs-bytestring-trie
