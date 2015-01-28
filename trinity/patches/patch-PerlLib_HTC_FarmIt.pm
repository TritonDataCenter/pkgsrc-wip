$NetBSD$

--- PerlLib/HTC/FarmIt.pm.orig	2014-04-23 15:59:17.000000000 +0000
+++ PerlLib/HTC/FarmIt.pm
@@ -447,8 +447,8 @@ sub _wait_for_completions {
                 
                 if ($all_OK) {
                     # lets not retain the shell script and stderr and stdout.  Only retain them for failures.
-                    unlink($shell_script);
-                    unlink("$shell_script.stderr", "$shell_script.stdout");
+                    # unlink($shell_script);
+                    # unlink("$shell_script.stderr", "$shell_script.stdout");
                     delete $self->{job_id_to_shell_script}->{$job_id};
                     
                     print "OK.  Trying to delete $shell_script and .stderr and .stdout.\n" if $SEE;
