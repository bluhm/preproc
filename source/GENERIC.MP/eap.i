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
struct flock {
 off_t l_start;
 off_t l_len;
 pid_t l_pid;
 short l_type;
 short l_whence;
};
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
struct midi_info {
 char *name;
 int props;
};
struct midi_hw_if {
 int (*open)(void *, int,
   void (*)(void *, int),
   void (*)(void *),
   void *);
 void (*close)(void *);
 int (*output)(void *, int);
 void (*flush)(void *);
 void (*getinfo)(void *, struct midi_info *);
 int (*ioctl)(void *, u_long, caddr_t, int, struct proc *);
};
struct device *midi_attach_mi(struct midi_hw_if *, void *, struct device *);
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
struct cfdriver eap_cd = {
      ((void *)0), "eap", DV_DULL
};
int eap_match(struct device *, void *, void *);
void eap_attach(struct device *, struct device *, void *);
int eap_activate(struct device *, int);
int eap_intr(void *);
struct eap_dma {
 bus_dmamap_t map;
 caddr_t addr;
 bus_dma_segment_t segs[1];
 int nsegs;
 size_t size;
 struct eap_dma *next;
};
struct eap_softc {
 struct device sc_dev;
 void *sc_ih;
 bus_space_tag_t iot;
 bus_space_handle_t ioh;
 bus_dma_tag_t sc_dmatag;
 struct eap_dma *sc_dmas;
 void (*sc_pintr)(void *);
 void *sc_parg;
 char sc_prun;
 void (*sc_rintr)(void *);
 void *sc_rarg;
 char sc_rrun;
 void (*sc_iintr)(void *, int);
 void (*sc_ointr)(void *);
 void *sc_arg;
 int sc_uctrl;
 struct device *sc_mididev;
 u_short sc_port[0x20];
 u_int sc_record_source;
 u_int sc_input_source;
 u_int sc_mic_preamp;
 char sc_1371;
 char sc_ct5880;
 struct ac97_codec_if *codec_if;
 struct ac97_host_if host_if;
 int flags;
};
enum ac97_host_flags eap_flags_codec(void *);
int eap_allocmem(struct eap_softc *, size_t, size_t, struct eap_dma *);
int eap_freemem(struct eap_softc *, struct eap_dma *);
struct cfattach eap_ca = {
 sizeof(struct eap_softc), eap_match, eap_attach, ((void *)0), eap_activate
};
int eap_open(void *, int);
void eap_close(void *);
int eap_set_params(void *, int, int, struct audio_params *, struct audio_params *);
int eap_round_blocksize(void *, int);
int eap_trigger_output(void *, void *, void *, int, void (*)(void *),
     void *, struct audio_params *);
int eap_trigger_input(void *, void *, void *, int, void (*)(void *),
     void *, struct audio_params *);
int eap_halt_output(void *);
int eap_halt_input(void *);
int eap_resume(struct eap_softc *);
void eap1370_write_codec(struct eap_softc *, int, int);
int eap1370_mixer_set_port(void *, mixer_ctrl_t *);
int eap1370_mixer_get_port(void *, mixer_ctrl_t *);
int eap1371_mixer_set_port(void *, mixer_ctrl_t *);
int eap1371_mixer_get_port(void *, mixer_ctrl_t *);
int eap1370_query_devinfo(void *, mixer_devinfo_t *);
void *eap_malloc(void *, int, size_t, int, int);
void eap_free(void *, void *, int);
int eap_get_props(void *);
void eap1370_set_mixer(struct eap_softc *sc, int a, int d);
u_int32_t eap1371_src_wait(struct eap_softc *sc);
void eap1371_src_write(struct eap_softc *sc, int a, int d);
int eap1371_query_devinfo(void *addr, mixer_devinfo_t *dip);
int eap1371_attach_codec(void *sc, struct ac97_codec_if *);
int eap1371_read_codec(void *sc, u_int8_t a, u_int16_t *d);
int eap1371_write_codec(void *sc, u_int8_t a, u_int16_t d);
void eap1371_reset_codec(void *sc);
void eap_midi_close(void *);
void eap_midi_getinfo(void *, struct midi_info *);
int eap_midi_open(void *, int, void (*)(void *, int),
     void (*)(void *), void *);
int eap_midi_output(void *, int);
struct audio_hw_if eap1370_hw_if = {
 eap_open,
 eap_close,
 eap_set_params,
 eap_round_blocksize,
 ((void *)0),
 ((void *)0),
 ((void *)0),
 ((void *)0),
 ((void *)0),
 eap_halt_output,
 eap_halt_input,
 ((void *)0),
 ((void *)0),
 eap1370_mixer_set_port,
 eap1370_mixer_get_port,
 eap1370_query_devinfo,
 eap_malloc,
 eap_free,
 ((void *)0),
 eap_get_props,
 eap_trigger_output,
 eap_trigger_input
};
struct audio_hw_if eap1371_hw_if = {
 eap_open,
 eap_close,
 eap_set_params,
 eap_round_blocksize,
 ((void *)0),
 ((void *)0),
 ((void *)0),
 ((void *)0),
 ((void *)0),
 eap_halt_output,
 eap_halt_input,
 ((void *)0),
 ((void *)0),
 eap1371_mixer_set_port,
 eap1371_mixer_get_port,
 eap1371_query_devinfo,
 eap_malloc,
 eap_free,
 ((void *)0),
 eap_get_props,
 eap_trigger_output,
 eap_trigger_input
};
struct midi_hw_if eap_midi_hw_if = {
 eap_midi_open,
 eap_midi_close,
 eap_midi_output,
 0,
 eap_midi_getinfo,
 0,
};
const struct pci_matchid eap_devices[] = {
 { 0x1102, 0x8938 },
 { 0x1274, 0x5000 },
 { 0x1274, 0x1371 },
 { 0x1274, 0x5880 },
};
int
eap_match(struct device *parent, void *match, void *aux)
{
 return (pci_matchbyid((struct pci_attach_args *)aux, eap_devices,
     (sizeof((eap_devices)) / sizeof((eap_devices)[0]))));
}
int
eap_activate(struct device *self, int act)
{
 struct eap_softc *sc = (struct eap_softc *)self;
 int rv = 0;
 switch (act) {
 case 4:
  eap_resume(sc);
  rv = config_activate_children(self, act);
  break;
 default:
  rv = config_activate_children(self, act);
  break;
 }
 return (rv);
}
void
eap1370_write_codec(struct eap_softc *sc, int a, int d)
{
 int icss, to;
 to = 5000;
 do {
  icss = bus_space_read_4((sc)->iot, (sc)->ioh, (0x04));
  ;
  if (!to--) {
   printf("%s: timeout writing to codec\n",
       sc->sc_dev.dv_xname);
   return;
  }
 } while (icss & 0x00000100);
 bus_space_write_4((sc)->iot, (sc)->ioh, (0x10), ((((a)<<8) | (d))));
}
static __inline void
eap1371_ready_codec(struct eap_softc *sc, u_int8_t a, u_int32_t wd)
{
 int to;
 u_int32_t src, t;
 for (to = 0; to < 5000; to++) {
  if (!(bus_space_read_4((sc)->iot, (sc)->ioh, (0x14)) & 0x40000000))
   break;
  delay(1);
 }
 if (to == 5000)
  printf("%s: eap1371_ready_codec timeout 1\n",
      sc->sc_dev.dv_xname);
 __mtx_enter(&audio_lock );
 src = eap1371_src_wait(sc) & (0x00400000 | 0x00200000 | 0x00100000 | 0x00080000);
 bus_space_write_4((sc)->iot, (sc)->ioh, (0x10), (src | 0x00010000));
 for (to = 0; to < 5000; to++) {
  t = bus_space_read_4((sc)->iot, (sc)->ioh, (0x10));
  if ((t & 0x00870000) == 0)
   break;
  delay(1);
 }
 if (to == 5000)
  printf("%s: eap1371_ready_codec timeout 2\n",
      sc->sc_dev.dv_xname);
 for (to = 0; to < 5000; to++) {
  t = bus_space_read_4((sc)->iot, (sc)->ioh, (0x10));
  if ((t & 0x00870000) == 0x00010000)
   break;
  delay(1);
 }
 if (to == 5000)
  printf("%s: eap1371_ready_codec timeout 3\n",
      sc->sc_dev.dv_xname);
 bus_space_write_4((sc)->iot, (sc)->ioh, (0x14), (wd));
 eap1371_src_wait(sc);
 bus_space_write_4((sc)->iot, (sc)->ioh, (0x10), (src));
 __mtx_leave(&audio_lock );
}
int
eap1371_read_codec(void *sc_, u_int8_t a, u_int16_t *d)
{
 struct eap_softc *sc = sc_;
 int to;
 u_int32_t t;
 eap1371_ready_codec(sc, a, (((a)<<16) | (0)) | 0x00800000);
 for (to = 0; to < 5000; to++) {
  if (!(bus_space_read_4((sc)->iot, (sc)->ioh, (0x14)) & 0x40000000))
   break;
  delay(1);
 }
 if (to == 5000)
  printf("%s: eap1371_read_codec timeout 1\n",
      sc->sc_dev.dv_xname);
 for (to = 0; to < 5000; to++) {
  t = bus_space_read_4((sc)->iot, (sc)->ioh, (0x14));
  if (t & 0x80000000)
   break;
  delay(1);
 }
 if (to == 5000)
  printf("%s: eap1371_read_codec timeout 2\n",
      sc->sc_dev.dv_xname);
 *d = (u_int16_t)t;
 ;
 return (0);
}
int
eap1371_write_codec(void *sc_, u_int8_t a, u_int16_t d)
{
 struct eap_softc *sc = sc_;
 eap1371_ready_codec(sc, a, (((a)<<16) | (d)));
        ;
 return (0);
}
u_int32_t
eap1371_src_wait(struct eap_softc *sc)
{
 int to;
 u_int32_t src = 0;
 for (to = 0; to < 5000; to++) {
  src = bus_space_read_4((sc)->iot, (sc)->ioh, (0x10));
  if (!(src & 0x00800000))
   return (src);
  delay(1);
 }
 printf("%s: eap1371_src_wait timeout\n", sc->sc_dev.dv_xname);
 return (src);
}
void
eap1371_src_write(struct eap_softc *sc, int a, int d)
{
 u_int32_t r;
 r = eap1371_src_wait(sc) & (0x00400000 | 0x00200000 | 0x00100000 | 0x00080000);
 r |= 0x01000000 | ((a)<<25) | (d);
 bus_space_write_4((sc)->iot, (sc)->ioh, (0x10), (r));
}
void
eap_attach(struct device *parent, struct device *self, void *aux)
{
 struct eap_softc *sc = (struct eap_softc *)self;
 struct pci_attach_args *pa = (struct pci_attach_args *)aux;
 pci_chipset_tag_t pc = pa->pa_pc;
 struct audio_hw_if *eap_hw_if;
 char const *intrstr;
 pci_intr_handle_t ih;
 mixer_ctrl_t ctl;
 int i;
 int revision;
 sc->sc_1371 = !((((pa->pa_id) >> 0) & 0xffff) == 0x1274 &&
     (((pa->pa_id) >> 16) & 0xffff) == 0x5000);
 revision = (((pa->pa_class) >> 0) & 0xff);
 if (sc->sc_1371) {
  if ((((pa->pa_id) >> 0) & 0xffff) == 0x1274 &&
      (((((pa->pa_id) >> 16) & 0xffff) == 0x1371 &&
      (revision == 0x08 || revision == 0x07)) ||
      (((pa->pa_id) >> 16) & 0xffff) == 0x5880))
   sc->sc_ct5880 = 1;
 }
 if (pci_mapreg_map(pa, 0x10, 0x00000001, 0,
     &sc->iot, &sc->ioh, ((void *)0), ((void *)0), 0)) {
  return;
 }
 sc->sc_dmatag = pa->pa_dmat;
 if (pci_intr_map(pa, &ih)) {
  printf(": couldn't map interrupt\n");
  return;
 }
 intrstr = pci_intr_string(pc, ih);
 sc->sc_ih = pci_intr_establish(pc, ih, 8 | 0x100,
     eap_intr, sc, sc->sc_dev.dv_xname);
 if (sc->sc_ih == ((void *)0)) {
  printf(": couldn't establish interrupt");
  if (intrstr != ((void *)0))
   printf(" at %s", intrstr);
  printf("\n");
  return;
 }
 printf(": %s\n", intrstr);
 if (!sc->sc_1371) {
  bus_space_write_4((sc)->iot, (sc)->ioh, (0x20), (0x00000200 | 0x00000400));
  bus_space_write_4((sc)->iot, (sc)->ioh, (0x00), (0x00000002));
  eap1370_write_codec(sc, 0x16, 0x02);
  eap1370_write_codec(sc, 0x16, 0x02 | 0x01);
  eap1370_write_codec(sc, 0x17, 0x0);
  eap_hw_if = &eap1370_hw_if;
  ctl.dev = 8;
  ctl.type = 2;
  ctl.un.mask = 1 << 1 | 1 << 2 |
      1 << 3 | 1 << 4 | 1 << 5 |
      1 << 6;
  eap_hw_if->set_port(sc, &ctl);
  ctl.type = 3;
  ctl.un.value.num_channels = 1;
  for (ctl.dev = 0; ctl.dev < 6;
       ctl.dev++) {
   ctl.un.value.level[0] = 200;
   eap_hw_if->set_port(sc, &ctl);
  }
  ctl.un.value.level[0] = 0;
  eap_hw_if->set_port(sc, &ctl);
  ctl.dev = 9;
  ctl.type = 1;
  ctl.un.ord = 0;
  eap_hw_if->set_port(sc, &ctl);
  ctl.dev = 7;
  ctl.type = 2;
  ctl.un.mask = 1 << 6;
  eap_hw_if->set_port(sc, &ctl);
 } else {
                bus_space_write_4((sc)->iot, (sc)->ioh, (0x20), (0));
  bus_space_write_4((sc)->iot, (sc)->ioh, (0x00), (0));
  bus_space_write_4((sc)->iot, (sc)->ioh, (0x18), (0));
  if (sc->sc_ct5880) {
   bus_space_write_4((sc)->iot, (sc)->ioh, (0x04), (0x20000000));
   delay(20000);
  }
                bus_space_write_4((sc)->iot, (sc)->ioh, (0x00), (0x00004000));
                delay(20);
                bus_space_write_4((sc)->iot, (sc)->ioh, (0x00), (0));
  bus_space_write_4((sc)->iot, (sc)->ioh, (0x10), (0x00400000));
  for (i = 0; i < 0x80; i++)
   eap1371_src_write(sc, i, 0);
  eap1371_src_write(sc, 0x78 + 0x00, ((16)<<4));
  eap1371_src_write(sc, 0x78 + 0x01, ((16)<<10));
  eap1371_src_write(sc, 0x78 + 0x03, 0);
  eap1371_src_write(sc, 0x6c, ((16)<<8));
  eap1371_src_write(sc, 0x6d, ((16)<<8));
  eap1371_src_write(sc, 0x74 + 0x00, ((16)<<4));
  eap1371_src_write(sc, 0x74 + 0x01, ((16)<<10));
  eap1371_src_write(sc, 0x74 + 0x03, 0);
  eap1371_src_write(sc, 0x7c, ((1)<<12));
  eap1371_src_write(sc, 0x7d, ((1)<<12));
  eap1371_src_write(sc, 0x70 + 0x01, ((16)<<10));
  eap1371_src_write(sc, 0x70 + 0x00, ((16)<<4));
  eap1371_src_write(sc, 0x70 + 0x03, 0);
  eap1371_src_write(sc, 0x7e, ((1)<<12));
  eap1371_src_write(sc, 0x7f, ((1)<<12));
  bus_space_write_4((sc)->iot, (sc)->ioh, (0x10), (0));
  sc->host_if.arg = sc;
  sc->host_if.attach = eap1371_attach_codec;
  sc->host_if.read = eap1371_read_codec;
  sc->host_if.write = eap1371_write_codec;
  sc->host_if.reset = eap1371_reset_codec;
  sc->host_if.flags = eap_flags_codec;
  sc->flags = AC97_HOST_DONT_READ;
  if (ac97_attach(&sc->host_if) == 0) {
   bus_space_write_4((sc)->iot, (sc)->ioh, (0x20), (0x00000200 | 0x00000400));
  } else
   return;
  eap_hw_if = &eap1371_hw_if;
 }
 audio_attach_mi(eap_hw_if, sc, &sc->sc_dev);
 sc->sc_mididev = midi_attach_mi(&eap_midi_hw_if, sc, &sc->sc_dev);
}
int
eap_resume(struct eap_softc *sc)
{
 int i;
 if (!sc->sc_1371) {
  bus_space_write_4((sc)->iot, (sc)->ioh, (0x20), (0x00000200 | 0x00000400));
  bus_space_write_4((sc)->iot, (sc)->ioh, (0x00), (0x00000002));
  eap1370_write_codec(sc, 0x16, 0x02);
  eap1370_write_codec(sc, 0x16, 0x02 | 0x01);
  eap1370_write_codec(sc, 0x17, 0x0);
 } else {
  bus_space_write_4((sc)->iot, (sc)->ioh, (0x20), (0));
  bus_space_write_4((sc)->iot, (sc)->ioh, (0x00), (0));
  bus_space_write_4((sc)->iot, (sc)->ioh, (0x18), (0));
  if (sc->sc_ct5880) {
   bus_space_write_4((sc)->iot, (sc)->ioh, (0x04), (0x20000000));
   delay(20000);
  }
  ac97_resume(&sc->host_if, sc->codec_if);
  bus_space_write_4((sc)->iot, (sc)->ioh, (0x10), (0x00400000));
  for (i = 0; i < 0x80; i++)
   eap1371_src_write(sc, i, 0);
  eap1371_src_write(sc, 0x78 + 0x00, ((16)<<4));
  eap1371_src_write(sc, 0x78 + 0x01, ((16)<<10));
  eap1371_src_write(sc, 0x78 + 0x03, 0);
  eap1371_src_write(sc, 0x6c, ((16)<<8));
  eap1371_src_write(sc, 0x6d, ((16)<<8));
  eap1371_src_write(sc, 0x74 + 0x00, ((16)<<4));
  eap1371_src_write(sc, 0x74 + 0x01, ((16)<<10));
  eap1371_src_write(sc, 0x74 + 0x03, 0);
  eap1371_src_write(sc, 0x7c, ((1)<<12));
  eap1371_src_write(sc, 0x7d, ((1)<<12));
  eap1371_src_write(sc, 0x70 + 0x01, ((16)<<10));
  eap1371_src_write(sc, 0x70 + 0x00, ((16)<<4));
  eap1371_src_write(sc, 0x70 + 0x03, 0);
  eap1371_src_write(sc, 0x7e, ((1)<<12));
  eap1371_src_write(sc, 0x7f, ((1)<<12));
  bus_space_write_4((sc)->iot, (sc)->ioh, (0x10), (0));
  bus_space_write_4((sc)->iot, (sc)->ioh, (0x20), (0x00000200 | 0x00000400));
 }
 return (0);
}
int
eap1371_attach_codec(void *sc_, struct ac97_codec_if *codec_if)
{
 struct eap_softc *sc = sc_;
 sc->codec_if = codec_if;
 return (0);
}
void
eap1371_reset_codec(void *sc_)
{
 struct eap_softc *sc = sc_;
 u_int32_t icsc;
 __mtx_enter(&audio_lock );
 icsc = bus_space_read_4((sc)->iot, (sc)->ioh, (0x00));
 bus_space_write_4((sc)->iot, (sc)->ioh, (0x00), (icsc | 0x00004000));
 delay(20);
 bus_space_write_4((sc)->iot, (sc)->ioh, (0x00), (icsc & ~0x00004000));
 delay(1);
 __mtx_leave(&audio_lock );
 return;
}
int
eap_intr(void *p)
{
 struct eap_softc *sc = p;
 u_int32_t intr, sic;
 __mtx_enter(&audio_lock );
 intr = bus_space_read_4((sc)->iot, (sc)->ioh, (0x04));
 if (!(intr & 0x80000000)) {
  __mtx_leave(&audio_lock );
  return (0);
 }
 sic = bus_space_read_4((sc)->iot, (sc)->ioh, (0x20));
 ;
 if (intr & 0x00000001) {
  bus_space_write_4((sc)->iot, (sc)->ioh, (0x20), (sic & ~0x00000400));
  bus_space_write_4((sc)->iot, (sc)->ioh, (0x20), (sic | 0x00000400));
  if (sc->sc_rintr)
   sc->sc_rintr(sc->sc_rarg);
 }
 if (intr & 0x00000002) {
  bus_space_write_4((sc)->iot, (sc)->ioh, (0x20), (sic & ~0x00000200));
  bus_space_write_4((sc)->iot, (sc)->ioh, (0x20), (sic | 0x00000200));
  if (sc->sc_pintr)
   sc->sc_pintr(sc->sc_parg);
 }
 if (intr & 0x00000008) {
  u_int32_t data;
  if (bus_space_read_1((sc)->iot, (sc)->ioh, (0x09)) & 0x80) {
   while (bus_space_read_1((sc)->iot, (sc)->ioh, (0x09)) & 0x01) {
    data = bus_space_read_1((sc)->iot, (sc)->ioh, (0x08));
    if (sc->sc_iintr)
     sc->sc_iintr(sc->sc_arg, data);
   }
  }
  if (bus_space_read_1((sc)->iot, (sc)->ioh, (0x09)) & 0x04) {
   sc->sc_uctrl &= ~0x20;
   bus_space_write_1((sc)->iot, (sc)->ioh, (0x09), (sc->sc_uctrl));
   if (sc->sc_ointr)
    sc->sc_ointr(sc->sc_arg);
  }
 }
 __mtx_leave(&audio_lock );
 return (1);
}
int
eap_allocmem(struct eap_softc *sc, size_t size, size_t align, struct eap_dma *p)
{
 int error;
 p->size = size;
 error = bus_dmamem_alloc(sc->sc_dmatag, p->size, align, 0,
     p->segs, (sizeof((p->segs)) / sizeof((p->segs)[0])),
     &p->nsegs, 0x0001);
 if (error)
  return (error);
 error = bus_dmamem_map(sc->sc_dmatag, p->segs, p->nsegs, p->size,
     &p->addr, 0x0001|0x0004);
 if (error)
  goto free;
 error = bus_dmamap_create(sc->sc_dmatag, p->size, 1, p->size,
     0, 0x0001, &p->map);
 if (error)
  goto unmap;
 error = bus_dmamap_load(sc->sc_dmatag, p->map, p->addr, p->size, ((void *)0),
     0x0001);
 if (error)
  goto destroy;
 return (0);
destroy:
 bus_dmamap_destroy(sc->sc_dmatag, p->map);
unmap:
 bus_dmamem_unmap(sc->sc_dmatag, p->addr, p->size);
free:
 bus_dmamem_free(sc->sc_dmatag, p->segs, p->nsegs);
 return (error);
}
int
eap_freemem(struct eap_softc *sc, struct eap_dma *p)
{
 bus_dmamap_unload(sc->sc_dmatag, p->map);
 bus_dmamap_destroy(sc->sc_dmatag, p->map);
 bus_dmamem_unmap(sc->sc_dmatag, p->addr, p->size);
 bus_dmamem_free(sc->sc_dmatag, p->segs, p->nsegs);
 return (0);
}
int
eap_open(void *addr, int flags)
{
 return (0);
}
void
eap_close(void *addr)
{
 struct eap_softc *sc = addr;
 eap_halt_output(sc);
 eap_halt_input(sc);
 sc->sc_pintr = 0;
 sc->sc_rintr = 0;
}
int
eap_set_params(void *addr, int setmode, int usemode,
    struct audio_params *play, struct audio_params *rec)
{
 struct eap_softc *sc = addr;
 struct audio_params *p;
 int mode;
 u_int32_t div;
 if (!sc->sc_1371) {
  if (play->sample_rate != rec->sample_rate &&
      usemode == (0x01 | 0x02)) {
   if (setmode == 0x01) {
    rec->sample_rate = play->sample_rate;
    setmode |= 0x02;
   } else if (setmode == 0x02) {
    play->sample_rate = rec->sample_rate;
    setmode |= 0x01;
   } else
    return (22);
  }
 }
 for (mode = 0x02; mode != -1;
     mode = mode == 0x02 ? 0x01 : -1) {
  if ((setmode & mode) == 0)
   continue;
  p = mode == 0x01 ? play : rec;
  if (sc->sc_1371)
   p->sample_rate = 48000;
  if (p->sample_rate < 4000)
   p->sample_rate = 4000;
  if (p->sample_rate > 48000)
   p->sample_rate = 48000;
  if (p->precision > 16)
   p->precision = 16;
  if (p->channels > 2)
   p->channels = 2;
  switch (p->encoding) {
  case 6:
   if (p->precision != 16)
    return 22;
   break;
  case 8:
  case 9:
   if (p->precision != 8)
    return 22;
  default:
   return (22);
  }
  p->bps = (p->precision) <= 8 ? 1 : ((p->precision) <= 16 ? 2 : 4);
  p->msb = 1;
 }
 if (!sc->sc_1371) {
  ;
  div = bus_space_read_4((sc)->iot, (sc)->ioh, (0x00)) & ~0x1fff0000;
  if (usemode == 0x02)
   div |= (((1411200 / rec->sample_rate - 2)&0x1fff)<<16);
  else
   div |= (((1411200 / play->sample_rate - 2)&0x1fff)<<16);
  div |= 0x00000400;
  bus_space_write_4((sc)->iot, (sc)->ioh, (0x00), (div));
  ;
 }
 return (0);
}
int
eap_round_blocksize(void *addr, int blk)
{
 return ((blk + 31) & -32);
}
int
eap_trigger_output(
 void *addr,
 void *start,
 void *end,
 int blksize,
 void (*intr)(void *),
 void *arg,
 struct audio_params *param)
{
 struct eap_softc *sc = addr;
 struct eap_dma *p;
 u_int32_t icsc, sic;
 int sampshift;
 if (sc->sc_prun)
  panic("eap_trigger_output: already running");
 sc->sc_prun = 1;
 ;
 sc->sc_pintr = intr;
 sc->sc_parg = arg;
 __mtx_enter(&audio_lock );
 sic = bus_space_read_4((sc)->iot, (sc)->ioh, (0x20));
 sic &= ~(0x00000008 | 0x00000004 | 0x003f0000);
 sic |= ((0) << 16) | ((param->precision / 8) << 19);
 sampshift = 0;
 if (param->precision == 16) {
  sic |= 0x00000008;
  sampshift++;
 }
 if (param->channels == 2) {
  sic |= 0x00000004;
  sampshift++;
 }
 bus_space_write_4((sc)->iot, (sc)->ioh, (0x20), (sic & ~0x00000200));
 bus_space_write_4((sc)->iot, (sc)->ioh, (0x20), (sic | 0x00000200));
 for (p = sc->sc_dmas; p && ((void *)((p)->addr)) != start; p = p->next)
  ;
 if (!p) {
  __mtx_leave(&audio_lock );
  printf("eap_trigger_output: bad addr %p\n", start);
  return (22);
 }
 ;
 bus_space_write_4((sc)->iot, (sc)->ioh, (0x0c), (0xc));
 bus_space_write_4((sc)->iot, (sc)->ioh, (0x38), (((p)->map->dm_segs[0].ds_addr)));
 bus_space_write_4((sc)->iot, (sc)->ioh, (0x3c), ((((0)<<16) | ((((char *)end - (char *)start) >> 2) - 1))));
 bus_space_write_4((sc)->iot, (sc)->ioh, (0x28), ((blksize >> sampshift) - 1));
 if (sc->sc_1371)
  bus_space_write_4((sc)->iot, (sc)->ioh, (0x10), (0));
 icsc = bus_space_read_4((sc)->iot, (sc)->ioh, (0x00));
 bus_space_write_4((sc)->iot, (sc)->ioh, (0x00), (icsc | 0x00000020));
 ;
 __mtx_leave(&audio_lock );
 return (0);
}
int
eap_trigger_input(
 void *addr,
 void *start,
 void *end,
 int blksize,
 void (*intr)(void *),
 void *arg,
 struct audio_params *param)
{
 struct eap_softc *sc = addr;
 struct eap_dma *p;
 u_int32_t icsc, sic;
 int sampshift;
 if (sc->sc_rrun)
  panic("eap_trigger_input: already running");
 sc->sc_rrun = 1;
 ;
 sc->sc_rintr = intr;
 sc->sc_rarg = arg;
 __mtx_enter(&audio_lock );
 sic = bus_space_read_4((sc)->iot, (sc)->ioh, (0x20));
 sic &= ~(0x00000020 | 0x00000010);
 sampshift = 0;
 if (param->precision == 16) {
  sic |= 0x00000020;
  sampshift++;
 }
 if (param->channels == 2) {
  sic |= 0x00000010;
  sampshift++;
 }
 bus_space_write_4((sc)->iot, (sc)->ioh, (0x20), (sic & ~0x00000400));
 bus_space_write_4((sc)->iot, (sc)->ioh, (0x20), (sic | 0x00000400));
 for (p = sc->sc_dmas; p && ((void *)((p)->addr)) != start; p = p->next)
  ;
 if (!p) {
  __mtx_leave(&audio_lock );
  printf("eap_trigger_input: bad addr %p\n", start);
  return (22);
 }
 ;
 bus_space_write_4((sc)->iot, (sc)->ioh, (0x0c), (0xd));
 bus_space_write_4((sc)->iot, (sc)->ioh, (0x30), (((p)->map->dm_segs[0].ds_addr)));
 bus_space_write_4((sc)->iot, (sc)->ioh, (0x34), ((((0)<<16) | ((((char *)end - (char *)start) >> 2) - 1))));
 bus_space_write_4((sc)->iot, (sc)->ioh, (0x2c), ((blksize >> sampshift) - 1));
 if (sc->sc_1371)
  bus_space_write_4((sc)->iot, (sc)->ioh, (0x10), (0));
 icsc = bus_space_read_4((sc)->iot, (sc)->ioh, (0x00));
 bus_space_write_4((sc)->iot, (sc)->ioh, (0x00), (icsc | 0x00000010));
 ;
 __mtx_leave(&audio_lock );
 return (0);
}
int
eap_halt_output(void *addr)
{
 struct eap_softc *sc = addr;
 u_int32_t icsc;
 ;
 __mtx_enter(&audio_lock );
 icsc = bus_space_read_4((sc)->iot, (sc)->ioh, (0x00));
 bus_space_write_4((sc)->iot, (sc)->ioh, (0x00), (icsc & ~0x00000020));
 sc->sc_prun = 0;
 __mtx_leave(&audio_lock );
 return (0);
}
int
eap_halt_input(void *addr)
{
 struct eap_softc *sc = addr;
 u_int32_t icsc;
 ;
 __mtx_enter(&audio_lock );
 icsc = bus_space_read_4((sc)->iot, (sc)->ioh, (0x00));
 bus_space_write_4((sc)->iot, (sc)->ioh, (0x00), (icsc & ~0x00000010));
 sc->sc_rrun = 0;
 __mtx_leave(&audio_lock );
 return (0);
}
int
eap1371_mixer_set_port(void *addr, mixer_ctrl_t *cp)
{
 struct eap_softc *sc = addr;
 return (sc->codec_if->vtbl->mixer_set_port(sc->codec_if, cp));
}
int
eap1371_mixer_get_port(void *addr, mixer_ctrl_t *cp)
{
 struct eap_softc *sc = addr;
 return (sc->codec_if->vtbl->mixer_get_port(sc->codec_if, cp));
}
int
eap1371_query_devinfo(void *addr, mixer_devinfo_t *dip)
{
 struct eap_softc *sc = addr;
 return (sc->codec_if->vtbl->query_devinfo(sc->codec_if, dip));
}
void
eap1370_set_mixer(struct eap_softc *sc, int a, int d)
{
 eap1370_write_codec(sc, a, d);
 sc->sc_port[a] = d;
 ;
}
int
eap1370_mixer_set_port(void *addr, mixer_ctrl_t *cp)
{
 struct eap_softc *sc = addr;
 int lval, rval, l, r, la, ra;
 int l1, r1, l2, r2, m, o1, o2;
 if (cp->dev == 7) {
  if (cp->type != 2)
   return (22);
  m = sc->sc_record_source = cp->un.mask;
  l1 = l2 = r1 = r2 = 0;
  if (m & (1 << 1))
   l2 |= 0x04, r2 |= 0x04;
  if (m & (1 << 2))
   l1 |= 0x40, r1 |= 0x20;
  if (m & (1 << 3))
   l1 |= 0x04, r1 |= 0x02;
  if (m & (1 << 4))
   l1 |= 0x10, r1 |= 0x08;
  if (m & (1 << 5))
   l2 |= 0x10, r2 |= 0x08;
  if (m & (1 << 6))
   l2 |= 0x80, r2 |= 0x80;
  eap1370_set_mixer(sc, 0x12, l1);
  eap1370_set_mixer(sc, 0x13, r1);
  eap1370_set_mixer(sc, 0x14, l2);
  eap1370_set_mixer(sc, 0x15, r2);
  return (0);
 }
 if (cp->dev == 8) {
  if (cp->type != 2)
   return (22);
  m = sc->sc_input_source = cp->un.mask;
  o1 = o2 = 0;
  if (m & (1 << 1))
   o2 |= 0x08 | 0x04;
  if (m & (1 << 2))
   o1 |= 0x40 | 0x20;
  if (m & (1 << 3))
   o1 |= 0x04 | 0x02;
  if (m & (1 << 4))
   o1 |= 0x10 | 0x08;
  if (m & (1 << 5))
   o2 |= 0x20 | 0x10;
  if (m & (1 << 6))
   o1 |= 0x01;
  eap1370_set_mixer(sc, 0x10, o1);
  eap1370_set_mixer(sc, 0x11, o2);
  return (0);
 }
 if (cp->dev == 9) {
  if (cp->type != 1)
   return (22);
  if (cp->un.ord != 0 && cp->un.ord != 1)
   return (22);
  sc->sc_mic_preamp = cp->un.ord;
  eap1370_set_mixer(sc, 0x19, cp->un.ord);
  return (0);
 }
 if (cp->type != 3)
  return (22);
 if (cp->un.value.num_channels == 1)
  lval = rval = cp->un.value.level[0];
 else if (cp->un.value.num_channels == 2) {
  lval = cp->un.value.level[0];
  rval = cp->un.value.level[1];
 } else
  return (22);
 ra = -1;
 switch (cp->dev) {
 case 0:
  l = (0x1f - ((lval) >> 3));
  r = (0x1f - ((rval) >> 3));
  la = 0x00;
  ra = 0x01;
  break;
 case 6:
  if (cp->un.value.num_channels != 1)
   return (22);
  la = 0x0e;
  goto lr;
 case 1:
  la = 0x02;
  ra = 0x03;
  goto lr;
 case 2:
  la = 0x04;
  ra = 0x05;
  goto lr;
 case 3:
  la = 0x06;
  ra = 0x07;
  goto lr;
 case 4:
  la = 0x08;
  ra = 0x09;
  goto lr;
 case 5:
  la = 0x0a;
  ra = 0x0b;
 lr:
  l = (0x1f - ((lval) >> 3));
  r = (0x1f - ((rval) >> 3));
  break;
 default:
  return (22);
 }
 eap1370_set_mixer(sc, la, l);
 if (ra >= 0) {
  eap1370_set_mixer(sc, ra, r);
 }
 return (0);
}
int
eap1370_mixer_get_port(void *addr, mixer_ctrl_t *cp)
{
 struct eap_softc *sc = addr;
 int la, ra, l, r;
 switch (cp->dev) {
 case 7:
  if (cp->type != 2)
   return (22);
  cp->un.mask = sc->sc_record_source;
  return (0);
 case 8:
  if (cp->type != 2)
   return (22);
  cp->un.mask = sc->sc_input_source;
  return (0);
 case 9:
  if (cp->type != 1)
   return (22);
  cp->un.ord = sc->sc_mic_preamp;
  return (0);
 case 0:
  l = ((0x1f - (sc->sc_port[0x00])) << 3);
  r = ((0x1f - (sc->sc_port[0x01])) << 3);
  break;
 case 6:
  if (cp->un.value.num_channels != 1)
   return (22);
  la = ra = 0x0e;
  goto lr;
 case 1:
  la = 0x02;
  ra = 0x03;
  goto lr;
 case 2:
  la = 0x04;
  ra = 0x05;
  goto lr;
 case 3:
  la = 0x06;
  ra = 0x07;
  goto lr;
 case 4:
  la = 0x08;
  ra = 0x09;
  goto lr;
 case 5:
  la = 0x0a;
  ra = 0x0b;
 lr:
  l = ((0x1f - (sc->sc_port[la])) << 3);
  r = ((0x1f - (sc->sc_port[ra])) << 3);
  break;
 default:
  return (22);
 }
 if (cp->un.value.num_channels == 1)
  cp->un.value.level[0] = (l+r) / 2;
 else if (cp->un.value.num_channels == 2) {
  cp->un.value.level[0] = l;
  cp->un.value.level[1] = r;
 } else
  return (22);
 return (0);
}
int
eap1370_query_devinfo(void *addr, mixer_devinfo_t *dip)
{
 switch (dip->index) {
 case 0:
  dip->type = 3;
  dip->mixer_class = 10;
  dip->prev = dip->next = -1;
  strlcpy(dip->label.name, "master", sizeof dip->label.name);
  dip->un.v.num_channels = 2;
  strlcpy(dip->un.v.units.name, "volume",
      sizeof dip->un.v.units.name);
  return (0);
 case 1:
  dip->type = 3;
  dip->mixer_class = 12;
  dip->prev = -1;
  dip->next = -1;
  strlcpy(dip->label.name, "dac", sizeof dip->label.name);
  dip->un.v.num_channels = 2;
  strlcpy(dip->un.v.units.name, "volume",
      sizeof dip->un.v.units.name);
  return (0);
 case 2:
  dip->type = 3;
  dip->mixer_class = 12;
  dip->prev = -1;
  dip->next = -1;
  strlcpy(dip->label.name, "fmsynth",
      sizeof dip->label.name);
  dip->un.v.num_channels = 2;
  strlcpy(dip->un.v.units.name, "volume",
      sizeof dip->un.v.units.name);
  return (0);
 case 3:
  dip->type = 3;
  dip->mixer_class = 12;
  dip->prev = -1;
  dip->next = -1;
  strlcpy(dip->label.name, "cd", sizeof dip->label.name);
  dip->un.v.num_channels = 2;
  strlcpy(dip->un.v.units.name, "volume",
      sizeof dip->un.v.units.name);
  return (0);
 case 4:
  dip->type = 3;
  dip->mixer_class = 12;
  dip->prev = -1;
  dip->next = -1;
  strlcpy(dip->label.name, "line", sizeof dip->label.name);
  dip->un.v.num_channels = 2;
  strlcpy(dip->un.v.units.name, "volume",
      sizeof dip->un.v.units.name);
  return (0);
 case 5:
  dip->type = 3;
  dip->mixer_class = 12;
  dip->prev = -1;
  dip->next = -1;
  strlcpy(dip->label.name, "aux", sizeof dip->label.name);
  dip->un.v.num_channels = 2;
  strlcpy(dip->un.v.units.name, "volume",
      sizeof dip->un.v.units.name);
  return (0);
 case 6:
  dip->type = 3;
  dip->mixer_class = 12;
  dip->prev = -1;
  dip->next = 9;
  strlcpy(dip->label.name, "mic",
      sizeof dip->label.name);
  dip->un.v.num_channels = 1;
  strlcpy(dip->un.v.units.name, "volume",
      sizeof dip->un.v.units.name);
  return (0);
 case 7:
  dip->mixer_class = 11;
  dip->prev = dip->next = -1;
  strlcpy(dip->label.name, "source", sizeof dip->label.name);
  dip->type = 2;
  dip->un.s.num_mem = 6;
  strlcpy(dip->un.s.member[0].label.name, "mic",
      sizeof dip->un.s.member[0].label.name);
  dip->un.s.member[0].mask = 1 << 6;
  strlcpy(dip->un.s.member[1].label.name, "cd",
      sizeof dip->un.s.member[1].label.name);
  dip->un.s.member[1].mask = 1 << 3;
  strlcpy(dip->un.s.member[2].label.name, "line",
      sizeof dip->un.s.member[2].label.name);
  dip->un.s.member[2].mask = 1 << 4;
  strlcpy(dip->un.s.member[3].label.name, "fmsynth",
      sizeof dip->un.s.member[3].label.name);
  dip->un.s.member[3].mask = 1 << 2;
  strlcpy(dip->un.s.member[4].label.name, "aux",
      sizeof dip->un.s.member[4].label.name);
  dip->un.s.member[4].mask = 1 << 5;
  strlcpy(dip->un.s.member[5].label.name, "dac",
      sizeof dip->un.s.member[5].label.name);
  dip->un.s.member[5].mask = 1 << 1;
  return (0);
 case 8:
  dip->mixer_class = 12;
  dip->prev = dip->next = -1;
  strlcpy(dip->label.name, "source", sizeof dip->label.name);
  dip->type = 2;
  dip->un.s.num_mem = 6;
  strlcpy(dip->un.s.member[0].label.name, "mic",
      sizeof dip->un.s.member[0].label.name);
  dip->un.s.member[0].mask = 1 << 6;
  strlcpy(dip->un.s.member[1].label.name, "cd",
      sizeof dip->un.s.member[1].label.name);
  dip->un.s.member[1].mask = 1 << 3;
  strlcpy(dip->un.s.member[2].label.name, "line",
      sizeof dip->un.s.member[2].label.name);
  dip->un.s.member[2].mask = 1 << 4;
  strlcpy(dip->un.s.member[3].label.name, "fmsynth",
      sizeof dip->un.s.member[3].label.name);
  dip->un.s.member[3].mask = 1 << 2;
  strlcpy(dip->un.s.member[4].label.name, "aux",
      sizeof dip->un.s.member[4].label.name);
  dip->un.s.member[4].mask = 1 << 5;
  strlcpy(dip->un.s.member[5].label.name, "dac",
      sizeof dip->un.s.member[5].label.name);
  dip->un.s.member[5].mask = 1 << 1;
  return (0);
 case 9:
  dip->type = 1;
  dip->mixer_class = 12;
  dip->prev = 6;
  dip->next = -1;
  strlcpy(dip->label.name, "preamp", sizeof dip->label.name);
  dip->un.e.num_mem = 2;
  strlcpy(dip->un.e.member[0].label.name, "off",
      sizeof dip->un.e.member[0].label.name);
  dip->un.e.member[0].ord = 0;
  strlcpy(dip->un.e.member[1].label.name, "on",
      sizeof dip->un.e.member[1].label.name);
  dip->un.e.member[1].ord = 1;
  return (0);
 case 10:
  dip->type = 0;
  dip->mixer_class = 10;
  dip->next = dip->prev = -1;
  strlcpy(dip->label.name, "outputs",
      sizeof dip->label.name);
  return (0);
 case 11:
  dip->type = 0;
  dip->mixer_class = 11;
  dip->next = dip->prev = -1;
  strlcpy(dip->label.name, "record", sizeof dip->label.name);
  return (0);
 case 12:
  dip->type = 0;
  dip->mixer_class = 12;
  dip->next = dip->prev = -1;
  strlcpy(dip->label.name, "inputs", sizeof dip->label.name);
  return (0);
 }
 return (6);
}
void *
eap_malloc(void *addr, int direction, size_t size, int pool, int flags)
{
 struct eap_softc *sc = addr;
 struct eap_dma *p;
 int error;
 p = malloc(sizeof(*p), pool, flags);
 if (!p)
  return (0);
 error = eap_allocmem(sc, size, 16, p);
 if (error) {
  free(p, pool, 0);
  return (0);
 }
 p->next = sc->sc_dmas;
 sc->sc_dmas = p;
 return (((void *)((p)->addr)));
}
void
eap_free(void *addr, void *ptr, int pool)
{
 struct eap_softc *sc = addr;
 struct eap_dma **pp, *p;
 for (pp = &sc->sc_dmas; (p = *pp) != ((void *)0); pp = &p->next) {
  if (((void *)((p)->addr)) == ptr) {
   eap_freemem(sc, p);
   *pp = p->next;
   free(p, pool, 0);
   return;
  }
 }
}
int
eap_get_props(void *addr)
{
 return (0x02 | 0x04 |
     0x01);
}
enum ac97_host_flags
eap_flags_codec(void *v)
{
      struct eap_softc *sc = v;
      return (sc->flags);
}
int
eap_midi_open(void *addr, int flags,
    void (*iintr)(void *, int),
    void (*ointr)(void *),
    void *arg)
{
 struct eap_softc *sc = addr;
 sc->sc_iintr = iintr;
 sc->sc_ointr = ointr;
 sc->sc_arg = arg;
 bus_space_write_4((sc)->iot, (sc)->ioh, (0x00), (bus_space_read_4((sc)->iot, (sc)->ioh, (0x00)) | 0x00000008));
 sc->sc_uctrl = 0;
 if (flags & 0x0001)
  sc->sc_uctrl |= 0x80;
 bus_space_write_1((sc)->iot, (sc)->ioh, (0x09), (sc->sc_uctrl));
 return (0);
}
void
eap_midi_close(void *addr)
{
 struct eap_softc *sc = addr;
 tsleep(sc, 32, "eapclm", hz/10);
 bus_space_write_1((sc)->iot, (sc)->ioh, (0x09), (0));
 bus_space_write_4((sc)->iot, (sc)->ioh, (0x00), (bus_space_read_4((sc)->iot, (sc)->ioh, (0x00)) & ~0x00000008));
 sc->sc_iintr = 0;
 sc->sc_ointr = 0;
}
int
eap_midi_output(void *addr, int d)
{
 struct eap_softc *sc = addr;
 if (!(bus_space_read_1((sc)->iot, (sc)->ioh, (0x09)) & 0x02))
  return 0;
 bus_space_write_1((sc)->iot, (sc)->ioh, (0x08), (d));
 sc->sc_uctrl |= 0x20;
 bus_space_write_1((sc)->iot, (sc)->ioh, (0x09), (sc->sc_uctrl));
 return 1;
}
void
eap_midi_getinfo(void *addr, struct midi_info *mi)
{
 mi->name = "AudioPCI MIDI UART";
 mi->props = 2 | 1;
}
