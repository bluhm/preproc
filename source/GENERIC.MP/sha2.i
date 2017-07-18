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
struct timeval {
 time_t tv_sec;
 suseconds_t tv_usec;
};
struct timespec {
 time_t tv_sec;
 long tv_nsec;
};
typedef uint32_t __fd_mask;
typedef struct fd_set {
 __fd_mask fds_bits[(((1024) + ((((unsigned)(sizeof(__fd_mask) * 8))) - 1)) / (((unsigned)(sizeof(__fd_mask) * 8))))];
} fd_set;
static __inline void
__fd_set(int fd, fd_set *p)
{
 p->fds_bits[fd / ((unsigned)(sizeof(__fd_mask) * 8))] |= (1U << (fd % ((unsigned)(sizeof(__fd_mask) * 8))));
}
static __inline void
__fd_clr(int fd, fd_set *p)
{
 p->fds_bits[fd / ((unsigned)(sizeof(__fd_mask) * 8))] &= ~(1U << (fd % ((unsigned)(sizeof(__fd_mask) * 8))));
}
static __inline int
__fd_isset(int fd, const fd_set *p)
{
 return (p->fds_bits[fd / ((unsigned)(sizeof(__fd_mask) * 8))] & (1U << (fd % ((unsigned)(sizeof(__fd_mask) * 8)))));
}
struct timezone {
 int tz_minuteswest;
 int tz_dsttime;
};
struct itimerval {
 struct timeval it_interval;
 struct timeval it_value;
};
struct clockinfo {
 int hz;
 int tick;
 int tickadj;
 int stathz;
 int profhz;
};
struct itimerspec {
 struct timespec it_interval;
 struct timespec it_value;
};
struct bintime {
 time_t sec;
 uint64_t frac;
};
static __inline void
bintime_addx(struct bintime *bt, uint64_t x)
{
 uint64_t u;
 u = bt->frac;
 bt->frac += x;
 if (u > bt->frac)
  bt->sec++;
}
static __inline void
bintime_add(struct bintime *bt, struct bintime *bt2)
{
 uint64_t u;
 u = bt->frac;
 bt->frac += bt2->frac;
 if (u > bt->frac)
  bt->sec++;
 bt->sec += bt2->sec;
}
static __inline void
bintime_sub(struct bintime *bt, struct bintime *bt2)
{
 uint64_t u;
 u = bt->frac;
 bt->frac -= bt2->frac;
 if (u < bt->frac)
  bt->sec--;
 bt->sec -= bt2->sec;
}
static __inline void
bintime2timespec(struct bintime *bt, struct timespec *ts)
{
 ts->tv_sec = bt->sec;
 ts->tv_nsec = (long)(((uint64_t)1000000000 * (uint32_t)(bt->frac >> 32)) >> 32);
}
static __inline void
timespec2bintime(struct timespec *ts, struct bintime *bt)
{
 bt->sec = ts->tv_sec;
 bt->frac = (uint64_t)ts->tv_nsec * (uint64_t)18446744073ULL;
}
static __inline void
bintime2timeval(struct bintime *bt, struct timeval *tv)
{
 tv->tv_sec = bt->sec;
 tv->tv_usec = (long)(((uint64_t)1000000 * (uint32_t)(bt->frac >> 32)) >> 32);
}
static __inline void
timeval2bintime(struct timeval *tv, struct bintime *bt)
{
 bt->sec = (time_t)tv->tv_sec;
 bt->frac = (uint64_t)tv->tv_usec * (uint64_t)18446744073709ULL;
}
extern volatile time_t time_second;
extern volatile time_t time_uptime;
void bintime(struct bintime *);
void nanotime(struct timespec *);
void microtime(struct timeval *);
void getnanotime(struct timespec *);
void getmicrotime(struct timeval *);
void binuptime(struct bintime *);
void nanouptime(struct timespec *);
void microuptime(struct timeval *);
void getnanouptime(struct timespec *);
void getmicrouptime(struct timeval *);
struct proc;
int clock_gettime(struct proc *, clockid_t, struct timespec *);
int timespecfix(struct timespec *);
int itimerfix(struct timeval *);
int itimerdecr(struct itimerval *itp, int usec);
void itimerround(struct timeval *);
int settime(struct timespec *);
int ratecheck(struct timeval *, const struct timeval *);
int ppsratecheck(struct timeval *, int *, int);
struct clock_ymdhms {
        u_short dt_year;
        u_char dt_mon;
        u_char dt_day;
        u_char dt_wday;
        u_char dt_hour;
        u_char dt_min;
        u_char dt_sec;
};
time_t clock_ymdhms_to_secs(struct clock_ymdhms *);
void clock_secs_to_ymdhms(time_t, struct clock_ymdhms *);
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
typedef struct _SHA2_CTX {
 union {
  u_int32_t st32[8];
  u_int64_t st64[8];
 } state;
 u_int64_t bitcount[2];
 u_int8_t buffer[128];
} SHA2_CTX;

void SHA256Init(SHA2_CTX *);
void SHA256Update(SHA2_CTX *, const void *, size_t)
 __attribute__((__bounded__(__string__,2,3)));
void SHA256Final(u_int8_t[32], SHA2_CTX *)
 __attribute__((__bounded__(__minbytes__,1,32)));
void SHA384Init(SHA2_CTX *);
void SHA384Update(SHA2_CTX *, const void *, size_t)
 __attribute__((__bounded__(__string__,2,3)));
void SHA384Final(u_int8_t[48], SHA2_CTX *)
 __attribute__((__bounded__(__minbytes__,1,48)));
void SHA512Init(SHA2_CTX *);
void SHA512Update(SHA2_CTX *, const void *, size_t)
 __attribute__((__bounded__(__string__,2,3)));
void SHA512Final(u_int8_t[64], SHA2_CTX *)
 __attribute__((__bounded__(__minbytes__,1,64)));

void SHA512Last(SHA2_CTX *);
void SHA256Transform(u_int32_t *, const u_int8_t *);
void SHA512Transform(u_int64_t *, const u_int8_t *);
const static u_int32_t K256[64] = {
 0x428a2f98UL, 0x71374491UL, 0xb5c0fbcfUL, 0xe9b5dba5UL,
 0x3956c25bUL, 0x59f111f1UL, 0x923f82a4UL, 0xab1c5ed5UL,
 0xd807aa98UL, 0x12835b01UL, 0x243185beUL, 0x550c7dc3UL,
 0x72be5d74UL, 0x80deb1feUL, 0x9bdc06a7UL, 0xc19bf174UL,
 0xe49b69c1UL, 0xefbe4786UL, 0x0fc19dc6UL, 0x240ca1ccUL,
 0x2de92c6fUL, 0x4a7484aaUL, 0x5cb0a9dcUL, 0x76f988daUL,
 0x983e5152UL, 0xa831c66dUL, 0xb00327c8UL, 0xbf597fc7UL,
 0xc6e00bf3UL, 0xd5a79147UL, 0x06ca6351UL, 0x14292967UL,
 0x27b70a85UL, 0x2e1b2138UL, 0x4d2c6dfcUL, 0x53380d13UL,
 0x650a7354UL, 0x766a0abbUL, 0x81c2c92eUL, 0x92722c85UL,
 0xa2bfe8a1UL, 0xa81a664bUL, 0xc24b8b70UL, 0xc76c51a3UL,
 0xd192e819UL, 0xd6990624UL, 0xf40e3585UL, 0x106aa070UL,
 0x19a4c116UL, 0x1e376c08UL, 0x2748774cUL, 0x34b0bcb5UL,
 0x391c0cb3UL, 0x4ed8aa4aUL, 0x5b9cca4fUL, 0x682e6ff3UL,
 0x748f82eeUL, 0x78a5636fUL, 0x84c87814UL, 0x8cc70208UL,
 0x90befffaUL, 0xa4506cebUL, 0xbef9a3f7UL, 0xc67178f2UL
};
const static u_int32_t sha256_initial_hash_value[8] = {
 0x6a09e667UL,
 0xbb67ae85UL,
 0x3c6ef372UL,
 0xa54ff53aUL,
 0x510e527fUL,
 0x9b05688cUL,
 0x1f83d9abUL,
 0x5be0cd19UL
};
const static u_int64_t K512[80] = {
 0x428a2f98d728ae22ULL, 0x7137449123ef65cdULL,
 0xb5c0fbcfec4d3b2fULL, 0xe9b5dba58189dbbcULL,
 0x3956c25bf348b538ULL, 0x59f111f1b605d019ULL,
 0x923f82a4af194f9bULL, 0xab1c5ed5da6d8118ULL,
 0xd807aa98a3030242ULL, 0x12835b0145706fbeULL,
 0x243185be4ee4b28cULL, 0x550c7dc3d5ffb4e2ULL,
 0x72be5d74f27b896fULL, 0x80deb1fe3b1696b1ULL,
 0x9bdc06a725c71235ULL, 0xc19bf174cf692694ULL,
 0xe49b69c19ef14ad2ULL, 0xefbe4786384f25e3ULL,
 0x0fc19dc68b8cd5b5ULL, 0x240ca1cc77ac9c65ULL,
 0x2de92c6f592b0275ULL, 0x4a7484aa6ea6e483ULL,
 0x5cb0a9dcbd41fbd4ULL, 0x76f988da831153b5ULL,
 0x983e5152ee66dfabULL, 0xa831c66d2db43210ULL,
 0xb00327c898fb213fULL, 0xbf597fc7beef0ee4ULL,
 0xc6e00bf33da88fc2ULL, 0xd5a79147930aa725ULL,
 0x06ca6351e003826fULL, 0x142929670a0e6e70ULL,
 0x27b70a8546d22ffcULL, 0x2e1b21385c26c926ULL,
 0x4d2c6dfc5ac42aedULL, 0x53380d139d95b3dfULL,
 0x650a73548baf63deULL, 0x766a0abb3c77b2a8ULL,
 0x81c2c92e47edaee6ULL, 0x92722c851482353bULL,
 0xa2bfe8a14cf10364ULL, 0xa81a664bbc423001ULL,
 0xc24b8b70d0f89791ULL, 0xc76c51a30654be30ULL,
 0xd192e819d6ef5218ULL, 0xd69906245565a910ULL,
 0xf40e35855771202aULL, 0x106aa07032bbd1b8ULL,
 0x19a4c116b8d2d0c8ULL, 0x1e376c085141ab53ULL,
 0x2748774cdf8eeb99ULL, 0x34b0bcb5e19b48a8ULL,
 0x391c0cb3c5c95a63ULL, 0x4ed8aa4ae3418acbULL,
 0x5b9cca4f7763e373ULL, 0x682e6ff3d6b2b8a3ULL,
 0x748f82ee5defb2fcULL, 0x78a5636f43172f60ULL,
 0x84c87814a1f0ab72ULL, 0x8cc702081a6439ecULL,
 0x90befffa23631e28ULL, 0xa4506cebde82bde9ULL,
 0xbef9a3f7b2c67915ULL, 0xc67178f2e372532bULL,
 0xca273eceea26619cULL, 0xd186b8c721c0c207ULL,
 0xeada7dd6cde0eb1eULL, 0xf57d4f7fee6ed178ULL,
 0x06f067aa72176fbaULL, 0x0a637dc5a2c898a6ULL,
 0x113f9804bef90daeULL, 0x1b710b35131c471bULL,
 0x28db77f523047d84ULL, 0x32caab7b40c72493ULL,
 0x3c9ebe0a15c9bebcULL, 0x431d67c49c100d4cULL,
 0x4cc5d4becb3e42b6ULL, 0x597f299cfc657e2aULL,
 0x5fcb6fab3ad6faecULL, 0x6c44198c4a475817ULL
};
const static u_int64_t sha384_initial_hash_value[8] = {
 0xcbbb9d5dc1059ed8ULL,
 0x629a292a367cd507ULL,
 0x9159015a3070dd17ULL,
 0x152fecd8f70e5939ULL,
 0x67332667ffc00b31ULL,
 0x8eb44a8768581511ULL,
 0xdb0c2e0d64f98fa7ULL,
 0x47b5481dbefa4fa4ULL
};
const static u_int64_t sha512_initial_hash_value[8] = {
 0x6a09e667f3bcc908ULL,
 0xbb67ae8584caa73bULL,
 0x3c6ef372fe94f82bULL,
 0xa54ff53a5f1d36f1ULL,
 0x510e527fade682d1ULL,
 0x9b05688c2b3e6c1fULL,
 0x1f83d9abfb41bd6bULL,
 0x5be0cd19137e2179ULL
};
void
SHA256Init(SHA2_CTX *context)
{
 __builtin_memcpy((context->state.st32), (sha256_initial_hash_value), (32));
 __builtin_memset((context->buffer), (0), (64));
 context->bitcount[0] = 0;
}
void
SHA256Transform(u_int32_t *state, const u_int8_t *data)
{
 u_int32_t a, b, c, d, e, f, g, h, s0, s1;
 u_int32_t T1, T2, W256[16];
 int j;
 a = state[0];
 b = state[1];
 c = state[2];
 d = state[3];
 e = state[4];
 f = state[5];
 g = state[6];
 h = state[7];
 j = 0;
 do {
  W256[j] = (u_int32_t)data[3] | ((u_int32_t)data[2] << 8) |
      ((u_int32_t)data[1] << 16) | ((u_int32_t)data[0] << 24);
  data += 4;
  T1 = h + (((((e)) >> (6)) | (((e)) << (32 - (6)))) ^ ((((e)) >> (11)) | (((e)) << (32 - (11)))) ^ ((((e)) >> (25)) | (((e)) << (32 - (25))))) + (((e) & (f)) ^ ((~(e)) & (g))) + K256[j] + W256[j];
  T2 = (((((a)) >> (2)) | (((a)) << (32 - (2)))) ^ ((((a)) >> (13)) | (((a)) << (32 - (13)))) ^ ((((a)) >> (22)) | (((a)) << (32 - (22))))) + (((a) & (b)) ^ ((a) & (c)) ^ ((b) & (c)));
  h = g;
  g = f;
  f = e;
  e = d + T1;
  d = c;
  c = b;
  b = a;
  a = T1 + T2;
  j++;
 } while (j < 16);
 do {
  s0 = W256[(j+1)&0x0f];
  s0 = (((((s0)) >> (7)) | (((s0)) << (32 - (7)))) ^ ((((s0)) >> (18)) | (((s0)) << (32 - (18)))) ^ (((s0)) >> (3)));
  s1 = W256[(j+14)&0x0f];
  s1 = (((((s1)) >> (17)) | (((s1)) << (32 - (17)))) ^ ((((s1)) >> (19)) | (((s1)) << (32 - (19)))) ^ (((s1)) >> (10)));
  T1 = h + (((((e)) >> (6)) | (((e)) << (32 - (6)))) ^ ((((e)) >> (11)) | (((e)) << (32 - (11)))) ^ ((((e)) >> (25)) | (((e)) << (32 - (25))))) + (((e) & (f)) ^ ((~(e)) & (g))) + K256[j] +
       (W256[j&0x0f] += s1 + W256[(j+9)&0x0f] + s0);
  T2 = (((((a)) >> (2)) | (((a)) << (32 - (2)))) ^ ((((a)) >> (13)) | (((a)) << (32 - (13)))) ^ ((((a)) >> (22)) | (((a)) << (32 - (22))))) + (((a) & (b)) ^ ((a) & (c)) ^ ((b) & (c)));
  h = g;
  g = f;
  f = e;
  e = d + T1;
  d = c;
  c = b;
  b = a;
  a = T1 + T2;
  j++;
 } while (j < 64);
 state[0] += a;
 state[1] += b;
 state[2] += c;
 state[3] += d;
 state[4] += e;
 state[5] += f;
 state[6] += g;
 state[7] += h;
 a = b = c = d = e = f = g = h = T1 = T2 = 0;
}
void
SHA256Update(SHA2_CTX *context, const void *dataptr, size_t len)
{
 const uint8_t *data = dataptr;
 size_t freespace, usedspace;
 if (len == 0)
  return;
 usedspace = (context->bitcount[0] >> 3) % 64;
 if (usedspace > 0) {
  freespace = 64 - usedspace;
  if (len >= freespace) {
   __builtin_memcpy((&context->buffer[usedspace]), (data), (freespace));
   context->bitcount[0] += freespace << 3;
   len -= freespace;
   data += freespace;
   SHA256Transform(context->state.st32, context->buffer);
  } else {
   __builtin_memcpy((&context->buffer[usedspace]), (data), (len));
   context->bitcount[0] += len << 3;
   usedspace = freespace = 0;
   return;
  }
 }
 while (len >= 64) {
  SHA256Transform(context->state.st32, data);
  context->bitcount[0] += 64 << 3;
  len -= 64;
  data += 64;
 }
 if (len > 0) {
  __builtin_memcpy((context->buffer), (data), (len));
  context->bitcount[0] += len << 3;
 }
 usedspace = freespace = 0;
}
void
SHA256Final(u_int8_t digest[], SHA2_CTX *context)
{
 unsigned int usedspace;
 usedspace = (context->bitcount[0] >> 3) % 64;
 if (usedspace > 0) {
  context->buffer[usedspace++] = 0x80;
  if (usedspace <= (64 - 8)) {
   __builtin_memset((&context->buffer[usedspace]), (0), ((64 - 8) - usedspace));
  } else {
   if (usedspace < 64) {
    __builtin_memset((&context->buffer[usedspace]), (0), (64 - usedspace));
   }
   SHA256Transform(context->state.st32, context->buffer);
   __builtin_memset((context->buffer), (0), ((64 - 8)));
  }
 } else {
  __builtin_memset((context->buffer), (0), ((64 - 8)));
  *context->buffer = 0x80;
 }
 *(u_int64_t *)&context->buffer[(64 - 8)] = context->bitcount[0];
 SHA256Transform(context->state.st32, context->buffer);
 __builtin_memcpy((digest), (context->state.st32), (32));
 explicit_bzero(context, sizeof(*context));
 usedspace = 0;
}
void
SHA512Init(SHA2_CTX *context)
{
 __builtin_memcpy((context->state.st64), (sha512_initial_hash_value), (64));
 __builtin_memset((context->buffer), (0), (128));
 context->bitcount[0] = context->bitcount[1] = 0;
}
void
SHA512Transform(u_int64_t *state, const u_int8_t *data)
{
 u_int64_t a, b, c, d, e, f, g, h, s0, s1;
 u_int64_t T1, T2, W512[16];
 int j;
 a = state[0];
 b = state[1];
 c = state[2];
 d = state[3];
 e = state[4];
 f = state[5];
 g = state[6];
 h = state[7];
 j = 0;
 do {
  W512[j] = (u_int64_t)data[7] | ((u_int64_t)data[6] << 8) |
      ((u_int64_t)data[5] << 16) | ((u_int64_t)data[4] << 24) |
      ((u_int64_t)data[3] << 32) | ((u_int64_t)data[2] << 40) |
      ((u_int64_t)data[1] << 48) | ((u_int64_t)data[0] << 56);
  data += 8;
  T1 = h + (((((e)) >> (14)) | (((e)) << (64 - (14)))) ^ ((((e)) >> (18)) | (((e)) << (64 - (18)))) ^ ((((e)) >> (41)) | (((e)) << (64 - (41))))) + (((e) & (f)) ^ ((~(e)) & (g))) + K512[j] + W512[j];
  T2 = (((((a)) >> (28)) | (((a)) << (64 - (28)))) ^ ((((a)) >> (34)) | (((a)) << (64 - (34)))) ^ ((((a)) >> (39)) | (((a)) << (64 - (39))))) + (((a) & (b)) ^ ((a) & (c)) ^ ((b) & (c)));
  h = g;
  g = f;
  f = e;
  e = d + T1;
  d = c;
  c = b;
  b = a;
  a = T1 + T2;
  j++;
 } while (j < 16);
 do {
  s0 = W512[(j+1)&0x0f];
  s0 = (((((s0)) >> (1)) | (((s0)) << (64 - (1)))) ^ ((((s0)) >> (8)) | (((s0)) << (64 - (8)))) ^ (((s0)) >> (7)));
  s1 = W512[(j+14)&0x0f];
  s1 = (((((s1)) >> (19)) | (((s1)) << (64 - (19)))) ^ ((((s1)) >> (61)) | (((s1)) << (64 - (61)))) ^ (((s1)) >> (6)));
  T1 = h + (((((e)) >> (14)) | (((e)) << (64 - (14)))) ^ ((((e)) >> (18)) | (((e)) << (64 - (18)))) ^ ((((e)) >> (41)) | (((e)) << (64 - (41))))) + (((e) & (f)) ^ ((~(e)) & (g))) + K512[j] +
       (W512[j&0x0f] += s1 + W512[(j+9)&0x0f] + s0);
  T2 = (((((a)) >> (28)) | (((a)) << (64 - (28)))) ^ ((((a)) >> (34)) | (((a)) << (64 - (34)))) ^ ((((a)) >> (39)) | (((a)) << (64 - (39))))) + (((a) & (b)) ^ ((a) & (c)) ^ ((b) & (c)));
  h = g;
  g = f;
  f = e;
  e = d + T1;
  d = c;
  c = b;
  b = a;
  a = T1 + T2;
  j++;
 } while (j < 80);
 state[0] += a;
 state[1] += b;
 state[2] += c;
 state[3] += d;
 state[4] += e;
 state[5] += f;
 state[6] += g;
 state[7] += h;
 a = b = c = d = e = f = g = h = T1 = T2 = 0;
}
void
SHA512Update(SHA2_CTX *context, const void *dataptr, size_t len)
{
 const uint8_t *data = dataptr;
 size_t freespace, usedspace;
 if (len == 0)
  return;
 usedspace = (context->bitcount[0] >> 3) % 128;
 if (usedspace > 0) {
  freespace = 128 - usedspace;
  if (len >= freespace) {
   __builtin_memcpy((&context->buffer[usedspace]), (data), (freespace));
   { (context->bitcount)[0] += (u_int64_t)(freespace << 3); if ((context->bitcount)[0] < (freespace << 3)) { (context->bitcount)[1]++; } };
   len -= freespace;
   data += freespace;
   SHA512Transform(context->state.st64, context->buffer);
  } else {
   __builtin_memcpy((&context->buffer[usedspace]), (data), (len));
   { (context->bitcount)[0] += (u_int64_t)(len << 3); if ((context->bitcount)[0] < (len << 3)) { (context->bitcount)[1]++; } };
   usedspace = freespace = 0;
   return;
  }
 }
 while (len >= 128) {
  SHA512Transform(context->state.st64, data);
  { (context->bitcount)[0] += (u_int64_t)(128 << 3); if ((context->bitcount)[0] < (128 << 3)) { (context->bitcount)[1]++; } };
  len -= 128;
  data += 128;
 }
 if (len > 0) {
  __builtin_memcpy((context->buffer), (data), (len));
  { (context->bitcount)[0] += (u_int64_t)(len << 3); if ((context->bitcount)[0] < (len << 3)) { (context->bitcount)[1]++; } };
 }
 usedspace = freespace = 0;
}
void
SHA512Last(SHA2_CTX *context)
{
 unsigned int usedspace;
 usedspace = (context->bitcount[0] >> 3) % 128;
 if (usedspace > 0) {
  context->buffer[usedspace++] = 0x80;
  if (usedspace <= (128 - 16)) {
   __builtin_memset((&context->buffer[usedspace]), (0), ((128 - 16) - usedspace));
  } else {
   if (usedspace < 128) {
    __builtin_memset((&context->buffer[usedspace]), (0), (128 - usedspace));
   }
   SHA512Transform(context->state.st64, context->buffer);
   __builtin_memset((context->buffer), (0), (128 - 2));
  }
 } else {
  __builtin_memset((context->buffer), (0), ((128 - 16)));
  *context->buffer = 0x80;
 }
 *(u_int64_t *)&context->buffer[(128 - 16)] = context->bitcount[1];
 *(u_int64_t *)&context->buffer[(128 - 16)+8] = context->bitcount[0];
 SHA512Transform(context->state.st64, context->buffer);
}
void
SHA512Final(u_int8_t digest[], SHA2_CTX *context)
{
 SHA512Last(context);
 __builtin_memcpy((digest), (context->state.st64), (64));
 explicit_bzero(context, sizeof(*context));
}
void
SHA384Init(SHA2_CTX *context)
{
 __builtin_memcpy((context->state.st64), (sha384_initial_hash_value), (64));
 __builtin_memset((context->buffer), (0), (128));
 context->bitcount[0] = context->bitcount[1] = 0;
}
void
SHA384Update(SHA2_CTX *context, const void *data, size_t len)
{
 SHA512Update(context, data, len);
}
void
SHA384Final(u_int8_t digest[], SHA2_CTX *context)
{
 SHA512Last(context);
 __builtin_memcpy((digest), (context->state.st64), (48));
 explicit_bzero(context, sizeof(*context));
}
