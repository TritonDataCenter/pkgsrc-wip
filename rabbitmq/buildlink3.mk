# $NetBSD$

BUILDLINK_TREE+=			rabbitmq

.if !defined(RABBITMQ_BUILDLINK3_MK)
RABBITMQ_BUILDLINK3_MK:=

.include "version.mk"

BUILDLINK_API_DEPENDS.rabbitmq+=	rabbitmq>=1.5.0
BUILDLINK_PKGSRCDIR.rabbitmq?=		../../wip/rabbitmq

BUILDLINK_INCDIRS.rabbitmq?=		lib/erlang/lib/rabbitmq_server-${RMQ_VERSION}/include

#.include "../../lang/erlang/buildlink3.mk"
.endif	# RABBITMQ_BUILDLINK3_MK

BUILDLINK_TREE+=			-rabbitmq
