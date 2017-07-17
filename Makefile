KK =		GENERIC.MP
DATE !!=	date -u +%F

.PHONY: all clean

all:
	rm -f stamp-current
	${.MAKE} stamp-current
	${.MAKE} stamp-preproc

clean:
	rm -f stamp-*

stamp-current:
	date -u >$@
	touch -d '${DATE}T00:00:00Z' $@

# checkout daily OpenBSD kernel sources
stamp-checkout: stamp-current
	rm -f $@
	if ! [ -f openbsd/src/sys/Makefile ]; then mkdir -p openbsd;\
	    cd openbsd && cvs -qR co src/sys/Makefile; fi
	cd openbsd/src/sys && cvs -qR up -D'${DATE} UTC' -PdA -C
	date -u >$@

stamp-config: stamp-checkout
	rm -f $@
	rm -rf openbsd/src/sys/arch/${MACHINE}/compile/${KK}/obj
	make -C openbsd/src/sys/arch/${MACHINE}/compile/${KK} obj
	make -C openbsd/src/sys/arch/${MACHINE}/compile/${KK} config
	date -u >$@

# run kernel config and gcc preprocessor
stamp-preproc: stamp-config
	rm -f $@
	mkdir -p source/${KK}
	SYSOBJDIR=${.OBJDIR}/openbsd/src/sys/arch/${MACHINE}/compile/${KK}/obj\
	    KK=${KK} ${.MAKE} -C source clean
	SYSOBJDIR=${.OBJDIR}/openbsd/src/sys/arch/${MACHINE}/compile/${KK}/obj\
	    KK=${KK} time nice ${.MAKE} -C source cpp
	date -u >$@

# check into git repository
stamp-commit: stamp-preproc
	git add stamp-current source/${KK}
	git commit -m 'source update'
	date -u >$@
