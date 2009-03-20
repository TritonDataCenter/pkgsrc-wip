# $NetBSD$

BUILDLINK_TREE+=	muscle-pkcs11

BUILDLINK_API_DEPENDS.muscle-pkcs11+=	muscle-pkcs11>=1.1.5
BUILDLINK_PKGSRCDIR.muscle-pkcs11?=	../../wip/muscle-pkcs11

.include "../../wip/libmusclecard/buildlink3.mk"
.endif # MUSCLE_PKCS11_BUILDLINK3_MK

BUILDLINK_TREE+=	-muscle-pkcs11
