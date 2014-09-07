# $NetBSD$

BUILDLINK_TREE+=        uhd

.if !defined(UHD_BUILDLINK3_MK)
UHD_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.uhd+=    uhd>=2.22
BUILDLINK_PKGSRCDIR.uhd?=              ../../wip/uhd
.endif # UHD_BUILDLINK3_MK

BUILDLINK_TREE+=        -uhd
