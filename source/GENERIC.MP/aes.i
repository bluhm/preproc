typedef struct label_t {
 long val[2];
} label_t;
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
static inline __uint16_t
__swap16md(__uint16_t x)
{
 return ((__uint16_t)(((__uint16_t)(x) & 0xffU) << 8 | ((__uint16_t)(x) & 0xff00U) >> 8));
}
static inline __uint32_t
__swap32md(__uint32_t x)
{
 return ((__uint32_t)(((__uint32_t)(x) & 0xff) << 24 | ((__uint32_t)(x) & 0xff00) << 8 | ((__uint32_t)(x) & 0xff0000) >> 8 | ((__uint32_t)(x) & 0xff000000) >> 24));
}
static inline __uint64_t
__swap64md(__uint64_t x)
{
 return ((__uint64_t)((((__uint64_t)(x) & 0xff) << 56) | ((__uint64_t)(x) & 0xff00ULL) << 40 | ((__uint64_t)(x) & 0xff0000ULL) << 24 | ((__uint64_t)(x) & 0xff000000ULL) << 8 | ((__uint64_t)(x) & 0xff00000000ULL) >> 8 | ((__uint64_t)(x) & 0xff0000000000ULL) >> 24 | ((__uint64_t)(x) & 0xff000000000000ULL) >> 40 | ((__uint64_t)(x) & 0xff00000000000000ULL) >> 56));
}
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
struct proc;
struct pgrp;
struct ucred;
struct rusage;
struct file;
struct buf;
struct tty;
struct uio;
typedef __builtin_va_list __gnuc_va_list;
typedef __gnuc_va_list va_list;
extern int securelevel;
extern const char *panicstr;
extern const char version[];
extern const char copyright[];
extern const char ostype[];
extern const char osversion[];
extern const char osrelease[];
extern int cold;
extern int ncpus;
extern int ncpusfound;
extern int nblkdev;
extern int nchrdev;
extern int selwait;
extern int maxmem;
extern int physmem;
extern dev_t dumpdev;
extern long dumplo;
extern dev_t rootdev;
extern u_char bootduid[8];
extern u_char rootduid[8];
extern struct vnode *rootvp;
extern dev_t swapdev;
extern struct vnode *swapdev_vp;
struct proc;
struct process;
typedef int sy_call_t(struct proc *, void *, register_t *);
extern struct sysent {
 short sy_narg;
 short sy_argsize;
 int sy_flags;
 sy_call_t *sy_call;
} sysent[];
extern int boothowto;
extern void (*v_putc)(int);
int nullop(void *);
int enodev(void);
int enosys(void);
int enoioctl(void);
int enxio(void);
int eopnotsupp(void *);
struct vnodeopv_desc;
void vfs_opv_init_explicit(struct vnodeopv_desc *);
void vfs_opv_init_default(struct vnodeopv_desc *);
void vfs_op_init(void);
int seltrue(dev_t dev, int which, struct proc *);
int selfalse(dev_t dev, int which, struct proc *);
void *hashinit(int, int, int, u_long *);
void hashfree(void *, int, int);
int sys_nosys(struct proc *, void *, register_t *);
void panic(const char *, ...)
    __attribute__((__noreturn__,__format__(__kprintf__,1,2)));
void __assert(const char *, const char *, int, const char *)
    __attribute__((__noreturn__));
int printf(const char *, ...)
    __attribute__((__format__(__kprintf__,1,2)));
void uprintf(const char *, ...)
    __attribute__((__format__(__kprintf__,1,2)));
int vprintf(const char *, va_list)
    __attribute__((__format__(__kprintf__,1,0)));
int vsnprintf(char *, size_t, const char *, va_list)
    __attribute__((__format__(__kprintf__,3,0)));
int snprintf(char *buf, size_t, const char *, ...)
    __attribute__((__format__(__kprintf__,3,4)));
struct tty;
void ttyprintf(struct tty *, const char *, ...)
    __attribute__((__format__(__kprintf__,2,3)));
void splassert_fail(int, int, const char *);
extern int splassert_ctl;
void assertwaitok(void);
void tablefull(const char *);
int kcopy(const void *, void *, size_t)
  __attribute__ ((__bounded__(__buffer__,1,3)))
  __attribute__ ((__bounded__(__buffer__,2,3)));
void bcopy(const void *, void *, size_t)
  __attribute__ ((__bounded__(__buffer__,1,3)))
  __attribute__ ((__bounded__(__buffer__,2,3)));
void bzero(void *, size_t)
  __attribute__ ((__bounded__(__buffer__,1,2)));
void explicit_bzero(void *, size_t)
  __attribute__ ((__bounded__(__buffer__,1,2)));
int bcmp(const void *, const void *, size_t);
void *memcpy(void *, const void *, size_t)
  __attribute__ ((__bounded__(__buffer__,1,3)))
  __attribute__ ((__bounded__(__buffer__,2,3)));
void *memmove(void *, const void *, size_t)
  __attribute__ ((__bounded__(__buffer__,1,3)))
  __attribute__ ((__bounded__(__buffer__,2,3)));
void *memset(void *, int, size_t)
  __attribute__ ((__bounded__(__buffer__,1,3)));
int copystr(const void *, void *, size_t, size_t *)
  __attribute__ ((__bounded__(__string__,2,3)));
int copyinstr(const void *, void *, size_t, size_t *)
  __attribute__ ((__bounded__(__string__,2,3)));
int copyoutstr(const void *, void *, size_t, size_t *);
int copyin(const void *, void *, size_t)
  __attribute__ ((__bounded__(__buffer__,2,3)));
int copyout(const void *, void *, size_t);
int copyin32(const uint32_t *, uint32_t *);
void arc4random_buf(void *, size_t)
  __attribute__ ((__bounded__(__buffer__,1,2)));
u_int32_t arc4random(void);
u_int32_t arc4random_uniform(u_int32_t);
struct timeval;
struct timespec;
int tvtohz(const struct timeval *);
int tstohz(const struct timespec *);
void realitexpire(void *);
struct clockframe;
void hardclock(struct clockframe *);
void softclock(void *);
void statclock(struct clockframe *);
void initclocks(void);
void inittodr(time_t);
void resettodr(void);
void cpu_initclocks(void);
void startprofclock(struct process *);
void stopprofclock(struct process *);
void setstatclockrate(int);
void start_periodic_resettodr(void);
void stop_periodic_resettodr(void);
struct sleep_state;
void sleep_setup(struct sleep_state *, const volatile void *, int,
     const char *);
void sleep_setup_timeout(struct sleep_state *, int);
void sleep_setup_signal(struct sleep_state *, int);
void sleep_finish(struct sleep_state *, int);
int sleep_finish_timeout(struct sleep_state *);
int sleep_finish_signal(struct sleep_state *);
void sleep_queue_init(void);
struct cond;
void cond_init(struct cond *);
void cond_wait(struct cond *, const char *);
void cond_signal(struct cond *);
struct mutex;
struct rwlock;
void wakeup_n(const volatile void *, int);
void wakeup(const volatile void *);
int tsleep(const volatile void *, int, const char *, int);
int msleep(const volatile void *, struct mutex *, int, const char*, int);
int rwsleep(const volatile void *, struct rwlock *, int, const char *, int);
void yield(void);
void wdog_register(int (*)(void *, int), void *);
void wdog_shutdown(void *);
struct hook_desc {
 struct { struct hook_desc *tqe_next; struct hook_desc **tqe_prev; } hd_list;
 void (*hd_fn)(void *);
 void *hd_arg;
};
struct hook_desc_head { struct hook_desc *tqh_first; struct hook_desc **tqh_last; };
extern struct hook_desc_head startuphook_list;
void *hook_establish(struct hook_desc_head *, int, void (*)(void *), void *);
void hook_disestablish(struct hook_desc_head *, void *);
void dohooks(struct hook_desc_head *, int);
struct uio;
int uiomove(void *, size_t, struct uio *);
enum lock_class_index {
 LO_CLASS_KERNEL_LOCK,
 LO_CLASS_SCHED_LOCK,
 LO_CLASS_MUTEX,
 LO_CLASS_RWLOCK,
 LO_CLASS_RRWLOCK
};
struct lock_object {
 struct lock_type *lo_type;
 const char *lo_name;
 struct witness *lo_witness;
 uint32_t lo_flags;
};
struct lock_type {
 const char *lt_name;
};
struct proc;
struct rwlock {
 volatile unsigned long rwl_owner;
 const char *rwl_name;
};
struct rrwlock {
 struct rwlock rrwl_lock;
 uint32_t rrwl_wcnt;
};
void _rw_init_flags(struct rwlock *, const char *, int, struct lock_type *);
void _rw_enter_read(struct rwlock * );
void _rw_enter_write(struct rwlock * );
void _rw_exit_read(struct rwlock * );
void _rw_exit_write(struct rwlock * );
void rw_assert_wrlock(struct rwlock *);
void rw_assert_rdlock(struct rwlock *);
void rw_assert_anylock(struct rwlock *);
void rw_assert_unlocked(struct rwlock *);
int _rw_enter(struct rwlock *, int );
void _rw_exit(struct rwlock * );
int rw_status(struct rwlock *);
void _rrw_init_flags(struct rrwlock *, char *, int, struct lock_type *);
int _rrw_enter(struct rrwlock *, int );
void _rrw_exit(struct rrwlock * );
int rrw_status(struct rrwlock *);
extern struct rwlock netlock;
__attribute__((returns_twice)) int setjmp(label_t *);
__attribute__((__noreturn__)) void longjmp(label_t *);
void consinit(void);
void cpu_startup(void);
void cpu_configure(void);
void diskconf(void);
int nfs_mountroot(void);
int dk_mountroot(void);
extern int (*mountroot)(void);
static __inline int imax(int, int);
static __inline int imin(int, int);
static __inline u_int max(u_int, u_int);
static __inline u_int min(u_int, u_int);
static __inline long lmax(long, long);
static __inline long lmin(long, long);
static __inline u_long ulmax(u_long, u_long);
static __inline u_long ulmin(u_long, u_long);
static __inline int abs(int);
static __inline int
imax(int a, int b)
{
 return (a > b ? a : b);
}
static __inline int
imin(int a, int b)
{
 return (a < b ? a : b);
}
static __inline long
lmax(long a, long b)
{
 return (a > b ? a : b);
}
static __inline long
lmin(long a, long b)
{
 return (a < b ? a : b);
}
static __inline u_int
max(u_int a, u_int b)
{
 return (a > b ? a : b);
}
static __inline u_int
min(u_int a, u_int b)
{
 return (a < b ? a : b);
}
static __inline u_long
ulmax(u_long a, u_long b)
{
 return (a > b ? a : b);
}
static __inline u_long
ulmin(u_long a, u_long b)
{
 return (a < b ? a : b);
}
static __inline int
abs(int j)
{
 return(j < 0 ? -j : j);
}
void __assert(const char *, const char *, int, const char *)
     __attribute__ ((__noreturn__));
int bcmp(const void *, const void *, size_t);
void bzero(void *, size_t);
void explicit_bzero(void *, size_t);
int ffs(int);
int fls(int);
int flsl(long);
void *memchr(const void *, int, size_t);
int memcmp(const void *, const void *, size_t);
void *memset(void *, int c, size_t len);
u_int32_t random(void);
int scanc(u_int, const u_char *, const u_char [], int);
int skpc(int, size_t, u_char *);
size_t strlen(const char *);
char *strncpy(char *, const char *, size_t)
  __attribute__ ((__bounded__(__string__,1,3)));
size_t strnlen(const char *, size_t);
size_t strlcpy(char *, const char *, size_t)
  __attribute__ ((__bounded__(__string__,1,3)));
size_t strlcat(char *, const char *, size_t)
  __attribute__ ((__bounded__(__string__,1,3)));
int strcmp(const char *, const char *);
int strncmp(const char *, const char *, size_t);
int strncasecmp(const char *, const char *, size_t);
int getsn(char *, int);
char *strchr(const char *, int);
char *strrchr(const char *, int);
int timingsafe_bcmp(const void *, const void *, size_t);
void db_enter(void);
void user_config(void);
void _kernel_lock_init(void);
void _kernel_lock(const char *, int);
void _kernel_unlock(void);
int _kernel_lock_held(void);
typedef __int_least8_t int_least8_t;
typedef __uint_least8_t uint_least8_t;
typedef __int_least16_t int_least16_t;
typedef __uint_least16_t uint_least16_t;
typedef __int_least32_t int_least32_t;
typedef __uint_least32_t uint_least32_t;
typedef __int_least64_t int_least64_t;
typedef __uint_least64_t uint_least64_t;
typedef __int_fast8_t int_fast8_t;
typedef __uint_fast8_t uint_fast8_t;
typedef __int_fast16_t int_fast16_t;
typedef __uint_fast16_t uint_fast16_t;
typedef __int_fast32_t int_fast32_t;
typedef __uint_fast32_t uint_fast32_t;
typedef __int_fast64_t int_fast64_t;
typedef __uint_fast64_t uint_fast64_t;
typedef __intptr_t intptr_t;
typedef __uintptr_t uintptr_t;
typedef __intmax_t intmax_t;
typedef __uintmax_t uintmax_t;
typedef struct aes_ctx {
 uint32_t sk[60];
 uint32_t sk_exp[120];
 unsigned num_rounds;
} AES_CTX;
int AES_Setkey(AES_CTX *, const uint8_t *, int);
void AES_Encrypt(AES_CTX *, const uint8_t *, uint8_t *);
void AES_Decrypt(AES_CTX *, const uint8_t *, uint8_t *);
void AES_Encrypt_ECB(AES_CTX *, const uint8_t *, uint8_t *, size_t);
void AES_Decrypt_ECB(AES_CTX *, const uint8_t *, uint8_t *, size_t);
int AES_KeySetup_Encrypt(uint32_t *, const uint8_t *, int);
int AES_KeySetup_Decrypt(uint32_t *, const uint8_t *, int);
static inline void
enc32le(void *dst, uint32_t x)
{
 unsigned char *buf = dst;
 buf[0] = (unsigned char)x;
 buf[1] = (unsigned char)(x >> 8);
 buf[2] = (unsigned char)(x >> 16);
 buf[3] = (unsigned char)(x >> 24);
}
static inline uint32_t
dec32le(const void *src)
{
 const unsigned char *buf = src;
 return (uint32_t)buf[0]
  | ((uint32_t)buf[1] << 8)
  | ((uint32_t)buf[2] << 16)
  | ((uint32_t)buf[3] << 24);
}
static void
aes_ct_bitslice_Sbox(uint32_t *q)
{
 uint32_t x0, x1, x2, x3, x4, x5, x6, x7;
 uint32_t y1, y2, y3, y4, y5, y6, y7, y8, y9;
 uint32_t y10, y11, y12, y13, y14, y15, y16, y17, y18, y19;
 uint32_t y20, y21;
 uint32_t z0, z1, z2, z3, z4, z5, z6, z7, z8, z9;
 uint32_t z10, z11, z12, z13, z14, z15, z16, z17;
 uint32_t t0, t1, t2, t3, t4, t5, t6, t7, t8, t9;
 uint32_t t10, t11, t12, t13, t14, t15, t16, t17, t18, t19;
 uint32_t t20, t21, t22, t23, t24, t25, t26, t27, t28, t29;
 uint32_t t30, t31, t32, t33, t34, t35, t36, t37, t38, t39;
 uint32_t t40, t41, t42, t43, t44, t45, t46, t47, t48, t49;
 uint32_t t50, t51, t52, t53, t54, t55, t56, t57, t58, t59;
 uint32_t t60, t61, t62, t63, t64, t65, t66, t67;
 uint32_t s0, s1, s2, s3, s4, s5, s6, s7;
 x0 = q[7];
 x1 = q[6];
 x2 = q[5];
 x3 = q[4];
 x4 = q[3];
 x5 = q[2];
 x6 = q[1];
 x7 = q[0];
 y14 = x3 ^ x5;
 y13 = x0 ^ x6;
 y9 = x0 ^ x3;
 y8 = x0 ^ x5;
 t0 = x1 ^ x2;
 y1 = t0 ^ x7;
 y4 = y1 ^ x3;
 y12 = y13 ^ y14;
 y2 = y1 ^ x0;
 y5 = y1 ^ x6;
 y3 = y5 ^ y8;
 t1 = x4 ^ y12;
 y15 = t1 ^ x5;
 y20 = t1 ^ x1;
 y6 = y15 ^ x7;
 y10 = y15 ^ t0;
 y11 = y20 ^ y9;
 y7 = x7 ^ y11;
 y17 = y10 ^ y11;
 y19 = y10 ^ y8;
 y16 = t0 ^ y11;
 y21 = y13 ^ y16;
 y18 = x0 ^ y16;
 t2 = y12 & y15;
 t3 = y3 & y6;
 t4 = t3 ^ t2;
 t5 = y4 & x7;
 t6 = t5 ^ t2;
 t7 = y13 & y16;
 t8 = y5 & y1;
 t9 = t8 ^ t7;
 t10 = y2 & y7;
 t11 = t10 ^ t7;
 t12 = y9 & y11;
 t13 = y14 & y17;
 t14 = t13 ^ t12;
 t15 = y8 & y10;
 t16 = t15 ^ t12;
 t17 = t4 ^ t14;
 t18 = t6 ^ t16;
 t19 = t9 ^ t14;
 t20 = t11 ^ t16;
 t21 = t17 ^ y20;
 t22 = t18 ^ y19;
 t23 = t19 ^ y21;
 t24 = t20 ^ y18;
 t25 = t21 ^ t22;
 t26 = t21 & t23;
 t27 = t24 ^ t26;
 t28 = t25 & t27;
 t29 = t28 ^ t22;
 t30 = t23 ^ t24;
 t31 = t22 ^ t26;
 t32 = t31 & t30;
 t33 = t32 ^ t24;
 t34 = t23 ^ t33;
 t35 = t27 ^ t33;
 t36 = t24 & t35;
 t37 = t36 ^ t34;
 t38 = t27 ^ t36;
 t39 = t29 & t38;
 t40 = t25 ^ t39;
 t41 = t40 ^ t37;
 t42 = t29 ^ t33;
 t43 = t29 ^ t40;
 t44 = t33 ^ t37;
 t45 = t42 ^ t41;
 z0 = t44 & y15;
 z1 = t37 & y6;
 z2 = t33 & x7;
 z3 = t43 & y16;
 z4 = t40 & y1;
 z5 = t29 & y7;
 z6 = t42 & y11;
 z7 = t45 & y17;
 z8 = t41 & y10;
 z9 = t44 & y12;
 z10 = t37 & y3;
 z11 = t33 & y4;
 z12 = t43 & y13;
 z13 = t40 & y5;
 z14 = t29 & y2;
 z15 = t42 & y9;
 z16 = t45 & y14;
 z17 = t41 & y8;
 t46 = z15 ^ z16;
 t47 = z10 ^ z11;
 t48 = z5 ^ z13;
 t49 = z9 ^ z10;
 t50 = z2 ^ z12;
 t51 = z2 ^ z5;
 t52 = z7 ^ z8;
 t53 = z0 ^ z3;
 t54 = z6 ^ z7;
 t55 = z16 ^ z17;
 t56 = z12 ^ t48;
 t57 = t50 ^ t53;
 t58 = z4 ^ t46;
 t59 = z3 ^ t54;
 t60 = t46 ^ t57;
 t61 = z14 ^ t57;
 t62 = t52 ^ t58;
 t63 = t49 ^ t58;
 t64 = z4 ^ t59;
 t65 = t61 ^ t62;
 t66 = z1 ^ t63;
 s0 = t59 ^ t63;
 s6 = t56 ^ ~t62;
 s7 = t48 ^ ~t60;
 t67 = t64 ^ t65;
 s3 = t53 ^ t66;
 s4 = t51 ^ t66;
 s5 = t47 ^ t65;
 s1 = t64 ^ ~s3;
 s2 = t55 ^ ~t67;
 q[7] = s0;
 q[6] = s1;
 q[5] = s2;
 q[4] = s3;
 q[3] = s4;
 q[2] = s5;
 q[1] = s6;
 q[0] = s7;
}
static void
aes_ct_ortho(uint32_t *q)
{
 do { uint32_t a, b; a = (q[0]); b = (q[1]); (q[0]) = (a & (uint32_t)0x55555555) | ((b & (uint32_t)0x55555555) << (1)); (q[1]) = ((a & (uint32_t)0xAAAAAAAA) >> (1)) | (b & (uint32_t)0xAAAAAAAA); } while (0);
 do { uint32_t a, b; a = (q[2]); b = (q[3]); (q[2]) = (a & (uint32_t)0x55555555) | ((b & (uint32_t)0x55555555) << (1)); (q[3]) = ((a & (uint32_t)0xAAAAAAAA) >> (1)) | (b & (uint32_t)0xAAAAAAAA); } while (0);
 do { uint32_t a, b; a = (q[4]); b = (q[5]); (q[4]) = (a & (uint32_t)0x55555555) | ((b & (uint32_t)0x55555555) << (1)); (q[5]) = ((a & (uint32_t)0xAAAAAAAA) >> (1)) | (b & (uint32_t)0xAAAAAAAA); } while (0);
 do { uint32_t a, b; a = (q[6]); b = (q[7]); (q[6]) = (a & (uint32_t)0x55555555) | ((b & (uint32_t)0x55555555) << (1)); (q[7]) = ((a & (uint32_t)0xAAAAAAAA) >> (1)) | (b & (uint32_t)0xAAAAAAAA); } while (0);
 do { uint32_t a, b; a = (q[0]); b = (q[2]); (q[0]) = (a & (uint32_t)0x33333333) | ((b & (uint32_t)0x33333333) << (2)); (q[2]) = ((a & (uint32_t)0xCCCCCCCC) >> (2)) | (b & (uint32_t)0xCCCCCCCC); } while (0);
 do { uint32_t a, b; a = (q[1]); b = (q[3]); (q[1]) = (a & (uint32_t)0x33333333) | ((b & (uint32_t)0x33333333) << (2)); (q[3]) = ((a & (uint32_t)0xCCCCCCCC) >> (2)) | (b & (uint32_t)0xCCCCCCCC); } while (0);
 do { uint32_t a, b; a = (q[4]); b = (q[6]); (q[4]) = (a & (uint32_t)0x33333333) | ((b & (uint32_t)0x33333333) << (2)); (q[6]) = ((a & (uint32_t)0xCCCCCCCC) >> (2)) | (b & (uint32_t)0xCCCCCCCC); } while (0);
 do { uint32_t a, b; a = (q[5]); b = (q[7]); (q[5]) = (a & (uint32_t)0x33333333) | ((b & (uint32_t)0x33333333) << (2)); (q[7]) = ((a & (uint32_t)0xCCCCCCCC) >> (2)) | (b & (uint32_t)0xCCCCCCCC); } while (0);
 do { uint32_t a, b; a = (q[0]); b = (q[4]); (q[0]) = (a & (uint32_t)0x0F0F0F0F) | ((b & (uint32_t)0x0F0F0F0F) << (4)); (q[4]) = ((a & (uint32_t)0xF0F0F0F0) >> (4)) | (b & (uint32_t)0xF0F0F0F0); } while (0);
 do { uint32_t a, b; a = (q[1]); b = (q[5]); (q[1]) = (a & (uint32_t)0x0F0F0F0F) | ((b & (uint32_t)0x0F0F0F0F) << (4)); (q[5]) = ((a & (uint32_t)0xF0F0F0F0) >> (4)) | (b & (uint32_t)0xF0F0F0F0); } while (0);
 do { uint32_t a, b; a = (q[2]); b = (q[6]); (q[2]) = (a & (uint32_t)0x0F0F0F0F) | ((b & (uint32_t)0x0F0F0F0F) << (4)); (q[6]) = ((a & (uint32_t)0xF0F0F0F0) >> (4)) | (b & (uint32_t)0xF0F0F0F0); } while (0);
 do { uint32_t a, b; a = (q[3]); b = (q[7]); (q[3]) = (a & (uint32_t)0x0F0F0F0F) | ((b & (uint32_t)0x0F0F0F0F) << (4)); (q[7]) = ((a & (uint32_t)0xF0F0F0F0) >> (4)) | (b & (uint32_t)0xF0F0F0F0); } while (0);
}
static inline uint32_t
sub_word(uint32_t x)
{
 uint32_t q[8];
 int i;
 for (i = 0; i < 8; i ++) {
  q[i] = x;
 }
 aes_ct_ortho(q);
 aes_ct_bitslice_Sbox(q);
 aes_ct_ortho(q);
 return q[0];
}
static const unsigned char Rcon[] = {
 0x01, 0x02, 0x04, 0x08, 0x10, 0x20, 0x40, 0x80, 0x1B, 0x36
};
static unsigned
aes_keysched_base(uint32_t *skey, const void *key, size_t key_len)
{
 unsigned num_rounds;
 int i, j, k, nk, nkf;
 uint32_t tmp;
 switch (key_len) {
 case 16:
  num_rounds = 10;
  break;
 case 24:
  num_rounds = 12;
  break;
 case 32:
  num_rounds = 14;
  break;
 default:
  return 0;
 }
 nk = (int)(key_len >> 2);
 nkf = (int)((num_rounds + 1) << 2);
 for (i = 0; i < nk; i ++) {
  tmp = dec32le((const unsigned char *)key + (i << 2));
  skey[i] = tmp;
 }
 tmp = skey[(key_len >> 2) - 1];
 for (i = nk, j = 0, k = 0; i < nkf; i ++) {
  if (j == 0) {
   tmp = (tmp << 24) | (tmp >> 8);
   tmp = sub_word(tmp) ^ Rcon[k];
  } else if (nk > 6 && j == 4) {
   tmp = sub_word(tmp);
  }
  tmp ^= skey[i - nk];
  skey[i] = tmp;
  if (++ j == nk) {
   j = 0;
   k ++;
  }
 }
 return num_rounds;
}
unsigned
aes_ct_keysched(uint32_t *comp_skey, const void *key, size_t key_len)
{
 uint32_t skey[60];
 unsigned u, num_rounds;
 num_rounds = aes_keysched_base(skey, key, key_len);
 for (u = 0; u <= num_rounds; u ++) {
  uint32_t q[8];
  q[0] = q[1] = skey[(u << 2) + 0];
  q[2] = q[3] = skey[(u << 2) + 1];
  q[4] = q[5] = skey[(u << 2) + 2];
  q[6] = q[7] = skey[(u << 2) + 3];
  aes_ct_ortho(q);
  comp_skey[(u << 2) + 0] =
   (q[0] & 0x55555555) | (q[1] & 0xAAAAAAAA);
  comp_skey[(u << 2) + 1] =
   (q[2] & 0x55555555) | (q[3] & 0xAAAAAAAA);
  comp_skey[(u << 2) + 2] =
   (q[4] & 0x55555555) | (q[5] & 0xAAAAAAAA);
  comp_skey[(u << 2) + 3] =
   (q[6] & 0x55555555) | (q[7] & 0xAAAAAAAA);
 }
 return num_rounds;
}
void
aes_ct_skey_expand(uint32_t *skey,
 unsigned num_rounds, const uint32_t *comp_skey)
{
 unsigned u, v, n;
 n = (num_rounds + 1) << 2;
 for (u = 0, v = 0; u < n; u ++, v += 2) {
  uint32_t x, y;
  x = y = comp_skey[u];
  x &= 0x55555555;
  skey[v + 0] = x | (x << 1);
  y &= 0xAAAAAAAA;
  skey[v + 1] = y | (y >> 1);
 }
}
static inline void
add_round_key(uint32_t *q, const uint32_t *sk)
{
 q[0] ^= sk[0];
 q[1] ^= sk[1];
 q[2] ^= sk[2];
 q[3] ^= sk[3];
 q[4] ^= sk[4];
 q[5] ^= sk[5];
 q[6] ^= sk[6];
 q[7] ^= sk[7];
}
static inline void
shift_rows(uint32_t *q)
{
 int i;
 for (i = 0; i < 8; i ++) {
  uint32_t x;
  x = q[i];
  q[i] = (x & 0x000000FF)
   | ((x & 0x0000FC00) >> 2) | ((x & 0x00000300) << 6)
   | ((x & 0x00F00000) >> 4) | ((x & 0x000F0000) << 4)
   | ((x & 0xC0000000) >> 6) | ((x & 0x3F000000) << 2);
 }
}
static inline uint32_t
rotr16(uint32_t x)
{
 return (x << 16) | (x >> 16);
}
static inline void
mix_columns(uint32_t *q)
{
 uint32_t q0, q1, q2, q3, q4, q5, q6, q7;
 uint32_t r0, r1, r2, r3, r4, r5, r6, r7;
 q0 = q[0];
 q1 = q[1];
 q2 = q[2];
 q3 = q[3];
 q4 = q[4];
 q5 = q[5];
 q6 = q[6];
 q7 = q[7];
 r0 = (q0 >> 8) | (q0 << 24);
 r1 = (q1 >> 8) | (q1 << 24);
 r2 = (q2 >> 8) | (q2 << 24);
 r3 = (q3 >> 8) | (q3 << 24);
 r4 = (q4 >> 8) | (q4 << 24);
 r5 = (q5 >> 8) | (q5 << 24);
 r6 = (q6 >> 8) | (q6 << 24);
 r7 = (q7 >> 8) | (q7 << 24);
 q[0] = q7 ^ r7 ^ r0 ^ rotr16(q0 ^ r0);
 q[1] = q0 ^ r0 ^ q7 ^ r7 ^ r1 ^ rotr16(q1 ^ r1);
 q[2] = q1 ^ r1 ^ r2 ^ rotr16(q2 ^ r2);
 q[3] = q2 ^ r2 ^ q7 ^ r7 ^ r3 ^ rotr16(q3 ^ r3);
 q[4] = q3 ^ r3 ^ q7 ^ r7 ^ r4 ^ rotr16(q4 ^ r4);
 q[5] = q4 ^ r4 ^ r5 ^ rotr16(q5 ^ r5);
 q[6] = q5 ^ r5 ^ r6 ^ rotr16(q6 ^ r6);
 q[7] = q6 ^ r6 ^ r7 ^ rotr16(q7 ^ r7);
}
void
aes_ct_bitslice_encrypt(unsigned num_rounds,
 const uint32_t *skey, uint32_t *q)
{
 unsigned u;
 add_round_key(q, skey);
 for (u = 1; u < num_rounds; u ++) {
  aes_ct_bitslice_Sbox(q);
  shift_rows(q);
  mix_columns(q);
  add_round_key(q, skey + (u << 3));
 }
 aes_ct_bitslice_Sbox(q);
 shift_rows(q);
 add_round_key(q, skey + (num_rounds << 3));
}
void
aes_ct_bitslice_invSbox(uint32_t *q)
{
 uint32_t q0, q1, q2, q3, q4, q5, q6, q7;
 q0 = ~q[0];
 q1 = ~q[1];
 q2 = q[2];
 q3 = q[3];
 q4 = q[4];
 q5 = ~q[5];
 q6 = ~q[6];
 q7 = q[7];
 q[7] = q1 ^ q4 ^ q6;
 q[6] = q0 ^ q3 ^ q5;
 q[5] = q7 ^ q2 ^ q4;
 q[4] = q6 ^ q1 ^ q3;
 q[3] = q5 ^ q0 ^ q2;
 q[2] = q4 ^ q7 ^ q1;
 q[1] = q3 ^ q6 ^ q0;
 q[0] = q2 ^ q5 ^ q7;
 aes_ct_bitslice_Sbox(q);
 q0 = ~q[0];
 q1 = ~q[1];
 q2 = q[2];
 q3 = q[3];
 q4 = q[4];
 q5 = ~q[5];
 q6 = ~q[6];
 q7 = q[7];
 q[7] = q1 ^ q4 ^ q6;
 q[6] = q0 ^ q3 ^ q5;
 q[5] = q7 ^ q2 ^ q4;
 q[4] = q6 ^ q1 ^ q3;
 q[3] = q5 ^ q0 ^ q2;
 q[2] = q4 ^ q7 ^ q1;
 q[1] = q3 ^ q6 ^ q0;
 q[0] = q2 ^ q5 ^ q7;
}
static inline void
inv_shift_rows(uint32_t *q)
{
 int i;
 for (i = 0; i < 8; i ++) {
  uint32_t x;
  x = q[i];
  q[i] = (x & 0x000000FF)
   | ((x & 0x00003F00) << 2) | ((x & 0x0000C000) >> 6)
   | ((x & 0x000F0000) << 4) | ((x & 0x00F00000) >> 4)
   | ((x & 0x03000000) << 6) | ((x & 0xFC000000) >> 2);
 }
}
static void
inv_mix_columns(uint32_t *q)
{
 uint32_t q0, q1, q2, q3, q4, q5, q6, q7;
 uint32_t r0, r1, r2, r3, r4, r5, r6, r7;
 q0 = q[0];
 q1 = q[1];
 q2 = q[2];
 q3 = q[3];
 q4 = q[4];
 q5 = q[5];
 q6 = q[6];
 q7 = q[7];
 r0 = (q0 >> 8) | (q0 << 24);
 r1 = (q1 >> 8) | (q1 << 24);
 r2 = (q2 >> 8) | (q2 << 24);
 r3 = (q3 >> 8) | (q3 << 24);
 r4 = (q4 >> 8) | (q4 << 24);
 r5 = (q5 >> 8) | (q5 << 24);
 r6 = (q6 >> 8) | (q6 << 24);
 r7 = (q7 >> 8) | (q7 << 24);
 q[0] = q5 ^ q6 ^ q7 ^ r0 ^ r5 ^ r7 ^ rotr16(q0 ^ q5 ^ q6 ^ r0 ^ r5);
 q[1] = q0 ^ q5 ^ r0 ^ r1 ^ r5 ^ r6 ^ r7 ^ rotr16(q1 ^ q5 ^ q7 ^ r1 ^ r5 ^ r6);
 q[2] = q0 ^ q1 ^ q6 ^ r1 ^ r2 ^ r6 ^ r7 ^ rotr16(q0 ^ q2 ^ q6 ^ r2 ^ r6 ^ r7);
 q[3] = q0 ^ q1 ^ q2 ^ q5 ^ q6 ^ r0 ^ r2 ^ r3 ^ r5 ^ rotr16(q0 ^ q1 ^ q3 ^ q5 ^ q6 ^ q7 ^ r0 ^ r3 ^ r5 ^ r7);
 q[4] = q1 ^ q2 ^ q3 ^ q5 ^ r1 ^ r3 ^ r4 ^ r5 ^ r6 ^ r7 ^ rotr16(q1 ^ q2 ^ q4 ^ q5 ^ q7 ^ r1 ^ r4 ^ r5 ^ r6);
 q[5] = q2 ^ q3 ^ q4 ^ q6 ^ r2 ^ r4 ^ r5 ^ r6 ^ r7 ^ rotr16(q2 ^ q3 ^ q5 ^ q6 ^ r2 ^ r5 ^ r6 ^ r7);
 q[6] = q3 ^ q4 ^ q5 ^ q7 ^ r3 ^ r5 ^ r6 ^ r7 ^ rotr16(q3 ^ q4 ^ q6 ^ q7 ^ r3 ^ r6 ^ r7);
 q[7] = q4 ^ q5 ^ q6 ^ r4 ^ r6 ^ r7 ^ rotr16(q4 ^ q5 ^ q7 ^ r4 ^ r7);
}
void
aes_ct_bitslice_decrypt(unsigned num_rounds,
 const uint32_t *skey, uint32_t *q)
{
 unsigned u;
 add_round_key(q, skey + (num_rounds << 3));
 for (u = num_rounds - 1; u > 0; u --) {
  inv_shift_rows(q);
  aes_ct_bitslice_invSbox(q);
  add_round_key(q, skey + (u << 3));
  inv_mix_columns(q);
 }
 inv_shift_rows(q);
 aes_ct_bitslice_invSbox(q);
 add_round_key(q, skey);
}
int
AES_Setkey(AES_CTX *ctx, const uint8_t *key, int len)
{
 ctx->num_rounds = aes_ct_keysched(ctx->sk, key, len);
 if (ctx->num_rounds == 0)
  return -1;
 aes_ct_skey_expand(ctx->sk_exp, ctx->num_rounds, ctx->sk);
 return 0;
}
void
AES_Encrypt_ECB(AES_CTX *ctx, const uint8_t *src,
 uint8_t *dst, size_t num_blocks)
{
 while (num_blocks > 0) {
  uint32_t q[8];
  q[0] = dec32le(src);
  q[2] = dec32le(src + 4);
  q[4] = dec32le(src + 8);
  q[6] = dec32le(src + 12);
  if (num_blocks > 1) {
   q[1] = dec32le(src + 16);
   q[3] = dec32le(src + 20);
   q[5] = dec32le(src + 24);
   q[7] = dec32le(src + 28);
  } else {
   q[1] = 0;
   q[3] = 0;
   q[5] = 0;
   q[7] = 0;
  }
  aes_ct_ortho(q);
  aes_ct_bitslice_encrypt(ctx->num_rounds, ctx->sk_exp, q);
  aes_ct_ortho(q);
  enc32le(dst, q[0]);
  enc32le(dst + 4, q[2]);
  enc32le(dst + 8, q[4]);
  enc32le(dst + 12, q[6]);
  if (num_blocks > 1) {
   enc32le(dst + 16, q[1]);
   enc32le(dst + 20, q[3]);
   enc32le(dst + 24, q[5]);
   enc32le(dst + 28, q[7]);
   src += 32;
   dst += 32;
   num_blocks -= 2;
  } else {
   break;
  }
 }
}
void
AES_Decrypt_ECB(AES_CTX *ctx, const uint8_t *src,
 uint8_t *dst, size_t num_blocks)
{
 while (num_blocks > 0) {
  uint32_t q[8];
  q[0] = dec32le(src);
  q[2] = dec32le(src + 4);
  q[4] = dec32le(src + 8);
  q[6] = dec32le(src + 12);
  if (num_blocks > 1) {
   q[1] = dec32le(src + 16);
   q[3] = dec32le(src + 20);
   q[5] = dec32le(src + 24);
   q[7] = dec32le(src + 28);
  } else {
   q[1] = 0;
   q[3] = 0;
   q[5] = 0;
   q[7] = 0;
  }
  aes_ct_ortho(q);
  aes_ct_bitslice_decrypt(ctx->num_rounds, ctx->sk_exp, q);
  aes_ct_ortho(q);
  enc32le(dst, q[0]);
  enc32le(dst + 4, q[2]);
  enc32le(dst + 8, q[4]);
  enc32le(dst + 12, q[6]);
  if (num_blocks > 1) {
   enc32le(dst + 16, q[1]);
   enc32le(dst + 20, q[3]);
   enc32le(dst + 24, q[5]);
   enc32le(dst + 28, q[7]);
   src += 32;
   dst += 32;
   num_blocks -= 2;
  } else {
   break;
  }
 }
}
void
AES_Encrypt(AES_CTX *ctx, const uint8_t *src, uint8_t *dst)
{
 AES_Encrypt_ECB(ctx, src, dst, 1);
}
void
AES_Decrypt(AES_CTX *ctx, const uint8_t *src, uint8_t *dst)
{
 AES_Decrypt_ECB(ctx, src, dst, 1);
}
int
AES_KeySetup_Encrypt(uint32_t *skey, const uint8_t *key, int len)
{
 unsigned r, u;
 uint32_t tkey[60];
 r = aes_keysched_base(tkey, key, len);
 if (r == 0) {
  return 0;
 }
 for (u = 0; u < ((r + 1) << 2); u ++) {
  uint32_t w;
  w = tkey[u];
  skey[u] = (w << 24)
   | ((w & 0x0000FF00) << 8)
   | ((w & 0x00FF0000) >> 8)
   | (w >> 24);
 }
 return r;
}
static inline uint32_t
redgf256(uint32_t x)
{
 uint32_t h;
 h = x >> 8;
 return (x ^ h ^ (h << 1) ^ (h << 3) ^ (h << 4)) & 0xFF;
}
static inline uint32_t
mul9(uint32_t x)
{
 return redgf256(x ^ (x << 3));
}
static inline uint32_t
mulb(uint32_t x)
{
 return redgf256(x ^ (x << 1) ^ (x << 3));
}
static inline uint32_t
muld(uint32_t x)
{
 return redgf256(x ^ (x << 2) ^ (x << 3));
}
static inline uint32_t
mule(uint32_t x)
{
 return redgf256((x << 1) ^ (x << 2) ^ (x << 3));
}
int
AES_KeySetup_Decrypt(uint32_t *skey, const uint8_t *key, int len)
{
 unsigned r, u;
 uint32_t tkey[60];
 r = AES_KeySetup_Encrypt(tkey, key, len);
 if (r == 0) {
  return 0;
 }
 __builtin_memcpy((skey + (r << 2)), (tkey), (4 * sizeof(uint32_t)));
 __builtin_memcpy((skey), (tkey + (r << 2)), (4 * sizeof(uint32_t)));
 for (u = 4; u < (r << 2); u ++) {
  uint32_t sk, sk0, sk1, sk2, sk3;
  uint32_t tk, tk0, tk1, tk2, tk3;
  sk = tkey[u];
  sk0 = sk >> 24;
  sk1 = (sk >> 16) & 0xFF;
  sk2 = (sk >> 8) & 0xFF;
  sk3 = sk & 0xFF;
  tk0 = mule(sk0) ^ mulb(sk1) ^ muld(sk2) ^ mul9(sk3);
  tk1 = mul9(sk0) ^ mule(sk1) ^ mulb(sk2) ^ muld(sk3);
  tk2 = muld(sk0) ^ mul9(sk1) ^ mule(sk2) ^ mulb(sk3);
  tk3 = mulb(sk0) ^ muld(sk1) ^ mul9(sk2) ^ mule(sk3);
  tk = (tk0 << 24) ^ (tk1 << 16) ^ (tk2 << 8) ^ tk3;
  skey[((r - (u >> 2)) << 2) + (u & 3)] = tk;
 }
 return r;
}
