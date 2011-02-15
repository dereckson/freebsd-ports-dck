--- build.sh
+++ build.sh
@@ -1,9 +1,9 @@
 #!/bin/sh
 
-if [ `uname -s` == "OpenBSD" -o `uname -s` == "FreeBSD" ]; then
+if [ "$(uname -s)" = "OpenBSD" -o "$(uname -s)" = "FreeBSD" ]; then
 	echo "Detected *BSD"
 	tar="gtar"
-elif [ `uname -s` == "SunOS" ]; then
+elif [ "$(uname -s)" = "SunOS" ]; then
 	echo "Detected SunOS"
 	tar="gtar"
 	CFLAGS="$CFLAGS -DSOLARIS -m64"
