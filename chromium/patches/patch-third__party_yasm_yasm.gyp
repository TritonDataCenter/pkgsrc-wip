$NetBSD$

--- third_party/yasm/yasm.gyp.orig	2011-05-24 08:01:30.000000000 +0000
+++ third_party/yasm/yasm.gyp
@@ -158,6 +158,15 @@
       ],
       'defines': [ '<@(yasm_defines)' ],
       'cflags': [ '<@(yasm_cflags)', ],
+      'conditions': [
+        ['OS=="netbsd" or OS=="dragonfly"', {
+          'link_settings': {
+            'libraries': [
+              '-lintl',
+            ],
+          },
+        }],
+      ],
       'rules': [
         {
           'rule_name': 'generate_gperf',
