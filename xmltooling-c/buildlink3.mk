# $NetBSD$
#

BUILDLINK_TREE+=	xmltooling-c

.if !defined(XMLTOOLING_C_BUILDLINK3_MK)
XMLTOOLING_C_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.xmltooling-c+=	xmltooling-c>=1.2.2
BUILDLINK_PKGSRCDIR.xmltooling-c?=	../../wip/xmltooling-c

.endif	# XMLTOOLING_C_BUILDLINK3_MK

BUILDLINK_TREE+=	-xmltooling-c
