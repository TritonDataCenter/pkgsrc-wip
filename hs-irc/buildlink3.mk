# $NetBSD$
#

BUILDLINK_TREE+=	hs-irc

.if !defined(HS_IRC_BUILDLINK3_MK)
HS_IRC_BUILDLINK3_MK:=

BUILDLINK_DEPMETHOD.hs-irc?=	build
BUILDLINK_API_DEPENDS.hs-irc+=	hs-irc>=0.4.3
BUILDLINK_PKGSRCDIR.hs-irc?=	../../wip/hs-irc
.endif # HS_IRC_BUILDLINK3_MK

BUILDLINK_TREE+=	-hs-irc
