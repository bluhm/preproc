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
 u_int v_inflight;
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
int mmopen(dev_t, int, int, struct proc *); int mmclose(dev_t, int, int, struct proc *); int mmrw(dev_t, struct uio *, int); int mmrw(dev_t, struct uio *, int); int mmioctl(dev_t, u_long, caddr_t, int, struct proc *); int mmstop(struct tty *, int); struct tty *mmtty(dev_t); int mmpoll(dev_t, int, struct proc *); paddr_t mmmmap(dev_t, off_t, int); int mmkqfilter(dev_t, struct knote *);
int openpromopen(dev_t, int, int, struct proc *); int openpromclose(dev_t, int, int, struct proc *); int openpromread(dev_t, struct uio *, int); int openpromwrite(dev_t, struct uio *, int); int openpromioctl(dev_t, u_long, caddr_t, int, struct proc *); int openpromstop(struct tty *, int); struct tty *openpromtty(dev_t); int openprompoll(dev_t, int, struct proc *); paddr_t openprommmap(dev_t, off_t, int); int openpromkqfilter(dev_t, struct knote *);
int uperfopen(dev_t, int, int, struct proc *); int uperfclose(dev_t, int, int, struct proc *); int uperfread(dev_t, struct uio *, int); int uperfwrite(dev_t, struct uio *, int); int uperfioctl(dev_t, u_long, caddr_t, int, struct proc *); int uperfstop(struct tty *, int); struct tty *uperftty(dev_t); int uperfpoll(dev_t, int, struct proc *); paddr_t uperfmmap(dev_t, off_t, int); int uperfkqfilter(dev_t, struct knote *);
int vdspopen(dev_t, int, int, struct proc *); int vdspclose(dev_t, int, int, struct proc *); int vdspread(dev_t, struct uio *, int); int vdspwrite(dev_t, struct uio *, int); int vdspioctl(dev_t, u_long, caddr_t, int, struct proc *); int vdspstop(struct tty *, int); struct tty *vdsptty(dev_t); int vdsppoll(dev_t, int, struct proc *); paddr_t vdspmmap(dev_t, off_t, int); int vdspkqfilter(dev_t, struct knote *);
int cnopen(dev_t, int, int, struct proc *); int cnclose(dev_t, int, int, struct proc *); int cnread(dev_t, struct uio *, int); int cnwrite(dev_t, struct uio *, int); int cnioctl(dev_t, u_long, caddr_t, int, struct proc *); int cnstop(struct tty *, int); struct tty *cntty(dev_t); int cnpoll(dev_t, int, struct proc *); paddr_t cnmmap(dev_t, off_t, int); int cnkqfilter(dev_t, struct knote *);
int zsopen(dev_t, int, int, struct proc *); int zsclose(dev_t, int, int, struct proc *); int zsread(dev_t, struct uio *, int); int zswrite(dev_t, struct uio *, int); int zsioctl(dev_t, u_long, caddr_t, int, struct proc *); int zsstop(struct tty *, int); struct tty *zstty(dev_t); int zspoll(dev_t, int, struct proc *); paddr_t zsmmap(dev_t, off_t, int); int zskqfilter(dev_t, struct knote *);
int fdopen(dev_t, int, int, struct proc *); int fdclose(dev_t, int, int, struct proc *); void fdstrategy(struct buf *); int fdioctl(dev_t, u_long, caddr_t, int, struct proc *); int fddump(dev_t, daddr_t, caddr_t, size_t); daddr_t fdsize(dev_t);
int fdopen(dev_t, int, int, struct proc *); int fdclose(dev_t, int, int, struct proc *); int fdread(dev_t, struct uio *, int); int fdwrite(dev_t, struct uio *, int); int fdioctl(dev_t, u_long, caddr_t, int, struct proc *); int fdstop(struct tty *, int); struct tty *fdtty(dev_t); int fdpoll(dev_t, int, struct proc *); paddr_t fdmmap(dev_t, off_t, int); int fdkqfilter(dev_t, struct knote *);
int fbopen(dev_t, int, int, struct proc *); int fbclose(dev_t, int, int, struct proc *); int fbread(dev_t, struct uio *, int); int fbwrite(dev_t, struct uio *, int); int fbioctl(dev_t, u_long, caddr_t, int, struct proc *); int fbstop(struct tty *, int); struct tty *fbtty(dev_t); int fbpoll(dev_t, int, struct proc *); paddr_t fbmmap(dev_t, off_t, int); int fbkqfilter(dev_t, struct knote *);
int msopen(dev_t, int, int, struct proc *); int msclose(dev_t, int, int, struct proc *); int msread(dev_t, struct uio *, int); int mswrite(dev_t, struct uio *, int); int msioctl(dev_t, u_long, caddr_t, int, struct proc *); int msstop(struct tty *, int); struct tty *mstty(dev_t); int mspoll(dev_t, int, struct proc *); paddr_t msmmap(dev_t, off_t, int); int mskqfilter(dev_t, struct knote *);
int kbdopen(dev_t, int, int, struct proc *); int kbdclose(dev_t, int, int, struct proc *); int kbdread(dev_t, struct uio *, int); int kbdwrite(dev_t, struct uio *, int); int kbdioctl(dev_t, u_long, caddr_t, int, struct proc *); int kbdstop(struct tty *, int); struct tty *kbdtty(dev_t); int kbdpoll(dev_t, int, struct proc *); paddr_t kbdmmap(dev_t, off_t, int); int kbdkqfilter(dev_t, struct knote *);
int kdopen(dev_t, int, int, struct proc *); int kdclose(dev_t, int, int, struct proc *); int kdread(dev_t, struct uio *, int); int kdwrite(dev_t, struct uio *, int); int kdioctl(dev_t, u_long, caddr_t, int, struct proc *); int kdstop(struct tty *, int); struct tty *kdtty(dev_t); int kdpoll(dev_t, int, struct proc *); paddr_t kdmmap(dev_t, off_t, int); int kdkqfilter(dev_t, struct knote *);
int bwtwoopen(dev_t, int, int, struct proc *); int bwtwoclose(dev_t, int, int, struct proc *); int bwtworead(dev_t, struct uio *, int); int bwtwowrite(dev_t, struct uio *, int); int bwtwoioctl(dev_t, u_long, caddr_t, int, struct proc *); int bwtwostop(struct tty *, int); struct tty *bwtwotty(dev_t); int bwtwopoll(dev_t, int, struct proc *); paddr_t bwtwommap(dev_t, off_t, int); int bwtwokqfilter(dev_t, struct knote *);
int cgtwoopen(dev_t, int, int, struct proc *); int cgtwoclose(dev_t, int, int, struct proc *); int cgtworead(dev_t, struct uio *, int); int cgtwowrite(dev_t, struct uio *, int); int cgtwoioctl(dev_t, u_long, caddr_t, int, struct proc *); int cgtwostop(struct tty *, int); struct tty *cgtwotty(dev_t); int cgtwopoll(dev_t, int, struct proc *); paddr_t cgtwommap(dev_t, off_t, int); int cgtwokqfilter(dev_t, struct knote *);
int cgthreeopen(dev_t, int, int, struct proc *); int cgthreeclose(dev_t, int, int, struct proc *); int cgthreeread(dev_t, struct uio *, int); int cgthreewrite(dev_t, struct uio *, int); int cgthreeioctl(dev_t, u_long, caddr_t, int, struct proc *); int cgthreestop(struct tty *, int); struct tty *cgthreetty(dev_t); int cgthreepoll(dev_t, int, struct proc *); paddr_t cgthreemmap(dev_t, off_t, int); int cgthreekqfilter(dev_t, struct knote *);
int cgfouropen(dev_t, int, int, struct proc *); int cgfourclose(dev_t, int, int, struct proc *); int cgfourread(dev_t, struct uio *, int); int cgfourwrite(dev_t, struct uio *, int); int cgfourioctl(dev_t, u_long, caddr_t, int, struct proc *); int cgfourstop(struct tty *, int); struct tty *cgfourtty(dev_t); int cgfourpoll(dev_t, int, struct proc *); paddr_t cgfourmmap(dev_t, off_t, int); int cgfourkqfilter(dev_t, struct knote *);
int cgsixopen(dev_t, int, int, struct proc *); int cgsixclose(dev_t, int, int, struct proc *); int cgsixread(dev_t, struct uio *, int); int cgsixwrite(dev_t, struct uio *, int); int cgsixioctl(dev_t, u_long, caddr_t, int, struct proc *); int cgsixstop(struct tty *, int); struct tty *cgsixtty(dev_t); int cgsixpoll(dev_t, int, struct proc *); paddr_t cgsixmmap(dev_t, off_t, int); int cgsixkqfilter(dev_t, struct knote *);
int cgeightopen(dev_t, int, int, struct proc *); int cgeightclose(dev_t, int, int, struct proc *); int cgeightread(dev_t, struct uio *, int); int cgeightwrite(dev_t, struct uio *, int); int cgeightioctl(dev_t, u_long, caddr_t, int, struct proc *); int cgeightstop(struct tty *, int); struct tty *cgeighttty(dev_t); int cgeightpoll(dev_t, int, struct proc *); paddr_t cgeightmmap(dev_t, off_t, int); int cgeightkqfilter(dev_t, struct knote *);
int tcxopen(dev_t, int, int, struct proc *); int tcxclose(dev_t, int, int, struct proc *); int tcxread(dev_t, struct uio *, int); int tcxwrite(dev_t, struct uio *, int); int tcxioctl(dev_t, u_long, caddr_t, int, struct proc *); int tcxstop(struct tty *, int); struct tty *tcxtty(dev_t); int tcxpoll(dev_t, int, struct proc *); paddr_t tcxmmap(dev_t, off_t, int); int tcxkqfilter(dev_t, struct knote *);
int cgfourteenopen(dev_t, int, int, struct proc *); int cgfourteenclose(dev_t, int, int, struct proc *); int cgfourteenread(dev_t, struct uio *, int); int cgfourteenwrite(dev_t, struct uio *, int); int cgfourteenioctl(dev_t, u_long, caddr_t, int, struct proc *); int cgfourteenstop(struct tty *, int); struct tty *cgfourteentty(dev_t); int cgfourteenpoll(dev_t, int, struct proc *); paddr_t cgfourteenmmap(dev_t, off_t, int); int cgfourteenkqfilter(dev_t, struct knote *);
int bppopen(dev_t, int, int, struct proc *); int bppclose(dev_t, int, int, struct proc *); int bppread(dev_t, struct uio *, int); int bppwrite(dev_t, struct uio *, int); int bppioctl(dev_t, u_long, caddr_t, int, struct proc *); int bppstop(struct tty *, int); struct tty *bpptty(dev_t); int bpppoll(dev_t, int, struct proc *); paddr_t bppmmap(dev_t, off_t, int); int bppkqfilter(dev_t, struct knote *);
int lptopen(dev_t, int, int, struct proc *); int lptclose(dev_t, int, int, struct proc *); int lptread(dev_t, struct uio *, int); int lptwrite(dev_t, struct uio *, int); int lptioctl(dev_t, u_long, caddr_t, int, struct proc *); int lptstop(struct tty *, int); struct tty *lpttty(dev_t); int lptpoll(dev_t, int, struct proc *); paddr_t lptmmap(dev_t, off_t, int); int lptkqfilter(dev_t, struct knote *);
int scsibusopen(dev_t, int, int, struct proc *); int scsibusclose(dev_t, int, int, struct proc *); int scsibusread(dev_t, struct uio *, int); int scsibuswrite(dev_t, struct uio *, int); int scsibusioctl(dev_t, u_long, caddr_t, int, struct proc *); int scsibusstop(struct tty *, int); struct tty *scsibustty(dev_t); int scsibuspoll(dev_t, int, struct proc *); paddr_t scsibusmmap(dev_t, off_t, int); int scsibuskqfilter(dev_t, struct knote *);
int wdopen(dev_t, int, int, struct proc *); int wdclose(dev_t, int, int, struct proc *); void wdstrategy(struct buf *); int wdioctl(dev_t, u_long, caddr_t, int, struct proc *); int wddump(dev_t, daddr_t, caddr_t, size_t); daddr_t wdsize(dev_t);
int wdopen(dev_t, int, int, struct proc *); int wdclose(dev_t, int, int, struct proc *); int wdread(dev_t, struct uio *, int); int wdwrite(dev_t, struct uio *, int); int wdioctl(dev_t, u_long, caddr_t, int, struct proc *); int wdstop(struct tty *, int); struct tty *wdtty(dev_t); int wdpoll(dev_t, int, struct proc *); paddr_t wdmmap(dev_t, off_t, int); int wdkqfilter(dev_t, struct knote *);
int sabttyopen(dev_t, int, int, struct proc *); int sabttyclose(dev_t, int, int, struct proc *); int sabttyread(dev_t, struct uio *, int); int sabttywrite(dev_t, struct uio *, int); int sabttyioctl(dev_t, u_long, caddr_t, int, struct proc *); int sabttystop(struct tty *, int); struct tty *sabttytty(dev_t); int sabttypoll(dev_t, int, struct proc *); paddr_t sabttymmap(dev_t, off_t, int); int sabttykqfilter(dev_t, struct knote *);
int pconsopen(dev_t, int, int, struct proc *); int pconsclose(dev_t, int, int, struct proc *); int pconsread(dev_t, struct uio *, int); int pconswrite(dev_t, struct uio *, int); int pconsioctl(dev_t, u_long, caddr_t, int, struct proc *); int pconsstop(struct tty *, int); struct tty *pconstty(dev_t); int pconspoll(dev_t, int, struct proc *); paddr_t pconsmmap(dev_t, off_t, int); int pconskqfilter(dev_t, struct knote *);
int vconsopen(dev_t, int, int, struct proc *); int vconsclose(dev_t, int, int, struct proc *); int vconsread(dev_t, struct uio *, int); int vconswrite(dev_t, struct uio *, int); int vconsioctl(dev_t, u_long, caddr_t, int, struct proc *); int vconsstop(struct tty *, int); struct tty *vconstty(dev_t); int vconspoll(dev_t, int, struct proc *); paddr_t vconsmmap(dev_t, off_t, int); int vconskqfilter(dev_t, struct knote *);
int vccttyopen(dev_t, int, int, struct proc *); int vccttyclose(dev_t, int, int, struct proc *); int vccttyread(dev_t, struct uio *, int); int vccttywrite(dev_t, struct uio *, int); int vccttyioctl(dev_t, u_long, caddr_t, int, struct proc *); int vccttystop(struct tty *, int); struct tty *vccttytty(dev_t); int vccttypoll(dev_t, int, struct proc *); paddr_t vccttymmap(dev_t, off_t, int); int vccttykqfilter(dev_t, struct knote *);
int sbbcopen(dev_t, int, int, struct proc *); int sbbcclose(dev_t, int, int, struct proc *); int sbbcread(dev_t, struct uio *, int); int sbbcwrite(dev_t, struct uio *, int); int sbbcioctl(dev_t, u_long, caddr_t, int, struct proc *); int sbbcstop(struct tty *, int); struct tty *sbbctty(dev_t); int sbbcpoll(dev_t, int, struct proc *); paddr_t sbbcmmap(dev_t, off_t, int); int sbbckqfilter(dev_t, struct knote *);
int vldcpopen(dev_t, int, int, struct proc *); int vldcpclose(dev_t, int, int, struct proc *); int vldcpread(dev_t, struct uio *, int); int vldcpwrite(dev_t, struct uio *, int); int vldcpioctl(dev_t, u_long, caddr_t, int, struct proc *); int vldcpstop(struct tty *, int); struct tty *vldcptty(dev_t); int vldcppoll(dev_t, int, struct proc *); paddr_t vldcpmmap(dev_t, off_t, int); int vldcpkqfilter(dev_t, struct knote *);
int comopen(dev_t, int, int, struct proc *); int comclose(dev_t, int, int, struct proc *); int comread(dev_t, struct uio *, int); int comwrite(dev_t, struct uio *, int); int comioctl(dev_t, u_long, caddr_t, int, struct proc *); int comstop(struct tty *, int); struct tty *comtty(dev_t); int compoll(dev_t, int, struct proc *); paddr_t commmap(dev_t, off_t, int); int comkqfilter(dev_t, struct knote *);
int mttyopen(dev_t, int, int, struct proc *); int mttyclose(dev_t, int, int, struct proc *); int mttyread(dev_t, struct uio *, int); int mttywrite(dev_t, struct uio *, int); int mttyioctl(dev_t, u_long, caddr_t, int, struct proc *); int mttystop(struct tty *, int); struct tty *mttytty(dev_t); int mttypoll(dev_t, int, struct proc *); paddr_t mttymmap(dev_t, off_t, int); int mttykqfilter(dev_t, struct knote *);
int mbppopen(dev_t, int, int, struct proc *); int mbppclose(dev_t, int, int, struct proc *); int mbppread(dev_t, struct uio *, int); int mbppwrite(dev_t, struct uio *, int); int mbppioctl(dev_t, u_long, caddr_t, int, struct proc *); int mbppstop(struct tty *, int); struct tty *mbpptty(dev_t); int mbpppoll(dev_t, int, struct proc *); paddr_t mbppmmap(dev_t, off_t, int); int mbppkqfilter(dev_t, struct knote *);
int sttyopen(dev_t, int, int, struct proc *); int sttyclose(dev_t, int, int, struct proc *); int sttyread(dev_t, struct uio *, int); int sttywrite(dev_t, struct uio *, int); int sttyioctl(dev_t, u_long, caddr_t, int, struct proc *); int sttystop(struct tty *, int); struct tty *sttytty(dev_t); int sttypoll(dev_t, int, struct proc *); paddr_t sttymmap(dev_t, off_t, int); int sttykqfilter(dev_t, struct knote *);
int sbppopen(dev_t, int, int, struct proc *); int sbppclose(dev_t, int, int, struct proc *); int sbppread(dev_t, struct uio *, int); int sbppwrite(dev_t, struct uio *, int); int sbppioctl(dev_t, u_long, caddr_t, int, struct proc *); int sbppstop(struct tty *, int); struct tty *sbpptty(dev_t); int sbpppoll(dev_t, int, struct proc *); paddr_t sbppmmap(dev_t, off_t, int); int sbppkqfilter(dev_t, struct knote *);
int bppopen(dev_t, int, int, struct proc *); int bppclose(dev_t, int, int, struct proc *); int bppread(dev_t, struct uio *, int); int bppwrite(dev_t, struct uio *, int); int bppioctl(dev_t, u_long, caddr_t, int, struct proc *); int bppstop(struct tty *, int); struct tty *bpptty(dev_t); int bpppoll(dev_t, int, struct proc *); paddr_t bppmmap(dev_t, off_t, int); int bppkqfilter(dev_t, struct knote *);
int drmopen(dev_t, int, int, struct proc *); int drmclose(dev_t, int, int, struct proc *); int drmread(dev_t, struct uio *, int); int drmwrite(dev_t, struct uio *, int); int drmioctl(dev_t, u_long, caddr_t, int, struct proc *); int drmstop(struct tty *, int); struct tty *drmtty(dev_t); int drmpoll(dev_t, int, struct proc *); paddr_t drmmmap(dev_t, off_t, int); int drmkqfilter(dev_t, struct knote *);
int pciopen(dev_t, int, int, struct proc *); int pciclose(dev_t, int, int, struct proc *); int pciread(dev_t, struct uio *, int); int pciwrite(dev_t, struct uio *, int); int pciioctl(dev_t, u_long, caddr_t, int, struct proc *); int pcistop(struct tty *, int); struct tty *pcitty(dev_t); int pcipoll(dev_t, int, struct proc *); paddr_t pcimmap(dev_t, off_t, int); int pcikqfilter(dev_t, struct knote *);
struct bdevsw bdevsw[] =
{
 { (int (*)(dev_t, int, int, struct proc *)) enodev, (int (*)(dev_t, int, int, struct proc *)) enodev, (void (*)(struct buf *)) enodev, (int (*)(dev_t, u_long, caddr_t, int, struct proc *)) enodev, (int (*)(dev_t, daddr_t, caddr_t, size_t)) enodev, 0 },
 { (int (*)(dev_t, int, int, struct proc *)) enodev, (int (*)(dev_t, int, int, struct proc *)) enodev, (void (*)(struct buf *)) enodev, (int (*)(dev_t, u_long, caddr_t, int, struct proc *)) enodev, (int (*)(dev_t, daddr_t, caddr_t, size_t)) enodev, 0 },
 { (int (*)(dev_t, int, int, struct proc *)) enodev, (int (*)(dev_t, int, int, struct proc *)) enodev, (void (*)(struct buf *)) enodev, (int (*)(dev_t, u_long, caddr_t, int, struct proc *)) enodev, (int (*)(dev_t, daddr_t, caddr_t, size_t)) enodev, 0 },
 { (int (*)(dev_t, int, int, struct proc *)) enodev, (int (*)(dev_t, int, int, struct proc *)) enodev, (void (*)(struct buf *)) enodev, (int (*)(dev_t, u_long, caddr_t, int, struct proc *)) enodev, (int (*)(dev_t, daddr_t, caddr_t, size_t)) enodev, 0 },
 { (int (*)(dev_t, int, int, struct proc *)) enodev, (int (*)(dev_t, int, int, struct proc *)) enodev, ((1) > 0 ? swstrategy : (void (*)(struct buf *)) enxio), (int (*)(dev_t, u_long, caddr_t, int, struct proc *)) enodev, (int (*)(dev_t, daddr_t, caddr_t, size_t)) enodev, 0 },
 { ((0) > 0 ? rdopen : (int (*)(dev_t, int, int, struct proc *)) enxio), ((0) > 0 ? rdclose : (int (*)(dev_t, int, int, struct proc *)) enxio), ((0) > 0 ? rdstrategy : (void (*)(struct buf *)) enxio), ((0) > 0 ? rdioctl : (int (*)(dev_t, u_long, caddr_t, int, struct proc *)) enxio), ((0) > 0 ? rddump : (int (*)(dev_t, daddr_t, caddr_t, size_t)) enxio), (0 > 0 ? rdsize : 0), 1 },
 { (int (*)(dev_t, int, int, struct proc *)) enodev, (int (*)(dev_t, int, int, struct proc *)) enodev, (void (*)(struct buf *)) enodev, (int (*)(dev_t, u_long, caddr_t, int, struct proc *)) enodev, (int (*)(dev_t, daddr_t, caddr_t, size_t)) enodev, 0 },
 { ((1) > 0 ? sdopen : (int (*)(dev_t, int, int, struct proc *)) enxio), ((1) > 0 ? sdclose : (int (*)(dev_t, int, int, struct proc *)) enxio), ((1) > 0 ? sdstrategy : (void (*)(struct buf *)) enxio), ((1) > 0 ? sdioctl : (int (*)(dev_t, u_long, caddr_t, int, struct proc *)) enxio), ((1) > 0 ? sddump : (int (*)(dev_t, daddr_t, caddr_t, size_t)) enxio), (1 > 0 ? sdsize : 0), 1 },
 { ((1) > 0 ? vndopen : (int (*)(dev_t, int, int, struct proc *)) enxio), ((1) > 0 ? vndclose : (int (*)(dev_t, int, int, struct proc *)) enxio), ((1) > 0 ? vndstrategy : (void (*)(struct buf *)) enxio), ((1) > 0 ? vndioctl : (int (*)(dev_t, u_long, caddr_t, int, struct proc *)) enxio), ((1) > 0 ? vnddump : (int (*)(dev_t, daddr_t, caddr_t, size_t)) enxio), (1 > 0 ? vndsize : 0), 1 },
 { (int (*)(dev_t, int, int, struct proc *)) enodev, (int (*)(dev_t, int, int, struct proc *)) enodev, (void (*)(struct buf *)) enodev, (int (*)(dev_t, u_long, caddr_t, int, struct proc *)) enodev, (int (*)(dev_t, daddr_t, caddr_t, size_t)) enodev, 0 },
 { (int (*)(dev_t, int, int, struct proc *)) enodev, (int (*)(dev_t, int, int, struct proc *)) enodev, (void (*)(struct buf *)) enodev, (int (*)(dev_t, u_long, caddr_t, int, struct proc *)) enodev, (int (*)(dev_t, daddr_t, caddr_t, size_t)) enodev, 0 },
 { (int (*)(dev_t, int, int, struct proc *)) enodev, (int (*)(dev_t, int, int, struct proc *)) enodev, (void (*)(struct buf *)) enodev, (int (*)(dev_t, u_long, caddr_t, int, struct proc *)) enodev, (int (*)(dev_t, daddr_t, caddr_t, size_t)) enodev, 0 },
 { ((1) > 0 ? wdopen : (int (*)(dev_t, int, int, struct proc *)) enxio), ((1) > 0 ? wdclose : (int (*)(dev_t, int, int, struct proc *)) enxio), ((1) > 0 ? wdstrategy : (void (*)(struct buf *)) enxio), ((1) > 0 ? wdioctl : (int (*)(dev_t, u_long, caddr_t, int, struct proc *)) enxio), ((1) > 0 ? wddump : (int (*)(dev_t, daddr_t, caddr_t, size_t)) enxio), (1 > 0 ? wdsize : 0), 1 },
 { (int (*)(dev_t, int, int, struct proc *)) enodev, (int (*)(dev_t, int, int, struct proc *)) enodev, (void (*)(struct buf *)) enodev, (int (*)(dev_t, u_long, caddr_t, int, struct proc *)) enodev, (int (*)(dev_t, daddr_t, caddr_t, size_t)) enodev, 0 },
 { (int (*)(dev_t, int, int, struct proc *)) enodev, (int (*)(dev_t, int, int, struct proc *)) enodev, (void (*)(struct buf *)) enodev, (int (*)(dev_t, u_long, caddr_t, int, struct proc *)) enodev, (int (*)(dev_t, daddr_t, caddr_t, size_t)) enodev, 0 },
 { (int (*)(dev_t, int, int, struct proc *)) enodev, (int (*)(dev_t, int, int, struct proc *)) enodev, (void (*)(struct buf *)) enodev, (int (*)(dev_t, u_long, caddr_t, int, struct proc *)) enodev, (int (*)(dev_t, daddr_t, caddr_t, size_t)) enodev, 0 },
 { ((1) > 0 ? fdopen : (int (*)(dev_t, int, int, struct proc *)) enxio), ((1) > 0 ? fdclose : (int (*)(dev_t, int, int, struct proc *)) enxio), ((1) > 0 ? fdstrategy : (void (*)(struct buf *)) enxio), ((1) > 0 ? fdioctl : (int (*)(dev_t, u_long, caddr_t, int, struct proc *)) enxio), ((1) > 0 ? fddump : (int (*)(dev_t, daddr_t, caddr_t, size_t)) enxio), (1 > 0 ? fdsize : 0), 1 },
 { (int (*)(dev_t, int, int, struct proc *)) enodev, (int (*)(dev_t, int, int, struct proc *)) enodev, (void (*)(struct buf *)) enodev, (int (*)(dev_t, u_long, caddr_t, int, struct proc *)) enodev, (int (*)(dev_t, daddr_t, caddr_t, size_t)) enodev, 0 },
 { ((1) > 0 ? cdopen : (int (*)(dev_t, int, int, struct proc *)) enxio), ((1) > 0 ? cdclose : (int (*)(dev_t, int, int, struct proc *)) enxio), ((1) > 0 ? cdstrategy : (void (*)(struct buf *)) enxio), ((1) > 0 ? cdioctl : (int (*)(dev_t, u_long, caddr_t, int, struct proc *)) enxio), ((1) > 0 ? cddump : (int (*)(dev_t, daddr_t, caddr_t, size_t)) enxio), (1 > 0 ? cdsize : 0), 1 },
 { (int (*)(dev_t, int, int, struct proc *)) enodev, (int (*)(dev_t, int, int, struct proc *)) enodev, (void (*)(struct buf *)) enodev, (int (*)(dev_t, u_long, caddr_t, int, struct proc *)) enodev, (int (*)(dev_t, daddr_t, caddr_t, size_t)) enodev, 0 },
 { (int (*)(dev_t, int, int, struct proc *)) enodev, (int (*)(dev_t, int, int, struct proc *)) enodev, (void (*)(struct buf *)) enodev, (int (*)(dev_t, u_long, caddr_t, int, struct proc *)) enodev, (int (*)(dev_t, daddr_t, caddr_t, size_t)) enodev, 0 },
 { (int (*)(dev_t, int, int, struct proc *)) enodev, (int (*)(dev_t, int, int, struct proc *)) enodev, (void (*)(struct buf *)) enodev, (int (*)(dev_t, u_long, caddr_t, int, struct proc *)) enodev, (int (*)(dev_t, daddr_t, caddr_t, size_t)) enodev, 0 },
 { (int (*)(dev_t, int, int, struct proc *)) enodev, (int (*)(dev_t, int, int, struct proc *)) enodev, (void (*)(struct buf *)) enodev, (int (*)(dev_t, u_long, caddr_t, int, struct proc *)) enodev, (int (*)(dev_t, daddr_t, caddr_t, size_t)) enodev, 0 },
 { (int (*)(dev_t, int, int, struct proc *)) enodev, (int (*)(dev_t, int, int, struct proc *)) enodev, (void (*)(struct buf *)) enodev, (int (*)(dev_t, u_long, caddr_t, int, struct proc *)) enodev, (int (*)(dev_t, daddr_t, caddr_t, size_t)) enodev, 0 },
 { (int (*)(dev_t, int, int, struct proc *)) enodev, (int (*)(dev_t, int, int, struct proc *)) enodev, (void (*)(struct buf *)) enodev, (int (*)(dev_t, u_long, caddr_t, int, struct proc *)) enodev, (int (*)(dev_t, daddr_t, caddr_t, size_t)) enodev, 0 },
 { (int (*)(dev_t, int, int, struct proc *)) enodev, (int (*)(dev_t, int, int, struct proc *)) enodev, (void (*)(struct buf *)) enodev, (int (*)(dev_t, u_long, caddr_t, int, struct proc *)) enodev, (int (*)(dev_t, daddr_t, caddr_t, size_t)) enodev, 0 },
};
int nblkdev = (sizeof((bdevsw)) / sizeof((bdevsw)[0]));
struct cdevsw cdevsw[] =
{
 { ((1) > 0 ? cnopen : (int (*)(dev_t, int, int, struct proc *)) enxio), ((1) > 0 ? cnclose : (int (*)(dev_t, int, int, struct proc *)) enxio), ((1) > 0 ? cnread : (int (*)(dev_t, struct uio *, int)) enxio), ((1) > 0 ? cnwrite : (int (*)(dev_t, struct uio *, int)) enxio), ((1) > 0 ? cnioctl : (int (*)(dev_t, u_long, caddr_t, int, struct proc *)) enxio), ((1) > 0 ? cnstop : (int (*)(struct tty *, int)) enxio), 0, ((1) > 0 ? cnpoll : (int (*)(dev_t, int, struct proc *)) enxio), (paddr_t (*)(dev_t, off_t, int)) enodev, 2, 0, ((1) > 0 ? cnkqfilter : (int (*)(dev_t, struct knote *)) enxio) },
 { (int (*)(dev_t, int, int, struct proc *)) enodev, (int (*)(dev_t, int, int, struct proc *)) enodev, (int (*)(dev_t, struct uio *, int)) enodev, (int (*)(dev_t, struct uio *, int)) enodev, (int (*)(dev_t, u_long, caddr_t, int, struct proc *)) enodev, (int (*)(struct tty *, int)) enodev, 0, seltrue, (paddr_t (*)(dev_t, off_t, int)) enodev },
 { ((1) > 0 ? cttyopen : (int (*)(dev_t, int, int, struct proc *)) enxio), (int (*)(dev_t, int, int, struct proc *)) nullop, ((1) > 0 ? cttyread : (int (*)(dev_t, struct uio *, int)) enxio), ((1) > 0 ? cttywrite : (int (*)(dev_t, struct uio *, int)) enxio), ((1) > 0 ? cttyioctl : (int (*)(dev_t, u_long, caddr_t, int, struct proc *)) enxio), (int (*)(struct tty *, int)) nullop, 0, ((1) > 0 ? cttypoll : (int (*)(dev_t, int, struct proc *)) enxio), (paddr_t (*)(dev_t, off_t, int)) enodev, 2, 0, ((1) > 0 ? cttykqfilter : (int (*)(dev_t, struct knote *)) enxio) },
 { ((1) > 0 ? mmopen : (int (*)(dev_t, int, int, struct proc *)) enxio), ((1) > 0 ? mmclose : (int (*)(dev_t, int, int, struct proc *)) enxio), ((1) > 0 ? mmrw : (int (*)(dev_t, struct uio *, int)) enxio), ((1) > 0 ? mmrw : (int (*)(dev_t, struct uio *, int)) enxio), ((1) > 0 ? mmioctl : (int (*)(dev_t, u_long, caddr_t, int, struct proc *)) enxio), (int (*)(struct tty *, int)) enodev, 0, seltrue, ((1) > 0 ? mmmmap : (paddr_t (*)(dev_t, off_t, int)) enxio), 0, 0, seltrue_kqfilter },
 { (int (*)(dev_t, int, int, struct proc *)) enodev, (int (*)(dev_t, int, int, struct proc *)) enodev, (int (*)(dev_t, struct uio *, int)) enodev, (int (*)(dev_t, struct uio *, int)) enodev, (int (*)(dev_t, u_long, caddr_t, int, struct proc *)) enodev, (int (*)(struct tty *, int)) enodev, 0, seltrue, (paddr_t (*)(dev_t, off_t, int)) enodev },
 { (int (*)(dev_t, int, int, struct proc *)) enodev, (int (*)(dev_t, int, int, struct proc *)) enodev, (int (*)(dev_t, struct uio *, int)) enodev, (int (*)(dev_t, struct uio *, int)) enodev, (int (*)(dev_t, u_long, caddr_t, int, struct proc *)) enodev, (int (*)(struct tty *, int)) enodev, 0, seltrue, (paddr_t (*)(dev_t, off_t, int)) enodev },
 { (int (*)(dev_t, int, int, struct proc *)) enodev, (int (*)(dev_t, int, int, struct proc *)) enodev, (int (*)(dev_t, struct uio *, int)) enodev, (int (*)(dev_t, struct uio *, int)) enodev, (int (*)(dev_t, u_long, caddr_t, int, struct proc *)) enodev, (int (*)(struct tty *, int)) enodev, 0, seltrue, (paddr_t (*)(dev_t, off_t, int)) enodev },
 { (int (*)(dev_t, int, int, struct proc *)) enodev, (int (*)(dev_t, int, int, struct proc *)) enodev, (int (*)(dev_t, struct uio *, int)) enodev, (int (*)(dev_t, struct uio *, int)) enodev, (int (*)(dev_t, u_long, caddr_t, int, struct proc *)) enodev, (int (*)(struct tty *, int)) enodev, 0, seltrue, (paddr_t (*)(dev_t, off_t, int)) enodev },
 { (int (*)(dev_t, int, int, struct proc *)) enodev, (int (*)(dev_t, int, int, struct proc *)) enodev, (int (*)(dev_t, struct uio *, int)) enodev, (int (*)(dev_t, struct uio *, int)) enodev, (int (*)(dev_t, u_long, caddr_t, int, struct proc *)) enodev, (int (*)(struct tty *, int)) enodev, 0, seltrue, (paddr_t (*)(dev_t, off_t, int)) enodev },
 { (int (*)(dev_t, int, int, struct proc *)) enodev, (int (*)(dev_t, int, int, struct proc *)) enodev, (int (*)(dev_t, struct uio *, int)) enodev, (int (*)(dev_t, struct uio *, int)) enodev, (int (*)(dev_t, u_long, caddr_t, int, struct proc *)) enodev, (int (*)(struct tty *, int)) enodev, 0, seltrue, (paddr_t (*)(dev_t, off_t, int)) enodev },
 { (int (*)(dev_t, int, int, struct proc *)) enodev, (int (*)(dev_t, int, int, struct proc *)) enodev, (int (*)(dev_t, struct uio *, int)) enodev, (int (*)(dev_t, struct uio *, int)) enodev, (int (*)(dev_t, u_long, caddr_t, int, struct proc *)) enodev, (int (*)(struct tty *, int)) enodev, 0, seltrue, (paddr_t (*)(dev_t, off_t, int)) enodev },
 { (int (*)(dev_t, int, int, struct proc *)) enodev, (int (*)(dev_t, int, int, struct proc *)) enodev, (int (*)(dev_t, struct uio *, int)) enodev, (int (*)(dev_t, struct uio *, int)) enodev, (int (*)(dev_t, u_long, caddr_t, int, struct proc *)) enodev, (int (*)(struct tty *, int)) enodev, 0, seltrue, (paddr_t (*)(dev_t, off_t, int)) enodev },
 { ((1) > 0 ? zsopen : (int (*)(dev_t, int, int, struct proc *)) enxio), ((1) > 0 ? zsclose : (int (*)(dev_t, int, int, struct proc *)) enxio), ((1) > 0 ? zsread : (int (*)(dev_t, struct uio *, int)) enxio), ((1) > 0 ? zswrite : (int (*)(dev_t, struct uio *, int)) enxio), ((1) > 0 ? zsioctl : (int (*)(dev_t, u_long, caddr_t, int, struct proc *)) enxio), ((1) > 0 ? zsstop : (int (*)(struct tty *, int)) enxio), ((1) > 0 ? zstty : (struct tty *(*)(dev_t)) enxio), ttpoll, (paddr_t (*)(dev_t, off_t, int)) enodev, 2, 0, ttkqfilter },
 { (int (*)(dev_t, int, int, struct proc *)) enodev, (int (*)(dev_t, int, int, struct proc *)) enodev, (int (*)(dev_t, struct uio *, int)) enodev, (int (*)(dev_t, struct uio *, int)) enodev, (int (*)(dev_t, u_long, caddr_t, int, struct proc *)) enodev, (int (*)(struct tty *, int)) enodev, 0, seltrue, (paddr_t (*)(dev_t, off_t, int)) enodev },
 { (int (*)(dev_t, int, int, struct proc *)) enodev, (int (*)(dev_t, int, int, struct proc *)) enodev, (int (*)(dev_t, struct uio *, int)) enodev, (int (*)(dev_t, struct uio *, int)) enodev, (int (*)(dev_t, u_long, caddr_t, int, struct proc *)) enodev, (int (*)(struct tty *, int)) enodev, 0, seltrue, (paddr_t (*)(dev_t, off_t, int)) enodev },
 { (int (*)(dev_t, int, int, struct proc *)) enodev, (int (*)(dev_t, int, int, struct proc *)) enodev, (int (*)(dev_t, struct uio *, int)) enodev, (int (*)(dev_t, struct uio *, int)) enodev, (int (*)(dev_t, u_long, caddr_t, int, struct proc *)) enodev, (int (*)(struct tty *, int)) enodev, 0, seltrue, (paddr_t (*)(dev_t, off_t, int)) enodev },
 { ((1) > 0 ? logopen : (int (*)(dev_t, int, int, struct proc *)) enxio), ((1) > 0 ? logclose : (int (*)(dev_t, int, int, struct proc *)) enxio), ((1) > 0 ? logread : (int (*)(dev_t, struct uio *, int)) enxio), (int (*)(dev_t, struct uio *, int)) enodev, ((1) > 0 ? logioctl : (int (*)(dev_t, u_long, caddr_t, int, struct proc *)) enxio), (int (*)(struct tty *, int)) enodev, 0, ((1) > 0 ? logpoll : (int (*)(dev_t, int, struct proc *)) enxio), (paddr_t (*)(dev_t, off_t, int)) enodev, 0, 0, ((1) > 0 ? logkqfilter : (int (*)(dev_t, struct knote *)) enxio) },
 { ((1) > 0 ? sdopen : (int (*)(dev_t, int, int, struct proc *)) enxio), ((1) > 0 ? sdclose : (int (*)(dev_t, int, int, struct proc *)) enxio), ((1) > 0 ? sdread : (int (*)(dev_t, struct uio *, int)) enxio), ((1) > 0 ? sdwrite : (int (*)(dev_t, struct uio *, int)) enxio), ((1) > 0 ? sdioctl : (int (*)(dev_t, u_long, caddr_t, int, struct proc *)) enxio), (int (*)(struct tty *, int)) enodev, 0, seltrue, (paddr_t (*)(dev_t, off_t, int)) enodev, 1, 0, seltrue_kqfilter },
 { ((1) > 0 ? stopen : (int (*)(dev_t, int, int, struct proc *)) enxio), ((1) > 0 ? stclose : (int (*)(dev_t, int, int, struct proc *)) enxio), ((1) > 0 ? stread : (int (*)(dev_t, struct uio *, int)) enxio), ((1) > 0 ? stwrite : (int (*)(dev_t, struct uio *, int)) enxio), ((1) > 0 ? stioctl : (int (*)(dev_t, u_long, caddr_t, int, struct proc *)) enxio), (int (*)(struct tty *, int)) enodev, 0, seltrue, (paddr_t (*)(dev_t, off_t, int)) enodev, 0, 0, seltrue_kqfilter },
 { ((1) > 0 ? chopen : (int (*)(dev_t, int, int, struct proc *)) enxio), ((1) > 0 ? chclose : (int (*)(dev_t, int, int, struct proc *)) enxio), (int (*)(dev_t, struct uio *, int)) enodev, (int (*)(dev_t, struct uio *, int)) enodev, ((1) > 0 ? chioctl : (int (*)(dev_t, u_long, caddr_t, int, struct proc *)) enxio), (int (*)(struct tty *, int)) enodev, 0, selfalse, (paddr_t (*)(dev_t, off_t, int)) enodev },
 { ((16) > 0 ? ptsopen : (int (*)(dev_t, int, int, struct proc *)) enxio), ((16) > 0 ? ptsclose : (int (*)(dev_t, int, int, struct proc *)) enxio), ((16) > 0 ? ptsread : (int (*)(dev_t, struct uio *, int)) enxio), ((16) > 0 ? ptswrite : (int (*)(dev_t, struct uio *, int)) enxio), ((16) > 0 ? ptyioctl : (int (*)(dev_t, u_long, caddr_t, int, struct proc *)) enxio), ((16) > 0 ? ptsstop : (int (*)(struct tty *, int)) enxio), ((16) > 0 ? ptytty : (struct tty *(*)(dev_t)) enxio), ttpoll, (paddr_t (*)(dev_t, off_t, int)) enodev, 2, 0, ttkqfilter },
 { ((16) > 0 ? ptcopen : (int (*)(dev_t, int, int, struct proc *)) enxio), ((16) > 0 ? ptcclose : (int (*)(dev_t, int, int, struct proc *)) enxio), ((16) > 0 ? ptcread : (int (*)(dev_t, struct uio *, int)) enxio), ((16) > 0 ? ptcwrite : (int (*)(dev_t, struct uio *, int)) enxio), ((16) > 0 ? ptyioctl : (int (*)(dev_t, u_long, caddr_t, int, struct proc *)) enxio), (int (*)(struct tty *, int)) nullop, ((16) > 0 ? ptytty : (struct tty *(*)(dev_t)) enxio), ((16) > 0 ? ptcpoll : (int (*)(dev_t, int, struct proc *)) enxio), (paddr_t (*)(dev_t, off_t, int)) enodev, 2, 0, ((16) > 0 ? ptckqfilter : (int (*)(dev_t, struct knote *)) enxio) },
 { (int (*)(dev_t, int, int, struct proc *)) enodev, (int (*)(dev_t, int, int, struct proc *)) enodev, (int (*)(dev_t, struct uio *, int)) enodev, (int (*)(dev_t, struct uio *, int)) enodev, (int (*)(dev_t, u_long, caddr_t, int, struct proc *)) enodev, (int (*)(struct tty *, int)) enodev, 0, seltrue, (paddr_t (*)(dev_t, off_t, int)) enodev },
 { (int (*)(dev_t, int, int, struct proc *)) enodev, (int (*)(dev_t, int, int, struct proc *)) enodev, (int (*)(dev_t, struct uio *, int)) enodev, (int (*)(dev_t, struct uio *, int)) enodev, (int (*)(dev_t, u_long, caddr_t, int, struct proc *)) enodev, (int (*)(struct tty *, int)) enodev, 0, seltrue, (paddr_t (*)(dev_t, off_t, int)) enodev },
 { ((1) > 0 ? filedescopen : (int (*)(dev_t, int, int, struct proc *)) enxio), (int (*)(dev_t, int, int, struct proc *)) enodev, (int (*)(dev_t, struct uio *, int)) enodev, (int (*)(dev_t, struct uio *, int)) enodev, (int (*)(dev_t, u_long, caddr_t, int, struct proc *)) enodev, (int (*)(struct tty *, int)) enodev, 0, selfalse, (paddr_t (*)(dev_t, off_t, int)) enodev },
 { ((1) > 0 ? uperfopen : (int (*)(dev_t, int, int, struct proc *)) enxio), ((1) > 0 ? uperfclose : (int (*)(dev_t, int, int, struct proc *)) enxio), (int (*)(dev_t, struct uio *, int)) enodev, (int (*)(dev_t, struct uio *, int)) enodev, ((1) > 0 ? uperfioctl : (int (*)(dev_t, u_long, caddr_t, int, struct proc *)) enxio), (int (*)(struct tty *, int)) nullop, 0, selfalse, (paddr_t (*)(dev_t, off_t, int)) enodev },
 { ((1) > 0 ? wdopen : (int (*)(dev_t, int, int, struct proc *)) enxio), ((1) > 0 ? wdclose : (int (*)(dev_t, int, int, struct proc *)) enxio), ((1) > 0 ? wdread : (int (*)(dev_t, struct uio *, int)) enxio), ((1) > 0 ? wdwrite : (int (*)(dev_t, struct uio *, int)) enxio), ((1) > 0 ? wdioctl : (int (*)(dev_t, u_long, caddr_t, int, struct proc *)) enxio), (int (*)(struct tty *, int)) enodev, 0, seltrue, (paddr_t (*)(dev_t, off_t, int)) enodev, 1, 0, seltrue_kqfilter },
 { (int (*)(dev_t, int, int, struct proc *)) enodev, (int (*)(dev_t, int, int, struct proc *)) enodev, (int (*)(dev_t, struct uio *, int)) enodev, (int (*)(dev_t, struct uio *, int)) enodev, (int (*)(dev_t, u_long, caddr_t, int, struct proc *)) enodev, (int (*)(struct tty *, int)) enodev, 0, seltrue, (paddr_t (*)(dev_t, off_t, int)) enodev },
 { (int (*)(dev_t, int, int, struct proc *)) enodev, (int (*)(dev_t, int, int, struct proc *)) enodev, (int (*)(dev_t, struct uio *, int)) enodev, (int (*)(dev_t, struct uio *, int)) enodev, (int (*)(dev_t, u_long, caddr_t, int, struct proc *)) enodev, (int (*)(struct tty *, int)) enodev, 0, seltrue, (paddr_t (*)(dev_t, off_t, int)) enodev },
 { (int (*)(dev_t, int, int, struct proc *)) enodev, (int (*)(dev_t, int, int, struct proc *)) enodev, (int (*)(dev_t, struct uio *, int)) enodev, (int (*)(dev_t, struct uio *, int)) enodev, (int (*)(dev_t, u_long, caddr_t, int, struct proc *)) enodev, (int (*)(struct tty *, int)) enodev, 0, seltrue, (paddr_t (*)(dev_t, off_t, int)) enodev },
 { (int (*)(dev_t, int, int, struct proc *)) enodev, (int (*)(dev_t, int, int, struct proc *)) enodev, (int (*)(dev_t, struct uio *, int)) enodev, (int (*)(dev_t, struct uio *, int)) enodev, (int (*)(dev_t, u_long, caddr_t, int, struct proc *)) enodev, (int (*)(struct tty *, int)) enodev, 0, seltrue, (paddr_t (*)(dev_t, off_t, int)) enodev },
 { (int (*)(dev_t, int, int, struct proc *)) enodev, (int (*)(dev_t, int, int, struct proc *)) enodev, (int (*)(dev_t, struct uio *, int)) enodev, (int (*)(dev_t, struct uio *, int)) enodev, (int (*)(dev_t, u_long, caddr_t, int, struct proc *)) enodev, (int (*)(struct tty *, int)) enodev, 0, seltrue, (paddr_t (*)(dev_t, off_t, int)) enodev },
 { (int (*)(dev_t, int, int, struct proc *)) enodev, (int (*)(dev_t, int, int, struct proc *)) enodev, (int (*)(dev_t, struct uio *, int)) enodev, (int (*)(dev_t, struct uio *, int)) enodev, (int (*)(dev_t, u_long, caddr_t, int, struct proc *)) enodev, (int (*)(struct tty *, int)) enodev, 0, seltrue, (paddr_t (*)(dev_t, off_t, int)) enodev },
 { (int (*)(dev_t, int, int, struct proc *)) enodev, (int (*)(dev_t, int, int, struct proc *)) enodev, (int (*)(dev_t, struct uio *, int)) enodev, (int (*)(dev_t, struct uio *, int)) enodev, (int (*)(dev_t, u_long, caddr_t, int, struct proc *)) enodev, (int (*)(struct tty *, int)) enodev, 0, seltrue, (paddr_t (*)(dev_t, off_t, int)) enodev },
 { (int (*)(dev_t, int, int, struct proc *)) enodev, (int (*)(dev_t, int, int, struct proc *)) enodev, (int (*)(dev_t, struct uio *, int)) enodev, (int (*)(dev_t, struct uio *, int)) enodev, (int (*)(dev_t, u_long, caddr_t, int, struct proc *)) enodev, (int (*)(struct tty *, int)) enodev, 0, seltrue, (paddr_t (*)(dev_t, off_t, int)) enodev },
 { (int (*)(dev_t, int, int, struct proc *)) enodev, (int (*)(dev_t, int, int, struct proc *)) enodev, (int (*)(dev_t, struct uio *, int)) enodev, (int (*)(dev_t, struct uio *, int)) enodev, (int (*)(dev_t, u_long, caddr_t, int, struct proc *)) enodev, (int (*)(struct tty *, int)) enodev, 0, seltrue, (paddr_t (*)(dev_t, off_t, int)) enodev },
 { ((1) > 0 ? comopen : (int (*)(dev_t, int, int, struct proc *)) enxio), ((1) > 0 ? comclose : (int (*)(dev_t, int, int, struct proc *)) enxio), ((1) > 0 ? comread : (int (*)(dev_t, struct uio *, int)) enxio), ((1) > 0 ? comwrite : (int (*)(dev_t, struct uio *, int)) enxio), ((1) > 0 ? comioctl : (int (*)(dev_t, u_long, caddr_t, int, struct proc *)) enxio), ((1) > 0 ? comstop : (int (*)(struct tty *, int)) enxio), ((1) > 0 ? comtty : (struct tty *(*)(dev_t)) enxio), ttpoll, (paddr_t (*)(dev_t, off_t, int)) enodev, 2, 0, ttkqfilter },
 { ((1) > 0 ? lptopen : (int (*)(dev_t, int, int, struct proc *)) enxio), ((1) > 0 ? lptclose : (int (*)(dev_t, int, int, struct proc *)) enxio), (int (*)(dev_t, struct uio *, int)) enodev, ((1) > 0 ? lptwrite : (int (*)(dev_t, struct uio *, int)) enxio), (int (*)(dev_t, u_long, caddr_t, int, struct proc *)) enodev, (int (*)(struct tty *, int)) enodev, 0, seltrue, (paddr_t (*)(dev_t, off_t, int)) enodev, 0, 0, seltrue_kqfilter },
 { (int (*)(dev_t, int, int, struct proc *)) enodev, (int (*)(dev_t, int, int, struct proc *)) enodev, (int (*)(dev_t, struct uio *, int)) enodev, (int (*)(dev_t, struct uio *, int)) enodev, (int (*)(dev_t, u_long, caddr_t, int, struct proc *)) enodev, (int (*)(struct tty *, int)) enodev, 0, seltrue, (paddr_t (*)(dev_t, off_t, int)) enodev },
 { (int (*)(dev_t, int, int, struct proc *)) enodev, (int (*)(dev_t, int, int, struct proc *)) enodev, (int (*)(dev_t, struct uio *, int)) enodev, (int (*)(dev_t, struct uio *, int)) enodev, (int (*)(dev_t, u_long, caddr_t, int, struct proc *)) enodev, (int (*)(struct tty *, int)) enodev, 0, seltrue, (paddr_t (*)(dev_t, off_t, int)) enodev },
 { (int (*)(dev_t, int, int, struct proc *)) enodev, (int (*)(dev_t, int, int, struct proc *)) enodev, (int (*)(dev_t, struct uio *, int)) enodev, (int (*)(dev_t, struct uio *, int)) enodev, (int (*)(dev_t, u_long, caddr_t, int, struct proc *)) enodev, (int (*)(struct tty *, int)) enodev, 0, seltrue, (paddr_t (*)(dev_t, off_t, int)) enodev },
 { (int (*)(dev_t, int, int, struct proc *)) enodev, (int (*)(dev_t, int, int, struct proc *)) enodev, (int (*)(dev_t, struct uio *, int)) enodev, (int (*)(dev_t, struct uio *, int)) enodev, (int (*)(dev_t, u_long, caddr_t, int, struct proc *)) enodev, (int (*)(struct tty *, int)) enodev, 0, seltrue, (paddr_t (*)(dev_t, off_t, int)) enodev },
 { (int (*)(dev_t, int, int, struct proc *)) enodev, (int (*)(dev_t, int, int, struct proc *)) enodev, (int (*)(dev_t, struct uio *, int)) enodev, (int (*)(dev_t, struct uio *, int)) enodev, (int (*)(dev_t, u_long, caddr_t, int, struct proc *)) enodev, (int (*)(struct tty *, int)) enodev, 0, seltrue, (paddr_t (*)(dev_t, off_t, int)) enodev },
 { (int (*)(dev_t, int, int, struct proc *)) enodev, (int (*)(dev_t, int, int, struct proc *)) enodev, (int (*)(dev_t, struct uio *, int)) enodev, (int (*)(dev_t, struct uio *, int)) enodev, (int (*)(dev_t, u_long, caddr_t, int, struct proc *)) enodev, (int (*)(struct tty *, int)) enodev, 0, seltrue, (paddr_t (*)(dev_t, off_t, int)) enodev },
 { ((1) > 0 ? videoopen : (int (*)(dev_t, int, int, struct proc *)) enxio), ((1) > 0 ? videoclose : (int (*)(dev_t, int, int, struct proc *)) enxio), ((1) > 0 ? videoread : (int (*)(dev_t, struct uio *, int)) enxio), (int (*)(dev_t, struct uio *, int)) enodev, ((1) > 0 ? videoioctl : (int (*)(dev_t, u_long, caddr_t, int, struct proc *)) enxio), (int (*)(struct tty *, int)) enodev, 0, ((1) > 0 ? videopoll : (int (*)(dev_t, int, struct proc *)) enxio), ((1) > 0 ? videommap : (paddr_t (*)(dev_t, off_t, int)) enxio) },
 { (int (*)(dev_t, int, int, struct proc *)) enodev, (int (*)(dev_t, int, int, struct proc *)) enodev, (int (*)(dev_t, struct uio *, int)) enodev, (int (*)(dev_t, struct uio *, int)) enodev, (int (*)(dev_t, u_long, caddr_t, int, struct proc *)) enodev, (int (*)(struct tty *, int)) enodev, 0, seltrue, (paddr_t (*)(dev_t, off_t, int)) enodev },
 { (int (*)(dev_t, int, int, struct proc *)) enodev, (int (*)(dev_t, int, int, struct proc *)) enodev, (int (*)(dev_t, struct uio *, int)) enodev, (int (*)(dev_t, struct uio *, int)) enodev, (int (*)(dev_t, u_long, caddr_t, int, struct proc *)) enodev, (int (*)(struct tty *, int)) enodev, 0, seltrue, (paddr_t (*)(dev_t, off_t, int)) enodev },
 { (int (*)(dev_t, int, int, struct proc *)) enodev, (int (*)(dev_t, int, int, struct proc *)) enodev, (int (*)(dev_t, struct uio *, int)) enodev, (int (*)(dev_t, struct uio *, int)) enodev, (int (*)(dev_t, u_long, caddr_t, int, struct proc *)) enodev, (int (*)(struct tty *, int)) enodev, 0, seltrue, (paddr_t (*)(dev_t, off_t, int)) enodev },
 { (int (*)(dev_t, int, int, struct proc *)) enodev, (int (*)(dev_t, int, int, struct proc *)) enodev, (int (*)(dev_t, struct uio *, int)) enodev, (int (*)(dev_t, struct uio *, int)) enodev, (int (*)(dev_t, u_long, caddr_t, int, struct proc *)) enodev, (int (*)(struct tty *, int)) enodev, 0, seltrue, (paddr_t (*)(dev_t, off_t, int)) enodev },
 { (int (*)(dev_t, int, int, struct proc *)) enodev, (int (*)(dev_t, int, int, struct proc *)) enodev, (int (*)(dev_t, struct uio *, int)) enodev, (int (*)(dev_t, struct uio *, int)) enodev, (int (*)(dev_t, u_long, caddr_t, int, struct proc *)) enodev, (int (*)(struct tty *, int)) enodev, 0, seltrue, (paddr_t (*)(dev_t, off_t, int)) enodev },
 { (int (*)(dev_t, int, int, struct proc *)) enodev, (int (*)(dev_t, int, int, struct proc *)) enodev, (int (*)(dev_t, struct uio *, int)) enodev, (int (*)(dev_t, struct uio *, int)) enodev, (int (*)(dev_t, u_long, caddr_t, int, struct proc *)) enodev, (int (*)(struct tty *, int)) enodev, 0, seltrue, (paddr_t (*)(dev_t, off_t, int)) enodev },
 { (int (*)(dev_t, int, int, struct proc *)) enodev, (int (*)(dev_t, int, int, struct proc *)) enodev, (int (*)(dev_t, struct uio *, int)) enodev, (int (*)(dev_t, struct uio *, int)) enodev, (int (*)(dev_t, u_long, caddr_t, int, struct proc *)) enodev, (int (*)(struct tty *, int)) enodev, 0, seltrue, (paddr_t (*)(dev_t, off_t, int)) enodev },
 { ((1) > 0 ? pciopen : (int (*)(dev_t, int, int, struct proc *)) enxio), ((1) > 0 ? pciclose : (int (*)(dev_t, int, int, struct proc *)) enxio), (int (*)(dev_t, struct uio *, int)) enodev, (int (*)(dev_t, struct uio *, int)) enodev, ((1) > 0 ? pciioctl : (int (*)(dev_t, u_long, caddr_t, int, struct proc *)) enxio), (int (*)(struct tty *, int)) enodev, 0, selfalse, (paddr_t (*)(dev_t, off_t, int)) enodev },
 { (int (*)(dev_t, int, int, struct proc *)) enodev, (int (*)(dev_t, int, int, struct proc *)) enodev, (int (*)(dev_t, struct uio *, int)) enodev, (int (*)(dev_t, struct uio *, int)) enodev, (int (*)(dev_t, u_long, caddr_t, int, struct proc *)) enodev, (int (*)(struct tty *, int)) enodev, 0, seltrue, (paddr_t (*)(dev_t, off_t, int)) enodev },
 { ((1) > 0 ? fdopen : (int (*)(dev_t, int, int, struct proc *)) enxio), ((1) > 0 ? fdclose : (int (*)(dev_t, int, int, struct proc *)) enxio), ((1) > 0 ? fdread : (int (*)(dev_t, struct uio *, int)) enxio), ((1) > 0 ? fdwrite : (int (*)(dev_t, struct uio *, int)) enxio), ((1) > 0 ? fdioctl : (int (*)(dev_t, u_long, caddr_t, int, struct proc *)) enxio), (int (*)(struct tty *, int)) enodev, 0, seltrue, (paddr_t (*)(dev_t, off_t, int)) enodev, 1, 0, seltrue_kqfilter },
 { (int (*)(dev_t, int, int, struct proc *)) enodev, (int (*)(dev_t, int, int, struct proc *)) enodev, (int (*)(dev_t, struct uio *, int)) enodev, (int (*)(dev_t, struct uio *, int)) enodev, (int (*)(dev_t, u_long, caddr_t, int, struct proc *)) enodev, (int (*)(struct tty *, int)) enodev, 0, seltrue, (paddr_t (*)(dev_t, off_t, int)) enodev },
 { (int (*)(dev_t, int, int, struct proc *)) enodev, (int (*)(dev_t, int, int, struct proc *)) enodev, (int (*)(dev_t, struct uio *, int)) enodev, (int (*)(dev_t, struct uio *, int)) enodev, (int (*)(dev_t, u_long, caddr_t, int, struct proc *)) enodev, (int (*)(struct tty *, int)) enodev, 0, seltrue, (paddr_t (*)(dev_t, off_t, int)) enodev },
 { (int (*)(dev_t, int, int, struct proc *)) enodev, (int (*)(dev_t, int, int, struct proc *)) enodev, (int (*)(dev_t, struct uio *, int)) enodev, (int (*)(dev_t, struct uio *, int)) enodev, (int (*)(dev_t, u_long, caddr_t, int, struct proc *)) enodev, (int (*)(struct tty *, int)) enodev, 0, seltrue, (paddr_t (*)(dev_t, off_t, int)) enodev },
 { ((1) > 0 ? cdopen : (int (*)(dev_t, int, int, struct proc *)) enxio), ((1) > 0 ? cdclose : (int (*)(dev_t, int, int, struct proc *)) enxio), ((1) > 0 ? cdread : (int (*)(dev_t, struct uio *, int)) enxio), ((1) > 0 ? cdwrite : (int (*)(dev_t, struct uio *, int)) enxio), ((1) > 0 ? cdioctl : (int (*)(dev_t, u_long, caddr_t, int, struct proc *)) enxio), (int (*)(struct tty *, int)) enodev, 0, seltrue, (paddr_t (*)(dev_t, off_t, int)) enodev, 1, 0, seltrue_kqfilter },
 { (int (*)(dev_t, int, int, struct proc *)) enodev, (int (*)(dev_t, int, int, struct proc *)) enodev, (int (*)(dev_t, struct uio *, int)) enodev, (int (*)(dev_t, struct uio *, int)) enodev, (int (*)(dev_t, u_long, caddr_t, int, struct proc *)) enodev, (int (*)(struct tty *, int)) enodev, 0, seltrue, (paddr_t (*)(dev_t, off_t, int)) enodev },
 { ((1) > 0 ? ukopen : (int (*)(dev_t, int, int, struct proc *)) enxio), ((1) > 0 ? ukclose : (int (*)(dev_t, int, int, struct proc *)) enxio), (int (*)(dev_t, struct uio *, int)) enodev, (int (*)(dev_t, struct uio *, int)) enodev, ((1) > 0 ? ukioctl : (int (*)(dev_t, u_long, caddr_t, int, struct proc *)) enxio), (int (*)(struct tty *, int)) enodev, 0, selfalse, (paddr_t (*)(dev_t, off_t, int)) enodev },
 { ((0) > 0 ? rdopen : (int (*)(dev_t, int, int, struct proc *)) enxio), ((0) > 0 ? rdclose : (int (*)(dev_t, int, int, struct proc *)) enxio), ((0) > 0 ? rdread : (int (*)(dev_t, struct uio *, int)) enxio), ((0) > 0 ? rdwrite : (int (*)(dev_t, struct uio *, int)) enxio), ((0) > 0 ? rdioctl : (int (*)(dev_t, u_long, caddr_t, int, struct proc *)) enxio), (int (*)(struct tty *, int)) enodev, 0, seltrue, (paddr_t (*)(dev_t, off_t, int)) enodev, 1, 0, seltrue_kqfilter },
 { (int (*)(dev_t, int, int, struct proc *)) enodev, (int (*)(dev_t, int, int, struct proc *)) enodev, (int (*)(dev_t, struct uio *, int)) enodev, (int (*)(dev_t, struct uio *, int)) enodev, (int (*)(dev_t, u_long, caddr_t, int, struct proc *)) enodev, (int (*)(struct tty *, int)) enodev, 0, seltrue, (paddr_t (*)(dev_t, off_t, int)) enodev },
 { (int (*)(dev_t, int, int, struct proc *)) enodev, (int (*)(dev_t, int, int, struct proc *)) enodev, (int (*)(dev_t, struct uio *, int)) enodev, (int (*)(dev_t, struct uio *, int)) enodev, (int (*)(dev_t, u_long, caddr_t, int, struct proc *)) enodev, (int (*)(struct tty *, int)) enodev, 0, seltrue, (paddr_t (*)(dev_t, off_t, int)) enodev },
 { (int (*)(dev_t, int, int, struct proc *)) enodev, (int (*)(dev_t, int, int, struct proc *)) enodev, (int (*)(dev_t, struct uio *, int)) enodev, (int (*)(dev_t, struct uio *, int)) enodev, (int (*)(dev_t, u_long, caddr_t, int, struct proc *)) enodev, (int (*)(struct tty *, int)) enodev, 0, seltrue, (paddr_t (*)(dev_t, off_t, int)) enodev },
 { (int (*)(dev_t, int, int, struct proc *)) enodev, (int (*)(dev_t, int, int, struct proc *)) enodev, (int (*)(dev_t, struct uio *, int)) enodev, (int (*)(dev_t, struct uio *, int)) enodev, (int (*)(dev_t, u_long, caddr_t, int, struct proc *)) enodev, (int (*)(struct tty *, int)) enodev, 0, seltrue, (paddr_t (*)(dev_t, off_t, int)) enodev },
 { (int (*)(dev_t, int, int, struct proc *)) enodev, (int (*)(dev_t, int, int, struct proc *)) enodev, (int (*)(dev_t, struct uio *, int)) enodev, (int (*)(dev_t, struct uio *, int)) enodev, (int (*)(dev_t, u_long, caddr_t, int, struct proc *)) enodev, (int (*)(struct tty *, int)) enodev, 0, seltrue, (paddr_t (*)(dev_t, off_t, int)) enodev },
 { (int (*)(dev_t, int, int, struct proc *)) enodev, (int (*)(dev_t, int, int, struct proc *)) enodev, (int (*)(dev_t, struct uio *, int)) enodev, (int (*)(dev_t, struct uio *, int)) enodev, (int (*)(dev_t, u_long, caddr_t, int, struct proc *)) enodev, (int (*)(struct tty *, int)) enodev, 0, seltrue, (paddr_t (*)(dev_t, off_t, int)) enodev },
 { ((1) > 0 ? midiopen : (int (*)(dev_t, int, int, struct proc *)) enxio), ((1) > 0 ? midiclose : (int (*)(dev_t, int, int, struct proc *)) enxio), ((1) > 0 ? midiread : (int (*)(dev_t, struct uio *, int)) enxio), ((1) > 0 ? midiwrite : (int (*)(dev_t, struct uio *, int)) enxio), ((1) > 0 ? midiioctl : (int (*)(dev_t, u_long, caddr_t, int, struct proc *)) enxio), (int (*)(struct tty *, int)) enodev, 0, ((1) > 0 ? midipoll : (int (*)(dev_t, int, struct proc *)) enxio), (paddr_t (*)(dev_t, off_t, int)) enodev, 0, 0, ((1) > 0 ? midikqfilter : (int (*)(dev_t, struct knote *)) enxio) },
 { ((1) > 0 ? audioopen : (int (*)(dev_t, int, int, struct proc *)) enxio), ((1) > 0 ? audioclose : (int (*)(dev_t, int, int, struct proc *)) enxio), ((1) > 0 ? audioread : (int (*)(dev_t, struct uio *, int)) enxio), ((1) > 0 ? audiowrite : (int (*)(dev_t, struct uio *, int)) enxio), ((1) > 0 ? audioioctl : (int (*)(dev_t, u_long, caddr_t, int, struct proc *)) enxio), (int (*)(struct tty *, int)) enodev, 0, ((1) > 0 ? audiopoll : (int (*)(dev_t, int, struct proc *)) enxio), (paddr_t (*)(dev_t, off_t, int)) enodev },
 { ((1) > 0 ? openpromopen : (int (*)(dev_t, int, int, struct proc *)) enxio), ((1) > 0 ? openpromclose : (int (*)(dev_t, int, int, struct proc *)) enxio), ((1) > 0 ? openpromread : (int (*)(dev_t, struct uio *, int)) enxio), (int (*)(dev_t, struct uio *, int)) enodev, ((1) > 0 ? openpromioctl : (int (*)(dev_t, u_long, caddr_t, int, struct proc *)) enxio), (int (*)(struct tty *, int)) nullop, 0, selfalse, (paddr_t (*)(dev_t, off_t, int)) enodev },
 { ((1) > 0 ? mttyopen : (int (*)(dev_t, int, int, struct proc *)) enxio), ((1) > 0 ? mttyclose : (int (*)(dev_t, int, int, struct proc *)) enxio), ((1) > 0 ? mttyread : (int (*)(dev_t, struct uio *, int)) enxio), ((1) > 0 ? mttywrite : (int (*)(dev_t, struct uio *, int)) enxio), ((1) > 0 ? mttyioctl : (int (*)(dev_t, u_long, caddr_t, int, struct proc *)) enxio), ((1) > 0 ? mttystop : (int (*)(struct tty *, int)) enxio), ((1) > 0 ? mttytty : (struct tty *(*)(dev_t)) enxio), ttpoll, (paddr_t (*)(dev_t, off_t, int)) enodev, 2, 0, ttkqfilter },
 { ((1) > 0 ? mbppopen : (int (*)(dev_t, int, int, struct proc *)) enxio), ((1) > 0 ? mbppclose : (int (*)(dev_t, int, int, struct proc *)) enxio), ((1) > 0 ? mbppread : (int (*)(dev_t, struct uio *, int)) enxio), ((1) > 0 ? mbppwrite : (int (*)(dev_t, struct uio *, int)) enxio), ((1) > 0 ? mbppioctl : (int (*)(dev_t, u_long, caddr_t, int, struct proc *)) enxio), (int (*)(struct tty *, int)) nullop, 0, ((1) > 0 ? mbpppoll : (int (*)(dev_t, int, struct proc *)) enxio), (paddr_t (*)(dev_t, off_t, int)) enodev },
 { ((1) > 0 ? pfopen : (int (*)(dev_t, int, int, struct proc *)) enxio), ((1) > 0 ? pfclose : (int (*)(dev_t, int, int, struct proc *)) enxio), (int (*)(dev_t, struct uio *, int)) enodev, (int (*)(dev_t, struct uio *, int)) enodev, ((1) > 0 ? pfioctl : (int (*)(dev_t, u_long, caddr_t, int, struct proc *)) enxio), (int (*)(struct tty *, int)) enodev, 0, selfalse, (paddr_t (*)(dev_t, off_t, int)) enodev },
 { (int (*)(dev_t, int, int, struct proc *)) enodev, (int (*)(dev_t, int, int, struct proc *)) enodev, (int (*)(dev_t, struct uio *, int)) enodev, (int (*)(dev_t, struct uio *, int)) enodev, (int (*)(dev_t, u_long, caddr_t, int, struct proc *)) enodev, (int (*)(struct tty *, int)) enodev, 0, seltrue, (paddr_t (*)(dev_t, off_t, int)) enodev },
 { (int (*)(dev_t, int, int, struct proc *)) enodev, (int (*)(dev_t, int, int, struct proc *)) enodev, (int (*)(dev_t, struct uio *, int)) enodev, (int (*)(dev_t, struct uio *, int)) enodev, (int (*)(dev_t, u_long, caddr_t, int, struct proc *)) enodev, (int (*)(struct tty *, int)) enodev, 0, seltrue, (paddr_t (*)(dev_t, off_t, int)) enodev },
 { ((1) > 0 ? ksymsopen : (int (*)(dev_t, int, int, struct proc *)) enxio), ((1) > 0 ? ksymsclose : (int (*)(dev_t, int, int, struct proc *)) enxio), ((1) > 0 ? ksymsread : (int (*)(dev_t, struct uio *, int)) enxio), (int (*)(dev_t, struct uio *, int)) enodev, (int (*)(dev_t, u_long, caddr_t, int, struct proc *)) enodev, (int (*)(struct tty *, int)) enodev, 0, seltrue, (paddr_t (*)(dev_t, off_t, int)) enodev, 0, 0, seltrue_kqfilter },
 { ((1) > 0 ? sabttyopen : (int (*)(dev_t, int, int, struct proc *)) enxio), ((1) > 0 ? sabttyclose : (int (*)(dev_t, int, int, struct proc *)) enxio), ((1) > 0 ? sabttyread : (int (*)(dev_t, struct uio *, int)) enxio), ((1) > 0 ? sabttywrite : (int (*)(dev_t, struct uio *, int)) enxio), ((1) > 0 ? sabttyioctl : (int (*)(dev_t, u_long, caddr_t, int, struct proc *)) enxio), ((1) > 0 ? sabttystop : (int (*)(struct tty *, int)) enxio), ((1) > 0 ? sabttytty : (struct tty *(*)(dev_t)) enxio), ttpoll, (paddr_t (*)(dev_t, off_t, int)) enodev, 2, 0, ttkqfilter },
 { ((1) > 0 ? wsdisplayopen : (int (*)(dev_t, int, int, struct proc *)) enxio), ((1) > 0 ? wsdisplayclose : (int (*)(dev_t, int, int, struct proc *)) enxio), ((1) > 0 ? wsdisplayread : (int (*)(dev_t, struct uio *, int)) enxio), ((1) > 0 ? wsdisplaywrite : (int (*)(dev_t, struct uio *, int)) enxio), ((1) > 0 ? wsdisplayioctl : (int (*)(dev_t, u_long, caddr_t, int, struct proc *)) enxio), ((1) > 0 ? wsdisplaystop : (int (*)(struct tty *, int)) enxio), ((1) > 0 ? wsdisplaytty : (struct tty *(*)(dev_t)) enxio), ((1) > 0 ? wsdisplaypoll : (int (*)(dev_t, int, struct proc *)) enxio), ((1) > 0 ? wsdisplaymmap : (paddr_t (*)(dev_t, off_t, int)) enxio), 2, 0, ((1) > 0 ? wsdisplaykqfilter : (int (*)(dev_t, struct knote *)) enxio) },
 { ((1) > 0 ? wskbdopen : (int (*)(dev_t, int, int, struct proc *)) enxio), ((1) > 0 ? wskbdclose : (int (*)(dev_t, int, int, struct proc *)) enxio), ((1) > 0 ? wskbdread : (int (*)(dev_t, struct uio *, int)) enxio), (int (*)(dev_t, struct uio *, int)) enodev, ((1) > 0 ? wskbdioctl : (int (*)(dev_t, u_long, caddr_t, int, struct proc *)) enxio), (int (*)(struct tty *, int)) enodev, 0, ((1) > 0 ? wskbdpoll : (int (*)(dev_t, int, struct proc *)) enxio), (paddr_t (*)(dev_t, off_t, int)) enodev , 0, 0, ((1) > 0 ? wskbdkqfilter : (int (*)(dev_t, struct knote *)) enxio) },
 { ((1) > 0 ? wsmouseopen : (int (*)(dev_t, int, int, struct proc *)) enxio), ((1) > 0 ? wsmouseclose : (int (*)(dev_t, int, int, struct proc *)) enxio), ((1) > 0 ? wsmouseread : (int (*)(dev_t, struct uio *, int)) enxio), (int (*)(dev_t, struct uio *, int)) enodev, ((1) > 0 ? wsmouseioctl : (int (*)(dev_t, u_long, caddr_t, int, struct proc *)) enxio), (int (*)(struct tty *, int)) enodev, 0, ((1) > 0 ? wsmousepoll : (int (*)(dev_t, int, struct proc *)) enxio), (paddr_t (*)(dev_t, off_t, int)) enodev , 0, 0, ((1) > 0 ? wsmousekqfilter : (int (*)(dev_t, struct knote *)) enxio) },
 { ((1) > 0 ? wsmuxopen : (int (*)(dev_t, int, int, struct proc *)) enxio), ((1) > 0 ? wsmuxclose : (int (*)(dev_t, int, int, struct proc *)) enxio), ((1) > 0 ? wsmuxread : (int (*)(dev_t, struct uio *, int)) enxio), (int (*)(dev_t, struct uio *, int)) enodev, ((1) > 0 ? wsmuxioctl : (int (*)(dev_t, u_long, caddr_t, int, struct proc *)) enxio), (int (*)(struct tty *, int)) enodev, 0, ((1) > 0 ? wsmuxpoll : (int (*)(dev_t, int, struct proc *)) enxio), (paddr_t (*)(dev_t, off_t, int)) enodev , 0, 0, ((1) > 0 ? wsmuxkqfilter : (int (*)(dev_t, struct knote *)) enxio) },
 { (int (*)(dev_t, int, int, struct proc *)) enodev, (int (*)(dev_t, int, int, struct proc *)) enodev, (int (*)(dev_t, struct uio *, int)) enodev, (int (*)(dev_t, struct uio *, int)) enodev, (int (*)(dev_t, u_long, caddr_t, int, struct proc *)) enodev, (int (*)(struct tty *, int)) enodev, 0, seltrue, (paddr_t (*)(dev_t, off_t, int)) enodev },
 { (int (*)(dev_t, int, int, struct proc *)) enodev, (int (*)(dev_t, int, int, struct proc *)) enodev, (int (*)(dev_t, struct uio *, int)) enodev, (int (*)(dev_t, struct uio *, int)) enodev, (int (*)(dev_t, u_long, caddr_t, int, struct proc *)) enodev, (int (*)(struct tty *, int)) enodev, 0, seltrue, (paddr_t (*)(dev_t, off_t, int)) enodev },
 { (int (*)(dev_t, int, int, struct proc *)) enodev, (int (*)(dev_t, int, int, struct proc *)) enodev, (int (*)(dev_t, struct uio *, int)) enodev, (int (*)(dev_t, struct uio *, int)) enodev, (int (*)(dev_t, u_long, caddr_t, int, struct proc *)) enodev, (int (*)(struct tty *, int)) enodev, 0, seltrue, (paddr_t (*)(dev_t, off_t, int)) enodev },
 { (int (*)(dev_t, int, int, struct proc *)) enodev, (int (*)(dev_t, int, int, struct proc *)) enodev, (int (*)(dev_t, struct uio *, int)) enodev, (int (*)(dev_t, struct uio *, int)) enodev, (int (*)(dev_t, u_long, caddr_t, int, struct proc *)) enodev, (int (*)(struct tty *, int)) enodev, 0, seltrue, (paddr_t (*)(dev_t, off_t, int)) enodev },
 { (int (*)(dev_t, int, int, struct proc *)) enodev, (int (*)(dev_t, int, int, struct proc *)) enodev, (int (*)(dev_t, struct uio *, int)) enodev, (int (*)(dev_t, struct uio *, int)) enodev, (int (*)(dev_t, u_long, caddr_t, int, struct proc *)) enodev, (int (*)(struct tty *, int)) enodev, 0, seltrue, (paddr_t (*)(dev_t, off_t, int)) enodev },
 { ((1) > 0 ? drmopen : (int (*)(dev_t, int, int, struct proc *)) enxio), ((1) > 0 ? drmclose : (int (*)(dev_t, int, int, struct proc *)) enxio), ((1) > 0 ? drmread : (int (*)(dev_t, struct uio *, int)) enxio), (int (*)(dev_t, struct uio *, int)) enodev, ((1) > 0 ? drmioctl : (int (*)(dev_t, u_long, caddr_t, int, struct proc *)) enxio), (int (*)(struct tty *, int)) enodev, 0, ((1) > 0 ? drmpoll : (int (*)(dev_t, int, struct proc *)) enxio), ((1) > 0 ? drmmmap : (paddr_t (*)(dev_t, off_t, int)) enxio), 0, 0x0001, ((1) > 0 ? drmkqfilter : (int (*)(dev_t, struct knote *)) enxio) },
 { (int (*)(dev_t, int, int, struct proc *)) enodev, (int (*)(dev_t, int, int, struct proc *)) enodev, (int (*)(dev_t, struct uio *, int)) enodev, (int (*)(dev_t, struct uio *, int)) enodev, (int (*)(dev_t, u_long, caddr_t, int, struct proc *)) enodev, (int (*)(struct tty *, int)) enodev, 0, seltrue, (paddr_t (*)(dev_t, off_t, int)) enodev },
 { (int (*)(dev_t, int, int, struct proc *)) enodev, (int (*)(dev_t, int, int, struct proc *)) enodev, (int (*)(dev_t, struct uio *, int)) enodev, (int (*)(dev_t, struct uio *, int)) enodev, (int (*)(dev_t, u_long, caddr_t, int, struct proc *)) enodev, (int (*)(struct tty *, int)) enodev, 0, seltrue, (paddr_t (*)(dev_t, off_t, int)) enodev },
 { ((1) > 0 ? usbopen : (int (*)(dev_t, int, int, struct proc *)) enxio), ((1) > 0 ? usbclose : (int (*)(dev_t, int, int, struct proc *)) enxio), (int (*)(dev_t, struct uio *, int)) enodev, (int (*)(dev_t, struct uio *, int)) enodev, ((1) > 0 ? usbioctl : (int (*)(dev_t, u_long, caddr_t, int, struct proc *)) enxio), (int (*)(struct tty *, int)) enodev, 0, selfalse, (paddr_t (*)(dev_t, off_t, int)) enodev },
 { ((1) > 0 ? uhidopen : (int (*)(dev_t, int, int, struct proc *)) enxio), ((1) > 0 ? uhidclose : (int (*)(dev_t, int, int, struct proc *)) enxio), ((1) > 0 ? uhidread : (int (*)(dev_t, struct uio *, int)) enxio), ((1) > 0 ? uhidwrite : (int (*)(dev_t, struct uio *, int)) enxio), ((1) > 0 ? uhidioctl : (int (*)(dev_t, u_long, caddr_t, int, struct proc *)) enxio), (int (*)(struct tty *, int)) enodev, 0, ((1) > 0 ? uhidpoll : (int (*)(dev_t, int, struct proc *)) enxio), (paddr_t (*)(dev_t, off_t, int)) enodev, 0, 0, ((1) > 0 ? uhidkqfilter : (int (*)(dev_t, struct knote *)) enxio) },
 { ((1) > 0 ? ugenopen : (int (*)(dev_t, int, int, struct proc *)) enxio), ((1) > 0 ? ugenclose : (int (*)(dev_t, int, int, struct proc *)) enxio), ((1) > 0 ? ugenread : (int (*)(dev_t, struct uio *, int)) enxio), ((1) > 0 ? ugenwrite : (int (*)(dev_t, struct uio *, int)) enxio), ((1) > 0 ? ugenioctl : (int (*)(dev_t, u_long, caddr_t, int, struct proc *)) enxio), (int (*)(struct tty *, int)) enodev, 0, ((1) > 0 ? ugenpoll : (int (*)(dev_t, int, struct proc *)) enxio), (paddr_t (*)(dev_t, off_t, int)) enodev, 0, 0, ((1) > 0 ? ugenkqfilter : (int (*)(dev_t, struct knote *)) enxio) },
 { ((1) > 0 ? ulptopen : (int (*)(dev_t, int, int, struct proc *)) enxio), ((1) > 0 ? ulptclose : (int (*)(dev_t, int, int, struct proc *)) enxio), (int (*)(dev_t, struct uio *, int)) enodev, ((1) > 0 ? ulptwrite : (int (*)(dev_t, struct uio *, int)) enxio), (int (*)(dev_t, u_long, caddr_t, int, struct proc *)) enodev, (int (*)(struct tty *, int)) enodev, 0, selfalse, (paddr_t (*)(dev_t, off_t, int)) enodev },
 { (int (*)(dev_t, int, int, struct proc *)) enodev, (int (*)(dev_t, int, int, struct proc *)) enodev, (int (*)(dev_t, struct uio *, int)) enodev, (int (*)(dev_t, struct uio *, int)) enodev, (int (*)(dev_t, u_long, caddr_t, int, struct proc *)) enodev, (int (*)(struct tty *, int)) enodev, 0, seltrue, (paddr_t (*)(dev_t, off_t, int)) enodev },
 { ((1) > 0 ? ucomopen : (int (*)(dev_t, int, int, struct proc *)) enxio), ((1) > 0 ? ucomclose : (int (*)(dev_t, int, int, struct proc *)) enxio), ((1) > 0 ? ucomread : (int (*)(dev_t, struct uio *, int)) enxio), ((1) > 0 ? ucomwrite : (int (*)(dev_t, struct uio *, int)) enxio), ((1) > 0 ? ucomioctl : (int (*)(dev_t, u_long, caddr_t, int, struct proc *)) enxio), ((1) > 0 ? ucomstop : (int (*)(struct tty *, int)) enxio), ((1) > 0 ? ucomtty : (struct tty *(*)(dev_t)) enxio), ttpoll, (paddr_t (*)(dev_t, off_t, int)) enodev, 2, 0, ttkqfilter },
 { (int (*)(dev_t, int, int, struct proc *)) enodev, (int (*)(dev_t, int, int, struct proc *)) enodev, (int (*)(dev_t, struct uio *, int)) enodev, (int (*)(dev_t, struct uio *, int)) enodev, (int (*)(dev_t, u_long, caddr_t, int, struct proc *)) enodev, (int (*)(struct tty *, int)) enodev, 0, seltrue, (paddr_t (*)(dev_t, off_t, int)) enodev },
 { (int (*)(dev_t, int, int, struct proc *)) enodev, (int (*)(dev_t, int, int, struct proc *)) enodev, (int (*)(dev_t, struct uio *, int)) enodev, (int (*)(dev_t, struct uio *, int)) enodev, (int (*)(dev_t, u_long, caddr_t, int, struct proc *)) enodev, (int (*)(struct tty *, int)) enodev, 0, seltrue, (paddr_t (*)(dev_t, off_t, int)) enodev },
 { (int (*)(dev_t, int, int, struct proc *)) enodev, (int (*)(dev_t, int, int, struct proc *)) enodev, (int (*)(dev_t, struct uio *, int)) enodev, (int (*)(dev_t, struct uio *, int)) enodev, (int (*)(dev_t, u_long, caddr_t, int, struct proc *)) enodev, (int (*)(struct tty *, int)) enodev, 0, seltrue, (paddr_t (*)(dev_t, off_t, int)) enodev },
 { (int (*)(dev_t, int, int, struct proc *)) enodev, (int (*)(dev_t, int, int, struct proc *)) enodev, (int (*)(dev_t, struct uio *, int)) enodev, (int (*)(dev_t, struct uio *, int)) enodev, (int (*)(dev_t, u_long, caddr_t, int, struct proc *)) enodev, (int (*)(struct tty *, int)) enodev, 0, seltrue, (paddr_t (*)(dev_t, off_t, int)) enodev },
 { (int (*)(dev_t, int, int, struct proc *)) enodev, (int (*)(dev_t, int, int, struct proc *)) enodev, (int (*)(dev_t, struct uio *, int)) enodev, (int (*)(dev_t, struct uio *, int)) enodev, (int (*)(dev_t, u_long, caddr_t, int, struct proc *)) enodev, (int (*)(struct tty *, int)) enodev, 0, seltrue, (paddr_t (*)(dev_t, off_t, int)) enodev },
 { (int (*)(dev_t, int, int, struct proc *)) enodev, (int (*)(dev_t, int, int, struct proc *)) enodev, (int (*)(dev_t, struct uio *, int)) enodev, (int (*)(dev_t, struct uio *, int)) enodev, (int (*)(dev_t, u_long, caddr_t, int, struct proc *)) enodev, (int (*)(struct tty *, int)) enodev, 0, seltrue, (paddr_t (*)(dev_t, off_t, int)) enodev },
 { (int (*)(dev_t, int, int, struct proc *)) enodev, (int (*)(dev_t, int, int, struct proc *)) enodev, (int (*)(dev_t, struct uio *, int)) enodev, (int (*)(dev_t, struct uio *, int)) enodev, (int (*)(dev_t, u_long, caddr_t, int, struct proc *)) enodev, (int (*)(struct tty *, int)) enodev, 0, seltrue, (paddr_t (*)(dev_t, off_t, int)) enodev },
 { (int (*)(dev_t, int, int, struct proc *)) enodev, (int (*)(dev_t, int, int, struct proc *)) enodev, (int (*)(dev_t, struct uio *, int)) enodev, (int (*)(dev_t, struct uio *, int)) enodev, (int (*)(dev_t, u_long, caddr_t, int, struct proc *)) enodev, (int (*)(struct tty *, int)) enodev, 0, seltrue, (paddr_t (*)(dev_t, off_t, int)) enodev },
 { (int (*)(dev_t, int, int, struct proc *)) enodev, (int (*)(dev_t, int, int, struct proc *)) enodev, (int (*)(dev_t, struct uio *, int)) enodev, (int (*)(dev_t, struct uio *, int)) enodev, (int (*)(dev_t, u_long, caddr_t, int, struct proc *)) enodev, (int (*)(struct tty *, int)) enodev, 0, seltrue, (paddr_t (*)(dev_t, off_t, int)) enodev },
 { ((1) > 0 ? bpfopen : (int (*)(dev_t, int, int, struct proc *)) enxio), ((1) > 0 ? bpfclose : (int (*)(dev_t, int, int, struct proc *)) enxio), ((1) > 0 ? bpfread : (int (*)(dev_t, struct uio *, int)) enxio), ((1) > 0 ? bpfwrite : (int (*)(dev_t, struct uio *, int)) enxio), ((1) > 0 ? bpfioctl : (int (*)(dev_t, u_long, caddr_t, int, struct proc *)) enxio), (int (*)(struct tty *, int)) enodev, 0, ((1) > 0 ? bpfpoll : (int (*)(dev_t, int, struct proc *)) enxio), (paddr_t (*)(dev_t, off_t, int)) enodev, 0, 0x0001, ((1) > 0 ? bpfkqfilter : (int (*)(dev_t, struct knote *)) enxio) },
 { (int (*)(dev_t, int, int, struct proc *)) enodev, (int (*)(dev_t, int, int, struct proc *)) enodev, (int (*)(dev_t, struct uio *, int)) enodev, (int (*)(dev_t, struct uio *, int)) enodev, (int (*)(dev_t, u_long, caddr_t, int, struct proc *)) enodev, (int (*)(struct tty *, int)) enodev, 0, seltrue, (paddr_t (*)(dev_t, off_t, int)) enodev },
 { ((1) > 0 ? bppopen : (int (*)(dev_t, int, int, struct proc *)) enxio), ((1) > 0 ? bppclose : (int (*)(dev_t, int, int, struct proc *)) enxio), (int (*)(dev_t, struct uio *, int)) enodev, ((1) > 0 ? bppwrite : (int (*)(dev_t, struct uio *, int)) enxio), ((1) > 0 ? bppioctl : (int (*)(dev_t, u_long, caddr_t, int, struct proc *)) enxio), (int (*)(struct tty *, int)) nullop, 0, seltrue, (paddr_t (*)(dev_t, off_t, int)) enodev },
 { ((1) > 0 ? sttyopen : (int (*)(dev_t, int, int, struct proc *)) enxio), ((1) > 0 ? sttyclose : (int (*)(dev_t, int, int, struct proc *)) enxio), ((1) > 0 ? sttyread : (int (*)(dev_t, struct uio *, int)) enxio), ((1) > 0 ? sttywrite : (int (*)(dev_t, struct uio *, int)) enxio), ((1) > 0 ? sttyioctl : (int (*)(dev_t, u_long, caddr_t, int, struct proc *)) enxio), ((1) > 0 ? sttystop : (int (*)(struct tty *, int)) enxio), ((1) > 0 ? sttytty : (struct tty *(*)(dev_t)) enxio), ttpoll, (paddr_t (*)(dev_t, off_t, int)) enodev, 2, 0, ttkqfilter },
 { ((1) > 0 ? sbppopen : (int (*)(dev_t, int, int, struct proc *)) enxio), ((1) > 0 ? sbppclose : (int (*)(dev_t, int, int, struct proc *)) enxio), ((1) > 0 ? sbppread : (int (*)(dev_t, struct uio *, int)) enxio), ((1) > 0 ? sbppwrite : (int (*)(dev_t, struct uio *, int)) enxio), ((1) > 0 ? sbppioctl : (int (*)(dev_t, u_long, caddr_t, int, struct proc *)) enxio), (int (*)(struct tty *, int)) nullop, 0, ((1) > 0 ? sbpppoll : (int (*)(dev_t, int, struct proc *)) enxio), (paddr_t (*)(dev_t, off_t, int)) enodev },
 { ((1) > 0 ? vndopen : (int (*)(dev_t, int, int, struct proc *)) enxio), ((1) > 0 ? vndclose : (int (*)(dev_t, int, int, struct proc *)) enxio), ((1) > 0 ? vndread : (int (*)(dev_t, struct uio *, int)) enxio), ((1) > 0 ? vndwrite : (int (*)(dev_t, struct uio *, int)) enxio), ((1) > 0 ? vndioctl : (int (*)(dev_t, u_long, caddr_t, int, struct proc *)) enxio), (int (*)(struct tty *, int)) enodev, 0, seltrue, (paddr_t (*)(dev_t, off_t, int)) enodev, 1, 0, seltrue_kqfilter },
 { ((1) > 0 ? tunopen : (int (*)(dev_t, int, int, struct proc *)) enxio), ((1) > 0 ? tunclose : (int (*)(dev_t, int, int, struct proc *)) enxio), ((1) > 0 ? tunread : (int (*)(dev_t, struct uio *, int)) enxio), ((1) > 0 ? tunwrite : (int (*)(dev_t, struct uio *, int)) enxio), ((1) > 0 ? tunioctl : (int (*)(dev_t, u_long, caddr_t, int, struct proc *)) enxio), (int (*)(struct tty *, int)) enodev, 0, ((1) > 0 ? tunpoll : (int (*)(dev_t, int, struct proc *)) enxio), (paddr_t (*)(dev_t, off_t, int)) enodev, 0, 0, ((1) > 0 ? tunkqfilter : (int (*)(dev_t, struct knote *)) enxio) },
 { (int (*)(dev_t, int, int, struct proc *)) enodev, (int (*)(dev_t, int, int, struct proc *)) enodev, (int (*)(dev_t, struct uio *, int)) enodev, (int (*)(dev_t, struct uio *, int)) enodev, (int (*)(dev_t, u_long, caddr_t, int, struct proc *)) enodev, (int (*)(struct tty *, int)) enodev, 0, seltrue, (paddr_t (*)(dev_t, off_t, int)) enodev },
 { (int (*)(dev_t, int, int, struct proc *)) enodev, (int (*)(dev_t, int, int, struct proc *)) enodev, (int (*)(dev_t, struct uio *, int)) enodev, (int (*)(dev_t, struct uio *, int)) enodev, (int (*)(dev_t, u_long, caddr_t, int, struct proc *)) enodev, (int (*)(struct tty *, int)) enodev, 0, seltrue, (paddr_t (*)(dev_t, off_t, int)) enodev },
 { (int (*)(dev_t, int, int, struct proc *)) enodev, (int (*)(dev_t, int, int, struct proc *)) enodev, (int (*)(dev_t, struct uio *, int)) enodev, (int (*)(dev_t, struct uio *, int)) enodev, (int (*)(dev_t, u_long, caddr_t, int, struct proc *)) enodev, (int (*)(struct tty *, int)) enodev, 0, seltrue, (paddr_t (*)(dev_t, off_t, int)) enodev },
 { (int (*)(dev_t, int, int, struct proc *)) enodev, (int (*)(dev_t, int, int, struct proc *)) enodev, (int (*)(dev_t, struct uio *, int)) enodev, (int (*)(dev_t, struct uio *, int)) enodev, (int (*)(dev_t, u_long, caddr_t, int, struct proc *)) enodev, (int (*)(struct tty *, int)) enodev, 0, seltrue, (paddr_t (*)(dev_t, off_t, int)) enodev },
 { (int (*)(dev_t, int, int, struct proc *)) enodev, (int (*)(dev_t, int, int, struct proc *)) enodev, (int (*)(dev_t, struct uio *, int)) enodev, (int (*)(dev_t, struct uio *, int)) enodev, (int (*)(dev_t, u_long, caddr_t, int, struct proc *)) enodev, (int (*)(struct tty *, int)) enodev, 0, seltrue, (paddr_t (*)(dev_t, off_t, int)) enodev },
 { (int (*)(dev_t, int, int, struct proc *)) enodev, (int (*)(dev_t, int, int, struct proc *)) enodev, (int (*)(dev_t, struct uio *, int)) enodev, (int (*)(dev_t, struct uio *, int)) enodev, (int (*)(dev_t, u_long, caddr_t, int, struct proc *)) enodev, (int (*)(struct tty *, int)) enodev, 0, seltrue, (paddr_t (*)(dev_t, off_t, int)) enodev },
 { (int (*)(dev_t, int, int, struct proc *)) enodev, (int (*)(dev_t, int, int, struct proc *)) enodev, (int (*)(dev_t, struct uio *, int)) enodev, (int (*)(dev_t, struct uio *, int)) enodev, (int (*)(dev_t, u_long, caddr_t, int, struct proc *)) enodev, (int (*)(struct tty *, int)) enodev, 0, seltrue, (paddr_t (*)(dev_t, off_t, int)) enodev },
 { ((1) > 0 ? randomopen : (int (*)(dev_t, int, int, struct proc *)) enxio), ((1) > 0 ? randomclose : (int (*)(dev_t, int, int, struct proc *)) enxio), ((1) > 0 ? randomread : (int (*)(dev_t, struct uio *, int)) enxio), ((1) > 0 ? randomwrite : (int (*)(dev_t, struct uio *, int)) enxio), ((1) > 0 ? randomioctl : (int (*)(dev_t, u_long, caddr_t, int, struct proc *)) enxio), (int (*)(struct tty *, int)) enodev, 0, seltrue, (paddr_t (*)(dev_t, off_t, int)) enodev, 0, 0, ((1) > 0 ? randomkqfilter : (int (*)(dev_t, struct knote *)) enxio) },
 { ((1) > 0 ? bioopen : (int (*)(dev_t, int, int, struct proc *)) enxio), ((1) > 0 ? bioclose : (int (*)(dev_t, int, int, struct proc *)) enxio), (int (*)(dev_t, struct uio *, int)) enodev, (int (*)(dev_t, struct uio *, int)) enodev, ((1) > 0 ? bioioctl : (int (*)(dev_t, u_long, caddr_t, int, struct proc *)) enxio), (int (*)(struct tty *, int)) enodev, 0, selfalse, (paddr_t (*)(dev_t, off_t, int)) enodev },
 { (int (*)(dev_t, int, int, struct proc *)) enodev, (int (*)(dev_t, int, int, struct proc *)) enodev, (int (*)(dev_t, struct uio *, int)) enodev, (int (*)(dev_t, struct uio *, int)) enodev, (int (*)(dev_t, u_long, caddr_t, int, struct proc *)) enodev, (int (*)(struct tty *, int)) enodev, 0, seltrue, (paddr_t (*)(dev_t, off_t, int)) enodev },
 { ((1) > 0 ? pconsopen : (int (*)(dev_t, int, int, struct proc *)) enxio), ((1) > 0 ? pconsclose : (int (*)(dev_t, int, int, struct proc *)) enxio), ((1) > 0 ? pconsread : (int (*)(dev_t, struct uio *, int)) enxio), ((1) > 0 ? pconswrite : (int (*)(dev_t, struct uio *, int)) enxio), ((1) > 0 ? pconsioctl : (int (*)(dev_t, u_long, caddr_t, int, struct proc *)) enxio), ((1) > 0 ? pconsstop : (int (*)(struct tty *, int)) enxio), ((1) > 0 ? pconstty : (struct tty *(*)(dev_t)) enxio), ttpoll, (paddr_t (*)(dev_t, off_t, int)) enodev, 2, 0, ttkqfilter },
 { ((16) > 0 ? ptmopen : (int (*)(dev_t, int, int, struct proc *)) enxio), ((16) > 0 ? ptmclose : (int (*)(dev_t, int, int, struct proc *)) enxio), (int (*)(dev_t, struct uio *, int)) enodev, (int (*)(dev_t, struct uio *, int)) enodev, ((16) > 0 ? ptmioctl : (int (*)(dev_t, u_long, caddr_t, int, struct proc *)) enxio), (int (*)(struct tty *, int)) enodev, 0, selfalse, (paddr_t (*)(dev_t, off_t, int)) enodev },
 { ((1) > 0 ? hotplugopen : (int (*)(dev_t, int, int, struct proc *)) enxio), ((1) > 0 ? hotplugclose : (int (*)(dev_t, int, int, struct proc *)) enxio), ((1) > 0 ? hotplugread : (int (*)(dev_t, struct uio *, int)) enxio), (int (*)(dev_t, struct uio *, int)) enodev, ((1) > 0 ? hotplugioctl : (int (*)(dev_t, u_long, caddr_t, int, struct proc *)) enxio), (int (*)(struct tty *, int)) enodev, 0, ((1) > 0 ? hotplugpoll : (int (*)(dev_t, int, struct proc *)) enxio), (paddr_t (*)(dev_t, off_t, int)) enodev, 0, 0, ((1) > 0 ? hotplugkqfilter : (int (*)(dev_t, struct knote *)) enxio) },
 { ((1) > 0 ? vconsopen : (int (*)(dev_t, int, int, struct proc *)) enxio), ((1) > 0 ? vconsclose : (int (*)(dev_t, int, int, struct proc *)) enxio), ((1) > 0 ? vconsread : (int (*)(dev_t, struct uio *, int)) enxio), ((1) > 0 ? vconswrite : (int (*)(dev_t, struct uio *, int)) enxio), ((1) > 0 ? vconsioctl : (int (*)(dev_t, u_long, caddr_t, int, struct proc *)) enxio), ((1) > 0 ? vconsstop : (int (*)(struct tty *, int)) enxio), ((1) > 0 ? vconstty : (struct tty *(*)(dev_t)) enxio), ttpoll, (paddr_t (*)(dev_t, off_t, int)) enodev, 2, 0, ttkqfilter },
 { ((1) > 0 ? sbbcopen : (int (*)(dev_t, int, int, struct proc *)) enxio), ((1) > 0 ? sbbcclose : (int (*)(dev_t, int, int, struct proc *)) enxio), ((1) > 0 ? sbbcread : (int (*)(dev_t, struct uio *, int)) enxio), ((1) > 0 ? sbbcwrite : (int (*)(dev_t, struct uio *, int)) enxio), ((1) > 0 ? sbbcioctl : (int (*)(dev_t, u_long, caddr_t, int, struct proc *)) enxio), ((1) > 0 ? sbbcstop : (int (*)(struct tty *, int)) enxio), ((1) > 0 ? sbbctty : (struct tty *(*)(dev_t)) enxio), ttpoll, (paddr_t (*)(dev_t, off_t, int)) enodev, 2, 0, ttkqfilter },
 { ((1) > 0 ? vccttyopen : (int (*)(dev_t, int, int, struct proc *)) enxio), ((1) > 0 ? vccttyclose : (int (*)(dev_t, int, int, struct proc *)) enxio), ((1) > 0 ? vccttyread : (int (*)(dev_t, struct uio *, int)) enxio), ((1) > 0 ? vccttywrite : (int (*)(dev_t, struct uio *, int)) enxio), ((1) > 0 ? vccttyioctl : (int (*)(dev_t, u_long, caddr_t, int, struct proc *)) enxio), ((1) > 0 ? vccttystop : (int (*)(struct tty *, int)) enxio), ((1) > 0 ? vccttytty : (struct tty *(*)(dev_t)) enxio), ttpoll, (paddr_t (*)(dev_t, off_t, int)) enodev, 2, 0, ttkqfilter },
 { ((1) > 0 ? vscsiopen : (int (*)(dev_t, int, int, struct proc *)) enxio), ((1) > 0 ? vscsiclose : (int (*)(dev_t, int, int, struct proc *)) enxio), (int (*)(dev_t, struct uio *, int)) enodev, (int (*)(dev_t, struct uio *, int)) enodev, ((1) > 0 ? vscsiioctl : (int (*)(dev_t, u_long, caddr_t, int, struct proc *)) enxio), (int (*)(struct tty *, int)) enodev, 0, ((1) > 0 ? vscsipoll : (int (*)(dev_t, int, struct proc *)) enxio), (paddr_t (*)(dev_t, off_t, int)) enodev, 0, 0, ((1) > 0 ? vscsikqfilter : (int (*)(dev_t, struct knote *)) enxio) },
 { (int (*)(dev_t, int, int, struct proc *)) enodev, (int (*)(dev_t, int, int, struct proc *)) enodev, (int (*)(dev_t, struct uio *, int)) enodev, (int (*)(dev_t, struct uio *, int)) enodev, (int (*)(dev_t, u_long, caddr_t, int, struct proc *)) enodev, (int (*)(struct tty *, int)) enodev, 0, seltrue, (paddr_t (*)(dev_t, off_t, int)) enodev },
 { ((1) > 0 ? diskmapopen : (int (*)(dev_t, int, int, struct proc *)) enxio), ((1) > 0 ? diskmapclose : (int (*)(dev_t, int, int, struct proc *)) enxio), ((1) > 0 ? diskmapread : (int (*)(dev_t, struct uio *, int)) enxio), ((1) > 0 ? diskmapwrite : (int (*)(dev_t, struct uio *, int)) enxio), ((1) > 0 ? diskmapioctl : (int (*)(dev_t, u_long, caddr_t, int, struct proc *)) enxio), (int (*)(struct tty *, int)) enodev, 0, seltrue, (paddr_t (*)(dev_t, off_t, int)) enodev, 1, 0, seltrue_kqfilter },
 { ((1) > 0 ? pppxopen : (int (*)(dev_t, int, int, struct proc *)) enxio), ((1) > 0 ? pppxclose : (int (*)(dev_t, int, int, struct proc *)) enxio), ((1) > 0 ? pppxread : (int (*)(dev_t, struct uio *, int)) enxio), ((1) > 0 ? pppxwrite : (int (*)(dev_t, struct uio *, int)) enxio), ((1) > 0 ? pppxioctl : (int (*)(dev_t, u_long, caddr_t, int, struct proc *)) enxio), (int (*)(struct tty *, int)) enodev, 0, ((1) > 0 ? pppxpoll : (int (*)(dev_t, int, struct proc *)) enxio), (paddr_t (*)(dev_t, off_t, int)) enodev, 0, 0, ((1) > 0 ? pppxkqfilter : (int (*)(dev_t, struct knote *)) enxio) },
 { ((1) > 0 ? vldcpopen : (int (*)(dev_t, int, int, struct proc *)) enxio), ((1) > 0 ? vldcpclose : (int (*)(dev_t, int, int, struct proc *)) enxio), ((1) > 0 ? vldcpread : (int (*)(dev_t, struct uio *, int)) enxio), ((1) > 0 ? vldcpwrite : (int (*)(dev_t, struct uio *, int)) enxio), ((1) > 0 ? vldcpioctl : (int (*)(dev_t, u_long, caddr_t, int, struct proc *)) enxio), (int (*)(struct tty *, int)) nullop, 0, ((1) > 0 ? vldcppoll : (int (*)(dev_t, int, struct proc *)) enxio), (paddr_t (*)(dev_t, off_t, int)) enodev },
 { ((1) > 0 ? vdspopen : (int (*)(dev_t, int, int, struct proc *)) enxio), ((1) > 0 ? vdspclose : (int (*)(dev_t, int, int, struct proc *)) enxio), (int (*)(dev_t, struct uio *, int)) enodev, (int (*)(dev_t, struct uio *, int)) enodev, ((1) > 0 ? vdspioctl : (int (*)(dev_t, u_long, caddr_t, int, struct proc *)) enxio), (int (*)(struct tty *, int)) nullop, 0, selfalse, (paddr_t (*)(dev_t, off_t, int)) enodev },
 { ((1) > 0 ? fuseopen : (int (*)(dev_t, int, int, struct proc *)) enxio), ((1) > 0 ? fuseclose : (int (*)(dev_t, int, int, struct proc *)) enxio), ((1) > 0 ? fuseread : (int (*)(dev_t, struct uio *, int)) enxio), ((1) > 0 ? fusewrite : (int (*)(dev_t, struct uio *, int)) enxio), ((1) > 0 ? fuseioctl : (int (*)(dev_t, u_long, caddr_t, int, struct proc *)) enxio), (int (*)(struct tty *, int)) enodev, 0, ((1) > 0 ? fusepoll : (int (*)(dev_t, int, struct proc *)) enxio), (paddr_t (*)(dev_t, off_t, int)) enodev, 0, 0x0001, ((1) > 0 ? fusekqfilter : (int (*)(dev_t, struct knote *)) enxio) },
 { ((1) > 0 ? tapopen : (int (*)(dev_t, int, int, struct proc *)) enxio), ((1) > 0 ? tapclose : (int (*)(dev_t, int, int, struct proc *)) enxio), ((1) > 0 ? tapread : (int (*)(dev_t, struct uio *, int)) enxio), ((1) > 0 ? tapwrite : (int (*)(dev_t, struct uio *, int)) enxio), ((1) > 0 ? tapioctl : (int (*)(dev_t, u_long, caddr_t, int, struct proc *)) enxio), (int (*)(struct tty *, int)) enodev, 0, ((1) > 0 ? tappoll : (int (*)(dev_t, int, struct proc *)) enxio), (paddr_t (*)(dev_t, off_t, int)) enodev, 0, 0, ((1) > 0 ? tapkqfilter : (int (*)(dev_t, struct knote *)) enxio) },
 { ((1) > 0 ? switchopen : (int (*)(dev_t, int, int, struct proc *)) enxio), ((1) > 0 ? switchclose : (int (*)(dev_t, int, int, struct proc *)) enxio), ((1) > 0 ? switchread : (int (*)(dev_t, struct uio *, int)) enxio), ((1) > 0 ? switchwrite : (int (*)(dev_t, struct uio *, int)) enxio), ((1) > 0 ? switchioctl : (int (*)(dev_t, u_long, caddr_t, int, struct proc *)) enxio), (int (*)(struct tty *, int)) enodev, 0, ((1) > 0 ? switchpoll : (int (*)(dev_t, int, struct proc *)) enxio), (paddr_t (*)(dev_t, off_t, int)) enodev, 0, 0, ((1) > 0 ? switchkqfilter : (int (*)(dev_t, struct knote *)) enxio) },
};
int nchrdev = (sizeof((cdevsw)) / sizeof((cdevsw)[0]));
int mem_no = 3;
dev_t swapdev = ((dev_t)((((4) & 0xff) << 8) | ((0) & 0xff) | (((0) & 0xffff00) << 8)));
int
iskmemdev(dev)
 dev_t dev;
{
 return (((int32_t)(((u_int32_t)(dev) >> 8) & 0xff)) == mem_no && ((int32_t)((dev) & 0xff) | (((dev) & 0xffff0000) >> 8)) < 2);
}
int
iszerodev(dev)
 dev_t dev;
{
 return (((int32_t)(((u_int32_t)(dev) >> 8) & 0xff)) == mem_no && ((int32_t)((dev) & 0xff) | (((dev) & 0xffff0000) >> 8)) == 12);
}
dev_t
getnulldev(void)
{
 return ((dev_t)((((mem_no) & 0xff) << 8) | ((2) & 0xff) | (((2) & 0xffff00) << 8)));
}
int chrtoblktbl[] = {
          (dev_t)(-1),
          (dev_t)(-1),
          (dev_t)(-1),
          (dev_t)(-1),
          (dev_t)(-1),
          (dev_t)(-1),
          (dev_t)(-1),
          (dev_t)(-1),
          (dev_t)(-1),
          (dev_t)(-1),
          (dev_t)(-1),
          (dev_t)(-1),
          (dev_t)(-1),
          (dev_t)(-1),
          (dev_t)(-1),
          (dev_t)(-1),
          (dev_t)(-1),
          7,
          (dev_t)(-1),
          (dev_t)(-1),
          (dev_t)(-1),
          (dev_t)(-1),
          (dev_t)(-1),
          (dev_t)(-1),
          (dev_t)(-1),
          (dev_t)(-1),
          12,
          (dev_t)(-1),
          (dev_t)(-1),
          (dev_t)(-1),
          (dev_t)(-1),
          (dev_t)(-1),
          (dev_t)(-1),
          (dev_t)(-1),
          (dev_t)(-1),
          (dev_t)(-1),
          (dev_t)(-1),
          (dev_t)(-1),
          (dev_t)(-1),
          (dev_t)(-1),
          (dev_t)(-1),
          (dev_t)(-1),
          (dev_t)(-1),
          (dev_t)(-1),
          (dev_t)(-1),
          (dev_t)(-1),
          (dev_t)(-1),
          (dev_t)(-1),
          (dev_t)(-1),
          (dev_t)(-1),
          (dev_t)(-1),
          (dev_t)(-1),
          (dev_t)(-1),
          (dev_t)(-1),
          16,
          (dev_t)(-1),
          (dev_t)(-1),
          (dev_t)(-1),
          18,
          (dev_t)(-1),
          (dev_t)(-1),
          5,
          (dev_t)(-1),
          (dev_t)(-1),
          (dev_t)(-1),
          (dev_t)(-1),
          (dev_t)(-1),
          (dev_t)(-1),
          (dev_t)(-1),
          (dev_t)(-1),
          (dev_t)(-1),
          (dev_t)(-1),
          (dev_t)(-1),
          (dev_t)(-1),
          (dev_t)(-1),
          (dev_t)(-1),
          (dev_t)(-1),
          (dev_t)(-1),
          (dev_t)(-1),
          (dev_t)(-1),
          (dev_t)(-1),
          (dev_t)(-1),
          (dev_t)(-1),
          (dev_t)(-1),
          (dev_t)(-1),
          (dev_t)(-1),
          (dev_t)(-1),
          (dev_t)(-1),
          (dev_t)(-1),
          (dev_t)(-1),
          (dev_t)(-1),
          (dev_t)(-1),
          (dev_t)(-1),
          (dev_t)(-1),
          (dev_t)(-1),
          (dev_t)(-1),
          (dev_t)(-1),
          (dev_t)(-1),
          (dev_t)(-1),
          (dev_t)(-1),
          (dev_t)(-1),
          (dev_t)(-1),
          (dev_t)(-1),
          (dev_t)(-1),
          (dev_t)(-1),
          (dev_t)(-1),
          (dev_t)(-1),
          (dev_t)(-1),
          (dev_t)(-1),
          (dev_t)(-1),
          8,
};
int nchrtoblktbl = (sizeof((chrtoblktbl)) / sizeof((chrtoblktbl)[0]));
