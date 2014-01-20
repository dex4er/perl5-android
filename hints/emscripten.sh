#!/bin/sh

osname='emscripten'
osvers='3.2'
archname='llvm-llvm-emscripten'

run='nodejs'
exe_ext='.js'

cc='emcc'
d_cplusplus='undef'
ccflags="$ccflags"

ld='emcc'
ldflags="$ldflags -Wno-warn-absolute-paths -s DLOPEN_SUPPORT=1 -s MAIN_MODULE=1 -s ASM_JS=1 -O1"
perllibs=''
cryptlib=''

d_procselfexe='undef'

ebcdic='undef'
