#!/bin/sh
# checkout daily OpenBSD kernel sources
# run kernel config and gcc preprocessor
# check into git repository

set -eu

# find directory relative to bin
dir=`dirname $0`
[ -n $dir ] && cd $dir/..

machine=`machine`
KK=GENERIC.MP

if ! [ -f openbsd/src/sys/Makefile ]
then
	mkdir -p openbsd
	( cd openbsd && cvs -qR co src/sys/Makefile )
fi
( cd openbsd/src/sys && cvs -qR up -D"`date -u +'%F UTC'`" -PdA -C )
( cd openbsd/src/sys/arch/$machine/compile/$KK && make obj )
( cd openbsd/src/sys/arch/$machine/compile/$KK && make config )

mkdir -p source/$KK
SYSOBJDIR=$PWD/openbsd/src/sys/arch/$machine/compile/$KK/obj
SYSOBJDIR=$SYSOBJDIR KK=$KK time nice make -C source cpp
