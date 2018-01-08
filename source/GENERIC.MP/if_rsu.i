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
struct sockaddr_dl {
 u_char sdl_len;
 u_char sdl_family;
 u_int16_t sdl_index;
 u_char sdl_type;
 u_char sdl_nlen;
 u_char sdl_alen;
 u_char sdl_slen;
 char sdl_data[24];
};
static inline struct sockaddr_dl *
satosdl(struct sockaddr *sa)
{
 return ((struct sockaddr_dl *)(sa));
}
static inline struct sockaddr *
sdltosa(struct sockaddr_dl *sdl)
{
 return ((struct sockaddr *)(sdl));
}
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
struct ieee80211_frame {
 u_int8_t i_fc[2];
 u_int8_t i_dur[2];
 u_int8_t i_addr1[6];
 u_int8_t i_addr2[6];
 u_int8_t i_addr3[6];
 u_int8_t i_seq[2];
} __attribute__((__packed__));
struct ieee80211_qosframe {
 u_int8_t i_fc[2];
 u_int8_t i_dur[2];
 u_int8_t i_addr1[6];
 u_int8_t i_addr2[6];
 u_int8_t i_addr3[6];
 u_int8_t i_seq[2];
 u_int8_t i_qos[2];
} __attribute__((__packed__));
struct ieee80211_htframe {
 u_int8_t i_fc[2];
 u_int8_t i_dur[2];
 u_int8_t i_addr1[6];
 u_int8_t i_addr2[6];
 u_int8_t i_addr3[6];
 u_int8_t i_seq[2];
 u_int8_t i_qos[2];
 u_int8_t i_ht[4];
} __attribute__((__packed__));
struct ieee80211_frame_addr4 {
 u_int8_t i_fc[2];
 u_int8_t i_dur[2];
 u_int8_t i_addr1[6];
 u_int8_t i_addr2[6];
 u_int8_t i_addr3[6];
 u_int8_t i_seq[2];
 u_int8_t i_addr4[6];
} __attribute__((__packed__));
struct ieee80211_qosframe_addr4 {
 u_int8_t i_fc[2];
 u_int8_t i_dur[2];
 u_int8_t i_addr1[6];
 u_int8_t i_addr2[6];
 u_int8_t i_addr3[6];
 u_int8_t i_seq[2];
 u_int8_t i_addr4[6];
 u_int8_t i_qos[2];
} __attribute__((__packed__));
struct ieee80211_htframe_addr4 {
 u_int8_t i_fc[2];
 u_int8_t i_dur[2];
 u_int8_t i_addr1[6];
 u_int8_t i_addr2[6];
 u_int8_t i_addr3[6];
 u_int8_t i_seq[2];
 u_int8_t i_addr4[6];
 u_int8_t i_qos[2];
 u_int8_t i_ht[4];
} __attribute__((__packed__));
struct ieee80211_frame_min {
 u_int8_t i_fc[2];
 u_int8_t i_dur[2];
 u_int8_t i_addr1[6];
 u_int8_t i_addr2[6];
} __attribute__((__packed__));
struct ieee80211_frame_rts {
 u_int8_t i_fc[2];
 u_int8_t i_dur[2];
 u_int8_t i_ra[6];
 u_int8_t i_ta[6];
} __attribute__((__packed__));
struct ieee80211_frame_cts {
 u_int8_t i_fc[2];
 u_int8_t i_dur[2];
 u_int8_t i_ra[6];
} __attribute__((__packed__));
struct ieee80211_frame_ack {
 u_int8_t i_fc[2];
 u_int8_t i_dur[2];
 u_int8_t i_ra[6];
} __attribute__((__packed__));
struct ieee80211_frame_pspoll {
 u_int8_t i_fc[2];
 u_int8_t i_aid[2];
 u_int8_t i_bssid[6];
 u_int8_t i_ta[6];
} __attribute__((__packed__));
struct ieee80211_frame_cfend {
 u_int8_t i_fc[2];
 u_int8_t i_dur[2];
 u_int8_t i_ra[6];
 u_int8_t i_bssid[6];
} __attribute__((__packed__));
static __inline int
ieee80211_has_seq(const struct ieee80211_frame *wh)
{
 return (wh->i_fc[0] & 0x0c) !=
     0x04;
}
static __inline int
ieee80211_has_addr4(const struct ieee80211_frame *wh)
{
 return (wh->i_fc[1] & 0x03) ==
     0x03;
}
static __inline int
ieee80211_has_qos(const struct ieee80211_frame *wh)
{
 return (wh->i_fc[0] &
     (0x0c | 0x80)) ==
     (0x08 | 0x80);
}
static __inline int
ieee80211_has_htc(const struct ieee80211_frame *wh)
{
 return (wh->i_fc[1] & 0x80) &&
     (ieee80211_has_qos(wh) ||
      (wh->i_fc[0] & 0x0c) ==
      0x00);
}
static __inline u_int16_t
ieee80211_get_qos(const struct ieee80211_frame *wh)
{
 const u_int8_t *frm;
 if (ieee80211_has_addr4(wh))
  frm = ((const struct ieee80211_qosframe_addr4 *)wh)->i_qos;
 else
  frm = ((const struct ieee80211_qosframe *)wh)->i_qos;
 return (__builtin_constant_p(*(const u_int16_t *)frm) ? (__uint16_t)(((__uint16_t)(*(const u_int16_t *)frm) & 0xffU) << 8 | ((__uint16_t)(*(const u_int16_t *)frm) & 0xff00U) >> 8) : __swap16md(*(const u_int16_t *)frm));
}
enum {
 IEEE80211_ELEMID_SSID = 0,
 IEEE80211_ELEMID_RATES = 1,
 IEEE80211_ELEMID_FHPARMS = 2,
 IEEE80211_ELEMID_DSPARMS = 3,
 IEEE80211_ELEMID_CFPARMS = 4,
 IEEE80211_ELEMID_TIM = 5,
 IEEE80211_ELEMID_IBSSPARMS = 6,
 IEEE80211_ELEMID_COUNTRY = 7,
 IEEE80211_ELEMID_HOPPING_PARMS = 8,
 IEEE80211_ELEMID_HOPPING_PATTERN = 9,
 IEEE80211_ELEMID_REQUEST = 10,
 IEEE80211_ELEMID_QBSS_LOAD = 11,
 IEEE80211_ELEMID_EDCAPARMS = 12,
 IEEE80211_ELEMID_TSPEC = 13,
 IEEE80211_ELEMID_TCLASS = 14,
 IEEE80211_ELEMID_SCHEDULE = 15,
 IEEE80211_ELEMID_CHALLENGE = 16,
 IEEE80211_ELEMID_POWER_CONSTRAINT = 32,
 IEEE80211_ELEMID_POWER_CAP = 33,
 IEEE80211_ELEMID_TPC_REQUEST = 34,
 IEEE80211_ELEMID_TPC_REPORT = 35,
 IEEE80211_ELEMID_SUPP_CHNLS = 35,
 IEEE80211_ELEMID_CSA = 37,
 IEEE80211_ELEMID_MEASUREMENT_REQUEST = 38,
 IEEE80211_ELEMID_MEASUREMENT_REPORT = 39,
 IEEE80211_ELEMID_QUIET = 40,
 IEEE80211_ELEMID_IBSS_DFS = 41,
 IEEE80211_ELEMID_ERP = 42,
 IEEE80211_ELEMID_TS_DELAY = 43,
 IEEE80211_ELEMID_TCLAS = 44,
 IEEE80211_ELEMID_HTCAPS = 45,
 IEEE80211_ELEMID_QOS_CAP = 46,
 IEEE80211_ELEMID_RSN = 48,
 IEEE80211_ELEMID_XRATES = 50,
 IEEE80211_ELEMID_AP_CHNL_REPORT = 51,
 IEEE80211_ELEMID_NBR_REPORT = 52,
 IEEE80211_ELEMID_RCPI = 53,
 IEEE80211_ELEMID_MDE = 54,
 IEEE80211_ELEMID_FTE = 55,
 IEEE80211_ELEMID_TIE = 56,
 IEEE80211_ELEMID_RDE = 57,
 IEEE80211_ELEMID_DSE = 58,
 IEEE80211_ELEMID_SUPP_OPCLASS = 59,
 IEEE80211_ELEMID_XCSA = 60,
 IEEE80211_ELEMID_HTOP = 61,
 IEEE80211_ELEMID_SECONDARY_CHANL_OFFSET = 62,
 IEEE80211_ELEMID_AVG_ACCESS_DELAY = 63,
 IEEE80211_ELEMID_ANTENNA = 64,
 IEEE80211_ELEMID_RSNI = 65,
 IEEE80211_ELEMID_MEASUREMENT_PILOT_TX = 66,
 IEEE80211_ELEMID_AVAIL_CAPACITY = 67,
 IEEE80211_ELEMID_AC_ACCESS_DELAY = 68,
 IEEE80211_ELEMID_TIME_ADVERT = 69,
 IEEE80211_ELEMID_RM = 70,
 IEEE80211_ELEMID_MULTI_BSSID = 71,
 IEEE80211_ELEMID_20_40_CBW_COEX = 72,
 IEEE80211_ELEMID_20_40_CBW_INTOLERANT = 73,
 IEEE80211_ELEMID_SCAN_PARAM_OVERLAP = 74,
 IEEE80211_ELEMID_RIC = 75,
 IEEE80211_ELEMID_MMIE = 76,
 IEEE80211_ELEMID_EVENT_REQUEST = 78,
 IEEE80211_ELEMID_EVENT_REPORT = 79,
 IEEE80211_ELEMID_DIAG_REQUEST = 80,
 IEEE80211_ELEMID_DIAG_REPORT = 81,
 IEEE80211_ELEMID_LOCATION_PARMS = 82,
 IEEE80211_ELEMID_NONTX_BSSID = 83,
 IEEE80211_ELEMID_SSID_LIST = 84,
 IEEE80211_ELEMID_MULTI_BSSID_IDX = 85,
 IEEE80211_ELEMID_FMS_DESC = 86,
 IEEE80211_ELEMID_FMS_REQUEST = 87,
 IEEE80211_ELEMID_FMS_RESPONSE = 88,
 IEEE80211_ELEMID_QOS_TRAFFIC_CAP = 89,
 IEEE80211_ELEMID_MAX_IDLE_PERIOD = 90,
 IEEE80211_ELEMID_TFS_REQUEST = 91,
 IEEE80211_ELEMID_TFS_RESPONSE = 92,
 IEEE80211_ELEMID_WNM_SLEEP = 93,
 IEEE80211_ELEMID_TIM_BCAST_REQUEST = 94,
 IEEE80211_ELEMID_TIM_BCAST_RESPONSE = 95,
 IEEE80211_ELEMID_INTERFERENCE_REPORT = 96,
 IEEE80211_ELEMID_CHNL_USAGE = 97,
 IEEE80211_ELEMID_TIME_ZONE = 98,
 IEEE80211_ELEMID_DMS_REQUEST = 99,
 IEEE80211_ELEMID_DMS_RESPONSE = 100,
 IEEE80211_ELEMID_LINK_ID = 101,
 IEEE80211_ELEMID_WAKE_SCHED = 102,
 IEEE80211_ELEMID_CHNL_SWITCH_TIMING = 104,
 IEEE80211_ELEMID_PTI_CTRL = 105,
 IEEE80211_ELEMID_TPU_BUF_STATUS = 106,
 IEEE80211_ELEMID_INTERWORKING = 107,
 IEEE80211_ELEMID_ADVERT_PROTOCOL = 108,
 IEEE80211_ELEMID_EXPEDITED_BW_REQUEST = 109,
 IEEE80211_ELEMID_QOS_MAP_SET = 110,
 IEEE80211_ELEMID_ROAMING_CONSORTIUM = 111,
 IEEE80211_ELEMID_EMERGENCY_ALERT_ID = 112,
 IEEE80211_ELEMID_MESHCONF = 113,
 IEEE80211_ELEMID_MESHID = 114,
 IEEE80211_ELEMID_MESHLINK = 115,
 IEEE80211_ELEMID_MESHCNGST = 116,
 IEEE80211_ELEMID_MESHPEER = 117,
 IEEE80211_ELEMID_MESHCSA = 118,
 IEEE80211_ELEMID_MESHAWAKEW = 119,
 IEEE80211_ELEMID_MESHBEACONT = 120,
 IEEE80211_ELEMID_MCCAOP_SETUP_REQUEST = 121,
 IEEE80211_ELEMID_MCCAOP_SETUP_REPLY = 122,
 IEEE80211_ELEMID_MCCAOP_ADVERT = 123,
 IEEE80211_ELEMID_MCCAOP_TEARDOWN = 124,
 IEEE80211_ELEMID_MESHGANN = 125,
 IEEE80211_ELEMID_MESHRANN = 126,
 IEEE80211_ELEMID_XCAPS = 127,
 IEEE80211_ELEMID_MESHPREQ = 130,
 IEEE80211_ELEMID_MESHPREP = 131,
 IEEE80211_ELEMID_MESHPERR = 132,
 IEEE80211_ELEMID_MESHPXU = 137,
 IEEE80211_ELEMID_MESHPXUC = 138,
 IEEE80211_ELEMID_AUTH_MESH_PEERING_XCHG = 139,
 IEEE80211_ELEMID_MIC = 140,
 IEEE80211_ELEMID_DEST_URI = 141,
 IEEE80211_ELEMID_U_APSD_COEX = 142,
 IEEE80211_ELEMID_MCCAOP_ADVERT_OVIEW = 174,
 IEEE80211_ELEMID_VENDOR = 221
};
enum {
 IEEE80211_CATEG_SPECTRUM = 0,
 IEEE80211_CATEG_QOS = 1,
 IEEE80211_CATEG_DLS = 2,
 IEEE80211_CATEG_BA = 3,
 IEEE80211_CATEG_PUB = 4,
 IEEE80211_CATEG_RADIO_MSRMNT = 5,
 IEEE80211_CATEG_FAST_BSS_TRANS = 6,
 IEEE80211_CATEG_HT = 7,
 IEEE80211_CATEG_SA_QUERY = 8,
 IEEE80211_CATEG_PROT_DUAL_PUBLIC_ACTION = 9,
 IEEE80211_CATEG_WNM = 10,
 IEEE80211_CATEG_UNPROT_WNM = 11,
 IEEE80211_CATEG_TDLS = 12,
 IEEE80211_CATEG_MESH = 13,
 IEEE80211_CATEG_MULTIHOP = 14,
 IEEE80211_CATEG_SELF_PROT = 15,
 IEEE80211_CATEG_PROT_VENDOR = 126,
 IEEE80211_CATEG_VENDOR = 127
};
enum ieee80211_edca_ac {
 EDCA_AC_BK = 1,
 EDCA_AC_BE = 0,
 EDCA_AC_VI = 2,
 EDCA_AC_VO = 3
};
enum {
 IEEE80211_AUTH_OPEN_REQUEST = 1,
 IEEE80211_AUTH_OPEN_RESPONSE = 2
};
enum {
 IEEE80211_AUTH_SHARED_REQUEST = 1,
 IEEE80211_AUTH_SHARED_CHALLENGE = 2,
 IEEE80211_AUTH_SHARED_RESPONSE = 3,
 IEEE80211_AUTH_SHARED_PASS = 4
};
enum {
 IEEE80211_REASON_UNSPECIFIED = 1,
 IEEE80211_REASON_AUTH_EXPIRE = 2,
 IEEE80211_REASON_AUTH_LEAVE = 3,
 IEEE80211_REASON_ASSOC_EXPIRE = 4,
 IEEE80211_REASON_ASSOC_TOOMANY = 5,
 IEEE80211_REASON_NOT_AUTHED = 6,
 IEEE80211_REASON_NOT_ASSOCED = 7,
 IEEE80211_REASON_ASSOC_LEAVE = 8,
 IEEE80211_REASON_ASSOC_NOT_AUTHED = 9,
 IEEE80211_REASON_RSN_REQUIRED = 11,
 IEEE80211_REASON_RSN_INCONSISTENT = 12,
 IEEE80211_REASON_IE_INVALID = 13,
 IEEE80211_REASON_MIC_FAILURE = 14,
 IEEE80211_REASON_4WAY_TIMEOUT = 15,
 IEEE80211_REASON_GROUP_TIMEOUT = 16,
 IEEE80211_REASON_RSN_DIFFERENT_IE = 17,
 IEEE80211_REASON_BAD_GROUP_CIPHER = 18,
 IEEE80211_REASON_BAD_PAIRWISE_CIPHER = 19,
 IEEE80211_REASON_BAD_AKMP = 20,
 IEEE80211_REASON_RSN_IE_VER_UNSUP = 21,
 IEEE80211_REASON_RSN_IE_BAD_CAP = 22,
 IEEE80211_REASON_CIPHER_REJ_POLICY = 24,
 IEEE80211_REASON_SETUP_REQUIRED = 38,
 IEEE80211_REASON_TIMEOUT = 39
};
enum {
 IEEE80211_STATUS_SUCCESS = 0,
 IEEE80211_STATUS_UNSPECIFIED = 1,
 IEEE80211_STATUS_CAPINFO = 10,
 IEEE80211_STATUS_NOT_ASSOCED = 11,
 IEEE80211_STATUS_OTHER = 12,
 IEEE80211_STATUS_ALG = 13,
 IEEE80211_STATUS_SEQUENCE = 14,
 IEEE80211_STATUS_CHALLENGE = 15,
 IEEE80211_STATUS_TIMEOUT = 16,
 IEEE80211_STATUS_TOOMANY = 17,
 IEEE80211_STATUS_BASIC_RATE = 18,
 IEEE80211_STATUS_SP_REQUIRED = 19,
 IEEE80211_STATUS_PBCC_REQUIRED = 20,
 IEEE80211_STATUS_CA_REQUIRED = 21,
 IEEE80211_STATUS_TOO_MANY_STATIONS = 22,
 IEEE80211_STATUS_RATES = 23,
 IEEE80211_STATUS_SHORTSLOT_REQUIRED = 25,
 IEEE80211_STATUS_DSSSOFDM_REQUIRED = 26,
 IEEE80211_STATUS_TRY_AGAIN_LATER = 30,
 IEEE80211_STATUS_MFP_POLICY = 31,
 IEEE80211_STATUS_REFUSED = 37,
 IEEE80211_STATUS_INVALID_PARAM = 38,
 IEEE80211_STATUS_IE_INVALID = 40,
 IEEE80211_STATUS_BAD_GROUP_CIPHER = 41,
 IEEE80211_STATUS_BAD_PAIRWISE_CIPHER = 42,
 IEEE80211_STATUS_BAD_AKMP = 43,
 IEEE80211_STATUS_RSN_IE_VER_UNSUP = 44,
 IEEE80211_STATUS_CIPHER_REJ_POLICY = 46
};
struct ieee80211_eapol_key {
 u_int8_t version;
 u_int8_t type;
 u_int8_t len[2];
 u_int8_t desc;
 u_int8_t info[2];
 u_int8_t keylen[2];
 u_int8_t replaycnt[8];
 u_int8_t nonce[32];
 u_int8_t iv[16];
 u_int8_t rsc[8];
 u_int8_t reserved[8];
 u_int8_t mic[16];
 u_int8_t paylen[2];
} __attribute__((__packed__));
struct ieee80211_ptk {
 u_int8_t kck[16];
 u_int8_t kek[16];
 u_int8_t tk[32];
} __attribute__((__packed__));
enum {
 IEEE80211_KDE_GTK = 1,
 IEEE80211_KDE_MACADDR = 3,
 IEEE80211_KDE_PMKID = 4,
 IEEE80211_KDE_SMK = 5,
 IEEE80211_KDE_NONCE = 6,
 IEEE80211_KDE_LIFETIME = 7,
 IEEE80211_KDE_ERROR = 8,
 IEEE80211_KDE_IGTK = 9
};
enum ieee80211_htprot {
 IEEE80211_HTPROT_NONE = 0,
 IEEE80211_HTPROT_NONMEMBER,
 IEEE80211_HTPROT_20MHZ,
 IEEE80211_HTPROT_NONHT_MIXED
};
enum ieee80211_cipher {
 IEEE80211_CIPHER_NONE = 0x00000000,
 IEEE80211_CIPHER_USEGROUP = 0x00000001,
 IEEE80211_CIPHER_WEP40 = 0x00000002,
 IEEE80211_CIPHER_TKIP = 0x00000004,
 IEEE80211_CIPHER_CCMP = 0x00000008,
 IEEE80211_CIPHER_WEP104 = 0x00000010,
 IEEE80211_CIPHER_BIP = 0x00000020
};
enum ieee80211_akm {
 IEEE80211_AKM_NONE = 0x00000000,
 IEEE80211_AKM_8021X = 0x00000001,
 IEEE80211_AKM_PSK = 0x00000002,
 IEEE80211_AKM_SHA256_8021X = 0x00000004,
 IEEE80211_AKM_SHA256_PSK = 0x00000008
};
static __inline int
ieee80211_is_8021x_akm(enum ieee80211_akm akm)
{
 return akm == IEEE80211_AKM_8021X ||
     akm == IEEE80211_AKM_SHA256_8021X;
}
static __inline int
ieee80211_is_sha256_akm(enum ieee80211_akm akm)
{
 return akm == IEEE80211_AKM_SHA256_8021X ||
     akm == IEEE80211_AKM_SHA256_PSK;
}
struct ieee80211_key {
 u_int8_t k_id;
 enum ieee80211_cipher k_cipher;
 u_int k_flags;
 u_int k_len;
 u_int64_t k_rsc[16];
 u_int64_t k_mgmt_rsc;
 u_int64_t k_tsc;
 u_int8_t k_key[32];
 void *k_priv;
};
struct ieee80211_pmk {
 enum ieee80211_akm pmk_akm;
 u_int32_t pmk_lifetime;
 u_int8_t pmk_pmkid[16];
 u_int8_t pmk_macaddr[6];
 u_int8_t pmk_key[32];
 struct { struct ieee80211_pmk *tqe_next; struct ieee80211_pmk **tqe_prev; } pmk_next;
};
struct ieee80211com;
struct ieee80211_node;
void ieee80211_crypto_attach(struct ifnet *);
void ieee80211_crypto_detach(struct ifnet *);
void ieee80211_crypto_clear_groupkeys(struct ieee80211com *);
struct ieee80211_key *ieee80211_get_txkey(struct ieee80211com *,
     const struct ieee80211_frame *, struct ieee80211_node *);
struct ieee80211_key *ieee80211_get_rxkey(struct ieee80211com *,
     struct mbuf *, struct ieee80211_node *);
struct mbuf *ieee80211_encrypt(struct ieee80211com *, struct mbuf *,
     struct ieee80211_key *);
struct mbuf *ieee80211_decrypt(struct ieee80211com *, struct mbuf *,
     struct ieee80211_node *);
int ieee80211_set_key(struct ieee80211com *, struct ieee80211_node *,
     struct ieee80211_key *);
void ieee80211_delete_key(struct ieee80211com *, struct ieee80211_node *,
     struct ieee80211_key *);
void ieee80211_eapol_key_mic(struct ieee80211_eapol_key *,
     const u_int8_t *);
int ieee80211_eapol_key_check_mic(struct ieee80211_eapol_key *,
     const u_int8_t *);
void ieee80211_eapol_key_encrypt(struct ieee80211com *,
     struct ieee80211_eapol_key *, const u_int8_t *);
int ieee80211_eapol_key_decrypt(struct ieee80211_eapol_key *,
     const u_int8_t *);
struct ieee80211_pmk *ieee80211_pmksa_add(struct ieee80211com *,
     enum ieee80211_akm, const u_int8_t *, const u_int8_t *, u_int32_t);
struct ieee80211_pmk *ieee80211_pmksa_find(struct ieee80211com *,
     struct ieee80211_node *, const u_int8_t *);
void ieee80211_derive_ptk(enum ieee80211_akm, const u_int8_t *,
     const u_int8_t *, const u_int8_t *, const u_int8_t *,
     const u_int8_t *, struct ieee80211_ptk *);
int ieee80211_cipher_keylen(enum ieee80211_cipher);
int ieee80211_wep_set_key(struct ieee80211com *, struct ieee80211_key *);
void ieee80211_wep_delete_key(struct ieee80211com *,
     struct ieee80211_key *);
struct mbuf *ieee80211_wep_encrypt(struct ieee80211com *, struct mbuf *,
     struct ieee80211_key *);
struct mbuf *ieee80211_wep_decrypt(struct ieee80211com *, struct mbuf *,
     struct ieee80211_key *);
int ieee80211_tkip_set_key(struct ieee80211com *, struct ieee80211_key *);
void ieee80211_tkip_delete_key(struct ieee80211com *,
     struct ieee80211_key *);
struct mbuf *ieee80211_tkip_encrypt(struct ieee80211com *,
     struct mbuf *, struct ieee80211_key *);
struct mbuf *ieee80211_tkip_decrypt(struct ieee80211com *,
     struct mbuf *, struct ieee80211_key *);
void ieee80211_tkip_mic(struct mbuf *, int, const u_int8_t *,
     u_int8_t[8]);
void ieee80211_michael_mic_failure(struct ieee80211com *, u_int64_t);
void ieee80211_michael_mic_failure_timeout(void *);
int ieee80211_ccmp_set_key(struct ieee80211com *, struct ieee80211_key *);
void ieee80211_ccmp_delete_key(struct ieee80211com *,
     struct ieee80211_key *);
struct mbuf *ieee80211_ccmp_encrypt(struct ieee80211com *, struct mbuf *,
     struct ieee80211_key *);
struct mbuf *ieee80211_ccmp_decrypt(struct ieee80211com *, struct mbuf *,
     struct ieee80211_key *);
int ieee80211_bip_set_key(struct ieee80211com *, struct ieee80211_key *);
void ieee80211_bip_delete_key(struct ieee80211com *,
     struct ieee80211_key *);
struct mbuf *ieee80211_bip_encap(struct ieee80211com *, struct mbuf *,
     struct ieee80211_key *);
struct mbuf *ieee80211_bip_decap(struct ieee80211com *, struct mbuf *,
     struct ieee80211_key *);
struct ieee80211_stats {
 u_int32_t is_rx_badversion;
 u_int32_t is_rx_tooshort;
 u_int32_t is_rx_wrongbss;
 u_int32_t is_rx_dup;
 u_int32_t is_rx_wrongdir;
 u_int32_t is_rx_mcastecho;
 u_int32_t is_rx_notassoc;
 u_int32_t is_rx_nowep;
 u_int32_t is_rx_unencrypted;
 u_int32_t is_rx_wepfail;
 u_int32_t is_rx_decap;
 u_int32_t is_rx_mgtdiscard;
 u_int32_t is_rx_ctl;
 u_int32_t is_rx_rstoobig;
 u_int32_t is_rx_elem_missing;
 u_int32_t is_rx_elem_toobig;
 u_int32_t is_rx_elem_toosmall;
 u_int32_t is_rx_badchan;
 u_int32_t is_rx_chanmismatch;
 u_int32_t is_rx_nodealloc;
 u_int32_t is_rx_ssidmismatch;
 u_int32_t is_rx_auth_unsupported;
 u_int32_t is_rx_auth_fail;
 u_int32_t is_rx_assoc_bss;
 u_int32_t is_rx_assoc_notauth;
 u_int32_t is_rx_assoc_capmismatch;
 u_int32_t is_rx_assoc_norate;
 u_int32_t is_rx_deauth;
 u_int32_t is_rx_disassoc;
 u_int32_t is_rx_badsubtype;
 u_int32_t is_rx_nombuf;
 u_int32_t is_rx_decryptcrc;
 u_int32_t is_rx_ahdemo_mgt;
 u_int32_t is_rx_bad_auth;
 u_int32_t is_tx_nombuf;
 u_int32_t is_tx_nonode;
 u_int32_t is_tx_unknownmgt;
 u_int32_t is_scan_active;
 u_int32_t is_scan_passive;
 u_int32_t is_node_timeout;
 u_int32_t is_crypto_nomem;
 u_int32_t is_rx_assoc_badrsnie;
 u_int32_t is_rx_unauth;
 u_int32_t is_tx_noauth;
 u_int32_t is_rx_eapol_key;
 u_int32_t is_rx_eapol_replay;
 u_int32_t is_rx_eapol_badmic;
 u_int32_t is_rx_remmicfail;
 u_int32_t is_rx_locmicfail;
 u_int32_t is_tkip_replays;
 u_int32_t is_tkip_icv_errs;
 u_int32_t is_ccmp_replays;
 u_int32_t is_ccmp_dec_errs;
 u_int32_t is_cmac_replays;
 u_int32_t is_cmac_icv_errs;
 u_int32_t is_pbac_errs;
 u_int32_t is_ht_nego_no_mandatory_mcs;
 u_int32_t is_ht_nego_no_basic_mcs;
 u_int32_t is_ht_nego_bad_crypto;
 u_int32_t is_ht_prot_change;
 u_int32_t is_ht_rx_ba_agreements;
 u_int32_t is_ht_tx_ba_agreements;
 u_int32_t is_ht_rx_frame_below_ba_winstart;
 u_int32_t is_ht_rx_frame_above_ba_winend;
 u_int32_t is_ht_rx_ba_window_slide;
 u_int32_t is_ht_rx_ba_window_jump;
 u_int32_t is_ht_rx_ba_no_buf;
 u_int32_t is_ht_rx_ba_frame_lost;
 u_int32_t is_ht_rx_ba_window_gap_timeout;
 u_int32_t is_ht_rx_ba_timeout;
 u_int32_t is_ht_tx_ba_timeout;
};
struct ieee80211_nwid {
 u_int8_t i_len;
 u_int8_t i_nwid[32];
};
struct ieee80211_nwkey {
 char i_name[16];
 int i_wepon;
 int i_defkid;
 struct {
  int i_keylen;
  u_int8_t *i_keydat;
 } i_key[4];
};
struct ieee80211_power {
 char i_name[16];
 int i_enabled;
 int i_maxsleep;
};
struct ieee80211chanreq {
 char i_name[16];
 u_int16_t i_channel;
};
struct ieee80211_chanreq_all {
 char i_name[16];
 struct ieee80211_channel *i_chans;
};
struct ieee80211_bssid {
 char i_name[16];
 u_int8_t i_bssid[6];
};
struct ieee80211_txpower {
 char i_name[16];
 int i_mode;
 int16_t i_val;
};
struct ieee80211_wpapsk {
 char i_name[16];
 int i_enabled;
 u_int8_t i_psk[32];
};
struct ieee80211_wpaparams {
 char i_name[16];
 int i_enabled;
 u_int i_protos;
 u_int i_akms;
 u_int i_ciphers;
 u_int i_groupcipher;
};
struct ieee80211_keyavail {
 char i_name[16];
 u_int8_t i_macaddr[6];
 u_int8_t i_key[32];
 u_int32_t i_lifetime;
};
struct ieee80211_keyrun {
 char i_name[16];
 u_int8_t i_macaddr[6];
};
struct ieee80211_nodereq {
 char nr_ifname[16];
 u_int8_t nr_macaddr[6];
 u_int8_t nr_bssid[6];
 u_int8_t nr_nwid_len;
 u_int8_t nr_nwid[32];
 u_int16_t nr_channel;
 u_int16_t nr_chan_flags;
 u_int8_t nr_nrates;
 u_int8_t nr_rates[15];
 int8_t nr_rssi;
 int8_t nr_max_rssi;
 u_int8_t nr_tstamp[8];
 u_int16_t nr_intval;
 u_int16_t nr_capinfo;
 u_int8_t nr_erp;
 u_int8_t nr_pwrsave;
 u_int16_t nr_associd;
 u_int16_t nr_txseq;
 u_int16_t nr_rxseq;
 u_int32_t nr_fails;
 u_int32_t nr_inact;
 u_int8_t nr_txrate;
 u_int16_t nr_state;
 u_int nr_rsnprotos;
 u_int nr_rsnciphers;
 u_int nr_rsnakms;
 u_int8_t nr_flags;
 uint16_t nr_htcaps;
 uint8_t nr_rxmcs[(((80) + ((8) - 1)) / (8))];
 uint16_t nr_max_rxrate;
 uint8_t nr_tx_mcs_set;
 uint8_t nr_txmcs;
};
struct ieee80211_nodereq_all {
 char na_ifname[16];
 int na_nodes;
 size_t na_size;
 struct ieee80211_nodereq *na_node;
 u_int8_t na_flags;
};
struct ieee80211_flags {
 const char *f_name;
 u_int f_flag;
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
struct ieee80211_rateset {
 u_int8_t rs_nrates;
 u_int8_t rs_rates[15];
};
extern const struct ieee80211_rateset ieee80211_std_rateset_11a;
extern const struct ieee80211_rateset ieee80211_std_rateset_11b;
extern const struct ieee80211_rateset ieee80211_std_rateset_11g;
enum ieee80211_node_state {
 IEEE80211_STA_CACHE,
 IEEE80211_STA_BSS,
 IEEE80211_STA_AUTH,
 IEEE80211_STA_ASSOC,
 IEEE80211_STA_COLLECT
};
enum ieee80211_node_psstate {
 IEEE80211_PS_AWAKE,
 IEEE80211_PS_DOZE
};
enum {
 RSNA_INITIALIZE,
 RSNA_AUTHENTICATION,
 RSNA_AUTHENTICATION_2,
 RSNA_INITPMK,
 RSNA_INITPSK,
 RSNA_PTKSTART,
 RSNA_PTKCALCNEGOTIATING,
 RSNA_PTKCALCNEGOTIATING_2,
 RSNA_PTKINITNEGOTIATING,
 RSNA_PTKINITDONE,
 RSNA_DISCONNECT,
 RSNA_DISCONNECTED
};
enum {
 RSNA_IDLE,
 RSNA_REKEYNEGOTIATING,
 RSNA_REKEYESTABLISHED,
 RSNA_KEYERROR
};
enum {
 RSNA_SUPP_INITIALIZE,
 RSNA_SUPP_PTKSTART,
 RSNA_SUPP_PTKNEGOTIATING,
 RNSA_SUPP_PTKDONE
};
struct ieee80211_rxinfo {
 u_int32_t rxi_flags;
 u_int32_t rxi_tstamp;
 int rxi_rssi;
};
struct ieee80211_tx_ba {
 struct ieee80211_node *ba_ni;
 struct timeout ba_to;
 int ba_timeout_val;
 int ba_state;
 u_int16_t ba_params;
 u_int16_t ba_winstart;
 u_int16_t ba_winend;
 u_int16_t ba_winsize;
 u_int8_t ba_token;
};
struct ieee80211_rx_ba {
 struct ieee80211_node *ba_ni;
 struct {
  struct mbuf *m;
  struct ieee80211_rxinfo rxi;
 } *ba_buf;
 struct timeout ba_to;
 int ba_timeout_val;
 int ba_state;
 u_int16_t ba_params;
 u_int16_t ba_winstart;
 u_int16_t ba_winend;
 u_int16_t ba_winsize;
 u_int16_t ba_head;
 struct timeout ba_gap_to;
 int ba_winmiss;
 uint16_t ba_missedsn;
 uint8_t ba_token;
};
struct ieee80211_node {
 struct rb_entry ni_node;
 struct ieee80211com *ni_ic;
 u_int ni_refcnt;
 u_int ni_scangen;
 u_int32_t ni_rstamp;
 u_int8_t ni_rssi;
 u_int8_t ni_macaddr[6];
 u_int8_t ni_bssid[6];
 u_int8_t ni_tstamp[8];
 u_int16_t ni_intval;
 u_int16_t ni_capinfo;
 u_int8_t ni_esslen;
 u_int8_t ni_essid[32];
 struct ieee80211_rateset ni_rates;
 u_int8_t *ni_country;
 struct ieee80211_channel *ni_chan;
 u_int8_t ni_erp;
 u_int8_t ni_dtimcount;
 u_int8_t ni_dtimperiod;
 u_int8_t ni_pwrsave;
 struct mbuf_queue ni_savedq;
 struct timeout ni_eapol_to;
 u_int ni_rsn_state;
 u_int ni_rsn_supp_state;
 u_int ni_rsn_gstate;
 u_int ni_rsn_retries;
 u_int ni_supported_rsnprotos;
 u_int ni_rsnprotos;
 u_int ni_supported_rsnakms;
 u_int ni_rsnakms;
 u_int ni_rsnciphers;
 enum ieee80211_cipher ni_rsngroupcipher;
 enum ieee80211_cipher ni_rsngroupmgmtcipher;
 u_int16_t ni_rsncaps;
 enum ieee80211_cipher ni_rsncipher;
 u_int8_t ni_nonce[32];
 u_int8_t ni_pmk[32];
 u_int8_t ni_pmkid[16];
 u_int64_t ni_replaycnt;
 u_int8_t ni_replaycnt_ok;
 u_int64_t ni_reqreplaycnt;
 u_int8_t ni_reqreplaycnt_ok;
 u_int8_t *ni_rsnie;
 struct ieee80211_key ni_pairwise_key;
 struct ieee80211_ptk ni_ptk;
 u_int8_t ni_key_count;
 int ni_port_valid;
 u_int16_t ni_sa_query_trid;
 struct timeout ni_sa_query_to;
 int ni_sa_query_count;
 uint16_t ni_htcaps;
 uint8_t ni_ampdu_param;
 uint8_t ni_rxmcs[(((80) + ((8) - 1)) / (8))];
 uint16_t ni_max_rxrate;
 uint8_t ni_tx_mcs_set;
 uint16_t ni_htxcaps;
 uint32_t ni_txbfcaps;
 uint8_t ni_aselcaps;
 uint8_t ni_primary_chan;
 uint8_t ni_htop0;
 uint16_t ni_htop1;
 uint16_t ni_htop2;
 uint8_t ni_basic_mcs[(((128) + ((8) - 1)) / (8))];
 struct ieee80211_tx_ba ni_tx_ba[16];
 struct ieee80211_rx_ba ni_rx_ba[16];
 int ni_txmcs;
 u_int16_t ni_associd;
 u_int16_t ni_txseq;
 u_int16_t ni_rxseq;
 u_int16_t ni_qos_txseqs[16];
 u_int16_t ni_qos_rxseqs[16];
 int ni_fails;
 int ni_inact;
 int ni_txrate;
 int ni_state;
 u_int16_t ni_flags;
 void (*ni_unref_cb)(struct ieee80211com *,
     struct ieee80211_node *);
 void * ni_unref_arg;
 size_t ni_unref_arg_size;
};
struct ieee80211_tree { struct rb_tree rbh_root; };
static __inline void
ieee80211_node_incref(struct ieee80211_node *ni)
{
 int s;
 s = _splraise(6);
 ni->ni_refcnt++;
 _splx(s);
}
static __inline u_int
ieee80211_node_decref(struct ieee80211_node *ni)
{
 u_int refcnt;
 int s;
 s = _splraise(6);
 refcnt = --ni->ni_refcnt;
 _splx(s);
 return refcnt;
}
static __inline struct ieee80211_node *
ieee80211_ref_node(struct ieee80211_node *ni)
{
 ieee80211_node_incref(ni);
 return ni;
}
static __inline void
ieee80211_unref_node(struct ieee80211_node **ni)
{
 ieee80211_node_decref(*ni);
 *ni = ((void *)0);
}
struct ieee80211com;
extern void ieee80211_node_attach(struct ifnet *);
extern void ieee80211_node_lateattach(struct ifnet *);
extern void ieee80211_node_detach(struct ifnet *);
extern void ieee80211_begin_scan(struct ifnet *);
extern void ieee80211_next_scan(struct ifnet *);
extern void ieee80211_end_scan(struct ifnet *);
extern void ieee80211_reset_scan(struct ifnet *);
extern struct ieee80211_node *ieee80211_alloc_node(struct ieee80211com *,
  const u_int8_t *);
extern struct ieee80211_node *ieee80211_dup_bss(struct ieee80211com *,
  const u_int8_t *);
extern struct ieee80211_node *ieee80211_find_node(struct ieee80211com *,
  const u_int8_t *);
extern struct ieee80211_node *ieee80211_find_rxnode(struct ieee80211com *,
  const struct ieee80211_frame *);
extern struct ieee80211_node *ieee80211_find_txnode(struct ieee80211com *,
  const u_int8_t *);
extern struct ieee80211_node *
  ieee80211_find_node_for_beacon(struct ieee80211com *,
  const u_int8_t *, const struct ieee80211_channel *,
  const char *, u_int8_t);
extern void ieee80211_release_node(struct ieee80211com *,
  struct ieee80211_node *);
extern void ieee80211_free_allnodes(struct ieee80211com *);
typedef void ieee80211_iter_func(void *, struct ieee80211_node *);
extern void ieee80211_iterate_nodes(struct ieee80211com *ic,
  ieee80211_iter_func *, void *);
extern void ieee80211_clean_cached(struct ieee80211com *ic);
extern void ieee80211_clean_nodes(struct ieee80211com *, int);
void ieee80211_setup_htcaps(struct ieee80211_node *, const uint8_t *,
    uint8_t);
void ieee80211_clear_htcaps(struct ieee80211_node *);
int ieee80211_setup_htop(struct ieee80211_node *, const uint8_t *,
    uint8_t);
extern int ieee80211_setup_rates(struct ieee80211com *,
     struct ieee80211_node *, const u_int8_t *, const u_int8_t *, int);
extern int ieee80211_iserp_sta(const struct ieee80211_node *);
extern void ieee80211_count_longslotsta(void *, struct ieee80211_node *);
extern void ieee80211_count_nonerpsta(void *, struct ieee80211_node *);
extern void ieee80211_count_pssta(void *, struct ieee80211_node *);
extern void ieee80211_count_rekeysta(void *, struct ieee80211_node *);
extern void ieee80211_node_join(struct ieee80211com *,
  struct ieee80211_node *, int);
extern void ieee80211_node_leave(struct ieee80211com *,
  struct ieee80211_node *);
extern int ieee80211_match_bss(struct ieee80211com *,
  struct ieee80211_node *);
extern void ieee80211_create_ibss(struct ieee80211com* ,
  struct ieee80211_channel *);
extern void ieee80211_notify_dtim(struct ieee80211com *);
extern void ieee80211_set_tim(struct ieee80211com *, int, int);
extern int ieee80211_node_cmp(const struct ieee80211_node *,
  const struct ieee80211_node *);
extern const struct rb_type *const ieee80211_tree_RBT_TYPE; __attribute__((__unused__)) static inline void ieee80211_tree_RBT_INIT(struct ieee80211_tree *head) { _rb_init(&head->rbh_root); } __attribute__((__unused__)) static inline struct ieee80211_node * ieee80211_tree_RBT_INSERT(struct ieee80211_tree *head, struct ieee80211_node *elm) { return _rb_insert(ieee80211_tree_RBT_TYPE, &head->rbh_root, elm); } __attribute__((__unused__)) static inline struct ieee80211_node * ieee80211_tree_RBT_REMOVE(struct ieee80211_tree *head, struct ieee80211_node *elm) { return _rb_remove(ieee80211_tree_RBT_TYPE, &head->rbh_root, elm); } __attribute__((__unused__)) static inline struct ieee80211_node * ieee80211_tree_RBT_FIND(struct ieee80211_tree *head, const struct ieee80211_node *key) { return _rb_find(ieee80211_tree_RBT_TYPE, &head->rbh_root, key); } __attribute__((__unused__)) static inline struct ieee80211_node * ieee80211_tree_RBT_NFIND(struct ieee80211_tree *head, const struct ieee80211_node *key) { return _rb_nfind(ieee80211_tree_RBT_TYPE, &head->rbh_root, key); } __attribute__((__unused__)) static inline struct ieee80211_node * ieee80211_tree_RBT_ROOT(struct ieee80211_tree *head) { return _rb_root(ieee80211_tree_RBT_TYPE, &head->rbh_root); } __attribute__((__unused__)) static inline int ieee80211_tree_RBT_EMPTY(struct ieee80211_tree *head) { return _rb_empty(&head->rbh_root); } __attribute__((__unused__)) static inline struct ieee80211_node * ieee80211_tree_RBT_MIN(struct ieee80211_tree *head) { return _rb_min(ieee80211_tree_RBT_TYPE, &head->rbh_root); } __attribute__((__unused__)) static inline struct ieee80211_node * ieee80211_tree_RBT_MAX(struct ieee80211_tree *head) { return _rb_max(ieee80211_tree_RBT_TYPE, &head->rbh_root); } __attribute__((__unused__)) static inline struct ieee80211_node * ieee80211_tree_RBT_NEXT(struct ieee80211_node *elm) { return _rb_next(ieee80211_tree_RBT_TYPE, elm); } __attribute__((__unused__)) static inline struct ieee80211_node * ieee80211_tree_RBT_PREV(struct ieee80211_node *elm) { return _rb_prev(ieee80211_tree_RBT_TYPE, elm); } __attribute__((__unused__)) static inline struct ieee80211_node * ieee80211_tree_RBT_LEFT(struct ieee80211_node *elm) { return _rb_left(ieee80211_tree_RBT_TYPE, elm); } __attribute__((__unused__)) static inline struct ieee80211_node * ieee80211_tree_RBT_RIGHT(struct ieee80211_node *elm) { return _rb_right(ieee80211_tree_RBT_TYPE, elm); } __attribute__((__unused__)) static inline struct ieee80211_node * ieee80211_tree_RBT_PARENT(struct ieee80211_node *elm) { return _rb_parent(ieee80211_tree_RBT_TYPE, elm); } __attribute__((__unused__)) static inline void ieee80211_tree_RBT_SET_LEFT(struct ieee80211_node *elm, struct ieee80211_node *left) { return _rb_set_left(ieee80211_tree_RBT_TYPE, elm, left); } __attribute__((__unused__)) static inline void ieee80211_tree_RBT_SET_RIGHT(struct ieee80211_node *elm, struct ieee80211_node *right) { return _rb_set_right(ieee80211_tree_RBT_TYPE, elm, right); } __attribute__((__unused__)) static inline void ieee80211_tree_RBT_SET_PARENT(struct ieee80211_node *elm, struct ieee80211_node *parent) { return _rb_set_parent(ieee80211_tree_RBT_TYPE, elm, parent); } __attribute__((__unused__)) static inline void ieee80211_tree_RBT_POISON(struct ieee80211_node *elm, unsigned long poison) { return _rb_poison(ieee80211_tree_RBT_TYPE, elm, poison); } __attribute__((__unused__)) static inline int ieee80211_tree_RBT_CHECK(struct ieee80211_node *elm, unsigned long poison) { return _rb_check(ieee80211_tree_RBT_TYPE, elm, poison); };
enum ieee80211_state {
 IEEE80211_S_INIT = 0,
 IEEE80211_S_SCAN = 1,
 IEEE80211_S_AUTH = 2,
 IEEE80211_S_ASSOC = 3,
 IEEE80211_S_RUN = 4
};
extern const char * const ieee80211_mgt_subtype_name[];
extern const char * const ieee80211_state_name[(IEEE80211_S_RUN+1)];
extern const char * const ieee80211_phymode_name[];
extern void ieee80211_proto_attach(struct ifnet *);
extern void ieee80211_proto_detach(struct ifnet *);
struct ieee80211_node;
struct ieee80211_rxinfo;
struct ieee80211_rsnparams;
extern void ieee80211_set_link_state(struct ieee80211com *, int);
extern u_int ieee80211_get_hdrlen(const struct ieee80211_frame *);
extern int ieee80211_classify(struct ieee80211com *, struct mbuf *);
extern void ieee80211_input(struct ifnet *, struct mbuf *,
  struct ieee80211_node *, struct ieee80211_rxinfo *);
extern int ieee80211_output(struct ifnet *, struct mbuf *, struct sockaddr *,
  struct rtentry *);
extern void ieee80211_recv_mgmt(struct ieee80211com *, struct mbuf *,
  struct ieee80211_node *, struct ieee80211_rxinfo *, int);
extern int ieee80211_send_mgmt(struct ieee80211com *, struct ieee80211_node *,
  int, int, int);
extern void ieee80211_eapol_key_input(struct ieee80211com *, struct mbuf *,
  struct ieee80211_node *);
extern struct mbuf *ieee80211_encap(struct ifnet *, struct mbuf *,
  struct ieee80211_node **);
extern struct mbuf *ieee80211_get_rts(struct ieee80211com *,
  const struct ieee80211_frame *, u_int16_t);
extern struct mbuf *ieee80211_get_cts_to_self(struct ieee80211com *,
  u_int16_t);
extern struct mbuf *ieee80211_beacon_alloc(struct ieee80211com *,
  struct ieee80211_node *);
extern int ieee80211_save_ie(const u_int8_t *, u_int8_t **);
extern void ieee80211_eapol_timeout(void *);
extern int ieee80211_send_4way_msg1(struct ieee80211com *,
  struct ieee80211_node *);
extern int ieee80211_send_4way_msg2(struct ieee80211com *,
  struct ieee80211_node *, const u_int8_t *,
  const struct ieee80211_ptk *);
extern int ieee80211_send_4way_msg3(struct ieee80211com *,
  struct ieee80211_node *);
extern int ieee80211_send_4way_msg4(struct ieee80211com *,
  struct ieee80211_node *);
extern int ieee80211_send_group_msg1(struct ieee80211com *,
  struct ieee80211_node *);
extern int ieee80211_send_group_msg2(struct ieee80211com *,
  struct ieee80211_node *, const struct ieee80211_key *);
extern int ieee80211_send_eapol_key_req(struct ieee80211com *,
  struct ieee80211_node *, u_int16_t, u_int64_t);
extern int ieee80211_pwrsave(struct ieee80211com *, struct mbuf *,
  struct ieee80211_node *);
extern enum ieee80211_edca_ac ieee80211_up_to_ac(struct ieee80211com *, int);
extern u_int8_t *ieee80211_add_capinfo(u_int8_t *, struct ieee80211com *,
  const struct ieee80211_node *);
extern u_int8_t *ieee80211_add_ssid(u_int8_t *, const u_int8_t *, u_int);
extern u_int8_t *ieee80211_add_rates(u_int8_t *,
  const struct ieee80211_rateset *);
extern u_int8_t *ieee80211_add_fh_params(u_int8_t *, struct ieee80211com *,
  const struct ieee80211_node *);
extern u_int8_t *ieee80211_add_ds_params(u_int8_t *, struct ieee80211com *,
  const struct ieee80211_node *);
extern u_int8_t *ieee80211_add_tim(u_int8_t *, struct ieee80211com *);
extern u_int8_t *ieee80211_add_ibss_params(u_int8_t *,
  const struct ieee80211_node *);
extern u_int8_t *ieee80211_add_edca_params(u_int8_t *, struct ieee80211com *);
extern u_int8_t *ieee80211_add_erp(u_int8_t *, struct ieee80211com *);
extern u_int8_t *ieee80211_add_qos_capability(u_int8_t *,
  struct ieee80211com *);
extern u_int8_t *ieee80211_add_rsn(u_int8_t *, struct ieee80211com *,
  const struct ieee80211_node *);
extern u_int8_t *ieee80211_add_wpa(u_int8_t *, struct ieee80211com *,
  const struct ieee80211_node *);
extern u_int8_t *ieee80211_add_xrates(u_int8_t *,
  const struct ieee80211_rateset *);
extern u_int8_t *ieee80211_add_htcaps(u_int8_t *, struct ieee80211com *);
extern u_int8_t *ieee80211_add_htop(u_int8_t *, struct ieee80211com *);
extern u_int8_t *ieee80211_add_tie(u_int8_t *, u_int8_t, u_int32_t);
extern int ieee80211_parse_rsn(struct ieee80211com *, const u_int8_t *,
  struct ieee80211_rsnparams *);
extern int ieee80211_parse_wpa(struct ieee80211com *, const u_int8_t *,
  struct ieee80211_rsnparams *);
extern void ieee80211_print_essid(const u_int8_t *, int);
extern int ieee80211_ibss_merge(struct ieee80211com *,
  struct ieee80211_node *, u_int64_t);
extern void ieee80211_reset_erp(struct ieee80211com *);
extern void ieee80211_set_shortslottime(struct ieee80211com *, int);
extern void ieee80211_auth_open(struct ieee80211com *,
     const struct ieee80211_frame *, struct ieee80211_node *,
     struct ieee80211_rxinfo *rs, u_int16_t, u_int16_t);
extern void ieee80211_gtk_rekey_timeout(void *);
extern int ieee80211_keyrun(struct ieee80211com *, u_int8_t *);
extern void ieee80211_setkeys(struct ieee80211com *);
extern void ieee80211_setkeysdone(struct ieee80211com *);
extern void ieee80211_sa_query_timeout(void *);
extern void ieee80211_sa_query_request(struct ieee80211com *,
     struct ieee80211_node *);
extern void ieee80211_ht_negotiate(struct ieee80211com *,
    struct ieee80211_node *);
extern void ieee80211_tx_ba_timeout(void *);
extern void ieee80211_rx_ba_timeout(void *);
extern int ieee80211_addba_request(struct ieee80211com *,
     struct ieee80211_node *, u_int16_t, u_int8_t);
extern void ieee80211_delba_request(struct ieee80211com *,
     struct ieee80211_node *, u_int16_t, u_int8_t, u_int8_t);
extern void ieee80211_addba_req_accept(struct ieee80211com *,
     struct ieee80211_node *, uint8_t);
extern void ieee80211_addba_req_refuse(struct ieee80211com *,
     struct ieee80211_node *, uint8_t);
enum ieee80211_phytype {
 IEEE80211_T_DS,
 IEEE80211_T_OFDM,
 IEEE80211_T_XR
};
enum ieee80211_phymode {
 IEEE80211_MODE_AUTO = 0,
 IEEE80211_MODE_11A = 1,
 IEEE80211_MODE_11B = 2,
 IEEE80211_MODE_11G = 3,
 IEEE80211_MODE_11N = 4,
};
enum ieee80211_opmode {
 IEEE80211_M_STA = 1,
 IEEE80211_M_IBSS = 0,
 IEEE80211_M_AHDEMO = 3,
 IEEE80211_M_HOSTAP = 6,
 IEEE80211_M_MONITOR = 8
};
enum ieee80211_protmode {
 IEEE80211_PROT_NONE = 0,
 IEEE80211_PROT_CTSONLY = 1,
 IEEE80211_PROT_RTSCTS = 2
};
struct ieee80211_channel {
 u_int16_t ic_freq;
 u_int16_t ic_flags;
};
struct ieee80211_edca_ac_params {
 u_int8_t ac_ecwmin;
 u_int8_t ac_ecwmax;
 u_int8_t ac_aifsn;
 u_int16_t ac_txoplimit;
 u_int8_t ac_acm;
};
extern const struct ieee80211_edca_ac_params
     ieee80211_edca_table[(IEEE80211_MODE_11N+1)][4];
extern const struct ieee80211_edca_ac_params
     ieee80211_qap_edca_table[(IEEE80211_MODE_11N+1)][4];
struct ieee80211_defrag {
 struct timeout df_to;
 struct mbuf *df_m;
 u_int16_t df_seq;
 u_int8_t df_frag;
};
struct ieee80211com {
 struct arpcom ic_ac;
 struct { struct ieee80211com *le_next; struct ieee80211com **le_prev; } ic_list;
 void (*ic_recv_mgmt)(struct ieee80211com *,
        struct mbuf *, struct ieee80211_node *,
        struct ieee80211_rxinfo *, int);
 int (*ic_send_mgmt)(struct ieee80211com *,
        struct ieee80211_node *, int, int, int);
 int (*ic_newstate)(struct ieee80211com *,
        enum ieee80211_state, int);
 void (*ic_newassoc)(struct ieee80211com *,
        struct ieee80211_node *, int);
 void (*ic_node_leave)(struct ieee80211com *,
        struct ieee80211_node *);
 void (*ic_updateslot)(struct ieee80211com *);
 void (*ic_updateedca)(struct ieee80211com *);
 void (*ic_set_tim)(struct ieee80211com *, int, int);
 int (*ic_set_key)(struct ieee80211com *,
        struct ieee80211_node *,
        struct ieee80211_key *);
 void (*ic_delete_key)(struct ieee80211com *,
        struct ieee80211_node *,
        struct ieee80211_key *);
 int (*ic_ampdu_tx_start)(struct ieee80211com *,
        struct ieee80211_node *, u_int8_t);
 void (*ic_ampdu_tx_stop)(struct ieee80211com *,
        struct ieee80211_node *, u_int8_t);
 int (*ic_ampdu_rx_start)(struct ieee80211com *,
        struct ieee80211_node *, u_int8_t);
 void (*ic_ampdu_rx_stop)(struct ieee80211com *,
        struct ieee80211_node *, u_int8_t);
 void (*ic_update_htprot)(struct ieee80211com *,
     struct ieee80211_node *);
 int (*ic_bgscan_start)(struct ieee80211com *);
 struct timeout ic_bgscan_timeout;
 uint32_t ic_bgscan_fail;
 u_int8_t ic_myaddr[6];
 struct ieee80211_rateset ic_sup_rates[(IEEE80211_MODE_11N+1)];
 struct ieee80211_channel ic_channels[255 +1];
 u_char ic_chan_avail[(((255) + ((8) - 1)) / (8))];
 u_char ic_chan_active[(((255) + ((8) - 1)) / (8))];
 u_char ic_chan_scan[(((255) + ((8) - 1)) / (8))];
 struct mbuf_queue ic_mgtq;
 struct mbuf_queue ic_pwrsaveq;
 u_int ic_scan_lock;
 u_int8_t ic_scan_count;
 u_int32_t ic_flags;
 u_int32_t ic_xflags;
 u_int32_t ic_caps;
 u_int16_t ic_modecaps;
 u_int16_t ic_curmode;
 enum ieee80211_phytype ic_phytype;
 enum ieee80211_opmode ic_opmode;
 enum ieee80211_state ic_state;
 u_int32_t *ic_aid_bitmap;
 u_int16_t ic_max_aid;
 enum ieee80211_protmode ic_protmode;
 struct ifmedia ic_media;
 caddr_t ic_rawbpf;
 struct ieee80211_node *ic_bss;
 struct ieee80211_channel *ic_ibss_chan;
 int ic_fixed_rate;
 u_int16_t ic_rtsthreshold;
 u_int16_t ic_fragthreshold;
 u_int ic_scangen;
 struct ieee80211_node *(*ic_node_alloc)(struct ieee80211com *);
 void (*ic_node_free)(struct ieee80211com *,
     struct ieee80211_node *);
 void (*ic_node_copy)(struct ieee80211com *,
     struct ieee80211_node *,
     const struct ieee80211_node *);
 u_int8_t (*ic_node_getrssi)(struct ieee80211com *,
     const struct ieee80211_node *);
 int (*ic_node_checkrssi)(struct ieee80211com *,
     const struct ieee80211_node *);
 u_int8_t ic_max_rssi;
 struct ieee80211_tree ic_tree;
 int ic_nnodes;
 int ic_max_nnodes;
 u_int16_t ic_lintval;
 int16_t ic_txpower;
 int ic_bmissthres;
 int ic_mgt_timer;
 struct timeout ic_inact_timeout;
 struct timeout ic_node_cache_timeout;
 int ic_des_esslen;
 u_int8_t ic_des_essid[32];
 struct ieee80211_channel *ic_des_chan;
 u_int8_t ic_des_bssid[6];
 struct ieee80211_key ic_nw_keys[6];
 int ic_def_txkey;
 int ic_igtk_kid;
 u_int32_t ic_iv;
 struct ieee80211_stats ic_stats;
 struct timeval ic_last_merge_print;
 struct ieee80211_edca_ac_params ic_edca_ac[4];
 u_int ic_edca_updtcount;
 u_int16_t ic_tid_noack;
 u_int8_t ic_globalcnt[32];
 u_int8_t ic_nonce[32];
 u_int8_t ic_psk[32];
 struct timeout ic_rsn_timeout;
 int ic_tkip_micfail;
 u_int64_t ic_tkip_micfail_last_tsc;
 struct timeout ic_tkip_micfail_timeout;
 struct { struct ieee80211_pmk *tqh_first; struct ieee80211_pmk **tqh_last; } ic_pmksa;
 u_int ic_rsnprotos;
 u_int ic_rsnakms;
 u_int ic_rsnciphers;
 enum ieee80211_cipher ic_rsngroupcipher;
 enum ieee80211_cipher ic_rsngroupmgmtcipher;
 struct ieee80211_defrag ic_defrag[3];
 int ic_defrag_cur;
 u_int8_t *ic_tim_bitmap;
 u_int ic_tim_len;
 u_int ic_tim_mcast_pending;
 u_int ic_dtim_period;
 u_int ic_dtim_count;
 u_int32_t ic_txbfcaps;
 u_int16_t ic_htcaps;
 u_int8_t ic_ampdu_params;
 u_int8_t ic_sup_mcs[(((80) + ((8) - 1)) / (8))];
 u_int16_t ic_max_rxrate;
 u_int8_t ic_tx_mcs_set;
 u_int16_t ic_htxcaps;
 u_int8_t ic_aselcaps;
 u_int8_t ic_dialog_token;
 int ic_fixed_mcs;
};
struct ieee80211com_head { struct ieee80211com *lh_first; };
extern struct ieee80211com_head ieee80211com_head;
void ieee80211_ifattach(struct ifnet *);
void ieee80211_ifdetach(struct ifnet *);
void ieee80211_channel_init(struct ifnet *);
void ieee80211_media_init(struct ifnet *, ifm_change_cb_t, ifm_stat_cb_t);
int ieee80211_media_change(struct ifnet *);
void ieee80211_media_status(struct ifnet *, struct ifmediareq *);
int ieee80211_ioctl(struct ifnet *, u_long, caddr_t);
int ieee80211_get_rate(struct ieee80211com *);
void ieee80211_watchdog(struct ifnet *);
int ieee80211_fix_rate(struct ieee80211com *, struct ieee80211_node *, int);
uint64_t ieee80211_rate2media(struct ieee80211com *, int,
      enum ieee80211_phymode);
int ieee80211_media2rate(uint64_t);
uint64_t ieee80211_mcs2media(struct ieee80211com *, int,
      enum ieee80211_phymode);
int ieee80211_media2mcs(uint64_t);
u_int8_t ieee80211_rate2plcp(u_int8_t, enum ieee80211_phymode);
u_int8_t ieee80211_plcp2rate(u_int8_t, enum ieee80211_phymode);
u_int ieee80211_mhz2ieee(u_int, u_int);
u_int ieee80211_chan2ieee(struct ieee80211com *,
  const struct ieee80211_channel *);
u_int ieee80211_ieee2mhz(u_int, u_int);
int ieee80211_min_basic_rate(struct ieee80211com *);
int ieee80211_max_basic_rate(struct ieee80211com *);
int ieee80211_setmode(struct ieee80211com *, enum ieee80211_phymode);
enum ieee80211_phymode ieee80211_next_mode(struct ifnet *);
enum ieee80211_phymode ieee80211_chan2mode(struct ieee80211com *,
  const struct ieee80211_channel *);
void ieee80211_disable_wep(struct ieee80211com *);
void ieee80211_disable_rsn(struct ieee80211com *);
extern int ieee80211_cache_size;
struct ieee80211_radiotap_header {
 u_int8_t it_version;
 u_int8_t it_pad;
 u_int16_t it_len;
 u_int32_t it_present;
} __attribute__((__packed__));
enum ieee80211_radiotap_type {
 IEEE80211_RADIOTAP_TSFT = 0,
 IEEE80211_RADIOTAP_FLAGS = 1,
 IEEE80211_RADIOTAP_RATE = 2,
 IEEE80211_RADIOTAP_CHANNEL = 3,
 IEEE80211_RADIOTAP_FHSS = 4,
 IEEE80211_RADIOTAP_DBM_ANTSIGNAL = 5,
 IEEE80211_RADIOTAP_DBM_ANTNOISE = 6,
 IEEE80211_RADIOTAP_LOCK_QUALITY = 7,
 IEEE80211_RADIOTAP_TX_ATTENUATION = 8,
 IEEE80211_RADIOTAP_DB_TX_ATTENUATION = 9,
 IEEE80211_RADIOTAP_DBM_TX_POWER = 10,
 IEEE80211_RADIOTAP_ANTENNA = 11,
 IEEE80211_RADIOTAP_DB_ANTSIGNAL = 12,
 IEEE80211_RADIOTAP_DB_ANTNOISE = 13,
 IEEE80211_RADIOTAP_FCS = 14,
 IEEE80211_RADIOTAP_HWQUEUE = 15,
 IEEE80211_RADIOTAP_RSSI = 16,
 IEEE80211_RADIOTAP_EXT = 31
};
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
struct r92s_fw_priv {
 uint16_t signature;
 uint8_t hci_sel;
 uint8_t chip_version;
 uint16_t custid;
 uint8_t rf_config;
 uint8_t nendpoints;
 uint32_t regulatory;
 uint8_t rfintfs;
 uint8_t def_nettype;
 uint8_t turbo_mode;
 uint8_t lowpower_mode;
 uint8_t lbk_mode;
 uint8_t mp_mode;
 uint8_t vcs_type;
 uint8_t vcs_mode;
 uint32_t reserved1;
 uint8_t qos_en;
 uint8_t bw40_en;
 uint8_t amsdu2ampdu_en;
 uint8_t ampdu_en;
 uint8_t rc_offload;
 uint8_t agg_offload;
 uint16_t reserved2;
 uint8_t beacon_offload;
 uint8_t mlme_offload;
 uint8_t hwpc_offload;
 uint8_t tcpcsum_offload;
 uint8_t tcp_offload;
 uint8_t ps_offload;
 uint8_t wwlan_offload;
 uint8_t reserved3;
 uint16_t tcp_tx_len;
 uint16_t tcp_rx_len;
 uint32_t reserved4;
} __attribute__((__packed__));
struct r92s_fw_hdr {
 uint16_t signature;
 uint16_t version;
 uint32_t dmemsz;
 uint32_t imemsz;
 uint32_t sramsz;
 uint32_t privsz;
 uint16_t efuse_addr;
 uint16_t h2c_resp_addr;
 uint32_t svnrev;
 uint8_t month;
 uint8_t day;
 uint8_t hour;
 uint8_t minute;
 struct r92s_fw_priv priv;
} __attribute__((__packed__));
struct r92s_fw_cmd_hdr {
 uint16_t len;
 uint8_t code;
 uint8_t seq;
 uint32_t reserved;
} __attribute__((__packed__));
struct r92s_fw_cmd_sitesurvey {
 uint32_t active;
 uint32_t limit;
 uint32_t ssidlen;
 uint8_t ssid[32 + 1];
} __attribute__((__packed__));
struct r92s_fw_cmd_auth {
 uint8_t mode;
 uint8_t dot1x;
} __attribute__((__packed__));
struct r92s_fw_cmd_set_key {
 uint8_t algo;
 uint8_t id;
 uint8_t grpkey;
 uint8_t key[16];
} __attribute__((__packed__));
struct ndis_802_11_ssid {
 uint32_t ssidlen;
 uint8_t ssid[32];
} __attribute__((__packed__));
struct ndis_802_11_configuration_fh {
 uint32_t len;
 uint32_t hoppattern;
 uint32_t hopset;
 uint32_t dwelltime;
} __attribute__((__packed__));
struct ndis_802_11_configuration {
 uint32_t len;
 uint32_t bintval;
 uint32_t atim;
 uint32_t dsconfig;
 struct ndis_802_11_configuration_fh fhconfig;
} __attribute__((__packed__));
struct ndis_wlan_bssid_ex {
 uint32_t len;
 uint8_t macaddr[6];
 uint8_t reserved[2];
 struct ndis_802_11_ssid ssid;
 uint32_t privacy;
 int32_t rssi;
 uint32_t networktype;
 struct ndis_802_11_configuration config;
 uint32_t inframode;
 uint8_t supprates[16];
 uint32_t ieslen;
} __attribute__((__packed__));
struct ndis_802_11_fixed_ies {
 uint8_t tstamp[8];
 uint16_t bintval;
 uint16_t capabilities;
} __attribute__((__packed__));
struct r92s_set_pwr_mode {
 uint8_t mode;
 uint8_t low_traffic_en;
 uint8_t lpnav_en;
 uint8_t rf_low_snr_en;
 uint8_t dps_en;
 uint8_t bcn_rx_en;
 uint8_t bcn_pass_cnt;
 uint8_t bcn_to;
 uint16_t bcn_itv;
 uint8_t app_itv;
 uint8_t awake_bcn_itv;
 uint8_t smart_ps;
 uint8_t bcn_pass_time;
} __attribute__((__packed__));
struct r92s_event_join_bss {
 uint32_t next;
 uint32_t prev;
 uint32_t networktype;
 uint32_t fixed;
 uint32_t lastscanned;
 uint32_t associd;
 uint32_t join_res;
 struct ndis_wlan_bssid_ex bss;
} __attribute__((__packed__));
struct r92s_rx_stat {
 uint32_t rxdw0;
 uint32_t rxdw1;
 uint32_t rxdw2;
 uint32_t rxdw3;
 uint32_t rxdw4;
 uint32_t rxdw5;
} __attribute__((__packed__)) __attribute__((aligned(4)));
struct r92s_rx_phystat {
 uint32_t phydw0;
 uint32_t phydw1;
 uint32_t phydw2;
 uint32_t phydw3;
 uint32_t phydw4;
 uint32_t phydw5;
 uint32_t phydw6;
 uint32_t phydw7;
} __attribute__((__packed__)) __attribute__((aligned(4)));
struct r92s_rx_cck {
 uint8_t adc_pwdb[4];
 uint8_t sq_rpt;
 uint8_t agc_rpt;
} __attribute__((__packed__));
struct r92s_tx_desc {
 uint32_t txdw0;
 uint32_t txdw1;
 uint32_t txdw2;
 uint32_t txdw3;
 uint32_t txdw4;
 uint32_t txdw5;
 uint16_t ipchksum;
 uint16_t tcpchksum;
 uint16_t txbufsize;
 uint16_t reserved1;
} __attribute__((__packed__)) __attribute__((aligned(4)));
static const uint8_t rsu_ac2qid[4] = {
 5,
 6,
 4,
 3
};
static const uint8_t r92s_epaddr[] =
    { 0x83, 0x04, 0x06, 0x0d,
      0x05, 0x07,
      0x89, 0x0a, 0x0b, 0x0c };
static const uint8_t rsu_qid2idx_4ep[] =
    { 3, 3, 3, 1, 1, 2, 2, 0, 3, 0 };
static const uint8_t rsu_qid2idx_6ep[] =
    { 3, 3, 3, 1, 4, 2, 5, 0, 3, 0 };
static const uint8_t rsu_qid2idx_11ep[] =
    { 7, 9, 8, 1, 4, 2, 5, 0, 3, 6 };
struct rsu_rx_radiotap_header {
 struct ieee80211_radiotap_header wr_ihdr;
 uint8_t wr_flags;
 uint8_t wr_rate;
 uint16_t wr_chan_freq;
 uint16_t wr_chan_flags;
 uint8_t wr_dbm_antsignal;
} __attribute__((__packed__));
struct rsu_tx_radiotap_header {
 struct ieee80211_radiotap_header wt_ihdr;
 uint8_t wt_flags;
 uint16_t wt_chan_freq;
 uint16_t wt_chan_flags;
} __attribute__((__packed__));
struct rsu_softc;
struct rsu_rx_data {
 struct rsu_softc *sc;
 struct usbd_pipe *pipe;
 struct usbd_xfer *xfer;
 uint8_t *buf;
};
struct rsu_tx_data {
 struct rsu_softc *sc;
 struct usbd_pipe *pipe;
 struct usbd_xfer *xfer;
 uint8_t *buf;
 struct { struct rsu_tx_data *tqe_next; struct rsu_tx_data **tqe_prev; } next;
};
struct rsu_host_cmd {
 void (*cb)(struct rsu_softc *, void *);
 uint8_t data[256];
};
struct rsu_cmd_newstate {
 enum ieee80211_state state;
 int arg;
};
struct rsu_cmd_key {
 struct ieee80211_key key;
};
struct rsu_host_cmd_ring {
 struct rsu_host_cmd cmd[32];
 int cur;
 int next;
 int queued;
};
struct rsu_softc {
 struct device sc_dev;
 struct ieee80211com sc_ic;
 int (*sc_newstate)(struct ieee80211com *,
         enum ieee80211_state, int);
 struct usbd_device *sc_udev;
 struct usbd_interface *sc_iface;
 struct usb_task sc_task;
 struct timeout calib_to;
 struct usbd_pipe *pipe[11];
 int npipes;
 const uint8_t *qid2idx;
 u_int cut;
 int scan_pass;
 int sc_tx_timer;
 struct rsu_host_cmd_ring cmdq;
 struct rsu_rx_data rx_data[1];
 struct rsu_tx_data tx_data[(8 + 1)];
 struct rsu_tx_data *fwcmd_data;
 uint8_t cmd_seq;
 struct { struct rsu_tx_data *tqh_first; struct rsu_tx_data **tqh_last; } tx_free_list;
 uint8_t rom[128];
 caddr_t sc_drvbpf;
 union {
  struct rsu_rx_radiotap_header th;
  uint8_t pad[64];
 } sc_rxtapu;
 int sc_rxtap_len;
 union {
  struct rsu_tx_radiotap_header th;
  uint8_t pad[64];
 } sc_txtapu;
 int sc_txtap_len;
};
static const struct usb_devno rsu_devs[] = {
 { 0x083a, 0xc512 },
 { 0x0b05, 0x1786 },
 { 0x0b05, 0x1791 },
 { 0x13d3, 0x3306 },
 { 0x13d3, 0x3309 },
 { 0x13d3, 0x3310 },
 { 0x13d3, 0x3311 },
 { 0x13d3, 0x3325 },
 { 0x050d, 0x815f },
 { 0x050d, 0x845a },
 { 0x050d, 0x945a },
 { 0x14b2, 0x3300 },
 { 0x14b2, 0x3301 },
 { 0x14b2, 0x3302 },
 { 0x07aa, 0x0047 },
 { 0x07d1, 0x3303 },
 { 0x07d1, 0x3300 },
 { 0x07d1, 0x3302 },
 { 0x7392, 0x7611 },
 { 0x7392, 0x7612 },
 { 0x7392, 0x7622 },
 { 0x06f8, 0xe032 },
 { 0x06f8, 0xe031 },
 { 0x0e66, 0x0015 },
 { 0x0e66, 0x0016 },
 { 0x2019, 0xab28 },
 { 0x0bda, 0x8171 },
 { 0x0bda, 0x8172 },
 { 0x0bda, 0x8173 },
 { 0x0bda, 0x8174 },
 { 0x0bda, 0xc512 },
 { 0x0bda, 0x8712 },
 { 0x0bda, 0x8712 },
 { 0x1740, 0x9603 },
 { 0x1740, 0x9605 },
 { 0x0df6, 0x004b },
 { 0x0df6, 0x0045 },
 { 0x177f, 0x0154 }
};
static const struct usb_devno rsu_devs_noht[] = {
 { 0x0b05, 0x1791 },
 { 0x13d3, 0x3311 }
};
int rsu_match(struct device *, void *, void *);
void rsu_attach(struct device *, struct device *, void *);
int rsu_detach(struct device *, int);
int rsu_open_pipes(struct rsu_softc *);
void rsu_close_pipes(struct rsu_softc *);
int rsu_alloc_rx_list(struct rsu_softc *);
void rsu_free_rx_list(struct rsu_softc *);
int rsu_alloc_tx_list(struct rsu_softc *);
void rsu_free_tx_list(struct rsu_softc *);
void rsu_task(void *);
void rsu_do_async(struct rsu_softc *,
      void (*)(struct rsu_softc *, void *), void *, int);
void rsu_wait_async(struct rsu_softc *);
int rsu_write_region_1(struct rsu_softc *, uint16_t, uint8_t *,
      int);
void rsu_write_1(struct rsu_softc *, uint16_t, uint8_t);
void rsu_write_2(struct rsu_softc *, uint16_t, uint16_t);
void rsu_write_4(struct rsu_softc *, uint16_t, uint32_t);
int rsu_read_region_1(struct rsu_softc *, uint16_t, uint8_t *,
      int);
uint8_t rsu_read_1(struct rsu_softc *, uint16_t);
uint16_t rsu_read_2(struct rsu_softc *, uint16_t);
uint32_t rsu_read_4(struct rsu_softc *, uint16_t);
int rsu_fw_iocmd(struct rsu_softc *, uint32_t);
uint8_t rsu_efuse_read_1(struct rsu_softc *, uint16_t);
int rsu_read_rom(struct rsu_softc *);
int rsu_fw_cmd(struct rsu_softc *, uint8_t, void *, int);
int rsu_media_change(struct ifnet *);
void rsu_calib_to(void *);
void rsu_calib_cb(struct rsu_softc *, void *);
int rsu_newstate(struct ieee80211com *, enum ieee80211_state, int);
void rsu_newstate_cb(struct rsu_softc *, void *);
int rsu_set_key(struct ieee80211com *, struct ieee80211_node *,
      struct ieee80211_key *);
void rsu_set_key_cb(struct rsu_softc *, void *);
void rsu_delete_key(struct ieee80211com *, struct ieee80211_node *,
      struct ieee80211_key *);
void rsu_delete_key_cb(struct rsu_softc *, void *);
int rsu_site_survey(struct rsu_softc *);
int rsu_join_bss(struct rsu_softc *, struct ieee80211_node *);
int rsu_disconnect(struct rsu_softc *);
void rsu_event_survey(struct rsu_softc *, uint8_t *, int);
void rsu_event_join_bss(struct rsu_softc *, uint8_t *, int);
void rsu_rx_event(struct rsu_softc *, uint8_t, uint8_t *, int);
void rsu_rx_multi_event(struct rsu_softc *, uint8_t *, int);
int8_t rsu_get_rssi(struct rsu_softc *, int, void *);
void rsu_rx_frame(struct rsu_softc *, uint8_t *, int);
void rsu_rx_multi_frame(struct rsu_softc *, uint8_t *, int);
void rsu_rxeof(struct usbd_xfer *, void *, usbd_status);
void rsu_txeof(struct usbd_xfer *, void *, usbd_status);
int rsu_tx(struct rsu_softc *, struct mbuf *,
      struct ieee80211_node *);
int rsu_send_mgmt(struct ieee80211com *, struct ieee80211_node *,
      int, int, int);
void rsu_start(struct ifnet *);
void rsu_watchdog(struct ifnet *);
int rsu_ioctl(struct ifnet *, u_long, caddr_t);
void rsu_power_on_acut(struct rsu_softc *);
void rsu_power_on_bcut(struct rsu_softc *);
void rsu_power_off(struct rsu_softc *);
int rsu_fw_loadsection(struct rsu_softc *, uint8_t *, int);
int rsu_load_firmware(struct rsu_softc *);
int rsu_init(struct ifnet *);
void rsu_stop(struct ifnet *);
struct cfdriver rsu_cd = {
 ((void *)0), "rsu", DV_IFNET
};
const struct cfattach rsu_ca = {
 sizeof(struct rsu_softc), rsu_match, rsu_attach, rsu_detach,
};
int
rsu_match(struct device *parent, void *match, void *aux)
{
 struct usb_attach_arg *uaa = aux;
 if (uaa->iface == ((void *)0) || uaa->configno != 1)
  return (0);
 return ((usbd_match_device((const struct usb_devno *)(rsu_devs), sizeof (rsu_devs) / sizeof ((rsu_devs)[0]), sizeof ((rsu_devs)[0]), (uaa->vendor), (uaa->product)) != ((void *)0)) ?
     8 : 0);
}
void
rsu_attach(struct device *parent, struct device *self, void *aux)
{
 struct rsu_softc *sc = (struct rsu_softc *)self;
 struct usb_attach_arg *uaa = aux;
 struct ieee80211com *ic = &sc->sc_ic;
 struct ifnet *ifp = &ic->ic_ac.ac_if;
 int i, error;
 sc->sc_udev = uaa->device;
 sc->sc_iface = uaa->iface;
 ((&sc->sc_task)->fun = (rsu_task), (&sc->sc_task)->arg = (sc), (&sc->sc_task)->type = (0), (&sc->sc_task)->state = 0x0);
 timeout_set(&sc->calib_to, rsu_calib_to, sc);
 sc->cut = (((rsu_read_4(sc, (0x0000 + 0x004))) & 0x000f8000) >> 15);
 if (sc->cut != 3)
  sc->cut = (sc->cut >> 1) + 1;
 error = rsu_read_rom(sc);
 if (error != 0) {
  printf("%s: could not read ROM\n", sc->sc_dev.dv_xname);
  return;
 }
 __builtin_memcpy((ic->ic_myaddr), (&sc->rom[0x12]), (6));
 printf("%s: MAC/BB RTL8712 cut %d, address %s\n",
     sc->sc_dev.dv_xname, sc->cut, ether_sprintf(ic->ic_myaddr));
 if (rsu_open_pipes(sc) != 0)
  return;
 ic->ic_phytype = IEEE80211_T_OFDM;
 ic->ic_opmode = IEEE80211_M_STA;
 ic->ic_state = IEEE80211_S_INIT;
 ic->ic_caps =
     0x00000400 |
     0x00000100 |
     0x00000080 |
     0x00000001 |
     0x00001000;
 if (usbd_match_device((const struct usb_devno *)(rsu_devs_noht), sizeof (rsu_devs_noht) / sizeof ((rsu_devs_noht)[0]), sizeof ((rsu_devs_noht)[0]), (uaa->vendor), (uaa->product)) == ((void *)0)) {
 }
 ic->ic_sup_rates[IEEE80211_MODE_11B] = ieee80211_std_rateset_11b;
 ic->ic_sup_rates[IEEE80211_MODE_11G] = ieee80211_std_rateset_11g;
 for (i = 1; i <= 14; i++) {
  ic->ic_channels[i].ic_freq =
      ieee80211_ieee2mhz(i, 0x0080);
  ic->ic_channels[i].ic_flags =
      0x0020 | 0x0040 |
      0x0400 | 0x0080;
 }
 ifp->if_softc = sc;
 ifp->if_flags = 0x2 | 0x800 | 0x8000;
 ifp->if_ioctl = rsu_ioctl;
 ifp->if_start = rsu_start;
 ifp->if_watchdog = rsu_watchdog;
 __builtin_memcpy((ifp->if_xname), (sc->sc_dev.dv_xname), (16));
 if_attach(ifp);
 ieee80211_ifattach(ifp);
 sc->sc_newstate = ic->ic_newstate;
 ic->ic_newstate = rsu_newstate;
 ic->ic_send_mgmt = rsu_send_mgmt;
 ieee80211_media_init(ifp, rsu_media_change, ieee80211_media_status);
 bpfattach(&sc->sc_drvbpf, ifp, 127,
     sizeof(struct ieee80211_frame) + 64);
 sc->sc_rxtap_len = sizeof(sc->sc_rxtapu);
 sc->sc_rxtapu.th.wr_ihdr.it_len = (__builtin_constant_p(sc->sc_rxtap_len) ? (__uint16_t)(((__uint16_t)(sc->sc_rxtap_len) & 0xffU) << 8 | ((__uint16_t)(sc->sc_rxtap_len) & 0xff00U) >> 8) : __swap16md(sc->sc_rxtap_len));
 sc->sc_rxtapu.th.wr_ihdr.it_present = (__builtin_constant_p((1 << IEEE80211_RADIOTAP_FLAGS | 1 << IEEE80211_RADIOTAP_RATE | 1 << IEEE80211_RADIOTAP_CHANNEL | 1 << IEEE80211_RADIOTAP_DBM_ANTSIGNAL)) ? (__uint32_t)(((__uint32_t)((1 << IEEE80211_RADIOTAP_FLAGS | 1 << IEEE80211_RADIOTAP_RATE | 1 << IEEE80211_RADIOTAP_CHANNEL | 1 << IEEE80211_RADIOTAP_DBM_ANTSIGNAL)) & 0xff) << 24 | ((__uint32_t)((1 << IEEE80211_RADIOTAP_FLAGS | 1 << IEEE80211_RADIOTAP_RATE | 1 << IEEE80211_RADIOTAP_CHANNEL | 1 << IEEE80211_RADIOTAP_DBM_ANTSIGNAL)) & 0xff00) << 8 | ((__uint32_t)((1 << IEEE80211_RADIOTAP_FLAGS | 1 << IEEE80211_RADIOTAP_RATE | 1 << IEEE80211_RADIOTAP_CHANNEL | 1 << IEEE80211_RADIOTAP_DBM_ANTSIGNAL)) & 0xff0000) >> 8 | ((__uint32_t)((1 << IEEE80211_RADIOTAP_FLAGS | 1 << IEEE80211_RADIOTAP_RATE | 1 << IEEE80211_RADIOTAP_CHANNEL | 1 << IEEE80211_RADIOTAP_DBM_ANTSIGNAL)) & 0xff000000) >> 24) : __swap32md((1 << IEEE80211_RADIOTAP_FLAGS | 1 << IEEE80211_RADIOTAP_RATE | 1 << IEEE80211_RADIOTAP_CHANNEL | 1 << IEEE80211_RADIOTAP_DBM_ANTSIGNAL)));
 sc->sc_txtap_len = sizeof(sc->sc_txtapu);
 sc->sc_txtapu.th.wt_ihdr.it_len = (__builtin_constant_p(sc->sc_txtap_len) ? (__uint16_t)(((__uint16_t)(sc->sc_txtap_len) & 0xffU) << 8 | ((__uint16_t)(sc->sc_txtap_len) & 0xff00U) >> 8) : __swap16md(sc->sc_txtap_len));
 sc->sc_txtapu.th.wt_ihdr.it_present = (__builtin_constant_p((1 << IEEE80211_RADIOTAP_FLAGS | 1 << IEEE80211_RADIOTAP_CHANNEL)) ? (__uint32_t)(((__uint32_t)((1 << IEEE80211_RADIOTAP_FLAGS | 1 << IEEE80211_RADIOTAP_CHANNEL)) & 0xff) << 24 | ((__uint32_t)((1 << IEEE80211_RADIOTAP_FLAGS | 1 << IEEE80211_RADIOTAP_CHANNEL)) & 0xff00) << 8 | ((__uint32_t)((1 << IEEE80211_RADIOTAP_FLAGS | 1 << IEEE80211_RADIOTAP_CHANNEL)) & 0xff0000) >> 8 | ((__uint32_t)((1 << IEEE80211_RADIOTAP_FLAGS | 1 << IEEE80211_RADIOTAP_CHANNEL)) & 0xff000000) >> 24) : __swap32md((1 << IEEE80211_RADIOTAP_FLAGS | 1 << IEEE80211_RADIOTAP_CHANNEL)));
}
int
rsu_detach(struct device *self, int flags)
{
 struct rsu_softc *sc = (struct rsu_softc *)self;
 struct ifnet *ifp = &sc->sc_ic.ic_ac.ac_if;
 int s;
 s = splraise(2);
 if (((&sc->calib_to)->to_flags & 4))
  timeout_del(&sc->calib_to);
 usb_rem_wait_task(sc->sc_udev, &sc->sc_task);
 usbd_ref_wait(sc->sc_udev);
 if (ifp->if_softc != ((void *)0)) {
  ieee80211_ifdetach(ifp);
  if_detach(ifp);
 }
 rsu_close_pipes(sc);
 rsu_free_tx_list(sc);
 rsu_free_rx_list(sc);
 _splx(s);
 return (0);
}
int
rsu_open_pipes(struct rsu_softc *sc)
{
 usb_interface_descriptor_t *id;
 int i, error;
 id = usbd_get_interface_descriptor(sc->sc_iface);
 sc->npipes = id->bNumEndpoints;
 if (sc->npipes == 4)
  sc->qid2idx = rsu_qid2idx_4ep;
 else if (sc->npipes == 6)
  sc->qid2idx = rsu_qid2idx_6ep;
 else
  sc->qid2idx = rsu_qid2idx_11ep;
 ;
 for (i = 0; i < (((sc->npipes)<((sizeof((r92s_epaddr)) / sizeof((r92s_epaddr)[0]))))?(sc->npipes):((sizeof((r92s_epaddr)) / sizeof((r92s_epaddr)[0])))); i++) {
  error = usbd_open_pipe(sc->sc_iface, r92s_epaddr[i], 0,
      &sc->pipe[i]);
  if (error != 0) {
   printf("%s: could not open bulk pipe 0x%02x\n",
       sc->sc_dev.dv_xname, r92s_epaddr[i]);
   break;
  }
 }
 if (error != 0)
  rsu_close_pipes(sc);
 return (error);
}
void
rsu_close_pipes(struct rsu_softc *sc)
{
 int i;
 for (i = 0; i < sc->npipes; i++) {
  if (sc->pipe[i] == ((void *)0))
   continue;
  usbd_abort_pipe(sc->pipe[i]);
  usbd_close_pipe(sc->pipe[i]);
 }
}
int
rsu_alloc_rx_list(struct rsu_softc *sc)
{
 struct rsu_rx_data *data;
 int i, error = 0;
 for (i = 0; i < 1; i++) {
  data = &sc->rx_data[i];
  data->sc = sc;
  data->xfer = usbd_alloc_xfer(sc->sc_udev);
  if (data->xfer == ((void *)0)) {
   printf("%s: could not allocate xfer\n",
       sc->sc_dev.dv_xname);
   error = 12;
   break;
  }
  data->buf = usbd_alloc_buffer(data->xfer, (8 * 1024));
  if (data->buf == ((void *)0)) {
   printf("%s: could not allocate xfer buffer\n",
       sc->sc_dev.dv_xname);
   error = 12;
   break;
  }
 }
 if (error != 0)
  rsu_free_rx_list(sc);
 return (error);
}
void
rsu_free_rx_list(struct rsu_softc *sc)
{
 int i;
 for (i = 0; i < 1; i++) {
  if (sc->rx_data[i].xfer != ((void *)0))
   usbd_free_xfer(sc->rx_data[i].xfer);
  sc->rx_data[i].xfer = ((void *)0);
 }
}
int
rsu_alloc_tx_list(struct rsu_softc *sc)
{
 struct rsu_tx_data *data;
 int i, error = 0;
 do { (&sc->tx_free_list)->tqh_first = ((void *)0); (&sc->tx_free_list)->tqh_last = &(&sc->tx_free_list)->tqh_first; } while (0);
 for (i = 0; i < (8 + 1); i++) {
  data = &sc->tx_data[i];
  data->sc = sc;
  data->xfer = usbd_alloc_xfer(sc->sc_udev);
  if (data->xfer == ((void *)0)) {
   printf("%s: could not allocate xfer\n",
       sc->sc_dev.dv_xname);
   error = 12;
   break;
  }
  data->buf = usbd_alloc_buffer(data->xfer, ((sizeof(struct r92s_tx_desc) + (2300 + 4 + (3 + 1 + 4)) + 3) & ~3));
  if (data->buf == ((void *)0)) {
   printf("%s: could not allocate xfer buffer\n",
       sc->sc_dev.dv_xname);
   error = 12;
   break;
  }
  do { (data)->next.tqe_next = ((void *)0); (data)->next.tqe_prev = (&sc->tx_free_list)->tqh_last; *(&sc->tx_free_list)->tqh_last = (data); (&sc->tx_free_list)->tqh_last = &(data)->next.tqe_next; } while (0);
 }
 if (error != 0)
  rsu_free_tx_list(sc);
 return (error);
}
void
rsu_free_tx_list(struct rsu_softc *sc)
{
 int i;
 for (i = 0; i < (8 + 1); i++) {
  if (sc->tx_data[i].xfer != ((void *)0))
   usbd_free_xfer(sc->tx_data[i].xfer);
  sc->tx_data[i].xfer = ((void *)0);
 }
}
void
rsu_task(void *arg)
{
 struct rsu_softc *sc = arg;
 struct rsu_host_cmd_ring *ring = &sc->cmdq;
 struct rsu_host_cmd *cmd;
 int s;
 s = splraise(2);
 while (ring->next != ring->cur) {
  cmd = &ring->cmd[ring->next];
  _splx(s);
  cmd->cb(sc, cmd->data);
  s = splraise(2);
  ring->queued--;
  ring->next = (ring->next + 1) % 32;
 }
 _splx(s);
}
void
rsu_do_async(struct rsu_softc *sc,
    void (*cb)(struct rsu_softc *, void *), void *arg, int len)
{
 struct rsu_host_cmd_ring *ring = &sc->cmdq;
 struct rsu_host_cmd *cmd;
 int s;
 s = splraise(2);
 cmd = &ring->cmd[ring->cur];
 cmd->cb = cb;
 ((len <= sizeof(cmd->data)) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../dev/usb/if_rsu.c", 512, "len <= sizeof(cmd->data)"));
 __builtin_memcpy((cmd->data), (arg), (len));
 ring->cur = (ring->cur + 1) % 32;
 if (++ring->queued == 1)
  usb_add_task(sc->sc_udev, &sc->sc_task);
 _splx(s);
}
void
rsu_wait_async(struct rsu_softc *sc)
{
 usb_wait_task(sc->sc_udev, &sc->sc_task);
}
int
rsu_write_region_1(struct rsu_softc *sc, uint16_t addr, uint8_t *buf,
    int len)
{
 usb_device_request_t req;
 req.bmRequestType = (0x00 | 0x40 | 0x00);
 req.bRequest = 0x05;
 ((req.wValue)[0] = (u_int8_t)(addr), (req.wValue)[1] = (u_int8_t)((addr) >> 8));
 ((req.wIndex)[0] = (u_int8_t)(0), (req.wIndex)[1] = (u_int8_t)((0) >> 8));
 ((req.wLength)[0] = (u_int8_t)(len), (req.wLength)[1] = (u_int8_t)((len) >> 8));
 return (usbd_do_request(sc->sc_udev, &req, buf));
}
void
rsu_write_1(struct rsu_softc *sc, uint16_t addr, uint8_t val)
{
 rsu_write_region_1(sc, addr, &val, 1);
}
void
rsu_write_2(struct rsu_softc *sc, uint16_t addr, uint16_t val)
{
 val = (__builtin_constant_p(val) ? (__uint16_t)(((__uint16_t)(val) & 0xffU) << 8 | ((__uint16_t)(val) & 0xff00U) >> 8) : __swap16md(val));
 rsu_write_region_1(sc, addr, (uint8_t *)&val, 2);
}
void
rsu_write_4(struct rsu_softc *sc, uint16_t addr, uint32_t val)
{
 val = (__builtin_constant_p(val) ? (__uint32_t)(((__uint32_t)(val) & 0xff) << 24 | ((__uint32_t)(val) & 0xff00) << 8 | ((__uint32_t)(val) & 0xff0000) >> 8 | ((__uint32_t)(val) & 0xff000000) >> 24) : __swap32md(val));
 rsu_write_region_1(sc, addr, (uint8_t *)&val, 4);
}
int
rsu_read_region_1(struct rsu_softc *sc, uint16_t addr, uint8_t *buf,
    int len)
{
 usb_device_request_t req;
 req.bmRequestType = (0x80 | 0x40 | 0x00);
 req.bRequest = 0x05;
 ((req.wValue)[0] = (u_int8_t)(addr), (req.wValue)[1] = (u_int8_t)((addr) >> 8));
 ((req.wIndex)[0] = (u_int8_t)(0), (req.wIndex)[1] = (u_int8_t)((0) >> 8));
 ((req.wLength)[0] = (u_int8_t)(len), (req.wLength)[1] = (u_int8_t)((len) >> 8));
 return (usbd_do_request(sc->sc_udev, &req, buf));
}
uint8_t
rsu_read_1(struct rsu_softc *sc, uint16_t addr)
{
 uint8_t val;
 if (rsu_read_region_1(sc, addr, &val, 1) != 0)
  return (0xff);
 return (val);
}
uint16_t
rsu_read_2(struct rsu_softc *sc, uint16_t addr)
{
 uint16_t val;
 if (rsu_read_region_1(sc, addr, (uint8_t *)&val, 2) != 0)
  return (0xffff);
 return ((__builtin_constant_p(val) ? (__uint16_t)(((__uint16_t)(val) & 0xffU) << 8 | ((__uint16_t)(val) & 0xff00U) >> 8) : __swap16md(val)));
}
uint32_t
rsu_read_4(struct rsu_softc *sc, uint16_t addr)
{
 uint32_t val;
 if (rsu_read_region_1(sc, addr, (uint8_t *)&val, 4) != 0)
  return (0xffffffff);
 return ((__builtin_constant_p(val) ? (__uint32_t)(((__uint32_t)(val) & 0xff) << 24 | ((__uint32_t)(val) & 0xff00) << 8 | ((__uint32_t)(val) & 0xff0000) >> 8 | ((__uint32_t)(val) & 0xff000000) >> 24) : __swap32md(val)));
}
int
rsu_fw_iocmd(struct rsu_softc *sc, uint32_t iocmd)
{
 int ntries;
 rsu_write_4(sc, 0x0370, iocmd);
 delay(100);
 for (ntries = 0; ntries < 50; ntries++) {
  if (rsu_read_4(sc, 0x0370) == 0)
   return (0);
  delay(10);
 }
 return (60);
}
uint8_t
rsu_efuse_read_1(struct rsu_softc *sc, uint16_t addr)
{
 uint32_t reg64;
 int ntries;
 reg64 = rsu_read_4(sc, (0x0000 + 0x030));
 reg64 = (((reg64) & ~0x0003ff00) | (((addr) << 8) & 0x0003ff00));
 reg64 &= ~0x80000000;
 rsu_write_4(sc, (0x0000 + 0x030), reg64);
 for (ntries = 0; ntries < 100; ntries++) {
  reg64 = rsu_read_4(sc, (0x0000 + 0x030));
  if (reg64 & 0x80000000)
   return ((((reg64) & 0x000000ff) >> 0));
  delay(5);
 }
 printf("%s: could not read efuse byte at address 0x%x\n",
     sc->sc_dev.dv_xname, addr);
 return (0xff);
}
int
rsu_read_rom(struct rsu_softc *sc)
{
 uint8_t *rom = sc->rom;
 uint16_t addr = 0;
 uint32_t reg64;
 uint8_t off, msk;
 int i;
 reg64 = rsu_read_1(sc, (0x0000 + 0x00a));
 if ((reg64 & (0x10 | 0x20)) != 0x20)
  return (5);
 reg64 = rsu_read_1(sc, (0x0000 + 0x034) + 3);
 rsu_write_1(sc, (0x0000 + 0x034) + 3, reg64 | 0x80);
 delay(1000);
 rsu_write_1(sc, (0x0000 + 0x034) + 3, reg64 & ~0x80);
 __builtin_memset((&sc->rom), (0xff), (sizeof(sc->rom)));
 while (addr < 512) {
  reg64 = rsu_efuse_read_1(sc, addr);
  if (reg64 == 0xff)
   break;
  addr++;
  off = reg64 >> 4;
  msk = reg64 & 0xf;
  for (i = 0; i < 4; i++) {
   if (msk & (1 << i))
    continue;
   rom[off * 8 + i * 2 + 0] =
       rsu_efuse_read_1(sc, addr);
   addr++;
   rom[off * 8 + i * 2 + 1] =
       rsu_efuse_read_1(sc, addr);
   addr++;
  }
 }
 return (0);
}
int
rsu_fw_cmd(struct rsu_softc *sc, uint8_t code, void *buf, int len)
{
 struct rsu_tx_data *data;
 struct r92s_tx_desc *txd;
 struct r92s_fw_cmd_hdr *cmd;
 struct usbd_pipe *pipe;
 int cmdsz, xferlen;
 data = sc->fwcmd_data;
 cmdsz = (len + 7) & ~7;
 xferlen = sizeof(*txd) + sizeof(*cmd) + cmdsz;
 ((xferlen <= ((sizeof(struct r92s_tx_desc) + (2300 + 4 + (3 + 1 + 4)) + 3) & ~3)) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../dev/usb/if_rsu.c", 711, "xferlen <= RSU_TXBUFSZ"));
 __builtin_memset((data->buf), (0), (xferlen));
 txd = (struct r92s_tx_desc *)data->buf;
 txd->txdw0 = (__builtin_constant_p((((sizeof(*txd)) << 16) & 0x00ff0000) | (((sizeof(*cmd) + cmdsz) << 0) & 0x0000ffff) | 0x80000000 | 0x08000000 | 0x04000000) ? (__uint32_t)(((__uint32_t)((((sizeof(*txd)) << 16) & 0x00ff0000) | (((sizeof(*cmd) + cmdsz) << 0) & 0x0000ffff) | 0x80000000 | 0x08000000 | 0x04000000) & 0xff) << 24 | ((__uint32_t)((((sizeof(*txd)) << 16) & 0x00ff0000) | (((sizeof(*cmd) + cmdsz) << 0) & 0x0000ffff) | 0x80000000 | 0x08000000 | 0x04000000) & 0xff00) << 8 | ((__uint32_t)((((sizeof(*txd)) << 16) & 0x00ff0000) | (((sizeof(*cmd) + cmdsz) << 0) & 0x0000ffff) | 0x80000000 | 0x08000000 | 0x04000000) & 0xff0000) >> 8 | ((__uint32_t)((((sizeof(*txd)) << 16) & 0x00ff0000) | (((sizeof(*cmd) + cmdsz) << 0) & 0x0000ffff) | 0x80000000 | 0x08000000 | 0x04000000) & 0xff000000) >> 24) : __swap32md((((sizeof(*txd)) << 16) & 0x00ff0000) | (((sizeof(*cmd) + cmdsz) << 0) & 0x0000ffff) | 0x80000000 | 0x08000000 | 0x04000000));
 txd->txdw1 = (__builtin_constant_p((((0x1f) << 8) & 0x00001f00)) ? (__uint32_t)(((__uint32_t)((((0x1f) << 8) & 0x00001f00)) & 0xff) << 24 | ((__uint32_t)((((0x1f) << 8) & 0x00001f00)) & 0xff00) << 8 | ((__uint32_t)((((0x1f) << 8) & 0x00001f00)) & 0xff0000) >> 8 | ((__uint32_t)((((0x1f) << 8) & 0x00001f00)) & 0xff000000) >> 24) : __swap32md((((0x1f) << 8) & 0x00001f00)));
 cmd = (struct r92s_fw_cmd_hdr *)&txd[1];
 cmd->len = (__builtin_constant_p(cmdsz) ? (__uint16_t)(((__uint16_t)(cmdsz) & 0xffU) << 8 | ((__uint16_t)(cmdsz) & 0xff00U) >> 8) : __swap16md(cmdsz));
 cmd->code = code;
 cmd->seq = sc->cmd_seq;
 sc->cmd_seq = (sc->cmd_seq + 1) & 0x7f;
 __builtin_memcpy((&cmd[1]), (buf), (len));
 ;
 pipe = sc->pipe[sc->qid2idx[8]];
 usbd_setup_xfer(data->xfer, pipe, ((void *)0), data->buf, xferlen,
     0x04 | 0x01 | 0x02,
     2000, ((void *)0));
 return (usbd_transfer(data->xfer));
}
int
rsu_media_change(struct ifnet *ifp)
{
 int error;
 error = ieee80211_media_change(ifp);
 if (error != 52)
  return (error);
 if ((ifp->if_flags & (0x1 | 0x40)) ==
     (0x1 | 0x40)) {
  rsu_stop(ifp);
  rsu_init(ifp);
 }
 return (0);
}
void
rsu_calib_to(void *arg)
{
 struct rsu_softc *sc = arg;
 if (usbd_is_dying(sc->sc_udev))
  return;
 usbd_ref_incr(sc->sc_udev);
 rsu_do_async(sc, rsu_calib_cb, ((void *)0), 0);
 usbd_ref_decr(sc->sc_udev);
}
void
rsu_calib_cb(struct rsu_softc *sc, void *arg)
{
 uint32_t reg64;
 if (rsu_fw_iocmd(sc, 0xf4000001) == 0) {
  reg64 = rsu_read_4(sc, 0x0374);
  ;
 }
 if (!usbd_is_dying(sc->sc_udev))
  timeout_add_sec(&sc->calib_to, 2);
}
int
rsu_newstate(struct ieee80211com *ic, enum ieee80211_state nstate, int arg)
{
 struct rsu_softc *sc = ic->ic_ac.ac_if.if_softc;
 struct rsu_cmd_newstate cmd;
 cmd.state = nstate;
 cmd.arg = arg;
 rsu_do_async(sc, rsu_newstate_cb, &cmd, sizeof(cmd));
 return (0);
}
void
rsu_newstate_cb(struct rsu_softc *sc, void *arg)
{
 struct rsu_cmd_newstate *cmd = arg;
 struct ieee80211com *ic = &sc->sc_ic;
 enum ieee80211_state ostate;
 int error, s;
 s = _splraise(6);
 ostate = ic->ic_state;
 ;
 if (ostate == IEEE80211_S_RUN) {
  timeout_del(&sc->calib_to);
  (void)rsu_disconnect(sc);
 }
 switch (cmd->state) {
 case IEEE80211_S_INIT:
  break;
 case IEEE80211_S_SCAN:
  error = rsu_site_survey(sc);
  if (error != 0) {
   printf("%s: could not send site survey command\n",
       sc->sc_dev.dv_xname);
  }
  ic->ic_state = cmd->state;
  _splx(s);
  return;
 case IEEE80211_S_AUTH:
  ic->ic_bss->ni_rsn_supp_state = RSNA_SUPP_INITIALIZE;
  error = rsu_join_bss(sc, ic->ic_bss);
  if (error != 0) {
   printf("%s: could not send join command\n",
       sc->sc_dev.dv_xname);
   ieee80211_begin_scan(&ic->ic_ac.ac_if);
   _splx(s);
   return;
  }
  ic->ic_state = cmd->state;
  if (ic->ic_flags & 0x00200000)
   ic->ic_bss->ni_rsn_supp_state = RSNA_SUPP_PTKSTART;
  _splx(s);
  return;
 case IEEE80211_S_ASSOC:
  ic->ic_state = cmd->state;
  _splx(s);
  return;
 case IEEE80211_S_RUN:
  ic->ic_bss->ni_txrate = ic->ic_bss->ni_rates.rs_nrates - 1;
  if (!usbd_is_dying(sc->sc_udev))
   timeout_add_sec(&sc->calib_to, 2);
  break;
 }
 (void)sc->sc_newstate(ic, cmd->state, cmd->arg);
 _splx(s);
}
int
rsu_set_key(struct ieee80211com *ic, struct ieee80211_node *ni,
    struct ieee80211_key *k)
{
 struct rsu_softc *sc = ic->ic_ac.ac_if.if_softc;
 struct rsu_cmd_key cmd;
 if ((ic->ic_ac.ac_if.if_flags & (0x1 | 0x40)) !=
     (0x1 | 0x40))
  return (0);
 cmd.key = *k;
 rsu_do_async(sc, rsu_set_key_cb, &cmd, sizeof(cmd));
 return (0);
}
void
rsu_set_key_cb(struct rsu_softc *sc, void *arg)
{
 struct rsu_cmd_key *cmd = arg;
 struct ieee80211_key *k = &cmd->key;
 struct r92s_fw_cmd_set_key key;
 __builtin_memset((&key), (0), (sizeof(key)));
 switch (k->k_cipher) {
 case IEEE80211_CIPHER_WEP40:
  key.algo = 1;
  break;
 case IEEE80211_CIPHER_WEP104:
  key.algo = 5;
  break;
 case IEEE80211_CIPHER_TKIP:
  key.algo = 2;
  break;
 case IEEE80211_CIPHER_CCMP:
  key.algo = 4;
  break;
 default:
  return;
 }
 key.id = k->k_id;
 key.grpkey = (k->k_flags & 0x00000001) != 0;
 __builtin_memcpy((key.key), (k->k_key), ((((k->k_len)<(sizeof(key.key)))?(k->k_len):(sizeof(key.key)))));
 (void)rsu_fw_cmd(sc, 20, &key, sizeof(key));
}
void
rsu_delete_key(struct ieee80211com *ic, struct ieee80211_node *ni,
    struct ieee80211_key *k)
{
 struct rsu_softc *sc = ic->ic_ac.ac_if.if_softc;
 struct rsu_cmd_key cmd;
 if (!(ic->ic_ac.ac_if.if_flags & 0x40) ||
     ic->ic_state != IEEE80211_S_RUN)
  return;
 cmd.key = *k;
 rsu_do_async(sc, rsu_delete_key_cb, &cmd, sizeof(cmd));
}
void
rsu_delete_key_cb(struct rsu_softc *sc, void *arg)
{
 struct rsu_cmd_key *cmd = arg;
 struct ieee80211_key *k = &cmd->key;
 struct r92s_fw_cmd_set_key key;
 __builtin_memset((&key), (0), (sizeof(key)));
 key.id = k->k_id;
 (void)rsu_fw_cmd(sc, 20, &key, sizeof(key));
}
int
rsu_site_survey(struct rsu_softc *sc)
{
 struct ieee80211com *ic = &sc->sc_ic;
 struct r92s_fw_cmd_sitesurvey cmd;
 __builtin_memset((&cmd), (0), (sizeof(cmd)));
 if ((ic->ic_flags & 0x00000001) || sc->scan_pass == 1)
  cmd.active = (__builtin_constant_p(1) ? (__uint32_t)(((__uint32_t)(1) & 0xff) << 24 | ((__uint32_t)(1) & 0xff00) << 8 | ((__uint32_t)(1) & 0xff0000) >> 8 | ((__uint32_t)(1) & 0xff000000) >> 24) : __swap32md(1));
 cmd.limit = (__builtin_constant_p(48) ? (__uint32_t)(((__uint32_t)(48) & 0xff) << 24 | ((__uint32_t)(48) & 0xff00) << 8 | ((__uint32_t)(48) & 0xff0000) >> 8 | ((__uint32_t)(48) & 0xff000000) >> 24) : __swap32md(48));
 if (sc->scan_pass == 1) {
  cmd.ssidlen = (__builtin_constant_p(ic->ic_des_esslen) ? (__uint32_t)(((__uint32_t)(ic->ic_des_esslen) & 0xff) << 24 | ((__uint32_t)(ic->ic_des_esslen) & 0xff00) << 8 | ((__uint32_t)(ic->ic_des_esslen) & 0xff0000) >> 8 | ((__uint32_t)(ic->ic_des_esslen) & 0xff000000) >> 24) : __swap32md(ic->ic_des_esslen));
  __builtin_memcpy((cmd.ssid), (ic->ic_des_essid), (ic->ic_des_esslen));
 }
 ;
 return (rsu_fw_cmd(sc, 18, &cmd, sizeof(cmd)));
}
int
rsu_join_bss(struct rsu_softc *sc, struct ieee80211_node *ni)
{
 struct ieee80211com *ic = &sc->sc_ic;
 struct ndis_wlan_bssid_ex *bss;
 struct ndis_802_11_fixed_ies *fixed;
 struct r92s_fw_cmd_auth auth;
 uint8_t buf[sizeof(*bss) + 128], *frm;
 uint8_t opmode;
 int error;
 opmode = 2;
 ;
 error = rsu_fw_cmd(sc, 17, &opmode, sizeof(opmode));
 if (error != 0)
  return (error);
 __builtin_memset((&auth), (0), (sizeof(auth)));
 if (ic->ic_flags & 0x00200000) {
  auth.mode = 2;
  auth.dot1x = ieee80211_is_8021x_akm(ni->ni_rsnakms);
 } else
  auth.mode = 0;
 ;
 error = rsu_fw_cmd(sc, 19, &auth, sizeof(auth));
 if (error != 0)
  return (error);
 __builtin_memset((buf), (0), (sizeof(buf)));
 bss = (struct ndis_wlan_bssid_ex *)buf;
 __builtin_memcpy((bss->macaddr), (ni->ni_bssid), (6));
 bss->ssid.ssidlen = (__builtin_constant_p(ni->ni_esslen) ? (__uint32_t)(((__uint32_t)(ni->ni_esslen) & 0xff) << 24 | ((__uint32_t)(ni->ni_esslen) & 0xff00) << 8 | ((__uint32_t)(ni->ni_esslen) & 0xff0000) >> 8 | ((__uint32_t)(ni->ni_esslen) & 0xff000000) >> 24) : __swap32md(ni->ni_esslen));
 __builtin_memcpy((bss->ssid.ssid), (ni->ni_essid), (ni->ni_esslen));
 if (ic->ic_flags & (0x00000100 | 0x00200000))
  bss->privacy = (__builtin_constant_p(1) ? (__uint32_t)(((__uint32_t)(1) & 0xff) << 24 | ((__uint32_t)(1) & 0xff00) << 8 | ((__uint32_t)(1) & 0xff0000) >> 8 | ((__uint32_t)(1) & 0xff000000) >> 24) : __swap32md(1));
 bss->rssi = (__builtin_constant_p(ni->ni_rssi) ? (__uint32_t)(((__uint32_t)(ni->ni_rssi) & 0xff) << 24 | ((__uint32_t)(ni->ni_rssi) & 0xff00) << 8 | ((__uint32_t)(ni->ni_rssi) & 0xff0000) >> 8 | ((__uint32_t)(ni->ni_rssi) & 0xff000000) >> 24) : __swap32md(ni->ni_rssi));
 if (ic->ic_curmode == IEEE80211_MODE_11B)
  bss->networktype = (__builtin_constant_p(1) ? (__uint32_t)(((__uint32_t)(1) & 0xff) << 24 | ((__uint32_t)(1) & 0xff00) << 8 | ((__uint32_t)(1) & 0xff0000) >> 8 | ((__uint32_t)(1) & 0xff000000) >> 24) : __swap32md(1));
 else
  bss->networktype = (__builtin_constant_p(3) ? (__uint32_t)(((__uint32_t)(3) & 0xff) << 24 | ((__uint32_t)(3) & 0xff00) << 8 | ((__uint32_t)(3) & 0xff0000) >> 8 | ((__uint32_t)(3) & 0xff000000) >> 24) : __swap32md(3));
 bss->config.len = (__builtin_constant_p(sizeof(bss->config)) ? (__uint32_t)(((__uint32_t)(sizeof(bss->config)) & 0xff) << 24 | ((__uint32_t)(sizeof(bss->config)) & 0xff00) << 8 | ((__uint32_t)(sizeof(bss->config)) & 0xff0000) >> 8 | ((__uint32_t)(sizeof(bss->config)) & 0xff000000) >> 24) : __swap32md(sizeof(bss->config)));
 bss->config.bintval = (__builtin_constant_p(ni->ni_intval) ? (__uint32_t)(((__uint32_t)(ni->ni_intval) & 0xff) << 24 | ((__uint32_t)(ni->ni_intval) & 0xff00) << 8 | ((__uint32_t)(ni->ni_intval) & 0xff0000) >> 8 | ((__uint32_t)(ni->ni_intval) & 0xff000000) >> 24) : __swap32md(ni->ni_intval));
 bss->config.dsconfig = (__builtin_constant_p(ieee80211_chan2ieee(ic, ni->ni_chan)) ? (__uint32_t)(((__uint32_t)(ieee80211_chan2ieee(ic, ni->ni_chan)) & 0xff) << 24 | ((__uint32_t)(ieee80211_chan2ieee(ic, ni->ni_chan)) & 0xff00) << 8 | ((__uint32_t)(ieee80211_chan2ieee(ic, ni->ni_chan)) & 0xff0000) >> 8 | ((__uint32_t)(ieee80211_chan2ieee(ic, ni->ni_chan)) & 0xff000000) >> 24) : __swap32md(ieee80211_chan2ieee(ic, ni->ni_chan)));
 bss->inframode = (__builtin_constant_p(1) ? (__uint32_t)(((__uint32_t)(1) & 0xff) << 24 | ((__uint32_t)(1) & 0xff00) << 8 | ((__uint32_t)(1) & 0xff0000) >> 8 | ((__uint32_t)(1) & 0xff000000) >> 24) : __swap32md(1));
 __builtin_memcpy((bss->supprates), (ni->ni_rates.rs_rates), (ni->ni_rates.rs_nrates));
 fixed = (struct ndis_802_11_fixed_ies *)&bss[1];
 __builtin_memcpy((&fixed->tstamp), (ni->ni_tstamp), (8));
 fixed->bintval = (__builtin_constant_p(ni->ni_intval) ? (__uint16_t)(((__uint16_t)(ni->ni_intval) & 0xffU) << 8 | ((__uint16_t)(ni->ni_intval) & 0xff00U) >> 8) : __swap16md(ni->ni_intval));
 fixed->capabilities = (__builtin_constant_p(ni->ni_capinfo) ? (__uint16_t)(((__uint16_t)(ni->ni_capinfo) & 0xffU) << 8 | ((__uint16_t)(ni->ni_capinfo) & 0xff00U) >> 8) : __swap16md(ni->ni_capinfo));
 frm = (uint8_t *)&fixed[1];
 if ((ic->ic_flags & 0x00200000) &&
     (ni->ni_rsnprotos & (1 << 0)))
  frm = ieee80211_add_rsn(frm, ic, ni);
 if (ni->ni_flags & 0x0002)
  frm = ieee80211_add_qos_capability(frm, ic);
 if (ni->ni_flags & 0x0400)
  frm = ieee80211_add_htcaps(frm, ic);
 if ((ic->ic_flags & 0x00200000) &&
     (ni->ni_rsnprotos & (1 << 1)))
  frm = ieee80211_add_wpa(frm, ic, ni);
 bss->ieslen = (__builtin_constant_p(frm - (uint8_t *)fixed) ? (__uint32_t)(((__uint32_t)(frm - (uint8_t *)fixed) & 0xff) << 24 | ((__uint32_t)(frm - (uint8_t *)fixed) & 0xff00) << 8 | ((__uint32_t)(frm - (uint8_t *)fixed) & 0xff0000) >> 8 | ((__uint32_t)(frm - (uint8_t *)fixed) & 0xff000000) >> 24) : __swap32md(frm - (uint8_t *)fixed));
 bss->len = (__builtin_constant_p(((frm - buf) + 3) & ~3) ? (__uint32_t)(((__uint32_t)(((frm - buf) + 3) & ~3) & 0xff) << 24 | ((__uint32_t)(((frm - buf) + 3) & ~3) & 0xff00) << 8 | ((__uint32_t)(((frm - buf) + 3) & ~3) & 0xff0000) >> 8 | ((__uint32_t)(((frm - buf) + 3) & ~3) & 0xff000000) >> 24) : __swap32md(((frm - buf) + 3) & ~3));
 ;
 return (rsu_fw_cmd(sc, 14, buf, sizeof(buf)));
}
int
rsu_disconnect(struct rsu_softc *sc)
{
 uint32_t zero = 0;
 ;
 return (rsu_fw_cmd(sc, 15, &zero, sizeof(zero)));
}
void
rsu_event_survey(struct rsu_softc *sc, uint8_t *buf, int len)
{
 struct ieee80211com *ic = &sc->sc_ic;
 struct ifnet *ifp = &ic->ic_ac.ac_if;
 struct ieee80211_rxinfo rxi;
 struct ieee80211_node *ni;
 struct ieee80211_frame *wh;
 struct ndis_wlan_bssid_ex *bss;
 struct mbuf *m;
 uint32_t pktlen, ieslen;
 if (__builtin_expect(((len < sizeof(*bss)) != 0), 0))
  return;
 bss = (struct ndis_wlan_bssid_ex *)buf;
 ieslen = (__builtin_constant_p(bss->ieslen) ? (__uint32_t)(((__uint32_t)(bss->ieslen) & 0xff) << 24 | ((__uint32_t)(bss->ieslen) & 0xff00) << 8 | ((__uint32_t)(bss->ieslen) & 0xff0000) >> 8 | ((__uint32_t)(bss->ieslen) & 0xff000000) >> 24) : __swap32md(bss->ieslen));
 if (ieslen > len - sizeof(*bss))
  return;
 ;
 pktlen = sizeof(*wh) + ieslen;
 if (__builtin_expect(((pktlen > (1 << 11)) != 0), 0))
  return;
 m = m_gethdr((0x0002), (1));
 if (__builtin_expect(((m == ((void *)0)) != 0), 0))
  return;
 if (pktlen > ((256 - sizeof(struct m_hdr)) - sizeof(struct pkthdr))) {
  (void) m_clget((m), (0x0002), (1 << 11));
  if (!(m->m_hdr.mh_flags & 0x0001)) {
   m_free(m);
   return;
  }
 }
 wh = ((struct ieee80211_frame *)((m)->m_hdr.mh_data));
 wh->i_fc[0] = 0x00 | 0x00 |
     0x80;
 wh->i_fc[1] = 0x00;
 *(uint16_t *)wh->i_dur = 0;
 __builtin_memcpy((wh->i_addr1), (etherbroadcastaddr), (6));
 __builtin_memcpy((wh->i_addr2), (bss->macaddr), (6));
 __builtin_memcpy((wh->i_addr3), (bss->macaddr), (6));
 *(uint16_t *)wh->i_seq = 0;
 __builtin_memcpy((&wh[1]), ((uint8_t *)&bss[1]), (ieslen));
 m->M_dat.MH.MH_pkthdr.len = m->m_hdr.mh_len = pktlen;
 ni = ieee80211_find_rxnode(ic, wh);
 rxi.rxi_flags = 0;
 rxi.rxi_rssi = (__builtin_constant_p(bss->rssi) ? (__uint32_t)(((__uint32_t)(bss->rssi) & 0xff) << 24 | ((__uint32_t)(bss->rssi) & 0xff00) << 8 | ((__uint32_t)(bss->rssi) & 0xff0000) >> 8 | ((__uint32_t)(bss->rssi) & 0xff000000) >> 24) : __swap32md(bss->rssi));
 rxi.rxi_tstamp = 0;
 ieee80211_input(ifp, m, ni, &rxi);
 ieee80211_release_node(ic, ni);
}
void
rsu_event_join_bss(struct rsu_softc *sc, uint8_t *buf, int len)
{
 struct ieee80211com *ic = &sc->sc_ic;
 struct ieee80211_node *ni = ic->ic_bss;
 struct r92s_event_join_bss *rsp;
 int res;
 if (__builtin_expect(((len < sizeof(*rsp)) != 0), 0))
  return;
 rsp = (struct r92s_event_join_bss *)buf;
 res = (int)(__builtin_constant_p(rsp->join_res) ? (__uint32_t)(((__uint32_t)(rsp->join_res) & 0xff) << 24 | ((__uint32_t)(rsp->join_res) & 0xff00) << 8 | ((__uint32_t)(rsp->join_res) & 0xff0000) >> 8 | ((__uint32_t)(rsp->join_res) & 0xff000000) >> 24) : __swap32md(rsp->join_res));
 ;
 if (res <= 0) {
  ic->ic_stats.is_rx_auth_fail++;
  (((ic)->ic_newstate)((ic), (IEEE80211_S_SCAN), (-1)));
  return;
 }
 ;
 ni->ni_associd = (__builtin_constant_p(rsp->associd) ? (__uint32_t)(((__uint32_t)(rsp->associd) & 0xff) << 24 | ((__uint32_t)(rsp->associd) & 0xff00) << 8 | ((__uint32_t)(rsp->associd) & 0xff0000) >> 8 | ((__uint32_t)(rsp->associd) & 0xff000000) >> 24) : __swap32md(rsp->associd)) | 0xc000;
 if (ic->ic_flags & 0x00000100)
  ni->ni_flags |= (0x0010 | 0x0008);
 ic->ic_state = IEEE80211_S_ASSOC;
 (((ic)->ic_newstate)((ic), (IEEE80211_S_RUN), (0x10)));
}
void
rsu_rx_event(struct rsu_softc *sc, uint8_t code, uint8_t *buf, int len)
{
 struct ieee80211com *ic = &sc->sc_ic;
 struct ifnet *ifp = &ic->ic_ac.ac_if;
 ;
 switch (code) {
 case 8:
  if (ic->ic_state == IEEE80211_S_SCAN)
   rsu_event_survey(sc, buf, len);
  break;
 case 9:
  ;
  if (ic->ic_state != IEEE80211_S_SCAN)
   break;
  if (sc->scan_pass == 0 && ic->ic_des_esslen != 0) {
   sc->scan_pass = 1;
   (((ic)->ic_newstate)((ic), (IEEE80211_S_SCAN), (-1)));
   break;
  }
  ieee80211_end_scan(ifp);
  sc->scan_pass = 0;
  break;
 case 10:
  if (ic->ic_state == IEEE80211_S_AUTH)
   rsu_event_join_bss(sc, buf, len);
  break;
 case 12:
  ;
  if (ic->ic_state == IEEE80211_S_RUN &&
      (__builtin_memcmp((ic->ic_bss->ni_bssid), (buf), (6)) == 0))
   (((ic)->ic_newstate)((ic), (IEEE80211_S_SCAN), (-1)));
  break;
 case 24:
  ;
  break;
 case 19:
  if (ifp->if_flags & 0x4) {
   buf[60] = '\0';
   printf("FWDBG: %s\n", (char *)buf);
  }
  break;
 }
}
void
rsu_rx_multi_event(struct rsu_softc *sc, uint8_t *buf, int len)
{
 struct r92s_fw_cmd_hdr *cmd;
 int cmdsz;
 ;
 buf += sizeof(struct r92s_rx_stat);
 len -= sizeof(struct r92s_rx_stat);
 for (;;) {
  if (__builtin_expect(((len < sizeof(*cmd)) != 0), 0))
   break;
  cmd = (struct r92s_fw_cmd_hdr *)buf;
  cmdsz = (__builtin_constant_p(cmd->len) ? (__uint16_t)(((__uint16_t)(cmd->len) & 0xffU) << 8 | ((__uint16_t)(cmd->len) & 0xff00U) >> 8) : __swap16md(cmd->len));
  if (__builtin_expect(((len < sizeof(*cmd) + cmdsz) != 0), 0))
   break;
  if (cmdsz > len)
   break;
  rsu_rx_event(sc, cmd->code, (uint8_t *)&cmd[1], cmdsz);
  if (!(cmd->seq & 0x80))
   break;
  buf += sizeof(*cmd) + cmdsz;
  len -= sizeof(*cmd) + cmdsz;
 }
}
int8_t
rsu_get_rssi(struct rsu_softc *sc, int rate, void *physt)
{
 static const int8_t cckoff[] = { 14, -2, -20, -40 };
 struct r92s_rx_phystat *phy;
 struct r92s_rx_cck *cck;
 uint8_t rpt;
 int8_t rssi;
 if (rate <= 3) {
  cck = (struct r92s_rx_cck *)physt;
  rpt = (cck->agc_rpt >> 6) & 0x3;
  rssi = cck->agc_rpt & 0x3e;
  rssi = cckoff[rpt] - rssi;
 } else {
  phy = (struct r92s_rx_phystat *)physt;
  rssi = (((__builtin_constant_p(phy->phydw1) ? (__uint32_t)(((__uint32_t)(phy->phydw1) & 0xff) << 24 | ((__uint32_t)(phy->phydw1) & 0xff00) << 8 | ((__uint32_t)(phy->phydw1) & 0xff0000) >> 8 | ((__uint32_t)(phy->phydw1) & 0xff000000) >> 24) : __swap32md(phy->phydw1)) >> 1) & 0x7f) - 106;
 }
 return (rssi);
}
void
rsu_rx_frame(struct rsu_softc *sc, uint8_t *buf, int pktlen)
{
 struct ieee80211com *ic = &sc->sc_ic;
 struct ifnet *ifp = &ic->ic_ac.ac_if;
 struct ieee80211_rxinfo rxi;
 struct ieee80211_frame *wh;
 struct ieee80211_node *ni;
 struct r92s_rx_stat *stat;
 uint32_t rxdw0, rxdw3;
 struct mbuf *m;
 uint8_t rate;
 int8_t rssi = 0;
 int s, infosz;
 stat = (struct r92s_rx_stat *)buf;
 rxdw0 = (__builtin_constant_p(stat->rxdw0) ? (__uint32_t)(((__uint32_t)(stat->rxdw0) & 0xff) << 24 | ((__uint32_t)(stat->rxdw0) & 0xff00) << 8 | ((__uint32_t)(stat->rxdw0) & 0xff0000) >> 8 | ((__uint32_t)(stat->rxdw0) & 0xff000000) >> 24) : __swap32md(stat->rxdw0));
 rxdw3 = (__builtin_constant_p(stat->rxdw3) ? (__uint32_t)(((__uint32_t)(stat->rxdw3) & 0xff) << 24 | ((__uint32_t)(stat->rxdw3) & 0xff00) << 8 | ((__uint32_t)(stat->rxdw3) & 0xff0000) >> 8 | ((__uint32_t)(stat->rxdw3) & 0xff000000) >> 24) : __swap32md(stat->rxdw3));
 if (__builtin_expect(((rxdw0 & 0x00004000) != 0), 0)) {
  ifp->if_data.ifi_ierrors++;
  return;
 }
 if (__builtin_expect(((pktlen < sizeof(*wh) || pktlen > (1 << 11)) != 0), 0)) {
  ifp->if_data.ifi_ierrors++;
  return;
 }
 rate = (((rxdw3) & 0x0000003f) >> 0);
 infosz = (((rxdw0) & 0x000f0000) >> 16) * 8;
 if (infosz != 0)
  rssi = rsu_get_rssi(sc, rate, &stat[1]);
 ;
 m = m_gethdr((0x0002), (1));
 if (__builtin_expect(((m == ((void *)0)) != 0), 0)) {
  ifp->if_data.ifi_ierrors++;
  return;
 }
 if (pktlen > ((256 - sizeof(struct m_hdr)) - sizeof(struct pkthdr))) {
  (void) m_clget((m), (0x0002), (1 << 11));
  if (__builtin_expect(((!(m->m_hdr.mh_flags & 0x0001)) != 0), 0)) {
   ifp->if_data.ifi_ierrors++;
   m_freem(m);
   return;
  }
 }
 if (rxdw3 & 0x00002000) {
  if (__builtin_expect(((rxdw3 & 0x00000800) != 0), 1))
   m->M_dat.MH.MH_pkthdr.csum_flags |= 0x0020;
  else
   m->M_dat.MH.MH_pkthdr.csum_flags |= 0x0040;
 }
 wh = (struct ieee80211_frame *)((uint8_t *)&stat[1] + infosz);
 __builtin_memcpy((((uint8_t *)((m)->m_hdr.mh_data))), (wh), (pktlen));
 m->M_dat.MH.MH_pkthdr.len = m->m_hdr.mh_len = pktlen;
 s = _splraise(6);
 if (__builtin_expect(((sc->sc_drvbpf != ((void *)0)) != 0), 0)) {
  struct rsu_rx_radiotap_header *tap = &sc->sc_rxtapu.th;
  struct mbuf mb;
  tap->wr_flags = 0;
  tap->wr_flags = 2;
  if (!(rxdw3 & 0x00004000)) {
   switch (rate) {
   case 0: tap->wr_rate = 2; break;
   case 1: tap->wr_rate = 4; break;
   case 2: tap->wr_rate = 11; break;
   case 3: tap->wr_rate = 22; break;
   case 4: tap->wr_rate = 12; break;
   case 5: tap->wr_rate = 18; break;
   case 6: tap->wr_rate = 24; break;
   case 7: tap->wr_rate = 36; break;
   case 8: tap->wr_rate = 48; break;
   case 9: tap->wr_rate = 72; break;
   case 10: tap->wr_rate = 96; break;
   case 11: tap->wr_rate = 108; break;
   }
  } else if (rate >= 12) {
   tap->wr_rate = 0x80 | (rate - 12);
  }
  tap->wr_dbm_antsignal = rssi;
  tap->wr_chan_freq = (__builtin_constant_p(ic->ic_bss->ni_chan->ic_freq) ? (__uint16_t)(((__uint16_t)(ic->ic_bss->ni_chan->ic_freq) & 0xffU) << 8 | ((__uint16_t)(ic->ic_bss->ni_chan->ic_freq) & 0xff00U) >> 8) : __swap16md(ic->ic_bss->ni_chan->ic_freq));
  tap->wr_chan_flags = (__builtin_constant_p(ic->ic_bss->ni_chan->ic_flags) ? (__uint16_t)(((__uint16_t)(ic->ic_bss->ni_chan->ic_flags) & 0xffU) << 8 | ((__uint16_t)(ic->ic_bss->ni_chan->ic_flags) & 0xff00U) >> 8) : __swap16md(ic->ic_bss->ni_chan->ic_flags));
  mb.m_hdr.mh_data = (caddr_t)tap;
  mb.m_hdr.mh_len = sc->sc_rxtap_len;
  mb.m_hdr.mh_next = m;
  mb.m_hdr.mh_nextpkt = ((void *)0);
  mb.m_hdr.mh_type = 0;
  mb.m_hdr.mh_flags = 0;
  bpf_mtap(sc->sc_drvbpf, &mb, 1);
 }
 ni = ieee80211_find_rxnode(ic, wh);
 rxi.rxi_flags = 0;
 rxi.rxi_rssi = rssi;
 rxi.rxi_tstamp = 0;
 ieee80211_input(ifp, m, ni, &rxi);
 ieee80211_release_node(ic, ni);
 _splx(s);
}
void
rsu_rx_multi_frame(struct rsu_softc *sc, uint8_t *buf, int len)
{
 struct r92s_rx_stat *stat;
 uint32_t rxdw0;
 int totlen, pktlen, infosz, npkts;
 stat = (struct r92s_rx_stat *)buf;
 npkts = ((((__builtin_constant_p(stat->rxdw2) ? (__uint32_t)(((__uint32_t)(stat->rxdw2) & 0xff) << 24 | ((__uint32_t)(stat->rxdw2) & 0xff00) << 8 | ((__uint32_t)(stat->rxdw2) & 0xff0000) >> 8 | ((__uint32_t)(stat->rxdw2) & 0xff000000) >> 24) : __swap32md(stat->rxdw2))) & 0x00ff0000) >> 16);
 ;
 while (npkts-- > 0) {
  if (__builtin_expect(((len < sizeof(*stat)) != 0), 0))
   break;
  stat = (struct r92s_rx_stat *)buf;
  rxdw0 = (__builtin_constant_p(stat->rxdw0) ? (__uint32_t)(((__uint32_t)(stat->rxdw0) & 0xff) << 24 | ((__uint32_t)(stat->rxdw0) & 0xff00) << 8 | ((__uint32_t)(stat->rxdw0) & 0xff0000) >> 8 | ((__uint32_t)(stat->rxdw0) & 0xff000000) >> 24) : __swap32md(stat->rxdw0));
  pktlen = (((rxdw0) & 0x00003fff) >> 0);
  if (__builtin_expect(((pktlen == 0) != 0), 0))
   break;
  infosz = (((rxdw0) & 0x000f0000) >> 16) * 8;
  totlen = sizeof(*stat) + infosz + pktlen;
  if (__builtin_expect(((totlen > len) != 0), 0))
   break;
  rsu_rx_frame(sc, buf, pktlen);
  totlen = (totlen + 127) & ~127;
  buf += totlen;
  len -= totlen;
 }
}
void
rsu_rxeof(struct usbd_xfer *xfer, void *priv, usbd_status status)
{
 struct rsu_rx_data *data = priv;
 struct rsu_softc *sc = data->sc;
 struct r92s_rx_stat *stat;
 struct ifnet *ifp = &sc->sc_ic.ic_ac.ac_if;
 int len;
 if (__builtin_expect(((status != USBD_NORMAL_COMPLETION) != 0), 0)) {
  ;
  if (status == USBD_STALLED)
   usbd_clear_endpoint_stall_async(data->pipe);
  if (status != USBD_CANCELLED)
   goto resubmit;
  return;
 }
 usbd_get_xfer_status(xfer, ((void *)0), ((void *)0), &len, ((void *)0));
 if (__builtin_expect(((len < sizeof(*stat)) != 0), 0)) {
  ;
  ifp->if_data.ifi_ierrors++;
  goto resubmit;
 }
 if (len > (8 * 1024)) {
  ;
  ifp->if_data.ifi_ierrors++;
  goto resubmit;
 }
 stat = (struct r92s_rx_stat *)data->buf;
 if (((__builtin_constant_p(stat->rxdw1) ? (__uint32_t)(((__uint32_t)(stat->rxdw1) & 0xff) << 24 | ((__uint32_t)(stat->rxdw1) & 0xff00) << 8 | ((__uint32_t)(stat->rxdw1) & 0xff0000) >> 8 | ((__uint32_t)(stat->rxdw1) & 0xff000000) >> 24) : __swap32md(stat->rxdw1)) & 0x1ff) == 0x1ff)
  rsu_rx_multi_event(sc, data->buf, len);
 else
  rsu_rx_multi_frame(sc, data->buf, len);
 resubmit:
 usbd_setup_xfer(xfer, data->pipe, data, data->buf, (8 * 1024),
     0x04 | 0x01, 0, rsu_rxeof);
 (void)usbd_transfer(xfer);
}
void
rsu_txeof(struct usbd_xfer *xfer, void *priv, usbd_status status)
{
 struct rsu_tx_data *data = priv;
 struct rsu_softc *sc = data->sc;
 struct ifnet *ifp = &sc->sc_ic.ic_ac.ac_if;
 int s;
 s = _splraise(6);
 do { (data)->next.tqe_next = ((void *)0); (data)->next.tqe_prev = (&sc->tx_free_list)->tqh_last; *(&sc->tx_free_list)->tqh_last = (data); (&sc->tx_free_list)->tqh_last = &(data)->next.tqe_next; } while (0);
 if (__builtin_expect(((status != USBD_NORMAL_COMPLETION) != 0), 0)) {
  ;
  if (status == USBD_STALLED)
   usbd_clear_endpoint_stall_async(data->pipe);
  ifp->if_data.ifi_oerrors++;
  _splx(s);
  return;
 }
 sc->sc_tx_timer = 0;
 if (ifq_is_oactive(&ifp->if_snd)) {
  ifq_clr_oactive(&ifp->if_snd);
  rsu_start(ifp);
 }
 _splx(s);
}
int
rsu_tx(struct rsu_softc *sc, struct mbuf *m, struct ieee80211_node *ni)
{
 struct ieee80211com *ic = &sc->sc_ic;
 struct ieee80211_frame *wh;
 struct ieee80211_key *k = ((void *)0);
 struct rsu_tx_data *data;
 struct r92s_tx_desc *txd;
 struct usbd_pipe *pipe;
 uint16_t qos;
 uint8_t type, qid, tid = 0;
 int hasqos, xferlen, error;
 wh = ((struct ieee80211_frame *)((m)->m_hdr.mh_data));
 type = wh->i_fc[0] & 0x0c;
 if (wh->i_fc[1] & 0x40) {
  k = ieee80211_get_txkey(ic, wh, ni);
  if ((m = ieee80211_encrypt(ic, m, k)) == ((void *)0))
   return (55);
  wh = ((struct ieee80211_frame *)((m)->m_hdr.mh_data));
 }
 if ((hasqos = ieee80211_has_qos(wh))) {
  qos = ieee80211_get_qos(wh);
  tid = qos & 0x000f;
  qid = rsu_ac2qid[ieee80211_up_to_ac(ic, tid)];
 } else
  qid = 5;
 pipe = sc->pipe[sc->qid2idx[qid]];
 data = ((&sc->tx_free_list)->tqh_first);
 do { if (((data)->next.tqe_next) != ((void *)0)) (data)->next.tqe_next->next.tqe_prev = (data)->next.tqe_prev; else (&sc->tx_free_list)->tqh_last = (data)->next.tqe_prev; *(data)->next.tqe_prev = (data)->next.tqe_next; ((data)->next.tqe_prev) = ((void *)-1); ((data)->next.tqe_next) = ((void *)-1); } while (0);
 txd = (struct r92s_tx_desc *)data->buf;
 __builtin_memset((txd), (0), (sizeof(*txd)));
 txd->txdw0 |= (__builtin_constant_p((((m->M_dat.MH.MH_pkthdr.len) << 0) & 0x0000ffff) | (((sizeof(*txd)) << 16) & 0x00ff0000) | 0x80000000 | 0x08000000 | 0x04000000) ? (__uint32_t)(((__uint32_t)((((m->M_dat.MH.MH_pkthdr.len) << 0) & 0x0000ffff) | (((sizeof(*txd)) << 16) & 0x00ff0000) | 0x80000000 | 0x08000000 | 0x04000000) & 0xff) << 24 | ((__uint32_t)((((m->M_dat.MH.MH_pkthdr.len) << 0) & 0x0000ffff) | (((sizeof(*txd)) << 16) & 0x00ff0000) | 0x80000000 | 0x08000000 | 0x04000000) & 0xff00) << 8 | ((__uint32_t)((((m->M_dat.MH.MH_pkthdr.len) << 0) & 0x0000ffff) | (((sizeof(*txd)) << 16) & 0x00ff0000) | 0x80000000 | 0x08000000 | 0x04000000) & 0xff0000) >> 8 | ((__uint32_t)((((m->M_dat.MH.MH_pkthdr.len) << 0) & 0x0000ffff) | (((sizeof(*txd)) << 16) & 0x00ff0000) | 0x80000000 | 0x08000000 | 0x04000000) & 0xff000000) >> 24) : __swap32md((((m->M_dat.MH.MH_pkthdr.len) << 0) & 0x0000ffff) | (((sizeof(*txd)) << 16) & 0x00ff0000) | 0x80000000 | 0x08000000 | 0x04000000));
 txd->txdw1 |= (__builtin_constant_p((((5) << 0) & 0x0000001f) | (((0x03) << 8) & 0x00001f00)) ? (__uint32_t)(((__uint32_t)((((5) << 0) & 0x0000001f) | (((0x03) << 8) & 0x00001f00)) & 0xff) << 24 | ((__uint32_t)((((5) << 0) & 0x0000001f) | (((0x03) << 8) & 0x00001f00)) & 0xff00) << 8 | ((__uint32_t)((((5) << 0) & 0x0000001f) | (((0x03) << 8) & 0x00001f00)) & 0xff0000) >> 8 | ((__uint32_t)((((5) << 0) & 0x0000001f) | (((0x03) << 8) & 0x00001f00)) & 0xff000000) >> 24) : __swap32md((((5) << 0) & 0x0000001f) | (((0x03) << 8) & 0x00001f00)));
 if (!hasqos)
  txd->txdw1 |= (__builtin_constant_p(0x00010000) ? (__uint32_t)(((__uint32_t)(0x00010000) & 0xff) << 24 | ((__uint32_t)(0x00010000) & 0xff00) << 8 | ((__uint32_t)(0x00010000) & 0xff0000) >> 8 | ((__uint32_t)(0x00010000) & 0xff000000) >> 24) : __swap32md(0x00010000));
 txd->txdw2 |= (__builtin_constant_p(0x40000000) ? (__uint32_t)(((__uint32_t)(0x40000000) & 0xff) << 24 | ((__uint32_t)(0x40000000) & 0xff00) << 8 | ((__uint32_t)(0x40000000) & 0xff0000) >> 8 | ((__uint32_t)(0x40000000) & 0xff000000) >> 24) : __swap32md(0x40000000));
 if ((*(wh->i_addr1) & 0x01))
  txd->txdw2 |= (__builtin_constant_p(0x00000080) ? (__uint32_t)(((__uint32_t)(0x00000080) & 0xff) << 24 | ((__uint32_t)(0x00000080) & 0xff00) << 8 | ((__uint32_t)(0x00000080) & 0xff0000) >> 8 | ((__uint32_t)(0x00000080) & 0xff000000) >> 24) : __swap32md(0x00000080));
 txd->txdw3 |= (__builtin_constant_p((((tid) << 16) & 0x0fff0000)) ? (__uint32_t)(((__uint32_t)((((tid) << 16) & 0x0fff0000)) & 0xff) << 24 | ((__uint32_t)((((tid) << 16) & 0x0fff0000)) & 0xff00) << 8 | ((__uint32_t)((((tid) << 16) & 0x0fff0000)) & 0xff0000) >> 8 | ((__uint32_t)((((tid) << 16) & 0x0fff0000)) & 0xff000000) >> 24) : __swap32md((((tid) << 16) & 0x0fff0000)));
 if (__builtin_expect(((sc->sc_drvbpf != ((void *)0)) != 0), 0)) {
  struct rsu_tx_radiotap_header *tap = &sc->sc_txtapu.th;
  struct mbuf mb;
  tap->wt_flags = 0;
  tap->wt_chan_freq = (__builtin_constant_p(ic->ic_bss->ni_chan->ic_freq) ? (__uint16_t)(((__uint16_t)(ic->ic_bss->ni_chan->ic_freq) & 0xffU) << 8 | ((__uint16_t)(ic->ic_bss->ni_chan->ic_freq) & 0xff00U) >> 8) : __swap16md(ic->ic_bss->ni_chan->ic_freq));
  tap->wt_chan_flags = (__builtin_constant_p(ic->ic_bss->ni_chan->ic_flags) ? (__uint16_t)(((__uint16_t)(ic->ic_bss->ni_chan->ic_flags) & 0xffU) << 8 | ((__uint16_t)(ic->ic_bss->ni_chan->ic_flags) & 0xff00U) >> 8) : __swap16md(ic->ic_bss->ni_chan->ic_flags));
  mb.m_hdr.mh_data = (caddr_t)tap;
  mb.m_hdr.mh_len = sc->sc_txtap_len;
  mb.m_hdr.mh_next = m;
  mb.m_hdr.mh_nextpkt = ((void *)0);
  mb.m_hdr.mh_type = 0;
  mb.m_hdr.mh_flags = 0;
  bpf_mtap(sc->sc_drvbpf, &mb, (1<<1));
 }
 xferlen = sizeof(*txd) + m->M_dat.MH.MH_pkthdr.len;
 m_copydata(m, 0, m->M_dat.MH.MH_pkthdr.len, (caddr_t)&txd[1]);
 m_freem(m);
 data->pipe = pipe;
 usbd_setup_xfer(data->xfer, pipe, data, data->buf, xferlen,
     0x08 | 0x01, 5000,
     rsu_txeof);
 error = usbd_transfer(data->xfer);
 if (__builtin_expect(((error != USBD_IN_PROGRESS && error != 0) != 0), 0)) {
  do { (data)->next.tqe_next = ((void *)0); (data)->next.tqe_prev = (&sc->tx_free_list)->tqh_last; *(&sc->tx_free_list)->tqh_last = (data); (&sc->tx_free_list)->tqh_last = &(data)->next.tqe_next; } while (0);
  return (error);
 }
 ieee80211_release_node(ic, ni);
 return (0);
}
int
rsu_send_mgmt(struct ieee80211com *ic, struct ieee80211_node *ni, int type,
    int arg1, int arg2)
{
 return (45);
}
void
rsu_start(struct ifnet *ifp)
{
 struct rsu_softc *sc = ifp->if_softc;
 struct ieee80211com *ic = &sc->sc_ic;
 struct ieee80211_node *ni;
 struct mbuf *m;
 if (!(ifp->if_flags & 0x40) || ifq_is_oactive(&ifp->if_snd))
  return;
 for (;;) {
  if ((((&sc->tx_free_list)->tqh_first) == ((void *)0))) {
   ifq_set_oactive(&ifp->if_snd);
   break;
  }
  if (ic->ic_state != IEEE80211_S_RUN)
   break;
  do { (m) = ifq_dequeue(&ifp->if_snd); } while ( 0);
  if (m == ((void *)0))
   break;
  if (ifp->if_bpf != ((void *)0))
   bpf_mtap(ifp->if_bpf, m, (1<<1));
  if ((m = ieee80211_encap(ifp, m, &ni)) == ((void *)0))
   continue;
  if (ic->ic_rawbpf != ((void *)0))
   bpf_mtap(ic->ic_rawbpf, m, (1<<1));
  if (rsu_tx(sc, m, ni) != 0) {
   ieee80211_release_node(ic, ni);
   ifp->if_data.ifi_oerrors++;
   continue;
  }
  sc->sc_tx_timer = 5;
  ifp->if_timer = 1;
 }
}
void
rsu_watchdog(struct ifnet *ifp)
{
 struct rsu_softc *sc = ifp->if_softc;
 ifp->if_timer = 0;
 if (sc->sc_tx_timer > 0) {
  if (--sc->sc_tx_timer == 0) {
   printf("%s: device timeout\n", sc->sc_dev.dv_xname);
   ifp->if_data.ifi_oerrors++;
   return;
  }
  ifp->if_timer = 1;
 }
 ieee80211_watchdog(ifp);
}
int
rsu_ioctl(struct ifnet *ifp, u_long cmd, caddr_t data)
{
 struct rsu_softc *sc = ifp->if_softc;
 int s, error = 0;
 if (usbd_is_dying(sc->sc_udev))
  return 6;
 usbd_ref_incr(sc->sc_udev);
 s = _splraise(6);
 switch (cmd) {
 case ((unsigned long)0x80000000 | ((sizeof(struct ifreq) & 0x1fff) << 16) | ((('i')) << 8) | ((12))):
  ifp->if_flags |= 0x1;
 case ((unsigned long)0x80000000 | ((sizeof(struct ifreq) & 0x1fff) << 16) | ((('i')) << 8) | ((16))):
  if (ifp->if_flags & 0x1) {
   if (!(ifp->if_flags & 0x40))
    rsu_init(ifp);
  } else {
   if (ifp->if_flags & 0x40)
    rsu_stop(ifp);
  }
  break;
 default:
  error = ieee80211_ioctl(ifp, cmd, data);
 }
 if (error == 52) {
  if ((ifp->if_flags & (0x1 | 0x40)) ==
      (0x1 | 0x40)) {
   rsu_stop(ifp);
   rsu_init(ifp);
  }
  error = 0;
 }
 _splx(s);
 usbd_ref_decr(sc->sc_udev);
 return (error);
}
void
rsu_power_on_acut(struct rsu_softc *sc)
{
 uint32_t reg64;
 rsu_write_1(sc, (0x0000 + 0x011) + 1, 0x53);
 rsu_write_1(sc, (0x0000 + 0x011) + 0, 0x57);
 rsu_write_1(sc, (0x0000 + 0x010),
     rsu_read_1(sc, (0x0000 + 0x010)) |
     0x01 | 0x02);
 rsu_write_1(sc, (0x0000 + 0x020),
     rsu_read_1(sc, (0x0000 + 0x020)) | 0x01);
 rsu_write_1(sc, (0x0000 + 0x018),
     rsu_read_1(sc, (0x0000 + 0x018)) | 0x01);
 usbd_delay_ms(sc->sc_udev, 2);
 rsu_write_1(sc, (0x0000 + 0x018),
     rsu_read_1(sc, (0x0000 + 0x018)) | 0x02);
 rsu_write_4(sc, (0x0000 + 0x018), 0x00a7b267);
 rsu_write_1(sc, (0x0000 + 0x000) + 1,
     rsu_read_1(sc, (0x0000 + 0x000) + 1) | 0x08);
 rsu_write_1(sc, (0x0000 + 0x002) + 1,
     rsu_read_1(sc, (0x0000 + 0x002) + 1) | 0x20);
 rsu_write_1(sc, (0x0000 + 0x000) + 1,
     rsu_read_1(sc, (0x0000 + 0x000) + 1) & ~0x90);
 rsu_write_1(sc, (0x0000 + 0x026) + 1,
     rsu_read_1(sc, (0x0000 + 0x026) + 1) & ~0x04);
 rsu_write_1(sc, (0x0000 + 0x028),
     rsu_read_1(sc, (0x0000 + 0x028)) | 0x11);
 rsu_write_1(sc, (0x0000 + 0x000),
     rsu_read_1(sc, (0x0000 + 0x000)) & ~0x11);
 rsu_write_2(sc, (0x0000 + 0x008),
     rsu_read_2(sc, (0x0000 + 0x008)) & ~0x0001);
 rsu_write_2(sc, (0x0000 + 0x008),
     rsu_read_2(sc, (0x0000 + 0x008)) |
     0x0800 | 0x1000);
 rsu_write_1(sc, (0x0000 + 0x004), 0x02);
 rsu_write_1(sc, (0x0000 + 0x002) + 1,
     rsu_read_1(sc, (0x0000 + 0x002) + 1) | 0x08);
 rsu_write_1(sc, (0x0000 + 0x002) + 1,
     rsu_read_1(sc, (0x0000 + 0x002) + 1) | 0x80);
 reg64 = rsu_read_2(sc, (0x0000 + 0x008));
 reg64 = (reg64 & ~0x4000) | 0x8000;
 rsu_write_2(sc, (0x0000 + 0x008), reg64);
 rsu_write_2(sc, (0x0040 + 0x000), 0x37fc);
 rsu_write_1(sc, 0xfe5c,
     rsu_read_1(sc, 0xfe5c) | 0x80);
 rsu_write_1(sc, 0x00ab,
     rsu_read_1(sc, 0x00ab) | 0xc0);
 rsu_write_1(sc, (0x0000 + 0x008),
     rsu_read_1(sc, (0x0000 + 0x008)) & ~0x0004);
}
void
rsu_power_on_bcut(struct rsu_softc *sc)
{
 uint32_t reg64;
 int ntries;
 rsu_write_1(sc, 0x37, 0xb0);
 usbd_delay_ms(sc->sc_udev, 10);
 rsu_write_1(sc, 0x37, 0x30);
 reg64 = rsu_read_2(sc, (0x0000 + 0x008));
 if (reg64 & 0x8000) {
  rsu_write_2(sc, (0x0000 + 0x008),
      reg64 & ~(0x4000 | 0x8000));
 }
 rsu_write_1(sc, (0x0000 + 0x002) + 1,
     rsu_read_1(sc, (0x0000 + 0x002) + 1) & ~0x8c);
 delay(1000);
 rsu_write_1(sc, (0x0000 + 0x011) + 1, 0x53);
 rsu_write_1(sc, (0x0000 + 0x011) + 0, 0x57);
 reg64 = rsu_read_1(sc, (0x0000 + 0x010));
 rsu_write_1(sc, (0x0000 + 0x010), reg64 | 0x01);
 rsu_write_1(sc, (0x0000 + 0x010), reg64 | 0x01 |
     0x02 | 0x08);
 rsu_write_1(sc, (0x0000 + 0x020),
     rsu_read_1(sc, (0x0000 + 0x020)) | 0x01);
 rsu_write_1(sc, (0x0000 + 0x021),
     rsu_read_1(sc, (0x0000 + 0x021)) | 0x01);
 rsu_write_1(sc, (0x0000 + 0x000) + 1,
     rsu_read_1(sc, (0x0000 + 0x000) + 1) | 0x08);
 rsu_write_1(sc, (0x0000 + 0x002) + 1,
     rsu_read_1(sc, (0x0000 + 0x002) + 1) | 0x20);
 rsu_write_1(sc, (0x0000 + 0x000) + 1,
     rsu_read_1(sc, (0x0000 + 0x000) + 1) & ~0x97);
 rsu_write_1(sc, (0x0000 + 0x026) + 1,
     rsu_read_1(sc, (0x0000 + 0x026) + 1) & ~0x04);
 reg64 = rsu_read_1(sc, (0x0000 + 0x028));
 rsu_write_1(sc, (0x0000 + 0x028), reg64 | 0x11);
 delay(500);
 rsu_write_1(sc, (0x0000 + 0x028), reg64 | 0x51);
 delay(500);
 rsu_write_1(sc, (0x0000 + 0x028), reg64 | 0x11);
 delay(500);
 rsu_write_1(sc, (0x0000 + 0x000),
     rsu_read_1(sc, (0x0000 + 0x000)) & ~0x11);
 rsu_write_1(sc, (0x0000 + 0x008), 0x00);
 rsu_write_1(sc, (0x0000 + 0x008),
     rsu_read_1(sc, (0x0000 + 0x008)) | 0xa0);
 rsu_write_2(sc, (0x0000 + 0x008),
     rsu_read_2(sc, (0x0000 + 0x008)) |
     0x0800 | 0x1000);
 rsu_write_1(sc, (0x0000 + 0x004), 0x02);
 rsu_write_1(sc, (0x0000 + 0x002) + 1,
     rsu_read_1(sc, (0x0000 + 0x002) + 1) | 0x08);
 rsu_write_1(sc, (0x0000 + 0x002) + 1,
     rsu_read_1(sc, (0x0000 + 0x002) + 1) | 0x80);
 reg64 = rsu_read_2(sc, (0x0000 + 0x008));
 reg64 = (reg64 & ~0x4000) | 0x8000;
 rsu_write_2(sc, (0x0000 + 0x008), reg64);
 rsu_write_2(sc, (0x0040 + 0x000), 0x37fc);
 rsu_write_1(sc, 0xfe5c,
     rsu_read_1(sc, 0xfe5c) | 0x80);
 rsu_write_1(sc, (0x0000 + 0x008),
     rsu_read_1(sc, (0x0000 + 0x008)) & ~0x0004);
 rsu_write_1(sc, 0xfe1c, 0x80);
 for (ntries = 0; ntries < 20; ntries++) {
  reg64 = rsu_read_1(sc, (0x0040 + 0x004));
  if ((reg64 & (0x02 | 0x08)) ==
      (0x02 | 0x08))
   break;
  delay(5);
 }
 if (ntries == 20) {
  reg64 = rsu_read_1(sc, (0x0040 + 0x000));
  rsu_write_1(sc, (0x0040 + 0x000), reg64 & ~0x10);
  delay(2);
  rsu_write_1(sc, (0x0040 + 0x000), reg64 | 0x10);
 }
}
void
rsu_power_off(struct rsu_softc *sc)
{
 rsu_write_1(sc, (0x0000 + 0x01f), 0x00);
 usbd_delay_ms(sc->sc_udev, 5);
 rsu_write_1(sc, (0x0000 + 0x008) + 1, 0x38);
 rsu_write_1(sc, (0x0000 + 0x002) + 1, 0x70);
 rsu_write_1(sc, (0x0000 + 0x004), 0x06);
 rsu_write_1(sc, (0x0000 + 0x000) + 0, 0xf9);
 rsu_write_1(sc, (0x0000 + 0x000) + 1, 0xe8);
 rsu_write_1(sc, (0x0000 + 0x028), 0x00);
 rsu_write_1(sc, (0x0000 + 0x020), 0x54);
 rsu_write_1(sc, (0x0000 + 0x002) + 1, 0x50);
 rsu_write_1(sc, (0x0000 + 0x021), 0x24);
 rsu_write_1(sc, (0x0000 + 0x010), 0x30);
 rsu_write_1(sc, (0x0000 + 0x011) + 0, 0x56);
 rsu_write_1(sc, (0x0000 + 0x011) + 1, 0x43);
}
int
rsu_fw_loadsection(struct rsu_softc *sc, uint8_t *buf, int len)
{
 struct rsu_tx_data *data;
 struct r92s_tx_desc *txd;
 struct usbd_pipe *pipe;
 int mlen, error;
 data = sc->fwcmd_data;
 pipe = sc->pipe[sc->qid2idx[3]];
 txd = (struct r92s_tx_desc *)data->buf;
 while (len > 0) {
  __builtin_memset((txd), (0), (sizeof(*txd)));
  if (len <= ((sizeof(struct r92s_tx_desc) + (2300 + 4 + (3 + 1 + 4)) + 3) & ~3) - sizeof(*txd)) {
   txd->txdw0 |= (__builtin_constant_p(0x10000000) ? (__uint32_t)(((__uint32_t)(0x10000000) & 0xff) << 24 | ((__uint32_t)(0x10000000) & 0xff00) << 8 | ((__uint32_t)(0x10000000) & 0xff0000) >> 8 | ((__uint32_t)(0x10000000) & 0xff000000) >> 24) : __swap32md(0x10000000));
   mlen = len;
  } else
   mlen = ((sizeof(struct r92s_tx_desc) + (2300 + 4 + (3 + 1 + 4)) + 3) & ~3) - sizeof(*txd);
  txd->txdw0 |= (__builtin_constant_p((((mlen) << 0) & 0x0000ffff)) ? (__uint32_t)(((__uint32_t)((((mlen) << 0) & 0x0000ffff)) & 0xff) << 24 | ((__uint32_t)((((mlen) << 0) & 0x0000ffff)) & 0xff00) << 8 | ((__uint32_t)((((mlen) << 0) & 0x0000ffff)) & 0xff0000) >> 8 | ((__uint32_t)((((mlen) << 0) & 0x0000ffff)) & 0xff000000) >> 24) : __swap32md((((mlen) << 0) & 0x0000ffff)));
  __builtin_memcpy((&txd[1]), (buf), (mlen));
  usbd_setup_xfer(data->xfer, pipe, ((void *)0), data->buf,
      sizeof(*txd) + mlen,
      0x04 | 0x01 | 0x02,
      5000, ((void *)0));
  error = usbd_transfer(data->xfer);
  if (error != 0)
   return (error);
  buf += mlen;
  len -= mlen;
 }
 return (0);
}
int
rsu_load_firmware(struct rsu_softc *sc)
{
 struct ieee80211com *ic = &sc->sc_ic;
 struct r92s_fw_hdr *hdr;
 struct r92s_fw_priv *dmem;
 uint8_t *imem, *emem;
 int imemsz, ememsz;
 u_char *fw;
 size_t size;
 uint32_t reg64;
 int ntries, error;
 if ((error = loadfirmware("rsu-rtl8712fw", &fw, &size)) != 0) {
  printf("%s: failed loadfirmware of file %s (error %d)\n",
      sc->sc_dev.dv_xname, "rsu-rtl8712fw", error);
  return (error);
 }
 if (size < sizeof(*hdr)) {
  printf("%s: firmware too short\n", sc->sc_dev.dv_xname);
  error = 22;
  goto fail;
 }
 hdr = (struct r92s_fw_hdr *)fw;
 if (hdr->signature != (__builtin_constant_p(0x8712) ? (__uint16_t)(((__uint16_t)(0x8712) & 0xffU) << 8 | ((__uint16_t)(0x8712) & 0xff00U) >> 8) : __swap16md(0x8712)) &&
     hdr->signature != (__builtin_constant_p(0x8192) ? (__uint16_t)(((__uint16_t)(0x8192) & 0xffU) << 8 | ((__uint16_t)(0x8192) & 0xff00U) >> 8) : __swap16md(0x8192))) {
  printf("%s: invalid firmware signature 0x%x\n",
      sc->sc_dev.dv_xname, (__builtin_constant_p(hdr->signature) ? (__uint16_t)(((__uint16_t)(hdr->signature) & 0xffU) << 8 | ((__uint16_t)(hdr->signature) & 0xff00U) >> 8) : __swap16md(hdr->signature)));
  error = 22;
  goto fail;
 }
 ;
 if (hdr->privsz != (__builtin_constant_p(sizeof(*dmem)) ? (__uint32_t)(((__uint32_t)(sizeof(*dmem)) & 0xff) << 24 | ((__uint32_t)(sizeof(*dmem)) & 0xff00) << 8 | ((__uint32_t)(sizeof(*dmem)) & 0xff0000) >> 8 | ((__uint32_t)(sizeof(*dmem)) & 0xff000000) >> 24) : __swap32md(sizeof(*dmem)))) {
  printf("%s: unsupported firmware image\n",
      sc->sc_dev.dv_xname);
  error = 22;
  goto fail;
 }
 imemsz = (__builtin_constant_p(hdr->imemsz) ? (__uint32_t)(((__uint32_t)(hdr->imemsz) & 0xff) << 24 | ((__uint32_t)(hdr->imemsz) & 0xff00) << 8 | ((__uint32_t)(hdr->imemsz) & 0xff0000) >> 8 | ((__uint32_t)(hdr->imemsz) & 0xff000000) >> 24) : __swap32md(hdr->imemsz));
 ememsz = (__builtin_constant_p(hdr->sramsz) ? (__uint32_t)(((__uint32_t)(hdr->sramsz) & 0xff) << 24 | ((__uint32_t)(hdr->sramsz) & 0xff00) << 8 | ((__uint32_t)(hdr->sramsz) & 0xff0000) >> 8 | ((__uint32_t)(hdr->sramsz) & 0xff000000) >> 24) : __swap32md(hdr->sramsz));
 if (size < sizeof(*hdr) + imemsz + ememsz) {
  printf("%s: firmware too short\n", sc->sc_dev.dv_xname);
  error = 22;
  goto fail;
 }
 imem = (uint8_t *)&hdr[1];
 emem = imem + imemsz;
 error = rsu_fw_loadsection(sc, imem, imemsz);
 if (error != 0) {
  printf("%s: could not load firmware section %s\n",
      sc->sc_dev.dv_xname, "IMEM");
  goto fail;
 }
 for (ntries = 0; ntries < 10; ntries++) {
  reg64 = rsu_read_2(sc, (0x0040 + 0x004));
  if (reg64 & 0x01)
   break;
  delay(10);
 }
 if (ntries == 10 || !(reg64 & 0x02)) {
  printf("%s: timeout waiting for %s transfer\n",
      sc->sc_dev.dv_xname, "IMEM");
  error = 60;
  goto fail;
 }
 error = rsu_fw_loadsection(sc, emem, ememsz);
 if (error != 0) {
  printf("%s: could not load firmware section %s\n",
      sc->sc_dev.dv_xname, "EMEM");
  goto fail;
 }
 for (ntries = 0; ntries < 10; ntries++) {
  reg64 = rsu_read_2(sc, (0x0040 + 0x004));
  if (reg64 & 0x04)
   break;
  delay(10);
 }
 if (ntries == 10 || !(reg64 & 0x08)) {
  printf("%s: timeout waiting for %s transfer\n",
      sc->sc_dev.dv_xname, "EMEM");
  error = 60;
  goto fail;
 }
 rsu_write_1(sc, (0x0000 + 0x008),
     rsu_read_1(sc, (0x0000 + 0x008)) | 0x0004);
 if (!(rsu_read_1(sc, (0x0000 + 0x008)) & 0x0004)) {
  printf("%s: could not enable system clock\n",
      sc->sc_dev.dv_xname);
  error = 5;
  goto fail;
 }
 rsu_write_2(sc, (0x0000 + 0x002),
     rsu_read_2(sc, (0x0000 + 0x002)) | 0x0400);
 if (!(rsu_read_2(sc, (0x0000 + 0x002)) & 0x0400)) {
  printf("%s: could not enable microcontroller\n",
      sc->sc_dev.dv_xname);
  error = 5;
  goto fail;
 }
 for (ntries = 0; ntries < 100; ntries++) {
  if (rsu_read_2(sc, (0x0040 + 0x004)) & 0x20)
   break;
  delay(1000);
 }
 if (ntries == 100) {
  printf("%s: timeout waiting for microcontroller\n",
      sc->sc_dev.dv_xname);
  error = 60;
  goto fail;
 }
 dmem = &hdr->priv;
 __builtin_memset((dmem), (0), (sizeof(*dmem)));
 dmem->hci_sel = 0x02 | 0x10;
 dmem->nendpoints = sc->npipes;
 dmem->rf_config = 0x12;
 dmem->vcs_type = 2;
 dmem->vcs_mode = 1;
 dmem->bw40_en = (ic->ic_htcaps & 0x00000002) != 0;
 dmem->turbo_mode = 1;
 error = rsu_fw_loadsection(sc, (uint8_t *)dmem, sizeof(*dmem));
 if (error != 0) {
  printf("%s: could not load firmware section %s\n",
      sc->sc_dev.dv_xname, "DMEM");
  goto fail;
 }
 for (ntries = 0; ntries < 100; ntries++) {
  if (rsu_read_2(sc, (0x0040 + 0x004)) & 0x10)
   break;
  delay(1000);
 }
 if (ntries == 100) {
  printf("%s: timeout waiting for %s transfer\n",
      sc->sc_dev.dv_xname, "DMEM");
  error = 60;
  goto fail;
 }
 for (ntries = 0; ntries < 60; ntries++) {
  if (!(rsu_read_2(sc, (0x0040 + 0x004)) & 0x80))
   break;
  delay(1000);
 }
 if (ntries == 60) {
  printf("%s: timeout waiting for firmware readiness\n",
      sc->sc_dev.dv_xname);
  error = 60;
  goto fail;
 }
 fail:
 free(fw, 2, size);
 return (error);
}
int
rsu_init(struct ifnet *ifp)
{
 struct rsu_softc *sc = ifp->if_softc;
 struct ieee80211com *ic = &sc->sc_ic;
 struct r92s_set_pwr_mode cmd;
 struct rsu_rx_data *data;
 int i, error;
 sc->cmdq.cur = sc->cmdq.next = sc->cmdq.queued = 0;
 error = rsu_alloc_rx_list(sc);
 if (error != 0) {
  printf("%s: could not allocate Rx buffers\n",
      sc->sc_dev.dv_xname);
  goto fail;
 }
 error = rsu_alloc_tx_list(sc);
 if (error != 0) {
  printf("%s: could not allocate Tx buffers\n",
      sc->sc_dev.dv_xname);
  goto fail;
 }
 sc->fwcmd_data = ((&sc->tx_free_list)->tqh_first);
 do { if (((sc->fwcmd_data)->next.tqe_next) != ((void *)0)) (sc->fwcmd_data)->next.tqe_next->next.tqe_prev = (sc->fwcmd_data)->next.tqe_prev; else (&sc->tx_free_list)->tqh_last = (sc->fwcmd_data)->next.tqe_prev; *(sc->fwcmd_data)->next.tqe_prev = (sc->fwcmd_data)->next.tqe_next; ((sc->fwcmd_data)->next.tqe_prev) = ((void *)-1); ((sc->fwcmd_data)->next.tqe_next) = ((void *)-1); } while (0);
 if (sc->cut == 1)
  rsu_power_on_acut(sc);
 else
  rsu_power_on_bcut(sc);
 error = rsu_load_firmware(sc);
 if (error != 0)
  goto fail;
 rsu_write_4(sc, (0x0040 + 0x008),
     rsu_read_4(sc, (0x0040 + 0x008)) | 0x04000000);
 rsu_write_4(sc, (0x0040 + 0x008),
     rsu_read_4(sc, (0x0040 + 0x008)) | 0x02000000);
 rsu_write_4(sc, (0x0040 + 0x000),
     rsu_read_4(sc, (0x0040 + 0x000)) & ~0xff000000);
 rsu_write_1(sc, 0x00b5,
     rsu_read_1(sc, 0x00b5) | 0x01);
 rsu_write_1(sc, 0x00bd,
     rsu_read_1(sc, 0x00bd) | 0x80);
 rsu_write_1(sc, 0x00d9, 0x01);
 rsu_write_1(sc, 0xfe5b, 0x04);
 rsu_write_1(sc, 0xfe5c,
     rsu_read_1(sc, 0xfe5c) | 0x80);
 __builtin_memcpy((ic->ic_myaddr), (((caddr_t)((ifp->if_sadl)->sdl_data + (ifp->if_sadl)->sdl_nlen))), (6));
 rsu_write_region_1(sc, (0x0050 + 0x000), ic->ic_myaddr, 6);
 for (i = 0; i < 1; i++) {
  data = &sc->rx_data[i];
  data->pipe = sc->pipe[sc->qid2idx[7]];
  usbd_setup_xfer(data->xfer, data->pipe, data, data->buf,
      (8 * 1024), 0x04 | 0x01,
      0, rsu_rxeof);
  error = usbd_transfer(data->xfer);
  if (error != 0 && error != USBD_IN_PROGRESS)
   goto fail;
 }
 usbd_delay_ms(sc->sc_udev, 1500);
 ;
 error = rsu_fw_cmd(sc, 58, ic->ic_myaddr,
     6);
 if (error != 0) {
  printf("%s: could not set MAC address\n", sc->sc_dev.dv_xname);
  goto fail;
 }
 rsu_write_1(sc, 0xfe58,
     0x08 | 0x04);
 __builtin_memset((&cmd), (0), (sizeof(cmd)));
 cmd.mode = 0;
 ;
 error = rsu_fw_cmd(sc, 36, &cmd, sizeof(cmd));
 if (error != 0) {
  printf("%s: could not set PS mode\n", sc->sc_dev.dv_xname);
  goto fail;
 }
 if (ic->ic_htcaps & 0x00000002) {
  error = rsu_fw_iocmd(sc,
      (((0xf4) << 24) & 0xff000000) |
      (((0x00) << 0) & 0x000000ff) |
      (((0x0007) << 8) & 0x00ffff00));
  if (error != 0) {
   printf("%s: could not enable 40MHz mode\n",
       sc->sc_dev.dv_xname);
   goto fail;
  }
 }
 ic->ic_bss->ni_chan = ic->ic_ibss_chan;
 ifp->if_flags |= 0x40;
 ifq_clr_oactive(&ifp->if_snd);
 sc->scan_pass = 0;
 ieee80211_begin_scan(ifp);
 return (0);
 fail:
 rsu_stop(ifp);
 return (error);
}
void
rsu_stop(struct ifnet *ifp)
{
 struct rsu_softc *sc = ifp->if_softc;
 struct ieee80211com *ic = &sc->sc_ic;
 int i, s;
 sc->sc_tx_timer = 0;
 ifp->if_timer = 0;
 ifp->if_flags &= ~0x40;
 ifq_clr_oactive(&ifp->if_snd);
 ic->ic_scan_lock = 0x0;
 s = splraise(2);
 (((ic)->ic_newstate)((ic), (IEEE80211_S_INIT), (-1)));
 rsu_wait_async(sc);
 _splx(s);
 timeout_del(&sc->calib_to);
 rsu_power_off(sc);
 for (i = 0; i < sc->npipes; i++)
  usbd_abort_pipe(sc->pipe[i]);
 rsu_free_tx_list(sc);
 rsu_free_rx_list(sc);
}
