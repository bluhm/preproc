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
struct mutex {
 volatile void *mtx_owner;
 int mtx_wantipl;
 int mtx_oldipl;
};
void __mtx_init(struct mutex *, int);
void __mtx_enter(struct mutex *);
int __mtx_enter_try(struct mutex *);
void __mtx_leave(struct mutex *);
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
struct ctlname {
 char *ctl_name;
 int ctl_type;
};
struct kinfo_proc {
 u_int64_t p_forw;
 u_int64_t p_back;
 u_int64_t p_paddr;
 u_int64_t p_addr;
 u_int64_t p_fd;
 u_int64_t p_stats;
 u_int64_t p_limit;
 u_int64_t p_vmspace;
 u_int64_t p_sigacts;
 u_int64_t p_sess;
 u_int64_t p_tsess;
 u_int64_t p_ru;
 int32_t p_eflag;
 int32_t p_exitsig;
 int32_t p_flag;
 int32_t p_pid;
 int32_t p_ppid;
 int32_t p_sid;
 int32_t p__pgid;
 int32_t p_tpgid;
 u_int32_t p_uid;
 u_int32_t p_ruid;
 u_int32_t p_gid;
 u_int32_t p_rgid;
 u_int32_t p_groups[16];
 int16_t p_ngroups;
 int16_t p_jobc;
 u_int32_t p_tdev;
 u_int32_t p_estcpu;
 u_int32_t p_rtime_sec;
 u_int32_t p_rtime_usec;
 int32_t p_cpticks;
 u_int32_t p_pctcpu;
 u_int32_t p_swtime;
 u_int32_t p_slptime;
 int32_t p_schedflags;
 u_int64_t p_uticks;
 u_int64_t p_sticks;
 u_int64_t p_iticks;
 u_int64_t p_tracep;
 int32_t p_traceflag;
 int32_t p_holdcnt;
 int32_t p_siglist;
 u_int32_t p_sigmask;
 u_int32_t p_sigignore;
 u_int32_t p_sigcatch;
 int8_t p_stat;
 u_int8_t p_priority;
 u_int8_t p_usrpri;
 u_int8_t p_nice;
 u_int16_t p_xstat;
 u_int16_t p_acflag;
 char p_comm[24];
 char p_wmesg[8];
 u_int64_t p_wchan;
 char p_login[32];
 int32_t p_vm_rssize;
 int32_t p_vm_tsize;
 int32_t p_vm_dsize;
 int32_t p_vm_ssize;
 int64_t p_uvalid;
 u_int64_t p_ustart_sec;
 u_int32_t p_ustart_usec;
 u_int32_t p_uutime_sec;
 u_int32_t p_uutime_usec;
 u_int32_t p_ustime_sec;
 u_int32_t p_ustime_usec;
 u_int64_t p_uru_maxrss;
 u_int64_t p_uru_ixrss;
 u_int64_t p_uru_idrss;
 u_int64_t p_uru_isrss;
 u_int64_t p_uru_minflt;
 u_int64_t p_uru_majflt;
 u_int64_t p_uru_nswap;
 u_int64_t p_uru_inblock;
 u_int64_t p_uru_oublock;
 u_int64_t p_uru_msgsnd;
 u_int64_t p_uru_msgrcv;
 u_int64_t p_uru_nsignals;
 u_int64_t p_uru_nvcsw;
 u_int64_t p_uru_nivcsw;
 u_int32_t p_uctime_sec;
 u_int32_t p_uctime_usec;
 int32_t p_psflags;
 int32_t p_spare;
 u_int32_t p_svuid;
 u_int32_t p_svgid;
 char p_emul[8];
 u_int64_t p_rlim_rss_cur;
 u_int64_t p_cpuid;
 u_int64_t p_vm_map_size;
 int32_t p_tid;
 u_int32_t p_rtableid;
};
struct kinfo_vmentry {
 u_long kve_start;
 u_long kve_end;
 u_long kve_guard;
 u_long kve_fspace;
 u_long kve_fspace_augment;
 u_int64_t kve_offset;
 int kve_wired_count;
 int kve_etype;
 int kve_protection;
 int kve_max_protection;
 int kve_advice;
 int kve_inheritance;
 u_int8_t kve_flags;
};
struct kinfo_file {
 uint64_t f_fileaddr;
 uint32_t f_flag;
 uint32_t f_iflags;
 uint32_t f_type;
 uint32_t f_count;
 uint32_t f_msgcount;
 uint32_t f_usecount;
 uint64_t f_ucred;
 uint32_t f_uid;
 uint32_t f_gid;
 uint64_t f_ops;
 uint64_t f_offset;
 uint64_t f_data;
 uint64_t f_rxfer;
 uint64_t f_rwfer;
 uint64_t f_seek;
 uint64_t f_rbytes;
 uint64_t f_wbytes;
 uint64_t v_un;
 uint32_t v_type;
 uint32_t v_tag;
 uint32_t v_flag;
 uint32_t va_rdev;
 uint64_t v_data;
 uint64_t v_mount;
 uint64_t va_fileid;
 uint64_t va_size;
 uint32_t va_mode;
 uint32_t va_fsid;
 char f_mntonname[96];
 uint32_t so_type;
 uint32_t so_state;
 uint64_t so_pcb;
 uint32_t so_protocol;
 uint32_t so_family;
 uint64_t inp_ppcb;
 uint32_t inp_lport;
 uint32_t inp_laddru[4];
 uint32_t inp_fport;
 uint32_t inp_faddru[4];
 uint64_t unp_conn;
 uint64_t pipe_peer;
 uint32_t pipe_state;
 uint32_t kq_count;
 uint32_t kq_state;
 uint32_t __unused1;
 uint32_t p_pid;
 int32_t fd_fd;
 uint32_t fd_ofileflags;
 uint32_t p_uid;
 uint32_t p_gid;
 uint32_t p_tid;
 char p_comm[24];
 uint32_t inp_rtableid;
 uint64_t so_splice;
 int64_t so_splicelen;
 uint64_t so_rcv_cc;
 uint64_t so_snd_cc;
 uint64_t unp_refs;
 uint64_t unp_nextref;
 uint64_t unp_addr;
 char unp_path[104];
 uint32_t inp_proto;
 uint32_t t_state;
 uint64_t t_rcv_wnd;
 uint64_t t_snd_wnd;
 uint64_t t_snd_cwnd;
 uint32_t va_nlink;
};
typedef int (sysctlfn)(int *, u_int, void *, size_t *, void *, size_t, struct proc *);
int sysctl_int(void *, size_t *, void *, size_t, int *);
int sysctl_int_lower(void *, size_t *, void *, size_t, int *);
int sysctl_rdint(void *, size_t *, void *, int);
int sysctl_int_arr(int **, int *, u_int, void *, size_t *, void *, size_t);
int sysctl_quad(void *, size_t *, void *, size_t, int64_t *);
int sysctl_rdquad(void *, size_t *, void *, int64_t);
int sysctl_string(void *, size_t *, void *, size_t, char *, size_t);
int sysctl_tstring(void *, size_t *, void *, size_t, char *, size_t);
int sysctl__string(void *, size_t *, void *, size_t, char *, size_t, int);
int sysctl_rdstring(void *, size_t *, void *, const char *);
int sysctl_rdstruct(void *, size_t *, void *, const void *, size_t);
int sysctl_struct(void *, size_t *, void *, size_t, void *, size_t);
int sysctl_file(int *, u_int, char *, size_t *, struct proc *);
int sysctl_doproc(int *, u_int, char *, size_t *);
struct mbuf_queue;
int sysctl_mq(int *, u_int, void *, size_t *, void *, size_t,
    struct mbuf_queue *);
struct rtentry;
struct walkarg;
int sysctl_dumpentry(struct rtentry *, void *, unsigned int);
int sysctl_rtable(int *, u_int, void *, size_t *, void *, size_t);
int sysctl_clockrate(char *, size_t *, void *);
int sysctl_vnode(char *, size_t *, struct proc *);
int sysctl_dopool(int *, u_int, char *, size_t *);
int kern_sysctl(int *, u_int, void *, size_t *, void *, size_t,
       struct proc *);
int hw_sysctl(int *, u_int, void *, size_t *, void *, size_t,
     struct proc *);
int vm_sysctl(int *, u_int, void *, size_t *, void *, size_t,
     struct proc *);
int fs_sysctl(int *, u_int, void *, size_t *, void *, size_t,
     struct proc *);
int fs_posix_sysctl(int *, u_int, void *, size_t *, void *, size_t,
    struct proc *);
int net_sysctl(int *, u_int, void *, size_t *, void *, size_t,
      struct proc *);
int cpu_sysctl(int *, u_int, void *, size_t *, void *, size_t,
      struct proc *);
int vfs_sysctl(int *, u_int, void *, size_t *, void *, size_t,
      struct proc *);
int sysctl_sysvipc(int *, u_int, void *, size_t *);
int sysctl_wdog(int *, u_int, void *, size_t *, void *, size_t);
extern int (*cpu_cpuspeed)(int *);
extern void (*cpu_setperf)(int);
int bpf_sysctl(int *, u_int, void *, size_t *, void *, size_t);
int pflow_sysctl(int *, u_int, void *, size_t *, void *, size_t);
int pipex_sysctl(int *, u_int, void *, size_t *, void *, size_t);
int mpls_sysctl(int *, u_int, void *, size_t *, void *, size_t);
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
struct cpumem {
 void *mem;
};
struct cpumem_iter {
 unsigned int cpu;
} ;
struct counters_ref {
 uint64_t g;
 uint64_t *c;
};
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
struct pool;
struct cpumem *cpumem_get(struct pool *);
void cpumem_put(struct pool *, struct cpumem *);
struct cpumem *cpumem_malloc(size_t, int);
struct cpumem *cpumem_malloc_ncpus(struct cpumem *, size_t, int);
void cpumem_free(struct cpumem *, int, size_t);
void *cpumem_first(struct cpumem_iter *, struct cpumem *);
void *cpumem_next(struct cpumem_iter *, struct cpumem *);
static inline void *
cpumem_enter(struct cpumem *cm)
{
 return (cm[(__curcpu->ci_cpuid)].mem);
}
static inline void
cpumem_leave(struct cpumem *cm, void *mem)
{
}
struct cpumem *counters_alloc(unsigned int);
struct cpumem *counters_alloc_ncpus(struct cpumem *, unsigned int);
void counters_free(struct cpumem *, unsigned int);
void counters_read(struct cpumem *, uint64_t *, unsigned int);
void counters_zero(struct cpumem *, unsigned int);
static inline uint64_t *
counters_enter(struct counters_ref *ref, struct cpumem *cm)
{
 ref->c = cpumem_enter(cm);
 ref->g = ++(*ref->c);
 __asm volatile("membar " "#StoreStore" ::: "memory");
 return (ref->c + 1);
}
static inline void
counters_leave(struct counters_ref *ref, struct cpumem *cm)
{
 __asm volatile("membar " "#StoreStore" ::: "memory");
 (*ref->c) = ++ref->g;
 cpumem_leave(cm, ref->c);
}
static inline void
counters_inc(struct cpumem *cm, unsigned int c)
{
 struct counters_ref ref;
 uint64_t *counters;
 counters = counters_enter(&ref, cm);
 counters[c]++;
 counters_leave(&ref, cm);
}
static inline void
counters_add(struct cpumem *cm, unsigned int c, uint64_t v)
{
 struct counters_ref ref;
 uint64_t *counters;
 counters = counters_enter(&ref, cm);
 counters[c] += v;
 counters_leave(&ref, cm);
}
static inline void
counters_pkt(struct cpumem *cm, unsigned int c, unsigned int b, uint64_t v)
{
 struct counters_ref ref;
 uint64_t *counters;
 counters = counters_enter(&ref, cm);
 counters[c]++;
 counters[b] += v;
 counters_leave(&ref, cm);
}
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
struct { struct pool *sqh_first; struct pool **sqh_last; } pool_head = { ((void *)0), &(pool_head).sqh_first };
unsigned int pool_serial;
unsigned int pool_count;
struct rwlock pool_lock = { 0, "pools" };
struct pool phpool;
struct pool_lock_ops {
 void (*pl_init)(struct pool *, union pool_lock *,
      struct lock_type *);
 void (*pl_enter)(union pool_lock * );
 int (*pl_enter_try)(union pool_lock * );
 void (*pl_leave)(union pool_lock * );
 void (*pl_assert_locked)(union pool_lock *);
 void (*pl_assert_unlocked)(union pool_lock *);
 int (*pl_sleep)(void *, union pool_lock *, int, const char *, int);
};
static const struct pool_lock_ops pool_lock_ops_mtx;
static const struct pool_lock_ops pool_lock_ops_rw;
static inline void
pl_enter(struct pool *pp, union pool_lock *pl )
{
 pp->pr_lock_ops->pl_enter(pl );
}
static inline int
pl_enter_try(struct pool *pp, union pool_lock *pl )
{
 return pp->pr_lock_ops->pl_enter_try(pl );
}
static inline void
pl_leave(struct pool *pp, union pool_lock *pl )
{
 pp->pr_lock_ops->pl_leave(pl );
}
static inline void
pl_assert_locked(struct pool *pp, union pool_lock *pl)
{
 pp->pr_lock_ops->pl_assert_locked(pl);
}
static inline void
pl_assert_unlocked(struct pool *pp, union pool_lock *pl)
{
 pp->pr_lock_ops->pl_assert_unlocked(pl);
}
static inline int
pl_sleep(struct pool *pp, void *ident, union pool_lock *lock, int priority,
    const char *wmesg, int timo)
{
 return pp->pr_lock_ops->pl_sleep(ident, lock, priority, wmesg, timo);
}
struct pool_item {
 u_long pi_magic;
 struct { struct pool_item *sqx_next; } pi_list;
};
struct pool_page_header {
 struct { struct pool_page_header *tqe_next; struct pool_page_header **tqe_prev; }
    ph_entry;
 struct { struct pool_item *sqx_first; struct pool_item **sqx_last; unsigned long sqx_cookie; }
    ph_items;
 struct rb_entry
    ph_node;
 unsigned int ph_nmissing;
 caddr_t ph_page;
 caddr_t ph_colored;
 unsigned long ph_magic;
 int ph_tick;
};
struct pool_cache_item {
 struct pool_cache_item *ci_next;
 unsigned long ci_nitems;
 struct { struct pool_cache_item *tqe_next; struct pool_cache_item **tqe_prev; }
     ci_nextl;
};
struct pool_cache {
 struct pool_cache_item *pc_actv;
 unsigned long pc_nactv;
 struct pool_cache_item *pc_prev;
 uint64_t pc_gen;
 uint64_t pc_nget;
 uint64_t pc_nfail;
 uint64_t pc_nput;
 uint64_t pc_nlget;
 uint64_t pc_nlfail;
 uint64_t pc_nlput;
 int pc_nout;
};
void *pool_cache_get(struct pool *);
void pool_cache_put(struct pool *, void *);
void pool_cache_destroy(struct pool *);
void pool_cache_gc(struct pool *);
void pool_cache_pool_info(struct pool *, struct kinfo_pool *);
int pool_cache_info(struct pool *, void *, size_t *);
int pool_cache_cpus_info(struct pool *, void *, size_t *);
int pool_debug = 1;
struct pool_page_header *
  pool_p_alloc(struct pool *, int, int *);
void pool_p_insert(struct pool *, struct pool_page_header *);
void pool_p_remove(struct pool *, struct pool_page_header *);
void pool_p_free(struct pool *, struct pool_page_header *);
void pool_update_curpage(struct pool *);
void *pool_do_get(struct pool *, int, int *);
void pool_do_put(struct pool *, void *);
int pool_chk_page(struct pool *, struct pool_page_header *, int);
int pool_chk(struct pool *);
void pool_get_done(struct pool *, void *, void *);
void pool_runqueue(struct pool *, int);
void *pool_allocator_alloc(struct pool *, int, int *);
void pool_allocator_free(struct pool *, void *);
void *pool_page_alloc(struct pool *, int, int *);
void pool_page_free(struct pool *, void *);
struct pool_allocator pool_allocator_single = {
 pool_page_alloc,
 pool_page_free,
 (((1 << 13)) | (1UL))
};
void *pool_multi_alloc(struct pool *, int, int *);
void pool_multi_free(struct pool *, void *);
struct pool_allocator pool_allocator_multi = {
 pool_multi_alloc,
 pool_multi_free,
 (((1UL << 31)) | ((((1UL << 31)) - 1) & ~(((1 << 13)) - 1)) | (1UL))
};
void *pool_multi_alloc_ni(struct pool *, int, int *);
void pool_multi_free_ni(struct pool *, void *);
struct pool_allocator pool_allocator_multi_ni = {
 pool_multi_alloc_ni,
 pool_multi_free_ni,
 (((1UL << 31)) | ((((1UL << 31)) - 1) & ~(((1 << 13)) - 1)) | (1UL))
};
void pool_print_pagelist(struct pool_pagelist *, int (*)(const char *, ...)
      __attribute__((__format__(__kprintf__,1,2))));
void pool_print1(struct pool *, const char *, int (*)(const char *, ...)
      __attribute__((__format__(__kprintf__,1,2))));
void pool_gc_sched(void *);
struct timeout pool_gc_tick = { { ((void *)0), ((void *)0) }, (pool_gc_sched), (((void *)0)), 0, 4 };
void pool_gc_pages(void *);
struct task pool_gc_task = {{ ((void *)0), ((void *)0) }, (pool_gc_pages), (((void *)0)), 0 };
int pool_wait_free = 1;
int pool_wait_gc = 8;
extern const struct rb_type *const phtree_RBT_TYPE; __attribute__((__unused__)) static inline void phtree_RBT_INIT(struct phtree *head) { _rb_init(&head->rbh_root); } __attribute__((__unused__)) static inline struct pool_page_header * phtree_RBT_INSERT(struct phtree *head, struct pool_page_header *elm) { return _rb_insert(phtree_RBT_TYPE, &head->rbh_root, elm); } __attribute__((__unused__)) static inline struct pool_page_header * phtree_RBT_REMOVE(struct phtree *head, struct pool_page_header *elm) { return _rb_remove(phtree_RBT_TYPE, &head->rbh_root, elm); } __attribute__((__unused__)) static inline struct pool_page_header * phtree_RBT_FIND(struct phtree *head, const struct pool_page_header *key) { return _rb_find(phtree_RBT_TYPE, &head->rbh_root, key); } __attribute__((__unused__)) static inline struct pool_page_header * phtree_RBT_NFIND(struct phtree *head, const struct pool_page_header *key) { return _rb_nfind(phtree_RBT_TYPE, &head->rbh_root, key); } __attribute__((__unused__)) static inline struct pool_page_header * phtree_RBT_ROOT(struct phtree *head) { return _rb_root(phtree_RBT_TYPE, &head->rbh_root); } __attribute__((__unused__)) static inline int phtree_RBT_EMPTY(struct phtree *head) { return _rb_empty(&head->rbh_root); } __attribute__((__unused__)) static inline struct pool_page_header * phtree_RBT_MIN(struct phtree *head) { return _rb_min(phtree_RBT_TYPE, &head->rbh_root); } __attribute__((__unused__)) static inline struct pool_page_header * phtree_RBT_MAX(struct phtree *head) { return _rb_max(phtree_RBT_TYPE, &head->rbh_root); } __attribute__((__unused__)) static inline struct pool_page_header * phtree_RBT_NEXT(struct pool_page_header *elm) { return _rb_next(phtree_RBT_TYPE, elm); } __attribute__((__unused__)) static inline struct pool_page_header * phtree_RBT_PREV(struct pool_page_header *elm) { return _rb_prev(phtree_RBT_TYPE, elm); } __attribute__((__unused__)) static inline struct pool_page_header * phtree_RBT_LEFT(struct pool_page_header *elm) { return _rb_left(phtree_RBT_TYPE, elm); } __attribute__((__unused__)) static inline struct pool_page_header * phtree_RBT_RIGHT(struct pool_page_header *elm) { return _rb_right(phtree_RBT_TYPE, elm); } __attribute__((__unused__)) static inline struct pool_page_header * phtree_RBT_PARENT(struct pool_page_header *elm) { return _rb_parent(phtree_RBT_TYPE, elm); } __attribute__((__unused__)) static inline void phtree_RBT_SET_LEFT(struct pool_page_header *elm, struct pool_page_header *left) { return _rb_set_left(phtree_RBT_TYPE, elm, left); } __attribute__((__unused__)) static inline void phtree_RBT_SET_RIGHT(struct pool_page_header *elm, struct pool_page_header *right) { return _rb_set_right(phtree_RBT_TYPE, elm, right); } __attribute__((__unused__)) static inline void phtree_RBT_SET_PARENT(struct pool_page_header *elm, struct pool_page_header *parent) { return _rb_set_parent(phtree_RBT_TYPE, elm, parent); } __attribute__((__unused__)) static inline void phtree_RBT_POISON(struct pool_page_header *elm, unsigned long poison) { return _rb_poison(phtree_RBT_TYPE, elm, poison); } __attribute__((__unused__)) static inline int phtree_RBT_CHECK(struct pool_page_header *elm, unsigned long poison) { return _rb_check(phtree_RBT_TYPE, elm, poison); };
static inline int
phtree_compare(const struct pool_page_header *a,
    const struct pool_page_header *b)
{
 vaddr_t va = (vaddr_t)a->ph_page;
 vaddr_t vb = (vaddr_t)b->ph_page;
 if (vb < va)
  return (-1);
 if (vb > va)
  return (1);
 return (0);
}
static int phtree_RBT_COMPARE(const void *lptr, const void *rptr) { const struct pool_page_header *l = lptr, *r = rptr; return phtree_compare(l, r); } static const struct rb_type phtree_RBT_INFO = { phtree_RBT_COMPARE, ((void *)0), __builtin_offsetof(struct pool_page_header, ph_node), }; const struct rb_type *const phtree_RBT_TYPE = &phtree_RBT_INFO;
static inline struct pool_page_header *
pr_find_pagehead(struct pool *pp, void *v)
{
 struct pool_page_header *ph, key;
 if (((pp)->pr_phoffset != 0)) {
  caddr_t page;
  page = (caddr_t)((vaddr_t)v & pp->pr_pgmask);
  return ((struct pool_page_header *)(page + pp->pr_phoffset));
 }
 key.ph_page = v;
 ph = phtree_RBT_NFIND(&pp->pr_phtree, &key);
 if (ph == ((void *)0))
  panic("%s: %s: page header missing", __func__, pp->pr_wchan);
 ((ph->ph_page <= (caddr_t)v) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../kern/subr_pool.c", 318, "ph->ph_page <= (caddr_t)v"));
 if (ph->ph_page + pp->pr_pgsize <= (caddr_t)v)
  panic("%s: %s: incorrect page", __func__, pp->pr_wchan);
 return (ph);
}
void
pool_init(struct pool *pp, size_t size, u_int align, int ipl, int flags,
    const char *wchan, struct pool_allocator *palloc)
{
 int off = 0, space;
 unsigned int pgsize = (1 << 13), items;
 size_t pa_pagesz;
 struct pool *iter;
 if (align == 0)
  align = (((unsigned long)(1) + 0xf) & ~0xf);
 if (size < sizeof(struct pool_item))
  size = sizeof(struct pool_item);
 size = ((((size)+((align)-1))/(align))*(align));
 while (size * 8 > pgsize)
  pgsize <<= 1;
 if (palloc == ((void *)0)) {
  if (pgsize > (1 << 13)) {
   palloc = ((flags) & (0x0001)) ?
       &pool_allocator_multi_ni : &pool_allocator_multi;
  } else
   palloc = &pool_allocator_single;
  pa_pagesz = palloc->pa_pagesz;
 } else {
  size_t pgsizes;
  pa_pagesz = palloc->pa_pagesz;
  if (pa_pagesz == 0)
   pa_pagesz = (((1 << 13)) | (1UL));
  pgsizes = pa_pagesz & ~1UL;
  if (size > pgsizes) {
   panic("%s: pool %s item size 0x%zx > "
       "allocator %p sizes 0x%zx", __func__, wchan,
       size, palloc, pgsizes);
  }
  while (!((pgsizes) & (pgsize)))
   pgsize >>= 1;
 }
 ((((pa_pagesz) & (pgsize))) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../kern/subr_pool.c", 381, "ISSET(pa_pagesz, pgsize)"));
 items = pgsize / size;
 if (((pa_pagesz) & (1UL))) {
  if (pgsize - (size * items) >
      sizeof(struct pool_page_header)) {
   off = pgsize - sizeof(struct pool_page_header);
  } else if (sizeof(struct pool_page_header) * 2 >= size) {
   off = pgsize - sizeof(struct pool_page_header);
   items = off / size;
  }
 }
 ((items > 0) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../kern/subr_pool.c", 401, "items > 0"));
 __builtin_memset((pp), (0), (sizeof(*pp)));
 if (((flags) & (0x0010))) {
  ((flags & 0x0001) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../kern/subr_pool.c", 408, "flags & PR_WAITOK"));
  pp->pr_lock_ops = &pool_lock_ops_rw;
 } else
  pp->pr_lock_ops = &pool_lock_ops_mtx;
 do { (&pp->pr_emptypages)->tqh_first = ((void *)0); (&pp->pr_emptypages)->tqh_last = &(&pp->pr_emptypages)->tqh_first; } while (0);
 do { (&pp->pr_fullpages)->tqh_first = ((void *)0); (&pp->pr_fullpages)->tqh_last = &(&pp->pr_fullpages)->tqh_first; } while (0);
 do { (&pp->pr_partpages)->tqh_first = ((void *)0); (&pp->pr_partpages)->tqh_last = &(&pp->pr_partpages)->tqh_first; } while (0);
 pp->pr_curpage = ((void *)0);
 pp->pr_npages = 0;
 pp->pr_minitems = 0;
 pp->pr_minpages = 0;
 pp->pr_maxpages = 8;
 pp->pr_size = size;
 pp->pr_pgsize = pgsize;
 pp->pr_pgmask = ~0UL ^ (pgsize - 1);
 pp->pr_phoffset = off;
 pp->pr_itemsperpage = items;
 pp->pr_wchan = wchan;
 pp->pr_alloc = palloc;
 pp->pr_nitems = 0;
 pp->pr_nout = 0;
 pp->pr_hardlimit = 0xffffffffU;
 pp->pr_hardlimit_warning = ((void *)0);
 pp->pr_hardlimit_ratecap.tv_sec = 0;
 pp->pr_hardlimit_ratecap.tv_usec = 0;
 pp->pr_hardlimit_warning_last.tv_sec = 0;
 pp->pr_hardlimit_warning_last.tv_usec = 0;
 phtree_RBT_INIT(&pp->pr_phtree);
 space = ((pp)->pr_phoffset != 0) ? pp->pr_phoffset : pp->pr_pgsize;
 space -= pp->pr_itemsperpage * pp->pr_size;
 pp->pr_align = align;
 pp->pr_maxcolors = (space / align) + 1;
 pp->pr_nget = 0;
 pp->pr_nfail = 0;
 pp->pr_nput = 0;
 pp->pr_npagealloc = 0;
 pp->pr_npagefree = 0;
 pp->pr_hiwat = 0;
 pp->pr_nidle = 0;
 pp->pr_ipl = ipl;
 pp->pr_flags = flags;
 (pp)->pr_lock_ops->pl_init(pp, &pp->pr_lock, ((void *)0));
 (pp)->pr_lock_ops->pl_init(pp, &pp->pr_requests_lock, ((void *)0));
 do { (&pp->pr_requests)->tqh_first = ((void *)0); (&pp->pr_requests)->tqh_last = &(&pp->pr_requests)->tqh_first; } while (0);
 if (phpool.pr_size == 0) {
  pool_init(&phpool, sizeof(struct pool_page_header), 0,
      15, 0, "phpool", ((void *)0));
  ((((&phpool)->pr_phoffset != 0)) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../kern/subr_pool.c", 466, "POOL_INPGHDR(&phpool)"));
 }
 pp->pr_crange = &kp_dirty;
 _rw_enter_write(&pool_lock );
 for((iter) = ((&pool_head)->sqh_first); (iter) != ((void *)0); (iter) = ((iter)->pr_poollist.sqe_next)) {
  if (iter == pp)
   panic("%s: pool %s already on list", __func__, wchan);
 }
 pp->pr_serial = ++pool_serial;
 if (pool_serial == 0)
  panic("%s: too much uptime", __func__);
 do { if (((pp)->pr_poollist.sqe_next = (&pool_head)->sqh_first) == ((void *)0)) (&pool_head)->sqh_last = &(pp)->pr_poollist.sqe_next; (&pool_head)->sqh_first = (pp); } while (0);
 pool_count++;
 _rw_exit_write(&pool_lock );
}
void
pool_destroy(struct pool *pp)
{
 struct pool_page_header *ph;
 struct pool *prev, *iter;
 if (pp->pr_cache != ((void *)0))
  pool_cache_destroy(pp);
 if (pp->pr_nout != 0)
  panic("%s: pool busy: still out: %u", __func__, pp->pr_nout);
 _rw_enter_write(&pool_lock );
 pool_count--;
 if (pp == ((&pool_head)->sqh_first))
  do { if (((&pool_head)->sqh_first = (&pool_head)->sqh_first->pr_poollist.sqe_next) == ((void *)0)) (&pool_head)->sqh_last = &(&pool_head)->sqh_first; } while (0);
 else {
  prev = ((&pool_head)->sqh_first);
  for((iter) = ((&pool_head)->sqh_first); (iter) != ((void *)0); (iter) = ((iter)->pr_poollist.sqe_next)) {
   if (iter == pp) {
    do { if (((prev)->pr_poollist.sqe_next = (prev)->pr_poollist.sqe_next->pr_poollist.sqe_next) == ((void *)0)) (&pool_head)->sqh_last = &(prev)->pr_poollist.sqe_next; } while (0);
    break;
   }
   prev = iter;
  }
 }
 _rw_exit_write(&pool_lock );
 while ((ph = ((&pp->pr_emptypages)->tqh_first)) != ((void *)0)) {
  pl_enter(pp, &pp->pr_lock);
  pool_p_remove(pp, ph);
  pl_leave(pp, &pp->pr_lock);
  pool_p_free(pp, ph);
 }
 (((((&pp->pr_fullpages)->tqh_first) == ((void *)0))) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../kern/subr_pool.c", 534, "TAILQ_EMPTY(&pp->pr_fullpages)"));
 (((((&pp->pr_partpages)->tqh_first) == ((void *)0))) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../kern/subr_pool.c", 535, "TAILQ_EMPTY(&pp->pr_partpages)"));
}
void
pool_request_init(struct pool_request *pr,
    void (*handler)(struct pool *, void *, void *), void *cookie)
{
 pr->pr_handler = handler;
 pr->pr_cookie = cookie;
 pr->pr_item = ((void *)0);
}
void
pool_request(struct pool *pp, struct pool_request *pr)
{
 pl_enter(pp, &pp->pr_requests_lock);
 do { (pr)->pr_entry.tqe_next = ((void *)0); (pr)->pr_entry.tqe_prev = (&pp->pr_requests)->tqh_last; *(&pp->pr_requests)->tqh_last = (pr); (&pp->pr_requests)->tqh_last = &(pr)->pr_entry.tqe_next; } while (0);
 pool_runqueue(pp, 0x0002);
 pl_leave(pp, &pp->pr_requests_lock);
}
struct pool_get_memory {
 union pool_lock lock;
 void * volatile v;
};
void *
pool_get(struct pool *pp, int flags)
{
 void *v = ((void *)0);
 int slowdown = 0;
 ((flags & (0x0001 | 0x0002)) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../kern/subr_pool.c", 570, "flags & (PR_WAITOK | PR_NOWAIT)"));
 if (pp->pr_flags & 0x0010)
  ((flags & 0x0001) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../kern/subr_pool.c", 572, "flags & PR_WAITOK"));
 if (pp->pr_cache != ((void *)0)) {
  v = pool_cache_get(pp);
  if (v != ((void *)0))
   goto good;
 }
 pl_enter(pp, &pp->pr_lock);
 if (pp->pr_nout >= pp->pr_hardlimit) {
  if (((flags) & (0x0002|0x0004)))
   goto fail;
 } else if ((v = pool_do_get(pp, flags, &slowdown)) == ((void *)0)) {
  if (((flags) & (0x0002)))
   goto fail;
 }
 pl_leave(pp, &pp->pr_lock);
 if ((slowdown || pool_debug == 2) && ((flags) & (0x0001)))
  yield();
 if (v == ((void *)0)) {
  struct pool_get_memory mem = { .v = ((void *)0) };
  struct pool_request pr;
  (pp)->pr_lock_ops->pl_init(pp, &mem.lock, ((void *)0));
  pool_request_init(&pr, pool_get_done, &mem);
  pool_request(pp, &pr);
  pl_enter(pp, &mem.lock);
  while (mem.v == ((void *)0))
   pl_sleep(pp, &mem, &mem.lock, 0, pp->pr_wchan, 0);
  pl_leave(pp, &mem.lock);
  v = mem.v;
 }
good:
 if (((flags) & (0x0008)))
  __builtin_memset((v), (0), (pp->pr_size));
 return (v);
fail:
 pp->pr_nfail++;
 pl_leave(pp, &pp->pr_lock);
 return (((void *)0));
}
void
pool_get_done(struct pool *pp, void *xmem, void *v)
{
 struct pool_get_memory *mem = xmem;
 pl_enter(pp, &mem->lock);
 mem->v = v;
 pl_leave(pp, &mem->lock);
 wakeup_n((mem), 1);
}
void
pool_runqueue(struct pool *pp, int flags)
{
 struct pool_requests prl = { ((void *)0), &(prl).tqh_first };
 struct pool_request *pr;
 pl_assert_unlocked(pp, &pp->pr_lock);
 pl_assert_locked(pp, &pp->pr_requests_lock);
 if (pp->pr_requesting++)
  return;
 do {
  pp->pr_requesting = 1;
  while ((pr = ((&pp->pr_requests)->tqh_first)) != ((void *)0)) {
   do { if (((pr)->pr_entry.tqe_next) != ((void *)0)) (pr)->pr_entry.tqe_next->pr_entry.tqe_prev = (pr)->pr_entry.tqe_prev; else (&pp->pr_requests)->tqh_last = (pr)->pr_entry.tqe_prev; *(pr)->pr_entry.tqe_prev = (pr)->pr_entry.tqe_next; ((pr)->pr_entry.tqe_prev) = ((void *)-1); ((pr)->pr_entry.tqe_next) = ((void *)-1); } while (0);
   do { (pr)->pr_entry.tqe_next = ((void *)0); (pr)->pr_entry.tqe_prev = (&prl)->tqh_last; *(&prl)->tqh_last = (pr); (&prl)->tqh_last = &(pr)->pr_entry.tqe_next; } while (0);
  }
  if ((((&prl)->tqh_first) == ((void *)0)))
   continue;
  pl_leave(pp, &pp->pr_requests_lock);
  pl_enter(pp, &pp->pr_lock);
  pr = ((&prl)->tqh_first);
  while (pr != ((void *)0)) {
   int slowdown = 0;
   if (pp->pr_nout >= pp->pr_hardlimit)
    break;
   pr->pr_item = pool_do_get(pp, flags, &slowdown);
   if (pr->pr_item == ((void *)0))
    break;
   pr = ((pr)->pr_entry.tqe_next);
  }
  pl_leave(pp, &pp->pr_lock);
  while ((pr = ((&prl)->tqh_first)) != ((void *)0) &&
      pr->pr_item != ((void *)0)) {
   do { if (((pr)->pr_entry.tqe_next) != ((void *)0)) (pr)->pr_entry.tqe_next->pr_entry.tqe_prev = (pr)->pr_entry.tqe_prev; else (&prl)->tqh_last = (pr)->pr_entry.tqe_prev; *(pr)->pr_entry.tqe_prev = (pr)->pr_entry.tqe_next; ((pr)->pr_entry.tqe_prev) = ((void *)-1); ((pr)->pr_entry.tqe_next) = ((void *)-1); } while (0);
   (*pr->pr_handler)(pp, pr->pr_cookie, pr->pr_item);
  }
  pl_enter(pp, &pp->pr_requests_lock);
 } while (--pp->pr_requesting);
 while ((pr = ((&prl)->tqh_first)) != ((void *)0)) {
  do { if (((pr)->pr_entry.tqe_next) != ((void *)0)) (pr)->pr_entry.tqe_next->pr_entry.tqe_prev = (pr)->pr_entry.tqe_prev; else (&prl)->tqh_last = (pr)->pr_entry.tqe_prev; *(pr)->pr_entry.tqe_prev = (pr)->pr_entry.tqe_next; ((pr)->pr_entry.tqe_prev) = ((void *)-1); ((pr)->pr_entry.tqe_next) = ((void *)-1); } while (0);
  do { (pr)->pr_entry.tqe_next = ((void *)0); (pr)->pr_entry.tqe_prev = (&pp->pr_requests)->tqh_last; *(&pp->pr_requests)->tqh_last = (pr); (&pp->pr_requests)->tqh_last = &(pr)->pr_entry.tqe_next; } while (0);
 }
}
void *
pool_do_get(struct pool *pp, int flags, int *slowdown)
{
 struct pool_item *pi;
 struct pool_page_header *ph;
 pl_assert_locked(pp, &pp->pr_lock);
 do { if (splassert_ctl > 0) { splassert_check(pp->pr_ipl, __func__); } } while (0);
 pp->pr_nout++;
 if (pp->pr_curpage == ((void *)0)) {
  pl_leave(pp, &pp->pr_lock);
  ph = pool_p_alloc(pp, flags, slowdown);
  pl_enter(pp, &pp->pr_lock);
  if (ph == ((void *)0)) {
   pp->pr_nout--;
   return (((void *)0));
  }
  pool_p_insert(pp, ph);
 }
 ph = pp->pr_curpage;
 pi = ((__typeof(((&ph->ph_items)->sqx_first)))((&ph->ph_items)->sqx_cookie ^ (unsigned long)(((&ph->ph_items)->sqx_first))));
 if (__builtin_expect(((pi == ((void *)0)) != 0), 0))
  panic("%s: %s: page empty", __func__, pp->pr_wchan);
 if (__builtin_expect(((pi->pi_magic != ((u_long)(pi) ^ (ph)->ph_magic)) != 0), 0)) {
  panic("%s: %s free list modified: "
      "page %p; item addr %p; offset 0x%x=0x%lx != 0x%lx",
      __func__, pp->pr_wchan, ph->ph_page, pi,
      0, pi->pi_magic, ((u_long)(pi) ^ (ph)->ph_magic));
 }
 do { if (((&ph->ph_items)->sqx_first = ((__typeof((&ph->ph_items)->sqx_first))((&ph->ph_items)->sqx_cookie ^ (unsigned long)((&ph->ph_items)->sqx_first)))->pi_list.sqx_next) == ((__typeof(((void *)0)))((&ph->ph_items)->sqx_cookie ^ (unsigned long)(((void *)0))))) (&ph->ph_items)->sqx_last = ((__typeof(&(&ph->ph_items)->sqx_first))((&ph->ph_items)->sqx_cookie ^ (unsigned long)(&(&ph->ph_items)->sqx_first))); } while (0);
 if (pool_debug && (((ph)->ph_magic) & ((1 << 3)))) {
  size_t pidx;
  uint32_t pval;
  if (poison_check(pi + 1, pp->pr_size - sizeof(*pi),
      &pidx, &pval)) {
   int *ip = (int *)(pi + 1);
   panic("%s: %s free list modified: "
       "page %p; item addr %p; offset 0x%zx=0x%x",
       __func__, pp->pr_wchan, ph->ph_page, pi,
       (pidx * sizeof(int)) + sizeof(*pi), ip[pidx]);
  }
 }
 if (ph->ph_nmissing++ == 0) {
  do { if (((ph)->ph_entry.tqe_next) != ((void *)0)) (ph)->ph_entry.tqe_next->ph_entry.tqe_prev = (ph)->ph_entry.tqe_prev; else (&pp->pr_emptypages)->tqh_last = (ph)->ph_entry.tqe_prev; *(ph)->ph_entry.tqe_prev = (ph)->ph_entry.tqe_next; ((ph)->ph_entry.tqe_prev) = ((void *)-1); ((ph)->ph_entry.tqe_next) = ((void *)-1); } while (0);
  do { (ph)->ph_entry.tqe_next = ((void *)0); (ph)->ph_entry.tqe_prev = (&pp->pr_partpages)->tqh_last; *(&pp->pr_partpages)->tqh_last = (ph); (&pp->pr_partpages)->tqh_last = &(ph)->ph_entry.tqe_next; } while (0);
  pp->pr_nidle--;
 }
 if (ph->ph_nmissing == pp->pr_itemsperpage) {
  do { if (((ph)->ph_entry.tqe_next) != ((void *)0)) (ph)->ph_entry.tqe_next->ph_entry.tqe_prev = (ph)->ph_entry.tqe_prev; else (&pp->pr_partpages)->tqh_last = (ph)->ph_entry.tqe_prev; *(ph)->ph_entry.tqe_prev = (ph)->ph_entry.tqe_next; ((ph)->ph_entry.tqe_prev) = ((void *)-1); ((ph)->ph_entry.tqe_next) = ((void *)-1); } while (0);
  do { (ph)->ph_entry.tqe_next = ((void *)0); (ph)->ph_entry.tqe_prev = (&pp->pr_fullpages)->tqh_last; *(&pp->pr_fullpages)->tqh_last = (ph); (&pp->pr_fullpages)->tqh_last = &(ph)->ph_entry.tqe_next; } while (0);
  pool_update_curpage(pp);
 }
 pp->pr_nget++;
 return (pi);
}
void
pool_put(struct pool *pp, void *v)
{
 struct pool_page_header *ph, *freeph = ((void *)0);
 if (v == ((void *)0))
  panic("%s: NULL item", __func__);
 if (pp->pr_cache != ((void *)0) && (((&pp->pr_requests)->tqh_first) == ((void *)0))) {
  pool_cache_put(pp, v);
  return;
 }
 pl_enter(pp, &pp->pr_lock);
 pool_do_put(pp, v);
 pp->pr_nout--;
 pp->pr_nput++;
 if (pp->pr_nidle > pp->pr_maxpages &&
     (ph = ((&pp->pr_emptypages)->tqh_first)) != ((void *)0) &&
     (ticks - ph->ph_tick) > (hz * pool_wait_free)) {
  freeph = ph;
  pool_p_remove(pp, freeph);
 }
 pl_leave(pp, &pp->pr_lock);
 if (freeph != ((void *)0))
  pool_p_free(pp, freeph);
 if (!(((&pp->pr_requests)->tqh_first) == ((void *)0))) {
  pl_enter(pp, &pp->pr_requests_lock);
  pool_runqueue(pp, 0x0002);
  pl_leave(pp, &pp->pr_requests_lock);
 }
}
void
pool_do_put(struct pool *pp, void *v)
{
 struct pool_item *pi = v;
 struct pool_page_header *ph;
 do { if (splassert_ctl > 0) { splassert_check(pp->pr_ipl, __func__); } } while (0);
 ph = pr_find_pagehead(pp, v);
 if (pool_debug) {
  struct pool_item *qi;
  for ((qi) = ((__typeof(((&ph->ph_items)->sqx_first)))((&ph->ph_items)->sqx_cookie ^ (unsigned long)(((&ph->ph_items)->sqx_first)))); (qi) != ((void *)0); (qi) = ((__typeof(((qi)->pi_list.sqx_next)))((&ph->ph_items)->sqx_cookie ^ (unsigned long)(((qi)->pi_list.sqx_next))))) {
   if (pi == qi) {
    panic("%s: %s: double pool_put: %p", __func__,
        pp->pr_wchan, pi);
   }
  }
 }
 pi->pi_magic = ((u_long)(pi) ^ (ph)->ph_magic);
 do { if (((pi)->pi_list.sqx_next = (&ph->ph_items)->sqx_first) == ((__typeof(((void *)0)))((&ph->ph_items)->sqx_cookie ^ (unsigned long)(((void *)0))))) (&ph->ph_items)->sqx_last = ((__typeof(&(pi)->pi_list.sqx_next))((&ph->ph_items)->sqx_cookie ^ (unsigned long)(&(pi)->pi_list.sqx_next))); (&ph->ph_items)->sqx_first = ((__typeof((pi)))((&ph->ph_items)->sqx_cookie ^ (unsigned long)((pi)))); } while (0);
 if ((((ph)->ph_magic) & ((1 << 3))))
  poison_mem(pi + 1, pp->pr_size - sizeof(*pi));
 if (ph->ph_nmissing-- == pp->pr_itemsperpage) {
  do { if (((ph)->ph_entry.tqe_next) != ((void *)0)) (ph)->ph_entry.tqe_next->ph_entry.tqe_prev = (ph)->ph_entry.tqe_prev; else (&pp->pr_fullpages)->tqh_last = (ph)->ph_entry.tqe_prev; *(ph)->ph_entry.tqe_prev = (ph)->ph_entry.tqe_next; ((ph)->ph_entry.tqe_prev) = ((void *)-1); ((ph)->ph_entry.tqe_next) = ((void *)-1); } while (0);
  do { (ph)->ph_entry.tqe_next = ((void *)0); (ph)->ph_entry.tqe_prev = (&pp->pr_partpages)->tqh_last; *(&pp->pr_partpages)->tqh_last = (ph); (&pp->pr_partpages)->tqh_last = &(ph)->ph_entry.tqe_next; } while (0);
 }
 if (ph->ph_nmissing == 0) {
  pp->pr_nidle++;
  ph->ph_tick = ticks;
  do { if (((ph)->ph_entry.tqe_next) != ((void *)0)) (ph)->ph_entry.tqe_next->ph_entry.tqe_prev = (ph)->ph_entry.tqe_prev; else (&pp->pr_partpages)->tqh_last = (ph)->ph_entry.tqe_prev; *(ph)->ph_entry.tqe_prev = (ph)->ph_entry.tqe_next; ((ph)->ph_entry.tqe_prev) = ((void *)-1); ((ph)->ph_entry.tqe_next) = ((void *)-1); } while (0);
  do { (ph)->ph_entry.tqe_next = ((void *)0); (ph)->ph_entry.tqe_prev = (&pp->pr_emptypages)->tqh_last; *(&pp->pr_emptypages)->tqh_last = (ph); (&pp->pr_emptypages)->tqh_last = &(ph)->ph_entry.tqe_next; } while (0);
  pool_update_curpage(pp);
 }
}
int
pool_prime(struct pool *pp, int n)
{
 struct pool_pagelist pl = { ((void *)0), &(pl).tqh_first };
 struct pool_page_header *ph;
 int newpages;
 newpages = ((((n)+((pp->pr_itemsperpage)-1))/(pp->pr_itemsperpage))*(pp->pr_itemsperpage)) / pp->pr_itemsperpage;
 while (newpages-- > 0) {
  int slowdown = 0;
  ph = pool_p_alloc(pp, 0x0002, &slowdown);
  if (ph == ((void *)0))
   break;
  do { (ph)->ph_entry.tqe_next = ((void *)0); (ph)->ph_entry.tqe_prev = (&pl)->tqh_last; *(&pl)->tqh_last = (ph); (&pl)->tqh_last = &(ph)->ph_entry.tqe_next; } while (0);
 }
 pl_enter(pp, &pp->pr_lock);
 while ((ph = ((&pl)->tqh_first)) != ((void *)0)) {
  do { if (((ph)->ph_entry.tqe_next) != ((void *)0)) (ph)->ph_entry.tqe_next->ph_entry.tqe_prev = (ph)->ph_entry.tqe_prev; else (&pl)->tqh_last = (ph)->ph_entry.tqe_prev; *(ph)->ph_entry.tqe_prev = (ph)->ph_entry.tqe_next; ((ph)->ph_entry.tqe_prev) = ((void *)-1); ((ph)->ph_entry.tqe_next) = ((void *)-1); } while (0);
  pool_p_insert(pp, ph);
 }
 pl_leave(pp, &pp->pr_lock);
 return (0);
}
struct pool_page_header *
pool_p_alloc(struct pool *pp, int flags, int *slowdown)
{
 struct pool_page_header *ph;
 struct pool_item *pi;
 caddr_t addr;
 int n;
 pl_assert_unlocked(pp, &pp->pr_lock);
 ((pp->pr_size >= sizeof(*pi)) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../kern/subr_pool.c", 917, "pp->pr_size >= sizeof(*pi)"));
 addr = pool_allocator_alloc(pp, flags, slowdown);
 if (addr == ((void *)0))
  return (((void *)0));
 if (((pp)->pr_phoffset != 0))
  ph = (struct pool_page_header *)(addr + pp->pr_phoffset);
 else {
  ph = pool_get(&phpool, flags);
  if (ph == ((void *)0)) {
   pool_allocator_free(pp, addr);
   return (((void *)0));
  }
 }
 do { arc4random_buf(&(&ph->ph_items)->sqx_cookie, sizeof((&ph->ph_items)->sqx_cookie)); (&ph->ph_items)->sqx_first = ((__typeof(((void *)0)))((&ph->ph_items)->sqx_cookie ^ (unsigned long)(((void *)0)))); (&ph->ph_items)->sqx_last = ((__typeof(&(&ph->ph_items)->sqx_first))((&ph->ph_items)->sqx_cookie ^ (unsigned long)(&(&ph->ph_items)->sqx_first))); } while (0);
 ph->ph_page = addr;
 addr += pp->pr_align * (pp->pr_npagealloc % pp->pr_maxcolors);
 ph->ph_colored = addr;
 ph->ph_nmissing = 0;
 arc4random_buf(&ph->ph_magic, sizeof(ph->ph_magic));
 if (pool_debug)
  ((ph->ph_magic) |= ((1 << 3)));
 else
  ((ph->ph_magic) &= ~((1 << 3)));
 n = pp->pr_itemsperpage;
 while (n--) {
  pi = (struct pool_item *)addr;
  pi->pi_magic = ((u_long)(pi) ^ (ph)->ph_magic);
  do { (pi)->pi_list.sqx_next = ((__typeof(((void *)0)))((&ph->ph_items)->sqx_cookie ^ (unsigned long)(((void *)0)))); *(((__typeof((&ph->ph_items)->sqx_last))((&ph->ph_items)->sqx_cookie ^ (unsigned long)((&ph->ph_items)->sqx_last)))) = ((__typeof((pi)))((&ph->ph_items)->sqx_cookie ^ (unsigned long)((pi)))); (&ph->ph_items)->sqx_last = ((__typeof(&(pi)->pi_list.sqx_next))((&ph->ph_items)->sqx_cookie ^ (unsigned long)(&(pi)->pi_list.sqx_next))); } while (0);
  if ((((ph)->ph_magic) & ((1 << 3))))
   poison_mem(pi + 1, pp->pr_size - sizeof(*pi));
  addr += pp->pr_size;
 }
 return (ph);
}
void
pool_p_free(struct pool *pp, struct pool_page_header *ph)
{
 struct pool_item *pi;
 pl_assert_unlocked(pp, &pp->pr_lock);
 ((ph->ph_nmissing == 0) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../kern/subr_pool.c", 970, "ph->ph_nmissing == 0"));
 for ((pi) = ((__typeof(((&ph->ph_items)->sqx_first)))((&ph->ph_items)->sqx_cookie ^ (unsigned long)(((&ph->ph_items)->sqx_first)))); (pi) != ((void *)0); (pi) = ((__typeof(((pi)->pi_list.sqx_next)))((&ph->ph_items)->sqx_cookie ^ (unsigned long)(((pi)->pi_list.sqx_next))))) {
  if (__builtin_expect(((pi->pi_magic != ((u_long)(pi) ^ (ph)->ph_magic)) != 0), 0)) {
   panic("%s: %s free list modified: "
       "page %p; item addr %p; offset 0x%x=0x%lx",
       __func__, pp->pr_wchan, ph->ph_page, pi,
       0, pi->pi_magic);
  }
  if ((((ph)->ph_magic) & ((1 << 3)))) {
   size_t pidx;
   uint32_t pval;
   if (poison_check(pi + 1, pp->pr_size - sizeof(*pi),
       &pidx, &pval)) {
    int *ip = (int *)(pi + 1);
    panic("%s: %s free list modified: "
        "page %p; item addr %p; offset 0x%zx=0x%x",
        __func__, pp->pr_wchan, ph->ph_page, pi,
        pidx * sizeof(int), ip[pidx]);
   }
  }
 }
 pool_allocator_free(pp, ph->ph_page);
 if (!((pp)->pr_phoffset != 0))
  pool_put(&phpool, ph);
}
void
pool_p_insert(struct pool *pp, struct pool_page_header *ph)
{
 pl_assert_locked(pp, &pp->pr_lock);
 if (pp->pr_curpage == ((void *)0))
  pp->pr_curpage = ph;
 do { (ph)->ph_entry.tqe_next = ((void *)0); (ph)->ph_entry.tqe_prev = (&pp->pr_emptypages)->tqh_last; *(&pp->pr_emptypages)->tqh_last = (ph); (&pp->pr_emptypages)->tqh_last = &(ph)->ph_entry.tqe_next; } while (0);
 if (!((pp)->pr_phoffset != 0))
  phtree_RBT_INSERT(&pp->pr_phtree, ph);
 pp->pr_nitems += pp->pr_itemsperpage;
 pp->pr_nidle++;
 pp->pr_npagealloc++;
 if (++pp->pr_npages > pp->pr_hiwat)
  pp->pr_hiwat = pp->pr_npages;
}
void
pool_p_remove(struct pool *pp, struct pool_page_header *ph)
{
 pl_assert_locked(pp, &pp->pr_lock);
 pp->pr_npagefree++;
 pp->pr_npages--;
 pp->pr_nidle--;
 pp->pr_nitems -= pp->pr_itemsperpage;
 if (!((pp)->pr_phoffset != 0))
  phtree_RBT_REMOVE(&pp->pr_phtree, ph);
 do { if (((ph)->ph_entry.tqe_next) != ((void *)0)) (ph)->ph_entry.tqe_next->ph_entry.tqe_prev = (ph)->ph_entry.tqe_prev; else (&pp->pr_emptypages)->tqh_last = (ph)->ph_entry.tqe_prev; *(ph)->ph_entry.tqe_prev = (ph)->ph_entry.tqe_next; ((ph)->ph_entry.tqe_prev) = ((void *)-1); ((ph)->ph_entry.tqe_next) = ((void *)-1); } while (0);
 pool_update_curpage(pp);
}
void
pool_update_curpage(struct pool *pp)
{
 pp->pr_curpage = (*(((struct pool_pagelist *)((&pp->pr_partpages)->tqh_last))->tqh_last));
 if (pp->pr_curpage == ((void *)0)) {
  pp->pr_curpage = (*(((struct pool_pagelist *)((&pp->pr_emptypages)->tqh_last))->tqh_last));
 }
}
void
pool_setlowat(struct pool *pp, int n)
{
 int prime = 0;
 pl_enter(pp, &pp->pr_lock);
 pp->pr_minitems = n;
 pp->pr_minpages = (n == 0)
  ? 0
  : ((((n)+((pp->pr_itemsperpage)-1))/(pp->pr_itemsperpage))*(pp->pr_itemsperpage)) / pp->pr_itemsperpage;
 if (pp->pr_nitems < n)
  prime = n - pp->pr_nitems;
 pl_leave(pp, &pp->pr_lock);
 if (prime > 0)
  pool_prime(pp, prime);
}
void
pool_sethiwat(struct pool *pp, int n)
{
 pp->pr_maxpages = (n == 0)
  ? 0
  : ((((n)+((pp->pr_itemsperpage)-1))/(pp->pr_itemsperpage))*(pp->pr_itemsperpage)) / pp->pr_itemsperpage;
}
int
pool_sethardlimit(struct pool *pp, u_int n, const char *warnmsg, int ratecap)
{
 int error = 0;
 if (n < pp->pr_nout) {
  error = 22;
  goto done;
 }
 pp->pr_hardlimit = n;
 pp->pr_hardlimit_warning = warnmsg;
 pp->pr_hardlimit_ratecap.tv_sec = ratecap;
 pp->pr_hardlimit_warning_last.tv_sec = 0;
 pp->pr_hardlimit_warning_last.tv_usec = 0;
done:
 return (error);
}
void
pool_set_constraints(struct pool *pp, const struct kmem_pa_mode *mode)
{
 pp->pr_crange = mode;
}
int
pool_reclaim(struct pool *pp)
{
 struct pool_page_header *ph, *phnext;
 struct pool_pagelist pl = { ((void *)0), &(pl).tqh_first };
 pl_enter(pp, &pp->pr_lock);
 for (ph = ((&pp->pr_emptypages)->tqh_first); ph != ((void *)0); ph = phnext) {
  phnext = ((ph)->ph_entry.tqe_next);
  if (pp->pr_npages <= pp->pr_minpages)
   break;
  if ((pp->pr_nitems - pp->pr_itemsperpage) <
      pp->pr_minitems)
   break;
  pool_p_remove(pp, ph);
  do { (ph)->ph_entry.tqe_next = ((void *)0); (ph)->ph_entry.tqe_prev = (&pl)->tqh_last; *(&pl)->tqh_last = (ph); (&pl)->tqh_last = &(ph)->ph_entry.tqe_next; } while (0);
 }
 pl_leave(pp, &pp->pr_lock);
 if ((((&pl)->tqh_first) == ((void *)0)))
  return (0);
 while ((ph = ((&pl)->tqh_first)) != ((void *)0)) {
  do { if (((ph)->ph_entry.tqe_next) != ((void *)0)) (ph)->ph_entry.tqe_next->ph_entry.tqe_prev = (ph)->ph_entry.tqe_prev; else (&pl)->tqh_last = (ph)->ph_entry.tqe_prev; *(ph)->ph_entry.tqe_prev = (ph)->ph_entry.tqe_next; ((ph)->ph_entry.tqe_prev) = ((void *)-1); ((ph)->ph_entry.tqe_next) = ((void *)-1); } while (0);
  pool_p_free(pp, ph);
 }
 return (1);
}
void
pool_reclaim_all(void)
{
 struct pool *pp;
 _rw_enter_read(&pool_lock );
 for((pp) = ((&pool_head)->sqh_first); (pp) != ((void *)0); (pp) = ((pp)->pr_poollist.sqe_next))
  pool_reclaim(pp);
 _rw_exit_read(&pool_lock );
}
struct frame32 {
 int32_t fr_local[8];
 int32_t fr_arg[6];
 u_int32_t fr_fp;
 u_int32_t fr_pc;
 int32_t fr_xxx;
 int32_t fr_argd[6];
 int32_t fr_argx[1];
};
struct frame64 {
 int64_t fr_local[8];
 int64_t fr_arg[6];
 u_int64_t fr_fp;
 u_int64_t fr_pc;
 int64_t fr_argd[6];
 int64_t fr_argx[0];
};
typedef vaddr_t db_addr_t;
typedef long db_expr_t;
struct trapstate {
 int64_t tstate;
 int64_t tpc;
 int64_t tnpc;
 int64_t tt;
};
typedef struct {
 struct trapframe64 ddb_tf;
 struct frame64 ddb_fr;
 struct trapstate ddb_ts[5];
 int ddb_tl;
 struct fpstate64 ddb_fpstate;
} db_regs_t;
extern db_regs_t ddb_regs;
boolean_t db_inst_trap_return(int inst);
boolean_t db_inst_return(int inst);
boolean_t db_inst_call(int inst);
boolean_t db_inst_branch(int inst);
boolean_t db_inst_unconditional_flow_transfer(int inst);
db_addr_t db_branch_taken(int inst, db_addr_t pc, db_regs_t *regs);
void db_machine_init(void);
int db_ktrap(int, struct trapframe64 *);
int db_enter_ddb(void);
void db_startcpu(struct cpu_info *);
void db_stopcpu(struct cpu_info *);
extern struct mutex ddb_mp_mutex;
void db_register_xir(void (*)(void *, int), void *);
void db_force_whitespace(void);
void db_putchar(int);
int db_print_position(void);
int db_printf(const char *, ...)
    __attribute__((__format__(__kprintf__,1,2)));
int db_vprintf(const char *, va_list)
    __attribute__((__format__(__kprintf__,1,0)));
void db_end_line(int);
char *db_format(char *, size_t, long, int, int, int);
void db_stack_dump(void);
void
pool_printit(struct pool *pp, const char *modif,
    int (*pr)(const char *, ...) __attribute__((__format__(__kprintf__,1,2))))
{
 pool_print1(pp, modif, pr);
}
void
pool_print_pagelist(struct pool_pagelist *pl,
    int (*pr)(const char *, ...) __attribute__((__format__(__kprintf__,1,2))))
{
 struct pool_page_header *ph;
 struct pool_item *pi;
 for((ph) = ((pl)->tqh_first); (ph) != ((void *)0); (ph) = ((ph)->ph_entry.tqe_next)) {
  (*pr)("\t\tpage %p, color %p, nmissing %d\n",
      ph->ph_page, ph->ph_colored, ph->ph_nmissing);
  for ((pi) = ((__typeof(((&ph->ph_items)->sqx_first)))((&ph->ph_items)->sqx_cookie ^ (unsigned long)(((&ph->ph_items)->sqx_first)))); (pi) != ((void *)0); (pi) = ((__typeof(((pi)->pi_list.sqx_next)))((&ph->ph_items)->sqx_cookie ^ (unsigned long)(((pi)->pi_list.sqx_next))))) {
   if (pi->pi_magic != ((u_long)(pi) ^ (ph)->ph_magic)) {
    (*pr)("\t\t\titem %p, magic 0x%lx\n",
        pi, pi->pi_magic);
   }
  }
 }
}
void
pool_print1(struct pool *pp, const char *modif,
    int (*pr)(const char *, ...) __attribute__((__format__(__kprintf__,1,2))))
{
 struct pool_page_header *ph;
 int print_pagelist = 0;
 char c;
 while ((c = *modif++) != '\0') {
  if (c == 'p')
   print_pagelist = 1;
  modif++;
 }
 (*pr)("POOL %s: size %u maxcolors %u\n", pp->pr_wchan, pp->pr_size,
     pp->pr_maxcolors);
 (*pr)("\talloc %p\n", pp->pr_alloc);
 (*pr)("\tminitems %u, minpages %u, maxpages %u, npages %u\n",
     pp->pr_minitems, pp->pr_minpages, pp->pr_maxpages, pp->pr_npages);
 (*pr)("\titemsperpage %u, nitems %u, nout %u, hardlimit %u\n",
     pp->pr_itemsperpage, pp->pr_nitems, pp->pr_nout, pp->pr_hardlimit);
 (*pr)("\n\tnget %lu, nfail %lu, nput %lu\n",
     pp->pr_nget, pp->pr_nfail, pp->pr_nput);
 (*pr)("\tnpagealloc %lu, npagefree %lu, hiwat %u, nidle %lu\n",
     pp->pr_npagealloc, pp->pr_npagefree, pp->pr_hiwat, pp->pr_nidle);
 if (print_pagelist == 0)
  return;
 if ((ph = ((&pp->pr_emptypages)->tqh_first)) != ((void *)0))
  (*pr)("\n\tempty page list:\n");
 pool_print_pagelist(&pp->pr_emptypages, pr);
 if ((ph = ((&pp->pr_fullpages)->tqh_first)) != ((void *)0))
  (*pr)("\n\tfull page list:\n");
 pool_print_pagelist(&pp->pr_fullpages, pr);
 if ((ph = ((&pp->pr_partpages)->tqh_first)) != ((void *)0))
  (*pr)("\n\tpartial-page list:\n");
 pool_print_pagelist(&pp->pr_partpages, pr);
 if (pp->pr_curpage == ((void *)0))
  (*pr)("\tno current page\n");
 else
  (*pr)("\tcurpage %p\n", pp->pr_curpage->ph_page);
}
void
db_show_all_pools(db_expr_t expr, int haddr, db_expr_t count, char *modif)
{
 struct pool *pp;
 char maxp[16];
 int ovflw;
 char mode;
 mode = modif[0];
 if (mode != '\0' && mode != 'a') {
  db_printf("usage: show all pools [/a]\n");
  return;
 }
 if (mode == '\0')
  db_printf("%-10s%4s%9s%5s%9s%6s%6s%6s%6s%6s%6s%5s\n",
      "Name",
      "Size",
      "Requests",
      "Fail",
      "Releases",
      "Pgreq",
      "Pgrel",
      "Npage",
      "Hiwat",
      "Minpg",
      "Maxpg",
      "Idle");
 else
  db_printf("%-12s %18s %18s\n",
      "Name", "Address", "Allocator");
 for((pp) = ((&pool_head)->sqh_first); (pp) != ((void *)0); (pp) = ((pp)->pr_poollist.sqe_next)) {
  if (mode == 'a') {
   db_printf("%-12s %18p %18p\n", pp->pr_wchan, pp,
       pp->pr_alloc);
   continue;
  }
  if (!pp->pr_nget)
   continue;
  if (pp->pr_maxpages == 0xffffffffU)
   snprintf(maxp, sizeof maxp, "inf");
  else
   snprintf(maxp, sizeof maxp, "%u", pp->pr_maxpages);
  ovflw = 0;
  do { (ovflw) += db_printf(("%-*s"), (10) - (0) - (ovflw) > 0 ? (10) - (0) - (ovflw) : 0, (pp->pr_wchan)) - (10); if ((ovflw) < 0) (ovflw) = 0; } while ( 0);
  do { (ovflw) += db_printf((" %*u"), (4) - (1) - (ovflw) > 0 ? (4) - (1) - (ovflw) : 0, (pp->pr_size)) - (4); if ((ovflw) < 0) (ovflw) = 0; } while ( 0);
  do { (ovflw) += db_printf((" %*lu"), (9) - (1) - (ovflw) > 0 ? (9) - (1) - (ovflw) : 0, (pp->pr_nget)) - (9); if ((ovflw) < 0) (ovflw) = 0; } while ( 0);
  do { (ovflw) += db_printf((" %*lu"), (5) - (1) - (ovflw) > 0 ? (5) - (1) - (ovflw) : 0, (pp->pr_nfail)) - (5); if ((ovflw) < 0) (ovflw) = 0; } while ( 0);
  do { (ovflw) += db_printf((" %*lu"), (9) - (1) - (ovflw) > 0 ? (9) - (1) - (ovflw) : 0, (pp->pr_nput)) - (9); if ((ovflw) < 0) (ovflw) = 0; } while ( 0);
  do { (ovflw) += db_printf((" %*lu"), (6) - (1) - (ovflw) > 0 ? (6) - (1) - (ovflw) : 0, (pp->pr_npagealloc)) - (6); if ((ovflw) < 0) (ovflw) = 0; } while ( 0);
  do { (ovflw) += db_printf((" %*lu"), (6) - (1) - (ovflw) > 0 ? (6) - (1) - (ovflw) : 0, (pp->pr_npagefree)) - (6); if ((ovflw) < 0) (ovflw) = 0; } while ( 0);
  do { (ovflw) += db_printf((" %*d"), (6) - (1) - (ovflw) > 0 ? (6) - (1) - (ovflw) : 0, (pp->pr_npages)) - (6); if ((ovflw) < 0) (ovflw) = 0; } while ( 0);
  do { (ovflw) += db_printf((" %*d"), (6) - (1) - (ovflw) > 0 ? (6) - (1) - (ovflw) : 0, (pp->pr_hiwat)) - (6); if ((ovflw) < 0) (ovflw) = 0; } while ( 0);
  do { (ovflw) += db_printf((" %*d"), (6) - (1) - (ovflw) > 0 ? (6) - (1) - (ovflw) : 0, (pp->pr_minpages)) - (6); if ((ovflw) < 0) (ovflw) = 0; } while ( 0);
  do { (ovflw) += db_printf((" %*s"), (6) - (1) - (ovflw) > 0 ? (6) - (1) - (ovflw) : 0, (maxp)) - (6); if ((ovflw) < 0) (ovflw) = 0; } while ( 0);
  do { (ovflw) += db_printf((" %*lu\n"), (5) - (1) - (ovflw) > 0 ? (5) - (1) - (ovflw) : 0, (pp->pr_nidle)) - (5); if ((ovflw) < 0) (ovflw) = 0; } while ( 0);
  pool_chk(pp);
 }
}
int
pool_chk_page(struct pool *pp, struct pool_page_header *ph, int expected)
{
 struct pool_item *pi;
 caddr_t page;
 int n;
 const char *label = pp->pr_wchan;
 page = (caddr_t)((u_long)ph & pp->pr_pgmask);
 if (page != ph->ph_page && ((pp)->pr_phoffset != 0)) {
  printf("%s: ", label);
  printf("pool(%p:%s): page inconsistency: page %p; "
      "at page head addr %p (p %p)\n",
      pp, pp->pr_wchan, ph->ph_page, ph, page);
  return 1;
 }
 for (pi = ((__typeof(((&ph->ph_items)->sqx_first)))((&ph->ph_items)->sqx_cookie ^ (unsigned long)(((&ph->ph_items)->sqx_first)))), n = 0;
      pi != ((void *)0);
      pi = ((__typeof(((pi)->pi_list.sqx_next)))((&ph->ph_items)->sqx_cookie ^ (unsigned long)(((pi)->pi_list.sqx_next)))), n++) {
  if ((caddr_t)pi < ph->ph_page ||
      (caddr_t)pi >= ph->ph_page + pp->pr_pgsize) {
   printf("%s: ", label);
   printf("pool(%p:%s): page inconsistency: page %p;"
       " item ordinal %d; addr %p\n", pp,
       pp->pr_wchan, ph->ph_page, n, pi);
   return (1);
  }
  if (pi->pi_magic != ((u_long)(pi) ^ (ph)->ph_magic)) {
   printf("%s: ", label);
   printf("pool(%p:%s): free list modified: "
       "page %p; item ordinal %d; addr %p "
       "(p %p); offset 0x%x=0x%lx\n",
       pp, pp->pr_wchan, ph->ph_page, n, pi, page,
       0, pi->pi_magic);
  }
  if ((((ph)->ph_magic) & ((1 << 3)))) {
   size_t pidx;
   uint32_t pval;
   if (poison_check(pi + 1, pp->pr_size - sizeof(*pi),
       &pidx, &pval)) {
    int *ip = (int *)(pi + 1);
    printf("pool(%s): free list modified: "
        "page %p; item ordinal %d; addr %p "
        "(p %p); offset 0x%zx=0x%x\n",
        pp->pr_wchan, ph->ph_page, n, pi,
        page, pidx * sizeof(int), ip[pidx]);
   }
  }
 }
 if (n + ph->ph_nmissing != pp->pr_itemsperpage) {
  printf("pool(%p:%s): page inconsistency: page %p;"
      " %d on list, %d missing, %d items per page\n", pp,
      pp->pr_wchan, ph->ph_page, n, ph->ph_nmissing,
      pp->pr_itemsperpage);
  return 1;
 }
 if (expected >= 0 && n != expected) {
  printf("pool(%p:%s): page inconsistency: page %p;"
      " %d on list, %d missing, %d expected\n", pp,
      pp->pr_wchan, ph->ph_page, n, ph->ph_nmissing,
      expected);
  return 1;
 }
 return 0;
}
int
pool_chk(struct pool *pp)
{
 struct pool_page_header *ph;
 int r = 0;
 for((ph) = ((&pp->pr_emptypages)->tqh_first); (ph) != ((void *)0); (ph) = ((ph)->ph_entry.tqe_next))
  r += pool_chk_page(pp, ph, pp->pr_itemsperpage);
 for((ph) = ((&pp->pr_fullpages)->tqh_first); (ph) != ((void *)0); (ph) = ((ph)->ph_entry.tqe_next))
  r += pool_chk_page(pp, ph, 0);
 for((ph) = ((&pp->pr_partpages)->tqh_first); (ph) != ((void *)0); (ph) = ((ph)->ph_entry.tqe_next))
  r += pool_chk_page(pp, ph, -1);
 return (r);
}
void
pool_walk(struct pool *pp, int full,
    int (*pr)(const char *, ...) __attribute__((__format__(__kprintf__,1,2))),
    void (*func)(void *, int, int (*)(const char *, ...)
     __attribute__((__format__(__kprintf__,1,2)))))
{
 struct pool_page_header *ph;
 struct pool_item *pi;
 caddr_t cp;
 int n;
 for((ph) = ((&pp->pr_fullpages)->tqh_first); (ph) != ((void *)0); (ph) = ((ph)->ph_entry.tqe_next)) {
  cp = ph->ph_colored;
  n = ph->ph_nmissing;
  while (n--) {
   func(cp, full, pr);
   cp += pp->pr_size;
  }
 }
 for((ph) = ((&pp->pr_partpages)->tqh_first); (ph) != ((void *)0); (ph) = ((ph)->ph_entry.tqe_next)) {
  cp = ph->ph_colored;
  n = ph->ph_nmissing;
  do {
   for ((pi) = ((__typeof(((&ph->ph_items)->sqx_first)))((&ph->ph_items)->sqx_cookie ^ (unsigned long)(((&ph->ph_items)->sqx_first)))); (pi) != ((void *)0); (pi) = ((__typeof(((pi)->pi_list.sqx_next)))((&ph->ph_items)->sqx_cookie ^ (unsigned long)(((pi)->pi_list.sqx_next))))) {
    if (cp == (caddr_t)pi)
     break;
   }
   if (cp != (caddr_t)pi) {
    func(cp, full, pr);
    n--;
   }
   cp += pp->pr_size;
  } while (n > 0);
 }
}
int
sysctl_dopool(int *name, u_int namelen, char *oldp, size_t *oldlenp)
{
 struct kinfo_pool pi;
 struct pool *pp;
 int rv = 2;
 switch (name[0]) {
 case 1:
  if (namelen != 1)
   return (20);
  return (sysctl_rdint(oldp, oldlenp, ((void *)0), pool_count));
 case 2:
 case 3:
 case 4:
 case 5:
  break;
 default:
  return (45);
 }
 if (namelen != 2)
  return (20);
 _rw_enter_read(&pool_lock );
 for((pp) = ((&pool_head)->sqh_first); (pp) != ((void *)0); (pp) = ((pp)->pr_poollist.sqe_next)) {
  if (name[1] == pp->pr_serial)
   break;
 }
 if (pp == ((void *)0))
  goto done;
 switch (name[0]) {
 case 2:
  rv = sysctl_rdstring(oldp, oldlenp, ((void *)0), pp->pr_wchan);
  break;
 case 3:
  __builtin_memset((&pi), (0), (sizeof(pi)));
  pl_enter(pp, &pp->pr_lock);
  pi.pr_size = pp->pr_size;
  pi.pr_pgsize = pp->pr_pgsize;
  pi.pr_itemsperpage = pp->pr_itemsperpage;
  pi.pr_npages = pp->pr_npages;
  pi.pr_minpages = pp->pr_minpages;
  pi.pr_maxpages = pp->pr_maxpages;
  pi.pr_hardlimit = pp->pr_hardlimit;
  pi.pr_nout = pp->pr_nout;
  pi.pr_nitems = pp->pr_nitems;
  pi.pr_nget = pp->pr_nget;
  pi.pr_nput = pp->pr_nput;
  pi.pr_nfail = pp->pr_nfail;
  pi.pr_npagealloc = pp->pr_npagealloc;
  pi.pr_npagefree = pp->pr_npagefree;
  pi.pr_hiwat = pp->pr_hiwat;
  pi.pr_nidle = pp->pr_nidle;
  pl_leave(pp, &pp->pr_lock);
  pool_cache_pool_info(pp, &pi);
  rv = sysctl_rdstruct(oldp, oldlenp, ((void *)0), &pi, sizeof(pi));
  break;
 case 4:
  rv = pool_cache_info(pp, oldp, oldlenp);
  break;
 case 5:
  rv = pool_cache_cpus_info(pp, oldp, oldlenp);
  break;
 }
done:
 _rw_exit_read(&pool_lock );
 return (rv);
}
void
pool_gc_sched(void *null)
{
 task_add(systqmp, &pool_gc_task);
}
void
pool_gc_pages(void *null)
{
 struct pool *pp;
 struct pool_page_header *ph, *freeph;
 int s;
 _rw_enter_read(&pool_lock );
 s = _splraise(7);
 for((pp) = ((&pool_head)->sqh_first); (pp) != ((void *)0); (pp) = ((pp)->pr_poollist.sqe_next)) {
  if (pp->pr_cache != ((void *)0))
   pool_cache_gc(pp);
  if (pp->pr_nidle <= pp->pr_minpages ||
      !pl_enter_try(pp, &pp->pr_lock))
   continue;
  if (pp->pr_nidle > pp->pr_minpages &&
      (ph = ((&pp->pr_emptypages)->tqh_first)) != ((void *)0) &&
      (ticks - ph->ph_tick) > (hz * pool_wait_gc)) {
   freeph = ph;
   pool_p_remove(pp, freeph);
  } else
   freeph = ((void *)0);
  pl_leave(pp, &pp->pr_lock);
  if (freeph != ((void *)0))
   pool_p_free(pp, freeph);
 }
 _splx(s);
 _rw_exit_read(&pool_lock );
 timeout_add_sec(&pool_gc_tick, 1);
}
void *
pool_allocator_alloc(struct pool *pp, int flags, int *slowdown)
{
 void *v;
 v = (*pp->pr_alloc->pa_alloc)(pp, flags, slowdown);
 if (v != ((void *)0) && ((pp)->pr_phoffset != 0)) {
  vaddr_t addr = (vaddr_t)v;
  if ((addr & pp->pr_pgmask) != addr) {
   panic("%s: %s page address %p isnt aligned to %u",
       __func__, pp->pr_wchan, v, pp->pr_pgsize);
  }
 }
 return (v);
}
void
pool_allocator_free(struct pool *pp, void *v)
{
 struct pool_allocator *pa = pp->pr_alloc;
 (*pa->pa_free)(pp, v);
}
void *
pool_page_alloc(struct pool *pp, int flags, int *slowdown)
{
 struct kmem_dyn_mode kd = { ((voff_t) -1), ((void *)0), 0, 0 };
 kd.kd_waitok = ((flags) & (0x0001));
 kd.kd_slowdown = slowdown;
 return (km_alloc(pp->pr_pgsize, &kv_page, pp->pr_crange, &kd));
}
void
pool_page_free(struct pool *pp, void *v)
{
 km_free(v, pp->pr_pgsize, &kv_page, pp->pr_crange);
}
void *
pool_multi_alloc(struct pool *pp, int flags, int *slowdown)
{
 struct kmem_va_mode kv = kv_intrsafe;
 struct kmem_dyn_mode kd = { ((voff_t) -1), ((void *)0), 0, 0 };
 void *v;
 int s;
 if (((pp)->pr_phoffset != 0))
  kv.kv_align = pp->pr_pgsize;
 kd.kd_waitok = ((flags) & (0x0001));
 kd.kd_slowdown = slowdown;
 s = _splraise(7);
 v = km_alloc(pp->pr_pgsize, &kv, pp->pr_crange, &kd);
 _splx(s);
 return (v);
}
void
pool_multi_free(struct pool *pp, void *v)
{
 struct kmem_va_mode kv = kv_intrsafe;
 int s;
 if (((pp)->pr_phoffset != 0))
  kv.kv_align = pp->pr_pgsize;
 s = _splraise(7);
 km_free(v, pp->pr_pgsize, &kv, pp->pr_crange);
 _splx(s);
}
void *
pool_multi_alloc_ni(struct pool *pp, int flags, int *slowdown)
{
 struct kmem_va_mode kv = kv_any;
 struct kmem_dyn_mode kd = { ((voff_t) -1), ((void *)0), 0, 0 };
 void *v;
 if (((pp)->pr_phoffset != 0))
  kv.kv_align = pp->pr_pgsize;
 kd.kd_waitok = ((flags) & (0x0001));
 kd.kd_slowdown = slowdown;
 _kernel_lock("/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../kern/subr_pool.c", 1674);
 v = km_alloc(pp->pr_pgsize, &kv, pp->pr_crange, &kd);
 _kernel_unlock();
 return (v);
}
void
pool_multi_free_ni(struct pool *pp, void *v)
{
 struct kmem_va_mode kv = kv_any;
 if (((pp)->pr_phoffset != 0))
  kv.kv_align = pp->pr_pgsize;
 _kernel_lock("/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../kern/subr_pool.c", 1689);
 km_free(v, pp->pr_pgsize, &kv, pp->pr_crange);
 _kernel_unlock();
}
struct pool pool_caches;
void
pool_cache_init(struct pool *pp)
{
 struct cpumem *cm;
 struct pool_cache *pc;
 struct cpumem_iter i;
 if (pool_caches.pr_size == 0) {
  pool_init(&pool_caches, sizeof(struct pool_cache),
      64, 0, 0x0001 | 0x0010,
      "plcache", ((void *)0));
 }
 ((pp->pr_size >= sizeof(struct pool_cache_item)) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../kern/subr_pool.c", 1712, "pp->pr_size >= sizeof(struct pool_cache_item)"));
 cm = cpumem_get(&pool_caches);
 (pp)->pr_lock_ops->pl_init(pp, &pp->pr_cache_lock, ((void *)0));
 arc4random_buf(pp->pr_cache_magic, sizeof(pp->pr_cache_magic));
 do { (&pp->pr_cache_lists)->tqh_first = ((void *)0); (&pp->pr_cache_lists)->tqh_last = &(&pp->pr_cache_lists)->tqh_first; } while (0);
 pp->pr_cache_nitems = 0;
 pp->pr_cache_tick = ticks;
 pp->pr_cache_items = 8;
 pp->pr_cache_contention = 0;
 pp->pr_cache_ngc = 0;
 for ((pc) = cpumem_first((&i), (cm)); (pc) != ((void *)0); (pc) = cpumem_next((&i), (cm))) {
  pc->pc_actv = ((void *)0);
  pc->pc_nactv = 0;
  pc->pc_prev = ((void *)0);
  pc->pc_nget = 0;
  pc->pc_nfail = 0;
  pc->pc_nput = 0;
  pc->pc_nlget = 0;
  pc->pc_nlfail = 0;
  pc->pc_nlput = 0;
  pc->pc_nout = 0;
 }
 __asm volatile("membar " "#StoreStore" ::: "memory");
 pp->pr_cache = cm;
}
static inline void
pool_cache_item_magic(struct pool *pp, struct pool_cache_item *ci)
{
 unsigned long *entry = (unsigned long *)&ci->ci_nextl;
 entry[0] = pp->pr_cache_magic[0] ^ (u_long)ci;
 entry[1] = pp->pr_cache_magic[1] ^ (u_long)ci->ci_next;
}
static inline void
pool_cache_item_magic_check(struct pool *pp, struct pool_cache_item *ci)
{
 unsigned long *entry;
 unsigned long val;
 entry = (unsigned long *)&ci->ci_nextl;
 val = pp->pr_cache_magic[0] ^ (u_long)ci;
 if (*entry != val)
  goto fail;
 entry++;
 val = pp->pr_cache_magic[1] ^ (u_long)ci->ci_next;
 if (*entry != val)
  goto fail;
 return;
fail:
 panic("%s: %s cpu free list modified: item addr %p+%zu 0x%lx!=0x%lx",
     __func__, pp->pr_wchan, ci, (caddr_t)entry - (caddr_t)ci,
     *entry, val);
}
static inline void
pool_list_enter(struct pool *pp)
{
 if (pl_enter_try(pp, &pp->pr_cache_lock) == 0) {
  pl_enter(pp, &pp->pr_cache_lock);
  pp->pr_cache_contention++;
 }
}
static inline void
pool_list_leave(struct pool *pp)
{
 pl_leave(pp, &pp->pr_cache_lock);
}
static inline struct pool_cache_item *
pool_cache_list_alloc(struct pool *pp, struct pool_cache *pc)
{
 struct pool_cache_item *pl;
 pool_list_enter(pp);
 pl = ((&pp->pr_cache_lists)->tqh_first);
 if (pl != ((void *)0)) {
  do { if (((pl)->ci_nextl.tqe_next) != ((void *)0)) (pl)->ci_nextl.tqe_next->ci_nextl.tqe_prev = (pl)->ci_nextl.tqe_prev; else (&pp->pr_cache_lists)->tqh_last = (pl)->ci_nextl.tqe_prev; *(pl)->ci_nextl.tqe_prev = (pl)->ci_nextl.tqe_next; ((pl)->ci_nextl.tqe_prev) = ((void *)-1); ((pl)->ci_nextl.tqe_next) = ((void *)-1); } while (0);
  pp->pr_cache_nitems -= ((pl)->ci_nitems & 0x7ffffffUL);
  pool_cache_item_magic(pp, pl);
  pc->pc_nlget++;
 } else
  pc->pc_nlfail++;
 pp->pr_cache_nout += pc->pc_nout;
 pc->pc_nout = 0;
 pool_list_leave(pp);
 return (pl);
}
static inline void
pool_cache_list_free(struct pool *pp, struct pool_cache *pc,
    struct pool_cache_item *ci)
{
 pool_list_enter(pp);
 if ((((&pp->pr_cache_lists)->tqh_first) == ((void *)0)))
  pp->pr_cache_tick = ticks;
 pp->pr_cache_nitems += ((ci)->ci_nitems & 0x7ffffffUL);
 do { (ci)->ci_nextl.tqe_next = ((void *)0); (ci)->ci_nextl.tqe_prev = (&pp->pr_cache_lists)->tqh_last; *(&pp->pr_cache_lists)->tqh_last = (ci); (&pp->pr_cache_lists)->tqh_last = &(ci)->ci_nextl.tqe_next; } while (0);
 pc->pc_nlput++;
 pp->pr_cache_nout += pc->pc_nout;
 pc->pc_nout = 0;
 pool_list_leave(pp);
}
static inline struct pool_cache *
pool_cache_enter(struct pool *pp, int *s)
{
 struct pool_cache *pc;
 pc = cpumem_enter(pp->pr_cache);
 *s = splraise(pp->pr_ipl);
 pc->pc_gen++;
 return (pc);
}
static inline void
pool_cache_leave(struct pool *pp, struct pool_cache *pc, int s)
{
 pc->pc_gen++;
 _splx(s);
 cpumem_leave(pp->pr_cache, pc);
}
void *
pool_cache_get(struct pool *pp)
{
 struct pool_cache *pc;
 struct pool_cache_item *ci;
 int s;
 pc = pool_cache_enter(pp, &s);
 if (pc->pc_actv != ((void *)0)) {
  ci = pc->pc_actv;
 } else if (pc->pc_prev != ((void *)0)) {
  ci = pc->pc_prev;
  pc->pc_prev = ((void *)0);
 } else if ((ci = pool_cache_list_alloc(pp, pc)) == ((void *)0)) {
  pc->pc_nfail++;
  goto done;
 }
 pool_cache_item_magic_check(pp, ci);
 if (pool_debug && (((ci)->ci_nitems) & (0x8000000UL))) {
  size_t pidx;
  uint32_t pval;
  if (poison_check(ci + 1, pp->pr_size - sizeof(*ci),
      &pidx, &pval)) {
   int *ip = (int *)(ci + 1);
   ip += pidx;
   panic("%s: %s cpu free list modified: "
       "item addr %p+%zu 0x%x!=0x%x",
       __func__, pp->pr_wchan, ci,
       (caddr_t)ip - (caddr_t)ci, *ip, pval);
  }
 }
 pc->pc_actv = ci->ci_next;
 pc->pc_nactv = ((ci)->ci_nitems & 0x7ffffffUL) - 1;
 pc->pc_nget++;
 pc->pc_nout++;
done:
 pool_cache_leave(pp, pc, s);
 return (ci);
}
void
pool_cache_put(struct pool *pp, void *v)
{
 struct pool_cache *pc;
 struct pool_cache_item *ci = v;
 unsigned long nitems;
 int s;
 int poison = pool_debug && pp->pr_size > sizeof(*ci);
 if (poison)
  poison_mem(ci + 1, pp->pr_size - sizeof(*ci));
 pc = pool_cache_enter(pp, &s);
 nitems = pc->pc_nactv;
 if (nitems >= pp->pr_cache_items) {
  if (pc->pc_prev != ((void *)0))
   pool_cache_list_free(pp, pc, pc->pc_prev);
  pc->pc_prev = pc->pc_actv;
  pc->pc_actv = ((void *)0);
  pc->pc_nactv = 0;
  nitems = 0;
 }
 ci->ci_next = pc->pc_actv;
 ci->ci_nitems = ++nitems;
 ci->ci_nitems |= poison ? 0x8000000UL : 0;
 pool_cache_item_magic(pp, ci);
 pc->pc_actv = ci;
 pc->pc_nactv = nitems;
 pc->pc_nput++;
 pc->pc_nout--;
 pool_cache_leave(pp, pc, s);
}
struct pool_cache_item *
pool_cache_list_put(struct pool *pp, struct pool_cache_item *pl)
{
 struct pool_cache_item *rpl, *next;
 if (pl == ((void *)0))
  return (((void *)0));
 rpl = ((pl)->ci_nextl.tqe_next);
 pl_enter(pp, &pp->pr_lock);
 do {
  next = pl->ci_next;
  pool_do_put(pp, pl);
  pl = next;
 } while (pl != ((void *)0));
 pl_leave(pp, &pp->pr_lock);
 return (rpl);
}
void
pool_cache_destroy(struct pool *pp)
{
 struct pool_cache *pc;
 struct pool_cache_item *pl;
 struct cpumem_iter i;
 struct cpumem *cm;
 _rw_enter_write(&pool_lock );
 cm = pp->pr_cache;
 pp->pr_cache = ((void *)0);
 _rw_exit_write(&pool_lock );
 for ((pc) = cpumem_first((&i), (cm)); (pc) != ((void *)0); (pc) = cpumem_next((&i), (cm))) {
  pool_cache_list_put(pp, pc->pc_actv);
  pool_cache_list_put(pp, pc->pc_prev);
 }
 cpumem_put(&pool_caches, cm);
 pl = ((&pp->pr_cache_lists)->tqh_first);
 while (pl != ((void *)0))
  pl = pool_cache_list_put(pp, pl);
}
void
pool_cache_gc(struct pool *pp)
{
 unsigned int contention, delta;
 if ((ticks - pp->pr_cache_tick) > (hz * pool_wait_gc) &&
     !(((&pp->pr_cache_lists)->tqh_first) == ((void *)0)) &&
     pl_enter_try(pp, &pp->pr_cache_lock)) {
  struct pool_cache_item *pl = ((void *)0);
  pl = ((&pp->pr_cache_lists)->tqh_first);
  if (pl != ((void *)0)) {
   do { if (((pl)->ci_nextl.tqe_next) != ((void *)0)) (pl)->ci_nextl.tqe_next->ci_nextl.tqe_prev = (pl)->ci_nextl.tqe_prev; else (&pp->pr_cache_lists)->tqh_last = (pl)->ci_nextl.tqe_prev; *(pl)->ci_nextl.tqe_prev = (pl)->ci_nextl.tqe_next; ((pl)->ci_nextl.tqe_prev) = ((void *)-1); ((pl)->ci_nextl.tqe_next) = ((void *)-1); } while (0);
   pp->pr_cache_nitems -= ((pl)->ci_nitems & 0x7ffffffUL);
   pp->pr_cache_tick = ticks;
   pp->pr_cache_ngc++;
  }
  pl_leave(pp, &pp->pr_cache_lock);
  pool_cache_list_put(pp, pl);
 }
 contention = pp->pr_cache_contention;
 delta = contention - pp->pr_cache_contention_prev;
 if (delta > 8 ) {
  if ((ncpusfound * 8 * 2) <= pp->pr_cache_nitems)
   pp->pr_cache_items += 8;
 } else if (delta == 0) {
  if (pp->pr_cache_items > 8)
   pp->pr_cache_items--;
 }
 pp->pr_cache_contention_prev = contention;
}
void
pool_cache_pool_info(struct pool *pp, struct kinfo_pool *pi)
{
 struct pool_cache *pc;
 struct cpumem_iter i;
 if (pp->pr_cache == ((void *)0))
  return;
 for ((pc) = cpumem_first((&i), (pp->pr_cache)); (pc) != ((void *)0); (pc) = cpumem_next((&i), (pp->pr_cache))) {
  uint64_t gen, nget, nput;
  do {
   while ((gen = pc->pc_gen) & 1)
    yield();
   nget = pc->pc_nget;
   nput = pc->pc_nput;
  } while (gen != pc->pc_gen);
  pi->pr_nget += nget;
  pi->pr_nput += nput;
 }
 pl_enter(pp, &pp->pr_cache_lock);
 for ((pc) = cpumem_first((&i), (pp->pr_cache)); (pc) != ((void *)0); (pc) = cpumem_next((&i), (pp->pr_cache)))
  pi->pr_nout += pc->pc_nout;
 pi->pr_nout += pp->pr_cache_nout;
 pl_leave(pp, &pp->pr_cache_lock);
}
int
pool_cache_info(struct pool *pp, void *oldp, size_t *oldlenp)
{
 struct kinfo_pool_cache kpc;
 if (pp->pr_cache == ((void *)0))
  return (45);
 __builtin_memset((&kpc), (0), (sizeof(kpc)));
 pl_enter(pp, &pp->pr_cache_lock);
 kpc.pr_ngc = pp->pr_cache_ngc;
 kpc.pr_len = pp->pr_cache_items;
 kpc.pr_nitems = pp->pr_cache_nitems;
 kpc.pr_contention = pp->pr_cache_contention;
 pl_leave(pp, &pp->pr_cache_lock);
 return (sysctl_rdstruct(oldp, oldlenp, ((void *)0), &kpc, sizeof(kpc)));
}
int
pool_cache_cpus_info(struct pool *pp, void *oldp, size_t *oldlenp)
{
 struct pool_cache *pc;
 struct kinfo_pool_cache_cpu *kpcc, *info;
 unsigned int cpu = 0;
 struct cpumem_iter i;
 int error = 0;
 size_t len;
 if (pp->pr_cache == ((void *)0))
  return (45);
 if (*oldlenp % sizeof(*kpcc))
  return (22);
 kpcc = mallocarray(ncpusfound, sizeof(*kpcc), 127,
     0x0001|0x0004|0x0008);
 if (kpcc == ((void *)0))
  return (5);
 len = ncpusfound * sizeof(*kpcc);
 for ((pc) = cpumem_first((&i), (pp->pr_cache)); (pc) != ((void *)0); (pc) = cpumem_next((&i), (pp->pr_cache))) {
  uint64_t gen;
  if (cpu >= ncpusfound) {
   error = 5;
   goto err;
  }
  info = &kpcc[cpu];
  info->pr_cpu = cpu;
  do {
   while ((gen = pc->pc_gen) & 1)
    yield();
   info->pr_nget = pc->pc_nget;
   info->pr_nfail = pc->pc_nfail;
   info->pr_nput = pc->pc_nput;
   info->pr_nlget = pc->pc_nlget;
   info->pr_nlfail = pc->pc_nlfail;
   info->pr_nlput = pc->pc_nlput;
  } while (gen != pc->pc_gen);
  cpu++;
 }
 error = sysctl_rdstruct(oldp, oldlenp, ((void *)0), kpcc, len);
err:
 free(kpcc, 127, len);
 return (error);
}
void
pool_lock_mtx_init(struct pool *pp, union pool_lock *lock,
    struct lock_type *type)
{
 __mtx_init((&lock->prl_mtx), ((((pp->pr_ipl)) > 0 && ((pp->pr_ipl)) < 12) ? 12 : ((pp->pr_ipl))));
}
void
pool_lock_mtx_enter(union pool_lock *lock )
{
 __mtx_enter(&lock->prl_mtx );
}
int
pool_lock_mtx_enter_try(union pool_lock *lock )
{
 return (__mtx_enter_try(&lock->prl_mtx ));
}
void
pool_lock_mtx_leave(union pool_lock *lock )
{
 __mtx_leave(&lock->prl_mtx );
}
void
pool_lock_mtx_assert_locked(union pool_lock *lock)
{
 do { if ((&lock->prl_mtx)->mtx_owner != (__curcpu->ci_self)) panic("mutex %p not held in %s", (&lock->prl_mtx), __func__); } while (0);
}
void
pool_lock_mtx_assert_unlocked(union pool_lock *lock)
{
 do { if ((&lock->prl_mtx)->mtx_owner == (__curcpu->ci_self)) panic("mutex %p held in %s", (&lock->prl_mtx), __func__); } while (0);
}
int
pool_lock_mtx_sleep(void *ident, union pool_lock *lock, int priority,
    const char *wmesg, int timo)
{
 return msleep(ident, &lock->prl_mtx, priority, wmesg, timo);
}
static const struct pool_lock_ops pool_lock_ops_mtx = {
 pool_lock_mtx_init,
 pool_lock_mtx_enter,
 pool_lock_mtx_enter_try,
 pool_lock_mtx_leave,
 pool_lock_mtx_assert_locked,
 pool_lock_mtx_assert_unlocked,
 pool_lock_mtx_sleep,
};
void
pool_lock_rw_init(struct pool *pp, union pool_lock *lock,
    struct lock_type *type)
{
 _rw_init_flags(&lock->prl_rwlock, pp->pr_wchan, 0, type);
}
void
pool_lock_rw_enter(union pool_lock *lock )
{
 _rw_enter_write(&lock->prl_rwlock );
}
int
pool_lock_rw_enter_try(union pool_lock *lock )
{
 return (_rw_enter(&lock->prl_rwlock, 0x0001UL | 0x0040UL
     ) == 0);
}
void
pool_lock_rw_leave(union pool_lock *lock )
{
 _rw_exit_write(&lock->prl_rwlock );
}
void
pool_lock_rw_assert_locked(union pool_lock *lock)
{
 rw_assert_wrlock(&lock->prl_rwlock);
}
void
pool_lock_rw_assert_unlocked(union pool_lock *lock)
{
 ((rw_status(&lock->prl_rwlock) != 0x0001UL) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../kern/subr_pool.c", 2263, "rw_status(&lock->prl_rwlock) != RW_WRITE"));
}
int
pool_lock_rw_sleep(void *ident, union pool_lock *lock, int priority,
    const char *wmesg, int timo)
{
 return rwsleep(ident, &lock->prl_rwlock, priority, wmesg, timo);
}
static const struct pool_lock_ops pool_lock_ops_rw = {
 pool_lock_rw_init,
 pool_lock_rw_enter,
 pool_lock_rw_enter_try,
 pool_lock_rw_leave,
 pool_lock_rw_assert_locked,
 pool_lock_rw_assert_unlocked,
 pool_lock_rw_sleep,
};
