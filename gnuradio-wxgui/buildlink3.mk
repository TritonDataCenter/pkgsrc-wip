# $NetBSD: buildlink3.mk,v 1.25 2013/11/20 20:04:35 adam Exp $

BUILDLINK_TREE+=	gnuradio-wxgui

.if !defined(GNURADIO_WXGUI_BUILDLINK3_MK)
GNURADIO_WXGUI_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.gnuradio-wxgui+=	gnuradio-wxgui>=3.7.5
BUILDLINK_ABI_DEPENDS.gnuradio-wxgui+=	gnuradio-wxgui>=3.7.5
BUILDLINK_PKGSRCDIR.gnuradio-wxgui?=	../../wip/gnuradio-wxgui
.endif # GNURADIO_WXGUI_BUILDLINK3_MK

BUILDLINK_TREE+=	-gnuradio-wxgui
