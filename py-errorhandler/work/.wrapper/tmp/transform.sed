s|^\(/[^ 	`"':;,]*\)/\.\([ 	`"':;,]\)|\1|g
s|^\(/[^ 	`"':;,]*\)/\.$|\1|g
s|^-I\(/[^ 	`"':;,]*\)/\.\([ 	`"':;,]\)|-I\1|g
s|^-I\(/[^ 	`"':;,]*\)/\.$|-I\1|g
s|^-L\(/[^ 	`"':;,]*\)/\.\([ 	`"':;,]\)|-L\1|g
s|^-L\(/[^ 	`"':;,]*\)/\.$|-L\1|g
s|^-Wl,--rpath,\(/[^ 	`"':;,]*\)/\.\([ 	`"':;,]\)|-Wl,--rpath,\1|g
s|^-Wl,--rpath,\(/[^ 	`"':;,]*\)/\.$|-Wl,--rpath,\1|g
s|^-Wl,-rpath-link,\(/[^ 	`"':;,]*\)/\.\([ 	`"':;,]\)|-Wl,-rpath-link,\1|g
s|^-Wl,-rpath-link,\(/[^ 	`"':;,]*\)/\.$|-Wl,-rpath-link,\1|g
s|^-Wl,-rpath,\(/[^ 	`"':;,]*\)/\.\([ 	`"':;,]\)|-Wl,-rpath,\1|g
s|^-Wl,-rpath,\(/[^ 	`"':;,]*\)/\.$|-Wl,-rpath,\1|g
s|^-Wl,-R\(/[^ 	`"':;,]*\)/\.\([ 	`"':;,]\)|-Wl,-R\1|g
s|^-Wl,-R\(/[^ 	`"':;,]*\)/\.$|-Wl,-R\1|g
s|^-R\(/[^ 	`"':;,]*\)/\.\([ 	`"':;,]\)|-R\1|g
s|^-R\(/[^ 	`"':;,]*\)/\.$|-R\1|g
s|^-I/usr/pkgsrc/wip/py-errorhandler/work/.buildlink\([ 	`"':;,]\)|-I_bUiLdLiNk__usr_pkgsrc_wip_py-errorhandler_work_.buildlink#\1|g
s|^-I/usr/pkgsrc/wip/py-errorhandler/work/.buildlink$|-I_bUiLdLiNk__usr_pkgsrc_wip_py-errorhandler_work_.buildlink#|g
s|^-L/usr/pkgsrc/wip/py-errorhandler/work/.buildlink\([ 	`"':;,]\)|-L_bUiLdLiNk__usr_pkgsrc_wip_py-errorhandler_work_.buildlink#\1|g
s|^-L/usr/pkgsrc/wip/py-errorhandler/work/.buildlink$|-L_bUiLdLiNk__usr_pkgsrc_wip_py-errorhandler_work_.buildlink#|g
s|^-Wl,--rpath,/usr/pkgsrc/wip/py-errorhandler/work/.buildlink\([ 	`"':;,]\)|-Wl,--rpath,_bUiLdLiNk__usr_pkgsrc_wip_py-errorhandler_work_.buildlink#\1|g
s|^-Wl,--rpath,/usr/pkgsrc/wip/py-errorhandler/work/.buildlink$|-Wl,--rpath,_bUiLdLiNk__usr_pkgsrc_wip_py-errorhandler_work_.buildlink#|g
s|^-Wl,-rpath-link,/usr/pkgsrc/wip/py-errorhandler/work/.buildlink\([ 	`"':;,]\)|-Wl,-rpath-link,_bUiLdLiNk__usr_pkgsrc_wip_py-errorhandler_work_.buildlink#\1|g
s|^-Wl,-rpath-link,/usr/pkgsrc/wip/py-errorhandler/work/.buildlink$|-Wl,-rpath-link,_bUiLdLiNk__usr_pkgsrc_wip_py-errorhandler_work_.buildlink#|g
s|^-Wl,-rpath,/usr/pkgsrc/wip/py-errorhandler/work/.buildlink\([ 	`"':;,]\)|-Wl,-rpath,_bUiLdLiNk__usr_pkgsrc_wip_py-errorhandler_work_.buildlink#\1|g
s|^-Wl,-rpath,/usr/pkgsrc/wip/py-errorhandler/work/.buildlink$|-Wl,-rpath,_bUiLdLiNk__usr_pkgsrc_wip_py-errorhandler_work_.buildlink#|g
s|^-Wl,-R/usr/pkgsrc/wip/py-errorhandler/work/.buildlink\([ 	`"':;,]\)|-Wl,-R_bUiLdLiNk__usr_pkgsrc_wip_py-errorhandler_work_.buildlink#\1|g
s|^-Wl,-R/usr/pkgsrc/wip/py-errorhandler/work/.buildlink$|-Wl,-R_bUiLdLiNk__usr_pkgsrc_wip_py-errorhandler_work_.buildlink#|g
s|^-R/usr/pkgsrc/wip/py-errorhandler/work/.buildlink\([ 	`"':;,]\)|-R_bUiLdLiNk__usr_pkgsrc_wip_py-errorhandler_work_.buildlink#\1|g
s|^-R/usr/pkgsrc/wip/py-errorhandler/work/.buildlink$|-R_bUiLdLiNk__usr_pkgsrc_wip_py-errorhandler_work_.buildlink#|g
s|^/usr/pkgsrc/wip/py-errorhandler/work/.buildlink\(/[^ 	`"':;,]*\.la[ 	`"':;,]\)|_bUiLdLiNk__usr_pkgsrc_wip_py-errorhandler_work_.buildlink#\1|g
s|^/usr/pkgsrc/wip/py-errorhandler/work/.buildlink\(/[^ 	`"':;,]*\.la\)$|_bUiLdLiNk__usr_pkgsrc_wip_py-errorhandler_work_.buildlink#\1|g
s|^-I/usr/pkgsrc/wip/py-errorhandler/work/.buildlink\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-I_bUiLdLiNk__usr_pkgsrc_wip_py-errorhandler_work_.buildlink#\1|g
s|^-I/usr/pkgsrc/wip/py-errorhandler/work/.buildlink\(/[^ 	`"':;,]*\)$|-I_bUiLdLiNk__usr_pkgsrc_wip_py-errorhandler_work_.buildlink#\1|g
s|^-L/usr/pkgsrc/wip/py-errorhandler/work/.buildlink\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-L_bUiLdLiNk__usr_pkgsrc_wip_py-errorhandler_work_.buildlink#\1|g
s|^-L/usr/pkgsrc/wip/py-errorhandler/work/.buildlink\(/[^ 	`"':;,]*\)$|-L_bUiLdLiNk__usr_pkgsrc_wip_py-errorhandler_work_.buildlink#\1|g
s|^-Wl,--rpath,/usr/pkgsrc/wip/py-errorhandler/work/.buildlink\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,--rpath,_bUiLdLiNk__usr_pkgsrc_wip_py-errorhandler_work_.buildlink#\1|g
s|^-Wl,--rpath,/usr/pkgsrc/wip/py-errorhandler/work/.buildlink\(/[^ 	`"':;,]*\)$|-Wl,--rpath,_bUiLdLiNk__usr_pkgsrc_wip_py-errorhandler_work_.buildlink#\1|g
s|^-Wl,-rpath-link,/usr/pkgsrc/wip/py-errorhandler/work/.buildlink\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,-rpath-link,_bUiLdLiNk__usr_pkgsrc_wip_py-errorhandler_work_.buildlink#\1|g
s|^-Wl,-rpath-link,/usr/pkgsrc/wip/py-errorhandler/work/.buildlink\(/[^ 	`"':;,]*\)$|-Wl,-rpath-link,_bUiLdLiNk__usr_pkgsrc_wip_py-errorhandler_work_.buildlink#\1|g
s|^-Wl,-rpath,/usr/pkgsrc/wip/py-errorhandler/work/.buildlink\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,-rpath,_bUiLdLiNk__usr_pkgsrc_wip_py-errorhandler_work_.buildlink#\1|g
s|^-Wl,-rpath,/usr/pkgsrc/wip/py-errorhandler/work/.buildlink\(/[^ 	`"':;,]*\)$|-Wl,-rpath,_bUiLdLiNk__usr_pkgsrc_wip_py-errorhandler_work_.buildlink#\1|g
s|^-Wl,-R/usr/pkgsrc/wip/py-errorhandler/work/.buildlink\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,-R_bUiLdLiNk__usr_pkgsrc_wip_py-errorhandler_work_.buildlink#\1|g
s|^-Wl,-R/usr/pkgsrc/wip/py-errorhandler/work/.buildlink\(/[^ 	`"':;,]*\)$|-Wl,-R_bUiLdLiNk__usr_pkgsrc_wip_py-errorhandler_work_.buildlink#\1|g
s|^-R/usr/pkgsrc/wip/py-errorhandler/work/.buildlink\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-R_bUiLdLiNk__usr_pkgsrc_wip_py-errorhandler_work_.buildlink#\1|g
s|^-R/usr/pkgsrc/wip/py-errorhandler/work/.buildlink\(/[^ 	`"':;,]*\)$|-R_bUiLdLiNk__usr_pkgsrc_wip_py-errorhandler_work_.buildlink#\1|g
s|^-I/usr/pkgsrc/wip/py-errorhandler/work\([ 	`"':;,]\)|-I_bUiLdLiNk__usr_pkgsrc_wip_py-errorhandler_work#\1|g
s|^-I/usr/pkgsrc/wip/py-errorhandler/work$|-I_bUiLdLiNk__usr_pkgsrc_wip_py-errorhandler_work#|g
s|^-L/usr/pkgsrc/wip/py-errorhandler/work\([ 	`"':;,]\)|-L_bUiLdLiNk__usr_pkgsrc_wip_py-errorhandler_work#\1|g
s|^-L/usr/pkgsrc/wip/py-errorhandler/work$|-L_bUiLdLiNk__usr_pkgsrc_wip_py-errorhandler_work#|g
s|^-Wl,--rpath,/usr/pkgsrc/wip/py-errorhandler/work\([ 	`"':;,]\)|-Wl,--rpath,_bUiLdLiNk__usr_pkgsrc_wip_py-errorhandler_work#\1|g
s|^-Wl,--rpath,/usr/pkgsrc/wip/py-errorhandler/work$|-Wl,--rpath,_bUiLdLiNk__usr_pkgsrc_wip_py-errorhandler_work#|g
s|^-Wl,-rpath-link,/usr/pkgsrc/wip/py-errorhandler/work\([ 	`"':;,]\)|-Wl,-rpath-link,_bUiLdLiNk__usr_pkgsrc_wip_py-errorhandler_work#\1|g
s|^-Wl,-rpath-link,/usr/pkgsrc/wip/py-errorhandler/work$|-Wl,-rpath-link,_bUiLdLiNk__usr_pkgsrc_wip_py-errorhandler_work#|g
s|^-Wl,-rpath,/usr/pkgsrc/wip/py-errorhandler/work\([ 	`"':;,]\)|-Wl,-rpath,_bUiLdLiNk__usr_pkgsrc_wip_py-errorhandler_work#\1|g
s|^-Wl,-rpath,/usr/pkgsrc/wip/py-errorhandler/work$|-Wl,-rpath,_bUiLdLiNk__usr_pkgsrc_wip_py-errorhandler_work#|g
s|^-Wl,-R/usr/pkgsrc/wip/py-errorhandler/work\([ 	`"':;,]\)|-Wl,-R_bUiLdLiNk__usr_pkgsrc_wip_py-errorhandler_work#\1|g
s|^-Wl,-R/usr/pkgsrc/wip/py-errorhandler/work$|-Wl,-R_bUiLdLiNk__usr_pkgsrc_wip_py-errorhandler_work#|g
s|^-R/usr/pkgsrc/wip/py-errorhandler/work\([ 	`"':;,]\)|-R_bUiLdLiNk__usr_pkgsrc_wip_py-errorhandler_work#\1|g
s|^-R/usr/pkgsrc/wip/py-errorhandler/work$|-R_bUiLdLiNk__usr_pkgsrc_wip_py-errorhandler_work#|g
s|^/usr/pkgsrc/wip/py-errorhandler/work\(/[^ 	`"':;,]*\.la[ 	`"':;,]\)|_bUiLdLiNk__usr_pkgsrc_wip_py-errorhandler_work#\1|g
s|^/usr/pkgsrc/wip/py-errorhandler/work\(/[^ 	`"':;,]*\.la\)$|_bUiLdLiNk__usr_pkgsrc_wip_py-errorhandler_work#\1|g
s|^-I/usr/pkgsrc/wip/py-errorhandler/work\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-I_bUiLdLiNk__usr_pkgsrc_wip_py-errorhandler_work#\1|g
s|^-I/usr/pkgsrc/wip/py-errorhandler/work\(/[^ 	`"':;,]*\)$|-I_bUiLdLiNk__usr_pkgsrc_wip_py-errorhandler_work#\1|g
s|^-L/usr/pkgsrc/wip/py-errorhandler/work\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-L_bUiLdLiNk__usr_pkgsrc_wip_py-errorhandler_work#\1|g
s|^-L/usr/pkgsrc/wip/py-errorhandler/work\(/[^ 	`"':;,]*\)$|-L_bUiLdLiNk__usr_pkgsrc_wip_py-errorhandler_work#\1|g
s|^-Wl,--rpath,/usr/pkgsrc/wip/py-errorhandler/work\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,--rpath,_bUiLdLiNk__usr_pkgsrc_wip_py-errorhandler_work#\1|g
s|^-Wl,--rpath,/usr/pkgsrc/wip/py-errorhandler/work\(/[^ 	`"':;,]*\)$|-Wl,--rpath,_bUiLdLiNk__usr_pkgsrc_wip_py-errorhandler_work#\1|g
s|^-Wl,-rpath-link,/usr/pkgsrc/wip/py-errorhandler/work\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,-rpath-link,_bUiLdLiNk__usr_pkgsrc_wip_py-errorhandler_work#\1|g
s|^-Wl,-rpath-link,/usr/pkgsrc/wip/py-errorhandler/work\(/[^ 	`"':;,]*\)$|-Wl,-rpath-link,_bUiLdLiNk__usr_pkgsrc_wip_py-errorhandler_work#\1|g
s|^-Wl,-rpath,/usr/pkgsrc/wip/py-errorhandler/work\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,-rpath,_bUiLdLiNk__usr_pkgsrc_wip_py-errorhandler_work#\1|g
s|^-Wl,-rpath,/usr/pkgsrc/wip/py-errorhandler/work\(/[^ 	`"':;,]*\)$|-Wl,-rpath,_bUiLdLiNk__usr_pkgsrc_wip_py-errorhandler_work#\1|g
s|^-Wl,-R/usr/pkgsrc/wip/py-errorhandler/work\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,-R_bUiLdLiNk__usr_pkgsrc_wip_py-errorhandler_work#\1|g
s|^-Wl,-R/usr/pkgsrc/wip/py-errorhandler/work\(/[^ 	`"':;,]*\)$|-Wl,-R_bUiLdLiNk__usr_pkgsrc_wip_py-errorhandler_work#\1|g
s|^-R/usr/pkgsrc/wip/py-errorhandler/work\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-R_bUiLdLiNk__usr_pkgsrc_wip_py-errorhandler_work#\1|g
s|^-R/usr/pkgsrc/wip/py-errorhandler/work\(/[^ 	`"':;,]*\)$|-R_bUiLdLiNk__usr_pkgsrc_wip_py-errorhandler_work#\1|g
s|^-I/usr/include\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-I_bUiLdLiNk__usr_include#\1|g
s|^-I/usr/include\(/[^ 	`"':;,]*\)$|-I_bUiLdLiNk__usr_include#\1|g
s|^-L/usr/lib\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-L_bUiLdLiNk__usr_lib#\1|g
s|^-L/usr/lib\(/[^ 	`"':;,]*\)$|-L_bUiLdLiNk__usr_lib#\1|g
s|^-Wl,--rpath,_bUiLdLiNk__usr_pkgsrc_wip_py-errorhandler_work_.buildlink#\([ 	`"':;,]\)|-Wl,--rpath,/usr/pkg\1|g
s|^-Wl,--rpath,_bUiLdLiNk__usr_pkgsrc_wip_py-errorhandler_work_.buildlink#$|-Wl,--rpath,/usr/pkg|g
s|^-Wl,-rpath-link,_bUiLdLiNk__usr_pkgsrc_wip_py-errorhandler_work_.buildlink#\([ 	`"':;,]\)|-Wl,-rpath-link,/usr/pkg\1|g
s|^-Wl,-rpath-link,_bUiLdLiNk__usr_pkgsrc_wip_py-errorhandler_work_.buildlink#$|-Wl,-rpath-link,/usr/pkg|g
s|^-Wl,-rpath,_bUiLdLiNk__usr_pkgsrc_wip_py-errorhandler_work_.buildlink#\([ 	`"':;,]\)|-Wl,-rpath,/usr/pkg\1|g
s|^-Wl,-rpath,_bUiLdLiNk__usr_pkgsrc_wip_py-errorhandler_work_.buildlink#$|-Wl,-rpath,/usr/pkg|g
s|^-Wl,-R_bUiLdLiNk__usr_pkgsrc_wip_py-errorhandler_work_.buildlink#\([ 	`"':;,]\)|-Wl,-R/usr/pkg\1|g
s|^-Wl,-R_bUiLdLiNk__usr_pkgsrc_wip_py-errorhandler_work_.buildlink#$|-Wl,-R/usr/pkg|g
s|^-R_bUiLdLiNk__usr_pkgsrc_wip_py-errorhandler_work_.buildlink#\([ 	`"':;,]\)|-R/usr/pkg\1|g
s|^-R_bUiLdLiNk__usr_pkgsrc_wip_py-errorhandler_work_.buildlink#$|-R/usr/pkg|g
s|^-Wl,--rpath,_bUiLdLiNk__usr_pkgsrc_wip_py-errorhandler_work_.buildlink#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,--rpath,/usr/pkg\1|g
s|^-Wl,--rpath,_bUiLdLiNk__usr_pkgsrc_wip_py-errorhandler_work_.buildlink#\(/[^ 	`"':;,]*\)$|-Wl,--rpath,/usr/pkg\1|g
s|^-Wl,-rpath-link,_bUiLdLiNk__usr_pkgsrc_wip_py-errorhandler_work_.buildlink#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,-rpath-link,/usr/pkg\1|g
s|^-Wl,-rpath-link,_bUiLdLiNk__usr_pkgsrc_wip_py-errorhandler_work_.buildlink#\(/[^ 	`"':;,]*\)$|-Wl,-rpath-link,/usr/pkg\1|g
s|^-Wl,-rpath,_bUiLdLiNk__usr_pkgsrc_wip_py-errorhandler_work_.buildlink#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,-rpath,/usr/pkg\1|g
s|^-Wl,-rpath,_bUiLdLiNk__usr_pkgsrc_wip_py-errorhandler_work_.buildlink#\(/[^ 	`"':;,]*\)$|-Wl,-rpath,/usr/pkg\1|g
s|^-Wl,-R_bUiLdLiNk__usr_pkgsrc_wip_py-errorhandler_work_.buildlink#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,-R/usr/pkg\1|g
s|^-Wl,-R_bUiLdLiNk__usr_pkgsrc_wip_py-errorhandler_work_.buildlink#\(/[^ 	`"':;,]*\)$|-Wl,-R/usr/pkg\1|g
s|^-R_bUiLdLiNk__usr_pkgsrc_wip_py-errorhandler_work_.buildlink#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-R/usr/pkg\1|g
s|^-R_bUiLdLiNk__usr_pkgsrc_wip_py-errorhandler_work_.buildlink#\(/[^ 	`"':;,]*\)$|-R/usr/pkg\1|g
s|^-Wl,--rpath,/usr/pkg/lib/python2.6/config\([ 	`"':;,]\)|-Wl,--rpath,_bUiLdLiNk__usr_pkg_lib_python2.6_config#\1|g
s|^-Wl,--rpath,/usr/pkg/lib/python2.6/config$|-Wl,--rpath,_bUiLdLiNk__usr_pkg_lib_python2.6_config#|g
s|^-Wl,-rpath-link,/usr/pkg/lib/python2.6/config\([ 	`"':;,]\)|-Wl,-rpath-link,_bUiLdLiNk__usr_pkg_lib_python2.6_config#\1|g
s|^-Wl,-rpath-link,/usr/pkg/lib/python2.6/config$|-Wl,-rpath-link,_bUiLdLiNk__usr_pkg_lib_python2.6_config#|g
s|^-Wl,-rpath,/usr/pkg/lib/python2.6/config\([ 	`"':;,]\)|-Wl,-rpath,_bUiLdLiNk__usr_pkg_lib_python2.6_config#\1|g
s|^-Wl,-rpath,/usr/pkg/lib/python2.6/config$|-Wl,-rpath,_bUiLdLiNk__usr_pkg_lib_python2.6_config#|g
s|^-Wl,-R/usr/pkg/lib/python2.6/config\([ 	`"':;,]\)|-Wl,-R_bUiLdLiNk__usr_pkg_lib_python2.6_config#\1|g
s|^-Wl,-R/usr/pkg/lib/python2.6/config$|-Wl,-R_bUiLdLiNk__usr_pkg_lib_python2.6_config#|g
s|^-R/usr/pkg/lib/python2.6/config\([ 	`"':;,]\)|-R_bUiLdLiNk__usr_pkg_lib_python2.6_config#\1|g
s|^-R/usr/pkg/lib/python2.6/config$|-R_bUiLdLiNk__usr_pkg_lib_python2.6_config#|g
s|^-Wl,--rpath,/usr/pkg/lib/python2.6/config\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,--rpath,_bUiLdLiNk__usr_pkg_lib_python2.6_config#\1|g
s|^-Wl,--rpath,/usr/pkg/lib/python2.6/config\(/[^ 	`"':;,]*\)$|-Wl,--rpath,_bUiLdLiNk__usr_pkg_lib_python2.6_config#\1|g
s|^-Wl,-rpath-link,/usr/pkg/lib/python2.6/config\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,-rpath-link,_bUiLdLiNk__usr_pkg_lib_python2.6_config#\1|g
s|^-Wl,-rpath-link,/usr/pkg/lib/python2.6/config\(/[^ 	`"':;,]*\)$|-Wl,-rpath-link,_bUiLdLiNk__usr_pkg_lib_python2.6_config#\1|g
s|^-Wl,-rpath,/usr/pkg/lib/python2.6/config\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,-rpath,_bUiLdLiNk__usr_pkg_lib_python2.6_config#\1|g
s|^-Wl,-rpath,/usr/pkg/lib/python2.6/config\(/[^ 	`"':;,]*\)$|-Wl,-rpath,_bUiLdLiNk__usr_pkg_lib_python2.6_config#\1|g
s|^-Wl,-R/usr/pkg/lib/python2.6/config\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,-R_bUiLdLiNk__usr_pkg_lib_python2.6_config#\1|g
s|^-Wl,-R/usr/pkg/lib/python2.6/config\(/[^ 	`"':;,]*\)$|-Wl,-R_bUiLdLiNk__usr_pkg_lib_python2.6_config#\1|g
s|^-R/usr/pkg/lib/python2.6/config\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-R_bUiLdLiNk__usr_pkg_lib_python2.6_config#\1|g
s|^-R/usr/pkg/lib/python2.6/config\(/[^ 	`"':;,]*\)$|-R_bUiLdLiNk__usr_pkg_lib_python2.6_config#\1|g
s|^-Wl,--rpath,/usr/pkg/lib\([ 	`"':;,]\)|-Wl,--rpath,_bUiLdLiNk__usr_pkg_lib#\1|g
s|^-Wl,--rpath,/usr/pkg/lib$|-Wl,--rpath,_bUiLdLiNk__usr_pkg_lib#|g
s|^-Wl,-rpath-link,/usr/pkg/lib\([ 	`"':;,]\)|-Wl,-rpath-link,_bUiLdLiNk__usr_pkg_lib#\1|g
s|^-Wl,-rpath-link,/usr/pkg/lib$|-Wl,-rpath-link,_bUiLdLiNk__usr_pkg_lib#|g
s|^-Wl,-rpath,/usr/pkg/lib\([ 	`"':;,]\)|-Wl,-rpath,_bUiLdLiNk__usr_pkg_lib#\1|g
s|^-Wl,-rpath,/usr/pkg/lib$|-Wl,-rpath,_bUiLdLiNk__usr_pkg_lib#|g
s|^-Wl,-R/usr/pkg/lib\([ 	`"':;,]\)|-Wl,-R_bUiLdLiNk__usr_pkg_lib#\1|g
s|^-Wl,-R/usr/pkg/lib$|-Wl,-R_bUiLdLiNk__usr_pkg_lib#|g
s|^-R/usr/pkg/lib\([ 	`"':;,]\)|-R_bUiLdLiNk__usr_pkg_lib#\1|g
s|^-R/usr/pkg/lib$|-R_bUiLdLiNk__usr_pkg_lib#|g
s|^-Wl,--rpath,/usr/pkg/lib\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,--rpath,_bUiLdLiNk__usr_pkg_lib#\1|g
s|^-Wl,--rpath,/usr/pkg/lib\(/[^ 	`"':;,]*\)$|-Wl,--rpath,_bUiLdLiNk__usr_pkg_lib#\1|g
s|^-Wl,-rpath-link,/usr/pkg/lib\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,-rpath-link,_bUiLdLiNk__usr_pkg_lib#\1|g
s|^-Wl,-rpath-link,/usr/pkg/lib\(/[^ 	`"':;,]*\)$|-Wl,-rpath-link,_bUiLdLiNk__usr_pkg_lib#\1|g
s|^-Wl,-rpath,/usr/pkg/lib\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,-rpath,_bUiLdLiNk__usr_pkg_lib#\1|g
s|^-Wl,-rpath,/usr/pkg/lib\(/[^ 	`"':;,]*\)$|-Wl,-rpath,_bUiLdLiNk__usr_pkg_lib#\1|g
s|^-Wl,-R/usr/pkg/lib\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,-R_bUiLdLiNk__usr_pkg_lib#\1|g
s|^-Wl,-R/usr/pkg/lib\(/[^ 	`"':;,]*\)$|-Wl,-R_bUiLdLiNk__usr_pkg_lib#\1|g
s|^-R/usr/pkg/lib\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-R_bUiLdLiNk__usr_pkg_lib#\1|g
s|^-R/usr/pkg/lib\(/[^ 	`"':;,]*\)$|-R_bUiLdLiNk__usr_pkg_lib#\1|g
s|^-Wl,--rpath,/usr/lib\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,--rpath,_bUiLdLiNk__usr_lib#\1|g
s|^-Wl,--rpath,/usr/lib\(/[^ 	`"':;,]*\)$|-Wl,--rpath,_bUiLdLiNk__usr_lib#\1|g
s|^-Wl,-rpath-link,/usr/lib\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,-rpath-link,_bUiLdLiNk__usr_lib#\1|g
s|^-Wl,-rpath-link,/usr/lib\(/[^ 	`"':;,]*\)$|-Wl,-rpath-link,_bUiLdLiNk__usr_lib#\1|g
s|^-Wl,-rpath,/usr/lib\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,-rpath,_bUiLdLiNk__usr_lib#\1|g
s|^-Wl,-rpath,/usr/lib\(/[^ 	`"':;,]*\)$|-Wl,-rpath,_bUiLdLiNk__usr_lib#\1|g
s|^-Wl,-R/usr/lib\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,-R_bUiLdLiNk__usr_lib#\1|g
s|^-Wl,-R/usr/lib\(/[^ 	`"':;,]*\)$|-Wl,-R_bUiLdLiNk__usr_lib#\1|g
s|^-R/usr/lib\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-R_bUiLdLiNk__usr_lib#\1|g
s|^-R/usr/lib\(/[^ 	`"':;,]*\)$|-R_bUiLdLiNk__usr_lib#\1|g
s|^/usr/pkg/packages/[^/ 	`"':;,]*\(/[^ 	`"':;,]*[ 	`"':;,]\)|/usr/pkg\1|g
s|^/usr/pkg/packages/[^/ 	`"':;,]*\(/[^ 	`"':;,]*\)$|/usr/pkg\1|g
s|^-I/usr/pkg/packages/[^/ 	`"':;,]*\(/[^ 	`"':;,]*[ 	`"':;,]\)|-I/usr/pkg\1|g
s|^-I/usr/pkg/packages/[^/ 	`"':;,]*\(/[^ 	`"':;,]*\)$|-I/usr/pkg\1|g
s|^-L/usr/pkg/packages/[^/ 	`"':;,]*\(/[^ 	`"':;,]*[ 	`"':;,]\)|-L/usr/pkg\1|g
s|^-L/usr/pkg/packages/[^/ 	`"':;,]*\(/[^ 	`"':;,]*\)$|-L/usr/pkg\1|g
s|^/usr/pkg\(/[^ 	`"':;,]*\.la[ 	`"':;,]\)|_bUiLdLiNk__usr_pkgsrc_wip_py-errorhandler_work_.buildlink#\1|g
s|^/usr/pkg\(/[^ 	`"':;,]*\.la\)$|_bUiLdLiNk__usr_pkgsrc_wip_py-errorhandler_work_.buildlink#\1|g
s|^-I/usr/pkg\([ 	`"':;,]\)|-I_bUiLdLiNk__usr_pkgsrc_wip_py-errorhandler_work_.buildlink#\1|g
s|^-I/usr/pkg$|-I_bUiLdLiNk__usr_pkgsrc_wip_py-errorhandler_work_.buildlink#|g
s|^-I/usr/pkg\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-I_bUiLdLiNk__usr_pkgsrc_wip_py-errorhandler_work_.buildlink#\1|g
s|^-I/usr/pkg\(/[^ 	`"':;,]*\)$|-I_bUiLdLiNk__usr_pkgsrc_wip_py-errorhandler_work_.buildlink#\1|g
s|^-L/usr/pkg\([ 	`"':;,]\)|-L_bUiLdLiNk__usr_pkgsrc_wip_py-errorhandler_work_.buildlink#\1|g
s|^-L/usr/pkg$|-L_bUiLdLiNk__usr_pkgsrc_wip_py-errorhandler_work_.buildlink#|g
s|^-L/usr/pkg\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-L_bUiLdLiNk__usr_pkgsrc_wip_py-errorhandler_work_.buildlink#\1|g
s|^-L/usr/pkg\(/[^ 	`"':;,]*\)$|-L_bUiLdLiNk__usr_pkgsrc_wip_py-errorhandler_work_.buildlink#\1|g
s|^-lpython\([ 	`"':;,]\)|-lpython2.6\1|g
s|^-lpython$|-lpython2.6|g
s|^-liconv\([ 	`"':;,]\)|\1|g
s|^-liconv$||g
s|^-I/[^ 	`"':;,]*\([ 	`"':;,]\)|\1|g
s|^-I/[^ 	`"':;,]*$||g
s|^-L/[^ 	`"':;,]*\([ 	`"':;,]\)|\1|g
s|^-L/[^ 	`"':;,]*$||g
s|^-Wl,--rpath,/[^ 	`"':;,]*\([ 	`"':;,]\)|\1|g
s|^-Wl,--rpath,/[^ 	`"':;,]*$||g
s|^-Wl,-rpath-link,/[^ 	`"':;,]*\([ 	`"':;,]\)|\1|g
s|^-Wl,-rpath-link,/[^ 	`"':;,]*$||g
s|^-Wl,-rpath,/[^ 	`"':;,]*\([ 	`"':;,]\)|\1|g
s|^-Wl,-rpath,/[^ 	`"':;,]*$||g
s|^-Wl,-R/[^ 	`"':;,]*\([ 	`"':;,]\)|\1|g
s|^-Wl,-R/[^ 	`"':;,]*$||g
s|^-R/[^ 	`"':;,]*\([ 	`"':;,]\)|\1|g
s|^-R/[^ 	`"':;,]*$||g
s|^-Wl,--rpath,_bUiLdLiNk__usr_pkg_lib_python2.6_config#\([ 	`"':;,]\)|-Wl,--rpath,/usr/pkg/lib/python2.6/config\1|g
s|^-Wl,--rpath,_bUiLdLiNk__usr_pkg_lib_python2.6_config#$|-Wl,--rpath,/usr/pkg/lib/python2.6/config|g
s|^-Wl,-rpath-link,_bUiLdLiNk__usr_pkg_lib_python2.6_config#\([ 	`"':;,]\)|-Wl,-rpath-link,/usr/pkg/lib/python2.6/config\1|g
s|^-Wl,-rpath-link,_bUiLdLiNk__usr_pkg_lib_python2.6_config#$|-Wl,-rpath-link,/usr/pkg/lib/python2.6/config|g
s|^-Wl,-rpath,_bUiLdLiNk__usr_pkg_lib_python2.6_config#\([ 	`"':;,]\)|-Wl,-rpath,/usr/pkg/lib/python2.6/config\1|g
s|^-Wl,-rpath,_bUiLdLiNk__usr_pkg_lib_python2.6_config#$|-Wl,-rpath,/usr/pkg/lib/python2.6/config|g
s|^-Wl,-R_bUiLdLiNk__usr_pkg_lib_python2.6_config#\([ 	`"':;,]\)|-Wl,-R/usr/pkg/lib/python2.6/config\1|g
s|^-Wl,-R_bUiLdLiNk__usr_pkg_lib_python2.6_config#$|-Wl,-R/usr/pkg/lib/python2.6/config|g
s|^-R_bUiLdLiNk__usr_pkg_lib_python2.6_config#\([ 	`"':;,]\)|-R/usr/pkg/lib/python2.6/config\1|g
s|^-R_bUiLdLiNk__usr_pkg_lib_python2.6_config#$|-R/usr/pkg/lib/python2.6/config|g
s|^-Wl,--rpath,_bUiLdLiNk__usr_pkg_lib_python2.6_config#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,--rpath,/usr/pkg/lib/python2.6/config\1|g
s|^-Wl,--rpath,_bUiLdLiNk__usr_pkg_lib_python2.6_config#\(/[^ 	`"':;,]*\)$|-Wl,--rpath,/usr/pkg/lib/python2.6/config\1|g
s|^-Wl,-rpath-link,_bUiLdLiNk__usr_pkg_lib_python2.6_config#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,-rpath-link,/usr/pkg/lib/python2.6/config\1|g
s|^-Wl,-rpath-link,_bUiLdLiNk__usr_pkg_lib_python2.6_config#\(/[^ 	`"':;,]*\)$|-Wl,-rpath-link,/usr/pkg/lib/python2.6/config\1|g
s|^-Wl,-rpath,_bUiLdLiNk__usr_pkg_lib_python2.6_config#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,-rpath,/usr/pkg/lib/python2.6/config\1|g
s|^-Wl,-rpath,_bUiLdLiNk__usr_pkg_lib_python2.6_config#\(/[^ 	`"':;,]*\)$|-Wl,-rpath,/usr/pkg/lib/python2.6/config\1|g
s|^-Wl,-R_bUiLdLiNk__usr_pkg_lib_python2.6_config#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,-R/usr/pkg/lib/python2.6/config\1|g
s|^-Wl,-R_bUiLdLiNk__usr_pkg_lib_python2.6_config#\(/[^ 	`"':;,]*\)$|-Wl,-R/usr/pkg/lib/python2.6/config\1|g
s|^-R_bUiLdLiNk__usr_pkg_lib_python2.6_config#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-R/usr/pkg/lib/python2.6/config\1|g
s|^-R_bUiLdLiNk__usr_pkg_lib_python2.6_config#\(/[^ 	`"':;,]*\)$|-R/usr/pkg/lib/python2.6/config\1|g
s|^-Wl,--rpath,_bUiLdLiNk__usr_pkg_lib#\([ 	`"':;,]\)|-Wl,--rpath,/usr/pkg/lib\1|g
s|^-Wl,--rpath,_bUiLdLiNk__usr_pkg_lib#$|-Wl,--rpath,/usr/pkg/lib|g
s|^-Wl,-rpath-link,_bUiLdLiNk__usr_pkg_lib#\([ 	`"':;,]\)|-Wl,-rpath-link,/usr/pkg/lib\1|g
s|^-Wl,-rpath-link,_bUiLdLiNk__usr_pkg_lib#$|-Wl,-rpath-link,/usr/pkg/lib|g
s|^-Wl,-rpath,_bUiLdLiNk__usr_pkg_lib#\([ 	`"':;,]\)|-Wl,-rpath,/usr/pkg/lib\1|g
s|^-Wl,-rpath,_bUiLdLiNk__usr_pkg_lib#$|-Wl,-rpath,/usr/pkg/lib|g
s|^-Wl,-R_bUiLdLiNk__usr_pkg_lib#\([ 	`"':;,]\)|-Wl,-R/usr/pkg/lib\1|g
s|^-Wl,-R_bUiLdLiNk__usr_pkg_lib#$|-Wl,-R/usr/pkg/lib|g
s|^-R_bUiLdLiNk__usr_pkg_lib#\([ 	`"':;,]\)|-R/usr/pkg/lib\1|g
s|^-R_bUiLdLiNk__usr_pkg_lib#$|-R/usr/pkg/lib|g
s|^-Wl,--rpath,_bUiLdLiNk__usr_pkg_lib#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,--rpath,/usr/pkg/lib\1|g
s|^-Wl,--rpath,_bUiLdLiNk__usr_pkg_lib#\(/[^ 	`"':;,]*\)$|-Wl,--rpath,/usr/pkg/lib\1|g
s|^-Wl,-rpath-link,_bUiLdLiNk__usr_pkg_lib#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,-rpath-link,/usr/pkg/lib\1|g
s|^-Wl,-rpath-link,_bUiLdLiNk__usr_pkg_lib#\(/[^ 	`"':;,]*\)$|-Wl,-rpath-link,/usr/pkg/lib\1|g
s|^-Wl,-rpath,_bUiLdLiNk__usr_pkg_lib#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,-rpath,/usr/pkg/lib\1|g
s|^-Wl,-rpath,_bUiLdLiNk__usr_pkg_lib#\(/[^ 	`"':;,]*\)$|-Wl,-rpath,/usr/pkg/lib\1|g
s|^-Wl,-R_bUiLdLiNk__usr_pkg_lib#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,-R/usr/pkg/lib\1|g
s|^-Wl,-R_bUiLdLiNk__usr_pkg_lib#\(/[^ 	`"':;,]*\)$|-Wl,-R/usr/pkg/lib\1|g
s|^-R_bUiLdLiNk__usr_pkg_lib#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-R/usr/pkg/lib\1|g
s|^-R_bUiLdLiNk__usr_pkg_lib#\(/[^ 	`"':;,]*\)$|-R/usr/pkg/lib\1|g
s|^-I_bUiLdLiNk__usr_include#\([ 	`"':;,]\)|-I/usr/include\1|g
s|^-I_bUiLdLiNk__usr_include#$|-I/usr/include|g
s|^-L_bUiLdLiNk__usr_include#\([ 	`"':;,]\)|-L/usr/include\1|g
s|^-L_bUiLdLiNk__usr_include#$|-L/usr/include|g
s|^-Wl,--rpath,_bUiLdLiNk__usr_include#\([ 	`"':;,]\)|-Wl,--rpath,/usr/include\1|g
s|^-Wl,--rpath,_bUiLdLiNk__usr_include#$|-Wl,--rpath,/usr/include|g
s|^-Wl,-rpath-link,_bUiLdLiNk__usr_include#\([ 	`"':;,]\)|-Wl,-rpath-link,/usr/include\1|g
s|^-Wl,-rpath-link,_bUiLdLiNk__usr_include#$|-Wl,-rpath-link,/usr/include|g
s|^-Wl,-rpath,_bUiLdLiNk__usr_include#\([ 	`"':;,]\)|-Wl,-rpath,/usr/include\1|g
s|^-Wl,-rpath,_bUiLdLiNk__usr_include#$|-Wl,-rpath,/usr/include|g
s|^-Wl,-R_bUiLdLiNk__usr_include#\([ 	`"':;,]\)|-Wl,-R/usr/include\1|g
s|^-Wl,-R_bUiLdLiNk__usr_include#$|-Wl,-R/usr/include|g
s|^-R_bUiLdLiNk__usr_include#\([ 	`"':;,]\)|-R/usr/include\1|g
s|^-R_bUiLdLiNk__usr_include#$|-R/usr/include|g
s|^_bUiLdLiNk__usr_include#\(/[^ 	`"':;,]*\.la[ 	`"':;,]\)|/usr/include\1|g
s|^_bUiLdLiNk__usr_include#\(/[^ 	`"':;,]*\.la\)$|/usr/include\1|g
s|^-I_bUiLdLiNk__usr_include#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-I/usr/include\1|g
s|^-I_bUiLdLiNk__usr_include#\(/[^ 	`"':;,]*\)$|-I/usr/include\1|g
s|^-L_bUiLdLiNk__usr_include#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-L/usr/include\1|g
s|^-L_bUiLdLiNk__usr_include#\(/[^ 	`"':;,]*\)$|-L/usr/include\1|g
s|^-Wl,--rpath,_bUiLdLiNk__usr_include#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,--rpath,/usr/include\1|g
s|^-Wl,--rpath,_bUiLdLiNk__usr_include#\(/[^ 	`"':;,]*\)$|-Wl,--rpath,/usr/include\1|g
s|^-Wl,-rpath-link,_bUiLdLiNk__usr_include#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,-rpath-link,/usr/include\1|g
s|^-Wl,-rpath-link,_bUiLdLiNk__usr_include#\(/[^ 	`"':;,]*\)$|-Wl,-rpath-link,/usr/include\1|g
s|^-Wl,-rpath,_bUiLdLiNk__usr_include#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,-rpath,/usr/include\1|g
s|^-Wl,-rpath,_bUiLdLiNk__usr_include#\(/[^ 	`"':;,]*\)$|-Wl,-rpath,/usr/include\1|g
s|^-Wl,-R_bUiLdLiNk__usr_include#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,-R/usr/include\1|g
s|^-Wl,-R_bUiLdLiNk__usr_include#\(/[^ 	`"':;,]*\)$|-Wl,-R/usr/include\1|g
s|^-R_bUiLdLiNk__usr_include#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-R/usr/include\1|g
s|^-R_bUiLdLiNk__usr_include#\(/[^ 	`"':;,]*\)$|-R/usr/include\1|g
s|^-I_bUiLdLiNk__usr_lib#\([ 	`"':;,]\)|-I/usr/lib\1|g
s|^-I_bUiLdLiNk__usr_lib#$|-I/usr/lib|g
s|^-L_bUiLdLiNk__usr_lib#\([ 	`"':;,]\)|-L/usr/lib\1|g
s|^-L_bUiLdLiNk__usr_lib#$|-L/usr/lib|g
s|^-Wl,--rpath,_bUiLdLiNk__usr_lib#\([ 	`"':;,]\)|-Wl,--rpath,/usr/lib\1|g
s|^-Wl,--rpath,_bUiLdLiNk__usr_lib#$|-Wl,--rpath,/usr/lib|g
s|^-Wl,-rpath-link,_bUiLdLiNk__usr_lib#\([ 	`"':;,]\)|-Wl,-rpath-link,/usr/lib\1|g
s|^-Wl,-rpath-link,_bUiLdLiNk__usr_lib#$|-Wl,-rpath-link,/usr/lib|g
s|^-Wl,-rpath,_bUiLdLiNk__usr_lib#\([ 	`"':;,]\)|-Wl,-rpath,/usr/lib\1|g
s|^-Wl,-rpath,_bUiLdLiNk__usr_lib#$|-Wl,-rpath,/usr/lib|g
s|^-Wl,-R_bUiLdLiNk__usr_lib#\([ 	`"':;,]\)|-Wl,-R/usr/lib\1|g
s|^-Wl,-R_bUiLdLiNk__usr_lib#$|-Wl,-R/usr/lib|g
s|^-R_bUiLdLiNk__usr_lib#\([ 	`"':;,]\)|-R/usr/lib\1|g
s|^-R_bUiLdLiNk__usr_lib#$|-R/usr/lib|g
s|^_bUiLdLiNk__usr_lib#\(/[^ 	`"':;,]*\.la[ 	`"':;,]\)|/usr/lib\1|g
s|^_bUiLdLiNk__usr_lib#\(/[^ 	`"':;,]*\.la\)$|/usr/lib\1|g
s|^-I_bUiLdLiNk__usr_lib#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-I/usr/lib\1|g
s|^-I_bUiLdLiNk__usr_lib#\(/[^ 	`"':;,]*\)$|-I/usr/lib\1|g
s|^-L_bUiLdLiNk__usr_lib#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-L/usr/lib\1|g
s|^-L_bUiLdLiNk__usr_lib#\(/[^ 	`"':;,]*\)$|-L/usr/lib\1|g
s|^-Wl,--rpath,_bUiLdLiNk__usr_lib#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,--rpath,/usr/lib\1|g
s|^-Wl,--rpath,_bUiLdLiNk__usr_lib#\(/[^ 	`"':;,]*\)$|-Wl,--rpath,/usr/lib\1|g
s|^-Wl,-rpath-link,_bUiLdLiNk__usr_lib#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,-rpath-link,/usr/lib\1|g
s|^-Wl,-rpath-link,_bUiLdLiNk__usr_lib#\(/[^ 	`"':;,]*\)$|-Wl,-rpath-link,/usr/lib\1|g
s|^-Wl,-rpath,_bUiLdLiNk__usr_lib#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,-rpath,/usr/lib\1|g
s|^-Wl,-rpath,_bUiLdLiNk__usr_lib#\(/[^ 	`"':;,]*\)$|-Wl,-rpath,/usr/lib\1|g
s|^-Wl,-R_bUiLdLiNk__usr_lib#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,-R/usr/lib\1|g
s|^-Wl,-R_bUiLdLiNk__usr_lib#\(/[^ 	`"':;,]*\)$|-Wl,-R/usr/lib\1|g
s|^-R_bUiLdLiNk__usr_lib#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-R/usr/lib\1|g
s|^-R_bUiLdLiNk__usr_lib#\(/[^ 	`"':;,]*\)$|-R/usr/lib\1|g
s|^-I_bUiLdLiNk__usr_pkg#\([ 	`"':;,]\)|-I/usr/pkg\1|g
s|^-I_bUiLdLiNk__usr_pkg#$|-I/usr/pkg|g
s|^-L_bUiLdLiNk__usr_pkg#\([ 	`"':;,]\)|-L/usr/pkg\1|g
s|^-L_bUiLdLiNk__usr_pkg#$|-L/usr/pkg|g
s|^-Wl,--rpath,_bUiLdLiNk__usr_pkg#\([ 	`"':;,]\)|-Wl,--rpath,/usr/pkg\1|g
s|^-Wl,--rpath,_bUiLdLiNk__usr_pkg#$|-Wl,--rpath,/usr/pkg|g
s|^-Wl,-rpath-link,_bUiLdLiNk__usr_pkg#\([ 	`"':;,]\)|-Wl,-rpath-link,/usr/pkg\1|g
s|^-Wl,-rpath-link,_bUiLdLiNk__usr_pkg#$|-Wl,-rpath-link,/usr/pkg|g
s|^-Wl,-rpath,_bUiLdLiNk__usr_pkg#\([ 	`"':;,]\)|-Wl,-rpath,/usr/pkg\1|g
s|^-Wl,-rpath,_bUiLdLiNk__usr_pkg#$|-Wl,-rpath,/usr/pkg|g
s|^-Wl,-R_bUiLdLiNk__usr_pkg#\([ 	`"':;,]\)|-Wl,-R/usr/pkg\1|g
s|^-Wl,-R_bUiLdLiNk__usr_pkg#$|-Wl,-R/usr/pkg|g
s|^-R_bUiLdLiNk__usr_pkg#\([ 	`"':;,]\)|-R/usr/pkg\1|g
s|^-R_bUiLdLiNk__usr_pkg#$|-R/usr/pkg|g
s|^_bUiLdLiNk__usr_pkg#\(/[^ 	`"':;,]*\.la[ 	`"':;,]\)|/usr/pkg\1|g
s|^_bUiLdLiNk__usr_pkg#\(/[^ 	`"':;,]*\.la\)$|/usr/pkg\1|g
s|^-I_bUiLdLiNk__usr_pkg#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-I/usr/pkg\1|g
s|^-I_bUiLdLiNk__usr_pkg#\(/[^ 	`"':;,]*\)$|-I/usr/pkg\1|g
s|^-L_bUiLdLiNk__usr_pkg#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-L/usr/pkg\1|g
s|^-L_bUiLdLiNk__usr_pkg#\(/[^ 	`"':;,]*\)$|-L/usr/pkg\1|g
s|^-Wl,--rpath,_bUiLdLiNk__usr_pkg#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,--rpath,/usr/pkg\1|g
s|^-Wl,--rpath,_bUiLdLiNk__usr_pkg#\(/[^ 	`"':;,]*\)$|-Wl,--rpath,/usr/pkg\1|g
s|^-Wl,-rpath-link,_bUiLdLiNk__usr_pkg#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,-rpath-link,/usr/pkg\1|g
s|^-Wl,-rpath-link,_bUiLdLiNk__usr_pkg#\(/[^ 	`"':;,]*\)$|-Wl,-rpath-link,/usr/pkg\1|g
s|^-Wl,-rpath,_bUiLdLiNk__usr_pkg#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,-rpath,/usr/pkg\1|g
s|^-Wl,-rpath,_bUiLdLiNk__usr_pkg#\(/[^ 	`"':;,]*\)$|-Wl,-rpath,/usr/pkg\1|g
s|^-Wl,-R_bUiLdLiNk__usr_pkg#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,-R/usr/pkg\1|g
s|^-Wl,-R_bUiLdLiNk__usr_pkg#\(/[^ 	`"':;,]*\)$|-Wl,-R/usr/pkg\1|g
s|^-R_bUiLdLiNk__usr_pkg#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-R/usr/pkg\1|g
s|^-R_bUiLdLiNk__usr_pkg#\(/[^ 	`"':;,]*\)$|-R/usr/pkg\1|g
s|^-I_bUiLdLiNk__usr_pkgsrc_wip_py-errorhandler_work#\([ 	`"':;,]\)|-I/usr/pkgsrc/wip/py-errorhandler/work\1|g
s|^-I_bUiLdLiNk__usr_pkgsrc_wip_py-errorhandler_work#$|-I/usr/pkgsrc/wip/py-errorhandler/work|g
s|^-L_bUiLdLiNk__usr_pkgsrc_wip_py-errorhandler_work#\([ 	`"':;,]\)|-L/usr/pkgsrc/wip/py-errorhandler/work\1|g
s|^-L_bUiLdLiNk__usr_pkgsrc_wip_py-errorhandler_work#$|-L/usr/pkgsrc/wip/py-errorhandler/work|g
s|^-Wl,--rpath,_bUiLdLiNk__usr_pkgsrc_wip_py-errorhandler_work#\([ 	`"':;,]\)|-Wl,--rpath,/usr/pkgsrc/wip/py-errorhandler/work\1|g
s|^-Wl,--rpath,_bUiLdLiNk__usr_pkgsrc_wip_py-errorhandler_work#$|-Wl,--rpath,/usr/pkgsrc/wip/py-errorhandler/work|g
s|^-Wl,-rpath-link,_bUiLdLiNk__usr_pkgsrc_wip_py-errorhandler_work#\([ 	`"':;,]\)|-Wl,-rpath-link,/usr/pkgsrc/wip/py-errorhandler/work\1|g
s|^-Wl,-rpath-link,_bUiLdLiNk__usr_pkgsrc_wip_py-errorhandler_work#$|-Wl,-rpath-link,/usr/pkgsrc/wip/py-errorhandler/work|g
s|^-Wl,-rpath,_bUiLdLiNk__usr_pkgsrc_wip_py-errorhandler_work#\([ 	`"':;,]\)|-Wl,-rpath,/usr/pkgsrc/wip/py-errorhandler/work\1|g
s|^-Wl,-rpath,_bUiLdLiNk__usr_pkgsrc_wip_py-errorhandler_work#$|-Wl,-rpath,/usr/pkgsrc/wip/py-errorhandler/work|g
s|^-Wl,-R_bUiLdLiNk__usr_pkgsrc_wip_py-errorhandler_work#\([ 	`"':;,]\)|-Wl,-R/usr/pkgsrc/wip/py-errorhandler/work\1|g
s|^-Wl,-R_bUiLdLiNk__usr_pkgsrc_wip_py-errorhandler_work#$|-Wl,-R/usr/pkgsrc/wip/py-errorhandler/work|g
s|^-R_bUiLdLiNk__usr_pkgsrc_wip_py-errorhandler_work#\([ 	`"':;,]\)|-R/usr/pkgsrc/wip/py-errorhandler/work\1|g
s|^-R_bUiLdLiNk__usr_pkgsrc_wip_py-errorhandler_work#$|-R/usr/pkgsrc/wip/py-errorhandler/work|g
s|^_bUiLdLiNk__usr_pkgsrc_wip_py-errorhandler_work#\(/[^ 	`"':;,]*\.la[ 	`"':;,]\)|/usr/pkgsrc/wip/py-errorhandler/work\1|g
s|^_bUiLdLiNk__usr_pkgsrc_wip_py-errorhandler_work#\(/[^ 	`"':;,]*\.la\)$|/usr/pkgsrc/wip/py-errorhandler/work\1|g
s|^-I_bUiLdLiNk__usr_pkgsrc_wip_py-errorhandler_work#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-I/usr/pkgsrc/wip/py-errorhandler/work\1|g
s|^-I_bUiLdLiNk__usr_pkgsrc_wip_py-errorhandler_work#\(/[^ 	`"':;,]*\)$|-I/usr/pkgsrc/wip/py-errorhandler/work\1|g
s|^-L_bUiLdLiNk__usr_pkgsrc_wip_py-errorhandler_work#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-L/usr/pkgsrc/wip/py-errorhandler/work\1|g
s|^-L_bUiLdLiNk__usr_pkgsrc_wip_py-errorhandler_work#\(/[^ 	`"':;,]*\)$|-L/usr/pkgsrc/wip/py-errorhandler/work\1|g
s|^-Wl,--rpath,_bUiLdLiNk__usr_pkgsrc_wip_py-errorhandler_work#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,--rpath,/usr/pkgsrc/wip/py-errorhandler/work\1|g
s|^-Wl,--rpath,_bUiLdLiNk__usr_pkgsrc_wip_py-errorhandler_work#\(/[^ 	`"':;,]*\)$|-Wl,--rpath,/usr/pkgsrc/wip/py-errorhandler/work\1|g
s|^-Wl,-rpath-link,_bUiLdLiNk__usr_pkgsrc_wip_py-errorhandler_work#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,-rpath-link,/usr/pkgsrc/wip/py-errorhandler/work\1|g
s|^-Wl,-rpath-link,_bUiLdLiNk__usr_pkgsrc_wip_py-errorhandler_work#\(/[^ 	`"':;,]*\)$|-Wl,-rpath-link,/usr/pkgsrc/wip/py-errorhandler/work\1|g
s|^-Wl,-rpath,_bUiLdLiNk__usr_pkgsrc_wip_py-errorhandler_work#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,-rpath,/usr/pkgsrc/wip/py-errorhandler/work\1|g
s|^-Wl,-rpath,_bUiLdLiNk__usr_pkgsrc_wip_py-errorhandler_work#\(/[^ 	`"':;,]*\)$|-Wl,-rpath,/usr/pkgsrc/wip/py-errorhandler/work\1|g
s|^-Wl,-R_bUiLdLiNk__usr_pkgsrc_wip_py-errorhandler_work#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,-R/usr/pkgsrc/wip/py-errorhandler/work\1|g
s|^-Wl,-R_bUiLdLiNk__usr_pkgsrc_wip_py-errorhandler_work#\(/[^ 	`"':;,]*\)$|-Wl,-R/usr/pkgsrc/wip/py-errorhandler/work\1|g
s|^-R_bUiLdLiNk__usr_pkgsrc_wip_py-errorhandler_work#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-R/usr/pkgsrc/wip/py-errorhandler/work\1|g
s|^-R_bUiLdLiNk__usr_pkgsrc_wip_py-errorhandler_work#\(/[^ 	`"':;,]*\)$|-R/usr/pkgsrc/wip/py-errorhandler/work\1|g
s|^-I_bUiLdLiNk__usr_pkgsrc_wip_py-errorhandler_work_.buildlink#\([ 	`"':;,]\)|-I/usr/pkgsrc/wip/py-errorhandler/work/.buildlink\1|g
s|^-I_bUiLdLiNk__usr_pkgsrc_wip_py-errorhandler_work_.buildlink#$|-I/usr/pkgsrc/wip/py-errorhandler/work/.buildlink|g
s|^-L_bUiLdLiNk__usr_pkgsrc_wip_py-errorhandler_work_.buildlink#\([ 	`"':;,]\)|-L/usr/pkgsrc/wip/py-errorhandler/work/.buildlink\1|g
s|^-L_bUiLdLiNk__usr_pkgsrc_wip_py-errorhandler_work_.buildlink#$|-L/usr/pkgsrc/wip/py-errorhandler/work/.buildlink|g
s|^-Wl,--rpath,_bUiLdLiNk__usr_pkgsrc_wip_py-errorhandler_work_.buildlink#\([ 	`"':;,]\)|-Wl,--rpath,/usr/pkgsrc/wip/py-errorhandler/work/.buildlink\1|g
s|^-Wl,--rpath,_bUiLdLiNk__usr_pkgsrc_wip_py-errorhandler_work_.buildlink#$|-Wl,--rpath,/usr/pkgsrc/wip/py-errorhandler/work/.buildlink|g
s|^-Wl,-rpath-link,_bUiLdLiNk__usr_pkgsrc_wip_py-errorhandler_work_.buildlink#\([ 	`"':;,]\)|-Wl,-rpath-link,/usr/pkgsrc/wip/py-errorhandler/work/.buildlink\1|g
s|^-Wl,-rpath-link,_bUiLdLiNk__usr_pkgsrc_wip_py-errorhandler_work_.buildlink#$|-Wl,-rpath-link,/usr/pkgsrc/wip/py-errorhandler/work/.buildlink|g
s|^-Wl,-rpath,_bUiLdLiNk__usr_pkgsrc_wip_py-errorhandler_work_.buildlink#\([ 	`"':;,]\)|-Wl,-rpath,/usr/pkgsrc/wip/py-errorhandler/work/.buildlink\1|g
s|^-Wl,-rpath,_bUiLdLiNk__usr_pkgsrc_wip_py-errorhandler_work_.buildlink#$|-Wl,-rpath,/usr/pkgsrc/wip/py-errorhandler/work/.buildlink|g
s|^-Wl,-R_bUiLdLiNk__usr_pkgsrc_wip_py-errorhandler_work_.buildlink#\([ 	`"':;,]\)|-Wl,-R/usr/pkgsrc/wip/py-errorhandler/work/.buildlink\1|g
s|^-Wl,-R_bUiLdLiNk__usr_pkgsrc_wip_py-errorhandler_work_.buildlink#$|-Wl,-R/usr/pkgsrc/wip/py-errorhandler/work/.buildlink|g
s|^-R_bUiLdLiNk__usr_pkgsrc_wip_py-errorhandler_work_.buildlink#\([ 	`"':;,]\)|-R/usr/pkgsrc/wip/py-errorhandler/work/.buildlink\1|g
s|^-R_bUiLdLiNk__usr_pkgsrc_wip_py-errorhandler_work_.buildlink#$|-R/usr/pkgsrc/wip/py-errorhandler/work/.buildlink|g
s|^_bUiLdLiNk__usr_pkgsrc_wip_py-errorhandler_work_.buildlink#\(/[^ 	`"':;,]*\.la[ 	`"':;,]\)|/usr/pkgsrc/wip/py-errorhandler/work/.buildlink\1|g
s|^_bUiLdLiNk__usr_pkgsrc_wip_py-errorhandler_work_.buildlink#\(/[^ 	`"':;,]*\.la\)$|/usr/pkgsrc/wip/py-errorhandler/work/.buildlink\1|g
s|^-I_bUiLdLiNk__usr_pkgsrc_wip_py-errorhandler_work_.buildlink#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-I/usr/pkgsrc/wip/py-errorhandler/work/.buildlink\1|g
s|^-I_bUiLdLiNk__usr_pkgsrc_wip_py-errorhandler_work_.buildlink#\(/[^ 	`"':;,]*\)$|-I/usr/pkgsrc/wip/py-errorhandler/work/.buildlink\1|g
s|^-L_bUiLdLiNk__usr_pkgsrc_wip_py-errorhandler_work_.buildlink#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-L/usr/pkgsrc/wip/py-errorhandler/work/.buildlink\1|g
s|^-L_bUiLdLiNk__usr_pkgsrc_wip_py-errorhandler_work_.buildlink#\(/[^ 	`"':;,]*\)$|-L/usr/pkgsrc/wip/py-errorhandler/work/.buildlink\1|g
s|^-Wl,--rpath,_bUiLdLiNk__usr_pkgsrc_wip_py-errorhandler_work_.buildlink#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,--rpath,/usr/pkgsrc/wip/py-errorhandler/work/.buildlink\1|g
s|^-Wl,--rpath,_bUiLdLiNk__usr_pkgsrc_wip_py-errorhandler_work_.buildlink#\(/[^ 	`"':;,]*\)$|-Wl,--rpath,/usr/pkgsrc/wip/py-errorhandler/work/.buildlink\1|g
s|^-Wl,-rpath-link,_bUiLdLiNk__usr_pkgsrc_wip_py-errorhandler_work_.buildlink#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,-rpath-link,/usr/pkgsrc/wip/py-errorhandler/work/.buildlink\1|g
s|^-Wl,-rpath-link,_bUiLdLiNk__usr_pkgsrc_wip_py-errorhandler_work_.buildlink#\(/[^ 	`"':;,]*\)$|-Wl,-rpath-link,/usr/pkgsrc/wip/py-errorhandler/work/.buildlink\1|g
s|^-Wl,-rpath,_bUiLdLiNk__usr_pkgsrc_wip_py-errorhandler_work_.buildlink#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,-rpath,/usr/pkgsrc/wip/py-errorhandler/work/.buildlink\1|g
s|^-Wl,-rpath,_bUiLdLiNk__usr_pkgsrc_wip_py-errorhandler_work_.buildlink#\(/[^ 	`"':;,]*\)$|-Wl,-rpath,/usr/pkgsrc/wip/py-errorhandler/work/.buildlink\1|g
s|^-Wl,-R_bUiLdLiNk__usr_pkgsrc_wip_py-errorhandler_work_.buildlink#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,-R/usr/pkgsrc/wip/py-errorhandler/work/.buildlink\1|g
s|^-Wl,-R_bUiLdLiNk__usr_pkgsrc_wip_py-errorhandler_work_.buildlink#\(/[^ 	`"':;,]*\)$|-Wl,-R/usr/pkgsrc/wip/py-errorhandler/work/.buildlink\1|g
s|^-R_bUiLdLiNk__usr_pkgsrc_wip_py-errorhandler_work_.buildlink#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-R/usr/pkgsrc/wip/py-errorhandler/work/.buildlink\1|g
s|^-R_bUiLdLiNk__usr_pkgsrc_wip_py-errorhandler_work_.buildlink#\(/[^ 	`"':;,]*\)$|-R/usr/pkgsrc/wip/py-errorhandler/work/.buildlink\1|g
