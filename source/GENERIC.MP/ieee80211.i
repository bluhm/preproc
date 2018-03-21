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
struct ctlname {
 char *ctl_name;
 int ctl_type;
};
struct kinfo_proc {
 u_int64_t p_forw;
 u_int64_t p_back;
 u_int64_t p_paddr;
 u_int64_t p_addr;
 u_int64_t p_fd;
 u_int64_t p_stats;
 u_int64_t p_limit;
 u_int64_t p_vmspace;
 u_int64_t p_sigacts;
 u_int64_t p_sess;
 u_int64_t p_tsess;
 u_int64_t p_ru;
 int32_t p_eflag;
 int32_t p_exitsig;
 int32_t p_flag;
 int32_t p_pid;
 int32_t p_ppid;
 int32_t p_sid;
 int32_t p__pgid;
 int32_t p_tpgid;
 u_int32_t p_uid;
 u_int32_t p_ruid;
 u_int32_t p_gid;
 u_int32_t p_rgid;
 u_int32_t p_groups[16];
 int16_t p_ngroups;
 int16_t p_jobc;
 u_int32_t p_tdev;
 u_int32_t p_estcpu;
 u_int32_t p_rtime_sec;
 u_int32_t p_rtime_usec;
 int32_t p_cpticks;
 u_int32_t p_pctcpu;
 u_int32_t p_swtime;
 u_int32_t p_slptime;
 int32_t p_schedflags;
 u_int64_t p_uticks;
 u_int64_t p_sticks;
 u_int64_t p_iticks;
 u_int64_t p_tracep;
 int32_t p_traceflag;
 int32_t p_holdcnt;
 int32_t p_siglist;
 u_int32_t p_sigmask;
 u_int32_t p_sigignore;
 u_int32_t p_sigcatch;
 int8_t p_stat;
 u_int8_t p_priority;
 u_int8_t p_usrpri;
 u_int8_t p_nice;
 u_int16_t p_xstat;
 u_int16_t p_acflag;
 char p_comm[24];
 char p_wmesg[8];
 u_int64_t p_wchan;
 char p_login[32];
 int32_t p_vm_rssize;
 int32_t p_vm_tsize;
 int32_t p_vm_dsize;
 int32_t p_vm_ssize;
 int64_t p_uvalid;
 u_int64_t p_ustart_sec;
 u_int32_t p_ustart_usec;
 u_int32_t p_uutime_sec;
 u_int32_t p_uutime_usec;
 u_int32_t p_ustime_sec;
 u_int32_t p_ustime_usec;
 u_int64_t p_uru_maxrss;
 u_int64_t p_uru_ixrss;
 u_int64_t p_uru_idrss;
 u_int64_t p_uru_isrss;
 u_int64_t p_uru_minflt;
 u_int64_t p_uru_majflt;
 u_int64_t p_uru_nswap;
 u_int64_t p_uru_inblock;
 u_int64_t p_uru_oublock;
 u_int64_t p_uru_msgsnd;
 u_int64_t p_uru_msgrcv;
 u_int64_t p_uru_nsignals;
 u_int64_t p_uru_nvcsw;
 u_int64_t p_uru_nivcsw;
 u_int32_t p_uctime_sec;
 u_int32_t p_uctime_usec;
 int32_t p_psflags;
 int32_t p_spare;
 u_int32_t p_svuid;
 u_int32_t p_svgid;
 char p_emul[8];
 u_int64_t p_rlim_rss_cur;
 u_int64_t p_cpuid;
 u_int64_t p_vm_map_size;
 int32_t p_tid;
 u_int32_t p_rtableid;
};
struct kinfo_vmentry {
 u_long kve_start;
 u_long kve_end;
 u_long kve_guard;
 u_long kve_fspace;
 u_long kve_fspace_augment;
 u_int64_t kve_offset;
 int kve_wired_count;
 int kve_etype;
 int kve_protection;
 int kve_max_protection;
 int kve_advice;
 int kve_inheritance;
 u_int8_t kve_flags;
};
struct kinfo_file {
 uint64_t f_fileaddr;
 uint32_t f_flag;
 uint32_t f_iflags;
 uint32_t f_type;
 uint32_t f_count;
 uint32_t f_msgcount;
 uint32_t f_usecount;
 uint64_t f_ucred;
 uint32_t f_uid;
 uint32_t f_gid;
 uint64_t f_ops;
 uint64_t f_offset;
 uint64_t f_data;
 uint64_t f_rxfer;
 uint64_t f_rwfer;
 uint64_t f_seek;
 uint64_t f_rbytes;
 uint64_t f_wbytes;
 uint64_t v_un;
 uint32_t v_type;
 uint32_t v_tag;
 uint32_t v_flag;
 uint32_t va_rdev;
 uint64_t v_data;
 uint64_t v_mount;
 uint64_t va_fileid;
 uint64_t va_size;
 uint32_t va_mode;
 uint32_t va_fsid;
 char f_mntonname[96];
 uint32_t so_type;
 uint32_t so_state;
 uint64_t so_pcb;
 uint32_t so_protocol;
 uint32_t so_family;
 uint64_t inp_ppcb;
 uint32_t inp_lport;
 uint32_t inp_laddru[4];
 uint32_t inp_fport;
 uint32_t inp_faddru[4];
 uint64_t unp_conn;
 uint64_t pipe_peer;
 uint32_t pipe_state;
 uint32_t kq_count;
 uint32_t kq_state;
 uint32_t __unused1;
 uint32_t p_pid;
 int32_t fd_fd;
 uint32_t fd_ofileflags;
 uint32_t p_uid;
 uint32_t p_gid;
 uint32_t p_tid;
 char p_comm[24];
 uint32_t inp_rtableid;
 uint64_t so_splice;
 int64_t so_splicelen;
 uint64_t so_rcv_cc;
 uint64_t so_snd_cc;
 uint64_t unp_refs;
 uint64_t unp_nextref;
 uint64_t unp_addr;
 char unp_path[104];
 uint32_t inp_proto;
 uint32_t t_state;
 uint64_t t_rcv_wnd;
 uint64_t t_snd_wnd;
 uint64_t t_snd_cwnd;
 uint32_t va_nlink;
};
typedef int (sysctlfn)(int *, u_int, void *, size_t *, void *, size_t, struct proc *);
int sysctl_int(void *, size_t *, void *, size_t, int *);
int sysctl_int_lower(void *, size_t *, void *, size_t, int *);
int sysctl_rdint(void *, size_t *, void *, int);
int sysctl_int_arr(int **, int *, u_int, void *, size_t *, void *, size_t);
int sysctl_quad(void *, size_t *, void *, size_t, int64_t *);
int sysctl_rdquad(void *, size_t *, void *, int64_t);
int sysctl_string(void *, size_t *, void *, size_t, char *, size_t);
int sysctl_tstring(void *, size_t *, void *, size_t, char *, size_t);
int sysctl__string(void *, size_t *, void *, size_t, char *, size_t, int);
int sysctl_rdstring(void *, size_t *, void *, const char *);
int sysctl_rdstruct(void *, size_t *, void *, const void *, size_t);
int sysctl_struct(void *, size_t *, void *, size_t, void *, size_t);
int sysctl_file(int *, u_int, char *, size_t *, struct proc *);
int sysctl_doproc(int *, u_int, char *, size_t *);
struct mbuf_queue;
int sysctl_mq(int *, u_int, void *, size_t *, void *, size_t,
    struct mbuf_queue *);
struct rtentry;
struct walkarg;
int sysctl_dumpentry(struct rtentry *, void *, unsigned int);
int sysctl_rtable(int *, u_int, void *, size_t *, void *, size_t);
int sysctl_clockrate(char *, size_t *, void *);
int sysctl_vnode(char *, size_t *, struct proc *);
int sysctl_dopool(int *, u_int, char *, size_t *);
int kern_sysctl(int *, u_int, void *, size_t *, void *, size_t,
       struct proc *);
int hw_sysctl(int *, u_int, void *, size_t *, void *, size_t,
     struct proc *);
int vm_sysctl(int *, u_int, void *, size_t *, void *, size_t,
     struct proc *);
int fs_sysctl(int *, u_int, void *, size_t *, void *, size_t,
     struct proc *);
int fs_posix_sysctl(int *, u_int, void *, size_t *, void *, size_t,
    struct proc *);
int net_sysctl(int *, u_int, void *, size_t *, void *, size_t,
      struct proc *);
int cpu_sysctl(int *, u_int, void *, size_t *, void *, size_t,
      struct proc *);
int vfs_sysctl(int *, u_int, void *, size_t *, void *, size_t,
      struct proc *);
int sysctl_sysvipc(int *, u_int, void *, size_t *);
int sysctl_wdog(int *, u_int, void *, size_t *, void *, size_t);
extern int (*cpu_cpuspeed)(int *);
extern void (*cpu_setperf)(int);
int bpf_sysctl(int *, u_int, void *, size_t *, void *, size_t);
int pflow_sysctl(int *, u_int, void *, size_t *, void *, size_t);
int pipex_sysctl(int *, u_int, void *, size_t *, void *, size_t);
int mpls_sysctl(int *, u_int, void *, size_t *, void *, size_t);
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
struct sockaddr_dl {
 u_char sdl_len;
 u_char sdl_family;
 u_int16_t sdl_index;
 u_char sdl_type;
 u_char sdl_nlen;
 u_char sdl_alen;
 u_char sdl_slen;
 char sdl_data[24];
};
static inline struct sockaddr_dl *
satosdl(struct sockaddr *sa)
{
 return ((struct sockaddr_dl *)(sa));
}
static inline struct sockaddr *
sdltosa(struct sockaddr_dl *sdl)
{
 return ((struct sockaddr *)(sdl));
}
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
void ieee80211_free_allnodes(struct ieee80211com *);
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
 u_int ic_scan_lock;
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
struct ieee80211_rsnparams {
 u_int16_t rsn_nakms;
 u_int32_t rsn_akms;
 u_int16_t rsn_nciphers;
 u_int32_t rsn_ciphers;
 enum ieee80211_cipher rsn_groupcipher;
 enum ieee80211_cipher rsn_groupmgmtcipher;
 u_int16_t rsn_caps;
 u_int8_t rsn_npmkids;
 const u_int8_t *rsn_pmkids;
};
int ieee80211_cache_size = 100;
struct ieee80211com_head ieee80211com_head =
    { ((void *)0) };
void ieee80211_setbasicrates(struct ieee80211com *);
int ieee80211_findrate(struct ieee80211com *, enum ieee80211_phymode, int);
void
ieee80211_begin_bgscan(struct ifnet *ifp)
{
 struct ieee80211com *ic = (void *)ifp;
 if ((ic->ic_flags & 0x08000000) ||
     ic->ic_state != IEEE80211_S_RUN)
  return;
 if (ic->ic_bgscan_start != ((void *)0) && ic->ic_bgscan_start(ic) == 0) {
  ic->ic_flags |= 0x08000000;
  if (ifp->if_flags & 0x4)
   printf("%s: begin background scan\n", ifp->if_xname);
 }
}
void
ieee80211_bgscan_timeout(void *arg)
{
 struct ifnet *ifp = arg;
 ieee80211_begin_bgscan(ifp);
}
void
ieee80211_channel_init(struct ifnet *ifp)
{
 struct ieee80211com *ic = (void *)ifp;
 struct ieee80211_channel *c;
 int i;
 __builtin_memset((ic->ic_chan_avail), (0), (sizeof(ic->ic_chan_avail)));
 ic->ic_modecaps |= 1<<IEEE80211_MODE_AUTO;
 for (i = 0; i <= 255; i++) {
  c = &ic->ic_channels[i];
  if (c->ic_flags) {
   if (i != ieee80211_chan2ieee(ic, c)) {
    printf("%s: bad channel ignored; "
     "freq %u flags %x number %u\n",
     ifp->if_xname, c->ic_freq, c->ic_flags,
     i);
    c->ic_flags = 0;
    continue;
   }
   ((ic->ic_chan_avail)[(i)>>3] |= 1<<((i)&(8 -1)));
   if ((((c)->ic_flags & (0x0100 | 0x0040)) == (0x0100 | 0x0040)))
    ic->ic_modecaps |= 1<<IEEE80211_MODE_11A;
   if ((((c)->ic_flags & (0x0080 | 0x0020)) == (0x0080 | 0x0020)))
    ic->ic_modecaps |= 1<<IEEE80211_MODE_11B;
   if ((((c)->ic_flags & (0x0080 | 0x0040)) == (0x0080 | 0x0040)))
    ic->ic_modecaps |= 1<<IEEE80211_MODE_11G;
   if ((((c)->ic_flags & 0x2000) == 0x2000))
    ic->ic_modecaps |= 1<<IEEE80211_MODE_11N;
  }
 }
 if ((ic->ic_modecaps & (1<<ic->ic_curmode)) == 0)
  ic->ic_curmode = IEEE80211_MODE_AUTO;
 ic->ic_des_chan = ((struct ieee80211_channel *) ((void *)0));
 ic->ic_scan_lock = 0x0;
}
void
ieee80211_ifattach(struct ifnet *ifp)
{
 struct ieee80211com *ic = (void *)ifp;
 __builtin_memcpy((((struct arpcom *)ifp)->ac_enaddr), (ic->ic_myaddr), (6));
 ether_ifattach(ifp);
 ifp->if_output = ieee80211_output;
 bpfattach(&ic->ic_rawbpf, ifp, 105,
     sizeof(struct ieee80211_frame_addr4));
 ieee80211_crypto_attach(ifp);
 ieee80211_channel_init(ifp);
 ifp->if_data.ifi_capabilities |= 0x00000010;
 ieee80211_setbasicrates(ic);
 (void)ieee80211_setmode(ic, ic->ic_curmode);
 if (ic->ic_lintval == 0)
  ic->ic_lintval = 100;
 ic->ic_bmissthres = 7;
 ic->ic_dtim_period = 1;
 do { if (((ic)->ic_list.le_next = (&ieee80211com_head)->lh_first) != ((void *)0)) (&ieee80211com_head)->lh_first->ic_list.le_prev = &(ic)->ic_list.le_next; (&ieee80211com_head)->lh_first = (ic); (ic)->ic_list.le_prev = &(&ieee80211com_head)->lh_first; } while (0);
 ieee80211_node_attach(ifp);
 ieee80211_proto_attach(ifp);
 if_addgroup(ifp, "wlan");
 ifp->if_priority = 4;
 ieee80211_set_link_state(ic, 2);
 timeout_set(&ic->ic_bgscan_timeout, ieee80211_bgscan_timeout, ifp);
}
void
ieee80211_ifdetach(struct ifnet *ifp)
{
 struct ieee80211com *ic = (void *)ifp;
 ieee80211_proto_detach(ifp);
 ieee80211_crypto_detach(ifp);
 ieee80211_node_detach(ifp);
 do { if ((ic)->ic_list.le_next != ((void *)0)) (ic)->ic_list.le_next->ic_list.le_prev = (ic)->ic_list.le_prev; *(ic)->ic_list.le_prev = (ic)->ic_list.le_next; ((ic)->ic_list.le_prev) = ((void *)-1); ((ic)->ic_list.le_next) = ((void *)-1); } while (0);
 ifmedia_delete_instance(&ic->ic_media, ((uint64_t) -1));
 ether_ifdetach(ifp);
}
u_int
ieee80211_mhz2ieee(u_int freq, u_int flags)
{
 if (flags & 0x0080) {
  if (freq == 2484)
   return 14;
  if (freq < 2484)
   return (freq - 2407) / 5;
  else
   return 15 + ((freq - 2512) / 20);
 } else if (flags & 0x0100) {
  return (freq - 5000) / 5;
 } else {
  if (freq == 2484)
   return 14;
  if (freq < 2484)
   return (freq - 2407) / 5;
  if (freq < 5000)
   return 15 + ((freq - 2512) / 20);
  return (freq - 5000) / 5;
 }
}
u_int
ieee80211_chan2ieee(struct ieee80211com *ic, const struct ieee80211_channel *c)
{
 struct ifnet *ifp = &ic->ic_ac.ac_if;
 if (ic->ic_channels <= c && c <= &ic->ic_channels[255])
  return c - ic->ic_channels;
 else if (c == ((struct ieee80211_channel *) ((void *)0)))
  return 0xffff;
 panic("%s: bogus channel pointer", ifp->if_xname);
}
u_int
ieee80211_ieee2mhz(u_int chan, u_int flags)
{
 if (flags & 0x0080) {
  if (chan == 14)
   return 2484;
  if (chan < 14)
   return 2407 + chan*5;
  else
   return 2512 + ((chan-15)*20);
 } else if (flags & 0x0100) {
  return 5000 + (chan*5);
 } else {
  if (chan == 14)
   return 2484;
  if (chan < 14)
   return 2407 + chan*5;
  if (chan < 27)
   return 2512 + ((chan-15)*20);
  return 5000 + (chan*5);
 }
}
void
ieee80211_media_init(struct ifnet *ifp,
 ifm_change_cb_t media_change, ifm_stat_cb_t media_stat)
{
 struct ieee80211com *ic = (void *)ifp;
 struct ifmediareq imr;
 int i, j, mode, rate, maxrate, r;
 uint64_t mword, mopt;
 const struct ieee80211_rateset *rs;
 struct ieee80211_rateset allrates;
 ieee80211_node_lateattach(ifp);
 ifmedia_init(&ic->ic_media, 0, media_change, media_stat);
 maxrate = 0;
 __builtin_memset((&allrates), (0), (sizeof(allrates)));
 for (mode = IEEE80211_MODE_AUTO; mode <= IEEE80211_MODE_11G; mode++) {
  static const uint64_t mopts[] = {
   0ULL,
   0x0000000100000000ULL,
   0x0000000200000000ULL,
   0x0000000300000000ULL,
  };
  if ((ic->ic_modecaps & (1<<mode)) == 0)
   continue;
  mopt = mopts[mode];
  ifmedia_add(&(ic)->ic_media, ((0x0000000000000400ULL) | ((0ULL)) | ((mopt)) | ((uint64_t)(0) << 56)), 0, ((void *)0));
  if (ic->ic_caps & 0x00000002)
   ifmedia_add(&(ic)->ic_media, ((0x0000000000000400ULL) | ((0ULL)) | ((mopt | 0x0000000000040000ULL)) | ((uint64_t)(0) << 56)), 0, ((void *)0));
  if (ic->ic_caps & 0x00000008)
   ifmedia_add(&(ic)->ic_media, ((0x0000000000000400ULL) | ((0ULL)) | ((mopt | 0x0000000000020000ULL)) | ((uint64_t)(0) << 56)), 0, ((void *)0));
  if (ic->ic_caps & 0x00000010)
   ifmedia_add(&(ic)->ic_media, ((0x0000000000000400ULL) | ((0ULL)) | ((mopt | 0x0000000000010000ULL)) | ((uint64_t)(0) << 56)), 0, ((void *)0));
  if (ic->ic_caps & 0x00000200)
   ifmedia_add(&(ic)->ic_media, ((0x0000000000000400ULL) | ((0ULL)) | ((mopt | 0x0000000000100000ULL)) | ((uint64_t)(0) << 56)), 0, ((void *)0));
  if (mode == IEEE80211_MODE_AUTO)
   continue;
  rs = &ic->ic_sup_rates[mode];
  for (i = 0; i < rs->rs_nrates; i++) {
   rate = rs->rs_rates[i];
   mword = ieee80211_rate2media(ic, rate, mode);
   if (mword == 0)
    continue;
   ifmedia_add(&(ic)->ic_media, ((0x0000000000000400ULL) | ((mword)) | ((mopt)) | ((uint64_t)(0) << 56)), 0, ((void *)0));
   if (ic->ic_caps & 0x00000002)
    ifmedia_add(&(ic)->ic_media, ((0x0000000000000400ULL) | ((mword)) | ((mopt | 0x0000000000040000ULL)) | ((uint64_t)(0) << 56)), 0, ((void *)0));
   if (ic->ic_caps & 0x00000008)
    ifmedia_add(&(ic)->ic_media, ((0x0000000000000400ULL) | ((mword)) | ((mopt | 0x0000000000020000ULL)) | ((uint64_t)(0) << 56)), 0, ((void *)0));
   if (ic->ic_caps & 0x00000010)
    ifmedia_add(&(ic)->ic_media, ((0x0000000000000400ULL) | ((mword)) | ((mopt | 0x0000000000010000ULL)) | ((uint64_t)(0) << 56)), 0, ((void *)0));
   if (ic->ic_caps & 0x00000200)
    ifmedia_add(&(ic)->ic_media, ((0x0000000000000400ULL) | ((mword)) | ((mopt | 0x0000000000100000ULL)) | ((uint64_t)(0) << 56)), 0, ((void *)0));
   r = rate & 0x7f;
   for (j = 0; j < allrates.rs_nrates; j++)
    if (allrates.rs_rates[j] == r)
     break;
   if (j == allrates.rs_nrates) {
    allrates.rs_rates[j] = r;
    allrates.rs_nrates++;
   }
   rate = (rate & 0x7f) / 2;
   if (rate > maxrate)
    maxrate = rate;
  }
 }
 for (i = 0; i < allrates.rs_nrates; i++) {
  mword = ieee80211_rate2media(ic, allrates.rs_rates[i],
    IEEE80211_MODE_AUTO);
  if (mword == 0)
   continue;
  mword = ((mword) & 0x00000000000000ffULL);
  ifmedia_add(&(ic)->ic_media, ((0x0000000000000400ULL) | ((mword)) | ((0)) | ((uint64_t)(0) << 56)), 0, ((void *)0));
  if (ic->ic_caps & 0x00000002)
   ifmedia_add(&(ic)->ic_media, ((0x0000000000000400ULL) | ((mword)) | ((0x0000000000040000ULL)) | ((uint64_t)(0) << 56)), 0, ((void *)0));
  if (ic->ic_caps & 0x00000008)
   ifmedia_add(&(ic)->ic_media, ((0x0000000000000400ULL) | ((mword)) | ((0x0000000000020000ULL)) | ((uint64_t)(0) << 56)), 0, ((void *)0));
  if (ic->ic_caps & 0x00000010)
   ifmedia_add(&(ic)->ic_media, ((0x0000000000000400ULL) | ((mword)) | ((0x0000000000010000ULL)) | ((uint64_t)(0) << 56)), 0, ((void *)0));
  if (ic->ic_caps & 0x00000200)
   ifmedia_add(&(ic)->ic_media, ((0x0000000000000400ULL) | ((mword)) | ((0x0000000000100000ULL)) | ((uint64_t)(0) << 56)), 0, ((void *)0));
 }
 if (ic->ic_modecaps & (1 << IEEE80211_MODE_11N)) {
  mopt = 0x0000000800000000ULL;
  ifmedia_add(&(ic)->ic_media, ((0x0000000000000400ULL) | ((0ULL)) | ((mopt)) | ((uint64_t)(0) << 56)), 0, ((void *)0));
  if (ic->ic_caps & 0x00000002)
   ifmedia_add(&(ic)->ic_media, ((0x0000000000000400ULL) | ((0ULL)) | ((mopt | 0x0000000000040000ULL)) | ((uint64_t)(0) << 56)), 0, ((void *)0));
  if (ic->ic_caps & 0x00000008)
   ifmedia_add(&(ic)->ic_media, ((0x0000000000000400ULL) | ((0ULL)) | ((mopt | 0x0000000000020000ULL)) | ((uint64_t)(0) << 56)), 0, ((void *)0));
  if (ic->ic_caps & 0x00000200)
   ifmedia_add(&(ic)->ic_media, ((0x0000000000000400ULL) | ((0ULL)) | ((mopt | 0x0000000000100000ULL)) | ((uint64_t)(0) << 56)), 0, ((void *)0));
  for (i = 0; i < 77; i++) {
   if (!((ic->ic_sup_mcs)[(i)>>3] & (1<<((i)&(8 -1)))))
    continue;
   ifmedia_add(&(ic)->ic_media, ((0x0000000000000400ULL) | ((19 + i)) | ((mopt)) | ((uint64_t)(0) << 56)), 0, ((void *)0));
   if (ic->ic_caps & 0x00000002)
    ifmedia_add(&(ic)->ic_media, ((0x0000000000000400ULL) | ((19 + i)) | ((mopt | 0x0000000000040000ULL)) | ((uint64_t)(0) << 56)), 0, ((void *)0));
   if (ic->ic_caps & 0x00000008)
    ifmedia_add(&(ic)->ic_media, ((0x0000000000000400ULL) | ((19 + i)) | ((mopt | 0x0000000000020000ULL)) | ((uint64_t)(0) << 56)), 0, ((void *)0));
   if (ic->ic_caps & 0x00000200)
    ifmedia_add(&(ic)->ic_media, ((0x0000000000000400ULL) | ((19 + i)) | ((mopt | 0x0000000000100000ULL)) | ((uint64_t)(0) << 56)), 0, ((void *)0));
  }
  ic->ic_flags |= 0x02000000;
 }
 ieee80211_media_status(ifp, &imr);
 ifmedia_set(&ic->ic_media, imr.ifm_active);
 if (maxrate)
  ifp->if_data.ifi_baudrate = ((((maxrate) * 1000ULL) * 1000ULL));
}
int
ieee80211_findrate(struct ieee80211com *ic, enum ieee80211_phymode mode,
    int rate)
{
 int i, nrates = ic->ic_sup_rates[mode].rs_nrates;
 for (i = 0; i < nrates; i++)
  if (((ic)->ic_sup_rates[mode].rs_rates[i] & 0x7f) == rate)
   return i;
 return -1;
}
int
ieee80211_media_change(struct ifnet *ifp)
{
 struct ieee80211com *ic = (void *)ifp;
 struct ifmedia_entry *ime;
 enum ieee80211_opmode newopmode;
 enum ieee80211_phymode newphymode;
 int i, j, newrate, error = 0;
 ime = ic->ic_media.ifm_cur;
 switch (((ime->ifm_media) & 0x000000ff00000000ULL)) {
 case 0x0000000100000000ULL:
  newphymode = IEEE80211_MODE_11A;
  break;
 case 0x0000000200000000ULL:
  newphymode = IEEE80211_MODE_11B;
  break;
 case 0x0000000300000000ULL:
  newphymode = IEEE80211_MODE_11G;
  break;
 case 0x0000000800000000ULL:
  newphymode = IEEE80211_MODE_11N;
  break;
 case 0ULL:
  newphymode = IEEE80211_MODE_AUTO;
  break;
 default:
  return 22;
 }
 if ((ic->ic_modecaps & (1<<newphymode)) == 0)
  return 22;
 i = -1;
 if (((ime->ifm_media) & 0x00000000000000ffULL) >= 19 &&
     ((ime->ifm_media) & 0x00000000000000ffULL) <= 95) {
  if ((ic->ic_modecaps & (1 << IEEE80211_MODE_11N)) == 0)
   return 22;
  if (newphymode != IEEE80211_MODE_AUTO &&
      newphymode != IEEE80211_MODE_11N)
   return 22;
  i = ieee80211_media2mcs(ime->ifm_media);
  if (i == -1 || (((ic->ic_sup_mcs)[(i)>>3] & (1<<((i)&(8 -1)))) == 0))
   return 22;
 } else if (((ime->ifm_media) & 0x00000000000000ffULL) != 0ULL) {
  newrate = ieee80211_media2rate(ime->ifm_media);
  if (newrate == 0)
   return 22;
  if (newphymode == IEEE80211_MODE_AUTO) {
   for (j = IEEE80211_MODE_11A;
        j < (IEEE80211_MODE_11N+1); j++) {
    if ((ic->ic_modecaps & (1<<j)) == 0)
     continue;
    i = ieee80211_findrate(ic, j, newrate);
    if (i != -1) {
     newphymode = j;
     break;
    }
   }
  } else {
   i = ieee80211_findrate(ic, newphymode, newrate);
  }
  if (i == -1)
   return 22;
 }
 if (ime->ifm_media & 0x0000000000010000ULL)
  newopmode = IEEE80211_M_AHDEMO;
 else if (ime->ifm_media & 0x0000000000020000ULL)
  newopmode = IEEE80211_M_HOSTAP;
 else if (ime->ifm_media & 0x0000000000040000ULL)
  newopmode = IEEE80211_M_IBSS;
 else
 if (ime->ifm_media & 0x0000000000100000ULL)
  newopmode = IEEE80211_M_MONITOR;
 else
  newopmode = IEEE80211_M_STA;
 if (newopmode == IEEE80211_M_HOSTAP &&
     newphymode == IEEE80211_MODE_AUTO) {
  if (ic->ic_modecaps & (1 << IEEE80211_MODE_11N))
   newphymode = IEEE80211_MODE_11N;
  else if (ic->ic_modecaps & (1 << IEEE80211_MODE_11A))
   newphymode = IEEE80211_MODE_11A;
  else if (ic->ic_modecaps & (1 << IEEE80211_MODE_11G))
   newphymode = IEEE80211_MODE_11G;
  else
   newphymode = IEEE80211_MODE_11B;
 }
 if (ic->ic_curmode != newphymode) {
  error = ieee80211_setmode(ic, newphymode);
  if (error != 0)
   return error;
  error = 52;
 }
 ic->ic_flags &= ~0x02000000;
 if ((ic->ic_modecaps & (1 << IEEE80211_MODE_11N)) &&
     (newphymode == IEEE80211_MODE_AUTO ||
     newphymode == IEEE80211_MODE_11N))
  ic->ic_flags |= 0x02000000;
 if ((ic->ic_flags & 0x02000000) == 0) {
  ic->ic_fixed_mcs = -1;
      if (ic->ic_fixed_rate != i) {
   ic->ic_fixed_rate = i;
   error = 52;
  }
 } else {
  ic->ic_fixed_rate = -1;
  if (ic->ic_fixed_mcs != i) {
   ic->ic_fixed_mcs = i;
   error = 52;
  }
 }
 if (ic->ic_opmode != newopmode) {
  ic->ic_opmode = newopmode;
  switch (newopmode) {
  case IEEE80211_M_AHDEMO:
  case IEEE80211_M_HOSTAP:
  case IEEE80211_M_STA:
  case IEEE80211_M_MONITOR:
   ic->ic_flags &= ~0x00000200;
   break;
  case IEEE80211_M_IBSS:
   ic->ic_flags |= 0x00000200;
   break;
  }
  ieee80211_reset_erp(ic);
  error = 52;
 }
 return error;
}
void
ieee80211_media_status(struct ifnet *ifp, struct ifmediareq *imr)
{
 struct ieee80211com *ic = (void *)ifp;
 const struct ieee80211_node *ni = ((void *)0);
 imr->ifm_status = 0x0000000000000001ULL;
 imr->ifm_active = 0x0000000000000400ULL;
 if (ic->ic_state == IEEE80211_S_RUN &&
     (ic->ic_opmode != IEEE80211_M_STA ||
      !(ic->ic_flags & 0x00200000) ||
      ic->ic_bss->ni_port_valid))
  imr->ifm_status |= 0x0000000000000002ULL;
 imr->ifm_active |= 0ULL;
 switch (ic->ic_opmode) {
 case IEEE80211_M_STA:
  ni = ic->ic_bss;
  if (ic->ic_curmode == IEEE80211_MODE_11N)
   imr->ifm_active |= ieee80211_mcs2media(ic,
    ni->ni_txmcs, ic->ic_curmode);
  else
   imr->ifm_active |= ieee80211_rate2media(ic,
    ni->ni_rates.rs_rates[ni->ni_txrate],
    ic->ic_curmode);
  break;
 case IEEE80211_M_IBSS:
  imr->ifm_active |= 0x0000000000040000ULL;
  break;
 case IEEE80211_M_AHDEMO:
  imr->ifm_active |= 0x0000000000010000ULL;
  break;
 case IEEE80211_M_HOSTAP:
  imr->ifm_active |= 0x0000000000020000ULL;
  break;
 case IEEE80211_M_MONITOR:
  imr->ifm_active |= 0x0000000000100000ULL;
  break;
 default:
  break;
 }
 switch (ic->ic_curmode) {
 case IEEE80211_MODE_11A:
  imr->ifm_active |= 0x0000000100000000ULL;
  break;
 case IEEE80211_MODE_11B:
  imr->ifm_active |= 0x0000000200000000ULL;
  break;
 case IEEE80211_MODE_11G:
  imr->ifm_active |= 0x0000000300000000ULL;
  break;
 case IEEE80211_MODE_11N:
  imr->ifm_active |= 0x0000000800000000ULL;
  break;
 }
}
void
ieee80211_watchdog(struct ifnet *ifp)
{
 struct ieee80211com *ic = (void *)ifp;
 if (ic->ic_mgt_timer && --ic->ic_mgt_timer == 0)
  (((ic)->ic_newstate)((ic), (IEEE80211_S_SCAN), (-1)));
 if (ic->ic_mgt_timer != 0)
  ifp->if_timer = 1;
}
const struct ieee80211_rateset ieee80211_std_rateset_11a =
 { 8, { 12, 18, 24, 36, 48, 72, 96, 108 } };
const struct ieee80211_rateset ieee80211_std_rateset_11b =
 { 4, { 2, 4, 11, 22 } };
const struct ieee80211_rateset ieee80211_std_rateset_11g =
 { 12, { 2, 4, 11, 22, 12, 18, 24, 36, 48, 72, 96, 108 } };
void
ieee80211_setbasicrates(struct ieee80211com *ic)
{
 static const struct ieee80211_rateset basic[] = {
     { 0 },
     { 3, { 12, 24, 48 } },
     { 2, { 2, 4 } },
     { 4, { 2, 4, 11, 22 } },
     { 0 },
 };
 enum ieee80211_phymode mode;
 struct ieee80211_rateset *rs;
 int i, j;
 for (mode = 0; mode < (IEEE80211_MODE_11N+1); mode++) {
  rs = &ic->ic_sup_rates[mode];
  for (i = 0; i < rs->rs_nrates; i++) {
   rs->rs_rates[i] &= 0x7f;
   for (j = 0; j < basic[mode].rs_nrates; j++) {
    if (basic[mode].rs_rates[j] ==
        rs->rs_rates[i]) {
     rs->rs_rates[i] |=
         0x80;
     break;
    }
   }
  }
 }
}
int
ieee80211_min_basic_rate(struct ieee80211com *ic)
{
 struct ieee80211_rateset *rs = &ic->ic_bss->ni_rates;
 int i, min, rval;
 min = -1;
 for (i = 0; i < rs->rs_nrates; i++) {
  if ((rs->rs_rates[i] & 0x80) == 0)
   continue;
  rval = (rs->rs_rates[i] & 0x7f);
  if (min == -1)
   min = rval;
  else if (rval < min)
   min = rval;
 }
 if (min == -1)
  min = (((ic->ic_bss->ni_chan)->ic_flags & 0x0080) != 0) ? 2 : 12;
 return min;
}
int
ieee80211_max_basic_rate(struct ieee80211com *ic)
{
 struct ieee80211_rateset *rs = &ic->ic_bss->ni_rates;
 int i, max, rval;
 max = (((ic->ic_bss->ni_chan)->ic_flags & 0x0080) != 0) ? 2 : 12;
 for (i = 0; i < rs->rs_nrates; i++) {
  if ((rs->rs_rates[i] & 0x80) == 0)
   continue;
  rval = (rs->rs_rates[i] & 0x7f);
  if (rval > max)
   max = rval;
 }
 return max;
}
int
ieee80211_setmode(struct ieee80211com *ic, enum ieee80211_phymode mode)
{
 struct ifnet *ifp = &ic->ic_ac.ac_if;
 static const u_int chanflags[] = {
  0,
  (0x0100 | 0x0040),
  (0x0080 | 0x0020),
  (0x0080 | 0x0040),
  0x2000,
 };
 const struct ieee80211_channel *c;
 u_int modeflags;
 int i;
 if ((ic->ic_modecaps & (1<<mode)) == 0) {
  ;
  return 22;
 }
 if (mode >= (sizeof((chanflags)) / sizeof((chanflags)[0])))
  panic("unexpected mode %u", mode);
 modeflags = chanflags[mode];
 for (i = 0; i <= 255; i++) {
  c = &ic->ic_channels[i];
  if (mode == IEEE80211_MODE_AUTO) {
   if (c->ic_flags != 0)
    break;
  } else if ((c->ic_flags & modeflags) == modeflags)
   break;
 }
 if (i > 255) {
  ;
  return 22;
 }
 __builtin_memset((ic->ic_chan_active), (0), (sizeof(ic->ic_chan_active)));
 for (i = 0; i <= 255; i++) {
  c = &ic->ic_channels[i];
  if (mode == IEEE80211_MODE_AUTO) {
   if (c->ic_flags != 0)
    ((ic->ic_chan_active)[(i)>>3] |= 1<<((i)&(8 -1)));
  } else if ((c->ic_flags & modeflags) == modeflags)
   ((ic->ic_chan_active)[(i)>>3] |= 1<<((i)&(8 -1)));
 }
 if (ic->ic_ibss_chan == ((void *)0) || (((ic->ic_chan_active)[(ieee80211_chan2ieee(ic, ic->ic_ibss_chan))>>3] & (1<<((ieee80211_chan2ieee(ic, ic->ic_ibss_chan))&(8 -1)))) == 0)) {
  for (i = 0; i <= 255; i++)
   if (((ic->ic_chan_active)[(i)>>3] & (1<<((i)&(8 -1))))) {
    ic->ic_ibss_chan = &ic->ic_channels[i];
    break;
   }
  if ((ic->ic_ibss_chan == ((void *)0)) || (((ic->ic_chan_active)[(ieee80211_chan2ieee(ic, ic->ic_ibss_chan))>>3] & (1<<((ieee80211_chan2ieee(ic, ic->ic_ibss_chan))&(8 -1)))) == 0))
   panic("Bad IBSS channel %u",
       ieee80211_chan2ieee(ic, ic->ic_ibss_chan));
 }
 ieee80211_reset_scan(ifp);
 ic->ic_curmode = mode;
 ieee80211_reset_erp(ic);
 return 0;
}
enum ieee80211_phymode
ieee80211_next_mode(struct ifnet *ifp)
{
 struct ieee80211com *ic = (void *)ifp;
 if (((ic->ic_media.ifm_cur->ifm_media) & 0x000000ff00000000ULL) != 0ULL) {
  ieee80211_reset_scan(ifp);
  return (IEEE80211_MODE_AUTO);
 }
 for (++ic->ic_curmode;
     ic->ic_curmode <= (IEEE80211_MODE_11N+1);
     ic->ic_curmode++) {
  if (ic->ic_curmode == IEEE80211_MODE_11N)
   continue;
  if (ic->ic_curmode >= (IEEE80211_MODE_11N+1) ||
      (ic->ic_caps & 0x00008000)) {
   ic->ic_curmode = IEEE80211_MODE_AUTO;
   break;
  }
  if (ic->ic_modecaps & (1 << ic->ic_curmode))
   break;
 }
 ieee80211_setmode(ic, ic->ic_curmode);
 return (ic->ic_curmode);
}
enum ieee80211_phymode
ieee80211_chan2mode(struct ieee80211com *ic,
    const struct ieee80211_channel *chan)
{
 if (ic->ic_curmode != IEEE80211_MODE_11N &&
     (ic->ic_curmode != IEEE80211_MODE_AUTO ||
     chan == ((struct ieee80211_channel *) ((void *)0))))
  return ic->ic_curmode;
 if ((((chan)->ic_flags & 0x0100) != 0))
  return IEEE80211_MODE_11A;
 else if (chan->ic_flags & (0x0040|0x0400))
  return IEEE80211_MODE_11G;
 else
  return IEEE80211_MODE_11B;
}
uint64_t
ieee80211_mcs2media(struct ieee80211com *ic, int mcs,
    enum ieee80211_phymode mode)
{
 switch (mode) {
 case IEEE80211_MODE_11A:
 case IEEE80211_MODE_11B:
 case IEEE80211_MODE_11G:
  panic("unexpected mode %d", mode);
  break;
 case IEEE80211_MODE_AUTO:
 case IEEE80211_MODE_11N:
  if (mcs >= 0 && mcs < 77)
   return (0x0000000800000000ULL |
       (19 + mcs));
  break;
 }
 return 0ULL;
}
int
ieee80211_media2mcs(uint64_t mword)
{
 uint64_t subtype;
 subtype = ((mword) & 0x00000000000000ffULL);
 if (subtype == 0ULL)
  return -1;
 else if (subtype == 1ULL || subtype == 2ULL)
  return 0;
 if (subtype >= 19 &&
     subtype <= 95)
  return (int)(subtype - 19);
 return -1;
}
uint64_t
ieee80211_rate2media(struct ieee80211com *ic, int rate,
    enum ieee80211_phymode mode)
{
 static const struct {
  uint64_t m;
  uint64_t r;
 } rates[] = {
  { 2 | 0x0000000200000000ULL, 8 },
  { 4 | 0x0000000200000000ULL, 5 },
  { 11 | 0x0000000200000000ULL, 6 },
  { 22 | 0x0000000200000000ULL, 7 },
  { 44 | 0x0000000200000000ULL, 9 },
  { 12 | 0x0000000100000000ULL, 10 },
  { 18 | 0x0000000100000000ULL, 11 },
  { 24 | 0x0000000100000000ULL, 12 },
  { 36 | 0x0000000100000000ULL, 13 },
  { 48 | 0x0000000100000000ULL, 14 },
  { 72 | 0x0000000100000000ULL, 15 },
  { 96 | 0x0000000100000000ULL, 16 },
  { 108 | 0x0000000100000000ULL, 17 },
  { 2 | 0x0000000300000000ULL, 8 },
  { 4 | 0x0000000300000000ULL, 5 },
  { 11 | 0x0000000300000000ULL, 6 },
  { 22 | 0x0000000300000000ULL, 7 },
  { 12 | 0x0000000300000000ULL, 10 },
  { 18 | 0x0000000300000000ULL, 11 },
  { 24 | 0x0000000300000000ULL, 12 },
  { 36 | 0x0000000300000000ULL, 13 },
  { 48 | 0x0000000300000000ULL, 14 },
  { 72 | 0x0000000300000000ULL, 15 },
  { 96 | 0x0000000300000000ULL, 16 },
  { 108 | 0x0000000300000000ULL, 17 },
 };
 uint64_t mask;
 int i;
 mask = rate & 0x7f;
 switch (mode) {
 case IEEE80211_MODE_11A:
  mask |= 0x0000000100000000ULL;
  break;
 case IEEE80211_MODE_11B:
  mask |= 0x0000000200000000ULL;
  break;
 case IEEE80211_MODE_AUTO:
 case IEEE80211_MODE_11G:
  mask |= 0x0000000300000000ULL;
  break;
 case IEEE80211_MODE_11N:
  panic("unexpected mode %d", mode);
  break;
 }
 for (i = 0; i < (sizeof((rates)) / sizeof((rates)[0])); i++)
  if (rates[i].m == mask)
   return rates[i].r;
 return 0ULL;
}
int
ieee80211_media2rate(uint64_t mword)
{
 int i;
 static const struct {
  uint64_t subtype;
  int rate;
 } ieeerates[] = {
  { 0ULL, -1 },
  { 1ULL, 0 },
  { 2ULL, 0 },
  { 8, 2 },
  { 5, 4 },
  { 6, 11 },
  { 7, 22 },
  { 9, 44 },
  { 10, 12 },
  { 11, 18 },
  { 12, 24 },
  { 13, 36 },
  { 14, 48 },
  { 15, 72 },
  { 16, 96 },
  { 17, 108 },
  { 18, 144 },
 };
 for (i = 0; i < (sizeof((ieeerates)) / sizeof((ieeerates)[0])); i++) {
  if (ieeerates[i].subtype == ((mword) & 0x00000000000000ffULL))
   return ieeerates[i].rate;
 }
 return 0;
}
u_int8_t
ieee80211_rate2plcp(u_int8_t rate, enum ieee80211_phymode mode)
{
 rate &= 0x7f;
 if (mode == IEEE80211_MODE_11B) {
  switch (rate) {
  case 2: return 10;
  case 4: return 20;
  case 11: return 55;
  case 22: return 110;
  case 44: return 220;
  }
 } else if (mode == IEEE80211_MODE_11G || mode == IEEE80211_MODE_11A) {
  switch (rate) {
  case 12: return 0x0b;
  case 18: return 0x0f;
  case 24: return 0x0a;
  case 36: return 0x0e;
  case 48: return 0x09;
  case 72: return 0x0d;
  case 96: return 0x08;
  case 108: return 0x0c;
  }
        } else
  panic("unexpected mode %u", mode);
 ;
 return 0;
}
u_int8_t
ieee80211_plcp2rate(u_int8_t plcp, enum ieee80211_phymode mode)
{
 if (mode == IEEE80211_MODE_11B) {
  switch (plcp) {
  case 10: return 2;
  case 20: return 4;
  case 55: return 11;
  case 110: return 22;
  case 220: return 44;
  }
 } else if (mode == IEEE80211_MODE_11G || mode == IEEE80211_MODE_11A) {
  switch (plcp) {
  case 0x0b: return 12;
  case 0x0f: return 18;
  case 0x0a: return 24;
  case 0x0e: return 36;
  case 0x09: return 48;
  case 0x0d: return 72;
  case 0x08: return 96;
  case 0x0c: return 108;
  }
 } else
  panic("unexpected mode %u", mode);
 ;
 return 0;
}
