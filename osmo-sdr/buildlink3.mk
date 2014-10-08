# $NetBSD: buildlink3.mk,v 1.25 2013/11/20 20:04:35 adam Exp $

BUILDLINK_TREE+=	osmo-sdr

.if !defined(OSMO_SDR_BUILDLINK3_MK)
OSMO_SDR_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.osmo-sdr+=	osmo-sdr>=0.1
BUILDLINK_ABI_DEPENDS.osmo-sdr+=	osmo-sdr>=0.1
BUILDLINK_PKGSRCDIR.osmo-sdr?=		../../wip/osmo-sdr
.endif # OSMO_SDR_BUILDLINK3_MK

BUILDLINK_TREE+=	-osmo-sdr
