# $NetBSD$

BUILDLINK_TREE+=	libwbxml2

.if !defined(LIBWBXML2_BUILDLINK3_MK)
LIBWBXML2_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.libwbxml2+=	libwbxml2>=0.9.0
BUILDLINK_PKGSRCDIR.libwbxml2?=		../../wip/libwbxml2-patched

.endif # LIBWBXML2_BUILDLINK3_MK

BUILDLINK_TREE+=	-libwbxml2
