# $NetBSD: buildlink3.mk,v 1.8 2010/07/11 02:53:24 obache Exp $

BUILDLINK_TREE+=	ja-freewnn-lib

.if !defined(JA_FREEWNN_LIB_BUILDLINK3_MK)
JA_FREEWNN_LIB_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.ja-freewnn-lib+=	ja-freewnn-lib>=1.1.1
BUILDLINK_PKGSRCDIR.ja-freewnn-lib?=	../../wip/ja-freewnn-lib
BUILDLINK_DEPMETHOD.ja-freewnn-lib?=	build
.endif # JA_FREEWNN_LIB_BUILDLINK3_MK

BUILDLINK_TREE+=	-ja-freewnn-lib
