# $NetBSD$
#

BUILDLINK_TREE+=	wordcut

.if !defined(WORDCUT_BUILDLINK3_MK)
WORDCUT_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.wordcut+=	wordcut>=0.5.1b2
BUILDLINK_PKGSRCDIR.wordcut?=	../../wip/wordcut
.endif	# WORDCUT_BUILDLINK3_MK

BUILDLINK_TREE+=	-wordcut
