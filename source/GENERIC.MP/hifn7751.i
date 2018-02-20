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
void random_start(void);
void enqueue_randomness(unsigned int, unsigned int);
void suspend_randomness(void);
void resume_randomness(char *, size_t);
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
struct hifn_desc {
 volatile u_int32_t l;
 volatile u_int32_t p;
};
struct hifn_base_command {
 volatile u_int16_t masks;
 volatile u_int16_t session_num;
 volatile u_int16_t total_source_count;
 volatile u_int16_t total_dest_count;
};
struct hifn_crypt_command {
 volatile u_int16_t masks;
 volatile u_int16_t header_skip;
 volatile u_int16_t source_count;
 volatile u_int16_t reserved;
};
struct hifn_mac_command {
 volatile u_int16_t masks;
 volatile u_int16_t header_skip;
 volatile u_int16_t source_count;
 volatile u_int16_t reserved;
};
struct hifn_comp_command {
 volatile u_int16_t masks;
 volatile u_int16_t header_skip;
 volatile u_int16_t source_count;
 volatile u_int16_t reserved;
};
struct hifn_base_result {
 volatile u_int16_t flags;
 volatile u_int16_t session;
 volatile u_int16_t src_cnt;
 volatile u_int16_t dst_cnt;
};
struct hifn_comp_result {
 volatile u_int16_t flags;
 volatile u_int16_t crc;
};
struct hifn_mac_result {
 volatile u_int16_t flags;
 volatile u_int16_t reserved;
};
struct hifn_crypt_result {
 volatile u_int16_t flags;
 volatile u_int16_t reserved;
};
struct hifn_dma {
 struct hifn_desc cmdr[24 +1];
 struct hifn_desc srcr[80 +1];
 struct hifn_desc dstr[80 +1];
 struct hifn_desc resr[24 +1];
 struct hifn_command *hifn_commands[24];
 u_char command_bufs[24][(8 + 8 + 8 + 64 + 260)];
 u_char result_bufs[24][(8 + 4 + 4 + 20 + 4)];
 u_int32_t slop[24];
 u_int64_t test_src, test_dst;
 int cmdi, srci, dsti, resi;
 volatile int cmdu, srcu, dstu, resu;
 int cmdk, srck, dstk, resk;
};
struct hifn_session {
 int hs_used;
};
struct hifn_softc {
 struct device sc_dv;
 void * sc_ih;
 u_int32_t sc_dmaier;
 u_int32_t sc_drammodel;
 bus_space_handle_t sc_sh0, sc_sh1;
 bus_space_tag_t sc_st0, sc_st1;
 bus_dma_tag_t sc_dmat;
 struct hifn_dma *sc_dma;
 bus_dmamap_t sc_dmamap;
 bus_dma_segment_t sc_dmasegs[1];
 int sc_dmansegs;
 int32_t sc_cid;
 int sc_maxses;
 int sc_nsessions;
 int sc_ramsize;
 int sc_flags;
 struct timeout sc_rngto, sc_tickto;
 int sc_rngfirst;
 int sc_rnghz;
 int sc_c_busy, sc_s_busy, sc_d_busy, sc_r_busy, sc_active;
 struct hifn_session *sc_sessions;
 pci_chipset_tag_t sc_pci_pc;
 pcitag_t sc_pci_tag;
 bus_size_t sc_waw_lastreg;
 int sc_waw_lastgroup;
};
struct hifn_command {
 u_int16_t session_num;
 u_int16_t base_masks, cry_masks, mac_masks, comp_masks;
 u_int8_t iv[16], *ck, mac[64];
 int cklen;
 int sloplen, slopidx;
 union {
  struct mbuf *src_m;
  struct uio *src_io;
 } srcu;
 bus_dmamap_t src_map;
 union {
  struct mbuf *dst_m;
  struct uio *dst_io;
 } dstu;
 bus_dmamap_t dst_map;
 struct hifn_softc *softc;
 struct cryptop *crp;
 struct cryptodesc *enccrd, *maccrd, *compcrd;
 void (*cmd_callback)(struct hifn_softc *, struct hifn_command *,
     u_int8_t *);
};
struct hifn_stats {
 u_int64_t hst_ibytes;
 u_int64_t hst_obytes;
 u_int32_t hst_ipackets;
 u_int32_t hst_opackets;
 u_int32_t hst_invalid;
 u_int32_t hst_nomem;
 u_int32_t hst_abort;
};
int hifn_probe(struct device *, void *, void *);
void hifn_attach(struct device *, struct device *, void *);
struct cfattach hifn_ca = {
 sizeof(struct hifn_softc), hifn_probe, hifn_attach,
};
struct cfdriver hifn_cd = {
 0, "hifn", DV_DULL
};
void hifn_reset_board(struct hifn_softc *, int);
void hifn_reset_puc(struct hifn_softc *);
void hifn_puc_wait(struct hifn_softc *);
int hifn_enable_crypto(struct hifn_softc *, pcireg_t);
void hifn_set_retry(struct hifn_softc *);
void hifn_init_dma(struct hifn_softc *);
void hifn_init_pci_registers(struct hifn_softc *);
int hifn_sramsize(struct hifn_softc *);
int hifn_dramsize(struct hifn_softc *);
int hifn_ramtype(struct hifn_softc *);
void hifn_sessions(struct hifn_softc *);
int hifn_intr(void *);
u_int hifn_write_command(struct hifn_command *, u_int8_t *);
u_int32_t hifn_next_signature(u_int32_t a, u_int cnt);
int hifn_newsession(u_int32_t *, struct cryptoini *);
int hifn_freesession(u_int64_t);
int hifn_process(struct cryptop *);
void hifn_callback(struct hifn_softc *, struct hifn_command *, u_int8_t *);
int hifn_crypto(struct hifn_softc *, struct hifn_command *,
    struct cryptop *);
int hifn_readramaddr(struct hifn_softc *, int, u_int8_t *);
int hifn_writeramaddr(struct hifn_softc *, int, u_int8_t *);
int hifn_dmamap_aligned(bus_dmamap_t);
int hifn_dmamap_load_src(struct hifn_softc *, struct hifn_command *);
int hifn_dmamap_load_dst(struct hifn_softc *, struct hifn_command *);
int hifn_init_pubrng(struct hifn_softc *);
void hifn_rng(void *);
void hifn_tick(void *);
void hifn_abort(struct hifn_softc *);
void hifn_alloc_slot(struct hifn_softc *, int *, int *, int *, int *);
void hifn_write_4(struct hifn_softc *, int, bus_size_t, u_int32_t);
u_int32_t hifn_read_4(struct hifn_softc *, int, bus_size_t);
int hifn_compression(struct hifn_softc *, struct cryptop *,
    struct hifn_command *);
struct mbuf *hifn_mkmbuf_chain(int, struct mbuf *);
int hifn_compress_enter(struct hifn_softc *, struct hifn_command *);
void hifn_callback_comp(struct hifn_softc *, struct hifn_command *,
    u_int8_t *);
struct hifn_stats hifnstats;
const struct pci_matchid hifn_devices[] = {
 { 0x14e1, 0x0005 },
 { 0x13a3, 0x0005 },
 { 0x13a3, 0x0007 },
 { 0x13a3, 0x0012 },
 { 0x13a3, 0x0020 },
 { 0x13a3, 0x001d },
 { 0x1660, 0x7751 },
};
int
hifn_probe(struct device *parent, void *match, void *aux)
{
 return (pci_matchbyid((struct pci_attach_args *)aux, hifn_devices,
     (sizeof((hifn_devices)) / sizeof((hifn_devices)[0]))));
}
void
hifn_attach(struct device *parent, struct device *self, void *aux)
{
 struct hifn_softc *sc = (struct hifn_softc *)self;
 struct pci_attach_args *pa = aux;
 pci_chipset_tag_t pc = pa->pa_pc;
 pci_intr_handle_t ih;
 const char *intrstr = ((void *)0);
 char rbase;
 bus_size_t iosize0, iosize1;
 u_int16_t ena;
 int rseg;
 caddr_t kva;
 int algs[23 + 1];
 sc->sc_pci_pc = pa->pa_pc;
 sc->sc_pci_tag = pa->pa_tag;
 if ((((pa->pa_id) >> 0) & 0xffff) == 0x13a3 &&
     ((((pa->pa_id) >> 16) & 0xffff) == 0x0012))
  sc->sc_flags = 0x01 | 0x02;
 if ((((pa->pa_id) >> 0) & 0xffff) == 0x13a3 &&
     ((((pa->pa_id) >> 16) & 0xffff) == 0x0020 ||
      (((pa->pa_id) >> 16) & 0xffff) == 0x001d))
  sc->sc_flags = 0x40 | 0x20 | 0x01 |
      0x02;
 if ((((pa->pa_id) >> 0) & 0xffff) == 0x13a3 &&
     (((pa->pa_id) >> 16) & 0xffff) == 0x0007)
  sc->sc_flags |= 0x04 | 0x01 | 0x10 |
      0x08;
 if (pci_mapreg_map(pa, (0x10 + 0), 0x00000000, 0,
     &sc->sc_st0, &sc->sc_sh0, ((void *)0), &iosize0, 0)) {
  printf(": can't find mem space %d\n", 0);
  return;
 }
 if (pci_mapreg_map(pa, (0x10 + 4), 0x00000000, 0,
     &sc->sc_st1, &sc->sc_sh1, ((void *)0), &iosize1, 0)) {
  printf(": can't find mem space %d\n", 1);
  goto fail_io0;
 }
 hifn_set_retry(sc);
 if (sc->sc_flags & 0x08) {
  sc->sc_waw_lastgroup = -1;
  sc->sc_waw_lastreg = 1;
 }
 sc->sc_dmat = pa->pa_dmat;
 if (bus_dmamap_create(sc->sc_dmat, sizeof(*sc->sc_dma), 1,
     sizeof(*sc->sc_dma), 0, 0x0001, &sc->sc_dmamap)) {
  printf(": can't create dma map\n");
  goto fail_io1;
 }
 if (bus_dmamem_alloc(sc->sc_dmat, sizeof(*sc->sc_dma), (1 << 13), 0,
     sc->sc_dmasegs, 1, &sc->sc_dmansegs,
     0x0001 | 0x0800)) {
  printf(": can't alloc dma buffer\n");
  bus_dmamap_destroy(sc->sc_dmat, sc->sc_dmamap);
  goto fail_io1;
 }
 if (bus_dmamem_map(sc->sc_dmat, sc->sc_dmasegs, sc->sc_dmansegs,
     sizeof(*sc->sc_dma), &kva, 0x0001)) {
  printf(": can't map dma buffers (%lu bytes)\n",
      (u_long)sizeof(*sc->sc_dma));
  bus_dmamem_free(sc->sc_dmat, sc->sc_dmasegs, sc->sc_dmansegs);
  bus_dmamap_destroy(sc->sc_dmat, sc->sc_dmamap);
  goto fail_io1;
 }
 if (bus_dmamap_load(sc->sc_dmat, sc->sc_dmamap, kva,
     sizeof(*sc->sc_dma), ((void *)0), 0x0001)) {
  printf(": can't load dma map\n");
  bus_dmamem_unmap(sc->sc_dmat, kva, sizeof(*sc->sc_dma));
  bus_dmamem_free(sc->sc_dmat, sc->sc_dmasegs, sc->sc_dmansegs);
  bus_dmamap_destroy(sc->sc_dmat, sc->sc_dmamap);
  goto fail_io1;
 }
 sc->sc_dma = (struct hifn_dma *)kva;
 hifn_reset_board(sc, 0);
 if (hifn_enable_crypto(sc, pa->pa_id) != 0) {
  printf("%s: crypto enabling failed\n", sc->sc_dv.dv_xname);
  goto fail_mem;
 }
 hifn_reset_puc(sc);
 hifn_init_dma(sc);
 hifn_init_pci_registers(sc);
 if (sc->sc_flags & 0x40)
  sc->sc_drammodel = 1;
 else if (hifn_ramtype(sc))
  goto fail_mem;
 if (sc->sc_drammodel == 0)
  hifn_sramsize(sc);
 else
  hifn_dramsize(sc);
 if ((((pa->pa_id) >> 0) & 0xffff) == 0x1660 &&
     (((pa->pa_id) >> 16) & 0xffff) == 0x7751 &&
     (((pa->pa_class) >> 0) & 0xff) == 0x61)
  sc->sc_ramsize >>= 1;
 if (pci_intr_map(pa, &ih)) {
  printf(": couldn't map interrupt\n");
  goto fail_mem;
 }
 intrstr = pci_intr_string(pc, ih);
 sc->sc_ih = pci_intr_establish(pc, ih, 6, hifn_intr, sc,
     self->dv_xname);
 if (sc->sc_ih == ((void *)0)) {
  printf(": couldn't establish interrupt");
  if (intrstr != ((void *)0))
   printf(" at %s", intrstr);
  printf("\n");
  goto fail_mem;
 }
 hifn_sessions(sc);
 rseg = sc->sc_ramsize / 1024;
 rbase = 'K';
 if (sc->sc_ramsize >= (1024 * 1024)) {
  rbase = 'M';
  rseg /= 1024;
 }
 printf("%d%cB %cram, %s\n", rseg, rbase,
     sc->sc_drammodel ? 'd' : 's', intrstr);
 sc->sc_cid = crypto_get_driverid(0);
 if (sc->sc_cid < 0)
  goto fail_intr;
 hifn_write_4((sc), 0, (0x0c), (hifn_read_4((sc), 0, (0x0c)) | 0x0020));
 ena = hifn_read_4((sc), 0, (0x14)) & 0xff00;
 __builtin_bzero((algs), (sizeof(algs)));
 algs[10] = 0x01;
 switch (ena) {
 case 0x1100:
  algs[1] = 0x01;
 case 0x1000:
  algs[4] = 0x01;
  algs[5] = 0x01;
 }
 if (sc->sc_flags & 0x20)
  algs[7] = 0x01;
 crypto_register(sc->sc_cid, algs, hifn_newsession,
     hifn_freesession, hifn_process);
 bus_dmamap_sync(sc->sc_dmat, sc->sc_dmamap, 0,
     sc->sc_dmamap->dm_mapsize,
     0x01 | 0x04);
 if (sc->sc_flags & (0x02 | 0x01))
  hifn_init_pubrng(sc);
 timeout_set(&sc->sc_tickto, hifn_tick, sc);
 timeout_add_sec(&sc->sc_tickto, 1);
 return;
fail_intr:
 pci_intr_disestablish(pc, sc->sc_ih);
fail_mem:
 bus_dmamap_unload(sc->sc_dmat, sc->sc_dmamap);
 bus_dmamem_unmap(sc->sc_dmat, kva, sizeof(*sc->sc_dma));
 bus_dmamem_free(sc->sc_dmat, sc->sc_dmasegs, sc->sc_dmansegs);
 bus_dmamap_destroy(sc->sc_dmat, sc->sc_dmamap);
 hifn_write_4((sc), 1, (0x48), (0x00000001 | 0x00000002 | 0x00000004));
fail_io1:
 bus_space_unmap(sc->sc_st1, sc->sc_sh1, iosize1);
fail_io0:
 bus_space_unmap(sc->sc_st0, sc->sc_sh0, iosize0);
}
int
hifn_init_pubrng(struct hifn_softc *sc)
{
 u_int32_t r;
 int i;
 if ((sc->sc_flags & 0x04) == 0) {
  hifn_write_4((sc), 1, (0x204), (hifn_read_4((sc), 1, (0x204)) | 0x00000001));
  for (i = 0; i < 100; i++) {
   delay(1000);
   if ((hifn_read_4((sc), 1, (0x204)) &
       0x00000001) == 0)
    break;
  }
  if (i == 100) {
   printf("%s: public key init failed\n",
       sc->sc_dv.dv_xname);
   return (1);
  }
 }
 if (sc->sc_flags & 0x01) {
  if (sc->sc_flags & 0x04) {
   r = hifn_read_4((sc), 1, (0x60));
   if (r & 0x00000001) {
    r &= ~0x00000001;
    hifn_write_4((sc), 1, (0x60), (r));
   }
   hifn_write_4((sc), 1, (0x64), (0x00000f80));
   r |= 0x00000001;
   hifn_write_4((sc), 1, (0x60), (r));
  } else
   hifn_write_4((sc), 1, (0x314), (hifn_read_4((sc), 1, (0x314)) | 0x00000001));
  sc->sc_rngfirst = 1;
  if (hz >= 100)
   sc->sc_rnghz = hz / 100;
  else
   sc->sc_rnghz = 1;
  timeout_set(&sc->sc_rngto, hifn_rng, sc);
  timeout_add(&sc->sc_rngto, sc->sc_rnghz);
 }
 if (sc->sc_flags & 0x02) {
  hifn_write_4((sc), 1, (0x310), (0x00000001));
  sc->sc_dmaier |= 0x00000002;
  hifn_write_4((sc), 1, (0x44), (sc->sc_dmaier));
 }
 return (0);
}
void
hifn_rng(void *vsc)
{
 struct hifn_softc *sc = vsc;
 u_int32_t num1, sts, num2;
 int i;
 if (sc->sc_flags & 0x04) {
  for (i = 0; i < 5; i++) {
   sts = hifn_read_4((sc), 1, (0x6c));
   if (sts & 0x00001000) {
    printf("%s: RNG underflow: disabling\n",
        sc->sc_dv.dv_xname);
    return;
   }
   if ((sts & 0x00004000) == 0)
    break;
   num1 = hifn_read_4((sc), 1, (0x68));
   num2 = hifn_read_4((sc), 1, (0x68));
   if (sc->sc_rngfirst)
    sc->sc_rngfirst = 0;
   else {
    enqueue_randomness(0, (int)(num1));
    enqueue_randomness(0, (int)(num2));
   }
  }
 } else {
  num1 = hifn_read_4((sc), 1, (0x318));
  if (sc->sc_rngfirst)
   sc->sc_rngfirst = 0;
  else
   enqueue_randomness(0, (int)(num1));
 }
 timeout_add(&sc->sc_rngto, sc->sc_rnghz);
}
void
hifn_puc_wait(struct hifn_softc *sc)
{
 int i;
 for (i = 5000; i > 0; i--) {
  delay(1);
  if (!(hifn_read_4((sc), 0, (0x04)) & 0x0001))
   break;
 }
 if (!i)
  printf("%s: proc unit did not reset\n", sc->sc_dv.dv_xname);
}
void
hifn_reset_puc(struct hifn_softc *sc)
{
 hifn_write_4((sc), 0, (0x04), (0x0002));
 hifn_puc_wait(sc);
}
void
hifn_set_retry(struct hifn_softc *sc)
{
 u_int32_t r;
 r = pci_conf_read(sc->sc_pci_pc, sc->sc_pci_tag, 0x40);
 r &= 0xffff0000;
 pci_conf_write(sc->sc_pci_pc, sc->sc_pci_tag, 0x40, r);
}
void
hifn_reset_board(struct hifn_softc *sc, int full)
{
 u_int32_t reg64;
 hifn_write_4((sc), 1, (0x48), (0x00000001 | 0x00000002 | 0x00000004));
 delay(1000);
 if (full) {
  hifn_write_4((sc), 1, (0x48), (0x00000004));
  delay(1000);
 } else {
  hifn_write_4((sc), 1, (0x48), (0x00000004 | 0x00000001));
  hifn_reset_puc(sc);
 }
 __builtin_bzero((sc->sc_dma), (sizeof(*sc->sc_dma)));
 hifn_write_4((sc), 1, (0x48), (0x00000001 | 0x00000002 | 0x00000004));
 hifn_puc_wait(sc);
 hifn_set_retry(sc);
 if (sc->sc_flags & 0x04) {
  for (reg64 = 0; reg64 < 1000; reg64++) {
   if (hifn_read_4((sc), 1, (0x94)) &
       0x00004000)
    break;
   delay(1000);
  }
  if (reg64 == 1000)
   printf(": cram init timeout\n");
 }
}
u_int32_t
hifn_next_signature(u_int32_t a, u_int cnt)
{
 int i;
 u_int32_t v;
 for (i = 0; i < cnt; i++) {
  v = a & 0x80080125;
  v ^= v >> 16;
  v ^= v >> 8;
  v ^= v >> 4;
  v ^= v >> 2;
  v ^= v >> 1;
  a = (v & 1) ^ (a << 1);
 }
 return a;
}
struct pci2id {
 u_short pci_vendor;
 u_short pci_prod;
 char card_id[13];
} pci2id[] = {
 {
  0x13a3,
  0x0012,
  { 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00 }
 }, {
  0x13a3,
  0x0020,
  { 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00 }
 }, {
  0x13a3,
  0x001d,
  { 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00 }
 }, {
  0x1660,
  0x7751,
  { 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00 }
 }, {
  0x14e1,
  0x0005,
  { 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00 }
 }, {
  0x13a3,
  0x0007,
  { 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00 }
 }, {
  0x13a3,
  0x0005,
  { 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00 }
 },
};
int
hifn_enable_crypto(struct hifn_softc *sc, pcireg_t pciid)
{
 u_int32_t dmacfg, ramcfg, encl, addr, i;
 char *offtbl = ((void *)0);
 for (i = 0; i < (sizeof((pci2id)) / sizeof((pci2id)[0])); i++) {
  if (pci2id[i].pci_vendor == (((pciid) >> 0) & 0xffff) &&
      pci2id[i].pci_prod == (((pciid) >> 16) & 0xffff)) {
   offtbl = pci2id[i].card_id;
   break;
  }
 }
 if (offtbl == ((void *)0)) {
  return (1);
 }
 ramcfg = hifn_read_4((sc), 0, (0x0c));
 dmacfg = hifn_read_4((sc), 1, (0x48));
 hifn_write_4((sc), 0, (0x0c), (ramcfg | 0x0020));
 encl = hifn_read_4((sc), 0, (0x14)) & 0xff00;
 if (encl == 0x1000 || encl == 0x1100) {
  goto report;
 }
 if (encl != 0 && encl != 0x3000) {
  return 1;
 }
 hifn_write_4((sc), 1, (0x48), (0x00000800 | 0x00000001 | 0x00000002 | 0x00000004));
 delay(1000);
 addr = hifn_read_4((sc), 1, (0xf4));
 delay(1000);
 hifn_write_4((sc), 1, (0xfc), (0));
 delay(1000);
 for (i = 0; i <= 12; i++) {
  addr = hifn_next_signature(addr, offtbl[i] + 0x101);
  hifn_write_4((sc), 1, (0xfc), (addr));
  delay(1000);
 }
 hifn_write_4((sc), 0, (0x0c), (ramcfg | 0x0020));
 encl = hifn_read_4((sc), 0, (0x14)) & 0xff00;
report:
 hifn_write_4((sc), 0, (0x0c), (ramcfg));
 hifn_write_4((sc), 1, (0x48), (dmacfg));
 switch (encl) {
 case 0x3000:
  offtbl = "LZS";
  break;
 case 0x1000:
  offtbl = "LZS DES";
  break;
 case 0x1100:
  offtbl = "LZS 3DES ARC4 MD5 SHA1";
  break;
 default:
  offtbl = "disabled";
  break;
 }
 printf(": %s", offtbl);
 if (sc->sc_flags & 0x01)
  printf(" RNG");
 if (sc->sc_flags & 0x20)
  printf(" AES");
 if (sc->sc_flags & 0x02)
  printf(" PK");
 printf(", ");
 return (0);
}
void
hifn_init_pci_registers(struct hifn_softc *sc)
{
 hifn_write_4((sc), 0, (0x04), (0x0002));
 hifn_write_4((sc), 0, (0x1c), (0x0400));
 hifn_write_4((sc), 0, (0x10), (0x0200));
 hifn_write_4((sc), 1, (0x0c), (sc->sc_dmamap->dm_segs[0].ds_addr + __builtin_offsetof(struct hifn_dma, cmdr[0])));
 hifn_write_4((sc), 1, (0x1c), (sc->sc_dmamap->dm_segs[0].ds_addr + __builtin_offsetof(struct hifn_dma, srcr[0])));
 hifn_write_4((sc), 1, (0x3c), (sc->sc_dmamap->dm_segs[0].ds_addr + __builtin_offsetof(struct hifn_dma, dstr[0])));
 hifn_write_4((sc), 1, (0x2c), (sc->sc_dmamap->dm_segs[0].ds_addr + __builtin_offsetof(struct hifn_dma, resr[0])));
 delay(2000);
 hifn_write_4((sc), 1, (0x40), (0x40000000 | 0x00400000 | 0x00004000 | 0x00000040 | 0x20000000 | 0x10000000 | 0x08000000 | 0x04000000 | 0x02000000 | 0x00200000 | 0x00100000 | 0x00080000 | 0x00040000 | 0x00020000 | 0x00002000 | 0x00001000 | 0x00000800 | 0x00000400 | 0x00000020 | 0x00000010 | 0x00000008 | 0x00000004 | 0x00000001 | ((sc->sc_flags & 0x02) ? 0x00000002 : 0) | ((sc->sc_flags & 0x04) ? 0x00000200 | 0x00000100 : 0)));
 sc->sc_d_busy = sc->sc_r_busy = sc->sc_s_busy = sc->sc_c_busy = 0;
 sc->sc_dmaier |= 0x00100000 | 0x00000020 |
     0x02000000 | 0x00020000 |
     0x00002000 | 0x20000000 | 0x00200000 |
     0x00000001 |
     ((sc->sc_flags & 0x04) ?
  0x00000200 | 0x00000100 : 0);
 sc->sc_dmaier &= ~0x00000004;
 hifn_write_4((sc), 1, (0x44), (sc->sc_dmaier));
 if (sc->sc_flags & 0x10) hifn_write_4((sc), 1, (0x94), (hifn_read_4((sc), 1, (0x94)) & ~(0x00000100 | 0x00000200 | 0x00000400)));
 if (sc->sc_flags & 0x40) {
  hifn_write_4((sc), 0, (0x0c), (0x0004 | 0x0200 | 0x0100 | 0x0040));
  hifn_write_4((sc), 1, (0x4c), (0x00001d18));
 } else {
  hifn_write_4((sc), 0, (0x0c), (0x0004 | 0x1000 | 0x0200 | 0x0100 | 0x0040 | (sc->sc_drammodel ? 0x0010 : 0x0000)));
 }
 hifn_write_4((sc), 0, (0x08), (0x0200));
 hifn_write_4((sc), 1, (0x48), (0x00000001 | 0x00000002 | 0x00000004 | 0x00000010 | ((0x1 << 16 ) & 0x00ff0000) | ((0x0 << 8) & 0x00000700)));
}
void
hifn_sessions(struct hifn_softc *sc)
{
 u_int32_t pucnfg;
 int ctxsize;
 pucnfg = hifn_read_4((sc), 0, (0x0c));
 if (pucnfg & 0x0004) {
  if (pucnfg & 0x0002)
   ctxsize = 128;
  else
   ctxsize = 512;
  if (sc->sc_flags & 0x40)
   sc->sc_maxses = 32768 / ctxsize;
  else
   sc->sc_maxses = 1 +
       ((sc->sc_ramsize - 32768) / ctxsize);
 }
 else
  sc->sc_maxses = sc->sc_ramsize / 16384;
 if (sc->sc_maxses > 2048)
  sc->sc_maxses = 2048;
}
int
hifn_ramtype(struct hifn_softc *sc)
{
 u_int8_t data[8], dataexpect[8];
 int i;
 for (i = 0; i < sizeof(data); i++)
  data[i] = dataexpect[i] = 0x55;
 if (hifn_writeramaddr(sc, 0, data))
  return (-1);
 if (hifn_readramaddr(sc, 0, data))
  return (-1);
 if (__builtin_bcmp((data), (dataexpect), (sizeof(data))) != 0) {
  sc->sc_drammodel = 1;
  return (0);
 }
 for (i = 0; i < sizeof(data); i++)
  data[i] = dataexpect[i] = 0xaa;
 if (hifn_writeramaddr(sc, 0, data))
  return (-1);
 if (hifn_readramaddr(sc, 0, data))
  return (-1);
 if (__builtin_bcmp((data), (dataexpect), (sizeof(data))) != 0) {
  sc->sc_drammodel = 1;
  return (0);
 }
 return (0);
}
int
hifn_sramsize(struct hifn_softc *sc)
{
 u_int32_t a;
 u_int8_t data[8];
 u_int8_t dataexpect[sizeof(data)];
 int32_t i;
 for (i = 0; i < sizeof(data); i++)
  data[i] = dataexpect[i] = i ^ 0x5a;
 for (i = ((32 << 20) / 16384) - 1; i >= 0; i--) {
  a = i * 16384;
  __builtin_bcopy((&i), (data), (sizeof(i)));
  hifn_writeramaddr(sc, a, data);
 }
 for (i = 0; i < ((32 << 20) / 16384); i++) {
  a = i * 16384;
  __builtin_bcopy((&i), (dataexpect), (sizeof(i)));
  if (hifn_readramaddr(sc, a, data) < 0)
   return (0);
  if (__builtin_bcmp((data), (dataexpect), (sizeof(data))) != 0)
   return (0);
  sc->sc_ramsize = a + 16384;
 }
 return (0);
}
int
hifn_dramsize(struct hifn_softc *sc)
{
 u_int32_t cnfg;
 if (sc->sc_flags & 0x40) {
  sc->sc_ramsize = 32768;
 } else {
  cnfg = hifn_read_4((sc), 0, (0x0c)) &
      0xe000;
  sc->sc_ramsize = 1 << ((cnfg >> 13) + 18);
 }
 return (0);
}
void
hifn_alloc_slot(struct hifn_softc *sc, int *cmdp, int *srcp,
    int *dstp, int *resp)
{
 struct hifn_dma *dma = sc->sc_dma;
 if (dma->cmdi == 24) {
  dma->cmdi = 0;
  dma->cmdr[24].l = (__uint32_t)(__builtin_constant_p(0x80000000 | 0x40000000 | 0x02000000) ? (__uint32_t)(((__uint32_t)(0x80000000 | 0x40000000 | 0x02000000) & 0xff) << 24 | ((__uint32_t)(0x80000000 | 0x40000000 | 0x02000000) & 0xff00) << 8 | ((__uint32_t)(0x80000000 | 0x40000000 | 0x02000000) & 0xff0000) >> 8 | ((__uint32_t)(0x80000000 | 0x40000000 | 0x02000000) & 0xff000000) >> 24) : __swap32md(0x80000000 | 0x40000000 | 0x02000000));
  bus_dmamap_sync(((sc))->sc_dmat, ((sc))->sc_dmamap, __builtin_offsetof(struct hifn_dma, cmdr[(24)]), sizeof(struct hifn_desc), ((0x04 | 0x01)));
 }
 *cmdp = dma->cmdi++;
 dma->cmdk = dma->cmdi;
 if (dma->srci == 80) {
  dma->srci = 0;
  dma->srcr[80].l = (__uint32_t)(__builtin_constant_p(0x80000000 | 0x40000000 | 0x02000000) ? (__uint32_t)(((__uint32_t)(0x80000000 | 0x40000000 | 0x02000000) & 0xff) << 24 | ((__uint32_t)(0x80000000 | 0x40000000 | 0x02000000) & 0xff00) << 8 | ((__uint32_t)(0x80000000 | 0x40000000 | 0x02000000) & 0xff0000) >> 8 | ((__uint32_t)(0x80000000 | 0x40000000 | 0x02000000) & 0xff000000) >> 24) : __swap32md(0x80000000 | 0x40000000 | 0x02000000));
  bus_dmamap_sync(((sc))->sc_dmat, ((sc))->sc_dmamap, __builtin_offsetof(struct hifn_dma, srcr[(80)]), sizeof(struct hifn_desc), ((0x04 | 0x01)));
 }
 *srcp = dma->srci++;
 dma->srck = dma->srci;
 if (dma->dsti == 80) {
  dma->dsti = 0;
  dma->dstr[80].l = (__uint32_t)(__builtin_constant_p(0x80000000 | 0x40000000 | 0x02000000) ? (__uint32_t)(((__uint32_t)(0x80000000 | 0x40000000 | 0x02000000) & 0xff) << 24 | ((__uint32_t)(0x80000000 | 0x40000000 | 0x02000000) & 0xff00) << 8 | ((__uint32_t)(0x80000000 | 0x40000000 | 0x02000000) & 0xff0000) >> 8 | ((__uint32_t)(0x80000000 | 0x40000000 | 0x02000000) & 0xff000000) >> 24) : __swap32md(0x80000000 | 0x40000000 | 0x02000000));
  bus_dmamap_sync(((sc))->sc_dmat, ((sc))->sc_dmamap, __builtin_offsetof(struct hifn_dma, dstr[(80)]), sizeof(struct hifn_desc), ((0x04 | 0x01)));
 }
 *dstp = dma->dsti++;
 dma->dstk = dma->dsti;
 if (dma->resi == 24) {
  dma->resi = 0;
  dma->resr[24].l = (__uint32_t)(__builtin_constant_p(0x80000000 | 0x40000000 | 0x02000000) ? (__uint32_t)(((__uint32_t)(0x80000000 | 0x40000000 | 0x02000000) & 0xff) << 24 | ((__uint32_t)(0x80000000 | 0x40000000 | 0x02000000) & 0xff00) << 8 | ((__uint32_t)(0x80000000 | 0x40000000 | 0x02000000) & 0xff0000) >> 8 | ((__uint32_t)(0x80000000 | 0x40000000 | 0x02000000) & 0xff000000) >> 24) : __swap32md(0x80000000 | 0x40000000 | 0x02000000));
  bus_dmamap_sync(((sc))->sc_dmat, ((sc))->sc_dmamap, __builtin_offsetof(struct hifn_dma, resr[(24)]), sizeof(struct hifn_desc), ((0x04 | 0x01)));
 }
 *resp = dma->resi++;
 dma->resk = dma->resi;
}
int
hifn_writeramaddr(struct hifn_softc *sc, int addr, u_int8_t *data)
{
 struct hifn_dma *dma = sc->sc_dma;
 struct hifn_base_command wc;
 const u_int32_t masks = 0x80000000 | 0x20000000 | 0x02000000;
 int r, cmdi, resi, srci, dsti;
 wc.masks = (__uint16_t)(__builtin_constant_p(3 << 13) ? (__uint16_t)(((__uint16_t)(3 << 13) & 0xffU) << 8 | ((__uint16_t)(3 << 13) & 0xff00U) >> 8) : __swap16md(3 << 13));
 wc.session_num = (__uint16_t)(__builtin_constant_p(addr >> 14) ? (__uint16_t)(((__uint16_t)(addr >> 14) & 0xffU) << 8 | ((__uint16_t)(addr >> 14) & 0xff00U) >> 8) : __swap16md(addr >> 14));
 wc.total_source_count = (__uint16_t)(__builtin_constant_p(8) ? (__uint16_t)(((__uint16_t)(8) & 0xffU) << 8 | ((__uint16_t)(8) & 0xff00U) >> 8) : __swap16md(8));
 wc.total_dest_count = (__uint16_t)(__builtin_constant_p(addr & 0x3fff) ? (__uint16_t)(((__uint16_t)(addr & 0x3fff) & 0xffU) << 8 | ((__uint16_t)(addr & 0x3fff) & 0xff00U) >> 8) : __swap16md(addr & 0x3fff));
 hifn_alloc_slot(sc, &cmdi, &srci, &dsti, &resi);
 hifn_write_4((sc), 1, (0x40), (0x00000080 | 0x00008000 | 0x80000000 | 0x00800000));
 __builtin_bzero((dma->command_bufs[cmdi]), ((8 + 8 + 8 + 64 + 260)));
 *(struct hifn_base_command *)dma->command_bufs[cmdi] = wc;
 __builtin_bcopy((data), (&dma->test_src), (sizeof(dma->test_src)));
 dma->srcr[srci].p = (__uint32_t)(__builtin_constant_p(sc->sc_dmamap->dm_segs[0].ds_addr + __builtin_offsetof(struct hifn_dma, test_src)) ? (__uint32_t)(((__uint32_t)(sc->sc_dmamap->dm_segs[0].ds_addr + __builtin_offsetof(struct hifn_dma, test_src)) & 0xff) << 24 | ((__uint32_t)(sc->sc_dmamap->dm_segs[0].ds_addr + __builtin_offsetof(struct hifn_dma, test_src)) & 0xff00) << 8 | ((__uint32_t)(sc->sc_dmamap->dm_segs[0].ds_addr + __builtin_offsetof(struct hifn_dma, test_src)) & 0xff0000) >> 8 | ((__uint32_t)(sc->sc_dmamap->dm_segs[0].ds_addr + __builtin_offsetof(struct hifn_dma, test_src)) & 0xff000000) >> 24) : __swap32md(sc->sc_dmamap->dm_segs[0].ds_addr + __builtin_offsetof(struct hifn_dma, test_src)));
 dma->dstr[dsti].p = (__uint32_t)(__builtin_constant_p(sc->sc_dmamap->dm_segs[0].ds_addr + __builtin_offsetof(struct hifn_dma, test_dst)) ? (__uint32_t)(((__uint32_t)(sc->sc_dmamap->dm_segs[0].ds_addr + __builtin_offsetof(struct hifn_dma, test_dst)) & 0xff) << 24 | ((__uint32_t)(sc->sc_dmamap->dm_segs[0].ds_addr + __builtin_offsetof(struct hifn_dma, test_dst)) & 0xff00) << 8 | ((__uint32_t)(sc->sc_dmamap->dm_segs[0].ds_addr + __builtin_offsetof(struct hifn_dma, test_dst)) & 0xff0000) >> 8 | ((__uint32_t)(sc->sc_dmamap->dm_segs[0].ds_addr + __builtin_offsetof(struct hifn_dma, test_dst)) & 0xff000000) >> 24) : __swap32md(sc->sc_dmamap->dm_segs[0].ds_addr + __builtin_offsetof(struct hifn_dma, test_dst)));
 dma->cmdr[cmdi].l = (__uint32_t)(__builtin_constant_p(16 | masks) ? (__uint32_t)(((__uint32_t)(16 | masks) & 0xff) << 24 | ((__uint32_t)(16 | masks) & 0xff00) << 8 | ((__uint32_t)(16 | masks) & 0xff0000) >> 8 | ((__uint32_t)(16 | masks) & 0xff000000) >> 24) : __swap32md(16 | masks));
 dma->srcr[srci].l = (__uint32_t)(__builtin_constant_p(8 | masks) ? (__uint32_t)(((__uint32_t)(8 | masks) & 0xff) << 24 | ((__uint32_t)(8 | masks) & 0xff00) << 8 | ((__uint32_t)(8 | masks) & 0xff0000) >> 8 | ((__uint32_t)(8 | masks) & 0xff000000) >> 24) : __swap32md(8 | masks));
 dma->dstr[dsti].l = (__uint32_t)(__builtin_constant_p(4 | masks) ? (__uint32_t)(((__uint32_t)(4 | masks) & 0xff) << 24 | ((__uint32_t)(4 | masks) & 0xff00) << 8 | ((__uint32_t)(4 | masks) & 0xff0000) >> 8 | ((__uint32_t)(4 | masks) & 0xff000000) >> 24) : __swap32md(4 | masks));
 dma->resr[resi].l = (__uint32_t)(__builtin_constant_p(4 | masks) ? (__uint32_t)(((__uint32_t)(4 | masks) & 0xff) << 24 | ((__uint32_t)(4 | masks) & 0xff00) << 8 | ((__uint32_t)(4 | masks) & 0xff0000) >> 8 | ((__uint32_t)(4 | masks) & 0xff000000) >> 24) : __swap32md(4 | masks));
 bus_dmamap_sync(sc->sc_dmat, sc->sc_dmamap,
     0, sc->sc_dmamap->dm_mapsize,
     0x01 | 0x04);
 for (r = 10000; r >= 0; r--) {
  delay(10);
  bus_dmamap_sync(sc->sc_dmat, sc->sc_dmamap,
      0, sc->sc_dmamap->dm_mapsize,
      0x02 | 0x08);
  if ((dma->resr[resi].l & (__uint32_t)(__builtin_constant_p(0x80000000) ? (__uint32_t)(((__uint32_t)(0x80000000) & 0xff) << 24 | ((__uint32_t)(0x80000000) & 0xff00) << 8 | ((__uint32_t)(0x80000000) & 0xff0000) >> 8 | ((__uint32_t)(0x80000000) & 0xff000000) >> 24) : __swap32md(0x80000000))) == 0)
   break;
  bus_dmamap_sync(sc->sc_dmat, sc->sc_dmamap,
      0, sc->sc_dmamap->dm_mapsize,
      0x01 | 0x04);
 }
 if (r == 0) {
  printf("%s: writeramaddr -- "
      "result[%d](addr %d) still valid\n",
      sc->sc_dv.dv_xname, resi, addr);
  return (-1);
 } else
  r = 0;
 hifn_write_4((sc), 1, (0x40), (0x00000040 | 0x00004000 | 0x40000000 | 0x00400000));
 return (r);
}
int
hifn_readramaddr(struct hifn_softc *sc, int addr, u_int8_t *data)
{
 struct hifn_dma *dma = sc->sc_dma;
 struct hifn_base_command rc;
 const u_int32_t masks = 0x80000000 | 0x20000000 | 0x02000000;
 int r, cmdi, srci, dsti, resi;
 rc.masks = (__uint16_t)(__builtin_constant_p(2 << 13) ? (__uint16_t)(((__uint16_t)(2 << 13) & 0xffU) << 8 | ((__uint16_t)(2 << 13) & 0xff00U) >> 8) : __swap16md(2 << 13));
 rc.session_num = (__uint16_t)(__builtin_constant_p(addr >> 14) ? (__uint16_t)(((__uint16_t)(addr >> 14) & 0xffU) << 8 | ((__uint16_t)(addr >> 14) & 0xff00U) >> 8) : __swap16md(addr >> 14));
 rc.total_source_count = (__uint16_t)(__builtin_constant_p(addr & 0x3fff) ? (__uint16_t)(((__uint16_t)(addr & 0x3fff) & 0xffU) << 8 | ((__uint16_t)(addr & 0x3fff) & 0xff00U) >> 8) : __swap16md(addr & 0x3fff));
 rc.total_dest_count = (__uint16_t)(__builtin_constant_p(8) ? (__uint16_t)(((__uint16_t)(8) & 0xffU) << 8 | ((__uint16_t)(8) & 0xff00U) >> 8) : __swap16md(8));
 hifn_alloc_slot(sc, &cmdi, &srci, &dsti, &resi);
 hifn_write_4((sc), 1, (0x40), (0x00000080 | 0x00008000 | 0x80000000 | 0x00800000));
 __builtin_bzero((dma->command_bufs[cmdi]), ((8 + 8 + 8 + 64 + 260)));
 *(struct hifn_base_command *)dma->command_bufs[cmdi] = rc;
 dma->srcr[srci].p = (__uint32_t)(__builtin_constant_p(sc->sc_dmamap->dm_segs[0].ds_addr + __builtin_offsetof(struct hifn_dma, test_src)) ? (__uint32_t)(((__uint32_t)(sc->sc_dmamap->dm_segs[0].ds_addr + __builtin_offsetof(struct hifn_dma, test_src)) & 0xff) << 24 | ((__uint32_t)(sc->sc_dmamap->dm_segs[0].ds_addr + __builtin_offsetof(struct hifn_dma, test_src)) & 0xff00) << 8 | ((__uint32_t)(sc->sc_dmamap->dm_segs[0].ds_addr + __builtin_offsetof(struct hifn_dma, test_src)) & 0xff0000) >> 8 | ((__uint32_t)(sc->sc_dmamap->dm_segs[0].ds_addr + __builtin_offsetof(struct hifn_dma, test_src)) & 0xff000000) >> 24) : __swap32md(sc->sc_dmamap->dm_segs[0].ds_addr + __builtin_offsetof(struct hifn_dma, test_src)));
 dma->test_src = 0;
 dma->dstr[dsti].p = (__uint32_t)(__builtin_constant_p(sc->sc_dmamap->dm_segs[0].ds_addr + __builtin_offsetof(struct hifn_dma, test_dst)) ? (__uint32_t)(((__uint32_t)(sc->sc_dmamap->dm_segs[0].ds_addr + __builtin_offsetof(struct hifn_dma, test_dst)) & 0xff) << 24 | ((__uint32_t)(sc->sc_dmamap->dm_segs[0].ds_addr + __builtin_offsetof(struct hifn_dma, test_dst)) & 0xff00) << 8 | ((__uint32_t)(sc->sc_dmamap->dm_segs[0].ds_addr + __builtin_offsetof(struct hifn_dma, test_dst)) & 0xff0000) >> 8 | ((__uint32_t)(sc->sc_dmamap->dm_segs[0].ds_addr + __builtin_offsetof(struct hifn_dma, test_dst)) & 0xff000000) >> 24) : __swap32md(sc->sc_dmamap->dm_segs[0].ds_addr + __builtin_offsetof(struct hifn_dma, test_dst)));
 dma->test_dst = 0;
 dma->cmdr[cmdi].l = (__uint32_t)(__builtin_constant_p(8 | masks) ? (__uint32_t)(((__uint32_t)(8 | masks) & 0xff) << 24 | ((__uint32_t)(8 | masks) & 0xff00) << 8 | ((__uint32_t)(8 | masks) & 0xff0000) >> 8 | ((__uint32_t)(8 | masks) & 0xff000000) >> 24) : __swap32md(8 | masks));
 dma->srcr[srci].l = (__uint32_t)(__builtin_constant_p(8 | masks) ? (__uint32_t)(((__uint32_t)(8 | masks) & 0xff) << 24 | ((__uint32_t)(8 | masks) & 0xff00) << 8 | ((__uint32_t)(8 | masks) & 0xff0000) >> 8 | ((__uint32_t)(8 | masks) & 0xff000000) >> 24) : __swap32md(8 | masks));
 dma->dstr[dsti].l = (__uint32_t)(__builtin_constant_p(8 | masks) ? (__uint32_t)(((__uint32_t)(8 | masks) & 0xff) << 24 | ((__uint32_t)(8 | masks) & 0xff00) << 8 | ((__uint32_t)(8 | masks) & 0xff0000) >> 8 | ((__uint32_t)(8 | masks) & 0xff000000) >> 24) : __swap32md(8 | masks));
 dma->resr[resi].l = (__uint32_t)(__builtin_constant_p((8 + 4 + 4 + 20 + 4) | masks) ? (__uint32_t)(((__uint32_t)((8 + 4 + 4 + 20 + 4) | masks) & 0xff) << 24 | ((__uint32_t)((8 + 4 + 4 + 20 + 4) | masks) & 0xff00) << 8 | ((__uint32_t)((8 + 4 + 4 + 20 + 4) | masks) & 0xff0000) >> 8 | ((__uint32_t)((8 + 4 + 4 + 20 + 4) | masks) & 0xff000000) >> 24) : __swap32md((8 + 4 + 4 + 20 + 4) | masks));
 bus_dmamap_sync(sc->sc_dmat, sc->sc_dmamap,
     0, sc->sc_dmamap->dm_mapsize,
     0x01 | 0x04);
 for (r = 10000; r >= 0; r--) {
  delay(10);
  bus_dmamap_sync(sc->sc_dmat, sc->sc_dmamap,
      0, sc->sc_dmamap->dm_mapsize,
      0x02 | 0x08);
  if ((dma->resr[resi].l & (__uint32_t)(__builtin_constant_p(0x80000000) ? (__uint32_t)(((__uint32_t)(0x80000000) & 0xff) << 24 | ((__uint32_t)(0x80000000) & 0xff00) << 8 | ((__uint32_t)(0x80000000) & 0xff0000) >> 8 | ((__uint32_t)(0x80000000) & 0xff000000) >> 24) : __swap32md(0x80000000))) == 0)
   break;
  bus_dmamap_sync(sc->sc_dmat, sc->sc_dmamap,
      0, sc->sc_dmamap->dm_mapsize,
      0x01 | 0x04);
 }
 if (r == 0) {
  printf("%s: readramaddr -- "
      "result[%d](addr %d) still valid\n",
      sc->sc_dv.dv_xname, resi, addr);
  r = -1;
 } else {
  r = 0;
  __builtin_bcopy((&dma->test_dst), (data), (sizeof(dma->test_dst)));
 }
 hifn_write_4((sc), 1, (0x40), (0x00000040 | 0x00004000 | 0x40000000 | 0x00400000));
 return (r);
}
void
hifn_init_dma(struct hifn_softc *sc)
{
 struct hifn_dma *dma = sc->sc_dma;
 int i;
 hifn_set_retry(sc);
 for (i = 0; i < 24; i++)
  dma->cmdr[i].p = (__uint32_t)(__builtin_constant_p(sc->sc_dmamap->dm_segs[0].ds_addr + __builtin_offsetof(struct hifn_dma, command_bufs[i][0])) ? (__uint32_t)(((__uint32_t)(sc->sc_dmamap->dm_segs[0].ds_addr + __builtin_offsetof(struct hifn_dma, command_bufs[i][0])) & 0xff) << 24 | ((__uint32_t)(sc->sc_dmamap->dm_segs[0].ds_addr + __builtin_offsetof(struct hifn_dma, command_bufs[i][0])) & 0xff00) << 8 | ((__uint32_t)(sc->sc_dmamap->dm_segs[0].ds_addr + __builtin_offsetof(struct hifn_dma, command_bufs[i][0])) & 0xff0000) >> 8 | ((__uint32_t)(sc->sc_dmamap->dm_segs[0].ds_addr + __builtin_offsetof(struct hifn_dma, command_bufs[i][0])) & 0xff000000) >> 24) : __swap32md(sc->sc_dmamap->dm_segs[0].ds_addr + __builtin_offsetof(struct hifn_dma, command_bufs[i][0])));
 for (i = 0; i < 24; i++)
  dma->resr[i].p = (__uint32_t)(__builtin_constant_p(sc->sc_dmamap->dm_segs[0].ds_addr + __builtin_offsetof(struct hifn_dma, result_bufs[i][0])) ? (__uint32_t)(((__uint32_t)(sc->sc_dmamap->dm_segs[0].ds_addr + __builtin_offsetof(struct hifn_dma, result_bufs[i][0])) & 0xff) << 24 | ((__uint32_t)(sc->sc_dmamap->dm_segs[0].ds_addr + __builtin_offsetof(struct hifn_dma, result_bufs[i][0])) & 0xff00) << 8 | ((__uint32_t)(sc->sc_dmamap->dm_segs[0].ds_addr + __builtin_offsetof(struct hifn_dma, result_bufs[i][0])) & 0xff0000) >> 8 | ((__uint32_t)(sc->sc_dmamap->dm_segs[0].ds_addr + __builtin_offsetof(struct hifn_dma, result_bufs[i][0])) & 0xff000000) >> 24) : __swap32md(sc->sc_dmamap->dm_segs[0].ds_addr + __builtin_offsetof(struct hifn_dma, result_bufs[i][0])));
 dma->cmdr[24].p =
     (__uint32_t)(__builtin_constant_p(sc->sc_dmamap->dm_segs[0].ds_addr + __builtin_offsetof(struct hifn_dma, cmdr[0])) ? (__uint32_t)(((__uint32_t)(sc->sc_dmamap->dm_segs[0].ds_addr + __builtin_offsetof(struct hifn_dma, cmdr[0])) & 0xff) << 24 | ((__uint32_t)(sc->sc_dmamap->dm_segs[0].ds_addr + __builtin_offsetof(struct hifn_dma, cmdr[0])) & 0xff00) << 8 | ((__uint32_t)(sc->sc_dmamap->dm_segs[0].ds_addr + __builtin_offsetof(struct hifn_dma, cmdr[0])) & 0xff0000) >> 8 | ((__uint32_t)(sc->sc_dmamap->dm_segs[0].ds_addr + __builtin_offsetof(struct hifn_dma, cmdr[0])) & 0xff000000) >> 24) : __swap32md(sc->sc_dmamap->dm_segs[0].ds_addr + __builtin_offsetof(struct hifn_dma, cmdr[0])));
 dma->srcr[80].p =
     (__uint32_t)(__builtin_constant_p(sc->sc_dmamap->dm_segs[0].ds_addr + __builtin_offsetof(struct hifn_dma, srcr[0])) ? (__uint32_t)(((__uint32_t)(sc->sc_dmamap->dm_segs[0].ds_addr + __builtin_offsetof(struct hifn_dma, srcr[0])) & 0xff) << 24 | ((__uint32_t)(sc->sc_dmamap->dm_segs[0].ds_addr + __builtin_offsetof(struct hifn_dma, srcr[0])) & 0xff00) << 8 | ((__uint32_t)(sc->sc_dmamap->dm_segs[0].ds_addr + __builtin_offsetof(struct hifn_dma, srcr[0])) & 0xff0000) >> 8 | ((__uint32_t)(sc->sc_dmamap->dm_segs[0].ds_addr + __builtin_offsetof(struct hifn_dma, srcr[0])) & 0xff000000) >> 24) : __swap32md(sc->sc_dmamap->dm_segs[0].ds_addr + __builtin_offsetof(struct hifn_dma, srcr[0])));
 dma->dstr[80].p =
     (__uint32_t)(__builtin_constant_p(sc->sc_dmamap->dm_segs[0].ds_addr + __builtin_offsetof(struct hifn_dma, dstr[0])) ? (__uint32_t)(((__uint32_t)(sc->sc_dmamap->dm_segs[0].ds_addr + __builtin_offsetof(struct hifn_dma, dstr[0])) & 0xff) << 24 | ((__uint32_t)(sc->sc_dmamap->dm_segs[0].ds_addr + __builtin_offsetof(struct hifn_dma, dstr[0])) & 0xff00) << 8 | ((__uint32_t)(sc->sc_dmamap->dm_segs[0].ds_addr + __builtin_offsetof(struct hifn_dma, dstr[0])) & 0xff0000) >> 8 | ((__uint32_t)(sc->sc_dmamap->dm_segs[0].ds_addr + __builtin_offsetof(struct hifn_dma, dstr[0])) & 0xff000000) >> 24) : __swap32md(sc->sc_dmamap->dm_segs[0].ds_addr + __builtin_offsetof(struct hifn_dma, dstr[0])));
 dma->resr[24].p =
     (__uint32_t)(__builtin_constant_p(sc->sc_dmamap->dm_segs[0].ds_addr + __builtin_offsetof(struct hifn_dma, resr[0])) ? (__uint32_t)(((__uint32_t)(sc->sc_dmamap->dm_segs[0].ds_addr + __builtin_offsetof(struct hifn_dma, resr[0])) & 0xff) << 24 | ((__uint32_t)(sc->sc_dmamap->dm_segs[0].ds_addr + __builtin_offsetof(struct hifn_dma, resr[0])) & 0xff00) << 8 | ((__uint32_t)(sc->sc_dmamap->dm_segs[0].ds_addr + __builtin_offsetof(struct hifn_dma, resr[0])) & 0xff0000) >> 8 | ((__uint32_t)(sc->sc_dmamap->dm_segs[0].ds_addr + __builtin_offsetof(struct hifn_dma, resr[0])) & 0xff000000) >> 24) : __swap32md(sc->sc_dmamap->dm_segs[0].ds_addr + __builtin_offsetof(struct hifn_dma, resr[0])));
 dma->cmdu = dma->srcu = dma->dstu = dma->resu = 0;
 dma->cmdi = dma->srci = dma->dsti = dma->resi = 0;
 dma->cmdk = dma->srck = dma->dstk = dma->resk = 0;
}
u_int
hifn_write_command(struct hifn_command *cmd, u_int8_t *buf)
{
 u_int8_t *buf_pos;
 struct hifn_base_command *base_cmd;
 struct hifn_mac_command *mac_cmd;
 struct hifn_crypt_command *cry_cmd;
 struct hifn_comp_command *comp_cmd;
 int using_mac, using_crypt, using_comp, len, ivlen;
 u_int32_t dlen, slen;
 buf_pos = buf;
 using_mac = cmd->base_masks & 0x0400;
 using_crypt = cmd->base_masks & 0x0800;
 using_comp = cmd->base_masks & 0x0100;
 base_cmd = (struct hifn_base_command *)buf_pos;
 base_cmd->masks = (__uint16_t)(__builtin_constant_p(cmd->base_masks) ? (__uint16_t)(((__uint16_t)(cmd->base_masks) & 0xffU) << 8 | ((__uint16_t)(cmd->base_masks) & 0xff00U) >> 8) : __swap16md(cmd->base_masks));
 slen = cmd->src_map->dm_mapsize;
 if (cmd->sloplen)
  dlen = cmd->dst_map->dm_mapsize - cmd->sloplen +
      sizeof(u_int32_t);
 else
  dlen = cmd->dst_map->dm_mapsize;
 base_cmd->total_source_count = (__uint16_t)(__builtin_constant_p(slen & 0x0ffff) ? (__uint16_t)(((__uint16_t)(slen & 0x0ffff) & 0xffU) << 8 | ((__uint16_t)(slen & 0x0ffff) & 0xff00U) >> 8) : __swap16md(slen & 0x0ffff));
 base_cmd->total_dest_count = (__uint16_t)(__builtin_constant_p(dlen & 0x0ffff) ? (__uint16_t)(((__uint16_t)(dlen & 0x0ffff) & 0xffU) << 8 | ((__uint16_t)(dlen & 0x0ffff) & 0xff00U) >> 8) : __swap16md(dlen & 0x0ffff));
 dlen >>= 16;
 slen >>= 16;
 base_cmd->session_num = (__uint16_t)(__builtin_constant_p(((slen << 14) & 0xc000) | ((dlen << 12) & 0x3000)) ? (__uint16_t)(((__uint16_t)(((slen << 14) & 0xc000) | ((dlen << 12) & 0x3000)) & 0xffU) << 8 | ((__uint16_t)(((slen << 14) & 0xc000) | ((dlen << 12) & 0x3000)) & 0xff00U) >> 8) : __swap16md(((slen << 14) & 0xc000) | ((dlen << 12) & 0x3000)));
 buf_pos += sizeof(struct hifn_base_command);
 if (using_comp) {
  comp_cmd = (struct hifn_comp_command *)buf_pos;
  dlen = cmd->compcrd->crd_len;
  comp_cmd->source_count = (__uint16_t)(__builtin_constant_p(dlen & 0xffff) ? (__uint16_t)(((__uint16_t)(dlen & 0xffff) & 0xffU) << 8 | ((__uint16_t)(dlen & 0xffff) & 0xff00U) >> 8) : __swap16md(dlen & 0xffff));
  dlen >>= 16;
  comp_cmd->masks = (__uint16_t)(__builtin_constant_p(cmd->comp_masks | ((dlen << 14) & 0xc000)) ? (__uint16_t)(((__uint16_t)(cmd->comp_masks | ((dlen << 14) & 0xc000)) & 0xffU) << 8 | ((__uint16_t)(cmd->comp_masks | ((dlen << 14) & 0xc000)) & 0xff00U) >> 8) : __swap16md(cmd->comp_masks | ((dlen << 14) & 0xc000)));
  comp_cmd->header_skip = (__uint16_t)(__builtin_constant_p(cmd->compcrd->crd_skip) ? (__uint16_t)(((__uint16_t)(cmd->compcrd->crd_skip) & 0xffU) << 8 | ((__uint16_t)(cmd->compcrd->crd_skip) & 0xff00U) >> 8) : __swap16md(cmd->compcrd->crd_skip));
  comp_cmd->reserved = 0;
  buf_pos += sizeof(struct hifn_comp_command);
 }
 if (using_mac) {
  mac_cmd = (struct hifn_mac_command *)buf_pos;
  dlen = cmd->maccrd->crd_len;
  mac_cmd->source_count = (__uint16_t)(__builtin_constant_p(dlen & 0xffff) ? (__uint16_t)(((__uint16_t)(dlen & 0xffff) & 0xffU) << 8 | ((__uint16_t)(dlen & 0xffff) & 0xff00U) >> 8) : __swap16md(dlen & 0xffff));
  dlen >>= 16;
  mac_cmd->masks = (__uint16_t)(__builtin_constant_p(cmd->mac_masks | ((dlen << 14) & 0xc000)) ? (__uint16_t)(((__uint16_t)(cmd->mac_masks | ((dlen << 14) & 0xc000)) & 0xffU) << 8 | ((__uint16_t)(cmd->mac_masks | ((dlen << 14) & 0xc000)) & 0xff00U) >> 8) : __swap16md(cmd->mac_masks | ((dlen << 14) & 0xc000)));
  mac_cmd->header_skip = (__uint16_t)(__builtin_constant_p(cmd->maccrd->crd_skip) ? (__uint16_t)(((__uint16_t)(cmd->maccrd->crd_skip) & 0xffU) << 8 | ((__uint16_t)(cmd->maccrd->crd_skip) & 0xff00U) >> 8) : __swap16md(cmd->maccrd->crd_skip));
  mac_cmd->reserved = 0;
  buf_pos += sizeof(struct hifn_mac_command);
 }
 if (using_crypt) {
  cry_cmd = (struct hifn_crypt_command *)buf_pos;
  dlen = cmd->enccrd->crd_len;
  cry_cmd->source_count = (__uint16_t)(__builtin_constant_p(dlen & 0xffff) ? (__uint16_t)(((__uint16_t)(dlen & 0xffff) & 0xffU) << 8 | ((__uint16_t)(dlen & 0xffff) & 0xff00U) >> 8) : __swap16md(dlen & 0xffff));
  dlen >>= 16;
  cry_cmd->masks = (__uint16_t)(__builtin_constant_p(cmd->cry_masks | ((dlen << 14) & 0xc000)) ? (__uint16_t)(((__uint16_t)(cmd->cry_masks | ((dlen << 14) & 0xc000)) & 0xffU) << 8 | ((__uint16_t)(cmd->cry_masks | ((dlen << 14) & 0xc000)) & 0xff00U) >> 8) : __swap16md(cmd->cry_masks | ((dlen << 14) & 0xc000)));
  cry_cmd->header_skip = (__uint16_t)(__builtin_constant_p(cmd->enccrd->crd_skip) ? (__uint16_t)(((__uint16_t)(cmd->enccrd->crd_skip) & 0xffU) << 8 | ((__uint16_t)(cmd->enccrd->crd_skip) & 0xff00U) >> 8) : __swap16md(cmd->enccrd->crd_skip));
  cry_cmd->reserved = 0;
  buf_pos += sizeof(struct hifn_crypt_command);
 }
 if (using_mac && cmd->mac_masks & 0x0800) {
  __builtin_bcopy((cmd->mac), (buf_pos), (64));
  buf_pos += 64;
 }
 if (using_crypt && cmd->cry_masks & 0x0800) {
  switch (cmd->cry_masks & 0x0003) {
  case 0x0001:
   __builtin_bcopy((cmd->ck), (buf_pos), (24));
   buf_pos += 24;
   break;
  case 0x0000:
   __builtin_bcopy((cmd->ck), (buf_pos), (8));
   buf_pos += 8;
   break;
  case 0x0002:
   len = 256;
   do {
    int clen;
    clen = (((cmd->cklen)<(len))?(cmd->cklen):(len));
    __builtin_bcopy((cmd->ck), (buf_pos), (clen));
    len -= clen;
    buf_pos += clen;
   } while (len > 0);
   __builtin_bzero((buf_pos), (4));
   buf_pos += 4;
   break;
  case 0x0003:
   __builtin_bcopy((cmd->ck), (buf_pos), (cmd->cklen));
   buf_pos += cmd->cklen;
   break;
  }
 }
 if (using_crypt && cmd->cry_masks & 0x1000) {
  if ((cmd->cry_masks & 0x0003) ==
      0x0003)
   ivlen = 16;
  else
   ivlen = 8;
  __builtin_bcopy((cmd->iv), (buf_pos), (ivlen));
  buf_pos += ivlen;
 }
 if ((cmd->base_masks & (0x0400 | 0x0800 |
     0x0100)) == 0) {
  __builtin_bzero((buf_pos), (8));
  buf_pos += 8;
 }
 return (buf_pos - buf);
}
int
hifn_dmamap_aligned(bus_dmamap_t map)
{
 int i;
 for (i = 0; i < map->dm_nsegs; i++) {
  if (map->dm_segs[i].ds_addr & 3)
   return (0);
  if ((i != (map->dm_nsegs - 1)) &&
      (map->dm_segs[i].ds_len & 3))
   return (0);
 }
 return (1);
}
int
hifn_dmamap_load_dst(struct hifn_softc *sc, struct hifn_command *cmd)
{
 struct hifn_dma *dma = sc->sc_dma;
 bus_dmamap_t map = cmd->dst_map;
 u_int32_t p, l;
 int idx, used = 0, i;
 idx = dma->dsti;
 for (i = 0; i < map->dm_nsegs - 1; i++) {
  dma->dstr[idx].p = (__uint32_t)(__builtin_constant_p(map->dm_segs[i].ds_addr) ? (__uint32_t)(((__uint32_t)(map->dm_segs[i].ds_addr) & 0xff) << 24 | ((__uint32_t)(map->dm_segs[i].ds_addr) & 0xff00) << 8 | ((__uint32_t)(map->dm_segs[i].ds_addr) & 0xff0000) >> 8 | ((__uint32_t)(map->dm_segs[i].ds_addr) & 0xff000000) >> 24) : __swap32md(map->dm_segs[i].ds_addr));
  dma->dstr[idx].l = (__uint32_t)(__builtin_constant_p(0x80000000 | 0x02000000 | map->dm_segs[i].ds_len) ? (__uint32_t)(((__uint32_t)(0x80000000 | 0x02000000 | map->dm_segs[i].ds_len) & 0xff) << 24 | ((__uint32_t)(0x80000000 | 0x02000000 | map->dm_segs[i].ds_len) & 0xff00) << 8 | ((__uint32_t)(0x80000000 | 0x02000000 | map->dm_segs[i].ds_len) & 0xff0000) >> 8 | ((__uint32_t)(0x80000000 | 0x02000000 | map->dm_segs[i].ds_len) & 0xff000000) >> 24) : __swap32md(0x80000000 | 0x02000000 | map->dm_segs[i].ds_len));
  bus_dmamap_sync(((sc))->sc_dmat, ((sc))->sc_dmamap, __builtin_offsetof(struct hifn_dma, dstr[(idx)]), sizeof(struct hifn_desc), ((0x01 | 0x04)));
  used++;
  if (++idx == 80) {
   dma->dstr[idx].l = (__uint32_t)(__builtin_constant_p(0x80000000 | 0x40000000 | 0x02000000) ? (__uint32_t)(((__uint32_t)(0x80000000 | 0x40000000 | 0x02000000) & 0xff) << 24 | ((__uint32_t)(0x80000000 | 0x40000000 | 0x02000000) & 0xff00) << 8 | ((__uint32_t)(0x80000000 | 0x40000000 | 0x02000000) & 0xff0000) >> 8 | ((__uint32_t)(0x80000000 | 0x40000000 | 0x02000000) & 0xff000000) >> 24) : __swap32md(0x80000000 | 0x40000000 | 0x02000000));
   bus_dmamap_sync(((sc))->sc_dmat, ((sc))->sc_dmamap, __builtin_offsetof(struct hifn_dma, dstr[(idx)]), sizeof(struct hifn_desc), ((0x01 | 0x04)));
   idx = 0;
  }
 }
 if (cmd->sloplen == 0) {
  p = map->dm_segs[i].ds_addr;
  l = 0x80000000 | 0x02000000 | 0x20000000 |
      map->dm_segs[i].ds_len;
 } else {
  p = sc->sc_dmamap->dm_segs[0].ds_addr +
      __builtin_offsetof(struct hifn_dma, slop[cmd->slopidx]);
  l = 0x80000000 | 0x02000000 | 0x20000000 |
      sizeof(u_int32_t);
  if ((map->dm_segs[i].ds_len - cmd->sloplen) != 0) {
   dma->dstr[idx].p = (__uint32_t)(__builtin_constant_p(map->dm_segs[i].ds_addr) ? (__uint32_t)(((__uint32_t)(map->dm_segs[i].ds_addr) & 0xff) << 24 | ((__uint32_t)(map->dm_segs[i].ds_addr) & 0xff00) << 8 | ((__uint32_t)(map->dm_segs[i].ds_addr) & 0xff0000) >> 8 | ((__uint32_t)(map->dm_segs[i].ds_addr) & 0xff000000) >> 24) : __swap32md(map->dm_segs[i].ds_addr));
   dma->dstr[idx].l = (__uint32_t)(__builtin_constant_p(0x80000000 | 0x02000000 | (map->dm_segs[i].ds_len - cmd->sloplen)) ? (__uint32_t)(((__uint32_t)(0x80000000 | 0x02000000 | (map->dm_segs[i].ds_len - cmd->sloplen)) & 0xff) << 24 | ((__uint32_t)(0x80000000 | 0x02000000 | (map->dm_segs[i].ds_len - cmd->sloplen)) & 0xff00) << 8 | ((__uint32_t)(0x80000000 | 0x02000000 | (map->dm_segs[i].ds_len - cmd->sloplen)) & 0xff0000) >> 8 | ((__uint32_t)(0x80000000 | 0x02000000 | (map->dm_segs[i].ds_len - cmd->sloplen)) & 0xff000000) >> 24) : __swap32md(0x80000000 | 0x02000000 | (map->dm_segs[i].ds_len - cmd->sloplen)));
   bus_dmamap_sync(((sc))->sc_dmat, ((sc))->sc_dmamap, __builtin_offsetof(struct hifn_dma, dstr[(idx)]), sizeof(struct hifn_desc), ((0x01 | 0x04)));
   used++;
   if (++idx == 80) {
    dma->dstr[idx].l = (__uint32_t)(__builtin_constant_p(0x80000000 | 0x40000000 | 0x02000000) ? (__uint32_t)(((__uint32_t)(0x80000000 | 0x40000000 | 0x02000000) & 0xff) << 24 | ((__uint32_t)(0x80000000 | 0x40000000 | 0x02000000) & 0xff00) << 8 | ((__uint32_t)(0x80000000 | 0x40000000 | 0x02000000) & 0xff0000) >> 8 | ((__uint32_t)(0x80000000 | 0x40000000 | 0x02000000) & 0xff000000) >> 24) : __swap32md(0x80000000 | 0x40000000 | 0x02000000));
    bus_dmamap_sync(((sc))->sc_dmat, ((sc))->sc_dmamap, __builtin_offsetof(struct hifn_dma, dstr[(idx)]), sizeof(struct hifn_desc), ((0x01 | 0x04)));
    idx = 0;
   }
  }
 }
 dma->dstr[idx].p = (__uint32_t)(__builtin_constant_p(p) ? (__uint32_t)(((__uint32_t)(p) & 0xff) << 24 | ((__uint32_t)(p) & 0xff00) << 8 | ((__uint32_t)(p) & 0xff0000) >> 8 | ((__uint32_t)(p) & 0xff000000) >> 24) : __swap32md(p));
 dma->dstr[idx].l = (__uint32_t)(__builtin_constant_p(l) ? (__uint32_t)(((__uint32_t)(l) & 0xff) << 24 | ((__uint32_t)(l) & 0xff00) << 8 | ((__uint32_t)(l) & 0xff0000) >> 8 | ((__uint32_t)(l) & 0xff000000) >> 24) : __swap32md(l));
 bus_dmamap_sync(((sc))->sc_dmat, ((sc))->sc_dmamap, __builtin_offsetof(struct hifn_dma, dstr[(idx)]), sizeof(struct hifn_desc), ((0x01 | 0x04)));
 used++;
 if (++idx == 80) {
  dma->dstr[idx].l = (__uint32_t)(__builtin_constant_p(0x80000000 | 0x40000000 | 0x02000000) ? (__uint32_t)(((__uint32_t)(0x80000000 | 0x40000000 | 0x02000000) & 0xff) << 24 | ((__uint32_t)(0x80000000 | 0x40000000 | 0x02000000) & 0xff00) << 8 | ((__uint32_t)(0x80000000 | 0x40000000 | 0x02000000) & 0xff0000) >> 8 | ((__uint32_t)(0x80000000 | 0x40000000 | 0x02000000) & 0xff000000) >> 24) : __swap32md(0x80000000 | 0x40000000 | 0x02000000));
  bus_dmamap_sync(((sc))->sc_dmat, ((sc))->sc_dmamap, __builtin_offsetof(struct hifn_dma, dstr[(idx)]), sizeof(struct hifn_desc), ((0x01 | 0x04)));
  idx = 0;
 }
 dma->dsti = idx;
 dma->dstu += used;
 return (idx);
}
int
hifn_dmamap_load_src(struct hifn_softc *sc, struct hifn_command *cmd)
{
 struct hifn_dma *dma = sc->sc_dma;
 bus_dmamap_t map = cmd->src_map;
 int idx, i;
 u_int32_t last = 0;
 idx = dma->srci;
 for (i = 0; i < map->dm_nsegs; i++) {
  if (i == map->dm_nsegs - 1)
   last = 0x20000000;
  dma->srcr[idx].p = (__uint32_t)(__builtin_constant_p(map->dm_segs[i].ds_addr) ? (__uint32_t)(((__uint32_t)(map->dm_segs[i].ds_addr) & 0xff) << 24 | ((__uint32_t)(map->dm_segs[i].ds_addr) & 0xff00) << 8 | ((__uint32_t)(map->dm_segs[i].ds_addr) & 0xff0000) >> 8 | ((__uint32_t)(map->dm_segs[i].ds_addr) & 0xff000000) >> 24) : __swap32md(map->dm_segs[i].ds_addr));
  dma->srcr[idx].l = (__uint32_t)(__builtin_constant_p(map->dm_segs[i].ds_len | 0x80000000 | 0x02000000 | last) ? (__uint32_t)(((__uint32_t)(map->dm_segs[i].ds_len | 0x80000000 | 0x02000000 | last) & 0xff) << 24 | ((__uint32_t)(map->dm_segs[i].ds_len | 0x80000000 | 0x02000000 | last) & 0xff00) << 8 | ((__uint32_t)(map->dm_segs[i].ds_len | 0x80000000 | 0x02000000 | last) & 0xff0000) >> 8 | ((__uint32_t)(map->dm_segs[i].ds_len | 0x80000000 | 0x02000000 | last) & 0xff000000) >> 24) : __swap32md(map->dm_segs[i].ds_len | 0x80000000 | 0x02000000 | last));
  bus_dmamap_sync(((sc))->sc_dmat, ((sc))->sc_dmamap, __builtin_offsetof(struct hifn_dma, srcr[(idx)]), sizeof(struct hifn_desc), ((0x04 | 0x01)));
  if (++idx == 80) {
   dma->srcr[idx].l = (__uint32_t)(__builtin_constant_p(0x80000000 | 0x40000000 | 0x02000000) ? (__uint32_t)(((__uint32_t)(0x80000000 | 0x40000000 | 0x02000000) & 0xff) << 24 | ((__uint32_t)(0x80000000 | 0x40000000 | 0x02000000) & 0xff00) << 8 | ((__uint32_t)(0x80000000 | 0x40000000 | 0x02000000) & 0xff0000) >> 8 | ((__uint32_t)(0x80000000 | 0x40000000 | 0x02000000) & 0xff000000) >> 24) : __swap32md(0x80000000 | 0x40000000 | 0x02000000));
   bus_dmamap_sync(((sc))->sc_dmat, ((sc))->sc_dmamap, __builtin_offsetof(struct hifn_dma, srcr[(80)]), sizeof(struct hifn_desc), ((0x04 | 0x01)));
   idx = 0;
  }
 }
 dma->srci = idx;
 dma->srcu += map->dm_nsegs;
 return (idx);
}
int
hifn_crypto(struct hifn_softc *sc, struct hifn_command *cmd,
    struct cryptop *crp)
{
 struct hifn_dma *dma = sc->sc_dma;
 u_int32_t cmdlen;
 int cmdi, resi, s, err = 0;
 if (bus_dmamap_create(sc->sc_dmat, 0x3ffff, 64,
     0xffff, 0, 0x0001, &cmd->src_map))
  return (12);
 if (crp->crp_flags & 0x0001) {
  if (bus_dmamap_load_mbuf(sc->sc_dmat, cmd->src_map,
      cmd->srcu.src_m, 0x0001)) {
   err = 12;
   goto err_srcmap1;
  }
 } else if (crp->crp_flags & 0x0002) {
  if (bus_dmamap_load_uio(sc->sc_dmat, cmd->src_map,
      cmd->srcu.src_io, 0x0001)) {
   err = 12;
   goto err_srcmap1;
  }
 } else {
  err = 22;
  goto err_srcmap1;
 }
 if (hifn_dmamap_aligned(cmd->src_map)) {
  cmd->sloplen = cmd->src_map->dm_mapsize & 3;
  if (crp->crp_flags & 0x0002)
   cmd->dstu.dst_io = cmd->srcu.src_io;
  else if (crp->crp_flags & 0x0001)
   cmd->dstu.dst_m = cmd->srcu.src_m;
  cmd->dst_map = cmd->src_map;
 } else {
  if (crp->crp_flags & 0x0002) {
   err = 22;
   goto err_srcmap;
  } else if (crp->crp_flags & 0x0001) {
   int totlen, len;
   struct mbuf *m, *m0, *mlast;
   totlen = cmd->src_map->dm_mapsize;
   if (cmd->srcu.src_m->m_hdr.mh_flags & 0x0002) {
    len = ((256 - sizeof(struct m_hdr)) - sizeof(struct pkthdr));
    m0 = m_gethdr((0x0002), (1));
   } else {
    len = (256 - sizeof(struct m_hdr));
    m0 = m_get((0x0002), (1));
   }
   if (m0 == ((void *)0)) {
    err = 12;
    goto err_srcmap;
   }
   if (len == ((256 - sizeof(struct m_hdr)) - sizeof(struct pkthdr))) {
    err = m_dup_pkthdr(m0, cmd->srcu.src_m,
        0x0002);
    if (err) {
     m_free(m0);
     goto err_srcmap;
    }
   }
   if (totlen >= (((256 - sizeof(struct m_hdr)) - sizeof(struct pkthdr)) + (256 - sizeof(struct m_hdr)) + 1)) {
    (void) m_clget((m0), (0x0002), (1 << 11));
    if (m0->m_hdr.mh_flags & 0x0001)
     len = (1 << 11);
   }
   totlen -= len;
   m0->M_dat.MH.MH_pkthdr.len = m0->m_hdr.mh_len = len;
   mlast = m0;
   while (totlen > 0) {
    m = m_get((0x0002), (1));
    if (m == ((void *)0)) {
     err = 12;
     m_freem(m0);
     goto err_srcmap;
    }
    len = (256 - sizeof(struct m_hdr));
    if (totlen >= (((256 - sizeof(struct m_hdr)) - sizeof(struct pkthdr)) + (256 - sizeof(struct m_hdr)) + 1)) {
     (void) m_clget((m), (0x0002), (1 << 11));
     if (m->m_hdr.mh_flags & 0x0001)
      len = (1 << 11);
    }
    m->m_hdr.mh_len = len;
    if (m0->m_hdr.mh_flags & 0x0002)
     m0->M_dat.MH.MH_pkthdr.len += len;
    totlen -= len;
    mlast->m_hdr.mh_next = m;
    mlast = m;
   }
   cmd->dstu.dst_m = m0;
  }
 }
 if (cmd->dst_map == ((void *)0)) {
  if (bus_dmamap_create(sc->sc_dmat,
      0xffff * 64, 64,
      0xffff, 0, 0x0001, &cmd->dst_map)) {
   err = 12;
   goto err_srcmap;
  }
  if (crp->crp_flags & 0x0001) {
   if (bus_dmamap_load_mbuf(sc->sc_dmat, cmd->dst_map,
       cmd->dstu.dst_m, 0x0001)) {
    err = 12;
    goto err_dstmap1;
   }
  } else if (crp->crp_flags & 0x0002) {
   if (bus_dmamap_load_uio(sc->sc_dmat, cmd->dst_map,
       cmd->dstu.dst_io, 0x0001)) {
    err = 12;
    goto err_dstmap1;
   }
  }
 }
 if (cmd->src_map == cmd->dst_map)
  bus_dmamap_sync(sc->sc_dmat, cmd->src_map,
      0, cmd->src_map->dm_mapsize,
      0x04|0x01);
 else {
  bus_dmamap_sync(sc->sc_dmat, cmd->src_map,
      0, cmd->src_map->dm_mapsize, 0x04);
  bus_dmamap_sync(sc->sc_dmat, cmd->dst_map,
      0, cmd->dst_map->dm_mapsize, 0x01);
 }
 s = _splraise(6);
 if ((dma->cmdu + 1) > 24 ||
     (dma->resu + 1) > 24) {
  _splx(s);
  err = 12;
  goto err_dstmap;
 }
 if ((dma->srcu + cmd->src_map->dm_nsegs) > 80 ||
     (dma->dstu + cmd->dst_map->dm_nsegs + 1) > 80) {
  _splx(s);
  err = 12;
  goto err_dstmap;
 }
 if (dma->cmdi == 24) {
  dma->cmdi = 0;
  dma->cmdr[24].l = (__uint32_t)(__builtin_constant_p(0x80000000 | 0x40000000 | 0x02000000) ? (__uint32_t)(((__uint32_t)(0x80000000 | 0x40000000 | 0x02000000) & 0xff) << 24 | ((__uint32_t)(0x80000000 | 0x40000000 | 0x02000000) & 0xff00) << 8 | ((__uint32_t)(0x80000000 | 0x40000000 | 0x02000000) & 0xff0000) >> 8 | ((__uint32_t)(0x80000000 | 0x40000000 | 0x02000000) & 0xff000000) >> 24) : __swap32md(0x80000000 | 0x40000000 | 0x02000000));
  bus_dmamap_sync(((sc))->sc_dmat, ((sc))->sc_dmamap, __builtin_offsetof(struct hifn_dma, cmdr[(24)]), sizeof(struct hifn_desc), ((0x04 | 0x01)));
 }
 cmdi = dma->cmdi++;
 cmdlen = hifn_write_command(cmd, dma->command_bufs[cmdi]);
 bus_dmamap_sync((sc)->sc_dmat, (sc)->sc_dmamap, __builtin_offsetof(struct hifn_dma, command_bufs[(cmdi)][0]), (8 + 8 + 8 + 64 + 260), (0x04));
 dma->cmdr[cmdi].l = (__uint32_t)(__builtin_constant_p(cmdlen | 0x80000000 | 0x20000000 | 0x02000000) ? (__uint32_t)(((__uint32_t)(cmdlen | 0x80000000 | 0x20000000 | 0x02000000) & 0xff) << 24 | ((__uint32_t)(cmdlen | 0x80000000 | 0x20000000 | 0x02000000) & 0xff00) << 8 | ((__uint32_t)(cmdlen | 0x80000000 | 0x20000000 | 0x02000000) & 0xff0000) >> 8 | ((__uint32_t)(cmdlen | 0x80000000 | 0x20000000 | 0x02000000) & 0xff000000) >> 24) : __swap32md(cmdlen | 0x80000000 | 0x20000000 | 0x02000000));
 bus_dmamap_sync(((sc))->sc_dmat, ((sc))->sc_dmamap, __builtin_offsetof(struct hifn_dma, cmdr[(cmdi)]), sizeof(struct hifn_desc), ((0x04 | 0x01)));
 dma->cmdu++;
 if (sc->sc_c_busy == 0) {
  hifn_write_4((sc), 1, (0x40), (0x00000080));
  sc->sc_c_busy = 1;
  if (sc->sc_flags & 0x10) hifn_write_4((sc), 1, (0x94), (hifn_read_4((sc), 1, (0x94)) | (0x00000100)));
 }
 sc->sc_dmaier |= 0x00000004;
 hifn_write_4((sc), 1, (0x44), (sc->sc_dmaier));
 hifnstats.hst_ipackets++;
 hifnstats.hst_ibytes += cmd->src_map->dm_mapsize;
 hifn_dmamap_load_src(sc, cmd);
 if (sc->sc_s_busy == 0) {
  hifn_write_4((sc), 1, (0x40), (0x00008000));
  sc->sc_s_busy = 1;
  if (sc->sc_flags & 0x10) hifn_write_4((sc), 1, (0x94), (hifn_read_4((sc), 1, (0x94)) | (0x00000200)));
 }
 if (dma->resi == 24) {
  dma->resi = 0;
  dma->resr[24].l = (__uint32_t)(__builtin_constant_p(0x80000000 | 0x40000000 | 0x02000000) ? (__uint32_t)(((__uint32_t)(0x80000000 | 0x40000000 | 0x02000000) & 0xff) << 24 | ((__uint32_t)(0x80000000 | 0x40000000 | 0x02000000) & 0xff00) << 8 | ((__uint32_t)(0x80000000 | 0x40000000 | 0x02000000) & 0xff0000) >> 8 | ((__uint32_t)(0x80000000 | 0x40000000 | 0x02000000) & 0xff000000) >> 24) : __swap32md(0x80000000 | 0x40000000 | 0x02000000));
  bus_dmamap_sync(((sc))->sc_dmat, ((sc))->sc_dmamap, __builtin_offsetof(struct hifn_dma, resr[(24)]), sizeof(struct hifn_desc), ((0x01 | 0x04)));
 }
 resi = dma->resi++;
 dma->hifn_commands[resi] = cmd;
 bus_dmamap_sync((sc)->sc_dmat, (sc)->sc_dmamap, __builtin_offsetof(struct hifn_dma, result_bufs[(resi)][0]), (8 + 4 + 4 + 20 + 4), (0x01));
 dma->resr[resi].l = (__uint32_t)(__builtin_constant_p((8 + 4 + 4 + 20 + 4) | 0x80000000 | 0x20000000) ? (__uint32_t)(((__uint32_t)((8 + 4 + 4 + 20 + 4) | 0x80000000 | 0x20000000) & 0xff) << 24 | ((__uint32_t)((8 + 4 + 4 + 20 + 4) | 0x80000000 | 0x20000000) & 0xff00) << 8 | ((__uint32_t)((8 + 4 + 4 + 20 + 4) | 0x80000000 | 0x20000000) & 0xff0000) >> 8 | ((__uint32_t)((8 + 4 + 4 + 20 + 4) | 0x80000000 | 0x20000000) & 0xff000000) >> 24) : __swap32md((8 + 4 + 4 + 20 + 4) | 0x80000000 | 0x20000000));
 bus_dmamap_sync(((sc))->sc_dmat, ((sc))->sc_dmamap, __builtin_offsetof(struct hifn_dma, resr[(resi)]), sizeof(struct hifn_desc), ((0x01 | 0x04)));
 dma->resu++;
 if (sc->sc_r_busy == 0) {
  hifn_write_4((sc), 1, (0x40), (0x00800000));
  sc->sc_r_busy = 1;
  if (sc->sc_flags & 0x10) hifn_write_4((sc), 1, (0x94), (hifn_read_4((sc), 1, (0x94)) | (0x00000400)));
 }
 if (cmd->sloplen)
  cmd->slopidx = resi;
 hifn_dmamap_load_dst(sc, cmd);
 if (sc->sc_d_busy == 0) {
  hifn_write_4((sc), 1, (0x40), (0x80000000));
  sc->sc_d_busy = 1;
 }
 sc->sc_active = 5;
 cmd->cmd_callback = hifn_callback;
 _splx(s);
 return (err);
err_dstmap:
 if (cmd->src_map != cmd->dst_map)
  bus_dmamap_unload(sc->sc_dmat, cmd->dst_map);
err_dstmap1:
 if (cmd->src_map != cmd->dst_map)
  bus_dmamap_destroy(sc->sc_dmat, cmd->dst_map);
err_srcmap:
 if (crp->crp_flags & 0x0001 &&
     cmd->srcu.src_m != cmd->dstu.dst_m)
  m_freem(cmd->dstu.dst_m);
 bus_dmamap_unload(sc->sc_dmat, cmd->src_map);
err_srcmap1:
 bus_dmamap_destroy(sc->sc_dmat, cmd->src_map);
 return (err);
}
void
hifn_tick(void *vsc)
{
 struct hifn_softc *sc = vsc;
 int s;
 s = _splraise(6);
 if (sc->sc_active == 0) {
  struct hifn_dma *dma = sc->sc_dma;
  u_int32_t r = 0;
  if (dma->cmdu == 0 && sc->sc_c_busy) {
   sc->sc_c_busy = 0;
   r |= 0x00000040;
   if (sc->sc_flags & 0x10) hifn_write_4((sc), 1, (0x94), (hifn_read_4((sc), 1, (0x94)) & ~(0x00000100)));
  }
  if (dma->srcu == 0 && sc->sc_s_busy) {
   sc->sc_s_busy = 0;
   r |= 0x00004000;
   if (sc->sc_flags & 0x10) hifn_write_4((sc), 1, (0x94), (hifn_read_4((sc), 1, (0x94)) & ~(0x00000200)));
  }
  if (dma->dstu == 0 && sc->sc_d_busy) {
   sc->sc_d_busy = 0;
   r |= 0x40000000;
  }
  if (dma->resu == 0 && sc->sc_r_busy) {
   sc->sc_r_busy = 0;
   r |= 0x00400000;
   if (sc->sc_flags & 0x10) hifn_write_4((sc), 1, (0x94), (hifn_read_4((sc), 1, (0x94)) & ~(0x00000400)));
  }
  if (r)
   hifn_write_4((sc), 1, (0x40), (r));
 }
 else
  sc->sc_active--;
 _splx(s);
 timeout_add_sec(&sc->sc_tickto, 1);
}
int
hifn_intr(void *arg)
{
 struct hifn_softc *sc = arg;
 struct hifn_dma *dma = sc->sc_dma;
 u_int32_t dmacsr, restart;
 int i, u;
 dmacsr = hifn_read_4((sc), 1, (0x40));
 if ((dmacsr & sc->sc_dmaier) == 0)
  return (0);
 hifn_write_4((sc), 1, (0x40), (dmacsr & sc->sc_dmaier));
 if (dmacsr & 0x00000001)
  hifn_write_4((sc), 0, (0x08), (hifn_read_4((sc), 0, (0x08))));
 if ((sc->sc_flags & 0x02) &&
     (dmacsr & 0x00000002))
  hifn_write_4((sc), 1, (0x30c), (hifn_read_4((sc), 1, (0x30c)) | 0x00000001));
 restart = dmacsr & (0x00020000 | 0x02000000);
 if (restart)
  printf("%s: overrun %x\n", sc->sc_dv.dv_xname, dmacsr);
 if (sc->sc_flags & 0x04) {
  if (dmacsr & 0x00000100)
   printf("%s: illegal read\n", sc->sc_dv.dv_xname);
  if (dmacsr & 0x00000200)
   printf("%s: illegal write\n", sc->sc_dv.dv_xname);
 }
 restart = dmacsr & (0x00000020 | 0x00002000 |
     0x20000000 | 0x00200000);
 if (restart) {
  printf("%s: abort, resetting.\n", sc->sc_dv.dv_xname);
  hifnstats.hst_abort++;
  hifn_abort(sc);
  return (1);
 }
 if ((dmacsr & 0x00000004) && (dma->resu == 0)) {
  sc->sc_dmaier &= ~0x00000004;
  hifn_write_4((sc), 1, (0x44), (sc->sc_dmaier));
 }
 i = dma->resk;
 while (dma->resu != 0) {
  bus_dmamap_sync(((sc))->sc_dmat, ((sc))->sc_dmamap, __builtin_offsetof(struct hifn_dma, resr[(i)]), sizeof(struct hifn_desc), ((0x02 | 0x08)));
  if (dma->resr[i].l & (__uint32_t)(__builtin_constant_p(0x80000000) ? (__uint32_t)(((__uint32_t)(0x80000000) & 0xff) << 24 | ((__uint32_t)(0x80000000) & 0xff00) << 8 | ((__uint32_t)(0x80000000) & 0xff0000) >> 8 | ((__uint32_t)(0x80000000) & 0xff000000) >> 24) : __swap32md(0x80000000))) {
   bus_dmamap_sync(((sc))->sc_dmat, ((sc))->sc_dmamap, __builtin_offsetof(struct hifn_dma, resr[(i)]), sizeof(struct hifn_desc), ((0x01 | 0x04)));
   break;
  }
  if (i != 24) {
   struct hifn_command *cmd;
   bus_dmamap_sync((sc)->sc_dmat, (sc)->sc_dmamap, __builtin_offsetof(struct hifn_dma, result_bufs[(i)][0]), (8 + 4 + 4 + 20 + 4), (0x02));
   cmd = dma->hifn_commands[i];
   (*cmd->cmd_callback)(sc, cmd, dma->result_bufs[i]);
   hifnstats.hst_opackets++;
  }
  if (++i == (24 + 1))
   i = 0;
  else
   dma->resu--;
 }
 dma->resk = i;
 i = dma->srck; u = dma->srcu;
 while (u != 0) {
  bus_dmamap_sync(((sc))->sc_dmat, ((sc))->sc_dmamap, __builtin_offsetof(struct hifn_dma, srcr[(i)]), sizeof(struct hifn_desc), ((0x02 | 0x08)));
  if (dma->srcr[i].l & (__uint32_t)(__builtin_constant_p(0x80000000) ? (__uint32_t)(((__uint32_t)(0x80000000) & 0xff) << 24 | ((__uint32_t)(0x80000000) & 0xff00) << 8 | ((__uint32_t)(0x80000000) & 0xff0000) >> 8 | ((__uint32_t)(0x80000000) & 0xff000000) >> 24) : __swap32md(0x80000000))) {
   bus_dmamap_sync(((sc))->sc_dmat, ((sc))->sc_dmamap, __builtin_offsetof(struct hifn_dma, srcr[(i)]), sizeof(struct hifn_desc), ((0x01 | 0x04)));
   break;
  }
  if (++i == (80 + 1))
   i = 0;
  else
   u--;
 }
 dma->srck = i; dma->srcu = u;
 i = dma->cmdk; u = dma->cmdu;
 while (u != 0) {
  bus_dmamap_sync(((sc))->sc_dmat, ((sc))->sc_dmamap, __builtin_offsetof(struct hifn_dma, cmdr[(i)]), sizeof(struct hifn_desc), ((0x02 | 0x08)));
  if (dma->cmdr[i].l & (__uint32_t)(__builtin_constant_p(0x80000000) ? (__uint32_t)(((__uint32_t)(0x80000000) & 0xff) << 24 | ((__uint32_t)(0x80000000) & 0xff00) << 8 | ((__uint32_t)(0x80000000) & 0xff0000) >> 8 | ((__uint32_t)(0x80000000) & 0xff000000) >> 24) : __swap32md(0x80000000))) {
   bus_dmamap_sync(((sc))->sc_dmat, ((sc))->sc_dmamap, __builtin_offsetof(struct hifn_dma, cmdr[(i)]), sizeof(struct hifn_desc), ((0x01 | 0x04)));
   break;
  }
  if (i != 24) {
   u--;
   bus_dmamap_sync((sc)->sc_dmat, (sc)->sc_dmamap, __builtin_offsetof(struct hifn_dma, command_bufs[(i)][0]), (8 + 8 + 8 + 64 + 260), (0x08));
  }
  if (++i == (24 + 1))
   i = 0;
 }
 dma->cmdk = i; dma->cmdu = u;
 return (1);
}
int
hifn_newsession(u_int32_t *sidp, struct cryptoini *cri)
{
 struct cryptoini *c;
 struct hifn_softc *sc = ((void *)0);
 int i, mac = 0, cry = 0, comp = 0, sesn;
 struct hifn_session *ses = ((void *)0);
 if (sidp == ((void *)0) || cri == ((void *)0))
  return (22);
 for (i = 0; i < hifn_cd.cd_ndevs; i++) {
  sc = hifn_cd.cd_devs[i];
  if (sc == ((void *)0))
   break;
  if (sc->sc_cid == (*sidp))
   break;
 }
 if (sc == ((void *)0))
  return (22);
 if (sc->sc_sessions == ((void *)0)) {
  ses = sc->sc_sessions = (struct hifn_session *)malloc(
      sizeof(*ses), 2, 0x0002);
  if (ses == ((void *)0))
   return (12);
  sesn = 0;
  sc->sc_nsessions = 1;
 } else {
  for (sesn = 0; sesn < sc->sc_nsessions; sesn++) {
   if (!sc->sc_sessions[sesn].hs_used) {
    ses = &sc->sc_sessions[sesn];
    break;
   }
  }
  if (ses == ((void *)0)) {
   sesn = sc->sc_nsessions;
   ses = mallocarray((sesn + 1), sizeof(*ses),
       2, 0x0002);
   if (ses == ((void *)0))
    return (12);
   __builtin_bcopy((sc->sc_sessions), (ses), (sesn * sizeof(*ses)));
   explicit_bzero(sc->sc_sessions, sesn * sizeof(*ses));
   free(sc->sc_sessions, 2, 0);
   sc->sc_sessions = ses;
   ses = &sc->sc_sessions[sesn];
   sc->sc_nsessions++;
  }
 }
 __builtin_bzero((ses), (sizeof(*ses)));
 for (c = cri; c != ((void *)0); c = c->cri_next) {
  switch (c->cri_alg) {
  case 4:
  case 5:
   if (mac)
    return (22);
   mac = 1;
   break;
  case 1:
  case 7:
   if (cry)
    return (22);
   cry = 1;
   break;
  case 10:
   if (comp)
    return (22);
   comp = 1;
   break;
  default:
   return (22);
  }
 }
 if (mac == 0 && cry == 0 && comp == 0)
  return (22);
 if ((comp && mac) || (comp && cry))
  return (22);
 *sidp = (((sc->sc_dv.dv_unit) << 28) | ((sesn) & 0x7ff));
 ses->hs_used = 1;
 return (0);
}
int
hifn_freesession(u_int64_t tid)
{
 struct hifn_softc *sc;
 int card, session;
 u_int32_t sid = ((u_int32_t)tid) & 0xffffffff;
 card = (((sid) & 0xf0000000) >> 28);
 if (card >= hifn_cd.cd_ndevs || hifn_cd.cd_devs[card] == ((void *)0))
  return (22);
 sc = hifn_cd.cd_devs[card];
 session = ((sid) & 0x000007ff);
 if (session >= sc->sc_nsessions)
  return (22);
 __builtin_bzero((&sc->sc_sessions[session]), (sizeof(sc->sc_sessions[session])));
 return (0);
}
int
hifn_process(struct cryptop *crp)
{
 struct hifn_command *cmd = ((void *)0);
 int card, session, err = 0, ivlen;
 struct hifn_softc *sc;
 struct cryptodesc *crd1, *crd2 = ((void *)0), *maccrd, *enccrd;
 if (crp == ((void *)0) || crp->crp_callback == ((void *)0)) {
  hifnstats.hst_invalid++;
  return (22);
 }
 if (crp->crp_ilen == 0) {
  err = 22;
  goto errout;
 }
 card = (((crp->crp_sid) & 0xf0000000) >> 28);
 if (card >= hifn_cd.cd_ndevs || hifn_cd.cd_devs[card] == ((void *)0)) {
  err = 22;
  goto errout;
 }
 sc = hifn_cd.cd_devs[card];
 session = ((crp->crp_sid) & 0x000007ff);
 if (session >= sc->sc_nsessions) {
  err = 22;
  goto errout;
 }
 cmd = malloc(sizeof(*cmd), 2, 0x0002 | 0x0008);
 if (cmd == ((void *)0)) {
  err = 12;
  goto errout;
 }
 if (crp->crp_flags & 0x0001) {
  cmd->srcu.src_m = (struct mbuf *)crp->crp_buf;
  cmd->dstu.dst_m = (struct mbuf *)crp->crp_buf;
 } else if (crp->crp_flags & 0x0002) {
  cmd->srcu.src_io = (struct uio *)crp->crp_buf;
  cmd->dstu.dst_io = (struct uio *)crp->crp_buf;
 } else {
  err = 22;
  goto errout;
 }
 if (crp->crp_ndesc < 1) {
  err = 22;
  goto errout;
 }
 crd1 = &crp->crp_desc[0];
 if (crp->crp_ndesc >= 2)
  crd2 = &crp->crp_desc[1];
 if (crd2 == ((void *)0)) {
  if (crd1->CRD_INI.cri_alg == 4 ||
      crd1->CRD_INI.cri_alg == 5) {
   maccrd = crd1;
   enccrd = ((void *)0);
  } else if (crd1->CRD_INI.cri_alg == 1 ||
      crd1->CRD_INI.cri_alg == 7) {
   if ((crd1->crd_flags & 0x01) == 0)
    cmd->base_masks |= 0x2000;
   maccrd = ((void *)0);
   enccrd = crd1;
  } else if (crd1->CRD_INI.cri_alg == 10) {
   return (hifn_compression(sc, crp, cmd));
  } else {
   err = 22;
   goto errout;
  }
 } else {
  if ((crd1->CRD_INI.cri_alg == 4 ||
       crd1->CRD_INI.cri_alg == 5) &&
      (crd2->CRD_INI.cri_alg == 1 ||
       crd2->CRD_INI.cri_alg == 7) &&
      ((crd2->crd_flags & 0x01) == 0)) {
   cmd->base_masks = 0x2000;
   maccrd = crd1;
   enccrd = crd2;
  } else if ((crd1->CRD_INI.cri_alg == 1 ||
       crd1->CRD_INI.cri_alg == 7) &&
      (crd2->CRD_INI.cri_alg == 4 ||
       crd2->CRD_INI.cri_alg == 5) &&
      (crd1->crd_flags & 0x01)) {
   enccrd = crd1;
   maccrd = crd2;
  } else {
   err = 22;
   goto errout;
  }
 }
 if (enccrd) {
  cmd->enccrd = enccrd;
  cmd->base_masks |= 0x0800;
  switch (enccrd->CRD_INI.cri_alg) {
  case 1:
   cmd->cry_masks |= 0x0001 |
       0x0008 |
       0x1000;
   break;
  case 7:
   cmd->cry_masks |= 0x0003 |
       0x0008 |
       0x1000;
   break;
  default:
   err = 22;
   goto errout;
  }
  ivlen = ((enccrd->CRD_INI.cri_alg == 7) ?
      16 : 8);
  if (enccrd->crd_flags & 0x01) {
   if (enccrd->crd_flags & 0x04)
    __builtin_bcopy((enccrd->CRD_INI.u.iv), (cmd->iv), (ivlen));
   else
    arc4random_buf(cmd->iv, ivlen);
   if ((enccrd->crd_flags & 0x02) == 0) {
    if (crp->crp_flags & 0x0001)
     err = m_copyback(cmd->srcu.src_m,
         enccrd->crd_inject,
         ivlen, cmd->iv, 0x0002);
    else if (crp->crp_flags & 0x0002)
     cuio_copyback(cmd->srcu.src_io,
         enccrd->crd_inject,
         ivlen, cmd->iv);
    if (err)
     goto errout;
   }
  } else {
   if (enccrd->crd_flags & 0x04)
    __builtin_bcopy((enccrd->CRD_INI.u.iv), (cmd->iv), (ivlen));
   else if (crp->crp_flags & 0x0001)
    m_copydata(cmd->srcu.src_m,
        enccrd->crd_inject, ivlen, cmd->iv);
   else if (crp->crp_flags & 0x0002)
    cuio_copydata(cmd->srcu.src_io,
        enccrd->crd_inject, ivlen, cmd->iv);
  }
  cmd->ck = enccrd->CRD_INI.cri_key;
  cmd->cklen = enccrd->CRD_INI.cri_klen >> 3;
  cmd->cry_masks |= 0x0800;
  if ((cmd->cry_masks & 0x0003) ==
      0x0003) {
   switch (cmd->cklen) {
   case 16:
    cmd->cry_masks |= 0x0000;
    break;
   case 24:
    cmd->cry_masks |= 0x0200;
    break;
   case 32:
    cmd->cry_masks |= 0x0400;
    break;
   default:
    err = 22;
    goto errout;
   }
  }
 }
 if (maccrd) {
  cmd->maccrd = maccrd;
  cmd->base_masks |= 0x0400;
  switch (maccrd->CRD_INI.cri_alg) {
  case 4:
   cmd->mac_masks |= 0x0001 |
       0x0020 | 0x0000 |
       0x0200 | 0x0010;
   break;
  case 5:
   cmd->mac_masks |= 0x0000 |
       0x0020 | 0x0000 |
       0x0200 | 0x0010;
   break;
  }
  if (maccrd->CRD_INI.cri_alg == 5 ||
       maccrd->CRD_INI.cri_alg == 4) {
   cmd->mac_masks |= 0x0800;
   __builtin_bcopy((maccrd->CRD_INI.cri_key), (cmd->mac), (maccrd->CRD_INI.cri_klen >> 3));
   __builtin_bzero((cmd->mac + (maccrd->CRD_INI.cri_klen >> 3)), (64 - (maccrd->CRD_INI.cri_klen >> 3)));
  }
 }
 cmd->crp = crp;
 cmd->session_num = session;
 cmd->softc = sc;
 err = hifn_crypto(sc, cmd, crp);
 if (!err)
  return 0;
errout:
 if (cmd != ((void *)0)) {
  explicit_bzero(cmd, sizeof(*cmd));
  free(cmd, 2, sizeof *cmd);
 }
 if (err == 22)
  hifnstats.hst_invalid++;
 else
  hifnstats.hst_nomem++;
 crp->crp_etype = err;
 crypto_done(crp);
 return (0);
}
void
hifn_abort(struct hifn_softc *sc)
{
 struct hifn_dma *dma = sc->sc_dma;
 struct hifn_command *cmd;
 struct cryptop *crp;
 int i, u;
 i = dma->resk; u = dma->resu;
 while (u != 0) {
  cmd = dma->hifn_commands[i];
  crp = cmd->crp;
  if ((dma->resr[i].l & (__uint32_t)(__builtin_constant_p(0x80000000) ? (__uint32_t)(((__uint32_t)(0x80000000) & 0xff) << 24 | ((__uint32_t)(0x80000000) & 0xff00) << 8 | ((__uint32_t)(0x80000000) & 0xff0000) >> 8 | ((__uint32_t)(0x80000000) & 0xff000000) >> 24) : __swap32md(0x80000000))) == 0) {
   hifnstats.hst_opackets++;
   (*cmd->cmd_callback)(sc, cmd, dma->result_bufs[i]);
  } else {
   if (cmd->src_map == cmd->dst_map)
    bus_dmamap_sync(sc->sc_dmat, cmd->src_map,
        0, cmd->src_map->dm_mapsize,
        0x02|0x08);
   else {
    bus_dmamap_sync(sc->sc_dmat, cmd->src_map,
        0, cmd->src_map->dm_mapsize,
        0x08);
    bus_dmamap_sync(sc->sc_dmat, cmd->dst_map,
        0, cmd->dst_map->dm_mapsize,
        0x02);
   }
   if (cmd->srcu.src_m != cmd->dstu.dst_m) {
    m_freem(cmd->srcu.src_m);
    crp->crp_buf = (caddr_t)cmd->dstu.dst_m;
   }
   if (cmd->src_map != cmd->dst_map) {
    crp->crp_etype = 12;
    bus_dmamap_unload(sc->sc_dmat, cmd->dst_map);
    bus_dmamap_destroy(sc->sc_dmat, cmd->dst_map);
   } else
    crp->crp_etype = 12;
   bus_dmamap_unload(sc->sc_dmat, cmd->src_map);
   bus_dmamap_destroy(sc->sc_dmat, cmd->src_map);
   explicit_bzero(cmd, sizeof(*cmd));
   free(cmd, 2, sizeof *cmd);
   if (crp->crp_etype != 35)
    crypto_done(crp);
  }
  if (++i == 24)
   i = 0;
  u--;
 }
 dma->resk = i; dma->resu = u;
 hifn_reset_board(sc, 1);
 hifn_init_dma(sc);
 hifn_init_pci_registers(sc);
}
void
hifn_callback(struct hifn_softc *sc, struct hifn_command *cmd,
    u_int8_t *resbuf)
{
 struct hifn_dma *dma = sc->sc_dma;
 struct cryptop *crp = cmd->crp;
 struct cryptodesc *crd;
 struct mbuf *m;
 int totlen, i, u;
 if (cmd->src_map == cmd->dst_map)
  bus_dmamap_sync(sc->sc_dmat, cmd->src_map,
      0, cmd->src_map->dm_mapsize,
      0x08 | 0x02);
 else {
  bus_dmamap_sync(sc->sc_dmat, cmd->src_map,
      0, cmd->src_map->dm_mapsize, 0x08);
  bus_dmamap_sync(sc->sc_dmat, cmd->dst_map,
      0, cmd->dst_map->dm_mapsize, 0x02);
 }
 if (crp->crp_flags & 0x0001) {
  if (cmd->srcu.src_m != cmd->dstu.dst_m) {
   crp->crp_buf = (caddr_t)cmd->dstu.dst_m;
   totlen = cmd->src_map->dm_mapsize;
   for (m = cmd->dstu.dst_m; m != ((void *)0); m = m->m_hdr.mh_next) {
    if (totlen < m->m_hdr.mh_len) {
     m->m_hdr.mh_len = totlen;
     totlen = 0;
    } else
     totlen -= m->m_hdr.mh_len;
   }
   cmd->dstu.dst_m->M_dat.MH.MH_pkthdr.len =
       cmd->srcu.src_m->M_dat.MH.MH_pkthdr.len;
   m_freem(cmd->srcu.src_m);
  }
 }
 if (cmd->sloplen != 0) {
  if (crp->crp_flags & 0x0001)
   crp->crp_etype =
       m_copyback((struct mbuf *)crp->crp_buf,
       cmd->src_map->dm_mapsize - cmd->sloplen,
       cmd->sloplen, &dma->slop[cmd->slopidx],
       0x0002);
  else if (crp->crp_flags & 0x0002)
   cuio_copyback((struct uio *)crp->crp_buf,
       cmd->src_map->dm_mapsize - cmd->sloplen,
       cmd->sloplen, &dma->slop[cmd->slopidx]);
  if (crp->crp_etype)
   goto out;
 }
 i = dma->dstk; u = dma->dstu;
 while (u != 0) {
  bus_dmamap_sync(sc->sc_dmat, sc->sc_dmamap,
      __builtin_offsetof(struct hifn_dma, dstr[i]), sizeof(struct hifn_desc),
      0x02 | 0x08);
  if (dma->dstr[i].l & (__uint32_t)(__builtin_constant_p(0x80000000) ? (__uint32_t)(((__uint32_t)(0x80000000) & 0xff) << 24 | ((__uint32_t)(0x80000000) & 0xff00) << 8 | ((__uint32_t)(0x80000000) & 0xff0000) >> 8 | ((__uint32_t)(0x80000000) & 0xff000000) >> 24) : __swap32md(0x80000000))) {
   bus_dmamap_sync(sc->sc_dmat, sc->sc_dmamap,
       __builtin_offsetof(struct hifn_dma, dstr[i]),
       sizeof(struct hifn_desc),
       0x01 | 0x04);
   break;
  }
  if (++i == (80 + 1))
   i = 0;
  else
   u--;
 }
 dma->dstk = i; dma->dstu = u;
 hifnstats.hst_obytes += cmd->dst_map->dm_mapsize;
 if (cmd->base_masks & 0x0400) {
  u_int8_t *macbuf;
  macbuf = resbuf + sizeof(struct hifn_base_result);
  if (cmd->base_masks & 0x0100)
   macbuf += sizeof(struct hifn_comp_result);
  macbuf += sizeof(struct hifn_mac_result);
  for (i = 0; i < crp->crp_ndesc; i++) {
   int len;
   crd = &crp->crp_desc[i];
   if (crd->CRD_INI.cri_alg == 4 ||
       crd->CRD_INI.cri_alg == 5)
    len = 12;
   else
    continue;
   if (crp->crp_flags & 0x0001)
    crp->crp_etype =
        m_copyback((struct mbuf *)crp->crp_buf,
        crd->crd_inject, len, macbuf, 0x0002);
   else if ((crp->crp_flags & 0x0002) && crp->crp_mac)
    __builtin_bcopy(((caddr_t)macbuf), (crp->crp_mac), (len));
   break;
  }
 }
out:
 if (cmd->src_map != cmd->dst_map) {
  bus_dmamap_unload(sc->sc_dmat, cmd->dst_map);
  bus_dmamap_destroy(sc->sc_dmat, cmd->dst_map);
 }
 bus_dmamap_unload(sc->sc_dmat, cmd->src_map);
 bus_dmamap_destroy(sc->sc_dmat, cmd->src_map);
 explicit_bzero(cmd, sizeof(*cmd));
 free(cmd, 2, sizeof *cmd);
 crypto_done(crp);
}
int
hifn_compression(struct hifn_softc *sc, struct cryptop *crp,
    struct hifn_command *cmd)
{
 struct cryptodesc *crd = &crp->crp_desc[0];
 int s, err = 0;
 cmd->compcrd = crd;
 cmd->base_masks |= 0x0100;
 if ((crp->crp_flags & 0x0001) == 0) {
  err = 22;
  return (12);
 }
 if ((crd->crd_flags & 0x10) == 0)
  cmd->base_masks |= 0x2000;
 if (crd->CRD_INI.cri_alg == 10)
  cmd->comp_masks |= 0x0000 |
      0x0010;
 if (bus_dmamap_create(sc->sc_dmat, 0x3ffff, 64,
     0xffff, 0, 0x0001, &cmd->src_map)) {
  err = 12;
  goto fail;
 }
 if (bus_dmamap_create(sc->sc_dmat, 0x3ffff, 64,
     0xffff, 0, 0x0001, &cmd->dst_map)) {
  err = 12;
  goto fail;
 }
 if (crp->crp_flags & 0x0001) {
  int len;
  if (bus_dmamap_load_mbuf(sc->sc_dmat, cmd->src_map,
      cmd->srcu.src_m, 0x0001)) {
   err = 12;
   goto fail;
  }
  len = cmd->src_map->dm_mapsize / (1 << 11);
  if ((cmd->src_map->dm_mapsize % (1 << 11)) != 0)
   len++;
  len *= (1 << 11);
  if ((crd->crd_flags & 0x10) == 0)
   len *= 4;
  if (len > 0x3ffff)
   len = 0x3ffff;
  cmd->dstu.dst_m = hifn_mkmbuf_chain(len, cmd->srcu.src_m);
  if (cmd->dstu.dst_m == ((void *)0)) {
   err = 12;
   goto fail;
  }
  if (bus_dmamap_load_mbuf(sc->sc_dmat, cmd->dst_map,
      cmd->dstu.dst_m, 0x0001)) {
   err = 12;
   goto fail;
  }
 } else if (crp->crp_flags & 0x0002) {
  if (bus_dmamap_load_uio(sc->sc_dmat, cmd->src_map,
      cmd->srcu.src_io, 0x0001)) {
   err = 12;
   goto fail;
  }
  if (bus_dmamap_load_uio(sc->sc_dmat, cmd->dst_map,
      cmd->dstu.dst_io, 0x0001)) {
   err = 12;
   goto fail;
  }
 }
 if (cmd->src_map == cmd->dst_map)
  bus_dmamap_sync(sc->sc_dmat, cmd->src_map,
      0, cmd->src_map->dm_mapsize,
      0x04|0x01);
 else {
  bus_dmamap_sync(sc->sc_dmat, cmd->src_map,
      0, cmd->src_map->dm_mapsize, 0x04);
  bus_dmamap_sync(sc->sc_dmat, cmd->dst_map,
      0, cmd->dst_map->dm_mapsize, 0x01);
 }
 cmd->crp = crp;
 cmd->session_num = 0;
 cmd->softc = sc;
 s = _splraise(6);
 err = hifn_compress_enter(sc, cmd);
 _splx(s);
 if (err != 0)
  goto fail;
 return (0);
fail:
 if (cmd->dst_map != ((void *)0)) {
  if (cmd->dst_map->dm_nsegs > 0)
   bus_dmamap_unload(sc->sc_dmat, cmd->dst_map);
  bus_dmamap_destroy(sc->sc_dmat, cmd->dst_map);
 }
 if (cmd->src_map != ((void *)0)) {
  if (cmd->src_map->dm_nsegs > 0)
   bus_dmamap_unload(sc->sc_dmat, cmd->src_map);
  bus_dmamap_destroy(sc->sc_dmat, cmd->src_map);
 }
 explicit_bzero(cmd, sizeof(*cmd));
 free(cmd, 2, sizeof *cmd);
 if (err == 22)
  hifnstats.hst_invalid++;
 else
  hifnstats.hst_nomem++;
 crp->crp_etype = err;
 crypto_done(crp);
 return (0);
}
int
hifn_compress_enter(struct hifn_softc *sc, struct hifn_command *cmd)
{
 struct hifn_dma *dma = sc->sc_dma;
 int cmdi, resi;
 u_int32_t cmdlen;
 if ((dma->cmdu + 1) > 24 ||
     (dma->resu + 1) > 24)
  return (12);
 if ((dma->srcu + cmd->src_map->dm_nsegs) > 80 ||
     (dma->dstu + cmd->dst_map->dm_nsegs) > 80)
  return (12);
 if (dma->cmdi == 24) {
  dma->cmdi = 0;
  dma->cmdr[24].l = (__uint32_t)(__builtin_constant_p(0x80000000 | 0x40000000 | 0x02000000) ? (__uint32_t)(((__uint32_t)(0x80000000 | 0x40000000 | 0x02000000) & 0xff) << 24 | ((__uint32_t)(0x80000000 | 0x40000000 | 0x02000000) & 0xff00) << 8 | ((__uint32_t)(0x80000000 | 0x40000000 | 0x02000000) & 0xff0000) >> 8 | ((__uint32_t)(0x80000000 | 0x40000000 | 0x02000000) & 0xff000000) >> 24) : __swap32md(0x80000000 | 0x40000000 | 0x02000000));
  bus_dmamap_sync(((sc))->sc_dmat, ((sc))->sc_dmamap, __builtin_offsetof(struct hifn_dma, cmdr[(24)]), sizeof(struct hifn_desc), ((0x04 | 0x01)));
 }
 cmdi = dma->cmdi++;
 cmdlen = hifn_write_command(cmd, dma->command_bufs[cmdi]);
 bus_dmamap_sync((sc)->sc_dmat, (sc)->sc_dmamap, __builtin_offsetof(struct hifn_dma, command_bufs[(cmdi)][0]), (8 + 8 + 8 + 64 + 260), (0x04));
 dma->cmdr[cmdi].l = (__uint32_t)(__builtin_constant_p(cmdlen | 0x80000000 | 0x20000000 | 0x02000000) ? (__uint32_t)(((__uint32_t)(cmdlen | 0x80000000 | 0x20000000 | 0x02000000) & 0xff) << 24 | ((__uint32_t)(cmdlen | 0x80000000 | 0x20000000 | 0x02000000) & 0xff00) << 8 | ((__uint32_t)(cmdlen | 0x80000000 | 0x20000000 | 0x02000000) & 0xff0000) >> 8 | ((__uint32_t)(cmdlen | 0x80000000 | 0x20000000 | 0x02000000) & 0xff000000) >> 24) : __swap32md(cmdlen | 0x80000000 | 0x20000000 | 0x02000000));
 bus_dmamap_sync(((sc))->sc_dmat, ((sc))->sc_dmamap, __builtin_offsetof(struct hifn_dma, cmdr[(cmdi)]), sizeof(struct hifn_desc), ((0x04 | 0x01)));
 dma->cmdu++;
 if (sc->sc_c_busy == 0) {
  hifn_write_4((sc), 1, (0x40), (0x00000080));
  sc->sc_c_busy = 1;
  if (sc->sc_flags & 0x10) hifn_write_4((sc), 1, (0x94), (hifn_read_4((sc), 1, (0x94)) | (0x00000100)));
 }
 sc->sc_dmaier |= 0x00000004;
 hifn_write_4((sc), 1, (0x44), (sc->sc_dmaier));
 hifnstats.hst_ipackets++;
 hifnstats.hst_ibytes += cmd->src_map->dm_mapsize;
 hifn_dmamap_load_src(sc, cmd);
 if (sc->sc_s_busy == 0) {
  hifn_write_4((sc), 1, (0x40), (0x00008000));
  sc->sc_s_busy = 1;
  if (sc->sc_flags & 0x10) hifn_write_4((sc), 1, (0x94), (hifn_read_4((sc), 1, (0x94)) | (0x00000200)));
 }
 if (dma->resi == 24) {
  dma->resi = 0;
  dma->resr[24].l = (__uint32_t)(__builtin_constant_p(0x80000000 | 0x40000000 | 0x02000000) ? (__uint32_t)(((__uint32_t)(0x80000000 | 0x40000000 | 0x02000000) & 0xff) << 24 | ((__uint32_t)(0x80000000 | 0x40000000 | 0x02000000) & 0xff00) << 8 | ((__uint32_t)(0x80000000 | 0x40000000 | 0x02000000) & 0xff0000) >> 8 | ((__uint32_t)(0x80000000 | 0x40000000 | 0x02000000) & 0xff000000) >> 24) : __swap32md(0x80000000 | 0x40000000 | 0x02000000));
  bus_dmamap_sync(((sc))->sc_dmat, ((sc))->sc_dmamap, __builtin_offsetof(struct hifn_dma, resr[(24)]), sizeof(struct hifn_desc), ((0x01 | 0x04)));
 }
 resi = dma->resi++;
 dma->hifn_commands[resi] = cmd;
 bus_dmamap_sync((sc)->sc_dmat, (sc)->sc_dmamap, __builtin_offsetof(struct hifn_dma, result_bufs[(resi)][0]), (8 + 4 + 4 + 20 + 4), (0x01));
 dma->resr[resi].l = (__uint32_t)(__builtin_constant_p((8 + 4 + 4 + 20 + 4) | 0x80000000 | 0x20000000) ? (__uint32_t)(((__uint32_t)((8 + 4 + 4 + 20 + 4) | 0x80000000 | 0x20000000) & 0xff) << 24 | ((__uint32_t)((8 + 4 + 4 + 20 + 4) | 0x80000000 | 0x20000000) & 0xff00) << 8 | ((__uint32_t)((8 + 4 + 4 + 20 + 4) | 0x80000000 | 0x20000000) & 0xff0000) >> 8 | ((__uint32_t)((8 + 4 + 4 + 20 + 4) | 0x80000000 | 0x20000000) & 0xff000000) >> 24) : __swap32md((8 + 4 + 4 + 20 + 4) | 0x80000000 | 0x20000000));
 bus_dmamap_sync(((sc))->sc_dmat, ((sc))->sc_dmamap, __builtin_offsetof(struct hifn_dma, resr[(resi)]), sizeof(struct hifn_desc), ((0x01 | 0x04)));
 dma->resu++;
 if (sc->sc_r_busy == 0) {
  hifn_write_4((sc), 1, (0x40), (0x00800000));
  sc->sc_r_busy = 1;
  if (sc->sc_flags & 0x10) hifn_write_4((sc), 1, (0x94), (hifn_read_4((sc), 1, (0x94)) | (0x00000400)));
 }
 if (cmd->sloplen)
  cmd->slopidx = resi;
 hifn_dmamap_load_dst(sc, cmd);
 if (sc->sc_d_busy == 0) {
  hifn_write_4((sc), 1, (0x40), (0x80000000));
  sc->sc_d_busy = 1;
 }
 sc->sc_active = 5;
 cmd->cmd_callback = hifn_callback_comp;
 return (0);
}
void
hifn_callback_comp(struct hifn_softc *sc, struct hifn_command *cmd,
    u_int8_t *resbuf)
{
 struct hifn_base_result baseres;
 struct cryptop *crp = cmd->crp;
 struct hifn_dma *dma = sc->sc_dma;
 struct mbuf *m;
 int err = 0, i, u;
 u_int32_t olen;
 bus_size_t dstsize;
 bus_dmamap_sync(sc->sc_dmat, cmd->src_map,
     0, cmd->src_map->dm_mapsize, 0x08);
 bus_dmamap_sync(sc->sc_dmat, cmd->dst_map,
     0, cmd->dst_map->dm_mapsize, 0x02);
 dstsize = cmd->dst_map->dm_mapsize;
 bus_dmamap_unload(sc->sc_dmat, cmd->dst_map);
 __builtin_bcopy((resbuf), (&baseres), (sizeof(struct hifn_base_result)));
 i = dma->dstk; u = dma->dstu;
 while (u != 0) {
  bus_dmamap_sync(sc->sc_dmat, sc->sc_dmamap,
      __builtin_offsetof(struct hifn_dma, dstr[i]), sizeof(struct hifn_desc),
      0x02 | 0x08);
  if (dma->dstr[i].l & (__uint32_t)(__builtin_constant_p(0x80000000) ? (__uint32_t)(((__uint32_t)(0x80000000) & 0xff) << 24 | ((__uint32_t)(0x80000000) & 0xff00) << 8 | ((__uint32_t)(0x80000000) & 0xff0000) >> 8 | ((__uint32_t)(0x80000000) & 0xff000000) >> 24) : __swap32md(0x80000000))) {
   bus_dmamap_sync(sc->sc_dmat, sc->sc_dmamap,
       __builtin_offsetof(struct hifn_dma, dstr[i]),
       sizeof(struct hifn_desc),
       0x01 | 0x04);
   break;
  }
  if (++i == (80 + 1))
   i = 0;
  else
   u--;
 }
 dma->dstk = i; dma->dstu = u;
 if (baseres.flags & (__uint16_t)(__builtin_constant_p(0x0200) ? (__uint16_t)(((__uint16_t)(0x0200) & 0xffU) << 8 | ((__uint16_t)(0x0200) & 0xff00U) >> 8) : __swap16md(0x0200))) {
  bus_size_t xlen;
  xlen = dstsize;
  m_freem(cmd->dstu.dst_m);
  if (xlen == 0x3ffff) {
   err = 7;
   goto out;
  }
  xlen += (1 << 11);
  if (xlen > 0x3ffff)
   xlen = 0x3ffff;
  cmd->dstu.dst_m = hifn_mkmbuf_chain(xlen,
      cmd->srcu.src_m);
  if (cmd->dstu.dst_m == ((void *)0)) {
   err = 12;
   goto out;
  }
  if (bus_dmamap_load_mbuf(sc->sc_dmat, cmd->dst_map,
      cmd->dstu.dst_m, 0x0001)) {
   err = 12;
   goto out;
  }
  bus_dmamap_sync(sc->sc_dmat, cmd->src_map,
      0, cmd->src_map->dm_mapsize, 0x04);
  bus_dmamap_sync(sc->sc_dmat, cmd->dst_map,
      0, cmd->dst_map->dm_mapsize, 0x01);
  err = hifn_compress_enter(sc, cmd);
  if (err != 0)
   goto out;
  return;
 }
 olen = dstsize - ((__uint16_t)(__builtin_constant_p(baseres.dst_cnt) ? (__uint16_t)(((__uint16_t)(baseres.dst_cnt) & 0xffU) << 8 | ((__uint16_t)(baseres.dst_cnt) & 0xff00U) >> 8) : __swap16md(baseres.dst_cnt)) |
     ((((__uint16_t)(__builtin_constant_p(baseres.session) ? (__uint16_t)(((__uint16_t)(baseres.session) & 0xffU) << 8 | ((__uint16_t)(baseres.session) & 0xff00U) >> 8) : __swap16md(baseres.session)) & 0x3000) >>
     12) << 16));
 crp->crp_olen = olen - cmd->compcrd->crd_skip;
 bus_dmamap_unload(sc->sc_dmat, cmd->src_map);
 bus_dmamap_destroy(sc->sc_dmat, cmd->src_map);
 bus_dmamap_destroy(sc->sc_dmat, cmd->dst_map);
 m = cmd->dstu.dst_m;
 if (m->m_hdr.mh_flags & 0x0002)
  m->M_dat.MH.MH_pkthdr.len = olen;
 crp->crp_buf = (caddr_t)m;
 for (; m != ((void *)0); m = m->m_hdr.mh_next) {
  if (olen >= m->m_hdr.mh_len)
   olen -= m->m_hdr.mh_len;
  else {
   m->m_hdr.mh_len = olen;
   olen = 0;
  }
 }
 m_freem(cmd->srcu.src_m);
 explicit_bzero(cmd, sizeof(*cmd));
 free(cmd, 2, sizeof *cmd);
 crp->crp_etype = 0;
 crypto_done(crp);
 return;
out:
 if (cmd->dst_map != ((void *)0)) {
  if (cmd->src_map->dm_nsegs != 0)
   bus_dmamap_unload(sc->sc_dmat, cmd->src_map);
  bus_dmamap_destroy(sc->sc_dmat, cmd->dst_map);
 }
 if (cmd->src_map != ((void *)0)) {
  if (cmd->src_map->dm_nsegs != 0)
   bus_dmamap_unload(sc->sc_dmat, cmd->src_map);
  bus_dmamap_destroy(sc->sc_dmat, cmd->src_map);
 }
 m_freem(cmd->dstu.dst_m);
 explicit_bzero(cmd, sizeof(*cmd));
 free(cmd, 2, sizeof *cmd);
 crp->crp_etype = err;
 crypto_done(crp);
}
struct mbuf *
hifn_mkmbuf_chain(int totlen, struct mbuf *mtemplate)
{
 int len;
 struct mbuf *m, *m0, *mlast;
 if (mtemplate->m_hdr.mh_flags & 0x0002) {
  len = ((256 - sizeof(struct m_hdr)) - sizeof(struct pkthdr));
  m0 = m_gethdr((0x0002), (1));
 } else {
  len = (256 - sizeof(struct m_hdr));
  m0 = m_get((0x0002), (1));
 }
 if (m0 == ((void *)0))
  return (((void *)0));
 if (len == ((256 - sizeof(struct m_hdr)) - sizeof(struct pkthdr))) {
  if (m_dup_pkthdr(m0, mtemplate, 0x0002)) {
   m_free(m0);
   return (((void *)0));
  }
 }
 (void) m_clget((m0), (0x0002), (1 << 11));
 if (!(m0->m_hdr.mh_flags & 0x0001)) {
  m_freem(m0);
  return (((void *)0));
 }
 len = (1 << 11);
 totlen -= len;
 m0->M_dat.MH.MH_pkthdr.len = m0->m_hdr.mh_len = len;
 mlast = m0;
 while (totlen > 0) {
  m = m_get((0x0002), (1));
  if (m == ((void *)0)) {
   m_freem(m0);
   return (((void *)0));
  }
  (void) m_clget((m), (0x0002), (1 << 11));
  if (!(m->m_hdr.mh_flags & 0x0001)) {
   m_free(m);
   m_freem(m0);
   return (((void *)0));
  }
  len = (1 << 11);
  m->m_hdr.mh_len = len;
  if (m0->m_hdr.mh_flags & 0x0002)
   m0->M_dat.MH.MH_pkthdr.len += len;
  totlen -= len;
  mlast->m_hdr.mh_next = m;
  mlast = m;
 }
 return (m0);
}
void
hifn_write_4(struct hifn_softc *sc, int reggrp, bus_size_t reg64,
    u_int32_t val)
{
 if (sc->sc_flags & 0x08) {
  if (sc->sc_waw_lastgroup == reggrp &&
      sc->sc_waw_lastreg == reg64 - 4) {
   bus_space_read_4(sc->sc_st1, sc->sc_sh1, 0x98);
  }
  sc->sc_waw_lastgroup = reggrp;
  sc->sc_waw_lastreg = reg64;
 }
 if (reggrp == 0)
  bus_space_write_4(sc->sc_st0, sc->sc_sh0, reg64, val);
 else
  bus_space_write_4(sc->sc_st1, sc->sc_sh1, reg64, val);
}
u_int32_t
hifn_read_4(struct hifn_softc *sc, int reggrp, bus_size_t reg64)
{
 if (sc->sc_flags & 0x08) {
  sc->sc_waw_lastgroup = -1;
  sc->sc_waw_lastreg = 1;
 }
 if (reggrp == 0)
  return (bus_space_read_4(sc->sc_st0, sc->sc_sh0, reg64));
 return (bus_space_read_4(sc->sc_st1, sc->sc_sh1, reg64));
}
