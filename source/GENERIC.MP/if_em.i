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
int in_up_loopback(struct ifnet *);
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
struct ip {
 u_int ip_v:4,
    ip_hl:4;
 u_int8_t ip_tos;
 u_int16_t ip_len;
 u_int16_t ip_id;
 u_int16_t ip_off;
 u_int8_t ip_ttl;
 u_int8_t ip_p;
 u_int16_t ip_sum;
 struct in_addr ip_src, ip_dst;
};
struct ip_timestamp {
 u_int8_t ipt_code;
 u_int8_t ipt_len;
 u_int8_t ipt_ptr;
 u_int ipt_oflw:4,
   ipt_flg:4;
 union ipt_timestamp {
   u_int32_t ipt_time[1];
   struct ipt_ta {
   struct in_addr ipt_addr;
   u_int32_t ipt_time;
   } ipt_ta[1];
 } ipt_timestamp;
};
struct ippseudo {
 struct in_addr ippseudo_src;
 struct in_addr ippseudo_dst;
 u_int8_t ippseudo_pad;
 u_int8_t ippseudo_p;
 u_int16_t ippseudo_len;
};
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
struct ifnet;
struct ifq_ops;
struct ifqueue {
 struct ifnet *ifq_if;
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
ifq_start(struct ifqueue *ifq)
{
 ifq_serialize(ifq, &ifq->ifq_start);
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
  struct srpl carp_s;
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
 struct timeout if_slowtimo;
 struct task if_watchdogtask;
 struct task if_linkstatetask;
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
typedef u_int32_t tcp_seq;
struct tcphdr {
 u_int16_t th_sport;
 u_int16_t th_dport;
 tcp_seq th_seq;
 tcp_seq th_ack;
 u_int32_t th_off:4,
    th_x2:4;
 u_int8_t th_flags;
 u_int16_t th_win;
 u_int16_t th_sum;
 u_int16_t th_urp;
};
struct udphdr {
 u_int16_t uh_sport;
 u_int16_t uh_dport;
 u_int16_t uh_ulen;
 u_int16_t uh_sum;
};
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
int bpf_tap_hdr(caddr_t, const void *, u_int, const void *, u_int, u_int);
void bpfattach(caddr_t *, struct ifnet *, u_int, u_int);
void bpfdetach(struct ifnet *);
void *bpfsattach(caddr_t *, const char *, u_int, u_int);
void bpfsdetach(void *);
void bpfilterattach(int);
u_int bpf_mfilter(const struct bpf_insn *, const struct mbuf *, u_int);
typedef int boolean_t;
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
struct em_osdep
{
 bus_space_tag_t mem_bus_space_tag;
 bus_space_handle_t mem_bus_space_handle;
 bus_space_tag_t io_bus_space_tag;
 bus_space_handle_t io_bus_space_handle;
 bus_space_tag_t flash_bus_space_tag;
 bus_space_handle_t flash_bus_space_handle;
 struct device *dev;
 struct pci_attach_args em_pa;
 bus_size_t em_memsize;
 bus_addr_t em_membase;
 bus_size_t em_iosize;
 bus_addr_t em_iobase;
 bus_size_t em_flashsize;
 bus_addr_t em_flashbase;
 size_t em_flashoffset;
};
struct em_hw;
struct em_hw_stats;
typedef enum {
    em_undefined = 0,
    em_82542_rev2_0,
    em_82542_rev2_1,
    em_82543,
    em_82544,
    em_82540,
    em_82545,
    em_82545_rev_3,
    em_icp_xxxx,
    em_82546,
    em_82546_rev_3,
    em_82541,
    em_82541_rev_2,
    em_82547,
    em_82547_rev_2,
    em_82571,
    em_82572,
    em_82573,
    em_82574,
    em_82575,
    em_82580,
    em_i350,
    em_i210,
    em_80003es2lan,
    em_ich8lan,
    em_ich9lan,
    em_ich10lan,
    em_pchlan,
    em_pch2lan,
    em_pch_lpt,
    em_pch_spt,
    em_num_macs
} em_mac_type;
typedef enum {
    em_eeprom_uninitialized = 0,
    em_eeprom_spi,
    em_eeprom_microwire,
    em_eeprom_flash,
    em_eeprom_ich8,
    em_eeprom_invm,
    em_eeprom_none,
    em_num_eeprom_types
} em_eeprom_type;
typedef enum {
    em_media_type_copper = 0,
    em_media_type_fiber = 1,
    em_media_type_internal_serdes = 2,
    em_media_type_oem = 3,
    em_num_media_types
} em_media_type;
typedef enum {
    em_10_half = 0,
    em_10_full = 1,
    em_100_half = 2,
    em_100_full = 3
} em_speed_duplex_type;
struct em_shadow_ram {
    uint16_t eeprom_word;
    boolean_t modified;
};
typedef enum {
    em_bus_type_unknown = 0,
    em_bus_type_pci,
    em_bus_type_pcix,
    em_bus_type_pci_express,
    em_bus_type_cpp,
    em_bus_type_reserved
} em_bus_type;
typedef enum {
    em_bus_speed_unknown = 0,
    em_bus_speed_33,
    em_bus_speed_66,
    em_bus_speed_100,
    em_bus_speed_120,
    em_bus_speed_133,
    em_bus_speed_2500,
    em_bus_speed_reserved
} em_bus_speed;
typedef enum {
    em_bus_width_unknown = 0,
    em_bus_width_pciex_1 = 1,
    em_bus_width_pciex_2 = 2,
    em_bus_width_pciex_4 = 4,
    em_bus_width_32,
    em_bus_width_64,
    em_bus_width_reserved
} em_bus_width;
typedef enum {
    em_cable_length_50 = 0,
    em_cable_length_50_80,
    em_cable_length_80_110,
    em_cable_length_110_140,
    em_cable_length_140,
    em_cable_length_undefined = 0xFF
} em_cable_length;
typedef enum {
    em_gg_cable_length_60 = 0,
    em_gg_cable_length_60_115 = 1,
    em_gg_cable_length_115_150 = 2,
    em_gg_cable_length_150 = 4
} em_gg_cable_length;
typedef enum {
    em_igp_cable_length_10 = 10,
    em_igp_cable_length_20 = 20,
    em_igp_cable_length_30 = 30,
    em_igp_cable_length_40 = 40,
    em_igp_cable_length_50 = 50,
    em_igp_cable_length_60 = 60,
    em_igp_cable_length_70 = 70,
    em_igp_cable_length_80 = 80,
    em_igp_cable_length_90 = 90,
    em_igp_cable_length_100 = 100,
    em_igp_cable_length_110 = 110,
    em_igp_cable_length_115 = 115,
    em_igp_cable_length_120 = 120,
    em_igp_cable_length_130 = 130,
    em_igp_cable_length_140 = 140,
    em_igp_cable_length_150 = 150,
    em_igp_cable_length_160 = 160,
    em_igp_cable_length_170 = 170,
    em_igp_cable_length_180 = 180
} em_igp_cable_length;
typedef enum {
    em_10bt_ext_dist_enable_normal = 0,
    em_10bt_ext_dist_enable_lower,
    em_10bt_ext_dist_enable_undefined = 0xFF
} em_10bt_ext_dist_enable;
typedef enum {
    em_rev_polarity_normal = 0,
    em_rev_polarity_reversed,
    em_rev_polarity_undefined = 0xFF
} em_rev_polarity;
typedef enum {
    em_downshift_normal = 0,
    em_downshift_activated,
    em_downshift_undefined = 0xFF
} em_downshift;
typedef enum {
    em_smart_speed_default = 0,
    em_smart_speed_on,
    em_smart_speed_off
} em_smart_speed;
typedef enum {
    em_polarity_reversal_enabled = 0,
    em_polarity_reversal_disabled,
    em_polarity_reversal_undefined = 0xFF
} em_polarity_reversal;
typedef enum {
    em_auto_x_mode_manual_mdi = 0,
    em_auto_x_mode_manual_mdix,
    em_auto_x_mode_auto1,
    em_auto_x_mode_auto2,
    em_auto_x_mode_undefined = 0xFF
} em_auto_x_mode;
typedef enum {
    em_1000t_rx_status_not_ok = 0,
    em_1000t_rx_status_ok,
    em_1000t_rx_status_undefined = 0xFF
} em_1000t_rx_status;
typedef enum {
    em_phy_m88 = 0,
    em_phy_igp,
    em_phy_igp_2,
    em_phy_gg82563,
    em_phy_igp_3,
    em_phy_ife,
    em_phy_bm,
    em_phy_oem,
    em_phy_82577,
    em_phy_82578,
    em_phy_82579,
    em_phy_i217,
    em_phy_82580,
    em_phy_rtl8211,
    em_phy_undefined = 0xFF
} em_phy_type;
typedef enum {
    em_ms_hw_default = 0,
    em_ms_force_master,
    em_ms_force_slave,
    em_ms_auto
} em_ms_type;
typedef enum {
    em_ffe_config_enabled = 0,
    em_ffe_config_active,
    em_ffe_config_blocked
} em_ffe_config;
typedef enum {
    em_dsp_config_disabled = 0,
    em_dsp_config_enabled,
    em_dsp_config_activated,
    em_dsp_config_undefined = 0xFF
} em_dsp_config;
struct em_phy_info {
    em_cable_length cable_length;
    em_10bt_ext_dist_enable extended_10bt_distance;
    em_rev_polarity cable_polarity;
    em_downshift downshift;
    em_polarity_reversal polarity_correction;
    em_auto_x_mode mdix_mode;
    em_1000t_rx_status local_rx;
    em_1000t_rx_status remote_rx;
};
struct em_phy_stats {
    uint32_t idle_errors;
    uint32_t receive_errors;
};
struct em_eeprom_info {
    em_eeprom_type type;
    uint16_t word_size;
    uint16_t opcode_bits;
    uint16_t address_bits;
    uint16_t delay_usec;
    uint16_t page_size;
    boolean_t use_eerd;
    boolean_t use_eewr;
};
typedef enum {
    em_byte_align = 0,
    em_word_align = 1,
    em_dword_align = 2
} em_align_type;
int32_t em_reset_hw(struct em_hw *hw);
int32_t em_init_hw(struct em_hw *hw);
int32_t em_set_mac_type(struct em_hw *hw);
void em_set_media_type(struct em_hw *hw);
int32_t em_setup_link(struct em_hw *hw);
int32_t em_phy_setup_autoneg(struct em_hw *hw);
void em_config_collision_dist(struct em_hw *hw);
int32_t em_check_for_link(struct em_hw *hw);
int32_t em_get_speed_and_duplex(struct em_hw *hw, uint16_t *speed, uint16_t *duplex);
int32_t em_force_mac_fc(struct em_hw *hw);
int32_t em_copper_link_autoneg(struct em_hw *hw);
int32_t em_copper_link_postconfig(struct em_hw *hw);
int32_t em_read_phy_reg(struct em_hw *hw, uint32_t reg_addr, uint16_t *phy_data);
int32_t em_write_phy_reg(struct em_hw *hw, uint32_t reg_addr, uint16_t data);
int32_t em_phy_hw_reset(struct em_hw *hw);
int32_t em_phy_reset(struct em_hw *hw);
int32_t em_phy_get_info(struct em_hw *hw, struct em_phy_info *phy_info);
int32_t em_validate_mdi_setting(struct em_hw *hw);
void em_phy_powerdown_workaround(struct em_hw *hw);
int32_t em_init_eeprom_params(struct em_hw *hw);
uint32_t em_enable_mng_pass_thru(struct em_hw *hw);
struct em_host_mng_command_header {
    uint8_t command_id;
    uint8_t checksum;
    uint16_t reserved1;
    uint16_t reserved2;
    uint16_t command_length;
};
struct em_host_mng_command_info {
    struct em_host_mng_command_header command_header;
    uint8_t command_data[0x6F8];
};
struct em_host_mng_dhcp_cookie{
    uint32_t signature;
    uint8_t status;
    uint8_t reserved0;
    uint16_t vlan_id;
    uint32_t reserved1;
    uint16_t reserved2;
    uint8_t reserved3;
    uint8_t checksum;
};
int32_t em_read_part_num(struct em_hw *hw, uint32_t *part_num);
int32_t em_mng_write_dhcp_info(struct em_hw *hw, uint8_t *buffer,
                                  uint16_t length);
boolean_t em_check_mng_mode(struct em_hw *hw);
boolean_t em_enable_tx_pkt_filtering(struct em_hw *hw);
int32_t em_read_eeprom(struct em_hw *hw, uint16_t reg64, uint16_t words, uint16_t *data);
int32_t em_validate_eeprom_checksum(struct em_hw *hw);
int32_t em_update_eeprom_checksum(struct em_hw *hw);
int32_t em_write_eeprom(struct em_hw *hw, uint16_t reg64, uint16_t words, uint16_t *data);
int32_t em_read_mac_addr(struct em_hw * hw);
boolean_t em_get_flash_presence_i210(struct em_hw *);
void em_mc_addr_list_update(struct em_hw *hw, uint8_t * mc_addr_list, uint32_t mc_addr_count,
    uint32_t pad, uint32_t rar_used_count);
uint32_t em_hash_mc_addr(struct em_hw *hw, uint8_t *mc_addr);
void em_mta_set(struct em_hw *hw, uint32_t hash_value);
void em_rar_set(struct em_hw *hw, uint8_t *mc_addr, uint32_t rar_index);
void em_write_vfta(struct em_hw *hw, uint32_t offset, uint32_t value);
int32_t em_setup_led(struct em_hw *hw);
int32_t em_cleanup_led(struct em_hw *hw);
int32_t em_led_on(struct em_hw *hw);
int32_t em_led_off(struct em_hw *hw);
int32_t em_blink_led_start(struct em_hw *hw);
void em_clear_hw_cntrs(struct em_hw *hw);
void em_reset_adaptive(struct em_hw *hw);
void em_update_adaptive(struct em_hw *hw);
void em_tbi_adjust_stats(struct em_hw *hw, struct em_hw_stats *stats, uint32_t frame_len, uint8_t *mac_addr);
void em_get_bus_info(struct em_hw *hw);
void em_pci_set_mwi(struct em_hw *hw);
void em_pci_clear_mwi(struct em_hw *hw);
void em_read_pci_cfg(struct em_hw *hw, uint32_t reg64, uint16_t *value);
void em_write_pci_cfg(struct em_hw *hw, uint32_t reg64, uint16_t *value);
int32_t em_read_pcie_cap_reg(struct em_hw *hw, uint32_t reg64, uint16_t *value);
int32_t em_disable_pciex_master(struct em_hw *hw);
int32_t em_check_phy_reset_block(struct em_hw *hw);
struct em_rx_desc {
    uint64_t buffer_addr;
    uint16_t length;
    uint16_t csum;
    uint8_t status;
    uint8_t errors;
    uint16_t special;
};
union em_rx_desc_extended {
    struct {
        uint64_t buffer_addr;
        uint64_t reserved;
    } read;
    struct {
        struct {
            uint32_t mrq;
            union {
                uint32_t rss;
                struct {
                    uint16_t ip_id;
                    uint16_t csum;
                } csum_ip;
            } hi_dword;
        } lower;
        struct {
            uint32_t status_error;
            uint16_t length;
            uint16_t vlan;
        } upper;
    } wb;
};
union em_rx_desc_packet_split {
    struct {
        uint64_t buffer_addr[4];
    } read;
    struct {
        struct {
            uint32_t mrq;
            union {
                uint32_t rss;
                struct {
                    uint16_t ip_id;
                    uint16_t csum;
                } csum_ip;
            } hi_dword;
        } lower;
        struct {
            uint32_t status_error;
            uint16_t length0;
            uint16_t vlan;
        } middle;
        struct {
            uint16_t header_status;
            uint16_t length[3];
        } upper;
        uint64_t reserved;
    } wb;
};
struct em_tx_desc {
    uint64_t buffer_addr;
    union {
        uint32_t data;
        struct {
            uint16_t length;
            uint8_t cso;
            uint8_t cmd;
        } flags;
    } lower;
    union {
        uint32_t data;
        struct {
            uint8_t status;
            uint8_t css;
            uint16_t special;
        } fields;
    } upper;
};
struct em_context_desc {
    union {
        uint32_t ip_config;
        struct {
            uint8_t ipcss;
            uint8_t ipcso;
            uint16_t ipcse;
        } ip_fields;
    } lower_setup;
    union {
        uint32_t tcp_config;
        struct {
            uint8_t tucss;
            uint8_t tucso;
            uint16_t tucse;
        } tcp_fields;
    } upper_setup;
    uint32_t cmd_and_length;
    union {
        uint32_t data;
        struct {
            uint8_t status;
            uint8_t hdr_len;
            uint16_t mss;
        } fields;
    } tcp_seg_setup;
};
struct em_data_desc {
    uint64_t buffer_addr;
    union {
        uint32_t data;
        struct {
            uint16_t length;
            uint8_t typ_len_ext;
            uint8_t cmd;
        } flags;
    } lower;
    union {
        uint32_t data;
        struct {
            uint8_t status;
            uint8_t popts;
            uint16_t special;
        } fields;
    } upper;
};
struct em_rar {
    volatile uint32_t low;
    volatile uint32_t high;
};
struct em_ipv4_at_entry {
    volatile uint32_t ipv4_addr;
    volatile uint32_t reserved;
};
struct em_ipv6_at_entry {
    volatile uint8_t ipv6_addr[16];
};
struct em_fflt_entry {
    volatile uint32_t length;
    volatile uint32_t reserved;
};
struct em_ffmt_entry {
    volatile uint32_t mask;
    volatile uint32_t reserved;
};
struct em_ffvt_entry {
    volatile uint32_t value;
    volatile uint32_t reserved;
};
struct em_hw_stats {
    uint64_t crcerrs;
    uint64_t algnerrc;
    uint64_t symerrs;
    uint64_t rxerrc;
    uint64_t mpc;
    uint64_t scc;
    uint64_t ecol;
    uint64_t mcc;
    uint64_t latecol;
    uint64_t colc;
    uint64_t dc;
    uint64_t tncrs;
    uint64_t sec;
    uint64_t cexterr;
    uint64_t rlec;
    uint64_t xonrxc;
    uint64_t xontxc;
    uint64_t xoffrxc;
    uint64_t xofftxc;
    uint64_t fcruc;
    uint64_t prc64;
    uint64_t prc127;
    uint64_t prc255;
    uint64_t prc511;
    uint64_t prc1023;
    uint64_t prc1522;
    uint64_t gprc;
    uint64_t bprc;
    uint64_t mprc;
    uint64_t gptc;
    uint64_t gorcl;
    uint64_t gorch;
    uint64_t gotcl;
    uint64_t gotch;
    uint64_t rnbc;
    uint64_t ruc;
    uint64_t rfc;
    uint64_t roc;
    uint64_t rjc;
    uint64_t mgprc;
    uint64_t mgpdc;
    uint64_t mgptc;
    uint64_t torl;
    uint64_t torh;
    uint64_t totl;
    uint64_t toth;
    uint64_t tpr;
    uint64_t tpt;
    uint64_t ptc64;
    uint64_t ptc127;
    uint64_t ptc255;
    uint64_t ptc511;
    uint64_t ptc1023;
    uint64_t ptc1522;
    uint64_t mptc;
    uint64_t bptc;
    uint64_t tsctc;
    uint64_t tsctfc;
    uint64_t iac;
    uint64_t icrxptc;
    uint64_t icrxatc;
    uint64_t ictxptc;
    uint64_t ictxatc;
    uint64_t ictxqec;
    uint64_t ictxqmtc;
    uint64_t icrxdmtc;
    uint64_t icrxoc;
};
struct em_hw {
    uint8_t *hw_addr;
    uint8_t *flash_address;
    em_mac_type mac_type;
    em_phy_type phy_type;
    uint32_t phy_init_script;
    em_media_type media_type;
    void *back;
    struct em_shadow_ram *eeprom_shadow_ram;
    uint32_t flash_bank_size;
    uint32_t flash_base_addr;
    uint32_t fc;
    em_bus_speed bus_speed;
    em_bus_width bus_width;
    em_bus_type bus_type;
    struct em_eeprom_info eeprom;
    em_ms_type master_slave;
    em_ms_type original_master_slave;
    em_ffe_config ffe_config_state;
    uint32_t asf_firmware_present;
    uint32_t eeprom_semaphore_present;
    uint32_t swfw_sync_present;
    uint32_t swfwhw_semaphore_present;
    unsigned long io_base;
    uint32_t phy_id;
    uint32_t phy_revision;
    uint32_t phy_addr;
    uint32_t original_fc;
    uint32_t txcw;
    uint32_t autoneg_failed;
    uint32_t max_frame_size;
    uint32_t min_frame_size;
    uint32_t mc_filter_type;
    uint32_t num_mc_addrs;
    uint32_t collision_delta;
    uint32_t tx_packet_delta;
    uint32_t ledctl_default;
    uint32_t ledctl_mode1;
    uint32_t ledctl_mode2;
    boolean_t tx_pkt_filtering;
    struct em_host_mng_dhcp_cookie mng_cookie;
    uint16_t phy_spd_default;
    uint16_t autoneg_advertised;
    uint16_t pci_cmd_word;
    uint16_t fc_high_water;
    uint16_t fc_low_water;
    uint16_t fc_pause_time;
    uint16_t current_ifs_val;
    uint16_t ifs_min_val;
    uint16_t ifs_max_val;
    uint16_t ifs_step_size;
    uint16_t ifs_ratio;
    uint16_t device_id;
    uint16_t vendor_id;
    uint16_t subsystem_id;
    uint16_t subsystem_vendor_id;
    uint8_t revision_id;
    uint8_t autoneg;
    uint8_t mdix;
    uint8_t forced_speed_duplex;
    uint8_t wait_autoneg_complete;
    uint8_t dma_fairness;
    uint8_t mac_addr[6];
    uint8_t perm_mac_addr[6];
    boolean_t disable_polarity_correction;
    boolean_t speed_downgraded;
    em_smart_speed smart_speed;
    em_dsp_config dsp_config_state;
    boolean_t get_link_status;
    boolean_t serdes_link_down;
    boolean_t tbi_compatibility_en;
    boolean_t tbi_compatibility_on;
    boolean_t laa_is_present;
    boolean_t phy_reset_disable;
    boolean_t initialize_hw_bits_disable;
    boolean_t fc_send_xon;
    boolean_t fc_strict_ieee;
    boolean_t report_tx_early;
    boolean_t adaptive_ifs;
    boolean_t ifs_params_forced;
    boolean_t in_ifs_mode;
    boolean_t mng_reg_access_disabled;
    boolean_t leave_av_bit_off;
    boolean_t kmrn_lock_loss_workaround_disabled;
    boolean_t icp_xxxx_is_link_up;
    uint32_t icp_xxxx_port_num;
    struct gcu_softc * gcu;
    uint8_t bus_func;
    uint16_t swfw;
    boolean_t eee_enable;
};
typedef enum {
    em_mng_mode_none = 0,
    em_mng_mode_asf,
    em_mng_mode_pt,
    em_mng_mode_ipmi,
    em_mng_mode_host_interface_only
} em_mng_mode;
struct em_host_command_header {
    uint8_t command_id;
    uint8_t command_length;
    uint8_t command_options;
    uint8_t checksum;
};
struct em_host_command_info {
    struct em_host_command_header command_header;
    uint8_t command_data[252];
};
union ich8_hws_flash_status {
    struct ich8_hsfsts {
        uint16_t flcdone :1;
        uint16_t flcerr :1;
        uint16_t dael :1;
        uint16_t berasesz :2;
        uint16_t flcinprog :1;
        uint16_t reserved1 :2;
        uint16_t reserved2 :6;
        uint16_t fldesvalid :1;
        uint16_t flockdn :1;
    } hsf_status;
    uint16_t regval;
};
union ich8_hws_flash_ctrl {
    struct ich8_hsflctl {
        uint16_t flcgo :1;
        uint16_t flcycle :2;
        uint16_t reserved :5;
        uint16_t fldbcount :2;
        uint16_t flockdn :6;
    } hsf_ctrl;
    uint16_t regval;
};
union ich8_hws_flash_regacc {
    struct ich8_flracc {
        uint32_t grra :8;
        uint32_t grwa :8;
        uint32_t gmrag :8;
        uint32_t gmwag :8;
    } hsf_flregacc;
    uint16_t regval;
};
struct em_packet {
 int pkt_eop;
 struct mbuf *pkt_m;
 bus_dmamap_t pkt_map;
};
struct em_dma_alloc {
 caddr_t dma_vaddr;
 bus_dmamap_t dma_map;
 bus_dma_segment_t dma_seg;
 bus_size_t dma_size;
 int dma_nseg;
};
typedef enum _XSUM_CONTEXT_T {
 OFFLOAD_NONE,
 OFFLOAD_TCP_IP,
 OFFLOAD_UDP_IP
} XSUM_CONTEXT_T;
typedef struct _ADDRESS_LENGTH_PAIR
{
 u_int64_t address;
 u_int32_t length;
} ADDRESS_LENGTH_PAIR, *PADDRESS_LENGTH_PAIR;
typedef struct _DESCRIPTOR_PAIR
{
 ADDRESS_LENGTH_PAIR descriptor[4];
 u_int32_t elements;
} DESC_ARRAY, *PDESC_ARRAY;
struct em_softc {
 struct device sc_dev;
 struct arpcom sc_ac;
 bus_dma_tag_t sc_dmat;
 struct em_hw hw;
 struct em_osdep osdep;
 struct ifmedia media;
 int io_rid;
 int legacy_irq;
 void *sc_intrhand;
 struct timeout em_intr_enable;
 struct timeout timer_handle;
 struct timeout tx_fifo_timer_handle;
 u_int32_t part_num;
 u_int8_t link_active;
 u_int16_t link_speed;
 u_int16_t link_duplex;
 u_int32_t smartspeed;
 u_int32_t tx_int_delay;
 u_int32_t tx_abs_int_delay;
 u_int32_t rx_int_delay;
 u_int32_t rx_abs_int_delay;
 XSUM_CONTEXT_T active_checksum_context;
 u_int sc_tx_slots;
 struct em_dma_alloc sc_tx_dma;
 struct em_tx_desc *sc_tx_desc_ring;
 u_int sc_tx_desc_head;
 u_int sc_tx_desc_tail;
 struct em_packet *sc_tx_pkts_ring;
 u_int32_t sc_txd_cmd;
 u_int sc_rx_slots;
 struct if_rxring sc_rx_ring;
 struct em_dma_alloc sc_rx_dma;
 struct em_rx_desc *sc_rx_desc_ring;
 u_int sc_rx_desc_head;
 u_int sc_rx_desc_tail;
 struct em_packet *sc_rx_pkts_ring;
 u_int32_t sc_rx_buffer_len;
 struct mbuf *fmp;
 struct mbuf *lmp;
 unsigned long dropped_pkts;
 unsigned long mbuf_alloc_failed;
 unsigned long mbuf_cluster_failed;
 unsigned long no_tx_desc_avail1;
 unsigned long no_tx_desc_avail2;
 unsigned long no_tx_map_avail;
 unsigned long no_tx_dma_setup;
 unsigned long watchdog_events;
 unsigned long rx_overruns;
 u_int32_t tx_fifo_size;
 u_int32_t tx_fifo_head;
 u_int32_t tx_fifo_head_addr;
 u_int64_t tx_fifo_reset_cnt;
 u_int64_t tx_fifo_wrk_cnt;
 u_int32_t tx_head_addr;
 boolean_t pcix_82544;
 struct em_hw_stats stats;
};
void *em_lookup_gcu(struct device *);
int em_attach_miibus(struct device *self);
int gcu_miibus_readreg(struct em_hw *, int, int);
void gcu_miibus_writereg(struct em_hw *, int, int, int);
void gcu_miibus_statchg(struct device *);
const struct pci_matchid em_devices[] = {
 { 0x8086, 0x1096 },
 { 0x8086, 0x1098 },
 { 0x8086, 0x10ba },
 { 0x8086, 0x10bb },
 { 0x8086, 0x100e },
 { 0x8086, 0x1015 },
 { 0x8086, 0x1017 },
 { 0x8086, 0x1016 },
 { 0x8086, 0x101e },
 { 0x8086, 0x1013 },
 { 0x8086, 0x1018 },
 { 0x8086, 0x1078 },
 { 0x8086, 0x1014 },
 { 0x8086, 0x1076 },
 { 0x8086, 0x107c },
 { 0x8086, 0x1077 },
 { 0x8086, 0x1000 },
 { 0x8086, 0x1004 },
 { 0x8086, 0x1001 },
 { 0x8086, 0x1008 },
 { 0x8086, 0x1009 },
 { 0x8086, 0x100c },
 { 0x8086, 0x100d },
 { 0x8086, 0x100f },
 { 0x8086, 0x1011 },
 { 0x8086, 0x1026 },
 { 0x8086, 0x1027 },
 { 0x8086, 0x1028 },
 { 0x8086, 0x1010 },
 { 0x8086, 0x1012 },
 { 0x8086, 0x101d },
 { 0x8086, 0x1079 },
 { 0x8086, 0x107a },
 { 0x8086, 0x108a },
 { 0x8086, 0x1099 },
 { 0x8086, 0x10b5 },
 { 0x8086, 0x107b },
 { 0x8086, 0x109b },
 { 0x8086, 0x1019 },
 { 0x8086, 0x101a },
 { 0x8086, 0x1075 },
 { 0x8086, 0x10a1 },
 { 0x8086, 0x10a0 },
 { 0x8086, 0x105e },
 { 0x8086, 0x105f },
 { 0x8086, 0x10a4 },
 { 0x8086, 0x10bc },
 { 0x8086, 0x10a5 },
 { 0x8086, 0x1060 },
 { 0x8086, 0x10d9 },
 { 0x8086, 0x10da },
 { 0x8086, 0x10d5 },
 { 0x8086, 0x107d },
 { 0x8086, 0x107e },
 { 0x8086, 0x107f },
 { 0x8086, 0x10b9 },
 { 0x8086, 0x108b },
 { 0x8086, 0x108c },
 { 0x8086, 0x10b3 },
 { 0x8086, 0x109a },
 { 0x8086, 0x10b0 },
 { 0x8086, 0x10b4 },
 { 0x8086, 0x10b2 },
 { 0x8086, 0x10d3 },
 { 0x8086, 0x10f6 },
 { 0x8086, 0x10a7 },
 { 0x8086, 0x10a9 },
 { 0x8086, 0x10d6 },
 { 0x8086, 0x10e2 },
 { 0x8086, 0x10c9 },
 { 0x8086, 0x10e6 },
 { 0x8086, 0x10e7 },
 { 0x8086, 0x10e8 },
 { 0x8086, 0x1526 },
 { 0x8086, 0x150a },
 { 0x8086, 0x1518 },
 { 0x8086, 0x150d },
 { 0x8086, 0x10eb },
 { 0x8086, 0x10ea },
 { 0x8086, 0x10f0 },
 { 0x8086, 0x10ef },
 { 0x8086, 0x1502 },
 { 0x8086, 0x1503 },
 { 0x8086, 0x1533 },
 { 0x8086, 0x1536 },
 { 0x8086, 0x1537 },
 { 0x8086, 0x1538 },
 { 0x8086, 0x157b },
 { 0x8086, 0x157c },
 { 0x8086, 0x1539 },
 { 0x8086, 0x153a },
 { 0x8086, 0x153b },
 { 0x8086, 0x155a },
 { 0x8086, 0x15a0 },
 { 0x8086, 0x15a2 },
 { 0x8086, 0x1559 },
 { 0x8086, 0x15a1 },
 { 0x8086, 0x15a3 },
 { 0x8086, 0x156f },
 { 0x8086, 0x15b7 },
 { 0x8086, 0x15b9 },
 { 0x8086, 0x15d7 },
 { 0x8086, 0x15e3 },
 { 0x8086, 0x1570 },
 { 0x8086, 0x15b8 },
 { 0x8086, 0x15d8 },
 { 0x8086, 0x15d6 },
 { 0x8086, 0x150e },
 { 0x8086, 0x150f },
 { 0x8086, 0x1510 },
 { 0x8086, 0x1511 },
 { 0x8086, 0x1516 },
 { 0x8086, 0x1527 },
 { 0x8086, 0x0438 },
 { 0x8086, 0x043a },
 { 0x8086, 0x043c },
 { 0x8086, 0x0440 },
 { 0x8086, 0x150c },
 { 0x8086, 0x1521 },
 { 0x8086, 0x1522 },
 { 0x8086, 0x1523 },
 { 0x8086, 0x1524 },
 { 0x8086, 0x1f40 },
 { 0x8086, 0x1f45 },
 { 0x8086, 0x1f41 },
 { 0x8086, 0x1501 },
 { 0x8086, 0x104c },
 { 0x8086, 0x10c5 },
 { 0x8086, 0x10c4 },
 { 0x8086, 0x104a },
 { 0x8086, 0x104b },
 { 0x8086, 0x104d },
 { 0x8086, 0x1049 },
 { 0x8086, 0x10e5 },
 { 0x8086, 0x10c0 },
 { 0x8086, 0x10c2 },
 { 0x8086, 0x10c3 },
 { 0x8086, 0x10bd },
 { 0x8086, 0x294c },
 { 0x8086, 0x10bf },
 { 0x8086, 0x10f5 },
 { 0x8086, 0x10cb },
 { 0x8086, 0x10df },
 { 0x8086, 0x10de },
 { 0x8086, 0x10cd },
 { 0x8086, 0x10cc },
 { 0x8086, 0x10ce },
 { 0x8086, 0x5040 },
 { 0x8086, 0x5044 },
 { 0x8086, 0x5048 },
 { 0x8086, 0x5041 },
 { 0x8086, 0x5045 },
 { 0x8086, 0x5049 }
};
int em_probe(struct device *, void *, void *);
void em_attach(struct device *, struct device *, void *);
void em_defer_attach(struct device*);
int em_detach(struct device *, int);
int em_activate(struct device *, int);
int em_intr(void *);
void em_start(struct ifqueue *);
int em_ioctl(struct ifnet *, u_long, caddr_t);
void em_watchdog(struct ifnet *);
void em_init(void *);
void em_stop(void *, int);
void em_media_status(struct ifnet *, struct ifmediareq *);
int em_media_change(struct ifnet *);
uint64_t em_flowstatus(struct em_softc *);
void em_identify_hardware(struct em_softc *);
int em_allocate_pci_resources(struct em_softc *);
void em_free_pci_resources(struct em_softc *);
void em_local_timer(void *);
int em_hardware_init(struct em_softc *);
void em_setup_interface(struct em_softc *);
int em_setup_transmit_structures(struct em_softc *);
void em_initialize_transmit_unit(struct em_softc *);
int em_setup_receive_structures(struct em_softc *);
void em_initialize_receive_unit(struct em_softc *);
void em_enable_intr(struct em_softc *);
void em_disable_intr(struct em_softc *);
void em_free_transmit_structures(struct em_softc *);
void em_free_receive_structures(struct em_softc *);
void em_update_stats_counters(struct em_softc *);
void em_disable_aspm(struct em_softc *);
void em_txeof(struct em_softc *);
int em_allocate_receive_structures(struct em_softc *);
int em_allocate_transmit_structures(struct em_softc *);
int em_rxfill(struct em_softc *);
int em_rxeof(struct em_softc *);
void em_receive_checksum(struct em_softc *, struct em_rx_desc *,
    struct mbuf *);
u_int em_transmit_checksum_setup(struct em_softc *, struct mbuf *, u_int,
     u_int32_t *, u_int32_t *);
void em_iff(struct em_softc *);
void em_update_link_status(struct em_softc *);
int em_get_buf(struct em_softc *, int);
void em_enable_hw_vlans(struct em_softc *);
u_int em_encap(struct em_softc *, struct mbuf *);
void em_smartspeed(struct em_softc *);
int em_82547_fifo_workaround(struct em_softc *, int);
void em_82547_update_fifo_head(struct em_softc *, int);
int em_82547_tx_fifo_reset(struct em_softc *);
void em_82547_move_tail(void *arg);
void em_82547_move_tail_locked(struct em_softc *);
int em_dma_malloc(struct em_softc *, bus_size_t, struct em_dma_alloc *);
void em_dma_free(struct em_softc *, struct em_dma_alloc *);
u_int32_t em_fill_descriptors(u_int64_t address, u_int32_t length,
         PDESC_ARRAY desc_array);
void em_flush_tx_ring(struct em_softc *);
void em_flush_rx_ring(struct em_softc *);
void em_flush_desc_rings(struct em_softc *);
struct cfattach em_ca = {
 sizeof(struct em_softc), em_probe, em_attach, em_detach,
 em_activate
};
struct cfdriver em_cd = {
 ((void *)0), "em", DV_IFNET
};
static int em_smart_pwr_down = 0;
int
em_probe(struct device *parent, void *match, void *aux)
{
 if (0) printf("em_probe: begin" "\n");
 return (pci_matchbyid((struct pci_attach_args *)aux, em_devices,
     (sizeof((em_devices)) / sizeof((em_devices)[0]))));
}
void
em_defer_attach(struct device *self)
{
 struct em_softc *sc = (struct em_softc *)self;
 struct pci_attach_args *pa = &sc->osdep.em_pa;
 pci_chipset_tag_t pc = pa->pa_pc;
 void *gcu;
 if (0) printf("em_defer_attach: begin" "\n");
 if ((gcu = em_lookup_gcu(self)) == 0) {
  printf("%s: No GCU found, defered attachment failed\n",
      ((sc)->sc_dev.dv_xname));
  if (sc->sc_intrhand)
   pci_intr_disestablish(pc, sc->sc_intrhand);
  sc->sc_intrhand = 0;
  em_stop(sc, 1);
  em_free_pci_resources(sc);
  sc->sc_rx_desc_ring = ((void *)0);
  em_dma_free(sc, &sc->sc_rx_dma);
  sc->sc_tx_desc_ring = ((void *)0);
  em_dma_free(sc, &sc->sc_tx_dma);
  return;
 }
 sc->hw.gcu = gcu;
 em_attach_miibus(self);
 em_setup_interface(sc);
 em_setup_link(&sc->hw);
 em_update_link_status(sc);
}
void
em_attach(struct device *parent, struct device *self, void *aux)
{
 struct pci_attach_args *pa = aux;
 struct em_softc *sc;
 int defer = 0;
 if (0) printf("em_attach: begin" "\n");
 sc = (struct em_softc *)self;
 sc->sc_dmat = pa->pa_dmat;
 sc->osdep.em_pa = *pa;
 timeout_set(&sc->timer_handle, em_local_timer, sc);
 timeout_set(&sc->tx_fifo_timer_handle, em_82547_move_tail, sc);
 em_identify_hardware(sc);
 if (sc->hw.mac_type <= em_82572)
  sc->osdep.em_pa.pa_flags &= ~0x20;
 if (sc->hw.mac_type >= em_82544) {
  sc->sc_tx_slots = 512;
  sc->sc_rx_slots = 256;
 } else {
  sc->sc_tx_slots = 256;
  sc->sc_rx_slots = 256;
 }
 sc->tx_int_delay = 64;
 sc->tx_abs_int_delay = 64;
 sc->rx_int_delay = 0;
 sc->rx_abs_int_delay = 64;
 sc->hw.autoneg = 1;
 sc->hw.wait_autoneg_complete = 0;
 sc->hw.autoneg_advertised = (0x0001 | 0x0002 | 0x0004 | 0x0008 | 0x0020);
 sc->hw.tbi_compatibility_en = 1;
 sc->sc_rx_buffer_len = 2048;
 sc->hw.phy_init_script = 1;
 sc->hw.phy_reset_disable = 0;
 sc->hw.master_slave = em_ms_hw_default;
 sc->hw.report_tx_early = 1;
 if (em_allocate_pci_resources(sc))
  goto err_pci;
 em_init_eeprom_params(&sc->hw);
 switch (sc->hw.mac_type) {
  case em_82573:
  {
   uint16_t eeprom_data = 0;
   em_read_eeprom(&sc->hw, 0x001A,
       1, &eeprom_data);
   if (eeprom_data & 0x000C) {
    sc->hw.max_frame_size = 1518;
    break;
   }
  }
  case em_82571:
  case em_82572:
  case em_82574:
  case em_82575:
  case em_82580:
  case em_i210:
  case em_i350:
  case em_ich9lan:
  case em_ich10lan:
  case em_pch2lan:
  case em_pch_lpt:
  case em_pch_spt:
  case em_80003es2lan:
   sc->hw.max_frame_size = 9234;
   break;
  case em_pchlan:
   sc->hw.max_frame_size = 4096;
   break;
  case em_82542_rev2_0:
  case em_82542_rev2_1:
  case em_ich8lan:
   sc->hw.max_frame_size = 1518;
   break;
  default:
   sc->hw.max_frame_size =
       0x3F00;
 }
 sc->hw.min_frame_size =
     64 + 4;
 if (em_dma_malloc(sc, sc->sc_tx_slots * sizeof(struct em_tx_desc),
     &sc->sc_tx_dma) != 0) {
  printf("%s: Unable to allocate tx_desc memory\n",
         ((sc)->sc_dev.dv_xname));
  goto err_tx_desc;
 }
 sc->sc_tx_desc_ring = (struct em_tx_desc *)sc->sc_tx_dma.dma_vaddr;
 if (em_dma_malloc(sc, sc->sc_rx_slots * sizeof(struct em_rx_desc),
     &sc->sc_rx_dma) != 0) {
  printf("%s: Unable to allocate rx_desc memory\n",
         ((sc)->sc_dev.dv_xname));
  goto err_rx_desc;
 }
 sc->sc_rx_desc_ring = (struct em_rx_desc *)sc->sc_rx_dma.dma_vaddr;
 if ((defer = em_hardware_init(sc))) {
  if (defer == 35)
   config_defer(self, em_defer_attach);
  else {
   printf("%s: Unable to initialize the hardware\n",
       ((sc)->sc_dev.dv_xname));
   goto err_hw_init;
  }
 }
 if (sc->hw.mac_type == em_80003es2lan || sc->hw.mac_type == em_82575 ||
     sc->hw.mac_type == em_82580 || sc->hw.mac_type == em_i210 ||
     sc->hw.mac_type == em_i350) {
  uint32_t reg64 = bus_space_read_4(((struct em_osdep *)(&sc->hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(&sc->hw)->back)->mem_bus_space_handle, 0x00008);
  sc->hw.bus_func = (reg64 & 0x0000000C) >>
      2;
  switch (sc->hw.bus_func) {
  case 0:
   sc->hw.swfw = 0x0002;
   break;
  case 1:
   sc->hw.swfw = 0x0004;
   break;
  case 2:
   sc->hw.swfw = 0x0020;
   break;
  case 3:
   sc->hw.swfw = 0x0040;
   break;
  }
 } else {
  sc->hw.bus_func = 0;
 }
 if (em_read_mac_addr(&sc->hw) < 0) {
  printf("%s: EEPROM read error while reading mac address\n",
         ((sc)->sc_dev.dv_xname));
  goto err_mac_addr;
 }
 __builtin_bcopy((sc->hw.mac_addr), (sc->sc_ac.ac_enaddr), (6));
 if (!defer)
  em_setup_interface(sc);
 em_clear_hw_cntrs(&sc->hw);
 em_update_stats_counters(sc);
 sc->hw.get_link_status = 1;
 if (!defer)
  em_update_link_status(sc);
 printf(", address %s\n", ether_sprintf(sc->sc_ac.ac_enaddr));
 if (em_check_phy_reset_block(&sc->hw))
  printf("%s: PHY reset is blocked due to SOL/IDER session.\n",
      ((sc)->sc_dev.dv_xname));
 em_get_bus_info(&sc->hw);
 if (sc->hw.bus_type == em_bus_type_pcix &&
     sc->hw.mac_type == em_82544)
  sc->pcix_82544 = 1;
        else
  sc->pcix_82544 = 0;
 sc->hw.icp_xxxx_is_link_up = 0;
 if (0) printf("em_attach: end" "\n");
 return;
err_mac_addr:
err_hw_init:
 sc->sc_rx_desc_ring = ((void *)0);
 em_dma_free(sc, &sc->sc_rx_dma);
err_rx_desc:
 sc->sc_tx_desc_ring = ((void *)0);
 em_dma_free(sc, &sc->sc_tx_dma);
err_tx_desc:
err_pci:
 em_free_pci_resources(sc);
}
void
em_start(struct ifqueue *ifq)
{
 struct ifnet *ifp = ifq->ifq_if;
 struct em_softc *sc = ifp->if_softc;
 u_int head, free, used;
 struct mbuf *m;
 int post = 0;
 if (!sc->link_active) {
  ifq_purge(ifq);
  return;
 }
 head = sc->sc_tx_desc_head;
 free = sc->sc_tx_desc_tail;
 if (free <= head)
  free += sc->sc_tx_slots;
 free -= head;
 if (sc->hw.mac_type != em_82547) {
  bus_dmamap_sync(sc->sc_dmat, sc->sc_tx_dma.dma_map,
      0, sc->sc_tx_dma.dma_map->dm_mapsize,
      0x02 | 0x08);
 }
 for (;;) {
  if (64 + 2 > free) {
   ifq_set_oactive(ifq);
   break;
  }
  m = ifq_dequeue(ifq);
  if (m == ((void *)0))
   break;
  used = em_encap(sc, m);
  if (used == 0) {
   m_freem(m);
   continue;
  }
  ((used <= free) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../dev/pci/if_em.c", 634, "used <= free"));
  free -= used;
  if (ifp->if_bpf)
   bpf_mtap_ether(ifp->if_bpf, m, (1<<1));
  ifp->if_timer = 5;
  if (sc->hw.mac_type == em_82547) {
   int len = m->M_dat.MH.MH_pkthdr.len;
   if (sc->link_duplex == 1)
    em_82547_move_tail_locked(sc);
   else {
    bus_space_write_4(((struct em_osdep *)(&sc->hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(&sc->hw)->back)->mem_bus_space_handle, ((&sc->hw)->mac_type >= em_82543 ? 0x03818 : 0x00438), sc->sc_tx_desc_head);
    em_82547_update_fifo_head(sc, len);
   }
  }
  post = 1;
 }
 if (sc->hw.mac_type != em_82547) {
  bus_dmamap_sync(sc->sc_dmat, sc->sc_tx_dma.dma_map,
      0, sc->sc_tx_dma.dma_map->dm_mapsize,
      0x01 | 0x04);
  if (post)
   bus_space_write_4(((struct em_osdep *)(&sc->hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(&sc->hw)->back)->mem_bus_space_handle, ((&sc->hw)->mac_type >= em_82543 ? 0x03818 : 0x00438), sc->sc_tx_desc_head);
 }
}
int
em_ioctl(struct ifnet *ifp, u_long command, caddr_t data)
{
 int error = 0;
 struct ifreq *ifr = (struct ifreq *) data;
 struct em_softc *sc = ifp->if_softc;
 int s;
 s = _splraise(6);
 switch (command) {
 case ((unsigned long)0x80000000 | ((sizeof(struct ifreq) & 0x1fff) << 16) | ((('i')) << 8) | ((12))):
  if (0) printf("ioctl rcv'd: SIOCSIFADDR (Set Interface " "Addr)" "\n");
  if (!(ifp->if_flags & 0x1)) {
   ifp->if_flags |= 0x1;
   em_init(sc);
  }
  break;
 case ((unsigned long)0x80000000 | ((sizeof(struct ifreq) & 0x1fff) << 16) | ((('i')) << 8) | ((16))):
  if (0) printf("ioctl rcv'd: SIOCSIFFLAGS (Set Interface Flags)" "\n");
  if (ifp->if_flags & 0x1) {
   if (ifp->if_flags & 0x40)
    error = 52;
   else
    em_init(sc);
  } else {
   if (ifp->if_flags & 0x40)
    em_stop(sc, 0);
  }
  break;
 case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct ifreq) & 0x1fff) << 16) | ((('i')) << 8) | ((55))):
  if (em_check_phy_reset_block(&sc->hw)) {
   printf("%s: Media change is blocked due to SOL/IDER session.\n",
       ((sc)->sc_dev.dv_xname));
   break;
  }
 case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct ifmediareq) & 0x1fff) << 16) | ((('i')) << 8) | ((56))):
  if (0) printf("ioctl rcv'd: SIOCxIFMEDIA (Get/Set Interface Media)" "\n");
  error = ifmedia_ioctl(ifp, ifr, &sc->media, command);
  break;
 case ((unsigned long)0x80000000 | ((sizeof(struct ifreq) & 0x1fff) << 16) | ((('i')) << 8) | ((170))):
  error = if_rxr_ioctl((struct if_rxrinfo *)ifr->ifr_ifru.ifru_data,
      ((void *)0), (2048 + 2), &sc->sc_rx_ring);
  break;
 default:
  error = ether_ioctl(ifp, &sc->sc_ac, command, data);
 }
 if (error == 52) {
  if (ifp->if_flags & 0x40) {
   em_disable_intr(sc);
   em_iff(sc);
   if (sc->hw.mac_type == em_82542_rev2_0)
    em_initialize_receive_unit(sc);
   em_enable_intr(sc);
  }
  error = 0;
 }
 _splx(s);
 return (error);
}
void
em_watchdog(struct ifnet *ifp)
{
 struct em_softc *sc = ifp->if_softc;
 if (bus_space_read_4(((struct em_osdep *)(&sc->hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(&sc->hw)->back)->mem_bus_space_handle, ((&sc->hw)->mac_type >= em_82543 ? 0x00008 : 0x00008)) & 0x00000010) {
  ifp->if_timer = 5;
  return;
 }
 printf("%s: watchdog: head %u tail %u TDH %u TDT %u\n",
     ((sc)->sc_dev.dv_xname),
     sc->sc_tx_desc_head, sc->sc_tx_desc_tail,
     bus_space_read_4(((struct em_osdep *)(&sc->hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(&sc->hw)->back)->mem_bus_space_handle, ((&sc->hw)->mac_type >= em_82543 ? 0x03810 : 0x00430)), bus_space_read_4(((struct em_osdep *)(&sc->hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(&sc->hw)->back)->mem_bus_space_handle, ((&sc->hw)->mac_type >= em_82543 ? 0x03818 : 0x00438)));
 em_init(sc);
 sc->watchdog_events++;
}
void
em_init(void *arg)
{
 struct em_softc *sc = arg;
 struct ifnet *ifp = &sc->sc_ac.ac_if;
 uint32_t pba;
 int s;
 s = _splraise(6);
 if (0) printf("em_init: begin" "\n");
 em_stop(sc, 0);
 switch (sc->hw.mac_type) {
 case em_82547:
 case em_82547_rev_2:
  if (sc->hw.max_frame_size > 8192)
   pba = 0x0016;
  else
   pba = 0x001E;
  sc->tx_fifo_head = 0;
  sc->tx_head_addr = pba << 7;
  sc->tx_fifo_size = (0x0028 - pba) << 0xA;
  break;
 case em_82571:
 case em_82572:
 case em_82575:
 case em_82580:
 case em_80003es2lan:
 case em_i350:
  pba = 0x0020;
  break;
 case em_i210:
  pba = 0x0022;
  break;
 case em_82573:
  pba = 0x000C;
  break;
 case em_82574:
  pba = 0x0014;
  break;
 case em_ich8lan:
  pba = 0x0008;
  break;
 case em_ich9lan:
 case em_ich10lan:
  if (sc->hw.max_frame_size > 4096)
   pba = 0x000E;
  else
   pba = 0x000A;
  break;
 case em_pchlan:
 case em_pch2lan:
 case em_pch_lpt:
 case em_pch_spt:
  pba = 0x001A;
  break;
 default:
  if (sc->hw.max_frame_size > 8192)
   pba = 0x0028;
  else
   pba = 0x0030;
 }
 if (0) printf("em_init: pba=%dK" "\n", pba);
 bus_space_write_4(((struct em_osdep *)(&sc->hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(&sc->hw)->back)->mem_bus_space_handle, ((&sc->hw)->mac_type >= em_82543 ? 0x01000 : 0x01000), pba);
 __builtin_bcopy((sc->sc_ac.ac_enaddr), (sc->hw.mac_addr), (6));
 if (em_hardware_init(sc)) {
  printf("%s: Unable to initialize the hardware\n",
         ((sc)->sc_dev.dv_xname));
  _splx(s);
  return;
 }
 em_update_link_status(sc);
 bus_space_write_4(((struct em_osdep *)(&sc->hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(&sc->hw)->back)->mem_bus_space_handle, ((&sc->hw)->mac_type >= em_82543 ? 0x00038 : 0x00038), 0x8100);
 if (ifp->if_data.ifi_capabilities & 0x00000020)
  em_enable_hw_vlans(sc);
 if (em_setup_transmit_structures(sc)) {
  printf("%s: Could not setup transmit structures\n",
         ((sc)->sc_dev.dv_xname));
  em_stop(sc, 0);
  _splx(s);
  return;
 }
 em_initialize_transmit_unit(sc);
 if (em_setup_receive_structures(sc)) {
  printf("%s: Could not setup receive structures\n",
         ((sc)->sc_dev.dv_xname));
  em_stop(sc, 0);
  _splx(s);
  return;
 }
 em_initialize_receive_unit(sc);
 em_iff(sc);
 ifp->if_flags |= 0x40;
 ifq_clr_oactive(&ifp->if_snd);
 timeout_add_sec(&sc->timer_handle, 1);
 em_clear_hw_cntrs(&sc->hw);
 em_enable_intr(sc);
 sc->hw.phy_reset_disable = 1;
 _splx(s);
}
int
em_intr(void *arg)
{
 struct em_softc *sc = arg;
 struct ifnet *ifp = &sc->sc_ac.ac_if;
 u_int32_t reg_icr, test_icr;
 test_icr = reg_icr = bus_space_read_4(((struct em_osdep *)(&sc->hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(&sc->hw)->back)->mem_bus_space_handle, ((&sc->hw)->mac_type >= em_82543 ? 0x000C0 : 0x000C0));
 if (sc->hw.mac_type >= em_82571)
  test_icr = (reg_icr & 0x80000000);
 if (!test_icr)
  return (0);
 if (ifp->if_flags & 0x40) {
  em_txeof(sc);
  if (em_rxeof(sc) || ((reg_icr) & (0x00000040))) {
   if (em_rxfill(sc)) {
    bus_space_write_4(((struct em_osdep *)(&sc->hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(&sc->hw)->back)->mem_bus_space_handle, ((&sc->hw)->mac_type >= em_82543 ? 0x02818 : 0x00128), sc->sc_rx_desc_head);
   }
  }
 }
 if (reg_icr & (0x00000008 | 0x00000004)) {
  _kernel_lock("/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../dev/pci/if_em.c", 957);
  sc->hw.get_link_status = 1;
  em_check_for_link(&sc->hw);
  em_update_link_status(sc);
  _kernel_unlock();
 }
 return (1);
}
void
em_media_status(struct ifnet *ifp, struct ifmediareq *ifmr)
{
 struct em_softc *sc = ifp->if_softc;
 uint64_t fiber_type = 11;
 u_int16_t gsr;
 if (0) printf("em_media_status: begin" "\n");
 em_check_for_link(&sc->hw);
 em_update_link_status(sc);
 ifmr->ifm_status = 0x0000000000000001ULL;
 ifmr->ifm_active = 0x0000000000000100ULL;
 if (!sc->link_active) {
  ifmr->ifm_active |= 2ULL;
  return;
 }
 ifmr->ifm_status |= 0x0000000000000002ULL;
 if (sc->hw.media_type == em_media_type_fiber ||
     sc->hw.media_type == em_media_type_internal_serdes) {
  if (sc->hw.mac_type == em_82545)
   fiber_type = 14;
  ifmr->ifm_active |= fiber_type | 0x0000010000000000ULL;
 } else {
  switch (sc->link_speed) {
  case 10:
   ifmr->ifm_active |= 3;
   break;
  case 100:
   ifmr->ifm_active |= 6;
   break;
  case 1000:
   ifmr->ifm_active |= 16;
   break;
  }
  if (sc->link_duplex == 2)
   ifmr->ifm_active |= em_flowstatus(sc) | 0x0000010000000000ULL;
  else
   ifmr->ifm_active |= 0x0000020000000000ULL;
  if (((ifmr->ifm_active) & 0x00000000000000ffULL) == 16) {
   em_read_phy_reg(&sc->hw, 0x0A, &gsr);
   if (gsr & 0x4000)
    ifmr->ifm_active |= 0x0000000000010000ULL;
  }
 }
}
int
em_media_change(struct ifnet *ifp)
{
 struct em_softc *sc = ifp->if_softc;
 struct ifmedia *ifm = &sc->media;
 if (0) printf("em_media_change: begin" "\n");
 if (((ifm->ifm_media) & 0x000000000000ff00ULL) != 0x0000000000000100ULL)
  return (22);
 switch (((ifm->ifm_media) & 0x00000000000000ffULL)) {
 case 0ULL:
  sc->hw.autoneg = 1;
  sc->hw.autoneg_advertised = (0x0001 | 0x0002 | 0x0004 | 0x0008 | 0x0020);
  break;
 case 14:
 case 11:
 case 16:
  sc->hw.autoneg = 1;
  sc->hw.autoneg_advertised = 0x0020;
  break;
 case 6:
  sc->hw.autoneg = 0;
  sc->hw.autoneg_advertised = 0;
  if ((ifm->ifm_media & 0x00ffff0000000000ULL) == 0x0000010000000000ULL)
   sc->hw.forced_speed_duplex = em_100_full;
  else
   sc->hw.forced_speed_duplex = em_100_half;
  break;
 case 3:
  sc->hw.autoneg = 0;
  sc->hw.autoneg_advertised = 0;
  if ((ifm->ifm_media & 0x00ffff0000000000ULL) == 0x0000010000000000ULL)
   sc->hw.forced_speed_duplex = em_10_full;
  else
   sc->hw.forced_speed_duplex = em_10_half;
  break;
 default:
  printf("%s: Unsupported media type\n", ((sc)->sc_dev.dv_xname));
 }
 sc->hw.phy_reset_disable = 0;
 em_init(sc);
 return (0);
}
uint64_t
em_flowstatus(struct em_softc *sc)
{
 u_int16_t ar, lpar;
 if (sc->hw.media_type == em_media_type_fiber ||
     sc->hw.media_type == em_media_type_internal_serdes)
  return (0);
 em_read_phy_reg(&sc->hw, 0x04, &ar);
 em_read_phy_reg(&sc->hw, 0x05, &lpar);
 if ((ar & 0x0400) && (lpar & 0x0400))
  return (0x0000040000000000ULL|0x0000000000040000ULL|0x0000000000020000ULL);
 else if (!(ar & 0x0400) && (ar & 0x0800) &&
  (lpar & 0x0400) && (lpar & 0x0800))
  return (0x0000040000000000ULL|0x0000000000040000ULL);
 else if ((ar & 0x0400) && (ar & 0x0800) &&
  !(lpar & 0x0400) && (lpar & 0x0800))
  return (0x0000040000000000ULL|0x0000000000020000ULL);
 return (0);
}
u_int
em_encap(struct em_softc *sc, struct mbuf *m)
{
 struct em_packet *pkt;
 struct em_tx_desc *desc;
 bus_dmamap_t map;
 u_int32_t txd_upper, txd_lower;
 u_int head, last, used = 0;
 int i, j;
 DESC_ARRAY desc_array;
 u_int32_t array_elements;
 head = sc->sc_tx_desc_head;
 pkt = &sc->sc_tx_pkts_ring[head];
 map = pkt->pkt_map;
 switch (bus_dmamap_load_mbuf(sc->sc_dmat, map, m, 0x0001)) {
 case 0:
  break;
 case 27:
  if (m_defrag(m, 0x0002) == 0 &&
      bus_dmamap_load_mbuf(sc->sc_dmat, map, m,
       0x0001) == 0)
   break;
 default:
  sc->no_tx_dma_setup++;
  return (0);
 }
 bus_dmamap_sync(sc->sc_dmat, map,
     0, map->dm_mapsize,
     0x04);
 if (sc->hw.mac_type == em_82547) {
  bus_dmamap_sync(sc->sc_dmat, sc->sc_tx_dma.dma_map,
      0, sc->sc_tx_dma.dma_map->dm_mapsize,
      0x02 | 0x08);
 }
 if (sc->hw.mac_type >= em_82543 && sc->hw.mac_type != em_82575 &&
     sc->hw.mac_type != em_82580 && sc->hw.mac_type != em_i210 &&
     sc->hw.mac_type != em_i350) {
  used += em_transmit_checksum_setup(sc, m, head,
      &txd_upper, &txd_lower);
 } else {
  txd_upper = txd_lower = 0;
 }
 head += used;
 if (head >= sc->sc_tx_slots)
  head -= sc->sc_tx_slots;
 for (i = 0; i < map->dm_nsegs; i++) {
  if (sc->pcix_82544) {
   array_elements = em_fill_descriptors(
       map->dm_segs[i].ds_addr, map->dm_segs[i].ds_len,
       &desc_array);
   for (j = 0; j < array_elements; j++) {
    desc = &sc->sc_tx_desc_ring[head];
    desc->buffer_addr = (__uint64_t)(__builtin_constant_p(desc_array.descriptor[j].address) ? (__uint64_t)((((__uint64_t)(desc_array.descriptor[j].address) & 0xff) << 56) | ((__uint64_t)(desc_array.descriptor[j].address) & 0xff00ULL) << 40 | ((__uint64_t)(desc_array.descriptor[j].address) & 0xff0000ULL) << 24 | ((__uint64_t)(desc_array.descriptor[j].address) & 0xff000000ULL) << 8 | ((__uint64_t)(desc_array.descriptor[j].address) & 0xff00000000ULL) >> 8 | ((__uint64_t)(desc_array.descriptor[j].address) & 0xff0000000000ULL) >> 24 | ((__uint64_t)(desc_array.descriptor[j].address) & 0xff000000000000ULL) >> 40 | ((__uint64_t)(desc_array.descriptor[j].address) & 0xff00000000000000ULL) >> 56) : __swap64md(desc_array.descriptor[j].address));
    desc->lower.data = (__uint32_t)(__builtin_constant_p((sc->sc_txd_cmd | txd_lower | (u_int16_t)desc_array.descriptor[j].length)) ? (__uint32_t)(((__uint32_t)((sc->sc_txd_cmd | txd_lower | (u_int16_t)desc_array.descriptor[j].length)) & 0xff) << 24 | ((__uint32_t)((sc->sc_txd_cmd | txd_lower | (u_int16_t)desc_array.descriptor[j].length)) & 0xff00) << 8 | ((__uint32_t)((sc->sc_txd_cmd | txd_lower | (u_int16_t)desc_array.descriptor[j].length)) & 0xff0000) >> 8 | ((__uint32_t)((sc->sc_txd_cmd | txd_lower | (u_int16_t)desc_array.descriptor[j].length)) & 0xff000000) >> 24) : __swap32md((sc->sc_txd_cmd | txd_lower | (u_int16_t)desc_array.descriptor[j].length)));
    desc->upper.data = (__uint32_t)(__builtin_constant_p(txd_upper) ? (__uint32_t)(((__uint32_t)(txd_upper) & 0xff) << 24 | ((__uint32_t)(txd_upper) & 0xff00) << 8 | ((__uint32_t)(txd_upper) & 0xff0000) >> 8 | ((__uint32_t)(txd_upper) & 0xff000000) >> 24) : __swap32md(txd_upper));
    last = head;
    if (++head == sc->sc_tx_slots)
     head = 0;
    used++;
   }
  } else {
   desc = &sc->sc_tx_desc_ring[head];
   desc->buffer_addr = (__uint64_t)(__builtin_constant_p(map->dm_segs[i].ds_addr) ? (__uint64_t)((((__uint64_t)(map->dm_segs[i].ds_addr) & 0xff) << 56) | ((__uint64_t)(map->dm_segs[i].ds_addr) & 0xff00ULL) << 40 | ((__uint64_t)(map->dm_segs[i].ds_addr) & 0xff0000ULL) << 24 | ((__uint64_t)(map->dm_segs[i].ds_addr) & 0xff000000ULL) << 8 | ((__uint64_t)(map->dm_segs[i].ds_addr) & 0xff00000000ULL) >> 8 | ((__uint64_t)(map->dm_segs[i].ds_addr) & 0xff0000000000ULL) >> 24 | ((__uint64_t)(map->dm_segs[i].ds_addr) & 0xff000000000000ULL) >> 40 | ((__uint64_t)(map->dm_segs[i].ds_addr) & 0xff00000000000000ULL) >> 56) : __swap64md(map->dm_segs[i].ds_addr));
   desc->lower.data = (__uint32_t)(__builtin_constant_p(sc->sc_txd_cmd | txd_lower | map->dm_segs[i].ds_len) ? (__uint32_t)(((__uint32_t)(sc->sc_txd_cmd | txd_lower | map->dm_segs[i].ds_len) & 0xff) << 24 | ((__uint32_t)(sc->sc_txd_cmd | txd_lower | map->dm_segs[i].ds_len) & 0xff00) << 8 | ((__uint32_t)(sc->sc_txd_cmd | txd_lower | map->dm_segs[i].ds_len) & 0xff0000) >> 8 | ((__uint32_t)(sc->sc_txd_cmd | txd_lower | map->dm_segs[i].ds_len) & 0xff000000) >> 24) : __swap32md(sc->sc_txd_cmd | txd_lower | map->dm_segs[i].ds_len));
   desc->upper.data = (__uint32_t)(__builtin_constant_p(txd_upper) ? (__uint32_t)(((__uint32_t)(txd_upper) & 0xff) << 24 | ((__uint32_t)(txd_upper) & 0xff00) << 8 | ((__uint32_t)(txd_upper) & 0xff0000) >> 8 | ((__uint32_t)(txd_upper) & 0xff000000) >> 24) : __swap32md(txd_upper));
   last = head;
   if (++head == sc->sc_tx_slots)
           head = 0;
   used++;
  }
 }
 if (m->m_hdr.mh_flags & 0x0020) {
  desc->upper.fields.special = (__uint16_t)(__builtin_constant_p(m->M_dat.MH.MH_pkthdr.ether_vtag) ? (__uint16_t)(((__uint16_t)(m->M_dat.MH.MH_pkthdr.ether_vtag) & 0xffU) << 8 | ((__uint16_t)(m->M_dat.MH.MH_pkthdr.ether_vtag) & 0xff00U) >> 8) : __swap16md(m->M_dat.MH.MH_pkthdr.ether_vtag));
  desc->lower.data |= (__uint32_t)(__builtin_constant_p(0x40000000) ? (__uint32_t)(((__uint32_t)(0x40000000) & 0xff) << 24 | ((__uint32_t)(0x40000000) & 0xff00) << 8 | ((__uint32_t)(0x40000000) & 0xff0000) >> 8 | ((__uint32_t)(0x40000000) & 0xff000000) >> 24) : __swap32md(0x40000000));
 }
 pkt->pkt_m = m;
 pkt->pkt_eop = last;
 sc->sc_tx_desc_head = head;
 desc->lower.data |= (__uint32_t)(__builtin_constant_p(0x01000000 | 0x08000000) ? (__uint32_t)(((__uint32_t)(0x01000000 | 0x08000000) & 0xff) << 24 | ((__uint32_t)(0x01000000 | 0x08000000) & 0xff00) << 8 | ((__uint32_t)(0x01000000 | 0x08000000) & 0xff0000) >> 8 | ((__uint32_t)(0x01000000 | 0x08000000) & 0xff000000) >> 24) : __swap32md(0x01000000 | 0x08000000));
 if (sc->hw.mac_type == em_82547) {
  bus_dmamap_sync(sc->sc_dmat, sc->sc_tx_dma.dma_map,
      0, sc->sc_tx_dma.dma_map->dm_mapsize,
      0x01 | 0x04);
 }
 return (used);
}
void
em_82547_move_tail_locked(struct em_softc *sc)
{
 uint16_t hw_tdt;
 uint16_t sw_tdt;
 struct em_tx_desc *tx_desc;
 uint16_t length = 0;
 boolean_t eop = 0;
 hw_tdt = bus_space_read_4(((struct em_osdep *)(&sc->hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(&sc->hw)->back)->mem_bus_space_handle, ((&sc->hw)->mac_type >= em_82543 ? 0x03818 : 0x00438));
 sw_tdt = sc->sc_tx_desc_head;
 while (hw_tdt != sw_tdt) {
  tx_desc = &sc->sc_tx_desc_ring[hw_tdt];
  length += tx_desc->lower.flags.length;
  eop = tx_desc->lower.data & 0x01000000;
  if (++hw_tdt == sc->sc_tx_slots)
   hw_tdt = 0;
  if (eop) {
   if (em_82547_fifo_workaround(sc, length)) {
    sc->tx_fifo_wrk_cnt++;
    timeout_add(&sc->tx_fifo_timer_handle, 1);
    break;
   }
   bus_space_write_4(((struct em_osdep *)(&sc->hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(&sc->hw)->back)->mem_bus_space_handle, ((&sc->hw)->mac_type >= em_82543 ? 0x03818 : 0x00438), hw_tdt);
   em_82547_update_fifo_head(sc, length);
   length = 0;
  }
 }
}
void
em_82547_move_tail(void *arg)
{
 struct em_softc *sc = arg;
 int s;
 s = _splraise(6);
 em_82547_move_tail_locked(sc);
 _splx(s);
}
int
em_82547_fifo_workaround(struct em_softc *sc, int len)
{
 int fifo_space, fifo_pkt_len;
 fifo_pkt_len = (((len + 0x10) + (0x10) - 1) & ~((0x10) - 1));
 if (sc->link_duplex == 1) {
  fifo_space = sc->tx_fifo_size - sc->tx_fifo_head;
  if (fifo_pkt_len >= (0x3e0 + fifo_space)) {
   if (em_82547_tx_fifo_reset(sc))
    return (0);
   else
    return (1);
  }
 }
 return (0);
}
void
em_82547_update_fifo_head(struct em_softc *sc, int len)
{
 int fifo_pkt_len = (((len + 0x10) + (0x10) - 1) & ~((0x10) - 1));
 sc->tx_fifo_head += fifo_pkt_len;
 if (sc->tx_fifo_head >= sc->tx_fifo_size)
  sc->tx_fifo_head -= sc->tx_fifo_size;
}
int
em_82547_tx_fifo_reset(struct em_softc *sc)
{
 uint32_t tctl;
 if ((bus_space_read_4(((struct em_osdep *)(&sc->hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(&sc->hw)->back)->mem_bus_space_handle, ((&sc->hw)->mac_type >= em_82543 ? 0x03818 : 0x00438)) ==
      bus_space_read_4(((struct em_osdep *)(&sc->hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(&sc->hw)->back)->mem_bus_space_handle, ((&sc->hw)->mac_type >= em_82543 ? 0x03810 : 0x00430))) &&
     (bus_space_read_4(((struct em_osdep *)(&sc->hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(&sc->hw)->back)->mem_bus_space_handle, ((&sc->hw)->mac_type >= em_82543 ? 0x03418 : 0x08018)) ==
      bus_space_read_4(((struct em_osdep *)(&sc->hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(&sc->hw)->back)->mem_bus_space_handle, ((&sc->hw)->mac_type >= em_82543 ? 0x03410 : 0x08010))) &&
     (bus_space_read_4(((struct em_osdep *)(&sc->hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(&sc->hw)->back)->mem_bus_space_handle, ((&sc->hw)->mac_type >= em_82543 ? 0x03428 : 0x03428)) ==
      bus_space_read_4(((struct em_osdep *)(&sc->hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(&sc->hw)->back)->mem_bus_space_handle, ((&sc->hw)->mac_type >= em_82543 ? 0x03420 : 0x03420))) &&
     (bus_space_read_4(((struct em_osdep *)(&sc->hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(&sc->hw)->back)->mem_bus_space_handle, ((&sc->hw)->mac_type >= em_82543 ? 0x03430 : 0x03430)) == 0)) {
  tctl = bus_space_read_4(((struct em_osdep *)(&sc->hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(&sc->hw)->back)->mem_bus_space_handle, ((&sc->hw)->mac_type >= em_82543 ? 0x00400 : 0x00400));
  bus_space_write_4(((struct em_osdep *)(&sc->hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(&sc->hw)->back)->mem_bus_space_handle, ((&sc->hw)->mac_type >= em_82543 ? 0x00400 : 0x00400), tctl & ~0x00000002);
  bus_space_write_4(((struct em_osdep *)(&sc->hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(&sc->hw)->back)->mem_bus_space_handle, ((&sc->hw)->mac_type >= em_82543 ? 0x03418 : 0x08018), sc->tx_head_addr);
  bus_space_write_4(((struct em_osdep *)(&sc->hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(&sc->hw)->back)->mem_bus_space_handle, ((&sc->hw)->mac_type >= em_82543 ? 0x03410 : 0x08010), sc->tx_head_addr);
  bus_space_write_4(((struct em_osdep *)(&sc->hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(&sc->hw)->back)->mem_bus_space_handle, ((&sc->hw)->mac_type >= em_82543 ? 0x03428 : 0x03428), sc->tx_head_addr);
  bus_space_write_4(((struct em_osdep *)(&sc->hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(&sc->hw)->back)->mem_bus_space_handle, ((&sc->hw)->mac_type >= em_82543 ? 0x03420 : 0x03420), sc->tx_head_addr);
  bus_space_write_4(((struct em_osdep *)(&sc->hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(&sc->hw)->back)->mem_bus_space_handle, ((&sc->hw)->mac_type >= em_82543 ? 0x00400 : 0x00400), tctl);
  bus_space_read_4(((struct em_osdep *)(&sc->hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(&sc->hw)->back)->mem_bus_space_handle, ((&sc->hw)->mac_type >= em_82543 ? 0x00008 : 0x00008));
  sc->tx_fifo_head = 0;
  sc->tx_fifo_reset_cnt++;
  return (1);
 } else
  return (0);
}
void
em_iff(struct em_softc *sc)
{
 struct ifnet *ifp = &sc->sc_ac.ac_if;
 struct arpcom *ac = &sc->sc_ac;
 u_int32_t reg_rctl = 0;
 u_int8_t mta[128 * 6];
 struct ether_multi *enm;
 struct ether_multistep step;
 int i = 0;
 if (0) printf("em_iff: begin" "\n");
 if (sc->hw.mac_type == em_82542_rev2_0) {
  reg_rctl = bus_space_read_4(((struct em_osdep *)(&sc->hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(&sc->hw)->back)->mem_bus_space_handle, ((&sc->hw)->mac_type >= em_82543 ? 0x00100 : 0x00100));
  if (sc->hw.pci_cmd_word & 0x0010)
   em_pci_clear_mwi(&sc->hw);
  reg_rctl |= 0x00000001;
  bus_space_write_4(((struct em_osdep *)(&sc->hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(&sc->hw)->back)->mem_bus_space_handle, ((&sc->hw)->mac_type >= em_82543 ? 0x00100 : 0x00100), reg_rctl);
  delay(1000*(5));
 }
 reg_rctl = bus_space_read_4(((struct em_osdep *)(&sc->hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(&sc->hw)->back)->mem_bus_space_handle, ((&sc->hw)->mac_type >= em_82543 ? 0x00100 : 0x00100));
 reg_rctl &= ~(0x00000010 | 0x00000008);
 ifp->if_flags &= ~0x200;
 if (ifp->if_flags & 0x100 || ac->ac_multirangecnt > 0 ||
     ac->ac_multicnt > 128) {
  ifp->if_flags |= 0x200;
  reg_rctl |= 0x00000010;
  if (ifp->if_flags & 0x100)
   reg_rctl |= 0x00000008;
 } else {
  do { (step).e_enm = ((&(ac)->ac_multiaddrs)->lh_first); do { if ((((enm)) = ((step)).e_enm) != ((void *)0)) ((step)).e_enm = ((((enm)))->enm_list.le_next); } while ( 0); } while ( 0);
  while (enm != ((void *)0)) {
   __builtin_bcopy((enm->enm_addrlo), (mta + i), (6));
   i += 6;
   do { if (((enm) = (step).e_enm) != ((void *)0)) (step).e_enm = (((enm))->enm_list.le_next); } while ( 0);
  }
  em_mc_addr_list_update(&sc->hw, mta, ac->ac_multicnt, 0, 1);
 }
 bus_space_write_4(((struct em_osdep *)(&sc->hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(&sc->hw)->back)->mem_bus_space_handle, ((&sc->hw)->mac_type >= em_82543 ? 0x00100 : 0x00100), reg_rctl);
 if (sc->hw.mac_type == em_82542_rev2_0) {
  reg_rctl = bus_space_read_4(((struct em_osdep *)(&sc->hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(&sc->hw)->back)->mem_bus_space_handle, ((&sc->hw)->mac_type >= em_82543 ? 0x00100 : 0x00100));
  reg_rctl &= ~0x00000001;
  bus_space_write_4(((struct em_osdep *)(&sc->hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(&sc->hw)->back)->mem_bus_space_handle, ((&sc->hw)->mac_type >= em_82543 ? 0x00100 : 0x00100), reg_rctl);
  delay(1000*(5));
  if (sc->hw.pci_cmd_word & 0x0010)
   em_pci_set_mwi(&sc->hw);
 }
}
void
em_local_timer(void *arg)
{
 struct ifnet *ifp;
 struct em_softc *sc = arg;
 int s;
 ifp = &sc->sc_ac.ac_if;
 s = _splraise(6);
 em_update_stats_counters(sc);
 em_smartspeed(sc);
 timeout_add_sec(&sc->timer_handle, 1);
 _splx(s);
}
void
em_update_link_status(struct em_softc *sc)
{
 struct ifnet *ifp = &sc->sc_ac.ac_if;
 u_char link_state;
 if (bus_space_read_4(((struct em_osdep *)(&sc->hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(&sc->hw)->back)->mem_bus_space_handle, ((&sc->hw)->mac_type >= em_82543 ? 0x00008 : 0x00008)) & 0x00000002) {
  if (sc->link_active == 0) {
   em_get_speed_and_duplex(&sc->hw,
      &sc->link_speed,
      &sc->link_duplex);
   if ((sc->link_speed == 1000) &&
       ((sc->hw.mac_type == em_82571) ||
       (sc->hw.mac_type == em_82572) ||
       (sc->hw.mac_type == em_82575) ||
       (sc->hw.mac_type == em_82580))) {
    int tarc0;
    tarc0 = bus_space_read_4(((struct em_osdep *)(&sc->hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(&sc->hw)->back)->mem_bus_space_handle, ((&sc->hw)->mac_type >= em_82543 ? 0x03840 : 0x03840));
    tarc0 |= (1<<21);
    bus_space_write_4(((struct em_osdep *)(&sc->hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(&sc->hw)->back)->mem_bus_space_handle, ((&sc->hw)->mac_type >= em_82543 ? 0x03840 : 0x03840), tarc0);
   }
   sc->link_active = 1;
   sc->smartspeed = 0;
   ifp->if_data.ifi_baudrate = ((((sc->link_speed) * 1000ULL) * 1000ULL));
  }
  link_state = (sc->link_duplex == 2) ?
      6 : 5;
  if (ifp->if_data.ifi_link_state != link_state) {
   ifp->if_data.ifi_link_state = link_state;
   if_link_state_change(ifp);
  }
 } else {
  if (sc->link_active == 1) {
   ifp->if_data.ifi_baudrate = sc->link_speed = 0;
   sc->link_duplex = 0;
   sc->link_active = 0;
  }
  if (ifp->if_data.ifi_link_state != 2) {
   ifp->if_data.ifi_link_state = 2;
   if_link_state_change(ifp);
  }
 }
}
void
em_stop(void *arg, int softonly)
{
 struct em_softc *sc = arg;
 struct ifnet *ifp = &sc->sc_ac.ac_if;
 ifp->if_flags &= ~0x40;
 if (0) printf("em_stop: begin" "\n");
 timeout_del(&sc->timer_handle);
 timeout_del(&sc->tx_fifo_timer_handle);
 if (!softonly)
  em_disable_intr(sc);
 if (sc->hw.mac_type == em_pch_spt)
  em_flush_desc_rings(sc);
 if (!softonly)
  em_reset_hw(&sc->hw);
 intr_barrier(sc->sc_intrhand);
 ifq_barrier(&ifp->if_snd);
 (((ifp->if_flags & 0x40) == 0) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../dev/pci/if_em.c", 1534, "(ifp->if_flags & IFF_RUNNING) == 0"));
 ifq_clr_oactive(&ifp->if_snd);
 ifp->if_timer = 0;
 em_free_transmit_structures(sc);
 em_free_receive_structures(sc);
}
void
em_identify_hardware(struct em_softc *sc)
{
 u_int32_t reg64;
 struct pci_attach_args *pa = &sc->osdep.em_pa;
 sc->hw.pci_cmd_word = pci_conf_read(pa->pa_pc, pa->pa_tag,
         0x04);
 sc->hw.vendor_id = (((pa->pa_id) >> 0) & 0xffff);
 sc->hw.device_id = (((pa->pa_id) >> 16) & 0xffff);
 reg64 = pci_conf_read(pa->pa_pc, pa->pa_tag, 0x08);
 sc->hw.revision_id = (((reg64) >> 0) & 0xff);
 reg64 = pci_conf_read(pa->pa_pc, pa->pa_tag, 0x2c);
 sc->hw.subsystem_vendor_id = (((reg64) >> 0) & 0xffff);
 sc->hw.subsystem_id = (((reg64) >> 16) & 0xffff);
 if (em_set_mac_type(&sc->hw))
  printf("%s: Unknown MAC Type\n", ((sc)->sc_dev.dv_xname));
 if (sc->hw.mac_type == em_pchlan)
  sc->hw.revision_id = (((pa->pa_id) >> 16) & 0xffff) & 0x0f;
 if (sc->hw.mac_type == em_82541 ||
     sc->hw.mac_type == em_82541_rev_2 ||
     sc->hw.mac_type == em_82547 ||
     sc->hw.mac_type == em_82547_rev_2)
  sc->hw.phy_init_script = 1;
}
void
em_legacy_irq_quirk_spt(struct em_softc *sc)
{
 uint32_t reg64;
 if (sc->hw.mac_type != em_pch_spt)
  return;
 if (sc->legacy_irq == 0)
  return;
 reg64 = bus_space_read_4(((struct em_osdep *)(&sc->hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(&sc->hw)->back)->mem_bus_space_handle, 0xe4UL);
 reg64 |= 0x04UL;
 bus_space_write_4(((struct em_osdep *)(&sc->hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(&sc->hw)->back)->mem_bus_space_handle, 0xe4UL, reg64);
 reg64 = bus_space_read_4(((struct em_osdep *)(&sc->hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(&sc->hw)->back)->mem_bus_space_handle, 0x5bb4UL);
 reg64 |= 0x0800UL |
     0x1000UL;
 bus_space_write_4(((struct em_osdep *)(&sc->hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(&sc->hw)->back)->mem_bus_space_handle, 0x5bb4UL, reg64);
}
int
em_allocate_pci_resources(struct em_softc *sc)
{
 int val, rid;
 pci_intr_handle_t ih;
 const char *intrstr = ((void *)0);
 struct pci_attach_args *pa = &sc->osdep.em_pa;
 pci_chipset_tag_t pc = pa->pa_pc;
 val = pci_conf_read(pa->pa_pc, pa->pa_tag, 0x0010);
 if (((val) & 0x00000001) != 0x00000000) {
  printf(": mmba is not mem space\n");
  return (6);
 }
 if (pci_mapreg_map(pa, 0x0010, ((val) & 0x00000006), 0,
     &sc->osdep.mem_bus_space_tag, &sc->osdep.mem_bus_space_handle,
     &sc->osdep.em_membase, &sc->osdep.em_memsize, 0)) {
  printf(": cannot find mem space\n");
  return (6);
 }
 switch (sc->hw.mac_type) {
 case em_82544:
 case em_82540:
 case em_82545:
 case em_82546:
 case em_82541:
 case em_82541_rev_2:
  for (rid = 0x10; rid < 0x28;) {
   val = pci_conf_read(pa->pa_pc, pa->pa_tag, rid);
   if (((val) & 0x00000001) == 0x00000001) {
    sc->io_rid = rid;
    break;
   }
   rid += 4;
   if (((val) & 0x00000006) ==
       0x00000004)
    rid += 4;
  }
  if (pci_mapreg_map(pa, rid, 0x00000001, 0,
      &sc->osdep.io_bus_space_tag, &sc->osdep.io_bus_space_handle,
      &sc->osdep.em_iobase, &sc->osdep.em_iosize, 0)) {
   printf(": cannot find i/o space\n");
   return (6);
  }
  sc->hw.io_base = 0;
  break;
 default:
  break;
 }
 sc->osdep.em_flashoffset = 0;
 if (sc->hw.mac_type == em_pch_spt) {
  sc->osdep.flash_bus_space_tag = sc->osdep.mem_bus_space_tag;
  sc->osdep.flash_bus_space_handle = sc->osdep.mem_bus_space_handle;
  sc->osdep.em_flashbase = 0;
  sc->osdep.em_flashsize = 0;
  sc->osdep.em_flashoffset = 0xe000;
 } else if ((sc->hw.mac_type == em_ich8lan || sc->hw.mac_type == em_ich9lan || sc->hw.mac_type == em_ich10lan || sc->hw.mac_type == em_pchlan || sc->hw.mac_type == em_pch2lan || sc->hw.mac_type == em_pch_lpt || sc->hw.mac_type == em_pch_spt)) {
  val = pci_conf_read(pa->pa_pc, pa->pa_tag, 0x0014);
  if (((val) & 0x00000001) != 0x00000000) {
   printf(": flash is not mem space\n");
   return (6);
  }
  if (pci_mapreg_map(pa, 0x0014, ((val) & 0x00000006), 0,
      &sc->osdep.flash_bus_space_tag, &sc->osdep.flash_bus_space_handle,
      &sc->osdep.em_flashbase, &sc->osdep.em_flashsize, 0)) {
   printf(": cannot find mem space\n");
   return (6);
  }
        }
 sc->legacy_irq = 0;
 if (pci_intr_map_msi(pa, &ih)) {
  if (pci_intr_map(pa, &ih)) {
   printf(": couldn't map interrupt\n");
   return (6);
  }
  sc->legacy_irq = 1;
 }
 sc->osdep.dev = (struct device *)sc;
 sc->hw.back = &sc->osdep;
 intrstr = pci_intr_string(pc, ih);
 sc->sc_intrhand = pci_intr_establish(pc, ih, 6 | 0x100,
     em_intr, sc, ((sc)->sc_dev.dv_xname));
 if (sc->sc_intrhand == ((void *)0)) {
  printf(": couldn't establish interrupt");
  if (intrstr != ((void *)0))
   printf(" at %s", intrstr);
  printf("\n");
  return (6);
 }
 printf(": %s", intrstr);
 if(sc->hw.mac_type == em_icp_xxxx) {
  int offset;
  pcireg_t val;
  if (!pci_get_capability(sc->osdep.em_pa.pa_pc,
      sc->osdep.em_pa.pa_tag, 0x09, &offset, &val)) {
   return (0);
  }
  offset += 0x04;
  pci_conf_write(sc->osdep.em_pa.pa_pc, sc->osdep.em_pa.pa_tag,
      offset, 0x06);
  bus_space_write_4(((struct em_osdep *)(&sc->hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(&sc->hw)->back)->mem_bus_space_handle, ((&sc->hw)->mac_type >= em_82543 ? 0x008D8 : 0x008D8), ~0x0);
  bus_space_write_4(((struct em_osdep *)(&sc->hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(&sc->hw)->back)->mem_bus_space_handle, ((&sc->hw)->mac_type >= em_82543 ? 0x008F8 : 0x008F8), ~0x0);
 }
 return (0);
}
void
em_free_pci_resources(struct em_softc *sc)
{
 struct pci_attach_args *pa = &sc->osdep.em_pa;
 pci_chipset_tag_t pc = pa->pa_pc;
 if (sc->sc_intrhand)
  pci_intr_disestablish(pc, sc->sc_intrhand);
 sc->sc_intrhand = 0;
 if (sc->osdep.em_flashbase)
  bus_space_unmap(sc->osdep.flash_bus_space_tag, sc->osdep.flash_bus_space_handle,
    sc->osdep.em_flashsize);
 sc->osdep.em_flashbase = 0;
 if (sc->osdep.em_iobase)
  bus_space_unmap(sc->osdep.io_bus_space_tag, sc->osdep.io_bus_space_handle,
    sc->osdep.em_iosize);
 sc->osdep.em_iobase = 0;
 if (sc->osdep.em_membase)
  bus_space_unmap(sc->osdep.mem_bus_space_tag, sc->osdep.mem_bus_space_handle,
    sc->osdep.em_memsize);
 sc->osdep.em_membase = 0;
}
int
em_hardware_init(struct em_softc *sc)
{
 uint32_t ret_val;
 u_int16_t rx_buffer_size;
 if (0) printf("em_hardware_init: begin" "\n");
 if (sc->hw.mac_type == em_pch_spt)
  em_flush_desc_rings(sc);
 em_reset_hw(&sc->hw);
 sc->tx_fifo_head = 0;
 if (em_get_flash_presence_i210(&sc->hw) &&
     em_validate_eeprom_checksum(&sc->hw) < 0) {
  if (em_validate_eeprom_checksum(&sc->hw) < 0) {
   printf("%s: The EEPROM Checksum Is Not Valid\n",
          ((sc)->sc_dev.dv_xname));
   return (5);
  }
 }
 if (em_get_flash_presence_i210(&sc->hw) &&
     em_read_part_num(&sc->hw, &(sc->part_num)) < 0) {
  printf("%s: EEPROM read error while reading part number\n",
         ((sc)->sc_dev.dv_xname));
  return (5);
 }
 if (!em_smart_pwr_down &&
      (sc->hw.mac_type == em_82571 ||
       sc->hw.mac_type == em_82572 ||
       sc->hw.mac_type == em_82575 ||
       sc->hw.mac_type == em_82580 ||
       sc->hw.mac_type == em_i210 ||
       sc->hw.mac_type == em_i350 )) {
  uint16_t phy_tmp = 0;
  em_read_phy_reg(&sc->hw, 0x19, &phy_tmp);
  phy_tmp &= ~0x0001;
  em_write_phy_reg(&sc->hw, 0x19, phy_tmp);
 }
 em_legacy_irq_quirk_spt(sc);
 rx_buffer_size = ((bus_space_read_4(((struct em_osdep *)(&sc->hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(&sc->hw)->back)->mem_bus_space_handle, ((&sc->hw)->mac_type >= em_82543 ? 0x01000 : 0x01000)) & 0xffff) << 10 );
 sc->hw.fc_high_water = rx_buffer_size -
     (((sc->hw.max_frame_size) + (1024) - 1) & ~((1024) - 1));
 sc->hw.fc_low_water = sc->hw.fc_high_water - 1500;
 if (sc->hw.mac_type == em_80003es2lan)
  sc->hw.fc_pause_time = 0xFFFF;
 else
  sc->hw.fc_pause_time = 1000;
 sc->hw.fc_send_xon = 1;
 sc->hw.fc = 3;
 em_disable_aspm(sc);
 if ((ret_val = em_init_hw(&sc->hw)) != 0) {
  if (ret_val == 15) {
   if (0) printf("\nHardware Initialization Deferred " "\n");
   return (35);
  }
  printf("\n%s: Hardware Initialization Failed\n",
         ((sc)->sc_dev.dv_xname));
  return (5);
 }
 em_check_for_link(&sc->hw);
 return (0);
}
void
em_setup_interface(struct em_softc *sc)
{
 struct ifnet *ifp;
 uint64_t fiber_type = 11;
 if (0) printf("em_setup_interface: begin" "\n");
 ifp = &sc->sc_ac.ac_if;
 strlcpy(ifp->if_xname, ((sc)->sc_dev.dv_xname), 16);
 ifp->if_softc = sc;
 ifp->if_flags = 0x2 | 0x800 | 0x8000;
 ifp->if_xflags = 0x1;
 ifp->if_ioctl = em_ioctl;
 ifp->if_qstart = em_start;
 ifp->if_watchdog = em_watchdog;
 ifp->if_hardmtu =
  sc->hw.max_frame_size - ((6 * 2) + 2) - 4;
 ((&ifp->if_snd)->ifq_maxlen = (sc->sc_tx_slots - 1));
 ifp->if_data.ifi_capabilities = 0x00000010;
 if (sc->hw.mac_type != em_82575 && sc->hw.mac_type != em_82580 &&
     sc->hw.mac_type != em_i210 && sc->hw.mac_type != em_i350)
  ifp->if_data.ifi_capabilities |= 0x00000020;
 if (sc->hw.mac_type >= em_82543 && sc->hw.mac_type != em_82575 &&
     sc->hw.mac_type != em_82580 && sc->hw.mac_type != em_i210 &&
     sc->hw.mac_type != em_i350)
  ifp->if_data.ifi_capabilities |= 0x00000002 | 0x00000004;
 ifmedia_init(&sc->media, 0xff00000000000000ULL, em_media_change,
       em_media_status);
 if (sc->hw.media_type == em_media_type_fiber ||
     sc->hw.media_type == em_media_type_internal_serdes) {
  if (sc->hw.mac_type == em_82545)
   fiber_type = 14;
  ifmedia_add(&sc->media, 0x0000000000000100ULL | fiber_type | 0x0000010000000000ULL,
       0, ((void *)0));
  ifmedia_add(&sc->media, 0x0000000000000100ULL | fiber_type,
       0, ((void *)0));
 } else {
  ifmedia_add(&sc->media, 0x0000000000000100ULL | 3, 0, ((void *)0));
  ifmedia_add(&sc->media, 0x0000000000000100ULL | 3 | 0x0000010000000000ULL,
       0, ((void *)0));
  ifmedia_add(&sc->media, 0x0000000000000100ULL | 6,
       0, ((void *)0));
  ifmedia_add(&sc->media, 0x0000000000000100ULL | 6 | 0x0000010000000000ULL,
       0, ((void *)0));
  if (sc->hw.phy_type != em_phy_ife) {
   ifmedia_add(&sc->media, 0x0000000000000100ULL | 16 | 0x0000010000000000ULL,
        0, ((void *)0));
   ifmedia_add(&sc->media, 0x0000000000000100ULL | 16, 0, ((void *)0));
  }
 }
 ifmedia_add(&sc->media, 0x0000000000000100ULL | 0ULL, 0, ((void *)0));
 ifmedia_set(&sc->media, 0x0000000000000100ULL | 0ULL);
 if_attach(ifp);
 ether_ifattach(ifp);
}
int
em_detach(struct device *self, int flags)
{
 struct em_softc *sc = (struct em_softc *)self;
 struct ifnet *ifp = &sc->sc_ac.ac_if;
 struct pci_attach_args *pa = &sc->osdep.em_pa;
 pci_chipset_tag_t pc = pa->pa_pc;
 if (sc->sc_intrhand)
  pci_intr_disestablish(pc, sc->sc_intrhand);
 sc->sc_intrhand = 0;
 em_stop(sc, 1);
 em_free_pci_resources(sc);
 if (sc->sc_rx_desc_ring != ((void *)0)) {
  sc->sc_rx_desc_ring = ((void *)0);
  em_dma_free(sc, &sc->sc_rx_dma);
 }
 if (sc->sc_tx_desc_ring != ((void *)0)) {
  sc->sc_tx_desc_ring = ((void *)0);
  em_dma_free(sc, &sc->sc_tx_dma);
 }
 ether_ifdetach(ifp);
 if_detach(ifp);
 return (0);
}
int
em_activate(struct device *self, int act)
{
 struct em_softc *sc = (struct em_softc *)self;
 struct ifnet *ifp = &sc->sc_ac.ac_if;
 int rv = 0;
 switch (act) {
 case 3:
  if (ifp->if_flags & 0x40)
   em_stop(sc, 0);
  rv = config_activate_children(self, act);
  break;
 case 4:
  if (ifp->if_flags & 0x1)
   em_init(sc);
  break;
 default:
  rv = config_activate_children(self, act);
  break;
 }
 return (rv);
}
void
em_smartspeed(struct em_softc *sc)
{
 uint16_t phy_tmp;
 if (sc->link_active || (sc->hw.phy_type != em_phy_igp) ||
     !sc->hw.autoneg || !(sc->hw.autoneg_advertised & 0x0020))
  return;
 if (sc->smartspeed == 0) {
  em_read_phy_reg(&sc->hw, 0x0A, &phy_tmp);
  if (!(phy_tmp & 0x8000))
   return;
  em_read_phy_reg(&sc->hw, 0x0A, &phy_tmp);
  if (phy_tmp & 0x8000) {
   em_read_phy_reg(&sc->hw, 0x09,
     &phy_tmp);
   if (phy_tmp & 0x1000) {
    phy_tmp &= ~0x1000;
    em_write_phy_reg(&sc->hw,
          0x09, phy_tmp);
    sc->smartspeed++;
    if (sc->hw.autoneg &&
        !em_phy_setup_autoneg(&sc->hw) &&
        !em_read_phy_reg(&sc->hw, 0x00,
             &phy_tmp)) {
     phy_tmp |= (0x1000 |
          0x0200);
     em_write_phy_reg(&sc->hw,
        0x00, phy_tmp);
    }
   }
  }
  return;
 } else if (sc->smartspeed == 3) {
  em_read_phy_reg(&sc->hw, 0x09, &phy_tmp);
  phy_tmp |= 0x1000;
  em_write_phy_reg(&sc->hw, 0x09, phy_tmp);
  if (sc->hw.autoneg &&
      !em_phy_setup_autoneg(&sc->hw) &&
      !em_read_phy_reg(&sc->hw, 0x00, &phy_tmp)) {
   phy_tmp |= (0x1000 |
        0x0200);
   em_write_phy_reg(&sc->hw, 0x00, phy_tmp);
  }
 }
 if (sc->smartspeed++ == 15)
  sc->smartspeed = 0;
}
int
em_dma_malloc(struct em_softc *sc, bus_size_t size, struct em_dma_alloc *dma)
{
 int r;
 r = bus_dmamap_create(sc->sc_dmat, size, 1,
     size, 0, 0x0000 | 0x0002, &dma->dma_map);
 if (r != 0)
  return (r);
 r = bus_dmamem_alloc(sc->sc_dmat, size, (1 << 13), 0, &dma->dma_seg,
     1, &dma->dma_nseg, 0x0000 | 0x0800);
 if (r != 0)
  goto destroy;
 r = bus_dmamem_map(sc->sc_dmat, &dma->dma_seg, dma->dma_nseg, size,
     &dma->dma_vaddr, 0x0000);
 if (r != 0)
  goto free;
 r = bus_dmamap_load(sc->sc_dmat, dma->dma_map, dma->dma_vaddr, size,
     ((void *)0), 0x0000);
 if (r != 0)
  goto unmap;
 dma->dma_size = size;
 return (0);
unmap:
 bus_dmamem_unmap(sc->sc_dmat, dma->dma_vaddr, size);
free:
 bus_dmamem_free(sc->sc_dmat, &dma->dma_seg, dma->dma_nseg);
destroy:
 bus_dmamap_destroy(sc->sc_dmat, dma->dma_map);
 return (r);
}
void
em_dma_free(struct em_softc *sc, struct em_dma_alloc *dma)
{
 bus_dmamap_unload(sc->sc_dmat, dma->dma_map);
 bus_dmamem_unmap(sc->sc_dmat, dma->dma_vaddr, dma->dma_size);
 bus_dmamem_free(sc->sc_dmat, &dma->dma_seg, dma->dma_nseg);
 bus_dmamap_destroy(sc->sc_dmat, dma->dma_map);
}
int
em_allocate_transmit_structures(struct em_softc *sc)
{
 bus_dmamap_sync(sc->sc_dmat, sc->sc_tx_dma.dma_map,
     0, sc->sc_tx_dma.dma_map->dm_mapsize,
     0x01 | 0x04);
 sc->sc_tx_pkts_ring = mallocarray(sc->sc_tx_slots,
     sizeof(*sc->sc_tx_pkts_ring), 2, 0x0002 | 0x0008);
 if (sc->sc_tx_pkts_ring == ((void *)0)) {
  printf("%s: Unable to allocate tx_buffer memory\n",
         ((sc)->sc_dev.dv_xname));
  return (12);
 }
 return (0);
}
int
em_setup_transmit_structures(struct em_softc *sc)
{
 struct em_packet *pkt;
 int error, i;
 if ((error = em_allocate_transmit_structures(sc)) != 0)
  goto fail;
 __builtin_bzero(((void *) sc->sc_tx_desc_ring), ((sizeof(struct em_tx_desc)) * sc->sc_tx_slots));
 for (i = 0; i < sc->sc_tx_slots; i++) {
  pkt = &sc->sc_tx_pkts_ring[i];
  error = bus_dmamap_create(sc->sc_dmat, 0x3F00,
      64 / (sc->pcix_82544 ? 2 : 1),
      0x3F00, 0, 0x0001, &pkt->pkt_map);
  if (error != 0) {
   printf("%s: Unable to create TX DMA map\n",
       ((sc)->sc_dev.dv_xname));
   goto fail;
  }
 }
 sc->sc_tx_desc_head = 0;
 sc->sc_tx_desc_tail = 0;
 sc->active_checksum_context = OFFLOAD_NONE;
 return (0);
fail:
 em_free_transmit_structures(sc);
 return (error);
}
void
em_initialize_transmit_unit(struct em_softc *sc)
{
 u_int32_t reg_tctl, reg_tipg = 0;
 u_int64_t bus_addr;
 if (0) printf("em_initialize_transmit_unit: begin" "\n");
 bus_addr = sc->sc_tx_dma.dma_map->dm_segs[0].ds_addr;
 bus_space_write_4(((struct em_osdep *)(&sc->hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(&sc->hw)->back)->mem_bus_space_handle, ((&sc->hw)->mac_type >= em_82543 ? 0x03808 : 0x00428), sc->sc_tx_slots * sizeof(struct em_tx_desc));
 bus_space_write_4(((struct em_osdep *)(&sc->hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(&sc->hw)->back)->mem_bus_space_handle, ((&sc->hw)->mac_type >= em_82543 ? 0x03804 : 0x00424), (u_int32_t)(bus_addr >> 32));
 bus_space_write_4(((struct em_osdep *)(&sc->hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(&sc->hw)->back)->mem_bus_space_handle, ((&sc->hw)->mac_type >= em_82543 ? 0x03800 : 0x00420), (u_int32_t)bus_addr);
 bus_space_write_4(((struct em_osdep *)(&sc->hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(&sc->hw)->back)->mem_bus_space_handle, ((&sc->hw)->mac_type >= em_82543 ? 0x03818 : 0x00438), 0);
 bus_space_write_4(((struct em_osdep *)(&sc->hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(&sc->hw)->back)->mem_bus_space_handle, ((&sc->hw)->mac_type >= em_82543 ? 0x03810 : 0x00430), 0);
 if (0) printf("Base = %x, Length = %x\n" "\n", bus_space_read_4(((struct em_osdep *)(&sc->hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(&sc->hw)->back)->mem_bus_space_handle, ((&sc->hw)->mac_type >= em_82543 ? 0x03800 : 0x00420)), bus_space_read_4(((struct em_osdep *)(&sc->hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(&sc->hw)->back)->mem_bus_space_handle, ((&sc->hw)->mac_type >= em_82543 ? 0x03808 : 0x00428)));
 switch (sc->hw.mac_type) {
 case em_82542_rev2_0:
 case em_82542_rev2_1:
  reg_tipg = 10;
  reg_tipg |= 2 << 10;
  reg_tipg |= 10 << 20;
  break;
 case em_80003es2lan:
  reg_tipg = 8;
  reg_tipg |= 7 << 20;
  break;
 default:
  if (sc->hw.media_type == em_media_type_fiber ||
      sc->hw.media_type == em_media_type_internal_serdes)
   reg_tipg = 9;
  else
   reg_tipg = 8;
  reg_tipg |= 8 << 10;
  reg_tipg |= 6 << 20;
 }
 bus_space_write_4(((struct em_osdep *)(&sc->hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(&sc->hw)->back)->mem_bus_space_handle, ((&sc->hw)->mac_type >= em_82543 ? 0x00410 : 0x00410), reg_tipg);
 bus_space_write_4(((struct em_osdep *)(&sc->hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(&sc->hw)->back)->mem_bus_space_handle, ((&sc->hw)->mac_type >= em_82543 ? 0x03820 : 0x00440), sc->tx_int_delay);
 if (sc->hw.mac_type >= em_82540)
  bus_space_write_4(((struct em_osdep *)(&sc->hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(&sc->hw)->back)->mem_bus_space_handle, ((&sc->hw)->mac_type >= em_82543 ? 0x0382C : 0x0382C), sc->tx_abs_int_delay);
 sc->sc_txd_cmd = 0x02000000;
 if (sc->hw.mac_type == em_82575 || sc->hw.mac_type == em_82580 ||
     sc->hw.mac_type == em_i210 || sc->hw.mac_type == em_i350) {
  reg_tctl = bus_space_read_4(((struct em_osdep *)(&sc->hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(&sc->hw)->back)->mem_bus_space_handle, ((&sc->hw)->mac_type >= em_82543 ? 0x03828 : 0x03828));
  reg_tctl |= 0x02000000;
  bus_space_write_4(((struct em_osdep *)(&sc->hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(&sc->hw)->back)->mem_bus_space_handle, ((&sc->hw)->mac_type >= em_82543 ? 0x03828 : 0x03828), reg_tctl);
 } else if (sc->tx_int_delay > 0)
  sc->sc_txd_cmd |= 0x80000000;
 reg_tctl = 0x00000008 | 0x00000002 |
     (15 << 4);
 if (sc->hw.mac_type >= em_82571)
  reg_tctl |= 0x10000000;
 if (sc->link_duplex == 2)
  reg_tctl |= 63 << 12;
 else
  reg_tctl |= 63 << 12;
 bus_space_write_4(((struct em_osdep *)(&sc->hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(&sc->hw)->back)->mem_bus_space_handle, ((&sc->hw)->mac_type >= em_82543 ? 0x00400 : 0x00400), reg_tctl);
 if (sc->hw.mac_type == em_pch_spt) {
  uint32_t reg_val;
  reg_val = bus_space_read_4(((struct em_osdep *)(&sc->hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(&sc->hw)->back)->mem_bus_space_handle, 0x00F28);
  reg_val |= 0x00010000;
  bus_space_write_4(((struct em_osdep *)(&sc->hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(&sc->hw)->back)->mem_bus_space_handle, 0x00F28, reg_val);
  reg_val = bus_space_read_4(((struct em_osdep *)(&sc->hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(&sc->hw)->back)->mem_bus_space_handle, ((&sc->hw)->mac_type >= em_82543 ? 0x03840 : 0x03840));
  reg_val |= (1 << 28 | 1 << 29);
  bus_space_write_4(((struct em_osdep *)(&sc->hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(&sc->hw)->back)->mem_bus_space_handle, ((&sc->hw)->mac_type >= em_82543 ? 0x03840 : 0x03840), reg_val);
 }
}
void
em_free_transmit_structures(struct em_softc *sc)
{
 struct em_packet *pkt;
 int i;
 if (0) printf("free_transmit_structures: begin" "\n");
 if (sc->sc_tx_pkts_ring != ((void *)0)) {
  for (i = 0; i < sc->sc_tx_slots; i++) {
   pkt = &sc->sc_tx_pkts_ring[i];
   if (pkt->pkt_m != ((void *)0)) {
    bus_dmamap_sync(sc->sc_dmat, pkt->pkt_map,
        0, pkt->pkt_map->dm_mapsize,
        0x08);
    bus_dmamap_unload(sc->sc_dmat, pkt->pkt_map);
    m_freem(pkt->pkt_m);
    pkt->pkt_m = ((void *)0);
   }
   if (pkt->pkt_map != ((void *)0)) {
    bus_dmamap_destroy(sc->sc_dmat, pkt->pkt_map);
    pkt->pkt_map = ((void *)0);
   }
  }
  free(sc->sc_tx_pkts_ring, 2,
      sc->sc_tx_slots * sizeof(*sc->sc_tx_pkts_ring));
  sc->sc_tx_pkts_ring = ((void *)0);
 }
 bus_dmamap_sync(sc->sc_dmat, sc->sc_tx_dma.dma_map,
     0, sc->sc_tx_dma.dma_map->dm_mapsize,
     0x02 | 0x08);
}
u_int
em_transmit_checksum_setup(struct em_softc *sc, struct mbuf *mp, u_int head,
    u_int32_t *txd_upper, u_int32_t *txd_lower)
{
 struct em_context_desc *TXD;
 if (mp->M_dat.MH.MH_pkthdr.csum_flags & 0x0002) {
  *txd_upper = 0x02 << 8;
  *txd_lower = 0x20000000 | 0x00100000;
  if (sc->active_checksum_context == OFFLOAD_TCP_IP)
   return (0);
  else
   sc->active_checksum_context = OFFLOAD_TCP_IP;
 } else if (mp->M_dat.MH.MH_pkthdr.csum_flags & 0x0004) {
  *txd_upper = 0x02 << 8;
  *txd_lower = 0x20000000 | 0x00100000;
  if (sc->active_checksum_context == OFFLOAD_UDP_IP)
   return (0);
  else
   sc->active_checksum_context = OFFLOAD_UDP_IP;
 } else {
  *txd_upper = 0;
  *txd_lower = 0;
  return (0);
 }
 TXD = (struct em_context_desc *)&sc->sc_tx_desc_ring[head];
 TXD->lower_setup.ip_fields.ipcss = ((6 * 2) + 2);
 TXD->lower_setup.ip_fields.ipcso =
     ((6 * 2) + 2) + __builtin_offsetof(struct ip, ip_sum);
 TXD->lower_setup.ip_fields.ipcse =
     (__uint16_t)(__builtin_constant_p(((6 * 2) + 2) + sizeof(struct ip) - 1) ? (__uint16_t)(((__uint16_t)(((6 * 2) + 2) + sizeof(struct ip) - 1) & 0xffU) << 8 | ((__uint16_t)(((6 * 2) + 2) + sizeof(struct ip) - 1) & 0xff00U) >> 8) : __swap16md(((6 * 2) + 2) + sizeof(struct ip) - 1));
 TXD->upper_setup.tcp_fields.tucss =
     ((6 * 2) + 2) + sizeof(struct ip);
 TXD->upper_setup.tcp_fields.tucse = (__uint16_t)(__builtin_constant_p(0) ? (__uint16_t)(((__uint16_t)(0) & 0xffU) << 8 | ((__uint16_t)(0) & 0xff00U) >> 8) : __swap16md(0));
 if (sc->active_checksum_context == OFFLOAD_TCP_IP) {
  TXD->upper_setup.tcp_fields.tucso =
      ((6 * 2) + 2) + sizeof(struct ip) +
      __builtin_offsetof(struct tcphdr, th_sum);
 } else if (sc->active_checksum_context == OFFLOAD_UDP_IP) {
  TXD->upper_setup.tcp_fields.tucso =
      ((6 * 2) + 2) + sizeof(struct ip) +
      __builtin_offsetof(struct udphdr, uh_sum);
 }
 TXD->tcp_seg_setup.data = (__uint32_t)(__builtin_constant_p(0) ? (__uint32_t)(((__uint32_t)(0) & 0xff) << 24 | ((__uint32_t)(0) & 0xff00) << 8 | ((__uint32_t)(0) & 0xff0000) >> 8 | ((__uint32_t)(0) & 0xff000000) >> 24) : __swap32md(0));
 TXD->cmd_and_length = (__uint32_t)(__builtin_constant_p(sc->sc_txd_cmd | 0x20000000) ? (__uint32_t)(((__uint32_t)(sc->sc_txd_cmd | 0x20000000) & 0xff) << 24 | ((__uint32_t)(sc->sc_txd_cmd | 0x20000000) & 0xff00) << 8 | ((__uint32_t)(sc->sc_txd_cmd | 0x20000000) & 0xff0000) >> 8 | ((__uint32_t)(sc->sc_txd_cmd | 0x20000000) & 0xff000000) >> 24) : __swap32md(sc->sc_txd_cmd | 0x20000000));
 return (1);
}
void
em_txeof(struct em_softc *sc)
{
 struct ifnet *ifp = &sc->sc_ac.ac_if;
 struct em_packet *pkt;
 struct em_tx_desc *desc;
 u_int head, tail;
 u_int free = 0;
 head = sc->sc_tx_desc_head;
 tail = sc->sc_tx_desc_tail;
 if (head == tail)
  return;
 bus_dmamap_sync(sc->sc_dmat, sc->sc_tx_dma.dma_map,
     0, sc->sc_tx_dma.dma_map->dm_mapsize,
     0x02);
 do {
  pkt = &sc->sc_tx_pkts_ring[tail];
  desc = &sc->sc_tx_desc_ring[pkt->pkt_eop];
  if (!((desc->upper.fields.status) & (0x00000001)))
   break;
  bus_dmamap_sync(sc->sc_dmat, pkt->pkt_map,
      0, pkt->pkt_map->dm_mapsize,
      0x08);
  bus_dmamap_unload(sc->sc_dmat, pkt->pkt_map);
  ((pkt->pkt_m != ((void *)0)) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../dev/pci/if_em.c", 2405, "pkt->pkt_m != NULL"));
  m_freem(pkt->pkt_m);
  pkt->pkt_m = ((void *)0);
  tail = pkt->pkt_eop;
  if (++tail == sc->sc_tx_slots)
   tail = 0;
  free++;
 } while (tail != head);
 bus_dmamap_sync(sc->sc_dmat, sc->sc_tx_dma.dma_map,
     0, sc->sc_tx_dma.dma_map->dm_mapsize,
     0x01);
 if (free == 0)
  return;
 sc->sc_tx_desc_tail = tail;
 if (ifq_is_oactive(&ifp->if_snd))
  ifq_restart(&ifp->if_snd);
 else if (tail == head)
  ifp->if_timer = 0;
}
int
em_get_buf(struct em_softc *sc, int i)
{
 struct mbuf *m;
 struct em_packet *pkt;
 struct em_rx_desc *desc;
 int error;
 pkt = &sc->sc_rx_pkts_ring[i];
 desc = &sc->sc_rx_desc_ring[i];
 ((pkt->pkt_m == ((void *)0)) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../dev/pci/if_em.c", 2449, "pkt->pkt_m == NULL"));
 m = m_clget((((void *)0)), (0x0002), ((2048 + 2)));
 if (m == ((void *)0)) {
  sc->mbuf_cluster_failed++;
  return (55);
 }
 m->m_hdr.mh_len = m->M_dat.MH.MH_pkthdr.len = (2048 + 2);
 m_adj(m, 2);
 error = bus_dmamap_load_mbuf(sc->sc_dmat, pkt->pkt_map,
     m, 0x0001);
 if (error) {
  m_freem(m);
  return (error);
 }
 bus_dmamap_sync(sc->sc_dmat, pkt->pkt_map,
     0, pkt->pkt_map->dm_mapsize,
     0x01);
 pkt->pkt_m = m;
 __builtin_memset((desc), (0), (sizeof(*desc)));
 __swapm64((&desc->buffer_addr), (pkt->pkt_map->dm_segs[0].ds_addr));
 return (0);
}
int
em_allocate_receive_structures(struct em_softc *sc)
{
 struct em_packet *pkt;
 int i;
 int error;
 sc->sc_rx_pkts_ring = mallocarray(sc->sc_rx_slots,
     sizeof(*sc->sc_rx_pkts_ring), 2, 0x0002 | 0x0008);
 if (sc->sc_rx_pkts_ring == ((void *)0)) {
  printf("%s: Unable to allocate rx_buffer memory\n",
      ((sc)->sc_dev.dv_xname));
  return (12);
 }
 bus_dmamap_sync(sc->sc_dmat, sc->sc_rx_dma.dma_map,
     0, sc->sc_rx_dma.dma_map->dm_mapsize,
     0x01 | 0x04);
 for (i = 0; i < sc->sc_rx_slots; i++) {
  pkt = &sc->sc_rx_pkts_ring[i];
  error = bus_dmamap_create(sc->sc_dmat, (2048 + 2), 1,
      (2048 + 2), 0, 0x0001, &pkt->pkt_map);
  if (error != 0) {
   printf("%s: em_allocate_receive_structures: "
       "bus_dmamap_create failed; error %u\n",
       ((sc)->sc_dev.dv_xname), error);
   goto fail;
  }
  pkt->pkt_m = ((void *)0);
 }
        return (0);
fail:
 em_free_receive_structures(sc);
 return (error);
}
int
em_setup_receive_structures(struct em_softc *sc)
{
 struct ifnet *ifp = &sc->sc_ac.ac_if;
 u_int lwm;
 __builtin_memset((sc->sc_rx_desc_ring), (0), (sc->sc_rx_slots * sizeof(*sc->sc_rx_desc_ring)));
 if (em_allocate_receive_structures(sc))
  return (12);
 sc->sc_rx_desc_tail = 0;
 sc->sc_rx_desc_head = sc->sc_rx_slots - 1;
 lwm = max(4, 2 * ((ifp->if_hardmtu / (1 << 11)) + 1));
 if_rxr_init(&sc->sc_rx_ring, lwm, sc->sc_rx_slots);
 if (em_rxfill(sc) == 0) {
  printf("%s: unable to fill any rx descriptors\n",
      ((sc)->sc_dev.dv_xname));
 }
 return (0);
}
void
em_initialize_receive_unit(struct em_softc *sc)
{
 u_int32_t reg_rctl;
 u_int32_t reg_rxcsum;
 u_int64_t bus_addr;
 if (0) printf("em_initialize_receive_unit: begin" "\n");
 bus_space_write_4(((struct em_osdep *)(&sc->hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(&sc->hw)->back)->mem_bus_space_handle, ((&sc->hw)->mac_type >= em_82543 ? 0x00100 : 0x00100), 0);
 bus_space_write_4(((struct em_osdep *)(&sc->hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(&sc->hw)->back)->mem_bus_space_handle, ((&sc->hw)->mac_type >= em_82543 ? 0x02820 : 0x00108), sc->rx_int_delay | 0x80000000);
 if (sc->hw.mac_type >= em_82540) {
  if (sc->rx_int_delay)
   bus_space_write_4(((struct em_osdep *)(&sc->hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(&sc->hw)->back)->mem_bus_space_handle, ((&sc->hw)->mac_type >= em_82543 ? 0x0282C : 0x0282C), sc->rx_abs_int_delay);
  bus_space_write_4(((struct em_osdep *)(&sc->hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(&sc->hw)->back)->mem_bus_space_handle, ((&sc->hw)->mac_type >= em_82543 ? 0x000C4 : 0x000C4), 1000000000/(8000 * 256));
 }
 bus_addr = sc->sc_rx_dma.dma_map->dm_segs[0].ds_addr;
 bus_space_write_4(((struct em_osdep *)(&sc->hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(&sc->hw)->back)->mem_bus_space_handle, ((&sc->hw)->mac_type >= em_82543 ? 0x02808 : 0x00118), sc->sc_rx_slots * sizeof(*sc->sc_rx_desc_ring));
 bus_space_write_4(((struct em_osdep *)(&sc->hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(&sc->hw)->back)->mem_bus_space_handle, ((&sc->hw)->mac_type >= em_82543 ? 0x02804 : 0x00114), (u_int32_t)(bus_addr >> 32));
 bus_space_write_4(((struct em_osdep *)(&sc->hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(&sc->hw)->back)->mem_bus_space_handle, ((&sc->hw)->mac_type >= em_82543 ? 0x02800 : 0x00110), (u_int32_t)bus_addr);
 reg_rctl = 0x00000002 | 0x00008000 | 0x00000000 |
     0x00000000 |
     (sc->hw.mc_filter_type << 12);
 if (sc->hw.tbi_compatibility_on == 1)
  reg_rctl |= 0x00000004;
 if (sc->hw.mac_type == em_i210 || sc->hw.mac_type == em_i350)
  reg_rctl |= 0x04000000;
 switch (sc->sc_rx_buffer_len) {
 default:
 case 2048:
  reg_rctl |= 0x00000000;
  break;
 case 4096:
  reg_rctl |= 0x00030000|0x02000000|0x00000020;
  break;
 case 8192:
  reg_rctl |= 0x00020000|0x02000000|0x00000020;
  break;
 case 16384:
  reg_rctl |= 0x00010000|0x02000000|0x00000020;
  break;
 }
 if (sc->hw.max_frame_size != 1518)
  reg_rctl |= 0x00000020;
 if (sc->hw.mac_type >= em_82543) {
  reg_rxcsum = bus_space_read_4(((struct em_osdep *)(&sc->hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(&sc->hw)->back)->mem_bus_space_handle, ((&sc->hw)->mac_type >= em_82543 ? 0x05000 : 0x05000));
  reg_rxcsum |= (0x00000100 | 0x00000200);
  bus_space_write_4(((struct em_osdep *)(&sc->hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(&sc->hw)->back)->mem_bus_space_handle, ((&sc->hw)->mac_type >= em_82543 ? 0x05000 : 0x05000), reg_rxcsum);
 }
 if (sc->hw.mac_type == em_82573)
  bus_space_write_4(((struct em_osdep *)(&sc->hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(&sc->hw)->back)->mem_bus_space_handle, ((&sc->hw)->mac_type >= em_82543 ? 0x02820 : 0x00108), 0x20);
 if (sc->hw.mac_type == em_82575 || sc->hw.mac_type == em_82580 ||
     sc->hw.mac_type == em_i210 || sc->hw.mac_type == em_i350) {
  uint32_t reg64;
  reg64 = bus_space_read_4(((struct em_osdep *)(&sc->hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(&sc->hw)->back)->mem_bus_space_handle, ((&sc->hw)->mac_type >= em_82543 ? 0x02828 : 0x02828));
  reg64 |= 0x2000000;
  bus_space_write_4(((struct em_osdep *)(&sc->hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(&sc->hw)->back)->mem_bus_space_handle, ((&sc->hw)->mac_type >= em_82543 ? 0x02828 : 0x02828), reg64);
 }
 bus_space_write_4(((struct em_osdep *)(&sc->hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(&sc->hw)->back)->mem_bus_space_handle, ((&sc->hw)->mac_type >= em_82543 ? 0x00100 : 0x00100), reg_rctl);
 bus_space_write_4(((struct em_osdep *)(&sc->hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(&sc->hw)->back)->mem_bus_space_handle, ((&sc->hw)->mac_type >= em_82543 ? 0x02810 : 0x00120), 0);
 bus_space_write_4(((struct em_osdep *)(&sc->hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(&sc->hw)->back)->mem_bus_space_handle, ((&sc->hw)->mac_type >= em_82543 ? 0x02818 : 0x00128), sc->sc_rx_desc_head);
}
void
em_free_receive_structures(struct em_softc *sc)
{
 struct em_packet *pkt;
 int i;
 if (0) printf("free_receive_structures: begin" "\n");
 if_rxr_init(&sc->sc_rx_ring, 0, 0);
 bus_dmamap_sync(sc->sc_dmat, sc->sc_rx_dma.dma_map,
     0, sc->sc_rx_dma.dma_map->dm_mapsize,
     0x02 | 0x08);
 if (sc->sc_rx_pkts_ring != ((void *)0)) {
  for (i = 0; i < sc->sc_rx_slots; i++) {
   pkt = &sc->sc_rx_pkts_ring[i];
   if (pkt->pkt_m != ((void *)0)) {
    bus_dmamap_sync(sc->sc_dmat, pkt->pkt_map,
        0, pkt->pkt_map->dm_mapsize,
        0x02);
    bus_dmamap_unload(sc->sc_dmat, pkt->pkt_map);
    m_freem(pkt->pkt_m);
    pkt->pkt_m = ((void *)0);
   }
   bus_dmamap_destroy(sc->sc_dmat, pkt->pkt_map);
  }
  free(sc->sc_rx_pkts_ring, 2,
      sc->sc_rx_slots * sizeof(*sc->sc_rx_pkts_ring));
  sc->sc_rx_pkts_ring = ((void *)0);
 }
 if (sc->fmp != ((void *)0)) {
  m_freem(sc->fmp);
  sc->fmp = ((void *)0);
  sc->lmp = ((void *)0);
 }
}
int
em_rxfill(struct em_softc *sc)
{
 u_int slots;
 int post = 0;
 int i;
 i = sc->sc_rx_desc_head;
 bus_dmamap_sync(sc->sc_dmat, sc->sc_rx_dma.dma_map,
     0, sc->sc_rx_dma.dma_map->dm_mapsize,
     0x08);
 for (slots = if_rxr_get(&sc->sc_rx_ring, sc->sc_rx_slots);
     slots > 0; slots--) {
  if (++i == sc->sc_rx_slots)
   i = 0;
  if (em_get_buf(sc, i) != 0)
   break;
  sc->sc_rx_desc_head = i;
  post = 1;
 }
 do { (&sc->sc_rx_ring)->rxr_alive -= (slots); } while (0);
 bus_dmamap_sync(sc->sc_dmat, sc->sc_rx_dma.dma_map,
     0, sc->sc_rx_dma.dma_map->dm_mapsize,
     0x04);
 return (post);
}
int
em_rxeof(struct em_softc *sc)
{
 struct ifnet *ifp = &sc->sc_ac.ac_if;
 struct mbuf_list ml = { ((void *)0), ((void *)0), 0 };
 struct mbuf *m;
 u_int8_t accept_frame = 0;
 u_int8_t eop = 0;
 u_int16_t len, desc_len, prev_len_adj;
 int i, rv = 0;
 struct em_rx_desc *desc;
 struct em_packet *pkt;
 u_int8_t status;
 if (((&sc->sc_rx_ring)->rxr_alive) == 0)
  return (0);
 i = sc->sc_rx_desc_tail;
 bus_dmamap_sync(sc->sc_dmat, sc->sc_rx_dma.dma_map,
     0, sc->sc_rx_dma.dma_map->dm_mapsize,
     0x02);
 do {
  m = ((void *)0);
  pkt = &sc->sc_rx_pkts_ring[i];
  desc = &sc->sc_rx_desc_ring[i];
  status = desc->status;
  if (!((status) & (0x01)))
   break;
  bus_dmamap_sync(sc->sc_dmat, pkt->pkt_map,
      0, pkt->pkt_map->dm_mapsize,
      0x02);
  bus_dmamap_unload(sc->sc_dmat, pkt->pkt_map);
  m = pkt->pkt_m;
  pkt->pkt_m = ((void *)0);
  ((m != ((void *)0)) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../dev/pci/if_em.c", 2790, "m != NULL"));
  do { (&sc->sc_rx_ring)->rxr_alive -= (1); } while (0);
  rv = 1;
  accept_frame = 1;
  prev_len_adj = 0;
  desc_len = (__uint16_t)(__builtin_constant_p(desc->length) ? (__uint16_t)(((__uint16_t)(desc->length) & 0xffU) << 8 | ((__uint16_t)(desc->length) & 0xff00U) >> 8) : __swap16md(desc->length));
  if (status & 0x02) {
   eop = 1;
   if (desc_len < 4) {
    len = 0;
    prev_len_adj = 4 - desc_len;
   } else if (sc->hw.mac_type == em_i210 ||
       sc->hw.mac_type == em_i350)
    len = desc_len;
   else
    len = desc_len - 4;
  } else {
   eop = 0;
   len = desc_len;
  }
  if (desc->errors & ( 0x01 | 0x02 | 0x04 | 0x10 | 0x80)) {
   u_int8_t last_byte;
   u_int32_t pkt_len = desc_len;
   if (sc->fmp != ((void *)0))
    pkt_len += sc->fmp->M_dat.MH.MH_pkthdr.len;
   last_byte = *(((caddr_t)((m)->m_hdr.mh_data)) + desc_len - 1);
   if (((&sc->hw)->tbi_compatibility_on && (((desc->errors) & ( 0x01 | 0x02 | 0x04 | 0x10 | 0x80)) == 0x01) && ((last_byte) == 0x0F) && (((status) & 0x08) ? (((pkt_len) > ((&sc->hw)->min_frame_size - 4)) && ((pkt_len) <= ((&sc->hw)->max_frame_size + 1))) : (((pkt_len) > (&sc->hw)->min_frame_size) && ((pkt_len) <= ((&sc->hw)->max_frame_size + 4 + 1)))))) {
    em_tbi_adjust_stats(&sc->hw, &sc->stats,
        pkt_len, sc->hw.mac_addr);
    if (len > 0)
     len--;
   } else
    accept_frame = 0;
  }
  if (accept_frame) {
   m->m_hdr.mh_len = len;
   if (sc->fmp == ((void *)0)) {
    m->M_dat.MH.MH_pkthdr.len = m->m_hdr.mh_len;
    sc->fmp = m;
    sc->lmp = m;
   } else {
    m->m_hdr.mh_flags &= ~0x0002;
    if (prev_len_adj > 0) {
     sc->lmp->m_hdr.mh_len -= prev_len_adj;
     sc->fmp->M_dat.MH.MH_pkthdr.len -= prev_len_adj;
    }
    sc->lmp->m_hdr.mh_next = m;
    sc->lmp = m;
    sc->fmp->M_dat.MH.MH_pkthdr.len += m->m_hdr.mh_len;
   }
   if (eop) {
    m = sc->fmp;
    em_receive_checksum(sc, desc, m);
    if (desc->status & 0x08) {
     m->M_dat.MH.MH_pkthdr.ether_vtag =
         (__uint16_t)(__builtin_constant_p(desc->special) ? (__uint16_t)(((__uint16_t)(desc->special) & 0xffU) << 8 | ((__uint16_t)(desc->special) & 0xff00U) >> 8) : __swap16md(desc->special));
     m->m_hdr.mh_flags |= 0x0020;
    }
    ml_enqueue(&ml, m);
    sc->fmp = ((void *)0);
    sc->lmp = ((void *)0);
   }
  } else {
   sc->dropped_pkts++;
   if (sc->fmp != ((void *)0)) {
    m_freem(sc->fmp);
    sc->fmp = ((void *)0);
    sc->lmp = ((void *)0);
   }
   m_freem(m);
  }
  if (++i == sc->sc_rx_slots)
   i = 0;
 } while (((&sc->sc_rx_ring)->rxr_alive) > 0);
 bus_dmamap_sync(sc->sc_dmat, sc->sc_rx_dma.dma_map,
     0, sc->sc_rx_dma.dma_map->dm_mapsize,
     0x01);
 sc->sc_rx_desc_tail = i;
 if_input(ifp, &ml);
 return (rv);
}
void
em_receive_checksum(struct em_softc *sc, struct em_rx_desc *rx_desc,
    struct mbuf *mp)
{
 if ((sc->hw.mac_type < em_82543) ||
     (rx_desc->status & 0x04)) {
  mp->M_dat.MH.MH_pkthdr.csum_flags = 0;
  return;
 }
 if (rx_desc->status & 0x40) {
  if (!(rx_desc->errors & 0x40)) {
   mp->M_dat.MH.MH_pkthdr.csum_flags = 0x0008;
  } else
   mp->M_dat.MH.MH_pkthdr.csum_flags = 0;
 }
 if (rx_desc->status & 0x20) {
  if (!(rx_desc->errors & 0x20))
   mp->M_dat.MH.MH_pkthdr.csum_flags |=
    0x0020 | 0x0080;
 }
}
void
em_enable_hw_vlans(struct em_softc *sc)
{
 uint32_t ctrl;
 ctrl = bus_space_read_4(((struct em_osdep *)(&sc->hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(&sc->hw)->back)->mem_bus_space_handle, ((&sc->hw)->mac_type >= em_82543 ? 0x00000 : 0x00000));
 ctrl |= 0x40000000;
 bus_space_write_4(((struct em_osdep *)(&sc->hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(&sc->hw)->back)->mem_bus_space_handle, ((&sc->hw)->mac_type >= em_82543 ? 0x00000 : 0x00000), ctrl);
}
void
em_enable_intr(struct em_softc *sc)
{
 bus_space_write_4(((struct em_osdep *)(&sc->hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(&sc->hw)->back)->mem_bus_space_handle, ((&sc->hw)->mac_type >= em_82543 ? 0x000D0 : 0x000D0), (( 0x00000080 | 0x00000001 | 0x00000010 | 0x00000008 | 0x00000040 | 0x00000004)));
}
void
em_disable_intr(struct em_softc *sc)
{
 if (sc->hw.mac_type == em_82542_rev2_0)
  bus_space_write_4(((struct em_osdep *)(&sc->hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(&sc->hw)->back)->mem_bus_space_handle, ((&sc->hw)->mac_type >= em_82543 ? 0x000D8 : 0x000D8), (0xffffffff & ~0x00000008));
 else
  bus_space_write_4(((struct em_osdep *)(&sc->hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(&sc->hw)->back)->mem_bus_space_handle, ((&sc->hw)->mac_type >= em_82543 ? 0x000D8 : 0x000D8), 0xffffffff);
}
void
em_write_pci_cfg(struct em_hw *hw, uint32_t reg64, uint16_t *value)
{
 struct pci_attach_args *pa = &((struct em_osdep *)hw->back)->em_pa;
 pcireg_t val;
 val = pci_conf_read(pa->pa_pc, pa->pa_tag, reg64 & ~0x3);
 if (reg64 & 0x2) {
  val &= 0x0000ffff;
  val |= (*value << 16);
 } else {
  val &= 0xffff0000;
  val |= *value;
 }
 pci_conf_write(pa->pa_pc, pa->pa_tag, reg64 & ~0x3, val);
}
void
em_read_pci_cfg(struct em_hw *hw, uint32_t reg64, uint16_t *value)
{
 struct pci_attach_args *pa = &((struct em_osdep *)hw->back)->em_pa;
 pcireg_t val;
 val = pci_conf_read(pa->pa_pc, pa->pa_tag, reg64 & ~0x3);
 if (reg64 & 0x2)
  *value = (val >> 16) & 0xffff;
 else
  *value = val & 0xffff;
}
void
em_pci_set_mwi(struct em_hw *hw)
{
 struct pci_attach_args *pa = &((struct em_osdep *)hw->back)->em_pa;
 pci_conf_write(pa->pa_pc, pa->pa_tag, 0x04,
  (hw->pci_cmd_word | 0x0010));
}
void
em_pci_clear_mwi(struct em_hw *hw)
{
 struct pci_attach_args *pa = &((struct em_osdep *)hw->back)->em_pa;
 pci_conf_write(pa->pa_pc, pa->pa_tag, 0x04,
  (hw->pci_cmd_word & ~0x0010));
}
int32_t
em_read_pcie_cap_reg(struct em_hw *hw, uint32_t reg64, uint16_t *value)
{
 return -14;
}
u_int32_t
em_fill_descriptors(u_int64_t address, u_int32_t length,
    PDESC_ARRAY desc_array)
{
        u_int32_t safe_terminator;
        if (length <= 4) {
                desc_array->descriptor[0].address = address;
                desc_array->descriptor[0].length = length;
                desc_array->elements = 1;
                return desc_array->elements;
        }
        safe_terminator = (u_int32_t)((((u_int32_t)address & 0x7) + (length & 0xF)) & 0xF);
        if (safe_terminator == 0 ||
        (safe_terminator > 4 &&
        safe_terminator < 9) ||
        (safe_terminator > 0xC &&
        safe_terminator <= 0xF)) {
                desc_array->descriptor[0].address = address;
                desc_array->descriptor[0].length = length;
                desc_array->elements = 1;
                return desc_array->elements;
        }
        desc_array->descriptor[0].address = address;
        desc_array->descriptor[0].length = length - 4;
        desc_array->descriptor[1].address = address + (length - 4);
        desc_array->descriptor[1].length = 4;
        desc_array->elements = 2;
        return desc_array->elements;
}
void
em_disable_aspm(struct em_softc *sc)
{
 int offset;
 pcireg_t val;
 switch (sc->hw.mac_type) {
  case em_82571:
  case em_82572:
  case em_82573:
  case em_82574:
   break;
  default:
   return;
 }
 if (!pci_get_capability(sc->osdep.em_pa.pa_pc, sc->osdep.em_pa.pa_tag,
     0x10, &offset, ((void *)0)))
  return;
 val = pci_conf_read(sc->osdep.em_pa.pa_pc, sc->osdep.em_pa.pa_tag,
     offset + 0x10);
 switch (sc->hw.mac_type) {
  case em_82571:
  case em_82572:
   val &= ~0x00000002;
   break;
  case em_82573:
  case em_82574:
   val &= ~(0x00000001 |
       0x00000002);
   break;
  default:
   break;
 }
 pci_conf_write(sc->osdep.em_pa.pa_pc, sc->osdep.em_pa.pa_tag,
     offset + 0x10, val);
}
void
em_flush_tx_ring(struct em_softc *sc)
{
 uint32_t tctl, txd_lower = 0x02000000;
 uint16_t size = 512;
 struct em_tx_desc *txd;
 ((sc->sc_tx_desc_ring != ((void *)0)) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../dev/pci/if_em.c", 3148, "sc->sc_tx_desc_ring != NULL"));
 tctl = bus_space_read_4(((struct em_osdep *)(&sc->hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(&sc->hw)->back)->mem_bus_space_handle, 0x00400);
 bus_space_write_4(((struct em_osdep *)(&sc->hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(&sc->hw)->back)->mem_bus_space_handle, 0x00400, tctl | 0x00000002);
 ((bus_space_read_4(((struct em_osdep *)(&sc->hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(&sc->hw)->back)->mem_bus_space_handle, 0x03818) == sc->sc_tx_desc_head) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../dev/pci/if_em.c", 3153, "EM_READ_REG(&sc->hw, E1000_TDT) == sc->sc_tx_desc_head"));
 txd = &sc->sc_tx_desc_ring[sc->sc_tx_desc_head];
 txd->buffer_addr = sc->sc_tx_dma.dma_map->dm_segs[0].ds_addr;
 txd->lower.data = (__uint32_t)(__builtin_constant_p(txd_lower | size) ? (__uint32_t)(((__uint32_t)(txd_lower | size) & 0xff) << 24 | ((__uint32_t)(txd_lower | size) & 0xff00) << 8 | ((__uint32_t)(txd_lower | size) & 0xff0000) >> 8 | ((__uint32_t)(txd_lower | size) & 0xff000000) >> 24) : __swap32md(txd_lower | size));
 txd->upper.data = 0;
 bus_space_barrier(sc->osdep.mem_bus_space_tag,
     sc->osdep.mem_bus_space_handle, 0, 0, 0x02);
 if (++sc->sc_tx_desc_head == sc->sc_tx_slots)
  sc->sc_tx_desc_head = 0;
 bus_space_write_4(((struct em_osdep *)(&sc->hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(&sc->hw)->back)->mem_bus_space_handle, 0x03818, sc->sc_tx_desc_head);
 bus_space_barrier(sc->osdep.mem_bus_space_tag, sc->osdep.mem_bus_space_handle,
     0, 0, 0x01|0x02);
 delay(250);
}
void
em_flush_rx_ring(struct em_softc *sc)
{
 uint32_t rctl, rxdctl;
 rctl = bus_space_read_4(((struct em_osdep *)(&sc->hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(&sc->hw)->back)->mem_bus_space_handle, 0x00100);
 bus_space_write_4(((struct em_osdep *)(&sc->hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(&sc->hw)->back)->mem_bus_space_handle, 0x00100, rctl & ~0x00000002);
 bus_space_read_4(((struct em_osdep *)(&sc->hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(&sc->hw)->back)->mem_bus_space_handle, ((&sc->hw)->mac_type >= em_82543 ? 0x00008 : 0x00008));
 delay(150);
 rxdctl = bus_space_read_4(((struct em_osdep *)(&sc->hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(&sc->hw)->back)->mem_bus_space_handle, 0x02828);
 rxdctl &= 0xffffc000;
 rxdctl |= (0x1F | (1 << 8) | 0x1000000);
 bus_space_write_4(((struct em_osdep *)(&sc->hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(&sc->hw)->back)->mem_bus_space_handle, 0x02828, rxdctl);
 bus_space_write_4(((struct em_osdep *)(&sc->hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(&sc->hw)->back)->mem_bus_space_handle, 0x00100, rctl | 0x00000002);
 bus_space_read_4(((struct em_osdep *)(&sc->hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(&sc->hw)->back)->mem_bus_space_handle, ((&sc->hw)->mac_type >= em_82543 ? 0x00008 : 0x00008));
 delay(150);
 bus_space_write_4(((struct em_osdep *)(&sc->hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(&sc->hw)->back)->mem_bus_space_handle, 0x00100, rctl & ~0x00000002);
}
void
em_flush_desc_rings(struct em_softc *sc)
{
 struct pci_attach_args *pa = &sc->osdep.em_pa;
 uint32_t fextnvm11, tdlen;
 uint16_t hang_state;
 fextnvm11 = bus_space_read_4(((struct em_osdep *)(&sc->hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(&sc->hw)->back)->mem_bus_space_handle, 0x05bbc);
 fextnvm11 |= 0x00002000;
 bus_space_write_4(((struct em_osdep *)(&sc->hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(&sc->hw)->back)->mem_bus_space_handle, 0x05bbc, fextnvm11);
 tdlen = bus_space_read_4(((struct em_osdep *)(&sc->hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(&sc->hw)->back)->mem_bus_space_handle, 0x03808);
 hang_state = pci_conf_read(pa->pa_pc, pa->pa_tag, 0xe4);
 if (!(hang_state & 0x100) || !tdlen)
  return;
 em_flush_tx_ring(sc);
 hang_state = pci_conf_read(pa->pa_pc, pa->pa_tag, 0xe4);
 if (hang_state & 0x100)
  em_flush_rx_ring(sc);
}
void
em_update_stats_counters(struct em_softc *sc)
{
 struct ifnet *ifp = &sc->sc_ac.ac_if;
 sc->stats.crcerrs += bus_space_read_4(((struct em_osdep *)(&sc->hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(&sc->hw)->back)->mem_bus_space_handle, ((&sc->hw)->mac_type >= em_82543 ? 0x04000 : 0x04000));
 sc->stats.mpc += bus_space_read_4(((struct em_osdep *)(&sc->hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(&sc->hw)->back)->mem_bus_space_handle, ((&sc->hw)->mac_type >= em_82543 ? 0x04010 : 0x04010));
 sc->stats.ecol += bus_space_read_4(((struct em_osdep *)(&sc->hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(&sc->hw)->back)->mem_bus_space_handle, ((&sc->hw)->mac_type >= em_82543 ? 0x04018 : 0x04018));
 sc->stats.latecol += bus_space_read_4(((struct em_osdep *)(&sc->hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(&sc->hw)->back)->mem_bus_space_handle, ((&sc->hw)->mac_type >= em_82543 ? 0x04020 : 0x04020));
 sc->stats.colc += bus_space_read_4(((struct em_osdep *)(&sc->hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(&sc->hw)->back)->mem_bus_space_handle, ((&sc->hw)->mac_type >= em_82543 ? 0x04028 : 0x04028));
 sc->stats.ruc += bus_space_read_4(((struct em_osdep *)(&sc->hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(&sc->hw)->back)->mem_bus_space_handle, ((&sc->hw)->mac_type >= em_82543 ? 0x040A4 : 0x040A4));
 sc->stats.roc += bus_space_read_4(((struct em_osdep *)(&sc->hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(&sc->hw)->back)->mem_bus_space_handle, ((&sc->hw)->mac_type >= em_82543 ? 0x040AC : 0x040AC));
 if (sc->hw.mac_type >= em_82543) {
  sc->stats.algnerrc +=
  bus_space_read_4(((struct em_osdep *)(&sc->hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(&sc->hw)->back)->mem_bus_space_handle, ((&sc->hw)->mac_type >= em_82543 ? 0x04004 : 0x04004));
  sc->stats.rxerrc +=
  bus_space_read_4(((struct em_osdep *)(&sc->hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(&sc->hw)->back)->mem_bus_space_handle, ((&sc->hw)->mac_type >= em_82543 ? 0x0400C : 0x0400C));
  sc->stats.cexterr +=
  bus_space_read_4(((struct em_osdep *)(&sc->hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(&sc->hw)->back)->mem_bus_space_handle, ((&sc->hw)->mac_type >= em_82543 ? 0x0403C : 0x0403C));
 }
 ifp->if_data.ifi_collisions = sc->stats.colc;
 ifp->if_data.ifi_ierrors =
     sc->dropped_pkts +
     sc->stats.rxerrc +
     sc->stats.crcerrs +
     sc->stats.algnerrc +
     sc->stats.ruc + sc->stats.roc +
     sc->stats.mpc + sc->stats.cexterr +
     sc->rx_overruns;
 ifp->if_data.ifi_oerrors = sc->stats.ecol + sc->stats.latecol +
     sc->watchdog_events;
}
