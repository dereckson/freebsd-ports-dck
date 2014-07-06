diff --git Port-bsd/dibbler-server.cpp Port-bsd/dibbler-server.cpp
index d3b9281..a348c9b 100644
--- Port-bsd/dibbler-server.cpp
+++ Port-bsd/dibbler-server.cpp
@@ -11,6 +11,8 @@
  */
 
 #include <signal.h>
+#include <string.h>
+#include <strings.h>
 #include "DHCPServer.h"
 #include "Portable.h"
 #include "Logger.h"
