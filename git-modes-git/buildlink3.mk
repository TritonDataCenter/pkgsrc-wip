# $NetBSD: buildlink3.mk,v 1.2 2009/03/20 19:24:13 joerg Exp $
#
BUILDLINK_TREE+=	git_modes

.if !defined(GIT_MODES_BUILDLINK3_MK)
GIT_MODES_BUILDLINK3_MK:=
BUILDLINK_API_DEPENDS.git_modes?= git-modes-git-[0-9]*
BUILDLINK_PKGSRCDIR.git_modes?=	../../wip/git-modes-git

BUILDLINK_CONTENTS_FILTER.git_modes= ${EGREP} '.*\.el$$|.*\.elc$$'

.endif # GIT_MODES_BUILDLINK3_MK

BUILDLINK_TREE+=	-git_modes
