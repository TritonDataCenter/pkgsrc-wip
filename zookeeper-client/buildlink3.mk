# $NetBSD$

BUILDLINK_TREE+=	zookeeper-client

.if !defined(ZOOKEEPER_CLIENT_BUILDLINK3_MK)
ZOOKEEPER_CLIENT_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.zookeeper-client+=	zookeeper-client>=3.4.5
BUILDLINK_PKGSRCDIR.zookeeper-client?=	../../wip/zookeeper-client
.endif	# ZOOKEEPER_CLIENT_BUILDLINK3_MK

BUILDLINK_TREE+=	-zookeeper-client
