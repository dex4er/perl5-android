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
d_locconv='undef'
d_setlocale='undef'
d_setlocale_r='undef'
d_getservent_r='undef'
d_getpwnam_r='undef'
d_getpwuid_r='undef'
d_getpwent='undef'
d_useshellcmds='define'
d_libname_unique='define'
sh='/system/bin/sh'
libswanted="$libswanted m"
libs='-ldl -lm -lc'
libc='/system/lib/libc.so'

# Hackery. We want osname to be linux-android during Configure,
# but plain 'android' afterwards.
case "$src" in
    /*) pwd="$src";;
    *)  pwd=`test -f ../Configure && cd ..; pwd`
        ;;
esac

$cat <<EOO >> $pwd/config.arch

osname='android'
EOO
