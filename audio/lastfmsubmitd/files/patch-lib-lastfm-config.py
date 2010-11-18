--- lib/lastfm/config.py.orig	2010-11-18 13:22:43.000000000 +0000
+++ lib/lastfm/config.py	2010-11-18 13:23:53.000000000 +0000
@@ -17,7 +17,7 @@
     def __call__(self, use_sys_path, name):
         return self.funcs[use_sys_path](name)
 
-CONF = DefaultPath(lambda n: '/etc/%s.conf' % n,
+CONF = DefaultPath(lambda n: '%%PREFIX%%/etc/%s.conf' % n,
                    lambda n: '~/.%s/conf' % n)
 LOG = DefaultPath(lambda n: '/var/log/lastfm/%s.log' % n,
                   lambda n: '~/.%s/log' % n)
@@ -35,8 +35,8 @@
     """The minimum configuration needed by any program that communicates
     through the lastfmsubmitd protocol: where to put the serialized
     submissions and where to log. If the provided path or ~/.NAME/config is
-    found, the "user" defaults are used. Otherwise, /etc/NAME.conf is read,
-    and the "system" defaults are used."""
+    found, the "user" defaults are used. Otherwise, %%PREFIX%%/etc/NAME.conf
+    is read, and the "system" defaults are used."""
 
     def __init__(self, path='', name='lastfmsubmitd'):
         self.cp = SaneConfParser()
