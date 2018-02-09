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
struct arc4random_ctx;
void arc4random_buf(void *, size_t)
  __attribute__ ((__bounded__(__buffer__,1,2)));
struct arc4random_ctx *arc4random_ctx_new(void);
void arc4random_ctx_free(struct arc4random_ctx *);
void arc4random_ctx_buf(struct arc4random_ctx *, void *, size_t);
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
struct arc_msg_firmware_info {
 u_int32_t signature;
 u_int32_t request_len;
 u_int32_t queue_len;
 u_int32_t sdram_size;
 u_int32_t sata_ports;
 u_int8_t vendor[40];
 u_int8_t model[8];
 u_int8_t fw_version[16];
 u_int8_t device_map[16];
 u_int32_t cfgVersion;
 u_int8_t cfgSerial[16];
 u_int32_t cfgPicStatus;
} __attribute__((__packed__));
struct arc_fw_hdr {
 u_int8_t byte1;
 u_int8_t byte2;
 u_int8_t byte3;
} __attribute__((__packed__));
struct arc_fw_hdr arc_fw_hdr = { 0x5e, 0x01, 0x61 };
struct arc_fw_bufhdr {
 struct arc_fw_hdr hdr;
 u_int16_t len;
} __attribute__((__packed__));
struct arc_fw_comminfo {
 u_int8_t baud_rate;
 u_int8_t data_bits;
 u_int8_t stop_bits;
 u_int8_t parity;
 u_int8_t flow_control;
} __attribute__((__packed__));
struct arc_fw_scsiattr {
 u_int8_t channel;
 u_int8_t target;
 u_int8_t lun;
 u_int8_t tagged;
 u_int8_t cache;
 u_int8_t speed;
} __attribute__((__packed__));
struct arc_fw_raidinfo {
 u_int8_t set_name[16];
 u_int32_t capacity;
 u_int32_t capacity2;
 u_int32_t fail_mask;
 u_int8_t device_array[32];
 u_int8_t member_devices;
 u_int8_t new_member_devices;
 u_int8_t raid_state;
 u_int8_t volumes;
 u_int8_t volume_list[16];
 u_int8_t reserved1[3];
 u_int8_t free_segments;
 u_int32_t raw_stripes[8];
 u_int32_t reserved2[3];
 u_int8_t vol_ListX[112];
 u_int8_t devEncArray[32];
} __attribute__((__packed__));
struct arc_fw_volinfo {
 u_int8_t set_name[16];
 u_int32_t capacity;
 u_int32_t capacity2;
 u_int32_t fail_mask;
 u_int32_t stripe_size;
 u_int32_t new_fail_mask;
 u_int32_t new_stripe_size;
 u_int32_t volume_status;
 u_int32_t progress;
 struct arc_fw_scsiattr scsi_attr;
 u_int8_t member_disks;
 u_int8_t raid_level;
 u_int8_t new_member_disks;
 u_int8_t new_raid_level;
 u_int8_t raid_set_number;
 u_int8_t vol_state0;
 u_int32_t host_speed;
 u_int32_t vol_state;
 u_int8_t vol_array[16];
 u_int8_t num_5060volumes;
 u_int8_t reserved[43];
} __attribute__((__packed__));
struct arc_fw_diskinfo {
 u_int8_t model[40];
 u_int8_t serial[20];
 u_int8_t firmware_rev[8];
 u_int32_t capacity;
 u_int32_t capacity2;
 u_int8_t device_state;
 u_int8_t pio_mode;
 u_int8_t current_udma_mode;
 u_int8_t udma_mode;
 u_int8_t hot_spare_type;
 u_int8_t raid_number;
 struct arc_fw_scsiattr scsi_attr;
 u_int8_t reserved[170];
} __attribute__((__packed__));
struct arc_fw_sysinfo {
 u_int8_t vendor_name[40];
 u_int8_t serial_number[16];
 u_int8_t firmware_version[16];
 u_int8_t boot_version[16];
 u_int8_t mb_version[16];
 u_int8_t model_name[8];
 u_int8_t local_ip[4];
 u_int8_t current_ip[4];
 u_int32_t time_tick;
 u_int32_t cpu_speed;
 u_int32_t icache;
 u_int32_t dcache;
 u_int32_t scache;
 u_int32_t memory_size;
 u_int32_t memory_speed;
 u_int32_t events;
 u_int8_t gsiMacAddress[6];
 u_int8_t gsiDhcp;
 u_int8_t alarm;
 u_int8_t channel_usage;
 u_int8_t max_ata_mode;
 u_int8_t sdram_ecc;
 u_int8_t rebuild_priority;
 struct arc_fw_comminfo comm_a;
 struct arc_fw_comminfo comm_b;
 u_int8_t ide_channels;
 u_int8_t scsi_host_channels;
 u_int8_t ide_host_channels;
 u_int8_t max_volume_set;
 u_int8_t max_raid_set;
 u_int8_t ether_port;
 u_int8_t raid6_engine;
 u_int8_t reserved[75];
} __attribute__((__packed__));
struct arc_iop;
struct arc_ccb;
struct arc_ccb_list { struct arc_ccb *slh_first; };
struct InBound_SRB {
 u_int32_t addressLow;
 u_int32_t addressHigh;
 u_int32_t length;
 u_int32_t reserved0;
};
struct OutBound_SRB {
 u_int32_t addressLow;
 u_int32_t addressHigh;
};
struct arc_HBD_Msgu {
  struct InBound_SRB post_qbuffer[256];
    struct OutBound_SRB done_qbuffer[256 +1];
 u_int16_t postq_index;
 u_int16_t doneq_index;
};
struct arc_msg_scsicmd {
 u_int8_t bus;
 u_int8_t target;
 u_int8_t lun;
 u_int8_t function;
 u_int8_t cdb_len;
 u_int8_t sgl_len;
 u_int8_t flags;
 u_int8_t msgPages;
 u_int32_t context;
 u_int32_t data_len;
 u_int8_t cdb[16];
 u_int8_t status;
 u_int8_t sense_data[15];
} __attribute__((__packed__));
struct arc_sge {
 u_int32_t sg_length;
 u_int32_t sg_lo_addr;
 u_int32_t sg_hi_addr;
} __attribute__((__packed__));
struct arc_io_cmd {
 struct arc_msg_scsicmd cmd;
 struct arc_sge sgl[38];
 u_int32_t reserved1;
 struct arc_ccb *ccb;
 u_int32_t reserved2[6];
} __attribute__((__packed__));
struct arc_ccb {
 struct arc_softc *ccb_sc;
 struct scsi_xfer *ccb_xs;
 bus_dmamap_t ccb_dmamap;
 bus_addr_t cmd_dma_offset;
 struct arc_io_cmd *ccb_cmd;
 u_int32_t ccb_cmd_post;
 struct { struct arc_ccb *sle_next; } ccb_link;
 u_int32_t arc_io_cmd_length;
};
struct arc_softc {
 struct device sc_dev;
 const struct arc_iop *sc_iop;
 struct scsi_link sc_link;
 pci_chipset_tag_t sc_pc;
 pcitag_t sc_tag;
 bus_space_tag_t sc_iot;
 bus_space_handle_t sc_ioh;
 bus_size_t sc_ios;
 bus_dma_tag_t sc_dmat;
 void *sc_ih;
 u_int32_t sc_req_count;
 struct arc_dmamem *sc_requests;
 struct arc_ccb *sc_ccbs;
 struct arc_ccb_list sc_ccb_free;
 struct mutex sc_ccb_mtx;
 struct scsi_iopool sc_iopool;
 struct scsibus_softc *sc_scsibus;
 struct rwlock sc_lock;
 volatile int sc_talking;
 struct ksensor *sc_sensors;
 struct ksensordev sc_sensordev;
 int sc_nsensors;
 u_int32_t sc_ledmask;
 u_int32_t sc_adp_type;
 u_int32_t sc_ccb_phys_hi;
 u_int32_t postQ_buffer;
 u_int32_t doneQ_buffer;
 bus_addr_t cmdQ_ptr_offset;
 struct arc_HBD_Msgu *pmu;
};
struct arc_dmamem {
 bus_dmamap_t adm_map;
 bus_dma_segment_t adm_seg;
 size_t adm_size;
 caddr_t adm_kva;
};
int arc_match(struct device *, void *, void *);
void arc_attach(struct device *, struct device *, void *);
int arc_detach(struct device *, int);
int arc_activate(struct device *, int);
int arc_intr(void *);
int arc_intr_A(void *);
int arc_intr_C(void *);
int arc_intr_D(void *);
void arc_scsi_cmd(struct scsi_xfer *);
void arc_minphys(struct buf *, struct scsi_link *);
u_int32_t arc_read(struct arc_softc *, bus_size_t);
void arc_read_region(struct arc_softc *, bus_size_t,
       void *, size_t);
void arc_write(struct arc_softc *, bus_size_t, u_int32_t);
void arc_write_region(struct arc_softc *, bus_size_t,
       void *, size_t);
int arc_wait_eq(struct arc_softc *, bus_size_t,
       u_int32_t, u_int32_t);
int arc_wait_ne(struct arc_softc *, bus_size_t,
       u_int32_t, u_int32_t);
int arc_msg0(struct arc_softc *, u_int32_t);
struct arc_dmamem *arc_dmamem_alloc(struct arc_softc *, size_t);
void arc_dmamem_free(struct arc_softc *,
       struct arc_dmamem *);
void arc_free_ccb_src(struct arc_softc *sc);
int arc_alloc_ccbs(struct arc_softc *);
struct arc_ccb *arc_get_ccb(struct arc_softc *);
void arc_put_ccb(struct arc_softc *, struct arc_ccb *);
int arc_load_xs(struct arc_ccb *);
int arc_complete(struct arc_softc *, struct arc_ccb *,
       int);
void arc_scsi_cmd_done(struct arc_softc *, struct arc_ccb *,
       u_int32_t);
int arc_map_pci_resources(struct arc_softc *,
       struct pci_attach_args *);
void arc_unmap_pci_resources(struct arc_softc *);
int arc_chipA_firmware(struct arc_softc *);
int arc_chipB_firmware(struct arc_softc *);
int arc_chipC_firmware(struct arc_softc *);
int arc_chipD_firmware(struct arc_softc *);
void arc_enable_all_intr(struct arc_softc *);
void arc_disable_all_intr(struct arc_softc *);
void arc_stop_bgrb_proc(struct arc_softc *sc);
void arc_flush_cache(struct arc_softc *sc);
void arc_iop_set_conf(struct arc_softc *sc);
void arc_lock(struct arc_softc *);
void arc_unlock(struct arc_softc *);
void arc_wait(struct arc_softc *);
u_int8_t arc_msg_cksum(void *, u_int16_t);
int arc_msgbuf(struct arc_softc *, void *, size_t,
       void *, size_t, int);
int arc_bioctl(struct device *, u_long, caddr_t);
int arc_bio_inq(struct arc_softc *, struct bioc_inq *);
int arc_bio_vol(struct arc_softc *, struct bioc_vol *);
int arc_bio_disk(struct arc_softc *, struct bioc_disk *);
int arc_bio_alarm(struct arc_softc *, struct bioc_alarm *);
int arc_bio_alarm_state(struct arc_softc *,
       struct bioc_alarm *);
int arc_bio_blink(struct arc_softc *, struct bioc_blink *);
int arc_bio_getvol(struct arc_softc *, int,
       struct arc_fw_volinfo *);
struct arc_task {
 struct task t;
 struct arc_softc *sc;
};
void arc_create_sensors(void *);
void arc_refresh_sensors(void *);
struct cfattach arc_ca = {
 sizeof(struct arc_softc), arc_match, arc_attach, arc_detach,
 arc_activate
};
struct cfdriver arc_cd = {
 ((void *)0), "arc", DV_DULL
};
struct scsi_adapter arc_switch = {
 arc_scsi_cmd, arc_minphys, ((void *)0), ((void *)0), ((void *)0)
};
struct arc_iop {
 int (*iop_query_firmware)(struct arc_softc *);
};
static const struct arc_iop arc_intel = {
 arc_chipA_firmware
};
static const struct arc_iop arc_marvell = {
 arc_chipB_firmware
};
static const struct arc_iop arc_lsi = {
 arc_chipC_firmware
};
static const struct arc_iop arc_marvell2 = {
 arc_chipD_firmware
};
struct arc_board {
 pcireg_t ab_vendor;
 pcireg_t ab_product;
 const struct arc_iop *ab_iop;
};
const struct arc_board *arc_match_board(struct pci_attach_args *);
static const struct arc_board arc_devices[] = {
 { 0x17d3, 0x1110, &arc_intel },
 { 0x17d3, 0x1120, &arc_intel },
 { 0x17d3, 0x1130, &arc_intel },
 { 0x17d3, 0x1160, &arc_intel },
 { 0x17d3, 0x1170, &arc_intel },
 { 0x17d3, 0x1200, &arc_intel },
 { 0x17d3, 0x1201, &arc_marvell },
 { 0x17d3, 0x1202, &arc_intel },
 { 0x17d3, 0x1210, &arc_intel },
 { 0x17d3, 0x1214, &arc_marvell2 },
 { 0x17d3, 0x1220, &arc_intel },
 { 0x17d3, 0x1230, &arc_intel },
 { 0x17d3, 0x1260, &arc_intel },
 { 0x17d3, 0x1270, &arc_intel },
 { 0x17d3, 0x1280, &arc_intel },
 { 0x17d3, 0x1380, &arc_intel },
 { 0x17d3, 0x1381, &arc_intel },
 { 0x17d3, 0x1680, &arc_intel },
 { 0x17d3, 0x1681, &arc_intel },
 { 0x17d3, 0x1880, &arc_lsi }
};
const struct arc_board *
arc_match_board(struct pci_attach_args *pa)
{
 const struct arc_board *ab;
 int i;
 for (i = 0; i < sizeof(arc_devices) / sizeof(arc_devices[0]); i++) {
  ab = &arc_devices[i];
  if ((((pa->pa_id) >> 0) & 0xffff) == ab->ab_vendor &&
      (((pa->pa_id) >> 16) & 0xffff) == ab->ab_product)
   return (ab);
 }
 return (((void *)0));
}
int
arc_match(struct device *parent, void *match, void *aux)
{
 return ((arc_match_board(aux) == ((void *)0)) ? 0 : 1);
}
void
arc_attach(struct device *parent, struct device *self, void *aux)
{
 struct arc_softc *sc = (struct arc_softc *)self;
 struct pci_attach_args *pa = aux;
 struct scsibus_attach_args saa;
 struct device *child;
 sc->sc_talking = 0;
 _rw_init_flags(&sc->sc_lock, "arcmsg", 0, ((void *)0));
 sc->sc_iop = arc_match_board(pa)->ab_iop;
 if(sc->sc_iop == &arc_intel)
  sc->sc_adp_type = 0x00000001;
 else if(sc->sc_iop == &arc_marvell)
  sc->sc_adp_type = 0x00000002;
 else if(sc->sc_iop == &arc_lsi)
  sc->sc_adp_type = 0x00000003;
 else if(sc->sc_iop == &arc_marvell2)
  sc->sc_adp_type = 0x00000004;
 if (arc_map_pci_resources(sc, pa) != 0) {
  return;
 }
 if (arc_alloc_ccbs(sc) != 0) {
  goto unmap_pci;
 }
 arc_iop_set_conf(sc);
 if (sc->sc_iop->iop_query_firmware(sc) != 0) {
  goto unmap_pci;
 }
 sc->sc_link.adapter = &arc_switch;
 sc->sc_link.adapter_softc = sc;
 sc->sc_link.adapter_target = 16;
 sc->sc_link.adapter_buswidth = 16;
 sc->sc_link.openings = sc->sc_req_count;
 sc->sc_link.pool = &sc->sc_iopool;
 __builtin_bzero((&saa), (sizeof(saa)));
 saa.saa_sc_link = &sc->sc_link;
 child = config_found_sm((self), (&saa), (scsiprint), ((void *)0));
 sc->sc_scsibus = (struct scsibus_softc *)child;
 arc_enable_all_intr(sc);
 if (bio_register(self, arc_bioctl) != 0)
  panic("%s: bioctl registration failed", ((sc)->sc_dev.dv_xname));
 {
  struct arc_task *at;
  at = malloc(sizeof(*at), 127, 0x0001);
  at->sc = sc;
  task_set(&at->t, arc_create_sensors, at);
  task_add(systq, &at->t);
 }
 return;
unmap_pci:
 arc_unmap_pci_resources(sc);
}
int
arc_activate(struct device *self, int act)
{
 int rv = 0;
 switch (act) {
 case 6:
  rv = config_activate_children(self, act);
  arc_detach(self, 0);
  break;
 default:
  rv = config_activate_children(self, act);
  break;
 }
 return (rv);
}
int
arc_detach(struct device *self, int flags)
{
 struct arc_softc *sc = (struct arc_softc *)self;
 arc_stop_bgrb_proc(sc);
 arc_flush_cache(sc);
 return (0);
}
int
arc_intr_A(void *arg)
{
 struct arc_softc *sc = arg;
 struct arc_ccb *ccb = ((void *)0);
 char *kva = ((void *)(sc->sc_requests)->adm_kva);
 struct arc_io_cmd *cmd;
 u_int32_t reg64, intrstat, error;
 int ret = 0;
 intrstat = arc_read(sc, 0x0030);
 intrstat &= (1<<3) | (1<<2) |
  (1<<0);
 arc_write(sc, 0x0030, intrstat);
 if (intrstat & (1<<2)) {
  ret = 1;
  if (sc->sc_talking) {
   arc_write(sc, 0x0034,
       ~(1<<3));
   wakeup(sc);
  } else {
   reg64 = arc_read(sc, 0x002c);
   arc_write(sc, 0x002c, reg64);
   if (reg64 & (1<<0))
    arc_write(sc, 0x0020,
        (1<<1));
  }
 }
 if (intrstat & (1<<3)) {
  while ((reg64 = arc_read(sc, 0x0044)) != 0xffffffff) {
   ret = 1;
   cmd = (struct arc_io_cmd *)(kva +
       ((reg64 << 5) -
       (u_int32_t)((sc->sc_requests)->adm_map->dm_segs[0].ds_addr)));
   ccb = cmd->ccb;
   bus_dmamap_sync(sc->sc_dmat, ((sc->sc_requests)->adm_map),
       ccb->cmd_dma_offset, 512,
       0x01 | 0x04);
   error = (reg64 & (1<<28))? 1:0;
   arc_scsi_cmd_done(sc, ccb, error);
  }
 }
 return (ret);
}
int
arc_intr_C(void *arg)
{
 struct arc_softc *sc = arg;
 struct arc_ccb *ccb = ((void *)0);
 char *kva = ((void *)(sc->sc_requests)->adm_kva);
 struct arc_io_cmd *cmd;
 u_int32_t reg64, intrstat, obmsg, error;
 int ret = 0, throttling;
 intrstat = arc_read(sc, 0x30);
 if (!(intrstat & ((1<<3) |
  (1<<2))))
  return (ret);
 if (intrstat & (1<<2)) {
  ret = 1;
  if (sc->sc_talking) {
   arc_write(sc, 0x34,
       ~(1<<3));
   wakeup(sc);
  } else {
   reg64 = arc_read(sc, 0x9C);
   arc_write(sc, 0xA0, reg64);
   if (reg64 & 0x00000002) {
    arc_write(sc, 0x20,
        0x00000004);
   }
   if (reg64 & 0x00000008) {
    arc_write(sc, 0xA0,
     0x08);
    obmsg = arc_read(sc, 0x2200);
    if (obmsg == (0x87974060))
     ;
   }
  }
 }
 if (intrstat & (1<<3)) {
  ret = 1;
  throttling = 0;
  while (arc_read(sc, 0x30) &
   (1<<3)) {
   reg64 = arc_read(sc, 0xC8);
   cmd = (struct arc_io_cmd *)(kva + ((reg64 & 0xFFFFFFE0) -
       (u_int32_t)((sc->sc_requests)->adm_map->dm_segs[0].ds_addr)));
   ccb = cmd->ccb;
   bus_dmamap_sync(sc->sc_dmat, ((sc->sc_requests)->adm_map),
       ccb->cmd_dma_offset, 512,
       0x01 | 0x04);
   error = (reg64 & 1);
   arc_scsi_cmd_done(sc, ccb, error);
   throttling++;
   if(throttling == 12) {
    arc_write(sc, 0x20,
        0x00000010);
    throttling = 0;
   }
  }
 }
 return (ret);
}
static u_int16_t
arcmsr_get_doneq_index(struct arc_HBD_Msgu *phbdmu)
{
 u_int16_t doneq_index, index_stripped;
 doneq_index = phbdmu->doneq_index;
 if (doneq_index & 0x4000) {
  index_stripped = doneq_index & 0xFF;
  index_stripped += 1;
  index_stripped %= 256;
  phbdmu->doneq_index = index_stripped ?
      (index_stripped | 0x4000) : index_stripped;
 } else {
  index_stripped = doneq_index;
  index_stripped += 1;
  index_stripped %= 256;
  phbdmu->doneq_index = index_stripped ?
      index_stripped : (index_stripped | 0x4000);
 }
 return (phbdmu->doneq_index);
}
int
arc_intr_D(void *arg)
{
 struct arc_softc *sc = arg;
 struct arc_ccb *ccb = ((void *)0);
 char *kva = ((void *)(sc->sc_requests)->adm_kva);
 struct arc_io_cmd *cmd;
 u_int32_t reg64, intrstat, obmsg, error;
 u_int32_t ob_write_ptr;
 u_int16_t doneq_index;
 int ret = 0;
 struct arc_HBD_Msgu *pmu;
 intrstat = arc_read(sc, 0x200);
 if (!(intrstat & (0x00000010 |
  0x00001000)))
  return (ret);
 if (intrstat & 0x00001000) {
  ret = 1;
  if (sc->sc_talking) {
   arc_write(sc, 0x20C,
       0x00000010);
   wakeup(sc);
  } else {
   reg64 = arc_read(sc, 0x480);
   arc_write(sc, 0x480, reg64);
   if (reg64 & 0x00000001) {
    arc_write(sc, 0x460,
        0x00000002);
   }
   if (reg64 & 0x02000000) {
    arc_write(sc, 0x480,
     0x2000000);
    obmsg = arc_read(sc, 0x2200);
    if (obmsg == (0x87974060))
     ;
   }
  }
 }
 if (intrstat & 0x00000010) {
  ret = 1;
  arc_write(sc, 0x1088, 1);
  bus_dmamap_sync(sc->sc_dmat, ((sc->sc_requests)->adm_map),
      sc->cmdQ_ptr_offset, sizeof(struct arc_HBD_Msgu),
      0x01 | 0x04);
  pmu = sc->pmu;
  ob_write_ptr = pmu->done_qbuffer[0].addressLow;
  doneq_index = pmu->doneq_index;
  while ((doneq_index & 0xFF) != (ob_write_ptr & 0xFF)) {
   doneq_index = arcmsr_get_doneq_index(pmu);
   reg64 = pmu->done_qbuffer[(doneq_index & 0xFF)+1].addressLow;
   cmd = (struct arc_io_cmd *)(kva + ((reg64 & 0xFFFFFFF0) -
       (u_int32_t)((sc->sc_requests)->adm_map->dm_segs[0].ds_addr)));
   ccb = cmd->ccb;
   bus_dmamap_sync(sc->sc_dmat, ((sc->sc_requests)->adm_map),
       ccb->cmd_dma_offset, 512,
       0x01 | 0x04);
   error = (reg64 & 1);
   arc_scsi_cmd_done(sc, ccb, error);
   arc_write(sc, 0x1070, doneq_index);
   ob_write_ptr = pmu->done_qbuffer[0].addressLow;
  }
 }
 return (ret);
}
int
arc_intr(void *arg)
{
 struct arc_softc *sc = arg;
 int ret = 0;
 switch(sc->sc_adp_type) {
 case 0x00000001:
  ret = arc_intr_A(arg);
  break;
 case 0x00000003:
  ret = arc_intr_C(arg);
  break;
 case 0x00000004:
  ret = arc_intr_D(arg);
  break;
 }
 return (ret);
}
void
arc_scsi_cmd(struct scsi_xfer *xs)
{
 struct scsi_link *link = xs->sc_link;
 struct arc_softc *sc = link->adapter_softc;
 struct arc_ccb *ccb;
 struct arc_msg_scsicmd *cmd;
 u_int32_t reg64, cdb_len;
 int s;
 struct arc_HBD_Msgu *pmu;
 u_int16_t index_stripped;
 u_int16_t postq_index;
 struct InBound_SRB *pinbound_srb;
 if (xs->cmdlen > 16) {
  __builtin_bzero((&xs->sense), (sizeof(xs->sense)));
  xs->sense.error_code = 0x80 | 0x70;
  xs->sense.flags = 0x05;
  xs->sense.add_sense_code = 0x20;
  xs->error = 1;
  scsi_done(xs);
  return;
 }
 ccb = xs->io;
 ccb->ccb_xs = xs;
 if (arc_load_xs(ccb) != 0) {
  xs->error = 2;
  scsi_done(xs);
  return;
 }
 cmd = &ccb->ccb_cmd->cmd;
 reg64 = ccb->ccb_cmd_post;
 ccb->ccb_cmd->ccb = ccb;
 cmd->target = link->target;
 cmd->lun = link->lun;
 cmd->function = 1;
 cmd->cdb_len = xs->cmdlen;
 cmd->sgl_len = ccb->ccb_dmamap->dm_nsegs;
 if (xs->flags & 0x01000)
  cmd->flags = (1<<2);
 if (ccb->ccb_dmamap->dm_nsegs > 17) {
  cmd->flags |= (1<<0);
 }
 cmd->data_len = (__uint32_t)(__builtin_constant_p(xs->datalen) ? (__uint32_t)(((__uint32_t)(xs->datalen) & 0xff) << 24 | ((__uint32_t)(xs->datalen) & 0xff00) << 8 | ((__uint32_t)(xs->datalen) & 0xff0000) >> 8 | ((__uint32_t)(xs->datalen) & 0xff000000) >> 24) : __swap32md(xs->datalen));
 __builtin_bcopy((xs->cmd), (cmd->cdb), (xs->cmdlen));
 bus_dmamap_sync(sc->sc_dmat, ((sc->sc_requests)->adm_map),
     ccb->cmd_dma_offset, 512,
     0x01 | 0x04);
 s = _splraise(5);
 switch(sc->sc_adp_type) {
 case 0x00000001:
  if (cmd->flags & (1<<0))
   reg64 |= (1<<31);
  arc_write(sc, 0x0040, reg64);
  break;
 case 0x00000003:
  cdb_len = sizeof(struct arc_msg_scsicmd) +
   sizeof(struct arc_sge) * ccb->ccb_dmamap->dm_nsegs;
  if (cdb_len > 0x300)
   cdb_len = 0x300;
  reg64 = reg64 | ((cdb_len - 1) >> 6) | 1;
  if (sc->sc_ccb_phys_hi)
   arc_write(sc, 0xC4, sc->sc_ccb_phys_hi);
  arc_write(sc, 0xC0, reg64);
  break;
 case 0x00000004:
   pmu = sc->pmu;
   postq_index = pmu->postq_index;
   pinbound_srb = (struct InBound_SRB *)&pmu->post_qbuffer[postq_index & 0xFF];
   pinbound_srb->addressHigh = sc->sc_ccb_phys_hi;
   pinbound_srb->addressLow = ccb->ccb_cmd_post;
   pinbound_srb->length = ccb->arc_io_cmd_length >> 2;
   cmd->context = ccb->ccb_cmd_post;
   if (postq_index & 0x4000) {
    index_stripped = postq_index & 0xFF;
    index_stripped += 1;
    index_stripped %= 256;
    pmu->postq_index = index_stripped ? (index_stripped | 0x4000) : index_stripped;
   } else {
    index_stripped = postq_index;
    index_stripped += 1;
    index_stripped %= 256;
    pmu->postq_index = index_stripped ? index_stripped : (index_stripped | 0x4000);
   }
   bus_dmamap_sync(sc->sc_dmat, ((sc->sc_requests)->adm_map),
       sc->cmdQ_ptr_offset, sizeof(struct arc_HBD_Msgu),
       0x01 | 0x04);
   arc_write(sc, 0x1018, postq_index);
  break;
 }
 if (xs->flags & 0x00002) {
  if (arc_complete(sc, ccb, xs->timeout) != 0) {
   xs->error = 2;
   scsi_done(xs);
  }
 }
 _splx(s);
}
int
arc_load_xs(struct arc_ccb *ccb)
{
 struct arc_softc *sc = ccb->ccb_sc;
 struct scsi_xfer *xs = ccb->ccb_xs;
 bus_dmamap_t dmap = ccb->ccb_dmamap;
 struct arc_sge *sgl = ccb->ccb_cmd->sgl, *sge;
 u_int64_t addr;
 int i, error;
 u_int32_t msg_length;
 if (xs->datalen == 0)
 {
  ccb->arc_io_cmd_length = sizeof(struct arc_msg_scsicmd);
  ccb->ccb_cmd->cmd.msgPages = 1;
  return (0);
 }
 error = bus_dmamap_load(sc->sc_dmat, dmap,
     xs->data, xs->datalen, ((void *)0),
     (xs->flags & 0x00001) ? 0x0001 : 0x0000);
 if (error != 0) {
  printf("%s: error %d loading dmamap\n", ((sc)->sc_dev.dv_xname), error);
  return (1);
 }
 for (i = 0; i < dmap->dm_nsegs; i++) {
  sge = &sgl[i];
  sge->sg_length = (__uint32_t)(__builtin_constant_p((1<<24) | dmap->dm_segs[i].ds_len) ? (__uint32_t)(((__uint32_t)((1<<24) | dmap->dm_segs[i].ds_len) & 0xff) << 24 | ((__uint32_t)((1<<24) | dmap->dm_segs[i].ds_len) & 0xff00) << 8 | ((__uint32_t)((1<<24) | dmap->dm_segs[i].ds_len) & 0xff0000) >> 8 | ((__uint32_t)((1<<24) | dmap->dm_segs[i].ds_len) & 0xff000000) >> 24) : __swap32md((1<<24) | dmap->dm_segs[i].ds_len));
  addr = dmap->dm_segs[i].ds_addr;
  sge->sg_hi_addr = (__uint32_t)(__builtin_constant_p((u_int32_t)(addr >> 32)) ? (__uint32_t)(((__uint32_t)((u_int32_t)(addr >> 32)) & 0xff) << 24 | ((__uint32_t)((u_int32_t)(addr >> 32)) & 0xff00) << 8 | ((__uint32_t)((u_int32_t)(addr >> 32)) & 0xff0000) >> 8 | ((__uint32_t)((u_int32_t)(addr >> 32)) & 0xff000000) >> 24) : __swap32md((u_int32_t)(addr >> 32)));
  sge->sg_lo_addr = (__uint32_t)(__builtin_constant_p((u_int32_t)addr) ? (__uint32_t)(((__uint32_t)((u_int32_t)addr) & 0xff) << 24 | ((__uint32_t)((u_int32_t)addr) & 0xff00) << 8 | ((__uint32_t)((u_int32_t)addr) & 0xff0000) >> 8 | ((__uint32_t)((u_int32_t)addr) & 0xff000000) >> 24) : __swap32md((u_int32_t)addr));
 }
 ccb->arc_io_cmd_length = sizeof(struct arc_msg_scsicmd) +
     sizeof(struct arc_sge) * dmap->dm_nsegs;
 msg_length = ccb->arc_io_cmd_length;
 ccb->ccb_cmd->cmd.msgPages = (msg_length/256) + ((msg_length % 256) ? 1 : 0);
 bus_dmamap_sync(sc->sc_dmat, dmap, 0, dmap->dm_mapsize,
     (xs->flags & 0x00800) ? 0x01 :
     0x04);
 return (0);
}
void
arc_scsi_cmd_done(struct arc_softc *sc, struct arc_ccb *ccb, u_int32_t error)
{
 struct scsi_xfer *xs = ccb->ccb_xs;
 struct arc_msg_scsicmd *cmd;
 if (xs->datalen != 0) {
  bus_dmamap_sync(sc->sc_dmat, ccb->ccb_dmamap, 0,
      ccb->ccb_dmamap->dm_mapsize, (xs->flags & 0x00800) ?
      0x02 : 0x08);
  bus_dmamap_unload(sc->sc_dmat, ccb->ccb_dmamap);
 }
 if (error) {
  cmd = &ccb->ccb_cmd->cmd;
  ;
  ;
  switch (cmd->status) {
  case 0xf0:
  case 0xf1:
  case 0xf2:
   xs->status = 0x00;
   xs->error = 3;
   break;
  case 0x02:
   __builtin_bzero((&xs->sense), (sizeof(xs->sense)));
   __builtin_bcopy((cmd->sense_data), (&xs->sense), (min(15, sizeof(xs->sense))));
   xs->sense.error_code = 0x80 | 0x70;
   xs->status = 0x02;
   xs->error = 1;
   xs->resid = 0;
   break;
  default:
   xs->error = 5;
   xs->status = 0x08;
   break;
  }
 } else {
  xs->status = 0x00;
  xs->error = 0;
  xs->resid = 0;
 }
 scsi_done(xs);
}
int
arc_complete(struct arc_softc *sc, struct arc_ccb *nccb, int timeout)
{
 struct arc_ccb *ccb = ((void *)0);
 char *kva = ((void *)(sc->sc_requests)->adm_kva);
 struct arc_io_cmd *cmd;
 u_int32_t reg64, error, write_ptr;
 u_int16_t doneq_index;
 struct arc_HBD_Msgu *phbdmu;
 int ret = 0;
 arc_disable_all_intr(sc);
 do {
  switch(sc->sc_adp_type) {
  case 0x00000001:
   reg64 = arc_read(sc, 0x0044);
   error = (reg64 & (1<<28))? 1:0;
   break;
  case 0x00000003:
   reg64 = arc_read(sc, 0xC8);
   error = (reg64 & 1);
   break;
  case 0x00000004:
   phbdmu = sc->pmu;
   write_ptr = phbdmu->done_qbuffer[0].addressLow;
   doneq_index = phbdmu->doneq_index;
   if((write_ptr & 0xff) == (doneq_index & 0xff)) {
Loop0:
    reg64 = 0xffffffff;
   }
   else {
    doneq_index = arcmsr_get_doneq_index(phbdmu);
    reg64 = phbdmu->done_qbuffer[(doneq_index & 0xFF)+1].addressLow;
    if (reg64 == 0)
     goto Loop0;
    arc_write(sc, 0x1070, doneq_index);
   }
   error = (reg64 & 1);
   break;
  }
  if (reg64 == 0xffffffff) {
   if (timeout-- == 0) {
    return (1);
   }
   delay(1000);
   continue;
  }
  switch(sc->sc_adp_type) {
  case 0x00000001:
   cmd = (struct arc_io_cmd *)(kva +
       ((reg64 << 5) -
       ((sc->sc_requests)->adm_map->dm_segs[0].ds_addr)));
      break;
  case 0x00000003:
  case 0x00000004:
   cmd = (struct arc_io_cmd *)(kva + ((reg64 & 0xFFFFFFE0) -
       ((sc->sc_requests)->adm_map->dm_segs[0].ds_addr)));
      break;
  }
  ccb = cmd->ccb;
  bus_dmamap_sync(sc->sc_dmat, ((sc->sc_requests)->adm_map),
      ccb->cmd_dma_offset, 512,
      0x01 | 0x04);
  arc_scsi_cmd_done(sc, ccb, error);
 } while (nccb != ccb);
 arc_enable_all_intr(sc);
 return (ret);
}
void
arc_minphys(struct buf *bp, struct scsi_link *sl)
{
 if (bp->b_bcount > (64 * 1024))
  bp->b_bcount = (64 * 1024);
 minphys(bp);
}
void
arc_enable_all_intr(struct arc_softc *sc)
{
 u_int32_t int_mask;
 switch(sc->sc_adp_type) {
 case 0x00000001:
  int_mask = arc_read(sc, 0x0034);
  int_mask &= ~((1<<3) |
   (1<<2) | (1<<0));
  arc_write(sc, 0x0034, int_mask);
     break;
 case 0x00000003:
  int_mask = arc_read(sc, 0x34);
  int_mask &= ~((1<<3) |
   (1<<2) | (1<<0));
  arc_write(sc, 0x34, int_mask);
     break;
 case 0x00000004:
  int_mask = arc_read(sc, 0x20C);
  int_mask |= 0x00001010;
  arc_write(sc, 0x20C, int_mask);
     break;
 }
}
void
arc_disable_all_intr(struct arc_softc *sc)
{
 u_int32_t int_mask;
 switch(sc->sc_adp_type) {
 case 0x00000001:
  int_mask = arc_read(sc, 0x0034);
  int_mask |= 0x1F;
  arc_write(sc, 0x0034, int_mask);
  break;
 case 0x00000003:
  int_mask = arc_read(sc, 0x34);
  int_mask |= 0x0000000D;
  arc_write(sc, 0x34, int_mask);
  break;
 case 0x00000004:
  int_mask = arc_read(sc, 0x20C);
  int_mask &= ~0x00001010;
  arc_write(sc, 0x20C, 0x00000000);
  break;
 }
}
int
arc_map_pci_resources(struct arc_softc *sc, struct pci_attach_args *pa)
{
 pcireg_t memtype;
 pci_intr_handle_t ih;
 sc->sc_pc = pa->pa_pc;
 sc->sc_tag = pa->pa_tag;
 sc->sc_dmat = pa->pa_dmat;
 switch(sc->sc_adp_type) {
  case 0x00000001:
  memtype = pci_mapreg_type(sc->sc_pc, sc->sc_tag, 0x10);
  if (pci_mapreg_map(pa, 0x10, memtype, 0, &sc->sc_iot,
      &sc->sc_ioh, ((void *)0), &sc->sc_ios, 0) != 0) {
   printf(": unable to map ARC_HBA_TYPE_A system"
    " interface register\n");
   return(1);
  }
  break;
  case 0x00000003:
  memtype = pci_mapreg_type(sc->sc_pc, sc->sc_tag, 0x14);
  if (pci_mapreg_map(pa, 0x14, memtype, 0, &sc->sc_iot,
      &sc->sc_ioh, ((void *)0), &sc->sc_ios, 0) != 0) {
   printf(": unable to map ARC_HBA_TYPE_C system"
    " interface register\n");
   return(1);
  }
  break;
  case 0x00000004:
  memtype = pci_mapreg_type(sc->sc_pc, sc->sc_tag, 0x10);
  if (pci_mapreg_map(pa, 0x10, memtype, 0, &sc->sc_iot,
      &sc->sc_ioh, ((void *)0), &sc->sc_ios, 0) != 0) {
   printf(": unable to map ARC_HBA_TYPE_D system"
    " interface register\n");
   return(1);
  }
  break;
 }
 arc_disable_all_intr(sc);
 if (pci_intr_map(pa, &ih) != 0) {
  printf(": unable to map interrupt\n");
  goto unmap;
 }
 sc->sc_ih = pci_intr_establish(pa->pa_pc, ih, 5,
     arc_intr, sc, ((sc)->sc_dev.dv_xname));
 if (sc->sc_ih == ((void *)0)) {
  printf(": unable to map interrupt\n");
  goto unmap;
 }
 printf(": %s\n", pci_intr_string(pa->pa_pc, ih));
 return (0);
unmap:
 bus_space_unmap(sc->sc_iot, sc->sc_ioh, sc->sc_ios);
 sc->sc_ios = 0;
 return (1);
}
void
arc_unmap_pci_resources(struct arc_softc *sc)
{
 pci_intr_disestablish(sc->sc_pc, sc->sc_ih);
 bus_space_unmap(sc->sc_iot, sc->sc_ioh, sc->sc_ios);
 sc->sc_ios = 0;
}
int
arc_chipA_firmware(struct arc_softc *sc)
{
 struct arc_msg_firmware_info fwinfo;
 char string[81];
 u_int32_t ob_doorbell;
 if (arc_wait_eq(sc, 0x001c, (1<<31),
     (1<<31)) != 0) {
  printf("%s: timeout waiting for firmware ok\n", ((sc)->sc_dev.dv_xname));
  return (1);
 }
 if (arc_msg0(sc, (0x00000001)) != 0) {
  printf("%s: timeout waiting for get config\n", ((sc)->sc_dev.dv_xname));
  return (1);
 }
 arc_read_region(sc, 0x0a00, &fwinfo, sizeof(fwinfo));
 ;
 if ((__uint32_t)(__builtin_constant_p(fwinfo.signature) ? (__uint32_t)(((__uint32_t)(fwinfo.signature) & 0xff) << 24 | ((__uint32_t)(fwinfo.signature) & 0xff00) << 8 | ((__uint32_t)(fwinfo.signature) & 0xff0000) >> 8 | ((__uint32_t)(fwinfo.signature) & 0xff000000) >> 24) : __swap32md(fwinfo.signature)) != (0x87974060)) {
  printf("%s: invalid firmware info from iop\n", ((sc)->sc_dev.dv_xname));
  return (1);
 }
 ;
 ;
 ;
 ;
 scsi_strvis(string, fwinfo.vendor, sizeof(fwinfo.vendor));
 ;
 scsi_strvis(string, fwinfo.model, sizeof(fwinfo.model));
 ;
 scsi_strvis(string, fwinfo.fw_version, sizeof(fwinfo.fw_version));
 ;
 if ((__uint32_t)(__builtin_constant_p(fwinfo.request_len) ? (__uint32_t)(((__uint32_t)(fwinfo.request_len) & 0xff) << 24 | ((__uint32_t)(fwinfo.request_len) & 0xff00) << 8 | ((__uint32_t)(fwinfo.request_len) & 0xff0000) >> 8 | ((__uint32_t)(fwinfo.request_len) & 0xff000000) >> 24) : __swap32md(fwinfo.request_len)) != 512) {
  printf("%s: unexpected request frame size (%d != %d)\n",
      ((sc)->sc_dev.dv_xname), (__uint32_t)(__builtin_constant_p(fwinfo.request_len) ? (__uint32_t)(((__uint32_t)(fwinfo.request_len) & 0xff) << 24 | ((__uint32_t)(fwinfo.request_len) & 0xff00) << 8 | ((__uint32_t)(fwinfo.request_len) & 0xff0000) >> 8 | ((__uint32_t)(fwinfo.request_len) & 0xff000000) >> 24) : __swap32md(fwinfo.request_len)), 512);
  return (1);
 }
 sc->sc_req_count = (__uint32_t)(__builtin_constant_p(fwinfo.queue_len) ? (__uint32_t)(((__uint32_t)(fwinfo.queue_len) & 0xff) << 24 | ((__uint32_t)(fwinfo.queue_len) & 0xff00) << 8 | ((__uint32_t)(fwinfo.queue_len) & 0xff0000) >> 8 | ((__uint32_t)(fwinfo.queue_len) & 0xff000000) >> 24) : __swap32md(fwinfo.queue_len));
 if (arc_msg0(sc, (0x00000006)) != 0) {
  printf("%s: timeout waiting to start bg rebuild\n",
      ((sc)->sc_dev.dv_xname));
  return (1);
 }
 ob_doorbell = arc_read(sc, 0x002c);
 arc_write(sc, 0x002c, ob_doorbell);
 arc_write(sc, 0x0020, (1<<1));
 printf("%s: %d ports, %dMB SDRAM, firmware %s\n",
     ((sc)->sc_dev.dv_xname), (__uint32_t)(__builtin_constant_p(fwinfo.sata_ports) ? (__uint32_t)(((__uint32_t)(fwinfo.sata_ports) & 0xff) << 24 | ((__uint32_t)(fwinfo.sata_ports) & 0xff00) << 8 | ((__uint32_t)(fwinfo.sata_ports) & 0xff0000) >> 8 | ((__uint32_t)(fwinfo.sata_ports) & 0xff000000) >> 24) : __swap32md(fwinfo.sata_ports)),
     (__uint32_t)(__builtin_constant_p(fwinfo.sdram_size) ? (__uint32_t)(((__uint32_t)(fwinfo.sdram_size) & 0xff) << 24 | ((__uint32_t)(fwinfo.sdram_size) & 0xff00) << 8 | ((__uint32_t)(fwinfo.sdram_size) & 0xff0000) >> 8 | ((__uint32_t)(fwinfo.sdram_size) & 0xff000000) >> 24) : __swap32md(fwinfo.sdram_size)), string);
 return (0);
}
int
arc_chipB_firmware(struct arc_softc *sc)
{
 if (arc_wait_eq(sc, 0x00020408,
     (1<<31),
     (1<<31)) != 0) {
  printf("%s: timeout waiting for firmware ok\n", ((sc)->sc_dev.dv_xname));
  return (1);
 }
 return (1);
}
int
arc_chipC_firmware(struct arc_softc *sc)
{
 struct arc_msg_firmware_info fwinfo;
 char string[81];
 u_int32_t ob_doorbell;
 if (arc_wait_eq(sc, 0xBC, 0x80000000,
     0x80000000) != 0) {
  printf("%s: timeout waiting for firmware ok\n", ((sc)->sc_dev.dv_xname));
  return (1);
 }
 if (arc_msg0(sc, (0x00000001)) != 0) {
  printf("%s: timeout waiting for get config\n", ((sc)->sc_dev.dv_xname));
  return (1);
 }
 arc_read_region(sc, 0x2200, &fwinfo, sizeof(fwinfo));
 ;
 if ((__uint32_t)(__builtin_constant_p(fwinfo.signature) ? (__uint32_t)(((__uint32_t)(fwinfo.signature) & 0xff) << 24 | ((__uint32_t)(fwinfo.signature) & 0xff00) << 8 | ((__uint32_t)(fwinfo.signature) & 0xff0000) >> 8 | ((__uint32_t)(fwinfo.signature) & 0xff000000) >> 24) : __swap32md(fwinfo.signature)) != (0x87974060)) {
  printf("%s: invalid firmware info from iop\n", ((sc)->sc_dev.dv_xname));
  return (1);
 }
 ;
 ;
 ;
 ;
 scsi_strvis(string, fwinfo.vendor, sizeof(fwinfo.vendor));
 ;
 scsi_strvis(string, fwinfo.model, sizeof(fwinfo.model));
 ;
 scsi_strvis(string, fwinfo.fw_version, sizeof(fwinfo.fw_version));
 ;
 if ((__uint32_t)(__builtin_constant_p(fwinfo.request_len) ? (__uint32_t)(((__uint32_t)(fwinfo.request_len) & 0xff) << 24 | ((__uint32_t)(fwinfo.request_len) & 0xff00) << 8 | ((__uint32_t)(fwinfo.request_len) & 0xff0000) >> 8 | ((__uint32_t)(fwinfo.request_len) & 0xff000000) >> 24) : __swap32md(fwinfo.request_len)) != 512) {
  printf("%s: unexpected request frame size (%d != %d)\n",
      ((sc)->sc_dev.dv_xname), (__uint32_t)(__builtin_constant_p(fwinfo.request_len) ? (__uint32_t)(((__uint32_t)(fwinfo.request_len) & 0xff) << 24 | ((__uint32_t)(fwinfo.request_len) & 0xff00) << 8 | ((__uint32_t)(fwinfo.request_len) & 0xff0000) >> 8 | ((__uint32_t)(fwinfo.request_len) & 0xff000000) >> 24) : __swap32md(fwinfo.request_len)), 512);
  return (1);
 }
 sc->sc_req_count = (__uint32_t)(__builtin_constant_p(fwinfo.queue_len) ? (__uint32_t)(((__uint32_t)(fwinfo.queue_len) & 0xff) << 24 | ((__uint32_t)(fwinfo.queue_len) & 0xff00) << 8 | ((__uint32_t)(fwinfo.queue_len) & 0xff0000) >> 8 | ((__uint32_t)(fwinfo.queue_len) & 0xff000000) >> 24) : __swap32md(fwinfo.queue_len));
 if (arc_msg0(sc, (0x00000006)) != 0) {
  printf("%s: timeout waiting to start bg rebuild\n",
      ((sc)->sc_dev.dv_xname));
  return (1);
 }
 ob_doorbell = arc_read(sc, 0x9C);
 arc_write(sc, 0xA0, ob_doorbell);
 arc_write(sc, 0x20, 0x00000004);
 printf("%s: %d ports, %dMB SDRAM, firmware %s\n",
     ((sc)->sc_dev.dv_xname), (__uint32_t)(__builtin_constant_p(fwinfo.sata_ports) ? (__uint32_t)(((__uint32_t)(fwinfo.sata_ports) & 0xff) << 24 | ((__uint32_t)(fwinfo.sata_ports) & 0xff00) << 8 | ((__uint32_t)(fwinfo.sata_ports) & 0xff0000) >> 8 | ((__uint32_t)(fwinfo.sata_ports) & 0xff000000) >> 24) : __swap32md(fwinfo.sata_ports)),
     (__uint32_t)(__builtin_constant_p(fwinfo.sdram_size) ? (__uint32_t)(((__uint32_t)(fwinfo.sdram_size) & 0xff) << 24 | ((__uint32_t)(fwinfo.sdram_size) & 0xff00) << 8 | ((__uint32_t)(fwinfo.sdram_size) & 0xff0000) >> 8 | ((__uint32_t)(fwinfo.sdram_size) & 0xff000000) >> 24) : __swap32md(fwinfo.sdram_size)), string);
 return (0);
}
int
arc_chipD_firmware(struct arc_softc *sc)
{
 struct arc_msg_firmware_info fwinfo;
 char string[81];
 u_int32_t ob_doorbell;
 if (arc_wait_eq(sc, 0x424, 0x80000000,
     0x80000000) != 0) {
  printf("%s: timeout waiting for firmware ok\n", ((sc)->sc_dev.dv_xname));
  return (1);
 }
 if ((arc_read(sc, 0x480) & 0x02000000))
  arc_write(sc, 0x480, 0x02000000);
 if (arc_msg0(sc, (0x00000001)) != 0) {
  printf("%s: timeout waiting for get config\n", ((sc)->sc_dev.dv_xname));
  return (1);
 }
 arc_read_region(sc, 0x2200, &fwinfo, sizeof(fwinfo));
 ;
 if ((__uint32_t)(__builtin_constant_p(fwinfo.signature) ? (__uint32_t)(((__uint32_t)(fwinfo.signature) & 0xff) << 24 | ((__uint32_t)(fwinfo.signature) & 0xff00) << 8 | ((__uint32_t)(fwinfo.signature) & 0xff0000) >> 8 | ((__uint32_t)(fwinfo.signature) & 0xff000000) >> 24) : __swap32md(fwinfo.signature)) != (0x87974060)) {
  printf("%s: invalid firmware info from iop\n", ((sc)->sc_dev.dv_xname));
  return (1);
 }
 ;
 ;
 ;
 ;
 scsi_strvis(string, fwinfo.vendor, sizeof(fwinfo.vendor));
 ;
 scsi_strvis(string, fwinfo.model, sizeof(fwinfo.model));
 ;
 scsi_strvis(string, fwinfo.fw_version, sizeof(fwinfo.fw_version));
 ;
 if ((__uint32_t)(__builtin_constant_p(fwinfo.request_len) ? (__uint32_t)(((__uint32_t)(fwinfo.request_len) & 0xff) << 24 | ((__uint32_t)(fwinfo.request_len) & 0xff00) << 8 | ((__uint32_t)(fwinfo.request_len) & 0xff0000) >> 8 | ((__uint32_t)(fwinfo.request_len) & 0xff000000) >> 24) : __swap32md(fwinfo.request_len)) != 512) {
  printf("%s: unexpected request frame size (%d != %d)\n",
      ((sc)->sc_dev.dv_xname), (__uint32_t)(__builtin_constant_p(fwinfo.request_len) ? (__uint32_t)(((__uint32_t)(fwinfo.request_len) & 0xff) << 24 | ((__uint32_t)(fwinfo.request_len) & 0xff00) << 8 | ((__uint32_t)(fwinfo.request_len) & 0xff0000) >> 8 | ((__uint32_t)(fwinfo.request_len) & 0xff000000) >> 24) : __swap32md(fwinfo.request_len)), 512);
  return (1);
 }
 sc->sc_req_count = (__uint32_t)(__builtin_constant_p(fwinfo.queue_len) ? (__uint32_t)(((__uint32_t)(fwinfo.queue_len) & 0xff) << 24 | ((__uint32_t)(fwinfo.queue_len) & 0xff00) << 8 | ((__uint32_t)(fwinfo.queue_len) & 0xff0000) >> 8 | ((__uint32_t)(fwinfo.queue_len) & 0xff000000) >> 24) : __swap32md(fwinfo.queue_len)) - 1;
 if (arc_msg0(sc, (0x00000006)) != 0) {
  printf("%s: timeout waiting to start bg rebuild\n",
      ((sc)->sc_dev.dv_xname));
  return (1);
 }
 ob_doorbell = arc_read(sc, 0x480);
 arc_write(sc, 0x480, ob_doorbell);
 arc_write(sc, 0x460, 0x00000002);
 printf("%s: %d ports, %dMB SDRAM, firmware %s\n",
     ((sc)->sc_dev.dv_xname), (__uint32_t)(__builtin_constant_p(fwinfo.sata_ports) ? (__uint32_t)(((__uint32_t)(fwinfo.sata_ports) & 0xff) << 24 | ((__uint32_t)(fwinfo.sata_ports) & 0xff00) << 8 | ((__uint32_t)(fwinfo.sata_ports) & 0xff0000) >> 8 | ((__uint32_t)(fwinfo.sata_ports) & 0xff000000) >> 24) : __swap32md(fwinfo.sata_ports)),
     (__uint32_t)(__builtin_constant_p(fwinfo.sdram_size) ? (__uint32_t)(((__uint32_t)(fwinfo.sdram_size) & 0xff) << 24 | ((__uint32_t)(fwinfo.sdram_size) & 0xff00) << 8 | ((__uint32_t)(fwinfo.sdram_size) & 0xff0000) >> 8 | ((__uint32_t)(fwinfo.sdram_size) & 0xff000000) >> 24) : __swap32md(fwinfo.sdram_size)), string);
 return (0);
}
void
arc_stop_bgrb_proc(struct arc_softc *sc)
{
 switch(sc->sc_adp_type) {
 case 0x00000001:
  if (arc_msg0(sc, (0x00000004)) != 0)
   printf("%s: timeout waiting to stop bg rebuild\n",
    ((sc)->sc_dev.dv_xname));
  break;
 case 0x00000003:
  if (arc_msg0(sc, (0x00000004)) != 0)
   printf("%s: timeout waiting to stop bg rebuild\n",
    ((sc)->sc_dev.dv_xname));
  break;
 case 0x00000004:
  if (arc_msg0(sc, (0x00000004)) != 0)
   printf("%s: timeout waiting to stop bg rebuild\n",
    ((sc)->sc_dev.dv_xname));
  break;
 }
}
void
arc_flush_cache(struct arc_softc *sc)
{
 switch(sc->sc_adp_type) {
 case 0x00000001:
  if (arc_msg0(sc, (0x00000005)) != 0)
   printf("%s: timeout waiting to flush cache\n",
    ((sc)->sc_dev.dv_xname));
  break;
 case 0x00000003:
  if (arc_msg0(sc, (0x00000005)) != 0)
   printf("%s: timeout waiting to flush cache\n",
    ((sc)->sc_dev.dv_xname));
  break;
 case 0x00000004:
  if (arc_msg0(sc, (0x00000005)) != 0)
   printf("%s: timeout waiting to flush cache\n",
    ((sc)->sc_dev.dv_xname));
  break;
 }
}
void
arc_iop_set_conf(struct arc_softc *sc)
{
 u_int32_t ccb_phys_hi;
 struct arc_HBD_Msgu *phbdmu;
 ccb_phys_hi = sc->sc_ccb_phys_hi;
 switch (sc->sc_adp_type) {
 case 0x00000001:
  arc_write(sc, 0x0a00, (0x87974063));
  arc_write(sc, 0x0a00 +1, ccb_phys_hi);
  arc_msg0(sc, (0x00000002));
  break;
 case 0x00000003:
  arc_write(sc, 0x2200, (0x87974063));
  arc_write(sc, 0x2200 +1, ccb_phys_hi);
  arc_msg0(sc, (0x00000002));
  break;
 case 0x00000004:
  phbdmu = sc->pmu;
  phbdmu->postq_index = 0;
  phbdmu->doneq_index = 0x40FF;
  arc_write(sc, 0x2200, (0x87974063));
  arc_write(sc, 0x2200 +4, ccb_phys_hi);
  arc_write(sc, 0x2200 +8, sc->postQ_buffer);
  arc_write(sc, 0x2200 +12, sc->doneQ_buffer);
  arc_write(sc, 0x2200 +16, 0x100);
  arc_msg0(sc, (0x00000002));
  break;
 }
}
int
arc_bioctl(struct device *self, u_long cmd, caddr_t addr)
{
 struct arc_softc *sc = (struct arc_softc *)self;
 int error = 0;
 ;
 switch (cmd) {
 case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct bioc_inq) & 0x1fff) << 16) | ((('B')) << 8) | ((32))):
  error = arc_bio_inq(sc, (struct bioc_inq *)addr);
  break;
 case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct bioc_vol) & 0x1fff) << 16) | ((('B')) << 8) | ((34))):
  error = arc_bio_vol(sc, (struct bioc_vol *)addr);
  break;
 case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct bioc_disk) & 0x1fff) << 16) | ((('B')) << 8) | ((33))):
  error = arc_bio_disk(sc, (struct bioc_disk *)addr);
  break;
 case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct bioc_alarm) & 0x1fff) << 16) | ((('B')) << 8) | ((35))):
  error = arc_bio_alarm(sc, (struct bioc_alarm *)addr);
  break;
 case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct bioc_blink) & 0x1fff) << 16) | ((('B')) << 8) | ((36))):
  error = arc_bio_blink(sc, (struct bioc_blink *)addr);
  break;
 default:
  error = 25;
  break;
 }
 return (error);
}
int
arc_bio_alarm(struct arc_softc *sc, struct bioc_alarm *ba)
{
 u_int8_t request[2];
 u_int8_t reply[1];
 size_t len;
 int error = 0;
 ;
 switch (ba->ba_opcode) {
 case 0x01:
 case 0x00:
  request[0] = 0x31;
  request[1] = (ba->ba_opcode == 0x01) ?
      0x01 : 0x00;
  len = sizeof(request);
  break;
 case 0x02:
  request[0] = 0x30;
  len = 1;
  break;
 case 0x03:
  return (arc_bio_alarm_state(sc, ba));
 default:
  return (45);
 }
 arc_lock(sc);
 error = arc_msgbuf(sc, request, len, reply, sizeof(reply), 0);
 arc_unlock(sc);
 if (error != 0)
  return (error);
 switch (reply[0]) {
 case 0x41:
  return (0);
 case 0x4d:
  return (1);
 default:
  return (5);
 }
}
int
arc_bio_alarm_state(struct arc_softc *sc, struct bioc_alarm *ba)
{
 u_int8_t request = 0x23;
 struct arc_fw_sysinfo *sysinfo;
 int error = 0;
 sysinfo = malloc(sizeof(struct arc_fw_sysinfo), 127, 0x0001);
 request = 0x23;
 arc_lock(sc);
 error = arc_msgbuf(sc, &request, sizeof(request),
     sysinfo, sizeof(struct arc_fw_sysinfo), 0);
 arc_unlock(sc);
 if (error != 0)
  goto out;
 ba->ba_status = sysinfo->alarm;
out:
 free(sysinfo, 127, sizeof *sysinfo);
 return (error);
}
int
arc_bio_inq(struct arc_softc *sc, struct bioc_inq *bi)
{
 u_int8_t request[2];
 struct arc_fw_sysinfo *sysinfo;
 struct arc_fw_volinfo *volinfo;
 int maxvols, nvols = 0, i;
 int error = 0;
 char string[20];
 ;
 sysinfo = malloc(sizeof(struct arc_fw_sysinfo), 127, 0x0001);
 volinfo = malloc(sizeof(struct arc_fw_volinfo), 127, 0x0001);
 arc_lock(sc);
 request[0] = 0x23;
 error = arc_msgbuf(sc, request, 1, sysinfo,
     sizeof(struct arc_fw_sysinfo), 0);
 if (error != 0) {
  ;
  goto out;
 }
 maxvols = sysinfo->max_volume_set;
 request[0] = 0x21;
 for (i = 0; i < maxvols; i++) {
  request[1] = i;
  error = arc_msgbuf(sc, request, sizeof(request), volinfo,
      sizeof(struct arc_fw_volinfo), 0);
  if (error != 0) {
   ;
   goto out;
  }
  if ((volinfo->capacity != 0 || volinfo->capacity2 != 0) &&
      volinfo->raid_level != 0x05) {
   nvols++;
   scsi_strvis(string, volinfo->set_name, 16);
   ;
  }
 }
 strlcpy(bi->bi_dev, ((sc)->sc_dev.dv_xname), sizeof(bi->bi_dev));
 bi->bi_novol = nvols;
 ;
out:
 arc_unlock(sc);
 free(volinfo, 127, sizeof *volinfo);
 free(sysinfo, 127, sizeof *sysinfo);
 return (error);
}
int
arc_bio_blink(struct arc_softc *sc, struct bioc_blink *blink)
{
 u_int8_t request[6];
 u_int32_t mask;
 int error = 0;
 ;
 request[0] = 0x43;
 request[1] = 0x00;
 switch (blink->bb_status) {
 case 0x00:
  sc->sc_ledmask &= ~(1 << blink->bb_target);
  break;
 case 0x01:
  sc->sc_ledmask |= (1 << blink->bb_target);
  break;
 default:
  return (22);
 }
 mask = (__uint32_t)(__builtin_constant_p(sc->sc_ledmask) ? (__uint32_t)(((__uint32_t)(sc->sc_ledmask) & 0xff) << 24 | ((__uint32_t)(sc->sc_ledmask) & 0xff00) << 8 | ((__uint32_t)(sc->sc_ledmask) & 0xff0000) >> 8 | ((__uint32_t)(sc->sc_ledmask) & 0xff000000) >> 24) : __swap32md(sc->sc_ledmask));
 __builtin_bcopy((&mask), (&request[2]), (4));
 arc_lock(sc);
 error = arc_msgbuf(sc, request, sizeof(request), ((void *)0), 0, 0);
 arc_unlock(sc);
 if (error)
  return (5);
 return (0);
}
int
arc_bio_getvol(struct arc_softc *sc, int vol, struct arc_fw_volinfo *volinfo)
{
 u_int8_t request[2];
 struct arc_fw_sysinfo *sysinfo;
 int error = 0;
 int maxvols, nvols = 0, i;
 ;
 sysinfo = malloc(sizeof(struct arc_fw_sysinfo), 127, 0x0001);
 request[0] = 0x23;
 error = arc_msgbuf(sc, request, 1, sysinfo,
     sizeof(struct arc_fw_sysinfo), 0);
 if (error != 0)
  goto out;
 maxvols = sysinfo->max_volume_set;
 request[0] = 0x21;
 for (i = 0; i < maxvols; i++) {
  request[1] = i;
  error = arc_msgbuf(sc, request, sizeof(request), volinfo,
      sizeof(struct arc_fw_volinfo), 0);
  if (error != 0)
   goto out;
  if ((volinfo->capacity == 0 && volinfo->capacity2 == 0) ||
      volinfo->raid_level == 0x05)
   continue;
  if (nvols == vol)
   break;
  nvols++;
 }
 if (nvols != vol ||
     (volinfo->capacity == 0 && volinfo->capacity2 == 0) ||
     volinfo->raid_level == 0x05) {
  error = 19;
  goto out;
 }
out:
 free(sysinfo, 127, sizeof *sysinfo);
 return (error);
}
int
arc_bio_vol(struct arc_softc *sc, struct bioc_vol *bv)
{
 struct arc_fw_volinfo *volinfo;
 struct scsi_link *sc_link;
 struct device *dev;
 u_int64_t blocks;
 u_int32_t status;
 int error = 0;
 ;
 volinfo = malloc(sizeof(struct arc_fw_volinfo), 127, 0x0001);
 arc_lock(sc);
 error = arc_bio_getvol(sc, bv->bv_volid, volinfo);
 arc_unlock(sc);
 if (error != 0)
  goto out;
 bv->bv_percent = -1;
 bv->bv_seconds = 0;
 status = (__uint32_t)(__builtin_constant_p(volinfo->volume_status) ? (__uint32_t)(((__uint32_t)(volinfo->volume_status) & 0xff) << 24 | ((__uint32_t)(volinfo->volume_status) & 0xff00) << 8 | ((__uint32_t)(volinfo->volume_status) & 0xff0000) >> 8 | ((__uint32_t)(volinfo->volume_status) & 0xff000000) >> 24) : __swap32md(volinfo->volume_status));
 if (status == 0x0) {
  if ((__uint32_t)(__builtin_constant_p(volinfo->fail_mask) ? (__uint32_t)(((__uint32_t)(volinfo->fail_mask) & 0xff) << 24 | ((__uint32_t)(volinfo->fail_mask) & 0xff00) << 8 | ((__uint32_t)(volinfo->fail_mask) & 0xff0000) >> 8 | ((__uint32_t)(volinfo->fail_mask) & 0xff000000) >> 24) : __swap32md(volinfo->fail_mask)) == 0x0)
   bv->bv_status = 0x00;
  else
   bv->bv_status = 0x02;
 } else if (status & (1<<7))
  bv->bv_status = 0x02;
 else if (status & (1<<1))
  bv->bv_status = 0x01;
 else if (status & (1<<0)) {
  bv->bv_status = 0x03;
  bv->bv_percent = (__uint32_t)(__builtin_constant_p(volinfo->progress) ? (__uint32_t)(((__uint32_t)(volinfo->progress) & 0xff) << 24 | ((__uint32_t)(volinfo->progress) & 0xff00) << 8 | ((__uint32_t)(volinfo->progress) & 0xff0000) >> 8 | ((__uint32_t)(volinfo->progress) & 0xff000000) >> 24) : __swap32md(volinfo->progress)) / 10;
 } else if (status & (1<<3)) {
  bv->bv_status = 0x05;
  bv->bv_percent = (__uint32_t)(__builtin_constant_p(volinfo->progress) ? (__uint32_t)(((__uint32_t)(volinfo->progress) & 0xff) << 24 | ((__uint32_t)(volinfo->progress) & 0xff00) << 8 | ((__uint32_t)(volinfo->progress) & 0xff0000) >> 8 | ((__uint32_t)(volinfo->progress) & 0xff000000) >> 24) : __swap32md(volinfo->progress)) / 10;
 }
 blocks = (u_int64_t)(__uint32_t)(__builtin_constant_p(volinfo->capacity2) ? (__uint32_t)(((__uint32_t)(volinfo->capacity2) & 0xff) << 24 | ((__uint32_t)(volinfo->capacity2) & 0xff00) << 8 | ((__uint32_t)(volinfo->capacity2) & 0xff0000) >> 8 | ((__uint32_t)(volinfo->capacity2) & 0xff000000) >> 24) : __swap32md(volinfo->capacity2)) << 32;
 blocks += (u_int64_t)(__uint32_t)(__builtin_constant_p(volinfo->capacity) ? (__uint32_t)(((__uint32_t)(volinfo->capacity) & 0xff) << 24 | ((__uint32_t)(volinfo->capacity) & 0xff00) << 8 | ((__uint32_t)(volinfo->capacity) & 0xff0000) >> 8 | ((__uint32_t)(volinfo->capacity) & 0xff000000) >> 24) : __swap32md(volinfo->capacity));
 bv->bv_size = blocks * 512;
 switch (volinfo->raid_level) {
 case 0x00:
  bv->bv_level = 0;
  break;
 case 0x01:
  bv->bv_level = 1;
  break;
 case 0x02:
  bv->bv_level = 3;
  break;
 case 0x03:
  bv->bv_level = 5;
  break;
 case 0x04:
  bv->bv_level = 6;
  break;
 case 0x05:
 default:
  bv->bv_level = -1;
  break;
 }
 bv->bv_nodisk = volinfo->member_disks;
 sc_link = scsi_get_link(sc->sc_scsibus, volinfo->scsi_attr.target,
     volinfo->scsi_attr.lun);
 if (sc_link != ((void *)0)) {
  dev = sc_link->device_softc;
  strlcpy(bv->bv_dev, dev->dv_xname, sizeof(bv->bv_dev));
 }
out:
 free(volinfo, 127, sizeof *volinfo);
 return (error);
}
int
arc_bio_disk(struct arc_softc *sc, struct bioc_disk *bd)
{
 u_int8_t request[2];
 struct arc_fw_volinfo *volinfo;
 struct arc_fw_raidinfo *raidinfo;
 struct arc_fw_diskinfo *diskinfo;
 int error = 0;
 u_int64_t blocks;
 char model[81];
 char serial[41];
 char rev[17];
 ;
 volinfo = malloc(sizeof(struct arc_fw_volinfo), 127, 0x0001);
 raidinfo = malloc(sizeof(struct arc_fw_raidinfo), 127, 0x0001);
 diskinfo = malloc(sizeof(struct arc_fw_diskinfo), 127, 0x0001);
 arc_lock(sc);
 error = arc_bio_getvol(sc, bd->bd_volid, volinfo);
 if (error != 0)
  goto out;
 request[0] = 0x20;
 request[1] = volinfo->raid_set_number;
 error = arc_msgbuf(sc, request, sizeof(request), raidinfo,
     sizeof(struct arc_fw_raidinfo), 0);
 if (error != 0)
  goto out;
 if (bd->bd_diskid > raidinfo->member_devices) {
  error = 19;
  goto out;
 }
 if (raidinfo->device_array[bd->bd_diskid] == 0xff) {
  bd->bd_channel = 1;
  bd->bd_target = 0;
  bd->bd_lun = 0;
  bd->bd_status = 0x01;
  strlcpy(bd->bd_vendor, "disk missing", sizeof(bd->bd_vendor));
  goto out;
 }
 request[0] = 0x22;
 request[1] = raidinfo->device_array[bd->bd_diskid];
 error = arc_msgbuf(sc, request, sizeof(request), diskinfo,
     sizeof(struct arc_fw_diskinfo), 1);
 if (error != 0)
  goto out;
 bd->bd_channel = 0;
 bd->bd_target = raidinfo->device_array[bd->bd_diskid];
 bd->bd_lun = 0;
 bd->bd_status = 0x00;
 blocks = (u_int64_t)(__uint32_t)(__builtin_constant_p(diskinfo->capacity2) ? (__uint32_t)(((__uint32_t)(diskinfo->capacity2) & 0xff) << 24 | ((__uint32_t)(diskinfo->capacity2) & 0xff00) << 8 | ((__uint32_t)(diskinfo->capacity2) & 0xff0000) >> 8 | ((__uint32_t)(diskinfo->capacity2) & 0xff000000) >> 24) : __swap32md(diskinfo->capacity2)) << 32;
 blocks += (u_int64_t)(__uint32_t)(__builtin_constant_p(diskinfo->capacity) ? (__uint32_t)(((__uint32_t)(diskinfo->capacity) & 0xff) << 24 | ((__uint32_t)(diskinfo->capacity) & 0xff00) << 8 | ((__uint32_t)(diskinfo->capacity) & 0xff0000) >> 8 | ((__uint32_t)(diskinfo->capacity) & 0xff000000) >> 24) : __swap32md(diskinfo->capacity));
 bd->bd_size = blocks * 512;
 scsi_strvis(model, diskinfo->model, sizeof(diskinfo->model));
 scsi_strvis(serial, diskinfo->serial, sizeof(diskinfo->serial));
 scsi_strvis(rev, diskinfo->firmware_rev,
     sizeof(diskinfo->firmware_rev));
 snprintf(bd->bd_vendor, sizeof(bd->bd_vendor), "%s %s",
     model, rev);
 strlcpy(bd->bd_serial, serial, sizeof(bd->bd_serial));
out:
 arc_unlock(sc);
 free(diskinfo, 127, sizeof *diskinfo);
 free(raidinfo, 127, sizeof *raidinfo);
 free(volinfo, 127, sizeof *volinfo);
 return (error);
}
u_int8_t
arc_msg_cksum(void *cmd, u_int16_t len)
{
 u_int8_t *buf = cmd;
 u_int8_t cksum;
 int i;
 cksum = (u_int8_t)(len >> 8) + (u_int8_t)len;
 for (i = 0; i < len; i++)
  cksum += buf[i];
 return (cksum);
}
int
arc_msgbuf(struct arc_softc *sc, void *wptr, size_t wbuflen, void *rptr,
    size_t rbuflen, int sreadok)
{
 u_int8_t rwbuf[124];
 u_int8_t *wbuf, *rbuf, cksum;
 int wlen, wdone = 0, rlen, rdone = 0;
 u_int16_t rlenhdr = 0;
 struct arc_fw_bufhdr *bufhdr;
 u_int32_t reg64, rwlen, write_ok, read_ok;
 int error = 0;
 ;
 switch(sc->sc_adp_type) {
 case 0x00000001:
  reg64 = arc_read(sc, 0x002c);
  break;
 case 0x00000003:
  reg64 = arc_read(sc, 0x9C);
  break;
 case 0x00000004:
  reg64 = arc_read(sc, 0x480);
  break;
 }
 wlen = sizeof(struct arc_fw_bufhdr) + wbuflen + 1;
 wbuf = malloc(wlen, 127, 0x0001);
 rlen = sizeof(struct arc_fw_bufhdr) + rbuflen + 1;
 rbuf = malloc(rlen, 127, 0x0001);
 ;
 bufhdr = (struct arc_fw_bufhdr *)wbuf;
 bufhdr->hdr = arc_fw_hdr;
 bufhdr->len = (__uint16_t)(__builtin_constant_p(wbuflen) ? (__uint16_t)(((__uint16_t)(wbuflen) & 0xffU) << 8 | ((__uint16_t)(wbuflen) & 0xff00U) >> 8) : __swap16md(wbuflen));
 __builtin_bcopy((wptr), (wbuf + sizeof(struct arc_fw_bufhdr)), (wbuflen));
 wbuf[wlen - 1] = arc_msg_cksum(wptr, wbuflen);
 read_ok = 1;
 do {
  if ((read_ok) && wdone < wlen) {
   __builtin_bzero((rwbuf), (sizeof(rwbuf)));
   rwlen = (wlen - wdone) % sizeof(rwbuf);
   __builtin_bcopy((&wbuf[wdone]), (rwbuf), (rwlen));
   switch(sc->sc_adp_type) {
   case 0x00000001:
    arc_write(sc, 0x0e00, rwlen);
    arc_write_region(sc, 0x0e04, rwbuf,
        sizeof(rwbuf));
    arc_write(sc, 0x0020,
        (1<<0));
    break;
   case 0x00000003:
    arc_write(sc, 0x2000, rwlen);
    arc_write_region(sc, 0x2004, rwbuf,
        sizeof(rwbuf));
    arc_write(sc, 0x20,
        0x00000002);
    break;
   case 0x00000004:
    arc_write(sc, 0x2000, rwlen);
    arc_write_region(sc, 0x2004, rwbuf,
        sizeof(rwbuf));
    arc_write(sc, 0x460,
        0x00000001);
    break;
   }
   wdone += rwlen;
  }
  if (rptr == ((void *)0))
   goto out;
  switch(sc->sc_adp_type) {
  case 0x00000001:
   while ((reg64 = arc_read(sc, 0x002c)) == 0)
    arc_wait(sc);
   arc_write(sc, 0x002c, reg64);
   write_ok = reg64 & (1<<0);
   read_ok = reg64 & (1<<1);
   break;
  case 0x00000003:
   while ((reg64 = arc_read(sc, 0x9C)) == 0)
    arc_wait(sc);
   arc_write(sc, 0xA0, reg64);
   write_ok = reg64 & 0x00000002;
   read_ok = reg64 & 0x00000004;
   break;
  case 0x00000004:
   while ((reg64 = arc_read(sc, 0x480)) == 0)
    arc_wait(sc);
   arc_write(sc, 0x480, reg64);
   write_ok = reg64 & 0x00000001;
   read_ok = reg64 & 0x00000002;
   break;
  }
  ;
  if ((write_ok) && rdone < rlen) {
   switch(sc->sc_adp_type) {
   case 0x00000001:
    rwlen = arc_read(sc, 0x0f00);
    break;
   case 0x00000003:
    rwlen = arc_read(sc, 0x2100);
    break;
   case 0x00000004:
    rwlen = arc_read(sc, 0x2100);
    break;
   }
   if (rwlen > sizeof(rwbuf)) {
    ;
    error = 5;
    goto out;
   }
   switch(sc->sc_adp_type) {
   case 0x00000001:
    arc_read_region(sc, 0x0f04, rwbuf,
        sizeof(rwbuf));
    arc_write(sc, 0x0020,
        (1<<1));
    break;
   case 0x00000003:
    arc_read_region(sc, 0x2104, rwbuf,
        sizeof(rwbuf));
    arc_write(sc, 0x20,
        0x00000004);
    break;
   case 0x00000004:
    arc_read_region(sc, 0x2104, rwbuf,
        sizeof(rwbuf));
    arc_write(sc, 0x460,
        0x00000002);
    break;
   }
   if ((rlen > 3) && (rdone == 3)) {
    rlen = *(u_int16_t *)rwbuf;
    rlen = sizeof(struct arc_fw_bufhdr) + rlen + 1;
   }
   if ((rdone + rwlen) > rlen) {
    ;
    error = 5;
    goto out;
   }
   __builtin_bcopy((rwbuf), (&rbuf[rdone]), (rwlen));
   rdone += rwlen;
   if (sreadok && rdone >= sizeof(struct arc_fw_bufhdr) &&
       rlenhdr == 0) {
    bufhdr = (struct arc_fw_bufhdr *)rbuf;
    rlenhdr = (__uint16_t)(__builtin_constant_p(bufhdr->len) ? (__uint16_t)(((__uint16_t)(bufhdr->len) & 0xffU) << 8 | ((__uint16_t)(bufhdr->len) & 0xff00U) >> 8) : __swap16md(bufhdr->len));
    if (rlenhdr < rbuflen) {
     rbuflen = rlenhdr;
     rlen = sizeof(struct arc_fw_bufhdr) +
         rbuflen + 1;
    }
   }
  }
 } while (rdone != rlen);
 bufhdr = (struct arc_fw_bufhdr *)rbuf;
 if (__builtin_memcmp((&bufhdr->hdr), (&arc_fw_hdr), (sizeof(bufhdr->hdr))) != 0) {
  ;
  error = 5;
  goto out;
 }
 if (bufhdr->len != (__uint16_t)(__builtin_constant_p(rbuflen) ? (__uint16_t)(((__uint16_t)(rbuflen) & 0xffU) << 8 | ((__uint16_t)(rbuflen) & 0xff00U) >> 8) : __swap16md(rbuflen))) {
  ;
 }
 __builtin_bcopy((rbuf + sizeof(struct arc_fw_bufhdr)), (rptr), (bufhdr->len));
 cksum = arc_msg_cksum(rptr, bufhdr->len);
 if (rbuf[rlen - 1] != cksum) {
  ;
  error = 5;
  goto out;
 }
out:
 free(wbuf, 127, 0);
 free(rbuf, 127, 0);
 return (error);
}
void
arc_lock(struct arc_softc *sc)
{
 int s;
 u_int32_t int_mask;
 _rw_enter_write(&sc->sc_lock );
 s = _splraise(5);
 switch(sc->sc_adp_type) {
 case 0x00000001:
  int_mask = arc_read(sc, 0x0034) | (1<<2);
  arc_write(sc, 0x0034, int_mask);
  break;
 case 0x00000003:
  int_mask = arc_read(sc, 0x34) | (1<<2);
  arc_write(sc, 0x34, int_mask);
  break;
 case 0x00000004:
  int_mask = arc_read(sc, 0x20C) & ~0x00001000;
  arc_write(sc, 0x20C, int_mask);
  break;
 }
 sc->sc_talking = 1;
 _splx(s);
}
void
arc_unlock(struct arc_softc *sc)
{
 int s;
 u_int32_t int_mask;
 s = _splraise(5);
 sc->sc_talking = 0;
 switch(sc->sc_adp_type) {
 case 0x00000001:
  int_mask = arc_read(sc, 0x0034) & ~(1<<2);
  arc_write(sc, 0x0034, int_mask);
  break;
 case 0x00000003:
  int_mask = arc_read(sc, 0x34) & ~(1<<2);
  arc_write(sc, 0x34, int_mask);
  break;
 case 0x00000004:
  int_mask = arc_read(sc, 0x20C) | 0x00001000;
  arc_write(sc, 0x20C, int_mask);
  break;
 }
 _splx(s);
 _rw_exit_write(&sc->sc_lock );
}
void
arc_wait(struct arc_softc *sc)
{
 int s;
 u_int32_t int_mask;
 s = _splraise(5);
 switch(sc->sc_adp_type) {
 case 0x00000001:
  int_mask = arc_read(sc, 0x0034) & ~(1<<2);
  arc_write(sc, 0x0034, int_mask);
  if (tsleep(sc, 32, "arcdb", hz) == 35) {
   int_mask = arc_read(sc, 0x0034) | (1<<2);
   arc_write(sc, 0x0034, int_mask);
  }
  break;
 case 0x00000003:
  int_mask = arc_read(sc, 0x34) & ~(1<<2);
  arc_write(sc, 0x34, int_mask);
  if (tsleep(sc, 32, "arcdb", hz) == 35) {
   int_mask = arc_read(sc, 0x34) | (1<<2);
   arc_write(sc, 0x34, int_mask);
  }
  break;
 case 0x00000004:
  int_mask = arc_read(sc, 0x20C) | 0x00001000;
  arc_write(sc, 0x20C, int_mask);
  if (tsleep(sc, 32, "arcdb", hz) == 35) {
   int_mask = arc_read(sc, 0x20C) & ~0x00001000;
   arc_write(sc, 0x20C, int_mask);
  }
  break;
 }
 _splx(s);
}
void
arc_create_sensors(void *xat)
{
 struct arc_task *at = xat;
 struct arc_softc *sc = at->sc;
 struct bioc_inq bi;
 struct bioc_vol bv;
 int i;
 free(at, 127, sizeof(*at));
 ;
 tsleep(sc, 32, "arcspew", 2 * hz);
 __builtin_bzero((&bi), (sizeof(bi)));
 if (arc_bio_inq(sc, &bi) != 0) {
  printf("%s: unable to query firmware for sensor info\n",
      ((sc)->sc_dev.dv_xname));
  return;
 }
 sc->sc_nsensors = bi.bi_novol;
 sc->sc_sensors = mallocarray(sc->sc_nsensors, sizeof(struct ksensor),
     2, 0x0001 | 0x0008);
 strlcpy(sc->sc_sensordev.xname, ((sc)->sc_dev.dv_xname),
     sizeof(sc->sc_sensordev.xname));
 for (i = 0; i < sc->sc_nsensors; i++) {
  __builtin_bzero((&bv), (sizeof(bv)));
  bv.bv_volid = i;
  if (arc_bio_vol(sc, &bv) != 0) {
   ;
   goto bad;
  }
  sc->sc_sensors[i].type = SENSOR_DRIVE;
  sc->sc_sensors[i].status = SENSOR_S_UNKNOWN;
  strlcpy(sc->sc_sensors[i].desc, bv.bv_dev,
      sizeof(sc->sc_sensors[i].desc));
  sensor_attach(&sc->sc_sensordev, &sc->sc_sensors[i]);
 }
 if (sensor_task_register(sc, arc_refresh_sensors, 120) == ((void *)0)) {
  ;
  goto bad;
 }
 sensordev_install(&sc->sc_sensordev);
 return;
bad:
 free(sc->sc_sensors, 2,
     sc->sc_nsensors * sizeof(struct ksensor));
}
void
arc_refresh_sensors(void *arg)
{
 struct arc_softc *sc = arg;
 struct bioc_vol bv;
 int i;
 for (i = 0; i < sc->sc_nsensors; i++) {
  __builtin_bzero((&bv), (sizeof(bv)));
  bv.bv_volid = i;
  if (arc_bio_vol(sc, &bv)) {
   sc->sc_sensors[i].flags = 0x0001;
   return;
  }
  switch(bv.bv_status) {
  case 0x01:
   sc->sc_sensors[i].value = 9;
   sc->sc_sensors[i].status = SENSOR_S_CRIT;
   break;
  case 0x02:
   sc->sc_sensors[i].value = 10;
   sc->sc_sensors[i].status = SENSOR_S_WARN;
   break;
  case 0x04:
  case 0x00:
   sc->sc_sensors[i].value = 4;
   sc->sc_sensors[i].status = SENSOR_S_OK;
   break;
  case 0xff:
  default:
   sc->sc_sensors[i].value = 0;
   sc->sc_sensors[i].status = SENSOR_S_UNKNOWN;
  }
 }
}
u_int32_t
arc_read(struct arc_softc *sc, bus_size_t r)
{
 u_int32_t v;
 bus_space_barrier(sc->sc_iot, sc->sc_ioh, r, 4,
     0x01);
 v = bus_space_read_4(sc->sc_iot, sc->sc_ioh, r);
 ;
 return (v);
}
void
arc_read_region(struct arc_softc *sc, bus_size_t r, void *buf, size_t len)
{
 bus_space_barrier(sc->sc_iot, sc->sc_ioh, r, len,
     0x01);
 bus_space_read_raw_region_4(sc->sc_iot, sc->sc_ioh, r, buf, len);
}
void
arc_write(struct arc_softc *sc, bus_size_t r, u_int32_t v)
{
 ;
 bus_space_write_4(sc->sc_iot, sc->sc_ioh, r, v);
 bus_space_barrier(sc->sc_iot, sc->sc_ioh, r, 4,
     0x02);
}
void
arc_write_region(struct arc_softc *sc, bus_size_t r, void *buf, size_t len)
{
 bus_space_write_raw_region_4(sc->sc_iot, sc->sc_ioh, r, buf, len);
 bus_space_barrier(sc->sc_iot, sc->sc_ioh, r, len,
     0x02);
}
int
arc_wait_eq(struct arc_softc *sc, bus_size_t r, u_int32_t mask,
    u_int32_t target)
{
 int i;
 ;
 for (i = 0; i < 10000; i++) {
  if ((arc_read(sc, r) & mask) == target)
   return (0);
  delay(1000);
 }
 return (1);
}
int
arc_wait_ne(struct arc_softc *sc, bus_size_t r, u_int32_t mask,
    u_int32_t target)
{
 int i;
 ;
 for (i = 0; i < 10000; i++) {
  if ((arc_read(sc, r) & mask) != target)
   return (0);
  delay(1000);
 }
 return (1);
}
int
arc_msg0(struct arc_softc *sc, u_int32_t m)
{
 switch(sc->sc_adp_type) {
  case 0x00000001:
  arc_write(sc, 0x0010, m);
  if (arc_wait_eq(sc, 0x0030, (1<<0),
      (1<<0)) != 0)
   return (1);
  arc_write(sc, 0x0030, (1<<0));
  break;
  case 0x00000003:
  arc_write(sc, 0xB0, m);
  arc_write(sc, 0x20, 0x08);
  if (arc_wait_eq(sc, 0x9C, 0x08,
      0x08) != 0)
   return (1);
  arc_write(sc, 0xA0, 0x08);
  break;
  case 0x00000004:
  arc_write(sc, 0x400, m);
  if (arc_wait_eq(sc, 0x480, 0x2000000,
      0x2000000) != 0)
   return (1);
  arc_write(sc, 0x480, 0x2000000);
  break;
 }
 return (0);
}
struct arc_dmamem *
arc_dmamem_alloc(struct arc_softc *sc, size_t size)
{
 struct arc_dmamem *adm;
 int nsegs;
 adm = malloc(sizeof(*adm), 2, 0x0002 | 0x0008);
 if (adm == ((void *)0))
  return (((void *)0));
 adm->adm_size = size;
 if (bus_dmamap_create(sc->sc_dmat, size, 1, size, 0,
     0x0001 | 0x0002, &adm->adm_map) != 0)
  goto admfree;
 if (bus_dmamem_alloc(sc->sc_dmat, size, (1 << 13), 0, &adm->adm_seg,
     1, &nsegs, 0x0001 | 0x0800) != 0)
  goto destroy;
 if (bus_dmamem_map(sc->sc_dmat, &adm->adm_seg, nsegs, size,
     &adm->adm_kva, 0x0001) != 0)
  goto free;
 if (bus_dmamap_load(sc->sc_dmat, adm->adm_map, adm->adm_kva, size,
     ((void *)0), 0x0001) != 0)
  goto unmap;
 return (adm);
unmap:
 bus_dmamem_unmap(sc->sc_dmat, adm->adm_kva, size);
free:
 bus_dmamem_free(sc->sc_dmat, &adm->adm_seg, 1);
destroy:
 bus_dmamap_destroy(sc->sc_dmat, adm->adm_map);
admfree:
 free(adm, 2, sizeof *adm);
 return (((void *)0));
}
void
arc_dmamem_free(struct arc_softc *sc, struct arc_dmamem *adm)
{
 bus_dmamap_unload(sc->sc_dmat, adm->adm_map);
 bus_dmamem_unmap(sc->sc_dmat, adm->adm_kva, adm->adm_size);
 bus_dmamem_free(sc->sc_dmat, &adm->adm_seg, 1);
 bus_dmamap_destroy(sc->sc_dmat, adm->adm_map);
 free(adm, 2, sizeof *adm);
}
int
arc_alloc_ccbs(struct arc_softc *sc)
{
 struct arc_ccb *ccb;
 u_int8_t *cmd;
 u_int32_t i, size, len;
 { ((&sc->sc_ccb_free)->slh_first) = ((void *)0); };
 do { (void)(((void *)0)); (void)(0); __mtx_init((&sc->sc_ccb_mtx), ((((5)) > 0 && ((5)) < 12) ? 12 : ((5)))); } while (0);
 size = sizeof(struct arc_ccb) * 264;
 sc->sc_ccbs = malloc(size, 2, 0x0001 | 0x0008);
 len = 512+32;
 size = 264 * len;
 if(sc->sc_adp_type == 0x00000004)
  size += sizeof(struct arc_HBD_Msgu);
 sc->sc_requests = arc_dmamem_alloc(sc, size);
 if (sc->sc_requests == ((void *)0)) {
  printf("%s: unable to allocate ccb dmamem\n", ((sc)->sc_dev.dv_xname));
  goto free_ccbs;
 }
 cmd = ((void *)(sc->sc_requests)->adm_kva);
 for (i = 0; i < 264; i++) {
  ccb = &sc->sc_ccbs[i];
  if (bus_dmamap_create(sc->sc_dmat, (64 * 1024), 38,
      (64 * 1024), 0, 0, &ccb->ccb_dmamap) != 0) {
   printf("%s: unable to create dmamap for ccb %d\n",
       ((sc)->sc_dev.dv_xname), i);
   goto free_maps;
  }
  ccb->ccb_sc = sc;
  ccb->cmd_dma_offset = len * i;
  ccb->ccb_cmd = (struct arc_io_cmd *)&cmd[ccb->cmd_dma_offset];
  ccb->ccb_cmd_post = (((sc->sc_requests)->adm_map->dm_segs[0].ds_addr) +
      ccb->cmd_dma_offset);
  if ((sc->sc_adp_type != 0x00000003) &&
      (sc->sc_adp_type != 0x00000004))
   ccb->ccb_cmd_post = ccb->ccb_cmd_post >>
    5;
  arc_put_ccb(sc, ccb);
 }
 sc->sc_ccb_phys_hi = (u_int64_t)((sc->sc_requests)->adm_map->dm_segs[0].ds_addr) >> 32;
 if(sc->sc_adp_type == 0x00000004) {
  sc->postQ_buffer = ((sc->sc_requests)->adm_map->dm_segs[0].ds_addr) +
      (264 * len);
  sc->doneQ_buffer = sc->postQ_buffer + (sizeof(struct InBound_SRB) *
      256);
  sc->pmu = (struct arc_HBD_Msgu *)&cmd[264 * len];
  sc->cmdQ_ptr_offset = 264 * len;
 }
 scsi_iopool_init(&sc->sc_iopool, sc,
     (void *(*)(void *))arc_get_ccb,
     (void (*)(void *, void *))arc_put_ccb);
 return (0);
free_maps:
 while ((ccb = arc_get_ccb(sc)) != ((void *)0))
     bus_dmamap_destroy(sc->sc_dmat, ccb->ccb_dmamap);
 arc_dmamem_free(sc, sc->sc_requests);
free_ccbs:
 free(sc->sc_ccbs, 2, sizeof(struct arc_ccb) * 264);
 return (1);
}
void
arc_free_ccb_src(struct arc_softc *sc)
{
 struct arc_ccb *ccb;
 while ((ccb = arc_get_ccb(sc)) != ((void *)0))
     bus_dmamap_destroy(sc->sc_dmat, ccb->ccb_dmamap);
 arc_dmamem_free(sc, sc->sc_requests);
 free(sc->sc_ccbs, 2, 0);
}
struct arc_ccb *
arc_get_ccb(struct arc_softc *sc)
{
 struct arc_ccb *ccb;
 __mtx_enter(&sc->sc_ccb_mtx );
 ccb = ((&sc->sc_ccb_free)->slh_first);
 if (ccb != ((void *)0))
  do { (&sc->sc_ccb_free)->slh_first = (&sc->sc_ccb_free)->slh_first->ccb_link.sle_next; } while (0);
 __mtx_leave(&sc->sc_ccb_mtx );
 return (ccb);
}
void
arc_put_ccb(struct arc_softc *sc, struct arc_ccb *ccb)
{
 ccb->ccb_xs = ((void *)0);
 __builtin_bzero((ccb->ccb_cmd), (512+32));
 __mtx_enter(&sc->sc_ccb_mtx );
 do { (ccb)->ccb_link.sle_next = (&sc->sc_ccb_free)->slh_first; (&sc->sc_ccb_free)->slh_first = (ccb); } while (0);
 __mtx_leave(&sc->sc_ccb_mtx );
}
