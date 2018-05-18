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
struct sbus_softc;
struct sbus_reg {
 u_int32_t sbr_slot;
 u_int32_t sbr_offset;
 u_int32_t sbr_size;
};
struct sbus_intr {
 u_int32_t sbi_pri;
 u_int32_t sbi_vec;
};
struct sbus_range {
 u_int32_t cspace;
 u_int32_t coffset;
 u_int32_t pspace;
 u_int32_t poffset;
 u_int32_t size;
};
struct sbus_attach_args {
 int sa_placeholder;
 bus_space_tag_t sa_bustag;
 bus_dma_tag_t sa_dmatag;
 char *sa_name;
 int sa_node;
 struct sbus_reg *sa_reg;
 int sa_nreg;
 struct sbus_intr *sa_intr;
 int sa_nintr;
 u_int32_t *sa_promvaddrs;
 int sa_npromvaddrs;
 int sa_frequency;
};
int sbus_print(void *, const char *);
int sbus_setup_attach_args(
  struct sbus_softc *,
  bus_space_tag_t,
  bus_dma_tag_t,
  int,
  struct sbus_attach_args *);
void sbus_destroy_attach_args(struct sbus_attach_args *);
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
struct strbuf_ctl {
 bus_space_tag_t sb_bustag;
 bus_space_handle_t sb_sb;
 struct iommu_state *sb_iommu;
 struct mutex sb_mtx;
 paddr_t sb_flushpa;
 volatile int64_t *sb_flush;
};
struct strbuf_flush {
 char sbf_area[0x80];
 void *sbf_flush;
 paddr_t sbf_flushpa;
};
struct iommu_page_entry {
 struct { struct iommu_page_entry *spe_left; struct iommu_page_entry *spe_right; } ipe_node;
 paddr_t ipe_pa;
 bus_addr_t ipe_va;
};
struct iommu_page_map {
 struct iommu_page_tree { struct iommu_page_entry *sph_root; } ipm_tree;
 int ipm_maxpage;
 int ipm_pagecnt;
 struct iommu_page_entry ipm_map[1];
};
struct iommu_map_state {
 struct strbuf_flush ims_flush;
 struct strbuf_ctl *ims_sb;
 struct iommu_state *ims_iommu;
 int ims_flags;
 struct extent_region ims_er;
 struct iommu_page_map ims_map;
};
struct iommu_state {
 paddr_t is_ptsb;
 int64_t *is_tsb;
 int is_tsbsize;
 u_int is_dvmabase;
 u_int is_dvmaend;
 int64_t is_cr;
 struct mutex is_mtx;
 struct extent *is_dvmamap;
 int is_flags;
 struct strbuf_ctl *is_sb[2];
 paddr_t is_scratch;
 bus_space_tag_t is_bustag;
 bus_space_handle_t is_iommu;
 uint64_t is_devhandle;
};
void iommu_init(char *, struct iommu_state *, int, u_int32_t);
void iommu_reset(struct iommu_state *);
paddr_t iommu_extract(struct iommu_state *, bus_addr_t);
int64_t iommu_lookup_tte(struct iommu_state *, bus_addr_t);
int64_t iommu_fetch_tte(struct iommu_state *, paddr_t);
int iommu_dvmamap_create(bus_dma_tag_t, bus_dma_tag_t, struct strbuf_ctl *,
     bus_size_t, int, bus_size_t, bus_size_t, int, bus_dmamap_t *);
void iommu_dvmamap_destroy(bus_dma_tag_t, bus_dma_tag_t, bus_dmamap_t);
int iommu_dvmamap_load(bus_dma_tag_t, bus_dma_tag_t, bus_dmamap_t, void *,
     bus_size_t, struct proc *, int);
void iommu_dvmamap_unload(bus_dma_tag_t, bus_dma_tag_t, bus_dmamap_t);
int iommu_dvmamap_load_raw(bus_dma_tag_t, bus_dma_tag_t, bus_dmamap_t,
     bus_dma_segment_t *, int, bus_size_t, int);
void iommu_dvmamap_sync(bus_dma_tag_t, bus_dma_tag_t, bus_dmamap_t,
     bus_addr_t, bus_size_t, int);
int iommu_dvmamem_alloc(bus_dma_tag_t, bus_dma_tag_t, bus_size_t,
     bus_size_t, bus_size_t, bus_dma_segment_t *, int, int *, int);
void iommu_dvmamem_free(bus_dma_tag_t, bus_dma_tag_t, bus_dma_segment_t *,
     int);
struct sbus_softc {
 struct device sc_dev;
 bus_space_tag_t sc_bustag;
 bus_space_handle_t sc_bh;
 bus_dma_tag_t sc_dmatag;
 int sc_clockfreq;
 struct sbus_range *sc_range;
 int sc_nrange;
 int sc_burst;
 int *sc_intr2ipl;
 int *sc_intr_compat;
 int sc_ign;
 struct iommu_state sc_is;
 struct strbuf_ctl sc_sb;
 int64_t sc_flush;
 struct sbus_softc *sc_master;
};
bus_addr_t sbus_bus_addr(bus_space_tag_t, u_int, u_int);
struct iommureg {
 volatile u_int64_t iommu_cr;
 volatile u_int64_t iommu_tsb;
 volatile u_int64_t iommu_flush;
 volatile u_int64_t iommu_ctxflush;
 volatile u_int64_t iommu_reserved[28];
 volatile u_int64_t iommu_cache_flush;
 volatile u_int64_t iommu_cache_invalidate;
 volatile u_int64_t iommu_reserved2[30];
};
struct iommu_strbuf {
 volatile u_int64_t strbuf_ctl;
 volatile u_int64_t strbuf_pgflush;
 volatile u_int64_t strbuf_flushsync;
};
struct intrmap {
 char *in_class;
 int in_lev;
};
extern struct intrmap intrmap[];
struct upa_reg {
 int64_t ur_paddr;
 int64_t ur_len;
};
struct mainbus_attach_args {
 bus_space_tag_t ma_bustag;
 bus_dma_tag_t ma_dmatag;
 char *ma_name;
 struct upa_reg *ma_reg;
 u_int *ma_address;
 u_int *ma_interrupts;
 int ma_upaid;
 int ma_node;
 int ma_nreg;
 int ma_naddress;
 int ma_ninterrupts;
 int ma_pri;
};
long getproplen(int node, char *name);
int getprop(int, char *, size_t, int *, void **);
char *getpropstring(int node, char *name);
int getpropint(int node, char *name, int deflt);
int getpropspeed(int node, char *name);
extern int optionsnode;
char *getpropstringA(int, char *, char *);
char *clockfreq(long freq);
struct device;
struct bootpath {
 int node;
 char name[16];
 long val[3];
 struct device *dev;
};
struct bootpath *bootpath_store(int, struct bootpath *);
void mountroot_hook_establish(void (*)(struct device *), struct device *);
void bootstrap(int);
int firstchild(int);
int nextsibling(int);
void callrom(void);
struct device *getdevunit(char *, int);
void *findzs(int);
int romgetcursoraddr(int **, int **);
int findroot(void);
int findnode(int, const char *);
int checkstatus(int);
int node_has_property(int, const char *);
void device_register(struct device *, void *);
int openfirmware(void *);
extern char OF_buf[];
int OF_peer(int phandle);
int OF_child(int phandle);
int OF_parent(int phandle);
int OF_instance_to_package(int ihandle);
int OF_getproplen(int handle, char *prop);
int OF_getprop(int handle, char *prop, void *buf, int buflen);
uint32_t OF_getpropint(int handle, char *, uint32_t);
int OF_getpropintarray(int, char *, uint32_t *, int);
uint64_t OF_getpropint64(int handle, char *, uint64_t);
int OF_setprop(int, char *, const void *, int);
int OF_nextprop(int, char *, void *);
int OF_finddevice(char *name);
int OF_is_compatible(int, const char *);
int OF_instance_to_path(int ihandle, char *buf, int buflen);
int OF_package_to_path(int phandle, char *buf, int buflen);
int OF_call_method_1(char *method, int ihandle, int nargs, ...);
int OF_call_method(char *method, int ihandle, int nargs, int nreturns, ...);
int OF_open(char *dname);
void OF_close(int handle);
int OF_read(int handle, void *addr, int len);
int OF_write(int handle, void *addr, int len);
int OF_seek(int handle, u_quad_t pos);
void OF_boot(char *bootspec);
void OF_enter(void);
void OF_exit(void) __attribute__((__noreturn__));
int OF_interpret(char *cmd, int nreturns, ...);
int OF_getnodebyname(int, const char *);
int OF_getnodebyphandle(uint32_t);
int OF_getindex(int, const char *, const char *);
int ofnmmatch(char *cp1, char *cp2);
void ofw_intr_establish(void);
struct ofprobe {
 int phandle;
 int unit;
};
struct ofb_softc {
 struct device sc_dev;
 int sc_phandle;
 int sc_unit;
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
typedef struct {
 u_int32_t bge_addr_hi;
 u_int32_t bge_addr_lo;
} bge_hostaddr;
struct bge_rcb {
 bge_hostaddr bge_hostaddr;
 u_int32_t bge_maxlen_flags;
 u_int32_t bge_nicaddr;
};
struct bge_tx_bd {
 bge_hostaddr bge_addr;
 u_int16_t bge_len;
 u_int16_t bge_flags;
 u_int16_t bge_rsvd;
 u_int16_t bge_vlan_tag;
};
struct bge_rx_bd {
 bge_hostaddr bge_addr;
 u_int16_t bge_idx;
 u_int16_t bge_len;
 u_int16_t bge_type;
 u_int16_t bge_flags;
 u_int16_t bge_ip_csum;
 u_int16_t bge_tcp_udp_csum;
 u_int16_t bge_error_flag;
 u_int16_t bge_vlan_tag;
 u_int32_t bge_rsvd;
 u_int32_t bge_opaque;
};
struct bge_ext_rx_bd {
 bge_hostaddr bge_addr1;
 bge_hostaddr bge_addr2;
 bge_hostaddr bge_addr3;
 u_int16_t bge_len1;
 u_int16_t bge_len2;
 u_int16_t bge_len3;
 u_int16_t bge_rsvd;
 struct bge_rx_bd bge_bd;
};
struct bge_sts_idx {
 u_int16_t bge_tx_cons_idx;
 u_int16_t bge_rx_prod_idx;
};
struct bge_status_block {
 u_int32_t bge_status;
 u_int32_t bge_status_tag;
 u_int16_t bge_rx_std_cons_idx;
 u_int16_t bge_rx_jumbo_cons_idx;
 u_int16_t bge_rsvd1;
 u_int16_t bge_rx_mini_cons_idx;
 struct bge_sts_idx bge_idx[16];
};
struct bge_rx_mac_stats {
 bge_hostaddr ifHCInOctets;
 bge_hostaddr Reserved1;
 bge_hostaddr etherStatsFragments;
 bge_hostaddr ifHCInUcastPkts;
 bge_hostaddr ifHCInMulticastPkts;
 bge_hostaddr ifHCInBroadcastPkts;
 bge_hostaddr dot3StatsFCSErrors;
 bge_hostaddr dot3StatsAlignmentErrors;
 bge_hostaddr xonPauseFramesReceived;
 bge_hostaddr xoffPauseFramesReceived;
 bge_hostaddr macControlFramesReceived;
 bge_hostaddr xoffStateEntered;
 bge_hostaddr dot3StatsFramesTooLong;
 bge_hostaddr etherStatsJabbers;
 bge_hostaddr etherStatsUndersizePkts;
 bge_hostaddr inRangeLengthError;
 bge_hostaddr outRangeLengthError;
 bge_hostaddr etherStatsPkts64Octets;
 bge_hostaddr etherStatsPkts65Octetsto127Octets;
 bge_hostaddr etherStatsPkts128Octetsto255Octets;
 bge_hostaddr etherStatsPkts256Octetsto511Octets;
 bge_hostaddr etherStatsPkts512Octetsto1023Octets;
 bge_hostaddr etherStatsPkts1024Octetsto1522Octets;
 bge_hostaddr etherStatsPkts1523Octetsto2047Octets;
 bge_hostaddr etherStatsPkts2048Octetsto4095Octets;
 bge_hostaddr etherStatsPkts4096Octetsto8191Octets;
 bge_hostaddr etherStatsPkts8192Octetsto9022Octets;
};
struct bge_tx_mac_stats {
 bge_hostaddr ifHCOutOctets;
 bge_hostaddr Reserved2;
 bge_hostaddr etherStatsCollisions;
 bge_hostaddr outXonSent;
 bge_hostaddr outXoffSent;
 bge_hostaddr flowControlDone;
 bge_hostaddr dot3StatsInternalMacTransmitErrors;
 bge_hostaddr dot3StatsSingleCollisionFrames;
 bge_hostaddr dot3StatsMultipleCollisionFrames;
 bge_hostaddr dot3StatsDeferredTransmissions;
 bge_hostaddr Reserved3;
 bge_hostaddr dot3StatsExcessiveCollisions;
 bge_hostaddr dot3StatsLateCollisions;
 bge_hostaddr dot3Collided2Times;
 bge_hostaddr dot3Collided3Times;
 bge_hostaddr dot3Collided4Times;
 bge_hostaddr dot3Collided5Times;
 bge_hostaddr dot3Collided6Times;
 bge_hostaddr dot3Collided7Times;
 bge_hostaddr dot3Collided8Times;
 bge_hostaddr dot3Collided9Times;
 bge_hostaddr dot3Collided10Times;
 bge_hostaddr dot3Collided11Times;
 bge_hostaddr dot3Collided12Times;
 bge_hostaddr dot3Collided13Times;
 bge_hostaddr dot3Collided14Times;
 bge_hostaddr dot3Collided15Times;
 bge_hostaddr ifHCOutUcastPkts;
 bge_hostaddr ifHCOutMulticastPkts;
 bge_hostaddr ifHCOutBroadcastPkts;
 bge_hostaddr dot3StatsCarrierSenseErrors;
 bge_hostaddr ifOutDiscards;
 bge_hostaddr ifOutErrors;
};
struct bge_mac_stats_regs {
 u_int32_t ifHCOutOctets;
 u_int32_t Reserved0;
 u_int32_t etherStatsCollisions;
 u_int32_t outXonSent;
 u_int32_t outXoffSent;
 u_int32_t Reserved1;
 u_int32_t dot3StatsInternalMacTransmitErrors;
 u_int32_t dot3StatsSingleCollisionFrames;
 u_int32_t dot3StatsMultipleCollisionFrames;
 u_int32_t dot3StatsDeferredTransmissions;
 u_int32_t Reserved2;
 u_int32_t dot3StatsExcessiveCollisions;
 u_int32_t dot3StatsLateCollisions;
 u_int32_t Reserved3[14];
 u_int32_t ifHCOutUcastPkts;
 u_int32_t ifHCOutMulticastPkts;
 u_int32_t ifHCOutBroadcastPkts;
 u_int32_t Reserved4[2];
 u_int32_t ifHCInOctets;
 u_int32_t Reserved5;
 u_int32_t etherStatsFragments;
 u_int32_t ifHCInUcastPkts;
 u_int32_t ifHCInMulticastPkts;
 u_int32_t ifHCInBroadcastPkts;
 u_int32_t dot3StatsFCSErrors;
 u_int32_t dot3StatsAlignmentErrors;
 u_int32_t xonPauseFramesReceived;
 u_int32_t xoffPauseFramesReceived;
 u_int32_t macControlFramesReceived;
 u_int32_t xoffStateEntered;
 u_int32_t dot3StatsFramesTooLong;
 u_int32_t etherStatsJabbers;
 u_int32_t etherStatsUndersizePkts;
};
struct bge_stats {
 u_int8_t Reserved0[256];
 struct bge_rx_mac_stats rxstats;
 bge_hostaddr Unused1[37];
 struct bge_tx_mac_stats txstats;
 bge_hostaddr Unused2[31];
 bge_hostaddr COSIfHCInPkts[16];
 bge_hostaddr COSFramesDroppedDueToFilters;
 bge_hostaddr nicDmaWriteQueueFull;
 bge_hostaddr nicDmaWriteHighPriQueueFull;
 bge_hostaddr nicNoMoreRxBDs;
 bge_hostaddr ifInDiscards;
 bge_hostaddr ifInErrors;
 bge_hostaddr nicRecvThresholdHit;
 bge_hostaddr Unused3[9];
 bge_hostaddr COSIfHCOutPkts[16];
 bge_hostaddr nicDmaReadQueueFull;
 bge_hostaddr nicDmaReadHighPriQueueFull;
 bge_hostaddr nicSendDataCompQueueFull;
 bge_hostaddr nicRingSetSendProdIndex;
 bge_hostaddr nicRingStatusUpdate;
 bge_hostaddr nicInterrupts;
 bge_hostaddr nicAvoidedInterrupts;
 bge_hostaddr nicSendThresholdHit;
 u_int8_t Reserved4[320];
};
struct bge_gib {
 struct bge_stats bge_stats;
 struct bge_rcb bge_tx_rcb[16];
 struct bge_rcb bge_std_rx_rcb;
 struct bge_rcb bge_jumbo_rx_rcb;
 struct bge_rcb bge_mini_rx_rcb;
 struct bge_rcb bge_return_rcb;
};
struct bge_ring_data {
 struct bge_rx_bd bge_rx_std_ring[512];
 struct bge_ext_rx_bd bge_rx_jumbo_ring[256];
 struct bge_rx_bd bge_rx_return_ring[1024];
 struct bge_tx_bd bge_tx_ring[512];
 struct bge_status_block bge_status_block;
 struct bge_tx_desc *bge_tx_ring_nic;
 struct bge_cmd_desc *bge_cmd_ring;
 struct bge_gib bge_info;
};
struct bge_chain_data {
 struct mbuf *bge_tx_chain[512];
 struct mbuf *bge_rx_std_chain[512];
 struct mbuf *bge_rx_jumbo_chain[256];
 struct mbuf *bge_rx_mini_chain[1024];
 bus_dmamap_t bge_tx_map[512];
 bus_dmamap_t bge_rx_std_map[512];
 bus_dmamap_t bge_rx_jumbo_map[256];
};
struct bge_type {
 u_int16_t bge_vid;
 u_int16_t bge_did;
 char *bge_name;
};
struct bge_softc {
 struct device bge_dev;
 struct arpcom arpcom;
 bus_space_handle_t bge_bhandle;
 bus_space_tag_t bge_btag;
 bus_size_t bge_bsize;
 bus_space_handle_t bge_apehandle;
 bus_space_tag_t bge_apetag;
 bus_size_t bge_apesize;
 void *bge_intrhand;
 struct pci_attach_args bge_pa;
 struct mii_data bge_mii;
 struct ifmedia bge_ifmedia;
 u_int32_t bge_expcap;
 u_int32_t bge_msicap;
 u_int32_t bge_mps;
 u_int32_t bge_expmrq;
 u_int32_t bge_lasttag;
 u_int32_t bge_flags;
 u_int32_t bge_phy_flags;
 bus_dma_tag_t bge_dmatag;
 u_int32_t bge_mfw_flags;
 int bge_phy_ape_lock;
 int bge_phy_addr;
 u_int32_t bge_chipid;
 struct bge_ring_data *bge_rdata;
 struct bge_chain_data bge_cdata;
 bus_dmamap_t bge_ring_map;
 bus_dma_segment_t bge_ring_seg;
 int bge_ring_nseg;
 u_int16_t bge_tx_saved_considx;
 u_int16_t bge_rx_saved_considx;
 u_int16_t bge_ev_saved_considx;
 u_int16_t bge_return_ring_cnt;
 u_int32_t bge_tx_prodidx;
 struct if_rxring bge_std_ring;
 u_int16_t bge_std;
 int bge_rx_std_len;
 struct if_rxring bge_jumbo_ring;
 u_int16_t bge_jumbo;
 u_int32_t bge_stat_ticks;
 u_int32_t bge_rx_coal_ticks;
 u_int32_t bge_tx_coal_ticks;
 u_int32_t bge_rx_max_coal_bds;
 u_int32_t bge_tx_max_coal_bds;
 u_int32_t bge_tx_buf_ratio;
 u_int32_t bge_sts;
 uint64_t bge_flowflags;
 int bge_txcnt;
 struct timeout bge_timeout;
 struct timeout bge_rxtimeout;
 struct timeout bge_rxtimeout_jumbo;
 u_int32_t bge_rx_discards;
 u_int32_t bge_tx_discards;
 u_int32_t bge_rx_inerrors;
 u_int32_t bge_rx_overruns;
 u_int32_t bge_tx_collisions;
 bus_dmamap_t bge_txdma[512];
};
const struct bge_revision * bge_lookup_rev(u_int32_t);
int bge_can_use_msi(struct bge_softc *);
int bge_probe(struct device *, void *, void *);
void bge_attach(struct device *, struct device *, void *);
int bge_detach(struct device *, int);
int bge_activate(struct device *, int);
struct cfattach bge_ca = {
 sizeof(struct bge_softc), bge_probe, bge_attach, bge_detach,
 bge_activate
};
struct cfdriver bge_cd = {
 ((void *)0), "bge", DV_IFNET
};
void bge_txeof(struct bge_softc *);
void bge_rxcsum(struct bge_softc *, struct bge_rx_bd *, struct mbuf *);
void bge_rxeof(struct bge_softc *);
void bge_tick(void *);
void bge_stats_update(struct bge_softc *);
void bge_stats_update_regs(struct bge_softc *);
int bge_cksum_pad(struct mbuf *);
int bge_encap(struct bge_softc *, struct mbuf *, int *);
int bge_compact_dma_runt(struct mbuf *);
int bge_intr(void *);
void bge_start(struct ifqueue *);
int bge_ioctl(struct ifnet *, u_long, caddr_t);
int bge_rxrinfo(struct bge_softc *, struct if_rxrinfo *);
void bge_init(void *);
void bge_stop_block(struct bge_softc *, bus_size_t, u_int32_t);
void bge_stop(struct bge_softc *, int);
void bge_watchdog(struct ifnet *);
int bge_ifmedia_upd(struct ifnet *);
void bge_ifmedia_sts(struct ifnet *, struct ifmediareq *);
u_int8_t bge_nvram_getbyte(struct bge_softc *, int, u_int8_t *);
int bge_read_nvram(struct bge_softc *, caddr_t, int, int);
u_int8_t bge_eeprom_getbyte(struct bge_softc *, int, u_int8_t *);
int bge_read_eeprom(struct bge_softc *, caddr_t, int, int);
void bge_iff(struct bge_softc *);
int bge_newbuf_jumbo(struct bge_softc *, int);
int bge_init_rx_ring_jumbo(struct bge_softc *);
void bge_fill_rx_ring_jumbo(struct bge_softc *);
void bge_free_rx_ring_jumbo(struct bge_softc *);
int bge_newbuf(struct bge_softc *, int);
int bge_init_rx_ring_std(struct bge_softc *);
void bge_rxtick(void *);
void bge_fill_rx_ring_std(struct bge_softc *);
void bge_free_rx_ring_std(struct bge_softc *);
void bge_free_tx_ring(struct bge_softc *);
int bge_init_tx_ring(struct bge_softc *);
void bge_chipinit(struct bge_softc *);
int bge_blockinit(struct bge_softc *);
u_int32_t bge_dma_swap_options(struct bge_softc *);
int bge_phy_addr(struct bge_softc *);
u_int32_t bge_readmem_ind(struct bge_softc *, int);
void bge_writemem_ind(struct bge_softc *, int, int);
void bge_writereg_ind(struct bge_softc *, int, int);
void bge_writembx(struct bge_softc *, int, int);
int bge_miibus_readreg(struct device *, int, int);
void bge_miibus_writereg(struct device *, int, int, int);
void bge_miibus_statchg(struct device *);
void bge_sig_post_reset(struct bge_softc *, int);
void bge_sig_legacy(struct bge_softc *, int);
void bge_sig_pre_reset(struct bge_softc *, int);
void bge_stop_fw(struct bge_softc *, int);
void bge_reset(struct bge_softc *);
void bge_link_upd(struct bge_softc *);
void bge_ape_lock_init(struct bge_softc *);
void bge_ape_read_fw_ver(struct bge_softc *);
int bge_ape_lock(struct bge_softc *, int);
void bge_ape_unlock(struct bge_softc *, int);
void bge_ape_send_event(struct bge_softc *, uint32_t);
void bge_ape_driver_state_change(struct bge_softc *, int);
const struct pci_matchid bge_devices[] = {
 { 0x12ae, 0x0003 },
 { 0x12ae, 0x0004 },
 { 0x173b, 0x03e8 },
 { 0x173b, 0x03e9 },
 { 0x173b, 0x03eb },
 { 0x173b, 0x03ea },
 { 0x106b, 0x1645 },
 { 0x14e4, 0x1644 },
 { 0x14e4, 0x1645 },
 { 0x14e4, 0x1646 },
 { 0x14e4, 0x16c6 },
 { 0x14e4, 0x16a6 },
 { 0x14e4, 0x1647 },
 { 0x14e4, 0x16c7 },
 { 0x14e4, 0x16a7 },
 { 0x14e4, 0x1648 },
 { 0x14e4, 0x16a8 },
 { 0x14e4, 0x1649 },
 { 0x14e4, 0x1653 },
 { 0x14e4, 0x166e },
 { 0x14e4, 0x1654 },
 { 0x14e4, 0x165d },
 { 0x14e4, 0x165e },
 { 0x14e4, 0x1668 },
 { 0x14e4, 0x1669 },
 { 0x14e4, 0x1678 },
 { 0x14e4, 0x1679 },
 { 0x14e4, 0x1655 },
 { 0x14e4, 0x1665 },
 { 0x14e4, 0x1656 },
 { 0x14e4, 0x1657 },
 { 0x14e4, 0x165f },
 { 0x14e4, 0x1659 },
 { 0x14e4, 0x165a },
 { 0x14e4, 0x165b },
 { 0x14e4, 0x1643 },
 { 0x14e4, 0x16f3 },
 { 0x14e4, 0x1677 },
 { 0x14e4, 0x167e },
 { 0x14e4, 0x167d },
 { 0x14e4, 0x1600 },
 { 0x14e4, 0x1601 },
 { 0x14e4, 0x16f7 },
 { 0x14e4, 0x16fe },
 { 0x14e4, 0x16fd },
 { 0x14e4, 0x167a },
 { 0x14e4, 0x1672 },
 { 0x14e4, 0x167b },
 { 0x14e4, 0x1673 },
 { 0x14e4, 0x1674 },
 { 0x14e4, 0x1681 },
 { 0x14e4, 0x1680 },
 { 0x14e4, 0x1688 },
 { 0x14e4, 0x1689 },
 { 0x14e4, 0x1687 },
 { 0x14e4, 0x1684 },
 { 0x14e4, 0x166a },
 { 0x14e4, 0x166b },
 { 0x14e4, 0x16dd },
 { 0x14e4, 0x1696 },
 { 0x14e4, 0x1698 },
 { 0x14e4, 0x16a0 },
 { 0x14e4, 0x1699 },
 { 0x14e4, 0x169a },
 { 0x14e4, 0x169b },
 { 0x14e4, 0x167f },
 { 0x14e4, 0x1693 },
 { 0x14e4, 0x169c },
 { 0x14e4, 0x169d },
 { 0x14e4, 0x170d },
 { 0x14e4, 0x170e },
 { 0x14e4, 0x16ff },
 { 0x14e4, 0x1712 },
 { 0x14e4, 0x1713 },
 { 0x14e4, 0x1690 },
 { 0x14e4, 0x16b0 },
 { 0x14e4, 0x1682 },
 { 0x14e4, 0x1642 },
 { 0x14e4, 0x16b4 },
 { 0x14e4, 0x1686 },
 { 0x14e4, 0x1683 },
 { 0x14e4, 0x1692 },
 { 0x14e4, 0x16b1 },
 { 0x14e4, 0x16b7 },
 { 0x14e4, 0x16b5 },
 { 0x14e4, 0x16b3 },
 { 0x14e4, 0x1641 },
 { 0x14e4, 0x1691 },
 { 0x14e4, 0x1694 },
 { 0x14e4, 0x16b2 },
 { 0x14e4, 0x16b6 },
 { 0x10cf, 0x11a2 },
 { 0x10cf, 0x11a1 },
 { 0x10cf, 0x11cc },
 { 0x1148, 0x4400 },
 { 0x10b7, 0x0003 }
};
static const struct bge_revision {
 u_int32_t br_chipid;
 const char *br_name;
} bge_revisions[] = {
 { 0x7000, "BCM5700 A0" },
 { 0x7001, "BCM5700 A1" },
 { 0x7100, "BCM5700 B0" },
 { 0x7101, "BCM5700 B1" },
 { 0x7102, "BCM5700 B2" },
 { 0x7103, "BCM5700 B3" },
 { 0x7104, "BCM5700 Altima" },
 { 0x7200, "BCM5700 C0" },
 { 0x0000, "BCM5701 A0" },
 { 0x0100, "BCM5701 B0" },
 { 0x0102, "BCM5701 B2" },
 { 0x0105, "BCM5701 B5" },
 { 0x1000, "BCM5702/5703 A0" },
 { 0x1001, "BCM5702/5703 A1" },
 { 0x1002, "BCM5702/5703 A2" },
 { 0x1003, "BCM5702/5703 A3" },
 { 0x1100, "BCM5702/5703 B0" },
 { 0x2000, "BCM5704 A0" },
 { 0x2001, "BCM5704 A1" },
 { 0x2002, "BCM5704 A2" },
 { 0x2003, "BCM5704 A3" },
 { 0x2100, "BCM5704 B0" },
 { 0x3000, "BCM5705 A0" },
 { 0x3001, "BCM5705 A1" },
 { 0x3002, "BCM5705 A2" },
 { 0x3003, "BCM5705 A3" },
 { 0x4000, "BCM5750 A0" },
 { 0x4001, "BCM5750 A1" },
 { 0x4003, "BCM5750 A3" },
 { 0x4010, "BCM5750 B0" },
 { 0x4101, "BCM5750 B1" },
 { 0x4200, "BCM5750 C0" },
 { 0x4201, "BCM5750 C1" },
 { 0x4202, "BCM5750 C2" },
 { 0x5000, "BCM5714 A0" },
 { 0x6000, "BCM5752 A0" },
 { 0x6001, "BCM5752 A1" },
 { 0x6002, "BCM5752 A2" },
 { 0x8000, "BCM5714 B0" },
 { 0x8003, "BCM5714 B3" },
 { 0x9000, "BCM5715 A0" },
 { 0x9001, "BCM5715 A1" },
 { 0x9003, "BCM5715 A3" },
 { 0x05717000, "BCM5717 A0" },
 { 0x05717100, "BCM5717 B0" },
 { 0x05719000, "BCM5719 A0" },
 { 0x05720000, "BCM5720 A0" },
 { 0xa000, "BCM5755 A0" },
 { 0xa001, "BCM5755 A1" },
 { 0xa002, "BCM5755 A2" },
 { 0xa200, "BCM5755 C0" },
 { 0x5761000, "BCM5761 A0" },
 { 0x5761100, "BCM5761 A1" },
 { 0x05762000, "BCM5762 A0" },
 { 0x5784000, "BCM5784 A0" },
 { 0x5784100, "BCM5784 A1" },
 { 0xb000, "BCM5754/5787 A0" },
 { 0xb001, "BCM5754/5787 A1" },
 { 0xb002, "BCM5754/5787 A2" },
 { 0xc001, "BCM5906 A1" },
 { 0xc002, "BCM5906 A2" },
 { 0x57785000, "BCM57765 A0" },
 { 0x57785100, "BCM57765 B0" },
 { 0x57780000, "BCM57780 A0" },
 { 0x57780001, "BCM57780 A1" },
 { 0, ((void *)0) }
};
static const struct bge_revision bge_majorrevs[] = {
 { 0x07, "unknown BCM5700" },
 { 0x00, "unknown BCM5701" },
 { 0x01, "unknown BCM5703" },
 { 0x02, "unknown BCM5704" },
 { 0x03, "unknown BCM5705" },
 { 0x04, "unknown BCM5750" },
 { 0x09, "unknown BCM5714" },
 { 0x05, "unknown BCM5714" },
 { 0x06, "unknown BCM5752" },
 { 0x08, "unknown BCM5780" },
 { 0x0a, "unknown BCM5755" },
 { 0x5761, "unknown BCM5761" },
 { 0x5784, "unknown BCM5784" },
 { 0x5785, "unknown BCM5785" },
 { 0x0b, "unknown BCM5754/5787" },
 { 0x0c, "unknown BCM5906" },
 { 0x57785, "unknown BCM57765" },
 { 0x57766, "unknown BCM57766" },
 { 0x57780, "unknown BCM57780" },
 { 0x5717, "unknown BCM5717" },
 { 0x5719, "unknown BCM5719" },
 { 0x5720, "unknown BCM5720" },
 { 0x5762, "unknown BCM5762" },
 { 0, ((void *)0) }
};
u_int32_t
bge_readmem_ind(struct bge_softc *sc, int off)
{
 struct pci_attach_args *pa = &(sc->bge_pa);
 u_int32_t val;
 if (((sc->bge_chipid) >> 12) == 0x0c &&
     off >= 0x00000300 && off < 0x00004000)
  return (0);
 pci_conf_write(pa->pa_pc, pa->pa_tag, 0x7C, off);
 val = pci_conf_read(pa->pa_pc, pa->pa_tag, 0x84);
 pci_conf_write(pa->pa_pc, pa->pa_tag, 0x7C, 0);
 return (val);
}
void
bge_writemem_ind(struct bge_softc *sc, int off, int val)
{
 struct pci_attach_args *pa = &(sc->bge_pa);
 if (((sc->bge_chipid) >> 12) == 0x0c &&
     off >= 0x00000300 && off < 0x00004000)
  return;
 pci_conf_write(pa->pa_pc, pa->pa_tag, 0x7C, off);
 pci_conf_write(pa->pa_pc, pa->pa_tag, 0x84, val);
 pci_conf_write(pa->pa_pc, pa->pa_tag, 0x7C, 0);
}
void
bge_writereg_ind(struct bge_softc *sc, int off, int val)
{
 struct pci_attach_args *pa = &(sc->bge_pa);
 pci_conf_write(pa->pa_pc, pa->pa_tag, 0x78, off);
 pci_conf_write(pa->pa_pc, pa->pa_tag, 0x80, val);
}
void
bge_writembx(struct bge_softc *sc, int off, int val)
{
 if (((sc->bge_chipid) >> 12) == 0x0c)
  off += 0x5800 - 0x0200;
 bus_space_write_4(sc->bge_btag, sc->bge_bhandle, off, val);
}
void
bge_ape_lock_init(struct bge_softc *sc)
{
 struct pci_attach_args *pa = &(sc->bge_pa);
 uint32_t bit, regbase;
 int i;
 if (((sc->bge_chipid) >> 12) == 0x5761)
  regbase = 0x004C;
 else
  regbase = 0x8420;
 for (i = 0; i <= 7; i++) {
  switch (i) {
  case 0:
  case 2:
  case 3:
  case 5:
   bit = 0x00001000;
   break;
  default:
   if (pa->pa_function == 0)
    bit = 0x00001000;
   else
    bit = (1 << pa->pa_function);
  }
  bus_space_write_4(sc->bge_apetag, sc->bge_apehandle, regbase + 4 * i, bit);
 }
 switch (pa->pa_function) {
 case 0:
  sc->bge_phy_ape_lock = 0;
  break;
 case 1:
  sc->bge_phy_ape_lock = 2;
  break;
 case 2:
  sc->bge_phy_ape_lock = 3;
  break;
 case 3:
  sc->bge_phy_ape_lock = 5;
  break;
 default:
  printf("%s: PHY lock not supported on function %d\n",
      sc->bge_dev.dv_xname, pa->pa_function);
  break;
 }
}
void
bge_ape_read_fw_ver(struct bge_softc *sc)
{
 const char *fwtype;
 uint32_t apedata, features;
 apedata = bus_space_read_4(sc->bge_apetag, sc->bge_apehandle, 0x4000);
 if (apedata != 0x41504521) {
  sc->bge_mfw_flags &= ~ 0x00000002;
  return;
 }
 apedata = bus_space_read_4(sc->bge_apetag, sc->bge_apehandle, 0x400C);
 if ((apedata & 0x00000100) == 0) {
  printf("%s: APE signature found but FW status not ready! "
      "0x%08x\n", sc->bge_dev.dv_xname, apedata);
  return;
 }
 sc->bge_mfw_flags |= 0x00000002;
 apedata = bus_space_read_4(sc->bge_apetag, sc->bge_apehandle, 0x4018);
 features = bus_space_read_4(sc->bge_apetag, sc->bge_apehandle, 0x4010);
 if ((features & 0x00000002) != 0) {
  sc->bge_mfw_flags |= 0x00000004;
  fwtype = "NCSI";
 } else if ((features & 0x00000001) != 0) {
  sc->bge_mfw_flags |= 0x00000008;
  fwtype = "DASH";
 } else
  fwtype = "UNKN";
 printf(", APE firmware %s %d.%d.%d.%d", fwtype,
     (apedata & 0xFF000000) >> 24,
     (apedata & 0x00FF0000) >> 16,
     (apedata & 0x0000FF00) >> 8,
     (apedata & 0x000000FF));
}
int
bge_ape_lock(struct bge_softc *sc, int locknum)
{
 struct pci_attach_args *pa = &(sc->bge_pa);
 uint32_t bit, gnt, req, status;
 int i, off;
 if ((sc->bge_mfw_flags & 0x00000002) == 0)
  return (0);
 if (((sc->bge_chipid) >> 12) == 0x5761) {
  req = 0x002C;
  gnt = 0x004C;
 } else {
  req = 0x8400;
  gnt = 0x8420;
 }
 off = 4 * locknum;
 switch (locknum) {
 case 7:
  if (((sc->bge_chipid) >> 12) == 0x5761)
   return (0);
  if (pa->pa_function == 0)
   bit = 0x00001000;
  else
   bit = (1 << pa->pa_function);
  break;
 case 1:
  if (pa->pa_function == 0)
   bit = 0x00001000;
  else
   bit = (1 << pa->pa_function);
  break;
 case 4:
  if (pa->pa_function == 0)
   bit = 0x00001000;
  else
   bit = (1 << pa->pa_function);
  break;
 case 0:
 case 2:
 case 3:
 case 5:
  bit = 0x00001000;
  break;
 default:
  return (22);
 }
 bus_space_write_4(sc->bge_apetag, sc->bge_apehandle, req + off, bit);
 for (i = 0; i < 20000; i++) {
  status = bus_space_read_4(sc->bge_apetag, sc->bge_apehandle, gnt + off);
  if (status == bit)
   break;
  delay(50);
 }
 if (status != bit) {
  printf("%s: APE lock %d request failed! "
      "request = 0x%04x[0x%04x], status = 0x%04x[0x%04x]\n",
      sc->bge_dev.dv_xname,
      locknum, req + off, bit & 0xFFFF, gnt + off,
      status & 0xFFFF);
  bus_space_write_4(sc->bge_apetag, sc->bge_apehandle, gnt + off, bit);
  return (16);
 }
 return (0);
}
void
bge_ape_unlock(struct bge_softc *sc, int locknum)
{
 struct pci_attach_args *pa = &(sc->bge_pa);
 uint32_t bit, gnt;
 int off;
 if ((sc->bge_mfw_flags & 0x00000002) == 0)
  return;
 if (((sc->bge_chipid) >> 12) == 0x5761)
  gnt = 0x004C;
 else
  gnt = 0x8420;
 off = 4 * locknum;
 switch (locknum) {
 case 7:
  if (((sc->bge_chipid) >> 12) == 0x5761)
   return;
  if (pa->pa_function == 0)
   bit = 0x00001000;
  else
   bit = (1 << pa->pa_function);
  break;
 case 1:
  if (pa->pa_function == 0)
   bit = 0x00001000;
  else
   bit = (1 << pa->pa_function);
  break;
 case 4:
  if (pa->pa_function == 0)
   bit = 0x00001000;
  else
   bit = (1 << pa->pa_function);
  break;
 case 0:
 case 2:
 case 3:
 case 5:
  bit = 0x00001000;
  break;
 default:
  return;
 }
 bus_space_write_4(sc->bge_apetag, sc->bge_apehandle, gnt + off, bit);
}
void
bge_ape_send_event(struct bge_softc *sc, uint32_t event)
{
 uint32_t apedata;
 int i;
 if ((sc->bge_mfw_flags & 0x00000002) == 0)
  return;
 for (i = 10; i > 0; i--) {
  if (bge_ape_lock(sc, 4) != 0)
   break;
  apedata = bus_space_read_4(sc->bge_apetag, sc->bge_apehandle, 0x4300);
  if ((apedata & 0x80000000) == 0) {
   bus_space_write_4(sc->bge_apetag, sc->bge_apehandle, 0x4300, event | 0x80000000);
   bge_ape_unlock(sc, 4);
   bus_space_write_4(sc->bge_apetag, sc->bge_apehandle, 0x000C, 0x00000001);
   break;
  }
  bge_ape_unlock(sc, 4);
  delay(100);
 }
 if (i == 0) {
  printf("%s: APE event 0x%08x send timed out\n",
      sc->bge_dev.dv_xname, event);
 }
}
void
bge_ape_driver_state_change(struct bge_softc *sc, int kind)
{
 uint32_t apedata, event;
 if ((sc->bge_mfw_flags & 0x00000002) == 0)
  return;
 switch (kind) {
 case 1:
  apedata = bus_space_read_4(sc->bge_apetag, sc->bge_apehandle, 0x4200);
  if (apedata != 0x484F5354)
   bus_space_write_4(sc->bge_apetag, sc->bge_apehandle, 0x4208, 0);
  else {
   apedata = bus_space_read_4(sc->bge_apetag, sc->bge_apehandle, 0x4208);
   bus_space_write_4(sc->bge_apetag, sc->bge_apehandle, 0x4208, ++apedata);
  }
  bus_space_write_4(sc->bge_apetag, sc->bge_apehandle, 0x4200, 0x484F5354);
  bus_space_write_4(sc->bge_apetag, sc->bge_apehandle, 0x4204, 0x00000020);
  bus_space_write_4(sc->bge_apetag, sc->bge_apehandle, 0x420C, (0xF6000000 | ((1) & 0xffd) << 16 | ((0) & 0xff) << 8));
  bus_space_write_4(sc->bge_apetag, sc->bge_apehandle, 0x4210, 0x00000001);
  bus_space_write_4(sc->bge_apetag, sc->bge_apehandle, 0x4214, 0);
  bus_space_write_4(sc->bge_apetag, sc->bge_apehandle, 0x421C, 0x00000001);
  event = 0x00010000;
  break;
 case 0:
  bus_space_write_4(sc->bge_apetag, sc->bge_apehandle, 0x421C, 0x00000002);
  event = 0x00020000;
  break;
 case 2:
  event = 0x00040000;
  break;
 default:
  return;
 }
 bge_ape_send_event(sc, event | 0x00000010 |
     0x00000500);
}
u_int8_t
bge_nvram_getbyte(struct bge_softc *sc, int addr, u_int8_t *dest)
{
 u_int32_t access, byte = 0;
 int i;
 bus_space_write_4(sc->bge_btag, sc->bge_bhandle, 0x7020, 0x00000002);
 for (i = 0; i < 8000; i++) {
  if (bus_space_read_4(sc->bge_btag, sc->bge_bhandle, 0x7020) & 0x00000200)
   break;
  delay(20);
 }
 if (i == 8000)
  return (1);
 access = bus_space_read_4(sc->bge_btag, sc->bge_bhandle, 0x7024);
 bus_space_write_4(sc->bge_btag, sc->bge_bhandle, 0x7024, access | 0x00000001);
 bus_space_write_4(sc->bge_btag, sc->bge_bhandle, 0x700c, addr & 0xfffffffc);
 bus_space_write_4(sc->bge_btag, sc->bge_bhandle, 0x7000, (0x00000080|0x00000100| 0x00000010|0x00000008));
 for (i = 0; i < 100000 * 10; i++) {
  delay(10);
  if (bus_space_read_4(sc->bge_btag, sc->bge_bhandle, 0x7000) & 0x00000008) {
   delay(10);
   break;
  }
 }
 if (i == 100000 * 10) {
  printf("%s: nvram read timed out\n", sc->bge_dev.dv_xname);
  return (1);
 }
 byte = bus_space_read_4(sc->bge_btag, sc->bge_bhandle, 0x7010);
 *dest = ((__uint32_t)(__builtin_constant_p(byte) ? (__uint32_t)(((__uint32_t)(byte) & 0xff) << 24 | ((__uint32_t)(byte) & 0xff00) << 8 | ((__uint32_t)(byte) & 0xff0000) >> 8 | ((__uint32_t)(byte) & 0xff000000) >> 24) : __swap32md(byte)) >> ((addr % 4) * 8)) & 0xFF;
 bus_space_write_4(sc->bge_btag, sc->bge_bhandle, 0x7024, access);
 bus_space_write_4(sc->bge_btag, sc->bge_bhandle, 0x7020, 0x00000020);
 bus_space_read_4(sc->bge_btag, sc->bge_bhandle, 0x7020);
 return (0);
}
int
bge_read_nvram(struct bge_softc *sc, caddr_t dest, int off, int cnt)
{
 int err = 0, i;
 u_int8_t byte = 0;
 if (((sc->bge_chipid) >> 12) != 0x0c)
  return (1);
 for (i = 0; i < cnt; i++) {
  err = bge_nvram_getbyte(sc, off + i, &byte);
  if (err)
   break;
  *(dest + i) = byte;
 }
 return (err ? 1 : 0);
}
u_int8_t
bge_eeprom_getbyte(struct bge_softc *sc, int addr, u_int8_t *dest)
{
 int i;
 u_int32_t byte = 0;
 bus_space_write_4(sc->bge_btag, sc->bge_bhandle, 0x6808, (bus_space_read_4(sc->bge_btag, sc->bge_bhandle, 0x6808) | (0x01000000)));
 bus_space_write_4(sc->bge_btag, sc->bge_bhandle, 0x6838, 0x20000000|((0x60 & 0x1FF) << 16));
 delay(20);
 bus_space_write_4(sc->bge_btag, sc->bge_bhandle, 0x6838, (((0x60 & 0x1FF) << 16)|((0 & 7) << 26)| 0x02000000|0x80000000|0x40000000) | addr);
 for(i = 0; i < 100000 * 10; i++) {
  delay(10);
  if (bus_space_read_4(sc->bge_btag, sc->bge_bhandle, 0x6838) & 0x40000000)
   break;
 }
 if (i == 100000 * 10) {
  printf("%s: eeprom read timed out\n", sc->bge_dev.dv_xname);
  return (1);
 }
 byte = bus_space_read_4(sc->bge_btag, sc->bge_bhandle, 0x683C);
 *dest = (byte >> ((addr % 4) * 8)) & 0xFF;
 return (0);
}
int
bge_read_eeprom(struct bge_softc *sc, caddr_t dest, int off, int cnt)
{
 int i, error = 0;
 u_int8_t byte = 0;
 for (i = 0; i < cnt; i++) {
  error = bge_eeprom_getbyte(sc, off + i, &byte);
  if (error)
   break;
  *(dest + i) = byte;
 }
 return (error ? 1 : 0);
}
int
bge_miibus_readreg(struct device *dev, int phy, int reg64)
{
 struct bge_softc *sc = (struct bge_softc *)dev;
 u_int32_t val, autopoll;
 int i;
 if (bge_ape_lock(sc, sc->bge_phy_ape_lock) != 0)
  return (0);
 autopoll = bus_space_read_4(sc->bge_btag, sc->bge_bhandle, 0x0454);
 if (autopoll & 0x00000010) {
  ((sc)->bge_sts &= ~(0x00000004));
  bus_space_write_4(sc->bge_btag, sc->bge_bhandle, 0x0454, (bus_space_read_4(sc->bge_btag, sc->bge_bhandle, 0x0454) & ~(0x00000010)));
  delay(80);
 }
 bus_space_write_4(sc->bge_btag, sc->bge_bhandle, 0x044C, 0x08000000|0x20000000| ((phy & 0x1F) << 21)|((reg64 & 0x1F) << 16));
 bus_space_read_4(sc->bge_btag, sc->bge_bhandle, 0x044C);
 for (i = 0; i < 200; i++) {
  delay(1);
  val = bus_space_read_4(sc->bge_btag, sc->bge_bhandle, 0x044C);
  if (!(val & 0x20000000))
   break;
  delay(10);
 }
 if (i == 200) {
  printf("%s: PHY read timed out\n", sc->bge_dev.dv_xname);
  val = 0;
  goto done;
 }
 val = bus_space_read_4(sc->bge_btag, sc->bge_bhandle, 0x044C);
done:
 if (autopoll & 0x00000010) {
  ((sc)->bge_sts |= (0x00000004));
  bus_space_write_4(sc->bge_btag, sc->bge_bhandle, 0x0454, (bus_space_read_4(sc->bge_btag, sc->bge_bhandle, 0x0454) | (0x00000010)));
  delay(80);
 }
 bge_ape_unlock(sc, sc->bge_phy_ape_lock);
 if (val & 0x10000000)
  return (0);
 return (val & 0xFFFF);
}
void
bge_miibus_writereg(struct device *dev, int phy, int reg64, int val)
{
 struct bge_softc *sc = (struct bge_softc *)dev;
 u_int32_t autopoll;
 int i;
 if (((sc->bge_chipid) >> 12) == 0x0c &&
     (reg64 == 0x09 || reg64 == 0x18))
  return;
 if (bge_ape_lock(sc, sc->bge_phy_ape_lock) != 0)
  return;
 autopoll = bus_space_read_4(sc->bge_btag, sc->bge_bhandle, 0x0454);
 if (autopoll & 0x00000010) {
  delay(40);
  ((sc)->bge_sts &= ~(0x00000004));
  bus_space_write_4(sc->bge_btag, sc->bge_bhandle, 0x0454, (bus_space_read_4(sc->bge_btag, sc->bge_bhandle, 0x0454) & ~(0x00000010)));
  delay(40);
 }
 bus_space_write_4(sc->bge_btag, sc->bge_bhandle, 0x044C, 0x04000000|0x20000000| ((phy & 0x1F) << 21)|((reg64 & 0x1F) << 16)|val);
 bus_space_read_4(sc->bge_btag, sc->bge_bhandle, 0x044C);
 for (i = 0; i < 200; i++) {
  delay(1);
  if (!(bus_space_read_4(sc->bge_btag, sc->bge_bhandle, 0x044C) & 0x20000000))
   break;
  delay(10);
 }
 if (autopoll & 0x00000010) {
  ((sc)->bge_sts |= (0x00000004));
  bus_space_write_4(sc->bge_btag, sc->bge_bhandle, 0x0454, (bus_space_read_4(sc->bge_btag, sc->bge_bhandle, 0x0454) | (0x00000010)));
  delay(40);
 }
 bge_ape_unlock(sc, sc->bge_phy_ape_lock);
 if (i == 200) {
  printf("%s: PHY read timed out\n", sc->bge_dev.dv_xname);
 }
}
void
bge_miibus_statchg(struct device *dev)
{
 struct bge_softc *sc = (struct bge_softc *)dev;
 struct mii_data *mii = &sc->bge_mii;
 u_int32_t mac_mode, rx_mode, tx_mode;
 if (((mii->mii_media.ifm_cur->ifm_media) & 0x00000000000000ffULL) == 0ULL &&
     (mii->mii_media_active & (0x0000040000000000ULL|0x0000000000020000ULL|0x0000000000040000ULL)) != sc->bge_flowflags)
  sc->bge_flowflags = mii->mii_media_active & (0x0000040000000000ULL|0x0000000000020000ULL|0x0000000000040000ULL);
 if (!((sc)->bge_sts & (0x00000001)) &&
     mii->mii_media_status & 0x0000000000000002ULL &&
     ((mii->mii_media_active) & 0x00000000000000ffULL) != 2ULL)
  ((sc)->bge_sts |= (0x00000001));
 else if (((sc)->bge_sts & (0x00000001)) &&
     (!(mii->mii_media_status & 0x0000000000000002ULL) ||
     ((mii->mii_media_active) & 0x00000000000000ffULL) == 2ULL))
  ((sc)->bge_sts &= ~(0x00000001));
 if (!((sc)->bge_sts & (0x00000001)))
  return;
 mac_mode = bus_space_read_4(sc->bge_btag, sc->bge_bhandle, 0x0400) &
     ~(0x0000000C | 0x00000002);
 tx_mode = bus_space_read_4(sc->bge_btag, sc->bge_bhandle, 0x045C);
 rx_mode = bus_space_read_4(sc->bge_btag, sc->bge_bhandle, 0x0468);
 if (((mii->mii_media_active) & 0x00000000000000ffULL) == 16 ||
     ((mii->mii_media_active) & 0x00000000000000ffULL) == 11)
  mac_mode |= 0x00000008;
 else
  mac_mode |= 0x00000004;
 tx_mode &= ~0x00000010;
 rx_mode &= ~0x00000004;
 if (mii->mii_media_active & 0x0000010000000000ULL) {
  if (sc->bge_flowflags & 0x0000000000040000ULL)
   tx_mode |= 0x00000010;
  if (sc->bge_flowflags & 0x0000000000020000ULL)
   rx_mode |= 0x00000004;
 } else
  mac_mode |= 0x00000002;
 bus_space_write_4(sc->bge_btag, sc->bge_bhandle, 0x0400, mac_mode);
 delay(40);
 bus_space_write_4(sc->bge_btag, sc->bge_bhandle, 0x045C, tx_mode);
 bus_space_write_4(sc->bge_btag, sc->bge_bhandle, 0x0468, rx_mode);
}
int
bge_newbuf(struct bge_softc *sc, int i)
{
 bus_dmamap_t dmap = sc->bge_cdata.bge_rx_std_map[i];
 struct bge_rx_bd *r = &sc->bge_rdata->bge_rx_std_ring[i];
 struct mbuf *m;
 int error;
 m = m_clget((((void *)0)), (0x0002), (sc->bge_rx_std_len));
 if (!m)
  return (55);
 m->m_hdr.mh_len = m->M_dat.MH.MH_pkthdr.len = sc->bge_rx_std_len;
 if (!(sc->bge_flags & 0x00000008))
     m_adj(m, 2);
 error = bus_dmamap_load_mbuf(sc->bge_dmatag, dmap, m,
     0x0200|0x0001);
 if (error) {
  m_freem(m);
  return (55);
 }
 bus_dmamap_sync(sc->bge_dmatag, dmap, 0, dmap->dm_mapsize,
     0x01);
 sc->bge_cdata.bge_rx_std_chain[i] = m;
 bus_dmamap_sync(sc->bge_dmatag, sc->bge_ring_map,
     __builtin_offsetof(struct bge_ring_data, bge_rx_std_ring) +
  i * sizeof (struct bge_rx_bd),
     sizeof (struct bge_rx_bd),
     0x08);
 do { (r->bge_addr).bge_addr_lo = ((u_int64_t) (dmap->dm_segs[0].ds_addr) & 0xffffffff); if (sizeof(bus_addr_t) == 8) (r->bge_addr).bge_addr_hi = ((u_int64_t) (dmap->dm_segs[0].ds_addr) >> 32); else (r->bge_addr).bge_addr_hi = 0; } while(0);
 r->bge_flags = 0x0004;
 r->bge_len = m->m_hdr.mh_len;
 r->bge_idx = i;
 bus_dmamap_sync(sc->bge_dmatag, sc->bge_ring_map,
     __builtin_offsetof(struct bge_ring_data, bge_rx_std_ring) +
  i * sizeof (struct bge_rx_bd),
     sizeof (struct bge_rx_bd),
     0x04);
 return (0);
}
int
bge_newbuf_jumbo(struct bge_softc *sc, int i)
{
 bus_dmamap_t dmap = sc->bge_cdata.bge_rx_jumbo_map[i];
 struct bge_ext_rx_bd *r = &sc->bge_rdata->bge_rx_jumbo_ring[i];
 struct mbuf *m;
 int error;
 m = m_clget((((void *)0)), (0x0002), (((9022 + 2) + (sizeof(u_int64_t) - ((9022 + 2) % sizeof(u_int64_t))))));
 if (!m)
  return (55);
 m->m_hdr.mh_len = m->M_dat.MH.MH_pkthdr.len = 9022;
 if (!(sc->bge_flags & 0x00000008))
     m_adj(m, 2);
 error = bus_dmamap_load_mbuf(sc->bge_dmatag, dmap, m,
     0x0200|0x0001);
 if (error) {
  m_freem(m);
  return (55);
 }
 bus_dmamap_sync(sc->bge_dmatag, dmap, 0, dmap->dm_mapsize,
     0x01);
 sc->bge_cdata.bge_rx_jumbo_chain[i] = m;
 bus_dmamap_sync(sc->bge_dmatag, sc->bge_ring_map,
     __builtin_offsetof(struct bge_ring_data, bge_rx_jumbo_ring) +
  i * sizeof (struct bge_ext_rx_bd),
     sizeof (struct bge_ext_rx_bd),
     0x08);
 r->bge_bd.bge_flags = 0x0020 | 0x0004;
 r->bge_bd.bge_idx = i;
 r->bge_len3 = r->bge_len2 = r->bge_len1 = 0;
 switch (dmap->dm_nsegs) {
 case 4:
  do { (r->bge_addr3).bge_addr_lo = ((u_int64_t) (dmap->dm_segs[3].ds_addr) & 0xffffffff); if (sizeof(bus_addr_t) == 8) (r->bge_addr3).bge_addr_hi = ((u_int64_t) (dmap->dm_segs[3].ds_addr) >> 32); else (r->bge_addr3).bge_addr_hi = 0; } while(0);
  r->bge_len3 = dmap->dm_segs[3].ds_len;
 case 3:
  do { (r->bge_addr2).bge_addr_lo = ((u_int64_t) (dmap->dm_segs[2].ds_addr) & 0xffffffff); if (sizeof(bus_addr_t) == 8) (r->bge_addr2).bge_addr_hi = ((u_int64_t) (dmap->dm_segs[2].ds_addr) >> 32); else (r->bge_addr2).bge_addr_hi = 0; } while(0);
  r->bge_len2 = dmap->dm_segs[2].ds_len;
 case 2:
  do { (r->bge_addr1).bge_addr_lo = ((u_int64_t) (dmap->dm_segs[1].ds_addr) & 0xffffffff); if (sizeof(bus_addr_t) == 8) (r->bge_addr1).bge_addr_hi = ((u_int64_t) (dmap->dm_segs[1].ds_addr) >> 32); else (r->bge_addr1).bge_addr_hi = 0; } while(0);
  r->bge_len1 = dmap->dm_segs[1].ds_len;
 case 1:
  do { (r->bge_bd.bge_addr).bge_addr_lo = ((u_int64_t) (dmap->dm_segs[0].ds_addr) & 0xffffffff); if (sizeof(bus_addr_t) == 8) (r->bge_bd.bge_addr).bge_addr_hi = ((u_int64_t) (dmap->dm_segs[0].ds_addr) >> 32); else (r->bge_bd.bge_addr).bge_addr_hi = 0; } while(0);
  r->bge_bd.bge_len = dmap->dm_segs[0].ds_len;
  break;
 default:
  panic("%s: %d segments", __func__, dmap->dm_nsegs);
 }
 bus_dmamap_sync(sc->bge_dmatag, sc->bge_ring_map,
     __builtin_offsetof(struct bge_ring_data, bge_rx_jumbo_ring) +
  i * sizeof (struct bge_ext_rx_bd),
     sizeof (struct bge_ext_rx_bd),
     0x04);
 return (0);
}
int
bge_init_rx_ring_std(struct bge_softc *sc)
{
 int i;
 if (((sc->bge_flags) & (0x00000002)))
  return (0);
 for (i = 0; i < 512; i++) {
  if (bus_dmamap_create(sc->bge_dmatag, sc->bge_rx_std_len, 1,
      sc->bge_rx_std_len, 0, 0x0001 | 0x0002,
      &sc->bge_cdata.bge_rx_std_map[i]) != 0) {
   printf("%s: unable to create dmamap for slot %d\n",
       sc->bge_dev.dv_xname, i);
   goto uncreate;
  }
  __builtin_bzero((&sc->bge_rdata->bge_rx_std_ring[i]), (sizeof(struct bge_rx_bd)));
 }
 sc->bge_std = 512 - 1;
 if_rxr_init(&sc->bge_std_ring, 17, 512);
 bge_fill_rx_ring_std(sc);
 ((sc->bge_flags) |= (0x00000002));
 return (0);
uncreate:
 while (--i) {
  bus_dmamap_destroy(sc->bge_dmatag,
      sc->bge_cdata.bge_rx_std_map[i]);
 }
 return (1);
}
void
bge_rxtick(void *arg)
{
 struct bge_softc *sc = arg;
 if (((sc->bge_flags) & (0x00000002)) &&
     ((&sc->bge_std_ring)->rxr_alive) <= 8)
  bge_fill_rx_ring_std(sc);
}
void
bge_rxtick_jumbo(void *arg)
{
 struct bge_softc *sc = arg;
 if (((sc->bge_flags) & (0x00000004)) &&
     ((&sc->bge_jumbo_ring)->rxr_alive) <= 8)
  bge_fill_rx_ring_jumbo(sc);
}
void
bge_fill_rx_ring_std(struct bge_softc *sc)
{
 int i;
 int post = 0;
 u_int slots;
 i = sc->bge_std;
 for (slots = if_rxr_get(&sc->bge_std_ring, 512);
     slots > 0; slots--) {
  (i) = (i + 1) % 512;
  if (bge_newbuf(sc, i) != 0)
   break;
  sc->bge_std = i;
  post = 1;
 }
 do { (&sc->bge_std_ring)->rxr_alive -= (slots); } while (0);
 if (post)
  bge_writembx(sc, 0x026C, sc->bge_std);
 if (((&sc->bge_std_ring)->rxr_alive) <= 8)
  timeout_add(&sc->bge_rxtimeout, 1);
}
void
bge_free_rx_ring_std(struct bge_softc *sc)
{
 bus_dmamap_t dmap;
 struct mbuf *m;
 int i;
 if (!((sc->bge_flags) & (0x00000002)))
  return;
 for (i = 0; i < 512; i++) {
  dmap = sc->bge_cdata.bge_rx_std_map[i];
  m = sc->bge_cdata.bge_rx_std_chain[i];
  if (m != ((void *)0)) {
   bus_dmamap_sync(sc->bge_dmatag, dmap, 0,
       dmap->dm_mapsize, 0x02);
   bus_dmamap_unload(sc->bge_dmatag, dmap);
   m_freem(m);
   sc->bge_cdata.bge_rx_std_chain[i] = ((void *)0);
  }
  bus_dmamap_destroy(sc->bge_dmatag, dmap);
  sc->bge_cdata.bge_rx_std_map[i] = ((void *)0);
  __builtin_bzero((&sc->bge_rdata->bge_rx_std_ring[i]), (sizeof(struct bge_rx_bd)));
 }
 ((sc->bge_flags) &= ~(0x00000002));
}
int
bge_init_rx_ring_jumbo(struct bge_softc *sc)
{
 volatile struct bge_rcb *rcb;
 int i;
 if (((sc->bge_flags) & (0x00000004)))
  return (0);
 for (i = 0; i < 256; i++) {
  if (bus_dmamap_create(sc->bge_dmatag, ((9022 + 2) + (sizeof(u_int64_t) - ((9022 + 2) % sizeof(u_int64_t)))), 4, ((9022 + 2) + (sizeof(u_int64_t) - ((9022 + 2) % sizeof(u_int64_t)))), 0,
      0x0001 | 0x0002,
      &sc->bge_cdata.bge_rx_jumbo_map[i]) != 0) {
   printf("%s: unable to create dmamap for slot %d\n",
       sc->bge_dev.dv_xname, i);
   goto uncreate;
  }
  __builtin_bzero((&sc->bge_rdata->bge_rx_jumbo_ring[i]), (sizeof(struct bge_ext_rx_bd)));
 }
 sc->bge_jumbo = 256 - 1;
 if_rxr_init(&sc->bge_jumbo_ring, 17, 256);
 bge_fill_rx_ring_jumbo(sc);
 ((sc->bge_flags) |= (0x00000004));
 rcb = &sc->bge_rdata->bge_info.bge_jumbo_rx_rcb;
 rcb->bge_maxlen_flags =
     ((0) << 16 | (0x0001));
 bus_space_write_4(sc->bge_btag, sc->bge_bhandle, 0x2448, rcb->bge_maxlen_flags);
 return (0);
uncreate:
 while (--i) {
  bus_dmamap_destroy(sc->bge_dmatag,
      sc->bge_cdata.bge_rx_jumbo_map[i]);
 }
 return (1);
}
void
bge_fill_rx_ring_jumbo(struct bge_softc *sc)
{
 int i;
 int post = 0;
 u_int slots;
 i = sc->bge_jumbo;
 for (slots = if_rxr_get(&sc->bge_jumbo_ring, 256);
     slots > 0; slots--) {
  (i) = (i + 1) % 256;
  if (bge_newbuf_jumbo(sc, i) != 0)
   break;
  sc->bge_jumbo = i;
  post = 1;
 }
 do { (&sc->bge_jumbo_ring)->rxr_alive -= (slots); } while (0);
 if (post)
  bge_writembx(sc, 0x0274, sc->bge_jumbo);
 if (((&sc->bge_jumbo_ring)->rxr_alive) <= 8)
  timeout_add(&sc->bge_rxtimeout_jumbo, 1);
}
void
bge_free_rx_ring_jumbo(struct bge_softc *sc)
{
 bus_dmamap_t dmap;
 struct mbuf *m;
 int i;
 if (!((sc->bge_flags) & (0x00000004)))
  return;
 for (i = 0; i < 256; i++) {
  dmap = sc->bge_cdata.bge_rx_jumbo_map[i];
  m = sc->bge_cdata.bge_rx_jumbo_chain[i];
  if (m != ((void *)0)) {
   bus_dmamap_sync(sc->bge_dmatag, dmap, 0,
       dmap->dm_mapsize, 0x02);
   bus_dmamap_unload(sc->bge_dmatag, dmap);
   m_freem(m);
   sc->bge_cdata.bge_rx_jumbo_chain[i] = ((void *)0);
  }
  bus_dmamap_destroy(sc->bge_dmatag, dmap);
  sc->bge_cdata.bge_rx_jumbo_map[i] = ((void *)0);
  __builtin_bzero((&sc->bge_rdata->bge_rx_jumbo_ring[i]), (sizeof(struct bge_ext_rx_bd)));
 }
 ((sc->bge_flags) &= ~(0x00000004));
}
void
bge_free_tx_ring(struct bge_softc *sc)
{
 int i;
 if (!(sc->bge_flags & 0x00000001))
  return;
 for (i = 0; i < 512; i++) {
  if (sc->bge_cdata.bge_tx_chain[i] != ((void *)0)) {
   m_freem(sc->bge_cdata.bge_tx_chain[i]);
   sc->bge_cdata.bge_tx_chain[i] = ((void *)0);
   sc->bge_cdata.bge_tx_map[i] = ((void *)0);
  }
  __builtin_bzero((&sc->bge_rdata->bge_tx_ring[i]), (sizeof(struct bge_tx_bd)));
  bus_dmamap_destroy(sc->bge_dmatag, sc->bge_txdma[i]);
 }
 sc->bge_flags &= ~0x00000001;
}
int
bge_init_tx_ring(struct bge_softc *sc)
{
 int i;
 bus_size_t txsegsz, txmaxsegsz;
 if (sc->bge_flags & 0x00000001)
  return (0);
 sc->bge_txcnt = 0;
 sc->bge_tx_saved_considx = 0;
 sc->bge_tx_prodidx = 0;
 bge_writembx(sc, 0x0304, sc->bge_tx_prodidx);
 if (((sc->bge_chipid) >> 8) == 0x71)
  bge_writembx(sc, 0x0304, sc->bge_tx_prodidx);
 bge_writembx(sc, 0x0384, 0);
 if (((sc->bge_chipid) >> 8) == 0x71)
  bge_writembx(sc, 0x0384, 0);
 if (((sc)->bge_flags & 0x00000100)) {
  txsegsz = 4096;
  txmaxsegsz = ((9022 + 2) + (sizeof(u_int64_t) - ((9022 + 2) % sizeof(u_int64_t))));
 } else {
  txsegsz = (1 << 11);
  txmaxsegsz = (1 << 11);
 }
 for (i = 0; i < 512; i++) {
  if (bus_dmamap_create(sc->bge_dmatag, txmaxsegsz,
      30, txsegsz, 0, 0x0001, &sc->bge_txdma[i]))
   return (55);
 }
 sc->bge_flags |= 0x00000001;
 return (0);
}
void
bge_iff(struct bge_softc *sc)
{
 struct arpcom *ac = &sc->arpcom;
 struct ifnet *ifp = &ac->ac_if;
 struct ether_multi *enm;
 struct ether_multistep step;
 u_int8_t hashes[16];
 u_int32_t h, rxmode;
 rxmode = bus_space_read_4(sc->bge_btag, sc->bge_bhandle, 0x0468) & ~0x00000100;
 ifp->if_flags &= ~0x200;
 __builtin_memset((hashes), (0x00), (sizeof(hashes)));
 if (ifp->if_flags & 0x100) {
  ifp->if_flags |= 0x200;
  rxmode |= 0x00000100;
 } else if (ac->ac_multirangecnt > 0) {
  ifp->if_flags |= 0x200;
  __builtin_memset((hashes), (0xff), (sizeof(hashes)));
 } else {
  do { (step).e_enm = ((&(ac)->ac_multiaddrs)->lh_first); do { if ((((enm)) = ((step)).e_enm) != ((void *)0)) ((step)).e_enm = ((((enm)))->enm_list.le_next); } while ( 0); } while ( 0);
  while (enm != ((void *)0)) {
   h = ether_crc32_le(enm->enm_addrlo, 6);
   ((hashes)[(h & 0x7F)>>3] |= 1<<((h & 0x7F)&(8 -1)));
   do { if (((enm) = (step).e_enm) != ((void *)0)) (step).e_enm = (((enm))->enm_list.le_next); } while ( 0);
  }
 }
 bus_space_write_raw_region_4(sc->bge_btag, sc->bge_bhandle, 0x0470,
     hashes, sizeof(hashes));
 bus_space_write_4(sc->bge_btag, sc->bge_bhandle, 0x0468, rxmode);
}
void
bge_sig_pre_reset(struct bge_softc *sc, int type)
{
 if (type == 1 || type == 2)
  bge_ape_driver_state_change(sc, type);
}
void
bge_sig_post_reset(struct bge_softc *sc, int type)
{
 if (type == 0)
  bge_ape_driver_state_change(sc, type);
}
void
bge_sig_legacy(struct bge_softc *sc, int type)
{
}
void
bge_stop_fw(struct bge_softc *sc, int type)
{
}
u_int32_t
bge_dma_swap_options(struct bge_softc *sc)
{
 u_int32_t dma_options = 0x00000004|0x00000002| 0x00000010|0x00000020;
 if (((sc->bge_chipid) >> 12) == 0x5720) {
  dma_options |= 0x00000040 |
      0x00000080 | 0x00008000 |
      0x00040000;
 }
 return (dma_options);
}
int
bge_phy_addr(struct bge_softc *sc)
{
 struct pci_attach_args *pa = &(sc->bge_pa);
 int phy_addr = 1;
 switch (((sc->bge_chipid) >> 12)) {
 case 0x5717:
 case 0x5719:
 case 0x5720:
  phy_addr = pa->pa_function;
  if (sc->bge_chipid != 0x05717000) {
   phy_addr += (bus_space_read_4(sc->bge_btag, sc->bge_bhandle, 0x05B4) &
       0x00000100) ? 8 : 1;
  } else {
   phy_addr += (bus_space_read_4(sc->bge_btag, sc->bge_bhandle, 0x3664) &
       0x00000020) ? 8 : 1;
  }
 }
 return (phy_addr);
}
void
bge_chipinit(struct bge_softc *sc)
{
 struct pci_attach_args *pa = &(sc->bge_pa);
 u_int32_t dma_rw_ctl, misc_ctl, mode_ctl;
 int i;
 misc_ctl = (0x00000008|0x00000001| 0x00000002|0x00000080);
 if (sc->bge_flags & 0x00200000)
  misc_ctl |= 0x00000200;
 pci_conf_write(pa->pa_pc, pa->pa_tag, 0x68,
     misc_ctl);
 for (i = 0x00000300;
     i < 0x00000AFF + 1; i += sizeof(u_int32_t))
  do { pci_conf_write(pa->pa_pc, pa->pa_tag, 0x7C, (0xFFFF8000 & i)); bus_space_write_4(sc->bge_btag, sc->bge_bhandle, 0x00008000 + (i & 0x7FFF), 0); } while(0);
 for (i = 0x00000B00;
     i < 0x00000B4F + 1; i += sizeof(u_int32_t))
  do { pci_conf_write(pa->pa_pc, pa->pa_tag, 0x7C, (0xFFFF8000 & i)); bus_space_write_4(sc->bge_btag, sc->bge_bhandle, 0x00008000 + (i & 0x7FFF), 0); } while(0);
 if (((sc->bge_chipid) >> 12) == 0x57785 ||
     ((sc->bge_chipid) >> 12) == 0x57766) {
  if (((sc->bge_chipid) >> 8) != 0x577850) {
      bus_space_write_4(sc->bge_btag, sc->bge_bhandle, 0x3668, bus_space_read_4(sc->bge_btag, sc->bge_bhandle, 0x3668) | 0x00040000);
  }
 }
 dma_rw_ctl = ((6) << 24) |
     ((7) << 28);
 if (sc->bge_flags & 0x00000020) {
  if (sc->bge_mps >= 256)
   dma_rw_ctl |= ((7) << 19);
  else
   dma_rw_ctl |= ((3) << 19);
 } else if (sc->bge_flags & 0x00000010) {
  if (((sc)->bge_flags & 0x00008000)) {
   dma_rw_ctl |= ((2) << 16) |
       ((2) << 19);
   if (((sc->bge_chipid) >> 12) == 0x08)
    dma_rw_ctl |= 0x00004000;
   else
    dma_rw_ctl |= 0x00008000;
  } else if (((sc->bge_chipid) >> 12) == 0x02) {
   dma_rw_ctl |= ((7) << 16) |
       ((3) << 19);
  } else {
   dma_rw_ctl |= ((3) << 16) |
       ((3) << 19) |
       (0x0F);
  }
  if (((sc->bge_chipid) >> 12) == 0x01 ||
      ((sc->bge_chipid) >> 12) == 0x02) {
   u_int32_t tmp;
   tmp = bus_space_read_4(sc->bge_btag, sc->bge_bhandle, 0x74) & 0x1f;
   if (tmp == 6 || tmp == 7)
    dma_rw_ctl |=
        0x00004000;
   dma_rw_ctl |= 0x00800000;
  }
 } else {
  dma_rw_ctl |= ((7) << 16) |
      ((7) << 19);
  if (((sc->bge_chipid) >> 12) != 0x03 &&
      ((sc->bge_chipid) >> 12) != 0x04)
   dma_rw_ctl |= 0x0F;
 }
 if (((sc->bge_chipid) >> 12) == 0x07 ||
     ((sc->bge_chipid) >> 12) == 0x00)
  dma_rw_ctl |= 0x00400000 |
      0x00800000;
 if (((sc->bge_chipid) >> 12) == 0x01 ||
     ((sc->bge_chipid) >> 12) == 0x02)
  dma_rw_ctl &= ~0x000000FF;
 if (((sc)->bge_flags & 0x00020000)) {
  dma_rw_ctl &= ~0x00000001;
  if (sc->bge_chipid == 0x57785000)
   dma_rw_ctl &= ~0x00000380;
  if (!((sc)->bge_flags & 0x00040000) &&
      ((sc->bge_chipid) >> 12) != 0x5717 &&
      ((sc->bge_chipid) >> 12) != 0x5762)
   dma_rw_ctl |= 0x00000080;
 }
 pci_conf_write(pa->pa_pc, pa->pa_tag, 0x6C, dma_rw_ctl);
 mode_ctl = bge_dma_swap_options(sc);
 if (((sc->bge_chipid) >> 12) == 0x5720 ||
     ((sc->bge_chipid) >> 12) == 0x5762) {
  mode_ctl |= bus_space_read_4(sc->bge_btag, sc->bge_bhandle, 0x6800) &
      (0x00000040 |
      0x00000080 |
      0x00008000 | 0x00040000);
 }
 mode_ctl |= 0x04000000 | 0x00020000 |
     0x00100000;
 if (((sc->bge_chipid) >> 12) == 0x00 &&
     sc->bge_chipid == 0x0105)
  mode_ctl |= 0x00008000;
 bus_space_write_4(sc->bge_btag, sc->bge_bhandle, 0x6800, mode_ctl);
 pci_conf_write(pa->pa_pc, pa->pa_tag, 0x04, (pci_conf_read(pa->pa_pc, pa->pa_tag, 0x04) & ~(0x00000010)));
 bus_space_write_4(sc->bge_btag, sc->bge_bhandle, 0x6804, (0x41 << 1));
 if (((sc->bge_chipid) >> 12) == 0x0c) {
  delay(40);
  bus_space_write_4(sc->bge_btag, sc->bge_bhandle, 0x6804, (bus_space_read_4(sc->bge_btag, sc->bge_bhandle, 0x6804) & ~(0x00200000)));
  bus_space_read_4(sc->bge_btag, sc->bge_bhandle, 0x6804);
  delay(40);
 }
}
int
bge_blockinit(struct bge_softc *sc)
{
 volatile struct bge_rcb *rcb;
 vaddr_t rcb_addr;
 bge_hostaddr taddr;
 u_int32_t dmactl, rdmareg, mimode, val;
 int i, limit;
 bus_space_write_4(sc->bge_btag, sc->bge_bhandle, 0x7C, 0);
 if (!((sc)->bge_flags & 0x00001000)) {
  bus_space_write_4(sc->bge_btag, sc->bge_bhandle, 0x4408, 0x00008000);
  if (((sc->bge_chipid) >> 12) == 0x02)
   bus_space_write_4(sc->bge_btag, sc->bge_bhandle, 0x440C, 0x10000);
  else
   bus_space_write_4(sc->bge_btag, sc->bge_bhandle, 0x440C, 0x18000);
  bus_space_write_4(sc->bge_btag, sc->bge_bhandle, 0x442C, 0x00002000);
  bus_space_write_4(sc->bge_btag, sc->bge_bhandle, 0x4430, 0x2000);
 }
 if (((sc)->bge_flags & 0x00020000)) {
  bus_space_write_4(sc->bge_btag, sc->bge_bhandle, 0x4410, 0x0);
  bus_space_write_4(sc->bge_btag, sc->bge_bhandle, 0x4414, 0x2a);
  bus_space_write_4(sc->bge_btag, sc->bge_bhandle, 0x4418, 0xa0);
 } else if (((sc)->bge_flags & 0x00001000)) {
  bus_space_write_4(sc->bge_btag, sc->bge_bhandle, 0x4410, 0x0);
  if (((sc->bge_chipid) >> 12) == 0x0c) {
   bus_space_write_4(sc->bge_btag, sc->bge_bhandle, 0x4414, 0x04);
   bus_space_write_4(sc->bge_btag, sc->bge_bhandle, 0x4418, 0x10);
  } else {
   bus_space_write_4(sc->bge_btag, sc->bge_bhandle, 0x4414, 0x10);
   bus_space_write_4(sc->bge_btag, sc->bge_bhandle, 0x4418, 0x60);
  }
 } else {
  bus_space_write_4(sc->bge_btag, sc->bge_bhandle, 0x4410, 0x50);
  bus_space_write_4(sc->bge_btag, sc->bge_bhandle, 0x4414, 0x20);
  bus_space_write_4(sc->bge_btag, sc->bge_bhandle, 0x4418, 0x60);
 }
 bus_space_write_4(sc->bge_btag, sc->bge_bhandle, 0x4434, 5);
 bus_space_write_4(sc->bge_btag, sc->bge_bhandle, 0x4438, 10);
 val = 0x00000002 | 0x00000010;
 if (((sc->bge_chipid) >> 12) == 0x5719)
  val |= 0x80000000;
 bus_space_write_4(sc->bge_btag, sc->bge_bhandle, 0x4400, val);
 for (i = 0; i < 2000; i++) {
  if (bus_space_read_4(sc->bge_btag, sc->bge_bhandle, 0x4400) & 0x00000002)
   break;
  delay(10);
 }
 if (i == 2000) {
  printf("%s: buffer manager failed to start\n",
      sc->bge_dev.dv_xname);
  return (6);
 }
 bus_space_write_4(sc->bge_btag, sc->bge_bhandle, 0x5C00, 0xFFFFFFFF);
 bus_space_write_4(sc->bge_btag, sc->bge_bhandle, 0x5C00, 0);
 for (i = 0; i < 2000; i++) {
  if (bus_space_read_4(sc->bge_btag, sc->bge_bhandle, 0x5C00) == 0)
   break;
  delay(10);
 }
 if (i == 2000) {
  printf("%s: flow-through queue init failed\n",
      sc->bge_dev.dv_xname);
  return (6);
 }
 rcb = &sc->bge_rdata->bge_info.bge_std_rx_rcb;
 do { (rcb->bge_hostaddr).bge_addr_lo = ((u_int64_t) (((sc)->bge_ring_map->dm_segs[0].ds_addr + __builtin_offsetof(struct bge_ring_data, bge_rx_std_ring))) & 0xffffffff); if (sizeof(bus_addr_t) == 8) (rcb->bge_hostaddr).bge_addr_hi = ((u_int64_t) (((sc)->bge_ring_map->dm_segs[0].ds_addr + __builtin_offsetof(struct bge_ring_data, bge_rx_std_ring))) >> 32); else (rcb->bge_hostaddr).bge_addr_hi = 0; } while(0);
 if (((sc)->bge_flags & 0x00020000)) {
  rcb->bge_maxlen_flags =
      ((512) << 16 | (1536 << 2));
 } else if (((sc)->bge_flags & 0x00001000)) {
  rcb->bge_maxlen_flags = ((512) << 16 | (0));
 } else {
  rcb->bge_maxlen_flags =
      ((1536) << 16 | (0));
 }
 if (((sc->bge_chipid) >> 12) == 0x5717 ||
     ((sc->bge_chipid) >> 12) == 0x5719 ||
     ((sc->bge_chipid) >> 12) == 0x5720)
  rcb->bge_nicaddr = 0x00040000;
 else
  rcb->bge_nicaddr = 0x00006000;
 bus_space_write_4(sc->bge_btag, sc->bge_bhandle, 0x2450, rcb->bge_hostaddr.bge_addr_hi);
 bus_space_write_4(sc->bge_btag, sc->bge_bhandle, 0x2454, rcb->bge_hostaddr.bge_addr_lo);
 bus_space_write_4(sc->bge_btag, sc->bge_bhandle, 0x2458, rcb->bge_maxlen_flags);
 bus_space_write_4(sc->bge_btag, sc->bge_bhandle, 0x245C, rcb->bge_nicaddr);
 bge_writembx(sc, 0x026C, 0);
 if (sc->bge_flags & 0x01000000) {
  rcb = &sc->bge_rdata->bge_info.bge_jumbo_rx_rcb;
  do { (rcb->bge_hostaddr).bge_addr_lo = ((u_int64_t) (((sc)->bge_ring_map->dm_segs[0].ds_addr + __builtin_offsetof(struct bge_ring_data, bge_rx_jumbo_ring))) & 0xffffffff); if (sizeof(bus_addr_t) == 8) (rcb->bge_hostaddr).bge_addr_hi = ((u_int64_t) (((sc)->bge_ring_map->dm_segs[0].ds_addr + __builtin_offsetof(struct bge_ring_data, bge_rx_jumbo_ring))) >> 32); else (rcb->bge_hostaddr).bge_addr_hi = 0; } while(0);
  rcb->bge_maxlen_flags = ((0) << 16 | (0x0001 | 0x0002));
  if (((sc->bge_chipid) >> 12) == 0x5717 ||
      ((sc->bge_chipid) >> 12) == 0x5719 ||
      ((sc->bge_chipid) >> 12) == 0x5720)
   rcb->bge_nicaddr = 0x00044400;
  else
   rcb->bge_nicaddr = 0x00007000;
  bus_space_write_4(sc->bge_btag, sc->bge_bhandle, 0x2440, rcb->bge_hostaddr.bge_addr_hi);
  bus_space_write_4(sc->bge_btag, sc->bge_bhandle, 0x2444, rcb->bge_hostaddr.bge_addr_lo);
  bus_space_write_4(sc->bge_btag, sc->bge_bhandle, 0x2448, rcb->bge_maxlen_flags);
  bus_space_write_4(sc->bge_btag, sc->bge_bhandle, 0x244C, rcb->bge_nicaddr);
  bge_writembx(sc, 0x0274, 0);
 }
 if (((sc)->bge_flags & 0x00010000)) {
  rcb = &sc->bge_rdata->bge_info.bge_mini_rx_rcb;
  rcb->bge_maxlen_flags =
      ((0) << 16 | (0x0002));
  bus_space_write_4(sc->bge_btag, sc->bge_bhandle, 0x2468, rcb->bge_maxlen_flags);
  bge_writembx(sc, 0x027C, 0);
  bus_dmamap_sync(sc->bge_dmatag, sc->bge_ring_map,
      __builtin_offsetof(struct bge_ring_data, bge_info),
      sizeof (struct bge_gib),
      0x01|0x04);
 }
 if (((sc->bge_chipid) >> 12) == 0x0c) {
  if (sc->bge_chipid == 0xc000 ||
      sc->bge_chipid == 0xc001 ||
      sc->bge_chipid == 0xc002)
   bus_space_write_4(sc->bge_btag, sc->bge_bhandle, 0x0C20, (bus_space_read_4(sc->bge_btag, sc->bge_bhandle, 0x0C20) & ~3) | 2);
 }
 bus_space_write_4(sc->bge_btag, sc->bge_bhandle, 0x2C18, 8);
 if (sc->bge_flags & 0x01000000)
  bus_space_write_4(sc->bge_btag, sc->bge_bhandle, 0x2C1C, 8);
 if (((sc)->bge_flags & 0x00020000)) {
  bus_space_write_4(sc->bge_btag, sc->bge_bhandle, 0x2D00, 4);
  bus_space_write_4(sc->bge_btag, sc->bge_bhandle, 0x2D04, 4);
 }
 if (((sc)->bge_flags & 0x00010000)) {
  limit = 16;
 } else if (((sc)->bge_flags & 0x00040000) ||
     ((sc->bge_chipid) >> 12) == 0x5762)
  limit = 2;
 else if (((sc)->bge_flags & 0x00020000))
  limit = 4;
 else
  limit = 1;
 rcb_addr = 0x00008000 + 0x00000100;
 for (i = 0; i < limit; i++) {
  bus_space_write_4(sc->bge_btag, sc->bge_bhandle, rcb_addr + __builtin_offsetof(struct bge_rcb, bge_maxlen_flags), ((0) << 16 | (0x0002)));
  bus_space_write_4(sc->bge_btag, sc->bge_bhandle, rcb_addr + __builtin_offsetof(struct bge_rcb, bge_nicaddr), 0);
  rcb_addr += sizeof(struct bge_rcb);
 }
 rcb_addr = 0x00008000 + 0x00000100;
 do { (taddr).bge_addr_lo = ((u_int64_t) (((sc)->bge_ring_map->dm_segs[0].ds_addr + __builtin_offsetof(struct bge_ring_data, bge_tx_ring))) & 0xffffffff); if (sizeof(bus_addr_t) == 8) (taddr).bge_addr_hi = ((u_int64_t) (((sc)->bge_ring_map->dm_segs[0].ds_addr + __builtin_offsetof(struct bge_ring_data, bge_tx_ring))) >> 32); else (taddr).bge_addr_hi = 0; } while(0);
 bus_space_write_4(sc->bge_btag, sc->bge_bhandle, rcb_addr + __builtin_offsetof(struct bge_rcb, bge_hostaddr.bge_addr_hi), taddr.bge_addr_hi);
 bus_space_write_4(sc->bge_btag, sc->bge_bhandle, rcb_addr + __builtin_offsetof(struct bge_rcb, bge_hostaddr.bge_addr_lo), taddr.bge_addr_lo);
 if (((sc->bge_chipid) >> 12) == 0x5717 ||
     ((sc->bge_chipid) >> 12) == 0x5719 ||
     ((sc->bge_chipid) >> 12) == 0x5720)
  bus_space_write_4(sc->bge_btag, sc->bge_bhandle, rcb_addr + __builtin_offsetof(struct bge_rcb, bge_nicaddr), 0x00004000);
 else
  bus_space_write_4(sc->bge_btag, sc->bge_bhandle, rcb_addr + __builtin_offsetof(struct bge_rcb, bge_nicaddr), 0x00004000 + ((0 * sizeof(struct bge_tx_bd) * 512) / 4));
 bus_space_write_4(sc->bge_btag, sc->bge_bhandle, rcb_addr + __builtin_offsetof(struct bge_rcb, bge_maxlen_flags), ((512) << 16 | (0)));
 if (((sc->bge_chipid) >> 12) == 0x5717 ||
     ((sc->bge_chipid) >> 12) == 0x5719 ||
     ((sc->bge_chipid) >> 12) == 0x5720) {
  limit = 16;
 } else if (((sc)->bge_flags & 0x00010000))
  limit = 16;
 else if (((sc->bge_chipid) >> 12) == 0x0a ||
     ((sc->bge_chipid) >> 12) == 0x5762 ||
     ((sc)->bge_flags & 0x00040000))
  limit = 4;
 else
  limit = 1;
 rcb_addr = 0x00008000 + 0x00000200;
 for (i = 0; i < limit; i++) {
  bus_space_write_4(sc->bge_btag, sc->bge_bhandle, rcb_addr + __builtin_offsetof(struct bge_rcb, bge_hostaddr.bge_addr_hi), 0);
  bus_space_write_4(sc->bge_btag, sc->bge_bhandle, rcb_addr + __builtin_offsetof(struct bge_rcb, bge_hostaddr.bge_addr_lo), 0);
  bus_space_write_4(sc->bge_btag, sc->bge_bhandle, rcb_addr + __builtin_offsetof(struct bge_rcb, bge_maxlen_flags), ((sc->bge_return_ring_cnt) << 16 | (0x0002)));
  bus_space_write_4(sc->bge_btag, sc->bge_bhandle, rcb_addr + __builtin_offsetof(struct bge_rcb, bge_nicaddr), 0);
  bge_writembx(sc, 0x0284 +
      (i * (sizeof(u_int64_t))), 0);
  rcb_addr += sizeof(struct bge_rcb);
 }
 rcb_addr = 0x00008000 + 0x00000200;
 do { (taddr).bge_addr_lo = ((u_int64_t) (((sc)->bge_ring_map->dm_segs[0].ds_addr + __builtin_offsetof(struct bge_ring_data, bge_rx_return_ring))) & 0xffffffff); if (sizeof(bus_addr_t) == 8) (taddr).bge_addr_hi = ((u_int64_t) (((sc)->bge_ring_map->dm_segs[0].ds_addr + __builtin_offsetof(struct bge_ring_data, bge_rx_return_ring))) >> 32); else (taddr).bge_addr_hi = 0; } while(0);
 bus_space_write_4(sc->bge_btag, sc->bge_bhandle, rcb_addr + __builtin_offsetof(struct bge_rcb, bge_hostaddr.bge_addr_hi), taddr.bge_addr_hi);
 bus_space_write_4(sc->bge_btag, sc->bge_bhandle, rcb_addr + __builtin_offsetof(struct bge_rcb, bge_hostaddr.bge_addr_lo), taddr.bge_addr_lo);
 bus_space_write_4(sc->bge_btag, sc->bge_bhandle, rcb_addr + __builtin_offsetof(struct bge_rcb, bge_nicaddr), 0x00000000);
 bus_space_write_4(sc->bge_btag, sc->bge_bhandle, rcb_addr + __builtin_offsetof(struct bge_rcb, bge_maxlen_flags), ((sc->bge_return_ring_cnt) << 16 | (0)));
 bus_space_write_4(sc->bge_btag, sc->bge_bhandle, 0x0438, (sc->arpcom.ac_enaddr[0] + sc->arpcom.ac_enaddr[1] + sc->arpcom.ac_enaddr[2] + sc->arpcom.ac_enaddr[3] + sc->arpcom.ac_enaddr[4] + sc->arpcom.ac_enaddr[5]) & 0x3FF);
 val = 0x2620;
 if (((sc->bge_chipid) >> 12) == 0x5720 ||
     ((sc->bge_chipid) >> 12) == 0x5762)
  val |= bus_space_read_4(sc->bge_btag, sc->bge_bhandle, 0x0464) &
      (0x00FF0000 | 0xFF000000);
 bus_space_write_4(sc->bge_btag, sc->bge_bhandle, 0x0464, val);
 bus_space_write_4(sc->bge_btag, sc->bge_bhandle, 0x0500, 0x08);
 bus_space_write_4(sc->bge_btag, sc->bge_bhandle, 0x2010, 0x181);
 bus_space_write_4(sc->bge_btag, sc->bge_bhandle, 0x2018, 0x007BFFFF);
 bus_space_write_4(sc->bge_btag, sc->bge_bhandle, 0x2014, 0x1);
 bus_space_write_4(sc->bge_btag, sc->bge_bhandle, 0x3C00, 0x00000000);
 for (i = 0; i < 2000; i++) {
  if (!(bus_space_read_4(sc->bge_btag, sc->bge_bhandle, 0x3C00) & 0x00000002))
   break;
  delay(10);
 }
 if (i == 2000) {
  printf("%s: host coalescing engine failed to idle\n",
      sc->bge_dev.dv_xname);
  return (6);
 }
 bus_space_write_4(sc->bge_btag, sc->bge_bhandle, 0x3C08, sc->bge_rx_coal_ticks);
 bus_space_write_4(sc->bge_btag, sc->bge_bhandle, 0x3C0C, sc->bge_tx_coal_ticks);
 bus_space_write_4(sc->bge_btag, sc->bge_bhandle, 0x3C10, sc->bge_rx_max_coal_bds);
 bus_space_write_4(sc->bge_btag, sc->bge_bhandle, 0x3C14, sc->bge_tx_max_coal_bds);
 if (!(((sc)->bge_flags & 0x00001000))) {
  bus_space_write_4(sc->bge_btag, sc->bge_bhandle, 0x3C18, 0);
  bus_space_write_4(sc->bge_btag, sc->bge_bhandle, 0x3C1C, 0);
 }
 bus_space_write_4(sc->bge_btag, sc->bge_bhandle, 0x3C20, 0);
 bus_space_write_4(sc->bge_btag, sc->bge_bhandle, 0x3C24, 0);
 if (!(((sc)->bge_flags & 0x00001000))) {
  do { (taddr).bge_addr_lo = ((u_int64_t) (((sc)->bge_ring_map->dm_segs[0].ds_addr + __builtin_offsetof(struct bge_ring_data, bge_info.bge_stats))) & 0xffffffff); if (sizeof(bus_addr_t) == 8) (taddr).bge_addr_hi = ((u_int64_t) (((sc)->bge_ring_map->dm_segs[0].ds_addr + __builtin_offsetof(struct bge_ring_data, bge_info.bge_stats))) >> 32); else (taddr).bge_addr_hi = 0; } while(0);
  bus_space_write_4(sc->bge_btag, sc->bge_bhandle, 0x3C30, taddr.bge_addr_hi);
  bus_space_write_4(sc->bge_btag, sc->bge_bhandle, 0x3C34, taddr.bge_addr_lo);
  bus_space_write_4(sc->bge_btag, sc->bge_bhandle, 0x3C40, 0x00000300);
  bus_space_write_4(sc->bge_btag, sc->bge_bhandle, 0x3C44, 0x00000B00);
  bus_space_write_4(sc->bge_btag, sc->bge_bhandle, 0x3C28, sc->bge_stat_ticks);
 }
 do { (taddr).bge_addr_lo = ((u_int64_t) (((sc)->bge_ring_map->dm_segs[0].ds_addr + __builtin_offsetof(struct bge_ring_data, bge_status_block))) & 0xffffffff); if (sizeof(bus_addr_t) == 8) (taddr).bge_addr_hi = ((u_int64_t) (((sc)->bge_ring_map->dm_segs[0].ds_addr + __builtin_offsetof(struct bge_ring_data, bge_status_block))) >> 32); else (taddr).bge_addr_hi = 0; } while(0);
 bus_space_write_4(sc->bge_btag, sc->bge_bhandle, 0x3C38, taddr.bge_addr_hi);
 bus_space_write_4(sc->bge_btag, sc->bge_bhandle, 0x3C3C, taddr.bge_addr_lo);
 sc->bge_rdata->bge_status_block.bge_idx[0].bge_rx_prod_idx = 0;
 sc->bge_rdata->bge_status_block.bge_idx[0].bge_tx_cons_idx = 0;
 if (((sc->bge_chipid) >> 12) == 0x07 &&
     sc->bge_chipid != 0x7200) {
  val = 0x00000000;
  __builtin_bzero((&sc->bge_rdata->bge_status_block), (sizeof (struct bge_status_block)));
 } else {
  val = 0x00000100;
  __builtin_bzero((&sc->bge_rdata->bge_status_block), (32));
 }
 bus_space_write_4(sc->bge_btag, sc->bge_bhandle, 0x3C00, val | 0x00000002);
 bus_space_write_4(sc->bge_btag, sc->bge_bhandle, 0x3000, 0x00000002|0x00000004);
 bus_space_write_4(sc->bge_btag, sc->bge_bhandle, 0x2000, 0x00000002);
 if (!(((sc)->bge_flags & 0x00001000)))
  bus_space_write_4(sc->bge_btag, sc->bge_bhandle, 0x3400, 0x00000002);
 val = 0x00200000 | 0x00400000 |
     0x00001000 | 0x00008000 |
     0x00000800 | 0x00004000 |
     0x00800000;
 if (sc->bge_flags & 0x00000200)
     val |= 0x0000000C;
 else if (sc->bge_flags & 0x00000400)
     val |= 0x00000008;
 else
     val |= 0x00000004;
 if ((sc->bge_mfw_flags & 0x00000002) != 0)
  val |= 0x08000000 | 0x10000000;
 bus_space_write_4(sc->bge_btag, sc->bge_bhandle, 0x0400, val);
 delay(40);
 bus_space_write_4(sc->bge_btag, sc->bge_bhandle, 0x6808, (bus_space_read_4(sc->bge_btag, sc->bge_bhandle, 0x6808) | (0x00000008)));
 if (!(((sc)->bge_flags & 0x00001000)))
  bus_space_write_4(sc->bge_btag, sc->bge_bhandle, 0x6400, 0x00000002);
 val = 0x00000002|0x000003FC;
 if (((sc)->bge_flags & 0x00004000))
  val |= 0x20000000;
 if (((sc->bge_chipid) >> 12) == 0x5785)
  val |= 0xC0000000;
 bus_space_write_4(sc->bge_btag, sc->bge_bhandle, 0x4C00, val);
 delay(40);
 val = 0x00000002|0x000003FC;
 if (((sc->bge_chipid) >> 12) == 0x5717)
  val |= 0x01000000;
 if (((sc->bge_chipid) >> 12) == 0x5784 ||
     ((sc->bge_chipid) >> 12) == 0x5785 ||
     ((sc->bge_chipid) >> 12) == 0x57780)
  val |= 0x00000800 |
         0x00001000 |
         0x00002000;
 if (sc->bge_flags & 0x00000020)
  val |= 0x00030000;
 if (((sc->bge_chipid) >> 12) == 0x5720 ||
     ((sc->bge_chipid) >> 12) == 0x5762) {
  val |= bus_space_read_4(sc->bge_btag, sc->bge_bhandle, 0x4800) &
      0x20000000;
  val &= ~0x01000000;
 }
 if (((sc->bge_chipid) >> 12) == 0x5761 ||
     ((sc->bge_chipid) >> 12) == 0x5784 ||
     ((sc->bge_chipid) >> 12) == 0x5785 ||
     ((sc->bge_chipid) >> 12) == 0x57780 ||
     ((sc)->bge_flags & 0x00020000) || ((sc)->bge_flags & 0x00040000)) {
  if (((sc->bge_chipid) >> 12) == 0x5762)
   rdmareg = 0x4890;
  else
   rdmareg = 0x4900;
  dmactl = bus_space_read_4(sc->bge_btag, sc->bge_bhandle, rdmareg);
  if (sc->bge_chipid == 0x05719000 ||
      ((sc->bge_chipid) >> 12) == 0x5762) {
   dmactl &= ~(0x00000FF0 |
       0x000FF000 |
       0xFFE00000);
   dmactl |= 0x00000C00 |
       0x000C0000 |
       0x28000000;
  }
  bus_space_write_4(sc->bge_btag, sc->bge_bhandle, rdmareg, dmactl | 0x00000004);
 }
 if (((sc->bge_chipid) >> 12) == 0x5719) {
  bus_space_write_4(sc->bge_btag, sc->bge_bhandle, 0x4910, bus_space_read_4(sc->bge_btag, sc->bge_bhandle, 0x4910) | 0x00030000 | 0x000C0000);
 } else if (((sc->bge_chipid) >> 12) == 0x5720) {
  bus_space_write_4(sc->bge_btag, sc->bge_bhandle, 0x4910, bus_space_read_4(sc->bge_btag, sc->bge_bhandle, 0x4910) | 0x00020000 | 0x000C0000);
 } else if (((sc->bge_chipid) >> 12) == 0x5762) {
  bus_space_write_4(sc->bge_btag, sc->bge_bhandle, 0x48A0, bus_space_read_4(sc->bge_btag, sc->bge_bhandle, 0x48A0) | 0x00030000 | 0x000C0000);
 }
 bus_space_write_4(sc->bge_btag, sc->bge_bhandle, 0x4800, val);
 delay(40);
 if (sc->bge_flags & 0x00800000) {
  for (i = 0; i < 4 / 2; i++) {
   val = bus_space_read_4(sc->bge_btag, sc->bge_bhandle, 0x4BE0 + i * 4);
   if ((val & 0xFFFF) > 1518)
    break;
   if (((val >> 16) & 0xFFFF) > 1518)
    break;
  }
  if (i != 4 / 2) {
   val = bus_space_read_4(sc->bge_btag, sc->bge_bhandle, 0x4910);
   if (((sc->bge_chipid) >> 12) == 0x5719)
    val |= 0x02000000;
   else
    val |= 0x00200000;
   bus_space_write_4(sc->bge_btag, sc->bge_bhandle, 0x4910, val);
  }
 }
 bus_space_write_4(sc->bge_btag, sc->bge_bhandle, 0x2800, 0x00000002);
 bus_space_write_4(sc->bge_btag, sc->bge_bhandle, 0x2C00, 0x00000002);
 bus_space_write_4(sc->bge_btag, sc->bge_bhandle, 0x2400, 0x00000002);
 if (!((sc)->bge_flags & 0x00001000))
  bus_space_write_4(sc->bge_btag, sc->bge_bhandle, 0x3800, 0x00000002);
 bus_space_write_4(sc->bge_btag, sc->bge_bhandle, 0x1C00, 0x00000002);
 val = 0x00000002;
 if (((sc->bge_chipid) >> 12) == 0x5761)
  val |= 0x00000010;
 bus_space_write_4(sc->bge_btag, sc->bge_bhandle, 0x1000, val);
 bus_space_write_4(sc->bge_btag, sc->bge_bhandle, 0x0C00, 0x00000002);
 bus_space_write_4(sc->bge_btag, sc->bge_bhandle, 0x1800, 0x00000002);
 bus_space_write_4(sc->bge_btag, sc->bge_bhandle, 0x1400, 0x00000002);
 bus_space_write_4(sc->bge_btag, sc->bge_bhandle, 0x0C0C, 0x007BFFFF);
 bus_space_write_4(sc->bge_btag, sc->bge_bhandle, 0x0C08, 0x00000001|0x00000002);
 bus_space_write_4(sc->bge_btag, sc->bge_bhandle, 0x0404, 0x00000010 | 0x00000008 | 0x00400000 | 0x00001000);
 if (sc->bge_flags & 0x00000200) {
  bus_space_write_4(sc->bge_btag, sc->bge_bhandle, 0x0450, 0x00000001);
  } else {
  if ((sc->bge_flags & 0x00100000) != 0)
   mimode = 0x00008000;
  else
   mimode = 0x000C0000;
  if (((sc)->bge_flags & 0x00010000) ||
      ((sc->bge_chipid) >> 12) == 0x03) {
   mimode |= 0x00000010;
   ((sc)->bge_sts |= (0x00000004));
  }
  mimode |= ((sc->bge_phy_addr & 0x1F) << 5);
  bus_space_write_4(sc->bge_btag, sc->bge_bhandle, 0x0454, mimode);
  if (((sc->bge_chipid) >> 12) == 0x07)
   bus_space_write_4(sc->bge_btag, sc->bge_bhandle, 0x0408, 0x00800000);
 }
 bus_space_write_4(sc->bge_btag, sc->bge_bhandle, 0x0404, 0x00000010| 0x00000008|0x00400000| 0x00001000);
 bus_space_write_4(sc->bge_btag, sc->bge_bhandle, 0x0408, (bus_space_read_4(sc->bge_btag, sc->bge_bhandle, 0x0408) | (0x00001000)));
 return (0);
}
const struct bge_revision *
bge_lookup_rev(u_int32_t chipid)
{
 const struct bge_revision *br;
 for (br = bge_revisions; br->br_name != ((void *)0); br++) {
  if (br->br_chipid == chipid)
   return (br);
 }
 for (br = bge_majorrevs; br->br_name != ((void *)0); br++) {
  if (br->br_chipid == ((chipid) >> 12))
   return (br);
 }
 return (((void *)0));
}
int
bge_can_use_msi(struct bge_softc *sc)
{
 int can_use_msi = 0;
 switch (((sc->bge_chipid) >> 12)) {
 case 0x05:
 case 0x09:
  break;
 case 0x04:
  if (((sc->bge_chipid) >> 8) != 0x40 &&
      ((sc->bge_chipid) >> 8) != 0x41)
   can_use_msi = 1;
  break;
 default:
  if (((sc)->bge_flags & 0x00002000))
   can_use_msi = 1;
 }
 return (can_use_msi);
}
int
bge_probe(struct device *parent, void *match, void *aux)
{
 return (pci_matchbyid(aux, bge_devices, (sizeof((bge_devices)) / sizeof((bge_devices)[0]))));
}
void
bge_attach(struct device *parent, struct device *self, void *aux)
{
 struct bge_softc *sc = (struct bge_softc *)self;
 struct pci_attach_args *pa = aux;
 pci_chipset_tag_t pc = pa->pa_pc;
 const struct bge_revision *br;
 pcireg_t pm_ctl, memtype, subid, reg64;
 pci_intr_handle_t ih;
 const char *intrstr = ((void *)0);
 int gotenaddr = 0;
 u_int32_t hwcfg = 0;
 u_int32_t mac_addr = 0;
 u_int32_t misccfg;
 struct ifnet *ifp;
 caddr_t kva;
 char name[32];
 sc->bge_pa = *pa;
 subid = pci_conf_read(pc, pa->pa_tag, 0x2c);
 ;
 ;
 memtype = pci_mapreg_type(pa->pa_pc, pa->pa_tag, 0x10);
 if (pci_mapreg_map(pa, 0x10, memtype, 0, &sc->bge_btag,
     &sc->bge_bhandle, ((void *)0), &sc->bge_bsize, 0)) {
  printf(": can't find mem space\n");
  return;
 }
 pm_ctl = pci_conf_read(pc, pa->pa_tag, 0x4C);
 pm_ctl &= ~(0|1|2|3);
 pm_ctl |= (1 << 8) | 0 ;
 pci_conf_write(pc, pa->pa_tag, 0x4C, pm_ctl);
 delay(1000);
 sc->bge_chipid =
      (pci_conf_read(pc, pa->pa_tag, 0x68)
       >> 16);
 if (((sc->bge_chipid) >> 12) == 0x0f) {
  switch ((((pa->pa_id) >> 16) & 0xffff)) {
  case 0x1655:
  case 0x1656:
  case 0x1657:
  case 0x165f:
  case 0x1643:
  case 0x16f3:
  case 0x1687:
  case 0x1642:
  case 0x1683:
  case 0x1641:
   sc->bge_chipid = pci_conf_read(pc, pa->pa_tag,
       0xF4);
   break;
  case 0x16b0:
  case 0x1682:
  case 0x16b4:
  case 0x1686:
  case 0x16b1:
  case 0x16b7:
  case 0x16b5:
  case 0x16b3:
  case 0x16b2:
  case 0x16b6:
   sc->bge_chipid = pci_conf_read(pc, pa->pa_tag,
       0xFC);
   break;
  default:
   sc->bge_chipid = pci_conf_read(pc, pa->pa_tag,
       0xBC);
   break;
  }
 }
 sc->bge_phy_addr = bge_phy_addr(sc);
 printf(", ");
 br = bge_lookup_rev(sc->bge_chipid);
 if (br == ((void *)0))
  printf("unknown ASIC (0x%x)", sc->bge_chipid);
 else
  printf("%s (0x%x)", br->br_name, sc->bge_chipid);
 if (pci_get_capability(pa->pa_pc, pa->pa_tag, 0x10,
     &sc->bge_expcap, ((void *)0)) != 0) {
  reg64 = pci_conf_read(pa->pa_pc, pa->pa_tag, sc->bge_expcap +
      0x04);
  sc->bge_mps = 128 << (reg64 & 0x7);
  if (((sc->bge_chipid) >> 12) == 0x5719 ||
      ((sc->bge_chipid) >> 12) == 0x5720)
   sc->bge_expmrq = (fls(2048) - 8) << 12;
  else
   sc->bge_expmrq = (fls(4096) - 8) << 12;
  reg64 = pci_conf_read(pa->pa_pc, pa->pa_tag,
      sc->bge_expcap + 0x10);
  reg64 &= ~(0x00000001 | 0x00000002);
  pci_conf_write(pa->pa_pc, pa->pa_tag,
      sc->bge_expcap + 0x10, reg64);
  sc->bge_flags |= 0x00000020;
 } else {
  if ((pci_conf_read(pa->pa_pc, pa->pa_tag, 0x70) &
      0x00000004) == 0)
   sc->bge_flags |= 0x00000010;
 }
 if (OF_getprop((int)(((pa->pa_tag)>>32)&0xffffffff), "name", name,
     sizeof(name)) > 0 && strcmp(name, "network") == 0)
  sc->bge_flags |= 0x00000080;
 switch (((sc->bge_chipid) >> 12)) {
 case 0x5762:
 case 0x57785:
 case 0x57766:
  sc->bge_flags |= 0x00040000;
 case 0x5717:
 case 0x5719:
 case 0x5720:
  sc->bge_flags |= 0x00020000 | 0x00004000 | 0x00002000 |
      0x00001000 | 0x00000100 | 0x01000000 |
      0x04000000;
  if (((sc->bge_chipid) >> 12) == 0x5719 ||
      ((sc->bge_chipid) >> 12) == 0x5720) {
   sc->bge_flags |= 0x00800000;
   if (((sc->bge_chipid) >> 12) == 0x5719 &&
       sc->bge_chipid == 0x05719000) {
    sc->bge_flags &= ~(0x00000100 |
        0x01000000 | 0x04000000);
   }
  }
  break;
 case 0x0a:
 case 0x5761:
 case 0x5784:
 case 0x5785:
 case 0x0b:
 case 0x57780:
  sc->bge_flags |= 0x00004000 | 0x00002000 | 0x00001000;
  break;
 case 0x07:
 case 0x00:
 case 0x01:
 case 0x02:
  sc->bge_flags |= 0x00010000 | 0x00000100 | 0x01000000;
  break;
 case 0x05:
 case 0x08:
 case 0x09:
  sc->bge_flags |= 0x00008000 | 0x00000100 | 0x02000000;
 case 0x04:
 case 0x06:
 case 0x0c:
  sc->bge_flags |= 0x00002000;
 case 0x03:
  sc->bge_flags |= 0x00001000;
  break;
 }
 if (sc->bge_flags & 0x02000000)
  sc->bge_rx_std_len = ((9022 + 2) + (sizeof(u_int64_t) - ((9022 + 2) % sizeof(u_int64_t))));
 else
  sc->bge_rx_std_len = (1 << 11);
 if (((sc->bge_chipid) >> 12) == 0x00 &&
     sc->bge_flags & 0x00000010)
  sc->bge_flags |= 0x00000008;
 if ((((sc->bge_chipid) >> 12) == 0x07 ||
     ((sc->bge_chipid) >> 12) == 0x00) &&
     (((subid) >> 0) & 0xffff) == 0x1028)
  sc->bge_phy_flags |= 0x00000001;
 misccfg = bus_space_read_4(sc->bge_btag, sc->bge_bhandle, 0x6804);
 misccfg &= 0x0001E000;
 if (((sc->bge_chipid) >> 12) == 0x03 &&
     (misccfg == 0x00010000 ||
      misccfg == 0x00018000))
  sc->bge_flags |= 0x00000800;
 if ((((sc->bge_chipid) >> 12) == 0x01 &&
      (misccfg == 0x4000 || misccfg == 0x8000)) ||
     (((sc->bge_chipid) >> 12) == 0x03 &&
      (((pa->pa_id) >> 0) & 0xffff) == 0x14e4 &&
      ((((pa->pa_id) >> 16) & 0xffff) == 0x170d ||
       (((pa->pa_id) >> 16) & 0xffff) == 0x170e ||
       (((pa->pa_id) >> 16) & 0xffff) == 0x166e)) ||
     ((((pa->pa_id) >> 0) & 0xffff) == 0x14e4 &&
      ((((pa->pa_id) >> 16) & 0xffff) == 0x167e ||
       (((pa->pa_id) >> 16) & 0xffff) == 0x16fe ||
       (((pa->pa_id) >> 16) & 0xffff) == 0x167f)) ||
     (((pa->pa_id) >> 16) & 0xffff) == 0x1694 ||
     (((pa->pa_id) >> 16) & 0xffff) == 0x16b2 ||
     (((pa->pa_id) >> 16) & 0xffff) == 0x16b6 ||
     ((sc->bge_chipid) >> 12) == 0x0c)
  sc->bge_phy_flags |= 0x00000002;
 if (((sc->bge_chipid) >> 12) == 0x07 ||
     (((sc->bge_chipid) >> 12) == 0x03 &&
      (sc->bge_chipid != 0x3000 &&
       sc->bge_chipid != 0x3001)) ||
     ((sc->bge_chipid) >> 12) == 0x0c)
  sc->bge_phy_flags |= 0x00000100;
 if (sc->bge_chipid == 0x0000 ||
     sc->bge_chipid == 0x0100)
  sc->bge_phy_flags |= 0x00000004;
 if (((sc->bge_chipid) >> 8) == 0x10 ||
     ((sc->bge_chipid) >> 8) == 0x20)
  sc->bge_phy_flags |= 0x00000008;
 if (sc->bge_chipid == 0x2000)
  sc->bge_phy_flags |= 0x00008010;
 if ((((sc)->bge_flags & 0x00001000)) &&
     ((sc->bge_chipid) >> 12) != 0x0c &&
     ((sc->bge_chipid) >> 12) != 0x5785 &&
     ((sc->bge_chipid) >> 12) != 0x57780 &&
     !((sc)->bge_flags & 0x00020000)) {
  if (((sc->bge_chipid) >> 12) == 0x0a ||
      ((sc->bge_chipid) >> 12) == 0x5761 ||
      ((sc->bge_chipid) >> 12) == 0x5784 ||
      ((sc->bge_chipid) >> 12) == 0x0b) {
   if ((((pa->pa_id) >> 16) & 0xffff) != 0x165a &&
       (((pa->pa_id) >> 16) & 0xffff) != 0x1674)
    sc->bge_phy_flags |= 0x00000020;
   if ((((pa->pa_id) >> 16) & 0xffff) == 0x1673)
    sc->bge_phy_flags |= 0x00000080;
  } else
   sc->bge_phy_flags |= 0x00000040;
 }
 switch (((sc->bge_chipid) >> 12)) {
 case 0x5717:
 case 0x5719:
 case 0x5720:
 case 0x5761:
 case 0x5762:
  sc->bge_flags |= 0x00080000;
  break;
 }
 if ((sc->bge_flags & 0x00080000) != 0) {
  memtype = pci_mapreg_type(pa->pa_pc, pa->pa_tag, 0x18);
  if (pci_mapreg_map(pa, 0x18, memtype, 0,
      &sc->bge_apetag, &sc->bge_apehandle, ((void *)0),
      &sc->bge_apesize, 0)) {
   printf(": couldn't map BAR2 memory\n");
   goto fail_1;
  }
  reg64 = pci_conf_read(pa->pa_pc, pa->pa_tag, 0x70);
  reg64 |= 0x00010000 |
      0x00020000 |
      0x00040000;
  pci_conf_write(pa->pa_pc, pa->pa_tag, 0x70, reg64);
  bge_ape_lock_init(sc);
  bge_ape_read_fw_ver(sc);
 }
 if (((sc)->bge_flags & 0x00020000) ||
     ((sc->bge_chipid) >> 12) == 0x5784 ||
     ((sc->bge_chipid) >> 12) == 0x5761 ||
     ((sc->bge_chipid) >> 12) == 0x5785 ||
     ((sc->bge_chipid) >> 12) == 0x57780)
  sc->bge_flags |= 0x00100000;
 if (pci_get_capability(pa->pa_pc, pa->pa_tag, 0x05,
     &sc->bge_msicap, ((void *)0))) {
  if (bge_can_use_msi(sc) == 0)
   pa->pa_flags &= ~0x20;
 }
 ;
 if (pci_intr_map_msi(pa, &ih) == 0)
  sc->bge_flags |= 0x00400000;
 else if (pci_intr_map(pa, &ih)) {
  printf(": couldn't map interrupt\n");
  goto fail_1;
 }
 if (((sc)->bge_flags & 0x00020000) && sc->bge_flags & 0x00400000)
  sc->bge_flags |= 0x00200000;
 ;
 intrstr = pci_intr_string(pc, ih);
 ;
 bge_sig_pre_reset(sc, 0);
 bge_reset(sc);
 bge_sig_legacy(sc, 0);
 bge_sig_post_reset(sc, 0);
 bge_chipinit(sc);
 if (!gotenaddr) {
  if (OF_getprop((int)(((pa->pa_tag)>>32)&0xffffffff), "local-mac-address",
      sc->arpcom.ac_enaddr, 6) == 6)
   gotenaddr = 1;
 }
 if (!gotenaddr) {
  mac_addr = bge_readmem_ind(sc, 0x0c14);
  if ((mac_addr >> 16) == 0x484b) {
   sc->arpcom.ac_enaddr[0] = (u_char)(mac_addr >> 8);
   sc->arpcom.ac_enaddr[1] = (u_char)mac_addr;
   mac_addr = bge_readmem_ind(sc, 0x0c18);
   sc->arpcom.ac_enaddr[2] = (u_char)(mac_addr >> 24);
   sc->arpcom.ac_enaddr[3] = (u_char)(mac_addr >> 16);
   sc->arpcom.ac_enaddr[4] = (u_char)(mac_addr >> 8);
   sc->arpcom.ac_enaddr[5] = (u_char)mac_addr;
   gotenaddr = 1;
  }
 }
 if (!gotenaddr) {
  int mac_offset = 0x7C;
  if (((sc->bge_chipid) >> 12) == 0x0c)
   mac_offset = 0x10;
  if (bge_read_nvram(sc, (caddr_t)&sc->arpcom.ac_enaddr,
      mac_offset + 2, 6) == 0)
   gotenaddr = 1;
 }
 if (!gotenaddr && (!(sc->bge_flags & 0x00000080))) {
  if (bge_read_eeprom(sc, (caddr_t)&sc->arpcom.ac_enaddr,
      0x7C + 2, 6) == 0)
   gotenaddr = 1;
 }
 if (!gotenaddr) {
  extern void myetheraddr(u_char *);
  myetheraddr(sc->arpcom.ac_enaddr);
  gotenaddr = 1;
 }
 if (!gotenaddr) {
  printf(": failed to read station address\n");
  goto fail_2;
 }
 sc->bge_dmatag = pa->pa_dmat;
 ;
 if (bus_dmamem_alloc(sc->bge_dmatag, sizeof(struct bge_ring_data),
     (1 << 13), 0, &sc->bge_ring_seg, 1, &sc->bge_ring_nseg,
     0x0001)) {
  printf(": can't alloc rx buffers\n");
  goto fail_2;
 }
 ;
 if (bus_dmamem_map(sc->bge_dmatag, &sc->bge_ring_seg,
     sc->bge_ring_nseg, sizeof(struct bge_ring_data), &kva,
     0x0001)) {
  printf(": can't map dma buffers (%lu bytes)\n",
      sizeof(struct bge_ring_data));
  goto fail_3;
 }
 ;
 if (bus_dmamap_create(sc->bge_dmatag, sizeof(struct bge_ring_data), 1,
     sizeof(struct bge_ring_data), 0,
     0x0001, &sc->bge_ring_map)) {
  printf(": can't create dma map\n");
  goto fail_4;
 }
 ;
 if (bus_dmamap_load(sc->bge_dmatag, sc->bge_ring_map, kva,
       sizeof(struct bge_ring_data), ((void *)0),
       0x0001)) {
  goto fail_5;
 }
 ;
 sc->bge_rdata = (struct bge_ring_data *)kva;
 __builtin_bzero((sc->bge_rdata), (sizeof(struct bge_ring_data)));
 sc->bge_stat_ticks = 1000000;
 sc->bge_rx_coal_ticks = 150;
 sc->bge_rx_max_coal_bds = 64;
 sc->bge_tx_coal_ticks = 300;
 sc->bge_tx_max_coal_bds = 400;
 if (((sc)->bge_flags & 0x00010000) || ((sc)->bge_flags & 0x00020000))
  sc->bge_return_ring_cnt = 1024;
 else
  sc->bge_return_ring_cnt = 512;
 ifp = &sc->arpcom.ac_if;
 ifp->if_softc = sc;
 ifp->if_flags = 0x2 | 0x800 | 0x8000;
 ifp->if_xflags = 0x1;
 ifp->if_ioctl = bge_ioctl;
 ifp->if_qstart = bge_start;
 ifp->if_watchdog = bge_watchdog;
 ((&ifp->if_snd)->ifq_maxlen = (512 - 1));
 ;
 __builtin_bcopy((sc->bge_dev.dv_xname), (ifp->if_xname), (16));
 ifp->if_data.ifi_capabilities = 0x00000010;
 ifp->if_data.ifi_capabilities |= 0x00000020;
 if (sc->bge_chipid != 0x7100)
  ifp->if_data.ifi_capabilities |= 0x00000001 | 0x00000002;
 if (((sc)->bge_flags & 0x00000100))
  ifp->if_hardmtu = (9022 - ((6 * 2) + 2) - 4 - 4);
 ;
 sc->bge_mii.mii_ifp = ifp;
 sc->bge_mii.mii_readreg = bge_miibus_readreg;
 sc->bge_mii.mii_writereg = bge_miibus_writereg;
 sc->bge_mii.mii_statchg = bge_miibus_statchg;
 if (bge_readmem_ind(sc, 0x00000B54) == 0x4B657654)
  hwcfg = bge_readmem_ind(sc, 0x00000B58);
 else if (!(sc->bge_flags & 0x00000080)) {
  if (bge_read_eeprom(sc, (caddr_t)&hwcfg, 0xC8,
      sizeof(hwcfg))) {
   printf(": failed to read media type\n");
   goto fail_6;
  }
  hwcfg = ((__uint32_t)(hwcfg));
 }
 if ((((subid) >> 16) & 0xffff) == 0x4441 ||
     (hwcfg & 0x00000030) == 0x00000020) {
  if (((sc)->bge_flags & 0x00010000))
      sc->bge_flags |= 0x00000200;
  else
      sc->bge_flags |= 0x00000400;
 }
 if (((sc)->bge_flags & 0x00004000) && sc->bge_flags & 0x00400000)
  bus_space_write_4(sc->bge_btag, sc->bge_bhandle, 0x6000, bus_space_read_4(sc->bge_btag, sc->bge_bhandle, 0x6000) & ~0x00000020);
 ;
 sc->bge_intrhand = pci_intr_establish(pc, ih, 6 | 0x100,
     bge_intr, sc, sc->bge_dev.dv_xname);
 if (sc->bge_intrhand == ((void *)0)) {
  printf(": couldn't establish interrupt");
  if (intrstr != ((void *)0))
   printf(" at %s", intrstr);
  printf("\n");
  goto fail_6;
 }
 printf(": %s, address %s\n", intrstr,
     ether_sprintf(sc->arpcom.ac_enaddr));
 if (sc->bge_flags & 0x00000200) {
  ifmedia_init(&sc->bge_ifmedia, 0xff00000000000000ULL, bge_ifmedia_upd,
      bge_ifmedia_sts);
  ifmedia_add(&sc->bge_ifmedia, 0x0000000000000100ULL|11, 0, ((void *)0));
  ifmedia_add(&sc->bge_ifmedia, 0x0000000000000100ULL|11|0x0000010000000000ULL,
       0, ((void *)0));
  ifmedia_add(&sc->bge_ifmedia, 0x0000000000000100ULL|0ULL, 0, ((void *)0));
  ifmedia_set(&sc->bge_ifmedia, 0x0000000000000100ULL|0ULL);
  sc->bge_ifmedia.ifm_media = sc->bge_ifmedia.ifm_cur->ifm_media;
 } else {
  int mii_flags;
  ifmedia_init(&sc->bge_mii.mii_media, 0, bge_ifmedia_upd,
        bge_ifmedia_sts);
  mii_flags = 0x0100;
  if (sc->bge_flags & 0x00000400)
   mii_flags |= 0x0020;
  mii_attach(&sc->bge_dev, &sc->bge_mii, 0xffffffff,
      sc->bge_phy_addr, -1, mii_flags);
  if (((&sc->bge_mii.mii_phys)->lh_first) == ((void *)0)) {
   printf("%s: no PHY found!\n", sc->bge_dev.dv_xname);
   ifmedia_add(&sc->bge_mii.mii_media,
        0x0000000000000100ULL|1ULL, 0, ((void *)0));
   ifmedia_set(&sc->bge_mii.mii_media,
        0x0000000000000100ULL|1ULL);
  } else
   ifmedia_set(&sc->bge_mii.mii_media,
        0x0000000000000100ULL|0ULL);
 }
 if_attach(ifp);
 ether_ifattach(ifp);
 timeout_set(&sc->bge_timeout, bge_tick, sc);
 timeout_set(&sc->bge_rxtimeout, bge_rxtick, sc);
 timeout_set(&sc->bge_rxtimeout_jumbo, bge_rxtick_jumbo, sc);
 return;
fail_6:
 bus_dmamap_unload(sc->bge_dmatag, sc->bge_ring_map);
fail_5:
 bus_dmamap_destroy(sc->bge_dmatag, sc->bge_ring_map);
fail_4:
 bus_dmamem_unmap(sc->bge_dmatag, (caddr_t)sc->bge_rdata,
     sizeof(struct bge_ring_data));
fail_3:
 bus_dmamem_free(sc->bge_dmatag, &sc->bge_ring_seg, sc->bge_ring_nseg);
fail_2:
 if ((sc->bge_flags & 0x00080000) != 0)
  bus_space_unmap(sc->bge_apetag, sc->bge_apehandle,
      sc->bge_apesize);
fail_1:
 bus_space_unmap(sc->bge_btag, sc->bge_bhandle, sc->bge_bsize);
}
int
bge_detach(struct device *self, int flags)
{
 struct bge_softc *sc = (struct bge_softc *)self;
 struct ifnet *ifp = &sc->arpcom.ac_if;
 if (sc->bge_intrhand)
  pci_intr_disestablish(sc->bge_pa.pa_pc, sc->bge_intrhand);
 bge_stop(sc, 1);
 if (((&sc->bge_mii.mii_phys)->lh_first) != ((void *)0))
  mii_detach(&sc->bge_mii, -1, -1);
 ifmedia_delete_instance(&sc->bge_mii.mii_media, ((uint64_t) -1));
 ether_ifdetach(ifp);
 if_detach(ifp);
 bus_dmamap_unload(sc->bge_dmatag, sc->bge_ring_map);
 bus_dmamap_destroy(sc->bge_dmatag, sc->bge_ring_map);
 bus_dmamem_unmap(sc->bge_dmatag, (caddr_t)sc->bge_rdata,
     sizeof(struct bge_ring_data));
 bus_dmamem_free(sc->bge_dmatag, &sc->bge_ring_seg, sc->bge_ring_nseg);
 if ((sc->bge_flags & 0x00080000) != 0)
  bus_space_unmap(sc->bge_apetag, sc->bge_apehandle,
      sc->bge_apesize);
 bus_space_unmap(sc->bge_btag, sc->bge_bhandle, sc->bge_bsize);
 return (0);
}
int
bge_activate(struct device *self, int act)
{
 struct bge_softc *sc = (struct bge_softc *)self;
 struct ifnet *ifp = &sc->arpcom.ac_if;
 int rv = 0;
 switch (act) {
 case 3:
  rv = config_activate_children(self, act);
  if (ifp->if_flags & 0x40)
   bge_stop(sc, 0);
  break;
 case 4:
  if (ifp->if_flags & 0x1)
   bge_init(sc);
  break;
 default:
  rv = config_activate_children(self, act);
  break;
 }
 return (rv);
}
void
bge_reset(struct bge_softc *sc)
{
 struct pci_attach_args *pa = &sc->bge_pa;
 pcireg_t cachesize, command, devctl;
 u_int32_t reset, mac_mode, mac_mode_mask, val;
 void (*write_op)(struct bge_softc *, int, int);
 int i;
 mac_mode_mask = 0x00000002 | 0x0000000C;
 if ((sc->bge_mfw_flags & 0x00000002) != 0)
  mac_mode_mask |= 0x08000000 | 0x10000000;
 mac_mode = bus_space_read_4(sc->bge_btag, sc->bge_bhandle, 0x0400) & mac_mode_mask;
 if (((sc)->bge_flags & 0x00002000) && !((sc)->bge_flags & 0x00008000) &&
     ((sc->bge_chipid) >> 12) != 0x0c) {
  if (sc->bge_flags & 0x00000020)
   write_op = bge_writembx;
  else
   write_op = bge_writemem_ind;
 } else
  write_op = bge_writereg_ind;
 if (((sc->bge_chipid) >> 12) != 0x07 &&
     ((sc->bge_chipid) >> 12) != 0x00) {
  bus_space_write_4(sc->bge_btag, sc->bge_bhandle, 0x7020, 0x00000002);
  for (i = 0; i < 8000; i++) {
   if (bus_space_read_4(sc->bge_btag, sc->bge_bhandle, 0x7020) &
       0x00000200)
    break;
   delay(20);
  }
  if (i == 8000)
   printf("%s: nvram lock timed out\n",
       sc->bge_dev.dv_xname);
 }
 bge_ape_lock(sc, 1);
 cachesize = pci_conf_read(pa->pa_pc, pa->pa_tag, 0x0C);
 command = pci_conf_read(pa->pa_pc, pa->pa_tag, 0x04);
 pci_conf_write(pa->pa_pc, pa->pa_tag, 0x68,
     0x00000080 | 0x00000002 |
     0x00000008 | 0x00000010);
 if (((sc->bge_chipid) >> 12) == 0x06 ||
     ((sc)->bge_flags & 0x00004000))
  bus_space_write_4(sc->bge_btag, sc->bge_bhandle, 0x6894, 0);
 bge_writemem_ind(sc, 0x00000B50, 0x4B657654);
 reset = 0x00000001 | (0x41 << 1);
 if (sc->bge_flags & 0x00000020) {
  if (((sc->bge_chipid) >> 12) != 0x5785 &&
      !((sc)->bge_flags & 0x00020000)) {
   if (bus_space_read_4(sc->bge_btag, sc->bge_bhandle, 0x7e2c) == 0x60) {
    bus_space_write_4(sc->bge_btag, sc->bge_bhandle, 0x7e2c, 0x20);
   }
  }
  if (sc->bge_chipid != 0x4000) {
   bus_space_write_4(sc->bge_btag, sc->bge_bhandle, 0x6804, (1<<29));
   reset |= (1<<29);
  }
 }
 if (((sc->bge_chipid) >> 12) == 0x0c) {
  val = bus_space_read_4(sc->bge_btag, sc->bge_bhandle, 0x5100);
  bus_space_write_4(sc->bge_btag, sc->bge_bhandle, 0x5100, val | 0x08000000);
                val = bus_space_read_4(sc->bge_btag, sc->bge_bhandle, 0x6890);
                bus_space_write_4(sc->bge_btag, sc->bge_bhandle, 0x6890, val & ~0x00400000);
                sc->bge_flags |= 0x00000080;
        }
 if (((sc)->bge_flags & 0x00001000) &&
     (sc->bge_flags & 0x00100000) == 0)
  reset |= 0x04000000;
 write_op(sc, 0x6804, reset);
 if (sc->bge_flags & 0x00000020)
  delay(100 * 1000);
 else
  delay(1000);
 if (sc->bge_flags & 0x00000020) {
  if (sc->bge_chipid == 0x4000) {
   pcireg_t v;
   delay(500000);
   v = pci_conf_read(pa->pa_pc, pa->pa_tag, 0xc4);
   pci_conf_write(pa->pa_pc, pa->pa_tag, 0xc4, v | (1<<15));
  }
  devctl = pci_conf_read(pa->pa_pc, pa->pa_tag, sc->bge_expcap +
      0x08);
  devctl &= ~(0x00000010 | 0x00000800);
  devctl = (devctl & ~0x00007000) | sc->bge_expmrq;
  devctl |= 0x00010000 | 0x00020000 |
      0x00040000 | 0x00080000;
  pci_conf_write(pa->pa_pc, pa->pa_tag, sc->bge_expcap +
      0x08, devctl);
 }
 pci_conf_write(pa->pa_pc, pa->pa_tag, 0x68,
     0x00000080 | 0x00000002 |
     0x00000008 | 0x00000010);
 val = 0x00000020 | 0x00000040;
 if (sc->bge_chipid == 0x2000 &&
     (sc->bge_flags & 0x00000010) != 0)
  val |= 0x00002000;
 if ((sc->bge_mfw_flags & 0x00000002) != 0)
  val |= 0x00010000 |
      0x00020000 |
      0x00040000;
 pci_conf_write(pa->pa_pc, pa->pa_tag, 0x70, val);
 pci_conf_write(pa->pa_pc, pa->pa_tag, 0x0C, cachesize);
 pci_conf_write(pa->pa_pc, pa->pa_tag, 0x04, command);
 if (((sc)->bge_flags & 0x00008000)) {
  if (sc->bge_flags & 0x00400000) {
   val = pci_conf_read(pa->pa_pc, pa->pa_tag,
       sc->bge_msicap + 0x00);
   pci_conf_write(pa->pa_pc, pa->pa_tag,
       sc->bge_msicap + 0x00,
       val | 0x00010000);
   val = bus_space_read_4(sc->bge_btag, sc->bge_bhandle, 0x6000);
   bus_space_write_4(sc->bge_btag, sc->bge_bhandle, 0x6000, val | 0x00000002);
  }
  val = bus_space_read_4(sc->bge_btag, sc->bge_bhandle, 0x4000);
  bus_space_write_4(sc->bge_btag, sc->bge_bhandle, 0x4000, 0x00000002 | val);
 } else
  bus_space_write_4(sc->bge_btag, sc->bge_bhandle, 0x4000, 0x00000002);
 bus_space_write_4(sc->bge_btag, sc->bge_bhandle, 0x6800, bge_dma_swap_options(sc));
 val = bus_space_read_4(sc->bge_btag, sc->bge_bhandle, 0x0400);
 val = (val & ~mac_mode_mask) | mac_mode;
 bus_space_write_4(sc->bge_btag, sc->bge_bhandle, 0x0400, val);
 delay(40);
 bge_ape_unlock(sc, 1);
 if (((sc->bge_chipid) >> 12) == 0x0c) {
  for (i = 0; i < 100000; i++) {
   val = bus_space_read_4(sc->bge_btag, sc->bge_bhandle, 0x5100);
   if (val & 0x04000000)
    break;
   delay(100);
  }
  if (i >= 100000)
   printf("%s: reset timed out\n", sc->bge_dev.dv_xname);
 } else {
  for (i = 0; i < 100000 * 10; i++) {
   val = bge_readmem_ind(sc, 0x00000B50);
   if (val == ~0x4B657654)
    break;
   delay(10);
  }
  if ((i >= 100000 * 10) &&
      (!(sc->bge_flags & 0x00000080)))
   printf("%s: firmware handshake timed out\n",
      sc->bge_dev.dv_xname);
  if (sc->bge_chipid == 0x57785000)
   delay(10 * 1000);
 }
 if (sc->bge_flags & 0x00000200 &&
     ((sc->bge_chipid) >> 12) == 0x02) {
  val = bus_space_read_4(sc->bge_btag, sc->bge_bhandle, 0x0590);
  val = (val & ~0xFFF) | 0x880;
  bus_space_write_4(sc->bge_btag, sc->bge_bhandle, 0x0590, val);
 }
 if (sc->bge_flags & 0x00000020 &&
     !((sc)->bge_flags & 0x00020000) &&
     sc->bge_chipid != 0x4000 &&
     ((sc->bge_chipid) >> 12) != 0x5785) {
  val = bus_space_read_4(sc->bge_btag, sc->bge_bhandle, 0x7c00);
  bus_space_write_4(sc->bge_btag, sc->bge_bhandle, 0x7c00, val | (1<<25));
 }
 if (((sc->bge_chipid) >> 12) == 0x5720)
  bus_space_write_4(sc->bge_btag, sc->bge_bhandle, 0x3624, (bus_space_read_4(sc->bge_btag, sc->bge_bhandle, 0x3624) & ~(0x80000000)));
}
void
bge_rxeof(struct bge_softc *sc)
{
 struct mbuf_list ml = { ((void *)0), ((void *)0), 0 };
 struct ifnet *ifp;
 uint16_t rx_prod, rx_cons;
 int stdcnt = 0, jumbocnt = 0;
 bus_dmamap_t dmamap;
 bus_addr_t offset, toff;
 bus_size_t tlen;
 int tosync;
 rx_cons = sc->bge_rx_saved_considx;
 rx_prod = sc->bge_rdata->bge_status_block.bge_idx[0].bge_rx_prod_idx;
 if (rx_cons == rx_prod)
  return;
 ifp = &sc->arpcom.ac_if;
 bus_dmamap_sync(sc->bge_dmatag, sc->bge_ring_map,
     __builtin_offsetof(struct bge_ring_data, bge_status_block),
     sizeof (struct bge_status_block),
     0x02);
 offset = __builtin_offsetof(struct bge_ring_data, bge_rx_return_ring);
 tosync = rx_prod - rx_cons;
 toff = offset + (rx_cons * sizeof (struct bge_rx_bd));
 if (tosync < 0) {
  tlen = (sc->bge_return_ring_cnt - rx_cons) *
      sizeof (struct bge_rx_bd);
  bus_dmamap_sync(sc->bge_dmatag, sc->bge_ring_map,
      toff, tlen, 0x02);
  tosync = -tosync;
 }
 bus_dmamap_sync(sc->bge_dmatag, sc->bge_ring_map,
     offset, tosync * sizeof (struct bge_rx_bd),
     0x02);
 while (rx_cons != rx_prod) {
  struct bge_rx_bd *cur_rx;
  u_int32_t rxidx;
  struct mbuf *m = ((void *)0);
  cur_rx = &sc->bge_rdata->bge_rx_return_ring[rx_cons];
  rxidx = cur_rx->bge_idx;
  (rx_cons) = (rx_cons + 1) % sc->bge_return_ring_cnt;
  if (cur_rx->bge_flags & 0x0020) {
   m = sc->bge_cdata.bge_rx_jumbo_chain[rxidx];
   sc->bge_cdata.bge_rx_jumbo_chain[rxidx] = ((void *)0);
   jumbocnt++;
   dmamap = sc->bge_cdata.bge_rx_jumbo_map[rxidx];
   bus_dmamap_sync(sc->bge_dmatag, dmamap, 0,
       dmamap->dm_mapsize, 0x02);
   bus_dmamap_unload(sc->bge_dmatag, dmamap);
   if (cur_rx->bge_flags & 0x0400) {
    m_freem(m);
    continue;
   }
  } else {
   m = sc->bge_cdata.bge_rx_std_chain[rxidx];
   sc->bge_cdata.bge_rx_std_chain[rxidx] = ((void *)0);
   stdcnt++;
   dmamap = sc->bge_cdata.bge_rx_std_map[rxidx];
   bus_dmamap_sync(sc->bge_dmatag, dmamap, 0,
       dmamap->dm_mapsize, 0x02);
   bus_dmamap_unload(sc->bge_dmatag, dmamap);
   if (cur_rx->bge_flags & 0x0400) {
    m_freem(m);
    continue;
   }
  }
  if (sc->bge_flags & 0x00000008) {
   __builtin_bcopy((m->m_hdr.mh_data), (m->m_hdr.mh_data + 2), (cur_rx->bge_len));
   m->m_hdr.mh_data += 2;
  }
  m->M_dat.MH.MH_pkthdr.len = m->m_hdr.mh_len = cur_rx->bge_len - 4;
  bge_rxcsum(sc, cur_rx, m);
  if (ifp->if_data.ifi_capabilities & 0x00000020 &&
      cur_rx->bge_flags & 0x0040) {
   m->M_dat.MH.MH_pkthdr.ether_vtag = cur_rx->bge_vlan_tag;
   m->m_hdr.mh_flags |= 0x0020;
  }
  ml_enqueue(&ml, m);
 }
 sc->bge_rx_saved_considx = rx_cons;
 bge_writembx(sc, 0x0284, sc->bge_rx_saved_considx);
 if (stdcnt) {
  do { (&sc->bge_std_ring)->rxr_alive -= (stdcnt); } while (0);
  bge_fill_rx_ring_std(sc);
 }
 if (jumbocnt) {
  do { (&sc->bge_jumbo_ring)->rxr_alive -= (jumbocnt); } while (0);
  bge_fill_rx_ring_jumbo(sc);
 }
 if_input(ifp, &ml);
}
void
bge_rxcsum(struct bge_softc *sc, struct bge_rx_bd *cur_rx, struct mbuf *m)
{
 if (sc->bge_chipid == 0x7100) {
  return;
 } else if (((sc)->bge_flags & 0x00020000)) {
  if ((cur_rx->bge_flags & 0x8000) == 0) {
   if (cur_rx->bge_flags & 0x1000 &&
       (cur_rx->bge_error_flag &
       0x1000) == 0)
    m->M_dat.MH.MH_pkthdr.csum_flags |= 0x0008;
   if (cur_rx->bge_flags & 0x2000) {
    m->M_dat.MH.MH_pkthdr.csum_flags |=
        0x0020|0x0080;
                        }
                }
        } else {
  if (cur_rx->bge_flags & 0x1000 &&
      cur_rx->bge_ip_csum == 0xFFFF)
   m->M_dat.MH.MH_pkthdr.csum_flags |= 0x0008;
  if (cur_rx->bge_flags & 0x2000 &&
      m->M_dat.MH.MH_pkthdr.len >= (64 - 4) &&
      cur_rx->bge_tcp_udp_csum == 0xFFFF) {
   m->M_dat.MH.MH_pkthdr.csum_flags |=
       0x0020|0x0080;
  }
 }
}
void
bge_txeof(struct bge_softc *sc)
{
 struct bge_tx_bd *cur_tx = ((void *)0);
 struct ifnet *ifp;
 bus_dmamap_t dmamap;
 bus_addr_t offset, toff;
 bus_size_t tlen;
 int tosync, freed, txcnt;
 u_int32_t cons, newcons;
 struct mbuf *m;
 cons = sc->bge_tx_saved_considx;
 newcons = sc->bge_rdata->bge_status_block.bge_idx[0].bge_tx_cons_idx;
 if (cons == newcons)
  return;
 ifp = &sc->arpcom.ac_if;
 bus_dmamap_sync(sc->bge_dmatag, sc->bge_ring_map,
     __builtin_offsetof(struct bge_ring_data, bge_status_block),
     sizeof (struct bge_status_block),
     0x02);
 offset = __builtin_offsetof(struct bge_ring_data, bge_tx_ring);
 tosync = newcons - cons;
 toff = offset + (cons * sizeof (struct bge_tx_bd));
 if (tosync < 0) {
  tlen = (512 - cons) * sizeof (struct bge_tx_bd);
  bus_dmamap_sync(sc->bge_dmatag, sc->bge_ring_map,
      toff, tlen, 0x02|0x08);
  tosync = -tosync;
 }
 bus_dmamap_sync(sc->bge_dmatag, sc->bge_ring_map,
     offset, tosync * sizeof (struct bge_tx_bd),
     0x02|0x08);
 freed = 0;
 while (cons != newcons) {
  cur_tx = &sc->bge_rdata->bge_tx_ring[cons];
  m = sc->bge_cdata.bge_tx_chain[cons];
  if (m != ((void *)0)) {
   dmamap = sc->bge_cdata.bge_tx_map[cons];
   sc->bge_cdata.bge_tx_chain[cons] = ((void *)0);
   sc->bge_cdata.bge_tx_map[cons] = ((void *)0);
   bus_dmamap_sync(sc->bge_dmatag, dmamap, 0,
       dmamap->dm_mapsize, 0x08);
   bus_dmamap_unload(sc->bge_dmatag, dmamap);
   m_freem(m);
  }
  freed++;
  (cons) = (cons + 1) % 512;
 }
 txcnt = _atomic_sub_int_nv(&sc->bge_txcnt, freed);
 sc->bge_tx_saved_considx = cons;
 if (ifq_is_oactive(&ifp->if_snd))
  ifq_restart(&ifp->if_snd);
 else if (txcnt == 0)
  ifp->if_timer = 0;
}
int
bge_intr(void *xsc)
{
 struct bge_softc *sc;
 struct ifnet *ifp;
 u_int32_t statusword, statustag;
 sc = xsc;
 ifp = &sc->arpcom.ac_if;
 bus_dmamap_sync(sc->bge_dmatag, sc->bge_ring_map,
     __builtin_offsetof(struct bge_ring_data, bge_status_block),
     sizeof (struct bge_status_block),
     0x02 | 0x08);
 statusword = sc->bge_rdata->bge_status_block.bge_status;
 statustag = sc->bge_rdata->bge_status_block.bge_status_tag << 24;
 if (sc->bge_flags & 0x00200000) {
  if (sc->bge_lasttag == statustag &&
      (bus_space_read_4(sc->bge_btag, sc->bge_bhandle, 0x70) &
       0x00000002))
   return (0);
  sc->bge_lasttag = statustag;
 } else {
  if (!(statusword & 0x00000001) &&
      (bus_space_read_4(sc->bge_btag, sc->bge_bhandle, 0x70) &
       0x00000002))
   return (0);
  bge_writembx(sc, 0x0204, 1);
  statustag = 0;
 }
 sc->bge_rdata->bge_status_block.bge_status = 0;
 bus_dmamap_sync(sc->bge_dmatag, sc->bge_ring_map,
     __builtin_offsetof(struct bge_ring_data, bge_status_block),
     sizeof (struct bge_status_block),
     0x01 | 0x04);
 if (((sc->bge_chipid) >> 12) == 0x07 ||
     statusword & 0x00000002 ||
     ((sc)->bge_sts & (0x00000002))) {
  _kernel_lock("/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../dev/pci/if_bge.c", 3733);
  bge_link_upd(sc);
  _kernel_unlock();
 }
 bge_writembx(sc, 0x0204, statustag);
 if (ifp->if_flags & 0x40) {
  bge_rxeof(sc);
  bge_txeof(sc);
 }
 return (1);
}
void
bge_tick(void *xsc)
{
 struct bge_softc *sc = xsc;
 struct mii_data *mii = &sc->bge_mii;
 int s;
 s = _splraise(6);
 if (((sc)->bge_flags & 0x00001000))
  bge_stats_update_regs(sc);
 else
  bge_stats_update(sc);
 if (sc->bge_flags & 0x00000200) {
  ((sc)->bge_sts |= (0x00000002));
  bus_space_write_4(sc->bge_btag, sc->bge_bhandle, 0x6808, (bus_space_read_4(sc->bge_btag, sc->bge_bhandle, 0x6808) | (0x00000004)));
 } else {
  if (!((sc)->bge_sts & (0x00000001)))
   mii_tick(mii);
 }
 timeout_add_sec(&sc->bge_timeout, 1);
 _splx(s);
}
void
bge_stats_update_regs(struct bge_softc *sc)
{
 struct ifnet *ifp = &sc->arpcom.ac_if;
 sc->bge_tx_collisions += bus_space_read_4(sc->bge_btag, sc->bge_bhandle, 0x0800 + __builtin_offsetof(struct bge_mac_stats_regs, etherStatsCollisions));
 sc->bge_rx_overruns += bus_space_read_4(sc->bge_btag, sc->bge_bhandle, 0x224C);
 if (((sc->bge_chipid) >> 12) != 0x5717 &&
     ((sc->bge_chipid) >> 12) != 0x5762 &&
     sc->bge_chipid != 0x05719000 &&
     sc->bge_chipid != 0x05720000)
  sc->bge_rx_discards += bus_space_read_4(sc->bge_btag, sc->bge_bhandle, 0x2250);
 sc->bge_rx_inerrors += bus_space_read_4(sc->bge_btag, sc->bge_bhandle, 0x2254);
 ifp->if_data.ifi_collisions = sc->bge_tx_collisions;
 ifp->if_data.ifi_ierrors = sc->bge_rx_discards + sc->bge_rx_inerrors;
 if (sc->bge_flags & 0x00800000) {
  u_int32_t val, ucast, mcast, bcast;
  ucast = bus_space_read_4(sc->bge_btag, sc->bge_bhandle, 0x0800 + __builtin_offsetof(struct bge_mac_stats_regs, ifHCOutUcastPkts));
  mcast = bus_space_read_4(sc->bge_btag, sc->bge_bhandle, 0x0800 + __builtin_offsetof(struct bge_mac_stats_regs, ifHCOutMulticastPkts));
  bcast = bus_space_read_4(sc->bge_btag, sc->bge_bhandle, 0x0800 + __builtin_offsetof(struct bge_mac_stats_regs, ifHCOutBroadcastPkts));
  if (ucast + mcast + bcast > 4) {
   val = bus_space_read_4(sc->bge_btag, sc->bge_bhandle, 0x4910);
   if (((sc->bge_chipid) >> 12) == 0x5719)
    val &= ~0x02000000;
   else
    val &= ~0x00200000;
   bus_space_write_4(sc->bge_btag, sc->bge_bhandle, 0x4910, val);
   sc->bge_flags &= ~0x00800000;
  }
 }
}
void
bge_stats_update(struct bge_softc *sc)
{
 struct ifnet *ifp = &sc->arpcom.ac_if;
 bus_size_t stats = 0x00008000 + 0x00000300;
 u_int32_t cnt;
 cnt = bus_space_read_4(sc->bge_btag, sc->bge_bhandle, stats + __builtin_offsetof(struct bge_stats, txstats.etherStatsCollisions.bge_addr_lo));
 ifp->if_data.ifi_collisions += (u_int32_t)(cnt - sc->bge_tx_collisions);
 sc->bge_tx_collisions = cnt;
 cnt = bus_space_read_4(sc->bge_btag, sc->bge_bhandle, stats + __builtin_offsetof(struct bge_stats, nicNoMoreRxBDs.bge_addr_lo));
 sc->bge_rx_overruns = cnt;
 cnt = bus_space_read_4(sc->bge_btag, sc->bge_bhandle, stats + __builtin_offsetof(struct bge_stats, ifInErrors.bge_addr_lo));
 ifp->if_data.ifi_ierrors += (uint32_t)(cnt - sc->bge_rx_inerrors);
 sc->bge_rx_inerrors = cnt;
 cnt = bus_space_read_4(sc->bge_btag, sc->bge_bhandle, stats + __builtin_offsetof(struct bge_stats, ifInDiscards.bge_addr_lo));
 ifp->if_data.ifi_ierrors += (u_int32_t)(cnt - sc->bge_rx_discards);
 sc->bge_rx_discards = cnt;
 cnt = bus_space_read_4(sc->bge_btag, sc->bge_bhandle, stats + __builtin_offsetof(struct bge_stats, txstats.ifOutDiscards.bge_addr_lo));
 ifp->if_data.ifi_oerrors += (u_int32_t)(cnt - sc->bge_tx_discards);
 sc->bge_tx_discards = cnt;
}
int
bge_compact_dma_runt(struct mbuf *pkt)
{
 struct mbuf *m, *prev, *n = ((void *)0);
 int totlen, newprevlen;
 prev = ((void *)0);
 totlen = 0;
 for (m = pkt; m != ((void *)0); prev = m,m = m->m_hdr.mh_next) {
  int mlen = m->m_hdr.mh_len;
  int shortfall = 8 - mlen ;
  totlen += mlen;
  if (mlen == 0)
   continue;
  if (mlen >= 8)
   continue;
  if (prev && m_trailingspace(prev) >= m->m_hdr.mh_len) {
   __builtin_bcopy((m->m_hdr.mh_data), (prev->m_hdr.mh_data+prev->m_hdr.mh_len), (mlen));
   prev->m_hdr.mh_len += mlen;
   m->m_hdr.mh_len = 0;
   prev->m_hdr.mh_next = m_free(m);
   m = prev;
   continue;
  } else if (m->m_hdr.mh_next != ((void *)0) &&
      m_trailingspace(m) >= shortfall &&
      m->m_hdr.mh_next->m_hdr.mh_len >= (8 + shortfall)) {
   __builtin_bcopy((m->m_hdr.mh_next->m_hdr.mh_data), (m->m_hdr.mh_data+m->m_hdr.mh_len), (shortfall));
   m->m_hdr.mh_len += shortfall;
   m->m_hdr.mh_next->m_hdr.mh_len -= shortfall;
   m->m_hdr.mh_next->m_hdr.mh_data += shortfall;
  } else if (m->m_hdr.mh_next == ((void *)0) || 1) {
   if ((prev->m_hdr.mh_len - shortfall) < 8)
    shortfall = prev->m_hdr.mh_len;
   newprevlen = prev->m_hdr.mh_len - shortfall;
   n = m_get((0x0002), (1));
   if (n == ((void *)0))
    return (55);
   ((m->m_hdr.mh_len + shortfall < (256 - sizeof(struct m_hdr))) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../dev/pci/if_bge.c", 3951, "m->m_len + shortfall < MLEN"));
   __builtin_bcopy((prev->m_hdr.mh_data + newprevlen), (n->m_hdr.mh_data), (shortfall));
   prev->m_hdr.mh_len -= shortfall;
   __builtin_bcopy((m->m_hdr.mh_data), (n->m_hdr.mh_data + shortfall), (m->m_hdr.mh_len));
   n->m_hdr.mh_len = shortfall + m->m_hdr.mh_len;
   n->m_hdr.mh_next = m->m_hdr.mh_next;
   prev->m_hdr.mh_next = n;
   m->m_hdr.mh_next = ((void *)0);
   m_free(m);
   m = n;
  }
 }
 return (0);
}
int
bge_cksum_pad(struct mbuf *m)
{
 int padlen = (64 - 4) - m->M_dat.MH.MH_pkthdr.len;
 struct mbuf *last;
 if (m->M_dat.MH.MH_pkthdr.len == m->m_hdr.mh_len && m_trailingspace(m) >= padlen) {
  last = m;
 } else {
  for (last = m; last->m_hdr.mh_next != ((void *)0); last = last->m_hdr.mh_next);
  if (m_trailingspace(last) < padlen) {
   struct mbuf *n;
   n = m_get((0x0002), (1));
   if (n == ((void *)0))
    return (55);
   n->m_hdr.mh_len = 0;
   last->m_hdr.mh_next = n;
   last = n;
  }
 }
 __builtin_memset((((caddr_t)((last)->m_hdr.mh_data)) + last->m_hdr.mh_len), (0), (padlen));
 last->m_hdr.mh_len += padlen;
 m->M_dat.MH.MH_pkthdr.len += padlen;
 return (0);
}
int
bge_encap(struct bge_softc *sc, struct mbuf *m, int *txinc)
{
 struct bge_tx_bd *f = ((void *)0);
 u_int32_t frag, cur;
 u_int16_t csum_flags = 0;
 bus_dmamap_t dmamap;
 int i = 0;
 cur = frag = (sc->bge_tx_prodidx + *txinc) % 512;
 if (m->M_dat.MH.MH_pkthdr.csum_flags) {
  if (m->M_dat.MH.MH_pkthdr.csum_flags & 0x0001)
   csum_flags |= 0x0002;
  if (m->M_dat.MH.MH_pkthdr.csum_flags &
      (0x0002 | 0x0004)) {
   csum_flags |= 0x0001;
   if (m->M_dat.MH.MH_pkthdr.len < (64 - 4) &&
       bge_cksum_pad(m) != 0)
    return (55);
  }
 }
 if (sc->bge_flags & 0x04000000 &&
     m->M_dat.MH.MH_pkthdr.len > 1518)
  csum_flags |= 0x0008;
 if (!(((sc->bge_chipid) >> 8) == 0x71))
  goto doit;
 if (bge_compact_dma_runt(m) != 0)
  return (55);
doit:
 dmamap = sc->bge_txdma[cur];
 switch (bus_dmamap_load_mbuf(sc->bge_dmatag, dmamap, m,
     0x0001)) {
 case 0:
  break;
 case 27:
  if (m_defrag(m, 0x0002) == 0 &&
      bus_dmamap_load_mbuf(sc->bge_dmatag, dmamap, m,
       0x0001) == 0)
   break;
 default:
  return (55);
 }
 for (i = 0; i < dmamap->dm_nsegs; i++) {
  f = &sc->bge_rdata->bge_tx_ring[frag];
  if (sc->bge_cdata.bge_tx_chain[frag] != ((void *)0))
   break;
  do { (f->bge_addr).bge_addr_lo = ((u_int64_t) (dmamap->dm_segs[i].ds_addr) & 0xffffffff); if (sizeof(bus_addr_t) == 8) (f->bge_addr).bge_addr_hi = ((u_int64_t) (dmamap->dm_segs[i].ds_addr) >> 32); else (f->bge_addr).bge_addr_hi = 0; } while(0);
  f->bge_len = dmamap->dm_segs[i].ds_len;
  f->bge_flags = csum_flags;
  f->bge_vlan_tag = 0;
  if (m->m_hdr.mh_flags & 0x0020) {
   f->bge_flags |= 0x0040;
   f->bge_vlan_tag = m->M_dat.MH.MH_pkthdr.ether_vtag;
  }
  cur = frag;
  (frag) = (frag + 1) % 512;
 }
 if (i < dmamap->dm_nsegs)
  goto fail_unload;
 if (frag == sc->bge_tx_saved_considx)
  goto fail_unload;
 bus_dmamap_sync(sc->bge_dmatag, dmamap, 0, dmamap->dm_mapsize,
     0x04);
 sc->bge_rdata->bge_tx_ring[cur].bge_flags |= 0x0004;
 sc->bge_cdata.bge_tx_chain[cur] = m;
 sc->bge_cdata.bge_tx_map[cur] = dmamap;
 *txinc += dmamap->dm_nsegs;
 return (0);
fail_unload:
 bus_dmamap_unload(sc->bge_dmatag, dmamap);
 return (55);
}
void
bge_start(struct ifqueue *ifq)
{
 struct ifnet *ifp = ifq->ifq_if;
 struct bge_softc *sc = ifp->if_softc;
 struct mbuf *m;
 int txinc;
 if (!((sc)->bge_sts & (0x00000001))) {
  ifq_purge(ifq);
  return;
 }
 txinc = 0;
 while (1) {
  if (sc->bge_txcnt + txinc + 30 + 16 >=
      512) {
   ifq_set_oactive(ifq);
   break;
  }
  m = ifq_dequeue(ifq);
  if (m == ((void *)0))
   break;
  if (bge_encap(sc, m, &txinc) != 0) {
   m_freem(m);
   continue;
  }
  if (ifp->if_bpf)
   bpf_mtap_ether(ifp->if_bpf, m, (1<<1));
 }
 if (txinc != 0) {
  sc->bge_tx_prodidx = (sc->bge_tx_prodidx + txinc) %
      512;
  bge_writembx(sc, 0x0304, sc->bge_tx_prodidx);
  if (((sc->bge_chipid) >> 8) == 0x71)
   bge_writembx(sc, 0x0304,
       sc->bge_tx_prodidx);
  ((void)_atomic_add_int_nv((&sc->bge_txcnt), (txinc)));
  ifp->if_timer = 5;
 }
}
void
bge_init(void *xsc)
{
 struct bge_softc *sc = xsc;
 struct ifnet *ifp;
 u_int16_t *m;
 u_int32_t mode;
 int s;
 s = _splraise(6);
 ifp = &sc->arpcom.ac_if;
 bge_stop(sc, 0);
 bge_sig_pre_reset(sc, 1);
 bge_reset(sc);
 bge_sig_legacy(sc, 1);
 bge_sig_post_reset(sc, 1);
 bge_chipinit(sc);
 if (bge_blockinit(sc)) {
  printf("%s: initialization failure\n", sc->bge_dev.dv_xname);
  _splx(s);
  return;
 }
 if (((sc)->bge_flags & 0x00000100))
  bus_space_write_4(sc->bge_btag, sc->bge_bhandle, 0x043C, 9022 + 4);
 else
  bus_space_write_4(sc->bge_btag, sc->bge_bhandle, 0x043C, 1518 + 4);
 m = (u_int16_t *)&sc->arpcom.ac_enaddr[0];
 bus_space_write_4(sc->bge_btag, sc->bge_bhandle, 0x0410, ((__uint16_t)(m[0])));
 bus_space_write_4(sc->bge_btag, sc->bge_bhandle, 0x0414, (((__uint16_t)(m[1])) << 16) | ((__uint16_t)(m[2])));
 if (!(ifp->if_data.ifi_capabilities & 0x00000020)) {
  bus_space_write_4(sc->bge_btag, sc->bge_bhandle, 0x0468, (bus_space_read_4(sc->bge_btag, sc->bge_bhandle, 0x0468) | (0x00000400)));
 }
 bge_iff(sc);
 bge_init_rx_ring_std(sc);
 if (sc->bge_chipid == 0x3000) {
  u_int32_t v, i;
  for (i = 0; i < 10; i++) {
   delay(20);
   v = bge_readmem_ind(sc, 0x00006000 + 8);
   if (v == ((1 << 11) - 2))
    break;
  }
  if (i == 10)
   printf("%s: 5705 A0 chip failed to load RX ring\n",
       sc->bge_dev.dv_xname);
 }
 if (sc->bge_flags & 0x01000000)
  bge_init_rx_ring_jumbo(sc);
 sc->bge_rx_saved_considx = 0;
 sc->bge_tx_collisions = 0;
 sc->bge_rx_discards = 0;
 sc->bge_rx_inerrors = 0;
 sc->bge_rx_overruns = 0;
 sc->bge_tx_discards = 0;
 bge_init_tx_ring(sc);
 mode = bus_space_read_4(sc->bge_btag, sc->bge_bhandle, 0x045C);
 if (((sc)->bge_flags & 0x00004000) ||
     ((sc->bge_chipid) >> 12) == 0x0c)
  mode |= 0x00000100;
 if (((sc->bge_chipid) >> 12) == 0x5720 ||
     ((sc->bge_chipid) >> 12) == 0x5762) {
  mode &= ~(0x00400000 | 0x00800000);
  mode |= bus_space_read_4(sc->bge_btag, sc->bge_bhandle, 0x045C) &
      (0x00400000 | 0x00800000);
 }
 bus_space_write_4(sc->bge_btag, sc->bge_bhandle, 0x045C, mode | 0x00000002);
 delay(100);
 mode = bus_space_read_4(sc->bge_btag, sc->bge_bhandle, 0x0468);
 if (((sc)->bge_flags & 0x00004000))
  mode |= 0x01000000;
 if (((sc->bge_chipid) >> 12) == 0x5762)
  mode |= 0x02000000;
 bus_space_write_4(sc->bge_btag, sc->bge_bhandle, 0x0468, mode | 0x00000002);
 delay(10);
 if (((sc)->bge_flags & 0x00040000))
  bus_space_write_4(sc->bge_btag, sc->bge_bhandle, 0x0504, 1);
 else
  bus_space_write_4(sc->bge_btag, sc->bge_bhandle, 0x0504, 2);
 bus_space_write_4(sc->bge_btag, sc->bge_bhandle, 0x6800, (bus_space_read_4(sc->bge_btag, sc->bge_bhandle, 0x6800) | (0x00010000)));
 bus_space_write_4(sc->bge_btag, sc->bge_bhandle, 0x68, (bus_space_read_4(sc->bge_btag, sc->bge_bhandle, 0x68) | (0x00000001)));
 bus_space_write_4(sc->bge_btag, sc->bge_bhandle, 0x68, (bus_space_read_4(sc->bge_btag, sc->bge_bhandle, 0x68) & ~(0x00000002)));
 bge_writembx(sc, 0x0204, 0);
 bge_ifmedia_upd(ifp);
 ifp->if_flags |= 0x40;
 ifq_clr_oactive(&ifp->if_snd);
 _splx(s);
 timeout_add_sec(&sc->bge_timeout, 1);
}
int
bge_ifmedia_upd(struct ifnet *ifp)
{
 struct bge_softc *sc = ifp->if_softc;
 struct mii_data *mii = &sc->bge_mii;
 struct ifmedia *ifm = &sc->bge_ifmedia;
 if (sc->bge_flags & 0x00000200) {
  if (((ifm->ifm_media) & 0x000000000000ff00ULL) != 0x0000000000000100ULL)
   return (22);
  switch(((ifm->ifm_media) & 0x00000000000000ffULL)) {
  case 0ULL:
   if (((sc->bge_chipid) >> 12) == 0x02) {
    u_int32_t sgdig;
    sgdig = bus_space_read_4(sc->bge_btag, sc->bge_bhandle, 0x05B4);
    if (sgdig & 0x00000002) {
     bus_space_write_4(sc->bge_btag, sc->bge_bhandle, 0x0444, 0);
     sgdig = bus_space_read_4(sc->bge_btag, sc->bge_bhandle, 0x05B0);
     sgdig |= 0x80000000 |
         0x00000800 |
         0x00001000;
     bus_space_write_4(sc->bge_btag, sc->bge_bhandle, 0x05B0, sgdig | 0x40000000);
     delay(5);
     bus_space_write_4(sc->bge_btag, sc->bge_bhandle, 0x05B0, sgdig);
    }
   }
   break;
  case 11:
   if ((ifm->ifm_media & 0x00ffff0000000000ULL) == 0x0000010000000000ULL) {
    bus_space_write_4(sc->bge_btag, sc->bge_bhandle, 0x0400, (bus_space_read_4(sc->bge_btag, sc->bge_bhandle, 0x0400) & ~(0x00000002)));
   } else {
    bus_space_write_4(sc->bge_btag, sc->bge_bhandle, 0x0400, (bus_space_read_4(sc->bge_btag, sc->bge_bhandle, 0x0400) | (0x00000002)));
   }
   delay(40);
   break;
  default:
   return (22);
  }
  return (0);
 }
 ((sc)->bge_sts |= (0x00000002));
 if (mii->mii_instance) {
  struct mii_softc *miisc;
  for((miisc) = ((&mii->mii_phys)->lh_first); (miisc)!= ((void *)0); (miisc) = ((miisc)->mii_list.le_next))
   mii_phy_reset(miisc);
 }
 mii_mediachg(mii);
 if (((sc->bge_chipid) >> 12) == 0x07 ||
     sc->bge_flags & 0x00000800)
  bus_space_write_4(sc->bge_btag, sc->bge_bhandle, 0x6808, (bus_space_read_4(sc->bge_btag, sc->bge_bhandle, 0x6808) | (0x00000004)));
 else
  bus_space_write_4(sc->bge_btag, sc->bge_bhandle, 0x3C00, (bus_space_read_4(sc->bge_btag, sc->bge_bhandle, 0x3C00) | (0x00000008)));
 return (0);
}
void
bge_ifmedia_sts(struct ifnet *ifp, struct ifmediareq *ifmr)
{
 struct bge_softc *sc = ifp->if_softc;
 struct mii_data *mii = &sc->bge_mii;
 if (sc->bge_flags & 0x00000200) {
  ifmr->ifm_status = 0x0000000000000001ULL;
  ifmr->ifm_active = 0x0000000000000100ULL;
  if (bus_space_read_4(sc->bge_btag, sc->bge_bhandle, 0x0404) &
      0x00000001) {
   ifmr->ifm_status |= 0x0000000000000002ULL;
  } else {
   ifmr->ifm_active |= 2ULL;
   return;
  }
  ifmr->ifm_active |= 11;
  if (bus_space_read_4(sc->bge_btag, sc->bge_bhandle, 0x0400) & 0x00000002)
   ifmr->ifm_active |= 0x0000020000000000ULL;
  else
   ifmr->ifm_active |= 0x0000010000000000ULL;
  return;
 }
 mii_pollstat(mii);
 ifmr->ifm_status = mii->mii_media_status;
 ifmr->ifm_active = (mii->mii_media_active & ~(0x0000040000000000ULL|0x0000000000020000ULL|0x0000000000040000ULL)) |
     sc->bge_flowflags;
}
int
bge_ioctl(struct ifnet *ifp, u_long command, caddr_t data)
{
 struct bge_softc *sc = ifp->if_softc;
 struct ifreq *ifr = (struct ifreq *) data;
 int s, error = 0;
 struct mii_data *mii;
 s = _splraise(6);
 switch(command) {
 case ((unsigned long)0x80000000 | ((sizeof(struct ifreq) & 0x1fff) << 16) | ((('i')) << 8) | ((12))):
  ifp->if_flags |= 0x1;
  if (!(ifp->if_flags & 0x40))
   bge_init(sc);
  break;
 case ((unsigned long)0x80000000 | ((sizeof(struct ifreq) & 0x1fff) << 16) | ((('i')) << 8) | ((16))):
  if (ifp->if_flags & 0x1) {
   if (ifp->if_flags & 0x40)
    error = 52;
   else
    bge_init(sc);
  } else {
   if (ifp->if_flags & 0x40)
    bge_stop(sc, 0);
  }
  break;
 case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct ifreq) & 0x1fff) << 16) | ((('i')) << 8) | ((55))):
  if (sc->bge_flags & 0x00000200) {
   ifr->ifr_ifru.ifru_media &= ~(0x0000040000000000ULL|0x0000000000020000ULL|0x0000000000040000ULL);
   sc->bge_flowflags = 0;
  }
  if (((ifr->ifr_ifru.ifru_media) & 0x00000000000000ffULL) == 0ULL ||
      (ifr->ifr_ifru.ifru_media & 0x0000010000000000ULL) == 0) {
       ifr->ifr_ifru.ifru_media &= ~(0x0000040000000000ULL|0x0000000000020000ULL|0x0000000000040000ULL);
  }
  if (((ifr->ifr_ifru.ifru_media) & 0x00000000000000ffULL) != 0ULL) {
   if ((ifr->ifr_ifru.ifru_media & (0x0000040000000000ULL|0x0000000000020000ULL|0x0000000000040000ULL)) == 0x0000040000000000ULL) {
    ifr->ifr_ifru.ifru_media |=
        0x0000000000040000ULL | 0x0000000000020000ULL;
   }
   sc->bge_flowflags = ifr->ifr_ifru.ifru_media & (0x0000040000000000ULL|0x0000000000020000ULL|0x0000000000040000ULL);
  }
 case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct ifmediareq) & 0x1fff) << 16) | ((('i')) << 8) | ((56))):
  if (sc->bge_flags & 0x00000200) {
   error = ifmedia_ioctl(ifp, ifr, &sc->bge_ifmedia,
       command);
  } else {
   mii = &sc->bge_mii;
   error = ifmedia_ioctl(ifp, ifr, &mii->mii_media,
       command);
  }
  break;
 case ((unsigned long)0x80000000 | ((sizeof(struct ifreq) & 0x1fff) << 16) | ((('i')) << 8) | ((170))):
  error = bge_rxrinfo(sc, (struct if_rxrinfo *)ifr->ifr_ifru.ifru_data);
  break;
 default:
  error = ether_ioctl(ifp, &sc->arpcom, command, data);
 }
 if (error == 52) {
  if (ifp->if_flags & 0x40)
   bge_iff(sc);
  error = 0;
 }
 _splx(s);
 return (error);
}
int
bge_rxrinfo(struct bge_softc *sc, struct if_rxrinfo *ifri)
{
 struct if_rxring_info ifr[2];
 u_int n = 0;
 __builtin_memset((ifr), (0), (sizeof(ifr)));
 if (((sc->bge_flags) & (0x00000002))) {
  ifr[n].ifr_size = sc->bge_rx_std_len;
  strlcpy(ifr[n].ifr_name, "std", sizeof(ifr[n].ifr_name));
  ifr[n].ifr_info = sc->bge_std_ring;
  n++;
 }
 if (((sc->bge_flags) & (0x00000004))) {
  ifr[n].ifr_size = ((9022 + 2) + (sizeof(u_int64_t) - ((9022 + 2) % sizeof(u_int64_t))));
  strlcpy(ifr[n].ifr_name, "jumbo", sizeof(ifr[n].ifr_name));
  ifr[n].ifr_info = sc->bge_jumbo_ring;
  n++;
 }
 return (if_rxr_info_ioctl(ifri, n, ifr));
}
void
bge_watchdog(struct ifnet *ifp)
{
 struct bge_softc *sc;
 sc = ifp->if_softc;
 printf("%s: watchdog timeout -- resetting\n", sc->bge_dev.dv_xname);
 bge_init(sc);
 ifp->if_data.ifi_oerrors++;
}
void
bge_stop_block(struct bge_softc *sc, bus_size_t reg64, u_int32_t bit)
{
 int i;
 bus_space_write_4(sc->bge_btag, sc->bge_bhandle, reg64, (bus_space_read_4(sc->bge_btag, sc->bge_bhandle, reg64) & ~(bit)));
 for (i = 0; i < 100000; i++) {
  if ((bus_space_read_4(sc->bge_btag, sc->bge_bhandle, reg64) & bit) == 0)
   return;
  delay(100);
 }
 ;
}
void
bge_stop(struct bge_softc *sc, int softonly)
{
 struct ifnet *ifp = &sc->arpcom.ac_if;
 struct ifmedia_entry *ifm;
 struct mii_data *mii;
 int mtmp, itmp;
 timeout_del(&sc->bge_timeout);
 timeout_del(&sc->bge_rxtimeout);
 timeout_del(&sc->bge_rxtimeout_jumbo);
 ifp->if_flags &= ~0x40;
 ifp->if_timer = 0;
 if (!softonly) {
  bge_sig_pre_reset(sc, 0);
  bge_stop_block(sc, 0x0468, 0x00000002);
  bge_stop_block(sc, 0x2C00, 0x00000002);
  bge_stop_block(sc, 0x2000, 0x00000002);
  if (((sc)->bge_flags & 0x00010000))
   bge_stop_block(sc, 0x3400, 0x00000002);
  bge_stop_block(sc, 0x2400, 0x00000002);
  bge_stop_block(sc, 0x2800, 0x00000002);
  bge_stop_block(sc, 0x3000, 0x00000002);
  bge_stop_block(sc, 0x1400, 0x00000002);
  bge_stop_block(sc, 0x1800, 0x00000002);
  bge_stop_block(sc, 0x0C00, 0x00000002);
  bge_stop_block(sc, 0x4800, 0x00000002);
  bge_stop_block(sc, 0x1000, 0x00000002);
  if (((sc)->bge_flags & 0x00010000))
   bge_stop_block(sc, 0x6400, 0x00000002);
  bge_stop_block(sc, 0x1C00, 0x00000002);
  bge_stop_block(sc, 0x3C00, 0x00000002);
  bge_stop_block(sc, 0x4C00, 0x00000002);
  if (((sc)->bge_flags & 0x00010000))
   bge_stop_block(sc, 0x3800, 0x00000002);
  bus_space_write_4(sc->bge_btag, sc->bge_bhandle, 0x5C00, 0xFFFFFFFF);
  bus_space_write_4(sc->bge_btag, sc->bge_bhandle, 0x5C00, 0);
  if (!((sc)->bge_flags & 0x00001000)) {
   bge_stop_block(sc, 0x4400, 0x00000002);
   bge_stop_block(sc, 0x4000, 0x00000002);
  }
  bge_reset(sc);
  bge_sig_legacy(sc, 0);
  bge_sig_post_reset(sc, 0);
  bus_space_write_4(sc->bge_btag, sc->bge_bhandle, 0x6800, (bus_space_read_4(sc->bge_btag, sc->bge_bhandle, 0x6800) & ~(0x00010000)));
 }
 intr_barrier(sc->bge_intrhand);
 ifq_barrier(&ifp->if_snd);
 ifq_clr_oactive(&ifp->if_snd);
 bge_free_rx_ring_std(sc);
 if (sc->bge_flags & 0x01000000)
  bge_free_rx_ring_jumbo(sc);
 bge_free_tx_ring(sc);
 if (!(sc->bge_flags & 0x00000200)) {
  mii = &sc->bge_mii;
  itmp = ifp->if_flags;
  ifp->if_flags |= 0x1;
  ifm = mii->mii_media.ifm_cur;
  mtmp = ifm->ifm_media;
  ifm->ifm_media = 0x0000000000000100ULL|2ULL;
  mii_mediachg(mii);
  ifm->ifm_media = mtmp;
  ifp->if_flags = itmp;
 }
 sc->bge_tx_saved_considx = 0xFFFF;
 if (!softonly) {
  ((sc)->bge_sts &= ~(0x00000001));
 }
}
void
bge_link_upd(struct bge_softc *sc)
{
 struct ifnet *ifp = &sc->arpcom.ac_if;
 struct mii_data *mii = &sc->bge_mii;
 u_int32_t status;
 int link;
 ((sc)->bge_sts &= ~(0x00000002));
 if (((sc->bge_chipid) >> 12) == 0x07) {
  status = bus_space_read_4(sc->bge_btag, sc->bge_bhandle, 0x0404);
  if (status & 0x00800000) {
   mii_pollstat(mii);
   if (!((sc)->bge_sts & (0x00000001)) &&
       mii->mii_media_status & 0x0000000000000002ULL &&
       ((mii->mii_media_active) & 0x00000000000000ffULL) != 2ULL)
    ((sc)->bge_sts |= (0x00000001));
   else if (((sc)->bge_sts & (0x00000001)) &&
       (!(mii->mii_media_status & 0x0000000000000002ULL) ||
       ((mii->mii_media_active) & 0x00000000000000ffULL) == 2ULL))
    ((sc)->bge_sts &= ~(0x00000001));
   bus_space_write_4(sc->bge_btag, sc->bge_bhandle, 0x0408, 0x00800000);
   bge_miibus_readreg(&sc->bge_dev, sc->bge_phy_addr,
       0x1A);
   bge_miibus_writereg(&sc->bge_dev, sc->bge_phy_addr,
       0x1B, ~(0x0002|0x0004|0x0008));
  }
  return;
 }
 if (sc->bge_flags & 0x00000200) {
  status = bus_space_read_4(sc->bge_btag, sc->bge_bhandle, 0x0404);
  if (status & 0x00000001) {
   if (!((sc)->bge_sts & (0x00000001))) {
    ((sc)->bge_sts |= (0x00000001));
    if (((sc->bge_chipid) >> 12) == 0x02)
     bus_space_write_4(sc->bge_btag, sc->bge_bhandle, 0x0400, (bus_space_read_4(sc->bge_btag, sc->bge_bhandle, 0x0400) & ~(0x00020000)));
    bus_space_write_4(sc->bge_btag, sc->bge_bhandle, 0x0404, 0xFFFFFFFF);
    status = bus_space_read_4(sc->bge_btag, sc->bge_bhandle, 0x0400);
    link = (status & 0x00000002) ?
        5 :
        6;
    ifp->if_data.ifi_baudrate = ((((((1) * 1000ULL) * 1000ULL) * 1000ULL)));
    if (ifp->if_data.ifi_link_state != link) {
     ifp->if_data.ifi_link_state = link;
     if_link_state_change(ifp);
    }
   }
  } else if (((sc)->bge_sts & (0x00000001))) {
   ((sc)->bge_sts &= ~(0x00000001));
   link = 2;
   ifp->if_data.ifi_baudrate = 0;
   if (ifp->if_data.ifi_link_state != link) {
    ifp->if_data.ifi_link_state = link;
    if_link_state_change(ifp);
   }
  }
 } else if (((sc)->bge_sts & (0x00000004))) {
  link = (bus_space_read_4(sc->bge_btag, sc->bge_bhandle, 0x0450) & 0x00000001)?
      0x00000001 : 0;
  if (((sc)->bge_sts & (0x00000001)) != link) {
   mii_pollstat(mii);
   if (!((sc)->bge_sts & (0x00000001)) &&
       mii->mii_media_status & 0x0000000000000002ULL &&
       ((mii->mii_media_active) & 0x00000000000000ffULL) != 2ULL)
    ((sc)->bge_sts |= (0x00000001));
   else if (((sc)->bge_sts & (0x00000001)) &&
       (!(mii->mii_media_status & 0x0000000000000002ULL) ||
       ((mii->mii_media_active) & 0x00000000000000ffULL) == 2ULL))
    ((sc)->bge_sts &= ~(0x00000001));
  }
 } else {
  mii_pollstat(mii);
 }
 bus_space_write_4(sc->bge_btag, sc->bge_bhandle, 0x0404, 0x00000010| 0x00000008|0x00400000| 0x00001000);
}
