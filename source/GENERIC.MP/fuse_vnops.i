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
struct dirent {
 __ino_t d_fileno;
 __off_t d_off;
 __uint16_t d_reclen;
 __uint8_t d_type;
 __uint8_t d_namlen;
 __uint8_t __d_padding[4];
 char d_name[255 + 1];
};
struct flock {
 off_t l_start;
 off_t l_len;
 pid_t l_pid;
 short l_type;
 short l_whence;
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
 struct mutex f_mtx;
 short f_flag;
 short f_type;
 long f_count;
 struct ucred *f_cred;
 struct fileops *f_ops;
 off_t f_offset;
 void *f_data;
 int f_iflags;
 uint64_t f_rxfer;
 uint64_t f_wxfer;
 uint64_t f_seek;
 uint64_t f_rbytes;
 uint64_t f_wbytes;
};
int fdrop(struct file *, struct proc *);
struct filelist { struct file *lh_first; };
extern int maxfiles;
extern int numfiles;
extern struct fileops vnops;
struct locklist { struct lockf *tqh_first; struct lockf **tqh_last; };
struct lockf {
 short lf_flags;
 short lf_type;
 off_t lf_start;
 off_t lf_end;
 caddr_t lf_id;
 struct lockf **lf_head;
 struct lockf *lf_next;
 struct locklist lf_blkhd;
 struct { struct lockf *tqe_next; struct lockf **tqe_prev; } lf_block;
 uid_t lf_uid;
 pid_t lf_pid;
};

void lf_init(void);
int lf_advlock(struct lockf **,
     off_t, caddr_t, int, struct flock *, int);
int lf_clearlock(struct lockf *);
int lf_findoverlap(struct lockf *,
     struct lockf *, int, struct lockf ***, struct lockf **);
struct lockf *
  lf_getblock(struct lockf *);
int lf_getlock(struct lockf *, struct flock *);
int lf_setlock(struct lockf *);
void lf_split(struct lockf *, struct lockf *);
void lf_wakelock(struct lockf *);

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
struct nameidata {
 const char *ni_dirp;
 int ni_dirfd;
 enum uio_seg ni_segflg;
 struct vnode *ni_startdir;
 struct vnode *ni_rootdir;
 uint64_t ni_pledge;
 struct vnode *ni_vp;
 struct vnode *ni_dvp;
 size_t ni_pathlen;
 char *ni_next;
 u_long ni_loopcnt;
 struct componentname {
  u_long cn_nameiop;
  u_long cn_flags;
  struct proc *cn_proc;
  struct ucred *cn_cred;
  char *cn_pnbuf;
  char *cn_nameptr;
  long cn_namelen;
  long cn_consume;
 } ni_cnd;
};
void ndinitat(struct nameidata *ndp, u_long op, u_long flags,
    enum uio_seg segflg, int dirfd, const char *namep, struct proc *p);
struct namecache {
 struct { struct namecache *tqe_next; struct namecache **tqe_prev; } nc_lru;
 struct { struct namecache *tqe_next; struct namecache **tqe_prev; } nc_neg;
 struct rb_entry n_rbcache;
 struct { struct namecache *tqe_next; struct namecache **tqe_prev; } nc_me;
 struct vnode *nc_dvp;
 u_long nc_dvpid;
 struct vnode *nc_vp;
 u_long nc_vpid;
 char nc_nlen;
 char nc_name[31];
};
struct namecache_rb_cache;
int namei(struct nameidata *ndp);
int vfs_lookup(struct nameidata *ndp);
int vfs_relookup(struct vnode *dvp, struct vnode **vpp,
        struct componentname *cnp);
void cache_tree_init(struct namecache_rb_cache *);
void cache_purge(struct vnode *);
int cache_lookup(struct vnode *, struct vnode **, struct componentname *);
void cache_enter(struct vnode *, struct vnode *, struct componentname *);
int cache_revlookup(struct vnode *, struct vnode **, char **, char *);
void nchinit(void);
struct mount;
void cache_purgevfs(struct mount *);
extern struct pool namei_pool;
struct nchstats {
 u_int64_t ncs_goodhits;
 u_int64_t ncs_neghits;
 u_int64_t ncs_badhits;
 u_int64_t ncs_falsehits;
 u_int64_t ncs_miss;
 u_int64_t ncs_long;
 u_int64_t ncs_pass2;
 u_int64_t ncs_2passes;
 u_int64_t ncs_revhits;
 u_int64_t ncs_revmiss;
 u_int64_t ncs_dothits;
 u_int64_t ncs_dotdothits;
};
typedef struct pollfd {
 int fd;
 short events;
 short revents;
} pollfd_t;
typedef unsigned int nfds_t;
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
 u_int p_spserial;
 vaddr_t p_spstart;
 vaddr_t p_spend;
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
void uid_release(struct uidinfo *);
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
void enternewpgrp(struct process *, struct pgrp *, struct session *);
void enterthispgrp(struct process *, struct pgrp *);
int inferior(struct process *, struct process *);
void leavepgrp(struct process *);
void killjobc(struct process *);
void preempt(void);
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
struct specinfo {
 struct vnode **si_hashchain;
 struct vnode *si_specnext;
 struct mount *si_mountpoint;
 dev_t si_rdev;
 struct lockf *si_lockf;
 daddr_t si_lastr;
 union {
  struct vnode *ci_parent;
  u_int8_t *ci_bitmap;
 } si_ci;
};
struct cloneinfo {
 struct vnode *ci_vp;
 void *ci_data;
};
extern struct vnode *speclisth[64];
int spec_badop(void *);
int spec_getattr(void *);
int spec_setattr(void *);
int spec_access(void *);
int spec_open(void *);
int spec_close(void *);
int spec_read(void *);
int spec_write(void *);
int spec_ioctl(void *);
int spec_poll(void *);
int spec_kqfilter(void *);
int spec_fsync(void *);
int spec_inactive(void *);
int spec_strategy(void *);
int spec_print(void *);
int spec_pathconf(void *);
int spec_advlock(void *);
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
struct statvfs {
 unsigned long f_bsize;
 unsigned long f_frsize;
 fsblkcnt_t f_blocks;
 fsblkcnt_t f_bfree;
 fsblkcnt_t f_bavail;
 fsfilcnt_t f_files;
 fsfilcnt_t f_ffree;
 fsfilcnt_t f_favail;
 unsigned long f_fsid;
 unsigned long f_flag;
 unsigned long f_namemax;
};
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
struct fb_hdr {
 struct { struct fusebuf *sqe_next; } fh_next;
 size_t fh_len;
 int fh_err;
 int fh_type;
 ino_t fh_ino;
 uint64_t fh_uuid;
};
struct fb_io {
 uint64_t fi_fd;
 ino_t fi_ino;
 off_t fi_off;
 size_t fi_len;
 mode_t fi_mode;
 uint32_t fi_flags;
 dev_t fi_rdev;
};
struct fusebuf {
 struct fb_hdr fb_hdr;
 union {
  struct statvfs FD_stat;
  struct stat FD_attr;
  struct fb_io FD_io;
 } FD;
 uint8_t *fb_dat;
};
struct fusebuf *fb_setup(size_t, ino_t, int, struct proc *);
int fb_queue(dev_t, struct fusebuf *);
void fb_delete(struct fusebuf *);
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
enum fufh_type {
 FUFH_INVALID = -1,
 FUFH_RDONLY = 0,
 FUFH_WRONLY = 1,
 FUFH_RDWR = 2,
 FUFH_MAXTYPE = 3,
};
struct fusefs_filehandle {
 uint64_t fh_id;
 enum fufh_type fh_type;
};
struct fusefs_node {
 struct inode ufs_ino;
 struct fusefs_filehandle fufh[FUFH_MAXTYPE];
 off_t filesize;
};
uint64_t fusefs_fd_get(struct fusefs_node *, enum fufh_type);
struct fb_ioctl_xch {
 uint64_t fbxch_uuid;
 size_t fbxch_len;
 uint8_t *fbxch_data;
};
struct fuse_msg;
struct fusefs_mnt {
 struct mount *mp;
 uint32_t undef_op;
 int max_read;
 int sess_init;
 dev_t dev;
};
extern struct vops fusefs_vops;
extern struct pool fusefs_fbuf_pool;
int fusefs_file_open(struct fusefs_mnt *, struct fusefs_node *, enum fufh_type,
    int, int, struct proc *);
int fusefs_file_close(struct fusefs_mnt *, struct fusefs_node *,
    enum fufh_type, int, int, struct proc *);
void fuse_device_cleanup(dev_t, struct fusebuf *);
void fuse_device_queue_fbuf(dev_t, struct fusebuf *);
void fuse_device_set_fmp(struct fusefs_mnt *, int);
int fusefs_kqfilter(void *);
int fusefs_lookup(void *);
int fusefs_open(void *);
int fusefs_close(void *);
int fusefs_access(void *);
int fusefs_getattr(void *);
int fusefs_setattr(void *);
int fusefs_ioctl(void *);
int fusefs_link(void *);
int fusefs_symlink(void *);
int fusefs_readdir(void *);
int fusefs_readlink(void *);
int fusefs_inactive(void *);
int fusefs_reclaim(void *);
int fusefs_print(void *);
int fusefs_create(void *);
int fusefs_mknod(void *);
int fusefs_read(void *);
int fusefs_write(void *);
int fusefs_poll(void *);
int fusefs_remove(void *);
int fusefs_rename(void *);
int fusefs_mkdir(void *);
int fusefs_rmdir(void *);
int fusefs_strategy(void *);
int fusefs_lock(void *);
int fusefs_unlock(void *);
int fusefs_islocked(void *);
int fusefs_advlock(void *);
int filt_fusefsread(struct knote *, long);
int filt_fusefswrite(struct knote *, long);
int filt_fusefsvnode(struct knote *, long);
void filt_fusefsdetach(struct knote *);
struct vops fusefs_vops = {
 .vop_lookup = fusefs_lookup,
 .vop_create = fusefs_create,
 .vop_mknod = fusefs_mknod,
 .vop_open = fusefs_open,
 .vop_close = fusefs_close,
 .vop_access = fusefs_access,
 .vop_getattr = fusefs_getattr,
 .vop_setattr = fusefs_setattr,
 .vop_read = fusefs_read,
 .vop_write = fusefs_write,
 .vop_ioctl = fusefs_ioctl,
 .vop_poll = fusefs_poll,
 .vop_kqfilter = fusefs_kqfilter,
 .vop_fsync = nullop,
 .vop_remove = fusefs_remove,
 .vop_link = fusefs_link,
 .vop_rename = fusefs_rename,
 .vop_mkdir = fusefs_mkdir,
 .vop_rmdir = fusefs_rmdir,
 .vop_symlink = fusefs_symlink,
 .vop_readdir = fusefs_readdir,
 .vop_readlink = fusefs_readlink,
 .vop_abortop = vop_generic_abortop,
 .vop_inactive = fusefs_inactive,
 .vop_reclaim = fusefs_reclaim,
 .vop_lock = fusefs_lock,
 .vop_unlock = fusefs_unlock,
 .vop_bmap = vop_generic_bmap,
 .vop_strategy = fusefs_strategy,
 .vop_print = fusefs_print,
 .vop_islocked = fusefs_islocked,
 .vop_pathconf = spec_pathconf,
 .vop_advlock = fusefs_advlock,
};
struct filterops fusefsread_filtops =
 { 1, ((void *)0), filt_fusefsdetach, filt_fusefsread };
struct filterops fusefswrite_filtops =
 { 1, ((void *)0), filt_fusefsdetach, filt_fusefswrite };
struct filterops fusefsvnode_filtops =
 { 1, ((void *)0), filt_fusefsdetach, filt_fusefsvnode };
int
fusefs_kqfilter(void *v)
{
 struct vop_kqfilter_args *ap = v;
 struct vnode *vp = ap->a_vp;
 struct knote *kn = ap->a_kn;
 switch (kn->kn_kevent.filter) {
 case (-1):
  kn->kn_fop = &fusefsread_filtops;
  break;
 case (-2):
  kn->kn_fop = &fusefswrite_filtops;
  break;
 case (-4):
  kn->kn_fop = &fusefsvnode_filtops;
  break;
 default:
  return (22);
 }
 kn->kn_hook = (caddr_t)vp;
 do { (kn)->kn_selnext.sle_next = (&vp->v_selectinfo.si_note)->slh_first; (&vp->v_selectinfo.si_note)->slh_first = (kn); } while (0);
 return (0);
}
void
filt_fusefsdetach(struct knote *kn)
{
 struct vnode *vp = (struct vnode *)kn->kn_hook;
 do { if ((&vp->v_selectinfo.si_note)->slh_first == (kn)) { do { ((&vp->v_selectinfo.si_note))->slh_first = ((&vp->v_selectinfo.si_note))->slh_first->kn_selnext.sle_next; } while (0); } else { struct knote *curelm = (&vp->v_selectinfo.si_note)->slh_first; while (curelm->kn_selnext.sle_next != (kn)) curelm = curelm->kn_selnext.sle_next; curelm->kn_selnext.sle_next = curelm->kn_selnext.sle_next->kn_selnext.sle_next; } ((kn)->kn_selnext.sle_next) = ((void *)-1); } while (0);
}
int
filt_fusefsread(struct knote *kn, long hint)
{
 struct vnode *vp = (struct vnode *)kn->kn_hook;
 struct fusefs_node *ip = ((struct fusefs_node *)(vp)->v_data);
 if (hint == 0x0040) {
  kn->kn_kevent.flags |= (0x8000 | 0x0010);
  return (1);
 }
 kn->kn_kevent.data = ip->filesize - kn->kn_ptr.p_fp->f_offset;
 if (kn->kn_kevent.data == 0 && kn->kn_sfflags & 0x0002) {
  kn->kn_kevent.fflags |= 0x0002;
  return (1);
 }
 return (kn->kn_kevent.data != 0);
}
int
filt_fusefswrite(struct knote *kn, long hint)
{
 if (hint == 0x0040) {
  kn->kn_kevent.flags |= (0x8000 | 0x0010);
  return (1);
 }
 kn->kn_kevent.data = 0;
 return (1);
}
int
filt_fusefsvnode(struct knote *kn, long int hint)
{
 if (kn->kn_sfflags & hint)
  kn->kn_kevent.fflags |= hint;
 if (hint == 0x0040) {
  kn->kn_kevent.flags |= 0x8000;
  return (1);
 }
 return (kn->kn_kevent.fflags != 0);
}
int
fusefs_open(void *v)
{
 struct vop_open_args *ap;
 struct fusefs_node *ip;
 struct fusefs_mnt *fmp;
 enum fufh_type fufh_type = FUFH_RDONLY;
 int flags;
 int error;
 int isdir;
 ap = v;
 ip = ((struct fusefs_node *)(ap->a_vp)->v_data);
 fmp = (struct fusefs_mnt *)ip->ufs_ino.i_ump;
 if (!fmp->sess_init)
  return (6);
 isdir = 0;
 if (ap->a_vp->v_type == VDIR)
  isdir = 1;
 else {
  if ((ap->a_mode & 0x0001) && (ap->a_mode & 0x0002))
   fufh_type = FUFH_RDWR;
  else if (ap->a_mode & (0x0002))
   fufh_type = FUFH_WRONLY;
 }
 if (ip->fufh[fufh_type].fh_type != FUFH_INVALID)
  return (0);
 flags = (((ap->a_mode) & ~0x0003) | (((ap->a_mode) - 1) & 0x0003)) & ~(0x0200|0x0800|0x0400);
 error = fusefs_file_open(fmp, ip, fufh_type, flags, isdir, ap->a_p);
 return (error);
}
int
fusefs_close(void *v)
{
 struct vop_close_args *ap;
 struct fusefs_node *ip;
 struct fusefs_mnt *fmp;
 enum fufh_type fufh_type = FUFH_RDONLY;
 int isdir, i;
 ap = v;
 ip = ((struct fusefs_node *)(ap->a_vp)->v_data);
 fmp = (struct fusefs_mnt *)ip->ufs_ino.i_ump;
 if (!fmp->sess_init)
  return (0);
 if (ap->a_vp->v_type == VDIR) {
  isdir = 1;
  if (ip->fufh[fufh_type].fh_type != FUFH_INVALID)
   return (fusefs_file_close(fmp, ip, fufh_type, 0x0000,
       isdir, ap->a_p));
 } else {
  if (ap->a_fflag & 0x10)
   return (0);
  if ((ap->a_fflag & 0x0001) && (ap->a_fflag & 0x0002))
   fufh_type = FUFH_RDWR;
  else if (ap->a_fflag & (0x0002))
   fufh_type = FUFH_WRONLY;
 }
 if (ip->fufh[fufh_type].fh_type != FUFH_INVALID) {
  for (i = 0; i < FUFH_MAXTYPE; i++)
   if (ip->fufh[fufh_type].fh_type != FUFH_INVALID)
    break;
  return (0);
 }
 return (0);
}
int
fusefs_access(void *v)
{
 struct vop_access_args *ap;
 struct fusefs_node *ip;
 struct fusefs_mnt *fmp;
 struct fusebuf *fbuf;
 struct ucred *cred;
 struct vattr vattr;
 struct proc *p;
 uint32_t mask = 0;
 int error = 0;
 ap = v;
 p = ap->a_p;
 cred = p->p_ucred;
 ip = ((struct fusefs_node *)(ap->a_vp)->v_data);
 fmp = (struct fusefs_mnt *)ip->ufs_ino.i_ump;
 if (!fmp->sess_init)
  return (6);
 if (fmp->undef_op & 1<<0)
  goto system_check;
 if (ap->a_vp->v_type == VLNK)
  goto system_check;
 if (ap->a_vp->v_type == VREG && (ap->a_mode & 00200 & 00100))
  goto system_check;
 if ((ap->a_mode & 00200) && (fmp->mp->mnt_flag & 0x00000001))
  return (13);
 if ((ap->a_mode & 00200) != 0)
  mask |= 0x2;
 if ((ap->a_mode & 00400) != 0)
  mask |= 0x4;
 if ((ap->a_mode & 00100) != 0)
  mask |= 0x1;
 fbuf = fb_setup(0, ip->ufs_ino.i_number, 24, p);
 fbuf->FD.FD_io.fi_mode = mask;
 error = fb_queue(fmp->dev, fbuf);
 if (error) {
  if (error == 78) {
   fmp->undef_op |= 1<<0;
   fb_delete(fbuf);
   goto system_check;
  }
  printf("fusefs: access error %i\n", error);
  fb_delete(fbuf);
  return (error);
 }
 fb_delete(fbuf);
 return (error);
system_check:
 if ((error = VOP_GETATTR(ap->a_vp, &vattr, cred, p)) != 0)
  return (error);
 return (vaccess(ap->a_vp->v_type, vattr.va_mode & (0004000|0002000|0001000|0000700|0000070|0000007),
     vattr.va_uid, vattr.va_gid, ap->a_mode,
     ap->a_cred));
}
int
fusefs_getattr(void *v)
{
 struct vop_getattr_args *ap = v;
 struct vnode *vp = ap->a_vp;
 struct fusefs_mnt *fmp;
 struct vattr *vap = ap->a_vap;
 struct proc *p = ap->a_p;
 struct fusefs_node *ip;
 struct fusebuf *fbuf;
 struct stat *st;
 int error = 0;
 ip = ((struct fusefs_node *)(vp)->v_data);
 fmp = (struct fusefs_mnt *)ip->ufs_ino.i_ump;
 if (!fmp->sess_init)
  return (6);
 fbuf = fb_setup(0, ip->ufs_ino.i_number, 1, p);
 error = fb_queue(fmp->dev, fbuf);
 if (error) {
  fb_delete(fbuf);
  return (error);
 }
 vattr_null(vap);
 st = &fbuf->FD.FD_attr;
 vap->va_type = (iftovt_tab[((st->st_mode) & 0170000) >> 12]);
 vap->va_mode = st->st_mode & ~0170000;
 vap->va_nlink = st->st_nlink;
 vap->va_uid = st->st_uid;
 vap->va_gid = st->st_gid;
 vap->va_fsid = fmp->mp->mnt_stat.f_fsid.val[0];
 vap->va_fileid = st->st_ino;
 vap->va_size = st->st_size;
 vap->va_blocksize = st->st_blksize;
 vap->va_atime = st->st_atim;
 vap->va_mtime = st->st_mtim;
 vap->va_ctime = st->st_ctim;
 vap->va_rdev = st->st_rdev;
 vap->va_bytes = st->st_blocks * 512;
 fb_delete(fbuf);
 return (error);
}
int
fusefs_setattr(void *v)
{
 struct vop_setattr_args *ap = v;
 struct vattr *vap = ap->a_vap;
 struct vnode *vp = ap->a_vp;
 struct fusefs_node *ip = ((struct fusefs_node *)(vp)->v_data);
 struct proc *p = ap->a_p;
 struct fusefs_mnt *fmp;
 struct fusebuf *fbuf;
 struct fb_io *io;
 int error = 0;
 fmp = (struct fusefs_mnt *)ip->ufs_ino.i_ump;
 if ((vap->va_type != VNON) || (vap->va_nlink != (-1)) ||
     (vap->va_fsid != (-1)) || (vap->va_fileid != (-1)) ||
     (vap->va_blocksize != (-1)) || (vap->va_rdev != (-1)) ||
     ((int)vap->va_bytes != (-1)) || (vap->va_gen != (-1)))
  return (22);
 if (!fmp->sess_init)
  return (6);
 if (fmp->undef_op & 1<<7)
  return (78);
 fbuf = fb_setup(sizeof(*io), ip->ufs_ino.i_number, 2, p);
 io = ((struct fb_io *)((fbuf)->fb_dat));
 io->fi_flags = 0;
 if (vap->va_uid != (uid_t)(-1)) {
  if (vp->v_mount->mnt_flag & 0x00000001) {
   error = 30;
   goto out;
  }
  fbuf->FD.FD_attr.st_uid = vap->va_uid;
  io->fi_flags |= (1 << 1);
 }
 if (vap->va_gid != (gid_t)(-1)) {
  if (vp->v_mount->mnt_flag & 0x00000001) {
   error = 30;
   goto out;
  }
  fbuf->FD.FD_attr.st_gid = vap->va_gid;
  io->fi_flags |= (1 << 2);
 }
 if (vap->va_size != (-1)) {
  switch (vp->v_type) {
  case VDIR:
   error = 21;
   goto out;
  case VLNK:
  case VREG:
   if (vp->v_mount->mnt_flag & 0x00000001) {
    error = 30;
    goto out;
   }
   break;
  default:
   break;
  }
  fbuf->FD.FD_attr.st_size = vap->va_size;
  io->fi_flags |= (1 << 3);
 }
 if (vap->va_atime.tv_nsec != (-1)) {
  if (vp->v_mount->mnt_flag & 0x00000001) {
   error = 30;
   goto out;
  }
  fbuf->FD.FD_attr.st_atim = vap->va_atime;
  io->fi_flags |= (1 << 4);
 }
 if (vap->va_mtime.tv_nsec != (-1)) {
  if (vp->v_mount->mnt_flag & 0x00000001) {
   error = 30;
   goto out;
  }
  fbuf->FD.FD_attr.st_mtim = vap->va_mtime;
  io->fi_flags |= (1 << 5);
 }
 if (vap->va_mode != (mode_t)(-1)) {
  if (vp->v_mount->mnt_flag & 0x00000001) {
   error = 30;
   goto out;
  }
  fbuf->FD.FD_attr.st_mode = vap->va_mode & (0004000|0002000|0001000|0000700|0000070|0000007);
  io->fi_flags |= (1 << 0);
 }
 if (!io->fi_flags) {
  goto out;
 }
 error = fb_queue(fmp->dev, fbuf);
 if (error) {
  if (error == 78)
   fmp->undef_op |= 1<<7;
  goto out;
 }
 do { struct klist *list = (&ap->a_vp->v_selectinfo.si_note); if ((list) != ((void *)0)) knote((list), ((0x0008))); } while (0);
out:
 fb_delete(fbuf);
 return (error);
}
int
fusefs_ioctl(void *v)
{
 return (25);
}
int
fusefs_link(void *v)
{
 struct vop_link_args *ap = v;
 struct vnode *dvp = ap->a_dvp;
 struct vnode *vp = ap->a_vp;
 struct componentname *cnp = ap->a_cnp;
 struct proc *p = cnp->cn_proc;
 struct fusefs_mnt *fmp;
 struct fusefs_node *ip;
 struct fusefs_node *dip;
 struct fusebuf *fbuf;
 int error = 0;
 ip = ((struct fusefs_node *)(vp)->v_data);
 dip = ((struct fusefs_node *)(dvp)->v_data);
 fmp = (struct fusefs_mnt *)ip->ufs_ino.i_ump;
 if (!fmp->sess_init) {
  VOP_ABORTOP(dvp, cnp);
  error = 6;
  goto out2;
 }
 if (fmp->undef_op & 1<<3) {
  VOP_ABORTOP(dvp, cnp);
  error = 78;
  goto out2;
 }
 if (vp->v_type == VDIR) {
  VOP_ABORTOP(dvp, cnp);
  error = 1;
  goto out2;
 }
 if (dvp->v_mount != vp->v_mount) {
  VOP_ABORTOP(dvp, cnp);
  error = 18;
  goto out2;
 }
 if (dvp != vp && (error = vn_lock(vp, 0x0001UL))) {
  VOP_ABORTOP(dvp, cnp);
  goto out2;
 }
 fbuf = fb_setup(cnp->cn_namelen + 1, dip->ufs_ino.i_number,
     10, p);
 fbuf->FD.FD_io.fi_ino = ip->ufs_ino.i_number;
 __builtin_memcpy((fbuf->fb_dat), (cnp->cn_nameptr), (cnp->cn_namelen));
 fbuf->fb_dat[cnp->cn_namelen] = '\0';
 error = fb_queue(fmp->dev, fbuf);
 if (error) {
  if (error == 78)
   fmp->undef_op |= 1<<3;
  fb_delete(fbuf);
  goto out1;
 }
 fb_delete(fbuf);
 do { struct klist *list = (&vp->v_selectinfo.si_note); if ((list) != ((void *)0)) knote((list), ((0x0010))); } while (0);
 do { struct klist *list = (&dvp->v_selectinfo.si_note); if ((list) != ((void *)0)) knote((list), ((0x0002))); } while (0);
out1:
 if (dvp != vp)
  VOP_UNLOCK(vp);
out2:
 vput(dvp);
 return (error);
}
int
fusefs_symlink(void *v)
{
 struct vop_symlink_args *ap = v;
 struct vnode **vpp = ap->a_vpp;
 struct componentname *cnp = ap->a_cnp;
 struct vnode *dvp = ap->a_dvp;
 struct proc *p = cnp->cn_proc;
 char *target = ap->a_target;
 struct fusefs_node *dp;
 struct fusefs_mnt *fmp;
 struct fusebuf *fbuf;
 struct vnode *tdp;
 int error = 0;
 int len;
 dp = ((struct fusefs_node *)(dvp)->v_data);
 fmp = (struct fusefs_mnt *)dp->ufs_ino.i_ump;
 if (!fmp->sess_init) {
  error = 6;
  goto bad;
 }
 if (fmp->undef_op & 1<<9) {
  error = 78;
  goto bad;
 }
 len = strlen(target) + 1;
 fbuf = fb_setup(len + cnp->cn_namelen + 1, dp->ufs_ino.i_number,
     4, p);
 __builtin_memcpy((fbuf->fb_dat), (cnp->cn_nameptr), (cnp->cn_namelen));
 fbuf->fb_dat[cnp->cn_namelen] = '\0';
 __builtin_memcpy((&fbuf->fb_dat[cnp->cn_namelen + 1]), (target), (len));
 error = fb_queue(fmp->dev, fbuf);
 if (error) {
  if (error == 78)
   fmp->undef_op |= 1<<9;
  fb_delete(fbuf);
  goto bad;
 }
 if ((error = (*(fmp->mp)->mnt_op->vfs_vget)(fmp->mp, fbuf->fb_hdr.fh_ino, &tdp))) {
  fb_delete(fbuf);
  goto bad;
 }
 tdp->v_type = VLNK;
 do { struct klist *list = (&ap->a_dvp->v_selectinfo.si_note); if ((list) != ((void *)0)) knote((list), ((0x0002))); } while (0);
 *vpp = tdp;
 fb_delete(fbuf);
 vput(tdp);
bad:
 vput(dvp);
 return (error);
}
int
fusefs_readdir(void *v)
{
 struct vop_readdir_args *ap = v;
 struct fusefs_node *ip;
 struct fusefs_mnt *fmp;
 struct fusebuf *fbuf;
 struct vnode *vp;
 struct proc *p;
 struct uio *uio;
 int error = 0, eofflag = 0, diropen = 0;
 vp = ap->a_vp;
 uio = ap->a_uio;
 p = uio->uio_procp;
 ip = ((struct fusefs_node *)(vp)->v_data);
 fmp = (struct fusefs_mnt *)ip->ufs_ino.i_ump;
 if (!fmp->sess_init)
  return (6);
 if (uio->uio_resid < sizeof(struct dirent))
  return (22);
 if (ip->fufh[FUFH_RDONLY].fh_type == FUFH_INVALID) {
  error = fusefs_file_open(fmp, ip, FUFH_RDONLY, 0x0000, 1, p);
  if (error)
   return (error);
  diropen = 1;
 }
 while (uio->uio_resid > 0) {
  fbuf = fb_setup(0, ip->ufs_ino.i_number, 21, p);
  fbuf->FD.FD_io.fi_fd = ip->fufh[FUFH_RDONLY].fh_id;
  fbuf->FD.FD_io.fi_off = uio->uio_offset;
  fbuf->FD.FD_io.fi_len = (((uio->uio_resid)<(fmp->max_read))?(uio->uio_resid):(fmp->max_read));
  error = fb_queue(fmp->dev, fbuf);
  if (error) {
   if (error == 55)
    error = 0;
   fb_delete(fbuf);
   break;
  }
  if (fbuf->fb_hdr.fh_len == 0) {
   eofflag = 1;
   fb_delete(fbuf);
   break;
  }
  if ((error = uiomove(fbuf->fb_dat, fbuf->fb_hdr.fh_len, uio))) {
   fb_delete(fbuf);
   break;
  }
  fb_delete(fbuf);
 }
 if (!error && ap->a_eofflag != ((void *)0))
  *ap->a_eofflag = eofflag;
 if (diropen)
  fusefs_file_close(fmp, ip, FUFH_RDONLY, 0x0000, 1, p);
 return (error);
}
int
fusefs_inactive(void *v)
{
 struct vop_inactive_args *ap = v;
 struct vnode *vp = ap->a_vp;
 struct proc *p = ap->a_p;
 struct ucred *cred = p->p_ucred;
 struct fusefs_node *ip = ((struct fusefs_node *)(vp)->v_data);
 struct fusefs_filehandle *fufh = ((void *)0);
 struct fusefs_mnt *fmp;
 struct vattr vattr;
 int error = 0;
 int type;
 fmp = (struct fusefs_mnt *)ip->ufs_ino.i_ump;
 for (type = 0; type < FUFH_MAXTYPE; type++) {
  fufh = &(ip->fufh[type]);
  if (fufh->fh_type != FUFH_INVALID)
   fusefs_file_close(fmp, ip, fufh->fh_type, type,
       (vp->v_type == VDIR), ap->a_p);
 }
 error = VOP_GETATTR(vp, &vattr, cred, p);
 VOP_UNLOCK(vp);
 if (error)
  vrecycle(vp, p);
 return (0);
}
int
fusefs_readlink(void *v)
{
 struct vop_readlink_args *ap = v;
 struct vnode *vp = ap->a_vp;
 struct fusefs_node *ip;
 struct fusefs_mnt *fmp;
 struct fusebuf *fbuf;
 struct uio *uio;
 struct proc *p;
 int error = 0;
 ip = ((struct fusefs_node *)(vp)->v_data);
 fmp = (struct fusefs_mnt *)ip->ufs_ino.i_ump;
 uio = ap->a_uio;
 p = uio->uio_procp;
 if (!fmp->sess_init)
  return (6);
 if (fmp->undef_op & 1<<4)
  return (78);
 fbuf = fb_setup(0, ip->ufs_ino.i_number, 3, p);
 error = fb_queue(fmp->dev, fbuf);
 if (error) {
  if (error == 78)
   fmp->undef_op |= 1<<4;
  fb_delete(fbuf);
  return (error);
 }
 error = uiomove(fbuf->fb_dat, fbuf->fb_hdr.fh_len, uio);
 fb_delete(fbuf);
 return (error);
}
int
fusefs_reclaim(void *v)
{
 struct vop_reclaim_args *ap = v;
 struct vnode *vp = ap->a_vp;
 struct fusefs_node *ip = ((struct fusefs_node *)(vp)->v_data);
 struct fusefs_filehandle *fufh = ((void *)0);
 struct fusefs_mnt *fmp;
 struct fusebuf *fbuf;
 int type;
 fmp = (struct fusefs_mnt *)ip->ufs_ino.i_ump;
 for (type = 0; type < FUFH_MAXTYPE; type++) {
  fufh = &(ip->fufh[type]);
  if (fufh->fh_type != FUFH_INVALID) {
   printf("fusefs: vnode being reclaimed is valid\n");
   fusefs_file_close(fmp, ip, fufh->fh_type, type,
       (vp->v_type == VDIR), ap->a_p);
  }
 }
 if (fmp->sess_init && ip->ufs_ino.i_number != ((ino_t)1)) {
  fbuf = fb_setup(0, ip->ufs_ino.i_number, 27, ap->a_p);
  if (fb_queue(fmp->dev, fbuf))
   printf("fusefs: libfuse vnode reclaim failed\n");
  fb_delete(fbuf);
 }
 ufs_ihashrem(&ip->ufs_ino);
 free(ip, 65, sizeof(*ip));
 vp->v_data = ((void *)0);
 return (0);
}
int
fusefs_print(void *v)
{
 struct vop_print_args *ap = v;
 struct vnode *vp = ap->a_vp;
 struct fusefs_node *ip = ((struct fusefs_node *)(vp)->v_data);
 printf("tag VT_FUSE, hash id %u ", ip->ufs_ino.i_number);
 printf("\n");
 return (0);
}
int
fusefs_create(void *v)
{
 struct vop_create_args *ap = v;
 struct componentname *cnp = ap->a_cnp;
 struct vnode **vpp = ap->a_vpp;
 struct vnode *dvp = ap->a_dvp;
 struct vattr *vap = ap->a_vap;
 struct proc *p = cnp->cn_proc;
 struct vnode *tdp = ((void *)0);
 struct fusefs_mnt *fmp;
 struct fusefs_node *ip;
 struct fusebuf *fbuf;
 int error = 0;
 mode_t mode;
 ip = ((struct fusefs_node *)(dvp)->v_data);
 fmp = (struct fusefs_mnt *)ip->ufs_ino.i_ump;
 mode = (int)((vttoif_tab[(int)(vap->va_type)]) | (vap->va_mode));
 if (!fmp->sess_init) {
  error = 6;
  goto out;
 }
 if (fmp->undef_op & 1<<10) {
  error = 78;
  goto out;
 }
 fbuf = fb_setup(cnp->cn_namelen + 1, ip->ufs_ino.i_number,
     5, p);
 fbuf->FD.FD_io.fi_mode = mode;
 __builtin_memcpy((fbuf->fb_dat), (cnp->cn_nameptr), (cnp->cn_namelen));
 fbuf->fb_dat[cnp->cn_namelen] = '\0';
 error = fb_queue(fmp->dev, fbuf);
 if (error) {
  if (error == 78)
   fmp->undef_op |= 1<<10;
  fb_delete(fbuf);
  goto out;
 }
 if ((error = (*(fmp->mp)->mnt_op->vfs_vget)(fmp->mp, fbuf->fb_hdr.fh_ino, &tdp))) {
  fb_delete(fbuf);
  goto out;
 }
 tdp->v_type = (iftovt_tab[((fbuf->FD.FD_io.fi_mode) & 0170000) >> 12]);
 *vpp = tdp;
 do { struct klist *list = (&ap->a_dvp->v_selectinfo.si_note); if ((list) != ((void *)0)) knote((list), ((0x0002))); } while (0);
 fb_delete(fbuf);
out:
 vput(ap->a_dvp);
 return (error);
}
int
fusefs_mknod(void *v)
{
 struct vop_mknod_args *ap = v;
 struct componentname *cnp = ap->a_cnp;
 struct vnode **vpp = ap->a_vpp;
 struct vnode *dvp = ap->a_dvp;
 struct vattr *vap = ap->a_vap;
 struct proc *p = cnp->cn_proc;
 struct vnode *tdp = ((void *)0);
 struct fusefs_mnt *fmp;
 struct fusefs_node *ip;
 struct fusebuf *fbuf;
 int error = 0;
 ip = ((struct fusefs_node *)(dvp)->v_data);
 fmp = (struct fusefs_mnt *)ip->ufs_ino.i_ump;
 if (!fmp->sess_init) {
  error = 6;
  goto out;
 }
 if (fmp->undef_op & 1<<10) {
  error = 78;
  goto out;
 }
 fbuf = fb_setup(cnp->cn_namelen + 1, ip->ufs_ino.i_number,
     5, p);
 fbuf->FD.FD_io.fi_mode = (int)((vttoif_tab[(int)(vap->va_type)]) | (vap->va_mode));
 if (vap->va_rdev != (-1))
  fbuf->FD.FD_io.fi_rdev = vap->va_rdev;
 __builtin_memcpy((fbuf->fb_dat), (cnp->cn_nameptr), (cnp->cn_namelen));
 fbuf->fb_dat[cnp->cn_namelen] = '\0';
 error = fb_queue(fmp->dev, fbuf);
 if (error) {
  if (error == 78)
   fmp->undef_op |= 1<<10;
  fb_delete(fbuf);
  goto out;
 }
 if ((error = (*(fmp->mp)->mnt_op->vfs_vget)(fmp->mp, fbuf->fb_hdr.fh_ino, &tdp))) {
  fb_delete(fbuf);
  goto out;
 }
 tdp->v_type = (iftovt_tab[((fbuf->FD.FD_io.fi_mode) & 0170000) >> 12]);
 *vpp = tdp;
 do { struct klist *list = (&ap->a_dvp->v_selectinfo.si_note); if ((list) != ((void *)0)) knote((list), ((0x0002))); } while (0);
 fb_delete(fbuf);
 vput(ap->a_dvp);
 vput(*vpp);
 (*vpp)->v_type = VNON;
 vgone(*vpp);
 *vpp = ((void *)0);
 return (0);
out:
 vput(ap->a_dvp);
 return (error);
}
int
fusefs_read(void *v)
{
 struct vop_read_args *ap = v;
 struct vnode *vp = ap->a_vp;
 struct uio *uio = ap->a_uio;
 struct proc *p = uio->uio_procp;
 struct fusefs_node *ip;
 struct fusefs_mnt *fmp;
 struct fusebuf *fbuf = ((void *)0);
 size_t size;
 int error=0;
 ip = ((struct fusefs_node *)(vp)->v_data);
 fmp = (struct fusefs_mnt *)ip->ufs_ino.i_ump;
 if (!fmp->sess_init)
  return (6);
 if (uio->uio_resid == 0)
  return (error);
 if (uio->uio_offset < 0)
  return (22);
 while (uio->uio_resid > 0) {
  fbuf = fb_setup(0, ip->ufs_ino.i_number, 12, p);
  size = (((uio->uio_resid)<(fmp->max_read))?(uio->uio_resid):(fmp->max_read));
  fbuf->FD.FD_io.fi_fd = fusefs_fd_get(ip, FUFH_RDONLY);
  fbuf->FD.FD_io.fi_off = uio->uio_offset;
  fbuf->FD.FD_io.fi_len = size;
  error = fb_queue(fmp->dev, fbuf);
  if (error)
   break;
  error = uiomove(fbuf->fb_dat, ulmin(size, fbuf->fb_hdr.fh_len), uio);
  if (error)
   break;
  if (fbuf->fb_hdr.fh_len < size)
   break;
  fb_delete(fbuf);
  fbuf = ((void *)0);
 }
 fb_delete(fbuf);
 return (error);
}
int
fusefs_write(void *v)
{
 struct vop_write_args *ap = v;
 struct vnode *vp = ap->a_vp;
 struct uio *uio = ap->a_uio;
 struct proc *p = uio->uio_procp;
 struct ucred *cred = p->p_ucred;
 struct vattr vattr;
 int ioflag = ap->a_ioflag;
 struct fusefs_node *ip;
 struct fusefs_mnt *fmp;
 struct fusebuf *fbuf = ((void *)0);
 size_t len, diff;
 int error=0;
 ip = ((struct fusefs_node *)(vp)->v_data);
 fmp = (struct fusefs_mnt *)ip->ufs_ino.i_ump;
 if (!fmp->sess_init)
  return (6);
 if (uio->uio_resid == 0)
  return (error);
 if (ioflag & 0x02) {
  if ((error = VOP_GETATTR(vp, &vattr, cred, p)) != 0)
   return (error);
  uio->uio_offset = vattr.va_size;
 }
 while (uio->uio_resid > 0) {
  len = (((uio->uio_resid)<(fmp->max_read))?(uio->uio_resid):(fmp->max_read));
  fbuf = fb_setup(len, ip->ufs_ino.i_number, 13, p);
  fbuf->FD.FD_io.fi_fd = fusefs_fd_get(ip, FUFH_WRONLY);
  fbuf->FD.FD_io.fi_off = uio->uio_offset;
  fbuf->FD.FD_io.fi_len = len;
  if ((error = uiomove(fbuf->fb_dat, len, uio))) {
   printf("fusefs: uio error %i\n", error);
   break;
  }
  error = fb_queue(fmp->dev, fbuf);
  if (error)
   break;
  diff = len - fbuf->FD.FD_io.fi_len;
  if (fbuf->FD.FD_io.fi_len > len) {
   error = 22;
   break;
  }
  uio->uio_resid += diff;
  uio->uio_offset -= diff;
  fb_delete(fbuf);
  fbuf = ((void *)0);
 }
 fb_delete(fbuf);
 return (error);
}
int
fusefs_poll(void *v)
{
 struct vop_poll_args *ap = v;
 return (ap->a_events & (0x0001 | 0x0004 | 0x0040 | 0x0004));
}
int
fusefs_rename(void *v)
{
 struct vop_rename_args *ap = v;
 struct vnode *tvp = ap->a_tvp;
 struct vnode *tdvp = ap->a_tdvp;
 struct vnode *fvp = ap->a_fvp;
 struct vnode *fdvp = ap->a_fdvp;
 struct componentname *tcnp = ap->a_tcnp;
 struct componentname *fcnp = ap->a_fcnp;
 struct proc *p = fcnp->cn_proc;
 struct fusefs_node *ip, *dp;
 struct fusefs_mnt *fmp;
 struct fusebuf *fbuf;
 int error = 0;
 if ((tcnp->cn_flags & 0x000400) == 0 ||
     (fcnp->cn_flags & 0x000400) == 0)
  panic("fusefs_rename: no name");
 if ((fvp->v_mount != tdvp->v_mount) ||
     (tvp && (fvp->v_mount != tvp->v_mount))) {
  error = 18;
abortit:
  VOP_ABORTOP(tdvp, tcnp);
  if (tdvp == tvp)
   vrele(tdvp);
  else
   vput(tdvp);
  if (tvp)
   vput(tvp);
  VOP_ABORTOP(fdvp, fcnp);
  vrele(fdvp);
  vrele(fvp);
  return (error);
 }
 if (tvp == fvp) {
  error = 0;
  goto abortit;
 }
 if ((error = vn_lock(fvp, 0x0001UL | 0x2000UL)) != 0)
  goto abortit;
 dp = ((struct fusefs_node *)(fdvp)->v_data);
 ip = ((struct fusefs_node *)(fvp)->v_data);
 fmp = (struct fusefs_mnt *)ip->ufs_ino.i_ump;
 if (fvp->v_type == VDIR) {
  if ((fcnp->cn_namelen == 1 && fcnp->cn_nameptr[0] == '.') ||
      dp == ip ||
      (fcnp->cn_flags & 0x002000) ||
      (tcnp->cn_flags & 0x002000)) {
   VOP_UNLOCK(fvp);
   error = 22;
   goto abortit;
  }
 }
 do { struct klist *list = (&fdvp->v_selectinfo.si_note); if ((list) != ((void *)0)) knote((list), ((0x0002))); } while (0);
 if (!fmp->sess_init) {
  error = 6;
  VOP_UNLOCK(fvp);
  goto abortit;
 }
 if (fmp->undef_op & 1<<8) {
  error = 78;
  VOP_UNLOCK(fvp);
  goto abortit;
 }
 fbuf = fb_setup(fcnp->cn_namelen + tcnp->cn_namelen + 2,
     dp->ufs_ino.i_number, 9, p);
 __builtin_memcpy((fbuf->fb_dat), (fcnp->cn_nameptr), (fcnp->cn_namelen));
 fbuf->fb_dat[fcnp->cn_namelen] = '\0';
 __builtin_memcpy((fbuf->fb_dat + fcnp->cn_namelen + 1), (tcnp->cn_nameptr), (tcnp->cn_namelen));
 fbuf->fb_dat[fcnp->cn_namelen + tcnp->cn_namelen + 1] = '\0';
 fbuf->FD.FD_io.fi_ino = ((struct fusefs_node *)(tdvp)->v_data)->ufs_ino.i_number;
 error = fb_queue(fmp->dev, fbuf);
 if (error) {
  if (error == 78) {
   fmp->undef_op |= 1<<8;
  }
  fb_delete(fbuf);
  VOP_UNLOCK(fvp);
  goto abortit;
 }
 fb_delete(fbuf);
 do { struct klist *list = (&fvp->v_selectinfo.si_note); if ((list) != ((void *)0)) knote((list), ((0x0020))); } while (0);
 VOP_UNLOCK(fvp);
 if (tdvp == tvp)
  vrele(tdvp);
 else
  vput(tdvp);
 if (tvp)
  vput(tvp);
 vrele(fdvp);
 vrele(fvp);
 return (error);
}
int
fusefs_mkdir(void *v)
{
 struct vop_mkdir_args *ap = v;
 struct vnode *dvp = ap->a_dvp;
 struct vnode **vpp = ap->a_vpp;
 struct componentname *cnp = ap->a_cnp;
 struct vattr *vap = ap->a_vap;
 struct proc *p = cnp->cn_proc;
 struct vnode *tdp = ((void *)0);
 struct fusefs_node *ip;
 struct fusefs_mnt *fmp;
 struct fusebuf *fbuf;
 int error = 0;
 ip = ((struct fusefs_node *)(dvp)->v_data);
 fmp = (struct fusefs_mnt *)ip->ufs_ino.i_ump;
 if (!fmp->sess_init) {
  error = 6;
  goto out;
 }
 if (fmp->undef_op & 1<<1) {
  error = 78;
  goto out;
 }
 fbuf = fb_setup(cnp->cn_namelen + 1, ip->ufs_ino.i_number,
     6, p);
 fbuf->FD.FD_io.fi_mode = (int)((vttoif_tab[(int)(vap->va_type)]) | (vap->va_mode));
 __builtin_memcpy((fbuf->fb_dat), (cnp->cn_nameptr), (cnp->cn_namelen));
 fbuf->fb_dat[cnp->cn_namelen] = '\0';
 error = fb_queue(fmp->dev, fbuf);
 if (error) {
  if (error == 78)
   fmp->undef_op |= 1<<1;
  fb_delete(fbuf);
  goto out;
 }
 if ((error = (*(fmp->mp)->mnt_op->vfs_vget)(fmp->mp, fbuf->fb_hdr.fh_ino, &tdp))) {
  fb_delete(fbuf);
  goto out;
 }
 tdp->v_type = (iftovt_tab[((fbuf->FD.FD_io.fi_mode) & 0170000) >> 12]);
 *vpp = tdp;
 do { struct klist *list = (&ap->a_dvp->v_selectinfo.si_note); if ((list) != ((void *)0)) knote((list), ((0x0002 | 0x0010))); } while (0);
 fb_delete(fbuf);
out:
 vput(dvp);
 return (error);
}
int
fusefs_rmdir(void *v)
{
 struct vop_rmdir_args *ap = v;
 struct vnode *vp = ap->a_vp;
 struct vnode *dvp = ap->a_dvp;
 struct componentname *cnp = ap->a_cnp;
 struct proc *p = cnp->cn_proc;
 struct fusefs_node *ip, *dp;
 struct fusefs_mnt *fmp;
 struct fusebuf *fbuf;
 int error;
 ip = ((struct fusefs_node *)(vp)->v_data);
 dp = ((struct fusefs_node *)(dvp)->v_data);
 fmp = (struct fusefs_mnt *)ip->ufs_ino.i_ump;
 if (!fmp->sess_init) {
  error = 6;
  goto out;
 }
 if (fmp->undef_op & 1<<5) {
  error = 78;
  goto out;
 }
 if (dp == ip) {
  vrele(dvp);
  vput(vp);
  return (22);
 }
 do { struct klist *list = (&dvp->v_selectinfo.si_note); if ((list) != ((void *)0)) knote((list), ((0x0002 | 0x0010))); } while (0);
 fbuf = fb_setup(cnp->cn_namelen + 1, dp->ufs_ino.i_number,
     8, p);
 __builtin_memcpy((fbuf->fb_dat), (cnp->cn_nameptr), (cnp->cn_namelen));
 fbuf->fb_dat[cnp->cn_namelen] = '\0';
 error = fb_queue(fmp->dev, fbuf);
 if (error) {
  if (error == 78)
   fmp->undef_op |= 1<<5;
  if (error != 66)
   do { struct klist *list = (&dvp->v_selectinfo.si_note); if ((list) != ((void *)0)) knote((list), ((0x0002 | 0x0010))); } while (0);
  fb_delete(fbuf);
  goto out;
 }
 vput(dvp);
 dvp = ((void *)0);
 fb_delete(fbuf);
out:
 if (dvp)
  vput(dvp);
 do { struct klist *list = (&vp->v_selectinfo.si_note); if ((list) != ((void *)0)) knote((list), ((0x0001))); } while (0);
 vput(vp);
 return (error);
}
int
fusefs_remove(void *v)
{
 struct vop_remove_args *ap = v;
 struct vnode *vp = ap->a_vp;
 struct vnode *dvp = ap->a_dvp;
 struct componentname *cnp = ap->a_cnp;
 struct proc *p = cnp->cn_proc;
 struct fusefs_node *ip;
 struct fusefs_node *dp;
 struct fusefs_mnt *fmp;
 struct fusebuf *fbuf;
 int error = 0;
 ip = ((struct fusefs_node *)(vp)->v_data);
 dp = ((struct fusefs_node *)(dvp)->v_data);
 fmp = (struct fusefs_mnt *)ip->ufs_ino.i_ump;
 if (!fmp->sess_init) {
  error = 6;
  goto out;
 }
 if (fmp->undef_op & 1<<6) {
  error = 78;
  goto out;
 }
 fbuf = fb_setup(cnp->cn_namelen + 1, dp->ufs_ino.i_number,
     7, p);
 __builtin_memcpy((fbuf->fb_dat), (cnp->cn_nameptr), (cnp->cn_namelen));
 fbuf->fb_dat[cnp->cn_namelen] = '\0';
 error = fb_queue(fmp->dev, fbuf);
 if (error) {
  if (error == 78)
   fmp->undef_op |= 1<<6;
  fb_delete(fbuf);
  goto out;
 }
 do { struct klist *list = (&vp->v_selectinfo.si_note); if ((list) != ((void *)0)) knote((list), ((0x0001))); } while (0);
 do { struct klist *list = (&dvp->v_selectinfo.si_note); if ((list) != ((void *)0)) knote((list), ((0x0002))); } while (0);
 fb_delete(fbuf);
out:
 if (dvp == vp)
  vrele(vp);
 else
  vput(vp);
 vput(dvp);
 return (error);
}
int
fusefs_strategy(void *v)
{
 return (0);
}
int
fusefs_lock(void *v)
{
 struct vop_lock_args *ap = v;
 struct vnode *vp = ap->a_vp;
 return _rrw_enter(&((struct fusefs_node *)(vp)->v_data)->ufs_ino.i_lock, ap->a_flags & (0x0001UL|0x0002UL|0x0040UL|0x0080UL|0x0100UL) );
}
int
fusefs_unlock(void *v)
{
 struct vop_unlock_args *ap = v;
 struct vnode *vp = ap->a_vp;
 _rrw_exit(&((struct fusefs_node *)(vp)->v_data)->ufs_ino.i_lock );
 return 0;
}
int
fusefs_islocked(void *v)
{
 struct vop_islocked_args *ap = v;
 return rrw_status(&((struct fusefs_node *)(ap->a_vp)->v_data)->ufs_ino.i_lock);
}
int
fusefs_advlock(void *v)
{
 struct vop_advlock_args *ap = v;
 struct fusefs_node *ip = ((struct fusefs_node *)(ap->a_vp)->v_data);
 return (lf_advlock(&ip->ufs_ino.i_lockf, ip->filesize, ap->a_id,
     ap->a_op, ap->a_fl, ap->a_flags));
}
