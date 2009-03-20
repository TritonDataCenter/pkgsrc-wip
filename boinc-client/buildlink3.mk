# $NetBSD$

BUILDLINK_TREE+=	boinc-client

BUILDLINK_API_DEPENDS.boinc-client+=	boinc-client>=1
BUILDLINK_PKGSRCDIR.boinc-client?=	../../wip/boinc-client

# XXX
# XXX Uncomment and keep only the buildlink3 lines below which are directly
# XXX needed for dependencies to compile, link, and run.  If this package
# XXX provides a wrappered API or otherwise does not expose the APIs of the
# XXX buildlink3 lines below to dependencies, remove them.
# XXX
#.include "../../www/curl/buildlink3.mk"
#.include "../../security/openssl/buildlink3.mk"
#.include "../../net/boinc-lib/buildlink3.mk"
.endif # BOINC_CLIENT_BUILDLINK3_MK

BUILDLINK_TREE+=	-boinc-client
