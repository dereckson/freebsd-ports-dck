--- defaults.h.dist	2007-07-04 18:00:17.000000000 +0000
+++ defaults.h	2020-01-18 05:27:20.325542000 +0000
@@ -5,8 +5,8 @@
 
 /* This is the default format of the output file.  See the README for more *\ 
 \* information on how to configure this option.                            */ 
-char DEFAULT_BANNER_FORMAT[]= S_("#O Version #V, Compiled #C\n#N #M #X #T #P, #R RAM, #B Bogomips Total\n#H\n"); 
-char DEFAULT_CLASSIC_FORMAT[]= S_("#O Version #V\nCompiled #C\n#N #M #X #T #P, #R RAM\n#B Bogomips Total\n#H\n"); 
+char DEFAULT_BANNER_FORMAT[]= S_("#O Version #V, Compiled #C\n#N #M #X #T #P\n#H\n"); 
+char DEFAULT_CLASSIC_FORMAT[]= S_("#O Version #V\nCompiled #C\n#N #M #X #T #P\n#H\n"); 
 /* Plural.  With the coming of i18n you really can't assume plurals can */ 
 /* be made by adding a string to the end.  Hopefully this can fix it for*/ 
 /* most languages.  If they require significant word-order changes then */ 
