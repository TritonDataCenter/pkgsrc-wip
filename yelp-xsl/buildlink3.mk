# $NetBSD$

BUILDLINK_TREE+=	yelp-xsl

.if !defined(YELP_XSL_BUILDLINK3_MK)
YELP_XSL_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.yelp-xsl+=	yelp-xsl>=3.0.2
BUILDLINK_PKGSRCDIR.yelp-xsl?=	../../wip/yelp-xsl

.endif	# YELP_XSL_BUILDLINK3_MK

BUILDLINK_TREE+=	-yelp-xsl
