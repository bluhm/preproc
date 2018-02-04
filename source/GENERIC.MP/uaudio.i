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
typedef unsigned int tcflag_t;
typedef unsigned char cc_t;
typedef unsigned int speed_t;
struct termios {
 tcflag_t c_iflag;
 tcflag_t c_oflag;
 tcflag_t c_cflag;
 tcflag_t c_lflag;
 cc_t c_cc[20];
 int c_ispeed;
 int c_ospeed;
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
struct ptmget {
 int cfd;
 int sfd;
 char cn[16];
 char sn[16];
};
struct clist {
 int c_cc;
 int c_cn;
 u_char *c_cf;
 u_char *c_cl;
 u_char *c_cs;
 u_char *c_ce;
 u_char *c_cq;
};
struct tty {
 struct { struct tty *tqe_next; struct tty **tqe_prev; } tty_link;
 struct clist t_rawq;
 long t_rawcc;
 struct clist t_canq;
 long t_cancc;
 struct clist t_outq;
 long t_outcc;
 int t_qlen;
 u_char t_line;
 dev_t t_dev;
 int t_state;
 int t_flags;
 struct pgrp *t_pgrp;
 struct session *t_session;
 struct selinfo t_rsel;
 struct selinfo t_wsel;
 struct termios t_termios;
 struct winsize t_winsize;
 void (*t_oproc)(struct tty *);
 int (*t_param)(struct tty *, struct termios *);
 int (*t_hwiflow)(struct tty *tp, int flag);
 void *t_sc;
 short t_column;
 short t_rocount, t_rocol;
 short t_hiwat;
 short t_lowat;
 short t_gen;
 struct timeout t_rstrt_to;
 struct timeval t_tv;
};
struct itty {
 dev_t t_dev;
 int t_rawq_c_cc;
 int t_canq_c_cc;
 int t_outq_c_cc;
 short t_hiwat;
 short t_lowat;
 short t_column;
 int t_state;
 struct session *t_session;
 pid_t t_pgrp_pg_id;
 u_char t_line;
};
struct speedtab {
 int sp_speed;
 int sp_code;
};
struct ttylist_head { struct tty *tqh_first; struct tty **tqh_last; };
extern int tty_count;
extern struct ttychars ttydefaults;
extern char ttyin[], ttyout[], ttopen[], ttclos[], ttybg[], ttybuf[];
extern int64_t tk_cancc, tk_nin, tk_nout, tk_rawcc;
int sysctl_tty(int *, u_int, void *, size_t *, void *, size_t);
int sysctl_pty(int *, u_int, void *, size_t *, void *, size_t);
int b_to_q(u_char *cp, int cc, struct clist *q);
void catq(struct clist *from, struct clist *to);
void clist_init(void);
int getc(struct clist *q);
void ndflush(struct clist *q, int cc);
int ndqb(struct clist *q, int flag);
u_char *nextc(struct clist *q, u_char *cp, int *c);
int putc(int c, struct clist *q);
int q_to_b(struct clist *q, u_char *cp, int cc);
int unputc(struct clist *q);
int nullmodem(struct tty *tp, int flag);
int tputchar(int c, struct tty *tp);
int ttioctl(struct tty *tp, u_long com, caddr_t data, int flag,
     struct proc *p);
int ttread(struct tty *tp, struct uio *uio, int flag);
void ttrstrt(void *tp);
int ttpoll(dev_t device, int events, struct proc *p);
int ttkqfilter(dev_t dev, struct knote *kn);
void ttsetwater(struct tty *tp);
int ttspeedtab(int speed, const struct speedtab *table);
int ttstart(struct tty *tp);
void ttwakeupwr(struct tty *tp);
void ttwakeup(struct tty *tp);
int ttwrite(struct tty *tp, struct uio *uio, int flag);
void ttychars(struct tty *tp);
int ttycheckoutq(struct tty *tp, int wait);
int ttyclose(struct tty *tp);
void ttyflush(struct tty *tp, int rw);
void ttyinfo(struct tty *tp);
int ttyinput(int c, struct tty *tp);
int ttylclose(struct tty *tp, int flag, struct proc *p);
int ttymodem(struct tty *tp, int flag);
int ttyopen(dev_t device, struct tty *tp, struct proc *p);
int ttyoutput(int c, struct tty *tp);
void ttypend(struct tty *tp);
void ttyretype(struct tty *tp);
void ttyrub(int c, struct tty *tp);
int ttysleep(struct tty *tp,
     void *chan, int pri, char *wmesg, int timeout);
int ttywait(struct tty *tp);
int ttywflush(struct tty *tp);
void ttytstamp(struct tty *tp, int octs, int ncts, int odcd, int ndcd);
void tty_init(void);
struct tty *ttymalloc(int);
void ttyfree(struct tty *);
u_char *firstc(struct clist *clp, int *c);
int cttyopen(dev_t, int, int, struct proc *);
int cttyread(dev_t, struct uio *, int);
int cttywrite(dev_t, struct uio *, int);
int cttyioctl(dev_t, u_long, caddr_t, int, struct proc *);
int cttypoll(dev_t, int, struct proc *);
void clalloc(struct clist *, int, int);
void clfree(struct clist *);
int nullioctl(struct tty *, u_long, caddr_t, int, struct proc *);
int pppopen(dev_t dev, struct tty *, struct proc *);
int pppclose(struct tty *, int, struct proc *);
int ppptioctl(struct tty *, u_long, caddr_t, int, struct proc *);
int pppinput(int c, struct tty *);
int pppstart(struct tty *);
int pppread(struct tty *, struct uio *, int);
int pppwrite(struct tty *, struct uio *, int);
int nmeaopen(dev_t, struct tty *, struct proc *);
int nmeaclose(struct tty *, int, struct proc *);
int nmeainput(int, struct tty *);
int mstsopen(dev_t, struct tty *, struct proc *);
int mstsclose(struct tty *, int, struct proc *);
int mstsinput(int, struct tty *);
int endrunopen(dev_t, struct tty *, struct proc *);
int endrunclose(struct tty *, int, struct proc *);
int endruninput(int, struct tty *);
struct flock {
 off_t l_start;
 off_t l_len;
 pid_t l_pid;
 short l_type;
 short l_whence;
};
typedef struct pollfd {
 int fd;
 short events;
 short revents;
} pollfd_t;
typedef unsigned int nfds_t;
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
struct usb_dma_block;
struct usb_dma {
 struct usb_dma_block *block;
 u_int offs;
};
struct usbd_xfer;
struct usbd_pipe;
struct usbd_endpoint {
 usb_endpoint_descriptor_t *edesc;
 int refcnt;
 int savedtoggle;
};
struct usbd_bus_methods {
 usbd_status (*open_pipe)(struct usbd_pipe *);
 int (*dev_setaddr)(struct usbd_device *, int);
 void (*soft_intr)(void *);
 void (*do_poll)(struct usbd_bus *);
 struct usbd_xfer * (*allocx)(struct usbd_bus *);
 void (*freex)(struct usbd_bus *, struct usbd_xfer *);
};
struct usbd_pipe_methods {
 usbd_status (*transfer)(struct usbd_xfer *);
 usbd_status (*start)(struct usbd_xfer *);
 void (*abort)(struct usbd_xfer *);
 void (*close)(struct usbd_pipe *);
 void (*cleartoggle)(struct usbd_pipe *);
 void (*done)(struct usbd_xfer *);
};
struct usbd_tt {
 struct usbd_hub *hub;
};
struct usbd_port {
 usb_port_status_t status;
 u_int16_t power;
 u_int8_t portno;
 u_int8_t restartcnt;
 u_int8_t reattach;
 struct usbd_device *device;
 struct usbd_device *parent;
 struct usbd_tt *tt;
};
struct usbd_hub {
 int (*explore)(struct usbd_device *);
 void *hubsoftc;
 struct usbd_port *ports;
 int nports;
 u_int8_t powerdelay;
 u_int8_t ttthink;
};
struct usbd_bus {
 struct device bdev;
 struct usbd_bus_methods *methods;
 void *bpfif;
 caddr_t bpf;
 u_int32_t pipe_size;
 struct usbd_device *root_hub;
 struct usbd_device *devices[128];
 char use_polling;
 char dying;
 int flags;
 struct device *usbctl;
 struct usb_device_stats stats;
 int intr_context;
 u_int no_intrs;
 int usbrev;
 void *soft;
 bus_dma_tag_t dmatag;
};
struct usbd_device {
 struct usbd_bus *bus;
 struct usbd_pipe *default_pipe;
 u_int8_t dying;
 u_int8_t ref_cnt;
 u_int8_t address;
 u_int8_t config;
 u_int8_t depth;
 u_int8_t speed;
 u_int8_t self_powered;
 u_int16_t power;
 int16_t langid;
 struct usbd_port *powersrc;
 struct usbd_device *myhub;
 struct usbd_port *myhsport;
 struct usbd_endpoint def_ep;
 usb_endpoint_descriptor_t def_ep_desc;
 struct usbd_interface *ifaces;
 usb_device_descriptor_t ddesc;
 usb_config_descriptor_t *cdesc;
 const struct usbd_quirks *quirks;
 struct usbd_hub *hub;
 struct device **subdevs;
 int ndevs;
 char *serial;
 char *vendor;
 char *product;
};
struct usbd_interface {
 struct usbd_device *device;
 usb_interface_descriptor_t *idesc;
 int index;
 int altindex;
 struct usbd_endpoint *endpoints;
 void *priv;
 struct { struct usbd_pipe *lh_first; } pipes;
 u_int8_t claimed;
};
struct usbd_pipe {
 struct usbd_interface *iface;
 struct usbd_device *device;
 struct usbd_endpoint *endpoint;
 size_t pipe_size;
 char running;
 char aborting;
 struct { struct usbd_xfer *sqh_first; struct usbd_xfer **sqh_last; } queue;
 struct { struct usbd_pipe *le_next; struct usbd_pipe **le_prev; } next;
 struct usbd_xfer *intrxfer;
 char repeat;
 int interval;
 struct usbd_pipe_methods *methods;
};
struct usbd_xfer {
 struct usbd_pipe *pipe;
 void *priv;
 char *buffer;
 u_int32_t length;
 u_int32_t actlen;
 u_int16_t flags;
 u_int32_t timeout;
 usbd_status status;
 usbd_callback callback;
 volatile char done;
 u_int32_t busy_free;
 usb_device_request_t request;
 u_int16_t *frlengths;
 int nframes;
 struct usbd_device *device;
 struct usb_dma dmabuf;
 int rqflags;
 struct { struct usbd_xfer *sqe_next; } next;
 void *hcpriv;
 struct usb_task abort_task;
 struct timeout timeout_handle;
};
void usbd_dump_iface(struct usbd_interface *);
void usbd_dump_device(struct usbd_device *);
void usbd_dump_endpoint(struct usbd_endpoint *);
void usbd_dump_queue(struct usbd_pipe *);
void usbd_dump_pipe(struct usbd_pipe *);
int usbctlprint(void *, const char *);
void usb_delay_ms(struct usbd_bus *, u_int);
usbd_status usbd_port_disown_to_1_1(struct usbd_device *, int);
int usbd_reset_port(struct usbd_device *, int);
usbd_status usbd_setup_pipe(struct usbd_device *,
      struct usbd_interface *, struct usbd_endpoint *, int,
      struct usbd_pipe **);
int usbd_set_address(struct usbd_device *, int);
usbd_status usbd_new_device(struct device *, struct usbd_bus *,
      int, int, int, struct usbd_port *);
usbd_status usbd_fill_iface_data(struct usbd_device *, int, int);
usbd_status usb_insert_transfer(struct usbd_xfer *);
void usb_transfer_complete(struct usbd_xfer *);
int usbd_detach(struct usbd_device *, struct device *);
void usb_needs_explore(struct usbd_device *, int);
void usb_needs_reattach(struct usbd_device *);
void usb_schedsoftintr(struct usbd_bus *);
void usb_tap(struct usbd_bus *, struct usbd_xfer *, uint8_t);
static inline int
usbd_xfer_isread(struct usbd_xfer *xfer)
{
 if (xfer->rqflags & 0x01)
  return (xfer->request.bmRequestType & 0x80);
 return (xfer->pipe->endpoint->edesc->bEndpointAddress & 0x80);
}
struct usb_endpoint_descriptor_audio {
 uByte bLength;
 uByte bDescriptorType;
 uByte bEndpointAddress;
 uByte bmAttributes;
 uWord wMaxPacketSize;
 uByte bInterval;
 uByte bRefresh;
 uByte bSynchAddress;
} __attribute__((__packed__));
struct usb_audio_control_descriptor {
 uByte bLength;
 uByte bDescriptorType;
 uByte bDescriptorSubtype;
 uWord bcdADC;
 uWord wTotalLength;
 uByte bInCollection;
 uByte baInterfaceNr[1];
} __attribute__((__packed__));
struct usb_audio_streaming_interface_descriptor {
 uByte bLength;
 uByte bDescriptorType;
 uByte bDescriptorSubtype;
 uByte bTerminalLink;
 uByte bDelay;
 uWord wFormatTag;
} __attribute__((__packed__));
struct usb_audio_streaming_endpoint_descriptor {
 uByte bLength;
 uByte bDescriptorType;
 uByte bDescriptorSubtype;
 uByte bmAttributes;
 uByte bLockDelayUnits;
 uWord wLockDelay;
} __attribute__((__packed__));
struct usb_audio_streaming_type1_descriptor {
 uByte bLength;
 uByte bDescriptorType;
 uByte bDescriptorSubtype;
 uByte bFormatType;
 uByte bNrChannels;
 uByte bSubFrameSize;
 uByte bBitResolution;
 uByte bSamFreqType;
 uByte tSamFreq[3*2];
} __attribute__((__packed__));
struct usb_audio_cluster {
 uByte bNrChannels;
 uWord wChannelConfig;
 uByte iChannelNames;
} __attribute__((__packed__));
struct usb_audio_unit {
 uByte bLength;
 uByte bDescriptorType;
 uByte bDescriptorSubtype;
 uByte bUnitId;
};
struct usb_audio_input_terminal {
 uByte bLength;
 uByte bDescriptorType;
 uByte bDescriptorSubtype;
 uByte bTerminalId;
 uWord wTerminalType;
 uByte bAssocTerminal;
 uByte bNrChannels;
 uWord wChannelConfig;
 uByte iChannelNames;
 uByte iTerminal;
} __attribute__((__packed__));
struct usb_audio_output_terminal {
 uByte bLength;
 uByte bDescriptorType;
 uByte bDescriptorSubtype;
 uByte bTerminalId;
 uWord wTerminalType;
 uByte bAssocTerminal;
 uByte bSourceId;
 uByte iTerminal;
} __attribute__((__packed__));
struct usb_audio_mixer_unit {
 uByte bLength;
 uByte bDescriptorType;
 uByte bDescriptorSubtype;
 uByte bUnitId;
 uByte bNrInPins;
 uByte baSourceId[255];
} __attribute__((__packed__));
struct usb_audio_mixer_unit_1 {
 uByte bNrChannels;
 uWord wChannelConfig;
 uByte iChannelNames;
 uByte bmControls[255];
} __attribute__((__packed__));
struct usb_audio_selector_unit {
 uByte bLength;
 uByte bDescriptorType;
 uByte bDescriptorSubtype;
 uByte bUnitId;
 uByte bNrInPins;
 uByte baSourceId[255];
} __attribute__((__packed__));
struct usb_audio_feature_unit {
 uByte bLength;
 uByte bDescriptorType;
 uByte bDescriptorSubtype;
 uByte bUnitId;
 uByte bSourceId;
 uByte bControlSize;
 uByte bmaControls[255];
} __attribute__((__packed__));
struct usb_audio_processing_unit {
 uByte bLength;
 uByte bDescriptorType;
 uByte bDescriptorSubtype;
 uByte bUnitId;
 uWord wProcessType;
 uByte bNrInPins;
 uByte baSourceId[255];
} __attribute__((__packed__));
struct usb_audio_processing_unit_1{
 uByte bNrChannels;
 uWord wChannelConfig;
 uByte iChannelNames;
 uByte bControlSize;
 uByte bmControls[255];
} __attribute__((__packed__));
struct usb_audio_processing_unit_updown {
 uByte iProcessing;
 uByte bNrModes;
 uWord waModes[255];
} __attribute__((__packed__));
struct usb_audio_extension_unit {
 uByte bLength;
 uByte bDescriptorType;
 uByte bDescriptorSubtype;
 uByte bUnitId;
 uWord wExtensionCode;
 uByte bNrInPins;
 uByte baSourceId[255];
} __attribute__((__packed__));
struct usb_audio_extension_unit_1 {
 uByte bNrChannels;
 uWord wChannelConfig;
 uByte iChannelNames;
 uByte bControlSize;
 uByte bmControls[255];
} __attribute__((__packed__));
struct mixerctl {
 u_int16_t wValue[8];
 u_int16_t wIndex;
 u_int8_t nchan;
 u_int8_t type;
 int minval, maxval;
 u_int delta;
 u_int8_t class;
 char ctlname[16];
 char *ctlunit;
};
struct as_info {
 u_int8_t alt;
 u_int8_t encoding;
 u_int8_t attributes;
 struct usbd_interface *ifaceh;
 const usb_interface_descriptor_t *idesc;
 const struct usb_endpoint_descriptor_audio *edesc;
 const struct usb_endpoint_descriptor_audio *edesc1;
 const struct usb_audio_streaming_type1_descriptor *asf1desc;
 int sc_busy;
};
struct chan {
 void (*intr)(void *);
 void *arg;
 struct usbd_pipe *pipe;
 struct usbd_pipe *sync_pipe;
 u_int sample_size;
 u_int sample_rate;
 u_int bytes_per_frame;
 u_int max_bytes_per_frame;
 u_int fraction;
 u_int frac_denom;
 u_int residue;
 u_int nframes;
 u_int nsync_frames;
 u_int usb_fps;
 u_int maxpktsize;
 u_int reqms;
 u_int hi_speed;
 u_char *start;
 u_char *end;
 u_char *cur;
 int blksize;
 int transferred;
 int altidx;
 int curchanbuf;
 int cursyncbuf;
 struct chanbuf {
  struct chan *chan;
  struct usbd_xfer *xfer;
  u_char *buffer;
  u_int16_t sizes[16];
  u_int16_t offsets[16];
  u_int16_t size;
 } chanbufs[3];
 struct syncbuf {
  struct chan *chan;
  struct usbd_xfer *xfer;
  u_char *buffer;
  u_int16_t sizes[16];
  u_int16_t offsets[16];
  u_int16_t size;
 } syncbufs[3];
 struct uaudio_softc *sc;
};
struct uaudio_devs {
 struct usb_devno uv_dev;
 int flags;
} uaudio_devs[] = {
 { { 0x0499, 0x1509 },
  0x0010 },
 { { 0x04d2, 0x0070 },
  0x0008 } ,
 { { 0x04d2, 0xff05 },
  0x0001 },
 { { 0x05ac, 0x1290 },
  0x0001 },
 { { 0x05ac, 0x1292 },
  0x0001 },
 { { 0x05ac, 0x1294 },
  0x0001 },
 { { 0x05ac, 0x1297 },
  0x0001 },
 { { 0x05ac, 0x129c },
  0x0001 },
 { { 0x05ac, 0x12a0 },
  0x0001 },
 { { 0x05ac, 0x12a8 },
  0x0001 },
 { { 0x05ac, 0x1291 },
  0x0001 },
 { { 0x05ac, 0x1293 },
  0x0001 },
 { { 0x05ac, 0x1299 },
  0x0001 },
 { { 0x05ac, 0x129e },
  0x0001 },
 { { 0x05ac, 0x129a },
  0x0001 },
 { { 0x05ac, 0x129f },
  0x0001 },
 { { 0x041e, 0x3f02 },
  0x0010 | 0x0040 |
  0x0020 },
 { { 0x04fa, 0x4201 },
  0x0004 | 0x0008 },
 { { 0x046d, 0x08a9 },
  0x0001 },
 { { 0x046d, 0x0991 },
  0x0001 },
 { { 0x046d, 0x08b2 },
  0x0001 },
 { { 0x046d, 0x08b3 },
  0x0001 },
 { { 0x0562, 0x0001 },
  0x0002 }
};
struct uaudio_softc {
 struct device sc_dev;
 struct usbd_device *sc_udev;
 int sc_ac_iface;
 struct chan sc_playchan;
 struct chan sc_recchan;
 int sc_nullalt;
 int sc_audio_rev;
 struct as_info *sc_alts;
 int sc_nalts;
 int sc_altflags;
 int sc_mode;
 struct mixerctl *sc_ctls;
 int sc_nctls;
 int sc_quirks;
};
struct terminal_list {
 int size;
 uint16_t terminals[1];
};
struct io_terminal {
 union {
  const usb_descriptor_t *desc;
  const struct usb_audio_input_terminal *it;
  const struct usb_audio_output_terminal *ot;
  const struct usb_audio_mixer_unit *mu;
  const struct usb_audio_selector_unit *su;
  const struct usb_audio_feature_unit *fu;
  const struct usb_audio_processing_unit *pu;
  const struct usb_audio_extension_unit *eu;
 } d;
 int inputs_size;
 struct terminal_list **inputs;
 struct terminal_list *output;
 int direct;
};
usbd_status uaudio_identify_ac
 (struct uaudio_softc *, const usb_config_descriptor_t *);
usbd_status uaudio_identify_as
 (struct uaudio_softc *, const usb_config_descriptor_t *);
usbd_status uaudio_process_as
 (struct uaudio_softc *, const char *, int *, int,
  const usb_interface_descriptor_t *);
void uaudio_add_alt(struct uaudio_softc *, const struct as_info *);
const usb_interface_descriptor_t *uaudio_find_iface
 (const char *, int, int *, int, int);
void uaudio_mixer_add_ctl(struct uaudio_softc *, struct mixerctl *);
char *uaudio_id_name
 (struct uaudio_softc *, const struct io_terminal *, int);
uByte uaudio_get_cluster_nchan
 (int, const struct io_terminal *);
void uaudio_add_input
 (struct uaudio_softc *, const struct io_terminal *, int);
void uaudio_add_output
 (struct uaudio_softc *, const struct io_terminal *, int);
void uaudio_add_mixer
 (struct uaudio_softc *, const struct io_terminal *, int);
void uaudio_add_selector
 (struct uaudio_softc *, const struct io_terminal *, int);
int uaudio_determine_class
 (const struct io_terminal *, struct mixerctl *);
const char *uaudio_feature_name
 (const struct io_terminal *, struct mixerctl *);
void uaudio_add_feature
 (struct uaudio_softc *, const struct io_terminal *, int);
void uaudio_add_processing_updown
 (struct uaudio_softc *, const struct io_terminal *, int);
void uaudio_add_processing
 (struct uaudio_softc *, const struct io_terminal *, int);
void uaudio_add_extension
 (struct uaudio_softc *, const struct io_terminal *, int);
struct terminal_list *uaudio_merge_terminal_list
 (const struct io_terminal *);
struct terminal_list *uaudio_io_terminaltype
 (int, struct io_terminal *, int);
usbd_status uaudio_identify
 (struct uaudio_softc *, const usb_config_descriptor_t *);
int uaudio_signext(int, int);
int uaudio_unsignext(int, int);
int uaudio_value2bsd(struct mixerctl *, int);
int uaudio_bsd2value(struct mixerctl *, int);
int uaudio_get(struct uaudio_softc *, int, int, int, int, int);
int uaudio_ctl_get
 (struct uaudio_softc *, int, struct mixerctl *, int);
void uaudio_set
 (struct uaudio_softc *, int, int, int, int, int, int);
void uaudio_ctl_set
 (struct uaudio_softc *, int, struct mixerctl *, int, int);
usbd_status uaudio_set_speed(struct uaudio_softc *, int, u_int);
void uaudio_set_speed_emu0202(struct chan *ch);
usbd_status uaudio_chan_open(struct uaudio_softc *, struct chan *);
void uaudio_chan_close(struct uaudio_softc *, struct chan *);
usbd_status uaudio_chan_alloc_buffers
 (struct uaudio_softc *, struct chan *);
void uaudio_chan_free_buffers(struct uaudio_softc *, struct chan *);
void uaudio_chan_init
 (struct chan *, int, int, const struct audio_params *);
void uaudio_chan_set_param(struct chan *, u_char *, u_char *, int);
void uaudio_chan_ptransfer(struct chan *);
void uaudio_chan_pintr
 (struct usbd_xfer *, void *, usbd_status);
void uaudio_chan_psync_transfer(struct chan *);
void uaudio_chan_psync_intr
 (struct usbd_xfer *, void *, usbd_status);
void uaudio_chan_rtransfer(struct chan *);
void uaudio_chan_rintr
 (struct usbd_xfer *, void *, usbd_status);
int uaudio_open(void *, int);
void uaudio_close(void *);
void uaudio_get_minmax_rates
 (int, const struct as_info *, const struct audio_params *,
  int, int, int, u_long *, u_long *);
int uaudio_match_alt_rate(void *, int, int);
int uaudio_match_alt(void *, struct audio_params *, int);
int uaudio_set_params
 (void *, int, int, struct audio_params *, struct audio_params *);
int uaudio_round_blocksize(void *, int);
int uaudio_trigger_output
 (void *, void *, void *, int, void (*)(void *), void *,
  struct audio_params *);
int uaudio_trigger_input
 (void *, void *, void *, int, void (*)(void *), void *,
  struct audio_params *);
int uaudio_halt_in_dma(void *);
int uaudio_halt_out_dma(void *);
int uaudio_mixer_set_port(void *, mixer_ctrl_t *);
int uaudio_mixer_get_port(void *, mixer_ctrl_t *);
int uaudio_query_devinfo(void *, mixer_devinfo_t *);
int uaudio_get_props(void *);
struct audio_hw_if uaudio_hw_if = {
 uaudio_open,
 uaudio_close,
 uaudio_set_params,
 uaudio_round_blocksize,
 ((void *)0),
 ((void *)0),
 ((void *)0),
 ((void *)0),
 ((void *)0),
 uaudio_halt_out_dma,
 uaudio_halt_in_dma,
 ((void *)0),
 ((void *)0),
 uaudio_mixer_set_port,
 uaudio_mixer_get_port,
 uaudio_query_devinfo,
 ((void *)0),
 ((void *)0),
 ((void *)0),
 uaudio_get_props,
 uaudio_trigger_output,
 uaudio_trigger_input
};
int uaudio_match(struct device *, void *, void *);
void uaudio_attach(struct device *, struct device *, void *);
int uaudio_detach(struct device *, int);
struct cfdriver uaudio_cd = {
 ((void *)0), "uaudio", DV_DULL
};
const struct cfattach uaudio_ca = {
 sizeof(struct uaudio_softc), uaudio_match, uaudio_attach, uaudio_detach
};
int
uaudio_match(struct device *parent, void *match, void *aux)
{
 struct usb_attach_arg *uaa = aux;
 usb_interface_descriptor_t *id;
 const usb_interface_descriptor_t *cd_id;
 usb_config_descriptor_t *cdesc;
 struct uaudio_devs *quirk;
 const char *buf;
 int flags = 0, size, offs;
 if (uaa->iface == ((void *)0) || uaa->device == ((void *)0))
  return (0);
 quirk = ((struct uaudio_devs *)usbd_match_device((const struct usb_devno *)(uaudio_devs), sizeof (uaudio_devs) / sizeof ((uaudio_devs)[0]), sizeof ((uaudio_devs)[0]), (uaa->vendor), (uaa->product)));
 if (quirk)
  flags = quirk->flags;
 if (flags & 0x0001)
  return (0);
 id = usbd_get_interface_descriptor(uaa->iface);
 if (id == ((void *)0))
  return (0);
 if (!(id->bInterfaceClass == 0x01 ||
     ((flags & 0x0010) &&
     id->bInterfaceClass == 0xff)))
  return (0);
 if (id->bInterfaceSubClass != 1)
  return (0);
 cdesc = usbd_get_config_descriptor(uaa->device);
 if (cdesc == ((void *)0))
  return (0);
 size = ((cdesc->wTotalLength)[0] | ((cdesc->wTotalLength)[1] << 8));
 buf = (const char *)cdesc;
 offs = 0;
 cd_id = uaudio_find_iface(buf, size, &offs, 2,
     flags);
 if (cd_id == ((void *)0))
  return (0);
 offs = 0;
 cd_id = uaudio_find_iface(buf, size, &offs, 1,
     flags);
 if (cd_id == ((void *)0))
  return (0);
 return (8);
}
void
uaudio_attach(struct device *parent, struct device *self, void *aux)
{
 struct uaudio_softc *sc = (struct uaudio_softc *)self;
 struct usb_attach_arg *uaa = aux;
 struct uaudio_devs *quirk;
 usb_interface_descriptor_t *id;
 usb_config_descriptor_t *cdesc;
 usbd_status err;
 int i, j, found;
 sc->sc_udev = uaa->device;
 quirk = ((struct uaudio_devs *)usbd_match_device((const struct usb_devno *)(uaudio_devs), sizeof (uaudio_devs) / sizeof ((uaudio_devs)[0]), sizeof ((uaudio_devs)[0]), (uaa->vendor), (uaa->product)));
 if (quirk)
  sc->sc_quirks = quirk->flags;
 cdesc = usbd_get_config_descriptor(sc->sc_udev);
 if (cdesc == ((void *)0)) {
  printf("%s: failed to get configuration descriptor\n",
         sc->sc_dev.dv_xname);
  return;
 }
 err = uaudio_identify(sc, cdesc);
 if (err) {
  printf("%s: audio descriptors make no sense, error=%d\n",
         sc->sc_dev.dv_xname, err);
  return;
 }
 for (i = 0; i < uaa->nifaces; i++) {
  if (usbd_iface_claimed(sc->sc_udev, i))
   continue;
  id = usbd_get_interface_descriptor(uaa->ifaces[i]);
  if (id == ((void *)0))
   continue;
  found = 0;
  for (j = 0; j < sc->sc_nalts; j++) {
   if (id->bInterfaceNumber ==
       sc->sc_alts[j].idesc->bInterfaceNumber) {
    sc->sc_alts[j].ifaceh = uaa->ifaces[i];
    found = 1;
   }
  }
  if (found)
   usbd_claim_iface(sc->sc_udev, i);
 }
 for (j = 0; j < sc->sc_nalts; j++) {
  if (sc->sc_alts[j].ifaceh == ((void *)0)) {
   printf("%s: alt %d missing AS interface(s)\n",
       sc->sc_dev.dv_xname, j);
   return;
  }
 }
 printf("%s: audio rev %d.%02x", sc->sc_dev.dv_xname,
        sc->sc_audio_rev >> 8, sc->sc_audio_rev & 0xff);
 sc->sc_playchan.sc = sc->sc_recchan.sc = sc;
 sc->sc_playchan.altidx = -1;
 sc->sc_recchan.altidx = -1;
 if (sc->sc_quirks & 0x0002)
  sc->sc_altflags |= 0x20;
 printf(", %d mixer controls\n", sc->sc_nctls);
 ;
 audio_attach_mi(&uaudio_hw_if, sc, &sc->sc_dev);
}
int
uaudio_detach(struct device *self, int flags)
{
 struct uaudio_softc *sc = (struct uaudio_softc *)self;
 if (sc->sc_alts == ((void *)0))
  return (0);
 return (config_detach_children(self, flags));
}
const usb_interface_descriptor_t *
uaudio_find_iface(const char *buf, int size, int *offsp, int subtype, int flags)
{
 const usb_interface_descriptor_t *d;
 while (*offsp < size) {
  d = (const void *)(buf + *offsp);
  *offsp += d->bLength;
  if (d->bDescriptorType == 0x04 &&
      d->bInterfaceSubClass == subtype &&
      (d->bInterfaceClass == 0x01 ||
      (d->bInterfaceClass == 0xff &&
      (flags & 0x0010))))
   return (d);
 }
 return (((void *)0));
}
void
uaudio_mixer_add_ctl(struct uaudio_softc *sc, struct mixerctl *mc)
{
 int res, range;
 size_t len;
 struct mixerctl *nmc;
 if (mc->class < 4) {
  ;
 } else {
  ;
 }
 nmc = mallocarray(sc->sc_nctls + 1, sizeof(*mc), 102, 0x0002);
 if (nmc == ((void *)0)) {
  printf("%s: no memory\n", __func__);
  return;
 }
 len = sizeof(*mc) * (sc->sc_nctls + 1);
 if (sc->sc_nctls != 0) {
  __builtin_memcpy((nmc), (sc->sc_ctls), (sizeof(*mc) * (sc->sc_nctls)));
  free(sc->sc_ctls, 102, sc->sc_nctls * sizeof(*mc));
 }
 sc->sc_ctls = nmc;
 mc->delta = 0;
 if (mc->type == 1) {
  mc->minval = 0;
  mc->maxval = 1;
 } else if (mc->type == 5) {
  ;
 } else {
  mc->minval = uaudio_signext(mc->type,
   uaudio_get(sc, 0x82, (0x80 | 0x20 | 0x01),
       mc->wValue[0], mc->wIndex,
       ((mc->type) == 2 || (mc->type) == 3 ? 2 : 1)));
  mc->maxval = uaudio_signext(mc->type,
   uaudio_get(sc, 0x83, (0x80 | 0x20 | 0x01),
       mc->wValue[0], mc->wIndex,
       ((mc->type) == 2 || (mc->type) == 3 ? 2 : 1)));
  range = mc->maxval - mc->minval;
  res = uaudio_get(sc, 0x84, (0x80 | 0x20 | 0x01),
     mc->wValue[0], mc->wIndex,
     ((mc->type) == 2 || (mc->type) == 3 ? 2 : 1));
  if (res > 0 && range > 0)
   mc->delta = (res * 255 + res - 1) / range;
 }
 sc->sc_ctls[sc->sc_nctls++] = *mc;
}
char *
uaudio_id_name(struct uaudio_softc *sc, const struct io_terminal *iot, int id)
{
 static char buf[32];
 snprintf(buf, sizeof(buf), "i%d", id);
 return (buf);
}
uByte
uaudio_get_cluster_nchan(int id, const struct io_terminal *iot)
{
 struct usb_audio_cluster r;
 const usb_descriptor_t *dp;
 int i;
 for (i = 0; i < 25; i++) {
  dp = iot[id].d.desc;
  if (dp == 0)
   goto bad;
  switch (dp->bDescriptorSubtype) {
  case 2:
   return (iot[id].d.it->bNrChannels);
  case 3:
   id = iot[id].d.ot->bSourceId;
   break;
  case 4:
   r = *(struct usb_audio_cluster *)
    &iot[id].d.mu->baSourceId[iot[id].d.mu->bNrInPins];
   return (r.bNrChannels);
  case 5:
   id = iot[id].d.su->baSourceId[0];
   break;
  case 6:
   id = iot[id].d.fu->bSourceId;
   break;
  case 7:
   r = *(struct usb_audio_cluster *)
    &iot[id].d.pu->baSourceId[iot[id].d.pu->bNrInPins];
   return (r.bNrChannels);
  case 8:
   r = *(struct usb_audio_cluster *)
    &iot[id].d.eu->baSourceId[iot[id].d.eu->bNrInPins];
   return (r.bNrChannels);
  default:
   goto bad;
  }
 }
bad:
 printf("%s: bad data\n", __func__);
 return (0);
}
void
uaudio_add_input(struct uaudio_softc *sc, const struct io_terminal *iot, int id)
{
}
void
uaudio_add_output(struct uaudio_softc *sc, const struct io_terminal *iot, int id)
{
}
void
uaudio_add_mixer(struct uaudio_softc *sc, const struct io_terminal *iot, int id)
{
 const struct usb_audio_mixer_unit *d = iot[id].d.mu;
 struct usb_audio_mixer_unit_1 *d1;
 int c, chs, ichs, ochs, i, o, bno, p, mo, mc, k;
 uByte *bm;
 struct mixerctl mix;
 ;
 ichs = 0;
 for (i = 0; i < d->bNrInPins; i++)
  ichs += uaudio_get_cluster_nchan(d->baSourceId[i], iot);
 d1 = (struct usb_audio_mixer_unit_1 *)&d->baSourceId[d->bNrInPins];
 ochs = d1->bNrChannels;
 ;
 bm = d1->bmControls;
 mix.wIndex = (((d->bUnitId) << 8) | (sc->sc_ac_iface));
 uaudio_determine_class(&iot[id], &mix);
 mix.type = 2;
 mix.ctlunit = "volume";
 for (p = i = 0; i < d->bNrInPins; i++) {
  chs = uaudio_get_cluster_nchan(d->baSourceId[i], iot);
  mc = 0;
  for (c = 0; c < chs; c++) {
   mo = 0;
   for (o = 0; o < ochs; o++) {
    bno = (p + c) * ochs + o;
    if (((bm[bno / 8] >> (7 - bno % 8)) & 1))
     mo++;
   }
   if (mo == 1)
    mc++;
  }
  if (mc == chs && chs <= 8) {
   k = 0;
   for (c = 0; c < chs; c++)
    for (o = 0; o < ochs; o++) {
     bno = (p + c) * ochs + o;
     if (((bm[bno / 8] >> (7 - bno % 8)) & 1))
      mix.wValue[k++] =
       (((p+c+1) << 8) | (o+1));
    }
   snprintf(mix.ctlname, sizeof(mix.ctlname), "mix%d-%s",
       d->bUnitId, uaudio_id_name(sc, iot,
       d->baSourceId[i]));
   mix.nchan = chs;
   uaudio_mixer_add_ctl(sc, &mix);
  } else {
  }
  p += chs;
 }
}
void
uaudio_add_selector(struct uaudio_softc *sc, const struct io_terminal *iot, int id)
{
 const struct usb_audio_selector_unit *d = iot[id].d.su;
 struct mixerctl mix;
 int i, wp;
 ;
 mix.wIndex = (((d->bUnitId) << 8) | (sc->sc_ac_iface));
 mix.wValue[0] = (((0) << 8) | (0));
 uaudio_determine_class(&iot[id], &mix);
 mix.nchan = 1;
 mix.type = 5;
 mix.ctlunit = "";
 mix.minval = 1;
 mix.maxval = d->bNrInPins;
 wp = snprintf(mix.ctlname, 16, "sel%d-", d->bUnitId);
 for (i = 1; i <= d->bNrInPins; i++) {
  wp += snprintf(mix.ctlname + wp, 16 - wp,
          "i%d", d->baSourceId[i - 1]);
  if (wp > 16 - 1)
   break;
 }
 uaudio_mixer_add_ctl(sc, &mix);
}
int
uaudio_determine_class(const struct io_terminal *iot, struct mixerctl *mix)
{
 int terminal_type;
 if (iot == ((void *)0) || iot->output == ((void *)0)) {
  mix->class = 0;
  return 0;
 }
 terminal_type = 0;
 if (iot->output->size == 1)
  terminal_type = iot->output->terminals[0];
 if ((terminal_type & 0xff00) == (0x0100 & 0xff00)) {
  mix->class = 3;
  if (iot->inputs_size == 1
      && iot->inputs[0] != ((void *)0)
      && iot->inputs[0]->size == 1)
   return iot->inputs[0]->terminals[0];
  else
   return 0;
 }
 if (terminal_type != 0 && iot->direct) {
  mix->class = 0;
  return terminal_type;
 }
 if (iot->inputs_size == 1 && iot->inputs[0] != ((void *)0)
     && iot->inputs[0]->size == 1) {
  mix->class = 1;
  return iot->inputs[0]->terminals[0];
 }
 mix->class = 0;
 return terminal_type;
}
const char *
uaudio_feature_name(const struct io_terminal *iot, struct mixerctl *mix)
{
 int terminal_type;
 terminal_type = uaudio_determine_class(iot, mix);
 if (mix->class == 3 && terminal_type == 0)
  return "mixerout";
 ;
 switch (terminal_type) {
 case 0x0101:
  return "dac";
 case 0x0201:
 case 0x0202:
 case 0x0203:
 case 0x0204:
 case 0x0205:
 case 0x0206:
  return "mic";
 case 0x0301:
 case 0x0304:
 case 0x0305:
 case 0x0306:
  return "spkr";
 case 0x0302:
  return "hp";
 case 0x0307:
  return "lfe";
 case 0x0500:
 case 0x0501:
 case 0x0502:
 case 0x0503:
  return "phone";
 case 0x0601:
 case 0x0603:
 case 0x0604:
  return "line";
 case 0x0602:
 case 0x0605:
 case 0x0606:
 case 0x0607:
  return "aux";
 case 0x0703:
  return "cd";
 case 0x0713:
  return "fmsynth";
 case 0x070a:
 case 0x070b:
 case 0x070c:
  return "video";
 case 0x0100:
 case 0x01ff:
 case 0x0200:
 case 0x0300:
 case 0x0303:
 case 0x0400:
 case 0x0401:
 case 0x0402:
 case 0x0403:
 case 0x0404:
 case 0x0405:
 case 0x0600:
 case 0x0700:
 case 0x0701:
 case 0x0702:
 case 0x0704:
 case 0x0705:
 case 0x0706:
 case 0x0707:
 case 0x0708:
 case 0x0709:
 case 0x070d:
 case 0x070e:
 case 0x070f:
 case 0x0710:
 case 0x0711:
 case 0x0712:
 case 0xffff:
 default:
  ;
  return "master";
 }
}
void
uaudio_add_feature(struct uaudio_softc *sc, const struct io_terminal *iot, int id)
{
 const struct usb_audio_feature_unit *d = iot[id].d.fu;
 uByte *ctls = (uByte *)d->bmaControls;
 int ctlsize = d->bControlSize;
 int nchan = (d->bLength - 7) / ctlsize;
 u_int fumask, mmask, cmask;
 struct mixerctl mix;
 int chan, ctl, i, unit;
 const char *mixername;
 mmask = (ctls[(0)*ctlsize] | (ctlsize > 1 ? ctls[(0)*ctlsize+1] << 8 : 0));
 for (cmask = 0, chan = 1; chan < nchan; chan++) {
  ;
  cmask |= (ctls[(chan)*ctlsize] | (ctlsize > 1 ? ctls[(chan)*ctlsize+1] << 8 : 0));
 }
 ;
 if (nchan > 8)
  nchan = 8;
 unit = d->bUnitId;
 mix.wIndex = (((unit) << 8) | (sc->sc_ac_iface));
 for (ctl = 0x01; ctl < 0x0a; ctl++) {
  fumask = (1 << ((ctl)-1));
  ;
  if (mmask & fumask) {
   mix.nchan = 1;
   mix.wValue[0] = (((ctl) << 8) | (0));
  } else if (cmask & fumask) {
   mix.nchan = nchan - 1;
   for (i = 1; i < nchan; i++) {
    if ((ctls[(i)*ctlsize] | (ctlsize > 1 ? ctls[(i)*ctlsize+1] << 8 : 0)) & fumask)
     mix.wValue[i-1] = (((ctl) << 8) | (i));
    else
     mix.wValue[i-1] = -1;
   }
  } else {
   continue;
  }
  mixername = uaudio_feature_name(&iot[id], &mix);
  switch (ctl) {
  case 0x01:
   mix.type = 1;
   mix.ctlunit = "";
   snprintf(mix.ctlname, sizeof(mix.ctlname),
     "%s.%s", mixername, "mute");
   break;
  case 0x02:
   mix.type = 2;
   mix.ctlunit = "volume";
   strlcpy(mix.ctlname, mixername, sizeof(mix.ctlname));
   break;
  case 0x03:
   mix.type = 4;
   mix.ctlunit = "bass";
   snprintf(mix.ctlname, sizeof(mix.ctlname),
     "%s.%s", mixername, "bass");
   break;
  case 0x04:
   mix.type = 4;
   mix.ctlunit = "mid";
   snprintf(mix.ctlname, sizeof(mix.ctlname),
     "%s.%s", mixername, "mid");
   break;
  case 0x05:
   mix.type = 4;
   mix.ctlunit = "treble";
   snprintf(mix.ctlname, sizeof(mix.ctlname),
     "%s.%s", mixername, "treble");
   break;
  case 0x06:
   continue;
   break;
  case 0x07:
   mix.type = 1;
   mix.ctlunit = "";
   snprintf(mix.ctlname, sizeof(mix.ctlname), "%s.%s",
     mixername, "agc");
   break;
  case 0x08:
   mix.type = 3;
   mix.ctlunit = "4 ms";
   snprintf(mix.ctlname, sizeof(mix.ctlname),
     "%s.%s", mixername, "delay");
   break;
  case 0x09:
   mix.type = 1;
   mix.ctlunit = "";
   snprintf(mix.ctlname, sizeof(mix.ctlname),
     "%s.%s", mixername, "bassboost");
   break;
  case 0x0a:
   mix.type = 1;
   mix.ctlunit = "";
   snprintf(mix.ctlname, sizeof(mix.ctlname),
     "%s.%s", mixername, "loudness");
   break;
  }
  uaudio_mixer_add_ctl(sc, &mix);
 }
}
void
uaudio_add_processing_updown(struct uaudio_softc *sc,
        const struct io_terminal *iot, int id)
{
 const struct usb_audio_processing_unit *d = iot[id].d.pu;
 const struct usb_audio_processing_unit_1 *d1 =
     (const struct usb_audio_processing_unit_1 *)&d->baSourceId[d->bNrInPins];
 const struct usb_audio_processing_unit_updown *ud =
     (const struct usb_audio_processing_unit_updown *)
  &d1->bmControls[d1->bControlSize];
 struct mixerctl mix;
 int i;
 ;
 if (!(d1->bmControls[0] & (1<< ((2)-1)))) {
  ;
  return;
 }
 mix.wIndex = (((d->bUnitId) << 8) | (sc->sc_ac_iface));
 mix.nchan = 1;
 mix.wValue[0] = (((2) << 8) | (0));
 uaudio_determine_class(&iot[id], &mix);
 mix.type = 1;
 mix.ctlunit = "";
 snprintf(mix.ctlname, sizeof(mix.ctlname), "pro%d-mode", d->bUnitId);
 for (i = 0; i < ud->bNrModes; i++) {
  ;
 }
 uaudio_mixer_add_ctl(sc, &mix);
}
void
uaudio_add_processing(struct uaudio_softc *sc, const struct io_terminal *iot, int id)
{
 const struct usb_audio_processing_unit *d = iot[id].d.pu;
 const struct usb_audio_processing_unit_1 *d1 =
     (const struct usb_audio_processing_unit_1 *)&d->baSourceId[d->bNrInPins];
 int ptype = ((d->wProcessType)[0] | ((d->wProcessType)[1] << 8));
 struct mixerctl mix;
 ;
 if (d1->bmControls[0] & 1) {
  mix.wIndex = (((d->bUnitId) << 8) | (sc->sc_ac_iface));
  mix.nchan = 1;
  mix.wValue[0] = (((1) << 8) | (0));
  uaudio_determine_class(&iot[id], &mix);
  mix.type = 1;
  mix.ctlunit = "";
  snprintf(mix.ctlname, sizeof(mix.ctlname), "pro%d.%d-enable",
      d->bUnitId, ptype);
  uaudio_mixer_add_ctl(sc, &mix);
 }
 switch(ptype) {
 case 1:
  uaudio_add_processing_updown(sc, iot, id);
  break;
 case 2:
 case 3:
 case 4:
 case 5:
 case 6:
 default:
  ;
  break;
 }
}
void
uaudio_add_extension(struct uaudio_softc *sc, const struct io_terminal *iot, int id)
{
 const struct usb_audio_extension_unit *d = iot[id].d.eu;
 const struct usb_audio_extension_unit_1 *d1 =
     (const struct usb_audio_extension_unit_1 *)&d->baSourceId[d->bNrInPins];
 struct mixerctl mix;
 ;
 if (sc->sc_quirks & 0x0004)
  return;
 if (d1->bmControls[0] & 1) {
  mix.wIndex = (((d->bUnitId) << 8) | (sc->sc_ac_iface));
  mix.nchan = 1;
  mix.wValue[0] = (((1) << 8) | (0));
  uaudio_determine_class(&iot[id], &mix);
  mix.type = 1;
  mix.ctlunit = "";
  snprintf(mix.ctlname, sizeof(mix.ctlname), "ext%d-enable",
      d->bUnitId);
  uaudio_mixer_add_ctl(sc, &mix);
 }
}
struct terminal_list*
uaudio_merge_terminal_list(const struct io_terminal *iot)
{
 struct terminal_list *tml;
 uint16_t *ptm;
 int i, len;
 len = 0;
 if (iot->inputs == ((void *)0))
  return ((void *)0);
 for (i = 0; i < iot->inputs_size; i++) {
  if (iot->inputs[i] != ((void *)0))
   len += iot->inputs[i]->size;
 }
 tml = malloc((__builtin_offsetof(struct terminal_list, terminals) + sizeof(uint16_t) * (len)), 127, 0x0002);
 if (tml == ((void *)0)) {
  printf("%s: no memory\n", __func__);
  return ((void *)0);
 }
 tml->size = 0;
 ptm = tml->terminals;
 for (i = 0; i < iot->inputs_size; i++) {
  if (iot->inputs[i] == ((void *)0))
   continue;
  if (iot->inputs[i]->size > len)
   break;
  __builtin_memcpy((ptm), (iot->inputs[i]->terminals), (iot->inputs[i]->size * sizeof(uint16_t)));
  tml->size += iot->inputs[i]->size;
  ptm += iot->inputs[i]->size;
  len -= iot->inputs[i]->size;
 }
 return tml;
}
struct terminal_list *
uaudio_io_terminaltype(int outtype, struct io_terminal *iot, int id)
{
 struct terminal_list *tml;
 struct io_terminal *it;
 int src_id, i;
 it = &iot[id];
 if (it->output != ((void *)0)) {
  for (i = 0; i < it->output->size; i++)
   if (it->output->terminals[i] == outtype)
    return uaudio_merge_terminal_list(it);
  tml = malloc((__builtin_offsetof(struct terminal_list, terminals) + sizeof(uint16_t) * (it->output->size + 1)),
      127, 0x0002);
  if (tml == ((void *)0)) {
   printf("%s: no memory\n", __func__);
   return uaudio_merge_terminal_list(it);
  }
  __builtin_memcpy((tml), (it->output), ((__builtin_offsetof(struct terminal_list, terminals) + sizeof(uint16_t) * (it->output->size))));
  tml->terminals[it->output->size] = outtype;
  tml->size++;
  free(it->output, 127, 0);
  it->output = tml;
  if (it->inputs != ((void *)0)) {
   for (i = 0; i < it->inputs_size; i++)
    if (it->inputs[i] != ((void *)0))
     free(it->inputs[i], 127, 0);
   free(it->inputs, 127, 0);
  }
  it->inputs_size = 0;
  it->inputs = ((void *)0);
 } else {
  it->inputs_size = 0;
  it->inputs = ((void *)0);
  it->output = malloc((__builtin_offsetof(struct terminal_list, terminals) + sizeof(uint16_t) * (1)), 127, 0x0002);
  if (it->output == ((void *)0)) {
   printf("%s: no memory\n", __func__);
   return ((void *)0);
  }
  it->output->terminals[0] = outtype;
  it->output->size = 1;
  it->direct = 0;
 }
 switch (it->d.desc->bDescriptorSubtype) {
 case 2:
  it->inputs = malloc(sizeof(struct terminal_list *), 127, 0x0002);
  if (it->inputs == ((void *)0)) {
   printf("%s: no memory\n", __func__);
   return ((void *)0);
  }
  tml = malloc((__builtin_offsetof(struct terminal_list, terminals) + sizeof(uint16_t) * (1)), 127, 0x0002);
  if (tml == ((void *)0)) {
   printf("%s: no memory\n", __func__);
   free(it->inputs, 127, 0);
   it->inputs = ((void *)0);
   return ((void *)0);
  }
  it->inputs[0] = tml;
  tml->terminals[0] = ((it->d.it->wTerminalType)[0] | ((it->d.it->wTerminalType)[1] << 8));
  tml->size = 1;
  it->inputs_size = 1;
  return uaudio_merge_terminal_list(it);
 case 6:
  src_id = it->d.fu->bSourceId;
  it->inputs = malloc(sizeof(struct terminal_list *), 127, 0x0002);
  if (it->inputs == ((void *)0)) {
   printf("%s: no memory\n", __func__);
   return uaudio_io_terminaltype(outtype, iot, src_id);
  }
  it->inputs[0] = uaudio_io_terminaltype(outtype, iot, src_id);
  it->inputs_size = 1;
  return uaudio_merge_terminal_list(it);
 case 3:
  it->inputs = malloc(sizeof(struct terminal_list *), 127, 0x0002);
  if (it->inputs == ((void *)0)) {
   printf("%s: no memory\n", __func__);
   return ((void *)0);
  }
  src_id = it->d.ot->bSourceId;
  it->inputs[0] = uaudio_io_terminaltype(outtype, iot, src_id);
  it->inputs_size = 1;
  iot[src_id].direct = 1;
  return ((void *)0);
 case 4:
  it->inputs_size = 0;
  it->inputs = mallocarray(it->d.mu->bNrInPins,
      sizeof(struct terminal_list *), 127, 0x0002);
  if (it->inputs == ((void *)0)) {
   printf("%s: no memory\n", __func__);
   return ((void *)0);
  }
  for (i = 0; i < it->d.mu->bNrInPins; i++) {
   src_id = it->d.mu->baSourceId[i];
   it->inputs[i] = uaudio_io_terminaltype(outtype, iot,
              src_id);
   it->inputs_size++;
  }
  return uaudio_merge_terminal_list(it);
 case 5:
  it->inputs_size = 0;
  it->inputs = mallocarray(it->d.su->bNrInPins,
      sizeof(struct terminal_list *), 127, 0x0002);
  if (it->inputs == ((void *)0)) {
   printf("%s: no memory\n", __func__);
   return ((void *)0);
  }
  for (i = 0; i < it->d.su->bNrInPins; i++) {
   src_id = it->d.su->baSourceId[i];
   it->inputs[i] = uaudio_io_terminaltype(outtype, iot,
              src_id);
   it->inputs_size++;
  }
  return uaudio_merge_terminal_list(it);
 case 7:
  it->inputs_size = 0;
  it->inputs = mallocarray(it->d.pu->bNrInPins,
      sizeof(struct terminal_list *), 127, 0x0002);
  if (it->inputs == ((void *)0)) {
   printf("%s: no memory\n", __func__);
   return ((void *)0);
  }
  for (i = 0; i < it->d.pu->bNrInPins; i++) {
   src_id = it->d.pu->baSourceId[i];
   it->inputs[i] = uaudio_io_terminaltype(outtype, iot,
              src_id);
   it->inputs_size++;
  }
  return uaudio_merge_terminal_list(it);
 case 8:
  it->inputs_size = 0;
  it->inputs = mallocarray(it->d.eu->bNrInPins,
      sizeof(struct terminal_list *), 127, 0x0002);
  if (it->inputs == ((void *)0)) {
   printf("%s: no memory\n", __func__);
   return ((void *)0);
  }
  for (i = 0; i < it->d.eu->bNrInPins; i++) {
   src_id = it->d.eu->baSourceId[i];
   it->inputs[i] = uaudio_io_terminaltype(outtype, iot,
              src_id);
   it->inputs_size++;
  }
  return uaudio_merge_terminal_list(it);
 case 1:
 default:
  return ((void *)0);
 }
}
usbd_status
uaudio_identify(struct uaudio_softc *sc, const usb_config_descriptor_t *cdesc)
{
 usbd_status err;
 err = uaudio_identify_ac(sc, cdesc);
 if (err)
  return (err);
 return (uaudio_identify_as(sc, cdesc));
}
void
uaudio_add_alt(struct uaudio_softc *sc, const struct as_info *ai)
{
 struct as_info *nai;
 nai = mallocarray(sc->sc_nalts + 1, sizeof(*ai), 102, 0x0002);
 if (nai == ((void *)0)) {
  printf("%s: no memory\n", __func__);
  return;
 }
 if (sc->sc_nalts != 0) {
  __builtin_memcpy((nai), (sc->sc_alts), (sizeof(*ai) * (sc->sc_nalts)));
  free(sc->sc_alts, 102, sc->sc_nalts * sizeof(*ai));
 }
 sc->sc_alts = nai;
 ;
 sc->sc_alts[sc->sc_nalts++] = *ai;
}
usbd_status
uaudio_process_as(struct uaudio_softc *sc, const char *buf, int *offsp,
    int size, const usb_interface_descriptor_t *id)
{
 const struct usb_audio_streaming_interface_descriptor *asid;
 const struct usb_audio_streaming_type1_descriptor *asf1d;
 const struct usb_endpoint_descriptor_audio *ed;
 const struct usb_endpoint_descriptor_audio *sync_ed;
 const struct usb_audio_streaming_endpoint_descriptor *sed;
 int format, chan, prec, enc, bps;
 int dir, type, sync, sync_addr;
 struct as_info ai;
 const char *format_str;
 asid = (const void *)(buf + (*offsp));
 if (asid->bDescriptorType != 0x24 ||
     asid->bDescriptorSubtype != 1)
  return (USBD_INVAL);
 ;
 (*offsp) += asid->bLength;
 if ((*offsp) > size)
  return (USBD_INVAL);
 asf1d = (const void *)(buf + (*offsp));
 if (asf1d->bDescriptorType != 0x24 ||
     asf1d->bDescriptorSubtype != 2)
  return (USBD_INVAL);
 (*offsp) += asf1d->bLength;
 if ((*offsp) > size)
  return (USBD_INVAL);
 if (asf1d->bFormatType != 1) {
  printf("%s: ignored setting with type %d format\n",
         sc->sc_dev.dv_xname, ((asid->wFormatTag)[0] | ((asid->wFormatTag)[1] << 8)));
  return (USBD_NORMAL_COMPLETION);
 }
 ed = (const void *)(buf + (*offsp));
 if (ed->bDescriptorType != 0x05)
  return (USBD_INVAL);
 ;
 (*offsp) += ed->bLength;
 if ((*offsp) > size)
  return (USBD_INVAL);
 if (((ed->bmAttributes) & 0x03) != 0x01)
  return (USBD_INVAL);
 dir = ((ed->bEndpointAddress) & 0x80);
 type = ((ed->bmAttributes) & 0x0c);
 sync = 0;
 sync_addr = 0;
 if (id->bNumEndpoints > 1 &&
     ((dir == 0x80 && type == 0x08) ||
     (dir != 0x80 && type == 0x04)))
  sync = 1;
 if (ed->bLength >= 9) {
  if (ed->bSynchAddress == 0)
   sync = 0;
  else
   sync_addr = ed->bSynchAddress;
 }
 sed = (const void *)(buf + (*offsp));
 if (sed->bDescriptorType != 0x25 ||
     sed->bDescriptorSubtype != 1)
  return (USBD_INVAL);
 ;
 (*offsp) += sed->bLength;
 if ((*offsp) > size)
  return (USBD_INVAL);
 sync_ed = ((void *)0);
 if (sync == 1) {
  sync_ed = (const void*)(buf + (*offsp));
  if (sync_ed->bDescriptorType != 0x05) {
   printf("%s: sync ep descriptor wrong type\n",
       sc->sc_dev.dv_xname);
   return (USBD_NORMAL_COMPLETION);
  }
  ;
  (*offsp) += sync_ed->bLength;
  if ((*offsp) > size) {
   printf("%s: sync ep descriptor too large\n",
       sc->sc_dev.dv_xname);
   return (USBD_NORMAL_COMPLETION);
  }
  if (dir == ((sync_ed->bEndpointAddress) & 0x80)) {
   printf("%s: sync ep wrong direction\n",
          sc->sc_dev.dv_xname);
   return (USBD_NORMAL_COMPLETION);
  }
  if (((sync_ed->bmAttributes) & 0x03) != 0x01) {
   printf("%s: sync ep wrong xfer type\n",
          sc->sc_dev.dv_xname);
   return (USBD_NORMAL_COMPLETION);
  }
  if (sync_ed->bLength >=
      9 &&
      sync_ed->bSynchAddress != 0) {
   printf("%s: sync ep bSynchAddress != 0\n",
          sc->sc_dev.dv_xname);
   return (USBD_NORMAL_COMPLETION);
  }
  if (sync_addr &&
      ((sync_ed->bEndpointAddress) & 0x0f) !=
      ((sync_addr) & 0x0f)) {
   printf("%s: sync ep address mismatch\n",
          sc->sc_dev.dv_xname);
   return (USBD_NORMAL_COMPLETION);
  }
 }
 if (sync_ed != ((void *)0) && dir == 0x80) {
  printf("%s: sync pipe for recording not yet implemented\n",
      sc->sc_dev.dv_xname);
  return (USBD_NORMAL_COMPLETION);
 }
 format = ((asid->wFormatTag)[0] | ((asid->wFormatTag)[1] << 8));
 chan = asf1d->bNrChannels;
 prec = asf1d->bBitResolution;
 bps = asf1d->bSubFrameSize;
 if ((prec != 8 && prec != 16 && prec != 24) || (bps < 1 || bps > 4)) {
  printf("%s: ignored setting with precision %d bps %d\n",
         sc->sc_dev.dv_xname, prec, bps);
  return (USBD_NORMAL_COMPLETION);
 }
 switch (format) {
 case 1:
  if (prec == 8) {
   sc->sc_altflags |= 0x01;
  } else if (prec == 16) {
   sc->sc_altflags |= 0x02;
  } else if (prec == 24) {
   sc->sc_altflags |= 0x40;
  }
  enc = 6;
  format_str = "pcm";
  break;
 case 2:
  enc = 8;
  sc->sc_altflags |= 0x04;
  format_str = "pcm8";
  break;
 case 4:
  enc = 2;
  sc->sc_altflags |= 0x08;
  format_str = "alaw";
  break;
 case 5:
  enc = 1;
  sc->sc_altflags |= 0x10;
  format_str = "mulaw";
  break;
 case 3:
 default:
  printf("%s: ignored setting with format %d\n",
         sc->sc_dev.dv_xname, format);
  return (USBD_NORMAL_COMPLETION);
 }
 ai.alt = id->bAlternateSetting;
 ai.encoding = enc;
 ai.attributes = sed->bmAttributes;
 ai.idesc = id;
 ai.edesc = ed;
 ai.edesc1 = sync_ed;
 ai.asf1desc = asf1d;
 ai.sc_busy = 0;
 if (sc->sc_nalts < 32)
  uaudio_add_alt(sc, &ai);
 sc->sc_mode |= (dir == 0x00) ? 0x01 : 0x02;
 return (USBD_NORMAL_COMPLETION);
}
usbd_status
uaudio_identify_as(struct uaudio_softc *sc,
     const usb_config_descriptor_t *cdesc)
{
 const usb_interface_descriptor_t *id;
 const char *buf;
 int size, offs;
 size = ((cdesc->wTotalLength)[0] | ((cdesc->wTotalLength)[1] << 8));
 buf = (const char *)cdesc;
 offs = 0;
 id = uaudio_find_iface(buf, size, &offs, 2,
     sc->sc_quirks);
 if (id == ((void *)0))
  return (USBD_INVAL);
 while (offs <= size) {
  ;
  switch (id->bNumEndpoints) {
  case 0:
   ;
   sc->sc_nullalt = id->bAlternateSetting;
   break;
  case 1:
  case 2:
   uaudio_process_as(sc, buf, &offs, size, id);
   break;
  default:
   printf("%s: ignored audio interface with %d "
          "endpoints\n",
          sc->sc_dev.dv_xname, id->bNumEndpoints);
   break;
  }
  id = uaudio_find_iface(buf, size, &offs, 2,
      sc->sc_quirks);
  if (id == ((void *)0))
   break;
 }
 if (offs > size)
  return (USBD_INVAL);
 ;
 if (sc->sc_mode == 0) {
  printf("%s: no usable endpoint found\n",
         sc->sc_dev.dv_xname);
  return (USBD_INVAL);
 }
 return (USBD_NORMAL_COMPLETION);
}
usbd_status
uaudio_identify_ac(struct uaudio_softc *sc, const usb_config_descriptor_t *cdesc)
{
 struct io_terminal* iot;
 const usb_interface_descriptor_t *id;
 const struct usb_audio_control_descriptor *acdp;
 const usb_descriptor_t *dp;
 const struct usb_audio_output_terminal *pot;
 struct terminal_list *tml;
 const char *buf, *ibuf, *ibufend;
 int size, offs, aclen, ndps, i, j;
 size = ((cdesc->wTotalLength)[0] | ((cdesc->wTotalLength)[1] << 8));
 buf = (char *)cdesc;
 offs = 0;
 id = uaudio_find_iface(buf, size, &offs, 1,
     sc->sc_quirks);
 if (id == ((void *)0))
  return (USBD_INVAL);
 if (offs + sizeof *acdp > size)
  return (USBD_INVAL);
 sc->sc_ac_iface = id->bInterfaceNumber;
 ;
 ibuf = buf + offs;
 acdp = (const struct usb_audio_control_descriptor *)ibuf;
 if (acdp->bDescriptorType != 0x24 ||
     acdp->bDescriptorSubtype != 1)
  return (USBD_INVAL);
 aclen = ((acdp->wTotalLength)[0] | ((acdp->wTotalLength)[1] << 8));
 if (offs + aclen > size)
  return (USBD_INVAL);
 if (!(sc->sc_quirks & 0x0008) &&
      ((acdp->bcdADC)[0] | ((acdp->bcdADC)[1] << 8)) != 0x100)
  return (USBD_INVAL);
 sc->sc_audio_rev = ((acdp->bcdADC)[0] | ((acdp->bcdADC)[1] << 8));
 ;
 sc->sc_nullalt = -1;
 ibufend = ibuf + aclen;
 dp = (const usb_descriptor_t *)ibuf;
 ndps = 0;
 iot = mallocarray(256, sizeof(struct io_terminal),
     127, 0x0002 | 0x0008);
 if (iot == ((void *)0)) {
  printf("%s: no memory\n", __func__);
  return USBD_NOMEM;
 }
 for (;;) {
  ibuf += dp->bLength;
  if (ibuf >= ibufend)
   break;
  dp = (const usb_descriptor_t *)ibuf;
  if (ibuf + dp->bLength > ibufend) {
   free(iot, 127, 0);
   return (USBD_INVAL);
  }
  if (dp->bDescriptorType != 0x24) {
   printf("%s: skip desc type=0x%02x\n",
          __func__, dp->bDescriptorType);
   continue;
  }
  i = ((const struct usb_audio_input_terminal *)dp)->bTerminalId;
  iot[i].d.desc = dp;
  if (i > ndps)
   ndps = i;
 }
 ndps++;
 for (i = 0; i < ndps; i++) {
  dp = iot[i].d.desc;
  if (dp == ((void *)0))
   continue;
  if (dp->bDescriptorSubtype != 3)
   continue;
  pot = iot[i].d.ot;
  tml = uaudio_io_terminaltype(((pot->wTerminalType)[0] | ((pot->wTerminalType)[1] << 8)), iot, i);
  if (tml != ((void *)0))
   free(tml, 127, 0);
 }
 for (i = 0; i < ndps; i++) {
  dp = iot[i].d.desc;
  if (dp == ((void *)0))
   continue;
  ;
  switch (dp->bDescriptorSubtype) {
  case 1:
   printf("%s: unexpected AC header\n", __func__);
   break;
  case 2:
   uaudio_add_input(sc, iot, i);
   break;
  case 3:
   uaudio_add_output(sc, iot, i);
   break;
  case 4:
   uaudio_add_mixer(sc, iot, i);
   break;
  case 5:
   uaudio_add_selector(sc, iot, i);
   break;
  case 6:
   uaudio_add_feature(sc, iot, i);
   break;
  case 7:
   uaudio_add_processing(sc, iot, i);
   break;
  case 8:
   uaudio_add_extension(sc, iot, i);
   break;
  default:
   printf("%s: bad AC desc subtype=0x%02x\n",
          __func__, dp->bDescriptorSubtype);
   break;
  }
 }
 for (i = 0; i < 256; i++) {
  if (iot[i].d.desc == ((void *)0))
   continue;
  if (iot[i].inputs != ((void *)0)) {
   for (j = 0; j < iot[i].inputs_size; j++) {
    if (iot[i].inputs[j] != ((void *)0))
     free(iot[i].inputs[j], 127, 0);
   }
   free(iot[i].inputs, 127, 0);
  }
  if (iot[i].output != ((void *)0))
   free(iot[i].output, 127, 0);
  iot[i].d.desc = ((void *)0);
 }
 free(iot, 127, 256 * sizeof(struct io_terminal));
 return (USBD_NORMAL_COMPLETION);
}
int
uaudio_query_devinfo(void *addr, mixer_devinfo_t *mi)
{
 struct uaudio_softc *sc = addr;
 struct mixerctl *mc;
 int n, nctls, i;
 ;
 if (usbd_is_dying(sc->sc_udev))
  return (5);
 n = mi->index;
 nctls = sc->sc_nctls;
 switch (n) {
 case 0:
  mi->type = 0;
  mi->mixer_class = 0;
  mi->next = mi->prev = -1;
  strlcpy(mi->label.name, "outputs", sizeof(mi->label.name));
  return (0);
 case 1:
  mi->type = 0;
  mi->mixer_class = 1;
  mi->next = mi->prev = -1;
  strlcpy(mi->label.name, "inputs", sizeof(mi->label.name));
  return (0);
 case 2:
  mi->type = 0;
  mi->mixer_class = 2;
  mi->next = mi->prev = -1;
  strlcpy(mi->label.name, "equalization",
      sizeof(mi->label.name));
  return (0);
 case 3:
  mi->type = 0;
  mi->mixer_class = 3;
  mi->next = mi->prev = -1;
  strlcpy(mi->label.name, "record", sizeof(mi->label.name));
  return 0;
 default:
  break;
 }
 n -= 4;
 if (n < 0 || n >= nctls)
  return (6);
 mc = &sc->sc_ctls[n];
 strlcpy(mi->label.name, mc->ctlname, sizeof(mi->label.name));
 mi->mixer_class = mc->class;
 mi->next = mi->prev = -1;
 switch (mc->type) {
 case 1:
  mi->type = 1;
  mi->un.e.num_mem = 2;
  strlcpy(mi->un.e.member[0].label.name, "off",
      sizeof(mi->un.e.member[0].label.name));
  mi->un.e.member[0].ord = 0;
  strlcpy(mi->un.e.member[1].label.name, "on",
      sizeof(mi->un.e.member[1].label.name));
  mi->un.e.member[1].ord = 1;
  break;
 case 5:
  mi->type = 1;
  mi->un.e.num_mem = mc->maxval - mc->minval + 1;
  for (i = 0; i <= mc->maxval - mc->minval; i++) {
   snprintf(mi->un.e.member[i].label.name,
     sizeof(mi->un.e.member[i].label.name),
     "%d", i + mc->minval);
   mi->un.e.member[i].ord = i + mc->minval;
  }
  break;
 default:
  mi->type = 3;
  strlcpy(mi->un.v.units.name, mc->ctlunit,
      sizeof(mi->un.v.units.name));
  mi->un.v.num_channels = mc->nchan;
  mi->un.v.delta = mc->delta;
  break;
 }
 return (0);
}
int
uaudio_open(void *addr, int flags)
{
 struct uaudio_softc *sc = addr;
 ;
 if (usbd_is_dying(sc->sc_udev))
  return (5);
 if ((flags & 0x0002) && !(sc->sc_mode & 0x01))
  return (6);
 if ((flags & 0x0001) && !(sc->sc_mode & 0x02))
  return (6);
 return (0);
}
void
uaudio_close(void *addr)
{
 struct uaudio_softc *sc = addr;
 if (sc->sc_playchan.altidx != -1)
  uaudio_chan_close(sc, &sc->sc_playchan);
 if (sc->sc_recchan.altidx != -1)
  uaudio_chan_close(sc, &sc->sc_recchan);
}
int
uaudio_halt_out_dma(void *addr)
{
 struct uaudio_softc *sc = addr;
 ;
 if (sc->sc_playchan.pipe != ((void *)0)) {
  uaudio_chan_close(sc, &sc->sc_playchan);
  sc->sc_playchan.pipe = ((void *)0);
  if (sc->sc_playchan.sync_pipe != ((void *)0))
   sc->sc_playchan.sync_pipe = ((void *)0);
  uaudio_chan_free_buffers(sc, &sc->sc_playchan);
  sc->sc_playchan.intr = ((void *)0);
 }
 return (0);
}
int
uaudio_halt_in_dma(void *addr)
{
 struct uaudio_softc *sc = addr;
 ;
 if (sc->sc_recchan.pipe != ((void *)0)) {
  uaudio_chan_close(sc, &sc->sc_recchan);
  sc->sc_recchan.pipe = ((void *)0);
  if (sc->sc_recchan.sync_pipe != ((void *)0))
   sc->sc_recchan.sync_pipe = ((void *)0);
  uaudio_chan_free_buffers(sc, &sc->sc_recchan);
  sc->sc_recchan.intr = ((void *)0);
 }
 return (0);
}
int
uaudio_round_blocksize(void *addr, int blk)
{
 struct uaudio_softc *sc = addr;
 int bpf, pbpf, rbpf;
 ;
 pbpf = rbpf = 0;
 if (sc->sc_mode & 0x01) {
  pbpf = (sc->sc_playchan.max_bytes_per_frame) *
      sc->sc_playchan.nframes;
 }
 if (sc->sc_mode & 0x02) {
  rbpf = (sc->sc_recchan.max_bytes_per_frame) *
      sc->sc_recchan.nframes;
 }
 bpf = max(pbpf, rbpf);
 if (blk < bpf)
  blk = bpf;
 if (blk <= 0) {
  printf("%s: blk=%d\n", __func__, blk);
  blk = 512;
 }
 ;
 return (blk);
}
int
uaudio_get_props(void *addr)
{
 struct uaudio_softc *sc = addr;
 int props = 0;
 if (!(sc->sc_quirks & 0x0020))
  props |= 0x04;
 if ((sc->sc_mode & (0x01 | 0x02)) ==
     (0x01 | 0x02))
  props |= 0x01;
 return props;
}
int
uaudio_get(struct uaudio_softc *sc, int which, int type, int wValue,
    int wIndex, int len)
{
 usb_device_request_t req;
 u_int8_t data[4];
 usbd_status err;
 int val;
 if (wValue == -1)
  return (0);
 req.bmRequestType = type;
 req.bRequest = which;
 ((req.wValue)[0] = (u_int8_t)(wValue), (req.wValue)[1] = (u_int8_t)((wValue) >> 8));
 ((req.wIndex)[0] = (u_int8_t)(wIndex), (req.wIndex)[1] = (u_int8_t)((wIndex) >> 8));
 ((req.wLength)[0] = (u_int8_t)(len), (req.wLength)[1] = (u_int8_t)((len) >> 8));
 ;
 err = usbd_do_request(sc->sc_udev, &req, data);
 if (err) {
  ;
  return (-1);
 }
 switch (len) {
 case 1:
  val = data[0];
  break;
 case 2:
  val = data[0] | (data[1] << 8);
  break;
 default:
  ;
  return (-1);
 }
 ;
 return (val);
}
void
uaudio_set(struct uaudio_softc *sc, int which, int type, int wValue,
    int wIndex, int len, int val)
{
 usb_device_request_t req;
 u_int8_t data[4];
 usbd_status err;
 if (wValue == -1)
  return;
 req.bmRequestType = type;
 req.bRequest = which;
 ((req.wValue)[0] = (u_int8_t)(wValue), (req.wValue)[1] = (u_int8_t)((wValue) >> 8));
 ((req.wIndex)[0] = (u_int8_t)(wIndex), (req.wIndex)[1] = (u_int8_t)((wIndex) >> 8));
 ((req.wLength)[0] = (u_int8_t)(len), (req.wLength)[1] = (u_int8_t)((len) >> 8));
 switch (len) {
 case 1:
  data[0] = val;
  break;
 case 2:
  data[0] = val;
  data[1] = val >> 8;
  break;
 default:
  return;
 }
 ;
 err = usbd_do_request(sc->sc_udev, &req, data);
}
int
uaudio_signext(int type, int val)
{
 if (!((type) == 3)) {
  if (((type) == 2 || (type) == 3 ? 2 : 1) == 2)
   val = (int16_t)val;
  else
   val = (int8_t)val;
 }
 return (val);
}
int
uaudio_unsignext(int type, int val)
{
 if (!((type) == 3)) {
  if (((type) == 2 || (type) == 3 ? 2 : 1) == 2)
   val = (u_int16_t)val;
  else
   val = (u_int8_t)val;
 }
 return (val);
}
int
uaudio_value2bsd(struct mixerctl *mc, int val)
{
 int range;
 ;
 if (mc->type == 1) {
  val = (val != 0);
 } else if (mc->type == 5) {
  if (val < mc->minval || val > mc->maxval)
   val = mc->minval;
 } else {
  range = mc->maxval - mc->minval;
  if (range == 0)
   val = 0;
  else
   val = 255 * (uaudio_signext(mc->type, val) -
       mc->minval) / range;
 }
 ;
 return (val);
}
int
uaudio_bsd2value(struct mixerctl *mc, int val)
{
 ;
 if (mc->type == 1) {
  val = (val != 0);
 } else if (mc->type == 5) {
  if (val < mc->minval || val > mc->maxval)
   val = mc->minval;
 } else
  val = uaudio_unsignext(mc->type,
      val * (mc->maxval - mc->minval) / 255 + mc->minval);
 ;
 return (val);
}
int
uaudio_ctl_get(struct uaudio_softc *sc, int which, struct mixerctl *mc,
        int chan)
{
 int val;
 ;
 val = uaudio_get(sc, which, (0x80 | 0x20 | 0x01), mc->wValue[chan],
    mc->wIndex, ((mc->type) == 2 || (mc->type) == 3 ? 2 : 1));
 return (uaudio_value2bsd(mc, val));
}
void
uaudio_ctl_set(struct uaudio_softc *sc, int which, struct mixerctl *mc,
        int chan, int val)
{
 val = uaudio_bsd2value(mc, val);
 uaudio_set(sc, which, (0x00 | 0x20 | 0x01), mc->wValue[chan],
     mc->wIndex, ((mc->type) == 2 || (mc->type) == 3 ? 2 : 1), val);
}
int
uaudio_mixer_get_port(void *addr, mixer_ctrl_t *cp)
{
 struct uaudio_softc *sc = addr;
 struct mixerctl *mc;
 int i, n, vals[8], val;
 ;
 if (usbd_is_dying(sc->sc_udev))
  return (5);
 n = cp->dev - 4;
 if (n < 0 || n >= sc->sc_nctls)
  return (6);
 mc = &sc->sc_ctls[n];
 if (mc->type == 1) {
  if (cp->type != 1)
   return (22);
  cp->un.ord = uaudio_ctl_get(sc, 0x81, mc, 0);
 } else if (mc->type == 5) {
  if (cp->type != 1)
   return (22);
  cp->un.ord = uaudio_ctl_get(sc, 0x81, mc, 0);
 } else {
  if (cp->type != 3)
   return (22);
  if (cp->un.value.num_channels != 1 &&
      cp->un.value.num_channels != mc->nchan)
   return (22);
  for (i = 0; i < mc->nchan; i++)
   vals[i] = uaudio_ctl_get(sc, 0x81, mc, i);
  if (cp->un.value.num_channels == 1 && mc->nchan != 1) {
   for (val = 0, i = 0; i < mc->nchan; i++)
    val += vals[i];
   vals[0] = val / mc->nchan;
  }
  for (i = 0; i < cp->un.value.num_channels; i++)
   cp->un.value.level[i] = vals[i];
 }
 return (0);
}
int
uaudio_mixer_set_port(void *addr, mixer_ctrl_t *cp)
{
 struct uaudio_softc *sc = addr;
 struct mixerctl *mc;
 int i, n, vals[8];
 ;
 if (usbd_is_dying(sc->sc_udev))
  return (5);
 n = cp->dev - 4;
 if (n < 0 || n >= sc->sc_nctls)
  return (6);
 mc = &sc->sc_ctls[n];
 if (mc->type == 1) {
  if (cp->type != 1)
   return (22);
  uaudio_ctl_set(sc, 0x01, mc, 0, cp->un.ord);
 } else if (mc->type == 5) {
  if (cp->type != 1)
   return (22);
  uaudio_ctl_set(sc, 0x01, mc, 0, cp->un.ord);
 } else {
  if (cp->type != 3)
   return (22);
  if (cp->un.value.num_channels == 1)
   for (i = 0; i < mc->nchan; i++)
    vals[i] = cp->un.value.level[0];
  else if (cp->un.value.num_channels == mc->nchan)
   for (i = 0; i < mc->nchan; i++)
    vals[i] = cp->un.value.level[i];
  else
   return (22);
  for (i = 0; i < mc->nchan; i++)
   uaudio_ctl_set(sc, 0x01, mc, i, vals[i]);
 }
 return (0);
}
int
uaudio_trigger_input(void *addr, void *start, void *end, int blksize,
       void (*intr)(void *), void *arg,
       struct audio_params *param)
{
 struct uaudio_softc *sc = addr;
 struct chan *ch = &sc->sc_recchan;
 usbd_status err;
 int i, s;
 if (usbd_is_dying(sc->sc_udev))
  return (5);
 ;
 uaudio_chan_set_param(ch, start, end, blksize);
 ;
 err = uaudio_chan_alloc_buffers(sc, ch);
 if (err)
  return (5);
 err = uaudio_chan_open(sc, ch);
 if (err) {
  uaudio_chan_free_buffers(sc, ch);
  return (5);
 }
 ch->intr = intr;
 ch->arg = arg;
 s = splraise(2);
 for (i = 0; i < 3; i++)
  uaudio_chan_rtransfer(ch);
 _splx(s);
 return (0);
}
int
uaudio_trigger_output(void *addr, void *start, void *end, int blksize,
        void (*intr)(void *), void *arg,
        struct audio_params *param)
{
 struct uaudio_softc *sc = addr;
 struct chan *ch = &sc->sc_playchan;
 usbd_status err;
 int i, s;
 if (usbd_is_dying(sc->sc_udev))
  return (5);
 ;
 uaudio_chan_set_param(ch, start, end, blksize);
 ;
 err = uaudio_chan_alloc_buffers(sc, ch);
 if (err)
  return (5);
 err = uaudio_chan_open(sc, ch);
 if (err) {
  uaudio_chan_free_buffers(sc, ch);
  return (5);
 }
 ch->intr = intr;
 ch->arg = arg;
 s = splraise(2);
 for (i = 0; i < 3; i++)
  uaudio_chan_ptransfer(ch);
 if (ch->sync_pipe) {
  for (i = 0; i < 3; i++)
   uaudio_chan_psync_transfer(ch);
 }
 _splx(s);
 return (0);
}
usbd_status
uaudio_chan_open(struct uaudio_softc *sc, struct chan *ch)
{
 struct as_info *as = &sc->sc_alts[ch->altidx];
 int endpt = as->edesc->bEndpointAddress;
 usbd_status err;
 ;
 err = usbd_set_interface(as->ifaceh, as->alt);
 if (err) {
  ;
  return (err);
 }
 if (as->asf1desc->bSamFreqType != 1) {
  err = uaudio_set_speed(sc, endpt, ch->sample_rate);
  if (err)
   ;
 }
 if (sc->sc_quirks & 0x0040)
  uaudio_set_speed_emu0202(ch);
 ch->pipe = 0;
 ch->sync_pipe = 0;
 ;
 err = usbd_open_pipe(as->ifaceh, endpt, 0, &ch->pipe);
 if (err) {
  printf("%s: error creating pipe: err=%s endpt=0x%02x\n",
      __func__, usbd_errstr(err), endpt);
  return err;
 }
 if (as->edesc1 != ((void *)0)) {
  endpt = as->edesc1->bEndpointAddress;
  ;
  err = usbd_open_pipe(as->ifaceh, endpt, 0, &ch->sync_pipe);
  if (err) {
   printf("%s: error creating sync-pipe: err=%s endpt=0x%02x\n",
       __func__, usbd_errstr(err), endpt);
  }
 }
 return err;
}
void
uaudio_chan_close(struct uaudio_softc *sc, struct chan *ch)
{
 struct as_info *as = &sc->sc_alts[ch->altidx];
 as->sc_busy = 0;
 if (sc->sc_nullalt >= 0) {
  ;
  usbd_set_interface(as->ifaceh, sc->sc_nullalt);
 }
 if (ch->pipe) {
  usbd_abort_pipe(ch->pipe);
  usbd_close_pipe(ch->pipe);
 }
 if (ch->sync_pipe) {
  usbd_abort_pipe(ch->sync_pipe);
  usbd_close_pipe(ch->sync_pipe);
 }
}
usbd_status
uaudio_chan_alloc_buffers(struct uaudio_softc *sc, struct chan *ch)
{
 struct as_info *as = &sc->sc_alts[ch->altidx];
 struct usbd_xfer *xfer;
 void *buf;
 int i, size;
 ;
 size = ch->max_bytes_per_frame * ch->nframes;
 for (i = 0; i < 3; i++) {
  xfer = usbd_alloc_xfer(sc->sc_udev);
  if (xfer == 0)
   goto bad;
  ch->chanbufs[i].xfer = xfer;
  buf = usbd_alloc_buffer(xfer, size);
  if (buf == 0) {
   i++;
   goto bad;
  }
  ch->chanbufs[i].buffer = buf;
  ch->chanbufs[i].chan = ch;
 }
 if (as->edesc1 != ((void *)0)) {
  size = (ch->hi_speed ? 4 : 3) * ch->nsync_frames;
  for (i = 0; i < 3; i++) {
   xfer = usbd_alloc_xfer(sc->sc_udev);
   if (xfer == 0)
    goto bad_sync;
   ch->syncbufs[i].xfer = xfer;
   buf = usbd_alloc_buffer(xfer, size);
   if (buf == 0) {
    i++;
    goto bad_sync;
   }
   ch->syncbufs[i].buffer = buf;
   ch->syncbufs[i].chan = ch;
  }
 }
 return (USBD_NORMAL_COMPLETION);
bad:
 while (--i >= 0)
  usbd_free_xfer(ch->chanbufs[i].xfer);
 return (USBD_NOMEM);
bad_sync:
 while (--i >= 0)
  usbd_free_xfer(ch->syncbufs[i].xfer);
 return (USBD_NOMEM);
}
void
uaudio_chan_free_buffers(struct uaudio_softc *sc, struct chan *ch)
{
 struct as_info *as = &sc->sc_alts[ch->altidx];
 int i;
 for (i = 0; i < 3; i++)
  usbd_free_xfer(ch->chanbufs[i].xfer);
 if (as->edesc1 != ((void *)0)) {
  for (i = 0; i < 3; i++)
   usbd_free_xfer(ch->syncbufs[i].xfer);
 }
}
void
uaudio_chan_ptransfer(struct chan *ch)
{
 struct chanbuf *cb;
 u_char *pos;
 int i, n, size, residue, total;
 if (usbd_is_dying(ch->sc->sc_udev))
  return;
 cb = &ch->chanbufs[ch->curchanbuf];
 if (++ch->curchanbuf >= 3)
  ch->curchanbuf = 0;
 residue = ch->residue;
 total = 0;
 for (i = 0; i < ch->nframes; i++) {
  size = ch->bytes_per_frame;
  residue += ch->fraction;
  if (residue >= ch->frac_denom) {
   if ((ch->sc->sc_altflags & 0x20) == 0)
    size += ch->sample_size;
   residue -= ch->frac_denom;
  }
  cb->sizes[i] = size;
  total += size;
 }
 ch->residue = residue;
 cb->size = total;
 pos = cb->buffer;
 while (total > 0) {
  n = min(total, ch->end - ch->cur);
  n = min(n, ch->blksize - ch->transferred);
  __builtin_memcpy((pos), (ch->cur), (n));
  total -= n;
  pos += n;
  ch->cur += n;
  if (ch->cur >= ch->end)
   ch->cur = ch->start;
  ch->transferred += n;
  if (ch->transferred >= ch->blksize) {
   ;
   __mtx_enter(&audio_lock );
   ch->intr(ch->arg);
   __mtx_leave(&audio_lock );
   ch->transferred -= ch->blksize;
  }
 }
 ;
 usbd_setup_isoc_xfer(cb->xfer, ch->pipe, cb, cb->sizes, ch->nframes,
     0x01 | 0x04, uaudio_chan_pintr);
 (void)usbd_transfer(cb->xfer);
}
void
uaudio_chan_pintr(struct usbd_xfer *xfer, void *priv,
    usbd_status status)
{
 struct chanbuf *cb = priv;
 struct chan *ch = cb->chan;
 u_int32_t count;
 if (status == USBD_CANCELLED)
  return;
 usbd_get_xfer_status(xfer, ((void *)0), ((void *)0), &count, ((void *)0));
 ;
 uaudio_chan_ptransfer(ch);
}
void
uaudio_chan_psync_transfer(struct chan *ch)
{
 struct syncbuf *sb;
 int i, size, total = 0;
 if (usbd_is_dying(ch->sc->sc_udev))
  return;
 sb = &ch->syncbufs[ch->cursyncbuf];
 if (++ch->cursyncbuf >= 3)
  ch->cursyncbuf = 0;
 size = ch->hi_speed ? 4 : 3;
 for (i = 0; i < ch->nsync_frames; i++) {
  sb->sizes[i] = size;
  sb->offsets[i] = total;
  total += size;
 }
 sb->size = total;
 ;
 usbd_setup_isoc_xfer(sb->xfer, ch->sync_pipe, sb, sb->sizes,
     ch->nsync_frames, 0x01 | 0x04,
     uaudio_chan_psync_intr);
 (void)usbd_transfer(sb->xfer);
}
void
uaudio_chan_psync_intr(struct usbd_xfer *xfer, void *priv,
    usbd_status status)
{
 struct syncbuf *sb = priv;
 struct chan *ch = sb->chan;
 u_int32_t count, tmp;
 u_int32_t freq, freq_w, freq_f;
 int i, pos, size;
 if (status == USBD_CANCELLED)
  return;
 usbd_get_xfer_status(xfer, ((void *)0), ((void *)0), &count, ((void *)0));
 ;
 size = ch->hi_speed ? 4 : 3;
 for (i = 0; count > 0 && i < ch->nsync_frames; i++) {
  if (sb->sizes[i] != size)
   continue;
  count -= size;
  pos = sb->offsets[i];
  if (ch->hi_speed) {
   freq = sb->buffer[pos+3] << 24 |
       sb->buffer[pos+2] << 16 |
       sb->buffer[pos+1] << 8 |
       sb->buffer[pos];
  } else {
   freq = sb->buffer[pos+2] << 18 |
       sb->buffer[pos+1] << 10 |
       sb->buffer[pos] << 2;
  }
  freq_w = (freq >> 16) & (ch->hi_speed ? 0x0fff : 0x03ff);
  freq_f = freq & 0xffff;
  ;
  tmp = freq_w * ch->sample_size;
  if (tmp + (freq_f ? ch->sample_size : 0) >
      ch->max_bytes_per_frame) {
   ;
  } else {
   ch->bytes_per_frame = tmp;
   ch->fraction = freq_f;
  }
 }
 uaudio_chan_psync_transfer(ch);
}
void
uaudio_chan_rtransfer(struct chan *ch)
{
 struct chanbuf *cb;
 int i, size, total;
 if (usbd_is_dying(ch->sc->sc_udev))
  return;
 cb = &ch->chanbufs[ch->curchanbuf];
 if (++ch->curchanbuf >= 3)
  ch->curchanbuf = 0;
 total = 0;
 for (i = 0; i < ch->nframes; i++) {
  size = ch->bytes_per_frame;
  cb->sizes[i] = size;
  cb->offsets[i] = total;
  total += size;
 }
 cb->size = total;
 ;
 usbd_setup_isoc_xfer(cb->xfer, ch->pipe, cb, cb->sizes, ch->nframes,
     0x01 | 0x04, uaudio_chan_rintr);
 (void)usbd_transfer(cb->xfer);
}
void
uaudio_chan_rintr(struct usbd_xfer *xfer, void *priv,
    usbd_status status)
{
 struct chanbuf *cb = priv;
 struct chan *ch = cb->chan;
 u_int16_t pos;
 u_int32_t count;
 int i, n, frsize;
 if (status == USBD_CANCELLED)
  return;
 usbd_get_xfer_status(xfer, ((void *)0), ((void *)0), &count, ((void *)0));
 ;
 if (count > cb->size) {
  printf("%s: count(%d) > size(%d)\n",
         __func__, count, cb->size);
 }
 for (i = 0; i < ch->nframes; i++) {
  frsize = cb->sizes[i];
  pos = cb->offsets[i];
  while (frsize > 0) {
   n = min(frsize, ch->end - ch->cur);
   n = min(n, ch->blksize - ch->transferred);
   __builtin_memcpy((ch->cur), (cb->buffer + pos), (n));
   frsize -= n;
   pos += n;
   ch->cur += n;
   if (ch->cur >= ch->end)
    ch->cur = ch->start;
   ch->transferred += n;
   if (ch->transferred >= ch->blksize) {
    ;
    __mtx_enter(&audio_lock );
    ch->intr(ch->arg);
    __mtx_leave(&audio_lock );
    ch->transferred -= ch->blksize;
   }
   if (count < n)
    printf("%s: count < n\n", __func__);
   else
    count -= n;
  }
 }
 if (count != 0) {
  printf("%s: transfer count - frame total = %d\n",
      __func__, count);
 }
 uaudio_chan_rtransfer(ch);
}
void
uaudio_chan_init(struct chan *ch, int mode, int altidx,
    const struct audio_params *param)
{
 struct as_info *ai = &ch->sc->sc_alts[altidx];
 int samples_per_frame, ival, use_maxpkt = 0;
 if (ai->attributes & 0x80) {
  ;
  use_maxpkt = 1;
 }
 else if (mode == 0x02) {
  ;
  use_maxpkt = 1;
 }
 ch->altidx = altidx;
 ch->maxpktsize = ((ai->edesc->wMaxPacketSize)[0] | ((ai->edesc->wMaxPacketSize)[1] << 8));
 ch->sample_rate = param->sample_rate;
 ch->sample_size = param->channels * param->bps;
 ch->usb_fps = 1000;
 ch->hi_speed = ch->sc->sc_udev->speed == 3;
 if (ch->hi_speed) {
  ch->usb_fps *= 8;
  ival = ch->sc->sc_alts[altidx].edesc->bInterval;
  if (ival > 0 && ival <= 4)
   ch->usb_fps >>= (ival - 1);
  ;
 }
 samples_per_frame = ch->sample_rate / ch->usb_fps;
 if (!use_maxpkt) {
  ch->fraction = ch->sample_rate % ch->usb_fps;
  if (samples_per_frame * ch->sample_size > ch->maxpktsize) {
   ;
   samples_per_frame = ch->maxpktsize / ch->sample_size;
  }
  ch->bytes_per_frame = samples_per_frame * ch->sample_size;
  ch->nframes = 2;
 } else {
  ch->fraction = 0;
  ch->bytes_per_frame = ch->maxpktsize;
  ch->nframes = 2 * samples_per_frame *
      ch->sample_size / ch->maxpktsize;
 }
 if (ch->nframes > 16)
  ch->nframes = 16;
 else if (ch->nframes < 1)
  ch->nframes = 1;
 ch->max_bytes_per_frame = ch->bytes_per_frame;
 if (!use_maxpkt)
  ch->max_bytes_per_frame += ch->sample_size;
 if (ch->max_bytes_per_frame > ch->maxpktsize)
  ch->max_bytes_per_frame = ch->maxpktsize;
 ch->residue = 0;
 ch->frac_denom = ch->usb_fps;
 if (ai->edesc1 != ((void *)0)) {
  ch->frac_denom = 1 << 16;
  ch->fraction = (ch->fraction * ch->frac_denom) / ch->usb_fps;
  ch->nsync_frames = 16;
 }
 ;
}
void
uaudio_chan_set_param(struct chan *ch, u_char *start, u_char *end, int blksize)
{
 ch->start = start;
 ch->end = end;
 ch->cur = start;
 ch->transferred = 0;
 ch->curchanbuf = 0;
 ch->blksize = blksize;
 ch->nframes = ch->blksize * ch->usb_fps /
     (ch->bytes_per_frame * ch->usb_fps +
     ch->sample_size * ch->fraction);
 if (ch->nframes > 16)
  ch->nframes = 16;
 else if (ch->nframes < 1)
  ch->nframes = 1;
 ch->reqms = ch->bytes_per_frame / ch->sample_size *
     ch->nframes * 1000 / ch->sample_rate;
 ;
}
int
uaudio_match_alt_rate(void *addr, int alt, int rate)
{
 struct uaudio_softc *sc = addr;
 const struct usb_audio_streaming_type1_descriptor *a1d;
 int i, j, r;
 a1d = sc->sc_alts[alt].asf1desc;
 if (a1d->bSamFreqType == 0) {
  if ((((a1d)->tSamFreq[(0)*3+0] | ((a1d)->tSamFreq[(0)*3+1] << 8) | ((a1d)->tSamFreq[(0)*3+2] << 16)) <= rate) &&
      (((a1d)->tSamFreq[(1)*3+0] | ((a1d)->tSamFreq[(1)*3+1] << 8) | ((a1d)->tSamFreq[(1)*3+2] << 16)) >= rate)) {
   return rate;
  } else {
   if (((a1d)->tSamFreq[(0)*3+0] | ((a1d)->tSamFreq[(0)*3+1] << 8) | ((a1d)->tSamFreq[(0)*3+2] << 16)) > rate)
    return ((a1d)->tSamFreq[(0)*3+0] | ((a1d)->tSamFreq[(0)*3+1] << 8) | ((a1d)->tSamFreq[(0)*3+2] << 16));
   else
    return ((a1d)->tSamFreq[(1)*3+0] | ((a1d)->tSamFreq[(1)*3+1] << 8) | ((a1d)->tSamFreq[(1)*3+2] << 16));
  }
 } else {
  for (i = 0; i < 100; i++) {
   for (j = 0; j < a1d->bSamFreqType; j++) {
    r = ((a1d)->tSamFreq[(j)*3+0] | ((a1d)->tSamFreq[(j)*3+1] << 8) | ((a1d)->tSamFreq[(j)*3+2] << 16));
    if ((r - (500 * i) <= rate) &&
        (r + (500 * i) >= rate))
     return r;
   }
  }
  if (rate < ((a1d)->tSamFreq[(0)*3+0] | ((a1d)->tSamFreq[(0)*3+1] << 8) | ((a1d)->tSamFreq[(0)*3+2] << 16)))
   j = 0;
  else
   j = a1d->bSamFreqType - 1;
  return ((a1d)->tSamFreq[(j)*3+0] | ((a1d)->tSamFreq[(j)*3+1] << 8) | ((a1d)->tSamFreq[(j)*3+2] << 16));
 }
 ;
 return rate;
}
int
uaudio_match_alt(void *addr, struct audio_params *p, int mode)
{
 struct uaudio_softc *sc = addr;
 const struct usb_audio_streaming_type1_descriptor *a1d;
 int i, j, dir, rate;
 int alts_eh, alts_ch, ualt;
 ;
 alts_eh = 0;
 for (i = 0; i < sc->sc_nalts; i++) {
  dir = ((sc->sc_alts[i].edesc->bEndpointAddress) & 0x80);
  if ((mode == 0x02 && dir != 0x80) ||
      (mode == 0x01 && dir == 0x80))
   continue;
  ;
  if (sc->sc_alts[i].encoding != p->encoding)
   continue;
  a1d = sc->sc_alts[i].asf1desc;
  if (a1d->bBitResolution != p->precision)
   continue;
  alts_eh |= 1 << i;
  ;
 }
 if (alts_eh == 0) {
  ;
  return -1;
 }
 alts_ch = 0;
 for (i = 0; i < 3; i++) {
  for (j = 0; j < sc->sc_nalts; j++) {
   if (!(alts_eh & (1 << j)))
    continue;
   a1d = sc->sc_alts[j].asf1desc;
   if (a1d->bNrChannels == p->channels) {
    alts_ch |= 1 << j;
    ;
   }
  }
  if (alts_ch)
   break;
  if (p->channels == 2)
   p->channels = 1;
  else
   p->channels = 2;
 }
 if (!alts_ch) {
  for (i = 0; i < sc->sc_nalts; i++)
   if (alts_eh & (1 << i))
    break;
  alts_ch = 1 << i;
  a1d = sc->sc_alts[i].asf1desc;
  p->channels = a1d->bNrChannels;
 }
 ualt = -1;
 for (i = 0; i < sc->sc_nalts; i++) {
  if (alts_ch & (1 << i)) {
   rate = uaudio_match_alt_rate(sc, i, p->sample_rate);
   if (rate - 50 <= p->sample_rate &&
       rate + 50 >= p->sample_rate) {
    ;
    p->sample_rate = rate;
    break;
   }
  }
 }
 if (i < sc->sc_nalts) {
  ualt = i;
 } else {
  for (i = 0; i < sc->sc_nalts; i++) {
   if (alts_ch & (1 << i)) {
    ualt = i;
    p->sample_rate = uaudio_match_alt_rate(sc,
        i, p->sample_rate);
    break;
   }
  }
 }
 return ualt;
}
int
uaudio_set_params(void *addr, int setmode, int usemode,
    struct audio_params *play, struct audio_params *rec)
{
 struct uaudio_softc *sc = addr;
 int flags = sc->sc_altflags;
 int i;
 int paltidx = -1, raltidx = -1;
 struct audio_params *p;
 int mode;
 if (usbd_is_dying(sc->sc_udev))
  return (5);
 if (((usemode & 0x01) && sc->sc_playchan.pipe != ((void *)0)) ||
     ((usemode & 0x02) && sc->sc_recchan.pipe != ((void *)0)))
  return (16);
 if ((usemode & 0x01) && sc->sc_playchan.altidx != -1)
  sc->sc_alts[sc->sc_playchan.altidx].sc_busy = 0;
 if ((usemode & 0x02) && sc->sc_recchan.altidx != -1)
  sc->sc_alts[sc->sc_recchan.altidx].sc_busy = 0;
 setmode &= sc->sc_mode;
 for (mode = 0x02; mode != -1;
      mode = mode == 0x02 ? 0x01 : -1) {
  if ((setmode & mode) == 0)
   continue;
  p = (mode == 0x01) ? play : rec;
  switch (p->precision) {
  case 24:
   if (!(flags & 0x40)) {
    if (flags & 0x02)
     p->precision = 16;
    else
     p->precision = 8;
   }
   break;
  case 16:
   if (!(flags & 0x02)) {
    if (flags & 0x40)
     p->precision = 24;
    else
     p->precision = 8;
   }
   break;
  case 8:
   if (!(flags & 0x01) && !(flags & 0x04)) {
    if (flags & 0x02)
     p->precision = 16;
    else
     p->precision = 24;
   }
   break;
  }
  i = uaudio_match_alt(sc, p, mode);
  if (i < 0) {
   ;
   continue;
  }
  p->bps = sc->sc_alts[i].asf1desc->bSubFrameSize;
  p->msb = 1;
  if (mode == 0x01)
   paltidx = i;
  else
   raltidx = i;
 }
 if (setmode & 0x01) {
  if (paltidx == -1) {
   ;
   return (22);
  }
  uaudio_chan_init(&sc->sc_playchan, 0x01, paltidx, play);
 }
 if (setmode & 0x02) {
  if (raltidx == -1) {
   ;
   return (22);
  }
  uaudio_chan_init(&sc->sc_recchan, 0x02, raltidx, rec);
 }
 if ((usemode & 0x01) && sc->sc_playchan.altidx != -1)
  sc->sc_alts[sc->sc_playchan.altidx].sc_busy = 1;
 if ((usemode & 0x02) && sc->sc_recchan.altidx != -1)
  sc->sc_alts[sc->sc_recchan.altidx].sc_busy = 1;
 ;
 return (0);
}
usbd_status
uaudio_set_speed(struct uaudio_softc *sc, int endpt, u_int speed)
{
 usb_device_request_t req;
 u_int8_t data[3];
 ;
 req.bmRequestType = (0x00 | 0x20 | 0x02);
 req.bRequest = 0x01;
 ((req.wValue)[0] = (u_int8_t)(0), (req.wValue)[1] = (u_int8_t)(0x01));
 ((req.wIndex)[0] = (u_int8_t)(endpt), (req.wIndex)[1] = (u_int8_t)((endpt) >> 8));
 ((req.wLength)[0] = (u_int8_t)(3), (req.wLength)[1] = (u_int8_t)((3) >> 8));
 data[0] = speed;
 data[1] = speed >> 8;
 data[2] = speed >> 16;
 return (usbd_do_request(sc->sc_udev, &req, data));
}
void
uaudio_set_speed_emu0202(struct chan *ch)
{
 usb_device_request_t req;
 int rates[6] = { 44100, 48000, 88200, 96000, 176400, 192000 };
 int i;
 u_int8_t data[1];
 for (i = 0; i < 6; i++)
  if (rates[i] >= ch->sample_rate)
   break;
 if (i >= 6) {
  ;
  i = 0;
 }
 req.bmRequestType = (0x00 | 0x20 | 0x01);
 req.bRequest = 0x01;
 ((req.wValue)[0] = (u_int8_t)(0), (req.wValue)[1] = (u_int8_t)(0x03));
 ((req.wIndex)[0] = (u_int8_t)(ch->sc->sc_ac_iface), (req.wIndex)[1] = (u_int8_t)(12));
 ((req.wLength)[0] = (u_int8_t)(1), (req.wLength)[1] = (u_int8_t)((1) >> 8));
 data[0] = i;
 usbd_do_request(ch->sc->sc_udev, &req, data);
}
