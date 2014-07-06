diff --git IfaceMgr/SocketIPv6.cpp IfaceMgr/SocketIPv6.cpp
index 7c06e24..4edd28b 100644
--- IfaceMgr/SocketIPv6.cpp
+++ IfaceMgr/SocketIPv6.cpp
@@ -14,6 +14,7 @@
 #include <string.h>
 #include <string>
 #include <ostream>
+#include <sys/select.h>
 #include "SocketIPv6.h"
 #include "Portable.h"
 #include "DHCPConst.h"
