#!@RCD_SCRIPTS_SHELL@
#
# $NetBSD: LOGIN,v 1.1.1.1 2003/06/19 16:07:12 grant Exp $
#

# PROVIDE: LOGIN
# REQUIRE: DAEMON

#	This is a dummy dependency to ensure user services such as xdm,
#	inetd, cron and kerberos are started after everything else, in
#	case the administrator has increased the system security level
#	and wants to delay user logins until the system is (almost) fully
#	operational.
