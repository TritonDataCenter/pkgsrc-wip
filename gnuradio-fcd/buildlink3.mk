# $NetBSD: buildlink3.mk,v 1.25 2013/11/20 20:04:35 adam Exp $

BUILDLINK_TREE+=	gnuradio-fcd

.if !defined(GNURADIO_FCD_BUILDLINK3_MK)
GNURADIO_FCD_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.gnuradio-fcd+=	gnuradio-fcd>=3.7.5
BUILDLINK_ABI_DEPENDS.gnuradio-fcd+=	gnuradio-fcd>=3.7.5
BUILDLINK_PKGSRCDIR.gnuradio-fcd?=	../../wip/gnuradio-fcd
.endif # GNURADIO_FCD_BUILDLINK3_MK

BUILDLINK_TREE+=	-gnuradio-fcd
