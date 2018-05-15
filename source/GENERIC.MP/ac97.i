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
int suser(struct proc *p);
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
 struct proc *spc_idleproc;
 struct prochead { struct proc *tqh_first; struct proc **tqh_last; } spc_qs[32];
 struct { struct proc *lh_first; } spc_deadproc;
 struct timespec spc_runtime;
 volatile int spc_schedflags;
 u_int spc_schedticks;
 u_int64_t spc_cp_time[6];
 u_char spc_curpriority;
 int spc_rrticks;
 int spc_pscnt;
 int spc_psdiv;
 u_int spc_nrun;
 fixpt_t spc_ldavg;
 volatile uint32_t spc_whichqs;
 volatile u_int spc_spinning;
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
extern int db_active;
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
size_t getsn(char *, size_t)
  __attribute__ ((__bounded__(__string__,1,2)));
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
const struct audio_params ac97_audio_default = {
 48000,
 6,
 16,
 2,
 1,
 2
};
const struct audio_mixer_enum ac97_on_off = {
 2,
 { { { "off" } , 0 },
 { { "on" } , 1 } }
};
const struct audio_mixer_enum ac97_mic_select = {
 2,
 { { { "mic" "0" }, 0 },
 { { "mic" "1" }, 1 } }
};
const struct audio_mixer_enum ac97_mono_select = {
 2,
 { { { "mixerout" }, 0 },
 { { "mic" }, 1 } }
};
const struct audio_mixer_enum ac97_source = {
 8,
 { { { "mic" } , 0 },
 { { "cd" }, 1 },
 { { "video" }, 2 },
 { { "aux" }, 3 },
 { { "line" }, 4 },
 { { "mixerout" }, 5 },
 { { "mixerout" "mono" }, 6 },
 { { "phone" }, 7 }}
};
const struct audio_mixer_value ac97_volume_stereo = {
 { "volume" },
 2
};
const struct audio_mixer_value ac97_volume_mono = {
 { "volume" },
 1
};
const struct ac97_source_info {
 char *class;
 char *device;
 char *qualifier;
 int type;
 const void *info;
 int16_t info_size;
 u_int8_t reg64;
 u_int16_t default_value;
 u_int8_t bits:3;
 u_int8_t ofs:4;
 u_int8_t mute:1;
 u_int8_t polarity:1;
 enum {
  CHECK_NONE = 0,
  CHECK_SURROUND,
  CHECK_CENTER,
  CHECK_LFE,
  CHECK_HEADPHONES,
  CHECK_TONE,
  CHECK_MIC,
  CHECK_LOUDNESS,
  CHECK_3D,
  CHECK_SPDIF
 } req_feature;
 int16_t prev;
 int16_t next;
 int16_t mixer_class;
} source_info[] = {
 { "inputs", ((void *)0), ((void *)0),
   0, },
 { "outputs", ((void *)0), ((void *)0),
   0, },
 { "record", ((void *)0), ((void *)0),
   0, },
 { "outputs", "master", ((void *)0),
   3, &ac97_volume_stereo, sizeof(ac97_volume_stereo),
   0x02, 0x8000, 5, 0, 1,
 },
 { "outputs", "mono", ((void *)0),
   3, &ac97_volume_mono, sizeof(ac97_volume_mono),
   0x06, 0x8000, 6, 0, 1,
 },
 { "outputs", "mono", "source",
   1, &ac97_mono_select, sizeof(ac97_mono_select),
   0x20, 0x0000, 1, 9, 0,
 },
 { "outputs", "hp", ((void *)0),
   3, &ac97_volume_stereo, sizeof(ac97_volume_stereo),
   0x04, 0x8000, 6, 0, 1, 0, CHECK_HEADPHONES
 },
 { "outputs", "surround", ((void *)0),
   3, &ac97_volume_stereo, sizeof(ac97_volume_stereo),
   0x38, 0x8080, 5, 0, 1, 0, CHECK_SURROUND
 },
 { "outputs", "center", ((void *)0),
   3, &ac97_volume_mono, sizeof(ac97_volume_mono),
   0x36, 0x8080, 5, 0, 0, 0, CHECK_CENTER
 },
 { "outputs", "center", "mute",
   1, &ac97_on_off, sizeof(ac97_on_off),
   0x36, 0x8080, 1, 7, 0, 0, CHECK_CENTER
 },
 { "outputs", "lfe", ((void *)0),
   3, &ac97_volume_mono, sizeof(ac97_volume_mono),
   0x36, 0x8080, 5, 8, 0, 0, CHECK_LFE
 },
 { "outputs", "lfe", "mute",
   1, &ac97_on_off, sizeof(ac97_on_off),
   0x36, 0x8080, 1, 15, 0, 0, CHECK_LFE
 },
 { "outputs", "tone", ((void *)0),
   3, &ac97_volume_stereo, sizeof(ac97_volume_stereo),
   0x08, 0x0f0f, 4, 0, 0, 0, CHECK_TONE
 },
 { "inputs", "spkr", ((void *)0),
   3, &ac97_volume_mono, sizeof(ac97_volume_mono),
   0x0a, 0x0000, 4, 1, 1,
 },
 { "inputs", "phone", ((void *)0),
   3, &ac97_volume_mono, sizeof(ac97_volume_mono),
   0x0c, 0x8008, 5, 0, 1,
 },
 { "inputs", "mic", ((void *)0),
   3, &ac97_volume_mono, sizeof(ac97_volume_mono),
   0x0e, 0x8008, 5, 0, 1,
 },
 { "inputs", "mic", "preamp",
   1, &ac97_on_off, sizeof(ac97_on_off),
   0x0e, 0x8008, 1, 6, 0,
 },
 { "inputs", "mic", "source",
   1, &ac97_mic_select, sizeof(ac97_mic_select),
   0x20, 0x0000, 1, 8, 0,
 },
 { "inputs", "line", ((void *)0),
   3, &ac97_volume_stereo, sizeof(ac97_volume_stereo),
   0x10, 0x8808, 5, 0, 1,
 },
 { "inputs", "cd", ((void *)0),
   3, &ac97_volume_stereo, sizeof(ac97_volume_stereo),
   0x12, 0x8808, 5, 0, 1,
 },
 { "inputs", "video", ((void *)0),
   3, &ac97_volume_stereo, sizeof(ac97_volume_stereo),
   0x14, 0x8808, 5, 0, 1,
 },
 { "inputs", "aux", ((void *)0),
   3, &ac97_volume_stereo, sizeof(ac97_volume_stereo),
   0x16, 0x8808, 5, 0, 1,
 },
 { "inputs", "dac", ((void *)0),
   3, &ac97_volume_stereo, sizeof(ac97_volume_stereo),
   0x18, 0x8808, 5, 0, 1,
 },
 { "record", "source", ((void *)0),
   1, &ac97_source, sizeof(ac97_source),
   0x1a, 0x0000, 3, 0, 0,
 },
 { "record", "volume", ((void *)0),
   3, &ac97_volume_stereo, sizeof(ac97_volume_stereo),
   0x1c, 0x8000, 4, 0, 1,
 },
 { "record", "mic", ((void *)0),
   3, &ac97_volume_mono, sizeof(ac97_volume_mono),
   0x1e, 0x8000, 4, 0, 1, 1, CHECK_MIC
 },
 { "outputs", "loudness", ((void *)0),
   1, &ac97_on_off, sizeof(ac97_on_off),
   0x20, 0x0000, 1, 12, 0, 0, CHECK_LOUDNESS
 },
 { "outputs", "spatial", ((void *)0),
   1, &ac97_on_off, sizeof(ac97_on_off),
   0x20, 0x0000, 1, 13, 0, 1, CHECK_3D
 },
 { "outputs", "spatial", "center",
   3, &ac97_volume_mono, sizeof(ac97_volume_mono),
   0x22, 0x0000, 4, 8, 0, 1, CHECK_3D
 },
 { "outputs", "spatial", "depth",
   3, &ac97_volume_mono, sizeof(ac97_volume_mono),
   0x22, 0x0000, 4, 0, 0, 1, CHECK_3D
 },
 { "outputs", "extamp", ((void *)0),
   1, &ac97_on_off, sizeof(ac97_on_off),
   0x26, 0x0000, 1, 15, 0, 0
 },
 { "outputs", "spdif", ((void *)0),
   1, &ac97_on_off, sizeof(ac97_on_off),
   0x2a, 0x0000, 1, 2, 0, 0, CHECK_SPDIF
 }
};
struct ac97_softc {
 struct ac97_codec_if codec_if;
 struct ac97_host_if *host_if;
 struct ac97_source_info source_info[(2 * (sizeof((source_info)) / sizeof((source_info)[0])))];
 int num_source_info;
 enum ac97_host_flags host_flags;
 unsigned int ac97_clock;
 u_int16_t caps;
 u_int16_t ext_id;
 u_int16_t shadow_reg[128];
 int lock_counter;
};
int ac97_mixer_get_port(struct ac97_codec_if *, mixer_ctrl_t *);
int ac97_mixer_set_port(struct ac97_codec_if *, mixer_ctrl_t *);
void ac97_lock(struct ac97_codec_if *);
void ac97_unlock(struct ac97_codec_if *);
int ac97_query_devinfo(struct ac97_codec_if *, mixer_devinfo_t *);
int ac97_get_portnum_by_name(struct ac97_codec_if *, char *, char *,
     char *);
int ac97_set_rate(struct ac97_codec_if *codec_if, int target, u_long *rate);
void ac97_set_clock(struct ac97_codec_if *codec_if, unsigned int clock);
u_int16_t ac97_get_extcaps(struct ac97_codec_if *codec_if);
int ac97_add_port(struct ac97_softc *as, struct ac97_source_info *src);
void ac97_ad1885_init(struct ac97_softc *, int);
void ac97_ad1886_init(struct ac97_softc *, int);
void ac97_ad198x_init(struct ac97_softc *, int);
void ac97_alc650_init(struct ac97_softc *, int);
void ac97_cx20468_init(struct ac97_softc *, int);
void ac97_vt1616_init(struct ac97_softc *, int);
struct ac97_codec_if_vtbl ac97civ = {
 ac97_mixer_get_port,
 ac97_mixer_set_port,
 ac97_query_devinfo,
 ac97_get_portnum_by_name,
 ac97_get_extcaps,
 ac97_set_rate,
 ac97_set_clock,
 ac97_lock,
 ac97_unlock
};
const struct ac97_codecid {
 u_int8_t id;
 u_int8_t mask;
 u_int8_t rev;
 u_int8_t shift;
 char * const name;
 void (*init)(struct ac97_softc *, int);
} ac97_ad[] = {
 { 0x03, 0xff, 0, 0, "AD1819" },
 { 0x40, 0xff, 0, 0, "AD1881" },
 { 0x48, 0xff, 0, 0, "AD1881A" },
 { 0x60, 0xff, 0, 0, "AD1885", ac97_ad1885_init },
 { 0x61, 0xff, 0, 0, "AD1886", ac97_ad1886_init },
 { 0x63, 0xff, 0, 0, "AD1886A" },
 { 0x68, 0xff, 0, 0, "AD1888", ac97_ad198x_init },
 { 0x70, 0xff, 0, 0, "AD1980", ac97_ad198x_init },
 { 0x72, 0xff, 0, 0, "AD1981A" },
 { 0x74, 0xff, 0, 0, "AD1981B" },
 { 0x75, 0xff, 0, 0, "AD1985", ac97_ad198x_init },
}, ac97_ak[] = {
 { 0x00, 0xfe, 1, 0, "AK4540" },
 { 0x01, 0xfe, 1, 0, "AK4540" },
 { 0x02, 0xff, 0, 0, "AK4543" },
 { 0x05, 0xff, 0, 0, "AK4544" },
 { 0x06, 0xff, 0, 0, "AK4544A" },
 { 0x07, 0xff, 0, 0, "AK4545" },
}, ac97_av[] = {
 { 0x10, 0xff, 0, 0, "ALC200" },
 { 0x20, 0xff, 0, 0, "ALC650" },
 { 0x21, 0xff, 0, 0, "ALC650D" },
 { 0x22, 0xff, 0, 0, "ALC650E" },
 { 0x23, 0xff, 0, 0, "ALC650F" },
 { 0x30, 0xff, 0, 0, "ALC101" },
 { 0x40, 0xff, 0, 0, "ALC202" },
 { 0x50, 0xff, 0, 0, "ALC250" },
 { 0x52, 0xff, 0, 0, "ALC250A?" },
 { 0x60, 0xf0, 0xf, 0, "ALC655", ac97_alc650_init },
 { 0x70, 0xf0, 0xf, 0, "ALC203" },
 { 0x80, 0xf0, 0xf, 0, "ALC658", ac97_alc650_init },
 { 0x90, 0xf0, 0xf, 0, "ALC850" },
}, ac97_rl[] = {
 { 0x00, 0xf0, 0xf, 0, "RL5306" },
 { 0x10, 0xf0, 0xf, 0, "RL5382" },
 { 0x20, 0xf0, 0xf, 0, "RL5383" },
}, ac97_cm[] = {
 { 0x41, 0xff, 0, 0, "CMI9738" },
 { 0x61, 0xff, 0, 0, "CMI9739" },
 { 0x78, 0xff, 0, 0, "CMI9761A" },
 { 0x82, 0xff, 0, 0, "CMI9761B" },
 { 0x83, 0xff, 0, 0, "CMI9761A+" },
}, ac97_cr[] = {
 { 0x84, 0xff, 0, 0, "EV1938" },
}, ac97_cs[] = {
 { 0x00, 0xf8, 7, 0, "CS4297" },
 { 0x10, 0xf8, 7, 0, "CS4297A" },
 { 0x20, 0xf8, 7, 0, "CS4298" },
 { 0x28, 0xf8, 7, 0, "CS4294" },
 { 0x30, 0xf8, 7, 0, "CS4299" },
 { 0x48, 0xf8, 7, 0, "CS4201" },
 { 0x58, 0xf8, 7, 0, "CS4205" },
 { 0x60, 0xf8, 7, 0, "CS4291" },
 { 0x70, 0xf8, 7, 0, "CS4202" },
}, ac97_cx[] = {
 { 0x21, 0xff, 0, 0, "HSD11246" },
 { 0x28, 0xf8, 7, 0, "CX20468", ac97_cx20468_init },
 { 0x30, 0xff, 0, 0, "CXT48", },
 { 0x42, 0xff, 0, 0, "CXT66", },
}, ac97_dt[] = {
 { 0x00, 0xff, 0, 0, "DT0398" },
}, ac97_em[] = {
 { 0x23, 0xff, 0, 0, "EM28023" },
 { 0x28, 0xff, 0, 0, "EM28028" },
}, ac97_es[] = {
 { 0x08, 0xff, 0, 0, "ES1921" },
}, ac97_is[] = {
 { 0x00, 0xff, 0, 0, "HMP9701" },
}, ac97_ic[] = {
 { 0x01, 0xff, 0, 0, "ICE1230" },
 { 0x11, 0xff, 0, 0, "ICE1232" },
 { 0x14, 0xff, 0, 0, "ICE1232A" },
 { 0x51, 0xff, 0, 0, "VIA VT1616" },
 { 0x52, 0xff, 0, 0, "VIA VT1616i", ac97_vt1616_init },
}, ac97_it[] = {
 { 0x20, 0xff, 0, 0, "ITE2226E" },
 { 0x60, 0xff, 0, 0, "ITE2646E" },
}, ac97_ns[] = {
 { 0x00, 0xff, 0, 0, "LM454[03568]" },
 { 0x31, 0xff, 0, 0, "LM4549" },
 { 0x40, 0xff, 0, 0, "LM4540" },
 { 0x43, 0xff, 0, 0, "LM4543" },
 { 0x46, 0xff, 0, 0, "LM4546A" },
 { 0x48, 0xff, 0, 0, "LM4548A" },
 { 0x49, 0xff, 0, 0, "LM4549A" },
 { 0x50, 0xff, 0, 0, "LM4550" },
}, ac97_ps[] = {
 { 0x01, 0xff, 0, 0, "UCB1510" },
 { 0x04, 0xff, 0, 0, "UCB1400" },
}, ac97_sl[] = {
 { 0x20, 0xe0, 0, 0, "Si3036/38" },
}, ac97_st[] = {
 { 0x00, 0xff, 0, 0, "STAC9700" },
 { 0x04, 0xff, 0, 0, "STAC970[135]" },
 { 0x05, 0xff, 0, 0, "STAC9704" },
 { 0x08, 0xff, 0, 0, "STAC9708/11" },
 { 0x09, 0xff, 0, 0, "STAC9721/23" },
 { 0x44, 0xff, 0, 0, "STAC9744/45" },
 { 0x50, 0xff, 0, 0, "STAC9750/51" },
 { 0x52, 0xff, 0, 0, "STAC9752/53" },
 { 0x56, 0xff, 0, 0, "STAC9756/57" },
 { 0x58, 0xff, 0, 0, "STAC9758/59" },
 { 0x60, 0xff, 0, 0, "STAC9760/61" },
 { 0x62, 0xff, 0, 0, "STAC9762/63" },
 { 0x66, 0xff, 0, 0, "STAC9766/67" },
 { 0x84, 0xff, 0, 0, "STAC9784/85" },
}, ac97_vi[] = {
 { 0x61, 0xff, 0, 0, "VT1612A" },
 { 0x70, 0xff, 0, 0, "VT1617" },
}, ac97_tt[] = {
 { 0x02, 0xff, 0, 0, "TR28022" },
 { 0x03, 0xff, 0, 0, "TR28023" },
 { 0x06, 0xff, 0, 0, "TR28026" },
 { 0x08, 0xff, 0, 0, "TR28028" },
 { 0x23, 0xff, 0, 0, "TR28602" },
}, ac97_ti[] = {
 { 0x20, 0xff, 0, 0, "TLC320AD9xC" },
}, ac97_wb[] = {
 { 0x01, 0xff, 0, 0, "W83971D" },
}, ac97_wo[] = {
 { 0x00, 0xff, 0, 0, "WM9701A" },
 { 0x03, 0xff, 0, 0, "WM9704M/Q-0" },
 { 0x04, 0xff, 0, 0, "WM9704M/Q-1" },
 { 0x05, 0xff, 0, 0, "WM9705/10" },
 { 0x09, 0xff, 0, 0, "WM9709" },
 { 0x12, 0xff, 0, 0, "WM9711/12" },
}, ac97_ym[] = {
 { 0x00, 0xff, 0, 0, "YMF743-S" },
 { 0x02, 0xff, 0, 0, "YMF752-S" },
 { 0x03, 0xff, 0, 0, "YMF753-S" },
};
const struct ac97_vendorid {
 u_int32_t id;
 char * const name;
 const struct ac97_codecid * const codecs;
 u_int8_t num;
} ac97_vendors[] = {
 { 0x01408300, "Creative", ac97_cr, (sizeof((ac97_cr)) / sizeof((ac97_cr)[0])) },
 { 0x41445300, "Analog Devices", ac97_ad, (sizeof((ac97_ad)) / sizeof((ac97_ad)[0])) },
 { 0x414b4D00, "Asahi Kasei", ac97_ak, (sizeof((ac97_ak)) / sizeof((ac97_ak)[0])) },
 { 0x414c4300, "Realtek", ac97_rl, (sizeof((ac97_rl)) / sizeof((ac97_rl)[0])) },
 { 0x414c4700, "Avance Logic", ac97_av, (sizeof((ac97_av)) / sizeof((ac97_av)[0])) },
 { 0x434d4900, "C-Media Electronics", ac97_cm, (sizeof((ac97_cm)) / sizeof((ac97_cm)[0])) },
 { 0x43525900, "Cirrus Logic", ac97_cs, (sizeof((ac97_cs)) / sizeof((ac97_cs)[0])) },
 { 0x43585400, "Conexant", ac97_cx, (sizeof((ac97_cx)) / sizeof((ac97_cx)[0])) },
 { 0x44543000, "Diamond Technology", ac97_dt, (sizeof((ac97_dt)) / sizeof((ac97_dt)[0])) },
 { 0x454d4300, "eMicro", ac97_em, (sizeof((ac97_em)) / sizeof((ac97_em)[0])) },
 { 0x45838300, "ESS Technology", ac97_es, (sizeof((ac97_es)) / sizeof((ac97_es)[0])) },
 { 0x48525300, "Intersil", ac97_is, (sizeof((ac97_is)) / sizeof((ac97_is)[0])) },
 { 0x49434500, "ICEnsemble", ac97_ic, (sizeof((ac97_ic)) / sizeof((ac97_ic)[0])) },
 { 0x49544500, "ITE, Inc.", ac97_it, (sizeof((ac97_it)) / sizeof((ac97_it)[0])) },
 { 0x4e534300, "National Semiconductor", ac97_ns, (sizeof((ac97_ns)) / sizeof((ac97_ns)[0])) },
 { 0x50534300, "Philips Semiconductor", ac97_ps, (sizeof((ac97_ps)) / sizeof((ac97_ps)[0])) },
 { 0x53494c00, "Silicon Laboratory", ac97_sl, (sizeof((ac97_sl)) / sizeof((ac97_sl)[0])) },
 { 0x54524100, "TriTech Microelectronics", ac97_tt, (sizeof((ac97_tt)) / sizeof((ac97_tt)[0])) },
 { 0x54584e00, "Texas Instruments", ac97_ti, (sizeof((ac97_ti)) / sizeof((ac97_ti)[0])) },
 { 0x56494100, "VIA Technologies", ac97_vi, (sizeof((ac97_vi)) / sizeof((ac97_vi)[0])) },
 { 0x57454300, "Winbond", ac97_wb, (sizeof((ac97_wb)) / sizeof((ac97_wb)[0])) },
 { 0x574d4c00, "Wolfson", ac97_wo, (sizeof((ac97_wo)) / sizeof((ac97_wo)[0])) },
 { 0x594d4800, "Yamaha", ac97_ym, (sizeof((ac97_ym)) / sizeof((ac97_ym)[0])) },
 { 0x83847600, "SigmaTel", ac97_st, (sizeof((ac97_st)) / sizeof((ac97_st)[0])) },
};
const char * const ac97enhancement[] = {
 "No 3D Stereo",
 "Analog Devices Phat Stereo",
 "Creative",
 "National Semi 3D",
 "Yamaha Ymersion",
 "BBE 3D",
 "Crystal Semi 3D",
 "Qsound QXpander",
 "Spatializer 3D",
 "SRS 3D",
 "Platform Tech 3D",
 "AKM 3D",
 "Aureal",
 "AZTECH 3D",
 "Binaura 3D",
 "ESS Technology",
 "Harman International VMAx",
 "Nvidea 3D",
 "Philips Incredible Sound",
 "Texas Instruments 3D",
 "VLSI Technology 3D",
 "TriTech 3D",
 "Realtek 3D",
 "Samsung 3D",
 "Wolfson Microelectronics 3D",
 "Delta Integration 3D",
 "SigmaTel 3D",
 "KS Waves 3D",
 "Rockwell 3D",
 "Unknown 3D",
 "Unknown 3D",
 "Unknown 3D"
};
const char * const ac97feature[] = {
 "mic channel",
 "reserved",
 "tone",
 "simulated stereo",
 "headphone",
 "bass boost",
 "18 bit DAC",
 "20 bit DAC",
 "18 bit ADC",
 "20 bit ADC"
};
int ac97_str_equal(const char *, const char *);
int ac97_check_capability(struct ac97_softc *, int);
void ac97_setup_source_info(struct ac97_softc *);
void ac97_setup_defaults(struct ac97_softc *);
int ac97_read(struct ac97_softc *, u_int8_t, u_int16_t *);
int ac97_write(struct ac97_softc *, u_int8_t, u_int16_t);
int
ac97_read(struct ac97_softc *as, u_int8_t reg64, u_int16_t *val)
{
 int error;
 if (((as->host_flags & AC97_HOST_DONT_READ) &&
     (reg64 != 0x7c && reg64 != 0x7e &&
     reg64 != 0x00)) ||
     (as->host_flags & AC97_HOST_DONT_READANY)) {
  *val = as->shadow_reg[reg64 >> 1];
  return (0);
 }
 if ((error = as->host_if->read(as->host_if->arg, reg64, val)))
  *val = as->shadow_reg[reg64 >> 1];
 return (error);
}
int
ac97_write(struct ac97_softc *as, u_int8_t reg64, u_int16_t val)
{
 as->shadow_reg[reg64 >> 1] = val;
 return (as->host_if->write(as->host_if->arg, reg64, val));
}
void
ac97_setup_defaults(struct ac97_softc *as)
{
 int idx;
 __builtin_bzero((as->shadow_reg), (sizeof(as->shadow_reg)));
 for (idx = 0; idx < (sizeof((source_info)) / sizeof((source_info)[0])); idx++) {
  const struct ac97_source_info *si = &source_info[idx];
  ac97_write(as, si->reg64, si->default_value);
 }
}
int
ac97_str_equal(const char *a, const char *b)
{
 return ((a == b) || (a && b && (!strcmp(a, b))));
}
int
ac97_check_capability(struct ac97_softc *as, int check)
{
 switch (check) {
 case CHECK_NONE:
  return 1;
 case CHECK_SURROUND:
  return as->ext_id & 0x0080;
 case CHECK_CENTER:
  return as->ext_id & 0x0040;
 case CHECK_LFE:
  return as->ext_id & 0x0100;
 case CHECK_SPDIF:
  return as->ext_id & 0x0004;
 case CHECK_HEADPHONES:
  return as->caps & 0x0010;
 case CHECK_TONE:
  return as->caps & 0x0004;
 case CHECK_MIC:
  return as->caps & 0x0001;
 case CHECK_LOUDNESS:
  return as->caps & 0x0020;
 case CHECK_3D:
  return (((as->caps) >> 10) & 0x1f) != 0;
 default:
  printf("%s: internal error: feature=%d\n", __func__, check);
  return 0;
 }
}
void
ac97_setup_source_info(struct ac97_softc *as)
{
 struct ac97_source_info *si, *si2;
 int idx, ouridx;
 for (idx = 0, ouridx = 0; idx < (sizeof((source_info)) / sizeof((source_info)[0])); idx++) {
  si = &as->source_info[ouridx];
  if (!ac97_check_capability(as, source_info[idx].req_feature))
   continue;
  __builtin_bcopy((&source_info[idx]), (si), (sizeof(*si)));
  switch (si->type) {
  case 0:
   si->mixer_class = ouridx;
   ouridx++;
   break;
  case 3:
   ouridx++;
   if (si->mute) {
    si = &as->source_info[ouridx];
    __builtin_bcopy((&source_info[idx]), (si), (sizeof(*si)));
    si->qualifier = "mute";
    si->type = 1;
    si->info = &ac97_on_off;
    si->info_size = sizeof(ac97_on_off);
    si->bits = 1;
    si->ofs = 15;
    si->mute = 0;
    si->polarity = 0;
    ouridx++;
   }
   break;
  case 1:
   ouridx++;
   break;
  default:
   printf ("ac97: shouldn't get here\n");
   break;
  }
 }
 as->num_source_info = ouridx;
 for (idx = 0; idx < as->num_source_info; idx++) {
  int idx2, previdx;
  si = &as->source_info[idx];
  for (idx2 = 0; idx2 < as->num_source_info; idx2++) {
   si2 = &as->source_info[idx2];
   if (si2->type == 0 &&
       ac97_str_equal(si->class, si2->class)) {
    si->mixer_class = idx2;
   }
  }
  if (si->prev != 0 || si->qualifier)
   continue;
  si->prev = -1;
  previdx = idx;
  for (idx2 = 0; idx2 < as->num_source_info; idx2++) {
   if (idx2 == idx)
    continue;
   si2 = &as->source_info[idx2];
   if (!si2->prev &&
       ac97_str_equal(si->class, si2->class) &&
       ac97_str_equal(si->device, si2->device)) {
    as->source_info[previdx].next = idx2;
    as->source_info[idx2].prev = previdx;
    previdx = idx2;
   }
  }
  as->source_info[previdx].next = -1;
 }
}
int
ac97_attach(struct ac97_host_if *host_if)
{
 struct ac97_softc *as;
 u_int16_t id1, id2, val;
 u_int32_t id;
 u_int16_t extstat, rate;
 mixer_ctrl_t ctl;
 int error, i;
 void (*initfunc)(struct ac97_softc *, int);
 initfunc = ((void *)0);
 if (!(as = malloc(sizeof(*as), 2, 0x0002 | 0x0008)))
  return (12);
 as->codec_if.as = as;
 as->codec_if.vtbl = &ac97civ;
 as->host_if = host_if;
 if ((error = host_if->attach(host_if->arg, &as->codec_if))) {
  free(as, 2, sizeof(*as));
  return (error);
 }
 host_if->reset(host_if->arg);
 delay(1000);
 host_if->write(host_if->arg, 0x26, 0);
 host_if->write(host_if->arg, 0x00, 0);
 delay(10000);
 if (host_if->flags)
  as->host_flags = host_if->flags(host_if->arg);
 ac97_setup_defaults(as);
 ac97_read(as, 0x7c, &id1);
 ac97_read(as, 0x7e, &id2);
 ac97_read(as, 0x00, &as->caps);
 id = (id1 << 16) | id2;
 if (id) {
  register const struct ac97_vendorid *vendor;
  register const struct ac97_codecid *codec;
  printf("ac97: codec id 0x%08x", id);
  for (vendor = &ac97_vendors[sizeof(ac97_vendors) /
       sizeof(ac97_vendors[0]) - 1];
       vendor >= ac97_vendors; vendor--) {
   if (vendor->id == (id & 0xffffff00)) {
    printf(" (%s", vendor->name);
    for (codec = &vendor->codecs[vendor->num-1];
         codec >= vendor->codecs; codec--) {
     if (codec->id == (id & codec->mask))
      break;
    }
    if (codec >= vendor->codecs && codec->mask) {
     printf(" %s", codec->name);
     initfunc = codec->init;
    } else
     printf(" <%02x>", id & 0xff);
    if (codec >= vendor->codecs && codec->rev)
     printf(" rev %d", id & codec->rev);
    printf(")");
    break;
   }
  }
  printf("\n");
 } else
  printf("ac97: codec id not read\n");
 if (as->caps) {
  printf("ac97: codec features ");
  for (i = 0; i < 10; i++) {
   if (as->caps & (1 << i))
    printf("%s, ", ac97feature[i]);
  }
  printf("%s\n",
      ac97enhancement[(((as->caps) >> 10) & 0x1f)]);
 }
 as->ac97_clock = 48000U;
 ac97_read(as, 0x28, &as->ext_id);
 if (as->ext_id & (0x0001 | 0x0002
     | 0x0004 | 0x0008
     | 0x0040 | 0x0080
     | 0x0100)) {
  ac97_read(as, 0x2a, &extstat);
  extstat &= ~0x0002;
  if (as->ext_id & 0x0008)
   extstat |= 0x0008;
  if (as->ext_id & 0x0100)
   extstat |= 0x0100;
  if (as->ext_id & 0x0080)
   extstat |= 0x0080;
  if (as->ext_id & 0x0040)
   extstat |= 0x0040;
  if (as->ext_id & 0x0004) {
   extstat &= ~0x0030;
   extstat |= 0x0000;
   ac97_read(as, 0x3a, &val);
   val = (val & ~0x3000) |
       0x2000;
   ac97_write(as, 0x3a, val);
  }
  if (as->ext_id & 0x0001)
   extstat |= 0x0001;
  ac97_write(as, 0x2a, extstat);
  if (as->ext_id & 0x0001) {
   ac97_write(as, 0x2c, 44100);
   ac97_read(as, 0x2c, &rate);
   if (rate != 44100) {
    as->ext_id = 0;
   }
   ac97_write(as, 0x2c,
       48000);
  }
 }
 ac97_setup_source_info(as);
 delay(900 * 1000);
 as->codec_if.initfunc = initfunc;
 if (initfunc != ((void *)0))
  initfunc(as, 0);
 __builtin_bzero((&ctl), (sizeof(ctl)));
 ctl.type = 1;
 ctl.un.ord = 0;
 ctl.dev = ac97_get_portnum_by_name(&as->codec_if, "outputs",
     "master", "mute");
 ac97_mixer_set_port(&as->codec_if, &ctl);
 ctl.dev = ac97_get_portnum_by_name(&as->codec_if, "inputs",
     "dac", "mute");
 ac97_mixer_set_port(&as->codec_if, &ctl);
 ctl.dev = ac97_get_portnum_by_name(&as->codec_if, "record",
     "volume", "mute");
 ac97_mixer_set_port(&as->codec_if, &ctl);
 ctl.type = 1;
 ctl.un.ord = 0;
 ctl.dev = ac97_get_portnum_by_name(&as->codec_if, "record",
     "source", ((void *)0));
 ac97_mixer_set_port(&as->codec_if, &ctl);
 return (0);
}
int
ac97_resume(struct ac97_host_if *host_if, struct ac97_codec_if *codec_if)
{
 struct ac97_softc *as = codec_if->as;
 u_int16_t val, extstat;
 host_if->reset(host_if->arg);
 delay(1000);
 host_if->write(host_if->arg, 0x26, 0);
 host_if->write(host_if->arg, 0x00, 0);
 delay(10000);
 if (as->ext_id & (0x0001 | 0x0002
     | 0x0004 | 0x0008
     | 0x0040 | 0x0080
     | 0x0100)) {
  ac97_read(as, 0x2a, &extstat);
  extstat &= ~0x0002;
  if (as->ext_id & 0x0008)
   extstat |= 0x0008;
  if (as->ext_id & 0x0100)
   extstat |= 0x0100;
  if (as->ext_id & 0x0080)
   extstat |= 0x0080;
  if (as->ext_id & 0x0040)
   extstat |= 0x0040;
  if (as->ext_id & 0x0004) {
   extstat &= ~0x0030;
   extstat |= 0x0000;
   ac97_read(as, 0x3a, &val);
   val = (val & ~0x3000) |
       0x2000;
   ac97_write(as, 0x3a, val);
  }
  if (as->ext_id & 0x0001)
   extstat |= 0x0001;
  ac97_write(as, 0x2a, extstat);
 }
 if (as->codec_if.initfunc != ((void *)0))
  as->codec_if.initfunc(as, 1);
 return (0);
}
void
ac97_lock(struct ac97_codec_if *codec_if)
{
 struct ac97_softc *as = (struct ac97_softc *)codec_if;
 as->lock_counter++;
}
void
ac97_unlock(struct ac97_codec_if *codec_if)
{
 struct ac97_softc *as = (struct ac97_softc *)codec_if;
 as->lock_counter--;
}
int
ac97_query_devinfo(struct ac97_codec_if *codec_if, mixer_devinfo_t *dip)
{
 struct ac97_softc *as = (struct ac97_softc *)codec_if;
 if (dip->index < as->num_source_info && dip->index >= 0) {
  struct ac97_source_info *si = &as->source_info[dip->index];
  const char *name;
  dip->type = si->type;
  dip->mixer_class = si->mixer_class;
  dip->prev = si->prev;
  dip->next = si->next;
  if (si->qualifier)
   name = si->qualifier;
  else if (si->device)
   name = si->device;
  else if (si->class)
   name = si->class;
  else
   name = ((void *)0);
  if (name)
   strlcpy(dip->label.name, name, sizeof dip->label.name);
  __builtin_bcopy((si->info), (&dip->un), (si->info_size));
  if (dip->type == 3)
   dip->un.v.delta = 1 << (8 - si->bits);
  return (0);
 }
 return (6);
}
int
ac97_mixer_set_port(struct ac97_codec_if *codec_if, mixer_ctrl_t *cp)
{
 struct ac97_softc *as = (struct ac97_softc *)codec_if;
 struct ac97_source_info *si;
 u_int16_t mask;
 u_int16_t val, newval;
 int error, spdif;
 if (cp->dev < 0 || cp->dev >= as->num_source_info)
  return (22);
 si = &as->source_info[cp->dev];
 if (cp->type == 0 || cp->type != si->type)
  return (22);
 spdif = si->req_feature == CHECK_SPDIF &&
     si->reg64 == 0x2a;
 if (spdif && as->lock_counter >= 0)
  return 16;
 ac97_read(as, si->reg64, &val);
 ;
 mask = (1 << si->bits) - 1;
 switch (cp->type) {
 case 1:
  if (cp->un.ord > mask || cp->un.ord < 0)
   return (22);
  newval = (cp->un.ord << si->ofs);
  if (si->reg64 == 0x1a) {
   newval |= (newval << (8 + si->ofs));
   mask |= (mask << 8);
   mask = mask << si->ofs;
  } else if (si->reg64 == 0x38) {
   newval = cp->un.ord ? 0x8080 : 0x0000;
   mask = 0x8080;
  } else
   mask = mask << si->ofs;
  if (si->mute) {
   newval |= newval << 8;
   mask |= mask << 8;
  }
  break;
 case 3:
 {
  const struct audio_mixer_value *value = si->info;
  u_int16_t l, r;
  if (cp->un.value.num_channels <= 0 ||
      cp->un.value.num_channels > value->num_channels)
   return (22);
  if (cp->un.value.num_channels == 1) {
   l = r = cp->un.value.level[0];
  } else {
   if (!(as->host_flags & AC97_HOST_SWAPPED_CHANNELS)) {
    l = cp->un.value.level[0];
    r = cp->un.value.level[1];
   } else {
    r = cp->un.value.level[0];
    l = cp->un.value.level[1];
   }
  }
  if (!si->polarity) {
   l = 255 - l;
   r = 255 - r;
  }
  l >>= 8 - si->bits;
  r >>= 8 - si->bits;
  newval = ((l & mask) << si->ofs);
  if (value->num_channels == 2) {
   newval |= ((r & mask) << (si->ofs + 8));
   mask |= (mask << 8);
  }
  mask = mask << si->ofs;
  break;
 }
 default:
  return (22);
 }
 error = ac97_write(as, si->reg64, (val & ~mask) | newval);
 if (error)
  return (error);
 if (spdif && as->host_if->spdif_event != ((void *)0))
  as->host_if->spdif_event(as->host_if->arg, cp->un.ord);
 return (0);
}
int
ac97_set_rate(struct ac97_codec_if *codec_if, int target, u_long *rate)
{
 struct ac97_softc *as;
 u_long value;
 u_int16_t ext_stat;
 u_int16_t actual;
 u_int16_t power;
 u_int16_t power_bit;
 as = (struct ac97_softc *)codec_if;
 if ((target == 0x2e) &&
     !(as->ext_id & 0x0080))
   return 0;
 if ((target == 0x30) &&
     !(as->ext_id & 0x0100))
   return 0;
 if (target == 0x34) {
  if (!(as->ext_id & 0x0008)) {
   *rate = 48000;
   return 0;
  }
 } else {
  if (!(as->ext_id & 0x0001)) {
   *rate = 48000;
   return 0;
  }
 }
 if (as->ac97_clock == 0)
  as->ac97_clock = 48000U;
 value = *rate * 48000U / as->ac97_clock;
 ext_stat = 0;
 switch (target) {
 case 0x2c:
 case 0x2e:
 case 0x30:
  power_bit = 0x0200;
  if (as->ext_id & 0x0002) {
   ac97_read(as, 0x2a, &ext_stat);
   if (value > 0x1ffff) {
    return 22;
   } else if (value > 0xffff) {
    ext_stat |= 0x0002;
    ac97_write(as, 0x2a, ext_stat);
    value /= 2;
   } else {
    ext_stat &= ~0x0002;
    ac97_write(as, 0x2a, ext_stat);
   }
  } else {
   if (value > 0xffff)
    return 22;
  }
  break;
 case 0x32:
  power_bit = 0x0100;
  if (value > 0xffff)
   return 22;
  break;
 case 0x34:
  power_bit = 0x0100;
  if (value > 0xffff)
   return 22;
  break;
 default:
  printf("%s: Unknown register: 0x%x\n", __func__, target);
  return 22;
 }
 ac97_read(as, 0x26, &power);
 ac97_write(as, 0x26, power | power_bit);
 ac97_write(as, target, (u_int16_t)value);
 ac97_read(as, target, &actual);
 actual = (u_int32_t)actual * as->ac97_clock / 48000U;
 ac97_write(as, 0x26, power);
 if (ext_stat & 0x0002) {
  *rate = actual * 2;
 } else {
  *rate = actual;
 }
 return 0;
}
void
ac97_set_clock(struct ac97_codec_if *codec_if, unsigned int clock)
{
 struct ac97_softc *as;
 as = (struct ac97_softc *)codec_if;
 as->ac97_clock = clock;
}
u_int16_t
ac97_get_extcaps(struct ac97_codec_if *codec_if)
{
 struct ac97_softc *as;
 as = (struct ac97_softc *)codec_if;
 return as->ext_id;
}
int
ac97_add_port(struct ac97_softc *as, struct ac97_source_info *src)
{
 struct ac97_source_info *si;
 int ouridx, idx;
 if (as->num_source_info >= (2 * (sizeof((source_info)) / sizeof((source_info)[0])))) {
  printf("%s: internal error: increase MAX_SOURCES in %s\n",
         __func__, "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../dev/ic/ac97.c");
  return -1;
 }
 if (!ac97_check_capability(as, src->req_feature))
  return -1;
 ouridx = as->num_source_info;
 si = &as->source_info[ouridx];
 __builtin_memcpy((si), (src), (sizeof(*si)));
 switch (si->type) {
 case 0:
 case 3:
  printf("%s: adding class/value is not supported yet.\n",
         __func__);
  return -1;
 case 1:
  break;
 default:
  printf("%s: unknown type: %d\n", __func__, si->type);
  return -1;
 }
 as->num_source_info++;
 si->mixer_class = ac97_get_portnum_by_name(&as->codec_if, si->class,
         ((void *)0), ((void *)0));
 idx = ac97_get_portnum_by_name(&as->codec_if, si->class,
           si->device, ((void *)0));
 while (as->source_info[idx].next != -1)
  idx = as->source_info[idx].next;
 as->source_info[idx].next = ouridx;
 si->prev = idx;
 si->next = -1;
 return 0;
}
int
ac97_get_portnum_by_name(struct ac97_codec_if *codec_if, char *class,
    char *device, char *qualifier)
{
 struct ac97_softc *as = (struct ac97_softc *)codec_if;
 int idx;
 for (idx = 0; idx < as->num_source_info; idx++) {
  struct ac97_source_info *si = &as->source_info[idx];
  if (ac97_str_equal(class, si->class) &&
      ac97_str_equal(device, si->device) &&
      ac97_str_equal(qualifier, si->qualifier))
   return (idx);
 }
 return (-1);
}
int
ac97_mixer_get_port(struct ac97_codec_if *codec_if, mixer_ctrl_t *cp)
{
 struct ac97_softc *as = (struct ac97_softc *)codec_if;
 struct ac97_source_info *si;
 u_int16_t mask;
 u_int16_t val;
 if (cp->dev < 0 || cp->dev >= as->num_source_info)
  return (22);
 si = &as->source_info[cp->dev];
 if (cp->type != si->type)
  return (22);
 ac97_read(as, si->reg64, &val);
 ;
 mask = (1 << si->bits) - 1;
 switch (cp->type) {
 case 1:
  cp->un.ord = (val >> si->ofs) & mask;
  ;
  break;
 case 3:
 {
  const struct audio_mixer_value *value = si->info;
  u_int16_t l, r;
  if ((cp->un.value.num_channels <= 0) ||
      (cp->un.value.num_channels > value->num_channels))
   return (22);
  if (value->num_channels == 1)
   l = r = (val >> si->ofs) & mask;
  else {
   if (!(as->host_flags & AC97_HOST_SWAPPED_CHANNELS)) {
    l = (val >> si->ofs) & mask;
    r = (val >> (si->ofs + 8)) & mask;
   } else {
    r = (val >> si->ofs) & mask;
    l = (val >> (si->ofs + 8)) & mask;
   }
  }
  l <<= 8 - si->bits;
  r <<= 8 - si->bits;
  if (!si->polarity) {
   l = 255 - l;
   r = 255 - r;
  }
  if (cp->un.value.num_channels == 1) {
   cp->un.value.level[0] = l;
  } else if (cp->un.value.num_channels == 2) {
   cp->un.value.level[0] = l;
   cp->un.value.level[1] = r;
  }
  break;
 }
 default:
  return (22);
 }
 return (0);
}
void
ac97_ad1885_init(struct ac97_softc *as, int resuming)
{
 int i;
 if (resuming)
  return;
 for (i = 0; i < as->num_source_info; i++) {
  if (as->source_info[i].reg64 == 0x04)
   as->source_info[i].reg64 = 0x02;
  else if (as->source_info[i].reg64 == 0x02)
   as->source_info[i].reg64 = 0x04;
 }
}
void
ac97_ad1886_init(struct ac97_softc *as, int resuming)
{
 ac97_write(as, 0x72, 0x0010);
}
void
ac97_ad198x_init(struct ac97_softc *as, int resuming)
{
 int i;
 u_int16_t misc;
 ac97_read(as, 0x76, &misc);
 ac97_write(as, 0x76,
     misc|0x0400|0x0020);
 if (resuming)
  return;
 for (i = 0; i < as->num_source_info; i++) {
  if (as->source_info[i].reg64 == 0x38)
   as->source_info[i].reg64 = 0x02;
  else if (as->source_info[i].reg64 == 0x02)
   as->source_info[i].reg64 = 0x38;
 }
}
void
ac97_alc650_init(struct ac97_softc *as, int resuming)
{
 u_int16_t misc;
 ac97_read(as, 0x7a, &misc);
 if (as->host_flags & AC97_HOST_ALC650_PIN47_IS_EAPD)
  misc &= ~0x0002;
 misc &= ~0x1000;
 ac97_write(as, 0x7a, misc);
 if (resuming)
  return;
 struct ac97_source_info sources[3] = {
  { "outputs", "surround", "lineinjack",
    1, &ac97_on_off, sizeof(ac97_on_off),
    0x6a,
    0x0000, 1, 9, 0, 0, CHECK_SURROUND },
  { "outputs", "center", "micjack",
    1, &ac97_on_off, sizeof(ac97_on_off),
    0x6a,
    0x0000, 1, 10, 0, 0, CHECK_CENTER },
  { "outputs", "lfe", "micjack",
    1, &ac97_on_off, sizeof(ac97_on_off),
    0x6a,
    0x0000, 1, 10, 0, 0, CHECK_LFE }};
 ac97_add_port(as, &sources[0]);
 ac97_add_port(as, &sources[1]);
 ac97_add_port(as, &sources[2]);
}
void
ac97_cx20468_init(struct ac97_softc *as, int resuming)
{
 u_int16_t misc;
 ac97_read(as, 0x5c, &misc);
 ac97_write(as, 0x5c, misc &
     ~(0x08 | 0x04 | 0x03));
}
void
ac97_vt1616_init(struct ac97_softc *as, int resuming)
{
 u_int16_t reg64;
 if (as->host_flags & AC97_HOST_VT1616_DYNEX) {
  ac97_read(as, 0x5a, &reg64);
  reg64 &= ~(0x8000);
  reg64 &= ~(0x1000 | 0x0800);
  reg64 |= 0x0400;
  ac97_write(as, 0x5a, reg64);
 }
}
