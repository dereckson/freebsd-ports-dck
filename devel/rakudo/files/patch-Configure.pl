--- Configure.pl.orig	2021-09-02 09:43:43 UTC
+++ Configure.pl
@@ -11,20 +11,6 @@ use Cwd;
 use FindBin;
 
 
-BEGIN {
-    # Download / Update submodules
-    my $set_config = !qx{git config rakudo.initialized};
-    if ( !-e '3rdparty/nqp-configure/LICENSE' ) {
-        my $code = system($^X, 'tools/build/update-submodules.pl', Cwd::cwd(), @ARGV);
-        exit 1 if $code;
-        $set_config = 1;
-    }
-    if ($set_config) {
-        system("git config submodule.recurse true");
-        system("git config rakudo.initialized 1");
-    }
-}
-
 use lib ( "$FindBin::Bin/tools/lib",
     "$FindBin::Bin/3rdparty/nqp-configure/lib" );
 use NQP::Config qw<system_or_die slurp>;
