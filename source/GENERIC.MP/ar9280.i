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
void ieee80211_free_allnodes(struct ieee80211com *, int);
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
struct ieee80211_amrr {
 u_int amrr_min_success_threshold;
 u_int amrr_max_success_threshold;
};
struct ieee80211_amrr_node {
 u_int amn_success;
 u_int amn_recovery;
 u_int amn_success_threshold;
 u_int amn_txcnt;
 u_int amn_retrycnt;
};
void ieee80211_amrr_node_init(const struct ieee80211_amrr *,
     struct ieee80211_amrr_node *);
void ieee80211_amrr_choose(struct ieee80211_amrr *, struct ieee80211_node *,
     struct ieee80211_amrr_node *);
struct ieee80211_mira_goodput_stats {
 uint64_t measured;
 uint64_t average;
 uint64_t average_agg;
 uint64_t stddeviation;
 uint64_t loss;
 uint32_t nprobes;
 uint32_t nprobe_bytes;
 int probe_interval;
 int probe_timeout_triggered;
};
struct ieee80211_mira_node {
 uint32_t frames;
 uint32_t retries;
 uint32_t txfail;
 uint32_t ampdu_size;
 uint32_t agglen;
 uint32_t valid_rates;
 uint32_t candidate_rates;
 uint32_t probed_rates;
 struct timeout probe_to[2];
 int probe_timer_expired[2];
 int probing;
 int best_mcs;
 struct ieee80211_mira_goodput_stats g[32];
};
void ieee80211_mira_node_init(struct ieee80211_mira_node *);
void ieee80211_mira_choose(struct ieee80211_mira_node *,
     struct ieee80211com *, struct ieee80211_node *);
void ieee80211_mira_cancel_timeouts(struct ieee80211_mira_node *);
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
struct athn_rx_radiotap_header {
 struct ieee80211_radiotap_header wr_ihdr;
 uint64_t wr_tsft;
 uint8_t wr_flags;
 uint8_t wr_rate;
 uint16_t wr_chan_freq;
 uint16_t wr_chan_flags;
 int8_t wr_dbm_antsignal;
 uint8_t wr_antenna;
} __attribute__((__packed__));
struct athn_tx_radiotap_header {
 struct ieee80211_radiotap_header wt_ihdr;
 uint8_t wt_flags;
 uint8_t wt_rate;
 uint16_t wt_chan_freq;
 uint16_t wt_chan_flags;
 uint8_t wt_hwqueue;
} __attribute__((__packed__));
struct athn_tx_buf {
 struct { struct athn_tx_buf *sqe_next; } bf_list;
 void *bf_descs;
 bus_dmamap_t bf_map;
 bus_addr_t bf_daddr;
 struct mbuf *bf_m;
 struct ieee80211_node *bf_ni;
 int bf_txflags;
};
struct athn_txq {
 struct { struct athn_tx_buf *sqh_first; struct athn_tx_buf **sqh_last; } head;
 void *lastds;
 struct athn_tx_buf *wait;
 int queued;
};
struct athn_rx_buf {
 struct { struct athn_rx_buf *sqe_next; } bf_list;
 void *bf_desc;
 bus_dmamap_t bf_map;
 struct mbuf *bf_m;
 bus_addr_t bf_daddr;
};
struct athn_rxq {
 struct athn_rx_buf *bf;
 void *descs;
 void *lastds;
 bus_dmamap_t map;
 bus_dma_segment_t seg;
 int count;
 struct { struct athn_rx_buf *sqh_first; struct athn_rx_buf **sqh_last; } head;
};
static const struct athn_rate {
 uint16_t rate;
 uint8_t hwrate;
 uint8_t rspridx;
 enum ieee80211_phytype phy;
} athn_rates[] = {
 { 2, 0x1b, 0, IEEE80211_T_DS },
 { 4, 0x1a, 1, IEEE80211_T_DS },
 { 11, 0x19, 1, IEEE80211_T_DS },
 { 22, 0x18, 1, IEEE80211_T_DS },
 { 12, 0x0b, 4, IEEE80211_T_OFDM },
 { 18, 0x0f, 4, IEEE80211_T_OFDM },
 { 24, 0x0a, 6, IEEE80211_T_OFDM },
 { 36, 0x0e, 6, IEEE80211_T_OFDM },
 { 48, 0x09, 8, IEEE80211_T_OFDM },
 { 72, 0x0d, 8, IEEE80211_T_OFDM },
 { 96, 0x08, 8, IEEE80211_T_OFDM },
 { 108, 0x0c, 8, IEEE80211_T_OFDM },
 { 13, 0x80, 4, IEEE80211_T_OFDM },
 { 26, 0x81, 6, IEEE80211_T_OFDM },
 { 39, 0x82, 6, IEEE80211_T_OFDM },
 { 52, 0x83, 8, IEEE80211_T_OFDM },
 { 78, 0x84, 8, IEEE80211_T_OFDM },
 { 104, 0x85, 8, IEEE80211_T_OFDM },
 { 117, 0x86, 8, IEEE80211_T_OFDM },
 { 130, 0x87, 8, IEEE80211_T_OFDM },
 { 26, 0x88, 4, IEEE80211_T_OFDM },
 { 52, 0x89, 6, IEEE80211_T_OFDM },
 { 78, 0x8a, 8, IEEE80211_T_OFDM },
 { 104, 0x8b, 8, IEEE80211_T_OFDM },
 { 156, 0x8c, 8, IEEE80211_T_OFDM },
 { 208, 0x8d, 8, IEEE80211_T_OFDM },
 { 234, 0x8e, 8, IEEE80211_T_OFDM },
 { 260, 0x8f, 8, IEEE80211_T_OFDM }
};
struct athn_series {
 uint16_t dur;
 uint8_t hwrate;
};
struct athn_pier {
 uint8_t fbin;
 const uint8_t *pwr[4];
 const uint8_t *vpd[4];
};
struct athn_ini {
 int nregs;
 const uint16_t *regs;
 const uint32_t *vals_5g20;
 const uint32_t *vals_5g40;
 const uint32_t *vals_2g40;
 const uint32_t *vals_2g20;
 int ncmregs;
 const uint16_t *cmregs;
 const uint32_t *cmvals;
 int nfastregs;
 const uint16_t *fastregs;
 const uint32_t *fastvals_5g20;
 const uint32_t *fastvals_5g40;
};
struct athn_gain {
 int nregs;
 const uint16_t *regs;
 const uint32_t *vals_5g;
 const uint32_t *vals_2g;
};
struct athn_addac {
 int nvals;
 const uint32_t *vals;
};
struct athn_serdes {
 int nvals;
 const uint32_t *regs;
 const uint32_t *vals;
};
static const uint8_t athn_ac2qid[4] = {
 0,
 2,
 3,
 4
};
static const uint8_t athn_5ghz_chans[] = {
 36, 40, 44, 48,
 52, 56, 60, 64,
 100, 104, 108, 112, 116, 120, 124, 128, 132, 136, 140,
 149, 153, 157, 161, 165
};
static const uint16_t ar_mcs_ndbps[][2] = {
 { 26, 54 },
 { 52, 108 },
 { 78, 162 },
 { 104, 216 },
 { 156, 324 },
 { 208, 432 },
 { 234, 486 },
 { 260, 540 },
 { 26, 108 },
 { 52, 216 },
 { 78, 324 },
 { 104, 432 },
 { 156, 648 },
 { 208, 864 },
 { 234, 972 },
 { 260, 1080 }
};
struct athn_node {
 struct ieee80211_node ni;
 struct ieee80211_amrr_node amn;
 struct ieee80211_mira_node mn;
 uint8_t ridx[(15 + (15 + 1))];
 uint8_t fallback[(15 + (15 + 1))];
 uint8_t sta_index;
};
struct athn_ani {
 uint8_t noise_immunity_level;
 uint8_t spur_immunity_level;
 uint8_t firstep_level;
 uint8_t ofdm_weak_signal;
 uint8_t cck_weak_signal;
 uint32_t listen_time;
 uint32_t ofdm_trig_high;
 uint32_t ofdm_trig_low;
 int32_t cck_trig_high;
 int32_t cck_trig_low;
 uint32_t ofdm_phy_err_base;
 uint32_t cck_phy_err_base;
 uint32_t ofdm_phy_err_count;
 uint32_t cck_phy_err_count;
 uint32_t cyccnt;
 uint32_t txfcnt;
 uint32_t rxfcnt;
};
struct athn_iq_cal {
 uint32_t pwr_meas_i;
 uint32_t pwr_meas_q;
 int32_t iq_corr_meas;
};
struct athn_adc_cal {
 uint32_t pwr_meas_odd_i;
 uint32_t pwr_meas_even_i;
 uint32_t pwr_meas_odd_q;
 uint32_t pwr_meas_even_q;
};
struct athn_calib {
 int nsamples;
 struct athn_iq_cal iq[3];
 struct athn_adc_cal adc_gain[3];
 struct athn_adc_cal adc_dc_offset[3];
};
struct athn_softc;
struct athn_ops {
 uint32_t (*read)(struct athn_softc *, uint32_t);
 void (*write)(struct athn_softc *, uint32_t, uint32_t);
 void (*write_barrier)(struct athn_softc *);
 void (*setup)(struct athn_softc *);
 void (*set_txpower)(struct athn_softc *, struct ieee80211_channel *,
      struct ieee80211_channel *);
 void (*spur_mitigate)(struct athn_softc *,
      struct ieee80211_channel *, struct ieee80211_channel *);
 const struct ar_spur_chan *
  (*get_spur_chans)(struct athn_softc *, int);
 void (*init_from_rom)(struct athn_softc *,
      struct ieee80211_channel *, struct ieee80211_channel *);
 int (*set_synth)(struct athn_softc *, struct ieee80211_channel *,
      struct ieee80211_channel *);
 int (*read_rom_data)(struct athn_softc *, uint32_t, void *, int);
 const uint8_t *
  (*get_rom_template)(struct athn_softc *, uint8_t);
 void (*swap_rom)(struct athn_softc *);
 void (*olpc_init)(struct athn_softc *);
 void (*olpc_temp_compensation)(struct athn_softc *);
 int (*gpio_read)(struct athn_softc *, int);
 void (*gpio_write)(struct athn_softc *, int, int);
 void (*gpio_config_input)(struct athn_softc *, int);
 void (*gpio_config_output)(struct athn_softc *, int, int);
 void (*rfsilent_init)(struct athn_softc *);
 int (*dma_alloc)(struct athn_softc *);
 void (*dma_free)(struct athn_softc *);
 void (*rx_enable)(struct athn_softc *);
 int (*intr)(struct athn_softc *);
 int (*tx)(struct athn_softc *, struct mbuf *,
      struct ieee80211_node *, int);
 void (*set_rf_mode)(struct athn_softc *,
      struct ieee80211_channel *);
 int (*rf_bus_request)(struct athn_softc *);
 void (*rf_bus_release)(struct athn_softc *);
 void (*set_phy)(struct athn_softc *, struct ieee80211_channel *,
      struct ieee80211_channel *);
 void (*set_delta_slope)(struct athn_softc *,
      struct ieee80211_channel *, struct ieee80211_channel *);
 void (*enable_antenna_diversity)(struct athn_softc *);
 void (*init_baseband)(struct athn_softc *);
 void (*disable_phy)(struct athn_softc *);
 void (*set_rxchains)(struct athn_softc *);
 void (*noisefloor_calib)(struct athn_softc *);
 void (*do_calib)(struct athn_softc *);
 void (*next_calib)(struct athn_softc *);
 void (*hw_init)(struct athn_softc *, struct ieee80211_channel *,
      struct ieee80211_channel *);
 void (*get_paprd_masks)(struct athn_softc *sc,
      struct ieee80211_channel *, uint32_t *, uint32_t *);
 void (*set_noise_immunity_level)(struct athn_softc *, int);
 void (*enable_ofdm_weak_signal)(struct athn_softc *);
 void (*disable_ofdm_weak_signal)(struct athn_softc *);
 void (*set_cck_weak_signal)(struct athn_softc *, int);
 void (*set_firstep_level)(struct athn_softc *, int);
 void (*set_spur_immunity_level)(struct athn_softc *, int);
};
struct athn_softc {
 struct device sc_dev;
 struct ieee80211com sc_ic;
 int (*sc_enable)(struct athn_softc *);
 void (*sc_disable)(struct athn_softc *);
 void (*sc_power)(struct athn_softc *, int);
 void (*sc_disable_aspm)(struct athn_softc *);
 void (*sc_enable_extsynch)(
         struct athn_softc *);
 int (*sc_newstate)(struct ieee80211com *,
         enum ieee80211_state, int);
 bus_dma_tag_t sc_dmat;
 struct timeout scan_to;
 struct timeout calib_to;
 struct ieee80211_amrr amrr;
 u_int flags;
 uint8_t ngpiopins;
 int led_pin;
 int rfsilent_pin;
 int led_state;
 uint32_t isync;
 uint32_t imask;
 uint16_t mac_ver;
 uint8_t mac_rev;
 uint8_t rf_rev;
 uint16_t eep_rev;
 uint8_t txchainmask;
 uint8_t rxchainmask;
 uint8_t ntxchains;
 uint8_t nrxchains;
 uint8_t sup_calib_mask;
 uint8_t cur_calib_mask;
 struct ieee80211_channel *curchan;
 struct ieee80211_channel *curchanext;
 int8_t tx_gain_tbl[22];
 int8_t pdadc;
 int8_t tcomp;
 int olpc_ticks;
 uint16_t gain1[3];
 uint32_t txgain[32];
 int16_t pa_in[3]
          [24];
 int16_t angle[3]
          [24];
 int32_t trainpow;
 uint8_t paprd_curchain;
 uint32_t rwbuf[64];
 int kc_entries;
 void *eep;
 const void *eep_def;
 uint32_t eep_base;
 uint32_t eep_size;
 struct athn_rxq rxq[2];
 struct athn_txq txq[31];
 void *descs;
 bus_dmamap_t map;
 bus_dma_segment_t seg;
 struct { struct athn_tx_buf *sqh_first; struct athn_tx_buf **sqh_last; } txbufs;
 struct athn_tx_buf *bcnbuf;
 struct athn_tx_buf txpool[64];
 bus_dmamap_t txsmap;
 bus_dma_segment_t txsseg;
 void *txsring;
 int txscur;
 int sc_if_flags;
 int sc_tx_timer;
 const struct athn_ini *ini;
 const struct athn_gain *rx_gain;
 const struct athn_gain *tx_gain;
 const struct athn_addac *addac;
 const struct athn_serdes *serdes;
 uint32_t workaround;
 uint32_t obs_off;
 uint32_t gpio_input_en_off;
 struct athn_ops ops;
 int fixed_ridx;
 int16_t cca_min_2g;
 int16_t cca_max_2g;
 int16_t cca_min_5g;
 int16_t cca_max_5g;
 int16_t def_nf;
 struct {
  int16_t nf[3];
  int16_t nf_ext[3];
 } nf_hist[5];
 int nf_hist_cur;
 int16_t nf_priv[3];
 int16_t nf_ext_priv[3];
 int pa_calib_ticks;
 struct athn_calib calib;
 struct athn_ani ani;
 caddr_t sc_drvbpf;
 union {
  struct athn_rx_radiotap_header th;
  uint8_t pad[64];
 } sc_rxtapu;
 int sc_rxtap_len;
 union {
  struct athn_tx_radiotap_header th;
  uint8_t pad[64];
 } sc_txtapu;
 int sc_txtap_len;
};
extern int athn_attach(struct athn_softc *);
extern void athn_detach(struct athn_softc *);
extern void athn_suspend(struct athn_softc *);
extern void athn_wakeup(struct athn_softc *);
extern int athn_intr(void *);
struct ar_tx_desc {
 uint32_t ds_link;
 uint32_t ds_data;
 uint32_t ds_ctl0;
 uint32_t ds_ctl1;
 uint32_t ds_ctl2;
 uint32_t ds_ctl3;
 uint32_t ds_ctl4;
 uint32_t ds_ctl5;
 uint32_t ds_ctl6;
 uint32_t ds_ctl7;
 uint32_t ds_ctl8;
 uint32_t ds_ctl9;
 uint32_t ds_ctl10;
 uint32_t ds_ctl11;
 uint32_t ds_status0;
 uint32_t ds_status1;
 uint32_t ds_tstamp;
 uint32_t ds_ba_bitmap_lo;
 uint32_t ds_ba_bitmap_hi;
 uint32_t ds_evm0;
 uint32_t ds_evm1;
 uint32_t ds_evm2;
 uint32_t ds_status8;
 uint32_t ds_status9;
 uint32_t pad[8];
} __attribute__((__packed__)) __attribute__((aligned(4)));
struct ar_rx_desc {
 uint32_t ds_link;
 uint32_t ds_data;
 uint32_t ds_ctl0;
 uint32_t ds_ctl1;
 uint32_t ds_status0;
 uint32_t ds_status1;
 uint32_t ds_status2;
 uint32_t ds_status3;
 uint32_t ds_status4;
 uint32_t ds_status5;
 uint32_t ds_status6;
 uint32_t ds_status7;
 uint32_t ds_status8;
 uint32_t pad[3];
} __attribute__((__packed__)) __attribute__((aligned(4)));
struct ar_base_eep_header {
 uint16_t length;
 uint16_t checksum;
 uint16_t version;
 uint8_t opCapFlags;
 uint8_t eepMisc;
 uint16_t regDmn[2];
 uint8_t macAddr[6];
 uint8_t rxMask;
 uint8_t txMask;
 uint16_t rfSilent;
 uint16_t blueToothOptions;
 uint16_t deviceCap;
 uint32_t binBuildNumber;
 uint8_t deviceType;
} __attribute__((__packed__));
struct ar_spur_chan {
 uint16_t spurChan;
 uint8_t spurRangeLow;
 uint8_t spurRangeHigh;
} __attribute__((__packed__));
struct ar_cal_data_per_freq_olpc {
 uint8_t pwrPdg[2][5];
 uint8_t vpdPdg[2][5];
 uint8_t pcdac[2][5];
 uint8_t empty[2][5];
} __attribute__((__packed__));
struct ar_cal_target_power_leg {
 uint8_t bChannel;
 uint8_t tPow2x[4];
} __attribute__((__packed__));
struct ar_cal_target_power_ht {
 uint8_t bChannel;
 uint8_t tPow2x[8];
} __attribute__((__packed__));
struct ar_cal_ctl_edges {
 uint8_t bChannel;
 uint8_t tPowerFlag;
} __attribute__((__packed__));
struct ar5416_base_eep_header {
 uint16_t length;
 uint16_t checksum;
 uint16_t version;
 uint8_t opCapFlags;
 uint8_t eepMisc;
 uint16_t regDmn[2];
 uint8_t macAddr[6];
 uint8_t rxMask;
 uint8_t txMask;
 uint16_t rfSilent;
 uint16_t blueToothOptions;
 uint16_t deviceCap;
 uint32_t binBuildNumber;
 uint8_t deviceType;
 uint8_t pwdclkind;
 uint8_t fastClk5g;
 uint8_t divChain;
 uint8_t rxGainType;
 uint8_t dacHiPwrMode_5G;
 uint8_t openLoopPwrCntl;
 uint8_t dacLpMode;
 uint8_t txGainType;
 uint8_t rcChainMask;
 uint8_t desiredScaleCCK;
 uint8_t pwrTableOffset;
 uint8_t frac_n_5g;
 uint8_t futureBase[21];
} __attribute__((__packed__));
struct ar5416_modal_eep_header {
 uint32_t antCtrlChain[3];
 uint32_t antCtrlCommon;
 uint8_t antennaGainCh[3];
 uint8_t switchSettling;
 uint8_t txRxAttenCh[3];
 uint8_t rxTxMarginCh[3];
 uint8_t adcDesiredSize;
 uint8_t pgaDesiredSize;
 uint8_t xlnaGainCh[3];
 uint8_t txEndToXpaOff;
 uint8_t txEndToRxOn;
 uint8_t txFrameToXpaOn;
 uint8_t thresh62;
 uint8_t noiseFloorThreshCh[3];
 uint8_t xpdGain;
 uint8_t xpd;
 uint8_t iqCalICh[3];
 uint8_t iqCalQCh[3];
 uint8_t pdGainOverlap;
 uint8_t ob;
 uint8_t db;
 uint8_t xpaBiasLvl;
 uint8_t pwrDecreaseFor2Chain;
 uint8_t pwrDecreaseFor3Chain;
 uint8_t txFrameToDataStart;
 uint8_t txFrameToPaOn;
 uint8_t ht40PowerIncForPdadc;
 uint8_t bswAtten[3];
 uint8_t bswMargin[3];
 uint8_t swSettleHt40;
 uint8_t xatten2Db[3];
 uint8_t xatten2Margin[3];
 uint8_t ob_ch1;
 uint8_t db_ch1;
 uint8_t flagBits;
 uint8_t miscBits;
 uint16_t xpaBiasLvlFreq[3];
 uint8_t futureModal[6];
 struct ar_spur_chan spurChans[5];
} __attribute__((__packed__));
struct ar5416_cal_data_per_freq {
 uint8_t pwrPdg[4][5];
 uint8_t vpdPdg[4][5];
} __attribute__((__packed__));
struct ar5416_cal_ctl_data {
 struct ar_cal_ctl_edges
     ctlEdges[3][8];
} __attribute__((__packed__));
struct ar5416_eeprom {
 struct ar5416_base_eep_header baseEepHeader;
 uint8_t custData[64];
 struct ar5416_modal_eep_header modalHeader[2];
 uint8_t calFreqPier5G[8];
 uint8_t calFreqPier2G[4];
 struct ar5416_cal_data_per_freq
     calPierData5G[3][8];
 struct ar5416_cal_data_per_freq
     calPierData2G[3][4];
 struct ar_cal_target_power_leg
     calTargetPower5G[8];
 struct ar_cal_target_power_ht
     calTargetPower5GHT20[8];
 struct ar_cal_target_power_ht
     calTargetPower5GHT40[8];
 struct ar_cal_target_power_leg
     calTargetPowerCck[3];
 struct ar_cal_target_power_leg
     calTargetPower2G[4];
 struct ar_cal_target_power_ht
     calTargetPower2GHT20[4];
 struct ar_cal_target_power_ht
     calTargetPower2GHT40[4];
 uint8_t ctlIndex[24];
 struct ar5416_cal_ctl_data ctlData[24];
 uint8_t padding;
} __attribute__((__packed__));
static const uint16_t ar5416_regs[] = {
 (0x01030), (0x01070), (0x010b0), (0x010f0), (0x08014),
 (0x0801c), (0x08120), (0x081d0), (0x09804), (0x09820),
 (0x09824), (0x09828), (0x09834), (0x09838), (0x09844),
 (0x09848), (0x0a848), (0x0b848), (0x09850), (0x09858),
 (0x0985c), (0x09860), (0x09864), (0x09868), (0x0986c),
 (0x09914), (0x09918), (0x09924), (0x09944), (0x09960),
 (0x0a960), (0x0b960), (0x09964), (0x099bc), (0x099c0),
 (0x099c4), (0x099c8), (0x099cc), (0x099d0), (0x099d4),
 (0x099d8), (0x0a204), (0x0a208), (0x0a20c), (0x0b20c),
 (0x0c20c), (0x0a21c), (0x0a230), (0x0a274), (0x0a300),
 (0x0a304), (0x0a308), (0x0a30c), (0x0a310), (0x0a314),
 (0x0a318), (0x0a31c), (0x0a320), (0x0a324), (0x0a328),
 (0x0a32c), (0x0a330), (0x0a334)
};
static const uint32_t ar5416_vals_5g20[] = {
 0x00000230, 0x00000168, 0x00000e60, 0x0000a000, 0x03e803e8,
 0x128d93a7, 0x08f04800, 0x00003210, 0x00000300, 0x02020200,
 0x00000e0e, 0x0a020001, 0x00000e0e, 0x00000007, 0x1372161e,
 0x001a6a65, 0x001a6a65, 0x001a6a65, 0x6c48b4e0, 0x7ec82d2e,
 0x31395d5e, 0x00049d18, 0x0001ce00, 0x409a4190, 0x050cb081,
 0x000007d0, 0x000001b8, 0xd0058a0b, 0xffb81020, 0x00000900,
 0x00000900, 0x00000900, 0x00000000, 0x001a0a00, 0x038919be,
 0x06336f77, 0x6af6532c, 0x08f186c8, 0x00046384, 0x00000000,
 0x00000000, 0x00000880, 0xd6be4788, 0x002ec1e0, 0x002ec1e0,
 0x002ec1e0, 0x1883800a, 0x00000000, 0x0a1a9caa, 0x18010000,
 0x30032602, 0x48073e06, 0x560b4c0a, 0x641a600f, 0x7a4f6e1b,
 0x8c5b7e5a, 0x9d0f96cf, 0xb51fa69f, 0xcb3fbd07, 0x0000d7bf,
 0x00000000, 0x00000000, 0x00000000
};
static const uint32_t ar5416_vals_5g40[] = {
 0x00000460, 0x000002d0, 0x00001cc0, 0x00014000, 0x07d007d0,
 0x128d93cf, 0x08f04800, 0x00003210, 0x000003c4, 0x02020200,
 0x00000e0e, 0x0a020001, 0x00000e0e, 0x00000007, 0x1372161e,
 0x001a6a65, 0x001a6a65, 0x001a6a65, 0x6d48b4e0, 0x7ec82d2e,
 0x3139605e, 0x00049d18, 0x0001ce00, 0x409a4190, 0x050cb081,
 0x00000fa0, 0x00000370, 0xd0058a0b, 0xffb81020, 0x00000900,
 0x00000900, 0x00000900, 0x00000000, 0x001a0a00, 0x038919be,
 0x06336f77, 0x6af6532c, 0x08f186c8, 0x00046384, 0x00000000,
 0x00000000, 0x00000880, 0xd6be4788, 0x002ec1e0, 0x002ec1e0,
 0x002ec1e0, 0x1883800a, 0x00000000, 0x0a1a9caa, 0x18010000,
 0x30032602, 0x48073e06, 0x560b4c0a, 0x641a600f, 0x7a4f6e1b,
 0x8c5b7e5a, 0x9d0f96cf, 0xb51fa69f, 0xcb3fbcbf, 0x0000d7bf,
 0x00000000, 0x00000000, 0x00000000
};
static const uint32_t ar5416_vals_2g40[] = {
 0x000002c0, 0x00000318, 0x00007c70, 0x00016000, 0x10801600,
 0x12e013d7, 0x08f04810, 0x0000320a, 0x000003c4, 0x02020200,
 0x00000e0e, 0x0a020001, 0x00000e0e, 0x00000007, 0x137216a0,
 0x00197a68, 0x00197a68, 0x00197a68, 0x6d48b0de, 0x7ec82d2e,
 0x3139605e, 0x00049d18, 0x0001ce00, 0x409a4190, 0x050cb081,
 0x00001130, 0x00000268, 0xd0058a0b, 0xffb81020, 0x00012d80,
 0x00012d80, 0x00012d80, 0x00001120, 0x001a0a00, 0x038919be,
 0x06336f77, 0x6af6532c, 0x08f186c8, 0x00046384, 0x00000000,
 0x00000000, 0x00000880, 0xd03e4788, 0x002ac120, 0x002ac120,
 0x002ac120, 0x1883800a, 0x00000210, 0x0a1a7caa, 0x18010000,
 0x2e032402, 0x4a0a3c06, 0x621a540b, 0x764f6c1b, 0x845b7a5a,
 0x950f8ccf, 0xa5cf9b4f, 0xbddfaf1f, 0xd1ffc93f, 0x00000000,
 0x00000000, 0x00000000, 0x00000000
};
static const uint32_t ar5416_vals_2g20[] = {
 0x00000160, 0x0000018c, 0x00003e38, 0x0000b000, 0x08400b00,
 0x12e013ab, 0x08f04810, 0x0000320a, 0x00000300, 0x02020200,
 0x00000e0e, 0x0a020001, 0x00000e0e, 0x00000007, 0x137216a0,
 0x00197a68, 0x00197a68, 0x00197a68, 0x6c48b0de, 0x7ec82d2e,
 0x31395d5e, 0x00049d18, 0x0001ce00, 0x409a4190, 0x050cb081,
 0x00000898, 0x00000134, 0xd0058a0b, 0xffb81020, 0x00012d80,
 0x00012d80, 0x00012d80, 0x00001120, 0x001a0a00, 0x038919be,
 0x06336f77, 0x6af6532c, 0x08f186c8, 0x00046384, 0x00000000,
 0x00000000, 0x00000880, 0xd03e4788, 0x002ac120, 0x002ac120,
 0x002ac120, 0x1883800a, 0x00000108, 0x0a1a7caa, 0x18010000,
 0x2e032402, 0x4a0a3c06, 0x621a540b, 0x764f6c1b, 0x845b7a5a,
 0x950f8ccf, 0xa5cf9b4f, 0xbddfaf1f, 0xd1ffc93f, 0x00000000,
 0x00000000, 0x00000000, 0x00000000
};
static const uint16_t ar5416_cm_regs[] = {
 (0x0000c), (0x00030), (0x00034), (0x00040), (0x00044),
 (0x00048), (0x0004c), (0x00050), (0x00054), (0x00800),
 (0x00804), (0x00808), (0x0080c), (0x00810), (0x00814),
 (0x00818), (0x0081c), (0x00820), (0x00824), (0x01040),
 (0x01044), (0x01048), (0x0104c), (0x01050), (0x01054),
 (0x01058), (0x0105c), (0x01060), (0x01064), (0x01230),
 (0x01270), (0x01038), (0x01078), (0x010b8), (0x010f8),
 (0x01138), (0x01178), (0x011b8), (0x011f8), (0x01238),
 (0x01278), (0x012b8), (0x012f8), (0x01338), (0x01378),
 (0x013b8), (0x013f8), (0x01438), (0x01478), (0x014b8),
 (0x014f8), (0x01538), (0x01578), (0x015b8), (0x015f8),
 (0x01638), (0x01678), (0x016b8), (0x016f8), (0x01738),
 (0x01778), (0x017b8), (0x017f8), (0x0103c), (0x0107c),
 (0x010bc), (0x010fc), (0x0113c), (0x0117c), (0x011bc),
 (0x011fc), (0x0123c), (0x0127c), (0x012bc), (0x012fc),
 (0x0133c), (0x0137c), (0x013bc), (0x013fc), (0x0143c),
 (0x0147c), (0x04030), (0x0403c), (0x07010), (0x07038),
 (0x08004), (0x08008), (0x0800c), (0x08018), (0x08020),
 (0x08038), (0x0803c), (0x08048), (0x08054), (0x08058),
 (0x0805c), (0x08060), (0x08064), (0x080c0), (0x080c4),
 (0x080c8), (0x080cc), (0x080d0), (0x080d4), (0x080d8),
 (0x080e0), (0x080e4), (0x080e8), (0x080ec), (0x080f0),
 (0x080f4), (0x080f8), (0x080fc), (0x08100), (0x08104),
 (0x08108), (0x0810c), (0x08110), (0x08118), (0x0811c),
 (0x08124), (0x08128), (0x0812c), (0x08130), (0x08134),
 (0x08138), (0x0813c), (0x08144), (0x08168), (0x0816c),
 (0x08170), (0x08174), (0x08178), (0x0817c), (0x081c4),
 (0x081ec), (0x081f0), (0x081f4), (0x081f8), (0x081fc),
 (0x08200), (0x08204), (0x08208), (0x0820c), (0x08210),
 (0x08214), (0x08218), (0x0821c), (0x08220), (0x08224),
 (0x08228), (0x0822c), (0x08230), (0x08234), (0x08238),
 (0x0823c), (0x08240), (0x08244), (0x08248), (0x0824c),
 (0x08250), (0x08254), (0x08258), (0x0825c), (0x08260),
 (0x08264), (0x08270), (0x08274), (0x08278), (0x0827c),
 (0x08284), (0x08288), (0x0828c), (0x08294), (0x08298),
 (0x08300), (0x08304), (0x08308), (0x0830c), (0x08310),
 (0x08314), (0x08318), (0x08328), (0x0832c), (0x08330),
 (0x08334), (0x08338), (0x0833c), (0x08340), (0x09808),
 (0x0980c), (0x09810), (0x09814), (0x0981c), (0x0982c),
 (0x09830), (0x0983c), (0x09840), (0x0984c), (0x09854),
 (0x09900), (0x09904), (0x09908), (0x0990c), (0x0991c),
 (0x09920), (0x0a920), (0x0b920), (0x09928), (0x0992c),
 (0x09934), (0x09938), (0x0993c), (0x09948), (0x0994c),
 (0x09954), (0x09958), (0x0c95c), (0x0c968), (0x09970),
 (0x09974), (0x09978), (0x0997c), (0x09980), (0x09984),
 (0x09988), (0x0998c), (0x09990), (0x09994), (0x09998),
 (0x0999c), (0x099a0), (0x099a4), (0x099a8), (0x099ac),
 (0x099b0), (0x099dc), (0x099e0), (0x099e4), (0x099e8),
 (0x099ec), (0x099fc), (0x09b00), (0x09b04), (0x09b08),
 (0x09b0c), (0x09b10), (0x09b14), (0x09b18), (0x09b1c),
 (0x09b20), (0x09b24), (0x09b28), (0x09b2c), (0x09b30),
 (0x09b34), (0x09b38), (0x09b3c), (0x09b40), (0x09b44),
 (0x09b48), (0x09b4c), (0x09b50), (0x09b54), (0x09b58),
 (0x09b5c), (0x09b60), (0x09b64), (0x09b68), (0x09b6c),
 (0x09b70), (0x09b74), (0x09b78), (0x09b7c), (0x09b80),
 (0x09b84), (0x09b88), (0x09b8c), (0x09b90), (0x09b94),
 (0x09b98), (0x09b9c), (0x09ba0), (0x09ba4), (0x09ba8),
 (0x09bac), (0x09bb0), (0x09bb4), (0x09bb8), (0x09bbc),
 (0x09bc0), (0x09bc4), (0x09bc8), (0x09bcc), (0x09bd0),
 (0x09bd4), (0x09bd8), (0x09bdc), (0x09be0), (0x09be4),
 (0x09be8), (0x09bec), (0x09bf0), (0x09bf4), (0x09bf8),
 (0x09bfc), (0x0a210), (0x0a214), (0x0a218), (0x0a220),
 (0x0a224), (0x0a228), (0x0a22c), (0x0a234), (0x0a238),
 (0x0a23c), (0x0a240), (0x0a244), (0x0a248), (0x0a24c),
 (0x0a250), (0x0a254), (0x0a258), (0x0a25c), (0x0a260),
 (0x0a268), (0x0a26c), (0x0b26c), (0x0c26c), (0x0d270),
 (0x0a278), (0x0a27c), (0x0a338), (0x0a33c), (0x0a340),
 (0x0a344), (0x0a348), (0x0a34c), (0x0a350), (0x0a354),
 (0x0a358), (0x0d35c), (0x0d360), (0x0d364), (0x0d368),
 (0x0d36c), (0x0d370), (0x0d374), (0x0d378), (0x0d37c),
 (0x0d380), (0x0d384), (0x0a388), (0x0a38c), (0x0a390),
 (0x0a394), (0x0a398), (0x0a39c), (0x0a3a0), (0x0a3a4),
 (0x0a3a8), (0x0a3ac), (0x0a3b0), (0x0a3b4), (0x0a3b8),
 (0x0a3bc), (0x0a3c0), (0x0a3c4), (0x0a3c8), (0x0a3cc),
 (0x0a3d0), (0x0a3d4), (0x0a3dc), (0x0a3e0)
};
static const uint32_t ar5416_cm_vals[] = {
 0x00000000, 0x00020015, 0x00000005, 0x00000000, 0x00000008,
 0x00000008, 0x00000010, 0x00000000, 0x0000001f, 0x00000000,
 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,
 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x002ffc0f,
 0x002ffc0f, 0x002ffc0f, 0x002ffc0f, 0x002ffc0f, 0x002ffc0f,
 0x002ffc0f, 0x002ffc0f, 0x002ffc0f, 0x002ffc0f, 0x00000000,
 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,
 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,
 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,
 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,
 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,
 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,
 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,
 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,
 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,
 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,
 0x00000000, 0x00000002, 0x00000002, 0x00000000, 0x000004c2,
 0x00000000, 0x00000000, 0x00000000, 0x00000700, 0x00000000,
 0x00000000, 0x00000000, 0x40000000, 0x00000000, 0x00000000,
 0x000fc78f, 0x0000000f, 0x00000000, 0x2a82301a, 0x05dc01e0,
 0x1f402710, 0x01f40000, 0x00001e00, 0x00000000, 0x00400000,
 0xffffffff, 0x0000ffff, 0x003f3f3f, 0x00000000, 0x00000000,
 0x00000000, 0x00000000, 0x00020000, 0x00020000, 0x00000001,
 0x00000052, 0x00000000, 0x00000168, 0x000100aa, 0x00003210,
 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,
 0x00000000, 0x00000000, 0xffffffff, 0x00000000, 0x00000000,
 0x32143320, 0xfaa4fa50, 0x00000100, 0x00000000, 0x00000000,
 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,
 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,
 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,
 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,
 0x00000000, 0x00100000, 0x0010f400, 0x00000100, 0x0001e800,
 0x00000000, 0x00000000, 0x00000000, 0x400000ff, 0x00080922,
 0x88000010, 0x00000000, 0x40000000, 0x003e4180, 0x00000000,
 0x0000002c, 0x0000002c, 0x00000000, 0x00000000, 0x00000000,
 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,
 0x00000000, 0x00000000, 0x00000000, 0x00000007, 0x00000302,
 0x00000e00, 0x00070000, 0x00000000, 0x000107ff, 0x00000000,
 0xad848e19, 0x7d14e000, 0x9c0a9f6b, 0x00000000, 0x0000a000,
 0x00000000, 0x00200400, 0x206a002e, 0x1284233c, 0x00000859,
 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x10000fff,
 0x05100000, 0x05100000, 0x05100000, 0x00000001, 0x00000004,
 0x1e1f2022, 0x0a0b0c0d, 0x00000000, 0x9280b212, 0x00020028,
 0x5d50e188, 0x00081fff, 0x004b6a8e, 0x000003ce, 0x190fb515,
 0x00000000, 0x00000001, 0x00000000, 0x00000000, 0x00000000,
 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,
 0x00000000, 0x00000000, 0x00000001, 0x001fff00, 0x00000000,
 0x03051000, 0x00000000, 0x00000200, 0xaaaaaaaa, 0x3c466478,
 0x000000aa, 0x00001042, 0x00000000, 0x00000001, 0x00000002,
 0x00000003, 0x00000004, 0x00000005, 0x00000008, 0x00000009,
 0x0000000a, 0x0000000b, 0x0000000c, 0x0000000d, 0x00000010,
 0x00000011, 0x00000012, 0x00000013, 0x00000014, 0x00000015,
 0x00000018, 0x00000019, 0x0000001a, 0x0000001b, 0x0000001c,
 0x0000001d, 0x00000020, 0x00000021, 0x00000022, 0x00000023,
 0x00000024, 0x00000025, 0x00000028, 0x00000029, 0x0000002a,
 0x0000002b, 0x0000002c, 0x0000002d, 0x00000030, 0x00000031,
 0x00000032, 0x00000033, 0x00000034, 0x00000035, 0x00000035,
 0x00000035, 0x00000035, 0x00000035, 0x00000035, 0x00000035,
 0x00000035, 0x00000035, 0x00000035, 0x00000035, 0x00000035,
 0x00000035, 0x00000035, 0x00000035, 0x00000035, 0x00000035,
 0x00000035, 0x00000035, 0x00000035, 0x00000035, 0x00000010,
 0x0000001a, 0x40806333, 0x00106c10, 0x009c4060, 0x018830c6,
 0x00000400, 0x00000bb5, 0x00000011, 0x20202020, 0x20202020,
 0x13c889af, 0x38490a20, 0x00007bb6, 0x0fff3ffc, 0x00000001,
 0x0000a000, 0x00000000, 0x0cc75380, 0x0f0f0f01, 0xdfa91f01,
 0x00000000, 0x0e79e5c6, 0x0e79e5c6, 0x0e79e5c6, 0x00820820,
 0x1ce739ce, 0x051701ce, 0x00000000, 0x00000000, 0x00000000,
 0x00000000, 0x3fffffff, 0x3fffffff, 0x3fffffff, 0x0003ffff,
 0x79a8aa1f, 0x07ffffef, 0x0fffffe7, 0x17ffffe5, 0x1fffffe4,
 0x37ffffe3, 0x3fffffe3, 0x57ffffe3, 0x5fffffe2, 0x7fffffe2,
 0x7f3c7bba, 0xf3307ff0, 0x08000000, 0x20202020, 0x20202020,
 0x1ce739ce, 0x000001ce, 0x00000001, 0x00000000, 0x00000000,
 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,
 0x00000000, 0x00000000, 0x00000000, 0x00000246, 0x20202020,
 0x20202020, 0x20202020, 0x1ce739ce, 0x000001ce
};
static const struct athn_ini ar5416_ini = {
 (sizeof((ar5416_regs)) / sizeof((ar5416_regs)[0])),
 ar5416_regs,
 ar5416_vals_5g20,
 ar5416_vals_5g40,
 ar5416_vals_2g40,
 ar5416_vals_2g20,
 (sizeof((ar5416_cm_regs)) / sizeof((ar5416_cm_regs)[0])),
 ar5416_cm_regs,
 ar5416_cm_vals
};
static const uint16_t ar9160_regs[] = {
 (0x01030), (0x01070), (0x010b0), (0x010f0), (0x08014),
 (0x0801c), (0x08120), (0x081d0), (0x09804), (0x09820),
 (0x09824), (0x09828), (0x09834), (0x09838), (0x09844),
 (0x09848), (0x0a848), (0x0b848), (0x09850), (0x09858),
 (0x0985c), (0x09860), (0x09864), (0x09868), (0x0986c),
 (0x09914), (0x09918), (0x09924), (0x09944), (0x09960),
 (0x0a960), (0x0b960), (0x09964), (0x0c968), (0x099bc),
 (0x099c0), (0x099c4), (0x099c8), (0x099cc), (0x099d0),
 (0x099d4), (0x099d8), (0x0a204), (0x0a208), (0x0a20c),
 (0x0b20c), (0x0c20c), (0x0a21c), (0x0a230), (0x0a274),
 (0x0a300), (0x0a304), (0x0a308), (0x0a30c), (0x0a310),
 (0x0a314), (0x0a318), (0x0a31c), (0x0a320), (0x0a324),
 (0x0a328), (0x0a32c), (0x0a330), (0x0a334)
};
static const uint32_t ar9160_vals_5g20[] = {
 0x00000230, 0x00000168, 0x00000e60, 0x0000a000, 0x03e803e8,
 0x128d93a7, 0x08f04800, 0x00003210, 0x00000300, 0x02020200,
 0x00000e0e, 0x0a020001, 0x00000e0e, 0x00000007, 0x0372161e,
 0x001a6a65, 0x001a6a65, 0x001a6a65, 0x6c48b4e2, 0x7ec82d2e,
 0x31395d5e, 0x00048d18, 0x0001ce00, 0x409a40d0, 0x050cb081,
 0x000007d0, 0x0000000a, 0xd00a8a07, 0xffb81020, 0x00009b40,
 0x00009b40, 0x00009b40, 0x00001120, 0x000003b5, 0x001a0600,
 0x038919be, 0x06336f77, 0x6af65329, 0x08f186c8, 0x00046384,
 0x00000000, 0x00000000, 0x00000880, 0xd6be4788, 0x002fc160,
 0x002fc160, 0x002fc160, 0x1883800a, 0x00000000, 0x0a1a9caa,
 0x18010000, 0x30032602, 0x48073e06, 0x560b4c0a, 0x641a600f,
 0x7a4f6e1b, 0x8c5b7e5a, 0x9d0f96cf, 0xb51fa69f, 0xcb3fbd07,
 0x0000d7bf, 0x00000000, 0x00000000, 0x00000000
};
static const uint32_t ar9160_vals_5g40[] = {
 0x00000460, 0x000002d0, 0x00001cc0, 0x00014000, 0x07d007d0,
 0x128d93cf, 0x08f04800, 0x00003210, 0x000003c4, 0x02020200,
 0x00000e0e, 0x0a020001, 0x00000e0e, 0x00000007, 0x0372161e,
 0x001a6a65, 0x001a6a65, 0x001a6a65, 0x6d48b4e2, 0x7ec82d2e,
 0x3139605e, 0x00048d18, 0x0001ce00, 0x409a40d0, 0x050cb081,
 0x00000fa0, 0x00000014, 0xd00a8a07, 0xffb81020, 0x00009b40,
 0x00009b40, 0x00009b40, 0x00001120, 0x000003b5, 0x001a0600,
 0x038919be, 0x06336f77, 0x6af65329, 0x08f186c8, 0x00046384,
 0x00000000, 0x00000000, 0x00000880, 0xd6be4788, 0x002fc160,
 0x002fc160, 0x002fc160, 0x1883800a, 0x00000000, 0x0a1a9caa,
 0x18010000, 0x30032602, 0x48073e06, 0x560b4c0a, 0x641a600f,
 0x7a4f6e1b, 0x8c5b7e5a, 0x9d0f96cf, 0xb51fa69f, 0xcb3fbcbf,
 0x0000d7bf, 0x00000000, 0x00000000, 0x00000000
};
static const uint32_t ar9160_vals_2g40[] = {
 0x000002c0, 0x00000318, 0x00007c70, 0x00016000, 0x10801600,
 0x12e013d7, 0x08f04810, 0x0000320a, 0x000003c4, 0x02020200,
 0x00000e0e, 0x0a020001, 0x00000e0e, 0x00000007, 0x037216a0,
 0x00197a68, 0x00197a68, 0x00197a68, 0x6d48b0e2, 0x7ec82d2e,
 0x3139605e, 0x00048d20, 0x0001ce00, 0x409a40d0, 0x050cb081,
 0x00001130, 0x00000016, 0xd00a8a0d, 0xffb81020, 0x00009b40,
 0x00009b40, 0x00009b40, 0x00001120, 0x000003ce, 0x001a0c00,
 0x038919be, 0x06336f77, 0x6af65329, 0x08f186c8, 0x00046384,
 0x00000000, 0x00000000, 0x00000880, 0xd03e4788, 0x002ac120,
 0x002ac120, 0x002ac120, 0x1883800a, 0x00000210, 0x0a1a7caa,
 0x18010000, 0x2e032402, 0x4a0a3c06, 0x621a540b, 0x764f6c1b,
 0x845b7a5a, 0x950f8ccf, 0xa5cf9b4f, 0xbddfaf1f, 0xd1ffc93f,
 0x00000000, 0x00000000, 0x00000000, 0x00000000
};
static const uint32_t ar9160_vals_2g20[] = {
 0x00000160, 0x0000018c, 0x00003e38, 0x0000b000, 0x08400b00,
 0x12e013ab, 0x08f04810, 0x0000320a, 0x00000300, 0x02020200,
 0x00000e0e, 0x0a020001, 0x00000e0e, 0x00000007, 0x037216a0,
 0x00197a68, 0x00197a68, 0x00197a68, 0x6c48b0e2, 0x7ec82d2e,
 0x31395d5e, 0x00048d20, 0x0001ce00, 0x409a40d0, 0x050cb081,
 0x00000898, 0x0000000b, 0xd00a8a0d, 0xffb81020, 0x00009b40,
 0x00009b40, 0x00009b40, 0x00001120, 0x000003ce, 0x001a0c00,
 0x038919be, 0x06336f77, 0x6af65329, 0x08f186c8, 0x00046384,
 0x00000000, 0x00000000, 0x00000880, 0xd03e4788, 0x002ac120,
 0x002ac120, 0x002ac120, 0x1883800a, 0x00000108, 0x0a1a7caa,
 0x18010000, 0x2e032402, 0x4a0a3c06, 0x621a540b, 0x764f6c1b,
 0x845b7a5a, 0x950f8ccf, 0xa5cf9b4f, 0xbddfaf1f, 0xd1ffc93f,
 0x00000000, 0x00000000, 0x00000000, 0x00000000
};
static const uint16_t ar9160_cm_regs[] = {
 (0x0000c), (0x00030), (0x00034), (0x00040), (0x00044),
 (0x00048), (0x0004c), (0x00050), (0x00054), (0x00800),
 (0x00804), (0x00808), (0x0080c), (0x00810), (0x00814),
 (0x00818), (0x0081c), (0x00820), (0x00824), (0x01040),
 (0x01044), (0x01048), (0x0104c), (0x01050), (0x01054),
 (0x01058), (0x0105c), (0x01060), (0x01064), (0x01230),
 (0x01270), (0x01038), (0x01078), (0x010b8), (0x010f8),
 (0x01138), (0x01178), (0x011b8), (0x011f8), (0x01238),
 (0x01278), (0x012b8), (0x012f8), (0x01338), (0x01378),
 (0x013b8), (0x013f8), (0x01438), (0x01478), (0x014b8),
 (0x014f8), (0x01538), (0x01578), (0x015b8), (0x015f8),
 (0x01638), (0x01678), (0x016b8), (0x016f8), (0x01738),
 (0x01778), (0x017b8), (0x017f8), (0x0103c), (0x0107c),
 (0x010bc), (0x010fc), (0x0113c), (0x0117c), (0x011bc),
 (0x011fc), (0x0123c), (0x0127c), (0x012bc), (0x012fc),
 (0x0133c), (0x0137c), (0x013bc), (0x013fc), (0x0143c),
 (0x0147c), (0x04030), (0x0403c), (0x07010), (0x07038),
 (0x08004), (0x08008), (0x0800c), (0x08018), (0x08020),
 (0x08038), (0x0803c), (0x08048), (0x08054), (0x08058),
 (0x0805c), (0x08060), (0x08064), (0x080c0), (0x080c4),
 (0x080c8), (0x080cc), (0x080d0), (0x080d4), (0x080d8),
 (0x080e0), (0x080e4), (0x080e8), (0x080ec), (0x080f0),
 (0x080f4), (0x080f8), (0x080fc), (0x08100), (0x08104),
 (0x08108), (0x0810c), (0x08110), (0x08118), (0x0811c),
 (0x08124), (0x08128), (0x0812c), (0x08130), (0x08134),
 (0x08138), (0x0813c), (0x08144), (0x08168), (0x0816c),
 (0x08170), (0x08174), (0x08178), (0x0817c), (0x081c4),
 (0x081ec), (0x081f0), (0x081f4), (0x081f8), (0x081fc),
 (0x08200), (0x08204), (0x08208), (0x0820c), (0x08210),
 (0x08214), (0x08218), (0x0821c), (0x08220), (0x08224),
 (0x08228), (0x0822c), (0x08230), (0x08234), (0x08238),
 (0x0823c), (0x08240), (0x08244), (0x08248), (0x0824c),
 (0x08250), (0x08254), (0x08258), (0x0825c), (0x08260),
 (0x08264), (0x08270), (0x08274), (0x08278), (0x0827c),
 (0x08284), (0x08288), (0x0828c), (0x08294), (0x08298),
 (0x08300), (0x08304), (0x08308), (0x0830c), (0x08310),
 (0x08314), (0x08318), (0x08328), (0x0832c), (0x08330),
 (0x08334), (0x08338), (0x0833c), (0x08340), (0x09808),
 (0x0980c), (0x09810), (0x09814), (0x0981c), (0x0982c),
 (0x09830), (0x0983c), (0x09840), (0x0984c), (0x09854),
 (0x09900), (0x09904), (0x09908), (0x0990c), (0x0991c),
 (0x09920), (0x0a920), (0x0b920), (0x09928), (0x0992c),
 (0x09934), (0x09938), (0x0993c), (0x09948), (0x0994c),
 (0x09954), (0x09958), (0x09940), (0x0c95c), (0x09970),
 (0x09974), (0x09978), (0x0997c), (0x09980), (0x09984),
 (0x09988), (0x0998c), (0x09990), (0x09994), (0x09998),
 (0x0999c), (0x099a0), (0x099a4), (0x099a8), (0x099ac),
 (0x099b0), (0x099dc), (0x099e0), (0x099e4), (0x099e8),
 (0x099ec), (0x099fc), (0x09b00), (0x09b04), (0x09b08),
 (0x09b0c), (0x09b10), (0x09b14), (0x09b18), (0x09b1c),
 (0x09b20), (0x09b24), (0x09b28), (0x09b2c), (0x09b30),
 (0x09b34), (0x09b38), (0x09b3c), (0x09b40), (0x09b44),
 (0x09b48), (0x09b4c), (0x09b50), (0x09b54), (0x09b58),
 (0x09b5c), (0x09b60), (0x09b64), (0x09b68), (0x09b6c),
 (0x09b70), (0x09b74), (0x09b78), (0x09b7c), (0x09b80),
 (0x09b84), (0x09b88), (0x09b8c), (0x09b90), (0x09b94),
 (0x09b98), (0x09b9c), (0x09ba0), (0x09ba4), (0x09ba8),
 (0x09bac), (0x09bb0), (0x09bb4), (0x09bb8), (0x09bbc),
 (0x09bc0), (0x09bc4), (0x09bc8), (0x09bcc), (0x09bd0),
 (0x09bd4), (0x09bd8), (0x09bdc), (0x09be0), (0x09be4),
 (0x09be8), (0x09bec), (0x09bf0), (0x09bf4), (0x09bf8),
 (0x09bfc), (0x0a210), (0x0a214), (0x0a218), (0x0a220),
 (0x0a224), (0x0a228), (0x0a22c), (0x0a234), (0x0a238),
 (0x0a23c), (0x0a240), (0x0a244), (0x0a248), (0x0a24c),
 (0x0a250), (0x0a254), (0x0a258), (0x0a25c), (0x0a260),
 (0x0a268), (0x0a26c), (0x0b26c), (0x0c26c), (0x0d270),
 (0x0a278), (0x0a27c), (0x0a338), (0x0a33c), (0x0a340),
 (0x0a344), (0x0a348), (0x0a34c), (0x0a350), (0x0a354),
 (0x0a358), (0x0d35c), (0x0d360), (0x0d364), (0x0d368),
 (0x0d36c), (0x0d370), (0x0d374), (0x0d378), (0x0d37c),
 (0x0d380), (0x0d384), (0x0a388), (0x0a38c), (0x0a390),
 (0x0a394), (0x0a398), (0x0a39c), (0x0a3a0), (0x0a3a4),
 (0x0a3a8), (0x0a3ac), (0x0a3b0), (0x0a3b4), (0x0a3b8),
 (0x0a3bc), (0x0a3c0), (0x0a3c4), (0x0a3c8), (0x0a3cc),
 (0x0a3d0), (0x0a3d4), (0x0a3dc), (0x0a3e0)
};
static const uint32_t ar9160_cm_vals[] = {
 0x00000000, 0x00020015, 0x00000005, 0x00000000, 0x00000008,
 0x00000008, 0x00000010, 0x00000000, 0x0000001f, 0x00000000,
 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,
 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x002ffc0f,
 0x002ffc0f, 0x002ffc0f, 0x002ffc0f, 0x002ffc0f, 0x002ffc0f,
 0x002ffc0f, 0x002ffc0f, 0x002ffc0f, 0x002ffc0f, 0x00000000,
 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,
 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,
 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,
 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,
 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,
 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,
 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,
 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,
 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,
 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,
 0x00000000, 0x00000002, 0x00000002, 0x00000020, 0x000004c2,
 0x00000000, 0x00000000, 0x00000000, 0x00000700, 0x00000000,
 0x00000000, 0x00000000, 0x40000000, 0x00000000, 0x00000000,
 0x000fc78f, 0x0000000f, 0x00000000, 0x2a82301a, 0x05dc01e0,
 0x1f402710, 0x01f40000, 0x00001e00, 0x00000000, 0x00400000,
 0xffffffff, 0x0000ffff, 0x003f3f3f, 0x00000000, 0x00000000,
 0x00000000, 0x00000000, 0x00020000, 0x00020000, 0x00000001,
 0x00000052, 0x00000000, 0x00000168, 0x000100aa, 0x00003210,
 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,
 0x00000000, 0x00000000, 0xffffffff, 0x00000000, 0x00000000,
 0x32143320, 0xfaa4fa50, 0x00000100, 0x00000000, 0x00000000,
 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,
 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,
 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,
 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,
 0x00000000, 0x00100000, 0x0010f400, 0x00000100, 0x0001e800,
 0x00000000, 0x00000000, 0x00000000, 0x400000ff, 0x00080922,
 0x88a00010, 0x00000000, 0x40000000, 0x003e4180, 0x00000000,
 0x0000002c, 0x0000002c, 0x00000000, 0x00000000, 0x00000000,
 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,
 0x00000000, 0x00000000, 0x00000000, 0x00000007, 0x00000302,
 0x00000e00, 0x00ff0000, 0x00000000, 0x000107ff, 0x00000000,
 0xad848e19, 0x7d14e000, 0x9c0a9f6b, 0x00000000, 0x0000a000,
 0x00000000, 0x00200400, 0x206a01ae, 0x1284233c, 0x00000859,
 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x10000fff,
 0x05100000, 0x05100000, 0x05100000, 0x00000001, 0x00000004,
 0x1e1f2022, 0x0a0b0c0d, 0x00000000, 0x9280b212, 0x00020028,
 0x5f3ca3de, 0x2108ecff, 0x00750604, 0x004b6a8e, 0x190fb515,
 0x00000000, 0x00000001, 0x00000000, 0x00000000, 0x00000000,
 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,
 0x00000000, 0x00000000, 0x00000001, 0x201fff00, 0x006f0000,
 0x03051000, 0x00000000, 0x00000200, 0xaaaaaaaa, 0x3c466478,
 0x0cc80caa, 0x00001042, 0x00000000, 0x00000001, 0x00000002,
 0x00000003, 0x00000004, 0x00000005, 0x00000008, 0x00000009,
 0x0000000a, 0x0000000b, 0x0000000c, 0x0000000d, 0x00000010,
 0x00000011, 0x00000012, 0x00000013, 0x00000014, 0x00000015,
 0x00000018, 0x00000019, 0x0000001a, 0x0000001b, 0x0000001c,
 0x0000001d, 0x00000020, 0x00000021, 0x00000022, 0x00000023,
 0x00000024, 0x00000025, 0x00000028, 0x00000029, 0x0000002a,
 0x0000002b, 0x0000002c, 0x0000002d, 0x00000030, 0x00000031,
 0x00000032, 0x00000033, 0x00000034, 0x00000035, 0x00000035,
 0x00000035, 0x00000035, 0x00000035, 0x00000035, 0x00000035,
 0x00000035, 0x00000035, 0x00000035, 0x00000035, 0x00000035,
 0x00000035, 0x00000035, 0x00000035, 0x00000035, 0x00000035,
 0x00000035, 0x00000035, 0x00000035, 0x00000035, 0x00000010,
 0x0000001a, 0x40806333, 0x00106c10, 0x009c4060, 0x018830c6,
 0x00000400, 0x001a0bb5, 0x00000000, 0x20202020, 0x20202020,
 0x13c889af, 0x38490a20, 0x00007bb6, 0x0fff3ffc, 0x00000001,
 0x0000e000, 0x00000000, 0x0cc75380, 0x0f0f0f01, 0xdfa91f01,
 0x00000001, 0x0e79e5c6, 0x0e79e5c6, 0x0e79e5c6, 0x00820820,
 0x1ce739ce, 0x050701ce, 0x00000000, 0x00000000, 0x00000000,
 0x00000000, 0x3fffffff, 0x3fffffff, 0x3fffffff, 0x0003ffff,
 0x79bfaa03, 0x07ffffef, 0x0fffffe7, 0x17ffffe5, 0x1fffffe4,
 0x37ffffe3, 0x3fffffe3, 0x57ffffe3, 0x5fffffe2, 0x7fffffe2,
 0x7f3c7bba, 0xf3307ff0, 0x0c000000, 0x20202020, 0x20202020,
 0x1ce739ce, 0x000001ce, 0x00000001, 0x00000000, 0x00000000,
 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,
 0x00000000, 0x00000000, 0x00000000, 0x00000246, 0x20202020,
 0x20202020, 0x20202020, 0x1ce739ce, 0x000001ce
};
static const struct athn_ini ar9160_ini = {
 (sizeof((ar9160_regs)) / sizeof((ar9160_regs)[0])),
 ar9160_regs,
 ar9160_vals_5g20,
 ar9160_vals_5g40,
 ar9160_vals_2g40,
 ar9160_vals_2g20,
 (sizeof((ar9160_cm_regs)) / sizeof((ar9160_cm_regs)[0])),
 ar9160_cm_regs,
 ar9160_cm_vals
};
static const uint32_t ar5416_bb_rfgain_vals_5g[] = {
 0x00000000, 0x00000040, 0x00000080, 0x000001a1, 0x000001e1,
 0x00000021, 0x00000061, 0x00000168, 0x000001a8, 0x000001e8,
 0x00000028, 0x00000068, 0x00000189, 0x000001c9, 0x00000009,
 0x00000049, 0x00000089, 0x00000170, 0x000001b0, 0x000001f0,
 0x00000030, 0x00000070, 0x00000191, 0x000001d1, 0x00000011,
 0x00000051, 0x00000091, 0x000001b8, 0x000001f8, 0x00000038,
 0x00000078, 0x00000199, 0x000001d9, 0x00000019, 0x00000059,
 0x00000099, 0x000000d9, 0x000000f9, 0x000000f9, 0x000000f9,
 0x000000f9, 0x000000f9, 0x000000f9, 0x000000f9, 0x000000f9,
 0x000000f9, 0x000000f9, 0x000000f9, 0x000000f9, 0x000000f9,
 0x000000f9, 0x000000f9, 0x000000f9, 0x000000f9, 0x000000f9,
 0x000000f9, 0x000000f9, 0x000000f9, 0x000000f9, 0x000000f9,
 0x000000f9, 0x000000f9, 0x000000f9, 0x000000f9
};
static const uint32_t ar5416_bb_rfgain_vals_2g[] = {
 0x00000000, 0x00000040, 0x00000080, 0x00000141, 0x00000181,
 0x000001c1, 0x00000001, 0x00000041, 0x000001a8, 0x000001e8,
 0x00000028, 0x00000068, 0x000000a8, 0x00000169, 0x000001a9,
 0x000001e9, 0x00000029, 0x00000069, 0x00000190, 0x000001d0,
 0x00000010, 0x00000050, 0x00000090, 0x00000151, 0x00000191,
 0x000001d1, 0x00000011, 0x00000051, 0x00000198, 0x000001d8,
 0x00000018, 0x00000058, 0x00000098, 0x00000159, 0x00000199,
 0x000001d9, 0x00000019, 0x00000059, 0x00000099, 0x000000d9,
 0x000000f9, 0x000000f9, 0x000000f9, 0x000000f9, 0x000000f9,
 0x000000f9, 0x000000f9, 0x000000f9, 0x000000f9, 0x000000f9,
 0x000000f9, 0x000000f9, 0x000000f9, 0x000000f9, 0x000000f9,
 0x000000f9, 0x000000f9, 0x000000f9, 0x000000f9, 0x000000f9,
 0x000000f9, 0x000000f9, 0x000000f9, 0x000000f9
};
static const uint32_t ar5416_2_1_addac_vals[] = {
 0x00000000, 0x00000003, 0x00000000, 0x0000000c, 0x00000000,
 0x00000030, 0x00000000, 0x00000000, 0x00000000, 0x00000000,
 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,
 0x00000000, 0x00000000, 0x00000000, 0x00000060, 0x00000000,
 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,
 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,
 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,
 0x00000000
};
static const struct athn_addac ar5416_2_1_addac = {
 (sizeof((ar5416_2_1_addac_vals)) / sizeof((ar5416_2_1_addac_vals)[0])),
 ar5416_2_1_addac_vals
};
static const uint32_t ar5416_2_2_addac_vals[] = {
 0x00000000, 0x00000003, 0x00000000, 0x0000000c, 0x00000000,
 0x00000030, 0x00000000, 0x00000000, 0x00000000, 0x00000000,
 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,
 0x00000000, 0x00000000, 0x00000000, 0x00000060, 0x00000000,
 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,
 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,
 0x00000000, 0x00000058, 0x00000000, 0x00000000, 0x00000000,
 0x00000000
};
static const struct athn_addac ar5416_2_2_addac = {
 (sizeof((ar5416_2_2_addac_vals)) / sizeof((ar5416_2_2_addac_vals)[0])),
 ar5416_2_2_addac_vals
};
static const uint32_t ar9160_1_0_addac_vals[] = {
 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,
 0x00000000, 0x000000c0, 0x00000018, 0x00000004, 0x00000000,
 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,
 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,
 0x00000000, 0x000000c0, 0x00000019, 0x00000004, 0x00000000,
 0x00000000, 0x00000000, 0x00000004, 0x00000003, 0x00000008,
 0x00000000
};
static const struct athn_addac ar9160_1_0_addac = {
 (sizeof((ar9160_1_0_addac_vals)) / sizeof((ar9160_1_0_addac_vals)[0])),
 ar9160_1_0_addac_vals
};
static const uint32_t ar9160_1_1_addac_vals[] = {
 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,
 0x00000000, 0x000000c0, 0x00000018, 0x00000004, 0x00000000,
 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,
 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,
 0x00000000, 0x000000c0, 0x00000019, 0x00000004, 0x00000000,
 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,
 0x00000000
};
static const struct athn_addac ar9160_1_1_addac = {
 (sizeof((ar9160_1_1_addac_vals)) / sizeof((ar9160_1_1_addac_vals)[0])),
 ar9160_1_1_addac_vals
};
static const uint32_t ar5416_bank6tpc_vals[] = {
 0x00000000, 0x00000000, 0x00000000, 0x00e00000, 0x005e0000,
 0x00120000, 0x00620000, 0x00020000, 0x00ff0000, 0x00ff0000,
 0x00ff0000, 0x40ff0000, 0x005f0000, 0x00870000, 0x00f90000,
 0x007b0000, 0x00ff0000, 0x00f50000, 0x00dc0000, 0x00110000,
 0x006100a8, 0x00423022, 0x201400df, 0x00c40002, 0x003000f2,
 0x00440016, 0x00410040, 0x0001805e, 0x0000c0ab, 0x000000e1,
 0x00007081, 0x000000d4
};
static const uint32_t ar9160_bank6tpc_vals[] = {
 0x00000000, 0x00000000, 0x00000000, 0x00e00000, 0x005e0000,
 0x00120000, 0x00620000, 0x00020000, 0x00ff0000, 0x00ff0000,
 0x00ff0000, 0x40ff0000, 0x005f0000, 0x00870000, 0x00f90000,
 0x007b0000, 0x00ff0000, 0x00f50000, 0x00dc0000, 0x00110000,
 0x006100a8, 0x00423022, 0x2014008f, 0x00c40002, 0x003000f2,
 0x00440016, 0x00410040, 0x0001805e, 0x0000c0ab, 0x000000e1,
 0x00007080, 0x000000d4
};
static const uint32_t ar5416_bank6_vals[] = {
 0x00000000, 0x00000000, 0x00000000, 0x00e00000, 0x005e0000,
 0x00120000, 0x00620000, 0x00020000, 0x00ff0000, 0x00ff0000,
 0x00ff0000, 0x40ff0000, 0x005f0000, 0x00870000, 0x00f90000,
 0x007b0000, 0x00ff0000, 0x00f50000, 0x00dc0000, 0x00110000,
 0x006100a8, 0x004210a2, 0x0014008f, 0x00c40003, 0x003000f2,
 0x00440016, 0x00410040, 0x0001805e, 0x0000c0ab, 0x000000f1,
 0x00002081, 0x000000d4
};
static const uint32_t ar5416_serdes_regs[] = {
 0x4040,
 0x4040,
 0x4040,
 0x4040,
 0x4040,
 0x4040,
 0x4040,
 0x4040,
 0x4040,
 0x4044
};
static const uint32_t ar5416_serdes_vals[] = {
 0x9248fc00,
 0x24924924,
 0x28000039,
 0x53160824,
 0xe5980579,
 0x001defff,
 0x1aaabe40,
 0xbe105554,
 0x000e3007,
 0x00000000
};
static const struct athn_serdes ar5416_serdes = {
 (sizeof((ar5416_serdes_vals)) / sizeof((ar5416_serdes_vals)[0])),
 ar5416_serdes_regs,
 ar5416_serdes_vals,
};
static const uint16_t ar9280_2_0_regs[] = {
 (0x01030), (0x01070), (0x010b0), (0x010f0), (0x08014),
 (0x0801c), (0x08120), (0x081d0), (0x08318), (0x09804),
 (0x09820), (0x09824), (0x09828), (0x09834), (0x09838),
 (0x09840), (0x09844), (0x09850), (0x09858), (0x0985c),
 (0x09860), (0x09864), (0x09868), (0x0986c), (0x09914),
 (0x09918), (0x09924), (0x09944), (0x09960), (0x0a960),
 (0x09964), (0x0c968), (0x099b8), (0x099bc), (0x099c0),
 (0x0a204), (0x0a20c), (0x0b20c), (0x0a21c), (0x0a230),
 (0x0a23c), (0x0a250), (0x0a358), (0x0a388), (0x0a3d8),
 (0x07894)
};
static const uint32_t ar9280_2_0_vals_5g20[] = {
 0x00000230, 0x00000168, 0x00000e60, 0x00000000, 0x03e803e8,
 0x128d8027, 0x08f04800, 0x00003210, 0x00003e80, 0x00000300,
 0x02020200, 0x01000e0e, 0x0a020001, 0x00000e0e, 0x00000007,
 0x206a022e, 0x0372161e, 0x6c4000e2, 0x7ec88d2e, 0x31395d5e,
 0x00048d18, 0x0001ce00, 0x5ac640d0, 0x06903081, 0x000007d0,
 0x0000000a, 0xd00a8a0b, 0xffbc1010, 0x00000010, 0x00000010,
 0x00000210, 0x000003b5, 0x0000001c, 0x00000a00, 0x05eea6d4,
 0x00000444, 0x00000014, 0x00000014, 0x1883800a, 0x00000000,
 0x13c88000, 0x001ff000, 0x7999aa02, 0x0c000000, 0x00000000,
 0x5a508000
};
static const uint32_t ar9280_2_0_vals_5g40[] = {
 0x00000460, 0x000002d0, 0x00001cc0, 0x00000000, 0x07d007d0,
 0x128d804f, 0x08f04800, 0x00003210, 0x00007d00, 0x000003c4,
 0x02020200, 0x01000e0e, 0x0a020001, 0x00000e0e, 0x00000007,
 0x206a022e, 0x0372161e, 0x6d4000e2, 0x7ec88d2e, 0x3139605e,
 0x00048d18, 0x0001ce00, 0x5ac640d0, 0x06903081, 0x00000fa0,
 0x00000014, 0xd00a8a0b, 0xffbc1010, 0x00000010, 0x00000010,
 0x00000210, 0x000003b5, 0x0000001c, 0x00000a00, 0x05eea6d4,
 0x00000444, 0x00000014, 0x00000014, 0x1883800a, 0x00000000,
 0x13c88000, 0x001ff000, 0x7999aa02, 0x0c000000, 0x00000000,
 0x5a508000
};
static const uint32_t ar9280_2_0_vals_2g40[] = {
 0x000002c0, 0x00000318, 0x00007c70, 0x00000000, 0x10801600,
 0x12e00057, 0x08f04810, 0x0000320a, 0x00006880, 0x000003c4,
 0x02020200, 0x01000e0e, 0x0a020001, 0x00000e0e, 0x00000007,
 0x206a012e, 0x037216a0, 0x6d4000e2, 0x7ec84d2e, 0x3139605e,
 0x00048d20, 0x0001ce00, 0x5ac640d0, 0x06903881, 0x00001130,
 0x00000268, 0xd00a8a0d, 0xffbc1010, 0x00000010, 0x00000010,
 0x00000210, 0x000003ce, 0x0000001c, 0x00000c00, 0x05eea6d4,
 0x00000444, 0x0001f019, 0x0001f019, 0x1883800a, 0x00000210,
 0x13c88001, 0x0004a000, 0x7999aa0e, 0x08000000, 0x00000000,
 0x5a508000
};
static const uint32_t ar9280_2_0_vals_2g20[] = {
 0x00000160, 0x0000018c, 0x00003e38, 0x00000000, 0x08400b00,
 0x12e0002b, 0x08f04810, 0x0000320a, 0x00003440, 0x00000300,
 0x02020200, 0x01000e0e, 0x0a020001, 0x00000e0e, 0x00000007,
 0x206a012e, 0x037216a0, 0x6c4000e2, 0x7ec84d2e, 0x31395d5e,
 0x00048d20, 0x0001ce00, 0x5ac640d0, 0x06903881, 0x00000898,
 0x0000000b, 0xd00a8a0d, 0xffbc1010, 0x00000010, 0x00000010,
 0x00000210, 0x000003ce, 0x0000001c, 0x00000c00, 0x05eea6d4,
 0x00000444, 0x0001f019, 0x0001f019, 0x1883800a, 0x00000108,
 0x13c88000, 0x0004a000, 0x7999aa0e, 0x0c000000, 0x00000000,
 0x5a508000
};
static const uint16_t ar9280_2_0_cm_regs[] = {
 (0x0000c), (0x00030), (0x00034), (0x00040), (0x00044),
 (0x00048), (0x0004c), (0x00050), (0x00054), (0x00800),
 (0x00804), (0x00808), (0x0080c), (0x00810), (0x00814),
 (0x00818), (0x0081c), (0x00820), (0x00824), (0x01040),
 (0x01044), (0x01048), (0x0104c), (0x01050), (0x01054),
 (0x01058), (0x0105c), (0x01060), (0x01064), (0x01230),
 (0x01270), (0x01038), (0x01078), (0x010b8), (0x010f8),
 (0x01138), (0x01178), (0x011b8), (0x011f8), (0x01238),
 (0x01278), (0x012b8), (0x012f8), (0x01338), (0x01378),
 (0x013b8), (0x013f8), (0x01438), (0x01478), (0x014b8),
 (0x014f8), (0x01538), (0x01578), (0x015b8), (0x015f8),
 (0x01638), (0x01678), (0x016b8), (0x016f8), (0x01738),
 (0x01778), (0x017b8), (0x017f8), (0x0103c), (0x0107c),
 (0x010bc), (0x010fc), (0x0113c), (0x0117c), (0x011bc),
 (0x011fc), (0x0123c), (0x0127c), (0x012bc), (0x012fc),
 (0x0133c), (0x0137c), (0x013bc), (0x013fc), (0x0143c),
 (0x0147c), (0x04030), (0x0403c), (0x04024), (0x04060),
 (0x04064), (0x07010), (0x07034), (0x07038), (0x08004),
 (0x08008), (0x0800c), (0x08018), (0x08020), (0x08038),
 (0x0803c), (0x08048), (0x08054), (0x08058), (0x0805c),
 (0x08060), (0x08064), (0x08070), (0x080c0), (0x080c4),
 (0x080c8), (0x080cc), (0x080d0), (0x080d4), (0x080d8),
 (0x080e0), (0x080e4), (0x080e8), (0x080ec), (0x080f0),
 (0x080f4), (0x080f8), (0x080fc), (0x08100), (0x08104),
 (0x08108), (0x0810c), (0x08110), (0x08118), (0x0811c),
 (0x08124), (0x08128), (0x0812c), (0x08130), (0x08134),
 (0x08138), (0x0813c), (0x08144), (0x08168), (0x0816c),
 (0x08170), (0x08174), (0x08178), (0x0817c), (0x081c0),
 (0x081ec), (0x081f0), (0x081f4), (0x081f8), (0x081fc),
 (0x08200), (0x08204), (0x08208), (0x0820c), (0x08210),
 (0x08214), (0x08218), (0x0821c), (0x08220), (0x08224),
 (0x08228), (0x0822c), (0x08230), (0x08234), (0x08238),
 (0x0823c), (0x08240), (0x08244), (0x08248), (0x0824c),
 (0x08250), (0x08254), (0x08258), (0x0825c), (0x08260),
 (0x08264), (0x08270), (0x08274), (0x08278), (0x0827c),
 (0x08284), (0x08288), (0x0828c), (0x08294), (0x08298),
 (0x0829c), (0x08300), (0x08314), (0x08328), (0x0832c),
 (0x08330), (0x08334), (0x08338), (0x0833c), (0x08340),
 (0x08344), (0x09808), (0x0980c), (0x09810), (0x09814),
 (0x0981c), (0x0982c), (0x09830), (0x0983c), (0x0984c),
 (0x0a84c), (0x09854), (0x09900), (0x09904), (0x09908),
 (0x0990c), (0x09910), (0x0991c), (0x09920), (0x0a920),
 (0x09928), (0x0992c), (0x09934), (0x09938), (0x0993c),
 (0x09948), (0x0994c), (0x09954), (0x09958), (0x09940),
 (0x0c95c), (0x09970), (0x09974), (0x09978), (0x0997c),
 (0x09980), (0x09984), (0x09988), (0x0998c), (0x09990),
 (0x09994), (0x09998), (0x0999c), (0x099a0), (0x099a4),
 (0x099a8), (0x099ac), (0x099b0), (0x099b4), (0x099c4),
 (0x099c8), (0x099cc), (0x099d0), (0x099d4), (0x099d8),
 (0x099dc), (0x099e0), (0x099e4), (0x099e8), (0x099ec),
 (0x099f0), (0x099fc), (0x0a208), (0x0a210), (0x0a214),
 (0x0a218), (0x0a220), (0x0a224), (0x0a228), (0x0a22c),
 (0x0a234), (0x0a238), (0x0a240), (0x0a244), (0x0a248),
 (0x0a24c), (0x0a254), (0x0a258), (0x0a25c), (0x0a260),
 (0x0a268), (0x0a26c), (0x0b26c), (0x0d270), (0x0a278),
 (0x0d35c), (0x0d360), (0x0d364), (0x0d368), (0x0d36c),
 (0x0d370), (0x0d374), (0x0d378), (0x0d37c), (0x0d380),
 (0x0d384), (0x0a38c), (0x0a390), (0x0a394), (0x0a398),
 (0x0a39c), (0x0a3a0), (0x0a3a4), (0x0a3a8), (0x0a3ac),
 (0x0a3b0), (0x0a3b4), (0x0a3b8), (0x0a3bc), (0x0a3c0),
 (0x0a3c4), (0x0a3c8), (0x0a3cc), (0x0a3d0), (0x0a3d4),
 (0x0a3dc), (0x0a3e0), (0x0a3e4), (0x0a3e8), (0x07800),
 (0x07804), (0x07808), (0x0780c), (0x07810), (0x07818),
 (0x07824), (0x07828), (0x0782c), (0x07830), (0x07834),
 (0x0783c), (0x07848), (0x0784c), (0x07850), (0x07854),
 (0x07858), (0x07860), (0x07864), (0x07868), (0x0786c),
 (0x07870), (0x07874), (0x07878), (0x0787c), (0x07880),
 (0x07884), (0x07888), (0x0788c), (0x07890), (0x07898)
};
static const uint32_t ar9280_2_0_cm_vals[] = {
 0x00000000, 0x00020015, 0x00000005, 0x00000000, 0x00000008,
 0x00000008, 0x00000010, 0x00000000, 0x0000001f, 0x00000000,
 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,
 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x002ffc0f,
 0x002ffc0f, 0x002ffc0f, 0x002ffc0f, 0x002ffc0f, 0x002ffc0f,
 0x002ffc0f, 0x002ffc0f, 0x002ffc0f, 0x002ffc0f, 0x00000000,
 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,
 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,
 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,
 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,
 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,
 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,
 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,
 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,
 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,
 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,
 0x00000000, 0x00000002, 0x00000002, 0x0000001f, 0x00000000,
 0x00000000, 0x00000033, 0x00000002, 0x000004c2, 0x00000000,
 0x00000000, 0x00000000, 0x00000700, 0x00000000, 0x00000000,
 0x00000000, 0x40000000, 0x00000000, 0x00000000, 0x000fc78f,
 0x0000000f, 0x00000000, 0x00000000, 0x2a80001a, 0x05dc01e0,
 0x1f402710, 0x01f40000, 0x00001e00, 0x00000000, 0x00400000,
 0xffffffff, 0x0000ffff, 0x003f3f3f, 0x00000000, 0x00000000,
 0x00000000, 0x00000000, 0x00020000, 0x00020000, 0x00000001,
 0x00000052, 0x00000000, 0x00000168, 0x000100aa, 0x00003210,
 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,
 0x00000000, 0x00000000, 0xffffffff, 0x00000000, 0x00000000,
 0x32143320, 0xfaa4fa50, 0x00000100, 0x00000000, 0x00000000,
 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,
 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,
 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,
 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,
 0x00000000, 0x00100000, 0x0010f400, 0x00000100, 0x0001e800,
 0x00000000, 0x00000000, 0x00000000, 0x400000ff, 0x00080922,
 0x88a00010, 0x00000000, 0x40000000, 0x003e4180, 0x00000000,
 0x0000002c, 0x0000002c, 0x00000000, 0x00000000, 0x00000000,
 0x00000000, 0x00000040, 0x00000000, 0x00000000, 0x00000007,
 0x00000302, 0x00000e00, 0x00ff0000, 0x00000000, 0x000107ff,
 0x00481043, 0x00000000, 0xafa68e30, 0xfd14e000, 0x9c0a9f6b,
 0x00000000, 0x0000a000, 0x00000000, 0x00200400, 0x0040233c,
 0x0040233c, 0x00000044, 0x00000000, 0x00000000, 0x00000000,
 0x00000000, 0x01002310, 0x10000fff, 0x04900000, 0x04900000,
 0x00000001, 0x00000004, 0x1e1f2022, 0x0a0b0c0d, 0x00000000,
 0x9280c00a, 0x00020028, 0x5f3ca3de, 0x2108ecff, 0x14750604,
 0x004b6a8e, 0x190fb514, 0x00000000, 0x00000001, 0x00000000,
 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,
 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000001,
 0x201fff00, 0x006f0000, 0x03051000, 0x00000820, 0x06336f77,
 0x6af6532f, 0x08f186c8, 0x00046384, 0x00000000, 0x00000000,
 0x00000000, 0x00000000, 0xaaaaaaaa, 0x3c466478, 0x0cc80caa,
 0x00000000, 0x00001042, 0x803e4788, 0x4080a333, 0x40206c10,
 0x009c4060, 0x01834061, 0x00000400, 0x000003b5, 0x233f7180,
 0x20202020, 0x20202020, 0x38490a20, 0x00007bb6, 0x0fff3ffc,
 0x00000000, 0x00000000, 0x0cdbd380, 0x0f0f0f01, 0xdfa91f01,
 0x00000000, 0x0e79e5c6, 0x0e79e5c6, 0x00820820, 0x1ce739ce,
 0x07ffffef, 0x0fffffe7, 0x17ffffe5, 0x1fffffe4, 0x37ffffe3,
 0x3fffffe3, 0x57ffffe3, 0x5fffffe2, 0x7fffffe2, 0x7f3c7bba,
 0xf3307ff0, 0x20202020, 0x20202020, 0x1ce739ce, 0x000001ce,
 0x00000001, 0x00000000, 0x00000000, 0x00000000, 0x00000000,
 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,
 0x00000000, 0x00000246, 0x20202020, 0x20202020, 0x20202020,
 0x1ce739ce, 0x000001ce, 0x00000000, 0x18c43433, 0x00040000,
 0xdb005012, 0x04924914, 0x21084210, 0x6d801300, 0x07e41000,
 0x00040000, 0xdb005012, 0x04924914, 0x21084210, 0x6d801300,
 0x07e40000, 0x00100000, 0x773f0567, 0x54214514, 0x12035828,
 0x9259269a, 0x52802000, 0x0a8e370e, 0xc0102850, 0x812d4000,
 0x807ec400, 0x001b6db0, 0x00376b63, 0x06db6db6, 0x006d8000,
 0xffeffffe, 0xffeffffe, 0x00010000, 0x02060aeb, 0x2a850160
};
static const uint16_t ar9280_2_0_fast_clock_regs[] = {
 (0x01030), (0x01070), (0x010b0), (0x08014), (0x0801c),
 (0x08318), (0x09820), (0x09824), (0x09828), (0x09834),
 (0x09844), (0x09914), (0x09918)
};
static const uint32_t ar9280_2_0_fast_clock_vals_5g20[] = {
 0x00000268, 0x0000018c, 0x00000fd0, 0x044c044c, 0x148ec02b,
 0x000044c0, 0x02020200, 0x01000f0f, 0x0b020001, 0x00000f0f,
 0x03721821, 0x00000898, 0x0000000b
};
static const uint32_t ar9280_2_0_fast_clock_vals_5g40[] = {
 0x000004d0, 0x00000318, 0x00001fa0, 0x08980898, 0x148ec057,
 0x00008980, 0x02020200, 0x01000f0f, 0x0b020001, 0x00000f0f,
 0x03721821, 0x00001130, 0x00000016
};
static const struct athn_ini ar9280_2_0_ini = {
 (sizeof((ar9280_2_0_regs)) / sizeof((ar9280_2_0_regs)[0])),
 ar9280_2_0_regs,
 ar9280_2_0_vals_5g20,
 ar9280_2_0_vals_5g40,
 ar9280_2_0_vals_2g40,
 ar9280_2_0_vals_2g20,
 (sizeof((ar9280_2_0_cm_regs)) / sizeof((ar9280_2_0_cm_regs)[0])),
 ar9280_2_0_cm_regs,
 ar9280_2_0_cm_vals,
 (sizeof((ar9280_2_0_fast_clock_regs)) / sizeof((ar9280_2_0_fast_clock_regs)[0])),
 ar9280_2_0_fast_clock_regs,
 ar9280_2_0_fast_clock_vals_5g20,
 ar9280_2_0_fast_clock_vals_5g40
};
static const uint16_t ar9280_2_0_tx_gain_regs[] = {
 (0x0a274), (0x0a27c), (0x0a300), (0x0a304), (0x0a308),
 (0x0a30c), (0x0a310), (0x0a314), (0x0a318), (0x0a31c),
 (0x0a320), (0x0a324), (0x0a328), (0x0a32c), (0x0a330),
 (0x0a334), (0x0a338), (0x0a33c), (0x0a340), (0x0a344),
 (0x0a348), (0x0a34c), (0x0a350), (0x0a354), (0x0a3ec),
 (0x07814), (0x07838), (0x0781c), (0x07840), (0x07820),
 (0x07844)
};
static const uint32_t ar9280_2_0_tx_gain_vals_5g[] = {
 0x0a19c652, 0x050701ce, 0x00000000, 0x00003002, 0x00006004,
 0x0000a006, 0x0000e012, 0x00011014, 0x0001504a, 0x0001904c,
 0x0001c04e, 0x00020092, 0x0002410a, 0x0002710c, 0x0002b18b,
 0x0002e1cc, 0x000321ec, 0x000321ec, 0x000321ec, 0x000321ec,
 0x000321ec, 0x000321ec, 0x000321ec, 0x000321ec, 0x00f70081,
 0x0019beff, 0x0019beff, 0x00392000, 0x00392000, 0x92592480,
 0x92592480
};
static const uint32_t ar9280_2_0_tx_gain_vals_2g[] = {
 0x0a1aa652, 0x050701ce, 0x00000000, 0x00003002, 0x00008009,
 0x0000b00b, 0x0000e012, 0x00012048, 0x0001604a, 0x0001a211,
 0x0001e213, 0x0002121b, 0x00024412, 0x00028414, 0x0002b44a,
 0x00030649, 0x0003364b, 0x00038a49, 0x0003be48, 0x0003ee4a,
 0x00042e88, 0x00046e8a, 0x00049ec9, 0x0004bf42, 0x00f70081,
 0x0019beff, 0x0019beff, 0x00392000, 0x00392000, 0x92592480,
 0x92592480
};
static const struct athn_gain ar9280_2_0_tx_gain = {
 (sizeof((ar9280_2_0_tx_gain_regs)) / sizeof((ar9280_2_0_tx_gain_regs)[0])),
 ar9280_2_0_tx_gain_regs,
 ar9280_2_0_tx_gain_vals_5g,
 ar9280_2_0_tx_gain_vals_2g
};
static const uint32_t ar9280_2_0_tx_gain_high_power_vals_5g[] = {
 0x0a19e652, 0x050739ce, 0x00000000, 0x00003002, 0x00006004,
 0x0000a006, 0x0000e012, 0x00011014, 0x0001504a, 0x0001904c,
 0x0001c04e, 0x00021092, 0x0002510a, 0x0002910c, 0x0002c18b,
 0x0002f1cc, 0x000321eb, 0x000341ec, 0x000341ec, 0x000341ec,
 0x000341ec, 0x000341ec, 0x000341ec, 0x000341ec, 0x00f70081,
 0x00198eff, 0x00198eff, 0x00172000, 0x00172000, 0xf258a480,
 0xf258a480
};
static const uint32_t ar9280_2_0_tx_gain_high_power_vals_2g[] = {
 0x0a1aa652, 0x050739ce, 0x00000000, 0x00004002, 0x00007008,
 0x0000c010, 0x00010012, 0x00013014, 0x0001820a, 0x0001b211,
 0x0001e213, 0x00022411, 0x00025413, 0x00029811, 0x0002c813,
 0x00030a14, 0x00035a50, 0x00039c4c, 0x0003de8a, 0x00042e92,
 0x00046ed2, 0x0004bed5, 0x0004ff54, 0x00055fd5, 0x00f70081,
 0x00198eff, 0x00198eff, 0x00172000, 0x00172000, 0xf258a480,
 0xf258a480
};
static const struct athn_gain ar9280_2_0_tx_gain_high_power = {
 (sizeof((ar9280_2_0_tx_gain_regs)) / sizeof((ar9280_2_0_tx_gain_regs)[0])),
 ar9280_2_0_tx_gain_regs,
 ar9280_2_0_tx_gain_high_power_vals_5g,
 ar9280_2_0_tx_gain_high_power_vals_2g
};
static const uint16_t ar9280_2_0_rx_gain_regs[] = {
 (0x09a00), (0x09a04), (0x09a08), (0x09a0c), (0x09a10),
 (0x09a14), (0x09a18), (0x09a1c), (0x09a20), (0x09a24),
 (0x09a28), (0x09a2c), (0x09a30), (0x09a34), (0x09a38),
 (0x09a3c), (0x09a40), (0x09a44), (0x09a48), (0x09a4c),
 (0x09a50), (0x09a54), (0x09a58), (0x09a5c), (0x09a60),
 (0x09a64), (0x09a68), (0x09a6c), (0x09a70), (0x09a74),
 (0x09a78), (0x09a7c), (0x09a80), (0x09a84), (0x09a88),
 (0x09a8c), (0x09a90), (0x09a94), (0x09a98), (0x09a9c),
 (0x09aa0), (0x09aa4), (0x09aa8), (0x09aac), (0x09ab0),
 (0x09ab4), (0x09ab8), (0x09abc), (0x09ac0), (0x09ac4),
 (0x09ac8), (0x09acc), (0x09ad0), (0x09ad4), (0x09ad8),
 (0x09adc), (0x09ae0), (0x09ae4), (0x09ae8), (0x09aec),
 (0x09af0), (0x09af4), (0x09af8), (0x09afc), (0x09b00),
 (0x09b04), (0x09b08), (0x09b0c), (0x09b10), (0x09b14),
 (0x09b18), (0x09b1c), (0x09b20), (0x09b24), (0x09b28),
 (0x09b2c), (0x09b30), (0x09b34), (0x09b38), (0x09b3c),
 (0x09b40), (0x09b44), (0x09b48), (0x09b4c), (0x09b50),
 (0x09b54), (0x09b58), (0x09b5c), (0x09b60), (0x09b64),
 (0x09b68), (0x09b6c), (0x09b70), (0x09b74), (0x09b78),
 (0x09b7c), (0x09b80), (0x09b84), (0x09b88), (0x09b8c),
 (0x09b90), (0x09b94), (0x09b98), (0x09b9c), (0x09ba0),
 (0x09ba4), (0x09ba8), (0x09bac), (0x09bb0), (0x09bb4),
 (0x09bb8), (0x09bbc), (0x09bc0), (0x09bc4), (0x09bc8),
 (0x09bcc), (0x09bd0), (0x09bd4), (0x09bd8), (0x09bdc),
 (0x09be0), (0x09be4), (0x09be8), (0x09bec), (0x09bf0),
 (0x09bf4), (0x09bf8), (0x09bfc), (0x09848), (0x0a848)
};
static const uint32_t ar9280_2_0_rx_gain_vals_5g[] = {
 0x00008184, 0x00008188, 0x0000818c, 0x00008190, 0x00008194,
 0x00008200, 0x00008204, 0x00008208, 0x0000820c, 0x00008210,
 0x00008214, 0x00008280, 0x00008284, 0x00008288, 0x0000828c,
 0x00008290, 0x00008300, 0x00008304, 0x00008308, 0x0000830c,
 0x00008310, 0x00008314, 0x00008380, 0x00008384, 0x00008388,
 0x0000838c, 0x00008390, 0x00008394, 0x0000a380, 0x0000a384,
 0x0000a388, 0x0000a38c, 0x0000a390, 0x0000a394, 0x0000a780,
 0x0000a784, 0x0000a788, 0x0000a78c, 0x0000a790, 0x0000a794,
 0x0000ab84, 0x0000ab88, 0x0000ab8c, 0x0000ab90, 0x0000ab94,
 0x0000af80, 0x0000af84, 0x0000af88, 0x0000af8c, 0x0000af90,
 0x0000af94, 0x0000b380, 0x0000b384, 0x0000b388, 0x0000b38c,
 0x0000b390, 0x0000b394, 0x0000b398, 0x0000b780, 0x0000b784,
 0x0000b788, 0x0000b78c, 0x0000b790, 0x0000b794, 0x0000b798,
 0x0000d784, 0x0000d788, 0x0000d78c, 0x0000d790, 0x0000f780,
 0x0000f784, 0x0000f788, 0x0000f78c, 0x0000f790, 0x0000f794,
 0x0000f7a4, 0x0000f7a8, 0x0000f7ac, 0x0000f7b0, 0x0000f7b4,
 0x0000f7a1, 0x0000f7a5, 0x0000f7a9, 0x0000f7ad, 0x0000f7b1,
 0x0000f7b5, 0x0000f7c5, 0x0000f7c9, 0x0000f7cd, 0x0000f7d1,
 0x0000f7d5, 0x0000f7c2, 0x0000f7c6, 0x0000f7ca, 0x0000f7ce,
 0x0000f7d2, 0x0000f7d6, 0x0000f7c3, 0x0000f7c7, 0x0000f7cb,
 0x0000f7d3, 0x0000f7d7, 0x0000f7db, 0x0000f7db, 0x0000f7db,
 0x0000f7db, 0x0000f7db, 0x0000f7db, 0x0000f7db, 0x0000f7db,
 0x0000f7db, 0x0000f7db, 0x0000f7db, 0x0000f7db, 0x0000f7db,
 0x0000f7db, 0x0000f7db, 0x0000f7db, 0x0000f7db, 0x0000f7db,
 0x0000f7db, 0x0000f7db, 0x0000f7db, 0x0000f7db, 0x0000f7db,
 0x0000f7db, 0x0000f7db, 0x0000f7db, 0x00001066, 0x00001066
};
static const uint32_t ar9280_2_0_rx_gain_vals_2g[] = {
 0x00008000, 0x00008000, 0x00008000, 0x00008000, 0x00008000,
 0x00008000, 0x00008004, 0x00008008, 0x0000800c, 0x00008080,
 0x00008084, 0x00008088, 0x0000808c, 0x00008100, 0x00008104,
 0x00008108, 0x0000810c, 0x00008110, 0x00008114, 0x00008180,
 0x00008184, 0x00008188, 0x0000818c, 0x00008190, 0x00008194,
 0x000081a0, 0x0000820c, 0x000081a8, 0x00008284, 0x00008288,
 0x00008224, 0x00008290, 0x00008300, 0x00008304, 0x00008308,
 0x0000830c, 0x00008380, 0x00008384, 0x00008700, 0x00008704,
 0x00008708, 0x0000870c, 0x00008780, 0x00008784, 0x00008b00,
 0x00008b04, 0x00008b08, 0x00008b0c, 0x00008b80, 0x00008b84,
 0x00008b88, 0x00008b8c, 0x00008b90, 0x00008f80, 0x00008f84,
 0x00008f88, 0x00008f8c, 0x00008f90, 0x0000930c, 0x00009310,
 0x00009384, 0x00009388, 0x00009324, 0x00009704, 0x000096a4,
 0x000096a8, 0x00009710, 0x00009714, 0x00009720, 0x00009724,
 0x00009728, 0x0000972c, 0x000097a0, 0x000097a4, 0x000097a8,
 0x000097b0, 0x000097b4, 0x000097b8, 0x000097a5, 0x000097a9,
 0x000097ad, 0x000097b1, 0x000097b5, 0x000097b9, 0x000097c5,
 0x000097c9, 0x000097d1, 0x000097d5, 0x000097d9, 0x000097c6,
 0x000097ca, 0x000097ce, 0x000097d2, 0x000097d6, 0x000097c3,
 0x000097c7, 0x000097cb, 0x000097cf, 0x000097d7, 0x000097db,
 0x000097db, 0x000097db, 0x000097db, 0x000097db, 0x000097db,
 0x000097db, 0x000097db, 0x000097db, 0x000097db, 0x000097db,
 0x000097db, 0x000097db, 0x000097db, 0x000097db, 0x000097db,
 0x000097db, 0x000097db, 0x000097db, 0x000097db, 0x000097db,
 0x000097db, 0x000097db, 0x000097db, 0x000097db, 0x000097db,
 0x000097db, 0x000097db, 0x000097db, 0x00001063, 0x00001063
};
static const struct athn_gain ar9280_2_0_rx_gain = {
 (sizeof((ar9280_2_0_rx_gain_regs)) / sizeof((ar9280_2_0_rx_gain_regs)[0])),
 ar9280_2_0_rx_gain_regs,
 ar9280_2_0_rx_gain_vals_5g,
 ar9280_2_0_rx_gain_vals_2g
};
static const uint32_t ar9280_2_0_rx_gain_13db_backoff_vals_5g[] = {
 0x00008184, 0x00008188, 0x0000818c, 0x00008190, 0x00008194,
 0x00008200, 0x00008204, 0x00008208, 0x0000820c, 0x00008210,
 0x00008214, 0x00008280, 0x00008284, 0x00008288, 0x0000828c,
 0x00008290, 0x00008300, 0x00008304, 0x00008308, 0x0000830c,
 0x00008310, 0x00008314, 0x00008380, 0x00008384, 0x00008388,
 0x0000838c, 0x00008390, 0x00008394, 0x0000a380, 0x0000a384,
 0x0000a388, 0x0000a38c, 0x0000a390, 0x0000a394, 0x0000a780,
 0x0000a784, 0x0000a788, 0x0000a78c, 0x0000a790, 0x0000a794,
 0x0000ab84, 0x0000ab88, 0x0000ab8c, 0x0000ab90, 0x0000ab94,
 0x0000af80, 0x0000af84, 0x0000af88, 0x0000af8c, 0x0000af90,
 0x0000af94, 0x0000b380, 0x0000b384, 0x0000b388, 0x0000b38c,
 0x0000b390, 0x0000b394, 0x0000b398, 0x0000b780, 0x0000b784,
 0x0000b788, 0x0000b78c, 0x0000b790, 0x0000b794, 0x0000b798,
 0x0000d784, 0x0000d788, 0x0000d78c, 0x0000d790, 0x0000f780,
 0x0000f784, 0x0000f788, 0x0000f78c, 0x0000f790, 0x0000f794,
 0x0000f7a4, 0x0000f7a8, 0x0000f7ac, 0x0000f7b0, 0x0000f7b4,
 0x0000f7a1, 0x0000f7a5, 0x0000f7a9, 0x0000f7ad, 0x0000f7b1,
 0x0000f7b5, 0x0000f7c5, 0x0000f7c9, 0x0000f7cd, 0x0000f7d1,
 0x0000f7d5, 0x0000f7c2, 0x0000f7c6, 0x0000f7ca, 0x0000f7ce,
 0x0000f7d2, 0x0000f7d6, 0x0000f7c3, 0x0000f7c7, 0x0000f7cb,
 0x0000f7d3, 0x0000f7d7, 0x0000f7db, 0x0000f7db, 0x0000f7db,
 0x0000f7db, 0x0000f7db, 0x0000f7db, 0x0000f7db, 0x0000f7db,
 0x0000f7db, 0x0000f7db, 0x0000f7db, 0x0000f7db, 0x0000f7db,
 0x0000f7db, 0x0000f7db, 0x0000f7db, 0x0000f7db, 0x0000f7db,
 0x0000f7db, 0x0000f7db, 0x0000f7db, 0x0000f7db, 0x0000f7db,
 0x0000f7db, 0x0000f7db, 0x0000f7db, 0x00001066, 0x00001066
};
static const uint32_t ar9280_2_0_rx_gain_13db_backoff_vals_2g[] = {
 0x00000290, 0x00000300, 0x00000304, 0x00000308, 0x0000030c,
 0x00008000, 0x00008004, 0x00008008, 0x0000800c, 0x00008080,
 0x00008084, 0x00008088, 0x0000808c, 0x00008100, 0x00008104,
 0x00008108, 0x0000810c, 0x00008110, 0x00008114, 0x00008180,
 0x00008184, 0x00008188, 0x0000818c, 0x00008190, 0x00008194,
 0x000081a0, 0x0000820c, 0x000081a8, 0x00008284, 0x00008288,
 0x00008224, 0x00008290, 0x00008300, 0x00008304, 0x00008308,
 0x0000830c, 0x00008380, 0x00008384, 0x00008700, 0x00008704,
 0x00008708, 0x0000870c, 0x00008780, 0x00008784, 0x00008b00,
 0x00008b04, 0x00008b08, 0x00008b0c, 0x00008b80, 0x00008b84,
 0x00008b88, 0x00008b8c, 0x00008b90, 0x00008f80, 0x00008f84,
 0x00008f88, 0x00008f8c, 0x00008f90, 0x00009310, 0x00009314,
 0x00009320, 0x00009324, 0x00009328, 0x0000932c, 0x00009330,
 0x00009334, 0x00009321, 0x00009325, 0x00009329, 0x0000932d,
 0x00009331, 0x00009335, 0x00009322, 0x00009326, 0x0000932a,
 0x0000932e, 0x00009332, 0x00009336, 0x00009323, 0x00009327,
 0x0000932b, 0x0000932f, 0x00009333, 0x00009337, 0x00009343,
 0x00009347, 0x0000934b, 0x0000934f, 0x00009353, 0x00009357,
 0x0000935b, 0x0000935b, 0x0000935b, 0x0000935b, 0x0000935b,
 0x0000935b, 0x0000935b, 0x0000935b, 0x0000935b, 0x0000935b,
 0x0000935b, 0x0000935b, 0x0000935b, 0x0000935b, 0x0000935b,
 0x0000935b, 0x0000935b, 0x0000935b, 0x0000935b, 0x0000935b,
 0x0000935b, 0x0000935b, 0x0000935b, 0x0000935b, 0x0000935b,
 0x0000935b, 0x0000935b, 0x0000935b, 0x0000935b, 0x0000935b,
 0x0000935b, 0x0000935b, 0x0000935b, 0x0000935b, 0x0000935b,
 0x0000935b, 0x0000935b, 0x0000935b, 0x0000105a, 0x0000105a
};
static const struct athn_gain ar9280_2_0_rx_gain_13db_backoff = {
 (sizeof((ar9280_2_0_rx_gain_regs)) / sizeof((ar9280_2_0_rx_gain_regs)[0])),
 ar9280_2_0_rx_gain_regs,
 ar9280_2_0_rx_gain_13db_backoff_vals_5g,
 ar9280_2_0_rx_gain_13db_backoff_vals_2g
};
static const uint32_t ar9280_2_0_rx_gain_23db_backoff_vals_5g[] = {
 0x00008184, 0x00008188, 0x0000818c, 0x00008190, 0x00008194,
 0x00008200, 0x00008204, 0x00008208, 0x0000820c, 0x00008210,
 0x00008214, 0x00008280, 0x00008284, 0x00008288, 0x0000828c,
 0x00008290, 0x00008300, 0x00008304, 0x00008308, 0x0000830c,
 0x00008310, 0x00008314, 0x00008380, 0x00008384, 0x00008388,
 0x0000838c, 0x00008390, 0x00008394, 0x0000a380, 0x0000a384,
 0x0000a388, 0x0000a38c, 0x0000a390, 0x0000a394, 0x0000a780,
 0x0000a784, 0x0000a788, 0x0000a78c, 0x0000a790, 0x0000a794,
 0x0000ab84, 0x0000ab88, 0x0000ab8c, 0x0000ab90, 0x0000ab94,
 0x0000af80, 0x0000af84, 0x0000af88, 0x0000af8c, 0x0000af90,
 0x0000af94, 0x0000b380, 0x0000b384, 0x0000b388, 0x0000b38c,
 0x0000b390, 0x0000b394, 0x0000b398, 0x0000b780, 0x0000b784,
 0x0000b788, 0x0000b78c, 0x0000b790, 0x0000b794, 0x0000b798,
 0x0000d784, 0x0000d788, 0x0000d78c, 0x0000d790, 0x0000f780,
 0x0000f784, 0x0000f788, 0x0000f78c, 0x0000f790, 0x0000f794,
 0x0000f7a4, 0x0000f7a8, 0x0000f7ac, 0x0000f7b0, 0x0000f7b4,
 0x0000f7a1, 0x0000f7a5, 0x0000f7a9, 0x0000f7ad, 0x0000f7b1,
 0x0000f7b5, 0x0000f7c5, 0x0000f7c9, 0x0000f7cd, 0x0000f7d1,
 0x0000f7d5, 0x0000f7c2, 0x0000f7c6, 0x0000f7ca, 0x0000f7ce,
 0x0000f7d2, 0x0000f7d6, 0x0000f7c3, 0x0000f7c7, 0x0000f7cb,
 0x0000f7d3, 0x0000f7d7, 0x0000f7db, 0x0000f7db, 0x0000f7db,
 0x0000f7db, 0x0000f7db, 0x0000f7db, 0x0000f7db, 0x0000f7db,
 0x0000f7db, 0x0000f7db, 0x0000f7db, 0x0000f7db, 0x0000f7db,
 0x0000f7db, 0x0000f7db, 0x0000f7db, 0x0000f7db, 0x0000f7db,
 0x0000f7db, 0x0000f7db, 0x0000f7db, 0x0000f7db, 0x0000f7db,
 0x0000f7db, 0x0000f7db, 0x0000f7db, 0x00001066, 0x00001066
};
static const uint32_t ar9280_2_0_rx_gain_23db_backoff_vals_2g[] = {
 0x00000290, 0x00000300, 0x00000304, 0x00000308, 0x0000030c,
 0x00008000, 0x00008004, 0x00008008, 0x0000800c, 0x00008080,
 0x00008084, 0x00008088, 0x0000808c, 0x00008100, 0x00008104,
 0x00008108, 0x0000810c, 0x00008110, 0x00008114, 0x00008180,
 0x00008184, 0x00008188, 0x0000818c, 0x00008190, 0x00008194,
 0x000081a0, 0x0000820c, 0x000081a8, 0x00008284, 0x00008288,
 0x00008224, 0x00008290, 0x00008300, 0x00008304, 0x00008308,
 0x0000830c, 0x00008380, 0x00008384, 0x00008700, 0x00008704,
 0x00008708, 0x0000870c, 0x00008780, 0x00008784, 0x00008b00,
 0x00008b04, 0x00008b08, 0x00008b0c, 0x00008b10, 0x00008b80,
 0x00008b84, 0x00008b88, 0x00008b8c, 0x00008b90, 0x00008b94,
 0x00008b98, 0x00008ba4, 0x00008ba8, 0x00008bac, 0x00008bb0,
 0x00008bb4, 0x00008ba1, 0x00008ba5, 0x00008ba9, 0x00008bad,
 0x00008bb1, 0x00008bb5, 0x00008ba2, 0x00008ba6, 0x00008baa,
 0x00008bae, 0x00008bb2, 0x00008bb6, 0x00008ba3, 0x00008ba7,
 0x00008bab, 0x00008baf, 0x00008bb3, 0x00008bb7, 0x00008bc3,
 0x00008bc7, 0x00008bcb, 0x00008bcf, 0x00008bd3, 0x00008bd7,
 0x00008bdb, 0x00008bdb, 0x00008bdb, 0x00008bdb, 0x00008bdb,
 0x00008bdb, 0x00008bdb, 0x00008bdb, 0x00008bdb, 0x00008bdb,
 0x00008bdb, 0x00008bdb, 0x00008bdb, 0x00008bdb, 0x00008bdb,
 0x00008bdb, 0x00008bdb, 0x00008bdb, 0x00008bdb, 0x00008bdb,
 0x00008bdb, 0x00008bdb, 0x00008bdb, 0x00008bdb, 0x00008bdb,
 0x00008bdb, 0x00008bdb, 0x00008bdb, 0x00008bdb, 0x00008bdb,
 0x00008bdb, 0x00008bdb, 0x00008bdb, 0x00008bdb, 0x00008bdb,
 0x00008bdb, 0x00008bdb, 0x00008bdb, 0x00008bdb, 0x00008bdb,
 0x00008bdb, 0x00008bdb, 0x00008bdb, 0x00001055, 0x00001055
};
static const struct athn_gain ar9280_2_0_rx_gain_23db_backoff = {
 (sizeof((ar9280_2_0_rx_gain_regs)) / sizeof((ar9280_2_0_rx_gain_regs)[0])),
 ar9280_2_0_rx_gain_regs,
 ar9280_2_0_rx_gain_23db_backoff_vals_5g,
 ar9280_2_0_rx_gain_23db_backoff_vals_2g
};
static const uint32_t ar9280_2_0_serdes_regs[] = {
 0x4040,
 0x4040,
 0x4040,
 0x4040,
 0x4040,
 0x4040,
 0x4040,
 0x4040,
 0x4040,
 0x4044,
};
static const uint32_t ar9280_2_0_serdes_vals[] = {
 0x9248fd00,
 0x24924924,
 0xa8000019,
 0x13160820,
 0xe5980560,
 0xc01dcffd,
 0x1aaabe41,
 0xbe105554,
 0x00043007,
 0x00000000
};
static const struct athn_serdes ar9280_2_0_serdes = {
 (sizeof((ar9280_2_0_serdes_vals)) / sizeof((ar9280_2_0_serdes_vals)[0])),
 ar9280_2_0_serdes_regs,
 ar9280_2_0_serdes_vals
};
int ar9280_attach(struct athn_softc *);
void ar9280_setup(struct athn_softc *);
int ar9280_set_synth(struct athn_softc *, struct ieee80211_channel *,
     struct ieee80211_channel *);
void ar9280_init_from_rom(struct athn_softc *, struct ieee80211_channel *,
     struct ieee80211_channel *);
void ar9280_spur_mitigate(struct athn_softc *, struct ieee80211_channel *,
     struct ieee80211_channel *);
void ar9280_olpc_get_pdadcs(struct athn_softc *,
     struct ieee80211_channel *, int, uint8_t *, uint8_t *, uint8_t *);
void ar9280_reset_rx_gain(struct athn_softc *, struct ieee80211_channel *);
void ar9280_reset_tx_gain(struct athn_softc *, struct ieee80211_channel *);
void ar9280_olpc_init(struct athn_softc *);
void ar9280_olpc_temp_compensation(struct athn_softc *);
uint8_t athn_chan2fbin(struct ieee80211_channel *);
void athn_get_pier_ival(uint8_t, const uint8_t *, int, int *, int *);
int ar5008_attach(struct athn_softc *);
void ar5008_set_viterbi_mask(struct athn_softc *, int);
void ar5416_swap_rom(struct athn_softc *);
void ar5416_set_txpower(struct athn_softc *, struct ieee80211_channel *,
     struct ieee80211_channel *);
const struct ar_spur_chan *
 ar5416_get_spur_chans(struct athn_softc *, int);
int
ar9280_attach(struct athn_softc *sc)
{
 sc->eep_base = 256;
 sc->eep_size = sizeof(struct ar5416_eeprom);
 sc->def_nf = (-112);
 sc->ngpiopins = (sc->flags & (1 << 1)) ? 16 : 10;
 sc->led_pin = 1;
 sc->workaround = 0x0040073b;
 sc->ops.setup = ar9280_setup;
 sc->ops.swap_rom = ar5416_swap_rom;
 sc->ops.init_from_rom = ar9280_init_from_rom;
 sc->ops.set_txpower = ar5416_set_txpower;
 sc->ops.set_synth = ar9280_set_synth;
 sc->ops.spur_mitigate = ar9280_spur_mitigate;
 sc->ops.get_spur_chans = ar5416_get_spur_chans;
 sc->ops.olpc_init = ar9280_olpc_init;
 sc->ops.olpc_temp_compensation = ar9280_olpc_temp_compensation;
 sc->ini = &ar9280_2_0_ini;
 sc->serdes = &ar9280_2_0_serdes;
 return (ar5008_attach(sc));
}
void
ar9280_setup(struct athn_softc *sc)
{
 const struct ar5416_eeprom *eep = sc->eep;
 uint8_t type;
 if (sc->eep_rev >= 19 &&
     eep->baseEepHeader.openLoopPwrCntl)
  sc->flags |= (1 << 2);
 if ((((sc)->mac_ver == 0x080) && (sc)->mac_rev >= 1) &&
     (sc->eep_rev <= 16 ||
      eep->baseEepHeader.fastClk5g))
  sc->flags |= (1 << 4);
 if ((((sc)->mac_ver == 0x080) && (sc)->mac_rev >= 1) &&
     sc->eep_rev > 10 &&
     !eep->baseEepHeader.pwdclkind) {
  ;
  sc->flags |= (1 << 12);
 }
 if ((((sc)->mac_ver == 0x080) && (sc)->mac_rev >= 1)) {
  if (sc->eep_rev >= 17) {
   type = eep->baseEepHeader.rxGainType;
   ;
   if (type == 0)
    sc->rx_gain = &ar9280_2_0_rx_gain_23db_backoff;
   else if (type == 1)
    sc->rx_gain = &ar9280_2_0_rx_gain_13db_backoff;
   else
    sc->rx_gain = &ar9280_2_0_rx_gain;
  } else
   sc->rx_gain = &ar9280_2_0_rx_gain;
  if (sc->eep_rev >= 19) {
   type = eep->baseEepHeader.txGainType;
   ;
   if (type == 1)
    sc->tx_gain = &ar9280_2_0_tx_gain_high_power;
   else
    sc->tx_gain = &ar9280_2_0_tx_gain;
  } else
   sc->tx_gain = &ar9280_2_0_tx_gain;
 }
}
int
ar9280_set_synth(struct athn_softc *sc, struct ieee80211_channel *c,
    struct ieee80211_channel *extc)
{
 uint32_t phy, reg64, ndiv = 0;
 uint32_t freq = c->ic_freq;
 phy = (sc)->ops.read((sc), (0x9874)) & ~0x3fffffff;
 if ((((c)->ic_flags & 0x0080) != 0)) {
  phy |= (freq << 16) / 15;
  phy |= 0x20000000 | 0x10000000;
  if (((sc)->mac_ver > 0x180 || (((sc)->mac_ver == 0x180) && (sc)->mac_rev >= 1))) {
   if (freq == 2484) {
    (sc)->ops.write((sc), ((0x9800 + (637) * 4)), (0x00000000));
    (sc)->ops.write((sc), ((0x9800 + (638) * 4)), (0xefff0301));
    (sc)->ops.write((sc), ((0x9800 + (639) * 4)), (0xca9228ee));
   } else {
    (sc)->ops.write((sc), ((0x9800 + (637) * 4)), (0x00fffeff));
    (sc)->ops.write((sc), ((0x9800 + (638) * 4)), (0x00f5f9ff));
    (sc)->ops.write((sc), ((0x9800 + (639) * 4)), (0xb79f6427));
   }
  } else {
   reg64 = (sc)->ops.read((sc), (0xa204));
   if (freq == 2484)
    reg64 |= 0x00000010;
   else
    reg64 &= ~0x00000010;
   (sc)->ops.write((sc), (0xa204), (reg64));
  }
 } else {
  if (((sc)->mac_ver >= 0x0c0) ||
      sc->eep_rev < 22 ||
      !((struct ar5416_base_eep_header *)sc->eep)->frac_n_5g) {
   if ((freq % 20) == 0) {
    ndiv = (freq * 3) / 60;
    phy |= (((uint32_t)(3) << 26) & 0x0c000000);
   } else if ((freq % 10) == 0) {
    ndiv = (freq * 6) / 60;
    phy |= (((uint32_t)(2) << 26) & 0x0c000000);
   }
  }
  if (ndiv != 0) {
   phy |= (ndiv & 0x1ff) << 17;
   phy |= (ndiv & ~0x1ff) * 2;
  } else {
   phy |= (freq << 15) / 15;
   phy |= 0x10000000;
   reg64 = (sc)->ops.read((sc), (0x7868));
   reg64 = (((reg64) & ~0xf8000000) | (((uint32_t)(1) << 27) & 0xf8000000));
   (sc)->ops.write((sc), (0x7868), (reg64));
  }
 }
 (sc)->ops.write_barrier((sc));
 ;
 (sc)->ops.write((sc), (0x9874), (phy));
 (sc)->ops.write_barrier((sc));
 return (0);
}
void
ar9280_init_from_rom(struct athn_softc *sc, struct ieee80211_channel *c,
    struct ieee80211_channel *extc)
{
 static const uint32_t chainoffset[] = { 0x0000, 0x2000, 0x1000 };
 const struct ar5416_eeprom *eep = sc->eep;
 const struct ar5416_modal_eep_header *modal;
 uint32_t reg64, offset;
 uint8_t txRxAtten;
 int i;
 modal = &eep->modalHeader[(((c)->ic_flags & 0x0080) != 0)];
 (sc)->ops.write((sc), (0x9964), (modal->antCtrlCommon));
 for (i = 0; i < 2; i++) {
  if (sc->rxchainmask == 0x5 || sc->txchainmask == 0x5)
   offset = chainoffset[i];
  else
   offset = i * 0x1000;
  (sc)->ops.write((sc), (0x9960 + offset), (modal->antCtrlChain[i]));
  reg64 = (sc)->ops.read((sc), (0x9920 + offset));
  reg64 = (((reg64) & ~0x000007e0) | (((uint32_t)(modal->iqCalICh[i]) << 5) & 0x000007e0));
  reg64 = (((reg64) & ~0x0000001f) | (((uint32_t)(modal->iqCalQCh[i]) << 0) & 0x0000001f));
  (sc)->ops.write((sc), (0x9920 + offset), (reg64));
  if (sc->eep_rev >= 3) {
   reg64 = (sc)->ops.read((sc), (0xa20c + offset));
   reg64 = (((reg64) & ~0x0001f000) | (((uint32_t)(modal->bswMargin[i]) << 12) & 0x0001f000));
   reg64 = (((reg64) & ~0x0000003f) | (((uint32_t)(modal->bswAtten[i]) << 0) & 0x0000003f));
   reg64 = (((reg64) & ~0x003e0000) | (((uint32_t)(modal->xatten2Margin[i]) << 17) & 0x003e0000));
   reg64 = (((reg64) & ~0x00000fc0) | (((uint32_t)(modal->xatten2Db[i]) << 6) & 0x00000fc0));
   (sc)->ops.write((sc), (0xa20c + offset), (reg64));
  }
  if (sc->eep_rev >= 3)
   txRxAtten = modal->txRxAttenCh[i];
  else
   txRxAtten = (((c)->ic_flags & 0x0080) != 0) ? 23 : 44;
  reg64 = (sc)->ops.read((sc), (0x9848 + offset));
  reg64 = (((reg64) & ~0x00003f80) | (((uint32_t)(txRxAtten) << 7) & 0x00003f80));
  reg64 = (((reg64) & ~0x001fc000) | (((uint32_t)(modal->rxTxMarginCh[i]) << 14) & 0x001fc000));
  (sc)->ops.write((sc), (0x9848 + offset), (reg64));
 }
 if ((((c)->ic_flags & 0x0080) != 0)) {
  reg64 = (sc)->ops.read((sc), (0x7810));
  reg64 = (((reg64) & ~0x03800000) | (((uint32_t)(modal->ob) << 23) & 0x03800000));
  reg64 = (((reg64) & ~0x1c000000) | (((uint32_t)(modal->db) << 26) & 0x1c000000));
  (sc)->ops.write((sc), (0x7810), (reg64));
  (sc)->ops.write_barrier((sc));
  delay(100);
  reg64 = (sc)->ops.read((sc), (0x7834));
  reg64 = (((reg64) & ~0x03800000) | (((uint32_t)(modal->ob_ch1) << 23) & 0x03800000));
  reg64 = (((reg64) & ~0x1c000000) | (((uint32_t)(modal->db_ch1) << 26) & 0x1c000000));
  (sc)->ops.write((sc), (0x7834), (reg64));
  (sc)->ops.write_barrier((sc));
  delay(100);
 } else {
  reg64 = (sc)->ops.read((sc), (0x7818));
  reg64 = (((reg64) & ~0x00070000) | (((uint32_t)(modal->ob) << 16) & 0x00070000));
  reg64 = (((reg64) & ~0x00380000) | (((uint32_t)(modal->db) << 19) & 0x00380000));
  (sc)->ops.write((sc), (0x7818), (reg64));
  (sc)->ops.write_barrier((sc));
  delay(100);
  reg64 = (sc)->ops.read((sc), (0x783c));
  reg64 = (((reg64) & ~0x00070000) | (((uint32_t)(modal->ob_ch1) << 16) & 0x00070000));
  reg64 = (((reg64) & ~0x00380000) | (((uint32_t)(modal->db_ch1) << 19) & 0x00380000));
  (sc)->ops.write((sc), (0x783c), (reg64));
  (sc)->ops.write_barrier((sc));
  delay(100);
 }
 reg64 = (sc)->ops.read((sc), (0x7894));
 if ((sc->flags & (1 << 1)) && (((c)->ic_flags & 0x0100) != 0)) {
  reg64 = (((reg64) & ~0xc0000000) | (((uint32_t)(0) << 30) & 0xc0000000));
 } else
  reg64 = (((reg64) & ~0xc0000000) | (((uint32_t)(modal->xpaBiasLvl) << 30) & 0xc0000000));
 if (modal->flagBits & 0x04)
  reg64 |= 0x00200000;
 else
  reg64 &= ~0x00200000;
 (sc)->ops.write((sc), (0x7894), (reg64));
 (sc)->ops.write_barrier((sc));
 delay(100);
 reg64 = (sc)->ops.read((sc), (0xa3d8));
 if (modal->flagBits & 0x02)
  reg64 |= 0x000000001;
 else
  reg64 &= ~0x000000001;
 (sc)->ops.write((sc), (0xa3d8), (reg64));
 reg64 = (sc)->ops.read((sc), (0x9844));
 reg64 = (((reg64) & ~0x00003f80) | (((uint32_t)(modal->switchSettling) << 7) & 0x00003f80));
 (sc)->ops.write((sc), (0x9844), (reg64));
 reg64 = (sc)->ops.read((sc), (0x9850));
 reg64 = (((reg64) & ~0x000000ff) | (((uint32_t)(modal->adcDesiredSize) << 0) & 0x000000ff));
 (sc)->ops.write((sc), (0x9850), (reg64));
 reg64 = (((uint32_t)(modal->txEndToXpaOff) << 16) & 0x00ff0000);
 reg64 |= (((uint32_t)(modal->txEndToXpaOff) << 24) & 0xff000000);
 reg64 |= (((uint32_t)(modal->txFrameToXpaOn) << 0) & 0x000000ff);
 reg64 |= (((uint32_t)(modal->txFrameToXpaOn) << 8) & 0x0000ff00);
 (sc)->ops.write((sc), (0x9834), (reg64));
 reg64 = (sc)->ops.read((sc), (0x9828));
 reg64 = (((reg64) & ~0x00ff0000) | (((uint32_t)(modal->txEndToRxOn) << 16) & 0x00ff0000));
 (sc)->ops.write((sc), (0x9828), (reg64));
 reg64 = (sc)->ops.read((sc), ((0x9864 + (0) * 0x1000)));
 reg64 = (((reg64) & ~0x000ff000) | (((uint32_t)(modal->thresh62) << 12) & 0x000ff000));
 (sc)->ops.write((sc), ((0x9864 + (0) * 0x1000)), (reg64));
 reg64 = (sc)->ops.read((sc), (0x99b8));
 reg64 = (((reg64) & ~0x000000ff) | (((uint32_t)(modal->thresh62) << 0) & 0x000000ff));
 (sc)->ops.write((sc), (0x99b8), (reg64));
 if (sc->eep_rev >= 2) {
  reg64 = (sc)->ops.read((sc), (0x9824));
  reg64 = (((reg64) & ~0x000000ff) | (((uint32_t)(modal->txFrameToDataStart) << 0) & 0x000000ff));
  reg64 = (((reg64) & ~0x0000ff00) | (((uint32_t)(modal->txFrameToPaOn) << 8) & 0x0000ff00));
  (sc)->ops.write((sc), (0x9824), (reg64));
 }
 if (sc->eep_rev >= 3 && extc != ((void *)0)) {
  reg64 = (sc)->ops.read((sc), (0x9844));
  reg64 = (((reg64) & ~0x00003f80) | (((uint32_t)(modal->swSettleHt40) << 7) & 0x00003f80));
  (sc)->ops.write((sc), (0x9844), (reg64));
 }
 if (sc->eep_rev >= 19) {
  reg64 = (sc)->ops.read((sc), (0xa204));
  reg64 = (((reg64) & ~0x0000000c) | (((uint32_t)((((uint32_t)(modal->miscBits) & 0x03) >> 0)) << 2) & 0x0000000c));
  (sc)->ops.write((sc), (0xa204), (reg64));
 }
 if ((((sc)->mac_ver == 0x080) && (sc)->mac_rev >= 1) &&
     sc->eep_rev >= 20) {
  reg64 = (sc)->ops.read((sc), (0x7890));
  if (eep->baseEepHeader.dacLpMode &&
      ((((c)->ic_flags & 0x0080) != 0) ||
       !eep->baseEepHeader.dacHiPwrMode_5G))
   reg64 |= 0x00040000;
  else
   reg64 &= ~0x00040000;
  (sc)->ops.write((sc), (0x7890), (reg64));
  (sc)->ops.write_barrier((sc));
  delay(100);
  reg64 = (sc)->ops.read((sc), (0x9944));
  reg64 = (((reg64) & ~0x00000038) | (((uint32_t)((((uint32_t)(modal->miscBits) & 0xfc) >> 2)) << 3) & 0x00000038));
  (sc)->ops.write((sc), (0x9944), (reg64));
  reg64 = (sc)->ops.read((sc), (0xa27c));
  reg64 = (((reg64) & ~0x00007c00) | (((uint32_t)(eep->baseEepHeader.desiredScaleCCK) << 10) & 0x00007c00));
  (sc)->ops.write((sc), (0xa27c), (reg64));
 }
 (sc)->ops.write_barrier((sc));
}
void
ar9280_olpc_get_pdadcs(struct athn_softc *sc, struct ieee80211_channel *c,
    int chain, uint8_t *boundaries, uint8_t *pdadcs, uint8_t *txgain)
{
 const struct ar5416_eeprom *eep = sc->eep;
 const struct ar_cal_data_per_freq_olpc *pierdata;
 const uint8_t *pierfreq;
 uint8_t fbin, pcdac, pwr, idx;
 int i, lo, hi, npiers;
 if ((((c)->ic_flags & 0x0080) != 0)) {
  pierfreq = eep->calFreqPier2G;
  pierdata = (const struct ar_cal_data_per_freq_olpc *)
      eep->calPierData2G[chain];
  npiers = 4;
 } else {
  pierfreq = eep->calFreqPier5G;
  pierdata = (const struct ar_cal_data_per_freq_olpc *)
      eep->calPierData5G[chain];
  npiers = 8;
 }
 fbin = athn_chan2fbin(c);
 athn_get_pier_ival(fbin, pierfreq, npiers, &lo, &hi);
 pwr = (pierdata[lo].pwrPdg[0][0] + pierdata[hi].pwrPdg[0][0]) / 2;
 pwr /= 2;
 pcdac = pierdata[hi].pcdac[0][0];
 for (idx = 0; idx < 22 - 1; idx++)
  if (pcdac <= sc->tx_gain_tbl[idx])
   break;
 *txgain = idx;
 ;
 for (i = 0; i < 128; i++)
  pdadcs[i] = (i < pwr) ? 0x00 : 0xff;
 for (i = 0; i < 4; i++)
  boundaries[i] = 56;
}
void
ar9280_spur_mitigate(struct athn_softc *sc, struct ieee80211_channel *c,
    struct ieee80211_channel *extc)
{
 const struct ar_spur_chan *spurchans;
 int spur, bin, spur_delta_phase, spur_freq_sd, spur_subchannel_sd;
 int spur_off, range, i;
 (sc)->ops.write((sc), (0xa22c), ((sc)->ops.read((sc), (0xa22c)) & ~(0x00000040)));
 range = (extc != ((void *)0)) ? 19 : 10;
 spurchans = sc->ops.get_spur_chans(sc, (((c)->ic_flags & 0x0080) != 0));
 for (i = 0; i < 5; i++) {
  spur = spurchans[i].spurChan;
  if (spur == 0x8000)
   return;
  spur /= 10;
  if ((((c)->ic_flags & 0x0080) != 0))
   spur += 2300;
  else
   spur += 4900;
  spur -= c->ic_freq;
  if (abs(spur) < range)
   break;
 }
 if (i == 5)
  return;
 ;
 (sc)->ops.write((sc), (0x9920), ((sc)->ops.read((sc), (0x9920)) | (0x80000000 | 0x40000000 | 0x20000000 | 0x10000000)));
 (sc)->ops.write((sc), (0x994c), (0x03fc0000 | 0x00020000 | 0x0001fe00 | 0x00000100 | (((uint32_t)(40) << 0) & 0x0000007f)));
 if (extc != ((void *)0)) {
  spur_delta_phase = (spur * 262144) / 10;
  if (spur < 0) {
   spur_subchannel_sd = 1;
   spur_off = spur + 10;
  } else {
   spur_subchannel_sd = 0;
   spur_off = spur - 10;
  }
 } else {
  spur_delta_phase = (spur * 524288) / 10;
  spur_subchannel_sd = 0;
  spur_off = spur;
 }
 if ((((c)->ic_flags & 0x0080) != 0))
  spur_freq_sd = (spur_off * 2048) / 44;
 else
  spur_freq_sd = (spur_off * 2048) / 40;
 (sc)->ops.write((sc), (0x99a0), (0x40000000 | (((uint32_t)(spur_freq_sd) << 20) & 0x3ff00000) | (((uint32_t)(spur_delta_phase) << 0) & 0x000fffff)));
 (sc)->ops.write((sc), (0x99c0), ((((uint32_t)(spur_subchannel_sd) << 28) & 0xf0000000)));
 (sc)->ops.write_barrier((sc));
 bin = spur * 320;
 ar5008_set_viterbi_mask(sc, bin);
}
void
ar9280_reset_rx_gain(struct athn_softc *sc, struct ieee80211_channel *c)
{
 const struct athn_gain *prog = sc->rx_gain;
 const uint32_t *pvals;
 int i;
 if ((((c)->ic_flags & 0x0080) != 0))
  pvals = prog->vals_2g;
 else
  pvals = prog->vals_5g;
 for (i = 0; i < prog->nregs; i++)
  (sc)->ops.write((sc), (prog->regs[i]), (pvals[i]));
}
void
ar9280_reset_tx_gain(struct athn_softc *sc, struct ieee80211_channel *c)
{
 const struct athn_gain *prog = sc->tx_gain;
 const uint32_t *pvals;
 int i;
 if ((((c)->ic_flags & 0x0080) != 0))
  pvals = prog->vals_2g;
 else
  pvals = prog->vals_5g;
 for (i = 0; i < prog->nregs; i++)
  (sc)->ops.write((sc), (prog->regs[i]), (pvals[i]));
}
void
ar9280_olpc_init(struct athn_softc *sc)
{
 uint32_t reg64;
 int i;
 for (i = 0; i < 22; i++) {
  reg64 = (sc)->ops.read((sc), ((0xa300 + (i) * 4)));
  sc->tx_gain_tbl[i] = (((uint32_t)(reg64) & 0x0007f000) >> 12);
 }
 sc->tcomp = 0;
}
void
ar9280_olpc_temp_compensation(struct athn_softc *sc)
{
 const struct ar5416_eeprom *eep = sc->eep;
 int8_t pdadc, txgain, tcomp;
 uint32_t reg64;
 int i;
 reg64 = (sc)->ops.read((sc), (0xa264));
 pdadc = (((uint32_t)(reg64) & 0x000001fe) >> 1);
 ;
 if (sc->pdadc == 0 || pdadc == 0)
  return;
 if (sc->eep_rev >= 20 &&
     eep->baseEepHeader.dacHiPwrMode_5G)
  tcomp = (pdadc - sc->pdadc + 4) / 8;
 else
  tcomp = (pdadc - sc->pdadc + 5) / 10;
 ;
 if (tcomp == sc->tcomp)
  return;
 sc->tcomp = tcomp;
 for (i = 0; i < 22; i++) {
  txgain = sc->tx_gain_tbl[i] - tcomp;
  if (txgain < 0)
   txgain = 0;
  reg64 = (sc)->ops.read((sc), ((0xa300 + (i) * 4)));
  reg64 = (((reg64) & ~0x0007f000) | (((uint32_t)(txgain) << 12) & 0x0007f000));
  (sc)->ops.write((sc), ((0xa300 + (i) * 4)), (reg64));
 }
 (sc)->ops.write_barrier((sc));
}
