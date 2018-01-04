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
struct m_tag {
 struct { struct m_tag *sle_next; } m_tag_link;
 u_int16_t m_tag_id;
 u_int16_t m_tag_len;
};
struct m_hdr {
 struct mbuf *mh_next;
 struct mbuf *mh_nextpkt;
 caddr_t mh_data;
 u_int mh_len;
 short mh_type;
 u_short mh_flags;
};
struct pf_state_key;
struct inpcb;
struct pkthdr_pf {
 struct pf_state_key *statekey;
 struct inpcb *inp;
 u_int32_t qid;
 u_int16_t tag;
 u_int8_t flags;
 u_int8_t routed;
 u_int8_t prio;
 u_int8_t pad[3];
};
struct pkthdr {
 void *ph_cookie;
 struct { struct m_tag *slh_first; } ph_tags;
 int64_t ph_timestamp;
 int len;
 u_int16_t ph_tagsset;
 u_int16_t ph_flowid;
 u_int16_t csum_flags;
 u_int16_t ether_vtag;
 u_int ph_rtableid;
 u_int ph_ifidx;
 u_int8_t ph_loopcnt;
 u_int8_t ph_family;
 struct pkthdr_pf pf;
};
struct mbuf_ext {
 caddr_t ext_buf;
 void *ext_arg;
 u_int ext_free_fn;
 u_int ext_size;
 struct mbuf *ext_nextref;
 struct mbuf *ext_prevref;
};
struct mbuf {
 struct m_hdr m_hdr;
 union {
  struct {
   struct pkthdr MH_pkthdr;
   union {
    struct mbuf_ext MH_ext;
    char MH_databuf[((256 - sizeof(struct m_hdr)) - sizeof(struct pkthdr))];
   } MH_dat;
  } MH;
  char M_databuf[(256 - sizeof(struct m_hdr))];
 } M_dat;
};
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
u_int mextfree_register(void (*)(caddr_t, u_int, void *));
struct mbstat {
 u_long m_drops;
 u_long m_wait;
 u_long m_drain;
 u_short m_mtypes[256];
};
struct mutex {
 volatile void *mtx_owner;
 int mtx_wantipl;
 int mtx_oldipl;
};
void __mtx_init(struct mutex *, int);
void __mtx_enter(struct mutex *);
int __mtx_enter_try(struct mutex *);
void __mtx_leave(struct mutex *);
struct mbuf_list {
 struct mbuf *ml_head;
 struct mbuf *ml_tail;
 u_int ml_len;
};
struct mbuf_queue {
 struct mutex mq_mtx;
 struct mbuf_list mq_list;
 u_int mq_maxlen;
 u_int mq_drops;
};
struct pool;
extern int nmbclust;
extern int mblowat;
extern int mcllowat;
extern int max_linkhdr;
extern int max_protohdr;
extern int max_hdr;
void mbinit(void);
void mbcpuinit(void);
struct mbuf *m_copym(struct mbuf *, int, int, int);
struct mbuf *m_free(struct mbuf *);
struct mbuf *m_get(int, int);
struct mbuf *m_getclr(int, int);
struct mbuf *m_gethdr(int, int);
struct mbuf *m_inithdr(struct mbuf *);
void m_resethdr(struct mbuf *);
int m_defrag(struct mbuf *, int);
struct mbuf *m_prepend(struct mbuf *, int, int);
struct mbuf *m_pulldown(struct mbuf *, int, int, int *);
struct mbuf *m_pullup(struct mbuf *, int);
struct mbuf *m_split(struct mbuf *, int, int);
struct mbuf *m_makespace(struct mbuf *, int, int, int *);
struct mbuf *m_getptr(struct mbuf *, int, int *);
int m_leadingspace(struct mbuf *);
int m_trailingspace(struct mbuf *);
struct mbuf *m_clget(struct mbuf *, int, u_int);
void m_extref(struct mbuf *, struct mbuf *);
void m_pool_init(struct pool *, u_int, u_int, const char *);
void m_extfree_pool(caddr_t, u_int, void *);
void m_adj(struct mbuf *, int);
int m_copyback(struct mbuf *, int, int, const void *, int);
struct mbuf *m_freem(struct mbuf *);
void m_purge(struct mbuf *);
void m_reclaim(void *, int);
void m_copydata(struct mbuf *, int, int, caddr_t);
void m_cat(struct mbuf *, struct mbuf *);
struct mbuf *m_devget(char *, int, int);
int m_apply(struct mbuf *, int, int,
     int (*)(caddr_t, caddr_t, unsigned int), caddr_t);
struct mbuf *m_dup_pkt(struct mbuf *, unsigned int, int);
int m_dup_pkthdr(struct mbuf *, struct mbuf *, int);
static inline struct mbuf *
m_freemp(struct mbuf **mp)
{
 struct mbuf *m = *mp;
 *mp = ((void *)0);
 return m_freem(m);
}
struct m_tag *m_tag_get(int, int, int);
void m_tag_prepend(struct mbuf *, struct m_tag *);
void m_tag_delete(struct mbuf *, struct m_tag *);
void m_tag_delete_chain(struct mbuf *);
struct m_tag *m_tag_find(struct mbuf *, int, struct m_tag *);
struct m_tag *m_tag_copy(struct m_tag *, int);
int m_tag_copy_chain(struct mbuf *, struct mbuf *, int);
void m_tag_init(struct mbuf *);
struct m_tag *m_tag_first(struct mbuf *);
struct m_tag *m_tag_next(struct mbuf *, struct m_tag *);
void ml_init(struct mbuf_list *);
void ml_enqueue(struct mbuf_list *, struct mbuf *);
struct mbuf * ml_dequeue(struct mbuf_list *);
void ml_enlist(struct mbuf_list *, struct mbuf_list *);
struct mbuf * ml_dechain(struct mbuf_list *);
unsigned int ml_purge(struct mbuf_list *);
void mq_init(struct mbuf_queue *, u_int, int);
int mq_enqueue(struct mbuf_queue *, struct mbuf *);
struct mbuf * mq_dequeue(struct mbuf_queue *);
int mq_enlist(struct mbuf_queue *, struct mbuf_list *);
void mq_delist(struct mbuf_queue *, struct mbuf_list *);
struct mbuf * mq_dechain(struct mbuf_queue *);
unsigned int mq_purge(struct mbuf_queue *);
extern long hostid;
extern char hostname[256];
extern int hostnamelen;
extern char domainname[256];
extern int domainnamelen;
extern struct timespec boottime;
extern struct timezone tz;
extern int tick;
extern int tickfix;
extern int tickfixinterval;
extern int tickadj;
extern int ticks;
extern int hz;
extern int stathz;
extern int profhz;
extern int lbolt;
extern int tickdelta;
extern long timedelta;
extern int64_t adjtimedelta;
extern struct bintime naptime;
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
struct kinfo_pool {
 unsigned int pr_size;
 unsigned int pr_pgsize;
 unsigned int pr_itemsperpage;
 unsigned int pr_minpages;
 unsigned int pr_maxpages;
 unsigned int pr_hardlimit;
 unsigned int pr_npages;
 unsigned int pr_nout;
 unsigned int pr_nitems;
 unsigned long pr_nget;
 unsigned long pr_nput;
 unsigned long pr_nfail;
 unsigned long pr_npagealloc;
 unsigned long pr_npagefree;
 unsigned int pr_hiwat;
 unsigned long pr_nidle;
};
struct kinfo_pool_cache {
 uint64_t pr_ngc;
 unsigned int pr_len;
 unsigned int pr_nitems;
 unsigned int pr_contention;
};
struct kinfo_pool_cache_cpu {
 unsigned int pr_cpu;
 uint64_t pr_nget;
 uint64_t pr_nfail;
 uint64_t pr_nput;
 uint64_t pr_nlget;
 uint64_t pr_nlfail;
 uint64_t pr_nlput;
};
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
struct pool;
struct pool_request;
struct pool_lock_ops;
struct pool_requests { struct pool_request *tqh_first; struct pool_request **tqh_last; };
struct pool_allocator {
 void *(*pa_alloc)(struct pool *, int, int *);
 void (*pa_free)(struct pool *, void *);
 size_t pa_pagesz;
};
struct pool_pagelist { struct pool_page_header *tqh_first; struct pool_page_header **tqh_last; };
struct pool_cache_item;
struct pool_cache_lists { struct pool_cache_item *tqh_first; struct pool_cache_item **tqh_last; };
struct cpumem;
union pool_lock {
 struct mutex prl_mtx;
 struct rwlock prl_rwlock;
};
struct pool {
 union pool_lock pr_lock;
 const struct pool_lock_ops *
   pr_lock_ops;
 struct { struct pool *sqe_next; }
   pr_poollist;
 struct pool_pagelist
   pr_emptypages;
 struct pool_pagelist
   pr_fullpages;
 struct pool_pagelist
   pr_partpages;
 struct pool_page_header *
   pr_curpage;
 unsigned int pr_size;
 unsigned int pr_minitems;
 unsigned int pr_minpages;
 unsigned int pr_maxpages;
 unsigned int pr_npages;
 unsigned int pr_itemsperpage;
 unsigned int pr_slack;
 unsigned int pr_nitems;
 unsigned int pr_nout;
 unsigned int pr_hardlimit;
 unsigned int pr_serial;
 unsigned int pr_pgsize;
 vaddr_t pr_pgmask;
 struct pool_allocator *
   pr_alloc;
 const char * pr_wchan;
 int pr_flags;
 int pr_ipl;
 struct phtree { struct rb_tree rbh_root; }
   pr_phtree;
 struct cpumem * pr_cache;
 unsigned long pr_cache_magic[2];
 union pool_lock pr_cache_lock;
 struct pool_cache_lists
   pr_cache_lists;
 u_int pr_cache_nitems;
 u_int pr_cache_items;
 u_int pr_cache_contention;
 u_int pr_cache_contention_prev;
 int pr_cache_tick;
 int pr_cache_nout;
 uint64_t pr_cache_ngc;
 u_int pr_align;
 u_int pr_maxcolors;
 int pr_phoffset;
 const char *pr_hardlimit_warning;
 struct timeval pr_hardlimit_ratecap;
 struct timeval pr_hardlimit_warning_last;
 union pool_lock pr_requests_lock;
 struct pool_requests
   pr_requests;
 unsigned int pr_requesting;
 unsigned long pr_nget;
 unsigned long pr_nfail;
 unsigned long pr_nput;
 unsigned long pr_npagealloc;
 unsigned long pr_npagefree;
 unsigned int pr_hiwat;
 unsigned long pr_nidle;
 const struct kmem_pa_mode *
   pr_crange;
};
extern struct pool_allocator pool_allocator_single;
extern struct pool_allocator pool_allocator_multi;
struct pool_request {
 struct { struct pool_request *tqe_next; struct pool_request **tqe_prev; } pr_entry;
 void (*pr_handler)(struct pool *, void *, void *);
 void *pr_cookie;
 void *pr_item;
};
void pool_init(struct pool *, size_t, u_int, int, int,
      const char *, struct pool_allocator *);
void pool_cache_init(struct pool *);
void pool_destroy(struct pool *);
void pool_setlowat(struct pool *, int);
void pool_sethiwat(struct pool *, int);
int pool_sethardlimit(struct pool *, u_int, const char *, int);
struct uvm_constraint_range;
void pool_set_constraints(struct pool *,
      const struct kmem_pa_mode *mode);
void *pool_get(struct pool *, int) __attribute__((__malloc__));
void pool_request_init(struct pool_request *,
      void (*)(struct pool *, void *, void *), void *);
void pool_request(struct pool *, struct pool_request *);
void pool_put(struct pool *, void *);
int pool_reclaim(struct pool *);
void pool_reclaim_all(void);
int pool_prime(struct pool *, int);
void pool_printit(struct pool *, const char *,
      int (*)(const char *, ...));
void pool_walk(struct pool *, int, int (*)(const char *, ...),
      void (*)(void *, int, int (*)(const char *, ...)));
void dma_alloc_init(void);
void *dma_alloc(size_t size, int flags);
void dma_free(void *m, size_t size);
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
struct ifnet;
typedef int (*ifm_change_cb_t)(struct ifnet *);
typedef void (*ifm_stat_cb_t)(struct ifnet *, struct ifmediareq *);
struct ifmedia_entry {
 struct { struct ifmedia_entry *tqe_next; struct ifmedia_entry **tqe_prev; } ifm_list;
 uint64_t ifm_media;
 u_int ifm_data;
 void *ifm_aux;
};
struct ifmedia {
 uint64_t ifm_mask;
 uint64_t ifm_media;
 struct ifmedia_entry *ifm_cur;
 struct { struct ifmedia_entry *tqh_first; struct ifmedia_entry **tqh_last; } ifm_list;
 ifm_change_cb_t ifm_change;
 ifm_stat_cb_t ifm_status;
};
void ifmedia_init(struct ifmedia *, uint64_t, ifm_change_cb_t,
      ifm_stat_cb_t);
void ifmedia_add(struct ifmedia *, uint64_t, int, void *);
void ifmedia_list_add(struct ifmedia *, struct ifmedia_entry *,
     int);
void ifmedia_set(struct ifmedia *, uint64_t);
int ifmedia_ioctl(struct ifnet *, struct ifreq *, struct ifmedia *,
     u_long);
struct ifmedia_entry *ifmedia_match(struct ifmedia *, uint64_t, uint64_t);
void ifmedia_delete_instance(struct ifmedia *, uint64_t);
uint64_t ifmedia_baudrate(uint64_t);
struct ifmedia_description {
 uint64_t ifmt_word;
 const char *ifmt_string;
};
struct ifmedia_baudrate {
 uint64_t ifmb_word;
 uint64_t ifmb_baudrate;
};
struct ifmedia_status_description {
 uint64_t ifms_type;
 uint64_t ifms_valid;
 uint64_t ifms_bit;
 const char *ifms_string[2];
};
typedef __in_addr_t in_addr_t;
typedef __in_port_t in_port_t;
struct in_addr {
 in_addr_t s_addr;
};
struct sockaddr_in {
 u_int8_t sin_len;
 sa_family_t sin_family;
 in_port_t sin_port;
 struct in_addr sin_addr;
 int8_t sin_zero[8];
};
struct ip_opts {
 struct in_addr ip_dst;
 int8_t ip_opts[40];
};
struct ip_mreq {
 struct in_addr imr_multiaddr;
 struct in_addr imr_interface;
};
struct in6_addr {
 union {
  u_int8_t __u6_addr8[16];
  u_int16_t __u6_addr16[8];
  u_int32_t __u6_addr32[4];
 } __u6_addr;
};
struct sockaddr_in6 {
 u_int8_t sin6_len;
 sa_family_t sin6_family;
 in_port_t sin6_port;
 u_int32_t sin6_flowinfo;
 struct in6_addr sin6_addr;
 u_int32_t sin6_scope_id;
};
extern const struct sockaddr_in6 sa6_any;
extern const struct in6_addr in6mask0;
extern const struct in6_addr in6mask32;
extern const struct in6_addr in6mask64;
extern const struct in6_addr in6mask96;
extern const struct in6_addr in6mask128;
extern const struct in6_addr in6addr_any;
extern const struct in6_addr in6addr_loopback;
extern const struct in6_addr in6addr_intfacelocal_allnodes;
extern const struct in6_addr in6addr_linklocal_allnodes;
extern const struct in6_addr in6addr_linklocal_allrouters;
struct route_in6 {
 struct rtentry *ro_rt;
 u_long ro_tableid;
 struct sockaddr_in6 ro_dst;
};
struct ipv6_mreq {
 struct in6_addr ipv6mr_multiaddr;
 unsigned int ipv6mr_interface;
};
struct in6_pktinfo {
 struct in6_addr ipi6_addr;
 unsigned int ipi6_ifindex;
};
struct ip6_mtuinfo {
 struct sockaddr_in6 ip6m_addr;
 u_int32_t ip6m_mtu;
};
extern const u_char inet6ctlerrmap[];
extern struct in6_addr zeroin6_addr;
struct mbuf;
struct ifnet;
struct cmsghdr;
void ipv6_input(struct ifnet *, struct mbuf *);
int in6_cksum(struct mbuf *, u_int8_t, u_int32_t, u_int32_t);
void in6_proto_cksum_out(struct mbuf *, struct ifnet *);
int in6_localaddr(struct in6_addr *);
int in6_addrscope(struct in6_addr *);
struct in6_ifaddr *in6_ifawithscope(struct ifnet *, struct in6_addr *, u_int);
int in6_mask2len(struct in6_addr *, u_char *);
int in6_nam2sin6(const struct mbuf *, struct sockaddr_in6 **);
struct inpcb;
int in6_embedscope(struct in6_addr *, const struct sockaddr_in6 *,
     struct inpcb *);
void in6_recoverscope(struct sockaddr_in6 *, const struct in6_addr *);
void in6_clearscope(struct in6_addr *);
struct sockaddr;
struct sockaddr_in6;
struct ifaddr;
struct in6_ifaddr;
static inline struct sockaddr_in6 *
satosin6(struct sockaddr *sa)
{
 return ((struct sockaddr_in6 *)(sa));
}
static inline struct sockaddr *
sin6tosa(struct sockaddr_in6 *sin6)
{
 return ((struct sockaddr *)(sin6));
}
static inline struct in6_ifaddr *
ifatoia6(struct ifaddr *ifa)
{
 return ((struct in6_ifaddr *)(ifa));
}

struct cmsghdr;
extern int inet6_opt_init(void *, socklen_t);
extern int inet6_opt_append(void *, socklen_t, int, u_int8_t,
  socklen_t, u_int8_t, void **);
extern int inet6_opt_finish(void *, socklen_t, int);
extern int inet6_opt_set_val(void *, int, void *, socklen_t);
extern int inet6_opt_next(void *, socklen_t, int, u_int8_t *,
  socklen_t *, void **);
extern int inet6_opt_find(void *, socklen_t, int, u_int8_t,
  socklen_t *, void **);
extern int inet6_opt_get_val(void *, int, void *, socklen_t);
extern socklen_t inet6_rth_space(int, int);
extern void *inet6_rth_init(void *, socklen_t, int, int);
extern int inet6_rth_add(void *, const struct in6_addr *);
extern int inet6_rth_reverse(const void *, void *);
extern int inet6_rth_segments(const void *);
extern struct in6_addr *inet6_rth_getaddr(const void *, int);

extern const int inetctlerrmap[];
extern struct in_addr zeroin_addr;
struct mbuf;
struct sockaddr;
struct sockaddr_in;
struct ifaddr;
struct in_ifaddr;
void ipv4_input(struct ifnet *, struct mbuf *);
int in_broadcast(struct in_addr, u_int);
int in_canforward(struct in_addr);
int in_cksum(struct mbuf *, int);
int in4_cksum(struct mbuf *, u_int8_t, int, int);
void in_proto_cksum_out(struct mbuf *, struct ifnet *);
void in_ifdetach(struct ifnet *);
int in_mask2len(struct in_addr *);
void in_len2mask(struct in_addr *, int);
int in_nam2sin(const struct mbuf *, struct sockaddr_in **);
char *inet_ntoa(struct in_addr);
int inet_nat64(int, const void *, void *, const void *, u_int8_t);
int inet_nat46(int, const void *, void *, const void *, u_int8_t);
const char *inet_ntop(int, const void *, char *, socklen_t);
const char *sockaddr_ntop(struct sockaddr *, char *, size_t);
static inline struct sockaddr_in *
satosin(struct sockaddr *sa)
{
 return ((struct sockaddr_in *)(sa));
}
static inline struct sockaddr *
sintosa(struct sockaddr_in *sin)
{
 return ((struct sockaddr *)(sin));
}
static inline struct in_ifaddr *
ifatoia(struct ifaddr *ifa)
{
 return ((struct in_ifaddr *)(ifa));
}
struct ether_addr {
 u_int8_t ether_addr_octet[6];
};
struct ether_header {
 u_int8_t ether_dhost[6];
 u_int8_t ether_shost[6];
 u_int16_t ether_type;
};
struct ether_vlan_header {
        u_char evl_dhost[6];
        u_char evl_shost[6];
        u_int16_t evl_encap_proto;
        u_int16_t evl_tag;
        u_int16_t evl_proto;
};
struct ether_arp {
 struct arphdr ea_hdr;
 u_int8_t arp_sha[6];
 u_int8_t arp_spa[4];
 u_int8_t arp_tha[6];
 u_int8_t arp_tpa[4];
};
struct sockaddr_inarp {
 u_int8_t sin_len;
 u_int8_t sin_family;
 u_int16_t sin_port;
 struct in_addr sin_addr;
 struct in_addr sin_srcaddr;
 u_int16_t sin_tos;
 u_int16_t sin_other;
};
struct ifnet;
struct ifq_ops;
struct ifqueue {
 struct ifnet *ifq_if;
 struct taskq *ifq_softnet;
 union {
  void *_ifq_softc;
  struct ifqueue *_ifq_ifqs[1];
 } _ifq_ptr;
 struct mutex ifq_mtx;
 const struct ifq_ops *ifq_ops;
 void *ifq_q;
 struct mbuf_list ifq_free;
 unsigned int ifq_len;
 unsigned int ifq_oactive;
 uint64_t ifq_packets;
 uint64_t ifq_bytes;
 uint64_t ifq_qdrops;
 uint64_t ifq_errors;
 uint64_t ifq_mcasts;
 struct mutex ifq_task_mtx;
 struct task_list ifq_task_list;
 void *ifq_serializer;
 struct task ifq_bundle;
 struct task ifq_start;
 struct task ifq_restart;
 unsigned int ifq_maxlen;
 unsigned int ifq_idx;
};
struct ifiqueue {
 struct ifnet *ifiq_if;
 struct taskq *ifiq_softnet;
 union {
  void *_ifiq_softc;
  struct ifiqueue *_ifiq_ifiqs[1];
 } _ifiq_ptr;
 struct mutex ifiq_mtx;
 struct mbuf_list ifiq_ml;
 struct task ifiq_task;
 uint64_t ifiq_packets;
 uint64_t ifiq_bytes;
 uint64_t ifiq_qdrops;
 uint64_t ifiq_errors;
 uint64_t ifiq_mcasts;
 uint64_t ifiq_noproto;
 unsigned int ifiq_idx;
};
struct ifq_ops {
 unsigned int (*ifqop_idx)(unsigned int,
        const struct mbuf *);
 struct mbuf *(*ifqop_enq)(struct ifqueue *, struct mbuf *);
 struct mbuf *(*ifqop_deq_begin)(struct ifqueue *, void **);
 void (*ifqop_deq_commit)(struct ifqueue *,
        struct mbuf *, void *);
 void (*ifqop_purge)(struct ifqueue *,
        struct mbuf_list *);
 void *(*ifqop_alloc)(unsigned int, void *);
 void (*ifqop_free)(unsigned int, void *);
};
void ifq_init(struct ifqueue *, struct ifnet *, unsigned int);
void ifq_attach(struct ifqueue *, const struct ifq_ops *, void *);
void ifq_destroy(struct ifqueue *);
void ifq_add_data(struct ifqueue *, struct if_data *);
int ifq_enqueue(struct ifqueue *, struct mbuf *);
void ifq_start(struct ifqueue *);
struct mbuf *ifq_deq_begin(struct ifqueue *);
void ifq_deq_commit(struct ifqueue *, struct mbuf *);
void ifq_deq_rollback(struct ifqueue *, struct mbuf *);
struct mbuf *ifq_dequeue(struct ifqueue *);
void ifq_mfreem(struct ifqueue *, struct mbuf *);
void ifq_mfreeml(struct ifqueue *, struct mbuf_list *);
unsigned int ifq_purge(struct ifqueue *);
void *ifq_q_enter(struct ifqueue *, const struct ifq_ops *);
void ifq_q_leave(struct ifqueue *, void *);
void ifq_serialize(struct ifqueue *, struct task *);
int ifq_is_serialized(struct ifqueue *);
void ifq_barrier(struct ifqueue *);
static inline void
ifq_set_oactive(struct ifqueue *ifq)
{
 ifq->ifq_oactive = 1;
}
static inline void
ifq_clr_oactive(struct ifqueue *ifq)
{
 ifq->ifq_oactive = 0;
}
static inline unsigned int
ifq_is_oactive(struct ifqueue *ifq)
{
 return (ifq->ifq_oactive);
}
static inline void
ifq_restart(struct ifqueue *ifq)
{
 ifq_serialize(ifq, &ifq->ifq_restart);
}
static inline unsigned int
ifq_idx(struct ifqueue *ifq, unsigned int nifqs, const struct mbuf *m)
{
 return ((*ifq->ifq_ops->ifqop_idx)(nifqs, m));
}
extern const struct ifq_ops * const ifq_priq_ops;
void ifiq_init(struct ifiqueue *, struct ifnet *, unsigned int);
void ifiq_destroy(struct ifiqueue *);
int ifiq_input(struct ifiqueue *, struct mbuf_list *,
       unsigned int);
int ifiq_enqueue(struct ifiqueue *, struct mbuf *);
void ifiq_add_data(struct ifiqueue *, struct if_data *);
void ifiq_barrier(struct ifiqueue *);
struct rtentry;
struct timeout;
struct ifnet;
struct task;
struct if_clone {
 struct { struct if_clone *le_next; struct if_clone **le_prev; } ifc_list;
 const char *ifc_name;
 size_t ifc_namelen;
 int (*ifc_create)(struct if_clone *, int);
 int (*ifc_destroy)(struct ifnet *);
};
struct ifnet_head { struct ifnet *tqh_first; struct ifnet **tqh_last; };
struct ifnet {
 void *if_softc;
 struct refcnt if_refcnt;
 struct { struct ifnet *tqe_next; struct ifnet **tqe_prev; } if_list;
 struct { struct ifaddr *tqh_first; struct ifaddr **tqh_last; } if_addrlist;
 struct { struct ifmaddr *tqh_first; struct ifmaddr **tqh_last; } if_maddrlist;
 struct { struct ifg_list *tqh_first; struct ifg_list **tqh_last; } if_groups;
 struct hook_desc_head *if_addrhooks;
 struct hook_desc_head *if_linkstatehooks;
 struct hook_desc_head *if_detachhooks;
 void (*if_rtrequest)(struct ifnet *, int, struct rtentry *);
 char if_xname[16];
 int if_pcount;
 caddr_t if_bpf;
 caddr_t if_bridgeport;
 caddr_t if_switchport;
 caddr_t if_mcast;
 caddr_t if_mcast6;
 caddr_t if_pf_kif;
 union {
  caddr_t carp_s;
  struct ifnet *carp_d;
 } if_carp_ptr;
 unsigned int if_index;
 short if_timer;
 unsigned short if_flags;
 int if_xflags;
 struct if_data if_data;
 uint32_t if_hardmtu;
 char if_description[64];
 u_short if_rtlabelid;
 uint8_t if_priority;
 uint8_t if_llprio;
 struct timeout *if_slowtimo;
 struct task *if_watchdogtask;
 struct task *if_linkstatetask;
 struct srpl if_inputs;
 int (*if_output)(struct ifnet *, struct mbuf *, struct sockaddr *,
       struct rtentry *);
 int (*if_ll_output)(struct ifnet *, struct mbuf *,
      struct sockaddr *, struct rtentry *);
 void (*if_start)(struct ifnet *);
 int (*if_ioctl)(struct ifnet *, u_long, caddr_t);
 void (*if_watchdog)(struct ifnet *);
 int (*if_wol)(struct ifnet *, int);
 struct ifqueue if_snd;
 struct ifqueue **if_ifqs;
 void (*if_qstart)(struct ifqueue *);
 unsigned int if_nifqs;
 struct ifiqueue if_rcv;
 struct ifiqueue **if_iqs;
 unsigned int if_niqs;
 struct sockaddr_dl *if_sadl;
 void *if_afdata[36];
};
struct ifaddr {
 struct sockaddr *ifa_addr;
 struct sockaddr *ifa_dstaddr;
 struct sockaddr *ifa_netmask;
 struct ifnet *ifa_ifp;
 struct { struct ifaddr *tqe_next; struct ifaddr **tqe_prev; } ifa_list;
 u_int ifa_flags;
 u_int ifa_refcnt;
 int ifa_metric;
};
struct ifmaddr {
 struct sockaddr *ifma_addr;
 unsigned int ifma_ifidx;
 unsigned int ifma_refcnt;
 struct { struct ifmaddr *tqe_next; struct ifmaddr **tqe_prev; } ifma_list;
};
struct ifg_group {
 char ifg_group[16];
 u_int ifg_refcnt;
 caddr_t ifg_pf_kif;
 int ifg_carp_demoted;
 struct { struct ifg_member *tqh_first; struct ifg_member **tqh_last; } ifg_members;
 struct { struct ifg_group *tqe_next; struct ifg_group **tqe_prev; } ifg_next;
};
struct ifg_member {
 struct { struct ifg_member *tqe_next; struct ifg_member **tqe_prev; } ifgm_next;
 struct ifnet *ifgm_ifp;
};
struct ifg_list {
 struct ifg_group *ifgl_group;
 struct { struct ifg_list *tqe_next; struct ifg_list **tqe_prev; } ifgl_next;
};
struct niqueue {
 struct mbuf_queue ni_q;
 u_int ni_isr;
};
void niq_init(struct niqueue *, u_int, u_int);
int niq_enqueue(struct niqueue *, struct mbuf *);
int niq_enlist(struct niqueue *, struct mbuf_list *);
extern struct ifnet_head ifnet;
void if_start(struct ifnet *);
int if_enqueue_try(struct ifnet *, struct mbuf *);
int if_enqueue(struct ifnet *, struct mbuf *);
void if_input(struct ifnet *, struct mbuf_list *);
void if_input_process(struct ifnet *, struct mbuf_list *);
int if_input_local(struct ifnet *, struct mbuf *, sa_family_t);
int if_output_local(struct ifnet *, struct mbuf *, sa_family_t);
void if_rtrequest_dummy(struct ifnet *, int, struct rtentry *);
void p2p_rtrequest(struct ifnet *, int, struct rtentry *);
struct ifaddr *ifa_ifwithaddr(struct sockaddr *, u_int);
struct ifaddr *ifa_ifwithdstaddr(struct sockaddr *, u_int);
struct ifaddr *ifaof_ifpforaddr(struct sockaddr *, struct ifnet *);
void ifafree(struct ifaddr *);
int if_isconnected(const struct ifnet *, unsigned int);
void if_clone_attach(struct if_clone *);
void if_clone_detach(struct if_clone *);
int if_clone_create(const char *, int);
int if_clone_destroy(const char *);
struct if_clone *
 if_clone_lookup(const char *, int *);
void ifa_add(struct ifnet *, struct ifaddr *);
void ifa_del(struct ifnet *, struct ifaddr *);
void ifa_update_broadaddr(struct ifnet *, struct ifaddr *,
     struct sockaddr *);
void if_ih_insert(struct ifnet *, int (*)(struct ifnet *, struct mbuf *,
     void *), void *);
void if_ih_remove(struct ifnet *, int (*)(struct ifnet *, struct mbuf *,
     void *), void *);
void if_rxr_livelocked(struct if_rxring *);
void if_rxr_init(struct if_rxring *, u_int, u_int);
u_int if_rxr_get(struct if_rxring *, u_int);
int if_rxr_info_ioctl(struct if_rxrinfo *, u_int, struct if_rxring_info *);
int if_rxr_ioctl(struct if_rxrinfo *, const char *, u_int,
     struct if_rxring *);
struct arpcom {
 struct ifnet ac_if;
 u_int8_t ac_enaddr[6];
 char ac__pad[2];
 struct { struct ether_multi *lh_first; } ac_multiaddrs;
 int ac_multicnt;
 int ac_multirangecnt;
};
extern int arpt_keep;
extern int arpt_down;
extern u_int8_t etherbroadcastaddr[6];
extern u_int8_t etheranyaddr[6];
extern u_int8_t ether_ipmulticast_min[6];
extern u_int8_t ether_ipmulticast_max[6];
extern unsigned int revarp_ifidx;
void revarpinput(struct ifnet *, struct mbuf *);
void revarprequest(struct ifnet *);
int revarpwhoarewe(struct ifnet *, struct in_addr *, struct in_addr *);
int revarpwhoami(struct in_addr *, struct ifnet *);
void arpinput(struct ifnet *, struct mbuf *);
void arprequest(struct ifnet *, u_int32_t *, u_int32_t *, u_int8_t *);
void arpwhohas(struct arpcom *, struct in_addr *);
int arpproxy(struct in_addr, unsigned int);
int arpresolve(struct ifnet *, struct rtentry *, struct mbuf *,
     struct sockaddr *, u_char *);
void arp_rtrequest(struct ifnet *, int, struct rtentry *);
void ether_fakeaddr(struct ifnet *);
int ether_addmulti(struct ifreq *, struct arpcom *);
int ether_delmulti(struct ifreq *, struct arpcom *);
int ether_multiaddr(struct sockaddr *, u_int8_t[], u_int8_t[]);
void ether_ifattach(struct ifnet *);
void ether_ifdetach(struct ifnet *);
int ether_ioctl(struct ifnet *, struct arpcom *, u_long, caddr_t);
int ether_input(struct ifnet *, struct mbuf *, void *);
int ether_output(struct ifnet *,
     struct mbuf *, struct sockaddr *, struct rtentry *);
void ether_rtrequest(struct ifnet *, int, struct rtentry *);
char *ether_sprintf(u_char *);
struct ether_multi {
 u_int8_t enm_addrlo[6];
 u_int8_t enm_addrhi[6];
 u_int enm_refcount;
 struct { struct ether_multi *le_next; struct ether_multi **le_prev; } enm_list;
};
struct ether_multistep {
 struct ether_multi *e_enm;
};
u_int32_t ether_crc32_le_update(u_int32_t crc, const u_int8_t *, size_t);
u_int32_t ether_crc32_be_update(u_int32_t crc, const u_int8_t *, size_t);
u_int32_t ether_crc32_le(const u_int8_t *, size_t);
u_int32_t ether_crc32_be(const u_int8_t *, size_t);
typedef int32_t bpf_int32;
typedef u_int32_t bpf_u_int32;
struct bpf_program {
 u_int bf_len;
 struct bpf_insn *bf_insns;
};
struct bpf_stat {
 u_int bs_recv;
 u_int bs_drop;
};
struct bpf_version {
 u_short bv_major;
 u_short bv_minor;
};
struct bpf_timeval {
 u_int32_t tv_sec;
 u_int32_t tv_usec;
};
struct bpf_hdr {
 struct bpf_timeval bh_tstamp;
 u_int32_t bh_caplen;
 u_int32_t bh_datalen;
 u_int16_t bh_hdrlen;
};
struct bpf_insn {
 u_int16_t code;
 u_char jt;
 u_char jf;
 u_int32_t k;
};
struct bpf_dltlist {
 u_int bfl_len;
 u_int *bfl_list;
};
struct bpf_ops {
 u_int32_t (*ldw)(const void *, u_int32_t, int *);
 u_int32_t (*ldh)(const void *, u_int32_t, int *);
 u_int32_t (*ldb)(const void *, u_int32_t, int *);
};

u_int bpf_filter(const struct bpf_insn *, const u_char *, u_int, u_int)
     __attribute__ ((__bounded__ (__buffer__, 2, 4) ));
u_int _bpf_filter(const struct bpf_insn *, const struct bpf_ops *,
      const void *, u_int);

struct ifnet;
struct mbuf;
int bpf_validate(struct bpf_insn *, int);
int bpf_mtap(caddr_t, const struct mbuf *, u_int);
int bpf_mtap_hdr(caddr_t, caddr_t, u_int, const struct mbuf *, u_int,
     void (*)(const void *, void *, size_t));
int bpf_mtap_af(caddr_t, u_int32_t, const struct mbuf *, u_int);
int bpf_mtap_ether(caddr_t, const struct mbuf *, u_int);
void bpfattach(caddr_t *, struct ifnet *, u_int, u_int);
void bpfdetach(struct ifnet *);
void bpfilterattach(int);
u_int bpf_mfilter(const struct bpf_insn *, const struct mbuf *, u_int);
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
struct mii_softc;
typedef int (*mii_readreg_t)(struct device *, int, int);
typedef void (*mii_writereg_t)(struct device *, int, int, int);
typedef void (*mii_statchg_t)(struct device *);
struct mii_data {
 struct ifmedia mii_media;
 struct ifnet *mii_ifp;
 int mii_flags;
 struct mii_listhead { struct mii_softc *lh_first; } mii_phys;
 uint64_t mii_instance;
 uint64_t mii_media_status;
 uint64_t mii_media_active;
 mii_readreg_t mii_readreg;
 mii_writereg_t mii_writereg;
 mii_statchg_t mii_statchg;
};
typedef struct mii_data mii_data_t;
struct mii_phy_funcs {
 int (*pf_service)(struct mii_softc *, struct mii_data *, int);
 void (*pf_status)(struct mii_softc *);
 void (*pf_reset)(struct mii_softc *);
};
struct mii_softc {
 struct device mii_dev;
 struct { struct mii_softc *le_next; struct mii_softc **le_prev; } mii_list;
 int mii_phy;
 int mii_oui;
 int mii_model;
 int mii_rev;
 int mii_offset;
 uint64_t mii_inst;
 const struct mii_phy_funcs *mii_funcs;
 struct mii_data *mii_pdata;
 int mii_flags;
 int mii_capabilities;
 int mii_extcapabilities;
 int mii_ticks;
 int mii_anegticks;
 struct timeout mii_phy_timo;
 uint64_t mii_media_active;
 uint64_t mii_media_status;
};
typedef struct mii_softc mii_softc_t;
struct mii_attach_args {
 struct mii_data *mii_data;
 int mii_phyno;
 int mii_id1;
 int mii_id2;
 int mii_capmask;
 int mii_flags;
};
typedef struct mii_attach_args mii_attach_args_t;
struct mii_phydesc {
 u_int32_t mpd_oui;
 u_int32_t mpd_model;
 const char *mpd_name;
};
struct mii_media {
 int mm_bmcr;
 int mm_anar;
 int mm_gtcr;
};
void mii_attach(struct device *, struct mii_data *, int, int,
     int, int);
void mii_detach(struct mii_data *, int, int);
int mii_mediachg(struct mii_data *);
void mii_tick(struct mii_data *);
void mii_pollstat(struct mii_data *);
void mii_down(struct mii_data *);
int mii_anar(uint64_t);
int mii_phy_detach(struct device *, int);
const struct mii_phydesc *mii_phy_match(const struct mii_attach_args *,
     const struct mii_phydesc *);
void mii_phy_add_media(struct mii_softc *);
void mii_phy_delete_media(struct mii_softc *);
void mii_phy_setmedia(struct mii_softc *);
int mii_phy_auto(struct mii_softc *, int);
void mii_phy_auto_timeout(void *);
void mii_phy_reset(struct mii_softc *);
void mii_phy_down(struct mii_softc *);
int mii_phy_tick(struct mii_softc *);
void mii_phy_status(struct mii_softc *);
void mii_phy_update(struct mii_softc *, int);
int mii_phy_statusmsg(struct mii_softc *);
uint64_t mii_phy_flowstatus(struct mii_softc *);
void ukphy_status(struct mii_softc *);
struct bnx_type {
 u_int16_t bnx_vid;
 u_int16_t bnx_did;
 u_int16_t bnx_svid;
 u_int16_t bnx_sdid;
 char *bnx_name;
};
struct flash_spec {
 u_int32_t strapping;
 u_int32_t config1;
 u_int32_t config2;
 u_int32_t config3;
 u_int32_t write1;
 u_int32_t flags;
 u_int32_t page_bits;
 u_int32_t page_size;
 u_int32_t addr_mask;
 u_int32_t total_size;
 u_int8_t *name;
};
struct tx_bd {
 u_int32_t tx_bd_haddr_hi;
 u_int32_t tx_bd_haddr_lo;
 u_int32_t tx_bd_mss_nbytes;
 u_int16_t tx_bd_vlan_tag;
 u_int16_t tx_bd_flags;
};
struct rx_bd {
 u_int32_t rx_bd_haddr_hi;
 u_int32_t rx_bd_haddr_lo;
 u_int32_t rx_bd_len;
 u_int32_t rx_bd_flags;
};
struct status_block {
 u_int32_t status_attn_bits;
 u_int32_t status_attn_bits_ack;
 u_int16_t status_tx_quick_consumer_index0;
 u_int16_t status_tx_quick_consumer_index1;
 u_int16_t status_tx_quick_consumer_index2;
 u_int16_t status_tx_quick_consumer_index3;
 u_int16_t status_rx_quick_consumer_index0;
 u_int16_t status_rx_quick_consumer_index1;
 u_int16_t status_rx_quick_consumer_index2;
 u_int16_t status_rx_quick_consumer_index3;
 u_int16_t status_rx_quick_consumer_index4;
 u_int16_t status_rx_quick_consumer_index5;
 u_int16_t status_rx_quick_consumer_index6;
 u_int16_t status_rx_quick_consumer_index7;
 u_int16_t status_rx_quick_consumer_index8;
 u_int16_t status_rx_quick_consumer_index9;
 u_int16_t status_rx_quick_consumer_index10;
 u_int16_t status_rx_quick_consumer_index11;
 u_int16_t status_rx_quick_consumer_index12;
 u_int16_t status_rx_quick_consumer_index13;
 u_int16_t status_rx_quick_consumer_index14;
 u_int16_t status_rx_quick_consumer_index15;
 u_int16_t status_completion_producer_index;
 u_int16_t status_cmd_consumer_index;
 u_int16_t status_idx;
 u_int16_t status_unused;
};
struct statistics_block {
 u_int32_t stat_IfHCInOctets_hi;
 u_int32_t stat_IfHCInOctets_lo;
 u_int32_t stat_IfHCInBadOctets_hi;
 u_int32_t stat_IfHCInBadOctets_lo;
 u_int32_t stat_IfHCOutOctets_hi;
 u_int32_t stat_IfHCOutOctets_lo;
 u_int32_t stat_IfHCOutBadOctets_hi;
 u_int32_t stat_IfHCOutBadOctets_lo;
 u_int32_t stat_IfHCInUcastPkts_hi;
 u_int32_t stat_IfHCInUcastPkts_lo;
 u_int32_t stat_IfHCInMulticastPkts_hi;
 u_int32_t stat_IfHCInMulticastPkts_lo;
 u_int32_t stat_IfHCInBroadcastPkts_hi;
 u_int32_t stat_IfHCInBroadcastPkts_lo;
 u_int32_t stat_IfHCOutUcastPkts_hi;
 u_int32_t stat_IfHCOutUcastPkts_lo;
 u_int32_t stat_IfHCOutMulticastPkts_hi;
 u_int32_t stat_IfHCOutMulticastPkts_lo;
 u_int32_t stat_IfHCOutBroadcastPkts_hi;
 u_int32_t stat_IfHCOutBroadcastPkts_lo;
 u_int32_t stat_emac_tx_stat_dot3statsinternalmactransmiterrors;
 u_int32_t stat_Dot3StatsCarrierSenseErrors;
 u_int32_t stat_Dot3StatsFCSErrors;
 u_int32_t stat_Dot3StatsAlignmentErrors;
 u_int32_t stat_Dot3StatsSingleCollisionFrames;
 u_int32_t stat_Dot3StatsMultipleCollisionFrames;
 u_int32_t stat_Dot3StatsDeferredTransmissions;
 u_int32_t stat_Dot3StatsExcessiveCollisions;
 u_int32_t stat_Dot3StatsLateCollisions;
 u_int32_t stat_EtherStatsCollisions;
 u_int32_t stat_EtherStatsFragments;
 u_int32_t stat_EtherStatsJabbers;
 u_int32_t stat_EtherStatsUndersizePkts;
 u_int32_t stat_EtherStatsOverrsizePkts;
 u_int32_t stat_EtherStatsPktsRx64Octets;
 u_int32_t stat_EtherStatsPktsRx65Octetsto127Octets;
 u_int32_t stat_EtherStatsPktsRx128Octetsto255Octets;
 u_int32_t stat_EtherStatsPktsRx256Octetsto511Octets;
 u_int32_t stat_EtherStatsPktsRx512Octetsto1023Octets;
 u_int32_t stat_EtherStatsPktsRx1024Octetsto1522Octets;
 u_int32_t stat_EtherStatsPktsRx1523Octetsto9022Octets;
 u_int32_t stat_EtherStatsPktsTx64Octets;
 u_int32_t stat_EtherStatsPktsTx65Octetsto127Octets;
 u_int32_t stat_EtherStatsPktsTx128Octetsto255Octets;
 u_int32_t stat_EtherStatsPktsTx256Octetsto511Octets;
 u_int32_t stat_EtherStatsPktsTx512Octetsto1023Octets;
 u_int32_t stat_EtherStatsPktsTx1024Octetsto1522Octets;
 u_int32_t stat_EtherStatsPktsTx1523Octetsto9022Octets;
 u_int32_t stat_XonPauseFramesReceived;
 u_int32_t stat_XoffPauseFramesReceived;
 u_int32_t stat_OutXonSent;
 u_int32_t stat_OutXoffSent;
 u_int32_t stat_FlowControlDone;
 u_int32_t stat_MacControlFramesReceived;
 u_int32_t stat_XoffStateEntered;
 u_int32_t stat_IfInFramesL2FilterDiscards;
 u_int32_t stat_IfInRuleCheckerDiscards;
 u_int32_t stat_IfInFTQDiscards;
 u_int32_t stat_IfInMBUFDiscards;
 u_int32_t stat_IfInRuleCheckerP4Hit;
 u_int32_t stat_CatchupInRuleCheckerDiscards;
 u_int32_t stat_CatchupInFTQDiscards;
 u_int32_t stat_CatchupInMBUFDiscards;
 u_int32_t stat_CatchupInRuleCheckerP4Hit;
 u_int32_t stat_GenStat00;
 u_int32_t stat_GenStat01;
 u_int32_t stat_GenStat02;
 u_int32_t stat_GenStat03;
 u_int32_t stat_GenStat04;
 u_int32_t stat_GenStat05;
 u_int32_t stat_GenStat06;
 u_int32_t stat_GenStat07;
 u_int32_t stat_GenStat08;
 u_int32_t stat_GenStat09;
 u_int32_t stat_GenStat10;
 u_int32_t stat_GenStat11;
 u_int32_t stat_GenStat12;
 u_int32_t stat_GenStat13;
 u_int32_t stat_GenStat14;
 u_int32_t stat_GenStat15;
};
struct l2_fhdr {
 u_int32_t l2_fhdr_status;
 u_int32_t l2_fhdr_hash;
 u_int16_t l2_fhdr_pkt_len;
 u_int16_t l2_fhdr_vlan_tag;
 u_int16_t l2_fhdr_ip_xsum;
 u_int16_t l2_fhdr_tcp_udp_xsum;
};
struct cpu_reg {
 u_int32_t mode;
 u_int32_t mode_value_halt;
 u_int32_t mode_value_sstep;
 u_int32_t state;
 u_int32_t state_value_clear;
 u_int32_t gpr0;
 u_int32_t evmask;
 u_int32_t pc;
 u_int32_t inst;
 u_int32_t bp;
 u_int32_t spad_base;
 u_int32_t mips_view_base;
};
struct fw_info {
 u_int32_t ver_major;
 u_int32_t ver_minor;
 u_int32_t ver_fix;
 u_int32_t start_addr;
 u_int32_t text_addr;
 u_int32_t text_len;
 u_int32_t text_index;
 u_int32_t *text;
 u_int32_t data_addr;
 u_int32_t data_len;
 u_int32_t data_index;
 u_int32_t *data;
 u_int32_t sbss_addr;
 u_int32_t sbss_len;
 u_int32_t sbss_index;
 u_int32_t *sbss;
 u_int32_t bss_addr;
 u_int32_t bss_len;
 u_int32_t bss_index;
 u_int32_t *bss;
 u_int32_t rodata_addr;
 u_int32_t rodata_len;
 u_int32_t rodata_index;
 u_int32_t *rodata;
};
struct bnx_pkt {
 struct { struct bnx_pkt *tqe_next; struct bnx_pkt **tqe_prev; } pkt_entry;
 bus_dmamap_t pkt_dmamap;
 struct mbuf *pkt_mbuf;
 u_int16_t pkt_end_desc;
};
struct bnx_pkt_list { struct bnx_pkt *tqh_first; struct bnx_pkt **tqh_last; };
struct bnx_softc {
 struct device bnx_dev;
 struct arpcom arpcom;
 struct pci_attach_args bnx_pa;
 pci_intr_handle_t bnx_ih;
 bus_space_tag_t bnx_btag;
 bus_space_handle_t bnx_bhandle;
 bus_size_t bnx_size;
 void *bnx_intrhand;
 u_int32_t bnx_chipid;
 u_int32_t bnx_flags;
 u_int32_t bnx_phy_flags;
 u_int32_t bnx_shared_hw_cfg;
 u_int32_t bnx_port_hw_cfg;
 uint64_t bnx_flowflags;
 u_int16_t bus_speed_mhz;
 struct flash_spec *bnx_flash_info;
 u_int32_t bnx_flash_size;
 u_int32_t bnx_shmem_base;
 char * bnx_name;
 u_int32_t bnx_fw_ver;
 u_int16_t bnx_fw_timed_out;
 u_int16_t bnx_fw_wr_seq;
 u_int16_t bnx_fw_drv_pulse_wr_seq;
 u_char eaddr[6];
 u_int16_t bnx_tx_quick_cons_trip_int;
 u_int16_t bnx_tx_quick_cons_trip;
 u_int16_t bnx_rx_quick_cons_trip_int;
 u_int16_t bnx_rx_quick_cons_trip;
 u_int16_t bnx_comp_prod_trip_int;
 u_int16_t bnx_comp_prod_trip;
 u_int16_t bnx_tx_ticks_int;
 u_int16_t bnx_tx_ticks;
 u_int16_t bnx_rx_ticks_int;
 u_int16_t bnx_rx_ticks;
 u_int16_t bnx_com_ticks_int;
 u_int16_t bnx_com_ticks;
 u_int16_t bnx_cmd_ticks_int;
 u_int16_t bnx_cmd_ticks;
 u_int32_t bnx_stats_ticks;
 int bnx_phy_addr;
 struct mii_data bnx_mii;
 u_int16_t rx_prod;
 u_int16_t rx_cons;
 u_int32_t rx_prod_bseq;
 u_int16_t tx_prod;
 u_int16_t tx_cons;
 u_int32_t tx_prod_bseq;
 int bnx_link;
 struct timeout bnx_timeout;
 struct timeout bnx_rxrefill;
 u_int32_t max_frame_size;
 int mbuf_alloc_size;
 u_int32_t rx_mode;
 bus_dma_tag_t bnx_dmatag;
 bus_dma_segment_t tx_bd_chain_seg[2];
 int tx_bd_chain_rseg[2];
 bus_dmamap_t tx_bd_chain_map[2];
 struct tx_bd *tx_bd_chain[2];
 bus_addr_t tx_bd_chain_paddr[2];
 bus_dma_segment_t rx_bd_chain_seg[2];
 int rx_bd_chain_rseg[2];
 bus_dmamap_t rx_bd_chain_map[2];
 struct rx_bd *rx_bd_chain[2];
 bus_addr_t rx_bd_chain_paddr[2];
 bus_dma_segment_t status_seg;
 int status_rseg;
 bus_dmamap_t status_map;
 struct status_block *status_block;
 bus_addr_t status_block_paddr;
 int ctx_pages;
 bus_dma_segment_t ctx_segs[4];
 int ctx_rsegs[4];
 bus_dmamap_t ctx_map[4];
 void *ctx_block[4];
 u_int16_t last_status_idx;
 u_int16_t hw_rx_cons;
 u_int16_t hw_tx_cons;
 bus_dma_segment_t stats_seg;
 int stats_rseg;
 bus_dmamap_t stats_map;
 struct statistics_block *stats_block;
 bus_addr_t stats_block_paddr;
 bus_dma_segment_t rx_mbuf_seg;
 int rx_mbuf_rseg;
 bus_dma_segment_t tx_mbuf_seg;
 int tx_mbuf_rseg;
 bus_dmamap_t tx_mbuf_map[(((1 << 13) / sizeof(struct tx_bd)) * 2)];
 struct mbuf *tx_mbuf_ptr[(((1 << 13) / sizeof(struct tx_bd)) * 2)];
 bus_dmamap_t rx_mbuf_map[(((1 << 13) / sizeof(struct rx_bd)) * 2)];
 struct mbuf *rx_mbuf_ptr[(((1 << 13) / sizeof(struct rx_bd)) * 2)];
 struct if_rxring rx_ring;
 u_int16_t max_rx_bd;
 int used_tx_bd;
 u_int16_t max_tx_bd;
 u_int64_t stat_IfHCInOctets;
 u_int64_t stat_IfHCInBadOctets;
 u_int64_t stat_IfHCOutOctets;
 u_int64_t stat_IfHCOutBadOctets;
 u_int64_t stat_IfHCInUcastPkts;
 u_int64_t stat_IfHCInMulticastPkts;
 u_int64_t stat_IfHCInBroadcastPkts;
 u_int64_t stat_IfHCOutUcastPkts;
 u_int64_t stat_IfHCOutMulticastPkts;
 u_int64_t stat_IfHCOutBroadcastPkts;
 u_int32_t stat_emac_tx_stat_dot3statsinternalmactransmiterrors;
 u_int32_t stat_Dot3StatsCarrierSenseErrors;
 u_int32_t stat_Dot3StatsFCSErrors;
 u_int32_t stat_Dot3StatsAlignmentErrors;
 u_int32_t stat_Dot3StatsSingleCollisionFrames;
 u_int32_t stat_Dot3StatsMultipleCollisionFrames;
 u_int32_t stat_Dot3StatsDeferredTransmissions;
 u_int32_t stat_Dot3StatsExcessiveCollisions;
 u_int32_t stat_Dot3StatsLateCollisions;
 u_int32_t stat_EtherStatsCollisions;
 u_int32_t stat_EtherStatsFragments;
 u_int32_t stat_EtherStatsJabbers;
 u_int32_t stat_EtherStatsUndersizePkts;
 u_int32_t stat_EtherStatsOverrsizePkts;
 u_int32_t stat_EtherStatsPktsRx64Octets;
 u_int32_t stat_EtherStatsPktsRx65Octetsto127Octets;
 u_int32_t stat_EtherStatsPktsRx128Octetsto255Octets;
 u_int32_t stat_EtherStatsPktsRx256Octetsto511Octets;
 u_int32_t stat_EtherStatsPktsRx512Octetsto1023Octets;
 u_int32_t stat_EtherStatsPktsRx1024Octetsto1522Octets;
 u_int32_t stat_EtherStatsPktsRx1523Octetsto9022Octets;
 u_int32_t stat_EtherStatsPktsTx64Octets;
 u_int32_t stat_EtherStatsPktsTx65Octetsto127Octets;
 u_int32_t stat_EtherStatsPktsTx128Octetsto255Octets;
 u_int32_t stat_EtherStatsPktsTx256Octetsto511Octets;
 u_int32_t stat_EtherStatsPktsTx512Octetsto1023Octets;
 u_int32_t stat_EtherStatsPktsTx1024Octetsto1522Octets;
 u_int32_t stat_EtherStatsPktsTx1523Octetsto9022Octets;
 u_int32_t stat_XonPauseFramesReceived;
 u_int32_t stat_XoffPauseFramesReceived;
 u_int32_t stat_OutXonSent;
 u_int32_t stat_OutXoffSent;
 u_int32_t stat_FlowControlDone;
 u_int32_t stat_MacControlFramesReceived;
 u_int32_t stat_XoffStateEntered;
 u_int32_t stat_IfInFramesL2FilterDiscards;
 u_int32_t stat_IfInRuleCheckerDiscards;
 u_int32_t stat_IfInFTQDiscards;
 u_int32_t stat_IfInMBUFDiscards;
 u_int32_t stat_IfInRuleCheckerP4Hit;
 u_int32_t stat_CatchupInRuleCheckerDiscards;
 u_int32_t stat_CatchupInFTQDiscards;
 u_int32_t stat_CatchupInMBUFDiscards;
 u_int32_t stat_CatchupInRuleCheckerP4Hit;
 u_int32_t mbuf_alloc_failed;
 u_int32_t tx_dma_map_failures;
};
struct bnx_firmware_header {
 int bnx_COM_FwReleaseMajor;
 int bnx_COM_FwReleaseMinor;
 int bnx_COM_FwReleaseFix;
 u_int32_t bnx_COM_FwStartAddr;
 u_int32_t bnx_COM_FwTextAddr;
 int bnx_COM_FwTextLen;
 u_int32_t bnx_COM_FwDataAddr;
 int bnx_COM_FwDataLen;
 u_int32_t bnx_COM_FwRodataAddr;
 int bnx_COM_FwRodataLen;
 u_int32_t bnx_COM_FwBssAddr;
 int bnx_COM_FwBssLen;
 u_int32_t bnx_COM_FwSbssAddr;
 int bnx_COM_FwSbssLen;
 int bnx_RXP_FwReleaseMajor;
 int bnx_RXP_FwReleaseMinor;
 int bnx_RXP_FwReleaseFix;
 u_int32_t bnx_RXP_FwStartAddr;
 u_int32_t bnx_RXP_FwTextAddr;
 int bnx_RXP_FwTextLen;
 u_int32_t bnx_RXP_FwDataAddr;
 int bnx_RXP_FwDataLen;
 u_int32_t bnx_RXP_FwRodataAddr;
 int bnx_RXP_FwRodataLen;
 u_int32_t bnx_RXP_FwBssAddr;
 int bnx_RXP_FwBssLen;
 u_int32_t bnx_RXP_FwSbssAddr;
 int bnx_RXP_FwSbssLen;
 int bnx_TPAT_FwReleaseMajor;
 int bnx_TPAT_FwReleaseMinor;
 int bnx_TPAT_FwReleaseFix;
 u_int32_t bnx_TPAT_FwStartAddr;
 u_int32_t bnx_TPAT_FwTextAddr;
 int bnx_TPAT_FwTextLen;
 u_int32_t bnx_TPAT_FwDataAddr;
 int bnx_TPAT_FwDataLen;
 u_int32_t bnx_TPAT_FwRodataAddr;
 int bnx_TPAT_FwRodataLen;
 u_int32_t bnx_TPAT_FwBssAddr;
 int bnx_TPAT_FwBssLen;
 u_int32_t bnx_TPAT_FwSbssAddr;
 int bnx_TPAT_FwSbssLen;
 int bnx_TXP_FwReleaseMajor;
 int bnx_TXP_FwReleaseMinor;
 int bnx_TXP_FwReleaseFix;
 u_int32_t bnx_TXP_FwStartAddr;
 u_int32_t bnx_TXP_FwTextAddr;
 int bnx_TXP_FwTextLen;
 u_int32_t bnx_TXP_FwDataAddr;
 int bnx_TXP_FwDataLen;
 u_int32_t bnx_TXP_FwRodataAddr;
 int bnx_TXP_FwRodataLen;
 u_int32_t bnx_TXP_FwBssAddr;
 int bnx_TXP_FwBssLen;
 u_int32_t bnx_TXP_FwSbssAddr;
 int bnx_TXP_FwSbssLen;
};
struct bnx_rv2p_header {
 int bnx_rv2p_proc1len;
 int bnx_rv2p_proc2len;
};
struct bnx_firmware {
 char *filename;
 struct bnx_firmware_header *fw;
 u_int32_t *bnx_COM_FwText;
 u_int32_t *bnx_COM_FwData;
 u_int32_t *bnx_COM_FwRodata;
 u_int32_t *bnx_COM_FwBss;
 u_int32_t *bnx_COM_FwSbss;
 u_int32_t *bnx_RXP_FwText;
 u_int32_t *bnx_RXP_FwData;
 u_int32_t *bnx_RXP_FwRodata;
 u_int32_t *bnx_RXP_FwBss;
 u_int32_t *bnx_RXP_FwSbss;
 u_int32_t *bnx_TPAT_FwText;
 u_int32_t *bnx_TPAT_FwData;
 u_int32_t *bnx_TPAT_FwRodata;
 u_int32_t *bnx_TPAT_FwBss;
 u_int32_t *bnx_TPAT_FwSbss;
 u_int32_t *bnx_TXP_FwText;
 u_int32_t *bnx_TXP_FwData;
 u_int32_t *bnx_TXP_FwRodata;
 u_int32_t *bnx_TXP_FwBss;
 u_int32_t *bnx_TXP_FwSbss;
};
struct bnx_firmware bnx_firmwares[] = {
 { "bnx-b06", ((void *)0) },
 { "bnx-b09", ((void *)0) }
};
struct bnx_rv2p {
 char *filename;
 struct bnx_rv2p_header *fw;
 u_int32_t *bnx_rv2p_proc1;
 u_int32_t *bnx_rv2p_proc2;
};
struct bnx_rv2p bnx_rv2ps[] = {
 { "bnx-rv2p", ((void *)0) },
 { "bnx-xi-rv2p", ((void *)0) },
 { "bnx-xi90-rv2p", ((void *)0) }
};
void nswaph(u_int32_t *p, int wcount);
const struct pci_matchid bnx_devices[] = {
 { 0x14e4, 0x164a },
 { 0x14e4, 0x16aa },
 { 0x14e4, 0x164c },
 { 0x14e4, 0x16ac },
 { 0x14e4, 0x1639 },
 { 0x14e4, 0x163a },
 { 0x14e4, 0x163b },
 { 0x14e4, 0x163c }
};
static struct flash_spec flash_table[] =
{
 {0x00000000, 0x40830380, 0x009f0081, 0xa184a053, 0xaf000400,
  (0x00000001 | 0x00000002), 2, 4,
  ((1 << 2)-1), 65536,
  "EEPROM - slow"},
 {0x08000002, 0x4b808201, 0x00050081, 0x03840253, 0xaf020406,
  (0x00000004), 8, 256,
  ((1 << 8)-1), 0,
  "Entry 0001"},
 {0x04000001, 0x47808201, 0x00050081, 0x03840253, 0xaf020406,
  0, 8, 256,
  ((1 << 8)-1), 65536*2,
  "Non-buffered flash (128kB)"},
 {0x0c000003, 0x4f808201, 0x00050081, 0x03840253, 0xaf020406,
  (0x00000004), 8, 256,
  ((1 << 8)-1), 65536*4,
  "Non-buffered flash (256kB)"},
 {0x11000000, 0x53808201, 0x00050081, 0x03840253, 0xaf020406,
  (0x00000004), 8, 256,
  ((1 << 8)-1), 0,
  "Entry 0100"},
 {0x19000002, 0x5b808201, 0x000500db, 0x03840253, 0xaf020406,
  (0x00000004), 8, 256,
  ((1 << 8)-1), 65536*2,
  "Entry 0101: ST M45PE10 (128kB non-bufferred)"},
 {0x15000001, 0x57808201, 0x000500db, 0x03840253, 0xaf020406,
  (0x00000004), 8, 256,
  ((1 << 8)-1), 65536*4,
  "Entry 0110: ST M45PE20 (256kB non-bufferred)"},
 {0x1d000003, 0x5f808201, 0x00050081, 0x03840253, 0xaf020406,
  (0x00000004), 8, 256,
  ((1 << 8)-1), 65536,
  "Non-buffered flash (64kB)"},
 {0x22000000, 0x62808380, 0x009f0081, 0xa184a053, 0xaf000400,
  (0x00000001 | 0x00000002), 2, 4,
  ((1 << 2)-1), 65536,
  "EEPROM - fast"},
 {0x2a000002, 0x6b808201, 0x00050081, 0x03840253, 0xaf020406,
  (0x00000004), 8, 256,
  ((1 << 8)-1), 0,
  "Entry 1001"},
 {0x26000001, 0x67808201, 0x00050081, 0x03840253, 0xaf020406,
  (0x00000004), 8, 256,
  ((1 << 8)-1), 0,
  "Entry 1010"},
 {0x2e000003, 0x6e808273, 0x00570081, 0x68848353, 0xaf000400,
  (0x00000001 | 0x00000002), 9, 264,
  ((1 << 9)-1), 0x21000,
  "Buffered flash (128kB)"},
 {0x33000000, 0x73808201, 0x00050081, 0x03840253, 0xaf020406,
  (0x00000004), 8, 256,
  ((1 << 8)-1), 0,
  "Entry 1100"},
 {0x3b000002, 0x7b808201, 0x00050081, 0x03840253, 0xaf020406,
  (0x00000004), 8, 256,
  ((1 << 8)-1), 0,
  "Entry 1101"},
 {0x37000001, 0x76808273, 0x00570081, 0x68848353, 0xaf000400,
  (0x00000001 | 0x00000002), 9, 264,
  ((1 << 9)-1), 0,
  "Entry 1110 (Atmel)"},
 {0x3f000003, 0x7e808273, 0x00570081, 0x68848353, 0xaf000400,
  (0x00000001 | 0x00000002), 9, 264,
  ((1 << 9)-1), 0x21000*2,
  "Buffered flash (256kB)"},
};
static struct flash_spec flash_5709 = {
 .flags = 0x00000001,
 .page_bits = 8,
 .page_size = 256,
 .addr_mask = ((1 << 8)-1),
 .total_size = 0x21000 * 2,
 .name = "5709 buffered flash (256kB)",
};
int bnx_probe(struct device *, void *, void *);
void bnx_attach(struct device *, struct device *, void *);
void bnx_attachhook(struct device *);
int bnx_read_firmware(struct bnx_softc *sc, int);
int bnx_read_rv2p(struct bnx_softc *sc, int);
u_int32_t bnx_reg_rd_ind(struct bnx_softc *, u_int32_t);
void bnx_reg_wr_ind(struct bnx_softc *, u_int32_t, u_int32_t);
void bnx_ctx_wr(struct bnx_softc *, u_int32_t, u_int32_t, u_int32_t);
int bnx_miibus_read_reg(struct device *, int, int);
void bnx_miibus_write_reg(struct device *, int, int, int);
void bnx_miibus_statchg(struct device *);
int bnx_acquire_nvram_lock(struct bnx_softc *);
int bnx_release_nvram_lock(struct bnx_softc *);
void bnx_enable_nvram_access(struct bnx_softc *);
void bnx_disable_nvram_access(struct bnx_softc *);
int bnx_nvram_read_dword(struct bnx_softc *, u_int32_t, u_int8_t *,
     u_int32_t);
int bnx_init_nvram(struct bnx_softc *);
int bnx_nvram_read(struct bnx_softc *, u_int32_t, u_int8_t *, int);
int bnx_nvram_test(struct bnx_softc *);
void bnx_get_media(struct bnx_softc *);
void bnx_init_media(struct bnx_softc *);
int bnx_dma_alloc(struct bnx_softc *);
void bnx_dma_free(struct bnx_softc *);
void bnx_release_resources(struct bnx_softc *);
int bnx_fw_sync(struct bnx_softc *, u_int32_t);
void bnx_load_rv2p_fw(struct bnx_softc *, u_int32_t *, u_int32_t,
     u_int32_t);
void bnx_load_cpu_fw(struct bnx_softc *, struct cpu_reg *,
     struct fw_info *);
void bnx_init_cpus(struct bnx_softc *);
void bnx_stop(struct bnx_softc *);
int bnx_reset(struct bnx_softc *, u_int32_t);
int bnx_chipinit(struct bnx_softc *);
int bnx_blockinit(struct bnx_softc *);
int bnx_get_buf(struct bnx_softc *, u_int16_t *, u_int16_t *, u_int32_t *);
int bnx_init_tx_chain(struct bnx_softc *);
void bnx_init_tx_context(struct bnx_softc *);
int bnx_fill_rx_chain(struct bnx_softc *);
void bnx_init_rx_context(struct bnx_softc *);
int bnx_init_rx_chain(struct bnx_softc *);
void bnx_free_rx_chain(struct bnx_softc *);
void bnx_free_tx_chain(struct bnx_softc *);
void bnx_rxrefill(void *);
int bnx_tx_encap(struct bnx_softc *, struct mbuf *, int *);
void bnx_start(struct ifqueue *);
int bnx_ioctl(struct ifnet *, u_long, caddr_t);
void bnx_watchdog(struct ifnet *);
int bnx_ifmedia_upd(struct ifnet *);
void bnx_ifmedia_sts(struct ifnet *, struct ifmediareq *);
void bnx_init(void *);
void bnx_mgmt_init(struct bnx_softc *sc);
void bnx_init_context(struct bnx_softc *);
void bnx_get_mac_addr(struct bnx_softc *);
void bnx_set_mac_addr(struct bnx_softc *);
void bnx_phy_intr(struct bnx_softc *);
void bnx_rx_intr(struct bnx_softc *);
void bnx_tx_intr(struct bnx_softc *);
void bnx_disable_intr(struct bnx_softc *);
void bnx_enable_intr(struct bnx_softc *);
int bnx_intr(void *);
void bnx_iff(struct bnx_softc *);
void bnx_stats_update(struct bnx_softc *);
void bnx_tick(void *);
struct cfattach bnx_ca = {
 sizeof(struct bnx_softc), bnx_probe, bnx_attach
};
struct cfdriver bnx_cd = {
 ((void *)0), "bnx", DV_IFNET
};
int
bnx_probe(struct device *parent, void *match, void *aux)
{
 return (pci_matchbyid((struct pci_attach_args *)aux, bnx_devices,
     (sizeof((bnx_devices)) / sizeof((bnx_devices)[0]))));
}
void
nswaph(u_int32_t *p, int wcount)
{
 for (; wcount; wcount -=4) {
  *p = ((__uint32_t)(*p));
  p++;
 }
}
int
bnx_read_firmware(struct bnx_softc *sc, int idx)
{
 struct bnx_firmware *bfw = &bnx_firmwares[idx];
 struct bnx_firmware_header *hdr = bfw->fw;
 u_char *p, *q;
 size_t size;
 int error;
 if (hdr != ((void *)0))
  return (0);
 if ((error = loadfirmware(bfw->filename, &p, &size)) != 0)
  return (error);
 if (size < sizeof(struct bnx_firmware_header)) {
  free(p, 2, size);
  return (22);
 }
 hdr = (struct bnx_firmware_header *)p;
 hdr->bnx_COM_FwReleaseMajor = ((__uint32_t)(hdr->bnx_COM_FwReleaseMajor));
 hdr->bnx_COM_FwReleaseMinor = ((__uint32_t)(hdr->bnx_COM_FwReleaseMinor));
 hdr->bnx_COM_FwReleaseFix = ((__uint32_t)(hdr->bnx_COM_FwReleaseFix));
 hdr->bnx_COM_FwStartAddr = ((__uint32_t)(hdr->bnx_COM_FwStartAddr));
 hdr->bnx_COM_FwTextAddr = ((__uint32_t)(hdr->bnx_COM_FwTextAddr));
 hdr->bnx_COM_FwTextLen = ((__uint32_t)(hdr->bnx_COM_FwTextLen));
 hdr->bnx_COM_FwDataAddr = ((__uint32_t)(hdr->bnx_COM_FwDataAddr));
 hdr->bnx_COM_FwDataLen = ((__uint32_t)(hdr->bnx_COM_FwDataLen));
 hdr->bnx_COM_FwRodataAddr = ((__uint32_t)(hdr->bnx_COM_FwRodataAddr));
 hdr->bnx_COM_FwRodataLen = ((__uint32_t)(hdr->bnx_COM_FwRodataLen));
 hdr->bnx_COM_FwBssAddr = ((__uint32_t)(hdr->bnx_COM_FwBssAddr));
 hdr->bnx_COM_FwBssLen = ((__uint32_t)(hdr->bnx_COM_FwBssLen));
 hdr->bnx_COM_FwSbssAddr = ((__uint32_t)(hdr->bnx_COM_FwSbssAddr));
 hdr->bnx_COM_FwSbssLen = ((__uint32_t)(hdr->bnx_COM_FwSbssLen));
 hdr->bnx_RXP_FwReleaseMajor = ((__uint32_t)(hdr->bnx_RXP_FwReleaseMajor));
 hdr->bnx_RXP_FwReleaseMinor = ((__uint32_t)(hdr->bnx_RXP_FwReleaseMinor));
 hdr->bnx_RXP_FwReleaseFix = ((__uint32_t)(hdr->bnx_RXP_FwReleaseFix));
 hdr->bnx_RXP_FwStartAddr = ((__uint32_t)(hdr->bnx_RXP_FwStartAddr));
 hdr->bnx_RXP_FwTextAddr = ((__uint32_t)(hdr->bnx_RXP_FwTextAddr));
 hdr->bnx_RXP_FwTextLen = ((__uint32_t)(hdr->bnx_RXP_FwTextLen));
 hdr->bnx_RXP_FwDataAddr = ((__uint32_t)(hdr->bnx_RXP_FwDataAddr));
 hdr->bnx_RXP_FwDataLen = ((__uint32_t)(hdr->bnx_RXP_FwDataLen));
 hdr->bnx_RXP_FwRodataAddr = ((__uint32_t)(hdr->bnx_RXP_FwRodataAddr));
 hdr->bnx_RXP_FwRodataLen = ((__uint32_t)(hdr->bnx_RXP_FwRodataLen));
 hdr->bnx_RXP_FwBssAddr = ((__uint32_t)(hdr->bnx_RXP_FwBssAddr));
 hdr->bnx_RXP_FwBssLen = ((__uint32_t)(hdr->bnx_RXP_FwBssLen));
 hdr->bnx_RXP_FwSbssAddr = ((__uint32_t)(hdr->bnx_RXP_FwSbssAddr));
 hdr->bnx_RXP_FwSbssLen = ((__uint32_t)(hdr->bnx_RXP_FwSbssLen));
 hdr->bnx_TPAT_FwReleaseMajor = ((__uint32_t)(hdr->bnx_TPAT_FwReleaseMajor));
 hdr->bnx_TPAT_FwReleaseMinor = ((__uint32_t)(hdr->bnx_TPAT_FwReleaseMinor));
 hdr->bnx_TPAT_FwReleaseFix = ((__uint32_t)(hdr->bnx_TPAT_FwReleaseFix));
 hdr->bnx_TPAT_FwStartAddr = ((__uint32_t)(hdr->bnx_TPAT_FwStartAddr));
 hdr->bnx_TPAT_FwTextAddr = ((__uint32_t)(hdr->bnx_TPAT_FwTextAddr));
 hdr->bnx_TPAT_FwTextLen = ((__uint32_t)(hdr->bnx_TPAT_FwTextLen));
 hdr->bnx_TPAT_FwDataAddr = ((__uint32_t)(hdr->bnx_TPAT_FwDataAddr));
 hdr->bnx_TPAT_FwDataLen = ((__uint32_t)(hdr->bnx_TPAT_FwDataLen));
 hdr->bnx_TPAT_FwRodataAddr = ((__uint32_t)(hdr->bnx_TPAT_FwRodataAddr));
 hdr->bnx_TPAT_FwRodataLen = ((__uint32_t)(hdr->bnx_TPAT_FwRodataLen));
 hdr->bnx_TPAT_FwBssAddr = ((__uint32_t)(hdr->bnx_TPAT_FwBssAddr));
 hdr->bnx_TPAT_FwBssLen = ((__uint32_t)(hdr->bnx_TPAT_FwBssLen));
 hdr->bnx_TPAT_FwSbssAddr = ((__uint32_t)(hdr->bnx_TPAT_FwSbssAddr));
 hdr->bnx_TPAT_FwSbssLen = ((__uint32_t)(hdr->bnx_TPAT_FwSbssLen));
 hdr->bnx_TXP_FwReleaseMajor = ((__uint32_t)(hdr->bnx_TXP_FwReleaseMajor));
 hdr->bnx_TXP_FwReleaseMinor = ((__uint32_t)(hdr->bnx_TXP_FwReleaseMinor));
 hdr->bnx_TXP_FwReleaseFix = ((__uint32_t)(hdr->bnx_TXP_FwReleaseFix));
 hdr->bnx_TXP_FwStartAddr = ((__uint32_t)(hdr->bnx_TXP_FwStartAddr));
 hdr->bnx_TXP_FwTextAddr = ((__uint32_t)(hdr->bnx_TXP_FwTextAddr));
 hdr->bnx_TXP_FwTextLen = ((__uint32_t)(hdr->bnx_TXP_FwTextLen));
 hdr->bnx_TXP_FwDataAddr = ((__uint32_t)(hdr->bnx_TXP_FwDataAddr));
 hdr->bnx_TXP_FwDataLen = ((__uint32_t)(hdr->bnx_TXP_FwDataLen));
 hdr->bnx_TXP_FwRodataAddr = ((__uint32_t)(hdr->bnx_TXP_FwRodataAddr));
 hdr->bnx_TXP_FwRodataLen = ((__uint32_t)(hdr->bnx_TXP_FwRodataLen));
 hdr->bnx_TXP_FwBssAddr = ((__uint32_t)(hdr->bnx_TXP_FwBssAddr));
 hdr->bnx_TXP_FwBssLen = ((__uint32_t)(hdr->bnx_TXP_FwBssLen));
 hdr->bnx_TXP_FwSbssAddr = ((__uint32_t)(hdr->bnx_TXP_FwSbssAddr));
 hdr->bnx_TXP_FwSbssLen = ((__uint32_t)(hdr->bnx_TXP_FwSbssLen));
 q = p + sizeof(*hdr);
 bfw->bnx_COM_FwText = (u_int32_t *)q;
 q += hdr->bnx_COM_FwTextLen;
 nswaph(bfw->bnx_COM_FwText, hdr->bnx_COM_FwTextLen);
 bfw->bnx_COM_FwData = (u_int32_t *)q;
 q += hdr->bnx_COM_FwDataLen;
 nswaph(bfw->bnx_COM_FwData, hdr->bnx_COM_FwDataLen);
 bfw->bnx_COM_FwRodata = (u_int32_t *)q;
 q += hdr->bnx_COM_FwRodataLen;
 nswaph(bfw->bnx_COM_FwRodata, hdr->bnx_COM_FwRodataLen);
 bfw->bnx_COM_FwBss = (u_int32_t *)q;
 q += hdr->bnx_COM_FwBssLen;
 nswaph(bfw->bnx_COM_FwBss, hdr->bnx_COM_FwBssLen);
 bfw->bnx_COM_FwSbss = (u_int32_t *)q;
 q += hdr->bnx_COM_FwSbssLen;
 nswaph(bfw->bnx_COM_FwSbss, hdr->bnx_COM_FwSbssLen);
 bfw->bnx_RXP_FwText = (u_int32_t *)q;
 q += hdr->bnx_RXP_FwTextLen;
 nswaph(bfw->bnx_RXP_FwText, hdr->bnx_RXP_FwTextLen);
 bfw->bnx_RXP_FwData = (u_int32_t *)q;
 q += hdr->bnx_RXP_FwDataLen;
 nswaph(bfw->bnx_RXP_FwData, hdr->bnx_RXP_FwDataLen);
 bfw->bnx_RXP_FwRodata = (u_int32_t *)q;
 q += hdr->bnx_RXP_FwRodataLen;
 nswaph(bfw->bnx_RXP_FwRodata, hdr->bnx_RXP_FwRodataLen);
 bfw->bnx_RXP_FwBss = (u_int32_t *)q;
 q += hdr->bnx_RXP_FwBssLen;
 nswaph(bfw->bnx_RXP_FwBss, hdr->bnx_RXP_FwBssLen);
 bfw->bnx_RXP_FwSbss = (u_int32_t *)q;
 q += hdr->bnx_RXP_FwSbssLen;
 nswaph(bfw->bnx_RXP_FwSbss, hdr->bnx_RXP_FwSbssLen);
 bfw->bnx_TPAT_FwText = (u_int32_t *)q;
 q += hdr->bnx_TPAT_FwTextLen;
 nswaph(bfw->bnx_TPAT_FwText, hdr->bnx_TPAT_FwTextLen);
 bfw->bnx_TPAT_FwData = (u_int32_t *)q;
 q += hdr->bnx_TPAT_FwDataLen;
 nswaph(bfw->bnx_TPAT_FwData, hdr->bnx_TPAT_FwDataLen);
 bfw->bnx_TPAT_FwRodata = (u_int32_t *)q;
 q += hdr->bnx_TPAT_FwRodataLen;
 nswaph(bfw->bnx_TPAT_FwRodata, hdr->bnx_TPAT_FwRodataLen);
 bfw->bnx_TPAT_FwBss = (u_int32_t *)q;
 q += hdr->bnx_TPAT_FwBssLen;
 nswaph(bfw->bnx_TPAT_FwBss, hdr->bnx_TPAT_FwBssLen);
 bfw->bnx_TPAT_FwSbss = (u_int32_t *)q;
 q += hdr->bnx_TPAT_FwSbssLen;
 nswaph(bfw->bnx_TPAT_FwSbss, hdr->bnx_TPAT_FwSbssLen);
 bfw->bnx_TXP_FwText = (u_int32_t *)q;
 q += hdr->bnx_TXP_FwTextLen;
 nswaph(bfw->bnx_TXP_FwText, hdr->bnx_TXP_FwTextLen);
 bfw->bnx_TXP_FwData = (u_int32_t *)q;
 q += hdr->bnx_TXP_FwDataLen;
 nswaph(bfw->bnx_TXP_FwData, hdr->bnx_TXP_FwDataLen);
 bfw->bnx_TXP_FwRodata = (u_int32_t *)q;
 q += hdr->bnx_TXP_FwRodataLen;
 nswaph(bfw->bnx_TXP_FwRodata, hdr->bnx_TXP_FwRodataLen);
 bfw->bnx_TXP_FwBss = (u_int32_t *)q;
 q += hdr->bnx_TXP_FwBssLen;
 nswaph(bfw->bnx_TXP_FwBss, hdr->bnx_TXP_FwBssLen);
 bfw->bnx_TXP_FwSbss = (u_int32_t *)q;
 q += hdr->bnx_TXP_FwSbssLen;
 nswaph(bfw->bnx_TXP_FwSbss, hdr->bnx_TXP_FwSbssLen);
 if (q - p != size) {
  free(p, 2, size);
  hdr = ((void *)0);
  return 22;
 }
 bfw->fw = hdr;
 return (0);
}
int
bnx_read_rv2p(struct bnx_softc *sc, int idx)
{
 struct bnx_rv2p *rv2p = &bnx_rv2ps[idx];
 struct bnx_rv2p_header *hdr = rv2p->fw;
 u_char *p, *q;
 size_t size;
 int error;
 if (hdr != ((void *)0))
  return (0);
 if ((error = loadfirmware(rv2p->filename, &p, &size)) != 0)
  return (error);
 if (size < sizeof(struct bnx_rv2p_header)) {
  free(p, 2, size);
  return (22);
 }
 hdr = (struct bnx_rv2p_header *)p;
 hdr->bnx_rv2p_proc1len = ((__uint32_t)(hdr->bnx_rv2p_proc1len));
 hdr->bnx_rv2p_proc2len = ((__uint32_t)(hdr->bnx_rv2p_proc2len));
 q = p + sizeof(*hdr);
 rv2p->bnx_rv2p_proc1 = (u_int32_t *)q;
 q += hdr->bnx_rv2p_proc1len;
 nswaph(rv2p->bnx_rv2p_proc1, hdr->bnx_rv2p_proc1len);
 rv2p->bnx_rv2p_proc2 = (u_int32_t *)q;
 q += hdr->bnx_rv2p_proc2len;
 nswaph(rv2p->bnx_rv2p_proc2, hdr->bnx_rv2p_proc2len);
 if (q - p != size) {
  free(p, 2, size);
  return 22;
 }
 rv2p->fw = hdr;
 return (0);
}
void
bnx_attach(struct device *parent, struct device *self, void *aux)
{
 struct bnx_softc *sc = (struct bnx_softc *)self;
 struct pci_attach_args *pa = aux;
 pci_chipset_tag_t pc = pa->pa_pc;
 u_int32_t val;
 pcireg_t memtype;
 const char *intrstr = ((void *)0);
 sc->bnx_pa = *pa;
 memtype = pci_mapreg_type(pa->pa_pc, pa->pa_tag, 0x10);
 if (pci_mapreg_map(pa, 0x10, memtype, 0, &sc->bnx_btag,
     &sc->bnx_bhandle, ((void *)0), &sc->bnx_size, 0)) {
  printf(": can't find mem space\n");
  return;
 }
 if (pci_intr_map(pa, &sc->bnx_ih)) {
  printf(": couldn't map interrupt\n");
  goto bnx_attach_fail;
 }
 intrstr = pci_intr_string(pc, sc->bnx_ih);
 pci_conf_write(pa->pa_pc, pa->pa_tag, 0x00000068,
     (1L<<7) |
     (1L<<3));
 sc->bnx_chipid = bus_space_read_4(sc->bnx_btag, sc->bnx_bhandle, 0x00000808);
 val = bnx_reg_rd_ind(sc, 0x00160000);
 if ((val & 0xffff0000) == 0x53530000)
  sc->bnx_shmem_base = bnx_reg_rd_ind(sc, 0x00160000 + 4 + (sc->bnx_pa.pa_function << 2));
 else
  sc->bnx_shmem_base = 0x167c00;
 ;
 sc->bnx_flags = 0;
 sc->bnx_phy_flags = 0;
 val = bus_space_read_4(sc->bnx_btag, sc->bnx_bhandle, 0x0000006c);
 if (val & (1L<<3)) {
  u_int32_t clkreg;
  sc->bnx_flags |= 0x01;
  clkreg = bus_space_read_4(sc->bnx_btag, sc->bnx_bhandle, 0x00000070);
  clkreg &= (0xfL<<0);
  switch (clkreg) {
  case (7L<<0):
   sc->bus_speed_mhz = 133;
   break;
  case (6L<<0):
   sc->bus_speed_mhz = 100;
   break;
  case (4L<<0):
  case (5L<<0):
   sc->bus_speed_mhz = 66;
   break;
  case (2L<<0):
  case (3L<<0):
   sc->bus_speed_mhz = 50;
   break;
  case (0xfL<<0):
  case (0L<<0):
  case (1L<<0):
   sc->bus_speed_mhz = 33;
   break;
  }
 } else if (val & (1L<<2))
   sc->bus_speed_mhz = 66;
  else
   sc->bus_speed_mhz = 33;
 if (val & (1L<<1))
  sc->bnx_flags |= 0x02;
 sc->bnx_intrhand = pci_intr_establish(pc, sc->bnx_ih,
     6 | 0x100, bnx_intr, sc, sc->bnx_dev.dv_xname);
 if (sc->bnx_intrhand == ((void *)0)) {
  printf(": couldn't establish interrupt");
  if (intrstr != ((void *)0))
   printf(" at %s", intrstr);
  printf("\n");
  goto bnx_attach_fail;
 }
 printf(": %s\n", intrstr);
 config_mountroot(self, bnx_attachhook);
 return;
bnx_attach_fail:
 bnx_release_resources(sc);
 ;
}
void
bnx_attachhook(struct device *self)
{
 struct bnx_softc *sc = (struct bnx_softc *)self;
 struct pci_attach_args *pa = &sc->bnx_pa;
 struct ifnet *ifp;
 int error, mii_flags = 0;
 int fw = 0;
 int rv2p = 0;
 if ((((sc)->bnx_chipid) & 0xffff0000) == 0x57090000) {
  fw = 1;
  if (((((sc)->bnx_chipid) & 0x0000f000) == 0x00000000))
   rv2p = 2;
  else
   rv2p = 1;
 }
 if ((error = bnx_read_firmware(sc, fw)) != 0) {
  printf("%s: error %d, could not read firmware\n",
      sc->bnx_dev.dv_xname, error);
  return;
 }
 if ((error = bnx_read_rv2p(sc, rv2p)) != 0) {
  printf("%s: error %d, could not read rv2p\n",
      sc->bnx_dev.dv_xname, error);
  return;
 }
 if (bnx_reset(sc, 0x01000000))
  goto bnx_attach_fail;
 if (bnx_chipinit(sc)) {
  printf("%s: Controller initialization failed!\n",
      sc->bnx_dev.dv_xname);
  goto bnx_attach_fail;
 }
 if (bnx_nvram_test(sc)) {
  printf("%s: NVRAM test failed!\n",
      sc->bnx_dev.dv_xname);
  goto bnx_attach_fail;
 }
 bnx_get_mac_addr(sc);
 sc->bnx_tx_quick_cons_trip_int = 20;
 sc->bnx_tx_quick_cons_trip = 20;
 sc->bnx_tx_ticks_int = 80;
 sc->bnx_tx_ticks = 80;
 sc->bnx_rx_quick_cons_trip_int = 6;
 sc->bnx_rx_quick_cons_trip = 6;
 sc->bnx_rx_ticks_int = 18;
 sc->bnx_rx_ticks = 18;
 sc->bnx_stats_ticks = 1000000 & 0xffff00;
 bnx_get_media(sc);
 sc->bnx_shared_hw_cfg = bnx_reg_rd_ind(sc, sc->bnx_shmem_base + 0x0000003c);
 sc->bnx_port_hw_cfg = bnx_reg_rd_ind(sc, sc->bnx_shmem_base + 0x00000058);
 sc->bnx_dmatag = pa->pa_dmat;
 if (bnx_dma_alloc(sc)) {
  printf("%s: DMA resource allocation failed!\n",
      sc->bnx_dev.dv_xname);
  goto bnx_attach_fail;
 }
 ifp = &sc->arpcom.ac_if;
 ifp->if_softc = sc;
 ifp->if_flags = 0x2 | 0x800 | 0x8000;
 ifp->if_xflags = 0x1;
 ifp->if_ioctl = bnx_ioctl;
 ifp->if_qstart = bnx_start;
 ifp->if_watchdog = bnx_watchdog;
 ((&ifp->if_snd)->ifq_maxlen = (((((1 << 13) / sizeof(struct tx_bd)) - 1) * 2) - 1));
 __builtin_bcopy((sc->eaddr), (sc->arpcom.ac_enaddr), (6));
 __builtin_bcopy((sc->bnx_dev.dv_xname), (ifp->if_xname), (16));
 ifp->if_data.ifi_capabilities = 0x00000010 | 0x00000002 |
     0x00000004;
 ifp->if_data.ifi_capabilities |= 0x00000020;
 sc->mbuf_alloc_size = (1 << 11);
 printf("%s: address %s\n", sc->bnx_dev.dv_xname,
     ether_sprintf(sc->arpcom.ac_enaddr));
 sc->bnx_mii.mii_ifp = ifp;
 sc->bnx_mii.mii_readreg = bnx_miibus_read_reg;
 sc->bnx_mii.mii_writereg = bnx_miibus_write_reg;
 sc->bnx_mii.mii_statchg = bnx_miibus_statchg;
 bnx_init_media(sc);
 ifmedia_init(&sc->bnx_mii.mii_media, 0, bnx_ifmedia_upd,
     bnx_ifmedia_sts);
 mii_flags |= 0x0100;
 if (sc->bnx_phy_flags & 0x001)
  mii_flags |= 0x0020;
 mii_attach(&sc->bnx_dev, &sc->bnx_mii, 0xffffffff,
     sc->bnx_phy_addr, -1, mii_flags);
 if (((&sc->bnx_mii.mii_phys)->lh_first) == ((void *)0)) {
  printf("%s: no PHY found!\n", sc->bnx_dev.dv_xname);
  ifmedia_add(&sc->bnx_mii.mii_media,
      0x0000000000000100ULL|1ULL, 0, ((void *)0));
  ifmedia_set(&sc->bnx_mii.mii_media,
      0x0000000000000100ULL|1ULL);
 } else {
  ifmedia_set(&sc->bnx_mii.mii_media,
      0x0000000000000100ULL|0ULL);
 }
 if_attach(ifp);
 ether_ifattach(ifp);
 timeout_set(&sc->bnx_timeout, bnx_tick, sc);
 timeout_set(&sc->bnx_rxrefill, bnx_rxrefill, sc);
 ;
 bnx_mgmt_init(sc);
 sc->bnx_flags |= 0x80;
 goto bnx_attach_exit;
bnx_attach_fail:
 bnx_release_resources(sc);
bnx_attach_exit:
 ;
}
u_int32_t
bnx_reg_rd_ind(struct bnx_softc *sc, u_int32_t offset)
{
 struct pci_attach_args *pa = &(sc->bnx_pa);
 pci_conf_write(pa->pa_pc, pa->pa_tag, 0x00000078,
     offset);
 return pci_conf_read(pa->pa_pc, pa->pa_tag, 0x00000080);
}
void
bnx_reg_wr_ind(struct bnx_softc *sc, u_int32_t offset, u_int32_t val)
{
 struct pci_attach_args *pa = &(sc->bnx_pa);
 ;
 pci_conf_write(pa->pa_pc, pa->pa_tag, 0x00000078,
     offset);
 pci_conf_write(pa->pa_pc, pa->pa_tag, 0x00000080, val);
}
void
bnx_ctx_wr(struct bnx_softc *sc, u_int32_t cid_addr, u_int32_t ctx_offset,
    u_int32_t ctx_val)
{
 u_int32_t idx, offset = ctx_offset + cid_addr;
 u_int32_t val, retry_cnt = 5;
 if ((((sc)->bnx_chipid) & 0xffff0000) == 0x57090000) {
  bus_space_write_4(sc->bnx_btag, sc->bnx_bhandle, 0x00001020, ctx_val);
  bus_space_write_4(sc->bnx_btag, sc->bnx_bhandle, 0x0000101c, (offset | (1L<<30)));
  for (idx = 0; idx < retry_cnt; idx++) {
   val = bus_space_read_4(sc->bnx_btag, sc->bnx_bhandle, 0x0000101c);
   if ((val & (1L<<30)) == 0)
    break;
   delay(5);
  }
 } else {
  bus_space_write_4(sc->bnx_btag, sc->bnx_bhandle, 0x00001010, offset);
  bus_space_write_4(sc->bnx_btag, sc->bnx_bhandle, 0x00001014, ctx_val);
 }
}
int
bnx_miibus_read_reg(struct device *dev, int phy, int reg64)
{
 struct bnx_softc *sc = (struct bnx_softc *)dev;
 u_int32_t val;
 int i;
 if ((sc->bnx_phy_flags & 0x400) != 0) {
  if (reg64 >= 0x00 && reg64 <= 0x08)
   reg64 += 0x10;
 }
 if (sc->bnx_phy_flags & 0x100) {
  val = bus_space_read_4(sc->bnx_btag, sc->bnx_bhandle, 0x000014b4);
  val &= ~(1L<<4);
  bus_space_write_4(sc->bnx_btag, sc->bnx_bhandle, 0x000014b4, val);
  bus_space_read_4(sc->bnx_btag, sc->bnx_bhandle, 0x000014b4);
  delay(40);
 }
 val = ((phy & 0x1F) << 21) | ((reg64 & 0x1F) << 16) |
     (2L<<26) | (1L<<30) |
     (1L<<29);
 bus_space_write_4(sc->bnx_btag, sc->bnx_bhandle, 0x000014ac, val);
 for (i = 0; i < 50; i++) {
  delay(10);
  val = bus_space_read_4(sc->bnx_btag, sc->bnx_bhandle, 0x000014ac);
  if (!(val & (1L<<29))) {
   delay(5);
   val = bus_space_read_4(sc->bnx_btag, sc->bnx_bhandle, 0x000014ac);
   val &= (0xffffL<<0);
   break;
  }
 }
 if (val & (1L<<29)) {
  printf("%s: " "%s(%d): Error: PHY read timeout! phy = %d, " "reg = 0x%04X\n", sc->bnx_dev.dv_xname, "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../dev/pci/if_bnx.c", 1136, phy, reg64);
  val = 0x0;
 } else
  val = bus_space_read_4(sc->bnx_btag, sc->bnx_bhandle, 0x000014ac);
 ;
 if (sc->bnx_phy_flags & 0x100) {
  val = bus_space_read_4(sc->bnx_btag, sc->bnx_bhandle, 0x000014b4);
  val |= (1L<<4);
  bus_space_write_4(sc->bnx_btag, sc->bnx_bhandle, 0x000014b4, val);
  bus_space_read_4(sc->bnx_btag, sc->bnx_bhandle, 0x000014b4);
  delay(40);
 }
 return (val & 0xffff);
}
void
bnx_miibus_write_reg(struct device *dev, int phy, int reg64, int val)
{
 struct bnx_softc *sc = (struct bnx_softc *)dev;
 u_int32_t val1;
 int i;
 ;
 if ((sc->bnx_phy_flags & 0x400) != 0) {
  if (reg64 >= 0x00 && reg64 <= 0x08)
   reg64 += 0x10;
 }
 if (sc->bnx_phy_flags & 0x100) {
  val1 = bus_space_read_4(sc->bnx_btag, sc->bnx_bhandle, 0x000014b4);
  val1 &= ~(1L<<4);
  bus_space_write_4(sc->bnx_btag, sc->bnx_bhandle, 0x000014b4, val1);
  bus_space_read_4(sc->bnx_btag, sc->bnx_bhandle, 0x000014b4);
  delay(40);
 }
 val1 = ((phy & 0x1F) << 21) | ((reg64 & 0x1F) << 16) | val |
     (1L<<26) |
     (1L<<29) | (1L<<30);
 bus_space_write_4(sc->bnx_btag, sc->bnx_bhandle, 0x000014ac, val1);
 for (i = 0; i < 50; i++) {
  delay(10);
  val1 = bus_space_read_4(sc->bnx_btag, sc->bnx_bhandle, 0x000014ac);
  if (!(val1 & (1L<<29))) {
   delay(5);
   break;
  }
 }
 if (val1 & (1L<<29)) {
  printf("%s: " "%s(%d): PHY write timeout!\n", sc->bnx_dev.dv_xname, "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../dev/pci/if_bnx.c", 1214);
 }
 if (sc->bnx_phy_flags & 0x100) {
  val1 = bus_space_read_4(sc->bnx_btag, sc->bnx_bhandle, 0x000014b4);
  val1 |= (1L<<4);
  bus_space_write_4(sc->bnx_btag, sc->bnx_bhandle, 0x000014b4, val1);
  bus_space_read_4(sc->bnx_btag, sc->bnx_bhandle, 0x000014b4);
  delay(40);
 }
}
void
bnx_miibus_statchg(struct device *dev)
{
 struct bnx_softc *sc = (struct bnx_softc *)dev;
 struct mii_data *mii = &sc->bnx_mii;
 u_int32_t rx_mode = sc->rx_mode;
 int val;
 val = bus_space_read_4(sc->bnx_btag, sc->bnx_bhandle, 0x00001400);
 val &= ~((0x3L<<2) | (1L<<1) |
  (1L<<4) | (1L<<11) |
  (1L<<5));
 if (((mii->mii_media.ifm_cur->ifm_media) & 0x00000000000000ffULL) == 0ULL &&
     (mii->mii_media_active & (0x0000040000000000ULL|0x0000000000020000ULL|0x0000000000040000ULL)) != sc->bnx_flowflags) {
  sc->bnx_flowflags = mii->mii_media_active & (0x0000040000000000ULL|0x0000000000020000ULL|0x0000000000040000ULL);
  mii->mii_media_active &= ~(0x0000040000000000ULL|0x0000000000020000ULL|0x0000000000040000ULL);
 }
 switch (((mii->mii_media_active) & 0x00000000000000ffULL)) {
 case 3:
  if ((((sc)->bnx_chipid) & 0xffff0000) != 0x57060000) {
   ;
   val |= (3L<<2);
   break;
  }
 case 6:
  ;
  val |= (1L<<2);
  break;
 case 21:
  ;
  val |= (1L<<5);
 case 16:
 case 11:
  ;
  val |= (2L<<2);
  break;
 default:
  val |= (2L<<2);
  break;
 }
 if ((mii->mii_media_active & 0x00ffff0000000000ULL) == 0x0000020000000000ULL) {
  ;
  val |= (1L<<1);
 } else
  ;
 bus_space_write_4(sc->bnx_btag, sc->bnx_bhandle, 0x00001400, val);
 if (sc->bnx_flowflags & 0x0000000000020000ULL) {
  ;
  rx_mode |= (1L<<2);
 } else {
  ;
  rx_mode &= ~(1L<<2);
 }
 if (sc->bnx_flowflags & 0x0000000000040000ULL) {
  ;
  bus_space_write_4(sc->bnx_btag, sc->bnx_bhandle, 0x000014bc, (bus_space_read_4(sc->bnx_btag, sc->bnx_bhandle, 0x000014bc) | ((1L<<4))));
 } else {
  ;
  bus_space_write_4(sc->bnx_btag, sc->bnx_bhandle, 0x000014bc, (bus_space_read_4(sc->bnx_btag, sc->bnx_bhandle, 0x000014bc) & ~((1L<<4))));
 }
 if (rx_mode != sc->rx_mode) {
  ;
  sc->rx_mode = rx_mode;
  bus_space_write_4(sc->bnx_btag, sc->bnx_bhandle, 0x000014c8, rx_mode);
 }
}
int
bnx_acquire_nvram_lock(struct bnx_softc *sc)
{
 u_int32_t val;
 int j;
 ;
 bus_space_write_4(sc->bnx_btag, sc->bnx_bhandle, 0x00006420, (1L<<2));
 for (j = 0; j < 30000; j++) {
  val = bus_space_read_4(sc->bnx_btag, sc->bnx_bhandle, 0x00006420);
  if (val & (1L<<10))
   break;
  delay(5);
 }
 if (j >= 30000) {
  ;
  return (16);
 }
 return (0);
}
int
bnx_release_nvram_lock(struct bnx_softc *sc)
{
 int j;
 u_int32_t val;
 ;
 bus_space_write_4(sc->bnx_btag, sc->bnx_bhandle, 0x00006420, (1L<<6));
 for (j = 0; j < 30000; j++) {
  val = bus_space_read_4(sc->bnx_btag, sc->bnx_bhandle, 0x00006420);
  if (!(val & (1L<<10)))
   break;
  delay(5);
 }
 if (j >= 30000) {
  ;
  return (16);
 }
 return (0);
}
void
bnx_enable_nvram_access(struct bnx_softc *sc)
{
 u_int32_t val;
 ;
 val = bus_space_read_4(sc->bnx_btag, sc->bnx_bhandle, 0x00006424);
 bus_space_write_4(sc->bnx_btag, sc->bnx_bhandle, 0x00006424, val | (1L<<0) | (1L<<1));
}
void
bnx_disable_nvram_access(struct bnx_softc *sc)
{
 u_int32_t val;
 ;
 val = bus_space_read_4(sc->bnx_btag, sc->bnx_bhandle, 0x00006424);
 bus_space_write_4(sc->bnx_btag, sc->bnx_bhandle, 0x00006424, val & ~((1L<<0) | (1L<<1)));
}
int
bnx_nvram_read_dword(struct bnx_softc *sc, u_int32_t offset,
    u_int8_t *ret_val, u_int32_t cmd_flags)
{
 u_int32_t cmd;
 int i, rc = 0;
 cmd = (1L<<4) | cmd_flags;
 if (((sc->bnx_flash_info->flags) & (0x00000002))) {
  offset = ((offset / sc->bnx_flash_info->page_size) <<
      sc->bnx_flash_info->page_bits) +
      (offset % sc->bnx_flash_info->page_size);
 }
 bus_space_write_4(sc->bnx_btag, sc->bnx_bhandle, 0x00006400, (1L<<3));
 bus_space_write_4(sc->bnx_btag, sc->bnx_bhandle, 0x0000640c, offset & (0xffffffL<<0));
 bus_space_write_4(sc->bnx_btag, sc->bnx_bhandle, 0x00006400, cmd);
 for (i = 0; i < 30000; i++) {
  u_int32_t val;
  delay(5);
  val = bus_space_read_4(sc->bnx_btag, sc->bnx_bhandle, 0x00006400);
  if (val & (1L<<3)) {
   val = bus_space_read_4(sc->bnx_btag, sc->bnx_bhandle, 0x00006410);
   val = ((__uint32_t)(val));
   __builtin_memcpy((ret_val), (&val), (4));
   break;
  }
 }
 if (i >= 30000) {
  printf("%s: " "%s(%d): Timeout error reading NVRAM at " "offset 0x%08X!\n", sc->bnx_dev.dv_xname, "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../dev/pci/if_bnx.c", 1616, offset);
  rc = 16;
 }
 return(rc);
}
int
bnx_init_nvram(struct bnx_softc *sc)
{
 u_int32_t val;
 int j, entry_count, rc = 0;
 struct flash_spec *flash;
 ;
 if ((((sc)->bnx_chipid) & 0xffff0000) == 0x57090000) {
  sc->bnx_flash_info = &flash_5709;
  goto bnx_init_nvram_get_flash_size;
 }
 val = bus_space_read_4(sc->bnx_btag, sc->bnx_bhandle, 0x00006414);
 entry_count = sizeof(flash_table) / sizeof(struct flash_spec);
 if (val & 0x40000000) {
  ;
  for (j = 0, flash = &flash_table[0]; j < entry_count;
       j++, flash++) {
   if ((val & (0xf << 26)) ==
       (flash->config1 & (0xf << 26))) {
    sc->bnx_flash_info = flash;
    break;
   }
  }
 } else {
  u_int32_t mask;
  ;
  if (val & (1 << 23))
   mask = (0xf << 26);
  else
   mask = ((1L<<0) | (1L<<1) | (1L<<24) | (1L<<25));
  for (j = 0, flash = &flash_table[0]; j < entry_count;
      j++, flash++) {
   if ((val & mask) == (flash->strapping & mask)) {
    sc->bnx_flash_info = flash;
    if ((rc = bnx_acquire_nvram_lock(sc)) != 0)
     return (rc);
    bnx_enable_nvram_access(sc);
    bus_space_write_4(sc->bnx_btag, sc->bnx_bhandle, 0x00006414, flash->config1);
    bus_space_write_4(sc->bnx_btag, sc->bnx_bhandle, 0x00006418, flash->config2);
    bus_space_write_4(sc->bnx_btag, sc->bnx_bhandle, 0x0000641c, flash->config3);
    bus_space_write_4(sc->bnx_btag, sc->bnx_bhandle, 0x00006428, flash->write1);
    bnx_disable_nvram_access(sc);
    bnx_release_nvram_lock(sc);
    break;
   }
  }
 }
 if (j == entry_count) {
  sc->bnx_flash_info = ((void *)0);
  printf("%s: " "%s(%d): Unknown Flash NVRAM found!\n", sc->bnx_dev.dv_xname, "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../dev/pci/if_bnx.c", 1770);
  rc = 19;
 }
bnx_init_nvram_get_flash_size:
 val = bnx_reg_rd_ind(sc, sc->bnx_shmem_base + 0x00000040);
 val &= 0x00fff000;
 if (val)
  sc->bnx_flash_size = val;
 else
  sc->bnx_flash_size = sc->bnx_flash_info->total_size;
 ;
 ;
 return (rc);
}
int
bnx_nvram_read(struct bnx_softc *sc, u_int32_t offset, u_int8_t *ret_buf,
    int buf_size)
{
 int rc = 0;
 u_int32_t cmd_flags, offset32, len32, extra;
 if (buf_size == 0)
  return (0);
 if ((rc = bnx_acquire_nvram_lock(sc)) != 0)
  return (rc);
 bnx_enable_nvram_access(sc);
 len32 = buf_size;
 offset32 = offset;
 extra = 0;
 cmd_flags = 0;
 if (offset32 & 3) {
  u_int8_t buf[4];
  u_int32_t pre_len;
  offset32 &= ~3;
  pre_len = 4 - (offset & 3);
  if (pre_len >= len32) {
   pre_len = len32;
   cmd_flags =
       (1L<<7) | (1L<<8);
  } else
   cmd_flags = (1L<<7);
  rc = bnx_nvram_read_dword(sc, offset32, buf, cmd_flags);
  if (rc)
   return (rc);
  __builtin_memcpy((ret_buf), (buf + (offset & 3)), (pre_len));
  offset32 += 4;
  ret_buf += pre_len;
  len32 -= pre_len;
 }
 if (len32 & 3) {
  extra = 4 - (len32 & 3);
  len32 = (len32 + 4) & ~3;
 }
 if (len32 == 4) {
  u_int8_t buf[4];
  if (cmd_flags)
   cmd_flags = (1L<<8);
  else
   cmd_flags =
       (1L<<7) | (1L<<8);
  rc = bnx_nvram_read_dword(sc, offset32, buf, cmd_flags);
  __builtin_memcpy((ret_buf), (buf), (4 - extra));
 } else if (len32 > 0) {
  u_int8_t buf[4];
  if (cmd_flags)
   cmd_flags = 0;
  else
   cmd_flags = (1L<<7);
  rc = bnx_nvram_read_dword(sc, offset32, ret_buf, cmd_flags);
  offset32 += 4;
  ret_buf += 4;
  len32 -= 4;
  while (len32 > 4 && rc == 0) {
   rc = bnx_nvram_read_dword(sc, offset32, ret_buf, 0);
   offset32 += 4;
   ret_buf += 4;
   len32 -= 4;
  }
  if (rc)
   return (rc);
  cmd_flags = (1L<<8);
  rc = bnx_nvram_read_dword(sc, offset32, buf, cmd_flags);
  __builtin_memcpy((ret_buf), (buf), (4 - extra));
 }
 bnx_disable_nvram_access(sc);
 bnx_release_nvram_lock(sc);
 return (rc);
}
int
bnx_nvram_test(struct bnx_softc *sc)
{
 u_int32_t buf[0x200 / 4];
 u_int8_t *data = (u_int8_t *) buf;
 int rc = 0;
 u_int32_t magic, csum;
 if ((rc = bnx_nvram_read(sc, 0, data, 4)) != 0)
  goto bnx_nvram_test_done;
 magic = ((__uint32_t)(buf[0]));
 if (magic != 0x669955aa) {
  rc = 19;
  printf("%s: " "%s(%d): Invalid NVRAM magic value! " "Expected: 0x%08X, Found: 0x%08X\n", sc->bnx_dev.dv_xname, "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../dev/pci/if_bnx.c", 2124, 0x669955aa, magic);
  goto bnx_nvram_test_done;
 }
 if ((rc = bnx_nvram_read(sc, 0x100, data, 0x200)) != 0)
  goto bnx_nvram_test_done;
 csum = ether_crc32_le(data, 0x100);
 if (csum != 0xdebb20e3) {
  rc = 19;
  printf("%s: " "%s(%d): Invalid Manufacturing Information " "NVRAM CRC! Expected: 0x%08X, Found: 0x%08X\n", sc->bnx_dev.dv_xname, "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../dev/pci/if_bnx.c", 2140, 0xdebb20e3, csum);
  goto bnx_nvram_test_done;
 }
 csum = ether_crc32_le(data + 0x100, 0x100);
 if (csum != 0xdebb20e3) {
  printf("%s: " "%s(%d): Invalid Feature Configuration " "Information NVRAM CRC! Expected: 0x%08X, Found: 08%08X\n", sc->bnx_dev.dv_xname, "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../dev/pci/if_bnx.c", 2148, 0xdebb20e3, csum);
  rc = 19;
 }
bnx_nvram_test_done:
 return (rc);
}
void
bnx_get_media(struct bnx_softc *sc)
{
 u_int32_t val;
 sc->bnx_phy_addr = 1;
 if ((((sc)->bnx_chipid) & 0xffff0000) == 0x57090000) {
  u_int32_t val = bus_space_read_4(sc->bnx_btag, sc->bnx_bhandle, 0x000008ec);
  u_int32_t bond_id = val & (0xffL<<0);
  u_int32_t strap;
  if (bond_id == (3L<<0)) {
   ;
   goto bnx_get_media_exit;
  } else if (bond_id == (12L<<0)) {
   ;
   sc->bnx_phy_flags |= 0x001;
   goto bnx_get_media_exit;
  }
  if (val & (1L<<25))
   strap = (val & (0x7L<<21)) >> 21;
  else {
   strap = (val & (0x7L<<8))
       >> 8;
  }
  if (sc->bnx_pa.pa_function == 0) {
   switch (strap) {
   case 0x4:
   case 0x5:
   case 0x6:
    ;
    sc->bnx_phy_flags |= 0x001;
    break;
   default:
    ;
   }
  } else {
   switch (strap) {
   case 0x1:
   case 0x2:
   case 0x4:
    ;
    sc->bnx_phy_flags |= 0x001;
    break;
   default:
    ;
   }
  }
 } else if ((((sc)->bnx_chipid) & 0xf) & 0x01)
  sc->bnx_phy_flags |= 0x001;
 if (sc->bnx_phy_flags & 0x001) {
  sc->bnx_flags |= 0x08;
  if ((((sc)->bnx_chipid) & 0xffff0000) == 0x57090000)
   sc->bnx_phy_flags |= 0x400;
  if ((((sc)->bnx_chipid) & 0xffff0000) != 0x57060000) {
   sc->bnx_phy_addr = 2;
   val = bnx_reg_rd_ind(sc, sc->bnx_shmem_base + 0x0000003c);
   if (val & 0x20) {
    sc->bnx_phy_flags |= 0x008;
    ;
   }
  }
 } else if (((((sc)->bnx_chipid) & 0xffff0000) == 0x57060000) ||
     ((((sc)->bnx_chipid) & 0xffff0000) == 0x57080000))
  sc->bnx_phy_flags |= 0x002;
bnx_get_media_exit:
 ;
}
void
bnx_init_media(struct bnx_softc *sc)
{
 if (sc->bnx_phy_flags & 0x400) {
  bnx_miibus_write_reg(&sc->bnx_dev, sc->bnx_phy_addr,
      0x1F, 0xFFD0);
  bnx_miibus_write_reg(&sc->bnx_dev, sc->bnx_phy_addr,
      0x1E, 0x3800);
  bnx_miibus_write_reg(&sc->bnx_dev, sc->bnx_phy_addr,
      0x1F, 0xFFE0);
 }
}
void
bnx_dma_free(struct bnx_softc *sc)
{
 int i;
 ;
 if (sc->status_block != ((void *)0) && sc->status_map != ((void *)0)) {
  bus_dmamap_sync(sc->bnx_dmatag, sc->status_map, 0,
      sc->status_map->dm_mapsize, 0x02);
  bus_dmamap_unload(sc->bnx_dmatag, sc->status_map);
  bus_dmamem_unmap(sc->bnx_dmatag, (caddr_t)sc->status_block,
      sizeof(struct status_block));
  bus_dmamem_free(sc->bnx_dmatag, &sc->status_seg,
      sc->status_rseg);
  bus_dmamap_destroy(sc->bnx_dmatag, sc->status_map);
  sc->status_block = ((void *)0);
  sc->status_map = ((void *)0);
 }
 if (sc->stats_block != ((void *)0) && sc->stats_map != ((void *)0)) {
  bus_dmamap_unload(sc->bnx_dmatag, sc->stats_map);
  bus_dmamem_unmap(sc->bnx_dmatag, (caddr_t)sc->stats_block,
      sizeof(struct statistics_block));
  bus_dmamem_free(sc->bnx_dmatag, &sc->stats_seg,
      sc->stats_rseg);
  bus_dmamap_destroy(sc->bnx_dmatag, sc->stats_map);
  sc->stats_block = ((void *)0);
  sc->stats_map = ((void *)0);
 }
 if ((((sc)->bnx_chipid) & 0xffff0000) == 0x57090000) {
  for (i = 0; i < sc->ctx_pages; i++) {
   if (sc->ctx_block[i] != ((void *)0)) {
    bus_dmamap_unload(sc->bnx_dmatag,
        sc->ctx_map[i]);
    bus_dmamem_unmap(sc->bnx_dmatag,
        (caddr_t)sc->ctx_block[i],
        (1 << 13));
    bus_dmamem_free(sc->bnx_dmatag,
        &sc->ctx_segs[i], sc->ctx_rsegs[i]);
    bus_dmamap_destroy(sc->bnx_dmatag,
        sc->ctx_map[i]);
    sc->ctx_block[i] = ((void *)0);
   }
  }
 }
 for (i = 0; i < 2; i++ ) {
  if (sc->tx_bd_chain[i] != ((void *)0) &&
      sc->tx_bd_chain_map[i] != ((void *)0)) {
   bus_dmamap_unload(sc->bnx_dmatag,
       sc->tx_bd_chain_map[i]);
   bus_dmamem_unmap(sc->bnx_dmatag,
       (caddr_t)sc->tx_bd_chain[i], (1 << 13));
   bus_dmamem_free(sc->bnx_dmatag, &sc->tx_bd_chain_seg[i],
       sc->tx_bd_chain_rseg[i]);
   bus_dmamap_destroy(sc->bnx_dmatag,
       sc->tx_bd_chain_map[i]);
   sc->tx_bd_chain[i] = ((void *)0);
   sc->tx_bd_chain_map[i] = ((void *)0);
  }
 }
 for (i = 0; i < (((1 << 13) / sizeof(struct tx_bd)) * 2); i++) {
  bus_dmamap_unload(sc->bnx_dmatag, sc->tx_mbuf_map[i]);
  bus_dmamap_destroy(sc->bnx_dmatag, sc->tx_mbuf_map[i]);
 }
 for (i = 0; i < 2; i++ ) {
  if (sc->rx_bd_chain[i] != ((void *)0) &&
      sc->rx_bd_chain_map[i] != ((void *)0)) {
   bus_dmamap_unload(sc->bnx_dmatag,
       sc->rx_bd_chain_map[i]);
   bus_dmamem_unmap(sc->bnx_dmatag,
       (caddr_t)sc->rx_bd_chain[i], (1 << 13));
   bus_dmamem_free(sc->bnx_dmatag, &sc->rx_bd_chain_seg[i],
       sc->rx_bd_chain_rseg[i]);
   bus_dmamap_destroy(sc->bnx_dmatag,
       sc->rx_bd_chain_map[i]);
   sc->rx_bd_chain[i] = ((void *)0);
   sc->rx_bd_chain_map[i] = ((void *)0);
  }
 }
 for (i = 0; i < (((1 << 13) / sizeof(struct rx_bd)) * 2); i++) {
  if (sc->rx_mbuf_map[i] != ((void *)0)) {
   bus_dmamap_unload(sc->bnx_dmatag, sc->rx_mbuf_map[i]);
   bus_dmamap_destroy(sc->bnx_dmatag, sc->rx_mbuf_map[i]);
  }
 }
 ;
}
int
bnx_dma_alloc(struct bnx_softc *sc)
{
 int i, rc = 0;
 ;
 for (i = 0; i < (((1 << 13) / sizeof(struct tx_bd)) * 2); i++) {
  if (bus_dmamap_create(sc->bnx_dmatag,
      (1 << 11) * 8, 8,
      (1 << 11), 0, 0x0001, &sc->tx_mbuf_map[i])) {
   printf(": Could not create Tx mbuf %d DMA map!\n", 1);
   rc = 12;
   goto bnx_dma_alloc_exit;
  }
 }
 if (bus_dmamap_create(sc->bnx_dmatag, sizeof(struct status_block), 1,
     sizeof(struct status_block), 0, 0x0001, &sc->status_map)) {
  printf(": Could not create status block DMA map!\n");
  rc = 12;
  goto bnx_dma_alloc_exit;
 }
 if (bus_dmamem_alloc(sc->bnx_dmatag, sizeof(struct status_block),
     8, 0, &sc->status_seg, 1,
     &sc->status_rseg, 0x0001 | 0x0800)) {
  printf(": Could not allocate status block DMA memory!\n");
  rc = 12;
  goto bnx_dma_alloc_exit;
 }
 if (bus_dmamem_map(sc->bnx_dmatag, &sc->status_seg, sc->status_rseg,
     sizeof(struct status_block), (caddr_t *)&sc->status_block, 0x0001)) {
  printf(": Could not map status block DMA memory!\n");
  rc = 12;
  goto bnx_dma_alloc_exit;
 }
 if (bus_dmamap_load(sc->bnx_dmatag, sc->status_map,
     sc->status_block, sizeof(struct status_block), ((void *)0), 0x0001)) {
  printf(": Could not load status block DMA memory!\n");
  rc = 12;
  goto bnx_dma_alloc_exit;
 }
 bus_dmamap_sync(sc->bnx_dmatag, sc->status_map, 0,
     sc->status_map->dm_mapsize, 0x01);
 sc->status_block_paddr = sc->status_map->dm_segs[0].ds_addr;
 ;
 if ((((sc)->bnx_chipid) & 0xffff0000) == 0x57090000) {
  sc->ctx_pages = 0x2000 / (1 << 13);
  if (sc->ctx_pages == 0)
   sc->ctx_pages = 1;
  if (sc->ctx_pages > 4)
   sc->ctx_pages = 4;
  ;
  for (i = 0; i < sc->ctx_pages; i++) {
   if (bus_dmamap_create(sc->bnx_dmatag, (1 << 13),
       1, (1 << 13), 0,
       0x0001 | 0x0002,
       &sc->ctx_map[i]) != 0) {
    rc = 12;
    goto bnx_dma_alloc_exit;
   }
   if (bus_dmamem_alloc(sc->bnx_dmatag, (1 << 13),
       (1 << 13), 0, &sc->ctx_segs[i],
       1, &sc->ctx_rsegs[i], 0x0001) != 0) {
    rc = 12;
    goto bnx_dma_alloc_exit;
   }
   if (bus_dmamem_map(sc->bnx_dmatag, &sc->ctx_segs[i],
       sc->ctx_rsegs[i], (1 << 13),
       (caddr_t *)&sc->ctx_block[i],
       0x0001) != 0) {
    rc = 12;
    goto bnx_dma_alloc_exit;
   }
   if (bus_dmamap_load(sc->bnx_dmatag, sc->ctx_map[i],
       sc->ctx_block[i], (1 << 13), ((void *)0),
       0x0001) != 0) {
    rc = 12;
    goto bnx_dma_alloc_exit;
   }
   __builtin_bzero((sc->ctx_block[i]), ((1 << 13)));
  }
 }
 if (bus_dmamap_create(sc->bnx_dmatag, sizeof(struct statistics_block), 1,
     sizeof(struct statistics_block), 0, 0x0001, &sc->stats_map)) {
  printf(": Could not create stats block DMA map!\n");
  rc = 12;
  goto bnx_dma_alloc_exit;
 }
 if (bus_dmamem_alloc(sc->bnx_dmatag, sizeof(struct statistics_block),
     8, 0, &sc->stats_seg, 1,
     &sc->stats_rseg, 0x0001 | 0x0800)) {
  printf(": Could not allocate stats block DMA memory!\n");
  rc = 12;
  goto bnx_dma_alloc_exit;
 }
 if (bus_dmamem_map(sc->bnx_dmatag, &sc->stats_seg, sc->stats_rseg,
     sizeof(struct statistics_block), (caddr_t *)&sc->stats_block, 0x0001)) {
  printf(": Could not map stats block DMA memory!\n");
  rc = 12;
  goto bnx_dma_alloc_exit;
 }
 if (bus_dmamap_load(sc->bnx_dmatag, sc->stats_map,
     sc->stats_block, sizeof(struct statistics_block), ((void *)0), 0x0001)) {
  printf(": Could not load status block DMA memory!\n");
  rc = 12;
  goto bnx_dma_alloc_exit;
 }
 sc->stats_block_paddr = sc->stats_map->dm_segs[0].ds_addr;
 ;
 for (i = 0; i < 2; i++) {
  if (bus_dmamap_create(sc->bnx_dmatag, (1 << 13), 1,
      (1 << 13), 0, 0x0001,
      &sc->tx_bd_chain_map[i])) {
   printf(": Could not create Tx desc %d DMA map!\n", i);
   rc = 12;
   goto bnx_dma_alloc_exit;
  }
  if (bus_dmamem_alloc(sc->bnx_dmatag, (1 << 13),
      (1 << 13), 0, &sc->tx_bd_chain_seg[i], 1,
      &sc->tx_bd_chain_rseg[i], 0x0001)) {
   printf(": Could not allocate TX desc %d DMA memory!\n",
       i);
   rc = 12;
   goto bnx_dma_alloc_exit;
  }
  if (bus_dmamem_map(sc->bnx_dmatag, &sc->tx_bd_chain_seg[i],
      sc->tx_bd_chain_rseg[i], (1 << 13),
      (caddr_t *)&sc->tx_bd_chain[i], 0x0001)) {
   printf(": Could not map TX desc %d DMA memory!\n", i);
   rc = 12;
   goto bnx_dma_alloc_exit;
  }
  if (bus_dmamap_load(sc->bnx_dmatag, sc->tx_bd_chain_map[i],
      (caddr_t)sc->tx_bd_chain[i], (1 << 13), ((void *)0),
      0x0001)) {
   printf(": Could not load TX desc %d DMA memory!\n", i);
   rc = 12;
   goto bnx_dma_alloc_exit;
  }
  sc->tx_bd_chain_paddr[i] =
      sc->tx_bd_chain_map[i]->dm_segs[0].ds_addr;
  ;
 }
 for (i = 0; i < 2; i++) {
  if (bus_dmamap_create(sc->bnx_dmatag, (1 << 13), 1,
      (1 << 13), 0, 0x0001,
      &sc->rx_bd_chain_map[i])) {
   printf(": Could not create Rx desc %d DMA map!\n", i);
   rc = 12;
   goto bnx_dma_alloc_exit;
  }
  if (bus_dmamem_alloc(sc->bnx_dmatag, (1 << 13),
      (1 << 13), 0, &sc->rx_bd_chain_seg[i], 1,
      &sc->rx_bd_chain_rseg[i], 0x0001 | 0x0800)) {
   printf(": Could not allocate Rx desc %d DMA memory!\n",
       i);
   rc = 12;
   goto bnx_dma_alloc_exit;
  }
  if (bus_dmamem_map(sc->bnx_dmatag, &sc->rx_bd_chain_seg[i],
      sc->rx_bd_chain_rseg[i], (1 << 13),
      (caddr_t *)&sc->rx_bd_chain[i], 0x0001)) {
   printf(": Could not map Rx desc %d DMA memory!\n", i);
   rc = 12;
   goto bnx_dma_alloc_exit;
  }
  if (bus_dmamap_load(sc->bnx_dmatag, sc->rx_bd_chain_map[i],
      (caddr_t)sc->rx_bd_chain[i], (1 << 13), ((void *)0),
      0x0001)) {
   printf(": Could not load Rx desc %d DMA memory!\n", i);
   rc = 12;
   goto bnx_dma_alloc_exit;
  }
  sc->rx_bd_chain_paddr[i] =
      sc->rx_bd_chain_map[i]->dm_segs[0].ds_addr;
  ;
 }
 for (i = 0; i < (((1 << 13) / sizeof(struct rx_bd)) * 2); i++) {
  if (bus_dmamap_create(sc->bnx_dmatag, (1 << 11),
      8, (1 << 11), 0, 0x0001,
      &sc->rx_mbuf_map[i])) {
   printf(": Could not create Rx mbuf %d DMA map!\n", i);
   rc = 12;
   goto bnx_dma_alloc_exit;
  }
 }
 bnx_dma_alloc_exit:
 ;
 return(rc);
}
void
bnx_release_resources(struct bnx_softc *sc)
{
 struct pci_attach_args *pa = &(sc->bnx_pa);
 ;
 bnx_dma_free(sc);
 if (sc->bnx_intrhand != ((void *)0))
  pci_intr_disestablish(pa->pa_pc, sc->bnx_intrhand);
 if (sc->bnx_size)
  bus_space_unmap(sc->bnx_btag, sc->bnx_bhandle, sc->bnx_size);
 ;
}
int
bnx_fw_sync(struct bnx_softc *sc, u_int32_t msg_data)
{
 int i, rc = 0;
 u_int32_t val;
 if (sc->bnx_fw_timed_out) {
  rc = 16;
  goto bnx_fw_sync_exit;
 }
 sc->bnx_fw_wr_seq++;
 msg_data |= sc->bnx_fw_wr_seq;
  ;
 bnx_reg_wr_ind(sc, sc->bnx_shmem_base + 0x00000004, msg_data);
 for (i = 0; i < 1000; i++) {
  val = bnx_reg_rd_ind(sc, sc->bnx_shmem_base + 0x00000008);
  if ((val & 0x0000ffff) == (msg_data & 0x0000ffff))
   break;
  delay(1000);
 }
 if (((val & 0x0000ffff) != (msg_data & 0x0000ffff)) &&
  ((msg_data & 0x00ff0000) != 0x00010000)) {
  printf("%s: " "%s(%d): Firmware synchronization timeout! " "msg_data = 0x%08X\n", sc->bnx_dev.dv_xname, "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../dev/pci/if_bnx.c", 2739, msg_data);
  msg_data &= ~0xff000000;
  msg_data |= 0x05000000;
  bnx_reg_wr_ind(sc, sc->bnx_shmem_base + 0x00000004, msg_data);
  sc->bnx_fw_timed_out = 1;
  rc = 16;
 }
bnx_fw_sync_exit:
 return (rc);
}
void
bnx_load_rv2p_fw(struct bnx_softc *sc, u_int32_t *rv2p_code,
    u_int32_t rv2p_code_len, u_int32_t rv2p_proc)
{
 int i;
 u_int32_t val;
 if (rv2p_proc == 1) {
  { rv2p_code[5] = (rv2p_code[5] & ~0xFFFF) | ((((1 << 13) / sizeof(struct rx_bd)) - 1)); };
 }
 for (i = 0; i < rv2p_code_len; i += 8) {
  bus_space_write_4(sc->bnx_btag, sc->bnx_bhandle, 0x00002830, *rv2p_code);
  rv2p_code++;
  bus_space_write_4(sc->bnx_btag, sc->bnx_bhandle, 0x00002834, *rv2p_code);
  rv2p_code++;
  if (rv2p_proc == 0) {
   val = (i / 8) | (1L<<31);
   bus_space_write_4(sc->bnx_btag, sc->bnx_bhandle, 0x00002838, val);
  } else {
   val = (i / 8) | (1L<<31);
   bus_space_write_4(sc->bnx_btag, sc->bnx_bhandle, 0x0000283c, val);
  }
 }
 if (rv2p_proc == 0)
  bus_space_write_4(sc->bnx_btag, sc->bnx_bhandle, 0x00002800, (1L<<16));
 else
  bus_space_write_4(sc->bnx_btag, sc->bnx_bhandle, 0x00002800, (1L<<17));
}
void
bnx_load_cpu_fw(struct bnx_softc *sc, struct cpu_reg *cpu_reg,
    struct fw_info *fw)
{
 u_int32_t offset;
 u_int32_t val;
 val = bnx_reg_rd_ind(sc, cpu_reg->mode);
 val |= cpu_reg->mode_value_halt;
 bnx_reg_wr_ind(sc, cpu_reg->mode, val);
 bnx_reg_wr_ind(sc, cpu_reg->state, cpu_reg->state_value_clear);
 offset = cpu_reg->spad_base + (fw->text_addr - cpu_reg->mips_view_base);
 if (fw->text) {
  int j;
  for (j = 0; j < (fw->text_len / 4); j++, offset += 4)
   bnx_reg_wr_ind(sc, offset, fw->text[j]);
 }
 offset = cpu_reg->spad_base + (fw->data_addr - cpu_reg->mips_view_base);
 if (fw->data) {
  int j;
  for (j = 0; j < (fw->data_len / 4); j++, offset += 4)
   bnx_reg_wr_ind(sc, offset, fw->data[j]);
 }
 offset = cpu_reg->spad_base + (fw->sbss_addr - cpu_reg->mips_view_base);
 if (fw->sbss) {
  int j;
  for (j = 0; j < (fw->sbss_len / 4); j++, offset += 4)
   bnx_reg_wr_ind(sc, offset, fw->sbss[j]);
 }
 offset = cpu_reg->spad_base + (fw->bss_addr - cpu_reg->mips_view_base);
 if (fw->bss) {
  int j;
  for (j = 0; j < (fw->bss_len/4); j++, offset += 4)
   bnx_reg_wr_ind(sc, offset, fw->bss[j]);
 }
 offset = cpu_reg->spad_base +
     (fw->rodata_addr - cpu_reg->mips_view_base);
 if (fw->rodata) {
  int j;
  for (j = 0; j < (fw->rodata_len / 4); j++, offset += 4)
   bnx_reg_wr_ind(sc, offset, fw->rodata[j]);
 }
 bnx_reg_wr_ind(sc, cpu_reg->inst, 0);
 bnx_reg_wr_ind(sc, cpu_reg->pc, fw->start_addr);
 val = bnx_reg_rd_ind(sc, cpu_reg->mode);
 val &= ~cpu_reg->mode_value_halt;
 bnx_reg_wr_ind(sc, cpu_reg->state, cpu_reg->state_value_clear);
 bnx_reg_wr_ind(sc, cpu_reg->mode, val);
}
void
bnx_init_cpus(struct bnx_softc *sc)
{
 struct bnx_firmware *bfw = &bnx_firmwares[0];
 struct bnx_rv2p *rv2p = &bnx_rv2ps[0];
 struct cpu_reg cpu_reg;
 struct fw_info fw;
 if ((((sc)->bnx_chipid) & 0xffff0000) == 0x57090000) {
  bfw = &bnx_firmwares[1];
  if (((((sc)->bnx_chipid) & 0x0000f000) == 0x00000000))
   rv2p = &bnx_rv2ps[2];
  else
   rv2p = &bnx_rv2ps[1];
 }
 bnx_load_rv2p_fw(sc, rv2p->bnx_rv2p_proc1,
     rv2p->fw->bnx_rv2p_proc1len, 0);
 bnx_load_rv2p_fw(sc, rv2p->bnx_rv2p_proc2,
     rv2p->fw->bnx_rv2p_proc2len, 1);
 cpu_reg.mode = 0x000c5000;
 cpu_reg.mode_value_halt = (1L<<10);
 cpu_reg.mode_value_sstep = (1L<<1);
 cpu_reg.state = 0x000c5004;
 cpu_reg.state_value_clear = 0xffffff;
 cpu_reg.gpr0 = 0x000c5200;
 cpu_reg.evmask = 0x000c5008;
 cpu_reg.pc = 0x000c501c;
 cpu_reg.inst = 0x000c5020;
 cpu_reg.bp = 0x000c5034;
 cpu_reg.spad_base = 0x000e0000;
 cpu_reg.mips_view_base = 0x8000000;
 fw.ver_major = bfw->fw->bnx_RXP_FwReleaseMajor;
 fw.ver_minor = bfw->fw->bnx_RXP_FwReleaseMinor;
 fw.ver_fix = bfw->fw->bnx_RXP_FwReleaseFix;
 fw.start_addr = bfw->fw->bnx_RXP_FwStartAddr;
 fw.text_addr = bfw->fw->bnx_RXP_FwTextAddr;
 fw.text_len = bfw->fw->bnx_RXP_FwTextLen;
 fw.text_index = 0;
 fw.text = bfw->bnx_RXP_FwText;
 fw.data_addr = bfw->fw->bnx_RXP_FwDataAddr;
 fw.data_len = bfw->fw->bnx_RXP_FwDataLen;
 fw.data_index = 0;
 fw.data = bfw->bnx_RXP_FwData;
 fw.sbss_addr = bfw->fw->bnx_RXP_FwSbssAddr;
 fw.sbss_len = bfw->fw->bnx_RXP_FwSbssLen;
 fw.sbss_index = 0;
 fw.sbss = bfw->bnx_RXP_FwSbss;
 fw.bss_addr = bfw->fw->bnx_RXP_FwBssAddr;
 fw.bss_len = bfw->fw->bnx_RXP_FwBssLen;
 fw.bss_index = 0;
 fw.bss = bfw->bnx_RXP_FwBss;
 fw.rodata_addr = bfw->fw->bnx_RXP_FwRodataAddr;
 fw.rodata_len = bfw->fw->bnx_RXP_FwRodataLen;
 fw.rodata_index = 0;
 fw.rodata = bfw->bnx_RXP_FwRodata;
 ;
 bnx_load_cpu_fw(sc, &cpu_reg, &fw);
 cpu_reg.mode = 0x00045000;
 cpu_reg.mode_value_halt = (1L<<10);
 cpu_reg.mode_value_sstep = (1L<<1);
 cpu_reg.state = 0x00045004;
 cpu_reg.state_value_clear = 0xffffff;
 cpu_reg.gpr0 = 0x00045200;
 cpu_reg.evmask = 0x00045008;
 cpu_reg.pc = 0x0004501c;
 cpu_reg.inst = 0x00045020;
 cpu_reg.bp = 0x00045034;
 cpu_reg.spad_base = 0x00060000;
 cpu_reg.mips_view_base = 0x8000000;
 fw.ver_major = bfw->fw->bnx_TXP_FwReleaseMajor;
 fw.ver_minor = bfw->fw->bnx_TXP_FwReleaseMinor;
 fw.ver_fix = bfw->fw->bnx_TXP_FwReleaseFix;
 fw.start_addr = bfw->fw->bnx_TXP_FwStartAddr;
 fw.text_addr = bfw->fw->bnx_TXP_FwTextAddr;
 fw.text_len = bfw->fw->bnx_TXP_FwTextLen;
 fw.text_index = 0;
 fw.text = bfw->bnx_TXP_FwText;
 fw.data_addr = bfw->fw->bnx_TXP_FwDataAddr;
 fw.data_len = bfw->fw->bnx_TXP_FwDataLen;
 fw.data_index = 0;
 fw.data = bfw->bnx_TXP_FwData;
 fw.sbss_addr = bfw->fw->bnx_TXP_FwSbssAddr;
 fw.sbss_len = bfw->fw->bnx_TXP_FwSbssLen;
 fw.sbss_index = 0;
 fw.sbss = bfw->bnx_TXP_FwSbss;
 fw.bss_addr = bfw->fw->bnx_TXP_FwBssAddr;
 fw.bss_len = bfw->fw->bnx_TXP_FwBssLen;
 fw.bss_index = 0;
 fw.bss = bfw->bnx_TXP_FwBss;
 fw.rodata_addr = bfw->fw->bnx_TXP_FwRodataAddr;
 fw.rodata_len = bfw->fw->bnx_TXP_FwRodataLen;
 fw.rodata_index = 0;
 fw.rodata = bfw->bnx_TXP_FwRodata;
 ;
 bnx_load_cpu_fw(sc, &cpu_reg, &fw);
 cpu_reg.mode = 0x00085000;
 cpu_reg.mode_value_halt = (1L<<10);
 cpu_reg.mode_value_sstep = (1L<<1);
 cpu_reg.state = 0x00085004;
 cpu_reg.state_value_clear = 0xffffff;
 cpu_reg.gpr0 = 0x00085200;
 cpu_reg.evmask = 0x00085008;
 cpu_reg.pc = 0x0008501c;
 cpu_reg.inst = 0x00085020;
 cpu_reg.bp = 0x00085034;
 cpu_reg.spad_base = 0x000a0000;
 cpu_reg.mips_view_base = 0x8000000;
 fw.ver_major = bfw->fw->bnx_TPAT_FwReleaseMajor;
 fw.ver_minor = bfw->fw->bnx_TPAT_FwReleaseMinor;
 fw.ver_fix = bfw->fw->bnx_TPAT_FwReleaseFix;
 fw.start_addr = bfw->fw->bnx_TPAT_FwStartAddr;
 fw.text_addr = bfw->fw->bnx_TPAT_FwTextAddr;
 fw.text_len = bfw->fw->bnx_TPAT_FwTextLen;
 fw.text_index = 0;
 fw.text = bfw->bnx_TPAT_FwText;
 fw.data_addr = bfw->fw->bnx_TPAT_FwDataAddr;
 fw.data_len = bfw->fw->bnx_TPAT_FwDataLen;
 fw.data_index = 0;
 fw.data = bfw->bnx_TPAT_FwData;
 fw.sbss_addr = bfw->fw->bnx_TPAT_FwSbssAddr;
 fw.sbss_len = bfw->fw->bnx_TPAT_FwSbssLen;
 fw.sbss_index = 0;
 fw.sbss = bfw->bnx_TPAT_FwSbss;
 fw.bss_addr = bfw->fw->bnx_TPAT_FwBssAddr;
 fw.bss_len = bfw->fw->bnx_TPAT_FwBssLen;
 fw.bss_index = 0;
 fw.bss = bfw->bnx_TPAT_FwBss;
 fw.rodata_addr = bfw->fw->bnx_TPAT_FwRodataAddr;
 fw.rodata_len = bfw->fw->bnx_TPAT_FwRodataLen;
 fw.rodata_index = 0;
 fw.rodata = bfw->bnx_TPAT_FwRodata;
 ;
 bnx_load_cpu_fw(sc, &cpu_reg, &fw);
 cpu_reg.mode = 0x00105000;
 cpu_reg.mode_value_halt = (1L<<10);
 cpu_reg.mode_value_sstep = (1L<<1);
 cpu_reg.state = 0x00105004;
 cpu_reg.state_value_clear = 0xffffff;
 cpu_reg.gpr0 = 0x00105200;
 cpu_reg.evmask = 0x00105008;
 cpu_reg.pc = 0x0010501c;
 cpu_reg.inst = 0x00105020;
 cpu_reg.bp = 0x00105034;
 cpu_reg.spad_base = 0x00120000;
 cpu_reg.mips_view_base = 0x8000000;
 fw.ver_major = bfw->fw->bnx_COM_FwReleaseMajor;
 fw.ver_minor = bfw->fw->bnx_COM_FwReleaseMinor;
 fw.ver_fix = bfw->fw->bnx_COM_FwReleaseFix;
 fw.start_addr = bfw->fw->bnx_COM_FwStartAddr;
 fw.text_addr = bfw->fw->bnx_COM_FwTextAddr;
 fw.text_len = bfw->fw->bnx_COM_FwTextLen;
 fw.text_index = 0;
 fw.text = bfw->bnx_COM_FwText;
 fw.data_addr = bfw->fw->bnx_COM_FwDataAddr;
 fw.data_len = bfw->fw->bnx_COM_FwDataLen;
 fw.data_index = 0;
 fw.data = bfw->bnx_COM_FwData;
 fw.sbss_addr = bfw->fw->bnx_COM_FwSbssAddr;
 fw.sbss_len = bfw->fw->bnx_COM_FwSbssLen;
 fw.sbss_index = 0;
 fw.sbss = bfw->bnx_COM_FwSbss;
 fw.bss_addr = bfw->fw->bnx_COM_FwBssAddr;
 fw.bss_len = bfw->fw->bnx_COM_FwBssLen;
 fw.bss_index = 0;
 fw.bss = bfw->bnx_COM_FwBss;
 fw.rodata_addr = bfw->fw->bnx_COM_FwRodataAddr;
 fw.rodata_len = bfw->fw->bnx_COM_FwRodataLen;
 fw.rodata_index = 0;
 fw.rodata = bfw->bnx_COM_FwRodata;
 ;
 bnx_load_cpu_fw(sc, &cpu_reg, &fw);
}
void
bnx_init_context(struct bnx_softc *sc)
{
 if ((((sc)->bnx_chipid) & 0xffff0000) == 0x57090000) {
  int i, retry_cnt = 10;
  u_int32_t val;
  val = (1L<<0) | (1L<<13)
      | (1 << 12);
  val |= (13 - 8) << 16;
  bus_space_write_4(sc->bnx_btag, sc->bnx_bhandle, 0x00001000, val);
  for (i = 0; i < retry_cnt; i++) {
   val = bus_space_read_4(sc->bnx_btag, sc->bnx_bhandle, 0x00001000);
   if (!(val & (1L<<13)))
    break;
   delay(2);
  }
  for (i = 0; i < sc->ctx_pages; i++) {
   int j;
   val = (u_int32_t)(sc->ctx_segs[i].ds_addr);
   bus_space_write_4(sc->bnx_btag, sc->bnx_bhandle, 0x000010cc, val | (1L<<0));
   val = (u_int32_t)
       ((u_int64_t)sc->ctx_segs[i].ds_addr >> 32);
   bus_space_write_4(sc->bnx_btag, sc->bnx_bhandle, 0x000010d0, val);
   bus_space_write_4(sc->bnx_btag, sc->bnx_bhandle, 0x000010c8, i | (1L<<30));
   for (j = 0; j < retry_cnt; j++) {
    val = bus_space_read_4(sc->bnx_btag, sc->bnx_bhandle, 0x000010c8);
    if ((val & (1L<<30)) == 0)
     break;
    delay(5);
   }
  }
 } else {
  u_int32_t vcid_addr, offset;
  vcid_addr = ((96) << 7);
  while (vcid_addr) {
   vcid_addr -= (1 << 6);
   bus_space_write_4(sc->bnx_btag, sc->bnx_bhandle, 0x00001008, 0);
   bus_space_write_4(sc->bnx_btag, sc->bnx_bhandle, 0x0000100c, vcid_addr);
   for(offset = 0; offset < (1 << 6); offset += 4) {
    bnx_ctx_wr(sc, 0x00, offset, 0);
   }
   bus_space_write_4(sc->bnx_btag, sc->bnx_bhandle, 0x00001008, vcid_addr);
   bus_space_write_4(sc->bnx_btag, sc->bnx_bhandle, 0x0000100c, vcid_addr);
  }
  }
}
void
bnx_get_mac_addr(struct bnx_softc *sc)
{
 u_int32_t mac_lo = 0, mac_hi = 0;
 mac_hi = bnx_reg_rd_ind(sc, sc->bnx_shmem_base + 0x00000050);
 mac_lo = bnx_reg_rd_ind(sc, sc->bnx_shmem_base + 0x00000054);
 if ((mac_lo == 0) && (mac_hi == 0)) {
  printf("%s: " "%s(%d): Invalid Ethernet address!\n", sc->bnx_dev.dv_xname, "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../dev/pci/if_bnx.c", 3204);
 } else {
  sc->eaddr[0] = (u_char)(mac_hi >> 8);
  sc->eaddr[1] = (u_char)(mac_hi >> 0);
  sc->eaddr[2] = (u_char)(mac_lo >> 24);
  sc->eaddr[3] = (u_char)(mac_lo >> 16);
  sc->eaddr[4] = (u_char)(mac_lo >> 8);
  sc->eaddr[5] = (u_char)(mac_lo >> 0);
 }
 ;
}
void
bnx_set_mac_addr(struct bnx_softc *sc)
{
 u_int32_t val;
 u_int8_t *mac_addr = sc->eaddr;
 ;
 val = (mac_addr[0] << 8) | mac_addr[1];
 bus_space_write_4(sc->bnx_btag, sc->bnx_bhandle, 0x00001410, val);
 val = (mac_addr[2] << 24) | (mac_addr[3] << 16) |
  (mac_addr[4] << 8) | mac_addr[5];
 bus_space_write_4(sc->bnx_btag, sc->bnx_bhandle, 0x00001414, val);
}
void
bnx_stop(struct bnx_softc *sc)
{
 struct ifnet *ifp = &sc->arpcom.ac_if;
 struct ifmedia_entry *ifm;
 struct mii_data *mii;
 int mtmp, itmp;
 ;
 timeout_del(&sc->bnx_timeout);
 timeout_del(&sc->bnx_rxrefill);
 ifp->if_flags &= ~0x40;
 ifq_clr_oactive(&ifp->if_snd);
 bus_space_write_4(sc->bnx_btag, sc->bnx_bhandle, 0x00000814, 0x5ffffff);
 bus_space_read_4(sc->bnx_btag, sc->bnx_bhandle, 0x00000814);
 delay(20);
 bnx_disable_intr(sc);
 intr_barrier(sc->bnx_intrhand);
 (((ifp->if_flags & 0x40) == 0) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../dev/pci/if_bnx.c", 3273, "(ifp->if_flags & IFF_RUNNING) == 0"));
 bnx_reset(sc, 0x09000000);
 bnx_free_rx_chain(sc);
 bnx_free_tx_chain(sc);
 mii = &sc->bnx_mii;
 itmp = ifp->if_flags;
 ifp->if_flags |= 0x1;
 ifm = mii->mii_media.ifm_cur;
 mtmp = ifm->ifm_media;
 ifm->ifm_media = 0x0000000000000100ULL|2ULL;
 mii_mediachg(mii);
 ifm->ifm_media = mtmp;
 ifp->if_flags = itmp;
 ifp->if_timer = 0;
 sc->bnx_link = 0;
 ;
 bnx_mgmt_init(sc);
}
int
bnx_reset(struct bnx_softc *sc, u_int32_t reset_code)
{
 struct pci_attach_args *pa = &(sc->bnx_pa);
 u_int32_t val;
 int i, rc = 0;
 ;
 bus_space_write_4(sc->bnx_btag, sc->bnx_bhandle, 0x00000814, (1L<<4) | (1L<<26) | (1L<<17) | (1L<<19));
 val = bus_space_read_4(sc->bnx_btag, sc->bnx_bhandle, 0x00000814);
 delay(5);
 if ((((sc)->bnx_chipid) & 0xffff0000) == 0x57090000) {
  val = bus_space_read_4(sc->bnx_btag, sc->bnx_bhandle, 0x000008c8);
  val &= ~(1L<<16);
  bus_space_write_4(sc->bnx_btag, sc->bnx_bhandle, 0x000008c8, val);
 }
 sc->bnx_fw_timed_out = 0;
 rc = bnx_fw_sync(sc, 0x00010000 | reset_code);
 if (rc)
  goto bnx_reset_exit;
 bnx_reg_wr_ind(sc, sc->bnx_shmem_base + 0x00000000, 0x4841564b);
 val = bus_space_read_4(sc->bnx_btag, sc->bnx_bhandle, 0x00000808);
 if ((((sc)->bnx_chipid) & 0xffff0000) == 0x57090000) {
  bus_space_write_4(sc->bnx_btag, sc->bnx_bhandle, 0x00000800, (1L<<4));
  bus_space_read_4(sc->bnx_btag, sc->bnx_bhandle, 0x00000800);
  delay(5);
  val = (1L<<7) |
        (1L<<3);
  pci_conf_write(pa->pa_pc, pa->pa_tag, 0x00000068,
      val);
 } else {
  val = (1L<<8) |
   (1L<<7) |
   (1L<<3);
  bus_space_write_4(sc->bnx_btag, sc->bnx_bhandle, 0x00000068, val);
  for (i = 0; i < 10; i++) {
   val = bus_space_read_4(sc->bnx_btag, sc->bnx_bhandle, 0x00000068);
   if ((val & ((1L<<8) |
    (1L<<9))) == 0) {
    break;
   }
   delay(10);
  }
  if (val & ((1L<<8) |
      (1L<<9))) {
   printf("%s: " "%s(%d): Reset failed!\n", sc->bnx_dev.dv_xname, "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../dev/pci/if_bnx.c", 3379);
   rc = 16;
   goto bnx_reset_exit;
  }
 }
 val = bus_space_read_4(sc->bnx_btag, sc->bnx_bhandle, 0x00000418);
 if (val != 0x01020304) {
  printf("%s: " "%s(%d): Byte swap is incorrect!\n", sc->bnx_dev.dv_xname, "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../dev/pci/if_bnx.c", 3389);
  rc = 19;
  goto bnx_reset_exit;
 }
 sc->bnx_fw_timed_out = 0;
 rc = bnx_fw_sync(sc, 0x00020000 | reset_code);
 if (rc)
  printf("%s: " "%s(%d): Firmware did not complete " "initialization!\n", sc->bnx_dev.dv_xname, "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../dev/pci/if_bnx.c", 3401);
bnx_reset_exit:
 ;
 return (rc);
}
int
bnx_chipinit(struct bnx_softc *sc)
{
 struct pci_attach_args *pa = &(sc->bnx_pa);
 u_int32_t val;
 int rc = 0;
 ;
 bus_space_write_4(sc->bnx_btag, sc->bnx_bhandle, 0x00000084, (1L<<18));
 val = (1L<<0) |
     (1L<<1) |
     (1L<<4) |
     (1L<<5) |
     5 << 12 |
     3 << 16;
 val |= (0x2 << 20) | (1L<<11);
 if ((sc->bnx_flags & 0x01) && (sc->bus_speed_mhz == 133))
  val |= (1L<<23);
 if (((((sc)->bnx_chipid) & 0xffff0000) == 0x57060000) &&
     ((((sc)->bnx_chipid) & 0xfffffff0) != 0x57060000) &&
     !(sc->bnx_flags & 0x01))
  val |= (1L<<10);
 bus_space_write_4(sc->bnx_btag, sc->bnx_bhandle, 0x00000c08, val);
 if (sc->bnx_flags & 0x01) {
  val = pci_conf_read(pa->pa_pc, pa->pa_tag, 0x40);
  pci_conf_write(pa->pa_pc, pa->pa_tag, 0x40,
      val & ~0x20000);
 }
 bus_space_write_4(sc->bnx_btag, sc->bnx_bhandle, 0x00000810, (1L<<19) | (1L<<15) | (1L<<21));
 bnx_init_context(sc);
 bnx_init_cpus(sc);
 if (bnx_init_nvram(sc)) {
  rc = 19;
  goto bnx_chipinit_exit;
 }
 val = bus_space_read_4(sc->bnx_btag, sc->bnx_bhandle, 0x00003c08);
 val &= ~(0x7L<<4);
 val |= (0L<<4);
 if ((((sc)->bnx_chipid) & 0xffff0000) == 0x57090000) {
  val |= (1L<<2);
  if ((((sc)->bnx_chipid) & 0xfffffff0) == 0x57090010)
   val |= (1L<<1);
 }
 bus_space_write_4(sc->bnx_btag, sc->bnx_bhandle, 0x00003c08, val);
 val = 0x10000 + (0x4000 * (1 << 8));
 bus_space_write_4(sc->bnx_btag, sc->bnx_bhandle, 0x00003c1c, val);
 bus_space_write_4(sc->bnx_btag, sc->bnx_bhandle, 0x00003c20, val);
 val = (13 - 8) << 24;
 bus_space_write_4(sc->bnx_btag, sc->bnx_bhandle, 0x00002808, val);
 val = bus_space_read_4(sc->bnx_btag, sc->bnx_bhandle, 0x00005008);
 val &= ~(0xfL<<24);
 val |= (13 - 8) << 24 | 0x40;
 bus_space_write_4(sc->bnx_btag, sc->bnx_bhandle, 0x00005008, val);
bnx_chipinit_exit:
 ;
 return(rc);
}
int
bnx_blockinit(struct bnx_softc *sc)
{
 u_int32_t reg64, val;
 int rc = 0;
 ;
 bnx_set_mac_addr(sc);
 val = sc->eaddr[0] + (sc->eaddr[1] << 8) + (sc->eaddr[2] << 16) +
     (sc->eaddr[3]) + (sc->eaddr[4] << 8) + (sc->eaddr[5] << 16);
 bus_space_write_4(sc->bnx_btag, sc->bnx_bhandle, 0x00001498, val);
 sc->last_status_idx = 0;
 sc->rx_mode = (1L<<12);
 bus_space_write_4(sc->bnx_btag, sc->bnx_bhandle, 0x00001408, (1L<<11));
 bus_space_write_4(sc->bnx_btag, sc->bnx_bhandle, 0x0000680c, (1L<<0));
 bus_space_write_4(sc->bnx_btag, sc->bnx_bhandle, 0x00006810, (u_int32_t)(sc->status_block_paddr));
 bus_space_write_4(sc->bnx_btag, sc->bnx_bhandle, 0x00006814, (u_int32_t)((u_int64_t)sc->status_block_paddr >> 32));
 bus_space_write_4(sc->bnx_btag, sc->bnx_bhandle, 0x00006818, (u_int32_t)(sc->stats_block_paddr));
 bus_space_write_4(sc->bnx_btag, sc->bnx_bhandle, 0x0000681c, (u_int32_t)((u_int64_t)sc->stats_block_paddr >> 32));
 bus_space_write_4(sc->bnx_btag, sc->bnx_bhandle, 0x00006820, (sc->bnx_tx_quick_cons_trip_int << 16) | sc->bnx_tx_quick_cons_trip);
 bus_space_write_4(sc->bnx_btag, sc->bnx_bhandle, 0x00006828, (sc->bnx_rx_quick_cons_trip_int << 16) | sc->bnx_rx_quick_cons_trip);
 bus_space_write_4(sc->bnx_btag, sc->bnx_bhandle, 0x00006824, (sc->bnx_comp_prod_trip_int << 16) | sc->bnx_comp_prod_trip);
 bus_space_write_4(sc->bnx_btag, sc->bnx_bhandle, 0x00006830, (sc->bnx_tx_ticks_int << 16) | sc->bnx_tx_ticks);
 bus_space_write_4(sc->bnx_btag, sc->bnx_bhandle, 0x0000682c, (sc->bnx_rx_ticks_int << 16) | sc->bnx_rx_ticks);
 bus_space_write_4(sc->bnx_btag, sc->bnx_bhandle, 0x00006834, (sc->bnx_com_ticks_int << 16) | sc->bnx_com_ticks);
 bus_space_write_4(sc->bnx_btag, sc->bnx_bhandle, 0x00006838, (sc->bnx_cmd_ticks_int << 16) | sc->bnx_cmd_ticks);
 bus_space_write_4(sc->bnx_btag, sc->bnx_bhandle, 0x00006844, (sc->bnx_stats_ticks & 0xffff00));
 bus_space_write_4(sc->bnx_btag, sc->bnx_bhandle, 0x00006840, 0xbb8);
 bus_space_write_4(sc->bnx_btag, sc->bnx_bhandle, 0x00006808, ((1L<<1) | (1L<<2) | (1L<<0)));
 bus_space_write_4(sc->bnx_btag, sc->bnx_bhandle, 0x00006800, (1L<<21));
 reg64 = bnx_reg_rd_ind(sc, sc->bnx_shmem_base + 0x00000020);
 ;
 if ((reg64 & 0xffffff00) !=
     0x44564900) {
  printf("%s: " "%s(%d): Bootcode not running! Found: 0x%08X, " "Expected: 08%08X\n", sc->bnx_dev.dv_xname, "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../dev/pci/if_bnx.c", 3590, (reg64 & 0xffffff00), 0x44564900);
  rc = 19;
  goto bnx_blockinit_exit;
 }
 reg64 = bnx_reg_rd_ind(sc, sc->bnx_shmem_base + 0x000000d8);
 if (reg64 & (0x04000000 |
     0x08000000)) {
  ;
  sc->bnx_flags |= 0x40;
 }
 sc->bnx_fw_ver = bnx_reg_rd_ind(sc, sc->bnx_shmem_base + 0x0000004c);
 ;
 if ((((sc)->bnx_chipid) & 0xffff0000) == 0x57090000) {
  val = bus_space_read_4(sc->bnx_btag, sc->bnx_bhandle, 0x000008c8);
  val |= (1L<<16);
  bus_space_write_4(sc->bnx_btag, sc->bnx_bhandle, 0x000008c8, val);
 }
 rc = bnx_fw_sync(sc, 0x00030000 | 0x01000000);
 if ((((sc)->bnx_chipid) & 0xffff0000) == 0x57090000) {
  bus_space_write_4(sc->bnx_btag, sc->bnx_bhandle, 0x00000810, 0x17ffffff);
 } else
  bus_space_write_4(sc->bnx_btag, sc->bnx_bhandle, 0x00000810, 0x05ffffff);
 bus_space_write_4(sc->bnx_btag, sc->bnx_bhandle, 0x00000810, 0x5ffffff);
 bus_space_read_4(sc->bnx_btag, sc->bnx_bhandle, 0x00000810);
 delay(20);
bnx_blockinit_exit:
 ;
 return (rc);
}
int
bnx_get_buf(struct bnx_softc *sc, u_int16_t *prod,
    u_int16_t *chain_prod, u_int32_t *prod_bseq)
{
 bus_dmamap_t map;
 struct mbuf *m;
 struct rx_bd *rxbd;
 int i;
 u_int32_t addr;
 u_int16_t first_chain_prod;
 ;
 ;
 ;
 m = m_clget((((void *)0)), (0x0002), ((1 << 11)));
 if (!m)
  return (0);
 m->m_hdr.mh_len = m->M_dat.MH.MH_pkthdr.len = (1 << 11);
 map = sc->rx_mbuf_map[*chain_prod];
 if (bus_dmamap_load_mbuf(sc->bnx_dmatag, map, m, 0x0001)) {
  m_freem(m);
  return (0);
 }
 first_chain_prod = *chain_prod;
 rxbd = &sc->rx_bd_chain[(((*chain_prod) & ~(((1 << 13) / sizeof(struct rx_bd)) - 1)) >> (13 - 4))][((*chain_prod) & (((1 << 13) / sizeof(struct rx_bd)) - 1))];
 addr = (u_int32_t)map->dm_segs[0].ds_addr;
 rxbd->rx_bd_haddr_lo = addr;
 addr = (u_int32_t)((u_int64_t)map->dm_segs[0].ds_addr >> 32);
 rxbd->rx_bd_haddr_hi = addr;
 rxbd->rx_bd_len = map->dm_segs[0].ds_len;
 rxbd->rx_bd_flags = (1<<3);
 *prod_bseq += map->dm_segs[0].ds_len;
 for (i = 1; i < map->dm_nsegs; i++) {
  *prod = (((*prod) & (((1 << 13) / sizeof(struct rx_bd)) - 1)) == ((((1 << 13) / sizeof(struct rx_bd)) - 1) - 1)) ? (*prod) + 2 : (*prod) + 1;
  *chain_prod = ((*prod) & ((((1 << 13) / sizeof(struct rx_bd)) * 2) - 1));
  rxbd =
      &sc->rx_bd_chain[(((*chain_prod) & ~(((1 << 13) / sizeof(struct rx_bd)) - 1)) >> (13 - 4))][((*chain_prod) & (((1 << 13) / sizeof(struct rx_bd)) - 1))];
  addr = (u_int32_t)map->dm_segs[i].ds_addr;
  rxbd->rx_bd_haddr_lo = addr;
  addr = (u_int32_t)((u_int64_t)map->dm_segs[i].ds_addr >> 32);
  rxbd->rx_bd_haddr_hi = addr;
  rxbd->rx_bd_len = map->dm_segs[i].ds_len;
  rxbd->rx_bd_flags = 0;
  *prod_bseq += map->dm_segs[i].ds_len;
 }
 rxbd->rx_bd_flags |= (1<<2);
 sc->rx_mbuf_ptr[*chain_prod] = m;
 sc->rx_mbuf_map[first_chain_prod] = sc->rx_mbuf_map[*chain_prod];
 sc->rx_mbuf_map[*chain_prod] = map;
 ;
 return (map->dm_nsegs);
}
void
bnx_init_tx_context(struct bnx_softc *sc)
{
 u_int32_t val;
 if ((((sc)->bnx_chipid) & 0xffff0000) == 0x57090000) {
  val = (1<<28) | ((0xc0/0x20)<<16);
  bnx_ctx_wr(sc, ((16) << 7), 0x00000080, val);
  val = (0<<24) | (8 << 16);
  bnx_ctx_wr(sc, ((16) << 7), 0x00000240, val);
  val = (u_int32_t)((u_int64_t)sc->tx_bd_chain_paddr[0] >> 32);
  bnx_ctx_wr(sc, ((16) << 7), 0x00000258, val);
  val = (u_int32_t)(sc->tx_bd_chain_paddr[0]);
  bnx_ctx_wr(sc, ((16) << 7), 0x0000025c, val);
 } else {
  val = (1<<28) | ((0xc0/0x20)<<16);
  bnx_ctx_wr(sc, ((16) << 7), 0x00000000, val);
  val = (0<<24) | (8 << 16);
  bnx_ctx_wr(sc, ((16) << 7), 0x00000088, val);
  val = (u_int32_t)((u_int64_t)sc->tx_bd_chain_paddr[0] >> 32);
  bnx_ctx_wr(sc, ((16) << 7), 0x000000a0, val);
  val = (u_int32_t)(sc->tx_bd_chain_paddr[0]);
  bnx_ctx_wr(sc, ((16) << 7), 0x000000a4, val);
 }
}
int
bnx_init_tx_chain(struct bnx_softc *sc)
{
 struct tx_bd *txbd;
 u_int32_t addr;
 int i, rc = 0;
 ;
 sc->tx_prod = 0;
 sc->tx_cons = 0;
 sc->tx_prod_bseq = 0;
 sc->used_tx_bd = 0;
 sc->max_tx_bd = ((((1 << 13) / sizeof(struct tx_bd)) - 1) * 2);
 ;
 ;
 for (i = 0; i < 2; i++) {
  int j;
  txbd = &sc->tx_bd_chain[i][(((1 << 13) / sizeof(struct tx_bd)) - 1)];
  if (i == (2 - 1))
   j = 0;
  else
   j = i + 1;
  addr = (u_int32_t)sc->tx_bd_chain_paddr[j];
  txbd->tx_bd_haddr_lo = addr;
  addr = (u_int32_t)((u_int64_t)sc->tx_bd_chain_paddr[j] >> 32);
  txbd->tx_bd_haddr_hi = addr;
 }
 bnx_init_tx_context(sc);
 ;
 return(rc);
}
void
bnx_free_tx_chain(struct bnx_softc *sc)
{
 int i;
 ;
 for (i = 0; i < (((1 << 13) / sizeof(struct tx_bd)) * 2); i++) {
  if (sc->tx_mbuf_ptr[i] != ((void *)0)) {
   if (sc->tx_mbuf_map[i] != ((void *)0)) {
    bus_dmamap_sync(sc->bnx_dmatag,
        sc->tx_mbuf_map[i], 0,
        sc->tx_mbuf_map[i]->dm_mapsize,
        0x08);
    bus_dmamap_unload(sc->bnx_dmatag,
        sc->tx_mbuf_map[i]);
   }
   m_freem(sc->tx_mbuf_ptr[i]);
   sc->tx_mbuf_ptr[i] = ((void *)0);
   ;
  }
 }
 for (i = 0; i < 2; i++)
  __builtin_bzero((sc->tx_bd_chain[i]), ((1 << 13)));
 sc->used_tx_bd = 0;
 ;
 ;
}
void
bnx_init_rx_context(struct bnx_softc *sc)
{
 u_int32_t val;
 val = (1<<28) |
  ((0x20/20)<<16) | (0x02 << 8);
 if ((((sc)->bnx_chipid) & 0xffff0000) == 0x57090000) {
  u_int32_t lo_water, hi_water;
  lo_water = 32;
  hi_water = ((((1 << 13) / sizeof(struct rx_bd)) - 1) * 2) / 4;
  lo_water /= 4;
  hi_water /= 16;
  if (hi_water > 0xf)
   hi_water = 0xf;
  else if (hi_water == 0)
   lo_water = 0;
  val |= (lo_water << 0) |
      (hi_water << 4);
 }
  bnx_ctx_wr(sc, ((0) << 7), 0x00000000, val);
 if ((((sc)->bnx_chipid) & 0xffff0000) == 0x57090000) {
  val = bus_space_read_4(sc->bnx_btag, sc->bnx_bhandle, 0x00003d34);
  bus_space_write_4(sc->bnx_btag, sc->bnx_bhandle, 0x00003d34, val | (0x3L<<26));
 }
 val = (u_int32_t)((u_int64_t)sc->rx_bd_chain_paddr[0] >> 32);
 bnx_ctx_wr(sc, ((0) << 7), 0x00000010, val);
 val = (u_int32_t)(sc->rx_bd_chain_paddr[0]);
 bnx_ctx_wr(sc, ((0) << 7), 0x00000014, val);
}
int
bnx_fill_rx_chain(struct bnx_softc *sc)
{
 u_int16_t prod, chain_prod;
 u_int32_t prod_bseq;
 u_int slots, used;
 int ndesc = 0;
 ;
 prod = sc->rx_prod;
 prod_bseq = sc->rx_prod_bseq;
 slots = if_rxr_get(&sc->rx_ring, sc->max_rx_bd);
 while (slots > 0) {
  chain_prod = ((prod) & ((((1 << 13) / sizeof(struct rx_bd)) * 2) - 1));
  used = bnx_get_buf(sc, &prod, &chain_prod, &prod_bseq);
  if (used == 0) {
   break;
  }
  slots -= used;
  prod = (((prod) & (((1 << 13) / sizeof(struct rx_bd)) - 1)) == ((((1 << 13) / sizeof(struct rx_bd)) - 1) - 1)) ? (prod) + 2 : (prod) + 1;
  ndesc++;
 }
 do { (&sc->rx_ring)->rxr_alive -= (slots); } while (0);
 sc->rx_prod = prod;
 sc->rx_prod_bseq = prod_bseq;
 bus_space_write_2(sc->bnx_btag, sc->bnx_bhandle, (0x10000 + ((0) << 8)) + 0x00000004, sc->rx_prod);
 bus_space_write_4(sc->bnx_btag, sc->bnx_bhandle, (0x10000 + ((0) << 8)) + 0x00000008, sc->rx_prod_bseq);
 ;
 return (ndesc);
}
int
bnx_init_rx_chain(struct bnx_softc *sc)
{
 struct rx_bd *rxbd;
 int i, rc = 0;
 u_int32_t addr;
 ;
 sc->rx_prod = 0;
 sc->rx_cons = 0;
 sc->rx_prod_bseq = 0;
 sc->max_rx_bd = ((((1 << 13) / sizeof(struct rx_bd)) - 1) * 2);
 ;
 ;
 for (i = 0; i < 2; i++) {
  int j;
  rxbd = &sc->rx_bd_chain[i][(((1 << 13) / sizeof(struct rx_bd)) - 1)];
  if (i == (2 - 1))
   j = 0;
  else
   j = i + 1;
  addr = (u_int32_t)((u_int64_t)sc->rx_bd_chain_paddr[j] >> 32);
  rxbd->rx_bd_haddr_hi = addr;
  addr = (u_int32_t)sc->rx_bd_chain_paddr[j];
  rxbd->rx_bd_haddr_lo = addr;
 }
 if_rxr_init(&sc->rx_ring, 2, sc->max_rx_bd);
 bnx_fill_rx_chain(sc);
 for (i = 0; i < 2; i++)
  bus_dmamap_sync(sc->bnx_dmatag, sc->rx_bd_chain_map[i], 0,
      sc->rx_bd_chain_map[i]->dm_mapsize,
      0x01 | 0x04);
 bnx_init_rx_context(sc);
 ;
 ;
 return(rc);
}
void
bnx_free_rx_chain(struct bnx_softc *sc)
{
 int i;
 ;
 for (i = 0; i < (((1 << 13) / sizeof(struct rx_bd)) * 2); i++) {
  if (sc->rx_mbuf_ptr[i] != ((void *)0)) {
   if (sc->rx_mbuf_map[i] != ((void *)0)) {
    bus_dmamap_sync(sc->bnx_dmatag,
        sc->rx_mbuf_map[i], 0,
        sc->rx_mbuf_map[i]->dm_mapsize,
        0x02);
    bus_dmamap_unload(sc->bnx_dmatag,
        sc->rx_mbuf_map[i]);
   }
   m_freem(sc->rx_mbuf_ptr[i]);
   sc->rx_mbuf_ptr[i] = ((void *)0);
   ;
  }
 }
 ;
 for (i = 0; i < 2; i++)
  __builtin_bzero((sc->rx_bd_chain[i]), ((1 << 13)));
 ;
 ;
}
void
bnx_rxrefill(void *xsc)
{
 struct bnx_softc *sc = xsc;
 int s;
 s = _splraise(6);
 if (!bnx_fill_rx_chain(sc))
  timeout_add(&sc->bnx_rxrefill, 1);
 _splx(s);
}
int
bnx_ifmedia_upd(struct ifnet *ifp)
{
 struct bnx_softc *sc;
 struct mii_data *mii;
 int rc = 0;
 sc = ifp->if_softc;
 mii = &sc->bnx_mii;
 sc->bnx_link = 0;
 if (mii->mii_instance) {
  struct mii_softc *miisc;
  for((miisc) = ((&mii->mii_phys)->lh_first); (miisc)!= ((void *)0); (miisc) = ((miisc)->mii_list.le_next))
   mii_phy_reset(miisc);
 }
 mii_mediachg(mii);
 return(rc);
}
void
bnx_ifmedia_sts(struct ifnet *ifp, struct ifmediareq *ifmr)
{
 struct bnx_softc *sc;
 struct mii_data *mii;
 int s;
 sc = ifp->if_softc;
 s = _splraise(6);
 mii = &sc->bnx_mii;
 mii_pollstat(mii);
 ifmr->ifm_status = mii->mii_media_status;
 ifmr->ifm_active = (mii->mii_media_active & ~(0x0000040000000000ULL|0x0000000000020000ULL|0x0000000000040000ULL)) |
     sc->bnx_flowflags;
 _splx(s);
}
void
bnx_phy_intr(struct bnx_softc *sc)
{
 u_int32_t new_link_state, old_link_state;
 new_link_state = sc->status_block->status_attn_bits &
     (1L<<0);
 old_link_state = sc->status_block->status_attn_bits_ack &
     (1L<<0);
 if (new_link_state != old_link_state) {
  ;
  sc->bnx_link = 0;
  timeout_del(&sc->bnx_timeout);
  bnx_tick(sc);
  if (new_link_state) {
   bus_space_write_4(sc->bnx_btag, sc->bnx_bhandle, 0x00000088, (1L<<0));
   ;
  } else {
   bus_space_write_4(sc->bnx_btag, sc->bnx_bhandle, 0x0000008c, (1L<<0));
   ;
  }
 }
 bus_space_write_4(sc->bnx_btag, sc->bnx_bhandle, 0x00001404, (1L<<12));
}
void
bnx_rx_intr(struct bnx_softc *sc)
{
 struct status_block *sblk = sc->status_block;
 struct ifnet *ifp = &sc->arpcom.ac_if;
 struct mbuf_list ml = { ((void *)0), ((void *)0), 0 };
 u_int16_t hw_cons, sw_cons, sw_chain_cons;
 u_int16_t sw_prod, sw_chain_prod;
 u_int32_t sw_prod_bseq;
 struct l2_fhdr *l2fhdr;
 int i;
 ;
 if (((&sc->rx_ring)->rxr_alive) == 0)
  return;
 for (i = 0; i < 2; i++)
  bus_dmamap_sync(sc->bnx_dmatag,
      sc->rx_bd_chain_map[i], 0,
      sc->rx_bd_chain_map[i]->dm_mapsize,
      0x08);
 hw_cons = sc->hw_rx_cons = sblk->status_rx_quick_consumer_index0;
 if ((hw_cons & (((1 << 13) / sizeof(struct rx_bd)) - 1)) == (((1 << 13) / sizeof(struct rx_bd)) - 1))
  hw_cons++;
 sw_cons = sc->rx_cons;
 sw_prod = sc->rx_prod;
 sw_prod_bseq = sc->rx_prod_bseq;
 ;
 bus_space_barrier(sc->bnx_btag, sc->bnx_bhandle, 0, 0,
     0x01);
 while (sw_cons != hw_cons) {
  struct mbuf *m;
  struct rx_bd *rxbd;
  unsigned int len;
  u_int32_t status;
  m = ((void *)0);
  sw_chain_cons = ((sw_cons) & ((((1 << 13) / sizeof(struct rx_bd)) * 2) - 1));
  sw_chain_prod = ((sw_prod) & ((((1 << 13) / sizeof(struct rx_bd)) * 2) - 1));
  rxbd = &sc->rx_bd_chain[(((sw_chain_cons) & ~(((1 << 13) / sizeof(struct rx_bd)) - 1)) >> (13 - 4))][((sw_chain_cons) & (((1 << 13) / sizeof(struct rx_bd)) - 1))];
  do { (&sc->rx_ring)->rxr_alive -= (1); } while (0);
  ;
  if (sc->rx_mbuf_ptr[sw_chain_cons] != ((void *)0)) {
   ;
   bus_dmamap_sync(sc->bnx_dmatag,
       sc->rx_mbuf_map[sw_chain_cons], 0,
       sc->rx_mbuf_map[sw_chain_cons]->dm_mapsize,
       0x02);
   bus_dmamap_unload(sc->bnx_dmatag,
       sc->rx_mbuf_map[sw_chain_cons]);
   m = sc->rx_mbuf_ptr[sw_chain_cons];
   sc->rx_mbuf_ptr[sw_chain_cons] = ((void *)0);
   l2fhdr = ((struct l2_fhdr *)((m)->m_hdr.mh_data));
   len = l2fhdr->l2_fhdr_pkt_len;
   status = l2fhdr->l2_fhdr_status;
   ;
   ;
   len -= 4;
   if (status & ((1<<17) |
       (1<<18) |
       (1<<19) |
       (1<<20) |
       (1<<21))) {
    ifp->if_data.ifi_ierrors++;
    ;
    m_freem(m);
    m = ((void *)0);
    goto bnx_rx_int_next_rx;
   }
   m_adj(m, sizeof(struct l2_fhdr) + 2);
   m->M_dat.MH.MH_pkthdr.len = m->m_hdr.mh_len = len;
   ;
   if (status & (1<<13)) {
    if ((l2fhdr->l2_fhdr_ip_xsum ^ 0xffff)
        == 0)
     m->M_dat.MH.MH_pkthdr.csum_flags |=
         0x0008;
    else
     ;
   }
   if (status & ((1<<14) |
       (1<<15))) {
    if ((status &
        ((1<<28) |
        (1<<31))) == 0) {
     m->M_dat.MH.MH_pkthdr.csum_flags |=
         0x0020 |
         0x0080;
    } else {
     ;
    }
   }
   if ((status & (1<<6)) &&
       !(sc->rx_mode & (1L<<10))) {
    ;
    m->M_dat.MH.MH_pkthdr.ether_vtag =
        l2fhdr->l2_fhdr_vlan_tag;
    m->m_hdr.mh_flags |= 0x0020;
   }
bnx_rx_int_next_rx:
   sw_prod = (((sw_prod) & (((1 << 13) / sizeof(struct rx_bd)) - 1)) == ((((1 << 13) / sizeof(struct rx_bd)) - 1) - 1)) ? (sw_prod) + 2 : (sw_prod) + 1;
  }
  sw_cons = (((sw_cons) & (((1 << 13) / sizeof(struct rx_bd)) - 1)) == ((((1 << 13) / sizeof(struct rx_bd)) - 1) - 1)) ? (sw_cons) + 2 : (sw_cons) + 1;
  if (m) {
   sc->rx_cons = sw_cons;
   ;
   ml_enqueue(&ml, m);
   ;
   sw_cons = sc->rx_cons;
  }
  if (sw_cons == hw_cons) {
   hw_cons = sc->hw_rx_cons =
       sblk->status_rx_quick_consumer_index0;
   if ((hw_cons & (((1 << 13) / sizeof(struct rx_bd)) - 1)) ==
       (((1 << 13) / sizeof(struct rx_bd)) - 1))
    hw_cons++;
  }
  bus_space_barrier(sc->bnx_btag, sc->bnx_bhandle, 0, 0,
      0x01);
 }
 sc->rx_cons = sw_cons;
 if (!bnx_fill_rx_chain(sc))
  timeout_add(&sc->bnx_rxrefill, 1);
 for (i = 0; i < 2; i++)
  bus_dmamap_sync(sc->bnx_dmatag,
      sc->rx_bd_chain_map[i], 0,
      sc->rx_bd_chain_map[i]->dm_mapsize,
      0x04);
 if_input(ifp, &ml);
 ;
}
void
bnx_tx_intr(struct bnx_softc *sc)
{
 struct status_block *sblk = sc->status_block;
 struct ifnet *ifp = &sc->arpcom.ac_if;
 bus_dmamap_t map;
 u_int16_t hw_tx_cons, sw_tx_cons, sw_tx_chain_cons;
 int freed, used;
 ;
 hw_tx_cons = sc->hw_tx_cons = sblk->status_tx_quick_consumer_index0;
 if ((hw_tx_cons & (((1 << 13) / sizeof(struct tx_bd)) - 1)) == (((1 << 13) / sizeof(struct tx_bd)) - 1))
  hw_tx_cons++;
 sw_tx_cons = sc->tx_cons;
 bus_space_barrier(sc->bnx_btag, sc->bnx_bhandle, 0, 0,
     0x01);
 freed = 0;
 while (sw_tx_cons != hw_tx_cons) {
  sw_tx_chain_cons = ((sw_tx_cons) & ((((1 << 13) / sizeof(struct tx_bd)) * 2) - 1));
  ;
  ;
  ;
  ;
  ;
  map = sc->tx_mbuf_map[sw_tx_chain_cons];
  if (sc->tx_mbuf_ptr[sw_tx_chain_cons] != ((void *)0)) {
   ;
   ;
   bus_dmamap_sync(sc->bnx_dmatag, map, 0,
       map->dm_mapsize, 0x08);
   bus_dmamap_unload(sc->bnx_dmatag, map);
   m_freem(sc->tx_mbuf_ptr[sw_tx_chain_cons]);
   sc->tx_mbuf_ptr[sw_tx_chain_cons] = ((void *)0);
  }
  freed++;
  sw_tx_cons = (((sw_tx_cons) & (((1 << 13) / sizeof(struct tx_bd)) - 1)) == ((((1 << 13) / sizeof(struct tx_bd)) - 1) - 1)) ? (sw_tx_cons) + 2 : (sw_tx_cons) + 1;
 }
 used = _atomic_sub_int_nv(&sc->used_tx_bd, freed);
 sc->tx_cons = sw_tx_cons;
 if (used == 0)
  ifp->if_timer = 0;
 if (ifq_is_oactive(&ifp->if_snd))
  ifq_restart(&ifp->if_snd);
}
void
bnx_disable_intr(struct bnx_softc *sc)
{
 bus_space_write_4(sc->bnx_btag, sc->bnx_bhandle, 0x00000084, (1L<<18));
 bus_space_read_4(sc->bnx_btag, sc->bnx_bhandle, 0x00000084);
}
void
bnx_enable_intr(struct bnx_softc *sc)
{
 u_int32_t val;
 bus_space_write_4(sc->bnx_btag, sc->bnx_bhandle, 0x00000084, (1L<<16) | (1L<<18) | sc->last_status_idx);
 bus_space_write_4(sc->bnx_btag, sc->bnx_bhandle, 0x00000084, (1L<<16) | sc->last_status_idx);
 val = bus_space_read_4(sc->bnx_btag, sc->bnx_bhandle, 0x00006800);
 bus_space_write_4(sc->bnx_btag, sc->bnx_bhandle, 0x00006800, val | (1L<<16));
}
void
bnx_init(void *xsc)
{
 struct bnx_softc *sc = (struct bnx_softc *)xsc;
 struct ifnet *ifp = &sc->arpcom.ac_if;
 u_int32_t ether_mtu;
 int s;
 ;
 s = _splraise(6);
 bnx_stop(sc);
 if (bnx_reset(sc, 0x01000000)) {
  printf("%s: " "Controller reset failed!\n", sc->bnx_dev.dv_xname);
  goto bnx_init_exit;
 }
 if (bnx_chipinit(sc)) {
  printf("%s: " "Controller initialization failed!\n", sc->bnx_dev.dv_xname);
  goto bnx_init_exit;
 }
 if (bnx_blockinit(sc)) {
  printf("%s: " "Block initialization failed!\n", sc->bnx_dev.dv_xname);
  goto bnx_init_exit;
 }
 __builtin_bcopy((sc->arpcom.ac_enaddr), (sc->eaddr), (6));
 bnx_set_mac_addr(sc);
 ether_mtu = 1522;
 ;
 bus_space_write_4(sc->bnx_btag, sc->bnx_bhandle, 0x0000149c, ether_mtu | (1L<<31));
 sc->max_frame_size = sizeof(struct l2_fhdr) + 2 + ether_mtu + 8;
 ;
 bnx_iff(sc);
 bnx_init_rx_chain(sc);
 bnx_init_tx_chain(sc);
 bnx_enable_intr(sc);
 bnx_ifmedia_upd(ifp);
 ifp->if_flags |= 0x40;
 ifq_clr_oactive(&ifp->if_snd);
 timeout_add_sec(&sc->bnx_timeout, 1);
bnx_init_exit:
 ;
 _splx(s);
 return;
}
void
bnx_mgmt_init(struct bnx_softc *sc)
{
 struct ifnet *ifp = &sc->arpcom.ac_if;
 u_int32_t val;
 if (ifp->if_flags & 0x40)
  goto bnx_mgmt_init_exit;
 bnx_init_cpus(sc);
 val = (13 - 8) << 24;
 bus_space_write_4(sc->bnx_btag, sc->bnx_bhandle, 0x00002808, val);
 bus_space_write_4(sc->bnx_btag, sc->bnx_bhandle, 0x00000810, (1L<<15) | (1L<<17) | (1L<<18));
 bus_space_read_4(sc->bnx_btag, sc->bnx_bhandle, 0x00000810);
 delay(20);
 bnx_ifmedia_upd(ifp);
bnx_mgmt_init_exit:
  ;
}
int
bnx_tx_encap(struct bnx_softc *sc, struct mbuf *m, int *used)
{
 bus_dmamap_t map;
 struct tx_bd *txbd = ((void *)0);
 u_int16_t vlan_tag = 0, flags = 0;
 u_int16_t chain_prod, chain_head, prod;
 u_int32_t addr, prod_bseq;
 int i, error;
 if (m->M_dat.MH.MH_pkthdr.csum_flags) {
  if (m->M_dat.MH.MH_pkthdr.csum_flags & 0x0001)
   flags |= (1<<2);
  if (m->M_dat.MH.MH_pkthdr.csum_flags &
      (0x0002 | 0x0004))
   flags |= (1<<1);
 }
 if (m->m_hdr.mh_flags & 0x0020) {
  flags |= (1<<3);
  vlan_tag = m->M_dat.MH.MH_pkthdr.ether_vtag;
 }
 prod = sc->tx_prod;
 chain_head = chain_prod = ((prod) & ((((1 << 13) / sizeof(struct tx_bd)) * 2) - 1));
 map = sc->tx_mbuf_map[chain_head];
 error = bus_dmamap_load_mbuf(sc->bnx_dmatag, map, m,
     0x0001);
 switch (error) {
 case 0:
  break;
 case 27:
  if ((error = m_defrag(m, 0x0002)) == 0 &&
      (error = bus_dmamap_load_mbuf(sc->bnx_dmatag, map, m,
       0x0001)) == 0)
   break;
 default:
  sc->tx_dma_map_failures++;
  return (55);
 }
 prod_bseq = sc->tx_prod_bseq;
 ;
 for (i = 0; i < map->dm_nsegs ; i++) {
  chain_prod = ((prod) & ((((1 << 13) / sizeof(struct tx_bd)) * 2) - 1));
  txbd = &sc->tx_bd_chain[(((chain_prod) & ~(((1 << 13) / sizeof(struct tx_bd)) - 1)) >> (13 - 4))][((chain_prod) & (((1 << 13) / sizeof(struct tx_bd)) - 1))];
  addr = (u_int32_t)map->dm_segs[i].ds_addr;
  txbd->tx_bd_haddr_lo = addr;
  addr = (u_int32_t)((u_int64_t)map->dm_segs[i].ds_addr >> 32);
  txbd->tx_bd_haddr_hi = addr;
  txbd->tx_bd_mss_nbytes = map->dm_segs[i].ds_len;
  txbd->tx_bd_vlan_tag = vlan_tag;
  txbd->tx_bd_flags = flags;
  prod_bseq += map->dm_segs[i].ds_len;
  if (i == 0)
   txbd->tx_bd_flags |= (1<<7);
  prod = (((prod) & (((1 << 13) / sizeof(struct tx_bd)) - 1)) == ((((1 << 13) / sizeof(struct tx_bd)) - 1) - 1)) ? (prod) + 2 : (prod) + 1;
  }
 txbd->tx_bd_flags |= (1<<6);
 ;
 ;
 sc->tx_mbuf_ptr[chain_prod] = m;
 sc->tx_mbuf_map[chain_head] = sc->tx_mbuf_map[chain_prod];
 sc->tx_mbuf_map[chain_prod] = map;
 *used += map->dm_nsegs;
 ;
 ;
 bus_dmamap_sync(sc->bnx_dmatag, map, 0, map->dm_mapsize,
     0x04);
 sc->tx_prod = prod;
 sc->tx_prod_bseq = prod_bseq;
 return (0);
}
void
bnx_start(struct ifqueue *ifq)
{
 struct ifnet *ifp = ifq->ifq_if;
 struct bnx_softc *sc = ifp->if_softc;
 struct mbuf *m_head = ((void *)0);
 int used;
 u_int16_t tx_prod, tx_chain_prod;
 if (!sc->bnx_link) {
  ifq_purge(ifq);
  goto bnx_start_exit;
 }
 tx_prod = sc->tx_prod;
 tx_chain_prod = ((tx_prod) & ((((1 << 13) / sizeof(struct tx_bd)) * 2) - 1));
 ;
 used = 0;
 while (1) {
  if (sc->used_tx_bd + used + 8 + 1 >=
      sc->max_tx_bd) {
   ;
   ifq_set_oactive(ifq);
   break;
  }
  m_head = ifq_dequeue(ifq);
  if (m_head == ((void *)0))
   break;
  if (bnx_tx_encap(sc, m_head, &used)) {
   m_freem(m_head);
   continue;
  }
  if (ifp->if_bpf)
   bpf_mtap_ether(ifp->if_bpf, m_head, (1<<1));
 }
 if (used == 0) {
  ;
  goto bnx_start_exit;
 }
 used = _atomic_add_int_nv(&sc->used_tx_bd, used);
 ;
 ;
 tx_chain_prod = ((sc->tx_prod) & ((((1 << 13) / sizeof(struct tx_bd)) * 2) - 1));
 ;
 bus_space_write_2(sc->bnx_btag, sc->bnx_bhandle, (0x10000 + ((16) << 8)) + 0x00000088, sc->tx_prod);
 bus_space_write_4(sc->bnx_btag, sc->bnx_bhandle, (0x10000 + ((16) << 8)) + 0x00000090, sc->tx_prod_bseq);
 ifp->if_timer = 5;
bnx_start_exit:
 return;
}
int
bnx_ioctl(struct ifnet *ifp, u_long command, caddr_t data)
{
 struct bnx_softc *sc = ifp->if_softc;
 struct ifreq *ifr = (struct ifreq *) data;
 struct mii_data *mii = &sc->bnx_mii;
 int s, error = 0;
 s = _splraise(6);
 switch (command) {
 case ((unsigned long)0x80000000 | ((sizeof(struct ifreq) & 0x1fff) << 16) | ((('i')) << 8) | ((12))):
  ifp->if_flags |= 0x1;
  if (!(ifp->if_flags & 0x40))
   bnx_init(sc);
  break;
 case ((unsigned long)0x80000000 | ((sizeof(struct ifreq) & 0x1fff) << 16) | ((('i')) << 8) | ((16))):
  if (ifp->if_flags & 0x1) {
   if (ifp->if_flags & 0x40)
    error = 52;
   else
    bnx_init(sc);
  } else {
   if (ifp->if_flags & 0x40)
    bnx_stop(sc);
  }
  break;
 case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct ifreq) & 0x1fff) << 16) | ((('i')) << 8) | ((55))):
  if (((ifr->ifr_ifru.ifru_media) & 0x00000000000000ffULL) == 0ULL ||
      (ifr->ifr_ifru.ifru_media & 0x0000010000000000ULL) == 0)
   ifr->ifr_ifru.ifru_media &= ~(0x0000040000000000ULL|0x0000000000020000ULL|0x0000000000040000ULL);
  if (((ifr->ifr_ifru.ifru_media) & 0x00000000000000ffULL) != 0ULL) {
   if ((ifr->ifr_ifru.ifru_media & (0x0000040000000000ULL|0x0000000000020000ULL|0x0000000000040000ULL)) == 0x0000040000000000ULL) {
    ifr->ifr_ifru.ifru_media |=
        0x0000000000040000ULL | 0x0000000000020000ULL;
   }
   sc->bnx_flowflags = ifr->ifr_ifru.ifru_media & (0x0000040000000000ULL|0x0000000000020000ULL|0x0000000000040000ULL);
  }
 case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct ifmediareq) & 0x1fff) << 16) | ((('i')) << 8) | ((56))):
  ;
  error = ifmedia_ioctl(ifp, ifr, &mii->mii_media, command);
  break;
 case ((unsigned long)0x80000000 | ((sizeof(struct ifreq) & 0x1fff) << 16) | ((('i')) << 8) | ((170))):
  error = if_rxr_ioctl((struct if_rxrinfo *)ifr->ifr_ifru.ifru_data,
      ((void *)0), (1 << 11), &sc->rx_ring);
  break;
 default:
  error = ether_ioctl(ifp, &sc->arpcom, command, data);
 }
 if (error == 52) {
  if (ifp->if_flags & 0x40)
   bnx_iff(sc);
  error = 0;
 }
 _splx(s);
 return (error);
}
void
bnx_watchdog(struct ifnet *ifp)
{
 struct bnx_softc *sc = ifp->if_softc;
 ;
 if (bus_space_read_4(sc->bnx_btag, sc->bnx_bhandle, 0x000014c0) & (1L<<0))
  return;
 printf("%s: Watchdog timeout occurred, resetting!\n",
     ifp->if_xname);
 bnx_init(sc);
 ifp->if_data.ifi_oerrors++;
}
int
bnx_intr(void *xsc)
{
 struct bnx_softc *sc = xsc;
 struct ifnet *ifp = &sc->arpcom.ac_if;
 u_int32_t status_attn_bits;
 u_int16_t status_idx;
 int rv = 0;
 if ((sc->bnx_flags & 0x80) == 0)
  return (0);
 ;
 bus_dmamap_sync(sc->bnx_dmatag, sc->status_map, 0,
     sc->status_map->dm_mapsize, 0x02);
 status_idx = sc->status_block->status_idx;
 if (status_idx != sc->last_status_idx ||
     !((bus_space_read_4(sc->bnx_btag, sc->bnx_bhandle, 0x0000006c)) & ((1L<<0)))) {
  rv = 1;
  bus_space_write_4(sc->bnx_btag, sc->bnx_bhandle, 0x00000084, (1L<<16) | status_idx);
  status_attn_bits = sc->status_block->status_attn_bits;
  ;
  if ((status_attn_bits & (1L<<0)) !=
      (sc->status_block->status_attn_bits_ack &
      (1L<<0))) {
   _kernel_lock("/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../dev/pci/if_bnx.c", 5111);
   bnx_phy_intr(sc);
   _kernel_unlock();
  }
  if (((status_attn_bits & ~(1L<<0)) !=
      (sc->status_block->status_attn_bits_ack &
      ~(1L<<0)))) {
   _kernel_lock("/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../dev/pci/if_bnx.c", 5120);
   ;
   printf("%s: " "Fatal attention detected: 0x%08X\n", sc->bnx_dev.dv_xname, sc->status_block->status_attn_bits);
   ;
   bnx_init(sc);
   _kernel_unlock();
   goto out;
  }
  if (sc->status_block->status_rx_quick_consumer_index0 !=
      sc->hw_rx_cons)
   bnx_rx_intr(sc);
  if (sc->status_block->status_tx_quick_consumer_index0 !=
      sc->hw_tx_cons)
   bnx_tx_intr(sc);
  sc->last_status_idx = status_idx;
  if (ifp->if_flags & 0x40 &&
      !(((&ifp->if_snd)->ifq_len) == 0))
   ifq_start(&ifp->if_snd);
 }
out:
 bus_dmamap_sync(sc->bnx_dmatag, sc->status_map, 0,
     sc->status_map->dm_mapsize, 0x01);
 return (rv);
}
void
bnx_iff(struct bnx_softc *sc)
{
 struct arpcom *ac = &sc->arpcom;
 struct ifnet *ifp = &ac->ac_if;
 struct ether_multi *enm;
 struct ether_multistep step;
 u_int32_t hashes[8] = { 0, 0, 0, 0, 0, 0, 0, 0 };
 u_int32_t rx_mode, sort_mode;
 int h, i;
 rx_mode = sc->rx_mode & ~((1L<<8) |
     (1L<<10));
 sort_mode = 1 | (1L<<16);
 ifp->if_flags &= ~0x200;
 if (!(ifp->if_data.ifi_capabilities & 0x00000020) &&
     (!(sc->bnx_flags & 0x40)))
  rx_mode |= (1L<<10);
 if (ifp->if_flags & 0x100) {
  ;
  ifp->if_flags |= 0x200;
  rx_mode |= (1L<<8);
  sort_mode |= (1L<<19);
 } else if (ac->ac_multirangecnt > 0) {
  ;
  ifp->if_flags |= 0x200;
  for (i = 0; i < 8; i++)
   bus_space_write_4(sc->bnx_btag, sc->bnx_bhandle, 0x000014d0 + (i * 4), 0xffffffff);
  sort_mode |= (1L<<17);
 } else {
  ;
  do { (step).e_enm = ((&(ac)->ac_multiaddrs)->lh_first); do { if ((((enm)) = ((step)).e_enm) != ((void *)0)) ((step)).e_enm = ((((enm)))->enm_list.le_next); } while ( 0); } while ( 0);
  while (enm != ((void *)0)) {
   h = ether_crc32_le(enm->enm_addrlo, 6) &
       0xFF;
   hashes[(h & 0xE0) >> 5] |= 1 << (h & 0x1F);
   do { if (((enm) = (step).e_enm) != ((void *)0)) (step).e_enm = (((enm))->enm_list.le_next); } while ( 0);
  }
  for (i = 0; i < 8; i++)
   bus_space_write_4(sc->bnx_btag, sc->bnx_bhandle, 0x000014d0 + (i * 4), hashes[i]);
  sort_mode |= (1L<<18);
 }
 if (rx_mode != sc->rx_mode) {
  ;
  sc->rx_mode = rx_mode;
  bus_space_write_4(sc->bnx_btag, sc->bnx_bhandle, 0x000014c8, rx_mode);
 }
 bus_space_write_4(sc->bnx_btag, sc->bnx_bhandle, 0x00001820, 0x0);
 bus_space_write_4(sc->bnx_btag, sc->bnx_bhandle, 0x00001820, sort_mode);
 bus_space_write_4(sc->bnx_btag, sc->bnx_bhandle, 0x00001820, sort_mode | (1L<<31));
}
void
bnx_stats_update(struct bnx_softc *sc)
{
 struct ifnet *ifp = &sc->arpcom.ac_if;
 struct statistics_block *stats;
 ;
 stats = (struct statistics_block *)sc->stats_block;
 ifp->if_data.ifi_collisions = (u_long)stats->stat_EtherStatsCollisions;
 ifp->if_data.ifi_ierrors = (u_long)stats->stat_EtherStatsUndersizePkts +
     (u_long)stats->stat_EtherStatsOverrsizePkts +
     (u_long)stats->stat_IfInMBUFDiscards +
     (u_long)stats->stat_Dot3StatsAlignmentErrors +
     (u_long)stats->stat_Dot3StatsFCSErrors;
 ifp->if_data.ifi_oerrors = (u_long)
     stats->stat_emac_tx_stat_dot3statsinternalmactransmiterrors +
     (u_long)stats->stat_Dot3StatsExcessiveCollisions +
     (u_long)stats->stat_Dot3StatsLateCollisions;
 if (!((((sc)->bnx_chipid) & 0xffff0000) == 0x57060000) &&
     !((((sc)->bnx_chipid) & 0xfffffff0) == 0x57080000))
  ifp->if_data.ifi_oerrors += (u_long) stats->stat_Dot3StatsCarrierSenseErrors;
 sc->stat_IfHCInOctets = ((u_int64_t)stats->stat_IfHCInOctets_hi << 32) +
     (u_int64_t) stats->stat_IfHCInOctets_lo;
 sc->stat_IfHCInBadOctets =
     ((u_int64_t) stats->stat_IfHCInBadOctets_hi << 32) +
     (u_int64_t) stats->stat_IfHCInBadOctets_lo;
 sc->stat_IfHCOutOctets =
     ((u_int64_t) stats->stat_IfHCOutOctets_hi << 32) +
     (u_int64_t) stats->stat_IfHCOutOctets_lo;
 sc->stat_IfHCOutBadOctets =
     ((u_int64_t) stats->stat_IfHCOutBadOctets_hi << 32) +
     (u_int64_t) stats->stat_IfHCOutBadOctets_lo;
 sc->stat_IfHCInUcastPkts =
     ((u_int64_t) stats->stat_IfHCInUcastPkts_hi << 32) +
     (u_int64_t) stats->stat_IfHCInUcastPkts_lo;
 sc->stat_IfHCInMulticastPkts =
     ((u_int64_t) stats->stat_IfHCInMulticastPkts_hi << 32) +
     (u_int64_t) stats->stat_IfHCInMulticastPkts_lo;
 sc->stat_IfHCInBroadcastPkts =
     ((u_int64_t) stats->stat_IfHCInBroadcastPkts_hi << 32) +
     (u_int64_t) stats->stat_IfHCInBroadcastPkts_lo;
 sc->stat_IfHCOutUcastPkts =
    ((u_int64_t) stats->stat_IfHCOutUcastPkts_hi << 32) +
     (u_int64_t) stats->stat_IfHCOutUcastPkts_lo;
 sc->stat_IfHCOutMulticastPkts =
     ((u_int64_t) stats->stat_IfHCOutMulticastPkts_hi << 32) +
     (u_int64_t) stats->stat_IfHCOutMulticastPkts_lo;
 sc->stat_IfHCOutBroadcastPkts =
     ((u_int64_t) stats->stat_IfHCOutBroadcastPkts_hi << 32) +
     (u_int64_t) stats->stat_IfHCOutBroadcastPkts_lo;
 sc->stat_emac_tx_stat_dot3statsinternalmactransmiterrors =
     stats->stat_emac_tx_stat_dot3statsinternalmactransmiterrors;
 sc->stat_Dot3StatsCarrierSenseErrors =
     stats->stat_Dot3StatsCarrierSenseErrors;
 sc->stat_Dot3StatsFCSErrors = stats->stat_Dot3StatsFCSErrors;
 sc->stat_Dot3StatsAlignmentErrors =
     stats->stat_Dot3StatsAlignmentErrors;
 sc->stat_Dot3StatsSingleCollisionFrames =
     stats->stat_Dot3StatsSingleCollisionFrames;
 sc->stat_Dot3StatsMultipleCollisionFrames =
     stats->stat_Dot3StatsMultipleCollisionFrames;
 sc->stat_Dot3StatsDeferredTransmissions =
     stats->stat_Dot3StatsDeferredTransmissions;
 sc->stat_Dot3StatsExcessiveCollisions =
     stats->stat_Dot3StatsExcessiveCollisions;
 sc->stat_Dot3StatsLateCollisions = stats->stat_Dot3StatsLateCollisions;
 sc->stat_EtherStatsCollisions = stats->stat_EtherStatsCollisions;
 sc->stat_EtherStatsFragments = stats->stat_EtherStatsFragments;
 sc->stat_EtherStatsJabbers = stats->stat_EtherStatsJabbers;
 sc->stat_EtherStatsUndersizePkts = stats->stat_EtherStatsUndersizePkts;
 sc->stat_EtherStatsOverrsizePkts = stats->stat_EtherStatsOverrsizePkts;
 sc->stat_EtherStatsPktsRx64Octets =
     stats->stat_EtherStatsPktsRx64Octets;
 sc->stat_EtherStatsPktsRx65Octetsto127Octets =
     stats->stat_EtherStatsPktsRx65Octetsto127Octets;
 sc->stat_EtherStatsPktsRx128Octetsto255Octets =
     stats->stat_EtherStatsPktsRx128Octetsto255Octets;
 sc->stat_EtherStatsPktsRx256Octetsto511Octets =
     stats->stat_EtherStatsPktsRx256Octetsto511Octets;
 sc->stat_EtherStatsPktsRx512Octetsto1023Octets =
     stats->stat_EtherStatsPktsRx512Octetsto1023Octets;
 sc->stat_EtherStatsPktsRx1024Octetsto1522Octets =
     stats->stat_EtherStatsPktsRx1024Octetsto1522Octets;
 sc->stat_EtherStatsPktsRx1523Octetsto9022Octets =
     stats->stat_EtherStatsPktsRx1523Octetsto9022Octets;
 sc->stat_EtherStatsPktsTx64Octets =
     stats->stat_EtherStatsPktsTx64Octets;
 sc->stat_EtherStatsPktsTx65Octetsto127Octets =
     stats->stat_EtherStatsPktsTx65Octetsto127Octets;
 sc->stat_EtherStatsPktsTx128Octetsto255Octets =
     stats->stat_EtherStatsPktsTx128Octetsto255Octets;
 sc->stat_EtherStatsPktsTx256Octetsto511Octets =
     stats->stat_EtherStatsPktsTx256Octetsto511Octets;
 sc->stat_EtherStatsPktsTx512Octetsto1023Octets =
     stats->stat_EtherStatsPktsTx512Octetsto1023Octets;
 sc->stat_EtherStatsPktsTx1024Octetsto1522Octets =
     stats->stat_EtherStatsPktsTx1024Octetsto1522Octets;
 sc->stat_EtherStatsPktsTx1523Octetsto9022Octets =
     stats->stat_EtherStatsPktsTx1523Octetsto9022Octets;
 sc->stat_XonPauseFramesReceived = stats->stat_XonPauseFramesReceived;
 sc->stat_XoffPauseFramesReceived = stats->stat_XoffPauseFramesReceived;
 sc->stat_OutXonSent = stats->stat_OutXonSent;
 sc->stat_OutXoffSent = stats->stat_OutXoffSent;
 sc->stat_FlowControlDone = stats->stat_FlowControlDone;
 sc->stat_MacControlFramesReceived =
     stats->stat_MacControlFramesReceived;
 sc->stat_XoffStateEntered = stats->stat_XoffStateEntered;
 sc->stat_IfInFramesL2FilterDiscards =
     stats->stat_IfInFramesL2FilterDiscards;
 sc->stat_IfInRuleCheckerDiscards = stats->stat_IfInRuleCheckerDiscards;
 sc->stat_IfInFTQDiscards = stats->stat_IfInFTQDiscards;
 sc->stat_IfInMBUFDiscards = stats->stat_IfInMBUFDiscards;
 sc->stat_IfInRuleCheckerP4Hit = stats->stat_IfInRuleCheckerP4Hit;
 sc->stat_CatchupInRuleCheckerDiscards =
     stats->stat_CatchupInRuleCheckerDiscards;
 sc->stat_CatchupInFTQDiscards = stats->stat_CatchupInFTQDiscards;
 sc->stat_CatchupInMBUFDiscards = stats->stat_CatchupInMBUFDiscards;
 sc->stat_CatchupInRuleCheckerP4Hit =
     stats->stat_CatchupInRuleCheckerP4Hit;
 ;
}
void
bnx_tick(void *xsc)
{
 struct bnx_softc *sc = xsc;
 struct ifnet *ifp = &sc->arpcom.ac_if;
 struct mii_data *mii = ((void *)0);
 u_int32_t msg;
 msg = (u_int32_t)++sc->bnx_fw_drv_pulse_wr_seq;
 bnx_reg_wr_ind(sc, sc->bnx_shmem_base + 0x00000010, msg);
 bnx_stats_update(sc);
 timeout_add_sec(&sc->bnx_timeout, 1);
 if (sc->bnx_link)
  goto bnx_tick_exit;
 mii = &sc->bnx_mii;
 mii_tick(mii);
 if (!sc->bnx_link && mii->mii_media_status & 0x0000000000000002ULL &&
     ((mii->mii_media_active) & 0x00000000000000ffULL) != 2ULL) {
  sc->bnx_link++;
  if (!(((&ifp->if_snd)->ifq_len) == 0))
   ifq_start(&ifp->if_snd);
 }
bnx_tick_exit:
 return;
}
