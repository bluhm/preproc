# 1 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../arch/sparc64/fpu/fpu_div.c"
# 1 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../arch/sparc64/fpu/fpu_div.c"
# 48 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../arch/sparc64/fpu/fpu_div.c"
# 1 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../sys/types.h" 1
# 43 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../sys/types.h"
# 1 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../sys/cdefs.h" 1
# 41 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../sys/cdefs.h"
# 1 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/machine/cdefs.h" 1
# 42 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../sys/cdefs.h" 2
# 44 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../sys/types.h" 2

# 1 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../sys/endian.h" 1
# 41 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../sys/endian.h"
# 1 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../sys/_endian.h" 1
# 36 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../sys/_endian.h"
# 1 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../sys/_types.h" 1
# 37 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../sys/_types.h"
# 1 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/machine/_types.h" 1
# 39 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/machine/_types.h"
typedef struct label_t {
 long val[2];
} label_t;
# 60 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/machine/_types.h"
typedef signed char __int8_t;
typedef unsigned char __uint8_t;
typedef short __int16_t;
typedef unsigned short __uint16_t;
typedef int __int32_t;
typedef unsigned int __uint32_t;
typedef long long __int64_t;
typedef unsigned long long __uint64_t;


typedef __int8_t __int_least8_t;
typedef __uint8_t __uint_least8_t;
typedef __int16_t __int_least16_t;
typedef __uint16_t __uint_least16_t;
typedef __int32_t __int_least32_t;
typedef __uint32_t __uint_least32_t;
typedef __int64_t __int_least64_t;
typedef __uint64_t __uint_least64_t;


typedef __int32_t __int_fast8_t;
typedef __uint32_t __uint_fast8_t;
typedef __int32_t __int_fast16_t;
typedef __uint32_t __uint_fast16_t;
typedef __int32_t __int_fast32_t;
typedef __uint32_t __uint_fast32_t;
typedef __int64_t __int_fast64_t;
typedef __uint64_t __uint_fast64_t;
# 102 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/machine/_types.h"
typedef long __intptr_t;
typedef unsigned long __uintptr_t;


typedef __int64_t __intmax_t;
typedef __uint64_t __uintmax_t;


typedef long __register_t;


typedef unsigned long __vaddr_t;
typedef unsigned long __paddr_t;
typedef unsigned long __vsize_t;
typedef unsigned long __psize_t;


typedef double __double_t;
typedef float __float_t;
typedef long __ptrdiff_t;
typedef unsigned long __size_t;
typedef long __ssize_t;

typedef __builtin_va_list __va_list;






typedef int __wchar_t;

typedef int __wint_t;
typedef int __rune_t;
typedef void * __wctrans_t;
typedef void * __wctype_t;
# 38 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../sys/_types.h" 2

typedef __int64_t __blkcnt_t;
typedef __int32_t __blksize_t;
typedef __int64_t __clock_t;
typedef __int32_t __clockid_t;
typedef unsigned long __cpuid_t;
typedef __int32_t __dev_t;
typedef __uint32_t __fixpt_t;
typedef __uint64_t __fsblkcnt_t;
typedef __uint64_t __fsfilcnt_t;
typedef __uint32_t __gid_t;
typedef __uint32_t __id_t;
typedef __uint32_t __in_addr_t;
typedef __uint16_t __in_port_t;
typedef __uint64_t __ino_t;
typedef long __key_t;
typedef __uint32_t __mode_t;
typedef __uint32_t __nlink_t;
typedef __int64_t __off_t;
typedef __int32_t __pid_t;
typedef __uint64_t __rlim_t;
typedef __uint8_t __sa_family_t;
typedef __int32_t __segsz_t;
typedef __uint32_t __socklen_t;
typedef long __suseconds_t;
typedef __int32_t __swblk_t;
typedef __int64_t __time_t;
typedef __int32_t __timer_t;
typedef __uint32_t __uid_t;
typedef __uint32_t __useconds_t;





typedef union {
 char __mbstate8[128];
 __int64_t __mbstateL;
} __mbstate_t;
# 37 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../sys/_endian.h" 2


# 1 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/machine/endian.h" 1
# 12 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/machine/endian.h"
static inline __uint16_t
__mswap16(volatile const __uint16_t *m)
{
 __uint16_t v;

 __asm("lduha [%1] %2, %0 ! %3"
     : "=r" (v)
     : "r" (m), "n" (0x88), "m" (*m));

 return (v);
}

static inline __uint32_t
__mswap32(volatile const __uint32_t *m)
{
 __uint32_t v;

 __asm("lduwa [%1] %2, %0 ! %3"
     : "=r" (v)
     : "r" (m), "n" (0x88), "m" (*m));

 return (v);
}

static inline __uint64_t
__mswap64(volatile const __uint64_t *m)
{
 __uint64_t v;

 __asm("ldxa [%1] %2, %0 ! %3"
     : "=r" (v)
     : "r" (m), "n" (0x88), "m" (*m));

 return (v);
}

static inline void
__swapm16(volatile __uint16_t *m, __uint16_t v)
{
 __asm("stha %1, [%2] %3 ! %0"
     : "=m" (*m)
     : "r" (v), "r" (m), "n" (0x88));
}

static inline void
__swapm32(volatile __uint32_t *m, __uint32_t v)
{
 __asm("stwa %1, [%2] %3 ! %0"
     : "=m" (*m)
     : "r" (v), "r" (m), "n" (0x88));
}

static inline void
__swapm64(volatile __uint64_t *m, __uint64_t v)
{
 __asm("stxa %1, [%2] %3 ! %0"
     : "=m" (*m)
     : "r" (v), "r" (m), "n" (0x88));
}
# 40 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../sys/_endian.h" 2
# 42 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../sys/endian.h" 2
# 46 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../sys/types.h" 2





typedef unsigned char u_char;
typedef unsigned short u_short;
typedef unsigned int u_int;
typedef unsigned long u_long;

typedef unsigned char unchar;
typedef unsigned short ushort;
typedef unsigned int uint;
typedef unsigned long ulong;

typedef __cpuid_t cpuid_t;
typedef __register_t register_t;
# 75 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../sys/types.h"
typedef __int8_t int8_t;




typedef __uint8_t uint8_t;




typedef __int16_t int16_t;




typedef __uint16_t uint16_t;




typedef __int32_t int32_t;




typedef __uint32_t uint32_t;




typedef __int64_t int64_t;




typedef __uint64_t uint64_t;



typedef __uint8_t u_int8_t;
typedef __uint16_t u_int16_t;
typedef __uint32_t u_int32_t;
typedef __uint64_t u_int64_t;


typedef __int64_t quad_t;
typedef __uint64_t u_quad_t;



typedef __vaddr_t vaddr_t;
typedef __paddr_t paddr_t;
typedef __vsize_t vsize_t;
typedef __psize_t psize_t;



typedef __blkcnt_t blkcnt_t;
typedef __blksize_t blksize_t;
typedef char * caddr_t;
typedef __int32_t daddr32_t;
typedef __int64_t daddr_t;
typedef __dev_t dev_t;
typedef __fixpt_t fixpt_t;
typedef __gid_t gid_t;
typedef __id_t id_t;
typedef __ino_t ino_t;
typedef __key_t key_t;
typedef __mode_t mode_t;
typedef __nlink_t nlink_t;
typedef __rlim_t rlim_t;
typedef __segsz_t segsz_t;
typedef __swblk_t swblk_t;
typedef __uid_t uid_t;
typedef __useconds_t useconds_t;
typedef __suseconds_t suseconds_t;
typedef __fsblkcnt_t fsblkcnt_t;
typedef __fsfilcnt_t fsfilcnt_t;






typedef __clock_t clock_t;




typedef __clockid_t clockid_t;




typedef __pid_t pid_t;




typedef __size_t size_t;




typedef __ssize_t ssize_t;




typedef __time_t time_t;




typedef __timer_t timer_t;




typedef __off_t off_t;
# 223 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../sys/types.h"
struct proc;
struct pgrp;
struct ucred;
struct rusage;
struct file;
struct buf;
struct tty;
struct uio;
# 49 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../arch/sparc64/fpu/fpu_div.c" 2

# 1 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/machine/reg.h" 1
# 54 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/machine/reg.h"
struct trapframe32 {
 int tf_psr;
 int tf_pc;
 int tf_npc;
 int tf_y;
 int tf_global[8];
 int tf_out[8];
};
# 71 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/machine/reg.h"
struct trapframe64 {
 int64_t tf_tstate;
 int64_t tf_pc;
 int64_t tf_npc;
 int64_t tf_fault;
 int64_t tf_kstack;
 int tf_y;
 short tf_tt;
 char tf_pil;
 char tf_oldpil;
 int64_t tf_global[8];
 int64_t tf_out[8];
 int64_t tf_local[8];
 int64_t tf_in[8];
};
# 96 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/machine/reg.h"
struct rwindow32 {
 int rw_local[8];
 int rw_in[8];
};


struct rwindow64 {
 int64_t rw_local[8];
 int64_t rw_in[8];
};





struct reg32 {
 int r_psr;
 int r_pc;
 int r_npc;
 int r_y;
 int r_global[8];
 int r_out[8];
};

struct reg64 {
 int64_t r_tstate;
 int64_t r_pc;
 int64_t r_npc;
 int r_y;
 int64_t r_global[8];
 int64_t r_out[8];
 int64_t r_local[8];
 int64_t r_in[8];
};

# 1 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/machine/fsr.h" 1
# 132 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/machine/reg.h" 2
# 147 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/machine/reg.h"
struct fp_qentry {
 int *fq_addr;
 int fq_instr;
};

struct fpstate64 {
 u_int fs_regs[64];
 int64_t fs_fsr;
 int fs_gsr;
 int fs_qsize;
 struct fp_qentry fs_queue[16];
};




struct fpstate32 {
 u_int fs_regs[32];
 int fs_fsr;
 int fs_qsize;
 struct fp_qentry fs_queue[16];
};






struct fpreg64 {
 u_int fr_regs[64];
 int64_t fr_fsr;
 int fr_gsr;
};




struct fpreg32 {
 u_int fr_regs[32];
 int fr_fsr;
};
# 51 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../arch/sparc64/fpu/fpu_div.c" 2

# 1 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../arch/sparc64/fpu/fpu_arith.h" 1
# 53 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../arch/sparc64/fpu/fpu_div.c" 2
# 1 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../arch/sparc64/fpu/fpu_emu.h" 1
# 79 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../arch/sparc64/fpu/fpu_emu.h"
struct fpn {
 int fp_class;
 int fp_sign;
 int fp_exp;
 int fp_sticky;
 u_int fp_mant[4];
};
# 138 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../arch/sparc64/fpu/fpu_emu.h"
struct fpemu {
 struct fpstate64 *fe_fpstate;
 int fe_fsr;
 int fe_cx;
 struct fpn fe_f1;
 struct fpn fe_f2;
 struct fpn fe_f3;
};






struct fpn *fpu_add(struct fpemu *);

struct fpn *fpu_mul(struct fpemu *);
struct fpn *fpu_div(struct fpemu *);
struct fpn *fpu_sqrt(struct fpemu *);






void fpu_compare(struct fpemu *, int);


struct fpn *fpu_newnan(struct fpemu *);






int fpu_shr(struct fpn *, int);

void fpu_explode(struct fpemu *, struct fpn *, int, int);
void fpu_implode(struct fpemu *, struct fpn *, int, u_int *);
# 54 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../arch/sparc64/fpu/fpu_div.c" 2
# 150 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../arch/sparc64/fpu/fpu_div.c"
struct fpn *
fpu_div(fe)
 register struct fpemu *fe;
{
 register struct fpn *x = &fe->fe_f1, *y = &fe->fe_f2;
 register u_int q, bit;
 register u_int r0, r1, r2, r3, d0, d1, d2, d3, y0, y1, y2, y3;

# 175 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../arch/sparc64/fpu/fpu_div.c"
 if (((x)->fp_class < 0) || ((y)->fp_class < 0)) {
  { if ((u_int)(x)->fp_class > (u_int)(y)->fp_class) { register struct fpn *swap; swap = (x), (x) = (y), (y) = swap; }; };
  return (y);
 }
 if (((x)->fp_class == 2) || ((x)->fp_class == 0)) {
  if (x->fp_class == y->fp_class)
   return (fpu_newnan(fe));
  return (x);
 }


 x->fp_sign ^= y->fp_sign;
 if (((y)->fp_class == 2)) {
  x->fp_class = 0;
  return (x);
 }
 if (((y)->fp_class == 0)) {
  fe->fe_cx = 0x02;
  x->fp_class = 2;
  return (x);
 }
# 236 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../arch/sparc64/fpu/fpu_div.c"
 r0 = x->fp_mant[0];
 r1 = x->fp_mant[1];
 r2 = x->fp_mant[2];
 r3 = x->fp_mant[3];
 y0 = y->fp_mant[0];
 y1 = y->fp_mant[1];
 y2 = y->fp_mant[2];
 y3 = y->fp_mant[3];

 bit = (1 << ((115 - 1) & 31));
 asm volatile("subcc %1,%2,%0" : "=r"(d3) : "r"(r3), "r"(y3)); asm volatile("subxcc %1,%2,%0" : "=r"(d2) : "r"(r2), "r"(y2)); asm volatile("subxcc %1,%2,%0" : "=r"(d1) : "r"(r1), "r"(y1)); asm volatile("subx %1,%2,%0" : "=r"(d0) : "r"(r0), "r"(y0));
 if (((int)d0 >= 0)) {
  x->fp_exp -= y->fp_exp;
  r0 = d0, r1 = d1, r2 = d2, r3 = d3;
  q = bit;
  bit >>= 1;
 } else {
  x->fp_exp -= y->fp_exp + 1;
  q = 0;
 }
 do { asm volatile("addcc %1,%2,%0" : "=r"(r3) : "r"(r3), "r"(r3)); asm volatile("addxcc %1,%2,%0" : "=r"(r2) : "r"(r2), "r"(r2)); asm volatile("addxcc %1,%2,%0" : "=r"(r1) : "r"(r1), "r"(r1)); asm volatile("addx %1,%2,%0" : "=r"(r0) : "r"(r0), "r"(r0)); asm volatile("subcc %1,%2,%0" : "=r"(d3) : "r"(r3), "r"(y3)); asm volatile("subxcc %1,%2,%0" : "=r"(d2) : "r"(r2), "r"(y2)); asm volatile("subxcc %1,%2,%0" : "=r"(d1) : "r"(r1), "r"(y1)); asm volatile("subx %1,%2,%0" : "=r"(d0) : "r"(r0), "r"(y0)); if (((int)d0 >= 0)) { q |= bit; r0 = d0, r1 = d1, r2 = d2, r3 = d3; } } while ((bit >>= 1) != 0);
 x->fp_mant[0] = q;
 q = 0; bit = 1U << 31; do { asm volatile("addcc %1,%2,%0" : "=r"(r3) : "r"(r3), "r"(r3)); asm volatile("addxcc %1,%2,%0" : "=r"(r2) : "r"(r2), "r"(r2)); asm volatile("addxcc %1,%2,%0" : "=r"(r1) : "r"(r1), "r"(r1)); asm volatile("addx %1,%2,%0" : "=r"(r0) : "r"(r0), "r"(r0)); asm volatile("subcc %1,%2,%0" : "=r"(d3) : "r"(r3), "r"(y3)); asm volatile("subxcc %1,%2,%0" : "=r"(d2) : "r"(r2), "r"(y2)); asm volatile("subxcc %1,%2,%0" : "=r"(d1) : "r"(r1), "r"(y1)); asm volatile("subx %1,%2,%0" : "=r"(d0) : "r"(r0), "r"(y0)); if (((int)d0 >= 0)) { q |= bit; r0 = d0, r1 = d1, r2 = d2, r3 = d3; } } while ((bit >>= 1) != 0); (x)->fp_mant[1] = q;
 q = 0; bit = 1U << 31; do { asm volatile("addcc %1,%2,%0" : "=r"(r3) : "r"(r3), "r"(r3)); asm volatile("addxcc %1,%2,%0" : "=r"(r2) : "r"(r2), "r"(r2)); asm volatile("addxcc %1,%2,%0" : "=r"(r1) : "r"(r1), "r"(r1)); asm volatile("addx %1,%2,%0" : "=r"(r0) : "r"(r0), "r"(r0)); asm volatile("subcc %1,%2,%0" : "=r"(d3) : "r"(r3), "r"(y3)); asm volatile("subxcc %1,%2,%0" : "=r"(d2) : "r"(r2), "r"(y2)); asm volatile("subxcc %1,%2,%0" : "=r"(d1) : "r"(r1), "r"(y1)); asm volatile("subx %1,%2,%0" : "=r"(d0) : "r"(r0), "r"(y0)); if (((int)d0 >= 0)) { q |= bit; r0 = d0, r1 = d1, r2 = d2, r3 = d3; } } while ((bit >>= 1) != 0); (x)->fp_mant[2] = q;
 q = 0; bit = 1U << 31; do { asm volatile("addcc %1,%2,%0" : "=r"(r3) : "r"(r3), "r"(r3)); asm volatile("addxcc %1,%2,%0" : "=r"(r2) : "r"(r2), "r"(r2)); asm volatile("addxcc %1,%2,%0" : "=r"(r1) : "r"(r1), "r"(r1)); asm volatile("addx %1,%2,%0" : "=r"(r0) : "r"(r0), "r"(r0)); asm volatile("subcc %1,%2,%0" : "=r"(d3) : "r"(r3), "r"(y3)); asm volatile("subxcc %1,%2,%0" : "=r"(d2) : "r"(r2), "r"(y2)); asm volatile("subxcc %1,%2,%0" : "=r"(d1) : "r"(r1), "r"(y1)); asm volatile("subx %1,%2,%0" : "=r"(d0) : "r"(r0), "r"(y0)); if (((int)d0 >= 0)) { q |= bit; r0 = d0, r1 = d1, r2 = d2, r3 = d3; } } while ((bit >>= 1) != 0); (x)->fp_mant[3] = q;
 x->fp_sticky = r0 | r1 | r2 | r3;

 return (x);
}
