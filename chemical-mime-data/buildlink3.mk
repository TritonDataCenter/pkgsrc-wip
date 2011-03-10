# $NetBSD$

BUILDLINK_TREE+=	chemical-mime-data

.if !defined(CHEMICAL_MIME_DATA_BUILDLINK3_MK)
CHEMICAL_MIME_DATA_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.chemical-mime-data+=	chemical-mime-data>=0.1.94nb1
BUILDLINK_PKGSRCDIR.chemical-mime-data?=	../../wip/chemical-mime-data

.endif	# CHEMICAL_MIME_DATA_BUILDLINK3_MK

BUILDLINK_TREE+=	-chemical-mime-data
