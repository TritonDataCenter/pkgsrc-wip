# $NetBSD$
# XXX
# XXX This file was created automatically using createbuildlink-3.16.
# XXX After this file has been verified as correct, the comment lines
# XXX beginning with "XXX" should be removed.  Please do not commit
# XXX unverified buildlink3.mk files.
# XXX
# XXX Packages that only install static libraries or headers should
# XXX include the following line:
# XXX
# XXX	BUILDLINK_DEPMETHOD.zookeeper-client?=	build

BUILDLINK_TREE+=	zookeeper-client

.if !defined(ZOOKEEPER_CLIENT_BUILDLINK3_MK)
ZOOKEEPER_CLIENT_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.zookeeper-client+=	zookeeper-client>=3.4.5
BUILDLINK_PKGSRCDIR.zookeeper-client?=	../../wip/zookeeper-client
.endif	# ZOOKEEPER_CLIENT_BUILDLINK3_MK

BUILDLINK_TREE+=	-zookeeper-client
