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
s|\([ 	`"':;,]\)-I/export/pkgsrc/wip/ghostscript-cidfonts/work/.buildlink\([ 	`"':;,]\)|\1-I_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work_.buildlink#\2|g
s|\([ 	`"':;,]\)-I/export/pkgsrc/wip/ghostscript-cidfonts/work/.buildlink\([ 	`"':;,]\)|\1-I_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work_.buildlink#\2|g
s|\([ 	`"':;,]\)-I/export/pkgsrc/wip/ghostscript-cidfonts/work/.buildlink$|\1-I_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work_.buildlink#|g
s|^-I/export/pkgsrc/wip/ghostscript-cidfonts/work/.buildlink\([ 	`"':;,]\)|-I_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work_.buildlink#\1|g
s|^-I/export/pkgsrc/wip/ghostscript-cidfonts/work/.buildlink$|-I_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work_.buildlink#|g
s|\([ 	`"':;,]\)-L/export/pkgsrc/wip/ghostscript-cidfonts/work/.buildlink\([ 	`"':;,]\)|\1-L_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work_.buildlink#\2|g
s|\([ 	`"':;,]\)-L/export/pkgsrc/wip/ghostscript-cidfonts/work/.buildlink\([ 	`"':;,]\)|\1-L_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work_.buildlink#\2|g
s|\([ 	`"':;,]\)-L/export/pkgsrc/wip/ghostscript-cidfonts/work/.buildlink$|\1-L_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work_.buildlink#|g
s|^-L/export/pkgsrc/wip/ghostscript-cidfonts/work/.buildlink\([ 	`"':;,]\)|-L_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work_.buildlink#\1|g
s|^-L/export/pkgsrc/wip/ghostscript-cidfonts/work/.buildlink$|-L_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work_.buildlink#|g
s|\([ 	`"':;,]\)-Wl,--rpath,/export/pkgsrc/wip/ghostscript-cidfonts/work/.buildlink\([ 	`"':;,]\)|\1-Wl,--rpath,_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work_.buildlink#\2|g
s|\([ 	`"':;,]\)-Wl,--rpath,/export/pkgsrc/wip/ghostscript-cidfonts/work/.buildlink\([ 	`"':;,]\)|\1-Wl,--rpath,_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work_.buildlink#\2|g
s|\([ 	`"':;,]\)-Wl,--rpath,/export/pkgsrc/wip/ghostscript-cidfonts/work/.buildlink$|\1-Wl,--rpath,_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work_.buildlink#|g
s|^-Wl,--rpath,/export/pkgsrc/wip/ghostscript-cidfonts/work/.buildlink\([ 	`"':;,]\)|-Wl,--rpath,_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work_.buildlink#\1|g
s|^-Wl,--rpath,/export/pkgsrc/wip/ghostscript-cidfonts/work/.buildlink$|-Wl,--rpath,_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work_.buildlink#|g
s|\([ 	`"':;,]\)-Wl,-rpath-link,/export/pkgsrc/wip/ghostscript-cidfonts/work/.buildlink\([ 	`"':;,]\)|\1-Wl,-rpath-link,_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work_.buildlink#\2|g
s|\([ 	`"':;,]\)-Wl,-rpath-link,/export/pkgsrc/wip/ghostscript-cidfonts/work/.buildlink\([ 	`"':;,]\)|\1-Wl,-rpath-link,_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work_.buildlink#\2|g
s|\([ 	`"':;,]\)-Wl,-rpath-link,/export/pkgsrc/wip/ghostscript-cidfonts/work/.buildlink$|\1-Wl,-rpath-link,_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work_.buildlink#|g
s|^-Wl,-rpath-link,/export/pkgsrc/wip/ghostscript-cidfonts/work/.buildlink\([ 	`"':;,]\)|-Wl,-rpath-link,_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work_.buildlink#\1|g
s|^-Wl,-rpath-link,/export/pkgsrc/wip/ghostscript-cidfonts/work/.buildlink$|-Wl,-rpath-link,_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work_.buildlink#|g
s|\([ 	`"':;,]\)-Wl,-rpath,/export/pkgsrc/wip/ghostscript-cidfonts/work/.buildlink\([ 	`"':;,]\)|\1-Wl,-rpath,_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work_.buildlink#\2|g
s|\([ 	`"':;,]\)-Wl,-rpath,/export/pkgsrc/wip/ghostscript-cidfonts/work/.buildlink\([ 	`"':;,]\)|\1-Wl,-rpath,_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work_.buildlink#\2|g
s|\([ 	`"':;,]\)-Wl,-rpath,/export/pkgsrc/wip/ghostscript-cidfonts/work/.buildlink$|\1-Wl,-rpath,_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work_.buildlink#|g
s|^-Wl,-rpath,/export/pkgsrc/wip/ghostscript-cidfonts/work/.buildlink\([ 	`"':;,]\)|-Wl,-rpath,_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work_.buildlink#\1|g
s|^-Wl,-rpath,/export/pkgsrc/wip/ghostscript-cidfonts/work/.buildlink$|-Wl,-rpath,_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work_.buildlink#|g
s|\([ 	`"':;,]\)-Wl,-R/export/pkgsrc/wip/ghostscript-cidfonts/work/.buildlink\([ 	`"':;,]\)|\1-Wl,-R_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work_.buildlink#\2|g
s|\([ 	`"':;,]\)-Wl,-R/export/pkgsrc/wip/ghostscript-cidfonts/work/.buildlink\([ 	`"':;,]\)|\1-Wl,-R_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work_.buildlink#\2|g
s|\([ 	`"':;,]\)-Wl,-R/export/pkgsrc/wip/ghostscript-cidfonts/work/.buildlink$|\1-Wl,-R_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work_.buildlink#|g
s|^-Wl,-R/export/pkgsrc/wip/ghostscript-cidfonts/work/.buildlink\([ 	`"':;,]\)|-Wl,-R_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work_.buildlink#\1|g
s|^-Wl,-R/export/pkgsrc/wip/ghostscript-cidfonts/work/.buildlink$|-Wl,-R_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work_.buildlink#|g
s|\([ 	`"':;,]\)-R/export/pkgsrc/wip/ghostscript-cidfonts/work/.buildlink\([ 	`"':;,]\)|\1-R_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work_.buildlink#\2|g
s|\([ 	`"':;,]\)-R/export/pkgsrc/wip/ghostscript-cidfonts/work/.buildlink\([ 	`"':;,]\)|\1-R_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work_.buildlink#\2|g
s|\([ 	`"':;,]\)-R/export/pkgsrc/wip/ghostscript-cidfonts/work/.buildlink$|\1-R_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work_.buildlink#|g
s|^-R/export/pkgsrc/wip/ghostscript-cidfonts/work/.buildlink\([ 	`"':;,]\)|-R_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work_.buildlink#\1|g
s|^-R/export/pkgsrc/wip/ghostscript-cidfonts/work/.buildlink$|-R_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work_.buildlink#|g
s|\([ 	`"':;,]\)/export/pkgsrc/wip/ghostscript-cidfonts/work/.buildlink\(/[^ 	`"':;,]*\.la[ 	`"':;,]\)|\1_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work_.buildlink#\2|g
s|\([ 	`"':;,]\)/export/pkgsrc/wip/ghostscript-cidfonts/work/.buildlink\(/[^ 	`"':;,]*\.la[ 	`"':;,]\)|\1_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work_.buildlink#\2|g
s|\([ 	`"':;,]\)/export/pkgsrc/wip/ghostscript-cidfonts/work/.buildlink\(/[^ 	`"':;,]*\.la\)$|\1_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work_.buildlink#\2|g
s|^/export/pkgsrc/wip/ghostscript-cidfonts/work/.buildlink\(/[^ 	`"':;,]*\.la[ 	`"':;,]\)|_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work_.buildlink#\1|g
s|^/export/pkgsrc/wip/ghostscript-cidfonts/work/.buildlink\(/[^ 	`"':;,]*\.la\)$|_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work_.buildlink#\1|g
s|\([ 	`"':;,]\)-I/export/pkgsrc/wip/ghostscript-cidfonts/work/.buildlink\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-I_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work_.buildlink#\2\3|g
s|\([ 	`"':;,]\)-I/export/pkgsrc/wip/ghostscript-cidfonts/work/.buildlink\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-I_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work_.buildlink#\2\3|g
s|\([ 	`"':;,]\)-I/export/pkgsrc/wip/ghostscript-cidfonts/work/.buildlink\(/[^ 	`"':;,]*\)$|\1-I_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work_.buildlink#\2|g
s|^-I/export/pkgsrc/wip/ghostscript-cidfonts/work/.buildlink\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-I_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work_.buildlink#\1|g
s|^-I/export/pkgsrc/wip/ghostscript-cidfonts/work/.buildlink\(/[^ 	`"':;,]*\)$|-I_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work_.buildlink#\1|g
s|\([ 	`"':;,]\)-L/export/pkgsrc/wip/ghostscript-cidfonts/work/.buildlink\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-L_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work_.buildlink#\2\3|g
s|\([ 	`"':;,]\)-L/export/pkgsrc/wip/ghostscript-cidfonts/work/.buildlink\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-L_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work_.buildlink#\2\3|g
s|\([ 	`"':;,]\)-L/export/pkgsrc/wip/ghostscript-cidfonts/work/.buildlink\(/[^ 	`"':;,]*\)$|\1-L_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work_.buildlink#\2|g
s|^-L/export/pkgsrc/wip/ghostscript-cidfonts/work/.buildlink\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-L_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work_.buildlink#\1|g
s|^-L/export/pkgsrc/wip/ghostscript-cidfonts/work/.buildlink\(/[^ 	`"':;,]*\)$|-L_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work_.buildlink#\1|g
s|\([ 	`"':;,]\)-Wl,--rpath,/export/pkgsrc/wip/ghostscript-cidfonts/work/.buildlink\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,--rpath,_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work_.buildlink#\2\3|g
s|\([ 	`"':;,]\)-Wl,--rpath,/export/pkgsrc/wip/ghostscript-cidfonts/work/.buildlink\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,--rpath,_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work_.buildlink#\2\3|g
s|\([ 	`"':;,]\)-Wl,--rpath,/export/pkgsrc/wip/ghostscript-cidfonts/work/.buildlink\(/[^ 	`"':;,]*\)$|\1-Wl,--rpath,_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work_.buildlink#\2|g
s|^-Wl,--rpath,/export/pkgsrc/wip/ghostscript-cidfonts/work/.buildlink\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,--rpath,_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work_.buildlink#\1|g
s|^-Wl,--rpath,/export/pkgsrc/wip/ghostscript-cidfonts/work/.buildlink\(/[^ 	`"':;,]*\)$|-Wl,--rpath,_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work_.buildlink#\1|g
s|\([ 	`"':;,]\)-Wl,-rpath-link,/export/pkgsrc/wip/ghostscript-cidfonts/work/.buildlink\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,-rpath-link,_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work_.buildlink#\2\3|g
s|\([ 	`"':;,]\)-Wl,-rpath-link,/export/pkgsrc/wip/ghostscript-cidfonts/work/.buildlink\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,-rpath-link,_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work_.buildlink#\2\3|g
s|\([ 	`"':;,]\)-Wl,-rpath-link,/export/pkgsrc/wip/ghostscript-cidfonts/work/.buildlink\(/[^ 	`"':;,]*\)$|\1-Wl,-rpath-link,_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work_.buildlink#\2|g
s|^-Wl,-rpath-link,/export/pkgsrc/wip/ghostscript-cidfonts/work/.buildlink\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,-rpath-link,_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work_.buildlink#\1|g
s|^-Wl,-rpath-link,/export/pkgsrc/wip/ghostscript-cidfonts/work/.buildlink\(/[^ 	`"':;,]*\)$|-Wl,-rpath-link,_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work_.buildlink#\1|g
s|\([ 	`"':;,]\)-Wl,-rpath,/export/pkgsrc/wip/ghostscript-cidfonts/work/.buildlink\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,-rpath,_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work_.buildlink#\2\3|g
s|\([ 	`"':;,]\)-Wl,-rpath,/export/pkgsrc/wip/ghostscript-cidfonts/work/.buildlink\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,-rpath,_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work_.buildlink#\2\3|g
s|\([ 	`"':;,]\)-Wl,-rpath,/export/pkgsrc/wip/ghostscript-cidfonts/work/.buildlink\(/[^ 	`"':;,]*\)$|\1-Wl,-rpath,_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work_.buildlink#\2|g
s|^-Wl,-rpath,/export/pkgsrc/wip/ghostscript-cidfonts/work/.buildlink\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,-rpath,_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work_.buildlink#\1|g
s|^-Wl,-rpath,/export/pkgsrc/wip/ghostscript-cidfonts/work/.buildlink\(/[^ 	`"':;,]*\)$|-Wl,-rpath,_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work_.buildlink#\1|g
s|\([ 	`"':;,]\)-Wl,-R/export/pkgsrc/wip/ghostscript-cidfonts/work/.buildlink\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,-R_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work_.buildlink#\2\3|g
s|\([ 	`"':;,]\)-Wl,-R/export/pkgsrc/wip/ghostscript-cidfonts/work/.buildlink\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,-R_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work_.buildlink#\2\3|g
s|\([ 	`"':;,]\)-Wl,-R/export/pkgsrc/wip/ghostscript-cidfonts/work/.buildlink\(/[^ 	`"':;,]*\)$|\1-Wl,-R_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work_.buildlink#\2|g
s|^-Wl,-R/export/pkgsrc/wip/ghostscript-cidfonts/work/.buildlink\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,-R_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work_.buildlink#\1|g
s|^-Wl,-R/export/pkgsrc/wip/ghostscript-cidfonts/work/.buildlink\(/[^ 	`"':;,]*\)$|-Wl,-R_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work_.buildlink#\1|g
s|\([ 	`"':;,]\)-R/export/pkgsrc/wip/ghostscript-cidfonts/work/.buildlink\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-R_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work_.buildlink#\2\3|g
s|\([ 	`"':;,]\)-R/export/pkgsrc/wip/ghostscript-cidfonts/work/.buildlink\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-R_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work_.buildlink#\2\3|g
s|\([ 	`"':;,]\)-R/export/pkgsrc/wip/ghostscript-cidfonts/work/.buildlink\(/[^ 	`"':;,]*\)$|\1-R_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work_.buildlink#\2|g
s|^-R/export/pkgsrc/wip/ghostscript-cidfonts/work/.buildlink\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-R_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work_.buildlink#\1|g
s|^-R/export/pkgsrc/wip/ghostscript-cidfonts/work/.buildlink\(/[^ 	`"':;,]*\)$|-R_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work_.buildlink#\1|g
s|\([ 	`"':;,]\)-I/export/pkgsrc/wip/ghostscript-cidfonts/work\([ 	`"':;,]\)|\1-I_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work#\2|g
s|\([ 	`"':;,]\)-I/export/pkgsrc/wip/ghostscript-cidfonts/work\([ 	`"':;,]\)|\1-I_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work#\2|g
s|\([ 	`"':;,]\)-I/export/pkgsrc/wip/ghostscript-cidfonts/work$|\1-I_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work#|g
s|^-I/export/pkgsrc/wip/ghostscript-cidfonts/work\([ 	`"':;,]\)|-I_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work#\1|g
s|^-I/export/pkgsrc/wip/ghostscript-cidfonts/work$|-I_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work#|g
s|\([ 	`"':;,]\)-L/export/pkgsrc/wip/ghostscript-cidfonts/work\([ 	`"':;,]\)|\1-L_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work#\2|g
s|\([ 	`"':;,]\)-L/export/pkgsrc/wip/ghostscript-cidfonts/work\([ 	`"':;,]\)|\1-L_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work#\2|g
s|\([ 	`"':;,]\)-L/export/pkgsrc/wip/ghostscript-cidfonts/work$|\1-L_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work#|g
s|^-L/export/pkgsrc/wip/ghostscript-cidfonts/work\([ 	`"':;,]\)|-L_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work#\1|g
s|^-L/export/pkgsrc/wip/ghostscript-cidfonts/work$|-L_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work#|g
s|\([ 	`"':;,]\)-Wl,--rpath,/export/pkgsrc/wip/ghostscript-cidfonts/work\([ 	`"':;,]\)|\1-Wl,--rpath,_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work#\2|g
s|\([ 	`"':;,]\)-Wl,--rpath,/export/pkgsrc/wip/ghostscript-cidfonts/work\([ 	`"':;,]\)|\1-Wl,--rpath,_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work#\2|g
s|\([ 	`"':;,]\)-Wl,--rpath,/export/pkgsrc/wip/ghostscript-cidfonts/work$|\1-Wl,--rpath,_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work#|g
s|^-Wl,--rpath,/export/pkgsrc/wip/ghostscript-cidfonts/work\([ 	`"':;,]\)|-Wl,--rpath,_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work#\1|g
s|^-Wl,--rpath,/export/pkgsrc/wip/ghostscript-cidfonts/work$|-Wl,--rpath,_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work#|g
s|\([ 	`"':;,]\)-Wl,-rpath-link,/export/pkgsrc/wip/ghostscript-cidfonts/work\([ 	`"':;,]\)|\1-Wl,-rpath-link,_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work#\2|g
s|\([ 	`"':;,]\)-Wl,-rpath-link,/export/pkgsrc/wip/ghostscript-cidfonts/work\([ 	`"':;,]\)|\1-Wl,-rpath-link,_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work#\2|g
s|\([ 	`"':;,]\)-Wl,-rpath-link,/export/pkgsrc/wip/ghostscript-cidfonts/work$|\1-Wl,-rpath-link,_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work#|g
s|^-Wl,-rpath-link,/export/pkgsrc/wip/ghostscript-cidfonts/work\([ 	`"':;,]\)|-Wl,-rpath-link,_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work#\1|g
s|^-Wl,-rpath-link,/export/pkgsrc/wip/ghostscript-cidfonts/work$|-Wl,-rpath-link,_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work#|g
s|\([ 	`"':;,]\)-Wl,-rpath,/export/pkgsrc/wip/ghostscript-cidfonts/work\([ 	`"':;,]\)|\1-Wl,-rpath,_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work#\2|g
s|\([ 	`"':;,]\)-Wl,-rpath,/export/pkgsrc/wip/ghostscript-cidfonts/work\([ 	`"':;,]\)|\1-Wl,-rpath,_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work#\2|g
s|\([ 	`"':;,]\)-Wl,-rpath,/export/pkgsrc/wip/ghostscript-cidfonts/work$|\1-Wl,-rpath,_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work#|g
s|^-Wl,-rpath,/export/pkgsrc/wip/ghostscript-cidfonts/work\([ 	`"':;,]\)|-Wl,-rpath,_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work#\1|g
s|^-Wl,-rpath,/export/pkgsrc/wip/ghostscript-cidfonts/work$|-Wl,-rpath,_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work#|g
s|\([ 	`"':;,]\)-Wl,-R/export/pkgsrc/wip/ghostscript-cidfonts/work\([ 	`"':;,]\)|\1-Wl,-R_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work#\2|g
s|\([ 	`"':;,]\)-Wl,-R/export/pkgsrc/wip/ghostscript-cidfonts/work\([ 	`"':;,]\)|\1-Wl,-R_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work#\2|g
s|\([ 	`"':;,]\)-Wl,-R/export/pkgsrc/wip/ghostscript-cidfonts/work$|\1-Wl,-R_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work#|g
s|^-Wl,-R/export/pkgsrc/wip/ghostscript-cidfonts/work\([ 	`"':;,]\)|-Wl,-R_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work#\1|g
s|^-Wl,-R/export/pkgsrc/wip/ghostscript-cidfonts/work$|-Wl,-R_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work#|g
s|\([ 	`"':;,]\)-R/export/pkgsrc/wip/ghostscript-cidfonts/work\([ 	`"':;,]\)|\1-R_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work#\2|g
s|\([ 	`"':;,]\)-R/export/pkgsrc/wip/ghostscript-cidfonts/work\([ 	`"':;,]\)|\1-R_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work#\2|g
s|\([ 	`"':;,]\)-R/export/pkgsrc/wip/ghostscript-cidfonts/work$|\1-R_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work#|g
s|^-R/export/pkgsrc/wip/ghostscript-cidfonts/work\([ 	`"':;,]\)|-R_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work#\1|g
s|^-R/export/pkgsrc/wip/ghostscript-cidfonts/work$|-R_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work#|g
s|\([ 	`"':;,]\)/export/pkgsrc/wip/ghostscript-cidfonts/work\(/[^ 	`"':;,]*\.la[ 	`"':;,]\)|\1_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work#\2|g
s|\([ 	`"':;,]\)/export/pkgsrc/wip/ghostscript-cidfonts/work\(/[^ 	`"':;,]*\.la[ 	`"':;,]\)|\1_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work#\2|g
s|\([ 	`"':;,]\)/export/pkgsrc/wip/ghostscript-cidfonts/work\(/[^ 	`"':;,]*\.la\)$|\1_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work#\2|g
s|^/export/pkgsrc/wip/ghostscript-cidfonts/work\(/[^ 	`"':;,]*\.la[ 	`"':;,]\)|_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work#\1|g
s|^/export/pkgsrc/wip/ghostscript-cidfonts/work\(/[^ 	`"':;,]*\.la\)$|_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work#\1|g
s|\([ 	`"':;,]\)-I/export/pkgsrc/wip/ghostscript-cidfonts/work\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-I_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work#\2\3|g
s|\([ 	`"':;,]\)-I/export/pkgsrc/wip/ghostscript-cidfonts/work\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-I_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work#\2\3|g
s|\([ 	`"':;,]\)-I/export/pkgsrc/wip/ghostscript-cidfonts/work\(/[^ 	`"':;,]*\)$|\1-I_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work#\2|g
s|^-I/export/pkgsrc/wip/ghostscript-cidfonts/work\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-I_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work#\1|g
s|^-I/export/pkgsrc/wip/ghostscript-cidfonts/work\(/[^ 	`"':;,]*\)$|-I_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work#\1|g
s|\([ 	`"':;,]\)-L/export/pkgsrc/wip/ghostscript-cidfonts/work\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-L_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work#\2\3|g
s|\([ 	`"':;,]\)-L/export/pkgsrc/wip/ghostscript-cidfonts/work\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-L_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work#\2\3|g
s|\([ 	`"':;,]\)-L/export/pkgsrc/wip/ghostscript-cidfonts/work\(/[^ 	`"':;,]*\)$|\1-L_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work#\2|g
s|^-L/export/pkgsrc/wip/ghostscript-cidfonts/work\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-L_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work#\1|g
s|^-L/export/pkgsrc/wip/ghostscript-cidfonts/work\(/[^ 	`"':;,]*\)$|-L_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work#\1|g
s|\([ 	`"':;,]\)-Wl,--rpath,/export/pkgsrc/wip/ghostscript-cidfonts/work\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,--rpath,_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work#\2\3|g
s|\([ 	`"':;,]\)-Wl,--rpath,/export/pkgsrc/wip/ghostscript-cidfonts/work\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,--rpath,_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work#\2\3|g
s|\([ 	`"':;,]\)-Wl,--rpath,/export/pkgsrc/wip/ghostscript-cidfonts/work\(/[^ 	`"':;,]*\)$|\1-Wl,--rpath,_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work#\2|g
s|^-Wl,--rpath,/export/pkgsrc/wip/ghostscript-cidfonts/work\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,--rpath,_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work#\1|g
s|^-Wl,--rpath,/export/pkgsrc/wip/ghostscript-cidfonts/work\(/[^ 	`"':;,]*\)$|-Wl,--rpath,_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work#\1|g
s|\([ 	`"':;,]\)-Wl,-rpath-link,/export/pkgsrc/wip/ghostscript-cidfonts/work\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,-rpath-link,_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work#\2\3|g
s|\([ 	`"':;,]\)-Wl,-rpath-link,/export/pkgsrc/wip/ghostscript-cidfonts/work\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,-rpath-link,_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work#\2\3|g
s|\([ 	`"':;,]\)-Wl,-rpath-link,/export/pkgsrc/wip/ghostscript-cidfonts/work\(/[^ 	`"':;,]*\)$|\1-Wl,-rpath-link,_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work#\2|g
s|^-Wl,-rpath-link,/export/pkgsrc/wip/ghostscript-cidfonts/work\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,-rpath-link,_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work#\1|g
s|^-Wl,-rpath-link,/export/pkgsrc/wip/ghostscript-cidfonts/work\(/[^ 	`"':;,]*\)$|-Wl,-rpath-link,_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work#\1|g
s|\([ 	`"':;,]\)-Wl,-rpath,/export/pkgsrc/wip/ghostscript-cidfonts/work\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,-rpath,_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work#\2\3|g
s|\([ 	`"':;,]\)-Wl,-rpath,/export/pkgsrc/wip/ghostscript-cidfonts/work\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,-rpath,_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work#\2\3|g
s|\([ 	`"':;,]\)-Wl,-rpath,/export/pkgsrc/wip/ghostscript-cidfonts/work\(/[^ 	`"':;,]*\)$|\1-Wl,-rpath,_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work#\2|g
s|^-Wl,-rpath,/export/pkgsrc/wip/ghostscript-cidfonts/work\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,-rpath,_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work#\1|g
s|^-Wl,-rpath,/export/pkgsrc/wip/ghostscript-cidfonts/work\(/[^ 	`"':;,]*\)$|-Wl,-rpath,_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work#\1|g
s|\([ 	`"':;,]\)-Wl,-R/export/pkgsrc/wip/ghostscript-cidfonts/work\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,-R_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work#\2\3|g
s|\([ 	`"':;,]\)-Wl,-R/export/pkgsrc/wip/ghostscript-cidfonts/work\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,-R_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work#\2\3|g
s|\([ 	`"':;,]\)-Wl,-R/export/pkgsrc/wip/ghostscript-cidfonts/work\(/[^ 	`"':;,]*\)$|\1-Wl,-R_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work#\2|g
s|^-Wl,-R/export/pkgsrc/wip/ghostscript-cidfonts/work\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,-R_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work#\1|g
s|^-Wl,-R/export/pkgsrc/wip/ghostscript-cidfonts/work\(/[^ 	`"':;,]*\)$|-Wl,-R_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work#\1|g
s|\([ 	`"':;,]\)-R/export/pkgsrc/wip/ghostscript-cidfonts/work\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-R_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work#\2\3|g
s|\([ 	`"':;,]\)-R/export/pkgsrc/wip/ghostscript-cidfonts/work\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-R_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work#\2\3|g
s|\([ 	`"':;,]\)-R/export/pkgsrc/wip/ghostscript-cidfonts/work\(/[^ 	`"':;,]*\)$|\1-R_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work#\2|g
s|^-R/export/pkgsrc/wip/ghostscript-cidfonts/work\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-R_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work#\1|g
s|^-R/export/pkgsrc/wip/ghostscript-cidfonts/work\(/[^ 	`"':;,]*\)$|-R_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work#\1|g
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
s|\([ 	`"':;,]\)-Wl,--rpath,_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work_.buildlink#\([ 	`"':;,]\)|\1-Wl,--rpath,/usr/pkg\2|g
s|\([ 	`"':;,]\)-Wl,--rpath,_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work_.buildlink#\([ 	`"':;,]\)|\1-Wl,--rpath,/usr/pkg\2|g
s|\([ 	`"':;,]\)-Wl,--rpath,_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work_.buildlink#$|\1-Wl,--rpath,/usr/pkg|g
s|^-Wl,--rpath,_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work_.buildlink#\([ 	`"':;,]\)|-Wl,--rpath,/usr/pkg\1|g
s|^-Wl,--rpath,_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work_.buildlink#$|-Wl,--rpath,/usr/pkg|g
s|\([ 	`"':;,]\)-Wl,-rpath-link,_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work_.buildlink#\([ 	`"':;,]\)|\1-Wl,-rpath-link,/usr/pkg\2|g
s|\([ 	`"':;,]\)-Wl,-rpath-link,_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work_.buildlink#\([ 	`"':;,]\)|\1-Wl,-rpath-link,/usr/pkg\2|g
s|\([ 	`"':;,]\)-Wl,-rpath-link,_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work_.buildlink#$|\1-Wl,-rpath-link,/usr/pkg|g
s|^-Wl,-rpath-link,_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work_.buildlink#\([ 	`"':;,]\)|-Wl,-rpath-link,/usr/pkg\1|g
s|^-Wl,-rpath-link,_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work_.buildlink#$|-Wl,-rpath-link,/usr/pkg|g
s|\([ 	`"':;,]\)-Wl,-rpath,_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work_.buildlink#\([ 	`"':;,]\)|\1-Wl,-rpath,/usr/pkg\2|g
s|\([ 	`"':;,]\)-Wl,-rpath,_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work_.buildlink#\([ 	`"':;,]\)|\1-Wl,-rpath,/usr/pkg\2|g
s|\([ 	`"':;,]\)-Wl,-rpath,_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work_.buildlink#$|\1-Wl,-rpath,/usr/pkg|g
s|^-Wl,-rpath,_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work_.buildlink#\([ 	`"':;,]\)|-Wl,-rpath,/usr/pkg\1|g
s|^-Wl,-rpath,_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work_.buildlink#$|-Wl,-rpath,/usr/pkg|g
s|\([ 	`"':;,]\)-Wl,-R_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work_.buildlink#\([ 	`"':;,]\)|\1-Wl,-R/usr/pkg\2|g
s|\([ 	`"':;,]\)-Wl,-R_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work_.buildlink#\([ 	`"':;,]\)|\1-Wl,-R/usr/pkg\2|g
s|\([ 	`"':;,]\)-Wl,-R_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work_.buildlink#$|\1-Wl,-R/usr/pkg|g
s|^-Wl,-R_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work_.buildlink#\([ 	`"':;,]\)|-Wl,-R/usr/pkg\1|g
s|^-Wl,-R_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work_.buildlink#$|-Wl,-R/usr/pkg|g
s|\([ 	`"':;,]\)-R_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work_.buildlink#\([ 	`"':;,]\)|\1-R/usr/pkg\2|g
s|\([ 	`"':;,]\)-R_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work_.buildlink#\([ 	`"':;,]\)|\1-R/usr/pkg\2|g
s|\([ 	`"':;,]\)-R_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work_.buildlink#$|\1-R/usr/pkg|g
s|^-R_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work_.buildlink#\([ 	`"':;,]\)|-R/usr/pkg\1|g
s|^-R_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work_.buildlink#$|-R/usr/pkg|g
s|\([ 	`"':;,]\)-Wl,--rpath,_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work_.buildlink#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,--rpath,/usr/pkg\2\3|g
s|\([ 	`"':;,]\)-Wl,--rpath,_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work_.buildlink#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,--rpath,/usr/pkg\2\3|g
s|\([ 	`"':;,]\)-Wl,--rpath,_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work_.buildlink#\(/[^ 	`"':;,]*\)$|\1-Wl,--rpath,/usr/pkg\2|g
s|^-Wl,--rpath,_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work_.buildlink#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,--rpath,/usr/pkg\1|g
s|^-Wl,--rpath,_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work_.buildlink#\(/[^ 	`"':;,]*\)$|-Wl,--rpath,/usr/pkg\1|g
s|\([ 	`"':;,]\)-Wl,-rpath-link,_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work_.buildlink#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,-rpath-link,/usr/pkg\2\3|g
s|\([ 	`"':;,]\)-Wl,-rpath-link,_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work_.buildlink#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,-rpath-link,/usr/pkg\2\3|g
s|\([ 	`"':;,]\)-Wl,-rpath-link,_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work_.buildlink#\(/[^ 	`"':;,]*\)$|\1-Wl,-rpath-link,/usr/pkg\2|g
s|^-Wl,-rpath-link,_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work_.buildlink#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,-rpath-link,/usr/pkg\1|g
s|^-Wl,-rpath-link,_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work_.buildlink#\(/[^ 	`"':;,]*\)$|-Wl,-rpath-link,/usr/pkg\1|g
s|\([ 	`"':;,]\)-Wl,-rpath,_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work_.buildlink#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,-rpath,/usr/pkg\2\3|g
s|\([ 	`"':;,]\)-Wl,-rpath,_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work_.buildlink#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,-rpath,/usr/pkg\2\3|g
s|\([ 	`"':;,]\)-Wl,-rpath,_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work_.buildlink#\(/[^ 	`"':;,]*\)$|\1-Wl,-rpath,/usr/pkg\2|g
s|^-Wl,-rpath,_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work_.buildlink#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,-rpath,/usr/pkg\1|g
s|^-Wl,-rpath,_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work_.buildlink#\(/[^ 	`"':;,]*\)$|-Wl,-rpath,/usr/pkg\1|g
s|\([ 	`"':;,]\)-Wl,-R_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work_.buildlink#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,-R/usr/pkg\2\3|g
s|\([ 	`"':;,]\)-Wl,-R_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work_.buildlink#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,-R/usr/pkg\2\3|g
s|\([ 	`"':;,]\)-Wl,-R_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work_.buildlink#\(/[^ 	`"':;,]*\)$|\1-Wl,-R/usr/pkg\2|g
s|^-Wl,-R_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work_.buildlink#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,-R/usr/pkg\1|g
s|^-Wl,-R_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work_.buildlink#\(/[^ 	`"':;,]*\)$|-Wl,-R/usr/pkg\1|g
s|\([ 	`"':;,]\)-R_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work_.buildlink#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-R/usr/pkg\2\3|g
s|\([ 	`"':;,]\)-R_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work_.buildlink#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-R/usr/pkg\2\3|g
s|\([ 	`"':;,]\)-R_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work_.buildlink#\(/[^ 	`"':;,]*\)$|\1-R/usr/pkg\2|g
s|^-R_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work_.buildlink#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-R/usr/pkg\1|g
s|^-R_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work_.buildlink#\(/[^ 	`"':;,]*\)$|-R/usr/pkg\1|g
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
s|\([ 	`"':;,]\)_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work_.buildlink#\(/[^ 	`"':;,]*\.la[ 	`"':;,]\)|\1/usr/pkg\2|g
s|\([ 	`"':;,]\)_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work_.buildlink#\(/[^ 	`"':;,]*\.la[ 	`"':;,]\)|\1/usr/pkg\2|g
s|\([ 	`"':;,]\)_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work_.buildlink#\(/[^ 	`"':;,]*\.la\)$|\1/usr/pkg\2|g
s|^_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work_.buildlink#\(/[^ 	`"':;,]*\.la[ 	`"':;,]\)|/usr/pkg\1|g
s|^_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work_.buildlink#\(/[^ 	`"':;,]*\.la\)$|/usr/pkg\1|g
s|\([ 	`"':;,]\)-I_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work_.buildlink#\([ 	`"':;,]\)|\1-I/usr/pkg\2|g
s|\([ 	`"':;,]\)-I_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work_.buildlink#\([ 	`"':;,]\)|\1-I/usr/pkg\2|g
s|\([ 	`"':;,]\)-I_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work_.buildlink#$|\1-I/usr/pkg|g
s|^-I_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work_.buildlink#\([ 	`"':;,]\)|-I/usr/pkg\1|g
s|^-I_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work_.buildlink#$|-I/usr/pkg|g
s|\([ 	`"':;,]\)-I_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work_.buildlink#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-I/usr/pkg\2\3|g
s|\([ 	`"':;,]\)-I_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work_.buildlink#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-I/usr/pkg\2\3|g
s|\([ 	`"':;,]\)-I_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work_.buildlink#\(/[^ 	`"':;,]*\)$|\1-I/usr/pkg\2|g
s|^-I_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work_.buildlink#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-I/usr/pkg\1|g
s|^-I_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work_.buildlink#\(/[^ 	`"':;,]*\)$|-I/usr/pkg\1|g
s|\([ 	`"':;,]\)-L_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work_.buildlink#\([ 	`"':;,]\)|\1-L/usr/pkg\2|g
s|\([ 	`"':;,]\)-L_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work_.buildlink#\([ 	`"':;,]\)|\1-L/usr/pkg\2|g
s|\([ 	`"':;,]\)-L_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work_.buildlink#$|\1-L/usr/pkg|g
s|^-L_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work_.buildlink#\([ 	`"':;,]\)|-L/usr/pkg\1|g
s|^-L_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work_.buildlink#$|-L/usr/pkg|g
s|\([ 	`"':;,]\)-L_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work_.buildlink#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-L/usr/pkg\2\3|g
s|\([ 	`"':;,]\)-L_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work_.buildlink#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-L/usr/pkg\2\3|g
s|\([ 	`"':;,]\)-L_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work_.buildlink#\(/[^ 	`"':;,]*\)$|\1-L/usr/pkg\2|g
s|^-L_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work_.buildlink#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-L/usr/pkg\1|g
s|^-L_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work_.buildlink#\(/[^ 	`"':;,]*\)$|-L/usr/pkg\1|g
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
s|\([ 	`"':;,]\)-I_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work#\([ 	`"':;,]\)|\1-I/export/pkgsrc/wip/ghostscript-cidfonts/work\2|g
s|\([ 	`"':;,]\)-I_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work#\([ 	`"':;,]\)|\1-I/export/pkgsrc/wip/ghostscript-cidfonts/work\2|g
s|\([ 	`"':;,]\)-I_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work#$|\1-I/export/pkgsrc/wip/ghostscript-cidfonts/work|g
s|^-I_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work#\([ 	`"':;,]\)|-I/export/pkgsrc/wip/ghostscript-cidfonts/work\1|g
s|^-I_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work#$|-I/export/pkgsrc/wip/ghostscript-cidfonts/work|g
s|\([ 	`"':;,]\)-L_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work#\([ 	`"':;,]\)|\1-L/export/pkgsrc/wip/ghostscript-cidfonts/work\2|g
s|\([ 	`"':;,]\)-L_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work#\([ 	`"':;,]\)|\1-L/export/pkgsrc/wip/ghostscript-cidfonts/work\2|g
s|\([ 	`"':;,]\)-L_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work#$|\1-L/export/pkgsrc/wip/ghostscript-cidfonts/work|g
s|^-L_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work#\([ 	`"':;,]\)|-L/export/pkgsrc/wip/ghostscript-cidfonts/work\1|g
s|^-L_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work#$|-L/export/pkgsrc/wip/ghostscript-cidfonts/work|g
s|\([ 	`"':;,]\)-Wl,--rpath,_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work#\([ 	`"':;,]\)|\1-Wl,--rpath,/export/pkgsrc/wip/ghostscript-cidfonts/work\2|g
s|\([ 	`"':;,]\)-Wl,--rpath,_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work#\([ 	`"':;,]\)|\1-Wl,--rpath,/export/pkgsrc/wip/ghostscript-cidfonts/work\2|g
s|\([ 	`"':;,]\)-Wl,--rpath,_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work#$|\1-Wl,--rpath,/export/pkgsrc/wip/ghostscript-cidfonts/work|g
s|^-Wl,--rpath,_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work#\([ 	`"':;,]\)|-Wl,--rpath,/export/pkgsrc/wip/ghostscript-cidfonts/work\1|g
s|^-Wl,--rpath,_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work#$|-Wl,--rpath,/export/pkgsrc/wip/ghostscript-cidfonts/work|g
s|\([ 	`"':;,]\)-Wl,-rpath-link,_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work#\([ 	`"':;,]\)|\1-Wl,-rpath-link,/export/pkgsrc/wip/ghostscript-cidfonts/work\2|g
s|\([ 	`"':;,]\)-Wl,-rpath-link,_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work#\([ 	`"':;,]\)|\1-Wl,-rpath-link,/export/pkgsrc/wip/ghostscript-cidfonts/work\2|g
s|\([ 	`"':;,]\)-Wl,-rpath-link,_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work#$|\1-Wl,-rpath-link,/export/pkgsrc/wip/ghostscript-cidfonts/work|g
s|^-Wl,-rpath-link,_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work#\([ 	`"':;,]\)|-Wl,-rpath-link,/export/pkgsrc/wip/ghostscript-cidfonts/work\1|g
s|^-Wl,-rpath-link,_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work#$|-Wl,-rpath-link,/export/pkgsrc/wip/ghostscript-cidfonts/work|g
s|\([ 	`"':;,]\)-Wl,-rpath,_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work#\([ 	`"':;,]\)|\1-Wl,-rpath,/export/pkgsrc/wip/ghostscript-cidfonts/work\2|g
s|\([ 	`"':;,]\)-Wl,-rpath,_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work#\([ 	`"':;,]\)|\1-Wl,-rpath,/export/pkgsrc/wip/ghostscript-cidfonts/work\2|g
s|\([ 	`"':;,]\)-Wl,-rpath,_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work#$|\1-Wl,-rpath,/export/pkgsrc/wip/ghostscript-cidfonts/work|g
s|^-Wl,-rpath,_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work#\([ 	`"':;,]\)|-Wl,-rpath,/export/pkgsrc/wip/ghostscript-cidfonts/work\1|g
s|^-Wl,-rpath,_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work#$|-Wl,-rpath,/export/pkgsrc/wip/ghostscript-cidfonts/work|g
s|\([ 	`"':;,]\)-Wl,-R_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work#\([ 	`"':;,]\)|\1-Wl,-R/export/pkgsrc/wip/ghostscript-cidfonts/work\2|g
s|\([ 	`"':;,]\)-Wl,-R_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work#\([ 	`"':;,]\)|\1-Wl,-R/export/pkgsrc/wip/ghostscript-cidfonts/work\2|g
s|\([ 	`"':;,]\)-Wl,-R_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work#$|\1-Wl,-R/export/pkgsrc/wip/ghostscript-cidfonts/work|g
s|^-Wl,-R_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work#\([ 	`"':;,]\)|-Wl,-R/export/pkgsrc/wip/ghostscript-cidfonts/work\1|g
s|^-Wl,-R_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work#$|-Wl,-R/export/pkgsrc/wip/ghostscript-cidfonts/work|g
s|\([ 	`"':;,]\)-R_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work#\([ 	`"':;,]\)|\1-R/export/pkgsrc/wip/ghostscript-cidfonts/work\2|g
s|\([ 	`"':;,]\)-R_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work#\([ 	`"':;,]\)|\1-R/export/pkgsrc/wip/ghostscript-cidfonts/work\2|g
s|\([ 	`"':;,]\)-R_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work#$|\1-R/export/pkgsrc/wip/ghostscript-cidfonts/work|g
s|^-R_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work#\([ 	`"':;,]\)|-R/export/pkgsrc/wip/ghostscript-cidfonts/work\1|g
s|^-R_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work#$|-R/export/pkgsrc/wip/ghostscript-cidfonts/work|g
s|\([ 	`"':;,]\)_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work#\(/[^ 	`"':;,]*\.la[ 	`"':;,]\)|\1/export/pkgsrc/wip/ghostscript-cidfonts/work\2|g
s|\([ 	`"':;,]\)_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work#\(/[^ 	`"':;,]*\.la[ 	`"':;,]\)|\1/export/pkgsrc/wip/ghostscript-cidfonts/work\2|g
s|\([ 	`"':;,]\)_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work#\(/[^ 	`"':;,]*\.la\)$|\1/export/pkgsrc/wip/ghostscript-cidfonts/work\2|g
s|^_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work#\(/[^ 	`"':;,]*\.la[ 	`"':;,]\)|/export/pkgsrc/wip/ghostscript-cidfonts/work\1|g
s|^_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work#\(/[^ 	`"':;,]*\.la\)$|/export/pkgsrc/wip/ghostscript-cidfonts/work\1|g
s|\([ 	`"':;,]\)-I_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-I/export/pkgsrc/wip/ghostscript-cidfonts/work\2\3|g
s|\([ 	`"':;,]\)-I_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-I/export/pkgsrc/wip/ghostscript-cidfonts/work\2\3|g
s|\([ 	`"':;,]\)-I_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work#\(/[^ 	`"':;,]*\)$|\1-I/export/pkgsrc/wip/ghostscript-cidfonts/work\2|g
s|^-I_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-I/export/pkgsrc/wip/ghostscript-cidfonts/work\1|g
s|^-I_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work#\(/[^ 	`"':;,]*\)$|-I/export/pkgsrc/wip/ghostscript-cidfonts/work\1|g
s|\([ 	`"':;,]\)-L_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-L/export/pkgsrc/wip/ghostscript-cidfonts/work\2\3|g
s|\([ 	`"':;,]\)-L_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-L/export/pkgsrc/wip/ghostscript-cidfonts/work\2\3|g
s|\([ 	`"':;,]\)-L_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work#\(/[^ 	`"':;,]*\)$|\1-L/export/pkgsrc/wip/ghostscript-cidfonts/work\2|g
s|^-L_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-L/export/pkgsrc/wip/ghostscript-cidfonts/work\1|g
s|^-L_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work#\(/[^ 	`"':;,]*\)$|-L/export/pkgsrc/wip/ghostscript-cidfonts/work\1|g
s|\([ 	`"':;,]\)-Wl,--rpath,_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,--rpath,/export/pkgsrc/wip/ghostscript-cidfonts/work\2\3|g
s|\([ 	`"':;,]\)-Wl,--rpath,_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,--rpath,/export/pkgsrc/wip/ghostscript-cidfonts/work\2\3|g
s|\([ 	`"':;,]\)-Wl,--rpath,_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work#\(/[^ 	`"':;,]*\)$|\1-Wl,--rpath,/export/pkgsrc/wip/ghostscript-cidfonts/work\2|g
s|^-Wl,--rpath,_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,--rpath,/export/pkgsrc/wip/ghostscript-cidfonts/work\1|g
s|^-Wl,--rpath,_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work#\(/[^ 	`"':;,]*\)$|-Wl,--rpath,/export/pkgsrc/wip/ghostscript-cidfonts/work\1|g
s|\([ 	`"':;,]\)-Wl,-rpath-link,_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,-rpath-link,/export/pkgsrc/wip/ghostscript-cidfonts/work\2\3|g
s|\([ 	`"':;,]\)-Wl,-rpath-link,_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,-rpath-link,/export/pkgsrc/wip/ghostscript-cidfonts/work\2\3|g
s|\([ 	`"':;,]\)-Wl,-rpath-link,_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work#\(/[^ 	`"':;,]*\)$|\1-Wl,-rpath-link,/export/pkgsrc/wip/ghostscript-cidfonts/work\2|g
s|^-Wl,-rpath-link,_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,-rpath-link,/export/pkgsrc/wip/ghostscript-cidfonts/work\1|g
s|^-Wl,-rpath-link,_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work#\(/[^ 	`"':;,]*\)$|-Wl,-rpath-link,/export/pkgsrc/wip/ghostscript-cidfonts/work\1|g
s|\([ 	`"':;,]\)-Wl,-rpath,_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,-rpath,/export/pkgsrc/wip/ghostscript-cidfonts/work\2\3|g
s|\([ 	`"':;,]\)-Wl,-rpath,_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,-rpath,/export/pkgsrc/wip/ghostscript-cidfonts/work\2\3|g
s|\([ 	`"':;,]\)-Wl,-rpath,_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work#\(/[^ 	`"':;,]*\)$|\1-Wl,-rpath,/export/pkgsrc/wip/ghostscript-cidfonts/work\2|g
s|^-Wl,-rpath,_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,-rpath,/export/pkgsrc/wip/ghostscript-cidfonts/work\1|g
s|^-Wl,-rpath,_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work#\(/[^ 	`"':;,]*\)$|-Wl,-rpath,/export/pkgsrc/wip/ghostscript-cidfonts/work\1|g
s|\([ 	`"':;,]\)-Wl,-R_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,-R/export/pkgsrc/wip/ghostscript-cidfonts/work\2\3|g
s|\([ 	`"':;,]\)-Wl,-R_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,-R/export/pkgsrc/wip/ghostscript-cidfonts/work\2\3|g
s|\([ 	`"':;,]\)-Wl,-R_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work#\(/[^ 	`"':;,]*\)$|\1-Wl,-R/export/pkgsrc/wip/ghostscript-cidfonts/work\2|g
s|^-Wl,-R_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,-R/export/pkgsrc/wip/ghostscript-cidfonts/work\1|g
s|^-Wl,-R_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work#\(/[^ 	`"':;,]*\)$|-Wl,-R/export/pkgsrc/wip/ghostscript-cidfonts/work\1|g
s|\([ 	`"':;,]\)-R_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-R/export/pkgsrc/wip/ghostscript-cidfonts/work\2\3|g
s|\([ 	`"':;,]\)-R_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-R/export/pkgsrc/wip/ghostscript-cidfonts/work\2\3|g
s|\([ 	`"':;,]\)-R_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work#\(/[^ 	`"':;,]*\)$|\1-R/export/pkgsrc/wip/ghostscript-cidfonts/work\2|g
s|^-R_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-R/export/pkgsrc/wip/ghostscript-cidfonts/work\1|g
s|^-R_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work#\(/[^ 	`"':;,]*\)$|-R/export/pkgsrc/wip/ghostscript-cidfonts/work\1|g
s|\([ 	`"':;,]\)-I_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work_.buildlink#\([ 	`"':;,]\)|\1-I/export/pkgsrc/wip/ghostscript-cidfonts/work/.buildlink\2|g
s|\([ 	`"':;,]\)-I_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work_.buildlink#\([ 	`"':;,]\)|\1-I/export/pkgsrc/wip/ghostscript-cidfonts/work/.buildlink\2|g
s|\([ 	`"':;,]\)-I_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work_.buildlink#$|\1-I/export/pkgsrc/wip/ghostscript-cidfonts/work/.buildlink|g
s|^-I_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work_.buildlink#\([ 	`"':;,]\)|-I/export/pkgsrc/wip/ghostscript-cidfonts/work/.buildlink\1|g
s|^-I_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work_.buildlink#$|-I/export/pkgsrc/wip/ghostscript-cidfonts/work/.buildlink|g
s|\([ 	`"':;,]\)-L_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work_.buildlink#\([ 	`"':;,]\)|\1-L/export/pkgsrc/wip/ghostscript-cidfonts/work/.buildlink\2|g
s|\([ 	`"':;,]\)-L_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work_.buildlink#\([ 	`"':;,]\)|\1-L/export/pkgsrc/wip/ghostscript-cidfonts/work/.buildlink\2|g
s|\([ 	`"':;,]\)-L_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work_.buildlink#$|\1-L/export/pkgsrc/wip/ghostscript-cidfonts/work/.buildlink|g
s|^-L_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work_.buildlink#\([ 	`"':;,]\)|-L/export/pkgsrc/wip/ghostscript-cidfonts/work/.buildlink\1|g
s|^-L_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work_.buildlink#$|-L/export/pkgsrc/wip/ghostscript-cidfonts/work/.buildlink|g
s|\([ 	`"':;,]\)-Wl,--rpath,_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work_.buildlink#\([ 	`"':;,]\)|\1-Wl,--rpath,/export/pkgsrc/wip/ghostscript-cidfonts/work/.buildlink\2|g
s|\([ 	`"':;,]\)-Wl,--rpath,_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work_.buildlink#\([ 	`"':;,]\)|\1-Wl,--rpath,/export/pkgsrc/wip/ghostscript-cidfonts/work/.buildlink\2|g
s|\([ 	`"':;,]\)-Wl,--rpath,_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work_.buildlink#$|\1-Wl,--rpath,/export/pkgsrc/wip/ghostscript-cidfonts/work/.buildlink|g
s|^-Wl,--rpath,_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work_.buildlink#\([ 	`"':;,]\)|-Wl,--rpath,/export/pkgsrc/wip/ghostscript-cidfonts/work/.buildlink\1|g
s|^-Wl,--rpath,_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work_.buildlink#$|-Wl,--rpath,/export/pkgsrc/wip/ghostscript-cidfonts/work/.buildlink|g
s|\([ 	`"':;,]\)-Wl,-rpath-link,_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work_.buildlink#\([ 	`"':;,]\)|\1-Wl,-rpath-link,/export/pkgsrc/wip/ghostscript-cidfonts/work/.buildlink\2|g
s|\([ 	`"':;,]\)-Wl,-rpath-link,_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work_.buildlink#\([ 	`"':;,]\)|\1-Wl,-rpath-link,/export/pkgsrc/wip/ghostscript-cidfonts/work/.buildlink\2|g
s|\([ 	`"':;,]\)-Wl,-rpath-link,_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work_.buildlink#$|\1-Wl,-rpath-link,/export/pkgsrc/wip/ghostscript-cidfonts/work/.buildlink|g
s|^-Wl,-rpath-link,_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work_.buildlink#\([ 	`"':;,]\)|-Wl,-rpath-link,/export/pkgsrc/wip/ghostscript-cidfonts/work/.buildlink\1|g
s|^-Wl,-rpath-link,_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work_.buildlink#$|-Wl,-rpath-link,/export/pkgsrc/wip/ghostscript-cidfonts/work/.buildlink|g
s|\([ 	`"':;,]\)-Wl,-rpath,_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work_.buildlink#\([ 	`"':;,]\)|\1-Wl,-rpath,/export/pkgsrc/wip/ghostscript-cidfonts/work/.buildlink\2|g
s|\([ 	`"':;,]\)-Wl,-rpath,_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work_.buildlink#\([ 	`"':;,]\)|\1-Wl,-rpath,/export/pkgsrc/wip/ghostscript-cidfonts/work/.buildlink\2|g
s|\([ 	`"':;,]\)-Wl,-rpath,_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work_.buildlink#$|\1-Wl,-rpath,/export/pkgsrc/wip/ghostscript-cidfonts/work/.buildlink|g
s|^-Wl,-rpath,_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work_.buildlink#\([ 	`"':;,]\)|-Wl,-rpath,/export/pkgsrc/wip/ghostscript-cidfonts/work/.buildlink\1|g
s|^-Wl,-rpath,_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work_.buildlink#$|-Wl,-rpath,/export/pkgsrc/wip/ghostscript-cidfonts/work/.buildlink|g
s|\([ 	`"':;,]\)-Wl,-R_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work_.buildlink#\([ 	`"':;,]\)|\1-Wl,-R/export/pkgsrc/wip/ghostscript-cidfonts/work/.buildlink\2|g
s|\([ 	`"':;,]\)-Wl,-R_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work_.buildlink#\([ 	`"':;,]\)|\1-Wl,-R/export/pkgsrc/wip/ghostscript-cidfonts/work/.buildlink\2|g
s|\([ 	`"':;,]\)-Wl,-R_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work_.buildlink#$|\1-Wl,-R/export/pkgsrc/wip/ghostscript-cidfonts/work/.buildlink|g
s|^-Wl,-R_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work_.buildlink#\([ 	`"':;,]\)|-Wl,-R/export/pkgsrc/wip/ghostscript-cidfonts/work/.buildlink\1|g
s|^-Wl,-R_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work_.buildlink#$|-Wl,-R/export/pkgsrc/wip/ghostscript-cidfonts/work/.buildlink|g
s|\([ 	`"':;,]\)-R_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work_.buildlink#\([ 	`"':;,]\)|\1-R/export/pkgsrc/wip/ghostscript-cidfonts/work/.buildlink\2|g
s|\([ 	`"':;,]\)-R_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work_.buildlink#\([ 	`"':;,]\)|\1-R/export/pkgsrc/wip/ghostscript-cidfonts/work/.buildlink\2|g
s|\([ 	`"':;,]\)-R_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work_.buildlink#$|\1-R/export/pkgsrc/wip/ghostscript-cidfonts/work/.buildlink|g
s|^-R_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work_.buildlink#\([ 	`"':;,]\)|-R/export/pkgsrc/wip/ghostscript-cidfonts/work/.buildlink\1|g
s|^-R_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work_.buildlink#$|-R/export/pkgsrc/wip/ghostscript-cidfonts/work/.buildlink|g
s|\([ 	`"':;,]\)_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work_.buildlink#\(/[^ 	`"':;,]*\.la[ 	`"':;,]\)|\1/export/pkgsrc/wip/ghostscript-cidfonts/work/.buildlink\2|g
s|\([ 	`"':;,]\)_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work_.buildlink#\(/[^ 	`"':;,]*\.la[ 	`"':;,]\)|\1/export/pkgsrc/wip/ghostscript-cidfonts/work/.buildlink\2|g
s|\([ 	`"':;,]\)_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work_.buildlink#\(/[^ 	`"':;,]*\.la\)$|\1/export/pkgsrc/wip/ghostscript-cidfonts/work/.buildlink\2|g
s|^_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work_.buildlink#\(/[^ 	`"':;,]*\.la[ 	`"':;,]\)|/export/pkgsrc/wip/ghostscript-cidfonts/work/.buildlink\1|g
s|^_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work_.buildlink#\(/[^ 	`"':;,]*\.la\)$|/export/pkgsrc/wip/ghostscript-cidfonts/work/.buildlink\1|g
s|\([ 	`"':;,]\)-I_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work_.buildlink#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-I/export/pkgsrc/wip/ghostscript-cidfonts/work/.buildlink\2\3|g
s|\([ 	`"':;,]\)-I_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work_.buildlink#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-I/export/pkgsrc/wip/ghostscript-cidfonts/work/.buildlink\2\3|g
s|\([ 	`"':;,]\)-I_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work_.buildlink#\(/[^ 	`"':;,]*\)$|\1-I/export/pkgsrc/wip/ghostscript-cidfonts/work/.buildlink\2|g
s|^-I_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work_.buildlink#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-I/export/pkgsrc/wip/ghostscript-cidfonts/work/.buildlink\1|g
s|^-I_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work_.buildlink#\(/[^ 	`"':;,]*\)$|-I/export/pkgsrc/wip/ghostscript-cidfonts/work/.buildlink\1|g
s|\([ 	`"':;,]\)-L_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work_.buildlink#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-L/export/pkgsrc/wip/ghostscript-cidfonts/work/.buildlink\2\3|g
s|\([ 	`"':;,]\)-L_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work_.buildlink#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-L/export/pkgsrc/wip/ghostscript-cidfonts/work/.buildlink\2\3|g
s|\([ 	`"':;,]\)-L_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work_.buildlink#\(/[^ 	`"':;,]*\)$|\1-L/export/pkgsrc/wip/ghostscript-cidfonts/work/.buildlink\2|g
s|^-L_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work_.buildlink#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-L/export/pkgsrc/wip/ghostscript-cidfonts/work/.buildlink\1|g
s|^-L_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work_.buildlink#\(/[^ 	`"':;,]*\)$|-L/export/pkgsrc/wip/ghostscript-cidfonts/work/.buildlink\1|g
s|\([ 	`"':;,]\)-Wl,--rpath,_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work_.buildlink#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,--rpath,/export/pkgsrc/wip/ghostscript-cidfonts/work/.buildlink\2\3|g
s|\([ 	`"':;,]\)-Wl,--rpath,_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work_.buildlink#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,--rpath,/export/pkgsrc/wip/ghostscript-cidfonts/work/.buildlink\2\3|g
s|\([ 	`"':;,]\)-Wl,--rpath,_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work_.buildlink#\(/[^ 	`"':;,]*\)$|\1-Wl,--rpath,/export/pkgsrc/wip/ghostscript-cidfonts/work/.buildlink\2|g
s|^-Wl,--rpath,_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work_.buildlink#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,--rpath,/export/pkgsrc/wip/ghostscript-cidfonts/work/.buildlink\1|g
s|^-Wl,--rpath,_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work_.buildlink#\(/[^ 	`"':;,]*\)$|-Wl,--rpath,/export/pkgsrc/wip/ghostscript-cidfonts/work/.buildlink\1|g
s|\([ 	`"':;,]\)-Wl,-rpath-link,_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work_.buildlink#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,-rpath-link,/export/pkgsrc/wip/ghostscript-cidfonts/work/.buildlink\2\3|g
s|\([ 	`"':;,]\)-Wl,-rpath-link,_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work_.buildlink#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,-rpath-link,/export/pkgsrc/wip/ghostscript-cidfonts/work/.buildlink\2\3|g
s|\([ 	`"':;,]\)-Wl,-rpath-link,_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work_.buildlink#\(/[^ 	`"':;,]*\)$|\1-Wl,-rpath-link,/export/pkgsrc/wip/ghostscript-cidfonts/work/.buildlink\2|g
s|^-Wl,-rpath-link,_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work_.buildlink#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,-rpath-link,/export/pkgsrc/wip/ghostscript-cidfonts/work/.buildlink\1|g
s|^-Wl,-rpath-link,_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work_.buildlink#\(/[^ 	`"':;,]*\)$|-Wl,-rpath-link,/export/pkgsrc/wip/ghostscript-cidfonts/work/.buildlink\1|g
s|\([ 	`"':;,]\)-Wl,-rpath,_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work_.buildlink#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,-rpath,/export/pkgsrc/wip/ghostscript-cidfonts/work/.buildlink\2\3|g
s|\([ 	`"':;,]\)-Wl,-rpath,_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work_.buildlink#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,-rpath,/export/pkgsrc/wip/ghostscript-cidfonts/work/.buildlink\2\3|g
s|\([ 	`"':;,]\)-Wl,-rpath,_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work_.buildlink#\(/[^ 	`"':;,]*\)$|\1-Wl,-rpath,/export/pkgsrc/wip/ghostscript-cidfonts/work/.buildlink\2|g
s|^-Wl,-rpath,_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work_.buildlink#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,-rpath,/export/pkgsrc/wip/ghostscript-cidfonts/work/.buildlink\1|g
s|^-Wl,-rpath,_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work_.buildlink#\(/[^ 	`"':;,]*\)$|-Wl,-rpath,/export/pkgsrc/wip/ghostscript-cidfonts/work/.buildlink\1|g
s|\([ 	`"':;,]\)-Wl,-R_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work_.buildlink#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,-R/export/pkgsrc/wip/ghostscript-cidfonts/work/.buildlink\2\3|g
s|\([ 	`"':;,]\)-Wl,-R_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work_.buildlink#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,-R/export/pkgsrc/wip/ghostscript-cidfonts/work/.buildlink\2\3|g
s|\([ 	`"':;,]\)-Wl,-R_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work_.buildlink#\(/[^ 	`"':;,]*\)$|\1-Wl,-R/export/pkgsrc/wip/ghostscript-cidfonts/work/.buildlink\2|g
s|^-Wl,-R_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work_.buildlink#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,-R/export/pkgsrc/wip/ghostscript-cidfonts/work/.buildlink\1|g
s|^-Wl,-R_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work_.buildlink#\(/[^ 	`"':;,]*\)$|-Wl,-R/export/pkgsrc/wip/ghostscript-cidfonts/work/.buildlink\1|g
s|\([ 	`"':;,]\)-R_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work_.buildlink#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-R/export/pkgsrc/wip/ghostscript-cidfonts/work/.buildlink\2\3|g
s|\([ 	`"':;,]\)-R_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work_.buildlink#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-R/export/pkgsrc/wip/ghostscript-cidfonts/work/.buildlink\2\3|g
s|\([ 	`"':;,]\)-R_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work_.buildlink#\(/[^ 	`"':;,]*\)$|\1-R/export/pkgsrc/wip/ghostscript-cidfonts/work/.buildlink\2|g
s|^-R_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work_.buildlink#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-R/export/pkgsrc/wip/ghostscript-cidfonts/work/.buildlink\1|g
s|^-R_bUiLdLiNk__export_pkgsrc_wip_ghostscript-cidfonts_work_.buildlink#\(/[^ 	`"':;,]*\)$|-R/export/pkgsrc/wip/ghostscript-cidfonts/work/.buildlink\1|g
