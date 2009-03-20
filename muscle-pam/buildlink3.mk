# $NetBSD$

BUILDLINK_TREE+=	muscle-pam

BUILDLINK_API_DEPENDS.muscle-pam+=	muscle-pam>=1.1.5
BUILDLINK_PKGSRCDIR.muscle-pam?=	../../wip/muscle-pam

.include "../../wip/libmusclecard/buildlink3.mk"
.endif # MUSCLE_PAM_BUILDLINK3_MK

BUILDLINK_TREE+=	-muscle-pam
