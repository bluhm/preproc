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
struct flock {
 off_t l_start;
 off_t l_len;
 pid_t l_pid;
 short l_type;
 short l_whence;
};
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
typedef struct pollfd {
 int fd;
 short events;
 short revents;
} pollfd_t;
typedef unsigned int nfds_t;
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
struct audio_swpar {
 unsigned int sig;
 unsigned int le;
 unsigned int bits;
 unsigned int bps;
 unsigned int msb;
 unsigned int rate;
 unsigned int pchan;
 unsigned int rchan;
 unsigned int nblks;
 unsigned int round;
 unsigned int _spare[6];
};
struct audio_status {
 int mode;
 int pause;
 int active;
 int _spare[5];
};
typedef struct audio_device {
 char name[16];
 char version[16];
 char config[16];
} audio_device_t;
struct audio_pos {
 unsigned int play_pos;
 unsigned int play_xrun;
 unsigned int rec_pos;
 unsigned int rec_xrun;
};
typedef struct mixer_level {
 int num_channels;
 u_char level[8];
} mixer_level_t;
typedef struct audio_mixer_name {
 char name[16];
 int msg_id;
} audio_mixer_name_t;
typedef struct mixer_devinfo {
 int index;
 audio_mixer_name_t label;
 int type;
 int mixer_class;
 int next, prev;
 union {
  struct audio_mixer_enum {
   int num_mem;
   struct {
    audio_mixer_name_t label;
    int ord;
   } member[32];
  } e;
  struct audio_mixer_set {
   int num_mem;
   struct {
    audio_mixer_name_t label;
    int mask;
   } member[32];
  } s;
  struct audio_mixer_value {
   audio_mixer_name_t units;
   int num_channels;
   int delta;
  } v;
 } un;
} mixer_devinfo_t;
typedef struct mixer_ctrl {
 int dev;
 int type;
 union {
  int ord;
  int mask;
  mixer_level_t value;
 } un;
} mixer_ctrl_t;
struct mixer_devinfo;
struct mixer_ctrl;
struct audio_params {
 u_long sample_rate;
 u_int encoding;
 u_int precision;
 u_int bps;
 u_int msb;
 u_int channels;
};
struct audio_hw_if {
 int (*open)(void *, int);
 void (*close)(void *);
 int (*set_params)(void *, int, int, struct audio_params *,
      struct audio_params *);
 int (*round_blocksize)(void *, int);
 int (*commit_settings)(void *);
 int (*init_output)(void *, void *, int);
 int (*init_input)(void *, void *, int);
 int (*start_output)(void *, void *, int, void (*)(void *), void *);
 int (*start_input)(void *, void *, int, void (*)(void *), void *);
 int (*halt_output)(void *);
 int (*halt_input)(void *);
 int (*speaker_ctl)(void *, int);
 int (*setfd)(void *, int);
 int (*set_port)(void *, struct mixer_ctrl *);
 int (*get_port)(void *, struct mixer_ctrl *);
 int (*query_devinfo)(void *, struct mixer_devinfo *);
 void *(*allocm)(void *, int, size_t, int, int);
 void (*freem)(void *, void *, int);
 size_t (*round_buffersize)(void *, int, size_t);
 int (*get_props)(void *);
 int (*trigger_output)(void *, void *, void *, int,
      void (*)(void *), void *, struct audio_params *);
 int (*trigger_input)(void *, void *, void *, int,
      void (*)(void *), void *, struct audio_params *);
};
struct audio_attach_args {
 int type;
 void *hwif;
 void *hdl;
};
struct device *audio_attach_mi(struct audio_hw_if *, void *, struct device *);
int audioprint(void *, const char *);
extern struct mutex audio_lock;
void mulaw_to_slinear8(u_char *, int);
void slinear8_to_mulaw(u_char *, int);
void mulaw24_to_slinear24(u_char *, int);
void slinear24_to_mulaw24(u_char *, int);
struct audio_buf {
 unsigned char *data;
 size_t datalen;
 size_t len;
 size_t start;
 size_t used;
 size_t blksz;
 struct selinfo sel;
 unsigned int pos;
 unsigned int xrun;
 int blocking;
};
struct wskbd_vol
{
 int val;
 int mute;
 int step;
 int nch;
 int val_pending;
 int mute_pending;
};
struct audio_softc {
 struct device dev;
 struct audio_hw_if *ops;
 void *arg;
 int mode;
 int quiesce;
 struct audio_buf play, rec;
 unsigned int sw_enc;
 unsigned int hw_enc;
 unsigned int bits;
 unsigned int bps;
 unsigned int msb;
 unsigned int rate;
 unsigned int round;
 unsigned int nblks;
 unsigned int pchan, rchan;
 unsigned char silence[4];
 int pause;
 int active;
 int offs;
 void (*conv_enc)(unsigned char *, int);
 void (*conv_dec)(unsigned char *, int);
 struct wskbd_vol spkr, mic;
 struct task wskbd_task;
 int wskbd_taskset;
};
int audio_match(struct device *, void *, void *);
void audio_attach(struct device *, struct device *, void *);
int audio_activate(struct device *, int);
int audio_detach(struct device *, int);
void audio_pintr(void *);
void audio_rintr(void *);
void wskbd_mixer_init(struct audio_softc *);
const struct cfattach audio_ca = {
 sizeof(struct audio_softc), audio_match, audio_attach,
 audio_detach, audio_activate
};
struct cfdriver audio_cd = {
 ((void *)0), "audio", DV_DULL
};
struct mutex audio_lock = { ((void *)0), ((((8)) > 0 && ((8)) < 12) ? 12 : ((8))), 0 };
unsigned int
audio_gcd(unsigned int a, unsigned int b)
{
 unsigned int r;
 while (b > 0) {
  r = a % b;
  a = b;
  b = r;
 }
 return a;
}
int
audio_buf_init(struct audio_softc *sc, struct audio_buf *buf, int dir)
{
 if (sc->ops->round_buffersize) {
  buf->datalen = sc->ops->round_buffersize(sc->arg,
      dir, 65536);
 } else
  buf->datalen = 65536;
 if (sc->ops->allocm) {
  buf->data = sc->ops->allocm(sc->arg, dir, buf->datalen,
      2, 0x0001);
 } else
  buf->data = malloc(buf->datalen, 2, 0x0001);
 if (buf->data == ((void *)0))
  return 12;
 return 0;
}
void
audio_buf_done(struct audio_softc *sc, struct audio_buf *buf)
{
 if (sc->ops->freem)
  sc->ops->freem(sc->arg, buf->data, 2);
 else
  free(buf->data, 2, buf->datalen);
}
unsigned char *
audio_buf_rgetblk(struct audio_buf *buf, size_t *rsize)
{
 size_t count;
 count = buf->len - buf->start;
 if (count > buf->used)
  count = buf->used;
 *rsize = count;
 return buf->data + buf->start;
}
void
audio_buf_rdiscard(struct audio_buf *buf, size_t count)
{
 buf->used -= count;
 buf->start += count;
 if (buf->start >= buf->len)
  buf->start -= buf->len;
}
void
audio_buf_wcommit(struct audio_buf *buf, size_t count)
{
 buf->used += count;
}
unsigned char *
audio_buf_wgetblk(struct audio_buf *buf, size_t *rsize)
{
 size_t end, avail, count;
 end = buf->start + buf->used;
 if (end >= buf->len)
  end -= buf->len;
 avail = buf->len - buf->used;
 count = buf->len - end;
 if (count > avail)
  count = avail;
 *rsize = count;
 return buf->data + end;
}
void
audio_calc_sil(struct audio_softc *sc)
{
 unsigned char *q;
 unsigned int s, i;
 int d, e;
 e = sc->sw_enc;
 if (e == 7 || e == 9) {
  d = -1;
  q = sc->silence + sc->bps - 1;
 } else {
  d = 1;
  q = sc->silence;
 }
 if (e == 6 || e == 7) {
  s = 0;
 } else {
  s = 0x80000000;
  if (sc->msb)
   s >>= 32 - 8 * sc->bps;
  else
   s >>= 32 - sc->bits;
 }
 for (i = 0; i < sc->bps; i++) {
  *q = s;
  q += d;
  s >>= 8;
 }
 if (sc->conv_enc)
  sc->conv_enc(sc->silence, sc->bps);
}
void
audio_fill_sil(struct audio_softc *sc, unsigned char *ptr, size_t count)
{
 unsigned char *q, *p;
 size_t i, j;
 q = ptr;
 for (j = count / sc->bps; j > 0; j--) {
  p = sc->silence;
  for (i = sc->bps; i > 0; i--)
   *q++ = *p++;
 }
}
void
audio_clear(struct audio_softc *sc)
{
 if (sc->mode & 0x01) {
  sc->play.used = sc->play.start = 0;
  sc->play.pos = sc->play.xrun = 0;
  audio_fill_sil(sc, sc->play.data, sc->play.len);
 }
 if (sc->mode & 0x02) {
  sc->rec.used = sc->rec.start = 0;
  sc->rec.pos = sc->rec.xrun = 0;
  audio_fill_sil(sc, sc->rec.data, sc->rec.len);
 }
}
void
audio_pintr(void *addr)
{
 struct audio_softc *sc = addr;
 unsigned char *ptr;
 size_t count;
 int error, nblk, todo;
 do { if ((&audio_lock)->mtx_owner != (__curcpu->ci_self)) panic("mutex %p not held in %s", (&audio_lock), __func__); } while (0);
 if (!(sc->mode & 0x01) || !sc->active) {
  printf("%s: play interrupt but not playing\n", ((sc)->dev.dv_xname));
  return;
 }
 if (sc->quiesce) {
  do {} while(0);
  return;
 }
 if (sc->mode & 0x02) {
  sc->offs--;
  nblk = sc->rec.len / sc->rec.blksz;
  todo = -sc->offs;
  if (todo >= nblk) {
   todo -= todo % nblk;
   do {} while(0);
   while (todo-- > 0)
    audio_rintr(sc);
  }
 }
 sc->play.pos += sc->play.blksz;
 audio_fill_sil(sc, sc->play.data + sc->play.start, sc->play.blksz);
 audio_buf_rdiscard(&sc->play, sc->play.blksz);
 if (sc->play.used < sc->play.blksz) {
  do {} while(0);
  sc->play.xrun += sc->play.blksz;
  audio_buf_wcommit(&sc->play, sc->play.blksz);
 }
 do {} while(0);
 if (!sc->ops->trigger_output) {
  ptr = audio_buf_rgetblk(&sc->play, &count);
  error = sc->ops->start_output(sc->arg,
      ptr, sc->play.blksz, audio_pintr, (void *)sc);
  if (error) {
   printf("%s: play restart failed: %d\n",
       ((sc)->dev.dv_xname), error);
  }
 }
 if (sc->play.used < sc->play.len) {
  do {} while(0);
  if (sc->play.blocking) {
   wakeup(&sc->play.blocking);
   sc->play.blocking = 0;
  }
  selwakeup(&sc->play.sel);
 }
}
void
audio_rintr(void *addr)
{
 struct audio_softc *sc = addr;
 unsigned char *ptr;
 size_t count;
 int error, nblk, todo;
 do { if ((&audio_lock)->mtx_owner != (__curcpu->ci_self)) panic("mutex %p not held in %s", (&audio_lock), __func__); } while (0);
 if (!(sc->mode & 0x02) || !sc->active) {
  printf("%s: rec interrupt but not recording\n", ((sc)->dev.dv_xname));
  return;
 }
 if (sc->quiesce) {
  do {} while(0);
  return;
 }
 if (sc->mode & 0x01) {
  sc->offs++;
  nblk = sc->play.len / sc->play.blksz;
  todo = sc->offs;
  if (todo >= nblk) {
   todo -= todo % nblk;
   do {} while(0);
   while (todo-- > 0)
    audio_pintr(sc);
  }
 }
 sc->rec.pos += sc->rec.blksz;
 audio_buf_wcommit(&sc->rec, sc->rec.blksz);
 if (sc->rec.used == sc->rec.len) {
  do {} while(0);
  sc->rec.xrun += sc->rec.blksz;
  audio_buf_rdiscard(&sc->rec, sc->rec.blksz);
 }
 do {} while(0);
 if (!sc->ops->trigger_input) {
  ptr = audio_buf_wgetblk(&sc->rec, &count);
  error = sc->ops->start_input(sc->arg,
      ptr, sc->rec.blksz, audio_rintr, (void *)sc);
  if (error) {
   printf("%s: rec restart failed: %d\n",
       ((sc)->dev.dv_xname), error);
  }
 }
 if (sc->rec.used > 0) {
  do {} while(0);
  if (sc->rec.blocking) {
   wakeup(&sc->rec.blocking);
   sc->rec.blocking = 0;
  }
  selwakeup(&sc->rec.sel);
 }
}
int
audio_start_do(struct audio_softc *sc)
{
 int error;
 struct audio_params p;
 unsigned char *ptr;
 size_t count;
 do {} while(0);
 error = 0;
 sc->offs = 0;
 if (sc->mode & 0x01) {
  if (sc->ops->trigger_output) {
   p.encoding = sc->hw_enc;
   p.precision = sc->bits;
   p.bps = sc->bps;
   p.msb = sc->msb;
   p.sample_rate = sc->rate;
   p.channels = sc->pchan;
   error = sc->ops->trigger_output(sc->arg,
       sc->play.data,
       sc->play.data + sc->play.len,
       sc->play.blksz,
       audio_pintr, (void *)sc, &p);
  } else {
   __mtx_enter(&audio_lock );
   ptr = audio_buf_rgetblk(&sc->play, &count);
   error = sc->ops->start_output(sc->arg,
       ptr, sc->play.blksz, audio_pintr, (void *)sc);
   __mtx_leave(&audio_lock );
  }
  if (error)
   printf("%s: failed to start playback\n", ((sc)->dev.dv_xname));
 }
 if (sc->mode & 0x02) {
  if (sc->ops->trigger_input) {
   p.encoding = sc->hw_enc;
   p.precision = sc->bits;
   p.bps = sc->bps;
   p.msb = sc->msb;
   p.sample_rate = sc->rate;
   p.channels = sc->rchan;
   error = sc->ops->trigger_input(sc->arg,
       sc->rec.data,
       sc->rec.data + sc->rec.len,
       sc->rec.blksz,
       audio_rintr, (void *)sc, &p);
  } else {
   __mtx_enter(&audio_lock );
   ptr = audio_buf_wgetblk(&sc->rec, &count);
   error = sc->ops->start_input(sc->arg,
       ptr, sc->rec.blksz, audio_rintr, (void *)sc);
   __mtx_leave(&audio_lock );
  }
  if (error)
   printf("%s: failed to start recording\n", ((sc)->dev.dv_xname));
 }
 return error;
}
int
audio_stop_do(struct audio_softc *sc)
{
 if (sc->mode & 0x01)
  sc->ops->halt_output(sc->arg);
 if (sc->mode & 0x02)
  sc->ops->halt_input(sc->arg);
 do {} while(0);
 return 0;
}
int
audio_start(struct audio_softc *sc)
{
 sc->active = 1;
 sc->play.xrun = sc->play.pos = sc->rec.xrun = sc->rec.pos = 0;
 return audio_start_do(sc);
}
int
audio_stop(struct audio_softc *sc)
{
 int error;
 error = audio_stop_do(sc);
 if (error)
  return error;
 audio_clear(sc);
 sc->active = 0;
 return 0;
}
int
audio_canstart(struct audio_softc *sc)
{
 if (sc->active || sc->pause)
  return 0;
 if ((sc->mode & 0x02) && sc->rec.used != 0)
  return 0;
 if ((sc->mode & 0x01) && sc->play.used != sc->play.len)
  return 0;
 return 1;
}
int
audio_setpar(struct audio_softc *sc)
{
 struct audio_params p, r;
 unsigned int nr, np, max, min, mult;
 unsigned int blk_mult, blk_max;
 int error;
 do {} while(0);
 if (sc->mode & 0x01) {
  if (sc->pchan < 1)
   sc->pchan = 1;
  else if (sc->pchan > 64)
   sc->pchan = 64;
 }
 if (sc->mode & 0x02) {
  if (sc->rchan < 1)
   sc->rchan = 1;
  else if (sc->rchan > 64)
   sc->rchan = 64;
 }
 switch (sc->sw_enc) {
 case 1:
 case 2:
 case 6:
 case 7:
 case 8:
 case 9:
  break;
 default:
  sc->sw_enc = 6;
 }
 if (sc->bits < 8)
  sc->bits = 8;
 else if (sc->bits > 32)
  sc->bits = 32;
 if (sc->bps < 1)
  sc->bps = 1;
 else if (sc->bps > 4)
  sc->bps = 4;
 if (sc->rate < 4000)
  sc->rate = 4000;
 else if (sc->rate > 192000)
  sc->rate = 192000;
 p.encoding = r.encoding = sc->sw_enc;
 p.precision = r.precision = sc->bits;
 p.bps = r.bps = sc->bps;
 p.msb = r.msb = sc->msb;
 p.sample_rate = r.sample_rate = sc->rate;
 p.channels = sc->pchan;
 r.channels = sc->rchan;
 error = sc->ops->set_params(sc->arg, sc->mode, sc->mode, &p, &r);
 if (error)
  return error;
 if (sc->mode == (0x01 | 0x02)) {
  if (p.encoding != r.encoding ||
      p.precision != r.precision ||
      p.bps != r.bps ||
      p.msb != r.msb ||
      p.sample_rate != r.sample_rate) {
   printf("%s: different play and record parameters "
       "returned by hardware\n", ((sc)->dev.dv_xname));
   return 19;
  }
 }
 if (sc->mode & 0x01) {
  sc->hw_enc = p.encoding;
  sc->bits = p.precision;
  sc->bps = p.bps;
  sc->msb = p.msb;
  sc->rate = p.sample_rate;
  sc->pchan = p.channels;
 }
 if (sc->mode & 0x02) {
  sc->hw_enc = r.encoding;
  sc->bits = r.precision;
  sc->bps = r.bps;
  sc->msb = r.msb;
  sc->rate = r.sample_rate;
  sc->rchan = r.channels;
 }
 if (sc->rate == 0 || sc->bps == 0 || sc->bits == 0) {
  printf("%s: invalid parameters returned by hardware\n",
      ((sc)->dev.dv_xname));
  return 19;
 }
 if (sc->ops->commit_settings) {
  error = sc->ops->commit_settings(sc->arg);
  if (error)
   return error;
 }
 switch (sc->hw_enc) {
 case 6:
 case 7:
 case 8:
 case 9:
  sc->sw_enc = sc->hw_enc;
  sc->conv_dec = sc->conv_enc = ((void *)0);
  break;
 case 1:
  sc->sw_enc = 7;
  if (sc->bits == 8) {
   sc->conv_enc = slinear8_to_mulaw;
   sc->conv_dec = mulaw_to_slinear8;
  } else if (sc->bits == 24) {
   sc->conv_enc = slinear24_to_mulaw24;
   sc->conv_dec = mulaw24_to_slinear24;
  } else {
   sc->sw_enc = sc->hw_enc;
   sc->conv_dec = sc->conv_enc = ((void *)0);
  }
  break;
 default:
  printf("%s: setpar: enc = %d, bits = %d: emulation skipped\n",
      ((sc)->dev.dv_xname), sc->hw_enc, sc->bits);
  sc->sw_enc = sc->hw_enc;
  sc->conv_dec = sc->conv_enc = ((void *)0);
 }
 audio_calc_sil(sc);
 if (sc->ops->round_blocksize) {
  blk_mult = sc->ops->round_blocksize(sc->arg, 1);
  if (blk_mult == 0) {
   printf("%s: 0x%x: bad block size multiplier\n",
       ((sc)->dev.dv_xname), blk_mult);
   return 19;
  }
 } else
  blk_mult = 1;
 do {} while(0);
 if (sc->mode & 0x01) {
  np = blk_mult / audio_gcd(sc->pchan * sc->bps, blk_mult);
  if (!(sc->mode & 0x02))
   nr = np;
  do {} while(0);
 }
 if (sc->mode & 0x02) {
  nr = blk_mult / audio_gcd(sc->rchan * sc->bps, blk_mult);
  if (!(sc->mode & 0x01))
   np = nr;
  do {} while(0);
 }
 mult = nr * np / audio_gcd(nr, np);
 do {} while(0);
 if (sc->ops->round_blocksize)
  blk_max = sc->ops->round_blocksize(sc->arg, 65536);
 else
  blk_max = 65536;
 if ((sc->mode & 0x01) && blk_max > sc->play.datalen / 2)
  blk_max = sc->play.datalen / 2;
 if ((sc->mode & 0x02) && blk_max > sc->rec.datalen / 2)
  blk_max = sc->rec.datalen / 2;
 if (sc->mode & 0x01) {
  np = blk_max / (sc->pchan * sc->bps);
  if (!(sc->mode & 0x02))
   nr = np;
 }
 if (sc->mode & 0x02) {
  nr = blk_max / (sc->rchan * sc->bps);
  if (!(sc->mode & 0x01))
   np = nr;
 }
 max = np < nr ? np : nr;
 max -= max % mult;
 min = sc->rate / 1000 + mult - 1;
 min -= min % mult;
 do {} while(0);
 if (max < min) {
  printf("%s: %u: bad max frame number\n", ((sc)->dev.dv_xname), max);
  return 5;
 }
 sc->round += mult / 2;
 sc->round -= sc->round % mult;
 if (sc->round > max)
  sc->round = max;
 else if (sc->round < min)
  sc->round = min;
 if (sc->mode & 0x01) {
  sc->play.blksz = sc->round * sc->pchan * sc->bps;
  max = sc->play.datalen / sc->play.blksz;
  if (sc->nblks > max)
   sc->nblks = max;
  else if (sc->nblks < 2)
   sc->nblks = 2;
  sc->play.len = sc->nblks * sc->play.blksz;
  sc->nblks = sc->nblks;
 }
 if (sc->mode & 0x02) {
  sc->rec.blksz = sc->round * sc->rchan * sc->bps;
  sc->rec.len = sc->rec.datalen;
  sc->rec.len -= sc->rec.datalen % sc->rec.blksz;
 }
 do {} while(0);
 return 0;
}
int
audio_ioc_start(struct audio_softc *sc)
{
 if (!sc->pause) {
  do {} while(0);
  return 16;
 }
 if ((sc->mode & 0x01) && sc->play.used != sc->play.len) {
  do {} while(0);
  return 16;
 }
 if ((sc->mode & 0x02) && sc->rec.used != 0) {
  do {} while(0);
  return 16;
 }
 sc->pause = 0;
 return audio_start(sc);
}
int
audio_ioc_stop(struct audio_softc *sc)
{
 if (sc->pause) {
  do {} while(0);
  return 16;
 }
 sc->pause = 1;
 if (sc->active)
  return audio_stop(sc);
 return 0;
}
int
audio_ioc_getpar(struct audio_softc *sc, struct audio_swpar *p)
{
 p->rate = sc->rate;
 p->sig = sc->sw_enc == 6 ||
     sc->sw_enc == 7;
 p->le = sc->sw_enc == 6 ||
     sc->sw_enc == 8;
 p->bits = sc->bits;
 p->bps = sc->bps;
 p->msb = sc->msb;
 p->pchan = sc->pchan;
 p->rchan = sc->rchan;
 p->nblks = sc->nblks;
 p->round = sc->round;
 return 0;
}
int
audio_ioc_setpar(struct audio_softc *sc, struct audio_swpar *p)
{
 int error, le, sig;
 if (sc->active) {
  do {} while(0);
  return 16;
 }
 if (p->sig != ~0U || p->le != ~0U || p->bits != ~0U) {
  sig = 1;
  le = (4321 == 1234);
  sc->bits = 16;
  sc->bps = 2;
  sc->msb = 1;
  if (p->sig != ~0U)
   sig = p->sig;
  if (p->le != ~0U)
   le = p->le;
  if (p->bits != ~0U) {
   sc->bits = p->bits;
   sc->bps = sc->bits <= 8 ?
       1 : (sc->bits <= 16 ? 2 : 4);
   if (p->bps != ~0U)
    sc->bps = p->bps;
   if (p->msb != ~0U)
    sc->msb = p->msb ? 1 : 0;
  }
  sc->sw_enc = (sig) ?
      (le ? 6 :
   7) :
      (le ? 8 :
   9);
 }
 if (p->rate != ~0)
  sc->rate = p->rate;
 if (p->pchan != ~0)
  sc->pchan = p->pchan;
 if (p->rchan != ~0)
  sc->rchan = p->rchan;
 if (p->round != ~0)
  sc->round = p->round;
 if (p->nblks != ~0)
  sc->nblks = p->nblks;
 if (sc->mode == 0)
  return 0;
 error = audio_setpar(sc);
 if (error)
  return error;
 audio_clear(sc);
 if ((sc->mode & 0x01) && sc->ops->init_output) {
  error = sc->ops->init_output(sc->arg,
      sc->play.data, sc->play.len);
  if (error)
   return error;
 }
 if ((sc->mode & 0x02) && sc->ops->init_input) {
  error = sc->ops->init_input(sc->arg,
      sc->rec.data, sc->rec.len);
  if (error)
   return error;
 }
 return 0;
}
int
audio_ioc_getstatus(struct audio_softc *sc, struct audio_status *p)
{
 p->mode = sc->mode;
 p->pause = sc->pause;
 p->active = sc->active;
 return 0;
}
int
audio_match(struct device *parent, void *match, void *aux)
{
 struct audio_attach_args *sa = aux;
 return (sa->type == 0) ? 1 : 0;
}
void
audio_attach(struct device *parent, struct device *self, void *aux)
{
 struct audio_softc *sc = (void *)self;
 struct audio_attach_args *sa = aux;
 struct audio_hw_if *ops = sa->hwif;
 void *arg = sa->hdl;
 int error;
 printf("\n");
 if (ops == 0 ||
     ops->open == 0 ||
     ops->close == 0 ||
     ops->set_params == 0 ||
     (ops->start_output == 0 && ops->trigger_output == 0) ||
     (ops->start_input == 0 && ops->trigger_input == 0) ||
     ops->halt_output == 0 ||
     ops->halt_input == 0 ||
     ops->set_port == 0 ||
     ops->get_port == 0 ||
     ops->query_devinfo == 0 ||
     ops->get_props == 0) {
  printf("%s: missing method\n", ((sc)->dev.dv_xname));
  sc->ops = 0;
  return;
 }
 sc->ops = ops;
 sc->arg = arg;
 wskbd_mixer_init(sc);
 error = audio_buf_init(sc, &sc->play, 0x01);
 if (error) {
  sc->ops = 0;
  printf("%s: could not allocate play buffer\n", ((sc)->dev.dv_xname));
  return;
 }
 error = audio_buf_init(sc, &sc->rec, 0x02);
 if (error) {
  audio_buf_done(sc, &sc->play);
  sc->ops = 0;
  printf("%s: could not allocate record buffer\n", ((sc)->dev.dv_xname));
  return;
 }
 sc->sw_enc = 7;
 sc->bits = 16;
 sc->bps = 2;
 sc->msb = 1;
 sc->rate = 48000;
 sc->pchan = 2;
 sc->rchan = 2;
 sc->round = 960;
 sc->nblks = 2;
 sc->play.pos = sc->play.xrun = sc->rec.pos = sc->rec.xrun = 0;
}
int
audio_activate(struct device *self, int act)
{
 struct audio_softc *sc = (struct audio_softc *)self;
 switch (act) {
 case 2:
  __mtx_enter(&audio_lock );
  sc->quiesce = 1;
  __mtx_leave(&audio_lock );
  if (sc->mode != 0 && sc->active)
   audio_stop_do(sc);
  do {} while(0);
  break;
 case 5:
  do {} while(0);
  sc->quiesce = 0;
  wakeup(&sc->quiesce);
  if (sc->mode != 0) {
   if (audio_setpar(sc) != 0)
    break;
   if (sc->mode & 0x01) {
    sc->play.start = 0;
    audio_fill_sil(sc, sc->play.data, sc->play.len);
   }
   if (sc->mode & 0x02) {
    sc->rec.start = sc->rec.len - sc->rec.used;
    audio_fill_sil(sc, sc->rec.data, sc->rec.len);
   }
   if (sc->active)
    audio_start_do(sc);
  }
  break;
 }
 return 0;
}
int
audio_detach(struct device *self, int flags)
{
 struct audio_softc *sc = (struct audio_softc *)self;
 int maj, mn;
 do {} while(0);
 wakeup(&sc->quiesce);
 for (maj = 0; maj < nchrdev; maj++)
  if (cdevsw[maj].d_open == audioopen)
   break;
 mn = self->dv_unit;
 vdevgone(maj, mn | 0, mn | 0, VCHR);
 vdevgone(maj, mn | 0xc0, mn | 0xc0, VCHR);
 vdevgone(maj, mn | 0x10, mn | 0x10, VCHR);
 if (sc->mode != 0) {
  if (sc->active) {
   wakeup(&sc->play.blocking);
   selwakeup(&sc->play.sel);
   wakeup(&sc->rec.blocking);
   selwakeup(&sc->rec.sel);
   audio_stop(sc);
  }
  sc->ops->close(sc->arg);
  sc->mode = 0;
 }
 audio_buf_done(sc, &sc->play);
 audio_buf_done(sc, &sc->rec);
 return 0;
}
int
audio_submatch(struct device *parent, void *match, void *aux)
{
        struct cfdata *cf = match;
 return (cf->cf_driver == &audio_cd);
}
struct device *
audio_attach_mi(struct audio_hw_if *ops, void *arg, struct device *dev)
{
 struct audio_attach_args aa;
 aa.type = 0;
 aa.hwif = ops;
 aa.hdl = arg;
 return config_found_sm(dev, &aa, audioprint, audio_submatch);
}
int
audioprint(void *aux, const char *pnp)
{
 struct audio_attach_args *arg = aux;
 const char *type;
 if (pnp != ((void *)0)) {
  switch (arg->type) {
  case 0:
   type = "audio";
   break;
  case 2:
   type = "opl";
   break;
  case 3:
   type = "mpu";
   break;
  default:
   panic("audioprint: unknown type %d", arg->type);
  }
  printf("%s at %s", type, pnp);
 }
 return 1;
}
int
audio_open(struct audio_softc *sc, int flags)
{
 int error;
 int props;
 if (sc->mode)
  return 16;
 error = sc->ops->open(sc->arg, flags);
 if (error)
  return error;
 sc->active = 0;
 sc->pause = 1;
 sc->rec.blocking = 0;
 sc->play.blocking = 0;
 sc->mode = 0;
 if (flags & 0x0002)
  sc->mode |= 0x01;
 if (flags & 0x0001)
  sc->mode |= 0x02;
 props = sc->ops->get_props(sc->arg);
 if (sc->mode == (0x01 | 0x02)) {
  if (!(props & 0x01)) {
   error = 25;
   goto bad;
  }
  if (sc->ops->setfd) {
   error = sc->ops->setfd(sc->arg, 1);
   if (error)
    goto bad;
  }
 }
 if (sc->ops->speaker_ctl) {
  sc->ops->speaker_ctl(sc->arg,
      (sc->mode & 0x01) ? 1 : 0);
 }
 error = audio_setpar(sc);
 if (error)
  goto bad;
 audio_clear(sc);
 sc->pause = 0;
 return 0;
bad:
 sc->ops->close(sc->arg);
 sc->mode = 0;
 return error;
}
int
audio_drain(struct audio_softc *sc)
{
 int error, xrun;
 unsigned char *ptr;
 size_t count, bpf;
 do {} while(0);
 if (!(sc->mode & 0x01) || sc->pause)
  return 0;
 __mtx_enter(&audio_lock );
 bpf = sc->pchan * sc->bps;
 sc->play.used -= sc->play.used % bpf;
 if (sc->play.used == 0) {
  __mtx_leave(&audio_lock );
  return 0;
 }
 if (!sc->active) {
  for (;;) {
   ptr = audio_buf_wgetblk(&sc->play, &count);
   if (count == 0)
    break;
   audio_fill_sil(sc, ptr, count);
   audio_buf_wcommit(&sc->play, count);
  }
  __mtx_leave(&audio_lock );
  error = audio_start(sc);
  if (error)
   return error;
  __mtx_enter(&audio_lock );
 }
 xrun = sc->play.xrun;
 while (sc->play.xrun == xrun) {
  do {} while(0);
  sc->play.blocking = 1;
  error = msleep(&sc->play.blocking, &audio_lock,
      32 | 0x100, "au_dr", 5 * hz);
  if (!(sc->dev.dv_flags & 0x0001))
   error = 5;
  if (error) {
   do {} while(0);
   break;
  }
 }
 __mtx_leave(&audio_lock );
 return error;
}
int
audio_close(struct audio_softc *sc)
{
 audio_drain(sc);
 if (sc->active)
  audio_stop(sc);
 sc->ops->close(sc->arg);
 sc->mode = 0;
 do {} while(0);
 return 0;
}
int
audio_read(struct audio_softc *sc, struct uio *uio, int ioflag)
{
 unsigned char *ptr;
 size_t count;
 int error;
 do {} while(0);
 while (sc->quiesce)
  tsleep(&sc->quiesce, 0, "au_qrd", 0);
 if (audio_canstart(sc)) {
  error = audio_start(sc);
  if (error)
   return error;
 }
 __mtx_enter(&audio_lock );
 while (sc->rec.used == 0) {
  if (ioflag & 0x10) {
   __mtx_leave(&audio_lock );
   return 35;
  }
  do {} while(0);
  sc->rec.blocking = 1;
  error = msleep(&sc->rec.blocking,
      &audio_lock, 32 | 0x100, "au_rd", 0);
  if (!(sc->dev.dv_flags & 0x0001))
   error = 5;
  if (error) {
   do {} while(0);
   __mtx_leave(&audio_lock );
   return error;
  }
 }
 while (uio->uio_resid > 0 && sc->rec.used > 0) {
  ptr = audio_buf_rgetblk(&sc->rec, &count);
  if (count > uio->uio_resid)
   count = uio->uio_resid;
  audio_buf_rdiscard(&sc->rec, count);
  __mtx_leave(&audio_lock );
  do {} while(0);
  if (sc->conv_dec)
   sc->conv_dec(ptr, count);
  error = uiomove(ptr, count, uio);
  if (error)
   return error;
  __mtx_enter(&audio_lock );
 }
 __mtx_leave(&audio_lock );
 return 0;
}
int
audio_write(struct audio_softc *sc, struct uio *uio, int ioflag)
{
 unsigned char *ptr;
 size_t count;
 int error;
 do {} while(0);
 while (sc->quiesce)
  tsleep(&sc->quiesce, 0, "au_qwr", 0);
 __mtx_enter(&audio_lock );
 if (uio->uio_resid > 0 && (ioflag & 0x10)) {
  if (sc->play.used == sc->play.len) {
   __mtx_leave(&audio_lock );
   return 35;
  }
 }
 while (uio->uio_resid > 0) {
  while (1) {
   ptr = audio_buf_wgetblk(&sc->play, &count);
   if (count > 0)
    break;
   if (ioflag & 0x10) {
    __mtx_leave(&audio_lock );
    return 0;
   }
   do {} while(0);
   sc->play.blocking = 1;
   error = msleep(&sc->play.blocking,
       &audio_lock, 32 | 0x100, "au_wr", 0);
   if (!(sc->dev.dv_flags & 0x0001))
    error = 5;
   if (error) {
    do {} while(0);
    __mtx_leave(&audio_lock );
    return error;
   }
  }
  if (count > uio->uio_resid)
   count = uio->uio_resid;
  audio_buf_wcommit(&sc->play, count);
  __mtx_leave(&audio_lock );
  error = uiomove(ptr, count, uio);
  if (error)
   return 0;
  if (sc->conv_enc) {
   sc->conv_enc(ptr, count);
   do {} while(0);
  }
  if (audio_canstart(sc)) {
   error = audio_start(sc);
   if (error)
    return error;
  }
  __mtx_enter(&audio_lock );
 }
 __mtx_leave(&audio_lock );
 return 0;
}
int
audio_getdev(struct audio_softc *sc, struct audio_device *adev)
{
 __builtin_memset((adev), (0), (sizeof(struct audio_device)));
 if (sc->dev.dv_parent == ((void *)0))
  return 5;
 strlcpy(adev->name, sc->dev.dv_parent->dv_xname, 16);
 return 0;
}
int
audio_ioctl(struct audio_softc *sc, unsigned long cmd, void *addr)
{
 struct audio_pos *ap;
 int error = 0;
 while (sc->quiesce)
  tsleep(&sc->quiesce, 0, "au_qio", 0);
 switch (cmd) {
 case ((unsigned long)0x80000000 | ((sizeof(int) & 0x1fff) << 16) | ((('f')) << 8) | ((126))):
  break;
 case ((unsigned long)0x40000000 | ((sizeof(struct audio_pos) & 0x1fff) << 16) | ((('A')) << 8) | ((35))):
  __mtx_enter(&audio_lock );
  ap = (struct audio_pos *)addr;
  ap->play_pos = sc->play.pos;
  ap->play_xrun = sc->play.xrun;
  ap->rec_pos = sc->rec.pos;
  ap->rec_xrun = sc->rec.xrun;
  __mtx_leave(&audio_lock );
  break;
 case ((unsigned long)0x20000000 | ((0 & 0x1fff) << 16) | ((('A')) << 8) | ((38))):
  return audio_ioc_start(sc);
 case ((unsigned long)0x20000000 | ((0 & 0x1fff) << 16) | ((('A')) << 8) | ((39))):
  return audio_ioc_stop(sc);
 case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct audio_swpar) & 0x1fff) << 16) | ((('A')) << 8) | ((37))):
  error = audio_ioc_setpar(sc, (struct audio_swpar *)addr);
  break;
 case ((unsigned long)0x40000000 | ((sizeof(struct audio_swpar) & 0x1fff) << 16) | ((('A')) << 8) | ((36))):
  error = audio_ioc_getpar(sc, (struct audio_swpar *)addr);
  break;
 case ((unsigned long)0x40000000 | ((sizeof(struct audio_status) & 0x1fff) << 16) | ((('A')) << 8) | ((40))):
  error = audio_ioc_getstatus(sc, (struct audio_status *)addr);
  break;
 case ((unsigned long)0x40000000 | ((sizeof(struct audio_device) & 0x1fff) << 16) | ((('A')) << 8) | ((27))):
  error = audio_getdev(sc, (struct audio_device *)addr);
  break;
 default:
  do {} while(0);
  error = 25;
  break;
 }
 return error;
}
int
audio_ioctl_mixer(struct audio_softc *sc, unsigned long cmd, void *addr)
{
 int error;
 while (sc->quiesce)
  tsleep(&sc->quiesce, 0, "mix_qio", 0);
 switch (cmd) {
 case ((unsigned long)0x80000000 | ((sizeof(int) & 0x1fff) << 16) | ((('f')) << 8) | ((126))):
  break;
 case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(mixer_devinfo_t) & 0x1fff) << 16) | ((('M')) << 8) | ((2))):
  ((mixer_devinfo_t *)addr)->un.v.delta = 0;
  return sc->ops->query_devinfo(sc->arg, (mixer_devinfo_t *)addr);
 case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(mixer_ctrl_t) & 0x1fff) << 16) | ((('M')) << 8) | ((0))):
  return sc->ops->get_port(sc->arg, (mixer_ctrl_t *)addr);
 case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(mixer_ctrl_t) & 0x1fff) << 16) | ((('M')) << 8) | ((1))):
  error = sc->ops->set_port(sc->arg, (mixer_ctrl_t *)addr);
  if (error)
   return error;
  if (sc->ops->commit_settings)
   return sc->ops->commit_settings(sc->arg);
  break;
 default:
  return 25;
 }
 return 0;
}
int
audio_poll(struct audio_softc *sc, int events, struct proc *p)
{
 int revents = 0;
 __mtx_enter(&audio_lock );
 if ((sc->mode & 0x02) && sc->rec.used > 0)
  revents |= events & (0x0001 | 0x0040);
 if ((sc->mode & 0x01) && sc->play.used < sc->play.len)
  revents |= events & (0x0004 | 0x0004);
 if (revents == 0) {
  if (events & (0x0001 | 0x0040))
   selrecord(p, &sc->rec.sel);
  if (events & (0x0004 | 0x0004))
   selrecord(p, &sc->play.sel);
 }
 __mtx_leave(&audio_lock );
 return revents;
}
int
audioopen(dev_t dev, int flags, int mode, struct proc *p)
{
 struct audio_softc *sc;
 int error;
 sc = (struct audio_softc *)device_lookup(&audio_cd, (((int32_t)((dev) & 0xff) | (((dev) & 0xffff0000) >> 8)) & 0x0f));
 if (sc == ((void *)0))
  return 6;
 if (sc->ops == ((void *)0))
  error = 6;
 else {
  switch ((((int32_t)((dev) & 0xff) | (((dev) & 0xffff0000) >> 8)) & 0xf0)) {
  case 0:
   error = audio_open(sc, flags);
   break;
  case 0xc0:
  case 0x10:
   error = 0;
   break;
  default:
   error = 6;
  }
 }
 device_unref(&sc->dev);
 return error;
}
int
audioclose(dev_t dev, int flags, int ifmt, struct proc *p)
{
 struct audio_softc *sc;
 int error;
 sc = (struct audio_softc *)device_lookup(&audio_cd, (((int32_t)((dev) & 0xff) | (((dev) & 0xffff0000) >> 8)) & 0x0f));
 if (sc == ((void *)0))
  return 6;
 switch ((((int32_t)((dev) & 0xff) | (((dev) & 0xffff0000) >> 8)) & 0xf0)) {
 case 0:
  error = audio_close(sc);
  break;
 case 0x10:
 case 0xc0:
  error = 0;
  break;
 default:
  error = 6;
 }
 device_unref(&sc->dev);
 return error;
}
int
audioread(dev_t dev, struct uio *uio, int ioflag)
{
 struct audio_softc *sc;
 int error;
 sc = (struct audio_softc *)device_lookup(&audio_cd, (((int32_t)((dev) & 0xff) | (((dev) & 0xffff0000) >> 8)) & 0x0f));
 if (sc == ((void *)0))
  return 6;
 switch ((((int32_t)((dev) & 0xff) | (((dev) & 0xffff0000) >> 8)) & 0xf0)) {
 case 0:
  error = audio_read(sc, uio, ioflag);
  break;
 case 0xc0:
 case 0x10:
  error = 19;
  break;
 default:
  error = 6;
 }
 device_unref(&sc->dev);
 return error;
}
int
audiowrite(dev_t dev, struct uio *uio, int ioflag)
{
 struct audio_softc *sc;
 int error;
 sc = (struct audio_softc *)device_lookup(&audio_cd, (((int32_t)((dev) & 0xff) | (((dev) & 0xffff0000) >> 8)) & 0x0f));
 if (sc == ((void *)0))
  return 6;
 switch ((((int32_t)((dev) & 0xff) | (((dev) & 0xffff0000) >> 8)) & 0xf0)) {
 case 0:
  error = audio_write(sc, uio, ioflag);
  break;
 case 0xc0:
 case 0x10:
  error = 19;
  break;
 default:
  error = 6;
 }
 device_unref(&sc->dev);
 return error;
}
int
audioioctl(dev_t dev, u_long cmd, caddr_t addr, int flag, struct proc *p)
{
 struct audio_softc *sc;
 int error;
 sc = (struct audio_softc *)device_lookup(&audio_cd, (((int32_t)((dev) & 0xff) | (((dev) & 0xffff0000) >> 8)) & 0x0f));
 if (sc == ((void *)0))
  return 6;
 switch ((((int32_t)((dev) & 0xff) | (((dev) & 0xffff0000) >> 8)) & 0xf0)) {
 case 0:
  error = audio_ioctl(sc, cmd, addr);
  break;
 case 0xc0:
  if (cmd == (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct audio_swpar) & 0x1fff) << 16) | ((('A')) << 8) | ((37))) && sc->mode != 0) {
   error = 16;
   break;
  }
  if (cmd == ((unsigned long)0x20000000 | ((0 & 0x1fff) << 16) | ((('A')) << 8) | ((38))) || cmd == ((unsigned long)0x20000000 | ((0 & 0x1fff) << 16) | ((('A')) << 8) | ((39)))) {
   error = 6;
   break;
  }
  error = audio_ioctl(sc, cmd, addr);
  break;
 case 0x10:
  error = audio_ioctl_mixer(sc, cmd, addr);
  break;
 default:
  error = 6;
 }
 device_unref(&sc->dev);
 return error;
}
int
audiopoll(dev_t dev, int events, struct proc *p)
{
 struct audio_softc *sc;
 int revents;
 sc = (struct audio_softc *)device_lookup(&audio_cd, (((int32_t)((dev) & 0xff) | (((dev) & 0xffff0000) >> 8)) & 0x0f));
 if (sc == ((void *)0))
  return 0x0008;
 switch ((((int32_t)((dev) & 0xff) | (((dev) & 0xffff0000) >> 8)) & 0xf0)) {
 case 0:
  revents = audio_poll(sc, events, p);
  break;
 case 0xc0:
 case 0x10:
 default:
  revents = 0;
  break;
 }
 device_unref(&sc->dev);
 return revents;
}
int
wskbd_initmute(struct audio_softc *sc, struct mixer_devinfo *vol)
{
 struct mixer_devinfo *mi;
 int index = -1;
 mi = malloc(sizeof(struct mixer_devinfo), 127, 0x0001);
 for (mi->index = vol->next; mi->index != -1; mi->index = mi->next) {
  if (sc->ops->query_devinfo(sc->arg, mi) != 0)
   break;
  if (strcmp(mi->label.name, "mute") == 0) {
   index = mi->index;
   break;
  }
 }
 free(mi, 127, sizeof(struct mixer_devinfo));
 return index;
}
int
wskbd_initvol(struct audio_softc *sc, struct wskbd_vol *vol, char *cn, char *dn)
{
 struct mixer_devinfo *dev, *cls;
 vol->val = vol->mute = -1;
 dev = malloc(sizeof(struct mixer_devinfo), 127, 0x0001);
 cls = malloc(sizeof(struct mixer_devinfo), 127, 0x0001);
 for (dev->index = 0; ; dev->index++) {
  if (sc->ops->query_devinfo(sc->arg, dev) != 0)
   break;
  if (dev->type != 3)
   continue;
  cls->index = dev->mixer_class;
  if (sc->ops->query_devinfo(sc->arg, cls) != 0)
   continue;
  if (strcmp(cls->label.name, cn) == 0 &&
      strcmp(dev->label.name, dn) == 0) {
   vol->val = dev->index;
   vol->nch = dev->un.v.num_channels;
   vol->step = dev->un.v.delta > 8 ? dev->un.v.delta : 8;
   vol->mute = wskbd_initmute(sc, dev);
   vol->val_pending = vol->mute_pending = 0;
   do {} while(0);
   break;
  }
 }
 free(cls, 127, sizeof(struct mixer_devinfo));
 free(dev, 127, sizeof(struct mixer_devinfo));
 return (vol->val != -1);
}
void
wskbd_mixer_init(struct audio_softc *sc)
{
 static struct {
  char *cn, *dn;
 } spkr_names[] = {
  {"outputs", "master"},
  {"inputs", "dac"},
  {"outputs", "dac"},
  {"outputs", "output"}
 }, mic_names[] = {
  {"record", "record"},
  {"record", "volume"},
  {"inputs", "record"},
  {"inputs", "volume"},
  {"inputs", "input"}
 };
 int i;
 if (sc->dev.dv_unit != 0) {
  do {} while(0);
  return;
 }
 for (i = 0; i < sizeof(spkr_names) / sizeof(spkr_names[0]); i++) {
  if (wskbd_initvol(sc, &sc->spkr,
   spkr_names[i].cn, spkr_names[i].dn))
   break;
 }
 for (i = 0; i < sizeof(mic_names) / sizeof(mic_names[0]); i++) {
  if (wskbd_initvol(sc, &sc->mic,
   mic_names[i].cn, mic_names[i].dn))
   break;
 }
}
void
wskbd_mixer_update(struct audio_softc *sc, struct wskbd_vol *vol)
{
 struct mixer_ctrl ctrl;
 int val_pending, mute_pending, i, gain, error, s;
 s = _splraise(6);
 val_pending = vol->val_pending;
 vol->val_pending = 0;
 mute_pending = vol->mute_pending;
 vol->mute_pending = 0;
 _splx(s);
 if (sc->ops == ((void *)0))
  return;
 if (vol->mute >= 0 && mute_pending) {
  ctrl.dev = vol->mute;
  ctrl.type = 1;
  error = sc->ops->get_port(sc->arg, &ctrl);
  if (error) {
   do {} while(0);
   return;
  }
  switch (mute_pending) {
  case 1:
   ctrl.un.ord = !ctrl.un.ord;
   break;
  case 2:
   ctrl.un.ord = 0;
   break;
  case 3:
   ctrl.un.ord = 1;
   break;
  }
  do {} while(0);
  error = sc->ops->set_port(sc->arg, &ctrl);
  if (error) {
   do {} while(0);
   return;
  }
 }
 if (vol->val >= 0 && val_pending) {
  ctrl.dev = vol->val;
  ctrl.type = 3;
  ctrl.un.value.num_channels = vol->nch;
  error = sc->ops->get_port(sc->arg, &ctrl);
  if (error) {
   do {} while(0);
   return;
  }
  for (i = 0; i < vol->nch; i++) {
   gain = ctrl.un.value.level[i] + vol->step * val_pending;
   if (gain > 255)
    gain = 255;
   else if (gain < 0)
    gain = 0;
   ctrl.un.value.level[i] = gain;
   do {} while(0);
  }
  error = sc->ops->set_port(sc->arg, &ctrl);
  if (error) {
   do {} while(0);
   return;
  }
 }
}
void
wskbd_mixer_cb(void *addr)
{
 struct audio_softc *sc = addr;
 int s;
 wskbd_mixer_update(sc, &sc->spkr);
 wskbd_mixer_update(sc, &sc->mic);
 s = _splraise(6);
 sc->wskbd_taskset = 0;
 _splx(s);
 device_unref(&sc->dev);
}
int
wskbd_set_mixermute(long mute, long out)
{
 struct audio_softc *sc;
 struct wskbd_vol *vol;
 sc = (struct audio_softc *)device_lookup(&audio_cd, 0);
 if (sc == ((void *)0))
  return 19;
 vol = out ? &sc->spkr : &sc->mic;
 vol->mute_pending = mute ? 3 : 2;
 if (!sc->wskbd_taskset) {
  task_set(&sc->wskbd_task, wskbd_mixer_cb, sc);
  task_add(systq, &sc->wskbd_task);
  sc->wskbd_taskset = 1;
 }
 return 0;
}
int
wskbd_set_mixervolume(long dir, long out)
{
 struct audio_softc *sc;
 struct wskbd_vol *vol;
 sc = (struct audio_softc *)device_lookup(&audio_cd, 0);
 if (sc == ((void *)0))
  return 19;
 vol = out ? &sc->spkr : &sc->mic;
 if (dir == 0)
  vol->mute_pending ^= 1;
 else
  vol->val_pending += dir;
 if (!sc->wskbd_taskset) {
  task_set(&sc->wskbd_task, wskbd_mixer_cb, sc);
  task_add(systq, &sc->wskbd_task);
  sc->wskbd_taskset = 1;
 }
 return 0;
}
