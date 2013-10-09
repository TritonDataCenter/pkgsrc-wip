# $NetBSD: buildlink3.mk,v 1.2 2009/03/20 19:24:13 joerg Exp $
#

BUILDLINK_TREE+=	apel

.if !defined(APEL_BUILDLINK3_MK)
APEL_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.apel+=	${EMACS_PKGNAME_PREFIX}apel>=10.8
BUILDLINK_PKGSRCDIR.apel?=	../../wip/apel-git

BUILDLINK_CONTENTS_FILTER.apel=	${EGREP} '.*\.el$$|.*\.elc$$'

.endif # APEL_BUILDLINK3_MK

BUILDLINK_TREE+=	-apel
