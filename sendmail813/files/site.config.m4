# $NetBSD$

# pathnames specific to pkgsrc
#
define(`confEBINDIR', `${PREFIX}/libexec/sendmail')
define(`confMBINDIR', `${PREFIX}/libexec/sendmail')
define(`confSBINDIR', `${PREFIX}/sbin')
define(`confUBINDIR', `${PREFIX}/bin')
define(`confHFDIR', `${PREFIX}/share/misc')
define(`confMANROOT', `${PREFIX}/man/cat')
APPENDDEF(`confENVDEF', `-I${PREFIX}/include')
APPENDDEF(`confLIBS', `-L${PREFIX}/lib')
