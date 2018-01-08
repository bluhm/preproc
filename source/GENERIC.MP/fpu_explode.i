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
static __inline __uint16_t
__swap16md(__uint16_t x)
{
 return ((__uint16_t)(((__uint16_t)(x) & 0xffU) << 8 | ((__uint16_t)(x) & 0xff00U) >> 8));
}
static __inline __uint32_t
__swap32md(__uint32_t x)
{
 return ((__uint32_t)(((__uint32_t)(x) & 0xff) << 24 | ((__uint32_t)(x) & 0xff00) << 8 | ((__uint32_t)(x) & 0xff0000) >> 8 | ((__uint32_t)(x) & 0xff000000) >> 24));
}
static __inline __uint64_t
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
extern const char *faultstr;
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
struct ieee_single {
 u_int sng_sign:1;
 u_int sng_exp:8;
 u_int sng_frac:23;
};
struct ieee_double {
 u_int dbl_sign:1;
 u_int dbl_exp:11;
 u_int dbl_frach:20;
 u_int dbl_fracl;
};
struct ieee_ext {
 u_int ext_sign:1;
 u_int ext_exp:15;
 u_int ext_frach:16;
 u_int ext_frachm;
 u_int ext_fraclm;
 u_int ext_fracl;
};
enum IOP { IOP_OP2, IOP_CALL, IOP_reg, IOP_mem };
enum IOP2 { IOP2_UNIMP, IOP2_BPcc, IOP2_Bicc, IOP2_BPr,
 IOP2_SETHI, IOP2_FBPfcc, IOP2_FBfcc, IOP2_CBccc };
enum IOP3_reg {
 IOP3_ADD, IOP3_AND, IOP3_OR, IOP3_XOR,
 IOP3_SUB, IOP3_ANDN, IOP3_ORN, IOP3_XNOR,
 IOP3_ADDX, IOP3_MULX, IOP3_UMUL, IOP3_SMUL,
 IOP3_SUBX, IOP3_UDIVX, IOP3_UDIV, IOP3_SDIV,
 IOP3_ADDcc, IOP3_ANDcc, IOP3_ORcc, IOP3_XORcc,
 IOP3_SUBcc, IOP3_ANDNcc, IOP3_ORNcc, IOP3_XNORcc,
 IOP3_ADDXcc, IOP3_rerr19, IOP3_UMULcc, IOP3_SMULcc,
 IOP3_SUBXcc, IOP3_rerr1d, IOP3_UDIVcc, IOP3_SDIVcc,
 IOP3_TADDcc, IOP3_TSUBcc, IOP3_TADDccTV, IOP3_TSUBccTV,
 IOP3_MULScc, IOP3_SLL, IOP3_SRL, IOP3_SRA,
 IOP3_RDASR_RDY_STBAR, IOP3_RDPSR, IOP3_RDWIM, IOP3_RDTGBR,
 IOP3_MOVcc, IOP3_SDIVX, IOP3_POPC, IOP3_MOVr,
 IOP3_WRASR_WRY, IOP3_WRPSR, IOP3_WRWIM, IOP3_WRTBR,
 IOP3_FPop1, IOP3_FPop2, IOP3_CPop1, IOP3_CPop2,
 IOP3_JMPL, IOP3_RETT, IOP3_Ticc, IOP3_FLUSH,
 IOP3_SAVE, IOP3_RESTORE, IOP3_DONE_RETRY, IOP3_rerr3f
};
enum IOP3_mem {
 IOP3_LD, IOP3_LDUB, IOP3_LDUH, IOP3_LDD,
 IOP3_ST, IOP3_STB, IOP3_STH, IOP3_STD,
 IOP3_LDSW, IOP3_LDSB, IOP3_LDSH, IOP3_LDX,
 IOP3_merr0c, IOP3_LDSTUB, IOP3_STX, IOP3_SWAP,
 IOP3_LDA, IOP3_LDUBA, IOP3_LDUHA, IOP3_LDDA,
 IOP3_STA, IOP3_STBA, IOP3_STHA, IOP3_STDA,
 IOP3_LDSWA, IOP3_LDSBA, IOP3_LDSHA, IOP3_LDXA,
 IOP3_merr1c, IOP3_LDSTUBA, IOP3_STXA, IOP3_SWAPA,
 IOP3_LDF, IOP3_LDFSR, IOP3_LDQF, IOP3_LDDF,
 IOP3_STF, IOP3_STFSR, IOP3_STQF, IOP3_STDF,
 IOP3_merr28, IOP3_merr29, IOP3_merr2a, IOP3_merr2b,
 IOP3_merr2c, IOP3_PREFETCH, IOP3_merr2e, IOP3_merr2f,
 IOP3_LFC, IOP3_LDCSR, IOP3_LDQFA, IOP3_LDDC,
 IOP3_STC, IOP3_STCSR, IOP3_STQFA, IOP3_STDC,
 IOP3_merr38, IOP3_merr39, IOP3_merr3a, IOP3_merr3b,
 IOP3_CASA, IOP3_PREFETCHA, IOP3_CASXA, IOP3_merr3f
};
union instr {
 int i_int;
 struct {
  u_int i_op:2;
  u_int :30;
 } i_any;
 struct {
  u_int :2;
  int i_disp:30;
 } i_call;
 struct {
  u_int :2;
  u_int :5;
  u_int i_op2:3;
  u_int :22;
 } i_op2;
 struct {
  u_int :2;
  u_int i_rd:5;
  u_int i_op2:3;
  u_int i_imm:22;
 } i_imm22;
 struct {
  u_int :2;
  u_int i_annul:1;
  u_int i_cond:4;
  u_int i_op2:3;
  int i_disp:22;
 } i_branch;
 struct {
  u_int :2;
  u_int i_annul:1;
  u_int i_cond:4;
  u_int i_op2:3;
  u_int i_cc:2;
  u_int i_pred:1;
  int i_disp:19;
 } i_branch_p;
 struct {
  u_int :2;
  u_int i_annul:1;
  u_int :1;
  u_int i_rcond:4;
  u_int :3;
  int i_disphi:2;
  u_int i_pred:1;
  u_int i_rs1:1;
  u_int i_displo:16;
 } i_branch_pr;
 struct {
  u_int :2;
  u_int i_rd:5;
  u_int i_op3:6;
  u_int i_rs1:5;
  u_int i_low14:14;
 } i_op3;
 struct {
  u_int :2;
  u_int i_rd:5;
  u_int i_op3:6;
  u_int i_rs1:5;
  u_int i_i:1;
  u_int i_low13:13;
 } i_loadstore;
 struct {
  u_int :2;
  u_int i_rd:5;
  u_int i_op3:6;
  u_int i_rs1:5;
  u_int i_i:1;
  int i_simm13:13;
 } i_simm13;
 struct {
  u_int :2;
  u_int i_rd:5;
  u_int i_op3:6;
  u_int i_rs1:5;
  u_int i_i:1;
  u_int i_asi:8;
  u_int i_rs2:5;
 } i_asi;
 struct {
  u_int :2;
  u_int i_rd:5;
  u_int i_op3:6;
  u_int i_rs1:5;
  u_int i_opf:9;
  u_int i_rs2:5;
 } i_opf;
 struct {
  u_int :2;
  u_int i_rd:5;
  u_int i_op3:6;
  u_int i_rs1:5;
  u_int i_low14:14;
 } i_op4;
 struct {
  u_int :2;
  u_int i_rd:5;
  u_int i_op3:6;
  u_int :1;
  u_int i_cond:4;
  u_int i_opf_cc:3;
  u_int i_opf_low:6;
  u_int i_rs2:5;
 } i_fmovcc;
 struct {
  u_int :2;
  u_int i_rd:5;
  u_int i_op3:6;
  u_int i_rs1:5;
  u_int :1;
  u_int i_rcond:3;
  u_int i_opf_low:6;
  u_int i_rs2:5;
 } i_fmovr;
};
struct trapframe32 {
 int tf_psr;
 int tf_pc;
 int tf_npc;
 int tf_y;
 int tf_global[8];
 int tf_out[8];
};
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
struct fpn {
 int fp_class;
 int fp_sign;
 int fp_exp;
 int fp_sticky;
 u_int fp_mant[4];
};
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
struct proc;
struct fpstate64;
struct trapframe64;
union instr;
struct fpemu;
struct fpn;
void fpu_cleanup(struct proc *, struct fpstate64 *);
int fpu_emulate(struct proc *, struct trapframe64 *, struct fpstate64 *);
int fpu_execute(struct proc *, struct fpemu *, union instr);
struct fpn *fpu_add(struct fpemu *);
void fpu_compare(struct fpemu *, int);
struct fpn *fpu_div(struct fpemu *);
int fpu_itof(struct fpn *, u_int);
int fpu_xtof(struct fpn *, u_int64_t);
int fpu_stof(struct fpn *, u_int);
int fpu_dtof(struct fpn *, u_int, u_int );
int fpu_qtof(struct fpn *, u_int, u_int , u_int , u_int );
void fpu_explode(struct fpemu *, struct fpn *, int, int );
u_int fpu_ftoi(struct fpemu *, struct fpn *);
u_int fpu_ftox(struct fpemu *, struct fpn *, u_int *);
u_int fpu_ftos(struct fpemu *, struct fpn *);
u_int fpu_ftod(struct fpemu *, struct fpn *, u_int *);
u_int fpu_ftoq(struct fpemu *, struct fpn *, u_int *);
struct fpn *fpu_mul(struct fpemu *);
struct fpn *fpu_sqrt(struct fpemu *);
int fpu_shr(register struct fpn *, register int);
void fpu_norm(register struct fpn *);
struct fpn *fpu_newnan(register struct fpemu *);
int
fpu_itof(fp, i)
 register struct fpn *fp;
 register u_int i;
{
 if (i == 0)
  return (0);
 fp->fp_exp = ((115 - 1) & 31);
 fp->fp_mant[0] = (int)i < 0 ? -i : i;
 fp->fp_mant[1] = 0;
 fp->fp_mant[2] = 0;
 fp->fp_mant[3] = 0;
 fpu_norm(fp);
 return (1);
}
int
fpu_xtof(fp, i)
 register struct fpn *fp;
 register u_int64_t i;
{
 if (i == 0)
  return (0);
 fp->fp_exp = ((115 - 1) & 63);
 *((int64_t*)fp->fp_mant) = (int64_t)i < 0 ? -i : i;
 fp->fp_mant[2] = 0;
 fp->fp_mant[3] = 0;
 fpu_norm(fp);
 return (1);
}
int
fpu_stof(fp, i)
 register struct fpn *fp;
 register u_int i;
{
 register int exp;
 register u_int frac, f0, f1;
 exp = (i >> (32 - 1 - 8)) & ((1L << (8)) - 1);
 frac = i & ((1L << (23)) - 1);
 f0 = frac >> (23 - ((115 - 1) & 31));
 f1 = frac << (32 - (23 - ((115 - 1) & 31)));
 if (exp == 0) { if (frac == 0) return (0); fp->fp_exp = 1 - 127; fp->fp_mant[0] = f0; fp->fp_mant[1] = f1; fp->fp_mant[2] = 0; fp->fp_mant[3] = 0; fpu_norm(fp); return (1); } if (exp == (2 * 127 + 1)) { if (frac == 0) return (2); fp->fp_mant[0] = f0; fp->fp_mant[1] = f1; fp->fp_mant[2] = 0; fp->fp_mant[3] = 0; return (-1); } fp->fp_exp = exp - 127; fp->fp_mant[0] = (1 << ((115 - 1) & 31)) | f0; fp->fp_mant[1] = f1; fp->fp_mant[2] = 0; fp->fp_mant[3] = 0; return (1);
}
int
fpu_dtof(fp, i, j)
 register struct fpn *fp;
 register u_int i, j;
{
 register int exp;
 register u_int frac, f0, f1, f2;
 exp = (i >> (32 - 1 - 11)) & ((1L << (11)) - 1);
 frac = i & ((1L << (52 - 32)) - 1);
 f0 = frac >> (52 - 32 - ((115 - 1) & 31));
 f1 = (frac << (32 - (52 - 32 - ((115 - 1) & 31)))) | (j >> (52 - 32 - ((115 - 1) & 31)));
 f2 = j << (32 - (52 - 32 - ((115 - 1) & 31)));
 frac |= j;
 if (exp == 0) { if (frac == 0) return (0); fp->fp_exp = 1 - 1023; fp->fp_mant[0] = f0; fp->fp_mant[1] = f1; fp->fp_mant[2] = f2; fp->fp_mant[3] = 0; fpu_norm(fp); return (1); } if (exp == (2 * 1023 + 1)) { if (frac == 0) return (2); fp->fp_mant[0] = f0; fp->fp_mant[1] = f1; fp->fp_mant[2] = f2; fp->fp_mant[3] = 0; return (-1); } fp->fp_exp = exp - 1023; fp->fp_mant[0] = (1 << ((115 - 1) & 31)) | f0; fp->fp_mant[1] = f1; fp->fp_mant[2] = f2; fp->fp_mant[3] = 0; return (1);
}
int
fpu_qtof(fp, i, j, k, l)
 register struct fpn *fp;
 register u_int i, j, k, l;
{
 register int exp;
 register u_int frac, f0, f1, f2, f3;
 exp = (i >> (32 - 1 - 15)) & ((1L << (15)) - 1);
 frac = i & ((1L << (112 - 3 * 32)) - 1);
 f0 = (frac << (-(112 - 3 * 32 - ((115 - 1) & 31)))) | (j >> (32 - (-(112 - 3 * 32 - ((115 - 1) & 31)))));
 f1 = (j << (-(112 - 3 * 32 - ((115 - 1) & 31)))) | (k >> (32 - (-(112 - 3 * 32 - ((115 - 1) & 31)))));
 f2 = (k << (-(112 - 3 * 32 - ((115 - 1) & 31)))) | (l >> (32 - (-(112 - 3 * 32 - ((115 - 1) & 31)))));
 f3 = l << (-(112 - 3 * 32 - ((115 - 1) & 31)));
 frac |= j | k | l;
 if (exp == 0) { if (frac == 0) return (0); fp->fp_exp = 1 - 16383; fp->fp_mant[0] = f0; fp->fp_mant[1] = f1; fp->fp_mant[2] = f2; fp->fp_mant[3] = f3; fpu_norm(fp); return (1); } if (exp == (2 * 16383 + 1)) { if (frac == 0) return (2); fp->fp_mant[0] = f0; fp->fp_mant[1] = f1; fp->fp_mant[2] = f2; fp->fp_mant[3] = f3; return (-1); } fp->fp_exp = exp - 16383; fp->fp_mant[0] = (1 << ((115 - 1) & 31)) | f0; fp->fp_mant[1] = f1; fp->fp_mant[2] = f2; fp->fp_mant[3] = f3; return (1);
}
void
fpu_explode(fe, fp, type, reg64)
 register struct fpemu *fe;
 register struct fpn *fp;
 int type, reg64;
{
 register u_int s, *space;
 u_int64_t l, *xspace;
 xspace = (u_int64_t *)&fe->fe_fpstate->fs_regs[reg64 & ~1];
 l = xspace[0];
 space = &fe->fe_fpstate->fs_regs[reg64];
 s = space[0];
 fp->fp_sign = s >> 31;
 fp->fp_sticky = 0;
 ;
 switch (type) {
 case -1:
  ;
  s = fpu_xtof(fp, l);
  break;
 case 0:
  ;
  s = fpu_itof(fp, s);
  break;
 case 1:
  ;
  s = fpu_stof(fp, s);
  break;
 case 2:
  ;
  s = fpu_dtof(fp, s, space[1]);
  break;
 case 3:
  ;
  s = fpu_qtof(fp, s, space[1], space[2], space[3]);
  break;
 default:
  panic("fpu_explode");
 }
 ;
 if (s == -1 && (fp->fp_mant[0] & (1 << (((115 - 1) & 31) - 1))) == 0) {
  fp->fp_mant[0] |= (1 << (((115 - 1) & 31) - 1));
  fe->fe_cx = 0x10;
  s = -2;
 }
 fp->fp_class = s;
 ;
 ;
 ;
}
