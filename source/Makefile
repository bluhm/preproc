.PHONY: cpp clean

clean:
	rm -rf source/${KK}

SYSOBJDIR ?=	${BSDSRCDIR}/sys/arch/${MACHINE}/compile/GENERIC.MP/obj
.include "${SYSOBJDIR}/Makefile"
S=${SYSOBJDIR}/../../../../..

cpp: ${CFILES:S/.c$/.i/}

.SUFFIXES: .c .i

.c.i:
	cd ${SYSOBJDIR} && ${NORMAL_C} -I${SYSOBJDIR} -E\
	    -o ${@:T:S,^,${.OBJDIR}/${KK}/,}
