# $NetBSD$

BUILDLINK_TREE+=	samtools

.if !defined(SAMTOOLS_BUILDLINK3_MK)
SAMTOOLS_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.samtools+=	samtools>=0.1.19
BUILDLINK_PKGSRCDIR.samtools?=	../../wip/samtools
.endif	# SAMTOOLS_BUILDLINK3_MK

BUILDLINK_TREE+=	-samtools
