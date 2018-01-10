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
struct mdproc {
 struct trapframe64 *md_tf;
 struct fpstate64 *md_fpstate;
 volatile int md_astpending;
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
struct mutex {
 volatile void *mtx_owner;
 int mtx_wantipl;
 int mtx_oldipl;
};
void __mtx_init(struct mutex *, int);
void __mtx_enter(struct mutex *);
int __mtx_enter_try(struct mutex *);
void __mtx_leave(struct mutex *);
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
struct process;
struct session {
 int s_count;
 struct process *s_leader;
 struct vnode *s_ttyvp;
 struct tty *s_ttyp;
 char s_login[32];
 pid_t s_verauthppid;
 uid_t s_verauthuid;
 struct timeout s_verauthto;
};
void zapverauth( void *);
struct pgrp {
 struct { struct pgrp *le_next; struct pgrp **le_prev; } pg_hash;
 struct { struct process *lh_first; } pg_members;
 struct session *pg_session;
 pid_t pg_id;
 int pg_jobc;
};
struct exec_package;
struct proc;
struct ps_strings;
struct uvm_object;
union sigval;
struct emul {
 char e_name[8];
 int *e_errno;
 void (*e_sendsig)(void (*)(int), int, int, u_long, int, union sigval);
 int e_nosys;
 int e_nsysent;
 struct sysent *e_sysent;
 char **e_syscallnames;
 int e_arglen;
 void *(*e_copyargs)(struct exec_package *, struct ps_strings *,
        void *, void *);
 void (*e_setregs)(struct proc *, struct exec_package *,
      u_long, register_t *);
 int (*e_fixup)(struct proc *, struct exec_package *);
 int (*e_coredump)(struct proc *, void *cookie);
 char *e_sigcode;
 char *e_esigcode;
 char *e_esigret;
 int e_flags;
 struct uvm_object *e_sigobject;
};
struct tusage {
 struct timespec tu_runtime;
 uint64_t tu_uticks;
 uint64_t tu_sticks;
 uint64_t tu_iticks;
};
struct process {
 struct proc *ps_mainproc;
 struct ucred *ps_ucred;
 struct { struct process *le_next; struct process **le_prev; } ps_list;
 struct { struct proc *tqh_first; struct proc **tqh_last; } ps_threads;
 struct { struct process *le_next; struct process **le_prev; } ps_pglist;
 struct process *ps_pptr;
 struct { struct process *le_next; struct process **le_prev; } ps_sibling;
 struct { struct process *lh_first; } ps_children;
 struct { struct process *le_next; struct process **le_prev; } ps_hash;
 struct sigacts *ps_sigacts;
 struct vnode *ps_textvp;
 struct filedesc *ps_fd;
 struct vmspace *ps_vmspace;
 pid_t ps_pid;
 struct klist ps_klist;
 int ps_flags;
 struct proc *ps_single;
 int ps_singlecount;
 int ps_traceflag;
 struct vnode *ps_tracevp;
 struct ucred *ps_tracecred;
 pid_t ps_oppid;
 int ps_ptmask;
 struct ptrace_state *ps_ptstat;
 struct rusage *ps_ru;
 struct tusage ps_tu;
 struct rusage ps_cru;
 struct itimerval ps_timer[3];
 u_int64_t ps_wxcounter;
 struct plimit *ps_limit;
 struct pgrp *ps_pgrp;
 struct emul *ps_emul;
 char ps_comm[16 +1];
 vaddr_t ps_strings;
 vaddr_t ps_sigcode;
 vaddr_t ps_sigcoderet;
 u_long ps_sigcookie;
 u_int ps_rtableid;
 char ps_nice;
 struct uprof {
  caddr_t pr_base;
  size_t pr_size;
  u_long pr_off;
  u_int pr_scale;
 } ps_prof;
 u_short ps_acflag;
 uint64_t ps_pledge;
 uint64_t ps_execpledge;
 int64_t ps_kbind_cookie;
 u_long ps_kbind_addr;
 int ps_refcnt;
 struct timespec ps_start;
 struct timeout ps_realit_to;
};
struct lock_list_entry;
struct proc {
 struct { struct proc *tqe_next; struct proc **tqe_prev; } p_runq;
 struct { struct proc *le_next; struct proc **le_prev; } p_list;
 struct process *p_p;
 struct { struct proc *tqe_next; struct proc **tqe_prev; } p_thr_link;
 struct { struct proc *tqe_next; struct proc **tqe_prev; } p_fut_link;
 struct futex *p_futex;
 struct filedesc *p_fd;
 struct vmspace *p_vmspace;
 int p_flag;
 u_char p_spare;
 char p_stat;
 char p_pad1[1];
 u_char p_descfd;
 pid_t p_tid;
 struct { struct proc *le_next; struct proc **le_prev; } p_hash;
 int p_dupfd;
 long p_thrslpid;
 u_int p_estcpu;
 int p_cpticks;
 const volatile void *p_wchan;
 struct timeout p_sleep_to;
 const char *p_wmesg;
 fixpt_t p_pctcpu;
 u_int p_slptime;
 u_int p_uticks;
 u_int p_sticks;
 u_int p_iticks;
 struct cpu_info * volatile p_cpu;
 struct rusage p_ru;
 struct tusage p_tu;
 struct timespec p_rtime;
 int p_siglist;
 sigset_t p_sigmask;
 u_char p_priority;
 u_char p_usrpri;
 int p_pledge_syscall;
 struct ucred *p_ucred;
 struct sigaltstack p_sigstk;
 u_long p_prof_addr;
 u_long p_prof_ticks;
 struct user *p_addr;
 struct mdproc p_md;
 sigset_t p_oldmask;
 int p_sisig;
 union sigval p_sigval;
 long p_sitrapno;
 int p_sicode;
 u_short p_xstat;
 struct lock_list_entry *p_sleeplocks;
};
struct uidinfo {
 struct { struct uidinfo *le_next; struct uidinfo **le_prev; } ui_hash;
 uid_t ui_uid;
 long ui_proccnt;
 long ui_lockcnt;
};
struct uidinfo *uid_find(uid_t);
extern struct tidhashhead { struct proc *lh_first; } *tidhashtbl;
extern u_long tidhash;
extern struct pidhashhead { struct process *lh_first; } *pidhashtbl;
extern u_long pidhash;
extern struct pgrphashhead { struct pgrp *lh_first; } *pgrphashtbl;
extern u_long pgrphash;
extern struct proc proc0;
extern struct process process0;
extern int nprocesses, maxprocess;
extern int nthreads, maxthread;
extern int randompid;
struct proclist { struct proc *lh_first; };
struct processlist { struct process *lh_first; };
extern struct processlist allprocess;
extern struct processlist zombprocess;
extern struct proclist allproc;
extern struct process *initprocess;
extern struct proc *reaperproc;
extern struct proc *syncerproc;
extern struct pool process_pool;
extern struct pool proc_pool;
extern struct pool rusage_pool;
extern struct pool ucred_pool;
extern struct pool session_pool;
extern struct pool pgrp_pool;
void freepid(pid_t);
struct process *prfind(pid_t);
struct process *zombiefind(pid_t);
struct proc *tfind(pid_t);
struct pgrp *pgfind(pid_t);
void proc_printit(struct proc *p, const char *modif,
    int (*pr)(const char *, ...));
int chgproccnt(uid_t uid, int diff);
int enterpgrp(struct process *, pid_t, struct pgrp *, struct session *);
void fixjobc(struct process *, struct pgrp *, int);
int inferior(struct process *, struct process *);
void leavepgrp(struct process *);
void preempt(void);
void pgdelete(struct pgrp *);
void procinit(void);
void resetpriority(struct proc *);
void setrunnable(struct proc *);
void endtsleep(void *);
void unsleep(struct proc *);
void reaper(void);
void exit1(struct proc *, int, int);
void exit2(struct proc *);
int dowait4(struct proc *, pid_t, int *, int, struct rusage *,
     register_t *);
void cpu_fork(struct proc *_curp, struct proc *_child, void *_stack,
     void *_tcb, void (*_func)(void *), void *_arg);
void cpu_exit(struct proc *);
void process_initialize(struct process *, struct proc *);
int fork1(struct proc *_curp, int _flags, void (*_func)(void *),
     void *_arg, register_t *_retval, struct proc **_newprocp);
int thread_fork(struct proc *_curp, void *_stack, void *_tcb,
     pid_t *_tidptr, register_t *_retval);
int groupmember(gid_t, struct ucred *);
void dorefreshcreds(struct process *, struct proc *);
void dosigsuspend(struct proc *, sigset_t);
static inline void
refreshcreds(struct proc *p)
{
 struct process *pr = p->p_p;
 if (pr->ps_ucred != p->p_ucred)
  dorefreshcreds(pr, p);
}
enum single_thread_mode {
 SINGLE_SUSPEND,
 SINGLE_PTRACE,
 SINGLE_UNWIND,
 SINGLE_EXIT
};
int single_thread_set(struct proc *, enum single_thread_mode, int);
void single_thread_wait(struct process *);
void single_thread_clear(struct proc *, int);
int single_thread_check(struct proc *, int);
void child_return(void *);
int proc_cansugid(struct proc *);
struct sleep_state {
 int sls_s;
 int sls_catch;
 int sls_do_sleep;
 int sls_sig;
};
struct cond {
 int c_wait;
};
void proc_trampoline_mp(void);
struct cpuset {
 int cs_set[(((256) - 1)/32 + 1)];
};
void cpuset_init_cpu(struct cpu_info *);
void cpuset_clear(struct cpuset *);
void cpuset_add(struct cpuset *, struct cpu_info *);
void cpuset_del(struct cpuset *, struct cpu_info *);
int cpuset_isset(struct cpuset *, struct cpu_info *);
void cpuset_add_all(struct cpuset *);
void cpuset_copy(struct cpuset *, struct cpuset *);
void cpuset_union(struct cpuset *, struct cpuset *, struct cpuset *);
void cpuset_intersection(struct cpuset *t, struct cpuset *, struct cpuset *);
void cpuset_complement(struct cpuset *, struct cpuset *, struct cpuset *);
struct cpu_info *cpuset_first(struct cpuset *);
struct proc;
struct uio;
struct knote;
struct stat;
struct file;
struct ucred;
struct fileops {
 int (*fo_read)(struct file *, off_t *, struct uio *,
      struct ucred *);
 int (*fo_write)(struct file *, off_t *, struct uio *,
      struct ucred *);
 int (*fo_ioctl)(struct file *, u_long, caddr_t,
      struct proc *);
 int (*fo_poll)(struct file *, int, struct proc *);
 int (*fo_kqfilter)(struct file *, struct knote *);
 int (*fo_stat)(struct file *, struct stat *, struct proc *);
 int (*fo_close)(struct file *, struct proc *);
};
struct file {
 struct { struct file *le_next; struct file **le_prev; } f_list;
 short f_flag;
 short f_type;
 long f_count;
 struct ucred *f_cred;
 struct fileops *f_ops;
 off_t f_offset;
 void *f_data;
 int f_iflags;
 u_int64_t f_rxfer;
 u_int64_t f_wxfer;
 u_int64_t f_seek;
 u_int64_t f_rbytes;
 u_int64_t f_wbytes;
};
int fdrop(struct file *, struct proc *);
struct filelist { struct file *lh_first; };
extern struct filelist filehead;
extern int maxfiles;
extern int numfiles;
extern struct fileops vnops;
struct filedesc {
 struct file **fd_ofiles;
 char *fd_ofileflags;
 struct vnode *fd_cdir;
 struct vnode *fd_rdir;
 int fd_nfiles;
 int fd_openfd;
 u_int *fd_himap;
 u_int *fd_lomap;
 int fd_lastfile;
 int fd_freefile;
 u_short fd_cmask;
 u_short fd_refcnt;
 struct rwlock fd_lock;
 int fd_knlistsize;
 struct klist *fd_knlist;
 u_long fd_knhashmask;
 struct klist *fd_knhash;
 int fd_flags;
};
struct filedesc0 {
 struct filedesc fd_fd;
 struct file *fd_dfiles[20];
 char fd_dfileflags[20];
 u_int fd_dhimap[32 >> 5];
 u_int fd_dlomap[32];
};
void filedesc_init(void);
int dupfdopen(struct proc *, int, int);
int fdalloc(struct proc *p, int want, int *result);
void fdexpand(struct proc *);
int falloc(struct proc *_p, int _flags, struct file **_rfp, int *_rfd);
struct filedesc *fdinit(void);
struct filedesc *fdshare(struct process *);
struct filedesc *fdcopy(struct process *);
void fdfree(struct proc *p);
int fdrelease(struct proc *p, int);
void fdremove(struct filedesc *, int);
void fdcloseexec(struct proc *);
struct file *fd_getfile(struct filedesc *, int);
struct file *fd_getfile_mode(struct filedesc *, int, int);
int closef(struct file *, struct proc *);
int getsock(struct proc *, int, struct file **);
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
u_int mextfree_register(void (*)(caddr_t, u_int, void *));
struct mbstat {
 u_long m_drops;
 u_long m_wait;
 u_long m_drain;
 u_short m_mtypes[256];
};
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
typedef __socklen_t socklen_t;
struct mbuf;
struct ifnet;
struct domain {
 int dom_family;
 char *dom_name;
 void (*dom_init)(void);
 int (*dom_externalize)(struct mbuf *, socklen_t, int);
 void (*dom_dispose)(struct mbuf *);
 const struct protosw *dom_protosw, *dom_protoswNPROTOSW;
 unsigned int dom_rtkeylen;
 unsigned int dom_rtoffset;
 unsigned int dom_maxplen;
 void *(*dom_ifattach)(struct ifnet *);
 void (*dom_ifdetach)(struct ifnet *, void *);
};
extern struct domain *domains[];
void domaininit(void);
extern struct domain inetdomain;
extern struct domain inet6domain;
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
struct mbuf;
struct sockaddr;
struct socket;
struct domain;
struct proc;
struct protosw {
 short pr_type;
 struct domain *pr_domain;
 short pr_protocol;
 short pr_flags;
 int (*pr_input)(struct mbuf **, int *, int, int);
 int (*pr_output)(struct mbuf *, struct socket *, struct sockaddr *,
      struct mbuf *);
 void (*pr_ctlinput)(int, struct sockaddr *, u_int, void *);
 int (*pr_ctloutput)(int, struct socket *, int, int, struct mbuf *);
 int (*pr_usrreq)(struct socket *, int, struct mbuf *,
      struct mbuf *, struct mbuf *, struct proc *);
 int (*pr_attach)(struct socket *, int);
 int (*pr_detach)(struct socket *);
 void (*pr_init)(void);
 void (*pr_fasttimo)(void);
 void (*pr_slowtimo)(void);
 int (*pr_sysctl)(int *, u_int, void *, size_t *, void *, size_t);
};
struct sockaddr;
const struct protosw *pffindproto(int, int, int);
const struct protosw *pffindtype(int, int);
void pfctlinput(int, struct sockaddr *);
extern u_char ip_protox[];
extern const struct protosw inetsw[];
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
struct unpcb {
 struct socket *unp_socket;
 struct vnode *unp_vnode;
 struct file *unp_file;
 struct unpcb *unp_conn;
 ino_t unp_ino;
 struct { struct unpcb *slh_first; } unp_refs;
 struct { struct unpcb *sle_next; } unp_nextref;
 struct mbuf *unp_addr;
 long unp_msgcount;
 int unp_flags;
 struct sockpeercred unp_connid;
 struct timespec unp_ctime;
 struct { struct unpcb *le_next; struct unpcb **le_prev; } unp_link;
};
struct fdpass {
 struct file *fp;
 int flags;
};
int uipc_usrreq(struct socket *, int , struct mbuf *,
    struct mbuf *, struct mbuf *, struct proc *);
int uipc_attach(struct socket *, int);
int uipc_detach(struct socket *);
int unp_bind(struct unpcb *, struct mbuf *, struct proc *);
int unp_connect(struct socket *, struct mbuf *, struct proc *);
int unp_connect2(struct socket *, struct socket *);
void unp_detach(struct unpcb *);
void unp_disconnect(struct unpcb *);
void unp_drop(struct unpcb *, int);
void unp_gc(void *);
void unp_shutdown(struct unpcb *);
int unp_externalize(struct mbuf *, socklen_t, int);
int unp_internalize(struct mbuf *, struct proc *);
void unp_dispose(struct mbuf *);
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
struct soqhead { struct socket *tqh_first; struct socket **tqh_last; };
struct socket {
 const struct protosw *so_proto;
 void *so_pcb;
 u_int so_state;
 short so_type;
 short so_options;
 short so_linger;
 struct socket *so_head;
 struct soqhead *so_onq;
 struct soqhead so_q0;
 struct soqhead so_q;
 struct { struct socket *tqe_next; struct socket **tqe_prev; } so_qe;
 short so_q0len;
 short so_qlen;
 short so_qlimit;
 short so_timeo;
 u_int so_error;
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
struct sigacts {
 sig_t ps_sigact[33];
 sigset_t ps_catchmask[33];
 sigset_t ps_sigonstack;
 sigset_t ps_sigintr;
 sigset_t ps_sigreset;
 sigset_t ps_siginfo;
 sigset_t ps_sigignore;
 sigset_t ps_sigcatch;
 int ps_flags;
 int ps_refcnt;
};
enum signal_type { SPROCESS, STHREAD, SPROPAGATED };
int coredump(struct proc *p);
void execsigs(struct proc *p);
void gsignal(int pgid, int sig);
void csignal(pid_t pgid, int signum, uid_t uid, uid_t euid);
int issignal(struct proc *p);
void pgsignal(struct pgrp *pgrp, int sig, int checkctty);
void postsig(int sig);
void psignal(struct proc *p, int sig);
void ptsignal(struct proc *p, int sig, enum signal_type type);
void siginit(struct process *);
void trapsignal(struct proc *p, int sig, u_long code, int type,
     union sigval val);
void sigexit(struct proc *, int);
int sigonstack(size_t);
void setsigvec(struct proc *, int, struct sigaction *);
int killpg1(struct proc *, int, int, int);
void signal_init(void);
struct sigacts *sigactsinit(struct process *);
struct sigacts *sigactsshare(struct process *);
void sigstkinit(struct sigaltstack *);
void sigactsunshare(struct process *);
void sigactsfree(struct process *);
void sendsig(sig_t action, int sig, int returnmask, u_long code,
     int type, union sigval val);
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
void sbsync(struct sockbuf *, struct mbuf *);
int sosplice(struct socket *, int, off_t, struct timeval *);
void sounsplice(struct socket *, struct socket *, int);
void soidle(void *);
void sotask(void *);
int somove(struct socket *, int);
void filt_sordetach(struct knote *kn);
int filt_soread(struct knote *kn, long hint);
void filt_sowdetach(struct knote *kn);
int filt_sowrite(struct knote *kn, long hint);
int filt_solisten(struct knote *kn, long hint);
struct filterops solisten_filtops =
 { 1, ((void *)0), filt_sordetach, filt_solisten };
struct filterops soread_filtops =
 { 1, ((void *)0), filt_sordetach, filt_soread };
struct filterops sowrite_filtops =
 { 1, ((void *)0), filt_sowdetach, filt_sowrite };
int somaxconn = 128;
int sominconn = 80;
struct pool socket_pool;
struct pool sosplice_pool;
struct taskq *sosplice_taskq;
void
soinit(void)
{
 pool_init(&socket_pool, sizeof(struct socket), 0, 2, 0,
     "sockpl", ((void *)0));
 pool_init(&sosplice_pool, sizeof(struct sosplice), 0, 2, 0,
     "sosppl", ((void *)0));
}
int
socreate(int dom, struct socket **aso, int type, int proto)
{
 struct proc *p = (__curcpu->ci_self)->ci_curproc;
 const struct protosw *prp;
 struct socket *so;
 int error, s;
 if (proto)
  prp = pffindproto(dom, proto, type);
 else
  prp = pffindtype(dom, type);
 if (prp == ((void *)0) || prp->pr_attach == ((void *)0))
  return (43);
 if (prp->pr_type != type)
  return (41);
 so = pool_get(&socket_pool, 0x0001 | 0x0008);
 do { (&so->so_q0)->tqh_first = ((void *)0); (&so->so_q0)->tqh_last = &(&so->so_q0)->tqh_first; } while (0);
 do { (&so->so_q)->tqh_first = ((void *)0); (&so->so_q)->tqh_last = &(&so->so_q)->tqh_first; } while (0);
 so->so_type = type;
 if (suser(p, 0) == 0)
  so->so_state = 0x080;
 so->so_ruid = p->p_ucred->cr_ruid;
 so->so_euid = p->p_ucred->cr_uid;
 so->so_rgid = p->p_ucred->cr_rgid;
 so->so_egid = p->p_ucred->cr_gid;
 so->so_cpid = p->p_p->ps_pid;
 so->so_proto = prp;
 s = solock(so);
 error = (*prp->pr_attach)(so, proto);
 if (error) {
  so->so_state |= 0x001;
  sofree(so);
  sounlock(s);
  return (error);
 }
 sounlock(s);
 *aso = so;
 return (0);
}
int
sobind(struct socket *so, struct mbuf *nam, struct proc *p)
{
 int error;
 soassertlocked(so);
 error = (*so->so_proto->pr_usrreq)(so, 2, ((void *)0), nam, ((void *)0), p);
 return (error);
}
int
solisten(struct socket *so, int backlog)
{
 int s, error;
 if (so->so_state & (0x002|0x004|0x008))
  return (45);
 if (((so)->so_sp && (so)->so_sp->ssp_socket) || ((so)->so_sp && (so)->so_sp->ssp_soback))
  return (45);
 s = solock(so);
 error = (*so->so_proto->pr_usrreq)(so, 3, ((void *)0), ((void *)0), ((void *)0),
     (__curcpu->ci_self)->ci_curproc);
 if (error) {
  sounlock(s);
  return (error);
 }
 if (((&so->so_q)->tqh_first) == ((void *)0))
  so->so_options |= 0x0002;
 if (backlog < 0 || backlog > somaxconn)
  backlog = somaxconn;
 if (backlog < sominconn)
  backlog = sominconn;
 so->so_qlimit = backlog;
 sounlock(s);
 return (0);
}
void
sofree(struct socket *so)
{
 soassertlocked(so);
 if (so->so_pcb || (so->so_state & 0x001) == 0)
  return;
 if (so->so_head) {
  if (!soqremque(so, 0))
   return;
 }
 if (so->so_sp) {
  if (((so)->so_sp && (so)->so_sp->ssp_soback))
   sounsplice(so->so_sp->ssp_soback, so,
       so->so_sp->ssp_soback != so);
  if (((so)->so_sp && (so)->so_sp->ssp_socket))
   sounsplice(so, so->so_sp->ssp_socket, 0);
  pool_put(&sosplice_pool, so->so_sp);
  so->so_sp = ((void *)0);
 }
 sbrelease(so, &so->so_snd);
 sorflush(so);
 pool_put(&socket_pool, so);
}
int
soclose(struct socket *so)
{
 struct socket *so2;
 int s, error = 0;
 s = solock(so);
 if (so->so_options & 0x0002) {
  while ((so2 = ((&so->so_q0)->tqh_first)) != ((void *)0)) {
   (void) soqremque(so2, 0);
   (void) soabort(so2);
  }
  while ((so2 = ((&so->so_q)->tqh_first)) != ((void *)0)) {
   (void) soqremque(so2, 1);
   (void) soabort(so2);
  }
 }
 if (so->so_pcb == 0)
  goto discard;
 if (so->so_state & 0x002) {
  if ((so->so_state & 0x008) == 0) {
   error = sodisconnect(so);
   if (error)
    goto drop;
  }
  if (so->so_options & 0x0080) {
   if ((so->so_state & 0x008) &&
       (so->so_state & 0x100))
    goto drop;
   while (so->so_state & 0x002) {
    error = sosleep(so, &so->so_timeo,
        24 | 0x100, "netcls",
        so->so_linger * hz);
    if (error)
     break;
   }
  }
 }
drop:
 if (so->so_pcb) {
  int error2;
  ((so->so_proto->pr_detach) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../kern/uipc_socket.c", 270, "so->so_proto->pr_detach"));
  error2 = (*so->so_proto->pr_detach)(so);
  if (error == 0)
   error = error2;
 }
discard:
 if (so->so_state & 0x001)
  panic("soclose NOFDREF: so %p, so_type %d", so, so->so_type);
 so->so_state |= 0x001;
 sofree(so);
 sounlock(s);
 return (error);
}
int
soabort(struct socket *so)
{
 soassertlocked(so);
 return (*so->so_proto->pr_usrreq)(so, 10, ((void *)0), ((void *)0), ((void *)0),
    (__curcpu->ci_self)->ci_curproc);
}
int
soaccept(struct socket *so, struct mbuf *nam)
{
 int error = 0;
 soassertlocked(so);
 if ((so->so_state & 0x001) == 0)
  panic("soaccept !NOFDREF: so %p, so_type %d", so, so->so_type);
 so->so_state &= ~0x001;
 if ((so->so_state & 0x800) == 0 ||
     (so->so_proto->pr_flags & 0x20) == 0)
  error = (*so->so_proto->pr_usrreq)(so, 5, ((void *)0),
      nam, ((void *)0), (__curcpu->ci_self)->ci_curproc);
 else
  error = 53;
 return (error);
}
int
soconnect(struct socket *so, struct mbuf *nam)
{
 int error;
 soassertlocked(so);
 if (so->so_options & 0x0002)
  return (45);
 if (so->so_state & (0x002|0x004) &&
     ((so->so_proto->pr_flags & 0x04) ||
     (error = sodisconnect(so))))
  error = 56;
 else
  error = (*so->so_proto->pr_usrreq)(so, 4,
      ((void *)0), nam, ((void *)0), (__curcpu->ci_self)->ci_curproc);
 return (error);
}
int
soconnect2(struct socket *so1, struct socket *so2)
{
 int error;
 soassertlocked(so1);
 error = (*so1->so_proto->pr_usrreq)(so1, 17, ((void *)0),
     (struct mbuf *)so2, ((void *)0), (__curcpu->ci_self)->ci_curproc);
 return (error);
}
int
sodisconnect(struct socket *so)
{
 int error;
 soassertlocked(so);
 if ((so->so_state & 0x002) == 0)
  return (57);
 if (so->so_state & 0x008)
  return (37);
 error = (*so->so_proto->pr_usrreq)(so, 6, ((void *)0), ((void *)0),
     ((void *)0), (__curcpu->ci_self)->ci_curproc);
 return (error);
}
int m_getuio(struct mbuf **, int, long, struct uio *);
int
sosend(struct socket *so, struct mbuf *addr, struct uio *uio, struct mbuf *top,
    struct mbuf *control, int flags)
{
 long space, clen = 0;
 size_t resid;
 int error, s;
 int atomic = ((so)->so_proto->pr_flags & 0x01) || top;
 if (uio)
  resid = uio->uio_resid;
 else
  resid = top->M_dat.MH.MH_pkthdr.len;
 if (so->so_type == 1 && (flags & 0x8)) {
  m_freem(top);
  m_freem(control);
  return (22);
 }
 if (uio && uio->uio_procp)
  uio->uio_procp->p_ru.ru_msgsnd++;
 if (control) {
  clen = control->m_hdr.mh_len;
  if (so->so_proto->pr_domain->dom_family == 1 &&
      clen >= (((unsigned long)(sizeof(struct cmsghdr)) + 0xf) & ~0xf) &&
      ((struct cmsghdr *)((control)->m_hdr.mh_data))->cmsg_type == 0x01)
   clen = ((((unsigned long)(sizeof(struct cmsghdr)) + 0xf) & ~0xf) + (((unsigned long)((clen - (((unsigned long)(sizeof(struct cmsghdr)) + 0xf) & ~0xf)) * (sizeof(struct fdpass) / sizeof(int))) + 0xf) & ~0xf));
 }
 s = solock(so);
restart:
 if ((error = sblock(so, &so->so_snd, (((flags) & 0x80) ? 0x0002 : 0x0001))) != 0)
  goto out;
 so->so_state |= 0x2000;
 do {
  if (so->so_state & 0x010)
   { error = 32; goto release; };
  if (so->so_error) {
   error = so->so_error;
   so->so_error = 0;
   { error = error; goto release; };
  }
  if ((so->so_state & 0x002) == 0) {
   if (so->so_proto->pr_flags & 0x04) {
    if (!(resid == 0 && clen != 0))
     { error = 57; goto release; };
   } else if (addr == 0)
    { error = 39; goto release; };
  }
  space = sbspace(so, &so->so_snd);
  if (flags & 0x1)
   space += 1024;
  if ((atomic && resid > so->so_snd.sb_hiwat) ||
      (so->so_proto->pr_domain->dom_family != 1 &&
      clen > so->so_snd.sb_hiwat))
   { error = 40; goto release; };
  if (space < clen ||
      (space - clen < resid &&
      (atomic || space < so->so_snd.sb_lowat))) {
   if ((so->so_state & 0x100) || (flags & 0x80))
    { error = 35; goto release; };
   sbunlock(so, &so->so_snd);
   error = sbwait(so, &so->so_snd);
   so->so_state &= ~0x2000;
   if (error)
    goto out;
   goto restart;
  }
  space -= clen;
  do {
   if (uio == ((void *)0)) {
    resid = 0;
    if (flags & 0x8)
     top->m_hdr.mh_flags |= 0x0004;
   } else {
    sounlock(s);
    error = m_getuio(&top, atomic, space, uio);
    s = solock(so);
    if (error)
     goto release;
    space -= top->M_dat.MH.MH_pkthdr.len;
    resid = uio->uio_resid;
    if (flags & 0x8)
     top->m_hdr.mh_flags |= 0x0004;
   }
   if (resid == 0)
    so->so_state &= ~0x2000;
   if (top && so->so_options & 0x2000)
    top->m_hdr.mh_flags |= 0x2000;
   error = (*so->so_proto->pr_usrreq)(so,
       (flags & 0x1) ? 14 : 9,
       top, addr, control, (__curcpu->ci_self)->ci_curproc);
   clen = 0;
   control = ((void *)0);
   top = ((void *)0);
   if (error)
    goto release;
  } while (resid && space > 0);
 } while (resid);
release:
 so->so_state &= ~0x2000;
 sbunlock(so, &so->so_snd);
out:
 sounlock(s);
 m_freem(top);
 m_freem(control);
 return (error);
}
int
m_getuio(struct mbuf **mp, int atomic, long space, struct uio *uio)
{
 struct mbuf *m, *top = ((void *)0);
 struct mbuf **nextp = &top;
 u_long len, mlen;
 size_t resid = uio->uio_resid;
 int error;
 do {
  if (top == ((void *)0)) {
   m = m_gethdr((0x0001), (1));
   mlen = ((256 - sizeof(struct m_hdr)) - sizeof(struct pkthdr));
   m->M_dat.MH.MH_pkthdr.len = 0;
   m->M_dat.MH.MH_pkthdr.ph_ifidx = 0;
  } else {
   m = m_get((0x0001), (1));
   mlen = (256 - sizeof(struct m_hdr));
  }
  *nextp = m;
  nextp = &m->m_hdr.mh_next;
  resid = ulmin(resid, space);
  if (resid >= (((256 - sizeof(struct m_hdr)) - sizeof(struct pkthdr)) + (256 - sizeof(struct m_hdr)) + 1)) {
   m_clget((m), (0x0002), (ulmin(resid, (64 * 1024))));
   if ((m->m_hdr.mh_flags & 0x0001) == 0)
    m_clget((m), (0x0002), ((1 << 11)));
   if ((m->m_hdr.mh_flags & 0x0001) == 0)
    goto nopages;
   mlen = m->M_dat.MH.MH_dat.MH_ext.ext_size;
   len = ulmin(mlen, resid);
   if (atomic && m == top && len < mlen - max_hdr)
    m->m_hdr.mh_data += max_hdr;
  } else {
nopages:
   len = ulmin(mlen, resid);
   if (atomic && m == top && len < mlen - max_hdr)
    (m)->m_hdr.mh_data += (((256 - sizeof(struct m_hdr)) - sizeof(struct pkthdr)) - (len)) &~ (sizeof(long) - 1);
  }
  error = uiomove(((caddr_t)((m)->m_hdr.mh_data)), len, uio);
  if (error) {
   m_freem(top);
   return (error);
  }
  resid = uio->uio_resid;
  space -= len;
  m->m_hdr.mh_len = len;
  top->M_dat.MH.MH_pkthdr.len += len;
 } while (space > 0 && resid > 0);
 *mp = top;
 return 0;
}
void
sbsync(struct sockbuf *sb, struct mbuf *nextrecord)
{
 if (sb->sb_mb != ((void *)0))
  sb->sb_mb->m_hdr.mh_nextpkt = nextrecord;
 else
  sb->sb_mb = nextrecord;
 if (sb->sb_mb == ((void *)0)) {
  sb->sb_mbtail = ((void *)0);
  sb->sb_lastrecord = ((void *)0);
 } else if (sb->sb_mb->m_hdr.mh_nextpkt == ((void *)0))
  sb->sb_lastrecord = sb->sb_mb;
}
int
soreceive(struct socket *so, struct mbuf **paddr, struct uio *uio,
    struct mbuf **mp0, struct mbuf **controlp, int *flagsp,
    socklen_t controllen)
{
 struct mbuf *m, **mp;
 struct mbuf *cm;
 u_long len, offset, moff;
 int flags, error, s, type, uio_error = 0;
 const struct protosw *pr = so->so_proto;
 struct mbuf *nextrecord;
 size_t resid, orig_resid = uio->uio_resid;
 mp = mp0;
 if (paddr)
  *paddr = 0;
 if (controlp)
  *controlp = 0;
 if (flagsp)
  flags = *flagsp &~ 0x8;
 else
  flags = 0;
 if (so->so_state & 0x100)
  flags |= 0x80;
 if (flags & 0x1) {
  m = m_get(0x0001, 1);
  s = solock(so);
  error = (*pr->pr_usrreq)(so, 13, m,
      (struct mbuf *)(long)(flags & 0x2), ((void *)0), (__curcpu->ci_self)->ci_curproc);
  sounlock(s);
  if (error)
   goto bad;
  do {
   error = uiomove(((caddr_t)((m)->m_hdr.mh_data)),
       ulmin(uio->uio_resid, m->m_hdr.mh_len), uio);
   m = m_free(m);
  } while (uio->uio_resid && error == 0 && m);
bad:
  m_freem(m);
  return (error);
 }
 if (mp)
  *mp = ((void *)0);
 s = solock(so);
restart:
 if ((error = sblock(so, &so->so_rcv, (((flags) & 0x80) ? 0x0002 : 0x0001))) != 0) {
  sounlock(s);
  return (error);
 }
 m = so->so_rcv.sb_mb;
 if (((so)->so_sp && (so)->so_sp->ssp_socket))
  m = ((void *)0);
 if (m == ((void *)0) || (((flags & 0x80) == 0 &&
     so->so_rcv.sb_cc < uio->uio_resid) &&
     (so->so_rcv.sb_cc < so->so_rcv.sb_lowat ||
     ((flags & 0x40) && uio->uio_resid <= so->so_rcv.sb_hiwat)) &&
     m->m_hdr.mh_nextpkt == ((void *)0) && (pr->pr_flags & 0x01) == 0)) {
  if (m == ((void *)0) && so->so_rcv.sb_cc)
      if (!((so)->so_sp && (so)->so_sp->ssp_socket))
   panic("receive 1: so %p, so_type %d, sb_cc %lu",
       so, so->so_type, so->so_rcv.sb_cc);
  if (so->so_error) {
   if (m)
    goto dontblock;
   error = so->so_error;
   if ((flags & 0x2) == 0)
    so->so_error = 0;
   goto release;
  }
  if (so->so_state & 0x020) {
   if (m)
    goto dontblock;
   else if (so->so_rcv.sb_cc == 0)
    goto release;
  }
  for (; m; m = m->m_hdr.mh_next)
   if (m->m_hdr.mh_type == 7 || (m->m_hdr.mh_flags & 0x0004)) {
    m = so->so_rcv.sb_mb;
    goto dontblock;
   }
  if ((so->so_state & (0x002|0x004)) == 0 &&
      (so->so_proto->pr_flags & 0x04)) {
   error = 57;
   goto release;
  }
  if (uio->uio_resid == 0 && controlp == ((void *)0))
   goto release;
  if ((so->so_state & 0x100) || (flags & 0x80)) {
   error = 35;
   goto release;
  }
  ;
  ;
  sbunlock(so, &so->so_rcv);
  error = sbwait(so, &so->so_rcv);
  if (error) {
   sounlock(s);
   return (error);
  }
  goto restart;
 }
dontblock:
 if (uio->uio_procp)
  uio->uio_procp->p_ru.ru_msgrcv++;
 ((m == so->so_rcv.sb_mb) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../kern/uipc_socket.c", 763, "m == so->so_rcv.sb_mb"));
 ;
 ;
 nextrecord = m->m_hdr.mh_nextpkt;
 if (pr->pr_flags & 0x02) {
  if (m->m_hdr.mh_type != 3)
   panic("receive 1a: so %p, so_type %d, m %p, m_type %d",
       so, so->so_type, m, m->m_hdr.mh_type);
  orig_resid = 0;
  if (flags & 0x2) {
   if (paddr)
    *paddr = m_copym(m, 0, m->m_hdr.mh_len, 0x0002);
   m = m->m_hdr.mh_next;
  } else {
   do { (&so->so_rcv)->sb_cc -= (m)->m_hdr.mh_len; if ((m)->m_hdr.mh_type != 6 && (m)->m_hdr.mh_type != 3) (&so->so_rcv)->sb_datacc -= (m)->m_hdr.mh_len; (&so->so_rcv)->sb_mbcnt -= 256; if ((m)->m_hdr.mh_flags & 0x0001) (&so->so_rcv)->sb_mbcnt -= (m)->M_dat.MH.MH_dat.MH_ext.ext_size; } while ( 0);
   if (paddr) {
    *paddr = m;
    so->so_rcv.sb_mb = m->m_hdr.mh_next;
    m->m_hdr.mh_next = 0;
    m = so->so_rcv.sb_mb;
   } else {
    so->so_rcv.sb_mb = m_free(m);
    m = so->so_rcv.sb_mb;
   }
   sbsync(&so->so_rcv, nextrecord);
  }
 }
 while (m && m->m_hdr.mh_type == 6 && error == 0) {
  if (flags & 0x2) {
   if (controlp)
    *controlp = m_copym(m, 0, m->m_hdr.mh_len, 0x0002);
   m = m->m_hdr.mh_next;
  } else {
   do { (&so->so_rcv)->sb_cc -= (m)->m_hdr.mh_len; if ((m)->m_hdr.mh_type != 6 && (m)->m_hdr.mh_type != 3) (&so->so_rcv)->sb_datacc -= (m)->m_hdr.mh_len; (&so->so_rcv)->sb_mbcnt -= 256; if ((m)->m_hdr.mh_flags & 0x0001) (&so->so_rcv)->sb_mbcnt -= (m)->M_dat.MH.MH_dat.MH_ext.ext_size; } while ( 0);
   so->so_rcv.sb_mb = m->m_hdr.mh_next;
   m->m_hdr.mh_nextpkt = m->m_hdr.mh_next = ((void *)0);
   cm = m;
   m = so->so_rcv.sb_mb;
   sbsync(&so->so_rcv, nextrecord);
   if (controlp) {
    if (pr->pr_domain->dom_externalize &&
        ((struct cmsghdr *)((cm)->m_hdr.mh_data))->cmsg_type ==
        0x01) {
     error =
         (*pr->pr_domain->dom_externalize)
         (cm, controllen, flags);
    }
    *controlp = cm;
   } else {
    if (pr->pr_domain->dom_dispose &&
        ((struct cmsghdr *)((cm)->m_hdr.mh_data))->cmsg_type == 0x01)
     pr->pr_domain->dom_dispose(cm);
    m_free(cm);
   }
  }
  if (m != ((void *)0))
   nextrecord = so->so_rcv.sb_mb->m_hdr.mh_nextpkt;
  else
   nextrecord = so->so_rcv.sb_mb;
  if (controlp) {
   orig_resid = 0;
   controlp = &(*controlp)->m_hdr.mh_next;
  }
 }
 if (m) {
  type = m->m_hdr.mh_type;
  if (type == 7)
   flags |= 0x1;
  if (m->m_hdr.mh_flags & 0x0100)
   flags |= 0x100;
  if (m->m_hdr.mh_flags & 0x0200)
   flags |= 0x200;
 }
 ;
 ;
 moff = 0;
 offset = 0;
 while (m && uio->uio_resid > 0 && error == 0) {
  if (m->m_hdr.mh_type == 7) {
   if (type != 7)
    break;
  } else if (type == 7)
   break;
  else if (m->m_hdr.mh_type != 1 && m->m_hdr.mh_type != 2)
   panic("receive 3: so %p, so_type %d, m %p, m_type %d",
       so, so->so_type, m, m->m_hdr.mh_type);
  so->so_state &= ~0x040;
  len = uio->uio_resid;
  if (so->so_oobmark && len > so->so_oobmark - offset)
   len = so->so_oobmark - offset;
  if (len > m->m_hdr.mh_len - moff)
   len = m->m_hdr.mh_len - moff;
  if (mp == ((void *)0) && uio_error == 0) {
   ;
   ;
   resid = uio->uio_resid;
   sounlock(s);
   uio_error = uiomove(((caddr_t)((m)->m_hdr.mh_data)) + moff, len, uio);
   s = solock(so);
   if (uio_error)
    uio->uio_resid = resid - len;
  } else
   uio->uio_resid -= len;
  if (len == m->m_hdr.mh_len - moff) {
   if (m->m_hdr.mh_flags & 0x0004)
    flags |= 0x8;
   if (flags & 0x2) {
    m = m->m_hdr.mh_next;
    moff = 0;
   } else {
    nextrecord = m->m_hdr.mh_nextpkt;
    do { (&so->so_rcv)->sb_cc -= (m)->m_hdr.mh_len; if ((m)->m_hdr.mh_type != 6 && (m)->m_hdr.mh_type != 3) (&so->so_rcv)->sb_datacc -= (m)->m_hdr.mh_len; (&so->so_rcv)->sb_mbcnt -= 256; if ((m)->m_hdr.mh_flags & 0x0001) (&so->so_rcv)->sb_mbcnt -= (m)->M_dat.MH.MH_dat.MH_ext.ext_size; } while ( 0);
    if (mp) {
     *mp = m;
     mp = &m->m_hdr.mh_next;
     so->so_rcv.sb_mb = m = m->m_hdr.mh_next;
     *mp = ((void *)0);
    } else {
     so->so_rcv.sb_mb = m_free(m);
     m = so->so_rcv.sb_mb;
    }
    ((so->so_rcv.sb_mb == m) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../kern/uipc_socket.c", 907, "so->so_rcv.sb_mb == m"));
    if (m) {
     m->m_hdr.mh_nextpkt = nextrecord;
     if (nextrecord == ((void *)0))
      so->so_rcv.sb_lastrecord = m;
    } else {
     so->so_rcv.sb_mb = nextrecord;
     do { if ((&so->so_rcv)->sb_mb == ((void *)0)) { (&so->so_rcv)->sb_mbtail = ((void *)0); (&so->so_rcv)->sb_lastrecord = ((void *)0); } } while ( 0);
    }
    ;
    ;
   }
  } else {
   if (flags & 0x2)
    moff += len;
   else {
    if (mp)
     *mp = m_copym(m, 0, len, 0x0001);
    m->m_hdr.mh_data += len;
    m->m_hdr.mh_len -= len;
    so->so_rcv.sb_cc -= len;
    so->so_rcv.sb_datacc -= len;
   }
  }
  if (so->so_oobmark) {
   if ((flags & 0x2) == 0) {
    so->so_oobmark -= len;
    if (so->so_oobmark == 0) {
     so->so_state |= 0x040;
     break;
    }
   } else {
    offset += len;
    if (offset == so->so_oobmark)
     break;
   }
  }
  if (flags & 0x8)
   break;
  while (flags & 0x40 && m == ((void *)0) && uio->uio_resid > 0 &&
      !((so)->so_proto->pr_flags & 0x01) && !nextrecord) {
   if (so->so_error || so->so_state & 0x020)
    break;
   ;
   ;
   error = sbwait(so, &so->so_rcv);
   if (error) {
    sbunlock(so, &so->so_rcv);
    sounlock(s);
    return (0);
   }
   if ((m = so->so_rcv.sb_mb) != ((void *)0))
    nextrecord = m->m_hdr.mh_nextpkt;
  }
 }
 if (m && pr->pr_flags & 0x01) {
  flags |= 0x10;
  if ((flags & 0x2) == 0)
   (void) sbdroprecord(&so->so_rcv);
 }
 if ((flags & 0x2) == 0) {
  if (m == ((void *)0)) {
   so->so_rcv.sb_mb = nextrecord;
   if (so->so_rcv.sb_mb == ((void *)0)) {
    so->so_rcv.sb_mbtail = ((void *)0);
    so->so_rcv.sb_lastrecord = ((void *)0);
   } else if (nextrecord->m_hdr.mh_nextpkt == ((void *)0))
    so->so_rcv.sb_lastrecord = nextrecord;
  }
  ;
  ;
  if (pr->pr_flags & 0x08 && so->so_pcb)
   (*pr->pr_usrreq)(so, 8, ((void *)0),
       (struct mbuf *)(long)flags, ((void *)0), (__curcpu->ci_self)->ci_curproc);
 }
 if (orig_resid == uio->uio_resid && orig_resid &&
     (flags & 0x8) == 0 && (so->so_state & 0x020) == 0) {
  sbunlock(so, &so->so_rcv);
  goto restart;
 }
 if (uio_error)
  error = uio_error;
 if (flagsp)
  *flagsp |= flags;
release:
 sbunlock(so, &so->so_rcv);
 sounlock(s);
 return (error);
}
int
soshutdown(struct socket *so, int how)
{
 const struct protosw *pr = so->so_proto;
 int s, error = 0;
 s = solock(so);
 switch (how) {
 case 0:
  sorflush(so);
  break;
 case 2:
  sorflush(so);
 case 1:
  error = (*pr->pr_usrreq)(so, 7, ((void *)0), ((void *)0), ((void *)0),
      (__curcpu->ci_self)->ci_curproc);
  break;
 default:
  error = 22;
  break;
 }
 sounlock(s);
 return (error);
}
void
sorflush(struct socket *so)
{
 struct sockbuf *sb = &so->so_rcv;
 const struct protosw *pr = so->so_proto;
 struct socket aso;
 int error;
 sb->sb_flags |= 0x40;
 error = sblock(so, sb, 0x0001);
 ((error == 0) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../kern/uipc_socket.c", 1050, "error == 0"));
 socantrcvmore(so);
 sbunlock(so, sb);
 aso.so_proto = pr;
 aso.so_rcv = *sb;
 __builtin_memset((&sb->sb_cc), (0), ((caddr_t)&sb->sb_flags - (caddr_t)&sb->sb_cc));
 if (pr->pr_flags & 0x10 && pr->pr_domain->dom_dispose)
  (*pr->pr_domain->dom_dispose)(aso.so_rcv.sb_mb);
 sbrelease(&aso, &aso.so_rcv);
}
int
sosplice(struct socket *so, int fd, off_t max, struct timeval *tv)
{
 struct file *fp;
 struct socket *sosp;
 struct sosplice *sp;
 int error = 0;
 soassertlocked(so);
 if (sosplice_taskq == ((void *)0))
  sosplice_taskq = taskq_create("sosplice", 1, 2, 0);
 if (sosplice_taskq == ((void *)0))
  return (12);
 if ((so->so_proto->pr_flags & 0x40) == 0)
  return (43);
 if (so->so_options & 0x0002)
  return (45);
 if ((so->so_state & (0x002|0x004)) == 0 &&
     (so->so_proto->pr_flags & 0x04))
  return (57);
 if (so->so_sp == ((void *)0)) {
  sp = pool_get(&sosplice_pool, 0x0001 | 0x0008);
  if (so->so_sp == ((void *)0))
   so->so_sp = sp;
  else
   pool_put(&sosplice_pool, sp);
 }
 if (fd < 0) {
  if ((error = sblock(so, &so->so_rcv,
      (so->so_state & 0x100) ? 0x0002 : 0x0001)) != 0) {
   return (error);
  }
  if (so->so_sp->ssp_socket)
   sounsplice(so, so->so_sp->ssp_socket, 1);
  sbunlock(so, &so->so_rcv);
  return (0);
 }
 if (max && max < 0)
  return (22);
 if (tv && (tv->tv_sec < 0 || tv->tv_usec < 0))
  return (22);
 if ((error = getsock((__curcpu->ci_self)->ci_curproc, fd, &fp)) != 0)
  return (error);
 sosp = fp->f_data;
 if (sosp->so_sp == ((void *)0)) {
  sp = pool_get(&sosplice_pool, 0x0001 | 0x0008);
  if (sosp->so_sp == ((void *)0))
   sosp->so_sp = sp;
  else
   pool_put(&sosplice_pool, sp);
 }
 if ((error = sblock(so, &so->so_rcv,
     (so->so_state & 0x100) ? 0x0002 : 0x0001)) != 0) {
  (--(fp)->f_count == 0 ? fdrop(fp, (__curcpu->ci_self)->ci_curproc) : 0);
  return (error);
 }
 if ((error = sblock(so, &sosp->so_snd, 0x0001)) != 0) {
  sbunlock(so, &so->so_rcv);
  (--(fp)->f_count == 0 ? fdrop(fp, (__curcpu->ci_self)->ci_curproc) : 0);
  return (error);
 }
 if (so->so_sp->ssp_socket || sosp->so_sp->ssp_soback) {
  error = 16;
  goto release;
 }
 if (sosp->so_proto->pr_usrreq != so->so_proto->pr_usrreq) {
  error = 43;
  goto release;
 }
 if (sosp->so_options & 0x0002) {
  error = 45;
  goto release;
 }
 if ((sosp->so_state & (0x002|0x004)) == 0) {
  error = 57;
  goto release;
 }
 so->so_sp->ssp_socket = sosp;
 sosp->so_sp->ssp_soback = so;
 so->so_sp->ssp_len = 0;
 so->so_sp->ssp_max = max;
 if (tv)
  so->so_sp->ssp_idletv = *tv;
 else
  (&so->so_sp->ssp_idletv)->tv_sec = (&so->so_sp->ssp_idletv)->tv_usec = 0;
 timeout_set_proc(&so->so_sp->ssp_idleto, soidle, so);
 task_set(&so->so_sp->ssp_task, sotask, so);
 if (somove(so, 0x0001)) {
  so->so_rcv.sb_flags |= 0x20;
  sosp->so_snd.sb_flags |= 0x20;
 }
 release:
 sbunlock(sosp, &sosp->so_snd);
 sbunlock(so, &so->so_rcv);
 (--(fp)->f_count == 0 ? fdrop(fp, (__curcpu->ci_self)->ci_curproc) : 0);
 return (error);
}
void
sounsplice(struct socket *so, struct socket *sosp, int wakeup)
{
 soassertlocked(so);
 task_del(sosplice_taskq, &so->so_sp->ssp_task);
 timeout_del(&so->so_sp->ssp_idleto);
 sosp->so_snd.sb_flags &= ~0x20;
 so->so_rcv.sb_flags &= ~0x20;
 so->so_sp->ssp_socket = sosp->so_sp->ssp_soback = ((void *)0);
 if (wakeup && soreadable(so))
  sorwakeup(so);
}
void
soidle(void *arg)
{
 struct socket *so = arg;
 int s;
 s = solock(so);
 if (so->so_rcv.sb_flags & 0x20) {
  so->so_error = 60;
  sounsplice(so, so->so_sp->ssp_socket, 1);
 }
 sounlock(s);
}
void
sotask(void *arg)
{
 struct socket *so = arg;
 int s;
 s = solock(so);
 if (so->so_rcv.sb_flags & 0x20) {
  somove(so, 0x0002);
 }
 sounlock(s);
 yield();
}
int
somove(struct socket *so, int wait)
{
 struct socket *sosp = so->so_sp->ssp_socket;
 struct mbuf *m, **mp, *nextrecord;
 u_long len, off, oobmark;
 long space;
 int error = 0, maxreached = 0;
 unsigned int state;
 soassertlocked(so);
 nextpkt:
 if (so->so_error) {
  error = so->so_error;
  goto release;
 }
 if (sosp->so_state & 0x010) {
  error = 32;
  goto release;
 }
 if (sosp->so_error && sosp->so_error != 60 &&
     sosp->so_error != 27 && sosp->so_error != 62) {
  error = sosp->so_error;
  goto release;
 }
 if ((sosp->so_state & 0x002) == 0)
  goto release;
 len = so->so_rcv.sb_datacc;
 if (so->so_sp->ssp_max) {
  ((so->so_sp->ssp_len < so->so_sp->ssp_max) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../kern/uipc_socket.c", 1275, "so->so_splicelen < so->so_splicemax"));
  if (so->so_sp->ssp_max <= so->so_sp->ssp_len + len) {
   len = so->so_sp->ssp_max - so->so_sp->ssp_len;
   maxreached = 1;
  }
 }
 space = sbspace(sosp, &sosp->so_snd);
 if (so->so_oobmark && so->so_oobmark < len &&
     so->so_oobmark < space + 1024)
  space += 1024;
 if (space <= 0) {
  maxreached = 0;
  goto release;
 }
 if (space < len) {
  maxreached = 0;
  if (space < sosp->so_snd.sb_lowat)
   goto release;
  len = space;
 }
 sosp->so_state |= 0x2000;
 ;
 ;
 m = so->so_rcv.sb_mb;
 if (m == ((void *)0))
  goto release;
 nextrecord = m->m_hdr.mh_nextpkt;
 if (so->so_proto->pr_flags & 0x02) {
  if (m->m_hdr.mh_type != 3)
   panic("somove soname: so %p, so_type %d, m %p, "
       "m_type %d", so, so->so_type, m, m->m_hdr.mh_type);
  m = m->m_hdr.mh_next;
 }
 while (m && m->m_hdr.mh_type == 6)
  m = m->m_hdr.mh_next;
 if (m == ((void *)0)) {
  sbdroprecord(&so->so_rcv);
  if (so->so_proto->pr_flags & 0x08 && so->so_pcb)
   (so->so_proto->pr_usrreq)(so, 8, ((void *)0),
       ((void *)0), ((void *)0), ((void *)0));
  goto nextpkt;
 }
 if ((m->m_hdr.mh_flags & 0x0002) && m->M_dat.MH.MH_pkthdr.ph_loopcnt++ >= 128) {
  error = 62;
  goto release;
 }
 if (so->so_proto->pr_flags & 0x01) {
  if ((m->m_hdr.mh_flags & 0x0002) == 0)
   panic("somove !PKTHDR: so %p, so_type %d, m %p, "
       "m_type %d", so, so->so_type, m, m->m_hdr.mh_type);
  if (sosp->so_snd.sb_hiwat < m->M_dat.MH.MH_pkthdr.len) {
   error = 40;
   goto release;
  }
  if (len < m->M_dat.MH.MH_pkthdr.len)
   goto release;
  if (m->M_dat.MH.MH_pkthdr.len < len) {
   maxreached = 0;
   len = m->M_dat.MH.MH_pkthdr.len;
  }
  m = so->so_rcv.sb_mb;
  do { (&so->so_rcv)->sb_cc -= (m)->m_hdr.mh_len; if ((m)->m_hdr.mh_type != 6 && (m)->m_hdr.mh_type != 3) (&so->so_rcv)->sb_datacc -= (m)->m_hdr.mh_len; (&so->so_rcv)->sb_mbcnt -= 256; if ((m)->m_hdr.mh_flags & 0x0001) (&so->so_rcv)->sb_mbcnt -= (m)->M_dat.MH.MH_dat.MH_ext.ext_size; } while ( 0);
  so->so_rcv.sb_mb = m_free(m);
  sbsync(&so->so_rcv, nextrecord);
 }
 m = so->so_rcv.sb_mb;
 while (m && m->m_hdr.mh_type == 6) {
  do { (&so->so_rcv)->sb_cc -= (m)->m_hdr.mh_len; if ((m)->m_hdr.mh_type != 6 && (m)->m_hdr.mh_type != 3) (&so->so_rcv)->sb_datacc -= (m)->m_hdr.mh_len; (&so->so_rcv)->sb_mbcnt -= 256; if ((m)->m_hdr.mh_flags & 0x0001) (&so->so_rcv)->sb_mbcnt -= (m)->M_dat.MH.MH_dat.MH_ext.ext_size; } while ( 0);
  so->so_rcv.sb_mb = m_free(m);
  m = so->so_rcv.sb_mb;
  sbsync(&so->so_rcv, nextrecord);
 }
 ;
 ;
 for (off = 0, mp = &m; off <= len && *mp;
     off += (*mp)->m_hdr.mh_len, mp = &(*mp)->m_hdr.mh_next) {
  u_long size = len - off;
  if ((*mp)->m_hdr.mh_type != 1 && (*mp)->m_hdr.mh_type != 2)
   panic("somove type: so %p, so_type %d, m %p, "
       "m_type %d", so, so->so_type, *mp, (*mp)->m_hdr.mh_type);
  if ((*mp)->m_hdr.mh_len > size) {
   if (!maxreached && so->so_snd.sb_datacc > 0) {
    len -= size;
    break;
   }
   *mp = m_copym(so->so_rcv.sb_mb, 0, size, wait);
   if (*mp == ((void *)0)) {
    len -= size;
    break;
   }
   so->so_rcv.sb_mb->m_hdr.mh_data += size;
   so->so_rcv.sb_mb->m_hdr.mh_len -= size;
   so->so_rcv.sb_cc -= size;
   so->so_rcv.sb_datacc -= size;
  } else {
   *mp = so->so_rcv.sb_mb;
   do { (&so->so_rcv)->sb_cc -= (*mp)->m_hdr.mh_len; if ((*mp)->m_hdr.mh_type != 6 && (*mp)->m_hdr.mh_type != 3) (&so->so_rcv)->sb_datacc -= (*mp)->m_hdr.mh_len; (&so->so_rcv)->sb_mbcnt -= 256; if ((*mp)->m_hdr.mh_flags & 0x0001) (&so->so_rcv)->sb_mbcnt -= (*mp)->M_dat.MH.MH_dat.MH_ext.ext_size; } while ( 0);
   so->so_rcv.sb_mb = (*mp)->m_hdr.mh_next;
   sbsync(&so->so_rcv, nextrecord);
  }
 }
 *mp = ((void *)0);
 ;
 ;
 ;
 if (m == ((void *)0))
  goto release;
 m->m_hdr.mh_nextpkt = ((void *)0);
 if (m->m_hdr.mh_flags & 0x0002) {
  m_resethdr(m);
  m->M_dat.MH.MH_pkthdr.len = len;
 }
 if (so->so_proto->pr_flags & 0x08 && so->so_pcb)
  (so->so_proto->pr_usrreq)(so, 8, ((void *)0),
      ((void *)0), ((void *)0), ((void *)0));
 state = so->so_state;
 so->so_state &= ~0x040;
 oobmark = so->so_oobmark;
 so->so_oobmark = oobmark > len ? oobmark - len : 0;
 if (oobmark) {
  if (oobmark == len)
   so->so_state |= 0x040;
  if (oobmark >= len)
   oobmark = 0;
 }
 while (((state & 0x040) || oobmark) &&
     (so->so_options & 0x0100)) {
  struct mbuf *o = ((void *)0);
  if (state & 0x040) {
   o = m_get(wait, 1);
   state &= ~0x040;
  } else if (oobmark) {
   o = m_split(m, oobmark, wait);
   if (o) {
    error = (*sosp->so_proto->pr_usrreq)(sosp,
        9, m, ((void *)0), ((void *)0), ((void *)0));
    if (error) {
     if (sosp->so_state & 0x010)
      error = 32;
     m_freem(o);
     goto release;
    }
    len -= oobmark;
    so->so_sp->ssp_len += oobmark;
    m = o;
    o = m_get(wait, 1);
   }
   oobmark = 0;
  }
  if (o) {
   o->m_hdr.mh_len = 1;
   *((caddr_t)((o)->m_hdr.mh_data)) = *((caddr_t)((m)->m_hdr.mh_data));
   error = (*sosp->so_proto->pr_usrreq)(sosp, 14,
       o, ((void *)0), ((void *)0), ((void *)0));
   if (error) {
    if (sosp->so_state & 0x010)
     error = 32;
    m_freem(m);
    goto release;
   }
   len -= 1;
   so->so_sp->ssp_len += 1;
   if (oobmark) {
    oobmark -= 1;
    if (oobmark == 0)
     state |= 0x040;
   }
   m_adj(m, 1);
  }
 }
 if (so->so_rcv.sb_cc == 0 || maxreached)
  sosp->so_state &= ~0x2000;
 error = (*sosp->so_proto->pr_usrreq)(sosp, 9, m, ((void *)0), ((void *)0),
     ((void *)0));
 if (error) {
  if (sosp->so_state & 0x010)
   error = 32;
  goto release;
 }
 so->so_sp->ssp_len += len;
 if (!maxreached && nextrecord)
  goto nextpkt;
 release:
 sosp->so_state &= ~0x2000;
 if (!error && maxreached && so->so_sp->ssp_max == so->so_sp->ssp_len)
  error = 27;
 if (error)
  so->so_error = error;
 if (((so->so_state & 0x020) && so->so_rcv.sb_cc == 0) ||
     (sosp->so_state & 0x010) || maxreached || error) {
  sounsplice(so, sosp, 1);
  return (0);
 }
 if (((&so->so_sp->ssp_idletv)->tv_sec || (&so->so_sp->ssp_idletv)->tv_usec))
  timeout_add_tv(&so->so_sp->ssp_idleto, &so->so_sp->ssp_idletv);
 return (1);
}
void
sorwakeup(struct socket *so)
{
 soassertlocked(so);
 if (so->so_rcv.sb_flags & 0x20) {
  if (so->so_proto->pr_flags & 0x08)
   task_add(sosplice_taskq, &so->so_sp->ssp_task);
  else
   somove(so, 0x0002);
 }
 if (((so)->so_sp && (so)->so_sp->ssp_socket))
  return;
 sowakeup(so, &so->so_rcv);
 if (so->so_upcall)
  (*(so->so_upcall))(so, so->so_upcallarg, 0x0002);
}
void
sowwakeup(struct socket *so)
{
 soassertlocked(so);
 if (so->so_snd.sb_flags & 0x20)
  task_add(sosplice_taskq, &so->so_sp->ssp_soback->so_sp->ssp_task);
 sowakeup(so, &so->so_snd);
}
int
sosetopt(struct socket *so, int level, int optname, struct mbuf *m)
{
 int error = 0;
 soassertlocked(so);
 if (level != 0xffff) {
  if (so->so_proto->pr_ctloutput) {
   error = (*so->so_proto->pr_ctloutput)(1, so,
       level, optname, m);
   return (error);
  }
  error = 42;
 } else {
  switch (optname) {
  case 0x1000:
   if ((error = suser((__curcpu->ci_self)->ci_curproc, 0)) != 0)
    return (error);
   break;
  }
  switch (optname) {
  case 0x0080:
   if (m == ((void *)0) || m->m_hdr.mh_len != sizeof (struct linger) ||
       ((struct linger *)((m)->m_hdr.mh_data))->l_linger < 0 ||
       ((struct linger *)((m)->m_hdr.mh_data))->l_linger > 0x7fff)
    return (22);
   so->so_linger = ((struct linger *)((m)->m_hdr.mh_data))->l_linger;
  case 0x1000:
  case 0x0001:
  case 0x0008:
  case 0x0040:
  case 0x0020:
  case 0x0004:
  case 0x0200:
  case 0x0100:
  case 0x0800:
  case 0x2000:
   if (m == ((void *)0) || m->m_hdr.mh_len < sizeof (int))
    return (22);
   if (*((int *)((m)->m_hdr.mh_data)))
    so->so_options |= optname;
   else
    so->so_options &= ~optname;
   break;
  case 0x0010:
   if (m == ((void *)0) || m->m_hdr.mh_len < sizeof (int))
    return (22);
   if (*((int *)((m)->m_hdr.mh_data)))
    error = 45;
   break;
  case 0x1001:
  case 0x1002:
  case 0x1003:
  case 0x1004:
      {
   u_long cnt;
   if (m == ((void *)0) || m->m_hdr.mh_len < sizeof (int))
    return (22);
   cnt = *((int *)((m)->m_hdr.mh_data));
   if ((long)cnt <= 0)
    cnt = 1;
   switch (optname) {
   case 0x1001:
    if (so->so_state & 0x010)
     return (22);
    if (sbcheckreserve(cnt, so->so_snd.sb_wat) ||
        sbreserve(so, &so->so_snd, cnt))
     return (55);
    so->so_snd.sb_wat = cnt;
    break;
   case 0x1002:
    if (so->so_state & 0x020)
     return (22);
    if (sbcheckreserve(cnt, so->so_rcv.sb_wat) ||
        sbreserve(so, &so->so_rcv, cnt))
     return (55);
    so->so_rcv.sb_wat = cnt;
    break;
   case 0x1003:
    so->so_snd.sb_lowat =
        (cnt > so->so_snd.sb_hiwat) ?
        so->so_snd.sb_hiwat : cnt;
    break;
   case 0x1004:
    so->so_rcv.sb_lowat =
        (cnt > so->so_rcv.sb_hiwat) ?
        so->so_rcv.sb_hiwat : cnt;
    break;
   }
   break;
      }
  case 0x1005:
  case 0x1006:
      {
   struct timeval tv;
   int val;
   if (m == ((void *)0) || m->m_hdr.mh_len < sizeof (tv))
    return (22);
   __builtin_memcpy((&tv), (((struct timeval *)((m)->m_hdr.mh_data))), (sizeof tv));
   val = tvtohz(&tv);
   if (val > 0xffff)
    return (33);
   switch (optname) {
   case 0x1005:
    so->so_snd.sb_timeo = val;
    break;
   case 0x1006:
    so->so_rcv.sb_timeo = val;
    break;
   }
   break;
      }
  case 0x1021:
   if (so->so_proto->pr_domain &&
       so->so_proto->pr_domain->dom_protosw &&
       so->so_proto->pr_ctloutput) {
    struct domain *dom = so->so_proto->pr_domain;
    level = dom->dom_protosw->pr_protocol;
    error = (*so->so_proto->pr_ctloutput)
        (1, so, level, optname, m);
    return (error);
   }
   error = 42;
   break;
  case 0x1023:
   if (m == ((void *)0)) {
    error = sosplice(so, -1, 0, ((void *)0));
   } else if (m->m_hdr.mh_len < sizeof(int)) {
    return (22);
   } else if (m->m_hdr.mh_len < sizeof(struct splice)) {
    error = sosplice(so, *((int *)((m)->m_hdr.mh_data)), 0, ((void *)0));
   } else {
    error = sosplice(so,
        ((struct splice *)((m)->m_hdr.mh_data))->sp_fd,
        ((struct splice *)((m)->m_hdr.mh_data))->sp_max,
       &((struct splice *)((m)->m_hdr.mh_data))->sp_idle);
   }
   break;
  default:
   error = 42;
   break;
  }
  if (error == 0 && so->so_proto->pr_ctloutput) {
   (*so->so_proto->pr_ctloutput)(1, so,
       level, optname, m);
  }
 }
 return (error);
}
int
sogetopt(struct socket *so, int level, int optname, struct mbuf *m)
{
 int error = 0;
 soassertlocked(so);
 if (level != 0xffff) {
  if (so->so_proto->pr_ctloutput) {
   m->m_hdr.mh_len = 0;
   error = (*so->so_proto->pr_ctloutput)(0, so,
       level, optname, m);
   if (error)
    return (error);
   return (0);
  } else
   return (42);
 } else {
  m->m_hdr.mh_len = sizeof (int);
  switch (optname) {
  case 0x0080:
   m->m_hdr.mh_len = sizeof (struct linger);
   ((struct linger *)((m)->m_hdr.mh_data))->l_onoff =
    so->so_options & 0x0080;
   ((struct linger *)((m)->m_hdr.mh_data))->l_linger = so->so_linger;
   break;
  case 0x1000:
  case 0x0040:
  case 0x0001:
  case 0x0008:
  case 0x0004:
  case 0x0200:
  case 0x0020:
  case 0x0100:
  case 0x0800:
  case 0x2000:
   *((int *)((m)->m_hdr.mh_data)) = so->so_options & optname;
   break;
  case 0x0010:
   *((int *)((m)->m_hdr.mh_data)) = 0;
   break;
  case 0x1008:
   *((int *)((m)->m_hdr.mh_data)) = so->so_type;
   break;
  case 0x1007:
   *((int *)((m)->m_hdr.mh_data)) = so->so_error;
   so->so_error = 0;
   break;
  case 0x1001:
   *((int *)((m)->m_hdr.mh_data)) = so->so_snd.sb_hiwat;
   break;
  case 0x1002:
   *((int *)((m)->m_hdr.mh_data)) = so->so_rcv.sb_hiwat;
   break;
  case 0x1003:
   *((int *)((m)->m_hdr.mh_data)) = so->so_snd.sb_lowat;
   break;
  case 0x1004:
   *((int *)((m)->m_hdr.mh_data)) = so->so_rcv.sb_lowat;
   break;
  case 0x1005:
  case 0x1006:
      {
   struct timeval tv;
   int val = (optname == 0x1005 ?
       so->so_snd.sb_timeo : so->so_rcv.sb_timeo);
   m->m_hdr.mh_len = sizeof(struct timeval);
   __builtin_memset((&tv), (0), (sizeof(tv)));
   tv.tv_sec = val / hz;
   tv.tv_usec = (val % hz) * tick;
   __builtin_memcpy((((struct timeval *)((m)->m_hdr.mh_data))), (&tv), (sizeof tv));
   break;
      }
  case 0x1021:
   if (so->so_proto->pr_domain &&
       so->so_proto->pr_domain->dom_protosw &&
       so->so_proto->pr_ctloutput) {
    struct domain *dom = so->so_proto->pr_domain;
    level = dom->dom_protosw->pr_protocol;
    error = (*so->so_proto->pr_ctloutput)
        (0, so, level, optname, m);
    if (error)
     return (error);
    break;
   }
   return (42);
  case 0x1023:
      {
   off_t len;
   m->m_hdr.mh_len = sizeof(off_t);
   len = so->so_sp ? so->so_sp->ssp_len : 0;
   __builtin_memcpy((((off_t *)((m)->m_hdr.mh_data))), (&len), (sizeof(off_t)));
   break;
      }
  case 0x1022:
   if (so->so_proto->pr_protocol == 1) {
    struct unpcb *unp = ((struct unpcb *)((so)->so_pcb));
    if (unp->unp_flags & 0x01) {
     m->m_hdr.mh_len = sizeof(unp->unp_connid);
     __builtin_memcpy((((caddr_t)((m)->m_hdr.mh_data))), (&(unp->unp_connid)), (m->m_hdr.mh_len));
     break;
    }
    return (57);
   }
   return (45);
  default:
   return (42);
  }
  return (0);
 }
}
void
sohasoutofband(struct socket *so)
{
 _kernel_lock("/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../kern/uipc_socket.c", 1870);
 csignal(so->so_pgid, 16, so->so_siguid, so->so_sigeuid);
 selwakeup(&so->so_rcv.sb_sel);
 _kernel_unlock();
}
int
soo_kqfilter(struct file *fp, struct knote *kn)
{
 struct socket *so = kn->kn_ptr.p_fp->f_data;
 struct sockbuf *sb;
 ((_kernel_lock_held()) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../kern/uipc_socket.c", 1882, "_kernel_lock_held()"));
 switch (kn->kn_kevent.filter) {
 case (-1):
  if (so->so_options & 0x0002)
   kn->kn_fop = &solisten_filtops;
  else
   kn->kn_fop = &soread_filtops;
  sb = &so->so_rcv;
  break;
 case (-2):
  kn->kn_fop = &sowrite_filtops;
  sb = &so->so_snd;
  break;
 default:
  return (22);
 }
 do { (kn)->kn_selnext.sle_next = (&sb->sb_sel.si_note)->slh_first; (&sb->sb_sel.si_note)->slh_first = (kn); } while (0);
 sb->sb_flagsintr |= 0x80;
 return (0);
}
void
filt_sordetach(struct knote *kn)
{
 struct socket *so = kn->kn_ptr.p_fp->f_data;
 ((_kernel_lock_held()) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../kern/uipc_socket.c", 1911, "_kernel_lock_held()"));
 do { if ((&so->so_rcv.sb_sel.si_note)->slh_first == (kn)) { do { ((&so->so_rcv.sb_sel.si_note))->slh_first = ((&so->so_rcv.sb_sel.si_note))->slh_first->kn_selnext.sle_next; } while (0); } else { struct knote *curelm = (&so->so_rcv.sb_sel.si_note)->slh_first; while (curelm->kn_selnext.sle_next != (kn)) curelm = curelm->kn_selnext.sle_next; curelm->kn_selnext.sle_next = curelm->kn_selnext.sle_next->kn_selnext.sle_next; } ((kn)->kn_selnext.sle_next) = ((void *)-1); } while (0);
 if ((((&so->so_rcv.sb_sel.si_note)->slh_first) == ((void *)0)))
  so->so_rcv.sb_flagsintr &= ~0x80;
}
int
filt_soread(struct knote *kn, long hint)
{
 struct socket *so = kn->kn_ptr.p_fp->f_data;
 int rv;
 kn->kn_kevent.data = so->so_rcv.sb_cc;
 if (((so)->so_sp && (so)->so_sp->ssp_socket)) {
  rv = 0;
 } else
 if (so->so_state & 0x020) {
  kn->kn_kevent.flags |= 0x8000;
  kn->kn_kevent.fflags = so->so_error;
  rv = 1;
 } else if (so->so_error) {
  rv = 1;
 } else if (kn->kn_sfflags & 0x0001) {
  rv = (kn->kn_kevent.data >= kn->kn_sdata);
 } else {
  rv = (kn->kn_kevent.data >= so->so_rcv.sb_lowat);
 }
 return rv;
}
void
filt_sowdetach(struct knote *kn)
{
 struct socket *so = kn->kn_ptr.p_fp->f_data;
 ((_kernel_lock_held()) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../kern/uipc_socket.c", 1950, "_kernel_lock_held()"));
 do { if ((&so->so_snd.sb_sel.si_note)->slh_first == (kn)) { do { ((&so->so_snd.sb_sel.si_note))->slh_first = ((&so->so_snd.sb_sel.si_note))->slh_first->kn_selnext.sle_next; } while (0); } else { struct knote *curelm = (&so->so_snd.sb_sel.si_note)->slh_first; while (curelm->kn_selnext.sle_next != (kn)) curelm = curelm->kn_selnext.sle_next; curelm->kn_selnext.sle_next = curelm->kn_selnext.sle_next->kn_selnext.sle_next; } ((kn)->kn_selnext.sle_next) = ((void *)-1); } while (0);
 if ((((&so->so_snd.sb_sel.si_note)->slh_first) == ((void *)0)))
  so->so_snd.sb_flagsintr &= ~0x80;
}
int
filt_sowrite(struct knote *kn, long hint)
{
 struct socket *so = kn->kn_ptr.p_fp->f_data;
 int rv;
 kn->kn_kevent.data = sbspace(so, &so->so_snd);
 if (so->so_state & 0x010) {
  kn->kn_kevent.flags |= 0x8000;
  kn->kn_kevent.fflags = so->so_error;
  rv = 1;
 } else if (so->so_error) {
  rv = 1;
 } else if (((so->so_state & 0x002) == 0) &&
     (so->so_proto->pr_flags & 0x04)) {
  rv = 0;
 } else if (kn->kn_sfflags & 0x0001) {
  rv = (kn->kn_kevent.data >= kn->kn_sdata);
 } else {
  rv = (kn->kn_kevent.data >= so->so_snd.sb_lowat);
 }
 return (rv);
}
int
filt_solisten(struct knote *kn, long hint)
{
 struct socket *so = kn->kn_ptr.p_fp->f_data;
 kn->kn_kevent.data = so->so_qlen;
 return (kn->kn_kevent.data != 0);
}
void
sobuf_print(struct sockbuf *,
    int (*)(const char *, ...) __attribute__((__format__(__kprintf__,1,2))));
void
sobuf_print(struct sockbuf *sb,
    int (*pr)(const char *, ...) __attribute__((__format__(__kprintf__,1,2))))
{
 (*pr)("\tsb_cc: %lu\n", sb->sb_cc);
 (*pr)("\tsb_datacc: %lu\n", sb->sb_datacc);
 (*pr)("\tsb_hiwat: %lu\n", sb->sb_hiwat);
 (*pr)("\tsb_wat: %lu\n", sb->sb_wat);
 (*pr)("\tsb_mbcnt: %lu\n", sb->sb_mbcnt);
 (*pr)("\tsb_mbmax: %lu\n", sb->sb_mbmax);
 (*pr)("\tsb_lowat: %ld\n", sb->sb_lowat);
 (*pr)("\tsb_mb: %p\n", sb->sb_mb);
 (*pr)("\tsb_mbtail: %p\n", sb->sb_mbtail);
 (*pr)("\tsb_lastrecord: %p\n", sb->sb_lastrecord);
 (*pr)("\tsb_sel: ...\n");
 (*pr)("\tsb_flagsintr: %d\n", sb->sb_flagsintr);
 (*pr)("\tsb_flags: %i\n", sb->sb_flags);
 (*pr)("\tsb_timeo: %i\n", sb->sb_timeo);
}
void
so_print(void *v,
    int (*pr)(const char *, ...) __attribute__((__format__(__kprintf__,1,2))))
{
 struct socket *so = v;
 (*pr)("socket %p\n", so);
 (*pr)("so_type: %i\n", so->so_type);
 (*pr)("so_options: 0x%04x\n", so->so_options);
 (*pr)("so_linger: %i\n", so->so_linger);
 (*pr)("so_state: 0x%04x\n", so->so_state);
 (*pr)("so_pcb: %p\n", so->so_pcb);
 (*pr)("so_proto: %p\n", so->so_proto);
 (*pr)("so_head: %p\n", so->so_head);
 (*pr)("so_onq: %p\n", so->so_onq);
 (*pr)("so_q0: @%p first: %p\n", &so->so_q0, ((&so->so_q0)->tqh_first));
 (*pr)("so_q: @%p first: %p\n", &so->so_q, ((&so->so_q)->tqh_first));
 (*pr)("so_eq: next: %p\n", ((so)->so_qe.tqe_next));
 (*pr)("so_q0len: %i\n", so->so_q0len);
 (*pr)("so_qlen: %i\n", so->so_qlen);
 (*pr)("so_qlimit: %i\n", so->so_qlimit);
 (*pr)("so_timeo: %i\n", so->so_timeo);
 (*pr)("so_pgid: %i\n", so->so_pgid);
 (*pr)("so_siguid: %i\n", so->so_siguid);
 (*pr)("so_sigeuid: %i\n", so->so_sigeuid);
 (*pr)("so_obmark: %lu\n", so->so_oobmark);
 (*pr)("so_sp: %p\n", so->so_sp);
 if (so->so_sp != ((void *)0)) {
  (*pr)("\tssp_socket: %p\n", so->so_sp->ssp_socket);
  (*pr)("\tssp_soback: %p\n", so->so_sp->ssp_soback);
  (*pr)("\tssp_len: %lld\n",
      (unsigned long long)so->so_sp->ssp_len);
  (*pr)("\tssp_max: %lld\n",
      (unsigned long long)so->so_sp->ssp_max);
  (*pr)("\tssp_idletv: %lld %ld\n", so->so_sp->ssp_idletv.tv_sec,
      so->so_sp->ssp_idletv.tv_usec);
  (*pr)("\tssp_idleto: %spending (@%i)\n",
      ((&so->so_sp->ssp_idleto)->to_flags & 2) ? "" : "not ",
      so->so_sp->ssp_idleto.to_time);
 }
 (*pr)("so_rcv:\n");
 sobuf_print(&so->so_rcv, pr);
 (*pr)("so_snd:\n");
 sobuf_print(&so->so_snd, pr);
 (*pr)("so_upcall: %p so_upcallarg: %p\n",
     so->so_upcall, so->so_upcallarg);
 (*pr)("so_euid: %d so_ruid: %d\n", so->so_euid, so->so_ruid);
 (*pr)("so_egid: %d so_rgid: %d\n", so->so_egid, so->so_rgid);
 (*pr)("so_cpid: %d\n", so->so_cpid);
}
