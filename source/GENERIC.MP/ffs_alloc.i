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
};
int VOP_LOCK(struct vnode *, int);
struct vop_unlock_args {
 struct vnode *a_vp;
};
int VOP_UNLOCK(struct vnode *);
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
int vn_lock(struct vnode *, int);
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
typedef struct { int32_t val[2]; } fsid_t;
struct fid {
 u_short fid_len;
 u_short fid_reserved;
 char fid_data[16];
};
struct export_args {
 int ex_flags;
 uid_t ex_root;
 struct xucred ex_anon;
 struct sockaddr *ex_addr;
 int ex_addrlen;
 struct sockaddr *ex_mask;
 int ex_masklen;
};
struct ufs_args {
 char *fspec;
 struct export_args export_info;
};
struct mfs_args {
 char *fspec;
 struct export_args export_info;
 caddr_t base;
 u_long size;
};
struct iso_args {
 char *fspec;
 struct export_args export_info;
 int flags;
 int sess;
};
struct nfs_args {
 int version;
 struct sockaddr *addr;
 int addrlen;
 int sotype;
 int proto;
 u_char *fh;
 int fhsize;
 int flags;
 int wsize;
 int rsize;
 int readdirsize;
 int timeo;
 int retrans;
 int maxgrouplist;
 int readahead;
 int leaseterm;
 int deadthresh;
 char *hostname;
 int acregmin;
 int acregmax;
 int acdirmin;
 int acdirmax;
};
struct msdosfs_args {
 char *fspec;
 struct export_args export_info;
 uid_t uid;
 gid_t gid;
 mode_t mask;
 int flags;
};
struct ntfs_args {
 char *fspec;
 struct export_args export_info;
 uid_t uid;
 gid_t gid;
 mode_t mode;
 u_long flag;
};
struct udf_args {
 char *fspec;
 u_int32_t lastblock;
};
struct tmpfs_args {
 int ta_version;
 ino_t ta_nodes_max;
 off_t ta_size_max;
 uid_t ta_root_uid;
 gid_t ta_root_gid;
 mode_t ta_root_mode;
};
struct fusefs_args {
 char *name;
 int fd;
 int max_read;
};
union mount_info {
 struct ufs_args ufs_args;
 struct mfs_args mfs_args;
 struct nfs_args nfs_args;
 struct iso_args iso_args;
 struct msdosfs_args msdosfs_args;
 struct ntfs_args ntfs_args;
 struct tmpfs_args tmpfs_args;
 char __align[160];
};
struct statfs {
 u_int32_t f_flags;
 u_int32_t f_bsize;
 u_int32_t f_iosize;
 u_int64_t f_blocks;
 u_int64_t f_bfree;
 int64_t f_bavail;
 u_int64_t f_files;
 u_int64_t f_ffree;
 int64_t f_favail;
 u_int64_t f_syncwrites;
 u_int64_t f_syncreads;
 u_int64_t f_asyncwrites;
 u_int64_t f_asyncreads;
 fsid_t f_fsid;
 u_int32_t f_namemax;
 uid_t f_owner;
 u_int64_t f_ctime;
 char f_fstypename[16];
 char f_mntonname[90];
 char f_mntfromname[90];
 char f_mntfromspec[90];
 union mount_info mount_info;
};
struct vnodelst { struct vnode *lh_first; };
struct mount {
 struct { struct mount *tqe_next; struct mount **tqe_prev; } mnt_list;
 struct { struct mount *sle_next; } mnt_dounmount;
 const struct vfsops *mnt_op;
 struct vfsconf *mnt_vfc;
 struct vnode *mnt_vnodecovered;
 struct vnode *mnt_syncer;
 struct vnodelst mnt_vnodelist;
 struct rwlock mnt_lock;
 int mnt_flag;
 struct statfs mnt_stat;
 void *mnt_data;
};
struct fhandle {
 fsid_t fh_fsid;
 struct fid fh_fid;
};
typedef struct fhandle fhandle_t;
struct vfsconf {
 const struct vfsops *vfc_vfsops;
 char vfc_name[16];
 int vfc_typenum;
 int vfc_refcount;
 int vfc_flags;
 struct vfsconf *vfc_next;
 size_t vfc_datasize;
};
struct bcachestats {
 int64_t numbufs;
 int64_t numbufpages;
 int64_t numdirtypages;
 int64_t numcleanpages;
 int64_t pendingwrites;
 int64_t pendingreads;
 int64_t numwrites;
 int64_t numreads;
 int64_t cachehits;
 int64_t busymapped;
 int64_t dmapages;
 int64_t highpages;
 int64_t delwribufs;
 int64_t kvaslots;
 int64_t kvaslots_avail;
 int64_t highflips;
 int64_t highflops;
 int64_t dmaflips;
};
extern struct bcachestats bcstats;
extern long buflowpages, bufhighpages, bufbackpages;
extern int bufcachepercent;
extern void bufadjust(int);
struct uvm_constraint_range;
extern int bufbackoff(struct uvm_constraint_range*, long);
struct nameidata;
struct mbuf;
extern int maxvfsconf;
extern struct vfsconf *vfsconf;
struct vfsops {
 int (*vfs_mount)(struct mount *mp, const char *path,
        void *data,
        struct nameidata *ndp, struct proc *p);
 int (*vfs_start)(struct mount *mp, int flags,
        struct proc *p);
 int (*vfs_unmount)(struct mount *mp, int mntflags,
        struct proc *p);
 int (*vfs_root)(struct mount *mp, struct vnode **vpp);
 int (*vfs_quotactl)(struct mount *mp, int cmds, uid_t uid,
        caddr_t arg, struct proc *p);
 int (*vfs_statfs)(struct mount *mp, struct statfs *sbp,
        struct proc *p);
 int (*vfs_sync)(struct mount *mp, int waitfor, int stall,
        struct ucred *cred, struct proc *p);
 int (*vfs_vget)(struct mount *mp, ino_t ino,
        struct vnode **vpp);
 int (*vfs_fhtovp)(struct mount *mp, struct fid *fhp,
         struct vnode **vpp);
 int (*vfs_vptofh)(struct vnode *vp, struct fid *fhp);
 int (*vfs_init)(struct vfsconf *);
 int (*vfs_sysctl)(int *, u_int, void *, size_t *, void *,
         size_t, struct proc *);
 int (*vfs_checkexp)(struct mount *mp, struct mbuf *nam,
        int *extflagsp, struct ucred **credanonp);
};
struct radix_node {
 struct radix_mask *rn_mklist;
 struct radix_node *rn_p;
 short rn_b;
 char rn_bmask;
 u_char rn_flags;
 union {
  struct {
   caddr_t rn_Key;
   caddr_t rn_Mask;
   struct radix_node *rn_Dupedkey;
  } rn_leaf;
  struct {
   int rn_Off;
   struct radix_node *rn_L;
   struct radix_node *rn_R;
  } rn_node;
 } rn_u;
};
struct radix_mask {
 short rm_b;
 char rm_unused;
 u_char rm_flags;
 struct radix_mask *rm_mklist;
 union {
  caddr_t rmu_mask;
  struct radix_node *rmu_leaf;
 } rm_rmu;
 int rm_refs;
};
struct radix_node_head {
 struct radix_node *rnh_treetop;
 int rnh_addrsize;
 int rnh_pktsize;
 struct radix_node rnh_nodes[3];
 u_int rnh_rtableid;
};
void rn_init(unsigned int);
int rn_inithead(void **, int);
int rn_walktree(struct radix_node_head *,
     int (*)(struct radix_node *, void *, u_int), void *);
struct radix_node *rn_addroute(void *, void *, struct radix_node_head *,
       struct radix_node [2], u_int8_t);
struct radix_node *rn_delete(void *, void *, struct radix_node_head *,
       struct radix_node *);
struct radix_node *rn_lookup(void *, void *, struct radix_node_head *);
struct radix_node *rn_match(void *, struct radix_node_head *);
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
struct netcred {
 struct radix_node netc_rnodes[2];
 int netc_exflags;
 struct ucred netc_anon;
};
struct netexport {
 struct netcred ne_defexported;
 struct radix_node_head *ne_rtable_inet;
};
int vfs_busy(struct mount *, int);
int vfs_isbusy(struct mount *);
int vfs_mount_foreach_vnode(struct mount *, int (*func)(struct vnode *,
        void *), void *);
void vfs_getnewfsid(struct mount *);
struct mount *vfs_getvfs(fsid_t *);
int vfs_mountedon(struct vnode *);
int vfs_rootmountalloc(char *, char *, struct mount **);
void vfs_unbusy(struct mount *);
extern struct mntlist { struct mount *tqh_first; struct mount **tqh_last; } mountlist;
int vfs_stall(struct proc *, int);
void vfs_stall_barrier(void);
struct mount *getvfs(fsid_t *);
int vfs_export(struct mount *, struct netexport *, struct export_args *);
struct netcred *vfs_export_lookup(struct mount *, struct netexport *,
     struct mbuf *);
int vfs_allocate_syncvnode(struct mount *);
int speedup_syncer(void);
int vfs_syncwait(struct proc *, int);
void vfs_shutdown(struct proc *);
int dounmount(struct mount *, int, struct proc *);
void vfsinit(void);
int vfs_register(struct vfsconf *);
int vfs_unregister(struct vfsconf *);
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
struct dqblk {
 u_int32_t dqb_bhardlimit;
 u_int32_t dqb_bsoftlimit;
 u_int32_t dqb_curblocks;
 u_int32_t dqb_ihardlimit;
 u_int32_t dqb_isoftlimit;
 u_int32_t dqb_curinodes;
 u_int32_t dqb_btime;
 u_int32_t dqb_itime;
};
enum ufs_quota_flags {
 UFS_QUOTA_NOUID = 0x1,
 UFS_QUOTA_NOGID = 0x2,
 UFS_QUOTA_FORCE = 0x1000
};
struct dquot;
struct inode;
struct mount;
struct proc;
struct ucred;
struct ufsmount;
struct vnode;

int ufs_quota_alloc_blocks2(struct inode *, daddr_t, struct ucred *, enum ufs_quota_flags);
int ufs_quota_free_blocks2(struct inode *, daddr_t, struct ucred *, enum ufs_quota_flags);
int ufs_quota_alloc_inode2(struct inode *, struct ucred *, enum ufs_quota_flags);
int ufs_quota_free_inode2(struct inode *, struct ucred *, enum ufs_quota_flags);
int ufs_quota_delete(struct inode *);
int getinoquota(struct inode *);
int quotaoff(struct proc *, struct mount *, int);
int qsync(struct mount *mp);
int ufs_quotactl(struct mount *, int, uid_t, caddr_t, struct proc *);
void ufs_quota_init(void);

typedef u_int32_t ufsino_t;
struct ufs1_dinode {
 u_int16_t di_mode;
 int16_t di_nlink;
 union {
  u_int16_t oldids[2];
  u_int32_t inumber;
 } di_u;
 u_int64_t di_size;
 int32_t di_atime;
 int32_t di_atimensec;
 int32_t di_mtime;
 int32_t di_mtimensec;
 int32_t di_ctime;
 int32_t di_ctimensec;
 int32_t di_db[12];
 int32_t di_ib[3];
 u_int32_t di_flags;
 int32_t di_blocks;
 int32_t di_gen;
 u_int32_t di_uid;
 u_int32_t di_gid;
 int32_t di_spare[2];
};
struct ufs2_dinode {
 u_int16_t di_mode;
 int16_t di_nlink;
 u_int32_t di_uid;
 u_int32_t di_gid;
 u_int32_t di_blksize;
 u_int64_t di_size;
 u_int64_t di_blocks;
 int64_t di_atime;
 int64_t di_mtime;
 int64_t di_ctime;
 int64_t di_birthtime;
 int32_t di_mtimensec;
 int32_t di_atimensec;
 int32_t di_ctimensec;
 int32_t di_birthnsec;
 int32_t di_gen;
 u_int32_t di_kernflags;
 u_int32_t di_flags;
 int32_t di_extsize;
 int64_t di_extb[2];
 int64_t di_db[12];
 int64_t di_ib[3];
 int64_t di_spare[3];
};
struct direct {
 u_int32_t d_ino;
 u_int16_t d_reclen;
 u_int8_t d_type;
 u_int8_t d_namlen;
 char d_name[255 + 1];
};
struct dirtemplate {
 u_int32_t dot_ino;
 int16_t dot_reclen;
 u_int8_t dot_type;
 u_int8_t dot_namlen;
 char dot_name[4];
 u_int32_t dotdot_ino;
 int16_t dotdot_reclen;
 u_int8_t dotdot_type;
 u_int8_t dotdot_namlen;
 char dotdot_name[4];
};
struct odirtemplate {
 u_int32_t dot_ino;
 int16_t dot_reclen;
 u_int16_t dot_namlen;
 char dot_name[4];
 u_int32_t dotdot_ino;
 int16_t dotdot_reclen;
 u_int16_t dotdot_namlen;
 char dotdot_name[4];
};
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
struct ext2fs_dinode {
 u_int16_t e2di_mode;
 u_int16_t e2di_uid_low;
 u_int32_t e2di_size;
 u_int32_t e2di_atime;
 u_int32_t e2di_ctime;
 u_int32_t e2di_mtime;
 u_int32_t e2di_dtime;
 u_int16_t e2di_gid_low;
 u_int16_t e2di_nlink;
 u_int32_t e2di_nblock;
 u_int32_t e2di_flags;
 u_int32_t e2di_version_lo;
 u_int32_t e2di_blocks[12 +3];
 u_int32_t e2di_gen;
 u_int32_t e2di_facl;
 u_int32_t e2di_size_hi;
 u_int32_t e2di_faddr;
 u_int16_t e2di_nblock_hi;
 u_int16_t e2di_facl_hi;
 u_int16_t e2di_uid_high;
 u_int16_t e2di_gid_high;
 u_int16_t e2di_chksum_lo;
 u_int16_t e2di__reserved;
 u_int16_t e2di_isize;
 u_int16_t e2di_chksum_hi;
 u_int32_t e2di_x_ctime;
 u_int32_t e2di_x_mtime;
 u_int32_t e2di_x_atime;
 u_int32_t e2di_crtime;
 u_int32_t e2di_x_crtime;
 u_int32_t e2di_version_hi;
};
struct m_ext2fs;
void e2fs_i_bswap(struct m_ext2fs *, struct ext2fs_dinode *, struct ext2fs_dinode *);
struct ext4_extent {
 uint32_t e_blk;
 uint16_t e_len;
 uint16_t e_start_hi;
 uint32_t e_start_lo;
};
struct ext4_extent_index {
 uint32_t ei_blk;
 uint32_t ei_leaf_lo;
 uint16_t ei_leaf_hi;
 uint16_t ei_unused;
};
struct ext4_extent_header {
 uint16_t eh_magic;
 uint16_t eh_ecount;
 uint16_t eh_max;
 uint16_t eh_depth;
 uint32_t eh_gen;
};
struct ext4_extent_cache {
 daddr_t ec_start;
 uint32_t ec_blk;
 uint32_t ec_len;
 uint32_t ec_type;
};
struct ext4_extent_path {
 uint16_t ep_depth;
 struct buf *ep_bp;
 struct ext4_extent *ep_ext;
 struct ext4_extent_index *ep_index;
 struct ext4_extent_header *ep_header;
};
struct inode;
struct m_ext2fs;
int ext4_ext_in_cache(struct inode *, daddr_t, struct ext4_extent *);
void ext4_ext_put_cache(struct inode *, struct ext4_extent *, int);
struct ext4_extent_path *ext4_ext_find_extent(struct m_ext2fs *fs,
    struct inode *, daddr_t, struct ext4_extent_path *);
struct ext2fs_inode_ext {
 u_int32_t ext2fs_last_lblk;
 u_int32_t ext2fs_last_blk;
 u_int32_t ext2fs_effective_uid;
 u_int32_t ext2fs_effective_gid;
 struct ext4_extent_cache ext2fs_extent_cache;
};
struct inode {
 struct { struct inode *le_next; struct inode **le_prev; } i_hash;
 struct vnode *i_vnode;
 struct ufsmount *i_ump;
 u_int32_t i_flag;
 dev_t i_dev;
 ufsino_t i_number;
 int i_effnlink;
 union {
  struct fs *fs;
  struct m_ext2fs *e2fs;
 } inode_u;
 struct cluster_info i_ci;
 struct dquot *i_dquot[2];
 u_quad_t i_modrev;
 struct lockf *i_lockf;
 struct rrwlock i_lock;
 int32_t i_count;
 int32_t i_endoff;
 int32_t i_diroff;
 int32_t i_offset;
 ufsino_t i_ino;
 u_int32_t i_reclen;
 union {
  struct ext2fs_inode_ext e2fs;
  struct dirhash *dirhash;
 } inode_ext;
 union {
  struct ufs1_dinode *ffs1_din;
  struct ufs2_dinode *ffs2_din;
  struct ext2fs_dinode *e2fs_din;
 } dinode_u;
 struct inode_vtbl *i_vtbl;
};
struct inode_vtbl {
 int (* iv_truncate)(struct inode *, off_t, int,
     struct ucred *);
 int (* iv_update)(struct inode *, int waitfor);
 int (* iv_inode_alloc)(struct inode *, mode_t mode,
     struct ucred *, struct vnode **);
 int (* iv_inode_free)(struct inode *, ufsino_t ino, mode_t mode);
 int (* iv_buf_alloc)(struct inode *, off_t, int, struct ucred *,
     int, struct buf **);
 int (* iv_bufatoff)(struct inode *, off_t offset, char **res,
     struct buf **bpp);
};
struct indir {
 daddr_t in_lbn;
 int in_off;
 int in_exists;
};
struct ufid {
 u_int16_t ufid_len;
 u_int16_t ufid_pad;
 ufsino_t ufid_ino;
 int32_t ufid_gen;
};
struct buf;
struct inode;
struct nameidata;
struct timeval;
struct ucred;
struct uio;
struct vnode;
struct netexport;
struct ufsmount {
 struct mount *um_mountp;
 dev_t um_dev;
 struct vnode *um_devvp;
 u_long um_fstype;
 union {
  struct fs *fs;
  struct m_ext2fs *e2fs;
 } ufsmount_u;
 struct vnode *um_quotas[2];
 struct ucred *um_cred[2];
 u_long um_nindir;
 u_long um_bptrtodb;
 u_long um_seqinc;
 time_t um_btime[2];
 time_t um_itime[2];
 char um_qflags[2];
 struct netexport um_export;
 u_int64_t um_savedmaxfilesize;
 u_int um_maxsymlinklen;
};
struct buf;
struct componentname;
struct direct;
struct disklabel;
struct dquot;
struct fid;
struct flock;
struct indir;
struct inode;
struct mbuf;
struct mount;
struct nameidata;
struct proc;
struct ucred;
struct ufs_args;
struct ufsmount;
struct uio;
struct vattr;
struct vfsconf;
struct vnode;
int ufs_access(void *);
int ufs_advlock(void *);
int ufs_bmap(void *);
int ufs_close(void *);
int ufs_create(void *);
int ufs_getattr(void *);
int ufs_inactive(void *);
int ufs_ioctl(void *);
int ufs_islocked(void *);
int ufs_link(void *);
int ufs_lock(void *);
int ufs_lookup(void *);
int ufs_mkdir(void *);
int ufs_mknod(void *);
int ufs_mmap(void *);
int ufs_open(void *);
int ufs_pathconf(void *);
int ufs_print(void *);
int ufs_readdir(void *);
int ufs_readlink(void *);
int ufs_remove(void *);
int ufs_rename(void *);
int ufs_rmdir(void *);
int ufs_poll(void *);
int ufs_kqfilter(void *);
int ufs_setattr(void *);
int ufs_strategy(void *);
int ufs_symlink(void *);
int ufs_unlock(void *);
int ufsspec_close(void *);
int ufsspec_read(void *);
int ufsspec_write(void *);
int ufsfifo_read(void *);
int ufsfifo_write(void *);
int ufsfifo_close(void *);
int ufs_bmaparray(struct vnode *, daddr_t, daddr_t *, struct indir *,
         int *, int *);
int ufs_getlbns(struct vnode *, daddr_t, struct indir *, int *);
void ufs_ihashinit(void);
struct vnode *ufs_ihashlookup(dev_t, ufsino_t);
struct vnode *ufs_ihashget(dev_t, ufsino_t);
int ufs_ihashins(struct inode *);
void ufs_ihashrem(struct inode *);
int ufs_init(struct vfsconf *);
int ufs_reclaim(struct vnode *, struct proc *);
void ufs_dirbad(struct inode *, int32_t, char *);
int ufs_dirbadentry(struct vnode *, struct direct *, int);
void ufs_makedirentry(struct inode *, struct componentname *,
      struct direct *);
int ufs_direnter(struct vnode *, struct vnode *, struct direct *,
        struct componentname *, struct buf *);
int ufs_dirremove(struct vnode *, struct inode *, int, int);
int ufs_dirrewrite(struct inode *, struct inode *,
          ufsino_t, int, int);
int ufs_dirempty(struct inode *, ufsino_t, struct ucred *);
int ufs_checkpath(struct inode *, struct inode *, struct ucred *);
int ufs_start(struct mount *, int, struct proc *);
int ufs_root(struct mount *, struct vnode **);
int ufs_quotactl(struct mount *, int, uid_t, caddr_t, struct proc *);
int ufs_fhtovp(struct mount *, struct ufid *, struct vnode **);
int ufs_check_export(struct mount *, struct mbuf *, int *,
  struct ucred **);
void ufs_itimes(struct vnode *);
int ufs_makeinode(int, struct vnode *, struct vnode **,
    struct componentname *);
int softdep_setup_directory_add(struct buf *, struct inode *, off_t,
          long, struct buf *, int);
void softdep_change_directoryentry_offset(struct inode *, caddr_t,
          caddr_t, caddr_t, int);
void softdep_setup_remove(struct buf *,struct inode *, struct inode *,
          int);
void softdep_setup_directory_change(struct buf *, struct inode *,
          struct inode *, long, int);
void softdep_change_linkcnt(struct inode *, int);
int softdep_slowdown(struct vnode *);
struct csum {
 int32_t cs_ndir;
 int32_t cs_nbfree;
 int32_t cs_nifree;
 int32_t cs_nffree;
};
struct csum_total {
 int64_t cs_ndir;
 int64_t cs_nbfree;
 int64_t cs_nifree;
 int64_t cs_nffree;
 int64_t cs_spare[4];
};
struct fs {
 int32_t fs_firstfield;
 int32_t fs_unused_1;
 int32_t fs_sblkno;
 int32_t fs_cblkno;
 int32_t fs_iblkno;
 int32_t fs_dblkno;
 int32_t fs_cgoffset;
 int32_t fs_cgmask;
 int32_t fs_ffs1_time;
 int32_t fs_ffs1_size;
 int32_t fs_ffs1_dsize;
 int32_t fs_ncg;
 int32_t fs_bsize;
 int32_t fs_fsize;
 int32_t fs_frag;
 int32_t fs_minfree;
 int32_t fs_rotdelay;
 int32_t fs_rps;
 int32_t fs_bmask;
 int32_t fs_fmask;
 int32_t fs_bshift;
 int32_t fs_fshift;
 int32_t fs_maxcontig;
 int32_t fs_maxbpg;
 int32_t fs_fragshift;
 int32_t fs_fsbtodb;
 int32_t fs_sbsize;
 int32_t fs_csmask;
 int32_t fs_csshift;
 int32_t fs_nindir;
 int32_t fs_inopb;
 int32_t fs_nspf;
 int32_t fs_optim;
 int32_t fs_npsect;
 int32_t fs_interleave;
 int32_t fs_trackskew;
 int32_t fs_id[2];
 int32_t fs_ffs1_csaddr;
 int32_t fs_cssize;
 int32_t fs_cgsize;
 int32_t fs_ntrak;
 int32_t fs_nsect;
 int32_t fs_spc;
 int32_t fs_ncyl;
 int32_t fs_cpg;
 int32_t fs_ipg;
 int32_t fs_fpg;
 struct csum fs_ffs1_cstotal;
 int8_t fs_fmod;
 int8_t fs_clean;
 int8_t fs_ronly;
 int8_t fs_ffs1_flags;
 u_char fs_fsmnt[468];
 u_char fs_volname[32];
 u_int64_t fs_swuid;
 int32_t fs_pad;
 int32_t fs_cgrotor;
 void *fs_ocsp[((128 / sizeof(void *)) - 4)];
 u_int8_t *fs_contigdirs;
 struct csum *fs_csp;
 int32_t *fs_maxcluster;
 u_char *fs_active;
 int32_t fs_cpc;
 int32_t fs_maxbsize;
 int64_t fs_spareconf64[17];
 int64_t fs_sblockloc;
 struct csum_total fs_cstotal;
 int64_t fs_time;
 int64_t fs_size;
 int64_t fs_dsize;
 int64_t fs_csaddr;
 int64_t fs_pendingblocks;
 int32_t fs_pendinginodes;
 int32_t fs_snapinum[20];
 int32_t fs_avgfilesize;
 int32_t fs_avgfpdir;
 int32_t fs_sparecon[26];
 u_int32_t fs_flags;
 int32_t fs_fscktime;
 int32_t fs_contigsumsize;
 int32_t fs_maxsymlinklen;
 int32_t fs_inodefmt;
 u_int64_t fs_maxfilesize;
 int64_t fs_qbmask;
 int64_t fs_qfmask;
 int32_t fs_state;
 int32_t fs_postblformat;
 int32_t fs_nrpos;
 int32_t fs_postbloff;
 int32_t fs_rotbloff;
 int32_t fs_magic;
 u_int8_t fs_space[1];
};
struct cg {
 int32_t cg_firstfield;
 int32_t cg_magic;
 int32_t cg_time;
 int32_t cg_cgx;
 int16_t cg_ncyl;
 int16_t cg_niblk;
 int32_t cg_ndblk;
 struct csum cg_cs;
 int32_t cg_rotor;
 int32_t cg_frotor;
 int32_t cg_irotor;
 int32_t cg_frsum[8];
 int32_t cg_btotoff;
 int32_t cg_boff;
 int32_t cg_iusedoff;
 int32_t cg_freeoff;
 int32_t cg_nextfreeoff;
 int32_t cg_clustersumoff;
 int32_t cg_clusteroff;
 int32_t cg_nclusterblks;
 int32_t cg_ffs2_niblk;
 int32_t cg_initediblk;
 int32_t cg_sparecon32[3];
 int64_t cg_ffs2_time;
 int64_t cg_sparecon64[3];
};
struct ocg {
 int32_t cg_firstfield;
 int32_t cg_unused_1;
 int32_t cg_time;
 int32_t cg_cgx;
 int16_t cg_ncyl;
 int16_t cg_niblk;
 int32_t cg_ndblk;
 struct csum cg_cs;
 int32_t cg_rotor;
 int32_t cg_frotor;
 int32_t cg_irotor;
 int32_t cg_frsum[8];
 int32_t cg_btot[32];
 int16_t cg_b[32][8];
 u_int8_t cg_iused[256];
 int32_t cg_magic;
 u_int8_t cg_free[1];
};
extern const int inside[], around[];
extern const u_char *fragtbl[];
struct buf;
struct fid;
struct fs;
struct inode;
struct mount;
struct nameidata;
struct proc;
struct statfs;
struct timeval;
struct ucred;
struct ufsmount;
struct vfsconf;
struct uio;
struct vnode;
struct mbuf;
struct cg;
struct vop_vfree_args;
extern struct vops ffs_vops;
extern struct vops ffs_specvops;
extern struct vops ffs_fifovops;
int ffs_alloc(struct inode *, daddr_t, daddr_t , int, struct ucred *,
     daddr_t *);
int ffs_realloccg(struct inode *, daddr_t, daddr_t, int, int ,
         struct ucred *, struct buf **, daddr_t *);
int ffs_inode_alloc(struct inode *, mode_t, struct ucred *, struct vnode **);
int ffs_inode_free(struct inode *, ufsino_t, mode_t);
int ffs_freefile(struct inode *, ufsino_t, mode_t);
int32_t ffs1_blkpref(struct inode *, daddr_t, int, int32_t *);
int64_t ffs2_blkpref(struct inode *, daddr_t, int, int64_t *);
void ffs_blkfree(struct inode *, daddr_t, long);
void ffs_clusteracct(struct fs *, struct cg *, daddr_t, int);
int ffs_balloc(struct inode *, off_t, int, struct ucred *, int, struct buf **);
int ffs_init(struct vfsconf *);
int ffs_update(struct inode *, int);
int ffs_truncate(struct inode *, off_t, int, struct ucred *);
int ffs_bufatoff(struct inode *, off_t, char **, struct buf **);
void ffs_fragacct(struct fs *, int, int32_t[], int);
void ffs_checkoverlap(struct buf *, struct inode *);
int ffs_isfreeblock(struct fs *, u_char *, daddr_t);
int ffs_isblock(struct fs *, u_char *, daddr_t);
void ffs_clrblock(struct fs *, u_char *, daddr_t);
void ffs_setblock(struct fs *, u_char *, daddr_t);
int ffs_vinit(struct mount *, struct vnode **);
int ffs_mountroot(void);
int ffs_mount(struct mount *, const char *, void *, struct nameidata *,
     struct proc *);
int ffs_reload(struct mount *, struct ucred *, struct proc *);
int ffs_mountfs(struct vnode *, struct mount *, struct proc *);
int ffs_oldfscompat(struct fs *);
int ffs_unmount(struct mount *, int, struct proc *);
int ffs_flushfiles(struct mount *, int, struct proc *);
int ffs_statfs(struct mount *, struct statfs *, struct proc *);
int ffs_sync(struct mount *, int, int, struct ucred *, struct proc *);
int ffs_vget(struct mount *, ino_t, struct vnode **);
int ffs_fhtovp(struct mount *, struct fid *, struct vnode **);
int ffs_vptofh(struct vnode *, struct fid *);
int ffs_sysctl(int *, u_int, void *, size_t *, void *, size_t,
      struct proc *);
int ffs_sbupdate(struct ufsmount *, int);
int ffs_cgupdate(struct ufsmount *, int);
int ffs_read(void *);
int ffs_write(void *);
int ffs_fsync(void *);
int ffs_reclaim(void *);
int ffsfifo_reclaim(void *);
struct vop_vfree_args;
struct vop_fsync_args;
void softdep_initialize(void);
int softdep_process_worklist(struct mount *);
int softdep_mount(struct vnode *, struct mount *, struct fs *,
          struct ucred *);
int softdep_flushworklist(struct mount *, int *, struct proc *);
int softdep_flushfiles(struct mount *, int, struct proc *);
void softdep_update_inodeblock(struct inode *, struct buf *, int);
void softdep_load_inodeblock(struct inode *);
void softdep_freefile(struct vnode *, ufsino_t, mode_t);
void softdep_setup_freeblocks(struct inode *, off_t);
void softdep_setup_inomapdep(struct buf *, struct inode *, ufsino_t);
void softdep_setup_blkmapdep(struct buf *, struct fs *, daddr_t);
void softdep_setup_allocdirect(struct inode *, daddr_t, daddr_t,
            daddr_t, long, long, struct buf *);
void softdep_setup_allocindir_meta(struct buf *, struct inode *,
            struct buf *, int, daddr_t);
void softdep_setup_allocindir_page(struct inode *, daddr_t,
            struct buf *, int, daddr_t, daddr_t, struct buf *);
void softdep_fsync_mountdev(struct vnode *, int);
int softdep_sync_metadata(struct vop_fsync_args *);
int softdep_fsync(struct vnode *);
extern struct pool ffs_ino_pool;
extern struct pool ffs_dinode1_pool;
extern struct pool ffs_dinode2_pool;
daddr_t ffs_alloccg(struct inode *, int, daddr_t, int);
struct buf * ffs_cgread(struct fs *, struct inode *, int);
daddr_t ffs_alloccgblk(struct inode *, struct buf *, daddr_t);
ufsino_t ffs_dirpref(struct inode *);
daddr_t ffs_fragextend(struct inode *, int, daddr_t, int, int);
daddr_t ffs_hashalloc(struct inode *, int, daddr_t, int,
      daddr_t (*)(struct inode *, int, daddr_t, int));
daddr_t ffs_nodealloccg(struct inode *, int, daddr_t, int);
daddr_t ffs_mapsearch(struct fs *, struct cg *, daddr_t, int);
static const struct timeval fserr_interval = { 2, 0 };
int
ffs_alloc(struct inode *ip, daddr_t lbn, daddr_t bpref, int size,
    struct ucred *cred, daddr_t *bnp)
{
 static struct timeval fsfull_last;
 struct fs *fs;
 daddr_t bno;
 int cg;
 int error;
 *bnp = 0;
 fs = ip->inode_u.fs;
 if ((u_int)size > fs->fs_bsize || ((size) & (fs)->fs_qfmask) != 0) {
  printf("dev = 0x%x, bsize = %d, size = %d, fs = %s\n",
      ip->i_dev, fs->fs_bsize, size, fs->fs_fsmnt);
  panic("ffs_alloc: bad size");
 }
 if (cred == ((struct ucred *)-1))
  panic("ffs_alloc: missing credential");
 if (size == fs->fs_bsize && fs->fs_cstotal.cs_nbfree == 0)
  goto nospace;
 if (cred->cr_uid != 0 && ((((fs)->fs_cstotal.cs_nbfree) << ((fs))->fs_fragshift) + (fs)->fs_cstotal.cs_nffree - ((fs)->fs_dsize * (fs->fs_minfree) / 100)) <= 0)
  goto nospace;
 if ((error = ufs_quota_alloc_blocks2(ip, ((size) >> 9), cred, 0)) != 0)
  return (error);
 if (bpref >= fs->fs_size)
  bpref = 0;
 if (bpref == 0)
  cg = ((ip->i_number) / (fs)->fs_ipg);
 else
  cg = ((bpref) / (fs)->fs_fpg);
 bno = ffs_hashalloc(ip, cg, bpref, size, ffs_alloccg);
 if (bno > 0) {
  do { if ((ip)->i_ump->um_fstype == 1) (ip)->dinode_u.ffs1_din->di_blocks += (((size) >> 9)); else (ip)->dinode_u.ffs2_din->di_blocks += (((size) >> 9)); } while (0);
  ip->i_flag |= 0x0002 | 0x0004;
  *bnp = bno;
  return (0);
 }
 (void) ufs_quota_free_blocks2(ip, ((size) >> 9), cred, 0);
nospace:
 if (ratecheck(&fsfull_last, &fserr_interval)) {
  do { log(3, "uid %u on %s: %s\n", (cred->cr_uid), (fs)->fs_fsmnt, ("file system full")); } while (0);
  uprintf("\n%s: write failed, file system is full\n",
      fs->fs_fsmnt);
 }
 return (28);
}
int
ffs_realloccg(struct inode *ip, daddr_t lbprev, daddr_t bpref, int osize,
    int nsize, struct ucred *cred, struct buf **bpp, daddr_t *blknop)
{
 static struct timeval fsfull_last;
 struct fs *fs;
 struct buf *bp = ((void *)0);
 daddr_t quota_updated = 0;
 int cg, request, error;
 daddr_t bprev, bno;
 if (bpp != ((void *)0))
  *bpp = ((void *)0);
 fs = ip->inode_u.fs;
 if ((u_int)osize > fs->fs_bsize || ((osize) & (fs)->fs_qfmask) != 0 ||
     (u_int)nsize > fs->fs_bsize || ((nsize) & (fs)->fs_qfmask) != 0) {
  printf(
      "dev = 0x%x, bsize = %d, osize = %d, nsize = %d, fs = %s\n",
      ip->i_dev, fs->fs_bsize, osize, nsize, fs->fs_fsmnt);
  panic("ffs_realloccg: bad size");
 }
 if (cred == ((struct ucred *)-1))
  panic("ffs_realloccg: missing credential");
 if (cred->cr_uid != 0 && ((((fs)->fs_cstotal.cs_nbfree) << ((fs))->fs_fragshift) + (fs)->fs_cstotal.cs_nffree - ((fs)->fs_dsize * (fs->fs_minfree) / 100)) <= 0)
  goto nospace;
 bprev = (((ip)->i_ump->um_fstype == 1) ? (ip)->dinode_u.ffs1_din->di_db[lbprev] : (ip)->dinode_u.ffs2_din->di_db[lbprev]);
 if (bprev == 0) {
  printf("dev = 0x%x, bsize = %d, bprev = %lld, fs = %s\n",
      ip->i_dev, fs->fs_bsize, (long long)bprev, fs->fs_fsmnt);
  panic("ffs_realloccg: bad bprev");
 }
 if (bpp != ((void *)0)) {
  if ((error = bread(((ip)->i_vnode), lbprev, fs->fs_bsize, &bp)) != 0)
   goto error;
  buf_adjcnt(bp, osize);
 }
 if ((error = ufs_quota_alloc_blocks2(ip, ((nsize - osize) >> 9), cred, 0))
     != 0)
  goto error;
 quota_updated = ((nsize - osize) >> 9);
 cg = ((bprev) / (fs)->fs_fpg);
 if ((bno = ffs_fragextend(ip, cg, bprev, osize, nsize)) != 0) {
  do { if ((ip)->i_ump->um_fstype == 1) (ip)->dinode_u.ffs1_din->di_blocks += (((nsize - osize) >> 9)); else (ip)->dinode_u.ffs2_din->di_blocks += (((nsize - osize) >> 9)); } while (0);
  ip->i_flag |= 0x0002 | 0x0004;
  if (bpp != ((void *)0)) {
   if (bp->b_blkno != ((bno) << (fs)->fs_fsbtodb))
    panic("ffs_realloccg: bad blockno");
   if (nsize > bp->b_bufsize)
    panic("ffs_realloccg: small buf");
   buf_adjcnt(bp, nsize);
   bp->b_flags |= 0x00000100;
   __builtin_memset((bp->b_data + osize), (0), (nsize - osize));
   *bpp = bp;
  }
  if (blknop != ((void *)0)) {
   *blknop = bno;
  }
  return (0);
 }
 if (bpref >= fs->fs_size)
  bpref = 0;
 switch (fs->fs_optim) {
 case 1:
  request = nsize;
  if (fs->fs_minfree < 5 ||
      fs->fs_cstotal.cs_nffree >
      fs->fs_dsize * fs->fs_minfree / (2 * 100))
   break;
  fs->fs_optim = 0;
  break;
 case 0:
  request = fs->fs_bsize;
  if (fs->fs_cstotal.cs_nffree <
      fs->fs_dsize * (fs->fs_minfree - 2) / 100)
   break;
  fs->fs_optim = 1;
  break;
 default:
  printf("dev = 0x%x, optim = %d, fs = %s\n",
      ip->i_dev, fs->fs_optim, fs->fs_fsmnt);
  panic("ffs_realloccg: bad optim");
 }
 bno = ffs_hashalloc(ip, cg, bpref, request, ffs_alloccg);
 if (bno <= 0)
  goto nospace;
 (void) uvm_vnp_uncache(((ip)->i_vnode));
 if (!((((ip)->i_vnode))->v_mount->mnt_flag & 0x04000000))
  ffs_blkfree(ip, bprev, (long)osize);
 if (nsize < request)
  ffs_blkfree(ip, bno + ((nsize) >> (fs)->fs_fshift),
      (long)(request - nsize));
 do { if ((ip)->i_ump->um_fstype == 1) (ip)->dinode_u.ffs1_din->di_blocks += (((nsize - osize) >> 9)); else (ip)->dinode_u.ffs2_din->di_blocks += (((nsize - osize) >> 9)); } while (0);
 ip->i_flag |= 0x0002 | 0x0004;
 if (bpp != ((void *)0)) {
  bp->b_blkno = ((bno) << (fs)->fs_fsbtodb);
  if (nsize > bp->b_bufsize)
   panic("ffs_realloccg: small buf 2");
  buf_adjcnt(bp, nsize);
  bp->b_flags |= 0x00000100;
  __builtin_memset((bp->b_data + osize), (0), (nsize - osize));
  *bpp = bp;
 }
 if (blknop != ((void *)0)) {
  *blknop = bno;
 }
 return (0);
nospace:
 if (ratecheck(&fsfull_last, &fserr_interval)) {
  do { log(3, "uid %u on %s: %s\n", (cred->cr_uid), (fs)->fs_fsmnt, ("file system full")); } while (0);
  uprintf("\n%s: write failed, file system is full\n",
      fs->fs_fsmnt);
 }
 error = 28;
error:
 if (bp != ((void *)0)) {
  brelse(bp);
  bp = ((void *)0);
 }
 if (quota_updated != 0)
  (void)ufs_quota_free_blocks2(ip, quota_updated, cred, 0);
 return error;
}
int
ffs_inode_alloc(struct inode *pip, mode_t mode, struct ucred *cred,
    struct vnode **vpp)
{
 static struct timeval fsnoinodes_last;
 struct vnode *pvp = ((pip)->i_vnode);
 struct fs *fs;
 struct inode *ip;
 ufsino_t ino, ipref;
 int cg, error;
 *vpp = ((void *)0);
 fs = pip->inode_u.fs;
 if (fs->fs_cstotal.cs_nifree == 0)
  goto noinodes;
 if ((mode & 0170000) == 0040000)
  ipref = ffs_dirpref(pip);
 else
  ipref = pip->i_number;
 if (ipref >= fs->fs_ncg * fs->fs_ipg)
  ipref = 0;
 cg = ((ipref) / (fs)->fs_ipg);
 if ((mode & 0170000) == 0040000) {
  if (fs->fs_contigdirs[cg] < 255)
   fs->fs_contigdirs[cg]++;
 } else {
  if (fs->fs_contigdirs[cg] > 0)
   fs->fs_contigdirs[cg]--;
 }
 ino = (ufsino_t)ffs_hashalloc(pip, cg, ipref, mode, ffs_nodealloccg);
 if (ino == 0)
  goto noinodes;
 error = (*(pvp->v_mount)->mnt_op->vfs_vget)(pvp->v_mount, ino, vpp);
 if (error) {
  ffs_inode_free(pip, ino, mode);
  return (error);
 }
 ip = ((struct inode *)(*vpp)->v_data);
 if ((((ip)->i_ump->um_fstype == 1) ? (ip)->dinode_u.ffs1_din->di_mode : (ip)->dinode_u.ffs2_din->di_mode)) {
  printf("mode = 0%o, inum = %u, fs = %s\n",
      (((ip)->i_ump->um_fstype == 1) ? (ip)->dinode_u.ffs1_din->di_mode : (ip)->dinode_u.ffs2_din->di_mode), ip->i_number, fs->fs_fsmnt);
  panic("ffs_valloc: dup alloc");
 }
 if ((((ip)->i_ump->um_fstype == 1) ? (ip)->dinode_u.ffs1_din->di_blocks : (ip)->dinode_u.ffs2_din->di_blocks)) {
  printf("free inode %s/%d had %lld blocks\n",
      fs->fs_fsmnt, ino, (long long)(((ip)->i_ump->um_fstype == 1) ? (ip)->dinode_u.ffs1_din->di_blocks : (ip)->dinode_u.ffs2_din->di_blocks));
  do { if ((ip)->i_ump->um_fstype == 1) (ip)->dinode_u.ffs1_din->di_blocks = (0); else (ip)->dinode_u.ffs2_din->di_blocks = (0); } while (0);
 }
 do { if ((ip)->i_ump->um_fstype == 1) (ip)->dinode_u.ffs1_din->di_flags = (0); else (ip)->dinode_u.ffs2_din->di_flags = (0); } while (0);
 if ((((ip)->i_ump->um_fstype == 1) ? (ip)->dinode_u.ffs1_din->di_gen : (ip)->dinode_u.ffs2_din->di_gen) != 0)
  do { if ((ip)->i_ump->um_fstype == 1) (ip)->dinode_u.ffs1_din->di_gen += (1); else (ip)->dinode_u.ffs2_din->di_gen += (1); } while (0);
 if ((((ip)->i_ump->um_fstype == 1) ? (ip)->dinode_u.ffs1_din->di_gen : (ip)->dinode_u.ffs2_din->di_gen) == 0)
  do { if ((ip)->i_ump->um_fstype == 1) (ip)->dinode_u.ffs1_din->di_gen = (arc4random() & 0x7fffffff); else (ip)->dinode_u.ffs2_din->di_gen = (arc4random() & 0x7fffffff); } while (0);
 if ((((ip)->i_ump->um_fstype == 1) ? (ip)->dinode_u.ffs1_din->di_gen : (ip)->dinode_u.ffs2_din->di_gen) == 0 || (((ip)->i_ump->um_fstype == 1) ? (ip)->dinode_u.ffs1_din->di_gen : (ip)->dinode_u.ffs2_din->di_gen) == -1)
  do { if ((ip)->i_ump->um_fstype == 1) (ip)->dinode_u.ffs1_din->di_gen = (1); else (ip)->dinode_u.ffs2_din->di_gen = (1); } while (0);
 return (0);
noinodes:
 if (ratecheck(&fsnoinodes_last, &fserr_interval)) {
  do { log(3, "uid %u on %s: %s\n", (cred->cr_uid), (fs)->fs_fsmnt, ("out of inodes")); } while (0);
  uprintf("\n%s: create/symlink failed, no inodes free\n",
      fs->fs_fsmnt);
 }
 return (28);
}
ufsino_t
ffs_dirpref(struct inode *pip)
{
 struct fs *fs;
 int cg, prefcg, dirsize, cgsize;
 int avgifree, avgbfree, avgndir, curdirsize;
 int minifree, minbfree, maxndir;
 int mincg, minndir;
 int maxcontigdirs;
 fs = pip->inode_u.fs;
 avgifree = fs->fs_cstotal.cs_nifree / fs->fs_ncg;
 avgbfree = fs->fs_cstotal.cs_nbfree / fs->fs_ncg;
 avgndir = fs->fs_cstotal.cs_ndir / fs->fs_ncg;
 if (((pip)->i_vnode)->v_flag & 0x0001) {
  prefcg = arc4random_uniform(fs->fs_ncg);
  mincg = prefcg;
  minndir = fs->fs_ipg;
  for (cg = prefcg; cg < fs->fs_ncg; cg++)
   if (fs->fs_csp[cg].cs_ndir < minndir &&
       fs->fs_csp[cg].cs_nifree >= avgifree &&
       fs->fs_csp[cg].cs_nbfree >= avgbfree) {
    mincg = cg;
    minndir = fs->fs_csp[cg].cs_ndir;
   }
  for (cg = 0; cg < prefcg; cg++)
   if (fs->fs_csp[cg].cs_ndir < minndir &&
       fs->fs_csp[cg].cs_nifree >= avgifree &&
       fs->fs_csp[cg].cs_nbfree >= avgbfree) {
    mincg = cg;
    minndir = fs->fs_csp[cg].cs_ndir;
   }
  cg = mincg;
  goto end;
 } else
  prefcg = ((pip->i_number) / (fs)->fs_ipg);
 maxndir = min(avgndir + fs->fs_ipg / 16, fs->fs_ipg);
 minifree = avgifree - (avgifree / 4);
 if (minifree < 1)
  minifree = 1;
 minbfree = avgbfree - (avgbfree / 4);
 if (minbfree < 1)
  minbfree = 1;
 cgsize = fs->fs_fsize * fs->fs_fpg;
 dirsize = fs->fs_avgfilesize * fs->fs_avgfpdir;
 curdirsize = avgndir ? (cgsize - avgbfree * fs->fs_bsize) / avgndir : 0;
 if (dirsize < curdirsize)
  dirsize = curdirsize;
 if (dirsize <= 0)
  maxcontigdirs = 0;
 else
  maxcontigdirs = min(avgbfree * fs->fs_bsize / dirsize, 255);
 if (fs->fs_avgfpdir > 0)
  maxcontigdirs = min(maxcontigdirs,
        fs->fs_ipg / fs->fs_avgfpdir);
 if (maxcontigdirs == 0)
  maxcontigdirs = 1;
 for (cg = prefcg; cg < fs->fs_ncg; cg++)
  if (fs->fs_csp[cg].cs_ndir < maxndir &&
      fs->fs_csp[cg].cs_nifree >= minifree &&
          fs->fs_csp[cg].cs_nbfree >= minbfree) {
   if (fs->fs_contigdirs[cg] < maxcontigdirs)
    goto end;
  }
 for (cg = prefcg - 1; cg >= 0; cg--)
  if (fs->fs_csp[cg].cs_ndir < maxndir &&
      fs->fs_csp[cg].cs_nifree >= minifree &&
          fs->fs_csp[cg].cs_nbfree >= minbfree) {
   if (fs->fs_contigdirs[cg] < maxcontigdirs)
    goto end;
  }
 for (cg = prefcg; cg < fs->fs_ncg; cg++)
  if (fs->fs_csp[cg].cs_nifree >= avgifree)
   goto end;
 for (cg = prefcg - 1; cg >= 0; cg--)
  if (fs->fs_csp[cg].cs_nifree >= avgifree)
   goto end;
end:
 return ((ufsino_t)(fs->fs_ipg * cg));
}
int32_t
ffs1_blkpref(struct inode *ip, daddr_t lbn, int indx, int32_t *bap)
{
 struct fs *fs;
 int cg, inocg, avgbfree, startcg;
 uint32_t pref;
 ((indx <= 0 || bap != ((void *)0)) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../ufs/ffs/ffs_alloc.c", 600, "indx <= 0 || bap != NULL"));
 fs = ip->inode_u.fs;
 inocg = ((ip->i_number) / (fs)->fs_ipg);
 if (indx < 0) {
  pref = (((((daddr_t)(fs)->fs_fpg * (inocg)) + (fs)->fs_cgoffset * ((inocg) & ~((fs)->fs_cgmask))) + (fs)->fs_dblkno));
  if (indx == -1 && lbn < 12 + ((fs)->fs_nindir) &&
      ip->dinode_u.ffs1_din->di_db[12 - 1] != 0)
   pref = ip->dinode_u.ffs1_din->di_db[12 - 1] + fs->fs_frag;
  return (pref);
 }
 if (lbn == 12) {
  pref = ip->dinode_u.ffs1_din->di_ib[0];
  if (pref != 0 && pref >= (((((daddr_t)(fs)->fs_fpg * (inocg)) + (fs)->fs_cgoffset * ((inocg) & ~((fs)->fs_cgmask))) + (fs)->fs_dblkno) + (fs)->fs_minfree) &&
      pref < ((daddr_t)(fs)->fs_fpg * (inocg + 1)))
   return (pref + fs->fs_frag);
 }
 if (indx % fs->fs_maxbpg == 0 || bap[indx - 1] == 0) {
  if (((((ip)->i_ump->um_fstype == 1) ? (ip)->dinode_u.ffs1_din->di_mode : (ip)->dinode_u.ffs2_din->di_mode) & 0170000) == 0040000)
   return ((((((daddr_t)(fs)->fs_fpg * (inocg)) + (fs)->fs_cgoffset * ((inocg) & ~((fs)->fs_cgmask))) + (fs)->fs_dblkno)));
  if (lbn < 12 + ((fs)->fs_nindir))
   return ((((((daddr_t)(fs)->fs_fpg * (inocg)) + (fs)->fs_cgoffset * ((inocg) & ~((fs)->fs_cgmask))) + (fs)->fs_dblkno) + (fs)->fs_minfree));
  if (indx == 0 || bap[indx - 1] == 0)
   startcg = inocg + lbn / fs->fs_maxbpg;
  else
   startcg = ((bap[indx - 1]) / (fs)->fs_fpg) + 1;
  startcg %= fs->fs_ncg;
  avgbfree = fs->fs_cstotal.cs_nbfree / fs->fs_ncg;
  for (cg = startcg; cg < fs->fs_ncg; cg++)
   if (fs->fs_csp[cg].cs_nbfree >= avgbfree) {
    fs->fs_cgrotor = cg;
    return ((((((daddr_t)(fs)->fs_fpg * (cg)) + (fs)->fs_cgoffset * ((cg) & ~((fs)->fs_cgmask))) + (fs)->fs_dblkno) + (fs)->fs_minfree));
   }
  for (cg = 0; cg <= startcg; cg++)
   if (fs->fs_csp[cg].cs_nbfree >= avgbfree) {
    fs->fs_cgrotor = cg;
    return ((((((daddr_t)(fs)->fs_fpg * (cg)) + (fs)->fs_cgoffset * ((cg) & ~((fs)->fs_cgmask))) + (fs)->fs_dblkno) + (fs)->fs_minfree));
   }
  return (0);
 }
 return (bap[indx - 1] + fs->fs_frag);
}
int64_t
ffs2_blkpref(struct inode *ip, daddr_t lbn, int indx, int64_t *bap)
{
 struct fs *fs;
 int cg, inocg, avgbfree, startcg;
 uint64_t pref;
 ((indx <= 0 || bap != ((void *)0)) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../ufs/ffs/ffs_alloc.c", 700, "indx <= 0 || bap != NULL"));
 fs = ip->inode_u.fs;
 inocg = ((ip->i_number) / (fs)->fs_ipg);
 if (indx < 0) {
  pref = (((((daddr_t)(fs)->fs_fpg * (inocg)) + (fs)->fs_cgoffset * ((inocg) & ~((fs)->fs_cgmask))) + (fs)->fs_dblkno));
  if (indx == -1 && lbn < 12 + ((fs)->fs_nindir) &&
      ip->dinode_u.ffs2_din->di_db[12 - 1] != 0)
   pref = ip->dinode_u.ffs2_din->di_db[12 - 1] + fs->fs_frag;
  return (pref);
 }
 if (lbn == 12) {
  pref = ip->dinode_u.ffs2_din->di_ib[0];
  if (pref != 0 && pref >= (((((daddr_t)(fs)->fs_fpg * (inocg)) + (fs)->fs_cgoffset * ((inocg) & ~((fs)->fs_cgmask))) + (fs)->fs_dblkno) + (fs)->fs_minfree) &&
      pref < ((daddr_t)(fs)->fs_fpg * (inocg + 1)))
   return (pref + fs->fs_frag);
 }
 if (indx % fs->fs_maxbpg == 0 || bap[indx - 1] == 0) {
  if (((((ip)->i_ump->um_fstype == 1) ? (ip)->dinode_u.ffs1_din->di_mode : (ip)->dinode_u.ffs2_din->di_mode) & 0170000) == 0040000)
   return ((((((daddr_t)(fs)->fs_fpg * (inocg)) + (fs)->fs_cgoffset * ((inocg) & ~((fs)->fs_cgmask))) + (fs)->fs_dblkno)));
  if (lbn < 12 + ((fs)->fs_nindir))
   return ((((((daddr_t)(fs)->fs_fpg * (inocg)) + (fs)->fs_cgoffset * ((inocg) & ~((fs)->fs_cgmask))) + (fs)->fs_dblkno) + (fs)->fs_minfree));
  if (indx == 0 || bap[indx - 1] == 0)
   startcg = inocg + lbn / fs->fs_maxbpg;
  else
   startcg = ((bap[indx - 1] + 1) / (fs)->fs_fpg);
  startcg %= fs->fs_ncg;
  avgbfree = fs->fs_cstotal.cs_nbfree / fs->fs_ncg;
  for (cg = startcg; cg < fs->fs_ncg; cg++)
   if (fs->fs_csp[cg].cs_nbfree >= avgbfree)
    return (((daddr_t)(fs)->fs_fpg * (cg)) + fs->fs_frag);
  for (cg = 0; cg < startcg; cg++)
   if (fs->fs_csp[cg].cs_nbfree >= avgbfree)
    return (((daddr_t)(fs)->fs_fpg * (cg)) + fs->fs_frag);
  return (0);
 }
 return (bap[indx - 1] + fs->fs_frag);
}
daddr_t
ffs_hashalloc(struct inode *ip, int cg, daddr_t pref, int size,
    daddr_t (*allocator)(struct inode *, int, daddr_t, int))
{
 struct fs *fs;
 daddr_t result;
 int i, icg = cg;
 fs = ip->inode_u.fs;
 result = (*allocator)(ip, cg, pref, size);
 if (result)
  return (result);
 for (i = 1; i < fs->fs_ncg; i *= 2) {
  cg += i;
  if (cg >= fs->fs_ncg)
   cg -= fs->fs_ncg;
  result = (*allocator)(ip, cg, 0, size);
  if (result)
   return (result);
 }
 cg = (icg + 2) % fs->fs_ncg;
 for (i = 2; i < fs->fs_ncg; i++) {
  result = (*allocator)(ip, cg, 0, size);
  if (result)
   return (result);
  cg++;
  if (cg == fs->fs_ncg)
   cg = 0;
 }
 return (0);
}
struct buf *
ffs_cgread(struct fs *fs, struct inode *ip, int cg)
{
 struct buf *bp;
 if (bread(ip->i_ump->um_devvp, ((((((daddr_t)(fs)->fs_fpg * (cg)) + (fs)->fs_cgoffset * ((cg) & ~((fs)->fs_cgmask))) + (fs)->fs_cblkno)) << (fs)->fs_fsbtodb),
     (int)fs->fs_cgsize, &bp)) {
  brelse(bp);
  return (((void *)0));
 }
 if (!(((struct cg *)bp->b_data)->cg_magic == 0x090255 || ((struct ocg *)((struct cg *)bp->b_data))->cg_magic == 0x090255)) {
  brelse(bp);
  return (((void *)0));
 }
 return bp;
}
daddr_t
ffs_fragextend(struct inode *ip, int cg, daddr_t bprev, int osize, int nsize)
{
 struct fs *fs;
 struct cg *cgp;
 struct buf *bp;
 daddr_t bno;
 int i, frags, bbase;
 fs = ip->inode_u.fs;
 if (fs->fs_csp[cg].cs_nffree < ((nsize - osize) >> (fs)->fs_fshift))
  return (0);
 frags = ((nsize) >> (fs)->fs_fshift);
 bbase = ((bprev) & ((fs)->fs_frag - 1));
 if (bbase > (((bprev + frags - 1)) & ((fs)->fs_frag - 1))) {
  return (0);
 }
 if (!(bp = ffs_cgread(fs, ip, cg)))
  return (0);
 cgp = (struct cg *)bp->b_data;
 cgp->cg_ffs2_time = cgp->cg_time = time_second;
 bno = ((bprev) % (fs)->fs_fpg);
 for (i = ((osize) >> (fs)->fs_fshift); i < frags; i++)
  if (((((((cgp)->cg_magic != 0x090255) ? (((struct ocg *)(cgp))->cg_free) : ((u_int8_t *)((u_int8_t *)(cgp) + (cgp)->cg_freeoff))))[(bno + i)>>3] & (1<<((bno + i)&(8 -1)))) == 0)) {
   brelse(bp);
   return (0);
  }
 for (i = frags; i < fs->fs_frag - bbase; i++)
  if (((((((cgp)->cg_magic != 0x090255) ? (((struct ocg *)(cgp))->cg_free) : ((u_int8_t *)((u_int8_t *)(cgp) + (cgp)->cg_freeoff))))[(bno + i)>>3] & (1<<((bno + i)&(8 -1)))) == 0))
   break;
 cgp->cg_frsum[i - ((osize) >> (fs)->fs_fshift)]--;
 if (i != frags)
  cgp->cg_frsum[i - frags]++;
 for (i = ((osize) >> (fs)->fs_fshift); i < frags; i++) {
  (((((cgp)->cg_magic != 0x090255) ? (((struct ocg *)(cgp))->cg_free) : ((u_int8_t *)((u_int8_t *)(cgp) + (cgp)->cg_freeoff))))[(bno + i)>>3] &= ~(1<<((bno + i)&(8 -1))));
  cgp->cg_cs.cs_nffree--;
  fs->fs_cstotal.cs_nffree--;
  fs->fs_csp[cg].cs_nffree--;
 }
 fs->fs_fmod = 1;
 if (((((ip)->i_vnode))->v_mount->mnt_flag & 0x04000000))
  softdep_setup_blkmapdep(bp, fs, bprev);
 bdwrite(bp);
 return (bprev);
}
daddr_t
ffs_alloccg(struct inode *ip, int cg, daddr_t bpref, int size)
{
 struct fs *fs;
 struct cg *cgp;
 struct buf *bp;
 daddr_t bno, blkno;
 int i, frags, allocsiz;
 fs = ip->inode_u.fs;
 if (fs->fs_csp[cg].cs_nbfree == 0 && size == fs->fs_bsize)
  return (0);
 if (!(bp = ffs_cgread(fs, ip, cg)))
  return (0);
 cgp = (struct cg *)bp->b_data;
 if (cgp->cg_cs.cs_nbfree == 0 && size == fs->fs_bsize) {
  brelse(bp);
  return (0);
 }
 cgp->cg_ffs2_time = cgp->cg_time = time_second;
 if (size == fs->fs_bsize) {
  bno = ffs_alloccgblk(ip, bp, bpref);
  bdwrite(bp);
  return (bno);
 }
 frags = ((size) >> (fs)->fs_fshift);
 for (allocsiz = frags; allocsiz < fs->fs_frag; allocsiz++)
  if (cgp->cg_frsum[allocsiz] != 0)
   break;
 if (allocsiz == fs->fs_frag) {
  if (cgp->cg_cs.cs_nbfree == 0) {
   brelse(bp);
   return (0);
  }
  bno = ffs_alloccgblk(ip, bp, bpref);
  bpref = ((bno) % (fs)->fs_fpg);
  for (i = frags; i < fs->fs_frag; i++)
   (((((cgp)->cg_magic != 0x090255) ? (((struct ocg *)(cgp))->cg_free) : ((u_int8_t *)((u_int8_t *)(cgp) + (cgp)->cg_freeoff))))[(bpref + i)>>3] |= 1<<((bpref + i)&(8 -1)));
  i = fs->fs_frag - frags;
  cgp->cg_cs.cs_nffree += i;
  fs->fs_cstotal.cs_nffree += i;
  fs->fs_csp[cg].cs_nffree += i;
  fs->fs_fmod = 1;
  cgp->cg_frsum[i]++;
  bdwrite(bp);
  return (bno);
 }
 bno = ffs_mapsearch(fs, cgp, bpref, allocsiz);
 if (bno < 0) {
  brelse(bp);
  return (0);
 }
 for (i = 0; i < frags; i++)
  (((((cgp)->cg_magic != 0x090255) ? (((struct ocg *)(cgp))->cg_free) : ((u_int8_t *)((u_int8_t *)(cgp) + (cgp)->cg_freeoff))))[(bno + i)>>3] &= ~(1<<((bno + i)&(8 -1))));
 cgp->cg_cs.cs_nffree -= frags;
 fs->fs_cstotal.cs_nffree -= frags;
 fs->fs_csp[cg].cs_nffree -= frags;
 fs->fs_fmod = 1;
 cgp->cg_frsum[allocsiz]--;
 if (frags != allocsiz)
  cgp->cg_frsum[allocsiz - frags]++;
 blkno = ((daddr_t)(fs)->fs_fpg * (cg)) + bno;
 if (((((ip)->i_vnode))->v_mount->mnt_flag & 0x04000000))
  softdep_setup_blkmapdep(bp, fs, blkno);
 bdwrite(bp);
 return (blkno);
}
daddr_t
ffs_alloccgblk(struct inode *ip, struct buf *bp, daddr_t bpref)
{
 struct fs *fs;
 struct cg *cgp;
 daddr_t bno, blkno;
 u_int8_t *blksfree;
 int cylno, cgbpref;
 fs = ip->inode_u.fs;
 cgp = (struct cg *) bp->b_data;
 blksfree = (((cgp)->cg_magic != 0x090255) ? (((struct ocg *)(cgp))->cg_free) : ((u_int8_t *)((u_int8_t *)(cgp) + (cgp)->cg_freeoff)));
 if (bpref == 0) {
  bpref = cgp->cg_rotor;
 } else if ((cgbpref = ((bpref) / (fs)->fs_fpg)) != cgp->cg_cgx) {
  if (bpref < (((((daddr_t)(fs)->fs_fpg * (cgbpref)) + (fs)->fs_cgoffset * ((cgbpref) & ~((fs)->fs_cgmask))) + (fs)->fs_dblkno) + (fs)->fs_minfree))
   bpref = (((((daddr_t)(fs)->fs_fpg * (cgp->cg_cgx)) + (fs)->fs_cgoffset * ((cgp->cg_cgx) & ~((fs)->fs_cgmask))) + (fs)->fs_dblkno));
  else
   bpref = (((((daddr_t)(fs)->fs_fpg * (cgp->cg_cgx)) + (fs)->fs_cgoffset * ((cgp->cg_cgx) & ~((fs)->fs_cgmask))) + (fs)->fs_dblkno) + (fs)->fs_minfree);
 }
 bno = ((((bpref) &~ ((fs)->fs_frag - 1))) % (fs)->fs_fpg);
 if (ffs_isblock(fs, blksfree, ((bno) >> (fs)->fs_fragshift)))
  goto gotit;
 bno = ffs_mapsearch(fs, cgp, bpref, (int) fs->fs_frag);
 if (bno < 0)
  return (0);
 if (bno >= (((((((daddr_t)(fs)->fs_fpg * (cgp->cg_cgx)) + (fs)->fs_cgoffset * ((cgp->cg_cgx) & ~((fs)->fs_cgmask))) + (fs)->fs_dblkno) + (fs)->fs_minfree)) % (fs)->fs_fpg))
  cgp->cg_rotor = bno;
gotit:
 blkno = ((bno) >> (fs)->fs_fragshift);
 ffs_clrblock(fs, blksfree, blkno);
 ffs_clusteracct(fs, cgp, blkno, -1);
 cgp->cg_cs.cs_nbfree--;
 fs->fs_cstotal.cs_nbfree--;
 fs->fs_csp[cgp->cg_cgx].cs_nbfree--;
 if (fs->fs_magic != 0x19540119) {
  cylno = (((bno) << (fs)->fs_fsbtodb) / (fs)->fs_spc);
  (((cgp)->cg_magic != 0x090255) ? (((struct ocg *)(cgp))->cg_b[cylno]) : ((int16_t *)((u_int8_t *)(cgp) + (cgp)->cg_boff) + (cylno) * (fs)->fs_nrpos))[((fs)->fs_nrpos <= 1 ? 0 : (((bno) << (fs)->fs_fsbtodb) % (fs)->fs_spc / (fs)->fs_nsect * (fs)->fs_trackskew + ((bno) << (fs)->fs_fsbtodb) % (fs)->fs_spc % (fs)->fs_nsect * (fs)->fs_interleave) % (fs)->fs_nsect * (fs)->fs_nrpos / (fs)->fs_npsect)]--;
  (((cgp)->cg_magic != 0x090255) ? (((struct ocg *)(cgp))->cg_btot) : ((int32_t *)((u_int8_t *)(cgp) + (cgp)->cg_btotoff)))[cylno]--;
 }
 fs->fs_fmod = 1;
 blkno = ((daddr_t)(fs)->fs_fpg * (cgp->cg_cgx)) + bno;
 if (((((ip)->i_vnode))->v_mount->mnt_flag & 0x04000000))
  softdep_setup_blkmapdep(bp, fs, blkno);
 return (blkno);
}
daddr_t
ffs_nodealloccg(struct inode *ip, int cg, daddr_t ipref, int mode)
{
 struct fs *fs;
 struct cg *cgp;
 struct buf *bp;
 int start, len, loc, map, i;
 struct buf *ibp = ((void *)0);
 struct ufs2_dinode *dp2;
 fs = ip->inode_u.fs;
 if (fs->fs_csp[cg].cs_nifree == 0)
  return (0);
 if (!(bp = ffs_cgread(fs, ip, cg)))
  return (0);
 cgp = (struct cg *)bp->b_data;
 if (cgp->cg_cs.cs_nifree == 0) {
  brelse(bp);
  return (0);
 }
 cgp->cg_ffs2_time = cgp->cg_time = time_second;
 if (ipref) {
  ipref %= fs->fs_ipg;
  if (((((((cgp)->cg_magic != 0x090255) ? (((struct ocg *)(cgp))->cg_iused) : ((u_int8_t *)((u_int8_t *)(cgp) + (cgp)->cg_iusedoff))))[(ipref)>>3] & (1<<((ipref)&(8 -1)))) == 0))
   goto gotit;
 }
 start = cgp->cg_irotor / 8;
 len = (((fs->fs_ipg - cgp->cg_irotor) + ((8) - 1)) / (8));
 loc = skpc(0xff, len, &(((cgp)->cg_magic != 0x090255) ? (((struct ocg *)(cgp))->cg_iused) : ((u_int8_t *)((u_int8_t *)(cgp) + (cgp)->cg_iusedoff)))[start]);
 if (loc == 0) {
  len = start + 1;
  start = 0;
  loc = skpc(0xff, len, &(((cgp)->cg_magic != 0x090255) ? (((struct ocg *)(cgp))->cg_iused) : ((u_int8_t *)((u_int8_t *)(cgp) + (cgp)->cg_iusedoff)))[0]);
  if (loc == 0) {
   printf("cg = %d, irotor = %d, fs = %s\n",
       cg, cgp->cg_irotor, fs->fs_fsmnt);
   panic("ffs_nodealloccg: map corrupted");
  }
 }
 i = start + len - loc;
 map = (((cgp)->cg_magic != 0x090255) ? (((struct ocg *)(cgp))->cg_iused) : ((u_int8_t *)((u_int8_t *)(cgp) + (cgp)->cg_iusedoff)))[i];
 ipref = i * 8;
 for (i = 1; i < (1 << 8); i <<= 1, ipref++) {
  if ((map & i) == 0) {
   cgp->cg_irotor = ipref;
   goto gotit;
  }
 }
 printf("fs = %s\n", fs->fs_fsmnt);
 panic("ffs_nodealloccg: block not in map");
gotit:
 if (fs->fs_magic == 0x19540119 &&
     ipref + ((fs)->fs_inopb) > cgp->cg_initediblk &&
     cgp->cg_initediblk < cgp->cg_ffs2_niblk) {
                ibp = getblk(ip->i_ump->um_devvp, ((((daddr_t)(((((daddr_t)(fs)->fs_fpg * (((cg * fs->fs_ipg + cgp->cg_initediblk) / (fs)->fs_ipg))) + (fs)->fs_cgoffset * ((((cg * fs->fs_ipg + cgp->cg_initediblk) / (fs)->fs_ipg)) & ~((fs)->fs_cgmask))) + (fs)->fs_iblkno) + ((((((cg * fs->fs_ipg + cgp->cg_initediblk) % (fs)->fs_ipg) / ((fs)->fs_inopb))) << ((fs))->fs_fragshift))))) << (fs)->fs_fsbtodb),
                    (int)fs->fs_bsize, 0, 0);
                __builtin_memset((ibp->b_data), (0), (fs->fs_bsize));
                dp2 = (struct ufs2_dinode *)(ibp->b_data);
                for (i = 0; i < ((fs)->fs_inopb); i++) {
                        dp2->di_gen = (arc4random() & 0x7fffffff) / 2 + 1;
                        dp2++;
                }
                cgp->cg_initediblk += ((fs)->fs_inopb);
        }
 if (((((ip)->i_vnode))->v_mount->mnt_flag & 0x04000000))
  softdep_setup_inomapdep(bp, ip, cg * fs->fs_ipg + ipref);
 (((((cgp)->cg_magic != 0x090255) ? (((struct ocg *)(cgp))->cg_iused) : ((u_int8_t *)((u_int8_t *)(cgp) + (cgp)->cg_iusedoff))))[(ipref)>>3] |= 1<<((ipref)&(8 -1)));
 cgp->cg_cs.cs_nifree--;
 fs->fs_cstotal.cs_nifree--;
 fs->fs_csp[cg].cs_nifree--;
 fs->fs_fmod = 1;
 if ((mode & 0170000) == 0040000) {
  cgp->cg_cs.cs_ndir++;
  fs->fs_cstotal.cs_ndir++;
  fs->fs_csp[cg].cs_ndir++;
 }
 bdwrite(bp);
 if (ibp != ((void *)0))
  bawrite(ibp);
 return (cg * fs->fs_ipg + ipref);
}
void
ffs_blkfree(struct inode *ip, daddr_t bno, long size)
{
 struct fs *fs;
 struct cg *cgp;
 struct buf *bp;
 daddr_t blkno;
 int i, cg, blk, frags, bbase;
 fs = ip->inode_u.fs;
 if ((u_int)size > fs->fs_bsize || ((size) & (fs)->fs_qfmask) != 0 ||
     ((bno) & ((fs)->fs_frag - 1)) + ((size) >> (fs)->fs_fshift) > fs->fs_frag) {
  printf("dev = 0x%x, bsize = %d, size = %ld, fs = %s\n",
      ip->i_dev, fs->fs_bsize, size, fs->fs_fsmnt);
  panic("ffs_blkfree: bad size");
 }
 cg = ((bno) / (fs)->fs_fpg);
 if ((u_int)bno >= fs->fs_size) {
  printf("bad block %lld, ino %u\n", (long long)bno,
      ip->i_number);
  do { log(3, "uid %u on %s: %s\n", ((((ip)->i_ump->um_fstype == 1) ? (ip)->dinode_u.ffs1_din->di_uid : (ip)->dinode_u.ffs2_din->di_uid)), (fs)->fs_fsmnt, ("bad block")); } while (0);
  return;
 }
 if (!(bp = ffs_cgread(fs, ip, cg)))
  return;
 cgp = (struct cg *)bp->b_data;
 cgp->cg_ffs2_time = cgp->cg_time = time_second;
 bno = ((bno) % (fs)->fs_fpg);
 if (size == fs->fs_bsize) {
  blkno = ((bno) >> (fs)->fs_fragshift);
  if (!ffs_isfreeblock(fs, (((cgp)->cg_magic != 0x090255) ? (((struct ocg *)(cgp))->cg_free) : ((u_int8_t *)((u_int8_t *)(cgp) + (cgp)->cg_freeoff))), blkno)) {
   printf("dev = 0x%x, block = %lld, fs = %s\n",
       ip->i_dev, (long long)bno, fs->fs_fsmnt);
   panic("ffs_blkfree: freeing free block");
  }
  ffs_setblock(fs, (((cgp)->cg_magic != 0x090255) ? (((struct ocg *)(cgp))->cg_free) : ((u_int8_t *)((u_int8_t *)(cgp) + (cgp)->cg_freeoff))), blkno);
  ffs_clusteracct(fs, cgp, blkno, 1);
  cgp->cg_cs.cs_nbfree++;
  fs->fs_cstotal.cs_nbfree++;
  fs->fs_csp[cg].cs_nbfree++;
  if (fs->fs_magic != 0x19540119) {
   i = (((bno) << (fs)->fs_fsbtodb) / (fs)->fs_spc);
   (((cgp)->cg_magic != 0x090255) ? (((struct ocg *)(cgp))->cg_b[i]) : ((int16_t *)((u_int8_t *)(cgp) + (cgp)->cg_boff) + (i) * (fs)->fs_nrpos))[((fs)->fs_nrpos <= 1 ? 0 : (((bno) << (fs)->fs_fsbtodb) % (fs)->fs_spc / (fs)->fs_nsect * (fs)->fs_trackskew + ((bno) << (fs)->fs_fsbtodb) % (fs)->fs_spc % (fs)->fs_nsect * (fs)->fs_interleave) % (fs)->fs_nsect * (fs)->fs_nrpos / (fs)->fs_npsect)]++;
   (((cgp)->cg_magic != 0x090255) ? (((struct ocg *)(cgp))->cg_btot) : ((int32_t *)((u_int8_t *)(cgp) + (cgp)->cg_btotoff)))[i]++;
  }
 } else {
  bbase = bno - ((bno) & ((fs)->fs_frag - 1));
  blk = ((((((cgp)->cg_magic != 0x090255) ? (((struct ocg *)(cgp))->cg_free) : ((u_int8_t *)((u_int8_t *)(cgp) + (cgp)->cg_freeoff))))[(bbase) / 8] >> ((bbase) % 8)) & (0xff >> (8 - (fs)->fs_frag)));
  ffs_fragacct(fs, blk, cgp->cg_frsum, -1);
  frags = ((size) >> (fs)->fs_fshift);
  for (i = 0; i < frags; i++) {
   if ((((((cgp)->cg_magic != 0x090255) ? (((struct ocg *)(cgp))->cg_free) : ((u_int8_t *)((u_int8_t *)(cgp) + (cgp)->cg_freeoff))))[(bno + i)>>3] & (1<<((bno + i)&(8 -1))))) {
    printf("dev = 0x%x, block = %lld, fs = %s\n",
        ip->i_dev, (long long)(bno + i),
        fs->fs_fsmnt);
    panic("ffs_blkfree: freeing free frag");
   }
   (((((cgp)->cg_magic != 0x090255) ? (((struct ocg *)(cgp))->cg_free) : ((u_int8_t *)((u_int8_t *)(cgp) + (cgp)->cg_freeoff))))[(bno + i)>>3] |= 1<<((bno + i)&(8 -1)));
  }
  cgp->cg_cs.cs_nffree += i;
  fs->fs_cstotal.cs_nffree += i;
  fs->fs_csp[cg].cs_nffree += i;
  blk = ((((((cgp)->cg_magic != 0x090255) ? (((struct ocg *)(cgp))->cg_free) : ((u_int8_t *)((u_int8_t *)(cgp) + (cgp)->cg_freeoff))))[(bbase) / 8] >> ((bbase) % 8)) & (0xff >> (8 - (fs)->fs_frag)));
  ffs_fragacct(fs, blk, cgp->cg_frsum, 1);
  blkno = ((bbase) >> (fs)->fs_fragshift);
  if (ffs_isblock(fs, (((cgp)->cg_magic != 0x090255) ? (((struct ocg *)(cgp))->cg_free) : ((u_int8_t *)((u_int8_t *)(cgp) + (cgp)->cg_freeoff))), blkno)) {
   cgp->cg_cs.cs_nffree -= fs->fs_frag;
   fs->fs_cstotal.cs_nffree -= fs->fs_frag;
   fs->fs_csp[cg].cs_nffree -= fs->fs_frag;
   ffs_clusteracct(fs, cgp, blkno, 1);
   cgp->cg_cs.cs_nbfree++;
   fs->fs_cstotal.cs_nbfree++;
   fs->fs_csp[cg].cs_nbfree++;
   if (fs->fs_magic != 0x19540119) {
    i = (((bbase) << (fs)->fs_fsbtodb) / (fs)->fs_spc);
    (((cgp)->cg_magic != 0x090255) ? (((struct ocg *)(cgp))->cg_b[i]) : ((int16_t *)((u_int8_t *)(cgp) + (cgp)->cg_boff) + (i) * (fs)->fs_nrpos))[((fs)->fs_nrpos <= 1 ? 0 : (((bbase) << (fs)->fs_fsbtodb) % (fs)->fs_spc / (fs)->fs_nsect * (fs)->fs_trackskew + ((bbase) << (fs)->fs_fsbtodb) % (fs)->fs_spc % (fs)->fs_nsect * (fs)->fs_interleave) % (fs)->fs_nsect * (fs)->fs_nrpos / (fs)->fs_npsect)]++;
    (((cgp)->cg_magic != 0x090255) ? (((struct ocg *)(cgp))->cg_btot) : ((int32_t *)((u_int8_t *)(cgp) + (cgp)->cg_btotoff)))[i]++;
   }
  }
 }
 fs->fs_fmod = 1;
 bdwrite(bp);
}
int
ffs_inode_free(struct inode *pip, ufsino_t ino, mode_t mode)
{
 struct vnode *pvp = ((pip)->i_vnode);
 if (((pvp)->v_mount->mnt_flag & 0x04000000)) {
  softdep_freefile(pvp, ino, mode);
  return (0);
 }
 return (ffs_freefile(pip, ino, mode));
}
int
ffs_freefile(struct inode *pip, ufsino_t ino, mode_t mode)
{
 struct fs *fs;
 struct cg *cgp;
 struct buf *bp;
 int cg;
 fs = pip->inode_u.fs;
 if ((u_int)ino >= fs->fs_ipg * fs->fs_ncg)
  panic("ffs_freefile: range: dev = 0x%x, ino = %d, fs = %s",
      pip->i_dev, ino, fs->fs_fsmnt);
 cg = ((ino) / (fs)->fs_ipg);
 if (!(bp = ffs_cgread(fs, pip, cg)))
  return (0);
 cgp = (struct cg *)bp->b_data;
 cgp->cg_ffs2_time = cgp->cg_time = time_second;
 ino %= fs->fs_ipg;
 if (((((((cgp)->cg_magic != 0x090255) ? (((struct ocg *)(cgp))->cg_iused) : ((u_int8_t *)((u_int8_t *)(cgp) + (cgp)->cg_iusedoff))))[(ino)>>3] & (1<<((ino)&(8 -1)))) == 0)) {
  printf("dev = 0x%x, ino = %u, fs = %s\n",
      pip->i_dev, ino, fs->fs_fsmnt);
  if (fs->fs_ronly == 0)
   panic("ffs_freefile: freeing free inode");
 }
 (((((cgp)->cg_magic != 0x090255) ? (((struct ocg *)(cgp))->cg_iused) : ((u_int8_t *)((u_int8_t *)(cgp) + (cgp)->cg_iusedoff))))[(ino)>>3] &= ~(1<<((ino)&(8 -1))));
 if (ino < cgp->cg_irotor)
  cgp->cg_irotor = ino;
 cgp->cg_cs.cs_nifree++;
 fs->fs_cstotal.cs_nifree++;
 fs->fs_csp[cg].cs_nifree++;
 if ((mode & 0170000) == 0040000) {
  cgp->cg_cs.cs_ndir--;
  fs->fs_cstotal.cs_ndir--;
  fs->fs_csp[cg].cs_ndir--;
 }
 fs->fs_fmod = 1;
 bdwrite(bp);
 return (0);
}
daddr_t
ffs_mapsearch(struct fs *fs, struct cg *cgp, daddr_t bpref, int allocsiz)
{
 daddr_t bno;
 int start, len, loc, i;
 int blk, field, subfield, pos;
 if (bpref)
  start = ((bpref) % (fs)->fs_fpg) / 8;
 else
  start = cgp->cg_frotor / 8;
 len = (((fs->fs_fpg) + ((8) - 1)) / (8)) - start;
 loc = scanc((u_int)len, (u_char *)&(((cgp)->cg_magic != 0x090255) ? (((struct ocg *)(cgp))->cg_free) : ((u_int8_t *)((u_int8_t *)(cgp) + (cgp)->cg_freeoff)))[start],
  (u_char *)fragtbl[fs->fs_frag],
  (u_char)(1 << (allocsiz - 1 + (fs->fs_frag % 8))));
 if (loc == 0) {
  len = start + 1;
  start = 0;
  loc = scanc((u_int)len, (u_char *)&(((cgp)->cg_magic != 0x090255) ? (((struct ocg *)(cgp))->cg_free) : ((u_int8_t *)((u_int8_t *)(cgp) + (cgp)->cg_freeoff)))[0],
   (u_char *)fragtbl[fs->fs_frag],
   (u_char)(1 << (allocsiz - 1 + (fs->fs_frag % 8))));
  if (loc == 0) {
   printf("start = %d, len = %d, fs = %s\n",
       start, len, fs->fs_fsmnt);
   panic("ffs_alloccg: map corrupted");
  }
 }
 bno = (start + len - loc) * 8;
 cgp->cg_frotor = bno;
 for (i = bno + 8; bno < i; bno += fs->fs_frag) {
  blk = ((((((cgp)->cg_magic != 0x090255) ? (((struct ocg *)(cgp))->cg_free) : ((u_int8_t *)((u_int8_t *)(cgp) + (cgp)->cg_freeoff))))[(bno) / 8] >> ((bno) % 8)) & (0xff >> (8 - (fs)->fs_frag)));
  blk <<= 1;
  field = around[allocsiz];
  subfield = inside[allocsiz];
  for (pos = 0; pos <= fs->fs_frag - allocsiz; pos++) {
   if ((blk & field) == subfield)
    return (bno + pos);
   field <<= 1;
   subfield <<= 1;
  }
 }
 printf("bno = %lld, fs = %s\n", (long long)bno, fs->fs_fsmnt);
 panic("ffs_alloccg: block not in map");
 return (-1);
}
void
ffs_clusteracct(struct fs *fs, struct cg *cgp, daddr_t blkno, int cnt)
{
 int32_t *sump;
 int32_t *lp;
 u_char *freemapp, *mapp;
 int i, start, end, forw, back, map, bit;
 if (fs->fs_contigsumsize <= 0)
  return;
 freemapp = ((u_int8_t *)((u_int8_t *)(cgp) + (cgp)->cg_clusteroff));
 sump = ((int32_t *)((u_int8_t *)(cgp) + (cgp)->cg_clustersumoff));
 if (cnt > 0)
  ((freemapp)[(blkno)>>3] |= 1<<((blkno)&(8 -1)));
 else
  ((freemapp)[(blkno)>>3] &= ~(1<<((blkno)&(8 -1))));
 start = blkno + 1;
 end = start + fs->fs_contigsumsize;
 if (end >= cgp->cg_nclusterblks)
  end = cgp->cg_nclusterblks;
 mapp = &freemapp[start / 8];
 map = *mapp++;
 bit = 1 << (start % 8);
 for (i = start; i < end; i++) {
  if ((map & bit) == 0)
   break;
  if ((i & (8 - 1)) != (8 - 1)) {
   bit <<= 1;
  } else {
   map = *mapp++;
   bit = 1;
  }
 }
 forw = i - start;
 start = blkno - 1;
 end = start - fs->fs_contigsumsize;
 if (end < 0)
  end = -1;
 mapp = &freemapp[start / 8];
 map = *mapp--;
 bit = 1 << (start % 8);
 for (i = start; i > end; i--) {
  if ((map & bit) == 0)
   break;
  if ((i & (8 - 1)) != 0) {
   bit >>= 1;
  } else {
   map = *mapp--;
   bit = 1 << (8 - 1);
  }
 }
 back = start - i;
 i = back + forw + 1;
 if (i > fs->fs_contigsumsize)
  i = fs->fs_contigsumsize;
 sump[i] += cnt;
 if (back > 0)
  sump[back] -= cnt;
 if (forw > 0)
  sump[forw] -= cnt;
 lp = &sump[fs->fs_contigsumsize];
 for (i = fs->fs_contigsumsize; i > 0; i--)
  if (*lp-- > 0)
   break;
 fs->fs_maxcluster[cgp->cg_cgx] = i;
}
