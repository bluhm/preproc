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
struct flock {
 off_t l_start;
 off_t l_len;
 pid_t l_pid;
 short l_type;
 short l_whence;
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
struct mutex {
 volatile void *mtx_owner;
 int mtx_wantipl;
 int mtx_oldipl;
};
void __mtx_init(struct mutex *, int);
void __mtx_enter(struct mutex *);
int __mtx_enter_try(struct mutex *);
void __mtx_leave(struct mutex *);
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
struct ac97_codec_if;
enum ac97_host_flags {
 AC97_HOST_DONT_READ = 0x1,
 AC97_HOST_DONT_READANY = 0x2,
 AC97_HOST_SWAPPED_CHANNELS = 0x4,
 AC97_HOST_ALC650_PIN47_IS_EAPD = 0x8,
 AC97_HOST_VT1616_DYNEX = 0x10
};
struct ac97_host_if {
 void *arg;
 int (*attach)(void *arg, struct ac97_codec_if *codecif);
 int (*read)(void *arg, u_int8_t reg64, u_int16_t *val);
 int (*write)(void *arg, u_int8_t reg64, u_int16_t val);
 void (*reset)(void *arg);
 enum ac97_host_flags (*flags)(void *arg);
 void (*spdif_event)(void *arg, int);
};
struct ac97_codec_if_vtbl {
 int (*mixer_get_port)(struct ac97_codec_if *addr, mixer_ctrl_t *cp);
 int (*mixer_set_port)(struct ac97_codec_if *addr, mixer_ctrl_t *cp);
 int (*query_devinfo)(struct ac97_codec_if *addr, mixer_devinfo_t *cp);
 int (*get_portnum_by_name)(struct ac97_codec_if *addr, char *class,
     char *device, char *qualifier);
 void (*restore_ports)(struct ac97_codec_if *addr);
 u_int16_t (*get_caps)(struct ac97_codec_if *codec_if);
 int (*set_rate)(struct ac97_codec_if *codec_if, int target,
     u_long *rate);
 void (*set_clock)(struct ac97_codec_if *codec_if,
     unsigned int clock);
 void (*lock)(struct ac97_codec_if *codec_if);
 void (*unlock)(struct ac97_codec_if *codec_if);
};
struct ac97_codec_if {
 struct ac97_softc *as;
 void (*initfunc)(struct ac97_softc *, int);
 struct ac97_codec_if_vtbl *vtbl;
};
int ac97_attach(struct ac97_host_if *);
int ac97_resume(struct ac97_host_if *, struct ac97_codec_if *);
int ac97_set_rate(struct ac97_codec_if *, int, u_long *);
struct dmamem {
 bus_dma_tag_t dmat;
 bus_size_t size;
 bus_size_t align;
 bus_size_t bound;
 bus_dma_segment_t *segs;
 int nsegs;
 int rsegs;
 caddr_t kaddr;
 bus_dmamap_t map;
};
struct emuxki_mem {
 struct { struct emuxki_mem *le_next; struct emuxki_mem **le_prev; } next;
 struct dmamem *dmamem;
 u_int16_t ptbidx;
};
struct emuxki_chanparms_fxsend {
 struct {
  u_int8_t level, dest;
 } a, b, c, d, e, f, g, h;
};
struct emuxki_chanparms_pitch {
 u_int16_t initial;
 u_int16_t current;
 u_int16_t target;
 u_int8_t envelope_amount;
};
struct emuxki_chanparms_envelope {
 u_int16_t current_state;
 u_int8_t hold_time;
 u_int8_t attack_time;
 u_int8_t sustain_level;
 u_int8_t decay_time;
};
struct emuxki_chanparms_volume {
 u_int16_t current, target;
 struct emuxki_chanparms_envelope envelope;
};
struct emuxki_chanparms_filter {
 u_int16_t initial_cutoff_frequency;
 u_int16_t current_cutoff_frequency;
 u_int16_t target_cutoff_frequency;
 u_int8_t lowpass_resonance_height;
 u_int8_t interpolation_ROM;
 u_int8_t envelope_amount;
 u_int8_t LFO_modulation_depth;
};
struct emuxki_chanparms_loop {
 u_int32_t start;
 u_int32_t end;
};
struct emuxki_chanparms_modulation {
 struct emuxki_chanparms_envelope envelope;
 u_int16_t LFO_state;
};
struct emuxki_chanparms_vibrato_LFO {
 u_int16_t state;
 u_int8_t modulation_depth;
 u_int8_t vibrato_depth;
 u_int8_t frequency;
};
struct emuxki_channel {
 u_int8_t num;
 struct emuxki_voice *voice;
 struct emuxki_chanparms_fxsend fxsend;
 struct emuxki_chanparms_pitch pitch;
 u_int16_t initial_attenuation;
 struct emuxki_chanparms_volume volume;
 struct emuxki_chanparms_filter filter;
 struct emuxki_chanparms_loop loop;
 struct emuxki_chanparms_modulation modulation;
 struct emuxki_chanparms_vibrato_LFO vibrato_LFO;
 u_int8_t tremolo_depth;
};
typedef enum {
 EMU_RECSRC_MIC = 0,
 EMU_RECSRC_ADC,
 EMU_RECSRC_FX,
 EMU_RECSRC_NOTSET
} emuxki_recsrc_t;
struct emuxki_voice {
 struct emuxki_softc *sc;
 u_int8_t use;
 u_int8_t state;
 u_int8_t stereo;
 u_int8_t b16;
 u_int32_t sample_rate;
 union {
  struct emuxki_channel *chan[2];
  emuxki_recsrc_t source;
 } dataloc;
 struct emuxki_mem *buffer;
 u_int16_t blksize;
 u_int16_t trigblk;
 u_int16_t blkmod;
 u_int16_t timerate;
 void (*inth) (void *);
 void *inthparam;
                 struct { struct emuxki_voice *le_next; struct emuxki_voice **le_prev; } next;
};
struct emuxki_softc {
 struct device sc_dev;
 bus_space_tag_t sc_iot;
 bus_space_handle_t sc_ioh;
 bus_addr_t sc_iob;
 bus_size_t sc_ios;
 pci_chipset_tag_t sc_pc;
 bus_dma_tag_t sc_dmat;
 void *sc_ih;
 struct { struct emuxki_mem *lh_first; } mem;
 struct dmamem *ptb;
 struct dmamem *silentpage;
 struct emuxki_channel *channel[64];
 struct emuxki_voice *recsrc[3];
 struct { struct emuxki_voice *lh_first; } voices;
 u_int8_t timerstate;
 struct ac97_host_if hostif;
 struct ac97_codec_if *codecif;
 struct device *sc_audev;
 struct emuxki_voice *pvoice, *rvoice, *lvoice;
 int sc_flags;
};
int emuxki_match(struct device *, void *, void *);
void emuxki_attach(struct device *, struct device *, void *);
int emuxki_detach(struct device *, int);
int emuxki_activate(struct device *, int);
int emuxki_scinit(struct emuxki_softc *sc, int);
void emuxki_pci_shutdown(struct emuxki_softc *sc);
struct dmamem *emuxki_dmamem_alloc(bus_dma_tag_t, size_t, bus_size_t,
     int, int, int);
void emuxki_dmamem_free(struct dmamem *, int);
void emuxki_dmamem_delete(struct dmamem *mem, int type);
struct emuxki_mem *emuxki_mem_new(struct emuxki_softc *sc, int ptbidx,
 size_t size, int type, int flags);
void emuxki_mem_delete(struct emuxki_mem *mem, int type);
int emuxki_init(struct emuxki_softc *, int);
void emuxki_shutdown(struct emuxki_softc *);
void *emuxki_pmem_alloc(struct emuxki_softc *, size_t,int,int);
void *emuxki_rmem_alloc(struct emuxki_softc *, size_t,int,int);
struct emuxki_voice *emuxki_voice_new(struct emuxki_softc *, u_int8_t);
void emuxki_voice_delete(struct emuxki_voice *);
int emuxki_voice_set_audioparms(struct emuxki_voice *, u_int8_t, u_int8_t, u_int32_t);
int emuxki_voice_set_bufparms(struct emuxki_voice *, void *, u_int32_t, u_int16_t);
int emuxki_voice_set_stereo(struct emuxki_voice *voice, u_int8_t stereo);
int emuxki_voice_dataloc_create(struct emuxki_voice *voice);
void emuxki_voice_dataloc_destroy(struct emuxki_voice *voice);
void emuxki_voice_commit_parms(struct emuxki_voice *);
void emuxki_voice_recsrc_release(struct emuxki_softc *sc, emuxki_recsrc_t source);
int emuxki_recsrc_reserve(struct emuxki_voice *voice, emuxki_recsrc_t source);
int emuxki_voice_adc_rate(struct emuxki_voice *);
u_int32_t emuxki_voice_curaddr(struct emuxki_voice *);
int emuxki_set_vparms(struct emuxki_voice *voice, struct audio_params *p);
int emuxki_voice_set_srate(struct emuxki_voice *voice, u_int32_t srate);
void emuxki_voice_start(struct emuxki_voice *, void (*) (void *), void *);
void emuxki_voice_halt(struct emuxki_voice *);
int emuxki_voice_channel_create(struct emuxki_voice *voice);
void emuxki_voice_channel_destroy(struct emuxki_voice *voice);
struct emuxki_channel *emuxki_channel_new(struct emuxki_voice *voice, u_int8_t num);
void emuxki_channel_delete(struct emuxki_channel *chan);
void emuxki_channel_start(struct emuxki_channel *chan);
void emuxki_channel_stop(struct emuxki_channel *chan);
void emuxki_channel_commit_fx(struct emuxki_channel *chan);
void emuxki_channel_commit_parms(struct emuxki_channel *chan);
void emuxki_channel_set_bufparms(struct emuxki_channel *chan, u_int32_t start, u_int32_t end);
void emuxki_channel_set_srate(struct emuxki_channel *chan, u_int32_t srate);
void emuxki_channel_set_fxsend(struct emuxki_channel *chan,
 struct emuxki_chanparms_fxsend *fxsend);
void emuxki_chanparms_set_defaults(struct emuxki_channel *chan);
void emuxki_resched_timer(struct emuxki_softc *sc);
void emuxki_initfx(struct emuxki_softc *sc);
void emuxki_dsp_addop(struct emuxki_softc *sc, u_int16_t *pc, u_int8_t op,
 u_int16_t r, u_int16_t a, u_int16_t x, u_int16_t y);
void emuxki_write_micro(struct emuxki_softc *sc, u_int32_t pc, u_int32_t data);
int emuxki_open(void *, int);
void emuxki_close(void *);
int emuxki_set_params(void *, int, int,
          struct audio_params *,
          struct audio_params *);
int emuxki_round_blocksize(void *, int);
size_t emuxki_round_buffersize(void *, int, size_t);
int emuxki_trigger_output(void *, void *, void *, int, void (*)(void *),
     void *, struct audio_params *);
int emuxki_trigger_input(void *, void *, void *, int, void (*) (void *),
     void *, struct audio_params *);
int emuxki_halt_output(void *);
int emuxki_halt_input(void *);
int emuxki_set_port(void *, mixer_ctrl_t *);
int emuxki_get_port(void *, mixer_ctrl_t *);
int emuxki_query_devinfo(void *, mixer_devinfo_t *);
void *emuxki_allocm(void *, int, size_t, int, int);
void emuxki_freem(void *, void *, int);
int emuxki_get_props(void *);
int emuxki_intr(void *);
int emuxki_ac97_init(struct emuxki_softc *sc);
int emuxki_ac97_attach(void *, struct ac97_codec_if *);
int emuxki_ac97_read(void *, u_int8_t, u_int16_t *);
int emuxki_ac97_write(void *, u_int8_t, u_int16_t);
void emuxki_ac97_reset(void *);
const struct pci_matchid emuxki_devices[] = {
 { 0x1102, 0x0002 },
 { 0x1102, 0x0004 },
 { 0x1102, 0x0008 },
};
struct cfdriver emu_cd = {
 ((void *)0), "emu", DV_DULL
};
struct cfattach emu_ca = {
        sizeof(struct emuxki_softc),
        emuxki_match,
        emuxki_attach,
 emuxki_detach,
 emuxki_activate
};
struct audio_hw_if emuxki_hw_if = {
 emuxki_open,
 emuxki_close,
 emuxki_set_params,
 emuxki_round_blocksize,
 ((void *)0),
 ((void *)0),
 ((void *)0),
 ((void *)0),
 ((void *)0),
 emuxki_halt_output,
 emuxki_halt_input,
 ((void *)0),
 ((void *)0),
 emuxki_set_port,
 emuxki_get_port,
 emuxki_query_devinfo,
 emuxki_allocm,
 emuxki_freem,
 emuxki_round_buffersize,
 emuxki_get_props,
 emuxki_trigger_output,
 emuxki_trigger_input
};
static const u_int32_t emuxki_recsrc_bufaddrreg[3] =
    { 0x45, 0x46, 0x47 };
static const u_int32_t emuxki_recsrc_szreg[3] =
    { 0x49, 0x4a, 0x4b };
static const int emuxki_recbuf_sz[] = {
 0, 384, 448, 512, 640, 768, 896, 1024, 1280, 1536, 1792,
 2048, 2560, 3072, 3584, 4096, 5120, 6144, 7168, 8192, 10240,
 12288, 14366, 16384, 20480, 24576, 28672, 32768, 40960, 49152,
 57344, 65536
};
void
emuxki_dmamem_delete(struct dmamem *mem, int type)
{
 free(mem->segs, type, 0);
 free(mem, type, 0);
}
struct dmamem *
emuxki_dmamem_alloc(bus_dma_tag_t dmat, size_t size, bus_size_t align,
      int nsegs, int type, int flags)
{
 struct dmamem *mem;
 int bus_dma_flags;
 if ((mem = malloc(sizeof(*mem), type, flags)) == ((void *)0))
  return (((void *)0));
 mem->dmat = dmat;
 mem->size = size;
 mem->align = align;
 mem->nsegs = nsegs;
 mem->bound = 0;
 mem->segs = mallocarray(mem->nsegs, sizeof(*(mem->segs)), type, flags);
 if (mem->segs == ((void *)0)) {
  free(mem, type, 0);
  return (((void *)0));
 }
 bus_dma_flags = (flags & 0x0002) ? 0x0001 : 0x0000;
 if (bus_dmamem_alloc(dmat, mem->size, mem->align, mem->bound,
        mem->segs, mem->nsegs, &(mem->rsegs),
        bus_dma_flags)) {
  emuxki_dmamem_delete(mem, type);
  return (((void *)0));
 }
 if (bus_dmamem_map(dmat, mem->segs, mem->nsegs, mem->size,
      &(mem->kaddr), bus_dma_flags | 0x0004)) {
  bus_dmamem_free(dmat, mem->segs, mem->nsegs);
  emuxki_dmamem_delete(mem, type);
  return (((void *)0));
 }
 if (bus_dmamap_create(dmat, mem->size, mem->nsegs, mem->size,
         mem->bound, bus_dma_flags, &(mem->map))) {
  bus_dmamem_unmap(dmat, mem->kaddr, mem->size);
  bus_dmamem_free(dmat, mem->segs, mem->nsegs);
  emuxki_dmamem_delete(mem, type);
  return (((void *)0));
 }
 if (bus_dmamap_load(dmat, mem->map, mem->kaddr,
       mem->size, ((void *)0), bus_dma_flags)) {
  bus_dmamap_destroy(dmat, mem->map);
  bus_dmamem_unmap(dmat, mem->kaddr, mem->size);
  bus_dmamem_free(dmat, mem->segs, mem->nsegs);
  emuxki_dmamem_delete(mem, type);
  return (((void *)0));
 }
 return (mem);
}
void
emuxki_dmamem_free(struct dmamem *mem, int type)
{
 bus_dmamap_unload(mem->dmat, mem->map);
 bus_dmamap_destroy(mem->dmat, mem->map);
 bus_dmamem_unmap(mem->dmat, mem->kaddr, mem->size);
 bus_dmamem_free(mem->dmat, mem->segs, mem->nsegs);
 emuxki_dmamem_delete(mem, type);
}
void
emuxki_pci_shutdown(struct emuxki_softc *sc)
{
 if (sc->sc_ih != ((void *)0))
  pci_intr_disestablish(sc->sc_pc, sc->sc_ih);
 if (sc->sc_ios)
  bus_space_unmap(sc->sc_iot, sc->sc_ioh, sc->sc_ios);
}
int
emuxki_scinit(struct emuxki_softc *sc, int resuming)
{
 int err;
 bus_space_write_4(sc->sc_iot, sc->sc_ioh, 0x14,
  (sc->sc_flags & 0x0010? 0 : 0x00001000) |
  0x00000008 | 0x00000004 |
  0x00000002);
 bus_space_write_4(sc->sc_iot, sc->sc_ioh, 0x0c,
  0x00002000 | 0x00000800);
 if ((err = emuxki_init(sc, resuming)))
  return (err);
 if (sc->sc_flags & 0x0004) {
  bus_space_write_4(sc->sc_iot, sc->sc_ioh, 0x14,
   0x00000001 | 0x00000040 |
   0x00000020 | 0x00000010);
 } else if (sc->sc_flags & 0x0002) {
  bus_space_write_4(sc->sc_iot, sc->sc_ioh, 0x14,
   0x00000001 | 0x00000010);
 } else {
  bus_space_write_4(sc->sc_iot, sc->sc_ioh, 0x14,
   0x00000001 | 0x00000200 |
   0x00000004 | 0x00000010);
 }
 bus_space_write_4(sc->sc_iot, sc->sc_ioh, 0x0c,
  bus_space_read_4(sc->sc_iot, sc->sc_ioh, 0x0c) |
  0x00000400 | 0x00000200 |
  0x00000100);
 if (sc->sc_flags & 0x0004) {
  if (sc->sc_flags & 0x0020) {
   bus_space_write_4(sc->sc_iot, sc->sc_ioh, 0x18,
       0x0060 | bus_space_read_4(sc->sc_iot, sc->sc_ioh,
       0x18));
  } else {
   bus_space_write_4(sc->sc_iot, sc->sc_ioh, 0x18,
       0x0040 | bus_space_read_4(sc->sc_iot,
       sc->sc_ioh, 0x18));
  }
 }
 if (!resuming) {
  sc->pvoice = sc->rvoice = ((void *)0);
 }
 return (0);
}
int
emuxki_ac97_init(struct emuxki_softc *sc)
{
 sc->hostif.arg = sc;
 sc->hostif.attach = emuxki_ac97_attach;
 sc->hostif.read = emuxki_ac97_read;
 sc->hostif.write = emuxki_ac97_write;
 sc->hostif.reset = emuxki_ac97_reset;
 sc->hostif.flags = ((void *)0);
 return (ac97_attach(&(sc->hostif)));
}
int
emuxki_match(struct device *parent, void *match, void *aux)
{
 return (pci_matchbyid((struct pci_attach_args *)aux, emuxki_devices,
     (sizeof((emuxki_devices)) / sizeof((emuxki_devices)[0]))));
}
void
emuxki_attach(struct device *parent, struct device *self, void *aux)
{
 struct emuxki_softc *sc = (struct emuxki_softc *) self;
 struct pci_attach_args *pa = aux;
 pci_intr_handle_t ih;
 const char *intrstr;
 if (pci_mapreg_map(pa, 0x10, 0x00000001, 0,
     &(sc->sc_iot), &(sc->sc_ioh), &(sc->sc_iob), &(sc->sc_ios), 0)) {
  printf(": can't map i/o space\n");
  return;
 }
 sc->sc_pc = pa->pa_pc;
 sc->sc_dmat = pa->pa_dmat;
 if (pci_intr_map(pa, &ih)) {
  printf(": can't map interrupt\n");
  bus_space_unmap(sc->sc_iot, sc->sc_ioh, sc->sc_ios);
  return;
 }
 intrstr = pci_intr_string(pa->pa_pc, ih);
 sc->sc_ih = pci_intr_establish(pa->pa_pc, ih, 8 | 0x100,
     emuxki_intr, sc, sc->sc_dev.dv_xname);
 if (sc->sc_ih == ((void *)0)) {
  printf(": can't establish interrupt");
  if (intrstr != ((void *)0))
   printf(" at %s", intrstr);
  printf("\n");
  bus_space_unmap(sc->sc_iot, sc->sc_ioh, sc->sc_ios);
  return;
 }
 printf(": %s\n", intrstr);
 if ((((pa->pa_id) >> 16) & 0xffff) == 0x0004) {
  sc->sc_flags |= 0x0002;
                if ((((pa->pa_class) >> 0) & 0xff) == 0x04 ||
      (((pa->pa_class) >> 0) & 0xff) == 0x08) {
   sc->sc_flags |= 0x0004;
  }
 } else if ((((pa->pa_id) >> 16) & 0xffff) == 0x0008) {
  sc->sc_flags |= 0x0002 | 0x0004;
  if (pci_conf_read(pa->pa_pc, pa->pa_tag,
      0x2c) == 0x10011102) {
   sc->sc_flags |= 0x0020;
  }
 } else if (pci_conf_read(pa->pa_pc, pa->pa_tag,
     0x2c) == 0x40011102) {
  sc->sc_flags |= 0x0010;
 } else {
  sc->sc_flags |= 0x0001;
 }
 if (emuxki_scinit(sc, 0) ||
     (sc->sc_flags & 0x0010 || emuxki_ac97_init(sc)) ||
     (sc->sc_audev = audio_attach_mi(&emuxki_hw_if, sc, self)) == ((void *)0)) {
  emuxki_pci_shutdown(sc);
  return;
 }
}
int
emuxki_detach(struct device *self, int flags)
{
 struct emuxki_softc *sc = (struct emuxki_softc *) self;
        if (sc->sc_audev != ((void *)0))
  config_detach(sc->sc_audev, 0);
 bus_space_write_4(sc->sc_iot, sc->sc_ioh, 0x14,
  0x00000008 | 0x00000004 |
  0x00000002);
 bus_space_write_4(sc->sc_iot, sc->sc_ioh, 0x0c, 0);
 emuxki_shutdown(sc);
 emuxki_pci_shutdown(sc);
 return (0);
}
int
emuxki_activate(struct device *self, int act)
{
 struct emuxki_softc *sc = (struct emuxki_softc *)self;
 int rv = 0;
 switch (act) {
 case 4:
  emuxki_scinit(sc, 1);
  ac97_resume(&sc->hostif, sc->codecif);
  rv = config_activate_children(self, act);
  break;
 default:
  rv = config_activate_children(self, act);
  break;
 }
 return (rv);
}
static u_int32_t
emuxki_rate_to_pitch(u_int32_t rate)
{
 static const u_int32_t logMagTable[128] = {
  0x00000, 0x02dfc, 0x05b9e, 0x088e6, 0x0b5d6, 0x0e26f, 0x10eb3,
  0x13aa2, 0x1663f, 0x1918a, 0x1bc84, 0x1e72e, 0x2118b, 0x23b9a,
  0x2655d, 0x28ed5, 0x2b803, 0x2e0e8, 0x30985, 0x331db, 0x359eb,
  0x381b6, 0x3a93d, 0x3d081, 0x3f782, 0x41e42, 0x444c1, 0x46b01,
  0x49101, 0x4b6c4, 0x4dc49, 0x50191, 0x5269e, 0x54b6f, 0x57006,
  0x59463, 0x5b888, 0x5dc74, 0x60029, 0x623a7, 0x646ee, 0x66a00,
  0x68cdd, 0x6af86, 0x6d1fa, 0x6f43c, 0x7164b, 0x73829, 0x759d4,
  0x77b4f, 0x79c9a, 0x7bdb5, 0x7dea1, 0x7ff5e, 0x81fed, 0x8404e,
  0x86082, 0x88089, 0x8a064, 0x8c014, 0x8df98, 0x8fef1, 0x91e20,
  0x93d26, 0x95c01, 0x97ab4, 0x9993e, 0x9b79f, 0x9d5d9, 0x9f3ec,
  0xa11d8, 0xa2f9d, 0xa4d3c, 0xa6ab5, 0xa8808, 0xaa537, 0xac241,
  0xadf26, 0xafbe7, 0xb1885, 0xb3500, 0xb5157, 0xb6d8c, 0xb899f,
  0xba58f, 0xbc15e, 0xbdd0c, 0xbf899, 0xc1404, 0xc2f50, 0xc4a7b,
  0xc6587, 0xc8073, 0xc9b3f, 0xcb5ed, 0xcd07c, 0xceaec, 0xd053f,
  0xd1f73, 0xd398a, 0xd5384, 0xd6d60, 0xd8720, 0xda0c3, 0xdba4a,
  0xdd3b4, 0xded03, 0xe0636, 0xe1f4e, 0xe384a, 0xe512c, 0xe69f3,
  0xe829f, 0xe9b31, 0xeb3a9, 0xecc08, 0xee44c, 0xefc78, 0xf148a,
  0xf2c83, 0xf4463, 0xf5c2a, 0xf73da, 0xf8b71, 0xfa2f0, 0xfba57,
  0xfd1a7, 0xfe8df
 };
 static const u_int8_t logSlopeTable[128] = {
  0x5c, 0x5c, 0x5b, 0x5a, 0x5a, 0x59, 0x58, 0x58,
  0x57, 0x56, 0x56, 0x55, 0x55, 0x54, 0x53, 0x53,
  0x52, 0x52, 0x51, 0x51, 0x50, 0x50, 0x4f, 0x4f,
  0x4e, 0x4d, 0x4d, 0x4d, 0x4c, 0x4c, 0x4b, 0x4b,
  0x4a, 0x4a, 0x49, 0x49, 0x48, 0x48, 0x47, 0x47,
  0x47, 0x46, 0x46, 0x45, 0x45, 0x45, 0x44, 0x44,
  0x43, 0x43, 0x43, 0x42, 0x42, 0x42, 0x41, 0x41,
  0x41, 0x40, 0x40, 0x40, 0x3f, 0x3f, 0x3f, 0x3e,
  0x3e, 0x3e, 0x3d, 0x3d, 0x3d, 0x3c, 0x3c, 0x3c,
  0x3b, 0x3b, 0x3b, 0x3b, 0x3a, 0x3a, 0x3a, 0x39,
  0x39, 0x39, 0x39, 0x38, 0x38, 0x38, 0x38, 0x37,
  0x37, 0x37, 0x37, 0x36, 0x36, 0x36, 0x36, 0x35,
  0x35, 0x35, 0x35, 0x34, 0x34, 0x34, 0x34, 0x34,
  0x33, 0x33, 0x33, 0x33, 0x32, 0x32, 0x32, 0x32,
  0x32, 0x31, 0x31, 0x31, 0x31, 0x31, 0x30, 0x30,
  0x30, 0x30, 0x30, 0x2f, 0x2f, 0x2f, 0x2f, 0x2f
 };
 int8_t i;
 if (rate == 0)
  return 0;
 rate *= 11185;
 for (i = 31; i > 0; i--) {
  if (rate & 0x80000000) {
   return (((u_int32_t) (i - 15) << 20) +
    logMagTable[0x7f & (rate >> 24)] +
    (0x7f & (rate >> 17)) *
    logSlopeTable[0x7f & (rate >> 24)]);
  }
  rate <<= 1;
 }
 return 0;
}
static u_int32_t
emuxki_read(struct emuxki_softc *sc, u_int16_t chano, u_int32_t reg64)
{
 u_int32_t ptr, mask = 0xffffffff;
 u_int8_t size, offset = 0;
 ptr = ((((u_int32_t) reg64) << 16) &
  (sc->sc_flags & 0x0002 ?
   0x0fff0000 : 0x07ff0000)) |
  (chano & 0x0000003f);
 if (reg64 & 0xff000000) {
  size = (reg64 >> 24) & 0x3f;
  offset = (reg64 >> 16) & 0x1f;
  mask = ((1 << size) - 1) << offset;
 }
 bus_space_write_4(sc->sc_iot, sc->sc_ioh, 0x00, ptr);
 ptr = (bus_space_read_4(sc->sc_iot, sc->sc_ioh, 0x04) & mask)
  >> offset;
 return (ptr);
}
static void
emuxki_write(struct emuxki_softc *sc, u_int16_t chano,
       u_int32_t reg64, u_int32_t data)
{
 u_int32_t ptr, mask;
 u_int8_t size, offset;
 ptr = ((((u_int32_t) reg64) << 16) &
  (sc->sc_flags & 0x0002 ?
   0x0fff0000 : 0x07ff0000)) |
  (chano & 0x0000003f);
 if (ptr == 0x52 || ptr == 0x53)
  return;
 if (reg64 & 0xff000000) {
  size = (reg64 >> 24) & 0x3f;
  offset = (reg64 >> 16) & 0x1f;
  mask = ((1 << size) - 1) << offset;
  data = ((data << offset) & mask) |
   (emuxki_read(sc, chano, reg64 & 0xffff) & ~mask);
 }
 bus_space_write_4(sc->sc_iot, sc->sc_ioh, 0x00, ptr);
 bus_space_write_4(sc->sc_iot, sc->sc_ioh, 0x04, data);
}
void
emuxki_write_micro(struct emuxki_softc *sc, u_int32_t pc, u_int32_t data)
{
 emuxki_write(sc, 0,
  (sc->sc_flags & 0x0002 ?
   0x600 : 0x400) + pc,
   data);
}
void
emuxki_dsp_addop(struct emuxki_softc *sc, u_int16_t *pc, u_int8_t op,
    u_int16_t r, u_int16_t a, u_int16_t x, u_int16_t y)
{
 if (sc->sc_flags & 0x0002) {
  emuxki_write_micro(sc, *pc << 1,
   ((x << 12) & 0x007ff000) |
   (y & 0x000007ff));
  emuxki_write_micro(sc, (*pc << 1) + 1,
   ((op << 24) & 0x0f000000) |
   ((r << 12) & 0x007ff000) |
   (a & 0x000007ff));
 } else {
  emuxki_write_micro(sc, *pc << 1,
   ((x << 10) & 0x000ffc00) |
   (y & 0x000003ff));
  emuxki_write_micro(sc, (*pc << 1) + 1,
   ((op << 20) & 0x00f00000) |
   ((r << 10) & 0x000ffc00) |
   (a & 0x000003ff));
 }
 (*pc)++;
}
void
emuxki_initfx(struct emuxki_softc *sc)
{
 u_int16_t pc;
 for (pc = 0; pc < 256; pc++)
  emuxki_write(sc, 0, (0x100 + pc), 0);
 for (pc = 0; pc < 160; pc++) {
  emuxki_write(sc, 0, 0x200 + pc, 0);
  emuxki_write(sc, 0, 0x300 + pc, 0);
 }
 pc = 0;
 if (sc->sc_flags & 0x0002) {
  emuxki_dsp_addop(sc, &pc, 0x4,
      ((0x060 + (4 << 1))),
      (0xc0 + 0),
      (0), (0xc0 + 4));
  emuxki_dsp_addop(sc, &pc, 0x4,
      (((0x060 + (4 << 1)) + 1)),
      (0xc0 + 0),
      (1), (0xc0 + 4));
  emuxki_dsp_addop(sc, &pc, 0x6,
      ((0x060 + (11 << 1))),
      ((0x040 + (0 << 1))),
      (0xc0 + 0), (0xc0 + 0));
  emuxki_dsp_addop(sc, &pc, 0x6,
      (((0x060 + (11 << 1)) + 1)),
      (((0x040 + (0 << 1)) + 1)),
      (0xc0 + 0), (0xc0 + 0));
  while (pc < 512)
   emuxki_dsp_addop(sc, &pc, 0x6,
       (0xc0 + 0), (0xc0 + 0),
       (0xc0 + 0), (0xc0 + 0));
  emuxki_write(sc, 0, 0x53, 0);
 } else {
  emuxki_dsp_addop(sc, &pc, 0x4,
      ((0x020 + (0 << 1))),
      (0x40 + 0),
      (0), (0x40 + 4));
  emuxki_dsp_addop(sc, &pc, 0x4,
      (((0x020 + (0 << 1)) + 1)),
      (0x40 + 0),
      (1), (0x40 + 4));
  emuxki_dsp_addop(sc, &pc, 0x6,
      ((0x020 + (5 << 1))),
      ((0x010 + (0 << 1))),
      (0x40 + 0), (0x40 + 0));
  emuxki_dsp_addop(sc, &pc, 0x6,
      (((0x020 + (5 << 1)) + 1)),
      (((0x010 + (0 << 1)) + 1)),
      (0x40 + 0), (0x40 + 0));
  while (pc < 512)
   emuxki_dsp_addop(sc, &pc, 0x6,
       (0x40 + 0), (0x40 + 0),
       (0x40 + 0), (0x40 + 0));
  emuxki_write(sc, 0, 0x52, 0);
 }
}
int
emuxki_init(struct emuxki_softc *sc, int resuming)
{
 u_int16_t i;
 u_int32_t spcs, *ptb;
 bus_addr_t silentpage;
 emuxki_write(sc, 0, 0x58, 0);
 emuxki_write(sc, 0, 0x59, 0);
 emuxki_write(sc, 0, 0x5c, 0);
 emuxki_write(sc, 0, 0x5d, 0);
 emuxki_write(sc, 0, 0x49, 0x00000000);
 emuxki_write(sc, 0, 0x45, 0);
 emuxki_write(sc, 0, 0x4b, 0x00000000);
 emuxki_write(sc, 0, 0x47, 0);
 emuxki_write(sc, 0, 0x4a, 0x00000000);
 emuxki_write(sc, 0, 0x46, 0);
        if (sc->sc_flags & 0x0002) {
                emuxki_write(sc, 0, 0x5e, 0x00000f00);
                emuxki_write(sc, 0, 0x5f, 0x00000010 | 0x00000020);
        }
 for (i = 0; i < 64; i++) {
  emuxki_write(sc, i, 0x12, 0);
  emuxki_write(sc, i, 0x18, 0);
  emuxki_write(sc, i, 0x03, 0xffff);
  emuxki_write(sc, i, 0x02, 0xffff);
  emuxki_write(sc, i, 0x01, 0);
  emuxki_write(sc, i, 0x00, 0);
  emuxki_write(sc, i, 0x09, 0);
  emuxki_write(sc, i, 0x06, 0);
  emuxki_write(sc, i, 0x07, 0x10);
  emuxki_write(sc, i, 0x08, 0);
  emuxki_write(sc, i, 0x05, 0);
  emuxki_write(sc, i, 0x04, 0);
  emuxki_write(sc, i, 0x0b, 0x32100000);
  emuxki_write(sc, i, 0x15, 0);
  emuxki_write(sc, i, 0x16, 0);
  emuxki_write(sc, i, 0x19, 0xffff);
  emuxki_write(sc, i, 0x1a, 0);
  emuxki_write(sc, i, 0x1b, 0);
  emuxki_write(sc, i, 0x1c, 24);
  emuxki_write(sc, i, 0x1d, 24);
  emuxki_write(sc, i, 0x1e, 0);
  emuxki_write(sc, i, 0x17, 0);
  emuxki_write(sc, i, 0x13, 0);
  emuxki_write(sc, i, 0x11, 0);
  emuxki_write(sc, i, 0x10, 0);
  emuxki_write(sc, i, 0x14, 0);
 }
 spcs = (0x00000000 | 0x02000000 |
       0x00100000 | 0x00000000 |
  0x00008000 | 0x00001200 |
  0x00000000 | 0x00000000 |
  0x00000004);
 emuxki_write(sc, 0, 0x54, spcs);
 emuxki_write(sc, 0, 0x55, spcs);
 emuxki_write(sc, 0, 0x56, spcs);
 if (sc->sc_flags & 0x0020) {
  u_int32_t tmp;
  tmp = emuxki_read(sc, 0, 0x76) & 0xfffff1ff;
  emuxki_write(sc, 0, 0x76, tmp | 0x400);
  bus_space_write_4(sc->sc_iot, sc->sc_ioh, 0x20, 0x600000);
  bus_space_write_4(sc->sc_iot, sc->sc_ioh, 0x24,
  0x00000004 | 0x00000010);
  bus_space_write_4(sc->sc_iot, sc->sc_ioh, 0x20, 0x7b0000);
  bus_space_write_4(sc->sc_iot, sc->sc_ioh, 0x24, 0xff000000);
  bus_space_write_4(sc->sc_iot, sc->sc_ioh, 0x20, 0x7a0000);
  bus_space_write_4(sc->sc_iot, sc->sc_ioh, 0x24, 0xff000000);
  tmp = bus_space_read_4(sc->sc_iot, sc->sc_ioh, 0x18) & ~0x8;
  bus_space_write_4(sc->sc_iot, sc->sc_ioh, 0x18, tmp);
 } else if(sc->sc_flags & 0x0004) {
                emuxki_write(sc, 0, (((3) << 24) | ((9) << 16) | (0x76)), 0x2);
                bus_space_write_4(sc->sc_iot, sc->sc_ioh, 0x20, 0x600000);
                bus_space_write_4(sc->sc_iot, sc->sc_ioh, 0x24,
                        0x00000004 | 0x00000010);
                bus_space_write_4(sc->sc_iot, sc->sc_ioh, 0x20, 0x6e0000);
                bus_space_write_4(sc->sc_iot, sc->sc_ioh, 0x24, 0xff00ff00);
        }
 emuxki_initfx(sc);
 if (!resuming) {
  if ((sc->ptb = emuxki_dmamem_alloc(sc->sc_dmat,
      ((0x00ffffff + 1) / 4096) * sizeof(u_int32_t),
      4096, 1,
      2, 0x0001)) == ((void *)0))
   return (12);
  if ((sc->silentpage = emuxki_dmamem_alloc(sc->sc_dmat, 4096,
      4096, 1, 2, 0x0001))==((void *)0)){
   emuxki_dmamem_free(sc->ptb, 2);
   return (12);
  }
  __builtin_memset((((void *)((sc->silentpage)->kaddr))), (0), (((sc->silentpage)->size)));
 }
 silentpage = ((sc->silentpage)->segs[0].ds_addr) << 1;
 ptb = ((void *)((sc->ptb)->kaddr));
 for (i = 0; i < ((0x00ffffff + 1) / 4096); i++)
  ptb[i] = (__builtin_constant_p(silentpage | i) ? (__uint32_t)(((__uint32_t)(silentpage | i) & 0xff) << 24 | ((__uint32_t)(silentpage | i) & 0xff00) << 8 | ((__uint32_t)(silentpage | i) & 0xff0000) >> 8 | ((__uint32_t)(silentpage | i) & 0xff000000) >> 24) : __swap32md(silentpage | i));
 emuxki_write(sc, 0, 0x40, ((sc->ptb)->segs[0].ds_addr));
 emuxki_write(sc, 0, 0x44, 0);
 emuxki_write(sc, 0, 0x41, 0);
 silentpage |= 0x00001fff;
 for (i = 0; i < 64; i++) {
  emuxki_write(sc, i, 0x0c, silentpage);
  emuxki_write(sc, i, 0x0d, silentpage);
  sc->channel[i] = ((void *)0);
 }
 if (!resuming) {
  do { ((&(sc->voices))->lh_first) = ((void *)0); } while (0);
 }
 sc->timerstate &= ~1;
 return (0);
}
void
emuxki_shutdown(struct emuxki_softc *sc)
{
 u_int32_t i;
 emuxki_write(sc, 0, 0x58, 0);
 emuxki_write(sc, 0, 0x59, 0);
 emuxki_write(sc, 0, 0x5c, 0);
 emuxki_write(sc, 0, 0x5d, 0);
 for (i = 0; i < 64; i++)
  emuxki_write(sc, i, 0x12, 0);
 for (i = 0; i < 64; i++) {
  emuxki_write(sc, i, 0x03, 0);
  emuxki_write(sc, i, 0x02, 0);
  emuxki_write(sc, i, 0x01, 0);
  emuxki_write(sc, i, 0x00, 0);
 }
 emuxki_write(sc, 0, 0x49, 0x00000000);
 emuxki_write(sc, 0, 0x45, 0);
 emuxki_write(sc, 0, 0x4b, 0x00000000);
 emuxki_write(sc, 0, 0x47, 0);
 if (sc->sc_flags & 0x0002) {
  emuxki_write(sc, 0, 0x74, 0);
  emuxki_write(sc, 0, 0x75, 0);
 } else
  emuxki_write(sc, 0, 0x43, 0);
 emuxki_write(sc, 0, 0x4a, 0x00000000);
 emuxki_write(sc, 0, 0x46, 0);
 emuxki_write(sc, 0, 0x41, 0);
 emuxki_write(sc, 0, 0x44, 0);
 emuxki_write(sc, 0, 0x52, 0x8000);
 emuxki_dmamem_free(sc->silentpage, 2);
 emuxki_dmamem_free(sc->ptb, 2);
}
struct emuxki_mem *
emuxki_mem_new(struct emuxki_softc *sc, int ptbidx,
  size_t size, int type, int flags)
{
 struct emuxki_mem *mem;
 if ((mem = malloc(sizeof(*mem), type, flags)) == ((void *)0))
  return (((void *)0));
 mem->ptbidx = ptbidx;
 if ((mem->dmamem = emuxki_dmamem_alloc(sc->sc_dmat, size,
     4096, 1, type, flags)) == ((void *)0)) {
  free(mem, type, 0);
  return (((void *)0));
 }
 return (mem);
}
void
emuxki_mem_delete(struct emuxki_mem *mem, int type)
{
 emuxki_dmamem_free(mem->dmamem, type);
 free(mem, type, 0);
}
void *
emuxki_pmem_alloc(struct emuxki_softc *sc, size_t size, int type, int flags)
{
 int i, j;
 size_t numblocks;
 struct emuxki_mem *mem;
 u_int32_t *ptb, silentpage;
 ptb = ((void *)((sc->ptb)->kaddr));
 silentpage = ((sc->silentpage)->segs[0].ds_addr) << 1;
 numblocks = size / 4096;
 if (size % 4096)
  numblocks++;
 for (i = 0; i < ((0x00ffffff + 1) / 4096); i++)
  if (((__builtin_constant_p(ptb[i]) ? (__uint32_t)(((__uint32_t)(ptb[i]) & 0xff) << 24 | ((__uint32_t)(ptb[i]) & 0xff00) << 8 | ((__uint32_t)(ptb[i]) & 0xff0000) >> 8 | ((__uint32_t)(ptb[i]) & 0xff000000) >> 24) : __swap32md(ptb[i])) & 0xffffe000) == silentpage) {
   for (j = 0; j < numblocks; j++)
    if (((__builtin_constant_p(ptb[i + j]) ? (__uint32_t)(((__uint32_t)(ptb[i + j]) & 0xff) << 24 | ((__uint32_t)(ptb[i + j]) & 0xff00) << 8 | ((__uint32_t)(ptb[i + j]) & 0xff0000) >> 8 | ((__uint32_t)(ptb[i + j]) & 0xff000000) >> 24) : __swap32md(ptb[i + j]))
        & 0xffffe000)
        != silentpage)
     break;
   if (j == numblocks) {
    if ((mem = emuxki_mem_new(sc, i,
      size, type, flags)) == ((void *)0)) {
     return (((void *)0));
    }
    for (j = 0; j < numblocks; j++)
     ptb[i + j] =
         (__builtin_constant_p((((((mem->dmamem)->segs[0].ds_addr) + j * 4096)) << 1) | (i + j)) ? (__uint32_t)(((__uint32_t)((((((mem->dmamem)->segs[0].ds_addr) + j * 4096)) << 1) | (i + j)) & 0xff) << 24 | ((__uint32_t)((((((mem->dmamem)->segs[0].ds_addr) + j * 4096)) << 1) | (i + j)) & 0xff00) << 8 | ((__uint32_t)((((((mem->dmamem)->segs[0].ds_addr) + j * 4096)) << 1) | (i + j)) & 0xff0000) >> 8 | ((__uint32_t)((((((mem->dmamem)->segs[0].ds_addr) + j * 4096)) << 1) | (i + j)) & 0xff000000) >> 24) : __swap32md((((((mem->dmamem)->segs[0].ds_addr) + j * 4096)) << 1) | (i + j)));
    __mtx_enter(&audio_lock );
    do { if (((mem)->next.le_next = (&(sc->mem))->lh_first) != ((void *)0)) (&(sc->mem))->lh_first->next.le_prev = &(mem)->next.le_next; (&(sc->mem))->lh_first = (mem); (mem)->next.le_prev = &(&(sc->mem))->lh_first; } while (0);
    __mtx_leave(&audio_lock );
    return (((void *)((mem->dmamem)->kaddr)));
   } else
    i += j;
  }
 return (((void *)0));
}
void *
emuxki_rmem_alloc(struct emuxki_softc *sc, size_t size, int type, int flags)
{
 struct emuxki_mem *mem;
 mem = emuxki_mem_new(sc, 0xFFFF, size, type, flags);
 if (mem == ((void *)0))
  return (((void *)0));
 __mtx_enter(&audio_lock );
 do { if (((mem)->next.le_next = (&(sc->mem))->lh_first) != ((void *)0)) (&(sc->mem))->lh_first->next.le_prev = &(mem)->next.le_next; (&(sc->mem))->lh_first = (mem); (mem)->next.le_prev = &(&(sc->mem))->lh_first; } while (0);
 __mtx_leave(&audio_lock );
 return (((void *)((mem->dmamem)->kaddr)));
}
void
emuxki_chanparms_set_defaults(struct emuxki_channel *chan)
{
 chan->fxsend.a.level = chan->fxsend.b.level =
 chan->fxsend.c.level = chan->fxsend.d.level =
 chan->fxsend.e.level = chan->fxsend.f.level =
 chan->fxsend.g.level = chan->fxsend.h.level =
  chan->voice->sc->sc_flags & 0x0002 ?
   0xc0 : 0xff;
 chan->fxsend.a.dest = 0x0;
 chan->fxsend.b.dest = 0x1;
 chan->fxsend.c.dest = 0x2;
 chan->fxsend.d.dest = 0x3;
 chan->fxsend.e.dest = 0x4;
 chan->fxsend.f.dest = 0x5;
 chan->fxsend.g.dest = 0x6;
 chan->fxsend.h.dest = 0x7;
 chan->pitch.initial = 0x0000;
 chan->pitch.current = 0x0000;
 chan->pitch.target = 0x0000;
 chan->pitch.envelope_amount = 0x00;
 chan->initial_attenuation = 0x00;
 chan->volume.current = 0x0000;
 chan->volume.target = 0xffff;
 chan->volume.envelope.current_state = 0x8000;
 chan->volume.envelope.hold_time = 0x7f;
 chan->volume.envelope.attack_time = 0x7F;
 chan->volume.envelope.sustain_level = 0x7F;
 chan->volume.envelope.decay_time = 0x7F;
 chan->filter.initial_cutoff_frequency = 0xff;
 chan->filter.current_cutoff_frequency = 0xffff;
 chan->filter.target_cutoff_frequency = 0xffff;
 chan->filter.lowpass_resonance_height = 0x0;
 chan->filter.interpolation_ROM = 0x1;
 chan->filter.envelope_amount = 0x7f;
 chan->filter.LFO_modulation_depth = 0x00;
 chan->loop.start = 0x000000;
 chan->loop.end = 0x000010;
 chan->modulation.envelope.current_state = 0x8000;
 chan->modulation.envelope.hold_time = 0x00;
 chan->modulation.envelope.attack_time = 0x00;
 chan->modulation.envelope.sustain_level = 0x00;
 chan->modulation.envelope.decay_time = 0x7f;
 chan->modulation.LFO_state = 0x8000;
 chan->vibrato_LFO.state = 0x8000;
 chan->vibrato_LFO.modulation_depth = 0x00;
 chan->vibrato_LFO.vibrato_depth = 0x00;
 chan->vibrato_LFO.frequency = 0x00;
 chan->tremolo_depth = 0x00;
}
struct emuxki_channel *
emuxki_channel_new(struct emuxki_voice *voice, u_int8_t num)
{
 struct emuxki_channel *chan;
 chan = malloc(sizeof(struct emuxki_channel), 2,
     0x0001 | 0x0004);
 if (chan == ((void *)0))
  return (((void *)0));
 chan->voice = voice;
 chan->num = num;
 emuxki_chanparms_set_defaults(chan);
 chan->voice->sc->channel[num] = chan;
 return (chan);
}
void
emuxki_channel_delete(struct emuxki_channel *chan)
{
 chan->voice->sc->channel[chan->num] = ((void *)0);
 free(chan, 2, 0);
}
void
emuxki_channel_set_fxsend(struct emuxki_channel *chan,
      struct emuxki_chanparms_fxsend *fxsend)
{
 chan->fxsend.a.level = fxsend->a.level;
 chan->fxsend.b.level = fxsend->b.level;
 chan->fxsend.c.level = fxsend->c.level;
 chan->fxsend.d.level = fxsend->d.level;
 chan->fxsend.a.dest = fxsend->a.dest;
 chan->fxsend.b.dest = fxsend->b.dest;
 chan->fxsend.c.dest = fxsend->c.dest;
 chan->fxsend.d.dest = fxsend->d.dest;
 chan->fxsend.e.level = fxsend->e.level;
 chan->fxsend.f.level = fxsend->f.level;
 chan->fxsend.g.level = fxsend->g.level;
 chan->fxsend.h.level = fxsend->h.level;
 chan->fxsend.e.dest = fxsend->e.dest;
 chan->fxsend.f.dest = fxsend->f.dest;
 chan->fxsend.g.dest = fxsend->g.dest;
 chan->fxsend.h.dest = fxsend->h.dest;
}
void
emuxki_channel_set_srate(struct emuxki_channel *chan, u_int32_t srate)
{
 chan->pitch.target = (srate << 8) / 375;
 chan->pitch.target = (chan->pitch.target >> 1) +
  (chan->pitch.target & 1);
 chan->pitch.target &= 0xffff;
 chan->pitch.current = chan->pitch.target;
 chan->pitch.initial =
  (emuxki_rate_to_pitch(srate) >> 8) & 0x0000ffff;
}
void
emuxki_channel_set_bufparms(struct emuxki_channel *chan,
        u_int32_t start, u_int32_t end)
{
 chan->loop.start = start & 0x00ffffff;
 chan->loop.end = end & 0x00ffffff;
}
void
emuxki_channel_commit_fx(struct emuxki_channel *chan)
{
 struct emuxki_softc *sc = chan->voice->sc;
        u_int8_t chano = chan->num;
        if (sc->sc_flags & 0x0002) {
                emuxki_write(sc, chano, 0x7e,
                              (chan->fxsend.d.dest << 24) |
                              (chan->fxsend.c.dest << 16) |
                              (chan->fxsend.b.dest << 8) |
                              (chan->fxsend.a.dest));
                emuxki_write(sc, chano, 0x7c,
                              (chan->fxsend.h.dest << 24) |
                              (chan->fxsend.g.dest << 16) |
                              (chan->fxsend.f.dest << 8) |
                              (chan->fxsend.e.dest));
                emuxki_write(sc, chano, 0x7d,
                              (chan->fxsend.e.level << 24) |
                              (chan->fxsend.f.level << 16) |
                              (chan->fxsend.g.level << 8) |
                              (chan->fxsend.h.level));
        } else {
                emuxki_write(sc, chano, 0x0b,
                              (chan->fxsend.d.dest << 28) |
                              (chan->fxsend.c.dest << 24) |
                              (chan->fxsend.b.dest << 20) |
                              (chan->fxsend.a.dest << 16));
        }
        emuxki_write(sc, chano, 0x10000000 | 0x01,
                      (chan->fxsend.a.level << 8) | chan->fxsend.b.level);
        emuxki_write(sc, chano, 0x07,
                      (chan->fxsend.d.level << 24) | chan->loop.end);
        emuxki_write(sc, chano, 0x06,
                      (chan->fxsend.c.level << 24) | chan->loop.start);
}
void
emuxki_channel_commit_parms(struct emuxki_channel *chan)
{
 struct emuxki_voice *voice = chan->voice;
 struct emuxki_softc *sc = voice->sc;
 u_int32_t start, mapval;
 u_int8_t chano = chan->num;
 start = chan->loop.start +
  (voice->stereo ? 28 : 30) * (voice->b16 + 1);
 mapval = ((sc->silentpage)->segs[0].ds_addr) << 1 | 0x00001fff;
 __mtx_enter(&audio_lock );
 emuxki_write(sc, chano, (((1) << 24) | ((15) << 16) | (0x00)), voice->stereo);
 emuxki_channel_commit_fx(chan);
 emuxki_write(sc, chano, 0x08,
  (chan->filter.lowpass_resonance_height << 28) |
  (chan->filter.interpolation_ROM << 25) |
  (voice->b16 ? 0 : 0x01000000) | start);
 emuxki_write(sc, chano, 0x05, 0);
 emuxki_write(sc, chano, 0x04, 0);
 emuxki_write(sc, chano, 0x0c, mapval);
 emuxki_write(sc, chano, 0x0d, mapval);
 emuxki_write(sc, chano, (((16) << 24) | ((0) << 16) | (0x02)),
  chan->filter.current_cutoff_frequency);
 emuxki_write(sc, chano, (((16) << 24) | ((0) << 16) | (0x03)),
  chan->filter.target_cutoff_frequency);
 emuxki_write(sc, chano, 0x15,
  (chan->modulation.envelope.hold_time << 8) |
  chan->modulation.envelope.attack_time);
 emuxki_write(sc, chano, 0x16,
  (chan->modulation.envelope.sustain_level << 8) |
  chan->modulation.envelope.decay_time);
 emuxki_write(sc, chano, 0x13,
  chan->modulation.LFO_state);
 emuxki_write(sc, chano, 0x17,
  chan->vibrato_LFO.state);
 emuxki_write(sc, chano, 0x1b,
  (chan->vibrato_LFO.modulation_depth << 8) |
  chan->filter.LFO_modulation_depth);
 emuxki_write(sc, chano, 0x1c,
  (chan->tremolo_depth << 8));
 emuxki_write(sc, chano, 0x1d,
  (chan->vibrato_LFO.vibrato_depth << 8) |
  chan->vibrato_LFO.frequency);
 emuxki_write(sc, chano, 0x14,
  chan->modulation.envelope.current_state);
 emuxki_write(sc, chano, 0x11,
  (chan->volume.envelope.hold_time << 8) |
  chan->volume.envelope.attack_time);
 emuxki_write(sc, chano, 0x10,
  chan->volume.envelope.current_state);
 emuxki_write(sc, chano, 0x1a,
  (chan->pitch.envelope_amount << 8) |
  chan->filter.envelope_amount);
 __mtx_leave(&audio_lock );
}
void
emuxki_channel_start(struct emuxki_channel *chan)
{
 struct emuxki_voice *voice = chan->voice;
 struct emuxki_softc *sc = voice->sc;
 u_int8_t cache_sample, cache_invalid_size, chano = chan->num;
 u_int32_t sample;
 cache_sample = voice->stereo ? 4 : 2;
 sample = voice->b16 ? 0x00000000 : 0x80808080;
 cache_invalid_size = (voice->stereo ? 28 : 30) * (voice->b16 + 1);
 while (cache_sample--) {
  emuxki_write(sc, chano, 0x20 + cache_sample,
   sample);
 }
 emuxki_write(sc, chano, (((7) << 24) | ((25) << 16) | (0x09)), 0);
 emuxki_write(sc, chano, (((6) << 24) | ((16) << 16) | (0x09)), 64);
 emuxki_write(sc, chano, (((7) << 24) | ((25) << 16) | (0x09)),
  cache_invalid_size);
 emuxki_write(sc, chano, 0x19,
  (chan->filter.target_cutoff_frequency << 8) |
  chan->initial_attenuation);
 emuxki_write(sc, chano, (((16) << 24) | ((16) << 16) | (0x03)),
  chan->volume.target);
 emuxki_write(sc, chano, (((16) << 24) | ((16) << 16) | (0x02)),
  chan->volume.current);
 emuxki_write(sc, 0,
  (((1) << 24) | ((chano) << 16) | (0x5c + (chano >> 5))),
  0);
 emuxki_write(sc, 0,
  (((1) << 24) | ((chano) << 16) | (0x58 + (chano >> 5))),
  0);
 emuxki_write(sc, chano, 0x12,
  (chan->volume.envelope.sustain_level << 8) |
  chan->volume.envelope.decay_time);
 emuxki_write(sc, chano, (((16) << 24) | ((16) << 16) | (0x01)),
  chan->pitch.target);
 emuxki_write(sc, chano, (((16) << 24) | ((16) << 16) | (0x00)),
  chan->pitch.current);
 emuxki_write(sc, chano, 0x18, chan->pitch.initial);
}
void
emuxki_channel_stop(struct emuxki_channel *chan)
{
 u_int8_t chano = chan->num;
 struct emuxki_softc *sc = chan->voice->sc;
 emuxki_write(sc, chano, (((16) << 24) | ((16) << 16) | (0x01)), 0);
 emuxki_write(sc, chano, (((16) << 24) | ((16) << 16) | (0x00)), 0);
 emuxki_write(sc, chano, (((8) << 24) | ((0) << 16) | (0x19)), 0xff);
 emuxki_write(sc, chano, (((16) << 24) | ((16) << 16) | (0x03)), 0);
 emuxki_write(sc, chano, (((16) << 24) | ((16) << 16) | (0x02)), 0);
 emuxki_write(sc, chano, 0x18, 0);
}
int
emuxki_voice_channel_create(struct emuxki_voice *voice)
{
 struct emuxki_channel **channel = voice->sc->channel;
 u_int8_t i, stereo = voice->stereo;
 for (i = 0; i < 64; i += stereo + 1) {
  if ((stereo && (channel[i + 1] != ((void *)0))) ||
      (channel[i] != ((void *)0)))
   continue;
  if (stereo) {
   voice->dataloc.chan[1] =
    emuxki_channel_new(voice, i + 1);
   if (voice->dataloc.chan[1] == ((void *)0)) {
    return (12);
   }
  }
  voice->dataloc.chan[0] = emuxki_channel_new(voice, i);
  if (voice->dataloc.chan[0] == ((void *)0)) {
   if (stereo) {
    emuxki_channel_delete(voice->dataloc.chan[1]);
    voice->dataloc.chan[1] = ((void *)0);
   }
   return (12);
  }
  return (0);
 }
 return (35);
}
void
emuxki_voice_channel_destroy(struct emuxki_voice *voice)
{
 emuxki_channel_delete(voice->dataloc.chan[0]);
 voice->dataloc.chan[0] = ((void *)0);
 if (voice->stereo)
  emuxki_channel_delete(voice->dataloc.chan[1]);
 voice->dataloc.chan[1] = ((void *)0);
}
int
emuxki_recsrc_reserve(struct emuxki_voice *voice, emuxki_recsrc_t source)
{
 if (source >= 3) {
  return (22);
 }
 if (voice->sc->recsrc[source] == voice)
  return (0);
 if (voice->sc->recsrc[source] != ((void *)0))
  return (16);
 voice->sc->recsrc[source] = voice;
 return (0);
}
void
emuxki_voice_recsrc_release(struct emuxki_softc *sc, emuxki_recsrc_t source)
{
 sc->recsrc[source] = ((void *)0);
}
int
emuxki_voice_dataloc_create(struct emuxki_voice *voice)
{
 int error;
 if (voice->use & (1 << 0)) {
  if ((error = emuxki_voice_channel_create(voice)))
   return (error);
 } else {
  if ((error =
      emuxki_recsrc_reserve(voice, voice->dataloc.source)))
   return (error);
 }
 return (0);
}
void
emuxki_voice_dataloc_destroy(struct emuxki_voice *voice)
{
 if (voice->use & (1 << 0)) {
  if (voice->dataloc.chan[0] != ((void *)0))
   emuxki_voice_channel_destroy(voice);
 } else {
  if (voice->dataloc.source != EMU_RECSRC_NOTSET) {
   emuxki_voice_recsrc_release(voice->sc,
           voice->dataloc.source);
   voice->dataloc.source = EMU_RECSRC_NOTSET;
  }
 }
}
struct emuxki_voice *
emuxki_voice_new(struct emuxki_softc *sc, u_int8_t use)
{
 struct emuxki_voice *voice;
 __mtx_enter(&audio_lock );
 voice = sc->lvoice;
 sc->lvoice = ((void *)0);
 __mtx_leave(&audio_lock );
 if (!voice) {
  if (!(voice = malloc(sizeof(*voice), 2, 0x0001)))
   return (((void *)0));
 } else if (voice->use != use)
  emuxki_voice_dataloc_destroy(voice);
 else
  goto skip_initialize;
 voice->sc = sc;
 voice->state = !(1 << 0);
 voice->stereo = 0xFF;
 voice->b16 = 0;
 voice->sample_rate = 0;
 if (use & (1 << 0))
  voice->dataloc.chan[0] = voice->dataloc.chan[1] = ((void *)0);
 else
  voice->dataloc.source = EMU_RECSRC_NOTSET;
 voice->buffer = ((void *)0);
 voice->blksize = 0;
 voice->trigblk = 0;
 voice->blkmod = 0;
 voice->inth = ((void *)0);
 voice->inthparam = ((void *)0);
 voice->use = use;
skip_initialize:
 __mtx_enter(&audio_lock );
 do { if (((voice)->next.le_next = ((&sc->voices))->lh_first) != ((void *)0)) ((&sc->voices))->lh_first->next.le_prev = &(voice)->next.le_next; ((&sc->voices))->lh_first = (voice); (voice)->next.le_prev = &((&sc->voices))->lh_first; } while (0);
 __mtx_leave(&audio_lock );
 return (voice);
}
void
emuxki_voice_delete(struct emuxki_voice *voice)
{
 struct emuxki_softc *sc = voice->sc;
 struct emuxki_voice *lvoice;
 if (voice->state & (1 << 0))
  emuxki_voice_halt(voice);
 __mtx_enter(&audio_lock );
 do { if ((voice)->next.le_next != ((void *)0)) (voice)->next.le_next->next.le_prev = (voice)->next.le_prev; *(voice)->next.le_prev = (voice)->next.le_next; ((voice)->next.le_prev) = ((void *)-1); ((voice)->next.le_next) = ((void *)-1); } while (0);
 lvoice = sc->lvoice;
 sc->lvoice = voice;
 __mtx_leave(&audio_lock );
 if (lvoice) {
  emuxki_voice_dataloc_destroy(lvoice);
  free(lvoice, 2, 0);
 }
}
int
emuxki_voice_set_stereo(struct emuxki_voice *voice, u_int8_t stereo)
{
 int error;
 emuxki_recsrc_t source = 0;
 struct emuxki_chanparms_fxsend fxsend;
 if (! (voice->use & (1 << 0)))
  source = voice->dataloc.source;
 emuxki_voice_dataloc_destroy(voice);
 if (! (voice->use & (1 << 0)))
  voice->dataloc.source = source;
 voice->stereo = stereo;
 if ((error = emuxki_voice_dataloc_create(voice)))
   return (error);
 if (voice->use & (1 << 0)) {
  fxsend.a.dest = 0x0;
  fxsend.b.dest = 0x1;
  fxsend.c.dest = 0x2;
  fxsend.d.dest = 0x3;
  fxsend.e.dest = 0x4;
  fxsend.f.dest = 0x5;
  fxsend.g.dest = 0x6;
  fxsend.h.dest = 0x7;
  if (voice->stereo) {
   fxsend.a.level = fxsend.c.level = 0xc0;
   fxsend.b.level = fxsend.d.level = 0x00;
   fxsend.e.level = fxsend.g.level = 0xc0;
   fxsend.f.level = fxsend.h.level = 0x00;
   emuxki_channel_set_fxsend(voice->dataloc.chan[0],
         &fxsend);
   fxsend.a.level = fxsend.c.level = 0x00;
   fxsend.b.level = fxsend.d.level = 0xc0;
   fxsend.e.level = fxsend.g.level = 0x00;
   fxsend.f.level = fxsend.h.level = 0xc0;
   emuxki_channel_set_fxsend(voice->dataloc.chan[1],
         &fxsend);
  }
 }
 return (0);
}
int
emuxki_voice_set_srate(struct emuxki_voice *voice, u_int32_t srate)
{
 if (voice->use & (1 << 0)) {
  if (srate < 4000)
   srate = 4000;
  if (srate > 48000)
   srate = 48000;
  voice->sample_rate = srate;
  emuxki_channel_set_srate(voice->dataloc.chan[0], srate);
  if (voice->stereo)
   emuxki_channel_set_srate(voice->dataloc.chan[1],
        srate);
 } else {
  if (srate < 8000)
   srate = 8000;
  if (srate > 48000)
   srate = 48000;
  voice->sample_rate = srate;
  if (emuxki_voice_adc_rate(voice) < 0) {
   voice->sample_rate = 0;
   return (22);
  }
 }
 return (0);
}
int
emuxki_voice_set_audioparms(struct emuxki_voice *voice, u_int8_t stereo,
        u_int8_t b16, u_int32_t srate)
{
 int error = 0;
 if (voice == ((void *)0)) {
  return (0);
 }
 if (voice->stereo == stereo && voice->b16 == b16 &&
     voice->sample_rate == srate)
  return (0);
 voice->b16 = b16;
 if ((voice->stereo != stereo) || (voice->sample_rate != srate)) {
  if (voice->stereo != stereo) {
   if ((error = emuxki_voice_set_stereo(voice, stereo)))
    return (error);
  }
  error = emuxki_voice_set_srate(voice, srate);
 }
 return error;
}
int
emuxki_voice_set_bufparms(struct emuxki_voice *voice, void *ptr,
      u_int32_t bufsize, u_int16_t blksize)
{
 struct emuxki_mem *mem;
 struct emuxki_channel **chan;
 u_int32_t start, end;
 u_int8_t sample_size;
 int idx;
 int error = 14;
 for((mem) = ((&voice->sc->mem)->lh_first); (mem)!= ((void *)0); (mem) = ((mem)->next.le_next)) {
  if (((void *)((mem->dmamem)->kaddr)) != ptr)
   continue;
  voice->buffer = mem;
  sample_size = (voice->b16 + 1) * (voice->stereo + 1);
  voice->trigblk = 0;
  voice->blkmod = bufsize / blksize;
  if (bufsize % blksize)
   voice->blkmod++;
  error = 0;
  if (voice->use & (1 << 0)) {
   voice->blksize = blksize / sample_size;
   chan = voice->dataloc.chan;
   start = (mem->ptbidx << 12) / sample_size;
   end = start + bufsize / sample_size;
   emuxki_channel_set_bufparms(chan[0],
           start, end);
   if (voice->stereo)
    emuxki_channel_set_bufparms(chan[1],
         start, end);
   voice->timerate = (u_int32_t) 48000 *
                   voice->blksize / voice->sample_rate;
   if (voice->timerate < 5)
    error = 22;
  } else {
   voice->blksize = blksize;
   for(idx = sizeof(emuxki_recbuf_sz) /
       sizeof(emuxki_recbuf_sz[0]); --idx >= 0;)
    if (emuxki_recbuf_sz[idx] == bufsize)
     break;
   if (idx < 0) {
    return (22);
   }
   __mtx_enter(&audio_lock );
   emuxki_write(voice->sc, 0,
       emuxki_recsrc_szreg[voice->dataloc.source], idx);
   emuxki_write(voice->sc, 0,
       emuxki_recsrc_bufaddrreg[voice->dataloc.source],
       ((mem->dmamem)->segs[0].ds_addr));
   __mtx_leave(&audio_lock );
   voice->timerate = (u_int32_t) 48000 * blksize /
       (voice->sample_rate * sample_size);
   if (voice->timerate < 5) {
    error = 22;
   }
  }
  break;
 }
 return (error);
}
void
emuxki_voice_commit_parms(struct emuxki_voice *voice)
{
 if (voice->use & (1 << 0)) {
  emuxki_channel_commit_parms(voice->dataloc.chan[0]);
  if (voice->stereo)
   emuxki_channel_commit_parms(voice->dataloc.chan[1]);
 }
}
u_int32_t
emuxki_voice_curaddr(struct emuxki_voice *voice)
{
 int idxreg = 0;
 if (voice->use & (1 << 0)) {
  return (emuxki_read(voice->sc,
         voice->dataloc.chan[0]->num,
         (((24) << 24) | ((0) << 16) | (0x08))) -
   voice->dataloc.chan[0]->loop.start);
 } else {
  switch (voice->dataloc.source) {
   case EMU_RECSRC_MIC:
    idxreg = (voice->sc->sc_flags & 0x0002) ?
     0x64 : 0x63;
    break;
   case EMU_RECSRC_ADC:
    idxreg = (voice->sc->sc_flags & 0x0002) ?
     0x63 : 0x64;
    break;
   case EMU_RECSRC_FX:
    idxreg = 0x65;
    break;
   default:
    break;
  }
  return (emuxki_read(voice->sc, 0, (0x10000000|(idxreg)))
    & 0x0000ffff);
 }
 return (0);
}
void
emuxki_resched_timer(struct emuxki_softc *sc)
{
 struct emuxki_voice *voice;
 u_int16_t timerate = 1024;
 u_int8_t active = 0;
 for((voice) = ((&sc->voices)->lh_first); (voice)!= ((void *)0); (voice) = ((voice)->next.le_next)) {
  if ((voice->state & (1 << 0)) == 0)
   continue;
  active = 1;
  if (voice->timerate < timerate)
   timerate = voice->timerate;
 }
 if (timerate & ~0x000003ff)
  timerate = 0;
 bus_space_write_2(sc->sc_iot, sc->sc_ioh, 0x1a, timerate);
 if (!active && (sc->timerstate & 1)) {
  bus_space_write_4(sc->sc_iot, sc->sc_ioh, 0x0c,
   bus_space_read_4(sc->sc_iot, sc->sc_ioh, 0x0c) &
   ~0x00000004);
  sc->timerstate &= ~1;
 } else if (active && !(sc->timerstate & 1)) {
  bus_space_write_4(sc->sc_iot, sc->sc_ioh, 0x0c,
   bus_space_read_4(sc->sc_iot, sc->sc_ioh, 0x0c) |
   0x00000004);
  sc->timerstate |= 1;
 }
}
int
emuxki_voice_adc_rate(struct emuxki_voice *voice)
{
 switch(voice->sample_rate) {
  case 48000:
   return 0x00000000;
   break;
  case 44100:
   return 0x00000001;
   break;
  case 32000:
   return 0x00000002;
   break;
  case 24000:
   return 0x00000003;
   break;
  case 22050:
   return 0x00000004;
   break;
  case 16000:
   return 0x00000005;
   break;
  case 12000:
   if (voice->sc->sc_flags & 0x0002)
    return 0x00000006;
   else {
    return (-1);
   }
   break;
  case 11000:
   if (voice->sc->sc_flags & 0x0002)
    return 0x00000007;
   else
    return 0x00000006;
   break;
  case 8000:
   if (voice->sc->sc_flags & 0x0002)
    return 0x00000008;
   else
    return 0x00000007;
   break;
  default:
    return (-1);
 }
 return (-1);
}
void
emuxki_voice_start(struct emuxki_voice *voice,
      void (*inth) (void *), void *inthparam)
{
 u_int32_t val;
 __mtx_enter(&audio_lock );
 voice->inth = inth;
 voice->inthparam = inthparam;
 if (voice->use & (1 << 0)) {
  voice->trigblk = 1;
  emuxki_channel_start(voice->dataloc.chan[0]);
  if (voice->stereo)
   emuxki_channel_start(voice->dataloc.chan[1]);
 } else {
  voice->trigblk = 1;
  switch (voice->dataloc.source) {
  case EMU_RECSRC_ADC:
   if (voice->sc->sc_flags & 0x0002) {
    val = 0x00000010;
    if (voice->stereo)
     val |= 0x00000020;
   } else {
    val = 0x00000008;
    if (voice->stereo)
     val |= 0x00000010;
   }
   val |= emuxki_voice_adc_rate(voice);
   emuxki_write(voice->sc, 0, 0x42, 0);
   emuxki_write(voice->sc, 0, 0x42, val);
   break;
  case EMU_RECSRC_MIC:
  case EMU_RECSRC_FX:
   printf("unimplemented\n");
   break;
  case EMU_RECSRC_NOTSET:
  default:
   break;
  }
 }
 voice->state |= (1 << 0);
 emuxki_resched_timer(voice->sc);
 __mtx_leave(&audio_lock );
}
void
emuxki_voice_halt(struct emuxki_voice *voice)
{
 __mtx_enter(&audio_lock );
 if (voice->use & (1 << 0)) {
  emuxki_channel_stop(voice->dataloc.chan[0]);
  if (voice->stereo)
   emuxki_channel_stop(voice->dataloc.chan[1]);
 } else {
  switch (voice->dataloc.source) {
  case EMU_RECSRC_ADC:
   emuxki_write(voice->sc, 0, 0x42, 0);
   break;
  case EMU_RECSRC_FX:
  case EMU_RECSRC_MIC:
   printf("unimplemented\n");
   break;
  case EMU_RECSRC_NOTSET:
   printf("Bad dataloc.source\n");
  }
  emuxki_write(voice->sc, 0,
      emuxki_recsrc_szreg[voice->dataloc.source],
      0x00000000);
 }
 voice->state &= ~(1 << 0);
 emuxki_resched_timer(voice->sc);
 __mtx_leave(&audio_lock );
}
int
emuxki_intr(void *arg)
{
 struct emuxki_softc *sc = arg;
 u_int32_t ipr, curblk, us = 0;
 struct emuxki_voice *voice;
 __mtx_enter(&audio_lock );
 while ((ipr = bus_space_read_4(sc->sc_iot, sc->sc_ioh, 0x08))) {
  if (ipr & 0x00000200) {
   for((voice) = ((&sc->voices)->lh_first); (voice)!= ((void *)0); (voice) = ((voice)->next.le_next)) {
    if ((voice->state &
          (1 << 0)) == 0)
     continue;
    curblk = emuxki_voice_curaddr(voice) /
           voice->blksize;
    while ((curblk >= voice->trigblk &&
        curblk < (voice->trigblk + voice->blkmod / 2)) ||
        ((int)voice->trigblk - (int)curblk) >
        (voice->blkmod / 2 + 1)) {
     voice->inth(voice->inthparam);
     voice->trigblk++;
     voice->trigblk %= voice->blkmod;
    }
   }
   us = 1;
  }
  bus_space_write_4(sc->sc_iot, sc->sc_ioh, 0x08, ipr);
 }
 __mtx_leave(&audio_lock );
 return (us);
}
int
emuxki_open(void *addr, int flags)
{
 struct emuxki_softc *sc = addr;
 if (flags & 0x0001) {
  sc->rvoice = emuxki_voice_new(sc, 0 );
  if (sc->rvoice == ((void *)0))
   return (16);
  sc->rvoice->dataloc.source = EMU_RECSRC_ADC;
 }
 if (flags & 0x0002) {
  sc->pvoice = emuxki_voice_new(sc, (1 << 0));
  if (sc->pvoice == ((void *)0)) {
   if (flags & 0x0001)
    emuxki_voice_delete(sc->rvoice);
   return (16);
  }
 }
 return (0);
}
void
emuxki_close(void *addr)
{
 struct emuxki_softc *sc = addr;
 if (sc->rvoice != ((void *)0))
  emuxki_voice_delete(sc->rvoice);
 sc->rvoice = ((void *)0);
 if (sc->pvoice != ((void *)0))
  emuxki_voice_delete(sc->pvoice);
 sc->pvoice = ((void *)0);
}
int
emuxki_set_vparms(struct emuxki_voice *voice, struct audio_params *p)
{
 u_int8_t b16, mode;
 mode = (voice->use & (1 << 0)) ?
  0x01 : 0x02;
 if (p->channels > 2)
  p->channels = 2;
 if (p->precision > 16)
  p->precision = 16;
 if (mode == 0x01)
  b16 = (p->precision == 16);
 else {
  b16 = 1;
  p->precision = 16;
 }
 switch (p->encoding) {
 case 6:
  if (p->precision != 16)
   return 22;
  break;
 case 8:
 case 9:
  if (p->precision != 8)
   return 22;
  break;
 default:
  return (22);
 }
 p->bps = (p->precision) <= 8 ? 1 : ((p->precision) <= 16 ? 2 : 4);
 p->msb = 1;
 return (emuxki_voice_set_audioparms(voice, p->channels == 2,
         b16, p->sample_rate));
}
int
emuxki_set_params(void *addr, int setmode, int usemode,
     struct audio_params *play, struct audio_params *rec)
{
 struct emuxki_softc *sc = addr;
 int mode, error;
 struct audio_params *p;
 for (mode = 0x02; mode != -1;
      mode = mode == 0x02 ? 0x01 : -1) {
  if ((usemode & setmode & mode) == 0)
   continue;
  p = (mode == 0x01) ? play : rec;
  if ((error = emuxki_set_vparms((mode == 0x01) ?
      sc->pvoice : sc->rvoice, p)))
   return (error);
 }
 return (0);
}
int
emuxki_halt_output(void *addr)
{
 struct emuxki_softc *sc = addr;
 if (sc->pvoice == ((void *)0))
  return (6);
 emuxki_voice_halt(sc->pvoice);
 return (0);
}
int
emuxki_halt_input(void *addr)
{
 struct emuxki_softc *sc = addr;
 if (sc->rvoice == ((void *)0))
  return (6);
 emuxki_voice_halt(sc->rvoice);
 return (0);
}
int
emuxki_set_port(void *addr, mixer_ctrl_t *mctl)
{
 struct emuxki_softc *sc = addr;
 return sc->codecif->vtbl->mixer_set_port(sc->codecif, mctl);
}
int
emuxki_get_port(void *addr, mixer_ctrl_t *mctl)
{
 struct emuxki_softc *sc = addr;
 return sc->codecif->vtbl->mixer_get_port(sc->codecif, mctl);
}
int
emuxki_query_devinfo(void *addr, mixer_devinfo_t *minfo)
{
 struct emuxki_softc *sc = addr;
 return sc->codecif->vtbl->query_devinfo(sc->codecif, minfo);
}
void *
emuxki_allocm(void *addr, int direction, size_t size, int type, int flags)
{
 struct emuxki_softc *sc = addr;
 if (direction == 0x01)
  return emuxki_pmem_alloc(sc, size, type, flags);
 else
  return emuxki_rmem_alloc(sc, size, type, flags);
}
void
emuxki_freem(void *addr, void *ptr, int type)
{
 struct emuxki_softc *sc = addr;
 int i;
 struct emuxki_mem *mem;
 size_t numblocks;
 u_int32_t *ptb, silentpage;
 ptb = ((void *)((sc->ptb)->kaddr));
 silentpage = ((sc->silentpage)->segs[0].ds_addr) << 1;
 for((mem) = ((&sc->mem)->lh_first); (mem)!= ((void *)0); (mem) = ((mem)->next.le_next)) {
  if (((void *)((mem->dmamem)->kaddr)) != ptr)
   continue;
  __mtx_enter(&audio_lock );
  if (mem->ptbidx != 0xFFFF) {
   numblocks = ((mem->dmamem)->size) / 4096;
   if (((mem->dmamem)->size) % 4096)
    numblocks++;
   for (i = 0; i < numblocks; i++)
    ptb[mem->ptbidx + i] =
        (__builtin_constant_p(silentpage | (mem->ptbidx + i)) ? (__uint32_t)(((__uint32_t)(silentpage | (mem->ptbidx + i)) & 0xff) << 24 | ((__uint32_t)(silentpage | (mem->ptbidx + i)) & 0xff00) << 8 | ((__uint32_t)(silentpage | (mem->ptbidx + i)) & 0xff0000) >> 8 | ((__uint32_t)(silentpage | (mem->ptbidx + i)) & 0xff000000) >> 24) : __swap32md(silentpage | (mem->ptbidx + i)));
  }
  do { if ((mem)->next.le_next != ((void *)0)) (mem)->next.le_next->next.le_prev = (mem)->next.le_prev; *(mem)->next.le_prev = (mem)->next.le_next; ((mem)->next.le_prev) = ((void *)-1); ((mem)->next.le_next) = ((void *)-1); } while (0);
  __mtx_leave(&audio_lock );
  emuxki_mem_delete(mem, type);
  break;
 }
}
int
emuxki_round_blocksize(void *addr, int blksize)
{
 int bufsize = 65536;
 while (bufsize > blksize)
  bufsize /= 2;
 return bufsize;
}
size_t
emuxki_round_buffersize(void *addr, int direction, size_t bsize)
{
 if (direction == 0x01) {
  if (bsize < 4096)
   bsize = 4096;
  else if (bsize > (4096 * ((0x00ffffff + 1) / 4096)))
   bsize = 4096 * ((0x00ffffff + 1) / 4096);
  else if (bsize % 4096)
   bsize = bsize -
    (bsize % 4096) +
    4096;
 } else {
  int idx;
  for(idx = sizeof(emuxki_recbuf_sz) /
      sizeof(emuxki_recbuf_sz[0]); --idx >= 0; ) {
   if (bsize >= emuxki_recbuf_sz[idx]) {
    bsize = emuxki_recbuf_sz[idx];
    break;
   }
  }
  if (bsize == 0)
   bsize = 384;
 }
 return (bsize);
}
int
emuxki_get_props(void *addr)
{
 return (0x02 | 0x04 |
  0x01);
}
int
emuxki_trigger_output(void *addr, void *start, void *end, int blksize,
         void (*inth) (void *), void *inthparam,
         struct audio_params *params)
{
 struct emuxki_softc *sc = addr;
 struct emuxki_voice *voice = sc->pvoice;
 int error;
 if (voice == ((void *)0))
  return (6);
 if ((error = emuxki_set_vparms(voice, params)))
  return (error);
 if ((error = emuxki_voice_set_bufparms(voice, start,
    (caddr_t)end - (caddr_t)start, blksize)))
  return (error);
 emuxki_voice_commit_parms(voice);
 emuxki_voice_start(voice, inth, inthparam);
 return (0);
}
int
emuxki_trigger_input(void *addr, void *start, void *end, int blksize,
        void (*inth) (void *), void *inthparam,
        struct audio_params *params)
{
 struct emuxki_softc *sc = addr;
 struct emuxki_voice *voice = sc->rvoice;
 int error;
 if (voice == ((void *)0))
  return (6);
 if ((error = emuxki_set_vparms(voice, params)))
  return (error);
 if ((error = emuxki_voice_set_bufparms(voice, start,
      (caddr_t)end - (caddr_t)start,
      blksize)))
  return (error);
 emuxki_voice_start(voice, inth, inthparam);
 return (0);
}
int
emuxki_ac97_attach(void *arg, struct ac97_codec_if *codecif)
{
 struct emuxki_softc *sc = arg;
 sc->codecif = codecif;
 return (0);
}
int
emuxki_ac97_read(void *arg, u_int8_t reg64, u_int16_t *val)
{
 struct emuxki_softc *sc = arg;
 __mtx_enter(&audio_lock );
 bus_space_write_1(sc->sc_iot, sc->sc_ioh, 0x1e, reg64);
 *val = bus_space_read_2(sc->sc_iot, sc->sc_ioh, 0x1c);
 __mtx_leave(&audio_lock );
 return (0);
}
int
emuxki_ac97_write(void *arg, u_int8_t reg64, u_int16_t val)
{
 struct emuxki_softc *sc = arg;
 __mtx_enter(&audio_lock );
 bus_space_write_1(sc->sc_iot, sc->sc_ioh, 0x1e, reg64);
 bus_space_write_2(sc->sc_iot, sc->sc_ioh, 0x1c, val);
 __mtx_leave(&audio_lock );
 return (0);
}
void
emuxki_ac97_reset(void *arg)
{
}
