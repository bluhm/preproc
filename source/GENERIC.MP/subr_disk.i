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
struct flock {
 off_t l_start;
 off_t l_len;
 pid_t l_pid;
 short l_type;
 short l_whence;
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
struct syslog_data {
 int log_stat;
 const char *log_tag;
 int log_fac;
 int log_mask;
};
void logpri(int);
void log(int, const char *, ...)
    __attribute__((__format__(__kprintf__,2,3)));
int addlog(const char *, ...)
    __attribute__((__format__(__kprintf__,1,2)));
void logwakeup(void);
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
struct uuid {
 uint32_t time_low;
 uint16_t time_mid;
 uint16_t time_hi_and_version;
 uint8_t clock_seq_hi_and_reserved;
 uint8_t clock_seq_low;
 uint8_t node[6];
};
int uuid_snprintf(char *, size_t, const struct uuid *);
int uuid_printf(const struct uuid *);
void uuid_dec_be(const void *, struct uuid *);
void uuid_dec_le(const void *, struct uuid *);
void uuid_enc_be(void *, const struct uuid *);
void uuid_enc_le(void *, const struct uuid *);
struct disklabel {
 u_int32_t d_magic;
 u_int16_t d_type;
 u_int16_t d_subtype;
 char d_typename[16];
 char d_packname[16];
 u_int32_t d_secsize;
 u_int32_t d_nsectors;
 u_int32_t d_ntracks;
 u_int32_t d_ncylinders;
 u_int32_t d_secpercyl;
 u_int32_t d_secperunit;
 u_char d_uid[8];
 u_int32_t d_acylinders;
 u_int16_t d_bstarth;
 u_int16_t d_bendh;
 u_int32_t d_bstart;
 u_int32_t d_bend;
 u_int32_t d_flags;
 u_int32_t d_drivedata[5];
 u_int16_t d_secperunith;
 u_int16_t d_version;
 u_int32_t d_spare[4];
 u_int32_t d_magic2;
 u_int16_t d_checksum;
 u_int16_t d_npartitions;
 u_int32_t d_bbsize;
 u_int32_t d_sbsize;
 struct partition {
  u_int32_t p_size;
  u_int32_t p_offset;
  u_int16_t p_offseth;
  u_int16_t p_sizeh;
  u_int8_t p_fstype;
  u_int8_t p_fragblock;
  u_int16_t p_cpg;
 } d_partitions[16];
};
struct __partitionv0 {
 u_int32_t p_size;
 u_int32_t p_offset;
 u_int32_t p_fsize;
 u_int8_t p_fstype;
 u_int8_t p_frag;
 union {
  u_int16_t cpg;
  u_int16_t sgs;
 } __partitionv0_u1;
};
struct partinfo {
 struct disklabel *disklab;
 struct partition *part;
};
struct gpt_header {
 u_int64_t gh_sig;
 u_int32_t gh_rev;
 u_int32_t gh_size;
 u_int32_t gh_csum;
 u_int32_t gh_rsvd;
 u_int64_t gh_lba_self;
 u_int64_t gh_lba_alt;
 u_int64_t gh_lba_start;
 u_int64_t gh_lba_end;
 struct uuid gh_guid;
 u_int64_t gh_part_lba;
 u_int32_t gh_part_num;
 u_int32_t gh_part_size;
 u_int32_t gh_part_csum;
};
struct gpt_partition {
 struct uuid gp_type;
 struct uuid gp_guid;
 u_int64_t gp_lba_start;
 u_int64_t gp_lba_end;
 u_int64_t gp_attrs;
 u_int16_t gp_name[36];
};
struct dos_partition {
 u_int8_t dp_flag;
 u_int8_t dp_shd;
 u_int8_t dp_ssect;
 u_int8_t dp_scyl;
 u_int8_t dp_typ;
 u_int8_t dp_ehd;
 u_int8_t dp_esect;
 u_int8_t dp_ecyl;
 u_int32_t dp_start;
 u_int32_t dp_size;
};
struct dos_mbr {
 u_int8_t dmbr_boot[446];
 struct dos_partition dmbr_parts[4];
 u_int16_t dmbr_sign;
} __attribute__((__packed__));
void diskerr(struct buf *, char *, char *, int, int, struct disklabel *);
u_int dkcksum(struct disklabel *);
int initdisklabel(struct disklabel *);
int checkdisklabel(void *, struct disklabel *, u_int64_t, u_int64_t);
int setdisklabel(struct disklabel *, struct disklabel *, u_int);
int readdisklabel(dev_t, void (*)(struct buf *), struct disklabel *, int);
int writedisklabel(dev_t, void (*)(struct buf *), struct disklabel *);
int bounds_check_with_label(struct buf *, struct disklabel *);
int readdisksector(struct buf *, void (*)(struct buf *),
     struct disklabel *, u_int64_t);
int readdoslabel(struct buf *, void (*)(struct buf *),
     struct disklabel *, daddr_t *, int);
int iso_disklabelspoof(dev_t dev, void (*strat)(struct buf *),
 struct disklabel *lp);
int udf_disklabelspoof(dev_t dev, void (*strat)(struct buf *),
 struct disklabel *lp);
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
struct buf;
struct disklabel;
struct diskstats {
 char ds_name[16];
 int ds_busy;
 u_int64_t ds_rxfer;
 u_int64_t ds_wxfer;
 u_int64_t ds_seek;
 u_int64_t ds_rbytes;
 u_int64_t ds_wbytes;
 struct timeval ds_attachtime;
 struct timeval ds_timestamp;
 struct timeval ds_time;
};
struct disk {
 struct { struct disk *tqe_next; struct disk **tqe_prev; } dk_link;
 struct rwlock dk_lock;
 struct mutex dk_mtx;
 char *dk_name;
 struct device *dk_device;
 dev_t dk_devno;
 int dk_flags;
 int dk_busy;
 u_int64_t dk_rxfer;
 u_int64_t dk_wxfer;
 u_int64_t dk_seek;
 u_int64_t dk_rbytes;
 u_int64_t dk_wbytes;
 struct timeval dk_attachtime;
 struct timeval dk_timestamp;
 struct timeval dk_time;
 int dk_bopenmask;
 int dk_copenmask;
 int dk_openmask;
 int dk_state;
 int dk_blkshift;
 int dk_byteshift;
 struct disklabel *dk_label;
};
struct disklist_head { struct disk *tqh_first; struct disk **tqh_last; };
extern struct disklist_head disklist;
extern int disk_count;
extern int disk_change;
void disk_init(void);
int disk_construct(struct disk *);
void disk_attach(struct device *, struct disk *);
void disk_detach(struct disk *);
int disk_openpart(struct disk *, int, int, int);
void disk_closepart(struct disk *, int, int);
void disk_gone(int (*)(dev_t, int, int, struct proc *), int);
void disk_busy(struct disk *);
void disk_unbusy(struct disk *, long, daddr_t, int);
int disk_lock(struct disk *);
void disk_lock_nointr(struct disk *);
void disk_unlock(struct disk *);
struct device *disk_lookup(struct cfdriver *, int);
char *disk_readlabel(struct disklabel *, dev_t, char *, size_t);
int disk_map(char *, char *, int, int);
int duid_iszero(u_char *);
const char *duid_format(u_char *);

__attribute__((__noreturn__)) void reboot(int);
__attribute__((__noreturn__)) void boot(int);

struct dk_inquiry {
 char vendor[64];
 char product[128];
 char revision[64];
 char serial[64];
};
struct dk_cache {
 unsigned int wrcache;
 unsigned int rdcache;
};
struct dk_diskmap {
 char *device;
 int fd;
 int flags;
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
struct soqhead { struct socket *tqh_first; struct socket **tqh_last; };
struct socket {
 short so_type;
 short so_options;
 short so_linger;
 short so_state;
 void *so_pcb;
 const struct protosw *so_proto;
 struct socket *so_head;
 struct soqhead *so_onq;
 struct soqhead so_q0;
 struct soqhead so_q;
 struct { struct socket *tqe_next; struct socket **tqe_prev; } so_qe;
 short so_q0len;
 short so_qlen;
 short so_qlimit;
 short so_timeo;
 u_short so_error;
 pid_t so_pgid;
 uid_t so_siguid;
 uid_t so_sigeuid;
 u_long so_oobmark;
 struct sosplice {
  struct socket *ssp_socket;
  struct socket *ssp_soback;
  off_t ssp_len;
  off_t ssp_max;
  struct timeval ssp_idletv;
  struct timeout ssp_idleto;
  struct task ssp_task;
 } *so_sp;
 struct sockbuf {
  u_long sb_cc;
  u_long sb_datacc;
  u_long sb_hiwat;
  u_long sb_wat;
  u_long sb_mbcnt;
  u_long sb_mbmax;
  long sb_lowat;
  struct mbuf *sb_mb;
  struct mbuf *sb_mbtail;
  struct mbuf *sb_lastrecord;
  u_short sb_timeo;
  short sb_flags;
  int sb_flagsintr;
  struct selinfo sb_sel;
 } so_rcv, so_snd;
 void (*so_upcall)(struct socket *so, caddr_t arg, int waitf);
 caddr_t so_upcallarg;
 uid_t so_euid, so_ruid;
 gid_t so_egid, so_rgid;
 pid_t so_cpid;
};
void soassertlocked(struct socket *);
static inline int
sb_notify(struct socket *so, struct sockbuf *sb)
{
 int flags = (sb->sb_flags | sb->sb_flagsintr);
 ((sb == &so->so_rcv || sb == &so->so_snd) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../sys/socketvar.h", 178, "sb == &so->so_rcv || sb == &so->so_snd"));
 soassertlocked(so);
 return ((flags & (0x04|0x08|0x10|0x20|0x80)) != 0);
}
static inline long
sbspace(struct socket *so, struct sockbuf *sb)
{
 ((sb == &so->so_rcv || sb == &so->so_snd) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../sys/socketvar.h", 192, "sb == &so->so_rcv || sb == &so->so_snd"));
 return lmin(sb->sb_hiwat - sb->sb_cc, sb->sb_mbmax - sb->sb_mbcnt);
}
static inline int
soreadable(struct socket *so)
{
 soassertlocked(so);
 if (((so)->so_sp && (so)->so_sp->ssp_socket))
  return 0;
 return (so->so_state & 0x020) || so->so_qlen || so->so_error ||
     so->so_rcv.sb_cc >= so->so_rcv.sb_lowat;
}
int sblock(struct socket *, struct sockbuf *, int);
void sbunlock(struct socket *, struct sockbuf *);
extern u_long sb_max;
extern struct pool socket_pool;
struct mbuf;
struct sockaddr;
struct proc;
struct msghdr;
struct stat;
struct knote;
int soo_read(struct file *fp, off_t *, struct uio *uio,
     struct ucred *cred);
int soo_write(struct file *fp, off_t *, struct uio *uio,
     struct ucred *cred);
int soo_ioctl(struct file *fp, u_long cmd, caddr_t data,
     struct proc *p);
int soo_poll(struct file *fp, int events, struct proc *p);
int soo_kqfilter(struct file *fp, struct knote *kn);
int soo_close(struct file *fp, struct proc *p);
int soo_stat(struct file *, struct stat *, struct proc *);
void sbappend(struct socket *, struct sockbuf *, struct mbuf *);
void sbappendstream(struct socket *, struct sockbuf *, struct mbuf *);
int sbappendaddr(struct socket *, struct sockbuf *, struct sockaddr *,
     struct mbuf *, struct mbuf *);
int sbappendcontrol(struct socket *, struct sockbuf *, struct mbuf *,
     struct mbuf *);
void sbappendrecord(struct socket *, struct sockbuf *, struct mbuf *);
void sbcompress(struct sockbuf *sb, struct mbuf *m, struct mbuf *n);
struct mbuf *
 sbcreatecontrol(caddr_t p, int size, int type, int level);
void sbdrop(struct socket *, struct sockbuf *, int);
void sbdroprecord(struct sockbuf *sb);
void sbflush(struct socket *, struct sockbuf *);
void sbinsertoob(struct sockbuf *sb, struct mbuf *m0);
void sbrelease(struct socket *, struct sockbuf *);
int sbcheckreserve(u_long cnt, u_long defcnt);
int sbchecklowmem(void);
int sbreserve(struct socket *, struct sockbuf *, u_long);
int sbwait(struct socket *, struct sockbuf *sb);
int sb_lock(struct sockbuf *sb);
void soinit(void);
int soabort(struct socket *so);
int soaccept(struct socket *so, struct mbuf *nam);
int sobind(struct socket *so, struct mbuf *nam, struct proc *p);
void socantrcvmore(struct socket *so);
void socantsendmore(struct socket *so);
int soclose(struct socket *so);
int soconnect(struct socket *so, struct mbuf *nam);
int soconnect2(struct socket *so1, struct socket *so2);
int socreate(int dom, struct socket **aso, int type, int proto);
int sodisconnect(struct socket *so);
void sofree(struct socket *so);
int sogetopt(struct socket *so, int level, int optname, struct mbuf *m);
void sohasoutofband(struct socket *so);
void soisconnected(struct socket *so);
void soisconnecting(struct socket *so);
void soisdisconnected(struct socket *so);
void soisdisconnecting(struct socket *so);
int solisten(struct socket *so, int backlog);
struct socket *sonewconn(struct socket *head, int connstatus);
void soqinsque(struct socket *head, struct socket *so, int q);
int soqremque(struct socket *so, int q);
int soreceive(struct socket *so, struct mbuf **paddr, struct uio *uio,
     struct mbuf **mp0, struct mbuf **controlp, int *flagsp,
     socklen_t controllen);
int soreserve(struct socket *so, u_long sndcc, u_long rcvcc);
void sorflush(struct socket *so);
int sosend(struct socket *so, struct mbuf *addr, struct uio *uio,
     struct mbuf *top, struct mbuf *control, int flags);
int sosetopt(struct socket *so, int level, int optname, struct mbuf *m);
int soshutdown(struct socket *so, int how);
void sowakeup(struct socket *so, struct sockbuf *sb);
void sorwakeup(struct socket *);
void sowwakeup(struct socket *);
int sockargs(struct mbuf **, const void *, size_t, int);
int sosleep(struct socket *, void *, int, const char *, int);
int solock(struct socket *);
void sounlock(int);
int sendit(struct proc *, int, struct msghdr *, int, register_t *);
int recvit(struct proc *, int, struct msghdr *, caddr_t,
      register_t *);
int doaccept(struct proc *, int, struct sockaddr *, socklen_t *, int,
     register_t *);
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
void random_start(void);
void enqueue_randomness(unsigned int, unsigned int);
void suspend_randomness(void);
void resume_randomness(char *, size_t);
struct consdev {
 void (*cn_probe)(struct consdev *);
 void (*cn_init)(struct consdev *);
 int (*cn_getc)(dev_t);
 void (*cn_putc)(dev_t, int);
 void (*cn_pollc)(dev_t, int);
 void (*cn_bell)(dev_t, u_int, u_int, u_int);
 dev_t cn_dev;
 u_int cn_pri;
};
extern struct consdev constab[];
extern struct consdev *cn_tab;
extern struct tty *constty;
extern struct vnode *cn_devvp;
struct knote;
void cninit(void);
int cnopen(dev_t, int, int, struct proc *);
int cnclose(dev_t, int, int, struct proc *);
int cnread(dev_t, struct uio *, int);
int cnwrite(dev_t, struct uio *, int);
int cnioctl(dev_t, u_long, caddr_t, int, struct proc *);
int cnpoll(dev_t, int, struct proc *);
int cnkqfilter(dev_t, struct knote *);
int cngetc(void);
void cnputc(int);
void cnpollc(int);
void cnbell(u_int, u_int, u_int);
void cnrint(void);
void nullcnpollc(dev_t, int);
typedef unsigned char Byte;
typedef unsigned int uInt;
typedef unsigned long uLong;
   typedef Byte Bytef;
typedef char charf;
typedef int intf;
typedef uInt uIntf;
typedef uLong uLongf;
   typedef void const *voidpc;
   typedef void *voidpf;
   typedef void *voidp;
struct __tfork {
 void *tf_tcb;
 pid_t *tf_tid;
 void *tf_stack;
};
struct __kbind {
 void *kb_addr;
 size_t kb_size;
};
typedef voidpf (*alloc_func) (voidpf opaque, uInt items, uInt size);
typedef void (*free_func) (voidpf opaque, voidpf address);
struct internal_state;
typedef struct z_stream_s {
    Bytef *next_in;
    uInt avail_in;
    off_t total_in;
    Bytef *next_out;
    uInt avail_out;
    off_t total_out;
    char *msg;
    struct internal_state *state;
    alloc_func zalloc;
    free_func zfree;
    voidpf opaque;
    int data_type;
    uLong adler;
    uLong reserved;
} z_stream;
typedef z_stream *z_streamp;
typedef struct gz_header_s {
    int text;
    uLong time;
    int xflags;
    int os;
    Bytef *extra;
    uInt extra_len;
    uInt extra_max;
    Bytef *name;
    uInt name_max;
    Bytef *comment;
    uInt comm_max;
    int hcrc;
    int done;
} gz_header;
typedef gz_header *gz_headerp;
extern const char * zlibVersion (void);
extern int deflate (z_streamp strm, int flush);
extern int deflateEnd (z_streamp strm);
extern int inflate (z_streamp strm, int flush);
extern int inflateEnd (z_streamp strm);
extern int deflateSetDictionary (z_streamp strm, const Bytef *dictionary, uInt dictLength);
extern int deflateCopy (z_streamp dest, z_streamp source);
extern int deflateReset (z_streamp strm);
extern int deflateParams (z_streamp strm, int level, int strategy);
extern int deflateTune (z_streamp strm, int good_length, int max_lazy, int nice_length, int max_chain);
extern uLong deflateBound (z_streamp strm, uLong sourceLen);
extern int deflatePrime (z_streamp strm, int bits, int value);
extern int deflateSetHeader (z_streamp strm, gz_headerp head);
extern int inflateSetDictionary (z_streamp strm, const Bytef *dictionary, uInt dictLength);
extern int inflateSync (z_streamp strm);
extern int inflateCopy (z_streamp dest, z_streamp source);
extern int inflateReset (z_streamp strm);
extern int inflatePrime (z_streamp strm, int bits, int value);
extern int inflateGetHeader (z_streamp strm, gz_headerp head);
typedef unsigned (*in_func) (void *, unsigned char * *);
typedef int (*out_func) (void *, unsigned char *, unsigned);
extern int inflateBack (z_streamp strm, in_func in, void *in_desc, out_func out, void *out_desc);
extern int inflateBackEnd (z_streamp strm);
extern uLong zlibCompileFlags (void);
extern int compress (Bytef *dest, uLongf *destLen, const Bytef *source, uLong sourceLen);
extern int compress2 (Bytef *dest, uLongf *destLen, const Bytef *source, uLong sourceLen, int level);
extern uLong compressBound (uLong sourceLen);
extern int uncompress (Bytef *dest, uLongf *destLen, const Bytef *source, uLong sourceLen);
typedef voidp gzFile;
extern gzFile gzopen (const char *path, const char *mode);
extern gzFile gzdopen (int fd, const char *mode);
extern int gzsetparams (gzFile file, int level, int strategy);
extern int gzread (gzFile file, voidp buf, unsigned len);
extern int gzwrite (gzFile file, voidpc buf, unsigned len);
extern int gzprintf (gzFile file, const char *format, ...);
extern int gzputs (gzFile file, const char *s);
extern char * gzgets (gzFile file, char *buf, int len);
extern int gzputc (gzFile file, int c);
extern int gzgetc (gzFile file);
extern int gzungetc (int c, gzFile file);
extern int gzflush (gzFile file, int flush);
extern off_t gzseek (gzFile file, off_t offset, int whence);
extern int gzrewind (gzFile file);
extern off_t gztell (gzFile file);
extern int gzeof (gzFile file);
extern int gzdirect (gzFile file);
extern int gzclose (gzFile file);
extern const char * gzerror (gzFile file, int *errnum);
extern void gzclearerr (gzFile file);
extern uLong adler32 (uLong adler, const Bytef *buf, uInt len);
extern uLong adler32_combine (uLong adler1, uLong adler2, off_t len2);
extern uLong crc32 (uLong crc, const Bytef *buf, uInt len);
extern uLong crc32_combine (uLong crc1, uLong crc2, off_t len2);
extern int deflateInit_ (z_streamp strm, int level, const char *version, int stream_size);
extern int inflateInit_ (z_streamp strm, const char *version, int stream_size);
extern int deflateInit2_ (z_streamp strm, int level, int method, int windowBits, int memLevel, int strategy, const char *version, int stream_size);
extern int inflateInit2_ (z_streamp strm, int windowBits, const char *version, int stream_size);
extern int inflateBackInit_ (z_streamp strm, int windowBits, unsigned char *window, const char *version, int stream_size);
    struct internal_state {int dummy;};
extern const char * zError (int);
extern int inflateSyncPoint (z_streamp z);
extern const uLongf * get_crc_table (void);
struct disklist_head disklist;
int disk_count;
int disk_change;
u_char bootduid[8];
u_char rootduid[8];
void (*softraid_disk_attach)(struct disk *, int);
void sr_map_root(void);
struct disk_attach_task {
 struct task task;
 struct disk *dk;
};
void disk_attach_callback(void *);
int spoofgptlabel(struct buf *, void (*)(struct buf *), struct disklabel *);
int gpt_chk_mbr(struct dos_partition *, u_int64_t);
int gpt_chk_hdr(struct gpt_header *, struct disklabel *);
int gpt_chk_parts(struct gpt_header *, struct gpt_partition *);
int gpt_get_fstype(struct uuid *);
int duid_equal(u_char *, u_char *);
u_int
dkcksum(struct disklabel *lp)
{
 u_int16_t *start, *end;
 u_int16_t sum = 0;
 start = (u_int16_t *)lp;
 end = (u_int16_t *)&lp->d_partitions[lp->d_npartitions];
 while (start < end)
  sum ^= *start++;
 return (sum);
}
int
initdisklabel(struct disklabel *lp)
{
 int i;
 if (lp->d_secsize < (1 << 9))
  lp->d_secsize = (1 << 9);
 if ((((u_int64_t)(lp)->d_secperunith << 32) + (lp)->d_secperunit) == 0)
  do { u_int64_t x = (0x7fffffffffffLL); (lp)->d_secperunith = x >> 32; (lp)->d_secperunit = x; } while (0);
 if (lp->d_secpercyl == 0)
  return (34);
 lp->d_npartitions = 16;
 for (i = 0; i < 2; i++) {
  do { u_int64_t x = (0); (&lp->d_partitions[i])->p_sizeh = x >> 32; (&lp->d_partitions[i])->p_size = x; } while (0);
  do { u_int64_t x = (0); (&lp->d_partitions[i])->p_offseth = x >> 32; (&lp->d_partitions[i])->p_offset = x; } while (0);
 }
 if ((((u_int64_t)(&lp->d_partitions[2])->p_sizeh << 32) + (&lp->d_partitions[2])->p_size) == 0)
  do { u_int64_t x = ((((u_int64_t)(lp)->d_secperunith << 32) + (lp)->d_secperunit)); (&lp->d_partitions[2])->p_sizeh = x >> 32; (&lp->d_partitions[2])->p_size = x; } while (0);
 do { u_int64_t x = (0); (&lp->d_partitions[2])->p_offseth = x >> 32; (&lp->d_partitions[2])->p_offset = x; } while (0);
 do { u_int64_t x = (0); (lp)->d_bstarth = x >> 32; (lp)->d_bstart = x; } while (0);
 do { u_int64_t x = ((((u_int64_t)(lp)->d_secperunith << 32) + (lp)->d_secperunit)); (lp)->d_bendh = x >> 32; (lp)->d_bend = x; } while (0);
 lp->d_version = 1;
 lp->d_bbsize = 8192;
 lp->d_sbsize = 64*1024;
 return (0);
}
int
checkdisklabel(void *rlp, struct disklabel *lp, u_int64_t boundstart,
    u_int64_t boundend)
{
 struct disklabel *dlp = rlp;
 struct __partitionv0 *v0pp;
 struct partition *pp;
 u_int64_t disksize;
 int error = 0;
 int i;
 if (dlp->d_magic != ((u_int32_t)0x82564557) || dlp->d_magic2 != ((u_int32_t)0x82564557))
  error = 2;
 else if (dlp->d_npartitions > 16)
  error = 7;
 else if (dlp->d_secpercyl == 0)
  error = 22;
 else if (dlp->d_secsize == 0)
  error = 28;
 else if (dkcksum(dlp) != 0)
  error = 22;
 if (error) {
  u_int16_t *start, *end, sum = 0;
  if ((__builtin_constant_p(dlp->d_magic) ? (__uint32_t)(((__uint32_t)(dlp->d_magic) & 0xff) << 24 | ((__uint32_t)(dlp->d_magic) & 0xff00) << 8 | ((__uint32_t)(dlp->d_magic) & 0xff0000) >> 8 | ((__uint32_t)(dlp->d_magic) & 0xff000000) >> 24) : __swap32md(dlp->d_magic)) != ((u_int32_t)0x82564557) ||
      (__builtin_constant_p(dlp->d_magic2) ? (__uint32_t)(((__uint32_t)(dlp->d_magic2) & 0xff) << 24 | ((__uint32_t)(dlp->d_magic2) & 0xff00) << 8 | ((__uint32_t)(dlp->d_magic2) & 0xff0000) >> 8 | ((__uint32_t)(dlp->d_magic2) & 0xff000000) >> 24) : __swap32md(dlp->d_magic2)) != ((u_int32_t)0x82564557) ||
      (__builtin_constant_p(dlp->d_npartitions) ? (__uint16_t)(((__uint16_t)(dlp->d_npartitions) & 0xffU) << 8 | ((__uint16_t)(dlp->d_npartitions) & 0xff00U) >> 8) : __swap16md(dlp->d_npartitions)) > 16)
   return (error);
  start = (u_int16_t *)dlp;
  end = (u_int16_t *)&dlp->d_partitions[
      (__builtin_constant_p(dlp->d_npartitions) ? (__uint16_t)(((__uint16_t)(dlp->d_npartitions) & 0xffU) << 8 | ((__uint16_t)(dlp->d_npartitions) & 0xff00U) >> 8) : __swap16md(dlp->d_npartitions))];
  while (start < end)
   sum ^= *start++;
  if (sum != 0)
   return (error);
  dlp->d_magic = (__builtin_constant_p(dlp->d_magic) ? (__uint32_t)(((__uint32_t)(dlp->d_magic) & 0xff) << 24 | ((__uint32_t)(dlp->d_magic) & 0xff00) << 8 | ((__uint32_t)(dlp->d_magic) & 0xff0000) >> 8 | ((__uint32_t)(dlp->d_magic) & 0xff000000) >> 24) : __swap32md(dlp->d_magic));
  dlp->d_type = (__builtin_constant_p(dlp->d_type) ? (__uint16_t)(((__uint16_t)(dlp->d_type) & 0xffU) << 8 | ((__uint16_t)(dlp->d_type) & 0xff00U) >> 8) : __swap16md(dlp->d_type));
  dlp->d_secsize = (__builtin_constant_p(dlp->d_secsize) ? (__uint32_t)(((__uint32_t)(dlp->d_secsize) & 0xff) << 24 | ((__uint32_t)(dlp->d_secsize) & 0xff00) << 8 | ((__uint32_t)(dlp->d_secsize) & 0xff0000) >> 8 | ((__uint32_t)(dlp->d_secsize) & 0xff000000) >> 24) : __swap32md(dlp->d_secsize));
  dlp->d_nsectors = (__builtin_constant_p(dlp->d_nsectors) ? (__uint32_t)(((__uint32_t)(dlp->d_nsectors) & 0xff) << 24 | ((__uint32_t)(dlp->d_nsectors) & 0xff00) << 8 | ((__uint32_t)(dlp->d_nsectors) & 0xff0000) >> 8 | ((__uint32_t)(dlp->d_nsectors) & 0xff000000) >> 24) : __swap32md(dlp->d_nsectors));
  dlp->d_ntracks = (__builtin_constant_p(dlp->d_ntracks) ? (__uint32_t)(((__uint32_t)(dlp->d_ntracks) & 0xff) << 24 | ((__uint32_t)(dlp->d_ntracks) & 0xff00) << 8 | ((__uint32_t)(dlp->d_ntracks) & 0xff0000) >> 8 | ((__uint32_t)(dlp->d_ntracks) & 0xff000000) >> 24) : __swap32md(dlp->d_ntracks));
  dlp->d_ncylinders = (__builtin_constant_p(dlp->d_ncylinders) ? (__uint32_t)(((__uint32_t)(dlp->d_ncylinders) & 0xff) << 24 | ((__uint32_t)(dlp->d_ncylinders) & 0xff00) << 8 | ((__uint32_t)(dlp->d_ncylinders) & 0xff0000) >> 8 | ((__uint32_t)(dlp->d_ncylinders) & 0xff000000) >> 24) : __swap32md(dlp->d_ncylinders));
  dlp->d_secpercyl = (__builtin_constant_p(dlp->d_secpercyl) ? (__uint32_t)(((__uint32_t)(dlp->d_secpercyl) & 0xff) << 24 | ((__uint32_t)(dlp->d_secpercyl) & 0xff00) << 8 | ((__uint32_t)(dlp->d_secpercyl) & 0xff0000) >> 8 | ((__uint32_t)(dlp->d_secpercyl) & 0xff000000) >> 24) : __swap32md(dlp->d_secpercyl));
  dlp->d_secperunit = (__builtin_constant_p(dlp->d_secperunit) ? (__uint32_t)(((__uint32_t)(dlp->d_secperunit) & 0xff) << 24 | ((__uint32_t)(dlp->d_secperunit) & 0xff00) << 8 | ((__uint32_t)(dlp->d_secperunit) & 0xff0000) >> 8 | ((__uint32_t)(dlp->d_secperunit) & 0xff000000) >> 24) : __swap32md(dlp->d_secperunit));
  dlp->d_acylinders = (__builtin_constant_p(dlp->d_acylinders) ? (__uint32_t)(((__uint32_t)(dlp->d_acylinders) & 0xff) << 24 | ((__uint32_t)(dlp->d_acylinders) & 0xff00) << 8 | ((__uint32_t)(dlp->d_acylinders) & 0xff0000) >> 8 | ((__uint32_t)(dlp->d_acylinders) & 0xff000000) >> 24) : __swap32md(dlp->d_acylinders));
  dlp->d_flags = (__builtin_constant_p(dlp->d_flags) ? (__uint32_t)(((__uint32_t)(dlp->d_flags) & 0xff) << 24 | ((__uint32_t)(dlp->d_flags) & 0xff00) << 8 | ((__uint32_t)(dlp->d_flags) & 0xff0000) >> 8 | ((__uint32_t)(dlp->d_flags) & 0xff000000) >> 24) : __swap32md(dlp->d_flags));
  for (i = 0; i < 5; i++)
   dlp->d_drivedata[i] = (__builtin_constant_p(dlp->d_drivedata[i]) ? (__uint32_t)(((__uint32_t)(dlp->d_drivedata[i]) & 0xff) << 24 | ((__uint32_t)(dlp->d_drivedata[i]) & 0xff00) << 8 | ((__uint32_t)(dlp->d_drivedata[i]) & 0xff0000) >> 8 | ((__uint32_t)(dlp->d_drivedata[i]) & 0xff000000) >> 24) : __swap32md(dlp->d_drivedata[i]));
  dlp->d_secperunith = (__builtin_constant_p(dlp->d_secperunith) ? (__uint16_t)(((__uint16_t)(dlp->d_secperunith) & 0xffU) << 8 | ((__uint16_t)(dlp->d_secperunith) & 0xff00U) >> 8) : __swap16md(dlp->d_secperunith));
  dlp->d_version = (__builtin_constant_p(dlp->d_version) ? (__uint16_t)(((__uint16_t)(dlp->d_version) & 0xffU) << 8 | ((__uint16_t)(dlp->d_version) & 0xff00U) >> 8) : __swap16md(dlp->d_version));
  for (i = 0; i < 4; i++)
   dlp->d_spare[i] = (__builtin_constant_p(dlp->d_spare[i]) ? (__uint32_t)(((__uint32_t)(dlp->d_spare[i]) & 0xff) << 24 | ((__uint32_t)(dlp->d_spare[i]) & 0xff00) << 8 | ((__uint32_t)(dlp->d_spare[i]) & 0xff0000) >> 8 | ((__uint32_t)(dlp->d_spare[i]) & 0xff000000) >> 24) : __swap32md(dlp->d_spare[i]));
  dlp->d_magic2 = (__builtin_constant_p(dlp->d_magic2) ? (__uint32_t)(((__uint32_t)(dlp->d_magic2) & 0xff) << 24 | ((__uint32_t)(dlp->d_magic2) & 0xff00) << 8 | ((__uint32_t)(dlp->d_magic2) & 0xff0000) >> 8 | ((__uint32_t)(dlp->d_magic2) & 0xff000000) >> 24) : __swap32md(dlp->d_magic2));
  dlp->d_npartitions = (__builtin_constant_p(dlp->d_npartitions) ? (__uint16_t)(((__uint16_t)(dlp->d_npartitions) & 0xffU) << 8 | ((__uint16_t)(dlp->d_npartitions) & 0xff00U) >> 8) : __swap16md(dlp->d_npartitions));
  dlp->d_bbsize = (__builtin_constant_p(dlp->d_bbsize) ? (__uint32_t)(((__uint32_t)(dlp->d_bbsize) & 0xff) << 24 | ((__uint32_t)(dlp->d_bbsize) & 0xff00) << 8 | ((__uint32_t)(dlp->d_bbsize) & 0xff0000) >> 8 | ((__uint32_t)(dlp->d_bbsize) & 0xff000000) >> 24) : __swap32md(dlp->d_bbsize));
  dlp->d_sbsize = (__builtin_constant_p(dlp->d_sbsize) ? (__uint32_t)(((__uint32_t)(dlp->d_sbsize) & 0xff) << 24 | ((__uint32_t)(dlp->d_sbsize) & 0xff00) << 8 | ((__uint32_t)(dlp->d_sbsize) & 0xff0000) >> 8 | ((__uint32_t)(dlp->d_sbsize) & 0xff000000) >> 24) : __swap32md(dlp->d_sbsize));
  for (i = 0; i < 16; i++) {
   pp = &dlp->d_partitions[i];
   pp->p_size = (__builtin_constant_p(pp->p_size) ? (__uint32_t)(((__uint32_t)(pp->p_size) & 0xff) << 24 | ((__uint32_t)(pp->p_size) & 0xff00) << 8 | ((__uint32_t)(pp->p_size) & 0xff0000) >> 8 | ((__uint32_t)(pp->p_size) & 0xff000000) >> 24) : __swap32md(pp->p_size));
   pp->p_offset = (__builtin_constant_p(pp->p_offset) ? (__uint32_t)(((__uint32_t)(pp->p_offset) & 0xff) << 24 | ((__uint32_t)(pp->p_offset) & 0xff00) << 8 | ((__uint32_t)(pp->p_offset) & 0xff0000) >> 8 | ((__uint32_t)(pp->p_offset) & 0xff000000) >> 24) : __swap32md(pp->p_offset));
   if (dlp->d_version == 0) {
    v0pp = (struct __partitionv0 *)pp;
    v0pp->p_fsize = (__builtin_constant_p(v0pp->p_fsize) ? (__uint32_t)(((__uint32_t)(v0pp->p_fsize) & 0xff) << 24 | ((__uint32_t)(v0pp->p_fsize) & 0xff00) << 8 | ((__uint32_t)(v0pp->p_fsize) & 0xff0000) >> 8 | ((__uint32_t)(v0pp->p_fsize) & 0xff000000) >> 24) : __swap32md(v0pp->p_fsize));
   } else {
    pp->p_offseth = (__builtin_constant_p(pp->p_offseth) ? (__uint16_t)(((__uint16_t)(pp->p_offseth) & 0xffU) << 8 | ((__uint16_t)(pp->p_offseth) & 0xff00U) >> 8) : __swap16md(pp->p_offseth));
    pp->p_sizeh = (__builtin_constant_p(pp->p_sizeh) ? (__uint16_t)(((__uint16_t)(pp->p_sizeh) & 0xffU) << 8 | ((__uint16_t)(pp->p_sizeh) & 0xff00U) >> 8) : __swap16md(pp->p_sizeh));
   }
   pp->p_cpg = (__builtin_constant_p(pp->p_cpg) ? (__uint16_t)(((__uint16_t)(pp->p_cpg) & 0xffU) << 8 | ((__uint16_t)(pp->p_cpg) & 0xff00U) >> 8) : __swap16md(pp->p_cpg));
  }
  dlp->d_checksum = 0;
  dlp->d_checksum = dkcksum(dlp);
  error = 0;
 }
 disksize = (((u_int64_t)(lp)->d_secperunith << 32) + (lp)->d_secperunit);
 if (lp != dlp)
  *lp = *dlp;
 if (lp->d_version == 0) {
  lp->d_version = 1;
  lp->d_secperunith = 0;
  v0pp = (struct __partitionv0 *)lp->d_partitions;
  pp = lp->d_partitions;
  for (i = 0; i < lp->d_npartitions; i++, pp++, v0pp++) {
   pp->p_fragblock = ((v0pp-> p_fsize) * (v0pp->p_frag) == 0 ? 0 : (((ffs((v0pp-> p_fsize) * (v0pp->p_frag)) - 13) << 3) | (ffs(v0pp->p_frag))));
   pp->p_offseth = 0;
   pp->p_sizeh = 0;
  }
 }
 do { u_int64_t x = (disksize); (lp)->d_secperunith = x >> 32; (lp)->d_secperunit = x; } while (0);
 do { u_int64_t x = (disksize); (&lp->d_partitions[2])->p_sizeh = x >> 32; (&lp->d_partitions[2])->p_size = x; } while (0);
 do { u_int64_t x = (0); (&lp->d_partitions[2])->p_offseth = x >> 32; (&lp->d_partitions[2])->p_offset = x; } while (0);
 do { u_int64_t x = (boundstart); (lp)->d_bstarth = x >> 32; (lp)->d_bstart = x; } while (0);
 do { u_int64_t x = (boundend < (((u_int64_t)(lp)->d_secperunith << 32) + (lp)->d_secperunit) ? boundend : (((u_int64_t)(lp)->d_secperunith << 32) + (lp)->d_secperunit)); (lp)->d_bendh = x >> 32; (lp)->d_bend = x; } while (0);
 lp->d_checksum = 0;
 lp->d_checksum = dkcksum(lp);
 return (0);
}
int
readdisksector(struct buf *bp, void (*strat)(struct buf *),
    struct disklabel *lp, u_int64_t sector)
{
 bp->b_blkno = ((sector) * ((lp)->d_secsize / (1 << 9)));
 bp->b_bcount = lp->d_secsize;
 bp->b_error = 0;
 ((bp->b_flags) &= ~(0x00008000 | 0x00000000 | 0x00000100 | 0x00000400));
 ((bp->b_flags) |= (0x00000010 | 0x00008000 | 0x00004000));
 (*strat)(bp);
 return (biowait(bp));
}
int
readdoslabel(struct buf *bp, void (*strat)(struct buf *),
    struct disklabel *lp, daddr_t *partoffp, int spoofonly)
{
 struct disklabel *gptlp;
 u_int64_t dospartoff = 0, dospartend = (((u_int64_t)(lp)->d_bendh << 32) + (lp)->d_bend);
 int i, ourpart = -1, wander = 1, n = 0, loop = 0, offset;
 struct dos_partition dp[4], *dp2;
 u_int64_t sector = 0;
 u_int32_t extoff = 0;
 int error;
 if (lp->d_secpercyl == 0)
  return (22);
 if (lp->d_secsize == 0)
  return (28);
 while (wander && loop < 256) {
  loop++;
  wander = 0;
  if (sector < extoff)
   sector = extoff;
  error = readdisksector(bp, strat, lp, sector);
  if (error) {
           if (partoffp)
            *partoffp = -1;
   return (error);
  }
  __builtin_bcopy((bp->b_data + 446), (dp), (sizeof(dp)));
  if (n == 0 && sector == 0) {
   u_int16_t mbrtest;
   mbrtest = ((bp->b_data[510] << 8) & 0xff00) |
       (bp->b_data[511] & 0xff);
   if (mbrtest != 0x55aa)
    goto notmbr;
   if (gpt_chk_mbr(dp, (((u_int64_t)(lp)->d_secperunith << 32) + (lp)->d_secperunit)) != 0)
    goto notgpt;
   gptlp = malloc(sizeof(struct disklabel), 2,
       0x0002);
   if (gptlp == ((void *)0))
    return (12);
   *gptlp = *lp;
   error = spoofgptlabel(bp, strat, gptlp);
   if (error == 0) {
    dospartoff = (((u_int64_t)(gptlp)->d_bstarth << 32) + (gptlp)->d_bstart);
    dospartend = (((u_int64_t)(gptlp)->d_bendh << 32) + (gptlp)->d_bend);
    if (partoffp) {
     if (dospartoff == 0)
      return (6);
     else
      goto notfat;
    }
    *lp = *gptlp;
    free(gptlp, 2,
        sizeof(struct disklabel));
    goto notfat;
   } else {
    free(gptlp, 2,
        sizeof(struct disklabel));
    goto notmbr;
   }
  }
notgpt:
  if (ourpart == -1) {
   for (dp2=dp, i=0; i < 4 && ourpart == -1;
       i++, dp2++)
    if ((__builtin_constant_p(dp2->dp_size) ? (__uint32_t)(((__uint32_t)(dp2->dp_size) & 0xff) << 24 | ((__uint32_t)(dp2->dp_size) & 0xff00) << 8 | ((__uint32_t)(dp2->dp_size) & 0xff0000) >> 8 | ((__uint32_t)(dp2->dp_size) & 0xff000000) >> 24) : __swap32md(dp2->dp_size)) &&
        dp2->dp_typ == 0xa6)
     ourpart = i;
   if (ourpart == -1)
    goto donot;
   dp2 = &dp[ourpart];
   dospartoff = (__builtin_constant_p(dp2->dp_start) ? (__uint32_t)(((__uint32_t)(dp2->dp_start) & 0xff) << 24 | ((__uint32_t)(dp2->dp_start) & 0xff00) << 8 | ((__uint32_t)(dp2->dp_start) & 0xff0000) >> 8 | ((__uint32_t)(dp2->dp_start) & 0xff000000) >> 24) : __swap32md(dp2->dp_start)) + sector;
   dospartend = dospartoff + (__builtin_constant_p(dp2->dp_size) ? (__uint32_t)(((__uint32_t)(dp2->dp_size) & 0xff) << 24 | ((__uint32_t)(dp2->dp_size) & 0xff00) << 8 | ((__uint32_t)(dp2->dp_size) & 0xff0000) >> 8 | ((__uint32_t)(dp2->dp_size) & 0xff000000) >> 24) : __swap32md(dp2->dp_size));
   if (partoffp) {
    *partoffp = ((dospartoff) * ((lp)->d_secsize / (1 << 9)));
    return (0);
   }
   if (lp->d_ntracks == 0)
    lp->d_ntracks = dp2->dp_ehd + 1;
   if (lp->d_nsectors == 0)
    lp->d_nsectors = ((dp2->dp_esect) & 0x3f);
   if (lp->d_secpercyl == 0)
    lp->d_secpercyl = lp->d_ntracks *
        lp->d_nsectors;
  }
donot:
  for (dp2=dp, i=0; i < 4; i++, dp2++) {
   struct partition *pp;
   u_int8_t fstype;
   if (dp2->dp_typ == 0xa6 ||
       dp2->dp_typ == 0xee)
    continue;
   if ((__builtin_constant_p(dp2->dp_size) ? (__uint32_t)(((__uint32_t)(dp2->dp_size) & 0xff) << 24 | ((__uint32_t)(dp2->dp_size) & 0xff00) << 8 | ((__uint32_t)(dp2->dp_size) & 0xff0000) >> 8 | ((__uint32_t)(dp2->dp_size) & 0xff000000) >> 24) : __swap32md(dp2->dp_size)) > (((u_int64_t)(lp)->d_secperunith << 32) + (lp)->d_secperunit))
    continue;
   if ((__builtin_constant_p(dp2->dp_start) ? (__uint32_t)(((__uint32_t)(dp2->dp_start) & 0xff) << 24 | ((__uint32_t)(dp2->dp_start) & 0xff00) << 8 | ((__uint32_t)(dp2->dp_start) & 0xff0000) >> 8 | ((__uint32_t)(dp2->dp_start) & 0xff000000) >> 24) : __swap32md(dp2->dp_start)) > (((u_int64_t)(lp)->d_secperunith << 32) + (lp)->d_secperunit))
    continue;
   if ((__builtin_constant_p(dp2->dp_size) ? (__uint32_t)(((__uint32_t)(dp2->dp_size) & 0xff) << 24 | ((__uint32_t)(dp2->dp_size) & 0xff00) << 8 | ((__uint32_t)(dp2->dp_size) & 0xff0000) >> 8 | ((__uint32_t)(dp2->dp_size) & 0xff000000) >> 24) : __swap32md(dp2->dp_size)) == 0)
    continue;
   switch (dp2->dp_typ) {
   case 0x00:
    fstype = 0;
    break;
   case 0x83:
    fstype = 17;
    break;
   case 0x07:
    fstype = 20;
    break;
   case 0xef:
   case 0x01:
   case 0x04:
   case 0x06:
   case 0x0e:
   case 0x0b:
   case 0x0c:
    fstype = 8;
    break;
   case 0x05:
   case 0x0f:
    sector = (__builtin_constant_p(dp2->dp_start) ? (__uint32_t)(((__uint32_t)(dp2->dp_start) & 0xff) << 24 | ((__uint32_t)(dp2->dp_start) & 0xff00) << 8 | ((__uint32_t)(dp2->dp_start) & 0xff0000) >> 8 | ((__uint32_t)(dp2->dp_start) & 0xff000000) >> 24) : __swap32md(dp2->dp_start)) + extoff;
    if (!extoff) {
     extoff = (__builtin_constant_p(dp2->dp_start) ? (__uint32_t)(((__uint32_t)(dp2->dp_start) & 0xff) << 24 | ((__uint32_t)(dp2->dp_start) & 0xff00) << 8 | ((__uint32_t)(dp2->dp_start) & 0xff0000) >> 8 | ((__uint32_t)(dp2->dp_start) & 0xff000000) >> 24) : __swap32md(dp2->dp_start));
     sector = 0;
    }
    wander = 1;
    continue;
    break;
   default:
    fstype = 10;
    break;
   }
   if (partoffp || n >= 8)
    continue;
   pp = &lp->d_partitions[8+n];
   n++;
   pp->p_fstype = fstype;
   if ((__builtin_constant_p(dp2->dp_start) ? (__uint32_t)(((__uint32_t)(dp2->dp_start) & 0xff) << 24 | ((__uint32_t)(dp2->dp_start) & 0xff00) << 8 | ((__uint32_t)(dp2->dp_start) & 0xff0000) >> 8 | ((__uint32_t)(dp2->dp_start) & 0xff000000) >> 24) : __swap32md(dp2->dp_start)))
    do { u_int64_t x = ((__builtin_constant_p(dp2->dp_start) ? (__uint32_t)(((__uint32_t)(dp2->dp_start) & 0xff) << 24 | ((__uint32_t)(dp2->dp_start) & 0xff00) << 8 | ((__uint32_t)(dp2->dp_start) & 0xff0000) >> 8 | ((__uint32_t)(dp2->dp_start) & 0xff000000) >> 24) : __swap32md(dp2->dp_start)) + sector); (pp)->p_offseth = x >> 32; (pp)->p_offset = x; } while (0);
   do { u_int64_t x = ((__builtin_constant_p(dp2->dp_size) ? (__uint32_t)(((__uint32_t)(dp2->dp_size) & 0xff) << 24 | ((__uint32_t)(dp2->dp_size) & 0xff00) << 8 | ((__uint32_t)(dp2->dp_size) & 0xff0000) >> 8 | ((__uint32_t)(dp2->dp_size) & 0xff000000) >> 24) : __swap32md(dp2->dp_size))); (pp)->p_sizeh = x >> 32; (pp)->p_size = x; } while (0);
  }
 }
notmbr:
 if (n == 0 && sector == 0 && ourpart == -1) {
  u_int16_t fattest;
  switch ((u_int8_t)bp->b_data[0]) {
  case 0xeb:
   if ((u_int8_t)bp->b_data[2] != 0x90)
    goto notfat;
   break;
  case 0xe9:
   break;
  default:
   goto notfat;
   break;
  }
  fattest = ((bp->b_data[12] << 8) & 0xff00) |
      (bp->b_data[11] & 0xff);
  if (fattest < 512 || fattest > 4096 || (fattest % 512 != 0))
   goto notfat;
  if (partoffp)
   return (6);
  do { u_int64_t x = ((((u_int64_t)(&lp->d_partitions[2])->p_sizeh << 32) + (&lp->d_partitions[2])->p_size)); (&lp->d_partitions['i' - 'a'])->p_sizeh = x >> 32; (&lp->d_partitions['i' - 'a'])->p_size = x; } while (0);
  do { u_int64_t x = (0); (&lp->d_partitions['i' - 'a'])->p_offseth = x >> 32; (&lp->d_partitions['i' - 'a'])->p_offset = x; } while (0);
  lp->d_partitions['i' - 'a'].p_fstype = 8;
  spoofonly = 1;
 }
notfat:
 if (partoffp)
  *partoffp = ((dospartoff) * ((lp)->d_secsize / (1 << 9)));
 else {
  do { u_int64_t x = (dospartoff); (lp)->d_bstarth = x >> 32; (lp)->d_bstart = x; } while (0);
  do { u_int64_t x = ((dospartend < (((u_int64_t)(lp)->d_secperunith << 32) + (lp)->d_secperunit)) ? dospartend : (((u_int64_t)(lp)->d_secperunith << 32) + (lp)->d_secperunit)); (lp)->d_bendh = x >> 32; (lp)->d_bend = x; } while (0);
 }
 if (spoofonly)
  return (0);
 error = readdisksector(bp, strat, lp, dospartoff +
     ((1) / ((lp)->d_secsize / (1 << 9))));
 if (error)
  return (bp->b_error);
 offset = (((1) % ((lp)->d_secsize / (1 << 9))) * (1 << 9));
 error = checkdisklabel(bp->b_data + offset, lp,
     (((u_int64_t)((struct disklabel*)(bp->b_data+offset))->d_bstarth << 32) + ((struct disklabel*)(bp->b_data+offset))->d_bstart),
     (((u_int64_t)((struct disklabel *)(bp->b_data+offset))->d_bendh << 32) + ((struct disklabel *)(bp->b_data+offset))->d_bend));
 return (error);
}
int
gpt_chk_mbr(struct dos_partition *dp, u_int64_t dsize)
{
 struct dos_partition *dp2;
 int efi, found, i;
 u_int32_t psize;
 found = efi = 0;
 for (dp2=dp, i=0; i < 4; i++, dp2++) {
  if (dp2->dp_typ == 0x00)
   continue;
  found++;
  if (dp2->dp_typ != 0xee)
   continue;
  psize = (__builtin_constant_p(dp2->dp_size) ? (__uint32_t)(((__uint32_t)(dp2->dp_size) & 0xff) << 24 | ((__uint32_t)(dp2->dp_size) & 0xff00) << 8 | ((__uint32_t)(dp2->dp_size) & 0xff0000) >> 8 | ((__uint32_t)(dp2->dp_size) & 0xff000000) >> 24) : __swap32md(dp2->dp_size));
  if (psize == (dsize - 1) ||
      psize == 0xffffffffU) {
   if ((__builtin_constant_p(dp2->dp_start) ? (__uint32_t)(((__uint32_t)(dp2->dp_start) & 0xff) << 24 | ((__uint32_t)(dp2->dp_start) & 0xff00) << 8 | ((__uint32_t)(dp2->dp_start) & 0xff0000) >> 8 | ((__uint32_t)(dp2->dp_start) & 0xff000000) >> 24) : __swap32md(dp2->dp_start)) == 1)
    efi++;
  }
 }
 if (found == 1 && efi == 1)
  return (0);
 return (1);
}
int
gpt_chk_hdr(struct gpt_header *gh, struct disklabel *lp)
{
 uint64_t ghpartlba;
 uint64_t ghlbaend, ghlbastart;
 uint32_t orig_gh_csum;
 uint32_t ghsize, ghpartsize, ghpartspersec;
 if ((__builtin_constant_p(gh->gh_sig) ? (__uint64_t)((((__uint64_t)(gh->gh_sig) & 0xff) << 56) | ((__uint64_t)(gh->gh_sig) & 0xff00ULL) << 40 | ((__uint64_t)(gh->gh_sig) & 0xff0000ULL) << 24 | ((__uint64_t)(gh->gh_sig) & 0xff000000ULL) << 8 | ((__uint64_t)(gh->gh_sig) & 0xff00000000ULL) >> 8 | ((__uint64_t)(gh->gh_sig) & 0xff0000000000ULL) >> 24 | ((__uint64_t)(gh->gh_sig) & 0xff000000000000ULL) >> 40 | ((__uint64_t)(gh->gh_sig) & 0xff00000000000000ULL) >> 56) : __swap64md(gh->gh_sig)) != 0x5452415020494645LL)
  return (22);
 if ((__builtin_constant_p(gh->gh_rev) ? (__uint32_t)(((__uint32_t)(gh->gh_rev) & 0xff) << 24 | ((__uint32_t)(gh->gh_rev) & 0xff00) << 8 | ((__uint32_t)(gh->gh_rev) & 0xff0000) >> 8 | ((__uint32_t)(gh->gh_rev) & 0xff000000) >> 24) : __swap32md(gh->gh_rev)) != 0x10000)
  return (22);
 ghsize = (__builtin_constant_p(gh->gh_size) ? (__uint32_t)(((__uint32_t)(gh->gh_size) & 0xff) << 24 | ((__uint32_t)(gh->gh_size) & 0xff00) << 8 | ((__uint32_t)(gh->gh_size) & 0xff0000) >> 8 | ((__uint32_t)(gh->gh_size) & 0xff000000) >> 24) : __swap32md(gh->gh_size));
 ghpartsize = (__builtin_constant_p(gh->gh_part_size) ? (__uint32_t)(((__uint32_t)(gh->gh_part_size) & 0xff) << 24 | ((__uint32_t)(gh->gh_part_size) & 0xff00) << 8 | ((__uint32_t)(gh->gh_part_size) & 0xff0000) >> 8 | ((__uint32_t)(gh->gh_part_size) & 0xff000000) >> 24) : __swap32md(gh->gh_part_size));
 ghpartspersec = lp->d_secsize / ghpartsize;
 ghpartlba = (__builtin_constant_p(gh->gh_part_lba) ? (__uint64_t)((((__uint64_t)(gh->gh_part_lba) & 0xff) << 56) | ((__uint64_t)(gh->gh_part_lba) & 0xff00ULL) << 40 | ((__uint64_t)(gh->gh_part_lba) & 0xff0000ULL) << 24 | ((__uint64_t)(gh->gh_part_lba) & 0xff000000ULL) << 8 | ((__uint64_t)(gh->gh_part_lba) & 0xff00000000ULL) >> 8 | ((__uint64_t)(gh->gh_part_lba) & 0xff0000000000ULL) >> 24 | ((__uint64_t)(gh->gh_part_lba) & 0xff000000000000ULL) >> 40 | ((__uint64_t)(gh->gh_part_lba) & 0xff00000000000000ULL) >> 56) : __swap64md(gh->gh_part_lba));
 ghlbaend = (__builtin_constant_p(gh->gh_lba_end) ? (__uint64_t)((((__uint64_t)(gh->gh_lba_end) & 0xff) << 56) | ((__uint64_t)(gh->gh_lba_end) & 0xff00ULL) << 40 | ((__uint64_t)(gh->gh_lba_end) & 0xff0000ULL) << 24 | ((__uint64_t)(gh->gh_lba_end) & 0xff000000ULL) << 8 | ((__uint64_t)(gh->gh_lba_end) & 0xff00000000ULL) >> 8 | ((__uint64_t)(gh->gh_lba_end) & 0xff0000000000ULL) >> 24 | ((__uint64_t)(gh->gh_lba_end) & 0xff000000000000ULL) >> 40 | ((__uint64_t)(gh->gh_lba_end) & 0xff00000000000000ULL) >> 56) : __swap64md(gh->gh_lba_end));
 ghlbastart = (__builtin_constant_p(gh->gh_lba_start) ? (__uint64_t)((((__uint64_t)(gh->gh_lba_start) & 0xff) << 56) | ((__uint64_t)(gh->gh_lba_start) & 0xff00ULL) << 40 | ((__uint64_t)(gh->gh_lba_start) & 0xff0000ULL) << 24 | ((__uint64_t)(gh->gh_lba_start) & 0xff000000ULL) << 8 | ((__uint64_t)(gh->gh_lba_start) & 0xff00000000ULL) >> 8 | ((__uint64_t)(gh->gh_lba_start) & 0xff0000000000ULL) >> 24 | ((__uint64_t)(gh->gh_lba_start) & 0xff000000000000ULL) >> 40 | ((__uint64_t)(gh->gh_lba_start) & 0xff00000000000000ULL) >> 56) : __swap64md(gh->gh_lba_start));
 if (ghsize < 92 || ghsize > sizeof(struct gpt_header))
  return (22);
 orig_gh_csum = gh->gh_csum;
 gh->gh_csum = 0;
 gh->gh_csum = crc32(0, (unsigned char *)gh, ghsize);
 if (orig_gh_csum != gh->gh_csum)
  return (22);
 if (ghlbastart >= (((u_int64_t)(lp)->d_secperunith << 32) + (lp)->d_secperunit) ||
     ghlbaend >= (((u_int64_t)(lp)->d_secperunith << 32) + (lp)->d_secperunit) ||
     ghpartlba >= (((u_int64_t)(lp)->d_secperunith << 32) + (lp)->d_secperunit))
  return (22);
 if (ghpartsize % 128 || ghpartsize > lp->d_secsize
     || ghpartspersec == 0) {
  ;
  return (22);
 }
 if (ghpartsize != 128) {
  ;
  return (22);
 }
 if ((__builtin_constant_p(gh->gh_lba_alt) ? (__uint64_t)((((__uint64_t)(gh->gh_lba_alt) & 0xff) << 56) | ((__uint64_t)(gh->gh_lba_alt) & 0xff00ULL) << 40 | ((__uint64_t)(gh->gh_lba_alt) & 0xff0000ULL) << 24 | ((__uint64_t)(gh->gh_lba_alt) & 0xff000000ULL) << 8 | ((__uint64_t)(gh->gh_lba_alt) & 0xff00000000ULL) >> 8 | ((__uint64_t)(gh->gh_lba_alt) & 0xff0000000000ULL) >> 24 | ((__uint64_t)(gh->gh_lba_alt) & 0xff000000000000ULL) >> 40 | ((__uint64_t)(gh->gh_lba_alt) & 0xff00000000000000ULL) >> 56) : __swap64md(gh->gh_lba_alt)) >= (((u_int64_t)(lp)->d_secperunith << 32) + (lp)->d_secperunit)) {
  ;
  return (22);
 }
 return 0;
}
int
gpt_chk_parts(struct gpt_header *gh, struct gpt_partition *gp)
{
 u_int32_t checksum;
 checksum = crc32(0, (unsigned char *)gp,
     (__builtin_constant_p(gh->gh_part_num) ? (__uint32_t)(((__uint32_t)(gh->gh_part_num) & 0xff) << 24 | ((__uint32_t)(gh->gh_part_num) & 0xff00) << 8 | ((__uint32_t)(gh->gh_part_num) & 0xff0000) >> 8 | ((__uint32_t)(gh->gh_part_num) & 0xff000000) >> 24) : __swap32md(gh->gh_part_num)) * (__builtin_constant_p(gh->gh_part_size) ? (__uint32_t)(((__uint32_t)(gh->gh_part_size) & 0xff) << 24 | ((__uint32_t)(gh->gh_part_size) & 0xff00) << 8 | ((__uint32_t)(gh->gh_part_size) & 0xff0000) >> 8 | ((__uint32_t)(gh->gh_part_size) & 0xff000000) >> 24) : __swap32md(gh->gh_part_size)));
 if (checksum != gh->gh_part_csum)
  return (22);
 return 0;
}
int
gpt_get_fstype(struct uuid *uuid_part)
{
 static int init = 0;
 static struct uuid uuid_openbsd, uuid_msdos, uuid_chromefs,
     uuid_linux, uuid_hfs, uuid_unused, uuid_efi_system;
 static const uint8_t gpt_uuid_openbsd[] = { 0x82, 0x4c, 0xc7, 0xa0, 0x36, 0xa8, 0x11, 0xe3, 0x89, 0x0a, 0x95, 0x25, 0x19, 0xad, 0x3f, 0x61 };
 static const uint8_t gpt_uuid_msdos[] = { 0xeb, 0xd0, 0xa0, 0xa2, 0xb9, 0xe5, 0x44, 0x33, 0x87, 0xc0, 0x68, 0xb6, 0xb7, 0x26, 0x99, 0xc7 };
 static const uint8_t gpt_uuid_chromerootfs[] = { 0x3c, 0xb8, 0xe2, 0x02, 0x3b, 0x7e, 0x47, 0xdd, 0x8a, 0x3c, 0x7f, 0xf2, 0xa1, 0x3c, 0xfc, 0xec };
 static const uint8_t gpt_uuid_linux[] = { 0x0f, 0xc6, 0x3d, 0xaf, 0x84, 0x83, 0x47, 0x72, 0x8e, 0x79, 0x3d, 0x69, 0xd8, 0x47, 0x7d, 0xe4 };
 static const uint8_t gpt_uuid_hfs[] = { 0x48, 0x46, 0x53, 0x00, 0x00, 0x00, 0x11, 0xaa, 0xaa, 0x11, 0x00, 0x30, 0x65, 0x43, 0xec, 0xac };
 static const uint8_t gpt_uuid_unused[] = { 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 };
 static const uint8_t gpt_uuid_efi_system[] = { 0xc1, 0x2a, 0x73, 0x28, 0xf8, 0x1f, 0x11, 0xd2, 0xba, 0x4b, 0x00, 0xa0, 0xc9, 0x3e, 0xc9, 0x3b };
 if (init == 0) {
  uuid_dec_be(gpt_uuid_openbsd, &uuid_openbsd);
  uuid_dec_be(gpt_uuid_msdos, &uuid_msdos);
  uuid_dec_be(gpt_uuid_chromerootfs, &uuid_chromefs);
  uuid_dec_be(gpt_uuid_linux, &uuid_linux);
  uuid_dec_be(gpt_uuid_hfs, &uuid_hfs);
  uuid_dec_be(gpt_uuid_unused, &uuid_unused);
  uuid_dec_be(gpt_uuid_efi_system, &uuid_efi_system);
  init = 1;
 }
 if (!__builtin_memcmp((uuid_part), (&uuid_unused), (sizeof(struct uuid))))
  return 0;
 else if (!__builtin_memcmp((uuid_part), (&uuid_openbsd), (sizeof(struct uuid))))
  return 7;
 else if (!__builtin_memcmp((uuid_part), (&uuid_msdos), (sizeof(struct uuid))))
  return 8;
 else if (!__builtin_memcmp((uuid_part), (&uuid_chromefs), (sizeof(struct uuid))))
  return 17;
 else if (!__builtin_memcmp((uuid_part), (&uuid_linux), (sizeof(struct uuid))))
  return 17;
 else if (!__builtin_memcmp((uuid_part), (&uuid_hfs), (sizeof(struct uuid))))
  return 15;
 else if (!__builtin_memcmp((uuid_part), (&uuid_efi_system), (sizeof(struct uuid))))
  return 8;
 else
  return 10;
}
int
spoofgptlabel(struct buf *bp, void (*strat)(struct buf *),
    struct disklabel *lp)
{
 static const u_int8_t gpt_uuid_openbsd[] = { 0x82, 0x4c, 0xc7, 0xa0, 0x36, 0xa8, 0x11, 0xe3, 0x89, 0x0a, 0x95, 0x25, 0x19, 0xad, 0x3f, 0x61 };
 struct gpt_header gh;
 struct uuid uuid_part, uuid_openbsd;
 struct gpt_partition *gp, *gp_tmp;
 struct partition *pp;
 size_t gpsz;
 u_int64_t ghlbaend, ghlbastart, gptpartoff, gptpartend, sector;
 u_int64_t start, end;
 int i, altheader = 0, error, n;
 uint32_t ghpartnum;
 uuid_dec_be(gpt_uuid_openbsd, &uuid_openbsd);
 for (sector = 1; ; sector = (((u_int64_t)(lp)->d_secperunith << 32) + (lp)->d_secperunit)-1, altheader = 1) {
  uint64_t ghpartlba;
  uint32_t ghpartsize;
  uint32_t ghpartspersec;
  error = readdisksector(bp, strat, lp, sector);
  if (error) {
   ;
   return (error);
  }
  __builtin_bcopy((bp->b_data), (&gh), (sizeof(gh)));
  if (gpt_chk_hdr(&gh, lp)) {
   if (altheader) {
    ;
    return (22);
   }
   continue;
  }
  ghpartsize = (__builtin_constant_p(gh.gh_part_size) ? (__uint32_t)(((__uint32_t)(gh.gh_part_size) & 0xff) << 24 | ((__uint32_t)(gh.gh_part_size) & 0xff00) << 8 | ((__uint32_t)(gh.gh_part_size) & 0xff0000) >> 8 | ((__uint32_t)(gh.gh_part_size) & 0xff000000) >> 24) : __swap32md(gh.gh_part_size));
  ghpartspersec = lp->d_secsize / ghpartsize;
  ghpartnum = (__builtin_constant_p(gh.gh_part_num) ? (__uint32_t)(((__uint32_t)(gh.gh_part_num) & 0xff) << 24 | ((__uint32_t)(gh.gh_part_num) & 0xff00) << 8 | ((__uint32_t)(gh.gh_part_num) & 0xff0000) >> 8 | ((__uint32_t)(gh.gh_part_num) & 0xff000000) >> 24) : __swap32md(gh.gh_part_num));
  ghpartlba = (__builtin_constant_p(gh.gh_part_lba) ? (__uint64_t)((((__uint64_t)(gh.gh_part_lba) & 0xff) << 56) | ((__uint64_t)(gh.gh_part_lba) & 0xff00ULL) << 40 | ((__uint64_t)(gh.gh_part_lba) & 0xff0000ULL) << 24 | ((__uint64_t)(gh.gh_part_lba) & 0xff000000ULL) << 8 | ((__uint64_t)(gh.gh_part_lba) & 0xff00000000ULL) >> 8 | ((__uint64_t)(gh.gh_part_lba) & 0xff0000000000ULL) >> 24 | ((__uint64_t)(gh.gh_part_lba) & 0xff000000000000ULL) >> 40 | ((__uint64_t)(gh.gh_part_lba) & 0xff00000000000000ULL) >> 56) : __swap64md(gh.gh_part_lba));
  ghlbaend = (__builtin_constant_p(gh.gh_lba_end) ? (__uint64_t)((((__uint64_t)(gh.gh_lba_end) & 0xff) << 56) | ((__uint64_t)(gh.gh_lba_end) & 0xff00ULL) << 40 | ((__uint64_t)(gh.gh_lba_end) & 0xff0000ULL) << 24 | ((__uint64_t)(gh.gh_lba_end) & 0xff000000ULL) << 8 | ((__uint64_t)(gh.gh_lba_end) & 0xff00000000ULL) >> 8 | ((__uint64_t)(gh.gh_lba_end) & 0xff0000000000ULL) >> 24 | ((__uint64_t)(gh.gh_lba_end) & 0xff000000000000ULL) >> 40 | ((__uint64_t)(gh.gh_lba_end) & 0xff00000000000000ULL) >> 56) : __swap64md(gh.gh_lba_end));
  ghlbastart = (__builtin_constant_p(gh.gh_lba_start) ? (__uint64_t)((((__uint64_t)(gh.gh_lba_start) & 0xff) << 56) | ((__uint64_t)(gh.gh_lba_start) & 0xff00ULL) << 40 | ((__uint64_t)(gh.gh_lba_start) & 0xff0000ULL) << 24 | ((__uint64_t)(gh.gh_lba_start) & 0xff000000ULL) << 8 | ((__uint64_t)(gh.gh_lba_start) & 0xff00000000ULL) >> 8 | ((__uint64_t)(gh.gh_lba_start) & 0xff0000000000ULL) >> 24 | ((__uint64_t)(gh.gh_lba_start) & 0xff000000000000ULL) >> 40 | ((__uint64_t)(gh.gh_lba_start) & 0xff00000000000000ULL) >> 56) : __swap64md(gh.gh_lba_start));
  gp = mallocarray(ghpartnum, sizeof(struct gpt_partition),
      2, 0x0002|0x0008);
  if (gp == ((void *)0))
   return (12);
  gpsz = ghpartnum * sizeof(struct gpt_partition);
  sector = ghpartlba;
  for (i = 0; i < ghpartnum / ghpartspersec; i++, sector++) {
   error = readdisksector(bp, strat, lp, sector);
   if (error) {
    free(gp, 2, gpsz);
    return (error);
   }
   __builtin_bcopy((bp->b_data), (gp + i * ghpartspersec), (ghpartspersec * sizeof(struct gpt_partition)));
  }
  if (gpt_chk_parts(&gh, gp)) {
   free(gp, 2, gpsz);
   if (altheader) {
    ;
    return (22);
   }
   continue;
  }
  break;
 }
 n = 0;
 gptpartoff = 0;
 gptpartend = (((u_int64_t)(lp)->d_bendh << 32) + (lp)->d_bend);
 for (gp_tmp = gp, i = 0; i < ghpartnum; gp_tmp++, i++) {
  start = (__builtin_constant_p(gp_tmp->gp_lba_start) ? (__uint64_t)((((__uint64_t)(gp_tmp->gp_lba_start) & 0xff) << 56) | ((__uint64_t)(gp_tmp->gp_lba_start) & 0xff00ULL) << 40 | ((__uint64_t)(gp_tmp->gp_lba_start) & 0xff0000ULL) << 24 | ((__uint64_t)(gp_tmp->gp_lba_start) & 0xff000000ULL) << 8 | ((__uint64_t)(gp_tmp->gp_lba_start) & 0xff00000000ULL) >> 8 | ((__uint64_t)(gp_tmp->gp_lba_start) & 0xff0000000000ULL) >> 24 | ((__uint64_t)(gp_tmp->gp_lba_start) & 0xff000000000000ULL) >> 40 | ((__uint64_t)(gp_tmp->gp_lba_start) & 0xff00000000000000ULL) >> 56) : __swap64md(gp_tmp->gp_lba_start));
  end = (__builtin_constant_p(gp_tmp->gp_lba_end) ? (__uint64_t)((((__uint64_t)(gp_tmp->gp_lba_end) & 0xff) << 56) | ((__uint64_t)(gp_tmp->gp_lba_end) & 0xff00ULL) << 40 | ((__uint64_t)(gp_tmp->gp_lba_end) & 0xff0000ULL) << 24 | ((__uint64_t)(gp_tmp->gp_lba_end) & 0xff000000ULL) << 8 | ((__uint64_t)(gp_tmp->gp_lba_end) & 0xff00000000ULL) >> 8 | ((__uint64_t)(gp_tmp->gp_lba_end) & 0xff0000000000ULL) >> 24 | ((__uint64_t)(gp_tmp->gp_lba_end) & 0xff000000000000ULL) >> 40 | ((__uint64_t)(gp_tmp->gp_lba_end) & 0xff00000000000000ULL) >> 56) : __swap64md(gp_tmp->gp_lba_end));
  if (start > end || start < ghlbastart || end > ghlbaend)
   continue;
  uuid_dec_le(&gp_tmp->gp_type, &uuid_part);
  if (!__builtin_memcmp((&uuid_part), (&uuid_openbsd), (sizeof(struct uuid)))) {
   if (gptpartoff == 0) {
    gptpartoff = start;
    gptpartend = end + 1;
   }
   continue;
  }
  if (n >= 8)
   continue;
  pp = &lp->d_partitions[8+n];
  n++;
  pp->p_fstype = gpt_get_fstype(&uuid_part);
  do { u_int64_t x = (start); (pp)->p_offseth = x >> 32; (pp)->p_offset = x; } while (0);
  do { u_int64_t x = (end - start + 1); (pp)->p_sizeh = x >> 32; (pp)->p_size = x; } while (0);
 }
 free(gp, 2, gpsz);
 do { u_int64_t x = (gptpartoff); (lp)->d_bstarth = x >> 32; (lp)->d_bstart = x; } while (0);
 do { u_int64_t x = ((gptpartend < (((u_int64_t)(lp)->d_secperunith << 32) + (lp)->d_secperunit)) ? gptpartend : (((u_int64_t)(lp)->d_secperunith << 32) + (lp)->d_secperunit)); (lp)->d_bendh = x >> 32; (lp)->d_bend = x; } while (0);
 return (0);
}
int
setdisklabel(struct disklabel *olp, struct disklabel *nlp, u_int openmask)
{
 struct partition *opp, *npp;
 struct disk *dk;
 int i;
 if (nlp->d_secpercyl == 0 || nlp->d_secsize == 0 ||
     (nlp->d_secsize % (1 << 9)) != 0)
  return (22);
 if (nlp->d_magic == 0xffffffff) {
  *olp = *nlp;
  return (0);
 }
 if (nlp->d_magic != ((u_int32_t)0x82564557) || nlp->d_magic2 != ((u_int32_t)0x82564557) ||
     dkcksum(nlp) != 0)
  return (22);
 for (i = 0; i < 16; i++) {
  opp = &olp->d_partitions[i];
  npp = &nlp->d_partitions[i];
  if ((openmask & (1 << i)) &&
      ((((u_int64_t)(npp)->p_offseth << 32) + (npp)->p_offset) != (((u_int64_t)(opp)->p_offseth << 32) + (opp)->p_offset) ||
      (((u_int64_t)(npp)->p_sizeh << 32) + (npp)->p_size) < (((u_int64_t)(opp)->p_sizeh << 32) + (opp)->p_size)))
   return (16);
  if (npp->p_fstype == 0 && opp->p_fstype != 0) {
   npp->p_fragblock = opp->p_fragblock;
   npp->p_cpg = opp->p_cpg;
  }
 }
 if (duid_iszero(nlp->d_uid)) {
  do {
   arc4random_buf(nlp->d_uid, sizeof(nlp->d_uid));
   for((dk) = ((&disklist)->tqh_first); (dk) != ((void *)0); (dk) = ((dk)->dk_link.tqe_next))
    if (dk->dk_label &&
        duid_equal(dk->dk_label->d_uid, nlp->d_uid))
     break;
  } while (dk != ((void *)0) || duid_iszero(nlp->d_uid));
 }
 do { u_int64_t x = ((((u_int64_t)(olp)->d_secperunith << 32) + (olp)->d_secperunit)); (nlp)->d_secperunith = x >> 32; (nlp)->d_secperunit = x; } while (0);
 npp = &nlp->d_partitions[2];
 do { u_int64_t x = (0); (npp)->p_offseth = x >> 32; (npp)->p_offset = x; } while (0);
 do { u_int64_t x = ((((u_int64_t)(nlp)->d_secperunith << 32) + (nlp)->d_secperunit)); (npp)->p_sizeh = x >> 32; (npp)->p_size = x; } while (0);
 nlp->d_checksum = 0;
 nlp->d_checksum = dkcksum(nlp);
 *olp = *nlp;
 disk_change = 1;
 return (0);
}
int
bounds_check_with_label(struct buf *bp, struct disklabel *lp)
{
 struct partition *p = &lp->d_partitions[(((int32_t)((bp->b_dev) & 0xff) | (((bp->b_dev) & 0xffff0000) >> 8)) % 16)];
 daddr_t partblocks, sz;
 if (lp->d_secpercyl == 0 || bp->b_blkno < 0 || bp->b_bcount < 0)
  goto bad;
 if ((bp->b_blkno % ((lp)->d_secsize / (1 << 9))) != 0 ||
     (bp->b_bcount % lp->d_secsize) != 0)
  goto bad;
 partblocks = (((((u_int64_t)(p)->p_sizeh << 32) + (p)->p_size)) * ((lp)->d_secsize / (1 << 9)));
 if (bp->b_blkno > partblocks)
  goto bad;
 if (bp->b_blkno == partblocks || bp->b_bcount == 0)
  goto done;
 sz = bp->b_bcount >> 9;
 if (sz > partblocks - bp->b_blkno) {
  sz = partblocks - bp->b_blkno;
  bp->b_bcount = sz << 9;
 }
 return (0);
 bad:
 bp->b_error = 22;
 bp->b_flags |= 0x00000400;
 done:
 bp->b_resid = bp->b_bcount;
 return (-1);
}
void
diskerr(struct buf *bp, char *dname, char *what, int pri, int blkdone,
    struct disklabel *lp)
{
 int unit = (((int32_t)((bp->b_dev) & 0xff) | (((bp->b_dev) & 0xffff0000) >> 8)) / 16), part = (((int32_t)((bp->b_dev) & 0xff) | (((bp->b_dev) & 0xffff0000) >> 8)) % 16);
 int (*pr)(const char *, ...) __attribute__((__format__(__kprintf__,1,2)));
 char partname = 'a' + part;
 daddr_t sn;
 if (pri != -1) {
  log(pri, "%s", "");
  pr = addlog;
 } else
  pr = printf;
 (*pr)("%s%d%c: %s %sing fsbn ", dname, unit, partname, what,
     bp->b_flags & 0x00008000 ? "read" : "writ");
 sn = bp->b_blkno;
 if (bp->b_bcount <= (1 << 9))
  (*pr)("%lld", (long long)sn);
 else {
  if (blkdone >= 0) {
   sn += blkdone;
   (*pr)("%lld of ", (long long)sn);
  }
  (*pr)("%lld-%lld", (long long)bp->b_blkno,
      (long long)(bp->b_blkno + (bp->b_bcount - 1) / (1 << 9)));
 }
 if (lp && (blkdone >= 0 || bp->b_bcount <= lp->d_secsize)) {
  sn += (((((u_int64_t)(&lp->d_partitions[part])->p_offseth << 32) + (&lp->d_partitions[part])->p_offset)) * ((lp)->d_secsize / (1 << 9)));
  (*pr)(" (%s%d bn %lld; cn %lld", dname, unit, (long long)sn,
      (long long)(sn / ((lp->d_secpercyl) * ((lp)->d_secsize / (1 << 9)))));
  sn %= ((lp->d_secpercyl) * ((lp)->d_secsize / (1 << 9)));
  (*pr)(" tn %lld sn %lld)",
      (long long)(sn / ((lp->d_nsectors) * ((lp)->d_secsize / (1 << 9)))),
      (long long)(sn % ((lp->d_nsectors) * ((lp)->d_secsize / (1 << 9)))));
 }
}
void
disk_init(void)
{
 do { (&disklist)->tqh_first = ((void *)0); (&disklist)->tqh_last = &(&disklist)->tqh_first; } while (0);
 disk_count = disk_change = 0;
}
int
disk_construct(struct disk *diskp)
{
 _rw_init_flags(&diskp->dk_lock, "dklk", 0x04, ((void *)0));
 do { (void)(((void *)0)); (void)(0); __mtx_init((&diskp->dk_mtx), ((((5)) > 0 && ((5)) < 12) ? 12 : ((5)))); } while (0);
 diskp->dk_flags |= 0x0001;
 return (0);
}
void
disk_attach(struct device *dv, struct disk *diskp)
{
 int majdev;
 if (!((diskp->dk_flags) & (0x0001)))
  disk_construct(diskp);
 diskp->dk_label = malloc(sizeof(struct disklabel), 2,
     0x0002|0x0008);
 if (diskp->dk_label == ((void *)0))
  panic("disk_attach: can't allocate storage for disklabel");
 microuptime(&diskp->dk_attachtime);
 do { (diskp)->dk_link.tqe_next = ((void *)0); (diskp)->dk_link.tqe_prev = (&disklist)->tqh_last; *(&disklist)->tqh_last = (diskp); (&disklist)->tqh_last = &(diskp)->dk_link.tqe_next; } while (0);
 ++disk_count;
 disk_change = 1;
 diskp->dk_device = dv;
 diskp->dk_devno = (dev_t)(-1);
 if (dv != ((void *)0)) {
  majdev = findblkmajor(dv);
  if (majdev >= 0)
   diskp->dk_devno =
       (((dev_t)(((((majdev)) & 0xff) << 8) | ((((((dv->dv_unit)) * 16) + ((2)))) & 0xff) | (((((((dv->dv_unit)) * 16) + ((2)))) & 0xffff00) << 8))));
  if (diskp->dk_devno != (dev_t)(-1)) {
   struct disk_attach_task *dat;
   dat = malloc(sizeof(*dat), 127, 0x0001);
   device_ref(dv);
   dat->dk = diskp;
   task_set(&dat->task, disk_attach_callback, dat);
   task_add(systq, &dat->task);
  }
 }
 if (softraid_disk_attach)
  softraid_disk_attach(diskp, 1);
}
void
disk_attach_callback(void *xdat)
{
 struct disk_attach_task *dat = xdat;
 struct disk *dk = dat->dk;
 struct disklabel dl;
 char errbuf[100];
 free(dat, 127, sizeof(*dat));
 if (dk->dk_flags & (0x0002 | 0x0004))
  goto done;
 if (disk_readlabel(&dl, dk->dk_devno, errbuf, sizeof(errbuf)) == ((void *)0)) {
  enqueue_randomness(1, (int)(dl.d_checksum));
  dk->dk_flags |= 0x0008;
 }
done:
 dk->dk_flags |= 0x0002;
 device_unref(dk->dk_device);
 wakeup(dk);
}
void
disk_detach(struct disk *diskp)
{
 if (softraid_disk_attach)
  softraid_disk_attach(diskp, -1);
 free(diskp->dk_label, 2, sizeof(*diskp->dk_label));
 do { if (((diskp)->dk_link.tqe_next) != ((void *)0)) (diskp)->dk_link.tqe_next->dk_link.tqe_prev = (diskp)->dk_link.tqe_prev; else (&disklist)->tqh_last = (diskp)->dk_link.tqe_prev; *(diskp)->dk_link.tqe_prev = (diskp)->dk_link.tqe_next; ((diskp)->dk_link.tqe_prev) = ((void *)-1); ((diskp)->dk_link.tqe_next) = ((void *)-1); } while (0);
 disk_change = 1;
 if (--disk_count < 0)
  panic("disk_detach: disk_count < 0");
}
int
disk_openpart(struct disk *dk, int part, int fmt, int haslabel)
{
 ((part >= 0 && part < 16) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../kern/subr_disk.c", 1171, "part >= 0 && part < MAXPARTITIONS"));
 if (part != 2 && (!haslabel ||
     part >= dk->dk_label->d_npartitions ||
     dk->dk_label->d_partitions[part].p_fstype == 0))
  return (6);
 switch (fmt) {
 case 0020000:
  dk->dk_copenmask |= (1 << part);
  break;
 case 0060000:
  dk->dk_bopenmask |= (1 << part);
  break;
 }
 dk->dk_openmask = dk->dk_copenmask | dk->dk_bopenmask;
 return (0);
}
void
disk_closepart(struct disk *dk, int part, int fmt)
{
 ((part >= 0 && part < 16) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../kern/subr_disk.c", 1196, "part >= 0 && part < MAXPARTITIONS"));
 switch (fmt) {
 case 0020000:
  dk->dk_copenmask &= ~(1 << part);
  break;
 case 0060000:
  dk->dk_bopenmask &= ~(1 << part);
  break;
 }
 dk->dk_openmask = dk->dk_copenmask | dk->dk_bopenmask;
}
void
disk_gone(int (*open)(dev_t, int, int, struct proc *), int unit)
{
 int bmaj, cmaj, mn;
 mn = (((unit) * 16) + (0));
 for (bmaj = 0; bmaj < nblkdev; bmaj++)
  if (bdevsw[bmaj].d_open == open)
   vdevgone(bmaj, mn, mn + 16 - 1, VBLK);
 for (cmaj = 0; cmaj < nchrdev; cmaj++)
  if (cdevsw[cmaj].d_open == open)
   vdevgone(cmaj, mn, mn + 16 - 1, VCHR);
}
void
disk_busy(struct disk *diskp)
{
 __mtx_enter(&diskp->dk_mtx );
 if (diskp->dk_busy++ == 0)
  microuptime(&diskp->dk_timestamp);
 __mtx_leave(&diskp->dk_mtx );
}
void
disk_unbusy(struct disk *diskp, long bcount, daddr_t blkno, int read)
{
 struct timeval dv_time, diff_time;
 __mtx_enter(&diskp->dk_mtx );
 if (diskp->dk_busy-- == 0)
  printf("disk_unbusy: %s: dk_busy < 0\n", diskp->dk_name);
 microuptime(&dv_time);
 do { (&diff_time)->tv_sec = (&dv_time)->tv_sec - (&diskp->dk_timestamp)->tv_sec; (&diff_time)->tv_usec = (&dv_time)->tv_usec - (&diskp->dk_timestamp)->tv_usec; if ((&diff_time)->tv_usec < 0) { (&diff_time)->tv_sec--; (&diff_time)->tv_usec += 1000000; } } while (0);
 do { (&diskp->dk_time)->tv_sec = (&diskp->dk_time)->tv_sec + (&diff_time)->tv_sec; (&diskp->dk_time)->tv_usec = (&diskp->dk_time)->tv_usec + (&diff_time)->tv_usec; if ((&diskp->dk_time)->tv_usec >= 1000000) { (&diskp->dk_time)->tv_sec++; (&diskp->dk_time)->tv_usec -= 1000000; } } while (0);
 diskp->dk_timestamp = dv_time;
 if (bcount > 0) {
  if (read) {
   diskp->dk_rbytes += bcount;
   diskp->dk_rxfer++;
  } else {
   diskp->dk_wbytes += bcount;
   diskp->dk_wxfer++;
  }
 } else
  diskp->dk_seek++;
 __mtx_leave(&diskp->dk_mtx );
 enqueue_randomness(4, (int)(bcount ^ diff_time.tv_usec ^ (blkno >> 32) ^ (blkno & 0xffffffff)));
}
int
disk_lock(struct disk *dk)
{
 return (_rw_enter(&dk->dk_lock, 0x0001UL|0x0010UL ));
}
void
disk_lock_nointr(struct disk *dk)
{
 _rw_enter_write(&dk->dk_lock );
}
void
disk_unlock(struct disk *dk)
{
 _rw_exit_write(&dk->dk_lock );
}
int
dk_mountroot(void)
{
 char errbuf[100];
 int part = (((int32_t)((rootdev) & 0xff) | (((rootdev) & 0xffff0000) >> 8)) % 16);
 int (*mountrootfn)(void);
 struct disklabel dl;
 char *error;
 error = disk_readlabel(&dl, rootdev, errbuf, sizeof(errbuf));
 if (error)
  panic("%s", error);
 if ((((u_int64_t)(&dl.d_partitions[part])->p_sizeh << 32) + (&dl.d_partitions[part])->p_size) == 0)
  panic("root filesystem has size 0");
 switch (dl.d_partitions[part].p_fstype) {
 case 17:
  {
  extern int ext2fs_mountroot(void);
  mountrootfn = ext2fs_mountroot;
  }
  break;
 case 7:
  {
  extern int ffs_mountroot(void);
  mountrootfn = ffs_mountroot;
  }
  break;
 case 12:
  {
  extern int cd9660_mountroot(void);
  mountrootfn = cd9660_mountroot;
  }
  break;
 default:
  {
  extern int ffs_mountroot(void);
  printf("filesystem type %d not known.. assuming ffs\n",
      dl.d_partitions[part].p_fstype);
  mountrootfn = ffs_mountroot;
  }
 }
 return (*mountrootfn)();
}
struct device *
getdisk(char *str, int len, int defpart, dev_t *devp)
{
 struct device *dv;
 if ((dv = parsedisk(str, len, defpart, devp)) == ((void *)0)) {
  printf("use one of: exit");
  for((dv) = ((&alldevs)->tqh_first); (dv) != ((void *)0); (dv) = ((dv)->dv_list.tqe_next)) {
   if (dv->dv_class == DV_DISK)
    printf(" %s[a-p]", dv->dv_xname);
   if (dv->dv_class == DV_IFNET)
    printf(" %s", dv->dv_xname);
  }
  printf("\n");
 }
 return (dv);
}
struct device *
parsedisk(char *str, int len, int defpart, dev_t *devp)
{
 struct device *dv;
 int majdev, part = defpart;
 char c;
 if (len == 0)
  return (((void *)0));
 c = str[len-1];
 if (c >= 'a' && (c - 'a') < 16) {
  part = c - 'a';
  len -= 1;
 }
 for((dv) = ((&alldevs)->tqh_first); (dv) != ((void *)0); (dv) = ((dv)->dv_list.tqe_next)) {
  if (dv->dv_class == DV_DISK &&
      strncmp(str, dv->dv_xname, len) == 0 &&
      dv->dv_xname[len] == '\0') {
   majdev = findblkmajor(dv);
   if (majdev < 0)
    return ((void *)0);
   *devp = (((dev_t)(((((majdev)) & 0xff) << 8) | ((((((dv->dv_unit)) * 16) + ((part)))) & 0xff) | (((((((dv->dv_unit)) * 16) + ((part)))) & 0xffff00) << 8))));
   break;
  }
  if (dv->dv_class == DV_IFNET &&
      strncmp(str, dv->dv_xname, len) == 0 &&
      dv->dv_xname[len] == '\0') {
   *devp = (dev_t)(-1);
   break;
  }
 }
 return (dv);
}
void
setroot(struct device *bootdv, int part, int exitflags)
{
 int majdev, unit, len, s, slept = 0;
 struct swdevt *swp;
 struct device *rootdv, *dv;
 dev_t nrootdev, nswapdev = (dev_t)(-1), temp = (dev_t)(-1);
 struct ifnet *ifp = ((void *)0);
 struct disk *dk;
 char buf[128];
 extern char *nfsbootdevname;
 do {
  for((dk) = ((&disklist)->tqh_first); (dk) != ((void *)0); (dk) = ((dk)->dk_link.tqe_next)) {
   if (dk->dk_devno != (dev_t)(-1) &&
       (dk->dk_flags & 0x0002) == 0) {
    tsleep(dk, 0, "dkopen", hz);
    slept++;
    break;
   }
  }
 } while (dk != ((void *)0) && slept < 5);
 if (slept == 5) {
  printf("disklabels not read:");
  for((dk) = ((&disklist)->tqh_first); (dk) != ((void *)0); (dk) = ((dk)->dk_link.tqe_next))
   if (dk->dk_devno != (dev_t)(-1) &&
       (dk->dk_flags & 0x0002) == 0)
    printf(" %s", dk->dk_name);
  printf("\n");
 }
 if (duid_iszero(bootduid)) {
  for((dk) = ((&disklist)->tqh_first); (dk) != ((void *)0); (dk) = ((dk)->dk_link.tqe_next))
   if (dk->dk_device == bootdv)
    break;
  if (dk && (dk->dk_flags & 0x0008))
   __builtin_bcopy((dk->dk_label->d_uid), (bootduid), (sizeof(bootduid)));
 } else if (bootdv == ((void *)0)) {
  for((dk) = ((&disklist)->tqh_first); (dk) != ((void *)0); (dk) = ((dk)->dk_link.tqe_next))
   if (duid_equal(dk->dk_label->d_uid, bootduid))
    break;
  if (dk && (dk->dk_flags & 0x0008))
   bootdv = dk->dk_device;
 }
 __builtin_bcopy((bootduid), (rootduid), (sizeof(rootduid)));
 sr_map_root();
 dk = ((void *)0);
 if (mountroot == ((void *)0) && bootdv == ((void *)0))
  boothowto |= 0x0001;
 if (boothowto & 0x0001) {
  while (1) {
   printf("root device");
   if (bootdv != ((void *)0)) {
    printf(" (default %s", bootdv->dv_xname);
    if (bootdv->dv_class == DV_DISK)
     printf("%c", 'a' + part);
    printf(")");
   }
   printf(": ");
   s = _splraise(15);
   cnpollc(1);
   len = getsn(buf, sizeof(buf));
   cnpollc(0);
   _splx(s);
   if (strcmp(buf, "exit") == 0)
    reboot(exitflags);
   if (len == 0 && bootdv != ((void *)0)) {
    strlcpy(buf, bootdv->dv_xname, sizeof buf);
    len = strlen(buf);
   }
   if (len > 0 && buf[len - 1] == '*') {
    buf[--len] = '\0';
    dv = getdisk(buf, len, part, &nrootdev);
    if (dv != ((void *)0)) {
     rootdv = dv;
     nswapdev = nrootdev;
     goto gotswap;
    }
   }
   dv = getdisk(buf, len, part, &nrootdev);
   if (dv != ((void *)0)) {
    rootdv = dv;
    break;
   }
  }
  if (rootdv->dv_class == DV_IFNET)
   goto gotswap;
  while (1) {
   printf("swap device");
   if (rootdv != ((void *)0))
    printf(" (default %s%s)", rootdv->dv_xname,
        rootdv->dv_class == DV_DISK ? "b" : "");
   printf(": ");
   s = _splraise(15);
   cnpollc(1);
   len = getsn(buf, sizeof(buf));
   cnpollc(0);
   _splx(s);
   if (strcmp(buf, "exit") == 0)
    reboot(exitflags);
   if (len == 0 && rootdv != ((void *)0)) {
    switch (rootdv->dv_class) {
    case DV_IFNET:
     nswapdev = (dev_t)(-1);
     break;
    case DV_DISK:
     nswapdev = (((dev_t)(((((((int32_t)(((u_int32_t)(nrootdev) >> 8) & 0xff)))) & 0xff) << 8) | (((((((((int32_t)((nrootdev) & 0xff) | (((nrootdev) & 0xffff0000) >> 8)) / 16))) * 16) + ((1)))) & 0xff) | ((((((((((int32_t)((nrootdev) & 0xff) | (((nrootdev) & 0xffff0000) >> 8)) / 16))) * 16) + ((1)))) & 0xffff00) << 8))));
     if (nswapdev == nrootdev)
      continue;
     break;
    default:
     break;
    }
    break;
   }
   dv = getdisk(buf, len, 1, &nswapdev);
   if (dv) {
    if (dv->dv_class == DV_IFNET)
     nswapdev = (dev_t)(-1);
    if (nswapdev == nrootdev)
     continue;
    break;
   }
  }
gotswap:
  rootdev = nrootdev;
  dumpdev = nswapdev;
  swdevt[0].sw_dev = nswapdev;
  swdevt[1].sw_dev = (dev_t)(-1);
 } else if (mountroot == nfs_mountroot) {
  rootdv = bootdv;
  rootdev = dumpdev = swapdev = (dev_t)(-1);
 } else if (mountroot == ((void *)0) && rootdev == (dev_t)(-1)) {
  rootdv = bootdv;
  if (bootdv->dv_class == DV_DISK) {
   if (!duid_iszero(rootduid)) {
    for((dk) = ((&disklist)->tqh_first); (dk) != ((void *)0); (dk) = ((dk)->dk_link.tqe_next))
     if ((dk->dk_flags & 0x0008) &&
         dk->dk_label && duid_equal(
         dk->dk_label->d_uid, rootduid))
      break;
    if (dk == ((void *)0))
     panic("root device (%s) not found",
         duid_format(rootduid));
    rootdv = dk->dk_device;
   }
  }
  majdev = findblkmajor(rootdv);
  if (majdev >= 0) {
   rootdev = (((dev_t)(((((majdev)) & 0xff) << 8) | ((((((rootdv->dv_unit)) * 16) + ((part)))) & 0xff) | (((((((rootdv->dv_unit)) * 16) + ((part)))) & 0xffff00) << 8))));
   nswapdev = (((dev_t)(((((majdev)) & 0xff) << 8) | ((((((rootdv->dv_unit)) * 16) + ((1)))) & 0xff) | (((((((rootdv->dv_unit)) * 16) + ((1)))) & 0xffff00) << 8))));
  } else {
   nswapdev = (dev_t)(-1);
  }
  dumpdev = nswapdev;
  swdevt[0].sw_dev = nswapdev;
 } else {
  majdev = ((int32_t)(((u_int32_t)(rootdev) >> 8) & 0xff));
  if (findblkname(majdev) == ((void *)0))
   return;
  unit = (((int32_t)((rootdev) & 0xff) | (((rootdev) & 0xffff0000) >> 8)) / 16);
  part = (((int32_t)((rootdev) & 0xff) | (((rootdev) & 0xffff0000) >> 8)) % 16);
  snprintf(buf, sizeof buf, "%s%d%c",
      findblkname(majdev), unit, 'a' + part);
  rootdv = parsedisk(buf, strlen(buf), 0, &nrootdev);
  if (rootdv == ((void *)0))
   panic("root device (%s) not found", buf);
 }
 if (rootdv && rootdv == bootdv && rootdv->dv_class == DV_IFNET)
  ifp = ifunit(rootdv->dv_xname);
 else if (bootdv && bootdv->dv_class == DV_IFNET)
  ifp = ifunit(bootdv->dv_xname);
 if (ifp)
  if_addgroup(ifp, "netboot");
 switch (rootdv->dv_class) {
 case DV_IFNET:
  mountroot = nfs_mountroot;
  nfsbootdevname = rootdv->dv_xname;
  return;
 case DV_DISK:
  mountroot = dk_mountroot;
  part = (((int32_t)((rootdev) & 0xff) | (((rootdev) & 0xffff0000) >> 8)) % 16);
  break;
 default:
  printf("can't figure root, hope your kernel is right\n");
  return;
 }
 printf("root on %s%c", rootdv->dv_xname, 'a' + part);
 if (dk && dk->dk_device == rootdv)
  printf(" (%s.%c)", duid_format(rootduid), 'a' + part);
 for (swp = swdevt; swp->sw_dev != (dev_t)(-1); swp++) {
  if (((int32_t)(((u_int32_t)(rootdev) >> 8) & 0xff)) == ((int32_t)(((u_int32_t)(swp->sw_dev) >> 8) & 0xff)) &&
      (((int32_t)((rootdev) & 0xff) | (((rootdev) & 0xffff0000) >> 8)) / 16) == (((int32_t)((swp->sw_dev) & 0xff) | (((swp->sw_dev) & 0xffff0000) >> 8)) / 16)) {
   temp = swdevt[0].sw_dev;
   swdevt[0].sw_dev = swp->sw_dev;
   swp->sw_dev = temp;
   break;
  }
 }
 if (swp->sw_dev != (dev_t)(-1)) {
  if (temp == dumpdev)
   dumpdev = swdevt[0].sw_dev;
 }
 if (swdevt[0].sw_dev != (dev_t)(-1))
  printf(" swap on %s%d%c", findblkname(((int32_t)(((u_int32_t)(swdevt[0].sw_dev) >> 8) & 0xff))),
      (((int32_t)((swdevt[0].sw_dev) & 0xff) | (((swdevt[0].sw_dev) & 0xffff0000) >> 8)) / 16),
      'a' + (((int32_t)((swdevt[0].sw_dev) & 0xff) | (((swdevt[0].sw_dev) & 0xffff0000) >> 8)) % 16));
 if (dumpdev != (dev_t)(-1))
  printf(" dump on %s%d%c", findblkname(((int32_t)(((u_int32_t)(dumpdev) >> 8) & 0xff))),
      (((int32_t)((dumpdev) & 0xff) | (((dumpdev) & 0xffff0000) >> 8)) / 16), 'a' + (((int32_t)((dumpdev) & 0xff) | (((dumpdev) & 0xffff0000) >> 8)) % 16));
 printf("\n");
}
extern struct nam2blk nam2blk[];
int
findblkmajor(struct device *dv)
{
 char buf[16], *p;
 int i;
 if (strlcpy(buf, dv->dv_xname, sizeof buf) >= sizeof buf)
  return (-1);
 for (p = buf; *p; p++)
  if (*p >= '0' && *p <= '9')
   *p = '\0';
 for (i = 0; nam2blk[i].name; i++)
  if (!strcmp(buf, nam2blk[i].name))
   return (nam2blk[i].maj);
 return (-1);
}
char *
findblkname(int maj)
{
 int i;
 for (i = 0; nam2blk[i].name; i++)
  if (nam2blk[i].maj == maj)
   return (nam2blk[i].name);
 return (((void *)0));
}
char *
disk_readlabel(struct disklabel *dl, dev_t dev, char *errbuf, size_t errsize)
{
 struct vnode *vn;
 dev_t chrdev, rawdev;
 int error;
 chrdev = blktochr(dev);
 rawdev = (((dev_t)(((((((int32_t)(((u_int32_t)(chrdev) >> 8) & 0xff)))) & 0xff) << 8) | (((((((((int32_t)((chrdev) & 0xff) | (((chrdev) & 0xffff0000) >> 8)) / 16))) * 16) + ((2)))) & 0xff) | ((((((((((int32_t)((chrdev) & 0xff) | (((chrdev) & 0xffff0000) >> 8)) / 16))) * 16) + ((2)))) & 0xffff00) << 8))));
 if (cdevvp(rawdev, &vn)) {
  snprintf(errbuf, errsize,
      "cannot obtain vnode for 0x%x/0x%x", dev, rawdev);
  return (errbuf);
 }
 error = VOP_OPEN(vn, 0x0001, ((struct ucred *)-1), (__curcpu->ci_self)->ci_curproc);
 if (error) {
  snprintf(errbuf, errsize,
      "cannot open disk, 0x%x/0x%x, error %d",
      dev, rawdev, error);
  goto done;
 }
 error = VOP_IOCTL(vn, ((unsigned long)0x40000000 | ((sizeof(struct disklabel) & 0x1fff) << 16) | ((('d')) << 8) | ((101))), (caddr_t)dl, 0x0001, ((struct ucred *)-1), (__curcpu->ci_self)->ci_curproc);
 if (error) {
  snprintf(errbuf, errsize,
      "cannot read disk label, 0x%x/0x%x, error %d",
      dev, rawdev, error);
 }
done:
 VOP_CLOSE(vn, 0x0001, ((struct ucred *)-1), (__curcpu->ci_self)->ci_curproc);
 vput(vn);
 if (error)
  return (errbuf);
 return (((void *)0));
}
int
disk_map(char *path, char *mappath, int size, int flags)
{
 struct disk *dk, *mdk;
 u_char uid[8];
 char c, part;
 int i;
 if (strchr(path, '/') != ((void *)0))
  return -1;
 if (!((strlen(path) == 16 && (flags & 0x1)) ||
     (strlen(path) == 18 && path[16] == '.')))
  return -1;
 if (flags & 0x1)
  part = 'a' + 2;
 else
  part = path[17];
 if (part < 'a' || part >= 'a' + 16)
  return -1;
 __builtin_memset((uid), (0), (sizeof(uid)));
 for (i = 0; i < 16; i++) {
  c = path[i];
  if (c >= '0' && c <= '9')
   c -= '0';
  else if (c >= 'a' && c <= 'f')
   c -= ('a' - 10);
  else
   return -1;
  uid[i / 2] <<= 4;
  uid[i / 2] |= c & 0xf;
 }
 mdk = ((void *)0);
 for((dk) = ((&disklist)->tqh_first); (dk) != ((void *)0); (dk) = ((dk)->dk_link.tqe_next)) {
  if ((dk->dk_flags & 0x0008) && dk->dk_label &&
      __builtin_memcmp((dk->dk_label->d_uid), (uid), (sizeof(dk->dk_label->d_uid))) == 0) {
   if (mdk != ((void *)0))
    return -1;
   mdk = dk;
  }
 }
 if (mdk == ((void *)0) || mdk->dk_name == ((void *)0))
  return -1;
 snprintf(mappath, size, "/dev/%s%s%c",
     (flags & 0x2) ? "" : "r", mdk->dk_name, part);
 return 0;
}
struct device *
disk_lookup(struct cfdriver *cd, int unit)
{
 struct device *dv;
 struct disk *dk;
 dv = device_lookup(cd, unit);
 if (dv == ((void *)0))
  return (((void *)0));
 for((dk) = ((&disklist)->tqh_first); (dk) != ((void *)0); (dk) = ((dk)->dk_link.tqe_next))
  if (dk->dk_device == dv)
   break;
 if (dk == ((void *)0)) {
  device_unref(dv);
  return (((void *)0));
 }
 return (dv);
}
int
duid_equal(u_char *duid1, u_char *duid2)
{
 return (__builtin_memcmp((duid1), (duid2), (8)) == 0);
}
int
duid_iszero(u_char *duid)
{
 u_char zeroduid[8];
 __builtin_memset((zeroduid), (0), (sizeof(zeroduid)));
 return (duid_equal(duid, zeroduid));
}
const char *
duid_format(u_char *duid)
{
 static char duid_str[17];
 snprintf(duid_str, sizeof(duid_str),
     "%02x%02x%02x%02x%02x%02x%02x%02x",
     duid[0], duid[1], duid[2], duid[3],
     duid[4], duid[5], duid[6], duid[7]);
 return (duid_str);
}
