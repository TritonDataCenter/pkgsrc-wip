@comment $NetBSD$
@exec ${MV} -f /usr/sbin/makemap /usr/sbin/makemap.8.8 || ${TRUE}
@unexec ${MV} -f /usr/sbin/makemap.8.8 /usr/sbin/makemap || ${TRUE}
