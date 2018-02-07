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
 return (__uint16_t)(__builtin_constant_p(*(const u_int16_t *)frm) ? (__uint16_t)(((__uint16_t)(*(const u_int16_t *)frm) & 0xffU) << 8 | ((__uint16_t)(*(const u_int16_t *)frm) & 0xff00U) >> 8) : __swap16md(*(const u_int16_t *)frm));
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
static inline void
ieee80211_node_incref(struct ieee80211_node *ni)
{
 int s;
 s = _splraise(6);
 ni->ni_refcnt++;
 _splx(s);
}
static inline u_int
ieee80211_node_decref(struct ieee80211_node *ni)
{
 u_int refcnt;
 int s;
 s = _splraise(6);
 refcnt = --ni->ni_refcnt;
 _splx(s);
 return refcnt;
}
static inline struct ieee80211_node *
ieee80211_ref_node(struct ieee80211_node *ni)
{
 ieee80211_node_incref(ni);
 return ni;
}
static inline void
ieee80211_unref_node(struct ieee80211_node **ni)
{
 ieee80211_node_decref(*ni);
 *ni = ((void *)0);
}
static inline int
ieee80211_node_supports_ht(struct ieee80211_node *ni)
{
 return (ni->ni_rxmcs[0] & 0xff);
}
struct ieee80211com;
typedef void ieee80211_iter_func(void *, struct ieee80211_node *);
void ieee80211_node_attach(struct ifnet *);
void ieee80211_node_lateattach(struct ifnet *);
void ieee80211_node_detach(struct ifnet *);
void ieee80211_begin_scan(struct ifnet *);
void ieee80211_next_scan(struct ifnet *);
void ieee80211_end_scan(struct ifnet *);
void ieee80211_reset_scan(struct ifnet *);
struct ieee80211_node *ieee80211_alloc_node(struct ieee80211com *,
  const u_int8_t *);
struct ieee80211_node *ieee80211_dup_bss(struct ieee80211com *,
  const u_int8_t *);
struct ieee80211_node *ieee80211_find_node(struct ieee80211com *,
  const u_int8_t *);
struct ieee80211_node *ieee80211_find_rxnode(struct ieee80211com *,
  const struct ieee80211_frame *);
struct ieee80211_node *ieee80211_find_txnode(struct ieee80211com *,
  const u_int8_t *);
struct ieee80211_node *
  ieee80211_find_node_for_beacon(struct ieee80211com *,
  const u_int8_t *, const struct ieee80211_channel *,
  const char *, u_int8_t);
void ieee80211_release_node(struct ieee80211com *,
  struct ieee80211_node *);
void ieee80211_free_allnodes(struct ieee80211com *);
void ieee80211_iterate_nodes(struct ieee80211com *,
  ieee80211_iter_func *, void *);
void ieee80211_clean_cached(struct ieee80211com *);
void ieee80211_clean_nodes(struct ieee80211com *, int);
void ieee80211_setup_htcaps(struct ieee80211_node *, const uint8_t *,
    uint8_t);
void ieee80211_clear_htcaps(struct ieee80211_node *);
int ieee80211_setup_htop(struct ieee80211_node *, const uint8_t *,
    uint8_t);
int ieee80211_setup_rates(struct ieee80211com *,
     struct ieee80211_node *, const u_int8_t *, const u_int8_t *, int);
int ieee80211_iserp_sta(const struct ieee80211_node *);
void ieee80211_count_longslotsta(void *, struct ieee80211_node *);
void ieee80211_count_nonerpsta(void *, struct ieee80211_node *);
void ieee80211_count_pssta(void *, struct ieee80211_node *);
void ieee80211_count_rekeysta(void *, struct ieee80211_node *);
void ieee80211_node_join(struct ieee80211com *,
  struct ieee80211_node *, int);
void ieee80211_node_leave(struct ieee80211com *,
  struct ieee80211_node *);
int ieee80211_match_bss(struct ieee80211com *,
  struct ieee80211_node *);
void ieee80211_create_ibss(struct ieee80211com* ,
  struct ieee80211_channel *);
void ieee80211_notify_dtim(struct ieee80211com *);
void ieee80211_set_tim(struct ieee80211com *, int, int);
int ieee80211_node_cmp(const struct ieee80211_node *,
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
extern void ieee80211_auth_open_confirm(struct ieee80211com *,
     struct ieee80211_node *, uint16_t);
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
 int (*ic_newauth)(struct ieee80211com *,
        struct ieee80211_node *, int, uint16_t);
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
struct wi_ltv_gen {
 u_int16_t wi_len;
 u_int16_t wi_type;
 u_int16_t wi_val;
};
struct wi_ltv_str {
 u_int16_t wi_len;
 u_int16_t wi_type;
 u_int16_t wi_str[17];
};
struct wi_ltv_dnld_buf {
 u_int16_t wi_len;
 u_int16_t wi_type;
 u_int16_t wi_buf_pg;
 u_int16_t wi_buf_off;
 u_int16_t wi_buf_len;
};
struct wi_ltv_memsz {
 u_int16_t wi_len;
 u_int16_t wi_type;
 u_int16_t wi_mem_ram;
 u_int16_t wi_mem_nvram;
};
struct wi_ltv_ver {
 u_int16_t wi_len;
 u_int16_t wi_type;
 u_int16_t wi_ver[4];
};
struct wi_ltv_domains {
 u_int16_t wi_len;
 u_int16_t wi_type;
 u_int16_t wi_domains[6];
};
struct wi_ltv_cis {
 u_int16_t wi_len;
 u_int16_t wi_type;
 u_int16_t wi_cis[240];
};
struct wi_ltv_commqual {
 u_int16_t wi_len;
 u_int16_t wi_type;
 u_int16_t wi_coms_qual;
 u_int16_t wi_sig_lvl;
 u_int16_t wi_noise_lvl;
};
struct wi_ltv_scalethresh {
 u_int16_t wi_len;
 u_int16_t wi_type;
 u_int16_t wi_energy_detect;
 u_int16_t wi_carrier_detect;
 u_int16_t wi_defer;
 u_int16_t wi_cell_search;
 u_int16_t wi_out_of_range;
 u_int16_t wi_delta_snr;
};
struct wi_ltv_pcf {
 u_int16_t wi_len;
 u_int16_t wi_type;
 u_int16_t wi_energy_detect;
 u_int16_t wi_carrier_detect;
 u_int16_t wi_defer;
 u_int16_t wi_cell_search;
 u_int16_t wi_range;
};
struct wi_ltv_macaddr {
 u_int16_t wi_len;
 u_int16_t wi_type;
 u_int16_t wi_mac_addr[3];
};
struct wi_ltv_ssid {
 u_int16_t wi_len;
 u_int16_t wi_type;
 u_int16_t wi_id[17];
};
struct wi_ltv_nodename {
 u_int16_t wi_len;
 u_int16_t wi_type;
 u_int16_t wi_nodename[17];
};
struct wi_ltv_mcast {
 u_int16_t wi_len;
 u_int16_t wi_type;
 struct ether_addr wi_mcast[16];
};
struct wi_ltv_rates {
 u_int16_t wi_len;
 u_int16_t wi_type;
 u_int8_t wi_rates[10];
};
struct wi_frame {
 u_int16_t wi_status;
 u_int16_t wi_rsvd0;
 u_int16_t wi_rsvd1;
 u_int16_t wi_q_info;
 u_int16_t wi_rsvd2;
 u_int8_t wi_tx_rtry;
 u_int8_t wi_tx_rate;
 u_int16_t wi_tx_ctl;
 u_int16_t wi_frame_ctl;
 u_int16_t wi_id;
 u_int8_t wi_addr1[6];
 u_int8_t wi_addr2[6];
 u_int8_t wi_addr3[6];
 u_int16_t wi_seq_ctl;
 u_int8_t wi_addr4[6];
 u_int16_t wi_dat_len;
 u_int8_t wi_dst_addr[6];
 u_int8_t wi_src_addr[6];
 u_int16_t wi_len;
 u_int16_t wi_dat[3];
 u_int16_t wi_type;
};
struct wi_req {
 u_int16_t wi_len;
 u_int16_t wi_type;
 u_int16_t wi_val[512];
};
struct wi_80211_hdr {
 u_int16_t frame_ctl;
 u_int16_t dur_id;
 u_int8_t addr1[6];
 u_int8_t addr2[6];
 u_int8_t addr3[6];
 u_int16_t seq_ctl;
 u_int8_t addr4[6];
};
struct wi_mgmt_hdr {
 u_int16_t frame_ctl;
 u_int16_t duration;
 u_int8_t dst_addr[6];
 u_int8_t src_addr[6];
 u_int8_t bssid[6];
 u_int16_t seq_ctl;
};
struct wi_counters {
 u_int32_t wi_tx_unicast_frames;
 u_int32_t wi_tx_multicast_frames;
 u_int32_t wi_tx_fragments;
 u_int32_t wi_tx_unicast_octets;
 u_int32_t wi_tx_multicast_octets;
 u_int32_t wi_tx_deferred_xmits;
 u_int32_t wi_tx_single_retries;
 u_int32_t wi_tx_multi_retries;
 u_int32_t wi_tx_retry_limit;
 u_int32_t wi_tx_discards;
 u_int32_t wi_rx_unicast_frames;
 u_int32_t wi_rx_multicast_frames;
 u_int32_t wi_rx_fragments;
 u_int32_t wi_rx_unicast_octets;
 u_int32_t wi_rx_multicast_octets;
 u_int32_t wi_rx_fcs_errors;
 u_int32_t wi_rx_discards_nobuf;
 u_int32_t wi_tx_discards_wrong_sa;
 u_int32_t wi_rx_WEP_cant_decrypt;
 u_int32_t wi_rx_msg_in_msg_frags;
 u_int32_t wi_rx_msg_in_bad_msg_frags;
};
struct wi_key {
 u_int16_t wi_keylen;
 u_int8_t wi_keydat[13];
};
struct wi_ltv_keys {
 u_int16_t wi_len;
 u_int16_t wi_type;
 struct wi_key wi_keys[4];
};
struct wi_apinfo {
 int scanreason;
 char bssid[6];
 int channel;
 int signal;
 int noise;
 int quality;
 int namelen;
 char name[32];
 int capinfo;
 int interval;
 int rate;
};
struct wi_rx_frame {
 u_int16_t wi_status;
 u_int16_t wi_ts0;
 u_int16_t wi_ts1;
 u_int8_t wi_silence;
 u_int8_t wi_signal;
 u_int8_t wi_rate;
 u_int8_t wi_rx_flow;
 u_int16_t wi_rsvd0;
 u_int16_t wi_rsvd1;
 u_int16_t wi_frame_ctl;
 u_int16_t wi_id;
 u_int8_t wi_addr1[6];
 u_int8_t wi_addr2[6];
 u_int8_t wi_addr3[6];
 u_int16_t wi_seq_ctl;
 u_int8_t wi_addr4[6];
 u_int16_t wi_dat_len;
 u_int8_t wi_dst_addr[6];
 u_int8_t wi_src_addr[6];
 u_int16_t wi_len;
};
struct wi_snap_frame {
 u_int16_t wi_dat[3];
 u_int16_t wi_type;
};
struct wi_mgmt_var_hdr {
 u_int8_t wi_code;
 u_int8_t wi_len;
 u_int8_t wi_data[256];
};
struct wi_mgmt_beacon_hdr {
 u_int32_t wi_ts0;
 u_int32_t wi_ts1;
 u_int16_t wi_interval;
 u_int16_t wi_capinfo;
};
struct wi_mgmt_disas_hdr {
 u_int16_t wi_reason;
};
struct wi_mgmt_asreq_hdr {
 u_int16_t wi_capinfo;
 u_int16_t wi_interval;
};
struct wi_mgmt_asresp_hdr {
 u_int16_t wi_capinfo;
 u_int16_t wi_status;
 u_int16_t wi_aid;
};
struct wi_mgmt_reasreq_hdr {
 u_int16_t wi_capinfo;
 u_int16_t wi_interval;
 u_int8_t wi_currap[6];
};
struct wi_mgmt_reasresp_hdr {
 u_int16_t wi_capinfo;
 u_int16_t wi_status;
 u_int16_t wi_aid;
};
struct wi_mgmt_proberesp_hdr {
 u_int32_t wi_ts0;
 u_int32_t wi_ts1;
 u_int16_t wi_interval;
 u_int16_t wi_capinfo;
};
struct wi_mgmt_auth_hdr {
 u_int16_t wi_algo;
 u_int16_t wi_seq;
 u_int16_t wi_status;
};
struct wi_mgmt_deauth_hdr {
 u_int16_t wi_reason;
};
struct wi_scan_res {
 u_int16_t wi_chan;
 u_int16_t wi_noise;
 u_int16_t wi_signal;
 u_int8_t wi_bssid[6];
 u_int16_t wi_interval;
 u_int16_t wi_capinfo;
 u_int16_t wi_ssid_len;
 u_int8_t wi_ssid[32];
 u_int8_t wi_srates[10];
 u_int8_t wi_rate;
 u_int8_t wi_rsvd;
};
struct wi_scan_p2_hdr {
 u_int16_t wi_rsvd;
 u_int16_t wi_reason;
};
struct wi_card_ident {
 const u_int16_t card_id;
 const char *card_name;
 const u_int8_t firm_type;
};
struct hostap_sta {
 u_int8_t addr[6];
 u_int16_t asid;
 u_int16_t flags;
 u_int16_t sig_info;
 u_int16_t capinfo;
 u_int8_t rates;
};
struct hostap_getall {
 int nstations;
 struct hostap_sta *addr;
 int size;
};
struct wihap_sta_info {
 struct { struct wihap_sta_info *tqe_next; struct wihap_sta_info **tqe_prev; } list;
 struct { struct wihap_sta_info *le_next; struct wihap_sta_info **le_prev; } hash;
 struct wi_softc *sc;
 u_int8_t addr[6];
 u_short flags;
 struct timeout tmo;
 u_int16_t asid;
 u_int16_t capinfo;
 u_int16_t sig_info;
 u_int8_t rates;
 u_int8_t tx_curr_rate;
 u_int8_t tx_max_rate;
 u_int32_t *challenge;
};
struct wihap_info {
 struct sta_list { struct wihap_sta_info *tqh_first; struct wihap_sta_info **tqh_last; } sta_list;
 struct sta_hash { struct wihap_sta_info *lh_first; } sta_hash[113];
 u_int16_t apflags;
 int n_stations;
 u_int16_t asid_inuse_mask[113];
 int inactivity_time;
 struct timeout tmo;
};
struct wi_softc;
struct wi_frame;
int wihap_check_tx(struct wihap_info *, u_int8_t [], u_int8_t *);
int wihap_data_input(struct wi_softc *, struct wi_frame *, struct mbuf *);
int wihap_ioctl(struct wi_softc *, u_long, caddr_t);
void wihap_init(struct wi_softc *);
void wihap_mgmt_input(struct wi_softc *, struct wi_frame *, struct mbuf *);
void wihap_shutdown(struct wi_softc *);
struct wi_softc {
 struct device sc_dev;
 struct ieee80211com sc_ic;
 struct ifmedia sc_media;
 bus_space_handle_t wi_bhandle;
 bus_space_tag_t wi_btag;
 bus_space_handle_t wi_lhandle;
 bus_space_tag_t wi_ltag;
 bus_size_t wi_cor_offset;
 int wi_tx_data_id;
 int wi_tx_mgmt_id;
 int wi_flags;
 int wi_if_flags;
 int wi_cmd_count;
 u_int16_t wi_procframe;
 u_int16_t wi_ptype;
 u_int16_t wi_portnum;
 u_int16_t wi_max_data_len;
 u_int16_t wi_rts_thresh;
 u_int16_t wi_ap_density;
 u_int16_t wi_tx_rate;
 u_int16_t wi_create_ibss;
 u_int16_t wi_channel;
 u_int16_t wi_pm_enabled;
 u_int16_t wi_mor_enabled;
 u_int16_t wi_max_sleep;
 u_int16_t wi_authtype;
 u_int16_t wi_roaming;
 u_int16_t wi_supprates;
 u_int16_t wi_diversity;
 u_int8_t wi_rxbuf[1596];
 u_int8_t wi_txbuf[1596];
 u_int8_t wi_scanbuf[1596];
 int wi_scan_lock;
 struct timeout wi_scan_timeout;
 u_int8_t wi_scanbuf_len;
 struct ieee80211_nwid wi_node_name;
 struct ieee80211_nwid wi_net_name;
 struct ieee80211_nwid wi_ibss_name;
 int wi_use_wep;
 int wi_enh_security;
 int wi_crypto_algorithm;
 int wi_tx_key;
 struct wi_ltv_keys wi_keys;
 struct wi_counters wi_stats;
 void *sc_ih;
 struct timeout sc_timo;
 int sc_firmware_type;
 int sc_sta_firmware_ver;
 int sc_pci;
 struct wihap_info wi_hostap_info;
 u_int32_t wi_icv;
 int wi_icv_flag;
 int wi_ibss_port;
 int16_t wi_txpower;
 struct {
  u_int16_t wi_sleep;
  u_int16_t wi_delaysupp;
  u_int16_t wi_txsupp;
  u_int16_t wi_monitor;
  u_int16_t wi_ledtest;
  u_int16_t wi_ledtest_param0;
  u_int16_t wi_ledtest_param1;
  u_int16_t wi_conttx;
  u_int16_t wi_conttx_param0;
  u_int16_t wi_contrx;
  u_int16_t wi_sigstate;
  u_int16_t wi_sigstate_param0;
  u_int16_t wi_confbits;
  u_int16_t wi_confbits_param0;
 } wi_debug;
 struct wi_usb_softc *wi_usb_cdata;
 struct wi_funcs *sc_funcs;
};
struct wi_funcs {
 int (*f_cmd)(struct wi_softc *sc, int cmd, int val0, int val1,
     int val2);
 int (*f_read_record)(struct wi_softc *sc, struct wi_ltv_gen *ltv);
 int (*f_write_record)(struct wi_softc *sc,
     struct wi_ltv_gen *ltv);
 int (*f_alloc_nicmem)(struct wi_softc *sc, int len, int *id);
 int (*f_read_data)(struct wi_softc *sc, int id, int off,
     caddr_t buf, int len);
 int (*f_write_data)(struct wi_softc *sc, int id, int off,
     caddr_t buf, int len);
 int (*f_get_fid)(struct wi_softc *sc, int fid);
 void (*f_init)(struct wi_softc *sc);
 void (*f_start)(struct ifnet *ifp);
 int (*f_ioctl)(struct ifnet *, u_long, caddr_t);
 void (*f_watchdog)(struct ifnet *ifp);
 void (*f_inquire)(void *xsc);
};
extern struct wi_funcs wi_func_io;
int wi_attach(struct wi_softc *, struct wi_funcs *);
void wi_detach(struct wi_softc *);
int wi_intr(void *);
void wi_stop(struct wi_softc *);
void wi_cor_reset(struct wi_softc *);
int wi_mgmt_xmit(struct wi_softc *, caddr_t, int);
void wi_update_stats(struct wi_softc *sc);
void wi_rxeof(struct wi_softc *sc);
void wi_txeof(struct wi_softc *sc, int status);
struct rc4_ctx {
 u_int8_t x, y;
 u_int8_t state[256];
};
void rc4_keysetup(struct rc4_ctx *, u_char *, u_int32_t)
    __attribute__((__bounded__(__buffer__,2,3)));
void rc4_crypt(struct rc4_ctx *, u_char *, u_char *, u_int32_t)
    __attribute__((__bounded__(__buffer__,2,4)))
    __attribute__((__bounded__(__buffer__,3,4)));
void rc4_getbytes(struct rc4_ctx *, u_char *, u_int32_t)
    __attribute__((__bounded__(__buffer__,2,3)));
void rc4_skip(struct rc4_ctx *, u_int32_t);
 void wi_reset(struct wi_softc *);
 int wi_ioctl(struct ifnet *, u_long, caddr_t);
 void wi_init_io(struct wi_softc *);
 void wi_start(struct ifnet *);
 void wi_watchdog(struct ifnet *);
 void wi_rxeof(struct wi_softc *);
 void wi_txeof(struct wi_softc *, int);
 void wi_update_stats(struct wi_softc *);
 void wi_setmulti(struct wi_softc *);
 int wi_cmd_io(struct wi_softc *, int, int, int, int);
 int wi_read_record_io(struct wi_softc *, struct wi_ltv_gen *);
 int wi_write_record_io(struct wi_softc *, struct wi_ltv_gen *);
 int wi_read_data_io(struct wi_softc *, int,
     int, caddr_t, int);
 int wi_write_data_io(struct wi_softc *, int,
     int, caddr_t, int);
 int wi_seek(struct wi_softc *, int, int, int);
 void wi_inquire(void *);
 int wi_setdef(struct wi_softc *, struct wi_req *);
 void wi_get_id(struct wi_softc *);
 int wi_media_change(struct ifnet *);
 void wi_media_status(struct ifnet *, struct ifmediareq *);
 int wi_set_ssid(struct ieee80211_nwid *, u_int8_t *, int);
 int wi_set_nwkey(struct wi_softc *, struct ieee80211_nwkey *);
 int wi_get_nwkey(struct wi_softc *, struct ieee80211_nwkey *);
 int wi_sync_media(struct wi_softc *, int, int);
 int wi_set_pm(struct wi_softc *, struct ieee80211_power *);
 int wi_get_pm(struct wi_softc *, struct ieee80211_power *);
 int wi_set_txpower(struct wi_softc *, struct ieee80211_txpower *);
 int wi_get_txpower(struct wi_softc *, struct ieee80211_txpower *);
 int wi_get_debug(struct wi_softc *, struct wi_req *);
 int wi_set_debug(struct wi_softc *, struct wi_req *);
 void wi_do_hostencrypt(struct wi_softc *, caddr_t, int);
 int wi_do_hostdecrypt(struct wi_softc *, caddr_t, int);
 int wi_alloc_nicmem_io(struct wi_softc *, int, int *);
 int wi_get_fid_io(struct wi_softc *sc, int fid);
 void wi_intr_enable(struct wi_softc *sc, int mode);
 void wi_intr_ack(struct wi_softc *sc, int mode);
void wi_scan_timeout(void *);
struct cfdriver wi_cd = {
 ((void *)0), "wi", DV_IFNET
};
const struct wi_card_ident wi_card_ident[] = {
 { 0x0001, "Lucent WaveLAN/IEEE", 1 }, { 0x0002, "Sony WaveLAN/IEEE", 1 }, { 0x0005, "Lucent Embedded WaveLAN/IEEE", 1 }, { 0x8000, "PRISM2 HFA3841(EVB2)", 2 }, { 0x8001, "PRISM2 HWB3763 rev.B", 2 }, { 0x8002, "PRISM2 HWB3163 rev.A", 2 }, { 0x8003, "PRISM2 HWB3163 rev.B", 2 }, { 0x8004, "PRISM2 HFA3842(EVB3)", 2 }, { 0x8007, "PRISM1 HWB1153", 2 }, { 0x8008, "PRISM2 HWB3163 SST-flash", 2 }, { 0x8009, "PRISM2 HWB3163(EVB2) SST-flash", 2 }, { 0x800A, "PRISM2 HFA3842(EVAL)", 2 }, { 0x800B, "PRISM2.5 ISL3873", 2 }, { 0x800C, "PRISM2.5 ISL3873", 2 }, { 0x800D, "PRISM2.5 ISL3873", 2 }, { 0x800E, "PRISM2.5 ISL3873", 2 }, { 0x800f, "PRISM2.5 USB", 2 }, { 0x8010, "PRISM2.5 USB", 2 }, { 0x8011, "PRISM2.5 USB", 2 }, { 0x8012, "PRISM2.5 ISL3874A(Mini-PCI)", 2 }, { 0x8013, "PRISM2.5 ISL3874A(Mini-PCI)", 2 }, { 0x8014, "PRISM2.5 ISL3874A(Mini-PCI)", 2 }, { 0x8015, "PRISM2.5 ISL3874A(Mini-PCI)", 2 }, { 0x8016, "PRISM2.5 ISL3874A(PCI-bridge)", 2 }, { 0x8017, "PRISM2.5 ISL3874A(PCI-bridge)", 2 }, { 0x8019, "PRISM2.5 ISL3874A(PCI-bridge)", 2 }, { 0x8018, "PRISM2.5 ISL3874A(PCI-bridge)", 2 }, { 0x801A, "PRISM3 ISL37300P", 2 }, { 0x801B, "PRISM3 ISL37300P", 2 }, { 0x801C, "PRISM3 ISL37300P", 2 }, { 0x801D, "PRISM3 ISL37300P", 2 }, { 0x801E, "PRISM2.5 USB", 2 }, { 0x801F, "PRISM2.5 USB", 2 }, { 0x8020, "PRISM2.5 USB", 2 }, { 0x8021, "PRISM3 ISL37300P(PCI)", 2 }, { 0x8022, "PRISM3 ISL37300P(PCI)", 2 }, { 0x8023, "PRISM3 ISL37300P(PCI)", 2 }, { 0x8024, "PRISM3 ISL37300P(PCI)", 2 }, { 0x8025, "PRISM3 (USB)", 2 }, { 0x8026, "PRISM3 (USB)", 2 }, { 0x8027, "PRISM3 (USB)", 2 }, { 0, ((void *)0), 0 }
};
struct wi_funcs wi_func_io = {
        wi_cmd_io,
        wi_read_record_io,
        wi_write_record_io,
        wi_alloc_nicmem_io,
        wi_read_data_io,
        wi_write_data_io,
        wi_get_fid_io,
        wi_init_io,
        wi_start,
        wi_ioctl,
        wi_watchdog,
        wi_inquire,
};
int
wi_attach(struct wi_softc *sc, struct wi_funcs *funcs)
{
 struct ieee80211com *ic;
 struct ifnet *ifp;
 struct wi_ltv_macaddr mac;
 struct wi_ltv_rates rates;
 struct wi_ltv_gen gen;
 int error;
 ic = &sc->sc_ic;
 ifp = &ic->ic_ac.ac_if;
 sc->sc_funcs = funcs;
 sc->wi_cmd_count = 500;
 wi_reset(sc);
 mac.wi_type = 0xFC01;
 mac.wi_len = 4;
 error = sc->sc_funcs->f_read_record(sc, (struct wi_ltv_gen *)&mac);
 if (error) {
  printf(": unable to read station address\n");
  return (error);
 }
 __builtin_bcopy((&mac.wi_mac_addr), (&ic->ic_myaddr), (6));
 wi_get_id(sc);
 printf("address %s", ether_sprintf(ic->ic_myaddr));
 __builtin_bcopy((sc->sc_dev.dv_xname), (ifp->if_xname), (16));
 ifp->if_softc = sc;
 ifp->if_flags = 0x2 | 0x800 | 0x8000;
 ifp->if_ioctl = funcs->f_ioctl;
 ifp->if_start = funcs->f_start;
 ifp->if_watchdog = funcs->f_watchdog;
 (void)wi_set_ssid(&sc->wi_node_name, "WaveLAN/IEEE node",
     sizeof("WaveLAN/IEEE node") - 1);
 (void)wi_set_ssid(&sc->wi_net_name, "",
     sizeof("") - 1);
 (void)wi_set_ssid(&sc->wi_ibss_name, "IBSS",
     sizeof("IBSS") - 1);
 sc->wi_portnum = (0 << 8);
 sc->wi_ptype = 0x1;
 sc->wi_ap_density = 1;
 sc->wi_rts_thresh = 2347;
 sc->wi_tx_rate = 3;
 sc->wi_max_data_len = 2304;
 sc->wi_create_ibss = 0;
 sc->wi_pm_enabled = 0;
 sc->wi_max_sleep = 100;
 sc->wi_roaming = 1;
 sc->wi_authtype = 1;
 sc->wi_diversity = 0;
 sc->wi_crypto_algorithm = 0x00;
 gen.wi_type = 0xFC03;
 gen.wi_len = 2;
 if (sc->sc_funcs->f_read_record(sc, &gen) == 0)
  sc->wi_channel = (__uint16_t)(__builtin_constant_p(gen.wi_val) ? (__uint16_t)(((__uint16_t)(gen.wi_val) & 0xffU) << 8 | ((__uint16_t)(gen.wi_val) & 0xff00U) >> 8) : __swap16md(gen.wi_val));
 else
  sc->wi_channel = 3;
 switch (sc->sc_firmware_type) {
 case 1:
  sc->wi_flags |= 0x0040;
  if (sc->sc_sta_firmware_ver >= 60000)
   sc->wi_flags |= 0x0020;
  if (sc->sc_sta_firmware_ver >= 60006) {
   sc->wi_flags |= 0x0008;
   sc->wi_flags |= 0x0010;
  }
  sc->wi_ibss_port = (__uint16_t)(__builtin_constant_p(1) ? (__uint16_t)(((__uint16_t)(1) & 0xffU) << 8 | ((__uint16_t)(1) & 0xff00U) >> 8) : __swap16md(1));
  break;
 case 2:
  sc->wi_flags |= 0x0040;
  if (sc->sc_sta_firmware_ver < 10000)
   sc->wi_cmd_count = 5000;
  else
   sc->wi_cmd_count = 2000;
  if (sc->sc_sta_firmware_ver >= 800) {
   if ((sc->sc_sta_firmware_ver != 10402) &&
       (!(sc->wi_flags & 0x0400)))
    sc->wi_flags |= 0x0100;
   sc->wi_flags |= 0x0008;
   sc->wi_flags |= 0x0010;
  }
  if (sc->sc_sta_firmware_ver >= 10603)
   sc->wi_flags |= 0x0800;
  sc->wi_ibss_port = (__uint16_t)(__builtin_constant_p(0) ? (__uint16_t)(((__uint16_t)(0) & 0xffU) << 8 | ((__uint16_t)(0) & 0xff00U) >> 8) : __swap16md(0));
  break;
 case 3:
  sc->wi_flags |= 0x0080;
  if (sc->sc_sta_firmware_ver >= 20000)
   sc->wi_flags |= 0x0008;
  if (sc->sc_sta_firmware_ver >= 25000)
   sc->wi_flags |= 0x0010;
  sc->wi_ibss_port = (__uint16_t)(__builtin_constant_p(4) ? (__uint16_t)(((__uint16_t)(4) & 0xffU) << 8 | ((__uint16_t)(4) & 0xff00U) >> 8) : __swap16md(4));
  break;
 }
 gen.wi_type = 0xFD4F;
 gen.wi_len = 2;
 if (sc->sc_funcs->f_read_record(sc, &gen) == 0 && gen.wi_val != (__uint16_t)(__builtin_constant_p(0) ? (__uint16_t)(((__uint16_t)(0) & 0xffU) << 8 | ((__uint16_t)(0) & 0xff00U) >> 8) : __swap16md(0)))
  sc->wi_flags |= 0x0004;
 timeout_set(&sc->sc_timo, funcs->f_inquire, sc);
 __builtin_bzero((&sc->wi_stats), (sizeof(sc->wi_stats)));
 rates.wi_type = 0xFDC6;
 rates.wi_len = sizeof(rates.wi_rates);
 if (sc->sc_funcs->f_read_record(sc, (struct wi_ltv_gen *)&rates) == 0) {
  int i, nrates;
  nrates = (__uint16_t)(__builtin_constant_p(*(u_int16_t *)rates.wi_rates) ? (__uint16_t)(((__uint16_t)(*(u_int16_t *)rates.wi_rates) & 0xffU) << 8 | ((__uint16_t)(*(u_int16_t *)rates.wi_rates) & 0xff00U) >> 8) : __swap16md(*(u_int16_t *)rates.wi_rates));
  if (nrates > sizeof(rates.wi_rates) - 2)
   nrates = sizeof(rates.wi_rates) - 2;
  sc->wi_supprates = 0;
  for (i = 0; i < nrates; i++)
   sc->wi_supprates |= rates.wi_rates[2 + i];
 } else
  sc->wi_supprates = 0x0001 | 0x0002 |
      0x0004 | 0x0008;
 ifmedia_init(&sc->sc_media, 0, wi_media_change, wi_media_status);
 ifmedia_add(&sc->sc_media, (((0x0000000000000400ULL) | (0ULL) | (0) | ((uint64_t)(0) << 56))), (0), ((void *)0));
 ifmedia_add(&sc->sc_media, (((0x0000000000000400ULL) | (0ULL) | (0x0000000000010000ULL) | ((uint64_t)(0) << 56))), (0), ((void *)0));
 if (sc->wi_flags & 0x0008)
  ifmedia_add(&sc->sc_media, (((0x0000000000000400ULL) | (0ULL) | (0x0000000000040000ULL) | ((uint64_t)(0) << 56))), (0), ((void *)0));
 if (sc->wi_flags & 0x0010)
  ifmedia_add(&sc->sc_media, (((0x0000000000000400ULL) | (0ULL) | (0x0000000000080000ULL) | ((uint64_t)(0) << 56))), (0), ((void *)0));
 if (sc->wi_flags & 0x0100)
  ifmedia_add(&sc->sc_media, (((0x0000000000000400ULL) | (0ULL) | (0x0000000000020000ULL) | ((uint64_t)(0) << 56))), (0), ((void *)0));
 if (sc->wi_supprates & 0x0001) {
  ifmedia_add(&sc->sc_media, (((0x0000000000000400ULL) | (8) | (0) | ((uint64_t)(0) << 56))), (0), ((void *)0));
  ifmedia_add(&sc->sc_media, (((0x0000000000000400ULL) | (8) | (0x0000000000010000ULL) | ((uint64_t)(0) << 56))), (0), ((void *)0));
  if (sc->wi_flags & 0x0008)
   ifmedia_add(&sc->sc_media, (((0x0000000000000400ULL) | (8) | (0x0000000000040000ULL) | ((uint64_t)(0) << 56))), (0), ((void *)0));
  if (sc->wi_flags & 0x0010)
   ifmedia_add(&sc->sc_media, (((0x0000000000000400ULL) | (8) | (0x0000000000080000ULL) | ((uint64_t)(0) << 56))), (0), ((void *)0));
  if (sc->wi_flags & 0x0100)
   ifmedia_add(&sc->sc_media, (((0x0000000000000400ULL) | (8) | (0x0000000000020000ULL) | ((uint64_t)(0) << 56))), (0), ((void *)0));
 }
 if (sc->wi_supprates & 0x0002) {
  ifmedia_add(&sc->sc_media, (((0x0000000000000400ULL) | (5) | (0) | ((uint64_t)(0) << 56))), (0), ((void *)0));
  ifmedia_add(&sc->sc_media, (((0x0000000000000400ULL) | (5) | (0x0000000000010000ULL) | ((uint64_t)(0) << 56))), (0), ((void *)0));
  if (sc->wi_flags & 0x0008)
   ifmedia_add(&sc->sc_media, (((0x0000000000000400ULL) | (5) | (0x0000000000040000ULL) | ((uint64_t)(0) << 56))), (0), ((void *)0));
  if (sc->wi_flags & 0x0010)
   ifmedia_add(&sc->sc_media, (((0x0000000000000400ULL) | (5) | (0x0000000000080000ULL) | ((uint64_t)(0) << 56))), (0), ((void *)0));
  if (sc->wi_flags & 0x0100)
   ifmedia_add(&sc->sc_media, (((0x0000000000000400ULL) | (5) | (0x0000000000020000ULL) | ((uint64_t)(0) << 56))), (0), ((void *)0));
 }
 if (sc->wi_supprates & 0x0004) {
  ifmedia_add(&sc->sc_media, (((0x0000000000000400ULL) | (6) | (0) | ((uint64_t)(0) << 56))), (0), ((void *)0));
  ifmedia_add(&sc->sc_media, (((0x0000000000000400ULL) | (6) | (0x0000000000010000ULL) | ((uint64_t)(0) << 56))), (0), ((void *)0));
  if (sc->wi_flags & 0x0008)
   ifmedia_add(&sc->sc_media, (((0x0000000000000400ULL) | (6) | (0x0000000000040000ULL) | ((uint64_t)(0) << 56))), (0), ((void *)0));
  if (sc->wi_flags & 0x0010)
   ifmedia_add(&sc->sc_media, (((0x0000000000000400ULL) | (6) | (0x0000000000080000ULL) | ((uint64_t)(0) << 56))), (0), ((void *)0));
  if (sc->wi_flags & 0x0100)
   ifmedia_add(&sc->sc_media, (((0x0000000000000400ULL) | (6) | (0x0000000000020000ULL) | ((uint64_t)(0) << 56))), (0), ((void *)0));
 }
 if (sc->wi_supprates & 0x0008) {
  ifmedia_add(&sc->sc_media, (((0x0000000000000400ULL) | (7) | (0) | ((uint64_t)(0) << 56))), (0), ((void *)0));
  ifmedia_add(&sc->sc_media, (((0x0000000000000400ULL) | (7) | (0x0000000000010000ULL) | ((uint64_t)(0) << 56))), (0), ((void *)0));
  if (sc->wi_flags & 0x0008)
   ifmedia_add(&sc->sc_media, (((0x0000000000000400ULL) | (7) | (0x0000000000040000ULL) | ((uint64_t)(0) << 56))), (0), ((void *)0));
  if (sc->wi_flags & 0x0010)
   ifmedia_add(&sc->sc_media, (((0x0000000000000400ULL) | (7) | (0x0000000000080000ULL) | ((uint64_t)(0) << 56))), (0), ((void *)0));
  if (sc->wi_flags & 0x0100)
   ifmedia_add(&sc->sc_media, (((0x0000000000000400ULL) | (7) | (0x0000000000020000ULL) | ((uint64_t)(0) << 56))), (0), ((void *)0));
  ifmedia_add(&sc->sc_media, (((0x0000000000000400ULL) | (1ULL) | (0) | ((uint64_t)(0) << 56))), (0), ((void *)0));
 }
 ifmedia_set(&sc->sc_media,
     ((0x0000000000000400ULL) | (0ULL) | (0) | ((uint64_t)(0) << 56)));
 if_attach(ifp);
 __builtin_memcpy((((struct arpcom *)ifp)->ac_enaddr), (ic->ic_myaddr), (6));
 ether_ifattach(ifp);
 printf("\n");
 sc->wi_flags |= 0x0001;
 ;
 if_addgroup(ifp, "wlan");
 ifp->if_priority = 4;
 sc->sc_funcs->f_init(sc);
 wi_stop(sc);
 return (0);
}
 void
wi_intr_enable(struct wi_softc *sc, int mode)
{
 if (!(sc->wi_flags & 0x0400))
  bus_space_write_2(sc->wi_btag, sc->wi_bhandle, (sc->sc_pci ? 0x32 * 2: 0x32), (mode));
}
 void
wi_intr_ack(struct wi_softc *sc, int mode)
{
 if (!(sc->wi_flags & 0x0400))
  bus_space_write_2(sc->wi_btag, sc->wi_bhandle, (sc->sc_pci ? 0x34 * 2: 0x34), (mode));
}
int
wi_intr(void *vsc)
{
 struct wi_softc *sc = vsc;
 struct ifnet *ifp;
 u_int16_t status;
 ;
 ifp = &sc->sc_ic.ic_ac.ac_if;
 if (!(sc->wi_flags & 0x0001) || !(ifp->if_flags & 0x1)) {
  bus_space_write_2(sc->wi_btag, sc->wi_bhandle, (sc->sc_pci ? 0x32 * 2: 0x32), (0));
  bus_space_write_2(sc->wi_btag, sc->wi_bhandle, (sc->sc_pci ? 0x34 * 2: 0x34), (0xffff));
  return (0);
 }
 bus_space_write_2(sc->wi_btag, sc->wi_bhandle, (sc->sc_pci ? 0x32 * 2: 0x32), (0));
 status = bus_space_read_2(sc->wi_btag, sc->wi_bhandle, (sc->sc_pci ? 0x30 * 2: 0x30));
 bus_space_write_2(sc->wi_btag, sc->wi_bhandle, (sc->sc_pci ? 0x34 * 2: 0x34), (~(0x0001|0x0002|0x0004|0x0008|0x0080|0x2000)));
 if (status & 0x0001) {
  wi_rxeof(sc);
  bus_space_write_2(sc->wi_btag, sc->wi_bhandle, (sc->sc_pci ? 0x34 * 2: 0x34), (0x0001));
 }
 if (status & 0x0002) {
  wi_txeof(sc, status);
  bus_space_write_2(sc->wi_btag, sc->wi_bhandle, (sc->sc_pci ? 0x34 * 2: 0x34), (0x0002));
 }
 if (status & 0x0008) {
  int id;
  id = bus_space_read_2(sc->wi_btag, sc->wi_bhandle, (sc->sc_pci ? 0x22 * 2: 0x22));
  bus_space_write_2(sc->wi_btag, sc->wi_bhandle, (sc->sc_pci ? 0x34 * 2: 0x34), (0x0008));
  if (id == sc->wi_tx_data_id)
   wi_txeof(sc, status);
 }
 if (status & 0x0080) {
  wi_update_stats(sc);
  bus_space_write_2(sc->wi_btag, sc->wi_bhandle, (sc->sc_pci ? 0x34 * 2: 0x34), (0x0080));
 }
 if (status & 0x0004) {
  wi_txeof(sc, status);
  bus_space_write_2(sc->wi_btag, sc->wi_bhandle, (sc->sc_pci ? 0x34 * 2: 0x34), (0x0004));
 }
 if (status & 0x2000) {
  bus_space_write_2(sc->wi_btag, sc->wi_bhandle, (sc->sc_pci ? 0x34 * 2: 0x34), (0x2000));
 }
 bus_space_write_2(sc->wi_btag, sc->wi_bhandle, (sc->sc_pci ? 0x32 * 2: 0x32), ((0x0001|0x0002|0x0004|0x0008|0x0080|0x2000)));
 if (status == 0)
  return (0);
 if (!(((&ifp->if_snd)->ifq_len) == 0))
  wi_start(ifp);
 return (1);
}
 int
wi_get_fid_io(struct wi_softc *sc, int fid)
{
 return bus_space_read_2(sc->wi_btag, sc->wi_bhandle, (sc->sc_pci ? fid * 2: fid));
}
void
wi_rxeof(struct wi_softc *sc)
{
 struct ifnet *ifp;
 struct ether_header *eh;
 struct mbuf_list ml = { ((void *)0), ((void *)0), 0 };
 struct mbuf *m;
 caddr_t olddata;
 u_int16_t ftype;
 int maxlen;
 int id;
 ifp = &sc->sc_ic.ic_ac.ac_if;
 id = sc->sc_funcs->f_get_fid(sc, 0x20);
 if (sc->wi_procframe || sc->wi_debug.wi_monitor) {
  struct wi_frame *rx_frame;
  int datlen, hdrlen;
  m = m_gethdr((0x0002), (1));
  if (m == ((void *)0)) {
   ifp->if_data.ifi_ierrors++;
   return;
  }
  (void) m_clget((m), (0x0002), (1 << 11));
  if (!(m->m_hdr.mh_flags & 0x0001)) {
   m_freem(m);
   ifp->if_data.ifi_ierrors++;
   return;
  }
  if (sc->sc_funcs->f_read_data(sc, id, 0, ((caddr_t)((m)->m_hdr.mh_data)),
      sizeof(struct wi_frame))) {
   m_freem(m);
   ifp->if_data.ifi_ierrors++;
   return;
  }
  rx_frame = ((struct wi_frame *)((m)->m_hdr.mh_data));
  if (rx_frame->wi_status & (__uint16_t)(__builtin_constant_p(0x0001) ? (__uint16_t)(((__uint16_t)(0x0001) & 0xffU) << 8 | ((__uint16_t)(0x0001) & 0xff00U) >> 8) : __swap16md(0x0001))) {
   m_freem(m);
   ifp->if_data.ifi_ierrors++;
   return;
  }
  switch (((__uint16_t)(__builtin_constant_p(rx_frame->wi_status) ? (__uint16_t)(((__uint16_t)(rx_frame->wi_status) & 0xffU) << 8 | ((__uint16_t)(rx_frame->wi_status) & 0xff00U) >> 8) : __swap16md(rx_frame->wi_status)) & 0x0700)
      >> 8) {
  case 7:
   switch ((__uint16_t)(__builtin_constant_p(rx_frame->wi_frame_ctl) ? (__uint16_t)(((__uint16_t)(rx_frame->wi_frame_ctl) & 0xffU) << 8 | ((__uint16_t)(rx_frame->wi_frame_ctl) & 0xff00U) >> 8) : __swap16md(rx_frame->wi_frame_ctl)) &
       0x000C) {
   case 0x0008:
    hdrlen = 0x44;
    datlen = (__uint16_t)(__builtin_constant_p(rx_frame->wi_dat_len) ? (__uint16_t)(((__uint16_t)(rx_frame->wi_dat_len) & 0xffU) << 8 | ((__uint16_t)(rx_frame->wi_dat_len) & 0xff00U) >> 8) : __swap16md(rx_frame->wi_dat_len));
    break;
   case 0x0000:
    hdrlen = 0x3C;
    datlen = (__uint16_t)(__builtin_constant_p(rx_frame->wi_dat_len) ? (__uint16_t)(((__uint16_t)(rx_frame->wi_dat_len) & 0xffU) << 8 | ((__uint16_t)(rx_frame->wi_dat_len) & 0xff00U) >> 8) : __swap16md(rx_frame->wi_dat_len));
    break;
   case 0x0004:
    hdrlen = 0x3C;
    datlen = 0;
    break;
   default:
    printf("%s" ": received packet of "
        "unknown type on port 7\n", (sc)->sc_dev.dv_xname);
    m_freem(m);
    ifp->if_data.ifi_ierrors++;
    return;
   }
   break;
  case 0:
   hdrlen = 0x44;
   datlen = (__uint16_t)(__builtin_constant_p(rx_frame->wi_dat_len) ? (__uint16_t)(((__uint16_t)(rx_frame->wi_dat_len) & 0xffU) << 8 | ((__uint16_t)(rx_frame->wi_dat_len) & 0xff00U) >> 8) : __swap16md(rx_frame->wi_dat_len));
   break;
  default:
   printf("%s" ": received packet on invalid port "
       "(wi_status=0x%x)\n", (sc)->sc_dev.dv_xname,
       (__uint16_t)(__builtin_constant_p(rx_frame->wi_status) ? (__uint16_t)(((__uint16_t)(rx_frame->wi_status) & 0xffU) << 8 | ((__uint16_t)(rx_frame->wi_status) & 0xff00U) >> 8) : __swap16md(rx_frame->wi_status)));
   m_freem(m);
   ifp->if_data.ifi_ierrors++;
   return;
  }
  if ((hdrlen + datlen + 2) > (1 << 11)) {
   m_freem(m);
   ifp->if_data.ifi_ierrors++;
   return;
  }
  if (sc->sc_funcs->f_read_data(sc, id, hdrlen, ((caddr_t)((m)->m_hdr.mh_data)) + hdrlen,
      datlen + 2)) {
   m_freem(m);
   ifp->if_data.ifi_ierrors++;
   return;
  }
  m->M_dat.MH.MH_pkthdr.len = m->m_hdr.mh_len = hdrlen + datlen;
 } else {
  struct wi_frame rx_frame;
  if (sc->sc_funcs->f_read_data(sc, id, 0, (caddr_t)&rx_frame,
      sizeof(rx_frame))) {
   ifp->if_data.ifi_ierrors++;
   return;
  }
  if (rx_frame.wi_status & (__uint16_t)(__builtin_constant_p(0x0003) ? (__uint16_t)(((__uint16_t)(0x0003) & 0xffU) << 8 | ((__uint16_t)(0x0003) & 0xff00U) >> 8) : __swap16md(0x0003))) {
   ifp->if_data.ifi_ierrors++;
   return;
  }
  ftype = (__uint16_t)(__builtin_constant_p(rx_frame.wi_frame_ctl) ? (__uint16_t)(((__uint16_t)(rx_frame.wi_frame_ctl) & 0xffU) << 8 | ((__uint16_t)(rx_frame.wi_frame_ctl) & 0xff00U) >> 8) : __swap16md(rx_frame.wi_frame_ctl)) & 0x000C;
  m = m_gethdr((0x0002), (1));
  if (m == ((void *)0)) {
   ifp->if_data.ifi_ierrors++;
   return;
  }
  (void) m_clget((m), (0x0002), (1 << 11));
  if (!(m->m_hdr.mh_flags & 0x0001)) {
   m_freem(m);
   ifp->if_data.ifi_ierrors++;
   return;
  }
  olddata = m->m_hdr.mh_data;
  m->m_hdr.mh_data = (caddr_t)(((unsigned long)(m->m_hdr.mh_data + sizeof(struct ether_header)) + 0xf) & ~0xf) - sizeof(struct ether_header);
  eh = ((struct ether_header *)((m)->m_hdr.mh_data));
  maxlen = (1 << 11) - (m->m_hdr.mh_data - olddata);
  if (ftype == 0x0000 &&
      sc->wi_ptype == 0x6) {
   u_int16_t rxlen = (__uint16_t)(__builtin_constant_p(rx_frame.wi_dat_len) ? (__uint16_t)(((__uint16_t)(rx_frame.wi_dat_len) & 0xffU) << 8 | ((__uint16_t)(rx_frame.wi_dat_len) & 0xff00U) >> 8) : __swap16md(rx_frame.wi_dat_len));
   if ((0x3C + rxlen + 2) > maxlen) {
    printf("%s: oversized mgmt packet received in "
        "hostap mode (wi_dat_len=%d, "
        "wi_status=0x%x)\n", sc->sc_dev.dv_xname,
        rxlen, (__uint16_t)(__builtin_constant_p(rx_frame.wi_status) ? (__uint16_t)(((__uint16_t)(rx_frame.wi_status) & 0xffU) << 8 | ((__uint16_t)(rx_frame.wi_status) & 0xff00U) >> 8) : __swap16md(rx_frame.wi_status)));
    m_freem(m);
    ifp->if_data.ifi_ierrors++;
    return;
   }
   __builtin_bcopy((&rx_frame), (((void *)((m)->m_hdr.mh_data))), (sizeof(struct wi_frame)));
   if (sc->sc_funcs->f_read_data(sc, id, 0x3C,
       ((caddr_t)((m)->m_hdr.mh_data)) + 0x3C,
       rxlen + 2)) {
    m_freem(m);
    if (sc->sc_ic.ic_ac.ac_if.if_flags & 0x4)
     printf("wihap: failed to copy header\n");
    ifp->if_data.ifi_ierrors++;
    return;
   }
   m->M_dat.MH.MH_pkthdr.len = m->m_hdr.mh_len =
       0x3C + rxlen;
   wihap_mgmt_input(sc, &rx_frame, m);
   return;
  }
  switch ((__uint16_t)(__builtin_constant_p(rx_frame.wi_status) ? (__uint16_t)(((__uint16_t)(rx_frame.wi_status) & 0xffU) << 8 | ((__uint16_t)(rx_frame.wi_status) & 0xff00U) >> 8) : __swap16md(rx_frame.wi_status)) & 0xE000) {
  case 0x2000:
  case 0x4000:
  case 0x6000:
   if (((__uint16_t)(__builtin_constant_p(rx_frame.wi_dat_len) ? (__uint16_t)(((__uint16_t)(rx_frame.wi_dat_len) & 0xffU) << 8 | ((__uint16_t)(rx_frame.wi_dat_len) & 0xff00U) >> 8) : __swap16md(rx_frame.wi_dat_len)) + 0x6) >
       maxlen) {
    printf("%s" ": oversized packet received "
        "(wi_dat_len=%d, wi_status=0x%x)\n",
        (sc)->sc_dev.dv_xname,
        (__uint16_t)(__builtin_constant_p(rx_frame.wi_dat_len) ? (__uint16_t)(((__uint16_t)(rx_frame.wi_dat_len) & 0xffU) << 8 | ((__uint16_t)(rx_frame.wi_dat_len) & 0xff00U) >> 8) : __swap16md(rx_frame.wi_dat_len)),
        (__uint16_t)(__builtin_constant_p(rx_frame.wi_status) ? (__uint16_t)(((__uint16_t)(rx_frame.wi_status) & 0xffU) << 8 | ((__uint16_t)(rx_frame.wi_status) & 0xff00U) >> 8) : __swap16md(rx_frame.wi_status)));
    m_freem(m);
    ifp->if_data.ifi_ierrors++;
    return;
   }
   m->M_dat.MH.MH_pkthdr.len = m->m_hdr.mh_len =
       (__uint16_t)(__builtin_constant_p(rx_frame.wi_dat_len) ? (__uint16_t)(((__uint16_t)(rx_frame.wi_dat_len) & 0xffU) << 8 | ((__uint16_t)(rx_frame.wi_dat_len) & 0xff00U) >> 8) : __swap16md(rx_frame.wi_dat_len)) + 0x6;
   __builtin_bcopy((&rx_frame.wi_dst_addr), (&eh->ether_dhost), (6));
   __builtin_bcopy((&rx_frame.wi_src_addr), (&eh->ether_shost), (6));
   __builtin_bcopy((&rx_frame.wi_type), (&eh->ether_type), (2));
   if (sc->sc_funcs->f_read_data(sc, id, 0x44,
       ((caddr_t)((m)->m_hdr.mh_data)) + sizeof(struct ether_header),
       m->m_hdr.mh_len + 2)) {
    ifp->if_data.ifi_ierrors++;
    m_freem(m);
    return;
   }
   break;
  default:
   if (((__uint16_t)(__builtin_constant_p(rx_frame.wi_dat_len) ? (__uint16_t)(((__uint16_t)(rx_frame.wi_dat_len) & 0xffU) << 8 | ((__uint16_t)(rx_frame.wi_dat_len) & 0xff00U) >> 8) : __swap16md(rx_frame.wi_dat_len)) +
       sizeof(struct ether_header)) > maxlen) {
    printf("%s" ": oversized packet received "
        "(wi_dat_len=%d, wi_status=0x%x)\n",
        (sc)->sc_dev.dv_xname,
        (__uint16_t)(__builtin_constant_p(rx_frame.wi_dat_len) ? (__uint16_t)(((__uint16_t)(rx_frame.wi_dat_len) & 0xffU) << 8 | ((__uint16_t)(rx_frame.wi_dat_len) & 0xff00U) >> 8) : __swap16md(rx_frame.wi_dat_len)),
        (__uint16_t)(__builtin_constant_p(rx_frame.wi_status) ? (__uint16_t)(((__uint16_t)(rx_frame.wi_status) & 0xffU) << 8 | ((__uint16_t)(rx_frame.wi_status) & 0xff00U) >> 8) : __swap16md(rx_frame.wi_status)));
    m_freem(m);
    ifp->if_data.ifi_ierrors++;
    return;
   }
   m->M_dat.MH.MH_pkthdr.len = m->m_hdr.mh_len =
       (__uint16_t)(__builtin_constant_p(rx_frame.wi_dat_len) ? (__uint16_t)(((__uint16_t)(rx_frame.wi_dat_len) & 0xffU) << 8 | ((__uint16_t)(rx_frame.wi_dat_len) & 0xff00U) >> 8) : __swap16md(rx_frame.wi_dat_len)) +
       sizeof(struct ether_header);
   if (sc->sc_funcs->f_read_data(sc, id, 0x2E,
       ((caddr_t)((m)->m_hdr.mh_data)), m->m_hdr.mh_len + 2)) {
    m_freem(m);
    ifp->if_data.ifi_ierrors++;
    return;
   }
   break;
  }
  if (sc->wi_use_wep &&
      rx_frame.wi_frame_ctl & (__uint16_t)(__builtin_constant_p(0x4000) ? (__uint16_t)(((__uint16_t)(0x4000) & 0xffU) << 8 | ((__uint16_t)(0x4000) & 0xff00U) >> 8) : __swap16md(0x4000))) {
   int len;
   switch (sc->wi_crypto_algorithm) {
   case 0x00:
    break;
   case 0x01:
    m_copydata(m, 0, m->M_dat.MH.MH_pkthdr.len,
        (caddr_t)sc->wi_rxbuf);
    len = m->M_dat.MH.MH_pkthdr.len -
        sizeof(struct ether_header);
    if (wi_do_hostdecrypt(sc, sc->wi_rxbuf +
        sizeof(struct ether_header), len)) {
     if (sc->sc_ic.ic_ac.ac_if.if_flags & 0x4)
      printf("%s" ": Error decrypting incoming packet.\n", (sc)->sc_dev.dv_xname);
     m_freem(m);
     ifp->if_data.ifi_ierrors++;
     return;
    }
    len -= 3 +
        1 + 4;
    m_copyback(m, sizeof(struct ether_header) -
        0x2, 0x2 +
        (len - 0x6),
        sc->wi_rxbuf + sizeof(struct ether_header) +
        3 +
        1 + 0x6,
        0x0002);
    m_adj(m, -(0x2 +
        3 + 1 +
        0x6));
    break;
   }
  }
  if (sc->wi_ptype == 0x6) {
   if (wihap_data_input(sc, &rx_frame, m))
    return;
  }
 }
 if (sc->wi_procframe || sc->wi_debug.wi_monitor)
  m_freem(m);
 else {
  ml_enqueue(&ml, m);
  if_input(ifp, &ml);
 }
 return;
}
void
wi_txeof(struct wi_softc *sc, int status)
{
 struct ifnet *ifp;
 ifp = &sc->sc_ic.ic_ac.ac_if;
 ifp->if_timer = 0;
 ifq_clr_oactive(&ifp->if_snd);
 if (status & 0x0004)
  ifp->if_data.ifi_oerrors++;
 return;
}
void
wi_inquire(void *xsc)
{
 struct wi_softc *sc;
 struct ifnet *ifp;
 int s, rv;
 sc = xsc;
 ifp = &sc->sc_ic.ic_ac.ac_if;
 timeout_add_sec(&sc->sc_timo, 60);
 if (ifq_is_oactive(&ifp->if_snd))
  return;
 s = _splraise(6);
 rv = sc->sc_funcs->f_cmd(sc, 0x0011, 0xF100, 0, 0);
 _splx(s);
 if (rv)
  printf("%s" ": wi_cmd failed with %d\n", (sc)->sc_dev.dv_xname,
      rv);
 return;
}
void
wi_update_stats(struct wi_softc *sc)
{
 struct wi_ltv_gen gen;
 u_int16_t id;
 struct ifnet *ifp;
 u_int32_t *ptr;
 int len, i;
 u_int16_t t;
 ifp = &sc->sc_ic.ic_ac.ac_if;
 id = sc->sc_funcs->f_get_fid(sc, 0x10);
 sc->sc_funcs->f_read_data(sc, id, 0, (char *)&gen, 4);
 if (gen.wi_type == (__uint16_t)(__builtin_constant_p(0xF101) ? (__uint16_t)(((__uint16_t)(0xF101) & 0xffU) << 8 | ((__uint16_t)(0xF101) & 0xff00U) >> 8) : __swap16md(0xF101))) {
  sc->wi_scanbuf_len = (__uint16_t)(__builtin_constant_p(gen.wi_len) ? (__uint16_t)(((__uint16_t)(gen.wi_len) & 0xffU) << 8 | ((__uint16_t)(gen.wi_len) & 0xff00U) >> 8) : __swap16md(gen.wi_len));
  sc->sc_funcs->f_read_data(sc, id, 4, (caddr_t)sc->wi_scanbuf,
      sc->wi_scanbuf_len * 2);
  return;
 } else if (gen.wi_type != (__uint16_t)(__builtin_constant_p(0xF100) ? (__uint16_t)(((__uint16_t)(0xF100) & 0xffU) << 8 | ((__uint16_t)(0xF100) & 0xff00U) >> 8) : __swap16md(0xF100)))
  return;
 len = ((__uint16_t)(__builtin_constant_p(gen.wi_len) ? (__uint16_t)(((__uint16_t)(gen.wi_len) & 0xffU) << 8 | ((__uint16_t)(gen.wi_len) & 0xff00U) >> 8) : __swap16md(gen.wi_len)) - 1 < sizeof(sc->wi_stats) / 4) ?
     (__uint16_t)(__builtin_constant_p(gen.wi_len) ? (__uint16_t)(((__uint16_t)(gen.wi_len) & 0xffU) << 8 | ((__uint16_t)(gen.wi_len) & 0xff00U) >> 8) : __swap16md(gen.wi_len)) - 1 : sizeof(sc->wi_stats) / 4;
 ptr = (u_int32_t *)&sc->wi_stats;
 for (i = 0; i < len; i++) {
  if (sc->wi_flags & 0x0400) {
   sc->sc_funcs->f_read_data(sc, id, 4 + i*2, (char *)&t, 2);
   t = (__uint16_t)(__builtin_constant_p(t) ? (__uint16_t)(((__uint16_t)(t) & 0xffU) << 8 | ((__uint16_t)(t) & 0xff00U) >> 8) : __swap16md(t));
  } else
   t = bus_space_read_2(sc->wi_btag, sc->wi_bhandle, (sc->sc_pci ? 0x38 * 2: 0x38));
  if (t > 0xF000)
   t = ~t & 0xFFFF;
  ptr[i] += t;
 }
 ifp->if_data.ifi_collisions = sc->wi_stats.wi_tx_single_retries +
     sc->wi_stats.wi_tx_multi_retries +
     sc->wi_stats.wi_tx_retry_limit;
 return;
}
 int
wi_cmd_io(struct wi_softc *sc, int cmd, int val0, int val1, int val2)
{
 int i, s = 0;
 for (i = sc->wi_cmd_count; i--; delay(1000)) {
  if (!(bus_space_read_2(sc->wi_btag, sc->wi_bhandle, (sc->sc_pci ? 0x00 * 2: 0x00)) & 0x8000))
   break;
 }
 if (i < 0) {
  if (sc->sc_ic.ic_ac.ac_if.if_flags & 0x4)
   printf("%s" ": wi_cmd_io: busy bit won't clear\n",
       (sc)->sc_dev.dv_xname);
  return(60);
 }
 bus_space_write_2(sc->wi_btag, sc->wi_bhandle, (sc->sc_pci ? 0x02 * 2: 0x02), (val0));
 bus_space_write_2(sc->wi_btag, sc->wi_bhandle, (sc->sc_pci ? 0x04 * 2: 0x04), (val1));
 bus_space_write_2(sc->wi_btag, sc->wi_bhandle, (sc->sc_pci ? 0x06 * 2: 0x06), (val2));
 bus_space_write_2(sc->wi_btag, sc->wi_bhandle, (sc->sc_pci ? 0x00 * 2: 0x00), (cmd));
 for (i = (500000/5); i--; delay(5)) {
  s = bus_space_read_2(sc->wi_btag, sc->wi_bhandle, (sc->sc_pci ? 0x30 * 2: 0x30)) & 0x0010;
  if (s) {
   s = bus_space_read_2(sc->wi_btag, sc->wi_bhandle, (sc->sc_pci ? 0x08 * 2: 0x08));
   bus_space_write_2(sc->wi_btag, sc->wi_bhandle, (sc->sc_pci ? 0x34 * 2: 0x34), (0x0010));
   if (s & 0x7F00)
    return(5);
   break;
  }
 }
 if (i < 0) {
  if (sc->sc_ic.ic_ac.ac_if.if_flags & 0x4)
   printf("%s"
       ": timeout in wi_cmd 0x%04x; event status 0x%04x\n",
       (sc)->sc_dev.dv_xname, cmd, s);
  return(60);
 }
 return(0);
}
 void
wi_reset(struct wi_softc *sc)
{
 int error, tries = 3;
 ;
 if (sc->sc_firmware_type == 3) {
  if (sc->wi_flags & 0x0002)
   return;
  tries = 1;
 }
 for (; tries--; delay(5 * 1000)) {
  if ((error = sc->sc_funcs->f_cmd(sc, 0x0000, 0, 0, 0)) == 0)
   break;
 }
 if (tries < 0) {
  printf("%s" ": init failed\n", (sc)->sc_dev.dv_xname);
  return;
 }
 sc->wi_flags |= 0x0002;
 wi_intr_enable(sc, 0);
 wi_intr_ack(sc, 0xffff);
 do { struct wi_ltv_gen g; g.wi_len = 2; g.wi_type = 0xFCE0; g.wi_val = (__uint16_t)(__builtin_constant_p(8) ? (__uint16_t)(((__uint16_t)(8) & 0xffU) << 8 | ((__uint16_t)(8) & 0xff00U) >> 8) : __swap16md(8)); sc->sc_funcs->f_write_record(sc, &g); } while (0);
 return;
}
 void
wi_cor_reset(struct wi_softc *sc)
{
 u_int8_t cor_value;
 ;
 if (sc->sc_firmware_type != 1) {
  cor_value = bus_space_read_1(sc->wi_ltag, sc->wi_lhandle,
      sc->wi_cor_offset);
  bus_space_write_1(sc->wi_ltag, sc->wi_lhandle,
      sc->wi_cor_offset, (cor_value | (1 << 7)));
  delay(1000);
  bus_space_write_1(sc->wi_ltag, sc->wi_lhandle,
      sc->wi_cor_offset, (cor_value & ~(1 << 7)));
  delay(1000);
 }
 return;
}
 int
wi_read_record_io(struct wi_softc *sc, struct wi_ltv_gen *ltv)
{
 u_int8_t *ptr;
 int len, code;
 struct wi_ltv_gen *oltv, p2ltv;
 if (sc->sc_firmware_type != 1) {
  oltv = ltv;
  switch (ltv->wi_type) {
  case 0xFC20:
   p2ltv.wi_type = 0xFC28;
   p2ltv.wi_len = 2;
   ltv = &p2ltv;
   break;
  case 0xFCB1:
   if (ltv->wi_val > 4)
    return (22);
   p2ltv.wi_type = 0xFC23;
   p2ltv.wi_len = 2;
   ltv = &p2ltv;
   break;
  }
 }
 if (sc->sc_funcs->f_cmd(sc, 0x0021|0x0000, ltv->wi_type, 0, 0))
  return(5);
 if (wi_seek(sc, ltv->wi_type, 0, 0x38))
  return(5);
 len = bus_space_read_2(sc->wi_btag, sc->wi_bhandle, (sc->sc_pci ? 0x38 * 2: 0x38));
 if (len > ltv->wi_len)
  return(28);
 code = bus_space_read_2(sc->wi_btag, sc->wi_bhandle, (sc->sc_pci ? 0x38 * 2: 0x38));
 if (code != ltv->wi_type)
  return(5);
 ltv->wi_len = len;
 ltv->wi_type = code;
 ptr = (u_int8_t *)&ltv->wi_val;
 if (ltv->wi_len > 1)
  bus_space_read_raw_multi_2((sc)->wi_btag, (sc)->wi_bhandle, (sc->sc_pci? 0x38 * 2: 0x38), (ptr), ((ltv->wi_len-1)*2));
 if (ltv->wi_type == 0xFC00 && sc->wi_ptype == 0x4
     && ltv->wi_val == sc->wi_ibss_port) {
  ltv->wi_val = (__uint16_t)(__builtin_constant_p(0x4) ? (__uint16_t)(((__uint16_t)(0x4) & 0xffU) << 8 | ((__uint16_t)(0x4) & 0xff00U) >> 8) : __swap16md(0x4));
 } else if (sc->sc_firmware_type != 1) {
  int v;
  switch (oltv->wi_type) {
  case 0xFC84:
  case 0xFD44:
   switch ((__uint16_t)(__builtin_constant_p(ltv->wi_val) ? (__uint16_t)(((__uint16_t)(ltv->wi_val) & 0xffU) << 8 | ((__uint16_t)(ltv->wi_val) & 0xff00U) >> 8) : __swap16md(ltv->wi_val))) {
   case 1: v = 1; break;
   case 2: v = 2; break;
   case 3: v = 6; break;
   case 4: v = 5; break;
   case 7: v = 7; break;
   case 8: v = 11; break;
   case 15: v = 3; break;
   default: v = 0x100 + (__uint16_t)(__builtin_constant_p(ltv->wi_val) ? (__uint16_t)(((__uint16_t)(ltv->wi_val) & 0xffU) << 8 | ((__uint16_t)(ltv->wi_val) & 0xff00U) >> 8) : __swap16md(ltv->wi_val)); break;
   }
   oltv->wi_val = (__uint16_t)(__builtin_constant_p(v) ? (__uint16_t)(((__uint16_t)(v) & 0xffU) << 8 | ((__uint16_t)(v) & 0xff00U) >> 8) : __swap16md(v));
   break;
  case 0xFC20:
   oltv->wi_len = 2;
   if (ltv->wi_val & (__uint16_t)(__builtin_constant_p(0x01) ? (__uint16_t)(((__uint16_t)(0x01) & 0xffU) << 8 | ((__uint16_t)(0x01) & 0xff00U) >> 8) : __swap16md(0x01)))
    oltv->wi_val = (__uint16_t)(__builtin_constant_p(1) ? (__uint16_t)(((__uint16_t)(1) & 0xffU) << 8 | ((__uint16_t)(1) & 0xff00U) >> 8) : __swap16md(1));
   else
    oltv->wi_val = (__uint16_t)(__builtin_constant_p(0) ? (__uint16_t)(((__uint16_t)(0) & 0xffU) << 8 | ((__uint16_t)(0) & 0xff00U) >> 8) : __swap16md(0));
   break;
  case 0xFCB1:
  case 0xFC2A:
   oltv->wi_len = 2;
   oltv->wi_val = ltv->wi_val;
   break;
  }
 }
 return(0);
}
 int
wi_write_record_io(struct wi_softc *sc, struct wi_ltv_gen *ltv)
{
 u_int8_t *ptr;
 u_int16_t val = 0;
 int i;
 struct wi_ltv_gen p2ltv;
 if (ltv->wi_type == 0xFC00 &&
     (__uint16_t)(__builtin_constant_p(ltv->wi_val) ? (__uint16_t)(((__uint16_t)(ltv->wi_val) & 0xffU) << 8 | ((__uint16_t)(ltv->wi_val) & 0xff00U) >> 8) : __swap16md(ltv->wi_val)) == 0x4) {
  p2ltv.wi_type = 0xFC00;
  p2ltv.wi_len = 2;
  p2ltv.wi_val = sc->wi_ibss_port;
  ltv = &p2ltv;
 } else if (sc->sc_firmware_type != 1) {
  int v;
  switch (ltv->wi_type) {
  case 0xFC84:
   p2ltv.wi_type = 0xFC84;
   p2ltv.wi_len = 2;
   switch ((__uint16_t)(__builtin_constant_p(ltv->wi_val) ? (__uint16_t)(((__uint16_t)(ltv->wi_val) & 0xffU) << 8 | ((__uint16_t)(ltv->wi_val) & 0xff00U) >> 8) : __swap16md(ltv->wi_val))) {
   case 1: v = 1; break;
   case 2: v = 2; break;
   case 3: v = 15; break;
   case 5: v = 4; break;
   case 6: v = 3; break;
   case 7: v = 7; break;
   case 11: v = 8; break;
   default: return 22;
   }
   p2ltv.wi_val = (__uint16_t)(__builtin_constant_p(v) ? (__uint16_t)(((__uint16_t)(v) & 0xffU) << 8 | ((__uint16_t)(v) & 0xff00U) >> 8) : __swap16md(v));
   ltv = &p2ltv;
   break;
  case 0xFC20:
   p2ltv.wi_type = 0xFC28;
   p2ltv.wi_len = 2;
   if (ltv->wi_val & (__uint16_t)(__builtin_constant_p(0x01) ? (__uint16_t)(((__uint16_t)(0x01) & 0xffU) << 8 | ((__uint16_t)(0x01) & 0xff00U) >> 8) : __swap16md(0x01))) {
    val = 0x01;
    if (sc->wi_authtype != 1 ||
        sc->sc_firmware_type == 3)
     val |= 0x02;
    switch (sc->wi_crypto_algorithm) {
    case 0x00:
     if (sc->wi_ptype == 0x6)
      val |= 0x10;
     break;
    case 0x01:
     val |= 0x10|0x80;
     break;
    }
    p2ltv.wi_val = (__uint16_t)(__builtin_constant_p(val) ? (__uint16_t)(((__uint16_t)(val) & 0xffU) << 8 | ((__uint16_t)(val) & 0xff00U) >> 8) : __swap16md(val));
   } else
    p2ltv.wi_val = (__uint16_t)(__builtin_constant_p(0x10 | 0x80) ? (__uint16_t)(((__uint16_t)(0x10 | 0x80) & 0xffU) << 8 | ((__uint16_t)(0x10 | 0x80) & 0xff00U) >> 8) : __swap16md(0x10 | 0x80));
   ltv = &p2ltv;
   break;
  case 0xFCB1:
   if (ltv->wi_val > 4)
    return (22);
   p2ltv.wi_type = 0xFC23;
   p2ltv.wi_len = 2;
   p2ltv.wi_val = ltv->wi_val;
   ltv = &p2ltv;
   break;
  case 0xFCB0: {
    int error;
    int keylen;
    struct wi_ltv_str ws;
    struct wi_ltv_keys *wk = (struct wi_ltv_keys *)ltv;
    keylen = wk->wi_keys[sc->wi_tx_key].wi_keylen;
    keylen = (__uint16_t)(__builtin_constant_p(keylen) ? (__uint16_t)(((__uint16_t)(keylen) & 0xffU) << 8 | ((__uint16_t)(keylen) & 0xff00U) >> 8) : __swap16md(keylen));
    for (i = 0; i < 4; i++) {
     __builtin_bzero((&ws), (sizeof(ws)));
     ws.wi_len = (keylen > 5) ? 8 : 4;
     ws.wi_type = 0xFC24 + i;
     __builtin_bcopy((&wk->wi_keys[i].wi_keydat), (ws.wi_str), (keylen));
     error = sc->sc_funcs->f_write_record(sc,
         (struct wi_ltv_gen *)&ws);
     if (error)
      return (error);
    }
   }
   return (0);
  }
 }
 if (wi_seek(sc, ltv->wi_type, 0, 0x38))
  return(5);
 bus_space_write_2(sc->wi_btag, sc->wi_bhandle, (sc->sc_pci ? 0x38 * 2: 0x38), (ltv->wi_len));
 bus_space_write_2(sc->wi_btag, sc->wi_bhandle, (sc->sc_pci ? 0x38 * 2: 0x38), (ltv->wi_type));
 ptr = (u_int8_t *)&ltv->wi_val;
 if (ltv->wi_len > 1)
  bus_space_write_raw_multi_2((sc)->wi_btag, (sc)->wi_bhandle, (sc->sc_pci? 0x38 * 2: 0x38), (ptr), ((ltv->wi_len-1) *2));
 if (sc->sc_funcs->f_cmd(sc, 0x0021|0x0100, ltv->wi_type, 0, 0))
  return(5);
 return(0);
}
 int
wi_seek(struct wi_softc *sc, int id, int off, int chan)
{
 int i;
 int selreg, offreg;
 switch (chan) {
 case 0x36:
  selreg = 0x18;
  offreg = 0x1C;
  break;
 case 0x38:
  selreg = 0x1A;
  offreg = 0x1E;
  break;
 default:
  printf("%s" ": invalid data path: %x\n", (sc)->sc_dev.dv_xname,
      chan);
  return(5);
 }
 bus_space_write_2(sc->wi_btag, sc->wi_bhandle, (sc->sc_pci ? selreg * 2: selreg), (id));
 bus_space_write_2(sc->wi_btag, sc->wi_bhandle, (sc->sc_pci ? offreg * 2: offreg), (off));
 for (i = (500000/5); i--; delay(1))
  if (!(bus_space_read_2(sc->wi_btag, sc->wi_bhandle, (sc->sc_pci ? offreg * 2: offreg)) & (0x8000|0x4000)))
   break;
 if (i < 0)
  return(60);
 return(0);
}
 int
wi_read_data_io(struct wi_softc *sc, int id, int off, caddr_t buf, int len)
{
 u_int8_t *ptr;
 if (wi_seek(sc, id, off, 0x38))
  return(5);
 ptr = (u_int8_t *)buf;
 bus_space_read_raw_multi_2((sc)->wi_btag, (sc)->wi_bhandle, (sc->sc_pci? 0x38 * 2: 0x38), (ptr), (len));
 return(0);
}
 int
wi_write_data_io(struct wi_softc *sc, int id, int off, caddr_t buf, int len)
{
 u_int8_t *ptr;
again:
 if (wi_seek(sc, id, off, 0x36))
  return(5);
 ptr = (u_int8_t *)buf;
 bus_space_write_raw_multi_2((sc)->wi_btag, (sc)->wi_bhandle, (sc->sc_pci? 0x36 * 2: 0x36), (ptr), (len));
 bus_space_write_2(sc->wi_btag, sc->wi_bhandle, (sc->sc_pci ? 0x36 * 2: 0x36), (0x1234));
 bus_space_write_2(sc->wi_btag, sc->wi_bhandle, (sc->sc_pci ? 0x36 * 2: 0x36), (0x5678));
 if (wi_seek(sc, id, off + len, 0x36))
  return(5);
 if (bus_space_read_2(sc->wi_btag, sc->wi_bhandle, (sc->sc_pci ? 0x36 * 2: 0x36)) != 0x1234 ||
     bus_space_read_2(sc->wi_btag, sc->wi_bhandle, (sc->sc_pci ? 0x36 * 2: 0x36)) != 0x5678)
  goto again;
 return(0);
}
 int
wi_alloc_nicmem_io(struct wi_softc *sc, int len, int *id)
{
 int i;
 if (sc->sc_funcs->f_cmd(sc, 0x000A, len, 0, 0)) {
  printf("%s" ": failed to allocate %d bytes on NIC\n",
      (sc)->sc_dev.dv_xname, len);
  return(12);
 }
 for (i = (500000/5); i--; delay(1)) {
  if (bus_space_read_2(sc->wi_btag, sc->wi_bhandle, (sc->sc_pci ? 0x30 * 2: 0x30)) & 0x0008)
   break;
 }
 if (i < 0)
  return(60);
 *id = bus_space_read_2(sc->wi_btag, sc->wi_bhandle, (sc->sc_pci ? 0x22 * 2: 0x22));
 bus_space_write_2(sc->wi_btag, sc->wi_bhandle, (sc->sc_pci ? 0x34 * 2: 0x34), (0x0008));
 if (wi_seek(sc, *id, 0, 0x36))
  return(5);
 for (i = 0; i < len / 2; i++)
  bus_space_write_2(sc->wi_btag, sc->wi_bhandle, (sc->sc_pci ? 0x36 * 2: 0x36), (0));
 return(0);
}
 void
wi_setmulti(struct wi_softc *sc)
{
 struct arpcom *ac = &sc->sc_ic.ic_ac;
 struct ifnet *ifp;
 int i = 0;
 struct wi_ltv_mcast mcast;
 struct ether_multistep step;
 struct ether_multi *enm;
 ifp = &sc->sc_ic.ic_ac.ac_if;
 __builtin_bzero((&mcast), (sizeof(mcast)));
 mcast.wi_type = 0xFC80;
 mcast.wi_len = ((6 / 2) * 16) + 1;
 if (ac->ac_multirangecnt > 0)
  ifp->if_flags |= 0x200;
 if (ifp->if_flags & 0x200 || ifp->if_flags & 0x100) {
  sc->sc_funcs->f_write_record(sc, (struct wi_ltv_gen *)&mcast);
  return;
 }
 do { (step).e_enm = ((&(&sc->sc_ic.ic_ac)->ac_multiaddrs)->lh_first); do { if ((((enm)) = ((step)).e_enm) != ((void *)0)) ((step)).e_enm = ((((enm)))->enm_list.le_next); } while ( 0); } while ( 0);
 while (enm != ((void *)0)) {
  if (i >= 16) {
   __builtin_bzero((&mcast), (sizeof(mcast)));
   break;
  }
  __builtin_bcopy((enm->enm_addrlo), (&mcast.wi_mcast[i]), (6));
  i++;
  do { if (((enm) = (step).e_enm) != ((void *)0)) (step).e_enm = (((enm))->enm_list.le_next); } while ( 0);
 }
 mcast.wi_len = (i * 3) + 1;
 sc->sc_funcs->f_write_record(sc, (struct wi_ltv_gen *)&mcast);
 return;
}
 int
wi_setdef(struct wi_softc *sc, struct wi_req *wreq)
{
 struct ifnet *ifp;
 int error = 0;
 ifp = &sc->sc_ic.ic_ac.ac_if;
 switch(wreq->wi_type) {
 case 0xFC01:
  __builtin_bcopy((&wreq->wi_val), (((caddr_t)((ifp->if_sadl)->sdl_data + (ifp->if_sadl)->sdl_nlen))), (6));
  __builtin_bcopy((&wreq->wi_val), (&sc->sc_ic.ic_myaddr), (6));
  break;
 case 0xFC00:
  error = wi_sync_media(sc, (__uint16_t)(__builtin_constant_p(wreq->wi_val[0]) ? (__uint16_t)(((__uint16_t)(wreq->wi_val[0]) & 0xffU) << 8 | ((__uint16_t)(wreq->wi_val[0]) & 0xff00U) >> 8) : __swap16md(wreq->wi_val[0])),
      sc->wi_tx_rate);
  break;
 case 0xFC84:
  error = wi_sync_media(sc, sc->wi_ptype,
      (__uint16_t)(__builtin_constant_p(wreq->wi_val[0]) ? (__uint16_t)(((__uint16_t)(wreq->wi_val[0]) & 0xffU) << 8 | ((__uint16_t)(wreq->wi_val[0]) & 0xff00U) >> 8) : __swap16md(wreq->wi_val[0])));
  break;
 case 0xFC07:
  sc->wi_max_data_len = (__uint16_t)(__builtin_constant_p(wreq->wi_val[0]) ? (__uint16_t)(((__uint16_t)(wreq->wi_val[0]) & 0xffU) << 8 | ((__uint16_t)(wreq->wi_val[0]) & 0xff00U) >> 8) : __swap16md(wreq->wi_val[0]));
  break;
 case 0xFC83:
  sc->wi_rts_thresh = (__uint16_t)(__builtin_constant_p(wreq->wi_val[0]) ? (__uint16_t)(((__uint16_t)(wreq->wi_val[0]) & 0xffU) << 8 | ((__uint16_t)(wreq->wi_val[0]) & 0xff00U) >> 8) : __swap16md(wreq->wi_val[0]));
  break;
 case 0xFC06:
  sc->wi_ap_density = (__uint16_t)(__builtin_constant_p(wreq->wi_val[0]) ? (__uint16_t)(((__uint16_t)(wreq->wi_val[0]) & 0xffU) << 8 | ((__uint16_t)(wreq->wi_val[0]) & 0xff00U) >> 8) : __swap16md(wreq->wi_val[0]));
  break;
 case 0xFC81:
  sc->wi_create_ibss = (__uint16_t)(__builtin_constant_p(wreq->wi_val[0]) ? (__uint16_t)(((__uint16_t)(wreq->wi_val[0]) & 0xffU) << 8 | ((__uint16_t)(wreq->wi_val[0]) & 0xff00U) >> 8) : __swap16md(wreq->wi_val[0]));
  error = wi_sync_media(sc, sc->wi_ptype, sc->wi_tx_rate);
  break;
 case 0xFC03:
  sc->wi_channel = (__uint16_t)(__builtin_constant_p(wreq->wi_val[0]) ? (__uint16_t)(((__uint16_t)(wreq->wi_val[0]) & 0xffU) << 8 | ((__uint16_t)(wreq->wi_val[0]) & 0xff00U) >> 8) : __swap16md(wreq->wi_val[0]));
  break;
 case 0xFC0E:
  error = wi_set_ssid(&sc->wi_node_name,
      (u_int8_t *)&wreq->wi_val[1], (__uint16_t)(__builtin_constant_p(wreq->wi_val[0]) ? (__uint16_t)(((__uint16_t)(wreq->wi_val[0]) & 0xffU) << 8 | ((__uint16_t)(wreq->wi_val[0]) & 0xff00U) >> 8) : __swap16md(wreq->wi_val[0])));
  break;
 case 0xFC02:
  error = wi_set_ssid(&sc->wi_net_name,
      (u_int8_t *)&wreq->wi_val[1], (__uint16_t)(__builtin_constant_p(wreq->wi_val[0]) ? (__uint16_t)(((__uint16_t)(wreq->wi_val[0]) & 0xffU) << 8 | ((__uint16_t)(wreq->wi_val[0]) & 0xff00U) >> 8) : __swap16md(wreq->wi_val[0])));
  break;
 case 0xFC04:
  error = wi_set_ssid(&sc->wi_ibss_name,
      (u_int8_t *)&wreq->wi_val[1], (__uint16_t)(__builtin_constant_p(wreq->wi_val[0]) ? (__uint16_t)(((__uint16_t)(wreq->wi_val[0]) & 0xffU) << 8 | ((__uint16_t)(wreq->wi_val[0]) & 0xff00U) >> 8) : __swap16md(wreq->wi_val[0])));
  break;
 case 0xFC09:
  sc->wi_pm_enabled = (__uint16_t)(__builtin_constant_p(wreq->wi_val[0]) ? (__uint16_t)(((__uint16_t)(wreq->wi_val[0]) & 0xffU) << 8 | ((__uint16_t)(wreq->wi_val[0]) & 0xff00U) >> 8) : __swap16md(wreq->wi_val[0]));
  break;
 case 0xFC25:
  sc->wi_mor_enabled = (__uint16_t)(__builtin_constant_p(wreq->wi_val[0]) ? (__uint16_t)(((__uint16_t)(wreq->wi_val[0]) & 0xffU) << 8 | ((__uint16_t)(wreq->wi_val[0]) & 0xff00U) >> 8) : __swap16md(wreq->wi_val[0]));
  break;
 case 0xFC0C:
  sc->wi_max_sleep = (__uint16_t)(__builtin_constant_p(wreq->wi_val[0]) ? (__uint16_t)(((__uint16_t)(wreq->wi_val[0]) & 0xffU) << 8 | ((__uint16_t)(wreq->wi_val[0]) & 0xff00U) >> 8) : __swap16md(wreq->wi_val[0]));
  break;
 case 0xFC2A:
  sc->wi_authtype = (__uint16_t)(__builtin_constant_p(wreq->wi_val[0]) ? (__uint16_t)(((__uint16_t)(wreq->wi_val[0]) & 0xffU) << 8 | ((__uint16_t)(wreq->wi_val[0]) & 0xff00U) >> 8) : __swap16md(wreq->wi_val[0]));
  break;
 case 0xFC2D:
  sc->wi_roaming = (__uint16_t)(__builtin_constant_p(wreq->wi_val[0]) ? (__uint16_t)(((__uint16_t)(wreq->wi_val[0]) & 0xffU) << 8 | ((__uint16_t)(wreq->wi_val[0]) & 0xff00U) >> 8) : __swap16md(wreq->wi_val[0]));
  break;
 case 0xFC87:
  sc->wi_diversity = (__uint16_t)(__builtin_constant_p(wreq->wi_val[0]) ? (__uint16_t)(((__uint16_t)(wreq->wi_val[0]) & 0xffU) << 8 | ((__uint16_t)(wreq->wi_val[0]) & 0xff00U) >> 8) : __swap16md(wreq->wi_val[0]));
  break;
 case 0xFC43:
  sc->wi_enh_security = (__uint16_t)(__builtin_constant_p(wreq->wi_val[0]) ? (__uint16_t)(((__uint16_t)(wreq->wi_val[0]) & 0xffU) << 8 | ((__uint16_t)(wreq->wi_val[0]) & 0xff00U) >> 8) : __swap16md(wreq->wi_val[0]));
  break;
 case 0xFC20:
  sc->wi_use_wep = (__uint16_t)(__builtin_constant_p(wreq->wi_val[0]) ? (__uint16_t)(((__uint16_t)(wreq->wi_val[0]) & 0xffU) << 8 | ((__uint16_t)(wreq->wi_val[0]) & 0xff00U) >> 8) : __swap16md(wreq->wi_val[0]));
  break;
 case 0xFCB1:
  sc->wi_tx_key = (__uint16_t)(__builtin_constant_p(wreq->wi_val[0]) ? (__uint16_t)(((__uint16_t)(wreq->wi_val[0]) & 0xffU) << 8 | ((__uint16_t)(wreq->wi_val[0]) & 0xff00U) >> 8) : __swap16md(wreq->wi_val[0]));
  break;
 case 0xFCB0:
  __builtin_bcopy((wreq), (&sc->wi_keys), (sizeof(struct wi_ltv_keys)));
  break;
 case 0xFCE3:
  switch ((__uint16_t)(__builtin_constant_p(wreq->wi_val[0]) ? (__uint16_t)(((__uint16_t)(wreq->wi_val[0]) & 0xffU) << 8 | ((__uint16_t)(wreq->wi_val[0]) & 0xff00U) >> 8) : __swap16md(wreq->wi_val[0]))) {
  case 0x00:
   sc->wi_crypto_algorithm = 0x00;
   break;
  case 0x01:
   sc->wi_crypto_algorithm = 0x01;
   break;
  default:
   printf("%s" ": unsupported crypto algorithm %d\n",
       (sc)->sc_dev.dv_xname, (__uint16_t)(__builtin_constant_p(wreq->wi_val[0]) ? (__uint16_t)(((__uint16_t)(wreq->wi_val[0]) & 0xffU) << 8 | ((__uint16_t)(wreq->wi_val[0]) & 0xff00U) >> 8) : __swap16md(wreq->wi_val[0])));
   error = 22;
  }
  break;
 default:
  error = 22;
  break;
 }
 return (error);
}
 int
wi_ioctl(struct ifnet *ifp, u_long command, caddr_t data)
{
 int s, error = 0, i, j, len;
 struct wi_softc *sc = ifp->if_softc;
 struct ifreq *ifr = (struct ifreq *)data;
 struct proc *p = (__curcpu->ci_self)->ci_curproc;
 struct wi_scan_res *res;
 struct wi_scan_p2_hdr *p2;
 struct wi_req *wreq = ((void *)0);
 u_int32_t flags;
 struct ieee80211_nwid *nwidp = ((void *)0);
 struct ieee80211_nodereq_all *na;
 struct ieee80211_bssid *bssid;
 s = _splraise(6);
 if (!(sc->wi_flags & 0x0001)) {
  error = 19;
  goto fail;
 }
 while ((sc->wi_flags & 0x2000) && error == 0)
  error = tsleep(&sc->wi_flags, 0x100, "wiioc", 0);
 if (error != 0) {
  _splx(s);
  return error;
 }
 sc->wi_flags |= 0x2000;
 ;
 switch(command) {
 case ((unsigned long)0x80000000 | ((sizeof(struct ifreq) & 0x1fff) << 16) | ((('i')) << 8) | ((12))):
  ifp->if_flags |= 0x1;
  sc->sc_funcs->f_init(sc);
  break;
 case ((unsigned long)0x80000000 | ((sizeof(struct ifreq) & 0x1fff) << 16) | ((('i')) << 8) | ((16))):
  if (ifp->if_flags & 0x1) {
   if (ifp->if_flags & 0x40 &&
       ifp->if_flags & 0x100 &&
       !(sc->wi_if_flags & 0x100)) {
    if (sc->wi_ptype != 0x6)
     do { struct wi_ltv_gen g; g.wi_len = 2; g.wi_type = 0xFC85; g.wi_val = (__uint16_t)(__builtin_constant_p(1) ? (__uint16_t)(((__uint16_t)(1) & 0xffU) << 8 | ((__uint16_t)(1) & 0xff00U) >> 8) : __swap16md(1)); sc->sc_funcs->f_write_record(sc, &g); } while (0);
   } else if (ifp->if_flags & 0x40 &&
       !(ifp->if_flags & 0x100) &&
       sc->wi_if_flags & 0x100) {
    if (sc->wi_ptype != 0x6)
     do { struct wi_ltv_gen g; g.wi_len = 2; g.wi_type = 0xFC85; g.wi_val = (__uint16_t)(__builtin_constant_p(0) ? (__uint16_t)(((__uint16_t)(0) & 0xffU) << 8 | ((__uint16_t)(0) & 0xff00U) >> 8) : __swap16md(0)); sc->sc_funcs->f_write_record(sc, &g); } while (0);
   } else
    sc->sc_funcs->f_init(sc);
  } else if (ifp->if_flags & 0x40)
   wi_stop(sc);
  sc->wi_if_flags = ifp->if_flags;
  error = 0;
  break;
 case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct ifreq) & 0x1fff) << 16) | ((('i')) << 8) | ((55))):
 case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct ifmediareq) & 0x1fff) << 16) | ((('i')) << 8) | ((56))):
  error = ifmedia_ioctl(ifp, ifr, &sc->sc_media, command);
  break;
 case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct ifreq) & 0x1fff) << 16) | ((('i')) << 8) | ((207))):
  wreq = malloc(sizeof *wreq, 2, 0x0001 | 0x0008);
  error = copyin(ifr->ifr_ifru.ifru_data, wreq, sizeof(*wreq));
  if (error)
   break;
  if (wreq->wi_len > 512) {
   error = 22;
   break;
  }
  switch (wreq->wi_type) {
  case 0x0100:
   __builtin_bcopy((&sc->wi_stats), (&wreq->wi_val), (sizeof(sc->wi_stats)));
   wreq->wi_len = (sizeof(sc->wi_stats) / 2) + 1;
   break;
  case 0xFCB0:
   if (suser(p, 0))
    __builtin_bzero((wreq), (sizeof(struct wi_ltv_keys)));
   else
    __builtin_bcopy((&sc->wi_keys), (wreq), (sizeof(struct wi_ltv_keys)));
   break;
  case 0x3137:
   wreq->wi_len = 2;
   wreq->wi_val[0] = (__uint16_t)(__builtin_constant_p(sc->wi_procframe) ? (__uint16_t)(((__uint16_t)(sc->wi_procframe) & 0xffU) << 8 | ((__uint16_t)(sc->wi_procframe) & 0xff00U) >> 8) : __swap16md(sc->wi_procframe));
   break;
  case 0x3138:
   wreq->wi_len = 2;
   wreq->wi_val[0] = (__uint16_t)(__builtin_constant_p(sc->sc_firmware_type == 1 ? 0 : 1) ? (__uint16_t)(((__uint16_t)(sc->sc_firmware_type == 1 ? 0 : 1) & 0xffU) << 8 | ((__uint16_t)(sc->sc_firmware_type == 1 ? 0 : 1) & 0xff00U) >> 8) : __swap16md(sc->sc_firmware_type == 1 ? 0 : 1));
   break;
  case 0xFCE3:
   wreq->wi_val[0] =
       (__uint16_t)(__builtin_constant_p((u_int16_t)sc->wi_crypto_algorithm) ? (__uint16_t)(((__uint16_t)((u_int16_t)sc->wi_crypto_algorithm) & 0xffU) << 8 | ((__uint16_t)((u_int16_t)sc->wi_crypto_algorithm) & 0xff00U) >> 8) : __swap16md((u_int16_t)sc->wi_crypto_algorithm));
   wreq->wi_len = 1;
   break;
  case 0xFD88:
   if (sc->sc_firmware_type == 1) {
    __builtin_memcpy(((char *)wreq->wi_val), ((char *)sc->wi_scanbuf), (sc->wi_scanbuf_len * 2));
    wreq->wi_len = sc->wi_scanbuf_len;
    break;
   }
  default:
   if (sc->sc_funcs->f_read_record(sc, (struct wi_ltv_gen *)wreq)) {
    error = 22;
   }
   break;
  }
  error = copyout(wreq, ifr->ifr_ifru.ifru_data, sizeof(*wreq));
  break;
 case ((unsigned long)0x80000000 | ((sizeof(struct ifreq) & 0x1fff) << 16) | ((('i')) << 8) | ((206))):
  if ((error = suser((__curcpu->ci_self)->ci_curproc, 0)) != 0)
   break;
  wreq = malloc(sizeof *wreq, 2, 0x0001 | 0x0008);
  error = copyin(ifr->ifr_ifru.ifru_data, wreq, sizeof(*wreq));
  if (error)
   break;
  error = 22;
  if (wreq->wi_len > 512)
   break;
  switch (wreq->wi_type) {
  case 0x0100:
   break;
  case 0x0200:
   error = wi_mgmt_xmit(sc, (caddr_t)&wreq->wi_val,
       wreq->wi_len);
   break;
  case 0x3137:
   sc->wi_procframe = (__uint16_t)(__builtin_constant_p(wreq->wi_val[0]) ? (__uint16_t)(((__uint16_t)(wreq->wi_val[0]) & 0xffU) << 8 | ((__uint16_t)(wreq->wi_val[0]) & 0xff00U) >> 8) : __swap16md(wreq->wi_val[0]));
   error = 0;
   break;
  case 0xFCE1:
   error = 0;
   if (sc->sc_firmware_type == 1)
    sc->sc_funcs->f_cmd(sc, 0x0011,
        0xF101, 0, 0);
   else
    error = sc->sc_funcs->f_write_record(sc,
        (struct wi_ltv_gen *)wreq);
   break;
  case 0xFCE3:
   if (sc->sc_firmware_type != 1) {
    error = wi_setdef(sc, wreq);
    if (!error && (ifp->if_flags & 0x1))
     sc->sc_funcs->f_init(sc);
   }
   break;
  case 0xFC87:
  case 0xFC2D:
  case 0xFC81:
  case 0xFC25:
  case 0xFC04:
  case 0xFC43:
   if ((wreq->wi_type == 0xFC87 &&
       !(sc->wi_flags & 0x0080)) ||
       (wreq->wi_type == 0xFC2D &&
       !(sc->wi_flags & 0x0040)) ||
       (wreq->wi_type == 0xFC81 &&
       !(sc->wi_flags & 0x0010)) ||
       (wreq->wi_type == 0xFC25 &&
       !(sc->wi_flags & 0x0020)) ||
       (wreq->wi_type == 0xFC43 &&
       !(sc->wi_flags & 0x0800)) ||
       (wreq->wi_type == 0xFC04 &&
       wreq->wi_len != 0))
    break;
  default:
   error = sc->sc_funcs->f_write_record(sc, (struct wi_ltv_gen *)wreq);
   if (!error)
    error = wi_setdef(sc, wreq);
   if (!error && (ifp->if_flags & 0x1))
    sc->sc_funcs->f_init(sc);
  }
  break;
 case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct ifreq) & 0x1fff) << 16) | ((('i')) << 8) | ((138))):
  wreq = malloc(sizeof *wreq, 2, 0x0001 | 0x0008);
  error = copyin(ifr->ifr_ifru.ifru_data, wreq, sizeof(*wreq));
  if (error)
   break;
  if (!(ifp->if_flags & 0x40) ||
      sc->sc_firmware_type == 1) {
   error = 5;
   break;
  }
  error = wi_get_debug(sc, wreq);
  if (error == 0)
   error = copyout(wreq, ifr->ifr_ifru.ifru_data, sizeof(*wreq));
  break;
 case ((unsigned long)0x80000000 | ((sizeof(struct ifreq) & 0x1fff) << 16) | ((('i')) << 8) | ((137))):
  if ((error = suser((__curcpu->ci_self)->ci_curproc, 0)) != 0)
   break;
  wreq = malloc(sizeof *wreq, 2, 0x0001 | 0x0008);
  error = copyin(ifr->ifr_ifru.ifru_data, wreq, sizeof(*wreq));
  if (error)
   break;
  error = wi_set_debug(sc, wreq);
  break;
 case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct ifreq) & 0x1fff) << 16) | ((('i')) << 8) | ((231))):
  if ((ifp->if_flags & 0x1) && sc->wi_net_name.i_len > 0) {
   error = copyout(&sc->wi_net_name, ifr->ifr_ifru.ifru_data,
       sizeof(sc->wi_net_name));
  } else {
   wreq = malloc(sizeof *wreq, 2, 0x0001|0x0008);
   wreq->wi_type = 0xFD41;
   wreq->wi_len = 512;
   if (sc->sc_funcs->f_read_record(sc, (struct wi_ltv_gen *)wreq) ||
       (__uint16_t)(__builtin_constant_p(wreq->wi_val[0]) ? (__uint16_t)(((__uint16_t)(wreq->wi_val[0]) & 0xffU) << 8 | ((__uint16_t)(wreq->wi_val[0]) & 0xff00U) >> 8) : __swap16md(wreq->wi_val[0])) > 32)
    error = 22;
   else {
    nwidp = malloc(sizeof *nwidp, 2,
        0x0001 | 0x0008);
    wi_set_ssid(nwidp, (u_int8_t *)&wreq->wi_val[1],
        (__uint16_t)(__builtin_constant_p(wreq->wi_val[0]) ? (__uint16_t)(((__uint16_t)(wreq->wi_val[0]) & 0xffU) << 8 | ((__uint16_t)(wreq->wi_val[0]) & 0xff00U) >> 8) : __swap16md(wreq->wi_val[0])));
    error = copyout(nwidp, ifr->ifr_ifru.ifru_data,
        sizeof(*nwidp));
   }
  }
  break;
 case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct ifreq) & 0x1fff) << 16) | ((('i')) << 8) | ((230))):
  if ((error = suser((__curcpu->ci_self)->ci_curproc, 0)) != 0)
   break;
  nwidp = malloc(sizeof *nwidp, 2, 0x0001);
  error = copyin(ifr->ifr_ifru.ifru_data, nwidp, sizeof(*nwidp));
  if (error)
   break;
  if (nwidp->i_len > 32) {
   error = 22;
   break;
  }
  if (sc->wi_net_name.i_len == nwidp->i_len &&
      __builtin_memcmp((sc->wi_net_name.i_nwid), (nwidp->i_nwid), (nwidp->i_len)) == 0)
   break;
  wi_set_ssid(&sc->wi_net_name, nwidp->i_nwid, nwidp->i_len);
  do { struct wi_ltv_str s; int l; l = (sc->wi_net_name.i_len + 1) & ~0x1; __builtin_bzero((&s), (sizeof(s))); s.wi_len = (l / 2) + 2; s.wi_type = 0xFC02; s.wi_str[0] = (__uint16_t)(__builtin_constant_p(sc->wi_net_name.i_len) ? (__uint16_t)(((__uint16_t)(sc->wi_net_name.i_len) & 0xffU) << 8 | ((__uint16_t)(sc->wi_net_name.i_len) & 0xff00U) >> 8) : __swap16md(sc->wi_net_name.i_len)); __builtin_bcopy((sc->wi_net_name.i_nwid), (&s.wi_str[1]), (sc->wi_net_name.i_len)); sc->sc_funcs->f_write_record(sc, (struct wi_ltv_gen *)&s); } while (0);
  if (ifp->if_flags & 0x1)
   sc->sc_funcs->f_init(sc);
  break;
 case ((unsigned long)0x80000000 | ((sizeof(struct ieee80211_nwkey) & 0x1fff) << 16) | ((('i')) << 8) | ((232))):
  if ((error = suser((__curcpu->ci_self)->ci_curproc, 0)) != 0)
   break;
  error = wi_set_nwkey(sc, (struct ieee80211_nwkey *)data);
  break;
 case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct ieee80211_nwkey) & 0x1fff) << 16) | ((('i')) << 8) | ((233))):
  error = wi_get_nwkey(sc, (struct ieee80211_nwkey *)data);
  break;
 case ((unsigned long)0x80000000 | ((sizeof(struct ieee80211_power) & 0x1fff) << 16) | ((('i')) << 8) | ((234))):
  if ((error = suser((__curcpu->ci_self)->ci_curproc, 0)) != 0)
   break;
  error = wi_set_pm(sc, (struct ieee80211_power *)data);
  break;
 case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct ieee80211_power) & 0x1fff) << 16) | ((('i')) << 8) | ((235))):
  error = wi_get_pm(sc, (struct ieee80211_power *)data);
  break;
 case ((unsigned long)0x80000000 | ((sizeof(struct ieee80211_txpower) & 0x1fff) << 16) | ((('i')) << 8) | ((243))):
  if ((error = suser((__curcpu->ci_self)->ci_curproc, 0)) != 0)
   break;
  error = wi_set_txpower(sc, (struct ieee80211_txpower *)data);
  break;
 case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct ieee80211_txpower) & 0x1fff) << 16) | ((('i')) << 8) | ((244))):
  error = wi_get_txpower(sc, (struct ieee80211_txpower *)data);
  break;
 case ((unsigned long)0x80000000 | ((sizeof(struct ieee80211chanreq) & 0x1fff) << 16) | ((('i')) << 8) | ((238))):
  if ((error = suser((__curcpu->ci_self)->ci_curproc, 0)) != 0)
   break;
  if (((struct ieee80211chanreq *)data)->i_channel > 14) {
   error = 22;
   break;
  }
  wreq = malloc(sizeof *wreq, 2, 0x0001 | 0x0008);
  wreq->wi_type = 0xFC03;
  wreq->wi_val[0] =
      (__uint16_t)(__builtin_constant_p(((struct ieee80211chanreq *)data)->i_channel) ? (__uint16_t)(((__uint16_t)(((struct ieee80211chanreq *)data)->i_channel) & 0xffU) << 8 | ((__uint16_t)(((struct ieee80211chanreq *)data)->i_channel) & 0xff00U) >> 8) : __swap16md(((struct ieee80211chanreq *)data)->i_channel));
  error = wi_setdef(sc, wreq);
  if (!error && (ifp->if_flags & 0x1))
   sc->sc_funcs->f_init(sc);
  break;
 case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct ieee80211chanreq) & 0x1fff) << 16) | ((('i')) << 8) | ((239))):
  wreq = malloc(sizeof *wreq, 2, 0x0001 | 0x0008);
  wreq->wi_type = 0xFDC1;
  wreq->wi_len = 512;
  if (sc->sc_funcs->f_read_record(sc, (struct wi_ltv_gen *)wreq)) {
   error = 22;
   break;
  }
  ((struct ieee80211chanreq *)data)->i_channel =
      (__uint16_t)(__builtin_constant_p(wreq->wi_val[0]) ? (__uint16_t)(((__uint16_t)(wreq->wi_val[0]) & 0xffU) << 8 | ((__uint16_t)(wreq->wi_val[0]) & 0xff00U) >> 8) : __swap16md(wreq->wi_val[0]));
  break;
 case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct ieee80211_bssid) & 0x1fff) << 16) | ((('i')) << 8) | ((241))):
  bssid = (struct ieee80211_bssid *)data;
  wreq = malloc(sizeof *wreq, 2, 0x0001 | 0x0008);
  wreq->wi_type = 0xFD42;
  wreq->wi_len = 512;
  if (sc->sc_funcs->f_read_record(sc, (struct wi_ltv_gen *)wreq)) {
   error = 22;
   break;
  }
  __builtin_memcpy((bssid->i_bssid), (wreq->wi_val), (6));
  break;
 case ((unsigned long)0x80000000 | ((sizeof(struct ifreq) & 0x1fff) << 16) | ((('i')) << 8) | ((210))):
  if ((error = suser((__curcpu->ci_self)->ci_curproc, 0)) != 0)
   break;
  if (sc->wi_ptype == 0x6)
   break;
  if ((ifp->if_flags & 0x1) == 0) {
   error = 50;
   break;
  }
  if (sc->sc_firmware_type == 1) {
   sc->sc_funcs->f_cmd(sc, 0x0011,
       0xF101, 0, 0);
  } else {
   wreq = malloc(sizeof *wreq, 2, 0x0001|0x0008);
   wreq->wi_len = 3;
   wreq->wi_type = 0xFCE1;
   wreq->wi_val[0] = 0x3FFF;
   wreq->wi_val[1] = 0x000F;
   error = sc->sc_funcs->f_write_record(sc,
       (struct wi_ltv_gen *)wreq);
   if (error)
    break;
  }
  sc->wi_scan_lock = 0;
  timeout_set(&sc->wi_scan_timeout, wi_scan_timeout, sc);
  len = ((hz / 10) * 2);
  if (sc->wi_flags & 0x0400) {
   len = ((hz / 10) * 2) * 4;
  }
  timeout_add(&sc->wi_scan_timeout, len);
  error = tsleep(&sc->wi_scan_lock, 0x100, "wiscan",
      hz * 30);
  break;
 case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct ieee80211_nodereq_all) & 0x1fff) << 16) | ((('i')) << 8) | ((214))):
     {
  struct ieee80211_nodereq *nr = ((void *)0);
  if ((error = suser((__curcpu->ci_self)->ci_curproc, 0)) != 0)
   break;
  na = (struct ieee80211_nodereq_all *)data;
  if (sc->wi_ptype == 0x6) {
   error = wihap_ioctl(sc, command, data);
   break;
  }
  wreq = malloc(sizeof *wreq, 2, 0x0001 | 0x0008);
  wreq->wi_len = 512;
  wreq->wi_type = 0xFD88;
  if (sc->sc_firmware_type == 1) {
   __builtin_bcopy((sc->wi_scanbuf), (wreq->wi_val), (sc->wi_scanbuf_len * 2));
   wreq->wi_len = sc->wi_scanbuf_len;
   i = 0;
   len = 50;
  } else {
   if (sc->sc_funcs->f_read_record(sc, (struct wi_ltv_gen *)wreq)) {
    error = 22;
    break;
   }
   p2 = (struct wi_scan_p2_hdr *)wreq->wi_val;
   if (p2->wi_reason == 0)
    break;
   i = sizeof(*p2);
   len = 62;
  }
  for (na->na_nodes = j = 0; (i < (wreq->wi_len * 2) - len) &&
      (na->na_size >= j + sizeof(struct ieee80211_nodereq));
      i += len) {
   if (nr == ((void *)0))
    nr = malloc(sizeof *nr, 2, 0x0001);
   res = (struct wi_scan_res *)((char *)wreq->wi_val + i);
   if (res == ((void *)0))
    break;
   __builtin_bzero((nr), (sizeof(*nr)));
   __builtin_memcpy((nr->nr_macaddr), (res->wi_bssid), (6));
   __builtin_memcpy((nr->nr_bssid), (res->wi_bssid), (6));
   nr->nr_channel = (__uint16_t)(__builtin_constant_p(res->wi_chan) ? (__uint16_t)(((__uint16_t)(res->wi_chan) & 0xffU) << 8 | ((__uint16_t)(res->wi_chan) & 0xff00U) >> 8) : __swap16md(res->wi_chan));
   nr->nr_chan_flags = (0x0080 | 0x0020);
   nr->nr_rssi = (__uint16_t)(__builtin_constant_p(res->wi_signal) ? (__uint16_t)(((__uint16_t)(res->wi_signal) & 0xffU) << 8 | ((__uint16_t)(res->wi_signal) & 0xff00U) >> 8) : __swap16md(res->wi_signal));
   nr->nr_max_rssi = 0;
   nr->nr_nwid_len = (__uint16_t)(__builtin_constant_p(res->wi_ssid_len) ? (__uint16_t)(((__uint16_t)(res->wi_ssid_len) & 0xffU) << 8 | ((__uint16_t)(res->wi_ssid_len) & 0xff00U) >> 8) : __swap16md(res->wi_ssid_len));
   __builtin_bcopy((res->wi_ssid), (nr->nr_nwid), (nr->nr_nwid_len));
   nr->nr_intval = (__uint16_t)(__builtin_constant_p(res->wi_interval) ? (__uint16_t)(((__uint16_t)(res->wi_interval) & 0xffU) << 8 | ((__uint16_t)(res->wi_interval) & 0xff00U) >> 8) : __swap16md(res->wi_interval));
   nr->nr_capinfo = (__uint16_t)(__builtin_constant_p(res->wi_capinfo) ? (__uint16_t)(((__uint16_t)(res->wi_capinfo) & 0xffU) << 8 | ((__uint16_t)(res->wi_capinfo) & 0xff00U) >> 8) : __swap16md(res->wi_capinfo));
   nr->nr_txrate = res->wi_rate == 0x0a ? 2 :
       (res->wi_rate == 0x14 ? 4 :
       (res->wi_rate == 0x37 ? 11 :
       (res->wi_rate == 0x6e ? 22 : 0)));
   nr->nr_nrates = 0;
   while (res->wi_srates[nr->nr_nrates] != 0) {
    nr->nr_rates[nr->nr_nrates] =
        res->wi_srates[nr->nr_nrates] &
        0x7F;
    nr->nr_nrates++;
   }
   nr->nr_flags = 0;
   if (__builtin_bcmp((nr->nr_macaddr), (nr->nr_bssid), (6)) == 0)
    nr->nr_flags |= 0x01;
   error = copyout(nr, (caddr_t)na->na_node + j,
       sizeof(struct ieee80211_nodereq));
   if (error)
    break;
   j += sizeof(struct ieee80211_nodereq);
   na->na_nodes++;
  }
  if (nr)
   free(nr, 2, 0);
  break;
     }
 case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct ifreq) & 0x1fff) << 16) | ((('i')) << 8) | ((216))):
  if (sc->wi_ptype != 0x6)
   break;
  ifr->ifr_ifru.ifru_flags = 0;
  if (sc->wi_flags & 0x0800) {
   wreq = malloc(sizeof *wreq, 2, 0x0001|0x0008);
   wreq->wi_len = 512;
   wreq->wi_type = 0xFC43;
   if (sc->sc_funcs->f_read_record(sc, (struct wi_ltv_gen *)wreq)) {
    error = 22;
    break;
   }
   sc->wi_enh_security = (__uint16_t)(__builtin_constant_p(wreq->wi_val[0]) ? (__uint16_t)(((__uint16_t)(wreq->wi_val[0]) & 0xffU) << 8 | ((__uint16_t)(wreq->wi_val[0]) & 0xff00U) >> 8) : __swap16md(wreq->wi_val[0]));
   if (sc->wi_enh_security == 0x03)
    ifr->ifr_ifru.ifru_flags |= 0x10000000 >>
        28;
  }
  break;
 case ((unsigned long)0x80000000 | ((sizeof(struct ifreq) & 0x1fff) << 16) | ((('i')) << 8) | ((217))):
  if ((error = suser((__curcpu->ci_self)->ci_curproc, 0)) != 0)
   break;
  if (sc->wi_ptype != 0x6) {
   error = 22;
   break;
  }
  flags = (u_int32_t)ifr->ifr_ifru.ifru_flags << 28;
  if (sc->wi_flags & 0x0800) {
   sc->wi_enh_security = (flags & 0x10000000) ?
       0x03 : 0;
   do { struct wi_ltv_gen g; g.wi_len = 2; g.wi_type = 0xFC43; g.wi_val = (__uint16_t)(__builtin_constant_p(sc->wi_enh_security) ? (__uint16_t)(((__uint16_t)(sc->wi_enh_security) & 0xffU) << 8 | ((__uint16_t)(sc->wi_enh_security) & 0xff00U) >> 8) : __swap16md(sc->wi_enh_security)); sc->sc_funcs->f_write_record(sc, &g); } while (0);
  }
  break;
 case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct ifreq) & 0x1fff) << 16) | ((('i')) << 8) | ((201))):
 case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct ifreq) & 0x1fff) << 16) | ((('i')) << 8) | ((202))):
 case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct ifreq) & 0x1fff) << 16) | ((('i')) << 8) | ((200))):
 case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct ifreq) & 0x1fff) << 16) | ((('i')) << 8) | ((203))):
 case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct ifreq) & 0x1fff) << 16) | ((('i')) << 8) | ((204))):
 case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct ifreq) & 0x1fff) << 16) | ((('i')) << 8) | ((205))):
  error = wihap_ioctl(sc, command, data);
  break;
 default:
  error = ether_ioctl(ifp, &sc->sc_ic.ic_ac, command, data);
 }
 if (error == 52) {
  if (ifp->if_flags & 0x40)
   wi_setmulti(sc);
  error = 0;
 }
 if (wreq)
  free(wreq, 2, 0);
 if (nwidp)
  free(nwidp, 2, 0);
fail:
 sc->wi_flags &= ~0x2000;
 wakeup(&sc->wi_flags);
 _splx(s);
 return(error);
}
void
wi_scan_timeout(void *arg)
{
 struct wi_softc *sc = (struct wi_softc *)arg;
 struct wi_req wreq;
 if (sc->wi_scan_lock++ < 100 &&
     sc->sc_firmware_type != 1 &&
     (sc->wi_flags & 0x0400) == 0) {
  wreq.wi_len = 512;
  wreq.wi_type = 0xFD88;
  if (sc->sc_funcs->f_read_record(sc, (struct wi_ltv_gen *)&wreq) == 0 &&
      ((struct wi_scan_p2_hdr *)wreq.wi_val)->wi_reason == 0) {
   timeout_add(&sc->wi_scan_timeout, ((hz / 10) * 2));
   return;
  }
 }
 if (sc->sc_ic.ic_ac.ac_if.if_flags & 0x4)
  printf("%s" ": wi_scan_timeout: %d tries\n",
      (sc)->sc_dev.dv_xname, sc->wi_scan_lock);
 wakeup(&sc->wi_scan_lock);
 sc->wi_scan_lock = 0;
}
 void
wi_init_io(struct wi_softc *sc)
{
 struct ifnet *ifp = &sc->sc_ic.ic_ac.ac_if;
 int s;
 struct wi_ltv_macaddr mac;
 int id = 0;
 if (!(sc->wi_flags & 0x0001))
  return;
 ;
 s = _splraise(6);
 if (ifp->if_flags & 0x40)
  wi_stop(sc);
 wi_reset(sc);
 do { struct wi_ltv_gen g; g.wi_len = 2; g.wi_type = 0xFC07; g.wi_val = (__uint16_t)(__builtin_constant_p(sc->wi_max_data_len) ? (__uint16_t)(((__uint16_t)(sc->wi_max_data_len) & 0xffU) << 8 | ((__uint16_t)(sc->wi_max_data_len) & 0xff00U) >> 8) : __swap16md(sc->wi_max_data_len)); sc->sc_funcs->f_write_record(sc, &g); } while (0);
 do { struct wi_ltv_gen g; g.wi_len = 2; g.wi_type = 0xFC00; g.wi_val = (__uint16_t)(__builtin_constant_p(sc->wi_ptype) ? (__uint16_t)(((__uint16_t)(sc->wi_ptype) & 0xffU) << 8 | ((__uint16_t)(sc->wi_ptype) & 0xff00U) >> 8) : __swap16md(sc->wi_ptype)); sc->sc_funcs->f_write_record(sc, &g); } while (0);
 do { struct wi_ltv_gen g; g.wi_len = 2; g.wi_type = 0xFC81; g.wi_val = (__uint16_t)(__builtin_constant_p(sc->wi_create_ibss) ? (__uint16_t)(((__uint16_t)(sc->wi_create_ibss) & 0xffU) << 8 | ((__uint16_t)(sc->wi_create_ibss) & 0xff00U) >> 8) : __swap16md(sc->wi_create_ibss)); sc->sc_funcs->f_write_record(sc, &g); } while (0);
 do { struct wi_ltv_gen g; g.wi_len = 2; g.wi_type = 0xFC83; g.wi_val = (__uint16_t)(__builtin_constant_p(sc->wi_rts_thresh) ? (__uint16_t)(((__uint16_t)(sc->wi_rts_thresh) & 0xffU) << 8 | ((__uint16_t)(sc->wi_rts_thresh) & 0xff00U) >> 8) : __swap16md(sc->wi_rts_thresh)); sc->sc_funcs->f_write_record(sc, &g); } while (0);
 do { struct wi_ltv_gen g; g.wi_len = 2; g.wi_type = 0xFC84; g.wi_val = (__uint16_t)(__builtin_constant_p(sc->wi_tx_rate) ? (__uint16_t)(((__uint16_t)(sc->wi_tx_rate) & 0xffU) << 8 | ((__uint16_t)(sc->wi_tx_rate) & 0xff00U) >> 8) : __swap16md(sc->wi_tx_rate)); sc->sc_funcs->f_write_record(sc, &g); } while (0);
 do { struct wi_ltv_gen g; g.wi_len = 2; g.wi_type = 0xFC06; g.wi_val = (__uint16_t)(__builtin_constant_p(sc->wi_ap_density) ? (__uint16_t)(((__uint16_t)(sc->wi_ap_density) & 0xffU) << 8 | ((__uint16_t)(sc->wi_ap_density) & 0xff00U) >> 8) : __swap16md(sc->wi_ap_density)); sc->sc_funcs->f_write_record(sc, &g); } while (0);
 do { struct wi_ltv_gen g; g.wi_len = 2; g.wi_type = 0xFC09; g.wi_val = (__uint16_t)(__builtin_constant_p(sc->wi_pm_enabled) ? (__uint16_t)(((__uint16_t)(sc->wi_pm_enabled) & 0xffU) << 8 | ((__uint16_t)(sc->wi_pm_enabled) & 0xff00U) >> 8) : __swap16md(sc->wi_pm_enabled)); sc->sc_funcs->f_write_record(sc, &g); } while (0);
 do { struct wi_ltv_gen g; g.wi_len = 2; g.wi_type = 0xFC0C; g.wi_val = (__uint16_t)(__builtin_constant_p(sc->wi_max_sleep) ? (__uint16_t)(((__uint16_t)(sc->wi_max_sleep) & 0xffU) << 8 | ((__uint16_t)(sc->wi_max_sleep) & 0xff00U) >> 8) : __swap16md(sc->wi_max_sleep)); sc->sc_funcs->f_write_record(sc, &g); } while (0);
 if (sc->wi_flags & 0x0800)
  do { struct wi_ltv_gen g; g.wi_len = 2; g.wi_type = 0xFC43; g.wi_val = (__uint16_t)(__builtin_constant_p(sc->wi_enh_security) ? (__uint16_t)(((__uint16_t)(sc->wi_enh_security) & 0xffU) << 8 | ((__uint16_t)(sc->wi_enh_security) & 0xff00U) >> 8) : __swap16md(sc->wi_enh_security)); sc->sc_funcs->f_write_record(sc, &g); } while (0);
 if (sc->wi_flags & 0x0040)
  do { struct wi_ltv_gen g; g.wi_len = 2; g.wi_type = 0xFC2D; g.wi_val = (__uint16_t)(__builtin_constant_p(sc->wi_roaming) ? (__uint16_t)(((__uint16_t)(sc->wi_roaming) & 0xffU) << 8 | ((__uint16_t)(sc->wi_roaming) & 0xff00U) >> 8) : __swap16md(sc->wi_roaming)); sc->sc_funcs->f_write_record(sc, &g); } while (0);
 if (sc->wi_flags & 0x0080)
  do { struct wi_ltv_gen g; g.wi_len = 2; g.wi_type = 0xFC87; g.wi_val = (__uint16_t)(__builtin_constant_p(sc->wi_diversity) ? (__uint16_t)(((__uint16_t)(sc->wi_diversity) & 0xffU) << 8 | ((__uint16_t)(sc->wi_diversity) & 0xff00U) >> 8) : __swap16md(sc->wi_diversity)); sc->sc_funcs->f_write_record(sc, &g); } while (0);
 do { struct wi_ltv_str s; int l; l = (sc->wi_net_name.i_len + 1) & ~0x1; __builtin_bzero((&s), (sizeof(s))); s.wi_len = (l / 2) + 2; s.wi_type = 0xFC02; s.wi_str[0] = (__uint16_t)(__builtin_constant_p(sc->wi_net_name.i_len) ? (__uint16_t)(((__uint16_t)(sc->wi_net_name.i_len) & 0xffU) << 8 | ((__uint16_t)(sc->wi_net_name.i_len) & 0xff00U) >> 8) : __swap16md(sc->wi_net_name.i_len)); __builtin_bcopy((sc->wi_net_name.i_nwid), (&s.wi_str[1]), (sc->wi_net_name.i_len)); sc->sc_funcs->f_write_record(sc, (struct wi_ltv_gen *)&s); } while (0);
 if (sc->wi_net_name.i_len != 0 && (sc->wi_ptype == 0x6 ||
     (sc->wi_create_ibss && sc->wi_ptype == 0x4)))
  do { struct wi_ltv_str s; int l; l = (sc->wi_net_name.i_len + 1) & ~0x1; __builtin_bzero((&s), (sizeof(s))); s.wi_len = (l / 2) + 2; s.wi_type = 0xFC04; s.wi_str[0] = (__uint16_t)(__builtin_constant_p(sc->wi_net_name.i_len) ? (__uint16_t)(((__uint16_t)(sc->wi_net_name.i_len) & 0xffU) << 8 | ((__uint16_t)(sc->wi_net_name.i_len) & 0xff00U) >> 8) : __swap16md(sc->wi_net_name.i_len)); __builtin_bcopy((sc->wi_net_name.i_nwid), (&s.wi_str[1]), (sc->wi_net_name.i_len)); sc->sc_funcs->f_write_record(sc, (struct wi_ltv_gen *)&s); } while (0);
 else
  do { struct wi_ltv_str s; int l; l = (sc->wi_ibss_name.i_len + 1) & ~0x1; __builtin_bzero((&s), (sizeof(s))); s.wi_len = (l / 2) + 2; s.wi_type = 0xFC04; s.wi_str[0] = (__uint16_t)(__builtin_constant_p(sc->wi_ibss_name.i_len) ? (__uint16_t)(((__uint16_t)(sc->wi_ibss_name.i_len) & 0xffU) << 8 | ((__uint16_t)(sc->wi_ibss_name.i_len) & 0xff00U) >> 8) : __swap16md(sc->wi_ibss_name.i_len)); __builtin_bcopy((sc->wi_ibss_name.i_nwid), (&s.wi_str[1]), (sc->wi_ibss_name.i_len)); sc->sc_funcs->f_write_record(sc, (struct wi_ltv_gen *)&s); } while (0);
 do { struct wi_ltv_gen g; g.wi_len = 2; g.wi_type = 0xFC03; g.wi_val = (__uint16_t)(__builtin_constant_p(sc->wi_channel) ? (__uint16_t)(((__uint16_t)(sc->wi_channel) & 0xffU) << 8 | ((__uint16_t)(sc->wi_channel) & 0xff00U) >> 8) : __swap16md(sc->wi_channel)); sc->sc_funcs->f_write_record(sc, &g); } while (0);
 do { struct wi_ltv_str s; int l; l = (sc->wi_node_name.i_len + 1) & ~0x1; __builtin_bzero((&s), (sizeof(s))); s.wi_len = (l / 2) + 2; s.wi_type = 0xFC0E; s.wi_str[0] = (__uint16_t)(__builtin_constant_p(sc->wi_node_name.i_len) ? (__uint16_t)(((__uint16_t)(sc->wi_node_name.i_len) & 0xffU) << 8 | ((__uint16_t)(sc->wi_node_name.i_len) & 0xff00U) >> 8) : __swap16md(sc->wi_node_name.i_len)); __builtin_bcopy((sc->wi_node_name.i_nwid), (&s.wi_str[1]), (sc->wi_node_name.i_len)); sc->sc_funcs->f_write_record(sc, (struct wi_ltv_gen *)&s); } while (0);
 mac.wi_len = 4;
 mac.wi_type = 0xFC01;
 __builtin_bcopy((((caddr_t)((ifp->if_sadl)->sdl_data + (ifp->if_sadl)->sdl_nlen))), (&sc->sc_ic.ic_myaddr), (6));
 __builtin_bcopy((&sc->sc_ic.ic_myaddr), (&mac.wi_mac_addr), (6));
 sc->sc_funcs->f_write_record(sc, (struct wi_ltv_gen *)&mac);
 if (sc->wi_ptype != 0x6 && ifp->if_flags & 0x100)
  do { struct wi_ltv_gen g; g.wi_len = 2; g.wi_type = 0xFC85; g.wi_val = (__uint16_t)(__builtin_constant_p(1) ? (__uint16_t)(((__uint16_t)(1) & 0xffU) << 8 | ((__uint16_t)(1) & 0xff00U) >> 8) : __swap16md(1)); sc->sc_funcs->f_write_record(sc, &g); } while (0);
 else
  do { struct wi_ltv_gen g; g.wi_len = 2; g.wi_type = 0xFC85; g.wi_val = (__uint16_t)(__builtin_constant_p(0) ? (__uint16_t)(((__uint16_t)(0) & 0xffU) << 8 | ((__uint16_t)(0) & 0xff00U) >> 8) : __swap16md(0)); sc->sc_funcs->f_write_record(sc, &g); } while (0);
 if (sc->wi_flags & 0x0004) {
  do { struct wi_ltv_gen g; g.wi_len = 2; g.wi_type = 0xFC20; g.wi_val = (__uint16_t)(__builtin_constant_p(sc->wi_use_wep) ? (__uint16_t)(((__uint16_t)(sc->wi_use_wep) & 0xffU) << 8 | ((__uint16_t)(sc->wi_use_wep) & 0xff00U) >> 8) : __swap16md(sc->wi_use_wep)); sc->sc_funcs->f_write_record(sc, &g); } while (0);
  do { struct wi_ltv_gen g; g.wi_len = 2; g.wi_type = 0xFCB1; g.wi_val = (__uint16_t)(__builtin_constant_p(sc->wi_tx_key) ? (__uint16_t)(((__uint16_t)(sc->wi_tx_key) & 0xffU) << 8 | ((__uint16_t)(sc->wi_tx_key) & 0xff00U) >> 8) : __swap16md(sc->wi_tx_key)); sc->sc_funcs->f_write_record(sc, &g); } while (0);
  sc->wi_keys.wi_len = (sizeof(struct wi_ltv_keys) / 2) + 1;
  sc->wi_keys.wi_type = 0xFCB0;
  sc->sc_funcs->f_write_record(sc, (struct wi_ltv_gen *)&sc->wi_keys);
  if (sc->sc_firmware_type != 1 && sc->wi_use_wep) {
    if (sc->sc_firmware_type == 2 &&
       sc->sc_sta_firmware_ver < 802 ) {
    do { struct wi_ltv_gen g; g.wi_len = 2; g.wi_type = 0xFC85; g.wi_val = (__uint16_t)(__builtin_constant_p(1) ? (__uint16_t)(((__uint16_t)(1) & 0xffU) << 8 | ((__uint16_t)(1) & 0xff00U) >> 8) : __swap16md(1)); sc->sc_funcs->f_write_record(sc, &g); } while (0);
    }
    do { struct wi_ltv_gen g; g.wi_len = 2; g.wi_type = 0xFC2A; g.wi_val = (__uint16_t)(__builtin_constant_p(sc->wi_authtype) ? (__uint16_t)(((__uint16_t)(sc->wi_authtype) & 0xffU) << 8 | ((__uint16_t)(sc->wi_authtype) & 0xff00U) >> 8) : __swap16md(sc->wi_authtype)); sc->sc_funcs->f_write_record(sc, &g); } while (0);
  }
 }
 wi_setmulti(sc);
 sc->sc_funcs->f_cmd(sc, 0x0001 | sc->wi_portnum, 0, 0, 0);
 if (sc->sc_funcs->f_alloc_nicmem(sc, 1518 + sizeof(struct wi_frame) + 8, &id))
  printf("%s" ": tx buffer allocation failed\n",
      (sc)->sc_dev.dv_xname);
 sc->wi_tx_data_id = id;
 if (sc->sc_funcs->f_alloc_nicmem(sc, 1518 + sizeof(struct wi_frame) + 8, &id))
  printf("%s" ": mgmt. buffer allocation failed\n",
      (sc)->sc_dev.dv_xname);
 sc->wi_tx_mgmt_id = id;
 if (sc->wi_flags & 0x1000)
  wi_set_txpower(sc, ((void *)0));
 wi_intr_enable(sc, (0x0001|0x0002|0x0004|0x0008|0x0080|0x2000));
        wihap_init(sc);
 _splx(s);
 ifp->if_flags |= 0x40;
 ifq_clr_oactive(&ifp->if_snd);
 timeout_add_sec(&sc->sc_timo, 60);
 return;
}
 void
wi_do_hostencrypt(struct wi_softc *sc, caddr_t buf, int len)
{
 u_int32_t crc, klen;
 u_int8_t key[16];
 u_int8_t *dat;
 struct rc4_ctx ctx;
 if (!sc->wi_icv_flag) {
  sc->wi_icv = arc4random();
  sc->wi_icv_flag++;
        } else
  sc->wi_icv++;
 if (sc->wi_icv >= 0x03ff00 &&
            (sc->wi_icv & 0xf8ff00) == 0x00ff00)
                sc->wi_icv += 0x000100;
 __builtin_bzero((key), (sizeof(key)));
 key[0] = sc->wi_icv >> 16;
 key[1] = sc->wi_icv >> 8;
 key[2] = sc->wi_icv;
 klen = (__uint16_t)(__builtin_constant_p(sc->wi_keys.wi_keys[sc->wi_tx_key].wi_keylen) ? (__uint16_t)(((__uint16_t)(sc->wi_keys.wi_keys[sc->wi_tx_key].wi_keylen) & 0xffU) << 8 | ((__uint16_t)(sc->wi_keys.wi_keys[sc->wi_tx_key].wi_keylen) & 0xff00U) >> 8) : __swap16md(sc->wi_keys.wi_keys[sc->wi_tx_key].wi_keylen));
 __builtin_bcopy((&sc->wi_keys.wi_keys[sc->wi_tx_key].wi_keydat), (key + 3), (klen));
 klen = (klen > 5) ? 16 : 16 / 2;
 rc4_keysetup(&ctx, key, klen);
 dat = buf;
 dat[0] = key[0];
 dat[1] = key[1];
 dat[2] = key[2];
 dat[3] = sc->wi_tx_key << 6;
 dat += 4;
 crc = ~ether_crc32_le(dat, len);
 rc4_crypt(&ctx, dat, dat, len);
 dat += len;
 dat[0] = crc;
 dat[1] = crc >> 8;
 dat[2] = crc >> 16;
 dat[3] = crc >> 24;
 rc4_crypt(&ctx, dat, dat, 4);
}
 int
wi_do_hostdecrypt(struct wi_softc *sc, caddr_t buf, int len)
{
 u_int32_t crc, klen, kid;
 u_int8_t key[16];
 u_int8_t *dat;
 struct rc4_ctx ctx;
 if (len < 3 + 1 +
     4)
  return -1;
 len -= (3 + 1 +
     4);
 dat = buf;
 __builtin_bzero((key), (sizeof(key)));
 key[0] = dat[0];
 key[1] = dat[1];
 key[2] = dat[2];
 kid = (dat[3] >> 6) % 4;
 dat += 4;
 klen = (__uint16_t)(__builtin_constant_p(sc->wi_keys.wi_keys[kid].wi_keylen) ? (__uint16_t)(((__uint16_t)(sc->wi_keys.wi_keys[kid].wi_keylen) & 0xffU) << 8 | ((__uint16_t)(sc->wi_keys.wi_keys[kid].wi_keylen) & 0xff00U) >> 8) : __swap16md(sc->wi_keys.wi_keys[kid].wi_keylen));
 __builtin_bcopy((&sc->wi_keys.wi_keys[kid].wi_keydat), (key + 3), (klen));
 klen = (klen > 5) ? 16 : 16 / 2;
 rc4_keysetup(&ctx, key, klen);
 rc4_crypt(&ctx, dat, dat, len);
 crc = ~ether_crc32_le(dat, len);
 dat += len;
 rc4_crypt(&ctx, dat, dat, 4);
 if ((dat[0] != crc) && (dat[1] != crc >> 8) &&
     (dat[2] != crc >> 16) && (dat[3] != crc >> 24)) {
  if (sc->sc_ic.ic_ac.ac_if.if_flags & 0x4)
   printf("%s" ": wi_do_hostdecrypt: iv mismatch: "
       "0x%02x%02x%02x%02x vs. 0x%x\n", (sc)->sc_dev.dv_xname,
       dat[3], dat[2], dat[1], dat[0], crc);
  return -1;
 }
 return 0;
}
void
wi_start(struct ifnet *ifp)
{
 struct wi_softc *sc;
 struct mbuf *m0;
 struct wi_frame tx_frame;
 struct ether_header *eh;
 int id, hostencrypt = 0;
 sc = ifp->if_softc;
 ;
 if (!(sc->wi_flags & 0x0001))
  return;
 if (ifq_is_oactive(&ifp->if_snd))
  return;
nextpkt:
 do { (m0) = ifq_dequeue(&ifp->if_snd); } while ( 0);
 if (m0 == ((void *)0))
  return;
 __builtin_bzero((&tx_frame), (sizeof(tx_frame)));
 tx_frame.wi_frame_ctl = (__uint16_t)(__builtin_constant_p(0x0008 | 0x0000) ? (__uint16_t)(((__uint16_t)(0x0008 | 0x0000) & 0xffU) << 8 | ((__uint16_t)(0x0008 | 0x0000) & 0xff00U) >> 8) : __swap16md(0x0008 | 0x0000));
 id = sc->wi_tx_data_id;
 eh = ((struct ether_header *)((m0)->m_hdr.mh_data));
 if (sc->wi_ptype == 0x6) {
  if (!wihap_check_tx(&sc->wi_hostap_info, eh->ether_dhost,
      &tx_frame.wi_tx_rate) && !(ifp->if_flags & 0x100)) {
   if (ifp->if_flags & 0x4)
    printf("%s"
        ": wi_start: dropping unassoc dst %s\n",
        (sc)->sc_dev.dv_xname,
        ether_sprintf(eh->ether_dhost));
   m_freem(m0);
   goto nextpkt;
  }
 }
 if (eh->ether_type == ((__uint16_t)(0x0800)) ||
     eh->ether_type == ((__uint16_t)(0x0806)) ||
     eh->ether_type == ((__uint16_t)(0x8035)) ||
     eh->ether_type == ((__uint16_t)(0x86DD))) {
  __builtin_bcopy((&eh->ether_dhost), (&tx_frame.wi_addr1), (6));
  if (sc->wi_ptype == 0x6) {
   tx_frame.wi_tx_ctl = (__uint16_t)(__builtin_constant_p(0x08) ? (__uint16_t)(((__uint16_t)(0x08) & 0xffU) << 8 | ((__uint16_t)(0x08) & 0xff00U) >> 8) : __swap16md(0x08));
   tx_frame.wi_frame_ctl |= (__uint16_t)(__builtin_constant_p(0x0200) ? (__uint16_t)(((__uint16_t)(0x0200) & 0xffU) << 8 | ((__uint16_t)(0x0200) & 0xff00U) >> 8) : __swap16md(0x0200));
   __builtin_bcopy((&sc->sc_ic.ic_myaddr), (&tx_frame.wi_addr2), (6));
   __builtin_bcopy((&eh->ether_shost), (&tx_frame.wi_addr3), (6));
   if (sc->wi_use_wep)
    hostencrypt = 1;
  } else if (sc->wi_ptype == 0x1 && sc->wi_use_wep &&
      sc->wi_crypto_algorithm != 0x00) {
   tx_frame.wi_tx_ctl = (__uint16_t)(__builtin_constant_p(0x08) ? (__uint16_t)(((__uint16_t)(0x08) & 0xffU) << 8 | ((__uint16_t)(0x08) & 0xff00U) >> 8) : __swap16md(0x08));
   tx_frame.wi_frame_ctl |= (__uint16_t)(__builtin_constant_p(0x0100) ? (__uint16_t)(((__uint16_t)(0x0100) & 0xffU) << 8 | ((__uint16_t)(0x0100) & 0xff00U) >> 8) : __swap16md(0x0100));
   __builtin_bcopy((&sc->sc_ic.ic_myaddr), (&tx_frame.wi_addr2), (6));
   __builtin_bcopy((&eh->ether_dhost), (&tx_frame.wi_addr3), (6));
   hostencrypt = 1;
  } else
   __builtin_bcopy((&eh->ether_shost), (&tx_frame.wi_addr2), (6));
  __builtin_bcopy((&eh->ether_dhost), (&tx_frame.wi_dst_addr), (6));
  __builtin_bcopy((&eh->ether_shost), (&tx_frame.wi_src_addr), (6));
  tx_frame.wi_dat_len = m0->M_dat.MH.MH_pkthdr.len - 0x6;
  tx_frame.wi_dat[0] = ((__uint16_t)((0xaa | (0xaa << 8))));
  tx_frame.wi_dat[1] = ((__uint16_t)((0x00 | (0x03 << 8))));
  tx_frame.wi_len = ((__uint16_t)(m0->M_dat.MH.MH_pkthdr.len - 0x6));
  tx_frame.wi_type = eh->ether_type;
  if (hostencrypt) {
   tx_frame.wi_frame_ctl |= (__uint16_t)(__builtin_constant_p(0x4000) ? (__uint16_t)(((__uint16_t)(0x4000) & 0xffU) << 8 | ((__uint16_t)(0x4000) & 0xff00U) >> 8) : __swap16md(0x4000));
   __builtin_bcopy((&tx_frame.wi_dat[0]), (&sc->wi_txbuf[4]), (6));
   __builtin_bcopy((&tx_frame.wi_type), (&sc->wi_txbuf[10]), (2));
   m_copydata(m0, sizeof(struct ether_header),
       m0->M_dat.MH.MH_pkthdr.len - sizeof(struct ether_header),
       (caddr_t)&sc->wi_txbuf[12]);
   wi_do_hostencrypt(sc, (caddr_t)&sc->wi_txbuf,
       tx_frame.wi_dat_len);
   tx_frame.wi_dat_len += 3 +
       1 + 4;
   tx_frame.wi_dat_len = (__uint16_t)(__builtin_constant_p(tx_frame.wi_dat_len) ? (__uint16_t)(((__uint16_t)(tx_frame.wi_dat_len) & 0xffU) << 8 | ((__uint16_t)(tx_frame.wi_dat_len) & 0xff00U) >> 8) : __swap16md(tx_frame.wi_dat_len));
   sc->sc_funcs->f_write_data(sc, id, 0, (caddr_t)&tx_frame,
       sizeof(struct wi_frame));
   sc->sc_funcs->f_write_data(sc, id, 0x3C,
       (caddr_t)&sc->wi_txbuf,
       (m0->M_dat.MH.MH_pkthdr.len -
        sizeof(struct ether_header)) + 18);
  } else {
   m_copydata(m0, sizeof(struct ether_header),
       m0->M_dat.MH.MH_pkthdr.len - sizeof(struct ether_header),
       (caddr_t)&sc->wi_txbuf);
   tx_frame.wi_dat_len = (__uint16_t)(__builtin_constant_p(tx_frame.wi_dat_len) ? (__uint16_t)(((__uint16_t)(tx_frame.wi_dat_len) & 0xffU) << 8 | ((__uint16_t)(tx_frame.wi_dat_len) & 0xff00U) >> 8) : __swap16md(tx_frame.wi_dat_len));
   sc->sc_funcs->f_write_data(sc, id, 0, (caddr_t)&tx_frame,
       sizeof(struct wi_frame));
   sc->sc_funcs->f_write_data(sc, id, 0x44,
       (caddr_t)&sc->wi_txbuf,
       (m0->M_dat.MH.MH_pkthdr.len -
        sizeof(struct ether_header)) + 2);
  }
 } else {
  tx_frame.wi_dat_len = (__uint16_t)(__builtin_constant_p(m0->M_dat.MH.MH_pkthdr.len) ? (__uint16_t)(((__uint16_t)(m0->M_dat.MH.MH_pkthdr.len) & 0xffU) << 8 | ((__uint16_t)(m0->M_dat.MH.MH_pkthdr.len) & 0xff00U) >> 8) : __swap16md(m0->M_dat.MH.MH_pkthdr.len));
  if (sc->wi_ptype == 0x6 && sc->wi_use_wep) {
   printf("%s"
       ": host encrypt not implemented for 802.3\n",
       (sc)->sc_dev.dv_xname);
  } else {
   m_copydata(m0, 0, m0->M_dat.MH.MH_pkthdr.len,
       (caddr_t)&sc->wi_txbuf);
   sc->sc_funcs->f_write_data(sc, id, 0, (caddr_t)&tx_frame,
       sizeof(struct wi_frame));
   sc->sc_funcs->f_write_data(sc, id, 0x2E,
       (caddr_t)&sc->wi_txbuf, m0->M_dat.MH.MH_pkthdr.len + 2);
  }
 }
 if (ifp->if_bpf)
  bpf_mtap(ifp->if_bpf, m0, (1<<1));
 m_freem(m0);
 ifq_set_oactive(&ifp->if_snd);
 ifp->if_timer = 5;
 if (sc->sc_funcs->f_cmd(sc, 0x000B|0x0100, id, 0, 0))
  printf("%s" ": wi_start: xmit failed\n", (sc)->sc_dev.dv_xname);
 return;
}
 int
wi_mgmt_xmit(struct wi_softc *sc, caddr_t data, int len)
{
 struct wi_frame tx_frame;
 int id;
 struct wi_80211_hdr *hdr;
 caddr_t dptr;
 if (!(sc->wi_flags & 0x0001))
  return(19);
 hdr = (struct wi_80211_hdr *)data;
 dptr = data + sizeof(struct wi_80211_hdr);
 __builtin_bzero((&tx_frame), (sizeof(tx_frame)));
 id = sc->wi_tx_mgmt_id;
 __builtin_bcopy((hdr), (&tx_frame.wi_frame_ctl), (sizeof(struct wi_80211_hdr)));
 tx_frame.wi_tx_ctl = (__uint16_t)(__builtin_constant_p(0x08) ? (__uint16_t)(((__uint16_t)(0x08) & 0xffU) << 8 | ((__uint16_t)(0x08) & 0xff00U) >> 8) : __swap16md(0x08));
 tx_frame.wi_dat_len = len - sizeof(struct wi_80211_hdr);
 tx_frame.wi_len = (__uint16_t)(__builtin_constant_p(tx_frame.wi_dat_len) ? (__uint16_t)(((__uint16_t)(tx_frame.wi_dat_len) & 0xffU) << 8 | ((__uint16_t)(tx_frame.wi_dat_len) & 0xff00U) >> 8) : __swap16md(tx_frame.wi_dat_len));
 tx_frame.wi_dat_len = (__uint16_t)(__builtin_constant_p(tx_frame.wi_dat_len) ? (__uint16_t)(((__uint16_t)(tx_frame.wi_dat_len) & 0xffU) << 8 | ((__uint16_t)(tx_frame.wi_dat_len) & 0xff00U) >> 8) : __swap16md(tx_frame.wi_dat_len));
 sc->sc_funcs->f_write_data(sc, id, 0, (caddr_t)&tx_frame, sizeof(struct wi_frame));
 sc->sc_funcs->f_write_data(sc, id, 0x3C, dptr,
     (len - sizeof(struct wi_80211_hdr)) + 2);
 if (sc->sc_funcs->f_cmd(sc, 0x000B|0x0100, id, 0, 0)) {
  printf("%s" ": wi_mgmt_xmit: xmit failed\n",
      (sc)->sc_dev.dv_xname);
  wi_reset(sc);
  return(5);
 }
 return(0);
}
void
wi_stop(struct wi_softc *sc)
{
 struct ifnet *ifp;
 wihap_shutdown(sc);
 if (!(sc->wi_flags & 0x0001))
  return;
 ;
 timeout_del(&sc->sc_timo);
 ifp = &sc->sc_ic.ic_ac.ac_if;
 wi_intr_enable(sc, 0);
 sc->sc_funcs->f_cmd(sc, 0x0002|sc->wi_portnum, 0, 0, 0);
 ifp->if_flags &= ~0x40;
 ifq_clr_oactive(&ifp->if_snd);
 ifp->if_timer = 0;
 return;
}
void
wi_watchdog(struct ifnet *ifp)
{
 struct wi_softc *sc;
 sc = ifp->if_softc;
 printf("%s" ": device timeout\n", (sc)->sc_dev.dv_xname);
 wi_cor_reset(sc);
 sc->sc_funcs->f_init(sc);
 ifp->if_data.ifi_oerrors++;
 return;
}
void
wi_detach(struct wi_softc *sc)
{
 struct ifnet *ifp;
 ifp = &sc->sc_ic.ic_ac.ac_if;
 if (ifp->if_flags & 0x40)
  wi_stop(sc);
 if (sc->wi_flags & 0x0001) {
  sc->wi_flags &= ~0x0001;
 }
}
 void
wi_get_id(struct wi_softc *sc)
{
 struct wi_ltv_ver ver;
 const struct wi_card_ident *id;
 u_int16_t pri_fw_ver[3];
 const char *card_name;
 u_int16_t card_id;
 __builtin_bzero((&ver), (sizeof(ver)));
 ver.wi_type = 0xFD0B;
 ver.wi_len = 5;
 sc->sc_funcs->f_read_record(sc, (struct wi_ltv_gen *)&ver);
 card_id = (__uint16_t)(__builtin_constant_p(ver.wi_ver[0]) ? (__uint16_t)(((__uint16_t)(ver.wi_ver[0]) & 0xffU) << 8 | ((__uint16_t)(ver.wi_ver[0]) & 0xff00U) >> 8) : __swap16md(ver.wi_ver[0]));
 for (id = wi_card_ident; id->firm_type != 0; id++) {
  if (card_id == id->card_id)
   break;
 }
 if (id->firm_type != 0) {
  sc->sc_firmware_type = id->firm_type;
  card_name = id->card_name;
 } else if (ver.wi_ver[0] & (__uint16_t)(__builtin_constant_p(0x8000) ? (__uint16_t)(((__uint16_t)(0x8000) & 0xffU) << 8 | ((__uint16_t)(0x8000) & 0xff00U) >> 8) : __swap16md(0x8000))) {
  sc->sc_firmware_type = 2;
  card_name = "Unknown PRISM2 chip";
 } else {
  sc->sc_firmware_type = 1;
 }
 if (sc->sc_firmware_type != 1) {
  __builtin_bzero((&ver), (sizeof(ver)));
  ver.wi_type = 0xFD02;
  ver.wi_len = 5;
  sc->sc_funcs->f_read_record(sc, (struct wi_ltv_gen *)&ver);
  pri_fw_ver[0] = (__uint16_t)(__builtin_constant_p(ver.wi_ver[2]) ? (__uint16_t)(((__uint16_t)(ver.wi_ver[2]) & 0xffU) << 8 | ((__uint16_t)(ver.wi_ver[2]) & 0xff00U) >> 8) : __swap16md(ver.wi_ver[2]));
  pri_fw_ver[1] = (__uint16_t)(__builtin_constant_p(ver.wi_ver[3]) ? (__uint16_t)(((__uint16_t)(ver.wi_ver[3]) & 0xffU) << 8 | ((__uint16_t)(ver.wi_ver[3]) & 0xff00U) >> 8) : __swap16md(ver.wi_ver[3]));
  pri_fw_ver[2] = (__uint16_t)(__builtin_constant_p(ver.wi_ver[1]) ? (__uint16_t)(((__uint16_t)(ver.wi_ver[1]) & 0xffU) << 8 | ((__uint16_t)(ver.wi_ver[1]) & 0xff00U) >> 8) : __swap16md(ver.wi_ver[1]));
 }
 __builtin_bzero((&ver), (sizeof(ver)));
 ver.wi_type = 0xFD20;
 ver.wi_len = 5;
 sc->sc_funcs->f_read_record(sc, (struct wi_ltv_gen *)&ver);
 ver.wi_ver[1] = (__uint16_t)(__builtin_constant_p(ver.wi_ver[1]) ? (__uint16_t)(((__uint16_t)(ver.wi_ver[1]) & 0xffU) << 8 | ((__uint16_t)(ver.wi_ver[1]) & 0xff00U) >> 8) : __swap16md(ver.wi_ver[1]));
 ver.wi_ver[2] = (__uint16_t)(__builtin_constant_p(ver.wi_ver[2]) ? (__uint16_t)(((__uint16_t)(ver.wi_ver[2]) & 0xffU) << 8 | ((__uint16_t)(ver.wi_ver[2]) & 0xff00U) >> 8) : __swap16md(ver.wi_ver[2]));
 ver.wi_ver[3] = (__uint16_t)(__builtin_constant_p(ver.wi_ver[3]) ? (__uint16_t)(((__uint16_t)(ver.wi_ver[3]) & 0xffU) << 8 | ((__uint16_t)(ver.wi_ver[3]) & 0xff00U) >> 8) : __swap16md(ver.wi_ver[3]));
 sc->sc_sta_firmware_ver = ver.wi_ver[2] * 10000 +
     ver.wi_ver[3] * 100 + ver.wi_ver[1];
 if (sc->sc_firmware_type == 2 &&
     (sc->sc_sta_firmware_ver == 10102 || sc->sc_sta_firmware_ver == 20102)) {
  struct wi_ltv_str sver;
  char *p;
  __builtin_bzero((&sver), (sizeof(sver)));
  sver.wi_type = 0xFD24;
  sver.wi_len = 7;
  if (sc->sc_funcs->f_read_record(sc, (struct wi_ltv_gen *)&sver) == 0 &&
      *(p = (char *)sver.wi_str) >= 'A' &&
      p[2] == '.' && p[5] == '-' && p[8] == '\0') {
   sc->sc_firmware_type = 3;
   sc->sc_sta_firmware_ver = (p[1] - '0') * 10000 +
       (p[3] - '0') * 1000 + (p[4] - '0') * 100 +
       (p[6] - '0') * 10 + (p[7] - '0');
  }
 }
 if (sc->sc_firmware_type == 1) {
  printf("%s: Firmware %d.%02d variant %d, ", (sc)->sc_dev.dv_xname,
      ver.wi_ver[2], ver.wi_ver[3], ver.wi_ver[1]);
 } else {
  printf("%s: %s%s (0x%04x), Firmware %d.%d.%d (primary), %d.%d.%d (station), ",
      (sc)->sc_dev.dv_xname,
      sc->sc_firmware_type == 3 ? "Symbol " : "",
      card_name, card_id, pri_fw_ver[0], pri_fw_ver[1],
      pri_fw_ver[2], sc->sc_sta_firmware_ver / 10000,
      (sc->sc_sta_firmware_ver % 10000) / 100,
      sc->sc_sta_firmware_ver % 100);
 }
}
 int
wi_sync_media(struct wi_softc *sc, int ptype, int txrate)
{
 uint64_t media = sc->sc_media.ifm_cur->ifm_media;
 uint64_t options = ((media) & (0x00000000ffff0000ULL|0x00ffff0000000000ULL));
 uint64_t subtype;
 switch (txrate) {
 case 1:
  subtype = 8;
  break;
 case 2:
  subtype = 5;
  break;
 case 3:
  subtype = 0ULL;
  break;
 case 5:
  subtype = 6;
  break;
 case 11:
  subtype = 7;
  break;
 default:
  subtype = 1ULL;
  break;
 }
 options &= ~0x00000000ffff0000ULL;
 switch (ptype) {
 case 0x1:
  break;
 case 0x3:
  options |= 0x0000000000010000ULL;
  break;
 case 0x6:
  options |= 0x0000000000020000ULL;
  break;
 case 0x4:
  if (sc->wi_create_ibss)
   options |= 0x0000000000080000ULL;
  else
   options |= 0x0000000000040000ULL;
  break;
 default:
  subtype = 1ULL;
  break;
 }
 media = ((((media) & 0x000000000000ff00ULL)) | (subtype) | (options) | ((uint64_t)((((media) & 0xff00000000000000ULL) >> 56)) << 56));
 if (ifmedia_match(&sc->sc_media, media, sc->sc_media.ifm_mask) == ((void *)0))
  return (22);
 ifmedia_set(&sc->sc_media, media);
 sc->wi_ptype = ptype;
 sc->wi_tx_rate = txrate;
 return (0);
}
 int
wi_media_change(struct ifnet *ifp)
{
 struct wi_softc *sc = ifp->if_softc;
 int otype = sc->wi_ptype;
 int orate = sc->wi_tx_rate;
 int ocreate_ibss = sc->wi_create_ibss;
 if ((sc->sc_media.ifm_cur->ifm_media & 0x0000000000020000ULL) &&
     sc->sc_firmware_type != 2)
  return (22);
 sc->wi_create_ibss = 0;
 switch (sc->sc_media.ifm_cur->ifm_media & 0x00000000ffff0000ULL) {
 case 0:
  sc->wi_ptype = 0x1;
  break;
 case 0x0000000000010000ULL:
  sc->wi_ptype = 0x3;
  break;
 case 0x0000000000020000ULL:
  sc->wi_ptype = 0x6;
  break;
 case 0x0000000000080000ULL:
 case 0x0000000000080000ULL|0x0000000000040000ULL:
  if (!(sc->wi_flags & 0x0010))
   return (22);
  sc->wi_create_ibss = 1;
 case 0x0000000000040000ULL:
  sc->wi_ptype = 0x4;
  break;
 default:
  return (22);
 }
 switch (((sc->sc_media.ifm_cur->ifm_media) & 0x00000000000000ffULL)) {
 case 8:
  sc->wi_tx_rate = 1;
  break;
 case 5:
  sc->wi_tx_rate = 2;
  break;
 case 0ULL:
  sc->wi_tx_rate = 3;
  break;
 case 6:
  sc->wi_tx_rate = 5;
  break;
 case 7:
  sc->wi_tx_rate = 11;
  break;
 }
 if (sc->sc_ic.ic_ac.ac_if.if_flags & 0x1) {
  if (otype != sc->wi_ptype || orate != sc->wi_tx_rate ||
      ocreate_ibss != sc->wi_create_ibss)
   sc->sc_funcs->f_init(sc);
 }
 ifp->if_data.ifi_baudrate = ifmedia_baudrate(sc->sc_media.ifm_cur->ifm_media);
 return (0);
}
 void
wi_media_status(struct ifnet *ifp, struct ifmediareq *imr)
{
 struct wi_softc *sc = ifp->if_softc;
 struct wi_req wreq;
 if (!(sc->sc_ic.ic_ac.ac_if.if_flags & 0x1)) {
  imr->ifm_active = 0x0000000000000400ULL|2ULL;
  imr->ifm_status = 0;
  return;
 }
 if (sc->wi_tx_rate == 3) {
  imr->ifm_active = 0x0000000000000400ULL|0ULL;
  wreq.wi_type = 0xFD44;
  wreq.wi_len = 512;
  if (sc->sc_funcs->f_read_record(sc, (struct wi_ltv_gen *)&wreq) == 0) {
   switch ((__uint16_t)(__builtin_constant_p(wreq.wi_val[0]) ? (__uint16_t)(((__uint16_t)(wreq.wi_val[0]) & 0xffU) << 8 | ((__uint16_t)(wreq.wi_val[0]) & 0xff00U) >> 8) : __swap16md(wreq.wi_val[0]))) {
   case 1:
    imr->ifm_active |= 8;
    break;
   case 2:
    imr->ifm_active |= 5;
    break;
   case 6:
    imr->ifm_active |= 6;
    break;
   case 11:
    imr->ifm_active |= 7;
    break;
   }
  }
 } else {
  imr->ifm_active = sc->sc_media.ifm_cur->ifm_media;
 }
 imr->ifm_status = 0x0000000000000001ULL;
 switch (sc->wi_ptype) {
 case 0x3:
 case 0x4:
 case 0x6:
  imr->ifm_status |= 0x0000000000000002ULL;
  break;
 default:
  wreq.wi_type = 0xFD43;
  wreq.wi_len = 512;
  if (sc->sc_funcs->f_read_record(sc, (struct wi_ltv_gen *)&wreq) == 0 &&
      (__uint16_t)(__builtin_constant_p(wreq.wi_val[0]) ? (__uint16_t)(((__uint16_t)(wreq.wi_val[0]) & 0xffU) << 8 | ((__uint16_t)(wreq.wi_val[0]) & 0xff00U) >> 8) : __swap16md(wreq.wi_val[0])) != 0)
   imr->ifm_status |= 0x0000000000000002ULL;
 }
}
 int
wi_set_nwkey(struct wi_softc *sc, struct ieee80211_nwkey *nwkey)
{
 int i, len, error;
 struct wi_req wreq;
 struct wi_ltv_keys *wk = (struct wi_ltv_keys *)&wreq;
 if (!(sc->wi_flags & 0x0004))
  return 19;
 if (nwkey->i_defkid <= 0 || nwkey->i_defkid > 4)
  return 22;
 __builtin_memcpy((wk), (&sc->wi_keys), (sizeof(*wk)));
 for (i = 0; i < 4; i++) {
  if (nwkey->i_key[i].i_keydat == ((void *)0))
   continue;
  len = nwkey->i_key[i].i_keylen;
  if (len > sizeof(wk->wi_keys[i].wi_keydat))
   return 22;
  error = copyin(nwkey->i_key[i].i_keydat,
      wk->wi_keys[i].wi_keydat, len);
  if (error)
   return error;
  wk->wi_keys[i].wi_keylen = (__uint16_t)(__builtin_constant_p(len) ? (__uint16_t)(((__uint16_t)(len) & 0xffU) << 8 | ((__uint16_t)(len) & 0xff00U) >> 8) : __swap16md(len));
 }
 wk->wi_len = (sizeof(*wk) / 2) + 1;
 wk->wi_type = 0xFCB0;
 if (sc->sc_ic.ic_ac.ac_if.if_flags & 0x1) {
  error = sc->sc_funcs->f_write_record(sc, (struct wi_ltv_gen *)&wreq);
  if (error)
   return error;
 }
 if ((error = wi_setdef(sc, &wreq)))
  return (error);
 wreq.wi_len = 2;
 wreq.wi_type = 0xFCB1;
 wreq.wi_val[0] = (__uint16_t)(__builtin_constant_p(nwkey->i_defkid - 1) ? (__uint16_t)(((__uint16_t)(nwkey->i_defkid - 1) & 0xffU) << 8 | ((__uint16_t)(nwkey->i_defkid - 1) & 0xff00U) >> 8) : __swap16md(nwkey->i_defkid - 1));
 if (sc->sc_ic.ic_ac.ac_if.if_flags & 0x1) {
  error = sc->sc_funcs->f_write_record(sc, (struct wi_ltv_gen *)&wreq);
  if (error)
   return error;
 }
 if ((error = wi_setdef(sc, &wreq)))
  return (error);
 wreq.wi_type = 0xFC20;
 wreq.wi_val[0] = (__uint16_t)(__builtin_constant_p(nwkey->i_wepon) ? (__uint16_t)(((__uint16_t)(nwkey->i_wepon) & 0xffU) << 8 | ((__uint16_t)(nwkey->i_wepon) & 0xff00U) >> 8) : __swap16md(nwkey->i_wepon));
 if (sc->sc_ic.ic_ac.ac_if.if_flags & 0x1) {
  error = sc->sc_funcs->f_write_record(sc, (struct wi_ltv_gen *)&wreq);
  if (error)
   return error;
 }
 if ((error = wi_setdef(sc, &wreq)))
  return (error);
 if (sc->sc_ic.ic_ac.ac_if.if_flags & 0x1)
  sc->sc_funcs->f_init(sc);
 return 0;
}
 int
wi_get_nwkey(struct wi_softc *sc, struct ieee80211_nwkey *nwkey)
{
 int i, len, error;
 struct wi_ltv_keys *wk = &sc->wi_keys;
 if (!(sc->wi_flags & 0x0004))
  return 19;
 nwkey->i_wepon = sc->wi_use_wep;
 nwkey->i_defkid = sc->wi_tx_key + 1;
 error = suser((__curcpu->ci_self)->ci_curproc, 0);
 for (i = 0; i < 4; i++) {
  if (nwkey->i_key[i].i_keydat == ((void *)0))
   continue;
  if (error)
   return error;
  len = (__uint16_t)(__builtin_constant_p(wk->wi_keys[i].wi_keylen) ? (__uint16_t)(((__uint16_t)(wk->wi_keys[i].wi_keylen) & 0xffU) << 8 | ((__uint16_t)(wk->wi_keys[i].wi_keylen) & 0xff00U) >> 8) : __swap16md(wk->wi_keys[i].wi_keylen));
  if (nwkey->i_key[i].i_keylen < len)
   return 28;
  nwkey->i_key[i].i_keylen = len;
  error = copyout(wk->wi_keys[i].wi_keydat,
      nwkey->i_key[i].i_keydat, len);
  if (error)
   return error;
 }
 return 0;
}
 int
wi_set_pm(struct wi_softc *sc, struct ieee80211_power *power)
{
 sc->wi_pm_enabled = power->i_enabled;
 sc->wi_max_sleep = power->i_maxsleep;
 if (sc->sc_ic.ic_ac.ac_if.if_flags & 0x1)
  sc->sc_funcs->f_init(sc);
 return (0);
}
 int
wi_get_pm(struct wi_softc *sc, struct ieee80211_power *power)
{
 power->i_enabled = sc->wi_pm_enabled;
 power->i_maxsleep = sc->wi_max_sleep;
 return (0);
}
 int
wi_set_txpower(struct wi_softc *sc, struct ieee80211_txpower *txpower)
{
 u_int16_t cmd;
 u_int16_t power;
 int8_t tmp;
 int error;
 int alc;
 if (txpower == ((void *)0)) {
  if (!(sc->wi_flags & 0x1000))
   return (22);
  alc = 0;
 } else {
  if (txpower->i_mode == 1) {
   alc = 1;
   sc->wi_flags &= ~0x1000;
  } else {
   alc = 0;
   sc->wi_flags |= 0x1000;
   sc->wi_txpower = txpower->i_val;
  }
 }
 cmd = 0x0038 | (0x15 << 8);
 if ((error = sc->sc_funcs->f_cmd(sc, cmd, alc, 0x8, 0)) != 0)
  return (error);
 if (alc)
  return (0);
 if (sc->wi_txpower > 20)
  power = 128;
 else if (sc->wi_txpower < -43)
  power = 127;
 else {
  tmp = sc->wi_txpower;
  tmp = -12 - tmp;
  tmp <<= 2;
  power = (u_int16_t)tmp;
 }
 cmd = 0x0031;
 if ((error = sc->sc_funcs->f_cmd(sc, cmd,
   0x3e, power, 0)) != 0)
  return (error);
 if (sc->sc_ic.ic_ac.ac_if.if_flags & 0x4)
  printf("%s: %u (%d dBm)\n", sc->sc_dev.dv_xname, power,
      sc->wi_txpower);
 return (0);
}
 int
wi_get_txpower(struct wi_softc *sc, struct ieee80211_txpower *txpower)
{
 u_int16_t cmd;
 u_int16_t power;
 int8_t tmp;
 int error;
 if (sc->wi_flags & 0x0400)
  return (45);
 cmd = 0x0030;
 if ((error = sc->sc_funcs->f_cmd(sc, cmd,
   0x3e, 0, 0)) != 0)
  return (error);
 power = bus_space_read_2(sc->wi_btag, sc->wi_bhandle, (sc->sc_pci ? 0x0A * 2: 0x0A));
 if (power > 255)
  txpower->i_val = 255;
 else {
  tmp = power;
  tmp >>= 2;
  txpower->i_val = (u_int16_t)(-12 - tmp);
 }
 if (sc->wi_flags & 0x1000)
  txpower->i_mode = 0;
 else
  txpower->i_mode = 1;
 return (0);
}
 int
wi_set_ssid(struct ieee80211_nwid *ws, u_int8_t *id, int len)
{
 if (len > 32)
  return (22);
 ws->i_len = len;
 __builtin_memcpy((ws->i_nwid), (id), (len));
 return (0);
}
 int
wi_get_debug(struct wi_softc *sc, struct wi_req *wreq)
{
 int error = 0;
 wreq->wi_len = 1;
 switch (wreq->wi_type) {
 case 0x02:
  wreq->wi_len++;
  wreq->wi_val[0] = (__uint16_t)(__builtin_constant_p(sc->wi_debug.wi_sleep) ? (__uint16_t)(((__uint16_t)(sc->wi_debug.wi_sleep) & 0xffU) << 8 | ((__uint16_t)(sc->wi_debug.wi_sleep) & 0xff00U) >> 8) : __swap16md(sc->wi_debug.wi_sleep));
  break;
 case 0x09:
  wreq->wi_len++;
  wreq->wi_val[0] = (__uint16_t)(__builtin_constant_p(sc->wi_debug.wi_delaysupp) ? (__uint16_t)(((__uint16_t)(sc->wi_debug.wi_delaysupp) & 0xffU) << 8 | ((__uint16_t)(sc->wi_debug.wi_delaysupp) & 0xff00U) >> 8) : __swap16md(sc->wi_debug.wi_delaysupp));
  break;
 case 0x0A:
  wreq->wi_len++;
  wreq->wi_val[0] = (__uint16_t)(__builtin_constant_p(sc->wi_debug.wi_txsupp) ? (__uint16_t)(((__uint16_t)(sc->wi_debug.wi_txsupp) & 0xffU) << 8 | ((__uint16_t)(sc->wi_debug.wi_txsupp) & 0xff00U) >> 8) : __swap16md(sc->wi_debug.wi_txsupp));
  break;
 case 0x0B:
  wreq->wi_len++;
  wreq->wi_val[0] = (__uint16_t)(__builtin_constant_p(sc->wi_debug.wi_monitor) ? (__uint16_t)(((__uint16_t)(sc->wi_debug.wi_monitor) & 0xffU) << 8 | ((__uint16_t)(sc->wi_debug.wi_monitor) & 0xff00U) >> 8) : __swap16md(sc->wi_debug.wi_monitor));
  break;
 case 0x0C:
  wreq->wi_len += 3;
  wreq->wi_val[0] = (__uint16_t)(__builtin_constant_p(sc->wi_debug.wi_ledtest) ? (__uint16_t)(((__uint16_t)(sc->wi_debug.wi_ledtest) & 0xffU) << 8 | ((__uint16_t)(sc->wi_debug.wi_ledtest) & 0xff00U) >> 8) : __swap16md(sc->wi_debug.wi_ledtest));
  wreq->wi_val[1] = (__uint16_t)(__builtin_constant_p(sc->wi_debug.wi_ledtest_param0) ? (__uint16_t)(((__uint16_t)(sc->wi_debug.wi_ledtest_param0) & 0xffU) << 8 | ((__uint16_t)(sc->wi_debug.wi_ledtest_param0) & 0xff00U) >> 8) : __swap16md(sc->wi_debug.wi_ledtest_param0));
  wreq->wi_val[2] = (__uint16_t)(__builtin_constant_p(sc->wi_debug.wi_ledtest_param1) ? (__uint16_t)(((__uint16_t)(sc->wi_debug.wi_ledtest_param1) & 0xffU) << 8 | ((__uint16_t)(sc->wi_debug.wi_ledtest_param1) & 0xff00U) >> 8) : __swap16md(sc->wi_debug.wi_ledtest_param1));
  break;
 case 0x0E:
  wreq->wi_len += 2;
  wreq->wi_val[0] = (__uint16_t)(__builtin_constant_p(sc->wi_debug.wi_conttx) ? (__uint16_t)(((__uint16_t)(sc->wi_debug.wi_conttx) & 0xffU) << 8 | ((__uint16_t)(sc->wi_debug.wi_conttx) & 0xff00U) >> 8) : __swap16md(sc->wi_debug.wi_conttx));
  wreq->wi_val[1] = (__uint16_t)(__builtin_constant_p(sc->wi_debug.wi_conttx_param0) ? (__uint16_t)(((__uint16_t)(sc->wi_debug.wi_conttx_param0) & 0xffU) << 8 | ((__uint16_t)(sc->wi_debug.wi_conttx_param0) & 0xff00U) >> 8) : __swap16md(sc->wi_debug.wi_conttx_param0));
  break;
 case 0x10:
  wreq->wi_len++;
  wreq->wi_val[0] = (__uint16_t)(__builtin_constant_p(sc->wi_debug.wi_contrx) ? (__uint16_t)(((__uint16_t)(sc->wi_debug.wi_contrx) & 0xffU) << 8 | ((__uint16_t)(sc->wi_debug.wi_contrx) & 0xff00U) >> 8) : __swap16md(sc->wi_debug.wi_contrx));
  break;
 case 0x11:
  wreq->wi_len += 2;
  wreq->wi_val[0] = (__uint16_t)(__builtin_constant_p(sc->wi_debug.wi_sigstate) ? (__uint16_t)(((__uint16_t)(sc->wi_debug.wi_sigstate) & 0xffU) << 8 | ((__uint16_t)(sc->wi_debug.wi_sigstate) & 0xff00U) >> 8) : __swap16md(sc->wi_debug.wi_sigstate));
  wreq->wi_val[1] = (__uint16_t)(__builtin_constant_p(sc->wi_debug.wi_sigstate_param0) ? (__uint16_t)(((__uint16_t)(sc->wi_debug.wi_sigstate_param0) & 0xffU) << 8 | ((__uint16_t)(sc->wi_debug.wi_sigstate_param0) & 0xff00U) >> 8) : __swap16md(sc->wi_debug.wi_sigstate_param0));
  break;
 case 0x15:
  wreq->wi_len += 2;
  wreq->wi_val[0] = (__uint16_t)(__builtin_constant_p(sc->wi_debug.wi_confbits) ? (__uint16_t)(((__uint16_t)(sc->wi_debug.wi_confbits) & 0xffU) << 8 | ((__uint16_t)(sc->wi_debug.wi_confbits) & 0xff00U) >> 8) : __swap16md(sc->wi_debug.wi_confbits));
  wreq->wi_val[1] = (__uint16_t)(__builtin_constant_p(sc->wi_debug.wi_confbits_param0) ? (__uint16_t)(((__uint16_t)(sc->wi_debug.wi_confbits_param0) & 0xffU) << 8 | ((__uint16_t)(sc->wi_debug.wi_confbits_param0) & 0xff00U) >> 8) : __swap16md(sc->wi_debug.wi_confbits_param0));
  break;
 default:
  error = 5;
  break;
 }
 return (error);
}
 int
wi_set_debug(struct wi_softc *sc, struct wi_req *wreq)
{
 int error = 0;
 u_int16_t cmd, param0 = 0, param1 = 0;
 switch (wreq->wi_type) {
 case 0x00:
 case 0x01:
 case 0x13:
  break;
 case 0x02:
  sc->wi_debug.wi_sleep = 1;
  break;
 case 0x03:
  sc->wi_debug.wi_sleep = 0;
  break;
 case 0x08:
  param0 = (__uint16_t)(__builtin_constant_p(wreq->wi_val[0]) ? (__uint16_t)(((__uint16_t)(wreq->wi_val[0]) & 0xffU) << 8 | ((__uint16_t)(wreq->wi_val[0]) & 0xff00U) >> 8) : __swap16md(wreq->wi_val[0]));
  break;
 case 0x09:
  sc->wi_debug.wi_delaysupp = 1;
  break;
 case 0x0A:
  sc->wi_debug.wi_txsupp = 1;
  break;
 case 0x0B:
  sc->wi_debug.wi_monitor = 1;
  break;
 case 0x0C:
  param0 = (__uint16_t)(__builtin_constant_p(wreq->wi_val[0]) ? (__uint16_t)(((__uint16_t)(wreq->wi_val[0]) & 0xffU) << 8 | ((__uint16_t)(wreq->wi_val[0]) & 0xff00U) >> 8) : __swap16md(wreq->wi_val[0]));
  param1 = (__uint16_t)(__builtin_constant_p(wreq->wi_val[1]) ? (__uint16_t)(((__uint16_t)(wreq->wi_val[1]) & 0xffU) << 8 | ((__uint16_t)(wreq->wi_val[1]) & 0xff00U) >> 8) : __swap16md(wreq->wi_val[1]));
  sc->wi_debug.wi_ledtest = 1;
  sc->wi_debug.wi_ledtest_param0 = param0;
  sc->wi_debug.wi_ledtest_param1 = param1;
  break;
 case 0x0E:
  param0 = (__uint16_t)(__builtin_constant_p(wreq->wi_val[0]) ? (__uint16_t)(((__uint16_t)(wreq->wi_val[0]) & 0xffU) << 8 | ((__uint16_t)(wreq->wi_val[0]) & 0xff00U) >> 8) : __swap16md(wreq->wi_val[0]));
  sc->wi_debug.wi_conttx = 1;
  sc->wi_debug.wi_conttx_param0 = param0;
  break;
 case 0x0F:
  sc->wi_debug.wi_delaysupp = 0;
  sc->wi_debug.wi_txsupp = 0;
  sc->wi_debug.wi_monitor = 0;
  sc->wi_debug.wi_ledtest = 0;
  sc->wi_debug.wi_ledtest_param0 = 0;
  sc->wi_debug.wi_ledtest_param1 = 0;
  sc->wi_debug.wi_conttx = 0;
  sc->wi_debug.wi_conttx_param0 = 0;
  sc->wi_debug.wi_contrx = 0;
  sc->wi_debug.wi_sigstate = 0;
  sc->wi_debug.wi_sigstate_param0 = 0;
  break;
 case 0x10:
  sc->wi_debug.wi_contrx = 1;
  break;
 case 0x11:
  param0 = (__uint16_t)(__builtin_constant_p(wreq->wi_val[0]) ? (__uint16_t)(((__uint16_t)(wreq->wi_val[0]) & 0xffU) << 8 | ((__uint16_t)(wreq->wi_val[0]) & 0xff00U) >> 8) : __swap16md(wreq->wi_val[0]));
  sc->wi_debug.wi_sigstate = 1;
  sc->wi_debug.wi_sigstate_param0 = param0;
  break;
 case 0x15:
  param0 = (__uint16_t)(__builtin_constant_p(wreq->wi_val[0]) ? (__uint16_t)(((__uint16_t)(wreq->wi_val[0]) & 0xffU) << 8 | ((__uint16_t)(wreq->wi_val[0]) & 0xff00U) >> 8) : __swap16md(wreq->wi_val[0]));
  param1 = (__uint16_t)(__builtin_constant_p(wreq->wi_val[1]) ? (__uint16_t)(((__uint16_t)(wreq->wi_val[1]) & 0xffU) << 8 | ((__uint16_t)(wreq->wi_val[1]) & 0xff00U) >> 8) : __swap16md(wreq->wi_val[1]));
  sc->wi_debug.wi_confbits = param0;
  sc->wi_debug.wi_confbits_param0 = param1;
  break;
 default:
  error = 5;
  break;
 }
 if (error)
  return (error);
 cmd = 0x0038 | (wreq->wi_type << 8);
 error = sc->sc_funcs->f_cmd(sc, cmd, param0, param1, 0);
 return (error);
}
