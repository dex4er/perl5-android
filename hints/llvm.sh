cat << 'END' > config.arch

osname='llvm'
osvers='3.2'
cc='clang'
ccflags="$ccflags -emit-llvm -fPIC -fno-strict-aliasing"
obj_ext='.bc'
ld='llvm-link'
exe_ext='.bc'
END
