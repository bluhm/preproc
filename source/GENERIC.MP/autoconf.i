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
struct rusage {
 struct timeval ru_utime;
 struct timeval ru_stime;
 long ru_maxrss;
 long ru_ixrss;
 long ru_idrss;
 long ru_isrss;
 long ru_minflt;
 long ru_majflt;
 long ru_nswap;
 long ru_inblock;
 long ru_oublock;
 long ru_msgsnd;
 long ru_msgrcv;
 long ru_nsignals;
 long ru_nvcsw;
 long ru_nivcsw;
};
struct rlimit {
 rlim_t rlim_cur;
 rlim_t rlim_max;
};
struct loadavg {
 fixpt_t ldavg[3];
 long fscale;
};
extern struct loadavg averunnable;
struct process;
int dosetrlimit(struct proc *, u_int, struct rlimit *);
int donice(struct proc *, struct process *, int);
int dogetrusage(struct proc *, int, struct rusage *);
struct ucred {
 u_int cr_ref;
 uid_t cr_uid;
 uid_t cr_ruid;
 uid_t cr_svuid;
 gid_t cr_gid;
 gid_t cr_rgid;
 gid_t cr_svgid;
 short cr_ngroups;
 gid_t cr_groups[16];
};
struct xucred {
 uid_t cr_uid;
 gid_t cr_gid;
 short cr_ngroups;
 gid_t cr_groups[16];
};
int crfromxucred(struct ucred *, const struct xucred *);
void crset(struct ucred *, const struct ucred *);
struct ucred *crcopy(struct ucred *cr);
struct ucred *crdup(struct ucred *cr);
void crfree(struct ucred *cr);
struct ucred *crget(void);
int suser(struct proc *p, u_int flags);
int suser_ucred(struct ucred *cred);
struct iovec {
 void *iov_base;
 size_t iov_len;
};
enum uio_rw { UIO_READ, UIO_WRITE };
enum uio_seg {
 UIO_USERSPACE,
 UIO_SYSSPACE
};
struct uio {
 struct iovec *uio_iov;
 int uio_iovcnt;
 off_t uio_offset;
 size_t uio_resid;
 enum uio_seg uio_segflg;
 enum uio_rw uio_rw;
 struct proc *uio_procp;
};
int ureadc(int c, struct uio *);
struct file;
int dofilereadv(struct proc *, int, struct file *,
     const struct iovec *, int, int, off_t *, register_t *);
int dofilewritev(struct proc *, int, struct file *,
     const struct iovec *, int, int, off_t *, register_t *);
struct refcnt {
 unsigned int refs;
};
void refcnt_init(struct refcnt *);
void refcnt_take(struct refcnt *);
int refcnt_rele(struct refcnt *);
void refcnt_rele_wake(struct refcnt *);
void refcnt_finalize(struct refcnt *, const char *);
struct srp {
 void *ref;
};
struct srp_hazard {
 struct srp *sh_p;
 void *sh_v;
};
struct srp_ref {
 struct srp_hazard *hz;
} ;
struct srp_gc {
 void (*srp_gc_dtor)(void *, void *);
 void *srp_gc_cookie;
 struct refcnt srp_gc_refcnt;
};
struct srpl_rc {
 void (*srpl_ref)(void *, void *);
 struct srp_gc srpl_gc;
};
struct srpl {
 struct srp sl_head;
};
void srp_startup(void);
void srp_gc_init(struct srp_gc *, void (*)(void *, void *), void *);
void *srp_swap_locked(struct srp *, void *);
void srp_update_locked(struct srp_gc *, struct srp *, void *);
void *srp_get_locked(struct srp *);
void srp_gc_finalize(struct srp_gc *);
void srp_init(struct srp *);
void *srp_swap(struct srp *, void *);
void srp_update(struct srp_gc *, struct srp *, void *);
void srp_finalize(void *, const char *);
void *srp_enter(struct srp_ref *, struct srp *);
void *srp_follow(struct srp_ref *, struct srp *);
void srp_leave(struct srp_ref *);
void srpl_rc_init(struct srpl_rc *, void (*)(void *, void *),
      void (*)(void *, void *), void *);
typedef int sig_atomic_t;
struct sigcontext {
 long sc_cookie;
 long sc_sp;
 long sc_pc;
 long sc_npc;
 long sc_tstate;
 long sc_g1;
 long sc_o0;
 int sc_mask;
};
typedef unsigned int sigset_t;
union sigval {
 int sival_int;
 void *sival_ptr;
};
typedef struct {
 int si_signo;
 int si_code;
 int si_errno;
 union {
  int _pad[((128 / sizeof (int)) - 3)];
  struct {
   pid_t _pid;
   union {
    struct {
     uid_t _uid;
     union sigval _value;
    } _kill;
    struct {
     clock_t _utime;
     clock_t _stime;
     int _status;
    } _cld;
   } _pdata;
  } _proc;
  struct {
   void *_addr;
   int _trapno;
  } _fault;
 } _data;
} siginfo_t;
void initsiginfo(siginfo_t *, int, u_long, int, union sigval);
struct sigaction {
 union {
  void (*__sa_handler)(int);
  void (*__sa_sigaction)(int, siginfo_t *, void *);
 } __sigaction_u;
 sigset_t sa_mask;
 int sa_flags;
};
typedef void (*sig_t)(int);
struct sigvec {
 void (*sv_handler)(int);
 int sv_mask;
 int sv_flags;
};
typedef struct sigaltstack {
 void *ss_sp;
 size_t ss_size;
 int ss_flags;
} stack_t;
typedef struct sigcontext ucontext_t;
extern void delay(unsigned int);
extern int cputyp;
static inline u_int64_t sparc_rd_asi(void); static inline u_int64_t sparc_rd_asi() { u_int64_t r; __asm volatile("rd %%" "asi" ", %0" : "=r" (r) : : "%g0"); return (r); };
static inline u_int64_t sparc_rd_fprs(void); static inline u_int64_t sparc_rd_fprs() { u_int64_t r; __asm volatile("rd %%" "fprs" ", %0" : "=r" (r) : : "%g0"); return (r); };
static inline u_int64_t sparc_rd_asr22(void); static inline u_int64_t sparc_rd_asr22() { u_int64_t r; __asm volatile("rd %%" "asr22" ", %0" : "=r" (r) : : "%g0"); return (r); };
static inline u_int64_t sparc_rd_sys_tick(void); static inline u_int64_t sparc_rd_sys_tick() { u_int64_t r; __asm volatile("rd %%" "sys_tick" ", %0" : "=r" (r) : : "%g0"); return (r); };
static inline u_int64_t sparc_rd_sys_tick_cmpr(void); static inline u_int64_t sparc_rd_sys_tick_cmpr() { u_int64_t r; __asm volatile("rd %%" "sys_tick_cmpr" ", %0" : "=r" (r) : : "%g0"); return (r); };
static inline u_int64_t sparc_rdpr_tick(void); static inline u_int64_t sparc_rdpr_tick() { u_int64_t r; __asm volatile("rdpr %%" "tick" ", %0" : "=r" (r) : : "%g0"); return (r); };
static inline u_int64_t sparc_rdpr_tba(void); static inline u_int64_t sparc_rdpr_tba() { u_int64_t r; __asm volatile("rdpr %%" "tba" ", %0" : "=r" (r) : : "%g0"); return (r); };
static inline u_int64_t sparc_rdpr_pstate(void); static inline u_int64_t sparc_rdpr_pstate() { u_int64_t r; __asm volatile("rdpr %%" "pstate" ", %0" : "=r" (r) : : "%g0"); return (r); };
static inline u_int64_t sparc_rdpr_pil(void); static inline u_int64_t sparc_rdpr_pil() { u_int64_t r; __asm volatile("rdpr %%" "pil" ", %0" : "=r" (r) : : "%g0"); return (r); };
static inline u_int64_t sparc_rdpr_cwp(void); static inline u_int64_t sparc_rdpr_cwp() { u_int64_t r; __asm volatile("rdpr %%" "cwp" ", %0" : "=r" (r) : : "%g0"); return (r); };
static inline u_int64_t sparc_rdpr_cansave(void); static inline u_int64_t sparc_rdpr_cansave() { u_int64_t r; __asm volatile("rdpr %%" "cansave" ", %0" : "=r" (r) : : "%g0"); return (r); };
static inline u_int64_t sparc_rdpr_canrestore(void); static inline u_int64_t sparc_rdpr_canrestore() { u_int64_t r; __asm volatile("rdpr %%" "canrestore" ", %0" : "=r" (r) : : "%g0"); return (r); };
static inline u_int64_t sparc_rdpr_cleanwin(void); static inline u_int64_t sparc_rdpr_cleanwin() { u_int64_t r; __asm volatile("rdpr %%" "cleanwin" ", %0" : "=r" (r) : : "%g0"); return (r); };
static inline u_int64_t sparc_rdpr_otherwin(void); static inline u_int64_t sparc_rdpr_otherwin() { u_int64_t r; __asm volatile("rdpr %%" "otherwin" ", %0" : "=r" (r) : : "%g0"); return (r); };
static inline u_int64_t sparc_rdpr_wstate(void); static inline u_int64_t sparc_rdpr_wstate() { u_int64_t r; __asm volatile("rdpr %%" "wstate" ", %0" : "=r" (r) : : "%g0"); return (r); };
static inline u_int64_t sparc_rdpr_ver(void); static inline u_int64_t sparc_rdpr_ver() { u_int64_t r; __asm volatile("rdpr %%" "ver" ", %0" : "=r" (r) : : "%g0"); return (r); };
static inline u_char lduba_asi(paddr_t); static inline u_char lduba_asi(paddr_t va) { u_char r; __asm volatile( "lduba" " [%1] %%asi, %0" : "=r" (r) : "r" ((volatile u_char *)va) : "%g0"); return (r); } static inline u_char lduba_nc(paddr_t, int); static inline u_char lduba_nc(paddr_t va, int asi) { do { if (__builtin_constant_p(0)) __asm volatile("wr %%g0, %0, %%" "asi" : : "rI" ((asi) ^ (0)) : "%g0"); else __asm volatile("wr %0, %1, %%" "asi" : : "r" (asi), "rI" (0) : "%g0"); } while(0); return (lduba_asi(va)); };
static inline u_short lduha_asi(paddr_t); static inline u_short lduha_asi(paddr_t va) { u_short r; __asm volatile( "lduha" " [%1] %%asi, %0" : "=r" (r) : "r" ((volatile u_short *)va) : "%g0"); return (r); } static inline u_short lduha_nc(paddr_t, int); static inline u_short lduha_nc(paddr_t va, int asi) { do { if (__builtin_constant_p(0)) __asm volatile("wr %%g0, %0, %%" "asi" : : "rI" ((asi) ^ (0)) : "%g0"); else __asm volatile("wr %0, %1, %%" "asi" : : "r" (asi), "rI" (0) : "%g0"); } while(0); return (lduha_asi(va)); };
static inline u_int lduwa_asi(paddr_t); static inline u_int lduwa_asi(paddr_t va) { u_int r; __asm volatile( "lduwa" " [%1] %%asi, %0" : "=r" (r) : "r" ((volatile u_int *)va) : "%g0"); return (r); } static inline u_int lduwa_nc(paddr_t, int); static inline u_int lduwa_nc(paddr_t va, int asi) { do { if (__builtin_constant_p(0)) __asm volatile("wr %%g0, %0, %%" "asi" : : "rI" ((asi) ^ (0)) : "%g0"); else __asm volatile("wr %0, %1, %%" "asi" : : "r" (asi), "rI" (0) : "%g0"); } while(0); return (lduwa_asi(va)); };
static inline u_int64_t ldxa_asi(paddr_t); static inline u_int64_t ldxa_asi(paddr_t va) { u_int64_t r; __asm volatile( "ldxa" " [%1] %%asi, %0" : "=r" (r) : "r" ((volatile u_int64_t *)va) : "%g0"); return (r); } static inline u_int64_t ldxa_nc(paddr_t, int); static inline u_int64_t ldxa_nc(paddr_t va, int asi) { do { if (__builtin_constant_p(0)) __asm volatile("wr %%g0, %0, %%" "asi" : : "rI" ((asi) ^ (0)) : "%g0"); else __asm volatile("wr %0, %1, %%" "asi" : : "r" (asi), "rI" (0) : "%g0"); } while(0); return (ldxa_asi(va)); };
static inline int lda_asi(paddr_t); static inline int lda_asi(paddr_t va) { int r; __asm volatile( "lda" " [%1] %%asi, %0" : "=r" (r) : "r" ((volatile int *)va) : "%g0"); return (r); } static inline int lda_nc(paddr_t, int); static inline int lda_nc(paddr_t va, int asi) { do { if (__builtin_constant_p(0)) __asm volatile("wr %%g0, %0, %%" "asi" : : "rI" ((asi) ^ (0)) : "%g0"); else __asm volatile("wr %0, %1, %%" "asi" : : "r" (asi), "rI" (0) : "%g0"); } while(0); return (lda_asi(va)); };
static inline void stba_asi(paddr_t, u_int8_t); static inline void stba_asi(paddr_t va, u_int8_t val) { __asm volatile( "stba" " %0, [%1] %%asi" : : "r" (val), "r" ((volatile u_int8_t *)va) : "memory"); } static inline void stba_nc(paddr_t, int, u_int8_t); static inline void stba_nc(paddr_t va, int asi, u_int8_t val) { do { if (__builtin_constant_p(0)) __asm volatile("wr %%g0, %0, %%" "asi" : : "rI" ((asi) ^ (0)) : "%g0"); else __asm volatile("wr %0, %1, %%" "asi" : : "r" (asi), "rI" (0) : "%g0"); } while(0); stba_asi(va, val); };
static inline void stha_asi(paddr_t, u_int16_t); static inline void stha_asi(paddr_t va, u_int16_t val) { __asm volatile( "stha" " %0, [%1] %%asi" : : "r" (val), "r" ((volatile u_int16_t *)va) : "memory"); } static inline void stha_nc(paddr_t, int, u_int16_t); static inline void stha_nc(paddr_t va, int asi, u_int16_t val) { do { if (__builtin_constant_p(0)) __asm volatile("wr %%g0, %0, %%" "asi" : : "rI" ((asi) ^ (0)) : "%g0"); else __asm volatile("wr %0, %1, %%" "asi" : : "r" (asi), "rI" (0) : "%g0"); } while(0); stha_asi(va, val); };
static inline void stwa_asi(paddr_t, u_int32_t); static inline void stwa_asi(paddr_t va, u_int32_t val) { __asm volatile( "stwa" " %0, [%1] %%asi" : : "r" (val), "r" ((volatile u_int32_t *)va) : "memory"); } static inline void stwa_nc(paddr_t, int, u_int32_t); static inline void stwa_nc(paddr_t va, int asi, u_int32_t val) { do { if (__builtin_constant_p(0)) __asm volatile("wr %%g0, %0, %%" "asi" : : "rI" ((asi) ^ (0)) : "%g0"); else __asm volatile("wr %0, %1, %%" "asi" : : "r" (asi), "rI" (0) : "%g0"); } while(0); stwa_asi(va, val); };
static inline void stxa_asi(paddr_t, u_int64_t); static inline void stxa_asi(paddr_t va, u_int64_t val) { __asm volatile( "stxa" " %0, [%1] %%asi" : : "r" (val), "r" ((volatile u_int64_t *)va) : "memory"); } static inline void stxa_nc(paddr_t, int, u_int64_t); static inline void stxa_nc(paddr_t va, int asi, u_int64_t val) { do { if (__builtin_constant_p(0)) __asm volatile("wr %%g0, %0, %%" "asi" : : "rI" ((asi) ^ (0)) : "%g0"); else __asm volatile("wr %0, %1, %%" "asi" : : "r" (asi), "rI" (0) : "%g0"); } while(0); stxa_asi(va, val); };
static inline void sta_asi(paddr_t, u_int); static inline void sta_asi(paddr_t va, u_int val) { __asm volatile( "sta" " %0, [%1] %%asi" : : "r" (val), "r" ((volatile u_int *)va) : "memory"); } static inline void sta_nc(paddr_t, int, u_int); static inline void sta_nc(paddr_t va, int asi, u_int val) { do { if (__builtin_constant_p(0)) __asm volatile("wr %%g0, %0, %%" "asi" : : "rI" ((asi) ^ (0)) : "%g0"); else __asm volatile("wr %0, %1, %%" "asi" : : "r" (asi), "rI" (0) : "%g0"); } while(0); sta_asi(va, val); };
static inline void asi_set(int);
static inline
void asi_set(int asi)
{
 do { if (__builtin_constant_p(0)) __asm volatile("wr %%g0, %0, %%" "asi" : : "rI" ((asi) ^ (0)) : "%g0"); else __asm volatile("wr %0, %1, %%" "asi" : : "r" (asi), "rI" (0) : "%g0"); } while(0);
}
static inline u_int8_t asi_get(void);
static inline
u_int8_t asi_get(void)
{
 return sparc_rd_asi();
}
static inline void flush(void *);
static inline
void flush(void *p)
{
 __asm volatile("flush %0"
     : : "r" (p)
     : "memory");
}
extern u_int64_t stick(void);
extern void tick_enable(void);
extern void tickcmpr_set(u_int64_t);
extern void sys_tickcmpr_set(u_int64_t);
extern void stickcmpr_set(u_int64_t);
extern u_int64_t ver;
void splassert_fail(int, int, const char *);
extern int splassert_ctl;
void splassert_check(int, const char *);
static inline u_int64_t getpstate(void);
static inline
u_int64_t getpstate(void)
{
 return (sparc_rdpr_pstate());
}
static inline void setpstate(u_int64_t);
static inline void setpstate(u_int64_t newpstate)
{
 do { if (__builtin_constant_p(0)) __asm volatile("wrpr %%g0, %0, %%" "pstate" : : "rI" ((newpstate) ^ (0)) : "%g0"); else __asm volatile("wrpr %0, %1, %%" "pstate" : : "r" (newpstate), "rI" (0) : "%g0"); __asm volatile("" : : : "memory"); } while(0);
}
static inline int getcwp(void);
static inline
int getcwp(void)
{
 return (sparc_rdpr_cwp());
}
static inline void setcwp(u_int64_t);
static inline void
setcwp(u_int64_t newcwp)
{
 do { if (__builtin_constant_p(0)) __asm volatile("wrpr %%g0, %0, %%" "cwp" : : "rI" ((newcwp) ^ (0)) : "%g0"); else __asm volatile("wrpr %0, %1, %%" "cwp" : : "r" (newcwp), "rI" (0) : "%g0"); __asm volatile("" : : : "memory"); } while(0);
}
static inline u_int64_t getver(void);
static inline
u_int64_t getver(void)
{
 return (sparc_rdpr_ver());
}
static inline u_int64_t intr_disable(void);
static inline u_int64_t
intr_disable(void)
{
 u_int64_t s;
 s = sparc_rdpr_pstate();
 do { if (__builtin_constant_p(0)) __asm volatile("wrpr %%g0, %0, %%" "pstate" : : "rI" ((s & ~0x002) ^ (0)) : "%g0"); else __asm volatile("wrpr %0, %1, %%" "pstate" : : "r" (s & ~0x002), "rI" (0) : "%g0"); __asm volatile("" : : : "memory"); } while(0);
 return (s);
}
static inline void intr_restore(u_int64_t);
static inline void
intr_restore(u_int64_t s)
{
 do { if (__builtin_constant_p(0)) __asm volatile("wrpr %%g0, %0, %%" "pstate" : : "rI" ((s) ^ (0)) : "%g0"); else __asm volatile("wrpr %0, %1, %%" "pstate" : : "r" (s), "rI" (0) : "%g0"); __asm volatile("" : : : "memory"); } while(0);
}
static inline void stxa_sync(u_int64_t, u_int64_t, u_int64_t);
static inline void
stxa_sync(u_int64_t va, u_int64_t asi, u_int64_t val)
{
 u_int64_t s = intr_disable();
 stxa_nc(va, asi, val);
 __asm volatile("membar #Sync" : : : "memory");
 intr_restore(s);
}
static inline int
_spl(int newipl)
{
 int oldpil;
 __asm volatile( "    rdpr %%pil, %0		\n"
   "    wrpr %%g0, %1, %%pil	\n"
     : "=&r" (oldpil)
     : "I" (newipl)
     : "%g0");
 __asm volatile("" : : : "memory");
 return (oldpil);
}
static inline int
_splraise(int newpil)
{
 int oldpil;
 oldpil = sparc_rdpr_pil();
 if (newpil > oldpil)
  do { if (__builtin_constant_p(0)) __asm volatile("wrpr %%g0, %0, %%" "pil" : : "rI" ((newpil) ^ (0)) : "%g0"); else __asm volatile("wrpr %0, %1, %%" "pil" : : "r" (newpil), "rI" (0) : "%g0"); __asm volatile("" : : : "memory"); } while(0);
        return (oldpil);
}
static inline void
_splx(int newpil)
{
 do { if (__builtin_constant_p(0)) __asm volatile("wrpr %%g0, %0, %%" "pil" : : "rI" ((newpil) ^ (0)) : "%g0"); else __asm volatile("wrpr %0, %1, %%" "pil" : : "r" (newpil), "rI" (0) : "%g0"); __asm volatile("" : : : "memory"); } while(0);
}
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
struct intrhand;
void send_softint(int cpu, int level, struct intrhand *ih);
struct evcount {
 u_int64_t ec_count;
 int ec_id;
 const char *ec_name;
 void *ec_data;
 struct { struct evcount *tqe_next; struct evcount **tqe_prev; } next;
};
void evcount_attach(struct evcount *, const char *, void *);
void evcount_detach(struct evcount *);
int evcount_sysctl(int *, u_int, void *, size_t *, void *, size_t);
struct intrhand {
 int (*ih_fun)(void *);
 void *ih_arg;
 short ih_number;
 char ih_pil;
 char ih_mpsafe;
 struct intrhand *ih_next;
 struct intrhand *ih_pending;
 volatile u_int64_t *ih_map;
 volatile u_int64_t *ih_clr;
 void (*ih_ack)(struct intrhand *);
 struct evcount ih_count;
 const void *ih_bus;
 struct cpu_info *ih_cpu;
 char ih_name[32];
};
extern struct intrhand *intrlev[(1<<11)];
void intr_establish(int, struct intrhand *);
int splraise(int);
void intr_barrier(void *);
void *softintr_establish(int, void (*)(void *), void *);
void softintr_disestablish(void *);
void softintr_schedule(void *);
struct schedstate_percpu {
 struct timespec spc_runtime;
 volatile int spc_schedflags;
 u_int spc_schedticks;
 u_int64_t spc_cp_time[5];
 u_char spc_curpriority;
 int spc_rrticks;
 int spc_pscnt;
 int spc_psdiv;
 struct proc *spc_idleproc;
 u_int spc_nrun;
 fixpt_t spc_ldavg;
 struct prochead { struct proc *tqh_first; struct proc **tqh_last; } spc_qs[32];
 volatile uint32_t spc_whichqs;
 struct { struct proc *lh_first; } spc_deadproc;
};
extern int schedhz;
extern int rrticks_init;
struct proc;
void schedclock(struct proc *);
struct cpu_info;
void roundrobin(struct cpu_info *);
void scheduler_start(void);
void userret(struct proc *p);
void sched_init_cpu(struct cpu_info *);
void sched_idle(void *);
void sched_exit(struct proc *);
void mi_switch(void);
void cpu_switchto(struct proc *, struct proc *);
struct proc *sched_chooseproc(void);
struct cpu_info *sched_choosecpu(struct proc *);
struct cpu_info *sched_choosecpu_fork(struct proc *parent, int);
void cpu_idle_enter(void);
void cpu_idle_cycle(void);
void cpu_idle_leave(void);
void sched_peg_curproc(struct cpu_info *ci);
void sched_barrier(struct cpu_info *ci);
int sysctl_hwsetperf(void *, size_t *, void *, size_t);
int sysctl_hwperfpolicy(void *, size_t *, void *, size_t);
void sched_start_secondary_cpus(void);
void sched_stop_secondary_cpus(void);
void sched_init_runqueues(void);
void setrunqueue(struct proc *);
void remrunqueue(struct proc *);
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
extern struct __mp_lock sched_lock;
struct cpu_info {
 struct cpu_info * volatile ci_self;
 struct proc *ci_curproc;
 struct pcb *ci_cpcb;
 struct cpu_info *ci_next;
 struct proc *ci_fpproc;
 int ci_cpuid;
 int ci_flags;
 int ci_upaid;
 int ci_itid;
 struct srp_hazard ci_srp_hazards[16];
 int ci_node;
 u_int32_t ci_randseed;
 struct schedstate_percpu ci_schedstate;
 int ci_want_resched;
 int ci_handled_intr_level;
 void *ci_intrpending[16][8];
 u_int64_t ci_tick;
 struct intrhand ci_tickintr;
 volatile int ci_ddb_paused;
 void (*ci_spinup)(void);
 void *ci_initstack;
 paddr_t ci_paddr;
 struct rwindow64 ci_rw;
 u_int64_t ci_rwsp;
 paddr_t ci_mmfsa;
 paddr_t ci_cpumq;
 paddr_t ci_devmq;
 paddr_t ci_cpuset;
 paddr_t ci_mondo;
 int ci_pci_probe;
 int ci_pci_fault;
 int ci_mutex_level;
};
extern struct cpu_info *cpus;
register struct cpu_info *__curcpu asm ("g7");
void cpu_boot_secondary_processors(void);
void sparc64_send_ipi(int, void (*)(void), u_int64_t, u_int64_t);
void sparc64_broadcast_ipi(void (*)(void), u_int64_t, u_int64_t);
void cpu_unidle(struct cpu_info *);
struct clockframe {
 struct trapframe64 t;
 int saved_intr_level;
};
extern void (*cpu_start_clock)(void);
extern void need_resched(struct cpu_info *);
void signotify(struct proc *);
int cpu_myid(void);
int ldcontrolb(caddr_t);
void dumpconf(void);
caddr_t reserve_dumppages(caddr_t);
struct timeval;
int clockintr(void *);
int statintr(void *);
struct fpstate64;
void savefpstate(struct fpstate64 *);
void loadfpstate(struct fpstate64 *);
void clearfpstate(void);
u_int64_t probeget(paddr_t, int, int);
void write_user_windows(void);
void proc_trampoline(void);
struct pcb;
void snapshot(struct pcb *);
struct frame *getfp(void);
int xldcontrolb(caddr_t, struct pcb *);
void copywords(const void *, void *, size_t);
void qcopy(const void *, void *, size_t);
void qzero(void *, size_t);
void switchtoctx(int);
void pmap_unuse_final(struct proc *);
int rwindow_save(struct proc *);
void fpusave_cpu(struct cpu_info *, int);
void fpusave_proc(struct proc *, int);
int cnrom(void);
void zsconsole(struct tty *, int, int, void (**)(struct tty *, int));
void fb_unblank(void);
void tda_full_blast(void);
int emulinstr(vaddr_t, struct trapframe64 *);
int emul_qf(int32_t, struct proc *, union sigval, struct trapframe64 *);
int emul_popc(int32_t, struct proc *, union sigval, struct trapframe64 *);
struct trapvec {
 int tv_instr[8];
};
extern struct trapvec trapbase[];
extern void wzero(void *, u_int);
extern void wcopy(const void *, void *, u_int);
struct blink_led {
 void (*bl_func)(void *, int);
 void *bl_arg;
 struct { struct blink_led *sle_next; } bl_next;
};
extern void blink_led_register(struct blink_led *);
struct __mp_lock_cpu {
 u_int mplc_ticket;
 u_int mplc_depth;
};
struct __mp_lock {
 struct __mp_lock_cpu mpl_cpus[256];
 volatile u_int mpl_ticket;
 u_int mpl_users;
};
void ___mp_lock_init(struct __mp_lock *, struct lock_type *);
void ___mp_lock(struct __mp_lock * );
void ___mp_unlock(struct __mp_lock * );
int ___mp_release_all(struct __mp_lock * );
int ___mp_release_all_but_one(struct __mp_lock * );
void ___mp_acquire_count(struct __mp_lock *, int );
int __mp_lock_held(struct __mp_lock *, struct cpu_info *);
extern struct __mp_lock kernel_lock;
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
struct rb_type {
 int (*t_compare)(const void *, const void *);
 void (*t_augment)(void *);
 unsigned int t_offset;
};
struct rb_tree {
 struct rb_entry *rbt_root;
};
struct rb_entry {
 struct rb_entry *rbt_parent;
 struct rb_entry *rbt_left;
 struct rb_entry *rbt_right;
 unsigned int rbt_color;
};
static inline void
_rb_init(struct rb_tree *rbt)
{
 rbt->rbt_root = ((void *)0);
}
static inline int
_rb_empty(struct rb_tree *rbt)
{
 return (rbt->rbt_root == ((void *)0));
}
void *_rb_insert(const struct rb_type *, struct rb_tree *, void *);
void *_rb_remove(const struct rb_type *, struct rb_tree *, void *);
void *_rb_find(const struct rb_type *, struct rb_tree *, const void *);
void *_rb_nfind(const struct rb_type *, struct rb_tree *, const void *);
void *_rb_root(const struct rb_type *, struct rb_tree *);
void *_rb_min(const struct rb_type *, struct rb_tree *);
void *_rb_max(const struct rb_type *, struct rb_tree *);
void *_rb_next(const struct rb_type *, void *);
void *_rb_prev(const struct rb_type *, void *);
void *_rb_left(const struct rb_type *, void *);
void *_rb_right(const struct rb_type *, void *);
void *_rb_parent(const struct rb_type *, void *);
void _rb_set_left(const struct rb_type *, void *, void *);
void _rb_set_right(const struct rb_type *, void *, void *);
void _rb_set_parent(const struct rb_type *, void *, void *);
void _rb_poison(const struct rb_type *, void *, unsigned long);
int _rb_check(const struct rb_type *, void *, unsigned long);
struct mutex {
 volatile void *mtx_owner;
 int mtx_wantipl;
 int mtx_oldipl;
};
void __mtx_init(struct mutex *, int);
void __mtx_enter(struct mutex *);
int __mtx_enter_try(struct mutex *);
void __mtx_leave(struct mutex *);
struct buf;
struct vnode;
struct bufhead { struct buf *lh_first; };
struct workhead { struct worklist *lh_first; };
struct bufq_impl;
struct bufq {
 struct { struct bufq *sle_next; } bufq_entries;
 struct mutex bufq_mtx;
 void *bufq_data;
 u_int bufq_outstanding;
 u_int bufq_hi;
 u_int bufq_low;
 int bufq_waiting;
 int bufq_stop;
 int bufq_type;
 const struct bufq_impl *bufq_impl;
};
int bufq_init(struct bufq *, int);
int bufq_switch(struct bufq *, int);
void bufq_destroy(struct bufq *);
void bufq_queue(struct bufq *, struct buf *);
struct buf *bufq_dequeue(struct bufq *);
void bufq_requeue(struct bufq *, struct buf *);
int bufq_peek(struct bufq *);
void bufq_drain(struct bufq *);
void bufq_wait(struct bufq *);
void bufq_done(struct bufq *, struct buf *);
void bufq_quiesce(void);
void bufq_restart(void);
struct bufq_fifo_head { struct buf *sqh_first; struct buf **sqh_last; };
struct bufq_fifo {
 struct { struct buf *sqe_next; } bqf_entries;
};
struct bufq_nscan_head { struct buf *sqh_first; struct buf **sqh_last; };
struct bufq_nscan {
 struct { struct buf *sqe_next; } bqf_entries;
};
union bufq_data {
 struct bufq_fifo bufq_data_fifo;
 struct bufq_nscan bufq_data_nscan;
};
extern struct bio_ops {
 void (*io_start)(struct buf *);
 void (*io_complete)(struct buf *);
 void (*io_deallocate)(struct buf *);
 void (*io_movedeps)(struct buf *, struct buf *);
 int (*io_countdeps)(struct buf *, int, int);
} bioops;
struct buf {
 struct rb_entry b_rbbufs;
 struct { struct buf *le_next; struct buf **le_prev; } b_list;
 struct { struct buf *le_next; struct buf **le_prev; } b_vnbufs;
 struct { struct buf *tqe_next; struct buf **tqe_prev; } b_freelist;
 int cache;
 struct proc *b_proc;
 volatile long b_flags;
 long b_bufsize;
 long b_bcount;
 size_t b_resid;
 int b_error;
 dev_t b_dev;
 caddr_t b_data;
 void *b_saveaddr;
 struct { struct buf *tqe_next; struct buf **tqe_prev; } b_valist;
 union bufq_data b_bufq;
 struct bufq *b_bq;
 struct uvm_object *b_pobj;
 off_t b_poffs;
 daddr_t b_lblkno;
 daddr_t b_blkno;
 void (*b_iodone)(struct buf *);
 struct vnode *b_vp;
 int b_dirtyoff;
 int b_dirtyend;
 int b_validoff;
 int b_validend;
  struct workhead b_dep;
};
struct bufqueue { struct buf *tqh_first; struct buf **tqh_last; };
struct bufcache {
 int64_t hotbufpages;
 int64_t warmbufpages;
 int64_t cachepages;
 struct bufqueue hotqueue;
 struct bufqueue coldqueue;
 struct bufqueue warmqueue;
};
struct cluster_info {
 daddr_t ci_lastr;
 daddr_t ci_lastw;
 daddr_t ci_cstart;
 daddr_t ci_lasta;
 int ci_clen;
 int ci_ralen;
 daddr_t ci_maxra;
};

extern struct proc *cleanerproc;
extern long bufpages;
extern struct pool bufpool;
extern struct bufhead bufhead;
void bawrite(struct buf *);
void bdwrite(struct buf *);
void biodone(struct buf *);
int biowait(struct buf *);
int bread(struct vnode *, daddr_t, int, struct buf **);
int breadn(struct vnode *, daddr_t, int, daddr_t *, int *, int,
    struct buf **);
void brelse(struct buf *);
void bufinit(void);
void buf_dirty(struct buf *);
void buf_undirty(struct buf *);
void buf_adjcnt(struct buf *, long);
int bwrite(struct buf *);
struct buf *getblk(struct vnode *, daddr_t, int, int, int);
struct buf *geteblk(size_t);
struct buf *incore(struct vnode *, daddr_t);
void bufcache_take(struct buf *);
void bufcache_release(struct buf *);
int buf_flip_high(struct buf *);
void buf_flip_dma(struct buf *);
struct buf *bufcache_getcleanbuf(int, int);
struct buf *bufcache_getanycleanbuf(void);
struct buf *bufcache_getdirtybuf(void);
void buf_mem_init(vsize_t);
void buf_acquire(struct buf *);
void buf_acquire_unmapped(struct buf *);
void buf_acquire_nomap(struct buf *);
void buf_map(struct buf *);
void buf_release(struct buf *);
int buf_dealloc_mem(struct buf *);
void buf_fix_mapping(struct buf *, vsize_t);
void buf_alloc_pages(struct buf *, vsize_t);
void buf_free_pages(struct buf *);
void minphys(struct buf *bp);
int physio(void (*strategy)(struct buf *), dev_t dev, int flags,
     void (*minphys)(struct buf *), struct uio *uio);
void brelvp(struct buf *);
void reassignbuf(struct buf *);
void bgetvp(struct vnode *, struct buf *);
void buf_replacevnode(struct buf *, struct vnode *);
void buf_daemon(struct proc *);
void buf_replacevnode(struct buf *, struct vnode *);
int bread_cluster(struct vnode *, daddr_t, int, struct buf **);
static __inline void
buf_start(struct buf *bp)
{
 if (bioops.io_start)
  (*bioops.io_start)(bp);
}
static __inline void
buf_complete(struct buf *bp)
{
 if (bioops.io_complete)
  (*bioops.io_complete)(bp);
}
static __inline void
buf_deallocate(struct buf *bp)
{
 if (bioops.io_deallocate)
  (*bioops.io_deallocate)(bp);
}
static __inline void
buf_movedeps(struct buf *bp, struct buf *bp2)
{
 if (bioops.io_movedeps)
  (*bioops.io_movedeps)(bp, bp2);
}
static __inline int
buf_countdeps(struct buf *bp, int i, int islocked)
{
 if (bioops.io_countdeps)
  return ((*bioops.io_countdeps)(bp, i, islocked));
 else
  return (0);
}
void cluster_write(struct buf *, struct cluster_info *, u_quad_t);

struct uuid {
 uint32_t time_low;
 uint16_t time_mid;
 uint16_t time_hi_and_version;
 uint8_t clock_seq_hi_and_reserved;
 uint8_t clock_seq_low;
 uint8_t node[6];
};
int uuid_snprintf(char *, size_t, const struct uuid *);
int uuid_printf(const struct uuid *);
void uuid_dec_be(const void *, struct uuid *);
void uuid_dec_le(const void *, struct uuid *);
void uuid_enc_be(void *, const struct uuid *);
void uuid_enc_le(void *, const struct uuid *);
struct disklabel {
 u_int32_t d_magic;
 u_int16_t d_type;
 u_int16_t d_subtype;
 char d_typename[16];
 char d_packname[16];
 u_int32_t d_secsize;
 u_int32_t d_nsectors;
 u_int32_t d_ntracks;
 u_int32_t d_ncylinders;
 u_int32_t d_secpercyl;
 u_int32_t d_secperunit;
 u_char d_uid[8];
 u_int32_t d_acylinders;
 u_int16_t d_bstarth;
 u_int16_t d_bendh;
 u_int32_t d_bstart;
 u_int32_t d_bend;
 u_int32_t d_flags;
 u_int32_t d_drivedata[5];
 u_int16_t d_secperunith;
 u_int16_t d_version;
 u_int32_t d_spare[4];
 u_int32_t d_magic2;
 u_int16_t d_checksum;
 u_int16_t d_npartitions;
 u_int32_t d_bbsize;
 u_int32_t d_sbsize;
 struct partition {
  u_int32_t p_size;
  u_int32_t p_offset;
  u_int16_t p_offseth;
  u_int16_t p_sizeh;
  u_int8_t p_fstype;
  u_int8_t p_fragblock;
  u_int16_t p_cpg;
 } d_partitions[16];
};
struct __partitionv0 {
 u_int32_t p_size;
 u_int32_t p_offset;
 u_int32_t p_fsize;
 u_int8_t p_fstype;
 u_int8_t p_frag;
 union {
  u_int16_t cpg;
  u_int16_t sgs;
 } __partitionv0_u1;
};
struct partinfo {
 struct disklabel *disklab;
 struct partition *part;
};
struct gpt_header {
 u_int64_t gh_sig;
 u_int32_t gh_rev;
 u_int32_t gh_size;
 u_int32_t gh_csum;
 u_int32_t gh_rsvd;
 u_int64_t gh_lba_self;
 u_int64_t gh_lba_alt;
 u_int64_t gh_lba_start;
 u_int64_t gh_lba_end;
 struct uuid gh_guid;
 u_int64_t gh_part_lba;
 u_int32_t gh_part_num;
 u_int32_t gh_part_size;
 u_int32_t gh_part_csum;
};
struct gpt_partition {
 struct uuid gp_type;
 struct uuid gp_guid;
 u_int64_t gp_lba_start;
 u_int64_t gp_lba_end;
 u_int64_t gp_attrs;
 u_int16_t gp_name[36];
};
struct dos_partition {
 u_int8_t dp_flag;
 u_int8_t dp_shd;
 u_int8_t dp_ssect;
 u_int8_t dp_scyl;
 u_int8_t dp_typ;
 u_int8_t dp_ehd;
 u_int8_t dp_esect;
 u_int8_t dp_ecyl;
 u_int32_t dp_start;
 u_int32_t dp_size;
};
struct dos_mbr {
 u_int8_t dmbr_boot[446];
 struct dos_partition dmbr_parts[4];
 u_int16_t dmbr_sign;
} __attribute__((__packed__));
void diskerr(struct buf *, char *, char *, int, int, struct disklabel *);
u_int dkcksum(struct disklabel *);
int initdisklabel(struct disklabel *);
int checkdisklabel(void *, struct disklabel *, u_int64_t, u_int64_t);
int setdisklabel(struct disklabel *, struct disklabel *, u_int);
int readdisklabel(dev_t, void (*)(struct buf *), struct disklabel *, int);
int writedisklabel(dev_t, void (*)(struct buf *), struct disklabel *);
int bounds_check_with_label(struct buf *, struct disklabel *);
int readdisksector(struct buf *, void (*)(struct buf *),
     struct disklabel *, u_int64_t);
int readdoslabel(struct buf *, void (*)(struct buf *),
     struct disklabel *, daddr_t *, int);
int iso_disklabelspoof(dev_t dev, void (*strat)(struct buf *),
 struct disklabel *lp);
int udf_disklabelspoof(dev_t dev, void (*strat)(struct buf *),
 struct disklabel *lp);
enum devclass {
 DV_DULL,
 DV_CPU,
 DV_DISK,
 DV_IFNET,
 DV_TAPE,
 DV_TTY
};
struct device {
 enum devclass dv_class;
 struct { struct device *tqe_next; struct device **tqe_prev; } dv_list;
 struct cfdata *dv_cfdata;
 int dv_unit;
 char dv_xname[16];
 struct device *dv_parent;
 int dv_flags;
 int dv_ref;
};
struct devicelist { struct device *tqh_first; struct device **tqh_last; };
struct cfdata {
 struct cfattach *cf_attach;
 struct cfdriver *cf_driver;
 short cf_unit;
 short cf_fstate;
 long *cf_loc;
 int cf_flags;
 short *cf_parents;
 int cf_locnames;
 short cf_starunit1;
};
extern struct cfdata cfdata[];
typedef int (*cfmatch_t)(struct device *, void *, void *);
typedef void (*cfscan_t)(struct device *, void *);
struct cfattach {
 size_t ca_devsize;
 cfmatch_t ca_match;
 void (*ca_attach)(struct device *, struct device *, void *);
 int (*ca_detach)(struct device *, int);
 int (*ca_activate)(struct device *, int);
};
struct cfdriver {
 void **cd_devs;
 char *cd_name;
 enum devclass cd_class;
 int cd_indirect;
 int cd_ndevs;
};
typedef int (*cfprint_t)(void *, const char *);
struct pdevinit {
 void (*pdev_attach)(int);
 int pdev_count;
};
extern struct devicelist alldevs;
extern int autoconf_verbose;
extern volatile int config_pending;
void config_init(void);
void *config_search(cfmatch_t, struct device *, void *);
struct device *config_found_sm(struct device *, void *, cfprint_t,
    cfmatch_t);
struct device *config_rootfound(char *, void *);
void config_scan(cfscan_t, struct device *);
struct device *config_attach(struct device *, void *, void *, cfprint_t);
int config_detach(struct device *, int);
int config_detach_children(struct device *, int);
int config_deactivate(struct device *);
int config_suspend(struct device *, int);
int config_suspend_all(int);
int config_activate_children(struct device *, int);
struct device *config_make_softc(struct device *parent,
    struct cfdata *cf);
void config_defer(struct device *, void (*)(struct device *));
void config_pending_incr(void);
void config_pending_decr(void);
void config_mountroot(struct device *, void (*)(struct device *));
void config_process_deferred_mountroot(void);
struct device *device_mainbus(void);
struct device *device_mpath(void);
struct device *device_lookup(struct cfdriver *, int unit);
void device_ref(struct device *);
void device_unref(struct device *);
struct nam2blk {
 char *name;
 int maj;
};
int findblkmajor(struct device *dv);
char *findblkname(int);
void setroot(struct device *, int, int);
struct device *getdisk(char *str, int len, int defpart, dev_t *devp);
struct device *parsedisk(char *str, int len, int defpart, dev_t *devp);
void device_register(struct device *, void *);
int loadfirmware(const char *name, u_char **bufp, size_t *buflen);
struct buf;
struct disklabel;
struct diskstats {
 char ds_name[16];
 int ds_busy;
 u_int64_t ds_rxfer;
 u_int64_t ds_wxfer;
 u_int64_t ds_seek;
 u_int64_t ds_rbytes;
 u_int64_t ds_wbytes;
 struct timeval ds_attachtime;
 struct timeval ds_timestamp;
 struct timeval ds_time;
};
struct disk {
 struct { struct disk *tqe_next; struct disk **tqe_prev; } dk_link;
 struct rwlock dk_lock;
 struct mutex dk_mtx;
 char *dk_name;
 struct device *dk_device;
 dev_t dk_devno;
 int dk_flags;
 int dk_busy;
 u_int64_t dk_rxfer;
 u_int64_t dk_wxfer;
 u_int64_t dk_seek;
 u_int64_t dk_rbytes;
 u_int64_t dk_wbytes;
 struct timeval dk_attachtime;
 struct timeval dk_timestamp;
 struct timeval dk_time;
 int dk_bopenmask;
 int dk_copenmask;
 int dk_openmask;
 int dk_state;
 int dk_blkshift;
 int dk_byteshift;
 struct disklabel *dk_label;
};
struct disklist_head { struct disk *tqh_first; struct disk **tqh_last; };
extern struct disklist_head disklist;
extern int disk_count;
extern int disk_change;
void disk_init(void);
int disk_construct(struct disk *);
void disk_attach(struct device *, struct disk *);
void disk_detach(struct disk *);
int disk_openpart(struct disk *, int, int, int);
void disk_closepart(struct disk *, int, int);
void disk_gone(int (*)(dev_t, int, int, struct proc *), int);
void disk_busy(struct disk *);
void disk_unbusy(struct disk *, long, daddr_t, int);
int disk_lock(struct disk *);
void disk_lock_nointr(struct disk *);
void disk_unlock(struct disk *);
struct device *disk_lookup(struct cfdriver *, int);
char *disk_readlabel(struct disklabel *, dev_t, char *, size_t);
int disk_map(char *, char *, int, int);
int duid_iszero(u_char *);
const char *duid_format(u_char *);
struct buf;
struct proc;
struct tty;
struct uio;
struct vnode;
struct knote;
struct bdevsw {
 int (*d_open)(dev_t dev, int oflags, int devtype,
         struct proc *p);
 int (*d_close)(dev_t dev, int fflag, int devtype,
         struct proc *p);
 void (*d_strategy)(struct buf *bp);
 int (*d_ioctl)(dev_t dev, u_long cmd, caddr_t data,
         int fflag, struct proc *p);
 int (*d_dump)(dev_t dev, daddr_t blkno, caddr_t va,
        size_t size);
 daddr_t (*d_psize)(dev_t dev);
 u_int d_type;
};
extern struct bdevsw bdevsw[];
struct cdevsw {
 int (*d_open)(dev_t dev, int oflags, int devtype,
         struct proc *p);
 int (*d_close)(dev_t dev, int fflag, int devtype,
         struct proc *);
 int (*d_read)(dev_t dev, struct uio *uio, int ioflag);
 int (*d_write)(dev_t dev, struct uio *uio, int ioflag);
 int (*d_ioctl)(dev_t dev, u_long cmd, caddr_t data,
         int fflag, struct proc *p);
 int (*d_stop)(struct tty *tp, int rw);
 struct tty *
  (*d_tty)(dev_t dev);
 int (*d_poll)(dev_t dev, int events, struct proc *p);
 paddr_t (*d_mmap)(dev_t, off_t, int);
 u_int d_type;
 u_int d_flags;
 int (*d_kqfilter)(dev_t dev, struct knote *kn);
};
extern struct cdevsw cdevsw[];
struct linesw {
 int (*l_open)(dev_t dev, struct tty *tp, struct proc *p);
 int (*l_close)(struct tty *tp, int flags, struct proc *p);
 int (*l_read)(struct tty *tp, struct uio *uio,
         int flag);
 int (*l_write)(struct tty *tp, struct uio *uio,
         int flag);
 int (*l_ioctl)(struct tty *tp, u_long cmd, caddr_t data,
         int flag, struct proc *p);
 int (*l_rint)(int c, struct tty *tp);
 int (*l_start)(struct tty *tp);
 int (*l_modem)(struct tty *tp, int flag);
};
extern struct linesw linesw[];
struct swdevt {
 dev_t sw_dev;
 int sw_flags;
};
extern struct swdevt swdevt[];
extern int chrtoblktbl[];
extern int nchrtoblktbl;
struct bdevsw *bdevsw_lookup(dev_t);
struct cdevsw *cdevsw_lookup(dev_t);
dev_t chrtoblk(dev_t);
dev_t blktochr(dev_t);
int iskmemdev(dev_t);
int iszerodev(dev_t);
dev_t getnulldev(void);
int filedescopen(dev_t, int, int, struct proc *); int filedescclose(dev_t, int, int, struct proc *); int filedescread(dev_t, struct uio *, int); int filedescwrite(dev_t, struct uio *, int); int filedescioctl(dev_t, u_long, caddr_t, int, struct proc *); int filedescstop(struct tty *, int); struct tty *filedesctty(dev_t); int filedescpoll(dev_t, int, struct proc *); paddr_t filedescmmap(dev_t, off_t, int); int filedesckqfilter(dev_t, struct knote *);
int logopen(dev_t, int, int, struct proc *); int logclose(dev_t, int, int, struct proc *); int logread(dev_t, struct uio *, int); int logwrite(dev_t, struct uio *, int); int logioctl(dev_t, u_long, caddr_t, int, struct proc *); int logstop(struct tty *, int); struct tty *logtty(dev_t); int logpoll(dev_t, int, struct proc *); paddr_t logmmap(dev_t, off_t, int); int logkqfilter(dev_t, struct knote *);
int ptsopen(dev_t, int, int, struct proc *); int ptsclose(dev_t, int, int, struct proc *); int ptsread(dev_t, struct uio *, int); int ptswrite(dev_t, struct uio *, int); int ptyioctl(dev_t, u_long, caddr_t, int, struct proc *); int ptsstop(struct tty *, int); struct tty *ptytty(dev_t); int ptspoll(dev_t, int, struct proc *); paddr_t ptsmmap(dev_t, off_t, int); int ptskqfilter(dev_t, struct knote *);
int ptcopen(dev_t, int, int, struct proc *); int ptcclose(dev_t, int, int, struct proc *); int ptcread(dev_t, struct uio *, int); int ptcwrite(dev_t, struct uio *, int); int ptyioctl(dev_t, u_long, caddr_t, int, struct proc *); int ptcstop(struct tty *, int); struct tty *ptytty(dev_t); int ptcpoll(dev_t, int, struct proc *); paddr_t ptcmmap(dev_t, off_t, int); int ptckqfilter(dev_t, struct knote *);
int ptmopen(dev_t, int, int, struct proc *); int ptmclose(dev_t, int, int, struct proc *); int ptmread(dev_t, struct uio *, int); int ptmwrite(dev_t, struct uio *, int); int ptmioctl(dev_t, u_long, caddr_t, int, struct proc *); int ptmstop(struct tty *, int); struct tty *ptmtty(dev_t); int ptmpoll(dev_t, int, struct proc *); paddr_t ptmmmap(dev_t, off_t, int); int ptmkqfilter(dev_t, struct knote *);
int cttyopen(dev_t, int, int, struct proc *); int cttyclose(dev_t, int, int, struct proc *); int cttyread(dev_t, struct uio *, int); int cttywrite(dev_t, struct uio *, int); int cttyioctl(dev_t, u_long, caddr_t, int, struct proc *); int cttystop(struct tty *, int); struct tty *cttytty(dev_t); int cttypoll(dev_t, int, struct proc *); paddr_t cttymmap(dev_t, off_t, int); int cttykqfilter(dev_t, struct knote *);
int audioopen(dev_t, int, int, struct proc *); int audioclose(dev_t, int, int, struct proc *); int audioread(dev_t, struct uio *, int); int audiowrite(dev_t, struct uio *, int); int audioioctl(dev_t, u_long, caddr_t, int, struct proc *); int audiostop(struct tty *, int); struct tty *audiotty(dev_t); int audiopoll(dev_t, int, struct proc *); paddr_t audiommap(dev_t, off_t, int); int audiokqfilter(dev_t, struct knote *);
int drmopen(dev_t, int, int, struct proc *); int drmclose(dev_t, int, int, struct proc *); int drmread(dev_t, struct uio *, int); int drmwrite(dev_t, struct uio *, int); int drmioctl(dev_t, u_long, caddr_t, int, struct proc *); int drmstop(struct tty *, int); struct tty *drmtty(dev_t); int drmpoll(dev_t, int, struct proc *); paddr_t drmmmap(dev_t, off_t, int); int drmkqfilter(dev_t, struct knote *);
int midiopen(dev_t, int, int, struct proc *); int midiclose(dev_t, int, int, struct proc *); int midiread(dev_t, struct uio *, int); int midiwrite(dev_t, struct uio *, int); int midiioctl(dev_t, u_long, caddr_t, int, struct proc *); int midistop(struct tty *, int); struct tty *miditty(dev_t); int midipoll(dev_t, int, struct proc *); paddr_t midimmap(dev_t, off_t, int); int midikqfilter(dev_t, struct knote *);
int radioopen(dev_t, int, int, struct proc *); int radioclose(dev_t, int, int, struct proc *); int radioread(dev_t, struct uio *, int); int radiowrite(dev_t, struct uio *, int); int radioioctl(dev_t, u_long, caddr_t, int, struct proc *); int radiostop(struct tty *, int); struct tty *radiotty(dev_t); int radiopoll(dev_t, int, struct proc *); paddr_t radiommap(dev_t, off_t, int); int radiokqfilter(dev_t, struct knote *);
int videoopen(dev_t, int, int, struct proc *); int videoclose(dev_t, int, int, struct proc *); int videoread(dev_t, struct uio *, int); int videowrite(dev_t, struct uio *, int); int videoioctl(dev_t, u_long, caddr_t, int, struct proc *); int videostop(struct tty *, int); struct tty *videotty(dev_t); int videopoll(dev_t, int, struct proc *); paddr_t videommap(dev_t, off_t, int); int videokqfilter(dev_t, struct knote *);
int cnopen(dev_t, int, int, struct proc *); int cnclose(dev_t, int, int, struct proc *); int cnread(dev_t, struct uio *, int); int cnwrite(dev_t, struct uio *, int); int cnioctl(dev_t, u_long, caddr_t, int, struct proc *); int cnstop(struct tty *, int); struct tty *cntty(dev_t); int cnpoll(dev_t, int, struct proc *); paddr_t cnmmap(dev_t, off_t, int); int cnkqfilter(dev_t, struct knote *);
int swopen(dev_t, int, int, struct proc *); int swclose(dev_t, int, int, struct proc *); void swstrategy(struct buf *); int swioctl(dev_t, u_long, caddr_t, int, struct proc *); int swdump(dev_t, daddr_t, caddr_t, size_t); daddr_t swsize(dev_t);
int vndopen(dev_t, int, int, struct proc *); int vndclose(dev_t, int, int, struct proc *); void vndstrategy(struct buf *); int vndioctl(dev_t, u_long, caddr_t, int, struct proc *); int vnddump(dev_t, daddr_t, caddr_t, size_t); daddr_t vndsize(dev_t);
int vndopen(dev_t, int, int, struct proc *); int vndclose(dev_t, int, int, struct proc *); int vndread(dev_t, struct uio *, int); int vndwrite(dev_t, struct uio *, int); int vndioctl(dev_t, u_long, caddr_t, int, struct proc *); int vndstop(struct tty *, int); struct tty *vndtty(dev_t); int vndpoll(dev_t, int, struct proc *); paddr_t vndmmap(dev_t, off_t, int); int vndkqfilter(dev_t, struct knote *);
int chopen(dev_t, int, int, struct proc *); int chclose(dev_t, int, int, struct proc *); int chread(dev_t, struct uio *, int); int chwrite(dev_t, struct uio *, int); int chioctl(dev_t, u_long, caddr_t, int, struct proc *); int chstop(struct tty *, int); struct tty *chtty(dev_t); int chpoll(dev_t, int, struct proc *); paddr_t chmmap(dev_t, off_t, int); int chkqfilter(dev_t, struct knote *);
int sdopen(dev_t, int, int, struct proc *); int sdclose(dev_t, int, int, struct proc *); void sdstrategy(struct buf *); int sdioctl(dev_t, u_long, caddr_t, int, struct proc *); int sddump(dev_t, daddr_t, caddr_t, size_t); daddr_t sdsize(dev_t);
int sdopen(dev_t, int, int, struct proc *); int sdclose(dev_t, int, int, struct proc *); int sdread(dev_t, struct uio *, int); int sdwrite(dev_t, struct uio *, int); int sdioctl(dev_t, u_long, caddr_t, int, struct proc *); int sdstop(struct tty *, int); struct tty *sdtty(dev_t); int sdpoll(dev_t, int, struct proc *); paddr_t sdmmap(dev_t, off_t, int); int sdkqfilter(dev_t, struct knote *);
int sesopen(dev_t, int, int, struct proc *); int sesclose(dev_t, int, int, struct proc *); int sesread(dev_t, struct uio *, int); int seswrite(dev_t, struct uio *, int); int sesioctl(dev_t, u_long, caddr_t, int, struct proc *); int sesstop(struct tty *, int); struct tty *sestty(dev_t); int sespoll(dev_t, int, struct proc *); paddr_t sesmmap(dev_t, off_t, int); int seskqfilter(dev_t, struct knote *);
int stopen(dev_t, int, int, struct proc *); int stclose(dev_t, int, int, struct proc *); int stread(dev_t, struct uio *, int); int stwrite(dev_t, struct uio *, int); int stioctl(dev_t, u_long, caddr_t, int, struct proc *); int ststop(struct tty *, int); struct tty *sttty(dev_t); int stpoll(dev_t, int, struct proc *); paddr_t stmmap(dev_t, off_t, int); int stkqfilter(dev_t, struct knote *);
int cdopen(dev_t, int, int, struct proc *); int cdclose(dev_t, int, int, struct proc *); void cdstrategy(struct buf *); int cdioctl(dev_t, u_long, caddr_t, int, struct proc *); int cddump(dev_t, daddr_t, caddr_t, size_t); daddr_t cdsize(dev_t);
int cdopen(dev_t, int, int, struct proc *); int cdclose(dev_t, int, int, struct proc *); int cdread(dev_t, struct uio *, int); int cdwrite(dev_t, struct uio *, int); int cdioctl(dev_t, u_long, caddr_t, int, struct proc *); int cdstop(struct tty *, int); struct tty *cdtty(dev_t); int cdpoll(dev_t, int, struct proc *); paddr_t cdmmap(dev_t, off_t, int); int cdkqfilter(dev_t, struct knote *);
int rdopen(dev_t, int, int, struct proc *); int rdclose(dev_t, int, int, struct proc *); void rdstrategy(struct buf *); int rdioctl(dev_t, u_long, caddr_t, int, struct proc *); int rddump(dev_t, daddr_t, caddr_t, size_t); daddr_t rdsize(dev_t);
int rdopen(dev_t, int, int, struct proc *); int rdclose(dev_t, int, int, struct proc *); int rdread(dev_t, struct uio *, int); int rdwrite(dev_t, struct uio *, int); int rdioctl(dev_t, u_long, caddr_t, int, struct proc *); int rdstop(struct tty *, int); struct tty *rdtty(dev_t); int rdpoll(dev_t, int, struct proc *); paddr_t rdmmap(dev_t, off_t, int); int rdkqfilter(dev_t, struct knote *);
int ukopen(dev_t, int, int, struct proc *); int ukclose(dev_t, int, int, struct proc *); void ukstrategy(struct buf *); int ukioctl(dev_t, u_long, caddr_t, int, struct proc *); int ukdump(dev_t, daddr_t, caddr_t, size_t); daddr_t uksize(dev_t);
int ukopen(dev_t, int, int, struct proc *); int ukclose(dev_t, int, int, struct proc *); int ukread(dev_t, struct uio *, int); int ukwrite(dev_t, struct uio *, int); int ukioctl(dev_t, u_long, caddr_t, int, struct proc *); int ukstop(struct tty *, int); struct tty *uktty(dev_t); int ukpoll(dev_t, int, struct proc *); paddr_t ukmmap(dev_t, off_t, int); int ukkqfilter(dev_t, struct knote *);
int diskmapopen(dev_t, int, int, struct proc *); int diskmapclose(dev_t, int, int, struct proc *); int diskmapread(dev_t, struct uio *, int); int diskmapwrite(dev_t, struct uio *, int); int diskmapioctl(dev_t, u_long, caddr_t, int, struct proc *); int diskmapstop(struct tty *, int); struct tty *diskmaptty(dev_t); int diskmappoll(dev_t, int, struct proc *); paddr_t diskmapmmap(dev_t, off_t, int); int diskmapkqfilter(dev_t, struct knote *);
int bpfopen(dev_t, int, int, struct proc *); int bpfclose(dev_t, int, int, struct proc *); int bpfread(dev_t, struct uio *, int); int bpfwrite(dev_t, struct uio *, int); int bpfioctl(dev_t, u_long, caddr_t, int, struct proc *); int bpfstop(struct tty *, int); struct tty *bpftty(dev_t); int bpfpoll(dev_t, int, struct proc *); paddr_t bpfmmap(dev_t, off_t, int); int bpfkqfilter(dev_t, struct knote *);
int pfopen(dev_t, int, int, struct proc *); int pfclose(dev_t, int, int, struct proc *); int pfread(dev_t, struct uio *, int); int pfwrite(dev_t, struct uio *, int); int pfioctl(dev_t, u_long, caddr_t, int, struct proc *); int pfstop(struct tty *, int); struct tty *pftty(dev_t); int pfpoll(dev_t, int, struct proc *); paddr_t pfmmap(dev_t, off_t, int); int pfkqfilter(dev_t, struct knote *);
int tunopen(dev_t, int, int, struct proc *); int tunclose(dev_t, int, int, struct proc *); int tunread(dev_t, struct uio *, int); int tunwrite(dev_t, struct uio *, int); int tunioctl(dev_t, u_long, caddr_t, int, struct proc *); int tunstop(struct tty *, int); struct tty *tuntty(dev_t); int tunpoll(dev_t, int, struct proc *); paddr_t tunmmap(dev_t, off_t, int); int tunkqfilter(dev_t, struct knote *);
int tapopen(dev_t, int, int, struct proc *); int tapclose(dev_t, int, int, struct proc *); int tapread(dev_t, struct uio *, int); int tapwrite(dev_t, struct uio *, int); int tapioctl(dev_t, u_long, caddr_t, int, struct proc *); int tapstop(struct tty *, int); struct tty *taptty(dev_t); int tappoll(dev_t, int, struct proc *); paddr_t tapmmap(dev_t, off_t, int); int tapkqfilter(dev_t, struct knote *);
int switchopen(dev_t, int, int, struct proc *); int switchclose(dev_t, int, int, struct proc *); int switchread(dev_t, struct uio *, int); int switchwrite(dev_t, struct uio *, int); int switchioctl(dev_t, u_long, caddr_t, int, struct proc *); int switchstop(struct tty *, int); struct tty *switchtty(dev_t); int switchpoll(dev_t, int, struct proc *); paddr_t switchmmap(dev_t, off_t, int); int switchkqfilter(dev_t, struct knote *);
int pppxopen(dev_t, int, int, struct proc *); int pppxclose(dev_t, int, int, struct proc *); int pppxread(dev_t, struct uio *, int); int pppxwrite(dev_t, struct uio *, int); int pppxioctl(dev_t, u_long, caddr_t, int, struct proc *); int pppxstop(struct tty *, int); struct tty *pppxtty(dev_t); int pppxpoll(dev_t, int, struct proc *); paddr_t pppxmmap(dev_t, off_t, int); int pppxkqfilter(dev_t, struct knote *);
int randomopen(dev_t, int, int, struct proc *); int randomclose(dev_t, int, int, struct proc *); int randomread(dev_t, struct uio *, int); int randomwrite(dev_t, struct uio *, int); int randomioctl(dev_t, u_long, caddr_t, int, struct proc *); int randomstop(struct tty *, int); struct tty *randomtty(dev_t); int randompoll(dev_t, int, struct proc *); paddr_t randommmap(dev_t, off_t, int); int randomkqfilter(dev_t, struct knote *);
int wsdisplayopen(dev_t, int, int, struct proc *); int wsdisplayclose(dev_t, int, int, struct proc *); int wsdisplayread(dev_t, struct uio *, int); int wsdisplaywrite(dev_t, struct uio *, int); int wsdisplayioctl(dev_t, u_long, caddr_t, int, struct proc *); int wsdisplaystop(struct tty *, int); struct tty *wsdisplaytty(dev_t); int wsdisplaypoll(dev_t, int, struct proc *); paddr_t wsdisplaymmap(dev_t, off_t, int); int wsdisplaykqfilter(dev_t, struct knote *);
int wskbdopen(dev_t, int, int, struct proc *); int wskbdclose(dev_t, int, int, struct proc *); int wskbdread(dev_t, struct uio *, int); int wskbdwrite(dev_t, struct uio *, int); int wskbdioctl(dev_t, u_long, caddr_t, int, struct proc *); int wskbdstop(struct tty *, int); struct tty *wskbdtty(dev_t); int wskbdpoll(dev_t, int, struct proc *); paddr_t wskbdmmap(dev_t, off_t, int); int wskbdkqfilter(dev_t, struct knote *);
int wsmouseopen(dev_t, int, int, struct proc *); int wsmouseclose(dev_t, int, int, struct proc *); int wsmouseread(dev_t, struct uio *, int); int wsmousewrite(dev_t, struct uio *, int); int wsmouseioctl(dev_t, u_long, caddr_t, int, struct proc *); int wsmousestop(struct tty *, int); struct tty *wsmousetty(dev_t); int wsmousepoll(dev_t, int, struct proc *); paddr_t wsmousemmap(dev_t, off_t, int); int wsmousekqfilter(dev_t, struct knote *);
int wsmuxopen(dev_t, int, int, struct proc *); int wsmuxclose(dev_t, int, int, struct proc *); int wsmuxread(dev_t, struct uio *, int); int wsmuxwrite(dev_t, struct uio *, int); int wsmuxioctl(dev_t, u_long, caddr_t, int, struct proc *); int wsmuxstop(struct tty *, int); struct tty *wsmuxtty(dev_t); int wsmuxpoll(dev_t, int, struct proc *); paddr_t wsmuxmmap(dev_t, off_t, int); int wsmuxkqfilter(dev_t, struct knote *);
int ksymsopen(dev_t, int, int, struct proc *); int ksymsclose(dev_t, int, int, struct proc *); int ksymsread(dev_t, struct uio *, int); int ksymswrite(dev_t, struct uio *, int); int ksymsioctl(dev_t, u_long, caddr_t, int, struct proc *); int ksymsstop(struct tty *, int); struct tty *ksymstty(dev_t); int ksymspoll(dev_t, int, struct proc *); paddr_t ksymsmmap(dev_t, off_t, int); int ksymskqfilter(dev_t, struct knote *);
int bioopen(dev_t, int, int, struct proc *); int bioclose(dev_t, int, int, struct proc *); int bioread(dev_t, struct uio *, int); int biowrite(dev_t, struct uio *, int); int bioioctl(dev_t, u_long, caddr_t, int, struct proc *); int biostop(struct tty *, int); struct tty *biotty(dev_t); int biopoll(dev_t, int, struct proc *); paddr_t biommap(dev_t, off_t, int); int biokqfilter(dev_t, struct knote *);
int vscsiopen(dev_t, int, int, struct proc *); int vscsiclose(dev_t, int, int, struct proc *); int vscsiread(dev_t, struct uio *, int); int vscsiwrite(dev_t, struct uio *, int); int vscsiioctl(dev_t, u_long, caddr_t, int, struct proc *); int vscsistop(struct tty *, int); struct tty *vscsitty(dev_t); int vscsipoll(dev_t, int, struct proc *); paddr_t vscsimmap(dev_t, off_t, int); int vscsikqfilter(dev_t, struct knote *);
int gpropen(dev_t, int, int, struct proc *); int gprclose(dev_t, int, int, struct proc *); int gprread(dev_t, struct uio *, int); int gprwrite(dev_t, struct uio *, int); int gprioctl(dev_t, u_long, caddr_t, int, struct proc *); int gprstop(struct tty *, int); struct tty *gprtty(dev_t); int gprpoll(dev_t, int, struct proc *); paddr_t gprmmap(dev_t, off_t, int); int gprkqfilter(dev_t, struct knote *);
int bktropen(dev_t, int, int, struct proc *); int bktrclose(dev_t, int, int, struct proc *); int bktrread(dev_t, struct uio *, int); int bktrwrite(dev_t, struct uio *, int); int bktrioctl(dev_t, u_long, caddr_t, int, struct proc *); int bktrstop(struct tty *, int); struct tty *bktrtty(dev_t); int bktrpoll(dev_t, int, struct proc *); paddr_t bktrmmap(dev_t, off_t, int); int bktrkqfilter(dev_t, struct knote *);
int usbopen(dev_t, int, int, struct proc *); int usbclose(dev_t, int, int, struct proc *); int usbread(dev_t, struct uio *, int); int usbwrite(dev_t, struct uio *, int); int usbioctl(dev_t, u_long, caddr_t, int, struct proc *); int usbstop(struct tty *, int); struct tty *usbtty(dev_t); int usbpoll(dev_t, int, struct proc *); paddr_t usbmmap(dev_t, off_t, int); int usbkqfilter(dev_t, struct knote *);
int ugenopen(dev_t, int, int, struct proc *); int ugenclose(dev_t, int, int, struct proc *); int ugenread(dev_t, struct uio *, int); int ugenwrite(dev_t, struct uio *, int); int ugenioctl(dev_t, u_long, caddr_t, int, struct proc *); int ugenstop(struct tty *, int); struct tty *ugentty(dev_t); int ugenpoll(dev_t, int, struct proc *); paddr_t ugenmmap(dev_t, off_t, int); int ugenkqfilter(dev_t, struct knote *);
int uhidopen(dev_t, int, int, struct proc *); int uhidclose(dev_t, int, int, struct proc *); int uhidread(dev_t, struct uio *, int); int uhidwrite(dev_t, struct uio *, int); int uhidioctl(dev_t, u_long, caddr_t, int, struct proc *); int uhidstop(struct tty *, int); struct tty *uhidtty(dev_t); int uhidpoll(dev_t, int, struct proc *); paddr_t uhidmmap(dev_t, off_t, int); int uhidkqfilter(dev_t, struct knote *);
int ucomopen(dev_t, int, int, struct proc *); int ucomclose(dev_t, int, int, struct proc *); int ucomread(dev_t, struct uio *, int); int ucomwrite(dev_t, struct uio *, int); int ucomioctl(dev_t, u_long, caddr_t, int, struct proc *); int ucomstop(struct tty *, int); struct tty *ucomtty(dev_t); int ucompoll(dev_t, int, struct proc *); paddr_t ucommmap(dev_t, off_t, int); int ucomkqfilter(dev_t, struct knote *);
int ulptopen(dev_t, int, int, struct proc *); int ulptclose(dev_t, int, int, struct proc *); int ulptread(dev_t, struct uio *, int); int ulptwrite(dev_t, struct uio *, int); int ulptioctl(dev_t, u_long, caddr_t, int, struct proc *); int ulptstop(struct tty *, int); struct tty *ulpttty(dev_t); int ulptpoll(dev_t, int, struct proc *); paddr_t ulptmmap(dev_t, off_t, int); int ulptkqfilter(dev_t, struct knote *);
int urioopen(dev_t, int, int, struct proc *); int urioclose(dev_t, int, int, struct proc *); int urioread(dev_t, struct uio *, int); int uriowrite(dev_t, struct uio *, int); int urioioctl(dev_t, u_long, caddr_t, int, struct proc *); int uriostop(struct tty *, int); struct tty *uriotty(dev_t); int uriopoll(dev_t, int, struct proc *); paddr_t uriommap(dev_t, off_t, int); int uriokqfilter(dev_t, struct knote *);
int hotplugopen(dev_t, int, int, struct proc *); int hotplugclose(dev_t, int, int, struct proc *); int hotplugread(dev_t, struct uio *, int); int hotplugwrite(dev_t, struct uio *, int); int hotplugioctl(dev_t, u_long, caddr_t, int, struct proc *); int hotplugstop(struct tty *, int); struct tty *hotplugtty(dev_t); int hotplugpoll(dev_t, int, struct proc *); paddr_t hotplugmmap(dev_t, off_t, int); int hotplugkqfilter(dev_t, struct knote *);
int gpioopen(dev_t, int, int, struct proc *); int gpioclose(dev_t, int, int, struct proc *); int gpioread(dev_t, struct uio *, int); int gpiowrite(dev_t, struct uio *, int); int gpioioctl(dev_t, u_long, caddr_t, int, struct proc *); int gpiostop(struct tty *, int); struct tty *gpiotty(dev_t); int gpiopoll(dev_t, int, struct proc *); paddr_t gpiommap(dev_t, off_t, int); int gpiokqfilter(dev_t, struct knote *);
int amdmsropen(dev_t, int, int, struct proc *); int amdmsrclose(dev_t, int, int, struct proc *); int amdmsrread(dev_t, struct uio *, int); int amdmsrwrite(dev_t, struct uio *, int); int amdmsrioctl(dev_t, u_long, caddr_t, int, struct proc *); int amdmsrstop(struct tty *, int); struct tty *amdmsrtty(dev_t); int amdmsrpoll(dev_t, int, struct proc *); paddr_t amdmsrmmap(dev_t, off_t, int); int amdmsrkqfilter(dev_t, struct knote *);
int fuseopen(dev_t, int, int, struct proc *); int fuseclose(dev_t, int, int, struct proc *); int fuseread(dev_t, struct uio *, int); int fusewrite(dev_t, struct uio *, int); int fuseioctl(dev_t, u_long, caddr_t, int, struct proc *); int fusestop(struct tty *, int); struct tty *fusetty(dev_t); int fusepoll(dev_t, int, struct proc *); paddr_t fusemmap(dev_t, off_t, int); int fusekqfilter(dev_t, struct knote *);
int pvbusopen(dev_t, int, int, struct proc *); int pvbusclose(dev_t, int, int, struct proc *); int pvbusread(dev_t, struct uio *, int); int pvbuswrite(dev_t, struct uio *, int); int pvbusioctl(dev_t, u_long, caddr_t, int, struct proc *); int pvbusstop(struct tty *, int); struct tty *pvbustty(dev_t); int pvbuspoll(dev_t, int, struct proc *); paddr_t pvbusmmap(dev_t, off_t, int); int pvbuskqfilter(dev_t, struct knote *);
int ipmiopen(dev_t, int, int, struct proc *); int ipmiclose(dev_t, int, int, struct proc *); int ipmiread(dev_t, struct uio *, int); int ipmiwrite(dev_t, struct uio *, int); int ipmiioctl(dev_t, u_long, caddr_t, int, struct proc *); int ipmistop(struct tty *, int); struct tty *ipmitty(dev_t); int ipmipoll(dev_t, int, struct proc *); paddr_t ipmimmap(dev_t, off_t, int); int ipmikqfilter(dev_t, struct knote *);

__attribute__((__noreturn__)) void reboot(int);
__attribute__((__noreturn__)) void boot(int);

typedef __socklen_t socklen_t;
typedef __sa_family_t sa_family_t;
struct linger {
 int l_onoff;
 int l_linger;
};
struct splice {
 int sp_fd;
 off_t sp_max;
 struct timeval sp_idle;
};
struct sockaddr {
 __uint8_t sa_len;
 sa_family_t sa_family;
 char sa_data[14];
};
struct sockaddr_storage {
 __uint8_t ss_len;
 sa_family_t ss_family;
 unsigned char __ss_pad1[6];
 __uint64_t __ss_pad2;
 unsigned char __ss_pad3[240];
};
struct sockproto {
 unsigned short sp_family;
 unsigned short sp_protocol;
};
struct sockpeercred {
 uid_t uid;
 gid_t gid;
 pid_t pid;
};
struct msghdr {
 void *msg_name;
 socklen_t msg_namelen;
 struct iovec *msg_iov;
 unsigned int msg_iovlen;
 void *msg_control;
 socklen_t msg_controllen;
 int msg_flags;
};
struct cmsghdr {
 socklen_t cmsg_len;
 int cmsg_level;
 int cmsg_type;
};
void pfctlinput(int, struct sockaddr *);
static inline struct sockaddr *
sstosa(struct sockaddr_storage *ss)
{
 return ((struct sockaddr *)(ss));
}
struct kmemstats {
 long ks_inuse;
 long ks_calls;
 long ks_memuse;
 u_short ks_limblocks;
 u_short ks_mapblocks;
 long ks_maxused;
 long ks_limit;
 long ks_size;
 long ks_spare;
};
struct kmemusage {
 short ku_indx;
 union {
  u_short freecnt;
  u_short pagecnt;
 } ku_un;
};
struct kmem_freelist;
struct kmembuckets {
 struct { struct kmem_freelist *sqx_first; struct kmem_freelist **sqx_last; unsigned long sqx_cookie; } kb_freelist;
 u_int64_t kb_calls;
 u_int64_t kb_total;
 u_int64_t kb_totalfree;
 u_int64_t kb_elmpercl;
 u_int64_t kb_highwat;
 u_int64_t kb_couldfree;
};
extern struct kmemstats kmemstats[];
extern struct kmemusage *kmemusage;
extern char *kmembase;
extern struct kmembuckets bucket[];
void *malloc(size_t, int, int);
void *mallocarray(size_t, size_t, int, int);
void free(void *, int, size_t);
int sysctl_malloc(int *, u_int, void *, size_t *, void *, size_t,
     struct proc *);
size_t malloc_roundup(size_t);
void malloc_printit(int (*)(const char *, ...));
void poison_mem(void *, size_t);
int poison_check(void *, size_t, size_t *, uint32_t *);
uint32_t poison_value(void *);
struct msgbuf {
 long msg_magic;
 long msg_bufx;
 long msg_bufr;
 long msg_bufs;
 long msg_bufl;
 long msg_bufd;
 char msg_bufc[1];
};
extern struct msgbuf *msgbufp;
extern struct msgbuf *consbufp;
void initmsgbuf(caddr_t buf, size_t bufsize);
void initconsbuf(void);
void msgbuf_putchar(struct msgbuf *, const char c);
struct if_nameindex {
 unsigned int if_index;
 char *if_name;
};
struct if_clonereq {
 int ifcr_total;
 int ifcr_count;
 char *ifcr_buffer;
};
struct if_rxring {
 int rxr_adjusted;
 u_int rxr_alive;
 u_int rxr_cwm;
 u_int rxr_lwm;
 u_int rxr_hwm;
};
struct if_rxring_info {
 char ifr_name[16];
 u_int ifr_size;
 struct if_rxring ifr_info;
};
struct if_rxrinfo {
 u_int ifri_total;
 struct if_rxring_info *ifri_entries;
};
struct if_data {
 u_char ifi_type;
 u_char ifi_addrlen;
 u_char ifi_hdrlen;
 u_char ifi_link_state;
 u_int32_t ifi_mtu;
 u_int32_t ifi_metric;
 u_int32_t ifi_rdomain;
 u_int64_t ifi_baudrate;
 u_int64_t ifi_ipackets;
 u_int64_t ifi_ierrors;
 u_int64_t ifi_opackets;
 u_int64_t ifi_oerrors;
 u_int64_t ifi_collisions;
 u_int64_t ifi_ibytes;
 u_int64_t ifi_obytes;
 u_int64_t ifi_imcasts;
 u_int64_t ifi_omcasts;
 u_int64_t ifi_iqdrops;
 u_int64_t ifi_oqdrops;
 u_int64_t ifi_noproto;
 u_int32_t ifi_capabilities;
 struct timeval ifi_lastchange;
};
struct if_status_description {
 u_char ifs_type;
 u_char ifs_state;
 const char *ifs_string;
};
struct if_msghdr {
 u_short ifm_msglen;
 u_char ifm_version;
 u_char ifm_type;
 u_short ifm_hdrlen;
 u_short ifm_index;
 u_short ifm_tableid;
 u_char ifm_pad1;
 u_char ifm_pad2;
 int ifm_addrs;
 int ifm_flags;
 int ifm_xflags;
 struct if_data ifm_data;
};
struct ifa_msghdr {
 u_short ifam_msglen;
 u_char ifam_version;
 u_char ifam_type;
 u_short ifam_hdrlen;
 u_short ifam_index;
 u_short ifam_tableid;
 u_char ifam_pad1;
 u_char ifam_pad2;
 int ifam_addrs;
 int ifam_flags;
 int ifam_metric;
};
struct if_announcemsghdr {
 u_short ifan_msglen;
 u_char ifan_version;
 u_char ifan_type;
 u_short ifan_hdrlen;
 u_short ifan_index;
 u_short ifan_what;
 char ifan_name[16];
};
struct if_nameindex_msg {
 unsigned int if_index;
 char if_name[16];
};
struct ifg_req {
 union {
  char ifgrqu_group[16];
  char ifgrqu_member[16];
 } ifgrq_ifgrqu;
};
struct ifg_attrib {
 int ifg_carp_demoted;
};
struct ifgroupreq {
 char ifgr_name[16];
 u_int ifgr_len;
 union {
  char ifgru_group[16];
  struct ifg_req *ifgru_groups;
  struct ifg_attrib ifgru_attrib;
 } ifgr_ifgru;
};
struct ifreq {
 char ifr_name[16];
 union {
  struct sockaddr ifru_addr;
  struct sockaddr ifru_dstaddr;
  struct sockaddr ifru_broadaddr;
  short ifru_flags;
  int ifru_metric;
  int64_t ifru_vnetid;
  uint64_t ifru_media;
  caddr_t ifru_data;
  unsigned int ifru_index;
 } ifr_ifru;
};
struct ifaliasreq {
 char ifra_name[16];
 union {
  struct sockaddr ifrau_addr;
  int ifrau_align;
  } ifra_ifrau;
 struct sockaddr ifra_dstaddr;
 struct sockaddr ifra_mask;
};
struct ifmediareq {
 char ifm_name[16];
 uint64_t ifm_current;
 uint64_t ifm_mask;
 uint64_t ifm_status;
 uint64_t ifm_active;
 int ifm_count;
 uint64_t *ifm_ulist;
};
struct ifkalivereq {
 char ikar_name[16];
 int ikar_timeo;
 int ikar_cnt;
};
struct ifconf {
 int ifc_len;
 union {
  caddr_t ifcu_buf;
  struct ifreq *ifcu_req;
 } ifc_ifcu;
};
struct if_laddrreq {
 char iflr_name[16];
 unsigned int flags;
 unsigned int prefixlen;
 struct sockaddr_storage addr;
 struct sockaddr_storage dstaddr;
};
struct if_afreq {
 char ifar_name[16];
 sa_family_t ifar_af;
};
struct if_parent {
 char ifp_name[16];
 char ifp_parent[16];
};
struct arphdr {
 u_int16_t ar_hrd;
 u_int16_t ar_pro;
 u_int8_t ar_hln;
 u_int8_t ar_pln;
 u_int16_t ar_op;
};
struct arpreq {
 struct sockaddr arp_pa;
 struct sockaddr arp_ha;
 int arp_flags;
};
struct socket;
struct ifnet;
struct ifq_ops;
void if_alloc_sadl(struct ifnet *);
void if_free_sadl(struct ifnet *);
void if_attach(struct ifnet *);
void if_attach_queues(struct ifnet *, unsigned int);
void if_attach_iqueues(struct ifnet *, unsigned int);
void if_attach_ifq(struct ifnet *, const struct ifq_ops *, void *);
void if_attachtail(struct ifnet *);
void if_attachhead(struct ifnet *);
void if_deactivate(struct ifnet *);
void if_detach(struct ifnet *);
void if_down(struct ifnet *);
void if_downall(void);
void if_link_state_change(struct ifnet *);
void if_up(struct ifnet *);
void if_getdata(struct ifnet *, struct if_data *);
void ifinit(void);
int ifioctl(struct socket *, u_long, caddr_t, struct proc *);
int ifpromisc(struct ifnet *, int);
struct ifg_group *if_creategroup(const char *);
int if_addgroup(struct ifnet *, const char *);
int if_delgroup(struct ifnet *, const char *);
void if_group_routechange(struct sockaddr *, struct sockaddr *);
struct ifnet *ifunit(const char *);
struct ifnet *if_get(unsigned int);
void if_put(struct ifnet *);
void ifnewlladdr(struct ifnet *);
void if_congestion(void);
int if_congested(void);
__attribute__((__noreturn__)) void unhandled_af(int);
int if_setlladdr(struct ifnet *, const uint8_t *);
struct taskq * net_tq(unsigned int);
struct consdev {
 void (*cn_probe)(struct consdev *);
 void (*cn_init)(struct consdev *);
 int (*cn_getc)(dev_t);
 void (*cn_putc)(dev_t, int);
 void (*cn_pollc)(dev_t, int);
 void (*cn_bell)(dev_t, u_int, u_int, u_int);
 dev_t cn_dev;
 u_int cn_pri;
};
extern struct consdev constab[];
extern struct consdev *cn_tab;
extern struct tty *constty;
extern struct vnode *cn_devvp;
struct knote;
void cninit(void);
int cnopen(dev_t, int, int, struct proc *);
int cnclose(dev_t, int, int, struct proc *);
int cnread(dev_t, struct uio *, int);
int cnwrite(dev_t, struct uio *, int);
int cnioctl(dev_t, u_long, caddr_t, int, struct proc *);
int cnpoll(dev_t, int, struct proc *);
int cnkqfilter(dev_t, struct knote *);
int cngetc(void);
void cnputc(int);
void cnpollc(int);
void cnbell(u_int, u_int, u_int);
void cnrint(void);
void nullcnpollc(dev_t, int);
struct todr_chip_handle {
 void *cookie;
 void *bus_cookie;
 int (*todr_gettime)(struct todr_chip_handle *, struct timeval *);
 int (*todr_settime)(struct todr_chip_handle *, struct timeval *);
 int (*todr_getcal)(struct todr_chip_handle *, int *);
 int (*todr_setcal)(struct todr_chip_handle *, int);
 int (*todr_setwen)(struct todr_chip_handle *, int);
};
typedef struct todr_chip_handle *todr_chip_handle_t;
typedef int vm_fault_t;
typedef int vm_inherit_t;
typedef off_t voff_t;
union vm_map_object;
typedef union vm_map_object vm_map_object_t;
struct vm_map_entry;
typedef struct vm_map_entry *vm_map_entry_t;
struct vm_map;
typedef struct vm_map *vm_map_t;
struct vm_page;
typedef struct vm_page *vm_page_t;
typedef int vm_prot_t;
struct buf;
struct mount;
struct pglist;
struct vmspace;
struct pmap;
struct vm_map;
vaddr_t dvma_mapin(struct vm_map *, vaddr_t, int, int);
void dvma_mapout(vaddr_t, vaddr_t, int);
typedef int boolean_t;
struct proc;
struct pmap_statistics {
 long resident_count;
 long wired_count;
};
typedef struct pmap_statistics *pmap_statistics_t;
struct sun4u_tte {
 int64_t tag;
 int64_t data;
};
typedef struct sun4u_tte pte_t;
extern void sp_tlb_flush_pte(vaddr_t addr, int ctx);
extern void sp_tlb_flush_ctx(int ctx);
void smp_tlb_flush_pte(vaddr_t, int);
void smp_tlb_flush_ctx(int);
struct page_size_map {
 u_int64_t mask;
 u_int64_t code;
};
extern struct page_size_map page_size_map[];
struct pmap {
 struct mutex pm_mtx;
 int pm_ctx;
 int pm_refs;
 paddr_t pm_physaddr;
 int64_t *pm_segs;
 struct pmap_statistics pm_stats;
};
struct prom_map {
 u_int64_t vstart;
 u_int64_t vsize;
 u_int64_t tte;
};
typedef struct pmap *pmap_t;
extern struct pmap kernel_pmap_;
void pmap_bootstrap(u_long, u_long, u_int, u_int);
void pmap_redzone(void);
int pmap_dumpsize(void);
int pmap_dumpmmu(int (*)(dev_t, daddr_t, caddr_t, size_t), daddr_t);
int pmap_pa_exists(paddr_t);
struct proc;
void switchexit(struct proc *);
int ctx_alloc(struct pmap*);
void ctx_free(struct pmap*);
typedef struct pv_entry {
 struct pv_entry *pv_next;
 struct pmap *pv_pmap;
 vaddr_t pv_va;
} *pv_entry_t;
struct vm_page_md {
 struct mutex pvmtx;
 struct pv_entry pvent;
};

void pmap_activate(struct proc *);
void pmap_deactivate(struct proc *);
void pmap_unwire(pmap_t, vaddr_t);
boolean_t pmap_clear_modify(struct vm_page *);
boolean_t pmap_clear_reference(struct vm_page *);
void pmap_collect(pmap_t);
void pmap_copy(pmap_t, pmap_t, vaddr_t, vsize_t, vaddr_t);
void pmap_copy_page(struct vm_page *, struct vm_page *);
struct pmap *pmap_create(void);
void pmap_destroy(pmap_t);
int pmap_enter(pmap_t,
      vaddr_t, paddr_t, vm_prot_t, int);
boolean_t pmap_extract(pmap_t, vaddr_t, paddr_t *);
vaddr_t pmap_growkernel(vaddr_t);
void pmap_init(void);
void pmap_kenter_pa(vaddr_t, paddr_t, vm_prot_t);
void pmap_kremove(vaddr_t, vsize_t);
boolean_t pmap_is_modified(struct vm_page *);
boolean_t pmap_is_referenced(struct vm_page *);
void pmap_page_protect(struct vm_page *, vm_prot_t);
void pmap_protect(pmap_t, vaddr_t, vaddr_t, vm_prot_t);
void pmap_reference(pmap_t);
void pmap_remove(pmap_t, vaddr_t, vaddr_t);
void pmap_remove_holes(struct vmspace *);
void pmap_zero_page(struct vm_page *);
void pmap_virtual_space(vaddr_t *, vaddr_t *);

struct uvm_object {
 struct uvm_pagerops *pgops;
 struct uvm_objtree { struct rb_tree rbh_root; } memt;
 int uo_npages;
 int uo_refs;
};
extern struct uvm_pagerops uvm_vnodeops;
extern struct uvm_pagerops uvm_deviceops;
int uvm_pagecmp(const struct vm_page *, const struct vm_page *);
extern const struct rb_type *const uvm_objtree_RBT_TYPE; __attribute__((__unused__)) static inline void uvm_objtree_RBT_INIT(struct uvm_objtree *head) { _rb_init(&head->rbh_root); } __attribute__((__unused__)) static inline struct vm_page * uvm_objtree_RBT_INSERT(struct uvm_objtree *head, struct vm_page *elm) { return _rb_insert(uvm_objtree_RBT_TYPE, &head->rbh_root, elm); } __attribute__((__unused__)) static inline struct vm_page * uvm_objtree_RBT_REMOVE(struct uvm_objtree *head, struct vm_page *elm) { return _rb_remove(uvm_objtree_RBT_TYPE, &head->rbh_root, elm); } __attribute__((__unused__)) static inline struct vm_page * uvm_objtree_RBT_FIND(struct uvm_objtree *head, const struct vm_page *key) { return _rb_find(uvm_objtree_RBT_TYPE, &head->rbh_root, key); } __attribute__((__unused__)) static inline struct vm_page * uvm_objtree_RBT_NFIND(struct uvm_objtree *head, const struct vm_page *key) { return _rb_nfind(uvm_objtree_RBT_TYPE, &head->rbh_root, key); } __attribute__((__unused__)) static inline struct vm_page * uvm_objtree_RBT_ROOT(struct uvm_objtree *head) { return _rb_root(uvm_objtree_RBT_TYPE, &head->rbh_root); } __attribute__((__unused__)) static inline int uvm_objtree_RBT_EMPTY(struct uvm_objtree *head) { return _rb_empty(&head->rbh_root); } __attribute__((__unused__)) static inline struct vm_page * uvm_objtree_RBT_MIN(struct uvm_objtree *head) { return _rb_min(uvm_objtree_RBT_TYPE, &head->rbh_root); } __attribute__((__unused__)) static inline struct vm_page * uvm_objtree_RBT_MAX(struct uvm_objtree *head) { return _rb_max(uvm_objtree_RBT_TYPE, &head->rbh_root); } __attribute__((__unused__)) static inline struct vm_page * uvm_objtree_RBT_NEXT(struct vm_page *elm) { return _rb_next(uvm_objtree_RBT_TYPE, elm); } __attribute__((__unused__)) static inline struct vm_page * uvm_objtree_RBT_PREV(struct vm_page *elm) { return _rb_prev(uvm_objtree_RBT_TYPE, elm); } __attribute__((__unused__)) static inline struct vm_page * uvm_objtree_RBT_LEFT(struct vm_page *elm) { return _rb_left(uvm_objtree_RBT_TYPE, elm); } __attribute__((__unused__)) static inline struct vm_page * uvm_objtree_RBT_RIGHT(struct vm_page *elm) { return _rb_right(uvm_objtree_RBT_TYPE, elm); } __attribute__((__unused__)) static inline struct vm_page * uvm_objtree_RBT_PARENT(struct vm_page *elm) { return _rb_parent(uvm_objtree_RBT_TYPE, elm); } __attribute__((__unused__)) static inline void uvm_objtree_RBT_SET_LEFT(struct vm_page *elm, struct vm_page *left) { return _rb_set_left(uvm_objtree_RBT_TYPE, elm, left); } __attribute__((__unused__)) static inline void uvm_objtree_RBT_SET_RIGHT(struct vm_page *elm, struct vm_page *right) { return _rb_set_right(uvm_objtree_RBT_TYPE, elm, right); } __attribute__((__unused__)) static inline void uvm_objtree_RBT_SET_PARENT(struct vm_page *elm, struct vm_page *parent) { return _rb_set_parent(uvm_objtree_RBT_TYPE, elm, parent); } __attribute__((__unused__)) static inline void uvm_objtree_RBT_POISON(struct vm_page *elm, unsigned long poison) { return _rb_poison(uvm_objtree_RBT_TYPE, elm, poison); } __attribute__((__unused__)) static inline int uvm_objtree_RBT_CHECK(struct vm_page *elm, unsigned long poison) { return _rb_check(uvm_objtree_RBT_TYPE, elm, poison); }
void uvm_objinit(struct uvm_object *, struct uvm_pagerops *, int);
int uvm_objwire(struct uvm_object *, voff_t, voff_t, struct pglist *);
void uvm_objunwire(struct uvm_object *, voff_t, voff_t);
struct pglist { struct vm_page *tqh_first; struct vm_page **tqh_last; };
struct vm_page {
 struct { struct vm_page *tqe_next; struct vm_page **tqe_prev; } pageq;
 struct rb_entry objt;
 struct vm_anon *uanon;
 struct uvm_object *uobject;
 voff_t offset;
 u_int pg_flags;
 u_int pg_version;
 u_int wire_count;
 paddr_t phys_addr;
 psize_t fpgsz;
 struct vm_page_md mdpage;
};
struct vm_physseg {
 paddr_t start;
 paddr_t end;
 paddr_t avail_start;
 paddr_t avail_end;
 struct vm_page *pgs;
 struct vm_page *lastpg;
};
extern boolean_t vm_page_zero_enable;
extern struct vm_physseg vm_physmem[32];
extern int vm_nphysseg;
void uvm_page_init(vaddr_t *, vaddr_t *);
boolean_t uvm_page_physget(paddr_t *);
void uvm_pageactivate(struct vm_page *);
vaddr_t uvm_pageboot_alloc(vsize_t);
void uvm_pagecopy(struct vm_page *, struct vm_page *);
void uvm_pagedeactivate(struct vm_page *);
void uvm_pagefree(struct vm_page *);
void uvm_page_unbusy(struct vm_page **, int);
struct vm_page *uvm_pagelookup(struct uvm_object *, voff_t);
void uvm_pageunwire(struct vm_page *);
void uvm_pagewait(struct vm_page *, int);
void uvm_pagewake(struct vm_page *);
void uvm_pagewire(struct vm_page *);
void uvm_pagezero(struct vm_page *);
void uvm_pagealloc_pg(struct vm_page *, struct uvm_object *,
      voff_t, struct vm_anon *);
struct uvm_constraint_range;
psize_t uvm_pagecount(struct uvm_constraint_range*);
struct vm_page *PHYS_TO_VM_PAGE(paddr_t);
int vm_physseg_find(paddr_t, int *);
void uvm_map_clip_end(struct vm_map*, struct vm_map_entry*,
       vaddr_t);
void uvm_map_clip_start(struct vm_map*,
       struct vm_map_entry*, vaddr_t);
struct vm_anon {
 struct vm_page *an_page;
 int an_ref;
 int an_swslot;
};
struct vm_aref {
 int ar_pageoff;
 struct vm_amap *ar_amap;
};
struct vm_anon *uvm_analloc(void);
void uvm_anfree(struct vm_anon *);
void uvm_anwait(void);
void uvm_anon_init(void);
void uvm_anon_dropswap(struct vm_anon *);
boolean_t uvm_anon_pagein(struct vm_anon *);
union vm_map_object {
 struct uvm_object *uvm_obj;
 struct vm_map *sub_map;
};
struct vm_map_entry {
 union {
  struct rb_entry addr_entry;
  struct { struct vm_map_entry *sle_next; } addr_kentry;
 } daddrs;
 union {
  struct rb_entry rbtree;
  struct { struct vm_map_entry *tqe_next; struct vm_map_entry **tqe_prev; } tailq;
  struct { struct vm_map_entry *tqe_next; struct vm_map_entry **tqe_prev; } deadq;
 } dfree;
 vaddr_t start;
 vaddr_t end;
 vsize_t guard;
 vsize_t fspace;
 union vm_map_object object;
 voff_t offset;
 struct vm_aref aref;
 int etype;
 vm_prot_t protection;
 vm_prot_t max_protection;
 vm_inherit_t inheritance;
 int wired_count;
 int advice;
 u_int8_t flags;
 vsize_t fspace_augment;
};
struct uvm_map_deadq { struct vm_map_entry *tqh_first; struct vm_map_entry **tqh_last; };
struct uvm_map_addr { struct rb_tree rbh_root; };
extern const struct rb_type *const uvm_map_addr_RBT_TYPE; __attribute__((__unused__)) static inline void uvm_map_addr_RBT_INIT(struct uvm_map_addr *head) { _rb_init(&head->rbh_root); } __attribute__((__unused__)) static inline struct vm_map_entry * uvm_map_addr_RBT_INSERT(struct uvm_map_addr *head, struct vm_map_entry *elm) { return _rb_insert(uvm_map_addr_RBT_TYPE, &head->rbh_root, elm); } __attribute__((__unused__)) static inline struct vm_map_entry * uvm_map_addr_RBT_REMOVE(struct uvm_map_addr *head, struct vm_map_entry *elm) { return _rb_remove(uvm_map_addr_RBT_TYPE, &head->rbh_root, elm); } __attribute__((__unused__)) static inline struct vm_map_entry * uvm_map_addr_RBT_FIND(struct uvm_map_addr *head, const struct vm_map_entry *key) { return _rb_find(uvm_map_addr_RBT_TYPE, &head->rbh_root, key); } __attribute__((__unused__)) static inline struct vm_map_entry * uvm_map_addr_RBT_NFIND(struct uvm_map_addr *head, const struct vm_map_entry *key) { return _rb_nfind(uvm_map_addr_RBT_TYPE, &head->rbh_root, key); } __attribute__((__unused__)) static inline struct vm_map_entry * uvm_map_addr_RBT_ROOT(struct uvm_map_addr *head) { return _rb_root(uvm_map_addr_RBT_TYPE, &head->rbh_root); } __attribute__((__unused__)) static inline int uvm_map_addr_RBT_EMPTY(struct uvm_map_addr *head) { return _rb_empty(&head->rbh_root); } __attribute__((__unused__)) static inline struct vm_map_entry * uvm_map_addr_RBT_MIN(struct uvm_map_addr *head) { return _rb_min(uvm_map_addr_RBT_TYPE, &head->rbh_root); } __attribute__((__unused__)) static inline struct vm_map_entry * uvm_map_addr_RBT_MAX(struct uvm_map_addr *head) { return _rb_max(uvm_map_addr_RBT_TYPE, &head->rbh_root); } __attribute__((__unused__)) static inline struct vm_map_entry * uvm_map_addr_RBT_NEXT(struct vm_map_entry *elm) { return _rb_next(uvm_map_addr_RBT_TYPE, elm); } __attribute__((__unused__)) static inline struct vm_map_entry * uvm_map_addr_RBT_PREV(struct vm_map_entry *elm) { return _rb_prev(uvm_map_addr_RBT_TYPE, elm); } __attribute__((__unused__)) static inline struct vm_map_entry * uvm_map_addr_RBT_LEFT(struct vm_map_entry *elm) { return _rb_left(uvm_map_addr_RBT_TYPE, elm); } __attribute__((__unused__)) static inline struct vm_map_entry * uvm_map_addr_RBT_RIGHT(struct vm_map_entry *elm) { return _rb_right(uvm_map_addr_RBT_TYPE, elm); } __attribute__((__unused__)) static inline struct vm_map_entry * uvm_map_addr_RBT_PARENT(struct vm_map_entry *elm) { return _rb_parent(uvm_map_addr_RBT_TYPE, elm); } __attribute__((__unused__)) static inline void uvm_map_addr_RBT_SET_LEFT(struct vm_map_entry *elm, struct vm_map_entry *left) { return _rb_set_left(uvm_map_addr_RBT_TYPE, elm, left); } __attribute__((__unused__)) static inline void uvm_map_addr_RBT_SET_RIGHT(struct vm_map_entry *elm, struct vm_map_entry *right) { return _rb_set_right(uvm_map_addr_RBT_TYPE, elm, right); } __attribute__((__unused__)) static inline void uvm_map_addr_RBT_SET_PARENT(struct vm_map_entry *elm, struct vm_map_entry *parent) { return _rb_set_parent(uvm_map_addr_RBT_TYPE, elm, parent); } __attribute__((__unused__)) static inline void uvm_map_addr_RBT_POISON(struct vm_map_entry *elm, unsigned long poison) { return _rb_poison(uvm_map_addr_RBT_TYPE, elm, poison); } __attribute__((__unused__)) static inline int uvm_map_addr_RBT_CHECK(struct vm_map_entry *elm, unsigned long poison) { return _rb_check(uvm_map_addr_RBT_TYPE, elm, poison); };
struct vm_map {
 struct pmap * pmap;
 struct rwlock lock;
 struct mutex mtx;
 struct uvm_map_addr addr;
 vsize_t size;
 int ref_count;
 int flags;
 struct mutex flags_lock;
 unsigned int timestamp;
 vaddr_t min_offset;
 vaddr_t max_offset;
 vaddr_t b_start;
 vaddr_t b_end;
 vaddr_t s_start;
 vaddr_t s_end;
 struct uvm_addr_state *uaddr_exe;
 struct uvm_addr_state *uaddr_any[4];
 struct uvm_addr_state *uaddr_brk_stack;
};
struct vm_map_intrsafe {
 struct vm_map vmi_map;
 struct { struct vm_map_intrsafe *le_next; struct vm_map_intrsafe **le_prev; } vmi_list;
};
extern vaddr_t uvm_maxkaddr;
void uvm_map_deallocate(vm_map_t);
int uvm_map_clean(vm_map_t, vaddr_t, vaddr_t, int);
vm_map_t uvm_map_create(pmap_t, vaddr_t, vaddr_t, int);
int uvm_map_extract(struct vm_map*, vaddr_t, vsize_t, vaddr_t*,
      int);
vaddr_t uvm_map_pie(vaddr_t);
vaddr_t uvm_map_hint(struct vmspace *, vm_prot_t, vaddr_t, vaddr_t);
int uvm_map_inherit(vm_map_t, vaddr_t, vaddr_t, vm_inherit_t);
int uvm_map_advice(vm_map_t, vaddr_t, vaddr_t, int);
void uvm_map_init(void);
boolean_t uvm_map_lookup_entry(vm_map_t, vaddr_t, vm_map_entry_t *);
int uvm_map_replace(vm_map_t, vaddr_t, vaddr_t,
      vm_map_entry_t, int);
int uvm_map_reserve(vm_map_t, vsize_t, vaddr_t, vsize_t,
      vaddr_t *);
void uvm_map_setup(vm_map_t, vaddr_t, vaddr_t, int);
int uvm_map_submap(vm_map_t, vaddr_t, vaddr_t, vm_map_t);
void uvm_unmap(vm_map_t, vaddr_t, vaddr_t);
void uvm_map_set_uaddr(struct vm_map*, struct uvm_addr_state**,
      struct uvm_addr_state*);
int uvm_map_mquery(struct vm_map*, vaddr_t*, vsize_t, voff_t, int);
void uvm_unmap_detach(struct uvm_map_deadq*, int);
void uvm_unmap_remove(struct vm_map*, vaddr_t, vaddr_t,
      struct uvm_map_deadq*, boolean_t, boolean_t);
struct kinfo_vmentry;
int uvm_map_fill_vmmap(struct vm_map *, struct kinfo_vmentry *,
      size_t *);
boolean_t vm_map_lock_try_ln(struct vm_map*, char*, int);
void vm_map_lock_ln(struct vm_map*, char*, int);
void vm_map_lock_read_ln(struct vm_map*, char*, int);
void vm_map_unlock_ln(struct vm_map*, char*, int);
void vm_map_unlock_read_ln(struct vm_map*, char*, int);
void vm_map_downgrade_ln(struct vm_map*, char*, int);
void vm_map_upgrade_ln(struct vm_map*, char*, int);
void vm_map_busy_ln(struct vm_map*, char*, int);
void vm_map_unbusy_ln(struct vm_map*, char*, int);
struct uvm_faultinfo {
 vm_map_t orig_map;
 vaddr_t orig_rvaddr;
 vsize_t orig_size;
 vm_map_t map;
 unsigned int mapv;
 vm_map_entry_t entry;
 vsize_t size;
};
void uvmfault_init(void);
boolean_t uvmfault_lookup(struct uvm_faultinfo *, boolean_t);
boolean_t uvmfault_relock(struct uvm_faultinfo *);
void uvmfault_unlockall(struct uvm_faultinfo *, struct vm_amap *,
      struct uvm_object *, struct vm_anon *);
int uvmfault_anonget(struct uvm_faultinfo *, struct vm_amap *,
      struct vm_anon *);
int uvm_fault_wire(vm_map_t, vaddr_t, vaddr_t, vm_prot_t);
void uvm_fault_unwire(vm_map_t, vaddr_t, vaddr_t);
void uvm_fault_unwire_locked(vm_map_t, vaddr_t, vaddr_t);
struct uvm_pagerops {
 void (*pgo_init)(void);
 void (*pgo_reference)(struct uvm_object *);
 void (*pgo_detach)(struct uvm_object *);
 int (*pgo_fault)(struct uvm_faultinfo *, vaddr_t,
     vm_page_t *, int, int, vm_fault_t,
     vm_prot_t, int);
 boolean_t (*pgo_flush)(struct uvm_object *, voff_t,
     voff_t, int);
 int (*pgo_get)(struct uvm_object *, voff_t,
     vm_page_t *, int *, int, vm_prot_t, int, int);
 int (*pgo_put)(struct uvm_object *, vm_page_t *,
     int, boolean_t);
 void (*pgo_cluster)(struct uvm_object *, voff_t,
     voff_t *, voff_t *);
 struct vm_page ** (*pgo_mk_pcluster)(struct uvm_object *,
     struct vm_page **, int *, struct vm_page *,
     int, voff_t, voff_t);
};
void uvm_pager_dropcluster(struct uvm_object *, struct vm_page *,
      struct vm_page **, int *, int);
void uvm_pager_init(void);
int uvm_pager_put(struct uvm_object *, struct vm_page *,
      struct vm_page ***, int *, int, voff_t, voff_t);
vaddr_t uvm_pagermapin(struct vm_page **, int, int);
void uvm_pagermapout(vaddr_t, int);
struct vm_page **uvm_mk_pcluster(struct uvm_object *, struct vm_page **,
      int *, struct vm_page *, int, voff_t, voff_t);
struct vmspace {
 struct vm_map vm_map;
 int vm_refcnt;
 caddr_t vm_shm;
 segsz_t vm_rssize;
 segsz_t vm_swrss;
 segsz_t vm_tsize;
 segsz_t vm_dsize;
 segsz_t vm_dused;
 segsz_t vm_ssize;
 caddr_t vm_taddr;
 caddr_t vm_daddr;
 caddr_t vm_maxsaddr;
 caddr_t vm_minsaddr;
};
struct uvm_constraint_range {
 paddr_t ucr_low;
 paddr_t ucr_high;
};
struct uvmexp {
 int pagesize;
 int pagemask;
 int pageshift;
 int npages;
 int free;
 int active;
 int inactive;
 int paging;
 int wired;
 int zeropages;
 int reserve_pagedaemon;
 int reserve_kernel;
 int anonpages;
 int vnodepages;
 int vtextpages;
 int freemin;
 int freetarg;
 int inactarg;
 int wiredmax;
 int anonmin;
 int vtextmin;
 int vnodemin;
 int anonminpct;
 int vtextminpct;
 int vnodeminpct;
 int nswapdev;
 int swpages;
 int swpginuse;
 int swpgonly;
 int nswget;
 int nanon;
 int nanonneeded;
 int nfreeanon;
 int faults;
 int traps;
 int intrs;
 int swtch;
 int softs;
 int syscalls;
 int pageins;
 int obsolete_swapins;
 int obsolete_swapouts;
 int pgswapin;
 int pgswapout;
 int forks;
 int forks_ppwait;
 int forks_sharevm;
 int pga_zerohit;
 int pga_zeromiss;
 int zeroaborts;
 int fltnoram;
 int fltnoanon;
 int fltnoamap;
 int fltpgwait;
 int fltpgrele;
 int fltrelck;
 int fltrelckok;
 int fltanget;
 int fltanretry;
 int fltamcopy;
 int fltnamap;
 int fltnomap;
 int fltlget;
 int fltget;
 int flt_anon;
 int flt_acow;
 int flt_obj;
 int flt_prcopy;
 int flt_przero;
 int pdwoke;
 int pdrevs;
 int pdswout;
 int pdfreed;
 int pdscans;
 int pdanscan;
 int pdobscan;
 int pdreact;
 int pdbusy;
 int pdpageouts;
 int pdpending;
 int pddeact;
 int pdreanon;
 int pdrevnode;
 int pdrevtext;
 int fpswtch;
 int kmapent;
};
struct _ps_strings {
 void *val;
};
extern struct uvmexp uvmexp;
extern struct uvm_constraint_range isa_constraint;
extern struct uvm_constraint_range dma_constraint;
extern struct uvm_constraint_range no_constraint;
extern struct uvm_constraint_range *uvm_md_constraints[];
extern struct pool *uvm_aiobuf_pool;
extern struct vm_map *exec_map;
extern struct vm_map *kernel_map;
extern struct vm_map *kmem_map;
extern struct vm_map *phys_map;
extern vaddr_t vm_min_kernel_address;
void vmapbuf(struct buf *, vsize_t);
void vunmapbuf(struct buf *, vsize_t);
struct uvm_object *uao_create(vsize_t, int);
void uao_detach(struct uvm_object *);
void uao_detach_locked(struct uvm_object *);
void uao_reference(struct uvm_object *);
void uao_reference_locked(struct uvm_object *);
int uvm_fault(vm_map_t, vaddr_t, vm_fault_t, vm_prot_t);
vaddr_t uvm_uarea_alloc(void);
void uvm_uarea_free(struct proc *);
void uvm_exit(struct process *);
void uvm_init_limits(struct proc *);
boolean_t uvm_kernacc(caddr_t, size_t, int);
int uvm_vslock(struct proc *, caddr_t, size_t,
       vm_prot_t);
void uvm_vsunlock(struct proc *, caddr_t, size_t);
int uvm_vslock_device(struct proc *, void *, size_t,
       vm_prot_t, void **);
void uvm_vsunlock_device(struct proc *, void *, size_t,
       void *);
void uvm_pause(void);
void uvm_init(void);
int uvm_io(vm_map_t, struct uio *, int);
vaddr_t uvm_km_alloc1(vm_map_t, vsize_t, vsize_t, boolean_t);
void uvm_km_free(vm_map_t, vaddr_t, vsize_t);
void uvm_km_free_wakeup(vm_map_t, vaddr_t, vsize_t);
vaddr_t uvm_km_kmemalloc_pla(struct vm_map *,
       struct uvm_object *, vsize_t, vsize_t, int,
       paddr_t, paddr_t, paddr_t, paddr_t, int);
vaddr_t uvm_km_valloc(vm_map_t, vsize_t);
vaddr_t uvm_km_valloc_try(vm_map_t, vsize_t);
vaddr_t uvm_km_valloc_wait(vm_map_t, vsize_t);
vaddr_t uvm_km_valloc_align(struct vm_map *, vsize_t,
       vsize_t, int);
vaddr_t uvm_km_valloc_prefer_wait(vm_map_t, vsize_t, voff_t);
struct vm_map *uvm_km_suballoc(vm_map_t, vaddr_t *, vaddr_t *,
       vsize_t, int, boolean_t, vm_map_t);
struct kmem_va_mode {
 struct vm_map **kv_map;
 vsize_t kv_align;
 char kv_wait;
 char kv_singlepage;
};
struct kmem_pa_mode {
 struct uvm_constraint_range *kp_constraint;
 struct uvm_object **kp_object;
 paddr_t kp_align;
 paddr_t kp_boundary;
 int kp_maxseg;
 char kp_nomem;
 char kp_zero;
 char kp_pageable;
};
struct kmem_dyn_mode {
 voff_t kd_prefer;
 int *kd_slowdown;
 char kd_waitok;
 char kd_trylock;
};
extern const struct kmem_va_mode kv_any;
extern const struct kmem_va_mode kv_intrsafe;
extern const struct kmem_va_mode kv_page;
extern const struct kmem_pa_mode kp_dirty;
extern const struct kmem_pa_mode kp_zero;
extern const struct kmem_pa_mode kp_dma;
extern const struct kmem_pa_mode kp_dma_contig;
extern const struct kmem_pa_mode kp_dma_zero;
extern const struct kmem_pa_mode kp_pageable;
extern const struct kmem_pa_mode kp_none;
extern const struct kmem_dyn_mode kd_waitok;
extern const struct kmem_dyn_mode kd_nowait;
extern const struct kmem_dyn_mode kd_trylock;
void *km_alloc(size_t, const struct kmem_va_mode *,
       const struct kmem_pa_mode *,
       const struct kmem_dyn_mode *);
void km_free(void *, size_t, const struct kmem_va_mode *,
       const struct kmem_pa_mode *);
int uvm_map(vm_map_t, vaddr_t *, vsize_t,
       struct uvm_object *, voff_t, vsize_t, unsigned int);
int uvm_mapanon(vm_map_t, vaddr_t *, vsize_t, vsize_t, unsigned int);
int uvm_map_pageable(vm_map_t, vaddr_t,
       vaddr_t, boolean_t, int);
int uvm_map_pageable_all(vm_map_t, int, vsize_t);
boolean_t uvm_map_checkprot(vm_map_t, vaddr_t,
       vaddr_t, vm_prot_t);
int uvm_map_protect(vm_map_t, vaddr_t,
       vaddr_t, vm_prot_t, boolean_t);
struct vmspace *uvmspace_alloc(vaddr_t, vaddr_t,
       boolean_t, boolean_t);
void uvmspace_init(struct vmspace *, struct pmap *,
       vaddr_t, vaddr_t, boolean_t, boolean_t);
void uvmspace_exec(struct proc *, vaddr_t, vaddr_t);
struct vmspace *uvmspace_fork(struct process *);
void uvmspace_free(struct vmspace *);
struct vmspace *uvmspace_share(struct process *);
int uvm_share(vm_map_t, vaddr_t, vm_prot_t,
       vm_map_t, vaddr_t, vsize_t);
void uvm_meter(void);
int uvm_sysctl(int *, u_int, void *, size_t *,
       void *, size_t, struct proc *);
struct vm_page *uvm_pagealloc(struct uvm_object *,
       voff_t, struct vm_anon *, int);
vaddr_t uvm_pagealloc_contig(vaddr_t, vaddr_t,
       vaddr_t, vaddr_t);
int uvm_pagealloc_multi(struct uvm_object *, voff_t,
           vsize_t, int);
void uvm_pagerealloc(struct vm_page *,
       struct uvm_object *, voff_t);
int uvm_pagerealloc_multi(struct uvm_object *, voff_t,
       vsize_t, int, struct uvm_constraint_range *);
void uvm_page_physload(paddr_t, paddr_t, paddr_t,
       paddr_t, int);
void uvm_setpagesize(void);
void uvm_shutdown(void);
void uvm_aio_biodone(struct buf *);
void uvm_aio_aiodone(struct buf *);
void uvm_pageout(void *);
void uvm_aiodone_daemon(void *);
void uvm_wait(const char *);
int uvm_pglistalloc(psize_t, paddr_t, paddr_t,
       paddr_t, paddr_t, struct pglist *, int, int);
void uvm_pglistfree(struct pglist *);
void uvm_pmr_use_inc(paddr_t, paddr_t);
void uvm_swap_init(void);
typedef int uvm_coredump_setup_cb(int _nsegment, void *_cookie);
typedef int uvm_coredump_walk_cb(vaddr_t _start, vaddr_t _realend,
       vaddr_t _end, vm_prot_t _prot, int _nsegment,
       void *_cookie);
int uvm_coredump_walkmap(struct proc *_p,
       uvm_coredump_setup_cb *_setup,
       uvm_coredump_walk_cb *_walk, void *_cookie);
void uvm_grow(struct proc *, vaddr_t);
void uvm_deallocate(vm_map_t, vaddr_t, vsize_t);
struct uvm_object *uvn_attach(struct vnode *, vm_prot_t);
void uvm_pagezero_thread(void *);
void kmeminit_nkmempages(void);
void kmeminit(void);
extern u_int nkmempages;
struct process;
struct kinfo_vmentry;
int fill_vmmap(struct process *, struct kinfo_vmentry *,
       size_t *);
static inline unsigned int
_atomic_cas_uint(volatile unsigned int *p, unsigned int e, unsigned int n)
{
 __asm volatile("cas [%2], %3, %0"
     : "+r" (n), "=m" (*p)
     : "r" (p), "r" (e), "m" (*p));
 return (n);
}
static inline unsigned long
_atomic_cas_ulong(volatile unsigned long *p, unsigned long e, unsigned long n)
{
 __asm volatile("casx [%2], %3, %0"
     : "+r" (n), "=m" (*p)
     : "r" (p), "r" (e), "m" (*p));
 return (n);
}
static inline void *
_atomic_cas_ptr(volatile void *p, void *e, void *n)
{
 __asm volatile("casx [%2], %3, %0"
     : "+r" (n), "=m" (*(volatile unsigned long *)p)
     : "r" (p), "r" (e), "m" (*(volatile unsigned long *)p));
 return (n);
}
static inline unsigned int _atomic_swap_uint(volatile unsigned int *p, unsigned int v) { unsigned int e; unsigned int r; r = (unsigned int)*p; do { e = r; r = _atomic_cas_uint((p), (e), (v)); } while (r != e); return (r); }
static inline unsigned long _atomic_swap_ulong(volatile unsigned long *p, unsigned long v) { unsigned long e; unsigned long r; r = (unsigned long)*p; do { e = r; r = _atomic_cas_ulong((p), (e), (v)); } while (r != e); return (r); }
static inline void *
_atomic_swap_ptr(volatile void *p, void *v)
{
 void *e, *r;
 r = *(void **)p;
 do {
  e = r;
  r = _atomic_cas_ptr((p), (e), (v));
 } while (r != e);
 return (r);
}
static inline unsigned int _atomic_add_int_nv(volatile unsigned int *p, unsigned int v) { unsigned int e, r, f; r = *p; do { e = r; f = e + v; r = _atomic_cas_uint((p), (e), (f)); } while (r != e); return (f); }
static inline unsigned long _atomic_add_long_nv(volatile unsigned long *p, unsigned long v) { unsigned long e, r, f; r = *p; do { e = r; f = e + v; r = _atomic_cas_ulong((p), (e), (f)); } while (r != e); return (f); }
static inline unsigned int _atomic_sub_int_nv(volatile unsigned int *p, unsigned int v) { unsigned int e, r, f; r = *p; do { e = r; f = e - v; r = _atomic_cas_uint((p), (e), (f)); } while (r != e); return (f); }
static inline unsigned long _atomic_sub_long_nv(volatile unsigned long *p, unsigned long v) { unsigned long e, r, f; r = *p; do { e = r; f = e - v; r = _atomic_cas_ulong((p), (e), (f)); } while (r != e); return (f); }
static __inline void
atomic_setbits_int(volatile unsigned int *uip, unsigned int v)
{
 unsigned int e, r;
 r = *uip;
 do {
  e = r;
  r = _atomic_cas_uint((uip), (e), (e | v));
 } while (r != e);
}
static __inline void
atomic_clearbits_int(volatile unsigned int *uip, unsigned int v)
{
 unsigned int e, r;
 r = *uip;
 do {
  e = r;
  r = _atomic_cas_uint((uip), (e), (e & ~v));
 } while (r != e);
}
extern int bus_space_debug;
enum bus_type {
 UPA_BUS_SPACE,
 SBUS_BUS_SPACE,
 PCI_CONFIG_BUS_SPACE,
 PCI_IO_BUS_SPACE,
 PCI_MEMORY_BUS_SPACE,
 LAST_BUS_SPACE
};
typedef const struct sparc_bus_space_tag *bus_space_tag_t;
typedef u_long bus_addr_t;
typedef u_long bus_size_t;
typedef struct _bus_space_handle {
        paddr_t bh_ptr;
} bus_space_handle_t;
struct sparc_bus_space_tag {
 void *cookie;
 bus_space_tag_t parent;
 enum bus_type default_type;
        u_int8_t asi;
        u_int8_t sasi;
 char name[32];
 int (*sparc_bus_alloc)(bus_space_tag_t,
  bus_space_tag_t,
  bus_addr_t, bus_addr_t,
  bus_size_t, bus_size_t, bus_size_t,
  int, bus_addr_t *, bus_space_handle_t *);
 void (*sparc_bus_free)(bus_space_tag_t,
  bus_space_tag_t,
  bus_space_handle_t, bus_size_t);
 int (*sparc_bus_map)(bus_space_tag_t,
  bus_space_tag_t,
  bus_addr_t, bus_size_t,
  int, bus_space_handle_t *);
 int (*sparc_bus_protect)(bus_space_tag_t,
  bus_space_tag_t,
  bus_space_handle_t, bus_size_t, int);
 int (*sparc_bus_unmap)(bus_space_tag_t,
  bus_space_tag_t,
  bus_space_handle_t, bus_size_t);
 int (*sparc_bus_subregion)(bus_space_tag_t,
  bus_space_tag_t,
  bus_space_handle_t, bus_size_t,
  bus_size_t, bus_space_handle_t *);
 paddr_t (*sparc_bus_mmap)(bus_space_tag_t,
  bus_space_tag_t,
  bus_addr_t, off_t, int, int);
 void *(*sparc_intr_establish)(bus_space_tag_t,
  bus_space_tag_t,
  int, int, int,
  int (*)(void *), void *,
  const char *);
 bus_addr_t (*sparc_bus_addr)(bus_space_tag_t,
  bus_space_tag_t, bus_space_handle_t);
};
int bus_space_alloc(
    bus_space_tag_t,
    bus_addr_t,
    bus_addr_t,
    bus_size_t,
    bus_size_t,
    bus_size_t,
    int,
    bus_addr_t *,
    bus_space_handle_t *);
void bus_space_free(
    bus_space_tag_t,
    bus_space_handle_t,
    bus_size_t);
int bus_space_map(
    bus_space_tag_t,
    bus_addr_t,
    bus_size_t,
    int,
    bus_space_handle_t *);
int bus_space_protect(
    bus_space_tag_t,
    bus_space_handle_t,
    bus_size_t,
    int);
int bus_space_unmap(
    bus_space_tag_t,
    bus_space_handle_t,
    bus_size_t);
int bus_space_subregion(
    bus_space_tag_t,
    bus_space_handle_t,
    bus_size_t,
    bus_size_t,
    bus_space_handle_t *);
static void bus_space_barrier(
    bus_space_tag_t,
    bus_space_handle_t,
    bus_size_t,
    bus_size_t,
    int);
paddr_t bus_space_mmap(
    bus_space_tag_t,
    bus_addr_t,
    off_t,
    int,
    int);
void *bus_intr_establish(
    bus_space_tag_t,
    int,
    int,
    int,
    int (*)(void *),
    void *,
    const char *);
void *bus_intr_allocate(
    bus_space_tag_t,
    int (*)(void *),
    void *,
    int,
    int,
    volatile u_int64_t *,
    volatile u_int64_t *,
    const char *);
void bus_intr_free(void *);
void bus_space_render_tag(
    bus_space_tag_t,
    char *,
    size_t);
void *bus_space_vaddr(
    bus_space_tag_t,
    bus_space_handle_t);
static inline void
bus_space_barrier(t, h, o, s, f)
 bus_space_tag_t t;
 bus_space_handle_t h;
 bus_size_t o;
 bus_size_t s;
 int f;
{
 __asm volatile("membar " "#Sync" ::: "memory");
}
static inline u_int16_t bus_space_read_2(bus_space_tag_t,
    bus_space_handle_t, bus_size_t);
static inline void bus_space_write_2(bus_space_tag_t,
    bus_space_handle_t, bus_size_t, u_int16_t);
void bus_space_read_multi_2(bus_space_tag_t, bus_space_handle_t,
    bus_size_t,
    u_int16_t *, bus_size_t);
void bus_space_write_multi_2(bus_space_tag_t, bus_space_handle_t,
    bus_size_t,
    const u_int16_t *, bus_size_t);
void bus_space_set_multi_2(bus_space_tag_t, bus_space_handle_t,
    bus_size_t, u_int16_t,
    bus_size_t);
void bus_space_read_region_2(bus_space_tag_t, bus_space_handle_t,
    bus_size_t,
    u_int16_t *, bus_size_t);
void bus_space_write_region_2(bus_space_tag_t, bus_space_handle_t,
    bus_size_t,
    const u_int16_t *, bus_size_t);
void bus_space_set_region_2(bus_space_tag_t, bus_space_handle_t,
    bus_size_t, u_int16_t,
    bus_size_t);
void bus_space_copy_2(bus_space_tag_t, bus_space_handle_t,
    bus_size_t, bus_space_handle_t, bus_size_t,
    bus_size_t);
static inline
u_int16_t bus_space_read_2(bus_space_tag_t t, bus_space_handle_t h,
    bus_size_t o)
{
 u_int16_t r;
 ;
 r = (__builtin_constant_p(t->asi) ? ({ u_int16_t __rlduhu_int16_t; if(t->asi == 0x80 || (sizeof(u_int16_t) == 1 && t->asi == 0x88)) __rlduhu_int16_t = *((volatile u_int16_t *)(h.bh_ptr + o)); else __asm volatile("lduha" " [%1] " "t->asi" ", %0" : "=r" (__rlduhu_int16_t) : "r" ((volatile u_int16_t *)(h.bh_ptr + o)) : "%g0"); __rlduhu_int16_t; }) : lduha_nc((h.bh_ptr + o), t->asi));
 ;
 return (r);
}
static inline
void bus_space_write_2(bus_space_tag_t t, bus_space_handle_t h,
    bus_size_t o, u_int16_t v)
{
 ;
 ;
 (__builtin_constant_p(t->asi) ? ({ if((t->asi) == 0x80 || (sizeof(u_int16_t) == 1 && (t->asi) == 0x88)) *((volatile u_int16_t *)(h.bh_ptr + o)) = (v); else __asm volatile("stha" " %0, [%1] " "(t->asi)" : : "r" ((v)), "r" ((volatile u_int16_t *)(h.bh_ptr + o)) : "memory"); }) : stha_nc((h.bh_ptr + o), t->asi, (v)));
}
static inline u_int32_t bus_space_read_4(bus_space_tag_t,
    bus_space_handle_t, bus_size_t);
static inline void bus_space_write_4(bus_space_tag_t,
    bus_space_handle_t, bus_size_t, u_int32_t);
void bus_space_read_multi_4(bus_space_tag_t, bus_space_handle_t,
    bus_size_t,
    u_int32_t *, bus_size_t);
void bus_space_write_multi_4(bus_space_tag_t, bus_space_handle_t,
    bus_size_t,
    const u_int32_t *, bus_size_t);
void bus_space_set_multi_4(bus_space_tag_t, bus_space_handle_t,
    bus_size_t, u_int32_t,
    bus_size_t);
void bus_space_read_region_4(bus_space_tag_t, bus_space_handle_t,
    bus_size_t,
    u_int32_t *, bus_size_t);
void bus_space_write_region_4(bus_space_tag_t, bus_space_handle_t,
    bus_size_t,
    const u_int32_t *, bus_size_t);
void bus_space_set_region_4(bus_space_tag_t, bus_space_handle_t,
    bus_size_t, u_int32_t,
    bus_size_t);
void bus_space_copy_4(bus_space_tag_t, bus_space_handle_t,
    bus_size_t, bus_space_handle_t, bus_size_t,
    bus_size_t);
static inline
u_int32_t bus_space_read_4(bus_space_tag_t t, bus_space_handle_t h,
    bus_size_t o)
{
 u_int32_t r;
 ;
 r = (__builtin_constant_p(t->asi) ? ({ u_int32_t __rlduwu_int32_t; if(t->asi == 0x80 || (sizeof(u_int32_t) == 1 && t->asi == 0x88)) __rlduwu_int32_t = *((volatile u_int32_t *)(h.bh_ptr + o)); else __asm volatile("lduwa" " [%1] " "t->asi" ", %0" : "=r" (__rlduwu_int32_t) : "r" ((volatile u_int32_t *)(h.bh_ptr + o)) : "%g0"); __rlduwu_int32_t; }) : lduwa_nc((h.bh_ptr + o), t->asi));
 ;
 return (r);
}
static inline
void bus_space_write_4(bus_space_tag_t t, bus_space_handle_t h,
    bus_size_t o, u_int32_t v)
{
 ;
 ;
 (__builtin_constant_p(t->asi) ? ({ if((t->asi) == 0x80 || (sizeof(u_int32_t) == 1 && (t->asi) == 0x88)) *((volatile u_int32_t *)(h.bh_ptr + o)) = (v); else __asm volatile("stwa" " %0, [%1] " "(t->asi)" : : "r" ((v)), "r" ((volatile u_int32_t *)(h.bh_ptr + o)) : "memory"); }) : stwa_nc((h.bh_ptr + o), t->asi, (v)));
}
static inline u_int64_t bus_space_read_8(bus_space_tag_t,
    bus_space_handle_t, bus_size_t);
static inline void bus_space_write_8(bus_space_tag_t,
    bus_space_handle_t, bus_size_t, u_int64_t);
void bus_space_read_multi_8(bus_space_tag_t, bus_space_handle_t,
    bus_size_t,
    u_int64_t *, bus_size_t);
void bus_space_write_multi_8(bus_space_tag_t, bus_space_handle_t,
    bus_size_t,
    const u_int64_t *, bus_size_t);
void bus_space_set_multi_8(bus_space_tag_t, bus_space_handle_t,
    bus_size_t, u_int64_t,
    bus_size_t);
void bus_space_read_region_8(bus_space_tag_t, bus_space_handle_t,
    bus_size_t,
    u_int64_t *, bus_size_t);
void bus_space_write_region_8(bus_space_tag_t, bus_space_handle_t,
    bus_size_t,
    const u_int64_t *, bus_size_t);
void bus_space_set_region_8(bus_space_tag_t, bus_space_handle_t,
    bus_size_t, u_int64_t,
    bus_size_t);
void bus_space_copy_8(bus_space_tag_t, bus_space_handle_t,
    bus_size_t, bus_space_handle_t, bus_size_t,
    bus_size_t);
static inline
u_int64_t bus_space_read_8(bus_space_tag_t t, bus_space_handle_t h,
    bus_size_t o)
{
 u_int64_t r;
 ;
 r = (__builtin_constant_p(t->asi) ? ({ u_int64_t __rldxu_int64_t; if(t->asi == 0x80 || (sizeof(u_int64_t) == 1 && t->asi == 0x88)) __rldxu_int64_t = *((volatile u_int64_t *)(h.bh_ptr + o)); else __asm volatile("ldxa" " [%1] " "t->asi" ", %0" : "=r" (__rldxu_int64_t) : "r" ((volatile u_int64_t *)(h.bh_ptr + o)) : "%g0"); __rldxu_int64_t; }) : ldxa_nc((h.bh_ptr + o), t->asi));
 ;
 return (r);
}
static inline
void bus_space_write_8(bus_space_tag_t t, bus_space_handle_t h,
    bus_size_t o, u_int64_t v)
{
 ;
 ;
 (__builtin_constant_p(t->asi) ? ({ if((t->asi) == 0x80 || (sizeof(u_int64_t) == 1 && (t->asi) == 0x88)) *((volatile u_int64_t *)(h.bh_ptr + o)) = (v); else __asm volatile("stxa" " %0, [%1] " "(t->asi)" : : "r" ((v)), "r" ((volatile u_int64_t *)(h.bh_ptr + o)) : "memory"); }) : stxa_nc((h.bh_ptr + o), t->asi, (v)));
}
static inline u_int8_t bus_space_read_1(bus_space_tag_t,
    bus_space_handle_t, bus_size_t);
static inline void bus_space_write_1(bus_space_tag_t,
    bus_space_handle_t, bus_size_t, u_int8_t);
void bus_space_read_multi_1(bus_space_tag_t, bus_space_handle_t,
    bus_size_t,
    u_int8_t *, bus_size_t);
void bus_space_write_multi_1(bus_space_tag_t, bus_space_handle_t,
    bus_size_t,
    const u_int8_t *, bus_size_t);
void bus_space_set_multi_1(bus_space_tag_t, bus_space_handle_t,
    bus_size_t, u_int8_t,
    bus_size_t);
void bus_space_read_region_1(bus_space_tag_t, bus_space_handle_t,
    bus_size_t,
    u_int8_t *, bus_size_t);
void bus_space_write_region_1(bus_space_tag_t, bus_space_handle_t,
    bus_size_t,
    const u_int8_t *, bus_size_t);
void bus_space_set_region_1(bus_space_tag_t, bus_space_handle_t,
    bus_size_t, u_int8_t,
    bus_size_t);
void bus_space_copy_1(bus_space_tag_t, bus_space_handle_t,
    bus_size_t, bus_space_handle_t, bus_size_t,
    bus_size_t);
static inline
u_int8_t bus_space_read_1(bus_space_tag_t t, bus_space_handle_t h,
    bus_size_t o)
{
 u_int8_t r;
 ;
 r = (__builtin_constant_p(t->asi) ? ({ u_int8_t __rldubu_int8_t; if(t->asi == 0x80 || (sizeof(u_int8_t) == 1 && t->asi == 0x88)) __rldubu_int8_t = *((volatile u_int8_t *)(h.bh_ptr + o)); else __asm volatile("lduba" " [%1] " "t->asi" ", %0" : "=r" (__rldubu_int8_t) : "r" ((volatile u_int8_t *)(h.bh_ptr + o)) : "%g0"); __rldubu_int8_t; }) : lduba_nc((h.bh_ptr + o), t->asi));
 ;
 return (r);
}
static inline
void bus_space_write_1(bus_space_tag_t t, bus_space_handle_t h,
    bus_size_t o, u_int8_t v)
{
 ;
 ;
 (__builtin_constant_p(t->asi) ? ({ if((t->asi) == 0x80 || (sizeof(u_int8_t) == 1 && (t->asi) == 0x88)) *((volatile u_int8_t *)(h.bh_ptr + o)) = (v); else __asm volatile("stba" " %0, [%1] " "(t->asi)" : : "r" ((v)), "r" ((volatile u_int8_t *)(h.bh_ptr + o)) : "memory"); }) : stba_nc((h.bh_ptr + o), t->asi, (v)));
}
static inline u_int16_t bus_space_read_raw_2(bus_space_tag_t,
    bus_space_handle_t, bus_size_t);
static inline void bus_space_write_raw_2(bus_space_tag_t,
    bus_space_handle_t, bus_size_t, u_int16_t);
void bus_space_read_raw_multi_2(bus_space_tag_t, bus_space_handle_t,
    bus_size_t,
    void *, size_t);
void bus_space_write_raw_multi_2(bus_space_tag_t, bus_space_handle_t,
    bus_size_t,
    const void *, size_t);
void bus_space_set_raw_multi_2(bus_space_tag_t, bus_space_handle_t,
    bus_size_t, u_int16_t,
    size_t);
void bus_space_read_raw_region_2(bus_space_tag_t, bus_space_handle_t,
    bus_size_t,
    void *, size_t);
void bus_space_write_raw_region_2(bus_space_tag_t, bus_space_handle_t,
    bus_size_t,
    const void *, size_t);
void bus_space_set_raw_region_2(bus_space_tag_t, bus_space_handle_t,
    bus_size_t, u_int16_t,
    size_t);
static inline
u_int16_t bus_space_read_raw_2(bus_space_tag_t t, bus_space_handle_t h,
    bus_size_t o)
{
 u_int16_t r;
 ;
 r = (__builtin_constant_p(t->sasi) ? ({ u_int16_t __rlduhu_int16_t; if(t->sasi == 0x80 || (sizeof(u_int16_t) == 1 && t->sasi == 0x88)) __rlduhu_int16_t = *((volatile u_int16_t *)(h.bh_ptr + o)); else __asm volatile("lduha" " [%1] " "t->sasi" ", %0" : "=r" (__rlduhu_int16_t) : "r" ((volatile u_int16_t *)(h.bh_ptr + o)) : "%g0"); __rlduhu_int16_t; }) : lduha_nc((h.bh_ptr + o), t->sasi));
 ;
 return (r);
}
static inline
void bus_space_write_raw_2(bus_space_tag_t t, bus_space_handle_t h,
    bus_size_t o, u_int16_t v)
{
 ;
 ;
 (__builtin_constant_p(t->sasi) ? ({ if((t->sasi) == 0x80 || (sizeof(u_int16_t) == 1 && (t->sasi) == 0x88)) *((volatile u_int16_t *)(h.bh_ptr + o)) = (v); else __asm volatile("stha" " %0, [%1] " "(t->sasi)" : : "r" ((v)), "r" ((volatile u_int16_t *)(h.bh_ptr + o)) : "memory"); }) : stha_nc((h.bh_ptr + o), t->sasi, (v)));
}
static inline u_int32_t bus_space_read_raw_4(bus_space_tag_t,
    bus_space_handle_t, bus_size_t);
static inline void bus_space_write_raw_4(bus_space_tag_t,
    bus_space_handle_t, bus_size_t, u_int32_t);
void bus_space_read_raw_multi_4(bus_space_tag_t, bus_space_handle_t,
    bus_size_t,
    void *, size_t);
void bus_space_write_raw_multi_4(bus_space_tag_t, bus_space_handle_t,
    bus_size_t,
    const void *, size_t);
void bus_space_set_raw_multi_4(bus_space_tag_t, bus_space_handle_t,
    bus_size_t, u_int32_t,
    size_t);
void bus_space_read_raw_region_4(bus_space_tag_t, bus_space_handle_t,
    bus_size_t,
    void *, size_t);
void bus_space_write_raw_region_4(bus_space_tag_t, bus_space_handle_t,
    bus_size_t,
    const void *, size_t);
void bus_space_set_raw_region_4(bus_space_tag_t, bus_space_handle_t,
    bus_size_t, u_int32_t,
    size_t);
static inline
u_int32_t bus_space_read_raw_4(bus_space_tag_t t, bus_space_handle_t h,
    bus_size_t o)
{
 u_int32_t r;
 ;
 r = (__builtin_constant_p(t->sasi) ? ({ u_int32_t __rlduwu_int32_t; if(t->sasi == 0x80 || (sizeof(u_int32_t) == 1 && t->sasi == 0x88)) __rlduwu_int32_t = *((volatile u_int32_t *)(h.bh_ptr + o)); else __asm volatile("lduwa" " [%1] " "t->sasi" ", %0" : "=r" (__rlduwu_int32_t) : "r" ((volatile u_int32_t *)(h.bh_ptr + o)) : "%g0"); __rlduwu_int32_t; }) : lduwa_nc((h.bh_ptr + o), t->sasi));
 ;
 return (r);
}
static inline
void bus_space_write_raw_4(bus_space_tag_t t, bus_space_handle_t h,
    bus_size_t o, u_int32_t v)
{
 ;
 ;
 (__builtin_constant_p(t->sasi) ? ({ if((t->sasi) == 0x80 || (sizeof(u_int32_t) == 1 && (t->sasi) == 0x88)) *((volatile u_int32_t *)(h.bh_ptr + o)) = (v); else __asm volatile("stwa" " %0, [%1] " "(t->sasi)" : : "r" ((v)), "r" ((volatile u_int32_t *)(h.bh_ptr + o)) : "memory"); }) : stwa_nc((h.bh_ptr + o), t->sasi, (v)));
}
static inline u_int64_t bus_space_read_raw_8(bus_space_tag_t,
    bus_space_handle_t, bus_size_t);
static inline void bus_space_write_raw_8(bus_space_tag_t,
    bus_space_handle_t, bus_size_t, u_int64_t);
void bus_space_read_raw_multi_8(bus_space_tag_t, bus_space_handle_t,
    bus_size_t,
    void *, size_t);
void bus_space_write_raw_multi_8(bus_space_tag_t, bus_space_handle_t,
    bus_size_t,
    const void *, size_t);
void bus_space_set_raw_multi_8(bus_space_tag_t, bus_space_handle_t,
    bus_size_t, u_int64_t,
    size_t);
void bus_space_read_raw_region_8(bus_space_tag_t, bus_space_handle_t,
    bus_size_t,
    void *, size_t);
void bus_space_write_raw_region_8(bus_space_tag_t, bus_space_handle_t,
    bus_size_t,
    const void *, size_t);
void bus_space_set_raw_region_8(bus_space_tag_t, bus_space_handle_t,
    bus_size_t, u_int64_t,
    size_t);
static inline
u_int64_t bus_space_read_raw_8(bus_space_tag_t t, bus_space_handle_t h,
    bus_size_t o)
{
 u_int64_t r;
 ;
 r = (__builtin_constant_p(t->sasi) ? ({ u_int64_t __rldxu_int64_t; if(t->sasi == 0x80 || (sizeof(u_int64_t) == 1 && t->sasi == 0x88)) __rldxu_int64_t = *((volatile u_int64_t *)(h.bh_ptr + o)); else __asm volatile("ldxa" " [%1] " "t->sasi" ", %0" : "=r" (__rldxu_int64_t) : "r" ((volatile u_int64_t *)(h.bh_ptr + o)) : "%g0"); __rldxu_int64_t; }) : ldxa_nc((h.bh_ptr + o), t->sasi));
 ;
 return (r);
}
static inline
void bus_space_write_raw_8(bus_space_tag_t t, bus_space_handle_t h,
    bus_size_t o, u_int64_t v)
{
 ;
 ;
 (__builtin_constant_p(t->sasi) ? ({ if((t->sasi) == 0x80 || (sizeof(u_int64_t) == 1 && (t->sasi) == 0x88)) *((volatile u_int64_t *)(h.bh_ptr + o)) = (v); else __asm volatile("stxa" " %0, [%1] " "(t->sasi)" : : "r" ((v)), "r" ((volatile u_int64_t *)(h.bh_ptr + o)) : "memory"); }) : stxa_nc((h.bh_ptr + o), t->sasi, (v)));
}
static inline u_int8_t bus_space_read_raw_1(bus_space_tag_t,
    bus_space_handle_t, bus_size_t);
static inline void bus_space_write_raw_1(bus_space_tag_t,
    bus_space_handle_t, bus_size_t, u_int8_t);
void bus_space_read_raw_multi_1(bus_space_tag_t, bus_space_handle_t,
    bus_size_t,
    void *, size_t);
void bus_space_write_raw_multi_1(bus_space_tag_t, bus_space_handle_t,
    bus_size_t,
    const void *, size_t);
void bus_space_set_raw_multi_1(bus_space_tag_t, bus_space_handle_t,
    bus_size_t, u_int8_t,
    size_t);
void bus_space_read_raw_region_1(bus_space_tag_t, bus_space_handle_t,
    bus_size_t,
    void *, size_t);
void bus_space_write_raw_region_1(bus_space_tag_t, bus_space_handle_t,
    bus_size_t,
    const void *, size_t);
void bus_space_set_raw_region_1(bus_space_tag_t, bus_space_handle_t,
    bus_size_t, u_int8_t,
    size_t);
static inline
u_int8_t bus_space_read_raw_1(bus_space_tag_t t, bus_space_handle_t h,
    bus_size_t o)
{
 u_int8_t r;
 ;
 r = (__builtin_constant_p(t->sasi) ? ({ u_int8_t __rldubu_int8_t; if(t->sasi == 0x80 || (sizeof(u_int8_t) == 1 && t->sasi == 0x88)) __rldubu_int8_t = *((volatile u_int8_t *)(h.bh_ptr + o)); else __asm volatile("lduba" " [%1] " "t->sasi" ", %0" : "=r" (__rldubu_int8_t) : "r" ((volatile u_int8_t *)(h.bh_ptr + o)) : "%g0"); __rldubu_int8_t; }) : lduba_nc((h.bh_ptr + o), t->sasi));
 ;
 return (r);
}
static inline
void bus_space_write_raw_1(bus_space_tag_t t, bus_space_handle_t h,
    bus_size_t o, u_int8_t v)
{
 ;
 ;
 (__builtin_constant_p(t->sasi) ? ({ if((t->sasi) == 0x80 || (sizeof(u_int8_t) == 1 && (t->sasi) == 0x88)) *((volatile u_int8_t *)(h.bh_ptr + o)) = (v); else __asm volatile("stba" " %0, [%1] " "(t->sasi)" : : "r" ((v)), "r" ((volatile u_int8_t *)(h.bh_ptr + o)) : "memory"); }) : stba_nc((h.bh_ptr + o), t->sasi, (v)));
}
struct mbuf;
struct uio;
typedef struct sparc_bus_dma_tag *bus_dma_tag_t;
typedef struct sparc_bus_dmamap *bus_dmamap_t;
struct sparc_bus_dma_segment {
 bus_addr_t ds_addr;
 bus_size_t ds_len;
 bus_size_t _ds_boundary;
 bus_size_t _ds_align;
 void *_ds_mlist;
};
typedef struct sparc_bus_dma_segment bus_dma_segment_t;
struct sparc_bus_dma_tag {
 void *_cookie;
 struct sparc_bus_dma_tag* _parent;
 int (*_dmamap_create)(bus_dma_tag_t, bus_dma_tag_t, bus_size_t,
      int, bus_size_t, bus_size_t, int, bus_dmamap_t *);
 void (*_dmamap_destroy)(bus_dma_tag_t, bus_dma_tag_t, bus_dmamap_t);
 int (*_dmamap_load)(bus_dma_tag_t, bus_dma_tag_t, bus_dmamap_t,
      void *, bus_size_t, struct proc *, int);
 int (*_dmamap_load_mbuf)(bus_dma_tag_t, bus_dma_tag_t,
      bus_dmamap_t, struct mbuf *, int);
 int (*_dmamap_load_uio)(bus_dma_tag_t, bus_dma_tag_t, bus_dmamap_t,
      struct uio *, int);
 int (*_dmamap_load_raw)(bus_dma_tag_t, bus_dma_tag_t, bus_dmamap_t,
      bus_dma_segment_t *, int, bus_size_t, int);
 void (*_dmamap_unload)(bus_dma_tag_t, bus_dma_tag_t, bus_dmamap_t);
 void (*_dmamap_sync)(bus_dma_tag_t, bus_dma_tag_t, bus_dmamap_t,
      bus_addr_t, bus_size_t, int);
 int (*_dmamem_alloc)(bus_dma_tag_t, bus_dma_tag_t, bus_size_t,
      bus_size_t, bus_size_t, bus_dma_segment_t *, int, int *,
      int);
 void (*_dmamem_free)(bus_dma_tag_t, bus_dma_tag_t,
      bus_dma_segment_t *, int);
 int (*_dmamem_map)(bus_dma_tag_t, bus_dma_tag_t,
      bus_dma_segment_t *, int, size_t, caddr_t *, int);
 void (*_dmamem_unmap)(bus_dma_tag_t, bus_dma_tag_t, caddr_t,
      size_t);
 paddr_t (*_dmamem_mmap)(bus_dma_tag_t, bus_dma_tag_t,
      bus_dma_segment_t *, int, off_t, int, int);
};
static inline int
bus_dmamap_create(bus_dma_tag_t t, bus_size_t s, int n, bus_size_t m,
    bus_size_t b, int f, bus_dmamap_t *p)
{
 int r;
 const bus_dma_tag_t t0 = t;
 while (t->_dmamap_create == ((void *)0)) { t = t->_parent; };
 r = (*(t)->_dmamap_create)(t, t0, s, n, m, b, f, p);
 ;
 return (r);
}
static inline void
bus_dmamap_destroy(bus_dma_tag_t t, bus_dmamap_t p)
{
 const bus_dma_tag_t t0 = t;
 while (t->_dmamap_destroy == ((void *)0)) { t = t->_parent; };
 (*(t)->_dmamap_destroy)(t, t0, p);
 ;
}
static inline int
bus_dmamap_load(bus_dma_tag_t t, bus_dmamap_t m, void *b, bus_size_t s,
    struct proc *p, int f)
{
 const bus_dma_tag_t t0 = t;
 int r;
 while (t->_dmamap_load == ((void *)0)) { t = t->_parent; };
 r = (*(t)->_dmamap_load)(t, t0, m, b, s, p, f);
 ;
 return (r);
}
static inline int
bus_dmamap_load_mbuf(bus_dma_tag_t t, bus_dmamap_t m, struct mbuf *b,
    int f)
{
 const bus_dma_tag_t t0 = t;
 int r;
 while (t->_dmamap_load_mbuf == ((void *)0)) { t = t->_parent; };
 r = (*(t)->_dmamap_load_mbuf)(t, t0, m, b, f);
 ;
 return (r);
}
static inline int
bus_dmamap_load_uio(bus_dma_tag_t t, bus_dmamap_t m, struct uio * u, int f)
{
 const bus_dma_tag_t t0 = t;
 int r;
 while (t->_dmamap_load_uio == ((void *)0)) { t = t->_parent; };
 r = (*(t)->_dmamap_load_uio)(t, t0, m, u, f);
 ;
 return (r);
}
static inline int
bus_dmamap_load_raw(bus_dma_tag_t t, bus_dmamap_t m, bus_dma_segment_t *sg,
    int n, bus_size_t s, int f)
{
 const bus_dma_tag_t t0 = t;
 int r;
 while (t->_dmamap_load_raw == ((void *)0)) { t = t->_parent; };
 r = (*(t)->_dmamap_load_raw)(t, t0, m, sg, n, s, f);
 ;
 return (r);
}
static inline void
bus_dmamap_unload(bus_dma_tag_t t, bus_dmamap_t p)
{
 const bus_dma_tag_t t0 = t;
 while (t->_dmamap_unload == ((void *)0)) { t = t->_parent; };
 (*(t)->_dmamap_unload)(t, t0, p);
 ;
}
static inline void
bus_dmamap_sync(bus_dma_tag_t t, bus_dmamap_t p, bus_addr_t o, bus_size_t l,
    int ops)
{
 const bus_dma_tag_t t0 = t;
 while (t->_dmamap_sync == ((void *)0)) { t = t->_parent; };
 (*(t)->_dmamap_sync)(t, t0, p, o, l, ops);
 ;
}
static inline int
bus_dmamem_alloc(bus_dma_tag_t t, bus_size_t s, bus_size_t a, bus_size_t b,
    bus_dma_segment_t *sg, int n, int *r, int f)
{
 const bus_dma_tag_t t0 = t;
 int ret;
 while (t->_dmamem_alloc == ((void *)0)) { t = t->_parent; };
 ret = (*(t)->_dmamem_alloc)(t, t0, s, a, b, sg, n, r, f);
 ;
 return (ret);
}
static inline void
bus_dmamem_free(bus_dma_tag_t t, bus_dma_segment_t *sg, int n)
{
 const bus_dma_tag_t t0 = t;
 while (t->_dmamem_free == ((void *)0)) { t = t->_parent; };
 (*(t)->_dmamem_free)(t, t0, sg, n);
 ;
}
static inline int
bus_dmamem_map(bus_dma_tag_t t, bus_dma_segment_t *sg, int n, size_t s,
    caddr_t *k, int f)
{
 const bus_dma_tag_t t0 = t;
 int r;
 while (t->_dmamem_map == ((void *)0)) { t = t->_parent; };
 r = (*(t)->_dmamem_map)(t, t0, sg, n, s, k, f);
 ;
 return (r);
}
static inline void
bus_dmamem_unmap(bus_dma_tag_t t, caddr_t k, size_t s)
{
 const bus_dma_tag_t t0 = t;
 while (t->_dmamem_unmap == ((void *)0)) { t = t->_parent; };
 (*(t)->_dmamem_unmap)(t, t0, k, s);
 ;
}
static inline paddr_t
bus_dmamem_mmap(bus_dma_tag_t t, bus_dma_segment_t *sg, int n, off_t o, int p,
    int f)
{
 const bus_dma_tag_t t0 = t;
 int r;
 while (t->_dmamem_mmap == ((void *)0)) { t = t->_parent; };
 r = (*(t)->_dmamem_mmap)(t, t0, sg, n, o, p, f);
 ;
 return (r);
}
struct sparc_bus_dmamap {
 bus_addr_t _dm_dvmastart;
 bus_size_t _dm_dvmasize;
 bus_size_t _dm_size;
 bus_size_t _dm_maxsegsz;
 bus_size_t _dm_boundary;
 int _dm_segcnt;
 int _dm_flags;
 int _dm_type;
 void *_dm_source;
 void *_dm_cookie;
 bus_size_t dm_mapsize;
 int dm_nsegs;
 bus_dma_segment_t dm_segs[1];
};
struct openbsd_bootdata {
 u_int64_t version;
 u_int64_t len;
 u_int8_t sr_uuid[16];
 u_int8_t sr_maskkey[32];
} __attribute__((__packed__));
struct sbus_softc;
struct sbus_reg {
 u_int32_t sbr_slot;
 u_int32_t sbr_offset;
 u_int32_t sbr_size;
};
struct sbus_intr {
 u_int32_t sbi_pri;
 u_int32_t sbi_vec;
};
struct sbus_range {
 u_int32_t cspace;
 u_int32_t coffset;
 u_int32_t pspace;
 u_int32_t poffset;
 u_int32_t size;
};
struct sbus_attach_args {
 int sa_placeholder;
 bus_space_tag_t sa_bustag;
 bus_dma_tag_t sa_dmatag;
 char *sa_name;
 int sa_node;
 struct sbus_reg *sa_reg;
 int sa_nreg;
 struct sbus_intr *sa_intr;
 int sa_nintr;
 u_int32_t *sa_promvaddrs;
 int sa_npromvaddrs;
 int sa_frequency;
};
int sbus_print(void *, const char *);
int sbus_setup_attach_args(
  struct sbus_softc *,
  bus_space_tag_t,
  bus_dma_tag_t,
  int,
  struct sbus_attach_args *);
void sbus_destroy_attach_args(struct sbus_attach_args *);
struct extent_region {
 struct { struct extent_region *le_next; struct extent_region **le_prev; } er_link;
 u_long er_start;
 u_long er_end;
 int er_flags;
};
struct extent {
 char *ex_name;
 struct { struct extent_region *lh_first; } ex_regions;
 u_long ex_start;
 u_long ex_end;
 int ex_mtype;
 int ex_flags;
 struct { struct extent *le_next; struct extent **le_prev; } ex_link;
};
struct extent_fixed {
 struct extent fex_extent;
 struct { struct extent_region *lh_first; } fex_freelist;
 caddr_t fex_storage;
 size_t fex_storagesize;
};
void extent_print_all(void);
struct extent *extent_create(char *, u_long, u_long, int,
     caddr_t, size_t, int);
void extent_destroy(struct extent *);
int extent_alloc_subregion(struct extent *, u_long, u_long,
     u_long, u_long, u_long, u_long, int, u_long *);
int extent_alloc_subregion_with_descr(struct extent *, u_long, u_long,
     u_long, u_long, u_long, u_long, int, struct extent_region *,
     u_long *);
int extent_alloc_region(struct extent *, u_long, u_long, int);
int extent_free(struct extent *, u_long, u_long, int);
void extent_print(struct extent *);
struct strbuf_ctl {
 bus_space_tag_t sb_bustag;
 bus_space_handle_t sb_sb;
 struct iommu_state *sb_iommu;
 struct mutex sb_mtx;
 paddr_t sb_flushpa;
 volatile int64_t *sb_flush;
};
struct strbuf_flush {
 char sbf_area[0x80];
 void *sbf_flush;
 paddr_t sbf_flushpa;
};
struct iommu_page_entry {
 struct { struct iommu_page_entry *spe_left; struct iommu_page_entry *spe_right; } ipe_node;
 paddr_t ipe_pa;
 bus_addr_t ipe_va;
};
struct iommu_page_map {
 struct iommu_page_tree { struct iommu_page_entry *sph_root; } ipm_tree;
 int ipm_maxpage;
 int ipm_pagecnt;
 struct iommu_page_entry ipm_map[1];
};
struct iommu_map_state {
 struct strbuf_flush ims_flush;
 struct strbuf_ctl *ims_sb;
 struct iommu_state *ims_iommu;
 int ims_flags;
 struct extent_region ims_er;
 struct iommu_page_map ims_map;
};
struct iommu_state {
 paddr_t is_ptsb;
 int64_t *is_tsb;
 int is_tsbsize;
 u_int is_dvmabase;
 u_int is_dvmaend;
 int64_t is_cr;
 struct mutex is_mtx;
 struct extent *is_dvmamap;
 int is_flags;
 struct strbuf_ctl *is_sb[2];
 paddr_t is_scratch;
 bus_space_tag_t is_bustag;
 bus_space_handle_t is_iommu;
 uint64_t is_devhandle;
};
void iommu_init(char *, struct iommu_state *, int, u_int32_t);
void iommu_reset(struct iommu_state *);
paddr_t iommu_extract(struct iommu_state *, bus_addr_t);
int64_t iommu_lookup_tte(struct iommu_state *, bus_addr_t);
int64_t iommu_fetch_tte(struct iommu_state *, paddr_t);
int iommu_dvmamap_create(bus_dma_tag_t, bus_dma_tag_t, struct strbuf_ctl *,
     bus_size_t, int, bus_size_t, bus_size_t, int, bus_dmamap_t *);
void iommu_dvmamap_destroy(bus_dma_tag_t, bus_dma_tag_t, bus_dmamap_t);
int iommu_dvmamap_load(bus_dma_tag_t, bus_dma_tag_t, bus_dmamap_t, void *,
     bus_size_t, struct proc *, int);
void iommu_dvmamap_unload(bus_dma_tag_t, bus_dma_tag_t, bus_dmamap_t);
int iommu_dvmamap_load_raw(bus_dma_tag_t, bus_dma_tag_t, bus_dmamap_t,
     bus_dma_segment_t *, int, bus_size_t, int);
void iommu_dvmamap_sync(bus_dma_tag_t, bus_dma_tag_t, bus_dmamap_t,
     bus_addr_t, bus_size_t, int);
int iommu_dvmamem_alloc(bus_dma_tag_t, bus_dma_tag_t, bus_size_t,
     bus_size_t, bus_size_t, bus_dma_segment_t *, int, int *, int);
void iommu_dvmamem_free(bus_dma_tag_t, bus_dma_tag_t, bus_dma_segment_t *,
     int);
struct sbus_softc {
 struct device sc_dev;
 bus_space_tag_t sc_bustag;
 bus_space_handle_t sc_bh;
 bus_dma_tag_t sc_dmatag;
 int sc_clockfreq;
 struct sbus_range *sc_range;
 int sc_nrange;
 int sc_burst;
 int *sc_intr2ipl;
 int *sc_intr_compat;
 int sc_ign;
 struct iommu_state sc_is;
 struct strbuf_ctl sc_sb;
 int64_t sc_flush;
 struct sbus_softc *sc_master;
};
bus_addr_t sbus_bus_addr(bus_space_tag_t, u_int, u_int);
struct iommureg {
 volatile u_int64_t iommu_cr;
 volatile u_int64_t iommu_tsb;
 volatile u_int64_t iommu_flush;
 volatile u_int64_t iommu_ctxflush;
 volatile u_int64_t iommu_reserved[28];
 volatile u_int64_t iommu_cache_flush;
 volatile u_int64_t iommu_cache_invalidate;
 volatile u_int64_t iommu_reserved2[30];
};
struct iommu_strbuf {
 volatile u_int64_t strbuf_ctl;
 volatile u_int64_t strbuf_pgflush;
 volatile u_int64_t strbuf_flushsync;
};
struct intrmap {
 char *in_class;
 int in_lev;
};
extern struct intrmap intrmap[];
struct upa_reg {
 int64_t ur_paddr;
 int64_t ur_len;
};
struct mainbus_attach_args {
 bus_space_tag_t ma_bustag;
 bus_dma_tag_t ma_dmatag;
 char *ma_name;
 struct upa_reg *ma_reg;
 u_int *ma_address;
 u_int *ma_interrupts;
 int ma_upaid;
 int ma_node;
 int ma_nreg;
 int ma_naddress;
 int ma_ninterrupts;
 int ma_pri;
};
long getproplen(int node, char *name);
int getprop(int, char *, size_t, int *, void **);
char *getpropstring(int node, char *name);
int getpropint(int node, char *name, int deflt);
int getpropspeed(int node, char *name);
extern int optionsnode;
char *getpropstringA(int, char *, char *);
char *clockfreq(long freq);
struct device;
struct bootpath {
 int node;
 char name[16];
 long val[3];
 struct device *dev;
};
struct bootpath *bootpath_store(int, struct bootpath *);
void mountroot_hook_establish(void (*)(struct device *), struct device *);
void bootstrap(int);
int firstchild(int);
int nextsibling(int);
void callrom(void);
struct device *getdevunit(char *, int);
void *findzs(int);
int romgetcursoraddr(int **, int **);
int findroot(void);
int findnode(int, const char *);
int checkstatus(int);
int node_has_property(int, const char *);
void device_register(struct device *, void *);
int64_t hv_api_get_version(uint64_t api_group,
     uint64_t *major_number, uint64_t *minor_number);
int64_t hv_mach_desc(paddr_t buffer, psize_t *length);
void hv_cpu_yield(void);
int64_t hv_cpu_qconf(uint64_t queue, uint64_t base, uint64_t nentries);
int64_t hv_cpu_mondo_send(uint64_t ncpus, paddr_t cpulist, paddr_t data);
int64_t hv_cpu_myid(uint64_t *cpuid);
int64_t hv_mmu_demap_page(vaddr_t vaddr, uint64_t context, uint64_t flags);
int64_t hv_mmu_demap_ctx(uint64_t context, uint64_t flags);
int64_t hv_mmu_demap_all(uint64_t flags);
int64_t hv_mmu_map_perm_addr(vaddr_t vaddr, uint64_t tte, uint64_t flags);
int64_t hv_mmu_unmap_perm_addr(vaddr_t vaddr, uint64_t flags);
int64_t hv_mmu_map_addr(vaddr_t vaddr, uint64_t context, uint64_t tte,
     uint64_t flags);
int64_t hv_mmu_unmap_addr(vaddr_t vaddr, uint64_t context, uint64_t flags);
struct tsb_desc {
 uint16_t td_idxpgsz;
 uint16_t td_assoc;
 uint32_t td_size;
 uint32_t td_ctxidx;
 uint32_t td_pgsz;
 paddr_t td_pa;
 uint64_t td_reserved;
};
int64_t hv_mmu_tsb_ctx0(uint64_t ntsb, paddr_t tsbptr);
int64_t hv_mmu_tsb_ctxnon0(uint64_t ntsb, paddr_t tsbptr);
int64_t hv_mem_scrub(paddr_t raddr, psize_t length);
int64_t hv_mem_sync(paddr_t raddr, psize_t length);
int64_t hv_intr_devino_to_sysino(uint64_t devhandle, uint64_t devino,
     uint64_t *sysino);
int64_t hv_intr_getenabled(uint64_t sysino, uint64_t *intr_enabled);
int64_t hv_intr_setenabled(uint64_t sysino, uint64_t intr_enabled);
int64_t hv_intr_getstate(uint64_t sysino, uint64_t *intr_state);
int64_t hv_intr_setstate(uint64_t sysino, uint64_t intr_state);
int64_t hv_intr_gettarget(uint64_t sysino, uint64_t *cpuid);
int64_t hv_intr_settarget(uint64_t sysino, uint64_t cpuid);
int64_t hv_vintr_getcookie(uint64_t devhandle, uint64_t devino,
     uint64_t *cookie_value);
int64_t hv_vintr_setcookie(uint64_t devhandle, uint64_t devino,
     uint64_t cookie_value);
int64_t hv_vintr_getenabled(uint64_t devhandle, uint64_t devino,
     uint64_t *intr_enabled);
int64_t hv_vintr_setenabled(uint64_t devhandle, uint64_t devino,
     uint64_t intr_enabled);
int64_t hv_vintr_getstate(uint64_t devhandle, uint64_t devino,
     uint64_t *intr_state);
int64_t hv_vintr_setstate(uint64_t devhandle, uint64_t devino,
     uint64_t intr_state);
int64_t hv_vintr_gettarget(uint64_t devhandle, uint64_t devino,
     uint64_t *cpuid);
int64_t hv_vintr_settarget(uint64_t devhandle, uint64_t devino,
     uint64_t cpuid);
int64_t hv_tod_get(uint64_t *tod);
int64_t hv_tod_set(uint64_t tod);
int64_t hv_cons_getchar(int64_t *ch);
int64_t hv_cons_putchar(int64_t ch);
int64_t hv_api_putchar(int64_t ch);
int64_t hv_soft_state_set(uint64_t software_state,
     paddr_t software_description_ptr);
int64_t hv_pci_iommu_map(uint64_t devhandle, uint64_t tsbid,
     uint64_t nttes, uint64_t io_attributes, paddr_t io_page_list_p,
     uint64_t *nttes_mapped);
int64_t hv_pci_iommu_demap(uint64_t devhandle, uint64_t tsbid,
     uint64_t nttes, uint64_t *nttes_demapped);
int64_t hv_pci_iommu_getmap(uint64_t devhandle, uint64_t tsbid,
     uint64_t *io_attributes, paddr_t *r_addr);
int64_t hv_pci_iommu_getbypass(uint64_t devhandle, paddr_t r_addr,
     uint64_t io_attributes, uint64_t *io_addr);
int64_t hv_pci_config_get(uint64_t devhandle, uint64_t pci_device,
            uint64_t pci_config_offset, uint64_t size,
     uint64_t *error_flag, uint64_t *data);
int64_t hv_pci_config_put(uint64_t devhandle, uint64_t pci_device,
            uint64_t pci_config_offset, uint64_t size, uint64_t data,
     uint64_t *error_flag);
int64_t hv_pci_msiq_conf(uint64_t devhandle, uint64_t msiqid,
     uint64_t r_addr, uint64_t nentries);
int64_t hv_pci_msiq_info(uint64_t devhandle, uint64_t msiqid,
     uint64_t *r_addr, uint64_t *nentries);
int64_t hv_pci_msiq_getvalid(uint64_t devhandle, uint64_t msiqid,
     uint64_t *msiqvalid);
int64_t hv_pci_msiq_setvalid(uint64_t devhandle, uint64_t msiqid,
     uint64_t msiqvalid);
int64_t hv_pci_msiq_getstate(uint64_t devhandle, uint64_t msiqid,
     uint64_t *msiqstate);
int64_t hv_pci_msiq_setstate(uint64_t devhandle, uint64_t msiqid,
     uint64_t msiqstate);
int64_t hv_pci_msiq_gethead(uint64_t devhandle, uint64_t msiqid,
     uint64_t *msiqhead);
int64_t hv_pci_msiq_sethead(uint64_t devhandle, uint64_t msiqid,
     uint64_t msiqhead);
int64_t hv_pci_msiq_gettail(uint64_t devhandle, uint64_t msiqid,
     uint64_t *msiqtail);
int64_t hv_pci_msi_getvalid(uint64_t devhandle, uint64_t msinum,
     uint64_t *msivalidstate);
int64_t hv_pci_msi_setvalid(uint64_t devhandle, uint64_t msinum,
     uint64_t msivalidstate);
int64_t hv_pci_msi_getmsiq(uint64_t devhandle, uint64_t msinum,
     uint64_t *msiqid);
int64_t hv_pci_msi_setmsiq(uint64_t devhandle, uint64_t msinum,
     uint64_t msitype, uint64_t msiqid);
int64_t hv_pci_msi_getstate(uint64_t devhandle, uint64_t msinum,
     uint64_t *msistate);
int64_t hv_pci_msi_setstate(uint64_t devhandle, uint64_t msinum,
     uint64_t msistate);
int64_t hv_pci_msg_getmsiq(uint64_t devhandle, uint64_t msg,
     uint64_t *msiqid);
int64_t hv_pci_msg_setmsiq(uint64_t devhandle, uint64_t msg,
     uint64_t msiqid);
int64_t hv_pci_msg_getvalid(uint64_t devhandle, uint64_t msg,
     uint64_t *msgvalidstate);
int64_t hv_pci_msg_setvalid(uint64_t devhandle, uint64_t msg,
     uint64_t msgvalidstate);
int64_t hv_ldc_tx_qconf(uint64_t ldc_id, paddr_t base_raddr,
     uint64_t nentries);
int64_t hv_ldc_tx_qinfo(uint64_t ldc_id, paddr_t *base_raddr,
     uint64_t *nentries);
int64_t hv_ldc_tx_get_state(uint64_t ldc_id, uint64_t *head_offset,
     uint64_t *tail_offset, uint64_t *channel_state);
int64_t hv_ldc_tx_set_qtail(uint64_t ldc_id, uint64_t tail_offset);
int64_t hv_ldc_rx_qconf(uint64_t ldc_id, paddr_t base_raddr,
     uint64_t nentries);
int64_t hv_ldc_rx_qinfo(uint64_t ldc_id, paddr_t *base_raddr,
     uint64_t *nentries);
int64_t hv_ldc_rx_get_state(uint64_t ldc_id, uint64_t *head_offset,
     uint64_t *tail_offset, uint64_t *channel_state);
int64_t hv_ldc_rx_set_qhead(uint64_t ldc_id, uint64_t head_offset);
int64_t hv_ldc_set_map_table(uint64_t ldc_id, paddr_t base_raddr,
     uint64_t nentries);
int64_t hv_ldc_get_map_table(uint64_t ldc_id, paddr_t *base_raddr,
     uint64_t *nentries);
int64_t hv_ldc_copy(uint64_t ldc_id, uint64_t flags, uint64_t cookie,
     paddr_t raddr, psize_t length, psize_t *ret_length);
int64_t hv_ldc_mapin(uint64_t ldc_id, uint64_t cookie, paddr_t *raddr,
     uint64_t *perms);
int64_t hv_ldc_unmap(paddr_t raddr, uint64_t *perms);
int64_t hv_rng_get_diag_control(void);
int64_t hv_rng_ctl_read(paddr_t raddr, uint64_t *state, uint64_t *delta);
int64_t hv_rng_ctl_write(paddr_t raddr, uint64_t state, uint64_t timeout,
 uint64_t *delta);
int64_t hv_rng_data_read_diag(paddr_t raddr, uint64_t size, uint64_t *delta);
int64_t hv_rng_data_read(paddr_t raddr, uint64_t *delta);
extern uint64_t sun4v_group_interrupt_major;
int64_t sun4v_intr_devino_to_sysino(uint64_t, uint64_t, uint64_t *);
int64_t sun4v_intr_setcookie(uint64_t, uint64_t, uint64_t);
int64_t sun4v_intr_setenabled(uint64_t, uint64_t, uint64_t);
int64_t sun4v_intr_setstate(uint64_t, uint64_t, uint64_t);
int64_t sun4v_intr_settarget(uint64_t, uint64_t, uint64_t);
struct md_header {
 uint32_t transport_version;
 uint32_t node_blk_sz;
 uint32_t name_blk_sz;
 uint32_t data_blk_sz;
};
struct md_element {
 uint8_t tag;
 uint8_t name_len;
 uint16_t _reserved_field;
 uint32_t name_offset;
 union {
  struct {
   uint32_t data_len;
   uint32_t data_offset;
  } y;
  uint64_t val;
 } d;
};
extern caddr_t mdesc;
extern size_t mdesc_len;
void mdesc_init(void);
uint64_t mdesc_get_prop_val(int, const char *);
const char *mdesc_get_prop_str(int, const char *);
const char *mdesc_get_prop_data(int, const char *, size_t *);
int mdesc_find(const char *, uint64_t);
int mdesc_find_child(int, const char *, uint64_t);
int mdesc_find_node(const char *);
int openfirmware(void *);
extern char OF_buf[];
int OF_peer(int phandle);
int OF_child(int phandle);
int OF_parent(int phandle);
int OF_instance_to_package(int ihandle);
int OF_getproplen(int handle, char *prop);
int OF_getprop(int handle, char *prop, void *buf, int buflen);
uint32_t OF_getpropint(int handle, char *, uint32_t);
int OF_getpropintarray(int, char *, uint32_t *, int);
uint64_t OF_getpropint64(int handle, char *, uint64_t);
int OF_setprop(int, char *, const void *, int);
int OF_nextprop(int, char *, void *);
int OF_finddevice(char *name);
int OF_is_compatible(int, const char *);
int OF_instance_to_path(int ihandle, char *buf, int buflen);
int OF_package_to_path(int phandle, char *buf, int buflen);
int OF_call_method_1(char *method, int ihandle, int nargs, ...);
int OF_call_method(char *method, int ihandle, int nargs, int nreturns, ...);
int OF_open(char *dname);
void OF_close(int handle);
int OF_read(int handle, void *addr, int len);
int OF_write(int handle, void *addr, int len);
int OF_seek(int handle, u_quad_t pos);
void OF_boot(char *bootspec);
void OF_enter(void);
void OF_exit(void) __attribute__((__noreturn__));
int OF_interpret(char *cmd, int nreturns, ...);
int OF_getnodebyname(int, const char *);
int OF_getnodebyphandle(uint32_t);
int OF_getindex(int, const char *, const char *);
int ofnmmatch(char *cp1, char *cp2);
void ofw_intr_establish(void);
struct ofprobe {
 int phandle;
 int unit;
};
struct ofb_softc {
 struct device sc_dev;
 int sc_phandle;
 int sc_unit;
};
typedef u_int64_t cell_t;
int OF_test (char *service);
int OF_test_method (int handle, char *method);
int OF_getproplen (int handle, char *prop);
int OF_stdin (void);
int OF_stdout (void);
void OF_set_symbol_lookup (void (*s2v)(void *), void (*v2s)(void *));
void OF_poweroff (void);
void OF_sym2val (void *);
void OF_val2sym (void *);
int OF_milliseconds (void);
int OF_searchprop (int node, char *prop, void *buf, int buflen);
int OF_mapintr(int node, int *interrupt, int validlen, int buflen);
void (*OF_set_callback(void (*)(void *)))(void *);
struct mem_region {
 u_int64_t start;
 u_int64_t size;
};
int prom_set_trap_table(vaddr_t tba, paddr_t mmfsa);
paddr_t prom_vtop(vaddr_t vaddr);
vaddr_t prom_claim_virt(vaddr_t vaddr, int len);
vaddr_t prom_alloc_virt(int len, int align);
int prom_free_virt(vaddr_t vaddr, int len);
int prom_unmap_virt(vaddr_t vaddr, int len);
int prom_map_phys(paddr_t paddr, off_t size, vaddr_t vaddr, int mode);
paddr_t prom_alloc_phys(int len, int align);
paddr_t prom_claim_phys(paddr_t phys, int len);
int prom_free_phys(paddr_t paddr, int len);
paddr_t prom_get_msgbuf(int len, int align);
int prom_itlb_load(int index, u_int64_t data, vaddr_t vaddr);
int prom_dtlb_load(int index, u_int64_t data, vaddr_t vaddr);
void prom_start_cpu(int cpu, void *func, long arg);
void prom_start_cpu_by_cpuid(int cpu, void *func, long arg);
const char *prom_serengeti_set_console_input(const char *);
time_t prom_opl_get_tod(void);
uint64_t prom_set_sun4v_api_version(uint64_t, uint64_t, uint64_t, uint64_t *);
void prom_sun4v_soft_state_supported(void);
void prom_printf(const char *, ...);
enum vactype { VAC_NONE, VAC_WRITETHROUGH, VAC_WRITEBACK };
extern enum vactype vactype;
void cache_enable(void);
int cache_flush_page(paddr_t);
int cache_flush(vaddr_t, vsize_t);
void us_dcache_flush_page(paddr_t);
void us3_dcache_flush_page(paddr_t);
void no_dcache_flush_page(paddr_t);
void cache_flush_virt(vaddr_t, vsize_t);
void cache_flush_phys(paddr_t, psize_t, int);
struct cacheinfo {
 void (*c_dcache_flush_page)(paddr_t);
 int c_totalsize;
 int c_enabled;
 int c_hwflush;
 int c_linesize;
 int c_l2linesize;
 int c_physical;
 int c_split;
 int ic_totalsize;
 int ic_enabled;
 int ic_linesize;
 int ic_l2linesize;
 int dc_totalsize;
 int dc_enabled;
 int dc_linesize;
 int dc_l2linesize;
 int ec_totalsize;
 int ec_enabled;
 int ec_linesize;
 int ec_l2linesize;
};
extern struct cacheinfo cacheinfo;
struct cachestats {
 int cs_npgflush;
 int cs_nraflush;
};
struct timer_4u {
 volatile int64_t t_count;
 volatile int64_t t_limit;
};
struct timerreg_4u {
 struct timer_4u *t_timer;
 volatile int64_t *t_clrintr;
 volatile int64_t *t_mapintr;
};
struct vbus_attach_args {
 char *va_name;
 int va_node;
 bus_space_tag_t va_bustag;
 bus_dma_tag_t va_dmatag;
 u_int32_t *va_reg;
 u_int32_t *va_intr;
 int va_nreg;
 int va_nintr;
};
int vbus_intr_map(int, int, uint64_t *);
struct cbus_attach_args {
 const char *ca_name;
 int ca_node;
 int ca_idx;
 bus_space_tag_t ca_bustag;
 bus_dma_tag_t ca_dmatag;
 u_int32_t *ca_reg;
 int ca_nreg;
 u_int64_t ca_id;
 u_int64_t ca_tx_ino;
 u_int64_t ca_rx_ino;
};
int cbus_print(void *, const char *);
int cbus_intr_setstate(bus_space_tag_t, uint64_t, uint64_t);
int cbus_intr_setenabled(bus_space_tag_t, uint64_t, uint64_t);
typedef struct _boot_args {
 int ba_type;
 size_t ba_size;
 struct _boot_args *ba_next;
 int ba_arg[1];
} bootarg_t;
extern void *bootargv;
extern int bootargc;
extern bootarg_t *bootargp;
void loadrandom(char *name, char *buf, size_t buflen);
int mdrandom(char *buf, size_t buflen);
struct ataparams {
    u_int16_t atap_config;
    u_int16_t atap_cylinders;
    u_int16_t __reserved1;
    u_int16_t atap_heads;
    u_int16_t __retired1[2];
    u_int16_t atap_sectors;
    u_int16_t __retired2[3];
    u_int8_t atap_serial[20];
    u_int16_t __retired3[2];
    u_int16_t __obsolete1;
    u_int8_t atap_revision[8];
    u_int8_t atap_model[40];
    u_int16_t atap_multi;
    u_int16_t __reserved2;
    u_int16_t atap_capabilities1;
    u_int16_t atap_capabilities2;
    u_int8_t atap_oldpiotiming;
    u_int8_t __junk2;
    u_int8_t atap_olddmatiming;
    u_int8_t __junk3;
    u_int16_t atap_extensions;
    u_int16_t atap_curcylinders;
    u_int16_t atap_curheads;
    u_int16_t atap_cursectors;
    u_int16_t atap_curcapacity[2];
    u_int16_t atap_curmulti;
    u_int16_t atap_capacity[2];
    u_int16_t __retired4;
    u_int8_t atap_dmamode_act;
    u_int8_t atap_dmamode_supp;
    u_int8_t __junk4;
    u_int8_t atap_piomode_supp;
    u_int16_t atap_dmatiming_mimi;
    u_int16_t atap_dmatiming_recom;
    u_int16_t atap_piotiming;
    u_int16_t atap_piotiming_iordy;
    u_int16_t __reserved3[2];
    u_int16_t atap_pkt_br;
    u_int16_t atap_pkt_bsyclr;
    u_int16_t __reserved4[2];
    u_int16_t atap_queuedepth;
    u_int16_t atap_sata_caps;
    u_int16_t atap_sata_reserved;
    u_int16_t atap_sata_features_supp;
    u_int16_t atap_sata_features_en;
    u_int16_t atap_ata_major;
    u_int16_t atap_ata_minor;
    u_int16_t atap_cmd_set1;
    u_int16_t atap_cmd_set2;
    u_int16_t atap_cmd_ext;
    u_int16_t atap_cmd1_en;
    u_int16_t atap_cmd2_en;
    u_int16_t atap_cmd_def;
    u_int8_t atap_udmamode_act;
    u_int8_t atap_udmamode_supp;
    u_int16_t atap_seu_time;
    u_int16_t atap_eseu_time;
    u_int16_t atap_apm_val;
    u_int16_t atap_mpasswd_rev;
    u_int16_t atap_hwreset_res;
    u_int8_t atap_acoustic_def;
    u_int8_t atap_acoustic_val;
    u_int16_t __reserved6[5];
    u_int16_t atap_max_lba[4];
    u_int16_t __reserved7[23];
    u_int16_t atap_rmsn_supp;
    u_int16_t atap_sec_st;
    u_int16_t __reserved8[31];
    u_int16_t atap_cfa_power;
    u_int16_t __reserved9[15];
    u_int8_t atap_media_serial[60];
    u_int16_t __reserved10[49];
    u_int8_t atap_checksum;
    u_int8_t atap_signature;
};
struct ata_drive_datas {
 u_int8_t drive;
 int8_t ata_vers;
 u_int16_t drive_flags;
 u_int8_t PIO_mode;
 u_int8_t DMA_mode;
 u_int8_t UDMA_mode;
 u_int8_t PIO_cap;
 u_int8_t DMA_cap;
 u_int8_t UDMA_cap;
 u_int8_t state;
 u_int8_t atapi_cap;
 u_int8_t n_resets;
 u_int8_t n_dmaerrs;
 u_int32_t n_xfers;
 char drive_name[31];
 int cf_flags;
 void *chnl_softc;
 struct ataparams id;
};
struct ata_atapi_attach {
    u_int8_t aa_type;
    u_int8_t aa_channel;
    u_int8_t aa_openings;
    struct ata_drive_datas *aa_drv_data;
    void *aa_bus_private;
};
struct wdc_command {
    u_int8_t r_command;
    u_int8_t r_head;
    u_int16_t r_cyl;
    u_int8_t r_sector;
    u_int8_t r_count;
    u_int8_t r_features;
    u_int8_t r_st_bmask;
    u_int8_t r_st_pmask;
    u_int8_t r_error;
    volatile u_int16_t flags;
    int timeout;
    void *data;
    int bcount;
    void (*callback)(void *);
    void *callback_arg;
};
extern int at_poll;
int wdc_exec_command(struct ata_drive_datas *, struct wdc_command*);
void wdc_probe_caps(struct ata_drive_datas*, struct ataparams *);
void wdc_print_caps(struct ata_drive_datas*);
int wdc_downgrade_mode(struct ata_drive_datas*);
void wdc_reset_channel(struct ata_drive_datas *, int);
int wdc_ata_addref(struct ata_drive_datas *);
void wdc_ata_delref(struct ata_drive_datas *);
void wdc_ata_kill_pending(struct ata_drive_datas *);
int ata_get_params(struct ata_drive_datas*, u_int8_t,
 struct ataparams *);
int ata_set_mode(struct ata_drive_datas*, u_int8_t, u_int8_t);
void ata_dmaerr(struct ata_drive_datas *);
void ata_perror(struct ata_drive_datas *, int, char *, size_t);
typedef u_int16_t pci_vendor_id_t;
typedef u_int16_t pci_product_id_t;
typedef u_int8_t pci_class_t;
typedef u_int8_t pci_subclass_t;
typedef u_int8_t pci_interface_t;
typedef u_int8_t pci_revision_t;
typedef u_int8_t pci_intr_pin_t;
typedef u_int8_t pci_intr_line_t;
struct pci_vpd_smallres {
 uint8_t vpdres_byte0;
} __attribute__((__packed__));
struct pci_vpd_largeres {
 uint8_t vpdres_byte0;
 uint8_t vpdres_len_lsb;
 uint8_t vpdres_len_msb;
} __attribute__((__packed__));
struct pci_vpd {
 uint8_t vpd_key0;
 uint8_t vpd_key1;
 uint8_t vpd_len;
} __attribute__((__packed__));
typedef u_int32_t pcireg_t;
struct pcibus_attach_args;
struct pci_softc;
struct pci_attach_args;
typedef struct sparc_pci_chipset *pci_chipset_tag_t;
typedef u_int pci_intr_handle_t;
typedef u_int64_t pcitag_t;
struct sparc_pci_chipset {
 void *cookie;
 bus_space_tag_t bustag;
 bus_space_handle_t bushandle;
 int rootnode;
 int busnode[256];
 int (*conf_size)(pci_chipset_tag_t, pcitag_t);
 pcireg_t (*conf_read)(pci_chipset_tag_t, pcitag_t, int);
 void (*conf_write)(pci_chipset_tag_t, pcitag_t, int, pcireg_t);
 int (*intr_map)(struct pci_attach_args *, pci_intr_handle_t *);
};
void pci_attach_hook(struct device *, struct device *,
         struct pcibus_attach_args *);
int pci_bus_maxdevs(pci_chipset_tag_t, int);
pcitag_t pci_make_tag(pci_chipset_tag_t, int, int, int);
void pci_decompose_tag(pci_chipset_tag_t, pcitag_t, int *, int *,
      int *);
int pci_conf_size(pci_chipset_tag_t, pcitag_t);
pcireg_t pci_conf_read(pci_chipset_tag_t, pcitag_t, int);
void pci_conf_write(pci_chipset_tag_t, pcitag_t, int,
        pcireg_t);
int pci_intr_map(struct pci_attach_args *, pci_intr_handle_t *);
int pci_intr_map_msi(struct pci_attach_args *, pci_intr_handle_t *);
int pci_intr_line(pci_chipset_tag_t, pci_intr_handle_t);
const char *pci_intr_string(pci_chipset_tag_t, pci_intr_handle_t);
void *pci_intr_establish(pci_chipset_tag_t, pci_intr_handle_t,
     int, int (*)(void *), void *, const char *);
void pci_intr_disestablish(pci_chipset_tag_t, void *);
void pci_msi_enable(pci_chipset_tag_t, pcitag_t, bus_addr_t, int);
int sparc64_pci_enumerate_bus(struct pci_softc *,
      int (*match)(struct pci_attach_args *),
      struct pci_attach_args *);
struct pcibus_attach_args {
 char *pba_busname;
 bus_space_tag_t pba_iot;
 bus_space_tag_t pba_memt;
 bus_dma_tag_t pba_dmat;
 pci_chipset_tag_t pba_pc;
 int pba_flags;
 struct extent *pba_ioex;
 struct extent *pba_memex;
 struct extent *pba_pmemex;
 struct extent *pba_busex;
 int pba_domain;
 int pba_bus;
 pcitag_t *pba_bridgetag;
 pci_intr_handle_t *pba_bridgeih;
 u_int pba_intrswiz;
 pcitag_t pba_intrtag;
};
struct pci_attach_args {
 bus_space_tag_t pa_iot;
 bus_space_tag_t pa_memt;
 bus_dma_tag_t pa_dmat;
 pci_chipset_tag_t pa_pc;
 int pa_flags;
 struct extent *pa_ioex;
 struct extent *pa_memex;
 struct extent *pa_pmemex;
 struct extent *pa_busex;
 u_int pa_domain;
 u_int pa_bus;
 u_int pa_device;
 u_int pa_function;
 pcitag_t pa_tag;
 pcireg_t pa_id, pa_class;
 pcitag_t *pa_bridgetag;
 pci_intr_handle_t *pa_bridgeih;
 u_int pa_intrswiz;
 pcitag_t pa_intrtag;
 pci_intr_pin_t pa_intrpin;
 pci_intr_line_t pa_intrline;
 pci_intr_pin_t pa_rawintrpin;
};
struct pci_quirkdata {
 pci_vendor_id_t vendor;
 pci_product_id_t product;
 int quirks;
};
struct pci_softc {
 struct device sc_dev;
 bus_space_tag_t sc_iot, sc_memt;
 bus_dma_tag_t sc_dmat;
 pci_chipset_tag_t sc_pc;
 int sc_flags;
 struct extent *sc_ioex;
 struct extent *sc_memex;
 struct extent *sc_pmemex;
 struct extent *sc_busex;
 struct { struct pci_dev *lh_first; } sc_devs;
 int sc_domain, sc_bus, sc_maxndevs;
 pcitag_t *sc_bridgetag;
 pci_intr_handle_t *sc_bridgeih;
 u_int sc_intrswiz;
 pcitag_t sc_intrtag;
};
extern int pci_ndomains;
extern int pci_dopm;
int pci_mapreg_probe(pci_chipset_tag_t, pcitag_t, int, pcireg_t *);
pcireg_t pci_mapreg_type(pci_chipset_tag_t, pcitag_t, int);
int pci_mapreg_info(pci_chipset_tag_t, pcitag_t, int, pcireg_t,
     bus_addr_t *, bus_size_t *, int *);
int pci_mapreg_map(struct pci_attach_args *, int, pcireg_t, int,
     bus_space_tag_t *, bus_space_handle_t *, bus_addr_t *,
     bus_size_t *, bus_size_t);
int pci_io_find(pci_chipset_tag_t, pcitag_t, int, bus_addr_t *,
     bus_size_t *);
int pci_mem_find(pci_chipset_tag_t, pcitag_t, int, bus_addr_t *,
     bus_size_t *, int *);
int pci_get_capability(pci_chipset_tag_t, pcitag_t, int,
     int *, pcireg_t *);
int pci_get_ht_capability(pci_chipset_tag_t, pcitag_t, int,
     int *, pcireg_t *);
struct pci_matchid {
 pci_vendor_id_t pm_vid;
 pci_product_id_t pm_pid;
};
int pci_matchbyid(struct pci_attach_args *, const struct pci_matchid *, int);
int pci_get_powerstate(pci_chipset_tag_t, pcitag_t);
int pci_set_powerstate(pci_chipset_tag_t, pcitag_t, int);
void pci_disable_legacy_vga(struct device *);
int pci_vpd_read(pci_chipset_tag_t, pcitag_t, int, int, pcireg_t *);
int pci_vpd_write(pci_chipset_tag_t, pcitag_t, int, int, pcireg_t *);
const char *pci_findvendor(pcireg_t);
const char *pci_findproduct(pcireg_t);
int pci_find_device(struct pci_attach_args *pa,
     int (*match)(struct pci_attach_args *));
int pci_probe_device(struct pci_softc *, pcitag_t tag,
     int (*)(struct pci_attach_args *), struct pci_attach_args *);
int pci_detach_devices(struct pci_softc *, int);
void pci_devinfo(pcireg_t, pcireg_t, int, char *, size_t);
const struct pci_quirkdata *
 pci_lookup_quirkdata(pci_vendor_id_t, pci_product_id_t);
void pciagp_set_pchb(struct pci_attach_args *);
struct scsi_generic {
 u_int8_t opcode;
 u_int8_t bytes[15];
};
struct scsi_test_unit_ready {
 u_int8_t opcode;
 u_int8_t byte2;
 u_int8_t unused[3];
 u_int8_t control;
};
struct scsi_send_diag {
 u_int8_t opcode;
 u_int8_t byte2;
 u_int8_t unused[1];
 u_int8_t paramlen[2];
 u_int8_t control;
};
struct scsi_sense {
 u_int8_t opcode;
 u_int8_t byte2;
 u_int8_t unused[2];
 u_int8_t length;
 u_int8_t control;
};
struct scsi_inquiry {
 u_int8_t opcode;
 u_int8_t flags;
 u_int8_t pagecode;
 u_int8_t length[2];
 u_int8_t control;
};
struct scsi_mode_sense {
 u_int8_t opcode;
 u_int8_t byte2;
 u_int8_t page;
 u_int8_t unused;
 u_int8_t length;
 u_int8_t control;
};
struct scsi_mode_sense_big {
 u_int8_t opcode;
 u_int8_t byte2;
 u_int8_t page;
 u_int8_t unused[4];
 u_int8_t length[2];
 u_int8_t control;
};
struct scsi_mode_select {
 u_int8_t opcode;
 u_int8_t byte2;
 u_int8_t unused[2];
 u_int8_t length;
 u_int8_t control;
};
struct scsi_mode_select_big {
 u_int8_t opcode;
 u_int8_t byte2;
 u_int8_t unused[5];
 u_int8_t length[2];
 u_int8_t control;
};
struct scsi_reserve {
 u_int8_t opcode;
 u_int8_t byte2;
 u_int8_t unused[2];
 u_int8_t length;
 u_int8_t control;
};
struct scsi_release {
 u_int8_t opcode;
 u_int8_t byte2;
 u_int8_t unused[2];
 u_int8_t length;
 u_int8_t control;
};
struct scsi_prevent {
 u_int8_t opcode;
 u_int8_t byte2;
 u_int8_t unused[2];
 u_int8_t how;
 u_int8_t control;
};
struct scsi_report_luns {
 u_int8_t opcode;
 u_int8_t unused;
 u_int8_t selectreport;
 u_int8_t unused2[3];
 u_int8_t length[4];
 u_int8_t unused4;
 u_int8_t control;
};
struct scsi_inquiry_data {
 u_int8_t device;
 u_int8_t dev_qual2;
 u_int8_t version;
 u_int8_t response_format;
 u_int8_t additional_length;
 u_int8_t unused[2];
 u_int8_t flags;
 char vendor[8];
 char product[16];
 char revision[4];
 u_int8_t extra[20];
 u_int8_t flags2;
 u_int8_t reserved;
};
struct scsi_vpd_hdr {
 u_int8_t device;
 u_int8_t page_code;
 u_int8_t page_length[2];
};
struct scsi_vpd_serial {
 struct scsi_vpd_hdr hdr;
 char serial[32];
};
struct scsi_vpd_devid_hdr {
 u_int8_t pi_code;
 u_int8_t flags;
 u_int8_t reserved;
 u_int8_t len;
};
struct scsi_vpd_ata {
 struct scsi_vpd_hdr hdr;
 u_int8_t _reserved1[4];
 u_int8_t sat_vendor[8];
 u_int8_t sat_product[16];
 u_int8_t sat_revision[4];
 u_int8_t device_signature[20];
 u_int8_t command_code;
 u_int8_t _reserved2[3];
 u_int8_t identify[512];
};
struct scsi_sense_data_unextended {
       u_int8_t error_code;
       u_int8_t block[3];
};
struct scsi_sense_data {
       u_int8_t error_code;
       u_int8_t segment;
       u_int8_t flags;
       u_int8_t info[4];
       u_int8_t extra_len;
       u_int8_t cmd_spec_info[4];
       u_int8_t add_sense_code;
       u_int8_t add_sense_code_qual;
       u_int8_t fru;
       u_int8_t sense_key_spec_1;
       u_int8_t sense_key_spec_2;
       u_int8_t sense_key_spec_3;
};
struct scsi_blk_desc {
 u_int8_t density;
 u_int8_t nblocks[3];
 u_int8_t reserved;
 u_int8_t blklen[3];
};
struct scsi_direct_blk_desc {
 u_int8_t nblocks[4];
 u_int8_t density;
 u_int8_t blklen[3];
};
struct scsi_blk_desc_big {
 u_int8_t nblocks[8];
 u_int8_t density;
 u_int8_t reserved[3];
 u_int8_t blklen[4];
};
struct scsi_mode_header {
 u_int8_t data_length;
 u_int8_t medium_type;
 u_int8_t dev_spec;
 u_int8_t blk_desc_len;
};
struct scsi_mode_header_big {
 u_int8_t data_length[2];
 u_int8_t medium_type;
 u_int8_t dev_spec;
 u_int8_t reserved;
 u_int8_t reserved2;
 u_int8_t blk_desc_len[2];
};
union scsi_mode_sense_buf {
 struct scsi_mode_header hdr;
 struct scsi_mode_header_big hdr_big;
 u_char buf[254];
} __attribute__((__packed__));
struct scsi_report_luns_data {
 u_int8_t length[4];
 u_int8_t reserved[4];
 struct {
  u_int8_t lundata[8];
 } luns[256];
};
struct scsi_ata_passthru_12 {
 u_int8_t opcode;
 u_int8_t count_proto;
 u_int8_t flags;
 u_int8_t features;
 u_int8_t sector_count;
 u_int8_t lba_low;
 u_int8_t lba_mid;
 u_int8_t lba_high;
 u_int8_t device;
 u_int8_t command;
 u_int8_t _reserved;
 u_int8_t control;
};
struct scsi_ata_passthru_16 {
 u_int8_t opcode;
 u_int8_t count_proto;
 u_int8_t flags;
 u_int8_t features[2];
 u_int8_t sector_count[2];
 u_int8_t lba_low[2];
 u_int8_t lba_mid[2];
 u_int8_t lba_high[2];
 u_int8_t device;
 u_int8_t command;
 u_int8_t control;
};
struct scsi_status_iu_header {
       u_int8_t reserved[2];
       u_int8_t flags;
       u_int8_t status;
       u_int8_t sense_length[4];
       u_int8_t pkt_failures_length[4];
 u_int8_t data[1];
};
struct circq {
 struct circq *next;
 struct circq *prev;
};
struct timeout {
 struct circq to_list;
 void (*to_func)(void *);
 void *to_arg;
 int to_time;
 int to_flags;
};
struct bintime;
void timeout_set(struct timeout *, void (*)(void *), void *);
void timeout_set_proc(struct timeout *, void (*)(void *), void *);
int timeout_add(struct timeout *, int);
int timeout_add_tv(struct timeout *, const struct timeval *);
int timeout_add_ts(struct timeout *, const struct timespec *);
int timeout_add_bt(struct timeout *, const struct bintime *);
int timeout_add_sec(struct timeout *, int);
int timeout_add_msec(struct timeout *, int);
int timeout_add_usec(struct timeout *, int);
int timeout_add_nsec(struct timeout *, int);
int timeout_del(struct timeout *);
void timeout_barrier(struct timeout *);
void timeout_startup(void);
void timeout_adjust_ticks(int);
int timeout_hardclock_update(void);
extern u_int32_t scsidebug_buses, scsidebug_targets, scsidebug_luns;
extern int scsidebug_level;
static __inline void _lto2b(u_int32_t val, u_int8_t *bytes);
static __inline void _lto3b(u_int32_t val, u_int8_t *bytes);
static __inline void _lto4b(u_int32_t val, u_int8_t *bytes);
static __inline void _lto8b(u_int64_t val, u_int8_t *bytes);
static __inline u_int32_t _2btol(u_int8_t *bytes);
static __inline u_int32_t _3btol(u_int8_t *bytes);
static __inline u_int32_t _4btol(u_int8_t *bytes);
static __inline u_int64_t _5btol(u_int8_t *bytes);
static __inline u_int64_t _8btol(u_int8_t *bytes);
static __inline void
_lto2b(u_int32_t val, u_int8_t *bytes)
{
 bytes[0] = (val >> 8) & 0xff;
 bytes[1] = val & 0xff;
}
static __inline void
_lto3b(u_int32_t val, u_int8_t *bytes)
{
 bytes[0] = (val >> 16) & 0xff;
 bytes[1] = (val >> 8) & 0xff;
 bytes[2] = val & 0xff;
}
static __inline void
_lto4b(u_int32_t val, u_int8_t *bytes)
{
 bytes[0] = (val >> 24) & 0xff;
 bytes[1] = (val >> 16) & 0xff;
 bytes[2] = (val >> 8) & 0xff;
 bytes[3] = val & 0xff;
}
static __inline void
_lto8b(u_int64_t val, u_int8_t *bytes)
{
 bytes[0] = (val >> 56) & 0xff;
 bytes[1] = (val >> 48) & 0xff;
 bytes[2] = (val >> 40) & 0xff;
 bytes[3] = (val >> 32) & 0xff;
 bytes[4] = (val >> 24) & 0xff;
 bytes[5] = (val >> 16) & 0xff;
 bytes[6] = (val >> 8) & 0xff;
 bytes[7] = val & 0xff;
}
static __inline u_int32_t
_2btol(u_int8_t *bytes)
{
 u_int32_t rv;
 rv = (bytes[0] << 8) | bytes[1];
 return (rv);
}
static __inline u_int32_t
_3btol(u_int8_t *bytes)
{
 u_int32_t rv;
 rv = (bytes[0] << 16) | (bytes[1] << 8) | bytes[2];
 return (rv);
}
static __inline u_int32_t
_4btol(u_int8_t *bytes)
{
 u_int32_t rv;
 rv = (bytes[0] << 24) | (bytes[1] << 16) |
     (bytes[2] << 8) | bytes[3];
 return (rv);
}
static __inline u_int64_t
_5btol(u_int8_t *bytes)
{
 u_int64_t rv;
 rv = ((u_int64_t)bytes[0] << 32) |
      ((u_int64_t)bytes[1] << 24) |
      ((u_int64_t)bytes[2] << 16) |
      ((u_int64_t)bytes[3] << 8) |
      (u_int64_t)bytes[4];
 return (rv);
}
static __inline u_int64_t
_8btol(u_int8_t *bytes)
{
 u_int64_t rv;
 rv = (((u_int64_t)bytes[0]) << 56) |
     (((u_int64_t)bytes[1]) << 48) |
     (((u_int64_t)bytes[2]) << 40) |
     (((u_int64_t)bytes[3]) << 32) |
     (((u_int64_t)bytes[4]) << 24) |
     (((u_int64_t)bytes[5]) << 16) |
     (((u_int64_t)bytes[6]) << 8) |
     ((u_int64_t)bytes[7]);
 return (rv);
}
struct devid {
 u_int8_t d_type;
 u_int8_t d_flags;
 u_int8_t d_refcount;
 u_int8_t d_len;
};
struct devid * devid_alloc(u_int8_t, u_int8_t, u_int8_t, u_int8_t *);
struct devid * devid_copy(struct devid *);
void devid_free(struct devid *);
struct scsi_xfer;
struct scsi_link;
struct scsibus_softc;
extern int scsi_autoconf;
struct scsi_adapter {
 void (*scsi_cmd)(struct scsi_xfer *);
 void (*scsi_minphys)(struct buf *, struct scsi_link *);
 int (*dev_probe)(struct scsi_link *);
 void (*dev_free)(struct scsi_link *);
 int (*ioctl)(struct scsi_link *, u_long, caddr_t, int);
};
struct scsi_iopool;
struct scsi_iohandler {
 struct { struct scsi_iohandler *tqe_next; struct scsi_iohandler **tqe_prev; } q_entry;
 u_int q_state;
 struct scsi_iopool *pool;
 void (*handler)(void *, void *);
 void *cookie;
};
struct scsi_runq { struct scsi_iohandler *tqh_first; struct scsi_iohandler **tqh_last; };
struct scsi_iopool {
 void *iocookie;
 void *(*io_get)(void *);
 void (*io_put)(void *, void *);
 struct scsi_runq queue;
 u_int running;
 struct mutex mtx;
};
struct scsi_xshandler {
 struct scsi_iohandler ioh;
 struct scsi_link *link;
 void (*handler)(struct scsi_xfer *);
};
struct scsi_link {
 struct { struct scsi_link *sle_next; } bus_list;
 u_int state;
 u_int8_t scsibus;
 u_int8_t luns;
 u_int16_t target;
 u_int16_t lun;
 u_int16_t openings;
 u_int64_t port_wwn;
 u_int64_t node_wwn;
 u_int16_t adapter_target;
 u_int16_t adapter_buswidth;
 u_int16_t flags;
 u_int16_t quirks;
 int (*interpret_sense)(struct scsi_xfer *);
 void *device_softc;
 struct scsi_adapter *adapter;
 void *adapter_softc;
 struct scsibus_softc *bus;
 struct scsi_inquiry_data inqdata;
 struct devid *id;
 struct scsi_runq queue;
 u_int running;
 u_short pending;
 struct scsi_iopool *pool;
};
int scsiprint(void *, const char *);
struct scsi_inquiry_pattern {
 u_int8_t type;
 int removable;
 char *vendor;
 char *product;
 char *revision;
};
struct scsibus_attach_args {
 struct scsi_link *saa_sc_link;
};
struct scsibus_softc {
 struct device sc_dev;
 struct scsi_link *adapter_link;
 struct { struct scsi_link *slh_first; } sc_link_list;
 u_int16_t sc_buswidth;
};
struct scsi_attach_args {
 struct scsi_link *sa_sc_link;
 struct scsi_inquiry_data *sa_inqbuf;
};
struct scsi_xfer {
 struct { struct scsi_xfer *sqe_next; } xfer_list;
 int flags;
 struct scsi_link *sc_link;
 int retries;
 int timeout;
 struct scsi_generic *cmd;
 int cmdlen;
 u_char *data;
 int datalen;
 size_t resid;
 int error;
 struct buf *bp;
 struct scsi_sense_data sense;
 u_int8_t status;
 struct scsi_generic cmdstore;
 struct timeout stimeout;
 void *cookie;
 void (*done)(struct scsi_xfer *);
 void *io;
};
struct scsi_xfer_list { struct scsi_xfer *sqh_first; struct scsi_xfer **sqh_last; };
const void *scsi_inqmatch(struct scsi_inquiry_data *, const void *, int,
     int, int *);
void scsi_init(void);
int scsi_test_unit_ready(struct scsi_link *, int, int);
int scsi_inquire(struct scsi_link *, struct scsi_inquiry_data *, int);
int scsi_inquire_vpd(struct scsi_link *, void *, u_int, u_int8_t, int);
void scsi_init_inquiry(struct scsi_xfer *, u_int8_t, u_int8_t,
     void *, size_t);
int scsi_prevent(struct scsi_link *, int, int);
int scsi_start(struct scsi_link *, int, int);
int scsi_mode_sense(struct scsi_link *, int, int, struct scsi_mode_header *,
     size_t, int, int);
int scsi_mode_sense_big(struct scsi_link *, int, int,
     struct scsi_mode_header_big *, size_t, int, int);
void * scsi_mode_sense_page(struct scsi_mode_header *, int);
void * scsi_mode_sense_big_page(struct scsi_mode_header_big *, int);
int scsi_do_mode_sense(struct scsi_link *, int,
     union scsi_mode_sense_buf *, void **, u_int32_t *, u_int64_t *,
     u_int32_t *, int, int, int *);
int scsi_mode_select(struct scsi_link *, int, struct scsi_mode_header *,
     int, int);
int scsi_mode_select_big(struct scsi_link *, int,
     struct scsi_mode_header_big *, int, int);
void scsi_done(struct scsi_xfer *);
int scsi_do_ioctl(struct scsi_link *, u_long, caddr_t, int);
void sc_print_addr(struct scsi_link *);
int scsi_report_luns(struct scsi_link *, int,
     struct scsi_report_luns_data *, u_int32_t, int, int);
void scsi_minphys(struct buf *, struct scsi_link *);
int scsi_interpret_sense(struct scsi_xfer *);
void scsi_xs_show(struct scsi_xfer *);
void scsi_print_sense(struct scsi_xfer *);
void scsi_show_mem(u_char *, int);
void scsi_strvis(u_char *, u_char *, int);
int scsi_delay(struct scsi_xfer *, int);
int scsi_probe(struct scsibus_softc *, int, int);
int scsi_probe_bus(struct scsibus_softc *);
int scsi_probe_target(struct scsibus_softc *, int);
int scsi_probe_lun(struct scsibus_softc *, int, int);
int scsi_detach(struct scsibus_softc *, int, int, int);
int scsi_detach_bus(struct scsibus_softc *, int);
int scsi_detach_target(struct scsibus_softc *, int, int);
int scsi_detach_lun(struct scsibus_softc *, int, int, int);
int scsi_req_probe(struct scsibus_softc *, int, int);
int scsi_req_detach(struct scsibus_softc *, int, int, int);
int scsi_activate(struct scsibus_softc *, int, int, int);
struct scsi_link * scsi_get_link(struct scsibus_softc *, int, int);
void scsi_add_link(struct scsibus_softc *,
       struct scsi_link *);
void scsi_remove_link(struct scsibus_softc *,
       struct scsi_link *);
extern const u_int8_t version_to_spc[];
struct scsi_xfer * scsi_xs_get(struct scsi_link *, int);
void scsi_xs_exec(struct scsi_xfer *);
int scsi_xs_sync(struct scsi_xfer *);
void scsi_xs_put(struct scsi_xfer *);
void scsi_iopool_init(struct scsi_iopool *, void *,
     void *(*)(void *), void (*)(void *, void *));
void scsi_iopool_run(struct scsi_iopool *);
void scsi_iopool_destroy(struct scsi_iopool *);
void scsi_link_shutdown(struct scsi_link *);
void * scsi_io_get(struct scsi_iopool *, int);
void scsi_io_put(struct scsi_iopool *, void *);
void * scsi_default_get(void *);
void scsi_default_put(void *, void *);
void scsi_ioh_set(struct scsi_iohandler *, struct scsi_iopool *,
     void (*)(void *, void *), void *);
int scsi_ioh_add(struct scsi_iohandler *);
int scsi_ioh_del(struct scsi_iohandler *);
void scsi_xsh_set(struct scsi_xshandler *, struct scsi_link *,
     void (*)(struct scsi_xfer *));
int scsi_xsh_add(struct scsi_xshandler *);
int scsi_xsh_del(struct scsi_xshandler *);
int scsi_pending_start(struct mutex *, u_int *);
int scsi_pending_finish(struct mutex *, u_int *);
void scsi_cmd_rw_decode(struct scsi_generic *, u_int64_t *, u_int32_t *);
struct mpath_group;
struct mpath_ops {
 char op_name[16];
 int (*op_checksense)(struct scsi_xfer *);
 void (*op_status)(struct scsi_link *);
};
struct mpath_path {
 struct scsi_xshandler p_xsh;
 struct scsi_link *p_link;
 int p_gid;
 struct { struct mpath_path *tqe_next; struct mpath_path **tqe_prev; } p_entry;
 struct mpath_group *p_group;
 int p_state;
};
int mpath_path_probe(struct scsi_link *);
int mpath_path_attach(struct mpath_path *, u_int,
       const struct mpath_ops *);
void mpath_path_status(struct mpath_path *, int);
int mpath_path_detach(struct mpath_path *);
void mpath_start(struct mpath_path *, struct scsi_xfer *);
struct device *mpath_bootdv(struct device *);
struct frame32 {
 int32_t fr_local[8];
 int32_t fr_arg[6];
 u_int32_t fr_fp;
 u_int32_t fr_pc;
 int32_t fr_xxx;
 int32_t fr_argd[6];
 int32_t fr_argx[1];
};
struct frame64 {
 int64_t fr_local[8];
 int64_t fr_arg[6];
 u_int64_t fr_fp;
 u_int64_t fr_pc;
 int64_t fr_argd[6];
 int64_t fr_argx[0];
};
typedef vaddr_t db_addr_t;
typedef long db_expr_t;
struct trapstate {
 int64_t tstate;
 int64_t tpc;
 int64_t tnpc;
 int64_t tt;
};
typedef struct {
 struct trapframe64 ddb_tf;
 struct frame64 ddb_fr;
 struct trapstate ddb_ts[5];
 int ddb_tl;
 struct fpstate64 ddb_fpstate;
} db_regs_t;
extern db_regs_t ddb_regs;
boolean_t db_inst_trap_return(int inst);
boolean_t db_inst_return(int inst);
boolean_t db_inst_call(int inst);
boolean_t db_inst_branch(int inst);
boolean_t db_inst_unconditional_flow_transfer(int inst);
db_addr_t db_branch_taken(int inst, db_addr_t pc, db_regs_t *regs);
void db_machine_init(void);
int db_ktrap(int, struct trapframe64 *);
int db_enter_ddb(void);
void db_startcpu(struct cpu_info *);
void db_stopcpu(struct cpu_info *);
extern struct mutex ddb_mp_mutex;
void db_register_xir(void (*)(void *, int), void *);
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
typedef __uint8_t Elf_Byte;
typedef __uint32_t Elf32_Addr;
typedef __uint32_t Elf32_Off;
typedef __int32_t Elf32_Sword;
typedef __uint32_t Elf32_Word;
typedef __uint16_t Elf32_Half;
typedef __uint64_t Elf64_Addr;
typedef __uint64_t Elf64_Off;
typedef __int32_t Elf64_Shalf;
typedef __int32_t Elf64_Sword;
typedef __uint32_t Elf64_Word;
typedef __int64_t Elf64_Sxword;
typedef __uint64_t Elf64_Xword;
typedef __uint32_t Elf64_Half;
typedef __uint16_t Elf64_Quarter;
typedef struct elfhdr {
 unsigned char e_ident[16];
 Elf32_Half e_type;
 Elf32_Half e_machine;
 Elf32_Word e_version;
 Elf32_Addr e_entry;
 Elf32_Off e_phoff;
 Elf32_Off e_shoff;
 Elf32_Word e_flags;
 Elf32_Half e_ehsize;
 Elf32_Half e_phentsize;
 Elf32_Half e_phnum;
 Elf32_Half e_shentsize;
 Elf32_Half e_shnum;
 Elf32_Half e_shstrndx;
} Elf32_Ehdr;
typedef struct {
 unsigned char e_ident[16];
 Elf64_Quarter e_type;
 Elf64_Quarter e_machine;
 Elf64_Half e_version;
 Elf64_Addr e_entry;
 Elf64_Off e_phoff;
 Elf64_Off e_shoff;
 Elf64_Half e_flags;
 Elf64_Quarter e_ehsize;
 Elf64_Quarter e_phentsize;
 Elf64_Quarter e_phnum;
 Elf64_Quarter e_shentsize;
 Elf64_Quarter e_shnum;
 Elf64_Quarter e_shstrndx;
} Elf64_Ehdr;
typedef struct {
 Elf32_Word sh_name;
 Elf32_Word sh_type;
 Elf32_Word sh_flags;
 Elf32_Addr sh_addr;
 Elf32_Off sh_offset;
 Elf32_Word sh_size;
 Elf32_Word sh_link;
 Elf32_Word sh_info;
 Elf32_Word sh_addralign;
 Elf32_Word sh_entsize;
} Elf32_Shdr;
typedef struct {
 Elf64_Half sh_name;
 Elf64_Half sh_type;
 Elf64_Xword sh_flags;
 Elf64_Addr sh_addr;
 Elf64_Off sh_offset;
 Elf64_Xword sh_size;
 Elf64_Half sh_link;
 Elf64_Half sh_info;
 Elf64_Xword sh_addralign;
 Elf64_Xword sh_entsize;
} Elf64_Shdr;
typedef struct elf32_sym {
 Elf32_Word st_name;
 Elf32_Addr st_value;
 Elf32_Word st_size;
 unsigned char st_info;
 unsigned char st_other;
 Elf32_Half st_shndx;
} Elf32_Sym;
typedef struct {
 Elf64_Half st_name;
 Elf_Byte st_info;
 Elf_Byte st_other;
 Elf64_Quarter st_shndx;
 Elf64_Xword st_value;
 Elf64_Xword st_size;
} Elf64_Sym;
typedef struct {
 Elf32_Addr r_offset;
 Elf32_Word r_info;
} Elf32_Rel;
typedef struct {
 Elf32_Addr r_offset;
 Elf32_Word r_info;
 Elf32_Sword r_addend;
} Elf32_Rela;
typedef struct {
 Elf64_Xword r_offset;
 Elf64_Xword r_info;
} Elf64_Rel;
typedef struct {
 Elf64_Xword r_offset;
 Elf64_Xword r_info;
 Elf64_Sxword r_addend;
} Elf64_Rela;
typedef struct {
 Elf32_Word p_type;
 Elf32_Off p_offset;
 Elf32_Addr p_vaddr;
 Elf32_Addr p_paddr;
 Elf32_Word p_filesz;
 Elf32_Word p_memsz;
 Elf32_Word p_flags;
 Elf32_Word p_align;
} Elf32_Phdr;
typedef struct {
 Elf64_Half p_type;
 Elf64_Half p_flags;
 Elf64_Off p_offset;
 Elf64_Addr p_vaddr;
 Elf64_Addr p_paddr;
 Elf64_Xword p_filesz;
 Elf64_Xword p_memsz;
 Elf64_Xword p_align;
} Elf64_Phdr;
typedef struct {
 Elf32_Sword d_tag;
 union {
  Elf32_Word d_val;
  Elf32_Addr d_ptr;
 } d_un;
} Elf32_Dyn;
typedef struct {
 Elf64_Xword d_tag;
 union {
  Elf64_Addr d_ptr;
  Elf64_Xword d_val;
 } d_un;
} Elf64_Dyn;
typedef struct {
 Elf32_Word n_namesz;
 Elf32_Word n_descsz;
 Elf32_Word n_type;
} Elf32_Nhdr;
typedef struct {
 Elf64_Half n_namesz;
 Elf64_Half n_descsz;
 Elf64_Half n_type;
} Elf64_Nhdr;
typedef struct {
 Elf32_Word namesz;
 Elf32_Word descsz;
 Elf32_Word type;
} Elf32_Note;
typedef struct {
 Elf64_Half namesz;
 Elf64_Half descsz;
 Elf64_Half type;
} Elf64_Note;
struct elfcore_procinfo {
 uint32_t cpi_version;
 uint32_t cpi_cpisize;
 uint32_t cpi_signo;
 uint32_t cpi_sigcode;
 uint32_t cpi_sigpend;
 uint32_t cpi_sigmask;
 uint32_t cpi_sigignore;
 uint32_t cpi_sigcatch;
 int32_t cpi_pid;
 int32_t cpi_ppid;
 int32_t cpi_pgrp;
 int32_t cpi_sid;
 uint32_t cpi_ruid;
 uint32_t cpi_euid;
 uint32_t cpi_svuid;
 uint32_t cpi_rgid;
 uint32_t cpi_egid;
 uint32_t cpi_svgid;
 int8_t cpi_name[32];
};
typedef struct {
 Elf32_Sword au_id;
 Elf32_Word au_v;
} Aux32Info;
typedef struct {
 Elf64_Shalf au_id;
 Elf64_Xword au_v;
} Aux64Info;
enum AuxID {
 AUX_null = 0,
 AUX_ignore = 1,
 AUX_execfd = 2,
 AUX_phdr = 3,
 AUX_phent = 4,
 AUX_phnum = 5,
 AUX_pagesz = 6,
 AUX_base = 7,
 AUX_flags = 8,
 AUX_entry = 9,
 AUX_sun_uid = 2000,
 AUX_sun_ruid = 2001,
 AUX_sun_gid = 2002,
 AUX_sun_rgid = 2003
};
struct elf_args {
        u_long arg_entry;
        u_long arg_interp;
        u_long arg_phaddr;
        u_long arg_phentsize;
        u_long arg_phnum;
};
struct exec_package;
int exec_elf_makecmds(struct proc *, struct exec_package *);
typedef int db_strategy_t;
typedef void (db_forall_func_t)(Elf64_Sym *, char *, char *, int, void *);
extern unsigned int db_maxoff;
int db_eqname(char *, char *, int);
Elf64_Sym * db_symbol_by_name(char *, db_expr_t *);
Elf64_Sym * db_search_symbol(db_addr_t, db_strategy_t, db_expr_t *);
void db_symbol_values(Elf64_Sym *, char **, db_expr_t *);
void db_printsym(db_expr_t, db_strategy_t, int (*)(const char *, ...));
int db_elf_sym_init(int, void *, void *, const char *);
Elf64_Sym * db_elf_sym_search(db_addr_t, db_strategy_t, db_expr_t *);
int db_elf_line_at_pc(Elf64_Sym *, char **, int *, db_expr_t);
void db_elf_sym_forall(db_forall_func_t db_forall_func, void *);
_Bool db_dwarf_line_at_pc(const char *, size_t, uintptr_t,
    const char **, const char **, int *);
int db_ctf_func_numargs(Elf64_Sym *);
void ddb_init(void);
void db_examine_cmd(db_expr_t, int, db_expr_t, char *);
void db_print_cmd(db_expr_t, int, db_expr_t, char *);
void db_search_cmd(db_expr_t, boolean_t, db_expr_t, char *);
void db_print_loc_and_inst(db_addr_t);
size_t db_strlcpy(char *, const char *, size_t);
int db_expression(db_expr_t *);
void db_hangman(db_expr_t, int, db_expr_t, char *);
int db_readline(char *, int);
void db_trap(int, int);
void db_prof_init(void);
int db_prof_enable(void);
void db_prof_disable(void);
void db_ctf_init(void);
enum sensor_type {
 SENSOR_TEMP,
 SENSOR_FANRPM,
 SENSOR_VOLTS_DC,
 SENSOR_VOLTS_AC,
 SENSOR_OHMS,
 SENSOR_WATTS,
 SENSOR_AMPS,
 SENSOR_WATTHOUR,
 SENSOR_AMPHOUR,
 SENSOR_INDICATOR,
 SENSOR_INTEGER,
 SENSOR_PERCENT,
 SENSOR_LUX,
 SENSOR_DRIVE,
 SENSOR_TIMEDELTA,
 SENSOR_HUMIDITY,
 SENSOR_FREQ,
 SENSOR_ANGLE,
 SENSOR_DISTANCE,
 SENSOR_PRESSURE,
 SENSOR_ACCEL,
 SENSOR_MAX_TYPES
};
enum sensor_status {
 SENSOR_S_UNSPEC,
 SENSOR_S_OK,
 SENSOR_S_WARN,
 SENSOR_S_CRIT,
 SENSOR_S_UNKNOWN
};
struct sensor {
 char desc[32];
 struct timeval tv;
 int64_t value;
 enum sensor_type type;
 enum sensor_status status;
 int numt;
 int flags;
};
struct sensordev {
 int num;
 char xname[16];
 int maxnumt[SENSOR_MAX_TYPES];
 int sensors_count;
};
struct ksensor {
 struct { struct ksensor *sle_next; } list;
 char desc[32];
 struct timeval tv;
 int64_t value;
 enum sensor_type type;
 enum sensor_status status;
 int numt;
 int flags;
};
struct ksensors_head { struct ksensor *slh_first; };
struct ksensordev {
 struct { struct ksensordev *sle_next; } list;
 int num;
 char xname[16];
 int maxnumt[SENSOR_MAX_TYPES];
 int sensors_count;
 struct ksensors_head sensors_list;
};
void sensordev_install(struct ksensordev *);
void sensordev_deinstall(struct ksensordev *);
int sensordev_get(int, struct ksensordev **);
void sensor_attach(struct ksensordev *, struct ksensor *);
void sensor_detach(struct ksensordev *, struct ksensor *);
int sensor_find(int, enum sensor_type, int, struct ksensor **);
struct sensor_task;
struct sensor_task *sensor_task_register(void *, void (*)(void *),
        unsigned int);
void sensor_task_unregister(struct sensor_task *);
void sensor_quiesce(void);
void sensor_restart(void);
struct sr_crypto_genkdf {
 u_int32_t len;
 u_int32_t type;
};
struct sr_crypto_pbkdf {
 struct sr_crypto_genkdf generic;
 u_int32_t rounds;
 u_int8_t salt[128];
};
struct sr_crypto_kdfinfo {
 u_int32_t len;
 u_int32_t flags;
 u_int8_t maskkey[32];
 union {
  struct sr_crypto_genkdf generic;
  struct sr_crypto_pbkdf pbkdf;
 } _kdfhint;
};
struct sr_crypto_kdfpair {
 struct sr_crypto_kdfinfo *kdfinfo1;
 u_int32_t kdfsize1;
 struct sr_crypto_kdfinfo *kdfinfo2;
 u_int32_t kdfsize2;
};
typedef struct MD5Context {
 u_int32_t state[4];
 u_int64_t count;
 u_int8_t buffer[64];
} MD5_CTX;

void MD5Init(MD5_CTX *);
void MD5Update(MD5_CTX *, const void *, size_t)
  __attribute__((__bounded__(__string__,2,3)));
void MD5Final(u_int8_t [16], MD5_CTX *)
  __attribute__((__bounded__(__minbytes__,1,16)));
void MD5Transform(u_int32_t [4], const u_int8_t [64])
  __attribute__((__bounded__(__minbytes__,1,4)))
  __attribute__((__bounded__(__minbytes__,2,64)));

struct sr_uuid {
 u_int8_t sui_id[16];
} __attribute__((__packed__));
struct sr_disk {
 dev_t sdk_devno;
 struct { struct sr_disk *sle_next; } sdk_link;
};
struct sr_disk_head { struct sr_disk *slh_first; };
struct sr_metadata {
 struct sr_meta_invariant {
  u_int64_t ssd_magic;
  u_int32_t ssd_version;
  u_int32_t ssd_vol_flags;
  struct sr_uuid ssd_uuid;
  u_int32_t ssd_chunk_no;
  u_int32_t ssd_chunk_id;
  u_int32_t ssd_opt_no;
  u_int32_t ssd_secsize;
  u_int32_t ssd_volid;
  u_int32_t ssd_level;
  int64_t ssd_size;
  char ssd_vendor[8];
  char ssd_product[16];
  char ssd_revision[4];
  u_int32_t ssd_strip_size;
 } _sdd_invariant;
 u_int8_t ssd_checksum[16];
 char ssd_devname[32];
 u_int32_t ssd_meta_flags;
 u_int32_t ssd_data_blkno;
 u_int64_t ssd_ondisk;
 int64_t ssd_rebuild;
} __attribute__((__packed__));
struct sr_meta_chunk {
 struct sr_meta_chunk_invariant {
  u_int32_t scm_volid;
  u_int32_t scm_chunk_id;
  char scm_devname[32];
  int64_t scm_size;
  int64_t scm_coerced_size;
  struct sr_uuid scm_uuid;
 } _scm_invariant;
 u_int8_t scm_checksum[16];
 u_int32_t scm_status;
} __attribute__((__packed__));
struct sr_crypto_chk_hmac_sha1 {
 u_int8_t sch_mac[20];
} __attribute__((__packed__));
struct sr_meta_opt_hdr {
 u_int32_t som_type;
 u_int32_t som_length;
 u_int8_t som_checksum[16];
} __attribute__((__packed__));
struct sr_meta_crypto {
 struct sr_meta_opt_hdr scm_hdr;
 u_int32_t scm_alg;
 u_int32_t scm_flags;
 u_int32_t scm_mask_alg;
 u_int32_t scm_pad1;
 u_int8_t scm_reserved[64];
 u_int8_t scm_key[32][(512 >> 3)];
 u_int8_t scm_kdfhint[256];
 u_int32_t scm_check_alg;
 u_int32_t scm_pad2;
 union {
  struct sr_crypto_chk_hmac_sha1 chk_hmac_sha1;
  u_int8_t chk_reserved2[64];
 } _scm_chk;
} __attribute__((__packed__));
struct sr_meta_boot {
 struct sr_meta_opt_hdr sbm_hdr;
 u_int32_t sbm_bootblk_size;
 u_int32_t sbm_bootldr_size;
 u_char sbm_root_duid[8];
 u_char sbm_boot_duid[16][8];
} __attribute__((__packed__));
struct sr_meta_keydisk {
 struct sr_meta_opt_hdr skm_hdr;
 u_int8_t skm_maskkey[32];
} __attribute__((__packed__));
struct sr_meta_opt_item {
 struct sr_meta_opt_hdr *omi_som;
 struct { struct sr_meta_opt_item *sle_next; } omi_link;
};
struct sr_meta_opt_head { struct sr_meta_opt_item *slh_first; };
struct sr_boot_chunk {
 struct sr_metadata *sbc_metadata;
 dev_t sbc_mm;
 u_int32_t sbc_chunk_id;
 u_int32_t sbc_state;
 u_int32_t sbc_disk;
 int sbc_part;
 u_int64_t sbc_ondisk;
 void *sbc_diskinfo;
 struct { struct sr_boot_chunk *sle_next; } sbc_link;
};
struct sr_boot_chunk_head { struct sr_boot_chunk *slh_first; };
struct sr_boot_volume {
 struct sr_uuid sbv_uuid;
 u_int32_t sbv_level;
 u_int32_t sbv_volid;
 u_int32_t sbv_chunk_no;
 u_int32_t sbv_flags;
 u_int32_t sbv_state;
 int64_t sbv_size;
 u_int32_t sbv_secsize;
 u_int32_t sbv_data_blkno;
 u_int64_t sbv_ondisk;
 u_int32_t sbv_chunks_found;
 u_int32_t sbv_unit;
 char sbv_part;
 void *sbv_diskinfo;
 u_int8_t *sbv_keys;
 u_int8_t *sbv_maskkey;
 struct sr_boot_chunk_head sbv_chunks;
 struct sr_meta_opt_head sbv_meta_opt;
 struct { struct sr_boot_volume *sle_next; } sbv_link;
};
struct sr_boot_volume_head { struct sr_boot_volume *slh_first; };
struct bio_msg {
 int bm_type;
 char bm_msg[128];
};
struct bio_status {
 char bs_controller[16];
 int bs_status;
 int bs_msg_count;
 struct bio_msg bs_msgs[5];
};
struct bio {
 void *bio_cookie;
 struct bio_status bio_status;
};
struct bio_locate {
 struct bio bl_bio;
 char *bl_name;
};
struct bioc_inq {
 struct bio bi_bio;
 char bi_dev[16];
 int bi_novol;
 int bi_nodisk;
};
struct bioc_disk {
 struct bio bd_bio;
 u_int16_t bd_channel;
 u_int16_t bd_target;
 u_int16_t bd_lun;
 u_int16_t bd_other_id;
 int bd_volid;
 int bd_diskid;
 int bd_status;
 uint64_t bd_size;
 char bd_vendor[32];
 char bd_serial[32];
 char bd_procdev[16];
 struct {
  int bdp_percent;
  int bdp_seconds;
 } bd_patrol;
};
struct bioc_vol {
 struct bio bv_bio;
 int bv_volid;
 int16_t bv_percent;
 u_int16_t bv_seconds;
 int bv_status;
 uint64_t bv_size;
 int bv_level;
 int bv_nodisk;
 int bv_cache;
 char bv_dev[16];
 char bv_vendor[32];
};
struct bioc_alarm {
 struct bio ba_bio;
 int ba_opcode;
 int ba_status;
};
struct bioc_blink {
 struct bio bb_bio;
 u_int16_t bb_channel;
 u_int16_t bb_target;
 int bb_status;
};
struct bioc_setstate {
 struct bio bs_bio;
 u_int16_t bs_channel;
 u_int16_t bs_target;
 u_int16_t bs_lun;
 u_int16_t bs_other_id_type;
 int bs_other_id;
 int bs_status;
 int bs_volid;
};
struct bioc_createraid {
 struct bio bc_bio;
 void *bc_dev_list;
 u_int16_t bc_dev_list_len;
 int32_t bc_key_disk;
 u_int16_t bc_level;
 u_int32_t bc_flags;
 u_int32_t bc_opaque_size;
 u_int32_t bc_opaque_flags;
 u_int32_t bc_opaque_status;
 void *bc_opaque;
};
struct bioc_deleteraid {
 struct bio bd_bio;
 u_int32_t bd_flags;
 char bd_dev[16];
};
struct bioc_discipline {
 struct bio bd_bio;
 char bd_dev[16];
 u_int32_t bd_cmd;
 u_int32_t bd_size;
 void *bd_data;
};
struct bioc_installboot {
 struct bio bb_bio;
 char bb_dev[16];
 void *bb_bootblk;
 void *bb_bootldr;
 u_int32_t bb_bootblk_size;
 u_int32_t bb_bootldr_size;
};
struct bioc_patrol {
 struct bio bp_bio;
 int bp_opcode;
 int bp_mode;
 int bp_status;
 int bp_autoival;
 int bp_autonext;
 int bp_autonow;
};
int bio_register(struct device *, int (*)(struct device *, u_long,
     caddr_t));
void bio_unregister(struct device *);
void bio_status_init(struct bio_status *, struct device *);
void bio_status(struct bio_status *, int, int, const char *, va_list *);
void bio_info(struct bio_status *, int, const char *, ...);
void bio_warn(struct bio_status *, int, const char *, ...);
void bio_error(struct bio_status *, int, const char *, ...);
struct taskq;
struct task {
 struct { struct task *tqe_next; struct task **tqe_prev; } t_entry;
 void (*t_func)(void *);
 void *t_arg;
 unsigned int t_flags;
};
struct task_list { struct task *tqh_first; struct task **tqh_last; };
extern struct taskq *const systq;
extern struct taskq *const systqmp;
struct taskq *taskq_create(const char *, unsigned int, int, unsigned int);
void taskq_destroy(struct taskq *);
void taskq_barrier(struct taskq *);
void task_set(struct task *, void (*)(void *), void *);
int task_add(struct taskq *, struct task *);
int task_del(struct taskq *, struct task *);
struct scsi_format_unit {
 u_int8_t opcode;
 u_int8_t flags;
 u_int8_t vendor_specific;
 u_int8_t interleave[2];
 u_int8_t control;
};
struct scsi_format_unit_defect_list_header {
 u_int8_t reserved;
 u_int8_t flags;
 u_int8_t defect_lst_len[2];
};
struct scsi_initialization_pattern_descriptor {
 u_int8_t ip_modifier;
 u_int8_t pattern_type;
 u_int8_t pattern_length[2];
};
struct scsi_defect_descriptor_bf {
 u_int8_t block_address[4];
};
struct scsi_defect_descriptor_bfif {
 u_int8_t cylinder[2];
 u_int8_t head;
 u_int8_t bytes_from_index[2];
};
struct scsi_defect_descriptor_psf {
 u_int8_t cylinder[2];
 u_int8_t head;
 u_int8_t sector[2];
};
struct scsi_reassign_blocks {
 u_int8_t opcode;
 u_int8_t byte2;
 u_int8_t unused[3];
 u_int8_t control;
};
struct scsi_rezero_unit {
 u_int8_t opcode;
 u_int8_t byte2;
 u_int8_t reserved[3];
 u_int8_t control;
};
struct scsi_rw {
 u_int8_t opcode;
 u_int8_t addr[3];
 u_int8_t length;
 u_int8_t control;
};
struct scsi_rw_big {
 u_int8_t opcode;
 u_int8_t byte2;
 u_int8_t addr[4];
 u_int8_t reserved;
 u_int8_t length[2];
 u_int8_t control;
};
struct scsi_rw_12 {
 u_int8_t opcode;
 u_int8_t byte2;
 u_int8_t addr[4];
 u_int8_t length[4];
 u_int8_t reserved;
 u_int8_t control;
};
struct scsi_rw_16 {
 u_int8_t opcode;
 u_int8_t byte2;
 u_int8_t addr[8];
 u_int8_t length[4];
 u_int8_t reserved;
 u_int8_t control;
};
struct scsi_write_same_10 {
 u_int8_t opcode;
 u_int8_t flags;
 u_int8_t lba[4];
 u_int8_t group_number;
 u_int8_t length[2];
 u_int8_t control;
};
struct scsi_write_same_16 {
 u_int8_t opcode;
 u_int8_t flags;
 u_int8_t lba[8];
 u_int8_t length[4];
 u_int8_t group_number;
 u_int8_t control;
};
struct scsi_unmap {
 u_int8_t opcode;
 u_int8_t anchor;
 u_int8_t _reserved[4];
 u_int8_t group_number;
 u_int8_t list_len[2];
 u_int8_t control;
};
struct scsi_unmap_data {
 u_int8_t data_length[2];
 u_int8_t desc_length[2];
 u_int8_t _reserved[4];
};
struct scsi_unmap_desc {
 u_int8_t logical_addr[8];
 u_int8_t logical_blocks[4];
 u_int8_t _reserved[4];
};
struct scsi_read_capacity {
 u_int8_t opcode;
 u_int8_t byte2;
 u_int8_t addr[4];
 u_int8_t unused[3];
 u_int8_t control;
};
struct scsi_read_capacity_16 {
 u_int8_t opcode;
 u_int8_t byte2;
 u_int8_t addr[8];
 u_int8_t length[4];
 u_int8_t reserved;
 u_int8_t control;
};
struct scsi_start_stop {
 u_int8_t opcode;
 u_int8_t byte2;
 u_int8_t unused[2];
 u_int8_t how;
 u_int8_t control;
};
struct scsi_synchronize_cache {
 u_int8_t opcode;
 u_int8_t flags;
 u_int8_t addr[4];
 u_int8_t reserved;
 u_int8_t length[2];
 u_int8_t control;
};
struct scsi_read_cap_data {
 u_int8_t addr[4];
 u_int8_t length[4];
};
struct scsi_read_cap_data_16 {
 u_int8_t addr[8];
 u_int8_t length[4];
 u_int8_t p_type_prot;
 u_int8_t logical_per_phys;
 u_int8_t lowest_aligned[2];
 u_int8_t reserved[16];
};
struct scsi_reassign_blocks_data {
 u_int8_t reserved[2];
 u_int8_t length[2];
 struct {
  u_int8_t dlbaddr[4];
 } defect_descriptor[1];
};
struct page_disk_format {
 u_int8_t pg_code;
 u_int8_t pg_length;
 u_int8_t trk_z[2];
 u_int8_t alt_sec[2];
 u_int8_t alt_trk_z[2];
 u_int8_t alt_trk_v[2];
 u_int8_t ph_sec_t[2];
 u_int8_t bytes_s[2];
 u_int8_t interleave[2];
 u_int8_t trk_skew[2];
 u_int8_t cyl_skew[2];
 u_int8_t flags;
 u_int8_t reserved1;
 u_int8_t reserved2;
 u_int8_t reserved3;
};
struct page_rigid_geometry {
 u_int8_t pg_code;
 u_int8_t pg_length;
 u_int8_t ncyl[3];
 u_int8_t nheads;
 u_int8_t st_cyl_wp[3];
 u_int8_t st_cyl_rwc[3];
 u_int8_t driv_step[2];
 u_int8_t land_zone[3];
 u_int8_t sp_sync_ctl;
 u_int8_t rot_offset;
 u_int8_t reserved1;
 u_int8_t rpm[2];
 u_int8_t reserved2;
 u_int8_t reserved3;
};
struct page_flex_geometry {
 u_int8_t pg_code;
 u_int8_t pg_length;
 u_int8_t xfr_rate[2];
 u_int8_t nheads;
 u_int8_t ph_sec_tr;
 u_int8_t bytes_s[2];
 u_int8_t ncyl[2];
 u_int8_t st_cyl_wp[2];
 u_int8_t st_cyl_rwc[2];
 u_int8_t driv_step[2];
 u_int8_t driv_step_w;
 u_int8_t head_settle[2];
 u_int8_t motor_on;
 u_int8_t motor_off;
 u_int8_t flags;
 u_int8_t step_p_cyl;
 u_int8_t write_pre;
 u_int8_t head_load;
 u_int8_t head_unload;
 u_int8_t pin_34_2;
 u_int8_t pin_4_1;
 u_int8_t rpm[2];
 u_int8_t reserved1;
 u_int8_t reserved2;
};
struct page_reduced_geometry {
 u_int8_t pg_code;
 u_int8_t pg_length;
 u_int8_t wcd;
 u_int8_t bytes_s[2];
 u_int8_t sectors[5];
 u_int8_t pow_perf;
 u_int8_t flags;
 u_int8_t reserved;
};
struct page_caching_mode {
 u_int8_t pg_code;
 u_int8_t pg_length;
 u_int8_t flags;
 u_int8_t priority;
 u_int8_t dis_prefetch_tl[2];
 u_int8_t min_prefetch[2];
 u_int8_t max_prefetch[2];
 u_int8_t max_prefetch_ceil[2];
};
struct scsi_vpd_disk_limits {
 struct scsi_vpd_hdr hdr;
 u_int8_t _reserved1[1];
 u_int8_t max_comp_wr_len;
 u_int8_t optimal_xfer_granularity[2];
 u_int8_t max_xfer_len[4];
 u_int8_t optimal_xfer[4];
 u_int8_t max_xd_prefetch_len[4];
 u_int8_t max_unmap_lba_count[4];
 u_int8_t max_unmap_desc_count[4];
 u_int8_t optimal_unmap_granularity[4];
 u_int8_t unmap_granularity_align[4];
 u_int8_t _reserved2[28];
};
struct scsi_vpd_disk_info {
 struct scsi_vpd_hdr hdr;
 u_int8_t rpm[2];
 u_int8_t _reserved1[1];
 u_int8_t form_factor;
 u_int8_t _reserved2[56];
};
struct scsi_vpd_disk_thin {
 struct scsi_vpd_hdr hdr;
 u_int8_t threshold_exponent;
 u_int8_t flags;
 u_int8_t _reserved1[2];
};
extern struct sr_uuid sr_bootuuid;
extern u_int8_t sr_bootkey[32];
struct sr_softc;
struct sr_ccb {
 struct buf ccb_buf;
 struct sr_workunit *ccb_wu;
 struct sr_discipline *ccb_dis;
 int ccb_target;
 int ccb_state;
 int ccb_flags;
 void *ccb_opaque;
 struct { struct sr_ccb *tqe_next; struct sr_ccb **tqe_prev; } ccb_link;
};
struct sr_ccb_list { struct sr_ccb *tqh_first; struct sr_ccb **tqh_last; };
struct sr_workunit {
 struct scsi_xfer *swu_xs;
 struct sr_discipline *swu_dis;
 int swu_state;
 int swu_flags;
 daddr_t swu_blk_start;
 daddr_t swu_blk_end;
 u_int32_t swu_io_count;
 u_int32_t swu_ios_complete;
 u_int32_t swu_ios_failed;
 u_int32_t swu_ios_succeeded;
 struct sr_workunit *swu_collider;
 struct sr_ccb_list swu_ccb;
 struct task swu_task;
 int swu_cb_active;
 struct { struct sr_workunit *tqe_next; struct sr_workunit **tqe_prev; } swu_link;
 struct { struct sr_workunit *tqe_next; struct sr_workunit **tqe_prev; } swu_next;
};
struct sr_wu_list { struct sr_workunit *tqh_first; struct sr_workunit **tqh_last; };
struct sr_raid0 {
 int32_t sr0_strip_bits;
};
struct sr_raid1 {
 u_int32_t sr1_counter;
};
struct sr_raid5 {
 int32_t sr5_strip_bits;
};
struct sr_raid6 {
 int32_t sr6_strip_bits;
};
struct sr_crypto_wu_head { struct sr_crypto_wu *tqh_first; struct sr_crypto_wu **tqh_last; };
struct sr_crypto {
 struct sr_meta_crypto *scr_meta;
 struct sr_chunk *key_disk;
 int scr_alg;
 int scr_klen;
 u_int8_t scr_key[32][(512 >> 3)];
 u_int8_t scr_maskkey[32];
 u_int64_t scr_sid[32];
};
struct sr_concat {
};
struct sr_chunk {
 struct sr_meta_chunk src_meta;
 dev_t src_dev_mm;
 struct vnode *src_vn;
 int src_meta_ondisk;
 char src_devname[32];
 u_char src_duid[8];
 int64_t src_size;
 u_int32_t src_secsize;
 struct { struct sr_chunk *sle_next; } src_link;
};
struct sr_chunk_head { struct sr_chunk *slh_first; };
struct sr_volume {
 struct sr_chunk_head sv_chunk_list;
 struct sr_chunk **sv_chunks;
 int64_t sv_chunk_minsz;
 int64_t sv_chunk_maxsz;
 struct ksensor sv_sensor;
 int sv_sensor_attached;
};
struct sr_discipline {
 struct sr_softc *sd_sc;
 u_int8_t sd_type;
 char sd_name[10];
 u_int16_t sd_target;
 u_int32_t sd_capabilities;
 union {
     struct sr_raid0 mdd_raid0;
     struct sr_raid1 mdd_raid1;
     struct sr_raid5 mdd_raid5;
     struct sr_raid6 mdd_raid6;
     struct sr_concat mdd_concat;
     struct sr_crypto mdd_crypto;
 } sd_dis_specific;
 struct taskq *sd_taskq;
 struct sr_metadata *sd_meta;
 void *sd_meta_foreign;
 u_int32_t sd_meta_flags;
 int sd_meta_type;
 struct sr_meta_opt_head sd_meta_opt;
 int sd_sync;
 int sd_must_flush;
 int sd_deleted;
 struct device *sd_scsibus_dev;
 struct sr_volume sd_vol;
 int sd_vol_status;
 struct sr_ccb *sd_ccb;
 struct sr_ccb_list sd_ccb_freeq;
 u_int32_t sd_max_ccb_per_wu;
 struct sr_wu_list sd_wu;
 u_int32_t sd_max_wu;
 int sd_reb_active;
 int sd_reb_abort;
 int sd_ready;
 struct sr_wu_list sd_wu_freeq;
 struct sr_wu_list sd_wu_pendq;
 struct sr_wu_list sd_wu_defq;
 struct mutex sd_wu_mtx;
 struct scsi_iopool sd_iopool;
 int sd_wu_pending;
 u_int64_t sd_wu_collisions;
 int (*sd_create)(struct sr_discipline *,
        struct bioc_createraid *, int, int64_t);
 int (*sd_assemble)(struct sr_discipline *,
        struct bioc_createraid *, int, void *);
 int (*sd_alloc_resources)(struct sr_discipline *);
 void (*sd_free_resources)(struct sr_discipline *);
 int (*sd_ioctl_handler)(struct sr_discipline *,
        struct bioc_discipline *);
 int (*sd_start_discipline)(struct sr_discipline *);
 void (*sd_set_chunk_state)(struct sr_discipline *,
        int, int);
 void (*sd_set_vol_state)(struct sr_discipline *);
 int (*sd_openings)(struct sr_discipline *);
 int (*sd_meta_opt_handler)(struct sr_discipline *,
        struct sr_meta_opt_hdr *);
 void (*sd_rebuild)(struct sr_discipline *);
 struct scsi_sense_data sd_scsi_sense;
 int (*sd_scsi_rw)(struct sr_workunit *);
 void (*sd_scsi_intr)(struct buf *);
 int (*sd_scsi_wu_done)(struct sr_workunit *);
 void (*sd_scsi_done)(struct sr_workunit *);
 int (*sd_scsi_sync)(struct sr_workunit *);
 int (*sd_scsi_tur)(struct sr_workunit *);
 int (*sd_scsi_start_stop)(struct sr_workunit *);
 int (*sd_scsi_inquiry)(struct sr_workunit *);
 int (*sd_scsi_read_cap)(struct sr_workunit *);
 int (*sd_scsi_req_sense)(struct sr_workunit *);
 struct proc *sd_background_proc;
 struct task sd_meta_save_task;
 struct task sd_hotspare_rebuild_task;
 struct { struct sr_discipline *tqe_next; struct sr_discipline **tqe_prev; } sd_link;
};
struct sr_discipline_list { struct sr_discipline *tqh_first; struct sr_discipline **tqh_last; };
struct sr_softc {
 struct device sc_dev;
 struct rwlock sc_lock;
 struct bio_status sc_status;
 struct sr_chunk_head sc_hotspare_list;
 struct rwlock sc_hs_lock;
 int sc_hotspare_no;
 struct ksensordev sc_sensordev;
 struct sensor_task *sc_sensor_task;
 struct scsi_link sc_link;
 struct scsibus_softc *sc_scsibus;
 struct sr_discipline *sc_targets[256];
 struct sr_discipline_list sc_dis_list;
};
void sr_hotplug_register(struct sr_discipline *, void *);
void sr_hotplug_unregister(struct sr_discipline *, void *);
void sr_hotspare_rebuild_callback(void *);
int sr_ccb_alloc(struct sr_discipline *);
void sr_ccb_free(struct sr_discipline *);
struct sr_ccb *sr_ccb_get(struct sr_discipline *);
void sr_ccb_put(struct sr_ccb *);
struct sr_ccb *sr_ccb_rw(struct sr_discipline *, int, daddr_t,
       long, u_int8_t *, int, int);
void sr_ccb_done(struct sr_ccb *);
int sr_wu_alloc(struct sr_discipline *, int);
void sr_wu_free(struct sr_discipline *);
void *sr_wu_get(void *);
void sr_wu_put(void *, void *);
void sr_wu_init(struct sr_discipline *,
       struct sr_workunit *);
void sr_wu_enqueue_ccb(struct sr_workunit *,
       struct sr_ccb *);
void sr_wu_release_ccbs(struct sr_workunit *);
void sr_wu_done(struct sr_workunit *);
void sr_info(struct sr_softc *, const char *, ...);
void sr_warn(struct sr_softc *, const char *, ...);
void sr_error(struct sr_softc *, const char *, ...);
int32_t sr_validate_stripsize(u_int32_t);
int sr_meta_read(struct sr_discipline *);
int sr_meta_native_read(struct sr_discipline *, dev_t,
       struct sr_metadata *, void *);
int sr_meta_validate(struct sr_discipline *, dev_t,
       struct sr_metadata *, void *);
void sr_meta_save_callback(void *);
int sr_meta_save(struct sr_discipline *, u_int32_t);
void sr_meta_getdevname(struct sr_softc *, dev_t, char *,
       int);
void sr_meta_opt_load(struct sr_softc *,
       struct sr_metadata *, struct sr_meta_opt_head *);
void *sr_block_get(struct sr_discipline *, long);
void sr_block_put(struct sr_discipline *, void *, int);
void sr_checksum(struct sr_softc *, void *, void *,
       u_int32_t);
int sr_validate_io(struct sr_workunit *, daddr_t *,
       char *);
void sr_schedule_wu(struct sr_workunit *);
void sr_scsi_done(struct sr_discipline *,
       struct scsi_xfer *);
struct sr_workunit *sr_scsi_wu_get(struct sr_discipline *, int);
void sr_scsi_wu_put(struct sr_discipline *,
       struct sr_workunit *);
int sr_chunk_in_use(struct sr_softc *, dev_t);
int sr_rebuild_percent(struct sr_discipline *);
int sr_raid_inquiry(struct sr_workunit *);
int sr_raid_read_cap(struct sr_workunit *);
int sr_raid_tur(struct sr_workunit *);
int sr_raid_request_sense( struct sr_workunit *);
int sr_raid_start_stop(struct sr_workunit *);
int sr_raid_sync(struct sr_workunit *);
void sr_raid_intr(struct buf *);
void sr_raid_startwu(struct sr_workunit *);
void sr_raid_recreate_wu(struct sr_workunit *);
void sr_raid0_discipline_init(struct sr_discipline *);
void sr_raid1_discipline_init(struct sr_discipline *);
void sr_raid5_discipline_init(struct sr_discipline *);
void sr_raid6_discipline_init(struct sr_discipline *);
void sr_crypto_discipline_init(struct sr_discipline *);
void sr_concat_discipline_init(struct sr_discipline *);
int sr_crypto_get_kdf(struct bioc_createraid *,
       struct sr_discipline *);
int sr_crypto_create_keys(struct sr_discipline *);
struct sr_chunk * sr_crypto_create_key_disk(struct sr_discipline *, dev_t);
struct sr_chunk * sr_crypto_read_key_disk(struct sr_discipline *, dev_t);
int sr_hibernate_io(dev_t dev, daddr_t blkno, vaddr_t addr,
       size_t size, int op, void *page);
int printspl = 0;
int stdinnode;
int fbnode;
int optionsnode;
static int rootnode;
extern char *hw_prod, *hw_vendor;
static char *str2hex(char *, long *);
static int mbprint(void *, const char *);
void sync_crash(void);
int mainbus_match(struct device *, void *, void *);
static void mainbus_attach(struct device *, struct device *, void *);
int get_ncpus(void);
struct device *booted_device;
struct bootpath bootpath[16];
int nbootpath;
int bootnode;
static void bootpath_build(void);
static void bootpath_print(struct bootpath *);
void bootpath_nodes(struct bootpath *, int);
struct openbsd_bootdata obd __attribute__((section(".openbsd.bootdata")));
int bus_class(struct device *);
int instance_match(struct device *, void *, struct bootpath *bp);
void nail_bootdev(struct device *, struct bootpath *);
struct intrmap intrmap[] = {
 { "block", 11 },
 { "serial", 12 },
 { "scsi", 3 },
 { "scsi-2", 3 },
 { "network", 6 },
 { "display", 5 },
 { "audio", 8 },
 { "ide", 3 },
 { "SUNW,CS4231", 8 },
 { ((void *)0), 0 }
};
void sun4v_soft_state_init(void);
void sun4v_set_soft_state(int, const char *);
char sun4v_soft_state_booting[] __attribute__((__aligned__(32))) = "OpenBSD booting";
char sun4v_soft_state_running[] __attribute__((__aligned__(32))) = "OpenBSD running";
void sun4v_interrupt_init(void);
static char *
str2hex(char *str, long *vp)
{
 long v;
 int c;
 if (*str == 'w') {
  for (v = 1;; v++) {
   if (str[v] >= '0' && str[v] <= '9')
    continue;
   if (str[v] >= 'a' && str[v] <= 'f')
    continue;
   if (str[v] >= 'A' && str[v] <= 'F')
    continue;
   if (str[v] == '\0' || str[v] == ',')
    break;
   *vp = 0;
   return (str + v);
  }
  str++;
 }
 for (v = 0;; v = v * 16 + c, str++) {
  c = *(u_char *)str;
  if (c <= '9') {
   if ((c -= '0') < 0)
    break;
  } else if (c <= 'F') {
   if ((c -= 'A' - 10) < 10)
    break;
  } else if (c <= 'f') {
   if ((c -= 'a' - 10) < 10)
    break;
  } else
   break;
 }
 *vp = v;
 return (str);
}
int
get_ncpus(void)
{
 int node, child, stack[4], depth, ncpus;
 char buf[32];
 stack[0] = findroot();
 depth = 0;
 ncpus = 0;
 for (;;) {
  node = stack[depth];
  if (node == 0 || node == -1) {
   if (--depth < 0)
    goto done;
   stack[depth] = OF_peer(stack[depth]);
   continue;
  }
  if (OF_getprop(node, "device_type", buf, sizeof(buf)) > 0 &&
      strcmp(buf, "cpu") == 0)
   ncpus++;
  child = OF_child(node);
  if (child != 0 && child != -1 && depth < 3)
   stack[++depth] = child;
  else
   stack[depth] = OF_peer(stack[depth]);
 }
done:
 ncpusfound = ncpus;
 return (ncpus);
}
void
bootstrap(int nctx)
{
 extern int end;
 struct trapvec *romtba;
 char buf[32];
 int impl = 0;
 int ncpus;
 (*cn_tab->cn_init)(cn_tab);
 db_machine_init();
 ddb_init();
 OF_set_symbol_lookup(OF_sym2val, OF_val2sym);
 if (OF_getprop(findroot(), "compatible", buf, sizeof(buf)) > 0) {
  if (strcmp(buf, "sun4us") == 0)
   cputyp = 4;
  if (strcmp(buf, "sun4v") == 0)
   cputyp = 5;
 }
 if ((cputyp == 3) || (cputyp == 4))
  impl = (getver() & 0x0000ffff00000000ULL) >> 32;
 if (impl >= 0x14) {
  extern vaddr_t dlflush_start;
  vaddr_t *pva;
  u_int32_t insn;
  for (pva = &dlflush_start; *pva; pva++) {
   insn = *(u_int32_t *)(*pva);
   insn &= ~(0x47 << 5);
   insn |= (0x42 << 5);
   *(u_int32_t *)(*pva) = insn;
   flush((void *)(*pva));
  }
  cacheinfo.c_dcache_flush_page = us3_dcache_flush_page;
 }
 if ((impl >= 0x05 && impl <= 0x07) || (cputyp == 5)) {
  extern vaddr_t dlflush_start;
  vaddr_t *pva;
  for (pva = &dlflush_start; *pva; pva++) {
   *(u_int32_t *)(*pva) = 0x01000000;
   flush((void *)(*pva));
  }
  cacheinfo.c_dcache_flush_page = no_dcache_flush_page;
 }
 if (impl >= 0x06 && impl <= 0x07) {
  struct sun4u_patch {
   u_int32_t addr;
   u_int32_t insn;
  } *p;
  extern struct sun4u_patch sun4u_mtp_patch;
  extern struct sun4u_patch sun4u_mtp_patch_end;
  for (p = &sun4u_mtp_patch; p < &sun4u_mtp_patch_end; p++) {
   *(u_int32_t *)(vaddr_t)p->addr = p->insn;
   flush((void *)(vaddr_t)p->addr);
  }
 }
 if ((cputyp == 5)) {
  u_int32_t insn;
  int32_t disp;
  disp = (vaddr_t)hv_mmu_demap_page - (vaddr_t)sp_tlb_flush_pte;
  insn = 0x10800000 | disp >> 2;
  ((u_int32_t *)sp_tlb_flush_pte)[0] = insn;
  insn = 0x94102003;
  ((u_int32_t *)sp_tlb_flush_pte)[1] = insn;
  disp = (vaddr_t)hv_mmu_demap_ctx - (vaddr_t)sp_tlb_flush_ctx;
  insn = 0x10800000 | disp >> 2;
  ((u_int32_t *)sp_tlb_flush_ctx)[0] = insn;
  insn = 0x94102003;
  ((u_int32_t *)sp_tlb_flush_ctx)[1] = insn;
 {
  struct sun4v_patch {
   u_int32_t addr;
   u_int32_t insn;
  } *p;
  extern struct sun4v_patch sun4v_patch;
  extern struct sun4v_patch sun4v_patch_end;
  for (p = &sun4v_patch; p < &sun4v_patch_end; p++) {
   *(u_int32_t *)(vaddr_t)p->addr = p->insn;
   flush((void *)(vaddr_t)p->addr);
  }
  extern struct sun4v_patch sun4v_mp_patch;
  extern struct sun4v_patch sun4v_mp_patch_end;
  for (p = &sun4v_mp_patch; p < &sun4v_mp_patch_end; p++) {
   *(u_int32_t *)(vaddr_t)p->addr = p->insn;
   flush((void *)(vaddr_t)p->addr);
  }
 }
 }
 romtba = (struct trapvec *)sparc_rdpr_tba();
 __builtin_bcopy((&romtba[0x17f]), (&trapbase[0x17f]), (sizeof(struct trapvec)));
 flush((void *)trapbase);
 ncpus = get_ncpus();
 pmap_bootstrap(0x001000000, (u_long)&end, nctx, ncpus);
 if ((cputyp == 5)) {
  sun4v_soft_state_init();
  sun4v_set_soft_state(0x2, sun4v_soft_state_booting);
  sun4v_interrupt_init();
 }
}
void
bootpath_nodes(struct bootpath *bp, int nbp)
{
 int chosen;
 int i;
 char buf[128], *cp, c;
 chosen = OF_finddevice("/chosen");
 OF_getprop(chosen, "bootpath", buf, sizeof(buf));
 cp = buf;
 for (i = 0; i < nbp; i++, bp++) {
  if (*cp == '\0')
   return;
  while (*cp != '\0' && *cp == '/')
   cp++;
  while (*cp && *cp != '/')
   cp++;
  c = *cp;
  *cp = '\0';
  bootnode = bp->node = OF_finddevice(buf);
  *cp = c;
 }
}
static void
bootpath_build(void)
{
 register char *cp, *pp;
 register struct bootpath *bp;
 register long chosen;
 char buf[128];
 __builtin_bzero(((void *)bootpath), (sizeof(bootpath)));
 bp = bootpath;
 chosen = OF_finddevice("/chosen");
 OF_getprop(chosen, "bootpath", buf, sizeof(buf));
 cp = buf;
 while (cp != ((void *)0) && *cp == '/') {
  ++cp;
  pp = bp->name;
  while (*cp != '@' && *cp != '/' && *cp != '\0')
   *pp++ = *cp++;
  *pp = '\0';
  if (*cp == '@') {
   cp = str2hex(++cp, &bp->val[0]);
   if (*cp == ',')
    cp = str2hex(++cp, &bp->val[1]);
   if (*cp == ':') {
    bp->val[2] = *++cp - 'a';
    while (*cp != '\0' && *cp != '/')
     cp++;
   }
  } else {
   bp->val[0] = -1;
  }
  ++bp;
  ++nbootpath;
 }
 bp->name[0] = 0;
 bootpath_nodes(bootpath, nbootpath);
 OF_getprop(chosen, "bootargs", buf, sizeof(buf));
 cp = buf;
 while (*cp) {
  while(*cp == ' ' || *cp == '\t') cp++;
  if (*cp == '-' || *cp == '\0')
   break;
  while(*cp != ' ' && *cp != '\t' && *cp != '\0') cp++;
 }
 if (*cp != '-')
  return;
 for (;*++cp;) {
  int fl;
  fl = 0;
  switch(*cp) {
  case 'a':
   fl |= 0x0001;
   break;
  case 'b':
   fl |= 0x0008;
   break;
  case 'c':
   fl |= 0x0400;
   break;
  case 'd':
   fl |= 0x0040;
   break;
  case 's':
   fl |= 0x0002;
   break;
  default:
   break;
  }
  if (!fl) {
   printf("unknown option `%c'\n", *cp);
   continue;
  }
  boothowto |= fl;
  if (*cp == 'd') {
   db_enter();
  }
 }
}
static void
bootpath_print(struct bootpath *bp)
{
 printf("bootpath: ");
 while (bp->name[0]) {
  if (bp->val[0] == -1)
   printf("/%s%lx", bp->name, bp->val[1]);
  else
   printf("/%s@%lx,%lx", bp->name, bp->val[0], bp->val[1]);
  if (bp->val[2] != 0)
   printf(":%c", (int)bp->val[2] + 'a');
  bp++;
 }
 printf("\n");
}
struct bootpath *
bootpath_store(int storep, struct bootpath *bp)
{
 static struct bootpath *save;
 struct bootpath *retval;
 retval = save;
 if (storep)
  save = bp;
 return (retval);
}
void
cpu_configure(void)
{
 int pause = 0;
 if ((cputyp == 5)) {
  const char *prop;
  size_t len;
  int idx;
  mdesc_init();
  idx = mdesc_find_node("cpu");
  prop = mdesc_get_prop_data(idx, "hwcap-list", &len);
  if (prop) {
   while (len > 0) {
    if (strcmp(prop, "pause") == 0)
     pause = 1;
    len -= strlen(prop) + 1;
    prop += strlen(prop) + 1;
   }
  }
 }
 if (pause) {
  struct sun4v_patch {
   u_int32_t addr;
   u_int32_t insn;
  } *p;
  paddr_t pa;
  extern struct sun4v_patch sun4v_pause_patch;
  extern struct sun4v_patch sun4v_pause_patch_end;
  for (p = &sun4v_pause_patch; p < &sun4v_pause_patch_end; p++) {
   pmap_extract((&kernel_pmap_), (vaddr_t)p->addr, &pa);
   (__builtin_constant_p(0x15) ? ({ if((0x15) == 0x80 || (sizeof(u_int32_t) == 1 && (0x15) == 0x88)) *((volatile u_int32_t *)(pa)) = (p->insn); else __asm volatile("stwa" " %0, [%1] " "(0x15)" : : "r" ((p->insn)), "r" ((volatile u_int32_t *)(pa)) : "memory"); }) : stwa_nc((pa), 0x15, (p->insn)));
   flush((void *)(vaddr_t)p->addr);
  }
 }
 if (obd.version == 1 &&
     obd.len == sizeof(struct openbsd_bootdata)) {
  __builtin_memcpy((sr_bootuuid.sui_id), (obd.sr_uuid), (sizeof(sr_bootuuid.sui_id)));
  __builtin_memcpy((sr_bootkey), (obd.sr_maskkey), (sizeof(sr_bootkey)));
  explicit_bzero(obd.sr_maskkey, sizeof(obd.sr_maskkey));
 }
 bootpath_build();
 if (boothowto & 0x0400) {
  user_config();
 }
 _splraise(10);
        setpstate(getpstate()|0x002);
 if (config_rootfound("mainbus", ((void *)0)) == ((void *)0))
  panic("mainbus not configured");
        setpstate(getpstate()|0x002);
 (void)_spl(0);
 cold = 0;
 if ((cputyp == 5))
  sun4v_set_soft_state(0x1, sun4v_soft_state_running);
}
int sun4v_soft_state_initialized = 0;
void
sun4v_soft_state_init(void)
{
 uint64_t minor;
 if (prom_set_sun4v_api_version(0x003, 1, 0, &minor))
  return;
 prom_sun4v_soft_state_supported();
 sun4v_soft_state_initialized = 1;
}
void
sun4v_set_soft_state(int state, const char *desc)
{
 paddr_t pa;
 int err;
 if (!sun4v_soft_state_initialized)
  return;
 if (!pmap_extract((&kernel_pmap_), (vaddr_t)desc, &pa))
  panic("sun4v_set_soft_state: pmap_extract failed");
 err = hv_soft_state_set(state, pa);
 if (err != 0)
  printf("soft_state_set: %d\n", err);
}
void
sun4v_interrupt_init(void)
{
 uint64_t minor;
 if (prom_set_sun4v_api_version(0x002, 3, 0, &minor))
  return;
 sun4v_group_interrupt_major = 3;
}
void
diskconf(void)
{
 struct bootpath *bp;
 struct device *bootdv;
 bootpath_print(bootpath);
 bp = nbootpath == 0 ? ((void *)0) : &bootpath[nbootpath-1];
 bootdv = (bp == ((void *)0)) ? ((void *)0) : bp->dev;
 if (bootdv != ((void *)0))
  bootdv = mpath_bootdv(bootdv);
 setroot(bootdv, bp->val[2], 0x4000 | 0x0008);
 dumpconf();
}
void
sync_crash(void)
{
 panic("PROM sync command");
}
char *
clockfreq(long freq)
{
 char *p;
 static char buf[10];
 freq /= 1000;
 snprintf(buf, sizeof buf, "%ld", freq / 1000);
 freq %= 1000;
 if (freq) {
  freq += 1000;
  p = buf + strlen(buf);
  snprintf(p, buf + sizeof buf - p, "%ld", freq);
  *p = '.';
 }
 return (buf);
}
static int
mbprint(void *aux, const char *name)
{
 struct mainbus_attach_args *ma = aux;
 if (name)
  printf("\"%s\" at %s", ma->ma_name, name);
 if (ma->ma_address)
  printf(" addr 0x%08lx", (u_long)ma->ma_address[0]);
 if (ma->ma_pri)
  printf(" ipl %d", ma->ma_pri);
 return (1);
}
int
findroot(void)
{
 int node;
 if ((node = rootnode) == 0 && (node = OF_peer(0)) == 0)
  panic("no PROM root device");
 rootnode = node;
 return (node);
}
int
findnode(int first, const char *name)
{
 int node;
 char buf[32];
 for (node = first; node; node = OF_peer(node)) {
  if ((OF_getprop(node, "name", buf, sizeof(buf)) > 0) &&
   (strcmp(buf, name) == 0))
   return (node);
 }
 return (0);
}
int
mainbus_match(struct device *parent, void *cf, void *aux)
{
 return (1);
}
static void
mainbus_attach(struct device *parent, struct device *dev, void *aux)
{
extern struct sparc_bus_dma_tag mainbus_dma_tag;
extern bus_space_tag_t mainbus_space_tag;
 struct mainbus_attach_args ma;
 char buf[64];
 const char *const *ssp, *sp = ((void *)0);
 int node0, node, rv, len;
 static const char *const openboot_special[] = {
  "virtual-memory",
  "aliases",
  "memory",
  "openprom",
  "options",
  "packages",
  "chosen",
  ((void *)0)
 };
 if (OF_getprop(findroot(), "banner-name", buf, sizeof(buf)) > 0 ||
     OF_getprop(findroot(), "name", buf, sizeof(buf)) > 0)
  printf(": %s\n", buf);
 else
  printf("\n");
 if ((len = OF_getprop(findroot(), "name", buf, sizeof(buf))) > 0) {
  hw_prod = malloc(len, 2, 0x0002);
  if (hw_prod)
   strlcpy(hw_prod, buf, len);
  if (strncmp(buf, "SUNW,", 5) == 0)
   hw_vendor = "Sun";
  if (strncmp(buf, "FJSV,", 5) == 0)
   hw_vendor = "Fujitsu";
  if (strncmp(buf, "TAD,", 4) == 0)
   hw_vendor = "Tadpole";
  if (strncmp(buf, "NATE,", 5) == 0)
   hw_vendor = "Naturetech";
  if (strncmp(buf, "ORCL,", 5) == 0)
   hw_vendor = "Oracle";
  if (OF_getprop(findroot(), "model", buf, sizeof(buf)) > 0 &&
      strncmp(buf, "MOMENTUM,", 9) == 0)
   hw_vendor = "Momentum";
 }
 bootpath_store(1, bootpath);
 node = findroot();
 for (node0 = OF_child(node); node0; node0 = OF_peer(node0)) {
  if (OF_getprop(node0, "name", buf, sizeof(buf)) <= 0)
   continue;
 }
 for (node = OF_child(node); node; node = OF_peer(node)) {
  if (!checkstatus(node))
   continue;
  if (OF_getprop(node, "name", buf, sizeof(buf)) <= 0)
   continue;
  if (strcmp(buf, "cmp") == 0) {
   __builtin_bzero((&ma), (sizeof(ma)));
   ma.ma_node = node;
   ma.ma_name = buf;
   getprop(node, "reg", sizeof(*ma.ma_reg),
       &ma.ma_nreg, (void **)&ma.ma_reg);
   config_found_sm((dev), (&ma), (mbprint), ((void *)0));
   continue;
  }
  if (OF_getprop(node, "device_type", buf, sizeof(buf)) <= 0)
   continue;
  if (strcmp(buf, "cpu") == 0) {
   __builtin_bzero((&ma), (sizeof(ma)));
   ma.ma_node = node;
   OF_getprop(node, "name", buf, sizeof(buf));
   if (strcmp(buf, "cpu") == 0)
    OF_getprop(node, "compatible", buf, sizeof(buf));
   ma.ma_name = buf;
   getprop(node, "reg", sizeof(*ma.ma_reg),
       &ma.ma_nreg, (void **)&ma.ma_reg);
   config_found_sm((dev), (&ma), (mbprint), ((void *)0));
   continue;
  }
 }
 node = findroot();
 node0 = OF_child(node);
 optionsnode = findnode(node0, "options");
 if (optionsnode == 0)
  panic("no options in OPENPROM");
 for (node0 = OF_child(node); node0; node0 = OF_peer(node0)) {
  if (OF_getprop(node0, "name", buf, sizeof(buf)) <= 0)
   continue;
 }
 for (node = OF_child(node); node; node = OF_peer(node)) {
  int portid;
  ;
  if (OF_getprop(node, "device_type", buf, sizeof(buf)) > 0 &&
      strcmp(buf, "cpu") == 0)
   continue;
  if (OF_getprop(node, "name", buf, sizeof(buf)) > 0 &&
      strcmp(buf, "cmp") == 0)
   continue;
  ;
  for (ssp = openboot_special; (sp = *ssp) != ((void *)0); ssp++)
   if (strcmp(buf, sp) == 0)
    break;
  if (sp != ((void *)0))
   continue;
  if (!checkstatus(node))
   continue;
  __builtin_bzero((&ma), (sizeof ma));
  ma.ma_bustag = mainbus_space_tag;
  ma.ma_dmatag = &mainbus_dma_tag;
  ma.ma_name = buf;
  ma.ma_node = node;
  if (OF_getprop(node, "upa-portid", &portid, sizeof(portid)) !=
      sizeof(portid)) {
   if (OF_getprop(node, "portid", &portid,
       sizeof(portid)) != sizeof(portid))
    portid = -1;
  }
  ma.ma_upaid = portid;
  if (getprop(node, "reg", sizeof(*ma.ma_reg),
        &ma.ma_nreg, (void **)&ma.ma_reg) != 0)
   continue;
  rv = getprop(node, "interrupts", sizeof(*ma.ma_interrupts),
   &ma.ma_ninterrupts, (void **)&ma.ma_interrupts);
  if (rv != 0 && rv != 2) {
   free(ma.ma_reg, 2, 0);
   continue;
  }
  rv = getprop(node, "address", sizeof(*ma.ma_address),
   &ma.ma_naddress, (void **)&ma.ma_address);
  if (rv != 0 && rv != 2) {
   free(ma.ma_reg, 2, 0);
   free(ma.ma_interrupts, 2, 0);
   continue;
  }
  config_found_sm((dev), (&ma), (mbprint), ((void *)0));
  free(ma.ma_reg, 2, 0);
  free(ma.ma_interrupts, 2, 0);
  free(ma.ma_address, 2, 0);
 }
 extern int prom_cngetc(dev_t);
 if (cn_tab->cn_getc == prom_cngetc) {
  __builtin_bzero((&ma), (sizeof ma));
  ma.ma_name = "pcons";
  config_found_sm((dev), (&ma), (mbprint), ((void *)0));
 }
 extern todr_chip_handle_t todr_handle;
 if (todr_handle == ((void *)0)) {
  __builtin_bzero((&ma), (sizeof ma));
  ma.ma_name = "prtc";
  config_found_sm((dev), (&ma), (mbprint), ((void *)0));
 }
}
struct cfattach mainbus_ca = {
 sizeof(struct device), mainbus_match, mainbus_attach
};
int
getprop(int node, char *name, size_t size, int *nitem, void **bufp)
{
 void *buf;
 long len;
 *nitem = 0;
 len = getproplen(node, name);
 if (len <= 0)
  return (2);
 if ((len % size) != 0)
  return (22);
 buf = *bufp;
 if (buf == ((void *)0)) {
  buf = malloc(len + 1, 2, 0x0002);
  if (buf == ((void *)0))
   return (12);
 }
 OF_getprop(node, name, buf, len);
 *bufp = buf;
 *nitem = len / size;
 return (0);
}
long
getproplen(int node, char *name)
{
 return (OF_getproplen(node, name));
}
char *
getpropstring(int node, char *name)
{
 static char stringbuf[32];
 return (getpropstringA(node, name, stringbuf));
}
char *
getpropstringA(int node, char *name, char *buffer)
{
 int blen;
 if (getprop(node, name, 1, &blen, (void **)&buffer) != 0)
  blen = 0;
 buffer[blen] = '\0';
 return (buffer);
}
int
getpropint(int node, char *name, int deflt)
{
 int intbuf;
 if (OF_getprop(node, name, &intbuf, sizeof(intbuf)) != sizeof(intbuf))
  return (deflt);
 return (intbuf);
}
int
getpropspeed(int node, char *name)
{
 char buf[128];
 int i, speed = 0;
 if (OF_getprop(node, name, buf, sizeof(buf)) != -1) {
  for (i = 0; i < sizeof(buf); i++) {
   if (buf[i] < '0' || buf[i] > '9')
    break;
   speed *= 10;
   speed += buf[i] - '0';
  }
 }
 if (speed == 0)
  speed = 9600;
 return (speed);
}
int
firstchild(int node)
{
 return OF_child(node);
}
int
nextsibling(int node)
{
 return OF_peer(node);
}
int
checkstatus(int node)
{
 char buf[32];
 if (OF_getprop(node, "status", buf, sizeof(buf)) <= 0)
  return 1;
 if (strcmp(buf, "disabled") == 0 || strncmp(buf, "fail", 4) == 0)
  return 0;
 return 1;
}
int
node_has_property(int node, const char *prop)
{
 return (OF_getproplen(node, (caddr_t)prop) != -1);
}
int
romgetcursoraddr(int **rowp, int **colp)
{
 cell_t row = 0, col = 0;
 OF_interpret("stdout @ is my-self addr line# addr column# ",
     2, &col, &row);
 if (row == 0 || col == 0)
  return (-1);
 *rowp = (int *)(row + 4);
 *colp = (int *)(col + 4);
 return (0);
}
void
callrom(void)
{
 __asm volatile("wrpr	%%g0, 0, %%tl" : );
 OF_enter();
}
struct device *
getdevunit(char *name, int unit)
{
 struct device *dev = ((&alldevs)->tqh_first);
 char num[10], fullname[16];
 int lunit;
 snprintf(num, sizeof num, "%d", unit);
 lunit = strlen(num);
 if (strlen(name) + lunit >= sizeof(fullname) - 1)
  panic("config_attach: device name too long");
 strlcpy(fullname, name, sizeof fullname);
 strlcat(fullname, num, sizeof fullname);
 while (strcmp(dev->dv_xname, fullname) != 0) {
  if ((dev = ((dev)->dv_list.tqe_next)) == ((void *)0))
   return ((void *)0);
 }
 return dev;
}
void
device_register(struct device *dev, void *aux)
{
 struct mainbus_attach_args *ma = aux;
 struct pci_attach_args *pa = aux;
 struct sbus_attach_args *sa = aux;
 struct vbus_attach_args *va = aux;
 struct cbus_attach_args *ca = aux;
 struct bootpath *bp = bootpath_store(0, ((void *)0));
 struct device *busdev = dev->dv_parent;
 const char *devname = dev->dv_cfdata->cf_driver->cd_name;
 const char *busname;
 int node = -1;
 if (bp == ((void *)0))
  return;
 ;
 if (busdev == ((void *)0))
  return;
 busname = busdev->dv_cfdata->cf_driver->cd_name;
 if (strcmp(busname, "mainbus") == 0 ||
     strcmp(busname, "ssm") == 0 || strcmp(busname, "upa") == 0)
  node = ma->ma_node;
 else if (strcmp(busname, "sbus") == 0 ||
     strcmp(busname, "dma") == 0 || strcmp(busname, "ledma") == 0)
  node = sa->sa_node;
 else if (strcmp(busname, "vbus") == 0)
  node = va->va_node;
 else if (strcmp(busname, "cbus") == 0)
  node = ca->ca_node;
 else if (strcmp(busname, "pci") == 0)
  node = (int)(((pa->pa_tag)>>32)&0xffffffff);
 if (node == bootnode) {
  if (strcmp(devname, "vdsk") == 0) {
   bp->dev = dev;
   (bp + 1)->val[0] = 0;
   (bp + 1)->val[1] = 0;
   nbootpath++;
   bootpath_store(1, bp + 1);
   return;
  }
  nail_bootdev(dev, bp);
  return;
 }
 if (node == bp->node) {
  bp->dev = dev;
  ;
  bootpath_store(1, bp + 1);
  return;
 }
 if (strcmp(devname, "scsibus") == 0) {
  if (strcmp(bp->name, "fp") == 0 && bp->val[0] == 0) {
   ;
   bootpath_store(1, bp + 1);
   return;
  }
 }
 if (strcmp(busname, "scsibus") == 0) {
  struct scsi_attach_args *sa = aux;
  struct scsi_link *sl = sa->sa_sc_link;
  struct scsibus_softc *sbsc =
      (struct scsibus_softc *)dev->dv_parent;
  u_int target = bp->val[0];
  u_int lun = bp->val[1];
  if (bp->val[0] & 0xffffffff00000000 && bp->val[0] != -1) {
   if (bp->val[0] == sl->port_wwn && lun == sl->lun) {
    nail_bootdev(dev, bp);
   }
   return;
  }
  if ((bp-1)->dev != sbsc->sc_dev.dv_parent)
   return;
  if (target >= sl->adapter_buswidth ||
      lun >= sl->luns) {
   printf("SCSI disk bootpath component not accepted: "
          "target %u; lun %u\n", target, lun);
   return;
  }
  if (target == sl->target && lun == sl->lun) {
   nail_bootdev(dev, bp);
   return;
  }
 }
 if (strcmp("wd", devname) == 0) {
  struct ata_atapi_attach *aa = aux;
  u_int channel, drive;
  if (strcmp(bp->name, "ata") == 0 &&
      bp->val[0] == aa->aa_channel) {
   channel = bp->val[0]; bp++;
   drive = bp->val[0];
  } else {
   channel = bp->val[0] / 2;
   drive = bp->val[0] % 2;
  }
  if (channel == aa->aa_channel &&
      drive == aa->aa_drv_data->drive) {
   nail_bootdev(dev, bp);
   return;
  }
 }
}
void
nail_bootdev(struct device *dev, struct bootpath *bp)
{
 if (bp->dev != ((void *)0))
  panic("device_register: already got a boot device: %s",
   bp->dev->dv_xname);
 booted_device = bp->dev = dev;
 ;
 bootpath_store(1, ((void *)0));
}
struct nam2blk nam2blk[] = {
 { "sd", 7 },
 { "rd", 5 },
 { "wd", 12 },
 { "cd", 18 },
 { "vnd", 8 },
 { ((void *)0), -1 }
};
