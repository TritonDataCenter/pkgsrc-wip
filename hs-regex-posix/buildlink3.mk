# $NetBSD$

BUILDLINK_TREE+=	hs-regex-posix

.if !defined(HS_REGEX_POSIX_BUILDLINK3_MK)
HS_REGEX_POSIX_BUILDLINK3_MK:=

BUILDLINK_DEPMETHOD.hs-regex-posix?=	build
BUILDLINK_API_DEPENDS.hs-regex-posix+=	hs-regex-posix>=0.93.2
BUILDLINK_PKGSRCDIR.hs-regex-posix?=	../../wip/hs-regex-posix

.include "../../wip/hs-regex-base/buildlink3.mk"
.endif # HS_REGEX_POSIX_BUILDLINK3_MK

BUILDLINK_TREE+=	-hs-regex-posix
