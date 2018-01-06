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
struct winsize {
 unsigned short ws_row;
 unsigned short ws_col;
 unsigned short ws_xpixel;
 unsigned short ws_ypixel;
};
struct tstamps {
 int ts_set;
 int ts_clr;
};
struct syslog_data {
 int log_stat;
 const char *log_tag;
 int log_fac;
 int log_mask;
};
void logpri(int);
void log(int, const char *, ...)
    __attribute__((__format__(__kprintf__,2,3)));
int addlog(const char *, ...)
    __attribute__((__format__(__kprintf__,1,2)));
void logwakeup(void);
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
struct cardslot_event;
struct cardslot_attach_args {
 char *caa_busname;
 int caa_slot;
 struct cbslot_attach_args *caa_cb_attach;
 struct pcmciabus_attach_args *caa_16_attach;
 struct pcic_handle *caa_ph;
};
struct cardslot_softc {
 struct device sc_dev;
 int sc_slot;
 int sc_status;
 struct cardbus_softc *sc_cb_softc;
 struct pcmcia_softc *sc_16_softc;
 struct { struct cardslot_event *sqh_first; struct cardslot_event **sqh_last; } sc_events;
 struct task sc_event_task;
};
struct cardslot_event {
 struct { struct cardslot_event *sqe_next; } ce_q;
 int ce_type;
};
typedef struct cardslot_softc *cardslot_t;
void cardslot_event_throw(cardslot_t, int);
struct extent;
struct rbustag {
 bus_space_tag_t rb_bt;
 struct extent *rb_ext;
 bus_addr_t rb_start;
 bus_addr_t rb_end;
 bus_addr_t rb_offset;
 int rb_flags;
 void *rb_md;
};
typedef struct rbustag *rbus_tag_t;
int rbus_space_alloc(rbus_tag_t, bus_addr_t, bus_size_t, bus_addr_t,
     bus_addr_t, int, bus_addr_t *, bus_space_handle_t *);
int rbus_space_alloc_subregion(rbus_tag_t, bus_addr_t, bus_addr_t,
     bus_addr_t, bus_size_t, bus_addr_t, bus_addr_t, int,
     bus_addr_t *, bus_space_handle_t *);
int rbus_space_free(rbus_tag_t, bus_space_handle_t, bus_size_t,
     bus_addr_t *);
rbus_tag_t rbus_new_body(bus_space_tag_t, struct extent *,
        bus_addr_t, bus_addr_t, int);
rbus_tag_t rbus_new_root_delegate(bus_space_tag_t, bus_addr_t, bus_size_t);
rbus_tag_t rbus_new_root_share(bus_space_tag_t, struct extent *,
      bus_addr_t, bus_size_t);
struct pci_attach_args;
rbus_tag_t rbus_pccbb_parent_io(struct device *, struct pci_attach_args *);
rbus_tag_t rbus_pccbb_parent_mem(struct device *, struct pci_attach_args *);
void pccbb_attach_hook(struct device *, struct device *,
 struct pci_attach_args *);
typedef void *cardbus_chipset_tag_t;
typedef int cardbus_intr_handle_t;
typedef struct cardbus_functions {
 int (*cardbus_space_alloc)(cardbus_chipset_tag_t, rbus_tag_t,
     bus_addr_t, bus_size_t, bus_addr_t, bus_size_t, int, bus_addr_t *,
     bus_space_handle_t *);
 int (*cardbus_space_free)(cardbus_chipset_tag_t, rbus_tag_t,
     bus_space_handle_t, bus_size_t);
 void *(*cardbus_intr_establish)(cardbus_chipset_tag_t, int, int,
     int (*)(void *), void *, const char *);
 void (*cardbus_intr_disestablish)(cardbus_chipset_tag_t, void *);
 int (*cardbus_ctrl)(cardbus_chipset_tag_t, int);
 int (*cardbus_power)(cardbus_chipset_tag_t, int);
} cardbus_function_t, *cardbus_function_tag_t;
struct cbslot_attach_args {
 char *cba_busname;
 bus_space_tag_t cba_iot;
 bus_space_tag_t cba_memt;
 bus_dma_tag_t cba_dmat;
 int cba_bus;
 cardbus_chipset_tag_t cba_cc;
 pci_chipset_tag_t cba_pc;
 cardbus_function_tag_t cba_cf;
 int cba_intrline;
 rbus_tag_t cba_rbus_iot;
 rbus_tag_t cba_rbus_memt;
 int cba_cacheline;
 int cba_lattimer;
};
struct cardbus_devfunc;
struct cardbus_softc {
 struct device sc_dev;
 int sc_bus;
 int sc_device;
 int sc_intrline;
 bus_space_tag_t sc_iot;
 bus_space_tag_t sc_memt;
 bus_dma_tag_t sc_dmat;
 cardbus_chipset_tag_t sc_cc;
 pci_chipset_tag_t sc_pc;
 cardbus_function_tag_t sc_cf;
 rbus_tag_t sc_rbus_iot;
 rbus_tag_t sc_rbus_memt;
 int sc_cacheline;
 int sc_lattimer;
 int sc_volt;
 int sc_poweron_func;
 struct cardbus_devfunc *sc_funcs[8];
};
typedef struct cardbus_devfunc {
 cardbus_chipset_tag_t ct_cc;
 cardbus_function_tag_t ct_cf;
 struct cardbus_softc *ct_sc;
 int ct_bus;
 int ct_dev;
 int ct_func;
 rbus_tag_t ct_rbus_iot;
 rbus_tag_t ct_rbus_memt;
 u_int32_t ct_lc;
 struct device *ct_device;
 struct cardbus_devfunc *ct_next;
} *cardbus_devfunc_t;
struct cardbus_cis_info {
 int32_t manufacturer;
 int32_t product;
 char cis1_info_buf[256];
 char *cis1_info[4];
 struct cb_bar_info {
  unsigned int flags;
  unsigned int size;
 } bar[7];
 unsigned int funcid;
 union {
  struct {
   int uart_type;
   int uart_present;
  } serial;
  struct {
   char netid[6];
   char netid_present;
   char __filler;
  } network;
 } funce;
};
struct cardbus_attach_args {
 int ca_unit;
 cardbus_devfunc_t ca_ct;
 pci_chipset_tag_t ca_pc;
 bus_space_tag_t ca_iot;
 bus_space_tag_t ca_memt;
 bus_dma_tag_t ca_dmat;
 u_int ca_bus;
 u_int ca_device;
 u_int ca_function;
 pcitag_t ca_tag;
 pcireg_t ca_id;
 pcireg_t ca_class;
 pci_intr_line_t ca_intrline;
 rbus_tag_t ca_rbus_iot;
 rbus_tag_t ca_rbus_memt;
 struct cardbus_cis_info ca_cis;
};
int cardbus_attach_card(struct cardbus_softc *);
void cardbus_detach_card(struct cardbus_softc *);
void *cardbus_intr_establish(cardbus_chipset_tag_t, cardbus_function_tag_t,
     cardbus_intr_handle_t irq, int level, int (*func) (void *),
     void *arg, const char *);
void cardbus_intr_disestablish(cardbus_chipset_tag_t,
     cardbus_function_tag_t, void *handler);
int cardbus_mapreg_map(struct cardbus_softc *, int, int, pcireg_t,
     int, bus_space_tag_t *, bus_space_handle_t *, bus_addr_t *,
     bus_size_t *);
int cardbus_mapreg_unmap(struct cardbus_softc *, int, int,
     bus_space_tag_t, bus_space_handle_t, bus_size_t);
int cardbus_function_enable(struct cardbus_softc *, int function);
int cardbus_function_disable(struct cardbus_softc *, int function);
int cardbus_matchbyid(struct cardbus_attach_args *,
     const struct pci_matchid *, int);
struct pcmcia_function;
struct pcmcia_mem_handle;
struct pcmcia_io_handle;
typedef struct pcmcia_chip_functions *pcmcia_chipset_tag_t;
typedef void *pcmcia_chipset_handle_t;
typedef int pcmcia_mem_handle_t;
struct pcmcia_chip_functions {
 int (*mem_alloc)(pcmcia_chipset_handle_t, bus_size_t,
      struct pcmcia_mem_handle *);
 void (*mem_free)(pcmcia_chipset_handle_t,
      struct pcmcia_mem_handle *);
 int (*mem_map)(pcmcia_chipset_handle_t, int, bus_addr_t,
      bus_size_t, struct pcmcia_mem_handle *,
      bus_size_t *, int *);
 void (*mem_unmap)(pcmcia_chipset_handle_t, int);
 int (*io_alloc)(pcmcia_chipset_handle_t, bus_addr_t,
      bus_size_t, bus_size_t, struct pcmcia_io_handle *);
 void (*io_free)(pcmcia_chipset_handle_t,
      struct pcmcia_io_handle *);
 int (*io_map)(pcmcia_chipset_handle_t, int, bus_addr_t,
      bus_size_t, struct pcmcia_io_handle *, int *);
 void (*io_unmap)(pcmcia_chipset_handle_t, int);
 void *(*intr_establish)(pcmcia_chipset_handle_t,
      struct pcmcia_function *, int, int (*)(void *), void *, char *);
 void (*intr_disestablish)(pcmcia_chipset_handle_t, void *);
 const char *(*intr_string)(pcmcia_chipset_handle_t, void *);
 void (*socket_enable)(pcmcia_chipset_handle_t);
 void (*socket_disable)(pcmcia_chipset_handle_t);
 int (*card_detect)(pcmcia_chipset_handle_t);
};
struct pcmciabus_attach_args {
 char *paa_busname;
 pcmcia_chipset_tag_t pct;
 pcmcia_chipset_handle_t pch;
 bus_addr_t iobase;
 bus_size_t iosize;
};
int pcmcia_card_attach(struct device *);
void pcmcia_card_detach(struct device *, int);
void pcmcia_card_deactivate(struct device *);
int pcmcia_card_gettype(struct device *);
extern int pcmcia_verbose;
struct pcmcia_io_handle {
 bus_space_tag_t iot;
 bus_space_handle_t ioh;
 bus_addr_t addr;
 bus_size_t size;
 int flags;
};
struct pcmcia_mem_handle {
 bus_space_tag_t memt;
 bus_space_handle_t memh;
 bus_addr_t addr;
 bus_size_t size;
 pcmcia_mem_handle_t mhandle;
 bus_size_t realsize;
};
struct pcmcia_config_entry {
 int number;
 u_int32_t flags;
 int iftype;
 int num_iospace;
 u_long iomask;
 struct {
  u_long length;
  u_long start;
 } iospace[4];
 u_int16_t irqmask;
 int num_memspace;
 struct {
  u_long length;
  u_long cardaddr;
  u_long hostaddr;
 } memspace[2];
 int maxtwins;
 struct { struct pcmcia_config_entry *sqe_next; } cfe_list;
};
struct pcmcia_function {
 int number;
 int function;
 int last_config_index;
 u_long ccr_base;
 u_long ccr_mask;
 struct { struct pcmcia_config_entry *sqh_first; struct pcmcia_config_entry **sqh_last; } cfe_head;
 struct { struct pcmcia_function *sqe_next; } pf_list;
 struct pcmcia_softc *sc;
 struct device *child;
 struct pcmcia_config_entry *cfe;
 struct pcmcia_mem_handle pf_pcmh;
 bus_size_t pf_ccr_offset;
 int pf_ccr_window;
 bus_addr_t pf_mfc_iobase;
 bus_addr_t pf_mfc_iomax;
 int (*ih_fct)(void *);
 void *ih_arg;
 int ih_ipl;
 int pf_flags;
};
struct pcmcia_card {
 int cis1_major;
 int cis1_minor;
 char cis1_info_buf[256];
 char *cis1_info[4];
 u_int16_t manufacturer;
 u_int16_t product;
 u_int16_t error;
 struct { struct pcmcia_function *sqh_first; struct pcmcia_function **sqh_last; } pf_head;
};
struct pcmcia_softc {
 struct device dev;
 pcmcia_chipset_tag_t pct;
 pcmcia_chipset_handle_t pch;
 struct pcmcia_card card;
 void *ih;
 int sc_enabled_count;
 bus_addr_t iobase;
 bus_size_t iosize;
};
struct pcmcia_cis_quirk {
 u_int16_t manufacturer;
 u_int16_t product;
 char *cis1_info[4];
 struct pcmcia_function *pf;
 struct pcmcia_config_entry *cfe;
};
struct pcmcia_attach_args {
 u_int16_t manufacturer;
 u_int16_t product;
 struct pcmcia_card *card;
 struct pcmcia_function *pf;
};
struct pcmcia_tuple {
 unsigned int code;
 unsigned int length;
 unsigned int addrshift;
 unsigned int flags;
 bus_size_t indirect_ptr;
 bus_size_t ptr;
 bus_space_tag_t memt;
 bus_space_handle_t memh;
};
void pcmcia_read_cis(struct pcmcia_softc *);
void pcmcia_check_cis_quirks(struct pcmcia_softc *);
void pcmcia_print_cis(struct pcmcia_softc *);
int pcmcia_scan_cis(struct device * dev,
     int (*) (struct pcmcia_tuple *, void *), void *);
uint8_t pcmcia_cis_read_1(struct pcmcia_tuple *, bus_size_t);
int pcmcia_ccr_read(struct pcmcia_function *, int);
void pcmcia_ccr_write(struct pcmcia_function *, int, int);
void pcmcia_function_init(struct pcmcia_function *,
     struct pcmcia_config_entry *);
int pcmcia_function_enable(struct pcmcia_function *);
void pcmcia_function_disable(struct pcmcia_function *);
int pcmcia_io_map(struct pcmcia_function *, int, bus_addr_t,
     bus_size_t, struct pcmcia_io_handle *, int *);
void *pcmcia_intr_establish(struct pcmcia_function *, int,
     int (*) (void *), void *, char *);
void pcmcia_intr_disestablish(struct pcmcia_function *, void *);
const char *pcmcia_intr_string(struct pcmcia_function *, void *);
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
struct proc;
struct pcic_event {
 struct { struct pcic_event *sqe_next; } pe_q;
 int pe_type;
};
struct pcic_handle {
 struct device *ph_parent;
 bus_space_tag_t ph_bus_t;
 bus_space_handle_t ph_bus_h;
 u_int8_t (*ph_read)(struct pcic_handle *, int);
 void (*ph_write)(struct pcic_handle *, int, int);
 int vendor;
 int sock;
 int flags;
 int laststate;
 int memalloc;
 struct {
  bus_addr_t addr;
  bus_size_t size;
  long offset;
  int kind;
 } mem[5];
 int ioalloc;
 struct {
  bus_addr_t addr;
  bus_size_t size;
  int width;
 } io[2];
 int ih_irq;
 struct device *pcmcia;
 int shutdown;
 struct proc *event_thread;
 struct { struct pcic_event *sqh_first; struct pcic_event **sqh_last; } events;
};
struct pcic_ranges {
 u_short start;
 u_short len;
};
struct pcic_softc {
 struct device dev;
 bus_space_tag_t memt;
 bus_space_handle_t memh;
 bus_space_tag_t iot;
 bus_space_handle_t ioh;
 void *intr_est;
 pcmcia_chipset_tag_t pct;
 int subregionmask;
 bus_addr_t membase;
 bus_addr_t iobase;
 bus_addr_t iosize;
 struct pcic_ranges *ranges;
 int irq;
 void *ih;
 struct timeout poll_timeout;
 int poll_established;
 struct pcic_handle handle[4];
};
int pcic_ident_ok(int);
int pcic_vendor(struct pcic_handle *);
void pcic_attach(struct pcic_softc *);
void pcic_attach_sockets(struct pcic_softc *);
int pcic_intr(void *arg);
void pcic_poll_intr(void *arg);
int pcic_chip_mem_alloc(pcmcia_chipset_handle_t, bus_size_t,
     struct pcmcia_mem_handle *);
void pcic_chip_mem_free(pcmcia_chipset_handle_t,
     struct pcmcia_mem_handle *);
int pcic_chip_mem_map(pcmcia_chipset_handle_t, int, bus_addr_t,
     bus_size_t, struct pcmcia_mem_handle *, bus_size_t *, int *);
void pcic_chip_mem_unmap(pcmcia_chipset_handle_t, int);
int pcic_chip_io_alloc(pcmcia_chipset_handle_t, bus_addr_t,
     bus_size_t, bus_size_t, struct pcmcia_io_handle *);
void pcic_chip_io_free(pcmcia_chipset_handle_t,
     struct pcmcia_io_handle *);
int pcic_chip_io_map(pcmcia_chipset_handle_t, int, bus_addr_t,
     bus_size_t, struct pcmcia_io_handle *, int *);
void pcic_chip_io_unmap(pcmcia_chipset_handle_t, int);
void pcic_chip_socket_enable(pcmcia_chipset_handle_t);
void pcic_chip_socket_disable(pcmcia_chipset_handle_t);
void pcic_power(int, void *);
struct pccbb_softc;
struct pccbb_intrhand_list;
struct cbb_pcic_handle {
 struct device *ph_parent;
 bus_space_tag_t ph_base_t;
 bus_space_handle_t ph_base_h;
 u_int8_t (*ph_read)(struct cbb_pcic_handle *, int);
 void (*ph_write)(struct cbb_pcic_handle *, int, u_int8_t);
 int sock;
 int vendor;
 int flags;
 int memalloc;
 struct {
  bus_addr_t addr;
  bus_size_t size;
  long offset;
  int kind;
 } mem[5];
 int ioalloc;
 struct {
  bus_addr_t addr;
  bus_size_t size;
  int width;
 } io[2];
 int ih_irq;
 struct device *pcmcia;
 int shutdown;
};
struct pccbb_win_chain {
 bus_addr_t wc_start;
 bus_addr_t wc_end;
 int wc_flags;
 bus_space_handle_t wc_handle;
 struct { struct pccbb_win_chain *tqe_next; struct pccbb_win_chain **tqe_prev; } wc_list;
};
struct pccbb_win_chain_head { struct pccbb_win_chain *tqh_first; struct pccbb_win_chain **tqh_last; };
struct pccbb_softc {
 struct device sc_dev;
 bus_space_tag_t sc_iot;
 bus_space_tag_t sc_memt;
 bus_dma_tag_t sc_dmat;
 rbus_tag_t sc_rbus_iot;
 rbus_tag_t sc_rbus_memt;
 bus_space_tag_t sc_base_memt;
 bus_space_handle_t sc_base_memh;
 struct timeout sc_ins_tmo;
 void *sc_ih;
 int sc_intrline;
 pcitag_t sc_intrtag;
 pci_intr_pin_t sc_intrpin;
 int sc_function;
 u_int32_t sc_flags;
 pci_chipset_tag_t sc_pc;
 pcitag_t sc_tag;
 pcireg_t sc_id;
 int sc_chipset;
 int sc_ints_on;
 pcireg_t sc_csr;
 pcireg_t sc_bhlcr;
 pcireg_t sc_int;
 pcireg_t sc_sockbase;
 pcireg_t sc_busnum;
 pcireg_t sc_sysctrl;
 pcireg_t sc_cbctrl;
 pcireg_t sc_mfunc;
 struct cardslot_softc *sc_csc;
 struct pccbb_win_chain_head sc_memwindow;
 struct pccbb_win_chain_head sc_iowindow;
 pcireg_t sc_membase[2];
 pcireg_t sc_memlimit[2];
 pcireg_t sc_iobase[2];
 pcireg_t sc_iolimit[2];
 struct pcic_handle sc_pcmcia_h;
 pcmcia_chipset_tag_t sc_pct;
 int sc_pcmcia_flags;
 struct proc *sc_event_thread;
 struct { struct pcic_event *sqh_first; struct pcic_event **sqh_last; } sc_events;
 struct pccbb_intrhand_list *sc_pil;
 int sc_pil_intr_enable;
};
struct pccbb_intrhand_list {
 int (*pil_func)(void *);
 void *pil_arg;
 int pil_level;
 struct evcount pil_count;
 struct pccbb_intrhand_list *pil_next;
};
struct cfdriver cbb_cd = {
 ((void *)0), "cbb", DV_DULL
};
int pcicbbmatch(struct device *, void *, void *);
void pccbbattach(struct device *, struct device *, void *);
int pccbbactivate(struct device *, int);
int pccbbintr(void *);
void pccbb_shutdown(void *);
void pci113x_insert(void *);
int pccbbintr_function(struct pccbb_softc *);
int pccbb_checksockstat(struct pccbb_softc *);
int pccbb_detect_card(struct pccbb_softc *);
void pccbb_pcmcia_write(struct pcic_handle *, int, int);
u_int8_t pccbb_pcmcia_read(struct pcic_handle *, int);
int cb_reset(struct pccbb_softc *);
int cb_detect_voltage(struct pccbb_softc *);
int cbbprint(void *, const char *);
int cb_chipset(u_int32_t, int *);
void pccbb_pcmcia_attach_setup(struct pccbb_softc *,
    struct pcmciabus_attach_args *);
int pccbb_ctrl(cardbus_chipset_tag_t, int);
int pccbb_power(cardbus_chipset_tag_t, int);
int pccbb_cardenable(struct pccbb_softc * sc, int function);
void *pccbb_intr_establish(struct pccbb_softc *, int irq, int level,
    int (*ih) (void *), void *sc, const char *);
void pccbb_intr_disestablish(struct pccbb_softc *, void *ih);
void *pccbb_cb_intr_establish(cardbus_chipset_tag_t, int irq, int level,
    int (*ih) (void *), void *sc, const char *);
void pccbb_cb_intr_disestablish(cardbus_chipset_tag_t ct, void *ih);
void pccbb_legacy_disable(struct pccbb_softc *sc);
void pccbb_chipinit(struct pccbb_softc *);
int pccbb_pcmcia_mem_alloc(pcmcia_chipset_handle_t, bus_size_t,
    struct pcmcia_mem_handle *);
void pccbb_pcmcia_mem_free(pcmcia_chipset_handle_t,
    struct pcmcia_mem_handle *);
int pccbb_pcmcia_mem_map(pcmcia_chipset_handle_t, int, bus_addr_t,
    bus_size_t, struct pcmcia_mem_handle *, bus_size_t *, int *);
void pccbb_pcmcia_mem_unmap(pcmcia_chipset_handle_t, int);
int pccbb_pcmcia_io_alloc(pcmcia_chipset_handle_t, bus_addr_t,
    bus_size_t, bus_size_t, struct pcmcia_io_handle *);
void pccbb_pcmcia_io_free(pcmcia_chipset_handle_t,
    struct pcmcia_io_handle *);
int pccbb_pcmcia_io_map(pcmcia_chipset_handle_t, int, bus_addr_t,
    bus_size_t, struct pcmcia_io_handle *, int *);
void pccbb_pcmcia_io_unmap(pcmcia_chipset_handle_t, int);
void *pccbb_pcmcia_intr_establish(pcmcia_chipset_handle_t,
    struct pcmcia_function *, int, int (*)(void *), void *, char *);
void pccbb_pcmcia_intr_disestablish(pcmcia_chipset_handle_t, void *);
const char *pccbb_pcmcia_intr_string(pcmcia_chipset_handle_t, void *);
void pccbb_pcmcia_socket_enable(pcmcia_chipset_handle_t);
void pccbb_pcmcia_socket_disable(pcmcia_chipset_handle_t);
int pccbb_pcmcia_card_detect(pcmcia_chipset_handle_t pch);
void pccbb_pcmcia_do_io_map(struct pcic_handle *, int);
void pccbb_pcmcia_wait_ready(struct pcic_handle *);
void pccbb_pcmcia_do_mem_map(struct pcic_handle *, int);
int pccbb_rbus_cb_space_alloc(cardbus_chipset_tag_t, rbus_tag_t,
    bus_addr_t addr, bus_size_t size, bus_addr_t mask, bus_size_t align,
    int flags, bus_addr_t * addrp, bus_space_handle_t * bshp);
int pccbb_rbus_cb_space_free(cardbus_chipset_tag_t, rbus_tag_t,
    bus_space_handle_t, bus_size_t);
int pccbb_open_win(struct pccbb_softc *, bus_space_tag_t,
    bus_addr_t, bus_size_t, bus_space_handle_t, int flags);
int pccbb_close_win(struct pccbb_softc *, bus_space_tag_t,
    bus_space_handle_t, bus_size_t);
int pccbb_winlist_insert(struct pccbb_win_chain_head *, bus_addr_t,
    bus_size_t, bus_space_handle_t, int);
int pccbb_winlist_delete(struct pccbb_win_chain_head *,
    bus_space_handle_t, bus_size_t);
void pccbb_winset(bus_addr_t align, struct pccbb_softc *,
    bus_space_tag_t);
void pccbb_winlist_show(struct pccbb_win_chain *);
void pccbb_pci_callback(struct device *);
struct cfattach cbb_pci_ca = {
 sizeof(struct pccbb_softc), pcicbbmatch, pccbbattach, ((void *)0),
 pccbbactivate
};
static struct pcmcia_chip_functions pccbb_pcmcia_funcs = {
 pccbb_pcmcia_mem_alloc,
 pccbb_pcmcia_mem_free,
 pccbb_pcmcia_mem_map,
 pccbb_pcmcia_mem_unmap,
 pccbb_pcmcia_io_alloc,
 pccbb_pcmcia_io_free,
 pccbb_pcmcia_io_map,
 pccbb_pcmcia_io_unmap,
 pccbb_pcmcia_intr_establish,
 pccbb_pcmcia_intr_disestablish,
 pccbb_pcmcia_intr_string,
 pccbb_pcmcia_socket_enable,
 pccbb_pcmcia_socket_disable,
 pccbb_pcmcia_card_detect
};
static struct cardbus_functions pccbb_funcs = {
 pccbb_rbus_cb_space_alloc,
 pccbb_rbus_cb_space_free,
 pccbb_cb_intr_establish,
 pccbb_cb_intr_disestablish,
 pccbb_ctrl,
 pccbb_power,
};
static inline void
delay_ms(int millis, void *param)
{
 if (cold)
  delay(millis * 1000);
 else
  tsleep(param, 32, "pccbb", (((2)>(hz * millis / 1000))?(2):(hz * millis / 1000)));
}
int
pcicbbmatch(parent, match, aux)
 struct device *parent;
 void *match;
 void *aux;
{
 struct pci_attach_args *pa = (struct pci_attach_args *)aux;
 if ((((pa->pa_class) >> 24) & 0xff) == 0x06 &&
     (((pa->pa_class) >> 16) & 0xff) == 0x07 &&
     (((pa->pa_class) >> 8) & 0xff) == 0) {
  return 1;
 }
 return 0;
}
struct yenta_chipinfo {
 pcireg_t yc_id;
 int yc_chiptype;
 int yc_flags;
} yc_chipsets[] = {
 { (((0x104c) << 0) | ((0xac12) << 16)), 1,
     0x01 | 0x02},
 { (((0x104c) << 0) | ((0xac15) << 16)), 1,
     0x01 | 0x02},
 { (((0x104c) << 0) | ((0xac16) << 16)), 9,
     0x01 | 0x02},
 { (((0x104c) << 0) | ((0xac17) << 16)), 2,
     0x01 | 0x02},
 { (((0x104c) << 0) | ((0xac19) << 16)), 2,
     0x01 | 0x02},
 { (((0x104c) << 0) | ((0xac1c) << 16)), 2,
     0x01 | 0x02},
 { (((0x104c) << 0) | ((0xac1d) << 16)), 9,
     0x01 | 0x02},
 { (((0x104c) << 0) | ((0xac1f) << 16)), 9,
     0x01 | 0x02},
 { (((0x104c) << 0) | ((0xac1e) << 16)), 2,
     0x01 | 0x02},
 { (((0x104c) << 0) | ((0xac50) << 16)), 2,
     0x01 | 0x02},
 { (((0x104c) << 0) | ((0xac51) << 16)), 2,
     0x01 | 0x02},
 { (((0x104c) << 0) | ((0xac1b) << 16)), 9,
     0x01 | 0x02},
 { (((0x104c) << 0) | ((0xac52) << 16)), 2,
     0x01 | 0x02},
 { (((0x104c) << 0) | ((0xac56) << 16)), 2,
     0x01 | 0x02},
 { (((0x104c) << 0) | ((0x8031) << 16)), 2,
     0x01 | 0x02},
 { (((0x1180) << 0) | ((0x0475) << 16)), 3,
     0x02},
 { (((0x1180) << 0) | ((0x0476) << 16)), 3,
     0x02},
 { (((0x1180) << 0) | ((0x0477) << 16)), 3,
     0x02},
 { (((0x1180) << 0) | ((0x0478) << 16)), 3,
     0x02},
 { (((0x1180) << 0) | ((0x0465) << 16)), 4,
     0x02},
 { (((0x1180) << 0) | ((0x0466) << 16)), 4,
     0x02},
 { (((0x1179) << 0) | ((0x0603) << 16)),
     5, 0x02},
 { (((0x1179) << 0) | ((0x060a) << 16)),
     6, 0x02},
 { (((0x1179) << 0) | ((0x060f) << 16)),
     7, 0x02},
 { (((0x1179) << 0) | ((0x0617) << 16)),
     7, 0x02},
 { (((0x1013) << 0) | ((0x1110) << 16)),
     8, 0x02},
 { (((0x1013) << 0) | ((0x1113) << 16)),
     8, 0x02},
 { (((0x1217) << 0) | ((0x6729) << 16)),
     10, 0x02},
 { (((0x1217) << 0) | ((0x673a) << 16)),
     10, 0x02},
 { (((0x1217) << 0) | ((0x6872) << 16)),
     10, 0x02},
 { (((0x1217) << 0) | ((0x6832) << 16)),
     10, 0x02},
 { (((0x1217) << 0) | ((0x6836) << 16)),
     10, 0x02},
 { 0 , 0, 0x02},
};
int
cb_chipset(pci_id, flagp)
 u_int32_t pci_id;
 int *flagp;
{
 struct yenta_chipinfo *yc;
 for (yc = yc_chipsets; yc < yc_chipsets +
     sizeof(yc_chipsets) / sizeof(yc_chipsets[0]) - 1; yc++)
  if (pci_id == yc->yc_id)
   break;
 if (flagp != ((void *)0))
  *flagp = yc->yc_flags;
 return (yc->yc_chiptype);
}
void
pccbb_shutdown(void *arg)
{
 struct pccbb_softc *sc = arg;
 pcireg_t command;
 ;
 pccbb_power((cardbus_chipset_tag_t)sc, 0x0004 | 0x0040);
 bus_space_write_4(sc->sc_base_memt, sc->sc_base_memh, 0x04,
     0);
 command = pci_conf_read(sc->sc_pc, sc->sc_tag, 0x04);
 command &= ~(0x00000001 | 0x00000002 |
     0x00000004);
 pci_conf_write(sc->sc_pc, sc->sc_tag, 0x04, command);
}
void
pccbbattach(struct device *parent, struct device *self, void *aux)
{
 struct pccbb_softc *sc = (void *)self;
 struct pci_attach_args *pa = aux;
 pci_chipset_tag_t pc = pa->pa_pc;
 pci_intr_handle_t ih;
 const char *intrstr = ((void *)0);
 u_long busnum;
 int flags;
 pccbb_attach_hook(parent, self, pa);
 sc->sc_chipset = cb_chipset(pa->pa_id, &flags);
 sc->sc_id = pa->pa_id;
 do { (&sc->sc_memwindow)->tqh_first = ((void *)0); (&sc->sc_memwindow)->tqh_last = &(&sc->sc_memwindow)->tqh_first; } while (0);
 do { (&sc->sc_iowindow)->tqh_first = ((void *)0); (&sc->sc_iowindow)->tqh_last = &(&sc->sc_iowindow)->tqh_first; } while (0);
 sc->sc_rbus_iot = rbus_pccbb_parent_io(self, pa);
 sc->sc_rbus_memt = rbus_pccbb_parent_mem(self, pa);
 if (pci_mapreg_map(pa, 0x10, 0x00000000, 0,
     &sc->sc_base_memt, &sc->sc_base_memh, ((void *)0), ((void *)0), 0)) {
  printf("can't map registers\n");
  return;
 }
 sc->sc_busnum = pci_conf_read(pc, pa->pa_tag, 0x18);
 sc->sc_pc = pc;
 sc->sc_iot = pa->pa_iot;
 sc->sc_memt = pa->pa_memt;
 sc->sc_dmat = pa->pa_dmat;
 sc->sc_tag = pa->pa_tag;
 sc->sc_function = pa->pa_function;
 sc->sc_intrtag = pa->pa_intrtag;
 sc->sc_intrpin = pa->pa_intrpin;
 sc->sc_pcmcia_flags = flags;
 if (pci_intr_map(pa, &ih)) {
  printf(": couldn't map interrupt\n");
  return;
 }
 intrstr = pci_intr_string(pc, ih);
 sc->sc_intrline = pci_intr_line(pc, ih);
 sc->sc_ih = pci_intr_establish(pc, ih, 5, pccbbintr, sc,
     sc->sc_dev.dv_xname);
 if (sc->sc_ih == ((void *)0)) {
  printf(": couldn't establish interrupt");
  if (intrstr != ((void *)0)) {
   printf(" at %s", intrstr);
  }
  printf("\n");
  return;
 }
 printf(": %s", intrstr);
 if ((sc->sc_busnum & 0x00ffff00) == 0 && pa->pa_busex &&
     extent_alloc_subregion((pa->pa_busex), (pa->pa_busex)->ex_start, (pa->pa_busex)->ex_end, (1), (1), (0), (0), (0x0000), (&busnum)) == 0) {
  sc->sc_busnum |= (busnum << 8);
  sc->sc_busnum |= (busnum << 16);
  pci_conf_write(pc, pa->pa_tag, 0x18, sc->sc_busnum);
 }
 if (((sc->sc_busnum >> 8) & 0xff) == 0) {
  printf(", CardBus support disabled");
  sc->sc_pcmcia_flags |= 0x04;
 }
 printf("\n");
 pccbb_legacy_disable(sc);
 timeout_set(&sc->sc_ins_tmo, pci113x_insert, sc);
 config_defer(self, pccbb_pci_callback);
}
void
pccbb_pci_callback(struct device *self)
{
 struct pccbb_softc *sc = (void *)self;
 pci_chipset_tag_t pc = sc->sc_pc;
 bus_space_tag_t base_memt;
 bus_space_handle_t base_memh;
 u_int32_t maskreg;
 struct cbslot_attach_args cba;
 struct pcmciabus_attach_args paa;
 struct cardslot_attach_args caa;
 struct cardslot_softc *csc;
 u_int32_t sockstat;
 base_memt = sc->sc_base_memt;
 base_memh = sc->sc_base_memh;
 pccbb_chipinit(sc);
 sc->sc_pil = ((void *)0);
 sc->sc_pil_intr_enable = 1;
 sockstat = bus_space_read_4(base_memt, base_memh, 0x08);
 if ((sockstat & 0x00000006) == 0)
  sc->sc_flags |= 0x01;
 if (!(sc->sc_pcmcia_flags & 0x04)) {
  pcireg_t busreg = pci_conf_read(pc, sc->sc_tag, 0x18);
  pcireg_t bhlc = pci_conf_read(pc, sc->sc_tag, 0x0c);
  cba.cba_busname = "cardbus";
  cba.cba_iot = sc->sc_iot;
  cba.cba_memt = sc->sc_memt;
  cba.cba_dmat = sc->sc_dmat;
  cba.cba_bus = (busreg >> 8) & 0x0ff;
  cba.cba_cc = (void *)sc;
  cba.cba_pc = sc->sc_pc;
  cba.cba_cf = &pccbb_funcs;
  cba.cba_intrline = sc->sc_intrline;
  cba.cba_rbus_iot = sc->sc_rbus_iot;
  cba.cba_rbus_memt = sc->sc_rbus_memt;
  cba.cba_cacheline = (((bhlc) >> 0) & 0xff);
  cba.cba_lattimer = ( ((busreg) >> 24) & 0xFF);
 }
 pccbb_pcmcia_attach_setup(sc, &paa);
 caa.caa_cb_attach = ((void *)0);
 if (!(sc->sc_pcmcia_flags & 0x04)) {
  caa.caa_cb_attach = &cba;
 }
 caa.caa_16_attach = &paa;
 caa.caa_ph = &sc->sc_pcmcia_h;
 if (((void *)0) != (csc = (void *)config_found_sm((self), (&caa), (cbbprint), ((void *)0)))) {
  ;
  sc->sc_csc = csc;
 }
 sc->sc_ints_on = 1;
 maskreg = bus_space_read_4(base_memt, base_memh, 0x04);
 maskreg |= 0x06;
 bus_space_write_4(base_memt, base_memh, 0x04, maskreg);
 bus_space_write_4(base_memt, base_memh, 0x00,
     bus_space_read_4(base_memt, base_memh, 0x00));
 return;
}
void
pccbb_legacy_disable(struct pccbb_softc *sc)
{
 pcireg_t reg64;
 switch (sc->sc_chipset) {
 case 4:
  reg64 = pci_conf_read(sc->sc_pc, sc->sc_tag, 0x3C);
  reg64 &= ~(0x08000000 | 0x10000000);
  pci_conf_write(sc->sc_pc, sc->sc_tag, 0x3C, reg64);
  break;
 default:
  pci_conf_write(sc->sc_pc, sc->sc_tag, 0x44, 0x0);
  break;
 }
}
void
pccbb_chipinit(struct pccbb_softc *sc)
{
 pci_chipset_tag_t pc = sc->sc_pc;
 pcitag_t tag = sc->sc_tag;
 pcireg_t reg64;
 pci_set_powerstate(pc, tag, 0x0000);
 reg64 = pci_conf_read(pc, tag, 0x04);
 reg64 |= (0x00000001 | 0x00000002 |
     0x00000004);
 pci_conf_write(pc, tag, 0x04, reg64);
 reg64 = pci_conf_read(pc, tag, 0x18);
 if (( ((reg64) >> 24) & 0xFF) < 0x20) {
  reg64 &= ~(0xFF << 24);
  reg64 |= (0x20 << 24);
  pci_conf_write(pc, tag, 0x18, reg64);
 }
 ;
 reg64 = pci_conf_read(pc, tag, 0x0c);
 if ((((reg64) >> 8) & 0xff) < 0x10) {
  reg64 &= ~(0xff << 8);
  reg64 |= (0x10 << 8);
  pci_conf_write(pc, tag, 0x0c, reg64);
 }
 ;
 reg64 = pci_conf_read(pc, tag, 0x3C);
 reg64 |= 0x00800000;
 reg64 |= 0x04000000;
 reg64 |= 0x00400000;
 pci_conf_write(pc, tag, 0x3C, reg64);
 switch (sc->sc_chipset) {
 case 1:
  reg64 = pci_conf_read(pc, tag, 0x90);
  reg64 |= 0x002000;
  reg64 |= 0x000800;
  reg64 &= ~(0x001000 | 0x060000);
  pci_conf_write(pc, tag, 0x90, reg64);
  break;
 case 2:
  reg64 = pci_conf_read(pc, tag, 0x8c);
  if (reg64 == 0x00001000) {
   reg64 &= ~0x0000000F;
   reg64 |= 0x02;
   if ((pci_conf_read(pc, tag, 0x80) &
        0x20000000u) == 0) {
    reg64 &= ~0x000000F0;
    reg64 |= 0x20;
   }
   pci_conf_write(pc, tag, 0x8c, reg64);
  }
 case 9:
  pci_conf_write(pc, tag, 0x84, 0);
  reg64 = pci_conf_read(pc, tag, 0x80);
  reg64 |= 0x200000;
  pci_conf_write(pc, tag, 0x80, reg64);
  reg64 = pci_conf_read(pc, tag, 0x90);
  reg64 |= 0x20000000u;
  pci_conf_write(pc, tag, 0x90, reg64);
  break;
 case 6:
  reg64 = pci_conf_read(pc, tag, 0x90);
  reg64 |= 0x00000001;
  pci_conf_write(pc, tag, 0x90, reg64);
  reg64 = pci_conf_read(pc, tag, 0xA0);
  ;
  reg64 |= (0x00000080 | 0x00000040 |
      0x00000020 | 0x80000000);
  reg64 &= ~0x01000000;
  ;
  pci_conf_write(pc, tag, 0xA0, reg64);
  break;
 case 7:
  reg64 = pci_conf_read(pc, tag, 0xA0);
  ;
  reg64 |= (0x00000080 | 0x00000040 |
      0x00000020 | 0x80000000);
  reg64 &= ~0x01000000;
  reg64 |= 0x00000100;
  reg64 &= ~(0x00000400 | 0x00000200);
  ;
  pci_conf_write(pc, tag, 0xA0, reg64);
  bus_space_write_1(sc->sc_base_memt, sc->sc_base_memh,
      0x800 + 0x3e, bus_space_read_1(sc->sc_base_memt,
      sc->sc_base_memh, 0x800 + 0x3e) | 0x03);
  break;
 case 10:
  ;
  reg64 = pci_conf_read(pc, tag, 0x94);
  pci_conf_write(pc, tag, 0x94, reg64 &
      ~(0x02 | 0x08));
  reg64 = pci_conf_read(pc, tag, 0xD4);
  pci_conf_write(pc, tag, 0xD4, reg64 &
      ~(0x02 | 0x08));
  break;
 }
 pci_conf_write(pc, tag, 0x1C, 0xffffffff);
 pci_conf_write(pc, tag, 0x20, 0);
 pci_conf_write(pc, tag, 0x24, 0xffffffff);
 pci_conf_write(pc, tag, 0x28, 0);
 pci_conf_write(pc, tag, 0x2C, 0xffffffff);
 pci_conf_write(pc, tag, 0x30, 0);
 pci_conf_write(pc, tag, 0x34, 0xffffffff);
 pci_conf_write(pc, tag, 0x38, 0);
 bus_space_write_1(sc->sc_base_memt, sc->sc_base_memh,
     0x800 + 0x03,
     bus_space_read_1(sc->sc_base_memt, sc->sc_base_memh,
  0x800 + 0x03) & ~0x40);
 pccbb_power((cardbus_chipset_tag_t)sc, 0x0004 | 0x0040);
}
void
pccbb_pcmcia_attach_setup(struct pccbb_softc *sc,
    struct pcmciabus_attach_args *paa)
{
 struct pcic_handle *ph = &sc->sc_pcmcia_h;
 rbus_tag_t rb;
 ph->ph_parent = (struct device *)sc;
 ph->sock = sc->sc_function;
 ph->flags = 0;
 ph->shutdown = 0;
 ph->ih_irq = sc->sc_intrline;
 ph->ph_bus_t = sc->sc_base_memt;
 ph->ph_bus_h = sc->sc_base_memh;
 ph->ph_read = pccbb_pcmcia_read;
 ph->ph_write = pccbb_pcmcia_write;
 sc->sc_pct = &pccbb_pcmcia_funcs;
 ((ph)->ph_write((ph), (0x03), (0x10 | 0x40)));
 if (sc->sc_chipset == 1) {
  ((ph)->ph_write((ph), (0x05), (0)));
 } else {
  ((ph)->ph_write((ph), (0x05), (0x08)));
  ((ph)->ph_read((ph), (0x04)));
 }
 paa->paa_busname = "pcmcia";
 paa->pct = sc->sc_pct;
 paa->pch = ph;
 paa->iobase = 0;
 paa->iosize = 0;
 rb = ((struct pccbb_softc *)(ph->ph_parent))->sc_rbus_iot;
 paa->iobase = rb->rb_start + rb->rb_offset;
 paa->iosize = rb->rb_end - rb->rb_start;
 return;
}
int
pccbb_checksockstat(struct pccbb_softc *sc)
{
 u_int32_t sockstate;
 sockstate = bus_space_read_4(sc->sc_base_memt, sc->sc_base_memh,
     0x08);
 if ((sockstate & 0x00000006) != 0) {
  if (sc->sc_flags & 0x01) {
   ;
   sc->sc_flags &= ~0x01;
   if (sc->sc_csc->sc_status & 0x01) {
    cardslot_event_throw(sc->sc_csc,
        1);
   } else if (sc->sc_csc->sc_status &
       0x02) {
    cardslot_event_throw(sc->sc_csc,
        3);
   }
  }
  return (1);
 } else if ((sockstate & 0x00000006) == 0 &&
     (sc->sc_flags & 0x01) == 0) {
  timeout_add_msec(&sc->sc_ins_tmo, 100);
  sc->sc_flags |= 0x01000000;
  return (1);
 }
 return (0);
}
int
pccbbintr(void *arg)
{
 struct pccbb_softc *sc = (struct pccbb_softc *)arg;
 u_int32_t sockevent;
 struct pcic_handle *ph = &sc->sc_pcmcia_h;
 if (!sc->sc_ints_on)
  return 0;
 sockevent = bus_space_read_4(sc->sc_base_memt, sc->sc_base_memh,
     0x00);
 bus_space_write_4(sc->sc_base_memt, sc->sc_base_memh,
     0x00, sockevent);
 ((ph)->ph_read((ph), (0x04)));
 if (sockevent & 0x06) {
  if (pccbb_checksockstat(sc))
   return (1);
 }
 if (sc->sc_pil_intr_enable)
  return pccbbintr_function(sc);
 return (0);
}
int
pccbbintr_function(struct pccbb_softc *sc)
{
 int retval = 0, val;
 struct pccbb_intrhand_list *pil;
 int s, splchanged;
 for (pil = sc->sc_pil; pil != ((void *)0); pil = pil->pil_next) {
  splchanged = 1;
  if (pil->pil_level == 15) {
   s = _splraise(15);
  } else if (pil->pil_level == 10) {
   s = _splraise(10);
  } else if (pil->pil_level == 8) {
   s = _splraise(8);
  } else if (pil->pil_level == 7) {
   s = _splraise(7);
  } else if (pil->pil_level == 6) {
   s = _splraise(6);
  } else if (pil->pil_level == 6) {
   s = _splraise(6);
  } else {
   splchanged = 0;
  }
  val = (*pil->pil_func)(pil->pil_arg);
  if (val != 0)
   pil->pil_count.ec_count++;
  if (splchanged != 0) {
   _splx(s);
  }
  if (retval == 0 || val != 0)
   retval = val;
 }
 return retval;
}
void
pci113x_insert(void *arg)
{
 struct pccbb_softc *sc = (struct pccbb_softc *)arg;
 u_int32_t sockevent, sockstate;
 sockevent = bus_space_read_4(sc->sc_base_memt, sc->sc_base_memh,
     0x00);
 sockstate = bus_space_read_4(sc->sc_base_memt, sc->sc_base_memh,
     0x08);
 if (0 == (sockstate & 0x00000006)) {
  ;
  ;
  sc->sc_flags |= 0x01;
  if (sockstate & 0x00000010) {
   cardslot_event_throw(sc->sc_csc,
       0);
  } else if (sockstate & 0x00000020) {
   cardslot_event_throw(sc->sc_csc,
       2);
  } else {
  }
 } else {
  timeout_add_msec(&sc->sc_ins_tmo, 100);
 }
}
u_int8_t
pccbb_pcmcia_read(struct pcic_handle *ph, int reg64)
{
 bus_space_barrier(ph->ph_bus_t, ph->ph_bus_h,
     0x800 + reg64, 1, 0x01);
 return bus_space_read_1(ph->ph_bus_t, ph->ph_bus_h,
     0x800 + reg64);
}
void
pccbb_pcmcia_write(struct pcic_handle *ph, int reg64, int val)
{
 bus_space_barrier(ph->ph_bus_t, ph->ph_bus_h,
     0x800 + reg64, 1, 0x02);
 bus_space_write_1(ph->ph_bus_t, ph->ph_bus_h, 0x800 + reg64,
     val);
}
int
pccbb_ctrl(cardbus_chipset_tag_t ct, int command)
{
 struct pccbb_softc *sc = (struct pccbb_softc *)ct;
 switch (command) {
 case 7:
  if (2 == pccbb_detect_card(sc)) {
   int retval = 0;
   int status = cb_detect_voltage(sc);
   if (0x01 & status) {
    retval |= 0x01;
   }
   if (0x02 & status) {
    retval |= 0x02;
   }
   if (0x04 & status) {
    retval |= 0x04;
   }
   if (0x08 & status) {
    retval |= 0x08;
   }
   return retval;
  } else {
   return 0;
  }
  break;
 case 4:
  return cb_reset(sc);
  break;
 case 100:
 case 101:
 case 102:
 case 103:
 case 104:
 case 105:
  return pccbb_cardenable(sc, command);
  break;
 }
 return 0;
}
int
pccbb_power(cardbus_chipset_tag_t ct, int command)
{
 struct pccbb_softc *sc = (struct pccbb_softc *)ct;
 u_int32_t status, sock_ctrl;
 bus_space_tag_t memt = sc->sc_base_memt;
 bus_space_handle_t memh = sc->sc_base_memh;
 ;
 status = bus_space_read_4(memt, memh, 0x08);
 sock_ctrl = bus_space_read_4(memt, memh, 0x10);
 switch (command & 0x000f) {
 case 0x0000:
  break;
 case 0x0005:
  if (0x00000400 & status) {
   sock_ctrl &= ~0x070;
   sock_ctrl |= 0x020;
  } else {
   printf("%s: BAD voltage request: no 5 V card\n",
       sc->sc_dev.dv_xname);
  }
  break;
 case 0x0001:
  if (0x00000800 & status) {
   sock_ctrl &= ~0x070;
   sock_ctrl |= 0x030;
  } else {
   printf("%s: BAD voltage request: no 3.3 V card\n",
       sc->sc_dev.dv_xname);
  }
  break;
 case 0x0004:
  sock_ctrl &= ~0x070;
  break;
 default:
  return 0;
  break;
 }
 switch (command & 0x00f0) {
 case 0x0000:
  break;
 case 0x0040:
  sock_ctrl &= ~0x007;
  break;
 case 0x0010:
  sock_ctrl &= ~0x007;
  sock_ctrl |= ((sock_ctrl >> 4) & 0x07);
  break;
 case 0x0030:
  sock_ctrl &= ~0x007;
  sock_ctrl |= 0x001;
  break;
 }
 bus_space_write_4(memt, memh, 0x10, sock_ctrl);
 status = bus_space_read_4(memt, memh, 0x08);
 if (status & 0x00000200) {
  printf
      ("%s: bad Vcc request. sock_ctrl 0x%x, sock_status 0x%x\n",
      sc->sc_dev.dv_xname, sock_ctrl, status);
  ;
  return 0;
 }
 delay(300 * 1000);
 return 1;
}
int
pccbb_detect_card(struct pccbb_softc *sc)
{
 bus_space_handle_t base_memh = sc->sc_base_memh;
 bus_space_tag_t base_memt = sc->sc_base_memt;
 u_int32_t sockstat =
     bus_space_read_4(base_memt, base_memh, 0x08);
 int retval = 0;
 if (sockstat & 0x00001000)
  return 0;
 if (0x00 == (sockstat & 0x00000006)) {
  if (!(0x00000080 & sockstat)) {
   if (0x00000020 & sockstat) {
    retval = 2;
   } else if (0x00000010 & sockstat) {
    retval = 1;
   }
  }
 }
 return retval;
}
int
cb_reset(struct pccbb_softc *sc)
{
 int reset_duration = (sc->sc_chipset == 3 ? 400 : 50);
 u_int32_t bcr = pci_conf_read(sc->sc_pc, sc->sc_tag, 0x3C);
 bcr |= 0x00400000;
 pci_conf_write(sc->sc_pc, sc->sc_tag, 0x3C, bcr);
 delay_ms(reset_duration, sc);
 if (0x01 & sc->sc_flags) {
  bcr &= ~0x00400000;
  pci_conf_write(sc->sc_pc, sc->sc_tag, 0x3C, bcr);
  delay_ms(reset_duration, sc);
 }
 return 1;
}
int
cb_detect_voltage(struct pccbb_softc *sc)
{
 u_int32_t psr;
 bus_space_tag_t iot = sc->sc_base_memt;
 bus_space_handle_t ioh = sc->sc_base_memh;
 int vol = 0x00;
 psr = bus_space_read_4(iot, ioh, 0x08);
 if (0x400u & psr) {
  vol |= 0x01;
 }
 if (0x800u & psr) {
  vol |= 0x02;
 }
 return vol;
}
int
cbbprint(void *aux, const char *pcic)
{
 return 1;
}
int
pccbb_cardenable(struct pccbb_softc *sc, int function)
{
 u_int32_t command =
     pci_conf_read(sc->sc_pc, sc->sc_tag, 0x04);
 ;
 switch (function) {
 case 100:
  command |= 0x00000001;
  break;
 case 101:
  command &= ~0x00000001;
  break;
 case 102:
  command |= 0x00000002;
  break;
 case 103:
  command &= ~0x00000002;
  break;
 case 104:
  command |= 0x00000004;
  break;
 case 105:
  command &= ~0x00000004;
  break;
 default:
  return 0;
 }
 pci_conf_write(sc->sc_pc, sc->sc_tag, 0x04, command);
 ;
 return 1;
}
void *
pccbb_cb_intr_establish(cardbus_chipset_tag_t ct, int irq, int level,
    int (*func)(void *), void *arg, const char *name)
{
 struct pccbb_softc *sc = (struct pccbb_softc *)ct;
 return pccbb_intr_establish(sc, irq, level, func, arg, name);
}
void
pccbb_cb_intr_disestablish(cardbus_chipset_tag_t ct, void *ih)
{
 struct pccbb_softc *sc = (struct pccbb_softc *)ct;
 pccbb_intr_disestablish(sc, ih);
}
void *
pccbb_intr_establish(struct pccbb_softc *sc, int irq, int level,
    int (*func)(void *), void *arg, const char *name)
{
 struct pccbb_intrhand_list *pil, *newpil;
 pcireg_t reg64;
 ;
 if (sc->sc_pil == ((void *)0)) {
  reg64 = pci_conf_read(sc->sc_pc, sc->sc_tag, 0x3C);
  reg64 &= ~0x00800000;
  pci_conf_write(sc->sc_pc, sc->sc_tag, 0x3C, reg64);
  switch (sc->sc_chipset) {
  case 1:
   reg64 = pci_conf_read(sc->sc_pc, sc->sc_tag, 0x90);
   reg64 |= 0x001000;
   pci_conf_write(sc->sc_pc, sc->sc_tag, 0x90, reg64);
   break;
  default:
   break;
  }
 }
 newpil = (struct pccbb_intrhand_list *)
  malloc(sizeof(struct pccbb_intrhand_list), 2, 0x0001);
 newpil->pil_func = func;
 newpil->pil_arg = arg;
 newpil->pil_level = level;
 evcount_attach(&newpil->pil_count, name, &sc->sc_intrline);
 newpil->pil_next = ((void *)0);
 if (sc->sc_pil == ((void *)0)) {
  sc->sc_pil = newpil;
 } else {
  for (pil = sc->sc_pil; pil->pil_next != ((void *)0);
      pil = pil->pil_next);
  pil->pil_next = newpil;
 }
 ;
 return newpil;
}
void
pccbb_intr_disestablish(struct pccbb_softc *sc, void *ih)
{
 struct pccbb_intrhand_list *pil, **pil_prev;
 pcireg_t reg64;
 ;
 pil_prev = &sc->sc_pil;
 for (pil = sc->sc_pil; pil != ((void *)0); pil = pil->pil_next) {
  if (pil == ih) {
   evcount_detach(&pil->pil_count);
   *pil_prev = pil->pil_next;
   free(pil, 2, sizeof *pil);
   ;
   break;
  }
  pil_prev = &pil->pil_next;
 }
 if (sc->sc_pil == ((void *)0)) {
  ;
  reg64 = pci_conf_read(sc->sc_pc, sc->sc_tag, 0x3C);
  reg64 |= 0x00800000;
  pci_conf_write(sc->sc_pc, sc->sc_tag, 0x3C, reg64);
  switch (sc->sc_chipset) {
  case 1:
   reg64 = pci_conf_read(sc->sc_pc, sc->sc_tag, 0x90);
   reg64 &= ~0x001000;
   pci_conf_write(sc->sc_pc, sc->sc_tag, 0x90, reg64);
   break;
  default:
   break;
  }
 }
}
int
pccbb_pcmcia_io_alloc(pcmcia_chipset_handle_t pch, bus_addr_t start,
    bus_size_t size, bus_size_t align, struct pcmcia_io_handle *pcihp)
{
 struct pcic_handle *ph = (struct pcic_handle *)pch;
 bus_addr_t ioaddr;
 int flags = 0;
 bus_space_tag_t iot;
 bus_space_handle_t ioh;
 bus_addr_t mask;
 rbus_tag_t rb;
 if (align == 0) {
  align = size;
 }
 if (start != 0) {
  mask = 0x3ff;
  start &= mask;
 } else {
  bus_size_t size_tmp = size;
  int shifts = 0;
  while (size_tmp) {
   ++shifts;
   size_tmp >>= 1;
  }
  mask = (1 << shifts);
  if (mask < size) {
   mask <<= 1;
  }
  mask--;
 }
 iot = ((struct pccbb_softc *)(ph->ph_parent))->sc_iot;
 rb = ((struct pccbb_softc *)(ph->ph_parent))->sc_rbus_iot;
 if (rbus_space_alloc(rb, start, size, mask, align, 0, &ioaddr, &ioh)) {
  return 1;
 }
 pcihp->iot = iot;
 pcihp->ioh = ioh;
 pcihp->addr = ioaddr;
 pcihp->size = size;
 pcihp->flags = flags;
 return 0;
}
void
pccbb_pcmcia_io_free(pcmcia_chipset_handle_t pch,
    struct pcmcia_io_handle *pcihp)
{
 bus_space_handle_t ioh = pcihp->ioh;
 bus_size_t size = pcihp->size;
 struct pccbb_softc *sc =
     (struct pccbb_softc *)((struct pcic_handle *)pch)->ph_parent;
 rbus_tag_t rb = sc->sc_rbus_iot;
 rbus_space_free(rb, ioh, size, ((void *)0));
}
int
pccbb_pcmcia_io_map(pcmcia_chipset_handle_t pch, int width, bus_addr_t offset,
    bus_size_t size, struct pcmcia_io_handle *pcihp, int *windowp)
{
 struct pcic_handle *ph = (struct pcic_handle *)pch;
 bus_addr_t ioaddr = pcihp->addr + offset;
 int i, win;
 if (((struct pccbb_softc *)ph->ph_parent)->sc_iot != pcihp->iot) {
  panic("pccbb_pcmcia_io_map iot is bogus");
 }
 win = -1;
 for (i = 0; i < 2; i++) {
  if ((ph->ioalloc & (1 << i)) == 0) {
   win = i;
   ph->ioalloc |= (1 << i);
   break;
  }
 }
 if (win == -1) {
  return 1;
 }
 *windowp = win;
 ;
 ph->io[win].addr = ioaddr;
 ph->io[win].size = size;
 ph->io[win].width = width;
 pccbb_pcmcia_do_io_map(ph, win);
 return 0;
}
void
pccbb_pcmcia_do_io_map(struct pcic_handle *ph, int win)
{
 static u_int8_t pcic_iowidth[3] = {
  0x02,
  0x00 |
      0x00,
  0x00 |
      0x01,
 };
 int regbase_win = 0x8 + win * 0x04;
 u_int8_t ioctl, enable;
 ;
 ((ph)->ph_write((ph), (regbase_win + 0), (ph->io[win].addr & 0xff)));
 ((ph)->ph_write((ph), (regbase_win + 1), ((ph->io[win].addr >> 8) & 0xff)));
 ((ph)->ph_write((ph), (regbase_win + 2), ((ph->io[win].addr + ph->io[win].size - 1) & 0xff)));
 ((ph)->ph_write((ph), (regbase_win + 3), (((ph->io[win].addr + ph->io[win].size - 1) >> 8) & 0xff)));
 ioctl = ((ph)->ph_read((ph), (0x07)));
 enable = ((ph)->ph_read((ph), (0x06)));
 switch (win) {
 case 0:
  ioctl &= ~(0x08 | 0x04 |
      0x02 |
      0x01);
  ioctl |= pcic_iowidth[ph->io[win].width];
  enable |= 0x40;
  break;
 case 1:
  ioctl &= ~(0x80 | 0x40 |
      0x20 |
      0x10);
  ioctl |= (pcic_iowidth[ph->io[win].width] << 4);
  enable |= 0x80;
  break;
 }
 ((ph)->ph_write((ph), (0x07), (ioctl)));
 ((ph)->ph_write((ph), (0x06), (enable)));
}
void
pccbb_pcmcia_io_unmap(pcmcia_chipset_handle_t pch, int win)
{
 struct pcic_handle *ph = (struct pcic_handle *)pch;
 int reg64;
 if (win >= 2 || win < 0) {
  panic("pccbb_pcmcia_io_unmap: window out of range");
 }
 reg64 = ((ph)->ph_read((ph), (0x06)));
 switch (win) {
 case 0:
  reg64 &= ~0x40;
  break;
 case 1:
  reg64 &= ~0x80;
  break;
 }
 ((ph)->ph_write((ph), (0x06), (reg64)));
 ph->ioalloc &= ~(1 << win);
}
void
pccbb_pcmcia_wait_ready(struct pcic_handle *ph)
{
 int i;
 ;
 for (i = 0; i < 10000; i++) {
  if (((ph)->ph_read((ph), (0x01))) & 0x20) {
   return;
  }
  delay(500);
 }
 printf("pcic_wait_ready: ready never happened, status = %02x\n",
     ((ph)->ph_read((ph), (0x01))));
}
void
pccbb_pcmcia_socket_enable(pcmcia_chipset_handle_t pch)
{
 struct pcic_handle *ph = (struct pcic_handle *)pch;
 struct pccbb_softc *sc = (struct pccbb_softc *)ph->ph_parent;
 int cardtype, win;
 u_int8_t power, intr;
 pcireg_t spsr;
 int voltage;
 ;
 spsr =
     bus_space_read_4(sc->sc_base_memt, sc->sc_base_memh,
     0x08);
 if (spsr & 0x00000400) {
  ;
  voltage = 0x0005 | 0x0010;
 } else if (spsr & 0x00000800) {
  ;
  voltage = 0x0001 | 0x0010;
 } else {
  ;
  return;
 }
 power = 0;
 ((ph)->ph_write((ph), (0x02), (power)));
 pccbb_power((cardbus_chipset_tag_t)sc, 0x0004 | 0x0040);
 intr = ((ph)->ph_read((ph), (0x03)));
 intr &= ~(0x40 | 0x20);
 ((ph)->ph_write((ph), (0x03), (intr)));
 power = ((ph)->ph_read((ph), (0x02)));
 ((ph)->ph_write((ph), (0x02), ((power & ~0x80))));
 pccbb_power((cardbus_chipset_tag_t)sc, voltage);
 power = ((ph)->ph_read((ph), (0x02)));
 ((ph)->ph_write((ph), (0x02), (power | 0x80)));
 delay(10);
 delay(2 * 1000);
 delay(20 * 1000);
 intr |= 0x40;
 ((ph)->ph_write((ph), (0x03), (intr)));
 delay(20000);
 pccbb_pcmcia_wait_ready(ph);
 ((ph)->ph_write((ph), (0x06), (0)));
 cardtype = pcmcia_card_gettype(ph->pcmcia);
 intr |= ((cardtype == 1) ?
     0x20 : 0x00);
 ((ph)->ph_write((ph), (0x03), (intr)));
 ;
 for (win = 0; win < 5; ++win) {
  if (ph->memalloc & (1 << win)) {
   pccbb_pcmcia_do_mem_map(ph, win);
  }
 }
 for (win = 0; win < 2; ++win) {
  if (ph->ioalloc & (1 << win)) {
   pccbb_pcmcia_do_io_map(ph, win);
  }
 }
}
void
pccbb_pcmcia_socket_disable(pcmcia_chipset_handle_t pch)
{
 struct pcic_handle *ph = (struct pcic_handle *)pch;
 struct pccbb_softc *sc = (struct pccbb_softc *)ph->ph_parent;
 u_int8_t power, intr;
 ;
 intr = ((ph)->ph_read((ph), (0x03)));
 intr &= ~(0x20);
 ((ph)->ph_write((ph), (0x03), (intr)));
 delay(2 * 1000);
 power = ((ph)->ph_read((ph), (0x02)));
 power &= ~0x80;
 ((ph)->ph_write((ph), (0x02), (power)));
 pccbb_power((cardbus_chipset_tag_t)sc, 0x0004 | 0x0040);
 delay(300 * 1000);
}
int
pccbb_pcmcia_card_detect(pcmcia_chipset_handle_t pch)
{
 struct pcic_handle *ph = (struct pcic_handle *)pch;
 struct pccbb_softc *sc = (struct pccbb_softc *)ph->ph_parent;
 ;
 return pccbb_detect_card(sc) == 1 ? 1 : 0;
}
int
pccbb_pcmcia_mem_alloc(pcmcia_chipset_handle_t pch, bus_size_t size,
    struct pcmcia_mem_handle *pcmhp)
{
 struct pcic_handle *ph = (struct pcic_handle *)pch;
 bus_space_handle_t memh;
 bus_addr_t addr;
 bus_size_t sizepg;
 struct pccbb_softc *sc = (struct pccbb_softc *)ph->ph_parent;
 rbus_tag_t rb;
 sizepg = (size + ((1<<12) - 1)) / (1<<12);
 if (!(sc->sc_pcmcia_flags & 0x02)) {
  return 1;
 }
 addr = 0;
 rb = sc->sc_rbus_memt;
 if (rbus_space_alloc(rb, 0, sizepg * (1<<12),
     sizepg * (1<<12) - 1, (1<<12), 0,
     &addr, &memh)) {
  return 1;
 }
 ;
 pcmhp->memt = sc->sc_memt;
 pcmhp->memh = memh;
 pcmhp->addr = addr;
 pcmhp->size = size;
 pcmhp->realsize = sizepg * (1<<12);
 pcmhp->mhandle = 0;
 return 0;
}
void
pccbb_pcmcia_mem_free(pcmcia_chipset_handle_t pch,
    struct pcmcia_mem_handle *pcmhp)
{
 struct pcic_handle *ph = (struct pcic_handle *)pch;
 struct pccbb_softc *sc = (struct pccbb_softc *)ph->ph_parent;
 rbus_space_free(sc->sc_rbus_memt, pcmhp->memh, pcmhp->realsize, ((void *)0));
}
void
pccbb_pcmcia_do_mem_map(struct pcic_handle *ph, int win)
{
 int regbase_win;
 bus_addr_t phys_addr;
 bus_addr_t phys_end;
 u_int8_t start_low, start_high = 0;
 u_int8_t stop_low, stop_high;
 u_int8_t off_low, off_high;
 u_int8_t mem_window;
 int reg64;
 regbase_win = 0x10 + win * 0x08;
 phys_addr = ph->mem[win].addr;
 phys_end = phys_addr + ph->mem[win].size;
 ;
 start_low = (phys_addr >> 12) & 0xff;
 start_high = ((phys_addr >> (12 + 8)) & 0x0f)
     | 0x80;
 mem_window = (phys_addr >> (12 + 12)) & 0xff;
 ((ph)->ph_write((ph), (regbase_win + 0), (start_low)));
 ((ph)->ph_write((ph), (regbase_win + 1), (start_high)));
 if (((struct pccbb_softc *)ph->
     ph_parent)->sc_pcmcia_flags & 0x02) {
  ((ph)->ph_write((ph), (0x40 + win), (mem_window)));
 }
 stop_low = (phys_end >> 12) & 0xff;
 stop_high = ((phys_end >> (12 + 8)) & 0x0f)
     | 0x80;
 ((ph)->ph_write((ph), (regbase_win + 2), (stop_low)));
 ((ph)->ph_write((ph), (regbase_win + 3), (stop_high)));
 off_low = (ph->mem[win].offset >> 12) & 0xff;
 off_high = ((ph->mem[win].offset >> (12 + 8))
     & 0x3F)
     | ((ph->mem[win].kind == 1) ?
     0x40 : 0);
 ((ph)->ph_write((ph), (regbase_win + 4), (off_low)));
 ((ph)->ph_write((ph), (regbase_win + 5), (off_high)));
 reg64 = ((ph)->ph_read((ph), (0x06)));
 reg64 |= ((1 << win) | 0x20);
 ((ph)->ph_write((ph), (0x06), (reg64)));
}
int
pccbb_pcmcia_mem_map(pcmcia_chipset_handle_t pch, int kind,
    bus_addr_t card_addr, bus_size_t size, struct pcmcia_mem_handle *pcmhp,
    bus_size_t *offsetp, int *windowp)
{
 struct pcic_handle *ph = (struct pcic_handle *)pch;
 bus_addr_t busaddr;
 long card_offset;
 int win;
 for (win = 0; win < 5; ++win) {
  if ((ph->memalloc & (1 << win)) == 0) {
   ph->memalloc |= (1 << win);
   break;
  }
 }
 if (win == 5) {
  return 1;
 }
 *windowp = win;
 if (((struct pccbb_softc *)ph->ph_parent)->sc_memt != pcmhp->memt) {
  panic("pccbb_pcmcia_mem_map memt is bogus");
 }
 busaddr = pcmhp->addr;
 *offsetp = card_addr % (1<<12);
 card_addr -= *offsetp;
 ;
 size += *offsetp - 1;
 card_offset = (((long)card_addr) - ((long)busaddr));
 ph->mem[win].addr = busaddr;
 ph->mem[win].size = size;
 ph->mem[win].offset = card_offset;
 ph->mem[win].kind = kind;
 pccbb_pcmcia_do_mem_map(ph, win);
 return 0;
}
void
pccbb_pcmcia_mem_unmap(pcmcia_chipset_handle_t pch, int window)
{
 struct pcic_handle *ph = (struct pcic_handle *)pch;
 int reg64;
 if (window >= 5) {
  panic("pccbb_pcmcia_mem_unmap: window out of range");
 }
 reg64 = ((ph)->ph_read((ph), (0x06)));
 reg64 &= ~(1 << window);
 ((ph)->ph_write((ph), (0x06), (reg64)));
 ph->memalloc &= ~(1 << window);
}
void *
pccbb_pcmcia_intr_establish(pcmcia_chipset_handle_t pch,
    struct pcmcia_function *pf, int ipl, int (*func)(void *), void *arg,
    char *xname)
{
 struct pcic_handle *ph = (struct pcic_handle *)pch;
 struct pccbb_softc *sc = (struct pccbb_softc *)ph->ph_parent;
 if (!(pf->cfe->flags & 0x0100)) {
  if ((pf->cfe->flags & 0x0100)) {
   ;
   return ((void *)0);
  }
 }
 return pccbb_intr_establish(sc, -1, ipl, func, arg, xname);
}
void
pccbb_pcmcia_intr_disestablish(pcmcia_chipset_handle_t pch, void *ih)
{
 struct pcic_handle *ph = (struct pcic_handle *)pch;
 struct pccbb_softc *sc = (struct pccbb_softc *)ph->ph_parent;
 pccbb_intr_disestablish(sc, ih);
}
const char *
pccbb_pcmcia_intr_string(pcmcia_chipset_handle_t pch, void *ih)
{
 if (ih == ((void *)0))
  return "couldn't establish interrupt";
 else
  return "";
}
int
pccbb_rbus_cb_space_alloc(cardbus_chipset_tag_t ct, rbus_tag_t rb,
    bus_addr_t addr, bus_size_t size, bus_addr_t mask, bus_size_t align,
    int flags, bus_addr_t *addrp, bus_space_handle_t *bshp)
{
 struct pccbb_softc *sc = (struct pccbb_softc *)ct;
 ;
 align = max(align, 4);
 mask = max(mask, (4 - 1));
 if (rb->rb_bt == sc->sc_memt) {
  align = max(align, 0x1000);
  mask = max(mask, (0x1000 - 1));
 }
 if (rb->rb_bt == sc->sc_iot) {
  if (mask < 0x0100) {
   mask = 0x3ff;
   addr = 0x300;
  }
 }
 if (rbus_space_alloc(rb, addr, size, mask, align, flags, addrp, bshp)) {
  printf("%s: <rbus> no bus space\n", sc->sc_dev.dv_xname);
  return 1;
 }
 pccbb_open_win(sc, rb->rb_bt, *addrp, size, *bshp, 0);
 return 0;
}
int
pccbb_rbus_cb_space_free(cardbus_chipset_tag_t ct, rbus_tag_t rb,
    bus_space_handle_t bsh, bus_size_t size)
{
 struct pccbb_softc *sc = (struct pccbb_softc *)ct;
 bus_space_tag_t bt = rb->rb_bt;
 pccbb_close_win(sc, bt, bsh, size);
 if (bt == sc->sc_memt) {
 } else if (bt == sc->sc_iot) {
 } else {
  return 1;
 }
 return rbus_space_free(rb, bsh, size, ((void *)0));
}
int
pccbb_open_win(struct pccbb_softc *sc, bus_space_tag_t bst, bus_addr_t addr,
    bus_size_t size, bus_space_handle_t bsh, int flags)
{
 struct pccbb_win_chain_head *head;
 bus_addr_t align;
 head = &sc->sc_iowindow;
 align = 0x04;
 if (sc->sc_memt == bst) {
  head = &sc->sc_memwindow;
  align = 0x1000;
  ;
 }
 if (pccbb_winlist_insert(head, addr, size, bsh, flags)) {
  printf("%s: pccbb_open_win: %s winlist insert failed\n",
      sc->sc_dev.dv_xname,
      (head == &sc->sc_memwindow) ? "mem" : "io");
 }
 pccbb_winset(align, sc, bst);
 return 0;
}
int
pccbb_close_win(struct pccbb_softc *sc, bus_space_tag_t bst,
    bus_space_handle_t bsh, bus_size_t size)
{
 struct pccbb_win_chain_head *head;
 bus_addr_t align;
 head = &sc->sc_iowindow;
 align = 0x04;
 if (sc->sc_memt == bst) {
  head = &sc->sc_memwindow;
  align = 0x1000;
 }
 if (pccbb_winlist_delete(head, bsh, size)) {
  printf("%s: pccbb_close_win: %s winlist delete failed\n",
      sc->sc_dev.dv_xname,
      (head == &sc->sc_memwindow) ? "mem" : "io");
 }
 pccbb_winset(align, sc, bst);
 return 0;
}
int
pccbb_winlist_insert(struct pccbb_win_chain_head *head, bus_addr_t start,
    bus_size_t size, bus_space_handle_t bsh, int flags)
{
 struct pccbb_win_chain *chainp, *elem;
 if ((elem = malloc(sizeof(struct pccbb_win_chain), 2,
     0x0002)) == ((void *)0))
  return (1);
 elem->wc_start = start;
 elem->wc_end = start + (size - 1);
 elem->wc_handle = bsh;
 elem->wc_flags = flags;
 for (chainp = ((head)->tqh_first); chainp != ((void *)0);
     chainp = ((chainp)->wc_list.tqe_next)) {
  if (chainp->wc_end < start)
   continue;
  do { if (((elem)->wc_list.tqe_next = (chainp)->wc_list.tqe_next) != ((void *)0)) (elem)->wc_list.tqe_next->wc_list.tqe_prev = &(elem)->wc_list.tqe_next; else (head)->tqh_last = &(elem)->wc_list.tqe_next; (chainp)->wc_list.tqe_next = (elem); (elem)->wc_list.tqe_prev = &(chainp)->wc_list.tqe_next; } while (0);
  return (0);
 }
 do { (elem)->wc_list.tqe_next = ((void *)0); (elem)->wc_list.tqe_prev = (head)->tqh_last; *(head)->tqh_last = (elem); (head)->tqh_last = &(elem)->wc_list.tqe_next; } while (0);
 return (0);
}
int
pccbb_winlist_delete(struct pccbb_win_chain_head *head, bus_space_handle_t bsh,
    bus_size_t size)
{
 struct pccbb_win_chain *chainp;
 for (chainp = ((head)->tqh_first); chainp != ((void *)0);
      chainp = ((chainp)->wc_list.tqe_next)) {
  if (__builtin_memcmp((&chainp->wc_handle), (&bsh), (sizeof(bsh))))
   continue;
  if ((chainp->wc_end - chainp->wc_start) != (size - 1)) {
   printf("pccbb_winlist_delete: window 0x%lx size "
       "inconsistent: 0x%lx, 0x%lx\n",
       chainp->wc_start,
       chainp->wc_end - chainp->wc_start,
       size - 1);
   return 1;
  }
  do { if (((chainp)->wc_list.tqe_next) != ((void *)0)) (chainp)->wc_list.tqe_next->wc_list.tqe_prev = (chainp)->wc_list.tqe_prev; else (head)->tqh_last = (chainp)->wc_list.tqe_prev; *(chainp)->wc_list.tqe_prev = (chainp)->wc_list.tqe_next; ((chainp)->wc_list.tqe_prev) = ((void *)-1); ((chainp)->wc_list.tqe_next) = ((void *)-1); } while (0);
  free(chainp, 2, sizeof *chainp);
  return 0;
 }
 return 1;
}
void
pccbb_winset(bus_addr_t align, struct pccbb_softc *sc, bus_space_tag_t bst)
{
 pci_chipset_tag_t pc;
 pcitag_t tag;
 bus_addr_t mask = ~(align - 1);
 struct {
  pcireg_t win_start;
  pcireg_t win_limit;
  int win_flags;
 } win[2];
 struct pccbb_win_chain *chainp;
 int offs;
 win[0].win_start = win[1].win_start = 0xffffffff;
 win[0].win_limit = win[1].win_limit = 0;
 win[0].win_flags = win[1].win_flags = 0;
 chainp = ((&sc->sc_iowindow)->tqh_first);
 offs = 0x2C;
 if (sc->sc_memt == bst) {
  chainp = ((&sc->sc_memwindow)->tqh_first);
  offs = 0x1C;
 }
 if (chainp != ((void *)0)) {
  win[0].win_start = chainp->wc_start & mask;
  win[0].win_limit = chainp->wc_end & mask;
  win[0].win_flags = chainp->wc_flags;
  chainp = ((chainp)->wc_list.tqe_next);
 }
 for (; chainp != ((void *)0); chainp = ((chainp)->wc_list.tqe_next)) {
  if (win[1].win_start == 0xffffffff) {
   if ((win[0].win_flags == chainp->wc_flags) &&
       (win[0].win_limit + align >=
       (chainp->wc_start & mask))) {
    win[0].win_limit = chainp->wc_end & mask;
   } else {
    win[1].win_start = chainp->wc_start & mask;
    win[1].win_limit = chainp->wc_end & mask;
    win[1].win_flags = chainp->wc_flags;
   }
   continue;
  }
  if (win[0].win_flags == win[1].win_flags) {
   if (win[0].win_flags == chainp->wc_flags) {
    if (win[1].win_start - (win[0].win_limit +
        align) <
        (chainp->wc_start & mask) -
        ((chainp->wc_end & mask) + align)) {
     win[0].win_limit = win[1].win_limit;
     win[1].win_start =
         chainp->wc_start & mask;
     win[1].win_limit =
         chainp->wc_end & mask;
    } else {
     win[1].win_limit =
         chainp->wc_end & mask;
    }
   } else {
    win[0].win_limit = win[1].win_limit;
    win[1].win_start = chainp->wc_start & mask;
    win[1].win_limit = chainp->wc_end & mask;
    win[1].win_flags = chainp->wc_flags;
   }
  } else {
   if (win[0].win_flags == chainp->wc_flags) {
    win[0].win_limit = chainp->wc_end & mask;
    printf("%s: overlapping windows\n",
        sc->sc_dev.dv_xname);
   } else {
    win[1].win_limit = chainp->wc_end & mask;
   }
  }
 }
 pc = sc->sc_pc;
 tag = sc->sc_tag;
 pci_conf_write(pc, tag, offs, win[0].win_start);
 pci_conf_write(pc, tag, offs + 4, win[0].win_limit);
 pci_conf_write(pc, tag, offs + 8, win[1].win_start);
 pci_conf_write(pc, tag, offs + 12, win[1].win_limit);
 ;
 if (bst == sc->sc_memt) {
  pcireg_t bcr = pci_conf_read(pc, tag, 0x3C);
  bcr &= ~(0x01000000 | 0x02000000);
  if (win[0].win_flags & 1)
   bcr |= 0x01000000;
  if (win[1].win_flags & 1)
   bcr |= 0x02000000;
  pci_conf_write(pc, tag, 0x3C, bcr);
 }
}
int
pccbbactivate(struct device *self, int act)
{
 struct pccbb_softc *sc = (struct pccbb_softc *)self;
 pci_chipset_tag_t pc = sc->sc_pc;
 pcitag_t tag = sc->sc_tag;
 pcireg_t csr;
 u_int32_t reg64;
 bus_space_tag_t base_memt = sc->sc_base_memt;
 bus_space_handle_t base_memh = sc->sc_base_memh;
 int rv = 0;
 switch (act) {
 case 3:
  rv = config_activate_children(self, act);
  sc->sc_pil_intr_enable = 0;
  sc->sc_csr = pci_conf_read(pc, tag, 0x04);
  sc->sc_bhlcr = pci_conf_read(pc, tag, 0x0c);
  sc->sc_int = pci_conf_read(pc, tag, 0x3c);
  sc->sc_sockbase = pci_conf_read(pc, tag, 0x10);
  sc->sc_busnum = pci_conf_read(pc, tag, 0x18);
  sc->sc_membase[0] = pci_conf_read(pc, tag, 0x1C);
  sc->sc_memlimit[0] = pci_conf_read(pc, tag, 0x20);
  sc->sc_membase[1] = pci_conf_read(pc, tag, 0x24);
  sc->sc_memlimit[1] = pci_conf_read(pc, tag, 0x28);
  sc->sc_iobase[0] = pci_conf_read(pc, tag, 0x2C);
  sc->sc_iolimit[0] = pci_conf_read(pc, tag, 0x30);
  sc->sc_iobase[1] = pci_conf_read(pc, tag, 0x34);
  sc->sc_iolimit[1] = pci_conf_read(pc, tag, 0x38);
  break;
 case 4:
  pci_conf_write(pc, tag, 0x0c, sc->sc_bhlcr);
  pci_conf_write(pc, tag, 0x3c, sc->sc_int);
  pci_conf_write(pc, tag, 0x10, sc->sc_sockbase);
  pci_conf_write(pc, tag, 0x18, sc->sc_busnum);
  pci_conf_write(pc, tag, 0x1C, sc->sc_membase[0]);
  pci_conf_write(pc, tag, 0x20, sc->sc_memlimit[0]);
  pci_conf_write(pc, tag, 0x24, sc->sc_membase[1]);
  pci_conf_write(pc, tag, 0x28, sc->sc_memlimit[1]);
  pci_conf_write(pc, tag, 0x2C, sc->sc_iobase[0]);
  pci_conf_write(pc, tag, 0x30, sc->sc_iolimit[0]);
  pci_conf_write(pc, tag, 0x34, sc->sc_iobase[1]);
  pci_conf_write(pc, tag, 0x38, sc->sc_iolimit[1]);
  pccbb_legacy_disable(sc);
  csr = pci_conf_read(pc, tag, 0x04);
  pci_conf_write(pc, tag, 0x04,
      (csr & 0xffff0000) | (sc->sc_csr & 0x0000ffff));
  reg64 = bus_space_read_4(base_memt, base_memh, 0x04);
  reg64 |= 0x06;
  bus_space_write_4(base_memt, base_memh, 0x04, reg64);
  reg64 = bus_space_read_4(base_memt, base_memh, 0x00);
  bus_space_write_4(base_memt, base_memh, 0x00, reg64);
  pccbb_checksockstat(sc);
  rv = config_activate_children(self, act);
  sc->sc_pil_intr_enable = 1;
  break;
 case 6:
  rv = config_activate_children(self, act);
  pccbb_shutdown(self);
  break;
 default:
  rv = config_activate_children(self, act);
  break;
 }
 return (rv);
}
