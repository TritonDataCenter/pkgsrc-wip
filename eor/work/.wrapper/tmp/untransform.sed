s|\([ 	`"':;,]\)\(/[^ 	`"':;,]*\)/\.\([ 	`"':;,]\)|\1\2\3|g
s|\([ 	`"':;,]\)\(/[^ 	`"':;,]*\)/\.\([ 	`"':;,]\)|\1\2\3|g
s|\([ 	`"':;,]\)\(/[^ 	`"':;,]*\)/\.$|\1\2|g
s|^\(/[^ 	`"':;,]*\)/\.\([ 	`"':;,]\)|\1|g
s|^\(/[^ 	`"':;,]*\)/\.$|\1|g
s|\([ 	`"':;,]\)-I\(/[^ 	`"':;,]*\)/\.\([ 	`"':;,]\)|\1-I\2\3|g
s|\([ 	`"':;,]\)-I\(/[^ 	`"':;,]*\)/\.\([ 	`"':;,]\)|\1-I\2\3|g
s|\([ 	`"':;,]\)-I\(/[^ 	`"':;,]*\)/\.$|\1-I\2|g
s|^-I\(/[^ 	`"':;,]*\)/\.\([ 	`"':;,]\)|-I\1|g
s|^-I\(/[^ 	`"':;,]*\)/\.$|-I\1|g
s|\([ 	`"':;,]\)-L\(/[^ 	`"':;,]*\)/\.\([ 	`"':;,]\)|\1-L\2\3|g
s|\([ 	`"':;,]\)-L\(/[^ 	`"':;,]*\)/\.\([ 	`"':;,]\)|\1-L\2\3|g
s|\([ 	`"':;,]\)-L\(/[^ 	`"':;,]*\)/\.$|\1-L\2|g
s|^-L\(/[^ 	`"':;,]*\)/\.\([ 	`"':;,]\)|-L\1|g
s|^-L\(/[^ 	`"':;,]*\)/\.$|-L\1|g
s|\([ 	`"':;,]\)-Wl,--rpath,\(/[^ 	`"':;,]*\)/\.\([ 	`"':;,]\)|\1-Wl,--rpath,\2\3|g
s|\([ 	`"':;,]\)-Wl,--rpath,\(/[^ 	`"':;,]*\)/\.\([ 	`"':;,]\)|\1-Wl,--rpath,\2\3|g
s|\([ 	`"':;,]\)-Wl,--rpath,\(/[^ 	`"':;,]*\)/\.$|\1-Wl,--rpath,\2|g
s|^-Wl,--rpath,\(/[^ 	`"':;,]*\)/\.\([ 	`"':;,]\)|-Wl,--rpath,\1|g
s|^-Wl,--rpath,\(/[^ 	`"':;,]*\)/\.$|-Wl,--rpath,\1|g
s|\([ 	`"':;,]\)-Wl,-rpath-link,\(/[^ 	`"':;,]*\)/\.\([ 	`"':;,]\)|\1-Wl,-rpath-link,\2\3|g
s|\([ 	`"':;,]\)-Wl,-rpath-link,\(/[^ 	`"':;,]*\)/\.\([ 	`"':;,]\)|\1-Wl,-rpath-link,\2\3|g
s|\([ 	`"':;,]\)-Wl,-rpath-link,\(/[^ 	`"':;,]*\)/\.$|\1-Wl,-rpath-link,\2|g
s|^-Wl,-rpath-link,\(/[^ 	`"':;,]*\)/\.\([ 	`"':;,]\)|-Wl,-rpath-link,\1|g
s|^-Wl,-rpath-link,\(/[^ 	`"':;,]*\)/\.$|-Wl,-rpath-link,\1|g
s|\([ 	`"':;,]\)-Wl,-rpath,\(/[^ 	`"':;,]*\)/\.\([ 	`"':;,]\)|\1-Wl,-rpath,\2\3|g
s|\([ 	`"':;,]\)-Wl,-rpath,\(/[^ 	`"':;,]*\)/\.\([ 	`"':;,]\)|\1-Wl,-rpath,\2\3|g
s|\([ 	`"':;,]\)-Wl,-rpath,\(/[^ 	`"':;,]*\)/\.$|\1-Wl,-rpath,\2|g
s|^-Wl,-rpath,\(/[^ 	`"':;,]*\)/\.\([ 	`"':;,]\)|-Wl,-rpath,\1|g
s|^-Wl,-rpath,\(/[^ 	`"':;,]*\)/\.$|-Wl,-rpath,\1|g
s|\([ 	`"':;,]\)-Wl,-R\(/[^ 	`"':;,]*\)/\.\([ 	`"':;,]\)|\1-Wl,-R\2\3|g
s|\([ 	`"':;,]\)-Wl,-R\(/[^ 	`"':;,]*\)/\.\([ 	`"':;,]\)|\1-Wl,-R\2\3|g
s|\([ 	`"':;,]\)-Wl,-R\(/[^ 	`"':;,]*\)/\.$|\1-Wl,-R\2|g
s|^-Wl,-R\(/[^ 	`"':;,]*\)/\.\([ 	`"':;,]\)|-Wl,-R\1|g
s|^-Wl,-R\(/[^ 	`"':;,]*\)/\.$|-Wl,-R\1|g
s|\([ 	`"':;,]\)-R\(/[^ 	`"':;,]*\)/\.\([ 	`"':;,]\)|\1-R\2\3|g
s|\([ 	`"':;,]\)-R\(/[^ 	`"':;,]*\)/\.\([ 	`"':;,]\)|\1-R\2\3|g
s|\([ 	`"':;,]\)-R\(/[^ 	`"':;,]*\)/\.$|\1-R\2|g
s|^-R\(/[^ 	`"':;,]*\)/\.\([ 	`"':;,]\)|-R\1|g
s|^-R\(/[^ 	`"':;,]*\)/\.$|-R\1|g
s|\([ 	`"':;,]\)-I/usr/pkgsrc/wip/eor/work/.buildlink\([ 	`"':;,]\)|\1-I_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.buildlink#\2|g
s|\([ 	`"':;,]\)-I/usr/pkgsrc/wip/eor/work/.buildlink\([ 	`"':;,]\)|\1-I_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.buildlink#\2|g
s|\([ 	`"':;,]\)-I/usr/pkgsrc/wip/eor/work/.buildlink$|\1-I_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.buildlink#|g
s|^-I/usr/pkgsrc/wip/eor/work/.buildlink\([ 	`"':;,]\)|-I_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.buildlink#\1|g
s|^-I/usr/pkgsrc/wip/eor/work/.buildlink$|-I_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.buildlink#|g
s|\([ 	`"':;,]\)-L/usr/pkgsrc/wip/eor/work/.buildlink\([ 	`"':;,]\)|\1-L_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.buildlink#\2|g
s|\([ 	`"':;,]\)-L/usr/pkgsrc/wip/eor/work/.buildlink\([ 	`"':;,]\)|\1-L_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.buildlink#\2|g
s|\([ 	`"':;,]\)-L/usr/pkgsrc/wip/eor/work/.buildlink$|\1-L_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.buildlink#|g
s|^-L/usr/pkgsrc/wip/eor/work/.buildlink\([ 	`"':;,]\)|-L_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.buildlink#\1|g
s|^-L/usr/pkgsrc/wip/eor/work/.buildlink$|-L_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.buildlink#|g
s|\([ 	`"':;,]\)-Wl,--rpath,/usr/pkgsrc/wip/eor/work/.buildlink\([ 	`"':;,]\)|\1-Wl,--rpath,_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.buildlink#\2|g
s|\([ 	`"':;,]\)-Wl,--rpath,/usr/pkgsrc/wip/eor/work/.buildlink\([ 	`"':;,]\)|\1-Wl,--rpath,_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.buildlink#\2|g
s|\([ 	`"':;,]\)-Wl,--rpath,/usr/pkgsrc/wip/eor/work/.buildlink$|\1-Wl,--rpath,_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.buildlink#|g
s|^-Wl,--rpath,/usr/pkgsrc/wip/eor/work/.buildlink\([ 	`"':;,]\)|-Wl,--rpath,_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.buildlink#\1|g
s|^-Wl,--rpath,/usr/pkgsrc/wip/eor/work/.buildlink$|-Wl,--rpath,_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.buildlink#|g
s|\([ 	`"':;,]\)-Wl,-rpath-link,/usr/pkgsrc/wip/eor/work/.buildlink\([ 	`"':;,]\)|\1-Wl,-rpath-link,_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.buildlink#\2|g
s|\([ 	`"':;,]\)-Wl,-rpath-link,/usr/pkgsrc/wip/eor/work/.buildlink\([ 	`"':;,]\)|\1-Wl,-rpath-link,_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.buildlink#\2|g
s|\([ 	`"':;,]\)-Wl,-rpath-link,/usr/pkgsrc/wip/eor/work/.buildlink$|\1-Wl,-rpath-link,_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.buildlink#|g
s|^-Wl,-rpath-link,/usr/pkgsrc/wip/eor/work/.buildlink\([ 	`"':;,]\)|-Wl,-rpath-link,_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.buildlink#\1|g
s|^-Wl,-rpath-link,/usr/pkgsrc/wip/eor/work/.buildlink$|-Wl,-rpath-link,_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.buildlink#|g
s|\([ 	`"':;,]\)-Wl,-rpath,/usr/pkgsrc/wip/eor/work/.buildlink\([ 	`"':;,]\)|\1-Wl,-rpath,_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.buildlink#\2|g
s|\([ 	`"':;,]\)-Wl,-rpath,/usr/pkgsrc/wip/eor/work/.buildlink\([ 	`"':;,]\)|\1-Wl,-rpath,_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.buildlink#\2|g
s|\([ 	`"':;,]\)-Wl,-rpath,/usr/pkgsrc/wip/eor/work/.buildlink$|\1-Wl,-rpath,_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.buildlink#|g
s|^-Wl,-rpath,/usr/pkgsrc/wip/eor/work/.buildlink\([ 	`"':;,]\)|-Wl,-rpath,_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.buildlink#\1|g
s|^-Wl,-rpath,/usr/pkgsrc/wip/eor/work/.buildlink$|-Wl,-rpath,_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.buildlink#|g
s|\([ 	`"':;,]\)-Wl,-R/usr/pkgsrc/wip/eor/work/.buildlink\([ 	`"':;,]\)|\1-Wl,-R_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.buildlink#\2|g
s|\([ 	`"':;,]\)-Wl,-R/usr/pkgsrc/wip/eor/work/.buildlink\([ 	`"':;,]\)|\1-Wl,-R_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.buildlink#\2|g
s|\([ 	`"':;,]\)-Wl,-R/usr/pkgsrc/wip/eor/work/.buildlink$|\1-Wl,-R_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.buildlink#|g
s|^-Wl,-R/usr/pkgsrc/wip/eor/work/.buildlink\([ 	`"':;,]\)|-Wl,-R_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.buildlink#\1|g
s|^-Wl,-R/usr/pkgsrc/wip/eor/work/.buildlink$|-Wl,-R_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.buildlink#|g
s|\([ 	`"':;,]\)-R/usr/pkgsrc/wip/eor/work/.buildlink\([ 	`"':;,]\)|\1-R_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.buildlink#\2|g
s|\([ 	`"':;,]\)-R/usr/pkgsrc/wip/eor/work/.buildlink\([ 	`"':;,]\)|\1-R_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.buildlink#\2|g
s|\([ 	`"':;,]\)-R/usr/pkgsrc/wip/eor/work/.buildlink$|\1-R_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.buildlink#|g
s|^-R/usr/pkgsrc/wip/eor/work/.buildlink\([ 	`"':;,]\)|-R_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.buildlink#\1|g
s|^-R/usr/pkgsrc/wip/eor/work/.buildlink$|-R_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.buildlink#|g
s|\([ 	`"':;,]\)/usr/pkgsrc/wip/eor/work/.buildlink\(/[^ 	`"':;,]*\.la[ 	`"':;,]\)|\1_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.buildlink#\2|g
s|\([ 	`"':;,]\)/usr/pkgsrc/wip/eor/work/.buildlink\(/[^ 	`"':;,]*\.la[ 	`"':;,]\)|\1_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.buildlink#\2|g
s|\([ 	`"':;,]\)/usr/pkgsrc/wip/eor/work/.buildlink\(/[^ 	`"':;,]*\.la\)$|\1_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.buildlink#\2|g
s|^/usr/pkgsrc/wip/eor/work/.buildlink\(/[^ 	`"':;,]*\.la[ 	`"':;,]\)|_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.buildlink#\1|g
s|^/usr/pkgsrc/wip/eor/work/.buildlink\(/[^ 	`"':;,]*\.la\)$|_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.buildlink#\1|g
s|\([ 	`"':;,]\)-I/usr/pkgsrc/wip/eor/work/.buildlink\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-I_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.buildlink#\2\3|g
s|\([ 	`"':;,]\)-I/usr/pkgsrc/wip/eor/work/.buildlink\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-I_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.buildlink#\2\3|g
s|\([ 	`"':;,]\)-I/usr/pkgsrc/wip/eor/work/.buildlink\(/[^ 	`"':;,]*\)$|\1-I_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.buildlink#\2|g
s|^-I/usr/pkgsrc/wip/eor/work/.buildlink\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-I_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.buildlink#\1|g
s|^-I/usr/pkgsrc/wip/eor/work/.buildlink\(/[^ 	`"':;,]*\)$|-I_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.buildlink#\1|g
s|\([ 	`"':;,]\)-L/usr/pkgsrc/wip/eor/work/.buildlink\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-L_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.buildlink#\2\3|g
s|\([ 	`"':;,]\)-L/usr/pkgsrc/wip/eor/work/.buildlink\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-L_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.buildlink#\2\3|g
s|\([ 	`"':;,]\)-L/usr/pkgsrc/wip/eor/work/.buildlink\(/[^ 	`"':;,]*\)$|\1-L_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.buildlink#\2|g
s|^-L/usr/pkgsrc/wip/eor/work/.buildlink\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-L_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.buildlink#\1|g
s|^-L/usr/pkgsrc/wip/eor/work/.buildlink\(/[^ 	`"':;,]*\)$|-L_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.buildlink#\1|g
s|\([ 	`"':;,]\)-Wl,--rpath,/usr/pkgsrc/wip/eor/work/.buildlink\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,--rpath,_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.buildlink#\2\3|g
s|\([ 	`"':;,]\)-Wl,--rpath,/usr/pkgsrc/wip/eor/work/.buildlink\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,--rpath,_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.buildlink#\2\3|g
s|\([ 	`"':;,]\)-Wl,--rpath,/usr/pkgsrc/wip/eor/work/.buildlink\(/[^ 	`"':;,]*\)$|\1-Wl,--rpath,_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.buildlink#\2|g
s|^-Wl,--rpath,/usr/pkgsrc/wip/eor/work/.buildlink\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,--rpath,_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.buildlink#\1|g
s|^-Wl,--rpath,/usr/pkgsrc/wip/eor/work/.buildlink\(/[^ 	`"':;,]*\)$|-Wl,--rpath,_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.buildlink#\1|g
s|\([ 	`"':;,]\)-Wl,-rpath-link,/usr/pkgsrc/wip/eor/work/.buildlink\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,-rpath-link,_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.buildlink#\2\3|g
s|\([ 	`"':;,]\)-Wl,-rpath-link,/usr/pkgsrc/wip/eor/work/.buildlink\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,-rpath-link,_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.buildlink#\2\3|g
s|\([ 	`"':;,]\)-Wl,-rpath-link,/usr/pkgsrc/wip/eor/work/.buildlink\(/[^ 	`"':;,]*\)$|\1-Wl,-rpath-link,_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.buildlink#\2|g
s|^-Wl,-rpath-link,/usr/pkgsrc/wip/eor/work/.buildlink\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,-rpath-link,_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.buildlink#\1|g
s|^-Wl,-rpath-link,/usr/pkgsrc/wip/eor/work/.buildlink\(/[^ 	`"':;,]*\)$|-Wl,-rpath-link,_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.buildlink#\1|g
s|\([ 	`"':;,]\)-Wl,-rpath,/usr/pkgsrc/wip/eor/work/.buildlink\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,-rpath,_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.buildlink#\2\3|g
s|\([ 	`"':;,]\)-Wl,-rpath,/usr/pkgsrc/wip/eor/work/.buildlink\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,-rpath,_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.buildlink#\2\3|g
s|\([ 	`"':;,]\)-Wl,-rpath,/usr/pkgsrc/wip/eor/work/.buildlink\(/[^ 	`"':;,]*\)$|\1-Wl,-rpath,_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.buildlink#\2|g
s|^-Wl,-rpath,/usr/pkgsrc/wip/eor/work/.buildlink\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,-rpath,_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.buildlink#\1|g
s|^-Wl,-rpath,/usr/pkgsrc/wip/eor/work/.buildlink\(/[^ 	`"':;,]*\)$|-Wl,-rpath,_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.buildlink#\1|g
s|\([ 	`"':;,]\)-Wl,-R/usr/pkgsrc/wip/eor/work/.buildlink\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,-R_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.buildlink#\2\3|g
s|\([ 	`"':;,]\)-Wl,-R/usr/pkgsrc/wip/eor/work/.buildlink\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,-R_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.buildlink#\2\3|g
s|\([ 	`"':;,]\)-Wl,-R/usr/pkgsrc/wip/eor/work/.buildlink\(/[^ 	`"':;,]*\)$|\1-Wl,-R_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.buildlink#\2|g
s|^-Wl,-R/usr/pkgsrc/wip/eor/work/.buildlink\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,-R_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.buildlink#\1|g
s|^-Wl,-R/usr/pkgsrc/wip/eor/work/.buildlink\(/[^ 	`"':;,]*\)$|-Wl,-R_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.buildlink#\1|g
s|\([ 	`"':;,]\)-R/usr/pkgsrc/wip/eor/work/.buildlink\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-R_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.buildlink#\2\3|g
s|\([ 	`"':;,]\)-R/usr/pkgsrc/wip/eor/work/.buildlink\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-R_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.buildlink#\2\3|g
s|\([ 	`"':;,]\)-R/usr/pkgsrc/wip/eor/work/.buildlink\(/[^ 	`"':;,]*\)$|\1-R_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.buildlink#\2|g
s|^-R/usr/pkgsrc/wip/eor/work/.buildlink\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-R_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.buildlink#\1|g
s|^-R/usr/pkgsrc/wip/eor/work/.buildlink\(/[^ 	`"':;,]*\)$|-R_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.buildlink#\1|g
s|\([ 	`"':;,]\)-I/usr/pkgsrc/wip/eor/work/.x11-buildlink\([ 	`"':;,]\)|\1-I_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.x11-buildlink#\2|g
s|\([ 	`"':;,]\)-I/usr/pkgsrc/wip/eor/work/.x11-buildlink\([ 	`"':;,]\)|\1-I_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.x11-buildlink#\2|g
s|\([ 	`"':;,]\)-I/usr/pkgsrc/wip/eor/work/.x11-buildlink$|\1-I_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.x11-buildlink#|g
s|^-I/usr/pkgsrc/wip/eor/work/.x11-buildlink\([ 	`"':;,]\)|-I_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.x11-buildlink#\1|g
s|^-I/usr/pkgsrc/wip/eor/work/.x11-buildlink$|-I_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.x11-buildlink#|g
s|\([ 	`"':;,]\)-L/usr/pkgsrc/wip/eor/work/.x11-buildlink\([ 	`"':;,]\)|\1-L_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.x11-buildlink#\2|g
s|\([ 	`"':;,]\)-L/usr/pkgsrc/wip/eor/work/.x11-buildlink\([ 	`"':;,]\)|\1-L_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.x11-buildlink#\2|g
s|\([ 	`"':;,]\)-L/usr/pkgsrc/wip/eor/work/.x11-buildlink$|\1-L_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.x11-buildlink#|g
s|^-L/usr/pkgsrc/wip/eor/work/.x11-buildlink\([ 	`"':;,]\)|-L_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.x11-buildlink#\1|g
s|^-L/usr/pkgsrc/wip/eor/work/.x11-buildlink$|-L_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.x11-buildlink#|g
s|\([ 	`"':;,]\)-Wl,--rpath,/usr/pkgsrc/wip/eor/work/.x11-buildlink\([ 	`"':;,]\)|\1-Wl,--rpath,_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.x11-buildlink#\2|g
s|\([ 	`"':;,]\)-Wl,--rpath,/usr/pkgsrc/wip/eor/work/.x11-buildlink\([ 	`"':;,]\)|\1-Wl,--rpath,_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.x11-buildlink#\2|g
s|\([ 	`"':;,]\)-Wl,--rpath,/usr/pkgsrc/wip/eor/work/.x11-buildlink$|\1-Wl,--rpath,_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.x11-buildlink#|g
s|^-Wl,--rpath,/usr/pkgsrc/wip/eor/work/.x11-buildlink\([ 	`"':;,]\)|-Wl,--rpath,_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.x11-buildlink#\1|g
s|^-Wl,--rpath,/usr/pkgsrc/wip/eor/work/.x11-buildlink$|-Wl,--rpath,_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.x11-buildlink#|g
s|\([ 	`"':;,]\)-Wl,-rpath-link,/usr/pkgsrc/wip/eor/work/.x11-buildlink\([ 	`"':;,]\)|\1-Wl,-rpath-link,_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.x11-buildlink#\2|g
s|\([ 	`"':;,]\)-Wl,-rpath-link,/usr/pkgsrc/wip/eor/work/.x11-buildlink\([ 	`"':;,]\)|\1-Wl,-rpath-link,_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.x11-buildlink#\2|g
s|\([ 	`"':;,]\)-Wl,-rpath-link,/usr/pkgsrc/wip/eor/work/.x11-buildlink$|\1-Wl,-rpath-link,_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.x11-buildlink#|g
s|^-Wl,-rpath-link,/usr/pkgsrc/wip/eor/work/.x11-buildlink\([ 	`"':;,]\)|-Wl,-rpath-link,_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.x11-buildlink#\1|g
s|^-Wl,-rpath-link,/usr/pkgsrc/wip/eor/work/.x11-buildlink$|-Wl,-rpath-link,_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.x11-buildlink#|g
s|\([ 	`"':;,]\)-Wl,-rpath,/usr/pkgsrc/wip/eor/work/.x11-buildlink\([ 	`"':;,]\)|\1-Wl,-rpath,_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.x11-buildlink#\2|g
s|\([ 	`"':;,]\)-Wl,-rpath,/usr/pkgsrc/wip/eor/work/.x11-buildlink\([ 	`"':;,]\)|\1-Wl,-rpath,_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.x11-buildlink#\2|g
s|\([ 	`"':;,]\)-Wl,-rpath,/usr/pkgsrc/wip/eor/work/.x11-buildlink$|\1-Wl,-rpath,_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.x11-buildlink#|g
s|^-Wl,-rpath,/usr/pkgsrc/wip/eor/work/.x11-buildlink\([ 	`"':;,]\)|-Wl,-rpath,_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.x11-buildlink#\1|g
s|^-Wl,-rpath,/usr/pkgsrc/wip/eor/work/.x11-buildlink$|-Wl,-rpath,_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.x11-buildlink#|g
s|\([ 	`"':;,]\)-Wl,-R/usr/pkgsrc/wip/eor/work/.x11-buildlink\([ 	`"':;,]\)|\1-Wl,-R_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.x11-buildlink#\2|g
s|\([ 	`"':;,]\)-Wl,-R/usr/pkgsrc/wip/eor/work/.x11-buildlink\([ 	`"':;,]\)|\1-Wl,-R_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.x11-buildlink#\2|g
s|\([ 	`"':;,]\)-Wl,-R/usr/pkgsrc/wip/eor/work/.x11-buildlink$|\1-Wl,-R_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.x11-buildlink#|g
s|^-Wl,-R/usr/pkgsrc/wip/eor/work/.x11-buildlink\([ 	`"':;,]\)|-Wl,-R_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.x11-buildlink#\1|g
s|^-Wl,-R/usr/pkgsrc/wip/eor/work/.x11-buildlink$|-Wl,-R_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.x11-buildlink#|g
s|\([ 	`"':;,]\)-R/usr/pkgsrc/wip/eor/work/.x11-buildlink\([ 	`"':;,]\)|\1-R_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.x11-buildlink#\2|g
s|\([ 	`"':;,]\)-R/usr/pkgsrc/wip/eor/work/.x11-buildlink\([ 	`"':;,]\)|\1-R_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.x11-buildlink#\2|g
s|\([ 	`"':;,]\)-R/usr/pkgsrc/wip/eor/work/.x11-buildlink$|\1-R_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.x11-buildlink#|g
s|^-R/usr/pkgsrc/wip/eor/work/.x11-buildlink\([ 	`"':;,]\)|-R_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.x11-buildlink#\1|g
s|^-R/usr/pkgsrc/wip/eor/work/.x11-buildlink$|-R_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.x11-buildlink#|g
s|\([ 	`"':;,]\)/usr/pkgsrc/wip/eor/work/.x11-buildlink\(/[^ 	`"':;,]*\.la[ 	`"':;,]\)|\1_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.x11-buildlink#\2|g
s|\([ 	`"':;,]\)/usr/pkgsrc/wip/eor/work/.x11-buildlink\(/[^ 	`"':;,]*\.la[ 	`"':;,]\)|\1_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.x11-buildlink#\2|g
s|\([ 	`"':;,]\)/usr/pkgsrc/wip/eor/work/.x11-buildlink\(/[^ 	`"':;,]*\.la\)$|\1_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.x11-buildlink#\2|g
s|^/usr/pkgsrc/wip/eor/work/.x11-buildlink\(/[^ 	`"':;,]*\.la[ 	`"':;,]\)|_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.x11-buildlink#\1|g
s|^/usr/pkgsrc/wip/eor/work/.x11-buildlink\(/[^ 	`"':;,]*\.la\)$|_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.x11-buildlink#\1|g
s|\([ 	`"':;,]\)-I/usr/pkgsrc/wip/eor/work/.x11-buildlink\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-I_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.x11-buildlink#\2\3|g
s|\([ 	`"':;,]\)-I/usr/pkgsrc/wip/eor/work/.x11-buildlink\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-I_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.x11-buildlink#\2\3|g
s|\([ 	`"':;,]\)-I/usr/pkgsrc/wip/eor/work/.x11-buildlink\(/[^ 	`"':;,]*\)$|\1-I_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.x11-buildlink#\2|g
s|^-I/usr/pkgsrc/wip/eor/work/.x11-buildlink\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-I_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.x11-buildlink#\1|g
s|^-I/usr/pkgsrc/wip/eor/work/.x11-buildlink\(/[^ 	`"':;,]*\)$|-I_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.x11-buildlink#\1|g
s|\([ 	`"':;,]\)-L/usr/pkgsrc/wip/eor/work/.x11-buildlink\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-L_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.x11-buildlink#\2\3|g
s|\([ 	`"':;,]\)-L/usr/pkgsrc/wip/eor/work/.x11-buildlink\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-L_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.x11-buildlink#\2\3|g
s|\([ 	`"':;,]\)-L/usr/pkgsrc/wip/eor/work/.x11-buildlink\(/[^ 	`"':;,]*\)$|\1-L_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.x11-buildlink#\2|g
s|^-L/usr/pkgsrc/wip/eor/work/.x11-buildlink\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-L_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.x11-buildlink#\1|g
s|^-L/usr/pkgsrc/wip/eor/work/.x11-buildlink\(/[^ 	`"':;,]*\)$|-L_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.x11-buildlink#\1|g
s|\([ 	`"':;,]\)-Wl,--rpath,/usr/pkgsrc/wip/eor/work/.x11-buildlink\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,--rpath,_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.x11-buildlink#\2\3|g
s|\([ 	`"':;,]\)-Wl,--rpath,/usr/pkgsrc/wip/eor/work/.x11-buildlink\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,--rpath,_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.x11-buildlink#\2\3|g
s|\([ 	`"':;,]\)-Wl,--rpath,/usr/pkgsrc/wip/eor/work/.x11-buildlink\(/[^ 	`"':;,]*\)$|\1-Wl,--rpath,_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.x11-buildlink#\2|g
s|^-Wl,--rpath,/usr/pkgsrc/wip/eor/work/.x11-buildlink\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,--rpath,_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.x11-buildlink#\1|g
s|^-Wl,--rpath,/usr/pkgsrc/wip/eor/work/.x11-buildlink\(/[^ 	`"':;,]*\)$|-Wl,--rpath,_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.x11-buildlink#\1|g
s|\([ 	`"':;,]\)-Wl,-rpath-link,/usr/pkgsrc/wip/eor/work/.x11-buildlink\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,-rpath-link,_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.x11-buildlink#\2\3|g
s|\([ 	`"':;,]\)-Wl,-rpath-link,/usr/pkgsrc/wip/eor/work/.x11-buildlink\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,-rpath-link,_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.x11-buildlink#\2\3|g
s|\([ 	`"':;,]\)-Wl,-rpath-link,/usr/pkgsrc/wip/eor/work/.x11-buildlink\(/[^ 	`"':;,]*\)$|\1-Wl,-rpath-link,_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.x11-buildlink#\2|g
s|^-Wl,-rpath-link,/usr/pkgsrc/wip/eor/work/.x11-buildlink\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,-rpath-link,_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.x11-buildlink#\1|g
s|^-Wl,-rpath-link,/usr/pkgsrc/wip/eor/work/.x11-buildlink\(/[^ 	`"':;,]*\)$|-Wl,-rpath-link,_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.x11-buildlink#\1|g
s|\([ 	`"':;,]\)-Wl,-rpath,/usr/pkgsrc/wip/eor/work/.x11-buildlink\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,-rpath,_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.x11-buildlink#\2\3|g
s|\([ 	`"':;,]\)-Wl,-rpath,/usr/pkgsrc/wip/eor/work/.x11-buildlink\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,-rpath,_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.x11-buildlink#\2\3|g
s|\([ 	`"':;,]\)-Wl,-rpath,/usr/pkgsrc/wip/eor/work/.x11-buildlink\(/[^ 	`"':;,]*\)$|\1-Wl,-rpath,_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.x11-buildlink#\2|g
s|^-Wl,-rpath,/usr/pkgsrc/wip/eor/work/.x11-buildlink\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,-rpath,_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.x11-buildlink#\1|g
s|^-Wl,-rpath,/usr/pkgsrc/wip/eor/work/.x11-buildlink\(/[^ 	`"':;,]*\)$|-Wl,-rpath,_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.x11-buildlink#\1|g
s|\([ 	`"':;,]\)-Wl,-R/usr/pkgsrc/wip/eor/work/.x11-buildlink\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,-R_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.x11-buildlink#\2\3|g
s|\([ 	`"':;,]\)-Wl,-R/usr/pkgsrc/wip/eor/work/.x11-buildlink\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,-R_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.x11-buildlink#\2\3|g
s|\([ 	`"':;,]\)-Wl,-R/usr/pkgsrc/wip/eor/work/.x11-buildlink\(/[^ 	`"':;,]*\)$|\1-Wl,-R_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.x11-buildlink#\2|g
s|^-Wl,-R/usr/pkgsrc/wip/eor/work/.x11-buildlink\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,-R_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.x11-buildlink#\1|g
s|^-Wl,-R/usr/pkgsrc/wip/eor/work/.x11-buildlink\(/[^ 	`"':;,]*\)$|-Wl,-R_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.x11-buildlink#\1|g
s|\([ 	`"':;,]\)-R/usr/pkgsrc/wip/eor/work/.x11-buildlink\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-R_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.x11-buildlink#\2\3|g
s|\([ 	`"':;,]\)-R/usr/pkgsrc/wip/eor/work/.x11-buildlink\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-R_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.x11-buildlink#\2\3|g
s|\([ 	`"':;,]\)-R/usr/pkgsrc/wip/eor/work/.x11-buildlink\(/[^ 	`"':;,]*\)$|\1-R_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.x11-buildlink#\2|g
s|^-R/usr/pkgsrc/wip/eor/work/.x11-buildlink\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-R_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.x11-buildlink#\1|g
s|^-R/usr/pkgsrc/wip/eor/work/.x11-buildlink\(/[^ 	`"':;,]*\)$|-R_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.x11-buildlink#\1|g
s|\([ 	`"':;,]\)-I/usr/pkgsrc/wip/eor/work\([ 	`"':;,]\)|\1-I_bUiLdLiNk__usr_pkgsrc_wip_eor_work#\2|g
s|\([ 	`"':;,]\)-I/usr/pkgsrc/wip/eor/work\([ 	`"':;,]\)|\1-I_bUiLdLiNk__usr_pkgsrc_wip_eor_work#\2|g
s|\([ 	`"':;,]\)-I/usr/pkgsrc/wip/eor/work$|\1-I_bUiLdLiNk__usr_pkgsrc_wip_eor_work#|g
s|^-I/usr/pkgsrc/wip/eor/work\([ 	`"':;,]\)|-I_bUiLdLiNk__usr_pkgsrc_wip_eor_work#\1|g
s|^-I/usr/pkgsrc/wip/eor/work$|-I_bUiLdLiNk__usr_pkgsrc_wip_eor_work#|g
s|\([ 	`"':;,]\)-L/usr/pkgsrc/wip/eor/work\([ 	`"':;,]\)|\1-L_bUiLdLiNk__usr_pkgsrc_wip_eor_work#\2|g
s|\([ 	`"':;,]\)-L/usr/pkgsrc/wip/eor/work\([ 	`"':;,]\)|\1-L_bUiLdLiNk__usr_pkgsrc_wip_eor_work#\2|g
s|\([ 	`"':;,]\)-L/usr/pkgsrc/wip/eor/work$|\1-L_bUiLdLiNk__usr_pkgsrc_wip_eor_work#|g
s|^-L/usr/pkgsrc/wip/eor/work\([ 	`"':;,]\)|-L_bUiLdLiNk__usr_pkgsrc_wip_eor_work#\1|g
s|^-L/usr/pkgsrc/wip/eor/work$|-L_bUiLdLiNk__usr_pkgsrc_wip_eor_work#|g
s|\([ 	`"':;,]\)-Wl,--rpath,/usr/pkgsrc/wip/eor/work\([ 	`"':;,]\)|\1-Wl,--rpath,_bUiLdLiNk__usr_pkgsrc_wip_eor_work#\2|g
s|\([ 	`"':;,]\)-Wl,--rpath,/usr/pkgsrc/wip/eor/work\([ 	`"':;,]\)|\1-Wl,--rpath,_bUiLdLiNk__usr_pkgsrc_wip_eor_work#\2|g
s|\([ 	`"':;,]\)-Wl,--rpath,/usr/pkgsrc/wip/eor/work$|\1-Wl,--rpath,_bUiLdLiNk__usr_pkgsrc_wip_eor_work#|g
s|^-Wl,--rpath,/usr/pkgsrc/wip/eor/work\([ 	`"':;,]\)|-Wl,--rpath,_bUiLdLiNk__usr_pkgsrc_wip_eor_work#\1|g
s|^-Wl,--rpath,/usr/pkgsrc/wip/eor/work$|-Wl,--rpath,_bUiLdLiNk__usr_pkgsrc_wip_eor_work#|g
s|\([ 	`"':;,]\)-Wl,-rpath-link,/usr/pkgsrc/wip/eor/work\([ 	`"':;,]\)|\1-Wl,-rpath-link,_bUiLdLiNk__usr_pkgsrc_wip_eor_work#\2|g
s|\([ 	`"':;,]\)-Wl,-rpath-link,/usr/pkgsrc/wip/eor/work\([ 	`"':;,]\)|\1-Wl,-rpath-link,_bUiLdLiNk__usr_pkgsrc_wip_eor_work#\2|g
s|\([ 	`"':;,]\)-Wl,-rpath-link,/usr/pkgsrc/wip/eor/work$|\1-Wl,-rpath-link,_bUiLdLiNk__usr_pkgsrc_wip_eor_work#|g
s|^-Wl,-rpath-link,/usr/pkgsrc/wip/eor/work\([ 	`"':;,]\)|-Wl,-rpath-link,_bUiLdLiNk__usr_pkgsrc_wip_eor_work#\1|g
s|^-Wl,-rpath-link,/usr/pkgsrc/wip/eor/work$|-Wl,-rpath-link,_bUiLdLiNk__usr_pkgsrc_wip_eor_work#|g
s|\([ 	`"':;,]\)-Wl,-rpath,/usr/pkgsrc/wip/eor/work\([ 	`"':;,]\)|\1-Wl,-rpath,_bUiLdLiNk__usr_pkgsrc_wip_eor_work#\2|g
s|\([ 	`"':;,]\)-Wl,-rpath,/usr/pkgsrc/wip/eor/work\([ 	`"':;,]\)|\1-Wl,-rpath,_bUiLdLiNk__usr_pkgsrc_wip_eor_work#\2|g
s|\([ 	`"':;,]\)-Wl,-rpath,/usr/pkgsrc/wip/eor/work$|\1-Wl,-rpath,_bUiLdLiNk__usr_pkgsrc_wip_eor_work#|g
s|^-Wl,-rpath,/usr/pkgsrc/wip/eor/work\([ 	`"':;,]\)|-Wl,-rpath,_bUiLdLiNk__usr_pkgsrc_wip_eor_work#\1|g
s|^-Wl,-rpath,/usr/pkgsrc/wip/eor/work$|-Wl,-rpath,_bUiLdLiNk__usr_pkgsrc_wip_eor_work#|g
s|\([ 	`"':;,]\)-Wl,-R/usr/pkgsrc/wip/eor/work\([ 	`"':;,]\)|\1-Wl,-R_bUiLdLiNk__usr_pkgsrc_wip_eor_work#\2|g
s|\([ 	`"':;,]\)-Wl,-R/usr/pkgsrc/wip/eor/work\([ 	`"':;,]\)|\1-Wl,-R_bUiLdLiNk__usr_pkgsrc_wip_eor_work#\2|g
s|\([ 	`"':;,]\)-Wl,-R/usr/pkgsrc/wip/eor/work$|\1-Wl,-R_bUiLdLiNk__usr_pkgsrc_wip_eor_work#|g
s|^-Wl,-R/usr/pkgsrc/wip/eor/work\([ 	`"':;,]\)|-Wl,-R_bUiLdLiNk__usr_pkgsrc_wip_eor_work#\1|g
s|^-Wl,-R/usr/pkgsrc/wip/eor/work$|-Wl,-R_bUiLdLiNk__usr_pkgsrc_wip_eor_work#|g
s|\([ 	`"':;,]\)-R/usr/pkgsrc/wip/eor/work\([ 	`"':;,]\)|\1-R_bUiLdLiNk__usr_pkgsrc_wip_eor_work#\2|g
s|\([ 	`"':;,]\)-R/usr/pkgsrc/wip/eor/work\([ 	`"':;,]\)|\1-R_bUiLdLiNk__usr_pkgsrc_wip_eor_work#\2|g
s|\([ 	`"':;,]\)-R/usr/pkgsrc/wip/eor/work$|\1-R_bUiLdLiNk__usr_pkgsrc_wip_eor_work#|g
s|^-R/usr/pkgsrc/wip/eor/work\([ 	`"':;,]\)|-R_bUiLdLiNk__usr_pkgsrc_wip_eor_work#\1|g
s|^-R/usr/pkgsrc/wip/eor/work$|-R_bUiLdLiNk__usr_pkgsrc_wip_eor_work#|g
s|\([ 	`"':;,]\)/usr/pkgsrc/wip/eor/work\(/[^ 	`"':;,]*\.la[ 	`"':;,]\)|\1_bUiLdLiNk__usr_pkgsrc_wip_eor_work#\2|g
s|\([ 	`"':;,]\)/usr/pkgsrc/wip/eor/work\(/[^ 	`"':;,]*\.la[ 	`"':;,]\)|\1_bUiLdLiNk__usr_pkgsrc_wip_eor_work#\2|g
s|\([ 	`"':;,]\)/usr/pkgsrc/wip/eor/work\(/[^ 	`"':;,]*\.la\)$|\1_bUiLdLiNk__usr_pkgsrc_wip_eor_work#\2|g
s|^/usr/pkgsrc/wip/eor/work\(/[^ 	`"':;,]*\.la[ 	`"':;,]\)|_bUiLdLiNk__usr_pkgsrc_wip_eor_work#\1|g
s|^/usr/pkgsrc/wip/eor/work\(/[^ 	`"':;,]*\.la\)$|_bUiLdLiNk__usr_pkgsrc_wip_eor_work#\1|g
s|\([ 	`"':;,]\)-I/usr/pkgsrc/wip/eor/work\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-I_bUiLdLiNk__usr_pkgsrc_wip_eor_work#\2\3|g
s|\([ 	`"':;,]\)-I/usr/pkgsrc/wip/eor/work\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-I_bUiLdLiNk__usr_pkgsrc_wip_eor_work#\2\3|g
s|\([ 	`"':;,]\)-I/usr/pkgsrc/wip/eor/work\(/[^ 	`"':;,]*\)$|\1-I_bUiLdLiNk__usr_pkgsrc_wip_eor_work#\2|g
s|^-I/usr/pkgsrc/wip/eor/work\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-I_bUiLdLiNk__usr_pkgsrc_wip_eor_work#\1|g
s|^-I/usr/pkgsrc/wip/eor/work\(/[^ 	`"':;,]*\)$|-I_bUiLdLiNk__usr_pkgsrc_wip_eor_work#\1|g
s|\([ 	`"':;,]\)-L/usr/pkgsrc/wip/eor/work\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-L_bUiLdLiNk__usr_pkgsrc_wip_eor_work#\2\3|g
s|\([ 	`"':;,]\)-L/usr/pkgsrc/wip/eor/work\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-L_bUiLdLiNk__usr_pkgsrc_wip_eor_work#\2\3|g
s|\([ 	`"':;,]\)-L/usr/pkgsrc/wip/eor/work\(/[^ 	`"':;,]*\)$|\1-L_bUiLdLiNk__usr_pkgsrc_wip_eor_work#\2|g
s|^-L/usr/pkgsrc/wip/eor/work\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-L_bUiLdLiNk__usr_pkgsrc_wip_eor_work#\1|g
s|^-L/usr/pkgsrc/wip/eor/work\(/[^ 	`"':;,]*\)$|-L_bUiLdLiNk__usr_pkgsrc_wip_eor_work#\1|g
s|\([ 	`"':;,]\)-Wl,--rpath,/usr/pkgsrc/wip/eor/work\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,--rpath,_bUiLdLiNk__usr_pkgsrc_wip_eor_work#\2\3|g
s|\([ 	`"':;,]\)-Wl,--rpath,/usr/pkgsrc/wip/eor/work\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,--rpath,_bUiLdLiNk__usr_pkgsrc_wip_eor_work#\2\3|g
s|\([ 	`"':;,]\)-Wl,--rpath,/usr/pkgsrc/wip/eor/work\(/[^ 	`"':;,]*\)$|\1-Wl,--rpath,_bUiLdLiNk__usr_pkgsrc_wip_eor_work#\2|g
s|^-Wl,--rpath,/usr/pkgsrc/wip/eor/work\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,--rpath,_bUiLdLiNk__usr_pkgsrc_wip_eor_work#\1|g
s|^-Wl,--rpath,/usr/pkgsrc/wip/eor/work\(/[^ 	`"':;,]*\)$|-Wl,--rpath,_bUiLdLiNk__usr_pkgsrc_wip_eor_work#\1|g
s|\([ 	`"':;,]\)-Wl,-rpath-link,/usr/pkgsrc/wip/eor/work\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,-rpath-link,_bUiLdLiNk__usr_pkgsrc_wip_eor_work#\2\3|g
s|\([ 	`"':;,]\)-Wl,-rpath-link,/usr/pkgsrc/wip/eor/work\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,-rpath-link,_bUiLdLiNk__usr_pkgsrc_wip_eor_work#\2\3|g
s|\([ 	`"':;,]\)-Wl,-rpath-link,/usr/pkgsrc/wip/eor/work\(/[^ 	`"':;,]*\)$|\1-Wl,-rpath-link,_bUiLdLiNk__usr_pkgsrc_wip_eor_work#\2|g
s|^-Wl,-rpath-link,/usr/pkgsrc/wip/eor/work\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,-rpath-link,_bUiLdLiNk__usr_pkgsrc_wip_eor_work#\1|g
s|^-Wl,-rpath-link,/usr/pkgsrc/wip/eor/work\(/[^ 	`"':;,]*\)$|-Wl,-rpath-link,_bUiLdLiNk__usr_pkgsrc_wip_eor_work#\1|g
s|\([ 	`"':;,]\)-Wl,-rpath,/usr/pkgsrc/wip/eor/work\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,-rpath,_bUiLdLiNk__usr_pkgsrc_wip_eor_work#\2\3|g
s|\([ 	`"':;,]\)-Wl,-rpath,/usr/pkgsrc/wip/eor/work\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,-rpath,_bUiLdLiNk__usr_pkgsrc_wip_eor_work#\2\3|g
s|\([ 	`"':;,]\)-Wl,-rpath,/usr/pkgsrc/wip/eor/work\(/[^ 	`"':;,]*\)$|\1-Wl,-rpath,_bUiLdLiNk__usr_pkgsrc_wip_eor_work#\2|g
s|^-Wl,-rpath,/usr/pkgsrc/wip/eor/work\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,-rpath,_bUiLdLiNk__usr_pkgsrc_wip_eor_work#\1|g
s|^-Wl,-rpath,/usr/pkgsrc/wip/eor/work\(/[^ 	`"':;,]*\)$|-Wl,-rpath,_bUiLdLiNk__usr_pkgsrc_wip_eor_work#\1|g
s|\([ 	`"':;,]\)-Wl,-R/usr/pkgsrc/wip/eor/work\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,-R_bUiLdLiNk__usr_pkgsrc_wip_eor_work#\2\3|g
s|\([ 	`"':;,]\)-Wl,-R/usr/pkgsrc/wip/eor/work\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,-R_bUiLdLiNk__usr_pkgsrc_wip_eor_work#\2\3|g
s|\([ 	`"':;,]\)-Wl,-R/usr/pkgsrc/wip/eor/work\(/[^ 	`"':;,]*\)$|\1-Wl,-R_bUiLdLiNk__usr_pkgsrc_wip_eor_work#\2|g
s|^-Wl,-R/usr/pkgsrc/wip/eor/work\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,-R_bUiLdLiNk__usr_pkgsrc_wip_eor_work#\1|g
s|^-Wl,-R/usr/pkgsrc/wip/eor/work\(/[^ 	`"':;,]*\)$|-Wl,-R_bUiLdLiNk__usr_pkgsrc_wip_eor_work#\1|g
s|\([ 	`"':;,]\)-R/usr/pkgsrc/wip/eor/work\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-R_bUiLdLiNk__usr_pkgsrc_wip_eor_work#\2\3|g
s|\([ 	`"':;,]\)-R/usr/pkgsrc/wip/eor/work\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-R_bUiLdLiNk__usr_pkgsrc_wip_eor_work#\2\3|g
s|\([ 	`"':;,]\)-R/usr/pkgsrc/wip/eor/work\(/[^ 	`"':;,]*\)$|\1-R_bUiLdLiNk__usr_pkgsrc_wip_eor_work#\2|g
s|^-R/usr/pkgsrc/wip/eor/work\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-R_bUiLdLiNk__usr_pkgsrc_wip_eor_work#\1|g
s|^-R/usr/pkgsrc/wip/eor/work\(/[^ 	`"':;,]*\)$|-R_bUiLdLiNk__usr_pkgsrc_wip_eor_work#\1|g
s|\([ 	`"':;,]\)-I/usr/include\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-I_bUiLdLiNk__usr_include#\2\3|g
s|\([ 	`"':;,]\)-I/usr/include\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-I_bUiLdLiNk__usr_include#\2\3|g
s|\([ 	`"':;,]\)-I/usr/include\(/[^ 	`"':;,]*\)$|\1-I_bUiLdLiNk__usr_include#\2|g
s|^-I/usr/include\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-I_bUiLdLiNk__usr_include#\1|g
s|^-I/usr/include\(/[^ 	`"':;,]*\)$|-I_bUiLdLiNk__usr_include#\1|g
s|\([ 	`"':;,]\)-L/usr/lib\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-L_bUiLdLiNk__usr_lib#\2\3|g
s|\([ 	`"':;,]\)-L/usr/lib\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-L_bUiLdLiNk__usr_lib#\2\3|g
s|\([ 	`"':;,]\)-L/usr/lib\(/[^ 	`"':;,]*\)$|\1-L_bUiLdLiNk__usr_lib#\2|g
s|^-L/usr/lib\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-L_bUiLdLiNk__usr_lib#\1|g
s|^-L/usr/lib\(/[^ 	`"':;,]*\)$|-L_bUiLdLiNk__usr_lib#\1|g
s|\([ 	`"':;,]\)-Wl,--rpath,_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.buildlink#\([ 	`"':;,]\)|\1-Wl,--rpath,/usr/pkg\2|g
s|\([ 	`"':;,]\)-Wl,--rpath,_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.buildlink#\([ 	`"':;,]\)|\1-Wl,--rpath,/usr/pkg\2|g
s|\([ 	`"':;,]\)-Wl,--rpath,_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.buildlink#$|\1-Wl,--rpath,/usr/pkg|g
s|^-Wl,--rpath,_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.buildlink#\([ 	`"':;,]\)|-Wl,--rpath,/usr/pkg\1|g
s|^-Wl,--rpath,_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.buildlink#$|-Wl,--rpath,/usr/pkg|g
s|\([ 	`"':;,]\)-Wl,-rpath-link,_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.buildlink#\([ 	`"':;,]\)|\1-Wl,-rpath-link,/usr/pkg\2|g
s|\([ 	`"':;,]\)-Wl,-rpath-link,_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.buildlink#\([ 	`"':;,]\)|\1-Wl,-rpath-link,/usr/pkg\2|g
s|\([ 	`"':;,]\)-Wl,-rpath-link,_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.buildlink#$|\1-Wl,-rpath-link,/usr/pkg|g
s|^-Wl,-rpath-link,_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.buildlink#\([ 	`"':;,]\)|-Wl,-rpath-link,/usr/pkg\1|g
s|^-Wl,-rpath-link,_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.buildlink#$|-Wl,-rpath-link,/usr/pkg|g
s|\([ 	`"':;,]\)-Wl,-rpath,_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.buildlink#\([ 	`"':;,]\)|\1-Wl,-rpath,/usr/pkg\2|g
s|\([ 	`"':;,]\)-Wl,-rpath,_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.buildlink#\([ 	`"':;,]\)|\1-Wl,-rpath,/usr/pkg\2|g
s|\([ 	`"':;,]\)-Wl,-rpath,_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.buildlink#$|\1-Wl,-rpath,/usr/pkg|g
s|^-Wl,-rpath,_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.buildlink#\([ 	`"':;,]\)|-Wl,-rpath,/usr/pkg\1|g
s|^-Wl,-rpath,_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.buildlink#$|-Wl,-rpath,/usr/pkg|g
s|\([ 	`"':;,]\)-Wl,-R_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.buildlink#\([ 	`"':;,]\)|\1-Wl,-R/usr/pkg\2|g
s|\([ 	`"':;,]\)-Wl,-R_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.buildlink#\([ 	`"':;,]\)|\1-Wl,-R/usr/pkg\2|g
s|\([ 	`"':;,]\)-Wl,-R_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.buildlink#$|\1-Wl,-R/usr/pkg|g
s|^-Wl,-R_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.buildlink#\([ 	`"':;,]\)|-Wl,-R/usr/pkg\1|g
s|^-Wl,-R_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.buildlink#$|-Wl,-R/usr/pkg|g
s|\([ 	`"':;,]\)-R_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.buildlink#\([ 	`"':;,]\)|\1-R/usr/pkg\2|g
s|\([ 	`"':;,]\)-R_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.buildlink#\([ 	`"':;,]\)|\1-R/usr/pkg\2|g
s|\([ 	`"':;,]\)-R_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.buildlink#$|\1-R/usr/pkg|g
s|^-R_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.buildlink#\([ 	`"':;,]\)|-R/usr/pkg\1|g
s|^-R_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.buildlink#$|-R/usr/pkg|g
s|\([ 	`"':;,]\)-Wl,--rpath,_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.buildlink#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,--rpath,/usr/pkg\2\3|g
s|\([ 	`"':;,]\)-Wl,--rpath,_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.buildlink#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,--rpath,/usr/pkg\2\3|g
s|\([ 	`"':;,]\)-Wl,--rpath,_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.buildlink#\(/[^ 	`"':;,]*\)$|\1-Wl,--rpath,/usr/pkg\2|g
s|^-Wl,--rpath,_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.buildlink#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,--rpath,/usr/pkg\1|g
s|^-Wl,--rpath,_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.buildlink#\(/[^ 	`"':;,]*\)$|-Wl,--rpath,/usr/pkg\1|g
s|\([ 	`"':;,]\)-Wl,-rpath-link,_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.buildlink#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,-rpath-link,/usr/pkg\2\3|g
s|\([ 	`"':;,]\)-Wl,-rpath-link,_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.buildlink#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,-rpath-link,/usr/pkg\2\3|g
s|\([ 	`"':;,]\)-Wl,-rpath-link,_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.buildlink#\(/[^ 	`"':;,]*\)$|\1-Wl,-rpath-link,/usr/pkg\2|g
s|^-Wl,-rpath-link,_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.buildlink#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,-rpath-link,/usr/pkg\1|g
s|^-Wl,-rpath-link,_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.buildlink#\(/[^ 	`"':;,]*\)$|-Wl,-rpath-link,/usr/pkg\1|g
s|\([ 	`"':;,]\)-Wl,-rpath,_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.buildlink#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,-rpath,/usr/pkg\2\3|g
s|\([ 	`"':;,]\)-Wl,-rpath,_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.buildlink#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,-rpath,/usr/pkg\2\3|g
s|\([ 	`"':;,]\)-Wl,-rpath,_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.buildlink#\(/[^ 	`"':;,]*\)$|\1-Wl,-rpath,/usr/pkg\2|g
s|^-Wl,-rpath,_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.buildlink#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,-rpath,/usr/pkg\1|g
s|^-Wl,-rpath,_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.buildlink#\(/[^ 	`"':;,]*\)$|-Wl,-rpath,/usr/pkg\1|g
s|\([ 	`"':;,]\)-Wl,-R_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.buildlink#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,-R/usr/pkg\2\3|g
s|\([ 	`"':;,]\)-Wl,-R_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.buildlink#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,-R/usr/pkg\2\3|g
s|\([ 	`"':;,]\)-Wl,-R_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.buildlink#\(/[^ 	`"':;,]*\)$|\1-Wl,-R/usr/pkg\2|g
s|^-Wl,-R_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.buildlink#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,-R/usr/pkg\1|g
s|^-Wl,-R_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.buildlink#\(/[^ 	`"':;,]*\)$|-Wl,-R/usr/pkg\1|g
s|\([ 	`"':;,]\)-R_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.buildlink#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-R/usr/pkg\2\3|g
s|\([ 	`"':;,]\)-R_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.buildlink#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-R/usr/pkg\2\3|g
s|\([ 	`"':;,]\)-R_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.buildlink#\(/[^ 	`"':;,]*\)$|\1-R/usr/pkg\2|g
s|^-R_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.buildlink#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-R/usr/pkg\1|g
s|^-R_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.buildlink#\(/[^ 	`"':;,]*\)$|-R/usr/pkg\1|g
s|\([ 	`"':;,]\)-Wl,--rpath,/usr/pkg/lib\([ 	`"':;,]\)|\1-Wl,--rpath,_bUiLdLiNk__usr_pkg_lib#\2|g
s|\([ 	`"':;,]\)-Wl,--rpath,/usr/pkg/lib\([ 	`"':;,]\)|\1-Wl,--rpath,_bUiLdLiNk__usr_pkg_lib#\2|g
s|\([ 	`"':;,]\)-Wl,--rpath,/usr/pkg/lib$|\1-Wl,--rpath,_bUiLdLiNk__usr_pkg_lib#|g
s|^-Wl,--rpath,/usr/pkg/lib\([ 	`"':;,]\)|-Wl,--rpath,_bUiLdLiNk__usr_pkg_lib#\1|g
s|^-Wl,--rpath,/usr/pkg/lib$|-Wl,--rpath,_bUiLdLiNk__usr_pkg_lib#|g
s|\([ 	`"':;,]\)-Wl,-rpath-link,/usr/pkg/lib\([ 	`"':;,]\)|\1-Wl,-rpath-link,_bUiLdLiNk__usr_pkg_lib#\2|g
s|\([ 	`"':;,]\)-Wl,-rpath-link,/usr/pkg/lib\([ 	`"':;,]\)|\1-Wl,-rpath-link,_bUiLdLiNk__usr_pkg_lib#\2|g
s|\([ 	`"':;,]\)-Wl,-rpath-link,/usr/pkg/lib$|\1-Wl,-rpath-link,_bUiLdLiNk__usr_pkg_lib#|g
s|^-Wl,-rpath-link,/usr/pkg/lib\([ 	`"':;,]\)|-Wl,-rpath-link,_bUiLdLiNk__usr_pkg_lib#\1|g
s|^-Wl,-rpath-link,/usr/pkg/lib$|-Wl,-rpath-link,_bUiLdLiNk__usr_pkg_lib#|g
s|\([ 	`"':;,]\)-Wl,-rpath,/usr/pkg/lib\([ 	`"':;,]\)|\1-Wl,-rpath,_bUiLdLiNk__usr_pkg_lib#\2|g
s|\([ 	`"':;,]\)-Wl,-rpath,/usr/pkg/lib\([ 	`"':;,]\)|\1-Wl,-rpath,_bUiLdLiNk__usr_pkg_lib#\2|g
s|\([ 	`"':;,]\)-Wl,-rpath,/usr/pkg/lib$|\1-Wl,-rpath,_bUiLdLiNk__usr_pkg_lib#|g
s|^-Wl,-rpath,/usr/pkg/lib\([ 	`"':;,]\)|-Wl,-rpath,_bUiLdLiNk__usr_pkg_lib#\1|g
s|^-Wl,-rpath,/usr/pkg/lib$|-Wl,-rpath,_bUiLdLiNk__usr_pkg_lib#|g
s|\([ 	`"':;,]\)-Wl,-R/usr/pkg/lib\([ 	`"':;,]\)|\1-Wl,-R_bUiLdLiNk__usr_pkg_lib#\2|g
s|\([ 	`"':;,]\)-Wl,-R/usr/pkg/lib\([ 	`"':;,]\)|\1-Wl,-R_bUiLdLiNk__usr_pkg_lib#\2|g
s|\([ 	`"':;,]\)-Wl,-R/usr/pkg/lib$|\1-Wl,-R_bUiLdLiNk__usr_pkg_lib#|g
s|^-Wl,-R/usr/pkg/lib\([ 	`"':;,]\)|-Wl,-R_bUiLdLiNk__usr_pkg_lib#\1|g
s|^-Wl,-R/usr/pkg/lib$|-Wl,-R_bUiLdLiNk__usr_pkg_lib#|g
s|\([ 	`"':;,]\)-R/usr/pkg/lib\([ 	`"':;,]\)|\1-R_bUiLdLiNk__usr_pkg_lib#\2|g
s|\([ 	`"':;,]\)-R/usr/pkg/lib\([ 	`"':;,]\)|\1-R_bUiLdLiNk__usr_pkg_lib#\2|g
s|\([ 	`"':;,]\)-R/usr/pkg/lib$|\1-R_bUiLdLiNk__usr_pkg_lib#|g
s|^-R/usr/pkg/lib\([ 	`"':;,]\)|-R_bUiLdLiNk__usr_pkg_lib#\1|g
s|^-R/usr/pkg/lib$|-R_bUiLdLiNk__usr_pkg_lib#|g
s|\([ 	`"':;,]\)-Wl,--rpath,/usr/pkg/lib\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,--rpath,_bUiLdLiNk__usr_pkg_lib#\2\3|g
s|\([ 	`"':;,]\)-Wl,--rpath,/usr/pkg/lib\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,--rpath,_bUiLdLiNk__usr_pkg_lib#\2\3|g
s|\([ 	`"':;,]\)-Wl,--rpath,/usr/pkg/lib\(/[^ 	`"':;,]*\)$|\1-Wl,--rpath,_bUiLdLiNk__usr_pkg_lib#\2|g
s|^-Wl,--rpath,/usr/pkg/lib\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,--rpath,_bUiLdLiNk__usr_pkg_lib#\1|g
s|^-Wl,--rpath,/usr/pkg/lib\(/[^ 	`"':;,]*\)$|-Wl,--rpath,_bUiLdLiNk__usr_pkg_lib#\1|g
s|\([ 	`"':;,]\)-Wl,-rpath-link,/usr/pkg/lib\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,-rpath-link,_bUiLdLiNk__usr_pkg_lib#\2\3|g
s|\([ 	`"':;,]\)-Wl,-rpath-link,/usr/pkg/lib\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,-rpath-link,_bUiLdLiNk__usr_pkg_lib#\2\3|g
s|\([ 	`"':;,]\)-Wl,-rpath-link,/usr/pkg/lib\(/[^ 	`"':;,]*\)$|\1-Wl,-rpath-link,_bUiLdLiNk__usr_pkg_lib#\2|g
s|^-Wl,-rpath-link,/usr/pkg/lib\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,-rpath-link,_bUiLdLiNk__usr_pkg_lib#\1|g
s|^-Wl,-rpath-link,/usr/pkg/lib\(/[^ 	`"':;,]*\)$|-Wl,-rpath-link,_bUiLdLiNk__usr_pkg_lib#\1|g
s|\([ 	`"':;,]\)-Wl,-rpath,/usr/pkg/lib\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,-rpath,_bUiLdLiNk__usr_pkg_lib#\2\3|g
s|\([ 	`"':;,]\)-Wl,-rpath,/usr/pkg/lib\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,-rpath,_bUiLdLiNk__usr_pkg_lib#\2\3|g
s|\([ 	`"':;,]\)-Wl,-rpath,/usr/pkg/lib\(/[^ 	`"':;,]*\)$|\1-Wl,-rpath,_bUiLdLiNk__usr_pkg_lib#\2|g
s|^-Wl,-rpath,/usr/pkg/lib\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,-rpath,_bUiLdLiNk__usr_pkg_lib#\1|g
s|^-Wl,-rpath,/usr/pkg/lib\(/[^ 	`"':;,]*\)$|-Wl,-rpath,_bUiLdLiNk__usr_pkg_lib#\1|g
s|\([ 	`"':;,]\)-Wl,-R/usr/pkg/lib\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,-R_bUiLdLiNk__usr_pkg_lib#\2\3|g
s|\([ 	`"':;,]\)-Wl,-R/usr/pkg/lib\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,-R_bUiLdLiNk__usr_pkg_lib#\2\3|g
s|\([ 	`"':;,]\)-Wl,-R/usr/pkg/lib\(/[^ 	`"':;,]*\)$|\1-Wl,-R_bUiLdLiNk__usr_pkg_lib#\2|g
s|^-Wl,-R/usr/pkg/lib\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,-R_bUiLdLiNk__usr_pkg_lib#\1|g
s|^-Wl,-R/usr/pkg/lib\(/[^ 	`"':;,]*\)$|-Wl,-R_bUiLdLiNk__usr_pkg_lib#\1|g
s|\([ 	`"':;,]\)-R/usr/pkg/lib\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-R_bUiLdLiNk__usr_pkg_lib#\2\3|g
s|\([ 	`"':;,]\)-R/usr/pkg/lib\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-R_bUiLdLiNk__usr_pkg_lib#\2\3|g
s|\([ 	`"':;,]\)-R/usr/pkg/lib\(/[^ 	`"':;,]*\)$|\1-R_bUiLdLiNk__usr_pkg_lib#\2|g
s|^-R/usr/pkg/lib\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-R_bUiLdLiNk__usr_pkg_lib#\1|g
s|^-R/usr/pkg/lib\(/[^ 	`"':;,]*\)$|-R_bUiLdLiNk__usr_pkg_lib#\1|g
s|\([ 	`"':;,]\)-Wl,--rpath,/usr/lib\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,--rpath,_bUiLdLiNk__usr_lib#\2\3|g
s|\([ 	`"':;,]\)-Wl,--rpath,/usr/lib\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,--rpath,_bUiLdLiNk__usr_lib#\2\3|g
s|\([ 	`"':;,]\)-Wl,--rpath,/usr/lib\(/[^ 	`"':;,]*\)$|\1-Wl,--rpath,_bUiLdLiNk__usr_lib#\2|g
s|^-Wl,--rpath,/usr/lib\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,--rpath,_bUiLdLiNk__usr_lib#\1|g
s|^-Wl,--rpath,/usr/lib\(/[^ 	`"':;,]*\)$|-Wl,--rpath,_bUiLdLiNk__usr_lib#\1|g
s|\([ 	`"':;,]\)-Wl,-rpath-link,/usr/lib\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,-rpath-link,_bUiLdLiNk__usr_lib#\2\3|g
s|\([ 	`"':;,]\)-Wl,-rpath-link,/usr/lib\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,-rpath-link,_bUiLdLiNk__usr_lib#\2\3|g
s|\([ 	`"':;,]\)-Wl,-rpath-link,/usr/lib\(/[^ 	`"':;,]*\)$|\1-Wl,-rpath-link,_bUiLdLiNk__usr_lib#\2|g
s|^-Wl,-rpath-link,/usr/lib\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,-rpath-link,_bUiLdLiNk__usr_lib#\1|g
s|^-Wl,-rpath-link,/usr/lib\(/[^ 	`"':;,]*\)$|-Wl,-rpath-link,_bUiLdLiNk__usr_lib#\1|g
s|\([ 	`"':;,]\)-Wl,-rpath,/usr/lib\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,-rpath,_bUiLdLiNk__usr_lib#\2\3|g
s|\([ 	`"':;,]\)-Wl,-rpath,/usr/lib\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,-rpath,_bUiLdLiNk__usr_lib#\2\3|g
s|\([ 	`"':;,]\)-Wl,-rpath,/usr/lib\(/[^ 	`"':;,]*\)$|\1-Wl,-rpath,_bUiLdLiNk__usr_lib#\2|g
s|^-Wl,-rpath,/usr/lib\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,-rpath,_bUiLdLiNk__usr_lib#\1|g
s|^-Wl,-rpath,/usr/lib\(/[^ 	`"':;,]*\)$|-Wl,-rpath,_bUiLdLiNk__usr_lib#\1|g
s|\([ 	`"':;,]\)-Wl,-R/usr/lib\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,-R_bUiLdLiNk__usr_lib#\2\3|g
s|\([ 	`"':;,]\)-Wl,-R/usr/lib\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,-R_bUiLdLiNk__usr_lib#\2\3|g
s|\([ 	`"':;,]\)-Wl,-R/usr/lib\(/[^ 	`"':;,]*\)$|\1-Wl,-R_bUiLdLiNk__usr_lib#\2|g
s|^-Wl,-R/usr/lib\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,-R_bUiLdLiNk__usr_lib#\1|g
s|^-Wl,-R/usr/lib\(/[^ 	`"':;,]*\)$|-Wl,-R_bUiLdLiNk__usr_lib#\1|g
s|\([ 	`"':;,]\)-R/usr/lib\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-R_bUiLdLiNk__usr_lib#\2\3|g
s|\([ 	`"':;,]\)-R/usr/lib\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-R_bUiLdLiNk__usr_lib#\2\3|g
s|\([ 	`"':;,]\)-R/usr/lib\(/[^ 	`"':;,]*\)$|\1-R_bUiLdLiNk__usr_lib#\2|g
s|^-R/usr/lib\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-R_bUiLdLiNk__usr_lib#\1|g
s|^-R/usr/lib\(/[^ 	`"':;,]*\)$|-R_bUiLdLiNk__usr_lib#\1|g
s|\([ 	`"':;,]\)/usr/pkg/packages/[^/ 	`"':;,]*\(/[^ 	`"':;,]*[ 	`"':;,]\)|\1/usr/pkg\2|g
s|\([ 	`"':;,]\)/usr/pkg/packages/[^/ 	`"':;,]*\(/[^ 	`"':;,]*[ 	`"':;,]\)|\1/usr/pkg\2|g
s|\([ 	`"':;,]\)/usr/pkg/packages/[^/ 	`"':;,]*\(/[^ 	`"':;,]*\)$|\1/usr/pkg\2|g
s|^/usr/pkg/packages/[^/ 	`"':;,]*\(/[^ 	`"':;,]*[ 	`"':;,]\)|/usr/pkg\1|g
s|^/usr/pkg/packages/[^/ 	`"':;,]*\(/[^ 	`"':;,]*\)$|/usr/pkg\1|g
s|\([ 	`"':;,]\)-I/usr/pkg/packages/[^/ 	`"':;,]*\(/[^ 	`"':;,]*[ 	`"':;,]\)|\1-I/usr/pkg\2|g
s|\([ 	`"':;,]\)-I/usr/pkg/packages/[^/ 	`"':;,]*\(/[^ 	`"':;,]*[ 	`"':;,]\)|\1-I/usr/pkg\2|g
s|\([ 	`"':;,]\)-I/usr/pkg/packages/[^/ 	`"':;,]*\(/[^ 	`"':;,]*\)$|\1-I/usr/pkg\2|g
s|^-I/usr/pkg/packages/[^/ 	`"':;,]*\(/[^ 	`"':;,]*[ 	`"':;,]\)|-I/usr/pkg\1|g
s|^-I/usr/pkg/packages/[^/ 	`"':;,]*\(/[^ 	`"':;,]*\)$|-I/usr/pkg\1|g
s|\([ 	`"':;,]\)-L/usr/pkg/packages/[^/ 	`"':;,]*\(/[^ 	`"':;,]*[ 	`"':;,]\)|\1-L/usr/pkg\2|g
s|\([ 	`"':;,]\)-L/usr/pkg/packages/[^/ 	`"':;,]*\(/[^ 	`"':;,]*[ 	`"':;,]\)|\1-L/usr/pkg\2|g
s|\([ 	`"':;,]\)-L/usr/pkg/packages/[^/ 	`"':;,]*\(/[^ 	`"':;,]*\)$|\1-L/usr/pkg\2|g
s|^-L/usr/pkg/packages/[^/ 	`"':;,]*\(/[^ 	`"':;,]*[ 	`"':;,]\)|-L/usr/pkg\1|g
s|^-L/usr/pkg/packages/[^/ 	`"':;,]*\(/[^ 	`"':;,]*\)$|-L/usr/pkg\1|g
s|\([ 	`"':;,]\)_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.buildlink#\(/[^ 	`"':;,]*\.la[ 	`"':;,]\)|\1/usr/pkg\2|g
s|\([ 	`"':;,]\)_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.buildlink#\(/[^ 	`"':;,]*\.la[ 	`"':;,]\)|\1/usr/pkg\2|g
s|\([ 	`"':;,]\)_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.buildlink#\(/[^ 	`"':;,]*\.la\)$|\1/usr/pkg\2|g
s|^_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.buildlink#\(/[^ 	`"':;,]*\.la[ 	`"':;,]\)|/usr/pkg\1|g
s|^_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.buildlink#\(/[^ 	`"':;,]*\.la\)$|/usr/pkg\1|g
s|\([ 	`"':;,]\)-I_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.buildlink#\([ 	`"':;,]\)|\1-I/usr/pkg\2|g
s|\([ 	`"':;,]\)-I_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.buildlink#\([ 	`"':;,]\)|\1-I/usr/pkg\2|g
s|\([ 	`"':;,]\)-I_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.buildlink#$|\1-I/usr/pkg|g
s|^-I_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.buildlink#\([ 	`"':;,]\)|-I/usr/pkg\1|g
s|^-I_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.buildlink#$|-I/usr/pkg|g
s|\([ 	`"':;,]\)-I_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.buildlink#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-I/usr/pkg\2\3|g
s|\([ 	`"':;,]\)-I_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.buildlink#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-I/usr/pkg\2\3|g
s|\([ 	`"':;,]\)-I_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.buildlink#\(/[^ 	`"':;,]*\)$|\1-I/usr/pkg\2|g
s|^-I_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.buildlink#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-I/usr/pkg\1|g
s|^-I_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.buildlink#\(/[^ 	`"':;,]*\)$|-I/usr/pkg\1|g
s|\([ 	`"':;,]\)-L_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.buildlink#\([ 	`"':;,]\)|\1-L/usr/pkg\2|g
s|\([ 	`"':;,]\)-L_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.buildlink#\([ 	`"':;,]\)|\1-L/usr/pkg\2|g
s|\([ 	`"':;,]\)-L_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.buildlink#$|\1-L/usr/pkg|g
s|^-L_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.buildlink#\([ 	`"':;,]\)|-L/usr/pkg\1|g
s|^-L_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.buildlink#$|-L/usr/pkg|g
s|\([ 	`"':;,]\)-L_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.buildlink#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-L/usr/pkg\2\3|g
s|\([ 	`"':;,]\)-L_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.buildlink#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-L/usr/pkg\2\3|g
s|\([ 	`"':;,]\)-L_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.buildlink#\(/[^ 	`"':;,]*\)$|\1-L/usr/pkg\2|g
s|^-L_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.buildlink#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-L/usr/pkg\1|g
s|^-L_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.buildlink#\(/[^ 	`"':;,]*\)$|-L/usr/pkg\1|g
s|\([ 	`"':;,]\)/usr/pkg\(/[^ 	`"':;,]*\.la[ 	`"':;,]\)|\1_bUiLdLiNk__usr_pkg#\2|g
s|\([ 	`"':;,]\)/usr/pkg\(/[^ 	`"':;,]*\.la[ 	`"':;,]\)|\1_bUiLdLiNk__usr_pkg#\2|g
s|\([ 	`"':;,]\)/usr/pkg\(/[^ 	`"':;,]*\.la\)$|\1_bUiLdLiNk__usr_pkg#\2|g
s|^/usr/pkg\(/[^ 	`"':;,]*\.la[ 	`"':;,]\)|_bUiLdLiNk__usr_pkg#\1|g
s|^/usr/pkg\(/[^ 	`"':;,]*\.la\)$|_bUiLdLiNk__usr_pkg#\1|g
s|\([ 	`"':;,]\)-I/usr/pkg\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-I_bUiLdLiNk__usr_pkg#\2\3|g
s|\([ 	`"':;,]\)-I/usr/pkg\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-I_bUiLdLiNk__usr_pkg#\2\3|g
s|\([ 	`"':;,]\)-I/usr/pkg\(/[^ 	`"':;,]*\)$|\1-I_bUiLdLiNk__usr_pkg#\2|g
s|^-I/usr/pkg\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-I_bUiLdLiNk__usr_pkg#\1|g
s|^-I/usr/pkg\(/[^ 	`"':;,]*\)$|-I_bUiLdLiNk__usr_pkg#\1|g
s|\([ 	`"':;,]\)-L/usr/pkg\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-L_bUiLdLiNk__usr_pkg#\2\3|g
s|\([ 	`"':;,]\)-L/usr/pkg\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-L_bUiLdLiNk__usr_pkg#\2\3|g
s|\([ 	`"':;,]\)-L/usr/pkg\(/[^ 	`"':;,]*\)$|\1-L_bUiLdLiNk__usr_pkg#\2|g
s|^-L/usr/pkg\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-L_bUiLdLiNk__usr_pkg#\1|g
s|^-L/usr/pkg\(/[^ 	`"':;,]*\)$|-L_bUiLdLiNk__usr_pkg#\1|g
s|\([ 	`"':;,]\)-Wl,--rpath,/usr/pkg\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,--rpath,_bUiLdLiNk__usr_pkg#\2\3|g
s|\([ 	`"':;,]\)-Wl,--rpath,/usr/pkg\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,--rpath,_bUiLdLiNk__usr_pkg#\2\3|g
s|\([ 	`"':;,]\)-Wl,--rpath,/usr/pkg\(/[^ 	`"':;,]*\)$|\1-Wl,--rpath,_bUiLdLiNk__usr_pkg#\2|g
s|^-Wl,--rpath,/usr/pkg\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,--rpath,_bUiLdLiNk__usr_pkg#\1|g
s|^-Wl,--rpath,/usr/pkg\(/[^ 	`"':;,]*\)$|-Wl,--rpath,_bUiLdLiNk__usr_pkg#\1|g
s|\([ 	`"':;,]\)-Wl,-rpath-link,/usr/pkg\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,-rpath-link,_bUiLdLiNk__usr_pkg#\2\3|g
s|\([ 	`"':;,]\)-Wl,-rpath-link,/usr/pkg\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,-rpath-link,_bUiLdLiNk__usr_pkg#\2\3|g
s|\([ 	`"':;,]\)-Wl,-rpath-link,/usr/pkg\(/[^ 	`"':;,]*\)$|\1-Wl,-rpath-link,_bUiLdLiNk__usr_pkg#\2|g
s|^-Wl,-rpath-link,/usr/pkg\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,-rpath-link,_bUiLdLiNk__usr_pkg#\1|g
s|^-Wl,-rpath-link,/usr/pkg\(/[^ 	`"':;,]*\)$|-Wl,-rpath-link,_bUiLdLiNk__usr_pkg#\1|g
s|\([ 	`"':;,]\)-Wl,-rpath,/usr/pkg\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,-rpath,_bUiLdLiNk__usr_pkg#\2\3|g
s|\([ 	`"':;,]\)-Wl,-rpath,/usr/pkg\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,-rpath,_bUiLdLiNk__usr_pkg#\2\3|g
s|\([ 	`"':;,]\)-Wl,-rpath,/usr/pkg\(/[^ 	`"':;,]*\)$|\1-Wl,-rpath,_bUiLdLiNk__usr_pkg#\2|g
s|^-Wl,-rpath,/usr/pkg\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,-rpath,_bUiLdLiNk__usr_pkg#\1|g
s|^-Wl,-rpath,/usr/pkg\(/[^ 	`"':;,]*\)$|-Wl,-rpath,_bUiLdLiNk__usr_pkg#\1|g
s|\([ 	`"':;,]\)-Wl,-R/usr/pkg\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,-R_bUiLdLiNk__usr_pkg#\2\3|g
s|\([ 	`"':;,]\)-Wl,-R/usr/pkg\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,-R_bUiLdLiNk__usr_pkg#\2\3|g
s|\([ 	`"':;,]\)-Wl,-R/usr/pkg\(/[^ 	`"':;,]*\)$|\1-Wl,-R_bUiLdLiNk__usr_pkg#\2|g
s|^-Wl,-R/usr/pkg\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,-R_bUiLdLiNk__usr_pkg#\1|g
s|^-Wl,-R/usr/pkg\(/[^ 	`"':;,]*\)$|-Wl,-R_bUiLdLiNk__usr_pkg#\1|g
s|\([ 	`"':;,]\)-R/usr/pkg\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-R_bUiLdLiNk__usr_pkg#\2\3|g
s|\([ 	`"':;,]\)-R/usr/pkg\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-R_bUiLdLiNk__usr_pkg#\2\3|g
s|\([ 	`"':;,]\)-R/usr/pkg\(/[^ 	`"':;,]*\)$|\1-R_bUiLdLiNk__usr_pkg#\2|g
s|^-R/usr/pkg\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-R_bUiLdLiNk__usr_pkg#\1|g
s|^-R/usr/pkg\(/[^ 	`"':;,]*\)$|-R_bUiLdLiNk__usr_pkg#\1|g
s|\([ 	`"':;,]\)-I/[^ 	`"':;,]*\([ 	`"':;,]\)|\1\2|g
s|\([ 	`"':;,]\)-I/[^ 	`"':;,]*\([ 	`"':;,]\)|\1\2|g
s|\([ 	`"':;,]\)-I/[^ 	`"':;,]*$|\1|g
s|^-I/[^ 	`"':;,]*\([ 	`"':;,]\)|\1|g
s|^-I/[^ 	`"':;,]*$||g
s|\([ 	`"':;,]\)-L/[^ 	`"':;,]*\([ 	`"':;,]\)|\1\2|g
s|\([ 	`"':;,]\)-L/[^ 	`"':;,]*\([ 	`"':;,]\)|\1\2|g
s|\([ 	`"':;,]\)-L/[^ 	`"':;,]*$|\1|g
s|^-L/[^ 	`"':;,]*\([ 	`"':;,]\)|\1|g
s|^-L/[^ 	`"':;,]*$||g
s|\([ 	`"':;,]\)-Wl,--rpath,/[^ 	`"':;,]*\([ 	`"':;,]\)|\1\2|g
s|\([ 	`"':;,]\)-Wl,--rpath,/[^ 	`"':;,]*\([ 	`"':;,]\)|\1\2|g
s|\([ 	`"':;,]\)-Wl,--rpath,/[^ 	`"':;,]*$|\1|g
s|^-Wl,--rpath,/[^ 	`"':;,]*\([ 	`"':;,]\)|\1|g
s|^-Wl,--rpath,/[^ 	`"':;,]*$||g
s|\([ 	`"':;,]\)-Wl,-rpath-link,/[^ 	`"':;,]*\([ 	`"':;,]\)|\1\2|g
s|\([ 	`"':;,]\)-Wl,-rpath-link,/[^ 	`"':;,]*\([ 	`"':;,]\)|\1\2|g
s|\([ 	`"':;,]\)-Wl,-rpath-link,/[^ 	`"':;,]*$|\1|g
s|^-Wl,-rpath-link,/[^ 	`"':;,]*\([ 	`"':;,]\)|\1|g
s|^-Wl,-rpath-link,/[^ 	`"':;,]*$||g
s|\([ 	`"':;,]\)-Wl,-rpath,/[^ 	`"':;,]*\([ 	`"':;,]\)|\1\2|g
s|\([ 	`"':;,]\)-Wl,-rpath,/[^ 	`"':;,]*\([ 	`"':;,]\)|\1\2|g
s|\([ 	`"':;,]\)-Wl,-rpath,/[^ 	`"':;,]*$|\1|g
s|^-Wl,-rpath,/[^ 	`"':;,]*\([ 	`"':;,]\)|\1|g
s|^-Wl,-rpath,/[^ 	`"':;,]*$||g
s|\([ 	`"':;,]\)-Wl,-R/[^ 	`"':;,]*\([ 	`"':;,]\)|\1\2|g
s|\([ 	`"':;,]\)-Wl,-R/[^ 	`"':;,]*\([ 	`"':;,]\)|\1\2|g
s|\([ 	`"':;,]\)-Wl,-R/[^ 	`"':;,]*$|\1|g
s|^-Wl,-R/[^ 	`"':;,]*\([ 	`"':;,]\)|\1|g
s|^-Wl,-R/[^ 	`"':;,]*$||g
s|\([ 	`"':;,]\)-R/[^ 	`"':;,]*\([ 	`"':;,]\)|\1\2|g
s|\([ 	`"':;,]\)-R/[^ 	`"':;,]*\([ 	`"':;,]\)|\1\2|g
s|\([ 	`"':;,]\)-R/[^ 	`"':;,]*$|\1|g
s|^-R/[^ 	`"':;,]*\([ 	`"':;,]\)|\1|g
s|^-R/[^ 	`"':;,]*$||g
s|\([ 	`"':;,]\)-Wl,--rpath,_bUiLdLiNk__usr_pkg_lib#\([ 	`"':;,]\)|\1-Wl,--rpath,/usr/pkg/lib\2|g
s|\([ 	`"':;,]\)-Wl,--rpath,_bUiLdLiNk__usr_pkg_lib#\([ 	`"':;,]\)|\1-Wl,--rpath,/usr/pkg/lib\2|g
s|\([ 	`"':;,]\)-Wl,--rpath,_bUiLdLiNk__usr_pkg_lib#$|\1-Wl,--rpath,/usr/pkg/lib|g
s|^-Wl,--rpath,_bUiLdLiNk__usr_pkg_lib#\([ 	`"':;,]\)|-Wl,--rpath,/usr/pkg/lib\1|g
s|^-Wl,--rpath,_bUiLdLiNk__usr_pkg_lib#$|-Wl,--rpath,/usr/pkg/lib|g
s|\([ 	`"':;,]\)-Wl,-rpath-link,_bUiLdLiNk__usr_pkg_lib#\([ 	`"':;,]\)|\1-Wl,-rpath-link,/usr/pkg/lib\2|g
s|\([ 	`"':;,]\)-Wl,-rpath-link,_bUiLdLiNk__usr_pkg_lib#\([ 	`"':;,]\)|\1-Wl,-rpath-link,/usr/pkg/lib\2|g
s|\([ 	`"':;,]\)-Wl,-rpath-link,_bUiLdLiNk__usr_pkg_lib#$|\1-Wl,-rpath-link,/usr/pkg/lib|g
s|^-Wl,-rpath-link,_bUiLdLiNk__usr_pkg_lib#\([ 	`"':;,]\)|-Wl,-rpath-link,/usr/pkg/lib\1|g
s|^-Wl,-rpath-link,_bUiLdLiNk__usr_pkg_lib#$|-Wl,-rpath-link,/usr/pkg/lib|g
s|\([ 	`"':;,]\)-Wl,-rpath,_bUiLdLiNk__usr_pkg_lib#\([ 	`"':;,]\)|\1-Wl,-rpath,/usr/pkg/lib\2|g
s|\([ 	`"':;,]\)-Wl,-rpath,_bUiLdLiNk__usr_pkg_lib#\([ 	`"':;,]\)|\1-Wl,-rpath,/usr/pkg/lib\2|g
s|\([ 	`"':;,]\)-Wl,-rpath,_bUiLdLiNk__usr_pkg_lib#$|\1-Wl,-rpath,/usr/pkg/lib|g
s|^-Wl,-rpath,_bUiLdLiNk__usr_pkg_lib#\([ 	`"':;,]\)|-Wl,-rpath,/usr/pkg/lib\1|g
s|^-Wl,-rpath,_bUiLdLiNk__usr_pkg_lib#$|-Wl,-rpath,/usr/pkg/lib|g
s|\([ 	`"':;,]\)-Wl,-R_bUiLdLiNk__usr_pkg_lib#\([ 	`"':;,]\)|\1-Wl,-R/usr/pkg/lib\2|g
s|\([ 	`"':;,]\)-Wl,-R_bUiLdLiNk__usr_pkg_lib#\([ 	`"':;,]\)|\1-Wl,-R/usr/pkg/lib\2|g
s|\([ 	`"':;,]\)-Wl,-R_bUiLdLiNk__usr_pkg_lib#$|\1-Wl,-R/usr/pkg/lib|g
s|^-Wl,-R_bUiLdLiNk__usr_pkg_lib#\([ 	`"':;,]\)|-Wl,-R/usr/pkg/lib\1|g
s|^-Wl,-R_bUiLdLiNk__usr_pkg_lib#$|-Wl,-R/usr/pkg/lib|g
s|\([ 	`"':;,]\)-R_bUiLdLiNk__usr_pkg_lib#\([ 	`"':;,]\)|\1-R/usr/pkg/lib\2|g
s|\([ 	`"':;,]\)-R_bUiLdLiNk__usr_pkg_lib#\([ 	`"':;,]\)|\1-R/usr/pkg/lib\2|g
s|\([ 	`"':;,]\)-R_bUiLdLiNk__usr_pkg_lib#$|\1-R/usr/pkg/lib|g
s|^-R_bUiLdLiNk__usr_pkg_lib#\([ 	`"':;,]\)|-R/usr/pkg/lib\1|g
s|^-R_bUiLdLiNk__usr_pkg_lib#$|-R/usr/pkg/lib|g
s|\([ 	`"':;,]\)-Wl,--rpath,_bUiLdLiNk__usr_pkg_lib#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,--rpath,/usr/pkg/lib\2\3|g
s|\([ 	`"':;,]\)-Wl,--rpath,_bUiLdLiNk__usr_pkg_lib#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,--rpath,/usr/pkg/lib\2\3|g
s|\([ 	`"':;,]\)-Wl,--rpath,_bUiLdLiNk__usr_pkg_lib#\(/[^ 	`"':;,]*\)$|\1-Wl,--rpath,/usr/pkg/lib\2|g
s|^-Wl,--rpath,_bUiLdLiNk__usr_pkg_lib#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,--rpath,/usr/pkg/lib\1|g
s|^-Wl,--rpath,_bUiLdLiNk__usr_pkg_lib#\(/[^ 	`"':;,]*\)$|-Wl,--rpath,/usr/pkg/lib\1|g
s|\([ 	`"':;,]\)-Wl,-rpath-link,_bUiLdLiNk__usr_pkg_lib#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,-rpath-link,/usr/pkg/lib\2\3|g
s|\([ 	`"':;,]\)-Wl,-rpath-link,_bUiLdLiNk__usr_pkg_lib#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,-rpath-link,/usr/pkg/lib\2\3|g
s|\([ 	`"':;,]\)-Wl,-rpath-link,_bUiLdLiNk__usr_pkg_lib#\(/[^ 	`"':;,]*\)$|\1-Wl,-rpath-link,/usr/pkg/lib\2|g
s|^-Wl,-rpath-link,_bUiLdLiNk__usr_pkg_lib#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,-rpath-link,/usr/pkg/lib\1|g
s|^-Wl,-rpath-link,_bUiLdLiNk__usr_pkg_lib#\(/[^ 	`"':;,]*\)$|-Wl,-rpath-link,/usr/pkg/lib\1|g
s|\([ 	`"':;,]\)-Wl,-rpath,_bUiLdLiNk__usr_pkg_lib#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,-rpath,/usr/pkg/lib\2\3|g
s|\([ 	`"':;,]\)-Wl,-rpath,_bUiLdLiNk__usr_pkg_lib#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,-rpath,/usr/pkg/lib\2\3|g
s|\([ 	`"':;,]\)-Wl,-rpath,_bUiLdLiNk__usr_pkg_lib#\(/[^ 	`"':;,]*\)$|\1-Wl,-rpath,/usr/pkg/lib\2|g
s|^-Wl,-rpath,_bUiLdLiNk__usr_pkg_lib#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,-rpath,/usr/pkg/lib\1|g
s|^-Wl,-rpath,_bUiLdLiNk__usr_pkg_lib#\(/[^ 	`"':;,]*\)$|-Wl,-rpath,/usr/pkg/lib\1|g
s|\([ 	`"':;,]\)-Wl,-R_bUiLdLiNk__usr_pkg_lib#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,-R/usr/pkg/lib\2\3|g
s|\([ 	`"':;,]\)-Wl,-R_bUiLdLiNk__usr_pkg_lib#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,-R/usr/pkg/lib\2\3|g
s|\([ 	`"':;,]\)-Wl,-R_bUiLdLiNk__usr_pkg_lib#\(/[^ 	`"':;,]*\)$|\1-Wl,-R/usr/pkg/lib\2|g
s|^-Wl,-R_bUiLdLiNk__usr_pkg_lib#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,-R/usr/pkg/lib\1|g
s|^-Wl,-R_bUiLdLiNk__usr_pkg_lib#\(/[^ 	`"':;,]*\)$|-Wl,-R/usr/pkg/lib\1|g
s|\([ 	`"':;,]\)-R_bUiLdLiNk__usr_pkg_lib#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-R/usr/pkg/lib\2\3|g
s|\([ 	`"':;,]\)-R_bUiLdLiNk__usr_pkg_lib#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-R/usr/pkg/lib\2\3|g
s|\([ 	`"':;,]\)-R_bUiLdLiNk__usr_pkg_lib#\(/[^ 	`"':;,]*\)$|\1-R/usr/pkg/lib\2|g
s|^-R_bUiLdLiNk__usr_pkg_lib#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-R/usr/pkg/lib\1|g
s|^-R_bUiLdLiNk__usr_pkg_lib#\(/[^ 	`"':;,]*\)$|-R/usr/pkg/lib\1|g
s|\([ 	`"':;,]\)-I_bUiLdLiNk__usr_include#\([ 	`"':;,]\)|\1-I/usr/include\2|g
s|\([ 	`"':;,]\)-I_bUiLdLiNk__usr_include#\([ 	`"':;,]\)|\1-I/usr/include\2|g
s|\([ 	`"':;,]\)-I_bUiLdLiNk__usr_include#$|\1-I/usr/include|g
s|^-I_bUiLdLiNk__usr_include#\([ 	`"':;,]\)|-I/usr/include\1|g
s|^-I_bUiLdLiNk__usr_include#$|-I/usr/include|g
s|\([ 	`"':;,]\)-L_bUiLdLiNk__usr_include#\([ 	`"':;,]\)|\1-L/usr/include\2|g
s|\([ 	`"':;,]\)-L_bUiLdLiNk__usr_include#\([ 	`"':;,]\)|\1-L/usr/include\2|g
s|\([ 	`"':;,]\)-L_bUiLdLiNk__usr_include#$|\1-L/usr/include|g
s|^-L_bUiLdLiNk__usr_include#\([ 	`"':;,]\)|-L/usr/include\1|g
s|^-L_bUiLdLiNk__usr_include#$|-L/usr/include|g
s|\([ 	`"':;,]\)-Wl,--rpath,_bUiLdLiNk__usr_include#\([ 	`"':;,]\)|\1-Wl,--rpath,/usr/include\2|g
s|\([ 	`"':;,]\)-Wl,--rpath,_bUiLdLiNk__usr_include#\([ 	`"':;,]\)|\1-Wl,--rpath,/usr/include\2|g
s|\([ 	`"':;,]\)-Wl,--rpath,_bUiLdLiNk__usr_include#$|\1-Wl,--rpath,/usr/include|g
s|^-Wl,--rpath,_bUiLdLiNk__usr_include#\([ 	`"':;,]\)|-Wl,--rpath,/usr/include\1|g
s|^-Wl,--rpath,_bUiLdLiNk__usr_include#$|-Wl,--rpath,/usr/include|g
s|\([ 	`"':;,]\)-Wl,-rpath-link,_bUiLdLiNk__usr_include#\([ 	`"':;,]\)|\1-Wl,-rpath-link,/usr/include\2|g
s|\([ 	`"':;,]\)-Wl,-rpath-link,_bUiLdLiNk__usr_include#\([ 	`"':;,]\)|\1-Wl,-rpath-link,/usr/include\2|g
s|\([ 	`"':;,]\)-Wl,-rpath-link,_bUiLdLiNk__usr_include#$|\1-Wl,-rpath-link,/usr/include|g
s|^-Wl,-rpath-link,_bUiLdLiNk__usr_include#\([ 	`"':;,]\)|-Wl,-rpath-link,/usr/include\1|g
s|^-Wl,-rpath-link,_bUiLdLiNk__usr_include#$|-Wl,-rpath-link,/usr/include|g
s|\([ 	`"':;,]\)-Wl,-rpath,_bUiLdLiNk__usr_include#\([ 	`"':;,]\)|\1-Wl,-rpath,/usr/include\2|g
s|\([ 	`"':;,]\)-Wl,-rpath,_bUiLdLiNk__usr_include#\([ 	`"':;,]\)|\1-Wl,-rpath,/usr/include\2|g
s|\([ 	`"':;,]\)-Wl,-rpath,_bUiLdLiNk__usr_include#$|\1-Wl,-rpath,/usr/include|g
s|^-Wl,-rpath,_bUiLdLiNk__usr_include#\([ 	`"':;,]\)|-Wl,-rpath,/usr/include\1|g
s|^-Wl,-rpath,_bUiLdLiNk__usr_include#$|-Wl,-rpath,/usr/include|g
s|\([ 	`"':;,]\)-Wl,-R_bUiLdLiNk__usr_include#\([ 	`"':;,]\)|\1-Wl,-R/usr/include\2|g
s|\([ 	`"':;,]\)-Wl,-R_bUiLdLiNk__usr_include#\([ 	`"':;,]\)|\1-Wl,-R/usr/include\2|g
s|\([ 	`"':;,]\)-Wl,-R_bUiLdLiNk__usr_include#$|\1-Wl,-R/usr/include|g
s|^-Wl,-R_bUiLdLiNk__usr_include#\([ 	`"':;,]\)|-Wl,-R/usr/include\1|g
s|^-Wl,-R_bUiLdLiNk__usr_include#$|-Wl,-R/usr/include|g
s|\([ 	`"':;,]\)-R_bUiLdLiNk__usr_include#\([ 	`"':;,]\)|\1-R/usr/include\2|g
s|\([ 	`"':;,]\)-R_bUiLdLiNk__usr_include#\([ 	`"':;,]\)|\1-R/usr/include\2|g
s|\([ 	`"':;,]\)-R_bUiLdLiNk__usr_include#$|\1-R/usr/include|g
s|^-R_bUiLdLiNk__usr_include#\([ 	`"':;,]\)|-R/usr/include\1|g
s|^-R_bUiLdLiNk__usr_include#$|-R/usr/include|g
s|\([ 	`"':;,]\)_bUiLdLiNk__usr_include#\(/[^ 	`"':;,]*\.la[ 	`"':;,]\)|\1/usr/include\2|g
s|\([ 	`"':;,]\)_bUiLdLiNk__usr_include#\(/[^ 	`"':;,]*\.la[ 	`"':;,]\)|\1/usr/include\2|g
s|\([ 	`"':;,]\)_bUiLdLiNk__usr_include#\(/[^ 	`"':;,]*\.la\)$|\1/usr/include\2|g
s|^_bUiLdLiNk__usr_include#\(/[^ 	`"':;,]*\.la[ 	`"':;,]\)|/usr/include\1|g
s|^_bUiLdLiNk__usr_include#\(/[^ 	`"':;,]*\.la\)$|/usr/include\1|g
s|\([ 	`"':;,]\)-I_bUiLdLiNk__usr_include#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-I/usr/include\2\3|g
s|\([ 	`"':;,]\)-I_bUiLdLiNk__usr_include#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-I/usr/include\2\3|g
s|\([ 	`"':;,]\)-I_bUiLdLiNk__usr_include#\(/[^ 	`"':;,]*\)$|\1-I/usr/include\2|g
s|^-I_bUiLdLiNk__usr_include#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-I/usr/include\1|g
s|^-I_bUiLdLiNk__usr_include#\(/[^ 	`"':;,]*\)$|-I/usr/include\1|g
s|\([ 	`"':;,]\)-L_bUiLdLiNk__usr_include#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-L/usr/include\2\3|g
s|\([ 	`"':;,]\)-L_bUiLdLiNk__usr_include#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-L/usr/include\2\3|g
s|\([ 	`"':;,]\)-L_bUiLdLiNk__usr_include#\(/[^ 	`"':;,]*\)$|\1-L/usr/include\2|g
s|^-L_bUiLdLiNk__usr_include#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-L/usr/include\1|g
s|^-L_bUiLdLiNk__usr_include#\(/[^ 	`"':;,]*\)$|-L/usr/include\1|g
s|\([ 	`"':;,]\)-Wl,--rpath,_bUiLdLiNk__usr_include#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,--rpath,/usr/include\2\3|g
s|\([ 	`"':;,]\)-Wl,--rpath,_bUiLdLiNk__usr_include#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,--rpath,/usr/include\2\3|g
s|\([ 	`"':;,]\)-Wl,--rpath,_bUiLdLiNk__usr_include#\(/[^ 	`"':;,]*\)$|\1-Wl,--rpath,/usr/include\2|g
s|^-Wl,--rpath,_bUiLdLiNk__usr_include#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,--rpath,/usr/include\1|g
s|^-Wl,--rpath,_bUiLdLiNk__usr_include#\(/[^ 	`"':;,]*\)$|-Wl,--rpath,/usr/include\1|g
s|\([ 	`"':;,]\)-Wl,-rpath-link,_bUiLdLiNk__usr_include#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,-rpath-link,/usr/include\2\3|g
s|\([ 	`"':;,]\)-Wl,-rpath-link,_bUiLdLiNk__usr_include#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,-rpath-link,/usr/include\2\3|g
s|\([ 	`"':;,]\)-Wl,-rpath-link,_bUiLdLiNk__usr_include#\(/[^ 	`"':;,]*\)$|\1-Wl,-rpath-link,/usr/include\2|g
s|^-Wl,-rpath-link,_bUiLdLiNk__usr_include#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,-rpath-link,/usr/include\1|g
s|^-Wl,-rpath-link,_bUiLdLiNk__usr_include#\(/[^ 	`"':;,]*\)$|-Wl,-rpath-link,/usr/include\1|g
s|\([ 	`"':;,]\)-Wl,-rpath,_bUiLdLiNk__usr_include#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,-rpath,/usr/include\2\3|g
s|\([ 	`"':;,]\)-Wl,-rpath,_bUiLdLiNk__usr_include#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,-rpath,/usr/include\2\3|g
s|\([ 	`"':;,]\)-Wl,-rpath,_bUiLdLiNk__usr_include#\(/[^ 	`"':;,]*\)$|\1-Wl,-rpath,/usr/include\2|g
s|^-Wl,-rpath,_bUiLdLiNk__usr_include#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,-rpath,/usr/include\1|g
s|^-Wl,-rpath,_bUiLdLiNk__usr_include#\(/[^ 	`"':;,]*\)$|-Wl,-rpath,/usr/include\1|g
s|\([ 	`"':;,]\)-Wl,-R_bUiLdLiNk__usr_include#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,-R/usr/include\2\3|g
s|\([ 	`"':;,]\)-Wl,-R_bUiLdLiNk__usr_include#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,-R/usr/include\2\3|g
s|\([ 	`"':;,]\)-Wl,-R_bUiLdLiNk__usr_include#\(/[^ 	`"':;,]*\)$|\1-Wl,-R/usr/include\2|g
s|^-Wl,-R_bUiLdLiNk__usr_include#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,-R/usr/include\1|g
s|^-Wl,-R_bUiLdLiNk__usr_include#\(/[^ 	`"':;,]*\)$|-Wl,-R/usr/include\1|g
s|\([ 	`"':;,]\)-R_bUiLdLiNk__usr_include#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-R/usr/include\2\3|g
s|\([ 	`"':;,]\)-R_bUiLdLiNk__usr_include#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-R/usr/include\2\3|g
s|\([ 	`"':;,]\)-R_bUiLdLiNk__usr_include#\(/[^ 	`"':;,]*\)$|\1-R/usr/include\2|g
s|^-R_bUiLdLiNk__usr_include#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-R/usr/include\1|g
s|^-R_bUiLdLiNk__usr_include#\(/[^ 	`"':;,]*\)$|-R/usr/include\1|g
s|\([ 	`"':;,]\)-I_bUiLdLiNk__usr_lib#\([ 	`"':;,]\)|\1-I/usr/lib\2|g
s|\([ 	`"':;,]\)-I_bUiLdLiNk__usr_lib#\([ 	`"':;,]\)|\1-I/usr/lib\2|g
s|\([ 	`"':;,]\)-I_bUiLdLiNk__usr_lib#$|\1-I/usr/lib|g
s|^-I_bUiLdLiNk__usr_lib#\([ 	`"':;,]\)|-I/usr/lib\1|g
s|^-I_bUiLdLiNk__usr_lib#$|-I/usr/lib|g
s|\([ 	`"':;,]\)-L_bUiLdLiNk__usr_lib#\([ 	`"':;,]\)|\1-L/usr/lib\2|g
s|\([ 	`"':;,]\)-L_bUiLdLiNk__usr_lib#\([ 	`"':;,]\)|\1-L/usr/lib\2|g
s|\([ 	`"':;,]\)-L_bUiLdLiNk__usr_lib#$|\1-L/usr/lib|g
s|^-L_bUiLdLiNk__usr_lib#\([ 	`"':;,]\)|-L/usr/lib\1|g
s|^-L_bUiLdLiNk__usr_lib#$|-L/usr/lib|g
s|\([ 	`"':;,]\)-Wl,--rpath,_bUiLdLiNk__usr_lib#\([ 	`"':;,]\)|\1-Wl,--rpath,/usr/lib\2|g
s|\([ 	`"':;,]\)-Wl,--rpath,_bUiLdLiNk__usr_lib#\([ 	`"':;,]\)|\1-Wl,--rpath,/usr/lib\2|g
s|\([ 	`"':;,]\)-Wl,--rpath,_bUiLdLiNk__usr_lib#$|\1-Wl,--rpath,/usr/lib|g
s|^-Wl,--rpath,_bUiLdLiNk__usr_lib#\([ 	`"':;,]\)|-Wl,--rpath,/usr/lib\1|g
s|^-Wl,--rpath,_bUiLdLiNk__usr_lib#$|-Wl,--rpath,/usr/lib|g
s|\([ 	`"':;,]\)-Wl,-rpath-link,_bUiLdLiNk__usr_lib#\([ 	`"':;,]\)|\1-Wl,-rpath-link,/usr/lib\2|g
s|\([ 	`"':;,]\)-Wl,-rpath-link,_bUiLdLiNk__usr_lib#\([ 	`"':;,]\)|\1-Wl,-rpath-link,/usr/lib\2|g
s|\([ 	`"':;,]\)-Wl,-rpath-link,_bUiLdLiNk__usr_lib#$|\1-Wl,-rpath-link,/usr/lib|g
s|^-Wl,-rpath-link,_bUiLdLiNk__usr_lib#\([ 	`"':;,]\)|-Wl,-rpath-link,/usr/lib\1|g
s|^-Wl,-rpath-link,_bUiLdLiNk__usr_lib#$|-Wl,-rpath-link,/usr/lib|g
s|\([ 	`"':;,]\)-Wl,-rpath,_bUiLdLiNk__usr_lib#\([ 	`"':;,]\)|\1-Wl,-rpath,/usr/lib\2|g
s|\([ 	`"':;,]\)-Wl,-rpath,_bUiLdLiNk__usr_lib#\([ 	`"':;,]\)|\1-Wl,-rpath,/usr/lib\2|g
s|\([ 	`"':;,]\)-Wl,-rpath,_bUiLdLiNk__usr_lib#$|\1-Wl,-rpath,/usr/lib|g
s|^-Wl,-rpath,_bUiLdLiNk__usr_lib#\([ 	`"':;,]\)|-Wl,-rpath,/usr/lib\1|g
s|^-Wl,-rpath,_bUiLdLiNk__usr_lib#$|-Wl,-rpath,/usr/lib|g
s|\([ 	`"':;,]\)-Wl,-R_bUiLdLiNk__usr_lib#\([ 	`"':;,]\)|\1-Wl,-R/usr/lib\2|g
s|\([ 	`"':;,]\)-Wl,-R_bUiLdLiNk__usr_lib#\([ 	`"':;,]\)|\1-Wl,-R/usr/lib\2|g
s|\([ 	`"':;,]\)-Wl,-R_bUiLdLiNk__usr_lib#$|\1-Wl,-R/usr/lib|g
s|^-Wl,-R_bUiLdLiNk__usr_lib#\([ 	`"':;,]\)|-Wl,-R/usr/lib\1|g
s|^-Wl,-R_bUiLdLiNk__usr_lib#$|-Wl,-R/usr/lib|g
s|\([ 	`"':;,]\)-R_bUiLdLiNk__usr_lib#\([ 	`"':;,]\)|\1-R/usr/lib\2|g
s|\([ 	`"':;,]\)-R_bUiLdLiNk__usr_lib#\([ 	`"':;,]\)|\1-R/usr/lib\2|g
s|\([ 	`"':;,]\)-R_bUiLdLiNk__usr_lib#$|\1-R/usr/lib|g
s|^-R_bUiLdLiNk__usr_lib#\([ 	`"':;,]\)|-R/usr/lib\1|g
s|^-R_bUiLdLiNk__usr_lib#$|-R/usr/lib|g
s|\([ 	`"':;,]\)_bUiLdLiNk__usr_lib#\(/[^ 	`"':;,]*\.la[ 	`"':;,]\)|\1/usr/lib\2|g
s|\([ 	`"':;,]\)_bUiLdLiNk__usr_lib#\(/[^ 	`"':;,]*\.la[ 	`"':;,]\)|\1/usr/lib\2|g
s|\([ 	`"':;,]\)_bUiLdLiNk__usr_lib#\(/[^ 	`"':;,]*\.la\)$|\1/usr/lib\2|g
s|^_bUiLdLiNk__usr_lib#\(/[^ 	`"':;,]*\.la[ 	`"':;,]\)|/usr/lib\1|g
s|^_bUiLdLiNk__usr_lib#\(/[^ 	`"':;,]*\.la\)$|/usr/lib\1|g
s|\([ 	`"':;,]\)-I_bUiLdLiNk__usr_lib#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-I/usr/lib\2\3|g
s|\([ 	`"':;,]\)-I_bUiLdLiNk__usr_lib#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-I/usr/lib\2\3|g
s|\([ 	`"':;,]\)-I_bUiLdLiNk__usr_lib#\(/[^ 	`"':;,]*\)$|\1-I/usr/lib\2|g
s|^-I_bUiLdLiNk__usr_lib#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-I/usr/lib\1|g
s|^-I_bUiLdLiNk__usr_lib#\(/[^ 	`"':;,]*\)$|-I/usr/lib\1|g
s|\([ 	`"':;,]\)-L_bUiLdLiNk__usr_lib#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-L/usr/lib\2\3|g
s|\([ 	`"':;,]\)-L_bUiLdLiNk__usr_lib#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-L/usr/lib\2\3|g
s|\([ 	`"':;,]\)-L_bUiLdLiNk__usr_lib#\(/[^ 	`"':;,]*\)$|\1-L/usr/lib\2|g
s|^-L_bUiLdLiNk__usr_lib#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-L/usr/lib\1|g
s|^-L_bUiLdLiNk__usr_lib#\(/[^ 	`"':;,]*\)$|-L/usr/lib\1|g
s|\([ 	`"':;,]\)-Wl,--rpath,_bUiLdLiNk__usr_lib#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,--rpath,/usr/lib\2\3|g
s|\([ 	`"':;,]\)-Wl,--rpath,_bUiLdLiNk__usr_lib#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,--rpath,/usr/lib\2\3|g
s|\([ 	`"':;,]\)-Wl,--rpath,_bUiLdLiNk__usr_lib#\(/[^ 	`"':;,]*\)$|\1-Wl,--rpath,/usr/lib\2|g
s|^-Wl,--rpath,_bUiLdLiNk__usr_lib#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,--rpath,/usr/lib\1|g
s|^-Wl,--rpath,_bUiLdLiNk__usr_lib#\(/[^ 	`"':;,]*\)$|-Wl,--rpath,/usr/lib\1|g
s|\([ 	`"':;,]\)-Wl,-rpath-link,_bUiLdLiNk__usr_lib#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,-rpath-link,/usr/lib\2\3|g
s|\([ 	`"':;,]\)-Wl,-rpath-link,_bUiLdLiNk__usr_lib#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,-rpath-link,/usr/lib\2\3|g
s|\([ 	`"':;,]\)-Wl,-rpath-link,_bUiLdLiNk__usr_lib#\(/[^ 	`"':;,]*\)$|\1-Wl,-rpath-link,/usr/lib\2|g
s|^-Wl,-rpath-link,_bUiLdLiNk__usr_lib#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,-rpath-link,/usr/lib\1|g
s|^-Wl,-rpath-link,_bUiLdLiNk__usr_lib#\(/[^ 	`"':;,]*\)$|-Wl,-rpath-link,/usr/lib\1|g
s|\([ 	`"':;,]\)-Wl,-rpath,_bUiLdLiNk__usr_lib#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,-rpath,/usr/lib\2\3|g
s|\([ 	`"':;,]\)-Wl,-rpath,_bUiLdLiNk__usr_lib#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,-rpath,/usr/lib\2\3|g
s|\([ 	`"':;,]\)-Wl,-rpath,_bUiLdLiNk__usr_lib#\(/[^ 	`"':;,]*\)$|\1-Wl,-rpath,/usr/lib\2|g
s|^-Wl,-rpath,_bUiLdLiNk__usr_lib#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,-rpath,/usr/lib\1|g
s|^-Wl,-rpath,_bUiLdLiNk__usr_lib#\(/[^ 	`"':;,]*\)$|-Wl,-rpath,/usr/lib\1|g
s|\([ 	`"':;,]\)-Wl,-R_bUiLdLiNk__usr_lib#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,-R/usr/lib\2\3|g
s|\([ 	`"':;,]\)-Wl,-R_bUiLdLiNk__usr_lib#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,-R/usr/lib\2\3|g
s|\([ 	`"':;,]\)-Wl,-R_bUiLdLiNk__usr_lib#\(/[^ 	`"':;,]*\)$|\1-Wl,-R/usr/lib\2|g
s|^-Wl,-R_bUiLdLiNk__usr_lib#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,-R/usr/lib\1|g
s|^-Wl,-R_bUiLdLiNk__usr_lib#\(/[^ 	`"':;,]*\)$|-Wl,-R/usr/lib\1|g
s|\([ 	`"':;,]\)-R_bUiLdLiNk__usr_lib#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-R/usr/lib\2\3|g
s|\([ 	`"':;,]\)-R_bUiLdLiNk__usr_lib#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-R/usr/lib\2\3|g
s|\([ 	`"':;,]\)-R_bUiLdLiNk__usr_lib#\(/[^ 	`"':;,]*\)$|\1-R/usr/lib\2|g
s|^-R_bUiLdLiNk__usr_lib#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-R/usr/lib\1|g
s|^-R_bUiLdLiNk__usr_lib#\(/[^ 	`"':;,]*\)$|-R/usr/lib\1|g
s|\([ 	`"':;,]\)-I_bUiLdLiNk__usr_pkg#\([ 	`"':;,]\)|\1-I/usr/pkg\2|g
s|\([ 	`"':;,]\)-I_bUiLdLiNk__usr_pkg#\([ 	`"':;,]\)|\1-I/usr/pkg\2|g
s|\([ 	`"':;,]\)-I_bUiLdLiNk__usr_pkg#$|\1-I/usr/pkg|g
s|^-I_bUiLdLiNk__usr_pkg#\([ 	`"':;,]\)|-I/usr/pkg\1|g
s|^-I_bUiLdLiNk__usr_pkg#$|-I/usr/pkg|g
s|\([ 	`"':;,]\)-L_bUiLdLiNk__usr_pkg#\([ 	`"':;,]\)|\1-L/usr/pkg\2|g
s|\([ 	`"':;,]\)-L_bUiLdLiNk__usr_pkg#\([ 	`"':;,]\)|\1-L/usr/pkg\2|g
s|\([ 	`"':;,]\)-L_bUiLdLiNk__usr_pkg#$|\1-L/usr/pkg|g
s|^-L_bUiLdLiNk__usr_pkg#\([ 	`"':;,]\)|-L/usr/pkg\1|g
s|^-L_bUiLdLiNk__usr_pkg#$|-L/usr/pkg|g
s|\([ 	`"':;,]\)-Wl,--rpath,_bUiLdLiNk__usr_pkg#\([ 	`"':;,]\)|\1-Wl,--rpath,/usr/pkg\2|g
s|\([ 	`"':;,]\)-Wl,--rpath,_bUiLdLiNk__usr_pkg#\([ 	`"':;,]\)|\1-Wl,--rpath,/usr/pkg\2|g
s|\([ 	`"':;,]\)-Wl,--rpath,_bUiLdLiNk__usr_pkg#$|\1-Wl,--rpath,/usr/pkg|g
s|^-Wl,--rpath,_bUiLdLiNk__usr_pkg#\([ 	`"':;,]\)|-Wl,--rpath,/usr/pkg\1|g
s|^-Wl,--rpath,_bUiLdLiNk__usr_pkg#$|-Wl,--rpath,/usr/pkg|g
s|\([ 	`"':;,]\)-Wl,-rpath-link,_bUiLdLiNk__usr_pkg#\([ 	`"':;,]\)|\1-Wl,-rpath-link,/usr/pkg\2|g
s|\([ 	`"':;,]\)-Wl,-rpath-link,_bUiLdLiNk__usr_pkg#\([ 	`"':;,]\)|\1-Wl,-rpath-link,/usr/pkg\2|g
s|\([ 	`"':;,]\)-Wl,-rpath-link,_bUiLdLiNk__usr_pkg#$|\1-Wl,-rpath-link,/usr/pkg|g
s|^-Wl,-rpath-link,_bUiLdLiNk__usr_pkg#\([ 	`"':;,]\)|-Wl,-rpath-link,/usr/pkg\1|g
s|^-Wl,-rpath-link,_bUiLdLiNk__usr_pkg#$|-Wl,-rpath-link,/usr/pkg|g
s|\([ 	`"':;,]\)-Wl,-rpath,_bUiLdLiNk__usr_pkg#\([ 	`"':;,]\)|\1-Wl,-rpath,/usr/pkg\2|g
s|\([ 	`"':;,]\)-Wl,-rpath,_bUiLdLiNk__usr_pkg#\([ 	`"':;,]\)|\1-Wl,-rpath,/usr/pkg\2|g
s|\([ 	`"':;,]\)-Wl,-rpath,_bUiLdLiNk__usr_pkg#$|\1-Wl,-rpath,/usr/pkg|g
s|^-Wl,-rpath,_bUiLdLiNk__usr_pkg#\([ 	`"':;,]\)|-Wl,-rpath,/usr/pkg\1|g
s|^-Wl,-rpath,_bUiLdLiNk__usr_pkg#$|-Wl,-rpath,/usr/pkg|g
s|\([ 	`"':;,]\)-Wl,-R_bUiLdLiNk__usr_pkg#\([ 	`"':;,]\)|\1-Wl,-R/usr/pkg\2|g
s|\([ 	`"':;,]\)-Wl,-R_bUiLdLiNk__usr_pkg#\([ 	`"':;,]\)|\1-Wl,-R/usr/pkg\2|g
s|\([ 	`"':;,]\)-Wl,-R_bUiLdLiNk__usr_pkg#$|\1-Wl,-R/usr/pkg|g
s|^-Wl,-R_bUiLdLiNk__usr_pkg#\([ 	`"':;,]\)|-Wl,-R/usr/pkg\1|g
s|^-Wl,-R_bUiLdLiNk__usr_pkg#$|-Wl,-R/usr/pkg|g
s|\([ 	`"':;,]\)-R_bUiLdLiNk__usr_pkg#\([ 	`"':;,]\)|\1-R/usr/pkg\2|g
s|\([ 	`"':;,]\)-R_bUiLdLiNk__usr_pkg#\([ 	`"':;,]\)|\1-R/usr/pkg\2|g
s|\([ 	`"':;,]\)-R_bUiLdLiNk__usr_pkg#$|\1-R/usr/pkg|g
s|^-R_bUiLdLiNk__usr_pkg#\([ 	`"':;,]\)|-R/usr/pkg\1|g
s|^-R_bUiLdLiNk__usr_pkg#$|-R/usr/pkg|g
s|\([ 	`"':;,]\)_bUiLdLiNk__usr_pkg#\(/[^ 	`"':;,]*\.la[ 	`"':;,]\)|\1/usr/pkg\2|g
s|\([ 	`"':;,]\)_bUiLdLiNk__usr_pkg#\(/[^ 	`"':;,]*\.la[ 	`"':;,]\)|\1/usr/pkg\2|g
s|\([ 	`"':;,]\)_bUiLdLiNk__usr_pkg#\(/[^ 	`"':;,]*\.la\)$|\1/usr/pkg\2|g
s|^_bUiLdLiNk__usr_pkg#\(/[^ 	`"':;,]*\.la[ 	`"':;,]\)|/usr/pkg\1|g
s|^_bUiLdLiNk__usr_pkg#\(/[^ 	`"':;,]*\.la\)$|/usr/pkg\1|g
s|\([ 	`"':;,]\)-I_bUiLdLiNk__usr_pkg#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-I/usr/pkg\2\3|g
s|\([ 	`"':;,]\)-I_bUiLdLiNk__usr_pkg#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-I/usr/pkg\2\3|g
s|\([ 	`"':;,]\)-I_bUiLdLiNk__usr_pkg#\(/[^ 	`"':;,]*\)$|\1-I/usr/pkg\2|g
s|^-I_bUiLdLiNk__usr_pkg#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-I/usr/pkg\1|g
s|^-I_bUiLdLiNk__usr_pkg#\(/[^ 	`"':;,]*\)$|-I/usr/pkg\1|g
s|\([ 	`"':;,]\)-L_bUiLdLiNk__usr_pkg#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-L/usr/pkg\2\3|g
s|\([ 	`"':;,]\)-L_bUiLdLiNk__usr_pkg#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-L/usr/pkg\2\3|g
s|\([ 	`"':;,]\)-L_bUiLdLiNk__usr_pkg#\(/[^ 	`"':;,]*\)$|\1-L/usr/pkg\2|g
s|^-L_bUiLdLiNk__usr_pkg#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-L/usr/pkg\1|g
s|^-L_bUiLdLiNk__usr_pkg#\(/[^ 	`"':;,]*\)$|-L/usr/pkg\1|g
s|\([ 	`"':;,]\)-Wl,--rpath,_bUiLdLiNk__usr_pkg#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,--rpath,/usr/pkg\2\3|g
s|\([ 	`"':;,]\)-Wl,--rpath,_bUiLdLiNk__usr_pkg#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,--rpath,/usr/pkg\2\3|g
s|\([ 	`"':;,]\)-Wl,--rpath,_bUiLdLiNk__usr_pkg#\(/[^ 	`"':;,]*\)$|\1-Wl,--rpath,/usr/pkg\2|g
s|^-Wl,--rpath,_bUiLdLiNk__usr_pkg#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,--rpath,/usr/pkg\1|g
s|^-Wl,--rpath,_bUiLdLiNk__usr_pkg#\(/[^ 	`"':;,]*\)$|-Wl,--rpath,/usr/pkg\1|g
s|\([ 	`"':;,]\)-Wl,-rpath-link,_bUiLdLiNk__usr_pkg#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,-rpath-link,/usr/pkg\2\3|g
s|\([ 	`"':;,]\)-Wl,-rpath-link,_bUiLdLiNk__usr_pkg#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,-rpath-link,/usr/pkg\2\3|g
s|\([ 	`"':;,]\)-Wl,-rpath-link,_bUiLdLiNk__usr_pkg#\(/[^ 	`"':;,]*\)$|\1-Wl,-rpath-link,/usr/pkg\2|g
s|^-Wl,-rpath-link,_bUiLdLiNk__usr_pkg#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,-rpath-link,/usr/pkg\1|g
s|^-Wl,-rpath-link,_bUiLdLiNk__usr_pkg#\(/[^ 	`"':;,]*\)$|-Wl,-rpath-link,/usr/pkg\1|g
s|\([ 	`"':;,]\)-Wl,-rpath,_bUiLdLiNk__usr_pkg#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,-rpath,/usr/pkg\2\3|g
s|\([ 	`"':;,]\)-Wl,-rpath,_bUiLdLiNk__usr_pkg#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,-rpath,/usr/pkg\2\3|g
s|\([ 	`"':;,]\)-Wl,-rpath,_bUiLdLiNk__usr_pkg#\(/[^ 	`"':;,]*\)$|\1-Wl,-rpath,/usr/pkg\2|g
s|^-Wl,-rpath,_bUiLdLiNk__usr_pkg#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,-rpath,/usr/pkg\1|g
s|^-Wl,-rpath,_bUiLdLiNk__usr_pkg#\(/[^ 	`"':;,]*\)$|-Wl,-rpath,/usr/pkg\1|g
s|\([ 	`"':;,]\)-Wl,-R_bUiLdLiNk__usr_pkg#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,-R/usr/pkg\2\3|g
s|\([ 	`"':;,]\)-Wl,-R_bUiLdLiNk__usr_pkg#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,-R/usr/pkg\2\3|g
s|\([ 	`"':;,]\)-Wl,-R_bUiLdLiNk__usr_pkg#\(/[^ 	`"':;,]*\)$|\1-Wl,-R/usr/pkg\2|g
s|^-Wl,-R_bUiLdLiNk__usr_pkg#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,-R/usr/pkg\1|g
s|^-Wl,-R_bUiLdLiNk__usr_pkg#\(/[^ 	`"':;,]*\)$|-Wl,-R/usr/pkg\1|g
s|\([ 	`"':;,]\)-R_bUiLdLiNk__usr_pkg#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-R/usr/pkg\2\3|g
s|\([ 	`"':;,]\)-R_bUiLdLiNk__usr_pkg#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-R/usr/pkg\2\3|g
s|\([ 	`"':;,]\)-R_bUiLdLiNk__usr_pkg#\(/[^ 	`"':;,]*\)$|\1-R/usr/pkg\2|g
s|^-R_bUiLdLiNk__usr_pkg#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-R/usr/pkg\1|g
s|^-R_bUiLdLiNk__usr_pkg#\(/[^ 	`"':;,]*\)$|-R/usr/pkg\1|g
s|\([ 	`"':;,]\)-I_bUiLdLiNk__usr_pkgsrc_wip_eor_work#\([ 	`"':;,]\)|\1-I/usr/pkgsrc/wip/eor/work\2|g
s|\([ 	`"':;,]\)-I_bUiLdLiNk__usr_pkgsrc_wip_eor_work#\([ 	`"':;,]\)|\1-I/usr/pkgsrc/wip/eor/work\2|g
s|\([ 	`"':;,]\)-I_bUiLdLiNk__usr_pkgsrc_wip_eor_work#$|\1-I/usr/pkgsrc/wip/eor/work|g
s|^-I_bUiLdLiNk__usr_pkgsrc_wip_eor_work#\([ 	`"':;,]\)|-I/usr/pkgsrc/wip/eor/work\1|g
s|^-I_bUiLdLiNk__usr_pkgsrc_wip_eor_work#$|-I/usr/pkgsrc/wip/eor/work|g
s|\([ 	`"':;,]\)-L_bUiLdLiNk__usr_pkgsrc_wip_eor_work#\([ 	`"':;,]\)|\1-L/usr/pkgsrc/wip/eor/work\2|g
s|\([ 	`"':;,]\)-L_bUiLdLiNk__usr_pkgsrc_wip_eor_work#\([ 	`"':;,]\)|\1-L/usr/pkgsrc/wip/eor/work\2|g
s|\([ 	`"':;,]\)-L_bUiLdLiNk__usr_pkgsrc_wip_eor_work#$|\1-L/usr/pkgsrc/wip/eor/work|g
s|^-L_bUiLdLiNk__usr_pkgsrc_wip_eor_work#\([ 	`"':;,]\)|-L/usr/pkgsrc/wip/eor/work\1|g
s|^-L_bUiLdLiNk__usr_pkgsrc_wip_eor_work#$|-L/usr/pkgsrc/wip/eor/work|g
s|\([ 	`"':;,]\)-Wl,--rpath,_bUiLdLiNk__usr_pkgsrc_wip_eor_work#\([ 	`"':;,]\)|\1-Wl,--rpath,/usr/pkgsrc/wip/eor/work\2|g
s|\([ 	`"':;,]\)-Wl,--rpath,_bUiLdLiNk__usr_pkgsrc_wip_eor_work#\([ 	`"':;,]\)|\1-Wl,--rpath,/usr/pkgsrc/wip/eor/work\2|g
s|\([ 	`"':;,]\)-Wl,--rpath,_bUiLdLiNk__usr_pkgsrc_wip_eor_work#$|\1-Wl,--rpath,/usr/pkgsrc/wip/eor/work|g
s|^-Wl,--rpath,_bUiLdLiNk__usr_pkgsrc_wip_eor_work#\([ 	`"':;,]\)|-Wl,--rpath,/usr/pkgsrc/wip/eor/work\1|g
s|^-Wl,--rpath,_bUiLdLiNk__usr_pkgsrc_wip_eor_work#$|-Wl,--rpath,/usr/pkgsrc/wip/eor/work|g
s|\([ 	`"':;,]\)-Wl,-rpath-link,_bUiLdLiNk__usr_pkgsrc_wip_eor_work#\([ 	`"':;,]\)|\1-Wl,-rpath-link,/usr/pkgsrc/wip/eor/work\2|g
s|\([ 	`"':;,]\)-Wl,-rpath-link,_bUiLdLiNk__usr_pkgsrc_wip_eor_work#\([ 	`"':;,]\)|\1-Wl,-rpath-link,/usr/pkgsrc/wip/eor/work\2|g
s|\([ 	`"':;,]\)-Wl,-rpath-link,_bUiLdLiNk__usr_pkgsrc_wip_eor_work#$|\1-Wl,-rpath-link,/usr/pkgsrc/wip/eor/work|g
s|^-Wl,-rpath-link,_bUiLdLiNk__usr_pkgsrc_wip_eor_work#\([ 	`"':;,]\)|-Wl,-rpath-link,/usr/pkgsrc/wip/eor/work\1|g
s|^-Wl,-rpath-link,_bUiLdLiNk__usr_pkgsrc_wip_eor_work#$|-Wl,-rpath-link,/usr/pkgsrc/wip/eor/work|g
s|\([ 	`"':;,]\)-Wl,-rpath,_bUiLdLiNk__usr_pkgsrc_wip_eor_work#\([ 	`"':;,]\)|\1-Wl,-rpath,/usr/pkgsrc/wip/eor/work\2|g
s|\([ 	`"':;,]\)-Wl,-rpath,_bUiLdLiNk__usr_pkgsrc_wip_eor_work#\([ 	`"':;,]\)|\1-Wl,-rpath,/usr/pkgsrc/wip/eor/work\2|g
s|\([ 	`"':;,]\)-Wl,-rpath,_bUiLdLiNk__usr_pkgsrc_wip_eor_work#$|\1-Wl,-rpath,/usr/pkgsrc/wip/eor/work|g
s|^-Wl,-rpath,_bUiLdLiNk__usr_pkgsrc_wip_eor_work#\([ 	`"':;,]\)|-Wl,-rpath,/usr/pkgsrc/wip/eor/work\1|g
s|^-Wl,-rpath,_bUiLdLiNk__usr_pkgsrc_wip_eor_work#$|-Wl,-rpath,/usr/pkgsrc/wip/eor/work|g
s|\([ 	`"':;,]\)-Wl,-R_bUiLdLiNk__usr_pkgsrc_wip_eor_work#\([ 	`"':;,]\)|\1-Wl,-R/usr/pkgsrc/wip/eor/work\2|g
s|\([ 	`"':;,]\)-Wl,-R_bUiLdLiNk__usr_pkgsrc_wip_eor_work#\([ 	`"':;,]\)|\1-Wl,-R/usr/pkgsrc/wip/eor/work\2|g
s|\([ 	`"':;,]\)-Wl,-R_bUiLdLiNk__usr_pkgsrc_wip_eor_work#$|\1-Wl,-R/usr/pkgsrc/wip/eor/work|g
s|^-Wl,-R_bUiLdLiNk__usr_pkgsrc_wip_eor_work#\([ 	`"':;,]\)|-Wl,-R/usr/pkgsrc/wip/eor/work\1|g
s|^-Wl,-R_bUiLdLiNk__usr_pkgsrc_wip_eor_work#$|-Wl,-R/usr/pkgsrc/wip/eor/work|g
s|\([ 	`"':;,]\)-R_bUiLdLiNk__usr_pkgsrc_wip_eor_work#\([ 	`"':;,]\)|\1-R/usr/pkgsrc/wip/eor/work\2|g
s|\([ 	`"':;,]\)-R_bUiLdLiNk__usr_pkgsrc_wip_eor_work#\([ 	`"':;,]\)|\1-R/usr/pkgsrc/wip/eor/work\2|g
s|\([ 	`"':;,]\)-R_bUiLdLiNk__usr_pkgsrc_wip_eor_work#$|\1-R/usr/pkgsrc/wip/eor/work|g
s|^-R_bUiLdLiNk__usr_pkgsrc_wip_eor_work#\([ 	`"':;,]\)|-R/usr/pkgsrc/wip/eor/work\1|g
s|^-R_bUiLdLiNk__usr_pkgsrc_wip_eor_work#$|-R/usr/pkgsrc/wip/eor/work|g
s|\([ 	`"':;,]\)_bUiLdLiNk__usr_pkgsrc_wip_eor_work#\(/[^ 	`"':;,]*\.la[ 	`"':;,]\)|\1/usr/pkgsrc/wip/eor/work\2|g
s|\([ 	`"':;,]\)_bUiLdLiNk__usr_pkgsrc_wip_eor_work#\(/[^ 	`"':;,]*\.la[ 	`"':;,]\)|\1/usr/pkgsrc/wip/eor/work\2|g
s|\([ 	`"':;,]\)_bUiLdLiNk__usr_pkgsrc_wip_eor_work#\(/[^ 	`"':;,]*\.la\)$|\1/usr/pkgsrc/wip/eor/work\2|g
s|^_bUiLdLiNk__usr_pkgsrc_wip_eor_work#\(/[^ 	`"':;,]*\.la[ 	`"':;,]\)|/usr/pkgsrc/wip/eor/work\1|g
s|^_bUiLdLiNk__usr_pkgsrc_wip_eor_work#\(/[^ 	`"':;,]*\.la\)$|/usr/pkgsrc/wip/eor/work\1|g
s|\([ 	`"':;,]\)-I_bUiLdLiNk__usr_pkgsrc_wip_eor_work#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-I/usr/pkgsrc/wip/eor/work\2\3|g
s|\([ 	`"':;,]\)-I_bUiLdLiNk__usr_pkgsrc_wip_eor_work#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-I/usr/pkgsrc/wip/eor/work\2\3|g
s|\([ 	`"':;,]\)-I_bUiLdLiNk__usr_pkgsrc_wip_eor_work#\(/[^ 	`"':;,]*\)$|\1-I/usr/pkgsrc/wip/eor/work\2|g
s|^-I_bUiLdLiNk__usr_pkgsrc_wip_eor_work#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-I/usr/pkgsrc/wip/eor/work\1|g
s|^-I_bUiLdLiNk__usr_pkgsrc_wip_eor_work#\(/[^ 	`"':;,]*\)$|-I/usr/pkgsrc/wip/eor/work\1|g
s|\([ 	`"':;,]\)-L_bUiLdLiNk__usr_pkgsrc_wip_eor_work#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-L/usr/pkgsrc/wip/eor/work\2\3|g
s|\([ 	`"':;,]\)-L_bUiLdLiNk__usr_pkgsrc_wip_eor_work#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-L/usr/pkgsrc/wip/eor/work\2\3|g
s|\([ 	`"':;,]\)-L_bUiLdLiNk__usr_pkgsrc_wip_eor_work#\(/[^ 	`"':;,]*\)$|\1-L/usr/pkgsrc/wip/eor/work\2|g
s|^-L_bUiLdLiNk__usr_pkgsrc_wip_eor_work#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-L/usr/pkgsrc/wip/eor/work\1|g
s|^-L_bUiLdLiNk__usr_pkgsrc_wip_eor_work#\(/[^ 	`"':;,]*\)$|-L/usr/pkgsrc/wip/eor/work\1|g
s|\([ 	`"':;,]\)-Wl,--rpath,_bUiLdLiNk__usr_pkgsrc_wip_eor_work#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,--rpath,/usr/pkgsrc/wip/eor/work\2\3|g
s|\([ 	`"':;,]\)-Wl,--rpath,_bUiLdLiNk__usr_pkgsrc_wip_eor_work#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,--rpath,/usr/pkgsrc/wip/eor/work\2\3|g
s|\([ 	`"':;,]\)-Wl,--rpath,_bUiLdLiNk__usr_pkgsrc_wip_eor_work#\(/[^ 	`"':;,]*\)$|\1-Wl,--rpath,/usr/pkgsrc/wip/eor/work\2|g
s|^-Wl,--rpath,_bUiLdLiNk__usr_pkgsrc_wip_eor_work#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,--rpath,/usr/pkgsrc/wip/eor/work\1|g
s|^-Wl,--rpath,_bUiLdLiNk__usr_pkgsrc_wip_eor_work#\(/[^ 	`"':;,]*\)$|-Wl,--rpath,/usr/pkgsrc/wip/eor/work\1|g
s|\([ 	`"':;,]\)-Wl,-rpath-link,_bUiLdLiNk__usr_pkgsrc_wip_eor_work#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,-rpath-link,/usr/pkgsrc/wip/eor/work\2\3|g
s|\([ 	`"':;,]\)-Wl,-rpath-link,_bUiLdLiNk__usr_pkgsrc_wip_eor_work#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,-rpath-link,/usr/pkgsrc/wip/eor/work\2\3|g
s|\([ 	`"':;,]\)-Wl,-rpath-link,_bUiLdLiNk__usr_pkgsrc_wip_eor_work#\(/[^ 	`"':;,]*\)$|\1-Wl,-rpath-link,/usr/pkgsrc/wip/eor/work\2|g
s|^-Wl,-rpath-link,_bUiLdLiNk__usr_pkgsrc_wip_eor_work#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,-rpath-link,/usr/pkgsrc/wip/eor/work\1|g
s|^-Wl,-rpath-link,_bUiLdLiNk__usr_pkgsrc_wip_eor_work#\(/[^ 	`"':;,]*\)$|-Wl,-rpath-link,/usr/pkgsrc/wip/eor/work\1|g
s|\([ 	`"':;,]\)-Wl,-rpath,_bUiLdLiNk__usr_pkgsrc_wip_eor_work#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,-rpath,/usr/pkgsrc/wip/eor/work\2\3|g
s|\([ 	`"':;,]\)-Wl,-rpath,_bUiLdLiNk__usr_pkgsrc_wip_eor_work#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,-rpath,/usr/pkgsrc/wip/eor/work\2\3|g
s|\([ 	`"':;,]\)-Wl,-rpath,_bUiLdLiNk__usr_pkgsrc_wip_eor_work#\(/[^ 	`"':;,]*\)$|\1-Wl,-rpath,/usr/pkgsrc/wip/eor/work\2|g
s|^-Wl,-rpath,_bUiLdLiNk__usr_pkgsrc_wip_eor_work#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,-rpath,/usr/pkgsrc/wip/eor/work\1|g
s|^-Wl,-rpath,_bUiLdLiNk__usr_pkgsrc_wip_eor_work#\(/[^ 	`"':;,]*\)$|-Wl,-rpath,/usr/pkgsrc/wip/eor/work\1|g
s|\([ 	`"':;,]\)-Wl,-R_bUiLdLiNk__usr_pkgsrc_wip_eor_work#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,-R/usr/pkgsrc/wip/eor/work\2\3|g
s|\([ 	`"':;,]\)-Wl,-R_bUiLdLiNk__usr_pkgsrc_wip_eor_work#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,-R/usr/pkgsrc/wip/eor/work\2\3|g
s|\([ 	`"':;,]\)-Wl,-R_bUiLdLiNk__usr_pkgsrc_wip_eor_work#\(/[^ 	`"':;,]*\)$|\1-Wl,-R/usr/pkgsrc/wip/eor/work\2|g
s|^-Wl,-R_bUiLdLiNk__usr_pkgsrc_wip_eor_work#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,-R/usr/pkgsrc/wip/eor/work\1|g
s|^-Wl,-R_bUiLdLiNk__usr_pkgsrc_wip_eor_work#\(/[^ 	`"':;,]*\)$|-Wl,-R/usr/pkgsrc/wip/eor/work\1|g
s|\([ 	`"':;,]\)-R_bUiLdLiNk__usr_pkgsrc_wip_eor_work#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-R/usr/pkgsrc/wip/eor/work\2\3|g
s|\([ 	`"':;,]\)-R_bUiLdLiNk__usr_pkgsrc_wip_eor_work#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-R/usr/pkgsrc/wip/eor/work\2\3|g
s|\([ 	`"':;,]\)-R_bUiLdLiNk__usr_pkgsrc_wip_eor_work#\(/[^ 	`"':;,]*\)$|\1-R/usr/pkgsrc/wip/eor/work\2|g
s|^-R_bUiLdLiNk__usr_pkgsrc_wip_eor_work#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-R/usr/pkgsrc/wip/eor/work\1|g
s|^-R_bUiLdLiNk__usr_pkgsrc_wip_eor_work#\(/[^ 	`"':;,]*\)$|-R/usr/pkgsrc/wip/eor/work\1|g
s|\([ 	`"':;,]\)-I_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.x11-buildlink#\([ 	`"':;,]\)|\1-I/usr/pkgsrc/wip/eor/work/.x11-buildlink\2|g
s|\([ 	`"':;,]\)-I_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.x11-buildlink#\([ 	`"':;,]\)|\1-I/usr/pkgsrc/wip/eor/work/.x11-buildlink\2|g
s|\([ 	`"':;,]\)-I_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.x11-buildlink#$|\1-I/usr/pkgsrc/wip/eor/work/.x11-buildlink|g
s|^-I_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.x11-buildlink#\([ 	`"':;,]\)|-I/usr/pkgsrc/wip/eor/work/.x11-buildlink\1|g
s|^-I_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.x11-buildlink#$|-I/usr/pkgsrc/wip/eor/work/.x11-buildlink|g
s|\([ 	`"':;,]\)-L_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.x11-buildlink#\([ 	`"':;,]\)|\1-L/usr/pkgsrc/wip/eor/work/.x11-buildlink\2|g
s|\([ 	`"':;,]\)-L_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.x11-buildlink#\([ 	`"':;,]\)|\1-L/usr/pkgsrc/wip/eor/work/.x11-buildlink\2|g
s|\([ 	`"':;,]\)-L_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.x11-buildlink#$|\1-L/usr/pkgsrc/wip/eor/work/.x11-buildlink|g
s|^-L_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.x11-buildlink#\([ 	`"':;,]\)|-L/usr/pkgsrc/wip/eor/work/.x11-buildlink\1|g
s|^-L_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.x11-buildlink#$|-L/usr/pkgsrc/wip/eor/work/.x11-buildlink|g
s|\([ 	`"':;,]\)-Wl,--rpath,_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.x11-buildlink#\([ 	`"':;,]\)|\1-Wl,--rpath,/usr/pkgsrc/wip/eor/work/.x11-buildlink\2|g
s|\([ 	`"':;,]\)-Wl,--rpath,_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.x11-buildlink#\([ 	`"':;,]\)|\1-Wl,--rpath,/usr/pkgsrc/wip/eor/work/.x11-buildlink\2|g
s|\([ 	`"':;,]\)-Wl,--rpath,_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.x11-buildlink#$|\1-Wl,--rpath,/usr/pkgsrc/wip/eor/work/.x11-buildlink|g
s|^-Wl,--rpath,_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.x11-buildlink#\([ 	`"':;,]\)|-Wl,--rpath,/usr/pkgsrc/wip/eor/work/.x11-buildlink\1|g
s|^-Wl,--rpath,_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.x11-buildlink#$|-Wl,--rpath,/usr/pkgsrc/wip/eor/work/.x11-buildlink|g
s|\([ 	`"':;,]\)-Wl,-rpath-link,_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.x11-buildlink#\([ 	`"':;,]\)|\1-Wl,-rpath-link,/usr/pkgsrc/wip/eor/work/.x11-buildlink\2|g
s|\([ 	`"':;,]\)-Wl,-rpath-link,_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.x11-buildlink#\([ 	`"':;,]\)|\1-Wl,-rpath-link,/usr/pkgsrc/wip/eor/work/.x11-buildlink\2|g
s|\([ 	`"':;,]\)-Wl,-rpath-link,_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.x11-buildlink#$|\1-Wl,-rpath-link,/usr/pkgsrc/wip/eor/work/.x11-buildlink|g
s|^-Wl,-rpath-link,_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.x11-buildlink#\([ 	`"':;,]\)|-Wl,-rpath-link,/usr/pkgsrc/wip/eor/work/.x11-buildlink\1|g
s|^-Wl,-rpath-link,_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.x11-buildlink#$|-Wl,-rpath-link,/usr/pkgsrc/wip/eor/work/.x11-buildlink|g
s|\([ 	`"':;,]\)-Wl,-rpath,_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.x11-buildlink#\([ 	`"':;,]\)|\1-Wl,-rpath,/usr/pkgsrc/wip/eor/work/.x11-buildlink\2|g
s|\([ 	`"':;,]\)-Wl,-rpath,_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.x11-buildlink#\([ 	`"':;,]\)|\1-Wl,-rpath,/usr/pkgsrc/wip/eor/work/.x11-buildlink\2|g
s|\([ 	`"':;,]\)-Wl,-rpath,_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.x11-buildlink#$|\1-Wl,-rpath,/usr/pkgsrc/wip/eor/work/.x11-buildlink|g
s|^-Wl,-rpath,_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.x11-buildlink#\([ 	`"':;,]\)|-Wl,-rpath,/usr/pkgsrc/wip/eor/work/.x11-buildlink\1|g
s|^-Wl,-rpath,_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.x11-buildlink#$|-Wl,-rpath,/usr/pkgsrc/wip/eor/work/.x11-buildlink|g
s|\([ 	`"':;,]\)-Wl,-R_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.x11-buildlink#\([ 	`"':;,]\)|\1-Wl,-R/usr/pkgsrc/wip/eor/work/.x11-buildlink\2|g
s|\([ 	`"':;,]\)-Wl,-R_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.x11-buildlink#\([ 	`"':;,]\)|\1-Wl,-R/usr/pkgsrc/wip/eor/work/.x11-buildlink\2|g
s|\([ 	`"':;,]\)-Wl,-R_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.x11-buildlink#$|\1-Wl,-R/usr/pkgsrc/wip/eor/work/.x11-buildlink|g
s|^-Wl,-R_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.x11-buildlink#\([ 	`"':;,]\)|-Wl,-R/usr/pkgsrc/wip/eor/work/.x11-buildlink\1|g
s|^-Wl,-R_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.x11-buildlink#$|-Wl,-R/usr/pkgsrc/wip/eor/work/.x11-buildlink|g
s|\([ 	`"':;,]\)-R_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.x11-buildlink#\([ 	`"':;,]\)|\1-R/usr/pkgsrc/wip/eor/work/.x11-buildlink\2|g
s|\([ 	`"':;,]\)-R_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.x11-buildlink#\([ 	`"':;,]\)|\1-R/usr/pkgsrc/wip/eor/work/.x11-buildlink\2|g
s|\([ 	`"':;,]\)-R_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.x11-buildlink#$|\1-R/usr/pkgsrc/wip/eor/work/.x11-buildlink|g
s|^-R_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.x11-buildlink#\([ 	`"':;,]\)|-R/usr/pkgsrc/wip/eor/work/.x11-buildlink\1|g
s|^-R_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.x11-buildlink#$|-R/usr/pkgsrc/wip/eor/work/.x11-buildlink|g
s|\([ 	`"':;,]\)_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.x11-buildlink#\(/[^ 	`"':;,]*\.la[ 	`"':;,]\)|\1/usr/pkgsrc/wip/eor/work/.x11-buildlink\2|g
s|\([ 	`"':;,]\)_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.x11-buildlink#\(/[^ 	`"':;,]*\.la[ 	`"':;,]\)|\1/usr/pkgsrc/wip/eor/work/.x11-buildlink\2|g
s|\([ 	`"':;,]\)_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.x11-buildlink#\(/[^ 	`"':;,]*\.la\)$|\1/usr/pkgsrc/wip/eor/work/.x11-buildlink\2|g
s|^_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.x11-buildlink#\(/[^ 	`"':;,]*\.la[ 	`"':;,]\)|/usr/pkgsrc/wip/eor/work/.x11-buildlink\1|g
s|^_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.x11-buildlink#\(/[^ 	`"':;,]*\.la\)$|/usr/pkgsrc/wip/eor/work/.x11-buildlink\1|g
s|\([ 	`"':;,]\)-I_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.x11-buildlink#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-I/usr/pkgsrc/wip/eor/work/.x11-buildlink\2\3|g
s|\([ 	`"':;,]\)-I_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.x11-buildlink#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-I/usr/pkgsrc/wip/eor/work/.x11-buildlink\2\3|g
s|\([ 	`"':;,]\)-I_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.x11-buildlink#\(/[^ 	`"':;,]*\)$|\1-I/usr/pkgsrc/wip/eor/work/.x11-buildlink\2|g
s|^-I_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.x11-buildlink#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-I/usr/pkgsrc/wip/eor/work/.x11-buildlink\1|g
s|^-I_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.x11-buildlink#\(/[^ 	`"':;,]*\)$|-I/usr/pkgsrc/wip/eor/work/.x11-buildlink\1|g
s|\([ 	`"':;,]\)-L_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.x11-buildlink#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-L/usr/pkgsrc/wip/eor/work/.x11-buildlink\2\3|g
s|\([ 	`"':;,]\)-L_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.x11-buildlink#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-L/usr/pkgsrc/wip/eor/work/.x11-buildlink\2\3|g
s|\([ 	`"':;,]\)-L_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.x11-buildlink#\(/[^ 	`"':;,]*\)$|\1-L/usr/pkgsrc/wip/eor/work/.x11-buildlink\2|g
s|^-L_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.x11-buildlink#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-L/usr/pkgsrc/wip/eor/work/.x11-buildlink\1|g
s|^-L_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.x11-buildlink#\(/[^ 	`"':;,]*\)$|-L/usr/pkgsrc/wip/eor/work/.x11-buildlink\1|g
s|\([ 	`"':;,]\)-Wl,--rpath,_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.x11-buildlink#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,--rpath,/usr/pkgsrc/wip/eor/work/.x11-buildlink\2\3|g
s|\([ 	`"':;,]\)-Wl,--rpath,_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.x11-buildlink#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,--rpath,/usr/pkgsrc/wip/eor/work/.x11-buildlink\2\3|g
s|\([ 	`"':;,]\)-Wl,--rpath,_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.x11-buildlink#\(/[^ 	`"':;,]*\)$|\1-Wl,--rpath,/usr/pkgsrc/wip/eor/work/.x11-buildlink\2|g
s|^-Wl,--rpath,_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.x11-buildlink#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,--rpath,/usr/pkgsrc/wip/eor/work/.x11-buildlink\1|g
s|^-Wl,--rpath,_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.x11-buildlink#\(/[^ 	`"':;,]*\)$|-Wl,--rpath,/usr/pkgsrc/wip/eor/work/.x11-buildlink\1|g
s|\([ 	`"':;,]\)-Wl,-rpath-link,_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.x11-buildlink#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,-rpath-link,/usr/pkgsrc/wip/eor/work/.x11-buildlink\2\3|g
s|\([ 	`"':;,]\)-Wl,-rpath-link,_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.x11-buildlink#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,-rpath-link,/usr/pkgsrc/wip/eor/work/.x11-buildlink\2\3|g
s|\([ 	`"':;,]\)-Wl,-rpath-link,_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.x11-buildlink#\(/[^ 	`"':;,]*\)$|\1-Wl,-rpath-link,/usr/pkgsrc/wip/eor/work/.x11-buildlink\2|g
s|^-Wl,-rpath-link,_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.x11-buildlink#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,-rpath-link,/usr/pkgsrc/wip/eor/work/.x11-buildlink\1|g
s|^-Wl,-rpath-link,_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.x11-buildlink#\(/[^ 	`"':;,]*\)$|-Wl,-rpath-link,/usr/pkgsrc/wip/eor/work/.x11-buildlink\1|g
s|\([ 	`"':;,]\)-Wl,-rpath,_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.x11-buildlink#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,-rpath,/usr/pkgsrc/wip/eor/work/.x11-buildlink\2\3|g
s|\([ 	`"':;,]\)-Wl,-rpath,_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.x11-buildlink#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,-rpath,/usr/pkgsrc/wip/eor/work/.x11-buildlink\2\3|g
s|\([ 	`"':;,]\)-Wl,-rpath,_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.x11-buildlink#\(/[^ 	`"':;,]*\)$|\1-Wl,-rpath,/usr/pkgsrc/wip/eor/work/.x11-buildlink\2|g
s|^-Wl,-rpath,_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.x11-buildlink#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,-rpath,/usr/pkgsrc/wip/eor/work/.x11-buildlink\1|g
s|^-Wl,-rpath,_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.x11-buildlink#\(/[^ 	`"':;,]*\)$|-Wl,-rpath,/usr/pkgsrc/wip/eor/work/.x11-buildlink\1|g
s|\([ 	`"':;,]\)-Wl,-R_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.x11-buildlink#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,-R/usr/pkgsrc/wip/eor/work/.x11-buildlink\2\3|g
s|\([ 	`"':;,]\)-Wl,-R_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.x11-buildlink#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,-R/usr/pkgsrc/wip/eor/work/.x11-buildlink\2\3|g
s|\([ 	`"':;,]\)-Wl,-R_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.x11-buildlink#\(/[^ 	`"':;,]*\)$|\1-Wl,-R/usr/pkgsrc/wip/eor/work/.x11-buildlink\2|g
s|^-Wl,-R_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.x11-buildlink#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,-R/usr/pkgsrc/wip/eor/work/.x11-buildlink\1|g
s|^-Wl,-R_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.x11-buildlink#\(/[^ 	`"':;,]*\)$|-Wl,-R/usr/pkgsrc/wip/eor/work/.x11-buildlink\1|g
s|\([ 	`"':;,]\)-R_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.x11-buildlink#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-R/usr/pkgsrc/wip/eor/work/.x11-buildlink\2\3|g
s|\([ 	`"':;,]\)-R_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.x11-buildlink#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-R/usr/pkgsrc/wip/eor/work/.x11-buildlink\2\3|g
s|\([ 	`"':;,]\)-R_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.x11-buildlink#\(/[^ 	`"':;,]*\)$|\1-R/usr/pkgsrc/wip/eor/work/.x11-buildlink\2|g
s|^-R_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.x11-buildlink#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-R/usr/pkgsrc/wip/eor/work/.x11-buildlink\1|g
s|^-R_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.x11-buildlink#\(/[^ 	`"':;,]*\)$|-R/usr/pkgsrc/wip/eor/work/.x11-buildlink\1|g
s|\([ 	`"':;,]\)-I_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.buildlink#\([ 	`"':;,]\)|\1-I/usr/pkgsrc/wip/eor/work/.buildlink\2|g
s|\([ 	`"':;,]\)-I_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.buildlink#\([ 	`"':;,]\)|\1-I/usr/pkgsrc/wip/eor/work/.buildlink\2|g
s|\([ 	`"':;,]\)-I_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.buildlink#$|\1-I/usr/pkgsrc/wip/eor/work/.buildlink|g
s|^-I_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.buildlink#\([ 	`"':;,]\)|-I/usr/pkgsrc/wip/eor/work/.buildlink\1|g
s|^-I_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.buildlink#$|-I/usr/pkgsrc/wip/eor/work/.buildlink|g
s|\([ 	`"':;,]\)-L_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.buildlink#\([ 	`"':;,]\)|\1-L/usr/pkgsrc/wip/eor/work/.buildlink\2|g
s|\([ 	`"':;,]\)-L_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.buildlink#\([ 	`"':;,]\)|\1-L/usr/pkgsrc/wip/eor/work/.buildlink\2|g
s|\([ 	`"':;,]\)-L_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.buildlink#$|\1-L/usr/pkgsrc/wip/eor/work/.buildlink|g
s|^-L_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.buildlink#\([ 	`"':;,]\)|-L/usr/pkgsrc/wip/eor/work/.buildlink\1|g
s|^-L_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.buildlink#$|-L/usr/pkgsrc/wip/eor/work/.buildlink|g
s|\([ 	`"':;,]\)-Wl,--rpath,_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.buildlink#\([ 	`"':;,]\)|\1-Wl,--rpath,/usr/pkgsrc/wip/eor/work/.buildlink\2|g
s|\([ 	`"':;,]\)-Wl,--rpath,_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.buildlink#\([ 	`"':;,]\)|\1-Wl,--rpath,/usr/pkgsrc/wip/eor/work/.buildlink\2|g
s|\([ 	`"':;,]\)-Wl,--rpath,_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.buildlink#$|\1-Wl,--rpath,/usr/pkgsrc/wip/eor/work/.buildlink|g
s|^-Wl,--rpath,_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.buildlink#\([ 	`"':;,]\)|-Wl,--rpath,/usr/pkgsrc/wip/eor/work/.buildlink\1|g
s|^-Wl,--rpath,_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.buildlink#$|-Wl,--rpath,/usr/pkgsrc/wip/eor/work/.buildlink|g
s|\([ 	`"':;,]\)-Wl,-rpath-link,_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.buildlink#\([ 	`"':;,]\)|\1-Wl,-rpath-link,/usr/pkgsrc/wip/eor/work/.buildlink\2|g
s|\([ 	`"':;,]\)-Wl,-rpath-link,_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.buildlink#\([ 	`"':;,]\)|\1-Wl,-rpath-link,/usr/pkgsrc/wip/eor/work/.buildlink\2|g
s|\([ 	`"':;,]\)-Wl,-rpath-link,_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.buildlink#$|\1-Wl,-rpath-link,/usr/pkgsrc/wip/eor/work/.buildlink|g
s|^-Wl,-rpath-link,_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.buildlink#\([ 	`"':;,]\)|-Wl,-rpath-link,/usr/pkgsrc/wip/eor/work/.buildlink\1|g
s|^-Wl,-rpath-link,_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.buildlink#$|-Wl,-rpath-link,/usr/pkgsrc/wip/eor/work/.buildlink|g
s|\([ 	`"':;,]\)-Wl,-rpath,_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.buildlink#\([ 	`"':;,]\)|\1-Wl,-rpath,/usr/pkgsrc/wip/eor/work/.buildlink\2|g
s|\([ 	`"':;,]\)-Wl,-rpath,_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.buildlink#\([ 	`"':;,]\)|\1-Wl,-rpath,/usr/pkgsrc/wip/eor/work/.buildlink\2|g
s|\([ 	`"':;,]\)-Wl,-rpath,_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.buildlink#$|\1-Wl,-rpath,/usr/pkgsrc/wip/eor/work/.buildlink|g
s|^-Wl,-rpath,_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.buildlink#\([ 	`"':;,]\)|-Wl,-rpath,/usr/pkgsrc/wip/eor/work/.buildlink\1|g
s|^-Wl,-rpath,_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.buildlink#$|-Wl,-rpath,/usr/pkgsrc/wip/eor/work/.buildlink|g
s|\([ 	`"':;,]\)-Wl,-R_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.buildlink#\([ 	`"':;,]\)|\1-Wl,-R/usr/pkgsrc/wip/eor/work/.buildlink\2|g
s|\([ 	`"':;,]\)-Wl,-R_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.buildlink#\([ 	`"':;,]\)|\1-Wl,-R/usr/pkgsrc/wip/eor/work/.buildlink\2|g
s|\([ 	`"':;,]\)-Wl,-R_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.buildlink#$|\1-Wl,-R/usr/pkgsrc/wip/eor/work/.buildlink|g
s|^-Wl,-R_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.buildlink#\([ 	`"':;,]\)|-Wl,-R/usr/pkgsrc/wip/eor/work/.buildlink\1|g
s|^-Wl,-R_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.buildlink#$|-Wl,-R/usr/pkgsrc/wip/eor/work/.buildlink|g
s|\([ 	`"':;,]\)-R_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.buildlink#\([ 	`"':;,]\)|\1-R/usr/pkgsrc/wip/eor/work/.buildlink\2|g
s|\([ 	`"':;,]\)-R_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.buildlink#\([ 	`"':;,]\)|\1-R/usr/pkgsrc/wip/eor/work/.buildlink\2|g
s|\([ 	`"':;,]\)-R_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.buildlink#$|\1-R/usr/pkgsrc/wip/eor/work/.buildlink|g
s|^-R_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.buildlink#\([ 	`"':;,]\)|-R/usr/pkgsrc/wip/eor/work/.buildlink\1|g
s|^-R_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.buildlink#$|-R/usr/pkgsrc/wip/eor/work/.buildlink|g
s|\([ 	`"':;,]\)_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.buildlink#\(/[^ 	`"':;,]*\.la[ 	`"':;,]\)|\1/usr/pkgsrc/wip/eor/work/.buildlink\2|g
s|\([ 	`"':;,]\)_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.buildlink#\(/[^ 	`"':;,]*\.la[ 	`"':;,]\)|\1/usr/pkgsrc/wip/eor/work/.buildlink\2|g
s|\([ 	`"':;,]\)_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.buildlink#\(/[^ 	`"':;,]*\.la\)$|\1/usr/pkgsrc/wip/eor/work/.buildlink\2|g
s|^_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.buildlink#\(/[^ 	`"':;,]*\.la[ 	`"':;,]\)|/usr/pkgsrc/wip/eor/work/.buildlink\1|g
s|^_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.buildlink#\(/[^ 	`"':;,]*\.la\)$|/usr/pkgsrc/wip/eor/work/.buildlink\1|g
s|\([ 	`"':;,]\)-I_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.buildlink#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-I/usr/pkgsrc/wip/eor/work/.buildlink\2\3|g
s|\([ 	`"':;,]\)-I_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.buildlink#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-I/usr/pkgsrc/wip/eor/work/.buildlink\2\3|g
s|\([ 	`"':;,]\)-I_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.buildlink#\(/[^ 	`"':;,]*\)$|\1-I/usr/pkgsrc/wip/eor/work/.buildlink\2|g
s|^-I_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.buildlink#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-I/usr/pkgsrc/wip/eor/work/.buildlink\1|g
s|^-I_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.buildlink#\(/[^ 	`"':;,]*\)$|-I/usr/pkgsrc/wip/eor/work/.buildlink\1|g
s|\([ 	`"':;,]\)-L_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.buildlink#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-L/usr/pkgsrc/wip/eor/work/.buildlink\2\3|g
s|\([ 	`"':;,]\)-L_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.buildlink#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-L/usr/pkgsrc/wip/eor/work/.buildlink\2\3|g
s|\([ 	`"':;,]\)-L_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.buildlink#\(/[^ 	`"':;,]*\)$|\1-L/usr/pkgsrc/wip/eor/work/.buildlink\2|g
s|^-L_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.buildlink#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-L/usr/pkgsrc/wip/eor/work/.buildlink\1|g
s|^-L_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.buildlink#\(/[^ 	`"':;,]*\)$|-L/usr/pkgsrc/wip/eor/work/.buildlink\1|g
s|\([ 	`"':;,]\)-Wl,--rpath,_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.buildlink#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,--rpath,/usr/pkgsrc/wip/eor/work/.buildlink\2\3|g
s|\([ 	`"':;,]\)-Wl,--rpath,_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.buildlink#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,--rpath,/usr/pkgsrc/wip/eor/work/.buildlink\2\3|g
s|\([ 	`"':;,]\)-Wl,--rpath,_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.buildlink#\(/[^ 	`"':;,]*\)$|\1-Wl,--rpath,/usr/pkgsrc/wip/eor/work/.buildlink\2|g
s|^-Wl,--rpath,_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.buildlink#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,--rpath,/usr/pkgsrc/wip/eor/work/.buildlink\1|g
s|^-Wl,--rpath,_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.buildlink#\(/[^ 	`"':;,]*\)$|-Wl,--rpath,/usr/pkgsrc/wip/eor/work/.buildlink\1|g
s|\([ 	`"':;,]\)-Wl,-rpath-link,_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.buildlink#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,-rpath-link,/usr/pkgsrc/wip/eor/work/.buildlink\2\3|g
s|\([ 	`"':;,]\)-Wl,-rpath-link,_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.buildlink#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,-rpath-link,/usr/pkgsrc/wip/eor/work/.buildlink\2\3|g
s|\([ 	`"':;,]\)-Wl,-rpath-link,_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.buildlink#\(/[^ 	`"':;,]*\)$|\1-Wl,-rpath-link,/usr/pkgsrc/wip/eor/work/.buildlink\2|g
s|^-Wl,-rpath-link,_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.buildlink#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,-rpath-link,/usr/pkgsrc/wip/eor/work/.buildlink\1|g
s|^-Wl,-rpath-link,_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.buildlink#\(/[^ 	`"':;,]*\)$|-Wl,-rpath-link,/usr/pkgsrc/wip/eor/work/.buildlink\1|g
s|\([ 	`"':;,]\)-Wl,-rpath,_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.buildlink#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,-rpath,/usr/pkgsrc/wip/eor/work/.buildlink\2\3|g
s|\([ 	`"':;,]\)-Wl,-rpath,_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.buildlink#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,-rpath,/usr/pkgsrc/wip/eor/work/.buildlink\2\3|g
s|\([ 	`"':;,]\)-Wl,-rpath,_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.buildlink#\(/[^ 	`"':;,]*\)$|\1-Wl,-rpath,/usr/pkgsrc/wip/eor/work/.buildlink\2|g
s|^-Wl,-rpath,_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.buildlink#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,-rpath,/usr/pkgsrc/wip/eor/work/.buildlink\1|g
s|^-Wl,-rpath,_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.buildlink#\(/[^ 	`"':;,]*\)$|-Wl,-rpath,/usr/pkgsrc/wip/eor/work/.buildlink\1|g
s|\([ 	`"':;,]\)-Wl,-R_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.buildlink#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,-R/usr/pkgsrc/wip/eor/work/.buildlink\2\3|g
s|\([ 	`"':;,]\)-Wl,-R_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.buildlink#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,-R/usr/pkgsrc/wip/eor/work/.buildlink\2\3|g
s|\([ 	`"':;,]\)-Wl,-R_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.buildlink#\(/[^ 	`"':;,]*\)$|\1-Wl,-R/usr/pkgsrc/wip/eor/work/.buildlink\2|g
s|^-Wl,-R_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.buildlink#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,-R/usr/pkgsrc/wip/eor/work/.buildlink\1|g
s|^-Wl,-R_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.buildlink#\(/[^ 	`"':;,]*\)$|-Wl,-R/usr/pkgsrc/wip/eor/work/.buildlink\1|g
s|\([ 	`"':;,]\)-R_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.buildlink#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-R/usr/pkgsrc/wip/eor/work/.buildlink\2\3|g
s|\([ 	`"':;,]\)-R_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.buildlink#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-R/usr/pkgsrc/wip/eor/work/.buildlink\2\3|g
s|\([ 	`"':;,]\)-R_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.buildlink#\(/[^ 	`"':;,]*\)$|\1-R/usr/pkgsrc/wip/eor/work/.buildlink\2|g
s|^-R_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.buildlink#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-R/usr/pkgsrc/wip/eor/work/.buildlink\1|g
s|^-R_bUiLdLiNk__usr_pkgsrc_wip_eor_work_.buildlink#\(/[^ 	`"':;,]*\)$|-R/usr/pkgsrc/wip/eor/work/.buildlink\1|g
