$NetBSD: patch-lib_ansible_cli_galaxy.py,v 1.0 2016/02/24 22:44:30 tty Exp $

Fix hardcoded path.

--- lib/ansible/cli/galaxy.py.orig	2016-05-25 13:00:55.000000000 +0000
+++ lib/ansible/cli/galaxy.py
@@ -115,7 +115,7 @@ class GalaxyCLI(CLI):
             # NOTE: while the option type=str, the default is a list, and the
             # callback will set the value to a list.
             self.parser.add_option('-p', '--roles-path', dest='roles_path', action="callback", callback=CLI.expand_paths, type=str, default=C.DEFAULT_ROLES_PATH,
-                help='The path to the directory containing your roles. The default is the roles_path configured in your ansible.cfg file (/etc/ansible/roles if not configured)')
+                help='The path to the directory containing your roles. The default is the roles_path configured in your ansible.cfg file (@PKG_SYSCONFDIR@/ansible/roles if not configured)')
 
         if self.action in ("init","install"):
             self.parser.add_option('-f', '--force', dest='force', action='store_true', default=False, help='Force overwriting an existing role')
