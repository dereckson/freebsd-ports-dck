--- src/codemod.py.orig	2012-07-07 11:18:26.000000000 +0200
+++ src/codemod.py	2012-07-07 11:18:44.000000000 +0200
@@ -19,14 +19,14 @@
 # @author Justin Rosenstein
 
 r"""
-codemod.py is a tool/library to assist you with large-scale codebase refactors
+codemod is a tool/library to assist you with large-scale codebase refactors
 that can be partially automated but still require human oversight and
 occassional intervention.
 
 Example: Let's say you're deprecating your use of the <font> tag.  From the
 command line, you might make progress by running:
 
-  codemod.py -m -d /home/jrosenstein/www --extensions php,html \
+  codemod -m -d /home/jrosenstein/www --extensions php,html \
              '<font *color="?(.*?)"?>(.*?)</font>' \
              '<span style="color: \1;">\2</span>'
 
