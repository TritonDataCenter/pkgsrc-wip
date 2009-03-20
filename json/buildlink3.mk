# $NetBSD$

BUILDLINK_TREE+=	json-c

.if !defined(JSON_C_BUILDLINK3_MK)
JSON_C_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.json-c+=	json-c>=0.7
BUILDLINK_PKGSRCDIR.json-c?=	../../category/json
.endif # JSON_C_BUILDLINK3_MK

BUILDLINK_TREE+=	-json-c
