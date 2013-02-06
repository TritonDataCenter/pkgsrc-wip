$NetBSD$

--- protobuf/genproto.gypi.orig	2012-08-31 05:37:07.000000000 +0000
+++ protobuf/genproto.gypi
@@ -36,13 +36,13 @@
   'conditions': [
     ['OS!="linux"', {
       'variables': {
-        'protoc_command%': '<(relative_dir)/<(mozc_build_tools_dir)/protoc<(EXECUTABLE_SUFFIX)',
+        'protoc_command%': 'protoc<(EXECUTABLE_SUFFIX)',
       },
     }, {  # else
       'conditions': [
         ['use_libprotobuf==0', {
           'variables': {
-            'protoc_command%': '<(relative_dir)/<(mozc_build_tools_dir)/protoc<(EXECUTABLE_SUFFIX)',
+            'protoc_command%': 'protoc<(EXECUTABLE_SUFFIX)',
           },
         }, {  # else
           'variables': {
