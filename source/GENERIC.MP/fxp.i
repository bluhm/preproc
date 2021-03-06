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
struct mii_softc;
typedef int (*mii_readreg_t)(struct device *, int, int);
typedef void (*mii_writereg_t)(struct device *, int, int, int);
typedef void (*mii_statchg_t)(struct device *);
struct mii_data {
 struct ifmedia mii_media;
 struct ifnet *mii_ifp;
 int mii_flags;
 struct mii_listhead { struct mii_softc *lh_first; } mii_phys;
 uint64_t mii_instance;
 uint64_t mii_media_status;
 uint64_t mii_media_active;
 mii_readreg_t mii_readreg;
 mii_writereg_t mii_writereg;
 mii_statchg_t mii_statchg;
};
typedef struct mii_data mii_data_t;
struct mii_phy_funcs {
 int (*pf_service)(struct mii_softc *, struct mii_data *, int);
 void (*pf_status)(struct mii_softc *);
 void (*pf_reset)(struct mii_softc *);
};
struct mii_softc {
 struct device mii_dev;
 struct { struct mii_softc *le_next; struct mii_softc **le_prev; } mii_list;
 int mii_phy;
 int mii_oui;
 int mii_model;
 int mii_rev;
 int mii_offset;
 uint64_t mii_inst;
 const struct mii_phy_funcs *mii_funcs;
 struct mii_data *mii_pdata;
 int mii_flags;
 int mii_capabilities;
 int mii_extcapabilities;
 int mii_ticks;
 int mii_anegticks;
 struct timeout mii_phy_timo;
 uint64_t mii_media_active;
 uint64_t mii_media_status;
};
typedef struct mii_softc mii_softc_t;
struct mii_attach_args {
 struct mii_data *mii_data;
 int mii_phyno;
 int mii_id1;
 int mii_id2;
 int mii_capmask;
 int mii_flags;
};
typedef struct mii_attach_args mii_attach_args_t;
struct mii_phydesc {
 u_int32_t mpd_oui;
 u_int32_t mpd_model;
 const char *mpd_name;
};
struct mii_media {
 int mm_bmcr;
 int mm_anar;
 int mm_gtcr;
};
void mii_attach(struct device *, struct mii_data *, int, int,
     int, int);
void mii_detach(struct mii_data *, int, int);
int mii_mediachg(struct mii_data *);
void mii_tick(struct mii_data *);
void mii_pollstat(struct mii_data *);
void mii_down(struct mii_data *);
int mii_anar(uint64_t);
int mii_phy_detach(struct device *, int);
const struct mii_phydesc *mii_phy_match(const struct mii_attach_args *,
     const struct mii_phydesc *);
void mii_phy_add_media(struct mii_softc *);
void mii_phy_delete_media(struct mii_softc *);
void mii_phy_setmedia(struct mii_softc *);
int mii_phy_auto(struct mii_softc *, int);
void mii_phy_auto_timeout(void *);
void mii_phy_reset(struct mii_softc *);
void mii_phy_down(struct mii_softc *);
int mii_phy_tick(struct mii_softc *);
void mii_phy_status(struct mii_softc *);
void mii_phy_update(struct mii_softc *, int);
int mii_phy_statusmsg(struct mii_softc *);
uint64_t mii_phy_flowstatus(struct mii_softc *);
void ukphy_status(struct mii_softc *);
struct fxp_cb_nop {
 void *fill[2];
 volatile u_int16_t cb_status;
 volatile u_int16_t cb_command;
 volatile u_int32_t link_addr;
};
struct fxp_cb_ias {
 volatile u_int16_t cb_status;
 volatile u_int16_t cb_command;
 volatile u_int32_t link_addr;
 volatile u_int8_t macaddr[6];
};
struct fxp_cb_config {
        volatile u_int16_t cb_status;
        volatile u_int16_t cb_command;
        volatile u_int32_t link_addr;
        volatile u_int8_t byte_count;
        volatile u_int8_t fifo_limit;
        volatile u_int8_t adaptive_ifs;
        volatile u_int8_t ctrl0;
        volatile u_int8_t rx_dma_bytecount;
        volatile u_int8_t tx_dma_bytecount;
        volatile u_int8_t ctrl1;
        volatile u_int8_t ctrl2;
        volatile u_int8_t mediatype;
        volatile u_int8_t void2;
        volatile u_int8_t ctrl3;
        volatile u_int8_t linear_priority;
        volatile u_int8_t interfrm_spacing;
        volatile u_int8_t void3;
        volatile u_int8_t void4;
        volatile u_int8_t promiscuous;
        volatile u_int8_t void5;
        volatile u_int8_t void6;
        volatile u_int8_t stripping;
        volatile u_int8_t fdx_pin;
        volatile u_int8_t multi_ia;
        volatile u_int8_t mc_all;
};
struct fxp_cb_mcs {
 volatile u_int16_t cb_status;
 volatile u_int16_t cb_command;
 volatile u_int32_t link_addr;
 volatile u_int16_t mc_cnt;
 volatile u_int8_t mc_addr[80][6];
};
struct fxp_tbd {
 volatile u_int32_t tb_addr;
 volatile u_int32_t tb_size;
};
struct fxp_cb_tx {
 volatile u_int16_t cb_status;
 volatile u_int16_t cb_command;
 volatile u_int32_t link_addr;
 volatile u_int32_t tbd_array_addr;
 volatile u_int16_t byte_count;
 volatile u_int8_t tx_threshold;
 volatile u_int8_t tbd_number;
 volatile struct fxp_tbd tbd[((256 - 16) / 8)];
};
struct fxp_rfa {
 volatile u_int16_t rfa_status;
 volatile u_int16_t rfa_control;
 volatile u_int32_t link_addr;
 volatile u_int32_t rbd_addr;
 volatile u_int16_t actual_size;
 volatile u_int16_t size;
};
struct fxp_stats {
 volatile u_int32_t tx_good;
 volatile u_int32_t tx_maxcols;
 volatile u_int32_t tx_latecols;
 volatile u_int32_t tx_underruns;
 volatile u_int32_t tx_lostcrs;
 volatile u_int32_t tx_deffered;
 volatile u_int32_t tx_single_collisions;
 volatile u_int32_t tx_multiple_collisions;
 volatile u_int32_t tx_total_collisions;
 volatile u_int32_t rx_good;
 volatile u_int32_t rx_crc_errors;
 volatile u_int32_t rx_alignment_errors;
 volatile u_int32_t rx_rnr_errors;
 volatile u_int32_t rx_overrun_errors;
 volatile u_int32_t rx_cdt_errors;
 volatile u_int32_t rx_shortframes;
 volatile u_int32_t completion_status;
};
struct fxp_cb_ucode {
 volatile u_int16_t cb_status;
 volatile u_int16_t cb_command;
 volatile u_int32_t link_addr;
 volatile u_int32_t ucode[192];
};
struct fxp_txsw {
 struct fxp_txsw *tx_next;
 struct mbuf *tx_mbuf;
 bus_dmamap_t tx_map;
 bus_addr_t tx_off;
 struct fxp_cb_tx *tx_cb;
};
struct fxp_ctrl {
 struct fxp_cb_tx tx_cb[128];
 struct fxp_stats stats;
 union {
  struct fxp_cb_mcs mcs;
  struct fxp_cb_ias ias;
  struct fxp_cb_config cfg;
  struct fxp_cb_ucode code;
 } u;
};
struct fxp_softc {
 struct device sc_dev;
 void *sc_ih;
 bus_space_tag_t sc_st;
 bus_space_handle_t sc_sh;
 bus_dma_tag_t sc_dmat;
 struct arpcom sc_arpcom;
 struct mii_data sc_mii;
 struct mbuf *rfa_headm;
 struct mbuf *rfa_tailm;
 int sc_flags;
 struct timeout stats_update_to;
 int rx_idle_secs;
 struct fxp_cb_tx *cbl_base;
 int phy_primary_addr;
 int phy_primary_device;
 int phy_10Mbps_only;
 int eeprom_size;
 int rx_bufs;
 struct fxp_txsw txs[128];
 struct fxp_txsw *sc_cbt_cons, *sc_cbt_prod, *sc_cbt_prev;
 int sc_cbt_cnt;
 bus_dmamap_t tx_cb_map;
 bus_dma_segment_t sc_cb_seg;
 int sc_cb_nseg;
 struct fxp_ctrl *sc_ctrl;
 bus_dmamap_t sc_rxmaps[64];
 int sc_rxfree;
 u_int32_t sc_revision;
 u_int16_t sc_int_delay;
 u_int16_t sc_bundle_max;
 u_int16_t sc_min_size_mask;
 u_int32_t *sc_ucodebuf;
 size_t sc_ucodelen;
};
extern int fxp_intr(void *);
extern int fxp_attach(struct fxp_softc *, const char *);
void fxp_detach(struct fxp_softc *);
void fxp_init(void *);
void fxp_stop(struct fxp_softc *, int, int);
int fxp_activate(struct device *, int);
void fxp_wakeup(struct fxp_softc *);
static __inline void fxp_lwcopy(volatile u_int32_t *,
 volatile u_int32_t *);
static __inline void
fxp_lwcopy(volatile u_int32_t *src, volatile u_int32_t *dst)
{
 volatile u_int16_t *a = (u_int16_t *)src;
 volatile u_int16_t *b = (u_int16_t *)dst;
 b[0] = a[0];
 b[1] = a[1];
}
static u_char fxp_cb_config_template[] = {
 0x0, 0x0,
 0x0, 0x0,
 0xff, 0xff, 0xff, 0xff,
 0x16,
 0x08,
 0x00,
 0x00,
 0x00,
 0x80,
 0xb2,
 0x03,
 0x01,
 0x00,
 0x26,
 0x00,
 0x60,
 0x00,
 0xf2,
 0x48,
 0x00,
 0x40,
 0xf3,
 0x00,
 0x3f,
 0x05
};
void fxp_eeprom_shiftin(struct fxp_softc *, int, int);
void fxp_eeprom_putword(struct fxp_softc *, int, u_int16_t);
void fxp_write_eeprom(struct fxp_softc *, u_short *, int, int);
int fxp_mediachange(struct ifnet *);
void fxp_mediastatus(struct ifnet *, struct ifmediareq *);
void fxp_scb_wait(struct fxp_softc *);
void fxp_start(struct ifnet *);
int fxp_ioctl(struct ifnet *, u_long, caddr_t);
void fxp_load_ucode(struct fxp_softc *);
void fxp_watchdog(struct ifnet *);
int fxp_add_rfabuf(struct fxp_softc *, struct mbuf *);
int fxp_mdi_read(struct device *, int, int);
void fxp_mdi_write(struct device *, int, int, int);
void fxp_autosize_eeprom(struct fxp_softc *);
void fxp_statchg(struct device *);
void fxp_read_eeprom(struct fxp_softc *, u_int16_t *,
        int, int);
void fxp_stats_update(void *);
void fxp_mc_setup(struct fxp_softc *, int);
void fxp_scb_cmd(struct fxp_softc *, u_int16_t);
static int tx_threshold = 64;
int fxp_int_delay = 128;
int fxp_bundle_max = 16;
int fxp_min_size_mask = 0xFFFF;
void
fxp_scb_wait(struct fxp_softc *sc)
{
 int i = (10000);
 while ((bus_space_read_2((sc)->sc_st, (sc)->sc_sh, (2)) & 0xff) && --i)
  delay(2);
 if (i == 0)
  printf("%s: warning: SCB timed out\n", sc->sc_dev.dv_xname);
}
void
fxp_eeprom_shiftin(struct fxp_softc *sc, int data, int length)
{
 u_int16_t reg64;
 int x;
 for (x = 1 << (length - 1); x; x >>= 1) {
  if (data & x)
   reg64 = 0x02 | 0x04;
  else
   reg64 = 0x02;
  bus_space_write_2((sc)->sc_st, (sc)->sc_sh, (14), (reg64));
  delay(1);
  bus_space_write_2((sc)->sc_st, (sc)->sc_sh, (14), (reg64 | 0x01));
  delay(1);
  bus_space_write_2((sc)->sc_st, (sc)->sc_sh, (14), (reg64));
  delay(1);
 }
}
void
fxp_eeprom_putword(struct fxp_softc *sc, int offset, u_int16_t data)
{
 int i;
 bus_space_write_2((sc)->sc_st, (sc)->sc_sh, (14), (0x02));
 fxp_eeprom_shiftin(sc, 0x4, 3);
 fxp_eeprom_shiftin(sc, 0x03 << (sc->eeprom_size - 2), sc->eeprom_size);
 bus_space_write_2((sc)->sc_st, (sc)->sc_sh, (14), (0));
 delay(1);
 bus_space_write_2((sc)->sc_st, (sc)->sc_sh, (14), (0x02));
 fxp_eeprom_shiftin(sc, 0x5, 3);
 fxp_eeprom_shiftin(sc, offset, sc->eeprom_size);
 fxp_eeprom_shiftin(sc, data, 16);
 bus_space_write_2((sc)->sc_st, (sc)->sc_sh, (14), (0));
 delay(1);
 bus_space_write_2((sc)->sc_st, (sc)->sc_sh, (14), (0x02));
 delay(1);
 for (i = 0; i < 1000; i++) {
  if (bus_space_read_2((sc)->sc_st, (sc)->sc_sh, (14)) & 0x08)
   break;
  delay(50);
 }
 bus_space_write_2((sc)->sc_st, (sc)->sc_sh, (14), (0));
 delay(1);
 bus_space_write_2((sc)->sc_st, (sc)->sc_sh, (14), (0x02));
 fxp_eeprom_shiftin(sc, 0x4, 3);
 fxp_eeprom_shiftin(sc, 0, sc->eeprom_size);
 bus_space_write_2((sc)->sc_st, (sc)->sc_sh, (14), (0));
 delay(1);
}
void
fxp_write_eeprom(struct fxp_softc *sc, u_short *data, int offset, int words)
{
 int i;
 for (i = 0; i < words; i++)
  fxp_eeprom_putword(sc, offset + i, data[i]);
}
struct cfdriver fxp_cd = {
 ((void *)0), "fxp", DV_IFNET
};
int
fxp_activate(struct device *self, int act)
{
 struct fxp_softc *sc = (struct fxp_softc *)self;
 struct ifnet *ifp = &sc->sc_arpcom.ac_if;
 int rv = 0;
 switch (act) {
 case 3:
  if (ifp->if_flags & 0x40)
   fxp_stop(sc, 1, 0);
  rv = config_activate_children(self, act);
  break;
 case 5:
  if (ifp->if_flags & 0x1)
   fxp_wakeup(sc);
  break;
 default:
  rv = config_activate_children(self, act);
  break;
 }
 return (rv);
}
void
fxp_wakeup(struct fxp_softc *sc)
{
 int s = _splraise(6);
 sc->sc_flags &= ~0x40;
 fxp_init(sc);
 _splx(s);
}
int
fxp_attach(struct fxp_softc *sc, const char *intrstr)
{
 struct ifnet *ifp;
 struct mbuf *m;
 bus_dmamap_t rxmap;
 u_int16_t data;
 u_int8_t enaddr[6];
 int i, err;
 bus_space_write_4((sc)->sc_st, (sc)->sc_sh, (8), (0));
 delay(10);
 if (bus_dmamem_alloc(sc->sc_dmat, sizeof(struct fxp_ctrl),
     (1 << 13), 0, &sc->sc_cb_seg, 1, &sc->sc_cb_nseg,
     0x0001 | 0x0800))
  goto fail;
 if (bus_dmamem_map(sc->sc_dmat, &sc->sc_cb_seg, sc->sc_cb_nseg,
     sizeof(struct fxp_ctrl), (caddr_t *)&sc->sc_ctrl,
     0x0001)) {
  bus_dmamem_free(sc->sc_dmat, &sc->sc_cb_seg, sc->sc_cb_nseg);
  goto fail;
 }
 if (bus_dmamap_create(sc->sc_dmat, sizeof(struct fxp_ctrl),
     1, sizeof(struct fxp_ctrl), 0, 0x0001,
     &sc->tx_cb_map)) {
  bus_dmamem_unmap(sc->sc_dmat, (caddr_t)sc->sc_ctrl,
      sizeof(struct fxp_ctrl));
  bus_dmamem_free(sc->sc_dmat, &sc->sc_cb_seg, sc->sc_cb_nseg);
  goto fail;
 }
 if (bus_dmamap_load(sc->sc_dmat, sc->tx_cb_map, (caddr_t)sc->sc_ctrl,
     sizeof(struct fxp_ctrl), ((void *)0), 0x0001)) {
  bus_dmamap_destroy(sc->sc_dmat, sc->tx_cb_map);
  bus_dmamem_unmap(sc->sc_dmat, (caddr_t)sc->sc_ctrl,
      sizeof(struct fxp_ctrl));
  bus_dmamem_free(sc->sc_dmat, &sc->sc_cb_seg, sc->sc_cb_nseg);
  goto fail;
 }
 for (i = 0; i < 128; i++) {
  if ((err = bus_dmamap_create(sc->sc_dmat, (1 << 11),
      ((256 - 16) / 8), (1 << 11), 0, 0, &sc->txs[i].tx_map)) != 0) {
   printf("%s: unable to create tx dma map %d, error %d\n",
       sc->sc_dev.dv_xname, i, err);
   goto fail;
  }
  sc->txs[i].tx_mbuf = ((void *)0);
  sc->txs[i].tx_cb = sc->sc_ctrl->tx_cb + i;
  sc->txs[i].tx_off = __builtin_offsetof(struct fxp_ctrl, tx_cb[i]);
  sc->txs[i].tx_next = &sc->txs[(i + 1) & (128 - 1)];
 }
 sc->sc_rxfree = 0;
 for (i = 0; i < 4; i++) {
  if ((err = bus_dmamap_create(sc->sc_dmat, (1 << 11), 1,
      (1 << 11), 0, 0, &sc->sc_rxmaps[i])) != 0) {
   printf("%s: unable to create rx dma map %d, error %d\n",
       sc->sc_dev.dv_xname, i, err);
   goto fail;
  }
  sc->rx_bufs++;
 }
 for (i = 0; i < 4; i++)
  if (fxp_add_rfabuf(sc, ((void *)0)) != 0)
   goto fail;
 fxp_autosize_eeprom(sc);
 fxp_read_eeprom(sc, (u_int16_t *)&data, 0x06, 1);
 sc->phy_primary_addr = data & 0xff;
 sc->phy_primary_device = (data >> 8) & 0x3f;
 sc->phy_10Mbps_only = data >> 15;
 if (sc->sc_revision >= 4) {
  sc->sc_int_delay = fxp_int_delay;
  sc->sc_bundle_max = fxp_bundle_max;
  sc->sc_min_size_mask = fxp_min_size_mask;
 }
 fxp_read_eeprom(sc, (u_int16_t *)enaddr, 0x00, 3);
 ifp = &sc->sc_arpcom.ac_if;
 __builtin_bcopy((enaddr), (sc->sc_arpcom.ac_enaddr), (6));
 __builtin_bcopy((sc->sc_dev.dv_xname), (ifp->if_xname), (16));
 ifp->if_softc = sc;
 ifp->if_flags = 0x2 | 0x800 | 0x8000;
 ifp->if_ioctl = fxp_ioctl;
 ifp->if_start = fxp_start;
 ifp->if_watchdog = fxp_watchdog;
 ((&ifp->if_snd)->ifq_maxlen = (128 - 1));
 ifp->if_data.ifi_capabilities = 0x00000010;
 printf(": %s, address %s\n", intrstr,
     ether_sprintf(sc->sc_arpcom.ac_enaddr));
 if (sc->sc_flags & 0x20) {
  fxp_read_eeprom(sc, &data, 0x0a, 1);
  if (data & 0x0002) {
   u_int16_t cksum;
   printf("%s: Disabling dynamic standby mode in EEPROM",
       sc->sc_dev.dv_xname);
   data &= ~0x0002;
   fxp_write_eeprom(sc, &data, 0x0a, 1);
   printf(", New ID 0x%x", data);
   cksum = 0;
   for (i = 0; i < (1 << sc->eeprom_size) - 1; i++) {
    fxp_read_eeprom(sc, &data, i, 1);
    cksum += data;
   }
   i = (1 << sc->eeprom_size) - 1;
   cksum = 0xBABA - cksum;
   fxp_read_eeprom(sc, &data, i, 1);
   fxp_write_eeprom(sc, &cksum, i, 1);
   printf(", cksum @ 0x%x: 0x%x -> 0x%x\n",
       i, data, cksum);
  }
 }
 fxp_read_eeprom(sc, &data, 0x03, 1);
 if ((data & (0x0001|0x0002))
     != (0x0001|0x0002))
  sc->sc_flags |= 0x100;
 sc->sc_mii.mii_ifp = ifp;
 sc->sc_mii.mii_readreg = fxp_mdi_read;
 sc->sc_mii.mii_writereg = fxp_mdi_write;
 sc->sc_mii.mii_statchg = fxp_statchg;
 ifmedia_init(&sc->sc_mii.mii_media, 0, fxp_mediachange,
     fxp_mediastatus);
 mii_attach(&sc->sc_dev, &sc->sc_mii, 0xffffffff, -1,
     -1, 0x0002);
 if (((&sc->sc_mii.mii_phys)->lh_first) == ((void *)0)) {
  ifmedia_add(&sc->sc_mii.mii_media, 0x0000000000000100ULL|1ULL,
      0, ((void *)0));
  printf("%s: no phy found, using manual mode\n",
      sc->sc_dev.dv_xname);
 }
 if (ifmedia_match(&sc->sc_mii.mii_media, 0x0000000000000100ULL|1ULL, 0))
  ifmedia_set(&sc->sc_mii.mii_media, 0x0000000000000100ULL|1ULL);
 else if (ifmedia_match(&sc->sc_mii.mii_media, 0x0000000000000100ULL|0ULL, 0))
  ifmedia_set(&sc->sc_mii.mii_media, 0x0000000000000100ULL|0ULL);
 else
  ifmedia_set(&sc->sc_mii.mii_media, 0x0000000000000100ULL|3);
 if_attach(ifp);
 ether_ifattach(ifp);
 timeout_set(&sc->stats_update_to, fxp_stats_update, sc);
 return (0);
 fail:
 printf("%s: Failed to malloc memory\n", sc->sc_dev.dv_xname);
 if (sc->tx_cb_map != ((void *)0)) {
  bus_dmamap_unload(sc->sc_dmat, sc->tx_cb_map);
  bus_dmamap_destroy(sc->sc_dmat, sc->tx_cb_map);
  bus_dmamem_unmap(sc->sc_dmat, (caddr_t)sc->sc_ctrl,
      sizeof(struct fxp_cb_tx) * 128);
  bus_dmamem_free(sc->sc_dmat, &sc->sc_cb_seg, sc->sc_cb_nseg);
 }
 m = sc->rfa_headm;
 while (m != ((void *)0)) {
  rxmap = *((bus_dmamap_t *)m->M_dat.MH.MH_dat.MH_ext.ext_buf);
  bus_dmamap_unload(sc->sc_dmat, rxmap);
  ((sc)->sc_rxmaps[--(sc)->sc_rxfree] = (rxmap));
  m = m_free(m);
 }
 return (12);
}
void
fxp_autosize_eeprom(struct fxp_softc *sc)
{
 u_int16_t reg64;
 int x;
 bus_space_write_2((sc)->sc_st, (sc)->sc_sh, (14), (0x02));
 for (x = 3; x > 0; x--) {
  if (0x6 & (1 << (x - 1))) {
   reg64 = 0x02 | 0x04;
  } else {
   reg64 = 0x02;
  }
  bus_space_write_2((sc)->sc_st, (sc)->sc_sh, (14), (reg64));
  bus_space_write_2((sc)->sc_st, (sc)->sc_sh, (14), (reg64 | 0x01));
  delay(4);
  bus_space_write_2((sc)->sc_st, (sc)->sc_sh, (14), (reg64));
  delay(4);
 }
 for (x = 1; x <= 8; x++) {
  bus_space_write_2((sc)->sc_st, (sc)->sc_sh, (14), (0x02));
  bus_space_write_2((sc)->sc_st, (sc)->sc_sh, (14), (0x02 | 0x01));
  delay(4);
  if ((bus_space_read_2((sc)->sc_st, (sc)->sc_sh, (14)) & 0x08) == 0)
   break;
  bus_space_write_2((sc)->sc_st, (sc)->sc_sh, (14), (0x02));
  delay(4);
 }
 bus_space_write_2((sc)->sc_st, (sc)->sc_sh, (14), (0));
 delay(4);
 sc->eeprom_size = x;
}
void
fxp_read_eeprom(struct fxp_softc *sc, u_short *data, int offset,
    int words)
{
 u_int16_t reg64;
 int i, x;
 for (i = 0; i < words; i++) {
  bus_space_write_2((sc)->sc_st, (sc)->sc_sh, (14), (0x02));
  for (x = 3; x > 0; x--) {
   if (0x6 & (1 << (x - 1))) {
    reg64 = 0x02 | 0x04;
   } else {
    reg64 = 0x02;
   }
   bus_space_write_2((sc)->sc_st, (sc)->sc_sh, (14), (reg64));
   bus_space_write_2((sc)->sc_st, (sc)->sc_sh, (14), (reg64 | 0x01));
   delay(4);
   bus_space_write_2((sc)->sc_st, (sc)->sc_sh, (14), (reg64));
   delay(4);
  }
  for (x = sc->eeprom_size; x > 0; x--) {
   if ((i + offset) & (1 << (x - 1))) {
    reg64 = 0x02 | 0x04;
   } else {
    reg64 = 0x02;
   }
   bus_space_write_2((sc)->sc_st, (sc)->sc_sh, (14), (reg64));
   bus_space_write_2((sc)->sc_st, (sc)->sc_sh, (14), (reg64 | 0x01));
   delay(4);
   bus_space_write_2((sc)->sc_st, (sc)->sc_sh, (14), (reg64));
   delay(4);
  }
  reg64 = 0x02;
  data[i] = 0;
  for (x = 16; x > 0; x--) {
   bus_space_write_2((sc)->sc_st, (sc)->sc_sh, (14), (reg64 | 0x01));
   delay(4);
   if (bus_space_read_2((sc)->sc_st, (sc)->sc_sh, (14)) &
       0x08)
    data[i] |= (1 << (x - 1));
   bus_space_write_2((sc)->sc_st, (sc)->sc_sh, (14), (reg64));
   delay(4);
  }
  data[i] = (__uint16_t)(__builtin_constant_p(data[i]) ? (__uint16_t)(((__uint16_t)(data[i]) & 0xffU) << 8 | ((__uint16_t)(data[i]) & 0xff00U) >> 8) : __swap16md(data[i]));
  bus_space_write_2((sc)->sc_st, (sc)->sc_sh, (14), (0));
  delay(4);
 }
}
void
fxp_start(struct ifnet *ifp)
{
 struct fxp_softc *sc = ifp->if_softc;
 struct fxp_txsw *txs = sc->sc_cbt_prod;
 struct fxp_cb_tx *txc;
 struct mbuf *m0;
 int cnt = sc->sc_cbt_cnt, seg, error;
 if (!(ifp->if_flags & 0x40) || ifq_is_oactive(&ifp->if_snd))
  return;
 while (1) {
  if (cnt >= (128 - 2)) {
   ifq_set_oactive(&ifp->if_snd);
   break;
  }
  txs = txs->tx_next;
  m0 = ifq_dequeue(&ifp->if_snd);
  if (m0 == ((void *)0))
   break;
  error = bus_dmamap_load_mbuf(sc->sc_dmat, txs->tx_map,
      m0, 0x0001);
  switch (error) {
  case 0:
   break;
  case 27:
   if (m_defrag(m0, 0x0002) == 0 &&
       bus_dmamap_load_mbuf(sc->sc_dmat, txs->tx_map,
       m0, 0x0001) == 0)
    break;
  default:
   ifp->if_data.ifi_oerrors++;
   m_freem(m0);
   continue;
  }
  txs->tx_mbuf = m0;
  if (ifp->if_bpf)
   bpf_mtap(ifp->if_bpf, m0, (1<<1));
  bus_dmamap_sync((sc)->sc_dmat, (txs->tx_map), 0, (txs->tx_map)->dm_mapsize, (0x04));
  txc = txs->tx_cb;
  txc->tbd_number = txs->tx_map->dm_nsegs;
  txc->cb_status = 0;
  txc->cb_command = (__uint16_t)(__builtin_constant_p(0x4 | 0x0008) ? (__uint16_t)(((__uint16_t)(0x4 | 0x0008) & 0xffU) << 8 | ((__uint16_t)(0x4 | 0x0008) & 0xff00U) >> 8) : __swap16md(0x4 | 0x0008));
  txc->tx_threshold = tx_threshold;
  for (seg = 0; seg < txs->tx_map->dm_nsegs; seg++) {
   txc->tbd[seg].tb_addr =
       (__uint32_t)(__builtin_constant_p(txs->tx_map->dm_segs[seg].ds_addr) ? (__uint32_t)(((__uint32_t)(txs->tx_map->dm_segs[seg].ds_addr) & 0xff) << 24 | ((__uint32_t)(txs->tx_map->dm_segs[seg].ds_addr) & 0xff00) << 8 | ((__uint32_t)(txs->tx_map->dm_segs[seg].ds_addr) & 0xff0000) >> 8 | ((__uint32_t)(txs->tx_map->dm_segs[seg].ds_addr) & 0xff000000) >> 24) : __swap32md(txs->tx_map->dm_segs[seg].ds_addr));
   txc->tbd[seg].tb_size =
       (__uint32_t)(__builtin_constant_p(txs->tx_map->dm_segs[seg].ds_len) ? (__uint32_t)(((__uint32_t)(txs->tx_map->dm_segs[seg].ds_len) & 0xff) << 24 | ((__uint32_t)(txs->tx_map->dm_segs[seg].ds_len) & 0xff00) << 8 | ((__uint32_t)(txs->tx_map->dm_segs[seg].ds_len) & 0xff0000) >> 8 | ((__uint32_t)(txs->tx_map->dm_segs[seg].ds_len) & 0xff000000) >> 24) : __swap32md(txs->tx_map->dm_segs[seg].ds_len));
  }
  bus_dmamap_sync((sc)->sc_dmat, (sc)->tx_cb_map, (txs)->tx_off, sizeof(struct fxp_cb_tx), (0x01|0x04));
  ++cnt;
  sc->sc_cbt_prod = txs;
 }
 if (cnt != sc->sc_cbt_cnt) {
  ifp->if_timer = 5;
  txs = sc->sc_cbt_prod;
  txs = txs->tx_next;
  sc->sc_cbt_prod = txs;
  txs->tx_cb->cb_command =
      (__uint16_t)(__builtin_constant_p(0x2000 | 0x0 | 0x4000) ? (__uint16_t)(((__uint16_t)(0x2000 | 0x0 | 0x4000) & 0xffU) << 8 | ((__uint16_t)(0x2000 | 0x0 | 0x4000) & 0xff00U) >> 8) : __swap16md(0x2000 | 0x0 | 0x4000));
  bus_dmamap_sync((sc)->sc_dmat, (sc)->tx_cb_map, (txs)->tx_off, sizeof(struct fxp_cb_tx), (0x01|0x04));
  bus_dmamap_sync((sc)->sc_dmat, (sc)->tx_cb_map, (sc->sc_cbt_prev)->tx_off, sizeof(struct fxp_cb_tx), (0x02|0x08));
  sc->sc_cbt_prev->tx_cb->cb_command &=
      (__uint16_t)(__builtin_constant_p(~(0x4000 | 0x2000)) ? (__uint16_t)(((__uint16_t)(~(0x4000 | 0x2000)) & 0xffU) << 8 | ((__uint16_t)(~(0x4000 | 0x2000)) & 0xff00U) >> 8) : __swap16md(~(0x4000 | 0x2000)));
  bus_dmamap_sync((sc)->sc_dmat, (sc)->tx_cb_map, (sc->sc_cbt_prev)->tx_off, sizeof(struct fxp_cb_tx), (0x01|0x04));
  sc->sc_cbt_prev = txs;
  fxp_scb_wait(sc);
  fxp_scb_cmd(sc, 0x0020);
  sc->sc_cbt_cnt = cnt + 1;
 }
}
int
fxp_intr(void *arg)
{
 struct fxp_softc *sc = arg;
 struct ifnet *ifp = &sc->sc_arpcom.ac_if;
 struct mbuf_list ml = { ((void *)0), ((void *)0), 0 };
 u_int16_t statack;
 bus_dmamap_t rxmap;
 int claimed = 0;
 int rnr = 0;
 if ((ifp->if_flags & 0x40) == 0) {
  statack = bus_space_read_2((sc)->sc_st, (sc)->sc_sh, (0));
  if (statack) {
   claimed = 1;
   bus_space_write_2((sc)->sc_st, (sc)->sc_sh, (0), (statack & 0xfc00));
  }
  return claimed;
 }
 while ((statack = bus_space_read_2((sc)->sc_st, (sc)->sc_sh, (0))) &
     0xfc00) {
  claimed = 1;
  rnr = (statack & (0x1000 |
                    0x0400)) ? 1 : 0;
  bus_space_write_2((sc)->sc_st, (sc)->sc_sh, (0), (statack & 0xfc00));
  if (statack & (0x8000|0x2000)) {
   int txcnt = sc->sc_cbt_cnt;
   struct fxp_txsw *txs = sc->sc_cbt_cons;
   bus_dmamap_sync((sc)->sc_dmat, (sc)->tx_cb_map, (txs)->tx_off, sizeof(struct fxp_cb_tx), (0x02 | 0x08));
   while ((txcnt > 0) &&
      ((txs->tx_cb->cb_status & (__uint16_t)(__builtin_constant_p(0x8000) ? (__uint16_t)(((__uint16_t)(0x8000) & 0xffU) << 8 | ((__uint16_t)(0x8000) & 0xff00U) >> 8) : __swap16md(0x8000))) ||
      (txs->tx_cb->cb_command & (__uint16_t)(__builtin_constant_p(0x0) ? (__uint16_t)(((__uint16_t)(0x0) & 0xffU) << 8 | ((__uint16_t)(0x0) & 0xff00U) >> 8) : __swap16md(0x0))))) {
    if (txs->tx_mbuf != ((void *)0)) {
     bus_dmamap_sync((sc)->sc_dmat, (txs->tx_map), 0, (txs->tx_map)->dm_mapsize, (0x08));
     bus_dmamap_unload(sc->sc_dmat,
         txs->tx_map);
     m_freem(txs->tx_mbuf);
     txs->tx_mbuf = ((void *)0);
    }
    --txcnt;
    txs = txs->tx_next;
    bus_dmamap_sync((sc)->sc_dmat, (sc)->tx_cb_map, (txs)->tx_off, sizeof(struct fxp_cb_tx), (0x02|0x08));
   }
   sc->sc_cbt_cnt = txcnt;
   if (sc->sc_cbt_cons != txs)
    ifq_clr_oactive(&ifp->if_snd);
   ifp->if_timer = sc->sc_cbt_cnt ? 5 : 0;
   sc->sc_cbt_cons = txs;
   if (!(((&ifp->if_snd)->ifq_len) == 0)) {
    fxp_start(ifp);
   }
  }
  if (statack & (0x4000 | 0x1000 |
          0x0400)) {
   struct mbuf *m;
   u_int8_t *rfap;
rcvloop:
   m = sc->rfa_headm;
   rfap = m->M_dat.MH.MH_dat.MH_ext.ext_buf + (2 + sizeof(bus_dmamap_t *));
   rxmap = *((bus_dmamap_t *)m->M_dat.MH.MH_dat.MH_ext.ext_buf);
   bus_dmamap_sync(sc->sc_dmat, rxmap,
       0, (1 << 11), 0x02 |
       0x08);
   if (*(u_int16_t *)(rfap +
       __builtin_offsetof(struct fxp_rfa, rfa_status)) &
       (__uint16_t)(__builtin_constant_p(0x8000) ? (__uint16_t)(((__uint16_t)(0x8000) & 0xffU) << 8 | ((__uint16_t)(0x8000) & 0xff00U) >> 8) : __swap16md(0x8000))) {
    if (*(u_int16_t *)(rfap +
        __builtin_offsetof(struct fxp_rfa, rfa_status)) &
        (__uint16_t)(__builtin_constant_p(0x0200) ? (__uint16_t)(((__uint16_t)(0x0200) & 0xffU) << 8 | ((__uint16_t)(0x0200) & 0xff00U) >> 8) : __swap16md(0x0200)))
     rnr = 1;
    sc->rfa_headm = m->m_hdr.mh_next;
    m->m_hdr.mh_next = ((void *)0);
    if (fxp_add_rfabuf(sc, m) == 0) {
     u_int16_t total_len;
     total_len = (__uint16_t)(__builtin_constant_p(*(u_int16_t *)(rfap + __builtin_offsetof(struct fxp_rfa, actual_size))) ? (__uint16_t)(((__uint16_t)(*(u_int16_t *)(rfap + __builtin_offsetof(struct fxp_rfa, actual_size))) & 0xffU) << 8 | ((__uint16_t)(*(u_int16_t *)(rfap + __builtin_offsetof(struct fxp_rfa, actual_size))) & 0xff00U) >> 8) : __swap16md(*(u_int16_t *)(rfap + __builtin_offsetof(struct fxp_rfa, actual_size)))) &
         ((1 << 11) - 1);
     if (total_len <
         sizeof(struct ether_header)) {
      m_freem(m);
      goto rcvloop;
     }
     if (*(u_int16_t *)(rfap +
         __builtin_offsetof(struct fxp_rfa, rfa_status)) &
         (__uint16_t)(__builtin_constant_p(0x0800) ? (__uint16_t)(((__uint16_t)(0x0800) & 0xffU) << 8 | ((__uint16_t)(0x0800) & 0xff00U) >> 8) : __swap16md(0x0800))) {
      m_freem(m);
      goto rcvloop;
     }
     m->M_dat.MH.MH_pkthdr.len = m->m_hdr.mh_len = total_len;
     ml_enqueue(&ml, m);
    }
    goto rcvloop;
   }
  }
  if (rnr) {
   rxmap = *((bus_dmamap_t *)
       sc->rfa_headm->M_dat.MH.MH_dat.MH_ext.ext_buf);
   fxp_scb_wait(sc);
   bus_space_write_4((sc)->sc_st, (sc)->sc_sh, (4), (rxmap->dm_segs[0].ds_addr + (2 + sizeof(bus_dmamap_t *))));
   fxp_scb_cmd(sc, 0x0001);
  }
 }
 if_input(ifp, &ml);
 return (claimed);
}
void
fxp_stats_update(void *arg)
{
 struct fxp_softc *sc = arg;
 struct ifnet *ifp = &sc->sc_arpcom.ac_if;
 struct fxp_stats *sp = &sc->sc_ctrl->stats;
 int s;
 bus_dmamap_sync((sc)->sc_dmat, (sc)->tx_cb_map, __builtin_offsetof(struct fxp_ctrl, stats), sizeof(struct fxp_stats), (0x02|0x08));
 ifp->if_data.ifi_collisions += (__uint32_t)(__builtin_constant_p(sp->tx_total_collisions) ? (__uint32_t)(((__uint32_t)(sp->tx_total_collisions) & 0xff) << 24 | ((__uint32_t)(sp->tx_total_collisions) & 0xff00) << 8 | ((__uint32_t)(sp->tx_total_collisions) & 0xff0000) >> 8 | ((__uint32_t)(sp->tx_total_collisions) & 0xff000000) >> 24) : __swap32md(sp->tx_total_collisions));
 if (sp->rx_good) {
  sc->rx_idle_secs = 0;
 } else if (sc->sc_flags & 0x100)
  sc->rx_idle_secs++;
 ifp->if_data.ifi_ierrors +=
     (__uint32_t)(__builtin_constant_p(sp->rx_crc_errors) ? (__uint32_t)(((__uint32_t)(sp->rx_crc_errors) & 0xff) << 24 | ((__uint32_t)(sp->rx_crc_errors) & 0xff00) << 8 | ((__uint32_t)(sp->rx_crc_errors) & 0xff0000) >> 8 | ((__uint32_t)(sp->rx_crc_errors) & 0xff000000) >> 24) : __swap32md(sp->rx_crc_errors)) +
     (__uint32_t)(__builtin_constant_p(sp->rx_alignment_errors) ? (__uint32_t)(((__uint32_t)(sp->rx_alignment_errors) & 0xff) << 24 | ((__uint32_t)(sp->rx_alignment_errors) & 0xff00) << 8 | ((__uint32_t)(sp->rx_alignment_errors) & 0xff0000) >> 8 | ((__uint32_t)(sp->rx_alignment_errors) & 0xff000000) >> 24) : __swap32md(sp->rx_alignment_errors)) +
     (__uint32_t)(__builtin_constant_p(sp->rx_rnr_errors) ? (__uint32_t)(((__uint32_t)(sp->rx_rnr_errors) & 0xff) << 24 | ((__uint32_t)(sp->rx_rnr_errors) & 0xff00) << 8 | ((__uint32_t)(sp->rx_rnr_errors) & 0xff0000) >> 8 | ((__uint32_t)(sp->rx_rnr_errors) & 0xff000000) >> 24) : __swap32md(sp->rx_rnr_errors)) +
     (__uint32_t)(__builtin_constant_p(sp->rx_overrun_errors) ? (__uint32_t)(((__uint32_t)(sp->rx_overrun_errors) & 0xff) << 24 | ((__uint32_t)(sp->rx_overrun_errors) & 0xff00) << 8 | ((__uint32_t)(sp->rx_overrun_errors) & 0xff0000) >> 8 | ((__uint32_t)(sp->rx_overrun_errors) & 0xff000000) >> 24) : __swap32md(sp->rx_overrun_errors));
 if (sp->tx_underruns) {
  ifp->if_data.ifi_oerrors += (__uint32_t)(__builtin_constant_p(sp->tx_underruns) ? (__uint32_t)(((__uint32_t)(sp->tx_underruns) & 0xff) << 24 | ((__uint32_t)(sp->tx_underruns) & 0xff00) << 8 | ((__uint32_t)(sp->tx_underruns) & 0xff0000) >> 8 | ((__uint32_t)(sp->tx_underruns) & 0xff000000) >> 24) : __swap32md(sp->tx_underruns));
  if (tx_threshold < 192)
   tx_threshold += 64;
 }
 s = _splraise(6);
 if (sc->rx_idle_secs > 15) {
  sc->rx_idle_secs = 0;
  fxp_init(sc);
  _splx(s);
  return;
 }
 bus_dmamap_sync((sc)->sc_dmat, (sc)->tx_cb_map, __builtin_offsetof(struct fxp_ctrl, stats), sizeof(struct fxp_stats), (0x01|0x04));
 if (!(bus_space_read_2((sc)->sc_st, (sc)->sc_sh, (2)) & 0xff)) {
  fxp_scb_cmd(sc, 0x0070);
 } else {
  sp->tx_good = 0;
  sp->tx_underruns = 0;
  sp->tx_total_collisions = 0;
  sp->rx_good = 0;
  sp->rx_crc_errors = 0;
  sp->rx_alignment_errors = 0;
  sp->rx_rnr_errors = 0;
  sp->rx_overrun_errors = 0;
 }
 mii_tick(&sc->sc_mii);
 _splx(s);
 timeout_add_sec(&sc->stats_update_to, 1);
}
void
fxp_detach(struct fxp_softc *sc)
{
 struct ifnet *ifp = &sc->sc_arpcom.ac_if;
 fxp_stop(sc, 1, 1);
 if (((&sc->sc_mii.mii_phys)->lh_first) != ((void *)0))
  mii_detach(&sc->sc_mii, -1, -1);
 ifmedia_delete_instance(&sc->sc_mii.mii_media, ((uint64_t) -1));
 ether_ifdetach(ifp);
 if_detach(ifp);
 if (sc->sc_ucodebuf)
  free(sc->sc_ucodebuf, 2, sc->sc_ucodelen);
}
void
fxp_stop(struct fxp_softc *sc, int drain, int softonly)
{
 struct ifnet *ifp = &sc->sc_arpcom.ac_if;
 int i;
 timeout_del(&sc->stats_update_to);
 ifp->if_timer = 0;
 ifp->if_flags &= ~0x40;
 ifq_clr_oactive(&ifp->if_snd);
 if (!softonly)
  mii_down(&sc->sc_mii);
 if (!softonly) {
  bus_space_write_4((sc)->sc_st, (sc)->sc_sh, (8), (2));
  delay(10);
 }
 for (i = 0; i < 128; i++) {
  if (sc->txs[i].tx_mbuf != ((void *)0)) {
   bus_dmamap_unload(sc->sc_dmat, sc->txs[i].tx_map);
   m_freem(sc->txs[i].tx_mbuf);
   sc->txs[i].tx_mbuf = ((void *)0);
  }
 }
 sc->sc_cbt_cnt = 0;
 if (drain) {
  bus_dmamap_t rxmap;
  struct mbuf *m;
  m = sc->rfa_headm;
  while (m != ((void *)0)) {
   rxmap = *((bus_dmamap_t *)m->M_dat.MH.MH_dat.MH_ext.ext_buf);
   bus_dmamap_unload(sc->sc_dmat, rxmap);
   ((sc)->sc_rxmaps[--(sc)->sc_rxfree] = (rxmap));
   m = m_free(m);
   sc->rx_bufs--;
  }
  sc->rfa_headm = ((void *)0);
  sc->rfa_tailm = ((void *)0);
  for (i = 0; i < 4; i++) {
   if (fxp_add_rfabuf(sc, ((void *)0)) != 0) {
    panic("fxp_stop: no buffers!");
   }
   sc->rx_bufs++;
  }
 }
}
void
fxp_watchdog(struct ifnet *ifp)
{
 struct fxp_softc *sc = ifp->if_softc;
 log(3, "%s: device timeout\n", sc->sc_dev.dv_xname);
 ifp->if_data.ifi_oerrors++;
 fxp_init(sc);
}
void
fxp_scb_cmd(struct fxp_softc *sc, u_int16_t cmd)
{
 bus_space_write_2((sc)->sc_st, (sc)->sc_sh, (2), (cmd));
}
void
fxp_init(void *xsc)
{
 struct fxp_softc *sc = xsc;
 struct ifnet *ifp = &sc->sc_arpcom.ac_if;
 struct fxp_cb_config *cbp;
 struct fxp_cb_ias *cb_ias;
 struct fxp_cb_tx *txp;
 bus_dmamap_t rxmap;
 int i, prm, save_bf, lrxen, allm, bufs;
 do { if (splassert_ctl > 0) { splassert_check(6, __func__); } } while (0);
 fxp_stop(sc, 0, 0);
 fxp_scb_wait(sc);
 bus_space_write_4((sc)->sc_st, (sc)->sc_sh, (4), (0));
 fxp_scb_cmd(sc, 0x0060);
 fxp_scb_wait(sc);
 bus_space_write_4((sc)->sc_st, (sc)->sc_sh, (4), (0));
 fxp_scb_cmd(sc, 0x0006);
 fxp_load_ucode(sc);
 fxp_mc_setup(sc, 0);
 save_bf = 0;
 lrxen = 0;
 if (sc->sc_revision >= 4)
  lrxen = 1;
 else
  save_bf = 1;
 fxp_scb_wait(sc);
 bus_space_write_4((sc)->sc_st, (sc)->sc_sh, (4), (sc->tx_cb_map->dm_segs->ds_addr + __builtin_offsetof(struct fxp_ctrl, stats)));
 fxp_scb_cmd(sc, 0x0040);
 cbp = &sc->sc_ctrl->u.cfg;
 __builtin_bcopy((fxp_cb_config_template), ((void *)&cbp->cb_status), (sizeof(fxp_cb_config_template)));
 prm = (ifp->if_flags & 0x100) ? 1 : 0;
 allm = (ifp->if_flags & 0x200) ? 1 : 0;
 cbp->cb_command = (__uint16_t)(__builtin_constant_p(0x2 | 0x8000) ? (__uint16_t)(((__uint16_t)(0x2 | 0x8000) & 0xffU) << 8 | ((__uint16_t)(0x2 | 0x8000) & 0xff00U) >> 8) : __swap16md(0x2 | 0x8000));
 if (allm && !prm)
  cbp->mc_all |= 0x08;
 else
  cbp->mc_all &= ~0x08;
 if (prm) {
  cbp->promiscuous |= 1;
  cbp->ctrl2 &= ~0x01;
  cbp->stripping &= ~0x01;
 } else {
  cbp->promiscuous &= ~1;
  cbp->ctrl2 |= 0x01;
  cbp->stripping |= 0x01;
 }
 if (prm || save_bf)
  cbp->ctrl1 |= 0x80;
 else
  cbp->ctrl1 &= ~0x80;
 if (sc->sc_flags & 0x10)
  cbp->ctrl0 |= 0x01;
 if(!sc->phy_10Mbps_only)
  cbp->mediatype |= 0x01;
 else
  cbp->mediatype &= ~0x01;
 if(lrxen)
  cbp->stripping |= 0x08;
 else
  cbp->stripping &= ~0x08;
 cbp->tx_dma_bytecount = 0;
 cbp->ctrl1 |= 0x08;
 cbp->ctrl3 |= 0x08;
 cbp->fifo_limit = 0x08;
 cbp->fdx_pin |= 0x80;
 fxp_scb_wait(sc);
 bus_dmamap_sync((sc)->sc_dmat, (sc)->tx_cb_map, __builtin_offsetof(struct fxp_ctrl, u.cfg), sizeof(struct fxp_cb_config), (0x01|0x04));
 bus_space_write_4((sc)->sc_st, (sc)->sc_sh, (4), (sc->tx_cb_map->dm_segs->ds_addr + __builtin_offsetof(struct fxp_ctrl, u.cfg)));
 fxp_scb_cmd(sc, 0x0010);
 i = (10000);
 do {
  delay(1);
  bus_dmamap_sync((sc)->sc_dmat, (sc)->tx_cb_map, __builtin_offsetof(struct fxp_ctrl, u.cfg), sizeof(struct fxp_cb_config), (0x02|0x08));
 } while ((cbp->cb_status & (__uint16_t)(__builtin_constant_p(0x8000) ? (__uint16_t)(((__uint16_t)(0x8000) & 0xffU) << 8 | ((__uint16_t)(0x8000) & 0xff00U) >> 8) : __swap16md(0x8000))) == 0 && i--);
 bus_dmamap_sync((sc)->sc_dmat, (sc)->tx_cb_map, __builtin_offsetof(struct fxp_ctrl, u.cfg), sizeof(struct fxp_cb_config), (0x02|0x08));
 if (!(cbp->cb_status & (__uint16_t)(__builtin_constant_p(0x8000) ? (__uint16_t)(((__uint16_t)(0x8000) & 0xffU) << 8 | ((__uint16_t)(0x8000) & 0xff00U) >> 8) : __swap16md(0x8000)))) {
  printf("%s: config command timeout\n", sc->sc_dev.dv_xname);
  return;
 }
 cb_ias = &sc->sc_ctrl->u.ias;
 cb_ias->cb_status = (__uint16_t)(__builtin_constant_p(0) ? (__uint16_t)(((__uint16_t)(0) & 0xffU) << 8 | ((__uint16_t)(0) & 0xff00U) >> 8) : __swap16md(0));
 cb_ias->cb_command = (__uint16_t)(__builtin_constant_p(0x1 | 0x8000) ? (__uint16_t)(((__uint16_t)(0x1 | 0x8000) & 0xffU) << 8 | ((__uint16_t)(0x1 | 0x8000) & 0xff00U) >> 8) : __swap16md(0x1 | 0x8000));
 cb_ias->link_addr = (__uint32_t)(__builtin_constant_p(0xffffffff) ? (__uint32_t)(((__uint32_t)(0xffffffff) & 0xff) << 24 | ((__uint32_t)(0xffffffff) & 0xff00) << 8 | ((__uint32_t)(0xffffffff) & 0xff0000) >> 8 | ((__uint32_t)(0xffffffff) & 0xff000000) >> 24) : __swap32md(0xffffffff));
 __builtin_bcopy((sc->sc_arpcom.ac_enaddr), ((void *)cb_ias->macaddr), (sizeof(sc->sc_arpcom.ac_enaddr)));
 fxp_scb_wait(sc);
 bus_dmamap_sync((sc)->sc_dmat, (sc)->tx_cb_map, __builtin_offsetof(struct fxp_ctrl, u.ias), sizeof(struct fxp_cb_ias), (0x01|0x04));
 bus_space_write_4((sc)->sc_st, (sc)->sc_sh, (4), (sc->tx_cb_map->dm_segs->ds_addr + __builtin_offsetof(struct fxp_ctrl, u.ias)));
 fxp_scb_cmd(sc, 0x0010);
 i = (10000);
 do {
  delay(1);
  bus_dmamap_sync((sc)->sc_dmat, (sc)->tx_cb_map, __builtin_offsetof(struct fxp_ctrl, u.ias), sizeof(struct fxp_cb_ias), (0x02|0x08));
 } while (!(cb_ias->cb_status & (__uint16_t)(__builtin_constant_p(0x8000) ? (__uint16_t)(((__uint16_t)(0x8000) & 0xffU) << 8 | ((__uint16_t)(0x8000) & 0xff00U) >> 8) : __swap16md(0x8000))) && i--);
 bus_dmamap_sync((sc)->sc_dmat, (sc)->tx_cb_map, __builtin_offsetof(struct fxp_ctrl, u.ias), sizeof(struct fxp_cb_ias), (0x02|0x08));
 if (!(cb_ias->cb_status & (__uint16_t)(__builtin_constant_p(0x8000) ? (__uint16_t)(((__uint16_t)(0x8000) & 0xffU) << 8 | ((__uint16_t)(0x8000) & 0xff00U) >> 8) : __swap16md(0x8000)))) {
  printf("%s: IAS command timeout\n", sc->sc_dev.dv_xname);
  return;
 }
 fxp_mc_setup(sc, 1);
 __builtin_bzero((sc->sc_ctrl->tx_cb), (sizeof(struct fxp_cb_tx) * 128));
 txp = sc->sc_ctrl->tx_cb;
 for (i = 0; i < 128; i++) {
  txp[i].cb_command = (__uint16_t)(__builtin_constant_p(0x0) ? (__uint16_t)(((__uint16_t)(0x0) & 0xffU) << 8 | ((__uint16_t)(0x0) & 0xff00U) >> 8) : __swap16md(0x0));
  txp[i].link_addr = (__uint32_t)(__builtin_constant_p(sc->tx_cb_map->dm_segs->ds_addr + __builtin_offsetof(struct fxp_ctrl, tx_cb[(i + 1) & (128 - 1)])) ? (__uint32_t)(((__uint32_t)(sc->tx_cb_map->dm_segs->ds_addr + __builtin_offsetof(struct fxp_ctrl, tx_cb[(i + 1) & (128 - 1)])) & 0xff) << 24 | ((__uint32_t)(sc->tx_cb_map->dm_segs->ds_addr + __builtin_offsetof(struct fxp_ctrl, tx_cb[(i + 1) & (128 - 1)])) & 0xff00) << 8 | ((__uint32_t)(sc->tx_cb_map->dm_segs->ds_addr + __builtin_offsetof(struct fxp_ctrl, tx_cb[(i + 1) & (128 - 1)])) & 0xff0000) >> 8 | ((__uint32_t)(sc->tx_cb_map->dm_segs->ds_addr + __builtin_offsetof(struct fxp_ctrl, tx_cb[(i + 1) & (128 - 1)])) & 0xff000000) >> 24) : __swap32md(sc->tx_cb_map->dm_segs->ds_addr + __builtin_offsetof(struct fxp_ctrl, tx_cb[(i + 1) & (128 - 1)])));
  txp[i].tbd_array_addr =(__uint32_t)(__builtin_constant_p(sc->tx_cb_map->dm_segs->ds_addr + __builtin_offsetof(struct fxp_ctrl, tx_cb[i].tbd[0])) ? (__uint32_t)(((__uint32_t)(sc->tx_cb_map->dm_segs->ds_addr + __builtin_offsetof(struct fxp_ctrl, tx_cb[i].tbd[0])) & 0xff) << 24 | ((__uint32_t)(sc->tx_cb_map->dm_segs->ds_addr + __builtin_offsetof(struct fxp_ctrl, tx_cb[i].tbd[0])) & 0xff00) << 8 | ((__uint32_t)(sc->tx_cb_map->dm_segs->ds_addr + __builtin_offsetof(struct fxp_ctrl, tx_cb[i].tbd[0])) & 0xff0000) >> 8 | ((__uint32_t)(sc->tx_cb_map->dm_segs->ds_addr + __builtin_offsetof(struct fxp_ctrl, tx_cb[i].tbd[0])) & 0xff000000) >> 24) : __swap32md(sc->tx_cb_map->dm_segs->ds_addr + __builtin_offsetof(struct fxp_ctrl, tx_cb[i].tbd[0])));
 }
 sc->sc_cbt_prev = sc->sc_cbt_prod = sc->sc_cbt_cons = sc->txs;
 sc->sc_cbt_cnt = 1;
 sc->sc_ctrl->tx_cb[0].cb_command = (__uint16_t)(__builtin_constant_p(0x0 | 0x4000 | 0x2000) ? (__uint16_t)(((__uint16_t)(0x0 | 0x4000 | 0x2000) & 0xffU) << 8 | ((__uint16_t)(0x0 | 0x4000 | 0x2000) & 0xff00U) >> 8) : __swap16md(0x0 | 0x4000 | 0x2000));
 bus_dmamap_sync(sc->sc_dmat, sc->tx_cb_map, 0,
     sc->tx_cb_map->dm_mapsize,
     0x01 | 0x04);
 fxp_scb_wait(sc);
 bus_space_write_4((sc)->sc_st, (sc)->sc_sh, (4), (sc->tx_cb_map->dm_segs->ds_addr + __builtin_offsetof(struct fxp_ctrl, tx_cb[0])));
 fxp_scb_cmd(sc, 0x0010);
 if (ifp->if_flags & 0x1)
  bufs = 64;
 else
  bufs = 4;
 if (sc->rx_bufs > bufs) {
  while (sc->rfa_headm != ((void *)0) && sc->rx_bufs-- > bufs) {
   rxmap = *((bus_dmamap_t *)sc->rfa_headm->M_dat.MH.MH_dat.MH_ext.ext_buf);
   bus_dmamap_unload(sc->sc_dmat, rxmap);
   ((sc)->sc_rxmaps[--(sc)->sc_rxfree] = (rxmap));
   sc->rfa_headm = m_free(sc->rfa_headm);
  }
 } else if (sc->rx_bufs < bufs) {
  int err, tmp_rx_bufs = sc->rx_bufs;
  for (i = sc->rx_bufs; i < bufs; i++) {
   if ((err = bus_dmamap_create(sc->sc_dmat, (1 << 11), 1,
       (1 << 11), 0, 0, &sc->sc_rxmaps[i])) != 0) {
    printf("%s: unable to create rx dma map %d, "
      "error %d\n", sc->sc_dev.dv_xname, i, err);
    break;
   }
   sc->rx_bufs++;
  }
  for (i = tmp_rx_bufs; i < sc->rx_bufs; i++)
   if (fxp_add_rfabuf(sc, ((void *)0)) != 0)
    break;
 }
 fxp_scb_wait(sc);
 mii_mediachg(&sc->sc_mii);
 ifp->if_flags |= 0x40;
 ifq_clr_oactive(&ifp->if_snd);
 bus_space_write_2((sc)->sc_st, (sc)->sc_sh, (2), (bus_space_read_2((sc)->sc_st, (sc)->sc_sh, (2)) | 0x0200));
 timeout_add_sec(&sc->stats_update_to, 1);
}
int
fxp_mediachange(struct ifnet *ifp)
{
 struct fxp_softc *sc = ifp->if_softc;
 struct mii_data *mii = &sc->sc_mii;
 if (mii->mii_instance) {
  struct mii_softc *miisc;
  for((miisc) = ((&mii->mii_phys)->lh_first); (miisc)!= ((void *)0); (miisc) = ((miisc)->mii_list.le_next))
   mii_phy_reset(miisc);
 }
 mii_mediachg(&sc->sc_mii);
 return (0);
}
void
fxp_mediastatus(struct ifnet *ifp, struct ifmediareq *ifmr)
{
 struct fxp_softc *sc = ifp->if_softc;
 mii_pollstat(&sc->sc_mii);
 ifmr->ifm_status = sc->sc_mii.mii_media_status;
 ifmr->ifm_active = sc->sc_mii.mii_media_active;
}
int
fxp_add_rfabuf(struct fxp_softc *sc, struct mbuf *oldm)
{
 u_int32_t v;
 struct mbuf *m;
 u_int8_t *rfap;
 bus_dmamap_t rxmap = ((void *)0);
 m = m_gethdr((0x0002), (1));
 if (m != ((void *)0)) {
  (void) m_clget((m), (0x0002), (1 << 11));
  if ((m->m_hdr.mh_flags & 0x0001) == 0) {
   m_freem(m);
   if (oldm == ((void *)0))
    return 1;
   m = oldm;
   m->m_hdr.mh_data = m->M_dat.MH.MH_dat.MH_ext.ext_buf;
  }
  if (oldm == ((void *)0)) {
   rxmap = ((sc)->sc_rxmaps[(sc)->sc_rxfree++]);
   *((bus_dmamap_t *)m->M_dat.MH.MH_dat.MH_ext.ext_buf) = rxmap;
   bus_dmamap_load(sc->sc_dmat, rxmap,
       m->M_dat.MH.MH_dat.MH_ext.ext_buf, m->M_dat.MH.MH_dat.MH_ext.ext_size, ((void *)0),
       0x0001);
  } else if (oldm == m)
   rxmap = *((bus_dmamap_t *)oldm->M_dat.MH.MH_dat.MH_ext.ext_buf);
  else {
   rxmap = *((bus_dmamap_t *)oldm->M_dat.MH.MH_dat.MH_ext.ext_buf);
   bus_dmamap_unload(sc->sc_dmat, rxmap);
   bus_dmamap_load(sc->sc_dmat, rxmap,
       m->M_dat.MH.MH_dat.MH_ext.ext_buf, m->M_dat.MH.MH_dat.MH_ext.ext_size, ((void *)0),
       0x0001);
   *((bus_dmamap_t *)((m)->m_hdr.mh_data)) = rxmap;
  }
 } else {
  if (oldm == ((void *)0))
   return 1;
  m = oldm;
  m->m_hdr.mh_data = m->M_dat.MH.MH_dat.MH_ext.ext_buf;
  rxmap = *((bus_dmamap_t *)((m)->m_hdr.mh_data));
 }
 m->m_hdr.mh_data += (2 + sizeof(bus_dmamap_t *));
 rfap = m->m_hdr.mh_data;
 m->m_hdr.mh_data += sizeof(struct fxp_rfa);
 *(u_int16_t *)(rfap + __builtin_offsetof(struct fxp_rfa, size)) =
     (__uint16_t)(__builtin_constant_p((1 << 11) - sizeof(struct fxp_rfa) - (2 + sizeof(bus_dmamap_t *))) ? (__uint16_t)(((__uint16_t)((1 << 11) - sizeof(struct fxp_rfa) - (2 + sizeof(bus_dmamap_t *))) & 0xffU) << 8 | ((__uint16_t)((1 << 11) - sizeof(struct fxp_rfa) - (2 + sizeof(bus_dmamap_t *))) & 0xff00U) >> 8) : __swap16md((1 << 11) - sizeof(struct fxp_rfa) - (2 + sizeof(bus_dmamap_t *))));
 *(u_int16_t *)(rfap + __builtin_offsetof(struct fxp_rfa, rfa_status)) = 0;
 *(u_int16_t *)(rfap + __builtin_offsetof(struct fxp_rfa, rfa_control)) =
     (__uint16_t)(__builtin_constant_p(0x8000) ? (__uint16_t)(((__uint16_t)(0x8000) & 0xffU) << 8 | ((__uint16_t)(0x8000) & 0xff00U) >> 8) : __swap16md(0x8000));
 *(u_int16_t *)(rfap + __builtin_offsetof(struct fxp_rfa, actual_size)) = 0;
 v = -1;
 fxp_lwcopy(&v,
     (u_int32_t *)(rfap + __builtin_offsetof(struct fxp_rfa, link_addr)));
 fxp_lwcopy(&v,
     (u_int32_t *)(rfap + __builtin_offsetof(struct fxp_rfa, rbd_addr)));
 bus_dmamap_sync(sc->sc_dmat, rxmap, 0, (1 << 11),
     0x01 | 0x04);
 if (sc->rfa_headm != ((void *)0)) {
  sc->rfa_tailm->m_hdr.mh_next = m;
  v = (__uint32_t)(__builtin_constant_p(rxmap->dm_segs[0].ds_addr + (2 + sizeof(bus_dmamap_t *))) ? (__uint32_t)(((__uint32_t)(rxmap->dm_segs[0].ds_addr + (2 + sizeof(bus_dmamap_t *))) & 0xff) << 24 | ((__uint32_t)(rxmap->dm_segs[0].ds_addr + (2 + sizeof(bus_dmamap_t *))) & 0xff00) << 8 | ((__uint32_t)(rxmap->dm_segs[0].ds_addr + (2 + sizeof(bus_dmamap_t *))) & 0xff0000) >> 8 | ((__uint32_t)(rxmap->dm_segs[0].ds_addr + (2 + sizeof(bus_dmamap_t *))) & 0xff000000) >> 24) : __swap32md(rxmap->dm_segs[0].ds_addr + (2 + sizeof(bus_dmamap_t *))));
  rfap = sc->rfa_tailm->M_dat.MH.MH_dat.MH_ext.ext_buf + (2 + sizeof(bus_dmamap_t *));
  fxp_lwcopy(&v,
      (u_int32_t *)(rfap + __builtin_offsetof(struct fxp_rfa, link_addr)));
  *(u_int16_t *)(rfap + __builtin_offsetof(struct fxp_rfa, rfa_control)) &=
      (__uint16_t)(__builtin_constant_p((u_int16_t)~0x8000) ? (__uint16_t)(((__uint16_t)((u_int16_t)~0x8000) & 0xffU) << 8 | ((__uint16_t)((u_int16_t)~0x8000) & 0xff00U) >> 8) : __swap16md((u_int16_t)~0x8000));
  bus_dmamap_sync(sc->sc_dmat,
      *((bus_dmamap_t *)sc->rfa_tailm->M_dat.MH.MH_dat.MH_ext.ext_buf), 0,
   (1 << 11), 0x01 | 0x04);
 } else
  sc->rfa_headm = m;
 sc->rfa_tailm = m;
 return (m == oldm);
}
int
fxp_mdi_read(struct device *self, int phy, int reg64)
{
 struct fxp_softc *sc = (struct fxp_softc *)self;
 int count = (10000);
 int value;
 bus_space_write_4((sc)->sc_st, (sc)->sc_sh, (16), ((0x2 << 26) | (reg64 << 16) | (phy << 21)));
 while (((value = bus_space_read_4((sc)->sc_st, (sc)->sc_sh, (16))) & 0x10000000) == 0
     && count--)
  delay(10);
 if (count <= 0)
  printf("%s: fxp_mdi_read: timed out\n", sc->sc_dev.dv_xname);
 return (value & 0xffff);
}
void
fxp_statchg(struct device *self)
{
}
void
fxp_mdi_write(struct device *self, int phy, int reg64, int value)
{
 struct fxp_softc *sc = (struct fxp_softc *)self;
 int count = (10000);
 bus_space_write_4((sc)->sc_st, (sc)->sc_sh, (16), ((0x1 << 26) | (reg64 << 16) | (phy << 21) | (value & 0xffff)));
 while((bus_space_read_4((sc)->sc_st, (sc)->sc_sh, (16)) & 0x10000000) == 0 &&
     count--)
  delay(10);
 if (count <= 0)
  printf("%s: fxp_mdi_write: timed out\n", sc->sc_dev.dv_xname);
}
int
fxp_ioctl(struct ifnet *ifp, u_long command, caddr_t data)
{
 struct fxp_softc *sc = ifp->if_softc;
 struct ifreq *ifr = (struct ifreq *)data;
 int s, error = 0;
 s = _splraise(6);
 switch (command) {
 case ((unsigned long)0x80000000 | ((sizeof(struct ifreq) & 0x1fff) << 16) | ((('i')) << 8) | ((12))):
  ifp->if_flags |= 0x1;
  if (!(ifp->if_flags & 0x40))
   fxp_init(sc);
  break;
 case ((unsigned long)0x80000000 | ((sizeof(struct ifreq) & 0x1fff) << 16) | ((('i')) << 8) | ((16))):
  if (ifp->if_flags & 0x1) {
   if (ifp->if_flags & 0x40)
    error = 52;
   else
    fxp_init(sc);
  } else {
   if (ifp->if_flags & 0x40)
    fxp_stop(sc, 1, 0);
  }
  break;
 case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct ifreq) & 0x1fff) << 16) | ((('i')) << 8) | ((55))):
 case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct ifmediareq) & 0x1fff) << 16) | ((('i')) << 8) | ((56))):
  error = ifmedia_ioctl(ifp, ifr, &sc->sc_mii.mii_media, command);
  break;
 default:
  error = ether_ioctl(ifp, &sc->sc_arpcom, command, data);
 }
 if (error == 52) {
  if (ifp->if_flags & 0x40)
   fxp_init(sc);
  error = 0;
 }
 _splx(s);
 return (error);
}
void
fxp_mc_setup(struct fxp_softc *sc, int doit)
{
 struct ifnet *ifp = &sc->sc_arpcom.ac_if;
 struct arpcom *ac = &sc->sc_arpcom;
 struct fxp_cb_mcs *mcsp = &sc->sc_ctrl->u.mcs;
 struct ether_multistep step;
 struct ether_multi *enm;
 int i, nmcasts = 0;
 do { if (splassert_ctl > 0) { splassert_check(6, __func__); } } while (0);
 ifp->if_flags &= ~0x200;
 if (ifp->if_flags & 0x100 || ac->ac_multirangecnt > 0 ||
     ac->ac_multicnt >= 80) {
  ifp->if_flags |= 0x200;
 } else {
  do { (step).e_enm = ((&(&sc->sc_arpcom)->ac_multiaddrs)->lh_first); do { if ((((enm)) = ((step)).e_enm) != ((void *)0)) ((step)).e_enm = ((((enm)))->enm_list.le_next); } while ( 0); } while ( 0);
  while (enm != ((void *)0)) {
   __builtin_bcopy((enm->enm_addrlo), ((void *)&mcsp->mc_addr[nmcasts][0]), (6));
   nmcasts++;
   do { if (((enm) = (step).e_enm) != ((void *)0)) (step).e_enm = (((enm))->enm_list.le_next); } while ( 0);
  }
 }
 if (doit == 0)
  return;
 mcsp->cb_status = (__uint16_t)(__builtin_constant_p(0) ? (__uint16_t)(((__uint16_t)(0) & 0xffU) << 8 | ((__uint16_t)(0) & 0xff00U) >> 8) : __swap16md(0));
 mcsp->cb_command = (__uint16_t)(__builtin_constant_p(0x3 | 0x8000) ? (__uint16_t)(((__uint16_t)(0x3 | 0x8000) & 0xffU) << 8 | ((__uint16_t)(0x3 | 0x8000) & 0xff00U) >> 8) : __swap16md(0x3 | 0x8000));
 mcsp->link_addr = (__uint32_t)(__builtin_constant_p(-1) ? (__uint32_t)(((__uint32_t)(-1) & 0xff) << 24 | ((__uint32_t)(-1) & 0xff00) << 8 | ((__uint32_t)(-1) & 0xff0000) >> 8 | ((__uint32_t)(-1) & 0xff000000) >> 24) : __swap32md(-1));
 mcsp->mc_cnt = (__uint16_t)(__builtin_constant_p(nmcasts * 6) ? (__uint16_t)(((__uint16_t)(nmcasts * 6) & 0xffU) << 8 | ((__uint16_t)(nmcasts * 6) & 0xff00U) >> 8) : __swap16md(nmcasts * 6));
 for (i = (10000); (bus_space_read_2((sc)->sc_st, (sc)->sc_sh, (0)) &
     0x00c0) != 0x0000 && i--; delay(1));
 if ((bus_space_read_2((sc)->sc_st, (sc)->sc_sh, (0)) &
     0x00c0) != 0x0000) {
  printf("%s: timeout waiting for CU ready\n",
      sc->sc_dev.dv_xname);
  return;
 }
 fxp_scb_wait(sc);
 bus_dmamap_sync((sc)->sc_dmat, (sc)->tx_cb_map, __builtin_offsetof(struct fxp_ctrl, u.mcs), sizeof(struct fxp_cb_mcs), (0x01|0x04));
 bus_space_write_4((sc)->sc_st, (sc)->sc_sh, (4), (sc->tx_cb_map->dm_segs->ds_addr + __builtin_offsetof(struct fxp_ctrl, u.mcs)));
 fxp_scb_cmd(sc, 0x0010);
 i = (10000);
 do {
  delay(1);
  bus_dmamap_sync((sc)->sc_dmat, (sc)->tx_cb_map, __builtin_offsetof(struct fxp_ctrl, u.mcs), sizeof(struct fxp_cb_mcs), (0x02|0x08));
 } while (!(mcsp->cb_status & (__uint16_t)(__builtin_constant_p(0x8000) ? (__uint16_t)(((__uint16_t)(0x8000) & 0xffU) << 8 | ((__uint16_t)(0x8000) & 0xff00U) >> 8) : __swap16md(0x8000))) && i--);
 bus_dmamap_sync((sc)->sc_dmat, (sc)->tx_cb_map, __builtin_offsetof(struct fxp_ctrl, u.mcs), sizeof(struct fxp_cb_mcs), (0x02|0x08));
 if (!(mcsp->cb_status & (__uint16_t)(__builtin_constant_p(0x8000) ? (__uint16_t)(((__uint16_t)(0x8000) & 0xffU) << 8 | ((__uint16_t)(0x8000) & 0xff00U) >> 8) : __swap16md(0x8000)))) {
  printf("%s: multicast command timeout\n", sc->sc_dev.dv_xname);
  return;
 }
}
struct ucode {
 u_int16_t revision;
 u_int16_t int_delay_offset;
 u_int16_t bundle_max_offset;
 u_int16_t min_size_mask_offset;
 const char *uname;
} const ucode_table[] = {
 { 4, 72,
   0, 0,
   "fxp-d101a" },
 { 5, 72,
   0, 0,
   "fxp-d101b0" },
 { 8, 78,
   65, 126,
   "fxp-d101ma" },
 { 9, 78,
   67, 129,
   "fxp-d101s" },
 { 12, 91,
   115, 70,
   "fxp-d102" },
 { 13, 46,
   54, 133,
   "fxp-d102c" },
 { 15, 42,
   54, 46,
   "fxp-d102e" },
 { 16, 42,
   54, 46,
   "fxp-d102e" },
 { 0, 0,
   0, 0,
   ((void *)0) }
};
void
fxp_load_ucode(struct fxp_softc *sc)
{
 const struct ucode *uc;
 struct fxp_cb_ucode *cbp = &sc->sc_ctrl->u.code;
 int i, error;
 if (sc->sc_flags & 0x80)
  return;
 for (uc = ucode_table; uc->revision != 0; uc++)
  if (sc->sc_revision == uc->revision)
   break;
 if (uc->revision == 0) {
  sc->sc_flags |= 0x80;
  return;
 }
 if (sc->sc_ucodebuf)
  goto reloadit;
 if (sc->sc_revision == 13) {
  u_int16_t data;
  fxp_read_eeprom(sc, &data, 0x03, 1);
  if ((data & 0x0400) == 0) {
   sc->sc_flags |= 0x80;
   return;
  }
 }
 error = loadfirmware(uc->uname, (u_char **)&sc->sc_ucodebuf,
     &sc->sc_ucodelen);
 if (error) {
  printf("%s: error %d, could not read firmware %s\n",
      sc->sc_dev.dv_xname, error, uc->uname);
  return;
 }
reloadit:
 if (sc->sc_flags & 0x40)
  return;
 cbp->cb_status = 0;
 cbp->cb_command = (__uint16_t)(__builtin_constant_p(0x5|0x8000) ? (__uint16_t)(((__uint16_t)(0x5|0x8000) & 0xffU) << 8 | ((__uint16_t)(0x5|0x8000) & 0xff00U) >> 8) : __swap16md(0x5|0x8000));
 cbp->link_addr = 0xffffffff;
 for (i = 0; i < (sc->sc_ucodelen / sizeof(u_int32_t)); i++)
  cbp->ucode[i] = sc->sc_ucodebuf[i];
 if (uc->int_delay_offset)
  *((u_int16_t *)&cbp->ucode[uc->int_delay_offset]) =
   (__uint16_t)(__builtin_constant_p(sc->sc_int_delay + sc->sc_int_delay / 2) ? (__uint16_t)(((__uint16_t)(sc->sc_int_delay + sc->sc_int_delay / 2) & 0xffU) << 8 | ((__uint16_t)(sc->sc_int_delay + sc->sc_int_delay / 2) & 0xff00U) >> 8) : __swap16md(sc->sc_int_delay + sc->sc_int_delay / 2));
 if (uc->bundle_max_offset)
  *((u_int16_t *)&cbp->ucode[uc->bundle_max_offset]) =
   (__uint16_t)(__builtin_constant_p(sc->sc_bundle_max) ? (__uint16_t)(((__uint16_t)(sc->sc_bundle_max) & 0xffU) << 8 | ((__uint16_t)(sc->sc_bundle_max) & 0xff00U) >> 8) : __swap16md(sc->sc_bundle_max));
 if (uc->min_size_mask_offset)
  *((u_int16_t *)&cbp->ucode[uc->min_size_mask_offset]) =
   (__uint16_t)(__builtin_constant_p(sc->sc_min_size_mask) ? (__uint16_t)(((__uint16_t)(sc->sc_min_size_mask) & 0xffU) << 8 | ((__uint16_t)(sc->sc_min_size_mask) & 0xff00U) >> 8) : __swap16md(sc->sc_min_size_mask));
 bus_dmamap_sync((sc)->sc_dmat, (sc)->tx_cb_map, __builtin_offsetof(struct fxp_ctrl, u.code), sizeof(struct fxp_cb_ucode), (0x01|0x04));
 fxp_scb_wait(sc);
 bus_space_write_4((sc)->sc_st, (sc)->sc_sh, (4), (sc->tx_cb_map->dm_segs->ds_addr + __builtin_offsetof(struct fxp_ctrl, u.code)));
 fxp_scb_cmd(sc, 0x0010);
 i = (10000);
 do {
  delay(2);
  bus_dmamap_sync((sc)->sc_dmat, (sc)->tx_cb_map, __builtin_offsetof(struct fxp_ctrl, u.code), sizeof(struct fxp_cb_ucode), (0x02|0x08));
 } while (((cbp->cb_status & (__uint16_t)(__builtin_constant_p(0x8000) ? (__uint16_t)(((__uint16_t)(0x8000) & 0xffU) << 8 | ((__uint16_t)(0x8000) & 0xff00U) >> 8) : __swap16md(0x8000))) == 0) && --i);
 if (i == 0) {
  printf("%s: timeout loading microcode\n", sc->sc_dev.dv_xname);
  return;
 }
 sc->sc_flags |= 0x40;
}
