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
struct pci_known_vendor {
 pci_vendor_id_t vendor;
 const char *vendorname;
};
struct pci_known_product {
 pci_vendor_id_t vendor;
 pci_product_id_t product;
 const char *productname;
};
static const struct pci_known_product pci_known_products[] = {
 {
     0x1217, 0x00f7,
     "Firewire",
 },
 {
     0x1217, 0x6729,
     "OZ6729 CardBus",
 },
 {
     0x1217, 0x673a,
     "OZ6730 CardBus",
 },
 {
     0x1217, 0x6825,
     "OZ6922 CardBus",
 },
 {
     0x1217, 0x6832,
     "OZ6832 CardBus",
 },
 {
     0x1217, 0x6836,
     "OZ6836/OZ6860 CardBus",
 },
 {
     0x1217, 0x6872,
     "OZ68[17]2 CardBus",
 },
 {
     0x1217, 0x6933,
     "OZ6933 CardBus",
 },
 {
     0x1217, 0x6972,
     "OZ69[17]2 CardBus",
 },
 {
     0x1217, 0x7110,
     "OZ711Mx Misc",
 },
 {
     0x1217, 0x7113,
     "OZ711EC1 SmartCardBus",
 },
 {
     0x1217, 0x7114,
     "OZ711M1 CardBus",
 },
 {
     0x1217, 0x7120,
     "OZ711MP1 SDHC",
 },
 {
     0x1217, 0x7130,
     "OZ711MP1 XDHC",
 },
 {
     0x1217, 0x7134,
     "OZ711MP1 CardBus",
 },
 {
     0x1217, 0x7135,
     "OZ711EZ1 CardBus",
 },
 {
     0x1217, 0x7136,
     "OZ711SP1 CardBus",
 },
 {
     0x1217, 0x7223,
     "OZ711E0 CardBus",
 },
 {
     0x10b7, 0x0001,
     "3c985",
 },
 {
     0x10b7, 0x0003,
     "3c996",
 },
 {
     0x10b7, 0x0013,
     "3CRDAG675",
 },
 {
     0xa727, 0x0013,
     "3CRPAG175",
 },
 {
     0x10b7, 0x1007,
     "V.90 Modem",
 },
 {
     0x10b7, 0x1700,
     "3c940",
 },
 {
     0x10b7, 0x3390,
     "3c339",
 },
 {
     0x10b7, 0x3590,
     "3c359",
 },
 {
     0x10b7, 0x4500,
     "3c450",
 },
 {
     0x10b7, 0x5055,
     "3c555 100Base-TX",
 },
 {
     0x10b7, 0x5057,
     "3c575",
 },
 {
     0x10b7, 0x5157,
     "3CCFE575BT",
 },
 {
     0x10b7, 0x5257,
     "3CCFE575CT",
 },
 {
     0x10b7, 0x5900,
     "3c590 10Mbps",
 },
 {
     0x10b7, 0x5950,
     "3c595 100Base-TX",
 },
 {
     0x10b7, 0x5951,
     "3c595 100Base-T4",
 },
 {
     0x10b7, 0x5952,
     "3c595 10Mbps-MII",
 },
 {
     0x10b7, 0x6000,
     "3CRSHPW796 802.11b",
 },
 {
     0x10b7, 0x6001,
     "3CRWE154G72 802.11g",
 },
 {
     0x10b7, 0x6055,
     "3c556 100Base-TX",
 },
 {
     0x10b7, 0x6056,
     "3c556B 100Base-TX",
 },
 {
     0x10b7, 0x6560,
     "3CCFEM656",
 },
 {
     0x10b7, 0x6562,
     "3CCFEM656B",
 },
 {
     0x10b7, 0x6563,
     "56k Modem",
 },
 {
     0x10b7, 0x6564,
     "3CCFEM656C",
 },
 {
     0x10b7, 0x6565,
     "56k Global Modem",
 },
 {
     0x10b7, 0x7646,
     "3cSOHO-TX",
 },
 {
     0x10b7, 0x7770,
     "3crwe777a AirConnect",
 },
 {
     0x10b7, 0x80eb,
     "3c940B",
 },
 {
     0x10b7, 0x9000,
     "3c900 10Base-T",
 },
 {
     0x10b7, 0x9001,
     "3c900 10Mbps-Combo",
 },
 {
     0x10b7, 0x9004,
     "3c900B 10Mbps",
 },
 {
     0x10b7, 0x9005,
     "3c900B 10Mbps-Combo",
 },
 {
     0x10b7, 0x9006,
     "3c900B 10Mbps-TPC",
 },
 {
     0x10b7, 0x900a,
     "3c900B 10Mbps-FL",
 },
 {
     0x10b7, 0x9050,
     "3c905 100Base-TX",
 },
 {
     0x10b7, 0x9051,
     "3c905 100Base-T4",
 },
 {
     0x10b7, 0x9055,
     "3c905B 100Base-TX",
 },
 {
     0x10b7, 0x9056,
     "3c905B 100Base-T4",
 },
 {
     0x10b7, 0x9058,
     "3c905B 10/100Mbps-Combo",
 },
 {
     0x10b7, 0x905a,
     "3c905B 100Base-FX",
 },
 {
     0x10b7, 0x9200,
     "3c905C 100Base-TX",
 },
 {
     0x10b7, 0x9201,
     "3c9201 100Base-TX",
 },
 {
     0x10b7, 0x9202,
     "3c920B-EMB-WNM",
 },
 {
     0x10b7, 0x9300,
     "3cSOHO 100B-TX",
 },
 {
     0x10b7, 0x9800,
     "3c980 100Base-TX",
 },
 {
     0x10b7, 0x9805,
     "3c980C 100Base-TX",
 },
 {
     0x10b7, 0x9900,
     "3cr990",
 },
 {
     0x10b7, 0x9901,
     "3cr990-TX",
 },
 {
     0x10b7, 0x9902,
     "3cr990-TX-95",
 },
 {
     0x10b7, 0x9903,
     "3cr990-TX-97",
 },
 {
     0x10b7, 0x9904,
     "3c990b-TX-M",
 },
 {
     0x10b7, 0x9905,
     "3cr990-FX",
 },
 {
     0x10b7, 0x9908,
     "3cr990SVR95",
 },
 {
     0x10b7, 0x9909,
     "3cr990SVR97",
 },
 {
     0x10b7, 0x990a,
     "3c990BSVR",
 },
 {
     0x121a, 0x0001,
     "Voodoo",
 },
 {
     0x121a, 0x0002,
     "Voodoo2",
 },
 {
     0x121a, 0x0003,
     "Banshee",
 },
 {
     0x121a, 0x0004,
     "Voodoo3",
 },
 {
     0x121a, 0x0005,
     "Voodoo3",
 },
 {
     0x121a, 0x0007,
     "Voodoo4",
 },
 {
     0x121a, 0x0009,
     "Voodoo5",
 },
 {
     0x121a, 0x000b,
     "Voodoo4",
 },
 {
     0x3d3d, 0x0001,
     "GLINT 300SX",
 },
 {
     0x3d3d, 0x0002,
     "GLINT 500TX",
 },
 {
     0x3d3d, 0x0003,
     "GLINT Delta",
 },
 {
     0x3d3d, 0x0004,
     "Permedia",
 },
 {
     0x3d3d, 0x0006,
     "GLINT MX",
 },
 {
     0x3d3d, 0x0007,
     "Permedia 2",
 },
 {
     0x3d3d, 0x0008,
     "GLINT Gamma",
 },
 {
     0x3d3d, 0x0009,
     "Permedia 2v",
 },
 {
     0x3d3d, 0x000a,
     "Permedia 3",
 },
 {
     0x3d3d, 0x07a1,
     "Wildcat III 6210",
 },
 {
     0x3d3d, 0x07a2,
     "Wildcat 5110",
 },
 {
     0x3d3d, 0x07a3,
     "Wildcat IV 7210",
 },
 {
     0x13c1, 0x1000,
     "5000/6000 series RAID",
 },
 {
     0x13c1, 0x1001,
     "7000/8000 series RAID",
 },
 {
     0x13c1, 0x1002,
     "9000 series RAID",
 },
 {
     0x13c1, 0x1003,
     "9500 series RAID",
 },
 {
     0x13d1, 0xab02,
     "FE2500 10/100",
 },
 {
     0x13d1, 0xab03,
     "PCM200 10/100",
 },
 {
     0x13d1, 0xab06,
     "FE2000VX 10/100",
 },
 {
     0x13d1, 0xab08,
     "FE2500MX 10/100",
 },
 {
     0x14b9, 0x0001,
     "PC4800 Wireless",
 },
 {
     0x14b9, 0x0350,
     "PCI35x WLAN",
 },
 {
     0x14b9, 0x4500,
     "PC4500 Wireless",
 },
 {
     0x14b9, 0x4800,
     "PC4800 Wireless",
 },
 {
     0x14b9, 0xa504,
     "MPI-350 Wireless",
 },
 {
     0x10aa, 0x0000,
     "ACCM 2188 VL-PCI",
 },
 {
     0x10aa, 0x2051,
     "2051 PCI",
 },
 {
     0x10aa, 0x5842,
     "2051 ISA",
 },
 {
     0x1191, 0x0005,
     "ATP850U/UF",
 },
 {
     0x1191, 0x0006,
     "ATP860",
 },
 {
     0x1191, 0x0007,
     "ATP860-A",
 },
 {
     0x1191, 0x0008,
     "ATP865-A",
 },
 {
     0x1191, 0x0009,
     "ATP865-R",
 },
 {
     0x1191, 0x8002,
     "AEC6710",
 },
 {
     0x1191, 0x8010,
     "AEC6712UW",
 },
 {
     0x1191, 0x8020,
     "AEC6712U",
 },
 {
     0x1191, 0x8030,
     "AEC6712S",
 },
 {
     0x1191, 0x8040,
     "AEC6710D",
 },
 {
     0x1191, 0x8050,
     "AEC6715UW",
 },
 {
     0x1113, 0x1211,
     "MPX 5030/5038",
 },
 {
     0x1113, 0x1216,
     "EN2242",
 },
 {
     0x1113, 0x1217,
     "EN1217",
 },
 {
     0x4033, 0x1320,
     "RhineII",
 },
 {
     0x4033, 0x1360,
     "rtl8139",
 },
 {
     0x4033, 0x7001,
     "AWA-100",
 },
 {
     0x1025, 0x1435,
     "M1435 VL-PCI",
 },
 {
     0x10b9, 0x1445,
     "M1445 VL-PCI",
 },
 {
     0x10b9, 0x1449,
     "M1449 ISA",
 },
 {
     0x10b9, 0x1451,
     "M1451 PCI",
 },
 {
     0x10b9, 0x1461,
     "M1461 PCI",
 },
 {
     0x10b9, 0x1489,
     "M1489 PCI",
 },
 {
     0x10b9, 0x1511,
     "M1511 PCI",
 },
 {
     0x10b9, 0x1513,
     "M1513 ISA",
 },
 {
     0x10b9, 0x1521,
     "M1523 PCI",
 },
 {
     0x10b9, 0x1523,
     "M1523 ISA",
 },
 {
     0x10b9, 0x1531,
     "M1531 PCI",
 },
 {
     0x10b9, 0x1533,
     "M1533 ISA",
 },
 {
     0x10b9, 0x1535,
     "M1535 PCI",
 },
 {
     0x10b9, 0x1541,
     "M1541 PCI",
 },
 {
     0x10b9, 0x1543,
     "M1543 ISA",
 },
 {
     0x10b9, 0x1563,
     "M1563 ISA",
 },
 {
     0x10b9, 0x1573,
     "M1573 ISA",
 },
 {
     0x10b9, 0x1575,
     "M1575 ISA",
 },
 {
     0x10b9, 0x1621,
     "M1621 PCI",
 },
 {
     0x10b9, 0x1631,
     "M1631 PCI",
 },
 {
     0x10b9, 0x1644,
     "M1644 PCI",
 },
 {
     0x10b9, 0x1647,
     "M1647 PCI",
 },
 {
     0x10b9, 0x1689,
     "M1689 PCI",
 },
 {
     0x10b9, 0x1695,
     "M1695 PCI",
 },
 {
     0x10b9, 0x3309,
     "M3309 MPEG",
 },
 {
     0x10b9, 0x5215,
     "M4803",
 },
 {
     0x10b9, 0x5219,
     "M5219 UDMA IDE",
 },
 {
     0x10b9, 0x5229,
     "M5229 UDMA IDE",
 },
 {
     0x10b9, 0x5237,
     "M5237 USB",
 },
 {
     0x10b9, 0x5239,
     "M5239 USB2",
 },
 {
     0x10b9, 0x5243,
     "M5243 AGP/PCI-PCI",
 },
 {
     0x10b9, 0x5246,
     "M5246 AGP",
 },
 {
     0x10b9, 0x5247,
     "M5247 AGP/PCI-PC",
 },
 {
     0x10b9, 0x5249,
     "M5249",
 },
 {
     0x10b9, 0x524b,
     "M524B PCIE",
 },
 {
     0x10b9, 0x524c,
     "M524C PCIE",
 },
 {
     0x10b9, 0x524d,
     "M524D PCIE",
 },
 {
     0x10b9, 0x5261,
     "M5261 LAN",
 },
 {
     0x10b9, 0x5263,
     "M5263 LAN",
 },
 {
     0x10b9, 0x5281,
     "M5281 SATA",
 },
 {
     0x10b9, 0x5287,
     "M5287 SATA",
 },
 {
     0x10b9, 0x5288,
     "M5288 SATA",
 },
 {
     0x10b9, 0x5289,
     "M5289 SATA",
 },
 {
     0x10b9, 0x5451,
     "M5451 Audio",
 },
 {
     0x10b9, 0x5455,
     "M5455 Audio",
 },
 {
     0x10b9, 0x5457,
     "M5457 Modem",
 },
 {
     0x10b9, 0x5461,
     "M5461 HD Audio",
 },
 {
     0x10b9, 0x7101,
     "M7101 Power",
 },
 {
     0x1317, 0x0981,
     "AL981",
 },
 {
     0x1317, 0x0985,
     "AN983",
 },
 {
     0x1317, 0x1985,
     "AN985",
 },
 {
     0x1317, 0x8201,
     "ADM8211 WLAN",
 },
 {
     0x1317, 0x9511,
     "ADM9511",
 },
 {
     0x1317, 0x9513,
     "ADM9513",
 },
 {
     0x9004, 0x1078,
     "AIC-7810",
 },
 {
     0x9004, 0x2178,
     "AHA-2940AU/CN",
 },
 {
     0x9004, 0x3860,
     "AHA-2930CU",
 },
 {
     0x9004, 0x5078,
     "AIC-7850",
 },
 {
     0x9004, 0x5578,
     "AIC-7855",
 },
 {
     0x9004, 0x5900,
     "AIC-5900 ATM",
 },
 {
     0x9004, 0x5905,
     "AIC-5905 ATM",
 },
 {
     0x9004, 0x6075,
     "APA-1480",
 },
 {
     0x9004, 0x6078,
     "AIC-7860",
 },
 {
     0x9004, 0x6178,
     "AHA-2940AU",
 },
 {
     0x9004, 0x7078,
     "AIC-7870",
 },
 {
     0x9004, 0x7178,
     "AHA-2940",
 },
 {
     0x9004, 0x7278,
     "AHA-3940",
 },
 {
     0x9004, 0x7378,
     "AHA-3985",
 },
 {
     0x9004, 0x7478,
     "AHA-2944",
 },
 {
     0x9004, 0x7815,
     "AIC-7815",
 },
 {
     0x9004, 0x8078,
     "AIC-7880",
 },
 {
     0x9004, 0x8178,
     "AHA-2940U",
 },
 {
     0x9004, 0x8278,
     "AHA-3940U",
 },
 {
     0x9004, 0x8378,
     "AHA-398XU",
 },
 {
     0x9004, 0x8478,
     "AHA-2944U",
 },
 {
     0x9004, 0x8778,
     "AHA-2940UWPro",
 },
 {
     0x9004, 0x6915,
     "AIC-6915",
 },
 {
     0x9004, 0x7895,
     "AIC-7895",
 },
 {
     0x9005, 0x0010,
     "AHA-2940U2 U2",
 },
 {
     0x9005, 0x0011,
     "AHA-2930U2 U2",
 },
 {
     0x9005, 0x0013,
     "AAA-131U2 U2",
 },
 {
     0x9005, 0x001f,
     "AIC-7890/1 U2",
 },
 {
     0x9005, 0x008f,
     "AIC-7892 U160",
 },
 {
     0x9005, 0x0080,
     "AHA-29160 U160",
 },
 {
     0x9005, 0x0081,
     "AHA-19160B U160",
 },
 {
     0x9005, 0x0082,
     "AVA-2930LP",
 },
 {
     0x9005, 0x0050,
     "AHA-3950U2B U2",
 },
 {
     0x9005, 0x0051,
     "AHA-3950U2D U2",
 },
 {
     0x9005, 0x005f,
     "AIC-7896/7 U2",
 },
 {
     0x9005, 0x00c0,
     "AHA-3960D U160",
 },
 {
     0x9005, 0x00c1,
     "AIC-7899B",
 },
 {
     0x9005, 0x00c3,
     "AIC-7899D",
 },
 {
     0x9005, 0x00c5,
     "AIC-7899F",
 },
 {
     0x9005, 0x00cf,
     "AIC-7899 U160",
 },
 {
     0x9005, 0x0250,
     "ServeRAID",
 },
 {
     0x9005, 0x0282,
     "AAC-2622",
 },
 {
     0x9005, 0x0285,
     "ASR-2200S",
 },
 {
     0x9005, 0x0286,
     "ASR-2120S",
 },
 {
     0x9005, 0x0364,
     "AAC-364",
 },
 {
     0x9005, 0x0365,
     "AAC-3642",
 },
 {
     0x9005, 0x1364,
     "Dell PERC 2/QC",
 },
 {
     0x9005, 0x800f,
     "AIC-7901 U320",
 },
 {
     0x9005, 0x8000,
     "AHA-29320A U320",
 },
 {
     0x9005, 0x8017,
     "AHA-29320LP U320",
 },
 {
     0x9005, 0x801e,
     "AIC-7901A U320",
 },
 {
     0x9005, 0x8012,
     "AHA-29320 U320",
 },
 {
     0x9005, 0x8013,
     "AHA-29320B U320",
 },
 {
     0x9005, 0x8014,
     "AHA-29320LP U320",
 },
 {
     0x9005, 0x801f,
     "AIC-7902 U320",
 },
 {
     0x9005, 0x801d,
     "AIC-7902B U320",
 },
 {
     0x9005, 0x8010,
     "AHA-39320 U320",
 },
 {
     0x9005, 0x8015,
     "AHA-39320B U320",
 },
 {
     0x9005, 0x8016,
     "AHA-39320A U320",
 },
 {
     0x9005, 0x8011,
     "AHA-39320D U320",
 },
 {
     0x9005, 0x801c,
     "AHA-39320DB U320",
 },
 {
     0x10cd, 0x1100,
     "1200A",
 },
 {
     0x10cd, 0x1200,
     "1200B",
 },
 {
     0x10cd, 0x1300,
     "ABP-930/40UA",
 },
 {
     0x10cd, 0x2300,
     "ABP-940UW",
 },
 {
     0x10cd, 0x2500,
     "ASP-3940U2W",
 },
 {
     0x10cd, 0x2700,
     "ASP-3940U3W",
 },
 {
     0x121b, 0x3200,
     "Waikato Dag3.2",
 },
 {
     0x121b, 0x3500,
     "Endace Dag3.5",
 },
 {
     0x121b, 0x422e,
     "Endace Dag4.22GE",
 },
 {
     0x121b, 0x4230,
     "Endace Dag4.23",
 },
 {
     0x1971, 0x1011,
     "PhysX",
 },
 {
     0x1142, 0x6422,
     "AT22",
 },
 {
     0x1142, 0x6424,
     "AT24",
 },
 {
     0x12ae, 0x0001,
     "Acenic",
 },
 {
     0x12ae, 0x0002,
     "Acenic Copper",
 },
 {
     0x12ae, 0x0003,
     "BCM5700",
 },
 {
     0x12ae, 0x0004,
     "BCM5701",
 },
 {
     0x1172, 0x0000,
     "EBus",
 },
 {
     0x173b, 0x03e8,
     "AC1000",
 },
 {
     0x173b, 0x03e9,
     "AC1001",
 },
 {
     0x173b, 0x03ea,
     "AC9100",
 },
 {
     0x173b, 0x03eb,
     "AC1003",
 },
 {
     0x1022, 0x1100,
     "AMD64 0Fh HyperTransport",
 },
 {
     0x1022, 0x1101,
     "AMD64 0Fh Address Map",
 },
 {
     0x1022, 0x1102,
     "AMD64 0Fh DRAM Cfg",
 },
 {
     0x1022, 0x1103,
     "AMD64 0Fh Misc Cfg",
 },
 {
     0x1022, 0x1200,
     "AMD64 10h HyperTransport",
 },
 {
     0x1022, 0x1201,
     "AMD64 10h Address Map",
 },
 {
     0x1022, 0x1202,
     "AMD64 10h DRAM Cfg",
 },
 {
     0x1022, 0x1203,
     "AMD64 10h Misc Cfg",
 },
 {
     0x1022, 0x1204,
     "AMD64 10h Link Cfg",
 },
 {
     0x1022, 0x1300,
     "AMD64 11h HyperTransport",
 },
 {
     0x1022, 0x1301,
     "AMD64 11h Address Map",
 },
 {
     0x1022, 0x1302,
     "AMD64 11h DRAM Cfg",
 },
 {
     0x1022, 0x1303,
     "AMD64 11h Misc Cfg",
 },
 {
     0x1022, 0x1304,
     "AMD64 11h Link Cfg",
 },
 {
     0x1022, 0x1400,
     "AMD64 15/1xh Link Cfg",
 },
 {
     0x1022, 0x1401,
     "AMD64 15/1xh Address Map",
 },
 {
     0x1022, 0x1402,
     "AMD64 15/1xh DRAM Cfg",
 },
 {
     0x1022, 0x1403,
     "AMD64 15/1xh Misc Cfg",
 },
 {
     0x1022, 0x1404,
     "AMD64 15/1xh CPU Power",
 },
 {
     0x1022, 0x1405,
     "AMD64 15/1xh NB Power",
 },
 {
     0x1022, 0x1410,
     "AMD64 15/1xh Host",
 },
 {
     0x1022, 0x1412,
     "AMD64 15/1xh PCIE",
 },
 {
     0x1022, 0x1413,
     "AMD64 15/1xh PCIE",
 },
 {
     0x1022, 0x1414,
     "AMD64 15/1xh PCIE",
 },
 {
     0x1022, 0x1415,
     "AMD64 15/1xh PCIE",
 },
 {
     0x1022, 0x1416,
     "AMD64 15/1xh PCIE",
 },
 {
     0x1022, 0x1417,
     "AMD64 15/1xh PCIE",
 },
 {
     0x1022, 0x1418,
     "AMD64 15/1xh PCIE",
 },
 {
     0x1022, 0x1419,
     "AMD64 15/1xh IOMMU",
 },
 {
     0x1022, 0x1439,
     "AMD64 16h PCIE",
 },
 {
     0x1022, 0x1510,
     "AMD64 14h Host",
 },
 {
     0x1022, 0x1512,
     "AMD64 14h PCIE",
 },
 {
     0x1022, 0x1513,
     "AMD64 14h PCIE",
 },
 {
     0x1022, 0x1514,
     "AMD64 14h PCIE",
 },
 {
     0x1022, 0x1515,
     "AMD64 14h PCIE",
 },
 {
     0x1022, 0x1516,
     "AMD64 14h PCIE",
 },
 {
     0x1022, 0x1530,
     "AMD64 16h Link Cfg",
 },
 {
     0x1022, 0x1531,
     "AMD64 16h Address Map",
 },
 {
     0x1022, 0x1532,
     "AMD64 16h DRAM Cfg",
 },
 {
     0x1022, 0x1533,
     "AMD64 16h Misc Cfg",
 },
 {
     0x1022, 0x1534,
     "AMD64 16h CPU Power",
 },
 {
     0x1022, 0x1536,
     "AMD64 16h Host",
 },
 {
     0x1022, 0x1537,
     "CCP",
 },
 {
     0x1022, 0x1566,
     "AMD64 16h Root Complex",
 },
 {
     0x1022, 0x156b,
     "AMD64 16h Host",
 },
 {
     0x1022, 0x1580,
     "AMD64 16h Link Cfg",
 },
 {
     0x1022, 0x1581,
     "AMD64 16h Address Map",
 },
 {
     0x1022, 0x1582,
     "AMD64 16h DRAM Cfg",
 },
 {
     0x1022, 0x1583,
     "AMD64 16h Misc Cfg",
 },
 {
     0x1022, 0x1584,
     "AMD64 16h CPU Power",
 },
 {
     0x1022, 0x1585,
     "AMD64 16h Misc Cfg",
 },
 {
     0x1022, 0x1600,
     "AMD64 15/0xh Link Cfg",
 },
 {
     0x1022, 0x1601,
     "AMD64 15/0xh Address Map",
 },
 {
     0x1022, 0x1602,
     "AMD64 15/0xh DRAM Cfg",
 },
 {
     0x1022, 0x1603,
     "AMD64 15/0xh Misc Cfg",
 },
 {
     0x1022, 0x1604,
     "AMD64 15/0xh CPU Power",
 },
 {
     0x1022, 0x1605,
     "AMD64 15/0xh Host",
 },
 {
     0x1022, 0x1700,
     "AMD64 14h Link Cfg",
 },
 {
     0x1022, 0x1701,
     "AMD64 14h Address Map",
 },
 {
     0x1022, 0x1702,
     "AMD64 14h DRAM Cfg",
 },
 {
     0x1022, 0x1703,
     "AMD64 14h Misc Cfg",
 },
 {
     0x1022, 0x1704,
     "AMD64 14h CPU Power",
 },
 {
     0x1022, 0x1705,
     "AMD64 12h Host",
 },
 {
     0x1022, 0x1707,
     "AMD64 12h PCIE",
 },
 {
     0x1022, 0x1708,
     "AMD64 12h PCIE",
 },
 {
     0x1022, 0x1709,
     "AMD64 12h PCIE",
 },
 {
     0x1022, 0x170a,
     "AMD64 12h PCIE",
 },
 {
     0x1022, 0x170b,
     "AMD64 12h PCIE",
 },
 {
     0x1022, 0x170c,
     "AMD64 12h PCIE",
 },
 {
     0x1022, 0x170d,
     "AMD64 12h PCIE",
 },
 {
     0x1022, 0x1716,
     "AMD64 14h NB Power",
 },
 {
     0x1022, 0x1718,
     "AMD64 14h Reserved",
 },
 {
     0x1022, 0x1719,
     "AMD64 14h Reserved",
 },
 {
     0x1022, 0x1a00,
     "A1100 Host",
 },
 {
     0x1022, 0x1a01,
     "A1100 Host",
 },
 {
     0x1022, 0x1a02,
     "A1100 PCIE",
 },
 {
     0x1022, 0x2000,
     "79c970 PCnet-PCI",
 },
 {
     0x1022, 0x2001,
     "79c978 PChome-PCI",
 },
 {
     0x1022, 0x2020,
     "53c974 PCscsi-PCI",
 },
 {
     0x1022, 0x2040,
     "79C974 PCnet-PCI",
 },
 {
     0x1022, 0x2080,
     "Geode LX",
 },
 {
     0x1022, 0x2081,
     "Geode LX Video",
 },
 {
     0x1022, 0x2082,
     "Geode LX Crypto",
 },
 {
     0x1022, 0x208f,
     "CS5536 PCI",
 },
 {
     0x1022, 0x2090,
     "CS5536 ISA",
 },
 {
     0x1022, 0x2093,
     "CS5536 Audio",
 },
 {
     0x1022, 0x2094,
     "CS5536 USB",
 },
 {
     0x1022, 0x2095,
     "CS5536 USB",
 },
 {
     0x1022, 0x209a,
     "CS5536 IDE",
 },
 {
     0x1022, 0x3000,
     "ElanSC520 PCI",
 },
 {
     0x1022, 0x43a0,
     "Hudson-2 PCIE",
 },
 {
     0x1022, 0x43a1,
     "Hudson-2 PCIE",
 },
 {
     0x1022, 0x43a2,
     "Hudson-2 PCIE",
 },
 {
     0x1022, 0x43a3,
     "Hudson-2 PCIE",
 },
 {
     0x1022, 0x7006,
     "751 System",
 },
 {
     0x1022, 0x7007,
     "751",
 },
 {
     0x1022, 0x700c,
     "762 PCI",
 },
 {
     0x1022, 0x700d,
     "762",
 },
 {
     0x1022, 0x700e,
     "761 PCI",
 },
 {
     0x1022, 0x700f,
     "761",
 },
 {
     0x1022, 0x7400,
     "755 ISA",
 },
 {
     0x1022, 0x7401,
     "755 IDE",
 },
 {
     0x1022, 0x7403,
     "755 Power",
 },
 {
     0x1022, 0x7404,
     "755 USB",
 },
 {
     0x1022, 0x7408,
     "756 ISA",
 },
 {
     0x1022, 0x7409,
     "756 IDE",
 },
 {
     0x1022, 0x740b,
     "756 Power",
 },
 {
     0x1022, 0x740c,
     "756 USB Host",
 },
 {
     0x1022, 0x7410,
     "766 ISA",
 },
 {
     0x1022, 0x7411,
     "766 IDE",
 },
 {
     0x1022, 0x7412,
     "766 USB",
 },
 {
     0x1022, 0x7413,
     "766 Power",
 },
 {
     0x1022, 0x7414,
     "766 USB OpenHCI",
 },
 {
     0x1022, 0x7440,
     "768 ISA",
 },
 {
     0x1022, 0x7441,
     "768 IDE",
 },
 {
     0x1022, 0x7443,
     "768 Power",
 },
 {
     0x1022, 0x7445,
     "768 AC97",
 },
 {
     0x1022, 0x7446,
     "768 Modem",
 },
 {
     0x1022, 0x7448,
     "768",
 },
 {
     0x1022, 0x7449,
     "768 USB",
 },
 {
     0x1022, 0x7450,
     "8131 PCIX",
 },
 {
     0x1022, 0x7451,
     "8131 PCIX IOAPIC",
 },
 {
     0x1022, 0x7454,
     "8151 Sys Control",
 },
 {
     0x1022, 0x7455,
     "8151 AGP",
 },
 {
     0x1022, 0x7458,
     "8132 PCIX",
 },
 {
     0x1022, 0x7459,
     "8132 PCIX IOAPIC",
 },
 {
     0x1022, 0x7460,
     "8111",
 },
 {
     0x1022, 0x7462,
     "8111 Ether",
 },
 {
     0x1022, 0x7463,
     "8111 USB",
 },
 {
     0x1022, 0x7464,
     "8111 USB",
 },
 {
     0x1022, 0x7468,
     "8111 LPC",
 },
 {
     0x1022, 0x7469,
     "8111 IDE",
 },
 {
     0x1022, 0x746a,
     "8111 SMBus",
 },
 {
     0x1022, 0x746b,
     "8111 Power",
 },
 {
     0x1022, 0x746d,
     "8111 AC97",
 },
 {
     0x1022, 0x7800,
     "Hudson-2 SATA",
 },
 {
     0x1022, 0x7801,
     "Hudson-2 SATA",
 },
 {
     0x1022, 0x7802,
     "Hudson-2 SATA",
 },
 {
     0x1022, 0x7803,
     "Hudson-2 SATA",
 },
 {
     0x1022, 0x7804,
     "Hudson-2 SATA",
 },
 {
     0x1022, 0x7805,
     "Hudson-2 SATA",
 },
 {
     0x1022, 0x7806,
     "Hudson-2 SD Host Controller",
 },
 {
     0x1022, 0x7807,
     "Hudson-2 USB",
 },
 {
     0x1022, 0x7808,
     "Hudson-2 USB2",
 },
 {
     0x1022, 0x7809,
     "Hudson-2 USB",
 },
 {
     0x1022, 0x780b,
     "Hudson-2 SMBus",
 },
 {
     0x1022, 0x780c,
     "Hudson-2 IDE",
 },
 {
     0x1022, 0x780d,
     "Hudson-2 HD Audio",
 },
 {
     0x1022, 0x780e,
     "Hudson-2 LPC",
 },
 {
     0x1022, 0x780f,
     "Hudson-2 PCI",
 },
 {
     0x1022, 0x7812,
     "Hudson-2 xHCI",
 },
 {
     0x1022, 0x7813,
     "Bolton SD/MMC",
 },
 {
     0x1022, 0x7814,
     "Bolton xHCI",
 },
 {
     0x1022, 0x9600,
     "RS780 Host",
 },
 {
     0x1022, 0x9601,
     "RS880 Host",
 },
 {
     0x1022, 0x9602,
     "RS780 PCIE",
 },
 {
     0x1022, 0x9603,
     "RS780 PCIE",
 },
 {
     0x1022, 0x9604,
     "RS780 PCIE",
 },
 {
     0x1022, 0x9605,
     "RS780 PCIE",
 },
 {
     0x1022, 0x9606,
     "RS780 PCIE",
 },
 {
     0x1022, 0x9607,
     "RS780 PCIE",
 },
 {
     0x1022, 0x9608,
     "RS780 PCIE",
 },
 {
     0x1022, 0x9609,
     "RS780 PCIE",
 },
 {
     0x1022, 0x960b,
     "RS780 PCIE",
 },
 {
     0x101e, 0x1960,
     "MegaRAID",
 },
 {
     0x101e, 0x9010,
     "MegaRAID Series 428",
 },
 {
     0x101e, 0x9060,
     "MegaRAID Series 434",
 },
 {
     0x11d4, 0x1535,
     "ADSP 21535 DSP",
 },
 {
     0x11d4, 0x1889,
     "AD1889 Audio",
 },
 {
     0x11d4, 0x2f44,
     "SafeNet ADSP 2141",
 },
 {
     0x1754, 0x1021,
     "TC9021",
 },
 {
     0x106b, 0x0001,
     "Bandit",
 },
 {
     0x106b, 0x0002,
     "GC",
 },
 {
     0x106b, 0x0007,
     "OHare",
 },
 {
     0x106b, 0x0010,
     "Heathrow",
 },
 {
     0x106b, 0x0017,
     "Paddington",
 },
 {
     0x106b, 0x001e,
     "Uni-N Eth",
 },
 {
     0x106b, 0x001f,
     "Uni-N",
 },
 {
     0x106b, 0x0018,
     "Uni-N Eth Firewire",
 },
 {
     0x106b, 0x0019,
     "USB",
 },
 {
     0x106b, 0x0020,
     "Uni-N AGP",
 },
 {
     0x106b, 0x0021,
     "Uni-N GMAC",
 },
 {
     0x106b, 0x0022,
     "Keylargo",
 },
 {
     0x106b, 0x0024,
     "Pangea GMAC",
 },
 {
     0x106b, 0x0025,
     "Pangea Macio",
 },
 {
     0x106b, 0x0026,
     "Pangea USB",
 },
 {
     0x106b, 0x0027,
     "Pangea AGP",
 },
 {
     0x106b, 0x0028,
     "Pangea",
 },
 {
     0x106b, 0x0029,
     "Pangea PCI",
 },
 {
     0x106b, 0x002d,
     "Uni-N2 AGP",
 },
 {
     0x106b, 0x002e,
     "Uni-N2 Host",
 },
 {
     0x106b, 0x002f,
     "Uni-N2 Host",
 },
 {
     0x106b, 0x0030,
     "Pangea FireWire",
 },
 {
     0x106b, 0x0031,
     "UniNorth Firewire",
 },
 {
     0x106b, 0x0032,
     "Uni-N2 GMAC",
 },
 {
     0x106b, 0x0033,
     "Uni-N ATA",
 },
 {
     0x106b, 0x0034,
     "UniNorth AGP",
 },
 {
     0x106b, 0x0035,
     "UniNorth PCI",
 },
 {
     0x106b, 0x0036,
     "UniNorth PCI",
 },
 {
     0x106b, 0x003b,
     "Intrepid ATA",
 },
 {
     0x106b, 0x003e,
     "Intrepid",
 },
 {
     0x106b, 0x003f,
     "Intrepid USB",
 },
 {
     0x106b, 0x0040,
     "K2 USB",
 },
 {
     0x106b, 0x0041,
     "K2 Macio",
 },
 {
     0x106b, 0x0042,
     "K2 Firewire",
 },
 {
     0x106b, 0x0043,
     "K2 ATA",
 },
 {
     0x106b, 0x0045,
     "U3",
 },
 {
     0x106b, 0x0046,
     "U3",
 },
 {
     0x106b, 0x0047,
     "U3",
 },
 {
     0x106b, 0x0048,
     "U3",
 },
 {
     0x106b, 0x0049,
     "U3",
 },
 {
     0x106b, 0x004a,
     "U3 HyperTransport",
 },
 {
     0x106b, 0x004b,
     "U3 AGP",
 },
 {
     0x106b, 0x004c,
     "K2 GMAC",
 },
 {
     0x106b, 0x004f,
     "Shasta",
 },
 {
     0x106b, 0x0050,
     "Shasta ATA",
 },
 {
     0x106b, 0x0051,
     "Shasta GMAC",
 },
 {
     0x106b, 0x0052,
     "Shasta Firewire",
 },
 {
     0x106b, 0x0053,
     "Shasta PCI",
 },
 {
     0x106b, 0x0054,
     "Shasta PCI",
 },
 {
     0x106b, 0x0055,
     "Shasta PCI",
 },
 {
     0x106b, 0x0056,
     "Shasta HyperTransport",
 },
 {
     0x106b, 0x0057,
     "K2",
 },
 {
     0x106b, 0x0058,
     "U3L AGP",
 },
 {
     0x106b, 0x0059,
     "K2 AGP",
 },
 {
     0x106b, 0x0066,
     "Intrepid 2 AGP",
 },
 {
     0x106b, 0x0067,
     "Intrepid 2 PCI",
 },
 {
     0x106b, 0x0068,
     "Intrepid 2 PCI",
 },
 {
     0x106b, 0x0069,
     "Intrepid 2 ATA",
 },
 {
     0x106b, 0x006a,
     "Intrepid 2 FireWire",
 },
 {
     0x106b, 0x006b,
     "Intrepid 2 GMAC",
 },
 {
     0x106b, 0x1645,
     "BCM5701",
 },
 {
     0x106b, 0x2001,
     "NVMe",
 },
 {
     0x106b, 0x2003,
     "NVMe",
 },
 {
     0x1538, 0x0301,
     "ARS106S",
 },
 {
     0x1538, 0x0303,
     "ARS0303D",
 },
 {
     0xedd8, 0x0003,
     "USB",
 },
 {
     0xedd8, 0xa091,
     "1000PV",
 },
 {
     0xedd8, 0xa099,
     "2000PV",
 },
 {
     0xedd8, 0xa0a1,
     "2000MT",
 },
 {
     0xedd8, 0xa0a9,
     "2000MI",
 },
 {
     0x17d3, 0x1110,
     "ARC-1110",
 },
 {
     0x17d3, 0x1120,
     "ARC-1120",
 },
 {
     0x17d3, 0x1130,
     "ARC-1130",
 },
 {
     0x17d3, 0x1160,
     "ARC-1160",
 },
 {
     0x17d3, 0x1170,
     "ARC-1170",
 },
 {
     0x17d3, 0x1200,
     "ARC-1200",
 },
 {
     0x17d3, 0x1201,
     "ARC-1200B",
 },
 {
     0x17d3, 0x1202,
     "ARC-1202",
 },
 {
     0x17d3, 0x1210,
     "ARC-1210",
 },
 {
     0x17d3, 0x1214,
     "ARC-1214",
 },
 {
     0x17d3, 0x1220,
     "ARC-1220",
 },
 {
     0x17d3, 0x1230,
     "ARC-1230",
 },
 {
     0x17d3, 0x1260,
     "ARC-1260",
 },
 {
     0x17d3, 0x1270,
     "ARC-1270",
 },
 {
     0x17d3, 0x1280,
     "ARC-1280",
 },
 {
     0x17d3, 0x1380,
     "ARC-1380",
 },
 {
     0x17d3, 0x1381,
     "ARC-1381",
 },
 {
     0x17d3, 0x1680,
     "ARC-1680",
 },
 {
     0x17d3, 0x1681,
     "ARC-1681",
 },
 {
     0x17d3, 0x1880,
     "ARC-1880",
 },
 {
     0x125b, 0x1400,
     "AX88140A/88141",
 },
 {
     0x125b, 0x9100,
     "AX99100",
 },
 {
     0x1b21, 0x0611,
     "ASM1061 SATA",
 },
 {
     0x1b21, 0x0612,
     "ASM1061 AHCI",
 },
 {
     0x1b21, 0x1042,
     "ASM1042 xHCI",
 },
 {
     0x1b21, 0x1080,
     "ASM1083/1085 PCIE-PCI",
 },
 {
     0x1b21, 0x1142,
     "ASM1042A xHCI",
 },
 {
     0x1b21, 0x1242,
     "ASM1042AE xHCI",
 },
 {
     0x1b21, 0x1343,
     "ASM1143 xHCI",
 },
 {
     0x1043, 0x0675,
     "ISDN",
 },
 {
     0x1002, 0x1314,
     "Radeon HD 6310 HD Audio",
 },
 {
     0x1002, 0x1714,
     "Radeon HD 6500D HD Audio",
 },
 {
     0x1002, 0x3150,
     "Mobility Radeon X600",
 },
 {
     0x1002, 0x3151,
     "FireMV 2400",
 },
 {
     0x1002, 0x3152,
     "Mobility Radeon X300",
 },
 {
     0x1002, 0x3154,
     "FireGL M24 GL",
 },
 {
     0x1002, 0x3155,
     "FireMV 2400",
 },
 {
     0x1002, 0x3e50,
     "Radeon X600",
 },
 {
     0x1002, 0x3e54,
     "FireGL V3200",
 },
 {
     0x1002, 0x3e70,
     "Radeon X600 Sec",
 },
 {
     0x1002, 0x4136,
     "Radeon IGP 320",
 },
 {
     0x1002, 0x4137,
     "Radeon IGP 340",
 },
 {
     0x1002, 0x4144,
     "Radeon 9500 Pro",
 },
 {
     0x1002, 0x4145,
     "Radeon AE 9700 Pro",
 },
 {
     0x1002, 0x4146,
     "Radeon AF 9600TX",
 },
 {
     0x1002, 0x4147,
     "FireGL AGZ1",
 },
 {
     0x1002, 0x4148,
     "Radeon AH 9800 SE",
 },
 {
     0x1002, 0x4149,
     "Radeon AI 9800",
 },
 {
     0x1002, 0x414a,
     "Radeon AJ 9800",
 },
 {
     0x1002, 0x414b,
     "FireGL AK X2",
 },
 {
     0x1002, 0x4150,
     "Radeon 9600 Pro",
 },
 {
     0x1002, 0x4151,
     "Radeon 9600",
 },
 {
     0x1002, 0x4152,
     "Radeon 9600",
 },
 {
     0x1002, 0x4153,
     "Radeon 9550",
 },
 {
     0x1002, 0x4154,
     "FireGL",
 },
 {
     0x1002, 0x4155,
     "Radeon 9650",
 },
 {
     0x1002, 0x4156,
     "FireGL",
 },
 {
     0x1002, 0x4158,
     "Mach32",
 },
 {
     0x1002, 0x4164,
     "Radeon 9500 Pro Sec",
 },
 {
     0x1002, 0x4170,
     "Radeon 9600 Pro Sec",
 },
 {
     0x1002, 0x4171,
     "Radeon 9600 LE Sec",
 },
 {
     0x1002, 0x4172,
     "Radeon 9600 XT Sec",
 },
 {
     0x1002, 0x4173,
     "Radeon 9550 Sec",
 },
 {
     0x1002, 0x4237,
     "Radeon IGP",
 },
 {
     0x1002, 0x4242,
     "Radeon 8500",
 },
 {
     0x1002, 0x4243,
     "Radeon BC R200",
 },
 {
     0x1002, 0x4336,
     "Radeon IGP 320M",
 },
 {
     0x1002, 0x4337,
     "Mobility M6",
 },
 {
     0x1002, 0x4341,
     "SB200 AC97",
 },
 {
     0x1002, 0x4342,
     "SB200 PCI",
 },
 {
     0x1002, 0x4345,
     "SB200 USB2",
 },
 {
     0x1002, 0x4347,
     "SB200 USB",
 },
 {
     0x1002, 0x4348,
     "SB200 USB",
 },
 {
     0x1002, 0x4349,
     "SB200 IDE",
 },
 {
     0x1002, 0x434c,
     "SB200 ISA",
 },
 {
     0x1002, 0x434d,
     "SB200 Modem",
 },
 {
     0x1002, 0x4353,
     "SB200 SMBus",
 },
 {
     0x1002, 0x4354,
     "Mach64 CT",
 },
 {
     0x1002, 0x4358,
     "Mach64 CX",
 },
 {
     0x1002, 0x4361,
     "SB300 AC97",
 },
 {
     0x1002, 0x4362,
     "SB300 PCI",
 },
 {
     0x1002, 0x4363,
     "SB300 SMBus",
 },
 {
     0x1002, 0x4365,
     "SB300 USB2",
 },
 {
     0x1002, 0x4367,
     "SB300 USB",
 },
 {
     0x1002, 0x4368,
     "SB300 USB",
 },
 {
     0x1002, 0x4369,
     "SB300 IDE",
 },
 {
     0x1002, 0x436c,
     "SB300 ISA",
 },
 {
     0x1002, 0x436d,
     "SB300 Modem",
 },
 {
     0x1002, 0x436e,
     "SB300 SATA",
 },
 {
     0x1002, 0x4370,
     "SB400 AC97",
 },
 {
     0x1002, 0x4371,
     "SB400 PCI",
 },
 {
     0x1002, 0x4372,
     "SB400 SMBus",
 },
 {
     0x1002, 0x4373,
     "SB400 USB2",
 },
 {
     0x1002, 0x4374,
     "SB400 USB",
 },
 {
     0x1002, 0x4375,
     "SB400 USB",
 },
 {
     0x1002, 0x4376,
     "SB400 IDE",
 },
 {
     0x1002, 0x4377,
     "SB400 ISA",
 },
 {
     0x1002, 0x4378,
     "SB400 Modem",
 },
 {
     0x1002, 0x4379,
     "SB400 SATA",
 },
 {
     0x1002, 0x437a,
     "SB400 SATA",
 },
 {
     0x1002, 0x437b,
     "SB450 HD Audio",
 },
 {
     0x1002, 0x4380,
     "SB600 SATA",
 },
 {
     0x1002, 0x4382,
     "SB600 AC97",
 },
 {
     0x1002, 0x4383,
     "SBx00 HD Audio",
 },
 {
     0x1002, 0x4384,
     "SB600 PCI",
 },
 {
     0x1002, 0x4385,
     "SBx00 SMBus",
 },
 {
     0x1002, 0x4386,
     "SB600 USB2",
 },
 {
     0x1002, 0x4387,
     "SB600 USB",
 },
 {
     0x1002, 0x4388,
     "SB600 USB",
 },
 {
     0x1002, 0x4389,
     "SB600 USB",
 },
 {
     0x1002, 0x438a,
     "SB600 USB",
 },
 {
     0x1002, 0x438b,
     "SB600 USB",
 },
 {
     0x1002, 0x438c,
     "SB600 IDE",
 },
 {
     0x1002, 0x438d,
     "SB600 ISA",
 },
 {
     0x1002, 0x438e,
     "SB600 Modem",
 },
 {
     0x1002, 0x4390,
     "SBx00 SATA",
 },
 {
     0x1002, 0x4391,
     "SBx00 SATA",
 },
 {
     0x1002, 0x4392,
     "SBx00 SATA",
 },
 {
     0x1002, 0x4393,
     "SBx00 SATA",
 },
 {
     0x1002, 0x4394,
     "SBx00 SATA",
 },
 {
     0x1002, 0x4395,
     "SBx00 SATA",
 },
 {
     0x1002, 0x4396,
     "SB700 USB2",
 },
 {
     0x1002, 0x4397,
     "SB700 USB",
 },
 {
     0x1002, 0x4398,
     "SB700 USB",
 },
 {
     0x1002, 0x4399,
     "SB700 USB",
 },
 {
     0x1002, 0x439a,
     "SB700 USB",
 },
 {
     0x1002, 0x439b,
     "SB700 USB",
 },
 {
     0x1002, 0x439c,
     "SB700 IDE",
 },
 {
     0x1002, 0x439d,
     "SB700 ISA",
 },
 {
     0x1002, 0x43a0,
     "SB800 PCIE",
 },
 {
     0x1002, 0x43a1,
     "SB800 PCIE",
 },
 {
     0x1002, 0x43a2,
     "SB800 PCIE",
 },
 {
     0x1002, 0x43a3,
     "SB800 PCIE",
 },
 {
     0x1002, 0x4437,
     "Radeon Mobility IGP",
 },
 {
     0x1002, 0x4554,
     "Mach64 ET",
 },
 {
     0x1002, 0x4742,
     "Rage Pro",
 },
 {
     0x1002, 0x4744,
     "Mach64",
 },
 {
     0x1002, 0x4749,
     "Mach64",
 },
 {
     0x1002, 0x474c,
     "Mach64",
 },
 {
     0x1002, 0x474d,
     "Mach64",
 },
 {
     0x1002, 0x474e,
     "Mach64",
 },
 {
     0x1002, 0x474f,
     "Mach64",
 },
 {
     0x1002, 0x4750,
     "Mach64",
 },
 {
     0x1002, 0x4751,
     "Mach64",
 },
 {
     0x1002, 0x4752,
     "Rage XL",
 },
 {
     0x1002, 0x4753,
     "Mach64",
 },
 {
     0x1002, 0x4754,
     "Mach64",
 },
 {
     0x1002, 0x4755,
     "Mach64",
 },
 {
     0x1002, 0x4756,
     "Mach64",
 },
 {
     0x1002, 0x4757,
     "Mach64",
 },
 {
     0x1002, 0x4758,
     "Mach64",
 },
 {
     0x1002, 0x4759,
     "Mach64",
 },
 {
     0x1002, 0x475a,
     "Mach64",
 },
 {
     0x1002, 0x4966,
     "Radeon 9000",
 },
 {
     0x1002, 0x4967,
     "Radeon 9000",
 },
 {
     0x1002, 0x496e,
     "Radeon 9000 Sec",
 },
 {
     0x1002, 0x4a48,
     "Radeon X800",
 },
 {
     0x1002, 0x4a49,
     "Radeon X800 Pro",
 },
 {
     0x1002, 0x4a4a,
     "Radeon X800SE",
 },
 {
     0x1002, 0x4a4b,
     "Radeon X800XT",
 },
 {
     0x1002, 0x4a4c,
     "Radeon X800",
 },
 {
     0x1002, 0x4a4d,
     "FireGL X3-256",
 },
 {
     0x1002, 0x4a4e,
     "Radeon Mobility M18",
 },
 {
     0x1002, 0x4a4f,
     "Radeon X800 SE",
 },
 {
     0x1002, 0x4a50,
     "Radeon X800 XT",
 },
 {
     0x1002, 0x4a54,
     "Radeon AIW X800 VE",
 },
 {
     0x1002, 0x4a69,
     "Radeon X800 Pro Sec",
 },
 {
     0x1002, 0x4b48,
     "Radeon X850",
 },
 {
     0x1002, 0x4b49,
     "Radeon X850 XT",
 },
 {
     0x1002, 0x4b4a,
     "Radeon X850 SE",
 },
 {
     0x1002, 0x4b4b,
     "Radeon X850 Pro",
 },
 {
     0x1002, 0x4b4c,
     "Radeon X850 XT PE",
 },
 {
     0x1002, 0x4c42,
     "Mach64",
 },
 {
     0x1002, 0x4c44,
     "Mach64",
 },
 {
     0x1002, 0x4c45,
     "Rage128",
 },
 {
     0x1002, 0x4c46,
     "Mobility M3",
 },
 {
     0x1002, 0x4c47,
     "Mach64",
 },
 {
     0x1002, 0x4c49,
     "Mach64",
 },
 {
     0x1002, 0x4c4d,
     "Mobility 1",
 },
 {
     0x1002, 0x4c4e,
     "Mach64",
 },
 {
     0x1002, 0x4c50,
     "Mach64",
 },
 {
     0x1002, 0x4c51,
     "Mach64",
 },
 {
     0x1002, 0x4c52,
     "Rage P/M",
 },
 {
     0x1002, 0x4c53,
     "Mach64",
 },
 {
     0x1002, 0x4c57,
     "Radeon Mobility M7",
 },
 {
     0x1002, 0x4c58,
     "FireGL Mobility 7800 M7",
 },
 {
     0x1002, 0x4c59,
     "Radeon Mobility M6",
 },
 {
     0x1002, 0x4c5a,
     "Radeon Mobility M6",
 },
 {
     0x1002, 0x4c64,
     "Radeon Mobility M9",
 },
 {
     0x1002, 0x4c66,
     "Radeon Mobility M9",
 },
 {
     0x1002, 0x4c67,
     "Radeon Mobility M9",
 },
 {
     0x1002, 0x4c6e,
     "FireMV 2400 PCI",
 },
 {
     0x1002, 0x4d46,
     "Rage 128 Mobility",
 },
 {
     0x1002, 0x4d4c,
     "Rage 128 Mobility",
 },
 {
     0x1002, 0x4e44,
     "Radeon 9500/9700",
 },
 {
     0x1002, 0x4e45,
     "Radeon 9500 Pro",
 },
 {
     0x1002, 0x4e46,
     "Radeon 9600 TX",
 },
 {
     0x1002, 0x4e47,
     "FireGL X1",
 },
 {
     0x1002, 0x4e48,
     "Radeon 9800 Pro",
 },
 {
     0x1002, 0x4e49,
     "RAdeon 9800",
 },
 {
     0x1002, 0x4e4a,
     "Radeon 9800 XT",
 },
 {
     0x1002, 0x4e4b,
     "FireGL X2",
 },
 {
     0x1002, 0x4e50,
     "Radeon Mobility M10",
 },
 {
     0x1002, 0x4e51,
     "Radeon Mobility M10",
 },
 {
     0x1002, 0x4e52,
     "Radeon Mobility M10",
 },
 {
     0x1002, 0x4e53,
     "Radeon Mobility M10",
 },
 {
     0x1002, 0x4e54,
     "Radeon Mobility M10",
 },
 {
     0x1002, 0x4e56,
     "Radeon Mobility 9550",
 },
 {
     0x1002, 0x4e64,
     "Radeon 9500/9700 Sec",
 },
 {
     0x1002, 0x4e67,
     "FireGL X1 Sec",
 },
 {
     0x1002, 0x4e68,
     "Radeon 9800 Pro Sec",
 },
 {
     0x1002, 0x5041,
     "Rage 128 Pro",
 },
 {
     0x1002, 0x5042,
     "Rage 128 Pro",
 },
 {
     0x1002, 0x5043,
     "Rage 128 Pro",
 },
 {
     0x1002, 0x5044,
     "Rage 128 Pro",
 },
 {
     0x1002, 0x5045,
     "Rage 128 Pro",
 },
 {
     0x1002, 0x5046,
     "Rage Fury",
 },
 {
     0x1002, 0x5047,
     "Rage 128",
 },
 {
     0x1002, 0x5048,
     "Rage 128",
 },
 {
     0x1002, 0x5049,
     "Rage 128",
 },
 {
     0x1002, 0x504a,
     "Rage 128",
 },
 {
     0x1002, 0x504b,
     "Rage 128",
 },
 {
     0x1002, 0x504c,
     "Rage 128",
 },
 {
     0x1002, 0x504d,
     "Rage 128",
 },
 {
     0x1002, 0x504e,
     "Rage 128",
 },
 {
     0x1002, 0x504f,
     "Rage 128",
 },
 {
     0x1002, 0x5050,
     "Rage 128",
 },
 {
     0x1002, 0x5051,
     "Rage 128",
 },
 {
     0x1002, 0x5052,
     "Rage 128",
 },
 {
     0x1002, 0x5053,
     "Rage 128",
 },
 {
     0x1002, 0x5054,
     "Rage 128",
 },
 {
     0x1002, 0x5055,
     "Rage 128",
 },
 {
     0x1002, 0x5056,
     "Rage 128",
 },
 {
     0x1002, 0x5057,
     "Rage 128",
 },
 {
     0x1002, 0x5058,
     "Rage 128 PX",
 },
 {
     0x1002, 0x5144,
     "AIW Radeon",
 },
 {
     0x1002, 0x5145,
     "Radeon",
 },
 {
     0x1002, 0x5146,
     "Radeon",
 },
 {
     0x1002, 0x5147,
     "Radeon",
 },
 {
     0x1002, 0x5148,
     "Radeon",
 },
 {
     0x1002, 0x514c,
     "Radeon 8500",
 },
 {
     0x1002, 0x514d,
     "Radeon 9100",
 },
 {
     0x1002, 0x514e,
     "Radeon 8500",
 },
 {
     0x1002, 0x514f,
     "Radeon 8500",
 },
 {
     0x1002, 0x5157,
     "Radeon 7500",
 },
 {
     0x1002, 0x5158,
     "Radeon 7500",
 },
 {
     0x1002, 0x5159,
     "Radeon VE",
 },
 {
     0x1002, 0x515a,
     "Radeon VE",
 },
 {
     0x1002, 0x515e,
     "ES1000",
 },
 {
     0x1002, 0x516c,
     "Radeon 8500",
 },
 {
     0x1002, 0x5245,
     "Rage 128",
 },
 {
     0x1002, 0x5246,
     "Rage Magnum",
 },
 {
     0x1002, 0x5247,
     "Rage 128",
 },
 {
     0x1002, 0x524b,
     "Rage 128",
 },
 {
     0x1002, 0x524c,
     "Rage 128",
 },
 {
     0x1002, 0x5348,
     "Rage 128",
 },
 {
     0x1002, 0x534b,
     "Rage 128",
 },
 {
     0x1002, 0x534c,
     "Rage 128",
 },
 {
     0x1002, 0x534d,
     "Rage 128",
 },
 {
     0x1002, 0x534e,
     "Rage 128",
 },
 {
     0x1002, 0x5446,
     "Rage 128 Pro",
 },
 {
     0x1002, 0x544c,
     "Rage 128 Pro",
 },
 {
     0x1002, 0x5452,
     "Rage 128 Pro",
 },
 {
     0x1002, 0x5460,
     "Radeon Mobility M300 M22",
 },
 {
     0x1002, 0x5462,
     "Radeon Mobility X600 M24C",
 },
 {
     0x1002, 0x5464,
     "FireGL M44 GL 5464",
 },
 {
     0x1002, 0x5548,
     "Radeon X800",
 },
 {
     0x1002, 0x5549,
     "Radeon X800 Pro",
 },
 {
     0x1002, 0x554a,
     "Radeon X800 XT PE",
 },
 {
     0x1002, 0x554b,
     "Radeon X800 SE",
 },
 {
     0x1002, 0x554c,
     "Radeon X800 XTP",
 },
 {
     0x1002, 0x554d,
     "Radeon X800 XL",
 },
 {
     0x1002, 0x554e,
     "Radeon X800 SE",
 },
 {
     0x1002, 0x554f,
     "Radeon X800",
 },
 {
     0x1002, 0x5550,
     "FireGL V7100",
 },
 {
     0x1002, 0x5551,
     "FireGL V5100",
 },
 {
     0x1002, 0x5552,
     "FireGL",
 },
 {
     0x1002, 0x5553,
     "FireGL",
 },
 {
     0x1002, 0x5554,
     "FireGL",
 },
 {
     0x1002, 0x556d,
     "Radeon X800 Sec",
 },
 {
     0x1002, 0x564a,
     "Mobility FireGL V5000 M26",
 },
 {
     0x1002, 0x564b,
     "Mobility FireGL V5000 M26",
 },
 {
     0x1002, 0x564f,
     "Radeon Mobility X700 XL M26",
 },
 {
     0x1002, 0x5652,
     "Radeon Mobility X700 M26",
 },
 {
     0x1002, 0x5653,
     "Radeon Mobility X700 M26",
 },
 {
     0x1002, 0x5654,
     "Mach64",
 },
 {
     0x1002, 0x5655,
     "Mach64",
 },
 {
     0x1002, 0x5656,
     "Mach64",
 },
 {
     0x1002, 0x5657,
     "Radeon X550XTX",
 },
 {
     0x1002, 0x5677,
     "Radeon X550XTX Sec",
 },
 {
     0x1002, 0x5830,
     "RS300_100 Host",
 },
 {
     0x1002, 0x5831,
     "RS300_133 Host",
 },
 {
     0x1002, 0x5832,
     "RS300_166 Host",
 },
 {
     0x1002, 0x5833,
     "Radeon IGP 9100 Host",
 },
 {
     0x1002, 0x5834,
     "Radeon IGP 9100",
 },
 {
     0x1002, 0x5835,
     "Radeon Mobility IGP 9100",
 },
 {
     0x1002, 0x5838,
     "Radeon IGP 9100 AGP",
 },
 {
     0x1002, 0x5940,
     "Radeon 9200 PRO Sec",
 },
 {
     0x1002, 0x5941,
     "Radeon 9200 Sec",
 },
 {
     0x1002, 0x5950,
     "RS480 Host",
 },
 {
     0x1002, 0x5951,
     "RX480 Host",
 },
 {
     0x1002, 0x5952,
     "RD580 Host",
 },
 {
     0x1002, 0x5954,
     "Radeon XPRESS 200",
 },
 {
     0x1002, 0x5955,
     "Radeon XPRESS 200M",
 },
 {
     0x1002, 0x5957,
     "RX780 Host",
 },
 {
     0x1002, 0x5958,
     "RD780 HT-PCIE",
 },
 {
     0x1002, 0x5960,
     "Radeon 9200 PRO",
 },
 {
     0x1002, 0x5961,
     "Radeon 9200",
 },
 {
     0x1002, 0x5962,
     "Radeon 9200",
 },
 {
     0x1002, 0x5964,
     "Radeon 9200 SE Sec",
 },
 {
     0x1002, 0x5965,
     "FireMV 2200",
 },
 {
     0x1002, 0x5969,
     "ES1000",
 },
 {
     0x1002, 0x5974,
     "Radeon XPRESS 200",
 },
 {
     0x1002, 0x5975,
     "Radeon XPRESS 200M",
 },
 {
     0x1002, 0x5978,
     "RD790 PCIE",
 },
 {
     0x1002, 0x597a,
     "RD790 PCIE",
 },
 {
     0x1002, 0x597b,
     "RD790 PCIE",
 },
 {
     0x1002, 0x597c,
     "RD790 PCIE",
 },
 {
     0x1002, 0x597d,
     "RD790 PCIE",
 },
 {
     0x1002, 0x597e,
     "RD790 PCIE",
 },
 {
     0x1002, 0x597f,
     "RD790 PCIE",
 },
 {
     0x1002, 0x5a10,
     "SR5690 Host",
 },
 {
     0x1002, 0x5a11,
     "RD890 Host",
 },
 {
     0x1002, 0x5a12,
     "SR5670 Host",
 },
 {
     0x1002, 0x5a13,
     "SR5650 Host",
 },
 {
     0x1002, 0x5a16,
     "SR5690 PCIE",
 },
 {
     0x1002, 0x5a17,
     "SR5690 PCIE",
 },
 {
     0x1002, 0x5a18,
     "SR5690 PCIE",
 },
 {
     0x1002, 0x5a19,
     "SR5690 PCIE",
 },
 {
     0x1002, 0x5a1a,
     "SR5690 PCIE",
 },
 {
     0x1002, 0x5a1b,
     "SR5690 PCIE",
 },
 {
     0x1002, 0x5a1c,
     "SR5690 PCIE",
 },
 {
     0x1002, 0x5a1d,
     "SR5690 PCIE",
 },
 {
     0x1002, 0x5a1e,
     "SR5690 PCIE",
 },
 {
     0x1002, 0x5a1f,
     "SR5690 PCIE",
 },
 {
     0x1002, 0x5a20,
     "SR5690 PCIE",
 },
 {
     0x1002, 0x5a31,
     "RS400 Host",
 },
 {
     0x1002, 0x5a33,
     "RC410 Host",
 },
 {
     0x1002, 0x5a34,
     "RX480 PCIE",
 },
 {
     0x1002, 0x5a36,
     "RS480 PCIE",
 },
 {
     0x1002, 0x5a37,
     "RS480 PCIE",
 },
 {
     0x1002, 0x5a38,
     "RX480 PCIE",
 },
 {
     0x1002, 0x5a39,
     "RX480 PCIE",
 },
 {
     0x1002, 0x5a3f,
     "RS480 PCIE",
 },
 {
     0x1002, 0x5a41,
     "Radeon XPRESS 200",
 },
 {
     0x1002, 0x5a42,
     "Radeon XPRESS 200M",
 },
 {
     0x1002, 0x5a61,
     "Radeon XPRESS 200",
 },
 {
     0x1002, 0x5a62,
     "Radeon XPRESS 200M",
 },
 {
     0x1002, 0x5b60,
     "Radeon X300",
 },
 {
     0x1002, 0x5b62,
     "Radeon X600",
 },
 {
     0x1002, 0x5b63,
     "Radeon X550",
 },
 {
     0x1002, 0x5b64,
     "FireGL V3100",
 },
 {
     0x1002, 0x5b65,
     "FireMV 2200 5B65",
 },
 {
     0x1002, 0x5b70,
     "Radeon X300 Sec",
 },
 {
     0x1002, 0x5b72,
     "Radeon X600 Sec",
 },
 {
     0x1002, 0x5b73,
     "Radeon X550 Sec",
 },
 {
     0x1002, 0x5b74,
     "FireGL V3100 Sec",
 },
 {
     0x1002, 0x5b75,
     "FireMV 2200 Sec",
 },
 {
     0x1002, 0x5c61,
     "Radeon Mobility 9200",
 },
 {
     0x1002, 0x5c63,
     "Radeon Mobility 9200",
 },
 {
     0x1002, 0x5d44,
     "Radeon 9200 SE",
 },
 {
     0x1002, 0x5d48,
     "Radeon X800 XT M28",
 },
 {
     0x1002, 0x5d49,
     "FireGL V5100 M28",
 },
 {
     0x1002, 0x5d4a,
     "Radeon Mobility X800 M28",
 },
 {
     0x1002, 0x5d4c,
     "Radeon X850",
 },
 {
     0x1002, 0x5d4d,
     "Radeon X850 XT PE",
 },
 {
     0x1002, 0x5d4e,
     "Radeon X850 SE",
 },
 {
     0x1002, 0x5d4f,
     "Radeon X800",
 },
 {
     0x1002, 0x5d50,
     "FireGL R480",
 },
 {
     0x1002, 0x5d52,
     "Radeon X850XT",
 },
 {
     0x1002, 0x5d57,
     "Radeon X800XT",
 },
 {
     0x1002, 0x5d6f,
     "Radeon X800 GTO Sec",
 },
 {
     0x1002, 0x5d72,
     "Radeon X850 XT Sec",
 },
 {
     0x1002, 0x5e48,
     "FireGL V5000",
 },
 {
     0x1002, 0x5e4a,
     "FireGL X700 XT",
 },
 {
     0x1002, 0x5e4b,
     "FireGL X700 Pro",
 },
 {
     0x1002, 0x5e4c,
     "FireGL X700 SE",
 },
 {
     0x1002, 0x5e4d,
     "Radeon X700 PCIE",
 },
 {
     0x1002, 0x5e4f,
     "Radeon X700 SE PCIE",
 },
 {
     0x1002, 0x5e6d,
     "Radeon X700 PCIE Sec",
 },
 {
     0x1002, 0x5e4f,
     "Radeon X700 SE",
 },
 {
     0x1002, 0x5e6f,
     "Radeon X700 SE Sec",
 },
 {
     0x1002, 0x6600,
     "Radeon HD 8670A",
 },
 {
     0x1002, 0x6601,
     "Radeon HD 8730M",
 },
 {
     0x1002, 0x6602,
     "Oland",
 },
 {
     0x1002, 0x6603,
     "Oland",
 },
 {
     0x1002, 0x6606,
     "Radeon HD 8790M",
 },
 {
     0x1002, 0x6607,
     "Radeon HD 8530M",
 },
 {
     0x1002, 0x6610,
     "Radeon HD 8600",
 },
 {
     0x1002, 0x6611,
     "Radeon HD 8570",
 },
 {
     0x1002, 0x6613,
     "Radeon HD 8500",
 },
 {
     0x1002, 0x6620,
     "Oland",
 },
 {
     0x1002, 0x6621,
     "Oland",
 },
 {
     0x1002, 0x6623,
     "Oland",
 },
 {
     0x1002, 0x6631,
     "Oland",
 },
 {
     0x1002, 0x6660,
     "Radeon HD 8670M",
 },
 {
     0x1002, 0x6663,
     "Radeon HD 8500M",
 },
 {
     0x1002, 0x6664,
     "Hainan",
 },
 {
     0x1002, 0x6665,
     "Hainan",
 },
 {
     0x1002, 0x6667,
     "Hainan",
 },
 {
     0x1002, 0x666f,
     "Radeon HD 8500M",
 },
 {
     0x1002, 0x6700,
     "Cayman",
 },
 {
     0x1002, 0x6701,
     "Cayman",
 },
 {
     0x1002, 0x6702,
     "Cayman",
 },
 {
     0x1002, 0x6703,
     "Cayman",
 },
 {
     0x1002, 0x6704,
     "FirePro V7900",
 },
 {
     0x1002, 0x6705,
     "Cayman",
 },
 {
     0x1002, 0x6706,
     "Cayman",
 },
 {
     0x1002, 0x6707,
     "FirePro V5900",
 },
 {
     0x1002, 0x6708,
     "Cayman",
 },
 {
     0x1002, 0x6709,
     "Cayman",
 },
 {
     0x1002, 0x6718,
     "Radeon HD 6970",
 },
 {
     0x1002, 0x6719,
     "Radeon HD 6950",
 },
 {
     0x1002, 0x671c,
     "Radeon HD 6990",
 },
 {
     0x1002, 0x671d,
     "Radeon HD 6990",
 },
 {
     0x1002, 0x671f,
     "Radeon HD 6930",
 },
 {
     0x1002, 0x6720,
     "Radeon HD 6970M",
 },
 {
     0x1002, 0x6721,
     "Mobility Radeon HD 6000",
 },
 {
     0x1002, 0x6722,
     "Barts",
 },
 {
     0x1002, 0x6723,
     "Barts",
 },
 {
     0x1002, 0x6724,
     "Mobility Radeon HD 6000",
 },
 {
     0x1002, 0x6725,
     "Radeon HD 6900M",
 },
 {
     0x1002, 0x6726,
     "Barts",
 },
 {
     0x1002, 0x6727,
     "Barts",
 },
 {
     0x1002, 0x6728,
     "Barts",
 },
 {
     0x1002, 0x6729,
     "Barts",
 },
 {
     0x1002, 0x6738,
     "Radeon HD 6870",
 },
 {
     0x1002, 0x6739,
     "Radeon HD 6850",
 },
 {
     0x1002, 0x673e,
     "Radeon HD 6790",
 },
 {
     0x1002, 0x6740,
     "Radeon HD 6730M",
 },
 {
     0x1002, 0x6741,
     "Radeon HD 6600M",
 },
 {
     0x1002, 0x6742,
     "Radeon HD 6610M",
 },
 {
     0x1002, 0x6743,
     "Radeon E6760",
 },
 {
     0x1002, 0x6744,
     "Turks",
 },
 {
     0x1002, 0x6745,
     "Turks",
 },
 {
     0x1002, 0x6746,
     "Turks",
 },
 {
     0x1002, 0x6747,
     "Turks",
 },
 {
     0x1002, 0x6748,
     "Turks",
 },
 {
     0x1002, 0x6749,
     "FirePro V4900",
 },
 {
     0x1002, 0x674a,
     "FirePro V3900",
 },
 {
     0x1002, 0x6750,
     "Radeon HD 6650A",
 },
 {
     0x1002, 0x6751,
     "Radeon HD 7670A",
 },
 {
     0x1002, 0x6758,
     "Radeon HD 6670",
 },
 {
     0x1002, 0x6759,
     "Radeon HD 6570",
 },
 {
     0x1002, 0x675b,
     "Turks",
 },
 {
     0x1002, 0x675d,
     "Radeon HD 7570",
 },
 {
     0x1002, 0x675f,
     "Radeon HD 6510",
 },
 {
     0x1002, 0x6760,
     "Radeon HD 6400M",
 },
 {
     0x1002, 0x6761,
     "Radeon HD 6430M",
 },
 {
     0x1002, 0x6762,
     "Caicos",
 },
 {
     0x1002, 0x6763,
     "Radeon E6460",
 },
 {
     0x1002, 0x6764,
     "Radeon HD 6400M",
 },
 {
     0x1002, 0x6765,
     "Radeon HD 6400M",
 },
 {
     0x1002, 0x6766,
     "Caicos",
 },
 {
     0x1002, 0x6767,
     "Caicos",
 },
 {
     0x1002, 0x6768,
     "Caicos",
 },
 {
     0x1002, 0x6770,
     "Radeon HD 6450A",
 },
 {
     0x1002, 0x6771,
     "Radeon HD 8490",
 },
 {
     0x1002, 0x6772,
     "Radeon HD 7450A",
 },
 {
     0x1002, 0x6778,
     "Radeon HD 7470",
 },
 {
     0x1002, 0x6779,
     "Radeon HD 6450",
 },
 {
     0x1002, 0x677b,
     "Radeon HD 7450",
 },
 {
     0x1002, 0x6780,
     "FirePro W9000",
 },
 {
     0x1002, 0x6784,
     "FirePro V",
 },
 {
     0x1002, 0x6788,
     "FirePro V",
 },
 {
     0x1002, 0x678a,
     "Tahiti",
 },
 {
     0x1002, 0x6790,
     "Tahiti",
 },
 {
     0x1002, 0x6791,
     "Tahiti",
 },
 {
     0x1002, 0x6792,
     "Tahiti",
 },
 {
     0x1002, 0x6798,
     "Radeon HD 7970",
 },
 {
     0x1002, 0x6799,
     "Radeon HD 7900",
 },
 {
     0x1002, 0x679a,
     "Radeon HD 7950",
 },
 {
     0x1002, 0x679b,
     "Radeon HD 7990",
 },
 {
     0x1002, 0x679e,
     "Radeon HD 7870 XT",
 },
 {
     0x1002, 0x679f,
     "Tahiti",
 },
 {
     0x1002, 0x6800,
     "Radeon HD 7970M",
 },
 {
     0x1002, 0x6801,
     "Radeon HD 8970M",
 },
 {
     0x1002, 0x6802,
     "Pitcairn",
 },
 {
     0x1002, 0x6806,
     "Pitcairn",
 },
 {
     0x1002, 0x6808,
     "FirePro W7000",
 },
 {
     0x1002, 0x6809,
     "FirePro W5000",
 },
 {
     0x1002, 0x6810,
     "Pitcairn",
 },
 {
     0x1002, 0x6811,
     "Pitcairn",
 },
 {
     0x1002, 0x6816,
     "Pitcairn",
 },
 {
     0x1002, 0x6817,
     "Pitcairn",
 },
 {
     0x1002, 0x6818,
     "Radeon HD 7870",
 },
 {
     0x1002, 0x6819,
     "Radeon HD 7850",
 },
 {
     0x1002, 0x6820,
     "Radeon HD 8800M",
 },
 {
     0x1002, 0x6821,
     "Radeon HD 8800M",
 },
 {
     0x1002, 0x6822,
     "Cape Verde",
 },
 {
     0x1002, 0x6823,
     "Radeon HD 8800M",
 },
 {
     0x1002, 0x6824,
     "Radeon HD 7700M",
 },
 {
     0x1002, 0x6825,
     "Radeon HD 7870M",
 },
 {
     0x1002, 0x6826,
     "Radeon HD 7700M",
 },
 {
     0x1002, 0x6827,
     "Radeon HD 7850M",
 },
 {
     0x1002, 0x6828,
     "FirePro W600",
 },
 {
     0x1002, 0x6829,
     "Cape Verde",
 },
 {
     0x1002, 0x682a,
     "Cape Verde",
 },
 {
     0x1002, 0x682b,
     "Radeon HD 8800M",
 },
 {
     0x1002, 0x682d,
     "FirePro M4000",
 },
 {
     0x1002, 0x682f,
     "Radeon HD 7730M",
 },
 {
     0x1002, 0x6830,
     "Radeon HD 7800M",
 },
 {
     0x1002, 0x6831,
     "Radeon HD 7700M",
 },
 {
     0x1002, 0x6835,
     "Cape Verde",
 },
 {
     0x1002, 0x6837,
     "Radeon HD 7730",
 },
 {
     0x1002, 0x6838,
     "Cape Verde",
 },
 {
     0x1002, 0x6839,
     "Cape Verde",
 },
 {
     0x1002, 0x683b,
     "Radeon HD 7700",
 },
 {
     0x1002, 0x683d,
     "Radeon HD 7770",
 },
 {
     0x1002, 0x683f,
     "Radeon HD 7750",
 },
 {
     0x1002, 0x6840,
     "Radeon HD 7670M",
 },
 {
     0x1002, 0x6841,
     "Radeon HD 7550M",
 },
 {
     0x1002, 0x6842,
     "Radeon HD 7000M",
 },
 {
     0x1002, 0x6843,
     "Radeon HD 7670M",
 },
 {
     0x1002, 0x6849,
     "Radeon HD 7400",
 },
 {
     0x1002, 0x684c,
     "Pitcairn",
 },
 {
     0x1002, 0x6850,
     "Turks",
 },
 {
     0x1002, 0x6858,
     "Turks",
 },
 {
     0x1002, 0x6859,
     "Turks",
 },
 {
     0x1002, 0x6880,
     "Cypress",
 },
 {
     0x1002, 0x6888,
     "FirePro V8800",
 },
 {
     0x1002, 0x6889,
     "FirePro V7800",
 },
 {
     0x1002, 0x688a,
     "FirePro V9800",
 },
 {
     0x1002, 0x688c,
     "FireStream 9370",
 },
 {
     0x1002, 0x688d,
     "FireStream 9350",
 },
 {
     0x1002, 0x6898,
     "Radeon HD 5870",
 },
 {
     0x1002, 0x6899,
     "Radeon HD 5850",
 },
 {
     0x1002, 0x689b,
     "Radeon HD 6800",
 },
 {
     0x1002, 0x689c,
     "Radeon HD 5970",
 },
 {
     0x1002, 0x689d,
     "Radeon HD 5900",
 },
 {
     0x1002, 0x689e,
     "Radeon HD 5830",
 },
 {
     0x1002, 0x68a0,
     "Mobility Radeon HD 5870",
 },
 {
     0x1002, 0x68a1,
     "Mobility Radeon HD 5850",
 },
 {
     0x1002, 0x68a8,
     "Radeon HD 6850M",
 },
 {
     0x1002, 0x68a9,
     "FirePro V5800",
 },
 {
     0x1002, 0x68b0,
     "Mobility Radeon HD 5800",
 },
 {
     0x1002, 0x68b8,
     "Radeon HD 5770",
 },
 {
     0x1002, 0x68b9,
     "Radeon HD 5670 640SP",
 },
 {
     0x1002, 0x68ba,
     "Radeon HD 6770",
 },
 {
     0x1002, 0x68be,
     "Radeon HD 5750",
 },
 {
     0x1002, 0x68bf,
     "Radeon HD 6750",
 },
 {
     0x1002, 0x68c0,
     "Mobility Radeon HD 5730",
 },
 {
     0x1002, 0x68c1,
     "Mobility Radeon HD 5650",
 },
 {
     0x1002, 0x68c7,
     "Mobility Radeon HD 5570",
 },
 {
     0x1002, 0x68c8,
     "FirePro V4800",
 },
 {
     0x1002, 0x68c9,
     "FirePro V3800",
 },
 {
     0x1002, 0x68d8,
     "Radeon HD 5670",
 },
 {
     0x1002, 0x68d9,
     "Radeon HD 5570",
 },
 {
     0x1002, 0x68da,
     "Radeon HD 5550",
 },
 {
     0x1002, 0x68de,
     "Redwood",
 },
 {
     0x1002, 0x68e0,
     "Radeon Mobility HD 5470",
 },
 {
     0x1002, 0x68e1,
     "Radeon Mobility HD 5430",
 },
 {
     0x1002, 0x68e4,
     "Radeon HD 6370M",
 },
 {
     0x1002, 0x68e5,
     "Radeon HD 6330M",
 },
 {
     0x1002, 0x68e8,
     "Cedar",
 },
 {
     0x1002, 0x68e9,
     "FirePro",
 },
 {
     0x1002, 0x68f1,
     "FirePro 2460",
 },
 {
     0x1002, 0x68f2,
     "FirePro 2270",
 },
 {
     0x1002, 0x68f8,
     "Radeon HD 7300",
 },
 {
     0x1002, 0x68f9,
     "Radeon HD 5450",
 },
 {
     0x1002, 0x68fa,
     "Radeon HD 7350",
 },
 {
     0x1002, 0x68fe,
     "Cedar LE",
 },
 {
     0x1002, 0x700f,
     "RS100 PCI",
 },
 {
     0x1002, 0x7010,
     "RS200 PCI",
 },
 {
     0x1002, 0x7100,
     "Radeon X1800",
 },
 {
     0x1002, 0x7101,
     "Radeon X1800 XT",
 },
 {
     0x1002, 0x7102,
     "Radeon Mobility X1800",
 },
 {
     0x1002, 0x7103,
     "FireGL Mobility V7200",
 },
 {
     0x1002, 0x7104,
     "FireGL V7200",
 },
 {
     0x1002, 0x7105,
     "FireGL V5300",
 },
 {
     0x1002, 0x7106,
     "FireGL Mobility V7100",
 },
 {
     0x1002, 0x7108,
     "Radeon X1800",
 },
 {
     0x1002, 0x7109,
     "Radeon X1800",
 },
 {
     0x1002, 0x710a,
     "Radeon X1800",
 },
 {
     0x1002, 0x710b,
     "Radeon X1800",
 },
 {
     0x1002, 0x710c,
     "Radeon X1800",
 },
 {
     0x1002, 0x710e,
     "FireGL V7300",
 },
 {
     0x1002, 0x710f,
     "FireGL V7350",
 },
 {
     0x1002, 0x7140,
     "Radeon X1600",
 },
 {
     0x1002, 0x7141,
     "RV505",
 },
 {
     0x1002, 0x7142,
     "Radeon X1300/X1550",
 },
 {
     0x1002, 0x7143,
     "Radeon X1550",
 },
 {
     0x1002, 0x7144,
     "M54-GL",
 },
 {
     0x1002, 0x7145,
     "Radeon Mobility X1400",
 },
 {
     0x1002, 0x7146,
     "Radeon X1300/X1550",
 },
 {
     0x1002, 0x7147,
     "RADEON X1550 64-bit",
 },
 {
     0x1002, 0x7149,
     "Radeon Mobility X1300 M52-64",
 },
 {
     0x1002, 0x714a,
     "Radeon Mobility X1300",
 },
 {
     0x1002, 0x714b,
     "Radeon Mobility X1300",
 },
 {
     0x1002, 0x714c,
     "Radeon Mobility X1300",
 },
 {
     0x1002, 0x714d,
     "Radeon X1300",
 },
 {
     0x1002, 0x714e,
     "Radeon X1300",
 },
 {
     0x1002, 0x714f,
     "Radeon X1300",
 },
 {
     0x1002, 0x7151,
     "RV505",
 },
 {
     0x1002, 0x7152,
     "FireGL V3300",
 },
 {
     0x1002, 0x7153,
     "FireGL V3350",
 },
 {
     0x1002, 0x715e,
     "Radeon X1300",
 },
 {
     0x1002, 0x715f,
     "Radeon X1550",
 },
 {
     0x1002, 0x7160,
     "Radeon X1600 Sec",
 },
 {
     0x1002, 0x7162,
     "Radeon X1300/X1550 Sec",
 },
 {
     0x1002, 0x7180,
     "Radeon X1300/X1550",
 },
 {
     0x1002, 0x7181,
     "Radeon X1600",
 },
 {
     0x1002, 0x7183,
     "Radeon X1300 Pro",
 },
 {
     0x1002, 0x7186,
     "Radeon X1450",
 },
 {
     0x1002, 0x7187,
     "Radeon X1300",
 },
 {
     0x1002, 0x7188,
     "Radeon Mobility X2300",
 },
 {
     0x1002, 0x718a,
     "Radeon Mobility X2300",
 },
 {
     0x1002, 0x718b,
     "Radeon Mobility X1350",
 },
 {
     0x1002, 0x718c,
     "Radeon Mobility X1350",
 },
 {
     0x1002, 0x718d,
     "Radeon Mobility X1450",
 },
 {
     0x1002, 0x718f,
     "Radeon X1300",
 },
 {
     0x1002, 0x7193,
     "Radeon X1550",
 },
 {
     0x1002, 0x7196,
     "Radeon Mobility X1350",
 },
 {
     0x1002, 0x719b,
     "FireMV 2250",
 },
 {
     0x1002, 0x719f,
     "Radeon X1550 64-bit",
 },
 {
     0x1002, 0x71a3,
     "Radeon X1300 Pro Sec",
 },
 {
     0x1002, 0x71a7,
     "Radeon X1300 Sec",
 },
 {
     0x1002, 0x71c0,
     "Radeon X1600",
 },
 {
     0x1002, 0x71c1,
     "Radeon X1650",
 },
 {
     0x1002, 0x71c2,
     "Radeon X1600 Pro",
 },
 {
     0x1002, 0x71c3,
     "Radeon X1600",
 },
 {
     0x1002, 0x71c4,
     "FireGL V5200",
 },
 {
     0x1002, 0x71c5,
     "Radeon Mobility X1600",
 },
 {
     0x1002, 0x71c6,
     "Radeon X1650 Pro",
 },
 {
     0x1002, 0x71c7,
     "Radeon X1650 Pro",
 },
 {
     0x1002, 0x71cd,
     "Radeon X1600",
 },
 {
     0x1002, 0x71ce,
     "Radeon X1300 XT",
 },
 {
     0x1002, 0x71d2,
     "FireGL V3400",
 },
 {
     0x1002, 0x71d4,
     "Mobility FireGL V5250",
 },
 {
     0x1002, 0x71d5,
     "Radeon X1700",
 },
 {
     0x1002, 0x71d6,
     "Radeon X1700 XT",
 },
 {
     0x1002, 0x71da,
     "FireGL V5200",
 },
 {
     0x1002, 0x71de,
     "Radeon Mobility X1700",
 },
 {
     0x1002, 0x71e2,
     "Radeon X1600 Pro Sec",
 },
 {
     0x1002, 0x71e6,
     "Radeon X1650 Pro Sec",
 },
 {
     0x1002, 0x71e7,
     "Radeon X1650 Pro Sec",
 },
 {
     0x1002, 0x7200,
     "Radeon X2300HD",
 },
 {
     0x1002, 0x7210,
     "Radeon Mobility X2300HD",
 },
 {
     0x1002, 0x7211,
     "Radeon Mobility X2300HD",
 },
 {
     0x1002, 0x7240,
     "Radeon X1950",
 },
 {
     0x1002, 0x7243,
     "Radeon X1900",
 },
 {
     0x1002, 0x7244,
     "Radeon X1950",
 },
 {
     0x1002, 0x7245,
     "Radeon X1900",
 },
 {
     0x1002, 0x7246,
     "Radeon X1900",
 },
 {
     0x1002, 0x7247,
     "Radeon X1900",
 },
 {
     0x1002, 0x7248,
     "Radeon X1900",
 },
 {
     0x1002, 0x7249,
     "Radeon X1900",
 },
 {
     0x1002, 0x724a,
     "Radeon X1900",
 },
 {
     0x1002, 0x724b,
     "Radeon X1900",
 },
 {
     0x1002, 0x724c,
     "Radeon X1900",
 },
 {
     0x1002, 0x724d,
     "Radeon X1900",
 },
 {
     0x1002, 0x724e,
     "AMD Stream Processor",
 },
 {
     0x1002, 0x724f,
     "Radeon X1900",
 },
 {
     0x1002, 0x7280,
     "Radeon X1950 Pro",
 },
 {
     0x1002, 0x7281,
     "RV560",
 },
 {
     0x1002, 0x7283,
     "RV560",
 },
 {
     0x1002, 0x7284,
     "Radeon Mobility X1900",
 },
 {
     0x1002, 0x7287,
     "RV560",
 },
 {
     0x1002, 0x7288,
     "Radeon X1950 GT",
 },
 {
     0x1002, 0x7289,
     "RV570",
 },
 {
     0x1002, 0x728b,
     "RV570",
 },
 {
     0x1002, 0x728c,
     "FireGL V7400",
 },
 {
     0x1002, 0x7290,
     "Rv560",
 },
 {
     0x1002, 0x7291,
     "Radeon RX1650 XT",
 },
 {
     0x1002, 0x7293,
     "Radeon X1650",
 },
 {
     0x1002, 0x7297,
     "RV560",
 },
 {
     0x1002, 0x72a0,
     "Radeon X1950 Pro Sec",
 },
 {
     0x1002, 0x72b1,
     "Radeon RX1650 XT Sec",
 },
 {
     0x1002, 0x7834,
     "Radeon 9000/9100 IGP",
 },
 {
     0x1002, 0x7835,
     "Radeon RS350IGP",
 },
 {
     0x1002, 0x7910,
     "RS690 Host",
 },
 {
     0x1002, 0x7911,
     "RS740 Host",
 },
 {
     0x1002, 0x7912,
     "RS690 PCIE",
 },
 {
     0x1002, 0x7913,
     "RS690M PCIE",
 },
 {
     0x1002, 0x7914,
     "RS690 PCIE",
 },
 {
     0x1002, 0x7915,
     "RS690 PCIE",
 },
 {
     0x1002, 0x7916,
     "RS690 PCIE",
 },
 {
     0x1002, 0x7917,
     "RS690 PCIE",
 },
 {
     0x1002, 0x7919,
     "RS690 HD Audio",
 },
 {
     0x1002, 0x791e,
     "Radeon X1250",
 },
 {
     0x1002, 0x791f,
     "Radeon X1250 IGP",
 },
 {
     0x1002, 0x793f,
     "Radeon X1200",
 },
 {
     0x1002, 0x7941,
     "Radeon X1200",
 },
 {
     0x1002, 0x7942,
     "Radeon X1200",
 },
 {
     0x1002, 0x796c,
     "RS740",
 },
 {
     0x1002, 0x796d,
     "RS740M",
 },
 {
     0x1002, 0x796e,
     "Radeon 2100",
 },
 {
     0x1002, 0x796f,
     "RS740M",
 },
 {
     0x1002, 0x9400,
     "Radeon HD 2900 XT",
 },
 {
     0x1002, 0x9401,
     "Radeon HD 2900 XT",
 },
 {
     0x1002, 0x9402,
     "Radeon HD 2900 XT",
 },
 {
     0x1002, 0x9403,
     "Radeon HD 2900 Pro",
 },
 {
     0x1002, 0x9405,
     "Radeon HD 2900 GT",
 },
 {
     0x1002, 0x940a,
     "FireGL V8650",
 },
 {
     0x1002, 0x940b,
     "FireGL V8600",
 },
 {
     0x1002, 0x940f,
     "FireGL V8600",
 },
 {
     0x1002, 0x9440,
     "Radeon HD 4870",
 },
 {
     0x1002, 0x9441,
     "Radeon HD 4870 X2",
 },
 {
     0x1002, 0x9442,
     "Radeon HD 4850",
 },
 {
     0x1002, 0x9443,
     "Radeon HD 4850 X2",
 },
 {
     0x1002, 0x9444,
     "FirePro V8750",
 },
 {
     0x1002, 0x9446,
     "FirePro V7760",
 },
 {
     0x1002, 0x944a,
     "Mobility Radeon HD 4850",
 },
 {
     0x1002, 0x944b,
     "Mobility Radeon HD 4850 X2",
 },
 {
     0x1002, 0x944c,
     "Radeon HD 4800",
 },
 {
     0x1002, 0x944e,
     "FirePro RV770",
 },
 {
     0x1002, 0x9450,
     "FireStream 9270",
 },
 {
     0x1002, 0x9452,
     "FireStream 9250",
 },
 {
     0x1002, 0x9456,
     "FirePro V8700",
 },
 {
     0x1002, 0x945a,
     "Mobility Radeon HD 4870",
 },
 {
     0x1002, 0x945b,
     "Radeon M98",
 },
 {
     0x1002, 0x945e,
     "Mobility Radeon HD 4870",
 },
 {
     0x1002, 0x9460,
     "Radeon HD 4890",
 },
 {
     0x1002, 0x9462,
     "Radeon HD 4800",
 },
 {
     0x1002, 0x946a,
     "FirePro M7750",
 },
 {
     0x1002, 0x946b,
     "Radeon M98",
 },
 {
     0x1002, 0x947a,
     "Radeon M98",
 },
 {
     0x1002, 0x947b,
     "Radeon M98",
 },
 {
     0x1002, 0x9480,
     "Mobility Radeon HD 4650",
 },
 {
     0x1002, 0x9488,
     "Mobility Radeon HD 4670",
 },
 {
     0x1002, 0x948a,
     "Mobility Radeon HD 4670",
 },
 {
     0x1002, 0x9490,
     "Radeon HD 4670",
 },
 {
     0x1002, 0x9491,
     "Radeon E4600",
 },
 {
     0x1002, 0x9495,
     "Radeon HD 4600",
 },
 {
     0x1002, 0x9498,
     "Radeon HD 4650",
 },
 {
     0x1002, 0x949c,
     "FirePro V7750",
 },
 {
     0x1002, 0x949e,
     "FirePro V5700",
 },
 {
     0x1002, 0x949f,
     "FirePro V3750",
 },
 {
     0x1002, 0x94a0,
     "Mobility Radeon HD 4830",
 },
 {
     0x1002, 0x94a1,
     "Mobility Radeon HD 4850",
 },
 {
     0x1002, 0x94a3,
     "FirePro M7740",
 },
 {
     0x1002, 0x94b1,
     "RV740",
 },
 {
     0x1002, 0x94b3,
     "Radeon HD 4770",
 },
 {
     0x1002, 0x94b4,
     "Radeon HD 4700",
 },
 {
     0x1002, 0x94b5,
     "Radeon HD 4770",
 },
 {
     0x1002, 0x94b9,
     "FirePro M5750",
 },
 {
     0x1002, 0x94c1,
     "Radeon HD 2400 XT",
 },
 {
     0x1002, 0x94c3,
     "Radeon HD 2400 Pro",
 },
 {
     0x1002, 0x94c4,
     "Radeon HD 2400 Pro AGP",
 },
 {
     0x1002, 0x94c5,
     "FireGL V4000",
 },
 {
     0x1002, 0x94c7,
     "Radeon HD 2350",
 },
 {
     0x1002, 0x94c8,
     "Mobility Radeon HD 2400 XT",
 },
 {
     0x1002, 0x94c9,
     "Mobility Radeon HD 2400",
 },
 {
     0x1002, 0x94cb,
     "Radeon E2400",
 },
 {
     0x1002, 0x94cc,
     "Radeon HD 2400 Pro PCI",
 },
 {
     0x1002, 0x94cd,
     "FireMV 2260",
 },
 {
     0x1002, 0x9501,
     "Radeon HD 3870",
 },
 {
     0x1002, 0x9504,
     "Mobility Radeon HD 3850",
 },
 {
     0x1002, 0x9505,
     "Radeon HD 3850",
 },
 {
     0x1002, 0x9506,
     "Mobility Radeon HD 3850 X2",
 },
 {
     0x1002, 0x9508,
     "Mobility Radeon HD 3870",
 },
 {
     0x1002, 0x9509,
     "Mobility Radeon HD 3870 X2",
 },
 {
     0x1002, 0x950f,
     "Radeon HD 3870 X2",
 },
 {
     0x1002, 0x9511,
     "FireGL V7700",
 },
 {
     0x1002, 0x9515,
     "Radeon HD 3850 AGP",
 },
 {
     0x1002, 0x9517,
     "Radeon HD 3690",
 },
 {
     0x1002, 0x9519,
     "FireStream",
 },
 {
     0x1002, 0x9540,
     "Radeon HD 4550",
 },
 {
     0x1002, 0x954f,
     "Radeon HD 4350",
 },
 {
     0x1002, 0x9552,
     "Mobility Radeon HD 4300",
 },
 {
     0x1002, 0x9553,
     "Mobility Radeon HD 4500",
 },
 {
     0x1002, 0x9555,
     "Mobility Radeon HD 4500",
 },
 {
     0x1002, 0x9557,
     "FirePro RG220",
 },
 {
     0x1002, 0x955f,
     "Mobility Radeon HD 4330",
 },
 {
     0x1002, 0x9581,
     "Mobility Radeon HD 2600",
 },
 {
     0x1002, 0x9583,
     "Mobility Radeon HD 2600 XT",
 },
 {
     0x1002, 0x9586,
     "Radeon HD 2600 XT AGP",
 },
 {
     0x1002, 0x9587,
     "Radeon HD 2600 Pro AGP",
 },
 {
     0x1002, 0x9588,
     "Radeon HD 2600 XT",
 },
 {
     0x1002, 0x9589,
     "Radeon HD 2600 Pro",
 },
 {
     0x1002, 0x958c,
     "FireGL V5600",
 },
 {
     0x1002, 0x958d,
     "FireGL V3600",
 },
 {
     0x1002, 0x9590,
     "Radeon HD 3600",
 },
 {
     0x1002, 0x9591,
     "Mobility Radeon HD 3650",
 },
 {
     0x1002, 0x9593,
     "Mobility Radeon HD 3670",
 },
 {
     0x1002, 0x9595,
     "Mobilty FireGL V5700",
 },
 {
     0x1002, 0x9596,
     "Radeon HD 3650 AGP",
 },
 {
     0x1002, 0x9598,
     "Radeon HD 3650",
 },
 {
     0x1002, 0x959b,
     "Mobility FireGL V5725",
 },
 {
     0x1002, 0x95c0,
     "Radeon HD 3470",
 },
 {
     0x1002, 0x95c2,
     "Mobility Radeon HD 3430",
 },
 {
     0x1002, 0x95c4,
     "Mobility Radeon HD 3400",
 },
 {
     0x1002, 0x95c5,
     "Radeon HD 3450",
 },
 {
     0x1002, 0x95c6,
     "Radeon HD 3450 AGP",
 },
 {
     0x1002, 0x95c7,
     "Radeon HD 3430",
 },
 {
     0x1002, 0x95c9,
     "Radeon HD 3450 PCI",
 },
 {
     0x1002, 0x95cc,
     "FirePro V3700",
 },
 {
     0x1002, 0x95cd,
     "FireMV 2450",
 },
 {
     0x1002, 0x95ce,
     "FireMV 2260",
 },
 {
     0x1002, 0x95cf,
     "FireMV 2260",
 },
 {
     0x1002, 0x960f,
     "RS780 HD Audio",
 },
 {
     0x1002, 0x9610,
     "Radeon HD 3200",
 },
 {
     0x1002, 0x9611,
     "Radeon HD 3100",
 },
 {
     0x1002, 0x9612,
     "Radeon HD 3200",
 },
 {
     0x1002, 0x9613,
     "Radeon 3100",
 },
 {
     0x1002, 0x9614,
     "Radeon HD 3300",
 },
 {
     0x1002, 0x9616,
     "Radeon HD 3000",
 },
 {
     0x1002, 0x9640,
     "Radeon HD 6550D",
 },
 {
     0x1002, 0x9641,
     "Radeon HD 6620G",
 },
 {
     0x1002, 0x9642,
     "Radeon HD 6370D",
 },
 {
     0x1002, 0x9643,
     "Radeon HD 6380G",
 },
 {
     0x1002, 0x9644,
     "Radeon HD 6410D",
 },
 {
     0x1002, 0x9645,
     "Radeon HD 6410D",
 },
 {
     0x1002, 0x9647,
     "Radeon HD 6520G",
 },
 {
     0x1002, 0x9648,
     "Radeon HD 6480G",
 },
 {
     0x1002, 0x9649,
     "Radeon HD 6480G",
 },
 {
     0x1002, 0x964a,
     "Radeon HD 6530D",
 },
 {
     0x1002, 0x964b,
     "Sumo",
 },
 {
     0x1002, 0x964c,
     "Sumo",
 },
 {
     0x1002, 0x964e,
     "Sumo",
 },
 {
     0x1002, 0x964f,
     "Sumo",
 },
 {
     0x1002, 0x970f,
     "Radeon HD 4200 HD Audio",
 },
 {
     0x1002, 0x9710,
     "Radeon HD 4200",
 },
 {
     0x1002, 0x9711,
     "Radeon HD 4100",
 },
 {
     0x1002, 0x9712,
     "Mobility Radeon HD 4200",
 },
 {
     0x1002, 0x9713,
     "Mobility Radeon HD 4100",
 },
 {
     0x1002, 0x9714,
     "Radeon HD 4290",
 },
 {
     0x1002, 0x9715,
     "Radeon HD 4250",
 },
 {
     0x1002, 0x9802,
     "Radeon HD 6310",
 },
 {
     0x1002, 0x9803,
     "Radeon HD 6310",
 },
 {
     0x1002, 0x9804,
     "Radeon HD 6250",
 },
 {
     0x1002, 0x9805,
     "Radeon HD 6250",
 },
 {
     0x1002, 0x9806,
     "Radeon HD 6320",
 },
 {
     0x1002, 0x9807,
     "Radeon HD 6290",
 },
 {
     0x1002, 0x9808,
     "Radeon HD 7340",
 },
 {
     0x1002, 0x9809,
     "Radeon HD 7310",
 },
 {
     0x1002, 0x980a,
     "Radeon HD 7290",
 },
 {
     0x1002, 0x9840,
     "Radeon HD Audio",
 },
 {
     0x1002, 0x9854,
     "Mullins",
 },
 {
     0x1002, 0x9900,
     "Aruba",
 },
 {
     0x1002, 0x9901,
     "Radeon HD 7660D",
 },
 {
     0x1002, 0x9903,
     "Radeon HD 7640G",
 },
 {
     0x1002, 0x9904,
     "Radeon HD 7560D",
 },
 {
     0x1002, 0x9905,
     "FirePro A300",
 },
 {
     0x1002, 0x9906,
     "FirePro A300",
 },
 {
     0x1002, 0x9907,
     "Radeon HD 7620G",
 },
 {
     0x1002, 0x9908,
     "Radeon HD 7600G",
 },
 {
     0x1002, 0x9909,
     "Radeon HD 7500G",
 },
 {
     0x1002, 0x990a,
     "Radeon HD 7500G",
 },
 {
     0x1002, 0x990b,
     "Radeon HD 8650G",
 },
 {
     0x1002, 0x990c,
     "Radeon HD 8670D",
 },
 {
     0x1002, 0x990d,
     "Radeon HD 8550G",
 },
 {
     0x1002, 0x990e,
     "Radeon HD 8570D",
 },
 {
     0x1002, 0x990f,
     "Radeon HD 8610G",
 },
 {
     0x1002, 0x9910,
     "Radeon HD 7660G",
 },
 {
     0x1002, 0x9913,
     "Radeon HD 7640G",
 },
 {
     0x1002, 0x9917,
     "Radeon HD 7620G",
 },
 {
     0x1002, 0x9918,
     "Radeon HD 7600G",
 },
 {
     0x1002, 0x9919,
     "Radeon HD 7500G",
 },
 {
     0x1002, 0x9990,
     "Radeon HD 7520G",
 },
 {
     0x1002, 0x9991,
     "Radeon HD 7540D",
 },
 {
     0x1002, 0x9992,
     "Radeon HD 7420G",
 },
 {
     0x1002, 0x9993,
     "Radeon HD 7480D",
 },
 {
     0x1002, 0x9994,
     "Radeon HD 7400G",
 },
 {
     0x1002, 0x9995,
     "Radeon HD 8450G",
 },
 {
     0x1002, 0x9996,
     "Radeon HD 8470D",
 },
 {
     0x1002, 0x9997,
     "Radeon HD 8350G",
 },
 {
     0x1002, 0x9998,
     "Radeon HD 8370D",
 },
 {
     0x1002, 0x9999,
     "Radeon HD 8510G",
 },
 {
     0x1002, 0x999a,
     "Radeon HD 8410G",
 },
 {
     0x1002, 0x999b,
     "Radeon HD 8310G",
 },
 {
     0x1002, 0x999c,
     "Aruba",
 },
 {
     0x1002, 0x999d,
     "Aruba",
 },
 {
     0x1002, 0x99a0,
     "Radeon HD 7520G",
 },
 {
     0x1002, 0x99a2,
     "Radeon HD 7420G",
 },
 {
     0x1002, 0x99a4,
     "Radeon HD 7400G",
 },
 {
     0x1002, 0xaa08,
     "Radeon HD 2600 HD Audio",
 },
 {
     0x1002, 0xaa10,
     "RS690M HD Audio",
 },
 {
     0x1002, 0xaa18,
     "Radeon HD 3870 HD Audio",
 },
 {
     0x1002, 0xaa20,
     "Radeon HD 3600 HD Audio",
 },
 {
     0x1002, 0xaa28,
     "Radeon HD 34xx HD Audio",
 },
 {
     0x1002, 0xaa30,
     "Radeon HD 48xx HD Audio",
 },
 {
     0x1002, 0xaa38,
     "Radeon HD 4000 HD Audio",
 },
 {
     0x1002, 0xaa50,
     "Radeon HD 5800 Audio",
 },
 {
     0x1002, 0xaa58,
     "Radeon HD 5700 Audio",
 },
 {
     0x1002, 0xaa60,
     "Radeon HD 5600 Audio",
 },
 {
     0x1002, 0xaa68,
     "Radeon HD 5470 Audio",
 },
 {
     0x1002, 0xaa90,
     "Radeon HD 6670 Audio",
 },
 {
     0x1002, 0xaa98,
     "Radeon HD 6400 Audio",
 },
 {
     0x1002, 0xcab0,
     "RS100 AGP",
 },
 {
     0x1002, 0xcab2,
     "RS200 AGP",
 },
 {
     0x1002, 0xcab3,
     "RS250 AGP",
 },
 {
     0x1002, 0xcbb2,
     "RS200M AGP",
 },
 {
     0x10e8, 0x4750,
     "S5933 PCI Matchmaker",
 },
 {
     0x10e8, 0x8043,
     "Myrinet LANai",
 },
 {
     0x1a03, 0x1150,
     "AST1150 PCI",
 },
 {
     0x1a03, 0x1180,
     "AST1180",
 },
 {
     0x1a03, 0x2000,
     "AST2000",
 },
 {
     0x1a03, 0x2100,
     "AST2100",
 },
 {
     0x168c, 0x0007,
     "AR5210",
 },
 {
     0x168c, 0x0011,
     "AR5311",
 },
 {
     0x168c, 0x0012,
     "AR5211",
 },
 {
     0x168c, 0x0013,
     "AR5212",
 },
 {
     0x168c, 0x0014,
     "AR5212",
 },
 {
     0x168c, 0x0015,
     "AR5212",
 },
 {
     0x168c, 0x0016,
     "AR5212",
 },
 {
     0x168c, 0x0017,
     "AR5212",
 },
 {
     0x168c, 0x0018,
     "AR5212",
 },
 {
     0x168c, 0x0019,
     "AR5212",
 },
 {
     0x168c, 0x001a,
     "AR2413",
 },
 {
     0x168c, 0x001b,
     "AR5413",
 },
 {
     0x168c, 0x001c,
     "AR5424",
 },
 {
     0x168c, 0x0023,
     "AR5416",
 },
 {
     0x168c, 0x0024,
     "AR5418",
 },
 {
     0x168c, 0x0027,
     "AR9160",
 },
 {
     0x168c, 0x0029,
     "AR9280",
 },
 {
     0x168c, 0x002a,
     "AR9281",
 },
 {
     0x168c, 0x002b,
     "AR9285",
 },
 {
     0x168c, 0x002c,
     "AR2427",
 },
 {
     0x168c, 0x002d,
     "AR9227",
 },
 {
     0x168c, 0x002e,
     "AR9287",
 },
 {
     0x168c, 0x0030,
     "AR9300",
 },
 {
     0x168c, 0x0032,
     "AR9485",
 },
 {
     0x168c, 0x0034,
     "AR9462",
 },
 {
     0x168c, 0x0036,
     "AR9565",
 },
 {
     0x168c, 0x0207,
     "AR5210",
 },
 {
     0x168c, 0x1014,
     "AR5212",
 },
 {
     0x168c, 0x1107,
     "AR5210",
 },
 {
     0x168c, 0x1113,
     "AR5212",
 },
 {
     0x168c, 0x1112,
     "AR5211",
 },
 {
     0x168c, 0xf013,
     "AR5212",
 },
 {
     0x168c, 0xf11b,
     "AR5211Ref",
 },
 {
     0x168c, 0xff12,
     "AR5211Ref",
 },
 {
     0x1114, 0x0506,
     "AT76C506",
 },
 {
     0x907f, 0x2015,
     "IDE-2015PL",
 },
 {
     0x1969, 0x1026,
     "L1E",
 },
 {
     0x1969, 0x1048,
     "L1",
 },
 {
     0x1969, 0x1062,
     "L2C",
 },
 {
     0x1969, 0x1063,
     "L1C",
 },
 {
     0x1969, 0x1073,
     "L1D",
 },
 {
     0x1969, 0x1083,
     "L1D",
 },
 {
     0x1969, 0x1090,
     "AR8162",
 },
 {
     0x1969, 0x1091,
     "AR8161",
 },
 {
     0x1969, 0x10a0,
     "AR8172",
 },
 {
     0x1969, 0x10a1,
     "AR8171",
 },
 {
     0x1969, 0x2048,
     "L2",
 },
 {
     0x1969, 0x2060,
     "L2C",
 },
 {
     0x1969, 0x2062,
     "L2C",
 },
 {
     0x1969, 0xe091,
     "E2200",
 },
 {
     0x12eb, 0x0001,
     "Vortex 1",
 },
 {
     0x12eb, 0x0002,
     "Vortex 2",
 },
 {
     0x12eb, 0x0003,
     "Vortex Advantage",
 },
 {
     0x1005, 0x2301,
     "AVL2301",
 },
 {
     0x1005, 0x2302,
     "AVG2302",
 },
 {
     0x4005, 0x2301,
     "ALG2301",
 },
 {
     0x4005, 0x2302,
     "ALG2302",
 },
 {
     0x4005, 0x4000,
     "ALS4000",
 },
 {
     0x14db, 0x2130,
     "Dual Serial",
 },
 {
     0x14db, 0x2150,
     "Quad Serial",
 },
 {
     0x14db, 0x2152,
     "Quad Serial",
 },
 {
     0x1244, 0x0700,
     "BRI ISDN",
 },
 {
     0x1244, 0x0a00,
     "Fritz ISDN",
 },
 {
     0x1244, 0x0e00,
     "Fritz v2.0 ISDN",
 },
 {
     0x1244, 0x1200,
     "PRI T1 ISDN",
 },
 {
     0x1a3b, 0x1059,
     "RT2890",
 },
 {
     0x1799, 0x6001,
     "F5D6001",
 },
 {
     0x1799, 0x6020,
     "F5D6020V3",
 },
 {
     0x1799, 0x701f,
     "F5D7010",
 },
 {
     0xec80, 0xec00,
     "F5D6000",
 },
 {
     0x108a, 0x0001,
     "VME 617",
 },
 {
     0x108a, 0x0300,
     "VME 2706",
 },
 {
     0x15ab, 0x0000,
     "5501",
 },
 {
     0x15ab, 0x5601,
     "5601",
 },
 {
     0x1234, 0x1111,
     "VGA",
 },
 {
     0x14e4, 0x0576,
     "BCM43224",
 },
 {
     0x14e4, 0x1570,
     "BCM15700A2",
 },
 {
     0x14e4, 0x1600,
     "BCM5752",
 },
 {
     0x14e4, 0x1601,
     "BCM5752M",
 },
 {
     0x14e4, 0x1639,
     "BCM5709",
 },
 {
     0x14e4, 0x163a,
     "BCM5709S",
 },
 {
     0x14e4, 0x163b,
     "BCM5716",
 },
 {
     0x14e4, 0x163c,
     "BCM5716S",
 },
 {
     0x14e4, 0x163d,
     "BCM57811",
 },
 {
     0x14e4, 0x163e,
     "BCM57811 MF",
 },
 {
     0x14e4, 0x16ef,
     "BCM57811 VF",
 },
 {
     0x14e4, 0x1641,
     "BCM57787",
 },
 {
     0x14e4, 0x1642,
     "BCM57764",
 },
 {
     0x14e4, 0x1643,
     "BCM5725",
 },
 {
     0x14e4, 0x1644,
     "BCM5700",
 },
 {
     0x14e4, 0x1645,
     "BCM5701",
 },
 {
     0x14e4, 0x1646,
     "BCM5702",
 },
 {
     0x14e4, 0x1647,
     "BCM5703",
 },
 {
     0x14e4, 0x1648,
     "BCM5704C",
 },
 {
     0x14e4, 0x1649,
     "BCM5704S Alt",
 },
 {
     0x14e4, 0x164a,
     "BCM5706",
 },
 {
     0x14e4, 0x164c,
     "BCM5708",
 },
 {
     0x14e4, 0x164d,
     "BCM5702FE",
 },
 {
     0x14e4, 0x164e,
     "BCM57710",
 },
 {
     0x14e4, 0x164f,
     "BCM57711",
 },
 {
     0x14e4, 0x1650,
     "BCM57711E",
 },
 {
     0x14e4, 0x1653,
     "BCM5705",
 },
 {
     0x14e4, 0x1654,
     "BCM5705K",
 },
 {
     0x14e4, 0x1655,
     "BCM5717",
 },
 {
     0x14e4, 0x1656,
     "BCM5718",
 },
 {
     0x14e4, 0x1657,
     "BCM5719",
 },
 {
     0x14e4, 0x1659,
     "BCM5721",
 },
 {
     0x14e4, 0x165a,
     "BCM5722",
 },
 {
     0x14e4, 0x165b,
     "BCM5723",
 },
 {
     0x14e4, 0x165d,
     "BCM5705M",
 },
 {
     0x14e4, 0x165e,
     "BCM5705M Alt",
 },
 {
     0x14e4, 0x165f,
     "BCM5720",
 },
 {
     0x14e4, 0x1662,
     "BCM57712",
 },
 {
     0x14e4, 0x1663,
     "BCM57712 MF",
 },
 {
     0x14e4, 0x1665,
     "BCM5717C",
 },
 {
     0x14e4, 0x1668,
     "BCM5714",
 },
 {
     0x14e4, 0x1669,
     "BCM5714S",
 },
 {
     0x14e4, 0x166a,
     "BCM5780",
 },
 {
     0x14e4, 0x166b,
     "BCM5780S",
 },
 {
     0x14e4, 0x166e,
     "BCM5705F",
 },
 {
     0x14e4, 0x166f,
     "BCM57712 VF",
 },
 {
     0x14e4, 0x1672,
     "BCM5754M",
 },
 {
     0x14e4, 0x1673,
     "BCM5755M",
 },
 {
     0x14e4, 0x1674,
     "BCM5756",
 },
 {
     0x14e4, 0x1677,
     "BCM5751",
 },
 {
     0x14e4, 0x1678,
     "BCM5715",
 },
 {
     0x14e4, 0x1679,
     "BCM5715S",
 },
 {
     0x14e4, 0x167a,
     "BCM5754",
 },
 {
     0x14e4, 0x167b,
     "BCM5755",
 },
 {
     0x14e4, 0x167d,
     "BCM5751M",
 },
 {
     0x14e4, 0x167e,
     "BCM5751F",
 },
 {
     0x14e4, 0x167f,
     "BCM5787F",
 },
 {
     0x14e4, 0x1680,
     "BCM5761E",
 },
 {
     0x14e4, 0x1681,
     "BCM5761",
 },
 {
     0x14e4, 0x1682,
     "BCM57762",
 },
 {
     0x14e4, 0x1683,
     "BCM57767",
 },
 {
     0x14e4, 0x1684,
     "BCM5764",
 },
 {
     0x14e4, 0x1686,
     "BCM57766",
 },
 {
     0x14e4, 0x1687,
     "BCM5762",
 },
 {
     0x14e4, 0x1688,
     "BCM5761S",
 },
 {
     0x14e4, 0x1689,
     "BCM5761SE",
 },
 {
     0x14e4, 0x168a,
     "BCM57800",
 },
 {
     0x14e4, 0x168d,
     "BCM57840 OBS",
 },
 {
     0x14e4, 0x168e,
     "BCM57810",
 },
 {
     0x14e4, 0x1690,
     "BCM57760",
 },
 {
     0x14e4, 0x1691,
     "BCM57788",
 },
 {
     0x14e4, 0x1692,
     "BCM57780",
 },
 {
     0x14e4, 0x1693,
     "BCM5787M",
 },
 {
     0x14e4, 0x1694,
     "BCM57790",
 },
 {
     0x14e4, 0x1696,
     "BCM5782",
 },
 {
     0x14e4, 0x1698,
     "BCM5784",
 },
 {
     0x14e4, 0x1699,
     "BCM5785G",
 },
 {
     0x14e4, 0x169a,
     "BCM5786",
 },
 {
     0x14e4, 0x169b,
     "BCM5787",
 },
 {
     0x14e4, 0x169c,
     "BCM5788",
 },
 {
     0x14e4, 0x169d,
     "BCM5789",
 },
 {
     0x14e4, 0x16a0,
     "BCM5785F",
 },
 {
     0x14e4, 0x16a1,
     "BCM57840",
 },
 {
     0x14e4, 0x16a2,
     "BCM57840",
 },
 {
     0x14e4, 0x16a4,
     "BCM57840 MF",
 },
 {
     0x14e4, 0x16a5,
     "BCM57800 MF",
 },
 {
     0x14e4, 0x16a6,
     "BCM5702X",
 },
 {
     0x14e4, 0x16a7,
     "BCM5703X",
 },
 {
     0x14e4, 0x16a8,
     "BCM5704S",
 },
 {
     0x14e4, 0x16a9,
     "BCM57800 VF",
 },
 {
     0x14e4, 0x16aa,
     "BCM5706S",
 },
 {
     0x14e4, 0x16ab,
     "BCM57840 OBS MF",
 },
 {
     0x14e4, 0x16ac,
     "BCM5708S",
 },
 {
     0x14e4, 0x16ad,
     "BCM57840 VF",
 },
 {
     0x14e4, 0x16ae,
     "BCM57810 MF",
 },
 {
     0x14e4, 0x16af,
     "BCM57810 VF",
 },
 {
     0x14e4, 0x16b0,
     "BCM57761",
 },
 {
     0x14e4, 0x16b1,
     "BCM57781",
 },
 {
     0x14e4, 0x16b2,
     "BCM57791",
 },
 {
     0x14e4, 0x16b3,
     "BCM57786",
 },
 {
     0x14e4, 0x16b4,
     "BCM57765",
 },
 {
     0x14e4, 0x16b5,
     "BCM57785",
 },
 {
     0x14e4, 0x16b6,
     "BCM57795",
 },
 {
     0x14e4, 0x16b7,
     "BCM57782",
 },
 {
     0x14e4, 0x16bc,
     "SD Host Controller",
 },
 {
     0x14e4, 0x16c6,
     "BCM5702 Alt",
 },
 {
     0x14e4, 0x16c7,
     "BCM5703 Alt",
 },
 {
     0x14e4, 0x16dd,
     "BCM5781",
 },
 {
     0x14e4, 0x16f3,
     "BCM5727",
 },
 {
     0x14e4, 0x16f7,
     "BCM5753",
 },
 {
     0x14e4, 0x16fd,
     "BCM5753M",
 },
 {
     0x14e4, 0x16fe,
     "BCM5753F",
 },
 {
     0x14e4, 0x16ff,
     "BCM5903M",
 },
 {
     0x14e4, 0x170c,
     "BCM4401B1",
 },
 {
     0x14e4, 0x170d,
     "BCM5901",
 },
 {
     0x14e4, 0x170e,
     "BCM5901A2",
 },
 {
     0x14e4, 0x170f,
     "BCM5903F",
 },
 {
     0x14e4, 0x1712,
     "BCM5906",
 },
 {
     0x14e4, 0x1713,
     "BCM5906M",
 },
 {
     0x14e4, 0x4301,
     "BCM4303",
 },
 {
     0x14e4, 0x4307,
     "BCM4307",
 },
 {
     0x14e4, 0x4311,
     "BCM4311",
 },
 {
     0x14e4, 0x4312,
     "BCM4312",
 },
 {
     0x14e4, 0x4315,
     "BCM4315",
 },
 {
     0x14e4, 0x4318,
     "BCM4318",
 },
 {
     0x14e4, 0x4319,
     "BCM4319",
 },
 {
     0x14e4, 0x4320,
     "BCM4306",
 },
 {
     0x14e4, 0x4321,
     "BCM4306",
 },
 {
     0x14e4, 0x4322,
     "Serial",
 },
 {
     0x14e4, 0x4324,
     "BCM4309",
 },
 {
     0x14e4, 0x4325,
     "BCM43XG",
 },
 {
     0x14e4, 0x4328,
     "BCM4321",
 },
 {
     0x14e4, 0x4329,
     "BCM4321",
 },
 {
     0x14e4, 0x432b,
     "BCM4322",
 },
 {
     0x14e4, 0x4331,
     "BCM4331",
 },
 {
     0x14e4, 0x4333,
     "Serial",
 },
 {
     0x14e4, 0x4344,
     "Serial",
 },
 {
     0x14e4, 0x4353,
     "BCM43224",
 },
 {
     0x14e4, 0x4357,
     "BCM43225",
 },
 {
     0x14e4, 0x4358,
     "BCM43227",
 },
 {
     0x14e4, 0x43a0,
     "BCM4360",
 },
 {
     0x14e4, 0x43a3,
     "BCM4350",
 },
 {
     0x14e4, 0x43ba,
     "BCM43602",
 },
 {
     0x14e4, 0x43ec,
     "BCM4356",
 },
 {
     0x14e4, 0x4401,
     "BCM4401",
 },
 {
     0x14e4, 0x4402,
     "BCM4401B0",
 },
 {
     0x14e4, 0x4727,
     "BCM4313",
 },
 {
     0x14e4, 0x5801,
     "5801",
 },
 {
     0x14e4, 0x5802,
     "5802",
 },
 {
     0x14e4, 0x5805,
     "5805",
 },
 {
     0x14e4, 0x5820,
     "5820",
 },
 {
     0x14e4, 0x5821,
     "5821",
 },
 {
     0x14e4, 0x5822,
     "5822",
 },
 {
     0x14e4, 0x5823,
     "5823",
 },
 {
     0x14e4, 0x5825,
     "5825",
 },
 {
     0x14e4, 0x5860,
     "5860",
 },
 {
     0x14e4, 0x5861,
     "5861",
 },
 {
     0x14e4, 0x5862,
     "5862",
 },
 {
     0x1657, 0x0013,
     "425/825/42B/82B",
 },
 {
     0x1657, 0x0014,
     "1010/1020/1007/1741",
 },
 {
     0x1657, 0x0017,
     "415/815/41B/81B",
 },
 {
     0x1657, 0x0021,
     "804",
 },
 {
     0x1657, 0x0022,
     "1860",
 },
 {
     0x1657, 0x0646,
     "410/420",
 },
 {
     0x109e, 0x0350,
     "BT848",
 },
 {
     0x109e, 0x0351,
     "BT849",
 },
 {
     0x109e, 0x036e,
     "BT878",
 },
 {
     0x109e, 0x036f,
     "BT879",
 },
 {
     0x109e, 0x0878,
     "BT878 Audio",
 },
 {
     0x109e, 0x0879,
     "BT879 Audio",
 },
 {
     0x109e, 0x8474,
     "Bt8474 HDLC",
 },
 {
     0x104b, 0x0140,
     "MultiMaster NC",
 },
 {
     0x104b, 0x1040,
     "MultiMaster",
 },
 {
     0x104b, 0x8130,
     "FlashPoint",
 },
 {
     0x6374, 0x6773,
     "GPPCI",
 },
 {
     0x177d, 0x0001,
     "NITROX XL",
 },
 {
     0x177d, 0x0003,
     "NITROX Lite",
 },
 {
     0x177d, 0x0010,
     "NITROX PX",
 },
 {
     0x177d, 0x0070,
     "OCTEON Plus CN50XX",
 },
 {
     0x123f, 0x8888,
     "Cinemaster",
 },
 {
     0x1425, 0x0006,
     "Nx10 10GbE",
 },
 {
     0x1425, 0x0020,
     "PE9000 10GbE",
 },
 {
     0x1425, 0x0021,
     "T302E 10GbE",
 },
 {
     0x1425, 0x0022,
     "T310E 10GbE",
 },
 {
     0x1425, 0x0023,
     "T320X 10GbE",
 },
 {
     0x1425, 0x0024,
     "T302X 10GbE",
 },
 {
     0x1425, 0x0025,
     "T320E 10GbE",
 },
 {
     0x1425, 0x0026,
     "T310X 10GbE",
 },
 {
     0x1425, 0x0030,
     "T3B10 10GbE",
 },
 {
     0x1425, 0x0031,
     "T3B20 10GbE",
 },
 {
     0x1425, 0x0032,
     "T3B02 10GbE",
 },
 {
     0x102c, 0x00b8,
     "64310",
 },
 {
     0x102c, 0x00d8,
     "65545",
 },
 {
     0x102c, 0x00dc,
     "65548",
 },
 {
     0x102c, 0x00e0,
     "65550",
 },
 {
     0x102c, 0x00e4,
     "65554",
 },
 {
     0x102c, 0x00e5,
     "65555",
 },
 {
     0x102c, 0x00f4,
     "68554",
 },
 {
     0x102c, 0x00c0,
     "69000",
 },
 {
     0x102c, 0x0c30,
     "69030",
 },
 {
     0x1013, 0x0038,
     "CL-GD7548",
 },
 {
     0x1013, 0x00a0,
     "CL-GD5430",
 },
 {
     0x1013, 0x00a4,
     "CL-GD5434-4",
 },
 {
     0x1013, 0x00a8,
     "CL-GD5434-8",
 },
 {
     0x1013, 0x00ac,
     "CL-GD5436",
 },
 {
     0x1013, 0x00b8,
     "CL-GD5446",
 },
 {
     0x1013, 0x00bc,
     "CL-GD5480",
 },
 {
     0x1013, 0x00d0,
     "CL-GD5462",
 },
 {
     0x1013, 0x00d4,
     "CL-GD5464",
 },
 {
     0x1013, 0x00d6,
     "CL-GD5465",
 },
 {
     0x1013, 0x1100,
     "CL-PD6729",
 },
 {
     0x1013, 0x1110,
     "CL-PD6832 CardBus",
 },
 {
     0x1013, 0x1113,
     "CL-PD6833 CardBus",
 },
 {
     0x1013, 0x1200,
     "CL-GD7542",
 },
 {
     0x1013, 0x1202,
     "CL-GD7543",
 },
 {
     0x1013, 0x1204,
     "CL-GD7541",
 },
 {
     0x1013, 0x6001,
     "CS4610 SoundFusion",
 },
 {
     0x1013, 0x6004,
     "CS4615",
 },
 {
     0x1013, 0x6003,
     "CS4280/46xx CrystalClear",
 },
 {
     0x1013, 0x6005,
     "CS4281 CrystalClear",
 },
 {
     0x1137, 0x0023,
     "VIC PCIE",
 },
 {
     0x1137, 0x0040,
     "VIC PCIE",
 },
 {
     0x1137, 0x0041,
     "VIC PCIE",
 },
 {
     0x1137, 0x0042,
     "VIC Management",
 },
 {
     0x1137, 0x0043,
     "VIC Ethernet",
 },
 {
     0x1137, 0x0045,
     "VIC FCoE",
 },
 {
     0x1095, 0x0240,
     "AAR-1210SA",
 },
 {
     0x1095, 0x0242,
     "AAR-1220SA",
 },
 {
     0x1095, 0x0244,
     "AAR-1225SA",
 },
 {
     0x1095, 0x0640,
     "PCI0640",
 },
 {
     0x1095, 0x0642,
     "PCI0642",
 },
 {
     0x1095, 0x0643,
     "PCI0643",
 },
 {
     0x1095, 0x0646,
     "PCI0646",
 },
 {
     0x1095, 0x0647,
     "PCI0647",
 },
 {
     0x1095, 0x0648,
     "PCI0648",
 },
 {
     0x1095, 0x0649,
     "PCI0649",
 },
 {
     0x1095, 0x0650,
     "PCI0650A",
 },
 {
     0x1095, 0x0670,
     "USB0670",
 },
 {
     0x1095, 0x0673,
     "USB0673",
 },
 {
     0x1095, 0x0680,
     "PCI0680",
 },
 {
     0x1095, 0x3112,
     "SiI3112 SATA",
 },
 {
     0x1095, 0x3114,
     "SiI3114 SATA",
 },
 {
     0x1095, 0x3124,
     "SiI3124 SATA",
 },
 {
     0x1095, 0x3131,
     "SiI3131 SATA",
 },
 {
     0x1095, 0x3132,
     "SiI3132 SATA",
 },
 {
     0x1095, 0x3512,
     "SiI3512 SATA",
 },
 {
     0x1095, 0x3531,
     "SiI3531 SATA",
 },
 {
     0x1371, 0x434e,
     "GigaCard",
 },
 {
     0x1109, 0x1400,
     "EX110TX",
 },
 {
     0x0e11, 0x0001,
     "EISA",
 },
 {
     0x0e11, 0x0002,
     "ISA",
 },
 {
     0x0e11, 0x0046,
     "Smart Array 64xx",
 },
 {
     0x0e11, 0x1000,
     "Triflex PCI",
 },
 {
     0x0e11, 0x2000,
     "Triflex PCI",
 },
 {
     0x0e11, 0x3032,
     "QVision",
 },
 {
     0x0e11, 0x3033,
     "QVision 1280/p",
 },
 {
     0x0e11, 0x3034,
     "QVision",
 },
 {
     0x0e11, 0x4000,
     "Triflex PCI",
 },
 {
     0x0e11, 0x4070,
     "Smart Array 5300",
 },
 {
     0x0e11, 0x4080,
     "Smart Array 5i",
 },
 {
     0x0e11, 0x4082,
     "Smart Array 532",
 },
 {
     0x0e11, 0x4083,
     "Smart Array 5312",
 },
 {
     0x0e11, 0x4091,
     "Smart Array 6i",
 },
 {
     0x0e11, 0x409a,
     "Smart Array 641",
 },
 {
     0x0e11, 0x409b,
     "Smart Array 642",
 },
 {
     0x0e11, 0x409c,
     "Smart Array 6400",
 },
 {
     0x0e11, 0x409d,
     "Smart Array 6400 EM",
 },
 {
     0x0e11, 0x409e,
     "Smart Array 6422",
 },
 {
     0x0e11, 0x6010,
     "Hotplug PCI",
 },
 {
     0x0e11, 0x7020,
     "USB",
 },
 {
     0x0e11, 0xa0f0,
     "Netelligent ASMC",
 },
 {
     0x0e11, 0xa0f3,
     "ISA",
 },
 {
     0x0e11, 0xa0f7,
     "PCI Hotplug",
 },
 {
     0x0e11, 0xa0f8,
     "USB OpenHost",
 },
 {
     0x0e11, 0xae10,
     "SMART2P RAID",
 },
 {
     0x0e11, 0xae29,
     "ISA",
 },
 {
     0x0e11, 0xae2b,
     "ISAPnP",
 },
 {
     0x0e11, 0xae32,
     "Netelligent 10/100TX",
 },
 {
     0x0e11, 0xae33,
     "Netelligent IDE",
 },
 {
     0x0e11, 0xae34,
     "Netelligent 10 T",
 },
 {
     0x0e11, 0xae35,
     "Integrated NetFlex 3/P",
 },
 {
     0x0e11, 0xae40,
     "DP Netelligent 10/100TX",
 },
 {
     0x0e11, 0xae43,
     "ProLiant Netelligent 10/100TX",
 },
 {
     0x0e11, 0xae69,
     "ISA",
 },
 {
     0x0e11, 0xae6c,
     "PCI",
 },
 {
     0x0e11, 0xae6d,
     "PCI",
 },
 {
     0x0e11, 0xb011,
     "Embedded Netelligent 10/100TX",
 },
 {
     0x0e11, 0xb012,
     "Netelligent 10 T/2 PCI",
 },
 {
     0x0e11, 0xb030,
     "Netelligent 10/100TX",
 },
 {
     0x0e11, 0xb060,
     "Smart Array 5300 rev.2",
 },
 {
     0x0e11, 0xb178,
     "Smart Array 5i/532 rev.2",
 },
 {
     0x0e11, 0xb203,
     "iLO",
 },
 {
     0x0e11, 0xb204,
     "iLO",
 },
 {
     0x0e11, 0xf130,
     "NetFlex 3/P",
 },
 {
     0x0e11, 0xf150,
     "NetFlex 3/PB",
 },
 {
     0x11f6, 0x1401,
     "Compexe",
 },
 {
     0x11f6, 0x2011,
     "RL100-ATX 10/100",
 },
 {
     0x11f6, 0x9881,
     "PMAC 98713",
 },
 {
     0x14f1, 0x1033,
     "56k Winmodem",
 },
 {
     0x14f1, 0x1036,
     "56k Winmodem",
 },
 {
     0x14f1, 0x1803,
     "10/100",
 },
 {
     0x14f1, 0x1804,
     "10/100",
 },
 {
     0x14f1, 0x2443,
     "SoftK56 PCI",
 },
 {
     0x14f1, 0x2f00,
     "HSF 56k HSFi",
 },
 {
     0x14f1, 0x8478,
     "MUSYCC CN8478",
 },
 {
     0x14f1, 0x8474,
     "MUSYCC CN8474",
 },
 {
     0x14f1, 0x8472,
     "MUSYCC CN8472",
 },
 {
     0x14f1, 0x8471,
     "MUSYCC CN8471",
 },
 {
     0x14f1, 0x8800,
     "CX2388x",
 },
 {
     0x14f1, 0x8801,
     "CX2388x Audio",
 },
 {
     0x14f1, 0x8802,
     "CX2388x MPEG",
 },
 {
     0x14f1, 0x8804,
     "CX2388x IR",
 },
 {
     0x14f1, 0x8811,
     "CX2388x Audio",
 },
 {
     0x14f1, 0x8852,
     "CX23885",
 },
 {
     0x1080, 0x0600,
     "82C599 VLB",
 },
 {
     0x1080, 0xc693,
     "CY82C693U ISA",
 },
 {
     0x1259, 0xa117,
     "FEther CB-TXD 10/100",
 },
 {
     0x1259, 0xa11e,
     "FEther II CB-TXD 10/100",
 },
 {
     0x1259, 0xc107,
     "CG-LAPCIGT",
 },
 {
     0x07aa, 0x0044,
     "RTL8192E",
 },
 {
     0x07aa, 0x0045,
     "RTL8190P",
 },
 {
     0x07aa, 0x0046,
     "RTL8190P",
 },
 {
     0x07aa, 0x0047,
     "RTL8192E",
 },
 {
     0x118c, 0x0014,
     "C-Bus II-PCI",
 },
 {
     0x118c, 0x1117,
     "Cache Coherency Filter",
 },
 {
     0x1102, 0x0002,
     "SoundBlaster Live",
 },
 {
     0x1102, 0x0003,
     "SoundBlaster AWE64D",
 },
 {
     0x1102, 0x0004,
     "SoundBlaster Audigy",
 },
 {
     0x1102, 0x0005,
     "SoundBlaster X-Fi",
 },
 {
     0x1102, 0x0006,
     "SoundBlaster Live",
 },
 {
     0x1102, 0x0007,
     "SoundBlaster Audigy LS",
 },
 {
     0x1102, 0x0008,
     "SoundBlaster Audigy 2",
 },
 {
     0x1102, 0x0009,
     "SoundBlaster X-Fi Xtreme",
 },
 {
     0x1102, 0x4001,
     "Firewire",
 },
 {
     0x1102, 0x7002,
     "PCI Gameport Joystick",
 },
 {
     0x1102, 0x7003,
     "SoundBlaster Audigy Digital",
 },
 {
     0x1102, 0x7004,
     "PCI Gameport Joystick",
 },
 {
     0x1102, 0x7005,
     "PCI Gameport Joystick",
 },
 {
     0x1102, 0x7006,
     "PCIE-PCI",
 },
 {
     0x1102, 0x8938,
     "Ectiva 1938",
 },
 {
     0x120e, 0x0100,
     "Cyclom-Y below 1M",
 },
 {
     0x120e, 0x0101,
     "Cyclom-Y",
 },
 {
     0x120e, 0x0102,
     "Cyclom-4Y below 1M",
 },
 {
     0x120e, 0x0103,
     "Cyclom-4Y",
 },
 {
     0x120e, 0x0104,
     "Cyclom-8Y below 1M",
 },
 {
     0x120e, 0x0105,
     "Cyclom-8Y",
 },
 {
     0x120e, 0x0200,
     "Cyclom-Z below 1M",
 },
 {
     0x120e, 0x0201,
     "Cyclom-Z",
 },
 {
     0x113c, 0x0700,
     "IQ80310",
 },
 {
     0x1078, 0x0000,
     "Cx5510",
 },
 {
     0x1078, 0x0001,
     "GXm PCI",
 },
 {
     0x1078, 0x0002,
     "GXm ISA",
 },
 {
     0x1078, 0x0100,
     "Cx5530 South",
 },
 {
     0x1078, 0x0101,
     "Cx5530 SMI",
 },
 {
     0x1078, 0x0102,
     "Cx5530 IDE",
 },
 {
     0x1078, 0x0103,
     "Cx5530 XpressAUDIO",
 },
 {
     0x1078, 0x0104,
     "Cx5530 Video",
 },
 {
     0x1282, 0x9009,
     "DM9009",
 },
 {
     0x1282, 0x9100,
     "DM9100",
 },
 {
     0x1282, 0x9102,
     "DM9102",
 },
 {
     0x1282, 0x9132,
     "DM9132",
 },
 {
     0x6666, 0x0004,
     "PCCOM 2-port",
 },
 {
     0x6666, 0x0001,
     "PCCOM 4-port",
 },
 {
     0x6666, 0x0002,
     "PCCOM 8-port",
 },
 {
     0x1011, 0x0001,
     "21050",
 },
 {
     0x1011, 0x0002,
     "21040",
 },
 {
     0x1011, 0x0004,
     "21030",
 },
 {
     0x1011, 0x0007,
     "Zephyr NV-RAM",
 },
 {
     0x1011, 0x0008,
     "KZPSA",
 },
 {
     0x1011, 0x0009,
     "21140",
 },
 {
     0x1011, 0x000d,
     "TGA2",
 },
 {
     0x1011, 0x000f,
     "DEFPA",
 },
 {
     0x1011, 0x0014,
     "21041",
 },
 {
     0x1011, 0x0016,
     "DGLPB",
 },
 {
     0x1011, 0x0017,
     "ZLXP-L2",
 },
 {
     0x1011, 0x0018,
     "Memory Channel Cluster Controller",
 },
 {
     0x1011, 0x0019,
     "21142/3",
 },
 {
     0x1011, 0x001a,
     "Farallon PN9000SX",
 },
 {
     0x1011, 0x0021,
     "21052",
 },
 {
     0x1011, 0x0022,
     "21150",
 },
 {
     0x1011, 0x0023,
     "21150-BC",
 },
 {
     0x1011, 0x0024,
     "21152",
 },
 {
     0x1011, 0x0025,
     "21153",
 },
 {
     0x1011, 0x0026,
     "21154",
 },
 {
     0x1011, 0x0046,
     "21554",
 },
 {
     0x1011, 0x1065,
     "SWXCR RAID",
 },
 {
     0x1028, 0x0001,
     "PERC 2/Si",
 },
 {
     0x1028, 0x0002,
     "PERC 3/Di",
 },
 {
     0x1028, 0x0003,
     "PERC 3/Si",
 },
 {
     0x1028, 0x0004,
     "PERC 3/Si",
 },
 {
     0x1028, 0x0007,
     "DRAC 3 Add-in",
 },
 {
     0x1028, 0x0008,
     "DRAC 3 Virtual UART",
 },
 {
     0x1028, 0x0009,
     "DRAC 3 Embedded/Optional",
 },
 {
     0x1028, 0x000a,
     "PERC 3/Di",
 },
 {
     0x1028, 0x000c,
     "DRAC 4 Embedded/Optional",
 },
 {
     0x1028, 0x000d,
     "DRAC 3 Optional",
 },
 {
     0x1028, 0x000e,
     "PERC 4/Di i960",
 },
 {
     0x1028, 0x000f,
     "PERC 4/Di Verde",
 },
 {
     0x1028, 0x0011,
     "DRAC 4",
 },
 {
     0x1028, 0x0012,
     "DRAC 4 Virtual UART",
 },
 {
     0x1028, 0x0013,
     "PERC 4e/Di",
 },
 {
     0x1028, 0x0014,
     "DRAC 4 SMIC",
 },
 {
     0x1028, 0x00cf,
     "PERC 3/Di",
 },
 {
     0x1028, 0x00d0,
     "PERC 3/Si",
 },
 {
     0x1028, 0x00d1,
     "PERC 3/Di",
 },
 {
     0x1028, 0x00d9,
     "PERC 3/Di",
 },
 {
     0x1028, 0x0106,
     "PERC 3/Di",
 },
 {
     0x1028, 0x011b,
     "PERC 3/Di",
 },
 {
     0x1028, 0x0121,
     "PERC 3/Di",
 },
 {
     0x1028, 0x0015,
     "PERC 5",
 },
 {
     0x1500, 0x1320,
     "RhineII",
 },
 {
     0x1500, 0x1360,
     "8139",
 },
 {
     0x1092, 0x9001,
     "Viper/PCI",
 },
 {
     0x1186, 0x1002,
     "DFE-550TX",
 },
 {
     0x1186, 0x1300,
     "DFE-530TX+",
 },
 {
     0x1186, 0x1340,
     "DFE-690TXD",
 },
 {
     0x1186, 0x1561,
     "DRP32TXD",
 },
 {
     0x1186, 0x3300,
     "DWL-610",
 },
 {
     0x1186, 0x4000,
     "DGE-550T",
 },
 {
     0x1186, 0x4001,
     "DGE-550SX",
 },
 {
     0x1186, 0x4200,
     "DFE-520TX C1",
 },
 {
     0x1186, 0x4300,
     "DGE-528T",
 },
 {
     0x1186, 0x4302,
     "DGE-530T C1",
 },
 {
     0x1186, 0x4b00,
     "DGE-560T",
 },
 {
     0x1186, 0x4b01,
     "DGE-530T B1",
 },
 {
     0x1186, 0x4b02,
     "DGE-560SX",
 },
 {
     0x1186, 0x4b03,
     "DGE-550T B1",
 },
 {
     0x1186, 0x4c00,
     "DGE-530T A1",
 },
 {
     0x00ec, 0x8139,
     "DFE-530TX+",
 },
 {
     0x1044, 0x1012,
     "Memory Control",
 },
 {
     0x1044, 0xa400,
     "SmartCache/Raid",
 },
 {
     0x1044, 0xa500,
     "PCI-PCI",
 },
 {
     0x1044, 0xa501,
     "SmartRAID",
 },
 {
     0x1044, 0xa511,
     "SmartRAID 2005S",
 },
 {
     0x11c8, 0x0658,
     "PCI-SCI",
 },
 {
     0x134a, 0x0002,
     "DMX3194U",
 },
 {
     0x0675, 0x1702,
     "IS64PH ISDN",
 },
 {
     0x1432, 0x7708,
     "RT2860",
 },
 {
     0x1432, 0x7728,
     "RT2860",
 },
 {
     0x1432, 0x7758,
     "RT2860",
 },
 {
     0x1432, 0x7727,
     "RT2860",
 },
 {
     0x1432, 0x7738,
     "RT2860",
 },
 {
     0x1432, 0x7748,
     "RT2860",
 },
 {
     0x1432, 0x7768,
     "RT2860",
 },
 {
     0x111a, 0x0000,
     "155P-MF1 ATM",
 },
 {
     0x111a, 0x0002,
     "155P-MF1 ATM",
 },
 {
     0x111a, 0x0005,
     "25SS-3010 ATM",
 },
 {
     0x111a, 0x1023,
     "SpeedStream 1023",
 },
 {
     0x1048, 0x1000,
     "QuickStep 1000 ISDN",
 },
 {
     0x10df, 0x10df,
     "LPFC",
 },
 {
     0x10df, 0x1ae5,
     "LP6000",
 },
 {
     0x10df, 0xe220,
     "Lancer 10GbE",
 },
 {
     0x10df, 0xe228,
     "Lancer 10GbE VF",
 },
 {
     0x10df, 0xf011,
     "LPe121",
 },
 {
     0x10df, 0xf015,
     "LPe1250",
 },
 {
     0x10df, 0xf095,
     "LP952",
 },
 {
     0x10df, 0xf098,
     "LP982",
 },
 {
     0x10df, 0xf0a1,
     "LP101",
 },
 {
     0x10df, 0xf0a5,
     "LP1050",
 },
 {
     0x10df, 0xf0d1,
     "LP111",
 },
 {
     0x10df, 0xf0d5,
     "LP1150",
 },
 {
     0x10df, 0xf0e1,
     "LPe111",
 },
 {
     0x10df, 0xf0e5,
     "LPe1150",
 },
 {
     0x10df, 0xf0f5,
     "LPe1000",
 },
 {
     0x10df, 0xf0f6,
     "LPe1000-SP",
 },
 {
     0x10df, 0xf0f7,
     "LPe1002-SP",
 },
 {
     0x10df, 0xf100,
     "LPe12000",
 },
 {
     0x10df, 0xf111,
     "LPe12000-SP",
 },
 {
     0x10df, 0xf112,
     "LPe12002-SP",
 },
 {
     0x10df, 0xf700,
     "LP7000",
 },
 {
     0x10df, 0xf800,
     "LP8000",
 },
 {
     0x10df, 0xf900,
     "LP9000",
 },
 {
     0x10df, 0xf980,
     "LP9802",
 },
 {
     0x10df, 0xfa00,
     "LP10000",
 },
 {
     0x10df, 0xfb00,
     "LPX10000",
 },
 {
     0x10df, 0xfc00,
     "LP10000-S",
 },
 {
     0x10df, 0xfc10,
     "LP11000-S",
 },
 {
     0x10df, 0xfc20,
     "LPe11000-S",
 },
 {
     0x10df, 0xfc40,
     "LPe12000-S",
 },
 {
     0x10df, 0xfd00,
     "LP11000",
 },
 {
     0x10df, 0xfd11,
     "LP11000-SP",
 },
 {
     0x10df, 0xfd12,
     "LP11002-SP",
 },
 {
     0x10df, 0xfe00,
     "LPe11000",
 },
 {
     0x10df, 0xfe11,
     "LPe11000-SP",
 },
 {
     0x10df, 0xfe12,
     "LPe11002-SP",
 },
 {
     0xeace, 0x3500,
     "Endace Dag3.5",
 },
 {
     0xeace, 0x360d,
     "Endace Dag3.6D",
 },
 {
     0xeace, 0x422e,
     "Endace Dag4.22GE",
 },
 {
     0xeace, 0x4230,
     "Endace Dag4.23",
 },
 {
     0xeace, 0x423e,
     "Endace Dag4.23GE",
 },
 {
     0x1524, 0x0520,
     "Flash memory",
 },
 {
     0x1524, 0x0530,
     "Memory Stick",
 },
 {
     0x1524, 0x0550,
     "SD Controller",
 },
 {
     0x1524, 0x0551,
     "SD/MMC",
 },
 {
     0x1524, 0x1211,
     "CB-1211 CardBus",
 },
 {
     0x1524, 0x1225,
     "CB-1225 CardBus",
 },
 {
     0x1524, 0x1410,
     "CB-1410 CardBus",
 },
 {
     0x1524, 0x1411,
     "CB-710 CardBus",
 },
 {
     0x1524, 0x1412,
     "CB-712 CardBus",
 },
 {
     0x1524, 0x1420,
     "CB-1420 CardBus",
 },
 {
     0x1524, 0x1421,
     "CB-720 CardBus",
 },
 {
     0x1524, 0x1422,
     "CB-722 CardBus",
 },
 {
     0x1274, 0x1371,
     "AudioPCI97",
 },
 {
     0x1274, 0x5000,
     "AudioPCI",
 },
 {
     0x1274, 0x5880,
     "CT5880",
 },
 {
     0x125d, 0x0000,
     "ES366H Modem",
 },
 {
     0x125d, 0x1968,
     "Maestro II",
 },
 {
     0x125d, 0x1969,
     "SOLO-1 AudioDrive",
 },
 {
     0x125d, 0x1978,
     "Maestro 2E",
 },
 {
     0x125d, 0x1988,
     "ES1989",
 },
 {
     0x125d, 0x1989,
     "ES1989 Modem",
 },
 {
     0x125d, 0x1998,
     "Maestro 3",
 },
 {
     0x125d, 0x1999,
     "ES1983 Modem",
 },
 {
     0x125d, 0x199a,
     "Maestro 3 Audio",
 },
 {
     0x125d, 0x2808,
     "ES366H Fax/Modem",
 },
 {
     0x125d, 0x2838,
     "ES2838/2839 SuperLink Modem",
 },
 {
     0x125d, 0x2898,
     "ES2898 Modem",
 },
 {
     0x120f, 0x0001,
     "RoadRunner HIPPI",
 },
 {
     0x120f, 0x0005,
     "RoadRunner Gig-E",
 },
 {
     0x1b6f, 0x7023,
     "EJ168 xHCI",
 },
 {
     0x1b6f, 0x7052,
     "EJ188 xHCI",
 },
 {
     0x10dd, 0x0001,
     "Freedom GBus",
 },
 {
     0x1638, 0x1100,
     "WL11000P",
 },
 {
     0x113f, 0x0808,
     "SST-64P",
 },
 {
     0x113f, 0x1010,
     "SST-128P",
 },
 {
     0x113f, 0x80C0,
     "SST-16P",
 },
 {
     0x113f, 0x80C4,
     "SST-16P",
 },
 {
     0x113f, 0x80C8,
     "SST-16P",
 },
 {
     0x113f, 0x8888,
     "SST-4p",
 },
 {
     0x113f, 0x9090,
     "SST-8p",
 },
 {
     0x13a8, 0x0152,
     "XR17C152",
 },
 {
     0x13a8, 0x0154,
     "XR17C154",
 },
 {
     0x13a8, 0x0158,
     "XR17C158",
 },
 {
     0x13a8, 0x0354,
     "XR17V354",
 },
 {
     0x1127, 0x0210,
     "ATM PCA-200",
 },
 {
     0x1127, 0x0300,
     "ATM PCA-200e",
 },
 {
     0x1319, 0x0801,
     "801 Sound",
 },
 {
     0x1957, 0x0080,
     "MPC8349E",
 },
 {
     0x1957, 0x0081,
     "MPC8349",
 },
 {
     0x1957, 0x0082,
     "MPC8347E TBGA",
 },
 {
     0x1957, 0x0083,
     "MPC8347 TBGA",
 },
 {
     0x1957, 0x0084,
     "MPC8347E PBGA",
 },
 {
     0x1957, 0x0085,
     "MPC8347 PBGA",
 },
 {
     0x1957, 0x0086,
     "MPC8343E",
 },
 {
     0x1957, 0x0087,
     "MPC8343",
 },
 {
     0x1b73, 0x1000,
     "FL1000 xHCI",
 },
 {
     0x1b73, 0x1009,
     "FL1009 xHCI",
 },
 {
     0x1b73, 0x1400,
     "FL1400 xHCI",
 },
 {
     0x10cf, 0x11a1,
     "PW008GE5",
 },
 {
     0x10cf, 0x11a2,
     "PW008GE4",
 },
 {
     0x10cf, 0x11cc,
     "PRIMEPOWER250/450 LAN",
 },
 {
     0x1aed, 0x1003,
     "ioDrive v1.2",
 },
 {
     0x1aed, 0x1005,
     "ioDrive",
 },
 {
     0x1aed, 0x1006,
     "ioXtreme",
 },
 {
     0x1aed, 0x1007,
     "ioXtreme Pro",
 },
 {
     0x1036, 0x0000,
     "TMC-18C30",
 },
 {
     0x16ab, 0x1100,
     "GL24110P03",
 },
 {
     0x16ab, 0x1101,
     "GL24110P",
 },
 {
     0x16ab, 0x1102,
     "GL24110P02",
 },
 {
     0x14bc, 0xd002,
     "Pulsar G7370 ADSL",
 },
 {
     0x5046, 0x1001,
     "PR103",
 },
 {
     0x0070, 0x13eb,
     "WinTV",
 },
 {
     0x17b3, 0xab08,
     "PN672TX 10/100",
 },
 {
     0x103c, 0x1005,
     "Visualize EG",
 },
 {
     0x103c, 0x1006,
     "Visualize FX6",
 },
 {
     0x103c, 0x1008,
     "Visualize FX4",
 },
 {
     0x103c, 0x100a,
     "Visualize FX2",
 },
 {
     0x103c, 0x1028,
     "Tach TL FibreChannel",
 },
 {
     0x103c, 0x1029,
     "Tach XL2 FibreChannel",
 },
 {
     0x103c, 0x1030,
     "J2585A",
 },
 {
     0x103c, 0x1031,
     "J2585B",
 },
 {
     0x103c, 0x1048,
     "Diva Serial Multiport",
 },
 {
     0x103c, 0x1054,
     "Elroy Ropes-PCI",
 },
 {
     0x103c, 0x108b,
     "Visualize FXe",
 },
 {
     0x103c, 0x10c1,
     "TopTools",
 },
 {
     0x103c, 0x10c2,
     "NetRaid-4M",
 },
 {
     0x103c, 0x10ed,
     "NetServer SmartIRQ",
 },
 {
     0x103c, 0x1200,
     "82557B 10/100 NIC",
 },
 {
     0x103c, 0x1229,
     "Pluto MIO",
 },
 {
     0x103c, 0x122a,
     "zx1 IOC",
 },
 {
     0x103c, 0x122e,
     "Mercury Ropes-PCI",
 },
 {
     0x103c, 0x12b4,
     "QuickSilver Ropes-PCI",
 },
 {
     0x103c, 0x1920,
     "Smart Array P430i",
 },
 {
     0x103c, 0x1921,
     "Smart Array P830i",
 },
 {
     0x103c, 0x1922,
     "Smart Array P430",
 },
 {
     0x103c, 0x1923,
     "Smart Array P431",
 },
 {
     0x103c, 0x1924,
     "Smart Array P830",
 },
 {
     0x103c, 0x1926,
     "Smart Array P731m",
 },
 {
     0x103c, 0x1928,
     "Smart Array P230i",
 },
 {
     0x103c, 0x1929,
     "Smart Array P530",
 },
 {
     0x103c, 0x192a,
     "Smart Array P531",
 },
 {
     0x103c, 0x21bd,
     "Smart Array P244br",
 },
 {
     0x103c, 0x21be,
     "Smart Array P741m",
 },
 {
     0x103c, 0x21bf,
     "Smart HBA H240ar",
 },
 {
     0x103c, 0x21c0,
     "Smart Array P440ar",
 },
 {
     0x103c, 0x21c2,
     "Smart Array P440",
 },
 {
     0x103c, 0x21c3,
     "Smart Array P441",
 },
 {
     0x103c, 0x21c5,
     "Smart Array P841",
 },
 {
     0x103c, 0x21c6,
     "Smart HBA H244br",
 },
 {
     0x103c, 0x21c7,
     "Smart HBA H240",
 },
 {
     0x103c, 0x21c8,
     "Smart HBA H241",
 },
 {
     0x103c, 0x21ca,
     "Smart Array P246br",
 },
 {
     0x103c, 0x21cb,
     "Smart Array P840",
 },
 {
     0x103c, 0x21cc,
     "Smart Array P542t",
 },
 {
     0x103c, 0x21cd,
     "Smart Array P240tr",
 },
 {
     0x103c, 0x21ce,
     "Smart HBA H240tr",
 },
 {
     0x103c, 0x3210,
     "Smart Array V100",
 },
 {
     0x103c, 0x3211,
     "Smart Array E200i",
 },
 {
     0x103c, 0x3212,
     "Smart Array E200",
 },
 {
     0x103c, 0x3213,
     "Smart Array E200i",
 },
 {
     0x103c, 0x3214,
     "Smart Array E200i",
 },
 {
     0x103c, 0x3215,
     "Smart Array E200i",
 },
 {
     0x103c, 0x3220,
     "Smart Array",
 },
 {
     0x103c, 0x3222,
     "Smart Array",
 },
 {
     0x103c, 0x3223,
     "Smart Array P800",
 },
 {
     0x103c, 0x3225,
     "Smart Array P600",
 },
 {
     0x103c, 0x3230,
     "Smart Array",
 },
 {
     0x103c, 0x3231,
     "Smart Array",
 },
 {
     0x103c, 0x3232,
     "Smart Array",
 },
 {
     0x103c, 0x3233,
     "Smart Array E500",
 },
 {
     0x103c, 0x3234,
     "Smart Array P400",
 },
 {
     0x103c, 0x3235,
     "Smart Array P400i",
 },
 {
     0x103c, 0x3236,
     "Smart Array",
 },
 {
     0x103c, 0x3237,
     "Smart Array E500",
 },
 {
     0x103c, 0x3238,
     "Smart Array",
 },
 {
     0x103c, 0x3239,
     "Smart Array",
 },
 {
     0x103c, 0x323a,
     "Smart Array",
 },
 {
     0x103c, 0x323b,
     "Smart Array",
 },
 {
     0x103c, 0x323c,
     "Smart Array",
 },
 {
     0x103c, 0x323d,
     "Smart Array P700m",
 },
 {
     0x103c, 0x3241,
     "Smart Array P212",
 },
 {
     0x103c, 0x3243,
     "Smart Array P410",
 },
 {
     0x103c, 0x3245,
     "Smart Array P410i",
 },
 {
     0x103c, 0x3247,
     "Smart Array P411",
 },
 {
     0x103c, 0x3249,
     "Smart Array P812",
 },
 {
     0x103c, 0x324a,
     "Smart Array P712m",
 },
 {
     0x103c, 0x324b,
     "Smart Array P711m",
 },
 {
     0x103c, 0x3300,
     "USB",
 },
 {
     0x103c, 0x3301,
     "iLO3 Serial",
 },
 {
     0x103c, 0x3306,
     "iLO3 Slave",
 },
 {
     0x103c, 0x3307,
     "iLO3 Management",
 },
 {
     0x103c, 0x3308,
     "iLO3 Watchdog",
 },
 {
     0x103c, 0x3302,
     "IPMI",
 },
 {
     0x103c, 0x3350,
     "Smart Array P222",
 },
 {
     0x103c, 0x3351,
     "Smart Array P420",
 },
 {
     0x103c, 0x3352,
     "Smart Array P421",
 },
 {
     0x103c, 0x3353,
     "Smart Array P822",
 },
 {
     0x103c, 0x3354,
     "Smart Array P420i",
 },
 {
     0x103c, 0x3355,
     "Smart Array P220i",
 },
 {
     0x103c, 0x3356,
     "Smart Array P721m",
 },
 {
     0x13a3, 0x0005,
     "7751",
 },
 {
     0x13a3, 0x0006,
     "6500",
 },
 {
     0x13a3, 0x0007,
     "7811",
 },
 {
     0x13a3, 0x0012,
     "7951",
 },
 {
     0x13a3, 0x0014,
     "7814/7851/7854",
 },
 {
     0x13a3, 0x0016,
     "8065",
 },
 {
     0x13a3, 0x0017,
     "8165",
 },
 {
     0x13a3, 0x0018,
     "8154",
 },
 {
     0x13a3, 0x001d,
     "7956",
 },
 {
     0x13a3, 0x0020,
     "7955/7954",
 },
 {
     0x3388, 0x0020,
     "HB6",
 },
 {
     0x3388, 0x0021,
     "HB6",
 },
 {
     0x3388, 0x0022,
     "HB4",
 },
 {
     0x3388, 0x8011,
     "Host",
 },
 {
     0x3388, 0x8012,
     "ISA",
 },
 {
     0x3388, 0x8013,
     "EIDE",
 },
 {
     0x1054, 0x0101,
     "MSVCC01 Video Capture",
 },
 {
     0x1054, 0x3505,
     "SH7751 PCI",
 },
 {
     0x1054, 0x350e,
     "SH7751R PCI",
 },
 {
     0x1037, 0x2100,
     "ISP2100",
 },
 {
     0x19e5, 0x1711,
     "HiBMC VGA",
 },
 {
     0x1014, 0x0002,
     "MCA",
 },
 {
     0x1014, 0x0005,
     "CPU - Alta Lite",
 },
 {
     0x1014, 0x0007,
     "CPU - Alta MP",
 },
 {
     0x1014, 0x000a,
     "ISA w/PnP",
 },
 {
     0x1014, 0x0017,
     "CPU",
 },
 {
     0x1014, 0x0018,
     "Auto LANStreamer",
 },
 {
     0x1014, 0x001b,
     "GXT-150P",
 },
 {
     0x1014, 0x001d,
     "82G2675",
 },
 {
     0x1014, 0x0020,
     "MCA",
 },
 {
     0x1014, 0x0022,
     "82351",
 },
 {
     0x1014, 0x002e,
     "ServeRAID",
 },
 {
     0x1014, 0x0036,
     "Miami/PCI",
 },
 {
     0x1014, 0x003e,
     "Olympic",
 },
 {
     0x1014, 0x0057,
     "i82557B 10/100",
 },
 {
     0x1014, 0x010f,
     "RSA",
 },
 {
     0x1014, 0x0170,
     "FireGL2",
 },
 {
     0x1014, 0x01a7,
     "133 PCIX-PCIX",
 },
 {
     0x1014, 0x01bd,
     "ServeRAID",
 },
 {
     0x1014, 0x0295,
     "4810 BSP",
 },
 {
     0x1014, 0x0297,
     "4810 SCC",
 },
 {
     0x1014, 0x02a1,
     "Calgary IOMMU",
 },
 {
     0x1412, 0x1712,
     "Envy24 I/O Ctrlr",
 },
 {
     0x1412, 0x1724,
     "Envy24PT/HT Audio",
 },
 {
     0x111d, 0x0001,
     "77201/77211 ATM",
 },
 {
     0x111d, 0x8018,
     "89HPES12N3A",
 },
 {
     0x111d, 0x801c,
     "89HPES24N3A",
 },
 {
     0x111d, 0x802e,
     "89HPES24T6",
 },
 {
     0x111d, 0x803a,
     "89HPES4T4",
 },
 {
     0x111d, 0x803c,
     "89HPES5T5",
 },
 {
     0x111d, 0x806a,
     "89HPES24T3G2",
 },
 {
     0x111d, 0x8077,
     "89HPES64H16G2",
 },
 {
     0x111d, 0x807a,
     "89HPES48H12G2",
 },
 {
     0x111d, 0x80bf,
     "89H64H16G3",
 },
 {
     0x494f, 0x22c0,
     "WDT 50x Watchdog Timer",
 },
 {
     0x1101, 0x0850,
     "INIC-850",
 },
 {
     0x1101, 0x1060,
     "INIC-1060",
 },
 {
     0x1101, 0x9400,
     "INIC-940",
 },
 {
     0x1101, 0x9401,
     "INIC-941",
 },
 {
     0x1101, 0x9500,
     "INIC-950",
 },
 {
     0x80ee, 0xbeef,
     "VirtualBox Graphics Adapter",
 },
 {
     0x80ee, 0xcafe,
     "VirtualBox Guest Service",
 },
 {
     0x17fe, 0x2120,
     "IPN2120",
 },
 {
     0x17fe, 0x2220,
     "IPN2220",
 },
 {
     0x10e0, 0x5026,
     "5026",
 },
 {
     0x10e0, 0x5027,
     "5027",
 },
 {
     0x10e0, 0x5028,
     "5028",
 },
 {
     0x10e0, 0x8849,
     "8849",
 },
 {
     0x10e0, 0x8853,
     "8853",
 },
 {
     0x10e0, 0x9128,
     "Twin Turbo 128",
 },
 {
     0x10e0, 0x9135,
     "Twin Turbo 3D",
 },
 {
     0x8086, 0x0008,
     "EES ISA",
 },
 {
     0x8086, 0x0039,
     "21145",
 },
 {
     0x8086, 0x0040,
     "Core Host",
 },
 {
     0x8086, 0x0041,
     "Core PCIE",
 },
 {
     0x8086, 0x0042,
     "HD Graphics",
 },
 {
     0x8086, 0x0043,
     "Core PCIE",
 },
 {
     0x8086, 0x0044,
     "Core Host",
 },
 {
     0x8086, 0x0045,
     "3400 PCIE",
 },
 {
     0x8086, 0x0046,
     "HD Graphics",
 },
 {
     0x8086, 0x0048,
     "Core Host",
 },
 {
     0x8086, 0x0049,
     "Core PCIE",
 },
 {
     0x8086, 0x0082,
     "Centrino Advanced-N 6205",
 },
 {
     0x8086, 0x0083,
     "WiFi Link 1000",
 },
 {
     0x8086, 0x0084,
     "WiFi Link 1000",
 },
 {
     0x8086, 0x0085,
     "Centrino Advanced-N 6205",
 },
 {
     0x8086, 0x0087,
     "Centrino Advanced-N 6250",
 },
 {
     0x8086, 0x0089,
     "Centrino Advanced-N 6250",
 },
 {
     0x8086, 0x008a,
     "WiFi Link 1030",
 },
 {
     0x8086, 0x008b,
     "WiFi Link 1030",
 },
 {
     0x8086, 0x0090,
     "Centrino Advanced-N 6030",
 },
 {
     0x8086, 0x0091,
     "Centrino Advanced-N 6030",
 },
 {
     0x8086, 0x0100,
     "Core 2G Host",
 },
 {
     0x8086, 0x0101,
     "Core 2G PCIE",
 },
 {
     0x8086, 0x0102,
     "HD Graphics 2000",
 },
 {
     0x8086, 0x0104,
     "Core 2G Host",
 },
 {
     0x8086, 0x0105,
     "Core 2G PCIE",
 },
 {
     0x8086, 0x0106,
     "HD Graphics 2000",
 },
 {
     0x8086, 0x0108,
     "Xeon E3-1200 Host",
 },
 {
     0x8086, 0x0109,
     "Core 2G PCIE",
 },
 {
     0x8086, 0x010a,
     "HD Graphics P3000",
 },
 {
     0x8086, 0x010d,
     "Core 2G PCIE",
 },
 {
     0x8086, 0x0112,
     "HD Graphics 3000",
 },
 {
     0x8086, 0x0116,
     "HD Graphics 3000",
 },
 {
     0x8086, 0x0122,
     "HD Graphics 3000",
 },
 {
     0x8086, 0x0126,
     "HD Graphics 3000",
 },
 {
     0x8086, 0x0130,
     "Medfield Video",
 },
 {
     0x8086, 0x0131,
     "Medfield Video",
 },
 {
     0x8086, 0x0132,
     "Medfield Video",
 },
 {
     0x8086, 0x0133,
     "Medfield Video",
 },
 {
     0x8086, 0x0134,
     "Medfield Video",
 },
 {
     0x8086, 0x0135,
     "Medfield Video",
 },
 {
     0x8086, 0x0136,
     "Medfield Video",
 },
 {
     0x8086, 0x0137,
     "Medfield Video",
 },
 {
     0x8086, 0x0150,
     "Core 3G Host",
 },
 {
     0x8086, 0x0151,
     "Core 3G PCIE",
 },
 {
     0x8086, 0x0152,
     "HD Graphics 2500",
 },
 {
     0x8086, 0x0153,
     "Core 3G Thermal",
 },
 {
     0x8086, 0x0154,
     "Core 3G Host",
 },
 {
     0x8086, 0x0155,
     "Core 3G PCIE",
 },
 {
     0x8086, 0x0156,
     "HD Graphics 2500",
 },
 {
     0x8086, 0x0158,
     "Xeon E3-1200 v2 Host",
 },
 {
     0x8086, 0x0159,
     "Core 3G PCIE",
 },
 {
     0x8086, 0x015a,
     "HD Graphics 2500",
 },
 {
     0x8086, 0x015d,
     "Core 3G PCIE",
 },
 {
     0x8086, 0x0162,
     "HD Graphics 4000",
 },
 {
     0x8086, 0x0166,
     "HD Graphics 4000",
 },
 {
     0x8086, 0x016a,
     "HD Graphics P4000",
 },
 {
     0x8086, 0x0309,
     "80303 IOP",
 },
 {
     0x8086, 0x030d,
     "80312 I/O Companion",
 },
 {
     0x8086, 0x0326,
     "IOxAPIC",
 },
 {
     0x8086, 0x0327,
     "IOxAPIC",
 },
 {
     0x8086, 0x0329,
     "6700PXH PCIE-PCIX",
 },
 {
     0x8086, 0x032a,
     "6700PXH PCIE-PCIX",
 },
 {
     0x8086, 0x032c,
     "6702PXH PCIE-PCIX",
 },
 {
     0x8086, 0x0330,
     "IOP332 PCIE-PCIX",
 },
 {
     0x8086, 0x0332,
     "IOP332 PCIE-PCIX",
 },
 {
     0x8086, 0x0335,
     "IOP331 PCIX-PCIX",
 },
 {
     0x8086, 0x0340,
     "41210 PCIE-PCIX",
 },
 {
     0x8086, 0x0341,
     "41210 PCIE-PCIX",
 },
 {
     0x8086, 0x0370,
     "IOP333 PCIE-PCIX",
 },
 {
     0x8086, 0x0372,
     "IOP333 PCIE-PCIX",
 },
 {
     0x8086, 0x0402,
     "HD Graphics",
 },
 {
     0x8086, 0x0406,
     "HD Graphics",
 },
 {
     0x8086, 0x040a,
     "HD Graphics",
 },
 {
     0x8086, 0x040b,
     "HD Graphics",
 },
 {
     0x8086, 0x040e,
     "HD Graphics",
 },
 {
     0x8086, 0x0412,
     "HD Graphics 4600",
 },
 {
     0x8086, 0x0416,
     "HD Graphics 4600",
 },
 {
     0x8086, 0x041a,
     "HD Graphics P4600",
 },
 {
     0x8086, 0x041b,
     "HD Graphics",
 },
 {
     0x8086, 0x041e,
     "HD Graphics 4600",
 },
 {
     0x8086, 0x0422,
     "HD Graphics",
 },
 {
     0x8086, 0x0426,
     "HD Graphics",
 },
 {
     0x8086, 0x042a,
     "HD Graphics",
 },
 {
     0x8086, 0x042b,
     "HD Graphics",
 },
 {
     0x8086, 0x042e,
     "HD Graphics",
 },
 {
     0x8086, 0x0438,
     "DH89XXCC SGMII",
 },
 {
     0x8086, 0x043a,
     "DH89XXCC SerDes",
 },
 {
     0x8086, 0x043c,
     "DH89XXCC Backplane",
 },
 {
     0x8086, 0x0440,
     "DH89XXCC SFP",
 },
 {
     0x8086, 0x0482,
     "82375EB EISA",
 },
 {
     0x8086, 0x0483,
     "82424ZX Cache/DRAM",
 },
 {
     0x8086, 0x0484,
     "82378IB ISA",
 },
 {
     0x8086, 0x0486,
     "82426EX ISA",
 },
 {
     0x8086, 0x04a3,
     "82434LX/NX",
 },
 {
     0x8086, 0x0600,
     "GDT RAID",
 },
 {
     0x8086, 0x061f,
     "GDT RAID",
 },
 {
     0x8086, 0x088e,
     "Centrino Advanced-N 6235",
 },
 {
     0x8086, 0x088f,
     "Centrino Advanced-N 6235",
 },
 {
     0x8086, 0x0885,
     "Centrino Wireless-N 6150",
 },
 {
     0x8086, 0x0886,
     "Centrino Wireless-N 6150",
 },
 {
     0x8086, 0x0887,
     "Centrino Wireless-N 2230",
 },
 {
     0x8086, 0x0888,
     "Centrino Wireless-N 2230",
 },
 {
     0x8086, 0x0890,
     "Centrino Wireless-N 2200",
 },
 {
     0x8086, 0x0891,
     "Centrino Wireless-N 2200",
 },
 {
     0x8086, 0x0892,
     "Centrino Wireless-N 135",
 },
 {
     0x8086, 0x0893,
     "Centrino Wireless-N 135",
 },
 {
     0x8086, 0x0894,
     "Centrino Wireless-N 105",
 },
 {
     0x8086, 0x0895,
     "Centrino Wireless-N 105",
 },
 {
     0x8086, 0x0896,
     "Centrino Wireless-N 130",
 },
 {
     0x8086, 0x0897,
     "Centrino Wireless-N 130",
 },
 {
     0x8086, 0x08ae,
     "Centrino Wireless-N 100",
 },
 {
     0x8086, 0x08af,
     "Centrino Wireless-N 100",
 },
 {
     0x8086, 0x08b1,
     "Dual Band Wireless AC 7260",
 },
 {
     0x8086, 0x08b2,
     "Dual Band Wireless AC 7260",
 },
 {
     0x8086, 0x08b3,
     "Dual Band Wireless AC 3160",
 },
 {
     0x8086, 0x08b4,
     "Dual Band Wireless AC 3160",
 },
 {
     0x8086, 0x095a,
     "Dual Band Wireless AC 7265",
 },
 {
     0x8086, 0x095b,
     "Dual Band Wireless AC 7265",
 },
 {
     0x8086, 0x0960,
     "i960 RP",
 },
 {
     0x8086, 0x0962,
     "i960 RM",
 },
 {
     0x8086, 0x0964,
     "i960 RN",
 },
 {
     0x8086, 0x0953,
     "NVMe",
 },
 {
     0x8086, 0x0a02,
     "HD Graphics",
 },
 {
     0x8086, 0x0a04,
     "Core 4G Host",
 },
 {
     0x8086, 0x0a06,
     "HD Graphics",
 },
 {
     0x8086, 0x0a0a,
     "HD Graphics",
 },
 {
     0x8086, 0x0a0b,
     "HD Graphics",
 },
 {
     0x8086, 0x0a0c,
     "Core 4G HD Audio",
 },
 {
     0x8086, 0x0a0e,
     "HD Graphics",
 },
 {
     0x8086, 0x0a12,
     "HD Graphics",
 },
 {
     0x8086, 0x0a16,
     "HD Graphics",
 },
 {
     0x8086, 0x0a1a,
     "HD Graphics",
 },
 {
     0x8086, 0x0a1b,
     "HD Graphics",
 },
 {
     0x8086, 0x0a1e,
     "HD Graphics",
 },
 {
     0x8086, 0x0a22,
     "HD Graphics",
 },
 {
     0x8086, 0x0a26,
     "HD Graphics 5000",
 },
 {
     0x8086, 0x0a2a,
     "HD Graphics",
 },
 {
     0x8086, 0x0a2b,
     "HD Graphics",
 },
 {
     0x8086, 0x0a2e,
     "Iris Graphics 5100",
 },
 {
     0x8086, 0x0be0,
     "GMA 3600",
 },
 {
     0x8086, 0x0be1,
     "Atom D2000/N2000 Video",
 },
 {
     0x8086, 0x0be2,
     "GMA 3600",
 },
 {
     0x8086, 0x0be3,
     "GMA 3600",
 },
 {
     0x8086, 0x0be4,
     "GMA 3600",
 },
 {
     0x8086, 0x0be5,
     "GMA 3600",
 },
 {
     0x8086, 0x0be6,
     "GMA 3600",
 },
 {
     0x8086, 0x0be7,
     "GMA 3600",
 },
 {
     0x8086, 0x0be8,
     "GMA 3600",
 },
 {
     0x8086, 0x0be9,
     "GMA 3600",
 },
 {
     0x8086, 0x0bea,
     "GMA 3600",
 },
 {
     0x8086, 0x0beb,
     "GMA 3600",
 },
 {
     0x8086, 0x0bec,
     "GMA 3600",
 },
 {
     0x8086, 0x0bed,
     "GMA 3600",
 },
 {
     0x8086, 0x0bee,
     "GMA 3600",
 },
 {
     0x8086, 0x0bef,
     "GMA 3600",
 },
 {
     0x8086, 0x0bf1,
     "Atom D2000/N2000 Host",
 },
 {
     0x8086, 0x0bf2,
     "Atom D2000/N2000 Host",
 },
 {
     0x8086, 0x0bf3,
     "Atom D2000/N2000 Host",
 },
 {
     0x8086, 0x0bf5,
     "Atom D2000/N2000 Host",
 },
 {
     0x8086, 0x0c00,
     "Core 4G Host",
 },
 {
     0x8086, 0x0c01,
     "Core 4G PCIE",
 },
 {
     0x8086, 0x0c02,
     "HD Graphics",
 },
 {
     0x8086, 0x0c04,
     "Core 4G Host",
 },
 {
     0x8086, 0x0c05,
     "Core 4G PCIE",
 },
 {
     0x8086, 0x0c06,
     "HD Graphics",
 },
 {
     0x8086, 0x0c08,
     "Xeon E3-1200 v3 Host",
 },
 {
     0x8086, 0x0c09,
     "Core 4G PCIE",
 },
 {
     0x8086, 0x0c0a,
     "HD Graphics",
 },
 {
     0x8086, 0x0c0b,
     "HD Graphics",
 },
 {
     0x8086, 0x0c0c,
     "Core 4G HD Audio",
 },
 {
     0x8086, 0x0c0e,
     "HD Graphics",
 },
 {
     0x8086, 0x0c12,
     "HD Graphics",
 },
 {
     0x8086, 0x0c16,
     "HD Graphics",
 },
 {
     0x8086, 0x0c1a,
     "HD Graphics",
 },
 {
     0x8086, 0x0c1b,
     "HD Graphics",
 },
 {
     0x8086, 0x0c1e,
     "HD Graphics",
 },
 {
     0x8086, 0x0c22,
     "HD Graphics",
 },
 {
     0x8086, 0x0c26,
     "HD Graphics",
 },
 {
     0x8086, 0x0c2a,
     "HD Graphics",
 },
 {
     0x8086, 0x0c2b,
     "HD Graphics",
 },
 {
     0x8086, 0x0c2e,
     "HD Graphics",
 },
 {
     0x8086, 0x0c46,
     "Atom S1200 PCIE",
 },
 {
     0x8086, 0x0c47,
     "Atom S1200 PCIE",
 },
 {
     0x8086, 0x0c48,
     "Atom S1200 PCIE",
 },
 {
     0x8086, 0x0c49,
     "Atom S1200 PCIE",
 },
 {
     0x8086, 0x0c54,
     "Atom S1200 MEI",
 },
 {
     0x8086, 0x0c59,
     "Atom S1200 SMBus",
 },
 {
     0x8086, 0x0c5a,
     "Atom S1200 SMBus",
 },
 {
     0x8086, 0x0c5b,
     "Atom S1200 SMBus",
 },
 {
     0x8086, 0x0c5c,
     "Atom S1200 SMBus",
 },
 {
     0x8086, 0x0c5d,
     "Atom S1200 SMBus",
 },
 {
     0x8086, 0x0c5e,
     "Atom S1200 SMBus",
 },
 {
     0x8086, 0x0c5f,
     "Atom S1200 UART",
 },
 {
     0x8086, 0x0c60,
     "Atom S1200 ISA",
 },
 {
     0x8086, 0x0c72,
     "Atom S1240 Host",
 },
 {
     0x8086, 0x0c73,
     "Atom S1220 Host",
 },
 {
     0x8086, 0x0c75,
     "Atom S1260 Host",
 },
 {
     0x8086, 0x0d02,
     "HD Graphics",
 },
 {
     0x8086, 0x0d06,
     "HD Graphics",
 },
 {
     0x8086, 0x0d0a,
     "HD Graphics",
 },
 {
     0x8086, 0x0d0b,
     "HD Graphics",
 },
 {
     0x8086, 0x0d0c,
     "Core 4G HD Audio",
 },
 {
     0x8086, 0x0d0e,
     "HD Graphics",
 },
 {
     0x8086, 0x0d12,
     "HD Graphics",
 },
 {
     0x8086, 0x0d16,
     "HD Graphics",
 },
 {
     0x8086, 0x0d1a,
     "HD Graphics",
 },
 {
     0x8086, 0x0d1b,
     "HD Graphics",
 },
 {
     0x8086, 0x0d1e,
     "HD Graphics",
 },
 {
     0x8086, 0x0d22,
     "Iris Pro Graphics 5200",
 },
 {
     0x8086, 0x0d26,
     "Iris Pro Graphics 5200",
 },
 {
     0x8086, 0x0d2a,
     "HD Graphics",
 },
 {
     0x8086, 0x0d2b,
     "HD Graphics",
 },
 {
     0x8086, 0x0d2e,
     "HD Graphics",
 },
 {
     0x8086, 0x0e00,
     "E5 v2 Host",
 },
 {
     0x8086, 0x0e01,
     "E5 v2 PCIE",
 },
 {
     0x8086, 0x0e02,
     "E5 v2 PCIE",
 },
 {
     0x8086, 0x0e03,
     "E5 v2 PCIE",
 },
 {
     0x8086, 0x0e04,
     "E5 v2 PCIE",
 },
 {
     0x8086, 0x0e05,
     "E5 v2 PCIE",
 },
 {
     0x8086, 0x0e06,
     "E5 v2 PCIE",
 },
 {
     0x8086, 0x0e07,
     "E5 v2 PCIE",
 },
 {
     0x8086, 0x0e08,
     "E5 v2 PCIE",
 },
 {
     0x8086, 0x0e09,
     "E5 v2 PCIE",
 },
 {
     0x8086, 0x0e0a,
     "E5 v2 PCIE",
 },
 {
     0x8086, 0x0e0b,
     "E5 v2 PCIE",
 },
 {
     0x8086, 0x0e1d,
     "E5 v2 R2PCIE",
 },
 {
     0x8086, 0x0e1e,
     "E5 v2 UBOX",
 },
 {
     0x8086, 0x0e1f,
     "E5 v2 UBOX",
 },
 {
     0x8086, 0x0e20,
     "E5 v2 I/OAT",
 },
 {
     0x8086, 0x0e21,
     "E5 v2 I/OAT",
 },
 {
     0x8086, 0x0e22,
     "E5 v2 I/OAT",
 },
 {
     0x8086, 0x0e23,
     "E5 v2 I/OAT",
 },
 {
     0x8086, 0x0e24,
     "E5 v2 I/OAT",
 },
 {
     0x8086, 0x0e25,
     "E5 v2 I/OAT",
 },
 {
     0x8086, 0x0e26,
     "E5 v2 I/OAT",
 },
 {
     0x8086, 0x0e27,
     "E5 v2 I/OAT",
 },
 {
     0x8086, 0x0e28,
     "E5 v2 Address Map",
 },
 {
     0x8086, 0x0e2a,
     "E5 v2 IIO RAS",
 },
 {
     0x8086, 0x0e2c,
     "E5 v2 I/O APIC",
 },
 {
     0x8086, 0x0e30,
     "E5 v2 Home Agent",
 },
 {
     0x8086, 0x0e34,
     "E5 v2 QPI Link Monitor",
 },
 {
     0x8086, 0x0e36,
     "E5 v2 QPI Link Monitor",
 },
 {
     0x8086, 0x0e71,
     "E5 v2 RAS",
 },
 {
     0x8086, 0x0e80,
     "E5 v2 QPI Link",
 },
 {
     0x8086, 0x0e81,
     "E5 v2 QPI",
 },
 {
     0x8086, 0x0e90,
     "E5 v2 QPI Link",
 },
 {
     0x8086, 0x0ea0,
     "E5 v2 Home Agent",
 },
 {
     0x8086, 0x0ea8,
     "E5 v2 TA",
 },
 {
     0x8086, 0x0eaa,
     "E5 v2 TAD",
 },
 {
     0x8086, 0x0eab,
     "E5 v2 TAD",
 },
 {
     0x8086, 0x0eac,
     "E5 v2 TAD",
 },
 {
     0x8086, 0x0ead,
     "E5 v2 TAD",
 },
 {
     0x8086, 0x0eb0,
     "E5 v2 Thermal",
 },
 {
     0x8086, 0x0eb1,
     "E5 v2 Thermal",
 },
 {
     0x8086, 0x0eb2,
     "E5 v2 Error",
 },
 {
     0x8086, 0x0eb3,
     "E5 v2 Error",
 },
 {
     0x8086, 0x0eb4,
     "E5 v2 Thermal",
 },
 {
     0x8086, 0x0eb5,
     "E5 v2 Thermal",
 },
 {
     0x8086, 0x0eb6,
     "E5 v2 Error",
 },
 {
     0x8086, 0x0eb7,
     "E5 v2 Error",
 },
 {
     0x8086, 0x0ec0,
     "E5 v2 PCU",
 },
 {
     0x8086, 0x0ec1,
     "E5 v2 PCU",
 },
 {
     0x8086, 0x0ec2,
     "E5 v2 PCU",
 },
 {
     0x8086, 0x0ec3,
     "E5 v2 PCU",
 },
 {
     0x8086, 0x0ec4,
     "E5 v2 PCU",
 },
 {
     0x8086, 0x0ec8,
     "E5 v2 SAD",
 },
 {
     0x8086, 0x0ec9,
     "E5 v2 Broadcast",
 },
 {
     0x8086, 0x0eca,
     "E5 v2 Broadcast",
 },
 {
     0x8086, 0x0ee0,
     "E5 v2 Unicast",
 },
 {
     0x8086, 0x0ee1,
     "E5 v2 Unicast",
 },
 {
     0x8086, 0x0ee2,
     "E5 v2 Unicast",
 },
 {
     0x8086, 0x0ee3,
     "E5 v2 Unicast",
 },
 {
     0x8086, 0x0ee4,
     "E5 v2 Unicast",
 },
 {
     0x8086, 0x0ee5,
     "E5 v2 Unicast",
 },
 {
     0x8086, 0x0ee6,
     "E5 v2 Unicast",
 },
 {
     0x8086, 0x0ee7,
     "E5 v2 Unicast",
 },
 {
     0x8086, 0x0ee8,
     "E5 v2 Unicast",
 },
 {
     0x8086, 0x0ee9,
     "E5 v2 Unicast",
 },
 {
     0x8086, 0x0eea,
     "E5 v2 Unicast",
 },
 {
     0x8086, 0x0eeb,
     "E5 v2 Unicast",
 },
 {
     0x8086, 0x0eec,
     "E5 v2 Unicast",
 },
 {
     0x8086, 0x0eed,
     "E5 v2 Unicast",
 },
 {
     0x8086, 0x0eee,
     "E5 v2 Unicast",
 },
 {
     0x8086, 0x0f00,
     "Bay Trail Host",
 },
 {
     0x8086, 0x0f04,
     "Bay Trail HD Audio",
 },
 {
     0x8086, 0x0f06,
     "Bay Trail SIO DMA",
 },
 {
     0x8086, 0x0f08,
     "Bay Trail PWM",
 },
 {
     0x8086, 0x0f09,
     "Bay Trail PWM",
 },
 {
     0x8086, 0x0f0a,
     "Bay Trail HSUART",
 },
 {
     0x8086, 0x0f0c,
     "Bay Trail HSUART",
 },
 {
     0x8086, 0x0f0e,
     "Bay Trail SPI",
 },
 {
     0x8086, 0x0f12,
     "Bay Trail SMBus",
 },
 {
     0x8086, 0x0f15,
     "Bay Trail SDIO",
 },
 {
     0x8086, 0x0f16,
     "Bay Trail SD/MMC",
 },
 {
     0x8086, 0x0f18,
     "Bay Trail TXE",
 },
 {
     0x8086, 0x0f1c,
     "Bay Trail LPC",
 },
 {
     0x8086, 0x0f20,
     "Bay Trail SATA",
 },
 {
     0x8086, 0x0f21,
     "Bay Trail SATA",
 },
 {
     0x8086, 0x0f23,
     "Bay Trail AHCI",
 },
 {
     0x8086, 0x0f28,
     "Bay Trail Low Power Audio",
 },
 {
     0x8086, 0x0f31,
     "Bay Trail Video",
 },
 {
     0x8086, 0x0f32,
     "Bay Trail Video",
 },
 {
     0x8086, 0x0f33,
     "Bay Trail Video",
 },
 {
     0x8086, 0x0f34,
     "Bay Trail EHCI",
 },
 {
     0x8086, 0x0f35,
     "Bay Trail xHCI",
 },
 {
     0x8086, 0x0f40,
     "Bay Trail I2C DMA",
 },
 {
     0x8086, 0x0f41,
     "Bay Trail I2C",
 },
 {
     0x8086, 0x0f42,
     "Bay Trail I2C",
 },
 {
     0x8086, 0x0f43,
     "Bay Trail I2C",
 },
 {
     0x8086, 0x0f44,
     "Bay Trail I2C",
 },
 {
     0x8086, 0x0f45,
     "Bay Trail I2C",
 },
 {
     0x8086, 0x0f46,
     "Bay Trail I2C",
 },
 {
     0x8086, 0x0f47,
     "Bay Trail I2C",
 },
 {
     0x8086, 0x0f48,
     "Bay Trail PCIE",
 },
 {
     0x8086, 0x0f4a,
     "Bay Trail PCIE",
 },
 {
     0x8086, 0x0f4c,
     "Bay Trail PCIE",
 },
 {
     0x8086, 0x0f4e,
     "Bay Trail PCIE",
 },
 {
     0x8086, 0x0f50,
     "Bay Trail eMMC",
 },
 {
     0x8086, 0x1000,
     "82542",
 },
 {
     0x8086, 0x1001,
     "82543GC",
 },
 {
     0x8086, 0x1002,
     "56k Modem",
 },
 {
     0x8086, 0x1004,
     "82543GC",
 },
 {
     0x8086, 0x1008,
     "82544EI",
 },
 {
     0x8086, 0x1009,
     "82544EI",
 },
 {
     0x8086, 0x100c,
     "82544GC",
 },
 {
     0x8086, 0x100d,
     "82544GC",
 },
 {
     0x8086, 0x100e,
     "82540EM",
 },
 {
     0x8086, 0x100f,
     "82545EM",
 },
 {
     0x8086, 0x1010,
     "82546EB",
 },
 {
     0x8086, 0x1011,
     "82545EM",
 },
 {
     0x8086, 0x1012,
     "82546EB",
 },
 {
     0x8086, 0x1013,
     "82541EI",
 },
 {
     0x8086, 0x1014,
     "82541EI",
 },
 {
     0x8086, 0x1015,
     "82540EM",
 },
 {
     0x8086, 0x1016,
     "82540EP",
 },
 {
     0x8086, 0x1017,
     "82540EP",
 },
 {
     0x8086, 0x1018,
     "82541EI",
 },
 {
     0x8086, 0x1019,
     "82547EI",
 },
 {
     0x8086, 0x101a,
     "82547EI",
 },
 {
     0x8086, 0x101d,
     "82546EB",
 },
 {
     0x8086, 0x101e,
     "82540EP",
 },
 {
     0x8086, 0x1026,
     "82545GM",
 },
 {
     0x8086, 0x1027,
     "82545GM",
 },
 {
     0x8086, 0x1028,
     "82545GM",
 },
 {
     0x8086, 0x1029,
     "PRO/100",
 },
 {
     0x8086, 0x1030,
     "82559",
 },
 {
     0x8086, 0x1031,
     "PRO/100 VE",
 },
 {
     0x8086, 0x1032,
     "PRO/100 VE",
 },
 {
     0x8086, 0x1033,
     "PRO/100 VM",
 },
 {
     0x8086, 0x1034,
     "PRO/100 VM",
 },
 {
     0x8086, 0x1035,
     "82562EH HomePNA",
 },
 {
     0x8086, 0x1036,
     "82562EH HomePNA",
 },
 {
     0x8086, 0x1037,
     "82562EH HomePNA",
 },
 {
     0x8086, 0x1038,
     "PRO/100 VM",
 },
 {
     0x8086, 0x1039,
     "PRO/100 VE",
 },
 {
     0x8086, 0x103a,
     "82801DB LAN",
 },
 {
     0x8086, 0x103b,
     "PRO/100 VM",
 },
 {
     0x8086, 0x103c,
     "PRO/100 VM",
 },
 {
     0x8086, 0x103d,
     "PRO/100 VE",
 },
 {
     0x8086, 0x103e,
     "PRO/100 VM",
 },
 {
     0x8086, 0x1040,
     "V.92 Modem",
 },
 {
     0x8086, 0x1043,
     "PRO/Wireless 2100",
 },
 {
     0x8086, 0x1048,
     "82597EX",
 },
 {
     0x8086, 0x1049,
     "ICH8 IGP M AMT",
 },
 {
     0x8086, 0x104a,
     "ICH8 IGP AMT",
 },
 {
     0x8086, 0x104b,
     "ICH8 IGP C",
 },
 {
     0x8086, 0x104c,
     "ICH8 IFE",
 },
 {
     0x8086, 0x104d,
     "ICH8 IGP M",
 },
 {
     0x8086, 0x1050,
     "PRO/100 VE",
 },
 {
     0x8086, 0x1051,
     "PRO/100 VE",
 },
 {
     0x8086, 0x1052,
     "PRO/100 VM",
 },
 {
     0x8086, 0x1053,
     "PRO/100 VM",
 },
 {
     0x8086, 0x1054,
     "PRO/100 VM",
 },
 {
     0x8086, 0x1055,
     "PRO/100 VM",
 },
 {
     0x8086, 0x1056,
     "PRO/100 VM",
 },
 {
     0x8086, 0x1057,
     "PRO/100 VM",
 },
 {
     0x8086, 0x1058,
     "PRO/100 VM",
 },
 {
     0x8086, 0x1059,
     "PRO/100 M",
 },
 {
     0x8086, 0x105e,
     "82571EB",
 },
 {
     0x8086, 0x105f,
     "82571EB",
 },
 {
     0x8086, 0x1060,
     "82571EB",
 },
 {
     0x8086, 0x1064,
     "82801FB LAN",
 },
 {
     0x8086, 0x1065,
     "PRO/100 VE",
 },
 {
     0x8086, 0x1066,
     "PRO/100 VM",
 },
 {
     0x8086, 0x1067,
     "PRO/100 VM",
 },
 {
     0x8086, 0x1068,
     "82801FBM LAN",
 },
 {
     0x8086, 0x1069,
     "82801GB LAN",
 },
 {
     0x8086, 0x106a,
     "PRO/100 VE",
 },
 {
     0x8086, 0x106b,
     "PRO/100 VE",
 },
 {
     0x8086, 0x1075,
     "82547GI",
 },
 {
     0x8086, 0x1076,
     "82541GI",
 },
 {
     0x8086, 0x1077,
     "82541GI",
 },
 {
     0x8086, 0x1078,
     "82541ER",
 },
 {
     0x8086, 0x1079,
     "82546GB",
 },
 {
     0x8086, 0x107a,
     "82546GB",
 },
 {
     0x8086, 0x107b,
     "82546GB",
 },
 {
     0x8086, 0x107c,
     "82541GI",
 },
 {
     0x8086, 0x107d,
     "82572EI",
 },
 {
     0x8086, 0x107e,
     "82572EI",
 },
 {
     0x8086, 0x107f,
     "82572EI",
 },
 {
     0x8086, 0x108a,
     "82546GB",
 },
 {
     0x8086, 0x108b,
     "82573E",
 },
 {
     0x8086, 0x108c,
     "82573E",
 },
 {
     0x8086, 0x108d,
     "82573E IDE",
 },
 {
     0x8086, 0x108e,
     "82573E KCS",
 },
 {
     0x8086, 0x108f,
     "82573E Serial",
 },
 {
     0x8086, 0x1091,
     "PRO/100 VM",
 },
 {
     0x8086, 0x1092,
     "PRO/100 VM",
 },
 {
     0x8086, 0x1093,
     "PRO/100 VM",
 },
 {
     0x8086, 0x1094,
     "PRO/100 VM",
 },
 {
     0x8086, 0x1095,
     "PRO/100 VM",
 },
 {
     0x8086, 0x1096,
     "80003ES2",
 },
 {
     0x8086, 0x1098,
     "80003ES2",
 },
 {
     0x8086, 0x1099,
     "82546GB",
 },
 {
     0x8086, 0x109a,
     "82573L",
 },
 {
     0x8086, 0x109b,
     "82546GB",
 },
 {
     0x8086, 0x109e,
     "82597EX",
 },
 {
     0x8086, 0x10a0,
     "82571EB",
 },
 {
     0x8086, 0x10a1,
     "82571EB",
 },
 {
     0x8086, 0x10a4,
     "82571EB",
 },
 {
     0x8086, 0x10a5,
     "82571EB",
 },
 {
     0x8086, 0x10a7,
     "82575EB",
 },
 {
     0x8086, 0x10a9,
     "82575EB",
 },
 {
     0x8086, 0x10b0,
     "82573L",
 },
 {
     0x8086, 0x10b2,
     "82573V",
 },
 {
     0x8086, 0x10b3,
     "82573E",
 },
 {
     0x8086, 0x10b4,
     "82573L",
 },
 {
     0x8086, 0x10b5,
     "82546GB",
 },
 {
     0x8086, 0x10b6,
     "82598",
 },
 {
     0x8086, 0x10b9,
     "82572EI",
 },
 {
     0x8086, 0x10ba,
     "80003ES2",
 },
 {
     0x8086, 0x10bb,
     "80003ES2",
 },
 {
     0x8086, 0x10bc,
     "82571EB",
 },
 {
     0x8086, 0x10bd,
     "ICH9 IGP AMT",
 },
 {
     0x8086, 0x10bf,
     "ICH9 IGP M",
 },
 {
     0x8086, 0x10c0,
     "ICH9 IFE",
 },
 {
     0x8086, 0x10c2,
     "ICH9 IFE G",
 },
 {
     0x8086, 0x10c3,
     "ICH9 IFE GT",
 },
 {
     0x8086, 0x10c4,
     "ICH8 IFE GT",
 },
 {
     0x8086, 0x10c5,
     "ICH8 IFE G",
 },
 {
     0x8086, 0x10c6,
     "82598AF",
 },
 {
     0x8086, 0x10c7,
     "82598AF",
 },
 {
     0x8086, 0x10c8,
     "82598AT",
 },
 {
     0x8086, 0x10c9,
     "82576",
 },
 {
     0x8086, 0x10cb,
     "ICH9 IGP M V",
 },
 {
     0x8086, 0x10cc,
     "ICH10 R BM LM",
 },
 {
     0x8086, 0x10cd,
     "ICH10 R BM LF",
 },
 {
     0x8086, 0x10ce,
     "ICH10 R BM V",
 },
 {
     0x8086, 0x10d3,
     "82574L",
 },
 {
     0x8086, 0x10d5,
     "82571PT",
 },
 {
     0x8086, 0x10d6,
     "82575GB",
 },
 {
     0x8086, 0x10d7,
     "82598AT",
 },
 {
     0x8086, 0x10d9,
     "82571EB",
 },
 {
     0x8086, 0x10da,
     "82571EB",
 },
 {
     0x8086, 0x10db,
     "82598EB",
 },
 {
     0x8086, 0x10dd,
     "82598EB",
 },
 {
     0x8086, 0x10de,
     "ICH10 D BM LM",
 },
 {
     0x8086, 0x10df,
     "ICH10 D BM LF",
 },
 {
     0x8086, 0x10e1,
     "82598",
 },
 {
     0x8086, 0x10e2,
     "82575GB",
 },
 {
     0x8086, 0x10e5,
     "ICH9 BM",
 },
 {
     0x8086, 0x10e6,
     "82576",
 },
 {
     0x8086, 0x10e7,
     "82576",
 },
 {
     0x8086, 0x10e8,
     "82576",
 },
 {
     0x8086, 0x10ea,
     "82577LM",
 },
 {
     0x8086, 0x10eb,
     "82577LC",
 },
 {
     0x8086, 0x10ec,
     "82598EB",
 },
 {
     0x8086, 0x10ed,
     "82599",
 },
 {
     0x8086, 0x10ef,
     "82578DM",
 },
 {
     0x8086, 0x10f0,
     "82578DC",
 },
 {
     0x8086, 0x10f1,
     "82598",
 },
 {
     0x8086, 0x10f4,
     "82598EB",
 },
 {
     0x8086, 0x10f5,
     "ICH9 IGP M AMT",
 },
 {
     0x8086, 0x10f6,
     "82574L",
 },
 {
     0x8086, 0x10f7,
     "82599",
 },
 {
     0x8086, 0x10f8,
     "82599",
 },
 {
     0x8086, 0x10f9,
     "82599",
 },
 {
     0x8086, 0x10fb,
     "82599",
 },
 {
     0x8086, 0x10fc,
     "82599",
 },
 {
     0x8086, 0x10fe,
     "82552",
 },
 {
     0x8086, 0x1130,
     "82815 Host",
 },
 {
     0x8086, 0x1131,
     "82815 AGP",
 },
 {
     0x8086, 0x1132,
     "82815 Video",
 },
 {
     0x8086, 0x1161,
     "82806AA APIC",
 },
 {
     0x8086, 0x1209,
     "82559ER",
 },
 {
     0x8086, 0x1222,
     "82092AA IDE",
 },
 {
     0x8086, 0x1223,
     "SAA7116",
 },
 {
     0x8086, 0x1225,
     "82452KX/GX",
 },
 {
     0x8086, 0x1226,
     "EE Pro 10 PCI",
 },
 {
     0x8086, 0x1227,
     "EE Pro 100",
 },
 {
     0x8086, 0x1228,
     "EE Pro 100 Smart",
 },
 {
     0x8086, 0x1229,
     "8255x",
 },
 {
     0x8086, 0x122d,
     "82437FX",
 },
 {
     0x8086, 0x122e,
     "82371FB ISA",
 },
 {
     0x8086, 0x1230,
     "82371FB IDE",
 },
 {
     0x8086, 0x1234,
     "82371 ISA and IDE",
 },
 {
     0x8086, 0x1235,
     "82437MX",
 },
 {
     0x8086, 0x1237,
     "82441FX",
 },
 {
     0x8086, 0x123c,
     "82380AB Mobile ISA",
 },
 {
     0x8086, 0x124b,
     "82380FB Mobile",
 },
 {
     0x8086, 0x1250,
     "82439HX",
 },
 {
     0x8086, 0x1360,
     "82806AA",
 },
 {
     0x8086, 0x1460,
     "82870P2 PCIX-PCIX",
 },
 {
     0x8086, 0x1461,
     "82870P2 IOxAPIC",
 },
 {
     0x8086, 0x1462,
     "82870P2 Hot Plug",
 },
 {
     0x8086, 0x1501,
     "ICH8 82567V-3",
 },
 {
     0x8086, 0x1502,
     "82579LM",
 },
 {
     0x8086, 0x1503,
     "82579V",
 },
 {
     0x8086, 0x1507,
     "82599",
 },
 {
     0x8086, 0x1508,
     "82598",
 },
 {
     0x8086, 0x150a,
     "82576NS",
 },
 {
     0x8086, 0x150b,
     "82598AT",
 },
 {
     0x8086, 0x150c,
     "82583V",
 },
 {
     0x8086, 0x150d,
     "82576 SerDes QP",
 },
 {
     0x8086, 0x150e,
     "82580",
 },
 {
     0x8086, 0x150f,
     "82580",
 },
 {
     0x8086, 0x1510,
     "82580",
 },
 {
     0x8086, 0x1511,
     "82580",
 },
 {
     0x8086, 0x1513,
     "82524EF Thunderbolt",
 },
 {
     0x8086, 0x1516,
     "82580",
 },
 {
     0x8086, 0x1514,
     "82599",
 },
 {
     0x8086, 0x1517,
     "82599",
 },
 {
     0x8086, 0x1518,
     "82576NS",
 },
 {
     0x8086, 0x151c,
     "82599 T3",
 },
 {
     0x8086, 0x1521,
     "I350",
 },
 {
     0x8086, 0x1522,
     "I350 Fiber",
 },
 {
     0x8086, 0x1523,
     "I350 SerDes",
 },
 {
     0x8086, 0x1524,
     "I350 SGMII",
 },
 {
     0x8086, 0x1526,
     "82576",
 },
 {
     0x8086, 0x1527,
     "82580 QF",
 },
 {
     0x8086, 0x1528,
     "X540T",
 },
 {
     0x8086, 0x1529,
     "82599",
 },
 {
     0x8086, 0x152a,
     "82599",
 },
 {
     0x8086, 0x1533,
     "I210",
 },
 {
     0x8086, 0x1536,
     "I210 Fiber",
 },
 {
     0x8086, 0x1537,
     "I210 SerDes",
 },
 {
     0x8086, 0x1538,
     "I210 SGMII",
 },
 {
     0x8086, 0x1539,
     "I211",
 },
 {
     0x8086, 0x153a,
     "I217-LM",
 },
 {
     0x8086, 0x153b,
     "I217-V",
 },
 {
     0x8086, 0x1547,
     "DSL3510 Thunderbolt",
 },
 {
     0x8086, 0x1549,
     "DSL3510 Thunderbolt",
 },
 {
     0x8086, 0x154a,
     "82599",
 },
 {
     0x8086, 0x154c,
     "XL710/X710 VF",
 },
 {
     0x8086, 0x154d,
     "82599",
 },
 {
     0x8086, 0x1557,
     "82599EN",
 },
 {
     0x8086, 0x1558,
     "82599 QSFP+",
 },
 {
     0x8086, 0x1559,
     "I218-V",
 },
 {
     0x8086, 0x155a,
     "I218-LM",
 },
 {
     0x8086, 0x1560,
     "X540T",
 },
 {
     0x8086, 0x1563,
     "X550T",
 },
 {
     0x8086, 0x156c,
     "DSL5520 Thunderbolt",
 },
 {
     0x8086, 0x156d,
     "DSL5520 Thunderbolt",
 },
 {
     0x8086, 0x156f,
     "I219-LM",
 },
 {
     0x8086, 0x1570,
     "I219-V",
 },
 {
     0x8086, 0x1571,
     "XL710/X710 VF",
 },
 {
     0x8086, 0x1572,
     "X710 SFP+",
 },
 {
     0x8086, 0x157b,
     "I210",
 },
 {
     0x8086, 0x157c,
     "I210 SerDes",
 },
 {
     0x8086, 0x1580,
     "XL710 40GbE Backplane",
 },
 {
     0x8086, 0x1581,
     "X710 10GbE Backplane",
 },
 {
     0x8086, 0x1583,
     "XL710 QSFP+",
 },
 {
     0x8086, 0x1584,
     "XL710 QSFP+",
 },
 {
     0x8086, 0x1585,
     "X710 QSFP+",
 },
 {
     0x8086, 0x1586,
     "X710 10GbaseT",
 },
 {
     0x8086, 0x1587,
     "XL710 20GbE Backplane",
 },
 {
     0x8086, 0x1588,
     "XL710 20GbE Backplane",
 },
 {
     0x8086, 0x1589,
     "X710-T4 10GbaseT",
 },
 {
     0x8086, 0x158a,
     "XXV710 25GbE Backplane",
 },
 {
     0x8086, 0x158a,
     "XXV710 SFP28",
 },
 {
     0x8086, 0x15a0,
     "I218-LM",
 },
 {
     0x8086, 0x15a1,
     "I218-V",
 },
 {
     0x8086, 0x15a2,
     "I218-LM",
 },
 {
     0x8086, 0x15a3,
     "I218-V",
 },
 {
     0x8086, 0x15aa,
     "X552 Backplane",
 },
 {
     0x8086, 0x15ab,
     "X552 Backplane",
 },
 {
     0x8086, 0x15ac,
     "X552 SFP+",
 },
 {
     0x8086, 0x15ad,
     "X552/X557-AT",
 },
 {
     0x8086, 0x15ae,
     "X552 1GbaseT",
 },
 {
     0x8086, 0x15b7,
     "I219-LM",
 },
 {
     0x8086, 0x15b8,
     "I219-V",
 },
 {
     0x8086, 0x15b9,
     "I219-LM",
 },
 {
     0x8086, 0x15c2,
     "X553 Backplane",
 },
 {
     0x8086, 0x15c3,
     "X553 Backplane",
 },
 {
     0x8086, 0x15c4,
     "X553 SFP+",
 },
 {
     0x8086, 0x15c6,
     "X553 SGMII",
 },
 {
     0x8086, 0x15c7,
     "X553 SGMII",
 },
 {
     0x8086, 0x15c8,
     "X553 10GBaseT",
 },
 {
     0x8086, 0x15ce,
     "X553 SFP+",
 },
 {
     0x8086, 0x15d1,
     "X550T",
 },
 {
     0x8086, 0x15d6,
     "I219-V",
 },
 {
     0x8086, 0x15d7,
     "I219-LM",
 },
 {
     0x8086, 0x15d8,
     "I219-V",
 },
 {
     0x8086, 0x15e3,
     "I219-LM",
 },
 {
     0x8086, 0x1601,
     "Core 5G PCIE",
 },
 {
     0x8086, 0x1602,
     "HD Graphics",
 },
 {
     0x8086, 0x1603,
     "Core 5G Thermal",
 },
 {
     0x8086, 0x1604,
     "Core 5G Host",
 },
 {
     0x8086, 0x1605,
     "Core 5G PCIE",
 },
 {
     0x8086, 0x1606,
     "HD Graphics",
 },
 {
     0x8086, 0x1609,
     "Core 5G PCIE",
 },
 {
     0x8086, 0x160a,
     "HD Graphics",
 },
 {
     0x8086, 0x160b,
     "HD Graphics",
 },
 {
     0x8086, 0x160c,
     "Core 5G HD Audio",
 },
 {
     0x8086, 0x160d,
     "HD Graphics",
 },
 {
     0x8086, 0x160e,
     "HD Graphics",
 },
 {
     0x8086, 0x1610,
     "Core 5G Host",
 },
 {
     0x8086, 0x1612,
     "HD Graphics 5600",
 },
 {
     0x8086, 0x1616,
     "HD Graphics 5500",
 },
 {
     0x8086, 0x161a,
     "HD Graphics",
 },
 {
     0x8086, 0x161b,
     "HD Graphics",
 },
 {
     0x8086, 0x161d,
     "HD Graphics",
 },
 {
     0x8086, 0x161e,
     "HD Graphics 5300",
 },
 {
     0x8086, 0x1622,
     "Iris Pro Graphics 6200",
 },
 {
     0x8086, 0x1626,
     "HD Graphics 6000",
 },
 {
     0x8086, 0x162a,
     "Iris Pro Graphics P6300",
 },
 {
     0x8086, 0x162b,
     "Iris Graphics 6100",
 },
 {
     0x8086, 0x162d,
     "HD Graphics",
 },
 {
     0x8086, 0x162e,
     "HD Graphics",
 },
 {
     0x8086, 0x1900,
     "Core 6G Host",
 },
 {
     0x8086, 0x1901,
     "Core 6G PCIE",
 },
 {
     0x8086, 0x1902,
     "HD Graphics 510",
 },
 {
     0x8086, 0x1903,
     "Core 6G Thermal",
 },
 {
     0x8086, 0x1904,
     "Core 6G Host",
 },
 {
     0x8086, 0x1905,
     "Core 6G PCIE",
 },
 {
     0x8086, 0x1906,
     "HD Graphics 510",
 },
 {
     0x8086, 0x1909,
     "Core 6G PCIE",
 },
 {
     0x8086, 0x190c,
     "Core 6G Host",
 },
 {
     0x8086, 0x190f,
     "Core 6G Host",
 },
 {
     0x8086, 0x1910,
     "Core 6G Host",
 },
 {
     0x8086, 0x1911,
     "Core GMM",
 },
 {
     0x8086, 0x1912,
     "HD Graphics 530",
 },
 {
     0x8086, 0x1916,
     "HD Graphics 520",
 },
 {
     0x8086, 0x1918,
     "Xeon E3-1200 v5 Host",
 },
 {
     0x8086, 0x191b,
     "HD Graphics 530",
 },
 {
     0x8086, 0x191d,
     "HD Graphics P530",
 },
 {
     0x8086, 0x191e,
     "HD Graphics 515",
 },
 {
     0x8086, 0x191f,
     "Core 6G Host",
 },
 {
     0x8086, 0x1926,
     "Iris 540/550",
 },
 {
     0x8086, 0x193b,
     "Iris Pro 580",
 },
 {
     0x8086, 0x193d,
     "Iris Pro P580",
 },
 {
     0x8086, 0x1960,
     "80960RP ATU",
 },
 {
     0x8086, 0x1a21,
     "82840 Host",
 },
 {
     0x8086, 0x1a23,
     "82840 AGP",
 },
 {
     0x8086, 0x1a24,
     "82840 PCI",
 },
 {
     0x8086, 0x1a30,
     "82845 Host",
 },
 {
     0x8086, 0x1a31,
     "82845 AGP",
 },
 {
     0x8086, 0x1a38,
     "I/OAT",
 },
 {
     0x8086, 0x1a48,
     "82597EX",
 },
 {
     0x8086, 0x1b48,
     "82597EX",
 },
 {
     0x8086, 0x1c00,
     "6 Series SATA",
 },
 {
     0x8086, 0x1c01,
     "6 Series SATA",
 },
 {
     0x8086, 0x1c02,
     "6 Series AHCI",
 },
 {
     0x8086, 0x1c03,
     "6 Series AHCI",
 },
 {
     0x8086, 0x1c04,
     "6 Series RAID",
 },
 {
     0x8086, 0x1c05,
     "6 Series RAID",
 },
 {
     0x8086, 0x1c06,
     "6 Series RAID",
 },
 {
     0x8086, 0x1c08,
     "6 Series SATA",
 },
 {
     0x8086, 0x1c09,
     "6 Series SATA",
 },
 {
     0x8086, 0x1c10,
     "6 Series PCIE",
 },
 {
     0x8086, 0x1c12,
     "6 Series PCIE",
 },
 {
     0x8086, 0x1c14,
     "6 Series PCIE",
 },
 {
     0x8086, 0x1c16,
     "6 Series PCIE",
 },
 {
     0x8086, 0x1c18,
     "6 Series PCIE",
 },
 {
     0x8086, 0x1c1a,
     "6 Series PCIE",
 },
 {
     0x8086, 0x1c1c,
     "6 Series PCIE",
 },
 {
     0x8086, 0x1c1e,
     "6 Series PCIE",
 },
 {
     0x8086, 0x1c20,
     "6 Series HD Audio",
 },
 {
     0x8086, 0x1c22,
     "6 Series SMBus",
 },
 {
     0x8086, 0x1c24,
     "6 Series Thermal",
 },
 {
     0x8086, 0x1c25,
     "6 Series DMI-PCI",
 },
 {
     0x8086, 0x1c26,
     "6 Series USB",
 },
 {
     0x8086, 0x1c27,
     "6 Series USB",
 },
 {
     0x8086, 0x1c2c,
     "6 Series USB",
 },
 {
     0x8086, 0x1c2d,
     "6 Series USB",
 },
 {
     0x8086, 0x1c3a,
     "6 Series MEI",
 },
 {
     0x8086, 0x1c3d,
     "6 Series KT",
 },
 {
     0x8086, 0x1c44,
     "Z68 LPC",
 },
 {
     0x8086, 0x1c46,
     "P67 LPC",
 },
 {
     0x8086, 0x1c47,
     "UM67 LPC",
 },
 {
     0x8086, 0x1c49,
     "HM65 LPC",
 },
 {
     0x8086, 0x1c4a,
     "H67 LPC",
 },
 {
     0x8086, 0x1c4b,
     "HM67 LPC",
 },
 {
     0x8086, 0x1c4c,
     "Q65 LPC",
 },
 {
     0x8086, 0x1c4d,
     "QS67 LPC",
 },
 {
     0x8086, 0x1c4e,
     "Q67 LPC",
 },
 {
     0x8086, 0x1c4f,
     "QM67 LPC",
 },
 {
     0x8086, 0x1c50,
     "B65 LPC",
 },
 {
     0x8086, 0x1c52,
     "C202 LPC",
 },
 {
     0x8086, 0x1c54,
     "C204 LPC",
 },
 {
     0x8086, 0x1c56,
     "C206 LPC",
 },
 {
     0x8086, 0x1c5c,
     "H61 LPC",
 },
 {
     0x8086, 0x1d00,
     "C600 SATA",
 },
 {
     0x8086, 0x1d02,
     "C600 AHCI",
 },
 {
     0x8086, 0x1d04,
     "C600 RAID",
 },
 {
     0x8086, 0x1d06,
     "C600 RAID",
 },
 {
     0x8086, 0x1d10,
     "C600 PCIE",
 },
 {
     0x8086, 0x1d12,
     "C600 PCIE",
 },
 {
     0x8086, 0x1d14,
     "C600 PCIE",
 },
 {
     0x8086, 0x1d16,
     "C600 PCIE",
 },
 {
     0x8086, 0x1d18,
     "C600 PCIE",
 },
 {
     0x8086, 0x1d1a,
     "C600 PCIE",
 },
 {
     0x8086, 0x1d1c,
     "C600 PCIE",
 },
 {
     0x8086, 0x1d1e,
     "C600 PCIE",
 },
 {
     0x8086, 0x1d20,
     "C600 HD Audio",
 },
 {
     0x8086, 0x1d22,
     "C600 SMBus",
 },
 {
     0x8086, 0x1d24,
     "C600 Thermal",
 },
 {
     0x8086, 0x1d26,
     "C600 USB",
 },
 {
     0x8086, 0x1d2d,
     "C600 USB",
 },
 {
     0x8086, 0x1d33,
     "C600 LAN",
 },
 {
     0x8086, 0x1d3a,
     "C600 MEI",
 },
 {
     0x8086, 0x1d3b,
     "C600 MEI",
 },
 {
     0x8086, 0x1d3e,
     "C600 Virtual PCIE",
 },
 {
     0x8086, 0x1d41,
     "C600 LPC",
 },
 {
     0x8086, 0x1d70,
     "C600 SMBus",
 },
 {
     0x8086, 0x1d71,
     "C600 SMBus",
 },
 {
     0x8086, 0x1d72,
     "C600 SMBus",
 },
 {
     0x8086, 0x1e00,
     "7 Series SATA",
 },
 {
     0x8086, 0x1e01,
     "7 Series SATA",
 },
 {
     0x8086, 0x1e02,
     "7 Series AHCI",
 },
 {
     0x8086, 0x1e03,
     "7 Series AHCI",
 },
 {
     0x8086, 0x1e04,
     "7 Series RAID",
 },
 {
     0x8086, 0x1e06,
     "7 Series RAID",
 },
 {
     0x8086, 0x1e07,
     "7 Series RAID",
 },
 {
     0x8086, 0x1e08,
     "7 Series SATA",
 },
 {
     0x8086, 0x1e09,
     "7 Series SATA",
 },
 {
     0x8086, 0x1e0e,
     "7 Series RAID",
 },
 {
     0x8086, 0x1e10,
     "7 Series PCIE",
 },
 {
     0x8086, 0x1e12,
     "7 Series PCIE",
 },
 {
     0x8086, 0x1e14,
     "7 Series PCIE",
 },
 {
     0x8086, 0x1e16,
     "7 Series PCIE",
 },
 {
     0x8086, 0x1e18,
     "7 Series PCIE",
 },
 {
     0x8086, 0x1e1a,
     "7 Series PCIE",
 },
 {
     0x8086, 0x1e1c,
     "7 Series PCIE",
 },
 {
     0x8086, 0x1e1e,
     "7 Series PCIE",
 },
 {
     0x8086, 0x1e20,
     "7 Series HD Audio",
 },
 {
     0x8086, 0x1e22,
     "7 Series SMBus",
 },
 {
     0x8086, 0x1e24,
     "7 Series Thermal",
 },
 {
     0x8086, 0x1e26,
     "7 Series USB",
 },
 {
     0x8086, 0x1e2d,
     "7 Series USB",
 },
 {
     0x8086, 0x1e31,
     "7 Series xHCI",
 },
 {
     0x8086, 0x1e3a,
     "7 Series MEI",
 },
 {
     0x8086, 0x1e3b,
     "7 Series MEI",
 },
 {
     0x8086, 0x1e3d,
     "7 Series KT",
 },
 {
     0x8086, 0x1e44,
     "Z77 LPC",
 },
 {
     0x8086, 0x1e46,
     "Z75 LPC",
 },
 {
     0x8086, 0x1e49,
     "B75 LPC",
 },
 {
     0x8086, 0x1e4a,
     "H77 LPC",
 },
 {
     0x8086, 0x1e53,
     "C216 LPC",
 },
 {
     0x8086, 0x1e55,
     "QM77 LPC",
 },
 {
     0x8086, 0x1e56,
     "QS77 LPC",
 },
 {
     0x8086, 0x1e57,
     "HM77 LPC",
 },
 {
     0x8086, 0x1e58,
     "UM77 LPC",
 },
 {
     0x8086, 0x1e59,
     "HM76 LPC",
 },
 {
     0x8086, 0x1e5d,
     "HM75 LPC",
 },
 {
     0x8086, 0x1e5e,
     "HM70 LPC",
 },
 {
     0x8086, 0x1e5f,
     "NM70 LPC",
 },
 {
     0x8086, 0x1f02,
     "Atom C2000 Host",
 },
 {
     0x8086, 0x1f08,
     "Atom C2000 Host",
 },
 {
     0x8086, 0x1f0b,
     "Atom C2000 Host",
 },
 {
     0x8086, 0x1f10,
     "Atom C2000 PCIE",
 },
 {
     0x8086, 0x1f11,
     "Atom C2000 PCIE",
 },
 {
     0x8086, 0x1f12,
     "Atom C2000 PCIE",
 },
 {
     0x8086, 0x1f13,
     "Atom C2000 PCIE",
 },
 {
     0x8086, 0x1f14,
     "Atom C2000 RAS",
 },
 {
     0x8086, 0x1f15,
     "Atom C2000 SMBus",
 },
 {
     0x8086, 0x1f16,
     "Atom C2000 RCEC",
 },
 {
     0x8086, 0x1f20,
     "Atom C2000 SATA",
 },
 {
     0x8086, 0x1f21,
     "Atom C2000 SATA",
 },
 {
     0x8086, 0x1f22,
     "Atom C2000 AHCI",
 },
 {
     0x8086, 0x1f23,
     "Atom C2000 AHCI",
 },
 {
     0x8086, 0x1f2c,
     "Atom C2000 USB",
 },
 {
     0x8086, 0x1f30,
     "Atom C2000 SATA",
 },
 {
     0x8086, 0x1f31,
     "Atom C2000 SATA",
 },
 {
     0x8086, 0x1f32,
     "Atom C2000 AHCI",
 },
 {
     0x8086, 0x1f33,
     "Atom C2000 AHCI",
 },
 {
     0x8086, 0x1f38,
     "Atom C2000 PCU",
 },
 {
     0x8086, 0x1f39,
     "Atom C2000 PCU",
 },
 {
     0x8086, 0x1f3a,
     "Atom C2000 PCU",
 },
 {
     0x8086, 0x1f3b,
     "Atom C2000 PCU",
 },
 {
     0x8086, 0x1f3c,
     "Atom C2000 PCU SMBus",
 },
 {
     0x8086, 0x1f40,
     "I354",
 },
 {
     0x8086, 0x1f41,
     "I354 SGMII",
 },
 {
     0x8086, 0x1f45,
     "I354",
 },
 {
     0x8086, 0x2280,
     "Braswell Host",
 },
 {
     0x8086, 0x2284,
     "Braswell HD Audio",
 },
 {
     0x8086, 0x2286,
     "Braswell SIO DMA",
 },
 {
     0x8086, 0x228a,
     "Braswell Serial",
 },
 {
     0x8086, 0x228c,
     "Braswell Serial",
 },
 {
     0x8086, 0x2292,
     "Braswell SMBus",
 },
 {
     0x8086, 0x2298,
     "Braswell TXE",
 },
 {
     0x8086, 0x229c,
     "Braswell PCU LPC",
 },
 {
     0x8086, 0x22a3,
     "Braswell AHCI",
 },
 {
     0x8086, 0x22a8,
     "Braswell LPE Audio",
 },
 {
     0x8086, 0x22b0,
     "HD Graphics",
 },
 {
     0x8086, 0x22b1,
     "HD Graphics",
 },
 {
     0x8086, 0x22b2,
     "HD Graphics",
 },
 {
     0x8086, 0x22b3,
     "HD Graphics",
 },
 {
     0x8086, 0x22b5,
     "Braswell xHCI",
 },
 {
     0x8086, 0x22b7,
     "Braswell USB OTG",
 },
 {
     0x8086, 0x22b8,
     "Braswell Camera ISP",
 },
 {
     0x8086, 0x22c0,
     "Braswell SIO DMA",
 },
 {
     0x8086, 0x22c1,
     "Braswell SIO I2C",
 },
 {
     0x8086, 0x22c2,
     "Braswell SIO I2C",
 },
 {
     0x8086, 0x22c3,
     "Braswell SIO I2C",
 },
 {
     0x8086, 0x22c4,
     "Braswell SIO I2C",
 },
 {
     0x8086, 0x22c5,
     "Braswell SIO I2C",
 },
 {
     0x8086, 0x22c6,
     "Braswell SIO I2C",
 },
 {
     0x8086, 0x22c7,
     "Braswell SIO I2C",
 },
 {
     0x8086, 0x22c8,
     "Braswell PCIE",
 },
 {
     0x8086, 0x22ca,
     "Braswell PCIE",
 },
 {
     0x8086, 0x22cc,
     "Braswell PCIE",
 },
 {
     0x8086, 0x22ce,
     "Braswell PCIE",
 },
 {
     0x8086, 0x22d8,
     "Braswell Sensor Hub",
 },
 {
     0x8086, 0x22dc,
     "Braswell Power",
 },
 {
     0x8086, 0x2310,
     "DH8900 LPC",
 },
 {
     0x8086, 0x2323,
     "DH8900 AHCI",
 },
 {
     0x8086, 0x2326,
     "DH8900 SATA",
 },
 {
     0x8086, 0x2330,
     "DH8900 SMBus",
 },
 {
     0x8086, 0x2332,
     "DH8900 Thermal",
 },
 {
     0x8086, 0x2334,
     "DH8900 USB",
 },
 {
     0x8086, 0x2335,
     "DH8900 USB",
 },
 {
     0x8086, 0x2342,
     "DH8900 PCIE",
 },
 {
     0x8086, 0x2343,
     "DH8900 PCIE",
 },
 {
     0x8086, 0x2344,
     "DH8900 PCIE",
 },
 {
     0x8086, 0x2345,
     "DH8900 PCIE",
 },
 {
     0x8086, 0x2346,
     "DH8900 PCIE",
 },
 {
     0x8086, 0x2347,
     "DH8900 PCIE",
 },
 {
     0x8086, 0x2348,
     "DH8900 PCIE",
 },
 {
     0x8086, 0x2349,
     "DH8900 PCIE",
 },
 {
     0x8086, 0x2360,
     "DH8900 Watchdog",
 },
 {
     0x8086, 0x23a6,
     "DH8900 SATA",
 },
 {
     0x8086, 0x2410,
     "82801AA LPC",
 },
 {
     0x8086, 0x2411,
     "82801AA IDE",
 },
 {
     0x8086, 0x2412,
     "82801AA USB",
 },
 {
     0x8086, 0x2413,
     "82801AA SMBus",
 },
 {
     0x8086, 0x2415,
     "82801AA AC97",
 },
 {
     0x8086, 0x2416,
     "82801AA Modem",
 },
 {
     0x8086, 0x2418,
     "82801AA Hub-to-PCI",
 },
 {
     0x8086, 0x2420,
     "82801AB LPC",
 },
 {
     0x8086, 0x2421,
     "82801AB IDE",
 },
 {
     0x8086, 0x2422,
     "82801AB USB",
 },
 {
     0x8086, 0x2423,
     "82801AB SMBus",
 },
 {
     0x8086, 0x2425,
     "82801AB AC97",
 },
 {
     0x8086, 0x2426,
     "82801AB Modem",
 },
 {
     0x8086, 0x2428,
     "82801AB Hub-to-PCI",
 },
 {
     0x8086, 0x2440,
     "82801BA LPC",
 },
 {
     0x8086, 0x2442,
     "82801BA USB",
 },
 {
     0x8086, 0x2443,
     "82801BA SMBus",
 },
 {
     0x8086, 0x2444,
     "82801BA USB",
 },
 {
     0x8086, 0x2445,
     "82801BA AC97",
 },
 {
     0x8086, 0x2446,
     "82801BA Modem",
 },
 {
     0x8086, 0x2448,
     "82801BAM Hub-to-PCI",
 },
 {
     0x8086, 0x2449,
     "82562",
 },
 {
     0x8086, 0x244a,
     "82801BAM IDE",
 },
 {
     0x8086, 0x244b,
     "82801BA IDE",
 },
 {
     0x8086, 0x244c,
     "82801BAM LPC",
 },
 {
     0x8086, 0x244e,
     "82801BA Hub-to-PCI",
 },
 {
     0x8086, 0x2450,
     "82801E LPC",
 },
 {
     0x8086, 0x2452,
     "82801E USB",
 },
 {
     0x8086, 0x2453,
     "82801E SMBus",
 },
 {
     0x8086, 0x2459,
     "82801E LAN",
 },
 {
     0x8086, 0x245d,
     "82801E LAN",
 },
 {
     0x8086, 0x2480,
     "82801CA LPC",
 },
 {
     0x8086, 0x2482,
     "82801CA/CAM USB",
 },
 {
     0x8086, 0x2483,
     "82801CA/CAM SMBus",
 },
 {
     0x8086, 0x2484,
     "82801CA/CAM USB",
 },
 {
     0x8086, 0x2485,
     "82801CA/CAM AC97",
 },
 {
     0x8086, 0x2486,
     "82801CA/CAM Modem",
 },
 {
     0x8086, 0x2487,
     "82801CA/CAM USB",
 },
 {
     0x8086, 0x248a,
     "82801CAM IDE",
 },
 {
     0x8086, 0x248b,
     "82801CA IDE",
 },
 {
     0x8086, 0x248c,
     "82801CAM LPC",
 },
 {
     0x8086, 0x24c0,
     "82801DB LPC",
 },
 {
     0x8086, 0x24c1,
     "82801DBL IDE",
 },
 {
     0x8086, 0x24c2,
     "82801DB USB",
 },
 {
     0x8086, 0x24c3,
     "82801DB SMBus",
 },
 {
     0x8086, 0x24c4,
     "82801DB USB",
 },
 {
     0x8086, 0x24c5,
     "82801DB AC97",
 },
 {
     0x8086, 0x24c6,
     "82801DB Modem",
 },
 {
     0x8086, 0x24c7,
     "82801DB USB",
 },
 {
     0x8086, 0x24ca,
     "82801DBM IDE",
 },
 {
     0x8086, 0x24cb,
     "82801DB IDE",
 },
 {
     0x8086, 0x24cc,
     "82801DBM LPC",
 },
 {
     0x8086, 0x24cd,
     "82801DB USB",
 },
 {
     0x8086, 0x24d0,
     "82801EB/ER LPC",
 },
 {
     0x8086, 0x24d1,
     "82801EB SATA",
 },
 {
     0x8086, 0x24d2,
     "82801EB/ER USB",
 },
 {
     0x8086, 0x24d3,
     "82801EB/ER SMBus",
 },
 {
     0x8086, 0x24d4,
     "82801EB/ER USB",
 },
 {
     0x8086, 0x24d5,
     "82801EB/ER AC97",
 },
 {
     0x8086, 0x24d6,
     "82801EB/ER Modem",
 },
 {
     0x8086, 0x24d7,
     "82801EB/ER USB",
 },
 {
     0x8086, 0x24db,
     "82801EB/ER IDE",
 },
 {
     0x8086, 0x24dd,
     "82801EB/ER USB2",
 },
 {
     0x8086, 0x24de,
     "82801EB/ER USB",
 },
 {
     0x8086, 0x24df,
     "82801ER SATA",
 },
 {
     0x8086, 0x24f3,
     "Dual Band Wireless AC 8260",
 },
 {
     0x8086, 0x24f4,
     "Dual Band Wireless AC 8260",
 },
 {
     0x8086, 0x24f5,
     "Dual Band Wireless AC 4165",
 },
 {
     0x8086, 0x24f6,
     "Dual Band Wireless AC 4165",
 },
 {
     0x8086, 0x24fb,
     "Dual Band Wireless-AC 3168",
 },
 {
     0x8086, 0x24fd,
     "Dual Band Wireless-AC 8265",
 },
 {
     0x8086, 0x2501,
     "82820 Host",
 },
 {
     0x8086, 0x250f,
     "82820 AGP",
 },
 {
     0x8086, 0x2522,
     "Optane",
 },
 {
     0x8086, 0x2530,
     "82850 Host",
 },
 {
     0x8086, 0x2531,
     "82860 Host",
 },
 {
     0x8086, 0x2532,
     "82850/82860 AGP",
 },
 {
     0x8086, 0x2533,
     "82860 PCI",
 },
 {
     0x8086, 0x2534,
     "82860 PCI",
 },
 {
     0x8086, 0x2535,
     "82860 PCI",
 },
 {
     0x8086, 0x2536,
     "82860 PCI",
 },
 {
     0x8086, 0x2540,
     "E7500 Host",
 },
 {
     0x8086, 0x2541,
     "E7500 Error Reporting",
 },
 {
     0x8086, 0x2543,
     "E7500 PCI",
 },
 {
     0x8086, 0x2544,
     "E7500 PCI",
 },
 {
     0x8086, 0x2545,
     "E7500 PCI",
 },
 {
     0x8086, 0x2546,
     "E7500 PCI",
 },
 {
     0x8086, 0x2547,
     "E7500 PCI",
 },
 {
     0x8086, 0x2548,
     "E7500 PCI",
 },
 {
     0x8086, 0x254c,
     "E7501 Host",
 },
 {
     0x8086, 0x2550,
     "E7505 Host",
 },
 {
     0x8086, 0x2551,
     "E7505 Error Reporting",
 },
 {
     0x8086, 0x2552,
     "E7505 AGP",
 },
 {
     0x8086, 0x2553,
     "E7505 PCI",
 },
 {
     0x8086, 0x2554,
     "E7505 PCI",
 },
 {
     0x8086, 0x2560,
     "82845G Host",
 },
 {
     0x8086, 0x2561,
     "82845G AGP",
 },
 {
     0x8086, 0x2562,
     "82845G Video",
 },
 {
     0x8086, 0x2570,
     "82865G Host",
 },
 {
     0x8086, 0x2571,
     "82865G AGP",
 },
 {
     0x8086, 0x2572,
     "82865G Video",
 },
 {
     0x8086, 0x2573,
     "82865G CSA",
 },
 {
     0x8086, 0x2576,
     "82865G Overflow",
 },
 {
     0x8086, 0x2578,
     "82875P Host",
 },
 {
     0x8086, 0x2579,
     "82875P AGP",
 },
 {
     0x8086, 0x257b,
     "82875P CSA",
 },
 {
     0x8086, 0x2580,
     "82915G Host",
 },
 {
     0x8086, 0x2581,
     "82915G PCIE",
 },
 {
     0x8086, 0x2582,
     "82915G Video",
 },
 {
     0x8086, 0x2584,
     "82925X Host",
 },
 {
     0x8086, 0x2585,
     "82925X PCIE",
 },
 {
     0x8086, 0x2588,
     "E7221 Host",
 },
 {
     0x8086, 0x2589,
     "E7221 PCIE",
 },
 {
     0x8086, 0x258a,
     "E7221 Video",
 },
 {
     0x8086, 0x2590,
     "82915GM Host",
 },
 {
     0x8086, 0x2591,
     "82915GM PCIE",
 },
 {
     0x8086, 0x2592,
     "82915GM Video",
 },
 {
     0x8086, 0x25a1,
     "6300ESB LPC",
 },
 {
     0x8086, 0x25a2,
     "6300ESB IDE",
 },
 {
     0x8086, 0x25a3,
     "6300ESB SATA",
 },
 {
     0x8086, 0x25a4,
     "6300ESB SMBus",
 },
 {
     0x8086, 0x25a6,
     "6300ESB AC97",
 },
 {
     0x8086, 0x25a7,
     "6300ESB Modem",
 },
 {
     0x8086, 0x25a9,
     "6300ESB USB",
 },
 {
     0x8086, 0x25aa,
     "6300ESB USB",
 },
 {
     0x8086, 0x25ab,
     "6300ESB WDT",
 },
 {
     0x8086, 0x25ac,
     "6300ESB APIC",
 },
 {
     0x8086, 0x25ad,
     "6300ESB USB",
 },
 {
     0x8086, 0x25ae,
     "6300ESB PCIX",
 },
 {
     0x8086, 0x25b0,
     "6300ESB SATA",
 },
 {
     0x8086, 0x25c0,
     "5000X Host",
 },
 {
     0x8086, 0x25d0,
     "5000Z Host",
 },
 {
     0x8086, 0x25d4,
     "5000V Host",
 },
 {
     0x8086, 0x25d8,
     "5000P Host",
 },
 {
     0x8086, 0x25e2,
     "5000 PCIE",
 },
 {
     0x8086, 0x25e3,
     "5000 PCIE",
 },
 {
     0x8086, 0x25e4,
     "5000 PCIE",
 },
 {
     0x8086, 0x25e5,
     "5000 PCIE",
 },
 {
     0x8086, 0x25e6,
     "5000 PCIE",
 },
 {
     0x8086, 0x25e7,
     "5000 PCIE",
 },
 {
     0x8086, 0x25f0,
     "5000 Error Reporting",
 },
 {
     0x8086, 0x25f1,
     "5000 Reserved",
 },
 {
     0x8086, 0x25f3,
     "5000 Reserved",
 },
 {
     0x8086, 0x25f5,
     "5000 FBD",
 },
 {
     0x8086, 0x25f6,
     "5000 FBD",
 },
 {
     0x8086, 0x25f7,
     "5000 PCIE x8",
 },
 {
     0x8086, 0x25f8,
     "5000 PCIE x8",
 },
 {
     0x8086, 0x25f9,
     "5000 PCIE x8",
 },
 {
     0x8086, 0x25fa,
     "5000 PCIE x16",
 },
 {
     0x8086, 0x2600,
     "E8500 Host",
 },
 {
     0x8086, 0x2601,
     "E8500 PCIE",
 },
 {
     0x8086, 0x2602,
     "E8500 PCIE",
 },
 {
     0x8086, 0x2603,
     "E8500 PCIE",
 },
 {
     0x8086, 0x2604,
     "E8500 PCIE",
 },
 {
     0x8086, 0x2605,
     "E8500 PCIE",
 },
 {
     0x8086, 0x2606,
     "E8500 PCIE",
 },
 {
     0x8086, 0x2607,
     "E8500 PCIE",
 },
 {
     0x8086, 0x2608,
     "E8500 PCIE x8",
 },
 {
     0x8086, 0x2609,
     "E8500 PCIE x8",
 },
 {
     0x8086, 0x260a,
     "E8500 PCIE x8",
 },
 {
     0x8086, 0x260c,
     "E8500 IMI",
 },
 {
     0x8086, 0x2610,
     "E8500 FSB/Boot/Interrupt",
 },
 {
     0x8086, 0x2611,
     "E8500 Address Mapping",
 },
 {
     0x8086, 0x2612,
     "E8500 RAS",
 },
 {
     0x8086, 0x2613,
     "E8500 Misc",
 },
 {
     0x8086, 0x2614,
     "E8500 Misc",
 },
 {
     0x8086, 0x2615,
     "E8500 Misc",
 },
 {
     0x8086, 0x2617,
     "E8500 Reserved",
 },
 {
     0x8086, 0x2618,
     "E8500 Reserved",
 },
 {
     0x8086, 0x2619,
     "E8500 Reserved",
 },
 {
     0x8086, 0x261a,
     "E8500 Reserved",
 },
 {
     0x8086, 0x261b,
     "E8500 Reserved",
 },
 {
     0x8086, 0x261c,
     "E8500 Reserved",
 },
 {
     0x8086, 0x261d,
     "E8500 Reserved",
 },
 {
     0x8086, 0x261e,
     "E8500 Reserved",
 },
 {
     0x8086, 0x2620,
     "E8500 XMB",
 },
 {
     0x8086, 0x2621,
     "E8500 XMB Misc",
 },
 {
     0x8086, 0x2622,
     "E8500 XMB MAI",
 },
 {
     0x8086, 0x2623,
     "E8500 XMB DDR",
 },
 {
     0x8086, 0x2624,
     "E8500 XMB Reserved",
 },
 {
     0x8086, 0x2625,
     "E8500 XMB Reserved",
 },
 {
     0x8086, 0x2626,
     "E8500 XMB Reserved",
 },
 {
     0x8086, 0x2627,
     "E8500 XMB Reserved",
 },
 {
     0x8086, 0x2640,
     "82801FB LPC",
 },
 {
     0x8086, 0x2641,
     "82801FBM LPC",
 },
 {
     0x8086, 0x2651,
     "82801FB SATA",
 },
 {
     0x8086, 0x2652,
     "82801FR SATA",
 },
 {
     0x8086, 0x2653,
     "82801FBM SATA",
 },
 {
     0x8086, 0x2658,
     "82801FB USB",
 },
 {
     0x8086, 0x2659,
     "82801FB USB",
 },
 {
     0x8086, 0x265a,
     "82801FB USB",
 },
 {
     0x8086, 0x265b,
     "82801FB USB",
 },
 {
     0x8086, 0x265c,
     "82801FB USB",
 },
 {
     0x8086, 0x2660,
     "82801FB PCIE",
 },
 {
     0x8086, 0x2662,
     "82801FB PCIE",
 },
 {
     0x8086, 0x2664,
     "82801FB PCIE",
 },
 {
     0x8086, 0x2666,
     "82801FB PCIE",
 },
 {
     0x8086, 0x2668,
     "82801FB HD Audio",
 },
 {
     0x8086, 0x266a,
     "82801FB SMBus",
 },
 {
     0x8086, 0x266c,
     "82801FB LAN",
 },
 {
     0x8086, 0x266d,
     "82801FB Modem",
 },
 {
     0x8086, 0x266e,
     "82801FB AC97",
 },
 {
     0x8086, 0x266f,
     "82801FB IDE",
 },
 {
     0x8086, 0x2670,
     "6321ESB LPC",
 },
 {
     0x8086, 0x2680,
     "6321ESB SATA",
 },
 {
     0x8086, 0x2681,
     "6321ESB AHCI",
 },
 {
     0x8086, 0x2682,
     "6321ESB RAID",
 },
 {
     0x8086, 0x2683,
     "6321ESB RAID",
 },
 {
     0x8086, 0x2688,
     "6321ESB USB",
 },
 {
     0x8086, 0x2689,
     "6321ESB USB",
 },
 {
     0x8086, 0x268a,
     "6321ESB USB",
 },
 {
     0x8086, 0x268b,
     "6321ESB USB",
 },
 {
     0x8086, 0x268c,
     "6321ESB USB",
 },
 {
     0x8086, 0x2690,
     "6321ESB PCIE",
 },
 {
     0x8086, 0x2692,
     "6321ESB PCIE",
 },
 {
     0x8086, 0x2694,
     "6321ESB PCIE",
 },
 {
     0x8086, 0x2696,
     "6321ESB PCIE",
 },
 {
     0x8086, 0x2698,
     "6321ESB AC97",
 },
 {
     0x8086, 0x2699,
     "6321ESB Modem",
 },
 {
     0x8086, 0x269a,
     "6321ESB HD Audio",
 },
 {
     0x8086, 0x269b,
     "6321ESB SMBus",
 },
 {
     0x8086, 0x269e,
     "6321ESB IDE",
 },
 {
     0x8086, 0x2770,
     "82945G Host",
 },
 {
     0x8086, 0x2771,
     "82945G PCIE",
 },
 {
     0x8086, 0x2772,
     "82945G Video",
 },
 {
     0x8086, 0x2774,
     "82955X Host",
 },
 {
     0x8086, 0x2775,
     "82955X PCIE",
 },
 {
     0x8086, 0x2776,
     "82945G Video",
 },
 {
     0x8086, 0x2778,
     "E7230 Host",
 },
 {
     0x8086, 0x2779,
     "E7230 PCIE",
 },
 {
     0x8086, 0x277a,
     "82975X PCIE",
 },
 {
     0x8086, 0x277c,
     "82975X Host",
 },
 {
     0x8086, 0x277d,
     "82975X PCIE",
 },
 {
     0x8086, 0x2782,
     "82915G Video",
 },
 {
     0x8086, 0x2792,
     "82915GM Video",
 },
 {
     0x8086, 0x27a0,
     "82945GM Host",
 },
 {
     0x8086, 0x27a1,
     "82945GM PCIE",
 },
 {
     0x8086, 0x27a2,
     "82945GM Video",
 },
 {
     0x8086, 0x27a6,
     "82945GM Video",
 },
 {
     0x8086, 0x27ac,
     "82945GME Host",
 },
 {
     0x8086, 0x27ae,
     "82945GME Video",
 },
 {
     0x8086, 0x27b0,
     "82801GH LPC",
 },
 {
     0x8086, 0x27b8,
     "82801GB LPC",
 },
 {
     0x8086, 0x27b9,
     "82801GBM LPC",
 },
 {
     0x8086, 0x27bc,
     "NM10 LPC",
 },
 {
     0x8086, 0x27bd,
     "82801GHM LPC",
 },
 {
     0x8086, 0x27c0,
     "82801GB SATA",
 },
 {
     0x8086, 0x27c1,
     "82801GR AHCI",
 },
 {
     0x8086, 0x27c3,
     "82801GR RAID",
 },
 {
     0x8086, 0x27c4,
     "82801GBM SATA",
 },
 {
     0x8086, 0x27c5,
     "82801GBM AHCI",
 },
 {
     0x8086, 0x27c6,
     "82801GHM RAID",
 },
 {
     0x8086, 0x27c8,
     "82801GB USB",
 },
 {
     0x8086, 0x27c9,
     "82801GB USB",
 },
 {
     0x8086, 0x27ca,
     "82801GB USB",
 },
 {
     0x8086, 0x27cb,
     "82801GB USB",
 },
 {
     0x8086, 0x27cc,
     "82801GB USB",
 },
 {
     0x8086, 0x27d0,
     "82801GB PCIE",
 },
 {
     0x8086, 0x27d2,
     "82801GB PCIE",
 },
 {
     0x8086, 0x27d4,
     "82801GB PCIE",
 },
 {
     0x8086, 0x27d6,
     "82801GB PCIE",
 },
 {
     0x8086, 0x27d8,
     "82801GB HD Audio",
 },
 {
     0x8086, 0x27da,
     "82801GB SMBus",
 },
 {
     0x8086, 0x27dc,
     "82801GB LAN",
 },
 {
     0x8086, 0x27dd,
     "82801GB Modem",
 },
 {
     0x8086, 0x27de,
     "82801GB AC97",
 },
 {
     0x8086, 0x27df,
     "82801GB IDE",
 },
 {
     0x8086, 0x27e0,
     "82801G PCIE",
 },
 {
     0x8086, 0x27e2,
     "82801G PCIE",
 },
 {
     0x8086, 0x2810,
     "82801H LPC",
 },
 {
     0x8086, 0x2811,
     "82801HEM LPC",
 },
 {
     0x8086, 0x2812,
     "82801HH LPC",
 },
 {
     0x8086, 0x2814,
     "82801HO LPC",
 },
 {
     0x8086, 0x2815,
     "82801HBM LPC",
 },
 {
     0x8086, 0x2820,
     "82801H SATA",
 },
 {
     0x8086, 0x2821,
     "82801H AHCI",
 },
 {
     0x8086, 0x2822,
     "82801H RAID",
 },
 {
     0x8086, 0x2824,
     "82801H AHCI",
 },
 {
     0x8086, 0x2825,
     "82801H SATA",
 },
 {
     0x8086, 0x2828,
     "82801HBM SATA",
 },
 {
     0x8086, 0x2829,
     "82801HBM AHCI",
 },
 {
     0x8086, 0x282a,
     "82801HBM RAID",
 },
 {
     0x8086, 0x283e,
     "82801H SMBus",
 },
 {
     0x8086, 0x284f,
     "82801H DMI-PCI",
 },
 {
     0x8086, 0x2830,
     "82801H USB",
 },
 {
     0x8086, 0x2831,
     "82801H USB",
 },
 {
     0x8086, 0x2832,
     "82801H USB",
 },
 {
     0x8086, 0x2833,
     "82801H USB",
 },
 {
     0x8086, 0x2834,
     "82801H USB",
 },
 {
     0x8086, 0x2835,
     "82801H USB",
 },
 {
     0x8086, 0x2836,
     "82801H USB",
 },
 {
     0x8086, 0x283a,
     "82801H USB",
 },
 {
     0x8086, 0x283f,
     "82801H PCIE",
 },
 {
     0x8086, 0x2841,
     "82801H PCIE",
 },
 {
     0x8086, 0x2843,
     "82801H PCIE",
 },
 {
     0x8086, 0x2845,
     "82801H PCIE",
 },
 {
     0x8086, 0x2847,
     "82801H PCIE",
 },
 {
     0x8086, 0x2849,
     "82801H PCIE",
 },
 {
     0x8086, 0x284b,
     "82801H HD Audio",
 },
 {
     0x8086, 0x284f,
     "82801H Thermal",
 },
 {
     0x8086, 0x2850,
     "82801HBM IDE",
 },
 {
     0x8086, 0x2912,
     "82801IH LPC",
 },
 {
     0x8086, 0x2914,
     "82801IO LPC",
 },
 {
     0x8086, 0x2916,
     "82801IR LPC",
 },
 {
     0x8086, 0x2917,
     "82801IEM LPC",
 },
 {
     0x8086, 0x2918,
     "82801IB LPC",
 },
 {
     0x8086, 0x2919,
     "82801IBM LPC",
 },
 {
     0x8086, 0x2920,
     "82801I SATA",
 },
 {
     0x8086, 0x2921,
     "82801I SATA",
 },
 {
     0x8086, 0x2922,
     "82801I AHCI",
 },
 {
     0x8086, 0x2923,
     "82801I AHCI",
 },
 {
     0x8086, 0x2926,
     "82801I SATA",
 },
 {
     0x8086, 0x2928,
     "82801I SATA",
 },
 {
     0x8086, 0x2929,
     "82801I AHCI",
 },
 {
     0x8086, 0x292a,
     "82801I RAID",
 },
 {
     0x8086, 0x292d,
     "82801I SATA",
 },
 {
     0x8086, 0x292e,
     "82801I SATA",
 },
 {
     0x8086, 0x2930,
     "82801I SMBus",
 },
 {
     0x8086, 0x2932,
     "82801I Thermal",
 },
 {
     0x8086, 0x2934,
     "82801I USB",
 },
 {
     0x8086, 0x2935,
     "82801I USB",
 },
 {
     0x8086, 0x2936,
     "82801I USB",
 },
 {
     0x8086, 0x2937,
     "82801I USB",
 },
 {
     0x8086, 0x2938,
     "82801I USB",
 },
 {
     0x8086, 0x2939,
     "82801I USB",
 },
 {
     0x8086, 0x293a,
     "82801I USB",
 },
 {
     0x8086, 0x293c,
     "82801I USB",
 },
 {
     0x8086, 0x293e,
     "82801I HD Audio",
 },
 {
     0x8086, 0x2940,
     "82801I PCIE",
 },
 {
     0x8086, 0x2942,
     "82801I PCIE",
 },
 {
     0x8086, 0x2944,
     "82801I PCIE",
 },
 {
     0x8086, 0x2946,
     "82801I PCIE",
 },
 {
     0x8086, 0x2948,
     "82801I PCIE",
 },
 {
     0x8086, 0x294a,
     "82801I PCIE",
 },
 {
     0x8086, 0x294c,
     "ICH9 IGP C",
 },
 {
     0x8086, 0x2970,
     "82946GZ Host",
 },
 {
     0x8086, 0x2971,
     "82946GZ PCIE",
 },
 {
     0x8086, 0x2972,
     "82946GZ Video",
 },
 {
     0x8086, 0x2973,
     "82946GZ Video",
 },
 {
     0x8086, 0x2974,
     "82946GZ HECI",
 },
 {
     0x8086, 0x2975,
     "82946GZ HECI",
 },
 {
     0x8086, 0x2976,
     "82946GZ PT IDER",
 },
 {
     0x8086, 0x2977,
     "82946GZ KT",
 },
 {
     0x8086, 0x2980,
     "82G35 Host",
 },
 {
     0x8086, 0x2981,
     "82G35 PCIE",
 },
 {
     0x8086, 0x2982,
     "82G35 Video",
 },
 {
     0x8086, 0x2983,
     "82G35 Video",
 },
 {
     0x8086, 0x2984,
     "82G35 HECI",
 },
 {
     0x8086, 0x2990,
     "82Q965 Host",
 },
 {
     0x8086, 0x2991,
     "82Q965 PCIE",
 },
 {
     0x8086, 0x2992,
     "82Q965 Video",
 },
 {
     0x8086, 0x2993,
     "82Q965 Video",
 },
 {
     0x8086, 0x2994,
     "82Q965 HECI",
 },
 {
     0x8086, 0x2995,
     "82Q965 HECI",
 },
 {
     0x8086, 0x2996,
     "82Q965 PT IDER",
 },
 {
     0x8086, 0x2997,
     "82Q965 KT",
 },
 {
     0x8086, 0x29a0,
     "82G965 Host",
 },
 {
     0x8086, 0x29a1,
     "82G965 PCIE",
 },
 {
     0x8086, 0x29a2,
     "82G965 Video",
 },
 {
     0x8086, 0x29a3,
     "82G965 Video",
 },
 {
     0x8086, 0x29a4,
     "82G965 HECI",
 },
 {
     0x8086, 0x29a5,
     "82G965 HECI",
 },
 {
     0x8086, 0x29a6,
     "82G965 PT IDER",
 },
 {
     0x8086, 0x29a7,
     "82G965 KT",
 },
 {
     0x8086, 0x29b0,
     "82Q35 Host",
 },
 {
     0x8086, 0x29b1,
     "82Q35 PCIE",
 },
 {
     0x8086, 0x29b2,
     "82Q35 Video",
 },
 {
     0x8086, 0x29b3,
     "82Q35 Video",
 },
 {
     0x8086, 0x29b4,
     "82Q35 HECI",
 },
 {
     0x8086, 0x29b5,
     "82Q35 HECI",
 },
 {
     0x8086, 0x29b6,
     "82Q35 PT IDER",
 },
 {
     0x8086, 0x29b7,
     "82Q35 KT",
 },
 {
     0x8086, 0x29c0,
     "82G33 Host",
 },
 {
     0x8086, 0x29c1,
     "82G33 PCIE",
 },
 {
     0x8086, 0x29c2,
     "82G33 Video",
 },
 {
     0x8086, 0x29c3,
     "82G33 Video",
 },
 {
     0x8086, 0x29c4,
     "82G33 HECI",
 },
 {
     0x8086, 0x29c5,
     "82G33 HECI",
 },
 {
     0x8086, 0x29c6,
     "82G33 PT IDER",
 },
 {
     0x8086, 0x29c7,
     "82G33 KT",
 },
 {
     0x8086, 0x29d0,
     "82Q33 Host",
 },
 {
     0x8086, 0x29d1,
     "82Q33 PCIE",
 },
 {
     0x8086, 0x29d2,
     "82Q33 Video",
 },
 {
     0x8086, 0x29d3,
     "82Q33 Video",
 },
 {
     0x8086, 0x29d4,
     "82Q33 HECI",
 },
 {
     0x8086, 0x29d5,
     "82Q33 HECI",
 },
 {
     0x8086, 0x29d6,
     "82Q33 PT IDER",
 },
 {
     0x8086, 0x29d7,
     "82Q33 KT",
 },
 {
     0x8086, 0x29e0,
     "82X38 Host",
 },
 {
     0x8086, 0x29e1,
     "82X38 PCIE",
 },
 {
     0x8086, 0x29e4,
     "82X38 HECI",
 },
 {
     0x8086, 0x29e5,
     "82X38 HECI",
 },
 {
     0x8086, 0x29e6,
     "82X38 PT IDER",
 },
 {
     0x8086, 0x29e7,
     "82X38 KT",
 },
 {
     0x8086, 0x29e9,
     "82X38 PCIE",
 },
 {
     0x8086, 0x29f0,
     "3200/3210 Host",
 },
 {
     0x8086, 0x29f1,
     "3200/3210 PCIE",
 },
 {
     0x8086, 0x29f9,
     "3210 PCIE",
 },
 {
     0x8086, 0x2a00,
     "GM965 Host",
 },
 {
     0x8086, 0x2a01,
     "GM965 PCIE",
 },
 {
     0x8086, 0x2a02,
     "GM965 Video",
 },
 {
     0x8086, 0x2a03,
     "GM965 Video",
 },
 {
     0x8086, 0x2a07,
     "GM965 KT",
 },
 {
     0x8086, 0x2a06,
     "GM965 PT IDER",
 },
 {
     0x8086, 0x2a10,
     "GME965 Host",
 },
 {
     0x8086, 0x2a11,
     "GME965 PCIE",
 },
 {
     0x8086, 0x2a12,
     "GME965 Video",
 },
 {
     0x8086, 0x2a13,
     "GME965 Video",
 },
 {
     0x8086, 0x2a14,
     "GME965 HECI",
 },
 {
     0x8086, 0x2a15,
     "GME965 HECI",
 },
 {
     0x8086, 0x2a16,
     "GME965 PT IDER",
 },
 {
     0x8086, 0x2a17,
     "GME965 KT",
 },
 {
     0x8086, 0x2a40,
     "GM45 Host",
 },
 {
     0x8086, 0x2a41,
     "GM45 PCIE",
 },
 {
     0x8086, 0x2a42,
     "GM45 Video",
 },
 {
     0x8086, 0x2a43,
     "GM45 Video",
 },
 {
     0x8086, 0x2a44,
     "GM45 HECI",
 },
 {
     0x8086, 0x2a45,
     "GM45 HECI",
 },
 {
     0x8086, 0x2a46,
     "GM45 PT IDER",
 },
 {
     0x8086, 0x2a47,
     "GM45 KT",
 },
 {
     0x8086, 0x2e02,
     "4 Series Video",
 },
 {
     0x8086, 0x2c61,
     "QuickPath",
 },
 {
     0x8086, 0x2c62,
     "QuickPath",
 },
 {
     0x8086, 0x2d01,
     "QuickPath",
 },
 {
     0x8086, 0x2d10,
     "QPI Link",
 },
 {
     0x8086, 0x2d11,
     "QPI Physical",
 },
 {
     0x8086, 0x2d12,
     "Reserved",
 },
 {
     0x8086, 0x2d13,
     "Reserved",
 },
 {
     0x8086, 0x2e10,
     "Q45 Host",
 },
 {
     0x8086, 0x2e11,
     "Q45 PCIE",
 },
 {
     0x8086, 0x2e12,
     "Q45 Video",
 },
 {
     0x8086, 0x2e13,
     "Q45 Video",
 },
 {
     0x8086, 0x2e14,
     "Q45 HECI",
 },
 {
     0x8086, 0x2e15,
     "Q45 HECI",
 },
 {
     0x8086, 0x2e16,
     "Q45 PT IDER",
 },
 {
     0x8086, 0x2e17,
     "Q45 KT",
 },
 {
     0x8086, 0x2e20,
     "G45 Host",
 },
 {
     0x8086, 0x2e21,
     "G45 PCIE",
 },
 {
     0x8086, 0x2e22,
     "G45 Video",
 },
 {
     0x8086, 0x2e23,
     "G45 Video",
 },
 {
     0x8086, 0x2e29,
     "G45 PCIE",
 },
 {
     0x8086, 0x2e30,
     "G41 Host",
 },
 {
     0x8086, 0x2e31,
     "G45 PCIE",
 },
 {
     0x8086, 0x2e32,
     "G41 Video",
 },
 {
     0x8086, 0x2e33,
     "G41 Video",
 },
 {
     0x8086, 0x2e42,
     "B43 Video",
 },
 {
     0x8086, 0x2e92,
     "B43 Video",
 },
 {
     0x8086, 0x2f00,
     "E5 v3 Host",
 },
 {
     0x8086, 0x2f01,
     "E5 v3 PCIE",
 },
 {
     0x8086, 0x2f02,
     "E5 v3 PCIE",
 },
 {
     0x8086, 0x2f03,
     "E5 v3 PCIE",
 },
 {
     0x8086, 0x2f04,
     "E5 v3 PCIE",
 },
 {
     0x8086, 0x2f05,
     "E5 v3 PCIE",
 },
 {
     0x8086, 0x2f06,
     "E5 v3 PCIE",
 },
 {
     0x8086, 0x2f07,
     "E5 v3 PCIE",
 },
 {
     0x8086, 0x2f08,
     "E5 v3 PCIE",
 },
 {
     0x8086, 0x2f09,
     "E5 v3 PCIE",
 },
 {
     0x8086, 0x2f0a,
     "E5 v3 PCIE",
 },
 {
     0x8086, 0x2f0b,
     "E5 v3 PCIE",
 },
 {
     0x8086, 0x2f1d,
     "E5 v3 PCIE Ring",
 },
 {
     0x8086, 0x2f1e,
     "E5 v3 Scratch",
 },
 {
     0x8086, 0x2f1f,
     "E5 v3 Scratch",
 },
 {
     0x8086, 0x2f20,
     "E5 v3 DMA",
 },
 {
     0x8086, 0x2f21,
     "E5 v3 DMA",
 },
 {
     0x8086, 0x2f22,
     "E5 v3 DMA",
 },
 {
     0x8086, 0x2f23,
     "E5 v3 DMA",
 },
 {
     0x8086, 0x2f24,
     "E5 v3 DMA",
 },
 {
     0x8086, 0x2f25,
     "E5 v3 DMA",
 },
 {
     0x8086, 0x2f26,
     "E5 v3 DMA",
 },
 {
     0x8086, 0x2f27,
     "E5 v3 DMA",
 },
 {
     0x8086, 0x2f28,
     "E5 v3 Address Map",
 },
 {
     0x8086, 0x2f29,
     "E5 v3 Hot Plug",
 },
 {
     0x8086, 0x2f2a,
     "E5 v3 Error Reporting",
 },
 {
     0x8086, 0x2f2c,
     "E5 v3 I/O APIC",
 },
 {
     0x8086, 0x2f30,
     "E5 v3 Home Agent",
 },
 {
     0x8086, 0x2f32,
     "E5 v3 QPI",
 },
 {
     0x8086, 0x2f33,
     "E5 v3 QPI",
 },
 {
     0x8086, 0x2f34,
     "E5 v3 PCIE Monitor",
 },
 {
     0x8086, 0x2f36,
     "E5 v3 QPI Monitor",
 },
 {
     0x8086, 0x2f37,
     "E5 v3 QPI Monitor",
 },
 {
     0x8086, 0x2f68,
     "E5 v3 TA",
 },
 {
     0x8086, 0x2f6e,
     "E5 v3 DDR Broadcast",
 },
 {
     0x8086, 0x2f6f,
     "E5 v3 DDR Broadcast",
 },
 {
     0x8086, 0x2f70,
     "E5 v3 Home Agent Debug",
 },
 {
     0x8086, 0x2f71,
     "E5 v3 RAS",
 },
 {
     0x8086, 0x2f7d,
     "E5 v3 Scratch",
 },
 {
     0x8086, 0x2f80,
     "E5 v3 QPI",
 },
 {
     0x8086, 0x2f81,
     "E5 v3 QPI Monitor",
 },
 {
     0x8086, 0x2f83,
     "E5 v3 QPI",
 },
 {
     0x8086, 0x2f88,
     "E5 v3 VCU",
 },
 {
     0x8086, 0x2f8a,
     "E5 v3 VCU",
 },
 {
     0x8086, 0x2f90,
     "E5 v3 QPI",
 },
 {
     0x8086, 0x2f93,
     "E5 v3 QPI",
 },
 {
     0x8086, 0x2f98,
     "E5 v3 PCU",
 },
 {
     0x8086, 0x2f99,
     "E5 v3 PCU",
 },
 {
     0x8086, 0x2f9a,
     "E5 v3 PCU",
 },
 {
     0x8086, 0x2f9c,
     "E5 v3 PCU",
 },
 {
     0x8086, 0x2fa0,
     "E5 v3 Home Agent",
 },
 {
     0x8086, 0x2fa8,
     "E5 v3 Memory",
 },
 {
     0x8086, 0x2faa,
     "E5 v3 TAD",
 },
 {
     0x8086, 0x2fab,
     "E5 v3 TAD",
 },
 {
     0x8086, 0x2fac,
     "E5 v3 TAD",
 },
 {
     0x8086, 0x2fad,
     "E5 v3 TAD",
 },
 {
     0x8086, 0x2fae,
     "E5 v3 DDR Broadcast",
 },
 {
     0x8086, 0x2faf,
     "E5 v3 DDR Broadcast",
 },
 {
     0x8086, 0x2fb0,
     "E5 v3 Thermal",
 },
 {
     0x8086, 0x2fb1,
     "E5 v3 Thermal",
 },
 {
     0x8086, 0x2fb2,
     "E5 v3 Error",
 },
 {
     0x8086, 0x2fb3,
     "E5 v3 Error",
 },
 {
     0x8086, 0x2fb4,
     "E5 v3 Thermal",
 },
 {
     0x8086, 0x2fb5,
     "E5 v3 Thermal",
 },
 {
     0x8086, 0x2fb6,
     "E5 v3 Error",
 },
 {
     0x8086, 0x2fb7,
     "E5 v3 Error",
 },
 {
     0x8086, 0x2fb8,
     "E5 v3 DDRIO",
 },
 {
     0x8086, 0x2fb9,
     "E5 v3 DDRIO",
 },
 {
     0x8086, 0x2fba,
     "E5 v3 DDRIO",
 },
 {
     0x8086, 0x2fbb,
     "E5 v3 DDRIO",
 },
 {
     0x8086, 0x2fbc,
     "E5 v3 DDRIO",
 },
 {
     0x8086, 0x2fbd,
     "E5 v3 DDRIO",
 },
 {
     0x8086, 0x2fbe,
     "E5 v3 DDRIO",
 },
 {
     0x8086, 0x2fbf,
     "E5 v3 DDRIO",
 },
 {
     0x8086, 0x2fc0,
     "E5 v3 PCU",
 },
 {
     0x8086, 0x2fd0,
     "E5 v3 Thermal",
 },
 {
     0x8086, 0x2fd1,
     "E5 v3 Thermal",
 },
 {
     0x8086, 0x2fd2,
     "E5 v3 Error",
 },
 {
     0x8086, 0x2fd3,
     "E5 v3 Error",
 },
 {
     0x8086, 0x2fd4,
     "E5 v3 Thermal",
 },
 {
     0x8086, 0x2fd5,
     "E5 v3 Thermal",
 },
 {
     0x8086, 0x2fd6,
     "E5 v3 Error",
 },
 {
     0x8086, 0x2fd7,
     "E5 v3 Error",
 },
 {
     0x8086, 0x2fe0,
     "E5 v3 Unicast",
 },
 {
     0x8086, 0x2fe1,
     "E5 v3 Unicast",
 },
 {
     0x8086, 0x2fe2,
     "E5 v3 Unicast",
 },
 {
     0x8086, 0x2fe3,
     "E5 v3 Unicast",
 },
 {
     0x8086, 0x2fe4,
     "E5 v3 Unicast",
 },
 {
     0x8086, 0x2fe5,
     "E5 v3 Unicast",
 },
 {
     0x8086, 0x2fe6,
     "E5 v3 Unicast",
 },
 {
     0x8086, 0x2fe7,
     "E5 v3 Unicast",
 },
 {
     0x8086, 0x2fe8,
     "E5 v3 Unicast",
 },
 {
     0x8086, 0x2fe9,
     "E5 v3 Unicast",
 },
 {
     0x8086, 0x2fea,
     "E5 v3 Unicast",
 },
 {
     0x8086, 0x2feb,
     "E5 v3 Unicast",
 },
 {
     0x8086, 0x2fec,
     "E5 v3 Unicast",
 },
 {
     0x8086, 0x2fed,
     "E5 v3 Unicast",
 },
 {
     0x8086, 0x2fee,
     "E5 v3 Unicast",
 },
 {
     0x8086, 0x2fef,
     "E5 v3 Unicast",
 },
 {
     0x8086, 0x2ff0,
     "E5 v3 Unicast",
 },
 {
     0x8086, 0x2ff1,
     "E5 v3 Unicast",
 },
 {
     0x8086, 0x2ff2,
     "E5 v3 Unicast",
 },
 {
     0x8086, 0x2ff3,
     "E5 v3 Unicast",
 },
 {
     0x8086, 0x2ff4,
     "E5 v3 Unicast",
 },
 {
     0x8086, 0x2ff5,
     "E5 v3 Unicast",
 },
 {
     0x8086, 0x2ff6,
     "E5 v3 Unicast",
 },
 {
     0x8086, 0x2ff7,
     "E5 v3 Unicast",
 },
 {
     0x8086, 0x2ff8,
     "E5 v3 Ring Agent",
 },
 {
     0x8086, 0x2ff9,
     "E5 v3 Ring Agent",
 },
 {
     0x8086, 0x2ffa,
     "E5 v3 Ring Agent",
 },
 {
     0x8086, 0x2ffb,
     "E5 v3 Ring Agent",
 },
 {
     0x8086, 0x2ffc,
     "E5 v3 SAD",
 },
 {
     0x8086, 0x2ffd,
     "E5 v3 SAD",
 },
 {
     0x8086, 0x2ffe,
     "E5 v3 SAD",
 },
 {
     0x8086, 0x3092,
     "RCU32 I2O RAID",
 },
 {
     0x8086, 0x3124,
     "3124 SATA",
 },
 {
     0x8086, 0x3165,
     "Dual Band Wireless AC 3165",
 },
 {
     0x8086, 0x3166,
     "Dual Band Wireless AC 3165",
 },
 {
     0x8086, 0x3200,
     "31244 SATA",
 },
 {
     0x8086, 0x3340,
     "82855PM Host",
 },
 {
     0x8086, 0x3341,
     "82855PM AGP",
 },
 {
     0x8086, 0x3342,
     "82855PM Power",
 },
 {
     0x8086, 0x3403,
     "5500 Host",
 },
 {
     0x8086, 0x3405,
     "X58 Host",
 },
 {
     0x8086, 0x3406,
     "5520 Host",
 },
 {
     0x8086, 0x3408,
     "X58 PCIE",
 },
 {
     0x8086, 0x3409,
     "X58 PCIE",
 },
 {
     0x8086, 0x340a,
     "X58 PCIE",
 },
 {
     0x8086, 0x340b,
     "X58 PCIE",
 },
 {
     0x8086, 0x340c,
     "X58 PCIE",
 },
 {
     0x8086, 0x340d,
     "X58 PCIE",
 },
 {
     0x8086, 0x340e,
     "X58 PCIE",
 },
 {
     0x8086, 0x340f,
     "X58 PCIE",
 },
 {
     0x8086, 0x3410,
     "X58 PCIE",
 },
 {
     0x8086, 0x3411,
     "X58 PCIE",
 },
 {
     0x8086, 0x3418,
     "5520/X58 QuickPath",
 },
 {
     0x8086, 0x3419,
     "5520 QuickPath",
 },
 {
     0x8086, 0x3422,
     "X58 GPIO",
 },
 {
     0x8086, 0x3423,
     "X58 RAS",
 },
 {
     0x8086, 0x3425,
     "X58 QuickPath",
 },
 {
     0x8086, 0x3426,
     "X58 QuickPath",
 },
 {
     0x8086, 0x3427,
     "X58 QuickPath",
 },
 {
     0x8086, 0x3428,
     "X58 QuickPath",
 },
 {
     0x8086, 0x3429,
     "X58 QuickData",
 },
 {
     0x8086, 0x342a,
     "X58 QuickData",
 },
 {
     0x8086, 0x342b,
     "X58 QuickData",
 },
 {
     0x8086, 0x342c,
     "X58 QuickData",
 },
 {
     0x8086, 0x342d,
     "X58 IOxAPIC",
 },
 {
     0x8086, 0x342e,
     "X58 Misc",
 },
 {
     0x8086, 0x3430,
     "X58 QuickData",
 },
 {
     0x8086, 0x3431,
     "X58 QuickData",
 },
 {
     0x8086, 0x3432,
     "X58 QuickData",
 },
 {
     0x8086, 0x3433,
     "X58 QuickData",
 },
 {
     0x8086, 0x3438,
     "X58 Throttle",
 },
 {
     0x8086, 0x343f,
     "X58 TXT",
 },
 {
     0x8086, 0x3500,
     "6321ESB PCIE",
 },
 {
     0x8086, 0x3504,
     "6321ESB IOxAPIC",
 },
 {
     0x8086, 0x350c,
     "6321ESB PCIE-PCIX",
 },
 {
     0x8086, 0x3510,
     "6321ESB PCIE",
 },
 {
     0x8086, 0x3511,
     "6321ESB PCIE",
 },
 {
     0x8086, 0x3514,
     "6321ESB PCIE",
 },
 {
     0x8086, 0x3515,
     "6321ESB PCIE",
 },
 {
     0x8086, 0x3518,
     "6321ESB PCIE",
 },
 {
     0x8086, 0x3519,
     "6321ESB PCIE",
 },
 {
     0x8086, 0x3575,
     "82830M Host",
 },
 {
     0x8086, 0x3576,
     "82830M AGP",
 },
 {
     0x8086, 0x3577,
     "82830M Video",
 },
 {
     0x8086, 0x3580,
     "82855GM Host",
 },
 {
     0x8086, 0x3581,
     "82855GME AGP",
 },
 {
     0x8086, 0x3582,
     "82855GM Video",
 },
 {
     0x8086, 0x3584,
     "82855GM Memory",
 },
 {
     0x8086, 0x3585,
     "82855GM Config",
 },
 {
     0x8086, 0x358c,
     "82854 Host",
 },
 {
     0x8086, 0x358e,
     "82854 Video",
 },
 {
     0x8086, 0x3590,
     "E7520 Host",
 },
 {
     0x8086, 0x3591,
     "E7520 Error Reporting",
 },
 {
     0x8086, 0x3592,
     "E7320 Host",
 },
 {
     0x8086, 0x3593,
     "E7320 Error Reporting",
 },
 {
     0x8086, 0x3594,
     "E7520 DMA",
 },
 {
     0x8086, 0x3595,
     "E7520 PCIE",
 },
 {
     0x8086, 0x3596,
     "E7520 PCIE",
 },
 {
     0x8086, 0x3597,
     "E7520 PCIE",
 },
 {
     0x8086, 0x3598,
     "E7520 PCIE",
 },
 {
     0x8086, 0x3599,
     "E7520 PCIE",
 },
 {
     0x8086, 0x359a,
     "E7520 PCIE",
 },
 {
     0x8086, 0x359b,
     "E7520 Config",
 },
 {
     0x8086, 0x359e,
     "E7525 Host",
 },
 {
     0x8086, 0x35b0,
     "3100 Host",
 },
 {
     0x8086, 0x35b1,
     "3100 Error Reporting",
 },
 {
     0x8086, 0x35b6,
     "3100 EDMA",
 },
 {
     0x8086, 0x35b6,
     "3100 PCIE",
 },
 {
     0x8086, 0x35b7,
     "3100 PCIE",
 },
 {
     0x8086, 0x3600,
     "7300 Host",
 },
 {
     0x8086, 0x3604,
     "7300 PCIE",
 },
 {
     0x8086, 0x3605,
     "7300 PCIE",
 },
 {
     0x8086, 0x3606,
     "7300 PCIE",
 },
 {
     0x8086, 0x3607,
     "7300 PCIE",
 },
 {
     0x8086, 0x3608,
     "7300 PCIE",
 },
 {
     0x8086, 0x3609,
     "7300 PCIE",
 },
 {
     0x8086, 0x360a,
     "7300 PCIE",
 },
 {
     0x8086, 0x360b,
     "I/OAT CNB",
 },
 {
     0x8086, 0x360c,
     "7300 FSB/Boot/Interrupt",
 },
 {
     0x8086, 0x360d,
     "7300 Snoop Filter",
 },
 {
     0x8086, 0x360e,
     "7300 Misc",
 },
 {
     0x8086, 0x360f,
     "7300 FBD",
 },
 {
     0x8086, 0x3610,
     "7300 FBD",
 },
 {
     0x8086, 0x3a00,
     "82801JD SATA",
 },
 {
     0x8086, 0x3a02,
     "82801JD AHCI",
 },
 {
     0x8086, 0x3a05,
     "82801JD RAID",
 },
 {
     0x8086, 0x3a06,
     "82801JD SATA",
 },
 {
     0x8086, 0x3a14,
     "82801JDO LPC",
 },
 {
     0x8086, 0x3a16,
     "82801JIR LPC",
 },
 {
     0x8086, 0x3a18,
     "82801JIB LPC",
 },
 {
     0x8086, 0x3a1a,
     "82801JD LPC",
 },
 {
     0x8086, 0x3a20,
     "82801JI SATA",
 },
 {
     0x8086, 0x3a22,
     "82801JI AHCI",
 },
 {
     0x8086, 0x3a25,
     "82801JI RAID",
 },
 {
     0x8086, 0x3a26,
     "82801JI SATA",
 },
 {
     0x8086, 0x3a30,
     "82801JI SMBus",
 },
 {
     0x8086, 0x3a34,
     "82801JI USB",
 },
 {
     0x8086, 0x3a35,
     "82801JI USB",
 },
 {
     0x8086, 0x3a36,
     "82801JI USB",
 },
 {
     0x8086, 0x3a37,
     "82801JI USB",
 },
 {
     0x8086, 0x3a38,
     "82801JI USB",
 },
 {
     0x8086, 0x3a39,
     "82801JI USB",
 },
 {
     0x8086, 0x3a3a,
     "82801JI USB",
 },
 {
     0x8086, 0x3a3c,
     "82801JI USB",
 },
 {
     0x8086, 0x3a3e,
     "82801JI HD Audio",
 },
 {
     0x8086, 0x3a40,
     "82801JI PCIE",
 },
 {
     0x8086, 0x3a42,
     "82801JI PCIE",
 },
 {
     0x8086, 0x3a44,
     "82801JI PCIE",
 },
 {
     0x8086, 0x3a46,
     "82801JI PCIE",
 },
 {
     0x8086, 0x3a48,
     "82801JI PCIE",
 },
 {
     0x8086, 0x3a4a,
     "82801JI PCIE",
 },
 {
     0x8086, 0x3a51,
     "82801JDO VECI",
 },
 {
     0x8086, 0x3a55,
     "82801JD Virtual SATA",
 },
 {
     0x8086, 0x3a60,
     "82801JD SMBus",
 },
 {
     0x8086, 0x3a62,
     "82801JD Thermal",
 },
 {
     0x8086, 0x3a64,
     "82801JD USB",
 },
 {
     0x8086, 0x3a65,
     "82801JD USB",
 },
 {
     0x8086, 0x3a66,
     "82801JD USB",
 },
 {
     0x8086, 0x3a67,
     "82801JD USB",
 },
 {
     0x8086, 0x3a68,
     "82801JD USB",
 },
 {
     0x8086, 0x3a69,
     "82801JD USB",
 },
 {
     0x8086, 0x3a6a,
     "82801JD USB",
 },
 {
     0x8086, 0x3a6c,
     "82801JD USB",
 },
 {
     0x8086, 0x3a6e,
     "82801JD HD Audio",
 },
 {
     0x8086, 0x3a70,
     "82801JD PCIE",
 },
 {
     0x8086, 0x3a72,
     "82801JD PCIE",
 },
 {
     0x8086, 0x3a74,
     "82801JD PCIE",
 },
 {
     0x8086, 0x3a76,
     "82801JD PCIE",
 },
 {
     0x8086, 0x3a78,
     "82801JD PCIE",
 },
 {
     0x8086, 0x3a7a,
     "82801JD PCIE",
 },
 {
     0x8086, 0x3a7c,
     "82801JD LAN",
 },
 {
     0x8086, 0x3b00,
     "P55 LPC",
 },
 {
     0x8086, 0x3b02,
     "P55 LPC",
 },
 {
     0x8086, 0x3b03,
     "PM55 LPC",
 },
 {
     0x8086, 0x3b06,
     "H55 LPC",
 },
 {
     0x8086, 0x3b07,
     "QM57 LPC",
 },
 {
     0x8086, 0x3b08,
     "H57 LPC",
 },
 {
     0x8086, 0x3b09,
     "HM55 LPC",
 },
 {
     0x8086, 0x3b0a,
     "Q57 LPC",
 },
 {
     0x8086, 0x3b0b,
     "HM57 LPC",
 },
 {
     0x8086, 0x3b0f,
     "QS57 LPC",
 },
 {
     0x8086, 0x3b12,
     "3400 LPC",
 },
 {
     0x8086, 0x3b14,
     "3420 LPC",
 },
 {
     0x8086, 0x3b16,
     "3450 LPC",
 },
 {
     0x8086, 0x3b20,
     "3400 SATA",
 },
 {
     0x8086, 0x3b21,
     "3400 SATA",
 },
 {
     0x8086, 0x3b22,
     "3400 AHCI",
 },
 {
     0x8086, 0x3b23,
     "3400 AHCI",
 },
 {
     0x8086, 0x3b25,
     "3400 RAID",
 },
 {
     0x8086, 0x3b26,
     "3400 SATA",
 },
 {
     0x8086, 0x3b28,
     "3400 SATA",
 },
 {
     0x8086, 0x3b29,
     "3400 AHCI",
 },
 {
     0x8086, 0x3b2c,
     "3400 RAID",
 },
 {
     0x8086, 0x3b2d,
     "3400 SATA",
 },
 {
     0x8086, 0x3b2e,
     "3400 SATA",
 },
 {
     0x8086, 0x3b2f,
     "3400 AHCI",
 },
 {
     0x8086, 0x3b30,
     "3400 SMBus",
 },
 {
     0x8086, 0x3b32,
     "3400 Thermal",
 },
 {
     0x8086, 0x3b34,
     "3400 USB",
 },
 {
     0x8086, 0x3b36,
     "3400 USB",
 },
 {
     0x8086, 0x3b37,
     "3400 USB",
 },
 {
     0x8086, 0x3b38,
     "3400 USB",
 },
 {
     0x8086, 0x3b39,
     "3400 USB",
 },
 {
     0x8086, 0x3b3a,
     "3400 USB",
 },
 {
     0x8086, 0x3b3b,
     "3400 USB",
 },
 {
     0x8086, 0x3b3c,
     "3400 USB",
 },
 {
     0x8086, 0x3b3e,
     "3400 USB",
 },
 {
     0x8086, 0x3b3f,
     "3400 USB",
 },
 {
     0x8086, 0x3b42,
     "3400 PCIE",
 },
 {
     0x8086, 0x3b44,
     "3400 PCIE",
 },
 {
     0x8086, 0x3b46,
     "3400 PCIE",
 },
 {
     0x8086, 0x3b48,
     "3400 PCIE",
 },
 {
     0x8086, 0x3b4a,
     "3400 PCIE",
 },
 {
     0x8086, 0x3b4c,
     "3400 PCIE",
 },
 {
     0x8086, 0x3b4e,
     "3400 PCIE",
 },
 {
     0x8086, 0x3b50,
     "3400 PCIE",
 },
 {
     0x8086, 0x3b56,
     "3400 HD Audio",
 },
 {
     0x8086, 0x3b57,
     "QS57 HD Audio",
 },
 {
     0x8086, 0x3b64,
     "3400 MEI",
 },
 {
     0x8086, 0x3b65,
     "3400 MEI",
 },
 {
     0x8086, 0x3b66,
     "3400 PT IDER",
 },
 {
     0x8086, 0x3b67,
     "3400 KT",
 },
 {
     0x8086, 0x3c00,
     "E5 Host",
 },
 {
     0x8086, 0x3c01,
     "E5 PCIE",
 },
 {
     0x8086, 0x3c02,
     "E5 PCIE",
 },
 {
     0x8086, 0x3c03,
     "E5 PCIE",
 },
 {
     0x8086, 0x3c04,
     "E5 PCIE",
 },
 {
     0x8086, 0x3c05,
     "E5 PCIE",
 },
 {
     0x8086, 0x3c06,
     "E5 PCIE",
 },
 {
     0x8086, 0x3c07,
     "E5 PCIE",
 },
 {
     0x8086, 0x3c08,
     "E5 PCIE",
 },
 {
     0x8086, 0x3c09,
     "E5 PCIE",
 },
 {
     0x8086, 0x3c0a,
     "E5 PCIE",
 },
 {
     0x8086, 0x3c0b,
     "E5 PCIE",
 },
 {
     0x8086, 0x3c20,
     "E5 DMA",
 },
 {
     0x8086, 0x3c21,
     "E5 DMA",
 },
 {
     0x8086, 0x3c22,
     "E5 DMA",
 },
 {
     0x8086, 0x3c23,
     "E5 DMA",
 },
 {
     0x8086, 0x3c24,
     "E5 DMA",
 },
 {
     0x8086, 0x3c25,
     "E5 DMA",
 },
 {
     0x8086, 0x3c26,
     "E5 DMA",
 },
 {
     0x8086, 0x3c27,
     "E5 DMA",
 },
 {
     0x8086, 0x3c28,
     "E5 Address Map",
 },
 {
     0x8086, 0x3c2a,
     "E5 Error Reporting",
 },
 {
     0x8086, 0x3c2c,
     "E5 I/O APIC",
 },
 {
     0x8086, 0x3c43,
     "E5 PCIE Monitor",
 },
 {
     0x8086, 0x3c44,
     "E5 QPI Link Monitor",
 },
 {
     0x8086, 0x3c45,
     "E5 QPI Link Monitor",
 },
 {
     0x8086, 0x3c46,
     "E5 Home Agent",
 },
 {
     0x8086, 0x3c71,
     "E5 RAS",
 },
 {
     0x8086, 0x3c80,
     "E5 QPI Link",
 },
 {
     0x8086, 0x3c90,
     "E5 QPI Link",
 },
 {
     0x8086, 0x3ca0,
     "E5 Home Agent",
 },
 {
     0x8086, 0x3ca8,
     "E5 TA",
 },
 {
     0x8086, 0x3caa,
     "E5 TAD",
 },
 {
     0x8086, 0x3cab,
     "E5 TAD",
 },
 {
     0x8086, 0x3cac,
     "E5 TAD",
 },
 {
     0x8086, 0x3cad,
     "E5 TAD",
 },
 {
     0x8086, 0x3cae,
     "E5 TAD",
 },
 {
     0x8086, 0x3cb0,
     "E5 Thermal",
 },
 {
     0x8086, 0x3cb1,
     "E5 Thermal",
 },
 {
     0x8086, 0x3cb2,
     "E5 Error",
 },
 {
     0x8086, 0x3cb3,
     "E5 Error",
 },
 {
     0x8086, 0x3cb4,
     "E5 Thermal",
 },
 {
     0x8086, 0x3cb5,
     "E5 Thermal",
 },
 {
     0x8086, 0x3cb6,
     "E5 Error",
 },
 {
     0x8086, 0x3cb7,
     "E5 Error",
 },
 {
     0x8086, 0x3cb8,
     "E5 DDRIO",
 },
 {
     0x8086, 0x3cc0,
     "E5 PCU",
 },
 {
     0x8086, 0x3cc1,
     "E5 PCU",
 },
 {
     0x8086, 0x3cc2,
     "E5 PCU",
 },
 {
     0x8086, 0x3cd0,
     "E5 PCU",
 },
 {
     0x8086, 0x3ce0,
     "E5 Scratch",
 },
 {
     0x8086, 0x3ce3,
     "E5 Scratch",
 },
 {
     0x8086, 0x3ce4,
     "E5 R2PCIE",
 },
 {
     0x8086, 0x3ce6,
     "E5 QPI",
 },
 {
     0x8086, 0x3ce8,
     "E5 Unicast",
 },
 {
     0x8086, 0x3cf4,
     "E5 SAD",
 },
 {
     0x8086, 0x3cf5,
     "E5 Broadcast",
 },
 {
     0x8086, 0x3cf6,
     "E5 SAD",
 },
 {
     0x8086, 0x3e1f,
     "Core 8G Host",
 },
 {
     0x8086, 0x3e81,
     "Core 8G PCIE",
 },
 {
     0x8086, 0x3e85,
     "Core 8G PCIE",
 },
 {
     0x8086, 0x3e89,
     "Core 8G PCIE",
 },
 {
     0x8086, 0x3e91,
     "Core 8G GMM",
 },
 {
     0x8086, 0x3e92,
     "UHD Graphics 630",
 },
 {
     0x8086, 0x3ec2,
     "Core 8G Host",
 },
 {
     0x8086, 0x4000,
     "5400 Host",
 },
 {
     0x8086, 0x4001,
     "5400A Host",
 },
 {
     0x8086, 0x4003,
     "5400B Host",
 },
 {
     0x8086, 0x4021,
     "5400 PCIE",
 },
 {
     0x8086, 0x4022,
     "5400 PCIE",
 },
 {
     0x8086, 0x4023,
     "5400 PCIE",
 },
 {
     0x8086, 0x4024,
     "5400 PCIE",
 },
 {
     0x8086, 0x4025,
     "5400 PCIE",
 },
 {
     0x8086, 0x4026,
     "5400 PCIE",
 },
 {
     0x8086, 0x4027,
     "5400 PCIE",
 },
 {
     0x8086, 0x4028,
     "5400 PCIE",
 },
 {
     0x8086, 0x4029,
     "5400 PCIE",
 },
 {
     0x8086, 0x402f,
     "I/OAT SNB",
 },
 {
     0x8086, 0x4030,
     "5400 FSB/Boot/Interrupt",
 },
 {
     0x8086, 0x4031,
     "5400 Coherency Engine",
 },
 {
     0x8086, 0x4032,
     "5400 IOAPIC",
 },
 {
     0x8086, 0x4035,
     "5400 RAS",
 },
 {
     0x8086, 0x4036,
     "5400 RAS",
 },
 {
     0x8086, 0x4100,
     "GMA 600",
 },
 {
     0x8086, 0x4101,
     "GMA 600",
 },
 {
     0x8086, 0x4102,
     "GMA 600",
 },
 {
     0x8086, 0x4103,
     "GMA 600",
 },
 {
     0x8086, 0x4104,
     "GMA 600",
 },
 {
     0x8086, 0x4105,
     "GMA 600",
 },
 {
     0x8086, 0x4106,
     "GMA 600",
 },
 {
     0x8086, 0x4107,
     "GMA 600",
 },
 {
     0x8086, 0x4107,
     "GMA 600",
 },
 {
     0x8086, 0x4114,
     "E600 Host",
 },
 {
     0x8086, 0x4220,
     "PRO/Wireless 2200BG",
 },
 {
     0x8086, 0x4221,
     "PRO/Wireless 2225BG",
 },
 {
     0x8086, 0x4222,
     "PRO/Wireless 3945ABG",
 },
 {
     0x8086, 0x4223,
     "PRO/Wireless 2915ABG",
 },
 {
     0x8086, 0x4224,
     "PRO/Wireless 2915ABG",
 },
 {
     0x8086, 0x4227,
     "PRO/Wireless 3945ABG",
 },
 {
     0x8086, 0x4229,
     "Wireless WiFi Link 4965",
 },
 {
     0x8086, 0x422b,
     "Centrino Ultimate-N 6300",
 },
 {
     0x8086, 0x422c,
     "Centrino Advanced-N 6200",
 },
 {
     0x8086, 0x4230,
     "Wireless WiFi Link 4965",
 },
 {
     0x8086, 0x4232,
     "WiFi Link 5100",
 },
 {
     0x8086, 0x4235,
     "WiFi Link 5300",
 },
 {
     0x8086, 0x4236,
     "WiFi Link 5300",
 },
 {
     0x8086, 0x4237,
     "WiFi Link 5100",
 },
 {
     0x8086, 0x4238,
     "Centrino Ultimate-N 6300",
 },
 {
     0x8086, 0x4239,
     "Centrino Advanced-N 6200",
 },
 {
     0x8086, 0x423a,
     "WiFi Link 5350",
 },
 {
     0x8086, 0x423b,
     "WiFi Link 5350",
 },
 {
     0x8086, 0x423c,
     "WiFi Link 5150",
 },
 {
     0x8086, 0x423d,
     "WiFi Link 5150",
 },
 {
     0x8086, 0x444e,
     "Turbo Memory",
 },
 {
     0x8086, 0x5020,
     "EP80579 Host",
 },
 {
     0x8086, 0x5021,
     "EP80579 Memory",
 },
 {
     0x8086, 0x5023,
     "EP80579 EDMA",
 },
 {
     0x8086, 0x5024,
     "EP80579 PCIE",
 },
 {
     0x8086, 0x5025,
     "EP80579 PCIE",
 },
 {
     0x8086, 0x5028,
     "EP80579 SATA",
 },
 {
     0x8086, 0x5029,
     "EP80579 AHCI",
 },
 {
     0x8086, 0x502c,
     "EP80579 ASU",
 },
 {
     0x8086, 0x5030,
     "EP80579 Reserved",
 },
 {
     0x8086, 0x5031,
     "EP80579 LPC",
 },
 {
     0x8086, 0x5032,
     "EP80579 SMBus",
 },
 {
     0x8086, 0x5033,
     "EP80579 USB",
 },
 {
     0x8086, 0x5035,
     "EP80579 USB",
 },
 {
     0x8086, 0x5037,
     "EP80579",
 },
 {
     0x8086, 0x5039,
     "EP80579 CANbus",
 },
 {
     0x8086, 0x503a,
     "EP80579 CANbus",
 },
 {
     0x8086, 0x503b,
     "EP80579 Serial",
 },
 {
     0x8086, 0x503c,
     "EP80579 1588",
 },
 {
     0x8086, 0x503d,
     "EP80579 LEB",
 },
 {
     0x8086, 0x503e,
     "EP80579 GCU",
 },
 {
     0x8086, 0x503f,
     "EP80579 Reserved",
 },
 {
     0x8086, 0x5040,
     "EP80579 LAN",
 },
 {
     0x8086, 0x5041,
     "EP80579 LAN",
 },
 {
     0x8086, 0x5044,
     "EP80579 LAN",
 },
 {
     0x8086, 0x5045,
     "EP80579 LAN",
 },
 {
     0x8086, 0x5048,
     "EP80579 LAN",
 },
 {
     0x8086, 0x5049,
     "EP80579 LAN",
 },
 {
     0x8086, 0x5200,
     "i960 RD",
 },
 {
     0x8086, 0x5201,
     "PRO 100 Server",
 },
 {
     0x8086, 0x5845,
     "QEMU NVM Express Controller",
 },
 {
     0x8086, 0x5902,
     "HD Graphics 610",
 },
 {
     0x8086, 0x5904,
     "Core 7G Host",
 },
 {
     0x8086, 0x5906,
     "HD Graphics 610",
 },
 {
     0x8086, 0x590c,
     "Core 7G Host",
 },
 {
     0x8086, 0x590e,
     "HD Graphics",
 },
 {
     0x8086, 0x5911,
     "Core GMM",
 },
 {
     0x8086, 0x5912,
     "HD Graphics 630",
 },
 {
     0x8086, 0x5915,
     "Core 7G Imaging Unit",
 },
 {
     0x8086, 0x5916,
     "HD Graphics 620",
 },
 {
     0x8086, 0x591a,
     "HD Graphics P630",
 },
 {
     0x8086, 0x591b,
     "HD Graphics 630",
 },
 {
     0x8086, 0x591d,
     "HD Graphics P630",
 },
 {
     0x8086, 0x591e,
     "HD Graphics 615",
 },
 {
     0x8086, 0x5926,
     "Iris Plus Graphics 640",
 },
 {
     0x8086, 0x5927,
     "Iris Plus Graphics 650",
 },
 {
     0x8086, 0x65c0,
     "5100 Host",
 },
 {
     0x8086, 0x65e2,
     "5100 PCIE",
 },
 {
     0x8086, 0x65e3,
     "5100 PCIE",
 },
 {
     0x8086, 0x65e4,
     "5100 PCIE",
 },
 {
     0x8086, 0x65e5,
     "5100 PCIE",
 },
 {
     0x8086, 0x65e6,
     "5100 PCIE",
 },
 {
     0x8086, 0x65e7,
     "5100 PCIE",
 },
 {
     0x8086, 0x65f0,
     "5100 FSB",
 },
 {
     0x8086, 0x65f1,
     "5100 Reserved",
 },
 {
     0x8086, 0x65f3,
     "5100 Reserved",
 },
 {
     0x8086, 0x65f5,
     "5100 DDR",
 },
 {
     0x8086, 0x65f6,
     "5100 DDR",
 },
 {
     0x8086, 0x65f7,
     "5100 PCIE",
 },
 {
     0x8086, 0x65f8,
     "5100 PCIE",
 },
 {
     0x8086, 0x65f9,
     "5100 PCIE",
 },
 {
     0x8086, 0x65fa,
     "5100 PCIE",
 },
 {
     0x8086, 0x65ff,
     "I/OAT SCNB",
 },
 {
     0x8086, 0x6f00,
     "Xeon-D Host",
 },
 {
     0x8086, 0x6f02,
     "Xeon-D PCIE",
 },
 {
     0x8086, 0x6f03,
     "Xeon-D PCIE",
 },
 {
     0x8086, 0x6f04,
     "Xeon-D PCIE",
 },
 {
     0x8086, 0x6f05,
     "Xeon-D PCIE",
 },
 {
     0x8086, 0x6f06,
     "Xeon-D PCIE",
 },
 {
     0x8086, 0x6f07,
     "Xeon-D PCIE",
 },
 {
     0x8086, 0x6f08,
     "Xeon-D PCIE",
 },
 {
     0x8086, 0x6f09,
     "Xeon-D PCIE",
 },
 {
     0x8086, 0x6f0a,
     "Xeon-D PCIE",
 },
 {
     0x8086, 0x6f0b,
     "Xeon-D PCIE",
 },
 {
     0x8086, 0x6f1d,
     "Xeon-D PCIE",
 },
 {
     0x8086, 0x6f1e,
     "Xeon-D Ubox",
 },
 {
     0x8086, 0x6f1f,
     "Xeon-D Ubox",
 },
 {
     0x8086, 0x6f20,
     "E5 v4 DMA",
 },
 {
     0x8086, 0x6f21,
     "E5 v4 DMA",
 },
 {
     0x8086, 0x6f22,
     "E5 v4 DMA",
 },
 {
     0x8086, 0x6f23,
     "E5 v4 DMA",
 },
 {
     0x8086, 0x6f24,
     "E5 v4 DMA",
 },
 {
     0x8086, 0x6f25,
     "E5 v4 DMA",
 },
 {
     0x8086, 0x6f26,
     "E5 v4 DMA",
 },
 {
     0x8086, 0x6f27,
     "E5 v4 DMA",
 },
 {
     0x8086, 0x6f28,
     "Xeon-D Address Map",
 },
 {
     0x8086, 0x6f29,
     "Xeon-D Hot Plug",
 },
 {
     0x8086, 0x6f2a,
     "Xeon-D RAS",
 },
 {
     0x8086, 0x6f2b,
     "Xeon-D I/O APIC",
 },
 {
     0x8086, 0x6f2c,
     "Xeon-D I/O APIC",
 },
 {
     0x8086, 0x6f30,
     "Xeon-D Home Agent",
 },
 {
     0x8086, 0x6f34,
     "E5 v4 R2PCIe Agent",
 },
 {
     0x8086, 0x6f36,
     "Xeon-D QPI Link",
 },
 {
     0x8086, 0x6f37,
     "Xeon-D QPI Link",
 },
 {
     0x8086, 0x6f50,
     "Xeon-D QuickData",
 },
 {
     0x8086, 0x6f51,
     "Xeon-D QuickData",
 },
 {
     0x8086, 0x6f52,
     "Xeon-D QuickData",
 },
 {
     0x8086, 0x6f53,
     "Xeon-D QuickData",
 },
 {
     0x8086, 0x6f68,
     "E5 v4 RAS",
 },
 {
     0x8086, 0x6f6e,
     "E5 v4 DDRIO",
 },
 {
     0x8086, 0x6f6f,
     "E5 v4 DDRIO",
 },
 {
     0x8086, 0x6f71,
     "Xeon-D Memory",
 },
 {
     0x8086, 0x6f76,
     "Xeon-D QPI Debug",
 },
 {
     0x8086, 0x6f7d,
     "Xeon-D Ubox",
 },
 {
     0x8086, 0x6f88,
     "Xeon-D PCU",
 },
 {
     0x8086, 0x6f8a,
     "Xeon-D PCU",
 },
 {
     0x8086, 0x6f98,
     "Xeon-D PCU",
 },
 {
     0x8086, 0x6f99,
     "Xeon-D PCU",
 },
 {
     0x8086, 0x6f9a,
     "Xeon-D PCU",
 },
 {
     0x8086, 0x6f9c,
     "Xeon-D PCU",
 },
 {
     0x8086, 0x6f81,
     "Xeon-D QPI Link",
 },
 {
     0x8086, 0x6fa0,
     "Xeon-D Home Agent",
 },
 {
     0x8086, 0x6fa8,
     "Xeon-D Memory",
 },
 {
     0x8086, 0x6faa,
     "Xeon-D Memory",
 },
 {
     0x8086, 0x6fab,
     "Xeon-D Memory",
 },
 {
     0x8086, 0x6fac,
     "Xeon-D Memory",
 },
 {
     0x8086, 0x6fad,
     "Xeon-D Memory",
 },
 {
     0x8086, 0x6fae,
     "Xeon-D Memory",
 },
 {
     0x8086, 0x6faf,
     "Xeon-D Memory",
 },
 {
     0x8086, 0x6fb0,
     "Xeon-D Memory",
 },
 {
     0x8086, 0x6fb1,
     "Xeon-D Memory",
 },
 {
     0x8086, 0x6fb2,
     "Xeon-D Memory",
 },
 {
     0x8086, 0x6fb3,
     "Xeon-D Memory",
 },
 {
     0x8086, 0x6fb4,
     "Xeon-D Memory",
 },
 {
     0x8086, 0x6fb5,
     "Xeon-D Memory",
 },
 {
     0x8086, 0x6fb6,
     "Xeon-D Memory",
 },
 {
     0x8086, 0x6fb7,
     "Xeon-D Memory",
 },
 {
     0x8086, 0x6fb8,
     "E5 v4 DDRIO",
 },
 {
     0x8086, 0x6fb9,
     "E5 v4 DDRIO",
 },
 {
     0x8086, 0x6fba,
     "E5 v4 DDRIO",
 },
 {
     0x8086, 0x6fbb,
     "E5 v4 DDRIO",
 },
 {
     0x8086, 0x6fbc,
     "Xeon-D Memory",
 },
 {
     0x8086, 0x6fbd,
     "Xeon-D Memory",
 },
 {
     0x8086, 0x6fbe,
     "Xeon-D Memory",
 },
 {
     0x8086, 0x6fbf,
     "Xeon-D Memory",
 },
 {
     0x8086, 0x6fc0,
     "Xeon-D PCU",
 },
 {
     0x8086, 0x6fd0,
     "E5 v4 Thermal",
 },
 {
     0x8086, 0x6fe0,
     "Xeon-D Cache",
 },
 {
     0x8086, 0x6fe1,
     "Xeon-D Cache",
 },
 {
     0x8086, 0x6fe2,
     "Xeon-D Cache",
 },
 {
     0x8086, 0x6fe3,
     "Xeon-D Cache",
 },
 {
     0x8086, 0x6fe4,
     "E5 v4 Cache",
 },
 {
     0x8086, 0x6fe5,
     "E5 v4 Cache",
 },
 {
     0x8086, 0x6ff8,
     "Xeon-D Cache",
 },
 {
     0x8086, 0x6ff9,
     "E5 v4 Cache",
 },
 {
     0x8086, 0x6ffc,
     "Xeon-D Cache",
 },
 {
     0x8086, 0x6ffd,
     "Xeon-D Cache",
 },
 {
     0x8086, 0x6ffe,
     "Xeon-D Cache",
 },
 {
     0x8086, 0x7000,
     "82371SB ISA",
 },
 {
     0x8086, 0x7010,
     "82371SB IDE",
 },
 {
     0x8086, 0x7020,
     "82371SB USB",
 },
 {
     0x8086, 0x7030,
     "82437VX",
 },
 {
     0x8086, 0x7100,
     "82439TX",
 },
 {
     0x8086, 0x7110,
     "82371AB PIIX4 ISA",
 },
 {
     0x8086, 0x7111,
     "82371AB IDE",
 },
 {
     0x8086, 0x7112,
     "82371AB USB",
 },
 {
     0x8086, 0x7113,
     "82371AB Power",
 },
 {
     0x8086, 0x7120,
     "82810 Host",
 },
 {
     0x8086, 0x7121,
     "82810 Video",
 },
 {
     0x8086, 0x7122,
     "82810-DC100 Host",
 },
 {
     0x8086, 0x7123,
     "82810-DC100 Video",
 },
 {
     0x8086, 0x7124,
     "82810E Host",
 },
 {
     0x8086, 0x7125,
     "82810E Video",
 },
 {
     0x8086, 0x7180,
     "82443LX AGP",
 },
 {
     0x8086, 0x7181,
     "82443LX AGP",
 },
 {
     0x8086, 0x7190,
     "82443BX AGP",
 },
 {
     0x8086, 0x7191,
     "82443BX AGP",
 },
 {
     0x8086, 0x7192,
     "82443BX",
 },
 {
     0x8086, 0x7194,
     "82440MX Host",
 },
 {
     0x8086, 0x7195,
     "82440MX AC97",
 },
 {
     0x8086, 0x7196,
     "82440MX Modem",
 },
 {
     0x8086, 0x7198,
     "82440MX ISA",
 },
 {
     0x8086, 0x7199,
     "82440MX IDE",
 },
 {
     0x8086, 0x719a,
     "82440MX USB",
 },
 {
     0x8086, 0x719b,
     "82440MX Power",
 },
 {
     0x8086, 0x71a0,
     "82440BX AGP",
 },
 {
     0x8086, 0x71a1,
     "82440BX AGP",
 },
 {
     0x8086, 0x71a2,
     "82443GX",
 },
 {
     0x8086, 0x7601,
     "82372FB IDE",
 },
 {
     0x8086, 0x7800,
     "82740 AGP",
 },
 {
     0x8086, 0x8100,
     "US15W Host",
 },
 {
     0x8086, 0x8101,
     "US15L/UL11L Host",
 },
 {
     0x8086, 0x8108,
     "US15W Video",
 },
 {
     0x8086, 0x8109,
     "US15L/UL11L Video",
 },
 {
     0x8086, 0x8110,
     "SCH PCIE",
 },
 {
     0x8086, 0x8112,
     "SCH PCIE",
 },
 {
     0x8086, 0x8114,
     "SCH USB",
 },
 {
     0x8086, 0x8115,
     "SCH USB",
 },
 {
     0x8086, 0x8116,
     "SCH USB",
 },
 {
     0x8086, 0x8117,
     "SCH USB",
 },
 {
     0x8086, 0x8118,
     "SCH USB Client",
 },
 {
     0x8086, 0x8119,
     "SCH LPC",
 },
 {
     0x8086, 0x811a,
     "SCH IDE",
 },
 {
     0x8086, 0x811b,
     "SCH HD Audio",
 },
 {
     0x8086, 0x811c,
     "SCH SD/MMC",
 },
 {
     0x8086, 0x811d,
     "SCH SD/MMC",
 },
 {
     0x8086, 0x811e,
     "SCH SD/MMC",
 },
 {
     0x8086, 0x8180,
     "E600 PCIE",
 },
 {
     0x8086, 0x8181,
     "E600 PCIE",
 },
 {
     0x8086, 0x8182,
     "E600 Video",
 },
 {
     0x8086, 0x8183,
     "E600 Config",
 },
 {
     0x8086, 0x8184,
     "E600 PCIE",
 },
 {
     0x8086, 0x8185,
     "E600 PCIE",
 },
 {
     0x8086, 0x8186,
     "E600 LPC",
 },
 {
     0x8086, 0x84c4,
     "82450KX/GX",
 },
 {
     0x8086, 0x84c5,
     "82450KX/GX Memory",
 },
 {
     0x8086, 0x84ca,
     "82451NX Mem & IO",
 },
 {
     0x8086, 0x84cb,
     "82454NX PXB",
 },
 {
     0x8086, 0x8800,
     "EG20T PCIE",
 },
 {
     0x8086, 0x8801,
     "EG20T Packet Hub",
 },
 {
     0x8086, 0x8802,
     "EG20T Ethernet",
 },
 {
     0x8086, 0x8803,
     "EG20T GPIO",
 },
 {
     0x8086, 0x8804,
     "EG20T USB",
 },
 {
     0x8086, 0x8805,
     "EG20T USB",
 },
 {
     0x8086, 0x8806,
     "EG20T USB",
 },
 {
     0x8086, 0x8807,
     "EG20T USB",
 },
 {
     0x8086, 0x8808,
     "EG20T USB Client",
 },
 {
     0x8086, 0x8809,
     "EG20T SDIO",
 },
 {
     0x8086, 0x880a,
     "EG20T SDIO",
 },
 {
     0x8086, 0x880b,
     "EG20T AHCI",
 },
 {
     0x8086, 0x880c,
     "EG20T USB",
 },
 {
     0x8086, 0x880d,
     "EG20T USB",
 },
 {
     0x8086, 0x880e,
     "EG20T USB",
 },
 {
     0x8086, 0x880f,
     "EG20T USB",
 },
 {
     0x8086, 0x8810,
     "EG20T DMA",
 },
 {
     0x8086, 0x8811,
     "EG20T Serial",
 },
 {
     0x8086, 0x8812,
     "EG20T Serial",
 },
 {
     0x8086, 0x8813,
     "EG20T Serial",
 },
 {
     0x8086, 0x8814,
     "EG20T Serial",
 },
 {
     0x8086, 0x8815,
     "EG20T DMA",
 },
 {
     0x8086, 0x8816,
     "EG20T SPI",
 },
 {
     0x8086, 0x8817,
     "EG20T I2C",
 },
 {
     0x8086, 0x8818,
     "EG20T CAN",
 },
 {
     0x8086, 0x8819,
     "EG20T 1588",
 },
 {
     0x8086, 0x89ac,
     "82802AC Firmware Hub 8Mbit",
 },
 {
     0x8086, 0x89ad,
     "82802AB Firmware Hub 4Mbit",
 },
 {
     0x8086, 0x8c00,
     "8 Series SATA",
 },
 {
     0x8086, 0x8c01,
     "8 Series SATA",
 },
 {
     0x8086, 0x8c02,
     "8 Series AHCI",
 },
 {
     0x8086, 0x8c03,
     "8 Series AHCI",
 },
 {
     0x8086, 0x8c04,
     "8 Series RAID",
 },
 {
     0x8086, 0x8c05,
     "8 Series RAID",
 },
 {
     0x8086, 0x8c06,
     "8 Series RAID",
 },
 {
     0x8086, 0x8c07,
     "8 Series RAID",
 },
 {
     0x8086, 0x8c08,
     "8 Series SATA",
 },
 {
     0x8086, 0x8c09,
     "8 Series SATA",
 },
 {
     0x8086, 0x8c0e,
     "8 Series RAID",
 },
 {
     0x8086, 0x8c0f,
     "8 Series RAID",
 },
 {
     0x8086, 0x8c10,
     "8 Series PCIE",
 },
 {
     0x8086, 0x8c12,
     "8 Series PCIE",
 },
 {
     0x8086, 0x8c14,
     "8 Series PCIE",
 },
 {
     0x8086, 0x8c16,
     "8 Series PCIE",
 },
 {
     0x8086, 0x8c18,
     "8 Series PCIE",
 },
 {
     0x8086, 0x8c1a,
     "8 Series PCIE",
 },
 {
     0x8086, 0x8c1c,
     "8 Series PCIE",
 },
 {
     0x8086, 0x8c1e,
     "8 Series PCIE",
 },
 {
     0x8086, 0x8c20,
     "8 Series HD Audio",
 },
 {
     0x8086, 0x8c22,
     "8 Series SMBus",
 },
 {
     0x8086, 0x8c24,
     "8 Series Thermal",
 },
 {
     0x8086, 0x8c26,
     "8 Series USB",
 },
 {
     0x8086, 0x8c2d,
     "8 Series USB",
 },
 {
     0x8086, 0x8c31,
     "8 Series xHCI",
 },
 {
     0x8086, 0x8c3a,
     "8 Series MEI",
 },
 {
     0x8086, 0x8c3b,
     "8 Series MEI",
 },
 {
     0x8086, 0x8c3c,
     "8 Series IDER",
 },
 {
     0x8086, 0x8c3d,
     "8 Series KT",
 },
 {
     0x8086, 0x8c44,
     "Z87 LPC",
 },
 {
     0x8086, 0x8c46,
     "Z85 LPC",
 },
 {
     0x8086, 0x8c49,
     "HM86 LPC",
 },
 {
     0x8086, 0x8c4a,
     "H87 LPC",
 },
 {
     0x8086, 0x8c4b,
     "HM87 LPC",
 },
 {
     0x8086, 0x8c4c,
     "Q85 LPC",
 },
 {
     0x8086, 0x8c4e,
     "Q87 LPC",
 },
 {
     0x8086, 0x8c4f,
     "QM87 LPC",
 },
 {
     0x8086, 0x8c50,
     "B85 LPC",
 },
 {
     0x8086, 0x8c52,
     "C222 LPC",
 },
 {
     0x8086, 0x8c54,
     "C224 LPC",
 },
 {
     0x8086, 0x8c56,
     "C226 LPC",
 },
 {
     0x8086, 0x8c5c,
     "H81 LPC",
 },
 {
     0x8086, 0x8c80,
     "9 Series SATA",
 },
 {
     0x8086, 0x8c82,
     "9 Series AHCI",
 },
 {
     0x8086, 0x8c84,
     "9 Series RAID",
 },
 {
     0x8086, 0x8c86,
     "9 Series RAID",
 },
 {
     0x8086, 0x8c88,
     "9 Series SATA",
 },
 {
     0x8086, 0x8c8e,
     "9 Series RAID",
 },
 {
     0x8086, 0x8c90,
     "9 Series PCIE",
 },
 {
     0x8086, 0x8c92,
     "9 Series PCIE",
 },
 {
     0x8086, 0x8c94,
     "9 Series PCIE",
 },
 {
     0x8086, 0x8c96,
     "9 Series PCIE",
 },
 {
     0x8086, 0x8c98,
     "9 Series PCIE",
 },
 {
     0x8086, 0x8c9a,
     "9 Series PCIE",
 },
 {
     0x8086, 0x8c9c,
     "9 Series PCIE",
 },
 {
     0x8086, 0x8c9e,
     "9 Series PCIE",
 },
 {
     0x8086, 0x8ca0,
     "9 Series HD Audio",
 },
 {
     0x8086, 0x8ca2,
     "9 Series SMBus",
 },
 {
     0x8086, 0x8ca6,
     "9 Series USB",
 },
 {
     0x8086, 0x8cad,
     "9 Series USB",
 },
 {
     0x8086, 0x8cb1,
     "9 Series xHCI",
 },
 {
     0x8086, 0x8cba,
     "9 Series MEI",
 },
 {
     0x8086, 0x8cbb,
     "9 Series MEI",
 },
 {
     0x8086, 0x8cbc,
     "9 Series IDER",
 },
 {
     0x8086, 0x8cbd,
     "9 Series KT",
 },
 {
     0x8086, 0x8cc4,
     "Z97 LPC",
 },
 {
     0x8086, 0x8cc6,
     "H97 LPC",
 },
 {
     0x8086, 0x8d00,
     "C610 SATA",
 },
 {
     0x8086, 0x8d02,
     "C610 AHCI",
 },
 {
     0x8086, 0x8d06,
     "C610 RAID",
 },
 {
     0x8086, 0x8d08,
     "C610 SATA",
 },
 {
     0x8086, 0x8d10,
     "C610 PCIE",
 },
 {
     0x8086, 0x8d12,
     "C610 PCIE",
 },
 {
     0x8086, 0x8d14,
     "C610 PCIE",
 },
 {
     0x8086, 0x8d16,
     "C610 PCIE",
 },
 {
     0x8086, 0x8d18,
     "C610 PCIE",
 },
 {
     0x8086, 0x8d1a,
     "C610 PCIE",
 },
 {
     0x8086, 0x8d1c,
     "C610 PCIE",
 },
 {
     0x8086, 0x8d1e,
     "C610 PCIE",
 },
 {
     0x8086, 0x8d20,
     "C610 HD Audio",
 },
 {
     0x8086, 0x8d22,
     "C610 SMBus",
 },
 {
     0x8086, 0x8d24,
     "C610 Thermal",
 },
 {
     0x8086, 0x8d26,
     "C610 USB",
 },
 {
     0x8086, 0x8d2d,
     "C610 USB",
 },
 {
     0x8086, 0x8d31,
     "C610 xHCI",
 },
 {
     0x8086, 0x8d3a,
     "C610 MEI",
 },
 {
     0x8086, 0x8d3b,
     "C610 MEI",
 },
 {
     0x8086, 0x8d44,
     "C610 LPC",
 },
 {
     0x8086, 0x8d47,
     "X99 LPC",
 },
 {
     0x8086, 0x8d60,
     "C610 SATA",
 },
 {
     0x8086, 0x8d62,
     "C610 AHCI",
 },
 {
     0x8086, 0x8d66,
     "C610 RAID",
 },
 {
     0x8086, 0x8d7c,
     "C610 MS SPSR",
 },
 {
     0x8086, 0x8d7d,
     "C610 MS SMBus",
 },
 {
     0x8086, 0x8d7e,
     "C610 MS SMBus",
 },
 {
     0x8086, 0x8d7f,
     "C610 MS SMBus",
 },
 {
     0x8086, 0x9620,
     "I2O RAID",
 },
 {
     0x8086, 0x9621,
     "RCU21 I2O RAID",
 },
 {
     0x8086, 0x9622,
     "RCUxx I2O RAID",
 },
 {
     0x8086, 0x9641,
     "RCU31 I2O RAID",
 },
 {
     0x8086, 0x96a1,
     "RCU31L I2O RAID",
 },
 {
     0x8086, 0x9c00,
     "8 Series SATA",
 },
 {
     0x8086, 0x9c01,
     "8 Series SATA",
 },
 {
     0x8086, 0x9c03,
     "8 Series AHCI",
 },
 {
     0x8086, 0x9c05,
     "8 Series RAID",
 },
 {
     0x8086, 0x9c07,
     "8 Series RAID",
 },
 {
     0x8086, 0x9c08,
     "8 Series SATA",
 },
 {
     0x8086, 0x9c09,
     "8 Series SATA",
 },
 {
     0x8086, 0x9c10,
     "8 Series PCIE",
 },
 {
     0x8086, 0x9c12,
     "8 Series PCIE",
 },
 {
     0x8086, 0x9c14,
     "8 Series PCIE",
 },
 {
     0x8086, 0x9c16,
     "8 Series PCIE",
 },
 {
     0x8086, 0x9c18,
     "8 Series PCIE",
 },
 {
     0x8086, 0x9c1a,
     "8 Series PCIE",
 },
 {
     0x8086, 0x9c20,
     "8 Series HD Audio",
 },
 {
     0x8086, 0x9c22,
     "8 Series SMBus",
 },
 {
     0x8086, 0x9c24,
     "8 Series Thermal",
 },
 {
     0x8086, 0x9c26,
     "8 Series USB",
 },
 {
     0x8086, 0x9c31,
     "8 Series xHCI",
 },
 {
     0x8086, 0x9c3a,
     "8 Series MEI",
 },
 {
     0x8086, 0x9c3b,
     "8 Series MEI",
 },
 {
     0x8086, 0x9c3c,
     "8 Series IDER",
 },
 {
     0x8086, 0x9c3d,
     "8 Series KT",
 },
 {
     0x8086, 0x9c41,
     "8 Series LPC",
 },
 {
     0x8086, 0x9c43,
     "8 Series LPC",
 },
 {
     0x8086, 0x9c45,
     "8 Series LPC",
 },
 {
     0x8086, 0x9c83,
     "9 Series AHCI",
 },
 {
     0x8086, 0x9c85,
     "9 Series RAID",
 },
 {
     0x8086, 0x9c87,
     "9 Series RAID",
 },
 {
     0x8086, 0x9c8f,
     "9 Series RAID",
 },
 {
     0x8086, 0x9c90,
     "9 Series PCIE",
 },
 {
     0x8086, 0x9c92,
     "9 Series PCIE",
 },
 {
     0x8086, 0x9c94,
     "9 Series PCIE",
 },
 {
     0x8086, 0x9c96,
     "9 Series PCIE",
 },
 {
     0x8086, 0x9c98,
     "9 Series PCIE",
 },
 {
     0x8086, 0x9c9a,
     "9 Series PCIE",
 },
 {
     0x8086, 0x9cba,
     "9 Series MEI",
 },
 {
     0x8086, 0x9cbb,
     "9 Series MEI",
 },
 {
     0x8086, 0x9cbc,
     "9 Series IDER",
 },
 {
     0x8086, 0x9cbd,
     "9 Series KT",
 },
 {
     0x8086, 0x9ca0,
     "9 Series HD Audio",
 },
 {
     0x8086, 0x9ca2,
     "9 Series SMBus",
 },
 {
     0x8086, 0x9ca4,
     "9 Series Thermal",
 },
 {
     0x8086, 0x9ca6,
     "9 Series USB",
 },
 {
     0x8086, 0x9cb1,
     "9 Series xHCI",
 },
 {
     0x8086, 0x9cc3,
     "9 Series LPC",
 },
 {
     0x8086, 0x9cc5,
     "9 Series LPC",
 },
 {
     0x8086, 0x9cc7,
     "9 Series LPC",
 },
 {
     0x8086, 0x9cc9,
     "9 Series LPC",
 },
 {
     0x8086, 0x9ce0,
     "9 Series DMA",
 },
 {
     0x8086, 0x9ce6,
     "9 Series SPI",
 },
 {
     0x8086, 0x9d03,
     "100 Series AHCI",
 },
 {
     0x8086, 0x9d05,
     "100 Series RAID",
 },
 {
     0x8086, 0x9d07,
     "100 Series RAID",
 },
 {
     0x8086, 0x9d10,
     "100 Series PCIE",
 },
 {
     0x8086, 0x9d11,
     "100 Series PCIE",
 },
 {
     0x8086, 0x9d12,
     "100 Series PCIE",
 },
 {
     0x8086, 0x9d13,
     "100 Series PCIE",
 },
 {
     0x8086, 0x9d14,
     "100 Series PCIE",
 },
 {
     0x8086, 0x9d15,
     "100 Series PCIE",
 },
 {
     0x8086, 0x9d16,
     "100 Series PCIE",
 },
 {
     0x8086, 0x9d17,
     "100 Series PCIE",
 },
 {
     0x8086, 0x9d18,
     "100 Series PCIE",
 },
 {
     0x8086, 0x9d19,
     "100 Series PCIE",
 },
 {
     0x8086, 0x9d1a,
     "100 Series PCIE",
 },
 {
     0x8086, 0x9d1b,
     "100 Series PCIE",
 },
 {
     0x8086, 0x9d21,
     "100 Series PMC",
 },
 {
     0x8086, 0x9d23,
     "100 Series SMBus",
 },
 {
     0x8086, 0x9d24,
     "100 Series SPI",
 },
 {
     0x8086, 0x9d2f,
     "100 Series xHCI",
 },
 {
     0x8086, 0x9d31,
     "100 Series Thermal",
 },
 {
     0x8086, 0x9d35,
     "100 Series ISH",
 },
 {
     0x8086, 0x9d3a,
     "100 Series MEI",
 },
 {
     0x8086, 0x9d3b,
     "100 Series MEI",
 },
 {
     0x8086, 0x9d3c,
     "100 Series IDER",
 },
 {
     0x8086, 0x9d3d,
     "100 Series KT",
 },
 {
     0x8086, 0x9d3e,
     "100 Series MEI",
 },
 {
     0x8086, 0x9d43,
     "100 Series LPC",
 },
 {
     0x8086, 0x9d46,
     "100 Series LPC",
 },
 {
     0x8086, 0x9d48,
     "100 Series LPC",
 },
 {
     0x8086, 0x9d4b,
     "200 Series LPC",
 },
 {
     0x8086, 0x9d4e,
     "200 Series LPC",
 },
 {
     0x8086, 0x9d50,
     "200 Series LPC",
 },
 {
     0x8086, 0x9d53,
     "200 Series LPC",
 },
 {
     0x8086, 0x9d56,
     "200 Series LPC",
 },
 {
     0x8086, 0x9d58,
     "200 Series LPC",
 },
 {
     0x8086, 0x9d60,
     "100 Series I2C",
 },
 {
     0x8086, 0x9d61,
     "100 Series I2C",
 },
 {
     0x8086, 0x9d62,
     "100 Series I2C",
 },
 {
     0x8086, 0x9d63,
     "100 Series I2C",
 },
 {
     0x8086, 0x9d64,
     "100 Series I2C",
 },
 {
     0x8086, 0x9d65,
     "100 Series I2C",
 },
 {
     0x8086, 0x9d66,
     "100 Series I2C",
 },
 {
     0x8086, 0x9d70,
     "100 Series HD Audio",
 },
 {
     0x8086, 0x9d71,
     "200 Series HD Audio",
 },
 {
     0x8086, 0xa000,
     "Pineview DMI",
 },
 {
     0x8086, 0xa001,
     "Pineview Video",
 },
 {
     0x8086, 0xa002,
     "Pineview Video",
 },
 {
     0x8086, 0xa010,
     "Pineview DMI",
 },
 {
     0x8086, 0xa011,
     "Pineview Video",
 },
 {
     0x8086, 0xa012,
     "Pineview Video",
 },
 {
     0x8086, 0xa102,
     "100 Series AHCI",
 },
 {
     0x8086, 0xa103,
     "100 Series AHCI",
 },
 {
     0x8086, 0xa105,
     "100 Series RAID",
 },
 {
     0x8086, 0xa106,
     "100 Series RAID",
 },
 {
     0x8086, 0xa107,
     "100 Series RAID",
 },
 {
     0x8086, 0xa10f,
     "100 Series RAID",
 },
 {
     0x8086, 0xa110,
     "100 Series PCIE",
 },
 {
     0x8086, 0xa111,
     "100 Series PCIE",
 },
 {
     0x8086, 0xa112,
     "100 Series PCIE",
 },
 {
     0x8086, 0xa113,
     "100 Series PCIE",
 },
 {
     0x8086, 0xa114,
     "100 Series PCIE",
 },
 {
     0x8086, 0xa115,
     "100 Series PCIE",
 },
 {
     0x8086, 0xa116,
     "100 Series PCIE",
 },
 {
     0x8086, 0xa117,
     "100 Series PCIE",
 },
 {
     0x8086, 0xa118,
     "100 Series PCIE",
 },
 {
     0x8086, 0xa119,
     "100 Series PCIE",
 },
 {
     0x8086, 0xa11a,
     "100 Series PCIE",
 },
 {
     0x8086, 0xa11b,
     "100 Series PCIE",
 },
 {
     0x8086, 0xa11c,
     "100 Series PCIE",
 },
 {
     0x8086, 0xa11d,
     "100 Series PCIE",
 },
 {
     0x8086, 0xa11e,
     "100 Series PCIE",
 },
 {
     0x8086, 0xa11f,
     "100 Series PCIE",
 },
 {
     0x8086, 0xa121,
     "100 Series PMC",
 },
 {
     0x8086, 0xa123,
     "100 Series SMBus",
 },
 {
     0x8086, 0xa12f,
     "100 Series xHCI",
 },
 {
     0x8086, 0xa131,
     "100 Series Thermal",
 },
 {
     0x8086, 0xa135,
     "100 Series ISH",
 },
 {
     0x8086, 0xa13a,
     "100 Series MEI",
 },
 {
     0x8086, 0xa13b,
     "100 Series MEI",
 },
 {
     0x8086, 0xa13c,
     "100 Series IDER",
 },
 {
     0x8086, 0xa13d,
     "100 Series KT",
 },
 {
     0x8086, 0xa143,
     "H110 LPC",
 },
 {
     0x8086, 0xa144,
     "H170 LPC",
 },
 {
     0x8086, 0xa145,
     "Z170 LPC",
 },
 {
     0x8086, 0xa146,
     "Q170 LPC",
 },
 {
     0x8086, 0xa147,
     "Q150 LPC",
 },
 {
     0x8086, 0xa148,
     "B150 LPC",
 },
 {
     0x8086, 0xa149,
     "C236 LPC",
 },
 {
     0x8086, 0xa14a,
     "C232 LPC",
 },
 {
     0x8086, 0xa14d,
     "CQM170 LPC",
 },
 {
     0x8086, 0xa14e,
     "HM170 LPC",
 },
 {
     0x8086, 0xa150,
     "CM236 LPC",
 },
 {
     0x8086, 0xa160,
     "100 Series I2C",
 },
 {
     0x8086, 0xa161,
     "100 Series I2C",
 },
 {
     0x8086, 0xa167,
     "100 Series PCIE",
 },
 {
     0x8086, 0xa168,
     "100 Series PCIE",
 },
 {
     0x8086, 0xa169,
     "100 Series PCIE",
 },
 {
     0x8086, 0xa16a,
     "100 Series PCIE",
 },
 {
     0x8086, 0xa170,
     "100 Series HD Audio",
 },
 {
     0x8086, 0xa282,
     "200 Series AHCI",
 },
 {
     0x8086, 0xa286,
     "200 Series RAID",
 },
 {
     0x8086, 0xa290,
     "200 Series PCIE",
 },
 {
     0x8086, 0xa291,
     "200 Series PCIE",
 },
 {
     0x8086, 0xa292,
     "200 Series PCIE",
 },
 {
     0x8086, 0xa293,
     "200 Series PCIE",
 },
 {
     0x8086, 0xa294,
     "200 Series PCIE",
 },
 {
     0x8086, 0xa295,
     "200 Series PCIE",
 },
 {
     0x8086, 0xa296,
     "200 Series PCIE",
 },
 {
     0x8086, 0xa297,
     "200 Series PCIE",
 },
 {
     0x8086, 0xa298,
     "200 Series PCIE",
 },
 {
     0x8086, 0xa299,
     "200 Series PCIE",
 },
 {
     0x8086, 0xa29a,
     "200 Series PCIE",
 },
 {
     0x8086, 0xa29b,
     "200 Series PCIE",
 },
 {
     0x8086, 0xa29c,
     "200 Series PCIE",
 },
 {
     0x8086, 0xa29d,
     "200 Series PCIE",
 },
 {
     0x8086, 0xa29e,
     "200 Series PCIE",
 },
 {
     0x8086, 0xa29f,
     "200 Series PCIE",
 },
 {
     0x8086, 0xa2a1,
     "200 Series PMC",
 },
 {
     0x8086, 0xa2a3,
     "200 Series SMBus",
 },
 {
     0x8086, 0xa2af,
     "200 Series xHCI",
 },
 {
     0x8086, 0xa2b1,
     "200 Series Thermal",
 },
 {
     0x8086, 0xa2ba,
     "200 Series MEI",
 },
 {
     0x8086, 0xa2bb,
     "200 Series MEI",
 },
 {
     0x8086, 0xa2bc,
     "200 Series IDER",
 },
 {
     0x8086, 0xa2bd,
     "200 Series KT",
 },
 {
     0x8086, 0xa2c4,
     "H270 LPC",
 },
 {
     0x8086, 0xa2c5,
     "Z270 LPC",
 },
 {
     0x8086, 0xa2c6,
     "Q270 LPC",
 },
 {
     0x8086, 0xa2c7,
     "Q250 LPC",
 },
 {
     0x8086, 0xa2c8,
     "B250 LPC",
 },
 {
     0x8086, 0xa2c9,
     "Z370 LPC",
 },
 {
     0x8086, 0xa2d2,
     "X299 LPC",
 },
 {
     0x8086, 0xa2e7,
     "200 Series PCIE",
 },
 {
     0x8086, 0xa2e8,
     "200 Series PCIE",
 },
 {
     0x8086, 0xa2e9,
     "200 Series PCIE",
 },
 {
     0x8086, 0xa2ea,
     "200 Series PCIE",
 },
 {
     0x8086, 0xa2eb,
     "200 Series PCIE",
 },
 {
     0x8086, 0xa2ec,
     "200 Series PCIE",
 },
 {
     0x8086, 0xa2ed,
     "200 Series PCIE",
 },
 {
     0x8086, 0xa2ee,
     "200 Series PCIE",
 },
 {
     0x8086, 0xa2f0,
     "200 Series HD Audio",
 },
 {
     0x8086, 0xb152,
     "S21152BB",
 },
 {
     0x8086, 0xb154,
     "21154AE/BE",
 },
 {
     0x8086, 0xd130,
     "Core DMI",
 },
 {
     0x8086, 0xd131,
     "Core DMI",
 },
 {
     0x8086, 0xd132,
     "Core DMI",
 },
 {
     0x8086, 0xd138,
     "Core PCIE",
 },
 {
     0x8086, 0xd139,
     "Core PCIE",
 },
 {
     0x8086, 0xd13a,
     "Core PCIE",
 },
 {
     0x8086, 0xd13b,
     "Core PCIE",
 },
 {
     0x8086, 0xd150,
     "Core QPI Link",
 },
 {
     0x8086, 0xd151,
     "Core QPI Routing",
 },
 {
     0x8086, 0xd152,
     "Core DMI",
 },
 {
     0x8086, 0xd153,
     "Core DMI",
 },
 {
     0x8086, 0xd154,
     "Core DMI",
 },
 {
     0x8086, 0xd155,
     "Core Management",
 },
 {
     0x8086, 0xd156,
     "Core Scratch",
 },
 {
     0x8086, 0xd157,
     "Core Control",
 },
 {
     0x8086, 0xd158,
     "Core Misc",
 },
 {
     0x1091, 0x00e4,
     "Powerstorm 4D50T",
 },
 {
     0x1091, 0x00eb,
     "Intense 3D",
 },
 {
     0x1091, 0x07a0,
     "Expert3D",
 },
 {
     0x107e, 0x0004,
     "5526 FibreChannel",
 },
 {
     0x1260, 0x3872,
     "PRISM3",
 },
 {
     0x1260, 0x3873,
     "PRISM2.5",
 },
 {
     0x1260, 0x3877,
     "Prism Indigo",
 },
 {
     0x1260, 0x3886,
     "Prism Javelin/Xbow",
 },
 {
     0x1260, 0x3890,
     "Prism GT/Duette",
 },
 {
     0x14e1, 0x0005,
     "AEON",
 },
 {
     0x10fc, 0x4020,
     "GV-BCTV3",
 },
 {
     0x1061, 0x0001,
     "AGX016",
 },
 {
     0x1061, 0x0002,
     "ITT3204 MPEG Decoder",
 },
 {
     0x1283, 0x8211,
     "IT8211F",
 },
 {
     0x1283, 0x8212,
     "IT8212F",
 },
 {
     0x1283, 0x8213,
     "IT8213F",
 },
 {
     0x1283, 0x8330,
     "IT8330G",
 },
 {
     0x1283, 0x8888,
     "IT8888F ISA",
 },
 {
     0x1283, 0x8892,
     "IT8892E PCIE-PCI",
 },
 {
     0x1283, 0x8893,
     "IT8893E PCIE-PCI",
 },
 {
     0x197b, 0x0250,
     "JMC250",
 },
 {
     0x197b, 0x0260,
     "JMC260",
 },
 {
     0x197b, 0x2360,
     "JMB360 SATA",
 },
 {
     0x197b, 0x2361,
     "JMB361 IDE/SATA",
 },
 {
     0x197b, 0x2362,
     "JMB362 SATA",
 },
 {
     0x197b, 0x2363,
     "JMB363 IDE/SATA",
 },
 {
     0x197b, 0x2365,
     "JMB365 IDE/SATA",
 },
 {
     0x197b, 0x2366,
     "JMB366 IDE/SATA",
 },
 {
     0x197b, 0x2368,
     "JMB368 IDE",
 },
 {
     0x197b, 0x2380,
     "FireWire",
 },
 {
     0x197b, 0x2381,
     "SD Host Controller",
 },
 {
     0x197b, 0x2382,
     "SD/MMC",
 },
 {
     0x197b, 0x2383,
     "Memory Stick",
 },
 {
     0x197b, 0x2384,
     "xD",
 },
 {
     0x197b, 0x2386,
     "SD Host Controller",
 },
 {
     0x197b, 0x2387,
     "SD/MMC",
 },
 {
     0x197b, 0x2388,
     "Memory Stick",
 },
 {
     0x197b, 0x2389,
     "xD",
 },
 {
     0x197b, 0x2391,
     "SD Host Controller",
 },
 {
     0x197b, 0x2392,
     "SD/MMC",
 },
 {
     0x197b, 0x2393,
     "Memory Stick",
 },
 {
     0x197b, 0x2394,
     "xD",
 },
 {
     0x8e2e, 0x3000,
     "KTI",
 },
 {
     0x1376, 0x0003,
     "HSSI",
 },
 {
     0x1376, 0x0004,
     "DS3",
 },
 {
     0x1376, 0x0005,
     "SSI",
 },
 {
     0x1376, 0x0006,
     "DS1",
 },
 {
     0x1376, 0x0007,
     "HSSIc",
 },
 {
     0x1812, 0x0001,
     "Appian Lite",
 },
 {
     0x1407, 0x0100,
     "Dual Serial",
 },
 {
     0x1407, 0x0101,
     "Dual Serial",
 },
 {
     0x1407, 0x0102,
     "Dual Serial",
 },
 {
     0x1407, 0x0110,
     "Serial",
 },
 {
     0x1407, 0x0111,
     "Serial",
 },
 {
     0x1407, 0x0120,
     "Dual Serial",
 },
 {
     0x1407, 0x0121,
     "Dual Serial",
 },
 {
     0x1407, 0x0180,
     "Quad Serial",
 },
 {
     0x1407, 0x0181,
     "Quad Serial",
 },
 {
     0x1407, 0x0200,
     "Serial",
 },
 {
     0x1407, 0x0201,
     "Serial",
 },
 {
     0x1407, 0x0202,
     "Serial",
 },
 {
     0x1407, 0x0600,
     "Serial",
 },
 {
     0x1407, 0x8000,
     "Parallel",
 },
 {
     0x1407, 0x8001,
     "Dual Parallel",
 },
 {
     0x1407, 0x8002,
     "Dual Parallel",
 },
 {
     0x1407, 0x8003,
     "Dual Parallel",
 },
 {
     0x107d, 0x0000,
     "S3 805",
 },
 {
     0x107d, 0x6606,
     "Leadtek WinFast TV 2000",
 },
 {
     0x107d, 0x6609,
     "Leadtek WinFast TV 2000 XP",
 },
 {
     0x1394, 0x0001,
     "LXT1001",
 },
 {
     0x1737, 0x1032,
     "EG1032",
 },
 {
     0x1737, 0x1064,
     "EG1064",
 },
 {
     0x1737, 0xab08,
     "PCMPC200",
 },
 {
     0x1737, 0xab09,
     "PCM200",
 },
 {
     0x11ad, 0x0002,
     "PNIC",
 },
 {
     0x11ad, 0xc115,
     "PNIC-II",
 },
 {
     0x16ab, 0x1103,
     "8031",
 },
 {
     0x11c1, 0x0440,
     "K56flex DSVD LTMODEM",
 },
 {
     0x11c1, 0x0441,
     "LTMODEM",
 },
 {
     0x11c1, 0x0442,
     "LTMODEM",
 },
 {
     0x11c1, 0x0443,
     "LTMODEM",
 },
 {
     0x11c1, 0x0444,
     "LTMODEM",
 },
 {
     0x11c1, 0x0445,
     "LTMODEM",
 },
 {
     0x11c1, 0x0446,
     "LTMODEM",
 },
 {
     0x11c1, 0x0447,
     "LTMODEM",
 },
 {
     0x11c1, 0x0448,
     "LTMODEM",
 },
 {
     0x11c1, 0x0449,
     "LTMODEM",
 },
 {
     0x11c1, 0x044a,
     "LTMODEM",
 },
 {
     0x11c1, 0x044b,
     "LTMODEM",
 },
 {
     0x11c1, 0x044c,
     "LTMODEM",
 },
 {
     0x11c1, 0x044d,
     "LTMODEM",
 },
 {
     0x11c1, 0x044e,
     "LTMODEM",
 },
 {
     0x11c1, 0x0450,
     "LTMODEM",
 },
 {
     0x11c1, 0x0451,
     "LTMODEM",
 },
 {
     0x11c1, 0x0452,
     "LTMODEM",
 },
 {
     0x11c1, 0x0453,
     "LTMODEM",
 },
 {
     0x11c1, 0x0454,
     "LTMODEM",
 },
 {
     0x11c1, 0x0455,
     "LTMODEM",
 },
 {
     0x11c1, 0x0456,
     "LTMODEM",
 },
 {
     0x11c1, 0x0457,
     "LTMODEM",
 },
 {
     0x11c1, 0x0458,
     "LTMODEM",
 },
 {
     0x11c1, 0x0459,
     "LTMODEM",
 },
 {
     0x11c1, 0x045a,
     "LTMODEM",
 },
 {
     0x11c1, 0x045c,
     "LTMODEM",
 },
 {
     0x11c1, 0x048c,
     "LTMODEM",
 },
 {
     0x11c1, 0x0480,
     "Venus Modem",
 },
 {
     0x11c1, 0x5801,
     "USB",
 },
 {
     0x11c1, 0x5802,
     "USB 2-port",
 },
 {
     0x11c1, 0x5803,
     "USB QuadraBus",
 },
 {
     0x11c1, 0x5811,
     "FW322 1394",
 },
 {
     0x11c1, 0x5901,
     "FW643 1394",
 },
 {
     0x11c1, 0xed00,
     "ET1310",
 },
 {
     0x11c1, 0xed01,
     "ET1310",
 },
 {
     0x1287, 0x0020,
     "LS242 DVD Decoder",
 },
 {
     0x10d9, 0x0512,
     "PMAC 98713",
 },
 {
     0x10d9, 0x0531,
     "PMAC 98715",
 },
 {
     0x10d9, 0x0532,
     "PMAC 98727",
 },
 {
     0x10d9, 0x8625,
     "MX86250",
 },
 {
     0x10b6, 0x0001,
     "Smart 16/4 PCI Ringnode",
 },
 {
     0x10b6, 0x0002,
     "Smart 16/4 PCI Ringnode Mk2",
 },
 {
     0x10b6, 0x0003,
     "Smart 16/4 PCI Ringnode Mk3",
 },
 {
     0x10b6, 0x0004,
     "Smart 16/4 PCI Ringnode Mk1",
 },
 {
     0x10b6, 0x0006,
     "16/4 Cardbus",
 },
 {
     0x10b6, 0x0007,
     "Presto PCI",
 },
 {
     0x10b6, 0x0009,
     "Smart 100/16/4 PCI-HS Ringnode",
 },
 {
     0x10b6, 0x000a,
     "Smart 100/16/4 PCI Ringnode",
 },
 {
     0x10b6, 0x000b,
     "16/4 CardBus Mk2",
 },
 {
     0x10b6, 0x1000,
     "Collage 25 ATM",
 },
 {
     0x10b6, 0x1001,
     "Collage 155 ATM",
 },
 {
     0x003d, 0x00d1,
     "i740 PCI",
 },
 {
     0x11ab, 0x1fa6,
     "Libertas 88W8300",
 },
 {
     0x11ab, 0x1fa7,
     "Libertas 88W8310",
 },
 {
     0x11ab, 0x1faa,
     "Libertas 88W8335",
 },
 {
     0x11ab, 0x1fab,
     "Libertas 88W8335",
 },
 {
     0x11ab, 0x2a01,
     "Libertas 88W8300",
 },
 {
     0x11ab, 0x4320,
     "Yukon 88E8001/8003/8010",
 },
 {
     0x11ab, 0x4340,
     "Yukon 88E8021CU",
 },
 {
     0x11ab, 0x4341,
     "Yukon 88E8022CU",
 },
 {
     0x11ab, 0x4342,
     "Yukon 88E8061CU",
 },
 {
     0x11ab, 0x4343,
     "Yukon 88E8062CU",
 },
 {
     0x11ab, 0x4344,
     "Yukon 88E8021X",
 },
 {
     0x11ab, 0x4345,
     "Yukon 88E8022X",
 },
 {
     0x11ab, 0x4346,
     "Yukon 88E8061X",
 },
 {
     0x11ab, 0x4347,
     "Yukon 88E8062X",
 },
 {
     0x11ab, 0x4350,
     "Yukon 88E8035",
 },
 {
     0x11ab, 0x4351,
     "Yukon 88E8036",
 },
 {
     0x11ab, 0x4352,
     "Yukon 88E8038",
 },
 {
     0x11ab, 0x4353,
     "Yukon 88E8039",
 },
 {
     0x11ab, 0x4354,
     "Yukon 88E8040",
 },
 {
     0x11ab, 0x4355,
     "Yukon 88E8040T",
 },
 {
     0x11ab, 0x4356,
     "Yukon 88EC033",
 },
 {
     0x11ab, 0x4357,
     "Yukon 88E8042",
 },
 {
     0x11ab, 0x435a,
     "Yukon 88E8048",
 },
 {
     0x11ab, 0x4360,
     "Yukon 88E8052",
 },
 {
     0x11ab, 0x4361,
     "Yukon 88E8050",
 },
 {
     0x11ab, 0x4362,
     "Yukon 88E8053",
 },
 {
     0x11ab, 0x4363,
     "Yukon 88E8055",
 },
 {
     0x11ab, 0x4364,
     "Yukon 88E8056",
 },
 {
     0x11ab, 0x4365,
     "Yukon 88E8070",
 },
 {
     0x11ab, 0x4366,
     "Yukon 88EC036",
 },
 {
     0x11ab, 0x4367,
     "Yukon 88EC032",
 },
 {
     0x11ab, 0x4368,
     "Yukon 88EC034",
 },
 {
     0x11ab, 0x4369,
     "Yukon 88EC042",
 },
 {
     0x11ab, 0x436a,
     "Yukon 88E8058",
 },
 {
     0x11ab, 0x436b,
     "Yukon 88E8071",
 },
 {
     0x11ab, 0x436c,
     "Yukon 88E8072",
 },
 {
     0x11ab, 0x436d,
     "Yukon 88E8055",
 },
 {
     0x11ab, 0x4370,
     "Yukon 88E8075",
 },
 {
     0x11ab, 0x4380,
     "Yukon 88E8057",
 },
 {
     0x11ab, 0x4381,
     "Yukon 88E8059",
 },
 {
     0x11ab, 0x4382,
     "Yukon 88E8079",
 },
 {
     0x11ab, 0x5005,
     "Yukon (Belkin F5D5005)",
 },
 {
     0x11ab, 0x5040,
     "88SX5040 SATA",
 },
 {
     0x11ab, 0x5041,
     "88SX5041 SATA",
 },
 {
     0x11ab, 0x5080,
     "88SX5080 SATA",
 },
 {
     0x11ab, 0x5081,
     "88SX5081 SATA",
 },
 {
     0x11ab, 0x6040,
     "88SX6040 SATA",
 },
 {
     0x11ab, 0x6041,
     "88SX6041 SATA",
 },
 {
     0x11ab, 0x6042,
     "88SX6042 SATA",
 },
 {
     0x11ab, 0x6080,
     "88SX6080 SATA",
 },
 {
     0x11ab, 0x6081,
     "88SX6081 SATA",
 },
 {
     0x11ab, 0x6101,
     "88SE6101 IDE",
 },
 {
     0x11ab, 0x6111,
     "88SE6111 SATA",
 },
 {
     0x11ab, 0x6120,
     "88SE6120 SATA",
 },
 {
     0x11ab, 0x6121,
     "88SE6121 SATA",
 },
 {
     0x11ab, 0x6122,
     "88SE6122 SATA",
 },
 {
     0x11ab, 0x6140,
     "88SE6140 SATA",
 },
 {
     0x11ab, 0x6141,
     "88SE6141 SATA",
 },
 {
     0x11ab, 0x6145,
     "88SE6145 SATA",
 },
 {
     0x11ab, 0x7042,
     "88SX7042 SATA",
 },
 {
     0x1b4b, 0x9120,
     "88SE9120 SATA",
 },
 {
     0x1b4b, 0x9123,
     "88SE9123 SATA",
 },
 {
     0x1b4b, 0x9125,
     "88SE9125 SATA",
 },
 {
     0x1b4b, 0x9172,
     "88SE9172 SATA",
 },
 {
     0x1b4b, 0x9230,
     "88SE9230 AHCI",
 },
 {
     0x102b, 0x0518,
     "MGA PX2085",
 },
 {
     0x102b, 0x0519,
     "MGA Millenium 2064W",
 },
 {
     0x102b, 0x051a,
     "MGA 1064SG 220MHz",
 },
 {
     0x102b, 0x051b,
     "MGA Millennium II 2164W",
 },
 {
     0x102b, 0x051f,
     "MGA Millennium II 2164WA-B AGP",
 },
 {
     0x102b, 0x0520,
     "MGA G200 PCI",
 },
 {
     0x102b, 0x0521,
     "MGA G200 AGP",
 },
 {
     0x102b, 0x0522,
     "MGA G200e",
 },
 {
     0x102b, 0x0524,
     "MGA G200e",
 },
 {
     0x102b, 0x0525,
     "MGA G400/G450 AGP",
 },
 {
     0x102b, 0x0530,
     "MGA G200eV",
 },
 {
     0x102b, 0x0532,
     "MGA G200eW",
 },
 {
     0x102b, 0x0533,
     "MGA G200eH",
 },
 {
     0x102b, 0x0534,
     "MGA G200eR",
 },
 {
     0x102b, 0x0d10,
     "MGA Impression",
 },
 {
     0x102b, 0x1000,
     "MGA G100 PCI",
 },
 {
     0x102b, 0x1001,
     "MGA G100 AGP",
 },
 {
     0x102b, 0x102b,
     "MGA 1064SG",
 },
 {
     0x102b, 0x2179,
     "MGA G400 Twin Head",
 },
 {
     0x102b, 0x2527,
     "MGA G550 AGP",
 },
 {
     0x102b, 0x2538,
     "MGA P650 PCIe",
 },
 {
     0x102b, 0x0534,
     "MGA G200eR",
 },
 {
     0x102b, 0xff00,
     "MGA Millennium G200 SD",
 },
 {
     0x102b, 0xff01,
     "MGA Produktiva G100 SD",
 },
 {
     0x102b, 0xff02,
     "MGA Mystique G200 SD",
 },
 {
     0x102b, 0xff03,
     "MGA Millennium G200 SG",
 },
 {
     0x102b, 0xff04,
     "MGA Marvel G200 SD",
 },
 {
     0x135a, 0x0d80,
     "IS200 BB16PCI958",
 },
 {
     0x1360, 0x0101,
     "PCI32",
 },
 {
     0x1360, 0x0102,
     "PCI509",
 },
 {
     0x1360, 0x0104,
     "PCI511",
 },
 {
     0x1360, 0x0105,
     "PEX511",
 },
 {
     0x1360, 0x0204,
     "GPS170PCI",
 },
 {
     0x15b3, 0x1013,
     "ConnectX-4",
 },
 {
     0x15b3, 0x1014,
     "ConnectX-4 VF",
 },
 {
     0x15b3, 0x1015,
     "ConnectX-4 Lx",
 },
 {
     0x15b3, 0x1016,
     "ConnectX-4 Lx VF",
 },
 {
     0x15b3, 0x1017,
     "ConnectX-5",
 },
 {
     0x15b3, 0x1018,
     "ConnectX-5 VF",
 },
 {
     0x15b3, 0x1019,
     "ConnectX-5 Ex",
 },
 {
     0x15b3, 0x101a,
     "ConnectX-5 Ex VF",
 },
 {
     0x15b3, 0x101b,
     "ConnectX-6",
 },
 {
     0x15b3, 0x101c,
     "ConnectX-6 VF",
 },
 {
     0x15b3, 0x6368,
     "ConnectX EN",
 },
 {
     0x10cc, 0x0660,
     "PCI",
 },
 {
     0x10cc, 0x0661,
     "PCI-PCI",
 },
 {
     0x16c6, 0x8841,
     "KSZ8841 10/100",
 },
 {
     0x16c6, 0x8842,
     "KSZ8842 dual-port 10/100 switch",
 },
 {
     0x1462, 0x891a,
     "RT3090",
 },
 {
     0x1414, 0x0001,
     "MN-120 10/100",
 },
 {
     0x1414, 0x0002,
     "MN-130 10/100",
 },
 {
     0x1414, 0x5353,
     "VGA",
 },
 {
     0x1031, 0x5607,
     "2IVDC-PCX1",
 },
 {
     0x1031, 0x5601,
     "MiroVIDEO DC20",
 },
 {
     0x1031, 0x5631,
     "Media 3D",
 },
 {
     0x1031, 0x6057,
     "MiroVIDEO DC10/DC20",
 },
 {
     0x10ba, 0x0301,
     "Powerstorm 4D30T",
 },
 {
     0x10ba, 0x0304,
     "GUI Accel",
 },
 {
     0x5372, 0x6873,
     "Serial MCS9865",
 },
 {
     0x1057, 0x0001,
     "MPC105 PCI",
 },
 {
     0x1057, 0x0002,
     "MPC106 PCI",
 },
 {
     0x1057, 0x5600,
     "SM56",
 },
 {
     0x1057, 0x4801,
     "Raven PCI",
 },
 {
     0x1393, 0x1141,
     "CP-114",
 },
 {
     0x1393, 0x1040,
     "C104H",
 },
 {
     0x1393, 0x1041,
     "CP-104UL",
 },
 {
     0x1393, 0x1042,
     "CP-104JU",
 },
 {
     0x1393, 0x1043,
     "CP-104EL",
 },
 {
     0x1393, 0x1680,
     "C168H",
 },
 {
     0x1393, 0x1681,
     "CP-168U",
 },
 {
     0x11c9, 0x0011,
     "DMA4 serial",
 },
 {
     0x1069, 0x0001,
     "DAC960P V2 RAID",
 },
 {
     0x1069, 0x0002,
     "DAC960P V3 RAID",
 },
 {
     0x1069, 0x0010,
     "DAC960P V4 RAID",
 },
 {
     0x1069, 0x0020,
     "DAC960P V5 RAID",
 },
 {
     0x1069, 0x0050,
     "AcceleRAID",
 },
 {
     0x1069, 0xba56,
     "eXtremeRAID",
 },
 {
     0x14c1, 0x0008,
     "Z8E",
 },
 {
     0x14c1, 0x0009,
     "Z8E",
 },
 {
     0x14c1, 0x8043,
     "Myrinet LANai 9.2",
 },
 {
     0x1516, 0x0800,
     "MTD800 10/100",
 },
 {
     0x1516, 0x0803,
     "MTD803 10/100",
 },
 {
     0x1516, 0x0891,
     "MTD891 10/100/1000",
 },
 {
     0x1159, 0x0001,
     "MV1000",
 },
 {
     0x4348, 0x3253,
     "CH352",
 },
 {
     0x1c00, 0x2273,
     "CH351",
 },
 {
     0x1c00, 0x3253,
     "CH382",
 },
 {
     0x1c00, 0x3250,
     "CH382",
 },
 {
     0x4651, 0x3273,
     "TX382B",
 },
 {
     0x15e8, 0x0130,
     "NCP130",
 },
 {
     0x15e8, 0x0131,
     "NCP130A2",
 },
 {
     0x1093, 0xc801,
     "PCI-GPIB",
 },
 {
     0x17cc, 0x2282,
     "NET2282 USB",
 },
 {
     0x4040, 0x0001,
     "NXB-10GXxR",
 },
 {
     0x4040, 0x0002,
     "NXB-10GCX4",
 },
 {
     0x4040, 0x0003,
     "NXB-4GCU",
 },
 {
     0x4040, 0x0004,
     "IMEZ 10GbE",
 },
 {
     0x4040, 0x0005,
     "HMEZ 10GbE",
 },
 {
     0x4040, 0x0024,
     "IMEZ 10GbE Mgmt",
 },
 {
     0x4040, 0x0025,
     "HMEZ 10GbE Mgmt",
 },
 {
     0x4040, 0x0100,
     "NX3031",
 },
 {
     0x100b, 0x0001,
     "DP83810 10/100",
 },
 {
     0x100b, 0x0002,
     "PC87415 IDE",
 },
 {
     0x100b, 0x000e,
     "87560 Legacy I/O",
 },
 {
     0x100b, 0x0012,
     "USB",
 },
 {
     0x100b, 0x0020,
     "DP83815 10/100",
 },
 {
     0x100b, 0x0022,
     "DP83820 10/100/1000",
 },
 {
     0x100b, 0x0028,
     "CS5535 Host",
 },
 {
     0x100b, 0x002b,
     "CS5535 ISA",
 },
 {
     0x100b, 0x002d,
     "CS5535 IDE",
 },
 {
     0x100b, 0x002e,
     "CS5535 AUDIO",
 },
 {
     0x100b, 0x002f,
     "CS5535 USB",
 },
 {
     0x100b, 0x0030,
     "CS5535 VIDEO",
 },
 {
     0x100b, 0x0035,
     "Saturn",
 },
 {
     0x100b, 0x0500,
     "SCx200 ISA",
 },
 {
     0x100b, 0x0501,
     "SCx200 SMI",
 },
 {
     0x100b, 0x0502,
     "SCx200 IDE",
 },
 {
     0x100b, 0x0503,
     "SCx200 AUDIO",
 },
 {
     0x100b, 0x0504,
     "SCx200 VIDEO",
 },
 {
     0x100b, 0x0505,
     "SCx200 X-BUS",
 },
 {
     0x100b, 0x0510,
     "SC1100 ISA",
 },
 {
     0x100b, 0x0511,
     "SC1100 SMI",
 },
 {
     0x100b, 0x0515,
     "SC1100 X-Bus",
 },
 {
     0x100b, 0xd001,
     "NS87410",
 },
 {
     0x1033, 0x0035,
     "USB",
 },
 {
     0x1033, 0x0046,
     "PowerVR PCX2",
 },
 {
     0x1033, 0x0074,
     "I/O",
 },
 {
     0x1033, 0x007d,
     "I/O",
 },
 {
     0x1033, 0x00f2,
     "Firewire",
 },
 {
     0x1033, 0x00e0,
     "USB",
 },
 {
     0x1033, 0x0125,
     "PCIE-PCIX",
 },
 {
     0x1033, 0x0194,
     "xHCI",
 },
 {
     0x1033, 0x8058,
     "Versa Maestro",
 },
 {
     0x1033, 0x803c,
     "Versa Va26D Maestro",
 },
 {
     0x10c8, 0x0001,
     "Magicgraph NM2070",
 },
 {
     0x10c8, 0x0002,
     "Magicgraph 128V",
 },
 {
     0x10c8, 0x0003,
     "Magicgraph 128ZV",
 },
 {
     0x10c8, 0x0004,
     "Magicgraph NM2160",
 },
 {
     0x10c8, 0x0005,
     "Magicgraph NM2200",
 },
 {
     0x10c8, 0x0006,
     "Magicgraph NM2360",
 },
 {
     0x10c8, 0x0025,
     "MagicMedia 256AV+",
 },
 {
     0x10c8, 0x0016,
     "MagicMedia 256XL+",
 },
 {
     0x10c8, 0x8005,
     "MagicMedia 256AV",
 },
 {
     0x10c8, 0x8006,
     "MagicMedia 256ZX",
 },
 {
     0x17d5, 0x5831,
     "Xframe",
 },
 {
     0x17d5, 0x5832,
     "Xframe II",
 },
 {
     0x1385, 0x4100,
     "MA301",
 },
 {
     0x1385, 0x620a,
     "GA620",
 },
 {
     0x1385, 0x630a,
     "GA620T",
 },
 {
     0x9710, 0x9805,
     "Nm9805",
 },
 {
     0x9710, 0x9820,
     "Nm9820",
 },
 {
     0x9710, 0x9835,
     "Nm9835",
 },
 {
     0x9710, 0x9845,
     "Nm9845",
 },
 {
     0x9710, 0x9865,
     "Nm9865",
 },
 {
     0x9710, 0x9901,
     "Nm9901",
 },
 {
     0x9710, 0x9922,
     "Nm9922",
 },
 {
     0x1660, 0x7751,
     "7751",
 },
 {
     0x13f6, 0x0100,
     "CMI8338A Audio",
 },
 {
     0x13f6, 0x0101,
     "CMI8338B Audio",
 },
 {
     0x13f6, 0x0111,
     "CMI8738/C3DX Audio",
 },
 {
     0x13f6, 0x0112,
     "CMI8738B Audio",
 },
 {
     0x13f6, 0x0211,
     "HSP56 AMR",
 },
 {
     0x13f6, 0x8788,
     "CMI8788 HD Audio",
 },
 {
     0x170b, 0x0100,
     "NSP2K",
 },
 {
     0x4a14, 0x5000,
     "NetVin 5000",
 },
 {
     0x10e3, 0x0000,
     "Universe VME",
 },
 {
     0x10e3, 0x8111,
     "Tsi381 PCIE-PCI",
 },
 {
     0x10e3, 0x8113,
     "PEB383 PCIE-PCI",
 },
 {
     0x131f, 0x1000,
     "I/O",
 },
 {
     0x131f, 0x1001,
     "I/O",
 },
 {
     0x131f, 0x1002,
     "I/O",
 },
 {
     0x131f, 0x1010,
     "I/O",
 },
 {
     0x131f, 0x1011,
     "I/O",
 },
 {
     0x131f, 0x1012,
     "I/O",
 },
 {
     0x131f, 0x1020,
     "I/O",
 },
 {
     0x131f, 0x1021,
     "I/O",
 },
 {
     0x131f, 0x1030,
     "I/O",
 },
 {
     0x131f, 0x1031,
     "I/O",
 },
 {
     0x131f, 0x1032,
     "I/O",
 },
 {
     0x131f, 0x1034,
     "I/O",
 },
 {
     0x131f, 0x1035,
     "I/O",
 },
 {
     0x131f, 0x1036,
     "I/O",
 },
 {
     0x131f, 0x1050,
     "I/O",
 },
 {
     0x131f, 0x1051,
     "I/O",
 },
 {
     0x131f, 0x1052,
     "I/O",
 },
 {
     0x131f, 0x2000,
     "I/O",
 },
 {
     0x131f, 0x2001,
     "I/O",
 },
 {
     0x131f, 0x2002,
     "I/O",
 },
 {
     0x131f, 0x2010,
     "I/O",
 },
 {
     0x131f, 0x2011,
     "I/O",
 },
 {
     0x131f, 0x2012,
     "I/O",
 },
 {
     0x131f, 0x2020,
     "I/O",
 },
 {
     0x131f, 0x2021,
     "I/O",
 },
 {
     0x131f, 0x2030,
     "I/O",
 },
 {
     0x131f, 0x2031,
     "I/O",
 },
 {
     0x131f, 0x2032,
     "I/O",
 },
 {
     0x131f, 0x2040,
     "I/O",
 },
 {
     0x131f, 0x2041,
     "I/O",
 },
 {
     0x131f, 0x2042,
     "I/O",
 },
 {
     0x131f, 0x2050,
     "I/O",
 },
 {
     0x131f, 0x2051,
     "I/O",
 },
 {
     0x131f, 0x2052,
     "I/O",
 },
 {
     0x131f, 0x2060,
     "I/O",
 },
 {
     0x131f, 0x2061,
     "I/O",
 },
 {
     0x131f, 0x2062,
     "I/O",
 },
 {
     0x131f, 0x2081,
     "I/O",
 },
 {
     0x131f, 0x2082,
     "I/O",
 },
 {
     0x1924, 0x0703,
     "Falcon P",
 },
 {
     0x1924, 0x6703,
     "Falcon S",
 },
 {
     0x1924, 0xc101,
     "EF1002",
 },
 {
     0x1000, 0x0001,
     "53c810",
 },
 {
     0x1000, 0x0002,
     "53c820",
 },
 {
     0x1000, 0x0003,
     "53c825",
 },
 {
     0x1000, 0x0004,
     "53c815",
 },
 {
     0x1000, 0x0005,
     "53c810AP",
 },
 {
     0x1000, 0x0006,
     "53c860",
 },
 {
     0x1000, 0x000a,
     "53c1510D",
 },
 {
     0x1000, 0x000b,
     "53c896",
 },
 {
     0x1000, 0x000c,
     "53c895",
 },
 {
     0x1000, 0x000d,
     "53c885",
 },
 {
     0x1000, 0x000f,
     "53c875",
 },
 {
     0x1000, 0x0010,
     "53c1510",
 },
 {
     0x1000, 0x0012,
     "53c895A",
 },
 {
     0x1000, 0x0014,
     "MegaRAID SAS3516",
 },
 {
     0x1000, 0x0015,
     "MegaRAID SAS3416",
 },
 {
     0x1000, 0x0016,
     "MegaRAID SAS3508",
 },
 {
     0x1000, 0x0017,
     "MegaRAID SAS3408",
 },
 {
     0x1000, 0x001b,
     "MegaRAID SAS3504",
 },
 {
     0x1000, 0x001c,
     "MegaRAID SAS3404",
 },
 {
     0x1000, 0x0020,
     "53c1010-33",
 },
 {
     0x1000, 0x0021,
     "53c1010-66",
 },
 {
     0x1000, 0x0030,
     "53c1030",
 },
 {
     0x1000, 0x0031,
     "53c1030ZC",
 },
 {
     0x1000, 0x0032,
     "53c1035",
 },
 {
     0x1000, 0x0033,
     "53c1035",
 },
 {
     0x1000, 0x0040,
     "53c1035",
 },
 {
     0x1000, 0x0041,
     "53c1035ZC",
 },
 {
     0x1000, 0x0050,
     "SAS1064",
 },
 {
     0x1000, 0x0054,
     "SAS1068",
 },
 {
     0x1000, 0x0055,
     "SAS1068",
 },
 {
     0x1000, 0x0056,
     "SAS1064E",
 },
 {
     0x1000, 0x0057,
     "SAS1064E",
 },
 {
     0x1000, 0x0058,
     "SAS1068E",
 },
 {
     0x1000, 0x0059,
     "SAS1068E",
 },
 {
     0x1000, 0x005a,
     "SAS1066E",
 },
 {
     0x1000, 0x005b,
     "MegaRAID SAS2208",
 },
 {
     0x1000, 0x005c,
     "SAS1064A",
 },
 {
     0x1000, 0x005d,
     "MegaRAID SAS3108",
 },
 {
     0x1000, 0x005e,
     "SAS1066",
 },
 {
     0x1000, 0x005f,
     "MegaRAID SAS3008",
 },
 {
     0x1000, 0x0060,
     "SAS1078",
 },
 {
     0x1000, 0x0062,
     "SAS1078",
 },
 {
     0x1000, 0x0064,
     "SAS2116",
 },
 {
     0x1000, 0x0065,
     "SAS2116",
 },
 {
     0x1000, 0x006e,
     "SAS2308",
 },
 {
     0x1000, 0x0070,
     "SAS2004",
 },
 {
     0x1000, 0x0072,
     "SAS2008",
 },
 {
     0x1000, 0x0073,
     "MegaRAID SAS2008",
 },
 {
     0x1000, 0x0074,
     "SAS2108",
 },
 {
     0x1000, 0x0076,
     "SAS2108",
 },
 {
     0x1000, 0x0077,
     "SAS2108",
 },
 {
     0x1000, 0x0078,
     "MegaRAID SAS2108 CRYPTO GEN2",
 },
 {
     0x1000, 0x0079,
     "MegaRAID SAS2108 GEN2",
 },
 {
     0x1000, 0x007c,
     "SAS1078DE",
 },
 {
     0x1000, 0x0080,
     "SAS2208",
 },
 {
     0x1000, 0x0081,
     "SAS2208",
 },
 {
     0x1000, 0x0082,
     "SAS2208",
 },
 {
     0x1000, 0x0083,
     "SAS2208",
 },
 {
     0x1000, 0x0084,
     "SAS2208",
 },
 {
     0x1000, 0x0085,
     "SAS2208",
 },
 {
     0x1000, 0x0086,
     "SAS2308",
 },
 {
     0x1000, 0x0087,
     "SAS2308",
 },
 {
     0x1000, 0x008f,
     "53c875J",
 },
 {
     0x1000, 0x0090,
     "SAS3108",
 },
 {
     0x1000, 0x0091,
     "SAS3108",
 },
 {
     0x1000, 0x0094,
     "SAS3108",
 },
 {
     0x1000, 0x0095,
     "SAS3108",
 },
 {
     0x1000, 0x0096,
     "SAS3004",
 },
 {
     0x1000, 0x0097,
     "SAS3008",
 },
 {
     0x1000, 0x0407,
     "MegaRAID 320",
 },
 {
     0x1000, 0x0408,
     "MegaRAID 320-2E",
 },
 {
     0x1000, 0x0409,
     "MegaRAID SATA 4x/8x",
 },
 {
     0x1000, 0x0411,
     "MegaRAID SAS 1064R",
 },
 {
     0x1000, 0x0413,
     "MegaRAID Verde ZCR",
 },
 {
     0x1000, 0x0620,
     "FC909",
 },
 {
     0x1000, 0x0621,
     "FC909A",
 },
 {
     0x1000, 0x0622,
     "FC929",
 },
 {
     0x1000, 0x0623,
     "FC929",
 },
 {
     0x1000, 0x0624,
     "FC919",
 },
 {
     0x1000, 0x0625,
     "FC919",
 },
 {
     0x1000, 0x0626,
     "FC929X",
 },
 {
     0x1000, 0x0628,
     "FC919X",
 },
 {
     0x1000, 0x0640,
     "FC949X",
 },
 {
     0x1000, 0x0642,
     "FC939X",
 },
 {
     0x1000, 0x0646,
     "FC949E",
 },
 {
     0x1000, 0x0701,
     "Yellowfin",
 },
 {
     0x1000, 0x0702,
     "Yellowfin",
 },
 {
     0x1000, 0x0901,
     "61C102",
 },
 {
     0x1000, 0x1000,
     "63C815",
 },
 {
     0x1000, 0x1030,
     "53c1030R",
 },
 {
     0x1000, 0x1960,
     "MegaRAID",
 },
 {
     0x1000, 0x0702,
     "Packet Engines G-NIC",
 },
 {
     0x12d8, 0x01a7,
     "PI7C21P100 PCIX-PCIX",
 },
 {
     0x12d8, 0x2608,
     "PI7C9X2G608GP PCIE",
 },
 {
     0x12d8, 0x8140,
     "PCI-PCI",
 },
 {
     0x12d8, 0x8150,
     "PCI-PCI",
 },
 {
     0x12d8, 0xe111,
     "PI7C9X111SL PCI",
 },
 {
     0x12d8, 0xe130,
     "PI7C9X130 PCIE-PCIX",
 },
 {
     0x14ea, 0xab06,
     "FNW-3603-TX 10/100",
 },
 {
     0x14ea, 0xab07,
     "FNW-3800-TX 10/100",
 },
 {
     0x1074, 0x4e78,
     "NX82C501 PCI",
 },
 {
     0x10f5, 0xa001,
     "NDR4600 PCI",
 },
 {
     0x126c, 0x1211,
     "BS21 10/100",
 },
 {
     0x126c, 0x8030,
     "E-mobility Wireless",
 },
 {
     0x105d, 0x2309,
     "Imagine-128",
 },
 {
     0x105d, 0x2339,
     "Imagine-128 II",
 },
 {
     0x105d, 0x493d,
     "Imagine-128 T2R",
 },
 {
     0x105d, 0x5348,
     "Imagine-128 T2R4",
 },
 {
     0x10de, 0x0008,
     "NV1",
 },
 {
     0x10de, 0x0009,
     "DAC64",
 },
 {
     0x10de, 0x0020,
     "Riva TNT",
 },
 {
     0x10de, 0x0028,
     "Riva TNT2",
 },
 {
     0x10de, 0x0029,
     "Riva TNT2 Ultra",
 },
 {
     0x10de, 0x002c,
     "Vanta",
 },
 {
     0x10de, 0x002d,
     "Vanta",
 },
 {
     0x10de, 0x0030,
     "MCP04 ISA",
 },
 {
     0x10de, 0x0034,
     "MCP04 SMBus",
 },
 {
     0x10de, 0x0035,
     "MCP04 IDE",
 },
 {
     0x10de, 0x0036,
     "MCP04 SATA",
 },
 {
     0x10de, 0x0037,
     "MCP04 LAN",
 },
 {
     0x10de, 0x0038,
     "MCP04 LAN",
 },
 {
     0x10de, 0x003a,
     "MCP04 AC97",
 },
 {
     0x10de, 0x003b,
     "MCP04 USB",
 },
 {
     0x10de, 0x003c,
     "MCP04 USB",
 },
 {
     0x10de, 0x003d,
     "MCP04",
 },
 {
     0x10de, 0x003e,
     "MCP04 SATA",
 },
 {
     0x10de, 0x0050,
     "nForce4 ISA",
 },
 {
     0x10de, 0x0051,
     "nForce4 ISA",
 },
 {
     0x10de, 0x0052,
     "nForce4 SMBus",
 },
 {
     0x10de, 0x0053,
     "nForce4 IDE",
 },
 {
     0x10de, 0x0054,
     "nForce4 SATA",
 },
 {
     0x10de, 0x0055,
     "nForce4 SATA",
 },
 {
     0x10de, 0x0056,
     "CK804 LAN",
 },
 {
     0x10de, 0x0057,
     "CK804 LAN",
 },
 {
     0x10de, 0x0059,
     "nForce4 AC97",
 },
 {
     0x10de, 0x005a,
     "nForce4 USB",
 },
 {
     0x10de, 0x005b,
     "nForce4 USB",
 },
 {
     0x10de, 0x005c,
     "nForce4",
 },
 {
     0x10de, 0x005d,
     "nForce4 PCIE",
 },
 {
     0x10de, 0x005e,
     "nForce4 DDR",
 },
 {
     0x10de, 0x0060,
     "nForce2 ISA",
 },
 {
     0x10de, 0x0064,
     "nForce2 SMBus",
 },
 {
     0x10de, 0x0065,
     "nForce2 IDE",
 },
 {
     0x10de, 0x0066,
     "nForce2 LAN",
 },
 {
     0x10de, 0x0067,
     "nForce2 USB",
 },
 {
     0x10de, 0x0068,
     "nForce2 USB",
 },
 {
     0x10de, 0x006a,
     "nForce2 AC97",
 },
 {
     0x10de, 0x006b,
     "nForce2 Audio",
 },
 {
     0x10de, 0x006c,
     "nForce2",
 },
 {
     0x10de, 0x006d,
     "nForce2",
 },
 {
     0x10de, 0x006e,
     "nForce2 FireWire",
 },
 {
     0x10de, 0x007e,
     "MCP04 PCIE",
 },
 {
     0x10de, 0x0080,
     "nForce2 400 ISA",
 },
 {
     0x10de, 0x0084,
     "nForce2 400 SMBus",
 },
 {
     0x10de, 0x0085,
     "nForce2 400 IDE",
 },
 {
     0x10de, 0x0086,
     "nForce3 LAN",
 },
 {
     0x10de, 0x0087,
     "nForce2 400 USB",
 },
 {
     0x10de, 0x0088,
     "nForce2 400 USB",
 },
 {
     0x10de, 0x008a,
     "nForce2 400 AC97",
 },
 {
     0x10de, 0x008b,
     "nForce2 400",
 },
 {
     0x10de, 0x008c,
     "nForce3 LAN",
 },
 {
     0x10de, 0x008e,
     "nForce2 400 SATA",
 },
 {
     0x10de, 0x0091,
     "GeForce 7800 GTX",
 },
 {
     0x10de, 0x0092,
     "GeForce 7800 GT",
 },
 {
     0x10de, 0x00a0,
     "Aladdin TNT2",
 },
 {
     0x10de, 0x00c8,
     "GeForce Go 6800",
 },
 {
     0x10de, 0x00c9,
     "GeForce Go 6800 Ultra",
 },
 {
     0x10de, 0x00cc,
     "Quadro FX Go1400",
 },
 {
     0x10de, 0x00ce,
     "Quadro FX 1400",
 },
 {
     0x10de, 0x00d0,
     "nForce3 ISA",
 },
 {
     0x10de, 0x00d1,
     "nForce3 Host",
 },
 {
     0x10de, 0x00d2,
     "nForce3",
 },
 {
     0x10de, 0x00d3,
     "CK804",
 },
 {
     0x10de, 0x00d4,
     "nForce3 SMBus",
 },
 {
     0x10de, 0x00d5,
     "nForce3 IDE",
 },
 {
     0x10de, 0x00d6,
     "nForce3 LAN",
 },
 {
     0x10de, 0x00d7,
     "nForce3 USB",
 },
 {
     0x10de, 0x00d8,
     "nForce3 USB",
 },
 {
     0x10de, 0x00d9,
     "nForce3 Modem",
 },
 {
     0x10de, 0x00da,
     "nForce3 AC97",
 },
 {
     0x10de, 0x00dd,
     "nForce3",
 },
 {
     0x10de, 0x00df,
     "nForce3 LAN",
 },
 {
     0x10de, 0x00e0,
     "nForce3 250 ISA",
 },
 {
     0x10de, 0x00e1,
     "nForce3 250 Host",
 },
 {
     0x10de, 0x00e2,
     "nForce3 250 AGP",
 },
 {
     0x10de, 0x00e3,
     "nForce3 250 SATA",
 },
 {
     0x10de, 0x00e4,
     "nForce3 250 SMBus",
 },
 {
     0x10de, 0x00e5,
     "nForce3 250 IDE",
 },
 {
     0x10de, 0x00e6,
     "nForce3 LAN",
 },
 {
     0x10de, 0x00e7,
     "nForce3 250 USB",
 },
 {
     0x10de, 0x00e8,
     "nForce3 250 USB",
 },
 {
     0x10de, 0x00ea,
     "nForce3 250 AC97",
 },
 {
     0x10de, 0x00ed,
     "nForce3 250",
 },
 {
     0x10de, 0x00ee,
     "nForce3 250 SATA",
 },
 {
     0x10de, 0x00f1,
     "GeForce 6600 GT AGP",
 },
 {
     0x10de, 0x00f2,
     "GeForce 6600",
 },
 {
     0x10de, 0x00f5,
     "GeForce 7800 GS",
 },
 {
     0x10de, 0x00f9,
     "GeForce 6800 GT",
 },
 {
     0x10de, 0x00fc,
     "GeForce 5300 PCX",
 },
 {
     0x10de, 0x00fd,
     "Quadro FX 330",
 },
 {
     0x10de, 0x0100,
     "GeForce256",
 },
 {
     0x10de, 0x0101,
     "GeForce256 DDR",
 },
 {
     0x10de, 0x0103,
     "Quadro",
 },
 {
     0x10de, 0x0110,
     "GeForce2 MX",
 },
 {
     0x10de, 0x0111,
     "GeForce2 MX 100",
 },
 {
     0x10de, 0x0112,
     "GeForce2 Go",
 },
 {
     0x10de, 0x0113,
     "Quadro2 MXR",
 },
 {
     0x10de, 0x0140,
     "GeForce 6600 GT",
 },
 {
     0x10de, 0x0141,
     "GeForce 6600",
 },
 {
     0x10de, 0x0142,
     "GeForce 6600",
 },
 {
     0x10de, 0x0144,
     "GeForce 6600 Go",
 },
 {
     0x10de, 0x0146,
     "GeForce 6600 Go",
 },
 {
     0x10de, 0x0150,
     "GeForce2 GTS",
 },
 {
     0x10de, 0x0151,
     "GeForce2 Ti",
 },
 {
     0x10de, 0x0152,
     "GeForce2 Ultra",
 },
 {
     0x10de, 0x0153,
     "Quadro2 Pro",
 },
 {
     0x10de, 0x0161,
     "GeForce 6200",
 },
 {
     0x10de, 0x0165,
     "Quadro NVS 285",
 },
 {
     0x10de, 0x0167,
     "GeForce Go 6200",
 },
 {
     0x10de, 0x0170,
     "GeForce4 MX 460",
 },
 {
     0x10de, 0x0171,
     "GeForce4 MX 440",
 },
 {
     0x10de, 0x0172,
     "GeForce4 MX 420",
 },
 {
     0x10de, 0x0174,
     "GeForce4 440 Go",
 },
 {
     0x10de, 0x0175,
     "GeForce4 420 Go",
 },
 {
     0x10de, 0x0176,
     "GeForce4 420 Go 32M",
 },
 {
     0x10de, 0x0178,
     "Quadro4 500XGL",
 },
 {
     0x10de, 0x0179,
     "GeForce4 440 Go 64M",
 },
 {
     0x10de, 0x017a,
     "Quadro4 200/400NVS",
 },
 {
     0x10de, 0x017b,
     "Quadro4 550XGL",
 },
 {
     0x10de, 0x017c,
     "Quadro4 GoGL",
 },
 {
     0x10de, 0x0181,
     "GeForce4 MX 440 AGP",
 },
 {
     0x10de, 0x0182,
     "GeForce4 MX 440SE AGP",
 },
 {
     0x10de, 0x0183,
     "GeForce 4 MX 420 AGP",
 },
 {
     0x10de, 0x0185,
     "GeForce4 MX 4000",
 },
 {
     0x10de, 0x0188,
     "Quadro4 580 XGL",
 },
 {
     0x10de, 0x018a,
     "Quadro4 NVS",
 },
 {
     0x10de, 0x018b,
     "Quadro4 380 XGL",
 },
 {
     0x10de, 0x0191,
     "GeForce 8800 GTX",
 },
 {
     0x10de, 0x0193,
     "GeForce 8800 GTS",
 },
 {
     0x10de, 0x01a0,
     "GeForce2 Crush11",
 },
 {
     0x10de, 0x01a4,
     "nForce Host",
 },
 {
     0x10de, 0x01aa,
     "nForce 220 DDR",
 },
 {
     0x10de, 0x01ab,
     "nForce 420 DDR",
 },
 {
     0x10de, 0x01ac,
     "nForce 220/420",
 },
 {
     0x10de, 0x01ad,
     "nForce 220/420",
 },
 {
     0x10de, 0x01b0,
     "nForce APU",
 },
 {
     0x10de, 0x01b1,
     "nForce AC97",
 },
 {
     0x10de, 0x01b2,
     "nForce ISA",
 },
 {
     0x10de, 0x01b4,
     "nForce SMBus",
 },
 {
     0x10de, 0x01b7,
     "nForce AGP",
 },
 {
     0x10de, 0x01b8,
     "nForce",
 },
 {
     0x10de, 0x01bc,
     "nForce IDE",
 },
 {
     0x10de, 0x01c2,
     "nForce USB",
 },
 {
     0x10de, 0x01c3,
     "nForce LAN",
 },
 {
     0x10de, 0x01d1,
     "GeForce 7300 LE",
 },
 {
     0x10de, 0x01d3,
     "GeForce 7200 GS",
 },
 {
     0x10de, 0x01d7,
     "GeForce 7300 Go",
 },
 {
     0x10de, 0x01d8,
     "GeForce 7400 Go",
 },
 {
     0x10de, 0x01df,
     "GeForce 7300 GS",
 },
 {
     0x10de, 0x01e0,
     "nForce2 PCI",
 },
 {
     0x10de, 0x01e8,
     "nForce2 AGP",
 },
 {
     0x10de, 0x01ea,
     "nForce2",
 },
 {
     0x10de, 0x01eb,
     "nForce2",
 },
 {
     0x10de, 0x01ec,
     "nForce2",
 },
 {
     0x10de, 0x01ed,
     "nForce2",
 },
 {
     0x10de, 0x01ee,
     "nForce2",
 },
 {
     0x10de, 0x01ef,
     "nForce2",
 },
 {
     0x10de, 0x01f0,
     "GeForce4 MX nForce GPU",
 },
 {
     0x10de, 0x0200,
     "GeForce3",
 },
 {
     0x10de, 0x0201,
     "GeForce3 Ti 200",
 },
 {
     0x10de, 0x0202,
     "GeForce3 Ti 500",
 },
 {
     0x10de, 0x0203,
     "Quadro DCC",
 },
 {
     0x10de, 0x0221,
     "GeForce 6200",
 },
 {
     0x10de, 0x0240,
     "GeForce 6150",
 },
 {
     0x10de, 0x0241,
     "GeForce 6150 LE",
 },
 {
     0x10de, 0x0242,
     "GeForce 6100",
 },
 {
     0x10de, 0x0244,
     "GeForce Go 6150",
 },
 {
     0x10de, 0x0247,
     "GeForce Go 6100",
 },
 {
     0x10de, 0x0250,
     "GeForce4 Ti 4600",
 },
 {
     0x10de, 0x0251,
     "GeForce4 Ti 4400",
 },
 {
     0x10de, 0x0253,
     "GeForce4 Ti 4200",
 },
 {
     0x10de, 0x0258,
     "Quadro4 900 XGL",
 },
 {
     0x10de, 0x0259,
     "Quadro4 750 XGL",
 },
 {
     0x10de, 0x025b,
     "Quadro4 700 XGL",
 },
 {
     0x10de, 0x0260,
     "MCP51 ISA",
 },
 {
     0x10de, 0x0261,
     "MCP51 ISA",
 },
 {
     0x10de, 0x0262,
     "MCP51 ISA",
 },
 {
     0x10de, 0x0263,
     "MCP51 ISA",
 },
 {
     0x10de, 0x0264,
     "MCP51 SMBus",
 },
 {
     0x10de, 0x0265,
     "MCP51 IDE",
 },
 {
     0x10de, 0x0266,
     "MCP51 SATA",
 },
 {
     0x10de, 0x0267,
     "MCP51 SATA",
 },
 {
     0x10de, 0x0268,
     "MCP51 LAN",
 },
 {
     0x10de, 0x0269,
     "MCP51 LAN",
 },
 {
     0x10de, 0x026b,
     "MCP51 AC97",
 },
 {
     0x10de, 0x026c,
     "MCP51 HD Audio",
 },
 {
     0x10de, 0x026d,
     "MCP51 USB",
 },
 {
     0x10de, 0x026e,
     "MCP51 USB",
 },
 {
     0x10de, 0x026f,
     "MCP51",
 },
 {
     0x10de, 0x0270,
     "MCP51 Host",
 },
 {
     0x10de, 0x0271,
     "MCP51 PMU",
 },
 {
     0x10de, 0x0272,
     "MCP51 Memory",
 },
 {
     0x10de, 0x027e,
     "C51 Memory",
 },
 {
     0x10de, 0x027f,
     "C51 Memory",
 },
 {
     0x10de, 0x0280,
     "GeForce4 Ti 4800",
 },
 {
     0x10de, 0x0281,
     "GeForce4 Ti 4200",
 },
 {
     0x10de, 0x0286,
     "GeForce4 Ti 4200 Go",
 },
 {
     0x10de, 0x0291,
     "GeForce 7900 GT/GTO",
 },
 {
     0x10de, 0x0297,
     "GeForce Go 7950 GTX",
 },
 {
     0x10de, 0x029d,
     "Quadro FX 3500",
 },
 {
     0x10de, 0x02e0,
     "GeForce 7600 GT",
 },
 {
     0x10de, 0x02e1,
     "GeForce 7600 GS",
 },
 {
     0x10de, 0x02f0,
     "C51 Host",
 },
 {
     0x10de, 0x02f1,
     "C51 Host",
 },
 {
     0x10de, 0x02f2,
     "C51 Host",
 },
 {
     0x10de, 0x02f3,
     "C51 Host",
 },
 {
     0x10de, 0x02f4,
     "C51 Host",
 },
 {
     0x10de, 0x02f5,
     "C51 Host",
 },
 {
     0x10de, 0x02f6,
     "C51 Host",
 },
 {
     0x10de, 0x02f7,
     "C51 Host",
 },
 {
     0x10de, 0x02f8,
     "C51 Memory",
 },
 {
     0x10de, 0x02f9,
     "C51 Memory",
 },
 {
     0x10de, 0x02fa,
     "C51 Memory",
 },
 {
     0x10de, 0x02fb,
     "C51 PCIE",
 },
 {
     0x10de, 0x02fc,
     "C51 PCIE",
 },
 {
     0x10de, 0x02fd,
     "C51 PCIE",
 },
 {
     0x10de, 0x02fe,
     "C51 Memory",
 },
 {
     0x10de, 0x02ff,
     "C51 Memory",
 },
 {
     0x10de, 0x0301,
     "GeForce FX 5800 Ultra",
 },
 {
     0x10de, 0x0302,
     "GeForce FX 5800",
 },
 {
     0x10de, 0x0311,
     "GeForce FX 5600 Ultra",
 },
 {
     0x10de, 0x0312,
     "GeForce FX 5600",
 },
 {
     0x10de, 0x031a,
     "GeForce FX Go 5600",
 },
 {
     0x10de, 0x031b,
     "GeForce FX Go 5650",
 },
 {
     0x10de, 0x0321,
     "GeForce FX 5200 Ultra",
 },
 {
     0x10de, 0x0322,
     "GeForce FX 5200",
 },
 {
     0x10de, 0x0324,
     "GeForce FX Go 5200",
 },
 {
     0x10de, 0x0326,
     "GeForce FX 5500",
 },
 {
     0x10de, 0x0327,
     "GeForce FX 5100",
 },
 {
     0x10de, 0x0328,
     "GeForce FX Go 5200",
 },
 {
     0x10de, 0x0329,
     "GeForce FX Go 5200",
 },
 {
     0x10de, 0x032b,
     "Quadro FX 500/600",
 },
 {
     0x10de, 0x032c,
     "GeForce FX Go 5300",
 },
 {
     0x10de, 0x032d,
     "GeForce FX Go 5100",
 },
 {
     0x10de, 0x0330,
     "GeForce FX 5900 Ultra",
 },
 {
     0x10de, 0x0331,
     "GeForce FX 5900",
 },
 {
     0x10de, 0x0333,
     "GeForce FX 5950 Ultra",
 },
 {
     0x10de, 0x0343,
     "GeForce FX 5700LE",
 },
 {
     0x10de, 0x0347,
     "GeForce FX Go 5700",
 },
 {
     0x10de, 0x0348,
     "GeForce FX Go 5700",
 },
 {
     0x10de, 0x0360,
     "MCP55 ISA",
 },
 {
     0x10de, 0x0361,
     "MCP55 ISA",
 },
 {
     0x10de, 0x0362,
     "MCP55 ISA",
 },
 {
     0x10de, 0x0363,
     "MCP55 ISA",
 },
 {
     0x10de, 0x0364,
     "MCP55 ISA",
 },
 {
     0x10de, 0x0365,
     "MCP55 ISA",
 },
 {
     0x10de, 0x0366,
     "MCP55 ISA",
 },
 {
     0x10de, 0x0367,
     "MCP55 ISA",
 },
 {
     0x10de, 0x0368,
     "MCP55 SMBus",
 },
 {
     0x10de, 0x0369,
     "MCP55 Memory",
 },
 {
     0x10de, 0x036a,
     "MCP55 Memory",
 },
 {
     0x10de, 0x036c,
     "MCP55 USB",
 },
 {
     0x10de, 0x036d,
     "MCP55 USB",
 },
 {
     0x10de, 0x036e,
     "MCP55 IDE",
 },
 {
     0x10de, 0x0370,
     "MCP55",
 },
 {
     0x10de, 0x0371,
     "MCP55 HD Audio",
 },
 {
     0x10de, 0x0372,
     "MCP55 LAN",
 },
 {
     0x10de, 0x0373,
     "MCP55 LAN",
 },
 {
     0x10de, 0x0374,
     "MCP55 PCIE",
 },
 {
     0x10de, 0x0375,
     "MCP55 PCIE",
 },
 {
     0x10de, 0x0376,
     "MCP55 PCIE",
 },
 {
     0x10de, 0x0377,
     "MCP55 PCIE",
 },
 {
     0x10de, 0x0378,
     "MCP55 PCIE",
 },
 {
     0x10de, 0x037a,
     "MCP55 Memory",
 },
 {
     0x10de, 0x037e,
     "MCP55 SATA",
 },
 {
     0x10de, 0x037f,
     "MCP55 SATA",
 },
 {
     0x10de, 0x0391,
     "GeForce 7600 GT",
 },
 {
     0x10de, 0x0392,
     "GeForce 7600 GS",
 },
 {
     0x10de, 0x0393,
     "GeForce 7300 GT",
 },
 {
     0x10de, 0x0398,
     "GeForce 7600 Go",
 },
 {
     0x10de, 0x03a0,
     "C55 Host",
 },
 {
     0x10de, 0x03a1,
     "C55 Host",
 },
 {
     0x10de, 0x03a2,
     "C55 Host",
 },
 {
     0x10de, 0x03a3,
     "C55 Host",
 },
 {
     0x10de, 0x03a4,
     "C55 Host",
 },
 {
     0x10de, 0x03a5,
     "C55 Host",
 },
 {
     0x10de, 0x03a6,
     "C55 Host",
 },
 {
     0x10de, 0x03a7,
     "C55 Host",
 },
 {
     0x10de, 0x03a8,
     "C55 Memory",
 },
 {
     0x10de, 0x03a9,
     "C55 Memory",
 },
 {
     0x10de, 0x03aa,
     "C55 Memory",
 },
 {
     0x10de, 0x03ab,
     "C55 Memory",
 },
 {
     0x10de, 0x03ac,
     "C55 Memory",
 },
 {
     0x10de, 0x03ad,
     "C55 Memory",
 },
 {
     0x10de, 0x03ae,
     "C55 Memory",
 },
 {
     0x10de, 0x03af,
     "C55 Memory",
 },
 {
     0x10de, 0x03b0,
     "C55 Memory",
 },
 {
     0x10de, 0x03b1,
     "C55 Memory",
 },
 {
     0x10de, 0x03b2,
     "C55 Memory",
 },
 {
     0x10de, 0x03b3,
     "C55 Memory",
 },
 {
     0x10de, 0x03b4,
     "C55 Memory",
 },
 {
     0x10de, 0x03b5,
     "C55 Memory",
 },
 {
     0x10de, 0x03b6,
     "C55 Memory",
 },
 {
     0x10de, 0x03b7,
     "C55 PCIE",
 },
 {
     0x10de, 0x03b8,
     "C55 PCIE",
 },
 {
     0x10de, 0x03b9,
     "C55 PCIE",
 },
 {
     0x10de, 0x03ba,
     "C55 Memory",
 },
 {
     0x10de, 0x03bb,
     "C55 PCIE",
 },
 {
     0x10de, 0x03bc,
     "C55 Memory",
 },
 {
     0x10de, 0x03d0,
     "GeForce 6100 nForce 430",
 },
 {
     0x10de, 0x03d1,
     "GeForce 6100 nForce 405",
 },
 {
     0x10de, 0x03d6,
     "GeForce 7025 nForce 630a",
 },
 {
     0x10de, 0x03e0,
     "MCP61 ISA",
 },
 {
     0x10de, 0x03e1,
     "MCP61 ISA",
 },
 {
     0x10de, 0x03e2,
     "MCP61 Memory",
 },
 {
     0x10de, 0x03e4,
     "MCP61 HD Audio",
 },
 {
     0x10de, 0x03e5,
     "MCP61 LAN",
 },
 {
     0x10de, 0x03e6,
     "MCP61 LAN",
 },
 {
     0x10de, 0x03e7,
     "MCP61 SATA",
 },
 {
     0x10de, 0x03e8,
     "MCP61 PCIE",
 },
 {
     0x10de, 0x03e9,
     "MCP61 PCIE",
 },
 {
     0x10de, 0x03ea,
     "MCP61 Memory",
 },
 {
     0x10de, 0x03eb,
     "MCP61 SMBus",
 },
 {
     0x10de, 0x03ec,
     "MCP61 IDE",
 },
 {
     0x10de, 0x03ee,
     "MCP61 LAN",
 },
 {
     0x10de, 0x03ef,
     "MCP61 LAN",
 },
 {
     0x10de, 0x03f0,
     "MCP61 HD Audio",
 },
 {
     0x10de, 0x03f1,
     "MCP61 USB",
 },
 {
     0x10de, 0x03f2,
     "MCP61 USB",
 },
 {
     0x10de, 0x03f3,
     "MCP61",
 },
 {
     0x10de, 0x03f4,
     "MCP61 SMU",
 },
 {
     0x10de, 0x03f5,
     "MCP61 Memory",
 },
 {
     0x10de, 0x03f6,
     "MCP61 SATA",
 },
 {
     0x10de, 0x03f7,
     "MCP61 SATA",
 },
 {
     0x10de, 0x0402,
     "GeForce 8600 GT",
 },
 {
     0x10de, 0x0407,
     "GeForce 8600M GT",
 },
 {
     0x10de, 0x040c,
     "Quadro FX 570M",
 },
 {
     0x10de, 0x0421,
     "GeForce 8500 GT",
 },
 {
     0x10de, 0x0422,
     "GeForce 8400 GS",
 },
 {
     0x10de, 0x0427,
     "GeForce 8400M GS",
 },
 {
     0x10de, 0x0428,
     "GeForce 8400M G",
 },
 {
     0x10de, 0x0440,
     "MCP65 ISA",
 },
 {
     0x10de, 0x0441,
     "MCP65 ISA",
 },
 {
     0x10de, 0x0444,
     "MCP65 Memory",
 },
 {
     0x10de, 0x0445,
     "MCP65 Memory",
 },
 {
     0x10de, 0x0446,
     "MCP65 SMBus",
 },
 {
     0x10de, 0x0448,
     "MCP65 IDE",
 },
 {
     0x10de, 0x0449,
     "MCP65 PCI",
 },
 {
     0x10de, 0x044a,
     "MCP65 HD Audio",
 },
 {
     0x10de, 0x044b,
     "MCP65 HD Audio",
 },
 {
     0x10de, 0x044c,
     "MCP65 AHCI",
 },
 {
     0x10de, 0x044d,
     "MCP65 AHCI",
 },
 {
     0x10de, 0x044e,
     "MCP65 AHCI",
 },
 {
     0x10de, 0x044f,
     "MCP65 AHCI",
 },
 {
     0x10de, 0x0450,
     "MCP65 LAN",
 },
 {
     0x10de, 0x0451,
     "MCP65 LAN",
 },
 {
     0x10de, 0x0452,
     "MCP65 LAN",
 },
 {
     0x10de, 0x0453,
     "MCP65 LAN",
 },
 {
     0x10de, 0x0454,
     "MCP65 USB",
 },
 {
     0x10de, 0x0455,
     "MCP65 USB",
 },
 {
     0x10de, 0x0456,
     "MCP65 USB",
 },
 {
     0x10de, 0x0457,
     "MCP65 USB",
 },
 {
     0x10de, 0x0458,
     "MCP65 PCIE",
 },
 {
     0x10de, 0x0459,
     "MCP65 PCIE",
 },
 {
     0x10de, 0x045a,
     "MCP65 PCIE",
 },
 {
     0x10de, 0x045b,
     "MCP65 PCIE",
 },
 {
     0x10de, 0x045c,
     "MCP65 SATA",
 },
 {
     0x10de, 0x045d,
     "MCP65 SATA",
 },
 {
     0x10de, 0x045e,
     "MCP65 SATA",
 },
 {
     0x10de, 0x045f,
     "MCP65 SATA",
 },
 {
     0x10de, 0x05e3,
     "GeForce GTX 285",
 },
 {
     0x10de, 0x0533,
     "GeForce 7000M",
 },
 {
     0x10de, 0x053b,
     "GeForce 7050 PV",
 },
 {
     0x10de, 0x0541,
     "MCP67 Memory",
 },
 {
     0x10de, 0x0542,
     "MCP67 SMBus",
 },
 {
     0x10de, 0x0543,
     "MCP67 Co-processor",
 },
 {
     0x10de, 0x0547,
     "MCP67 Memory",
 },
 {
     0x10de, 0x0548,
     "MCP67 ISA",
 },
 {
     0x10de, 0x054c,
     "MCP67 LAN",
 },
 {
     0x10de, 0x054d,
     "MCP67 LAN",
 },
 {
     0x10de, 0x054e,
     "MCP67 LAN",
 },
 {
     0x10de, 0x054f,
     "MCP67 LAN",
 },
 {
     0x10de, 0x0550,
     "MCP67 SATA",
 },
 {
     0x10de, 0x0551,
     "MCP67 SATA",
 },
 {
     0x10de, 0x0552,
     "MCP67 SATA",
 },
 {
     0x10de, 0x0553,
     "MCP67 SATA",
 },
 {
     0x10de, 0x0554,
     "MCP67 AHCI",
 },
 {
     0x10de, 0x0555,
     "MCP67 AHCI",
 },
 {
     0x10de, 0x0556,
     "MCP67 AHCI",
 },
 {
     0x10de, 0x0557,
     "MCP67 AHCI",
 },
 {
     0x10de, 0x0558,
     "MCP67 RAID",
 },
 {
     0x10de, 0x0559,
     "MCP67 RAID",
 },
 {
     0x10de, 0x055a,
     "MCP67 RAID",
 },
 {
     0x10de, 0x055b,
     "MCP67 RAID",
 },
 {
     0x10de, 0x055c,
     "MCP67 HD Audio",
 },
 {
     0x10de, 0x055d,
     "MCP67 HD Audio",
 },
 {
     0x10de, 0x055e,
     "MCP67 USB",
 },
 {
     0x10de, 0x055f,
     "MCP67 USB",
 },
 {
     0x10de, 0x0560,
     "MCP67 IDE",
 },
 {
     0x10de, 0x0561,
     "MCP67 PCI",
 },
 {
     0x10de, 0x0562,
     "MCP67 PCIE",
 },
 {
     0x10de, 0x0563,
     "MCP67 PCIE",
 },
 {
     0x10de, 0x0568,
     "MCP77 Memory",
 },
 {
     0x10de, 0x0569,
     "MCP77 PCIE",
 },
 {
     0x10de, 0x056a,
     "MCP73 USB",
 },
 {
     0x10de, 0x056c,
     "MCP73 IDE",
 },
 {
     0x10de, 0x056d,
     "MCP73 PCIE",
 },
 {
     0x10de, 0x056e,
     "MCP73 PCIE",
 },
 {
     0x10de, 0x056f,
     "MCP73 PCIE",
 },
 {
     0x10de, 0x05b1,
     "nForce 200",
 },
 {
     0x10de, 0x0605,
     "GeForce 9800 GTX",
 },
 {
     0x10de, 0x0611,
     "GeForce 8800 GT",
 },
 {
     0x10de, 0x0614,
     "GeForce 9800 GT",
 },
 {
     0x10de, 0x0622,
     "GeForce 9600 GT",
 },
 {
     0x10de, 0x06e0,
     "GeForce 9300 GE",
 },
 {
     0x10de, 0x06e4,
     "GeForce 8400 GS",
 },
 {
     0x10de, 0x06e9,
     "GeForce 9300M GS",
 },
 {
     0x10de, 0x06ea,
     "Quadro NVS 150m",
 },
 {
     0x10de, 0x06eb,
     "Quadro NVS 160m",
 },
 {
     0x10de, 0x0751,
     "MCP77 Memory",
 },
 {
     0x10de, 0x0752,
     "MCP77 SMBus",
 },
 {
     0x10de, 0x0753,
     "MCP77 Co-processor",
 },
 {
     0x10de, 0x0754,
     "MCP77 Memory",
 },
 {
     0x10de, 0x0759,
     "MCP77 IDE",
 },
 {
     0x10de, 0x075a,
     "MCP77 PCI",
 },
 {
     0x10de, 0x075b,
     "MCP77 PCIE",
 },
 {
     0x10de, 0x075c,
     "MCP77 ISA",
 },
 {
     0x10de, 0x075d,
     "MCP77 ISA",
 },
 {
     0x10de, 0x075e,
     "MCP77 ISA",
 },
 {
     0x10de, 0x0760,
     "MCP77 LAN",
 },
 {
     0x10de, 0x0761,
     "MCP77 LAN",
 },
 {
     0x10de, 0x0762,
     "MCP77 LAN",
 },
 {
     0x10de, 0x0763,
     "MCP77 LAN",
 },
 {
     0x10de, 0x0774,
     "MCP77 HD Audio",
 },
 {
     0x10de, 0x0775,
     "MCP77 HD Audio",
 },
 {
     0x10de, 0x0776,
     "MCP77 HD Audio",
 },
 {
     0x10de, 0x0777,
     "MCP77 HD Audio",
 },
 {
     0x10de, 0x0778,
     "MCP77 PCIE",
 },
 {
     0x10de, 0x0779,
     "MCP77 PCIE",
 },
 {
     0x10de, 0x077a,
     "MCP77 PCI",
 },
 {
     0x10de, 0x077b,
     "MCP77 USB",
 },
 {
     0x10de, 0x077c,
     "MCP77 USB",
 },
 {
     0x10de, 0x077d,
     "MCP77 USB",
 },
 {
     0x10de, 0x077e,
     "MCP77 USB",
 },
 {
     0x10de, 0x07c0,
     "MCP73 Host",
 },
 {
     0x10de, 0x07c1,
     "MCP73 Host",
 },
 {
     0x10de, 0x07c2,
     "MCP73 Host",
 },
 {
     0x10de, 0x07c3,
     "MCP73 Host",
 },
 {
     0x10de, 0x07c5,
     "MCP73 Host",
 },
 {
     0x10de, 0x07c8,
     "MCP73 Memory",
 },
 {
     0x10de, 0x07cb,
     "MCP73 Memory",
 },
 {
     0x10de, 0x07cd,
     "MCP73 Memory",
 },
 {
     0x10de, 0x07ce,
     "MCP73 Memory",
 },
 {
     0x10de, 0x07cf,
     "MCP73 Memory",
 },
 {
     0x10de, 0x07d0,
     "MCP73 Memory",
 },
 {
     0x10de, 0x07d1,
     "MCP73 Memory",
 },
 {
     0x10de, 0x07d2,
     "MCP73 Memory",
 },
 {
     0x10de, 0x07d3,
     "MCP73 Memory",
 },
 {
     0x10de, 0x07d6,
     "MCP73 Memory",
 },
 {
     0x10de, 0x07d7,
     "MCP73 ISA",
 },
 {
     0x10de, 0x07d8,
     "MCP73 SMBus",
 },
 {
     0x10de, 0x07d9,
     "MCP73 Memory",
 },
 {
     0x10de, 0x07dc,
     "MCP73 LAN",
 },
 {
     0x10de, 0x07dd,
     "MCP73 LAN",
 },
 {
     0x10de, 0x07de,
     "MCP73 LAN",
 },
 {
     0x10de, 0x07df,
     "MCP73 LAN",
 },
 {
     0x10de, 0x07e1,
     "GeForce 7100",
 },
 {
     0x10de, 0x07e3,
     "GeForce 7050",
 },
 {
     0x10de, 0x07f0,
     "MCP73 SATA",
 },
 {
     0x10de, 0x07f1,
     "MCP73 SATA",
 },
 {
     0x10de, 0x07f2,
     "MCP73 SATA",
 },
 {
     0x10de, 0x07f3,
     "MCP73 SATA",
 },
 {
     0x10de, 0x07f4,
     "MCP73 AHCI",
 },
 {
     0x10de, 0x07f5,
     "MCP73 AHCI",
 },
 {
     0x10de, 0x07f6,
     "MCP73 AHCI",
 },
 {
     0x10de, 0x07f7,
     "MCP73 AHCI",
 },
 {
     0x10de, 0x07f8,
     "MCP73 RAID",
 },
 {
     0x10de, 0x07f9,
     "MCP73 RAID",
 },
 {
     0x10de, 0x07fa,
     "MCP73 RAID",
 },
 {
     0x10de, 0x07fb,
     "MCP73 RAID",
 },
 {
     0x10de, 0x07fc,
     "MCP73 HD Audio",
 },
 {
     0x10de, 0x07fd,
     "MCP73 HD Audio",
 },
 {
     0x10de, 0x07fe,
     "MCP73 USB",
 },
 {
     0x10de, 0x0845,
     "GeForce 8200m G",
 },
 {
     0x10de, 0x0847,
     "GeForce 9100",
 },
 {
     0x10de, 0x0849,
     "GeForce 8200",
 },
 {
     0x10de, 0x084b,
     "GeForce 9300 GE",
 },
 {
     0x10de, 0x084c,
     "nForce 780a SLI",
 },
 {
     0x10de, 0x0861,
     "GeForce 9400",
 },
 {
     0x10de, 0x0863,
     "GeForce 9400m",
 },
 {
     0x10de, 0x086c,
     "GeForce 9300",
 },
 {
     0x10de, 0x087d,
     "ION VGA",
 },
 {
     0x10de, 0x08a0,
     "GeForce 320M",
 },
 {
     0x10de, 0x08a4,
     "GeForce 320M",
 },
 {
     0x10de, 0x0a65,
     "GeForce 210",
 },
 {
     0x10de, 0x0a80,
     "MCP79 Host",
 },
 {
     0x10de, 0x0a81,
     "MCP79 Host",
 },
 {
     0x10de, 0x0a82,
     "MCP79 Host",
 },
 {
     0x10de, 0x0a83,
     "MCP79 Host",
 },
 {
     0x10de, 0x0a84,
     "MCP79 Host",
 },
 {
     0x10de, 0x0a85,
     "MCP79 Host",
 },
 {
     0x10de, 0x0a86,
     "MCP79 Host",
 },
 {
     0x10de, 0x0a87,
     "MCP79 Host",
 },
 {
     0x10de, 0x0a88,
     "MCP79 Memory",
 },
 {
     0x10de, 0x0a89,
     "MCP79 Memory",
 },
 {
     0x10de, 0x0aa0,
     "MCP79 PCIE",
 },
 {
     0x10de, 0x0aa2,
     "MCP79 SMBus",
 },
 {
     0x10de, 0x0aa3,
     "MCP79 Co-processor",
 },
 {
     0x10de, 0x0aa4,
     "MCP79 Memory",
 },
 {
     0x10de, 0x0aa5,
     "MCP79 USB",
 },
 {
     0x10de, 0x0aa6,
     "MCP79 USB",
 },
 {
     0x10de, 0x0aa7,
     "MCP79 USB",
 },
 {
     0x10de, 0x0aa8,
     "MCP79 USB",
 },
 {
     0x10de, 0x0aa9,
     "MCP79 USB",
 },
 {
     0x10de, 0x0aaa,
     "MCP79 USB",
 },
 {
     0x10de, 0x0aab,
     "MCP79 PCIE",
 },
 {
     0x10de, 0x0aac,
     "MCP79 ISA",
 },
 {
     0x10de, 0x0aad,
     "MCP79 ISA",
 },
 {
     0x10de, 0x0aae,
     "MCP79 ISA",
 },
 {
     0x10de, 0x0aaf,
     "MCP79 ISA",
 },
 {
     0x10de, 0x0ab0,
     "MCP79 LAN",
 },
 {
     0x10de, 0x0ab1,
     "MCP79 LAN",
 },
 {
     0x10de, 0x0ab2,
     "MCP79 LAN",
 },
 {
     0x10de, 0x0ab3,
     "MCP79 LAN",
 },
 {
     0x10de, 0x0ab4,
     "MCP79 SATA",
 },
 {
     0x10de, 0x0ab5,
     "MCP79 SATA",
 },
 {
     0x10de, 0x0ab6,
     "MCP79 SATA",
 },
 {
     0x10de, 0x0ab7,
     "MCP79 SATA",
 },
 {
     0x10de, 0x0ab8,
     "MCP79 AHCI",
 },
 {
     0x10de, 0x0ab9,
     "MCP79 AHCI",
 },
 {
     0x10de, 0x0aba,
     "MCP79 AHCI",
 },
 {
     0x10de, 0x0abb,
     "MCP79 AHCI",
 },
 {
     0x10de, 0x0abc,
     "MCP79 RAID",
 },
 {
     0x10de, 0x0abd,
     "MCP79 RAID",
 },
 {
     0x10de, 0x0abe,
     "MCP79 RAID",
 },
 {
     0x10de, 0x0abf,
     "MCP79 RAID",
 },
 {
     0x10de, 0x0ac0,
     "MCP79 HD Audio",
 },
 {
     0x10de, 0x0ac1,
     "MCP79 HD Audio",
 },
 {
     0x10de, 0x0ac2,
     "MCP79 HD Audio",
 },
 {
     0x10de, 0x0ac3,
     "MCP79 HD Audio",
 },
 {
     0x10de, 0x0ac4,
     "MCP79 PCIE",
 },
 {
     0x10de, 0x0ac5,
     "MCP79 PCIE",
 },
 {
     0x10de, 0x0ac6,
     "MCP79 PCIE",
 },
 {
     0x10de, 0x0ac7,
     "MCP79 PCIE",
 },
 {
     0x10de, 0x0ac8,
     "MCP79 PCIE",
 },
 {
     0x10de, 0x0ad0,
     "MCP77 SATA",
 },
 {
     0x10de, 0x0ad1,
     "MCP77 SATA",
 },
 {
     0x10de, 0x0ad2,
     "MCP77 SATA",
 },
 {
     0x10de, 0x0ad3,
     "MCP77 SATA",
 },
 {
     0x10de, 0x0ad4,
     "MCP77 AHCI",
 },
 {
     0x10de, 0x0ad5,
     "MCP77 AHCI",
 },
 {
     0x10de, 0x0ad6,
     "MCP77 AHCI",
 },
 {
     0x10de, 0x0ad7,
     "MCP77 AHCI",
 },
 {
     0x10de, 0x0ad8,
     "MCP77 RAID",
 },
 {
     0x10de, 0x0ad9,
     "MCP77 RAID",
 },
 {
     0x10de, 0x0ada,
     "MCP77 RAID",
 },
 {
     0x10de, 0x0adb,
     "MCP77 RAID",
 },
 {
     0x10de, 0x0bea,
     "GF108 HD Audio",
 },
 {
     0x10de, 0x0bee,
     "GF116 HD Audio",
 },
 {
     0x10de, 0x0d60,
     "MCP89 Host",
 },
 {
     0x10de, 0x0d68,
     "MCP89 Memory",
 },
 {
     0x10de, 0x0d69,
     "MCP89 Memory",
 },
 {
     0x10de, 0x0d76,
     "MCP89 PCIE",
 },
 {
     0x10de, 0x0d79,
     "MCP89 SMBus",
 },
 {
     0x10de, 0x0d7a,
     "MCP89 Co-processor",
 },
 {
     0x10de, 0x0d7b,
     "MCP89 Memory",
 },
 {
     0x10de, 0x0d7d,
     "MCP89 LAN",
 },
 {
     0x10de, 0x0d80,
     "MCP89 LPC",
 },
 {
     0x10de, 0x0d84,
     "MCP89 SATA",
 },
 {
     0x10de, 0x0d85,
     "MCP89 SATA",
 },
 {
     0x10de, 0x0d86,
     "MCP89 SATA",
 },
 {
     0x10de, 0x0d87,
     "MCP89 SATA",
 },
 {
     0x10de, 0x0d88,
     "MCP89 AHCI",
 },
 {
     0x10de, 0x0d89,
     "MCP89 AHCI",
 },
 {
     0x10de, 0x0d8a,
     "MCP89 AHCI",
 },
 {
     0x10de, 0x0d8b,
     "MCP89 AHCI",
 },
 {
     0x10de, 0x0d8c,
     "MCP89 RAID",
 },
 {
     0x10de, 0x0d8d,
     "MCP89 RAID",
 },
 {
     0x10de, 0x0d8e,
     "MCP89 RAID",
 },
 {
     0x10de, 0x0d8f,
     "MCP89 RAID",
 },
 {
     0x10de, 0x0d94,
     "MCP89 HD Audio",
 },
 {
     0x10de, 0x0d95,
     "MCP89 HD Audio",
 },
 {
     0x10de, 0x0d96,
     "MCP89 HD Audio",
 },
 {
     0x10de, 0x0d97,
     "MCP89 HD Audio",
 },
 {
     0x10de, 0x0d9a,
     "MCP89 PCIE",
 },
 {
     0x10de, 0x0d9b,
     "MCP89 PCIE",
 },
 {
     0x10de, 0x0d9c,
     "MCP89 USB",
 },
 {
     0x10de, 0x0d9d,
     "MCP89 USB",
 },
 {
     0x10de, 0x0dd1,
     "GeForce GTX 460M",
 },
 {
     0x10de, 0x0df0,
     "GeForce 425M",
 },
 {
     0x10de, 0x1244,
     "GeForce GTX 550 Ti",
 },
 {
     0x10de, 0x1245,
     "GeForce GTS 450",
 },
 {
     0x10de, 0x1246,
     "GeForce GT 550M",
 },
 {
     0x10de, 0x1247,
     "GeForce GT 635M",
 },
 {
     0x10de, 0x1248,
     "GeForce GT 555M",
 },
 {
     0x10de, 0x1249,
     "GeForce GTS 450",
 },
 {
     0x10de, 0x124b,
     "GeForce GT 640",
 },
 {
     0x10de, 0x124d,
     "GeForce GT 555M",
 },
 {
     0x10de, 0x1251,
     "GeForce GTX 560M",
 },
 {
     0x10de, 0x1280,
     "GeForce GT 635",
 },
 {
     0x10de, 0x1281,
     "GeForce GT 710",
 },
 {
     0x10de, 0x1282,
     "GeForce GT 640",
 },
 {
     0x10de, 0x1284,
     "GeForce GT 630",
 },
 {
     0x10de, 0x1290,
     "GeForce GT 730M",
 },
 {
     0x10de, 0x1291,
     "GeForce GT 735M",
 },
 {
     0x10de, 0x1292,
     "GeForce GT 740M",
 },
 {
     0x10de, 0x1293,
     "GeForce GT 730M",
 },
 {
     0x10de, 0x1296,
     "GeForce 825M",
 },
 {
     0x10de, 0x1298,
     "GeForce GT 720M",
 },
 {
     0x10de, 0x134d,
     "GeForce 940MX",
 },
 {
     0x10de, 0x1380,
     "GeForce GTX 750 Ti",
 },
 {
     0x10de, 0x1381,
     "GeForce GTX 750",
 },
 {
     0x10de, 0x1382,
     "GeForce GTX 745",
 },
 {
     0x104e, 0x0107,
     "OTI107",
 },
 {
     0x108d, 0x0012,
     "OC2325",
 },
 {
     0x108d, 0x0013,
     "OC2183",
 },
 {
     0x108d, 0x0014,
     "OC2326",
 },
 {
     0x119b, 0x1221,
     "82C092G",
 },
 {
     0x0b5d, 0x0666,
     "VMM Host",
 },
 {
     0x0b5d, 0x0777,
     "VMM Control",
 },
 {
     0x1045, 0xc557,
     "82C557 Host",
 },
 {
     0x1045, 0xc558,
     "82C558 ISA",
 },
 {
     0x1045, 0xc568,
     "82C568 IDE",
 },
 {
     0x1045, 0xd568,
     "82D568 IDE",
 },
 {
     0x1045, 0xc621,
     "82C621 IDE",
 },
 {
     0x1045, 0xc700,
     "82C700",
 },
 {
     0x1045, 0xc701,
     "82C701",
 },
 {
     0x1045, 0xc822,
     "82C822",
 },
 {
     0x1045, 0xc861,
     "82C861",
 },
 {
     0x1931, 0x000c,
     "3G+ UMTS HSDPA",
 },
 {
     0x14d2, 0x8001,
     "010L",
 },
 {
     0x14d2, 0x8010,
     "100L",
 },
 {
     0x14d2, 0x8011,
     "110L",
 },
 {
     0x14d2, 0x8020,
     "200L",
 },
 {
     0x14d2, 0x8021,
     "210L",
 },
 {
     0x10d2, 0x8040,
     "400L",
 },
 {
     0x14d2, 0x8080,
     "800L",
 },
 {
     0x14d2, 0xa000,
     "x10H",
 },
 {
     0x14d2, 0xa001,
     "100H",
 },
 {
     0x14d2, 0xa005,
     "200H",
 },
 {
     0x14d2, 0xa003,
     "400H/800H",
 },
 {
     0x14d2, 0xa004,
     "800H",
 },
 {
     0x14d2, 0xe020,
     "200HV2",
 },
 {
     0x1415, 0x8403,
     "011H",
 },
 {
     0x1415, 0x9501,
     "OX16PCI954",
 },
 {
     0x1415, 0x9504,
     "OX16PCI954K",
 },
 {
     0x1415, 0x950a,
     "Exsys EX-41092",
 },
 {
     0x1415, 0x950b,
     "OXCB950",
 },
 {
     0x1415, 0x950c,
     "OXmPCI954",
 },
 {
     0x1415, 0x9510,
     "OXmPCI954 Disabled",
 },
 {
     0x1415, 0x9511,
     "Exsys EX-41098",
 },
 {
     0x1415, 0x9513,
     "OX16PCI954 Parallel",
 },
 {
     0x1415, 0x9521,
     "OX16PCI952",
 },
 {
     0x1415, 0x9523,
     "OX16PCI952 Parallel",
 },
 {
     0x1415, 0xc110,
     "OXPCIE952 Parallel",
 },
 {
     0x1415, 0xc120,
     "OXPCIE952 Serial",
 },
 {
     0x15e9, 0x2068,
     "QStor SATA",
 },
 {
     0x1318, 0x0911,
     "PMC/GNIC2",
 },
 {
     0xaaaa, 0x1112,
     "Tools",
 },
 {
     0xaaaa, 0x1121,
     "Video",
 },
 {
     0x1ab8, 0x4000,
     "VMCI",
 },
 {
     0x1ab8, 0x4005,
     "Video",
 },
 {
     0x1042, 0x1000,
     "RZ1000",
 },
 {
     0x134d, 0x7879,
     "HSP MicroModem 56",
 },
 {
     0x134d, 0x7892,
     "HSP MicroModem 56",
 },
 {
     0x155f, 0xb008,
     "Speed8 LE",
 },
 {
     0x1af4, 0x1000,
     "Virtio Network",
 },
 {
     0x1af4, 0x1001,
     "Virtio Storage",
 },
 {
     0x1af4, 0x1002,
     "Virtio Memory",
 },
 {
     0x1af4, 0x1003,
     "Virtio Console",
 },
 {
     0x1af4, 0x1004,
     "Virtio SCSI",
 },
 {
     0x1af4, 0x1005,
     "Virtio RNG",
 },
 {
     0x1af4, 0x1050,
     "Virtio GPU",
 },
 {
     0x1af4, 0x1052,
     "Virtio Input",
 },
 {
     0x1166, 0x0000,
     "CMIC-LE",
 },
 {
     0x1166, 0x0005,
     "CNB20-LE Host",
 },
 {
     0x1166, 0x0006,
     "CNB20HE Host",
 },
 {
     0x1166, 0x0007,
     "CNB20-LE Host",
 },
 {
     0x1166, 0x0008,
     "CNB20HE Host",
 },
 {
     0x1166, 0x0009,
     "CNB20LE Host",
 },
 {
     0x1166, 0x0010,
     "CIOB30",
 },
 {
     0x1166, 0x0011,
     "CMIC-HE",
 },
 {
     0x1166, 0x0012,
     "CMIC-WS Host",
 },
 {
     0x1166, 0x0013,
     "CNB20-HE Host",
 },
 {
     0x1166, 0x0014,
     "CNB20-HE Host",
 },
 {
     0x1166, 0x0015,
     "CMIC-GC Host",
 },
 {
     0x1166, 0x0016,
     "CMIC-GC Host",
 },
 {
     0x1166, 0x0017,
     "GCNB-LE Host",
 },
 {
     0x1166, 0x0036,
     "HT-1000 PCI",
 },
 {
     0x1166, 0x0101,
     "CIOB-X2 PCIX",
 },
 {
     0x1166, 0x0103,
     "PCIE-PCIX",
 },
 {
     0x1166, 0x0104,
     "HT-1000 PCIX",
 },
 {
     0x1166, 0x0110,
     "CIOB-E",
 },
 {
     0x1166, 0x0130,
     "HT-2000 PCIX",
 },
 {
     0x1166, 0x0132,
     "HT-2000 PCIE",
 },
 {
     0x1166, 0x0140,
     "HT-2100 PCIE",
 },
 {
     0x1166, 0x0141,
     "HT-2100 PCIE",
 },
 {
     0x1166, 0x0142,
     "HT-2100 PCIE",
 },
 {
     0x1166, 0x0144,
     "HT-2100 PCIE",
 },
 {
     0x1166, 0x0200,
     "OSB4",
 },
 {
     0x1166, 0x0201,
     "CSB5",
 },
 {
     0x1166, 0x0203,
     "CSB6",
 },
 {
     0x1166, 0x0205,
     "HT-1000",
 },
 {
     0x1166, 0x0210,
     "IDE",
 },
 {
     0x1166, 0x0211,
     "OSB4 IDE",
 },
 {
     0x1166, 0x0212,
     "CSB5 IDE",
 },
 {
     0x1166, 0x0213,
     "CSB6 RAID/IDE",
 },
 {
     0x1166, 0x0214,
     "HT-1000 IDE",
 },
 {
     0x1166, 0x0217,
     "CSB6 IDE",
 },
 {
     0x1166, 0x0220,
     "OSB4/CSB5 USB",
 },
 {
     0x1166, 0x0221,
     "CSB6 USB",
 },
 {
     0x1166, 0x0223,
     "HT-1000 USB",
 },
 {
     0x1166, 0x0225,
     "CSB5 LPC",
 },
 {
     0x1166, 0x0227,
     "GCLE-2 Host",
 },
 {
     0x1166, 0x0230,
     "CSB5 LPC",
 },
 {
     0x1166, 0x0234,
     "HT-1000 LPC",
 },
 {
     0x1166, 0x0240,
     "K2 SATA",
 },
 {
     0x1166, 0x0241,
     "Frodo4 SATA",
 },
 {
     0x1166, 0x0242,
     "Frodo8 SATA",
 },
 {
     0x1166, 0x024a,
     "HT-1000 SATA",
 },
 {
     0x1166, 0x024b,
     "HT-1000 SATA",
 },
 {
     0x1166, 0x0408,
     "HT-1100",
 },
 {
     0x1166, 0x0410,
     "HT-1100 SATA",
 },
 {
     0x1166, 0x0411,
     "HT-1100 SATA",
 },
 {
     0x1163, 0x0001,
     "Verite 1000",
 },
 {
     0x1163, 0x2000,
     "Verite V2x00",
 },
 {
     0x1912, 0x0012,
     "SH7757 PCIE-PCI",
 },
 {
     0x1912, 0x0013,
     "SH7757 PCIE Switch",
 },
 {
     0x1912, 0x001a,
     "SH7758 PCIE-PCI",
 },
 {
     0x1912, 0x001d,
     "SH7758 PCIE Switch",
 },
 {
     0x1912, 0x0014,
     "uPD720201 xHCI",
 },
 {
     0x1912, 0x0015,
     "uPD720202 xHCI",
 },
 {
     0x0b0b, 0x0105,
     "T1/E1/J1",
 },
 {
     0x0b0b, 0x0605,
     "Dual T1/E1/J1",
 },
 {
     0x0b0b, 0x0305,
     "Quad T1/E1/J1",
 },
 {
     0x1131, 0x1561,
     "ISP156x USB",
 },
 {
     0x1131, 0x1562,
     "ISP156x USB",
 },
 {
     0x1131, 0x7130,
     "SAA7130 TV",
 },
 {
     0x1131, 0x7133,
     "SAA7133 TV",
 },
 {
     0x1131, 0x7134,
     "SAA7134 TV",
 },
 {
     0x1131, 0x7135,
     "SAA7135 TV",
 },
 {
     0x1131, 0x7231,
     "SAA7231 TV",
 },
 {
     0x1987, 0x5000,
     "PS5000",
 },
 {
     0x1066, 0x0000,
     "PT80C826",
 },
 {
     0x1066, 0x0001,
     "PT86C521",
 },
 {
     0x1066, 0x0002,
     "PT86C523",
 },
 {
     0x1066, 0x0005,
     "PC87550",
 },
 {
     0x1066, 0x8002,
     "PT86C523_2",
 },
 {
     0x11e3, 0x0001,
     "PCC-ISES",
 },
 {
     0x11e3, 0x5030,
     "PCI PC WD",
 },
 {
     0x1285, 0x0100,
     "ES1849",
 },
 {
     0x10b5, 0x1076,
     "I/O 1076",
 },
 {
     0x10b5, 0x1077,
     "I/O 1077",
 },
 {
     0x10b5, 0x6520,
     "PCI 6520",
 },
 {
     0x10b5, 0x8111,
     "PEX 8111",
 },
 {
     0x10b5, 0x8112,
     "PEX 8112",
 },
 {
     0x10b5, 0x8114,
     "PEX 8114",
 },
 {
     0x10b5, 0x8517,
     "PEX 8517",
 },
 {
     0x10b5, 0x8518,
     "PEX 8518",
 },
 {
     0x10b5, 0x8524,
     "PEX 8524",
 },
 {
     0x10b5, 0x8525,
     "PEX 8525",
 },
 {
     0x10b5, 0x8532,
     "PEX 8532",
 },
 {
     0x10b5, 0x8533,
     "PEX 8533",
 },
 {
     0x10b5, 0x8547,
     "PEX 8547",
 },
 {
     0x10b5, 0x8548,
     "PEX 8548",
 },
 {
     0x10b5, 0x8603,
     "PEX 8603",
 },
 {
     0x10b5, 0x8605,
     "PEX 8605",
 },
 {
     0x10b5, 0x8608,
     "PEX 8608",
 },
 {
     0x10b5, 0x8717,
     "PEX 8617",
 },
 {
     0x10b5, 0x8612,
     "PEX 8612",
 },
 {
     0x10b5, 0x8613,
     "PEX 8613",
 },
 {
     0x10b5, 0x8614,
     "PEX 8614",
 },
 {
     0x10b5, 0x8616,
     "PEX 8616",
 },
 {
     0x10b5, 0x8624,
     "PEX 8624",
 },
 {
     0x10b5, 0x8632,
     "PEX 8632",
 },
 {
     0x10b5, 0x8648,
     "PEX 8648",
 },
 {
     0x10b5, 0x8724,
     "PEX 8724",
 },
 {
     0x10b5, 0x8733,
     "PEX 8733",
 },
 {
     0x10b5, 0x8734,
     "PEX 8734",
 },
 {
     0x10b5, 0x8780,
     "PEX 8780",
 },
 {
     0x10b5, 0x9016,
     "I/O 9016",
 },
 {
     0x10b5, 0x9050,
     "I/O 9050",
 },
 {
     0x10b5, 0x9080,
     "I/O 9080",
 },
 {
     0x10b5, 0xc001,
     "Cronyx Omega",
 },
 {
     0x105a, 0x0d30,
     "PDC20265",
 },
 {
     0x105a, 0x0d38,
     "PDC20263",
 },
 {
     0x105a, 0x1275,
     "PDC20275",
 },
 {
     0x105a, 0x3318,
     "PDC20318",
 },
 {
     0x105a, 0x3319,
     "PDC20319",
 },
 {
     0x105a, 0x3371,
     "PDC20371",
 },
 {
     0x105a, 0x3372,
     "PDC20379",
 },
 {
     0x105a, 0x3373,
     "PDC20378",
 },
 {
     0x105a, 0x3375,
     "PDC20375",
 },
 {
     0x105a, 0x3376,
     "PDC20376",
 },
 {
     0x105a, 0x3377,
     "PDC20377",
 },
 {
     0x105a, 0x3515,
     "PDC40719",
 },
 {
     0x105a, 0x3519,
     "PDC40519",
 },
 {
     0x105a, 0x3570,
     "PDC20771",
 },
 {
     0x105a, 0x3571,
     "PDC20571",
 },
 {
     0x105a, 0x3574,
     "PDC20579",
 },
 {
     0x105a, 0x3577,
     "PDC40779",
 },
 {
     0x105a, 0x3d17,
     "PDC40718",
 },
 {
     0x105a, 0x3d18,
     "PDC40518",
 },
 {
     0x105a, 0x3d73,
     "PDC20775",
 },
 {
     0x105a, 0x3d75,
     "PDC20575",
 },
 {
     0x105a, 0x3f20,
     "PDC42819",
 },
 {
     0x105a, 0x4d30,
     "PDC20267",
 },
 {
     0x105a, 0x4d33,
     "PDC20246",
 },
 {
     0x105a, 0x4d38,
     "PDC20262",
 },
 {
     0x105a, 0x4d68,
     "PDC20268",
 },
 {
     0x105a, 0x4d69,
     "PDC20269",
 },
 {
     0x105a, 0x5275,
     "PDC20276",
 },
 {
     0x105a, 0x5300,
     "DC5030",
 },
 {
     0x105a, 0x6268,
     "PDC20268R",
 },
 {
     0x105a, 0x6269,
     "PDC20271",
 },
 {
     0x105a, 0x6617,
     "PDC20617",
 },
 {
     0x105a, 0x6620,
     "PDC20620",
 },
 {
     0x105a, 0x6621,
     "PDC20621",
 },
 {
     0x105a, 0x6626,
     "PDC20618",
 },
 {
     0x105a, 0x6629,
     "PDC20619",
 },
 {
     0x105a, 0x7275,
     "PDC20277",
 },
 {
     0x1077, 0x1016,
     "ISP10160",
 },
 {
     0x1077, 0x1020,
     "ISP1020",
 },
 {
     0x1077, 0x1022,
     "ISP1022",
 },
 {
     0x1077, 0x1080,
     "ISP1080",
 },
 {
     0x1077, 0x1216,
     "ISP12160",
 },
 {
     0x1077, 0x1240,
     "ISP1240",
 },
 {
     0x1077, 0x1280,
     "ISP1280",
 },
 {
     0x1077, 0x2100,
     "ISP2100",
 },
 {
     0x1077, 0x2200,
     "ISP2200",
 },
 {
     0x1077, 0x2300,
     "ISP2300",
 },
 {
     0x1077, 0x2312,
     "ISP2312",
 },
 {
     0x1077, 0x2322,
     "ISP2322",
 },
 {
     0x1077, 0x2422,
     "ISP2422",
 },
 {
     0x1077, 0x2432,
     "ISP2432",
 },
 {
     0x1077, 0x2512,
     "ISP2512",
 },
 {
     0x1077, 0x2522,
     "ISP2522",
 },
 {
     0x1077, 0x2532,
     "ISP2532",
 },
 {
     0x1077, 0x3010,
     "ISP4010 iSCSI TOE",
 },
 {
     0x1077, 0x3022,
     "ISP4022 iSCSI TOE",
 },
 {
     0x1077, 0x3032,
     "ISP4032 iSCSI TOE",
 },
 {
     0x1077, 0x4010,
     "ISP4010 iSCSI HBA",
 },
 {
     0x1077, 0x4022,
     "ISP4022 iSCSI HBA",
 },
 {
     0x1077, 0x4032,
     "ISP4032 iSCSI HBA",
 },
 {
     0x1077, 0x5422,
     "ISP5422",
 },
 {
     0x1077, 0x5432,
     "ISP5432",
 },
 {
     0x1077, 0x6312,
     "ISP6312",
 },
 {
     0x1077, 0x6322,
     "ISP6322",
 },
 {
     0x1077, 0x8432,
     "ISP8432",
 },
 {
     0x8008, 0x0010,
     "PWDOG1",
 },
 {
     0x1098, 0x0001,
     "8500",
 },
 {
     0x1098, 0x0002,
     "8580",
 },
 {
     0x1814, 0x0101,
     "RT2460A",
 },
 {
     0x1814, 0x0201,
     "RT2560",
 },
 {
     0x1814, 0x0301,
     "RT2561S",
 },
 {
     0x1814, 0x0302,
     "RT2561",
 },
 {
     0x1814, 0x0401,
     "RT2661",
 },
 {
     0x1814, 0x0601,
     "RT2860",
 },
 {
     0x1814, 0x0681,
     "RT2890",
 },
 {
     0x1814, 0x0701,
     "RT2760",
 },
 {
     0x1814, 0x0781,
     "RT2790",
 },
 {
     0x1814, 0x3060,
     "RT3060",
 },
 {
     0x1814, 0x3062,
     "RT3062",
 },
 {
     0x1814, 0x3090,
     "RT3090",
 },
 {
     0x1814, 0x3091,
     "RT3091",
 },
 {
     0x1814, 0x3092,
     "RT3092",
 },
 {
     0x1814, 0x3290,
     "RT3290",
 },
 {
     0x1814, 0x3298,
     "Bluetooth",
 },
 {
     0x1814, 0x3562,
     "RT3562",
 },
 {
     0x1814, 0x3592,
     "RT3592",
 },
 {
     0x1814, 0x3593,
     "RT3593",
 },
 {
     0x1814, 0x5360,
     "RT5360",
 },
 {
     0x1814, 0x5390,
     "RT5390",
 },
 {
     0x1814, 0x5392,
     "RT5392",
 },
 {
     0x1814, 0x539a,
     "RT5390",
 },
 {
     0x1814, 0x539b,
     "RT5390",
 },
 {
     0x1814, 0x539f,
     "RT5390",
 },
 {
     0x17f3, 0x1010,
     "R1010 IDE",
 },
 {
     0x17f3, 0x1011,
     "R1011 IDE",
 },
 {
     0x17f3, 0x1012,
     "R1012 IDE",
 },
 {
     0x17f3, 0x1031,
     "R1031 PCIe",
 },
 {
     0x17f3, 0x1060,
     "R1060 USB Device",
 },
 {
     0x17f3, 0x1070,
     "R1070 CAN",
 },
 {
     0x17f3, 0x1331,
     "R1331 MC",
 },
 {
     0x17f3, 0x1710,
     "R1710 SPI",
 },
 {
     0x17f3, 0x3010,
     "R3010 HDA",
 },
 {
     0x17f3, 0x6011,
     "R6011 SB",
 },
 {
     0x17f3, 0x6021,
     "R6021 Host",
 },
 {
     0x17f3, 0x6025,
     "R6025 Host",
 },
 {
     0x17f3, 0x6031,
     "R6031 ISA",
 },
 {
     0x17f3, 0x6040,
     "R6040 Ethernet",
 },
 {
     0x17f3, 0x6060,
     "R6060 USB",
 },
 {
     0x17f3, 0x6061,
     "R6061 USB2",
 },
 {
     0x10ec, 0x5208,
     "RTS5208 Card Reader",
 },
 {
     0x10ec, 0x5209,
     "RTS5209 Card Reader",
 },
 {
     0x10ec, 0x5227,
     "RTS5227 Card Reader",
 },
 {
     0x10ec, 0x5229,
     "RTS5229 Card Reader",
 },
 {
     0x10ec, 0x522a,
     "RTS522A Card Reader",
 },
 {
     0x10ec, 0x5249,
     "RTS5249 Card Reader",
 },
 {
     0x10ec, 0x525A,
     "RTS525A Card Reader",
 },
 {
     0x10ec, 0x5286,
     "RTL8402 Card Reader",
 },
 {
     0x10ec, 0x5287,
     "RTL8411B Card Reader",
 },
 {
     0x10ec, 0x5289,
     "RTL8411 Card Reader",
 },
 {
     0x10ec, 0x8029,
     "8029",
 },
 {
     0x10ec, 0x8039,
     "8139D",
 },
 {
     0x10ec, 0x8129,
     "8129",
 },
 {
     0x10ec, 0x8136,
     "8101E",
 },
 {
     0x10ec, 0x8138,
     "8138",
 },
 {
     0x10ec, 0x8139,
     "8139",
 },
 {
     0x10ec, 0x8167,
     "8169SC",
 },
 {
     0x10ec, 0x8168,
     "8168",
 },
 {
     0x10ec, 0x8169,
     "8169",
 },
 {
     0x10ec, 0x8172,
     "8192SE",
 },
 {
     0x10ec, 0x8180,
     "8180",
 },
 {
     0x10ec, 0x8185,
     "8185",
 },
 {
     0x10ec, 0x8176,
     "8188CE",
 },
 {
     0x10ec, 0x8178,
     "RTL8192CE",
 },
 {
     0x10ec, 0x8179,
     "8188EE",
 },
 {
     0x10ec, 0x818b,
     "RTL8192EE",
 },
 {
     0x10ec, 0x8190,
     "RTL8190P",
 },
 {
     0x10ec, 0x8192,
     "RTL8192E",
 },
 {
     0x10ec, 0x8199,
     "8187SE",
 },
 {
     0x10ec, 0x8821,
     "8821AE",
 },
 {
     0x10ec, 0xb723,
     "8191SE",
 },
 {
     0x1b36, 0x0001,
     "Qemu PCI-PCI",
 },
 {
     0x1b36, 0x0002,
     "Qemu Serial",
 },
 {
     0x1b36, 0x0003,
     "Qemu Serial 2x",
 },
 {
     0x1b36, 0x0004,
     "Qemu Serial 4x",
 },
 {
     0x1b36, 0x0007,
     "SD/MMC",
 },
 {
     0x1b36, 0x0008,
     "Host",
 },
 {
     0x1b36, 0x0100,
     "QXL Video",
 },
 {
     0x1180, 0x0465,
     "5C465 CardBus",
 },
 {
     0x1180, 0x0466,
     "5C466 CardBus",
 },
 {
     0x1180, 0x0475,
     "5C475 CardBus",
 },
 {
     0x1180, 0x0476,
     "5C476 CardBus",
 },
 {
     0x1180, 0x0477,
     "5C477 CardBus",
 },
 {
     0x1180, 0x0478,
     "5C478 CardBus",
 },
 {
     0x1180, 0x0521,
     "5C521 Firewire",
 },
 {
     0x1180, 0x0551,
     "5C551 Firewire",
 },
 {
     0x1180, 0x0552,
     "5C552 Firewire",
 },
 {
     0x1180, 0x0592,
     "5C592 Memory Stick",
 },
 {
     0x1180, 0x0822,
     "5C822 SD/MMC",
 },
 {
     0x1180, 0x0832,
     "5C832 Firewire",
 },
 {
     0x1180, 0x0843,
     "5C843 MMC",
 },
 {
     0x1180, 0x0852,
     "5C852 xD",
 },
 {
     0x1180, 0xe230,
     "5U230 Memory Stick",
 },
 {
     0x1180, 0xe822,
     "5U822 SD/MMC",
 },
 {
     0x1180, 0xe823,
     "5U823 SD/MMC",
 },
 {
     0x1180, 0xe832,
     "5U832 Firewire",
 },
 {
     0x1180, 0xe852,
     "5U852 SD/MMC",
 },
 {
     0x1d87, 0x0100,
     "RK3399 Root Complex",
 },
 {
     0x127a, 0x2005,
     "RS56/SP-PCI11P1 Modem",
 },
 {
     0x5333, 0x5631,
     "ViRGE",
 },
 {
     0x5333, 0x8810,
     "Trio32",
 },
 {
     0x5333, 0x8811,
     "Trio32/64",
 },
 {
     0x5333, 0x8812,
     "Aurora64V+",
 },
 {
     0x5333, 0x8814,
     "Trio64UV+",
 },
 {
     0x5333, 0x8880,
     "868",
 },
 {
     0x5333, 0x883d,
     "ViRGE VX",
 },
 {
     0x5333, 0x88b0,
     "86C928",
 },
 {
     0x5333, 0x88c0,
     "86C864-0",
 },
 {
     0x5333, 0x88c1,
     "86C864-1",
 },
 {
     0x5333, 0x88c2,
     "86C864-2",
 },
 {
     0x5333, 0x88c3,
     "86C864-3",
 },
 {
     0x5333, 0x88d0,
     "86C964-0",
 },
 {
     0x5333, 0x88d1,
     "86C964-1",
 },
 {
     0x5333, 0x88d2,
     "86C964-2",
 },
 {
     0x5333, 0x88d3,
     "86C964-3",
 },
 {
     0x5333, 0x88f0,
     "86C968-0",
 },
 {
     0x5333, 0x88f1,
     "86C968-1",
 },
 {
     0x5333, 0x88f2,
     "86C968-2",
 },
 {
     0x5333, 0x88f3,
     "86C968-3",
 },
 {
     0x5333, 0x8901,
     "Trio64V2/DX",
 },
 {
     0x5333, 0x8902,
     "Plato",
 },
 {
     0x5333, 0x8904,
     "Trio3D AGP",
 },
 {
     0x5333, 0x8a01,
     "ViRGE DX/GX",
 },
 {
     0x5333, 0x8a10,
     "ViRGE GX2",
 },
 {
     0x5333, 0x8a13,
     "Trio3 DX2",
 },
 {
     0x5333, 0x8a20,
     "Savage 3D",
 },
 {
     0x5333, 0x8a21,
     "Savage 3DM",
 },
 {
     0x5333, 0x8a22,
     "Savage 4",
 },
 {
     0x5333, 0x8a23,
     "Savage 4",
 },
 {
     0x5333, 0x8a25,
     "ProSavage PM133",
 },
 {
     0x5333, 0x8a26,
     "ProSavage KM133",
 },
 {
     0x5333, 0x8c01,
     "ViRGE MX",
 },
 {
     0x5333, 0x8c03,
     "ViRGE MXP",
 },
 {
     0x5333, 0x8c10,
     "Savage/MX-MV",
 },
 {
     0x5333, 0x8c11,
     "Savage/MX",
 },
 {
     0x5333, 0x8c12,
     "Savage/IX-MV",
 },
 {
     0x5333, 0x8c13,
     "Savage/IX",
 },
 {
     0x5333, 0x8c22,
     "SuperSavage MX/128",
 },
 {
     0x5333, 0x8c24,
     "SuperSavage MX/64",
 },
 {
     0x5333, 0x8c26,
     "SuperSavage MX/64C",
 },
 {
     0x5333, 0x8c2a,
     "SuperSavage IX/128 SDR",
 },
 {
     0x5333, 0x8c2b,
     "SuperSavage IX/128 DDR",
 },
 {
     0x5333, 0x8c2c,
     "SuperSavage IX/64 SDR",
 },
 {
     0x5333, 0x8c2d,
     "SuperSavage IX/64 DDR",
 },
 {
     0x5333, 0x8c2e,
     "SuperSavage IX/C SDR",
 },
 {
     0x5333, 0x8c2f,
     "SuperSavage IX/C DDR",
 },
 {
     0x5333, 0x8d01,
     "Twister",
 },
 {
     0x5333, 0x8d02,
     "Twister-K",
 },
 {
     0x5333, 0x8d03,
     "ProSavage DDR",
 },
 {
     0x5333, 0x8d04,
     "ProSavage DDR-K",
 },
 {
     0x5333, 0xca00,
     "SonicVibes",
 },
 {
     0x16ae, 0x1141,
     "SafeXcel",
 },
 {
     0x167d, 0xa000,
     "MagicLAN SWL-2210P",
 },
 {
     0x144d, 0x1600,
     "S4LN053X01",
 },
 {
     0x144d, 0xa800,
     "XP941",
 },
 {
     0x144d, 0xa801,
     "SM951 AHCI",
 },
 {
     0x144d, 0xa802,
     "SM951/PM951 NVMe",
 },
 {
     0x144d, 0xa804,
     "SM961/PM961 NVMe",
 },
 {
     0x1923, 0x0300,
     "A10x",
 },
 {
     0x114f, 0x00b0,
     "Neo-4",
 },
 {
     0x114f, 0x00b1,
     "Neo-8",
 },
 {
     0x114f, 0x00f0,
     "Neo-8",
 },
 {
     0x1148, 0x4000,
     "FDDI",
 },
 {
     0x1148, 0x4300,
     "SK-98xx",
 },
 {
     0x1148, 0x4320,
     "SK-98xx v2.0",
 },
 {
     0x1148, 0x4400,
     "SK-9D21",
 },
 {
     0x1148, 0x9000,
     "SK-9Sxx",
 },
 {
     0x1148, 0x9821,
     "SK-9821",
 },
 {
     0x1148, 0x9843,
     "SK-9843",
 },
 {
     0x1148, 0x9e00,
     "SK-9Exx",
 },
 {
     0x1148, 0x9e01,
     "SK-9E21M",
 },
 {
     0x19a2, 0x0211,
     "BladeEngine2 10GbE",
 },
 {
     0x19a2, 0x0221,
     "BladeEngine3 10GbE",
 },
 {
     0x19a2, 0x0700,
     "BladeEngine2 10GbE",
 },
 {
     0x19a2, 0x0710,
     "BladeEngine3 10GbE",
 },
 {
     0x19a2, 0x0800,
     "iRMC",
 },
 {
     0x10a9, 0x0003,
     "IOC3",
 },
 {
     0x10a9, 0x0005,
     "Rad1",
 },
 {
     0x10a9, 0x0009,
     "Tigon",
 },
 {
     0x10a9, 0x100a,
     "IOC4",
 },
 {
     0x10a9, 0x100c,
     "ImageSync 1",
 },
 {
     0x104a, 0x0008,
     "STG 2000X",
 },
 {
     0x104a, 0x0009,
     "STG 1764",
 },
 {
     0x104a, 0x0010,
     "Kyro-II",
 },
 {
     0x104a, 0x1746,
     "STG 1764X",
 },
 {
     0x1105, 0x6401,
     "64GX",
 },
 {
     0x1105, 0x8300,
     "DVDmagic-PRO",
 },
 {
     0x1904, 0x2301,
     "SC92301",
 },
 {
     0x1904, 0x8139,
     "8139D",
 },
 {
     0x1039, 0x0001,
     "86C201 AGP",
 },
 {
     0x1039, 0x0002,
     "86C202 AGP",
 },
 {
     0x1039, 0x0003,
     "648FX AGP",
 },
 {
     0x1039, 0x0004,
     "PCI-PCI",
 },
 {
     0x1039, 0x0005,
     "86C205",
 },
 {
     0x1039, 0x0008,
     "85C503 System",
 },
 {
     0x1039, 0x0009,
     "5595 System",
 },
 {
     0x1039, 0x000a,
     "PCI-PCI",
 },
 {
     0x1039, 0x0018,
     "85C503 ISA",
 },
 {
     0x1039, 0x0180,
     "180 SATA",
 },
 {
     0x1039, 0x0181,
     "181 SATA",
 },
 {
     0x1039, 0x0182,
     "182 SATA",
 },
 {
     0x1039, 0x0183,
     "183 SATA",
 },
 {
     0x1039, 0x0190,
     "190",
 },
 {
     0x1039, 0x0191,
     "191",
 },
 {
     0x1039, 0x0200,
     "5597/5598 VGA",
 },
 {
     0x1039, 0x0204,
     "6215",
 },
 {
     0x1039, 0x0205,
     "86C205",
 },
 {
     0x1039, 0x0300,
     "300/305/630 VGA",
 },
 {
     0x1039, 0x0325,
     "315 Pro VGA",
 },
 {
     0x1039, 0x0406,
     "85C501",
 },
 {
     0x1039, 0x0496,
     "85C496",
 },
 {
     0x1039, 0x0596,
     "85C596",
 },
 {
     0x1039, 0x0530,
     "530 PCI",
 },
 {
     0x1039, 0x0540,
     "540 PCI",
 },
 {
     0x1039, 0x0550,
     "550 PCI",
 },
 {
     0x1039, 0x0601,
     "85C601 EIDE",
 },
 {
     0x1039, 0x0620,
     "620 PCI",
 },
 {
     0x1039, 0x0630,
     "630 PCI",
 },
 {
     0x1039, 0x0633,
     "633 PCI",
 },
 {
     0x1039, 0x0635,
     "635 PCI",
 },
 {
     0x1039, 0x0640,
     "640 PCI",
 },
 {
     0x1039, 0x0645,
     "645 PCI",
 },
 {
     0x1039, 0x0646,
     "646 PCI",
 },
 {
     0x1039, 0x0648,
     "648 PCI",
 },
 {
     0x1039, 0x0649,
     "649 PCI",
 },
 {
     0x1039, 0x0650,
     "650 PCI",
 },
 {
     0x1039, 0x0651,
     "651 PCI",
 },
 {
     0x1039, 0x0652,
     "652 PCI",
 },
 {
     0x1039, 0x0655,
     "655 PCI",
 },
 {
     0x1039, 0x0656,
     "656 PCI",
 },
 {
     0x1039, 0x0658,
     "658 PCI",
 },
 {
     0x1039, 0x0661,
     "661 PCI",
 },
 {
     0x1039, 0x0662,
     "662 PCI",
 },
 {
     0x1039, 0x0671,
     "671 PCI",
 },
 {
     0x1039, 0x0730,
     "730 PCI",
 },
 {
     0x1039, 0x0733,
     "733 PCI",
 },
 {
     0x1039, 0x0735,
     "735 PCI",
 },
 {
     0x1039, 0x0740,
     "740 PCI",
 },
 {
     0x1039, 0x0741,
     "741 PCI",
 },
 {
     0x1039, 0x0745,
     "745 PCI",
 },
 {
     0x1039, 0x0746,
     "746 PCI",
 },
 {
     0x1039, 0x0748,
     "748 PCI",
 },
 {
     0x1039, 0x0750,
     "750 PCI",
 },
 {
     0x1039, 0x0751,
     "751 PCI",
 },
 {
     0x1039, 0x0752,
     "752 PCI",
 },
 {
     0x1039, 0x0755,
     "755 PCI",
 },
 {
     0x1039, 0x0756,
     "756 PCI",
 },
 {
     0x1039, 0x0760,
     "760 PCI",
 },
 {
     0x1039, 0x0761,
     "761 PCI",
 },
 {
     0x1039, 0x0900,
     "900 10/100BaseTX",
 },
 {
     0x1039, 0x0961,
     "961 ISA",
 },
 {
     0x1039, 0x0962,
     "962 ISA",
 },
 {
     0x1039, 0x0963,
     "963 ISA",
 },
 {
     0x1039, 0x0964,
     "964 ISA",
 },
 {
     0x1039, 0x0965,
     "965 ISA",
 },
 {
     0x1039, 0x0966,
     "966 ISA",
 },
 {
     0x1039, 0x0968,
     "968 ISA",
 },
 {
     0x1039, 0x1182,
     "1182 SATA",
 },
 {
     0x1039, 0x1183,
     "1183 SATA",
 },
 {
     0x1039, 0x1184,
     "1184 RAID",
 },
 {
     0x1039, 0x1185,
     "1185 AHCI",
 },
 {
     0x1039, 0x5300,
     "540 VGA",
 },
 {
     0x1039, 0x5315,
     "530 VGA",
 },
 {
     0x1039, 0x5511,
     "5511",
 },
 {
     0x1039, 0x5512,
     "5512",
 },
 {
     0x1039, 0x5513,
     "5513 EIDE",
 },
 {
     0x1039, 0x5518,
     "5518 EIDE",
 },
 {
     0x1039, 0x5571,
     "5571 PCI",
 },
 {
     0x1039, 0x5581,
     "5581",
 },
 {
     0x1039, 0x5582,
     "5582",
 },
 {
     0x1039, 0x5591,
     "5591 PCI",
 },
 {
     0x1039, 0x5596,
     "5596",
 },
 {
     0x1039, 0x5597,
     "5597/5598 Host",
 },
 {
     0x1039, 0x6204,
     "6204",
 },
 {
     0x1039, 0x6205,
     "6205",
 },
 {
     0x1039, 0x6300,
     "6300",
 },
 {
     0x1039, 0x6306,
     "530 VGA",
 },
 {
     0x1039, 0x6325,
     "650 VGA",
 },
 {
     0x1039, 0x6326,
     "6326 VGA",
 },
 {
     0x1039, 0x6330,
     "6330 VGA",
 },
 {
     0x1039, 0x7001,
     "5597/5598 USB",
 },
 {
     0x1039, 0x7002,
     "7002 USB",
 },
 {
     0x1039, 0x7007,
     "7007 FireWire",
 },
 {
     0x1039, 0x7012,
     "7012 AC97",
 },
 {
     0x1039, 0x7013,
     "7013 Modem",
 },
 {
     0x1039, 0x7016,
     "7016 10/100BaseTX",
 },
 {
     0x1039, 0x7018,
     "7018 Audio",
 },
 {
     0x1039, 0x7019,
     "7019 Audio",
 },
 {
     0x1039, 0x7300,
     "7300 VGA",
 },
 {
     0x1039, 0x7502,
     "966 HD Audio",
 },
 {
     0x10b8, 0x0005,
     "83C170",
 },
 {
     0x10b8, 0x0006,
     "83C175",
 },
 {
     0x10b8, 0x1000,
     "FDC 37C665",
 },
 {
     0x10b8, 0x1001,
     "FDC 37C922",
 },
 {
     0x126f, 0x0501,
     "Voyager GX",
 },
 {
     0x126f, 0x0710,
     "LynxEM",
 },
 {
     0x126f, 0x0712,
     "LynxEM+",
 },
 {
     0x126f, 0x0720,
     "Lynx3DM",
 },
 {
     0x126f, 0x0810,
     "LynxE",
 },
 {
     0x126f, 0x0811,
     "LynxE+",
 },
 {
     0x126f, 0x0820,
     "Lynx3D",
 },
 {
     0x126f, 0x0910,
     "910",
 },
 {
     0x126f, 0x2260,
     "SM2260 NVMe",
 },
 {
     0x1055, 0x9130,
     "Victory66 IDE",
 },
 {
     0x1055, 0x9460,
     "Victory66 ISA",
 },
 {
     0x1055, 0x9461,
     "Victory66 IDE",
 },
 {
     0x1055, 0x9462,
     "Victory66 USB",
 },
 {
     0x1055, 0x9463,
     "Victory66 Power",
 },
 {
     0x1029, 0x0002,
     "Pirahna 2-port",
 },
 {
     0x1029, 0x0005,
     "Tulip, power, switch extender",
 },
 {
     0x1029, 0x4942,
     "FPGA I-Bus Tracer for MBD",
 },
 {
     0x1029, 0x6120,
     "SZB6120",
 },
 {
     0x104d, 0x8009,
     "CXD1947A FireWire",
 },
 {
     0x104d, 0x8039,
     "CXD3222 FireWire",
 },
 {
     0x104d, 0x808a,
     "Memory Stick Slot",
 },
 {
     0x104d, 0x9602,
     "RS780",
 },
 {
     0x124d, 0x0003,
     "EasyIO",
 },
 {
     0x12d2, 0x0018,
     "Velocity128",
 },
 {
     0x108e, 0x1000,
     "PCIO EBus2",
 },
 {
     0x108e, 0x1001,
     "HME",
 },
 {
     0x108e, 0x1100,
     "RIO EBus",
 },
 {
     0x108e, 0x1101,
     "ERI Ether",
 },
 {
     0x108e, 0x1102,
     "FireWire",
 },
 {
     0x108e, 0x1103,
     "USB",
 },
 {
     0x108e, 0x2bad,
     "GEM",
 },
 {
     0x108e, 0x5000,
     "Simba",
 },
 {
     0x108e, 0x5454,
     "Crypto 5821",
 },
 {
     0x108e, 0x5455,
     "Crypto 1K",
 },
 {
     0x108e, 0x5ca0,
     "Crypto 6K",
 },
 {
     0x108e, 0x8000,
     "Psycho PCI",
 },
 {
     0x108e, 0x8186,
     "SPARC-T3/T4 PCIE",
 },
 {
     0x108e, 0x818e,
     "SPARC-M7 PCIE",
 },
 {
     0x108e, 0x8196,
     "SPARC-T5/M5/M6 PCIE",
 },
 {
     0x108e, 0x9000,
     "microSPARC IIep PCI",
 },
 {
     0x108e, 0xa000,
     "UltraSPARC IIi PCI",
 },
 {
     0x108e, 0xa001,
     "UltraSPARC IIe PCI",
 },
 {
     0x108e, 0xabba,
     "Cassini",
 },
 {
     0x108e, 0xabcd,
     "Neptune",
 },
 {
     0x108e, 0xc416,
     "SBBC",
 },
 {
     0x13f0, 0x0200,
     "ST201",
 },
 {
     0x13f0, 0x0201,
     "ST201",
 },
 {
     0x13f0, 0x1021,
     "TC9021",
 },
 {
     0x13f0, 0x1023,
     "ST1023",
 },
 {
     0x13f0, 0x2021,
     "ST2021",
 },
 {
     0x13f0, 0x9021,
     "TC9021",
 },
 {
     0x1409, 0x7168,
     "40XX",
 },
 {
     0x1409, 0x7268,
     "4018A",
 },
 {
     0x1fd4, 0x1999,
     "50XX",
 },
 {
     0x10bd, 0x0e34,
     "NE-34",
 },
 {
     0x1592, 0x0781,
     "4S2P",
 },
 {
     0x1592, 0x0786,
     "4S",
 },
 {
     0x1562, 0x0001,
     "Spectrum24 LA41X3",
 },
 {
     0x10ad, 0x0001,
     "82C101",
 },
 {
     0x10ad, 0x0103,
     "82C103",
 },
 {
     0x10ad, 0x0105,
     "82C105",
 },
 {
     0x1c1c, 0x0001,
     "82C101",
 },
 {
     0x10ad, 0x0565,
     "82C565 ISA",
 },
 {
     0x0357, 0x000a,
     "MC322",
 },
 {
     0x143d, 0x1021,
     "TC9021 GigE",
 },
 {
     0x143d, 0x9021,
     "TC9021 GigE",
 },
 {
     0x13d0, 0x2104,
     "B2C2 Sky2PC",
 },
 {
     0x13d0, 0x2200,
     "B2C2 Sky2PC",
 },
 {
     0x1fc9, 0x3009,
     "TN3009",
 },
 {
     0x1fc9, 0x3010,
     "TN3010",
 },
 {
     0x1fc9, 0x3014,
     "TN3014",
 },
 {
     0x10e1, 0xdc29,
     "DC-290(M)",
 },
 {
     0x1de1, 0x690c,
     "DC-690C",
 },
 {
     0x1de1, 0x0391,
     "DC-3x5U",
 },
 {
     0x153b, 0x1127,
     "Terratec TV+",
 },
 {
     0x153b, 0x1134,
     "Terratec TValue",
 },
 {
     0x153b, 0x1135,
     "Terratec TValue Radio",
 },
 {
     0x104c, 0x0500,
     "TLAN",
 },
 {
     0x104c, 0x3d04,
     "3DLabs Permedia",
 },
 {
     0x104c, 0x3d07,
     "3DLabs Permedia 2",
 },
 {
     0x104c, 0x8000,
     "TSB12LV21 FireWire",
 },
 {
     0x104c, 0x8009,
     "TSB12LV22 FireWire",
 },
 {
     0x104c, 0x8011,
     "PCI4450 FireWire",
 },
 {
     0x104c, 0x8017,
     "PCI4410 FireWire",
 },
 {
     0x104c, 0x8019,
     "TSB12LV23 FireWire",
 },
 {
     0x104c, 0x8020,
     "TSB12LV26 FireWire",
 },
 {
     0x104c, 0x8021,
     "TSB43AA22 FireWire",
 },
 {
     0x104c, 0x8023,
     "TSB43AB22 FireWire",
 },
 {
     0x104c, 0x8024,
     "TSB43AB23 FireWire",
 },
 {
     0x104c, 0x8025,
     "TSB82AA2 FireWire",
 },
 {
     0x104c, 0x8026,
     "TSB43AB21 FireWire",
 },
 {
     0x104c, 0x8027,
     "PCI4451 FireWire",
 },
 {
     0x104c, 0x8029,
     "PCI4510 FireWire",
 },
 {
     0x104c, 0x802a,
     "PCI4520 FireWire",
 },
 {
     0x104c, 0x802b,
     "PCI7(4-6)10 FireWire",
 },
 {
     0x104c, 0x802e,
     "PCI7x20 FireWire",
 },
 {
     0x104c, 0x8031,
     "PCI7XX1 CardBus",
 },
 {
     0x104c, 0x8032,
     "PCI7XX1 FireWire",
 },
 {
     0x104c, 0x8033,
     "PCI7XX1 Flash",
 },
 {
     0x104c, 0x8034,
     "PCI7XX1 SD",
 },
 {
     0x104c, 0x8035,
     "PCI7XX1 Smart Card",
 },
 {
     0x104c, 0x8036,
     "PCI6515 CardBus",
 },
 {
     0x104c, 0x8038,
     "PCI6515 CardBus",
 },
 {
     0x104c, 0x8039,
     "PCIXX12 CardBus",
 },
 {
     0x104c, 0x803a,
     "PCIXX12 FireWire",
 },
 {
     0x104c, 0x803b,
     "PCIXX12 Multimedia Card Reader",
 },
 {
     0x104c, 0x803c,
     "PCIXX12 SD",
 },
 {
     0x104c, 0x803d,
     "PCIXX12 Smart Card",
 },
 {
     0x104c, 0x8201,
     "PCI1620 Misc",
 },
 {
     0x104c, 0x8231,
     "XIO2000A PCIE-PCI",
 },
 {
     0x104c, 0x8232,
     "XIO3130 PCIE-PCIE upstream",
 },
 {
     0x104c, 0x8233,
     "XIO3130 PCIE-PCIE downstream",
 },
 {
     0x104c, 0x823e,
     "XIO2221 PCIE-PCI",
 },
 {
     0x104c, 0x823f,
     "XIO2221 FireWire",
 },
 {
     0x104c, 0x8240,
     "XIO2001 PCIE-PCI",
 },
 {
     0x104c, 0x8241,
     "xHCI",
 },
 {
     0x104c, 0x8400,
     "ACX100A",
 },
 {
     0x104c, 0x8401,
     "ACX100B",
 },
 {
     0x104c, 0x9066,
     "ACX111",
 },
 {
     0x104c, 0xac12,
     "PCI1130 CardBus",
 },
 {
     0x104c, 0xac13,
     "PCI1031 PCMCIA",
 },
 {
     0x104c, 0xac15,
     "PCI1131 CardBus",
 },
 {
     0x104c, 0xac16,
     "PCI1250 CardBus",
 },
 {
     0x104c, 0xac17,
     "PCI1220 CardBus",
 },
 {
     0x104c, 0xac19,
     "PCI1221 CardBus",
 },
 {
     0x104c, 0xac1a,
     "PCI1210 CardBus",
 },
 {
     0x104c, 0xac1b,
     "PCI1450 CardBus",
 },
 {
     0x104c, 0xac1c,
     "PCI1225 CardBus",
 },
 {
     0x104c, 0xac1d,
     "PCI1251 CardBus",
 },
 {
     0x104c, 0xac1e,
     "PCI1211 CardBus",
 },
 {
     0x104c, 0xac1f,
     "PCI1251B CardBus",
 },
 {
     0x104c, 0xac20,
     "PCI2030",
 },
 {
     0x104c, 0xac21,
     "PCI2031",
 },
 {
     0x104c, 0xac22,
     "PCI2032",
 },
 {
     0x104c, 0xac23,
     "PCI2250",
 },
 {
     0x104c, 0xac28,
     "PCI2050",
 },
 {
     0x104c, 0xac40,
     "PCI4450 CardBus",
 },
 {
     0x104c, 0xac41,
     "PCI4410 CardBus",
 },
 {
     0x104c, 0xac42,
     "PCI4451 CardBus",
 },
 {
     0x104c, 0xac44,
     "PCI4510 CardBus",
 },
 {
     0x104c, 0xac46,
     "PCI4520 CardBus",
 },
 {
     0x104c, 0xac47,
     "PCI7510 CardBus",
 },
 {
     0x104c, 0xac48,
     "PCI7610 CardBus",
 },
 {
     0x104c, 0xac49,
     "PCI7410 CardBus",
 },
 {
     0x104c, 0xac4a,
     "PCI7610 CardBus",
 },
 {
     0x104c, 0xac4b,
     "PCI7[46]10 CardBus",
 },
 {
     0x104c, 0xac4c,
     "PCI7[46]10 CardBus",
 },
 {
     0x104c, 0xac50,
     "PCI1410 CardBus",
 },
 {
     0x104c, 0xac51,
     "PCI1420 CardBus",
 },
 {
     0x104c, 0xac52,
     "PCI1451 CardBus",
 },
 {
     0x104c, 0xac53,
     "PCI1421 CardBus",
 },
 {
     0x104c, 0xac54,
     "PCI1620 CardBus",
 },
 {
     0x104c, 0xac55,
     "PCI1520 CardBus",
 },
 {
     0x104c, 0xac56,
     "PCI1510 CardBus",
 },
 {
     0x104c, 0xac57,
     "PCI1530 CardBus",
 },
 {
     0x104c, 0xac58,
     "PCI1515 CardBus",
 },
 {
     0x104c, 0xac60,
     "PCI2040 DSP",
 },
 {
     0x104c, 0xac8e,
     "PCI7420 CardBus",
 },
 {
     0xe159, 0x0001,
     "PCI",
 },
 {
     0x151f, 0x0000,
     "5634PCV SurfRider",
 },
 {
     0x102f, 0x0009,
     "R4x00",
 },
 {
     0x102f, 0x0020,
     "TC35856F ATM",
 },
 {
     0x102f, 0x102f,
     "R4x00 PCI",
 },
 {
     0x1179, 0x0115,
     "NVMe",
 },
 {
     0x1179, 0x0601,
     "PCI",
 },
 {
     0x1179, 0x0602,
     "ISA",
 },
 {
     0x1179, 0x0603,
     "ToPIC95 CardBus-PCI",
 },
 {
     0x1179, 0x060a,
     "ToPIC95B CardBus",
 },
 {
     0x1179, 0x060f,
     "ToPIC97 CardBus",
 },
 {
     0x1179, 0x0617,
     "ToPIC100 CardBus",
 },
 {
     0x1179, 0x0701,
     "Fast Infrared Type O",
 },
 {
     0x1179, 0x0805,
     "SD Controller",
 },
 {
     0x1279, 0x0295,
     "Northbridge",
 },
 {
     0x1279, 0x0395,
     "LongRun Northbridge",
 },
 {
     0x1279, 0x0396,
     "Mem1",
 },
 {
     0x1279, 0x0397,
     "Mem2",
 },
 {
     0x1023, 0x2000,
     "4DWAVE DX",
 },
 {
     0x1023, 0x2001,
     "4DWAVE NX",
 },
 {
     0x1023, 0x8400,
     "CyberBlade i7",
 },
 {
     0x1023, 0x8420,
     "CyberBlade i7 AGP",
 },
 {
     0x1023, 0x8500,
     "CyberBlade i1",
 },
 {
     0x1023, 0x8520,
     "CyberBlade i1 AGP",
 },
 {
     0x1023, 0x8600,
     "CyberBlade Ai1",
 },
 {
     0x1023, 0x8620,
     "CyberBlade Ai1 AGP",
 },
 {
     0x1023, 0x8820,
     "CyberBlade XP/Ai1",
 },
 {
     0x1023, 0x9320,
     "TGUI 9320",
 },
 {
     0x1023, 0x9350,
     "TGUI 9350",
 },
 {
     0x1023, 0x9360,
     "TGUI 9360",
 },
 {
     0x1023, 0x9388,
     "TGUI 9388",
 },
 {
     0x1023, 0x9397,
     "CYBER 9397",
 },
 {
     0x1023, 0x939a,
     "CYBER 9397DVD",
 },
 {
     0x1023, 0x9420,
     "TGUI 9420",
 },
 {
     0x1023, 0x9440,
     "TGUI 9440",
 },
 {
     0x1023, 0x9525,
     "CYBER 9525",
 },
 {
     0x1023, 0x9660,
     "TGUI 9660",
 },
 {
     0x1023, 0x9680,
     "TGUI 9680",
 },
 {
     0x1023, 0x9682,
     "TGUI 9682",
 },
 {
     0x1023, 0x9750,
     "3DImage 9750",
 },
 {
     0x1023, 0x9850,
     "3DImage 9850",
 },
 {
     0x1023, 0x9880,
     "Blade 3D",
 },
 {
     0x1023, 0x9910,
     "CyberBlade XP",
 },
 {
     0x1023, 0x9960,
     "CyberBlade XP2",
 },
 {
     0x1103, 0x0003,
     "HPT343/345 IDE",
 },
 {
     0x1103, 0x0004,
     "HPT36x/37x IDE",
 },
 {
     0x1103, 0x0005,
     "HPT372A IDE",
 },
 {
     0x1103, 0x0006,
     "HPT302 IDE",
 },
 {
     0x1103, 0x0007,
     "HPT371 IDE",
 },
 {
     0x1103, 0x0008,
     "HPT374 IDE",
 },
 {
     0x1292, 0xfc02,
     "Pyramid3D TR25202",
 },
 {
     0x100c, 0x3202,
     "ET4000w32pA",
 },
 {
     0x100c, 0x3205,
     "ET4000w32pB",
 },
 {
     0x100c, 0x3206,
     "ET4000w32pC",
 },
 {
     0x100c, 0x3207,
     "ET4000w32pD",
 },
 {
     0x100c, 0x3208,
     "ET6000/ET6100",
 },
 {
     0x100c, 0x4702,
     "ET6300",
 },
 {
     0x10ea, 0x1680,
     "IGA-1680",
 },
 {
     0x10ea, 0x1682,
     "IGA-1682",
 },
 {
     0x10ea, 0x1683,
     "IGA-1683",
 },
 {
     0x10ea, 0x2000,
     "CyberPro 2000",
 },
 {
     0x10ea, 0x2010,
     "CyberPro 2010",
 },
 {
     0x10ea, 0x5000,
     "CyberPro 5000",
 },
 {
     0x10ea, 0x5050,
     "CyberPro 5050",
 },
 {
     0x10ea, 0x5202,
     "CyberPro 5202",
 },
 {
     0x10ea, 0x5252,
     "CyberPro 5252",
 },
 {
     0x5053, 0x3357,
     "Santa Cruz",
 },
 {
     0x1060, 0x0001,
     "UM82C881 486",
 },
 {
     0x1060, 0x0002,
     "UM82C886 ISA",
 },
 {
     0x1060, 0x0101,
     "UM8673F EIDE",
 },
 {
     0x1060, 0x0881,
     "UM8881 HB4 486 PCI",
 },
 {
     0x1060, 0x0891,
     "UM82C891",
 },
 {
     0x1060, 0x1001,
     "UM886A",
 },
 {
     0x1060, 0x673a,
     "UM8886BF",
 },
 {
     0x1060, 0x8710,
     "UM8710",
 },
 {
     0x1060, 0x886a,
     "UM8886",
 },
 {
     0x1060, 0x8881,
     "UM8881F Host",
 },
 {
     0x1060, 0x8886,
     "UM8886F ISA",
 },
 {
     0x1060, 0x888a,
     "UM8886A",
 },
 {
     0x1060, 0x8891,
     "UM8891A",
 },
 {
     0x1060, 0x9017,
     "UM9017F",
 },
 {
     0x1060, 0xe886,
     "ISA",
 },
 {
     0x1060, 0xe88a,
     "UM8886N",
 },
 {
     0x1060, 0xe891,
     "UM8891N",
 },
 {
     0x1003, 0x0201,
     "US201",
 },
 {
     0x16ec, 0x0116,
     "USR997902",
 },
 {
     0x12b9, 0x1008,
     "3CP5610",
 },
 {
     0x16ec, 0x3685,
     "WL11000P",
 },
 {
     0x11b0, 0x0002,
     "V961PBC i960 PCI",
 },
 {
     0x11b0, 0x0292,
     "V292PBC AMD290x0 PCI",
 },
 {
     0x11b0, 0x0960,
     "V960PBC i960 PCI",
 },
 {
     0x11b0, 0xc960,
     "V96DPC i960 PCI",
 },
 {
     0x1106, 0x0204,
     "K8M800 Host",
 },
 {
     0x1106, 0x0238,
     "K8T890 Host",
 },
 {
     0x1106, 0x0258,
     "PT880 Host",
 },
 {
     0x1106, 0x0259,
     "PM800 AGP",
 },
 {
     0x1106, 0x0269,
     "KT880 AGP",
 },
 {
     0x1106, 0x0282,
     "K8HTB Host",
 },
 {
     0x1106, 0x0305,
     "VT8363 Host",
 },
 {
     0x1106, 0x0308,
     "PT894 Host",
 },
 {
     0x1106, 0x0314,
     "CN700 Host",
 },
 {
     0x1106, 0x0324,
     "CX700 Host",
 },
 {
     0x1106, 0x0327,
     "P4M890 Host",
 },
 {
     0x1106, 0x0336,
     "K8M890 Host",
 },
 {
     0x1106, 0x0351,
     "VT3351 Host",
 },
 {
     0x1106, 0x0353,
     "VX800 Host",
 },
 {
     0x1106, 0x0364,
     "P4M900 Host",
 },
 {
     0x1106, 0x0391,
     "VT8371 Host",
 },
 {
     0x1106, 0x0415,
     "VT6415 IDE",
 },
 {
     0x1106, 0x0501,
     "VT8501",
 },
 {
     0x1106, 0x0505,
     "VT82C505",
 },
 {
     0x1106, 0x0561,
     "VT82C561",
 },
 {
     0x1106, 0x0571,
     "VT82C571 IDE",
 },
 {
     0x1106, 0x0576,
     "VT82C576 3V",
 },
 {
     0x1106, 0x0581,
     "VX700 IDE",
 },
 {
     0x1106, 0x0585,
     "VT82C585 ISA",
 },
 {
     0x1106, 0x0586,
     "VT82C586 ISA",
 },
 {
     0x1106, 0x0591,
     "VT8237A SATA",
 },
 {
     0x1106, 0x0595,
     "VT82C595 PCI",
 },
 {
     0x1106, 0x0596,
     "VT82C596A ISA",
 },
 {
     0x1106, 0x0597,
     "VT82C597 PCI",
 },
 {
     0x1106, 0x0598,
     "VT82C598 PCI",
 },
 {
     0x1106, 0x0601,
     "VT8601 PCI",
 },
 {
     0x1106, 0x0605,
     "VT8605 PCI",
 },
 {
     0x1106, 0x0686,
     "VT82C686 ISA",
 },
 {
     0x1106, 0x0691,
     "VT82C691 PCI",
 },
 {
     0x1106, 0x0693,
     "VT82C693 PCI",
 },
 {
     0x1106, 0x0926,
     "VT86C926 Amazon",
 },
 {
     0x1106, 0x1000,
     "VT82C570M PCI",
 },
 {
     0x1106, 0x1006,
     "VT82C570M ISA",
 },
 {
     0x1106, 0x1122,
     "Chrome9 HC3 IGP",
 },
 {
     0x1106, 0x1204,
     "K8M800 Host",
 },
 {
     0x1106, 0x1238,
     "K8T890 Host",
 },
 {
     0x1106, 0x1258,
     "PT880 Host",
 },
 {
     0x1106, 0x1259,
     "PM800 Errors",
 },
 {
     0x1106, 0x1269,
     "KT880 Host",
 },
 {
     0x1106, 0x1282,
     "K8HTB Host",
 },
 {
     0x1106, 0x1308,
     "PT894 Host",
 },
 {
     0x1106, 0x1314,
     "CN700 Host",
 },
 {
     0x1106, 0x1324,
     "CX700 Host",
 },
 {
     0x1106, 0x1327,
     "P4M890 Host",
 },
 {
     0x1106, 0x1336,
     "K8M890 Host",
 },
 {
     0x1106, 0x1351,
     "VT3351 Host",
 },
 {
     0x1106, 0x1353,
     "VX800 Host",
 },
 {
     0x1106, 0x1364,
     "P4M900 Host",
 },
 {
     0x1106, 0x1571,
     "VT82C416 IDE",
 },
 {
     0x1106, 0x1595,
     "VT82C1595 PCI",
 },
 {
     0x1106, 0x2204,
     "K8M800 Host",
 },
 {
     0x1106, 0x2238,
     "K8T890 Host",
 },
 {
     0x1106, 0x2258,
     "PT880 Host",
 },
 {
     0x1106, 0x2259,
     "PM800 Host",
 },
 {
     0x1106, 0x2269,
     "KT880 Host",
 },
 {
     0x1106, 0x2282,
     "K8HTB Host",
 },
 {
     0x1106, 0x2308,
     "PT894 Host",
 },
 {
     0x1106, 0x2314,
     "CN700 Host",
 },
 {
     0x1106, 0x2324,
     "CX700 Host",
 },
 {
     0x1106, 0x2327,
     "P4M890 Host",
 },
 {
     0x1106, 0x2336,
     "K8M890 Host",
 },
 {
     0x1106, 0x2351,
     "VT3351 Host",
 },
 {
     0x1106, 0x2353,
     "VX800 Host",
 },
 {
     0x1106, 0x2364,
     "P4M900 Host",
 },
 {
     0x1106, 0x287a,
     "VT8251 PCI",
 },
 {
     0x1106, 0x287b,
     "VT8251 PCIE",
 },
 {
     0x1106, 0x287c,
     "VT8251 PCIE",
 },
 {
     0x1106, 0x287d,
     "VT8251 PCIE",
 },
 {
     0x1106, 0x287e,
     "VT8251 VLINK",
 },
 {
     0x1106, 0x3038,
     "VT83C572 USB",
 },
 {
     0x1106, 0x3040,
     "VT82C586 Power",
 },
 {
     0x1106, 0x3043,
     "Rhine/RhineII",
 },
 {
     0x1106, 0x3044,
     "VT6306 FireWire",
 },
 {
     0x1106, 0x3050,
     "VT82C596 Power",
 },
 {
     0x1106, 0x3051,
     "VT82C596B PM",
 },
 {
     0x1106, 0x3053,
     "VT6105M RhineIII",
 },
 {
     0x1106, 0x3057,
     "VT82C686 SMBus",
 },
 {
     0x1106, 0x3058,
     "VT82C686 AC97",
 },
 {
     0x1106, 0x3059,
     "VT8233 AC97",
 },
 {
     0x1106, 0x3065,
     "RhineII-2",
 },
 {
     0x1106, 0x3068,
     "VT82C686 Modem",
 },
 {
     0x1106, 0x3074,
     "VT8233 ISA",
 },
 {
     0x1106, 0x3091,
     "VT8633 PCI",
 },
 {
     0x1106, 0x3099,
     "VT8366 PCI",
 },
 {
     0x1106, 0x3101,
     "VT8653 PCI",
 },
 {
     0x1106, 0x3104,
     "VT6202 USB",
 },
 {
     0x1106, 0x3106,
     "VT6105 RhineIII",
 },
 {
     0x1106, 0x3108,
     "S3 Unichrome PRO IGP",
 },
 {
     0x1106, 0x3112,
     "VT8361 PCI",
 },
 {
     0x1106, 0x3113,
     "VT8101 VPX-64",
 },
 {
     0x1106, 0x3116,
     "VT8375 PCI",
 },
 {
     0x1106, 0x3118,
     "PM800 Unichrome S3",
 },
 {
     0x1106, 0x3119,
     "VT612x",
 },
 {
     0x1106, 0x3122,
     "CLE266",
 },
 {
     0x1106, 0x3123,
     "VT8623 PCI",
 },
 {
     0x1106, 0x3147,
     "VT8233A ISA",
 },
 {
     0x1106, 0x3148,
     "VT8751 PCI",
 },
 {
     0x1106, 0x3149,
     "VT6420 SATA",
 },
 {
     0x1106, 0x3157,
     "S3 UniChrome Pro II IGP",
 },
 {
     0x1106, 0x3164,
     "VT6410 IDE",
 },
 {
     0x1106, 0x3168,
     "P4X400 Host",
 },
 {
     0x1106, 0x3177,
     "VT8235 ISA",
 },
 {
     0x1106, 0x3178,
     "P4N333 Host",
 },
 {
     0x1106, 0x3188,
     "K8HTB Host",
 },
 {
     0x1106, 0x3189,
     "VT8377 PCI",
 },
 {
     0x1106, 0x3204,
     "K8M800 Host",
 },
 {
     0x1106, 0x3205,
     "VT8378 PCI",
 },
 {
     0x1106, 0x3208,
     "PT890 Host",
 },
 {
     0x1106, 0x3218,
     "K8T800M Host",
 },
 {
     0x1106, 0x3227,
     "VT8237 ISA",
 },
 {
     0x1106, 0x3230,
     "DeltaChrome Video",
 },
 {
     0x1106, 0x3238,
     "K8T890 Host",
 },
 {
     0x1106, 0x3249,
     "VT6421 SATA",
 },
 {
     0x1106, 0x324a,
     "CX700",
 },
 {
     0x1106, 0x324b,
     "CX700 Host",
 },
 {
     0x1106, 0x324e,
     "VX700 Host",
 },
 {
     0x1106, 0x3253,
     "VT6655",
 },
 {
     0x1106, 0x3258,
     "PT880 Host",
 },
 {
     0x1106, 0x3259,
     "PM800 DRAM",
 },
 {
     0x1106, 0x3269,
     "KT880 Host",
 },
 {
     0x1106, 0x3282,
     "K8HTB Host",
 },
 {
     0x1106, 0x3287,
     "VT8251 ISA",
 },
 {
     0x1106, 0x3288,
     "HD Audio",
 },
 {
     0x1106, 0x3324,
     "CX700 Host",
 },
 {
     0x1106, 0x3327,
     "P4M890 Host",
 },
 {
     0x1106, 0x3336,
     "K8M890 Host",
 },
 {
     0x1106, 0x3337,
     "VT8237A ISA",
 },
 {
     0x1106, 0x3343,
     "S3 Unichrome PRO IGP",
 },
 {
     0x1106, 0x3344,
     "S3 Unichrome PRO IGP",
 },
 {
     0x1106, 0x3349,
     "VT8251 SATA",
 },
 {
     0x1106, 0x3351,
     "VT3351 Host",
 },
 {
     0x1106, 0x3353,
     "VX800 DRAM",
 },
 {
     0x1106, 0x3364,
     "P4M900 Host",
 },
 {
     0x1106, 0x3371,
     "Chrome9 HC IGP",
 },
 {
     0x1106, 0x3372,
     "VT8237S ISA",
 },
 {
     0x1106, 0x337a,
     "VT8237A",
 },
 {
     0x1106, 0x337b,
     "VT8237A",
 },
 {
     0x1106, 0x3432,
     "VL80x xHCI",
 },
 {
     0x1106, 0x3483,
     "VL805 xHCI",
 },
 {
     0x1106, 0x4204,
     "K8M800 Host",
 },
 {
     0x1106, 0x4238,
     "K8T890 Host",
 },
 {
     0x1106, 0x4258,
     "PT880 Host",
 },
 {
     0x1106, 0x4259,
     "PM800 PMC",
 },
 {
     0x1106, 0x4269,
     "KT880 Host",
 },
 {
     0x1106, 0x4282,
     "K8HTB Host",
 },
 {
     0x1106, 0x4308,
     "PT894 Host",
 },
 {
     0x1106, 0x4314,
     "CN700 Host",
 },
 {
     0x1106, 0x4324,
     "CX700 Host",
 },
 {
     0x1106, 0x4327,
     "P4M890 Host",
 },
 {
     0x1106, 0x4336,
     "K8M890 Host",
 },
 {
     0x1106, 0x4351,
     "VT3351 Host",
 },
 {
     0x1106, 0x4353,
     "VX800 Host",
 },
 {
     0x1106, 0x4364,
     "P4M900 Host",
 },
 {
     0x1106, 0x5238,
     "K8T890 IOAPIC",
 },
 {
     0x1106, 0x5308,
     "PT894 IOAPIC",
 },
 {
     0x1106, 0x5324,
     "CX700 IDE",
 },
 {
     0x1106, 0x5327,
     "P4M890 IOAPIC",
 },
 {
     0x1106, 0x5336,
     "K8M890 IOAPIC",
 },
 {
     0x1106, 0x5337,
     "VT8237A SATA",
 },
 {
     0x1106, 0x5351,
     "VT3351 IOAPIC",
 },
 {
     0x1106, 0x5353,
     "VX800 IOAPIC",
 },
 {
     0x1106, 0x5364,
     "P4M900 IOAPIC",
 },
 {
     0x1106, 0x5372,
     "VT8237S SATA",
 },
 {
     0x1106, 0x6100,
     "RhineII",
 },
 {
     0x1106, 0x6238,
     "VT3351 Host",
 },
 {
     0x1106, 0x6287,
     "VT8251 AHCI",
 },
 {
     0x1106, 0x6290,
     "K8M890 Host",
 },
 {
     0x1106, 0x6327,
     "P4M890 Security",
 },
 {
     0x1106, 0x6353,
     "VX800 Host",
 },
 {
     0x1106, 0x6364,
     "P4M900 Security",
 },
 {
     0x1106, 0x7204,
     "K8M800 Host",
 },
 {
     0x1106, 0x7205,
     "VT8378 VGA",
 },
 {
     0x1106, 0x7308,
     "PT894 Host",
 },
 {
     0x1106, 0x7327,
     "P4M890 Host",
 },
 {
     0x1106, 0x7336,
     "K8M890 Host",
 },
 {
     0x1106, 0x7353,
     "VX800 Host",
 },
 {
     0x1106, 0x7364,
     "P4M900 Host",
 },
 {
     0x1106, 0x7238,
     "K8T890 Host",
 },
 {
     0x1106, 0x7258,
     "PT880 Host",
 },
 {
     0x1106, 0x7259,
     "PM800 PCI",
 },
 {
     0x1106, 0x7269,
     "KT880 Host",
 },
 {
     0x1106, 0x7282,
     "K8HTB Host",
 },
 {
     0x1106, 0x7314,
     "CN700 Host",
 },
 {
     0x1106, 0x7324,
     "CX700 Host",
 },
 {
     0x1106, 0x7351,
     "VT3351 Host",
 },
 {
     0x1106, 0x8231,
     "VT8231 ISA",
 },
 {
     0x1106, 0x8235,
     "VT8231 PMG",
 },
 {
     0x1106, 0x8305,
     "VT8363 AGP",
 },
 {
     0x1106, 0x8324,
     "CX700 ISA",
 },
 {
     0x1106, 0x8353,
     "VX800 ISA",
 },
 {
     0x1106, 0x8391,
     "VT8371",
 },
 {
     0x1106, 0x8409,
     "VX855 ISA",
 },
 {
     0x1106, 0x8501,
     "VT8501 AGP",
 },
 {
     0x1106, 0x8597,
     "VT82C597 AGP",
 },
 {
     0x1106, 0x8598,
     "VT82C598 AGP",
 },
 {
     0x1106, 0x8601,
     "VT82C601 AGP",
 },
 {
     0x1106, 0x8605,
     "VT8605 AGP",
 },
 {
     0x1106, 0x9001,
     "VX900 IDE",
 },
 {
     0x1106, 0x9530,
     "VX800 SD/MMC",
 },
 {
     0x1106, 0x95d0,
     "VX800 SDIO",
 },
 {
     0x1106, 0xa238,
     "K8T890",
 },
 {
     0x1106, 0xa327,
     "P4M890",
 },
 {
     0x1106, 0xa353,
     "VX800 Host",
 },
 {
     0x1106, 0xa364,
     "P4M900",
 },
 {
     0x1106, 0xb091,
     "VT8633 AGP",
 },
 {
     0x1106, 0xb099,
     "VT8366 AGP",
 },
 {
     0x1106, 0xb112,
     "VT8361 AGP",
 },
 {
     0x1106, 0xb113,
     "VT8101 VPX-64 IOAPIC",
 },
 {
     0x1106, 0xb115,
     "VT8363",
 },
 {
     0x1106, 0xb168,
     "VT8235 AGP",
 },
 {
     0x1106, 0xb188,
     "K8HTB AGP",
 },
 {
     0x1106, 0xb198,
     "VT8377 AGP",
 },
 {
     0x1106, 0xb353,
     "VX800",
 },
 {
     0x1106, 0xb999,
     "K8T890",
 },
 {
     0x1106, 0xc238,
     "K8T890",
 },
 {
     0x1106, 0xc327,
     "P4M890",
 },
 {
     0x1106, 0xc353,
     "VX800 PCIE",
 },
 {
     0x1106, 0xc364,
     "P4M900",
 },
 {
     0x1106, 0xc409,
     "VX855 IDE",
 },
 {
     0x1106, 0xd238,
     "K8T890",
 },
 {
     0x1106, 0xe238,
     "K8T890",
 },
 {
     0x1106, 0xe353,
     "VX800 PCIE",
 },
 {
     0x1106, 0xf238,
     "K8T890",
 },
 {
     0x1106, 0xf353,
     "VX800 PCIE",
 },
 {
     0x1725, 0x7174,
     "VSC-7174 SATA",
 },
 {
     0x1119, 0x0000,
     "GDT6000/6020/6050",
 },
 {
     0x1119, 0x0001,
     "GDT6000B/6010",
 },
 {
     0x1119, 0x0002,
     "GDT6110/6510",
 },
 {
     0x1119, 0x0003,
     "GDT6120/6520",
 },
 {
     0x1119, 0x0004,
     "GDT6530",
 },
 {
     0x1119, 0x0005,
     "GDT6550",
 },
 {
     0x1119, 0x0006,
     "GDT6x17",
 },
 {
     0x1119, 0x0007,
     "GDT6x27",
 },
 {
     0x1119, 0x0008,
     "GDT6537",
 },
 {
     0x1119, 0x0009,
     "GDT6557",
 },
 {
     0x1119, 0x000a,
     "GDT6x15",
 },
 {
     0x1119, 0x000b,
     "GDT6x25",
 },
 {
     0x1119, 0x000c,
     "GDT6535",
 },
 {
     0x1119, 0x000d,
     "GDT6555",
 },
 {
     0x1119, 0x0100,
     "GDT6x17RP",
 },
 {
     0x1119, 0x0101,
     "GDT6x27RP",
 },
 {
     0x1119, 0x0102,
     "GDT6537RP",
 },
 {
     0x1119, 0x0103,
     "GDT6557RP",
 },
 {
     0x1119, 0x0104,
     "GDT6x11RP",
 },
 {
     0x1119, 0x0105,
     "GDT6x21RP",
 },
 {
     0x1119, 0x0110,
     "GDT6x17RP1",
 },
 {
     0x1119, 0x0111,
     "GDT6x27RP1",
 },
 {
     0x1119, 0x0112,
     "GDT6537RP1",
 },
 {
     0x1119, 0x0113,
     "GDT6557RP1",
 },
 {
     0x1119, 0x0114,
     "GDT6x11RP1",
 },
 {
     0x1119, 0x0115,
     "GDT6x21RP1",
 },
 {
     0x1119, 0x0118,
     "GDT6x18RD",
 },
 {
     0x1119, 0x0119,
     "GDT6x28RD",
 },
 {
     0x1119, 0x011a,
     "GDT6x38RD",
 },
 {
     0x1119, 0x011b,
     "GDT6x58RD",
 },
 {
     0x1119, 0x0120,
     "GDT6x17RP2",
 },
 {
     0x1119, 0x0121,
     "GDT6x27RP2",
 },
 {
     0x1119, 0x0122,
     "GDT6537RP2",
 },
 {
     0x1119, 0x0123,
     "GDT6557RP2",
 },
 {
     0x1119, 0x0124,
     "GDT6x11RP2",
 },
 {
     0x1119, 0x0125,
     "GDT6x21RP2",
 },
 {
     0x1119, 0x0136,
     "GDT6513RS",
 },
 {
     0x1119, 0x0137,
     "GDT6523RS",
 },
 {
     0x1119, 0x0138,
     "GDT6518RS",
 },
 {
     0x1119, 0x0139,
     "GDT6x28RS",
 },
 {
     0x1119, 0x013a,
     "GDT6x38RS",
 },
 {
     0x1119, 0x013b,
     "GDT6x58RS",
 },
 {
     0x1119, 0x013c,
     "GDT6x33RS",
 },
 {
     0x1119, 0x013d,
     "GDT6x43RS",
 },
 {
     0x1119, 0x013e,
     "GDT6x53RS",
 },
 {
     0x1119, 0x013f,
     "GDT6x63RS",
 },
 {
     0x1119, 0x0166,
     "GDT7x13RN",
 },
 {
     0x1119, 0x0167,
     "GDT7x23RN",
 },
 {
     0x1119, 0x0168,
     "GDT7x18RN",
 },
 {
     0x1119, 0x0169,
     "GDT7x28RN",
 },
 {
     0x1119, 0x016a,
     "GDT7x38RN",
 },
 {
     0x1119, 0x016b,
     "GDT7x58RN",
 },
 {
     0x1119, 0x016d,
     "GDT7x43RN",
 },
 {
     0x1119, 0x016e,
     "GDT7x53RN",
 },
 {
     0x1119, 0x016f,
     "GDT7x63RN",
 },
 {
     0x1119, 0x01d6,
     "GDT4x13RZ",
 },
 {
     0x1119, 0x01d7,
     "GDT4x23RZ",
 },
 {
     0x1119, 0x01f6,
     "GDT8x13RZ",
 },
 {
     0x1119, 0x01f7,
     "GDT8x23RZ",
 },
 {
     0x1119, 0x01fc,
     "GDT8x33RZ",
 },
 {
     0x1119, 0x01fd,
     "GDT8x43RZ",
 },
 {
     0x1119, 0x01fe,
     "GDT8x53RZ",
 },
 {
     0x1119, 0x01ff,
     "GDT8x63RZ",
 },
 {
     0x1119, 0x0210,
     "GDT6x19RD",
 },
 {
     0x1119, 0x0211,
     "GDT6x29RD",
 },
 {
     0x1119, 0x0260,
     "GDT7x19RN",
 },
 {
     0x1119, 0x0261,
     "GDT7x29RN",
 },
 {
     0x1119, 0x02f6,
     "GDT8x22RZ",
 },
 {
     0x1119, 0x0300,
     "ICP",
 },
 {
     0x1119, 0x0301,
     "ICP",
 },
 {
     0x1004, 0x0005,
     "82C592 CPU",
 },
 {
     0x1004, 0x0006,
     "82C593 ISA",
 },
 {
     0x1004, 0x0007,
     "82C594 Wildcat",
 },
 {
     0x1004, 0x0008,
     "82C596/597 Wildcat ISA",
 },
 {
     0x1004, 0x000c,
     "82C541",
 },
 {
     0x1004, 0x000d,
     "82C543",
 },
 {
     0x1004, 0x0101,
     "82C532",
 },
 {
     0x1004, 0x0102,
     "82C534",
 },
 {
     0x1004, 0x0104,
     "82C535",
 },
 {
     0x1004, 0x0105,
     "82C147",
 },
 {
     0x1004, 0x0200,
     "82C975",
 },
 {
     0x1004, 0x0280,
     "82C925",
 },
 {
     0x15ad, 0x0405,
     "SVGA II",
 },
 {
     0x15ad, 0x0710,
     "SVGA",
 },
 {
     0x15ad, 0x0720,
     "VMXNET",
 },
 {
     0x15ad, 0x0740,
     "VMCI",
 },
 {
     0x15ad, 0x0770,
     "EHCI",
 },
 {
     0x15ad, 0x0774,
     "UHCI",
 },
 {
     0x15ad, 0x0778,
     "xHCI",
 },
 {
     0x15ad, 0x0779,
     "xHCI",
 },
 {
     0x15ad, 0x0790,
     "PCI",
 },
 {
     0x15ad, 0x07a0,
     "PCIE",
 },
 {
     0x15ad, 0x07b0,
     "VMXNET3",
 },
 {
     0x15ad, 0x07c0,
     "PVSCSI",
 },
 {
     0x15ad, 0x07e0,
     "AHCI",
 },
 {
     0x15ad, 0x0801,
     "VMI",
 },
 {
     0x15ad, 0x1977,
     "HD Audio",
 },
 {
     0x100e, 0x9001,
     "P9000",
 },
 {
     0x100e, 0x9100,
     "P9100",
 },
 {
     0x101c, 0x0193,
     "WD33C193A",
 },
 {
     0x101c, 0x0196,
     "WD33C196A",
 },
 {
     0x101c, 0x0197,
     "WD33C197A",
 },
 {
     0x101c, 0x3193,
     "WD7193",
 },
 {
     0x101c, 0x3197,
     "WD7197",
 },
 {
     0x101c, 0x3296,
     "WD33C296A",
 },
 {
     0x101c, 0x4296,
     "WD34C296",
 },
 {
     0x101c, 0x9710,
     "WD9610",
 },
 {
     0x101c, 0xc24a,
     "90C",
 },
 {
     0x1050, 0x0001,
     "W83769F",
 },
 {
     0x1050, 0x0840,
     "W89C840F 10/100",
 },
 {
     0x1050, 0x0940,
     "Linksys EtherPCI II",
 },
 {
     0x1050, 0x0565,
     "W83C553F ISA",
 },
 {
     0x1050, 0x0105,
     "W83C553F",
 },
 {
     0x1050, 0x5a5a,
     "W89C940F",
 },
 {
     0x1050, 0x6692,
     "W6692 ISDN",
 },
 {
     0x8c4a, 0x1980,
     "Linksys EtherPCI",
 },
 {
     0x1145, 0xf021,
     "CF32A",
 },
 {
     0x1145, 0xf024,
     "CF32A",
 },
 {
     0x5853, 0x0001,
     "Platform Device",
 },
 {
     0x18ca, 0x0020,
     "Volari Z7",
 },
 {
     0x18ca, 0x0021,
     "Volari Z9s/Z9m",
 },
 {
     0x18ca, 0x0040,
     "Volari V3XT",
 },
 {
     0x115d, 0x0002,
     "X3201-3",
 },
 {
     0x115d, 0x0003,
     "X3201-3",
 },
 {
     0x115d, 0x0005,
     "CardBus Ethernet",
 },
 {
     0x115d, 0x0007,
     "CardBus Ethernet",
 },
 {
     0x115d, 0x000b,
     "CardBus Ethernet",
 },
 {
     0x115d, 0x000c,
     "Mini-PCI V.90 56k Modem",
 },
 {
     0x115d, 0x000f,
     "CardBus Ethernet",
 },
 {
     0x115d, 0x00d4,
     "Mini-PCI K56Flex Modem",
 },
 {
     0x115d, 0x0101,
     "CardBus 56k Modem",
 },
 {
     0x115d, 0x0103,
     "56k Modem",
 },
 {
     0x115d, 0x0105,
     "CBEM56G Modem",
 },
 {
     0x1073, 0x0004,
     "724",
 },
 {
     0x1073, 0x0005,
     "734",
 },
 {
     0x1073, 0x0006,
     "738",
 },
 {
     0x1073, 0x0008,
     "737",
 },
 {
     0x1073, 0x000a,
     "740",
 },
 {
     0x1073, 0x000c,
     "740C",
 },
 {
     0x1073, 0x000d,
     "724F",
 },
 {
     0x1073, 0x0010,
     "744",
 },
 {
     0x1073, 0x0012,
     "754",
 },
 {
     0x1073, 0x0020,
     "738",
 },
 {
     0x1193, 0x0001,
     "1221",
 },
 {
     0x1138, 0x8905,
     "PCI-ST32",
 },
 {
     0x15b0, 0x400d,
     "Genie TV/FM",
 },
 {
     0x11de, 0x6057,
     "TV",
 },
 {
     0x11de, 0x6120,
     "DVD",
 },
 {
     0x167b, 0x2100,
     "ZD1201",
 },
 {
     0x167b, 0x2102,
     "ZD1202",
 },
 {
     0x167b, 0x2105,
     "ZD1205",
 },
 { 0, 0, ((void *)0), }
};
static const struct pci_known_vendor pci_known_vendors[] = {
 {
     0x00ec,
     "D-Link",
 },
 {
     0x003d,
     "Martin-Marietta",
 },
 {
     0x0070,
     "Hauppauge",
 },
 {
     0x0357,
     "TTTech",
 },
 {
     0x0675,
     "Dynalink",
 },
 {
     0x07aa,
     "Corega",
 },
 {
     0x0b0b,
     "Rhino Equipment",
 },
 {
     0x0b5d,
     "OpenBSD",
 },
 {
     0x0e11,
     "Compaq",
 },
 {
     0x1000,
     "Symbios Logic",
 },
 {
     0x1002,
     "ATI",
 },
 {
     0x1003,
     "ULSI Systems",
 },
 {
     0x1004,
     "VLSI",
 },
 {
     0x1005,
     "Avance Logic",
 },
 {
     0x100b,
     "NS",
 },
 {
     0x100c,
     "Tseng Labs",
 },
 {
     0x100e,
     "Weitek",
 },
 {
     0x1011,
     "DEC",
 },
 {
     0x1013,
     "Cirrus Logic",
 },
 {
     0x1014,
     "IBM",
 },
 {
     0x101c,
     "Western Digital",
 },
 {
     0x101e,
     "AMI",
 },
 {
     0x1022,
     "AMD",
 },
 {
     0x1023,
     "Trident",
 },
 {
     0x1025,
     "Acer",
 },
 {
     0x1028,
     "Dell",
 },
 {
     0x1029,
     "Siemens Nixdorf AG",
 },
 {
     0x102b,
     "Matrox",
 },
 {
     0x102c,
     "Chips and Technologies",
 },
 {
     0x102f,
     "Toshiba",
 },
 {
     0x1031,
     "Miro Computer Products AG",
 },
 {
     0x1033,
     "NEC",
 },
 {
     0x1036,
     "Future Domain",
 },
 {
     0x1037,
     "Hitachi Micro",
 },
 {
     0x1039,
     "SiS",
 },
 {
     0x103c,
     "Hewlett-Packard",
 },
 {
     0x1042,
     "PC Technology",
 },
 {
     0x1043,
     "Asustek",
 },
 {
     0x1044,
     "DPT",
 },
 {
     0x1045,
     "Opti",
 },
 {
     0x1048,
     "Elsa",
 },
 {
     0x104a,
     "SGS Thomson",
 },
 {
     0x104b,
     "BusLogic",
 },
 {
     0x104c,
     "TI",
 },
 {
     0x104d,
     "Sony",
 },
 {
     0x104e,
     "Oak Technology",
 },
 {
     0x1050,
     "Winbond",
 },
 {
     0x1054,
     "Hitachi",
 },
 {
     0x1055,
     "SMSC",
 },
 {
     0x1057,
     "Motorola",
 },
 {
     0x105a,
     "Promise",
 },
 {
     0x105b,
     "Foxconn",
 },
 {
     0x105d,
     "Number 9",
 },
 {
     0x1060,
     "UMC",
 },
 {
     0x1061,
     "ITT",
 },
 {
     0x1066,
     "Picopower",
 },
 {
     0x1069,
     "Mylex",
 },
 {
     0x106b,
     "Apple",
 },
 {
     0x1071,
     "Mitac",
 },
 {
     0x1073,
     "Yamaha",
 },
 {
     0x1074,
     "NexGen Microsystems",
 },
 {
     0x1077,
     "QLogic",
 },
 {
     0x1078,
     "Cyrix",
 },
 {
     0x107d,
     "LeadTek",
 },
 {
     0x107e,
     "Interphase",
 },
 {
     0x1080,
     "Contaq Microsystems",
 },
 {
     0x108a,
     "Bit3",
 },
 {
     0x108d,
     "Olicom",
 },
 {
     0x108e,
     "Sun",
 },
 {
     0x1091,
     "Intergraph",
 },
 {
     0x1092,
     "Diamond Multimedia",
 },
 {
     0x1093,
     "National Instruments",
 },
 {
     0x1095,
     "CMD Technology",
 },
 {
     0x1098,
     "Quantum Designs",
 },
 {
     0x109e,
     "Brooktree",
 },
 {
     0x10a9,
     "SGI",
 },
 {
     0x10aa,
     "ACC Microelectronics",
 },
 {
     0x10ad,
     "Symphony Labs",
 },
 {
     0x10b4,
     "STB Systems",
 },
 {
     0x10b5,
     "PLX",
 },
 {
     0x10b6,
     "Madge Networks",
 },
 {
     0x10b7,
     "3Com",
 },
 {
     0x10b8,
     "SMC",
 },
 {
     0x10b9,
     "Acer Labs",
 },
 {
     0x10ba,
     "Mitsubishi Electronics",
 },
 {
     0x10bd,
     "Surecom",
 },
 {
     0x10c8,
     "Neomagic",
 },
 {
     0x10cc,
     "Mentor ARC",
 },
 {
     0x10cd,
     "Advansys",
 },
 {
     0x10cf,
     "Fujitsu",
 },
 {
     0x10d2,
     "Molex",
 },
 {
     0x10d9,
     "Macronix",
 },
 {
     0x10dd,
     "Evans & Sutherland",
 },
 {
     0x10de,
     "NVIDIA",
 },
 {
     0x10df,
     "Emulex",
 },
 {
     0x10e0,
     "Integrated Micro Solutions",
 },
 {
     0x10e1,
     "Tekram (1st ID)",
 },
 {
     0x10e3,
     "Newbridge",
 },
 {
     0x10e8,
     "Applied Micro Circuits",
 },
 {
     0x10ea,
     "Tvia",
 },
 {
     0x10ec,
     "Realtek",
 },
 {
     0x10f5,
     "NKK",
 },
 {
     0x10fc,
     "IO Data Device",
 },
 {
     0x1101,
     "Initio",
 },
 {
     0x1102,
     "Creative Labs",
 },
 {
     0x1103,
     "HighPoint",
 },
 {
     0x1105,
     "Sigma Designs",
 },
 {
     0x1106,
     "VIA",
 },
 {
     0x1109,
     "Cogent Data",
 },
 {
     0x110a,
     "Siemens",
 },
 {
     0x110d,
     "Znyx Networks",
 },
 {
     0x1113,
     "Accton",
 },
 {
     0x1114,
     "Atmel",
 },
 {
     0x1119,
     "Vortex",
 },
 {
     0x111a,
     "Efficent Networks",
 },
 {
     0x111d,
     "IDT",
 },
 {
     0x1127,
     "FORE Systems",
 },
 {
     0x1131,
     "Philips",
 },
 {
     0x1137,
     "Cisco",
 },
 {
     0x1138,
     "Ziatech",
 },
 {
     0x113c,
     "Cyclone",
 },
 {
     0x113f,
     "Equinox",
 },
 {
     0x1142,
     "Alliance",
 },
 {
     0x1148,
     "Schneider & Koch",
 },
 {
     0x114f,
     "Digi",
 },
 {
     0x1159,
     "Mutech",
 },
 {
     0x115d,
     "Xircom",
 },
 {
     0x1163,
     "Rendition",
 },
 {
     0x1166,
     "ServerWorks",
 },
 {
     0x1172,
     "Altera",
 },
 {
     0x1179,
     "Toshiba",
 },
 {
     0x1180,
     "Ricoh",
 },
 {
     0x1186,
     "D-Link",
 },
 {
     0x118c,
     "Corollary",
 },
 {
     0x1191,
     "Acard",
 },
 {
     0x1193,
     "Zeinet",
 },
 {
     0x119b,
     "Omega Micro",
 },
 {
     0x11ab,
     "Marvell",
 },
 {
     0x11ad,
     "Lite-On",
 },
 {
     0x11b0,
     "V3 Semiconductor",
 },
 {
     0x11bd,
     "Pinnacle Systems",
 },
 {
     0x11c1,
     "AT&T/Lucent",
 },
 {
     0x11c8,
     "Dolphin",
 },
 {
     0x11c9,
     "Mesa Ridge (MAGMA)",
 },
 {
     0x11d4,
     "Analog Devices",
 },
 {
     0x11de,
     "Zoran",
 },
 {
     0x11e3,
     "Pijnenburg",
 },
 {
     0x11f6,
     "Compex",
 },
 {
     0x120e,
     "Cyclades",
 },
 {
     0x120f,
     "Essential Communications",
 },
 {
     0x1217,
     "O2 Micro",
 },
 {
     0x121a,
     "3DFX",
 },
 {
     0x121b,
     "ATML",
 },
 {
     0x1234,
     "Bochs",
 },
 {
     0x123f,
     "C-Cube",
 },
 {
     0x1244,
     "AVM",
 },
 {
     0x124d,
     "Stallion",
 },
 {
     0x1259,
     "Corega",
 },
 {
     0x125b,
     "ASIX",
 },
 {
     0x125d,
     "ESS",
 },
 {
     0x1260,
     "Intersil",
 },
 {
     0x126c,
     "Nortel Networks",
 },
 {
     0x126f,
     "Silicon Motion",
 },
 {
     0x1274,
     "Ensoniq",
 },
 {
     0x1279,
     "Transmeta",
 },
 {
     0x127a,
     "Rockwell",
 },
 {
     0x1282,
     "Davicom",
 },
 {
     0x1283,
     "ITExpress",
 },
 {
     0x1285,
     "Platform",
 },
 {
     0x1287,
     "LuxSonor",
 },
 {
     0x1292,
     "TriTech",
 },
 {
     0x12ae,
     "Alteon",
 },
 {
     0x12b9,
     "US Robotics",
 },
 {
     0x12d2,
     "NVIDIA/SGS-Thomson",
 },
 {
     0x12d8,
     "Pericom",
 },
 {
     0x12eb,
     "Aureal",
 },
 {
     0x1317,
     "ADMtek",
 },
 {
     0x1318,
     "Packet Engines",
 },
 {
     0x1319,
     "Forte Media",
 },
 {
     0x131f,
     "SIIG",
 },
 {
     0x134a,
     "DTC Tech",
 },
 {
     0x134d,
     "PCTEL",
 },
 {
     0x135a,
     "Brainboxes",
 },
 {
     0x1360,
     "Meinberg Funkuhren",
 },
 {
     0x1371,
     "CNet",
 },
 {
     0x1374,
     "Silicom",
 },
 {
     0x1376,
     "LAN Media",
 },
 {
     0x1385,
     "Netgear",
 },
 {
     0x1393,
     "Moxa",
 },
 {
     0x1394,
     "Level 1",
 },
 {
     0x13a3,
     "Hifn",
 },
 {
     0x13a8,
     "Exar",
 },
 {
     0x13c1,
     "3ware",
 },
 {
     0x13d0,
     "Techsan Electronics",
 },
 {
     0x13d1,
     "Abocom",
 },
 {
     0x13f0,
     "Sundance",
 },
 {
     0x13f6,
     "C-Media Electronics",
 },
 {
     0x1407,
     "Lava",
 },
 {
     0x1409,
     "Sunix",
 },
 {
     0x1412,
     "IC Ensemble",
 },
 {
     0x1414,
     "Microsoft",
 },
 {
     0x1415,
     "Oxford",
 },
 {
     0x1425,
     "Chelsio",
 },
 {
     0x1432,
     "Edimax",
 },
 {
     0x143d,
     "Tamarack",
 },
 {
     0x1145,
     "Workbit",
 },
 {
     0x144d,
     "Samsung",
 },
 {
     0x144f,
     "Askey",
 },
 {
     0x1461,
     "Avermedia",
 },
 {
     0x1462,
     "MSI",
 },
 {
     0x14b9,
     "Aironet",
 },
 {
     0x14bc,
     "Globespan",
 },
 {
     0x14c1,
     "Myricom",
 },
 {
     0x14d2,
     "VScom",
 },
 {
     0x14db,
     "Avlab",
 },
 {
     0x14e1,
     "Invertex",
 },
 {
     0x14e4,
     "Broadcom",
 },
 {
     0x14ea,
     "Planex",
 },
 {
     0x14f1,
     "Conexant",
 },
 {
     0x1500,
     "Delta",
 },
 {
     0x1516,
     "Myson Century",
 },
 {
     0x151f,
     "Topic/SmartLink",
 },
 {
     0x1524,
     "ENE",
 },
 {
     0x1538,
     "Aralion",
 },
 {
     0x153b,
     "TerraTec",
 },
 {
     0x155f,
     "Perle",
 },
 {
     0x1562,
     "Symbol",
 },
 {
     0x1592,
     "Syba",
 },
 {
     0x15ab,
     "Bluesteel",
 },
 {
     0x15ad,
     "VMware",
 },
 {
     0x15b0,
     "Zoltrix",
 },
 {
     0x15b3,
     "Mellanox",
 },
 {
     0x15bc,
     "Agilent",
 },
 {
     0x15e2,
     "Quicknet Technologies",
 },
 {
     0x15e8,
     "National Datacomm",
 },
 {
     0x15e9,
     "Pacific Data",
 },
 {
     0x1638,
     "Eumitcom",
 },
 {
     0x1657,
     "Brocade",
 },
 {
     0x1660,
     "NetSec",
 },
 {
     0x167b,
     "ZyDAS",
 },
 {
     0x167d,
     "Samsung",
 },
 {
     0x168c,
     "Atheros",
 },
 {
     0x16ab,
     "Global Sun",
 },
 {
     0x16ae,
     "SafeNet",
 },
 {
     0x16c6,
     "Micrel",
 },
 {
     0x16ec,
     "US Robotics",
 },
 {
     0x1725,
     "Vitesse",
 },
 {
     0x1737,
     "Linksys",
 },
 {
     0x170b,
     "Netoctave",
 },
 {
     0x173b,
     "Altima",
 },
 {
     0x1754,
     "Antares Microsystems",
 },
 {
     0x177d,
     "Cavium",
 },
 {
     0x1799,
     "Belkin",
 },
 {
     0x17aa,
     "Lenovo",
 },
 {
     0x17b3,
     "Hawking Technology",
 },
 {
     0x17cc,
     "NetChip Technology",
 },
 {
     0x17cf,
     "I4",
 },
 {
     0x17d3,
     "Areca",
 },
 {
     0x17d5,
     "Neterion",
 },
 {
     0x17f3,
     "RDC",
 },
 {
     0x17fe,
     "INPROCOMM",
 },
 {
     0x1812,
     "Lanergy",
 },
 {
     0x1814,
     "Ralink",
 },
 {
     0x18ca,
     "XGI Technology",
 },
 {
     0x1904,
     "Silan",
 },
 {
     0x1912,
     "Renesas",
 },
 {
     0x1923,
     "Sangoma",
 },
 {
     0x1924,
     "Solarflare",
 },
 {
     0x1931,
     "Option",
 },
 {
     0x1957,
     "Freescale",
 },
 {
     0x1969,
     "Attansic Technology",
 },
 {
     0x1971,
     "Ageia",
 },
 {
     0x197b,
     "JMicron",
 },
 {
     0x1987,
     "Phison",
 },
 {
     0x19a2,
     "ServerEngines",
 },
 {
     0x19e5,
     "Huawei",
 },
 {
     0x1a03,
     "ASPEED Technology",
 },
 {
     0x1a3b,
     "AWT",
 },
 {
     0x1ab8,
     "Parallels",
 },
 {
     0x1aed,
     "Fusion-io",
 },
 {
     0x1af4,
     "Qumranet",
 },
 {
     0x1b21,
     "ASMedia",
 },
 {
     0x1b36,
     "Red Hat",
 },
 {
     0x1b4b,
     "Marvell",
 },
 {
     0x1b6f,
     "Etron",
 },
 {
     0x1b73,
     "Fresco Logic",
 },
 {
     0x1c00,
     "Nanjing QinHeng Electronics",
 },
 {
     0x1c1c,
     "Symphony Labs",
 },
 {
     0x1d87,
     "Rockchip",
 },
 {
     0x1de1,
     "Tekram",
 },
 {
     0x1fc9,
     "Tehuti Networks",
 },
 {
     0x1fd4,
     "Sunix",
 },
 {
     0x3388,
     "Hint",
 },
 {
     0x3d3d,
     "3D Labs",
 },
 {
     0x4005,
     "Avance Logic",
 },
 {
     0x4033,
     "Addtron",
 },
 {
     0x4040,
     "NetXen",
 },
 {
     0x4348,
     "Nanjing QinHeng Electronics",
 },
 {
     0x4651,
     "TXIC",
 },
 {
     0x494f,
     "Industrial Computer Source",
 },
 {
     0x4a14,
     "NetVin",
 },
 {
     0x5046,
     "Gemtek",
 },
 {
     0x5053,
     "Turtle Beach",
 },
 {
     0x5333,
     "S3",
 },
 {
     0x5372,
     "MosChip",
 },
 {
     0x5853,
     "XenSource",
 },
 {
     0x6374,
     "c't Magazin",
 },
 {
     0x6666,
     "Decision Computer",
 },
 {
     0x8008,
     "Quancom Informationssysteme",
 },
 {
     0x8086,
     "Intel",
 },
 {
     0x80ee,
     "InnoTek",
 },
 {
     0x8384,
     "Sigmatel",
 },
 {
     0x8c4a,
     "Winbond",
 },
 {
     0x8e2e,
     "KTI",
 },
 {
     0x9004,
     "Adaptec",
 },
 {
     0x9005,
     "Adaptec",
 },
 {
     0x907f,
     "Atronics",
 },
 {
     0x9710,
     "NetMos",
 },
 {
     0xaaaa,
     "Parallels",
 },
 {
     0xa727,
     "3Com",
 },
 {
     0xe159,
     "TigerJet Network",
 },
 {
     0xeace,
     "Endace",
 },
 {
     0xec80,
     "Belkin Components",
 },
 {
     0xedd8,
     "ARC Logic",
 },
 {
     0xffff,
     "INVALID VENDOR ID",
 },
 { 0, ((void *)0), }
};
struct pci_class {
 const char *name;
 int val;
 const struct pci_class *subclasses;
};
const struct pci_class pci_subclass_prehistoric[] = {
 { "miscellaneous", 0x00, },
 { "VGA", 0x01, },
 { 0 }
};
const struct pci_class pci_subclass_mass_storage[] = {
 { "SCSI", 0x00, },
 { "IDE", 0x01, },
 { "floppy", 0x02, },
 { "IPI", 0x03, },
 { "RAID", 0x04, },
 { "ATA", 0x05, },
 { "SATA", 0x06, },
 { "SAS", 0x07, },
 { "UFS", 0x09, },
 { "miscellaneous", 0x80, },
 { 0 },
};
const struct pci_class pci_subclass_network[] = {
 { "ethernet", 0x00, },
 { "token ring", 0x01, },
 { "FDDI", 0x02, },
 { "ATM", 0x03, },
 { "ISDN", 0x04, },
 { "WorldFip", 0x05, },
 { "PCMIG Multi Computing", 0x06, },
 { "InfiniBand", 0x07, },
 { "miscellaneous", 0x80, },
 { 0 },
};
const struct pci_class pci_subclass_display[] = {
 { "VGA", 0x00, },
 { "XGA", 0x01, },
 { "3D", 0x02, },
 { "miscellaneous", 0x80, },
 { 0 },
};
const struct pci_class pci_subclass_multimedia[] = {
 { "video", 0x00, },
 { "audio", 0x01, },
 { "telephony", 0x02, },
 { "hdaudio", 0x03, },
 { "miscellaneous", 0x80, },
 { 0 },
};
const struct pci_class pci_subclass_memory[] = {
 { "RAM", 0x00, },
 { "flash", 0x01, },
 { "miscellaneous", 0x80, },
 { 0 },
};
const struct pci_class pci_subclass_bridge[] = {
 { "host", 0x00, },
 { "ISA", 0x01, },
 { "EISA", 0x02, },
 { "MicroChannel", 0x03, },
 { "PCI", 0x04, },
 { "PCMCIA", 0x05, },
 { "NuBus", 0x06, },
 { "CardBus", 0x07, },
 { "RACEway", 0x08, },
 { "Semi-transparent PCI", 0x09, },
 { "InfiniBand", 0x0a, },
 { "miscellaneous", 0x80, },
 { "advanced switching", 0x0b, },
 { 0 },
};
const struct pci_class pci_subclass_communications[] = {
 { "serial", 0x00, },
 { "parallel", 0x01, },
 { "multi-port serial", 0x02, },
 { "modem", 0x03, },
 { "GPIB", 0x04, },
 { "smartcard", 0x05, },
 { "miscellaneous", 0x80, },
 { 0 },
};
const struct pci_class pci_subclass_system[] = {
 { "interrupt", 0x00, },
 { "8237 DMA", 0x01, },
 { "8254 timer", 0x02, },
 { "RTC", 0x03, },
 { "PCI Hot-Plug", 0x04, },
 { "SD Host Controller", 0x05, },
 { "IOMMU", 0x06, },
 { "root complex event", 0x07, },
 { "miscellaneous", 0x80, },
 { 0 },
};
const struct pci_class pci_subclass_input[] = {
 { "keyboard", 0x00, },
 { "digitizer", 0x01, },
 { "mouse", 0x02, },
 { "scanner", 0x03, },
 { "game port", 0x04, },
 { "miscellaneous", 0x80, },
 { 0 },
};
const struct pci_class pci_subclass_dock[] = {
 { "generic", 0x00, },
 { "miscellaneous", 0x80, },
 { 0 },
};
const struct pci_class pci_subclass_processor[] = {
 { "386", 0x00, },
 { "486", 0x01, },
 { "Pentium", 0x02, },
 { "Alpha", 0x10, },
 { "PowerPC", 0x20, },
 { "MIPS", 0x30, },
 { "Co-processor", 0x40, },
 { 0 },
};
const struct pci_class pci_subclass_serialbus[] = {
 { "Firewire", 0x00, },
 { "ACCESS.bus", 0x01, },
 { "SSA", 0x02, },
 { "USB", 0x03, },
 { "Fiber Channel", 0x04, },
 { "SMBus", 0x05, },
 { "InfiniBand", 0x06, },
 { "IPMI", 0x07, },
 { "SERCOS", 0x08, },
 { "CANbus", 0x09, },
 { 0 },
};
const struct pci_class pci_subclass_wireless[] = {
 { "IrDA", 0x00, },
 { "Consumer IR", 0x01, },
 { "RF", 0x10, },
 { "bluetooth", 0x11, },
 { "broadband", 0x12, },
 { "802.11a (5 GHz)", 0x20, },
 { "802.11b (2.4 GHz)", 0x21, },
 { "miscellaneous", 0x80, },
 { 0 },
};
const struct pci_class pci_subclass_i2o[] = {
 { "standard", 0x00, },
 { 0 },
};
const struct pci_class pci_subclass_satcom[] = {
 { "TV", 0x01, },
 { "audio", 0x02, },
 { "voice", 0x03, },
 { "data", 0x04, },
 { 0 },
};
const struct pci_class pci_subclass_crypto[] = {
 { "network/computing", 0x00, },
 { "entertainment", 0x10, },
 { "miscellaneous", 0x80, },
 { 0 },
};
const struct pci_class pci_subclass_dasp[] = {
 { "DPIO", 0x00, },
 { "Time and Frequency", 0x01, },
 { "synchronization", 0x10, },
 { "management", 0x20, },
 { "miscellaneous", 0x80, },
 { 0 },
};
const struct pci_class pci_class[] = {
 { "prehistoric", 0x00,
     pci_subclass_prehistoric, },
 { "mass storage", 0x01,
     pci_subclass_mass_storage, },
 { "network", 0x02,
     pci_subclass_network, },
 { "display", 0x03,
     pci_subclass_display, },
 { "multimedia", 0x04,
     pci_subclass_multimedia, },
 { "memory", 0x05,
     pci_subclass_memory, },
 { "bridge", 0x06,
     pci_subclass_bridge, },
 { "communications", 0x07,
     pci_subclass_communications, },
 { "system", 0x08,
     pci_subclass_system, },
 { "input", 0x09,
     pci_subclass_input, },
 { "dock", 0x0a,
     pci_subclass_dock, },
 { "processor", 0x0b,
     pci_subclass_processor, },
 { "serial bus", 0x0c,
     pci_subclass_serialbus, },
 { "wireless", 0x0d,
     pci_subclass_wireless, },
 { "I2O", 0x0e,
     pci_subclass_i2o, },
 { "satellite comm", 0x0f,
     pci_subclass_satcom, },
 { "crypto", 0x10,
     pci_subclass_crypto, },
 { "DASP", 0x11,
     pci_subclass_dasp, },
 { "accelerator", 0x12,
     ((void *)0), },
 { "instrumentation", 0x13,
     ((void *)0), },
 { "undefined", 0xff,
     0, },
 { 0 },
};
const char *
pci_findvendor(pcireg_t id_reg)
{
 pci_vendor_id_t vendor = (((id_reg) >> 0) & 0xffff);
 const struct pci_known_vendor *kdp;
 kdp = pci_known_vendors;
        while (kdp->vendorname != ((void *)0)) {
                if (kdp->vendor == vendor)
                        break;
  kdp++;
 }
        return (kdp->vendorname);
}
const char *
pci_findproduct(pcireg_t id_reg)
{
 pci_vendor_id_t vendor = (((id_reg) >> 0) & 0xffff);
 pci_product_id_t product = (((id_reg) >> 16) & 0xffff);
 const struct pci_known_product *pkp;
 pkp = pci_known_products;
 while (pkp->productname != ((void *)0)) {
  if (pkp->vendor == vendor && pkp->product == product)
   break;
  pkp++;
 }
 return (pkp->productname);
}
void
pci_devinfo(pcireg_t id_reg, pcireg_t class_reg, int showclass, char *cp,
     size_t cp_max)
{
 pci_vendor_id_t vendor;
 pci_product_id_t product;
 pci_class_t class;
 pci_subclass_t subclass;
 pci_interface_t interface;
 pci_revision_t revision;
 const char *vendor_namep = ((void *)0), *product_namep = ((void *)0);
 const struct pci_class *classp, *subclassp;
 size_t cp_len = 0;
 const char *unmatched = "unknown ";
 vendor = (((id_reg) >> 0) & 0xffff);
 product = (((id_reg) >> 16) & 0xffff);
 class = (((class_reg) >> 24) & 0xff);
 subclass = (((class_reg) >> 16) & 0xff);
 interface = (((class_reg) >> 8) & 0xff);
 revision = (((class_reg) >> 0) & 0xff);
 vendor_namep = pci_findvendor(id_reg);
 if (vendor_namep != ((void *)0))
  product_namep = pci_findproduct(id_reg);
 classp = pci_class;
 while (classp->name != ((void *)0)) {
  if (class == classp->val)
   break;
  classp++;
 }
 subclassp = (classp->name != ((void *)0)) ? classp->subclasses : ((void *)0);
 while (subclassp && subclassp->name != ((void *)0)) {
  if (subclass == subclassp->val)
   break;
  subclassp++;
 }
 if (vendor_namep == ((void *)0))
  snprintf(cp, cp_max, "%svendor 0x%04x product 0x%04x",
      unmatched, vendor, product);
 else if (product_namep != ((void *)0))
  snprintf(cp, cp_max, "\"%s %s\"", vendor_namep, product_namep);
 else
  snprintf(cp, cp_max, "vendor \"%s\", unknown product 0x%04x",
      vendor_namep, product);
 if (showclass && product_namep == ((void *)0)) {
  strlcat(cp, " (", cp_max);
  cp_len = strlen(cp);
  if (classp->name == ((void *)0))
   snprintf(cp + cp_len, cp_max - cp_len,
       "unknown class 0x%02x, subclass 0x%02x",
       class, subclass);
  else if (subclassp == ((void *)0) || subclassp->name == ((void *)0))
   snprintf(cp + cp_len, cp_max - cp_len,
       "class %s unknown subclass 0x%02x", classp->name,
       subclass);
  else
   snprintf(cp + cp_len, cp_max - cp_len,
       "class %s subclass %s", classp->name,
       subclassp->name);
  cp_len = strlen(cp);
  snprintf(cp + cp_len, cp_max - cp_len,
      ", rev 0x%02x)", revision);
 } else {
  cp_len = strlen(cp);
  snprintf(cp + cp_len, cp_max - cp_len, " rev 0x%02x",
      revision);
 }
}
