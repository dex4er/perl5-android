#! /bin/sh

# Support for Android

. ./hints/linux.sh

afs='false'
d_csh='undef'
useshrplib='true'
i_db='undef'
i_gdbm='undef'
i_ndbm='undef'
i_dbm='undef'
i_sdbm='undef'
useopcode='define'
man1dir=' '
man3dir=' '
unset siteman1
unset siteman3
unset vendorman1
unset vendorman3
installusrbinperl='undef'
i_locale='undef'
d_setlocale='undef'
d_setlocale_r='undef'
d_getservent_r='undef'
d_getpwnam_r='undef'
d_getpwuid_r='undef'
d_getpwent='undef'
sh='/system/bin/sh'
libs='-ldl -lm -lc'
libc='/system/lib/libc.so'
