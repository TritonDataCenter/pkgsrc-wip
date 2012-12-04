# $NetBSD$

BUILDLINK_TREE+=	glib-java

.if !defined(GLIB_JAVA_BUILDLINK3_MK)
GLIB_JAVA_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.glib-java+=	glib-java>=0.2.5
BUILDLINK_PKGSRCDIR.glib-java?=	../../wip/glib-java

.include "../../devel/glib2/buildlink3.mk"

.endif # GLIB_JAVA_BUILDLINK3_MK

BUILDLINK_TREE+=	-glib-java
