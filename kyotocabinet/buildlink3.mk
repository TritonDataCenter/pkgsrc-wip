# $NetBSD$

BUILDLINK_TREE+=	kyotocabinet

.if !defined(KYOTOCABINET_BUILDLINK3_MK)
KYOTOCABINET_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.kyotocabinet+=	kyotocabinet>=1.2.72
BUILDLINK_PKGSRCDIR.kyotocabinet?=	../../wip/kyotocabinet
.endif	# KYOTOCABINET_BUILDLINK3_MK

BUILDLINK_TREE+=	-kyotocabinet
