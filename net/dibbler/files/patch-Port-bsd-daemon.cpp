diff --git Port-bsd/daemon.cpp Port-bsd/daemon.cpp
index 12c84b0..cdb940f 100644
--- Port-bsd/daemon.cpp
+++ Port-bsd/daemon.cpp
@@ -9,7 +9,8 @@
  */
 
 #include <iostream>
-#include <string>
+#include <string.h>
+#include <strings.h>
 #include <fstream>
 #include <signal.h>
 #include <unistd.h>
@@ -17,6 +18,7 @@
 #include <sys/stat.h>
 #include "Portable.h"
 #include "Logger.h"
+#include <stdlib.h>
 
 extern int status();
 extern int run();
