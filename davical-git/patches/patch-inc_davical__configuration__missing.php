$NetBSD$

--- inc/davical_configuration_missing.php.orig	2015-11-12 14:35:57.000000000 +0000
+++ inc/davical_configuration_missing.php
@@ -4,7 +4,7 @@ include("page-header.php");
   echo <<<EOBODY
 <h1>DAViCal Not Configured</h1>
 <h2>The Bad News</h2>
-<p>There is no configuration file present in <b>/etc/davical/config.php</b> (or in <b>$_SERVER[SERVER_NAME]-conf.php</b>) so
+<p>There is no configuration file present in <b>@PKG_SYSCONFDIR@/config.php</b> (or in <b>$_SERVER[SERVER_NAME]-conf.php</b>) so
    your installation is not fully set up.</p>
 <h2>The Good News</h2>
 <p>Well, you're seeing this! At least you have DAViCal <i>installed</i> :-) You also have Apache and PHP working
