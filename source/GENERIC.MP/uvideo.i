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
typedef unsigned int tcflag_t;
typedef unsigned char cc_t;
typedef unsigned int speed_t;
struct termios {
 tcflag_t c_iflag;
 tcflag_t c_oflag;
 tcflag_t c_cflag;
 tcflag_t c_lflag;
 cc_t c_cc[20];
 int c_ispeed;
 int c_ospeed;
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
struct ptmget {
 int cfd;
 int sfd;
 char cn[16];
 char sn[16];
};
struct clist {
 int c_cc;
 int c_cn;
 u_char *c_cf;
 u_char *c_cl;
 u_char *c_cs;
 u_char *c_ce;
 u_char *c_cq;
};
struct tty {
 struct { struct tty *tqe_next; struct tty **tqe_prev; } tty_link;
 struct clist t_rawq;
 long t_rawcc;
 struct clist t_canq;
 long t_cancc;
 struct clist t_outq;
 long t_outcc;
 int t_qlen;
 u_char t_line;
 dev_t t_dev;
 int t_state;
 int t_flags;
 struct pgrp *t_pgrp;
 struct session *t_session;
 struct selinfo t_rsel;
 struct selinfo t_wsel;
 struct termios t_termios;
 struct winsize t_winsize;
 void (*t_oproc)(struct tty *);
 int (*t_param)(struct tty *, struct termios *);
 int (*t_hwiflow)(struct tty *tp, int flag);
 void *t_sc;
 short t_column;
 short t_rocount, t_rocol;
 short t_hiwat;
 short t_lowat;
 short t_gen;
 struct timeout t_rstrt_to;
 struct timeval t_tv;
};
struct itty {
 dev_t t_dev;
 int t_rawq_c_cc;
 int t_canq_c_cc;
 int t_outq_c_cc;
 short t_hiwat;
 short t_lowat;
 short t_column;
 int t_state;
 struct session *t_session;
 pid_t t_pgrp_pg_id;
 u_char t_line;
};
struct speedtab {
 int sp_speed;
 int sp_code;
};
struct ttylist_head { struct tty *tqh_first; struct tty **tqh_last; };
extern int tty_count;
extern struct ttychars ttydefaults;
extern char ttyin[], ttyout[], ttopen[], ttclos[], ttybg[], ttybuf[];
extern int64_t tk_cancc, tk_nin, tk_nout, tk_rawcc;
int sysctl_tty(int *, u_int, void *, size_t *, void *, size_t);
int sysctl_pty(int *, u_int, void *, size_t *, void *, size_t);
int b_to_q(u_char *cp, int cc, struct clist *q);
void catq(struct clist *from, struct clist *to);
void clist_init(void);
int getc(struct clist *q);
void ndflush(struct clist *q, int cc);
int ndqb(struct clist *q, int flag);
u_char *nextc(struct clist *q, u_char *cp, int *c);
int putc(int c, struct clist *q);
int q_to_b(struct clist *q, u_char *cp, int cc);
int unputc(struct clist *q);
int nullmodem(struct tty *tp, int flag);
int tputchar(int c, struct tty *tp);
int ttioctl(struct tty *tp, u_long com, caddr_t data, int flag,
     struct proc *p);
int ttread(struct tty *tp, struct uio *uio, int flag);
void ttrstrt(void *tp);
int ttpoll(dev_t device, int events, struct proc *p);
int ttkqfilter(dev_t dev, struct knote *kn);
void ttsetwater(struct tty *tp);
int ttspeedtab(int speed, const struct speedtab *table);
int ttstart(struct tty *tp);
void ttwakeupwr(struct tty *tp);
void ttwakeup(struct tty *tp);
int ttwrite(struct tty *tp, struct uio *uio, int flag);
void ttychars(struct tty *tp);
int ttycheckoutq(struct tty *tp, int wait);
int ttyclose(struct tty *tp);
void ttyflush(struct tty *tp, int rw);
void ttyinfo(struct tty *tp);
int ttyinput(int c, struct tty *tp);
int ttylclose(struct tty *tp, int flag, struct proc *p);
int ttymodem(struct tty *tp, int flag);
int ttyopen(dev_t device, struct tty *tp, struct proc *p);
int ttyoutput(int c, struct tty *tp);
void ttypend(struct tty *tp);
void ttyretype(struct tty *tp);
void ttyrub(int c, struct tty *tp);
int ttysleep(struct tty *tp,
     void *chan, int pri, char *wmesg, int timeout);
int ttywait(struct tty *tp);
int ttywflush(struct tty *tp);
void ttytstamp(struct tty *tp, int octs, int ncts, int odcd, int ndcd);
void tty_init(void);
struct tty *ttymalloc(int);
void ttyfree(struct tty *);
u_char *firstc(struct clist *clp, int *c);
int cttyopen(dev_t, int, int, struct proc *);
int cttyread(dev_t, struct uio *, int);
int cttywrite(dev_t, struct uio *, int);
int cttyioctl(dev_t, u_long, caddr_t, int, struct proc *);
int cttypoll(dev_t, int, struct proc *);
void clalloc(struct clist *, int, int);
void clfree(struct clist *);
int nullioctl(struct tty *, u_long, caddr_t, int, struct proc *);
int pppopen(dev_t dev, struct tty *, struct proc *);
int pppclose(struct tty *, int, struct proc *);
int ppptioctl(struct tty *, u_long, caddr_t, int, struct proc *);
int pppinput(int c, struct tty *);
int pppstart(struct tty *);
int pppread(struct tty *, struct uio *, int);
int pppwrite(struct tty *, struct uio *, int);
int nmeaopen(dev_t, struct tty *, struct proc *);
int nmeaclose(struct tty *, int, struct proc *);
int nmeainput(int, struct tty *);
int mstsopen(dev_t, struct tty *, struct proc *);
int mstsclose(struct tty *, int, struct proc *);
int mstsinput(int, struct tty *);
int endrunopen(dev_t, struct tty *, struct proc *);
int endrunclose(struct tty *, int, struct proc *);
int endruninput(int, struct tty *);
struct flock {
 off_t l_start;
 off_t l_len;
 pid_t l_pid;
 short l_type;
 short l_whence;
};
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
typedef struct pollfd {
 int fd;
 short events;
 short revents;
} pollfd_t;
typedef unsigned int nfds_t;
struct mdproc {
 struct trapframe64 *md_tf;
 struct fpstate64 *md_fpstate;
 volatile int md_astpending;
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
int kthread_create(void (*)(void *), void *, struct proc **,
     const char *);
void kthread_create_deferred(void (*)(void *), void *);
void kthread_run_deferred_queue(void);
void kthread_exit(int) __attribute__((__noreturn__));
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
typedef u_int8_t uByte;
typedef u_int8_t uWord[2];
typedef u_int8_t uDWord[4];
struct usb_device_request {
 uByte bmRequestType;
 uByte bRequest;
 uWord wValue;
 uWord wIndex;
 uWord wLength;
} __attribute__((__packed__));
typedef struct usb_device_request usb_device_request_t;
struct usb_descriptor {
 uByte bLength;
 uByte bDescriptorType;
 uByte bDescriptorSubtype;
} __attribute__((__packed__));
typedef struct usb_descriptor usb_descriptor_t;
struct usb_device_descriptor {
 uByte bLength;
 uByte bDescriptorType;
 uWord bcdUSB;
 uByte bDeviceClass;
 uByte bDeviceSubClass;
 uByte bDeviceProtocol;
 uByte bMaxPacketSize;
 uWord idVendor;
 uWord idProduct;
 uWord bcdDevice;
 uByte iManufacturer;
 uByte iProduct;
 uByte iSerialNumber;
 uByte bNumConfigurations;
} __attribute__((__packed__));
typedef struct usb_device_descriptor usb_device_descriptor_t;
struct usb_config_descriptor {
 uByte bLength;
 uByte bDescriptorType;
 uWord wTotalLength;
 uByte bNumInterface;
 uByte bConfigurationValue;
 uByte iConfiguration;
 uByte bmAttributes;
 uByte bMaxPower;
} __attribute__((__packed__));
typedef struct usb_config_descriptor usb_config_descriptor_t;
struct usb_interface_descriptor {
 uByte bLength;
 uByte bDescriptorType;
 uByte bInterfaceNumber;
 uByte bAlternateSetting;
 uByte bNumEndpoints;
 uByte bInterfaceClass;
 uByte bInterfaceSubClass;
 uByte bInterfaceProtocol;
 uByte iInterface;
} __attribute__((__packed__));
typedef struct usb_interface_descriptor usb_interface_descriptor_t;
struct usb_interface_assoc_descriptor {
 uByte bLength;
 uByte bDescriptorType;
 uByte bFirstInterface;
 uByte bInterfaceCount;
 uByte bFunctionClass;
 uByte bFunctionSubClass;
 uByte bFunctionProtocol;
 uByte iFunction;
} __attribute__((__packed__));
typedef struct usb_interface_assoc_descriptor usb_interface_assoc_descriptor_t;
struct usb_endpoint_descriptor {
 uByte bLength;
 uByte bDescriptorType;
 uByte bEndpointAddress;
 uByte bmAttributes;
 uWord wMaxPacketSize;
 uByte bInterval;
} __attribute__((__packed__));
typedef struct usb_endpoint_descriptor usb_endpoint_descriptor_t;
struct usb_endpoint_ss_comp_descriptor {
 uByte bLength;
 uByte bDescriptorType;
 uByte bMaxBurst;
 uByte bmAttributes;
 uWord wBytesPerInterval;
} __attribute__((__packed__));
typedef struct usb_endpoint_ss_comp_descriptor
  usb_endpoint_ss_comp_descriptor_t;
struct usb_string_descriptor {
 uByte bLength;
 uByte bDescriptorType;
 uWord bString[126];
} __attribute__((__packed__));
typedef struct usb_string_descriptor usb_string_descriptor_t;
struct usb_hub_descriptor {
 uByte bDescLength;
 uByte bDescriptorType;
 uByte bNbrPorts;
 uWord wHubCharacteristics;
 uByte bPwrOn2PwrGood;
 uByte bHubContrCurrent;
 uByte DeviceRemovable[32];
} __attribute__((__packed__));
typedef struct usb_hub_descriptor usb_hub_descriptor_t;
struct usb_hub_ss_descriptor {
 uByte bDescLength;
 uByte bDescriptorType;
 uByte bNbrPorts;
 uWord wHubCharacteristics;
 uByte bPwrOn2PwrGood;
 uByte bHubContrCurrent;
 uByte bHubHdrDecLat;
 uWord wHubDelay;
 uByte DeviceRemovable[32];
} __attribute__((__packed__));
typedef struct usb_hub_ss_descriptor usb_hub_ss_descriptor_t;
struct usb_device_qualifier {
 uByte bLength;
 uByte bDescriptorType;
 uWord bcdUSB;
 uByte bDeviceClass;
 uByte bDeviceSubClass;
 uByte bDeviceProtocol;
 uByte bMaxPacketSize0;
 uByte bNumConfigurations;
 uByte bReserved;
} __attribute__((__packed__));
typedef struct usb_device_qualifier usb_device_qualifier_t;
struct usb_otg_descriptor {
 uByte bLength;
 uByte bDescriptorType;
 uByte bmAttributes;
} __attribute__((__packed__));
typedef struct usb_otg_descriptor usb_otg_descriptor_t;
struct usb_status {
 uWord wStatus;
} __attribute__((__packed__));
typedef struct usb_status usb_status_t;
struct usb_hub_status {
 uWord wHubStatus;
 uWord wHubChange;
} __attribute__((__packed__));
typedef struct usb_hub_status usb_hub_status_t;
struct usb_port_status {
 uWord wPortStatus;
 uWord wPortChange;
} __attribute__((__packed__));
typedef struct usb_port_status usb_port_status_t;
struct usb_ctl_request {
 int ucr_addr;
 usb_device_request_t ucr_request;
 void *ucr_data;
 int ucr_flags;
 int ucr_actlen;
};
struct usb_alt_interface {
 int uai_config_index;
 int uai_interface_index;
 int uai_alt_no;
};
struct usb_config_desc {
 int ucd_config_index;
 struct usb_config_descriptor ucd_desc;
};
struct usb_device_cdesc {
 u_int8_t udc_bus;
 u_int8_t udc_addr;
 int udc_config_index;
 struct usb_config_descriptor udc_desc;
};
struct usb_interface_desc {
 int uid_config_index;
 int uid_interface_index;
 int uid_alt_index;
 struct usb_interface_descriptor uid_desc;
};
struct usb_endpoint_desc {
 int ued_config_index;
 int ued_interface_index;
 int ued_alt_index;
 int ued_endpoint_index;
 struct usb_endpoint_descriptor ued_desc;
};
struct usb_full_desc {
 int ufd_config_index;
 u_int ufd_size;
 u_char *ufd_data;
};
struct usb_device_fdesc {
 u_int8_t udf_bus;
 u_int8_t udf_addr;
 int udf_config_index;
 u_int udf_size;
 u_char *udf_data;
};
struct usb_device_ddesc {
 u_int8_t udd_bus;
 u_int8_t udd_addr;
 struct usb_device_descriptor udd_desc;
};
struct usb_string_desc {
 int usd_string_index;
 int usd_language_id;
 struct usb_string_descriptor usd_desc;
};
struct usb_ctl_report_desc {
 int ucrd_size;
 u_char ucrd_data[1024];
};
struct usb_device_info {
 u_int8_t udi_bus;
 u_int8_t udi_addr;
 char udi_product[127];
 char udi_vendor[127];
 char udi_release[8];
 u_int16_t udi_productNo;
 u_int16_t udi_vendorNo;
 u_int16_t udi_releaseNo;
 u_int8_t udi_class;
 u_int8_t udi_subclass;
 u_int8_t udi_protocol;
 u_int8_t udi_config;
 u_int8_t udi_speed;
 int udi_power;
 int udi_nports;
 char udi_devnames[4][16];
 u_int8_t udi_ports[16];
 char udi_serial[127];
};
struct usb_ctl_report {
 int ucr_report;
 u_char ucr_data[1024];
};
struct usb_device_stats {
 u_long uds_requests[4];
};
struct usbd_bus;
struct usbd_device;
struct usbd_interface;
struct usbd_pipe;
struct usbd_xfer;
typedef enum {
 USBD_NORMAL_COMPLETION = 0,
 USBD_IN_PROGRESS,
 USBD_PENDING_REQUESTS,
 USBD_NOT_STARTED,
 USBD_INVAL,
 USBD_NOMEM,
 USBD_CANCELLED,
 USBD_BAD_ADDRESS,
 USBD_IN_USE,
 USBD_NO_ADDR,
 USBD_SET_ADDR_FAILED,
 USBD_NO_POWER,
 USBD_TOO_DEEP,
 USBD_IOERROR,
 USBD_NOT_CONFIGURED,
 USBD_TIMEOUT,
 USBD_SHORT_XFER,
 USBD_STALLED,
 USBD_INTERRUPTED,
 USBD_ERROR_MAX
} usbd_status;
typedef void (*usbd_callback)(struct usbd_xfer *, void *, usbd_status);
usbd_status usbd_open_pipe(struct usbd_interface *iface, u_int8_t address,
    u_int8_t flags, struct usbd_pipe **pipe);
usbd_status usbd_close_pipe(struct usbd_pipe *pipe);
usbd_status usbd_transfer(struct usbd_xfer *req);
struct usbd_xfer *usbd_alloc_xfer(struct usbd_device *);
void usbd_free_xfer(struct usbd_xfer *xfer);
void usbd_setup_xfer(struct usbd_xfer *xfer, struct usbd_pipe *pipe,
    void *priv, void *buffer, u_int32_t length, u_int16_t flags,
    u_int32_t timeout, usbd_callback);
void usbd_setup_default_xfer(struct usbd_xfer *xfer, struct usbd_device *dev,
    void *priv, u_int32_t timeout, usb_device_request_t *req,
    void *buffer, u_int32_t length, u_int16_t flags, usbd_callback);
void usbd_setup_isoc_xfer(struct usbd_xfer *xfer, struct usbd_pipe *pipe,
    void *priv, u_int16_t *frlengths, u_int32_t nframes,
    u_int16_t flags, usbd_callback);
void usbd_get_xfer_status(struct usbd_xfer *xfer, void **priv,
    void **buffer, u_int32_t *count, usbd_status *status);
usb_endpoint_descriptor_t *usbd_interface2endpoint_descriptor(
    struct usbd_interface *iface, u_int8_t address);
void usbd_abort_pipe(struct usbd_pipe *pipe);
usbd_status usbd_clear_endpoint_stall(struct usbd_pipe *pipe);
usbd_status usbd_clear_endpoint_stall_async(struct usbd_pipe *pipe);
void usbd_clear_endpoint_toggle(struct usbd_pipe *pipe);
usbd_status usbd_device2interface_handle(struct usbd_device *dev,
    u_int8_t ifaceno, struct usbd_interface **iface);
void *usbd_alloc_buffer(struct usbd_xfer *xfer, u_int32_t size);
void usbd_free_buffer(struct usbd_xfer *xfer);
usbd_status usbd_open_pipe_intr(struct usbd_interface *iface, u_int8_t address,
    u_int8_t flags, struct usbd_pipe **pipe, void *priv,
    void *buffer, u_int32_t length, usbd_callback, int);
usbd_status usbd_do_request(struct usbd_device *pipe, usb_device_request_t *req,
    void *data);
usbd_status usbd_request_async(struct usbd_xfer *xfer,
    usb_device_request_t *req, void *priv, usbd_callback callback);
usbd_status usbd_do_request_flags(struct usbd_device *pipe,
    usb_device_request_t *req, void *data, u_int16_t flags, int*, u_int32_t);
usb_interface_descriptor_t *usbd_get_interface_descriptor(
    struct usbd_interface *iface);
usb_config_descriptor_t *usbd_get_config_descriptor(struct usbd_device *dev);
usb_device_descriptor_t *usbd_get_device_descriptor(struct usbd_device *dev);
usbd_status usbd_set_interface(struct usbd_interface *, int);
int usbd_get_no_alts(usb_config_descriptor_t *, int);
void usbd_fill_deviceinfo(struct usbd_device *, struct usb_device_info *, int);
usb_config_descriptor_t *usbd_get_cdesc(struct usbd_device *, int, u_int *);
int usbd_get_interface_altindex(struct usbd_interface *iface);
usb_interface_descriptor_t *usbd_find_idesc(usb_config_descriptor_t *cd,
    int iindex, int ano);
usb_endpoint_descriptor_t *usbd_find_edesc(usb_config_descriptor_t *cd,
    int ifaceidx, int altidx, int endptidx);
void usbd_dopoll(struct usbd_device *);
void usbd_set_polling(struct usbd_device *iface, int on);
const char *usbd_errstr(usbd_status err);
const struct usbd_quirks *usbd_get_quirks(struct usbd_device *);
usb_endpoint_descriptor_t *usbd_get_endpoint_descriptor(
    struct usbd_interface *iface, u_int8_t address);
usbd_status usbd_reload_device_desc(struct usbd_device *);
int usbd_ratecheck(struct timeval *last);
int usbd_get_devcnt(struct usbd_device *);
void usbd_claim_iface(struct usbd_device *, int);
int usbd_iface_claimed(struct usbd_device *, int);
int usbd_is_dying(struct usbd_device *);
void usbd_deactivate(struct usbd_device *);
void usbd_ref_incr(struct usbd_device *);
void usbd_ref_decr(struct usbd_device *);
void usbd_ref_wait(struct usbd_device *);
struct usbd_desc_iter {
 const uByte *cur;
 const uByte *end;
};
void usbd_desc_iter_init(struct usbd_device *, struct usbd_desc_iter *);
const usb_descriptor_t *usbd_desc_iter_next(struct usbd_desc_iter *);
int usbd_str(usb_string_descriptor_t *, int, const char *);
struct usb_task {
 struct { struct usb_task *tqe_next; struct usb_task **tqe_prev; } next;
 struct usbd_device *dev;
 void (*fun)(void *);
 void *arg;
 char type;
 u_int state;
};
void usb_add_task(struct usbd_device *, struct usb_task *);
void usb_rem_task(struct usbd_device *, struct usb_task *);
void usb_wait_task(struct usbd_device *, struct usb_task *);
void usb_rem_wait_task(struct usbd_device *, struct usb_task *);
struct usb_devno {
 u_int16_t ud_vendor;
 u_int16_t ud_product;
};
const struct usb_devno *usbd_match_device(const struct usb_devno *tbl,
    u_int nentries, u_int sz, u_int16_t vendor, u_int16_t product);
struct usb_attach_arg {
 int port;
 int configno;
 int ifaceno;
 int vendor;
 int product;
 int release;
 struct usbd_device *device;
 struct usbd_interface *iface;
 int usegeneric;
 struct usbd_interface **ifaces;
 int nifaces;
};
struct usb_dma_block;
struct usb_dma {
 struct usb_dma_block *block;
 u_int offs;
};
struct usbd_xfer;
struct usbd_pipe;
struct usbd_endpoint {
 usb_endpoint_descriptor_t *edesc;
 int refcnt;
 int savedtoggle;
};
struct usbd_bus_methods {
 usbd_status (*open_pipe)(struct usbd_pipe *);
 int (*dev_setaddr)(struct usbd_device *, int);
 void (*soft_intr)(void *);
 void (*do_poll)(struct usbd_bus *);
 struct usbd_xfer * (*allocx)(struct usbd_bus *);
 void (*freex)(struct usbd_bus *, struct usbd_xfer *);
};
struct usbd_pipe_methods {
 usbd_status (*transfer)(struct usbd_xfer *);
 usbd_status (*start)(struct usbd_xfer *);
 void (*abort)(struct usbd_xfer *);
 void (*close)(struct usbd_pipe *);
 void (*cleartoggle)(struct usbd_pipe *);
 void (*done)(struct usbd_xfer *);
};
struct usbd_tt {
 struct usbd_hub *hub;
};
struct usbd_port {
 usb_port_status_t status;
 u_int16_t power;
 u_int8_t portno;
 u_int8_t restartcnt;
 u_int8_t reattach;
 struct usbd_device *device;
 struct usbd_device *parent;
 struct usbd_tt *tt;
};
struct usbd_hub {
 int (*explore)(struct usbd_device *);
 void *hubsoftc;
 struct usbd_port *ports;
 int nports;
 u_int8_t powerdelay;
 u_int8_t ttthink;
};
struct usbd_bus {
 struct device bdev;
 struct usbd_bus_methods *methods;
 u_int32_t pipe_size;
 struct usbd_device *root_hub;
 struct usbd_device *devices[128];
 char use_polling;
 char dying;
 int flags;
 struct device *usbctl;
 struct usb_device_stats stats;
 int intr_context;
 u_int no_intrs;
 int usbrev;
 void *soft;
 bus_dma_tag_t dmatag;
};
struct usbd_device {
 struct usbd_bus *bus;
 struct usbd_pipe *default_pipe;
 u_int8_t dying;
 u_int8_t ref_cnt;
 u_int8_t address;
 u_int8_t config;
 u_int8_t depth;
 u_int8_t speed;
 u_int8_t self_powered;
 u_int16_t power;
 int16_t langid;
 struct usbd_port *powersrc;
 struct usbd_device *myhub;
 struct usbd_port *myhsport;
 struct usbd_endpoint def_ep;
 usb_endpoint_descriptor_t def_ep_desc;
 struct usbd_interface *ifaces;
 usb_device_descriptor_t ddesc;
 usb_config_descriptor_t *cdesc;
 const struct usbd_quirks *quirks;
 struct usbd_hub *hub;
 struct device **subdevs;
 int ndevs;
 char *serial;
 char *vendor;
 char *product;
};
struct usbd_interface {
 struct usbd_device *device;
 usb_interface_descriptor_t *idesc;
 int index;
 int altindex;
 struct usbd_endpoint *endpoints;
 void *priv;
 struct { struct usbd_pipe *lh_first; } pipes;
 u_int8_t claimed;
};
struct usbd_pipe {
 struct usbd_interface *iface;
 struct usbd_device *device;
 struct usbd_endpoint *endpoint;
 size_t pipe_size;
 char running;
 char aborting;
 struct { struct usbd_xfer *sqh_first; struct usbd_xfer **sqh_last; } queue;
 struct { struct usbd_pipe *le_next; struct usbd_pipe **le_prev; } next;
 struct usbd_xfer *intrxfer;
 char repeat;
 int interval;
 struct usbd_pipe_methods *methods;
};
struct usbd_xfer {
 struct usbd_pipe *pipe;
 void *priv;
 char *buffer;
 u_int32_t length;
 u_int32_t actlen;
 u_int16_t flags;
 u_int32_t timeout;
 usbd_status status;
 usbd_callback callback;
 volatile char done;
 u_int32_t busy_free;
 usb_device_request_t request;
 u_int16_t *frlengths;
 int nframes;
 struct usbd_device *device;
 struct usb_dma dmabuf;
 int rqflags;
 struct { struct usbd_xfer *sqe_next; } next;
 void *hcpriv;
 struct usb_task abort_task;
 struct timeout timeout_handle;
};
void usbd_dump_iface(struct usbd_interface *);
void usbd_dump_device(struct usbd_device *);
void usbd_dump_endpoint(struct usbd_endpoint *);
void usbd_dump_queue(struct usbd_pipe *);
void usbd_dump_pipe(struct usbd_pipe *);
int usbctlprint(void *, const char *);
void usb_delay_ms(struct usbd_bus *, u_int);
usbd_status usbd_port_disown_to_1_1(struct usbd_device *, int);
int usbd_reset_port(struct usbd_device *, int);
usbd_status usbd_setup_pipe(struct usbd_device *,
      struct usbd_interface *, struct usbd_endpoint *, int,
      struct usbd_pipe **);
int usbd_set_address(struct usbd_device *, int);
usbd_status usbd_new_device(struct device *, struct usbd_bus *,
      int, int, int, struct usbd_port *);
usbd_status usbd_fill_iface_data(struct usbd_device *, int, int);
usbd_status usb_insert_transfer(struct usbd_xfer *);
void usb_transfer_complete(struct usbd_xfer *);
int usbd_detach(struct usbd_device *, struct device *);
void usb_needs_explore(struct usbd_device *, int);
void usb_needs_reattach(struct usbd_device *);
void usb_schedsoftintr(struct usbd_bus *);
static inline int
usbd_xfer_isread(struct usbd_xfer *xfer)
{
 if (xfer->rqflags & 0x01)
  return (xfer->request.bmRequestType & 0x80);
 return (xfer->pipe->endpoint->edesc->bEndpointAddress & 0x80);
}
usbd_status usbd_get_desc(struct usbd_device *dev, int type,
      int index, int len, void *desc);
usbd_status usbd_get_port_status(struct usbd_device *,
      int, usb_port_status_t *);
usbd_status usbd_set_hub_depth(struct usbd_device *, int);
usbd_status usbd_set_hub_feature(struct usbd_device *dev, int);
usbd_status usbd_clear_hub_feature(struct usbd_device *, int);
usbd_status usbd_set_port_feature(struct usbd_device *dev, int, int);
usbd_status usbd_clear_port_feature(struct usbd_device *, int, int);
usbd_status usbd_get_device_status(struct usbd_device *, usb_status_t *);
usbd_status usbd_get_hub_status(struct usbd_device *, usb_hub_status_t *);
usbd_status usbd_get_hub_descriptor(struct usbd_device *,
      usb_hub_descriptor_t *, uint8_t);
usbd_status usbd_get_hub_ss_descriptor(struct usbd_device *,
      usb_hub_ss_descriptor_t *, uint8_t);
struct usb_hid_descriptor *usbd_get_hid_descriptor(struct usbd_device *,
     usb_interface_descriptor_t *);
usbd_status usbd_set_idle(struct usbd_device *, int, int, int);
usbd_status usbd_get_report_descriptor(struct usbd_device *, int, void *,
      int);
usbd_status usbd_get_config(struct usbd_device *dev, u_int8_t *conf);
usbd_status usbd_get_string_desc(struct usbd_device *dev, int sindex,
      int langid,usb_string_descriptor_t *sdesc, int *sizep);
void usbd_delay_ms(struct usbd_device *, u_int);
usbd_status usbd_set_config_no(struct usbd_device *dev, int no, int msg);
usbd_status usbd_set_config_index(struct usbd_device *dev, int index,
      int msg);
void usb_detach_wait(struct device *);
void usb_detach_wakeup(struct device *);
struct v4l2_edid {
 u_int32_t pad;
 u_int32_t start_block;
 u_int32_t blocks;
 u_int32_t reserved[5];
 u_int8_t *edid;
};
enum v4l2_power_line_frequency {
 V4L2_CID_POWER_LINE_FREQUENCY_DISABLED = 0,
 V4L2_CID_POWER_LINE_FREQUENCY_50HZ = 1,
 V4L2_CID_POWER_LINE_FREQUENCY_60HZ = 2,
 V4L2_CID_POWER_LINE_FREQUENCY_AUTO = 3,
};
enum v4l2_colorfx {
 V4L2_COLORFX_NONE = 0,
 V4L2_COLORFX_BW = 1,
 V4L2_COLORFX_SEPIA = 2,
 V4L2_COLORFX_NEGATIVE = 3,
 V4L2_COLORFX_EMBOSS = 4,
 V4L2_COLORFX_SKETCH = 5,
 V4L2_COLORFX_SKY_BLUE = 6,
 V4L2_COLORFX_GRASS_GREEN = 7,
 V4L2_COLORFX_SKIN_WHITEN = 8,
 V4L2_COLORFX_VIVID = 9,
 V4L2_COLORFX_AQUA = 10,
 V4L2_COLORFX_ART_FREEZE = 11,
 V4L2_COLORFX_SILHOUETTE = 12,
 V4L2_COLORFX_SOLARIZATION = 13,
 V4L2_COLORFX_ANTIQUE = 14,
 V4L2_COLORFX_SET_CBCR = 15,
};
enum v4l2_mpeg_stream_type {
 V4L2_MPEG_STREAM_TYPE_MPEG2_PS = 0,
 V4L2_MPEG_STREAM_TYPE_MPEG2_TS = 1,
 V4L2_MPEG_STREAM_TYPE_MPEG1_SS = 2,
 V4L2_MPEG_STREAM_TYPE_MPEG2_DVD = 3,
 V4L2_MPEG_STREAM_TYPE_MPEG1_VCD = 4,
 V4L2_MPEG_STREAM_TYPE_MPEG2_SVCD = 5,
};
enum v4l2_mpeg_stream_vbi_fmt {
 V4L2_MPEG_STREAM_VBI_FMT_NONE = 0,
 V4L2_MPEG_STREAM_VBI_FMT_IVTV = 1,
};
enum v4l2_mpeg_audio_sampling_freq {
 V4L2_MPEG_AUDIO_SAMPLING_FREQ_44100 = 0,
 V4L2_MPEG_AUDIO_SAMPLING_FREQ_48000 = 1,
 V4L2_MPEG_AUDIO_SAMPLING_FREQ_32000 = 2,
};
enum v4l2_mpeg_audio_encoding {
 V4L2_MPEG_AUDIO_ENCODING_LAYER_1 = 0,
 V4L2_MPEG_AUDIO_ENCODING_LAYER_2 = 1,
 V4L2_MPEG_AUDIO_ENCODING_LAYER_3 = 2,
 V4L2_MPEG_AUDIO_ENCODING_AAC = 3,
 V4L2_MPEG_AUDIO_ENCODING_AC3 = 4,
};
enum v4l2_mpeg_audio_l1_bitrate {
 V4L2_MPEG_AUDIO_L1_BITRATE_32K = 0,
 V4L2_MPEG_AUDIO_L1_BITRATE_64K = 1,
 V4L2_MPEG_AUDIO_L1_BITRATE_96K = 2,
 V4L2_MPEG_AUDIO_L1_BITRATE_128K = 3,
 V4L2_MPEG_AUDIO_L1_BITRATE_160K = 4,
 V4L2_MPEG_AUDIO_L1_BITRATE_192K = 5,
 V4L2_MPEG_AUDIO_L1_BITRATE_224K = 6,
 V4L2_MPEG_AUDIO_L1_BITRATE_256K = 7,
 V4L2_MPEG_AUDIO_L1_BITRATE_288K = 8,
 V4L2_MPEG_AUDIO_L1_BITRATE_320K = 9,
 V4L2_MPEG_AUDIO_L1_BITRATE_352K = 10,
 V4L2_MPEG_AUDIO_L1_BITRATE_384K = 11,
 V4L2_MPEG_AUDIO_L1_BITRATE_416K = 12,
 V4L2_MPEG_AUDIO_L1_BITRATE_448K = 13,
};
enum v4l2_mpeg_audio_l2_bitrate {
 V4L2_MPEG_AUDIO_L2_BITRATE_32K = 0,
 V4L2_MPEG_AUDIO_L2_BITRATE_48K = 1,
 V4L2_MPEG_AUDIO_L2_BITRATE_56K = 2,
 V4L2_MPEG_AUDIO_L2_BITRATE_64K = 3,
 V4L2_MPEG_AUDIO_L2_BITRATE_80K = 4,
 V4L2_MPEG_AUDIO_L2_BITRATE_96K = 5,
 V4L2_MPEG_AUDIO_L2_BITRATE_112K = 6,
 V4L2_MPEG_AUDIO_L2_BITRATE_128K = 7,
 V4L2_MPEG_AUDIO_L2_BITRATE_160K = 8,
 V4L2_MPEG_AUDIO_L2_BITRATE_192K = 9,
 V4L2_MPEG_AUDIO_L2_BITRATE_224K = 10,
 V4L2_MPEG_AUDIO_L2_BITRATE_256K = 11,
 V4L2_MPEG_AUDIO_L2_BITRATE_320K = 12,
 V4L2_MPEG_AUDIO_L2_BITRATE_384K = 13,
};
enum v4l2_mpeg_audio_l3_bitrate {
 V4L2_MPEG_AUDIO_L3_BITRATE_32K = 0,
 V4L2_MPEG_AUDIO_L3_BITRATE_40K = 1,
 V4L2_MPEG_AUDIO_L3_BITRATE_48K = 2,
 V4L2_MPEG_AUDIO_L3_BITRATE_56K = 3,
 V4L2_MPEG_AUDIO_L3_BITRATE_64K = 4,
 V4L2_MPEG_AUDIO_L3_BITRATE_80K = 5,
 V4L2_MPEG_AUDIO_L3_BITRATE_96K = 6,
 V4L2_MPEG_AUDIO_L3_BITRATE_112K = 7,
 V4L2_MPEG_AUDIO_L3_BITRATE_128K = 8,
 V4L2_MPEG_AUDIO_L3_BITRATE_160K = 9,
 V4L2_MPEG_AUDIO_L3_BITRATE_192K = 10,
 V4L2_MPEG_AUDIO_L3_BITRATE_224K = 11,
 V4L2_MPEG_AUDIO_L3_BITRATE_256K = 12,
 V4L2_MPEG_AUDIO_L3_BITRATE_320K = 13,
};
enum v4l2_mpeg_audio_mode {
 V4L2_MPEG_AUDIO_MODE_STEREO = 0,
 V4L2_MPEG_AUDIO_MODE_JOINT_STEREO = 1,
 V4L2_MPEG_AUDIO_MODE_DUAL = 2,
 V4L2_MPEG_AUDIO_MODE_MONO = 3,
};
enum v4l2_mpeg_audio_mode_extension {
 V4L2_MPEG_AUDIO_MODE_EXTENSION_BOUND_4 = 0,
 V4L2_MPEG_AUDIO_MODE_EXTENSION_BOUND_8 = 1,
 V4L2_MPEG_AUDIO_MODE_EXTENSION_BOUND_12 = 2,
 V4L2_MPEG_AUDIO_MODE_EXTENSION_BOUND_16 = 3,
};
enum v4l2_mpeg_audio_emphasis {
 V4L2_MPEG_AUDIO_EMPHASIS_NONE = 0,
 V4L2_MPEG_AUDIO_EMPHASIS_50_DIV_15_uS = 1,
 V4L2_MPEG_AUDIO_EMPHASIS_CCITT_J17 = 2,
};
enum v4l2_mpeg_audio_crc {
 V4L2_MPEG_AUDIO_CRC_NONE = 0,
 V4L2_MPEG_AUDIO_CRC_CRC16 = 1,
};
enum v4l2_mpeg_audio_ac3_bitrate {
 V4L2_MPEG_AUDIO_AC3_BITRATE_32K = 0,
 V4L2_MPEG_AUDIO_AC3_BITRATE_40K = 1,
 V4L2_MPEG_AUDIO_AC3_BITRATE_48K = 2,
 V4L2_MPEG_AUDIO_AC3_BITRATE_56K = 3,
 V4L2_MPEG_AUDIO_AC3_BITRATE_64K = 4,
 V4L2_MPEG_AUDIO_AC3_BITRATE_80K = 5,
 V4L2_MPEG_AUDIO_AC3_BITRATE_96K = 6,
 V4L2_MPEG_AUDIO_AC3_BITRATE_112K = 7,
 V4L2_MPEG_AUDIO_AC3_BITRATE_128K = 8,
 V4L2_MPEG_AUDIO_AC3_BITRATE_160K = 9,
 V4L2_MPEG_AUDIO_AC3_BITRATE_192K = 10,
 V4L2_MPEG_AUDIO_AC3_BITRATE_224K = 11,
 V4L2_MPEG_AUDIO_AC3_BITRATE_256K = 12,
 V4L2_MPEG_AUDIO_AC3_BITRATE_320K = 13,
 V4L2_MPEG_AUDIO_AC3_BITRATE_384K = 14,
 V4L2_MPEG_AUDIO_AC3_BITRATE_448K = 15,
 V4L2_MPEG_AUDIO_AC3_BITRATE_512K = 16,
 V4L2_MPEG_AUDIO_AC3_BITRATE_576K = 17,
 V4L2_MPEG_AUDIO_AC3_BITRATE_640K = 18,
};
enum v4l2_mpeg_audio_dec_playback {
 V4L2_MPEG_AUDIO_DEC_PLAYBACK_AUTO = 0,
 V4L2_MPEG_AUDIO_DEC_PLAYBACK_STEREO = 1,
 V4L2_MPEG_AUDIO_DEC_PLAYBACK_LEFT = 2,
 V4L2_MPEG_AUDIO_DEC_PLAYBACK_RIGHT = 3,
 V4L2_MPEG_AUDIO_DEC_PLAYBACK_MONO = 4,
 V4L2_MPEG_AUDIO_DEC_PLAYBACK_SWAPPED_STEREO = 5,
};
enum v4l2_mpeg_video_encoding {
 V4L2_MPEG_VIDEO_ENCODING_MPEG_1 = 0,
 V4L2_MPEG_VIDEO_ENCODING_MPEG_2 = 1,
 V4L2_MPEG_VIDEO_ENCODING_MPEG_4_AVC = 2,
};
enum v4l2_mpeg_video_aspect {
 V4L2_MPEG_VIDEO_ASPECT_1x1 = 0,
 V4L2_MPEG_VIDEO_ASPECT_4x3 = 1,
 V4L2_MPEG_VIDEO_ASPECT_16x9 = 2,
 V4L2_MPEG_VIDEO_ASPECT_221x100 = 3,
};
enum v4l2_mpeg_video_bitrate_mode {
 V4L2_MPEG_VIDEO_BITRATE_MODE_VBR = 0,
 V4L2_MPEG_VIDEO_BITRATE_MODE_CBR = 1,
};
enum v4l2_mpeg_video_header_mode {
 V4L2_MPEG_VIDEO_HEADER_MODE_SEPARATE = 0,
 V4L2_MPEG_VIDEO_HEADER_MODE_JOINED_WITH_1ST_FRAME = 1,
};
enum v4l2_mpeg_video_multi_slice_mode {
 V4L2_MPEG_VIDEO_MULTI_SLICE_MODE_SINGLE = 0,
 V4L2_MPEG_VIDEO_MULTI_SICE_MODE_MAX_MB = 1,
 V4L2_MPEG_VIDEO_MULTI_SICE_MODE_MAX_BYTES = 2,
};
enum v4l2_mpeg_video_h264_entropy_mode {
 V4L2_MPEG_VIDEO_H264_ENTROPY_MODE_CAVLC = 0,
 V4L2_MPEG_VIDEO_H264_ENTROPY_MODE_CABAC = 1,
};
enum v4l2_mpeg_video_h264_level {
 V4L2_MPEG_VIDEO_H264_LEVEL_1_0 = 0,
 V4L2_MPEG_VIDEO_H264_LEVEL_1B = 1,
 V4L2_MPEG_VIDEO_H264_LEVEL_1_1 = 2,
 V4L2_MPEG_VIDEO_H264_LEVEL_1_2 = 3,
 V4L2_MPEG_VIDEO_H264_LEVEL_1_3 = 4,
 V4L2_MPEG_VIDEO_H264_LEVEL_2_0 = 5,
 V4L2_MPEG_VIDEO_H264_LEVEL_2_1 = 6,
 V4L2_MPEG_VIDEO_H264_LEVEL_2_2 = 7,
 V4L2_MPEG_VIDEO_H264_LEVEL_3_0 = 8,
 V4L2_MPEG_VIDEO_H264_LEVEL_3_1 = 9,
 V4L2_MPEG_VIDEO_H264_LEVEL_3_2 = 10,
 V4L2_MPEG_VIDEO_H264_LEVEL_4_0 = 11,
 V4L2_MPEG_VIDEO_H264_LEVEL_4_1 = 12,
 V4L2_MPEG_VIDEO_H264_LEVEL_4_2 = 13,
 V4L2_MPEG_VIDEO_H264_LEVEL_5_0 = 14,
 V4L2_MPEG_VIDEO_H264_LEVEL_5_1 = 15,
};
enum v4l2_mpeg_video_h264_loop_filter_mode {
 V4L2_MPEG_VIDEO_H264_LOOP_FILTER_MODE_ENABLED = 0,
 V4L2_MPEG_VIDEO_H264_LOOP_FILTER_MODE_DISABLED = 1,
 V4L2_MPEG_VIDEO_H264_LOOP_FILTER_MODE_DISABLED_AT_SLICE_BOUNDARY = 2,
};
enum v4l2_mpeg_video_h264_profile {
 V4L2_MPEG_VIDEO_H264_PROFILE_BASELINE = 0,
 V4L2_MPEG_VIDEO_H264_PROFILE_CONSTRAINED_BASELINE = 1,
 V4L2_MPEG_VIDEO_H264_PROFILE_MAIN = 2,
 V4L2_MPEG_VIDEO_H264_PROFILE_EXTENDED = 3,
 V4L2_MPEG_VIDEO_H264_PROFILE_HIGH = 4,
 V4L2_MPEG_VIDEO_H264_PROFILE_HIGH_10 = 5,
 V4L2_MPEG_VIDEO_H264_PROFILE_HIGH_422 = 6,
 V4L2_MPEG_VIDEO_H264_PROFILE_HIGH_444_PREDICTIVE = 7,
 V4L2_MPEG_VIDEO_H264_PROFILE_HIGH_10_INTRA = 8,
 V4L2_MPEG_VIDEO_H264_PROFILE_HIGH_422_INTRA = 9,
 V4L2_MPEG_VIDEO_H264_PROFILE_HIGH_444_INTRA = 10,
 V4L2_MPEG_VIDEO_H264_PROFILE_CAVLC_444_INTRA = 11,
 V4L2_MPEG_VIDEO_H264_PROFILE_SCALABLE_BASELINE = 12,
 V4L2_MPEG_VIDEO_H264_PROFILE_SCALABLE_HIGH = 13,
 V4L2_MPEG_VIDEO_H264_PROFILE_SCALABLE_HIGH_INTRA = 14,
 V4L2_MPEG_VIDEO_H264_PROFILE_STEREO_HIGH = 15,
 V4L2_MPEG_VIDEO_H264_PROFILE_MULTIVIEW_HIGH = 16,
};
enum v4l2_mpeg_video_h264_vui_sar_idc {
 V4L2_MPEG_VIDEO_H264_VUI_SAR_IDC_UNSPECIFIED = 0,
 V4L2_MPEG_VIDEO_H264_VUI_SAR_IDC_1x1 = 1,
 V4L2_MPEG_VIDEO_H264_VUI_SAR_IDC_12x11 = 2,
 V4L2_MPEG_VIDEO_H264_VUI_SAR_IDC_10x11 = 3,
 V4L2_MPEG_VIDEO_H264_VUI_SAR_IDC_16x11 = 4,
 V4L2_MPEG_VIDEO_H264_VUI_SAR_IDC_40x33 = 5,
 V4L2_MPEG_VIDEO_H264_VUI_SAR_IDC_24x11 = 6,
 V4L2_MPEG_VIDEO_H264_VUI_SAR_IDC_20x11 = 7,
 V4L2_MPEG_VIDEO_H264_VUI_SAR_IDC_32x11 = 8,
 V4L2_MPEG_VIDEO_H264_VUI_SAR_IDC_80x33 = 9,
 V4L2_MPEG_VIDEO_H264_VUI_SAR_IDC_18x11 = 10,
 V4L2_MPEG_VIDEO_H264_VUI_SAR_IDC_15x11 = 11,
 V4L2_MPEG_VIDEO_H264_VUI_SAR_IDC_64x33 = 12,
 V4L2_MPEG_VIDEO_H264_VUI_SAR_IDC_160x99 = 13,
 V4L2_MPEG_VIDEO_H264_VUI_SAR_IDC_4x3 = 14,
 V4L2_MPEG_VIDEO_H264_VUI_SAR_IDC_3x2 = 15,
 V4L2_MPEG_VIDEO_H264_VUI_SAR_IDC_2x1 = 16,
 V4L2_MPEG_VIDEO_H264_VUI_SAR_IDC_EXTENDED = 17,
};
enum v4l2_mpeg_video_h264_sei_fp_arrangement_type {
 V4L2_MPEG_VIDEO_H264_SEI_FP_ARRANGEMENT_TYPE_CHECKERBOARD = 0,
 V4L2_MPEG_VIDEO_H264_SEI_FP_ARRANGEMENT_TYPE_COLUMN = 1,
 V4L2_MPEG_VIDEO_H264_SEI_FP_ARRANGEMENT_TYPE_ROW = 2,
 V4L2_MPEG_VIDEO_H264_SEI_FP_ARRANGEMENT_TYPE_SIDE_BY_SIDE = 3,
 V4L2_MPEG_VIDEO_H264_SEI_FP_ARRANGEMENT_TYPE_TOP_BOTTOM = 4,
 V4L2_MPEG_VIDEO_H264_SEI_FP_ARRANGEMENT_TYPE_TEMPORAL = 5,
};
enum v4l2_mpeg_video_h264_fmo_map_type {
 V4L2_MPEG_VIDEO_H264_FMO_MAP_TYPE_INTERLEAVED_SLICES = 0,
 V4L2_MPEG_VIDEO_H264_FMO_MAP_TYPE_SCATTERED_SLICES = 1,
 V4L2_MPEG_VIDEO_H264_FMO_MAP_TYPE_FOREGROUND_WITH_LEFT_OVER = 2,
 V4L2_MPEG_VIDEO_H264_FMO_MAP_TYPE_BOX_OUT = 3,
 V4L2_MPEG_VIDEO_H264_FMO_MAP_TYPE_RASTER_SCAN = 4,
 V4L2_MPEG_VIDEO_H264_FMO_MAP_TYPE_WIPE_SCAN = 5,
 V4L2_MPEG_VIDEO_H264_FMO_MAP_TYPE_EXPLICIT = 6,
};
enum v4l2_mpeg_video_h264_fmo_change_dir {
 V4L2_MPEG_VIDEO_H264_FMO_CHANGE_DIR_RIGHT = 0,
 V4L2_MPEG_VIDEO_H264_FMO_CHANGE_DIR_LEFT = 1,
};
enum v4l2_mpeg_video_h264_hierarchical_coding_type {
 V4L2_MPEG_VIDEO_H264_HIERARCHICAL_CODING_B = 0,
 V4L2_MPEG_VIDEO_H264_HIERARCHICAL_CODING_P = 1,
};
enum v4l2_mpeg_video_mpeg4_level {
 V4L2_MPEG_VIDEO_MPEG4_LEVEL_0 = 0,
 V4L2_MPEG_VIDEO_MPEG4_LEVEL_0B = 1,
 V4L2_MPEG_VIDEO_MPEG4_LEVEL_1 = 2,
 V4L2_MPEG_VIDEO_MPEG4_LEVEL_2 = 3,
 V4L2_MPEG_VIDEO_MPEG4_LEVEL_3 = 4,
 V4L2_MPEG_VIDEO_MPEG4_LEVEL_3B = 5,
 V4L2_MPEG_VIDEO_MPEG4_LEVEL_4 = 6,
 V4L2_MPEG_VIDEO_MPEG4_LEVEL_5 = 7,
};
enum v4l2_mpeg_video_mpeg4_profile {
 V4L2_MPEG_VIDEO_MPEG4_PROFILE_SIMPLE = 0,
 V4L2_MPEG_VIDEO_MPEG4_PROFILE_ADVANCED_SIMPLE = 1,
 V4L2_MPEG_VIDEO_MPEG4_PROFILE_CORE = 2,
 V4L2_MPEG_VIDEO_MPEG4_PROFILE_SIMPLE_SCALABLE = 3,
 V4L2_MPEG_VIDEO_MPEG4_PROFILE_ADVANCED_CODING_EFFICIENCY = 4,
};
enum v4l2_vp8_num_partitions {
 V4L2_CID_MPEG_VIDEO_VPX_1_PARTITION = 0,
 V4L2_CID_MPEG_VIDEO_VPX_2_PARTITIONS = 1,
 V4L2_CID_MPEG_VIDEO_VPX_4_PARTITIONS = 2,
 V4L2_CID_MPEG_VIDEO_VPX_8_PARTITIONS = 3,
};
enum v4l2_vp8_num_ref_frames {
 V4L2_CID_MPEG_VIDEO_VPX_1_REF_FRAME = 0,
 V4L2_CID_MPEG_VIDEO_VPX_2_REF_FRAME = 1,
 V4L2_CID_MPEG_VIDEO_VPX_3_REF_FRAME = 2,
};
enum v4l2_vp8_golden_frame_sel {
 V4L2_CID_MPEG_VIDEO_VPX_GOLDEN_FRAME_USE_PREV = 0,
 V4L2_CID_MPEG_VIDEO_VPX_GOLDEN_FRAME_USE_REF_PERIOD = 1,
};
enum v4l2_mpeg_cx2341x_video_spatial_filter_mode {
 V4L2_MPEG_CX2341X_VIDEO_SPATIAL_FILTER_MODE_MANUAL = 0,
 V4L2_MPEG_CX2341X_VIDEO_SPATIAL_FILTER_MODE_AUTO = 1,
};
enum v4l2_mpeg_cx2341x_video_luma_spatial_filter_type {
 V4L2_MPEG_CX2341X_VIDEO_LUMA_SPATIAL_FILTER_TYPE_OFF = 0,
 V4L2_MPEG_CX2341X_VIDEO_LUMA_SPATIAL_FILTER_TYPE_1D_HOR = 1,
 V4L2_MPEG_CX2341X_VIDEO_LUMA_SPATIAL_FILTER_TYPE_1D_VERT = 2,
 V4L2_MPEG_CX2341X_VIDEO_LUMA_SPATIAL_FILTER_TYPE_2D_HV_SEPARABLE = 3,
 V4L2_MPEG_CX2341X_VIDEO_LUMA_SPATIAL_FILTER_TYPE_2D_SYM_NON_SEPARABLE = 4,
};
enum v4l2_mpeg_cx2341x_video_chroma_spatial_filter_type {
 V4L2_MPEG_CX2341X_VIDEO_CHROMA_SPATIAL_FILTER_TYPE_OFF = 0,
 V4L2_MPEG_CX2341X_VIDEO_CHROMA_SPATIAL_FILTER_TYPE_1D_HOR = 1,
};
enum v4l2_mpeg_cx2341x_video_temporal_filter_mode {
 V4L2_MPEG_CX2341X_VIDEO_TEMPORAL_FILTER_MODE_MANUAL = 0,
 V4L2_MPEG_CX2341X_VIDEO_TEMPORAL_FILTER_MODE_AUTO = 1,
};
enum v4l2_mpeg_cx2341x_video_median_filter_type {
 V4L2_MPEG_CX2341X_VIDEO_MEDIAN_FILTER_TYPE_OFF = 0,
 V4L2_MPEG_CX2341X_VIDEO_MEDIAN_FILTER_TYPE_HOR = 1,
 V4L2_MPEG_CX2341X_VIDEO_MEDIAN_FILTER_TYPE_VERT = 2,
 V4L2_MPEG_CX2341X_VIDEO_MEDIAN_FILTER_TYPE_HOR_VERT = 3,
 V4L2_MPEG_CX2341X_VIDEO_MEDIAN_FILTER_TYPE_DIAG = 4,
};
enum v4l2_mpeg_mfc51_video_frame_skip_mode {
 V4L2_MPEG_MFC51_VIDEO_FRAME_SKIP_MODE_DISABLED = 0,
 V4L2_MPEG_MFC51_VIDEO_FRAME_SKIP_MODE_LEVEL_LIMIT = 1,
 V4L2_MPEG_MFC51_VIDEO_FRAME_SKIP_MODE_BUF_LIMIT = 2,
};
enum v4l2_mpeg_mfc51_video_force_frame_type {
 V4L2_MPEG_MFC51_VIDEO_FORCE_FRAME_TYPE_DISABLED = 0,
 V4L2_MPEG_MFC51_VIDEO_FORCE_FRAME_TYPE_I_FRAME = 1,
 V4L2_MPEG_MFC51_VIDEO_FORCE_FRAME_TYPE_NOT_CODED = 2,
};
enum v4l2_exposure_auto_type {
 V4L2_EXPOSURE_AUTO = 0,
 V4L2_EXPOSURE_MANUAL = 1,
 V4L2_EXPOSURE_SHUTTER_PRIORITY = 2,
 V4L2_EXPOSURE_APERTURE_PRIORITY = 3
};
enum v4l2_auto_n_preset_white_balance {
 V4L2_WHITE_BALANCE_MANUAL = 0,
 V4L2_WHITE_BALANCE_AUTO = 1,
 V4L2_WHITE_BALANCE_INCANDESCENT = 2,
 V4L2_WHITE_BALANCE_FLUORESCENT = 3,
 V4L2_WHITE_BALANCE_FLUORESCENT_H = 4,
 V4L2_WHITE_BALANCE_HORIZON = 5,
 V4L2_WHITE_BALANCE_DAYLIGHT = 6,
 V4L2_WHITE_BALANCE_FLASH = 7,
 V4L2_WHITE_BALANCE_CLOUDY = 8,
 V4L2_WHITE_BALANCE_SHADE = 9,
};
enum v4l2_iso_sensitivity_auto_type {
 V4L2_ISO_SENSITIVITY_MANUAL = 0,
 V4L2_ISO_SENSITIVITY_AUTO = 1,
};
enum v4l2_exposure_metering {
 V4L2_EXPOSURE_METERING_AVERAGE = 0,
 V4L2_EXPOSURE_METERING_CENTER_WEIGHTED = 1,
 V4L2_EXPOSURE_METERING_SPOT = 2,
 V4L2_EXPOSURE_METERING_MATRIX = 3,
};
enum v4l2_scene_mode {
 V4L2_SCENE_MODE_NONE = 0,
 V4L2_SCENE_MODE_BACKLIGHT = 1,
 V4L2_SCENE_MODE_BEACH_SNOW = 2,
 V4L2_SCENE_MODE_CANDLE_LIGHT = 3,
 V4L2_SCENE_MODE_DAWN_DUSK = 4,
 V4L2_SCENE_MODE_FALL_COLORS = 5,
 V4L2_SCENE_MODE_FIREWORKS = 6,
 V4L2_SCENE_MODE_LANDSCAPE = 7,
 V4L2_SCENE_MODE_NIGHT = 8,
 V4L2_SCENE_MODE_PARTY_INDOOR = 9,
 V4L2_SCENE_MODE_PORTRAIT = 10,
 V4L2_SCENE_MODE_SPORTS = 11,
 V4L2_SCENE_MODE_SUNSET = 12,
 V4L2_SCENE_MODE_TEXT = 13,
};
enum v4l2_auto_focus_range {
 V4L2_AUTO_FOCUS_RANGE_AUTO = 0,
 V4L2_AUTO_FOCUS_RANGE_NORMAL = 1,
 V4L2_AUTO_FOCUS_RANGE_MACRO = 2,
 V4L2_AUTO_FOCUS_RANGE_INFINITY = 3,
};
enum v4l2_preemphasis {
 V4L2_PREEMPHASIS_DISABLED = 0,
 V4L2_PREEMPHASIS_50_uS = 1,
 V4L2_PREEMPHASIS_75_uS = 2,
};
enum v4l2_flash_led_mode {
 V4L2_FLASH_LED_MODE_NONE,
 V4L2_FLASH_LED_MODE_FLASH,
 V4L2_FLASH_LED_MODE_TORCH,
};
enum v4l2_flash_strobe_source {
 V4L2_FLASH_STROBE_SOURCE_SOFTWARE,
 V4L2_FLASH_STROBE_SOURCE_EXTERNAL,
};
enum v4l2_jpeg_chroma_subsampling {
 V4L2_JPEG_CHROMA_SUBSAMPLING_444 = 0,
 V4L2_JPEG_CHROMA_SUBSAMPLING_422 = 1,
 V4L2_JPEG_CHROMA_SUBSAMPLING_420 = 2,
 V4L2_JPEG_CHROMA_SUBSAMPLING_411 = 3,
 V4L2_JPEG_CHROMA_SUBSAMPLING_410 = 4,
 V4L2_JPEG_CHROMA_SUBSAMPLING_GRAY = 5,
};
enum v4l2_dv_tx_mode {
 V4L2_DV_TX_MODE_DVI_D = 0,
 V4L2_DV_TX_MODE_HDMI = 1,
};
enum v4l2_dv_rgb_range {
 V4L2_DV_RGB_RANGE_AUTO = 0,
 V4L2_DV_RGB_RANGE_LIMITED = 1,
 V4L2_DV_RGB_RANGE_FULL = 2,
};
enum v4l2_dv_it_content_type {
 V4L2_DV_IT_CONTENT_TYPE_GRAPHICS = 0,
 V4L2_DV_IT_CONTENT_TYPE_PHOTO = 1,
 V4L2_DV_IT_CONTENT_TYPE_CINEMA = 2,
 V4L2_DV_IT_CONTENT_TYPE_GAME = 3,
 V4L2_DV_IT_CONTENT_TYPE_NO_ITC = 4,
};
enum v4l2_deemphasis {
 V4L2_DEEMPHASIS_DISABLED = V4L2_PREEMPHASIS_DISABLED,
 V4L2_DEEMPHASIS_50_uS = V4L2_PREEMPHASIS_50_uS,
 V4L2_DEEMPHASIS_75_uS = V4L2_PREEMPHASIS_75_uS,
};
enum v4l2_detect_md_mode {
 V4L2_DETECT_MD_MODE_DISABLED = 0,
 V4L2_DETECT_MD_MODE_GLOBAL = 1,
 V4L2_DETECT_MD_MODE_THRESHOLD_GRID = 2,
 V4L2_DETECT_MD_MODE_REGION_GRID = 3,
};
enum v4l2_field {
 V4L2_FIELD_ANY = 0,
 V4L2_FIELD_NONE = 1,
 V4L2_FIELD_TOP = 2,
 V4L2_FIELD_BOTTOM = 3,
 V4L2_FIELD_INTERLACED = 4,
 V4L2_FIELD_SEQ_TB = 5,
 V4L2_FIELD_SEQ_BT = 6,
 V4L2_FIELD_ALTERNATE = 7,
 V4L2_FIELD_INTERLACED_TB = 8,
 V4L2_FIELD_INTERLACED_BT = 9,
};
enum v4l2_buf_type {
 V4L2_BUF_TYPE_VIDEO_CAPTURE = 1,
 V4L2_BUF_TYPE_VIDEO_OUTPUT = 2,
 V4L2_BUF_TYPE_VIDEO_OVERLAY = 3,
 V4L2_BUF_TYPE_VBI_CAPTURE = 4,
 V4L2_BUF_TYPE_VBI_OUTPUT = 5,
 V4L2_BUF_TYPE_SLICED_VBI_CAPTURE = 6,
 V4L2_BUF_TYPE_SLICED_VBI_OUTPUT = 7,
 V4L2_BUF_TYPE_VIDEO_OUTPUT_OVERLAY = 8,
 V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE = 9,
 V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE = 10,
 V4L2_BUF_TYPE_SDR_CAPTURE = 11,
 V4L2_BUF_TYPE_SDR_OUTPUT = 12,
 V4L2_BUF_TYPE_PRIVATE = 0x80,
};
enum v4l2_tuner_type {
 V4L2_TUNER_RADIO = 1,
 V4L2_TUNER_ANALOG_TV = 2,
 V4L2_TUNER_DIGITAL_TV = 3,
 V4L2_TUNER_SDR = 4,
 V4L2_TUNER_RF = 5,
};
enum v4l2_memory {
 V4L2_MEMORY_MMAP = 1,
 V4L2_MEMORY_USERPTR = 2,
 V4L2_MEMORY_OVERLAY = 3,
 V4L2_MEMORY_DMABUF = 4,
};
enum v4l2_colorspace {
 V4L2_COLORSPACE_DEFAULT = 0,
 V4L2_COLORSPACE_SMPTE170M = 1,
 V4L2_COLORSPACE_SMPTE240M = 2,
 V4L2_COLORSPACE_REC709 = 3,
 V4L2_COLORSPACE_BT878 = 4,
 V4L2_COLORSPACE_470_SYSTEM_M = 5,
 V4L2_COLORSPACE_470_SYSTEM_BG = 6,
 V4L2_COLORSPACE_JPEG = 7,
 V4L2_COLORSPACE_SRGB = 8,
 V4L2_COLORSPACE_ADOBERGB = 9,
 V4L2_COLORSPACE_BT2020 = 10,
 V4L2_COLORSPACE_RAW = 11,
 V4L2_COLORSPACE_DCI_P3 = 12,
};
enum v4l2_xfer_func {
 V4L2_XFER_FUNC_DEFAULT = 0,
 V4L2_XFER_FUNC_709 = 1,
 V4L2_XFER_FUNC_SRGB = 2,
 V4L2_XFER_FUNC_ADOBERGB = 3,
 V4L2_XFER_FUNC_SMPTE240M = 4,
 V4L2_XFER_FUNC_NONE = 5,
 V4L2_XFER_FUNC_DCI_P3 = 6,
 V4L2_XFER_FUNC_SMPTE2084 = 7,
};
enum v4l2_ycbcr_encoding {
 V4L2_YCBCR_ENC_DEFAULT = 0,
 V4L2_YCBCR_ENC_601 = 1,
 V4L2_YCBCR_ENC_709 = 2,
 V4L2_YCBCR_ENC_XV601 = 3,
 V4L2_YCBCR_ENC_XV709 = 4,
 V4L2_YCBCR_ENC_SYCC = 5,
 V4L2_YCBCR_ENC_BT2020 = 6,
 V4L2_YCBCR_ENC_BT2020_CONST_LUM = 7,
 V4L2_YCBCR_ENC_SMPTE240M = 8,
};
enum v4l2_hsv_encoding {
 V4L2_HSV_ENC_180 = 128,
 V4L2_HSV_ENC_256 = 129,
};
enum v4l2_quantization {
 V4L2_QUANTIZATION_DEFAULT = 0,
 V4L2_QUANTIZATION_FULL_RANGE = 1,
 V4L2_QUANTIZATION_LIM_RANGE = 2,
};
enum v4l2_priority {
 V4L2_PRIORITY_UNSET = 0,
 V4L2_PRIORITY_BACKGROUND = 1,
 V4L2_PRIORITY_INTERACTIVE = 2,
 V4L2_PRIORITY_RECORD = 3,
 V4L2_PRIORITY_DEFAULT = V4L2_PRIORITY_INTERACTIVE,
};
struct v4l2_rect {
 int32_t left;
 int32_t top;
 u_int32_t width;
 u_int32_t height;
};
struct v4l2_fract {
 u_int32_t numerator;
 u_int32_t denominator;
};
struct v4l2_capability {
 u_int8_t driver[16];
 u_int8_t card[32];
 u_int8_t bus_info[32];
 u_int32_t version;
 u_int32_t capabilities;
 u_int32_t device_caps;
 u_int32_t reserved[3];
};
struct v4l2_pix_format {
 u_int32_t width;
 u_int32_t height;
 u_int32_t pixelformat;
 u_int32_t field;
 u_int32_t bytesperline;
 u_int32_t sizeimage;
 u_int32_t colorspace;
 u_int32_t priv;
 u_int32_t flags;
 union {
  u_int32_t ycbcr_enc;
  u_int32_t hsv_enc;
 };
 u_int32_t quantization;
 u_int32_t xfer_func;
};
struct v4l2_fmtdesc {
 u_int32_t index;
 u_int32_t type;
 u_int32_t flags;
 u_int8_t description[32];
 u_int32_t pixelformat;
 u_int32_t reserved[4];
};
enum v4l2_frmsizetypes {
 V4L2_FRMSIZE_TYPE_DISCRETE = 1,
 V4L2_FRMSIZE_TYPE_CONTINUOUS = 2,
 V4L2_FRMSIZE_TYPE_STEPWISE = 3,
};
struct v4l2_frmsize_discrete {
 u_int32_t width;
 u_int32_t height;
};
struct v4l2_frmsize_stepwise {
 u_int32_t min_width;
 u_int32_t max_width;
 u_int32_t step_width;
 u_int32_t min_height;
 u_int32_t max_height;
 u_int32_t step_height;
};
struct v4l2_frmsizeenum {
 u_int32_t index;
 u_int32_t pixel_format;
 u_int32_t type;
 union {
  struct v4l2_frmsize_discrete discrete;
  struct v4l2_frmsize_stepwise stepwise;
 };
 u_int32_t reserved[2];
};
enum v4l2_frmivaltypes {
 V4L2_FRMIVAL_TYPE_DISCRETE = 1,
 V4L2_FRMIVAL_TYPE_CONTINUOUS = 2,
 V4L2_FRMIVAL_TYPE_STEPWISE = 3,
};
struct v4l2_frmival_stepwise {
 struct v4l2_fract min;
 struct v4l2_fract max;
 struct v4l2_fract step;
};
struct v4l2_frmivalenum {
 u_int32_t index;
 u_int32_t pixel_format;
 u_int32_t width;
 u_int32_t height;
 u_int32_t type;
 union {
  struct v4l2_fract discrete;
  struct v4l2_frmival_stepwise stepwise;
 };
 u_int32_t reserved[2];
};
struct v4l2_timecode {
 u_int32_t type;
 u_int32_t flags;
 u_int8_t frames;
 u_int8_t seconds;
 u_int8_t minutes;
 u_int8_t hours;
 u_int8_t userbits[4];
};
struct v4l2_jpegcompression {
 int quality;
 int APPn;
 int APP_len;
 char APP_data[60];
 int COM_len;
 char COM_data[60];
 u_int32_t jpeg_markers;
};
struct v4l2_requestbuffers {
 u_int32_t count;
 u_int32_t type;
 u_int32_t memory;
 u_int32_t reserved[2];
};
struct v4l2_plane {
 u_int32_t bytesused;
 u_int32_t length;
 union {
  u_int32_t mem_offset;
  unsigned long userptr;
  int32_t fd;
 } m;
 u_int32_t data_offset;
 u_int32_t reserved[11];
};
struct v4l2_buffer {
 u_int32_t index;
 u_int32_t type;
 u_int32_t bytesused;
 u_int32_t flags;
 u_int32_t field;
 struct timeval timestamp;
 struct v4l2_timecode timecode;
 u_int32_t sequence;
 u_int32_t memory;
 union {
  u_int32_t offset;
  unsigned long userptr;
  struct v4l2_plane *planes;
  int32_t fd;
 } m;
 u_int32_t length;
 u_int32_t reserved2;
 u_int32_t reserved;
};
struct v4l2_exportbuffer {
 u_int32_t type;
 u_int32_t index;
 u_int32_t plane;
 u_int32_t flags;
 int32_t fd;
 u_int32_t reserved[11];
};
struct v4l2_framebuffer {
 u_int32_t capability;
 u_int32_t flags;
 void *base;
 struct {
  u_int32_t width;
  u_int32_t height;
  u_int32_t pixelformat;
  u_int32_t field;
  u_int32_t bytesperline;
  u_int32_t sizeimage;
  u_int32_t colorspace;
  u_int32_t priv;
 } fmt;
};
struct v4l2_clip {
 struct v4l2_rect c;
 struct v4l2_clip *next;
};
struct v4l2_window {
 struct v4l2_rect w;
 u_int32_t field;
 u_int32_t chromakey;
 struct v4l2_clip *clips;
 u_int32_t clipcount;
 void *bitmap;
 u_int8_t global_alpha;
};
struct v4l2_captureparm {
 u_int32_t capability;
 u_int32_t capturemode;
 struct v4l2_fract timeperframe;
 u_int32_t extendedmode;
 u_int32_t readbuffers;
 u_int32_t reserved[4];
};
struct v4l2_outputparm {
 u_int32_t capability;
 u_int32_t outputmode;
 struct v4l2_fract timeperframe;
 u_int32_t extendedmode;
 u_int32_t writebuffers;
 u_int32_t reserved[4];
};
struct v4l2_cropcap {
 u_int32_t type;
 struct v4l2_rect bounds;
 struct v4l2_rect defrect;
 struct v4l2_fract pixelaspect;
};
struct v4l2_crop {
 u_int32_t type;
 struct v4l2_rect c;
};
struct v4l2_selection {
 u_int32_t type;
 u_int32_t target;
 u_int32_t flags;
 struct v4l2_rect r;
 u_int32_t reserved[9];
};
typedef u_int64_t v4l2_std_id;
struct v4l2_standard {
 u_int32_t index;
 v4l2_std_id id;
 u_int8_t name[24];
 struct v4l2_fract frameperiod;
 u_int32_t framelines;
 u_int32_t reserved[4];
};
struct v4l2_bt_timings {
 u_int32_t width;
 u_int32_t height;
 u_int32_t interlaced;
 u_int32_t polarities;
 u_int64_t pixelclock;
 u_int32_t hfrontporch;
 u_int32_t hsync;
 u_int32_t hbackporch;
 u_int32_t vfrontporch;
 u_int32_t vsync;
 u_int32_t vbackporch;
 u_int32_t il_vfrontporch;
 u_int32_t il_vsync;
 u_int32_t il_vbackporch;
 u_int32_t standards;
 u_int32_t flags;
 struct v4l2_fract picture_aspect;
 u_int8_t cea861_vic;
 u_int8_t hdmi_vic;
 u_int8_t reserved[46];
} __attribute__ ((packed));
struct v4l2_dv_timings {
 u_int32_t type;
 union {
  struct v4l2_bt_timings bt;
  u_int32_t reserved[32];
 };
} __attribute__ ((packed));
struct v4l2_enum_dv_timings {
 u_int32_t index;
 u_int32_t pad;
 u_int32_t reserved[2];
 struct v4l2_dv_timings timings;
};
struct v4l2_bt_timings_cap {
 u_int32_t min_width;
 u_int32_t max_width;
 u_int32_t min_height;
 u_int32_t max_height;
 u_int64_t min_pixelclock;
 u_int64_t max_pixelclock;
 u_int32_t standards;
 u_int32_t capabilities;
 u_int32_t reserved[16];
} __attribute__ ((packed));
struct v4l2_dv_timings_cap {
 u_int32_t type;
 u_int32_t pad;
 u_int32_t reserved[2];
 union {
  struct v4l2_bt_timings_cap bt;
  u_int32_t raw_data[32];
 };
};
struct v4l2_input {
 u_int32_t index;
 u_int8_t name[32];
 u_int32_t type;
 u_int32_t audioset;
 u_int32_t tuner;
 v4l2_std_id std;
 u_int32_t status;
 u_int32_t capabilities;
 u_int32_t reserved[3];
};
struct v4l2_output {
 u_int32_t index;
 u_int8_t name[32];
 u_int32_t type;
 u_int32_t audioset;
 u_int32_t modulator;
 v4l2_std_id std;
 u_int32_t capabilities;
 u_int32_t reserved[3];
};
struct v4l2_control {
 u_int32_t id;
 int32_t value;
};
struct v4l2_ext_control {
 u_int32_t id;
 u_int32_t size;
 u_int32_t reserved2[1];
 union {
  int32_t value;
  int64_t value64;
  char *string;
  u_int8_t *p_u8;
  u_int16_t *p_u16;
  u_int32_t *p_u32;
  void *ptr;
 };
} __attribute__ ((packed));
struct v4l2_ext_controls {
 union {
  u_int32_t ctrl_class;
  u_int32_t which;
 };
 u_int32_t count;
 u_int32_t error_idx;
 u_int32_t reserved[2];
 struct v4l2_ext_control *controls;
};
enum v4l2_ctrl_type {
 V4L2_CTRL_TYPE_INTEGER = 1,
 V4L2_CTRL_TYPE_BOOLEAN = 2,
 V4L2_CTRL_TYPE_MENU = 3,
 V4L2_CTRL_TYPE_BUTTON = 4,
 V4L2_CTRL_TYPE_INTEGER64 = 5,
 V4L2_CTRL_TYPE_CTRL_CLASS = 6,
 V4L2_CTRL_TYPE_STRING = 7,
 V4L2_CTRL_TYPE_BITMASK = 8,
 V4L2_CTRL_TYPE_INTEGER_MENU = 9,
 V4L2_CTRL_COMPOUND_TYPES = 0x0100,
 V4L2_CTRL_TYPE_U8 = 0x0100,
 V4L2_CTRL_TYPE_U16 = 0x0101,
 V4L2_CTRL_TYPE_U32 = 0x0102,
};
struct v4l2_queryctrl {
 u_int32_t id;
 u_int32_t type;
 u_int8_t name[32];
 int32_t minimum;
 int32_t maximum;
 int32_t step;
 int32_t default_value;
 u_int32_t flags;
 u_int32_t reserved[2];
};
struct v4l2_query_ext_ctrl {
 u_int32_t id;
 u_int32_t type;
 char name[32];
 int64_t minimum;
 int64_t maximum;
 u_int64_t step;
 int64_t default_value;
 u_int32_t flags;
 u_int32_t elem_size;
 u_int32_t elems;
 u_int32_t nr_of_dims;
 u_int32_t dims[(4)];
 u_int32_t reserved[32];
};
struct v4l2_querymenu {
 u_int32_t id;
 u_int32_t index;
 union {
  u_int8_t name[32];
  int64_t value;
 };
 u_int32_t reserved;
} __attribute__ ((packed));
struct v4l2_tuner {
 u_int32_t index;
 u_int8_t name[32];
 u_int32_t type;
 u_int32_t capability;
 u_int32_t rangelow;
 u_int32_t rangehigh;
 u_int32_t rxsubchans;
 u_int32_t audmode;
 int32_t signal;
 int32_t afc;
 u_int32_t reserved[4];
};
struct v4l2_modulator {
 u_int32_t index;
 u_int8_t name[32];
 u_int32_t capability;
 u_int32_t rangelow;
 u_int32_t rangehigh;
 u_int32_t txsubchans;
 u_int32_t type;
 u_int32_t reserved[3];
};
struct v4l2_frequency {
 u_int32_t tuner;
 u_int32_t type;
 u_int32_t frequency;
 u_int32_t reserved[8];
};
struct v4l2_frequency_band {
 u_int32_t tuner;
 u_int32_t type;
 u_int32_t index;
 u_int32_t capability;
 u_int32_t rangelow;
 u_int32_t rangehigh;
 u_int32_t modulation;
 u_int32_t reserved[9];
};
struct v4l2_hw_freq_seek {
 u_int32_t tuner;
 u_int32_t type;
 u_int32_t seek_upward;
 u_int32_t wrap_around;
 u_int32_t spacing;
 u_int32_t rangelow;
 u_int32_t rangehigh;
 u_int32_t reserved[5];
};
struct v4l2_rds_data {
 u_int8_t lsb;
 u_int8_t msb;
 u_int8_t block;
} __attribute__ ((packed));
struct v4l2_audio {
 u_int32_t index;
 u_int8_t name[32];
 u_int32_t capability;
 u_int32_t mode;
 u_int32_t reserved[2];
};
struct v4l2_audioout {
 u_int32_t index;
 u_int8_t name[32];
 u_int32_t capability;
 u_int32_t mode;
 u_int32_t reserved[2];
};
struct v4l2_enc_idx_entry {
 u_int64_t offset;
 u_int64_t pts;
 u_int32_t length;
 u_int32_t flags;
 u_int32_t reserved[2];
};
struct v4l2_enc_idx {
 u_int32_t entries;
 u_int32_t entries_cap;
 u_int32_t reserved[4];
 struct v4l2_enc_idx_entry entry[(64)];
};
struct v4l2_encoder_cmd {
 u_int32_t cmd;
 u_int32_t flags;
 union {
  struct {
   u_int32_t data[8];
  } raw;
 };
};
struct v4l2_decoder_cmd {
 u_int32_t cmd;
 u_int32_t flags;
 union {
  struct {
   u_int64_t pts;
  } stop;
  struct {
   int32_t speed;
   u_int32_t format;
  } start;
  struct {
   u_int32_t data[16];
  } raw;
 };
};
struct v4l2_vbi_format {
 u_int32_t sampling_rate;
 u_int32_t offset;
 u_int32_t samples_per_line;
 u_int32_t sample_format;
 int32_t start[2];
 u_int32_t count[2];
 u_int32_t flags;
 u_int32_t reserved[2];
};
struct v4l2_sliced_vbi_format {
 u_int16_t service_set;
 u_int16_t service_lines[2][24];
 u_int32_t io_size;
 u_int32_t reserved[2];
};
struct v4l2_sliced_vbi_cap {
 u_int16_t service_set;
 u_int16_t service_lines[2][24];
 u_int32_t type;
 u_int32_t reserved[3];
};
struct v4l2_sliced_vbi_data {
 u_int32_t id;
 u_int32_t field;
 u_int32_t line;
 u_int32_t reserved;
 u_int8_t data[48];
};
struct v4l2_mpeg_vbi_itv0_line {
 u_int8_t id;
 u_int8_t data[42];
} __attribute__ ((packed));
struct v4l2_mpeg_vbi_itv0 {
 u_int32_t linemask[2];
 struct v4l2_mpeg_vbi_itv0_line line[35];
} __attribute__ ((packed));
struct v4l2_mpeg_vbi_ITV0 {
 struct v4l2_mpeg_vbi_itv0_line line[36];
} __attribute__ ((packed));
struct v4l2_mpeg_vbi_fmt_ivtv {
 u_int8_t magic[4];
 union {
  struct v4l2_mpeg_vbi_itv0 itv0;
  struct v4l2_mpeg_vbi_ITV0 ITV0;
 };
} __attribute__ ((packed));
struct v4l2_plane_pix_format {
 u_int32_t sizeimage;
 u_int32_t bytesperline;
 u_int16_t reserved[6];
} __attribute__ ((packed));
struct v4l2_pix_format_mplane {
 u_int32_t width;
 u_int32_t height;
 u_int32_t pixelformat;
 u_int32_t field;
 u_int32_t colorspace;
 struct v4l2_plane_pix_format plane_fmt[8];
 u_int8_t num_planes;
 u_int8_t flags;
  union {
  u_int8_t ycbcr_enc;
  u_int8_t hsv_enc;
 };
 u_int8_t quantization;
 u_int8_t xfer_func;
 u_int8_t reserved[7];
} __attribute__ ((packed));
struct v4l2_sdr_format {
 u_int32_t pixelformat;
 u_int32_t buffersize;
 u_int8_t reserved[24];
} __attribute__ ((packed));
struct v4l2_format {
 u_int32_t type;
 union {
  struct v4l2_pix_format pix;
  struct v4l2_pix_format_mplane pix_mp;
  struct v4l2_window win;
  struct v4l2_vbi_format vbi;
  struct v4l2_sliced_vbi_format sliced;
  struct v4l2_sdr_format sdr;
  u_int8_t raw_data[200];
 } fmt;
};
struct v4l2_streamparm {
 u_int32_t type;
 union {
  struct v4l2_captureparm capture;
  struct v4l2_outputparm output;
  u_int8_t raw_data[200];
 } parm;
};
struct v4l2_event_vsync {
 u_int8_t field;
} __attribute__ ((packed));
struct v4l2_event_ctrl {
 u_int32_t changes;
 u_int32_t type;
 union {
  int32_t value;
  int64_t value64;
 };
 u_int32_t flags;
 int32_t minimum;
 int32_t maximum;
 int32_t step;
 int32_t default_value;
};
struct v4l2_event_frame_sync {
 u_int32_t frame_sequence;
};
struct v4l2_event_src_change {
 u_int32_t changes;
};
struct v4l2_event_motion_det {
 u_int32_t flags;
 u_int32_t frame_sequence;
 u_int32_t region_mask;
};
struct v4l2_event {
 u_int32_t type;
 union {
  struct v4l2_event_vsync vsync;
  struct v4l2_event_ctrl ctrl;
  struct v4l2_event_frame_sync frame_sync;
  struct v4l2_event_src_change src_change;
  struct v4l2_event_motion_det motion_det;
  u_int8_t data[64];
 } u;
 u_int32_t pending;
 u_int32_t sequence;
 struct timespec timestamp;
 u_int32_t id;
 u_int32_t reserved[8];
};
struct v4l2_event_subscription {
 u_int32_t type;
 u_int32_t id;
 u_int32_t flags;
 u_int32_t reserved[5];
};
struct v4l2_dbg_match {
 u_int32_t type;
 union {
  u_int32_t addr;
  char name[32];
 };
} __attribute__ ((packed));
struct v4l2_dbg_register {
 struct v4l2_dbg_match match;
 u_int32_t size;
 u_int64_t reg64;
 u_int64_t val;
} __attribute__ ((packed));
struct v4l2_dbg_chip_info {
 struct v4l2_dbg_match match;
 char name[32];
 u_int32_t flags;
 u_int32_t reserved[32];
} __attribute__ ((packed));
struct v4l2_create_buffers {
 u_int32_t index;
 u_int32_t count;
 u_int32_t memory;
 struct v4l2_format format;
 u_int32_t reserved[8];
};
struct usb_video_header_desc {
 uByte bLength;
 uByte bDescriptorType;
 uByte bDescriptorSubtype;
 uWord bcdUVC;
 uWord wTotalLength;
 uDWord dwClockFrequency;
 uByte bInCollection;
} __attribute__((__packed__));
struct usb_video_header_desc_all {
 struct usb_video_header_desc *fix;
 uByte *baInterfaceNr;
};
struct usb_video_input_terminal_desc {
 uByte bLength;
 uByte bDescriptorType;
 uByte bDescriptorSubtype;
 uByte bTerminalID;
 uWord wTerminalType;
 uByte bAssocTerminal;
 uByte iTerminal;
} __attribute__((__packed__));
struct usb_video_output_terminal_desc {
 uByte bLength;
 uByte bDescriptorType;
 uByte bDescriptorSubtype;
 uByte bTerminalID;
 uWord wTerminalType;
 uByte bAssocTerminal;
 uByte bSourceID;
 uByte iTerminal;
} __attribute__((__packed__));
struct usb_video_camera_terminal_desc {
 uByte bLength;
 uByte bDescriptorType;
 uByte bDescriptorSubtype;
 uByte bTerminalID;
 uWord wTerminalType;
 uByte bAssocTerminal;
 uByte iTerminal;
 uWord wObjectiveFocalLengthMin;
 uWord wObjectiveFocalLengthMax;
 uWord wOcularFocalLength;
 uByte bControlSize;
 uByte *bmControls;
} __attribute__((__packed__));
struct usb_video_vc_processing_desc {
 uByte bLength;
 uByte bDescriptorType;
 uByte bDescriptorSubtype;
 uByte bUnitID;
 uByte bSourceID;
 uWord wMaxMultiplier;
 uByte bControlSize;
 uByte bmControls[255];
} __attribute__((__packed__));
struct usb_video_vc_extension_desc {
 uByte bLength;
 uByte bDescriptorType;
 uByte bDescriptorSubtype;
 uByte bUnitID;
 uByte guidExtensionCode[16];
 uByte bNumControls;
 uByte bNrInPins;
} __attribute__((__packed__));
struct usb_video_vc_endpoint_desc {
 uByte bLength;
 uByte bDescriptorType;
 uByte bDescriptorSubtype;
 uWord wMaxTransferSize;
} __attribute__((__packed__));
struct usb_video_input_header_desc {
 uByte bLength;
 uByte bDescriptorType;
 uByte bDescriptorSubtype;
 uByte bNumFormats;
 uWord wTotalLength;
 uByte bEndpointAddress;
 uByte bmInfo;
 uByte bTerminalLink;
 uByte bStillCaptureMethod;
 uByte bTriggerSupport;
 uByte bTriggerUsage;
 uByte bControlSize;
} __attribute__((__packed__));
struct usb_video_input_header_desc_all {
 struct usb_video_input_header_desc *fix;
 uByte *bmaControls;
};
struct usb_video_color_matching_descr {
 uByte bLength;
 uByte bDescriptorType;
 uByte bDescriptorSubtype;
 uByte bColorPrimaries;
 uByte bTransferCharacteristics;
 uByte bMatrixCoefficients;
} __attribute__((__packed__));
struct usb_video_probe_commit {
 uWord bmHint;
 uByte bFormatIndex;
 uByte bFrameIndex;
 uDWord dwFrameInterval;
 uWord wKeyFrameRate;
 uWord wPFrameRate;
 uWord wCompQuality;
 uWord wCompWindowSize;
 uWord wDelay;
 uDWord dwMaxVideoFrameSize;
 uDWord dwMaxPayloadTransferSize;
 uDWord dwClockFrequency;
 uByte bmFramingInfo;
 uByte bPreferedVersion;
 uByte bMinVersion;
 uByte bMaxVersion;
} __attribute__((__packed__));
struct usb_video_stream_header {
 uByte bLength;
 uByte bFlags;
} __attribute__((__packed__));
struct usb_video_format_mjpeg_desc {
 uByte bLength;
 uByte bDescriptorType;
 uByte bDescriptorSubtype;
 uByte bFormatIndex;
 uByte bNumFrameDescriptors;
 uByte bmFlags;
 uByte bDefaultFrameIndex;
 uByte bAspectRatioX;
 uByte bAspectRatioY;
 uByte bmInterlaceFlags;
 uByte bCopyProtect;
} __attribute__((__packed__));
struct usb_video_frame_desc {
 uByte bLength;
 uByte bDescriptorType;
 uByte bDescriptorSubtype;
 uByte bFrameIndex;
 uByte bmCapabilities;
 uWord wWidth;
 uWord wHeight;
 uDWord dwMinBitRate;
 uDWord dwMaxBitRate;
 uDWord dwMaxVideoFrameBufferSize;
 uDWord dwDefaultFrameInterval;
 uByte bFrameIntervalType;
} __attribute__((__packed__));
struct usb_video_format_uncompressed_desc {
 uByte bLength;
 uByte bDescriptorType;
 uByte bDescriptorSubtype;
 uByte bFormatIndex;
 uByte bNumFrameDescriptors;
 uByte guidFormat[16];
 uByte bBitsPerPixel;
 uByte bDefaultFrameIndex;
 uByte bAspectRatioX;
 uByte bAspectRatioY;
 uByte bmInterlaceFlags;
 uByte bCopyProtect;
} __attribute__((__packed__));
struct uvideo_format_desc {
 uByte bLength;
 uByte bDescriptorType;
 uByte bDescriptorSubtype;
 uByte bFormatIndex;
 uByte bNumFrameDescriptors;
 union {
  struct {
   uByte bmFlags;
   uByte bDefaultFrameIndex;
   uByte bAspectRatioX;
   uByte bAspectRatioY;
   uByte bmInterlaceFlags;
   uByte bCopyProtect;
  } mjpeg;
  struct {
   uByte guidFormat[16];
   uByte bBitsPerPixel;
   uByte bDefaultFrameIndex;
   uByte bAspectRatioX;
   uByte bAspectRatioY;
   uByte bmInterlaceFlags;
   uByte bCopyProtect;
  } uc;
 } u;
} __attribute__((__packed__));
struct uvideo_isoc_xfer {
 struct uvideo_softc *sc;
 struct usbd_xfer *xfer;
 void *buf;
 uint16_t size[40];
};
struct uvideo_bulk_xfer {
 struct uvideo_softc *sc;
 struct usbd_xfer *xfer;
 void *buf;
 uint16_t size;
};
struct uvideo_vs_iface {
 struct usbd_interface *ifaceh;
 struct usbd_pipe *pipeh;
 int iface;
 int numalts;
 int curalt;
 int endpoint;
 uint32_t psize;
 int bulk_endpoint;
 int bulk_running;
 struct uvideo_isoc_xfer ixfer[3];
 struct uvideo_bulk_xfer bxfer;
};
struct uvideo_frame_buffer {
 int sample;
 uint8_t fid;
 int offset;
 int buf_size;
 uint8_t *buf;
 uint32_t fmt_flags;
};
struct uvideo_mmap {
 struct { struct uvideo_mmap *sqe_next; } q_frames;
 uint8_t *buf;
 struct v4l2_buffer v4l2_buf;
};
typedef struct { struct uvideo_mmap *sqh_first; struct uvideo_mmap **sqh_last; } q_mmap;
struct uvideo_format_group {
 uint32_t pixelformat;
 uint8_t format_dfidx;
 struct uvideo_format_desc *format;
 struct usb_video_frame_desc *frame_cur;
 struct usb_video_frame_desc *frame[32];
 int frame_num;
};
struct uvideo_res {
 int width;
 int height;
 int fidx;
};
struct uvideo_controls {
 int cid;
 int type;
 char name[32];
 uint8_t ctrl_bit;
 uint16_t ctrl_selector;
 uint16_t ctrl_len;
 int sig;
} uvideo_ctrls[] = {
 {
     ((0x00980000 | 0x900)+0),
     V4L2_CTRL_TYPE_INTEGER,
     "Brightness",
     0,
     0x02,
     2,
     1
 },
 {
     ((0x00980000 | 0x900)+1),
     V4L2_CTRL_TYPE_INTEGER,
     "Contrast",
     1,
     0x03,
     2,
     0
 },
 {
     ((0x00980000 | 0x900)+3),
     V4L2_CTRL_TYPE_INTEGER,
     "Hue",
     2,
     0x06,
     2,
     1
 },
 {
     ((0x00980000 | 0x900)+2),
     V4L2_CTRL_TYPE_INTEGER,
     "Saturation",
     3,
     0x07,
     2,
     0
 },
 {
     ((0x00980000 | 0x900)+27),
     V4L2_CTRL_TYPE_INTEGER,
     "Sharpness",
     4,
     0x08,
     2,
     0
 },
 {
     ((0x00980000 | 0x900)+16),
     V4L2_CTRL_TYPE_INTEGER,
     "Gamma",
     5,
     0x09,
     2,
     0
 },
 {
     ((0x00980000 | 0x900)+26),
     V4L2_CTRL_TYPE_INTEGER,
     "White Balance Temperature",
     6,
     0x0a,
     2,
     0
 },
        {
            ((0x00980000 | 0x900)+28),
            V4L2_CTRL_TYPE_INTEGER,
            "Backlight Compensation",
            8,
            0x01,
            2,
     0
        },
 {
     ((0x00980000 | 0x900)+19),
     V4L2_CTRL_TYPE_INTEGER,
     "Gain",
     9,
     0x04,
     2,
     0
 },
        {
            ((0x00980000 | 0x900)+24),
            V4L2_CTRL_TYPE_MENU,
            "Power Line Frequency",
            10,
            0x05,
            2,
     0
        },
        {
            ((0x00980000 | 0x900)+25),
            V4L2_CTRL_TYPE_BOOLEAN,
            "Hue Auto",
            11,
            0x10,
            1,
     0
        },
        {
            ((0x00980000 | 0x900)+12),
            V4L2_CTRL_TYPE_BOOLEAN,
            "White Balance Temperature Auto",
            12,
            0x0b,
            1,
     0
        },
        {
            ((0x00980000 | 0x900)+12),
            V4L2_CTRL_TYPE_BOOLEAN,
            "White Balance Component Auto",
            13,
            0x0d,
            1,
     0
        },
 { 0, 0, "", 0, 0, 0, 0 }
};
struct video_hw_if {
 int (*open)(void *, int, int *, uint8_t *, void (*)(void *),
      void *);
 int (*close)(void *);
 int (*querycap)(void *, struct v4l2_capability *);
 int (*enum_fmt)(void *, struct v4l2_fmtdesc *);
 int (*enum_fsizes)(void *, struct v4l2_frmsizeenum *);
 int (*enum_fivals)(void *, struct v4l2_frmivalenum *);
 int (*s_fmt)(void *, struct v4l2_format *);
 int (*g_fmt)(void *, struct v4l2_format *);
 int (*s_parm)(void *, struct v4l2_streamparm *);
 int (*g_parm)(void *, struct v4l2_streamparm *);
 int (*enum_input)(void *, struct v4l2_input *);
 int (*s_input)(void *, int);
 int (*g_input)(void *, int *);
 int (*reqbufs)(void *, struct v4l2_requestbuffers *);
 int (*querybuf)(void *, struct v4l2_buffer *);
 int (*qbuf)(void *, struct v4l2_buffer *);
 int (*dqbuf)(void *, struct v4l2_buffer *);
 int (*streamon)(void *, int);
 int (*streamoff)(void *, int);
 int (*try_fmt)(void *, struct v4l2_format *);
 int (*queryctrl)(void *, struct v4l2_queryctrl *);
 int (*g_ctrl)(void *, struct v4l2_control *);
 int (*s_ctrl)(void *, struct v4l2_control *);
 caddr_t (*mappage)(void *, off_t, int);
 int (*get_bufsize)(void *);
 int (*start_read)(void *);
};
struct video_attach_args {
        void *hwif;
        void *hdl;
};
struct device *video_attach_mi(struct video_hw_if *, void *, struct device *);
struct uvideo_softc {
 struct device sc_dev;
 struct usbd_device *sc_udev;
 int sc_nifaces;
 struct usbd_interface **sc_ifaces;
 struct device *sc_videodev;
 int sc_enabled;
 int sc_max_fbuf_size;
 int sc_negotiated_flag;
 int sc_frame_rate;
 struct uvideo_frame_buffer sc_frame_buffer;
 struct uvideo_mmap sc_mmap[32];
 uint8_t *sc_mmap_buffer;
 size_t sc_mmap_buffer_size;
 q_mmap sc_mmap_q;
 int sc_mmap_count;
 int sc_mmap_flag;
 struct vnode *sc_vp;
 struct usb_task sc_task_write;
 int sc_nframes;
 struct usb_video_probe_commit sc_desc_probe;
 struct usb_video_header_desc_all sc_desc_vc_header;
 struct usb_video_input_header_desc_all sc_desc_vs_input_header;
 int sc_desc_vc_pu_num;
 struct usb_video_vc_processing_desc *sc_desc_vc_pu_cur;
 struct usb_video_vc_processing_desc *sc_desc_vc_pu[8];
 int sc_fmtgrp_idx;
 int sc_fmtgrp_num;
 struct uvideo_format_group *sc_fmtgrp_cur;
 struct uvideo_format_group sc_fmtgrp[8];
 struct uvideo_vs_iface *sc_vs_cur;
 struct uvideo_vs_iface sc_vs_coll[8];
 void *sc_uplayer_arg;
 int *sc_uplayer_fsize;
 uint8_t *sc_uplayer_fbuffer;
 void (*sc_uplayer_intr)(void *);
 struct uvideo_devs *sc_quirk;
 usbd_status (*sc_decode_stream_header)
          (struct uvideo_softc *,
          uint8_t *, int);
};
int uvideo_enable(void *);
void uvideo_disable(void *);
int uvideo_open(void *, int, int *, uint8_t *, void (*)(void *),
      void *arg);
int uvideo_close(void *);
int uvideo_match(struct device *, void *, void *);
void uvideo_attach(struct device *, struct device *, void *);
void uvideo_attach_hook(struct device *);
int uvideo_detach(struct device *, int);
usbd_status uvideo_vc_parse_desc(struct uvideo_softc *);
usbd_status uvideo_vc_parse_desc_header(struct uvideo_softc *,
      const usb_descriptor_t *);
usbd_status uvideo_vc_parse_desc_pu(struct uvideo_softc *,
      const usb_descriptor_t *);
usbd_status uvideo_vc_get_ctrl(struct uvideo_softc *, uint8_t *, uint8_t,
      uint8_t, uint16_t, uint16_t);
usbd_status uvideo_vc_set_ctrl(struct uvideo_softc *, uint8_t *, uint8_t,
      uint8_t, uint16_t, uint16_t);
int uvideo_find_ctrl(struct uvideo_softc *, int);
int uvideo_has_ctrl(struct usb_video_vc_processing_desc *, int);
usbd_status uvideo_vs_parse_desc(struct uvideo_softc *,
      usb_config_descriptor_t *);
usbd_status uvideo_vs_parse_desc_input_header(struct uvideo_softc *,
      const usb_descriptor_t *);
usbd_status uvideo_vs_parse_desc_format(struct uvideo_softc *);
usbd_status uvideo_vs_parse_desc_format_mjpeg(struct uvideo_softc *,
      const usb_descriptor_t *);
usbd_status uvideo_vs_parse_desc_format_uncompressed(struct uvideo_softc *,
      const usb_descriptor_t *);
usbd_status uvideo_vs_parse_desc_frame(struct uvideo_softc *);
usbd_status uvideo_vs_parse_desc_frame_sub(struct uvideo_softc *,
      const usb_descriptor_t *);
usbd_status uvideo_vs_parse_desc_alt(struct uvideo_softc *, int, int, int);
usbd_status uvideo_vs_set_alt(struct uvideo_softc *,
      struct usbd_interface *, int);
int uvideo_desc_len(const usb_descriptor_t *, int, int, int, int);
void uvideo_find_res(struct uvideo_softc *, int, int, int,
      struct uvideo_res *);
usbd_status uvideo_vs_negotiation(struct uvideo_softc *, int);
usbd_status uvideo_vs_set_probe(struct uvideo_softc *, uint8_t *);
usbd_status uvideo_vs_get_probe(struct uvideo_softc *, uint8_t *, uint8_t);
usbd_status uvideo_vs_set_commit(struct uvideo_softc *, uint8_t *);
usbd_status uvideo_vs_alloc_frame(struct uvideo_softc *);
void uvideo_vs_free_frame(struct uvideo_softc *);
usbd_status uvideo_vs_alloc_isoc(struct uvideo_softc *);
usbd_status uvideo_vs_alloc_bulk(struct uvideo_softc *);
void uvideo_vs_free_isoc(struct uvideo_softc *);
void uvideo_vs_free_bulk(struct uvideo_softc *);
usbd_status uvideo_vs_open(struct uvideo_softc *);
void uvideo_vs_close(struct uvideo_softc *);
usbd_status uvideo_vs_init(struct uvideo_softc *);
int uvideo_vs_start_bulk(struct uvideo_softc *);
void uvideo_vs_start_bulk_thread(void *);
void uvideo_vs_start_isoc(struct uvideo_softc *);
void uvideo_vs_start_isoc_ixfer(struct uvideo_softc *,
      struct uvideo_isoc_xfer *);
void uvideo_vs_cb(struct usbd_xfer *, void *,
      usbd_status);
usbd_status uvideo_vs_decode_stream_header(struct uvideo_softc *,
      uint8_t *, int);
usbd_status uvideo_vs_decode_stream_header_isight(struct uvideo_softc *,
      uint8_t *, int);
int uvideo_mmap_queue(struct uvideo_softc *, uint8_t *, int);
void uvideo_read(struct uvideo_softc *, uint8_t *, int);
usbd_status uvideo_usb_control(struct uvideo_softc *sc, uint8_t rt, uint8_t r,
      uint16_t value, uint8_t *data, size_t length);
int uvideo_querycap(void *, struct v4l2_capability *);
int uvideo_enum_fmt(void *, struct v4l2_fmtdesc *);
int uvideo_enum_fsizes(void *, struct v4l2_frmsizeenum *);
int uvideo_enum_fivals(void *, struct v4l2_frmivalenum *);
int uvideo_s_fmt(void *, struct v4l2_format *);
int uvideo_g_fmt(void *, struct v4l2_format *);
int uvideo_s_parm(void *, struct v4l2_streamparm *);
int uvideo_g_parm(void *, struct v4l2_streamparm *);
int uvideo_enum_input(void *, struct v4l2_input *);
int uvideo_s_input(void *, int);
int uvideo_g_input(void *, int *);
int uvideo_reqbufs(void *, struct v4l2_requestbuffers *);
int uvideo_querybuf(void *, struct v4l2_buffer *);
int uvideo_qbuf(void *, struct v4l2_buffer *);
int uvideo_dqbuf(void *, struct v4l2_buffer *);
int uvideo_streamon(void *, int);
int uvideo_streamoff(void *, int);
int uvideo_try_fmt(void *, struct v4l2_format *);
int uvideo_queryctrl(void *, struct v4l2_queryctrl *);
int uvideo_g_ctrl(void *, struct v4l2_control *);
int uvideo_s_ctrl(void *, struct v4l2_control *);
caddr_t uvideo_mappage(void *, off_t, int);
int uvideo_get_bufsize(void *);
int uvideo_start_read(void *);
usbd_status uvideo_ucode_loader_ricoh(struct uvideo_softc *);
usbd_status uvideo_ucode_loader_apple_isight(struct uvideo_softc *);
struct cfdriver uvideo_cd = {
 ((void *)0), "uvideo", DV_DULL
};
const struct cfattach uvideo_ca = {
 sizeof(struct uvideo_softc), uvideo_match, uvideo_attach, uvideo_detach
};
struct video_hw_if uvideo_hw_if = {
 uvideo_open,
 uvideo_close,
 uvideo_querycap,
 uvideo_enum_fmt,
 uvideo_enum_fsizes,
 uvideo_enum_fivals,
 uvideo_s_fmt,
 uvideo_g_fmt,
 uvideo_s_parm,
 uvideo_g_parm,
 uvideo_enum_input,
 uvideo_s_input,
 uvideo_g_input,
 uvideo_reqbufs,
 uvideo_querybuf,
 uvideo_qbuf,
 uvideo_dqbuf,
 uvideo_streamon,
 uvideo_streamoff,
 uvideo_try_fmt,
 uvideo_queryctrl,
 uvideo_g_ctrl,
 uvideo_s_ctrl,
 uvideo_mappage,
 uvideo_get_bufsize,
 uvideo_start_read
};
struct uvideo_devs {
 struct usb_devno uv_dev;
 char *ucode_name;
 usbd_status (*ucode_loader)(struct uvideo_softc *);
 int flags;
} uvideo_devs[] = {
 {
     { 0x05ca, 0x1835 },
     "uvideo_r5u87x_05ca-1835",
     uvideo_ucode_loader_ricoh,
     0
 },
 {
     { 0x05ca, 0x1836 },
     "uvideo_r5u87x_05ca-1836",
     uvideo_ucode_loader_ricoh,
     0
 },
 {
     { 0x05ca, 0x1837 },
     "uvideo_r5u87x_05ca-1837",
     uvideo_ucode_loader_ricoh,
     0
 },
 {
     { 0x05ca, 0x1839 },
     "uvideo_r5u87x_05ca-1839",
     uvideo_ucode_loader_ricoh,
     0
 },
 {
     { 0x05ca, 0x183a },
     "uvideo_r5u87x_05ca-183a",
     uvideo_ucode_loader_ricoh,
     0
 },
 {
     { 0x05ca, 0x183b },
     "uvideo_r5u87x_05ca-183b",
     uvideo_ucode_loader_ricoh,
     0
 },
 {
     { 0x05ca, 0x183e },
     "uvideo_r5u87x_05ca-183e",
     uvideo_ucode_loader_ricoh,
     0
 },
 {
     { 0x05ac, 0x8300 },
     "uvideo_isight_05ac-8300",
     uvideo_ucode_loader_apple_isight,
     0x2
 },
 {
     { 0x05ac, 0x8501 },
     ((void *)0),
     ((void *)0),
     0x1
 },
 {
     { 0x046d, 0x08c6 },
     ((void *)0),
     ((void *)0),
     0x4
 },
};
int
uvideo_enable(void *v)
{
 struct uvideo_softc *sc = v;
 ;
 if (usbd_is_dying(sc->sc_udev))
  return (5);
 if (sc->sc_enabled)
  return (16);
 sc->sc_enabled = 1;
 return (0);
}
void
uvideo_disable(void *v)
{
 struct uvideo_softc *sc = v;
 ;
 if (!sc->sc_enabled) {
  printf("uvideo_disable: already disabled!\n");
  return;
 }
 sc->sc_enabled = 0;
}
int
uvideo_open(void *addr, int flags, int *size, uint8_t *buffer,
    void (*intr)(void *), void *arg)
{
 struct uvideo_softc *sc = addr;
 ;
 if (usbd_is_dying(sc->sc_udev))
  return (5);
 sc->sc_uplayer_arg = arg;
 sc->sc_uplayer_fsize = size;
 sc->sc_uplayer_fbuffer = buffer;
 sc->sc_uplayer_intr = intr;
 sc->sc_mmap_flag = 0;
 sc->sc_negotiated_flag = 0;
 return (0);
}
int
uvideo_close(void *addr)
{
 struct uvideo_softc *sc = addr;
 ;
 uvideo_vs_close(sc);
 if (sc->sc_vs_cur->bulk_endpoint)
  uvideo_vs_free_bulk(sc);
 else
  uvideo_vs_free_isoc(sc);
 uvideo_vs_free_frame(sc);
 return (0);
}
int
uvideo_match(struct device *parent, void *match, void *aux)
{
 struct usb_attach_arg *uaa = aux;
 usb_interface_descriptor_t *id;
 struct uvideo_devs *quirk;
 if (uaa->iface == ((void *)0))
  return (0);
 id = usbd_get_interface_descriptor(uaa->iface);
 if (id == ((void *)0))
  return (0);
 if (id->bInterfaceClass == 0x0e &&
     id->bInterfaceSubClass == 1)
  return (8);
 quirk = ((struct uvideo_devs *)usbd_match_device((const struct usb_devno *)(uvideo_devs), sizeof (uvideo_devs) / sizeof ((uvideo_devs)[0]), sizeof ((uvideo_devs)[0]), (uaa->vendor), (uaa->product)));
 if (quirk != ((void *)0)) {
  if (quirk->flags & 0x2)
   return (8);
  if (quirk->flags & 0x4 &&
      id->bInterfaceClass == 0xff &&
      id->bInterfaceSubClass == 1)
   return (8);
 }
 return (0);
}
void
uvideo_attach(struct device *parent, struct device *self, void *aux)
{
 struct uvideo_softc *sc = (struct uvideo_softc *)self;
 struct usb_attach_arg *uaa = aux;
 usb_interface_descriptor_t *id;
 int i;
 sc->sc_udev = uaa->device;
 sc->sc_nifaces = uaa->nifaces;
 for (i = 0; i < sc->sc_nifaces; i++) {
  if (usbd_iface_claimed(sc->sc_udev, i))
   continue;
  id = usbd_get_interface_descriptor(&sc->sc_udev->ifaces[i]);
  if (id == ((void *)0))
   continue;
  if (id->bInterfaceClass == 0x0e)
   usbd_claim_iface(sc->sc_udev, i);
 }
 sc->sc_quirk = ((struct uvideo_devs *)usbd_match_device((const struct usb_devno *)(uvideo_devs), sizeof (uvideo_devs) / sizeof ((uvideo_devs)[0]), sizeof ((uvideo_devs)[0]), (uaa->vendor), (uaa->product)));
 if (sc->sc_quirk && sc->sc_quirk->ucode_name)
  config_mountroot(self, uvideo_attach_hook);
 else
  uvideo_attach_hook(self);
}
void
uvideo_attach_hook(struct device *self)
{
 struct uvideo_softc *sc = (struct uvideo_softc *)self;
 usb_config_descriptor_t *cdesc;
 usbd_status error;
 if (sc->sc_quirk && sc->sc_quirk->ucode_name) {
  error = (sc->sc_quirk->ucode_loader)(sc);
  if (error != USBD_NORMAL_COMPLETION)
   return;
 }
 if (sc->sc_quirk &&
     sc->sc_quirk->flags & 0x1) {
  sc->sc_decode_stream_header =
      uvideo_vs_decode_stream_header_isight;
 } else {
  sc->sc_decode_stream_header =
      uvideo_vs_decode_stream_header;
 }
 cdesc = usbd_get_config_descriptor(sc->sc_udev);
 if (cdesc == ((void *)0)) {
  printf("%s: failed to get configuration descriptor\n",
      ((sc)->sc_dev.dv_xname));
  return;
 }
 error = uvideo_vc_parse_desc(sc);
 if (error != USBD_NORMAL_COMPLETION)
  return;
 error = uvideo_vs_parse_desc(sc, cdesc);
 if (error != USBD_NORMAL_COMPLETION)
  return;
 error = usbd_set_interface(sc->sc_vs_cur->ifaceh, 0);
 if (error != USBD_NORMAL_COMPLETION)
  return;
 error = uvideo_vs_negotiation(sc, 0);
 if (error != USBD_NORMAL_COMPLETION)
  return;
 do { (&sc->sc_mmap_q)->sqh_first = ((void *)0); (&sc->sc_mmap_q)->sqh_last = &(&sc->sc_mmap_q)->sqh_first; } while (0);
 sc->sc_mmap_count = 0;
 ;
 sc->sc_videodev = video_attach_mi(&uvideo_hw_if, sc, &sc->sc_dev);
}
int
uvideo_detach(struct device *self, int flags)
{
 struct uvideo_softc *sc = (struct uvideo_softc *)self;
 int rv = 0;
 usbd_delay_ms(sc->sc_udev, 40);
 uvideo_vs_free_frame(sc);
 if (sc->sc_videodev != ((void *)0))
  rv = config_detach(sc->sc_videodev, flags);
 return (rv);
}
usbd_status
uvideo_vc_parse_desc(struct uvideo_softc *sc)
{
 struct usbd_desc_iter iter;
 const usb_descriptor_t *desc;
 int vc_header_found;
 usbd_status error;
 ;
 vc_header_found = 0;
 usbd_desc_iter_init(sc->sc_udev, &iter);
 desc = usbd_desc_iter_next(&iter);
 while (desc) {
  if (desc->bDescriptorType != 0x24) {
   desc = usbd_desc_iter_next(&iter);
   continue;
  }
  switch (desc->bDescriptorSubtype) {
  case 0x01:
   if (!uvideo_desc_len(desc, 12, 11, 1, 0))
    break;
   if (vc_header_found) {
    printf("%s: too many VC_HEADERs!\n",
        ((sc)->sc_dev.dv_xname));
    return (USBD_INVAL);
   }
   error = uvideo_vc_parse_desc_header(sc, desc);
   if (error != USBD_NORMAL_COMPLETION)
    return (error);
   vc_header_found = 1;
   break;
  case 0x05:
   if (desc->bLength <
       sizeof(struct usb_video_frame_desc)) {
    (void)uvideo_vc_parse_desc_pu(sc, desc);
   }
   break;
  }
  desc = usbd_desc_iter_next(&iter);
 }
 if (vc_header_found == 0) {
  printf("%s: no VC_HEADER found!\n", ((sc)->sc_dev.dv_xname));
  return (USBD_INVAL);
 }
 return (USBD_NORMAL_COMPLETION);
}
usbd_status
uvideo_vc_parse_desc_header(struct uvideo_softc *sc,
    const usb_descriptor_t *desc)
{
 struct usb_video_header_desc *d;
 d = (struct usb_video_header_desc *)(uint8_t *)desc;
 if (d->bInCollection == 0) {
  printf("%s: no VS interface found!\n",
      ((sc)->sc_dev.dv_xname));
  return (USBD_INVAL);
 }
 sc->sc_desc_vc_header.fix = d;
 sc->sc_desc_vc_header.baInterfaceNr = (uByte *)(d + 1);
 return (USBD_NORMAL_COMPLETION);
}
usbd_status
uvideo_vc_parse_desc_pu(struct uvideo_softc *sc,
    const usb_descriptor_t *desc)
{
 struct usb_video_vc_processing_desc *d;
 d = (void *)desc;
 if (sc->sc_desc_vc_pu_num == 8) {
  printf("%s: too many PU descriptors found!\n", ((sc)->sc_dev.dv_xname));
  return (USBD_INVAL);
 }
 sc->sc_desc_vc_pu[sc->sc_desc_vc_pu_num] = d;
 sc->sc_desc_vc_pu_num++;
 return (USBD_NORMAL_COMPLETION);
}
usbd_status
uvideo_vc_get_ctrl(struct uvideo_softc *sc, uint8_t *ctrl_data,
    uint8_t request, uint8_t unitid, uint16_t ctrl_selector, uint16_t ctrl_len)
{
 usb_device_request_t req;
 usbd_status error;
 req.bmRequestType = 0xa1;
 req.bRequest = request;
 ((req.wValue)[0] = (u_int8_t)((ctrl_selector << 8)), (req.wValue)[1] = (u_int8_t)(((ctrl_selector << 8)) >> 8));
 ((req.wIndex)[0] = (u_int8_t)((unitid << 8)), (req.wIndex)[1] = (u_int8_t)(((unitid << 8)) >> 8));
 ((req.wLength)[0] = (u_int8_t)(ctrl_len), (req.wLength)[1] = (u_int8_t)((ctrl_len) >> 8));
 error = usbd_do_request(sc->sc_udev, &req, ctrl_data);
 if (error) {
  ;
  return (USBD_INVAL);
 }
 return (USBD_NORMAL_COMPLETION);
}
usbd_status
uvideo_vc_set_ctrl(struct uvideo_softc *sc, uint8_t *ctrl_data,
    uint8_t request, uint8_t unitid, uint16_t ctrl_selector, uint16_t ctrl_len)
{
 usb_device_request_t req;
 usbd_status error;
 req.bmRequestType = 0x21;
 req.bRequest = request;
 ((req.wValue)[0] = (u_int8_t)((ctrl_selector << 8)), (req.wValue)[1] = (u_int8_t)(((ctrl_selector << 8)) >> 8));
 ((req.wIndex)[0] = (u_int8_t)((unitid << 8)), (req.wIndex)[1] = (u_int8_t)(((unitid << 8)) >> 8));
 ((req.wLength)[0] = (u_int8_t)(ctrl_len), (req.wLength)[1] = (u_int8_t)((ctrl_len) >> 8));
 error = usbd_do_request(sc->sc_udev, &req, ctrl_data);
 if (error) {
  ;
  return (USBD_INVAL);
 }
 return (USBD_NORMAL_COMPLETION);
}
int
uvideo_find_ctrl(struct uvideo_softc *sc, int id)
{
 int i, j, found;
 if (sc->sc_desc_vc_pu_num == 0) {
  ;
  return (22);
 }
 for (found = 0, i = 0; uvideo_ctrls[i].cid != 0; i++) {
  if (id == uvideo_ctrls[i].cid) {
   found = 1;
   break;
  }
 }
 if (found == 0) {
  ;
  return (22);
 }
 for (found = 0, j = 0; j < sc->sc_desc_vc_pu_num; j++) {
  if (uvideo_has_ctrl(sc->sc_desc_vc_pu[j],
      uvideo_ctrls[i].ctrl_bit) != 0) {
   found = 1;
   break;
  }
 }
 if (found == 0) {
  ;
  return (22);
 }
 sc->sc_desc_vc_pu_cur = sc->sc_desc_vc_pu[j];
 return (i);
}
int
uvideo_has_ctrl(struct usb_video_vc_processing_desc *desc, int ctrl_bit)
{
 if (desc->bControlSize * 8 <= ctrl_bit)
  return (0);
 return (desc->bmControls[((ctrl_bit) >> 3)] & (1L << ((ctrl_bit) & 0x7)));
}
usbd_status
uvideo_vs_parse_desc(struct uvideo_softc *sc, usb_config_descriptor_t *cdesc)
{
 struct usbd_desc_iter iter;
 const usb_descriptor_t *desc;
 usb_interface_descriptor_t *id;
 int i, iface, numalts;
 usbd_status error;
 ;
 ;
 usbd_desc_iter_init(sc->sc_udev, &iter);
 desc = usbd_desc_iter_next(&iter);
 while (desc) {
  if (desc->bDescriptorType != 0x24) {
   desc = usbd_desc_iter_next(&iter);
   continue;
  }
  switch (desc->bDescriptorSubtype) {
  case 0x01:
   if (!uvideo_desc_len(desc, 13, 3, 0, 12))
    break;
   error = uvideo_vs_parse_desc_input_header(sc, desc);
   if (error != USBD_NORMAL_COMPLETION)
    return (error);
   break;
  }
  desc = usbd_desc_iter_next(&iter);
 }
 error = uvideo_vs_parse_desc_format(sc);
 if (error != USBD_NORMAL_COMPLETION)
  return (error);
 error = uvideo_vs_parse_desc_frame(sc);
 if (error != USBD_NORMAL_COMPLETION)
  return (error);
 for (i = 0; i < sc->sc_desc_vc_header.fix->bInCollection; i++) {
  iface = sc->sc_desc_vc_header.baInterfaceNr[i];
  id = usbd_get_interface_descriptor(&sc->sc_udev->ifaces[iface]);
  if (id == ((void *)0)) {
   printf("%s: can't get VS interface %d!\n",
       ((sc)->sc_dev.dv_xname), iface);
   return (USBD_INVAL);
  }
  usbd_claim_iface(sc->sc_udev, iface);
  numalts = usbd_get_no_alts(cdesc, id->bInterfaceNumber);
  ;
  ;
  error = uvideo_vs_parse_desc_alt(sc, i, iface, numalts);
  if (error != USBD_NORMAL_COMPLETION)
   return (error);
 }
 sc->sc_vs_cur = &sc->sc_vs_coll[0];
 return (USBD_NORMAL_COMPLETION);
}
usbd_status
uvideo_vs_parse_desc_input_header(struct uvideo_softc *sc,
    const usb_descriptor_t *desc)
{
 struct usb_video_input_header_desc *d;
 d = (struct usb_video_input_header_desc *)(uint8_t *)desc;
 if (d->bNumFormats == 0) {
  printf("%s: no INPUT FORMAT descriptors found!\n", ((sc)->sc_dev.dv_xname));
  return (USBD_INVAL);
 }
 sc->sc_desc_vs_input_header.fix = d;
 sc->sc_desc_vs_input_header.bmaControls = (uByte *)(d + 1);
 return (USBD_NORMAL_COMPLETION);
}
usbd_status
uvideo_vs_parse_desc_format(struct uvideo_softc *sc)
{
 struct usbd_desc_iter iter;
 const usb_descriptor_t *desc;
 ;
 usbd_desc_iter_init(sc->sc_udev, &iter);
 desc = usbd_desc_iter_next(&iter);
 while (desc) {
  if (desc->bDescriptorType != 0x24) {
   desc = usbd_desc_iter_next(&iter);
   continue;
  }
  switch (desc->bDescriptorSubtype) {
  case 0x06:
   if (desc->bLength == 11) {
    (void)uvideo_vs_parse_desc_format_mjpeg(
        sc, desc);
   }
   break;
  case 0x04:
   if (desc->bLength == 27) {
    (void)uvideo_vs_parse_desc_format_uncompressed(
        sc, desc);
   }
   break;
  }
  desc = usbd_desc_iter_next(&iter);
 }
 sc->sc_fmtgrp_idx = 0;
 if (sc->sc_fmtgrp_num == 0) {
  printf("%s: no format descriptors found!\n", ((sc)->sc_dev.dv_xname));
  return (USBD_INVAL);
 }
 ;
 return (USBD_NORMAL_COMPLETION);
}
usbd_status
uvideo_vs_parse_desc_format_mjpeg(struct uvideo_softc *sc,
    const usb_descriptor_t *desc)
{
 struct usb_video_format_mjpeg_desc *d;
 d = (struct usb_video_format_mjpeg_desc *)(uint8_t *)desc;
 if (d->bNumFrameDescriptors == 0) {
  printf("%s: no MJPEG frame descriptors available!\n",
      ((sc)->sc_dev.dv_xname));
  return (USBD_INVAL);
 }
 if (sc->sc_fmtgrp_idx >= 8) {
  printf("%s: too many format descriptors found!\n", ((sc)->sc_dev.dv_xname));
  return (USBD_INVAL);
 }
 sc->sc_fmtgrp[sc->sc_fmtgrp_idx].format =
     (struct uvideo_format_desc *)d;
 if (d->bDefaultFrameIndex > d->bNumFrameDescriptors ||
     d->bDefaultFrameIndex < 1) {
  sc->sc_fmtgrp[sc->sc_fmtgrp_idx].format_dfidx = 1;
 } else {
  sc->sc_fmtgrp[sc->sc_fmtgrp_idx].format_dfidx =
      d->bDefaultFrameIndex;
 }
 sc->sc_fmtgrp[sc->sc_fmtgrp_idx].pixelformat = ((u_int32_t)('M') | ((u_int32_t)('J') << 8) | ((u_int32_t)('P') << 16) | ((u_int32_t)('G') << 24));
 if (sc->sc_fmtgrp_cur == ((void *)0))
  sc->sc_fmtgrp_cur = &sc->sc_fmtgrp[sc->sc_fmtgrp_idx];
 sc->sc_fmtgrp_idx++;
 sc->sc_fmtgrp_num++;
 return (USBD_NORMAL_COMPLETION);
}
usbd_status
uvideo_vs_parse_desc_format_uncompressed(struct uvideo_softc *sc,
    const usb_descriptor_t *desc)
{
 struct usb_video_format_uncompressed_desc *d;
 int i;
 d = (struct usb_video_format_uncompressed_desc *)(uint8_t *)desc;
 if (d->bNumFrameDescriptors == 0) {
  printf("%s: no UNCOMPRESSED frame descriptors available!\n",
      ((sc)->sc_dev.dv_xname));
  return (USBD_INVAL);
 }
 if (sc->sc_fmtgrp_idx >= 8) {
  printf("%s: too many format descriptors found!\n", ((sc)->sc_dev.dv_xname));
  return (USBD_INVAL);
 }
 sc->sc_fmtgrp[sc->sc_fmtgrp_idx].format =
     (struct uvideo_format_desc *)d;
 if (d->bDefaultFrameIndex > d->bNumFrameDescriptors ||
     d->bDefaultFrameIndex < 1) {
  sc->sc_fmtgrp[sc->sc_fmtgrp_idx].format_dfidx = 1;
 } else {
  sc->sc_fmtgrp[sc->sc_fmtgrp_idx].format_dfidx =
      d->bDefaultFrameIndex;
 }
 i = sc->sc_fmtgrp_idx;
 if (!strcmp(sc->sc_fmtgrp[i].format->u.uc.guidFormat, "YUY2")) {
  sc->sc_fmtgrp[i].pixelformat = ((u_int32_t)('Y') | ((u_int32_t)('U') << 8) | ((u_int32_t)('Y') << 16) | ((u_int32_t)('V') << 24));
 } else if (!strcmp(sc->sc_fmtgrp[i].format->u.uc.guidFormat, "NV12")) {
  sc->sc_fmtgrp[i].pixelformat = ((u_int32_t)('N') | ((u_int32_t)('V') << 8) | ((u_int32_t)('1') << 16) | ((u_int32_t)('2') << 24));
 } else if (!strcmp(sc->sc_fmtgrp[i].format->u.uc.guidFormat, "UYVY")) {
  sc->sc_fmtgrp[i].pixelformat = ((u_int32_t)('U') | ((u_int32_t)('Y') << 8) | ((u_int32_t)('V') << 16) | ((u_int32_t)('Y') << 24));
 } else {
  sc->sc_fmtgrp[i].pixelformat = 0;
 }
 if (sc->sc_fmtgrp_cur == ((void *)0))
  sc->sc_fmtgrp_cur = &sc->sc_fmtgrp[sc->sc_fmtgrp_idx];
 sc->sc_fmtgrp_idx++;
 sc->sc_fmtgrp_num++;
 return (USBD_NORMAL_COMPLETION);
}
usbd_status
uvideo_vs_parse_desc_frame(struct uvideo_softc *sc)
{
 struct usbd_desc_iter iter;
 const usb_descriptor_t *desc;
 usbd_status error;
 ;
 usbd_desc_iter_init(sc->sc_udev, &iter);
 desc = usbd_desc_iter_next(&iter);
 while (desc) {
  if (desc->bDescriptorType == 0x24 &&
      desc->bLength > sizeof(struct usb_video_frame_desc) &&
      (desc->bDescriptorSubtype == 0x07 ||
      desc->bDescriptorSubtype == 0x05)) {
   error = uvideo_vs_parse_desc_frame_sub(sc, desc);
   if (error != USBD_NORMAL_COMPLETION)
    return (error);
  }
  desc = usbd_desc_iter_next(&iter);
 }
 return (USBD_NORMAL_COMPLETION);
}
usbd_status
uvideo_vs_parse_desc_frame_sub(struct uvideo_softc *sc,
    const usb_descriptor_t *desc)
{
 struct usb_video_frame_desc *fd =
     (struct usb_video_frame_desc *)(uint8_t *)desc;
 int fmtidx, frame_num;
 uint32_t fbuf_size;
 fmtidx = sc->sc_fmtgrp_idx;
 frame_num = sc->sc_fmtgrp[fmtidx].frame_num;
 if (frame_num >= 32) {
  printf("%s: too many %s frame descriptors found!\n",
      ((sc)->sc_dev.dv_xname),
      desc->bDescriptorSubtype == 0x07 ?
      "MJPEG" : "UNCOMPRESSED");
  return (USBD_INVAL);
 }
 sc->sc_fmtgrp[fmtidx].frame[frame_num] = fd;
 if (sc->sc_fmtgrp[fmtidx].frame_cur == ((void *)0) ||
     sc->sc_fmtgrp[fmtidx].format_dfidx == fd->bFrameIndex)
  sc->sc_fmtgrp[fmtidx].frame_cur = fd;
 if (desc->bDescriptorSubtype == 0x05) {
  fbuf_size = ((fd->wWidth)[0] | ((fd->wWidth)[1] << 8)) * ((fd->wHeight)[0] | ((fd->wHeight)[1] << 8)) *
      sc->sc_fmtgrp[fmtidx].format->u.uc.bBitsPerPixel / 8;
  ;
 } else
  fbuf_size = ((fd->dwMaxVideoFrameBufferSize)[0] | ((fd->dwMaxVideoFrameBufferSize)[1] << 8) | ((fd->dwMaxVideoFrameBufferSize)[2] << 16) | ((fd->dwMaxVideoFrameBufferSize)[3] << 24));
 if (fbuf_size > sc->sc_max_fbuf_size)
  sc->sc_max_fbuf_size = fbuf_size;
 if (++sc->sc_fmtgrp[fmtidx].frame_num ==
     sc->sc_fmtgrp[fmtidx].format->bNumFrameDescriptors) {
  sc->sc_fmtgrp_idx++;
 }
 return (USBD_NORMAL_COMPLETION);
}
usbd_status
uvideo_vs_parse_desc_alt(struct uvideo_softc *sc, int vs_nr, int iface, int numalts)
{
 struct uvideo_vs_iface *vs;
 struct usbd_desc_iter iter;
 const usb_descriptor_t *desc;
 usb_interface_descriptor_t *id;
 usb_endpoint_descriptor_t *ed;
 uint8_t ep_dir, ep_type;
 vs = &sc->sc_vs_coll[vs_nr];
 usbd_desc_iter_init(sc->sc_udev, &iter);
 desc = usbd_desc_iter_next(&iter);
 while (desc) {
  if (desc->bDescriptorType != 0x04)
   goto next;
  id = (usb_interface_descriptor_t *)(uint8_t *)desc;
  if (id->bInterfaceNumber != iface)
   goto next;
  ;
  if (id->bNumEndpoints == 0) {
   ;
   goto next;
  }
  while ((desc = usbd_desc_iter_next(&iter))) {
   if (desc->bDescriptorType == 0x05)
    break;
  }
  ed = (usb_endpoint_descriptor_t *)(uint8_t *)desc;
  ;
  ;
  ep_dir = ((ed->bEndpointAddress) & 0x80);
  ep_type = ((ed->bmAttributes) & 0x03);
  if (ep_dir == 0x80 && ep_type == 0x01)
   vs->bulk_endpoint = 0;
  else if (ep_dir == 0x80 && ep_type == 0x02)
   vs->bulk_endpoint = 1;
  else
   goto next;
  if (((ed->wMaxPacketSize)[0] | ((ed->wMaxPacketSize)[1] << 8)) > vs->psize) {
   vs->ifaceh = &sc->sc_udev->ifaces[iface];
   vs->endpoint = ed->bEndpointAddress;
   vs->numalts = numalts;
   vs->curalt = id->bAlternateSetting;
   vs->psize = ((ed->wMaxPacketSize)[0] | ((ed->wMaxPacketSize)[1] << 8));
   vs->iface = iface;
  }
next:
  desc = usbd_desc_iter_next(&iter);
 }
 if (vs->ifaceh == ((void *)0)) {
  printf("%s: no valid alternate interface found!\n",
      ((sc)->sc_dev.dv_xname));
  return (USBD_INVAL);
 }
 return (USBD_NORMAL_COMPLETION);
}
usbd_status
uvideo_vs_set_alt(struct uvideo_softc *sc, struct usbd_interface *ifaceh,
    int max_packet_size)
{
 struct usbd_desc_iter iter;
 const usb_descriptor_t *desc;
 usb_interface_descriptor_t *id;
 usb_endpoint_descriptor_t *ed;
 int diff, best_diff = 0x7fffffff;
 usbd_status error;
 uint32_t psize;
 usbd_desc_iter_init(sc->sc_udev, &iter);
 desc = usbd_desc_iter_next(&iter);
 while (desc) {
  if (desc->bDescriptorType != 0x04)
   goto next;
  id = (usb_interface_descriptor_t *)(uint8_t *)desc;
  if (id->bInterfaceNumber != sc->sc_vs_cur->iface)
   goto next;
  if (id->bNumEndpoints == 0)
   goto next;
  desc = usbd_desc_iter_next(&iter);
  if (desc->bDescriptorType != 0x05)
   goto next;
  ed = (usb_endpoint_descriptor_t *)(uint8_t *)desc;
  psize = ((ed->wMaxPacketSize)[0] | ((ed->wMaxPacketSize)[1] << 8));
  psize = ((psize) & 0x7ff) * (1 + (((psize) >> 11) & 0x3));
  if (psize >= max_packet_size)
   diff = psize - max_packet_size;
  else
   goto next;
  if (diff < best_diff) {
   best_diff = diff;
   sc->sc_vs_cur->endpoint = ed->bEndpointAddress;
   sc->sc_vs_cur->curalt = id->bAlternateSetting;
   sc->sc_vs_cur->psize = psize;
   if (diff == 0)
    break;
  }
next:
  desc = usbd_desc_iter_next(&iter);
 }
 ;
 ;
 error = usbd_set_interface(ifaceh, sc->sc_vs_cur->curalt);
 if (error) {
  printf("%s: could not set alternate interface %d!\n",
      ((sc)->sc_dev.dv_xname), sc->sc_vs_cur->curalt);
  return (USBD_INVAL);
 }
 return (USBD_NORMAL_COMPLETION);
}
int
uvideo_desc_len(const usb_descriptor_t *desc,
    int size_fix, int off_num_elements, int size_element, int off_size_element)
{
 uint8_t *buf;
 int size_elements, size_total;
 if (desc->bLength < size_fix)
  return (0);
 buf = (uint8_t *)desc;
 if (size_element == 0)
  size_element = buf[off_size_element];
 size_elements = buf[off_num_elements] * size_element;
 size_total = size_fix + size_elements;
 if (desc->bLength == size_total && size_elements != 0)
  return (1);
 return (0);
}
void
uvideo_find_res(struct uvideo_softc *sc, int idx, int width, int height,
    struct uvideo_res *r)
{
 int i, w, h, diff, diff_best, size_want, size_is;
 size_want = width * height;
 for (i = 0; i < sc->sc_fmtgrp[idx].frame_num; i++) {
  w = ((sc->sc_fmtgrp[idx].frame[i]->wWidth)[0] | ((sc->sc_fmtgrp[idx].frame[i]->wWidth)[1] << 8));
  h = ((sc->sc_fmtgrp[idx].frame[i]->wHeight)[0] | ((sc->sc_fmtgrp[idx].frame[i]->wHeight)[1] << 8));
  size_is = w * h;
  if (size_is > size_want)
   diff = size_is - size_want;
  else
   diff = size_want - size_is;
  if (i == 0)
   diff_best = diff;
  if (diff <= diff_best) {
   diff_best = diff;
   r->width = w;
   r->height = h;
   r->fidx = i;
  }
  ;
 }
}
usbd_status
uvideo_vs_negotiation(struct uvideo_softc *sc, int commit)
{
 struct usb_video_probe_commit *pc;
 struct uvideo_format_group *fmtgrp;
 struct usb_video_header_desc *hd;
 struct usb_video_frame_desc *frame;
 uint8_t *p, *cur;
 uint8_t probe_data[34];
 uint32_t frame_ival, nivals, min, max, step, diff;
 usbd_status error;
 int i, ival_bytes, changed = 0;
 pc = (struct usb_video_probe_commit *)probe_data;
 fmtgrp = sc->sc_fmtgrp_cur;
 if (fmtgrp->frame_num == 0) {
  printf("%s: %s: no frame descriptors found!\n",
      __func__, ((sc)->sc_dev.dv_xname));
  return (USBD_INVAL);
 }
 __builtin_bzero((probe_data), (sizeof(probe_data)));
 ((pc->bmHint)[0] = (u_int8_t)(0x1), (pc->bmHint)[1] = (u_int8_t)((0x1) >> 8));
 pc->bFormatIndex = fmtgrp->format->bFormatIndex;
 pc->bFrameIndex = fmtgrp->frame_cur->bFrameIndex;
 frame_ival = ((fmtgrp->frame_cur->dwDefaultFrameInterval)[0] | ((fmtgrp->frame_cur->dwDefaultFrameInterval)[1] << 8) | ((fmtgrp->frame_cur->dwDefaultFrameInterval)[2] << 16) | ((fmtgrp->frame_cur->dwDefaultFrameInterval)[3] << 24));
 if (sc->sc_frame_rate != 0) {
  frame_ival = 10000000 / sc->sc_frame_rate;
  p = (uint8_t *)fmtgrp->frame_cur;
  p += sizeof(struct usb_video_frame_desc);
  nivals = fmtgrp->frame_cur->bFrameIntervalType;
  ival_bytes = fmtgrp->frame_cur->bLength -
      sizeof(struct usb_video_frame_desc);
  if (!nivals && (ival_bytes >= sizeof(uDWord) * 3)) {
   min = ((p)[0] | ((p)[1] << 8) | ((p)[2] << 16) | ((p)[3] << 24));
   p += sizeof(uDWord);
   max = ((p)[0] | ((p)[1] << 8) | ((p)[2] << 16) | ((p)[3] << 24));
   p += sizeof(uDWord);
   step = ((p)[0] | ((p)[1] << 8) | ((p)[2] << 16) | ((p)[3] << 24));
   p += sizeof(uDWord);
   if (frame_ival <= min)
    frame_ival = min;
   else if (frame_ival >= max)
    frame_ival = max;
   else {
    for (i = min; i + step/2 < frame_ival; i+= step)
     ;
    frame_ival = i;
   }
  } else if (nivals > 0 && ival_bytes >= sizeof(uDWord)) {
   cur = p;
   min = 0xffffffffU;
   for (i = 0; i < nivals; i++) {
    if (ival_bytes < sizeof(uDWord)) {
     break;
    }
    diff = abs(((p)[0] | ((p)[1] << 8) | ((p)[2] << 16) | ((p)[3] << 24)) - frame_ival);
    if (diff < min) {
     min = diff;
     cur = p;
     if (diff == 0)
      break;
    }
    p += sizeof(uDWord);
    ival_bytes -= sizeof(uDWord);
   }
   frame_ival = ((cur)[0] | ((cur)[1] << 8) | ((cur)[2] << 16) | ((cur)[3] << 24));
  } else {
   ;
  }
 }
 ((pc->dwFrameInterval)[0] = (u_int8_t)(frame_ival), (pc->dwFrameInterval)[1] = (u_int8_t)((frame_ival) >> 8), (pc->dwFrameInterval)[2] = (u_int8_t)((frame_ival) >> 16), (pc->dwFrameInterval)[3] = (u_int8_t)((frame_ival) >> 24));
 error = uvideo_vs_set_probe(sc, probe_data);
 if (error != USBD_NORMAL_COMPLETION)
  return (error);
 __builtin_bzero((probe_data), (sizeof(probe_data)));
 error = uvideo_vs_get_probe(sc, probe_data, 0x81);
 if (error != USBD_NORMAL_COMPLETION)
  return (error);
 if (pc->bFormatIndex != fmtgrp->format->bFormatIndex) {
  changed++;
  ;
  for (i = 0; i < sc->sc_fmtgrp_num; i++) {
   if (sc->sc_fmtgrp[i].format->bFormatIndex ==
       pc->bFormatIndex) {
    fmtgrp = &sc->sc_fmtgrp[i];
    break;
   }
  }
  if (i == sc->sc_fmtgrp_num) {
   ;
   return (USBD_INVAL);
  }
 }
 if (pc->bFrameIndex != fmtgrp->frame_cur->bFrameIndex) {
  changed++;
  ;
  for (i = 0; i < fmtgrp->frame_num; i++) {
   if (fmtgrp->frame[i]->bFrameIndex == pc->bFrameIndex) {
    frame = fmtgrp->frame[i];
    break;
   }
  }
  if (i == fmtgrp->frame_num) {
   ;
   return (USBD_INVAL);
  }
 } else
  frame = fmtgrp->frame_cur;
 if (frame->bDescriptorSubtype == 0x05) {
  ((pc->dwMaxVideoFrameSize)[0] = (u_int8_t)(((frame->wWidth)[0] | ((frame->wWidth)[1] << 8)) * ((frame->wHeight)[0] | ((frame->wHeight)[1] << 8)) * fmtgrp->format->u.uc.bBitsPerPixel / 8), (pc->dwMaxVideoFrameSize)[1] = (u_int8_t)((((frame->wWidth)[0] | ((frame->wWidth)[1] << 8)) * ((frame->wHeight)[0] | ((frame->wHeight)[1] << 8)) * fmtgrp->format->u.uc.bBitsPerPixel / 8) >> 8), (pc->dwMaxVideoFrameSize)[2] = (u_int8_t)((((frame->wWidth)[0] | ((frame->wWidth)[1] << 8)) * ((frame->wHeight)[0] | ((frame->wHeight)[1] << 8)) * fmtgrp->format->u.uc.bBitsPerPixel / 8) >> 16), (pc->dwMaxVideoFrameSize)[3] = (u_int8_t)((((frame->wWidth)[0] | ((frame->wWidth)[1] << 8)) * ((frame->wHeight)[0] | ((frame->wHeight)[1] << 8)) * fmtgrp->format->u.uc.bBitsPerPixel / 8) >> 24));
  ;
 } else {
  hd = sc->sc_desc_vc_header.fix;
  if (((pc->dwMaxVideoFrameSize)[0] | ((pc->dwMaxVideoFrameSize)[1] << 8) | ((pc->dwMaxVideoFrameSize)[2] << 16) | ((pc->dwMaxVideoFrameSize)[3] << 24)) == 0 &&
      ((hd->bcdUVC)[0] | ((hd->bcdUVC)[1] << 8)) < 0x0110 ) {
   ;
   ((pc->dwMaxVideoFrameSize)[0] = (u_int8_t)(((frame->dwMaxVideoFrameBufferSize)[0] | ((frame->dwMaxVideoFrameBufferSize)[1] << 8) | ((frame->dwMaxVideoFrameBufferSize)[2] << 16) | ((frame->dwMaxVideoFrameBufferSize)[3] << 24))), (pc->dwMaxVideoFrameSize)[1] = (u_int8_t)((((frame->dwMaxVideoFrameBufferSize)[0] | ((frame->dwMaxVideoFrameBufferSize)[1] << 8) | ((frame->dwMaxVideoFrameBufferSize)[2] << 16) | ((frame->dwMaxVideoFrameBufferSize)[3] << 24))) >> 8), (pc->dwMaxVideoFrameSize)[2] = (u_int8_t)((((frame->dwMaxVideoFrameBufferSize)[0] | ((frame->dwMaxVideoFrameBufferSize)[1] << 8) | ((frame->dwMaxVideoFrameBufferSize)[2] << 16) | ((frame->dwMaxVideoFrameBufferSize)[3] << 24))) >> 16), (pc->dwMaxVideoFrameSize)[3] = (u_int8_t)((((frame->dwMaxVideoFrameBufferSize)[0] | ((frame->dwMaxVideoFrameBufferSize)[1] << 8) | ((frame->dwMaxVideoFrameBufferSize)[2] << 16) | ((frame->dwMaxVideoFrameBufferSize)[3] << 24))) >> 24));
  }
 }
 if (commit) {
  if (changed > 0) {
   return (USBD_INVAL);
  }
  error = uvideo_vs_set_commit(sc, probe_data);
  if (error != USBD_NORMAL_COMPLETION)
   return (error);
 }
 __builtin_bcopy((pc), (&sc->sc_desc_probe), (sizeof(sc->sc_desc_probe)));
 return (USBD_NORMAL_COMPLETION);
}
usbd_status
uvideo_vs_set_probe(struct uvideo_softc *sc, uint8_t *probe_data)
{
 usb_device_request_t req;
 usbd_status error;
 uint16_t tmp;
 struct usb_video_probe_commit *pc;
 req.bmRequestType = 0x21;
 req.bRequest = 0x01;
 tmp = 0x01;
 tmp = tmp << 8;
 ((req.wValue)[0] = (u_int8_t)(tmp), (req.wValue)[1] = (u_int8_t)((tmp) >> 8));
 ((req.wIndex)[0] = (u_int8_t)(sc->sc_vs_cur->iface), (req.wIndex)[1] = (u_int8_t)((sc->sc_vs_cur->iface) >> 8));
 ((req.wLength)[0] = (u_int8_t)(26), (req.wLength)[1] = (u_int8_t)((26) >> 8));
 pc = (struct usb_video_probe_commit *)probe_data;
 error = usbd_do_request(sc->sc_udev, &req, probe_data);
 if (error) {
  printf("%s: could not SET probe request: %s\n",
      ((sc)->sc_dev.dv_xname), usbd_errstr(error));
  return (USBD_INVAL);
 }
 ;
 ;
 ;
 ;
 ;
 ;
 ;
 ;
 ;
 ;
 ;
 ;
 return (USBD_NORMAL_COMPLETION);
}
usbd_status
uvideo_vs_get_probe(struct uvideo_softc *sc, uint8_t *probe_data,
    uint8_t request)
{
 usb_device_request_t req;
 usbd_status error;
 uint16_t tmp;
 struct usb_video_probe_commit *pc;
 req.bmRequestType = 0xa1;
 req.bRequest = request;
 tmp = 0x01;
 tmp = tmp << 8;
 ((req.wValue)[0] = (u_int8_t)(tmp), (req.wValue)[1] = (u_int8_t)((tmp) >> 8));
 ((req.wIndex)[0] = (u_int8_t)(sc->sc_vs_cur->iface), (req.wIndex)[1] = (u_int8_t)((sc->sc_vs_cur->iface) >> 8));
 ((req.wLength)[0] = (u_int8_t)(26), (req.wLength)[1] = (u_int8_t)((26) >> 8));
 pc = (struct usb_video_probe_commit *)probe_data;
 error = usbd_do_request(sc->sc_udev, &req, probe_data);
 if (error) {
  printf("%s: could not GET probe request: %s\n",
      ((sc)->sc_dev.dv_xname), usbd_errstr(error));
  return (USBD_INVAL);
 }
 ;
 ;
 ;
 ;
 ;
 ;
 ;
 ;
 ;
 ;
 ;
 ;
 return (USBD_NORMAL_COMPLETION);
}
usbd_status
uvideo_vs_set_commit(struct uvideo_softc *sc, uint8_t *probe_data)
{
 usb_device_request_t req;
 usbd_status error;
 uint16_t tmp;
 req.bmRequestType = 0x21;
 req.bRequest = 0x01;
 tmp = 0x02;
 tmp = tmp << 8;
 ((req.wValue)[0] = (u_int8_t)(tmp), (req.wValue)[1] = (u_int8_t)((tmp) >> 8));
 ((req.wIndex)[0] = (u_int8_t)(sc->sc_vs_cur->iface), (req.wIndex)[1] = (u_int8_t)((sc->sc_vs_cur->iface) >> 8));
 ((req.wLength)[0] = (u_int8_t)(26), (req.wLength)[1] = (u_int8_t)((26) >> 8));
 error = usbd_do_request(sc->sc_udev, &req, probe_data);
 if (error) {
  printf("%s: could not SET commit request: %s\n",
      ((sc)->sc_dev.dv_xname), usbd_errstr(error));
  return (USBD_INVAL);
 }
 ;
 return (USBD_NORMAL_COMPLETION);
}
usbd_status
uvideo_vs_alloc_frame(struct uvideo_softc *sc)
{
 struct uvideo_frame_buffer *fb = &sc->sc_frame_buffer;
 fb->buf_size = ((sc->sc_desc_probe.dwMaxVideoFrameSize)[0] | ((sc->sc_desc_probe.dwMaxVideoFrameSize)[1] << 8) | ((sc->sc_desc_probe.dwMaxVideoFrameSize)[2] << 16) | ((sc->sc_desc_probe.dwMaxVideoFrameSize)[3] << 24));
 if (sc->sc_max_fbuf_size < fb->buf_size &&
     sc->sc_mmap_flag == 0) {
  printf("%s: software video buffer is too small!\n",
      ((sc)->sc_dev.dv_xname));
  return (USBD_NOMEM);
 }
 fb->buf = malloc(fb->buf_size, 2, 0x0002);
 if (fb->buf == ((void *)0)) {
  printf("%s: can't allocate frame buffer!\n", ((sc)->sc_dev.dv_xname));
  return (USBD_NOMEM);
 }
 ;
 fb->sample = 0;
 fb->fid = 0;
 fb->offset = 0;
 fb->fmt_flags = sc->sc_fmtgrp_cur->frame_cur->bDescriptorSubtype ==
     0x05 ? 0 : 0x0001;
 return (USBD_NORMAL_COMPLETION);
}
void
uvideo_vs_free_frame(struct uvideo_softc *sc)
{
 struct uvideo_frame_buffer *fb = &sc->sc_frame_buffer;
 if (fb->buf != ((void *)0)) {
  free(fb->buf, 2, fb->buf_size);
  fb->buf = ((void *)0);
 }
 if (sc->sc_mmap_buffer != ((void *)0)) {
  free(sc->sc_mmap_buffer, 2, sc->sc_mmap_buffer_size);
  sc->sc_mmap_buffer = ((void *)0);
  sc->sc_mmap_buffer_size = 0;
 }
 while (!(((&sc->sc_mmap_q)->sqh_first) == ((void *)0)))
  do { if (((&sc->sc_mmap_q)->sqh_first = (&sc->sc_mmap_q)->sqh_first->q_frames.sqe_next) == ((void *)0)) (&sc->sc_mmap_q)->sqh_last = &(&sc->sc_mmap_q)->sqh_first; } while (0);
 sc->sc_mmap_count = 0;
}
usbd_status
uvideo_vs_alloc_isoc(struct uvideo_softc *sc)
{
 int size, i;
 ;
 for (i = 0; i < 3; i++) {
  sc->sc_vs_cur->ixfer[i].sc = sc;
  sc->sc_vs_cur->ixfer[i].xfer = usbd_alloc_xfer(sc->sc_udev);
  if (sc->sc_vs_cur->ixfer[i].xfer == ((void *)0)) {
   printf("%s: could not allocate isoc VS xfer!\n",
       ((sc)->sc_dev.dv_xname));
   return (USBD_NOMEM);
  }
  size = sc->sc_vs_cur->psize * sc->sc_nframes;
  sc->sc_vs_cur->ixfer[i].buf =
      usbd_alloc_buffer(sc->sc_vs_cur->ixfer[i].xfer, size);
  if (sc->sc_vs_cur->ixfer[i].buf == ((void *)0)) {
   printf("%s: could not allocate isoc VS buffer!\n",
       ((sc)->sc_dev.dv_xname));
   return (USBD_NOMEM);
  }
  ;
 }
 return (USBD_NORMAL_COMPLETION);
}
usbd_status
uvideo_vs_alloc_bulk(struct uvideo_softc *sc)
{
 int size;
 sc->sc_vs_cur->bxfer.sc = sc;
 sc->sc_vs_cur->bxfer.xfer = usbd_alloc_xfer(sc->sc_udev);
 if (sc->sc_vs_cur->bxfer.xfer == ((void *)0)) {
  printf("%s: could not allocate bulk VS xfer!\n",
      ((sc)->sc_dev.dv_xname));
  return (USBD_NOMEM);
 }
 size = ((sc->sc_desc_probe.dwMaxPayloadTransferSize)[0] | ((sc->sc_desc_probe.dwMaxPayloadTransferSize)[1] << 8) | ((sc->sc_desc_probe.dwMaxPayloadTransferSize)[2] << 16) | ((sc->sc_desc_probe.dwMaxPayloadTransferSize)[3] << 24));
 sc->sc_vs_cur->bxfer.buf =
     usbd_alloc_buffer(sc->sc_vs_cur->bxfer.xfer, size);
 if (sc->sc_vs_cur->bxfer.buf == ((void *)0)) {
  printf("%s: could not allocate bulk VS buffer!\n",
      ((sc)->sc_dev.dv_xname));
  return (USBD_NOMEM);
 }
 ;
 return (USBD_NORMAL_COMPLETION);
}
void
uvideo_vs_free_isoc(struct uvideo_softc *sc)
{
 int i;
 ;
 for (i = 0; i < 3; i++) {
  if (sc->sc_vs_cur->ixfer[i].buf != ((void *)0)) {
   usbd_free_buffer(sc->sc_vs_cur->ixfer[i].xfer);
   sc->sc_vs_cur->ixfer[i].buf = ((void *)0);
  }
  if (sc->sc_vs_cur->ixfer[i].xfer != ((void *)0)) {
   usbd_free_xfer(sc->sc_vs_cur->ixfer[i].xfer);
   sc->sc_vs_cur->ixfer[i].xfer = ((void *)0);
  }
 }
}
void
uvideo_vs_free_bulk(struct uvideo_softc *sc)
{
 if (sc->sc_vs_cur->bxfer.buf != ((void *)0)) {
  usbd_free_buffer(sc->sc_vs_cur->bxfer.xfer);
  sc->sc_vs_cur->bxfer.buf = ((void *)0);
 }
 if (sc->sc_vs_cur->bxfer.xfer != ((void *)0)) {
  usbd_free_xfer(sc->sc_vs_cur->bxfer.xfer);
  sc->sc_vs_cur->bxfer.xfer = ((void *)0);
 }
}
usbd_status
uvideo_vs_open(struct uvideo_softc *sc)
{
 usb_endpoint_descriptor_t *ed;
 usbd_status error;
 uint32_t dwMaxVideoFrameSize;
 ;
 if (sc->sc_negotiated_flag == 0) {
  error = uvideo_vs_negotiation(sc, 1);
  if (error != USBD_NORMAL_COMPLETION)
   return (error);
 }
 error = uvideo_vs_set_alt(sc, sc->sc_vs_cur->ifaceh,
     ((sc->sc_desc_probe.dwMaxPayloadTransferSize)[0] | ((sc->sc_desc_probe.dwMaxPayloadTransferSize)[1] << 8) | ((sc->sc_desc_probe.dwMaxPayloadTransferSize)[2] << 16) | ((sc->sc_desc_probe.dwMaxPayloadTransferSize)[3] << 24)));
 if (error != USBD_NORMAL_COMPLETION) {
  printf("%s: could not set alternate interface!\n",
      ((sc)->sc_dev.dv_xname));
  return (error);
 }
 ed = usbd_get_endpoint_descriptor(sc->sc_vs_cur->ifaceh,
     sc->sc_vs_cur->endpoint);
 if (ed == ((void *)0)) {
  printf("%s: no endpoint descriptor for VS iface\n",
      ((sc)->sc_dev.dv_xname));
  return (USBD_INVAL);
 }
 ;
 error = usbd_open_pipe(
     sc->sc_vs_cur->ifaceh,
     sc->sc_vs_cur->endpoint,
     0x01,
     &sc->sc_vs_cur->pipeh);
 if (error != USBD_NORMAL_COMPLETION) {
  printf("%s: could not open VS pipe: %s\n",
      ((sc)->sc_dev.dv_xname), usbd_errstr(error));
  return (error);
 }
 if (strcmp(sc->sc_udev->bus->bdev.dv_cfdata->cf_driver->cd_name,
     "ohci") == 0) {
  sc->sc_nframes = 8;
 } else {
  dwMaxVideoFrameSize =
      ((sc->sc_desc_probe.dwMaxVideoFrameSize)[0] | ((sc->sc_desc_probe.dwMaxVideoFrameSize)[1] << 8) | ((sc->sc_desc_probe.dwMaxVideoFrameSize)[2] << 16) | ((sc->sc_desc_probe.dwMaxVideoFrameSize)[3] << 24));
  sc->sc_nframes = (dwMaxVideoFrameSize + sc->sc_vs_cur->psize -
      1) / sc->sc_vs_cur->psize;
 }
 if (sc->sc_nframes > 40)
  sc->sc_nframes = 40;
 ;
 return (USBD_NORMAL_COMPLETION);
}
void
uvideo_vs_close(struct uvideo_softc *sc)
{
 if (sc->sc_vs_cur->bulk_running == 1) {
  sc->sc_vs_cur->bulk_running = 0;
  usbd_ref_wait(sc->sc_udev);
 }
 if (sc->sc_vs_cur->pipeh) {
  usbd_abort_pipe(sc->sc_vs_cur->pipeh);
  usbd_close_pipe(sc->sc_vs_cur->pipeh);
  sc->sc_vs_cur->pipeh = ((void *)0);
 }
 usbd_delay_ms(sc->sc_udev, 100);
 (void)usbd_set_interface(sc->sc_vs_cur->ifaceh, 0);
}
usbd_status
uvideo_vs_init(struct uvideo_softc *sc)
{
 usbd_status error;
 error = uvideo_vs_open(sc);
 if (error != USBD_NORMAL_COMPLETION)
  return (USBD_INVAL);
 if (sc->sc_vs_cur->bulk_endpoint)
  error = uvideo_vs_alloc_bulk(sc);
 else
  error = uvideo_vs_alloc_isoc(sc);
 if (error != USBD_NORMAL_COMPLETION)
  return (USBD_INVAL);
 error = uvideo_vs_alloc_frame(sc);
 if (error != USBD_NORMAL_COMPLETION)
  return (USBD_INVAL);
 return (USBD_NORMAL_COMPLETION);
}
int
uvideo_vs_start_bulk(struct uvideo_softc *sc)
{
 int error;
 sc->sc_vs_cur->bulk_running = 1;
 error = kthread_create(uvideo_vs_start_bulk_thread, sc, ((void *)0),
     ((sc)->sc_dev.dv_xname));
 if (error) {
  printf("%s: can't create kernel thread!", ((sc)->sc_dev.dv_xname));
  return (error);
 }
 return (0);
}
void
uvideo_vs_start_bulk_thread(void *arg)
{
 struct uvideo_softc *sc = arg;
 usbd_status error;
 int size;
 usbd_ref_incr(sc->sc_udev);
 while (sc->sc_vs_cur->bulk_running) {
  size = ((sc->sc_desc_probe.dwMaxPayloadTransferSize)[0] | ((sc->sc_desc_probe.dwMaxPayloadTransferSize)[1] << 8) | ((sc->sc_desc_probe.dwMaxPayloadTransferSize)[2] << 16) | ((sc->sc_desc_probe.dwMaxPayloadTransferSize)[3] << 24));
  usbd_setup_xfer(
      sc->sc_vs_cur->bxfer.xfer,
      sc->sc_vs_cur->pipeh,
      0,
      sc->sc_vs_cur->bxfer.buf,
      size,
      0x01 | 0x04 | 0x02,
      0,
      ((void *)0));
  error = usbd_transfer(sc->sc_vs_cur->bxfer.xfer);
  if (error != USBD_NORMAL_COMPLETION) {
   ;
   break;
  }
  ;
  (void)sc->sc_decode_stream_header(sc,
      sc->sc_vs_cur->bxfer.buf, size);
 }
 usbd_ref_decr(sc->sc_udev);
 kthread_exit(0);
}
void
uvideo_vs_start_isoc(struct uvideo_softc *sc)
{
 int i;
 for (i = 0; i < 3; i++)
  uvideo_vs_start_isoc_ixfer(sc, &sc->sc_vs_cur->ixfer[i]);
}
void
uvideo_vs_start_isoc_ixfer(struct uvideo_softc *sc,
    struct uvideo_isoc_xfer *ixfer)
{
 int i;
 usbd_status error;
 ;
 if (usbd_is_dying(sc->sc_udev))
  return;
 for (i = 0; i < sc->sc_nframes; i++)
  ixfer->size[i] = sc->sc_vs_cur->psize;
 usbd_setup_isoc_xfer(
     ixfer->xfer,
     sc->sc_vs_cur->pipeh,
     ixfer,
     ixfer->size,
     sc->sc_nframes,
     0x01 | 0x04,
     uvideo_vs_cb);
 error = usbd_transfer(ixfer->xfer);
 if (error && error != USBD_IN_PROGRESS) {
  ;
 }
}
void
uvideo_vs_cb(struct usbd_xfer *xfer, void *priv,
    usbd_status status)
{
 struct uvideo_isoc_xfer *ixfer = priv;
 struct uvideo_softc *sc = ixfer->sc;
 int len, i, frame_size;
 uint8_t *frame;
 usbd_status error;
 ;
 if (status != USBD_NORMAL_COMPLETION) {
  ;
  return;
 }
 usbd_get_xfer_status(xfer, ((void *)0), ((void *)0), &len, ((void *)0));
 ;
 if (len == 0)
  goto skip;
 for (i = 0; i < sc->sc_nframes; i++) {
  frame = ixfer->buf + (i * sc->sc_vs_cur->psize);
  frame_size = ixfer->size[i];
  if (frame_size == 0)
   continue;
  error = sc->sc_decode_stream_header(sc, frame, frame_size);
  if (error == USBD_CANCELLED)
   break;
 }
skip:
 uvideo_vs_start_isoc_ixfer(sc, ixfer);
}
usbd_status
uvideo_vs_decode_stream_header(struct uvideo_softc *sc, uint8_t *frame,
    int frame_size)
{
 struct uvideo_frame_buffer *fb = &sc->sc_frame_buffer;
 struct usb_video_stream_header *sh;
 int sample_len;
 if (frame_size < 2)
  return (USBD_INVAL);
 sh = (struct usb_video_stream_header *)frame;
 ;
 if (sh->bLength > 12 || sh->bLength < 2)
  return (USBD_INVAL);
 if (sh->bLength == frame_size && !(sh->bFlags & (1 << 1))) {
  return (USBD_INVAL);
 }
 if (sh->bFlags & (1 << 6)) {
  ;
  return (USBD_CANCELLED);
 }
 ;
 if (sh->bFlags & (1 << 0)) {
  ;
 } else {
  ;
 }
 if (fb->sample == 0) {
  fb->sample = 1;
  fb->fid = sh->bFlags & (1 << 0);
  fb->offset = 0;
 } else {
  if (fb->fid != (sh->bFlags & (1 << 0))) {
   ;
   fb->sample = 1;
   fb->fid = sh->bFlags & (1 << 0);
   fb->offset = 0;
  }
 }
 sample_len = frame_size - sh->bLength;
 if ((fb->offset + sample_len) <= fb->buf_size) {
  __builtin_bcopy((frame + sh->bLength), (fb->buf + fb->offset), (sample_len));
  fb->offset += sample_len;
 }
 if (sh->bFlags & (1 << 1)) {
  ;
  if (fb->offset > fb->buf_size) {
   ;
  } else if (fb->offset < fb->buf_size &&
      !(fb->fmt_flags & 0x0001)) {
   ;
  } else {
   if (sc->sc_mmap_flag) {
    if (uvideo_mmap_queue(sc, fb->buf, fb->offset))
     return (USBD_NOMEM);
   } else {
    uvideo_read(sc, fb->buf, fb->offset);
   }
  }
  fb->sample = 0;
  fb->fid = 0;
 }
 return (USBD_NORMAL_COMPLETION);
}
usbd_status
uvideo_vs_decode_stream_header_isight(struct uvideo_softc *sc, uint8_t *frame,
    int frame_size)
{
 struct uvideo_frame_buffer *fb = &sc->sc_frame_buffer;
 int sample_len, header = 0;
 uint8_t magic[] = {
     0x11, 0x22, 0x33, 0x44,
     0xde, 0xad, 0xbe, 0xef, 0xde, 0xad, 0xfa, 0xce };
 if (frame_size > 13 && !__builtin_memcmp((&frame[2]), (magic), (12)))
  header = 1;
 if (frame_size > 14 && !__builtin_memcmp((&frame[3]), (magic), (12)))
  header = 1;
 if (header && fb->fid == 0) {
  fb->fid = 1;
  return (USBD_NORMAL_COMPLETION);
 }
 if (header) {
  if (sc->sc_mmap_flag) {
   if (uvideo_mmap_queue(sc, fb->buf, fb->offset))
    return (USBD_NOMEM);
  } else {
   uvideo_read(sc, fb->buf, fb->offset);
  }
  fb->offset = 0;
 } else {
  sample_len = frame_size;
  if ((fb->offset + sample_len) <= fb->buf_size) {
   __builtin_bcopy((frame), (fb->buf + fb->offset), (sample_len));
   fb->offset += sample_len;
  }
 }
 return (USBD_NORMAL_COMPLETION);
}
int
uvideo_mmap_queue(struct uvideo_softc *sc, uint8_t *buf, int len)
{
 int i;
 if (sc->sc_mmap_count == 0 || sc->sc_mmap_buffer == ((void *)0))
  panic("%s: mmap buffers not allocated", __func__);
 for (i = 0; i < sc->sc_mmap_count; i++) {
  if (sc->sc_mmap[i].v4l2_buf.flags & 0x00000002)
   break;
 }
 if (i == sc->sc_mmap_count) {
  ;
  return 12;
 }
 __builtin_bcopy((buf), (sc->sc_mmap[i].buf), (len));
 sc->sc_mmap[i].v4l2_buf.bytesused = len;
 getmicrotime(&sc->sc_mmap[i].v4l2_buf.timestamp);
 sc->sc_mmap[i].v4l2_buf.flags |= 0x00000004;
 sc->sc_mmap[i].v4l2_buf.flags &= ~0x00000002;
 do { (&sc->sc_mmap[i])->q_frames.sqe_next = ((void *)0); *(&sc->sc_mmap_q)->sqh_last = (&sc->sc_mmap[i]); (&sc->sc_mmap_q)->sqh_last = &(&sc->sc_mmap[i])->q_frames.sqe_next; } while (0);
 ;
 wakeup(sc);
 sc->sc_uplayer_intr(sc->sc_uplayer_arg);
 return 0;
}
void
uvideo_read(struct uvideo_softc *sc, uint8_t *buf, int len)
{
 *sc->sc_uplayer_fsize = len;
 __builtin_bcopy((buf), (sc->sc_uplayer_fbuffer), (len));
 sc->sc_uplayer_intr(sc->sc_uplayer_arg);
}
int
uvideo_querycap(void *v, struct v4l2_capability *caps)
{
 struct uvideo_softc *sc = v;
 __builtin_bzero((caps), (sizeof(*caps)));
 strlcpy(caps->driver, ((sc)->sc_dev.dv_xname), sizeof(caps->driver));
 strlcpy(caps->card, "Generic USB video class device",
     sizeof(caps->card));
 strlcpy(caps->bus_info, "usb", sizeof(caps->bus_info));
 caps->version = 1;
 caps->capabilities = 0x00000001
     | 0x04000000
     | 0x01000000;
 return (0);
}
int
uvideo_enum_fmt(void *v, struct v4l2_fmtdesc *fmtdesc)
{
 struct uvideo_softc *sc = v;
 int idx;
 if (fmtdesc->type != V4L2_BUF_TYPE_VIDEO_CAPTURE)
  return (22);
 if (fmtdesc->index >= sc->sc_fmtgrp_num)
  return (22);
 idx = fmtdesc->index;
 switch (sc->sc_fmtgrp[idx].format->bDescriptorSubtype) {
 case 0x06:
  fmtdesc->flags = 0x0001;
  (void)strlcpy(fmtdesc->description, "MJPEG",
      sizeof(fmtdesc->description));
  fmtdesc->pixelformat = ((u_int32_t)('M') | ((u_int32_t)('J') << 8) | ((u_int32_t)('P') << 16) | ((u_int32_t)('G') << 24));
  __builtin_bzero((fmtdesc->reserved), (sizeof(fmtdesc->reserved)));
  break;
 case 0x04:
  fmtdesc->flags = 0;
  if (sc->sc_fmtgrp[idx].pixelformat ==
      ((u_int32_t)('Y') | ((u_int32_t)('U') << 8) | ((u_int32_t)('Y') << 16) | ((u_int32_t)('V') << 24))) {
   (void)strlcpy(fmtdesc->description, "YUYV",
       sizeof(fmtdesc->description));
   fmtdesc->pixelformat = ((u_int32_t)('Y') | ((u_int32_t)('U') << 8) | ((u_int32_t)('Y') << 16) | ((u_int32_t)('V') << 24));
  } else if (sc->sc_fmtgrp[idx].pixelformat ==
      ((u_int32_t)('N') | ((u_int32_t)('V') << 8) | ((u_int32_t)('1') << 16) | ((u_int32_t)('2') << 24))) {
   (void)strlcpy(fmtdesc->description, "NV12",
       sizeof(fmtdesc->description));
   fmtdesc->pixelformat = ((u_int32_t)('N') | ((u_int32_t)('V') << 8) | ((u_int32_t)('1') << 16) | ((u_int32_t)('2') << 24));
  } else if (sc->sc_fmtgrp[idx].pixelformat ==
      ((u_int32_t)('U') | ((u_int32_t)('Y') << 8) | ((u_int32_t)('V') << 16) | ((u_int32_t)('Y') << 24))) {
   (void)strlcpy(fmtdesc->description, "UYVY",
       sizeof(fmtdesc->description));
   fmtdesc->pixelformat = ((u_int32_t)('U') | ((u_int32_t)('Y') << 8) | ((u_int32_t)('V') << 16) | ((u_int32_t)('Y') << 24));
  } else {
   (void)strlcpy(fmtdesc->description, "Unknown UC Format",
       sizeof(fmtdesc->description));
   fmtdesc->pixelformat = 0;
  }
  __builtin_bzero((fmtdesc->reserved), (sizeof(fmtdesc->reserved)));
  break;
 default:
  fmtdesc->flags = 0;
  (void)strlcpy(fmtdesc->description, "Unknown Format",
      sizeof(fmtdesc->description));
  fmtdesc->pixelformat = 0;
  __builtin_bzero((fmtdesc->reserved), (sizeof(fmtdesc->reserved)));
  break;
 }
 return (0);
}
int
uvideo_enum_fsizes(void *v, struct v4l2_frmsizeenum *fsizes)
{
 struct uvideo_softc *sc = v;
 int idx, found = 0;
 for (idx = 0; idx < sc->sc_fmtgrp_num; idx++) {
  if (sc->sc_fmtgrp[idx].pixelformat == fsizes->pixel_format) {
   found = 1;
   break;
  }
 }
 if (found == 0)
  return (22);
 if (fsizes->index >= sc->sc_fmtgrp[idx].frame_num)
  return (22);
 fsizes->type = V4L2_FRMSIZE_TYPE_DISCRETE;
 fsizes->discrete.width =
     ((sc->sc_fmtgrp[idx].frame[fsizes->index]->wWidth)[0] | ((sc->sc_fmtgrp[idx].frame[fsizes->index]->wWidth)[1] << 8));
 fsizes->discrete.height =
     ((sc->sc_fmtgrp[idx].frame[fsizes->index]->wHeight)[0] | ((sc->sc_fmtgrp[idx].frame[fsizes->index]->wHeight)[1] << 8));
 return (0);
}
int
uvideo_enum_fivals(void *v, struct v4l2_frmivalenum *fivals)
{
 struct uvideo_softc *sc = v;
 int idx;
 struct uvideo_format_group *fmtgrp = ((void *)0);
 struct usb_video_frame_desc *frame = ((void *)0);
 uint8_t *p;
 for (idx = 0; idx < sc->sc_fmtgrp_num; idx++) {
  if (sc->sc_fmtgrp[idx].pixelformat == fivals->pixel_format) {
   fmtgrp = &sc->sc_fmtgrp[idx];
   break;
  }
 }
 if (fmtgrp == ((void *)0))
  return (22);
 for (idx = 0; idx < fmtgrp->frame_num; idx++) {
  if (((fmtgrp->frame[idx]->wWidth)[0] | ((fmtgrp->frame[idx]->wWidth)[1] << 8)) == fivals->width &&
      ((fmtgrp->frame[idx]->wHeight)[0] | ((fmtgrp->frame[idx]->wHeight)[1] << 8)) == fivals->height) {
   frame = fmtgrp->frame[idx];
   break;
  }
 }
 if (frame == ((void *)0))
  return (22);
 p = (uint8_t *)frame;
 p += sizeof(struct usb_video_frame_desc);
 if (frame->bFrameIntervalType == 0) {
  if (fivals->index != 0)
   return (22);
  fivals->type = V4L2_FRMIVAL_TYPE_STEPWISE;
  fivals->stepwise.min.numerator = ((p)[0] | ((p)[1] << 8) | ((p)[2] << 16) | ((p)[3] << 24));
  fivals->stepwise.min.denominator = 10000000;
  p += sizeof(uDWord);
  fivals->stepwise.max.numerator = ((p)[0] | ((p)[1] << 8) | ((p)[2] << 16) | ((p)[3] << 24));
  fivals->stepwise.max.denominator = 10000000;
  p += sizeof(uDWord);
  fivals->stepwise.step.numerator = ((p)[0] | ((p)[1] << 8) | ((p)[2] << 16) | ((p)[3] << 24));
  fivals->stepwise.step.denominator = 10000000;
  p += sizeof(uDWord);
 } else {
  if (fivals->index >= frame->bFrameIntervalType)
   return (22);
  p += sizeof(uDWord) * fivals->index;
  if (p > frame->bLength + (uint8_t *)frame) {
   printf("%s: frame desc too short?\n", __func__);
   return (22);
  }
  fivals->type = V4L2_FRMIVAL_TYPE_DISCRETE;
  fivals->discrete.numerator = ((p)[0] | ((p)[1] << 8) | ((p)[2] << 16) | ((p)[3] << 24));
  fivals->discrete.denominator = 10000000;
 }
 return (0);
}
int
uvideo_s_fmt(void *v, struct v4l2_format *fmt)
{
 struct uvideo_softc *sc = v;
 struct uvideo_format_group *fmtgrp_save;
 struct usb_video_frame_desc *frame_save;
 struct uvideo_res r;
 int found, i;
 usbd_status error;
 if (fmt->type != V4L2_BUF_TYPE_VIDEO_CAPTURE)
  return (22);
 ;
 for (found = 0, i = 0; i < sc->sc_fmtgrp_num; i++) {
  if (fmt->fmt.pix.pixelformat == sc->sc_fmtgrp[i].pixelformat) {
   found = 1;
   break;
  }
 }
 if (found == 0)
  return (22);
 if (sc->sc_fmtgrp[i].frame_num == 0) {
  printf("%s: %s: no frame descriptors found!\n",
      __func__, ((sc)->sc_dev.dv_xname));
  return (22);
 }
 uvideo_find_res(sc, i, fmt->fmt.pix.width, fmt->fmt.pix.height, &r);
 fmtgrp_save = sc->sc_fmtgrp_cur;
 frame_save = sc->sc_fmtgrp_cur->frame_cur;
 sc->sc_fmtgrp_cur = &sc->sc_fmtgrp[i];
 sc->sc_fmtgrp[i].frame_cur = sc->sc_fmtgrp[i].frame[r.fidx];
 error = uvideo_vs_negotiation(sc, 1);
 if (error != USBD_NORMAL_COMPLETION) {
  sc->sc_fmtgrp_cur = fmtgrp_save;
  sc->sc_fmtgrp_cur->frame_cur = frame_save;
  return (22);
 }
 sc->sc_negotiated_flag = 1;
 fmt->fmt.pix.width = r.width;
 fmt->fmt.pix.height = r.height;
 ;
 fmt->fmt.pix.sizeimage = ((sc->sc_desc_probe.dwMaxVideoFrameSize)[0] | ((sc->sc_desc_probe.dwMaxVideoFrameSize)[1] << 8) | ((sc->sc_desc_probe.dwMaxVideoFrameSize)[2] << 16) | ((sc->sc_desc_probe.dwMaxVideoFrameSize)[3] << 24));
 return (0);
}
int
uvideo_g_fmt(void *v, struct v4l2_format *fmt)
{
 struct uvideo_softc *sc = v;
 if (fmt->type != V4L2_BUF_TYPE_VIDEO_CAPTURE)
  return (22);
 fmt->fmt.pix.pixelformat = sc->sc_fmtgrp_cur->pixelformat;
 fmt->fmt.pix.width = ((sc->sc_fmtgrp_cur->frame_cur->wWidth)[0] | ((sc->sc_fmtgrp_cur->frame_cur->wWidth)[1] << 8));
 fmt->fmt.pix.height = ((sc->sc_fmtgrp_cur->frame_cur->wHeight)[0] | ((sc->sc_fmtgrp_cur->frame_cur->wHeight)[1] << 8));
 fmt->fmt.pix.sizeimage = ((sc->sc_desc_probe.dwMaxVideoFrameSize)[0] | ((sc->sc_desc_probe.dwMaxVideoFrameSize)[1] << 8) | ((sc->sc_desc_probe.dwMaxVideoFrameSize)[2] << 16) | ((sc->sc_desc_probe.dwMaxVideoFrameSize)[3] << 24));
 ;
 return (0);
}
int
uvideo_s_parm(void *v, struct v4l2_streamparm *parm)
{
 struct uvideo_softc *sc = v;
 usbd_status error;
 if (parm->type == V4L2_BUF_TYPE_VIDEO_CAPTURE) {
  if (parm->parm.capture.timeperframe.numerator == 0 ||
      parm->parm.capture.timeperframe.denominator == 0) {
   sc->sc_frame_rate = 0;
  } else {
   sc->sc_frame_rate =
       parm->parm.capture.timeperframe.denominator /
       parm->parm.capture.timeperframe.numerator;
  }
 } else
  return (22);
 if (sc->sc_negotiated_flag) {
  error = uvideo_vs_negotiation(sc, 1);
  if (error != USBD_NORMAL_COMPLETION)
   return (error);
 }
 return (0);
}
int
uvideo_g_parm(void *v, struct v4l2_streamparm *parm)
{
 struct uvideo_softc *sc = v;
 if (parm->type == V4L2_BUF_TYPE_VIDEO_CAPTURE) {
  parm->parm.capture.capability = 0x1000;
  parm->parm.capture.capturemode = 0;
  parm->parm.capture.timeperframe.numerator =
      ((sc->sc_desc_probe.dwFrameInterval)[0] | ((sc->sc_desc_probe.dwFrameInterval)[1] << 8) | ((sc->sc_desc_probe.dwFrameInterval)[2] << 16) | ((sc->sc_desc_probe.dwFrameInterval)[3] << 24));
  parm->parm.capture.timeperframe.denominator = 10000000;
 } else
  return (22);
 return (0);
}
int
uvideo_enum_input(void *v, struct v4l2_input *input)
{
 if (input->index != 0)
  return (22);
 strlcpy(input->name, "Camera Terminal", sizeof(input->name));
 input->type = 2;
 return (0);
}
int
uvideo_s_input(void *v, int input)
{
 if (input != 0)
  return (22);
 return (0);
}
int
uvideo_g_input(void *v, int *input)
{
 *input = 0;
 return (0);
}
int
uvideo_reqbufs(void *v, struct v4l2_requestbuffers *rb)
{
 struct uvideo_softc *sc = v;
 int i, buf_size, buf_size_total;
 ;
 if (rb->count == 0)
  return (22);
 if (sc->sc_mmap_count > 0 || sc->sc_mmap_buffer != ((void *)0)) {
  ;
  return (22);
 }
 if (rb->count > 32)
  sc->sc_mmap_count = 32;
 else
  sc->sc_mmap_count = rb->count;
 buf_size = ((sc->sc_desc_probe.dwMaxVideoFrameSize)[0] | ((sc->sc_desc_probe.dwMaxVideoFrameSize)[1] << 8) | ((sc->sc_desc_probe.dwMaxVideoFrameSize)[2] << 16) | ((sc->sc_desc_probe.dwMaxVideoFrameSize)[3] << 24));
 if (buf_size >= 0xffffffffffffffffUL / 32) {
  printf("%s: video frame size too large!\n", ((sc)->sc_dev.dv_xname));
  sc->sc_mmap_count = 0;
  return (22);
 }
 buf_size_total = sc->sc_mmap_count * buf_size;
 buf_size_total = (((buf_size_total) + ((1 << 13) - 1)) & ~((1 << 13) - 1));
 sc->sc_mmap_buffer = malloc(buf_size_total, 2, 0x0002);
 if (sc->sc_mmap_buffer == ((void *)0)) {
  printf("%s: can't allocate mmap buffer!\n", ((sc)->sc_dev.dv_xname));
  sc->sc_mmap_count = 0;
  return (22);
 }
 sc->sc_mmap_buffer_size = buf_size_total;
 ;
 for (i = 0; i < sc->sc_mmap_count; i++) {
  sc->sc_mmap[i].buf = sc->sc_mmap_buffer + (i * buf_size);
  sc->sc_mmap[i].v4l2_buf.index = i;
  sc->sc_mmap[i].v4l2_buf.m.offset = i * buf_size;
  sc->sc_mmap[i].v4l2_buf.length = buf_size;
  sc->sc_mmap[i].v4l2_buf.type = V4L2_BUF_TYPE_VIDEO_CAPTURE;
  sc->sc_mmap[i].v4l2_buf.sequence = 0;
  sc->sc_mmap[i].v4l2_buf.field = V4L2_FIELD_NONE;
  sc->sc_mmap[i].v4l2_buf.memory = V4L2_MEMORY_MMAP;
  sc->sc_mmap[i].v4l2_buf.flags = 0x00000001;
  ;
 }
 rb->count = sc->sc_mmap_count;
 return (0);
}
int
uvideo_querybuf(void *v, struct v4l2_buffer *qb)
{
 struct uvideo_softc *sc = v;
 if (qb->type != V4L2_BUF_TYPE_VIDEO_CAPTURE ||
     qb->memory != V4L2_MEMORY_MMAP ||
     qb->index >= sc->sc_mmap_count)
  return (22);
 __builtin_bcopy((&sc->sc_mmap[qb->index].v4l2_buf), (qb), (sizeof(struct v4l2_buffer)));
 ;
 return (0);
}
int
uvideo_qbuf(void *v, struct v4l2_buffer *qb)
{
 struct uvideo_softc *sc = v;
 if (qb->type != V4L2_BUF_TYPE_VIDEO_CAPTURE ||
     qb->memory != V4L2_MEMORY_MMAP ||
     qb->index >= sc->sc_mmap_count)
  return (22);
 sc->sc_mmap[qb->index].v4l2_buf.flags &= ~0x00000004;
 sc->sc_mmap[qb->index].v4l2_buf.flags |= 0x00000002;
 ;
 return (0);
}
int
uvideo_dqbuf(void *v, struct v4l2_buffer *dqb)
{
 struct uvideo_softc *sc = v;
 struct uvideo_mmap *mmap;
 int error;
 if (dqb->type != V4L2_BUF_TYPE_VIDEO_CAPTURE ||
     dqb->memory != V4L2_MEMORY_MMAP)
  return (22);
 if ((((&sc->sc_mmap_q)->sqh_first) == ((void *)0))) {
  error = tsleep(sc, 0, "vid_mmap", 10 * hz);
  if (error)
   return (22);
 }
 mmap = ((&sc->sc_mmap_q)->sqh_first);
 if (mmap == ((void *)0))
  panic("uvideo_dqbuf: NULL pointer!");
 __builtin_bcopy((&mmap->v4l2_buf), (dqb), (sizeof(struct v4l2_buffer)));
 mmap->v4l2_buf.flags &= ~0x00000004;
 mmap->v4l2_buf.flags &= ~0x00000002;
 ;
 do { if (((&sc->sc_mmap_q)->sqh_first = (&sc->sc_mmap_q)->sqh_first->q_frames.sqe_next) == ((void *)0)) (&sc->sc_mmap_q)->sqh_last = &(&sc->sc_mmap_q)->sqh_first; } while (0);
 return (0);
}
int
uvideo_streamon(void *v, int type)
{
 struct uvideo_softc *sc = v;
 usbd_status error;
 error = uvideo_vs_init(sc);
 if (error != USBD_NORMAL_COMPLETION)
  return (22);
 if (sc->sc_vs_cur->bulk_endpoint)
  uvideo_vs_start_bulk(sc);
 else
  uvideo_vs_start_isoc(sc);
 return (0);
}
int
uvideo_streamoff(void *v, int type)
{
 struct uvideo_softc *sc = v;
 uvideo_vs_close(sc);
 return (0);
}
int
uvideo_queryctrl(void *v, struct v4l2_queryctrl *qctrl)
{
 struct uvideo_softc *sc = v;
 int i, ret = 0;
 usbd_status error;
 uint8_t *ctrl_data;
 uint16_t ctrl_len;
 i = uvideo_find_ctrl(sc, qctrl->id);
 if (i == 22)
  return (i);
 ctrl_len = uvideo_ctrls[i].ctrl_len;
 if (ctrl_len < 1 || ctrl_len > 2) {
  printf("%s: invalid control length: %d\n", __func__, ctrl_len);
  return (22);
 }
 ctrl_data = malloc(ctrl_len, 102, 0x0001 | 0x0004);
 if (ctrl_data == ((void *)0)) {
  printf("%s: could not allocate control data\n", __func__);
  return (12);
 }
 qctrl->type = uvideo_ctrls[i].type;
 strlcpy(qctrl->name, uvideo_ctrls[i].name, sizeof(qctrl->name));
 error = uvideo_vc_get_ctrl(sc, ctrl_data, 0x82,
     sc->sc_desc_vc_pu_cur->bUnitID,
     uvideo_ctrls[i].ctrl_selector, uvideo_ctrls[i].ctrl_len);
 if (error != USBD_NORMAL_COMPLETION) {
  ret = 22;
  goto out;
 }
 switch (ctrl_len) {
 case 1:
  qctrl->minimum = uvideo_ctrls[i].sig ?
      *(int8_t *)ctrl_data :
      *ctrl_data;
  break;
 case 2:
  qctrl->minimum = uvideo_ctrls[i].sig ?
      (int16_t)((ctrl_data)[0] | ((ctrl_data)[1] << 8)) :
      ((ctrl_data)[0] | ((ctrl_data)[1] << 8));
  break;
 }
 error = uvideo_vc_get_ctrl(sc, ctrl_data, 0x83,
     sc->sc_desc_vc_pu_cur->bUnitID,
     uvideo_ctrls[i].ctrl_selector, uvideo_ctrls[i].ctrl_len);
 if (error != USBD_NORMAL_COMPLETION) {
  ret = 22;
  goto out;
 }
 switch(ctrl_len) {
 case 1:
  qctrl->maximum = uvideo_ctrls[i].sig ?
      *(int8_t *)ctrl_data :
      *ctrl_data;
  break;
 case 2:
  qctrl->maximum = uvideo_ctrls[i].sig ?
      (int16_t)((ctrl_data)[0] | ((ctrl_data)[1] << 8)) :
      ((ctrl_data)[0] | ((ctrl_data)[1] << 8));
  break;
 }
 error = uvideo_vc_get_ctrl(sc, ctrl_data, 0x84,
     sc->sc_desc_vc_pu_cur->bUnitID,
     uvideo_ctrls[i].ctrl_selector, uvideo_ctrls[i].ctrl_len);
 if (error != USBD_NORMAL_COMPLETION) {
  ret = 22;
  goto out;
 }
 switch(ctrl_len) {
 case 1:
  qctrl->step = uvideo_ctrls[i].sig ?
      *(int8_t *)ctrl_data:
      *ctrl_data;
  break;
 case 2:
  qctrl->step = uvideo_ctrls[i].sig ?
      (int16_t)((ctrl_data)[0] | ((ctrl_data)[1] << 8)) :
      ((ctrl_data)[0] | ((ctrl_data)[1] << 8));
  break;
 }
 error = uvideo_vc_get_ctrl(sc, ctrl_data, 0x87,
     sc->sc_desc_vc_pu_cur->bUnitID,
     uvideo_ctrls[i].ctrl_selector, uvideo_ctrls[i].ctrl_len);
 if (error != USBD_NORMAL_COMPLETION) {
  ret = 22;
  goto out;
 }
 switch(ctrl_len) {
 case 1:
  qctrl->default_value = uvideo_ctrls[i].sig ?
      *(int8_t *)ctrl_data :
      *ctrl_data;
  break;
 case 2:
  qctrl->default_value = uvideo_ctrls[i].sig ?
      (int16_t)((ctrl_data)[0] | ((ctrl_data)[1] << 8)) :
      ((ctrl_data)[0] | ((ctrl_data)[1] << 8));
  break;
 }
 qctrl->flags = 0;
out:
 free(ctrl_data, 102, ctrl_len);
 return (ret);
}
int
uvideo_g_ctrl(void *v, struct v4l2_control *gctrl)
{
 struct uvideo_softc *sc = v;
 int i, ret = 0;
 usbd_status error;
 uint8_t *ctrl_data;
 uint16_t ctrl_len;
 i = uvideo_find_ctrl(sc, gctrl->id);
 if (i == 22)
  return (i);
 ctrl_len = uvideo_ctrls[i].ctrl_len;
 if (ctrl_len < 1 || ctrl_len > 2) {
  printf("%s: invalid control length: %d\n", __func__, ctrl_len);
  return (22);
 }
 ctrl_data = malloc(ctrl_len, 102, 0x0001 | 0x0004);
 if (ctrl_data == ((void *)0)) {
  printf("%s: could not allocate control data\n", __func__);
  return (12);
 }
 error = uvideo_vc_get_ctrl(sc, ctrl_data, 0x81,
     sc->sc_desc_vc_pu_cur->bUnitID,
     uvideo_ctrls[i].ctrl_selector, uvideo_ctrls[i].ctrl_len);
 if (error != USBD_NORMAL_COMPLETION) {
  ret = 22;
  goto out;
 }
 switch(ctrl_len) {
 case 1:
  gctrl->value = uvideo_ctrls[i].sig ?
      *(int8_t *)ctrl_data :
      *ctrl_data;
  break;
 case 2:
  gctrl->value = uvideo_ctrls[i].sig ?
      (int16_t)((ctrl_data)[0] | ((ctrl_data)[1] << 8)) :
      ((ctrl_data)[0] | ((ctrl_data)[1] << 8));
  break;
 }
out:
 free(ctrl_data, 102, ctrl_len);
 return (0);
}
int
uvideo_s_ctrl(void *v, struct v4l2_control *sctrl)
{
 struct uvideo_softc *sc = v;
 int i, ret = 0;
 usbd_status error;
 uint8_t *ctrl_data;
 uint16_t ctrl_len;
 i = uvideo_find_ctrl(sc, sctrl->id);
 if (i == 22)
  return (i);
 ctrl_len = uvideo_ctrls[i].ctrl_len;
 if (ctrl_len < 1 || ctrl_len > 2) {
  printf("%s: invalid control length: %d\n", __func__, ctrl_len);
  return (22);
 }
 ctrl_data = malloc(ctrl_len, 102, 0x0001 | 0x0004);
 if (ctrl_data == ((void *)0)) {
  printf("%s: could not allocate control data\n", __func__);
  return (12);
 }
 switch(ctrl_len) {
 case 1:
  if (uvideo_ctrls[i].sig)
   *(int8_t *)ctrl_data = sctrl->value;
  else
   *ctrl_data = sctrl->value;
  break;
 case 2:
  ((ctrl_data)[0] = (u_int8_t)(sctrl->value), (ctrl_data)[1] = (u_int8_t)((sctrl->value) >> 8));
  break;
 }
 error = uvideo_vc_set_ctrl(sc, ctrl_data, 0x01,
     sc->sc_desc_vc_pu_cur->bUnitID,
     uvideo_ctrls[i].ctrl_selector, uvideo_ctrls[i].ctrl_len);
 if (error != USBD_NORMAL_COMPLETION)
  ret = 22;
 free(ctrl_data, 102, ctrl_len);
 return (ret);
}
int
uvideo_try_fmt(void *v, struct v4l2_format *fmt)
{
 struct uvideo_softc *sc = v;
 struct uvideo_res r;
 int found, i;
 if (fmt->type != V4L2_BUF_TYPE_VIDEO_CAPTURE)
  return (22);
 ;
 for (found = 0, i = 0; i < sc->sc_fmtgrp_num; i++) {
  if (fmt->fmt.pix.pixelformat == sc->sc_fmtgrp[i].pixelformat) {
   found = 1;
   break;
  }
 }
 if (found == 0)
  return (22);
 uvideo_find_res(sc, i, fmt->fmt.pix.width, fmt->fmt.pix.height, &r);
 fmt->fmt.pix.width = r.width;
 fmt->fmt.pix.height = r.height;
 ;
 fmt->fmt.pix.sizeimage = sc->sc_frame_buffer.buf_size;
 return (0);
}
caddr_t
uvideo_mappage(void *v, off_t off, int prot)
{
 struct uvideo_softc *sc = v;
 caddr_t p;
 if (off >= sc->sc_mmap_buffer_size)
  return ((void *)0);
 if (!sc->sc_mmap_flag)
  sc->sc_mmap_flag = 1;
 p = sc->sc_mmap_buffer + off;
 return (p);
}
int
uvideo_get_bufsize(void *v)
{
 struct uvideo_softc *sc = v;
 return (sc->sc_max_fbuf_size);
}
int
uvideo_start_read(void *v)
{
 struct uvideo_softc *sc = v;
 usbd_status error;
 if (sc->sc_mmap_flag)
  sc->sc_mmap_flag = 0;
 error = uvideo_vs_init(sc);
 if (error != USBD_NORMAL_COMPLETION)
  return (22);
 if (sc->sc_vs_cur->bulk_endpoint)
  uvideo_vs_start_bulk(sc);
 else
  uvideo_vs_start_isoc(sc);
 return (0);
}
usbd_status
uvideo_usb_control(struct uvideo_softc *sc, uint8_t rt, uint8_t r,
    uint16_t value, uint8_t *data, size_t length)
{
 usb_device_request_t req;
 usbd_status err;
 req.bmRequestType = rt;
 req.bRequest = r;
 ((req.wIndex)[0] = (u_int8_t)(0), (req.wIndex)[1] = (u_int8_t)((0) >> 8));
 ((req.wValue)[0] = (u_int8_t)(value), (req.wValue)[1] = (u_int8_t)((value) >> 8));
 ((req.wLength)[0] = (u_int8_t)(length), (req.wLength)[1] = (u_int8_t)((length) >> 8));
 err = usbd_do_request(sc->sc_udev, &req, data);
 if (err != USBD_NORMAL_COMPLETION)
  return (err);
 return (USBD_NORMAL_COMPLETION);
}
usbd_status
uvideo_ucode_loader_ricoh(struct uvideo_softc *sc)
{
 usbd_status error;
 uint8_t *ucode, len, cbuf;
 size_t ucode_size;
 uint16_t addr;
 int offset = 0, remain;
 cbuf = 0;
 error = uvideo_usb_control(sc, (0x80 | 0x40 | 0x00),
     0xa4, 0, &cbuf, sizeof cbuf);
 if (error != USBD_NORMAL_COMPLETION) {
  printf("%s: ucode status error=%s!\n",
      ((sc)->sc_dev.dv_xname), usbd_errstr(error));
  return (USBD_INVAL);
 }
 if (cbuf) {
  ;
  return (USBD_NORMAL_COMPLETION);
 } else {
  ;
 }
 error = loadfirmware(sc->sc_quirk->ucode_name, &ucode, &ucode_size);
 if (error != 0) {
  printf("%s: loadfirmware error=%d!\n", ((sc)->sc_dev.dv_xname), error);
  return (USBD_INVAL);
 }
 remain = ucode_size;
 while (remain > 0) {
  if (remain < 3) {
   printf("%s: ucode file incomplete!\n", ((sc)->sc_dev.dv_xname));
   free(ucode, 2, ucode_size);
   return (USBD_INVAL);
  }
  len = ucode[offset];
  addr = ucode[offset + 1] | (ucode[offset + 2] << 8);
  offset += 3;
  remain -= 3;
  error = uvideo_usb_control(sc, (0x00 | 0x40 | 0x00),
      0xa0, addr, &ucode[offset], len);
  if (error != USBD_NORMAL_COMPLETION) {
   printf("%s: ucode upload error=%s!\n",
       ((sc)->sc_dev.dv_xname), usbd_errstr(error));
   free(ucode, 2, ucode_size);
   return (USBD_INVAL);
  }
  ;
  offset += len;
  remain -= len;
 }
 free(ucode, 2, ucode_size);
 cbuf = 0;
 error = uvideo_usb_control(sc, (0x00 | 0x40 | 0x00),
     0xa1, 0, &cbuf, sizeof cbuf);
 if (error != USBD_NORMAL_COMPLETION) {
  printf("%s: ucode activate error=%s!\n",
      ((sc)->sc_dev.dv_xname), usbd_errstr(error));
  return (USBD_INVAL);
 }
 ;
 return (USBD_NORMAL_COMPLETION);
}
usbd_status
uvideo_ucode_loader_apple_isight(struct uvideo_softc *sc)
{
 usbd_status error;
 uint8_t *ucode, *code, cbuf;
 size_t ucode_size;
 uint16_t len, req, off, llen;
 error = loadfirmware(sc->sc_quirk->ucode_name, &ucode, &ucode_size);
 if (error != 0) {
  printf("%s: loadfirmware error=%d!\n", ((sc)->sc_dev.dv_xname), error);
  return (USBD_INVAL);
 }
 cbuf = 1;
 error = uvideo_usb_control(sc, (0x00 | 0x40 | 0x00), 0xa0, 0xe600,
     &cbuf, sizeof(cbuf));
 if (error) {
  printf("%s: failed to init firmware loading state: %s\n",
      ((sc)->sc_dev.dv_xname), usbd_errstr(error));
  return (error);
 }
 code = ucode;
 while (code < ucode + ucode_size) {
  len = (code[0] << 8) | code[1];
  req = (code[2] << 8) | code[3];
  ;
  if (len < 1 || len > 1023) {
   printf("%s: ucode header contains wrong value!\n",
       ((sc)->sc_dev.dv_xname));
   free(ucode, 2, ucode_size);
   return (USBD_INVAL);
  }
  code += 4;
  for (off = 0; len > 0; req += 50, off += 50) {
   llen = len > 50 ? 50 : len;
   len -= llen;
   ;
   error = uvideo_usb_control(sc, (0x00 | 0x40 | 0x00),
       0xa0, req, code, llen);
   if (error) {
    printf("%s: ucode load failed: %s\n",
        ((sc)->sc_dev.dv_xname), usbd_errstr(error));
    free(ucode, 2, ucode_size);
    return (USBD_INVAL);
   }
   code += llen;
  }
 }
 free(ucode, 2, ucode_size);
 cbuf = 0;
 error = uvideo_usb_control(sc, (0x00 | 0x40 | 0x00), 0xa0, 0xe600,
     &cbuf, sizeof(cbuf));
 if (error != USBD_NORMAL_COMPLETION) {
  printf("%s: ucode activate error=%s!\n",
      ((sc)->sc_dev.dv_xname), usbd_errstr(error));
  return (USBD_INVAL);
 }
 ;
 return (USBD_INVAL);
}
