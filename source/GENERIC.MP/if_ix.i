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
enum {
 PBA_STRATEGY_EQUAL = 0,
 PBA_STRATEGY_WEIGHTED = 1,
};
enum ixgbe_fdir_pballoc_type {
 IXGBE_FDIR_PBALLOC_NONE = 0,
 IXGBE_FDIR_PBALLOC_64K = 1,
 IXGBE_FDIR_PBALLOC_128K = 2,
 IXGBE_FDIR_PBALLOC_256K = 3,
};
struct ixgbe_hic_hdr {
 uint8_t cmd;
 uint8_t buf_len;
 union {
  uint8_t cmd_resv;
  uint8_t ret_status;
 } cmd_or_resp;
 uint8_t checksum;
};
struct ixgbe_hic_hdr2_req {
 uint8_t cmd;
 uint8_t buf_lenh;
 uint8_t buf_lenl;
 uint8_t checksum;
};
struct ixgbe_hic_hdr2_rsp {
 uint8_t cmd;
 uint8_t buf_lenl;
 uint8_t buf_lenh_status;
 uint8_t checksum;
};
union ixgbe_hic_hdr2 {
 struct ixgbe_hic_hdr2_req req;
 struct ixgbe_hic_hdr2_rsp rsp;
};
struct ixgbe_hic_drv_info {
 struct ixgbe_hic_hdr hdr;
 uint8_t port_num;
 uint8_t ver_sub;
 uint8_t ver_build;
 uint8_t ver_min;
 uint8_t ver_maj;
 uint8_t pad;
 uint16_t pad2;
};
struct ixgbe_hic_read_shadow_ram {
 union ixgbe_hic_hdr2 hdr;
 uint32_t address;
 uint16_t length;
 uint16_t pad2;
 uint16_t data;
 uint16_t pad3;
};
struct ixgbe_hic_write_shadow_ram {
 union ixgbe_hic_hdr2 hdr;
 uint32_t address;
 uint16_t length;
 uint16_t pad2;
 uint16_t data;
 uint16_t pad3;
};
struct ixgbe_hic_disable_rxen {
 struct ixgbe_hic_hdr hdr;
 uint8_t port_number;
 uint8_t pad2;
 uint16_t pad3;
};
struct ixgbe_hic_internal_phy_req {
 struct ixgbe_hic_hdr hdr;
 uint8_t port_number;
 uint8_t command_type;
 uint16_t address;
 uint16_t rsv1;
 uint32_t write_data;
 uint16_t pad;
};
struct ixgbe_hic_internal_phy_resp {
 struct ixgbe_hic_hdr hdr;
 uint32_t read_data;
};
struct ixgbe_legacy_tx_desc {
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
   uint16_t vlan;
  } fields;
 } upper;
};
union ixgbe_adv_tx_desc {
 struct {
  uint64_t buffer_addr;
  uint32_t cmd_type_len;
  uint32_t olinfo_status;
 } read;
 struct {
  uint64_t rsvd;
  uint32_t nxtseq_seed;
  uint32_t status;
 } wb;
};
struct ixgbe_legacy_rx_desc {
 uint64_t buffer_addr;
 uint16_t length;
 uint16_t csum;
 uint8_t status;
 uint8_t errors;
 uint16_t vlan;
};
union ixgbe_adv_rx_desc {
 struct {
  uint64_t pkt_addr;
  uint64_t hdr_addr;
 } read;
 struct {
  struct {
   union {
    uint32_t data;
    struct {
     uint16_t pkt_info;
     uint16_t hdr_info;
    } hs_rss;
   } lo_dword;
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
struct ixgbe_adv_tx_context_desc {
 uint32_t vlan_macip_lens;
 uint32_t seqnum_seed;
 uint32_t type_tucmd_mlhl;
 uint32_t mss_l4len_idx;
};
typedef uint32_t ixgbe_autoneg_advertised;
typedef uint32_t ixgbe_link_speed;
typedef uint32_t ixgbe_physical_layer;
enum ixgbe_atr_flow_type {
 IXGBE_ATR_FLOW_TYPE_IPV4 = 0x0,
 IXGBE_ATR_FLOW_TYPE_UDPV4 = 0x1,
 IXGBE_ATR_FLOW_TYPE_TCPV4 = 0x2,
 IXGBE_ATR_FLOW_TYPE_SCTPV4 = 0x3,
 IXGBE_ATR_FLOW_TYPE_IPV6 = 0x4,
 IXGBE_ATR_FLOW_TYPE_UDPV6 = 0x5,
 IXGBE_ATR_FLOW_TYPE_TCPV6 = 0x6,
 IXGBE_ATR_FLOW_TYPE_SCTPV6 = 0x7,
 IXGBE_ATR_FLOW_TYPE_TUNNELED_IPV4 = 0x10,
 IXGBE_ATR_FLOW_TYPE_TUNNELED_UDPV4 = 0x11,
 IXGBE_ATR_FLOW_TYPE_TUNNELED_TCPV4 = 0x12,
 IXGBE_ATR_FLOW_TYPE_TUNNELED_SCTPV4 = 0x13,
 IXGBE_ATR_FLOW_TYPE_TUNNELED_IPV6 = 0x14,
 IXGBE_ATR_FLOW_TYPE_TUNNELED_UDPV6 = 0x15,
 IXGBE_ATR_FLOW_TYPE_TUNNELED_TCPV6 = 0x16,
 IXGBE_ATR_FLOW_TYPE_TUNNELED_SCTPV6 = 0x17,
};
union ixgbe_atr_input {
 struct {
  uint8_t vm_pool;
  uint8_t flow_type;
  uint16_t vlan_id;
  uint32_t dst_ip[4];
  uint32_t src_ip[4];
  uint8_t inner_mac[6];
  uint16_t tunnel_type;
  uint32_t tni_vni;
  uint16_t src_port;
  uint16_t dst_port;
  uint16_t flex_bytes;
  uint16_t bkt_hash;
 } formatted;
 uint32_t dword_stream[14];
};
union ixgbe_atr_hash_dword {
 struct {
  uint8_t vm_pool;
  uint8_t flow_type;
  uint16_t vlan_id;
 } formatted;
 uint32_t ip;
 struct {
  uint16_t src;
  uint16_t dst;
 } port;
 uint16_t flex_bytes;
 uint32_t dword;
};
enum ixgbe_fcoe_boot_status {
 ixgbe_fcoe_bootstatus_disabled = 0,
 ixgbe_fcoe_bootstatus_enabled = 1,
 ixgbe_fcoe_bootstatus_unavailable = 0xFFFF
};
enum ixgbe_eeprom_type {
 ixgbe_eeprom_uninitialized = 0,
 ixgbe_eeprom_spi,
 ixgbe_flash,
 ixgbe_eeprom_none
};
enum ixgbe_mac_type {
 ixgbe_mac_unknown = 0,
 ixgbe_mac_82598EB,
 ixgbe_mac_82599EB,
 ixgbe_mac_82599_vf,
 ixgbe_mac_X540,
 ixgbe_mac_X540_vf,
 ixgbe_mac_X550,
 ixgbe_mac_X550EM_x,
 ixgbe_mac_X550_vf,
 ixgbe_mac_X550EM_x_vf,
 ixgbe_num_macs
};
enum ixgbe_phy_type {
 ixgbe_phy_unknown = 0,
 ixgbe_phy_none,
 ixgbe_phy_tn,
 ixgbe_phy_aq,
 ixgbe_phy_x550em_kr,
 ixgbe_phy_x550em_kx4,
 ixgbe_phy_x550em_ext_t,
 ixgbe_phy_cu_unknown,
 ixgbe_phy_qt,
 ixgbe_phy_xaui,
 ixgbe_phy_nl,
 ixgbe_phy_sfp_passive_tyco,
 ixgbe_phy_sfp_passive_unknown,
 ixgbe_phy_sfp_active_unknown,
 ixgbe_phy_sfp_avago,
 ixgbe_phy_sfp_ftl,
 ixgbe_phy_sfp_ftl_active,
 ixgbe_phy_sfp_unknown,
 ixgbe_phy_sfp_intel,
 ixgbe_phy_qsfp_passive_unknown,
 ixgbe_phy_qsfp_active_unknown,
 ixgbe_phy_qsfp_intel,
 ixgbe_phy_qsfp_unknown,
 ixgbe_phy_sfp_unsupported,
 ixgbe_phy_generic
};
enum ixgbe_sfp_type {
 ixgbe_sfp_type_da_cu = 0,
 ixgbe_sfp_type_sr = 1,
 ixgbe_sfp_type_lr = 2,
 ixgbe_sfp_type_da_cu_core0 = 3,
 ixgbe_sfp_type_da_cu_core1 = 4,
 ixgbe_sfp_type_srlr_core0 = 5,
 ixgbe_sfp_type_srlr_core1 = 6,
 ixgbe_sfp_type_da_act_lmt_core0 = 7,
 ixgbe_sfp_type_da_act_lmt_core1 = 8,
 ixgbe_sfp_type_1g_cu_core0 = 9,
 ixgbe_sfp_type_1g_cu_core1 = 10,
 ixgbe_sfp_type_1g_sx_core0 = 11,
 ixgbe_sfp_type_1g_sx_core1 = 12,
 ixgbe_sfp_type_1g_lx_core0 = 13,
 ixgbe_sfp_type_1g_lx_core1 = 14,
 ixgbe_sfp_type_not_present = 0xFFFE,
 ixgbe_sfp_type_unknown = 0xFFFF
};
enum ixgbe_media_type {
 ixgbe_media_type_unknown = 0,
 ixgbe_media_type_fiber,
 ixgbe_media_type_fiber_fixed,
 ixgbe_media_type_fiber_qsfp,
 ixgbe_media_type_copper,
 ixgbe_media_type_backplane,
 ixgbe_media_type_cx4,
 ixgbe_media_type_virtual
};
enum ixgbe_fc_mode {
 ixgbe_fc_none = 0,
 ixgbe_fc_rx_pause,
 ixgbe_fc_tx_pause,
 ixgbe_fc_full,
 ixgbe_fc_default
};
enum ixgbe_smart_speed {
 ixgbe_smart_speed_auto = 0,
 ixgbe_smart_speed_on,
 ixgbe_smart_speed_off
};
enum ixgbe_bus_type {
 ixgbe_bus_type_unknown = 0,
 ixgbe_bus_type_pci,
 ixgbe_bus_type_pcix,
 ixgbe_bus_type_pci_express,
 ixgbe_bus_type_internal,
 ixgbe_bus_type_reserved
};
enum ixgbe_bus_speed {
 ixgbe_bus_speed_unknown = 0,
 ixgbe_bus_speed_33 = 33,
 ixgbe_bus_speed_66 = 66,
 ixgbe_bus_speed_100 = 100,
 ixgbe_bus_speed_120 = 120,
 ixgbe_bus_speed_133 = 133,
 ixgbe_bus_speed_2500 = 2500,
 ixgbe_bus_speed_5000 = 5000,
 ixgbe_bus_speed_8000 = 8000,
 ixgbe_bus_speed_reserved
};
enum ixgbe_bus_width {
 ixgbe_bus_width_unknown = 0,
 ixgbe_bus_width_pcie_x1 = 1,
 ixgbe_bus_width_pcie_x2 = 2,
 ixgbe_bus_width_pcie_x4 = 4,
 ixgbe_bus_width_pcie_x8 = 8,
 ixgbe_bus_width_32 = 32,
 ixgbe_bus_width_64 = 64,
 ixgbe_bus_width_reserved
};
struct ixgbe_addr_filter_info {
 uint32_t num_mc_addrs;
 uint32_t rar_used_count;
 uint32_t mta_in_use;
 uint32_t overflow_promisc;
 _Bool user_set_promisc;
};
struct ixgbe_bus_info {
 enum ixgbe_bus_speed speed;
 enum ixgbe_bus_width width;
 enum ixgbe_bus_type type;
 uint16_t func;
 uint16_t lan_id;
};
struct ixgbe_fc_info {
 uint32_t high_water[8];
 uint32_t low_water[8];
 uint16_t pause_time;
 _Bool send_xon;
 _Bool strict_ieee;
 _Bool disable_fc_autoneg;
 _Bool fc_was_autonegged;
 enum ixgbe_fc_mode current_mode;
 enum ixgbe_fc_mode requested_mode;
};
struct ixgbe_hw_stats {
 uint64_t crcerrs;
 uint64_t illerrc;
 uint64_t errbc;
 uint64_t mspdc;
 uint64_t mpctotal;
 uint64_t mpc[8];
 uint64_t mlfc;
 uint64_t mrfc;
 uint64_t rlec;
 uint64_t lxontxc;
 uint64_t lxonrxc;
 uint64_t lxofftxc;
 uint64_t lxoffrxc;
 uint64_t pxontxc[8];
 uint64_t pxonrxc[8];
 uint64_t pxofftxc[8];
 uint64_t pxoffrxc[8];
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
 uint64_t gorc;
 uint64_t gotc;
 uint64_t rnbc[8];
 uint64_t ruc;
 uint64_t rfc;
 uint64_t roc;
 uint64_t rjc;
 uint64_t mngprc;
 uint64_t mngpdc;
 uint64_t mngptc;
 uint64_t tor;
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
 uint64_t xec;
 uint64_t qprc[16];
 uint64_t qptc[16];
 uint64_t qbrc[16];
 uint64_t qbtc[16];
 uint64_t qprdc[16];
 uint64_t pxon2offc[8];
 uint64_t fdirustat_add;
 uint64_t fdirustat_remove;
 uint64_t fdirfstat_fadd;
 uint64_t fdirfstat_fremove;
 uint64_t fdirmatch;
 uint64_t fdirmiss;
 uint64_t fccrc;
 uint64_t fclast;
 uint64_t fcoerpdc;
 uint64_t fcoeprc;
 uint64_t fcoeptc;
 uint64_t fcoedwrc;
 uint64_t fcoedwtc;
 uint64_t fcoe_noddp;
 uint64_t fcoe_noddp_ext_buff;
 uint64_t ldpcec;
 uint64_t pcrc8ec;
 uint64_t b2ospc;
 uint64_t b2ogprc;
 uint64_t o2bgptc;
 uint64_t o2bspc;
};
struct ixgbe_hw;
typedef uint8_t* (*ixgbe_mc_addr_itr)(struct ixgbe_hw *hw,
          uint8_t **mc_addr_ptr,
          uint32_t *vmdq);
struct ixgbe_eeprom_operations {
 int32_t (*init_params)(struct ixgbe_hw *);
 int32_t (*read)(struct ixgbe_hw *, uint16_t, uint16_t *);
 int32_t (*write)(struct ixgbe_hw *, uint16_t, uint16_t);
 int32_t (*validate_checksum)(struct ixgbe_hw *, uint16_t *);
 int32_t (*update_checksum)(struct ixgbe_hw *);
 int32_t (*calc_checksum)(struct ixgbe_hw *);
};
struct ixgbe_mac_operations {
 int32_t (*init_hw)(struct ixgbe_hw *);
 int32_t (*reset_hw)(struct ixgbe_hw *);
 int32_t (*start_hw)(struct ixgbe_hw *);
 int32_t (*clear_hw_cntrs)(struct ixgbe_hw *);
 enum ixgbe_media_type (*get_media_type)(struct ixgbe_hw *);
 uint32_t (*get_supported_physical_layer)(struct ixgbe_hw *);
 int32_t (*get_mac_addr)(struct ixgbe_hw *, uint8_t *);
 int32_t (*stop_adapter)(struct ixgbe_hw *);
 int32_t (*get_bus_info)(struct ixgbe_hw *);
 void (*set_lan_id)(struct ixgbe_hw *);
 int32_t (*read_analog_reg8)(struct ixgbe_hw*, uint32_t, uint8_t*);
 int32_t (*write_analog_reg8)(struct ixgbe_hw*, uint32_t, uint8_t);
 int32_t (*setup_sfp)(struct ixgbe_hw *);
 int32_t (*enable_rx_dma)(struct ixgbe_hw *, uint32_t);
 int32_t (*disable_sec_rx_path)(struct ixgbe_hw *);
 int32_t (*enable_sec_rx_path)(struct ixgbe_hw *);
 int32_t (*acquire_swfw_sync)(struct ixgbe_hw *, uint32_t);
 void (*release_swfw_sync)(struct ixgbe_hw *, uint32_t);
 int32_t (*prot_autoc_read)(struct ixgbe_hw *, _Bool *, uint32_t *);
 int32_t (*prot_autoc_write)(struct ixgbe_hw *, uint32_t, _Bool);
 void (*disable_tx_laser)(struct ixgbe_hw *);
 void (*enable_tx_laser)(struct ixgbe_hw *);
 void (*flap_tx_laser)(struct ixgbe_hw *);
 int32_t (*setup_link)(struct ixgbe_hw *, ixgbe_link_speed, _Bool);
 int32_t (*setup_mac_link)(struct ixgbe_hw *, ixgbe_link_speed, _Bool);
 int32_t (*check_link)(struct ixgbe_hw *, ixgbe_link_speed *, _Bool *, _Bool);
 int32_t (*get_link_capabilities)(struct ixgbe_hw *, ixgbe_link_speed *,
      _Bool *);
 void (*set_rate_select_speed)(struct ixgbe_hw *, ixgbe_link_speed);
 int32_t (*led_on)(struct ixgbe_hw *, uint32_t);
 int32_t (*led_off)(struct ixgbe_hw *, uint32_t);
 int32_t (*blink_led_start)(struct ixgbe_hw *, uint32_t);
 int32_t (*blink_led_stop)(struct ixgbe_hw *, uint32_t);
 int32_t (*set_rar)(struct ixgbe_hw *, uint32_t, uint8_t *, uint32_t, uint32_t);
 int32_t (*clear_rar)(struct ixgbe_hw *, uint32_t);
 int32_t (*insert_mac_addr)(struct ixgbe_hw *, uint8_t *, uint32_t);
 int32_t (*set_vmdq)(struct ixgbe_hw *, uint32_t, uint32_t);
 int32_t (*clear_vmdq)(struct ixgbe_hw *, uint32_t, uint32_t);
 int32_t (*init_rx_addrs)(struct ixgbe_hw *);
 int32_t (*update_mc_addr_list)(struct ixgbe_hw *, uint8_t *, uint32_t,
           ixgbe_mc_addr_itr, _Bool clear);
 int32_t (*enable_mc)(struct ixgbe_hw *);
 int32_t (*disable_mc)(struct ixgbe_hw *);
 int32_t (*clear_vfta)(struct ixgbe_hw *);
 int32_t (*set_vfta)(struct ixgbe_hw *, uint32_t, uint32_t, _Bool);
 int32_t (*set_vlvf)(struct ixgbe_hw *, uint32_t, uint32_t, _Bool, _Bool *);
 int32_t (*init_uta_tables)(struct ixgbe_hw *);
 void (*set_mac_anti_spoofing)(struct ixgbe_hw *, _Bool, int);
 void (*set_vlan_anti_spoofing)(struct ixgbe_hw *, _Bool, int);
 int32_t (*fc_enable)(struct ixgbe_hw *);
 int32_t (*setup_fc)(struct ixgbe_hw *);
 void (*disable_rx)(struct ixgbe_hw *hw);
 void (*enable_rx)(struct ixgbe_hw *hw);
 void (*stop_mac_link_on_d3)(struct ixgbe_hw *);
};
struct ixgbe_phy_operations {
 int32_t (*identify)(struct ixgbe_hw *);
 int32_t (*identify_sfp)(struct ixgbe_hw *);
 int32_t (*init)(struct ixgbe_hw *);
 int32_t (*reset)(struct ixgbe_hw *);
 int32_t (*read_reg)(struct ixgbe_hw *, uint32_t, uint32_t, uint16_t *);
 int32_t (*write_reg)(struct ixgbe_hw *, uint32_t, uint32_t, uint16_t);
 int32_t (*read_reg_mdi)(struct ixgbe_hw *, uint32_t, uint32_t, uint16_t *);
 int32_t (*write_reg_mdi)(struct ixgbe_hw *, uint32_t, uint32_t, uint16_t);
 int32_t (*setup_link)(struct ixgbe_hw *);
 int32_t (*setup_internal_link)(struct ixgbe_hw *);
 int32_t (*setup_link_speed)(struct ixgbe_hw *, ixgbe_link_speed, _Bool);
 int32_t (*check_link)(struct ixgbe_hw *, ixgbe_link_speed *, _Bool *);
 int32_t (*get_firmware_version)(struct ixgbe_hw *, uint16_t *);
 int32_t (*read_i2c_byte)(struct ixgbe_hw *, uint8_t, uint8_t, uint8_t *);
 int32_t (*write_i2c_byte)(struct ixgbe_hw *, uint8_t, uint8_t, uint8_t);
 int32_t (*read_i2c_eeprom)(struct ixgbe_hw *, uint8_t , uint8_t *);
 int32_t (*write_i2c_eeprom)(struct ixgbe_hw *, uint8_t, uint8_t);
 void (*i2c_bus_clear)(struct ixgbe_hw *);
 int32_t (*read_i2c_combined)(struct ixgbe_hw *, uint8_t addr, uint16_t reg64, uint16_t *val);
 int32_t (*write_i2c_combined)(struct ixgbe_hw *, uint8_t addr, uint16_t reg64, uint16_t val);
 int32_t (*check_overtemp)(struct ixgbe_hw *);
 int32_t (*set_phy_power)(struct ixgbe_hw *, _Bool on);
 int32_t (*handle_lasi)(struct ixgbe_hw *hw);
 int32_t (*read_i2c_combined_unlocked)(struct ixgbe_hw *, uint8_t addr, uint16_t reg64,
           uint16_t *value);
 int32_t (*write_i2c_combined_unlocked)(struct ixgbe_hw *, uint8_t addr, uint16_t reg64,
            uint16_t value);
 int32_t (*read_i2c_byte_unlocked)(struct ixgbe_hw *, uint8_t offset, uint8_t addr,
       uint8_t *value);
 int32_t (*write_i2c_byte_unlocked)(struct ixgbe_hw *, uint8_t offset, uint8_t addr,
        uint8_t value);
};
struct ixgbe_eeprom_info {
 struct ixgbe_eeprom_operations ops;
 enum ixgbe_eeprom_type type;
 uint32_t semaphore_delay;
 uint16_t word_size;
 uint16_t address_bits;
 uint16_t word_page_size;
 uint16_t ctrl_word_3;
};
struct ixgbe_mac_info {
 struct ixgbe_mac_operations ops;
 enum ixgbe_mac_type type;
 uint8_t addr[6];
 uint8_t perm_addr[6];
 uint32_t mta_shadow[128];
 int32_t mc_filter_type;
 uint32_t mcft_size;
 uint32_t vft_size;
 uint32_t num_rar_entries;
 uint32_t rar_highwater;
 uint32_t rx_pb_size;
 uint32_t max_tx_queues;
 uint32_t max_rx_queues;
 uint32_t orig_autoc;
 _Bool get_link_status;
 uint32_t orig_autoc2;
 uint32_t max_msix_vectors;
 int msix_vectors_from_pcie;
 _Bool orig_link_settings_stored;
 _Bool autotry_restart;
 uint8_t flags;
 uint32_t max_link_up_time;
};
struct ixgbe_phy_info {
 struct ixgbe_phy_operations ops;
 enum ixgbe_phy_type type;
 uint32_t addr;
 uint32_t id;
 enum ixgbe_sfp_type sfp_type;
 _Bool sfp_setup_needed;
 uint32_t revision;
 enum ixgbe_media_type media_type;
 uint32_t phy_semaphore_mask;
 _Bool reset_disable;
 ixgbe_autoneg_advertised autoneg_advertised;
 ixgbe_link_speed speeds_supported;
 enum ixgbe_smart_speed smart_speed;
 _Bool smart_speed_active;
 _Bool multispeed_fiber;
 _Bool reset_if_overtemp;
 _Bool qsfp_shared_i2c_bus;
 uint32_t nw_mng_if_sel;
};
struct ixgbe_mbx_operations {
 void (*init_params)(struct ixgbe_hw *hw);
 int32_t (*read)(struct ixgbe_hw *, uint32_t *, uint16_t, uint16_t);
 int32_t (*write)(struct ixgbe_hw *, uint32_t *, uint16_t, uint16_t);
 int32_t (*read_posted)(struct ixgbe_hw *, uint32_t *, uint16_t, uint16_t);
 int32_t (*write_posted)(struct ixgbe_hw *, uint32_t *, uint16_t, uint16_t);
 int32_t (*check_for_msg)(struct ixgbe_hw *, uint16_t);
 int32_t (*check_for_ack)(struct ixgbe_hw *, uint16_t);
 int32_t (*check_for_rst)(struct ixgbe_hw *, uint16_t);
};
struct ixgbe_mbx_stats {
 uint32_t msgs_tx;
 uint32_t msgs_rx;
 uint32_t acks;
 uint32_t reqs;
 uint32_t rsts;
};
struct ixgbe_mbx_info {
 struct ixgbe_mbx_operations ops;
 struct ixgbe_mbx_stats stats;
 uint32_t timeout;
 uint32_t usec_delay;
 uint32_t v2p_mailbox;
 uint16_t size;
};
struct ixgbe_hw {
 uint8_t *hw_addr;
 void *back;
 struct ixgbe_mac_info mac;
 struct ixgbe_addr_filter_info addr_ctrl;
 struct ixgbe_fc_info fc;
 struct ixgbe_phy_info phy;
 struct ixgbe_eeprom_info eeprom;
 struct ixgbe_bus_info bus;
 struct ixgbe_mbx_info mbx;
 uint16_t device_id;
 uint16_t vendor_id;
 uint16_t subsystem_device_id;
 uint16_t subsystem_vendor_id;
 uint8_t revision_id;
 _Bool adapter_stopped;
 int api_version;
 _Bool force_full_reset;
};
struct ixgbe_hw;
struct ixgbe_osdep {
 bus_dma_tag_t os_dmat;
 bus_space_tag_t os_memt;
 bus_space_handle_t os_memh;
 bus_size_t os_memsize;
 bus_addr_t os_membase;
 void *os_sc;
 struct pci_attach_args os_pa;
};
extern uint16_t ixgbe_read_pci_cfg(struct ixgbe_hw *, uint32_t);
extern void ixgbe_write_pci_cfg(struct ixgbe_hw *, uint32_t, uint16_t);
uint16_t ixgbe_get_pcie_msix_count_generic(struct ixgbe_hw *hw);
int32_t ixgbe_init_ops_generic(struct ixgbe_hw *hw);
int32_t ixgbe_init_hw_generic(struct ixgbe_hw *hw);
int32_t ixgbe_start_hw_generic(struct ixgbe_hw *hw);
int32_t ixgbe_start_hw_gen2(struct ixgbe_hw *hw);
int32_t ixgbe_clear_hw_cntrs_generic(struct ixgbe_hw *hw);
int32_t ixgbe_read_pba_num_generic(struct ixgbe_hw *hw, uint32_t *pba_num);
int32_t ixgbe_read_pba_string_generic(struct ixgbe_hw *hw, uint8_t *pba_num,
          uint32_t pba_num_size);
int32_t ixgbe_read_pba_length_generic(struct ixgbe_hw *hw, uint32_t *pba_num_size);
int32_t ixgbe_get_mac_addr_generic(struct ixgbe_hw *hw, uint8_t *mac_addr);
int32_t ixgbe_get_bus_info_generic(struct ixgbe_hw *hw);
void ixgbe_set_lan_id_multi_port_pcie(struct ixgbe_hw *hw);
int32_t ixgbe_stop_adapter_generic(struct ixgbe_hw *hw);
int32_t ixgbe_led_on_generic(struct ixgbe_hw *hw, uint32_t index);
int32_t ixgbe_led_off_generic(struct ixgbe_hw *hw, uint32_t index);
int32_t ixgbe_init_eeprom_params_generic(struct ixgbe_hw *hw);
int32_t ixgbe_write_eeprom_generic(struct ixgbe_hw *hw, uint16_t offset, uint16_t data);
int32_t ixgbe_read_eerd_generic(struct ixgbe_hw *hw, uint16_t offset, uint16_t *data);
int32_t ixgbe_write_eewr_generic(struct ixgbe_hw *hw, uint16_t offset, uint16_t data);
int32_t ixgbe_read_eeprom_bit_bang_generic(struct ixgbe_hw *hw, uint16_t offset,
        uint16_t *data);
int32_t ixgbe_calc_eeprom_checksum_generic(struct ixgbe_hw *hw);
int32_t ixgbe_validate_eeprom_checksum_generic(struct ixgbe_hw *hw,
            uint16_t *checksum_val);
int32_t ixgbe_update_eeprom_checksum_generic(struct ixgbe_hw *hw);
int32_t ixgbe_poll_eerd_eewr_done(struct ixgbe_hw *hw, uint32_t ee_reg);
int32_t ixgbe_set_rar_generic(struct ixgbe_hw *hw, uint32_t index, uint8_t *addr, uint32_t vmdq,
         uint32_t enable_addr);
int32_t ixgbe_clear_rar_generic(struct ixgbe_hw *hw, uint32_t index);
int32_t ixgbe_init_rx_addrs_generic(struct ixgbe_hw *hw);
int32_t ixgbe_update_mc_addr_list_generic(struct ixgbe_hw *hw, uint8_t *mc_addr_list,
       uint32_t mc_addr_count,
       ixgbe_mc_addr_itr func, _Bool clear);
int32_t ixgbe_enable_mc_generic(struct ixgbe_hw *hw);
int32_t ixgbe_disable_mc_generic(struct ixgbe_hw *hw);
int32_t ixgbe_enable_rx_dma_generic(struct ixgbe_hw *hw, uint32_t regval);
int32_t ixgbe_disable_sec_rx_path_generic(struct ixgbe_hw *hw);
int32_t ixgbe_enable_sec_rx_path_generic(struct ixgbe_hw *hw);
int32_t ixgbe_fc_enable_generic(struct ixgbe_hw *hw);
void ixgbe_fc_autoneg(struct ixgbe_hw *hw);
int32_t ixgbe_setup_fc_generic(struct ixgbe_hw *hw);
int32_t ixgbe_validate_mac_addr(uint8_t *mac_addr);
int32_t ixgbe_acquire_swfw_sync(struct ixgbe_hw *hw, uint32_t mask);
void ixgbe_release_swfw_sync(struct ixgbe_hw *hw, uint32_t mask);
int32_t ixgbe_disable_pcie_master(struct ixgbe_hw *hw);
int32_t prot_autoc_read_generic(struct ixgbe_hw *hw, _Bool *, uint32_t *reg_val);
int32_t prot_autoc_write_generic(struct ixgbe_hw *hw, uint32_t reg_val, _Bool locked);
int32_t ixgbe_blink_led_start_generic(struct ixgbe_hw *hw, uint32_t index);
int32_t ixgbe_blink_led_stop_generic(struct ixgbe_hw *hw, uint32_t index);
int32_t ixgbe_set_vmdq_generic(struct ixgbe_hw *hw, uint32_t rar, uint32_t vmdq);
int32_t ixgbe_clear_vmdq_generic(struct ixgbe_hw *hw, uint32_t rar, uint32_t vmdq);
int32_t ixgbe_insert_mac_addr_generic(struct ixgbe_hw *hw, uint8_t *addr, uint32_t vmdq);
int32_t ixgbe_init_uta_tables_generic(struct ixgbe_hw *hw);
int32_t ixgbe_set_vfta_generic(struct ixgbe_hw *hw, uint32_t vlan,
          uint32_t vind, _Bool vlan_on);
int32_t ixgbe_set_vlvf_generic(struct ixgbe_hw *hw, uint32_t vlan, uint32_t vind,
          _Bool vlan_on, _Bool *vfta_changed);
int32_t ixgbe_clear_vfta_generic(struct ixgbe_hw *hw);
int32_t ixgbe_check_mac_link_generic(struct ixgbe_hw *hw,
         ixgbe_link_speed *speed,
         _Bool *link_up,
         _Bool link_up_wait_to_complete);
int32_t ixgbe_get_device_caps_generic(struct ixgbe_hw *hw,
          uint16_t *device_caps);
int32_t ixgbe_host_interface_command(struct ixgbe_hw *hw, uint32_t *buffer,
         uint32_t length, uint32_t timeout,
         _Bool return_data);
void ixgbe_clear_tx_pending(struct ixgbe_hw *hw);
_Bool ixgbe_mng_present(struct ixgbe_hw *hw);
_Bool ixgbe_mng_enabled(struct ixgbe_hw *hw);
void ixgbe_disable_rx_generic(struct ixgbe_hw *hw);
void ixgbe_enable_rx_generic(struct ixgbe_hw *hw);
int32_t ixgbe_setup_mac_link_multispeed_fiber(struct ixgbe_hw *hw,
           ixgbe_link_speed speed,
           _Bool autoneg_wait_to_complete);
void ixgbe_set_soft_rate_select_speed(struct ixgbe_hw *hw,
          ixgbe_link_speed speed);
int32_t ixgbe_init_shared_code(struct ixgbe_hw *hw);
int32_t ixgbe_init_ops_82598(struct ixgbe_hw *hw);
int32_t ixgbe_init_ops_82599(struct ixgbe_hw *hw);
int32_t ixgbe_init_ops_X540(struct ixgbe_hw *hw);
int32_t ixgbe_init_ops_X550(struct ixgbe_hw *hw);
int32_t ixgbe_init_ops_X550EM(struct ixgbe_hw *hw);
int32_t ixgbe_set_mac_type(struct ixgbe_hw *hw);
int32_t ixgbe_init_hw(struct ixgbe_hw *hw);
enum ixgbe_media_type ixgbe_get_media_type(struct ixgbe_hw *hw);
int32_t ixgbe_identify_phy(struct ixgbe_hw *hw);
void ixgbe_flap_tx_laser(struct ixgbe_hw *hw);
int32_t ixgbe_setup_link(struct ixgbe_hw *hw, ixgbe_link_speed speed,
    _Bool autoneg_wait_to_complete);
int32_t ixgbe_setup_mac_link(struct ixgbe_hw *hw, ixgbe_link_speed speed,
    _Bool autoneg_wait_to_complete);
int32_t ixgbe_check_link(struct ixgbe_hw *hw, ixgbe_link_speed *speed,
    _Bool *link_up, _Bool link_up_wait_to_complete);
int32_t ixgbe_get_link_capabilities(struct ixgbe_hw *hw, ixgbe_link_speed *speed,
        _Bool *autoneg);
int32_t ixgbe_set_rar(struct ixgbe_hw *hw, uint32_t index, uint8_t *addr,
        uint32_t vmdq, uint32_t enable_addr);
int32_t ixgbe_set_vmdq(struct ixgbe_hw *hw, uint32_t rar, uint32_t vmdq);
int32_t ixgbe_clear_vmdq(struct ixgbe_hw *hw, uint32_t rar, uint32_t vmdq);
int32_t ixgbe_init_uta_tables(struct ixgbe_hw *hw);
void ixgbe_add_uc_addr(struct ixgbe_hw *hw, uint8_t *addr, uint32_t vmdq);
void ixgbe_set_mta(struct ixgbe_hw *hw, uint8_t *mc_addr);
void ixgbe_disable_rx(struct ixgbe_hw *hw);
void ixgbe_enable_rx(struct ixgbe_hw *hw);
int32_t ixgbe_init_phy_ops_generic(struct ixgbe_hw *hw);
_Bool ixgbe_validate_phy_addr(struct ixgbe_hw *hw, uint32_t phy_addr);
enum ixgbe_phy_type ixgbe_get_phy_type_from_id(uint32_t phy_id);
int32_t ixgbe_get_phy_id(struct ixgbe_hw *hw);
int32_t ixgbe_identify_phy_generic(struct ixgbe_hw *hw);
int32_t ixgbe_reset_phy_generic(struct ixgbe_hw *hw);
int32_t ixgbe_read_phy_reg_mdi(struct ixgbe_hw *hw, uint32_t reg_addr,
          uint32_t device_type, uint16_t *phy_data);
int32_t ixgbe_write_phy_reg_mdi(struct ixgbe_hw *hw, uint32_t reg_addr,
    uint32_t device_type, uint16_t phy_data);
int32_t ixgbe_read_phy_reg_generic(struct ixgbe_hw *hw, uint32_t reg_addr,
       uint32_t device_type, uint16_t *phy_data);
int32_t ixgbe_write_phy_reg_generic(struct ixgbe_hw *hw, uint32_t reg_addr,
        uint32_t device_type, uint16_t phy_data);
int32_t ixgbe_setup_phy_link_generic(struct ixgbe_hw *hw);
int32_t ixgbe_setup_phy_link_speed_generic(struct ixgbe_hw *hw,
        ixgbe_link_speed speed,
        _Bool autoneg_wait_to_complete);
int32_t ixgbe_get_copper_link_capabilities_generic(struct ixgbe_hw *hw,
         ixgbe_link_speed *speed,
         _Bool *autoneg);
int32_t ixgbe_check_reset_blocked(struct ixgbe_hw *hw);
int32_t ixgbe_check_phy_link_tnx(struct ixgbe_hw *hw,
     ixgbe_link_speed *speed,
     _Bool *link_up);
int32_t ixgbe_setup_phy_link_tnx(struct ixgbe_hw *hw);
int32_t ixgbe_get_phy_firmware_version_tnx(struct ixgbe_hw *hw,
        uint16_t *firmware_version);
int32_t ixgbe_get_phy_firmware_version_generic(struct ixgbe_hw *hw,
            uint16_t *firmware_version);
int32_t ixgbe_reset_phy_nl(struct ixgbe_hw *hw);
_Bool ixgbe_is_sfp(struct ixgbe_hw *hw);
int32_t ixgbe_set_copper_phy_power(struct ixgbe_hw *hw, _Bool on);
int32_t ixgbe_identify_module_generic(struct ixgbe_hw *hw);
int32_t ixgbe_identify_sfp_module_generic(struct ixgbe_hw *hw);
int32_t ixgbe_get_supported_phy_sfp_layer_generic(struct ixgbe_hw *hw);
int32_t ixgbe_identify_qsfp_module_generic(struct ixgbe_hw *hw);
int32_t ixgbe_get_sfp_init_sequence_offsets(struct ixgbe_hw *hw,
         uint16_t *list_offset,
         uint16_t *data_offset);
int32_t ixgbe_tn_check_overtemp(struct ixgbe_hw *hw);
int32_t ixgbe_read_i2c_byte_generic(struct ixgbe_hw *hw, uint8_t byte_offset,
        uint8_t dev_addr, uint8_t *data);
int32_t ixgbe_read_i2c_byte_generic_unlocked(struct ixgbe_hw *hw, uint8_t byte_offset,
          uint8_t dev_addr, uint8_t *data);
int32_t ixgbe_write_i2c_byte_generic(struct ixgbe_hw *hw, uint8_t byte_offset,
         uint8_t dev_addr, uint8_t data);
int32_t ixgbe_write_i2c_byte_generic_unlocked(struct ixgbe_hw *hw, uint8_t byte_offset,
           uint8_t dev_addr, uint8_t data);
int32_t ixgbe_read_i2c_eeprom_generic(struct ixgbe_hw *hw, uint8_t byte_offset,
          uint8_t *eeprom_data);
int32_t ixgbe_write_i2c_eeprom_generic(struct ixgbe_hw *hw, uint8_t byte_offset,
           uint8_t eeprom_data);
int32_t ixgbe_read_mbx(struct ixgbe_hw *, uint32_t *, uint16_t, uint16_t);
int32_t ixgbe_write_mbx(struct ixgbe_hw *, uint32_t *, uint16_t, uint16_t);
int32_t ixgbe_read_posted_mbx(struct ixgbe_hw *, uint32_t *, uint16_t, uint16_t);
int32_t ixgbe_write_posted_mbx(struct ixgbe_hw *, uint32_t *, uint16_t, uint16_t);
int32_t ixgbe_check_for_msg(struct ixgbe_hw *, uint16_t);
int32_t ixgbe_check_for_ack(struct ixgbe_hw *, uint16_t);
int32_t ixgbe_check_for_rst(struct ixgbe_hw *, uint16_t);
void ixgbe_init_mbx_ops_generic(struct ixgbe_hw *hw);
void ixgbe_init_mbx_params_pf(struct ixgbe_hw *);
struct ixgbe_tx_buf {
 uint32_t eop_index;
 struct mbuf *m_head;
 bus_dmamap_t map;
};
struct ixgbe_rx_buf {
 struct mbuf *buf;
 struct mbuf *fmp;
 bus_dmamap_t map;
};
struct ixgbe_dma_alloc {
 caddr_t dma_vaddr;
 bus_dma_tag_t dma_tag;
 bus_dmamap_t dma_map;
 bus_dma_segment_t dma_seg;
 bus_size_t dma_size;
 int dma_nseg;
};
struct ix_queue {
 struct ix_softc *sc;
 uint32_t msix;
 uint32_t eims;
 uint32_t eitr_setting;
 void *tag;
 struct tx_ring *txr;
 struct rx_ring *rxr;
};
struct tx_ring {
 struct ix_softc *sc;
 uint32_t me;
 uint32_t watchdog_timer;
 union ixgbe_adv_tx_desc *tx_base;
 struct ixgbe_tx_buf *tx_buffers;
 struct ixgbe_dma_alloc txdma;
 volatile uint32_t tx_avail;
 uint32_t next_avail_desc;
 uint32_t next_to_clean;
 enum {
     IXGBE_QUEUE_IDLE,
     IXGBE_QUEUE_WORKING,
     IXGBE_QUEUE_HUNG,
 } queue_status;
 uint32_t txd_cmd;
 bus_dma_tag_t txtag;
 uint32_t bytes;
 uint32_t packets;
 uint64_t tx_packets;
};
struct rx_ring {
 struct ix_softc *sc;
 uint32_t me;
 union ixgbe_adv_rx_desc *rx_base;
 struct ixgbe_dma_alloc rxdma;
 _Bool lro_enabled;
 _Bool hw_rsc;
 _Bool discard;
 uint next_to_refresh;
 uint next_to_check;
 uint last_desc_filled;
 struct if_rxring rx_ring;
 struct ixgbe_rx_buf *rx_buffers;
 uint32_t bytes;
 uint32_t packets;
 uint64_t rx_irq;
 uint64_t rx_packets;
 uint64_t rx_bytes;
 uint64_t rx_discarded;
 uint64_t rsc_num;
};
struct ix_softc {
 struct device dev;
 struct arpcom arpcom;
 struct ixgbe_hw hw;
 struct ixgbe_osdep osdep;
 void *tag;
 struct ifmedia media;
 struct timeout timer;
 struct timeout rx_refill;
 int msix;
 int if_flags;
 uint16_t num_vlans;
 uint16_t num_queues;
 uint32_t shadow_vfta[128];
 uint64_t optics;
 uint32_t fc;
 uint16_t max_frame_size;
 uint16_t num_segs;
 uint32_t link_speed;
 _Bool link_up;
 uint32_t linkvec;
 uint32_t rx_mbuf_sz;
 struct ix_queue *queues;
 struct tx_ring *tx_rings;
 int num_tx_desc;
 struct rx_ring *rx_rings;
 uint64_t que_mask;
 int num_rx_desc;
 uint8_t *mta;
 unsigned long dropped_pkts;
 unsigned long no_tx_map_avail;
 unsigned long no_tx_dma_setup;
 unsigned long watchdog_events;
 unsigned long tso_tx;
 unsigned long link_irq;
 struct ixgbe_hw_stats stats;
};
const struct pci_matchid ixgbe_devices[] = {
 { 0x8086, 0x10b6 },
 { 0x8086, 0x1508 },
 { 0x8086, 0x10c6 },
 { 0x8086, 0x10c7 },
 { 0x8086, 0x10c8 },
 { 0x8086, 0x150b },
 { 0x8086, 0x10d7 },
 { 0x8086, 0x10dd },
 { 0x8086, 0x10ec },
 { 0x8086, 0x10f4 },
 { 0x8086, 0x10db },
 { 0x8086, 0x10e1 },
 { 0x8086, 0x10f1 },
 { 0x8086, 0x10f7 },
 { 0x8086, 0x1514 },
 { 0x8086, 0x10fc },
 { 0x8086, 0x10f8 },
 { 0x8086, 0x152a },
 { 0x8086, 0x10f9 },
 { 0x8086, 0x151c },
 { 0x8086, 0x10fb },
 { 0x8086, 0x1507 },
 { 0x8086, 0x154a },
 { 0x8086, 0x154d },
 { 0x8086, 0x1529 },
 { 0x8086, 0x1557 },
 { 0x8086, 0x1558 },
 { 0x8086, 0x1528 },
 { 0x8086, 0x1560 },
 { 0x8086, 0x1563 },
 { 0x8086, 0x15d1 },
 { 0x8086, 0x15aa },
 { 0x8086, 0x15ab },
 { 0x8086, 0x15ac },
 { 0x8086, 0x15ad },
 { 0x8086, 0x15ae },
};
int ixgbe_probe(struct device *, void *, void *);
void ixgbe_attach(struct device *, struct device *, void *);
int ixgbe_detach(struct device *, int);
void ixgbe_start(struct ifqueue *);
int ixgbe_ioctl(struct ifnet *, u_long, caddr_t);
int ixgbe_rxrinfo(struct ix_softc *, struct if_rxrinfo *);
void ixgbe_watchdog(struct ifnet *);
void ixgbe_init(void *);
void ixgbe_stop(void *);
void ixgbe_media_status(struct ifnet *, struct ifmediareq *);
int ixgbe_media_change(struct ifnet *);
void ixgbe_identify_hardware(struct ix_softc *);
int ixgbe_allocate_pci_resources(struct ix_softc *);
int ixgbe_allocate_legacy(struct ix_softc *);
int ixgbe_allocate_queues(struct ix_softc *);
void ixgbe_free_pci_resources(struct ix_softc *);
void ixgbe_local_timer(void *);
void ixgbe_setup_interface(struct ix_softc *);
void ixgbe_config_gpie(struct ix_softc *);
void ixgbe_config_delay_values(struct ix_softc *);
void ixgbe_add_media_types(struct ix_softc *);
void ixgbe_config_link(struct ix_softc *);
int ixgbe_allocate_transmit_buffers(struct tx_ring *);
int ixgbe_setup_transmit_structures(struct ix_softc *);
int ixgbe_setup_transmit_ring(struct tx_ring *);
void ixgbe_initialize_transmit_units(struct ix_softc *);
void ixgbe_free_transmit_structures(struct ix_softc *);
void ixgbe_free_transmit_buffers(struct tx_ring *);
int ixgbe_allocate_receive_buffers(struct rx_ring *);
int ixgbe_setup_receive_structures(struct ix_softc *);
int ixgbe_setup_receive_ring(struct rx_ring *);
void ixgbe_initialize_receive_units(struct ix_softc *);
void ixgbe_free_receive_structures(struct ix_softc *);
void ixgbe_free_receive_buffers(struct rx_ring *);
void ixgbe_initialize_rss_mapping(struct ix_softc *);
int ixgbe_rxfill(struct rx_ring *);
void ixgbe_rxrefill(void *);
void ixgbe_enable_intr(struct ix_softc *);
void ixgbe_disable_intr(struct ix_softc *);
void ixgbe_update_stats_counters(struct ix_softc *);
int ixgbe_txeof(struct tx_ring *);
int ixgbe_rxeof(struct ix_queue *);
void ixgbe_rx_checksum(uint32_t, struct mbuf *, uint32_t);
void ixgbe_iff(struct ix_softc *);
void ixgbe_update_link_status(struct ix_softc *);
int ixgbe_get_buf(struct rx_ring *, int);
int ixgbe_encap(struct tx_ring *, struct mbuf *);
int ixgbe_dma_malloc(struct ix_softc *, bus_size_t,
      struct ixgbe_dma_alloc *, int);
void ixgbe_dma_free(struct ix_softc *, struct ixgbe_dma_alloc *);
int ixgbe_tx_ctx_setup(struct tx_ring *, struct mbuf *, uint32_t *,
     uint32_t *);
int ixgbe_tso_setup(struct tx_ring *, struct mbuf *, uint32_t *,
     uint32_t *);
void ixgbe_set_ivar(struct ix_softc *, uint8_t, uint8_t, int8_t);
void ixgbe_configure_ivars(struct ix_softc *);
uint8_t *ixgbe_mc_array_itr(struct ixgbe_hw *, uint8_t **, uint32_t *);
void ixgbe_setup_vlan_hw_support(struct ix_softc *);
void ixgbe_setup_optics(struct ix_softc *);
void ixgbe_handle_mod(struct ix_softc *);
void ixgbe_handle_msf(struct ix_softc *);
void ixgbe_handle_phy(struct ix_softc *);
int ixgbe_intr(void *);
void ixgbe_enable_queue(struct ix_softc *, uint32_t);
void ixgbe_disable_queue(struct ix_softc *, uint32_t);
void ixgbe_rearm_queue(struct ix_softc *, uint32_t);
struct cfdriver ix_cd = {
 ((void *)0), "ix", DV_IFNET
};
struct cfattach ix_ca = {
 sizeof(struct ix_softc), ixgbe_probe, ixgbe_attach, ixgbe_detach
};
int ixgbe_smart_speed = ixgbe_smart_speed_on;
int
ixgbe_probe(struct device *parent, void *match, void *aux)
{
 if (0) printf("ixgbe_probe: begin" "\n");
 return (pci_matchbyid((struct pci_attach_args *)aux, ixgbe_devices,
     (sizeof((ixgbe_devices)) / sizeof((ixgbe_devices)[0]))));
}
void
ixgbe_attach(struct device *parent, struct device *self, void *aux)
{
 struct pci_attach_args *pa = (struct pci_attach_args *)aux;
 struct ix_softc *sc = (struct ix_softc *)self;
 int error = 0;
 uint16_t csum;
 uint32_t ctrl_ext;
 struct ixgbe_hw *hw = &sc->hw;
 if (0) printf("ixgbe_attach: begin" "\n");
 sc->osdep.os_sc = sc;
 sc->osdep.os_pa = *pa;
 timeout_set(&sc->timer, ixgbe_local_timer, sc);
 timeout_set(&sc->rx_refill, ixgbe_rxrefill, sc);
 ixgbe_identify_hardware(sc);
 sc->num_tx_desc = 256;
 sc->num_rx_desc = 256;
 if (ixgbe_allocate_pci_resources(sc))
  goto err_out;
 if (ixgbe_allocate_queues(sc))
  goto err_out;
 sc->mta = mallocarray(6,
     128, 2, 0x0002);
 if (sc->mta == ((void *)0)) {
  printf(": Can not allocate multicast setup array\n");
  goto err_late;
 }
 error = ixgbe_init_shared_code(hw);
 if (error) {
  printf(": Unable to initialize the shared code\n");
  goto err_late;
 }
 if (sc->hw.eeprom.ops.validate_checksum(&sc->hw, &csum) < 0) {
  printf(": The EEPROM Checksum Is Not Valid\n");
  goto err_late;
 }
 error = ixgbe_init_hw(hw);
 if (error == -24) {
  printf(": This device is a pre-production adapter/"
      "LOM.  Please be aware there may be issues associated "
      "with your hardware.\nIf you are experiencing problems "
      "please contact your Intel or hardware representative "
      "who provided you with this hardware.\n");
 } else if (error && (error != -20 &&
     error != -19)) {
  printf(": Hardware Initialization Failure\n");
  goto err_late;
 }
 ixgbe_setup_optics(sc);
 __builtin_bcopy((sc->hw.mac.addr), (sc->arpcom.ac_enaddr), (6));
 error = ixgbe_allocate_legacy(sc);
 if (error)
  goto err_late;
 if (sc->hw.mac.ops.enable_tx_laser)
  sc->hw.mac.ops.enable_tx_laser(&sc->hw);
 if (hw->phy.ops.set_phy_power)
  hw->phy.ops.set_phy_power(&sc->hw, 1);
 ixgbe_setup_interface(sc);
 ixgbe_update_stats_counters(sc);
 hw->mac.ops.get_bus_info(hw);
 sc->fc = ixgbe_fc_full;
 ctrl_ext = bus_space_read_4(((struct ixgbe_osdep *)(&sc->hw)->back)->os_memt, ((struct ixgbe_osdep *)(&sc->hw)->back)->os_memh, 0x00018);
 ctrl_ext |= 0x10000000;
 bus_space_write_4(((struct ixgbe_osdep *)(&sc->hw)->back)->os_memt, ((struct ixgbe_osdep *)(&sc->hw)->back)->os_memh, 0x00018, ctrl_ext);
 printf(", address %s\n", ether_sprintf(sc->hw.mac.addr));
 if (0) printf("ixgbe_attach: end" "\n");
 return;
err_late:
 ixgbe_free_transmit_structures(sc);
 ixgbe_free_receive_structures(sc);
err_out:
 ixgbe_free_pci_resources(sc);
 free(sc->mta, 2, 6 *
     128);
}
int
ixgbe_detach(struct device *self, int flags)
{
 struct ix_softc *sc = (struct ix_softc *)self;
 struct ifnet *ifp = &sc->arpcom.ac_if;
 uint32_t ctrl_ext;
 if (0) printf("ixgbe_detach: begin" "\n");
 ixgbe_stop(sc);
 ctrl_ext = bus_space_read_4(((struct ixgbe_osdep *)(&sc->hw)->back)->os_memt, ((struct ixgbe_osdep *)(&sc->hw)->back)->os_memh, 0x00018);
 ctrl_ext &= ~0x10000000;
 bus_space_write_4(((struct ixgbe_osdep *)(&sc->hw)->back)->os_memt, ((struct ixgbe_osdep *)(&sc->hw)->back)->os_memh, 0x00018, ctrl_ext);
 ether_ifdetach(ifp);
 if_detach(ifp);
 timeout_del(&sc->timer);
 timeout_del(&sc->rx_refill);
 ixgbe_free_pci_resources(sc);
 ixgbe_free_transmit_structures(sc);
 ixgbe_free_receive_structures(sc);
 free(sc->mta, 2, 6 *
     128);
 return (0);
}
void
ixgbe_start(struct ifqueue *ifq)
{
 struct ifnet *ifp = ifq->ifq_if;
 struct ix_softc *sc = ifp->if_softc;
 struct tx_ring *txr = sc->tx_rings;
 struct mbuf *m_head;
 int post = 0;
 if (!(ifp->if_flags & 0x40) || ifq_is_oactive(ifq))
  return;
 if (!sc->link_up)
  return;
 bus_dmamap_sync(txr->txdma.dma_tag, txr->txdma.dma_map, 0,
     txr->txdma.dma_map->dm_mapsize,
     0x02 | 0x08);
 for (;;) {
  if (txr->tx_avail <= (sc->num_segs + 2)) {
   ifq_set_oactive(ifq);
   break;
  }
  m_head = ifq_dequeue(ifq);
  if (m_head == ((void *)0))
   break;
  if (ixgbe_encap(txr, m_head)) {
   m_freem(m_head);
   continue;
  }
  if (ifp->if_bpf)
   bpf_mtap_ether(ifp->if_bpf, m_head, (1<<1));
  txr->watchdog_timer = 5;
  ifp->if_timer = 5;
  post = 1;
 }
 bus_dmamap_sync(txr->txdma.dma_tag, txr->txdma.dma_map,
     0, txr->txdma.dma_map->dm_mapsize,
     0x01 | 0x04);
 if (post)
  bus_space_write_4(((struct ixgbe_osdep *)(&sc->hw)->back)->os_memt, ((struct ixgbe_osdep *)(&sc->hw)->back)->os_memh, (0x06018 + ((txr->me) * 0x40)), txr->next_avail_desc);
}
int
ixgbe_ioctl(struct ifnet * ifp, u_long command, caddr_t data)
{
 struct ix_softc *sc = ifp->if_softc;
 struct ifreq *ifr = (struct ifreq *) data;
 int s, error = 0;
 s = _splraise(6);
 switch (command) {
 case ((unsigned long)0x80000000 | ((sizeof(struct ifreq) & 0x1fff) << 16) | ((('i')) << 8) | ((12))):
  if (0) printf("ioctl: SIOCxIFADDR (Get/Set Interface Addr)" "\n");
  ifp->if_flags |= 0x1;
  if (!(ifp->if_flags & 0x40))
   ixgbe_init(sc);
  break;
 case ((unsigned long)0x80000000 | ((sizeof(struct ifreq) & 0x1fff) << 16) | ((('i')) << 8) | ((16))):
  if (0) printf("ioctl: SIOCSIFFLAGS (Set Interface Flags)" "\n");
  if (ifp->if_flags & 0x1) {
   if (ifp->if_flags & 0x40)
    error = 52;
   else
    ixgbe_init(sc);
  } else {
   if (ifp->if_flags & 0x40)
    ixgbe_stop(sc);
  }
  break;
 case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct ifreq) & 0x1fff) << 16) | ((('i')) << 8) | ((55))):
 case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct ifmediareq) & 0x1fff) << 16) | ((('i')) << 8) | ((56))):
  if (0) printf("ioctl: SIOCxIFMEDIA (Get/Set Interface Media)" "\n");
  error = ifmedia_ioctl(ifp, ifr, &sc->media, command);
  break;
 case ((unsigned long)0x80000000 | ((sizeof(struct ifreq) & 0x1fff) << 16) | ((('i')) << 8) | ((170))):
  error = ixgbe_rxrinfo(sc, (struct if_rxrinfo *)ifr->ifr_ifru.ifru_data);
  break;
 default:
  error = ether_ioctl(ifp, &sc->arpcom, command, data);
 }
 if (error == 52) {
  if (ifp->if_flags & 0x40) {
   ixgbe_disable_intr(sc);
   ixgbe_iff(sc);
   ixgbe_enable_intr(sc);
  }
  error = 0;
 }
 _splx(s);
 return (error);
}
int
ixgbe_rxrinfo(struct ix_softc *sc, struct if_rxrinfo *ifri)
{
 struct if_rxring_info *ifr, ifr1;
 struct rx_ring *rxr;
 int error, i;
 u_int n = 0;
 if (sc->num_queues > 1) {
  if ((ifr = mallocarray(sc->num_queues, sizeof(*ifr), 2,
      0x0001 | 0x0008)) == ((void *)0))
   return (12);
 } else
  ifr = &ifr1;
 for (i = 0; i < sc->num_queues; i++) {
  rxr = &sc->rx_rings[i];
  ifr[n].ifr_size = sc->rx_mbuf_sz;
  snprintf(ifr[n].ifr_name, sizeof(ifr[n].ifr_name), "/%d", i);
  ifr[n].ifr_info = rxr->rx_ring;
  n++;
 }
 error = if_rxr_info_ioctl(ifri, sc->num_queues, ifr);
 if (sc->num_queues > 1)
  free(ifr, 2, sc->num_queues * sizeof(*ifr));
 return (error);
}
void
ixgbe_watchdog(struct ifnet * ifp)
{
 struct ix_softc *sc = (struct ix_softc *)ifp->if_softc;
 struct tx_ring *txr = sc->tx_rings;
 struct ixgbe_hw *hw = &sc->hw;
 int tx_hang = 0;
 int i;
 for (i = 0; i < sc->num_queues; i++, txr++) {
  if (txr->watchdog_timer == 0 || --txr->watchdog_timer)
   continue;
  else {
   tx_hang = 1;
   break;
  }
 }
 if (tx_hang == 0)
  return;
 if (!(bus_space_read_4(((struct ixgbe_osdep *)(hw)->back)->os_memt, ((struct ixgbe_osdep *)(hw)->back)->os_memh, 0x0CE00) & 0x00000001)) {
  for (i = 0; i < sc->num_queues; i++, txr++)
   txr->watchdog_timer = 5;
  ifp->if_timer = 5;
  return;
 }
 printf("%s: Watchdog timeout -- resetting\n", ifp->if_xname);
 for (i = 0; i < sc->num_queues; i++, txr++) {
  printf("%s: Queue(%d) tdh = %d, hw tdt = %d\n", ifp->if_xname, i,
      bus_space_read_4(((struct ixgbe_osdep *)(hw)->back)->os_memt, ((struct ixgbe_osdep *)(hw)->back)->os_memh, (0x06010 + ((i) * 0x40))),
      bus_space_read_4(((struct ixgbe_osdep *)(hw)->back)->os_memt, ((struct ixgbe_osdep *)(hw)->back)->os_memh, (0x06018 + ((i) * 0x40))));
  printf("%s: TX(%d) desc avail = %d, Next TX to Clean = %d\n", ifp->if_xname,
      i, txr->tx_avail, txr->next_to_clean);
 }
 ifp->if_flags &= ~0x40;
 sc->watchdog_events++;
 ixgbe_init(sc);
}
void
ixgbe_init(void *arg)
{
 struct ix_softc *sc = (struct ix_softc *)arg;
 struct ifnet *ifp = &sc->arpcom.ac_if;
 struct rx_ring *rxr = sc->rx_rings;
 uint32_t k, txdctl, rxdctl, rxctrl, mhadd, itr;
 int i, s, err;
 if (0) printf("ixgbe_init: begin" "\n");
 s = _splraise(6);
 ixgbe_stop(sc);
 ixgbe_set_rar(&sc->hw, 0, sc->hw.mac.addr, 0, 0x80000000);
 __builtin_bcopy((sc->arpcom.ac_enaddr), (sc->hw.mac.addr), (6));
 ixgbe_set_rar(&sc->hw, 0, sc->hw.mac.addr, 0, 1);
 sc->hw.addr_ctrl.rar_used_count = 1;
 if (ixgbe_setup_transmit_structures(sc)) {
  printf("%s: Could not setup transmit structures\n",
      ifp->if_xname);
  ixgbe_stop(sc);
  _splx(s);
  return;
 }
 ixgbe_init_hw(&sc->hw);
 ixgbe_initialize_transmit_units(sc);
 sc->rx_mbuf_sz = (1 << 11) + 2;
 if (ixgbe_setup_receive_structures(sc)) {
  printf("%s: Could not setup receive structures\n",
      ifp->if_xname);
  ixgbe_stop(sc);
  _splx(s);
  return;
 }
 ixgbe_initialize_receive_units(sc);
 ixgbe_config_gpie(sc);
 ixgbe_iff(sc);
 mhadd = bus_space_read_4(((struct ixgbe_osdep *)(&sc->hw)->back)->os_memt, ((struct ixgbe_osdep *)(&sc->hw)->back)->os_memh, 0x04268);
 mhadd &= ~0xFFFF0000;
 mhadd |= sc->max_frame_size << 16;
 bus_space_write_4(((struct ixgbe_osdep *)(&sc->hw)->back)->os_memt, ((struct ixgbe_osdep *)(&sc->hw)->back)->os_memh, 0x04268, mhadd);
 for (i = 0; i < sc->num_queues; i++) {
  txdctl = bus_space_read_4(((struct ixgbe_osdep *)(&sc->hw)->back)->os_memt, ((struct ixgbe_osdep *)(&sc->hw)->back)->os_memh, (0x06028 + ((i) * 0x40)));
  txdctl |= 0x02000000;
  txdctl |= (8 << 16);
  txdctl |= (16 << 0) | (1 << 8);
  bus_space_write_4(((struct ixgbe_osdep *)(&sc->hw)->back)->os_memt, ((struct ixgbe_osdep *)(&sc->hw)->back)->os_memh, (0x06028 + ((i) * 0x40)), txdctl);
 }
 for (i = 0; i < sc->num_queues; i++) {
  rxdctl = bus_space_read_4(((struct ixgbe_osdep *)(&sc->hw)->back)->os_memt, ((struct ixgbe_osdep *)(&sc->hw)->back)->os_memh, (((i) < 64) ? (0x01028 + ((i) * 0x40)) : (0x0D028 + (((i) - 64) * 0x40))));
  if (sc->hw.mac.type == ixgbe_mac_82598EB) {
   rxdctl &= ~0x3FFFFF;
   rxdctl |= 0x080420;
  }
  rxdctl |= 0x02000000;
  bus_space_write_4(((struct ixgbe_osdep *)(&sc->hw)->back)->os_memt, ((struct ixgbe_osdep *)(&sc->hw)->back)->os_memh, (((i) < 64) ? (0x01028 + ((i) * 0x40)) : (0x0D028 + (((i) - 64) * 0x40))), rxdctl);
  for (k = 0; k < 10; k++) {
   if (bus_space_read_4(((struct ixgbe_osdep *)(&sc->hw)->back)->os_memt, ((struct ixgbe_osdep *)(&sc->hw)->back)->os_memh, (((i) < 64) ? (0x01028 + ((i) * 0x40)) : (0x0D028 + (((i) - 64) * 0x40)))) &
       0x02000000)
    break;
   else
    delay(1000 * (1));
  }
  bus_space_read_4(((struct ixgbe_osdep *)(&sc->hw)->back)->os_memt, ((struct ixgbe_osdep *)(&sc->hw)->back)->os_memh, 0x00008);
  bus_space_write_4(((struct ixgbe_osdep *)(&sc->hw)->back)->os_memt, ((struct ixgbe_osdep *)(&sc->hw)->back)->os_memh, (((i) < 64) ? (0x01018 + ((i) * 0x40)) : (0x0D018 + (((i) - 64) * 0x40))), rxr->last_desc_filled);
 }
 ixgbe_setup_vlan_hw_support(sc);
 rxctrl = bus_space_read_4(((struct ixgbe_osdep *)(&sc->hw)->back)->os_memt, ((struct ixgbe_osdep *)(&sc->hw)->back)->os_memh, 0x03000);
 if (sc->hw.mac.type == ixgbe_mac_82598EB)
  rxctrl |= 0x00000002;
 rxctrl |= 0x00000001;
 sc->hw.mac.ops.enable_rx_dma(&sc->hw, rxctrl);
 timeout_add_sec(&sc->timer, 1);
 if (sc->msix > 1) {
  ixgbe_configure_ivars(sc);
  if (sc->hw.mac.type == ixgbe_mac_82598EB)
   bus_space_write_4(((struct ixgbe_osdep *)(&sc->hw)->back)->os_memt, ((struct ixgbe_osdep *)(&sc->hw)->back)->os_memh, 0x00890, 0x0000FFFF);
  else {
   bus_space_write_4(((struct ixgbe_osdep *)(&sc->hw)->back)->os_memt, ((struct ixgbe_osdep *)(&sc->hw)->back)->os_memh, (0x00AD0 + (0) * 4), 0xFFFFFFFF);
   bus_space_write_4(((struct ixgbe_osdep *)(&sc->hw)->back)->os_memt, ((struct ixgbe_osdep *)(&sc->hw)->back)->os_memh, (0x00AD0 + (1) * 4), 0xFFFFFFFF);
  }
 } else {
  ixgbe_set_ivar(sc, 0, 0, 0);
  ixgbe_set_ivar(sc, 0, 0, 1);
  bus_space_write_4(((struct ixgbe_osdep *)(&sc->hw)->back)->os_memt, ((struct ixgbe_osdep *)(&sc->hw)->back)->os_memh, 0x00890, 0x0000FFFF);
 }
 if (sc->hw.phy.type == ixgbe_phy_none) {
  err = sc->hw.phy.ops.identify(&sc->hw);
  if (err == -19) {
   printf("Unsupported SFP+ module type was detected.\n");
   _splx(s);
   return;
  }
 }
 itr = (4000000 / 8000) & 0xff8;
 if (sc->hw.mac.type != ixgbe_mac_82598EB)
  itr |= 0x00008000 | 0x80000000;
 bus_space_write_4(((struct ixgbe_osdep *)(&sc->hw)->back)->os_memt, ((struct ixgbe_osdep *)(&sc->hw)->back)->os_memh, (((0) <= 23) ? (0x00820 + ((0) * 4)) : (0x012300 + (((0) - 24) * 4))), itr);
 if (sc->hw.phy.ops.set_phy_power)
  sc->hw.phy.ops.set_phy_power(&sc->hw, 1);
 ixgbe_config_link(sc);
 ixgbe_config_delay_values(sc);
 sc->hw.mac.ops.start_hw(&sc->hw);
 ixgbe_enable_intr(sc);
 ifp->if_flags |= 0x40;
 ifq_clr_oactive(&ifp->if_snd);
 _splx(s);
}
void
ixgbe_config_gpie(struct ix_softc *sc)
{
 struct ixgbe_hw *hw = &sc->hw;
 uint32_t gpie;
 gpie = bus_space_read_4(((struct ixgbe_osdep *)(&sc->hw)->back)->os_memt, ((struct ixgbe_osdep *)(&sc->hw)->back)->os_memh, 0x00898);
 if (hw->device_id == 0x10C8)
  gpie |= 0x00000002;
 if (sc->hw.mac.type == ixgbe_mac_82599EB) {
  gpie |= 0x00000004;
  if (hw->device_id != 0x1558)
   gpie |= 0x00000002;
  gpie |= 0xf << 7;
 }
 if (sc->hw.mac.type == ixgbe_mac_X540 ||
     hw->device_id == 0x15AC ||
     hw->device_id == 0x15AD) {
  gpie |= 0x00000002;
  gpie |= 0xf << 7;
 }
 if (sc->msix > 1) {
  gpie |= 0x00000010;
  gpie |= 0x40000000 | 0x80000000 |
      0x00000020;
 }
 bus_space_write_4(((struct ixgbe_osdep *)(&sc->hw)->back)->os_memt, ((struct ixgbe_osdep *)(&sc->hw)->back)->os_memh, 0x00898, gpie);
}
void
ixgbe_config_delay_values(struct ix_softc *sc)
{
 struct ixgbe_hw *hw = &sc->hw;
 uint32_t rxpb, frame, size, tmp;
 frame = sc->max_frame_size;
 switch (hw->mac.type) {
 case ixgbe_mac_X540:
 case ixgbe_mac_X550:
 case ixgbe_mac_X550EM_x:
  tmp = ((36 * ((frame * 8) + 672 + (2 * 5556) + (2 * (8192 + (2 * 2048) + 25600)) + 6144) / 25 + 1) + 2 * (frame * 8));
  break;
 default:
  tmp = ((36 * ((frame * 8) + 672 + (2 * 5556) + (2 * (4096 + (2 * 1024) + 12800)) + 6144) / 25 + 1) + 2 * (frame * 8));
  break;
 }
 size = ((tmp + (8 * 1024 - 1)) / (8 * 1024));
 rxpb = bus_space_read_4(((struct ixgbe_osdep *)(hw)->back)->os_memt, ((struct ixgbe_osdep *)(hw)->back)->os_memh, (0x03C00 + ((0) * 4))) >> 10;
 hw->fc.high_water[0] = rxpb - size;
 switch (hw->mac.type) {
 case ixgbe_mac_X540:
 case ixgbe_mac_X550:
 case ixgbe_mac_X550EM_x:
  tmp = (2 * (frame * 8) + (36 * 10000 / 25) + 1);
  break;
 default:
  tmp = (2 * (2 * (frame * 8) + (36 * 10000 / 25) + 1));
  break;
 }
 hw->fc.low_water[0] = ((tmp + (8 * 1024 - 1)) / (8 * 1024));
 hw->fc.requested_mode = sc->fc;
 hw->fc.pause_time = 0xFFFF;
 hw->fc.send_xon = 1;
}
void
ixgbe_enable_queue(struct ix_softc *sc, uint32_t vector)
{
 uint64_t queue = 1ULL << vector;
 uint32_t mask;
 if (sc->hw.mac.type == ixgbe_mac_82598EB) {
  mask = (0x0000FFFF & queue);
  bus_space_write_4(((struct ixgbe_osdep *)(&sc->hw)->back)->os_memt, ((struct ixgbe_osdep *)(&sc->hw)->back)->os_memh, 0x00880, mask);
 } else {
  mask = (queue & 0xFFFFFFFF);
  if (mask)
   bus_space_write_4(((struct ixgbe_osdep *)(&sc->hw)->back)->os_memt, ((struct ixgbe_osdep *)(&sc->hw)->back)->os_memh, (0x00AA0 + (0) * 4), mask);
  mask = (queue >> 32);
  if (mask)
   bus_space_write_4(((struct ixgbe_osdep *)(&sc->hw)->back)->os_memt, ((struct ixgbe_osdep *)(&sc->hw)->back)->os_memh, (0x00AA0 + (1) * 4), mask);
 }
}
void
ixgbe_disable_queue(struct ix_softc *sc, uint32_t vector)
{
 uint64_t queue = 1ULL << vector;
 uint32_t mask;
 if (sc->hw.mac.type == ixgbe_mac_82598EB) {
  mask = (0x0000FFFF & queue);
  bus_space_write_4(((struct ixgbe_osdep *)(&sc->hw)->back)->os_memt, ((struct ixgbe_osdep *)(&sc->hw)->back)->os_memh, 0x00888, mask);
 } else {
  mask = (queue & 0xFFFFFFFF);
  if (mask)
   bus_space_write_4(((struct ixgbe_osdep *)(&sc->hw)->back)->os_memt, ((struct ixgbe_osdep *)(&sc->hw)->back)->os_memh, (0x00AB0 + (0) * 4), mask);
  mask = (queue >> 32);
  if (mask)
   bus_space_write_4(((struct ixgbe_osdep *)(&sc->hw)->back)->os_memt, ((struct ixgbe_osdep *)(&sc->hw)->back)->os_memh, (0x00AB0 + (1) * 4), mask);
 }
}
int
ixgbe_intr(void *arg)
{
 struct ix_softc *sc = (struct ix_softc *)arg;
 struct ix_queue *que = sc->queues;
 struct ifnet *ifp = &sc->arpcom.ac_if;
 struct tx_ring *txr = sc->tx_rings;
 struct ixgbe_hw *hw = &sc->hw;
 uint32_t reg_eicr, mod_mask, msf_mask;
 int i, refill = 0;
 reg_eicr = bus_space_read_4(((struct ixgbe_osdep *)(&sc->hw)->back)->os_memt, ((struct ixgbe_osdep *)(&sc->hw)->back)->os_memh, 0x00800);
 if (reg_eicr == 0) {
  ixgbe_enable_intr(sc);
  return (0);
 }
 if (((ifp->if_flags) & (0x40))) {
  ixgbe_rxeof(que);
  ixgbe_txeof(txr);
  refill = 1;
 }
 if (refill) {
  if (ixgbe_rxfill(que->rxr)) {
   bus_space_write_4(((struct ixgbe_osdep *)(&sc->hw)->back)->os_memt, ((struct ixgbe_osdep *)(&sc->hw)->back)->os_memh, (((que->rxr->me) < 64) ? (0x01018 + ((que->rxr->me) * 0x40)) : (0x0D018 + (((que->rxr->me) - 64) * 0x40))), que->rxr->last_desc_filled);
  } else
   timeout_add(&sc->rx_refill, 1);
 }
 if (reg_eicr & 0x00100000) {
  _kernel_lock("/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../dev/pci/if_ix.c", 950);
  ixgbe_update_link_status(sc);
  _kernel_unlock();
  ifq_start(&ifp->if_snd);
 }
 if (hw->mac.type != ixgbe_mac_82598EB) {
  if (reg_eicr & 0x10000000) {
   printf("%s: CRITICAL: ECC ERROR!! "
       "Please Reboot!!\n", sc->dev.dv_xname);
   bus_space_write_4(((struct ixgbe_osdep *)(hw)->back)->os_memt, ((struct ixgbe_osdep *)(hw)->back)->os_memh, 0x00800, 0x10000000);
  }
  if (reg_eicr & 0x00800000) {
   printf("%s: CRITICAL: OVER TEMP!! "
       "PHY IS SHUT DOWN!!\n", ifp->if_xname);
   bus_space_write_4(((struct ixgbe_osdep *)(hw)->back)->os_memt, ((struct ixgbe_osdep *)(hw)->back)->os_memh, 0x00800, 0x00800000);
  }
 }
 if (ixgbe_is_sfp(hw)) {
  if (hw->device_id == 0x15AC) {
   mod_mask = 0x02000000;
   msf_mask = 0x04000000;
  } else if (hw->mac.type == ixgbe_mac_X540 ||
      hw->mac.type == ixgbe_mac_X550 ||
      hw->mac.type == ixgbe_mac_X550EM_x) {
   mod_mask = 0x08000000;
   msf_mask = 0x04000000;
  } else {
   mod_mask = 0x04000000;
   msf_mask = 0x02000000;
  }
  if (reg_eicr & mod_mask) {
   bus_space_write_4(((struct ixgbe_osdep *)(hw)->back)->os_memt, ((struct ixgbe_osdep *)(hw)->back)->os_memh, 0x00800, mod_mask);
   _kernel_lock("/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../dev/pci/if_ix.c", 987);
   ixgbe_handle_mod(sc);
   _kernel_unlock();
  } else if ((hw->phy.media_type != ixgbe_media_type_copper) &&
      (reg_eicr & msf_mask)) {
   bus_space_write_4(((struct ixgbe_osdep *)(hw)->back)->os_memt, ((struct ixgbe_osdep *)(hw)->back)->os_memh, 0x00800, msf_mask);
   _kernel_lock("/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../dev/pci/if_ix.c", 994);
   ixgbe_handle_msf(sc);
   _kernel_unlock();
  }
 }
 if ((hw->device_id == 0x10C8) &&
     (reg_eicr & 0x02000000)) {
  printf("%s: CRITICAL: FAN FAILURE!! "
      "REPLACE IMMEDIATELY!!\n", ifp->if_xname);
  bus_space_write_4(((struct ixgbe_osdep *)(&sc->hw)->back)->os_memt, ((struct ixgbe_osdep *)(&sc->hw)->back)->os_memh, 0x00800, 0x02000000);
 }
 if (hw->device_id == 0x15AD &&
     (reg_eicr & 0x02000000)) {
  bus_space_write_4(((struct ixgbe_osdep *)(hw)->back)->os_memt, ((struct ixgbe_osdep *)(hw)->back)->os_memh, 0x00800, 0x02000000);
  _kernel_lock("/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../dev/pci/if_ix.c", 1013);
  ixgbe_handle_phy(sc);
  _kernel_unlock();
 }
 for (i = 0; i < sc->num_queues; i++, que++)
  ixgbe_enable_queue(sc, que->msix);
 return (1);
}
void
ixgbe_media_status(struct ifnet * ifp, struct ifmediareq *ifmr)
{
 struct ix_softc *sc = ifp->if_softc;
 ifmr->ifm_active = 0x0000000000000100ULL;
 ifmr->ifm_status = 0x0000000000000001ULL;
 if (0) printf("ixgbe_media_status: begin" "\n");
 ixgbe_update_link_status(sc);
 if (((ifp->if_data.ifi_link_state) >= 4 || (ifp->if_data.ifi_link_state) == 0)) {
  ifmr->ifm_status |= 0x0000000000000002ULL;
  switch (sc->link_speed) {
  case 0x0008:
   ifmr->ifm_active |= 6 | 0x0000010000000000ULL;
   break;
  case 0x0020:
   switch (sc->optics) {
   case 19:
    ifmr->ifm_active |= 11 | 0x0000010000000000ULL;
    break;
   case 18:
    ifmr->ifm_active |= 14 | 0x0000010000000000ULL;
    break;
   default:
    ifmr->ifm_active |= sc->optics | 0x0000010000000000ULL;
    break;
   }
   break;
  case 0x0080:
   ifmr->ifm_active |= sc->optics | 0x0000010000000000ULL;
   break;
  }
  switch (sc->hw.fc.current_mode) {
  case ixgbe_fc_tx_pause:
   ifmr->ifm_active |= 0x0000040000000000ULL | 0x0000000000040000ULL;
   break;
  case ixgbe_fc_rx_pause:
   ifmr->ifm_active |= 0x0000040000000000ULL | 0x0000000000020000ULL;
   break;
  case ixgbe_fc_full:
   ifmr->ifm_active |= 0x0000040000000000ULL | 0x0000000000020000ULL |
       0x0000000000040000ULL;
   break;
  default:
   ifmr->ifm_active &= ~(0x0000040000000000ULL | 0x0000000000020000ULL |
       0x0000000000040000ULL);
   break;
  }
 }
}
int
ixgbe_media_change(struct ifnet *ifp)
{
 struct ix_softc *sc = ifp->if_softc;
 struct ixgbe_hw *hw = &sc->hw;
 struct ifmedia *ifm = &sc->media;
 ixgbe_link_speed speed = 0;
 if (((ifm->ifm_media) & 0x000000000000ff00ULL) != 0x0000000000000100ULL)
  return (22);
 if (hw->phy.media_type == ixgbe_media_type_backplane)
  return (19);
 switch (((ifm->ifm_media) & 0x00000000000000ffULL)) {
  case 0ULL:
  case 22:
   speed |= 0x0008;
  case 19:
  case 18:
  case 20:
   speed |= 0x0020;
  case 23:
   speed |= 0x0080;
   break;
  case 16:
   speed |= 0x0008;
  case 14:
  case 11:
  case 15:
   speed |= 0x0020;
   break;
  case 6:
   speed |= 0x0008;
   break;
  default:
   return (22);
 }
 hw->mac.autotry_restart = 1;
 hw->mac.ops.setup_link(hw, speed, 1);
 return (0);
}
int
ixgbe_encap(struct tx_ring *txr, struct mbuf *m_head)
{
 struct ix_softc *sc = txr->sc;
 uint32_t olinfo_status = 0, cmd_type_len;
 int i, j, error;
 int first, last = 0;
 bus_dmamap_t map;
 struct ixgbe_tx_buf *txbuf;
 union ixgbe_adv_tx_desc *txd = ((void *)0);
 cmd_type_len = (0x00300000 |
     0x02000000 | 0x20000000);
 if (m_head->m_hdr.mh_flags & 0x0020)
  cmd_type_len |= 0x40000000;
 first = txr->next_avail_desc;
 txbuf = &txr->tx_buffers[first];
 map = txbuf->map;
 error = bus_dmamap_load_mbuf(txr->txdma.dma_tag, map, m_head,
     0x0001);
 switch (error) {
 case 0:
  break;
 case 27:
  if (m_defrag(m_head, 0x0002) == 0 &&
      (error = bus_dmamap_load_mbuf(txr->txdma.dma_tag, map,
       m_head, 0x0001)) == 0)
   break;
 default:
  sc->no_tx_dma_setup++;
  return (error);
 }
 ((map->dm_nsegs <= txr->tx_avail - 2) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../dev/pci/if_ix.c", 1197, "map->dm_nsegs <= txr->tx_avail - 2"));
 error = ixgbe_tx_ctx_setup(txr, m_head, &cmd_type_len, &olinfo_status);
 if (error)
  goto xmit_fail;
 i = txr->next_avail_desc;
 for (j = 0; j < map->dm_nsegs; j++) {
  txbuf = &txr->tx_buffers[i];
  txd = &txr->tx_base[i];
  txd->read.buffer_addr = (__uint64_t)(__builtin_constant_p(map->dm_segs[j].ds_addr) ? (__uint64_t)((((__uint64_t)(map->dm_segs[j].ds_addr) & 0xff) << 56) | ((__uint64_t)(map->dm_segs[j].ds_addr) & 0xff00ULL) << 40 | ((__uint64_t)(map->dm_segs[j].ds_addr) & 0xff0000ULL) << 24 | ((__uint64_t)(map->dm_segs[j].ds_addr) & 0xff000000ULL) << 8 | ((__uint64_t)(map->dm_segs[j].ds_addr) & 0xff00000000ULL) >> 8 | ((__uint64_t)(map->dm_segs[j].ds_addr) & 0xff0000000000ULL) >> 24 | ((__uint64_t)(map->dm_segs[j].ds_addr) & 0xff000000000000ULL) >> 40 | ((__uint64_t)(map->dm_segs[j].ds_addr) & 0xff00000000000000ULL) >> 56) : __swap64md(map->dm_segs[j].ds_addr));
  txd->read.cmd_type_len = (__uint32_t)(__builtin_constant_p(txr->txd_cmd | cmd_type_len | map->dm_segs[j].ds_len) ? (__uint32_t)(((__uint32_t)(txr->txd_cmd | cmd_type_len | map->dm_segs[j].ds_len) & 0xff) << 24 | ((__uint32_t)(txr->txd_cmd | cmd_type_len | map->dm_segs[j].ds_len) & 0xff00) << 8 | ((__uint32_t)(txr->txd_cmd | cmd_type_len | map->dm_segs[j].ds_len) & 0xff0000) >> 8 | ((__uint32_t)(txr->txd_cmd | cmd_type_len | map->dm_segs[j].ds_len) & 0xff000000) >> 24) : __swap32md(txr->txd_cmd | cmd_type_len | map->dm_segs[j].ds_len));
  txd->read.olinfo_status = (__uint32_t)(__builtin_constant_p(olinfo_status) ? (__uint32_t)(((__uint32_t)(olinfo_status) & 0xff) << 24 | ((__uint32_t)(olinfo_status) & 0xff00) << 8 | ((__uint32_t)(olinfo_status) & 0xff0000) >> 8 | ((__uint32_t)(olinfo_status) & 0xff000000) >> 24) : __swap32md(olinfo_status));
  last = i;
  if (++i == sc->num_tx_desc)
   i = 0;
  txbuf->m_head = ((void *)0);
  txbuf->eop_index = -1;
 }
 txd->read.cmd_type_len |=
     (__uint32_t)(__builtin_constant_p(0x01000000 | 0x08000000) ? (__uint32_t)(((__uint32_t)(0x01000000 | 0x08000000) & 0xff) << 24 | ((__uint32_t)(0x01000000 | 0x08000000) & 0xff00) << 8 | ((__uint32_t)(0x01000000 | 0x08000000) & 0xff0000) >> 8 | ((__uint32_t)(0x01000000 | 0x08000000) & 0xff000000) >> 24) : __swap32md(0x01000000 | 0x08000000));
 txbuf->m_head = m_head;
 txr->tx_buffers[first].map = txbuf->map;
 txbuf->map = map;
 bus_dmamap_sync(txr->txdma.dma_tag, map, 0, map->dm_mapsize,
     0x04);
 txbuf = &txr->tx_buffers[first];
 txbuf->eop_index = last;
 __asm volatile("membar " "#StoreStore" ::: "memory");
 ((void)_atomic_sub_int_nv((&txr->tx_avail), (map->dm_nsegs)));
 txr->next_avail_desc = i;
 ++txr->tx_packets;
 return (0);
xmit_fail:
 bus_dmamap_unload(txr->txdma.dma_tag, txbuf->map);
 return (error);
}
void
ixgbe_iff(struct ix_softc *sc)
{
 struct ifnet *ifp = &sc->arpcom.ac_if;
 struct arpcom *ac = &sc->arpcom;
 uint32_t fctrl;
 uint8_t *mta;
 uint8_t *update_ptr;
 struct ether_multi *enm;
 struct ether_multistep step;
 int mcnt = 0;
 if (0) printf("ixgbe_iff: begin" "\n");
 mta = sc->mta;
 __builtin_bzero((mta), (sizeof(uint8_t) * 6 * 128));
 fctrl = bus_space_read_4(((struct ixgbe_osdep *)(&sc->hw)->back)->os_memt, ((struct ixgbe_osdep *)(&sc->hw)->back)->os_memh, 0x05080);
 fctrl &= ~(0x00000100 | 0x00000200);
 ifp->if_flags &= ~0x200;
 if (ifp->if_flags & 0x100 || ac->ac_multirangecnt > 0 ||
     ac->ac_multicnt > 128) {
  ifp->if_flags |= 0x200;
  fctrl |= 0x00000100;
  if (ifp->if_flags & 0x100)
   fctrl |= 0x00000200;
 } else {
  do { (step).e_enm = ((&(&sc->arpcom)->ac_multiaddrs)->lh_first); do { if ((((enm)) = ((step)).e_enm) != ((void *)0)) ((step)).e_enm = ((((enm)))->enm_list.le_next); } while ( 0); } while ( 0);
  while (enm != ((void *)0)) {
   __builtin_bcopy((enm->enm_addrlo), (&mta[mcnt * 6]), (6));
   mcnt++;
   do { if (((enm) = (step).e_enm) != ((void *)0)) (step).e_enm = (((enm))->enm_list.le_next); } while ( 0);
  }
  update_ptr = mta;
  sc->hw.mac.ops.update_mc_addr_list(&sc->hw, update_ptr, mcnt,
      ixgbe_mc_array_itr, 1);
 }
 bus_space_write_4(((struct ixgbe_osdep *)(&sc->hw)->back)->os_memt, ((struct ixgbe_osdep *)(&sc->hw)->back)->os_memh, 0x05080, fctrl);
}
uint8_t *
ixgbe_mc_array_itr(struct ixgbe_hw *hw, uint8_t **update_ptr, uint32_t *vmdq)
{
 uint8_t *addr = *update_ptr;
 uint8_t *newptr;
 *vmdq = 0;
 newptr = addr + 6;
 *update_ptr = newptr;
 return addr;
}
void
ixgbe_local_timer(void *arg)
{
 struct ix_softc *sc = arg;
 int s;
 s = _splraise(6);
 ixgbe_update_stats_counters(sc);
 timeout_add_sec(&sc->timer, 1);
 _splx(s);
}
void
ixgbe_update_link_status(struct ix_softc *sc)
{
 struct ifnet *ifp = &sc->arpcom.ac_if;
 int link_state = 2;
 ixgbe_check_link(&sc->hw, &sc->link_speed, &sc->link_up, 0);
 ifp->if_data.ifi_baudrate = 0;
 if (sc->link_up) {
  link_state = 6;
  switch (sc->link_speed) {
  case 0:
   ifp->if_data.ifi_baudrate = 0;
   break;
  case 0x0008:
   ifp->if_data.ifi_baudrate = ((((100) * 1000ULL) * 1000ULL));
   break;
  case 0x0020:
   ifp->if_data.ifi_baudrate = ((((((1) * 1000ULL) * 1000ULL) * 1000ULL)));
   break;
  case 0x0080:
   ifp->if_data.ifi_baudrate = ((((((10) * 1000ULL) * 1000ULL) * 1000ULL)));
   break;
  }
  sc->hw.mac.ops.fc_enable(&sc->hw);
 }
 if (ifp->if_data.ifi_link_state != link_state) {
  ifp->if_data.ifi_link_state = link_state;
  if_link_state_change(ifp);
 }
}
void
ixgbe_stop(void *arg)
{
 struct ix_softc *sc = arg;
 struct ifnet *ifp = &sc->arpcom.ac_if;
 ifp->if_flags &= ~0x40;
 if (0) printf("ixgbe_stop: begin\n" "\n");
 ixgbe_disable_intr(sc);
 sc->hw.mac.ops.reset_hw(&sc->hw);
 sc->hw.adapter_stopped = 0;
 sc->hw.mac.ops.stop_adapter(&sc->hw);
 if (sc->hw.mac.type == ixgbe_mac_82599EB)
  sc->hw.mac.ops.stop_mac_link_on_d3(&sc->hw);
 if (sc->hw.mac.ops.disable_tx_laser)
  sc->hw.mac.ops.disable_tx_laser(&sc->hw);
 timeout_del(&sc->timer);
 timeout_del(&sc->rx_refill);
 ixgbe_set_rar(&sc->hw, 0, sc->hw.mac.addr, 0, 0x80000000);
 ifq_barrier(&ifp->if_snd);
 intr_barrier(sc->tag);
 (((ifp->if_flags & 0x40) == 0) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../dev/pci/if_ix.c", 1418, "(ifp->if_flags & IFF_RUNNING) == 0"));
 ifq_clr_oactive(&ifp->if_snd);
 ixgbe_free_transmit_structures(sc);
 ixgbe_free_receive_structures(sc);
}
void
ixgbe_identify_hardware(struct ix_softc *sc)
{
 struct ixgbe_osdep *os = &sc->osdep;
 struct pci_attach_args *pa = &os->os_pa;
 uint32_t reg64;
 sc->hw.vendor_id = (((pa->pa_id) >> 0) & 0xffff);
 sc->hw.device_id = (((pa->pa_id) >> 16) & 0xffff);
 reg64 = pci_conf_read(pa->pa_pc, pa->pa_tag, 0x08);
 sc->hw.revision_id = (((reg64) >> 0) & 0xff);
 reg64 = pci_conf_read(pa->pa_pc, pa->pa_tag, 0x2c);
 sc->hw.subsystem_vendor_id = (((reg64) >> 0) & 0xffff);
 sc->hw.subsystem_device_id = (((reg64) >> 16) & 0xffff);
 ixgbe_set_mac_type(&sc->hw);
 if (sc->hw.mac.type != ixgbe_mac_82598EB)
  sc->hw.phy.smart_speed = ixgbe_smart_speed;
 sc->num_segs = 32;
}
void
ixgbe_setup_optics(struct ix_softc *sc)
{
 struct ixgbe_hw *hw = &sc->hw;
 int layer;
 layer = hw->mac.ops.get_supported_physical_layer(hw);
 if (layer & 0x0001)
  sc->optics = 22;
 else if (layer & 0x0002)
  sc->optics = 16;
 else if (layer & 0x0004)
  sc->optics = 6;
 else if (layer & 0x0008 ||
     layer & 0x2000)
  sc->optics = 23;
 else if (layer & 0x0010 ||
     layer & 0x0020)
  sc->optics = 18;
 else if (layer & 0x0040)
  sc->optics = 19;
 else if (layer & 0x0080 ||
     layer & 0x0100)
  sc->optics = 20;
 else if (layer & 0x4000)
  sc->optics = 11;
 else if (layer & 0x8000)
  sc->optics = 14;
 else
  sc->optics = 0ULL;
}
int
ixgbe_allocate_legacy(struct ix_softc *sc)
{
 struct ixgbe_osdep *os = &sc->osdep;
 struct pci_attach_args *pa = &os->os_pa;
 const char *intrstr = ((void *)0);
 pci_chipset_tag_t pc = pa->pa_pc;
 pci_intr_handle_t ih;
 if (pci_intr_map_msi(pa, &ih) != 0 &&
     pci_intr_map(pa, &ih) != 0) {
  printf(": couldn't map interrupt\n");
  return (6);
 }
 intrstr = pci_intr_string(pc, ih);
 sc->tag = pci_intr_establish(pc, ih, 6 | 0x100,
     ixgbe_intr, sc, sc->dev.dv_xname);
 if (sc->tag == ((void *)0)) {
  printf(": couldn't establish interrupt");
  if (intrstr != ((void *)0))
   printf(" at %s", intrstr);
  printf("\n");
  return (6);
 }
 printf(": %s", intrstr);
 sc->que_mask = ( 0x0000FFFF | 0x00100000 | 0x80000000);
 return (0);
}
int
ixgbe_allocate_pci_resources(struct ix_softc *sc)
{
 struct ixgbe_osdep *os = &sc->osdep;
 struct pci_attach_args *pa = &os->os_pa;
 int val;
 val = pci_conf_read(pa->pa_pc, pa->pa_tag, (0x10 + (0) * 4));
 if (((val) & 0x00000001) != 0x00000000) {
  printf(": mmba is not mem space\n");
  return (6);
 }
 if (pci_mapreg_map(pa, (0x10 + (0) * 4), ((val) & 0x00000006), 0,
     &os->os_memt, &os->os_memh, &os->os_membase, &os->os_memsize, 0)) {
  printf(": cannot find mem space\n");
  return (6);
 }
 sc->hw.hw_addr = (uint8_t *)os->os_membase;
 sc->num_queues = 1;
 sc->hw.back = os;
 return (0);
}
void
ixgbe_free_pci_resources(struct ix_softc * sc)
{
 struct ixgbe_osdep *os = &sc->osdep;
 struct pci_attach_args *pa = &os->os_pa;
 struct ix_queue *que = sc->queues;
 int i;
 for (i = 0; i < sc->num_queues; i++, que++) {
  if (que->tag)
   pci_intr_disestablish(pa->pa_pc, que->tag);
  que->tag = ((void *)0);
 }
 if (sc->tag)
  pci_intr_disestablish(pa->pa_pc, sc->tag);
 sc->tag = ((void *)0);
 if (os->os_membase != 0)
  bus_space_unmap(os->os_memt, os->os_memh, os->os_memsize);
 os->os_membase = 0;
}
void
ixgbe_setup_interface(struct ix_softc *sc)
{
 struct ifnet *ifp = &sc->arpcom.ac_if;
 strlcpy(ifp->if_xname, sc->dev.dv_xname, 16);
 ifp->if_softc = sc;
 ifp->if_flags = 0x2 | 0x800 | 0x8000;
 ifp->if_xflags = 0x1;
 ifp->if_ioctl = ixgbe_ioctl;
 ifp->if_qstart = ixgbe_start;
 ifp->if_timer = 0;
 ifp->if_watchdog = ixgbe_watchdog;
 ifp->if_hardmtu = 9216 -
     ((6 * 2) + 2) - 4;
 ((&ifp->if_snd)->ifq_maxlen = (sc->num_tx_desc - 1));
 ifp->if_data.ifi_capabilities = 0x00000010;
 ifp->if_data.ifi_capabilities |= 0x00000020;
 ifmedia_init(&sc->media, 0xff00000000000000ULL, ixgbe_media_change,
     ixgbe_media_status);
 ixgbe_add_media_types(sc);
 ifmedia_set(&sc->media, 0x0000000000000100ULL | 0ULL);
 if_attach(ifp);
 ether_ifattach(ifp);
 sc->max_frame_size = 9216;
}
void
ixgbe_add_media_types(struct ix_softc *sc)
{
 struct ixgbe_hw *hw = &sc->hw;
 int layer;
 layer = hw->mac.ops.get_supported_physical_layer(hw);
 if (layer & 0x0001)
  ifmedia_add(&sc->media, 0x0000000000000100ULL | 22, 0, ((void *)0));
 if (layer & 0x0002)
  ifmedia_add(&sc->media, 0x0000000000000100ULL | 16, 0, ((void *)0));
 if (layer & 0x0004)
  ifmedia_add(&sc->media, 0x0000000000000100ULL | 6, 0, ((void *)0));
 if (layer & 0x0008 ||
     layer & 0x2000)
  ifmedia_add(&sc->media, 0x0000000000000100ULL | 23, 0, ((void *)0));
 if (layer & 0x0010) {
  ifmedia_add(&sc->media, 0x0000000000000100ULL | 18, 0, ((void *)0));
  if (hw->phy.multispeed_fiber)
   ifmedia_add(&sc->media, 0x0000000000000100ULL | 14, 0,
       ((void *)0));
 }
 if (layer & 0x0040) {
  ifmedia_add(&sc->media, 0x0000000000000100ULL | 19, 0, ((void *)0));
  if (hw->phy.multispeed_fiber)
   ifmedia_add(&sc->media, 0x0000000000000100ULL | 11, 0,
       ((void *)0));
 } else if (layer & 0x4000)
  ifmedia_add(&sc->media, 0x0000000000000100ULL | 11, 0, ((void *)0));
 if (layer & 0x0100)
  ifmedia_add(&sc->media, 0x0000000000000100ULL | 20, 0, ((void *)0));
 if (layer & 0x0800)
  ifmedia_add(&sc->media, 0x0000000000000100ULL | 19, 0, ((void *)0));
 if (layer & 0x0080)
  ifmedia_add(&sc->media, 0x0000000000000100ULL | 20, 0, ((void *)0));
 if (layer & 0x0200)
  ifmedia_add(&sc->media, 0x0000000000000100ULL | 15, 0, ((void *)0));
 if (hw->device_id == 0x10C8) {
  ifmedia_add(&sc->media, 0x0000000000000100ULL | 16 | 0x0000010000000000ULL, 0,
      ((void *)0));
  ifmedia_add(&sc->media, 0x0000000000000100ULL | 16, 0, ((void *)0));
 }
 ifmedia_add(&sc->media, 0x0000000000000100ULL | 0ULL, 0, ((void *)0));
}
void
ixgbe_config_link(struct ix_softc *sc)
{
 uint32_t autoneg, err = 0;
 _Bool negotiate;
 if (ixgbe_is_sfp(&sc->hw)) {
  if (sc->hw.phy.multispeed_fiber) {
   sc->hw.mac.ops.setup_sfp(&sc->hw);
   if (sc->hw.mac.ops.enable_tx_laser)
    sc->hw.mac.ops.enable_tx_laser(&sc->hw);
   ixgbe_handle_msf(sc);
  } else
   ixgbe_handle_mod(sc);
 } else {
  if (sc->hw.mac.ops.check_link)
   err = sc->hw.mac.ops.check_link(&sc->hw, &autoneg,
       &sc->link_up, 0);
  if (err)
   return;
  autoneg = sc->hw.phy.autoneg_advertised;
  if ((!autoneg) && (sc->hw.mac.ops.get_link_capabilities))
   err = sc->hw.mac.ops.get_link_capabilities(&sc->hw,
       &autoneg, &negotiate);
  if (err)
   return;
  if (sc->hw.mac.ops.setup_link)
   sc->hw.mac.ops.setup_link(&sc->hw,
       autoneg, sc->link_up);
 }
}
int
ixgbe_dma_malloc(struct ix_softc *sc, bus_size_t size,
  struct ixgbe_dma_alloc *dma, int mapflags)
{
 struct ifnet *ifp = &sc->arpcom.ac_if;
 struct ixgbe_osdep *os = &sc->osdep;
 int r;
 dma->dma_tag = os->os_pa.pa_dmat;
 r = bus_dmamap_create(dma->dma_tag, size, 1,
     size, 0, 0x0001, &dma->dma_map);
 if (r != 0) {
  printf("%s: ixgbe_dma_malloc: bus_dmamap_create failed; "
         "error %u\n", ifp->if_xname, r);
  goto fail_0;
 }
 r = bus_dmamem_alloc(dma->dma_tag, size, (1 << 13), 0, &dma->dma_seg,
     1, &dma->dma_nseg, 0x0001);
 if (r != 0) {
  printf("%s: ixgbe_dma_malloc: bus_dmamem_alloc failed; "
         "error %u\n", ifp->if_xname, r);
  goto fail_1;
 }
 r = bus_dmamem_map(dma->dma_tag, &dma->dma_seg, dma->dma_nseg, size,
     &dma->dma_vaddr, 0x0001);
 if (r != 0) {
  printf("%s: ixgbe_dma_malloc: bus_dmamem_map failed; "
         "error %u\n", ifp->if_xname, r);
  goto fail_2;
 }
 r = bus_dmamap_load(dma->dma_tag, dma->dma_map, dma->dma_vaddr,
     size, ((void *)0), mapflags | 0x0001);
 if (r != 0) {
  printf("%s: ixgbe_dma_malloc: bus_dmamap_load failed; "
         "error %u\n", ifp->if_xname, r);
  goto fail_3;
 }
 dma->dma_size = size;
 return (0);
fail_3:
 bus_dmamem_unmap(dma->dma_tag, dma->dma_vaddr, size);
fail_2:
 bus_dmamem_free(dma->dma_tag, &dma->dma_seg, dma->dma_nseg);
fail_1:
 bus_dmamap_destroy(dma->dma_tag, dma->dma_map);
fail_0:
 dma->dma_map = ((void *)0);
 dma->dma_tag = ((void *)0);
 return (r);
}
void
ixgbe_dma_free(struct ix_softc *sc, struct ixgbe_dma_alloc *dma)
{
 if (dma->dma_tag == ((void *)0))
  return;
 if (dma->dma_map != ((void *)0)) {
  bus_dmamap_sync(dma->dma_tag, dma->dma_map, 0,
      dma->dma_map->dm_mapsize,
      0x02 | 0x08);
  bus_dmamap_unload(dma->dma_tag, dma->dma_map);
  bus_dmamem_unmap(dma->dma_tag, dma->dma_vaddr, dma->dma_size);
  bus_dmamem_free(dma->dma_tag, &dma->dma_seg, dma->dma_nseg);
  bus_dmamap_destroy(dma->dma_tag, dma->dma_map);
  dma->dma_map = ((void *)0);
 }
}
int
ixgbe_allocate_queues(struct ix_softc *sc)
{
 struct ifnet *ifp = &sc->arpcom.ac_if;
 struct ix_queue *que;
 struct tx_ring *txr;
 struct rx_ring *rxr;
 int rsize, tsize;
 int txconf = 0, rxconf = 0, i;
 if (!(sc->queues = mallocarray(sc->num_queues,
     sizeof(struct ix_queue), 2, 0x0002 | 0x0008))) {
  printf("%s: Unable to allocate queue memory\n", ifp->if_xname);
  goto fail;
 }
 if (!(sc->tx_rings = mallocarray(sc->num_queues,
     sizeof(struct tx_ring), 2, 0x0002 | 0x0008))) {
  printf("%s: Unable to allocate TX ring memory\n", ifp->if_xname);
  goto fail;
 }
 if (!(sc->rx_rings = mallocarray(sc->num_queues,
     sizeof(struct rx_ring), 2, 0x0002 | 0x0008))) {
  printf("%s: Unable to allocate RX ring memory\n", ifp->if_xname);
  goto rx_fail;
 }
 tsize = (((sc->num_tx_desc * sizeof(union ixgbe_adv_tx_desc)) + (128) - 1) & ~((128) - 1));
 for (i = 0; i < sc->num_queues; i++, txconf++) {
  txr = &sc->tx_rings[i];
  txr->sc = sc;
  txr->me = i;
  if (ixgbe_dma_malloc(sc, tsize,
      &txr->txdma, 0x0001)) {
   printf("%s: Unable to allocate TX Descriptor memory\n",
       ifp->if_xname);
   goto err_tx_desc;
  }
  txr->tx_base = (union ixgbe_adv_tx_desc *)txr->txdma.dma_vaddr;
  __builtin_bzero(((void *)txr->tx_base), (tsize));
 }
 rsize = (((sc->num_rx_desc * sizeof(union ixgbe_adv_rx_desc)) + (4096) - 1) & ~((4096) - 1));
 for (i = 0; i < sc->num_queues; i++, rxconf++) {
  rxr = &sc->rx_rings[i];
  rxr->sc = sc;
  rxr->me = i;
  if (ixgbe_dma_malloc(sc, rsize,
   &rxr->rxdma, 0x0001)) {
   printf("%s: Unable to allocate RxDescriptor memory\n",
       ifp->if_xname);
   goto err_rx_desc;
  }
  rxr->rx_base = (union ixgbe_adv_rx_desc *)rxr->rxdma.dma_vaddr;
  __builtin_bzero(((void *)rxr->rx_base), (rsize));
 }
 for (i = 0; i < sc->num_queues; i++) {
  que = &sc->queues[i];
  que->sc = sc;
  que->txr = &sc->tx_rings[i];
  que->rxr = &sc->rx_rings[i];
 }
 return (0);
err_rx_desc:
 for (rxr = sc->rx_rings; rxconf > 0; rxr++, rxconf--)
  ixgbe_dma_free(sc, &rxr->rxdma);
err_tx_desc:
 for (txr = sc->tx_rings; txconf > 0; txr++, txconf--)
  ixgbe_dma_free(sc, &txr->txdma);
 free(sc->rx_rings, 2, sc->num_queues * sizeof(struct rx_ring));
 sc->rx_rings = ((void *)0);
rx_fail:
 free(sc->tx_rings, 2, sc->num_queues * sizeof(struct tx_ring));
 sc->tx_rings = ((void *)0);
fail:
 return (12);
}
int
ixgbe_allocate_transmit_buffers(struct tx_ring *txr)
{
 struct ix_softc *sc = txr->sc;
 struct ifnet *ifp = &sc->arpcom.ac_if;
 struct ixgbe_tx_buf *txbuf;
 int error, i;
 if (!(txr->tx_buffers = mallocarray(sc->num_tx_desc,
     sizeof(struct ixgbe_tx_buf), 2, 0x0002 | 0x0008))) {
  printf("%s: Unable to allocate tx_buffer memory\n",
      ifp->if_xname);
  error = 12;
  goto fail;
 }
 txr->txtag = txr->txdma.dma_tag;
 for (i = 0; i < sc->num_tx_desc; i++) {
  txbuf = &txr->tx_buffers[i];
  error = bus_dmamap_create(txr->txdma.dma_tag, 262140,
       sc->num_segs, (1 << 13), 0,
       0x0001, &txbuf->map);
  if (error != 0) {
   printf("%s: Unable to create TX DMA map\n",
       ifp->if_xname);
   goto fail;
  }
 }
 return 0;
fail:
 return (error);
}
int
ixgbe_setup_transmit_ring(struct tx_ring *txr)
{
 struct ix_softc *sc = txr->sc;
 int error;
 if ((error = ixgbe_allocate_transmit_buffers(txr)) != 0)
  return (error);
 __builtin_bzero(((void *)txr->tx_base), ((sizeof(union ixgbe_adv_tx_desc)) * sc->num_tx_desc));
 txr->next_avail_desc = 0;
 txr->next_to_clean = 0;
 txr->tx_avail = sc->num_tx_desc;
 bus_dmamap_sync(txr->txdma.dma_tag, txr->txdma.dma_map,
     0, txr->txdma.dma_map->dm_mapsize,
     0x01 | 0x04);
 return (0);
}
int
ixgbe_setup_transmit_structures(struct ix_softc *sc)
{
 struct tx_ring *txr = sc->tx_rings;
 int i, error;
 for (i = 0; i < sc->num_queues; i++, txr++) {
  if ((error = ixgbe_setup_transmit_ring(txr)) != 0)
   goto fail;
 }
 return (0);
fail:
 ixgbe_free_transmit_structures(sc);
 return (error);
}
void
ixgbe_initialize_transmit_units(struct ix_softc *sc)
{
 struct ifnet *ifp = &sc->arpcom.ac_if;
 struct tx_ring *txr;
 struct ixgbe_hw *hw = &sc->hw;
 int i;
 uint64_t tdba;
 uint32_t txctrl;
 for (i = 0; i < sc->num_queues; i++) {
  txr = &sc->tx_rings[i];
  tdba = txr->txdma.dma_map->dm_segs[0].ds_addr;
  bus_space_write_4(((struct ixgbe_osdep *)(hw)->back)->os_memt, ((struct ixgbe_osdep *)(hw)->back)->os_memh, (0x06000 + ((i) * 0x40)), (tdba & 0x00000000ffffffffULL));
  bus_space_write_4(((struct ixgbe_osdep *)(hw)->back)->os_memt, ((struct ixgbe_osdep *)(hw)->back)->os_memh, (0x06004 + ((i) * 0x40)), (tdba >> 32));
  bus_space_write_4(((struct ixgbe_osdep *)(hw)->back)->os_memt, ((struct ixgbe_osdep *)(hw)->back)->os_memh, (0x06008 + ((i) * 0x40)), sc->num_tx_desc * sizeof(struct ixgbe_legacy_tx_desc));
  bus_space_write_4(((struct ixgbe_osdep *)(hw)->back)->os_memt, ((struct ixgbe_osdep *)(hw)->back)->os_memh, (0x06010 + ((i) * 0x40)), 0);
  bus_space_write_4(((struct ixgbe_osdep *)(hw)->back)->os_memt, ((struct ixgbe_osdep *)(hw)->back)->os_memh, (0x06018 + ((i) * 0x40)), 0);
  txr->txd_cmd = 0x02000000;
  txr->queue_status = IXGBE_QUEUE_IDLE;
  txr->watchdog_timer = 0;
  switch (hw->mac.type) {
  case ixgbe_mac_82598EB:
   txctrl = bus_space_read_4(((struct ixgbe_osdep *)(hw)->back)->os_memt, ((struct ixgbe_osdep *)(hw)->back)->os_memh, (0x07200 + ((i) * 4)));
   break;
  case ixgbe_mac_82599EB:
  case ixgbe_mac_X540:
  default:
   txctrl = bus_space_read_4(((struct ixgbe_osdep *)(hw)->back)->os_memt, ((struct ixgbe_osdep *)(hw)->back)->os_memh, (0x0600C + ((i) * 0x40)));
   break;
  }
  txctrl &= ~(1 << 11);
  switch (hw->mac.type) {
  case ixgbe_mac_82598EB:
   bus_space_write_4(((struct ixgbe_osdep *)(hw)->back)->os_memt, ((struct ixgbe_osdep *)(hw)->back)->os_memh, (0x07200 + ((i) * 4)), txctrl);
   break;
  case ixgbe_mac_82599EB:
  case ixgbe_mac_X540:
  default:
   bus_space_write_4(((struct ixgbe_osdep *)(hw)->back)->os_memt, ((struct ixgbe_osdep *)(hw)->back)->os_memh, (0x0600C + ((i) * 0x40)), txctrl);
   break;
  }
 }
 ifp->if_timer = 0;
 if (hw->mac.type != ixgbe_mac_82598EB) {
  uint32_t dmatxctl, rttdcs;
  dmatxctl = bus_space_read_4(((struct ixgbe_osdep *)(hw)->back)->os_memt, ((struct ixgbe_osdep *)(hw)->back)->os_memh, 0x04A80);
  dmatxctl |= 0x1;
  bus_space_write_4(((struct ixgbe_osdep *)(hw)->back)->os_memt, ((struct ixgbe_osdep *)(hw)->back)->os_memh, 0x04A80, dmatxctl);
  rttdcs = bus_space_read_4(((struct ixgbe_osdep *)(hw)->back)->os_memt, ((struct ixgbe_osdep *)(hw)->back)->os_memh, 0x04900);
  rttdcs |= 0x00000040;
  bus_space_write_4(((struct ixgbe_osdep *)(hw)->back)->os_memt, ((struct ixgbe_osdep *)(hw)->back)->os_memh, 0x04900, rttdcs);
  bus_space_write_4(((struct ixgbe_osdep *)(hw)->back)->os_memt, ((struct ixgbe_osdep *)(hw)->back)->os_memh, 0x08120, 0x0);
  rttdcs &= ~0x00000040;
  bus_space_write_4(((struct ixgbe_osdep *)(hw)->back)->os_memt, ((struct ixgbe_osdep *)(hw)->back)->os_memh, 0x04900, rttdcs);
 }
}
void
ixgbe_free_transmit_structures(struct ix_softc *sc)
{
 struct tx_ring *txr = sc->tx_rings;
 int i;
 for (i = 0; i < sc->num_queues; i++, txr++)
  ixgbe_free_transmit_buffers(txr);
}
void
ixgbe_free_transmit_buffers(struct tx_ring *txr)
{
 struct ix_softc *sc = txr->sc;
 struct ixgbe_tx_buf *tx_buffer;
 int i;
 if (0) printf("free_transmit_ring: begin" "\n");
 if (txr->tx_buffers == ((void *)0))
  return;
 tx_buffer = txr->tx_buffers;
 for (i = 0; i < sc->num_tx_desc; i++, tx_buffer++) {
  if (tx_buffer->map != ((void *)0) && tx_buffer->map->dm_nsegs > 0) {
   bus_dmamap_sync(txr->txdma.dma_tag, tx_buffer->map,
       0, tx_buffer->map->dm_mapsize,
       0x08);
   bus_dmamap_unload(txr->txdma.dma_tag,
       tx_buffer->map);
  }
  if (tx_buffer->m_head != ((void *)0)) {
   m_freem(tx_buffer->m_head);
   tx_buffer->m_head = ((void *)0);
  }
  if (tx_buffer->map != ((void *)0)) {
   bus_dmamap_destroy(txr->txdma.dma_tag,
       tx_buffer->map);
   tx_buffer->map = ((void *)0);
  }
 }
 if (txr->tx_buffers != ((void *)0))
  free(txr->tx_buffers, 2,
      sc->num_tx_desc * sizeof(struct ixgbe_tx_buf));
 txr->tx_buffers = ((void *)0);
 txr->txtag = ((void *)0);
}
int
ixgbe_tx_ctx_setup(struct tx_ring *txr, struct mbuf *mp,
    uint32_t *cmd_type_len, uint32_t *olinfo_status)
{
 struct ix_softc *sc = txr->sc;
 struct ixgbe_adv_tx_context_desc *TXD;
 struct ixgbe_tx_buf *tx_buffer;
 struct ether_vlan_header *eh;
 struct ip *ip;
 struct mbuf *m;
 int ipoff;
 uint32_t vlan_macip_lens = 0, type_tucmd_mlhl = 0;
 int ehdrlen, ip_hlen = 0;
 uint16_t etype;
 uint8_t ipproto = 0;
 int offload = 1;
 int ctxd = txr->next_avail_desc;
 uint16_t vtag = 0;
 if ((mp->M_dat.MH.MH_pkthdr.csum_flags & (0x0002 | 0x0004)) == 0)
  offload = 0;
 *olinfo_status |= mp->M_dat.MH.MH_pkthdr.len << 14;
 TXD = (struct ixgbe_adv_tx_context_desc *) &txr->tx_base[ctxd];
 tx_buffer = &txr->tx_buffers[ctxd];
 if (mp->m_hdr.mh_flags & 0x0020) {
  vtag = mp->M_dat.MH.MH_pkthdr.ether_vtag;
  vlan_macip_lens |= (vtag << 16);
 } else
 if (offload == 0)
  return (0);
 if (mp->m_hdr.mh_len < sizeof(struct ether_header))
  return (1);
 eh = ((struct ether_vlan_header *)((mp)->m_hdr.mh_data));
 if (eh->evl_encap_proto == ((__uint16_t)(0x8100))) {
  if (mp->m_hdr.mh_len < sizeof(struct ether_vlan_header))
   return (1);
  etype = ((__uint16_t)(eh->evl_proto));
  ehdrlen = ((6 * 2) + 2) + 4;
 } else {
  etype = ((__uint16_t)(eh->evl_encap_proto));
  ehdrlen = ((6 * 2) + 2);
 }
 vlan_macip_lens |= ehdrlen << 9;
 switch (etype) {
 case 0x0800:
  if (mp->M_dat.MH.MH_pkthdr.len < ehdrlen + sizeof(*ip))
   return (1);
  m = m_getptr(mp, ehdrlen, &ipoff);
  ((m != ((void *)0) && m->m_hdr.mh_len - ipoff >= sizeof(*ip)) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../dev/pci/if_ix.c", 2244, "m != NULL && m->m_len - ipoff >= sizeof(*ip)"));
  ip = (struct ip *)(m->m_hdr.mh_data + ipoff);
  ip_hlen = ip->ip_hl << 2;
  ipproto = ip->ip_p;
  type_tucmd_mlhl |= 0x00000400;
  break;
 default:
  offload = 0;
  break;
 }
 vlan_macip_lens |= ip_hlen;
 type_tucmd_mlhl |= 0x20000000 | 0x00200000;
 switch (ipproto) {
 case 6:
  if (mp->M_dat.MH.MH_pkthdr.csum_flags & 0x0002)
   type_tucmd_mlhl |= 0x00000800;
  break;
 case 17:
  if (mp->M_dat.MH.MH_pkthdr.csum_flags & 0x0004)
   type_tucmd_mlhl |= 0x00000000;
  break;
 default:
  offload = 0;
  break;
 }
 if (offload)
  *olinfo_status |= 0x02 << 8;
 TXD->vlan_macip_lens = (__uint32_t)(__builtin_constant_p(vlan_macip_lens) ? (__uint32_t)(((__uint32_t)(vlan_macip_lens) & 0xff) << 24 | ((__uint32_t)(vlan_macip_lens) & 0xff00) << 8 | ((__uint32_t)(vlan_macip_lens) & 0xff0000) >> 8 | ((__uint32_t)(vlan_macip_lens) & 0xff000000) >> 24) : __swap32md(vlan_macip_lens));
 TXD->type_tucmd_mlhl = (__uint32_t)(__builtin_constant_p(type_tucmd_mlhl) ? (__uint32_t)(((__uint32_t)(type_tucmd_mlhl) & 0xff) << 24 | ((__uint32_t)(type_tucmd_mlhl) & 0xff00) << 8 | ((__uint32_t)(type_tucmd_mlhl) & 0xff0000) >> 8 | ((__uint32_t)(type_tucmd_mlhl) & 0xff000000) >> 24) : __swap32md(type_tucmd_mlhl));
 TXD->seqnum_seed = (__uint32_t)(__builtin_constant_p(0) ? (__uint32_t)(((__uint32_t)(0) & 0xff) << 24 | ((__uint32_t)(0) & 0xff00) << 8 | ((__uint32_t)(0) & 0xff0000) >> 8 | ((__uint32_t)(0) & 0xff000000) >> 24) : __swap32md(0));
 TXD->mss_l4len_idx = (__uint32_t)(__builtin_constant_p(0) ? (__uint32_t)(((__uint32_t)(0) & 0xff) << 24 | ((__uint32_t)(0) & 0xff00) << 8 | ((__uint32_t)(0) & 0xff0000) >> 8 | ((__uint32_t)(0) & 0xff000000) >> 24) : __swap32md(0));
 tx_buffer->m_head = ((void *)0);
 tx_buffer->eop_index = -1;
 __asm volatile("membar " "#StoreStore" ::: "memory");
 if (++ctxd == sc->num_tx_desc)
  ctxd = 0;
 txr->next_avail_desc = ctxd;
 ((void)_atomic_sub_int_nv((&txr->tx_avail), 1));
 return (0);
}
int
ixgbe_txeof(struct tx_ring *txr)
{
 struct ix_softc *sc = txr->sc;
 struct ifnet *ifp = &sc->arpcom.ac_if;
 uint32_t first, last, done, processed;
 uint32_t num_avail;
 struct ixgbe_tx_buf *tx_buffer;
 struct ixgbe_legacy_tx_desc *tx_desc, *eop_desc;
 if (!((ifp->if_flags) & (0x40)))
  return 0;
 if (txr->tx_avail == sc->num_tx_desc) {
  txr->queue_status = IXGBE_QUEUE_IDLE;
  return 0;
 }
 __asm volatile("membar " "#LoadLoad" ::: "memory");
 processed = 0;
 first = txr->next_to_clean;
 if (txr->tx_buffers == ((void *)0))
  return 0;
 tx_buffer = &txr->tx_buffers[first];
 tx_desc = (struct ixgbe_legacy_tx_desc *)&txr->tx_base[first];
 last = tx_buffer->eop_index;
 if (last == -1)
  return 0;
 eop_desc = (struct ixgbe_legacy_tx_desc *)&txr->tx_base[last];
 if (++last == sc->num_tx_desc) last = 0;
 done = last;
 bus_dmamap_sync(txr->txdma.dma_tag, txr->txdma.dma_map,
     0, txr->txdma.dma_map->dm_mapsize,
     0x02);
 while (eop_desc->upper.fields.status & 0x00000001) {
  while (first != done) {
   tx_desc->upper.data = 0;
   tx_desc->lower.data = 0;
   tx_desc->buffer_addr = 0;
   ++processed;
   if (tx_buffer->m_head) {
    bus_dmamap_sync(txr->txdma.dma_tag,
        tx_buffer->map,
        0, tx_buffer->map->dm_mapsize,
        0x08);
    bus_dmamap_unload(txr->txdma.dma_tag,
        tx_buffer->map);
    m_freem(tx_buffer->m_head);
    tx_buffer->m_head = ((void *)0);
   }
   tx_buffer->eop_index = -1;
   if (++first == sc->num_tx_desc)
    first = 0;
   tx_buffer = &txr->tx_buffers[first];
   tx_desc = (struct ixgbe_legacy_tx_desc *)
       &txr->tx_base[first];
  }
  ++txr->packets;
  last = tx_buffer->eop_index;
  if (last != -1) {
   eop_desc =
       (struct ixgbe_legacy_tx_desc *)&txr->tx_base[last];
   if (++last == sc->num_tx_desc) last = 0;
   done = last;
  } else
   break;
 }
 bus_dmamap_sync(txr->txdma.dma_tag, txr->txdma.dma_map,
     0, txr->txdma.dma_map->dm_mapsize,
     0x01 | 0x04);
 txr->next_to_clean = first;
 num_avail = _atomic_add_int_nv(&txr->tx_avail, processed);
 if (num_avail == sc->num_tx_desc)
  ifp->if_timer = 0;
 if (ifq_is_oactive(&ifp->if_snd))
  ifq_restart(&ifp->if_snd);
 return 1;
}
int
ixgbe_get_buf(struct rx_ring *rxr, int i)
{
 struct ix_softc *sc = rxr->sc;
 struct ixgbe_rx_buf *rxbuf;
 struct mbuf *mp;
 int error;
 union ixgbe_adv_rx_desc *rxdesc;
 size_t dsize = sizeof(union ixgbe_adv_rx_desc);
 rxbuf = &rxr->rx_buffers[i];
 rxdesc = &rxr->rx_base[i];
 if (rxbuf->buf) {
  printf("%s: ixgbe_get_buf: slot %d already has an mbuf\n",
      sc->dev.dv_xname, i);
  return (55);
 }
 mp = m_clget((((void *)0)), (0x0002), (sc->rx_mbuf_sz));
 if (!mp)
  return (55);
 mp->m_hdr.mh_len = mp->M_dat.MH.MH_pkthdr.len = sc->rx_mbuf_sz;
 m_adj(mp, 2);
 error = bus_dmamap_load_mbuf(rxr->rxdma.dma_tag, rxbuf->map,
     mp, 0x0001);
 if (error) {
  m_freem(mp);
  return (error);
 }
 bus_dmamap_sync(rxr->rxdma.dma_tag, rxbuf->map,
     0, rxbuf->map->dm_mapsize, 0x01);
 rxbuf->buf = mp;
 bus_dmamap_sync(rxr->rxdma.dma_tag, rxr->rxdma.dma_map,
     dsize * i, dsize, 0x08);
 rxdesc->read.pkt_addr = (__uint64_t)(__builtin_constant_p(rxbuf->map->dm_segs[0].ds_addr) ? (__uint64_t)((((__uint64_t)(rxbuf->map->dm_segs[0].ds_addr) & 0xff) << 56) | ((__uint64_t)(rxbuf->map->dm_segs[0].ds_addr) & 0xff00ULL) << 40 | ((__uint64_t)(rxbuf->map->dm_segs[0].ds_addr) & 0xff0000ULL) << 24 | ((__uint64_t)(rxbuf->map->dm_segs[0].ds_addr) & 0xff000000ULL) << 8 | ((__uint64_t)(rxbuf->map->dm_segs[0].ds_addr) & 0xff00000000ULL) >> 8 | ((__uint64_t)(rxbuf->map->dm_segs[0].ds_addr) & 0xff0000000000ULL) >> 24 | ((__uint64_t)(rxbuf->map->dm_segs[0].ds_addr) & 0xff000000000000ULL) >> 40 | ((__uint64_t)(rxbuf->map->dm_segs[0].ds_addr) & 0xff00000000000000ULL) >> 56) : __swap64md(rxbuf->map->dm_segs[0].ds_addr));
 bus_dmamap_sync(rxr->rxdma.dma_tag, rxr->rxdma.dma_map,
     dsize * i, dsize, 0x04);
 return (0);
}
int
ixgbe_allocate_receive_buffers(struct rx_ring *rxr)
{
 struct ix_softc *sc = rxr->sc;
 struct ifnet *ifp = &sc->arpcom.ac_if;
 struct ixgbe_rx_buf *rxbuf;
 int i, error;
 if (!(rxr->rx_buffers = mallocarray(sc->num_rx_desc,
     sizeof(struct ixgbe_rx_buf), 2, 0x0002 | 0x0008))) {
  printf("%s: Unable to allocate rx_buffer memory\n",
      ifp->if_xname);
  error = 12;
  goto fail;
 }
 rxbuf = rxr->rx_buffers;
 for (i = 0; i < sc->num_rx_desc; i++, rxbuf++) {
  error = bus_dmamap_create(rxr->rxdma.dma_tag, 16 * 1024, 1,
      16 * 1024, 0, 0x0001, &rxbuf->map);
  if (error) {
   printf("%s: Unable to create Pack DMA map\n",
       ifp->if_xname);
   goto fail;
  }
 }
 bus_dmamap_sync(rxr->rxdma.dma_tag, rxr->rxdma.dma_map, 0,
     rxr->rxdma.dma_map->dm_mapsize,
     0x01 | 0x04);
 return (0);
fail:
 return (error);
}
int
ixgbe_setup_receive_ring(struct rx_ring *rxr)
{
 struct ix_softc *sc = rxr->sc;
 struct ifnet *ifp = &sc->arpcom.ac_if;
 int rsize, error;
 rsize = (((sc->num_rx_desc * sizeof(union ixgbe_adv_rx_desc)) + (4096) - 1) & ~((4096) - 1));
 __builtin_bzero(((void *)rxr->rx_base), (rsize));
 if ((error = ixgbe_allocate_receive_buffers(rxr)) != 0)
  return (error);
 rxr->next_to_check = 0;
 rxr->last_desc_filled = sc->num_rx_desc - 1;
 if_rxr_init(&rxr->rx_ring, 2 * ((ifp->if_hardmtu / (1 << 11)) + 1),
     sc->num_rx_desc);
 ixgbe_rxfill(rxr);
 if (((&rxr->rx_ring)->rxr_alive) == 0) {
  printf("%s: unable to fill any rx descriptors\n",
      sc->dev.dv_xname);
  return (55);
 }
 return (0);
}
int
ixgbe_rxfill(struct rx_ring *rxr)
{
 struct ix_softc *sc = rxr->sc;
 int post = 0;
 u_int slots;
 int i;
 i = rxr->last_desc_filled;
 for (slots = if_rxr_get(&rxr->rx_ring, sc->num_rx_desc);
     slots > 0; slots--) {
  if (++i == sc->num_rx_desc)
   i = 0;
  if (ixgbe_get_buf(rxr, i) != 0)
   break;
  rxr->last_desc_filled = i;
  post = 1;
 }
 do { (&rxr->rx_ring)->rxr_alive -= (slots); } while (0);
 return (post);
}
void
ixgbe_rxrefill(void *xsc)
{
 struct ix_softc *sc = xsc;
 struct ix_queue *que = sc->queues;
 int s;
 s = _splraise(6);
 if (ixgbe_rxfill(que->rxr)) {
  bus_space_write_4(((struct ixgbe_osdep *)(&sc->hw)->back)->os_memt, ((struct ixgbe_osdep *)(&sc->hw)->back)->os_memh, (((que->rxr->me) < 64) ? (0x01018 + ((que->rxr->me) * 0x40)) : (0x0D018 + (((que->rxr->me) - 64) * 0x40))), que->rxr->last_desc_filled);
 } else
  timeout_add(&sc->rx_refill, 1);
 _splx(s);
}
int
ixgbe_setup_receive_structures(struct ix_softc *sc)
{
 struct rx_ring *rxr = sc->rx_rings;
 int i;
 for (i = 0; i < sc->num_queues; i++, rxr++)
  if (ixgbe_setup_receive_ring(rxr))
   goto fail;
 return (0);
fail:
 ixgbe_free_receive_structures(sc);
 return (55);
}
void
ixgbe_initialize_receive_units(struct ix_softc *sc)
{
 struct rx_ring *rxr = sc->rx_rings;
 struct ixgbe_hw *hw = &sc->hw;
 uint32_t bufsz, fctrl, srrctl, rxcsum;
 uint32_t hlreg;
 int i;
 ixgbe_disable_rx(hw);
 fctrl = bus_space_read_4(((struct ixgbe_osdep *)(hw)->back)->os_memt, ((struct ixgbe_osdep *)(hw)->back)->os_memh, 0x05080);
 fctrl |= 0x00000400;
 if (sc->hw.mac.type == ixgbe_mac_82598EB) {
  fctrl |= 0x00002000;
  fctrl |= 0x00001000;
 }
 bus_space_write_4(((struct ixgbe_osdep *)(hw)->back)->os_memt, ((struct ixgbe_osdep *)(hw)->back)->os_memh, 0x05080, fctrl);
 hlreg = bus_space_read_4(((struct ixgbe_osdep *)(hw)->back)->os_memt, ((struct ixgbe_osdep *)(hw)->back)->os_memh, 0x04240);
 hlreg |= 0x00000004;
 bus_space_write_4(((struct ixgbe_osdep *)(hw)->back)->os_memt, ((struct ixgbe_osdep *)(hw)->back)->os_memh, 0x04240, hlreg);
 bufsz = (sc->rx_mbuf_sz - 2) >> 10;
 for (i = 0; i < sc->num_queues; i++, rxr++) {
  uint64_t rdba = rxr->rxdma.dma_map->dm_segs[0].ds_addr;
  bus_space_write_4(((struct ixgbe_osdep *)(hw)->back)->os_memt, ((struct ixgbe_osdep *)(hw)->back)->os_memh, (((i) < 64) ? (0x01000 + ((i) * 0x40)) : (0x0D000 + (((i) - 64) * 0x40))), (rdba & 0x00000000ffffffffULL));
  bus_space_write_4(((struct ixgbe_osdep *)(hw)->back)->os_memt, ((struct ixgbe_osdep *)(hw)->back)->os_memh, (((i) < 64) ? (0x01004 + ((i) * 0x40)) : (0x0D004 + (((i) - 64) * 0x40))), (rdba >> 32));
  bus_space_write_4(((struct ixgbe_osdep *)(hw)->back)->os_memt, ((struct ixgbe_osdep *)(hw)->back)->os_memh, (((i) < 64) ? (0x01008 + ((i) * 0x40)) : (0x0D008 + (((i) - 64) * 0x40))), sc->num_rx_desc * sizeof(union ixgbe_adv_rx_desc));
  srrctl = bufsz | 0x02000000;
  bus_space_write_4(((struct ixgbe_osdep *)(hw)->back)->os_memt, ((struct ixgbe_osdep *)(hw)->back)->os_memh, (((i) <= 15) ? (0x02100 + ((i) * 4)) : (((i) < 64) ? (0x01014 + ((i) * 0x40)) : (0x0D014 + (((i) - 64) * 0x40)))), srrctl);
  bus_space_write_4(((struct ixgbe_osdep *)(hw)->back)->os_memt, ((struct ixgbe_osdep *)(hw)->back)->os_memh, (((i) < 64) ? (0x01010 + ((i) * 0x40)) : (0x0D010 + (((i) - 64) * 0x40))), 0);
  bus_space_write_4(((struct ixgbe_osdep *)(hw)->back)->os_memt, ((struct ixgbe_osdep *)(hw)->back)->os_memh, (((i) < 64) ? (0x01018 + ((i) * 0x40)) : (0x0D018 + (((i) - 64) * 0x40))), 0);
 }
 if (sc->hw.mac.type != ixgbe_mac_82598EB) {
  uint32_t psrtype = 0x00000010 |
         0x00000020 |
         0x00000100 |
         0x00000200;
  bus_space_write_4(((struct ixgbe_osdep *)(hw)->back)->os_memt, ((struct ixgbe_osdep *)(hw)->back)->os_memh, (((0) <= 15) ? (0x05480 + ((0) * 4)) : (0x0EA00 + ((0) * 4))), psrtype);
 }
 rxcsum = bus_space_read_4(((struct ixgbe_osdep *)(hw)->back)->os_memt, ((struct ixgbe_osdep *)(hw)->back)->os_memh, 0x05000);
 rxcsum &= ~0x00002000;
 if (sc->num_queues > 1) {
  ixgbe_initialize_rss_mapping(sc);
  rxcsum |= 0x00002000;
 }
 if (!(rxcsum & 0x00002000))
  rxcsum |= 0x00001000;
 bus_space_write_4(((struct ixgbe_osdep *)(hw)->back)->os_memt, ((struct ixgbe_osdep *)(hw)->back)->os_memh, 0x05000, rxcsum);
}
void
ixgbe_initialize_rss_mapping(struct ix_softc *sc)
{
 struct ixgbe_hw *hw = &sc->hw;
 uint32_t reta = 0, mrqc, rss_key[10];
 int i, j, queue_id, table_size, index_mult;
 arc4random_buf(&rss_key, sizeof(rss_key));
 index_mult = 0x1;
 table_size = 128;
 switch (sc->hw.mac.type) {
 case ixgbe_mac_82598EB:
  index_mult = 0x11;
  break;
 case ixgbe_mac_X550:
 case ixgbe_mac_X550EM_x:
  table_size = 512;
  break;
 default:
  break;
 }
 for (i = 0, j = 0; i < table_size; i++, j++) {
  if (j == sc->num_queues) j = 0;
  queue_id = (j * index_mult);
  reta = reta >> 8;
  reta = reta | ( ((uint32_t) queue_id) << 24);
  if ((i & 3) == 3) {
   if (i < 128)
    bus_space_write_4(((struct ixgbe_osdep *)(hw)->back)->os_memt, ((struct ixgbe_osdep *)(hw)->back)->os_memh, (0x05C00 + ((i >> 2) * 4)), reta);
   else
    bus_space_write_4(((struct ixgbe_osdep *)(hw)->back)->os_memt, ((struct ixgbe_osdep *)(hw)->back)->os_memh, (0x0EE80 + (((i >> 2) - 32) * 4)), reta);
   reta = 0;
  }
 }
 for (i = 0; i < 10; i++)
  bus_space_write_4(((struct ixgbe_osdep *)(hw)->back)->os_memt, ((struct ixgbe_osdep *)(hw)->back)->os_memh, (0x05C80 + ((i) * 4)), rss_key[i]);
 mrqc = 0x00000001
      | 0x00020000
      | 0x00010000
      | 0x00040000
      | 0x00080000
      | 0x00100000
      | 0x00200000
 ;
 bus_space_write_4(((struct ixgbe_osdep *)(hw)->back)->os_memt, ((struct ixgbe_osdep *)(hw)->back)->os_memh, 0x05818, mrqc);
}
void
ixgbe_free_receive_structures(struct ix_softc *sc)
{
 struct rx_ring *rxr;
 int i;
 for (i = 0, rxr = sc->rx_rings; i < sc->num_queues; i++, rxr++)
  if_rxr_init(&rxr->rx_ring, 0, 0);
 for (i = 0, rxr = sc->rx_rings; i < sc->num_queues; i++, rxr++)
  ixgbe_free_receive_buffers(rxr);
}
void
ixgbe_free_receive_buffers(struct rx_ring *rxr)
{
 struct ix_softc *sc;
 struct ixgbe_rx_buf *rxbuf;
 int i;
 sc = rxr->sc;
 if (rxr->rx_buffers != ((void *)0)) {
  for (i = 0; i < sc->num_rx_desc; i++) {
   rxbuf = &rxr->rx_buffers[i];
   if (rxbuf->buf != ((void *)0)) {
    bus_dmamap_sync(rxr->rxdma.dma_tag, rxbuf->map,
        0, rxbuf->map->dm_mapsize,
        0x02);
    bus_dmamap_unload(rxr->rxdma.dma_tag,
        rxbuf->map);
    m_freem(rxbuf->buf);
    rxbuf->buf = ((void *)0);
   }
   bus_dmamap_destroy(rxr->rxdma.dma_tag, rxbuf->map);
   rxbuf->map = ((void *)0);
  }
  free(rxr->rx_buffers, 2,
      sc->num_rx_desc * sizeof(struct ixgbe_rx_buf));
  rxr->rx_buffers = ((void *)0);
 }
}
int
ixgbe_rxeof(struct ix_queue *que)
{
 struct ix_softc *sc = que->sc;
 struct rx_ring *rxr = que->rxr;
 struct ifnet *ifp = &sc->arpcom.ac_if;
 struct mbuf_list ml = { ((void *)0), ((void *)0), 0 };
 struct mbuf *mp, *sendmp;
 uint8_t eop = 0;
 uint16_t len, vtag;
 uint32_t staterr = 0, ptype;
 struct ixgbe_rx_buf *rxbuf, *nxbuf;
 union ixgbe_adv_rx_desc *rxdesc;
 size_t dsize = sizeof(union ixgbe_adv_rx_desc);
 int i, nextp;
 if (!((ifp->if_flags) & (0x40)))
  return 0;
 i = rxr->next_to_check;
 while (((&rxr->rx_ring)->rxr_alive) > 0) {
  bus_dmamap_sync(rxr->rxdma.dma_tag, rxr->rxdma.dma_map,
      dsize * i, dsize, 0x02);
  rxdesc = &rxr->rx_base[i];
  staterr = (__uint32_t)(__builtin_constant_p(rxdesc->wb.upper.status_error) ? (__uint32_t)(((__uint32_t)(rxdesc->wb.upper.status_error) & 0xff) << 24 | ((__uint32_t)(rxdesc->wb.upper.status_error) & 0xff00) << 8 | ((__uint32_t)(rxdesc->wb.upper.status_error) & 0xff0000) >> 8 | ((__uint32_t)(rxdesc->wb.upper.status_error) & 0xff000000) >> 24) : __swap32md(rxdesc->wb.upper.status_error));
  if (!((staterr) & (0x01))) {
   bus_dmamap_sync(rxr->rxdma.dma_tag, rxr->rxdma.dma_map,
       dsize * i, dsize,
       0x01);
   break;
  }
  rxdesc->wb.upper.status_error = 0;
  rxbuf = &rxr->rx_buffers[i];
  bus_dmamap_sync(rxr->rxdma.dma_tag, rxbuf->map, 0,
      rxbuf->map->dm_mapsize, 0x02);
  bus_dmamap_unload(rxr->rxdma.dma_tag, rxbuf->map);
  mp = rxbuf->buf;
  len = (__uint16_t)(__builtin_constant_p(rxdesc->wb.upper.length) ? (__uint16_t)(((__uint16_t)(rxdesc->wb.upper.length) & 0xffU) << 8 | ((__uint16_t)(rxdesc->wb.upper.length) & 0xff00U) >> 8) : __swap16md(rxdesc->wb.upper.length));
  ptype = (__uint32_t)(__builtin_constant_p(rxdesc->wb.lower.lo_dword.data) ? (__uint32_t)(((__uint32_t)(rxdesc->wb.lower.lo_dword.data) & 0xff) << 24 | ((__uint32_t)(rxdesc->wb.lower.lo_dword.data) & 0xff00) << 8 | ((__uint32_t)(rxdesc->wb.lower.lo_dword.data) & 0xff0000) >> 8 | ((__uint32_t)(rxdesc->wb.lower.lo_dword.data) & 0xff000000) >> 24) : __swap32md(rxdesc->wb.lower.lo_dword.data)) &
      0x0000FFF0;
  vtag = (__uint16_t)(__builtin_constant_p(rxdesc->wb.upper.vlan) ? (__uint16_t)(((__uint16_t)(rxdesc->wb.upper.vlan) & 0xffU) << 8 | ((__uint16_t)(rxdesc->wb.upper.vlan) & 0xff00U) >> 8) : __swap16md(rxdesc->wb.upper.vlan));
  eop = ((staterr & 0x02) != 0);
  if (staterr & ( 0x01000000 | 0x02000000 | 0x08000000 | 0x10000000 | 0x20000000)) {
   sc->dropped_pkts++;
   if (rxbuf->fmp) {
    m_freem(rxbuf->fmp);
    rxbuf->fmp = ((void *)0);
   }
   m_freem(mp);
   rxbuf->buf = ((void *)0);
   goto next_desc;
  }
  if (mp == ((void *)0)) {
   panic("%s: ixgbe_rxeof: NULL mbuf in slot %d "
       "(nrx %d, filled %d)", sc->dev.dv_xname,
       i, ((&rxr->rx_ring)->rxr_alive),
       rxr->last_desc_filled);
  }
  if (!eop) {
   nextp = i + 1;
   if (nextp == sc->num_rx_desc)
    nextp = 0;
   nxbuf = &rxr->rx_buffers[nextp];
  }
  mp->m_hdr.mh_len = len;
  sendmp = rxbuf->fmp;
  rxbuf->buf = rxbuf->fmp = ((void *)0);
  if (sendmp != ((void *)0))
   sendmp->M_dat.MH.MH_pkthdr.len += mp->m_hdr.mh_len;
  else {
   sendmp = mp;
   sendmp->M_dat.MH.MH_pkthdr.len = mp->m_hdr.mh_len;
   if (staterr & 0x08) {
    sendmp->M_dat.MH.MH_pkthdr.ether_vtag = vtag;
    sendmp->m_hdr.mh_flags |= 0x0020;
   }
  }
  if (eop == 0) {
   nxbuf->fmp = sendmp;
   sendmp = ((void *)0);
   mp->m_hdr.mh_next = nxbuf->buf;
  } else {
   rxr->rx_packets++;
   rxr->bytes += sendmp->M_dat.MH.MH_pkthdr.len;
   rxr->rx_bytes += sendmp->M_dat.MH.MH_pkthdr.len;
   ixgbe_rx_checksum(staterr, sendmp, ptype);
   ml_enqueue(&ml, sendmp);
  }
next_desc:
  do { (&rxr->rx_ring)->rxr_alive -= (1); } while (0);
  bus_dmamap_sync(rxr->rxdma.dma_tag, rxr->rxdma.dma_map,
      dsize * i, dsize,
      0x01);
  if (++i == sc->num_rx_desc)
   i = 0;
 }
 rxr->next_to_check = i;
 if_input(ifp, &ml);
 if (!(staterr & 0x01))
  return 0;
 return 1;
}
void
ixgbe_rx_checksum(uint32_t staterr, struct mbuf * mp, uint32_t ptype)
{
 uint16_t status = (uint16_t) staterr;
 uint8_t errors = (uint8_t) (staterr >> 24);
 if (status & 0x40) {
  if (!(errors & 0x80)) {
   mp->M_dat.MH.MH_pkthdr.csum_flags = 0x0008;
  } else
   mp->M_dat.MH.MH_pkthdr.csum_flags = 0;
 }
 if (status & 0x20) {
  if (!(errors & 0x40))
   mp->M_dat.MH.MH_pkthdr.csum_flags |=
    0x0020 | 0x0080;
 }
}
void
ixgbe_setup_vlan_hw_support(struct ix_softc *sc)
{
 uint32_t ctrl;
 int i;
 for (i = 0; i < 128; i++) {
  if (sc->shadow_vfta[i] != 0)
   bus_space_write_4(((struct ixgbe_osdep *)(&sc->hw)->back)->os_memt, ((struct ixgbe_osdep *)(&sc->hw)->back)->os_memh, (0x0A000 + ((i) * 4)), sc->shadow_vfta[i]);
 }
 ctrl = bus_space_read_4(((struct ixgbe_osdep *)(&sc->hw)->back)->os_memt, ((struct ixgbe_osdep *)(&sc->hw)->back)->os_memh, 0x05088);
 if (sc->hw.mac.type == ixgbe_mac_82598EB)
  ctrl |= 0x80000000;
 bus_space_write_4(((struct ixgbe_osdep *)(&sc->hw)->back)->os_memt, ((struct ixgbe_osdep *)(&sc->hw)->back)->os_memh, 0x05088, ctrl);
 if (sc->hw.mac.type != ixgbe_mac_82598EB) {
  for (i = 0; i < sc->num_queues; i++) {
   ctrl = bus_space_read_4(((struct ixgbe_osdep *)(&sc->hw)->back)->os_memt, ((struct ixgbe_osdep *)(&sc->hw)->back)->os_memh, (((i) < 64) ? (0x01028 + ((i) * 0x40)) : (0x0D028 + (((i) - 64) * 0x40))));
   ctrl |= 0x40000000;
   bus_space_write_4(((struct ixgbe_osdep *)(&sc->hw)->back)->os_memt, ((struct ixgbe_osdep *)(&sc->hw)->back)->os_memh, (((i) < 64) ? (0x01028 + ((i) * 0x40)) : (0x0D028 + (((i) - 64) * 0x40))), ctrl);
  }
 }
}
void
ixgbe_enable_intr(struct ix_softc *sc)
{
 struct ixgbe_hw *hw = &sc->hw;
 struct ix_queue *que = sc->queues;
 uint32_t mask, fwsm;
 int i;
 mask = (( 0x0000FFFF | 0x00100000 | 0x80000000) & ~0x0000FFFF);
 if (hw->device_id == 0x10C8)
      mask |= 0x02000000;
 switch (sc->hw.mac.type) {
 case ixgbe_mac_82599EB:
  mask |= 0x10000000;
  mask |= 0x01000000;
  mask |= 0x02000000;
  mask |= 0x04000000;
  break;
 case ixgbe_mac_X540:
  mask |= 0x10000000;
  fwsm = bus_space_read_4(((struct ixgbe_osdep *)(hw)->back)->os_memt, ((struct ixgbe_osdep *)(hw)->back)->os_memh, 0x10148);
  if (fwsm & 0x1)
   mask |= 0x00800000;
  break;
 case ixgbe_mac_X550:
 case ixgbe_mac_X550EM_x:
  mask |= 0x10000000;
  mask |= 0x00800000;
  if (hw->device_id == 0x15AC ||
      hw->device_id == 0x15AD)
   mask |= 0x02000000;
 default:
  break;
 }
 bus_space_write_4(((struct ixgbe_osdep *)(hw)->back)->os_memt, ((struct ixgbe_osdep *)(hw)->back)->os_memh, 0x00880, mask);
 if (sc->msix > 1) {
  mask = ( 0x0000FFFF | 0x00100000 | 0x80000000);
  mask &= ~0x80000000;
  mask &= ~0x00100000;
  bus_space_write_4(((struct ixgbe_osdep *)(hw)->back)->os_memt, ((struct ixgbe_osdep *)(hw)->back)->os_memh, 0x00810, mask);
 }
 for (i = 0; i < sc->num_queues; i++, que++)
  ixgbe_enable_queue(sc, que->msix);
 bus_space_read_4(((struct ixgbe_osdep *)(hw)->back)->os_memt, ((struct ixgbe_osdep *)(hw)->back)->os_memh, 0x00008);
}
void
ixgbe_disable_intr(struct ix_softc *sc)
{
 if (sc->msix > 1)
  bus_space_write_4(((struct ixgbe_osdep *)(&sc->hw)->back)->os_memt, ((struct ixgbe_osdep *)(&sc->hw)->back)->os_memh, 0x00810, 0);
 if (sc->hw.mac.type == ixgbe_mac_82598EB) {
  bus_space_write_4(((struct ixgbe_osdep *)(&sc->hw)->back)->os_memt, ((struct ixgbe_osdep *)(&sc->hw)->back)->os_memh, 0x00888, ~0);
 } else {
  bus_space_write_4(((struct ixgbe_osdep *)(&sc->hw)->back)->os_memt, ((struct ixgbe_osdep *)(&sc->hw)->back)->os_memh, 0x00888, 0xFFFF0000);
  bus_space_write_4(((struct ixgbe_osdep *)(&sc->hw)->back)->os_memt, ((struct ixgbe_osdep *)(&sc->hw)->back)->os_memh, (0x00AB0 + (0) * 4), ~0);
  bus_space_write_4(((struct ixgbe_osdep *)(&sc->hw)->back)->os_memt, ((struct ixgbe_osdep *)(&sc->hw)->back)->os_memh, (0x00AB0 + (1) * 4), ~0);
 }
 bus_space_read_4(((struct ixgbe_osdep *)(&sc->hw)->back)->os_memt, ((struct ixgbe_osdep *)(&sc->hw)->back)->os_memh, 0x00008);
}
uint16_t
ixgbe_read_pci_cfg(struct ixgbe_hw *hw, uint32_t reg64)
{
 struct pci_attach_args *pa;
 uint32_t value;
 int high = 0;
 if (reg64 & 0x2) {
  high = 1;
  reg64 &= ~0x2;
 }
 pa = &((struct ixgbe_osdep *)hw->back)->os_pa;
 value = pci_conf_read(pa->pa_pc, pa->pa_tag, reg64);
 if (high)
  value >>= 16;
 return (value & 0xffff);
}
void
ixgbe_write_pci_cfg(struct ixgbe_hw *hw, uint32_t reg64, uint16_t value)
{
 struct pci_attach_args *pa;
 uint32_t rv;
 int high = 0;
 if (reg64 & 0x2) {
  high = 1;
  reg64 &= ~0x2;
 }
 pa = &((struct ixgbe_osdep *)hw->back)->os_pa;
 rv = pci_conf_read(pa->pa_pc, pa->pa_tag, reg64);
 if (!high)
  rv = (rv & 0xffff0000) | value;
 else
  rv = (rv & 0xffff) | ((uint32_t)value << 16);
 pci_conf_write(pa->pa_pc, pa->pa_tag, reg64, rv);
}
void
ixgbe_set_ivar(struct ix_softc *sc, uint8_t entry, uint8_t vector, int8_t type)
{
 struct ixgbe_hw *hw = &sc->hw;
 uint32_t ivar, index;
 vector |= 0x80;
 switch (hw->mac.type) {
 case ixgbe_mac_82598EB:
  if (type == -1)
   entry = 97;
  else
   entry += (type * 64);
  index = (entry >> 2) & 0x1F;
  ivar = bus_space_read_4(((struct ixgbe_osdep *)(hw)->back)->os_memt, ((struct ixgbe_osdep *)(hw)->back)->os_memh, (0x00900 + ((index) * 4)));
  ivar &= ~(0xFF << (8 * (entry & 0x3)));
  ivar |= (vector << (8 * (entry & 0x3)));
  bus_space_write_4(((struct ixgbe_osdep *)(&sc->hw)->back)->os_memt, ((struct ixgbe_osdep *)(&sc->hw)->back)->os_memh, (0x00900 + ((index) * 4)), ivar);
  break;
 case ixgbe_mac_82599EB:
 case ixgbe_mac_X540:
 case ixgbe_mac_X550:
 case ixgbe_mac_X550EM_x:
  if (type == -1) {
   index = (entry & 1) * 8;
   ivar = bus_space_read_4(((struct ixgbe_osdep *)(hw)->back)->os_memt, ((struct ixgbe_osdep *)(hw)->back)->os_memh, 0x00A00);
   ivar &= ~(0xFF << index);
   ivar |= (vector << index);
   bus_space_write_4(((struct ixgbe_osdep *)(hw)->back)->os_memt, ((struct ixgbe_osdep *)(hw)->back)->os_memh, 0x00A00, ivar);
  } else {
   index = (16 * (entry & 1)) + (8 * type);
   ivar = bus_space_read_4(((struct ixgbe_osdep *)(hw)->back)->os_memt, ((struct ixgbe_osdep *)(hw)->back)->os_memh, (0x00900 + ((entry >> 1) * 4)));
   ivar &= ~(0xFF << index);
   ivar |= (vector << index);
   bus_space_write_4(((struct ixgbe_osdep *)(hw)->back)->os_memt, ((struct ixgbe_osdep *)(hw)->back)->os_memh, (0x00900 + ((entry >> 1) * 4)), ivar);
  }
 default:
  break;
 }
}
void
ixgbe_configure_ivars(struct ix_softc *sc)
{
}
void
ixgbe_handle_mod(struct ix_softc *sc)
{
 struct ixgbe_hw *hw = &sc->hw;
 uint32_t err;
 err = hw->phy.ops.identify_sfp(hw);
 if (err == -19) {
  printf("%s: Unsupported SFP+ module type was detected!\n",
      sc->dev.dv_xname);
  return;
 }
 err = hw->mac.ops.setup_sfp(hw);
 if (err == -19) {
  printf("%s: Setup failure - unsupported SFP+ module type!\n",
      sc->dev.dv_xname);
  return;
 }
 ixgbe_setup_optics(sc);
 ixgbe_handle_msf(sc);
}
void
ixgbe_handle_msf(struct ix_softc *sc)
{
 struct ixgbe_hw *hw = &sc->hw;
 uint32_t autoneg;
 _Bool negotiate;
 autoneg = hw->phy.autoneg_advertised;
 if ((!autoneg) && (hw->mac.ops.get_link_capabilities)) {
  if (hw->mac.ops.get_link_capabilities(hw, &autoneg, &negotiate))
   return;
 }
 if (hw->mac.ops.setup_link)
  hw->mac.ops.setup_link(hw, autoneg, 1);
 ifmedia_delete_instance(&sc->media, ((uint64_t) -1));
 ixgbe_add_media_types(sc);
 ifmedia_set(&sc->media, 0x0000000000000100ULL | 0ULL);
}
void
ixgbe_handle_phy(struct ix_softc *sc)
{
 struct ixgbe_hw *hw = &sc->hw;
 int error;
 error = hw->phy.ops.handle_lasi(hw);
 if (error == -26)
  printf("%s: CRITICAL: EXTERNAL PHY OVER TEMP!! "
      " PHY will downshift to lower power state!\n",
      sc->dev.dv_xname);
 else if (error)
  printf("%s: Error handling LASI interrupt: %d\n",
      sc->dev.dv_xname, error);
}
void
ixgbe_update_stats_counters(struct ix_softc *sc)
{
 struct ifnet *ifp = &sc->arpcom.ac_if;
 struct ixgbe_hw *hw = &sc->hw;
 uint64_t total_missed_rx = 0;
 sc->stats.crcerrs += bus_space_read_4(((struct ixgbe_osdep *)(hw)->back)->os_memt, ((struct ixgbe_osdep *)(hw)->back)->os_memh, 0x04000);
 sc->stats.rlec += bus_space_read_4(((struct ixgbe_osdep *)(hw)->back)->os_memt, ((struct ixgbe_osdep *)(hw)->back)->os_memh, 0x04040);
 ifp->if_data.ifi_collisions = 0;
 ifp->if_data.ifi_oerrors = sc->watchdog_events;
 ifp->if_data.ifi_ierrors = total_missed_rx + sc->stats.crcerrs + sc->stats.rlec;
}
