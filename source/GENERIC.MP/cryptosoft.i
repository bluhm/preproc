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
void random_start(void);
void enqueue_randomness(unsigned int);
void suspend_randomness(void);
void resume_randomness(char *, size_t);
typedef struct MD5Context {
 u_int32_t state[4];
 u_int64_t count;
 u_int8_t buffer[64];
} MD5_CTX;

void MD5Init(MD5_CTX *);
void MD5Update(MD5_CTX *, const void *, size_t)
  __attribute__((__bounded__(__string__,2,3)));
void MD5Final(u_int8_t [16], MD5_CTX *)
  __attribute__((__bounded__(__minbytes__,1,16)));
void MD5Transform(u_int32_t [4], const u_int8_t [64])
  __attribute__((__bounded__(__minbytes__,1,4)))
  __attribute__((__bounded__(__minbytes__,2,64)));

typedef struct {
 u_int32_t state[5];
 u_int64_t count;
 unsigned char buffer[64];
} SHA1_CTX;
void SHA1Init(SHA1_CTX * context);
void SHA1Transform(u_int32_t state[5], const unsigned char buffer[64]);
void SHA1Update(SHA1_CTX *context, const void *data, unsigned int len);
void SHA1Final(unsigned char digest[20], SHA1_CTX *context);
typedef struct RMD160Context {
 u_int32_t state[5];
 u_int64_t count;
 u_char buffer[64];
} RMD160_CTX;

void RMD160Init(RMD160_CTX *);
void RMD160Transform(u_int32_t [5], const u_char [64])
      __attribute__((__bounded__(__minbytes__,1,5)))
      __attribute__((__bounded__(__minbytes__,2,64)));
void RMD160Update(RMD160_CTX *, const u_char *, u_int32_t)
      __attribute__((__bounded__(__string__,2,3)));
void RMD160Final(u_char [20], RMD160_CTX *)
      __attribute__((__bounded__(__minbytes__,1,20)));

typedef struct {
 u_int32_t xkey[32];
 int rounds;
} cast_key;
void cast_setkey(cast_key * key, u_int8_t * rawkey, int keybytes);
void cast_encrypt(cast_key * key, u_int8_t * inblock, u_int8_t * outblock);
void cast_decrypt(cast_key * key, u_int8_t * inblock, u_int8_t * outblock);
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
struct cryptoini {
 int cri_alg;
 int cri_klen;
 int cri_rnd;
 caddr_t cri_key;
 union {
  u_int8_t iv[64];
  u_int8_t esn[4];
 } u;
 struct cryptoini *cri_next;
};
struct cryptodesc {
 int crd_skip;
 int crd_len;
 int crd_inject;
 int crd_flags;
 struct cryptoini CRD_INI;
};
struct cryptop {
 struct task crp_task;
 u_int64_t crp_sid;
 int crp_ilen;
 int crp_olen;
 int crp_alloctype;
 int crp_etype;
 int crp_flags;
 void *crp_buf;
 void *crp_opaque;
 struct cryptodesc *crp_desc;
 struct cryptodesc crp_sdesc[2];
 int crp_ndesc;
 int crp_ndescalloc;
 void (*crp_callback)(struct cryptop *);
 caddr_t crp_mac;
};
struct cryptocap {
 u_int64_t cc_operations;
 u_int64_t cc_bytes;
 u_int64_t cc_koperations;
 u_int32_t cc_sessions;
 int cc_alg[23 + 1];
 int cc_queued;
 u_int8_t cc_flags;
 int (*cc_newsession) (u_int32_t *, struct cryptoini *);
 int (*cc_process) (struct cryptop *);
 int (*cc_freesession) (u_int64_t);
};
int crypto_newsession(u_int64_t *, struct cryptoini *, int);
int crypto_freesession(u_int64_t);
int crypto_dispatch(struct cryptop *);
int crypto_register(u_int32_t, int *,
     int (*)(u_int32_t *, struct cryptoini *), int (*)(u_int64_t),
     int (*)(struct cryptop *));
int crypto_unregister(u_int32_t, int);
int32_t crypto_get_driverid(u_int8_t);
int crypto_invoke(struct cryptop *);
void crypto_done(struct cryptop *);
void cuio_copydata(struct uio *, int, int, caddr_t);
void cuio_copyback(struct uio *, int, int, const void *);
int cuio_getptr(struct uio *, int, int *);
int cuio_apply(struct uio *, int, int,
     int (*f)(caddr_t, caddr_t, unsigned int), caddr_t);
struct cryptop *crypto_getreq(int);
void crypto_freereq(struct cryptop *);
struct swcr_data {
 int sw_alg;
 union {
  struct {
   u_int8_t *SW_ictx;
   u_int8_t *SW_octx;
   u_int32_t SW_klen;
   struct auth_hash *SW_axf;
  } SWCR_AUTH;
  struct {
   u_int8_t *SW_kschedule;
   struct enc_xform *SW_exf;
  } SWCR_ENC;
  struct {
   u_int32_t SW_size;
   struct comp_algo *SW_cxf;
  } SWCR_COMP;
 } SWCR_UN;
 struct swcr_data *sw_next;
};
extern const u_int8_t hmac_ipad_buffer[128];
extern const u_int8_t hmac_opad_buffer[128];
int swcr_encdec(struct cryptodesc *, struct swcr_data *, caddr_t, int);
int swcr_authcompute(struct cryptop *, struct cryptodesc *, struct swcr_data *,
 caddr_t, int);
int swcr_authenc(struct cryptop *);
int swcr_compdec(struct cryptodesc *, struct swcr_data *, caddr_t, int);
int swcr_process(struct cryptop *);
int swcr_newsession(u_int32_t *, struct cryptoini *);
int swcr_freesession(u_int64_t);
void swcr_init(void);
typedef struct _SHA2_CTX {
 union {
  u_int32_t st32[8];
  u_int64_t st64[8];
 } state;
 u_int64_t bitcount[2];
 u_int8_t buffer[128];
} SHA2_CTX;

void SHA256Init(SHA2_CTX *);
void SHA256Update(SHA2_CTX *, const void *, size_t)
 __attribute__((__bounded__(__string__,2,3)));
void SHA256Final(u_int8_t[32], SHA2_CTX *)
 __attribute__((__bounded__(__minbytes__,1,32)));
void SHA384Init(SHA2_CTX *);
void SHA384Update(SHA2_CTX *, const void *, size_t)
 __attribute__((__bounded__(__string__,2,3)));
void SHA384Final(u_int8_t[48], SHA2_CTX *)
 __attribute__((__bounded__(__minbytes__,1,48)));
void SHA512Init(SHA2_CTX *);
void SHA512Update(SHA2_CTX *, const void *, size_t)
 __attribute__((__bounded__(__string__,2,3)));
void SHA512Final(u_int8_t[64], SHA2_CTX *)
 __attribute__((__bounded__(__minbytes__,1,64)));

typedef struct aes_ctx {
 uint32_t sk[60];
 uint32_t sk_exp[120];
 unsigned num_rounds;
} AES_CTX;
int AES_Setkey(AES_CTX *, const uint8_t *, int);
void AES_Encrypt(AES_CTX *, const uint8_t *, uint8_t *);
void AES_Decrypt(AES_CTX *, const uint8_t *, uint8_t *);
void AES_Encrypt_ECB(AES_CTX *, const uint8_t *, uint8_t *, size_t);
void AES_Decrypt_ECB(AES_CTX *, const uint8_t *, uint8_t *, size_t);
int AES_KeySetup_Encrypt(uint32_t *, const uint8_t *, int);
int AES_KeySetup_Decrypt(uint32_t *, const uint8_t *, int);
typedef struct _GHASH_CTX {
 uint8_t H[16];
 uint8_t S[16];
 uint8_t Z[16];
} GHASH_CTX;
typedef struct _AES_GMAC_CTX {
 GHASH_CTX ghash;
 AES_CTX K;
 uint8_t J[16];
} AES_GMAC_CTX;

extern void (*ghash_update)(GHASH_CTX *, uint8_t *, size_t);
void AES_GMAC_Init(void *);
void AES_GMAC_Setkey(void *, const uint8_t *, uint16_t);
void AES_GMAC_Reinit(void *, const uint8_t *, uint16_t);
int AES_GMAC_Update(void *, const uint8_t *, uint16_t);
void AES_GMAC_Final(uint8_t [16], void *);

struct auth_hash {
 int type;
 char *name;
 u_int16_t keysize;
 u_int16_t hashsize;
 u_int16_t authsize;
 u_int16_t ctxsize;
 u_int16_t blocksize;
 void (*Init) (void *);
 void (*Setkey) (void *, const u_int8_t *, u_int16_t);
 void (*Reinit) (void *, const u_int8_t *, u_int16_t);
 int (*Update) (void *, const u_int8_t *, u_int16_t);
 void (*Final) (u_int8_t *, void *);
};
struct enc_xform {
 int type;
 char *name;
 u_int16_t blocksize;
 u_int16_t ivsize;
 u_int16_t minkey;
 u_int16_t maxkey;
 u_int16_t ctxsize;
 void (*encrypt) (caddr_t, u_int8_t *);
 void (*decrypt) (caddr_t, u_int8_t *);
 int (*setkey) (void *, u_int8_t *, int len);
 void (*reinit) (caddr_t, u_int8_t *);
};
struct comp_algo {
 int type;
 char *name;
 size_t minlen;
 u_int32_t (*compress) (u_int8_t *, u_int32_t, u_int8_t **);
 u_int32_t (*decompress) (u_int8_t *, u_int32_t, u_int8_t **);
};
union authctx {
 MD5_CTX md5ctx;
 SHA1_CTX sha1ctx;
 RMD160_CTX rmd160ctx;
 SHA2_CTX sha2_ctx;
 AES_GMAC_CTX aes_gmac_ctx;
};
extern struct enc_xform enc_xform_3des;
extern struct enc_xform enc_xform_blf;
extern struct enc_xform enc_xform_cast5;
extern struct enc_xform enc_xform_aes;
extern struct enc_xform enc_xform_aes_ctr;
extern struct enc_xform enc_xform_aes_gcm;
extern struct enc_xform enc_xform_aes_gmac;
extern struct enc_xform enc_xform_aes_xts;
extern struct enc_xform enc_xform_chacha20_poly1305;
extern struct enc_xform enc_xform_null;
extern struct auth_hash auth_hash_hmac_md5_96;
extern struct auth_hash auth_hash_hmac_sha1_96;
extern struct auth_hash auth_hash_hmac_ripemd_160_96;
extern struct auth_hash auth_hash_hmac_sha2_256_128;
extern struct auth_hash auth_hash_hmac_sha2_384_192;
extern struct auth_hash auth_hash_hmac_sha2_512_256;
extern struct auth_hash auth_hash_gmac_aes_128;
extern struct auth_hash auth_hash_gmac_aes_192;
extern struct auth_hash auth_hash_gmac_aes_256;
extern struct auth_hash auth_hash_chacha20_poly1305;
extern struct comp_algo comp_algo_deflate;
extern struct comp_algo comp_algo_lzs;
const u_int8_t hmac_ipad_buffer[128] = {
 0x36, 0x36, 0x36, 0x36, 0x36, 0x36, 0x36, 0x36,
 0x36, 0x36, 0x36, 0x36, 0x36, 0x36, 0x36, 0x36,
 0x36, 0x36, 0x36, 0x36, 0x36, 0x36, 0x36, 0x36,
 0x36, 0x36, 0x36, 0x36, 0x36, 0x36, 0x36, 0x36,
 0x36, 0x36, 0x36, 0x36, 0x36, 0x36, 0x36, 0x36,
 0x36, 0x36, 0x36, 0x36, 0x36, 0x36, 0x36, 0x36,
 0x36, 0x36, 0x36, 0x36, 0x36, 0x36, 0x36, 0x36,
 0x36, 0x36, 0x36, 0x36, 0x36, 0x36, 0x36, 0x36,
 0x36, 0x36, 0x36, 0x36, 0x36, 0x36, 0x36, 0x36,
 0x36, 0x36, 0x36, 0x36, 0x36, 0x36, 0x36, 0x36,
 0x36, 0x36, 0x36, 0x36, 0x36, 0x36, 0x36, 0x36,
 0x36, 0x36, 0x36, 0x36, 0x36, 0x36, 0x36, 0x36,
 0x36, 0x36, 0x36, 0x36, 0x36, 0x36, 0x36, 0x36,
 0x36, 0x36, 0x36, 0x36, 0x36, 0x36, 0x36, 0x36,
 0x36, 0x36, 0x36, 0x36, 0x36, 0x36, 0x36, 0x36,
 0x36, 0x36, 0x36, 0x36, 0x36, 0x36, 0x36, 0x36
};
const u_int8_t hmac_opad_buffer[128] = {
 0x5C, 0x5C, 0x5C, 0x5C, 0x5C, 0x5C, 0x5C, 0x5C,
 0x5C, 0x5C, 0x5C, 0x5C, 0x5C, 0x5C, 0x5C, 0x5C,
 0x5C, 0x5C, 0x5C, 0x5C, 0x5C, 0x5C, 0x5C, 0x5C,
 0x5C, 0x5C, 0x5C, 0x5C, 0x5C, 0x5C, 0x5C, 0x5C,
 0x5C, 0x5C, 0x5C, 0x5C, 0x5C, 0x5C, 0x5C, 0x5C,
 0x5C, 0x5C, 0x5C, 0x5C, 0x5C, 0x5C, 0x5C, 0x5C,
 0x5C, 0x5C, 0x5C, 0x5C, 0x5C, 0x5C, 0x5C, 0x5C,
 0x5C, 0x5C, 0x5C, 0x5C, 0x5C, 0x5C, 0x5C, 0x5C,
 0x5C, 0x5C, 0x5C, 0x5C, 0x5C, 0x5C, 0x5C, 0x5C,
 0x5C, 0x5C, 0x5C, 0x5C, 0x5C, 0x5C, 0x5C, 0x5C,
 0x5C, 0x5C, 0x5C, 0x5C, 0x5C, 0x5C, 0x5C, 0x5C,
 0x5C, 0x5C, 0x5C, 0x5C, 0x5C, 0x5C, 0x5C, 0x5C,
 0x5C, 0x5C, 0x5C, 0x5C, 0x5C, 0x5C, 0x5C, 0x5C,
 0x5C, 0x5C, 0x5C, 0x5C, 0x5C, 0x5C, 0x5C, 0x5C,
 0x5C, 0x5C, 0x5C, 0x5C, 0x5C, 0x5C, 0x5C, 0x5C,
 0x5C, 0x5C, 0x5C, 0x5C, 0x5C, 0x5C, 0x5C, 0x5C
};
struct swcr_data **swcr_sessions = ((void *)0);
u_int32_t swcr_sesnum = 0;
int32_t swcr_id = -1;
int
swcr_encdec(struct cryptodesc *crd, struct swcr_data *sw, caddr_t buf,
    int outtype)
{
 unsigned char iv[64], blk[64], *idat;
 unsigned char *ivp, *nivp, iv2[64];
 struct enc_xform *exf;
 int i, k, j, blks, ind, count, ivlen;
 struct mbuf *m = ((void *)0);
 struct uio *uio = ((void *)0);
 exf = sw->SWCR_UN.SWCR_ENC.SW_exf;
 blks = exf->blocksize;
 ivlen = exf->ivsize;
 if (crd->crd_len % blks)
  return 22;
 if (outtype == 0x2)
  m = (struct mbuf *) buf;
 else
  uio = (struct uio *) buf;
 if (crd->crd_flags & 0x01) {
  if (crd->crd_flags & 0x04)
   __builtin_bcopy((crd->CRD_INI.u.iv), (iv), (ivlen));
  else
   arc4random_buf(iv, ivlen);
  if (!(crd->crd_flags & 0x02))
   do { if ((outtype) == 0x2) m_copyback((struct mbuf *)buf,crd->crd_inject,ivlen,iv,0x0002); else cuio_copyback((struct uio *)buf,crd->crd_inject,ivlen,iv); } while (0);
 } else {
  if (crd->crd_flags & 0x04)
   __builtin_bcopy((crd->CRD_INI.u.iv), (iv), (ivlen));
  else {
   do { if ((outtype) == 0x2) m_copydata((struct mbuf *)buf,crd->crd_inject,ivlen,iv); else cuio_copydata((struct uio *)buf,crd->crd_inject,ivlen,iv); } while (0);
  }
 }
 ivp = iv;
 if (exf->reinit)
  exf->reinit(sw->SWCR_UN.SWCR_ENC.SW_kschedule, iv);
 if (outtype == 0x2) {
  m = m_getptr(m, crd->crd_skip, &k);
  if (m == ((void *)0))
   return 22;
  i = crd->crd_len;
  while (i > 0) {
   if (m->m_hdr.mh_len < k + blks && m->m_hdr.mh_len != k) {
    m_copydata(m, k, blks, blk);
    if (exf->reinit) {
     if (crd->crd_flags & 0x01) {
      exf->encrypt(sw->SWCR_UN.SWCR_ENC.SW_kschedule,
          blk);
     } else {
      exf->decrypt(sw->SWCR_UN.SWCR_ENC.SW_kschedule,
          blk);
     }
    } else if (crd->crd_flags & 0x01) {
     for (j = 0; j < blks; j++)
      blk[j] ^= ivp[j];
     exf->encrypt(sw->SWCR_UN.SWCR_ENC.SW_kschedule, blk);
     __builtin_bcopy((blk), (iv), (blks));
     ivp = iv;
    } else {
     nivp = (ivp == iv) ? iv2 : iv;
     __builtin_bcopy((blk), (nivp), (blks));
     exf->decrypt(sw->SWCR_UN.SWCR_ENC.SW_kschedule, blk);
     for (j = 0; j < blks; j++)
      blk[j] ^= ivp[j];
     ivp = nivp;
    }
    m_copyback(m, k, blks, blk, 0x0002);
    m = m_getptr(m, k + blks, &k);
    if (m == ((void *)0))
     return 22;
    i -= blks;
    if (i == 0)
     break;
   }
   if (k == m->m_hdr.mh_len) {
    for (m = m->m_hdr.mh_next; m && m->m_hdr.mh_len == 0;
        m = m->m_hdr.mh_next)
     ;
    k = 0;
   }
   if (m == ((void *)0))
    return 22;
   idat = ((unsigned char *)((m)->m_hdr.mh_data)) + k;
   while (m->m_hdr.mh_len >= k + blks && i > 0) {
    if (exf->reinit) {
     if (crd->crd_flags & 0x01) {
      exf->encrypt(sw->SWCR_UN.SWCR_ENC.SW_kschedule,
          idat);
     } else {
      exf->decrypt(sw->SWCR_UN.SWCR_ENC.SW_kschedule,
          idat);
     }
    } else if (crd->crd_flags & 0x01) {
     for (j = 0; j < blks; j++)
      idat[j] ^= ivp[j];
     exf->encrypt(sw->SWCR_UN.SWCR_ENC.SW_kschedule, idat);
     ivp = idat;
    } else {
     nivp = (ivp == iv) ? iv2 : iv;
     __builtin_bcopy((idat), (nivp), (blks));
     exf->decrypt(sw->SWCR_UN.SWCR_ENC.SW_kschedule, idat);
     for (j = 0; j < blks; j++)
      idat[j] ^= ivp[j];
     ivp = nivp;
    }
    idat += blks;
    k += blks;
    i -= blks;
   }
  }
 } else {
  count = crd->crd_skip;
  ind = cuio_getptr(uio, count, &k);
  if (ind == -1)
   return 22;
  i = crd->crd_len;
  while (i > 0) {
   if (uio->uio_iov[ind].iov_len < k + blks &&
       uio->uio_iov[ind].iov_len != k) {
    cuio_copydata(uio, count, blks, blk);
    if (exf->reinit) {
     if (crd->crd_flags & 0x01) {
      exf->encrypt(sw->SWCR_UN.SWCR_ENC.SW_kschedule,
          blk);
     } else {
      exf->decrypt(sw->SWCR_UN.SWCR_ENC.SW_kschedule,
          blk);
     }
    } else if (crd->crd_flags & 0x01) {
     for (j = 0; j < blks; j++)
      blk[j] ^= ivp[j];
     exf->encrypt(sw->SWCR_UN.SWCR_ENC.SW_kschedule, blk);
     __builtin_bcopy((blk), (iv), (blks));
     ivp = iv;
    } else {
     nivp = (ivp == iv) ? iv2 : iv;
     __builtin_bcopy((blk), (nivp), (blks));
     exf->decrypt(sw->SWCR_UN.SWCR_ENC.SW_kschedule, blk);
     for (j = 0; j < blks; j++)
      blk[j] ^= ivp[j];
     ivp = nivp;
    }
    cuio_copyback(uio, count, blks, blk);
    count += blks;
    ind = cuio_getptr(uio, count, &k);
    if (ind == -1)
     return (22);
    i -= blks;
    if (i == 0)
     break;
   }
   idat = (char *)uio->uio_iov[ind].iov_base + k;
   while (uio->uio_iov[ind].iov_len >= k + blks &&
       i > 0) {
    if (exf->reinit) {
     if (crd->crd_flags & 0x01) {
      exf->encrypt(sw->SWCR_UN.SWCR_ENC.SW_kschedule,
          idat);
     } else {
      exf->decrypt(sw->SWCR_UN.SWCR_ENC.SW_kschedule,
          idat);
     }
    } else if (crd->crd_flags & 0x01) {
     for (j = 0; j < blks; j++)
      idat[j] ^= ivp[j];
     exf->encrypt(sw->SWCR_UN.SWCR_ENC.SW_kschedule, idat);
     ivp = idat;
    } else {
     nivp = (ivp == iv) ? iv2 : iv;
     __builtin_bcopy((idat), (nivp), (blks));
     exf->decrypt(sw->SWCR_UN.SWCR_ENC.SW_kschedule, idat);
     for (j = 0; j < blks; j++)
      idat[j] ^= ivp[j];
     ivp = nivp;
    }
    idat += blks;
    count += blks;
    k += blks;
    i -= blks;
   }
   if (i > 0 && k == uio->uio_iov[ind].iov_len) {
    k = 0;
    ind++;
    if (ind >= uio->uio_iovcnt)
     return (22);
   }
  }
 }
 return 0;
}
int
swcr_authcompute(struct cryptop *crp, struct cryptodesc *crd,
    struct swcr_data *sw, caddr_t buf, int outtype)
{
 unsigned char aalg[64];
 struct auth_hash *axf;
 union authctx ctx;
 int err;
 if (sw->SWCR_UN.SWCR_AUTH.SW_ictx == 0)
  return 22;
 axf = sw->SWCR_UN.SWCR_AUTH.SW_axf;
 __builtin_bcopy((sw->SWCR_UN.SWCR_AUTH.SW_ictx), (&ctx), (axf->ctxsize));
 if (outtype == 0x2)
  err = m_apply((struct mbuf *) buf, crd->crd_skip, crd->crd_len,
      (int (*)(caddr_t, caddr_t, unsigned int)) axf->Update,
      (caddr_t) &ctx);
 else
  err = cuio_apply((struct uio *) buf, crd->crd_skip,
      crd->crd_len,
      (int (*)(caddr_t, caddr_t, unsigned int)) axf->Update,
      (caddr_t) &ctx);
 if (err)
  return err;
 if (crd->crd_flags & 0x20)
  axf->Update(&ctx, crd->CRD_INI.u.esn, 4);
 switch (sw->sw_alg) {
 case 4:
 case 5:
 case 6:
 case 11:
 case 12:
 case 13:
  if (sw->SWCR_UN.SWCR_AUTH.SW_octx == ((void *)0))
   return 22;
  axf->Final(aalg, &ctx);
  __builtin_bcopy((sw->SWCR_UN.SWCR_AUTH.SW_octx), (&ctx), (axf->ctxsize));
  axf->Update(&ctx, aalg, axf->hashsize);
  axf->Final(aalg, &ctx);
  break;
 }
 if (outtype == 0x2)
  do { if ((outtype) == 0x2) m_copyback((struct mbuf *)buf,crd->crd_inject,axf->authsize,aalg,0x0002); else cuio_copyback((struct uio *)buf,crd->crd_inject,axf->authsize,aalg); } while (0);
 else
  __builtin_bcopy((aalg), (crp->crp_mac), (axf->authsize));
 return 0;
}
int
swcr_authenc(struct cryptop *crp)
{
 uint32_t blkbuf[(((64) + ((sizeof(uint32_t)) - 1)) / (sizeof(uint32_t)))];
 u_char *blk = (u_char *)blkbuf;
 u_char aalg[64];
 u_char iv[64];
 union authctx ctx;
 struct cryptodesc *crd, *crda = ((void *)0), *crde = ((void *)0);
 struct swcr_data *sw, *swa, *swe = ((void *)0);
 struct auth_hash *axf = ((void *)0);
 struct enc_xform *exf = ((void *)0);
 caddr_t buf = (caddr_t)crp->crp_buf;
 uint32_t *blkp;
 int aadlen, blksz, i, ivlen, outtype, len, iskip, oskip;
 ivlen = blksz = iskip = oskip = 0;
 for (i = 0; i < crp->crp_ndesc; i++) {
  crd = &crp->crp_desc[i];
  for (sw = swcr_sessions[crp->crp_sid & 0xffffffff];
       sw && sw->sw_alg != crd->CRD_INI.cri_alg;
       sw = sw->sw_next)
   ;
  if (sw == ((void *)0))
   return (22);
  switch (sw->sw_alg) {
  case 16:
  case 20:
  case 21:
   swe = sw;
   crde = crd;
   exf = swe->SWCR_UN.SWCR_ENC.SW_exf;
   ivlen = exf->ivsize;
   break;
  case 17:
  case 18:
  case 19:
  case 22:
   swa = sw;
   crda = crd;
   axf = swa->SWCR_UN.SWCR_AUTH.SW_axf;
   if (swa->SWCR_UN.SWCR_AUTH.SW_ictx == 0)
    return (22);
   __builtin_bcopy((swa->SWCR_UN.SWCR_AUTH.SW_ictx), (&ctx), (axf->ctxsize));
   blksz = axf->blocksize;
   break;
  default:
   return (22);
  }
 }
 if (crde == ((void *)0) || crda == ((void *)0))
  return (22);
 if (crp->crp_flags & 0x0001) {
  outtype = 0x2;
 } else {
  outtype = 0x1;
 }
 if (crde->crd_flags & 0x01) {
  if (crde->crd_flags & 0x04)
   __builtin_bcopy((crde->CRD_INI.u.iv), (iv), (ivlen));
  else
   arc4random_buf(iv, ivlen);
  if (!(crde->crd_flags & 0x02))
   do { if ((outtype) == 0x2) m_copyback((struct mbuf *)buf,crde->crd_inject,ivlen,iv,0x0002); else cuio_copyback((struct uio *)buf,crde->crd_inject,ivlen,iv); } while (0);
 } else {
  if (crde->crd_flags & 0x04)
   __builtin_bcopy((crde->CRD_INI.u.iv), (iv), (ivlen));
  else {
   do { if ((outtype) == 0x2) m_copydata((struct mbuf *)buf,crde->crd_inject,ivlen,iv); else cuio_copydata((struct uio *)buf,crde->crd_inject,ivlen,iv); } while (0);
  }
 }
 if (axf->Reinit)
  axf->Reinit(&ctx, iv, ivlen);
 aadlen = crda->crd_len;
 if (crda->crd_flags & 0x20) {
  aadlen += 4;
  do { if ((outtype) == 0x2) m_copydata((struct mbuf *)buf,crda->crd_skip,4,blk); else cuio_copydata((struct uio *)buf,crda->crd_skip,4,blk); } while (0);
  iskip = 4;
  __builtin_bcopy((crda->CRD_INI.u.esn), (blk + 4), (4));
  oskip = iskip + 4;
 }
 for (i = iskip; i < crda->crd_len; i += axf->hashsize) {
  len = (((crda->crd_len - i)<(axf->hashsize - oskip))?(crda->crd_len - i):(axf->hashsize - oskip));
  do { if ((outtype) == 0x2) m_copydata((struct mbuf *)buf,crda->crd_skip + i,len,blk + oskip); else cuio_copydata((struct uio *)buf,crda->crd_skip + i,len,blk + oskip); } while (0);
  __builtin_bzero((blk + len + oskip), (axf->hashsize - len - oskip));
  axf->Update(&ctx, blk, axf->hashsize);
  oskip = 0;
 }
 if (exf->reinit)
  exf->reinit(swe->SWCR_UN.SWCR_ENC.SW_kschedule, iv);
 for (i = 0; i < crde->crd_len; i += blksz) {
  len = (((crde->crd_len - i)<(blksz))?(crde->crd_len - i):(blksz));
  if (len < blksz)
   __builtin_bzero((blk), (blksz));
  do { if ((outtype) == 0x2) m_copydata((struct mbuf *)buf,crde->crd_skip + i,len,blk); else cuio_copydata((struct uio *)buf,crde->crd_skip + i,len,blk); } while (0);
  if (crde->crd_flags & 0x01) {
   exf->encrypt(swe->SWCR_UN.SWCR_ENC.SW_kschedule, blk);
   axf->Update(&ctx, blk, len);
  } else {
   axf->Update(&ctx, blk, len);
   exf->decrypt(swe->SWCR_UN.SWCR_ENC.SW_kschedule, blk);
  }
  do { if ((outtype) == 0x2) m_copyback((struct mbuf *)buf,crde->crd_skip + i,len,blk,0x0002); else cuio_copyback((struct uio *)buf,crde->crd_skip + i,len,blk); } while (0);
 }
 switch (crda->CRD_INI.cri_alg) {
  case 17:
  case 18:
  case 19:
   __builtin_bzero((blk), (axf->hashsize));
   blkp = (uint32_t *)blk + 1;
   *blkp = ((__uint32_t)(aadlen * 8));
   blkp = (uint32_t *)blk + 3;
   *blkp = ((__uint32_t)(crde->crd_len * 8));
   axf->Update(&ctx, blk, axf->hashsize);
   break;
  case 22:
   __builtin_bzero((blk), (axf->hashsize));
   blkp = (uint32_t *)blk;
   *blkp = (__uint32_t)(__builtin_constant_p(aadlen) ? (__uint32_t)(((__uint32_t)(aadlen) & 0xff) << 24 | ((__uint32_t)(aadlen) & 0xff00) << 8 | ((__uint32_t)(aadlen) & 0xff0000) >> 8 | ((__uint32_t)(aadlen) & 0xff000000) >> 24) : __swap32md(aadlen));
   blkp = (uint32_t *)blk + 2;
   *blkp = (__uint32_t)(__builtin_constant_p(crde->crd_len) ? (__uint32_t)(((__uint32_t)(crde->crd_len) & 0xff) << 24 | ((__uint32_t)(crde->crd_len) & 0xff00) << 8 | ((__uint32_t)(crde->crd_len) & 0xff0000) >> 8 | ((__uint32_t)(crde->crd_len) & 0xff000000) >> 24) : __swap32md(crde->crd_len));
   axf->Update(&ctx, blk, axf->hashsize);
   break;
 }
 axf->Final(aalg, &ctx);
 if (outtype == 0x2)
  do { if ((outtype) == 0x2) m_copyback((struct mbuf *)buf,crda->crd_inject,axf->authsize,aalg,0x0002); else cuio_copyback((struct uio *)buf,crda->crd_inject,axf->authsize,aalg); } while (0);
 else
  __builtin_bcopy((aalg), (crp->crp_mac), (axf->authsize));
 return (0);
}
int
swcr_compdec(struct cryptodesc *crd, struct swcr_data *sw,
    caddr_t buf, int outtype)
{
 u_int8_t *data, *out;
 struct comp_algo *cxf;
 int adj;
 u_int32_t result;
 cxf = sw->SWCR_UN.SWCR_COMP.SW_cxf;
 data = malloc(crd->crd_len, 108, 0x0002);
 if (data == ((void *)0))
  return (22);
 do { if ((outtype) == 0x2) m_copydata((struct mbuf *)buf,crd->crd_skip,crd->crd_len,data); else cuio_copydata((struct uio *)buf,crd->crd_skip,crd->crd_len,data); } while (0);
 if (crd->crd_flags & 0x10)
  result = cxf->compress(data, crd->crd_len, &out);
 else
  result = cxf->decompress(data, crd->crd_len, &out);
 free(data, 108, crd->crd_len);
 if (result == 0)
  return 22;
 sw->SWCR_UN.SWCR_COMP.SW_size = result;
 if (crd->crd_flags & 0x10) {
  if (result > crd->crd_len) {
   free(out, 108, 0);
   return 0;
  }
 }
 do { if ((outtype) == 0x2) m_copyback((struct mbuf *)buf,crd->crd_skip,result,out,0x0002); else cuio_copyback((struct uio *)buf,crd->crd_skip,result,out); } while (0);
 if (result < crd->crd_len) {
  adj = result - crd->crd_len;
  if (outtype == 0x2) {
   adj = result - crd->crd_len;
   m_adj((struct mbuf *)buf, adj);
  } else {
   struct uio *uio = (struct uio *)buf;
   int ind;
   adj = crd->crd_len - result;
   ind = uio->uio_iovcnt - 1;
   while (adj > 0 && ind >= 0) {
    if (adj < uio->uio_iov[ind].iov_len) {
     uio->uio_iov[ind].iov_len -= adj;
     break;
    }
    adj -= uio->uio_iov[ind].iov_len;
    uio->uio_iov[ind].iov_len = 0;
    ind--;
    uio->uio_iovcnt--;
   }
  }
 }
 free(out, 108, 0);
 return 0;
}
int
swcr_newsession(u_int32_t *sid, struct cryptoini *cri)
{
 struct swcr_data **swd;
 struct auth_hash *axf;
 struct enc_xform *txf;
 struct comp_algo *cxf;
 u_int32_t i;
 int k;
 if (sid == ((void *)0) || cri == ((void *)0))
  return 22;
 if (swcr_sessions) {
  for (i = 1; i < swcr_sesnum; i++)
   if (swcr_sessions[i] == ((void *)0))
    break;
 }
 if (swcr_sessions == ((void *)0) || i == swcr_sesnum) {
  if (swcr_sessions == ((void *)0)) {
   i = 1;
   swcr_sesnum = 32;
  } else
   swcr_sesnum *= 2;
  swd = mallocarray(swcr_sesnum, sizeof(struct swcr_data *),
      108, 0x0002 | 0x0008);
  if (swd == ((void *)0)) {
   if (swcr_sesnum == 32)
    swcr_sesnum = 0;
   else
    swcr_sesnum /= 2;
   return 55;
  }
  if (swcr_sessions) {
   __builtin_bcopy((swcr_sessions), (swd), ((swcr_sesnum / 2) * sizeof(struct swcr_data *)));
   free(swcr_sessions, 108,
       (swcr_sesnum / 2) * sizeof(struct swcr_data *));
  }
  swcr_sessions = swd;
 }
 swd = &swcr_sessions[i];
 *sid = i;
 while (cri) {
  *swd = malloc(sizeof(struct swcr_data), 108,
      0x0002 | 0x0008);
  if (*swd == ((void *)0)) {
   swcr_freesession(i);
   return 55;
  }
  switch (cri->cri_alg) {
  case 1:
   txf = &enc_xform_3des;
   goto enccommon;
  case 2:
   txf = &enc_xform_blf;
   goto enccommon;
  case 3:
   txf = &enc_xform_cast5;
   goto enccommon;
  case 7:
   txf = &enc_xform_aes;
   goto enccommon;
  case 14:
   txf = &enc_xform_aes_ctr;
   goto enccommon;
  case 15:
   txf = &enc_xform_aes_xts;
   goto enccommon;
  case 16:
   txf = &enc_xform_aes_gcm;
   goto enccommon;
  case 20:
   txf = &enc_xform_aes_gmac;
   (*swd)->SWCR_UN.SWCR_ENC.SW_exf = txf;
   break;
  case 21:
   txf = &enc_xform_chacha20_poly1305;
   goto enccommon;
  case 9:
   txf = &enc_xform_null;
   goto enccommon;
  enccommon:
   if (txf->ctxsize > 0) {
    (*swd)->SWCR_UN.SWCR_ENC.SW_kschedule = malloc(txf->ctxsize,
        108, 0x0002 | 0x0008);
    if ((*swd)->SWCR_UN.SWCR_ENC.SW_kschedule == ((void *)0)) {
     swcr_freesession(i);
     return 22;
    }
   }
   if (txf->setkey((*swd)->SWCR_UN.SWCR_ENC.SW_kschedule, cri->cri_key,
       cri->cri_klen / 8) < 0) {
    swcr_freesession(i);
    return 22;
   }
   (*swd)->SWCR_UN.SWCR_ENC.SW_exf = txf;
   break;
  case 4:
   axf = &auth_hash_hmac_md5_96;
   goto authcommon;
  case 5:
   axf = &auth_hash_hmac_sha1_96;
   goto authcommon;
  case 6:
   axf = &auth_hash_hmac_ripemd_160_96;
   goto authcommon;
  case 11:
   axf = &auth_hash_hmac_sha2_256_128;
   goto authcommon;
  case 12:
   axf = &auth_hash_hmac_sha2_384_192;
   goto authcommon;
  case 13:
   axf = &auth_hash_hmac_sha2_512_256;
   goto authcommon;
  authcommon:
   (*swd)->SWCR_UN.SWCR_AUTH.SW_ictx = malloc(axf->ctxsize, 108,
       0x0002);
   if ((*swd)->SWCR_UN.SWCR_AUTH.SW_ictx == ((void *)0)) {
    swcr_freesession(i);
    return 55;
   }
   (*swd)->SWCR_UN.SWCR_AUTH.SW_octx = malloc(axf->ctxsize, 108,
       0x0002);
   if ((*swd)->SWCR_UN.SWCR_AUTH.SW_octx == ((void *)0)) {
    swcr_freesession(i);
    return 55;
   }
   for (k = 0; k < cri->cri_klen / 8; k++)
    cri->cri_key[k] ^= 0x36;
   axf->Init((*swd)->SWCR_UN.SWCR_AUTH.SW_ictx);
   axf->Update((*swd)->SWCR_UN.SWCR_AUTH.SW_ictx, cri->cri_key,
       cri->cri_klen / 8);
   axf->Update((*swd)->SWCR_UN.SWCR_AUTH.SW_ictx, hmac_ipad_buffer,
       axf->blocksize - (cri->cri_klen / 8));
   for (k = 0; k < cri->cri_klen / 8; k++)
    cri->cri_key[k] ^= (0x36 ^ 0x5C);
   axf->Init((*swd)->SWCR_UN.SWCR_AUTH.SW_octx);
   axf->Update((*swd)->SWCR_UN.SWCR_AUTH.SW_octx, cri->cri_key,
       cri->cri_klen / 8);
   axf->Update((*swd)->SWCR_UN.SWCR_AUTH.SW_octx, hmac_opad_buffer,
       axf->blocksize - (cri->cri_klen / 8));
   for (k = 0; k < cri->cri_klen / 8; k++)
    cri->cri_key[k] ^= 0x5C;
   (*swd)->SWCR_UN.SWCR_AUTH.SW_axf = axf;
   break;
  case 17:
   axf = &auth_hash_gmac_aes_128;
   goto authenccommon;
  case 18:
   axf = &auth_hash_gmac_aes_192;
   goto authenccommon;
  case 19:
   axf = &auth_hash_gmac_aes_256;
   goto authenccommon;
  case 22:
   axf = &auth_hash_chacha20_poly1305;
   goto authenccommon;
  authenccommon:
   (*swd)->SWCR_UN.SWCR_AUTH.SW_ictx = malloc(axf->ctxsize, 108,
       0x0002);
   if ((*swd)->SWCR_UN.SWCR_AUTH.SW_ictx == ((void *)0)) {
    swcr_freesession(i);
    return 55;
   }
   axf->Init((*swd)->SWCR_UN.SWCR_AUTH.SW_ictx);
   axf->Setkey((*swd)->SWCR_UN.SWCR_AUTH.SW_ictx, cri->cri_key,
       cri->cri_klen / 8);
   (*swd)->SWCR_UN.SWCR_AUTH.SW_axf = axf;
   break;
  case 8:
   cxf = &comp_algo_deflate;
   (*swd)->SWCR_UN.SWCR_COMP.SW_cxf = cxf;
   break;
  case 23:
   break;
  default:
   swcr_freesession(i);
   return 22;
  }
  (*swd)->sw_alg = cri->cri_alg;
  cri = cri->cri_next;
  swd = &((*swd)->sw_next);
 }
 return 0;
}
int
swcr_freesession(u_int64_t tid)
{
 struct swcr_data *swd;
 struct enc_xform *txf;
 struct auth_hash *axf;
 u_int32_t sid = ((u_int32_t) tid) & 0xffffffff;
 if (sid > swcr_sesnum || swcr_sessions == ((void *)0) ||
     swcr_sessions[sid] == ((void *)0))
  return 22;
 if (sid == 0)
  return 0;
 while ((swd = swcr_sessions[sid]) != ((void *)0)) {
  swcr_sessions[sid] = swd->sw_next;
  switch (swd->sw_alg) {
  case 1:
  case 2:
  case 3:
  case 7:
  case 14:
  case 15:
  case 16:
  case 20:
  case 21:
  case 9:
   txf = swd->SWCR_UN.SWCR_ENC.SW_exf;
   if (swd->SWCR_UN.SWCR_ENC.SW_kschedule) {
    explicit_bzero(swd->SWCR_UN.SWCR_ENC.SW_kschedule, txf->ctxsize);
    free(swd->SWCR_UN.SWCR_ENC.SW_kschedule, 108, 0);
   }
   break;
  case 4:
  case 5:
  case 6:
  case 11:
  case 12:
  case 13:
   axf = swd->SWCR_UN.SWCR_AUTH.SW_axf;
   if (swd->SWCR_UN.SWCR_AUTH.SW_ictx) {
    explicit_bzero(swd->SWCR_UN.SWCR_AUTH.SW_ictx, axf->ctxsize);
    free(swd->SWCR_UN.SWCR_AUTH.SW_ictx, 108, 0);
   }
   if (swd->SWCR_UN.SWCR_AUTH.SW_octx) {
    explicit_bzero(swd->SWCR_UN.SWCR_AUTH.SW_octx, axf->ctxsize);
    free(swd->SWCR_UN.SWCR_AUTH.SW_octx, 108, 0);
   }
   break;
  case 17:
  case 18:
  case 19:
  case 22:
   axf = swd->SWCR_UN.SWCR_AUTH.SW_axf;
   if (swd->SWCR_UN.SWCR_AUTH.SW_ictx) {
    explicit_bzero(swd->SWCR_UN.SWCR_AUTH.SW_ictx, axf->ctxsize);
    free(swd->SWCR_UN.SWCR_AUTH.SW_ictx, 108, 0);
   }
   break;
  }
  free(swd, 108, 0);
 }
 return 0;
}
int
swcr_process(struct cryptop *crp)
{
 struct cryptodesc *crd;
 struct swcr_data *sw;
 u_int32_t lid;
 int type;
 int i;
 if (crp == ((void *)0))
  return 22;
 if (crp->crp_ndesc < 1 || crp->crp_buf == ((void *)0)) {
  crp->crp_etype = 22;
  goto done;
 }
 lid = crp->crp_sid & 0xffffffff;
 if (lid >= swcr_sesnum || lid == 0 || swcr_sessions[lid] == ((void *)0)) {
  crp->crp_etype = 2;
  goto done;
 }
 if (crp->crp_flags & 0x0001)
  type = 0x2;
 else
  type = 0x1;
 for (i = 0; i < crp->crp_ndesc; i++) {
  crd = &crp->crp_desc[i];
  for (sw = swcr_sessions[lid];
      sw && sw->sw_alg != crd->CRD_INI.cri_alg;
      sw = sw->sw_next)
   ;
  if (sw == ((void *)0)) {
   crp->crp_etype = 22;
   goto done;
  }
  switch (sw->sw_alg) {
  case 9:
   break;
  case 1:
  case 2:
  case 3:
  case 7:
  case 14:
  case 15:
   if ((crp->crp_etype = swcr_encdec(crd, sw,
       crp->crp_buf, type)) != 0)
    goto done;
   break;
  case 4:
  case 5:
  case 6:
  case 11:
  case 12:
  case 13:
   if ((crp->crp_etype = swcr_authcompute(crp, crd, sw,
       crp->crp_buf, type)) != 0)
    goto done;
   break;
  case 16:
  case 20:
  case 17:
  case 18:
  case 19:
  case 21:
  case 22:
   crp->crp_etype = swcr_authenc(crp);
   goto done;
  case 8:
   if ((crp->crp_etype = swcr_compdec(crd, sw,
       crp->crp_buf, type)) != 0)
    goto done;
   else
    crp->crp_olen = (int)sw->SWCR_UN.SWCR_COMP.SW_size;
   break;
  default:
   crp->crp_etype = 22;
   goto done;
  }
 }
done:
 crypto_done(crp);
 return 0;
}
void
swcr_init(void)
{
 int algs[23 + 1];
 int flags = 0x02;
 swcr_id = crypto_get_driverid(flags);
 if (swcr_id < 0) {
  panic("Software crypto device cannot initialize!");
 }
 __builtin_bzero((algs), (sizeof(algs)));
 algs[1] = 0x01;
 algs[2] = 0x01;
 algs[3] = 0x01;
 algs[4] = 0x01;
 algs[5] = 0x01;
 algs[6] = 0x01;
 algs[7] = 0x01;
 algs[14] = 0x01;
 algs[15] = 0x01;
 algs[16] = 0x01;
 algs[20] = 0x01;
 algs[8] = 0x01;
 algs[9] = 0x01;
 algs[11] = 0x01;
 algs[12] = 0x01;
 algs[13] = 0x01;
 algs[17] = 0x01;
 algs[18] = 0x01;
 algs[19] = 0x01;
 algs[21] = 0x01;
 algs[22] = 0x01;
 algs[23] = 0x01;
 crypto_register(swcr_id, algs, swcr_newsession,
     swcr_freesession, swcr_process);
}
