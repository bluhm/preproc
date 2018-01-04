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
struct nameidata {
 const char *ni_dirp;
 int ni_dirfd;
 enum uio_seg ni_segflg;
 struct vnode *ni_startdir;
 struct vnode *ni_rootdir;
 uint64_t ni_pledge;
 struct vnode *ni_vp;
 struct vnode *ni_dvp;
 size_t ni_pathlen;
 char *ni_next;
 u_long ni_loopcnt;
 struct componentname {
  u_long cn_nameiop;
  u_long cn_flags;
  struct proc *cn_proc;
  struct ucred *cn_cred;
  char *cn_pnbuf;
  char *cn_nameptr;
  long cn_namelen;
  long cn_consume;
 } ni_cnd;
};
void ndinitat(struct nameidata *ndp, u_long op, u_long flags,
    enum uio_seg segflg, int dirfd, const char *namep, struct proc *p);
struct namecache {
 struct { struct namecache *tqe_next; struct namecache **tqe_prev; } nc_lru;
 struct { struct namecache *tqe_next; struct namecache **tqe_prev; } nc_neg;
 struct rb_entry n_rbcache;
 struct { struct namecache *tqe_next; struct namecache **tqe_prev; } nc_me;
 struct vnode *nc_dvp;
 u_long nc_dvpid;
 struct vnode *nc_vp;
 u_long nc_vpid;
 char nc_nlen;
 char nc_name[31];
};
struct namecache_rb_cache;
int namei(struct nameidata *ndp);
int vfs_lookup(struct nameidata *ndp);
int vfs_relookup(struct vnode *dvp, struct vnode **vpp,
        struct componentname *cnp);
void cache_tree_init(struct namecache_rb_cache *);
void cache_purge(struct vnode *);
int cache_lookup(struct vnode *, struct vnode **, struct componentname *);
void cache_enter(struct vnode *, struct vnode *, struct componentname *);
int cache_revlookup(struct vnode *, struct vnode **, char **, char *);
void nchinit(void);
struct mount;
void cache_purgevfs(struct mount *);
extern struct pool namei_pool;
struct nchstats {
 u_int64_t ncs_goodhits;
 u_int64_t ncs_neghits;
 u_int64_t ncs_badhits;
 u_int64_t ncs_falsehits;
 u_int64_t ncs_miss;
 u_int64_t ncs_long;
 u_int64_t ncs_pass2;
 u_int64_t ncs_2passes;
 u_int64_t ncs_revhits;
 u_int64_t ncs_revmiss;
 u_int64_t ncs_dothits;
 u_int64_t ncs_dotdothits;
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
struct plimit {
 struct rlimit pl_rlimit[9];
 int p_refcnt;
};
void addupc_intr(struct proc *, u_long);
void addupc_task(struct proc *, u_long, u_int);
void tuagg_unlocked(struct process *, struct proc *);
void tuagg(struct process *, struct proc *);
struct tusage;
void calctsru(struct tusage *, struct timespec *, struct timespec *,
     struct timespec *);
void calcru(struct tusage *, struct timeval *, struct timeval *,
     struct timeval *);
struct plimit *limcopy(struct plimit *);
void limfree(struct plimit *);
void ruadd(struct rusage *, struct rusage *);
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
struct flock {
 off_t l_start;
 off_t l_len;
 pid_t l_pid;
 short l_type;
 short l_whence;
};
struct proc;
struct uio;
struct knote;
struct stat;
struct file;
struct ucred;
struct fileops {
 int (*fo_read)(struct file *, off_t *, struct uio *,
      struct ucred *);
 int (*fo_write)(struct file *, off_t *, struct uio *,
      struct ucred *);
 int (*fo_ioctl)(struct file *, u_long, caddr_t,
      struct proc *);
 int (*fo_poll)(struct file *, int, struct proc *);
 int (*fo_kqfilter)(struct file *, struct knote *);
 int (*fo_stat)(struct file *, struct stat *, struct proc *);
 int (*fo_close)(struct file *, struct proc *);
};
struct file {
 struct { struct file *le_next; struct file **le_prev; } f_list;
 short f_flag;
 short f_type;
 long f_count;
 struct ucred *f_cred;
 struct fileops *f_ops;
 off_t f_offset;
 void *f_data;
 int f_iflags;
 u_int64_t f_rxfer;
 u_int64_t f_wxfer;
 u_int64_t f_seek;
 u_int64_t f_rbytes;
 u_int64_t f_wbytes;
};
int fdrop(struct file *, struct proc *);
struct filelist { struct file *lh_first; };
extern struct filelist filehead;
extern int maxfiles;
extern int numfiles;
extern struct fileops vnops;
struct stat {
 mode_t st_mode;
 dev_t st_dev;
 ino_t st_ino;
 nlink_t st_nlink;
 uid_t st_uid;
 gid_t st_gid;
 dev_t st_rdev;
 struct timespec st_atim;
 struct timespec st_mtim;
 struct timespec st_ctim;
 off_t st_size;
 blkcnt_t st_blocks;
 blksize_t st_blksize;
 u_int32_t st_flags;
 u_int32_t st_gen;
 struct timespec __st_birthtim;
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

struct mdproc {
 struct trapframe64 *md_tf;
 struct fpstate64 *md_fpstate;
 volatile int md_astpending;
};
struct kevent {
 __uintptr_t ident;
 short filter;
 unsigned short flags;
 unsigned int fflags;
 __int64_t data;
 void *udata;
};
struct knote;
struct klist { struct knote *slh_first; };
struct filterops {
 int f_isfd;
 int (*f_attach)(struct knote *kn);
 void (*f_detach)(struct knote *kn);
 int (*f_event)(struct knote *kn, long hint);
};
struct knote {
 struct { struct knote *sle_next; } kn_link;
 struct { struct knote *sle_next; } kn_selnext;
 struct { struct knote *tqe_next; struct knote **tqe_prev; } kn_tqe;
 struct kqueue *kn_kq;
 struct kevent kn_kevent;
 int kn_status;
 int kn_sfflags;
 __int64_t kn_sdata;
 union {
  struct file *p_fp;
  struct process *p_process;
 } kn_ptr;
 const struct filterops *kn_fop;
 void *kn_hook;
};
struct proc;
extern void knote(struct klist *list, long hint);
extern void knote_activate(struct knote *);
extern void knote_remove(struct proc *p, struct klist *list);
extern void knote_fdclose(struct proc *p, int fd);
extern void knote_processexit(struct proc *);
extern int kqueue_register(struct kqueue *kq,
      struct kevent *kev, struct proc *p);
extern int filt_seltrue(struct knote *kn, long hint);
extern int seltrue_kqfilter(dev_t, struct knote *);
extern void klist_invalidate(struct klist *);
struct selinfo {
 struct klist si_note;
 pid_t si_seltid;
 short si_flags;
};
struct proc;
void selrecord(struct proc *selector, struct selinfo *);
void selwakeup(struct selinfo *);
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
struct process;
struct session {
 int s_count;
 struct process *s_leader;
 struct vnode *s_ttyvp;
 struct tty *s_ttyp;
 char s_login[32];
 pid_t s_verauthppid;
 uid_t s_verauthuid;
 struct timeout s_verauthto;
};
void zapverauth( void *);
struct pgrp {
 struct { struct pgrp *le_next; struct pgrp **le_prev; } pg_hash;
 struct { struct process *lh_first; } pg_members;
 struct session *pg_session;
 pid_t pg_id;
 int pg_jobc;
};
struct exec_package;
struct proc;
struct ps_strings;
struct uvm_object;
union sigval;
struct emul {
 char e_name[8];
 int *e_errno;
 void (*e_sendsig)(void (*)(int), int, int, u_long, int, union sigval);
 int e_nosys;
 int e_nsysent;
 struct sysent *e_sysent;
 char **e_syscallnames;
 int e_arglen;
 void *(*e_copyargs)(struct exec_package *, struct ps_strings *,
        void *, void *);
 void (*e_setregs)(struct proc *, struct exec_package *,
      u_long, register_t *);
 int (*e_fixup)(struct proc *, struct exec_package *);
 int (*e_coredump)(struct proc *, void *cookie);
 char *e_sigcode;
 char *e_esigcode;
 char *e_esigret;
 int e_flags;
 struct uvm_object *e_sigobject;
};
struct tusage {
 struct timespec tu_runtime;
 uint64_t tu_uticks;
 uint64_t tu_sticks;
 uint64_t tu_iticks;
};
struct process {
 struct proc *ps_mainproc;
 struct ucred *ps_ucred;
 struct { struct process *le_next; struct process **le_prev; } ps_list;
 struct { struct proc *tqh_first; struct proc **tqh_last; } ps_threads;
 struct { struct process *le_next; struct process **le_prev; } ps_pglist;
 struct process *ps_pptr;
 struct { struct process *le_next; struct process **le_prev; } ps_sibling;
 struct { struct process *lh_first; } ps_children;
 struct { struct process *le_next; struct process **le_prev; } ps_hash;
 struct sigacts *ps_sigacts;
 struct vnode *ps_textvp;
 struct filedesc *ps_fd;
 struct vmspace *ps_vmspace;
 pid_t ps_pid;
 struct klist ps_klist;
 int ps_flags;
 struct proc *ps_single;
 int ps_singlecount;
 int ps_traceflag;
 struct vnode *ps_tracevp;
 struct ucred *ps_tracecred;
 pid_t ps_oppid;
 int ps_ptmask;
 struct ptrace_state *ps_ptstat;
 struct rusage *ps_ru;
 struct tusage ps_tu;
 struct rusage ps_cru;
 struct itimerval ps_timer[3];
 u_int64_t ps_wxcounter;
 struct plimit *ps_limit;
 struct pgrp *ps_pgrp;
 struct emul *ps_emul;
 char ps_comm[16 +1];
 vaddr_t ps_strings;
 vaddr_t ps_sigcode;
 vaddr_t ps_sigcoderet;
 u_long ps_sigcookie;
 u_int ps_rtableid;
 char ps_nice;
 struct uprof {
  caddr_t pr_base;
  size_t pr_size;
  u_long pr_off;
  u_int pr_scale;
 } ps_prof;
 u_short ps_acflag;
 uint64_t ps_pledge;
 uint64_t ps_execpledge;
 int64_t ps_kbind_cookie;
 u_long ps_kbind_addr;
 int ps_refcnt;
 struct timespec ps_start;
 struct timeout ps_realit_to;
};
struct lock_list_entry;
struct proc {
 struct { struct proc *tqe_next; struct proc **tqe_prev; } p_runq;
 struct { struct proc *le_next; struct proc **le_prev; } p_list;
 struct process *p_p;
 struct { struct proc *tqe_next; struct proc **tqe_prev; } p_thr_link;
 struct { struct proc *tqe_next; struct proc **tqe_prev; } p_fut_link;
 struct futex *p_futex;
 struct filedesc *p_fd;
 struct vmspace *p_vmspace;
 int p_flag;
 u_char p_spare;
 char p_stat;
 char p_pad1[1];
 u_char p_descfd;
 pid_t p_tid;
 struct { struct proc *le_next; struct proc **le_prev; } p_hash;
 int p_dupfd;
 long p_thrslpid;
 u_int p_estcpu;
 int p_cpticks;
 const volatile void *p_wchan;
 struct timeout p_sleep_to;
 const char *p_wmesg;
 fixpt_t p_pctcpu;
 u_int p_slptime;
 u_int p_uticks;
 u_int p_sticks;
 u_int p_iticks;
 struct cpu_info * volatile p_cpu;
 struct rusage p_ru;
 struct tusage p_tu;
 struct timespec p_rtime;
 int p_siglist;
 sigset_t p_sigmask;
 u_char p_priority;
 u_char p_usrpri;
 int p_pledge_syscall;
 struct ucred *p_ucred;
 struct sigaltstack p_sigstk;
 u_long p_prof_addr;
 u_long p_prof_ticks;
 struct user *p_addr;
 struct mdproc p_md;
 sigset_t p_oldmask;
 int p_sisig;
 union sigval p_sigval;
 long p_sitrapno;
 int p_sicode;
 u_short p_xstat;
 struct lock_list_entry *p_sleeplocks;
};
struct uidinfo {
 struct { struct uidinfo *le_next; struct uidinfo **le_prev; } ui_hash;
 uid_t ui_uid;
 long ui_proccnt;
 long ui_lockcnt;
};
struct uidinfo *uid_find(uid_t);
extern struct tidhashhead { struct proc *lh_first; } *tidhashtbl;
extern u_long tidhash;
extern struct pidhashhead { struct process *lh_first; } *pidhashtbl;
extern u_long pidhash;
extern struct pgrphashhead { struct pgrp *lh_first; } *pgrphashtbl;
extern u_long pgrphash;
extern struct proc proc0;
extern struct process process0;
extern int nprocesses, maxprocess;
extern int nthreads, maxthread;
extern int randompid;
struct proclist { struct proc *lh_first; };
struct processlist { struct process *lh_first; };
extern struct processlist allprocess;
extern struct processlist zombprocess;
extern struct proclist allproc;
extern struct process *initprocess;
extern struct proc *reaperproc;
extern struct proc *syncerproc;
extern struct pool process_pool;
extern struct pool proc_pool;
extern struct pool rusage_pool;
extern struct pool ucred_pool;
extern struct pool session_pool;
extern struct pool pgrp_pool;
void freepid(pid_t);
struct process *prfind(pid_t);
struct process *zombiefind(pid_t);
struct proc *tfind(pid_t);
struct pgrp *pgfind(pid_t);
void proc_printit(struct proc *p, const char *modif,
    int (*pr)(const char *, ...));
int chgproccnt(uid_t uid, int diff);
int enterpgrp(struct process *, pid_t, struct pgrp *, struct session *);
void fixjobc(struct process *, struct pgrp *, int);
int inferior(struct process *, struct process *);
void leavepgrp(struct process *);
void preempt(void);
void pgdelete(struct pgrp *);
void procinit(void);
void resetpriority(struct proc *);
void setrunnable(struct proc *);
void endtsleep(void *);
void unsleep(struct proc *);
void reaper(void);
void exit1(struct proc *, int, int);
void exit2(struct proc *);
int dowait4(struct proc *, pid_t, int *, int, struct rusage *,
     register_t *);
void cpu_fork(struct proc *_curp, struct proc *_child, void *_stack,
     void *_tcb, void (*_func)(void *), void *_arg);
void cpu_exit(struct proc *);
void process_initialize(struct process *, struct proc *);
int fork1(struct proc *_curp, int _flags, void (*_func)(void *),
     void *_arg, register_t *_retval, struct proc **_newprocp);
int thread_fork(struct proc *_curp, void *_stack, void *_tcb,
     pid_t *_tidptr, register_t *_retval);
int groupmember(gid_t, struct ucred *);
void dorefreshcreds(struct process *, struct proc *);
void dosigsuspend(struct proc *, sigset_t);
static inline void
refreshcreds(struct proc *p)
{
 struct process *pr = p->p_p;
 if (pr->ps_ucred != p->p_ucred)
  dorefreshcreds(pr, p);
}
enum single_thread_mode {
 SINGLE_SUSPEND,
 SINGLE_PTRACE,
 SINGLE_UNWIND,
 SINGLE_EXIT
};
int single_thread_set(struct proc *, enum single_thread_mode, int);
void single_thread_wait(struct process *);
void single_thread_clear(struct proc *, int);
int single_thread_check(struct proc *, int);
void child_return(void *);
int proc_cansugid(struct proc *);
struct sleep_state {
 int sls_s;
 int sls_catch;
 int sls_do_sleep;
 int sls_sig;
};
struct cond {
 int c_wait;
};
void proc_trampoline_mp(void);
struct cpuset {
 int cs_set[(((256) - 1)/32 + 1)];
};
void cpuset_init_cpu(struct cpu_info *);
void cpuset_clear(struct cpuset *);
void cpuset_add(struct cpuset *, struct cpu_info *);
void cpuset_del(struct cpuset *, struct cpu_info *);
int cpuset_isset(struct cpuset *, struct cpu_info *);
void cpuset_add_all(struct cpuset *);
void cpuset_copy(struct cpuset *, struct cpuset *);
void cpuset_union(struct cpuset *, struct cpuset *, struct cpuset *);
void cpuset_intersection(struct cpuset *t, struct cpuset *, struct cpuset *);
void cpuset_complement(struct cpuset *, struct cpuset *, struct cpuset *);
struct cpu_info *cpuset_first(struct cpuset *);
typedef struct { int32_t val[2]; } fsid_t;
struct fid {
 u_short fid_len;
 u_short fid_reserved;
 char fid_data[16];
};
struct export_args {
 int ex_flags;
 uid_t ex_root;
 struct xucred ex_anon;
 struct sockaddr *ex_addr;
 int ex_addrlen;
 struct sockaddr *ex_mask;
 int ex_masklen;
};
struct ufs_args {
 char *fspec;
 struct export_args export_info;
};
struct mfs_args {
 char *fspec;
 struct export_args export_info;
 caddr_t base;
 u_long size;
};
struct iso_args {
 char *fspec;
 struct export_args export_info;
 int flags;
 int sess;
};
struct nfs_args {
 int version;
 struct sockaddr *addr;
 int addrlen;
 int sotype;
 int proto;
 u_char *fh;
 int fhsize;
 int flags;
 int wsize;
 int rsize;
 int readdirsize;
 int timeo;
 int retrans;
 int maxgrouplist;
 int readahead;
 int leaseterm;
 int deadthresh;
 char *hostname;
 int acregmin;
 int acregmax;
 int acdirmin;
 int acdirmax;
};
struct msdosfs_args {
 char *fspec;
 struct export_args export_info;
 uid_t uid;
 gid_t gid;
 mode_t mask;
 int flags;
};
struct ntfs_args {
 char *fspec;
 struct export_args export_info;
 uid_t uid;
 gid_t gid;
 mode_t mode;
 u_long flag;
};
struct udf_args {
 char *fspec;
 u_int32_t lastblock;
};
struct tmpfs_args {
 int ta_version;
 ino_t ta_nodes_max;
 off_t ta_size_max;
 uid_t ta_root_uid;
 gid_t ta_root_gid;
 mode_t ta_root_mode;
};
struct fusefs_args {
 char *name;
 int fd;
 int max_read;
};
union mount_info {
 struct ufs_args ufs_args;
 struct mfs_args mfs_args;
 struct nfs_args nfs_args;
 struct iso_args iso_args;
 struct msdosfs_args msdosfs_args;
 struct ntfs_args ntfs_args;
 struct tmpfs_args tmpfs_args;
 char __align[160];
};
struct statfs {
 u_int32_t f_flags;
 u_int32_t f_bsize;
 u_int32_t f_iosize;
 u_int64_t f_blocks;
 u_int64_t f_bfree;
 int64_t f_bavail;
 u_int64_t f_files;
 u_int64_t f_ffree;
 int64_t f_favail;
 u_int64_t f_syncwrites;
 u_int64_t f_syncreads;
 u_int64_t f_asyncwrites;
 u_int64_t f_asyncreads;
 fsid_t f_fsid;
 u_int32_t f_namemax;
 uid_t f_owner;
 u_int64_t f_ctime;
 char f_fstypename[16];
 char f_mntonname[90];
 char f_mntfromname[90];
 char f_mntfromspec[90];
 union mount_info mount_info;
};
struct vnodelst { struct vnode *lh_first; };
struct mount {
 struct { struct mount *tqe_next; struct mount **tqe_prev; } mnt_list;
 struct { struct mount *sle_next; } mnt_dounmount;
 const struct vfsops *mnt_op;
 struct vfsconf *mnt_vfc;
 struct vnode *mnt_vnodecovered;
 struct vnode *mnt_syncer;
 struct vnodelst mnt_vnodelist;
 struct rwlock mnt_lock;
 int mnt_flag;
 struct statfs mnt_stat;
 void *mnt_data;
};
struct fhandle {
 fsid_t fh_fsid;
 struct fid fh_fid;
};
typedef struct fhandle fhandle_t;
struct vfsconf {
 const struct vfsops *vfc_vfsops;
 char vfc_name[16];
 int vfc_typenum;
 int vfc_refcount;
 int vfc_flags;
 struct vfsconf *vfc_next;
 size_t vfc_datasize;
};
struct bcachestats {
 int64_t numbufs;
 int64_t numbufpages;
 int64_t numdirtypages;
 int64_t numcleanpages;
 int64_t pendingwrites;
 int64_t pendingreads;
 int64_t numwrites;
 int64_t numreads;
 int64_t cachehits;
 int64_t busymapped;
 int64_t dmapages;
 int64_t highpages;
 int64_t delwribufs;
 int64_t kvaslots;
 int64_t kvaslots_avail;
 int64_t highflips;
 int64_t highflops;
 int64_t dmaflips;
};
extern struct bcachestats bcstats;
extern long buflowpages, bufhighpages, bufbackpages;
extern int bufcachepercent;
extern void bufadjust(int);
struct uvm_constraint_range;
extern int bufbackoff(struct uvm_constraint_range*, long);
struct nameidata;
struct mbuf;
extern int maxvfsconf;
extern struct vfsconf *vfsconf;
struct vfsops {
 int (*vfs_mount)(struct mount *mp, const char *path,
        void *data,
        struct nameidata *ndp, struct proc *p);
 int (*vfs_start)(struct mount *mp, int flags,
        struct proc *p);
 int (*vfs_unmount)(struct mount *mp, int mntflags,
        struct proc *p);
 int (*vfs_root)(struct mount *mp, struct vnode **vpp);
 int (*vfs_quotactl)(struct mount *mp, int cmds, uid_t uid,
        caddr_t arg, struct proc *p);
 int (*vfs_statfs)(struct mount *mp, struct statfs *sbp,
        struct proc *p);
 int (*vfs_sync)(struct mount *mp, int waitfor,
        struct ucred *cred, struct proc *p);
 int (*vfs_vget)(struct mount *mp, ino_t ino,
        struct vnode **vpp);
 int (*vfs_fhtovp)(struct mount *mp, struct fid *fhp,
         struct vnode **vpp);
 int (*vfs_vptofh)(struct vnode *vp, struct fid *fhp);
 int (*vfs_init)(struct vfsconf *);
 int (*vfs_sysctl)(int *, u_int, void *, size_t *, void *,
         size_t, struct proc *);
 int (*vfs_checkexp)(struct mount *mp, struct mbuf *nam,
        int *extflagsp, struct ucred **credanonp);
};
struct radix_node {
 struct radix_mask *rn_mklist;
 struct radix_node *rn_p;
 short rn_b;
 char rn_bmask;
 u_char rn_flags;
 union {
  struct {
   caddr_t rn_Key;
   caddr_t rn_Mask;
   struct radix_node *rn_Dupedkey;
  } rn_leaf;
  struct {
   int rn_Off;
   struct radix_node *rn_L;
   struct radix_node *rn_R;
  } rn_node;
 } rn_u;
};
struct radix_mask {
 short rm_b;
 char rm_unused;
 u_char rm_flags;
 struct radix_mask *rm_mklist;
 union {
  caddr_t rmu_mask;
  struct radix_node *rmu_leaf;
 } rm_rmu;
 int rm_refs;
};
struct radix_node_head {
 struct radix_node *rnh_treetop;
 int rnh_addrsize;
 int rnh_pktsize;
 struct radix_node rnh_nodes[3];
 u_int rnh_rtableid;
};
void rn_init(unsigned int);
int rn_inithead(void **, int);
int rn_walktree(struct radix_node_head *,
     int (*)(struct radix_node *, void *, u_int), void *);
struct radix_node *rn_addroute(void *, void *, struct radix_node_head *,
       struct radix_node [2], u_int8_t);
struct radix_node *rn_delete(void *, void *, struct radix_node_head *,
       struct radix_node *);
struct radix_node *rn_lookup(void *, void *, struct radix_node_head *);
struct radix_node *rn_match(void *, struct radix_node_head *);
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
struct netcred {
 struct radix_node netc_rnodes[2];
 int netc_exflags;
 struct ucred netc_anon;
};
struct netexport {
 struct netcred ne_defexported;
 struct radix_node_head *ne_rtable_inet;
};
int vfs_busy(struct mount *, int);
int vfs_isbusy(struct mount *);
int vfs_mount_foreach_vnode(struct mount *, int (*func)(struct vnode *,
        void *), void *);
void vfs_getnewfsid(struct mount *);
struct mount *vfs_getvfs(fsid_t *);
int vfs_mountedon(struct vnode *);
int vfs_rootmountalloc(char *, char *, struct mount **);
void vfs_unbusy(struct mount *);
extern struct mntlist { struct mount *tqh_first; struct mount **tqh_last; } mountlist;
struct mount *getvfs(fsid_t *);
int vfs_export(struct mount *, struct netexport *, struct export_args *);
struct netcred *vfs_export_lookup(struct mount *, struct netexport *,
     struct mbuf *);
int vfs_allocate_syncvnode(struct mount *);
int speedup_syncer(void);
int vfs_syncwait(struct proc *, int);
void vfs_shutdown(struct proc *);
int dounmount(struct mount *, int, struct proc *);
void vfsinit(void);
int vfs_register(struct vfsconf *);
int vfs_unregister(struct vfsconf *);
enum vtype { VNON, VREG, VDIR, VBLK, VCHR, VLNK, VSOCK, VFIFO, VBAD };
enum vtagtype {
 VT_NON, VT_UFS, VT_NFS, VT_MFS, VT_MSDOSFS,
 VT_PORTAL, VT_PROCFS, VT_AFS, VT_ISOFS, VT_ADOSFS,
 VT_EXT2FS, VT_VFS, VT_NTFS, VT_UDF, VT_FUSEFS, VT_TMPFS,
};
struct buflists { struct buf *lh_first; };
struct buf_rb_bufs { struct rb_tree rbh_root; };
struct namecache;
struct namecache_rb_cache { struct rb_tree rbh_root; };
struct uvm_vnode;
struct vnode {
 struct uvm_vnode *v_uvm;
 struct vops *v_op;
 enum vtype v_type;
 enum vtagtype v_tag;
 u_int v_flag;
 u_int v_usecount;
 u_int v_writecount;
 u_int v_bioflag;
 u_int v_holdcnt;
 u_int v_id;
 struct mount *v_mount;
 struct { struct vnode *tqe_next; struct vnode **tqe_prev; } v_freelist;
 struct { struct vnode *le_next; struct vnode **le_prev; } v_mntvnodes;
 struct buf_rb_bufs v_bufs_tree;
 struct buflists v_cleanblkhd;
 struct buflists v_dirtyblkhd;
 u_int v_numoutput;
 struct { struct vnode *le_next; struct vnode **le_prev; } v_synclist;
 union {
  struct mount *vu_mountedhere;
  struct socket *vu_socket;
  struct specinfo *vu_specinfo;
  struct fifoinfo *vu_fifoinfo;
 } v_un;
 struct namecache_rb_cache v_nc_tree;
 struct { struct namecache *tqh_first; struct namecache **tqh_last; } v_cache_dst;
 void *v_data;
 struct selinfo v_selectinfo;
};
struct vattr {
 enum vtype va_type;
 mode_t va_mode;
 nlink_t va_nlink;
 uid_t va_uid;
 gid_t va_gid;
 long va_fsid;
 u_quad_t va_fileid;
 u_quad_t va_size;
 long va_blocksize;
 struct timespec va_atime;
 struct timespec va_mtime;
 struct timespec va_ctime;
 u_long va_gen;
 u_long va_flags;
 dev_t va_rdev;
 u_quad_t va_bytes;
 u_quad_t va_filerev;
 u_int va_vaflags;
 long va_spare;
};
extern const struct rb_type *const buf_rb_bufs_RBT_TYPE; __attribute__((__unused__)) static inline void buf_rb_bufs_RBT_INIT(struct buf_rb_bufs *head) { _rb_init(&head->rbh_root); } __attribute__((__unused__)) static inline struct buf * buf_rb_bufs_RBT_INSERT(struct buf_rb_bufs *head, struct buf *elm) { return _rb_insert(buf_rb_bufs_RBT_TYPE, &head->rbh_root, elm); } __attribute__((__unused__)) static inline struct buf * buf_rb_bufs_RBT_REMOVE(struct buf_rb_bufs *head, struct buf *elm) { return _rb_remove(buf_rb_bufs_RBT_TYPE, &head->rbh_root, elm); } __attribute__((__unused__)) static inline struct buf * buf_rb_bufs_RBT_FIND(struct buf_rb_bufs *head, const struct buf *key) { return _rb_find(buf_rb_bufs_RBT_TYPE, &head->rbh_root, key); } __attribute__((__unused__)) static inline struct buf * buf_rb_bufs_RBT_NFIND(struct buf_rb_bufs *head, const struct buf *key) { return _rb_nfind(buf_rb_bufs_RBT_TYPE, &head->rbh_root, key); } __attribute__((__unused__)) static inline struct buf * buf_rb_bufs_RBT_ROOT(struct buf_rb_bufs *head) { return _rb_root(buf_rb_bufs_RBT_TYPE, &head->rbh_root); } __attribute__((__unused__)) static inline int buf_rb_bufs_RBT_EMPTY(struct buf_rb_bufs *head) { return _rb_empty(&head->rbh_root); } __attribute__((__unused__)) static inline struct buf * buf_rb_bufs_RBT_MIN(struct buf_rb_bufs *head) { return _rb_min(buf_rb_bufs_RBT_TYPE, &head->rbh_root); } __attribute__((__unused__)) static inline struct buf * buf_rb_bufs_RBT_MAX(struct buf_rb_bufs *head) { return _rb_max(buf_rb_bufs_RBT_TYPE, &head->rbh_root); } __attribute__((__unused__)) static inline struct buf * buf_rb_bufs_RBT_NEXT(struct buf *elm) { return _rb_next(buf_rb_bufs_RBT_TYPE, elm); } __attribute__((__unused__)) static inline struct buf * buf_rb_bufs_RBT_PREV(struct buf *elm) { return _rb_prev(buf_rb_bufs_RBT_TYPE, elm); } __attribute__((__unused__)) static inline struct buf * buf_rb_bufs_RBT_LEFT(struct buf *elm) { return _rb_left(buf_rb_bufs_RBT_TYPE, elm); } __attribute__((__unused__)) static inline struct buf * buf_rb_bufs_RBT_RIGHT(struct buf *elm) { return _rb_right(buf_rb_bufs_RBT_TYPE, elm); } __attribute__((__unused__)) static inline struct buf * buf_rb_bufs_RBT_PARENT(struct buf *elm) { return _rb_parent(buf_rb_bufs_RBT_TYPE, elm); } __attribute__((__unused__)) static inline void buf_rb_bufs_RBT_SET_LEFT(struct buf *elm, struct buf *left) { return _rb_set_left(buf_rb_bufs_RBT_TYPE, elm, left); } __attribute__((__unused__)) static inline void buf_rb_bufs_RBT_SET_RIGHT(struct buf *elm, struct buf *right) { return _rb_set_right(buf_rb_bufs_RBT_TYPE, elm, right); } __attribute__((__unused__)) static inline void buf_rb_bufs_RBT_SET_PARENT(struct buf *elm, struct buf *parent) { return _rb_set_parent(buf_rb_bufs_RBT_TYPE, elm, parent); } __attribute__((__unused__)) static inline void buf_rb_bufs_RBT_POISON(struct buf *elm, unsigned long poison) { return _rb_poison(buf_rb_bufs_RBT_TYPE, elm, poison); } __attribute__((__unused__)) static inline int buf_rb_bufs_RBT_CHECK(struct buf *elm, unsigned long poison) { return _rb_check(buf_rb_bufs_RBT_TYPE, elm, poison); };
extern enum vtype iftovt_tab[];
extern int vttoif_tab[];
struct freelst { struct vnode *tqh_first; struct vnode **tqh_last; };
extern struct freelst vnode_hold_list;
extern struct freelst vnode_free_list;
extern struct vnode *rootvnode;
extern int initialvnodes;
extern int maxvnodes;
extern int syncdelay;
extern int rushjob;
extern void vhold(struct vnode *);
extern void vdrop(struct vnode *);
struct vops {
 int (*vop_lock)(void *);
 int (*vop_unlock)(void *);
 int (*vop_islocked)(void *);
 int (*vop_abortop)(void *);
 int (*vop_access)(void *);
 int (*vop_advlock)(void *);
 int (*vop_bmap)(void *);
 int (*vop_bwrite)(void *);
 int (*vop_close)(void *);
 int (*vop_create)(void *);
 int (*vop_fsync)(void *);
 int (*vop_getattr)(void *);
 int (*vop_inactive)(void *);
 int (*vop_ioctl)(void *);
 int (*vop_link)(void *);
 int (*vop_lookup)(void *);
 int (*vop_mknod)(void *);
 int (*vop_open)(void *);
 int (*vop_pathconf)(void *);
 int (*vop_poll)(void *);
 int (*vop_print)(void *);
 int (*vop_read)(void *);
 int (*vop_readdir)(void *);
 int (*vop_readlink)(void *);
 int (*vop_reclaim)(void *);
 int (*vop_remove)(void *);
 int (*vop_rename)(void *);
 int (*vop_revoke)(void *);
 int (*vop_mkdir)(void *);
 int (*vop_rmdir)(void *);
 int (*vop_setattr)(void *);
 int (*vop_strategy)(void *);
 int (*vop_symlink)(void *);
 int (*vop_write)(void *);
 int (*vop_kqfilter)(void *);
};
extern struct vops dead_vops;
extern struct vops spec_vops;
struct vop_generic_args {
 void *a_garbage;
};
struct vop_islocked_args {
 struct vnode *a_vp;
};
int VOP_ISLOCKED(struct vnode *);
struct vop_lookup_args {
 struct vnode *a_dvp;
 struct vnode **a_vpp;
 struct componentname *a_cnp;
};
int VOP_LOOKUP(struct vnode *, struct vnode **, struct componentname *);
struct vop_create_args {
 struct vnode *a_dvp;
 struct vnode **a_vpp;
 struct componentname *a_cnp;
 struct vattr *a_vap;
};
int VOP_CREATE(struct vnode *, struct vnode **, struct componentname *,
    struct vattr *);
struct vop_mknod_args {
 struct vnode *a_dvp;
 struct vnode **a_vpp;
 struct componentname *a_cnp;
 struct vattr *a_vap;
};
int VOP_MKNOD(struct vnode *, struct vnode **, struct componentname *,
    struct vattr *);
struct vop_open_args {
 struct vnode *a_vp;
 int a_mode;
 struct ucred *a_cred;
 struct proc *a_p;
};
int VOP_OPEN(struct vnode *, int, struct ucred *, struct proc *);
struct vop_close_args {
 struct vnode *a_vp;
 int a_fflag;
 struct ucred *a_cred;
 struct proc *a_p;
};
int VOP_CLOSE(struct vnode *, int, struct ucred *, struct proc *);
struct vop_access_args {
 struct vnode *a_vp;
 int a_mode;
 struct ucred *a_cred;
 struct proc *a_p;
};
int VOP_ACCESS(struct vnode *, int, struct ucred *, struct proc *);
struct vop_getattr_args {
 struct vnode *a_vp;
 struct vattr *a_vap;
 struct ucred *a_cred;
 struct proc *a_p;
};
int VOP_GETATTR(struct vnode *, struct vattr *, struct ucred *, struct proc *);
struct vop_setattr_args {
 struct vnode *a_vp;
 struct vattr *a_vap;
 struct ucred *a_cred;
 struct proc *a_p;
};
int VOP_SETATTR(struct vnode *, struct vattr *, struct ucred *, struct proc *);
struct vop_read_args {
 struct vnode *a_vp;
 struct uio *a_uio;
 int a_ioflag;
 struct ucred *a_cred;
};
int VOP_READ(struct vnode *, struct uio *, int, struct ucred *);
struct vop_write_args {
 struct vnode *a_vp;
 struct uio *a_uio;
 int a_ioflag;
 struct ucred *a_cred;
};
int VOP_WRITE(struct vnode *, struct uio *, int, struct ucred *);
struct vop_ioctl_args {
 struct vnode *a_vp;
 u_long a_command;
 void *a_data;
 int a_fflag;
 struct ucred *a_cred;
 struct proc *a_p;
};
int VOP_IOCTL(struct vnode *, u_long, void *, int, struct ucred *,
    struct proc *);
struct vop_poll_args {
 struct vnode *a_vp;
 int a_fflag;
 int a_events;
 struct proc *a_p;
};
int VOP_POLL(struct vnode *, int, int, struct proc *);
struct vop_kqfilter_args {
 struct vnode *a_vp;
 struct knote *a_kn;
};
int VOP_KQFILTER(struct vnode *, struct knote *);
struct vop_revoke_args {
 struct vnode *a_vp;
 int a_flags;
};
int VOP_REVOKE(struct vnode *, int);
struct vop_fsync_args {
 struct vnode *a_vp;
 struct ucred *a_cred;
 int a_waitfor;
 struct proc *a_p;
};
int VOP_FSYNC(struct vnode *, struct ucred *, int, struct proc *);
struct vop_remove_args {
 struct vnode *a_dvp;
 struct vnode *a_vp;
 struct componentname *a_cnp;
};
int VOP_REMOVE(struct vnode *, struct vnode *, struct componentname *);
struct vop_link_args {
 struct vnode *a_dvp;
 struct vnode *a_vp;
 struct componentname *a_cnp;
};
int VOP_LINK(struct vnode *, struct vnode *, struct componentname *);
struct vop_rename_args {
 struct vnode *a_fdvp;
 struct vnode *a_fvp;
 struct componentname *a_fcnp;
 struct vnode *a_tdvp;
 struct vnode *a_tvp;
 struct componentname *a_tcnp;
};
int VOP_RENAME(struct vnode *, struct vnode *, struct componentname *,
    struct vnode *, struct vnode *, struct componentname *);
struct vop_mkdir_args {
 struct vnode *a_dvp;
 struct vnode **a_vpp;
 struct componentname *a_cnp;
 struct vattr *a_vap;
};
int VOP_MKDIR(struct vnode *, struct vnode **, struct componentname *,
    struct vattr *);
struct vop_rmdir_args {
 struct vnode *a_dvp;
 struct vnode *a_vp;
 struct componentname *a_cnp;
};
int VOP_RMDIR(struct vnode *, struct vnode *, struct componentname *);
struct vop_symlink_args {
 struct vnode *a_dvp;
 struct vnode **a_vpp;
 struct componentname *a_cnp;
 struct vattr *a_vap;
 char *a_target;
};
int VOP_SYMLINK(struct vnode *, struct vnode **, struct componentname *,
    struct vattr *, char *);
struct vop_readdir_args {
 struct vnode *a_vp;
 struct uio *a_uio;
 struct ucred *a_cred;
 int *a_eofflag;
};
int VOP_READDIR(struct vnode *, struct uio *, struct ucred *, int *);
struct vop_readlink_args {
 struct vnode *a_vp;
 struct uio *a_uio;
 struct ucred *a_cred;
};
int VOP_READLINK(struct vnode *, struct uio *, struct ucred *);
struct vop_abortop_args {
 struct vnode *a_dvp;
 struct componentname *a_cnp;
};
int VOP_ABORTOP(struct vnode *, struct componentname *);
struct vop_inactive_args {
 struct vnode *a_vp;
 struct proc *a_p;
};
int VOP_INACTIVE(struct vnode *, struct proc *);
struct vop_reclaim_args {
 struct vnode *a_vp;
 struct proc *a_p;
};
int VOP_RECLAIM(struct vnode *, struct proc *);
struct vop_lock_args {
 struct vnode *a_vp;
 int a_flags;
 struct proc *a_p;
};
int VOP_LOCK(struct vnode *, int, struct proc *);
struct vop_unlock_args {
 struct vnode *a_vp;
 struct proc *a_p;
};
int VOP_UNLOCK(struct vnode *, struct proc *);
struct vop_bmap_args {
 struct vnode *a_vp;
 daddr_t a_bn;
 struct vnode **a_vpp;
 daddr_t *a_bnp;
 int *a_runp;
};
int VOP_BMAP(struct vnode *, daddr_t, struct vnode **, daddr_t *, int *);
struct vop_print_args {
 struct vnode *a_vp;
};
int VOP_PRINT(struct vnode *);
struct vop_pathconf_args {
 struct vnode *a_vp;
 int a_name;
 register_t *a_retval;
};
int VOP_PATHCONF(struct vnode *, int, register_t *);
struct vop_advlock_args {
 struct vnode *a_vp;
 void *a_id;
 int a_op;
 struct flock *a_fl;
 int a_flags;
};
int VOP_ADVLOCK(struct vnode *, void *, int, struct flock *, int);
struct vop_strategy_args {
 struct buf *a_bp;
};
int VOP_STRATEGY(struct buf *);
struct vop_bwrite_args {
 struct buf *a_bp;
};
int VOP_BWRITE(struct buf *);
struct file;
struct filedesc;
struct mount;
struct nameidata;
struct proc;
struct stat;
struct statfs;
struct ucred;
struct uio;
struct vattr;
struct vnode;
int bdevvp(dev_t, struct vnode **);
int cdevvp(dev_t, struct vnode **);
struct vnode *checkalias(struct vnode *, dev_t, struct mount *);
int getnewvnode(enum vtagtype, struct mount *, struct vops *,
     struct vnode **);
int vaccess(enum vtype, mode_t, uid_t, gid_t, mode_t, struct ucred *);
void vattr_null(struct vattr *);
void vdevgone(int, int, int, enum vtype);
int vcount(struct vnode *);
int vfinddev(dev_t, enum vtype, struct vnode **);
void vflushbuf(struct vnode *, int);
int vflush(struct mount *, struct vnode *, int);
int vget(struct vnode *, int, struct proc *);
void vgone(struct vnode *);
void vgonel(struct vnode *, struct proc *);
int vinvalbuf(struct vnode *, int, struct ucred *, struct proc *,
     int, int);
void vntblinit(void);
int vwaitforio(struct vnode *, int, char *, int);
void vwakeup(struct vnode *);
void vput(struct vnode *);
int vrecycle(struct vnode *, struct proc *);
int vrele(struct vnode *);
void vref(struct vnode *);
void vprint(char *, struct vnode *);
void copy_statfs_info(struct statfs *, const struct mount *);
int vfs_getcwd_scandir(struct vnode **, struct vnode **, char **, char *,
    struct proc *);
int vfs_getcwd_common(struct vnode *, struct vnode *, char **, char *, int,
    int, struct proc *);
int vfs_getcwd_getcache(struct vnode **, struct vnode **, char **, char *);
int vop_generic_abortop(void *);
int vop_generic_bmap(void *);
int vop_generic_bwrite(void *);
int vop_generic_islocked(void *);
int vop_generic_lock(void *);
int vop_generic_unlock(void *);
int vop_generic_revoke(void *);
int vop_generic_kqfilter(void *);
int vop_generic_lookup(void *);
int vn_isunder(struct vnode *, struct vnode *, struct proc *);
int vn_close(struct vnode *, int, struct ucred *, struct proc *);
int vn_open(struct nameidata *, int, int);
int vn_rdwr(enum uio_rw, struct vnode *, caddr_t, int, off_t,
     enum uio_seg, int, struct ucred *, size_t *, struct proc *);
int vn_stat(struct vnode *, struct stat *, struct proc *);
int vn_statfile(struct file *, struct stat *, struct proc *);
int vn_lock(struct vnode *, int, struct proc *);
int vn_writechk(struct vnode *);
int vn_fsizechk(struct vnode *, struct uio *, int, ssize_t *);
int vn_ioctl(struct file *, u_long, caddr_t, struct proc *);
void vn_marktext(struct vnode *);
void sched_sync(struct proc *);
void vn_initialize_syncerd(void);
void vn_syncer_add_to_worklist(struct vnode *, int);
int vn_isdisk(struct vnode *, int *);
int softdep_fsync(struct vnode *);
int getvnode(struct proc *, int, struct file **);
void uvm_vnp_setsize(struct vnode *, off_t);
void uvm_vnp_sync(struct mount *);
void uvm_vnp_terminate(struct vnode *);
int uvm_vnp_uncache(struct vnode *);
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
struct dirent {
 __ino_t d_fileno;
 __off_t d_off;
 __uint16_t d_reclen;
 __uint8_t d_type;
 __uint8_t d_namlen;
 __uint8_t __d_padding[4];
 char d_name[255 + 1];
};
struct locklist { struct lockf *tqh_first; struct lockf **tqh_last; };
struct lockf {
 short lf_flags;
 short lf_type;
 off_t lf_start;
 off_t lf_end;
 caddr_t lf_id;
 struct lockf **lf_head;
 struct lockf *lf_next;
 struct locklist lf_blkhd;
 struct { struct lockf *tqe_next; struct lockf **tqe_prev; } lf_block;
 uid_t lf_uid;
 pid_t lf_pid;
};

void lf_init(void);
int lf_advlock(struct lockf **,
     off_t, caddr_t, int, struct flock *, int);
int lf_clearlock(struct lockf *);
int lf_findoverlap(struct lockf *,
     struct lockf *, int, struct lockf ***, struct lockf **);
struct lockf *
  lf_getblock(struct lockf *);
int lf_getlock(struct lockf *, struct flock *);
int lf_setlock(struct lockf *);
void lf_split(struct lockf *, struct lockf *);
void lf_wakelock(struct lockf *);

typedef struct pollfd {
 int fd;
 short events;
 short revents;
} pollfd_t;
typedef unsigned int nfds_t;
struct specinfo {
 struct vnode **si_hashchain;
 struct vnode *si_specnext;
 struct mount *si_mountpoint;
 dev_t si_rdev;
 struct lockf *si_lockf;
 daddr_t si_lastr;
 union {
  struct vnode *ci_parent;
  u_int8_t *ci_bitmap;
 } si_ci;
};
struct cloneinfo {
 struct vnode *ci_vp;
 void *ci_data;
};
extern struct vnode *speclisth[64];
int spec_badop(void *);
int spec_getattr(void *);
int spec_setattr(void *);
int spec_access(void *);
int spec_open(void *);
int spec_close(void *);
int spec_read(void *);
int spec_write(void *);
int spec_ioctl(void *);
int spec_poll(void *);
int spec_kqfilter(void *);
int spec_fsync(void *);
int spec_inactive(void *);
int spec_strategy(void *);
int spec_print(void *);
int spec_pathconf(void *);
int spec_advlock(void *);
struct __tfork {
 void *tf_tcb;
 pid_t *tf_tid;
 void *tf_stack;
};
struct __kbind {
 void *kb_addr;
 size_t kb_size;
};
int fifo_badop(void *);
int fifo_ebadf(void *);
int fifo_open(void *);
int fifo_close(void *);
int fifo_read(void *);
int fifo_write(void *);
int fifo_ioctl(void *);
int fifo_poll(void *);
int fifo_kqfilter(void *);
int fifo_inactive(void *);
int fifo_reclaim(void *);
int fifo_print(void *);
int fifo_pathconf(void *);
int fifo_advlock(void *);
void fifo_printinfo(struct vnode *);
struct dqblk {
 u_int32_t dqb_bhardlimit;
 u_int32_t dqb_bsoftlimit;
 u_int32_t dqb_curblocks;
 u_int32_t dqb_ihardlimit;
 u_int32_t dqb_isoftlimit;
 u_int32_t dqb_curinodes;
 u_int32_t dqb_btime;
 u_int32_t dqb_itime;
};
enum ufs_quota_flags {
 UFS_QUOTA_NOUID = 0x1,
 UFS_QUOTA_NOGID = 0x2,
 UFS_QUOTA_FORCE = 0x1000
};
struct dquot;
struct inode;
struct mount;
struct proc;
struct ucred;
struct ufsmount;
struct vnode;

int ufs_quota_alloc_blocks2(struct inode *, daddr_t, struct ucred *, enum ufs_quota_flags);
int ufs_quota_free_blocks2(struct inode *, daddr_t, struct ucred *, enum ufs_quota_flags);
int ufs_quota_alloc_inode2(struct inode *, struct ucred *, enum ufs_quota_flags);
int ufs_quota_free_inode2(struct inode *, struct ucred *, enum ufs_quota_flags);
int ufs_quota_delete(struct inode *);
int getinoquota(struct inode *);
int quotaoff(struct proc *, struct mount *, int);
int qsync(struct mount *mp);
int ufs_quotactl(struct mount *, int, uid_t, caddr_t, struct proc *);
void ufs_quota_init(void);

typedef u_int32_t ufsino_t;
struct ufs1_dinode {
 u_int16_t di_mode;
 int16_t di_nlink;
 union {
  u_int16_t oldids[2];
  u_int32_t inumber;
 } di_u;
 u_int64_t di_size;
 int32_t di_atime;
 int32_t di_atimensec;
 int32_t di_mtime;
 int32_t di_mtimensec;
 int32_t di_ctime;
 int32_t di_ctimensec;
 int32_t di_db[12];
 int32_t di_ib[3];
 u_int32_t di_flags;
 int32_t di_blocks;
 int32_t di_gen;
 u_int32_t di_uid;
 u_int32_t di_gid;
 int32_t di_spare[2];
};
struct ufs2_dinode {
 u_int16_t di_mode;
 int16_t di_nlink;
 u_int32_t di_uid;
 u_int32_t di_gid;
 u_int32_t di_blksize;
 u_int64_t di_size;
 u_int64_t di_blocks;
 int64_t di_atime;
 int64_t di_mtime;
 int64_t di_ctime;
 int64_t di_birthtime;
 int32_t di_mtimensec;
 int32_t di_atimensec;
 int32_t di_ctimensec;
 int32_t di_birthnsec;
 int32_t di_gen;
 u_int32_t di_kernflags;
 u_int32_t di_flags;
 int32_t di_extsize;
 int64_t di_extb[2];
 int64_t di_db[12];
 int64_t di_ib[3];
 int64_t di_spare[3];
};
struct direct {
 u_int32_t d_ino;
 u_int16_t d_reclen;
 u_int8_t d_type;
 u_int8_t d_namlen;
 char d_name[255 + 1];
};
struct dirtemplate {
 u_int32_t dot_ino;
 int16_t dot_reclen;
 u_int8_t dot_type;
 u_int8_t dot_namlen;
 char dot_name[4];
 u_int32_t dotdot_ino;
 int16_t dotdot_reclen;
 u_int8_t dotdot_type;
 u_int8_t dotdot_namlen;
 char dotdot_name[4];
};
struct odirtemplate {
 u_int32_t dot_ino;
 int16_t dot_reclen;
 u_int16_t dot_namlen;
 char dot_name[4];
 u_int32_t dotdot_ino;
 int16_t dotdot_reclen;
 u_int16_t dotdot_namlen;
 char dotdot_name[4];
};
struct ext2fs_dinode {
 u_int16_t e2di_mode;
 u_int16_t e2di_uid_low;
 u_int32_t e2di_size;
 u_int32_t e2di_atime;
 u_int32_t e2di_ctime;
 u_int32_t e2di_mtime;
 u_int32_t e2di_dtime;
 u_int16_t e2di_gid_low;
 u_int16_t e2di_nlink;
 u_int32_t e2di_nblock;
 u_int32_t e2di_flags;
 u_int32_t e2di_version_lo;
 u_int32_t e2di_blocks[12 +3];
 u_int32_t e2di_gen;
 u_int32_t e2di_facl;
 u_int32_t e2di_size_hi;
 u_int32_t e2di_faddr;
 u_int16_t e2di_nblock_hi;
 u_int16_t e2di_facl_hi;
 u_int16_t e2di_uid_high;
 u_int16_t e2di_gid_high;
 u_int16_t e2di_chksum_lo;
 u_int16_t e2di__reserved;
 u_int16_t e2di_isize;
 u_int16_t e2di_chksum_hi;
 u_int32_t e2di_x_ctime;
 u_int32_t e2di_x_mtime;
 u_int32_t e2di_x_atime;
 u_int32_t e2di_crtime;
 u_int32_t e2di_x_crtime;
 u_int32_t e2di_version_hi;
};
struct m_ext2fs;
void e2fs_i_bswap(struct m_ext2fs *, struct ext2fs_dinode *, struct ext2fs_dinode *);
struct ext4_extent {
 uint32_t e_blk;
 uint16_t e_len;
 uint16_t e_start_hi;
 uint32_t e_start_lo;
};
struct ext4_extent_index {
 uint32_t ei_blk;
 uint32_t ei_leaf_lo;
 uint16_t ei_leaf_hi;
 uint16_t ei_unused;
};
struct ext4_extent_header {
 uint16_t eh_magic;
 uint16_t eh_ecount;
 uint16_t eh_max;
 uint16_t eh_depth;
 uint32_t eh_gen;
};
struct ext4_extent_cache {
 daddr_t ec_start;
 uint32_t ec_blk;
 uint32_t ec_len;
 uint32_t ec_type;
};
struct ext4_extent_path {
 uint16_t ep_depth;
 struct buf *ep_bp;
 struct ext4_extent *ep_ext;
 struct ext4_extent_index *ep_index;
 struct ext4_extent_header *ep_header;
};
struct inode;
struct m_ext2fs;
int ext4_ext_in_cache(struct inode *, daddr_t, struct ext4_extent *);
void ext4_ext_put_cache(struct inode *, struct ext4_extent *, int);
struct ext4_extent_path *ext4_ext_find_extent(struct m_ext2fs *fs,
    struct inode *, daddr_t, struct ext4_extent_path *);
struct ext2fs_inode_ext {
 u_int32_t ext2fs_last_lblk;
 u_int32_t ext2fs_last_blk;
 u_int32_t ext2fs_effective_uid;
 u_int32_t ext2fs_effective_gid;
 struct ext4_extent_cache ext2fs_extent_cache;
};
struct inode {
 struct { struct inode *le_next; struct inode **le_prev; } i_hash;
 struct vnode *i_vnode;
 struct ufsmount *i_ump;
 u_int32_t i_flag;
 dev_t i_dev;
 ufsino_t i_number;
 int i_effnlink;
 union {
  struct fs *fs;
  struct m_ext2fs *e2fs;
 } inode_u;
 struct cluster_info i_ci;
 struct dquot *i_dquot[2];
 u_quad_t i_modrev;
 struct lockf *i_lockf;
 struct rrwlock i_lock;
 int32_t i_count;
 int32_t i_endoff;
 int32_t i_diroff;
 int32_t i_offset;
 ufsino_t i_ino;
 u_int32_t i_reclen;
 union {
  struct ext2fs_inode_ext e2fs;
  struct dirhash *dirhash;
 } inode_ext;
 union {
  struct ufs1_dinode *ffs1_din;
  struct ufs2_dinode *ffs2_din;
  struct ext2fs_dinode *e2fs_din;
 } dinode_u;
 struct inode_vtbl *i_vtbl;
};
struct inode_vtbl {
 int (* iv_truncate)(struct inode *, off_t, int,
     struct ucred *);
 int (* iv_update)(struct inode *, int waitfor);
 int (* iv_inode_alloc)(struct inode *, mode_t mode,
     struct ucred *, struct vnode **);
 int (* iv_inode_free)(struct inode *, ufsino_t ino, mode_t mode);
 int (* iv_buf_alloc)(struct inode *, off_t, int, struct ucred *,
     int, struct buf **);
 int (* iv_bufatoff)(struct inode *, off_t offset, char **res,
     struct buf **bpp);
};
struct indir {
 daddr_t in_lbn;
 int in_off;
 int in_exists;
};
struct ufid {
 u_int16_t ufid_len;
 u_int16_t ufid_pad;
 ufsino_t ufid_ino;
 int32_t ufid_gen;
};
struct buf;
struct inode;
struct nameidata;
struct timeval;
struct ucred;
struct uio;
struct vnode;
struct netexport;
struct ufsmount {
 struct mount *um_mountp;
 dev_t um_dev;
 struct vnode *um_devvp;
 u_long um_fstype;
 union {
  struct fs *fs;
  struct m_ext2fs *e2fs;
 } ufsmount_u;
 struct vnode *um_quotas[2];
 struct ucred *um_cred[2];
 u_long um_nindir;
 u_long um_bptrtodb;
 u_long um_seqinc;
 time_t um_btime[2];
 time_t um_itime[2];
 char um_qflags[2];
 struct netexport um_export;
 u_int64_t um_savedmaxfilesize;
 u_int um_maxsymlinklen;
};
struct buf;
struct componentname;
struct direct;
struct disklabel;
struct dquot;
struct fid;
struct flock;
struct indir;
struct inode;
struct mbuf;
struct mount;
struct nameidata;
struct proc;
struct ucred;
struct ufs_args;
struct ufsmount;
struct uio;
struct vattr;
struct vfsconf;
struct vnode;
int ufs_access(void *);
int ufs_advlock(void *);
int ufs_bmap(void *);
int ufs_close(void *);
int ufs_create(void *);
int ufs_getattr(void *);
int ufs_inactive(void *);
int ufs_ioctl(void *);
int ufs_islocked(void *);
int ufs_link(void *);
int ufs_lock(void *);
int ufs_lookup(void *);
int ufs_mkdir(void *);
int ufs_mknod(void *);
int ufs_mmap(void *);
int ufs_open(void *);
int ufs_pathconf(void *);
int ufs_print(void *);
int ufs_readdir(void *);
int ufs_readlink(void *);
int ufs_remove(void *);
int ufs_rename(void *);
int ufs_rmdir(void *);
int ufs_poll(void *);
int ufs_kqfilter(void *);
int ufs_setattr(void *);
int ufs_strategy(void *);
int ufs_symlink(void *);
int ufs_unlock(void *);
int ufsspec_close(void *);
int ufsspec_read(void *);
int ufsspec_write(void *);
int ufsfifo_read(void *);
int ufsfifo_write(void *);
int ufsfifo_close(void *);
int ufs_bmaparray(struct vnode *, daddr_t, daddr_t *, struct indir *,
         int *, int *);
int ufs_getlbns(struct vnode *, daddr_t, struct indir *, int *);
void ufs_ihashinit(void);
struct vnode *ufs_ihashlookup(dev_t, ufsino_t);
struct vnode *ufs_ihashget(dev_t, ufsino_t);
int ufs_ihashins(struct inode *);
void ufs_ihashrem(struct inode *);
int ufs_init(struct vfsconf *);
int ufs_reclaim(struct vnode *, struct proc *);
void ufs_dirbad(struct inode *, int32_t, char *);
int ufs_dirbadentry(struct vnode *, struct direct *, int);
void ufs_makedirentry(struct inode *, struct componentname *,
      struct direct *);
int ufs_direnter(struct vnode *, struct vnode *, struct direct *,
        struct componentname *, struct buf *);
int ufs_dirremove(struct vnode *, struct inode *, int, int);
int ufs_dirrewrite(struct inode *, struct inode *,
          ufsino_t, int, int);
int ufs_dirempty(struct inode *, ufsino_t, struct ucred *);
int ufs_checkpath(struct inode *, struct inode *, struct ucred *);
int ufs_start(struct mount *, int, struct proc *);
int ufs_root(struct mount *, struct vnode **);
int ufs_quotactl(struct mount *, int, uid_t, caddr_t, struct proc *);
int ufs_fhtovp(struct mount *, struct ufid *, struct vnode **);
int ufs_check_export(struct mount *, struct mbuf *, int *,
  struct ucred **);
void ufs_itimes(struct vnode *);
int ufs_makeinode(int, struct vnode *, struct vnode **,
    struct componentname *);
int softdep_setup_directory_add(struct buf *, struct inode *, off_t,
          long, struct buf *, int);
void softdep_change_directoryentry_offset(struct inode *, caddr_t,
          caddr_t, caddr_t, int);
void softdep_setup_remove(struct buf *,struct inode *, struct inode *,
          int);
void softdep_setup_directory_change(struct buf *, struct inode *,
          struct inode *, long, int);
void softdep_change_linkcnt(struct inode *, int);
int softdep_slowdown(struct vnode *);
struct dirhash {
 struct rwlock dh_mtx;
 int32_t **dh_hash;
 int dh_narrays;
 int dh_hlen;
 int dh_hused;
 u_int8_t *dh_blkfree;
 int dh_nblk;
 int dh_dirblks;
 int dh_firstfree[(((__builtin_offsetof(struct direct, d_name) + ((255 + 1)+1)*sizeof(((struct direct *)0)->d_name[0]) + 3) & ~3) / 4) + 1];
 int dh_seqopt;
 int32_t dh_seqoff;
 int dh_score;
 int dh_onlist;
 struct { struct dirhash *tqe_next; struct dirhash **tqe_prev; } dh_list;
};
extern int ufs_mindirhashsize;
extern int ufs_dirhashmaxmem;
extern int ufs_dirhashmem;
void ufsdirhash_init(void);
void ufsdirhash_uninit(void);
int ufsdirhash_build(struct inode *);
int32_t ufsdirhash_findfree(struct inode *, int, int *);
int32_t ufsdirhash_enduseful(struct inode *);
int ufsdirhash_lookup(struct inode *, char *, int, int32_t *, struct buf **,
     int32_t *);
void ufsdirhash_newblk(struct inode *, int32_t);
void ufsdirhash_add(struct inode *, struct direct *, int32_t);
void ufsdirhash_remove(struct inode *, struct direct *, int32_t);
void ufsdirhash_move(struct inode *, struct direct *, int32_t, int32_t);
void ufsdirhash_dirtrunc(struct inode *, int32_t);
void ufsdirhash_free(struct inode *);
void ufsdirhash_checkblock(struct inode *, char *, int32_t);
struct buf;
struct fid;
struct m_ext2fs;
struct inode;
struct mount;
struct nameidata;
struct proc;
struct statfs;
struct timeval;
struct ucred;
struct ufsmount;
struct uio;
struct vnode;
struct vfsconf;
struct mbuf;
struct componentname;
extern struct pool ext2fs_inode_pool;
extern struct pool ext2fs_dinode_pool;

int ext2fs_alloc(struct inode *, u_int32_t, u_int32_t , struct ucred *,
     u_int32_t *);
int ext2fs_inode_alloc(struct inode *, mode_t mode, struct ucred *,
     struct vnode **);
daddr_t ext2fs_blkpref(struct inode *, u_int32_t, int, u_int32_t *);
void ext2fs_blkfree(struct inode *, u_int32_t);
void ext2fs_inode_free(struct inode *, ufsino_t, mode_t);
int ext2fs_buf_alloc(struct inode *, u_int32_t, int, struct ucred *,
     struct buf **, int);
int ext2fs_bmap(void *);
u_int64_t ext2fs_size(struct inode *);
int ext2fs_init(struct vfsconf *);
int ext2fs_setsize(struct inode *, u_int64_t);
int ext2fs_update(struct inode *ip, int waitfor);
int ext2fs_truncate(struct inode *, off_t, int, struct ucred *);
int ext2fs_inactive(void *);
int ext2fs_readdir(void *);
int ext2fs_lookup(void *);
int ext2fs_direnter(struct inode *, struct vnode *, struct componentname *);
int ext2fs_dirremove(struct vnode *, struct componentname *);
int ext2fs_dirrewrite(struct inode *, struct inode *, struct componentname *);
int ext2fs_dirempty(struct inode *, ufsino_t, struct ucred *);
int ext2fs_checkpath(struct inode *, struct inode *, struct ucred *);
int ext2fs_bufatoff(struct inode *, off_t, char **, struct buf **);
int ext2fs_vinit(struct mount *, struct vnode **);
void ext2fs_checkoverlap(struct buf *, struct inode *);
int ext2fs_mountroot(void);
int ext2fs_mount(struct mount *, const char *, void *, struct nameidata *,
     struct proc *);
int ext2fs_reload(struct mount *, struct ucred *, struct proc *);
int ext2fs_mountfs(struct vnode *, struct mount *, struct proc *);
int ext2fs_unmount(struct mount *, int, struct proc *);
int ext2fs_flushfiles(struct mount *, int, struct proc *);
int ext2fs_statfs(struct mount *, struct statfs *, struct proc *);
int ext2fs_sync(struct mount *, int, struct ucred *, struct proc *);
int ext2fs_vget(struct mount *, ino_t, struct vnode **);
int ext2fs_fhtovp(struct mount *, struct fid *, struct vnode **);
int ext2fs_vptofh(struct vnode *, struct fid *);
int ext2fs_sbupdate(struct ufsmount *, int);
int ext2fs_cgupdate(struct ufsmount *, int);
int ext2fs_sysctl(int *, u_int, void *, size_t *, void *, size_t,
     struct proc *);
int ext2fs_read(void *);
int ext2fs_write(void *);
int ext2fs_create(void *);
int ext2fs_mknod(void *);
int ext2fs_open(void *);
int ext2fs_access(void *);
int ext2fs_getattr(void *);
int ext2fs_setattr(void *);
int ext2fs_remove(void *);
int ext2fs_link(void *);
int ext2fs_rename(void *);
int ext2fs_mkdir(void *);
int ext2fs_rmdir(void *);
int ext2fs_symlink(void *);
int ext2fs_readlink(void *);
int ext2fs_pathconf(void *);
int ext2fs_advlock(void *);
int ext2fs_makeinode(int, struct vnode *, struct vnode **,
     struct componentname *cnp);
int ext2fs_fsync(void *);
int ext2fs_reclaim(void *);
int ext2fsfifo_reclaim(void *);

extern struct vops ext2fs_vops;
extern struct vops ext2fs_specvops;
extern struct vops ext2fs_fifovops;
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
int ufs_chmod(struct vnode *, int, struct ucred *, struct proc *);
int ufs_chown(struct vnode *, uid_t, gid_t, struct ucred *, struct proc *);
int filt_ufsread(struct knote *, long);
int filt_ufswrite(struct knote *, long);
int filt_ufsvnode(struct knote *, long);
void filt_ufsdetach(struct knote *);
static struct dirtemplate mastertemplate = {
 0, 12, 4, 1, ".",
 0, (1 << 9) - 12, 4, 2, ".."
};
static struct odirtemplate omastertemplate = {
 0, 12, 1, ".",
 0, (1 << 9) - 12, 2, ".."
};
void
ufs_itimes(struct vnode *vp)
{
 struct inode *ip;
 struct timespec ts;
 ip = ((struct inode *)(vp)->v_data);
 if ((ip->i_flag & (0x0001 | 0x0002 | 0x0004)) == 0)
  return;
 if (vp->v_mount->mnt_flag & 0x00000001)
  goto out;
 if ((ip->i_vnode->v_tag == VT_EXT2FS)) {
  do { if ((ip)->i_flag & (0x0001 | 0x0002 | 0x0004)) { (ip)->i_flag |= 0x0008; if ((ip)->i_flag & 0x0001) (ip)->dinode_u.e2fs_din->e2di_atime = time_second; if ((ip)->i_flag & 0x0004) (ip)->dinode_u.e2fs_din->e2di_mtime = time_second; if ((ip)->i_flag & 0x0002) { (ip)->dinode_u.e2fs_din->e2di_ctime = time_second; (ip)->i_modrev++; } (ip)->i_flag &= ~(0x0001 | 0x0002 | 0x0004); } } while (0);
  goto out;
 }
 if ((vp->v_type == VBLK || vp->v_type == VCHR) && !((vp)->v_mount->mnt_flag & 0x04000000))
  ip->i_flag |= 0x0080;
 else
  ip->i_flag |= 0x0008;
 getnanotime(&ts);
 if (ip->i_flag & 0x0001) {
  do { if ((ip)->i_ump->um_fstype == 1) (ip)->dinode_u.ffs1_din->di_atime = (ts.tv_sec); else (ip)->dinode_u.ffs2_din->di_atime = (ts.tv_sec); } while (0);
  do { if ((ip)->i_ump->um_fstype == 1) (ip)->dinode_u.ffs1_din->di_atimensec = (ts.tv_nsec); else (ip)->dinode_u.ffs2_din->di_atimensec = (ts.tv_nsec); } while (0);
 }
 if (ip->i_flag & 0x0004) {
  do { if ((ip)->i_ump->um_fstype == 1) (ip)->dinode_u.ffs1_din->di_mtime = (ts.tv_sec); else (ip)->dinode_u.ffs2_din->di_mtime = (ts.tv_sec); } while (0);
  do { if ((ip)->i_ump->um_fstype == 1) (ip)->dinode_u.ffs1_din->di_mtimensec = (ts.tv_nsec); else (ip)->dinode_u.ffs2_din->di_mtimensec = (ts.tv_nsec); } while (0);
 }
 if (ip->i_flag & 0x0002) {
  do { if ((ip)->i_ump->um_fstype == 1) (ip)->dinode_u.ffs1_din->di_ctime = (ts.tv_sec); else (ip)->dinode_u.ffs2_din->di_ctime = (ts.tv_sec); } while (0);
  do { if ((ip)->i_ump->um_fstype == 1) (ip)->dinode_u.ffs1_din->di_ctimensec = (ts.tv_nsec); else (ip)->dinode_u.ffs2_din->di_ctimensec = (ts.tv_nsec); } while (0);
  ip->i_modrev++;
 }
 out:
 ip->i_flag &= ~(0x0001 | 0x0002 | 0x0004);
}
int
ufs_create(void *v)
{
 struct vop_create_args *ap = v;
 int error;
 error =
     ufs_makeinode((int)((vttoif_tab[(int)(ap->a_vap->va_type)]) | (ap->a_vap->va_mode)),
     ap->a_dvp, ap->a_vpp, ap->a_cnp);
 if (error)
  return (error);
 do { struct klist *list = (&ap->a_dvp->v_selectinfo.si_note); if ((list) != ((void *)0)) knote((list), ((0x0002))); } while (0);
 return (0);
}
int
ufs_mknod(void *v)
{
 struct vop_mknod_args *ap = v;
 struct vattr *vap = ap->a_vap;
 struct vnode **vpp = ap->a_vpp;
 struct inode *ip;
 int error;
 if ((error =
     ufs_makeinode((int)((vttoif_tab[(int)(vap->va_type)]) | (vap->va_mode)),
     ap->a_dvp, vpp, ap->a_cnp)) != 0)
  return (error);
 do { struct klist *list = (&ap->a_dvp->v_selectinfo.si_note); if ((list) != ((void *)0)) knote((list), ((0x0002))); } while (0);
 ip = ((struct inode *)(*vpp)->v_data);
 ip->i_flag |= 0x0001 | 0x0002 | 0x0004;
 if (vap->va_rdev != (-1)) {
  do { if ((ip)->i_ump->um_fstype == 1) (ip)->dinode_u.ffs1_din->di_db[0] = (vap->va_rdev); else (ip)->dinode_u.ffs2_din->di_db[0] = (vap->va_rdev); } while (0);
 }
 vput(*vpp);
 (*vpp)->v_type = VNON;
 vgone(*vpp);
 *vpp = ((void *)0);
 return (0);
}
int
ufs_open(void *v)
{
 struct vop_open_args *ap = v;
 struct inode *ip = ((struct inode *)(ap->a_vp)->v_data);
 if (((((ip)->i_ump->um_fstype == 1) ? (ip)->dinode_u.ffs1_din->di_flags : (ip)->dinode_u.ffs2_din->di_flags) & (0x00000004 | 0x00040000)) &&
     (ap->a_mode & (0x0002 | 0x0008)) == 0x0002)
  return (1);
 if (ap->a_mode & 0x0400)
  ip->i_flag |= 0x0002 | 0x0004;
 return (0);
}
int
ufs_close(void *v)
{
 struct vop_close_args *ap = v;
 struct vnode *vp = ap->a_vp;
 if (vp->v_usecount > 1)
  ufs_itimes(vp);
 return (0);
}
int
ufs_access(void *v)
{
 struct vop_access_args *ap = v;
 struct vnode *vp = ap->a_vp;
 struct inode *ip = ((struct inode *)(vp)->v_data);
 mode_t mode = ap->a_mode;
 if (mode & 00200) {
  switch (vp->v_type) {
   int error;
  case VDIR:
  case VLNK:
  case VREG:
   if (vp->v_mount->mnt_flag & 0x00000001)
    return (30);
   if ((error = getinoquota(ip)) != 0)
    return (error);
   break;
  case VBAD:
  case VBLK:
  case VCHR:
  case VSOCK:
  case VFIFO:
  case VNON:
   break;
  }
 }
 if ((mode & 00200) && ((((ip)->i_ump->um_fstype == 1) ? (ip)->dinode_u.ffs1_din->di_flags : (ip)->dinode_u.ffs2_din->di_flags) & (0x00000002 | 0x00020000)))
  return (1);
 if ((vp->v_mount->mnt_flag & 0x00000020) &&
     (vp->v_flag & 0x0001) == 0)
  return (0);
 return (vaccess(vp->v_type, (((ip)->i_ump->um_fstype == 1) ? (ip)->dinode_u.ffs1_din->di_mode : (ip)->dinode_u.ffs2_din->di_mode), (((ip)->i_ump->um_fstype == 1) ? (ip)->dinode_u.ffs1_din->di_uid : (ip)->dinode_u.ffs2_din->di_uid), (((ip)->i_ump->um_fstype == 1) ? (ip)->dinode_u.ffs1_din->di_gid : (ip)->dinode_u.ffs2_din->di_gid),
     mode, ap->a_cred));
}
int
ufs_getattr(void *v)
{
 struct vop_getattr_args *ap = v;
 struct vnode *vp = ap->a_vp;
 struct inode *ip = ((struct inode *)(vp)->v_data);
 struct vattr *vap = ap->a_vap;
 ufs_itimes(vp);
 vap->va_fsid = ip->i_dev;
 vap->va_fileid = ip->i_number;
 vap->va_mode = (((ip)->i_ump->um_fstype == 1) ? (ip)->dinode_u.ffs1_din->di_mode : (ip)->dinode_u.ffs2_din->di_mode) & ~0170000;
 vap->va_nlink = ip->i_effnlink;
 vap->va_uid = (((ip)->i_ump->um_fstype == 1) ? (ip)->dinode_u.ffs1_din->di_uid : (ip)->dinode_u.ffs2_din->di_uid);
 vap->va_gid = (((ip)->i_ump->um_fstype == 1) ? (ip)->dinode_u.ffs1_din->di_gid : (ip)->dinode_u.ffs2_din->di_gid);
 vap->va_rdev = (dev_t) (((ip)->i_ump->um_fstype == 1) ? (ip)->dinode_u.ffs1_din->di_db[0] : (ip)->dinode_u.ffs2_din->di_db[0]);
 vap->va_size = (((ip)->i_ump->um_fstype == 1) ? (ip)->dinode_u.ffs1_din->di_size : (ip)->dinode_u.ffs2_din->di_size);
 vap->va_atime.tv_sec = (((ip)->i_ump->um_fstype == 1) ? (ip)->dinode_u.ffs1_din->di_atime : (ip)->dinode_u.ffs2_din->di_atime);
 vap->va_atime.tv_nsec = (((ip)->i_ump->um_fstype == 1) ? (ip)->dinode_u.ffs1_din->di_atimensec : (ip)->dinode_u.ffs2_din->di_atimensec);
 vap->va_mtime.tv_sec = (((ip)->i_ump->um_fstype == 1) ? (ip)->dinode_u.ffs1_din->di_mtime : (ip)->dinode_u.ffs2_din->di_mtime);
 vap->va_mtime.tv_nsec = (((ip)->i_ump->um_fstype == 1) ? (ip)->dinode_u.ffs1_din->di_mtimensec : (ip)->dinode_u.ffs2_din->di_mtimensec);
 vap->va_ctime.tv_sec = (((ip)->i_ump->um_fstype == 1) ? (ip)->dinode_u.ffs1_din->di_ctime : (ip)->dinode_u.ffs2_din->di_ctime);
 vap->va_ctime.tv_nsec = (((ip)->i_ump->um_fstype == 1) ? (ip)->dinode_u.ffs1_din->di_ctimensec : (ip)->dinode_u.ffs2_din->di_ctimensec);
 vap->va_flags = (((ip)->i_ump->um_fstype == 1) ? (ip)->dinode_u.ffs1_din->di_flags : (ip)->dinode_u.ffs2_din->di_flags);
 vap->va_gen = (((ip)->i_ump->um_fstype == 1) ? (ip)->dinode_u.ffs1_din->di_gen : (ip)->dinode_u.ffs2_din->di_gen);
 if (vp->v_type == VBLK)
  vap->va_blocksize = (1 << 13);
 else if (vp->v_type == VCHR)
  vap->va_blocksize = (64 * 1024);
 else
  vap->va_blocksize = vp->v_mount->mnt_stat.f_iosize;
 vap->va_bytes = (((u_quad_t) (((ip)->i_ump->um_fstype == 1) ? (ip)->dinode_u.ffs1_din->di_blocks : (ip)->dinode_u.ffs2_din->di_blocks)) << 9);
 vap->va_type = vp->v_type;
 vap->va_filerev = ip->i_modrev;
 return (0);
}
int
ufs_setattr(void *v)
{
 struct vop_setattr_args *ap = v;
 struct vattr *vap = ap->a_vap;
 struct vnode *vp = ap->a_vp;
 struct inode *ip = ((struct inode *)(vp)->v_data);
 struct ucred *cred = ap->a_cred;
 struct proc *p = ap->a_p;
 int error;
 long hint = 0x0008;
 u_quad_t oldsize;
 if ((vap->va_type != VNON) || (vap->va_nlink != (-1)) ||
     (vap->va_fsid != (-1)) || (vap->va_fileid != (-1)) ||
     (vap->va_blocksize != (-1)) || (vap->va_rdev != (-1)) ||
     ((int)vap->va_bytes != (-1)) || (vap->va_gen != (-1))) {
  return (22);
 }
 if (vap->va_flags != (-1)) {
  if (vp->v_mount->mnt_flag & 0x00000001)
   return (30);
  if (cred->cr_uid != (((ip)->i_ump->um_fstype == 1) ? (ip)->dinode_u.ffs1_din->di_uid : (ip)->dinode_u.ffs2_din->di_uid) &&
      (vp->v_mount->mnt_flag & 0x00000020) == 0 &&
      (error = suser_ucred(cred)))
   return (error);
  if (cred->cr_uid == 0) {
   if (((((ip)->i_ump->um_fstype == 1) ? (ip)->dinode_u.ffs1_din->di_flags : (ip)->dinode_u.ffs2_din->di_flags) & (0x00020000 | 0x00040000)) &&
       securelevel > 0)
    return (1);
   do { if ((ip)->i_ump->um_fstype == 1) (ip)->dinode_u.ffs1_din->di_flags = (vap->va_flags); else (ip)->dinode_u.ffs2_din->di_flags = (vap->va_flags); } while (0);
  } else {
   if ((((ip)->i_ump->um_fstype == 1) ? (ip)->dinode_u.ffs1_din->di_flags : (ip)->dinode_u.ffs2_din->di_flags) & (0x00020000 | 0x00040000) ||
       (vap->va_flags & 0x0000ffff) != vap->va_flags)
    return (1);
   do { if ((ip)->i_ump->um_fstype == 1) (ip)->dinode_u.ffs1_din->di_flags &= (0xffff0000); else (ip)->dinode_u.ffs2_din->di_flags &= (0xffff0000); } while (0);
   do { if ((ip)->i_ump->um_fstype == 1) (ip)->dinode_u.ffs1_din->di_flags |= (vap->va_flags & 0x0000ffff); else (ip)->dinode_u.ffs2_din->di_flags |= (vap->va_flags & 0x0000ffff); } while (0);
  }
  ip->i_flag |= 0x0002;
  if (vap->va_flags & ((0x00000002 | 0x00020000) | (0x00000004 | 0x00040000)))
   return (0);
 }
 if ((((ip)->i_ump->um_fstype == 1) ? (ip)->dinode_u.ffs1_din->di_flags : (ip)->dinode_u.ffs2_din->di_flags) & ((0x00000002 | 0x00020000) | (0x00000004 | 0x00040000)))
  return (1);
 if (vap->va_uid != (uid_t)(-1) || vap->va_gid != (gid_t)(-1)) {
  if (vp->v_mount->mnt_flag & 0x00000001)
   return (30);
  error = ufs_chown(vp, vap->va_uid, vap->va_gid, cred, p);
  if (error)
   return (error);
 }
 if (vap->va_size != (-1)) {
  oldsize = (((ip)->i_ump->um_fstype == 1) ? (ip)->dinode_u.ffs1_din->di_size : (ip)->dinode_u.ffs2_din->di_size);
  switch (vp->v_type) {
  case VDIR:
    return (21);
  case VLNK:
  case VREG:
   if (vp->v_mount->mnt_flag & 0x00000001)
    return (30);
   break;
  default:
   break;
  }
   if ((error = ((ip)->i_vtbl->iv_truncate)((ip), (vap->va_size), (0), (cred))) != 0)
    return (error);
  if (vap->va_size < oldsize)
   hint |= 0x0080;
 }
 if ((vap->va_vaflags & 0x04) ||
     vap->va_atime.tv_nsec != (-1) ||
     vap->va_mtime.tv_nsec != (-1)) {
  if (vp->v_mount->mnt_flag & 0x00000001)
   return (30);
  if (cred->cr_uid != (((ip)->i_ump->um_fstype == 1) ? (ip)->dinode_u.ffs1_din->di_uid : (ip)->dinode_u.ffs2_din->di_uid) &&
      (vp->v_mount->mnt_flag & 0x00000020) == 0 &&
      (error = suser_ucred(cred)) &&
      ((vap->va_vaflags & 0x01) == 0 ||
      (error = VOP_ACCESS(vp, 00200, cred, p))))
   return (error);
  if (vap->va_mtime.tv_nsec != (-1))
   ip->i_flag |= 0x0002 | 0x0004;
  else if (vap->va_vaflags & 0x04)
   ip->i_flag |= 0x0002;
  if (vap->va_atime.tv_nsec != (-1)) {
   if (!(vp->v_mount->mnt_flag & 0x00008000) ||
       (ip->i_flag & (0x0002 | 0x0004)))
    ip->i_flag |= 0x0001;
  }
  ufs_itimes(vp);
  if (vap->va_mtime.tv_nsec != (-1)) {
   do { if ((ip)->i_ump->um_fstype == 1) (ip)->dinode_u.ffs1_din->di_mtime = (vap->va_mtime.tv_sec); else (ip)->dinode_u.ffs2_din->di_mtime = (vap->va_mtime.tv_sec); } while (0);
   do { if ((ip)->i_ump->um_fstype == 1) (ip)->dinode_u.ffs1_din->di_mtimensec = (vap->va_mtime.tv_nsec); else (ip)->dinode_u.ffs2_din->di_mtimensec = (vap->va_mtime.tv_nsec); } while (0);
  }
  if (vap->va_atime.tv_nsec != (-1)) {
   do { if ((ip)->i_ump->um_fstype == 1) (ip)->dinode_u.ffs1_din->di_atime = (vap->va_atime.tv_sec); else (ip)->dinode_u.ffs2_din->di_atime = (vap->va_atime.tv_sec); } while (0);
   do { if ((ip)->i_ump->um_fstype == 1) (ip)->dinode_u.ffs1_din->di_atimensec = (vap->va_atime.tv_nsec); else (ip)->dinode_u.ffs2_din->di_atimensec = (vap->va_atime.tv_nsec); } while (0);
  }
  error = ((ip)->i_vtbl->iv_update)((ip), (0));
  if (error)
   return (error);
 }
 error = 0;
 if (vap->va_mode != (mode_t)(-1)) {
  if (vp->v_mount->mnt_flag & 0x00000001)
   return (30);
  error = ufs_chmod(vp, (int)vap->va_mode, cred, p);
 }
 do { struct klist *list = (&vp->v_selectinfo.si_note); if ((list) != ((void *)0)) knote((list), ((hint))); } while (0);
 return (error);
}
int
ufs_chmod(struct vnode *vp, int mode, struct ucred *cred, struct proc *p)
{
 struct inode *ip = ((struct inode *)(vp)->v_data);
 int error;
 if (cred->cr_uid != (((ip)->i_ump->um_fstype == 1) ? (ip)->dinode_u.ffs1_din->di_uid : (ip)->dinode_u.ffs2_din->di_uid) &&
     (vp->v_mount->mnt_flag & 0x00000020) == 0 &&
     (error = suser_ucred(cred)))
  return (error);
 if (cred->cr_uid &&
     (vp->v_mount->mnt_flag & 0x00000020) == 0) {
  if (vp->v_type != VDIR && (mode & 0001000))
   return (79);
  if (!groupmember((((ip)->i_ump->um_fstype == 1) ? (ip)->dinode_u.ffs1_din->di_gid : (ip)->dinode_u.ffs2_din->di_gid), cred) && (mode & 0002000))
   return (1);
 }
 do { if ((ip)->i_ump->um_fstype == 1) (ip)->dinode_u.ffs1_din->di_mode &= (~(0004000|0002000|0001000|0000700|0000070|0000007)); else (ip)->dinode_u.ffs2_din->di_mode &= (~(0004000|0002000|0001000|0000700|0000070|0000007)); } while (0);
 do { if ((ip)->i_ump->um_fstype == 1) (ip)->dinode_u.ffs1_din->di_mode |= (mode & (0004000|0002000|0001000|0000700|0000070|0000007)); else (ip)->dinode_u.ffs2_din->di_mode |= (mode & (0004000|0002000|0001000|0000700|0000070|0000007)); } while (0);
 ip->i_flag |= 0x0002;
 if ((vp->v_flag & 0x0002) && ((((ip)->i_ump->um_fstype == 1) ? (ip)->dinode_u.ffs1_din->di_mode : (ip)->dinode_u.ffs2_din->di_mode) & 0001000) == 0)
  (void) uvm_vnp_uncache(vp);
 return (0);
}
int
ufs_chown(struct vnode *vp, uid_t uid, gid_t gid, struct ucred *cred,
    struct proc *p)
{
 struct inode *ip = ((struct inode *)(vp)->v_data);
 uid_t ouid;
 gid_t ogid;
 int error = 0;
 daddr_t change;
 enum ufs_quota_flags quota_flags = 0;
 if (uid == (uid_t)(-1))
  uid = (((ip)->i_ump->um_fstype == 1) ? (ip)->dinode_u.ffs1_din->di_uid : (ip)->dinode_u.ffs2_din->di_uid);
 if (gid == (gid_t)(-1))
  gid = (((ip)->i_ump->um_fstype == 1) ? (ip)->dinode_u.ffs1_din->di_gid : (ip)->dinode_u.ffs2_din->di_gid);
 if ((cred->cr_uid != (((ip)->i_ump->um_fstype == 1) ? (ip)->dinode_u.ffs1_din->di_uid : (ip)->dinode_u.ffs2_din->di_uid) || uid != (((ip)->i_ump->um_fstype == 1) ? (ip)->dinode_u.ffs1_din->di_uid : (ip)->dinode_u.ffs2_din->di_uid) ||
     (gid != (((ip)->i_ump->um_fstype == 1) ? (ip)->dinode_u.ffs1_din->di_gid : (ip)->dinode_u.ffs2_din->di_gid) && !groupmember(gid, cred))) &&
     (vp->v_mount->mnt_flag & 0x00000020) == 0 &&
     (error = suser_ucred(cred)))
  return (error);
 ogid = (((ip)->i_ump->um_fstype == 1) ? (ip)->dinode_u.ffs1_din->di_gid : (ip)->dinode_u.ffs2_din->di_gid);
 ouid = (((ip)->i_ump->um_fstype == 1) ? (ip)->dinode_u.ffs1_din->di_uid : (ip)->dinode_u.ffs2_din->di_uid);
 change = (((ip)->i_ump->um_fstype == 1) ? (ip)->dinode_u.ffs1_din->di_blocks : (ip)->dinode_u.ffs2_din->di_blocks);
 if (ouid == uid)
  quota_flags |= UFS_QUOTA_NOUID;
 if (ogid == gid)
  quota_flags |= UFS_QUOTA_NOGID;
 if ((error = getinoquota(ip)) != 0)
  return (error);
 (void) ufs_quota_free_blocks2(ip, change, cred, quota_flags);
 (void) ufs_quota_free_inode2(ip, cred, quota_flags);
 (void) ufs_quota_delete(ip);
 do { if ((ip)->i_ump->um_fstype == 1) (ip)->dinode_u.ffs1_din->di_gid = (gid); else (ip)->dinode_u.ffs2_din->di_gid = (gid); } while (0);
 do { if ((ip)->i_ump->um_fstype == 1) (ip)->dinode_u.ffs1_din->di_uid = (uid); else (ip)->dinode_u.ffs2_din->di_uid = (uid); } while (0);
 if ((error = getinoquota(ip)) != 0)
  goto error;
 if ((error = ufs_quota_alloc_blocks2(ip, change, cred,
   quota_flags)) != 0)
  goto error;
 if ((error = ufs_quota_alloc_inode2(ip, cred ,
   quota_flags)) != 0) {
  (void)ufs_quota_free_blocks2(ip, change, cred,
      quota_flags);
  goto error;
 }
 if (getinoquota(ip))
  panic("chown: lost quota");
 if (ouid != uid || ogid != gid)
  ip->i_flag |= 0x0002;
 if (ouid != uid && cred->cr_uid != 0 &&
     (vp->v_mount->mnt_flag & 0x00000020) == 0)
  do { if ((ip)->i_ump->um_fstype == 1) (ip)->dinode_u.ffs1_din->di_mode &= (~0004000); else (ip)->dinode_u.ffs2_din->di_mode &= (~0004000); } while (0);
 if (ogid != gid && cred->cr_uid != 0 &&
     (vp->v_mount->mnt_flag & 0x00000020) == 0)
  do { if ((ip)->i_ump->um_fstype == 1) (ip)->dinode_u.ffs1_din->di_mode &= (~0002000); else (ip)->dinode_u.ffs2_din->di_mode &= (~0002000); } while (0);
 return (0);
error:
 (void) ufs_quota_delete(ip);
 do { if ((ip)->i_ump->um_fstype == 1) (ip)->dinode_u.ffs1_din->di_gid = (ogid); else (ip)->dinode_u.ffs2_din->di_gid = (ogid); } while (0);
 do { if ((ip)->i_ump->um_fstype == 1) (ip)->dinode_u.ffs1_din->di_uid = (ouid); else (ip)->dinode_u.ffs2_din->di_uid = (ouid); } while (0);
 if (getinoquota(ip) == 0) {
  (void) ufs_quota_alloc_blocks2(ip, change, cred,
      quota_flags | UFS_QUOTA_FORCE);
  (void) ufs_quota_alloc_inode2(ip, cred,
      quota_flags | UFS_QUOTA_FORCE);
  (void) getinoquota(ip);
 }
 return (error);
}
int
ufs_ioctl(void *v)
{
 return (25);
}
int
ufs_poll(void *v)
{
 struct vop_poll_args *ap = v;
 return (ap->a_events & (0x0001 | 0x0004 | 0x0040 | 0x0004));
}
int
ufs_remove(void *v)
{
 struct vop_remove_args *ap = v;
 struct inode *ip;
 struct vnode *vp = ap->a_vp;
 struct vnode *dvp = ap->a_dvp;
 int error;
 ip = ((struct inode *)(vp)->v_data);
 if (vp->v_type == VDIR || ((((ip)->i_ump->um_fstype == 1) ? (ip)->dinode_u.ffs1_din->di_flags : (ip)->dinode_u.ffs2_din->di_flags) & ((0x00000002 | 0x00020000) | (0x00000004 | 0x00040000))) ||
     ((((((struct inode *)(dvp)->v_data))->i_ump->um_fstype == 1) ? (((struct inode *)(dvp)->v_data))->dinode_u.ffs1_din->di_flags : (((struct inode *)(dvp)->v_data))->dinode_u.ffs2_din->di_flags) & (0x00000004 | 0x00040000))) {
  error = 1;
  goto out;
 }
 error = ufs_dirremove(dvp, ip, ap->a_cnp->cn_flags, 0);
 do { struct klist *list = (&vp->v_selectinfo.si_note); if ((list) != ((void *)0)) knote((list), ((0x0001))); } while (0);
 do { struct klist *list = (&dvp->v_selectinfo.si_note); if ((list) != ((void *)0)) knote((list), ((0x0002))); } while (0);
 out:
 if (dvp == vp)
  vrele(vp);
 else
  vput(vp);
 vput(dvp);
 return (error);
}
int
ufs_link(void *v)
{
 struct vop_link_args *ap = v;
 struct vnode *dvp = ap->a_dvp;
 struct vnode *vp = ap->a_vp;
 struct componentname *cnp = ap->a_cnp;
 struct proc *p = cnp->cn_proc;
 struct inode *ip;
 struct direct newdir;
 int error;
 if ((cnp->cn_flags & 0x000400) == 0)
  panic("ufs_link: no name");
 if (vp->v_type == VDIR) {
  VOP_ABORTOP(dvp, cnp);
  error = 1;
  goto out2;
 }
 if (dvp->v_mount != vp->v_mount) {
  VOP_ABORTOP(dvp, cnp);
  error = 18;
  goto out2;
 }
 if (dvp != vp && (error = vn_lock(vp, 0x0001UL, p))) {
  VOP_ABORTOP(dvp, cnp);
  goto out2;
 }
 ip = ((struct inode *)(vp)->v_data);
 if ((nlink_t) (((ip)->i_ump->um_fstype == 1) ? (ip)->dinode_u.ffs1_din->di_nlink : (ip)->dinode_u.ffs2_din->di_nlink) >= 32767) {
  VOP_ABORTOP(dvp, cnp);
  error = 31;
  goto out1;
 }
 if ((((ip)->i_ump->um_fstype == 1) ? (ip)->dinode_u.ffs1_din->di_flags : (ip)->dinode_u.ffs2_din->di_flags) & ((0x00000002 | 0x00020000) | (0x00000004 | 0x00040000))) {
  VOP_ABORTOP(dvp, cnp);
  error = 1;
  goto out1;
 }
 ip->i_effnlink++;
 do { if ((ip)->i_ump->um_fstype == 1) (ip)->dinode_u.ffs1_din->di_nlink += (1); else (ip)->dinode_u.ffs2_din->di_nlink += (1); } while (0);
 ip->i_flag |= 0x0002;
 if (((vp)->v_mount->mnt_flag & 0x04000000))
  softdep_change_linkcnt(ip, 0);
 if ((error = ((ip)->i_vtbl->iv_update)((ip), (!((vp)->v_mount->mnt_flag & 0x04000000)))) == 0) {
  ufs_makedirentry(ip, cnp, &newdir);
  error = ufs_direnter(dvp, vp, &newdir, cnp, ((void *)0));
 }
 if (error) {
  ip->i_effnlink--;
  do { if ((ip)->i_ump->um_fstype == 1) (ip)->dinode_u.ffs1_din->di_nlink += (-1); else (ip)->dinode_u.ffs2_din->di_nlink += (-1); } while (0);
  ip->i_flag |= 0x0002;
  if (((vp)->v_mount->mnt_flag & 0x04000000))
   softdep_change_linkcnt(ip, 0);
 }
 pool_put(&namei_pool, cnp->cn_pnbuf);
 do { struct klist *list = (&vp->v_selectinfo.si_note); if ((list) != ((void *)0)) knote((list), ((0x0010))); } while (0);
 do { struct klist *list = (&dvp->v_selectinfo.si_note); if ((list) != ((void *)0)) knote((list), ((0x0002))); } while (0);
out1:
 if (dvp != vp)
  VOP_UNLOCK(vp, p);
out2:
 vput(dvp);
 return (error);
}
int
ufs_rename(void *v)
{
 struct vop_rename_args *ap = v;
 struct vnode *tvp = ap->a_tvp;
 struct vnode *tdvp = ap->a_tdvp;
 struct vnode *fvp = ap->a_fvp;
 struct vnode *fdvp = ap->a_fdvp;
 struct componentname *tcnp = ap->a_tcnp;
 struct componentname *fcnp = ap->a_fcnp;
 struct proc *p = fcnp->cn_proc;
 struct inode *ip, *xp, *dp;
 struct direct newdir;
 int doingdirectory = 0, oldparent = 0, newparent = 0;
 int error = 0;
 if ((tcnp->cn_flags & 0x000400) == 0 ||
     (fcnp->cn_flags & 0x000400) == 0)
  panic("ufs_rename: no name");
 if ((fvp->v_mount != tdvp->v_mount) ||
     (tvp && (fvp->v_mount != tvp->v_mount))) {
  error = 18;
abortit:
  VOP_ABORTOP(tdvp, tcnp);
  if (tdvp == tvp)
   vrele(tdvp);
  else
   vput(tdvp);
  if (tvp)
   vput(tvp);
  VOP_ABORTOP(fdvp, fcnp);
  vrele(fdvp);
  vrele(fvp);
  return (error);
 }
 if (tvp && (((((((struct inode *)(tvp)->v_data))->i_ump->um_fstype == 1) ? (((struct inode *)(tvp)->v_data))->dinode_u.ffs1_din->di_flags : (((struct inode *)(tvp)->v_data))->dinode_u.ffs2_din->di_flags) & ((0x00000002 | 0x00020000) | (0x00000004 | 0x00040000))) ||
     ((((((struct inode *)(tdvp)->v_data))->i_ump->um_fstype == 1) ? (((struct inode *)(tdvp)->v_data))->dinode_u.ffs1_din->di_flags : (((struct inode *)(tdvp)->v_data))->dinode_u.ffs2_din->di_flags) & (0x00000004 | 0x00040000)))) {
  error = 1;
  goto abortit;
 }
 if (fvp == tvp) {
  if (fvp->v_type == VDIR) {
   error = 2;
   goto abortit;
  }
  VOP_ABORTOP(tdvp, tcnp);
  vput(tdvp);
  vput(tvp);
  vrele(fvp);
  fcnp->cn_flags &= ~0x00fc;
  fcnp->cn_flags |= 0x0008 | 0x0004;
  if ((fcnp->cn_flags & 0x001000) == 0)
   panic("ufs_rename: lost from startdir");
  fcnp->cn_nameiop = 2;
  if ((error = vfs_relookup(fdvp, &fvp, fcnp)) != 0)
   return (error);
  vrele(fdvp);
  return (VOP_REMOVE(fdvp, fvp, fcnp));
 }
 if ((error = vn_lock(fvp, 0x0001UL, p)) != 0)
  goto abortit;
 dp = ((struct inode *)(fdvp)->v_data);
 ip = ((struct inode *)(fvp)->v_data);
 if ((nlink_t) (((ip)->i_ump->um_fstype == 1) ? (ip)->dinode_u.ffs1_din->di_nlink : (ip)->dinode_u.ffs2_din->di_nlink) >= 32767) {
  VOP_UNLOCK(fvp, p);
  error = 31;
  goto abortit;
 }
 if (((((ip)->i_ump->um_fstype == 1) ? (ip)->dinode_u.ffs1_din->di_flags : (ip)->dinode_u.ffs2_din->di_flags) & ((0x00000002 | 0x00020000) | (0x00000004 | 0x00040000))) ||
     ((((dp)->i_ump->um_fstype == 1) ? (dp)->dinode_u.ffs1_din->di_flags : (dp)->dinode_u.ffs2_din->di_flags) & (0x00000004 | 0x00040000))) {
  VOP_UNLOCK(fvp, p);
  error = 1;
  goto abortit;
 }
 if (((((ip)->i_ump->um_fstype == 1) ? (ip)->dinode_u.ffs1_din->di_mode : (ip)->dinode_u.ffs2_din->di_mode) & 0170000) == 0040000) {
  error = VOP_ACCESS(fvp, 00200, tcnp->cn_cred, tcnp->cn_proc);
  if (!error && tvp)
   error = VOP_ACCESS(tvp, 00200, tcnp->cn_cred, tcnp->cn_proc);
  if (error) {
   VOP_UNLOCK(fvp, p);
   error = 13;
   goto abortit;
  }
  if ((fcnp->cn_namelen == 1 && fcnp->cn_nameptr[0] == '.') ||
      dp == ip ||
      (fcnp->cn_flags & 0x002000) ||
      (tcnp->cn_flags & 0x002000) ||
      (ip->i_flag & 0x0010)) {
   VOP_UNLOCK(fvp, p);
   error = 22;
   goto abortit;
  }
  ip->i_flag |= 0x0010;
  oldparent = dp->i_number;
  doingdirectory = 1;
 }
 do { struct klist *list = (&fdvp->v_selectinfo.si_note); if ((list) != ((void *)0)) knote((list), ((0x0002))); } while (0);
 dp = ((struct inode *)(tdvp)->v_data);
 xp = ((void *)0);
 if (tvp)
  xp = ((struct inode *)(tvp)->v_data);
 ip->i_effnlink++;
 do { if ((ip)->i_ump->um_fstype == 1) (ip)->dinode_u.ffs1_din->di_nlink += (1); else (ip)->dinode_u.ffs2_din->di_nlink += (1); } while (0);
 ip->i_flag |= 0x0002;
 if (((fvp)->v_mount->mnt_flag & 0x04000000))
  softdep_change_linkcnt(ip, 0);
 if ((error = ((ip)->i_vtbl->iv_update)((ip), (!((fvp)->v_mount->mnt_flag & 0x04000000)))) != 0) {
  VOP_UNLOCK(fvp, p);
  goto bad;
 }
 error = VOP_ACCESS(fvp, 00200, tcnp->cn_cred, tcnp->cn_proc);
 VOP_UNLOCK(fvp, p);
 if (oldparent != dp->i_number)
  newparent = dp->i_number;
 if (doingdirectory && newparent) {
  if (error)
   goto bad;
  if (xp != ((void *)0))
   vput(tvp);
  vref(tdvp);
  if ((error = ufs_checkpath(ip, dp, tcnp->cn_cred)) != 0) {
   vrele(tdvp);
   goto out;
  }
  if ((tcnp->cn_flags & 0x001000) == 0)
   panic("ufs_rename: lost to startdir");
  if ((error = vfs_relookup(tdvp, &tvp, tcnp)) != 0)
   goto out;
  vrele(tdvp);
  dp = ((struct inode *)(tdvp)->v_data);
  xp = ((void *)0);
  if (tvp)
   xp = ((struct inode *)(tvp)->v_data);
 }
 if (xp == ((void *)0)) {
  if (dp->i_dev != ip->i_dev)
   panic("rename: EXDEV");
  if (doingdirectory && newparent) {
   if ((nlink_t) (((dp)->i_ump->um_fstype == 1) ? (dp)->dinode_u.ffs1_din->di_nlink : (dp)->dinode_u.ffs2_din->di_nlink) >= 32767) {
    error = 31;
    goto bad;
   }
   dp->i_effnlink++;
   do { if ((dp)->i_ump->um_fstype == 1) (dp)->dinode_u.ffs1_din->di_nlink += (1); else (dp)->dinode_u.ffs2_din->di_nlink += (1); } while (0);
   dp->i_flag |= 0x0002;
   if (((tdvp)->v_mount->mnt_flag & 0x04000000))
    softdep_change_linkcnt(dp, 0);
   if ((error = ((dp)->i_vtbl->iv_update)((dp), (!((tdvp)->v_mount->mnt_flag & 0x04000000))))
       != 0) {
    dp->i_effnlink--;
    do { if ((dp)->i_ump->um_fstype == 1) (dp)->dinode_u.ffs1_din->di_nlink += (-1); else (dp)->dinode_u.ffs2_din->di_nlink += (-1); } while (0);
    dp->i_flag |= 0x0002;
    if (((tdvp)->v_mount->mnt_flag & 0x04000000))
     softdep_change_linkcnt(dp, 0);
    goto bad;
   }
  }
  ufs_makedirentry(ip, tcnp, &newdir);
  if ((error = ufs_direnter(tdvp, ((void *)0), &newdir, tcnp, ((void *)0))) != 0) {
   if (doingdirectory && newparent) {
    dp->i_effnlink--;
    do { if ((dp)->i_ump->um_fstype == 1) (dp)->dinode_u.ffs1_din->di_nlink += (-1); else (dp)->dinode_u.ffs2_din->di_nlink += (-1); } while (0);
    dp->i_flag |= 0x0002;
    if (((tdvp)->v_mount->mnt_flag & 0x04000000))
     softdep_change_linkcnt(dp, 0);
    (void)((dp)->i_vtbl->iv_update)((dp), (1));
   }
   goto bad;
  }
  do { struct klist *list = (&tdvp->v_selectinfo.si_note); if ((list) != ((void *)0)) knote((list), ((0x0002))); } while (0);
  vput(tdvp);
 } else {
  if (xp->i_dev != dp->i_dev || xp->i_dev != ip->i_dev)
   panic("rename: EXDEV");
  if (xp->i_number == ip->i_number)
   panic("ufs_rename: same file");
  if (((((dp)->i_ump->um_fstype == 1) ? (dp)->dinode_u.ffs1_din->di_mode : (dp)->dinode_u.ffs2_din->di_mode) & 0001000) && tcnp->cn_cred->cr_uid != 0 &&
      tcnp->cn_cred->cr_uid != (((dp)->i_ump->um_fstype == 1) ? (dp)->dinode_u.ffs1_din->di_uid : (dp)->dinode_u.ffs2_din->di_uid) &&
      (((xp)->i_ump->um_fstype == 1) ? (xp)->dinode_u.ffs1_din->di_uid : (xp)->dinode_u.ffs2_din->di_uid)!= tcnp->cn_cred->cr_uid &&
      (tdvp->v_mount->mnt_flag & 0x00000020) == 0) {
   error = 1;
   goto bad;
  }
  if (((((xp)->i_ump->um_fstype == 1) ? (xp)->dinode_u.ffs1_din->di_mode : (xp)->dinode_u.ffs2_din->di_mode) & 0170000) == 0040000) {
   if (xp->i_effnlink > 2 ||
       !ufs_dirempty(xp, dp->i_number, tcnp->cn_cred)) {
    error = 66;
    goto bad;
   }
   if (!doingdirectory) {
    error = 20;
    goto bad;
   }
   cache_purge(tdvp);
  } else if (doingdirectory) {
   error = 21;
   goto bad;
  }
  if ((error = ufs_dirrewrite(dp, xp, ip->i_number,
      ((((((ip)->i_ump->um_fstype == 1) ? (ip)->dinode_u.ffs1_din->di_mode : (ip)->dinode_u.ffs2_din->di_mode)) & 0170000) >> 12), (doingdirectory && newparent) ?
      newparent : doingdirectory)) != 0)
   goto bad;
  if (doingdirectory) {
   if (!newparent) {
    dp->i_effnlink--;
    if (((tdvp)->v_mount->mnt_flag & 0x04000000))
     softdep_change_linkcnt(dp, 0);
   }
   xp->i_effnlink--;
   if (((tvp)->v_mount->mnt_flag & 0x04000000))
    softdep_change_linkcnt(xp, 0);
  }
  if (doingdirectory && !((tvp)->v_mount->mnt_flag & 0x04000000)) {
   if (!newparent) {
    do { if ((dp)->i_ump->um_fstype == 1) (dp)->dinode_u.ffs1_din->di_nlink += (-1); else (dp)->dinode_u.ffs2_din->di_nlink += (-1); } while (0);
    dp->i_flag |= 0x0002;
   }
   do { if ((xp)->i_ump->um_fstype == 1) (xp)->dinode_u.ffs1_din->di_nlink += (-1); else (xp)->dinode_u.ffs2_din->di_nlink += (-1); } while (0);
   xp->i_flag |= 0x0002;
   if ((error = ((((struct inode *)(tvp)->v_data))->i_vtbl->iv_truncate)((((struct inode *)(tvp)->v_data)), ((off_t)0), (0x04), (tcnp->cn_cred))) != 0)
    goto bad;
  }
  do { struct klist *list = (&tdvp->v_selectinfo.si_note); if ((list) != ((void *)0)) knote((list), ((0x0002))); } while (0);
  vput(tdvp);
  do { struct klist *list = (&tvp->v_selectinfo.si_note); if ((list) != ((void *)0)) knote((list), ((0x0001))); } while (0);
  vput(tvp);
  xp = ((void *)0);
 }
 fcnp->cn_flags &= ~0x00fc;
 fcnp->cn_flags |= 0x0008 | 0x0004;
 if ((fcnp->cn_flags & 0x001000) == 0)
  panic("ufs_rename: lost from startdir");
 if ((error = vfs_relookup(fdvp, &fvp, fcnp)) != 0) {
  vrele(ap->a_fvp);
  return (error);
 }
 vrele(fdvp);
 if (fvp == ((void *)0)) {
  if (doingdirectory)
   panic("ufs_rename: lost dir entry");
  vrele(ap->a_fvp);
  return (0);
 }
 xp = ((struct inode *)(fvp)->v_data);
 dp = ((struct inode *)(fdvp)->v_data);
 if (xp != ip) {
  if (doingdirectory)
   panic("ufs_rename: lost dir entry");
 } else {
  if (doingdirectory && newparent) {
   xp->i_offset = mastertemplate.dot_reclen;
   ufs_dirrewrite(xp, dp, newparent, 4, 0);
   cache_purge(fdvp);
  }
  error = ufs_dirremove(fdvp, xp, fcnp->cn_flags, 0);
  xp->i_flag &= ~0x0010;
 }
 do { struct klist *list = (&fvp->v_selectinfo.si_note); if ((list) != ((void *)0)) knote((list), ((0x0020))); } while (0);
 if (dp)
  vput(fdvp);
 if (xp)
  vput(fvp);
 vrele(ap->a_fvp);
 return (error);
bad:
 if (xp)
  vput(((xp)->i_vnode));
 vput(((dp)->i_vnode));
out:
 vrele(fdvp);
 if (doingdirectory)
  ip->i_flag &= ~0x0010;
 if (vn_lock(fvp, 0x0001UL, p) == 0) {
  ip->i_effnlink--;
  do { if ((ip)->i_ump->um_fstype == 1) (ip)->dinode_u.ffs1_din->di_nlink += (-1); else (ip)->dinode_u.ffs2_din->di_nlink += (-1); } while (0);
  ip->i_flag |= 0x0002;
  ip->i_flag &= ~0x0010;
  if (((fvp)->v_mount->mnt_flag & 0x04000000))
   softdep_change_linkcnt(ip, 0);
  vput(fvp);
 } else
  vrele(fvp);
 return (error);
}
int
ufs_mkdir(void *v)
{
 struct vop_mkdir_args *ap = v;
 struct vnode *dvp = ap->a_dvp;
 struct vattr *vap = ap->a_vap;
 struct componentname *cnp = ap->a_cnp;
 struct inode *ip, *dp;
 struct vnode *tvp;
 struct buf *bp;
 struct direct newdir;
 struct dirtemplate dirtemplate, *dtp;
 int error, dmode, blkoff;
 if ((cnp->cn_flags & 0x000400) == 0)
  panic("ufs_mkdir: no name");
 dp = ((struct inode *)(dvp)->v_data);
 if ((nlink_t) (((dp)->i_ump->um_fstype == 1) ? (dp)->dinode_u.ffs1_din->di_nlink : (dp)->dinode_u.ffs2_din->di_nlink) >= 32767) {
  error = 31;
  goto out;
 }
 dmode = vap->va_mode & 0777;
 dmode |= 0040000;
 if ((error = ((dp)->i_vtbl->iv_inode_alloc)((dp), (dmode), (cnp->cn_cred), (&tvp))) != 0)
  goto out;
 ip = ((struct inode *)(tvp)->v_data);
 do { if ((ip)->i_ump->um_fstype == 1) (ip)->dinode_u.ffs1_din->di_uid = (cnp->cn_cred->cr_uid); else (ip)->dinode_u.ffs2_din->di_uid = (cnp->cn_cred->cr_uid); } while (0);
 do { if ((ip)->i_ump->um_fstype == 1) (ip)->dinode_u.ffs1_din->di_gid = ((((dp)->i_ump->um_fstype == 1) ? (dp)->dinode_u.ffs1_din->di_gid : (dp)->dinode_u.ffs2_din->di_gid)); else (ip)->dinode_u.ffs2_din->di_gid = ((((dp)->i_ump->um_fstype == 1) ? (dp)->dinode_u.ffs1_din->di_gid : (dp)->dinode_u.ffs2_din->di_gid)); } while (0);
 if ((error = getinoquota(ip)) ||
     (error = ufs_quota_alloc_inode2(ip, cnp->cn_cred, 0))) {
  pool_put(&namei_pool, cnp->cn_pnbuf);
  ((ip)->i_vtbl->iv_inode_free)((ip), (ip->i_number), (dmode));
  vput(tvp);
  vput(dvp);
  return (error);
 }
 ip->i_flag |= 0x0001 | 0x0002 | 0x0004;
 do { if ((ip)->i_ump->um_fstype == 1) (ip)->dinode_u.ffs1_din->di_mode = (dmode); else (ip)->dinode_u.ffs2_din->di_mode = (dmode); } while (0);
 tvp->v_type = VDIR;
 ip->i_effnlink = 2;
 do { if ((ip)->i_ump->um_fstype == 1) (ip)->dinode_u.ffs1_din->di_nlink = (2); else (ip)->dinode_u.ffs2_din->di_nlink = (2); } while (0);
 if (((tvp)->v_mount->mnt_flag & 0x04000000))
  softdep_change_linkcnt(ip, 0);
 dp->i_effnlink++;
 do { if ((dp)->i_ump->um_fstype == 1) (dp)->dinode_u.ffs1_din->di_nlink += (1); else (dp)->dinode_u.ffs2_din->di_nlink += (1); } while (0);
 dp->i_flag |= 0x0002;
 if (((dvp)->v_mount->mnt_flag & 0x04000000))
  softdep_change_linkcnt(dp, 0);
 if ((error = ((dp)->i_vtbl->iv_update)((dp), (!((dvp)->v_mount->mnt_flag & 0x04000000)))) != 0)
  goto bad;
 if (dp->i_ump->um_maxsymlinklen > 0)
  dtp = &mastertemplate;
 else
  dtp = (struct dirtemplate *)&omastertemplate;
 dirtemplate = *dtp;
 dirtemplate.dot_ino = ip->i_number;
 dirtemplate.dotdot_ino = dp->i_number;
 if ((error = ((ip)->i_vtbl->iv_buf_alloc)((ip), ((off_t)0), ((1 << 9)), (cnp->cn_cred), (0x01), (&bp))) != 0)
  goto bad;
 do { if ((ip)->i_ump->um_fstype == 1) (ip)->dinode_u.ffs1_din->di_size = ((1 << 9)); else (ip)->dinode_u.ffs2_din->di_size = ((1 << 9)); } while (0);
 ip->i_flag |= 0x0002 | 0x0004;
 uvm_vnp_setsize(tvp, (((ip)->i_ump->um_fstype == 1) ? (ip)->dinode_u.ffs1_din->di_size : (ip)->dinode_u.ffs2_din->di_size));
 __builtin_memcpy((bp->b_data), (&dirtemplate), (sizeof(dirtemplate)));
 if (((tvp)->v_mount->mnt_flag & 0x04000000)) {
  blkoff = (1 << 9);
  while (blkoff < bp->b_bcount) {
   ((struct direct *)
    (bp->b_data + blkoff))->d_reclen = (1 << 9);
   blkoff += (1 << 9);
  }
 }
 if ((error = ((ip)->i_vtbl->iv_update)((ip), (!((tvp)->v_mount->mnt_flag & 0x04000000)))) != 0) {
  (void)VOP_BWRITE(bp);
  goto bad;
 }
 if (!((dvp)->v_mount->mnt_flag & 0x04000000) && ((error = VOP_BWRITE(bp)) != 0))
  goto bad;
 ufs_makedirentry(ip, cnp, &newdir);
 error = ufs_direnter(dvp, tvp, &newdir, cnp, bp);
bad:
 if (error == 0) {
  do { struct klist *list = (&dvp->v_selectinfo.si_note); if ((list) != ((void *)0)) knote((list), ((0x0002 | 0x0010))); } while (0);
  *ap->a_vpp = tvp;
 } else {
  dp->i_effnlink--;
  do { if ((dp)->i_ump->um_fstype == 1) (dp)->dinode_u.ffs1_din->di_nlink += (-1); else (dp)->dinode_u.ffs2_din->di_nlink += (-1); } while (0);
  dp->i_flag |= 0x0002;
  if (((dvp)->v_mount->mnt_flag & 0x04000000))
   softdep_change_linkcnt(dp, 0);
  ip->i_effnlink = 0;
  do { if ((ip)->i_ump->um_fstype == 1) (ip)->dinode_u.ffs1_din->di_nlink = (0); else (ip)->dinode_u.ffs2_din->di_nlink = (0); } while (0);
  ip->i_flag |= 0x0002;
  if (((tvp)->v_mount->mnt_flag & 0x04000000))
   softdep_change_linkcnt(ip, 0);
  vput(tvp);
 }
out:
 pool_put(&namei_pool, cnp->cn_pnbuf);
 vput(dvp);
 return (error);
}
int
ufs_rmdir(void *v)
{
 struct vop_rmdir_args *ap = v;
 struct vnode *vp = ap->a_vp;
 struct vnode *dvp = ap->a_dvp;
 struct componentname *cnp = ap->a_cnp;
 struct inode *ip, *dp;
 int error;
 ip = ((struct inode *)(vp)->v_data);
 dp = ((struct inode *)(dvp)->v_data);
 if (dp == ip || vp->v_un.vu_mountedhere != ((void *)0)) {
  if (dp == ip)
   vrele(dvp);
  else
   vput(dvp);
  vput(vp);
  return (22);
 }
 error = 0;
 if (ip->i_flag & 0x0010) {
  error = 22;
  goto out;
 }
 if (ip->i_effnlink != 2 ||
     !ufs_dirempty(ip, dp->i_number, cnp->cn_cred)) {
  error = 66;
  goto out;
 }
 if (((((dp)->i_ump->um_fstype == 1) ? (dp)->dinode_u.ffs1_din->di_flags : (dp)->dinode_u.ffs2_din->di_flags) & (0x00000004 | 0x00040000)) ||
  ((((ip)->i_ump->um_fstype == 1) ? (ip)->dinode_u.ffs1_din->di_flags : (ip)->dinode_u.ffs2_din->di_flags) & ((0x00000002 | 0x00020000) | (0x00000004 | 0x00040000)))) {
  error = 1;
  goto out;
 }
 dp->i_effnlink--;
 ip->i_effnlink--;
 if (((vp)->v_mount->mnt_flag & 0x04000000)) {
  softdep_change_linkcnt(dp, 0);
  softdep_change_linkcnt(ip, 0);
 }
 if ((error = ufs_dirremove(dvp, ip, cnp->cn_flags, 1)) != 0) {
  dp->i_effnlink++;
  ip->i_effnlink++;
  if (((vp)->v_mount->mnt_flag & 0x04000000)) {
   softdep_change_linkcnt(dp, 0);
   softdep_change_linkcnt(ip, 0);
  }
  goto out;
 }
 do { struct klist *list = (&dvp->v_selectinfo.si_note); if ((list) != ((void *)0)) knote((list), ((0x0002 | 0x0010))); } while (0);
 cache_purge(dvp);
 if (!((vp)->v_mount->mnt_flag & 0x04000000)) {
  int ioflag;
  do { if ((dp)->i_ump->um_fstype == 1) (dp)->dinode_u.ffs1_din->di_nlink += (-1); else (dp)->dinode_u.ffs2_din->di_nlink += (-1); } while (0);
  dp->i_flag |= 0x0002;
  do { if ((ip)->i_ump->um_fstype == 1) (ip)->dinode_u.ffs1_din->di_nlink += (-1); else (ip)->dinode_u.ffs2_din->di_nlink += (-1); } while (0);
  ip->i_flag |= 0x0002;
  ioflag = ((vp)->v_mount->mnt_flag & 0x00000040) ? 0 : 0x04;
  error = ((ip)->i_vtbl->iv_truncate)((ip), ((off_t)0), (ioflag), (cnp->cn_cred));
 }
 cache_purge(vp);
 if (ip->inode_ext.dirhash != ((void *)0))
  ufsdirhash_free(ip);
out:
 do { struct klist *list = (&vp->v_selectinfo.si_note); if ((list) != ((void *)0)) knote((list), ((0x0001))); } while (0);
 vput(dvp);
 vput(vp);
 return (error);
}
int
ufs_symlink(void *v)
{
 struct vop_symlink_args *ap = v;
 struct vnode *vp, **vpp = ap->a_vpp;
 struct inode *ip;
 int len, error;
 error = ufs_makeinode(0120000 | ap->a_vap->va_mode, ap->a_dvp,
     vpp, ap->a_cnp);
 if (error)
  return (error);
 do { struct klist *list = (&ap->a_dvp->v_selectinfo.si_note); if ((list) != ((void *)0)) knote((list), ((0x0002))); } while (0);
 vp = *vpp;
 ip = ((struct inode *)(vp)->v_data);
 len = strlen(ap->a_target);
 if (len < ip->i_ump->um_maxsymlinklen) {
  __builtin_memcpy(((((ip)->i_ump->um_fstype == 1) ? (caddr_t)(ip)->dinode_u.ffs1_din->di_db : (caddr_t)(ip)->dinode_u.ffs2_din->di_db)), (ap->a_target), (len));
  do { if ((ip)->i_ump->um_fstype == 1) (ip)->dinode_u.ffs1_din->di_size = (len); else (ip)->dinode_u.ffs2_din->di_size = (len); } while (0);
  ip->i_flag |= 0x0002 | 0x0004;
 } else
  error = vn_rdwr(UIO_WRITE, vp, ap->a_target, len, (off_t)0,
      UIO_SYSSPACE, 0x08, ap->a_cnp->cn_cred, ((void *)0),
      (__curcpu->ci_self)->ci_curproc);
 vput(vp);
 return (error);
}
int
ufs_readdir(void *v)
{
 struct vop_readdir_args *ap = v;
 struct uio auio, *uio = ap->a_uio;
 struct iovec aiov;
 union {
  struct dirent dn;
  char __pad[((((sizeof(struct dirent))+((8)-1))/(8))*(8))];
 } u;
 off_t off = uio->uio_offset;
 struct direct *dp;
 char *edp;
 caddr_t diskbuf;
 size_t count, entries;
 int bufsize, readcnt, error;
 if (uio->uio_rw != UIO_READ)
  return (22);
 count = uio->uio_resid;
 entries = (uio->uio_offset + count) & ((1 << 9) - 1);
 if (count <= entries)
  return (22);
 readcnt = min(count, 64*1024) - entries;
 auio = *uio;
 auio.uio_iov = &aiov;
 auio.uio_iovcnt = 1;
 auio.uio_resid = readcnt;
 auio.uio_segflg = UIO_SYSSPACE;
 aiov.iov_len = readcnt;
 bufsize = readcnt;
 diskbuf = malloc(bufsize, 127, 0x0001);
 aiov.iov_base = diskbuf;
 error = VOP_READ(ap->a_vp, &auio, 0, ap->a_cred);
 readcnt -= auio.uio_resid;
 dp = (struct direct *)diskbuf;
 edp = &diskbuf[readcnt];
 __builtin_memset((&u), (0), (sizeof(u)));
 while (error == 0 &&
     (char *)dp + __builtin_offsetof(struct direct, d_name) < edp &&
     dp->d_reclen > __builtin_offsetof(struct direct, d_name) &&
     (char *)dp + dp->d_reclen <= edp) {
  u.dn.d_reclen = ((((dp->d_namlen+1 + __builtin_offsetof(struct dirent, d_name))+((8)-1))/(8))*(8));
  if (u.dn.d_reclen > uio->uio_resid)
   break;
  off += dp->d_reclen;
  u.dn.d_off = off;
  u.dn.d_fileno = dp->d_ino;
  {
   u.dn.d_type = dp->d_type;
   u.dn.d_namlen = dp->d_namlen;
  }
  __builtin_memcpy((u.dn.d_name), (dp->d_name), (u.dn.d_namlen));
  __builtin_memset((u.dn.d_name + u.dn.d_namlen), (0), (u.dn.d_reclen - u.dn.d_namlen - __builtin_offsetof(struct dirent, d_name)));
  error = uiomove(&u.dn, u.dn.d_reclen, uio);
  dp = (struct direct *)((char *)dp + dp->d_reclen);
 }
 if ((char *)dp + __builtin_offsetof(struct direct, d_name) < edp &&
     dp->d_reclen <= __builtin_offsetof(struct direct, d_name))
  error = 5;
 free(diskbuf, 127, bufsize);
 uio->uio_offset = off;
 *ap->a_eofflag = (((((struct inode *)(ap->a_vp)->v_data))->i_ump->um_fstype == 1) ? (((struct inode *)(ap->a_vp)->v_data))->dinode_u.ffs1_din->di_size : (((struct inode *)(ap->a_vp)->v_data))->dinode_u.ffs2_din->di_size) <= off;
 return (error);
}
int
ufs_readlink(void *v)
{
 struct vop_readlink_args *ap = v;
 struct vnode *vp = ap->a_vp;
 struct inode *ip = ((struct inode *)(vp)->v_data);
 u_int64_t isize;
 isize = (((ip)->i_ump->um_fstype == 1) ? (ip)->dinode_u.ffs1_din->di_size : (ip)->dinode_u.ffs2_din->di_size);
 if (isize < ip->i_ump->um_maxsymlinklen ||
     (ip->i_ump->um_maxsymlinklen == 0 && (((ip)->i_ump->um_fstype == 1) ? (ip)->dinode_u.ffs1_din->di_blocks : (ip)->dinode_u.ffs2_din->di_blocks) == 0)) {
  return (uiomove((char *)(((ip)->i_ump->um_fstype == 1) ? (caddr_t)(ip)->dinode_u.ffs1_din->di_db : (caddr_t)(ip)->dinode_u.ffs2_din->di_db), isize, ap->a_uio));
 }
 return (VOP_READ(vp, ap->a_uio, 0, ap->a_cred));
}
int
ufs_lock(void *v)
{
 struct vop_lock_args *ap = v;
 struct vnode *vp = ap->a_vp;
 return _rrw_enter(&((struct inode *)(vp)->v_data)->i_lock, ap->a_flags & (0x0001UL|0x0002UL|0x0040UL|0x0080UL|0x0100UL) );
}
int
ufs_unlock(void *v)
{
 struct vop_unlock_args *ap = v;
 struct vnode *vp = ap->a_vp;
 _rrw_exit(&((struct inode *)(vp)->v_data)->i_lock );
 return 0;
}
int
ufs_islocked(void *v)
{
 struct vop_islocked_args *ap = v;
 return rrw_status(&((struct inode *)(ap->a_vp)->v_data)->i_lock);
}
int
ufs_strategy(void *v)
{
 struct vop_strategy_args *ap = v;
 struct buf *bp = ap->a_bp;
 struct vnode *vp = bp->b_vp;
 struct inode *ip;
 int error;
 int s;
 ip = ((struct inode *)(vp)->v_data);
 if (vp->v_type == VBLK || vp->v_type == VCHR)
  panic("ufs_strategy: spec");
 if (bp->b_blkno == bp->b_lblkno) {
  error = VOP_BMAP(vp, bp->b_lblkno, ((void *)0), &bp->b_blkno,
     ((void *)0));
  if (error) {
   bp->b_error = error;
   bp->b_flags |= 0x00000400;
   s = _splraise(5);
   biodone(bp);
   _splx(s);
   return (error);
  }
  if (bp->b_blkno == -1)
   { __builtin_bzero(((bp)->b_data), ((u_int)(bp)->b_bcount)); (bp)->b_resid = 0; };
 }
 if (bp->b_blkno == -1) {
  s = _splraise(5);
  biodone(bp);
  _splx(s);
  return (0);
 }
 vp = ip->i_ump->um_devvp;
 bp->b_dev = vp->v_un.vu_specinfo->si_rdev;
 (vp->v_op->vop_strategy)(ap);
 return (0);
}
int
ufs_print(void *v)
{
 struct vop_print_args *ap = v;
 struct vnode *vp = ap->a_vp;
 struct inode *ip = ((struct inode *)(vp)->v_data);
 printf("tag VT_UFS, ino %u, on dev %d, %d", ip->i_number,
  ((int32_t)(((u_int32_t)(ip->i_dev) >> 8) & 0xff)), ((int32_t)((ip->i_dev) & 0xff) | (((ip->i_dev) & 0xffff0000) >> 8)));
 printf(" flags 0x%x, effnlink %d, nlink %d\n",
    ip->i_flag, ip->i_effnlink, (((ip)->i_ump->um_fstype == 1) ? (ip)->dinode_u.ffs1_din->di_nlink : (ip)->dinode_u.ffs2_din->di_nlink));
 printf("\tmode 0%o, owner %d, group %d, size %lld",
     (((ip)->i_ump->um_fstype == 1) ? (ip)->dinode_u.ffs1_din->di_mode : (ip)->dinode_u.ffs2_din->di_mode), (((ip)->i_ump->um_fstype == 1) ? (ip)->dinode_u.ffs1_din->di_uid : (ip)->dinode_u.ffs2_din->di_uid), (((ip)->i_ump->um_fstype == 1) ? (ip)->dinode_u.ffs1_din->di_gid : (ip)->dinode_u.ffs2_din->di_gid), (((ip)->i_ump->um_fstype == 1) ? (ip)->dinode_u.ffs1_din->di_size : (ip)->dinode_u.ffs2_din->di_size));
 if (vp->v_type == VFIFO)
  fifo_printinfo(vp);
 printf("\n");
 return (0);
}
int
ufsspec_read(void *v)
{
 struct vop_read_args *ap = v;
 ((struct inode *)(ap->a_vp)->v_data)->i_flag |= 0x0001;
 return (spec_read(ap));
}
int
ufsspec_write(void *v)
{
 struct vop_write_args *ap = v;
 ((struct inode *)(ap->a_vp)->v_data)->i_flag |= 0x0002 | 0x0004;
 return (spec_write(ap));
}
int
ufsspec_close(void *v)
{
 struct vop_close_args *ap = v;
 struct vnode *vp = ap->a_vp;
 if (vp->v_usecount > 1)
  ufs_itimes(vp);
 return (spec_close(ap));
}
int
ufsfifo_read(void *v)
{
 struct vop_read_args *ap = v;
 ((struct inode *)(ap->a_vp)->v_data)->i_flag |= 0x0001;
 return (fifo_read(ap));
}
int
ufsfifo_write(void *v)
{
 struct vop_write_args *ap = v;
 ((struct inode *)(ap->a_vp)->v_data)->i_flag |= 0x0002 | 0x0004;
 return (fifo_write(ap));
}
int
ufsfifo_close(void *v)
{
 struct vop_close_args *ap = v;
 struct vnode *vp = ap->a_vp;
 if (vp->v_usecount > 1)
  ufs_itimes(vp);
 return (fifo_close(ap));
}
int
ufs_pathconf(void *v)
{
 struct vop_pathconf_args *ap = v;
 int error = 0;
 switch (ap->a_name) {
 case 1:
  *ap->a_retval = 32767;
  break;
 case 4:
  *ap->a_retval = 255;
  break;
 case 7:
  *ap->a_retval = 1;
  break;
 case 8:
  *ap->a_retval = 1;
  break;
 case 11:
  *ap->a_retval = ap->a_vp->v_mount->mnt_stat.f_bsize;
  break;
 case 13:
  *ap->a_retval = 64;
  break;
 case 15:
  *ap->a_retval = ap->a_vp->v_mount->mnt_stat.f_iosize;
  break;
 case 16:
  *ap->a_retval = -1;
  break;
 case 17:
  *ap->a_retval = ap->a_vp->v_mount->mnt_stat.f_iosize;
  break;
 case 18:
  *ap->a_retval = (1 << 13);
  break;
 case 19:
  *ap->a_retval = 1024;
  break;
 case 10:
  *ap->a_retval = 1;
  break;
 case 21:
  *ap->a_retval = 1;
  break;
 default:
  error = 22;
  break;
 }
 return (error);
}
int
ufs_advlock(void *v)
{
 struct vop_advlock_args *ap = v;
 struct inode *ip = ((struct inode *)(ap->a_vp)->v_data);
 return (lf_advlock(&ip->i_lockf, (((ip)->i_ump->um_fstype == 1) ? (ip)->dinode_u.ffs1_din->di_size : (ip)->dinode_u.ffs2_din->di_size), ap->a_id, ap->a_op,
     ap->a_fl, ap->a_flags));
}
int
ufs_makeinode(int mode, struct vnode *dvp, struct vnode **vpp,
    struct componentname *cnp)
{
 struct inode *ip, *pdir;
 struct direct newdir;
 struct vnode *tvp;
 int error;
 pdir = ((struct inode *)(dvp)->v_data);
 if ((cnp->cn_flags & 0x000400) == 0)
  panic("ufs_makeinode: no name");
 *vpp = ((void *)0);
 if ((mode & 0170000) == 0)
  mode |= 0100000;
 if ((error = ((pdir)->i_vtbl->iv_inode_alloc)((pdir), (mode), (cnp->cn_cred), (&tvp))) != 0) {
  pool_put(&namei_pool, cnp->cn_pnbuf);
  vput(dvp);
  return (error);
 }
 ip = ((struct inode *)(tvp)->v_data);
 do { if ((ip)->i_ump->um_fstype == 1) (ip)->dinode_u.ffs1_din->di_gid = ((((pdir)->i_ump->um_fstype == 1) ? (pdir)->dinode_u.ffs1_din->di_gid : (pdir)->dinode_u.ffs2_din->di_gid)); else (ip)->dinode_u.ffs2_din->di_gid = ((((pdir)->i_ump->um_fstype == 1) ? (pdir)->dinode_u.ffs1_din->di_gid : (pdir)->dinode_u.ffs2_din->di_gid)); } while (0);
 do { if ((ip)->i_ump->um_fstype == 1) (ip)->dinode_u.ffs1_din->di_uid = (cnp->cn_cred->cr_uid); else (ip)->dinode_u.ffs2_din->di_uid = (cnp->cn_cred->cr_uid); } while (0);
 if ((error = getinoquota(ip)) ||
     (error = ufs_quota_alloc_inode2(ip, cnp->cn_cred, 0))) {
  pool_put(&namei_pool, cnp->cn_pnbuf);
  ((ip)->i_vtbl->iv_inode_free)((ip), (ip->i_number), (mode));
  vput(tvp);
  vput(dvp);
  return (error);
 }
 ip->i_flag |= 0x0001 | 0x0002 | 0x0004;
 do { if ((ip)->i_ump->um_fstype == 1) (ip)->dinode_u.ffs1_din->di_mode = (mode); else (ip)->dinode_u.ffs2_din->di_mode = (mode); } while (0);
 tvp->v_type = (iftovt_tab[((mode) & 0170000) >> 12]);
 ip->i_effnlink = 1;
 do { if ((ip)->i_ump->um_fstype == 1) (ip)->dinode_u.ffs1_din->di_nlink = (1); else (ip)->dinode_u.ffs2_din->di_nlink = (1); } while (0);
 if (((tvp)->v_mount->mnt_flag & 0x04000000))
  softdep_change_linkcnt(ip, 0);
 if (((((ip)->i_ump->um_fstype == 1) ? (ip)->dinode_u.ffs1_din->di_mode : (ip)->dinode_u.ffs2_din->di_mode) & 0002000) &&
  !groupmember((((ip)->i_ump->um_fstype == 1) ? (ip)->dinode_u.ffs1_din->di_gid : (ip)->dinode_u.ffs2_din->di_gid), cnp->cn_cred) &&
     (dvp->v_mount->mnt_flag & 0x00000020) == 0 &&
     suser_ucred(cnp->cn_cred))
  do { if ((ip)->i_ump->um_fstype == 1) (ip)->dinode_u.ffs1_din->di_mode &= (~0002000); else (ip)->dinode_u.ffs2_din->di_mode &= (~0002000); } while (0);
 if ((error = ((ip)->i_vtbl->iv_update)((ip), (!((tvp)->v_mount->mnt_flag & 0x04000000)))) != 0)
  goto bad;
 ufs_makedirentry(ip, cnp, &newdir);
 if ((error = ufs_direnter(dvp, tvp, &newdir, cnp, ((void *)0))) != 0)
  goto bad;
 if ((cnp->cn_flags & 0x001000) == 0)
  pool_put(&namei_pool, cnp->cn_pnbuf);
 vput(dvp);
 *vpp = tvp;
 return (0);
bad:
 pool_put(&namei_pool, cnp->cn_pnbuf);
 vput(dvp);
 ip->i_effnlink = 0;
 do { if ((ip)->i_ump->um_fstype == 1) (ip)->dinode_u.ffs1_din->di_nlink = (0); else (ip)->dinode_u.ffs2_din->di_nlink = (0); } while (0);
 ip->i_flag |= 0x0002;
 if (((tvp)->v_mount->mnt_flag & 0x04000000))
  softdep_change_linkcnt(ip, 0);
 tvp->v_type = VNON;
 vput(tvp);
 return (error);
}
struct filterops ufsread_filtops =
 { 1, ((void *)0), filt_ufsdetach, filt_ufsread };
struct filterops ufswrite_filtops =
 { 1, ((void *)0), filt_ufsdetach, filt_ufswrite };
struct filterops ufsvnode_filtops =
 { 1, ((void *)0), filt_ufsdetach, filt_ufsvnode };
int
ufs_kqfilter(void *v)
{
 struct vop_kqfilter_args *ap = v;
 struct vnode *vp = ap->a_vp;
 struct knote *kn = ap->a_kn;
 switch (kn->kn_kevent.filter) {
 case (-1):
  kn->kn_fop = &ufsread_filtops;
  break;
 case (-2):
  kn->kn_fop = &ufswrite_filtops;
  break;
 case (-4):
  kn->kn_fop = &ufsvnode_filtops;
  break;
 default:
  return (22);
 }
 kn->kn_hook = (caddr_t)vp;
 do { (kn)->kn_selnext.sle_next = (&vp->v_selectinfo.si_note)->slh_first; (&vp->v_selectinfo.si_note)->slh_first = (kn); } while (0);
 return (0);
}
void
filt_ufsdetach(struct knote *kn)
{
 struct vnode *vp = (struct vnode *)kn->kn_hook;
 do { if ((&vp->v_selectinfo.si_note)->slh_first == (kn)) { do { ((&vp->v_selectinfo.si_note))->slh_first = ((&vp->v_selectinfo.si_note))->slh_first->kn_selnext.sle_next; } while (0); } else { struct knote *curelm = (&vp->v_selectinfo.si_note)->slh_first; while (curelm->kn_selnext.sle_next != (kn)) curelm = curelm->kn_selnext.sle_next; curelm->kn_selnext.sle_next = curelm->kn_selnext.sle_next->kn_selnext.sle_next; } ((kn)->kn_selnext.sle_next) = ((void *)-1); } while (0);
}
int
filt_ufsread(struct knote *kn, long hint)
{
 struct vnode *vp = (struct vnode *)kn->kn_hook;
 struct inode *ip = ((struct inode *)(vp)->v_data);
 if (hint == 0x0040) {
  kn->kn_kevent.flags |= (0x8000 | 0x0010);
  return (1);
 }
 kn->kn_kevent.data = (((ip)->i_ump->um_fstype == 1) ? (ip)->dinode_u.ffs1_din->di_size : (ip)->dinode_u.ffs2_din->di_size) - kn->kn_ptr.p_fp->f_offset;
 if (kn->kn_kevent.data == 0 && kn->kn_sfflags & 0x0002) {
  kn->kn_kevent.fflags |= 0x0002;
  return (1);
 }
 return (kn->kn_kevent.data != 0);
}
int
filt_ufswrite(struct knote *kn, long hint)
{
 if (hint == 0x0040) {
  kn->kn_kevent.flags |= (0x8000 | 0x0010);
  return (1);
 }
 kn->kn_kevent.data = 0;
 return (1);
}
int
filt_ufsvnode(struct knote *kn, long hint)
{
 if (kn->kn_sfflags & hint)
  kn->kn_kevent.fflags |= hint;
 if (hint == 0x0040) {
  kn->kn_kevent.flags |= 0x8000;
  return (1);
 }
 return (kn->kn_kevent.fflags != 0);
}
