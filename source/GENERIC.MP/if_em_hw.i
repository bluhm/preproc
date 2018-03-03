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
typedef int vm_fault_t;
typedef int vm_inherit_t;
typedef off_t voff_t;
union vm_map_object;
typedef union vm_map_object vm_map_object_t;
struct vm_map_entry;
typedef struct vm_map_entry *vm_map_entry_t;
struct vm_map;
typedef struct vm_map *vm_map_t;
struct vm_page;
typedef struct vm_page *vm_page_t;
typedef int vm_prot_t;
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
struct buf;
struct mount;
struct pglist;
struct vmspace;
struct pmap;
struct vm_map;
vaddr_t dvma_mapin(struct vm_map *, vaddr_t, int, int);
void dvma_mapout(vaddr_t, vaddr_t, int);
typedef int boolean_t;
struct proc;
struct pmap_statistics {
 long resident_count;
 long wired_count;
};
typedef struct pmap_statistics *pmap_statistics_t;
struct sun4u_tte {
 int64_t tag;
 int64_t data;
};
typedef struct sun4u_tte pte_t;
extern void sp_tlb_flush_pte(vaddr_t addr, int ctx);
extern void sp_tlb_flush_ctx(int ctx);
void smp_tlb_flush_pte(vaddr_t, int);
void smp_tlb_flush_ctx(int);
struct page_size_map {
 u_int64_t mask;
 u_int64_t code;
};
extern struct page_size_map page_size_map[];
struct pmap {
 struct mutex pm_mtx;
 int pm_ctx;
 int pm_refs;
 paddr_t pm_physaddr;
 int64_t *pm_segs;
 struct pmap_statistics pm_stats;
};
struct prom_map {
 u_int64_t vstart;
 u_int64_t vsize;
 u_int64_t tte;
};
typedef struct pmap *pmap_t;
extern struct pmap kernel_pmap_;
void pmap_bootstrap(u_long, u_long, u_int, u_int);
void pmap_redzone(void);
int pmap_dumpsize(void);
int pmap_dumpmmu(int (*)(dev_t, daddr_t, caddr_t, size_t), daddr_t);
int pmap_pa_exists(paddr_t);
struct proc;
void switchexit(struct proc *);
int ctx_alloc(struct pmap*);
void ctx_free(struct pmap*);
typedef struct pv_entry {
 struct pv_entry *pv_next;
 struct pmap *pv_pmap;
 vaddr_t pv_va;
} *pv_entry_t;
struct vm_page_md {
 struct mutex pvmtx;
 struct pv_entry pvent;
};

void pmap_activate(struct proc *);
void pmap_deactivate(struct proc *);
void pmap_unwire(pmap_t, vaddr_t);
boolean_t pmap_clear_modify(struct vm_page *);
boolean_t pmap_clear_reference(struct vm_page *);
void pmap_collect(pmap_t);
void pmap_copy(pmap_t, pmap_t, vaddr_t, vsize_t, vaddr_t);
void pmap_copy_page(struct vm_page *, struct vm_page *);
struct pmap *pmap_create(void);
void pmap_destroy(pmap_t);
int pmap_enter(pmap_t,
      vaddr_t, paddr_t, vm_prot_t, int);
boolean_t pmap_extract(pmap_t, vaddr_t, paddr_t *);
vaddr_t pmap_growkernel(vaddr_t);
void pmap_init(void);
void pmap_kenter_pa(vaddr_t, paddr_t, vm_prot_t);
void pmap_kremove(vaddr_t, vsize_t);
boolean_t pmap_is_modified(struct vm_page *);
boolean_t pmap_is_referenced(struct vm_page *);
void pmap_page_protect(struct vm_page *, vm_prot_t);
void pmap_protect(pmap_t, vaddr_t, vaddr_t, vm_prot_t);
void pmap_reference(pmap_t);
void pmap_remove(pmap_t, vaddr_t, vaddr_t);
void pmap_remove_holes(struct vmspace *);
void pmap_zero_page(struct vm_page *);
void pmap_virtual_space(vaddr_t *, vaddr_t *);

struct uvm_object {
 struct uvm_pagerops *pgops;
 struct uvm_objtree { struct rb_tree rbh_root; } memt;
 int uo_npages;
 int uo_refs;
};
extern struct uvm_pagerops uvm_vnodeops;
extern struct uvm_pagerops uvm_deviceops;
int uvm_pagecmp(const struct vm_page *, const struct vm_page *);
extern const struct rb_type *const uvm_objtree_RBT_TYPE; __attribute__((__unused__)) static inline void uvm_objtree_RBT_INIT(struct uvm_objtree *head) { _rb_init(&head->rbh_root); } __attribute__((__unused__)) static inline struct vm_page * uvm_objtree_RBT_INSERT(struct uvm_objtree *head, struct vm_page *elm) { return _rb_insert(uvm_objtree_RBT_TYPE, &head->rbh_root, elm); } __attribute__((__unused__)) static inline struct vm_page * uvm_objtree_RBT_REMOVE(struct uvm_objtree *head, struct vm_page *elm) { return _rb_remove(uvm_objtree_RBT_TYPE, &head->rbh_root, elm); } __attribute__((__unused__)) static inline struct vm_page * uvm_objtree_RBT_FIND(struct uvm_objtree *head, const struct vm_page *key) { return _rb_find(uvm_objtree_RBT_TYPE, &head->rbh_root, key); } __attribute__((__unused__)) static inline struct vm_page * uvm_objtree_RBT_NFIND(struct uvm_objtree *head, const struct vm_page *key) { return _rb_nfind(uvm_objtree_RBT_TYPE, &head->rbh_root, key); } __attribute__((__unused__)) static inline struct vm_page * uvm_objtree_RBT_ROOT(struct uvm_objtree *head) { return _rb_root(uvm_objtree_RBT_TYPE, &head->rbh_root); } __attribute__((__unused__)) static inline int uvm_objtree_RBT_EMPTY(struct uvm_objtree *head) { return _rb_empty(&head->rbh_root); } __attribute__((__unused__)) static inline struct vm_page * uvm_objtree_RBT_MIN(struct uvm_objtree *head) { return _rb_min(uvm_objtree_RBT_TYPE, &head->rbh_root); } __attribute__((__unused__)) static inline struct vm_page * uvm_objtree_RBT_MAX(struct uvm_objtree *head) { return _rb_max(uvm_objtree_RBT_TYPE, &head->rbh_root); } __attribute__((__unused__)) static inline struct vm_page * uvm_objtree_RBT_NEXT(struct vm_page *elm) { return _rb_next(uvm_objtree_RBT_TYPE, elm); } __attribute__((__unused__)) static inline struct vm_page * uvm_objtree_RBT_PREV(struct vm_page *elm) { return _rb_prev(uvm_objtree_RBT_TYPE, elm); } __attribute__((__unused__)) static inline struct vm_page * uvm_objtree_RBT_LEFT(struct vm_page *elm) { return _rb_left(uvm_objtree_RBT_TYPE, elm); } __attribute__((__unused__)) static inline struct vm_page * uvm_objtree_RBT_RIGHT(struct vm_page *elm) { return _rb_right(uvm_objtree_RBT_TYPE, elm); } __attribute__((__unused__)) static inline struct vm_page * uvm_objtree_RBT_PARENT(struct vm_page *elm) { return _rb_parent(uvm_objtree_RBT_TYPE, elm); } __attribute__((__unused__)) static inline void uvm_objtree_RBT_SET_LEFT(struct vm_page *elm, struct vm_page *left) { return _rb_set_left(uvm_objtree_RBT_TYPE, elm, left); } __attribute__((__unused__)) static inline void uvm_objtree_RBT_SET_RIGHT(struct vm_page *elm, struct vm_page *right) { return _rb_set_right(uvm_objtree_RBT_TYPE, elm, right); } __attribute__((__unused__)) static inline void uvm_objtree_RBT_SET_PARENT(struct vm_page *elm, struct vm_page *parent) { return _rb_set_parent(uvm_objtree_RBT_TYPE, elm, parent); } __attribute__((__unused__)) static inline void uvm_objtree_RBT_POISON(struct vm_page *elm, unsigned long poison) { return _rb_poison(uvm_objtree_RBT_TYPE, elm, poison); } __attribute__((__unused__)) static inline int uvm_objtree_RBT_CHECK(struct vm_page *elm, unsigned long poison) { return _rb_check(uvm_objtree_RBT_TYPE, elm, poison); }
void uvm_objinit(struct uvm_object *, struct uvm_pagerops *, int);
int uvm_objwire(struct uvm_object *, voff_t, voff_t, struct pglist *);
void uvm_objunwire(struct uvm_object *, voff_t, voff_t);
struct pglist { struct vm_page *tqh_first; struct vm_page **tqh_last; };
struct vm_page {
 struct { struct vm_page *tqe_next; struct vm_page **tqe_prev; } pageq;
 struct rb_entry objt;
 struct vm_anon *uanon;
 struct uvm_object *uobject;
 voff_t offset;
 u_int pg_flags;
 u_int pg_version;
 u_int wire_count;
 paddr_t phys_addr;
 psize_t fpgsz;
 struct vm_page_md mdpage;
};
struct vm_physseg {
 paddr_t start;
 paddr_t end;
 paddr_t avail_start;
 paddr_t avail_end;
 struct vm_page *pgs;
 struct vm_page *lastpg;
};
extern boolean_t vm_page_zero_enable;
extern struct vm_physseg vm_physmem[32];
extern int vm_nphysseg;
void uvm_page_init(vaddr_t *, vaddr_t *);
boolean_t uvm_page_physget(paddr_t *);
void uvm_pageactivate(struct vm_page *);
vaddr_t uvm_pageboot_alloc(vsize_t);
void uvm_pagecopy(struct vm_page *, struct vm_page *);
void uvm_pagedeactivate(struct vm_page *);
void uvm_pagefree(struct vm_page *);
void uvm_page_unbusy(struct vm_page **, int);
struct vm_page *uvm_pagelookup(struct uvm_object *, voff_t);
void uvm_pageunwire(struct vm_page *);
void uvm_pagewait(struct vm_page *, int);
void uvm_pagewake(struct vm_page *);
void uvm_pagewire(struct vm_page *);
void uvm_pagezero(struct vm_page *);
void uvm_pagealloc_pg(struct vm_page *, struct uvm_object *,
      voff_t, struct vm_anon *);
struct uvm_constraint_range;
psize_t uvm_pagecount(struct uvm_constraint_range*);
struct vm_page *PHYS_TO_VM_PAGE(paddr_t);
int vm_physseg_find(paddr_t, int *);
void uvm_map_clip_end(struct vm_map*, struct vm_map_entry*,
       vaddr_t);
void uvm_map_clip_start(struct vm_map*,
       struct vm_map_entry*, vaddr_t);
struct vm_anon {
 struct vm_page *an_page;
 int an_ref;
 int an_swslot;
};
struct vm_aref {
 int ar_pageoff;
 struct vm_amap *ar_amap;
};
struct vm_anon *uvm_analloc(void);
void uvm_anfree(struct vm_anon *);
void uvm_anwait(void);
void uvm_anon_init(void);
void uvm_anon_dropswap(struct vm_anon *);
boolean_t uvm_anon_pagein(struct vm_anon *);
union vm_map_object {
 struct uvm_object *uvm_obj;
 struct vm_map *sub_map;
};
struct vm_map_entry {
 union {
  struct rb_entry addr_entry;
  struct { struct vm_map_entry *sle_next; } addr_kentry;
 } daddrs;
 union {
  struct rb_entry rbtree;
  struct { struct vm_map_entry *tqe_next; struct vm_map_entry **tqe_prev; } tailq;
  struct { struct vm_map_entry *tqe_next; struct vm_map_entry **tqe_prev; } deadq;
 } dfree;
 vaddr_t start;
 vaddr_t end;
 vsize_t guard;
 vsize_t fspace;
 union vm_map_object object;
 voff_t offset;
 struct vm_aref aref;
 int etype;
 vm_prot_t protection;
 vm_prot_t max_protection;
 vm_inherit_t inheritance;
 int wired_count;
 int advice;
 u_int8_t flags;
 vsize_t fspace_augment;
};
struct uvm_map_deadq { struct vm_map_entry *tqh_first; struct vm_map_entry **tqh_last; };
struct uvm_map_addr { struct rb_tree rbh_root; };
extern const struct rb_type *const uvm_map_addr_RBT_TYPE; __attribute__((__unused__)) static inline void uvm_map_addr_RBT_INIT(struct uvm_map_addr *head) { _rb_init(&head->rbh_root); } __attribute__((__unused__)) static inline struct vm_map_entry * uvm_map_addr_RBT_INSERT(struct uvm_map_addr *head, struct vm_map_entry *elm) { return _rb_insert(uvm_map_addr_RBT_TYPE, &head->rbh_root, elm); } __attribute__((__unused__)) static inline struct vm_map_entry * uvm_map_addr_RBT_REMOVE(struct uvm_map_addr *head, struct vm_map_entry *elm) { return _rb_remove(uvm_map_addr_RBT_TYPE, &head->rbh_root, elm); } __attribute__((__unused__)) static inline struct vm_map_entry * uvm_map_addr_RBT_FIND(struct uvm_map_addr *head, const struct vm_map_entry *key) { return _rb_find(uvm_map_addr_RBT_TYPE, &head->rbh_root, key); } __attribute__((__unused__)) static inline struct vm_map_entry * uvm_map_addr_RBT_NFIND(struct uvm_map_addr *head, const struct vm_map_entry *key) { return _rb_nfind(uvm_map_addr_RBT_TYPE, &head->rbh_root, key); } __attribute__((__unused__)) static inline struct vm_map_entry * uvm_map_addr_RBT_ROOT(struct uvm_map_addr *head) { return _rb_root(uvm_map_addr_RBT_TYPE, &head->rbh_root); } __attribute__((__unused__)) static inline int uvm_map_addr_RBT_EMPTY(struct uvm_map_addr *head) { return _rb_empty(&head->rbh_root); } __attribute__((__unused__)) static inline struct vm_map_entry * uvm_map_addr_RBT_MIN(struct uvm_map_addr *head) { return _rb_min(uvm_map_addr_RBT_TYPE, &head->rbh_root); } __attribute__((__unused__)) static inline struct vm_map_entry * uvm_map_addr_RBT_MAX(struct uvm_map_addr *head) { return _rb_max(uvm_map_addr_RBT_TYPE, &head->rbh_root); } __attribute__((__unused__)) static inline struct vm_map_entry * uvm_map_addr_RBT_NEXT(struct vm_map_entry *elm) { return _rb_next(uvm_map_addr_RBT_TYPE, elm); } __attribute__((__unused__)) static inline struct vm_map_entry * uvm_map_addr_RBT_PREV(struct vm_map_entry *elm) { return _rb_prev(uvm_map_addr_RBT_TYPE, elm); } __attribute__((__unused__)) static inline struct vm_map_entry * uvm_map_addr_RBT_LEFT(struct vm_map_entry *elm) { return _rb_left(uvm_map_addr_RBT_TYPE, elm); } __attribute__((__unused__)) static inline struct vm_map_entry * uvm_map_addr_RBT_RIGHT(struct vm_map_entry *elm) { return _rb_right(uvm_map_addr_RBT_TYPE, elm); } __attribute__((__unused__)) static inline struct vm_map_entry * uvm_map_addr_RBT_PARENT(struct vm_map_entry *elm) { return _rb_parent(uvm_map_addr_RBT_TYPE, elm); } __attribute__((__unused__)) static inline void uvm_map_addr_RBT_SET_LEFT(struct vm_map_entry *elm, struct vm_map_entry *left) { return _rb_set_left(uvm_map_addr_RBT_TYPE, elm, left); } __attribute__((__unused__)) static inline void uvm_map_addr_RBT_SET_RIGHT(struct vm_map_entry *elm, struct vm_map_entry *right) { return _rb_set_right(uvm_map_addr_RBT_TYPE, elm, right); } __attribute__((__unused__)) static inline void uvm_map_addr_RBT_SET_PARENT(struct vm_map_entry *elm, struct vm_map_entry *parent) { return _rb_set_parent(uvm_map_addr_RBT_TYPE, elm, parent); } __attribute__((__unused__)) static inline void uvm_map_addr_RBT_POISON(struct vm_map_entry *elm, unsigned long poison) { return _rb_poison(uvm_map_addr_RBT_TYPE, elm, poison); } __attribute__((__unused__)) static inline int uvm_map_addr_RBT_CHECK(struct vm_map_entry *elm, unsigned long poison) { return _rb_check(uvm_map_addr_RBT_TYPE, elm, poison); };
struct vm_map {
 struct pmap * pmap;
 struct rwlock lock;
 struct mutex mtx;
 struct uvm_map_addr addr;
 vsize_t size;
 int ref_count;
 int flags;
 struct mutex flags_lock;
 unsigned int timestamp;
 vaddr_t min_offset;
 vaddr_t max_offset;
 vaddr_t b_start;
 vaddr_t b_end;
 vaddr_t s_start;
 vaddr_t s_end;
 struct uvm_addr_state *uaddr_exe;
 struct uvm_addr_state *uaddr_any[4];
 struct uvm_addr_state *uaddr_brk_stack;
};
struct vm_map_intrsafe {
 struct vm_map vmi_map;
 struct { struct vm_map_intrsafe *le_next; struct vm_map_intrsafe **le_prev; } vmi_list;
};
extern vaddr_t uvm_maxkaddr;
void uvm_map_deallocate(vm_map_t);
int uvm_map_clean(vm_map_t, vaddr_t, vaddr_t, int);
vm_map_t uvm_map_create(pmap_t, vaddr_t, vaddr_t, int);
int uvm_map_extract(struct vm_map*, vaddr_t, vsize_t, vaddr_t*,
      int);
vaddr_t uvm_map_pie(vaddr_t);
vaddr_t uvm_map_hint(struct vmspace *, vm_prot_t, vaddr_t, vaddr_t);
int uvm_map_inherit(vm_map_t, vaddr_t, vaddr_t, vm_inherit_t);
int uvm_map_advice(vm_map_t, vaddr_t, vaddr_t, int);
void uvm_map_init(void);
boolean_t uvm_map_lookup_entry(vm_map_t, vaddr_t, vm_map_entry_t *);
int uvm_map_replace(vm_map_t, vaddr_t, vaddr_t,
      vm_map_entry_t, int);
int uvm_map_reserve(vm_map_t, vsize_t, vaddr_t, vsize_t,
      vaddr_t *);
void uvm_map_setup(vm_map_t, vaddr_t, vaddr_t, int);
int uvm_map_submap(vm_map_t, vaddr_t, vaddr_t, vm_map_t);
void uvm_unmap(vm_map_t, vaddr_t, vaddr_t);
void uvm_map_set_uaddr(struct vm_map*, struct uvm_addr_state**,
      struct uvm_addr_state*);
int uvm_map_mquery(struct vm_map*, vaddr_t*, vsize_t, voff_t, int);
void uvm_unmap_detach(struct uvm_map_deadq*, int);
void uvm_unmap_remove(struct vm_map*, vaddr_t, vaddr_t,
      struct uvm_map_deadq*, boolean_t, boolean_t);
struct kinfo_vmentry;
int uvm_map_fill_vmmap(struct vm_map *, struct kinfo_vmentry *,
      size_t *);
boolean_t vm_map_lock_try_ln(struct vm_map*, char*, int);
void vm_map_lock_ln(struct vm_map*, char*, int);
void vm_map_lock_read_ln(struct vm_map*, char*, int);
void vm_map_unlock_ln(struct vm_map*, char*, int);
void vm_map_unlock_read_ln(struct vm_map*, char*, int);
void vm_map_downgrade_ln(struct vm_map*, char*, int);
void vm_map_upgrade_ln(struct vm_map*, char*, int);
void vm_map_busy_ln(struct vm_map*, char*, int);
void vm_map_unbusy_ln(struct vm_map*, char*, int);
struct uvm_faultinfo {
 vm_map_t orig_map;
 vaddr_t orig_rvaddr;
 vsize_t orig_size;
 vm_map_t map;
 unsigned int mapv;
 vm_map_entry_t entry;
 vsize_t size;
};
void uvmfault_init(void);
boolean_t uvmfault_lookup(struct uvm_faultinfo *, boolean_t);
boolean_t uvmfault_relock(struct uvm_faultinfo *);
void uvmfault_unlockall(struct uvm_faultinfo *, struct vm_amap *,
      struct uvm_object *, struct vm_anon *);
int uvmfault_anonget(struct uvm_faultinfo *, struct vm_amap *,
      struct vm_anon *);
int uvm_fault_wire(vm_map_t, vaddr_t, vaddr_t, vm_prot_t);
void uvm_fault_unwire(vm_map_t, vaddr_t, vaddr_t);
void uvm_fault_unwire_locked(vm_map_t, vaddr_t, vaddr_t);
struct uvm_pagerops {
 void (*pgo_init)(void);
 void (*pgo_reference)(struct uvm_object *);
 void (*pgo_detach)(struct uvm_object *);
 int (*pgo_fault)(struct uvm_faultinfo *, vaddr_t,
     vm_page_t *, int, int, vm_fault_t,
     vm_prot_t, int);
 boolean_t (*pgo_flush)(struct uvm_object *, voff_t,
     voff_t, int);
 int (*pgo_get)(struct uvm_object *, voff_t,
     vm_page_t *, int *, int, vm_prot_t, int, int);
 int (*pgo_put)(struct uvm_object *, vm_page_t *,
     int, boolean_t);
 void (*pgo_cluster)(struct uvm_object *, voff_t,
     voff_t *, voff_t *);
 struct vm_page ** (*pgo_mk_pcluster)(struct uvm_object *,
     struct vm_page **, int *, struct vm_page *,
     int, voff_t, voff_t);
};
void uvm_pager_dropcluster(struct uvm_object *, struct vm_page *,
      struct vm_page **, int *, int);
void uvm_pager_init(void);
int uvm_pager_put(struct uvm_object *, struct vm_page *,
      struct vm_page ***, int *, int, voff_t, voff_t);
vaddr_t uvm_pagermapin(struct vm_page **, int, int);
void uvm_pagermapout(vaddr_t, int);
struct vm_page **uvm_mk_pcluster(struct uvm_object *, struct vm_page **,
      int *, struct vm_page *, int, voff_t, voff_t);
struct vmspace {
 struct vm_map vm_map;
 int vm_refcnt;
 caddr_t vm_shm;
 segsz_t vm_rssize;
 segsz_t vm_swrss;
 segsz_t vm_tsize;
 segsz_t vm_dsize;
 segsz_t vm_dused;
 segsz_t vm_ssize;
 caddr_t vm_taddr;
 caddr_t vm_daddr;
 caddr_t vm_maxsaddr;
 caddr_t vm_minsaddr;
};
struct uvm_constraint_range {
 paddr_t ucr_low;
 paddr_t ucr_high;
};
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
extern struct uvmexp uvmexp;
extern struct uvm_constraint_range isa_constraint;
extern struct uvm_constraint_range dma_constraint;
extern struct uvm_constraint_range no_constraint;
extern struct uvm_constraint_range *uvm_md_constraints[];
extern struct pool *uvm_aiobuf_pool;
extern struct vm_map *exec_map;
extern struct vm_map *kernel_map;
extern struct vm_map *kmem_map;
extern struct vm_map *phys_map;
extern vaddr_t vm_min_kernel_address;
void vmapbuf(struct buf *, vsize_t);
void vunmapbuf(struct buf *, vsize_t);
struct uvm_object *uao_create(vsize_t, int);
void uao_detach(struct uvm_object *);
void uao_detach_locked(struct uvm_object *);
void uao_reference(struct uvm_object *);
void uao_reference_locked(struct uvm_object *);
int uvm_fault(vm_map_t, vaddr_t, vm_fault_t, vm_prot_t);
vaddr_t uvm_uarea_alloc(void);
void uvm_uarea_free(struct proc *);
void uvm_exit(struct process *);
void uvm_init_limits(struct proc *);
boolean_t uvm_kernacc(caddr_t, size_t, int);
int uvm_vslock(struct proc *, caddr_t, size_t,
       vm_prot_t);
void uvm_vsunlock(struct proc *, caddr_t, size_t);
int uvm_vslock_device(struct proc *, void *, size_t,
       vm_prot_t, void **);
void uvm_vsunlock_device(struct proc *, void *, size_t,
       void *);
void uvm_pause(void);
void uvm_init(void);
int uvm_io(vm_map_t, struct uio *, int);
vaddr_t uvm_km_alloc1(vm_map_t, vsize_t, vsize_t, boolean_t);
void uvm_km_free(vm_map_t, vaddr_t, vsize_t);
void uvm_km_free_wakeup(vm_map_t, vaddr_t, vsize_t);
vaddr_t uvm_km_kmemalloc_pla(struct vm_map *,
       struct uvm_object *, vsize_t, vsize_t, int,
       paddr_t, paddr_t, paddr_t, paddr_t, int);
vaddr_t uvm_km_valloc(vm_map_t, vsize_t);
vaddr_t uvm_km_valloc_try(vm_map_t, vsize_t);
vaddr_t uvm_km_valloc_wait(vm_map_t, vsize_t);
vaddr_t uvm_km_valloc_align(struct vm_map *, vsize_t,
       vsize_t, int);
vaddr_t uvm_km_valloc_prefer_wait(vm_map_t, vsize_t, voff_t);
struct vm_map *uvm_km_suballoc(vm_map_t, vaddr_t *, vaddr_t *,
       vsize_t, int, boolean_t, vm_map_t);
struct kmem_va_mode {
 struct vm_map **kv_map;
 vsize_t kv_align;
 char kv_wait;
 char kv_singlepage;
};
struct kmem_pa_mode {
 struct uvm_constraint_range *kp_constraint;
 struct uvm_object **kp_object;
 paddr_t kp_align;
 paddr_t kp_boundary;
 int kp_maxseg;
 char kp_nomem;
 char kp_zero;
 char kp_pageable;
};
struct kmem_dyn_mode {
 voff_t kd_prefer;
 int *kd_slowdown;
 char kd_waitok;
 char kd_trylock;
};
extern const struct kmem_va_mode kv_any;
extern const struct kmem_va_mode kv_intrsafe;
extern const struct kmem_va_mode kv_page;
extern const struct kmem_pa_mode kp_dirty;
extern const struct kmem_pa_mode kp_zero;
extern const struct kmem_pa_mode kp_dma;
extern const struct kmem_pa_mode kp_dma_contig;
extern const struct kmem_pa_mode kp_dma_zero;
extern const struct kmem_pa_mode kp_pageable;
extern const struct kmem_pa_mode kp_none;
extern const struct kmem_dyn_mode kd_waitok;
extern const struct kmem_dyn_mode kd_nowait;
extern const struct kmem_dyn_mode kd_trylock;
void *km_alloc(size_t, const struct kmem_va_mode *,
       const struct kmem_pa_mode *,
       const struct kmem_dyn_mode *);
void km_free(void *, size_t, const struct kmem_va_mode *,
       const struct kmem_pa_mode *);
int uvm_map(vm_map_t, vaddr_t *, vsize_t,
       struct uvm_object *, voff_t, vsize_t, unsigned int);
int uvm_mapanon(vm_map_t, vaddr_t *, vsize_t, vsize_t, unsigned int);
int uvm_map_pageable(vm_map_t, vaddr_t,
       vaddr_t, boolean_t, int);
int uvm_map_pageable_all(vm_map_t, int, vsize_t);
boolean_t uvm_map_checkprot(vm_map_t, vaddr_t,
       vaddr_t, vm_prot_t);
int uvm_map_protect(vm_map_t, vaddr_t,
       vaddr_t, vm_prot_t, boolean_t);
struct vmspace *uvmspace_alloc(vaddr_t, vaddr_t,
       boolean_t, boolean_t);
void uvmspace_init(struct vmspace *, struct pmap *,
       vaddr_t, vaddr_t, boolean_t, boolean_t);
void uvmspace_exec(struct proc *, vaddr_t, vaddr_t);
struct vmspace *uvmspace_fork(struct process *);
void uvmspace_free(struct vmspace *);
struct vmspace *uvmspace_share(struct process *);
int uvm_share(vm_map_t, vaddr_t, vm_prot_t,
       vm_map_t, vaddr_t, vsize_t);
void uvm_meter(void);
int uvm_sysctl(int *, u_int, void *, size_t *,
       void *, size_t, struct proc *);
struct vm_page *uvm_pagealloc(struct uvm_object *,
       voff_t, struct vm_anon *, int);
vaddr_t uvm_pagealloc_contig(vaddr_t, vaddr_t,
       vaddr_t, vaddr_t);
int uvm_pagealloc_multi(struct uvm_object *, voff_t,
           vsize_t, int);
void uvm_pagerealloc(struct vm_page *,
       struct uvm_object *, voff_t);
int uvm_pagerealloc_multi(struct uvm_object *, voff_t,
       vsize_t, int, struct uvm_constraint_range *);
void uvm_page_physload(paddr_t, paddr_t, paddr_t,
       paddr_t, int);
void uvm_setpagesize(void);
void uvm_shutdown(void);
void uvm_aio_biodone(struct buf *);
void uvm_aio_aiodone(struct buf *);
void uvm_pageout(void *);
void uvm_aiodone_daemon(void *);
void uvm_wait(const char *);
int uvm_pglistalloc(psize_t, paddr_t, paddr_t,
       paddr_t, paddr_t, struct pglist *, int, int);
void uvm_pglistfree(struct pglist *);
void uvm_pmr_use_inc(paddr_t, paddr_t);
void uvm_swap_init(void);
typedef int uvm_coredump_setup_cb(int _nsegment, void *_cookie);
typedef int uvm_coredump_walk_cb(vaddr_t _start, vaddr_t _realend,
       vaddr_t _end, vm_prot_t _prot, int _nsegment,
       void *_cookie);
int uvm_coredump_walkmap(struct proc *_p,
       uvm_coredump_setup_cb *_setup,
       uvm_coredump_walk_cb *_walk, void *_cookie);
void uvm_grow(struct proc *, vaddr_t);
void uvm_deallocate(vm_map_t, vaddr_t, vsize_t);
struct uvm_object *uvn_attach(struct vnode *, vm_prot_t);
void uvm_pagezero_thread(void *);
void kmeminit_nkmempages(void);
void kmeminit(void);
extern u_int nkmempages;
struct process;
struct kinfo_vmentry;
int fill_vmmap(struct process *, struct kinfo_vmentry *,
       size_t *);
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
struct em_osdep
{
 bus_space_tag_t mem_bus_space_tag;
 bus_space_handle_t mem_bus_space_handle;
 bus_space_tag_t io_bus_space_tag;
 bus_space_handle_t io_bus_space_handle;
 bus_space_tag_t flash_bus_space_tag;
 bus_space_handle_t flash_bus_space_handle;
 struct device *dev;
 struct pci_attach_args em_pa;
 bus_size_t em_memsize;
 bus_addr_t em_membase;
 bus_size_t em_iosize;
 bus_addr_t em_iobase;
 bus_size_t em_flashsize;
 bus_addr_t em_flashbase;
 size_t em_flashoffset;
};
struct em_hw;
struct em_hw_stats;
typedef enum {
    em_undefined = 0,
    em_82542_rev2_0,
    em_82542_rev2_1,
    em_82543,
    em_82544,
    em_82540,
    em_82545,
    em_82545_rev_3,
    em_icp_xxxx,
    em_82546,
    em_82546_rev_3,
    em_82541,
    em_82541_rev_2,
    em_82547,
    em_82547_rev_2,
    em_82571,
    em_82572,
    em_82573,
    em_82574,
    em_82575,
    em_82580,
    em_i350,
    em_i210,
    em_80003es2lan,
    em_ich8lan,
    em_ich9lan,
    em_ich10lan,
    em_pchlan,
    em_pch2lan,
    em_pch_lpt,
    em_pch_spt,
    em_num_macs
} em_mac_type;
typedef enum {
    em_eeprom_uninitialized = 0,
    em_eeprom_spi,
    em_eeprom_microwire,
    em_eeprom_flash,
    em_eeprom_ich8,
    em_eeprom_invm,
    em_eeprom_none,
    em_num_eeprom_types
} em_eeprom_type;
typedef enum {
    em_media_type_copper = 0,
    em_media_type_fiber = 1,
    em_media_type_internal_serdes = 2,
    em_media_type_oem = 3,
    em_num_media_types
} em_media_type;
typedef enum {
    em_10_half = 0,
    em_10_full = 1,
    em_100_half = 2,
    em_100_full = 3
} em_speed_duplex_type;
struct em_shadow_ram {
    uint16_t eeprom_word;
    boolean_t modified;
};
typedef enum {
    em_bus_type_unknown = 0,
    em_bus_type_pci,
    em_bus_type_pcix,
    em_bus_type_pci_express,
    em_bus_type_cpp,
    em_bus_type_reserved
} em_bus_type;
typedef enum {
    em_bus_speed_unknown = 0,
    em_bus_speed_33,
    em_bus_speed_66,
    em_bus_speed_100,
    em_bus_speed_120,
    em_bus_speed_133,
    em_bus_speed_2500,
    em_bus_speed_reserved
} em_bus_speed;
typedef enum {
    em_bus_width_unknown = 0,
    em_bus_width_pciex_1 = 1,
    em_bus_width_pciex_2 = 2,
    em_bus_width_pciex_4 = 4,
    em_bus_width_32,
    em_bus_width_64,
    em_bus_width_reserved
} em_bus_width;
typedef enum {
    em_cable_length_50 = 0,
    em_cable_length_50_80,
    em_cable_length_80_110,
    em_cable_length_110_140,
    em_cable_length_140,
    em_cable_length_undefined = 0xFF
} em_cable_length;
typedef enum {
    em_gg_cable_length_60 = 0,
    em_gg_cable_length_60_115 = 1,
    em_gg_cable_length_115_150 = 2,
    em_gg_cable_length_150 = 4
} em_gg_cable_length;
typedef enum {
    em_igp_cable_length_10 = 10,
    em_igp_cable_length_20 = 20,
    em_igp_cable_length_30 = 30,
    em_igp_cable_length_40 = 40,
    em_igp_cable_length_50 = 50,
    em_igp_cable_length_60 = 60,
    em_igp_cable_length_70 = 70,
    em_igp_cable_length_80 = 80,
    em_igp_cable_length_90 = 90,
    em_igp_cable_length_100 = 100,
    em_igp_cable_length_110 = 110,
    em_igp_cable_length_115 = 115,
    em_igp_cable_length_120 = 120,
    em_igp_cable_length_130 = 130,
    em_igp_cable_length_140 = 140,
    em_igp_cable_length_150 = 150,
    em_igp_cable_length_160 = 160,
    em_igp_cable_length_170 = 170,
    em_igp_cable_length_180 = 180
} em_igp_cable_length;
typedef enum {
    em_10bt_ext_dist_enable_normal = 0,
    em_10bt_ext_dist_enable_lower,
    em_10bt_ext_dist_enable_undefined = 0xFF
} em_10bt_ext_dist_enable;
typedef enum {
    em_rev_polarity_normal = 0,
    em_rev_polarity_reversed,
    em_rev_polarity_undefined = 0xFF
} em_rev_polarity;
typedef enum {
    em_downshift_normal = 0,
    em_downshift_activated,
    em_downshift_undefined = 0xFF
} em_downshift;
typedef enum {
    em_smart_speed_default = 0,
    em_smart_speed_on,
    em_smart_speed_off
} em_smart_speed;
typedef enum {
    em_polarity_reversal_enabled = 0,
    em_polarity_reversal_disabled,
    em_polarity_reversal_undefined = 0xFF
} em_polarity_reversal;
typedef enum {
    em_auto_x_mode_manual_mdi = 0,
    em_auto_x_mode_manual_mdix,
    em_auto_x_mode_auto1,
    em_auto_x_mode_auto2,
    em_auto_x_mode_undefined = 0xFF
} em_auto_x_mode;
typedef enum {
    em_1000t_rx_status_not_ok = 0,
    em_1000t_rx_status_ok,
    em_1000t_rx_status_undefined = 0xFF
} em_1000t_rx_status;
typedef enum {
    em_phy_m88 = 0,
    em_phy_igp,
    em_phy_igp_2,
    em_phy_gg82563,
    em_phy_igp_3,
    em_phy_ife,
    em_phy_bm,
    em_phy_oem,
    em_phy_82577,
    em_phy_82578,
    em_phy_82579,
    em_phy_i217,
    em_phy_82580,
    em_phy_rtl8211,
    em_phy_undefined = 0xFF
} em_phy_type;
typedef enum {
    em_ms_hw_default = 0,
    em_ms_force_master,
    em_ms_force_slave,
    em_ms_auto
} em_ms_type;
typedef enum {
    em_ffe_config_enabled = 0,
    em_ffe_config_active,
    em_ffe_config_blocked
} em_ffe_config;
typedef enum {
    em_dsp_config_disabled = 0,
    em_dsp_config_enabled,
    em_dsp_config_activated,
    em_dsp_config_undefined = 0xFF
} em_dsp_config;
struct em_phy_info {
    em_cable_length cable_length;
    em_10bt_ext_dist_enable extended_10bt_distance;
    em_rev_polarity cable_polarity;
    em_downshift downshift;
    em_polarity_reversal polarity_correction;
    em_auto_x_mode mdix_mode;
    em_1000t_rx_status local_rx;
    em_1000t_rx_status remote_rx;
};
struct em_phy_stats {
    uint32_t idle_errors;
    uint32_t receive_errors;
};
struct em_eeprom_info {
    em_eeprom_type type;
    uint16_t word_size;
    uint16_t opcode_bits;
    uint16_t address_bits;
    uint16_t delay_usec;
    uint16_t page_size;
    boolean_t use_eerd;
    boolean_t use_eewr;
};
typedef enum {
    em_byte_align = 0,
    em_word_align = 1,
    em_dword_align = 2
} em_align_type;
int32_t em_reset_hw(struct em_hw *hw);
int32_t em_init_hw(struct em_hw *hw);
int32_t em_set_mac_type(struct em_hw *hw);
void em_set_media_type(struct em_hw *hw);
int32_t em_setup_link(struct em_hw *hw);
int32_t em_phy_setup_autoneg(struct em_hw *hw);
void em_config_collision_dist(struct em_hw *hw);
int32_t em_check_for_link(struct em_hw *hw);
int32_t em_get_speed_and_duplex(struct em_hw *hw, uint16_t *speed, uint16_t *duplex);
int32_t em_force_mac_fc(struct em_hw *hw);
int32_t em_copper_link_autoneg(struct em_hw *hw);
int32_t em_copper_link_postconfig(struct em_hw *hw);
int32_t em_read_phy_reg(struct em_hw *hw, uint32_t reg_addr, uint16_t *phy_data);
int32_t em_write_phy_reg(struct em_hw *hw, uint32_t reg_addr, uint16_t data);
int32_t em_phy_hw_reset(struct em_hw *hw);
int32_t em_phy_reset(struct em_hw *hw);
int32_t em_phy_get_info(struct em_hw *hw, struct em_phy_info *phy_info);
int32_t em_validate_mdi_setting(struct em_hw *hw);
void em_phy_powerdown_workaround(struct em_hw *hw);
int32_t em_init_eeprom_params(struct em_hw *hw);
uint32_t em_enable_mng_pass_thru(struct em_hw *hw);
struct em_host_mng_command_header {
    uint8_t command_id;
    uint8_t checksum;
    uint16_t reserved1;
    uint16_t reserved2;
    uint16_t command_length;
};
struct em_host_mng_command_info {
    struct em_host_mng_command_header command_header;
    uint8_t command_data[0x6F8];
};
struct em_host_mng_dhcp_cookie{
    uint32_t signature;
    uint8_t status;
    uint8_t reserved0;
    uint16_t vlan_id;
    uint32_t reserved1;
    uint16_t reserved2;
    uint8_t reserved3;
    uint8_t checksum;
};
int32_t em_read_part_num(struct em_hw *hw, uint32_t *part_num);
int32_t em_mng_write_dhcp_info(struct em_hw *hw, uint8_t *buffer,
                                  uint16_t length);
boolean_t em_check_mng_mode(struct em_hw *hw);
boolean_t em_enable_tx_pkt_filtering(struct em_hw *hw);
int32_t em_read_eeprom(struct em_hw *hw, uint16_t reg64, uint16_t words, uint16_t *data);
int32_t em_validate_eeprom_checksum(struct em_hw *hw);
int32_t em_update_eeprom_checksum(struct em_hw *hw);
int32_t em_write_eeprom(struct em_hw *hw, uint16_t reg64, uint16_t words, uint16_t *data);
int32_t em_read_mac_addr(struct em_hw * hw);
boolean_t em_get_flash_presence_i210(struct em_hw *);
void em_mc_addr_list_update(struct em_hw *hw, uint8_t * mc_addr_list, uint32_t mc_addr_count,
    uint32_t pad, uint32_t rar_used_count);
uint32_t em_hash_mc_addr(struct em_hw *hw, uint8_t *mc_addr);
void em_mta_set(struct em_hw *hw, uint32_t hash_value);
void em_rar_set(struct em_hw *hw, uint8_t *mc_addr, uint32_t rar_index);
void em_write_vfta(struct em_hw *hw, uint32_t offset, uint32_t value);
int32_t em_setup_led(struct em_hw *hw);
int32_t em_cleanup_led(struct em_hw *hw);
int32_t em_led_on(struct em_hw *hw);
int32_t em_led_off(struct em_hw *hw);
int32_t em_blink_led_start(struct em_hw *hw);
void em_clear_hw_cntrs(struct em_hw *hw);
void em_reset_adaptive(struct em_hw *hw);
void em_update_adaptive(struct em_hw *hw);
void em_tbi_adjust_stats(struct em_hw *hw, struct em_hw_stats *stats, uint32_t frame_len, uint8_t *mac_addr);
void em_get_bus_info(struct em_hw *hw);
void em_pci_set_mwi(struct em_hw *hw);
void em_pci_clear_mwi(struct em_hw *hw);
void em_read_pci_cfg(struct em_hw *hw, uint32_t reg64, uint16_t *value);
void em_write_pci_cfg(struct em_hw *hw, uint32_t reg64, uint16_t *value);
int32_t em_read_pcie_cap_reg(struct em_hw *hw, uint32_t reg64, uint16_t *value);
int32_t em_disable_pciex_master(struct em_hw *hw);
int32_t em_check_phy_reset_block(struct em_hw *hw);
struct em_rx_desc {
    uint64_t buffer_addr;
    uint16_t length;
    uint16_t csum;
    uint8_t status;
    uint8_t errors;
    uint16_t special;
};
union em_rx_desc_extended {
    struct {
        uint64_t buffer_addr;
        uint64_t reserved;
    } read;
    struct {
        struct {
            uint32_t mrq;
            union {
                uint32_t rss;
                struct {
                    uint16_t ip_id;
                    uint16_t csum;
                } csum_ip;
            } hi_dword;
        } lower;
        struct {
            uint32_t status_error;
            uint16_t length;
            uint16_t vlan;
        } upper;
    } wb;
};
union em_rx_desc_packet_split {
    struct {
        uint64_t buffer_addr[4];
    } read;
    struct {
        struct {
            uint32_t mrq;
            union {
                uint32_t rss;
                struct {
                    uint16_t ip_id;
                    uint16_t csum;
                } csum_ip;
            } hi_dword;
        } lower;
        struct {
            uint32_t status_error;
            uint16_t length0;
            uint16_t vlan;
        } middle;
        struct {
            uint16_t header_status;
            uint16_t length[3];
        } upper;
        uint64_t reserved;
    } wb;
};
struct em_tx_desc {
    uint64_t buffer_addr;
    union {
        uint32_t data;
        struct {
            uint16_t length;
            uint8_t cso;
            uint8_t cmd;
        } flags;
    } lower;
    union {
        uint32_t data;
        struct {
            uint8_t status;
            uint8_t css;
            uint16_t special;
        } fields;
    } upper;
};
struct em_context_desc {
    union {
        uint32_t ip_config;
        struct {
            uint8_t ipcss;
            uint8_t ipcso;
            uint16_t ipcse;
        } ip_fields;
    } lower_setup;
    union {
        uint32_t tcp_config;
        struct {
            uint8_t tucss;
            uint8_t tucso;
            uint16_t tucse;
        } tcp_fields;
    } upper_setup;
    uint32_t cmd_and_length;
    union {
        uint32_t data;
        struct {
            uint8_t status;
            uint8_t hdr_len;
            uint16_t mss;
        } fields;
    } tcp_seg_setup;
};
struct em_data_desc {
    uint64_t buffer_addr;
    union {
        uint32_t data;
        struct {
            uint16_t length;
            uint8_t typ_len_ext;
            uint8_t cmd;
        } flags;
    } lower;
    union {
        uint32_t data;
        struct {
            uint8_t status;
            uint8_t popts;
            uint16_t special;
        } fields;
    } upper;
};
struct em_rar {
    volatile uint32_t low;
    volatile uint32_t high;
};
struct em_ipv4_at_entry {
    volatile uint32_t ipv4_addr;
    volatile uint32_t reserved;
};
struct em_ipv6_at_entry {
    volatile uint8_t ipv6_addr[16];
};
struct em_fflt_entry {
    volatile uint32_t length;
    volatile uint32_t reserved;
};
struct em_ffmt_entry {
    volatile uint32_t mask;
    volatile uint32_t reserved;
};
struct em_ffvt_entry {
    volatile uint32_t value;
    volatile uint32_t reserved;
};
struct em_hw_stats {
    uint64_t crcerrs;
    uint64_t algnerrc;
    uint64_t symerrs;
    uint64_t rxerrc;
    uint64_t mpc;
    uint64_t scc;
    uint64_t ecol;
    uint64_t mcc;
    uint64_t latecol;
    uint64_t colc;
    uint64_t dc;
    uint64_t tncrs;
    uint64_t sec;
    uint64_t cexterr;
    uint64_t rlec;
    uint64_t xonrxc;
    uint64_t xontxc;
    uint64_t xoffrxc;
    uint64_t xofftxc;
    uint64_t fcruc;
    uint64_t prc64;
    uint64_t prc127;
    uint64_t prc255;
    uint64_t prc511;
    uint64_t prc1023;
    uint64_t prc1522;
    uint64_t gprc;
    uint64_t bprc;
    uint64_t mprc;
    uint64_t gptc;
    uint64_t gorcl;
    uint64_t gorch;
    uint64_t gotcl;
    uint64_t gotch;
    uint64_t rnbc;
    uint64_t ruc;
    uint64_t rfc;
    uint64_t roc;
    uint64_t rjc;
    uint64_t mgprc;
    uint64_t mgpdc;
    uint64_t mgptc;
    uint64_t torl;
    uint64_t torh;
    uint64_t totl;
    uint64_t toth;
    uint64_t tpr;
    uint64_t tpt;
    uint64_t ptc64;
    uint64_t ptc127;
    uint64_t ptc255;
    uint64_t ptc511;
    uint64_t ptc1023;
    uint64_t ptc1522;
    uint64_t mptc;
    uint64_t bptc;
    uint64_t tsctc;
    uint64_t tsctfc;
    uint64_t iac;
    uint64_t icrxptc;
    uint64_t icrxatc;
    uint64_t ictxptc;
    uint64_t ictxatc;
    uint64_t ictxqec;
    uint64_t ictxqmtc;
    uint64_t icrxdmtc;
    uint64_t icrxoc;
};
struct em_hw {
    uint8_t *hw_addr;
    uint8_t *flash_address;
    em_mac_type mac_type;
    em_phy_type phy_type;
    uint32_t phy_init_script;
    em_media_type media_type;
    void *back;
    struct em_shadow_ram *eeprom_shadow_ram;
    uint32_t flash_bank_size;
    uint32_t flash_base_addr;
    uint32_t fc;
    em_bus_speed bus_speed;
    em_bus_width bus_width;
    em_bus_type bus_type;
    struct em_eeprom_info eeprom;
    em_ms_type master_slave;
    em_ms_type original_master_slave;
    em_ffe_config ffe_config_state;
    uint32_t asf_firmware_present;
    uint32_t eeprom_semaphore_present;
    uint32_t swfw_sync_present;
    uint32_t swfwhw_semaphore_present;
    unsigned long io_base;
    uint32_t phy_id;
    uint32_t phy_revision;
    uint32_t phy_addr;
    uint32_t original_fc;
    uint32_t txcw;
    uint32_t autoneg_failed;
    uint32_t max_frame_size;
    uint32_t min_frame_size;
    uint32_t mc_filter_type;
    uint32_t num_mc_addrs;
    uint32_t collision_delta;
    uint32_t tx_packet_delta;
    uint32_t ledctl_default;
    uint32_t ledctl_mode1;
    uint32_t ledctl_mode2;
    boolean_t tx_pkt_filtering;
    struct em_host_mng_dhcp_cookie mng_cookie;
    uint16_t phy_spd_default;
    uint16_t autoneg_advertised;
    uint16_t pci_cmd_word;
    uint16_t fc_high_water;
    uint16_t fc_low_water;
    uint16_t fc_pause_time;
    uint16_t current_ifs_val;
    uint16_t ifs_min_val;
    uint16_t ifs_max_val;
    uint16_t ifs_step_size;
    uint16_t ifs_ratio;
    uint16_t device_id;
    uint16_t vendor_id;
    uint16_t subsystem_id;
    uint16_t subsystem_vendor_id;
    uint8_t revision_id;
    uint8_t autoneg;
    uint8_t mdix;
    uint8_t forced_speed_duplex;
    uint8_t wait_autoneg_complete;
    uint8_t dma_fairness;
    uint8_t mac_addr[6];
    uint8_t perm_mac_addr[6];
    boolean_t disable_polarity_correction;
    boolean_t speed_downgraded;
    em_smart_speed smart_speed;
    em_dsp_config dsp_config_state;
    boolean_t get_link_status;
    boolean_t serdes_link_down;
    boolean_t tbi_compatibility_en;
    boolean_t tbi_compatibility_on;
    boolean_t laa_is_present;
    boolean_t phy_reset_disable;
    boolean_t initialize_hw_bits_disable;
    boolean_t fc_send_xon;
    boolean_t fc_strict_ieee;
    boolean_t report_tx_early;
    boolean_t adaptive_ifs;
    boolean_t ifs_params_forced;
    boolean_t in_ifs_mode;
    boolean_t mng_reg_access_disabled;
    boolean_t leave_av_bit_off;
    boolean_t kmrn_lock_loss_workaround_disabled;
    boolean_t icp_xxxx_is_link_up;
    uint32_t icp_xxxx_port_num;
    struct gcu_softc * gcu;
    uint8_t bus_func;
    uint16_t swfw;
    boolean_t eee_enable;
};
typedef enum {
    em_mng_mode_none = 0,
    em_mng_mode_asf,
    em_mng_mode_pt,
    em_mng_mode_ipmi,
    em_mng_mode_host_interface_only
} em_mng_mode;
struct em_host_command_header {
    uint8_t command_id;
    uint8_t command_length;
    uint8_t command_options;
    uint8_t checksum;
};
struct em_host_command_info {
    struct em_host_command_header command_header;
    uint8_t command_data[252];
};
union ich8_hws_flash_status {
    struct ich8_hsfsts {
        uint16_t flcdone :1;
        uint16_t flcerr :1;
        uint16_t dael :1;
        uint16_t berasesz :2;
        uint16_t flcinprog :1;
        uint16_t reserved1 :2;
        uint16_t reserved2 :6;
        uint16_t fldesvalid :1;
        uint16_t flockdn :1;
    } hsf_status;
    uint16_t regval;
};
union ich8_hws_flash_ctrl {
    struct ich8_hsflctl {
        uint16_t flcgo :1;
        uint16_t flcycle :2;
        uint16_t reserved :5;
        uint16_t fldbcount :2;
        uint16_t flockdn :6;
    } hsf_ctrl;
    uint16_t regval;
};
union ich8_hws_flash_regacc {
    struct ich8_flracc {
        uint32_t grra :8;
        uint32_t grwa :8;
        uint32_t gmrag :8;
        uint32_t gmwag :8;
    } hsf_flregacc;
    uint16_t regval;
};
void *em_lookup_gcu(struct device *);
int em_attach_miibus(struct device *self);
int gcu_miibus_readreg(struct em_hw *, int, int);
void gcu_miibus_writereg(struct em_hw *, int, int, int);
void gcu_miibus_statchg(struct device *);
static int32_t em_swfw_sync_acquire(struct em_hw *, uint16_t);
static void em_swfw_sync_release(struct em_hw *, uint16_t);
static int32_t em_read_kmrn_reg(struct em_hw *, uint32_t, uint16_t *);
static int32_t em_write_kmrn_reg(struct em_hw *hw, uint32_t, uint16_t);
static int32_t em_get_software_semaphore(struct em_hw *);
static void em_release_software_semaphore(struct em_hw *);
static int32_t em_check_downshift(struct em_hw *);
static void em_clear_vfta(struct em_hw *);
void em_clear_vfta_i350(struct em_hw *);
static int32_t em_commit_shadow_ram(struct em_hw *);
static int32_t em_config_dsp_after_link_change(struct em_hw *, boolean_t);
static int32_t em_config_fc_after_link_up(struct em_hw *);
static int32_t em_match_gig_phy(struct em_hw *);
static int32_t em_detect_gig_phy(struct em_hw *);
static int32_t em_erase_ich8_4k_segment(struct em_hw *, uint32_t);
static int32_t em_get_auto_rd_done(struct em_hw *);
static int32_t em_get_cable_length(struct em_hw *, uint16_t *, uint16_t *);
static int32_t em_get_hw_eeprom_semaphore(struct em_hw *);
static int32_t em_get_phy_cfg_done(struct em_hw *);
static int32_t em_get_software_flag(struct em_hw *);
static int32_t em_ich8_cycle_init(struct em_hw *);
static int32_t em_ich8_flash_cycle(struct em_hw *, uint32_t);
static int32_t em_id_led_init(struct em_hw *);
static int32_t em_init_lcd_from_nvm_config_region(struct em_hw *, uint32_t,
      uint32_t);
static int32_t em_init_lcd_from_nvm(struct em_hw *);
static int32_t em_phy_no_cable_workaround(struct em_hw *);
static void em_init_rx_addrs(struct em_hw *);
static void em_initialize_hardware_bits(struct em_hw *);
static void em_toggle_lanphypc_pch_lpt(struct em_hw *);
static int em_disable_ulp_lpt_lp(struct em_hw *hw, _Bool force);
static boolean_t em_is_onboard_nvm_eeprom(struct em_hw *);
static int32_t em_kumeran_lock_loss_workaround(struct em_hw *);
static int32_t em_mng_enable_host_if(struct em_hw *);
static int32_t em_read_eeprom_eerd(struct em_hw *, uint16_t, uint16_t,
      uint16_t *);
static int32_t em_write_eeprom_eewr(struct em_hw *, uint16_t, uint16_t,
      uint16_t *data);
static int32_t em_poll_eerd_eewr_done(struct em_hw *, int);
static void em_put_hw_eeprom_semaphore(struct em_hw *);
static int32_t em_read_ich8_byte(struct em_hw *, uint32_t, uint8_t *);
static int32_t em_verify_write_ich8_byte(struct em_hw *, uint32_t, uint8_t);
static int32_t em_write_ich8_byte(struct em_hw *, uint32_t, uint8_t);
static int32_t em_read_ich8_word(struct em_hw *, uint32_t, uint16_t *);
static int32_t em_read_ich8_dword(struct em_hw *, uint32_t, uint32_t *);
static int32_t em_read_ich8_data(struct em_hw *, uint32_t, uint32_t,
      uint16_t *);
static int32_t em_write_ich8_data(struct em_hw *, uint32_t, uint32_t,
      uint16_t);
static int32_t em_read_eeprom_ich8(struct em_hw *, uint16_t, uint16_t,
      uint16_t *);
static int32_t em_write_eeprom_ich8(struct em_hw *, uint16_t, uint16_t,
      uint16_t *);
static int32_t em_read_invm_i210(struct em_hw *, uint16_t, uint16_t,
      uint16_t *);
static int32_t em_read_invm_word_i210(struct em_hw *, uint16_t, uint16_t *);
static void em_release_software_flag(struct em_hw *);
static int32_t em_set_d3_lplu_state(struct em_hw *, boolean_t);
static int32_t em_set_d0_lplu_state(struct em_hw *, boolean_t);
static int32_t em_set_lplu_state_pchlan(struct em_hw *, boolean_t);
static int32_t em_set_pci_ex_no_snoop(struct em_hw *, uint32_t);
static void em_set_pci_express_master_disable(struct em_hw *);
static int32_t em_wait_autoneg(struct em_hw *);
static void em_write_reg_io(struct em_hw *, uint32_t, uint32_t);
static int32_t em_set_phy_type(struct em_hw *);
static void em_phy_init_script(struct em_hw *);
static int32_t em_setup_copper_link(struct em_hw *);
static int32_t em_setup_fiber_serdes_link(struct em_hw *);
static int32_t em_adjust_serdes_amplitude(struct em_hw *);
static int32_t em_phy_force_speed_duplex(struct em_hw *);
static int32_t em_config_mac_to_phy(struct em_hw *);
static void em_raise_mdi_clk(struct em_hw *, uint32_t *);
static void em_lower_mdi_clk(struct em_hw *, uint32_t *);
static void em_shift_out_mdi_bits(struct em_hw *, uint32_t, uint16_t);
static uint16_t em_shift_in_mdi_bits(struct em_hw *);
static int32_t em_phy_reset_dsp(struct em_hw *);
static int32_t em_write_eeprom_spi(struct em_hw *, uint16_t, uint16_t,
      uint16_t *);
static int32_t em_write_eeprom_microwire(struct em_hw *, uint16_t, uint16_t,
      uint16_t *);
static int32_t em_spi_eeprom_ready(struct em_hw *);
static void em_raise_ee_clk(struct em_hw *, uint32_t *);
static void em_lower_ee_clk(struct em_hw *, uint32_t *);
static void em_shift_out_ee_bits(struct em_hw *, uint16_t, uint16_t);
static int32_t em_write_phy_reg_ex(struct em_hw *, uint32_t, uint16_t);
static int32_t em_read_phy_reg_ex(struct em_hw *, uint32_t, uint16_t *);
static uint16_t em_shift_in_ee_bits(struct em_hw *, uint16_t);
static int32_t em_acquire_eeprom(struct em_hw *);
static void em_release_eeprom(struct em_hw *);
static void em_standby_eeprom(struct em_hw *);
static int32_t em_set_vco_speed(struct em_hw *);
static int32_t em_polarity_reversal_workaround(struct em_hw *);
static int32_t em_set_phy_mode(struct em_hw *);
static int32_t em_host_if_read_cookie(struct em_hw *, uint8_t *);
static uint8_t em_calculate_mng_checksum(char *, uint32_t);
static int32_t em_configure_kmrn_for_10_100(struct em_hw *, uint16_t);
static int32_t em_configure_kmrn_for_1000(struct em_hw *);
static int32_t em_set_pciex_completion_timeout(struct em_hw *hw);
static int32_t em_set_mdio_slow_mode_hv(struct em_hw *);
int32_t em_hv_phy_workarounds_ich8lan(struct em_hw *);
int32_t em_lv_phy_workarounds_ich8lan(struct em_hw *);
int32_t em_link_stall_workaround_hv(struct em_hw *);
int32_t em_k1_gig_workaround_hv(struct em_hw *, boolean_t);
int32_t em_k1_workaround_lv(struct em_hw *);
int32_t em_k1_workaround_lpt_lp(struct em_hw *, boolean_t);
int32_t em_configure_k1_ich8lan(struct em_hw *, boolean_t);
void em_gate_hw_phy_config_ich8lan(struct em_hw *, boolean_t);
int32_t em_access_phy_wakeup_reg_bm(struct em_hw *, uint32_t,
      uint16_t *, boolean_t);
int32_t em_access_phy_debug_regs_hv(struct em_hw *, uint32_t,
      uint16_t *, boolean_t);
int32_t em_access_phy_reg_hv(struct em_hw *, uint32_t, uint16_t *,
      boolean_t);
int32_t em_oem_bits_config_pchlan(struct em_hw *, boolean_t);
void em_power_up_serdes_link_82575(struct em_hw *);
int32_t em_get_pcs_speed_and_duplex_82575(struct em_hw *, uint16_t *,
    uint16_t *);
int32_t em_set_eee_i350(struct em_hw *);
int32_t em_set_eee_pchlan(struct em_hw *);
int32_t em_valid_nvm_bank_detect_ich8lan(struct em_hw *, uint32_t *);
int32_t em_initialize_M88E1512_phy(struct em_hw *);
static const uint16_t
em_igp_cable_length_table[128] =
    {5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5,
    5, 10, 10, 10, 10, 10, 10, 10, 20, 20, 20, 20, 20, 25, 25, 25,
    25, 25, 25, 25, 30, 30, 30, 30, 40, 40, 40, 40, 40, 40, 40, 40,
    40, 50, 50, 50, 50, 50, 50, 50, 60, 60, 60, 60, 60, 60, 60, 60,
    60, 70, 70, 70, 70, 70, 70, 80, 80, 80, 80, 80, 80, 90, 90, 90,
    90, 90, 90, 90, 90, 90, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100,
    100, 100, 100, 100, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110,
    110,
    110, 110, 110, 110, 110, 110, 120, 120, 120, 120, 120, 120, 120, 120, 120,
    120};
static const uint16_t
em_igp_2_cable_length_table[113] =
    {0, 0, 0, 0, 0, 0, 0, 0, 3, 5, 8, 11, 13, 16, 18, 21,
    0, 0, 0, 3, 6, 10, 13, 16, 19, 23, 26, 29, 32, 35, 38, 41,
    6, 10, 14, 18, 22, 26, 30, 33, 37, 41, 44, 48, 51, 54, 58, 61,
    21, 26, 31, 35, 40, 44, 49, 53, 57, 61, 65, 68, 72, 75, 79, 82,
    40, 45, 51, 56, 61, 66, 70, 75, 79, 83, 87, 91, 94, 98, 101, 104,
    60, 66, 72, 77, 82, 87, 92, 96, 100, 104, 108, 111, 114, 117, 119, 121,
    83, 89, 95, 100, 105, 109, 113, 116, 119, 122, 124, 104, 109, 114, 118,
    121, 124};
 int32_t
em_set_phy_type(struct em_hw *hw)
{
 ;;
 if (hw->mac_type == em_undefined)
  return -6;
 switch (hw->phy_id) {
 case 0x01410C50:
 case 0x01410C30:
 case 0x01410C20:
 case 0x01410CC0:
 case 0x01410C90:
 case 0x01410EA0:
 case 0x01410DD0:
 case 0x01410C00:
 case 0x01410DC0:
  hw->phy_type = em_phy_m88;
  break;
 case 0x02A80380:
  if (hw->mac_type == em_82541 ||
      hw->mac_type == em_82541_rev_2 ||
      hw->mac_type == em_82547 ||
      hw->mac_type == em_82547_rev_2) {
   hw->phy_type = em_phy_igp;
   break;
  }
 case 0x02A80390:
 case 0x02A80391:
  hw->phy_type = em_phy_igp_3;
  break;
 case 0x02A80330:
 case 0x02A80320:
 case 0x02A80310:
  hw->phy_type = em_phy_ife;
  break;
 case 0x01410CD0:
  hw->phy_type = em_phy_oem;
  break;
 case 0x01540050:
  hw->phy_type = em_phy_82577;
  break;
 case 0x004DD040:
  hw->phy_type = em_phy_82578;
  break;
 case 0x01540090:
  hw->phy_type = em_phy_82579;
  break;
 case 0x015400A0:
  hw->phy_type = em_phy_i217;
  break;
 case 0x015403A0:
 case 0x015403B0:
  hw->phy_type = em_phy_82580;
  break;
 case 0x001CC912:
  hw->phy_type = em_phy_rtl8211;
  break;
 case 0x01410CB0:
  if (hw->phy_revision == 1) {
   hw->phy_type = em_phy_bm;
   break;
  }
 case 0x01410CA0:
  if (hw->mac_type == em_80003es2lan) {
   hw->phy_type = em_phy_gg82563;
   break;
  }
 default:
  hw->phy_type = em_phy_undefined;
  return -6;
 }
 return 0;
}
static void
em_phy_init_script(struct em_hw *hw)
{
 uint16_t phy_saved_data;
 ;;
 if (hw->phy_init_script) {
  delay(1000*(20));
  em_read_phy_reg(hw, 0x2F5B, &phy_saved_data);
  em_write_phy_reg(hw, 0x2F5B, 0x0003);
  delay(1000*(20));
  em_write_phy_reg(hw, 0x0000, 0x0140);
  delay(1000*(5));
  switch (hw->mac_type) {
  case em_82541:
  case em_82547:
   em_write_phy_reg(hw, 0x1F95, 0x0001);
   em_write_phy_reg(hw, 0x1F71, 0xBD21);
   em_write_phy_reg(hw, 0x1F79, 0x0018);
   em_write_phy_reg(hw, 0x1F30, 0x1600);
   em_write_phy_reg(hw, 0x1F31, 0x0014);
   em_write_phy_reg(hw, 0x1F32, 0x161C);
   em_write_phy_reg(hw, 0x1F94, 0x0003);
   em_write_phy_reg(hw, 0x1F96, 0x003F);
   em_write_phy_reg(hw, 0x2010, 0x0008);
   break;
  case em_82541_rev_2:
  case em_82547_rev_2:
   em_write_phy_reg(hw, 0x1F73, 0x0099);
   break;
  default:
   break;
  }
  em_write_phy_reg(hw, 0x0000, 0x3300);
  delay(1000*(20));
  em_write_phy_reg(hw, 0x2F5B, phy_saved_data);
  if (hw->mac_type == em_82547) {
   uint16_t fused, fine, coarse;
   em_read_phy_reg(hw,
       0x20D1, &fused);
   if (!(fused & 0x0100)) {
    em_read_phy_reg(hw,
        0x20D0, &fused);
    fine = fused &
        0x0F80;
    coarse = fused &
        0x0070;
    if (coarse >
        0x0040) {
     coarse -=
         0x0010;
     fine -=
         0x0080;
    } else if (coarse ==
        0x0040)
     fine -= 0x0500;
    fused = (fused &
        0xF000) |
        (fine &
        0x0F80) |
        (coarse &
        0x0070);
    em_write_phy_reg(hw,
        0x20DC,
        fused);
    em_write_phy_reg(hw,
        0x20DE,
        0x0002);
   }
  }
 }
}
int32_t
em_set_mac_type(struct em_hw *hw)
{
 ;;
 switch (hw->device_id) {
 case 0x1000:
  switch (hw->revision_id) {
  case 2:
   hw->mac_type = em_82542_rev2_0;
   break;
  case 3:
   hw->mac_type = em_82542_rev2_1;
   break;
  default:
   return -5;
  }
  break;
 case 0x1001:
 case 0x1004:
  hw->mac_type = em_82543;
  break;
 case 0x1008:
 case 0x1009:
 case 0x100C:
 case 0x100D:
  hw->mac_type = em_82544;
  break;
 case 0x100E:
 case 0x1015:
 case 0x1017:
 case 0x1016:
 case 0x101E:
  hw->mac_type = em_82540;
  break;
 case 0x100F:
 case 0x1011:
  hw->mac_type = em_82545;
  break;
 case 0x1026:
 case 0x1027:
 case 0x1028:
  hw->mac_type = em_82545_rev_3;
  break;
 case 0x1010:
 case 0x1012:
 case 0x101D:
  hw->mac_type = em_82546;
  break;
 case 0x1079:
 case 0x107A:
 case 0x107B:
 case 0x108A:
 case 0x1099:
 case 0x10B5:
 case 0x109B:
  hw->mac_type = em_82546_rev_3;
  break;
 case 0x1013:
 case 0x1018:
 case 0x1014:
  hw->mac_type = em_82541;
  break;
 case 0x1078:
 case 0x1076:
 case 0x107C:
 case 0x1077:
  hw->mac_type = em_82541_rev_2;
  break;
 case 0x1019:
 case 0x101A:
  hw->mac_type = em_82547;
  break;
 case 0x1075:
  hw->mac_type = em_82547_rev_2;
  break;
 case 0x10A1:
 case 0x10A0:
 case 0x105E:
 case 0x105F:
 case 0x1060:
 case 0x10A4:
 case 0x10A5:
 case 0x10BC:
 case 0x10D9:
 case 0x10DA:
 case 0x10D5:
  hw->mac_type = em_82571;
  break;
 case 0x107D:
 case 0x107E:
 case 0x107F:
 case 0x10B9:
  hw->mac_type = em_82572;
  break;
 case 0x108B:
 case 0x108C:
 case 0x10B3:
 case 0x109A:
 case 0x10B0:
 case 0x10B4:
 case 0x10B2:
  hw->mac_type = em_82573;
  break;
 case 0x10D3:
 case 0x10F6:
 case 0x150C:
  hw->mac_type = em_82574;
  break;
 case 0x10A7:
 case 0x10A9:
 case 0x10D6:
 case 0x10E2:
 case 0x10C9:
 case 0x10E6:
 case 0x10E7:
 case 0x10E8:
 case 0x1526:
 case 0x150A:
 case 0x1518:
 case 0x150D:
  hw->mac_type = em_82575;
  hw->initialize_hw_bits_disable = 1;
  break;
 case 0x150E:
 case 0x150F:
 case 0x1527:
 case 0x1510:
 case 0x1511:
 case 0x1516:
 case 0x0438:
 case 0x043A:
 case 0x043C:
 case 0x0440:
  hw->mac_type = em_82580;
  hw->initialize_hw_bits_disable = 1;
  break;
 case 0x1533:
 case 0x1536:
 case 0x1537:
 case 0x1538:
 case 0x157B:
 case 0x157C:
 case 0x1539:
  hw->mac_type = em_i210;
  hw->initialize_hw_bits_disable = 1;
  hw->eee_enable = 1;
  break;
 case 0x1521:
 case 0x1522:
 case 0x1523:
 case 0x1524:
 case 0x1546:
 case 0x1F40:
 case 0x1F41:
 case 0x1F45:
  hw->mac_type = em_i350;
  hw->initialize_hw_bits_disable = 1;
  hw->eee_enable = 1;
  break;
 case 0x10BA:
 case 0x10BB:
 case 0x1096:
 case 0x1098:
  hw->mac_type = em_80003es2lan;
  break;
 case 0x104C:
 case 0x10C5:
 case 0x10C4:
 case 0x104A:
 case 0x104B:
 case 0x104D:
 case 0x1049:
 case 0x1501:
  hw->mac_type = em_ich8lan;
  break;
 case 0x10E5:
 case 0x10C0:
 case 0x10C2:
 case 0x10C3:
 case 0x10BD:
 case 0x294C:
 case 0x10BF:
 case 0x10F5:
 case 0x10CB:
 case 0x10CD:
 case 0x10CC:
 case 0x10CE:
  hw->mac_type = em_ich9lan;
  break;
 case 0x10DF:
 case 0x10DE:
  hw->mac_type = em_ich10lan;
  break;
 case 0x10EB:
 case 0x10EA:
 case 0x10F0:
 case 0x10EF:
  hw->mac_type = em_pchlan;
  hw->eee_enable = 1;
  break;
 case 0x1502:
 case 0x1503:
  hw->mac_type = em_pch2lan;
  break;
 case 0x153A:
 case 0x153B:
 case 0x155A:
 case 0x1559:
 case 0x15A0:
 case 0x15A1:
 case 0x15A2:
 case 0x15A3:
  hw->mac_type = em_pch_lpt;
  break;
 case 0x156F:
 case 0x1570:
 case 0x15B7:
 case 0x15B8:
 case 0x15B9:
 case 0x15D7:
 case 0x15D8:
 case 0x15E3:
 case 0x15D6:
  hw->mac_type = em_pch_spt;
  break;
 case 0x5040:
  hw->mac_type = em_icp_xxxx;
  hw->icp_xxxx_port_num = 0;
  break;
 case 0x5044:
 case 0x5041:
  hw->mac_type = em_icp_xxxx;
  hw->icp_xxxx_port_num = 1;
  break;
 case 0x5048:
 case 0x5045:
  hw->mac_type = em_icp_xxxx;
  hw->icp_xxxx_port_num = 2;
  break;
 case 0x5049:
  hw->mac_type = em_icp_xxxx;
  hw->icp_xxxx_port_num = 3;
  break;
 default:
  return -5;
 }
 switch (hw->mac_type) {
 case em_ich8lan:
 case em_ich9lan:
 case em_ich10lan:
 case em_pchlan:
 case em_pch2lan:
 case em_pch_lpt:
 case em_pch_spt:
  hw->swfwhw_semaphore_present = 1;
  hw->asf_firmware_present = 1;
  break;
 case em_80003es2lan:
 case em_82575:
 case em_82580:
 case em_i210:
 case em_i350:
  hw->swfw_sync_present = 1;
 case em_82571:
 case em_82572:
 case em_82573:
 case em_82574:
  hw->eeprom_semaphore_present = 1;
 case em_82541:
 case em_82547:
 case em_82541_rev_2:
 case em_82547_rev_2:
  hw->asf_firmware_present = 1;
  break;
 default:
  break;
 }
 return 0;
}
void
em_set_media_type(struct em_hw *hw)
{
 uint32_t status, ctrl_ext;
 ;;
 if (hw->mac_type != em_82543) {
  hw->tbi_compatibility_en = 0;
 }
 if (hw->mac_type == em_82575 || hw->mac_type == em_82580 ||
     hw->mac_type == em_i210 || hw->mac_type == em_i350) {
  hw->media_type = em_media_type_copper;
  ctrl_ext = bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00018 : 0x00018));
  switch (ctrl_ext & 0x00C00000) {
  case 0x00800000:
   ctrl_ext |= 0x02000000;
   break;
  case 0x00400000:
  case 0x00C00000:
   hw->media_type = em_media_type_internal_serdes;
   ctrl_ext |= 0x02000000;
   break;
  default:
   ctrl_ext &= ~0x02000000;
   break;
  }
  bus_space_write_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00018 : 0x00018), ctrl_ext);
  return;
 }
 switch (hw->device_id) {
 case 0x1028:
 case 0x107B:
 case 0x1060:
 case 0x10D9:
 case 0x10DA:
 case 0x107F:
 case 0x1098:
  hw->media_type = em_media_type_internal_serdes;
  break;
 case 0x5040:
 case 0x5044:
 case 0x5048:
 case 0x5041:
 case 0x5045:
 case 0x5049:
  hw->media_type = em_media_type_copper;
  break;
 default:
  switch (hw->mac_type) {
  case em_82542_rev2_0:
  case em_82542_rev2_1:
   hw->media_type = em_media_type_fiber;
   break;
  case em_ich8lan:
  case em_ich9lan:
  case em_ich10lan:
  case em_pchlan:
  case em_pch2lan:
  case em_pch_lpt:
  case em_pch_spt:
  case em_82573:
  case em_82574:
   hw->media_type = em_media_type_copper;
   break;
  default:
   status = bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00008 : 0x00008));
   if (status & 0x00000020) {
    hw->media_type = em_media_type_fiber;
    hw->tbi_compatibility_en = 0;
   } else {
    hw->media_type = em_media_type_copper;
   }
   break;
  }
 }
}
int32_t
em_reset_hw(struct em_hw *hw)
{
 uint32_t ctrl;
 uint32_t ctrl_ext;
 uint32_t icr;
 uint32_t manc;
 uint32_t led_ctrl;
 uint32_t timeout;
 uint32_t extcnf_ctrl;
 int32_t ret_val;
 ;;
 if (hw->mac_type == em_82542_rev2_0) {
  ;
  em_pci_clear_mwi(hw);
 }
 if (hw->bus_type == em_bus_type_pci_express) {
  if (em_disable_pciex_master(hw) != 0) {
   ;
  }
 }
        if (hw->mac_type == em_82575 || hw->mac_type == em_82580 ||
     hw->mac_type == em_i210 || hw->mac_type == em_i350) {
                ret_val = em_set_pciex_completion_timeout(hw);
                if (ret_val) {
                        ;
                }
        }
 ;
 bus_space_write_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x000D8 : 0x000D8), 0xffffffff);
 bus_space_write_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00100 : 0x00100), 0);
 bus_space_write_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00400 : 0x00400), 0x00000008);
 bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00008 : 0x00008));
 hw->tbi_compatibility_on = 0;
 delay(1000*(10));
 ctrl = bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00000 : 0x00000));
 if ((hw->mac_type == em_82541) || (hw->mac_type == em_82547)) {
  bus_space_write_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00000 : 0x00000), (ctrl | 0x80000000));
  delay(1000*(5));
 }
 if ((hw->mac_type == em_82573) || (hw->mac_type == em_82574)) {
  timeout = 10;
  extcnf_ctrl = bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00F00 : 0x00F00));
  extcnf_ctrl |= 0x00000020;
  do {
   bus_space_write_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00F00 : 0x00F00), extcnf_ctrl);
   extcnf_ctrl = bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00F00 : 0x00F00));
   if (extcnf_ctrl & 0x00000020)
    break;
   else
    extcnf_ctrl |=
        0x00000020;
   delay(1000*(2));
   timeout--;
  } while (timeout);
 }
 if (hw->mac_type == em_ich8lan) {
  bus_space_write_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x01000 : 0x01000), 0x0008);
  bus_space_write_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x01008 : 0x01008), 0x0010);
 }
 ;
 switch (hw->mac_type) {
 case em_82544:
 case em_82540:
 case em_82545:
 case em_82546:
 case em_82541:
 case em_82541_rev_2:
  em_write_reg_io((hw), 0x00000, (ctrl | 0x04000000));
  break;
 case em_82545_rev_3:
 case em_82546_rev_3:
  bus_space_write_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00004 : 0x00004), (ctrl | 0x04000000));
  break;
 case em_ich8lan:
 case em_ich9lan:
 case em_ich10lan:
 case em_pchlan:
 case em_pch2lan:
 case em_pch_lpt:
 case em_pch_spt:
  if (!hw->phy_reset_disable &&
      em_check_phy_reset_block(hw) == 0) {
   ctrl |= 0x80000000;
   if ((hw->mac_type == em_pch2lan) &&
    !(bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x05B54 : 0x05B54)) & 0x00008000)) {
    em_gate_hw_phy_config_ich8lan(hw, 1);
   }
  }
  em_get_software_flag(hw);
  bus_space_write_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00000 : 0x00000), (ctrl | 0x04000000));
  delay(1000*(5));
  if (hw->mac_type == em_pch2lan && !hw->phy_reset_disable &&
      !(bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x05B54 : 0x05B54)) & 0x00008000)) {
   delay(1000*(10));
   em_gate_hw_phy_config_ich8lan(hw, 0);
  }
   break;
 default:
  bus_space_write_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00000 : 0x00000), (ctrl | 0x04000000));
  break;
 }
 if (em_check_phy_reset_block(hw) == 0) {
  if (hw->mac_type == em_pchlan) {
   ret_val = em_hv_phy_workarounds_ich8lan(hw);
   if (ret_val)
    return ret_val;
  }
  else if (hw->mac_type == em_pch2lan) {
   ret_val = em_lv_phy_workarounds_ich8lan(hw);
   if (ret_val)
    return ret_val;
  }
 }
 switch (hw->mac_type) {
 case em_82542_rev2_0:
 case em_82542_rev2_1:
 case em_82543:
 case em_82544:
  delay(10);
  ctrl_ext = bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00018 : 0x00018));
  ctrl_ext |= 0x00002000;
  bus_space_write_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00018 : 0x00018), ctrl_ext);
  bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00008 : 0x00008));
  delay(1000*(2));
  break;
 case em_82541:
 case em_82541_rev_2:
 case em_82547:
 case em_82547_rev_2:
  delay(1000*(20));
  break;
 case em_82573:
 case em_82574:
  if (em_is_onboard_nvm_eeprom(hw) == 0) {
   delay(10);
   ctrl_ext = bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00018 : 0x00018));
   ctrl_ext |= 0x00002000;
   bus_space_write_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00018 : 0x00018), ctrl_ext);
   bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00008 : 0x00008));
  }
  ret_val = em_get_auto_rd_done(hw);
  if (ret_val)
   return ret_val;
  break;
 default:
  delay(1000*(5));
  break;
 }
 if (hw->mac_type >= em_82540 && hw->mac_type <= em_82547_rev_2 &&
     hw->mac_type != em_icp_xxxx) {
  manc = bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x05820 : 0x05820));
  manc &= ~(0x00002000);
  bus_space_write_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x05820 : 0x05820), manc);
 }
 if ((hw->mac_type == em_82541) || (hw->mac_type == em_82547)) {
  em_phy_init_script(hw);
  led_ctrl = bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00E00 : 0x00E00));
  led_ctrl &= 0xFFFFF0FF;
  led_ctrl |= (0x0300 | 0x07000000);
  bus_space_write_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00E00 : 0x00E00), led_ctrl);
 }
 if (hw->mac_type == em_pchlan)
  bus_space_write_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x05F50 : 0x05F50), 0x65656565);
 ;
 bus_space_write_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x000D8 : 0x000D8), 0xffffffff);
 icr = bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x000C0 : 0x000C0));
 if (hw->mac_type == em_82542_rev2_0) {
  if (hw->pci_cmd_word & 0x0010)
   em_pci_set_mwi(hw);
 }
 if ((hw->mac_type == em_ich8lan || hw->mac_type == em_ich9lan || hw->mac_type == em_ich10lan || hw->mac_type == em_pchlan || hw->mac_type == em_pch2lan || hw->mac_type == em_pch_lpt || hw->mac_type == em_pch_spt)) {
  uint32_t kab = bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x03004 : 0x03004));
  kab |= 0x00050000;
  bus_space_write_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x03004 : 0x03004), kab);
 }
 if (hw->mac_type == em_82580 || hw->mac_type == em_i350) {
  uint32_t mdicnfg;
  uint16_t nvm_data;
  bus_space_write_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, 0x00008, 0x00100000);
  em_read_eeprom(hw, 0x0024 +
      (hw->bus_func ? (0x40 + (0x40 * hw->bus_func)) : 0), 1,
      &nvm_data);
  mdicnfg = bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, 0x00E04);
  if (nvm_data & 0x0004)
   mdicnfg |= 0x80000000;
  if (nvm_data & 0x0008)
   mdicnfg |= 0x40000000;
  bus_space_write_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, 0x00E04, mdicnfg);
 }
 if (hw->mac_type == em_i210 || hw->mac_type == em_i350)
  em_set_eee_i350(hw);
 return 0;
}
 void
em_initialize_hardware_bits(struct em_hw *hw)
{
 ;;
 if ((hw->mac_type >= em_82571) && (!hw->initialize_hw_bits_disable)) {
  uint32_t reg_ctrl, reg_ctrl_ext;
  uint32_t reg_tarc0, reg_tarc1;
  uint32_t reg_tctl;
  uint32_t reg_txdctl, reg_txdctl1;
  reg_tarc0 = bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x03840 : 0x03840));
  reg_tarc0 &= ~0x78000000;
  reg_txdctl = bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x03828 : 0x03828));
  reg_txdctl |= 0x00400000;
  bus_space_write_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x03828 : 0x03828), reg_txdctl);
  reg_txdctl1 = bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x03928 : 0x03928));
  reg_txdctl1 |= 0x00400000;
  bus_space_write_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x03928 : 0x03928), reg_txdctl1);
  switch (hw->mac_type) {
  case em_82571:
  case em_82572:
   reg_tarc1 = bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x03940 : 0x03940));
   reg_tctl = bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00400 : 0x00400));
   reg_tarc1 &= ~0x60000000;
   reg_tarc0 |= 0x07800000;
   reg_tarc1 |= 0x07000000;
   if (reg_tctl & 0x10000000)
    reg_tarc1 &= ~0x10000000;
   else
    reg_tarc1 |= 0x10000000;
   bus_space_write_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x03940 : 0x03940), reg_tarc1);
   break;
  case em_82573:
  case em_82574:
   reg_ctrl_ext = bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00018 : 0x00018));
   reg_ctrl = bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00000 : 0x00000));
   reg_ctrl_ext &= ~0x00800000;
   reg_ctrl_ext |= 0x00400000;
   reg_ctrl &= ~0x20000000;
   bus_space_write_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00018 : 0x00018), reg_ctrl_ext);
   bus_space_write_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00000 : 0x00000), reg_ctrl);
   break;
  case em_80003es2lan:
   if ((hw->media_type == em_media_type_fiber) ||
   (hw->media_type == em_media_type_internal_serdes)) {
    reg_tarc0 &= ~0x00100000;
   }
   reg_tctl = bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00400 : 0x00400));
   reg_tarc1 = bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x03940 : 0x03940));
   if (reg_tctl & 0x10000000)
    reg_tarc1 &= ~0x10000000;
   else
    reg_tarc1 |= 0x10000000;
   bus_space_write_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x03940 : 0x03940), reg_tarc1);
   break;
  case em_ich8lan:
  case em_ich9lan:
  case em_ich10lan:
  case em_pchlan:
  case em_pch2lan:
  case em_pch_lpt:
  case em_pch_spt:
   if (hw->mac_type == em_ich8lan)
    reg_tarc0 |= 0x30000000;
   reg_ctrl_ext = bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00018 : 0x00018));
   reg_ctrl_ext |= 0x00400000;
   if (hw->mac_type >= em_pchlan)
    reg_ctrl_ext |= 0x00100000;
   bus_space_write_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00018 : 0x00018), reg_ctrl_ext);
   reg_tarc0 |= 0x0d800000;
   reg_tarc1 = bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x03940 : 0x03940));
   reg_tctl = bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00400 : 0x00400));
   if (reg_tctl & 0x10000000)
    reg_tarc1 &= ~0x10000000;
   else
    reg_tarc1 |= 0x10000000;
   reg_tarc1 |= 0x45000000;
   bus_space_write_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x03940 : 0x03940), reg_tarc1);
   break;
  default:
   break;
  }
  bus_space_write_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x03840 : 0x03840), reg_tarc0);
 }
}
static void
em_toggle_lanphypc_pch_lpt(struct em_hw *hw)
{
 uint32_t mac_reg;
 ;;
 mac_reg = bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x0003C : 0x0003C));
 mac_reg &= ~0x0C000000;
 mac_reg |= 0x08000000;
 bus_space_write_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x0003C : 0x0003C), mac_reg);
 mac_reg = bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00000 : 0x00000));
 mac_reg |= 0x00010000;
 mac_reg &= ~0x00020000;
 bus_space_write_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00000 : 0x00000), mac_reg);
 bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00008 : 0x00008));
 delay(1000*(1));
 mac_reg &= ~0x00010000;
 bus_space_write_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00000 : 0x00000), mac_reg);
 bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00008 : 0x00008));
 if (hw->mac_type < em_pch_lpt) {
  delay(1000*(50));
 } else {
  uint16_t count = 20;
  do {
   delay(1000*(5));
  } while (!(bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00018 : 0x00018)) &
      0x00000004) && count--);
  delay(1000*(30));
 }
}
static int
em_disable_ulp_lpt_lp(struct em_hw *hw, _Bool force)
{
 int ret_val = 0;
 uint32_t mac_reg;
 uint16_t phy_reg;
 int i = 0;
 if ((hw->mac_type < em_pch_lpt) ||
     (hw->device_id == 0x153A) ||
     (hw->device_id == 0x153B) ||
     (hw->device_id == 0x15A0) ||
     (hw->device_id == 0x15A1))
  return 0;
 if (bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x05B54 : 0x05B54)) & 0x00008000) {
  if (force) {
   mac_reg = bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x05B50 : 0x05B50));
   mac_reg &= ~0x00000800;
   mac_reg |= 0x00001000;
   bus_space_write_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x05B50 : 0x05B50), mac_reg);
  }
  while (bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x05B54 : 0x05B54)) & 0x00000400) {
   if (i++ == 30) {
    ret_val = -2;
    goto out;
   }
   delay(1000*(10));
  }
  ;
  if (force) {
   mac_reg = bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x05B50 : 0x05B50));
   mac_reg &= ~0x00001000;
   bus_space_write_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x05B50 : 0x05B50), mac_reg);
  } else {
   mac_reg = bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x05B50 : 0x05B50));
   mac_reg &= ~0x00000800;
   bus_space_write_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x05B50 : 0x05B50), mac_reg);
  }
  goto out;
 }
 ret_val = em_get_software_flag(hw);
 if (ret_val)
  goto out;
 if (force)
  em_toggle_lanphypc_pch_lpt(hw);
 ret_val = em_read_phy_reg(hw, (((769) << 5) | ((23) & 0x1F)), &phy_reg);
 if (ret_val) {
  mac_reg = bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00018 : 0x00018));
  mac_reg |= 0x00000800;
  bus_space_write_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00018 : 0x00018), mac_reg);
  delay(1000*(50));
  ret_val = em_read_phy_reg(hw, (((769) << 5) | ((23) & 0x1F)), &phy_reg);
  if (ret_val)
   goto release;
 }
 phy_reg &= ~0x0001;
 em_write_phy_reg(hw, (((769) << 5) | ((23) & 0x1F)), phy_reg);
 mac_reg = bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00018 : 0x00018));
 mac_reg &= ~0x00000800;
 bus_space_write_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00018 : 0x00018), mac_reg);
 ret_val = em_read_phy_reg(hw, (((770) << 5) | ((17) & 0x1F)), &phy_reg);
 if (ret_val)
  goto release;
 phy_reg |= 0x4000;
 em_write_phy_reg(hw, (((770) << 5) | ((17) & 0x1F)), phy_reg);
 ret_val = em_read_phy_reg(hw, (((779) << 5) | ((16) & 0x1F)), &phy_reg);
 if (ret_val)
  goto release;
 phy_reg &= ~(0x0004 |
       0x0010 |
       0x0100 |
       0x0040 |
       0x0020 |
       0x0400 |
       0x0800 |
       0x1000);
 em_write_phy_reg(hw, (((779) << 5) | ((16) & 0x1F)), phy_reg);
 phy_reg |= 0x0001;
 em_write_phy_reg(hw, (((779) << 5) | ((16) & 0x1F)), phy_reg);
 mac_reg = bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0xe4UL : 0xe4UL));
 mac_reg &= ~0x00000020;
 bus_space_write_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0xe4UL : 0xe4UL), mac_reg);
release:
 em_release_software_flag(hw);
 if (force) {
  em_phy_reset(hw);
  delay(1000*(50));
 }
out:
 if (ret_val)
  ;
 return ret_val;
}
int32_t
em_init_hw(struct em_hw *hw)
{
 uint32_t ctrl;
 uint32_t i;
 int32_t ret_val;
 uint16_t pcix_cmd_word;
 uint16_t pcix_stat_hi_word;
 uint16_t cmd_mmrbc;
 uint16_t stat_mmrbc;
 uint32_t mta_size;
 uint32_t reg_data;
 uint32_t ctrl_ext;
 uint32_t snoop;
 uint32_t fwsm;
 ;;
 if (hw->mac_type == em_ich8lan) {
  reg_data = bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00008 : 0x00008));
  reg_data &= ~0x80000000;
  bus_space_write_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00008 : 0x00008), reg_data);
 }
 if (hw->mac_type == em_pchlan ||
  hw->mac_type == em_pch2lan ||
  hw->mac_type == em_pch_lpt ||
  hw->mac_type == em_pch_spt) {
  fwsm = bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x05B54 : 0x05B54));
  if ((fwsm & 0x00008000) == 0) {
   ctrl = bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00000 : 0x00000));
   ctrl |= 0x00010000;
   ctrl &= ~0x00020000;
   bus_space_write_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00000 : 0x00000), ctrl);
   delay(10);
   ctrl &= ~0x00010000;
   bus_space_write_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00000 : 0x00000), ctrl);
   delay(1000*(50));
  }
  if (hw->mac_type == em_pch2lan)
   em_gate_hw_phy_config_ich8lan(hw, 1);
  em_disable_ulp_lpt_lp(hw, 1);
  em_phy_reset(hw);
  if (hw->mac_type == em_pch2lan &&
   (fwsm & 0x00008000) == 0)
   em_gate_hw_phy_config_ich8lan(hw, 0);
  ret_val = em_set_mdio_slow_mode_hv(hw);
  if (ret_val)
   return ret_val;
 }
 ret_val = em_id_led_init(hw);
 if (ret_val) {
  ;
  return ret_val;
 }
 em_set_media_type(hw);
 em_initialize_hardware_bits(hw);
 ;
 if (!(hw->mac_type == em_ich8lan || hw->mac_type == em_ich9lan || hw->mac_type == em_ich10lan || hw->mac_type == em_pchlan || hw->mac_type == em_pch2lan || hw->mac_type == em_pch_lpt || hw->mac_type == em_pch_spt)) {
  if (hw->mac_type < em_82545_rev_3)
   bus_space_write_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00038 : 0x00038), 0);
  if (hw->mac_type == em_i350)
   em_clear_vfta_i350(hw);
  else
   em_clear_vfta(hw);
 }
 if (hw->mac_type == em_82542_rev2_0) {
  ;
  em_pci_clear_mwi(hw);
  bus_space_write_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00100 : 0x00100), 0x00000001);
  bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00008 : 0x00008));
  delay(1000*(5));
 }
 em_init_rx_addrs(hw);
 if (hw->mac_type == em_82542_rev2_0) {
  bus_space_write_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00100 : 0x00100), 0);
  bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00008 : 0x00008));
  delay(1000*(1));
  if (hw->pci_cmd_word & 0x0010)
   em_pci_set_mwi(hw);
 }
 ;
 mta_size = 128;
 if ((hw->mac_type == em_ich8lan || hw->mac_type == em_ich9lan || hw->mac_type == em_ich10lan || hw->mac_type == em_pchlan || hw->mac_type == em_pch2lan || hw->mac_type == em_pch_lpt || hw->mac_type == em_pch_spt))
  mta_size = 32;
 for (i = 0; i < mta_size; i++) {
  bus_space_write_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x05200 : 0x00200) + ((i) << 2), 0);
  bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00008 : 0x00008));
 }
 if (hw->dma_fairness && hw->mac_type <= em_82543) {
  ctrl = bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00000 : 0x00000));
  bus_space_write_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00000 : 0x00000), ctrl | 0x00000004);
 }
 switch (hw->mac_type) {
 case em_82545_rev_3:
 case em_82546_rev_3:
  break;
 default:
  if (hw->bus_type == em_bus_type_pcix) {
   em_read_pci_cfg(hw, 0xE6,
       &pcix_cmd_word);
   em_read_pci_cfg(hw, 0xEA,
       &pcix_stat_hi_word);
   cmd_mmrbc = (pcix_cmd_word & 0x000C)
       >> 0x2;
   stat_mmrbc = (pcix_stat_hi_word &
       0x0060) >>
       0x5;
   if (stat_mmrbc == 0x3)
    stat_mmrbc = 0x2;
   if (cmd_mmrbc > stat_mmrbc) {
    pcix_cmd_word &= ~0x000C;
    pcix_cmd_word |= stat_mmrbc <<
        0x2;
    em_write_pci_cfg(hw, 0xE6,
        &pcix_cmd_word);
   }
  }
  break;
 }
 if ((hw->mac_type == em_ich8lan || hw->mac_type == em_ich9lan || hw->mac_type == em_ich10lan || hw->mac_type == em_pchlan || hw->mac_type == em_pch2lan || hw->mac_type == em_pch_lpt || hw->mac_type == em_pch_spt))
  delay(1000*(15));
 if (hw->phy_type == em_phy_82578) {
  em_read_phy_reg(hw, (((800) << 5) | ((1) & 0x1F)),
      (uint16_t *)&reg_data);
  ret_val = em_phy_reset(hw);
  if (ret_val)
   return ret_val;
 }
 ret_val = em_setup_link(hw);
 if (hw->mac_type > em_82544) {
  ctrl = bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x03828 : 0x03828));
  ctrl = (ctrl & ~0x00FF0000) |
      0x01010000;
  bus_space_write_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x03828 : 0x03828), ctrl);
 }
 if ((hw->mac_type == em_82573) || (hw->mac_type == em_82574)) {
  em_enable_tx_pkt_filtering(hw);
 }
 switch (hw->mac_type) {
 default:
  break;
 case em_80003es2lan:
  reg_data = bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00400 : 0x00400));
  reg_data |= 0x01000000;
  bus_space_write_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00400 : 0x00400), reg_data);
  reg_data = bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00404 : 0x00404));
  reg_data &= ~0x000FFC00;
  reg_data |= 0x00010000;
  bus_space_write_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00404 : 0x00404), reg_data);
  reg_data = bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00410 : 0x00410));
  reg_data &= ~0x000003FF;
  reg_data |= 0x00000008;
  bus_space_write_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00410 : 0x00410), reg_data);
  reg_data = bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x05F00 : 0x05F00) + ((0x0001) << 2));
  reg_data &= ~0x00100000;
  bus_space_write_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x05F00 : 0x05F00) + ((0x0001) << 2), reg_data);
 case em_82571:
 case em_82572:
 case em_82575:
 case em_82580:
 case em_i210:
 case em_i350:
 case em_ich8lan:
 case em_ich9lan:
 case em_ich10lan:
 case em_pchlan:
 case em_pch2lan:
 case em_pch_lpt:
 case em_pch_spt:
  ctrl = bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x03928 : 0x03928));
  ctrl = (ctrl & ~0x00FF0000) |
      0x01010000;
  bus_space_write_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x03928 : 0x03928), ctrl);
  break;
 }
 if ((hw->mac_type == em_82573) || (hw->mac_type == em_82574)) {
  uint32_t gcr = bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x05B00 : 0x05B00));
  gcr |= 0x08000000;
  bus_space_write_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x05B00 : 0x05B00), gcr);
 }
 em_clear_hw_cntrs(hw);
 if ((hw->mac_type == em_ich8lan || hw->mac_type == em_ich9lan || hw->mac_type == em_ich10lan || hw->mac_type == em_pchlan || hw->mac_type == em_pch2lan || hw->mac_type == em_pch_lpt || hw->mac_type == em_pch_spt)) {
  if (hw->mac_type == em_ich8lan)
   snoop = (0x00000001 | 0x00000002 | 0x00000004 | 0x00000008 | 0x00000010 | 0x00000020);
  else
   snoop = (u_int32_t) ~ ((0x00000001 | 0x00000002 | 0x00000004 | 0x00000008 | 0x00000010 | 0x00000020));
  em_set_pci_ex_no_snoop(hw, snoop);
 }
 if (hw->device_id == 0x1099 ||
     hw->device_id == 0x10B5) {
  ctrl_ext = bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00018 : 0x00018));
  ctrl_ext |= 0x00020000;
  bus_space_write_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00018 : 0x00018), ctrl_ext);
 }
 return ret_val;
}
static int32_t
em_adjust_serdes_amplitude(struct em_hw *hw)
{
 uint16_t eeprom_data;
 int32_t ret_val;
 ;;
 if (hw->media_type != em_media_type_internal_serdes ||
     hw->mac_type >= em_82575)
  return 0;
 switch (hw->mac_type) {
 case em_82545_rev_3:
 case em_82546_rev_3:
  break;
 default:
  return 0;
 }
 ret_val = em_read_eeprom(hw, 0x0006, 1, &eeprom_data);
 if (ret_val) {
  return ret_val;
 }
 if (eeprom_data != 0xFFFF) {
  eeprom_data &= 0x000F;
  ret_val = em_write_phy_reg(hw, 0x1A,
      eeprom_data);
  if (ret_val)
   return ret_val;
 }
 return 0;
}
int32_t
em_setup_link(struct em_hw *hw)
{
 uint32_t ctrl_ext;
 int32_t ret_val;
 uint16_t eeprom_data;
 uint16_t eeprom_control2_reg_offset;
 ;;
 eeprom_control2_reg_offset =
     (hw->mac_type != em_icp_xxxx)
     ? 0x000F
     : ((((hw->icp_xxxx_port_num) + 1) << 4) + 1);
 if (em_check_phy_reset_block(hw))
  return 0;
 if (hw->fc == 0xFF) {
  switch (hw->mac_type) {
  case em_ich8lan:
  case em_ich9lan:
  case em_ich10lan:
  case em_pchlan:
  case em_pch2lan:
  case em_pch_lpt:
  case em_pch_spt:
  case em_82573:
  case em_82574:
   hw->fc = 3;
   break;
  default:
   ret_val = em_read_eeprom(hw,
       eeprom_control2_reg_offset, 1, &eeprom_data);
   if (ret_val) {
    ;
    return -1;
   }
   if ((eeprom_data & 0x3000) == 0)
    hw->fc = 0;
   else if ((eeprom_data & 0x3000) ==
       0x2000)
    hw->fc = 2;
   else
    hw->fc = 3;
   break;
  }
 }
 if (hw->mac_type == em_82542_rev2_0)
  hw->fc &= (~2);
 if ((hw->mac_type < em_82543) && (hw->report_tx_early == 1))
  hw->fc &= (~1);
 hw->original_fc = hw->fc;
 ;
 if (hw->mac_type == em_82543) {
  ret_val = em_read_eeprom(hw, 0x000F,
      1, &eeprom_data);
  if (ret_val) {
   ;
   return -1;
  }
  ctrl_ext = ((eeprom_data & 0x00F0) <<
      4);
  bus_space_write_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00018 : 0x00018), ctrl_ext);
 }
 ret_val = em_detect_gig_phy(hw);
 if (ret_val) {
  ;
  if (hw->mac_type == em_icp_xxxx)
   return 15;
  else
   return ret_val;
 }
 ;
 switch (hw->media_type) {
 case em_media_type_copper:
 case em_media_type_oem:
  ret_val = em_setup_copper_link(hw);
  break;
 default:
  ret_val = em_setup_fiber_serdes_link(hw);
  break;
 }
 ;
 if (!(hw->mac_type == em_ich8lan || hw->mac_type == em_ich9lan || hw->mac_type == em_ich10lan || hw->mac_type == em_pchlan || hw->mac_type == em_pch2lan || hw->mac_type == em_pch_lpt || hw->mac_type == em_pch_spt)) {
  bus_space_write_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00030 : 0x00030), 0x8808);
  bus_space_write_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x0002C : 0x0002C), 0x00000100);
  bus_space_write_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00028 : 0x00028), 0x00C28001);
 }
 bus_space_write_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00170 : 0x00170), hw->fc_pause_time);
 if (hw->phy_type == em_phy_82577 ||
     hw->phy_type == em_phy_82578 ||
     hw->phy_type == em_phy_82579 ||
     hw->phy_type == em_phy_i217) {
  bus_space_write_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x05F40 : 0x05F40), 0x1000);
  em_write_phy_reg(hw, (((769) << 5) | ((27) & 0x1F)),
      hw->fc_pause_time);
 }
 if (!(hw->fc & 2)) {
  bus_space_write_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x02160 : 0x00168), 0);
  bus_space_write_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x02168 : 0x00160), 0);
 } else {
  if (hw->fc_send_xon) {
   bus_space_write_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x02160 : 0x00168), (hw->fc_low_water | 0x80000000));
   bus_space_write_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x02168 : 0x00160), hw->fc_high_water);
  } else {
   bus_space_write_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x02160 : 0x00168), hw->fc_low_water);
   bus_space_write_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x02168 : 0x00160), hw->fc_high_water);
  }
 }
 return ret_val;
}
void
em_power_up_serdes_link_82575(struct em_hw *hw)
{
 uint32_t reg64;
 reg64 = bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x04200 : 0x04200));
 reg64 |= 8;
 bus_space_write_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x04200 : 0x04200), reg64);
 reg64 = bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00018 : 0x00018));
 reg64 &= ~0x00000080;
 bus_space_write_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00018 : 0x00018), reg64);
 bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00008 : 0x00008));
 delay(5);
}
static int32_t
em_setup_fiber_serdes_link(struct em_hw *hw)
{
 uint32_t ctrl, ctrl_ext, reg64;
 uint32_t status;
 uint32_t txcw = 0;
 uint32_t i;
 uint32_t signal = 0;
 int32_t ret_val;
 ;;
 if (hw->mac_type == em_82571 || hw->mac_type == em_82572 ||
     hw->mac_type >= em_82575)
  bus_space_write_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00024 : 0x00024), 0x0400);
 if (hw->mac_type >= em_82575)
  em_power_up_serdes_link_82575(hw);
 ctrl = bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00000 : 0x00000));
 if (hw->media_type == em_media_type_fiber)
  signal = (hw->mac_type > em_82544) ? 0x00080000 : 0;
 ret_val = em_adjust_serdes_amplitude(hw);
 if (ret_val)
  return ret_val;
 ctrl &= ~(0x00000008);
 if (hw->mac_type >= em_82575) {
  ctrl |= 0x00040000 | 0x00080000;
  ctrl_ext = bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00018 : 0x00018));
  switch (ctrl_ext & 0x00C00000) {
  case 0x00400000:
  case 0x00C00000:
   reg64 = bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x04208 : 0x04208));
   reg64 |= 0x80;
   reg64 |= 4 | 8;
   reg64 |= 0x10;
   ;
   bus_space_write_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x04208 : 0x04208), reg64);
   em_force_mac_fc(hw);
   hw->autoneg_failed = 0;
   return 0;
   break;
  default:
   reg64 = bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00034 : 0x00034));
   reg64 |= 0x4;
   bus_space_write_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00034 : 0x00034), reg64);
   break;
  }
 }
 ret_val = em_set_vco_speed(hw);
 if (ret_val)
  return ret_val;
 em_config_collision_dist(hw);
 switch (hw->fc) {
 case 0:
  txcw = (0x80000000 | 0x00000020);
  break;
 case 1:
  txcw = (0x80000000 | 0x00000020 |
      0x00000180);
  break;
 case 2:
  txcw = (0x80000000 | 0x00000020 | 0x00000100);
  break;
 case 3:
  txcw = (0x80000000 | 0x00000020 |
      0x00000180);
  break;
 default:
  ;
  return -3;
  break;
 }
 ;
 bus_space_write_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00178 : 0x00178), txcw);
 bus_space_write_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00000 : 0x00000), ctrl);
 bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00008 : 0x00008));
 hw->txcw = txcw;
 delay(1000*(1));
 if (hw->media_type == em_media_type_internal_serdes ||
     (bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00000 : 0x00000)) & 0x00080000) == signal) {
  ;
  for (i = 0; i < (500 / 10); i++) {
   delay(1000*(10));
   status = bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00008 : 0x00008));
   if (status & 0x00000002)
    break;
  }
  if (i == (500 / 10)) {
   ;
   hw->autoneg_failed = 1;
   ret_val = em_check_for_link(hw);
   if (ret_val) {
    ;
    return ret_val;
   }
   hw->autoneg_failed = 0;
  } else {
   hw->autoneg_failed = 0;
   ;
  }
 } else {
  ;
 }
 return 0;
}
static int32_t
em_copper_link_preconfig(struct em_hw *hw)
{
 uint32_t ctrl;
 int32_t ret_val;
 uint16_t phy_data;
 ;;
 ctrl = bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00000 : 0x00000));
 if (hw->mac_type > em_82543) {
  ctrl |= 0x00000040;
  ctrl &= ~(0x00000800 | 0x00001000);
  bus_space_write_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00000 : 0x00000), ctrl);
 } else {
  ctrl |= (0x00000800 | 0x00001000 |
      0x00000040);
  bus_space_write_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00000 : 0x00000), ctrl);
  ret_val = em_phy_hw_reset(hw);
  if (ret_val)
   return ret_val;
 }
 ret_val = em_set_phy_mode(hw);
 if (ret_val)
  return ret_val;
 if ((hw->mac_type == em_82545_rev_3) ||
     (hw->mac_type == em_82546_rev_3)) {
  ret_val = em_read_phy_reg(hw, 0x10,
      &phy_data);
  phy_data |= 0x00000008;
  ret_val = em_write_phy_reg(hw, 0x10,
      phy_data);
 }
 if (hw->mac_type <= em_82543 ||
     hw->mac_type == em_82541 || hw->mac_type == em_82547 ||
     hw->mac_type == em_82541_rev_2 || hw->mac_type == em_82547_rev_2)
  hw->phy_reset_disable = 0;
 return 0;
}
static int32_t
em_copper_link_igp_setup(struct em_hw *hw)
{
 uint32_t led_ctrl;
 int32_t ret_val;
 uint16_t phy_data;
 ;;
 if (hw->phy_reset_disable)
  return 0;
 ret_val = em_phy_reset(hw);
 if (ret_val) {
  ;
  return ret_val;
 }
 delay(1000*(15));
 if (hw->mac_type != em_ich8lan &&
     hw->mac_type != em_ich9lan &&
     hw->mac_type != em_ich10lan) {
  led_ctrl = bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00E00 : 0x00E00));
  led_ctrl &= 0xFFFFF0FF;
  led_ctrl |= (0x0300 | 0x07000000);
  bus_space_write_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00E00 : 0x00E00), led_ctrl);
 }
 if (hw->phy_type == em_phy_igp) {
  ret_val = em_set_d3_lplu_state(hw, 0);
  if (ret_val) {
   ;
   return ret_val;
  }
 }
 if (hw->mac_type == em_pchlan ||
  hw->mac_type == em_pch2lan ||
  hw->mac_type == em_pch_lpt ||
  hw->mac_type == em_pch_spt)
  ret_val = em_set_lplu_state_pchlan(hw, 0);
 else
  ret_val = em_set_d0_lplu_state(hw, 0);
 if (ret_val) {
  ;
  return ret_val;
 }
 ret_val = em_read_phy_reg(hw, 0x12, &phy_data);
 if (ret_val)
  return ret_val;
 if ((hw->mac_type == em_82541) || (hw->mac_type == em_82547)) {
  hw->dsp_config_state = em_dsp_config_disabled;
  phy_data &= ~(0x1000 |
      0x2000);
  hw->mdix = 1;
 } else {
  hw->dsp_config_state = em_dsp_config_enabled;
  phy_data &= ~0x1000;
  switch (hw->mdix) {
  case 1:
   phy_data &= ~0x2000;
   break;
  case 2:
   phy_data |= 0x2000;
   break;
  case 0:
  default:
   phy_data |= 0x1000;
   break;
  }
 }
 ret_val = em_write_phy_reg(hw, 0x12, phy_data);
 if (ret_val)
  return ret_val;
 if (hw->autoneg) {
  em_ms_type phy_ms_setting = hw->master_slave;
  if (hw->ffe_config_state == em_ffe_config_active)
   hw->ffe_config_state = em_ffe_config_enabled;
  if (hw->dsp_config_state == em_dsp_config_activated)
   hw->dsp_config_state = em_dsp_config_enabled;
  if (hw->autoneg_advertised == 0x0020) {
   ret_val = em_read_phy_reg(hw,
       0x10, &phy_data);
   if (ret_val)
    return ret_val;
   phy_data &= ~0x0080;
   ret_val = em_write_phy_reg(hw,
       0x10, phy_data);
   if (ret_val)
    return ret_val;
   ret_val = em_read_phy_reg(hw, 0x09,
       &phy_data);
   if (ret_val)
    return ret_val;
   phy_data &= ~0x1000;
   ret_val = em_write_phy_reg(hw, 0x09,
       phy_data);
   if (ret_val)
    return ret_val;
  }
  ret_val = em_read_phy_reg(hw, 0x09, &phy_data);
  if (ret_val)
   return ret_val;
  hw->original_master_slave = (phy_data & 0x1000) ?
      ((phy_data & 0x0800) ? em_ms_force_master :
      em_ms_force_slave) : em_ms_auto;
  switch (phy_ms_setting) {
  case em_ms_force_master:
   phy_data |= (0x1000 | 0x0800);
   break;
  case em_ms_force_slave:
   phy_data |= 0x1000;
   phy_data &= ~(0x0800);
   break;
  case em_ms_auto:
   phy_data &= ~0x1000;
   break;
  default:
   break;
  }
  ret_val = em_write_phy_reg(hw, 0x09, phy_data);
  if (ret_val)
   return ret_val;
 }
 return 0;
}
static int32_t
em_copper_link_ggp_setup(struct em_hw *hw)
{
 int32_t ret_val;
 uint16_t phy_data;
 uint32_t reg_data;
 ;;
 if (!hw->phy_reset_disable) {
  ret_val = em_read_phy_reg(hw, (((2) << 5) | ((21) & 0x1F)),
      &phy_data);
  if (ret_val)
   return ret_val;
  phy_data |= 0x0010;
  phy_data |= 0x0007;
  ret_val = em_write_phy_reg(hw, (((2) << 5) | ((21) & 0x1F)),
      phy_data);
  if (ret_val)
   return ret_val;
  ret_val = em_read_phy_reg(hw, (((0) << 5) | ((16) & 0x1F)),
      &phy_data);
  if (ret_val)
   return ret_val;
  phy_data &= ~0x0060;
  switch (hw->mdix) {
  case 1:
   phy_data |= 0x0000;
   break;
  case 2:
   phy_data |= 0x0020;
   break;
  case 0:
  default:
   phy_data |= 0x0060;
   break;
  }
  phy_data &= ~0x0002;
  if (hw->disable_polarity_correction == 1)
   phy_data |= 0x0002;
  ret_val = em_write_phy_reg(hw, (((0) << 5) | ((16) & 0x1F)),
      phy_data);
  if (ret_val)
   return ret_val;
  ret_val = em_phy_reset(hw);
  if (ret_val) {
   ;
   return ret_val;
  }
 }
 if (hw->mac_type == em_80003es2lan) {
  ret_val = em_write_kmrn_reg(hw,
      0x00000000,
      0x00000008 |
      0x00000800);
  if (ret_val)
   return ret_val;
  ret_val = em_read_phy_reg(hw, (((0) << 5) | ((26) & 0x1F)),
      &phy_data);
  if (ret_val)
   return ret_val;
  phy_data &= ~0x2000;
  ret_val = em_write_phy_reg(hw, (((0) << 5) | ((26) & 0x1F)),
      phy_data);
  if (ret_val)
   return ret_val;
  reg_data = bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00018 : 0x00018));
  reg_data &= ~(0x00C00000);
  bus_space_write_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00018 : 0x00018), reg_data);
  ret_val = em_read_phy_reg(hw, (((193) << 5) | ((20) & 0x1F)),
      &phy_data);
  if (ret_val)
   return ret_val;
  if (em_check_mng_mode(hw) == 0) {
   phy_data |= 0x0001;
   ret_val = em_write_phy_reg(hw,
       (((193) << 5) | ((20) & 0x1F)), phy_data);
   if (ret_val)
    return ret_val;
   ret_val = em_read_phy_reg(hw,
       (((193) << 5) | ((16) & 0x1F)), &phy_data);
   if (ret_val)
    return ret_val;
   phy_data &= ~0x0800;
   ret_val = em_write_phy_reg(hw,
       (((193) << 5) | ((16) & 0x1F)), phy_data);
   if (ret_val)
    return ret_val;
  }
  ret_val = em_read_phy_reg(hw, (((194) << 5) | ((18) & 0x1F)),
      &phy_data);
  if (ret_val)
   return ret_val;
  phy_data |= 0x0010;
  ret_val = em_write_phy_reg(hw, (((194) << 5) | ((18) & 0x1F)),
      phy_data);
  if (ret_val)
   return ret_val;
 }
 return 0;
}
static int32_t
em_copper_link_mgp_setup(struct em_hw *hw)
{
 int32_t ret_val;
 uint16_t phy_data;
 ;;
 if (hw->phy_reset_disable)
  return 0;
 if (hw->mac_type == em_pchlan ||
  hw->mac_type == em_pch2lan ||
  hw->mac_type == em_pch_lpt ||
  hw->mac_type == em_pch_spt)
  ret_val = em_set_lplu_state_pchlan(hw, 0);
 ret_val = em_read_phy_reg(hw, 0x10, &phy_data);
 if (ret_val)
  return ret_val;
 if (hw->phy_id == 0x01410CD0) {
  phy_data |= 0x00000008;
  ret_val = em_write_phy_reg(hw, 0x10,
      phy_data);
  if (ret_val)
   return ret_val;
  ret_val = em_read_phy_reg(hw, 0x10,
      &phy_data);
  if (ret_val)
   return ret_val;
  phy_data &= ~0x0800;
 }
 else if (hw->phy_type != em_phy_bm)
  phy_data |= 0x0800;
 phy_data &= ~0x0060;
 switch (hw->mdix) {
 case 1:
  phy_data |= 0x0000;
  break;
 case 2:
  phy_data |= 0x0020;
  break;
 case 3:
  phy_data |= 0x0040;
  break;
 case 0:
 default:
  phy_data |= 0x0060;
  break;
 }
 phy_data &= ~0x0002;
 if (hw->disable_polarity_correction == 1)
  phy_data |= 0x0002;
 if (hw->phy_type == em_phy_bm)
  phy_data |= 0x0800;
 ret_val = em_write_phy_reg(hw, 0x10, phy_data);
 if (ret_val)
  return ret_val;
 if (((hw->phy_type == em_phy_m88) &&
     (hw->phy_revision < 0x04) &&
     (hw->phy_id != 0x01410CB0)) ||
     (hw->phy_type == em_phy_oem)) {
  ret_val = em_read_phy_reg(hw, 0x14,
      &phy_data);
  if (ret_val)
   return ret_val;
  if (hw->phy_type == em_phy_oem) {
   phy_data |= 0x0002;
   phy_data |= 0x0080;
  }
  phy_data |= 0x0070;
  if ((hw->phy_revision == 2) &&
      (hw->phy_id == 0x01410CC0)) {
   phy_data &= ~(0x0E00);
   phy_data |= 0x0800;
   ret_val = em_write_phy_reg(hw,
       0x14, phy_data);
   if (ret_val)
    return ret_val;
  } else {
   phy_data &= ~(0x0C00 |
       0x0300);
   phy_data |= (0x0000 |
       0x0100);
   ret_val = em_write_phy_reg(hw,
       0x14, phy_data);
   if (ret_val)
    return ret_val;
  }
 }
 if ((hw->phy_type == em_phy_bm) && (hw->phy_revision == 1)) {
  ret_val = em_write_phy_reg(hw, 29, 0x0003);
  if (ret_val)
   return ret_val;
  ret_val = em_write_phy_reg(hw, 30, 0x0000);
  if (ret_val)
   return ret_val;
 }
 if (hw->phy_type == em_phy_82578) {
  ret_val = em_read_phy_reg(hw, 0x14,
      &phy_data);
  if (ret_val)
   return ret_val;
  phy_data |= 0x0020;
  phy_data &= ~0x001C;
  ret_val = em_write_phy_reg(hw, 0x14,
      phy_data);
  if (ret_val)
   return ret_val;
 }
 ret_val = em_phy_reset(hw);
 if (ret_val) {
  ;
  return ret_val;
 }
 return 0;
}
static int32_t
em_copper_link_82577_setup(struct em_hw *hw)
{
 int32_t ret_val;
 uint16_t phy_data;
 uint32_t led_ctl;
 ;;
 if (hw->phy_reset_disable)
  return 0;
 ret_val = em_read_phy_reg(hw, 22, &phy_data);
 if (ret_val)
  return ret_val;
 phy_data |= (1 << 15) |
     ((1 << 10) + (1 << 11));
 ret_val = em_write_phy_reg(hw, 22, phy_data);
 if (ret_val)
  return ret_val;
 delay(1000*(15));
 led_ctl = hw->ledctl_mode1;
 ret_val = em_set_lplu_state_pchlan(hw, 0);
 if (ret_val) {
  ;
  return ret_val;
 }
 bus_space_write_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00E00 : 0x00E00), led_ctl);
 return 0;
}
static int32_t
em_copper_link_82580_setup(struct em_hw *hw)
{
 int32_t ret_val;
 uint16_t phy_data;
 if (hw->phy_reset_disable)
  return 0;
 ret_val = em_phy_reset(hw);
 if (ret_val)
  goto out;
 ret_val = em_read_phy_reg(hw, 22, &phy_data);
 if (ret_val)
  goto out;
 phy_data |= (1 << 15) |
     (3 << 10);
 ret_val = em_write_phy_reg(hw, 22, phy_data);
out:
 return ret_val;
}
static int32_t
em_copper_link_rtl8211_setup(struct em_hw *hw)
{
 int32_t ret_val;
 uint16_t phy_data;
 ;;
 if (!hw) {
  return -1;
 }
 em_phy_hw_reset(hw);
 phy_data = 0;
 ret_val = em_read_phy_reg_ex(hw, 0x10, &phy_data);
 if (ret_val) {
  printf("Unable to read RGEPHY_CR register\n");
  return ret_val;
 }
 ;
 phy_data |= 0x0800;
 ret_val = em_write_phy_reg_ex(hw, 0x10, phy_data);
 if (ret_val) {
  printf("Unable to write RGEPHY_CR register\n");
  return ret_val;
 }
 phy_data = 0;
 ret_val = em_read_phy_reg_ex(hw, 0x18, &phy_data);
 if (ret_val) {
  printf("Unable to read RGEPHY_LC register\n");
  return ret_val;
 }
 phy_data &= 0x80FF;
 ret_val = em_write_phy_reg_ex(hw, 0x18, phy_data);
 if (ret_val) {
  printf("Unable to write RGEPHY_LC register\n");
  return ret_val;
 }
 phy_data = 0;
 ret_val = em_read_phy_reg_ex(hw, 0x11, &phy_data);
 if (ret_val) {
  printf("Unable to read RGEPHY_SR register\n");
  return ret_val;
 }
 phy_data |= 0x0010;
 ret_val = em_write_phy_reg_ex(hw, 0x11, phy_data);
 if (ret_val) {
  printf("Unable to write RGEPHY_SR register\n");
  return ret_val;
 }
 phy_data = 0;
 ret_val = em_read_phy_reg_ex(hw, 0x11, &phy_data);
 if (ret_val) {
  printf("Unable to read RGEPHY_SR register\n");
  return ret_val;
 }
 phy_data = 0x0002;
 ret_val = em_write_phy_reg_ex(hw, 0x1F, phy_data);
 if (ret_val) {
  printf("Unable to write PHY RGEPHY_PS register\n");
  return ret_val;
 }
 phy_data = 0x0000;
 ret_val = em_write_phy_reg_ex(hw, 0x1A, phy_data);
 if (ret_val) {
  printf("Unable to write RGEPHY_LC_P2 register\n");
  return ret_val;
 }
 delay(5);
 phy_data = 0;
 ret_val = em_read_phy_reg_ex(hw, 0x1A, &phy_data);
 if (ret_val) {
  printf("Unable to read RGEPHY_LC_P2 register\n");
  return ret_val;
 }
 phy_data &= 0xF000;
 phy_data |= 0x0F24;
 ret_val = em_write_phy_reg_ex(hw, 0x1A, phy_data);
 if (ret_val) {
  printf("Unable to write RGEPHY_LC_P2 register\n");
  return ret_val;
 }
 phy_data = 0;
 ret_val= em_read_phy_reg_ex(hw, 0x1A, &phy_data);
 if (ret_val) {
  printf("Unable to read RGEPHY_LC_P2 register\n");
  return ret_val;
 }
 ;
 phy_data = 0;
 ret_val = em_write_phy_reg_ex(hw, 0x1F, phy_data);
 if (ret_val) {
  printf("Unable to write PHY RGEPHY_PS register\n");
  return ret_val;
 }
 phy_data = 0x140 | 0x2000 | 0x0008 |
     0x0004 | 0x0002;
 ret_val = em_write_phy_reg_ex(hw, 0x18, phy_data);
 if (ret_val) {
  printf("Unable to write RGEPHY_LC register\n");
  return ret_val;
 }
 return 0;
}
int32_t
em_copper_link_autoneg(struct em_hw *hw)
{
 int32_t ret_val;
 uint16_t phy_data;
 ;;
 hw->autoneg_advertised &= 0x002F;
 if (hw->autoneg_advertised == 0)
  hw->autoneg_advertised = 0x002F;
 if (hw->phy_type == em_phy_ife)
  hw->autoneg_advertised &= 0x000F;
 ;
 ret_val = em_phy_setup_autoneg(hw);
 if (ret_val) {
  ;
  return ret_val;
 }
 ;
 ret_val = em_read_phy_reg(hw, 0x00, &phy_data);
 if (ret_val)
  return ret_val;
 phy_data |= (0x1000 | 0x0200);
 ret_val = em_write_phy_reg(hw, 0x00, phy_data);
 if (ret_val)
  return ret_val;
 if (hw->wait_autoneg_complete) {
  ret_val = em_wait_autoneg(hw);
  if (ret_val) {
   ;
   return ret_val;
  }
 }
 hw->get_link_status = 1;
 return 0;
}
int32_t
em_copper_link_postconfig(struct em_hw *hw)
{
 int32_t ret_val;
 ;;
 if (hw->mac_type >= em_82544 &&
     hw->mac_type != em_icp_xxxx) {
  em_config_collision_dist(hw);
 } else {
  ret_val = em_config_mac_to_phy(hw);
  if (ret_val) {
   ;
   return ret_val;
  }
 }
 ret_val = em_config_fc_after_link_up(hw);
 if (ret_val) {
  ;
  return ret_val;
 }
 if (hw->phy_type == em_phy_igp) {
  ret_val = em_config_dsp_after_link_change(hw, 1);
  if (ret_val) {
   ;
   return ret_val;
  }
 }
 return 0;
}
static int32_t
em_setup_copper_link(struct em_hw *hw)
{
 int32_t ret_val;
 uint16_t i;
 uint16_t phy_data;
 uint16_t reg_data;
 ;;
 switch (hw->mac_type) {
 case em_80003es2lan:
 case em_ich8lan:
 case em_ich9lan:
 case em_ich10lan:
 case em_pchlan:
 case em_pch2lan:
 case em_pch_lpt:
 case em_pch_spt:
  ret_val = em_write_kmrn_reg(hw, (((0x34) << 5) | ((4) & 0x1F)), 0xFFFF);
  if (ret_val)
   return ret_val;
  ret_val = em_read_kmrn_reg(hw, (((0x34) << 5) | ((9) & 0x1F)),
      &reg_data);
  if (ret_val)
   return ret_val;
  reg_data |= 0x3F;
  ret_val = em_write_kmrn_reg(hw, (((0x34) << 5) | ((9) & 0x1F)),
      reg_data);
  if (ret_val)
   return ret_val;
 default:
  break;
 }
 ret_val = em_copper_link_preconfig(hw);
 if (ret_val)
  return ret_val;
 switch (hw->mac_type) {
 case em_80003es2lan:
  reg_data =
      0x00000500;
  reg_data |= 0x00000010;
  ret_val = em_write_kmrn_reg(hw,
      0x00000002, reg_data);
  if (ret_val)
   return ret_val;
  break;
 default:
  break;
 }
 if (hw->phy_type == em_phy_igp ||
     hw->phy_type == em_phy_igp_3 ||
     hw->phy_type == em_phy_igp_2) {
  ret_val = em_copper_link_igp_setup(hw);
  if (ret_val)
   return ret_val;
 } else if (hw->phy_type == em_phy_m88 ||
     hw->phy_type == em_phy_bm ||
     hw->phy_type == em_phy_oem ||
     hw->phy_type == em_phy_82578) {
  ret_val = em_copper_link_mgp_setup(hw);
  if (ret_val)
   return ret_val;
 } else if (hw->phy_type == em_phy_gg82563) {
  ret_val = em_copper_link_ggp_setup(hw);
  if (ret_val)
   return ret_val;
 } else if (hw->phy_type == em_phy_82577 ||
  hw->phy_type == em_phy_82579 ||
  hw->phy_type == em_phy_i217) {
  ret_val = em_copper_link_82577_setup(hw);
  if (ret_val)
   return ret_val;
 } else if (hw->phy_type == em_phy_82580) {
  ret_val = em_copper_link_82580_setup(hw);
  if (ret_val)
   return ret_val;
 } else if (hw->phy_type == em_phy_rtl8211) {
  ret_val = em_copper_link_rtl8211_setup(hw);
  if (ret_val)
   return ret_val;
 }
 if (hw->autoneg) {
  ret_val = em_copper_link_autoneg(hw);
  if (ret_val)
   return ret_val;
 } else {
  ;
  ret_val = em_phy_force_speed_duplex(hw);
  if (ret_val) {
   ;
   return ret_val;
  }
 }
 for (i = 0; i < 10; i++) {
  ret_val = em_read_phy_reg(hw, 0x01, &phy_data);
  if (ret_val)
   return ret_val;
  ret_val = em_read_phy_reg(hw, 0x01, &phy_data);
  if (ret_val)
   return ret_val;
  hw->icp_xxxx_is_link_up = (phy_data & 0x0004) != 0;
  if (phy_data & 0x0004) {
   ret_val = em_copper_link_postconfig(hw);
   if (ret_val)
    return ret_val;
   ;
   return 0;
  }
  delay(10);
 }
 ;
 return 0;
}
static int32_t
em_configure_kmrn_for_10_100(struct em_hw *hw, uint16_t duplex)
{
 int32_t ret_val = 0;
 uint32_t tipg;
 uint16_t reg_data;
 ;;
 reg_data = 0x00000004;
 ret_val = em_write_kmrn_reg(hw, 0x00000010,
     reg_data);
 if (ret_val)
  return ret_val;
 tipg = bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00410 : 0x00410));
 tipg &= ~0x000003FF;
 tipg |= 0x00000009;
 bus_space_write_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00410 : 0x00410), tipg);
 ret_val = em_read_phy_reg(hw, (((193) << 5) | ((16) & 0x1F)), &reg_data);
 if (ret_val)
  return ret_val;
 if (duplex == 1)
  reg_data |= 0x0800;
 else
  reg_data &= ~0x0800;
 ret_val = em_write_phy_reg(hw, (((193) << 5) | ((16) & 0x1F)), reg_data);
 return ret_val;
}
static int32_t
em_configure_kmrn_for_1000(struct em_hw *hw)
{
 int32_t ret_val = 0;
 uint16_t reg_data;
 uint32_t tipg;
 ;;
 reg_data = 0x00000000;
 ret_val = em_write_kmrn_reg(hw, 0x00000010,
     reg_data);
 if (ret_val)
  return ret_val;
 tipg = bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00410 : 0x00410));
 tipg &= ~0x000003FF;
 tipg |= 0x00000008;
 bus_space_write_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00410 : 0x00410), tipg);
 ret_val = em_read_phy_reg(hw, (((193) << 5) | ((16) & 0x1F)), &reg_data);
 if (ret_val)
  return ret_val;
 reg_data &= ~0x0800;
 ret_val = em_write_phy_reg(hw, (((193) << 5) | ((16) & 0x1F)), reg_data);
 return ret_val;
}
int32_t
em_phy_setup_autoneg(struct em_hw *hw)
{
 int32_t ret_val;
 uint16_t mii_autoneg_adv_reg;
 uint16_t mii_1000t_ctrl_reg;
 ;;
 ret_val = em_read_phy_reg(hw, 0x04, &mii_autoneg_adv_reg);
 if (ret_val)
  return ret_val;
 if (hw->phy_type != em_phy_ife) {
  ret_val = em_read_phy_reg(hw, 0x09,
      &mii_1000t_ctrl_reg);
  if (ret_val)
   return ret_val;
 } else
  mii_1000t_ctrl_reg = 0;
 mii_autoneg_adv_reg &= ~0x01E0;
 mii_1000t_ctrl_reg &= ~0x0300;
 ;
 if (hw->autoneg_advertised & 0x0001) {
  ;
  mii_autoneg_adv_reg |= 0x0020;
 }
 if (hw->autoneg_advertised & 0x0002) {
  ;
  mii_autoneg_adv_reg |= 0x0040;
 }
 if (hw->autoneg_advertised & 0x0004) {
  ;
  mii_autoneg_adv_reg |= 0x0080;
 }
 if (hw->autoneg_advertised & 0x0008) {
  ;
  mii_autoneg_adv_reg |= 0x0100;
 }
 if (hw->autoneg_advertised & 0x0010) {
  ;
 }
 if (hw->autoneg_advertised & 0x0020) {
  ;
  mii_1000t_ctrl_reg |= 0x0200;
  if (hw->phy_type == em_phy_ife) {
   ;
  }
 }
 switch (hw->fc) {
 case 0:
  mii_autoneg_adv_reg &= ~(0x0800 | 0x0400);
  break;
 case 1:
  mii_autoneg_adv_reg |= (0x0800 | 0x0400);
  break;
 case 2:
  mii_autoneg_adv_reg |= 0x0800;
  mii_autoneg_adv_reg &= ~0x0400;
  break;
 case 3:
  mii_autoneg_adv_reg |= (0x0800 | 0x0400);
  break;
 default:
  ;
  return -3;
 }
 ret_val = em_write_phy_reg(hw, 0x04, mii_autoneg_adv_reg);
 if (ret_val)
  return ret_val;
 ;
 if (hw->phy_type != em_phy_ife) {
  ret_val = em_write_phy_reg(hw, 0x09,
      mii_1000t_ctrl_reg);
  if (ret_val)
   return ret_val;
 }
 return 0;
}
static int32_t
em_phy_force_speed_duplex(struct em_hw *hw)
{
 uint32_t ctrl;
 int32_t ret_val;
 uint16_t mii_ctrl_reg;
 uint16_t mii_status_reg;
 uint16_t phy_data;
 uint16_t i;
 ;;
 hw->fc = 0;
 ;
 ctrl = bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00000 : 0x00000));
 ctrl |= (0x00000800 | 0x00001000);
 ctrl &= ~(0x00000300);
 ctrl &= ~0x00000020;
 ret_val = em_read_phy_reg(hw, 0x00, &mii_ctrl_reg);
 if (ret_val)
  return ret_val;
 mii_ctrl_reg &= ~0x1000;
 if (hw->forced_speed_duplex == em_100_full ||
     hw->forced_speed_duplex == em_10_full) {
  ctrl |= 0x00000001;
  mii_ctrl_reg |= 0x0100;
  ;
 } else {
  ctrl &= ~0x00000001;
  mii_ctrl_reg &= ~0x0100;
  ;
 }
 if (hw->forced_speed_duplex == em_100_full ||
     hw->forced_speed_duplex == em_100_half) {
  ctrl |= 0x00000100;
  mii_ctrl_reg |= 0x2000;
  mii_ctrl_reg &= ~(0x0040 | 0x0000);
  ;
 } else {
  ctrl &= ~(0x00000200 | 0x00000100);
  mii_ctrl_reg |= 0x0000;
  mii_ctrl_reg &= ~(0x0040 | 0x2000);
  ;
 }
 em_config_collision_dist(hw);
 bus_space_write_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00000 : 0x00000), ctrl);
 if ((hw->phy_type == em_phy_m88) ||
     (hw->phy_type == em_phy_gg82563) ||
     (hw->phy_type == em_phy_bm) ||
     (hw->phy_type == em_phy_oem ||
     (hw->phy_type == em_phy_82578))) {
  ret_val = em_read_phy_reg(hw, 0x10,
      &phy_data);
  if (ret_val)
   return ret_val;
  phy_data &= ~0x0060;
  ret_val = em_write_phy_reg(hw, 0x10,
      phy_data);
  if (ret_val)
   return ret_val;
  ;
  mii_ctrl_reg |= 0x8000;
 }
 else if (hw->phy_type == em_phy_rtl8211) {
  ret_val = em_read_phy_reg_ex(hw, 0x10, &phy_data);
  if(ret_val) {
   printf("Unable to read RGEPHY_CR register\n"
       );
   return ret_val;
  }
  phy_data |= 0x0060;
  ret_val = em_write_phy_reg_ex(hw, 0x10, phy_data);
  if(ret_val) {
   printf("Unable to write RGEPHY_CR register\n");
   return ret_val;
  }
  mii_ctrl_reg |= 0x8000;
 }
 else if (hw->phy_type == em_phy_ife) {
  ret_val = em_read_phy_reg(hw, 0x1C, &phy_data);
  if (ret_val)
   return ret_val;
  phy_data &= ~0x0080;
  phy_data &= ~0x0040;
  ret_val = em_write_phy_reg(hw, 0x1C, phy_data);
  if (ret_val)
   return ret_val;
 } else {
  ret_val = em_read_phy_reg(hw, 0x12,
      &phy_data);
  if (ret_val)
   return ret_val;
  phy_data &= ~0x1000;
  phy_data &= ~0x2000;
  ret_val = em_write_phy_reg(hw, 0x12,
      phy_data);
  if (ret_val)
   return ret_val;
 }
 ret_val = em_write_phy_reg(hw, 0x00, mii_ctrl_reg);
 if (ret_val)
  return ret_val;
 delay(1);
 if (hw->wait_autoneg_complete) {
  ;
  mii_status_reg = 0;
  for (i = 20; i > 0; i--) {
   ret_val = em_read_phy_reg(hw, 0x01,
       &mii_status_reg);
   if (ret_val)
    return ret_val;
   ret_val = em_read_phy_reg(hw, 0x01,
       &mii_status_reg);
   if (ret_val)
    return ret_val;
   if (mii_status_reg & 0x0004)
    break;
   delay(1000*(100));
  }
  if ((i == 0) &&
      ((hw->phy_type == em_phy_m88) ||
      (hw->phy_type == em_phy_gg82563) ||
      (hw->phy_type == em_phy_bm))) {
   ret_val = em_phy_reset_dsp(hw);
   if (ret_val) {
    ;
    return ret_val;
   }
  }
  for (i = 20; i > 0; i--) {
   if (mii_status_reg & 0x0004)
    break;
   delay(1000*(100));
   ret_val = em_read_phy_reg(hw, 0x01,
       &mii_status_reg);
   if (ret_val)
    return ret_val;
   ret_val = em_read_phy_reg(hw, 0x01,
       &mii_status_reg);
   if (ret_val)
    return ret_val;
  }
 }
 if (hw->phy_type == em_phy_m88 ||
     hw->phy_type == em_phy_bm ||
     hw->phy_type == em_phy_oem) {
  ret_val = em_read_phy_reg(hw, 0x14,
      &phy_data);
  if (ret_val)
   return ret_val;
  phy_data |= 0x0070;
  ret_val = em_write_phy_reg(hw, 0x14,
      phy_data);
  if (ret_val)
   return ret_val;
  ret_val = em_read_phy_reg(hw, 0x10,
      &phy_data);
  if (ret_val)
   return ret_val;
  if (hw->phy_id == 0x01410CD0)
   phy_data &= ~0x0800;
  else
   phy_data |= 0x0800;
  ret_val = em_write_phy_reg(hw, 0x10,
      phy_data);
  if (ret_val)
   return ret_val;
  if ((hw->mac_type == em_82544 || hw->mac_type == em_82543) &&
      (!hw->autoneg) && (hw->forced_speed_duplex == em_10_full ||
      hw->forced_speed_duplex == em_10_half)) {
   ret_val = em_polarity_reversal_workaround(hw);
   if (ret_val)
    return ret_val;
  }
 } else if (hw->phy_type == em_phy_rtl8211) {
  ret_val = em_read_phy_reg_ex(hw, 0x10, &phy_data);
  if(ret_val) {
   printf("Unable to read RGEPHY_CR register\n");
   return ret_val;
  }
  phy_data &= ~0x0800;
  ret_val = em_write_phy_reg_ex(hw, 0x10, phy_data);
  if(ret_val) {
   printf("Unable to write RGEPHY_CR register\n");
   return ret_val;
  }
 } else if (hw->phy_type == em_phy_gg82563) {
  ret_val = em_read_phy_reg(hw, (((2) << 5) | ((21) & 0x1F)),
      &phy_data);
  if (ret_val)
   return ret_val;
  phy_data &= ~0x0007;
  if ((hw->forced_speed_duplex == em_10_full) ||
      (hw->forced_speed_duplex == em_10_half))
   phy_data |= 0x0004;
  else
   phy_data |= 0x0005;
  phy_data |= 0x0010;
  ret_val = em_write_phy_reg(hw, (((2) << 5) | ((21) & 0x1F)),
      phy_data);
  if (ret_val)
   return ret_val;
 }
 return 0;
}
void
em_config_collision_dist(struct em_hw *hw)
{
 uint32_t tctl, coll_dist;
 ;;
 if (hw->mac_type < em_82543)
  coll_dist = 64;
 else
  coll_dist = 63;
 tctl = bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00400 : 0x00400));
 tctl &= ~0x003ff000;
 tctl |= coll_dist << 12;
 bus_space_write_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00400 : 0x00400), tctl);
 bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00008 : 0x00008));
}
static int32_t
em_config_mac_to_phy(struct em_hw *hw)
{
 uint32_t ctrl;
 int32_t ret_val;
 uint16_t phy_data;
 ;;
 if (hw->mac_type >= em_82544
     && hw->mac_type != em_icp_xxxx)
  return 0;
 ctrl = bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00000 : 0x00000));
 ctrl |= (0x00000800 | 0x00001000);
 ctrl &= ~(0x00000300 | 0x00000080);
 ret_val = em_read_phy_reg(hw, 0x11, &phy_data);
 if (ret_val)
  return ret_val;
 if (phy_data & 0x2000)
  ctrl |= 0x00000001;
 else
  ctrl &= ~0x00000001;
 em_config_collision_dist(hw);
 if ((phy_data & 0xC000) == 0x8000)
  ctrl |= 0x00000200;
 else if ((phy_data & 0xC000) == 0x4000)
  ctrl |= 0x00000100;
 bus_space_write_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00000 : 0x00000), ctrl);
 return 0;
}
int32_t
em_force_mac_fc(struct em_hw *hw)
{
 uint32_t ctrl;
 ;;
 ctrl = bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00000 : 0x00000));
 switch (hw->fc) {
 case 0:
  ctrl &= (~(0x10000000 | 0x08000000));
  break;
 case 1:
  ctrl &= (~0x10000000);
  ctrl |= 0x08000000;
  break;
 case 2:
  ctrl &= (~0x08000000);
  ctrl |= 0x10000000;
  break;
 case 3:
  ctrl |= (0x10000000 | 0x08000000);
  break;
 default:
  ;
  return -3;
 }
 if (hw->mac_type == em_82542_rev2_0)
  ctrl &= (~0x10000000);
 bus_space_write_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00000 : 0x00000), ctrl);
 return 0;
}
 int32_t
em_config_fc_after_link_up(struct em_hw *hw)
{
 int32_t ret_val;
 uint16_t mii_status_reg;
 uint16_t mii_nway_adv_reg;
 uint16_t mii_nway_lp_ability_reg;
 uint16_t speed;
 uint16_t duplex;
 ;;
 if (((hw->media_type == em_media_type_fiber) && (hw->autoneg_failed))
     || ((hw->media_type == em_media_type_internal_serdes) &&
     (hw->autoneg_failed)) ||
     ((hw->media_type == em_media_type_copper) && (!hw->autoneg)) ||
     ((hw->media_type == em_media_type_oem) && (!hw->autoneg))) {
  ret_val = em_force_mac_fc(hw);
  if (ret_val) {
   ;
   return ret_val;
  }
 }
 if ((hw->media_type == em_media_type_copper ||
     (hw->media_type == em_media_type_oem)) &&
     hw->autoneg) {
  ret_val = em_read_phy_reg(hw, 0x01, &mii_status_reg);
  if (ret_val)
   return ret_val;
  ret_val = em_read_phy_reg(hw, 0x01, &mii_status_reg);
  if (ret_val)
   return ret_val;
  if (mii_status_reg & 0x0020) {
   ret_val = em_read_phy_reg(hw, 0x04,
       &mii_nway_adv_reg);
   if (ret_val)
    return ret_val;
   ret_val = em_read_phy_reg(hw, 0x05,
       &mii_nway_lp_ability_reg);
   if (ret_val)
    return ret_val;
   if ((mii_nway_adv_reg & 0x0400) &&
       (mii_nway_lp_ability_reg & 0x0400)) {
    if (hw->original_fc == 3) {
     hw->fc = 3;
     ;
    } else {
     hw->fc = 1;
     ;
    }
   }
   else if (!(mii_nway_adv_reg & 0x0400) &&
       (mii_nway_adv_reg & 0x0800) &&
       (mii_nway_lp_ability_reg & 0x0400) &&
       (mii_nway_lp_ability_reg & 0x0800)) {
    hw->fc = 2;
    ;
   }
   else if ((mii_nway_adv_reg & 0x0400) &&
       (mii_nway_adv_reg & 0x0800) &&
       !(mii_nway_lp_ability_reg & 0x0400) &&
       (mii_nway_lp_ability_reg & 0x0800)) {
    hw->fc = 1;
    ;
   }
   else if ((hw->original_fc == 0 ||
       hw->original_fc == 2) ||
       hw->fc_strict_ieee) {
    hw->fc = 0;
    ;
   } else {
    hw->fc = 1;
    ;
   }
   ret_val = em_get_speed_and_duplex(hw, &speed, &duplex);
   if (ret_val) {
    ;
    return ret_val;
   }
   if (duplex == 1)
    hw->fc = 0;
   ret_val = em_force_mac_fc(hw);
   if (ret_val) {
    ;
    return ret_val;
   }
  } else {
   ;
  }
 }
 return 0;
}
int32_t
em_check_for_link(struct em_hw *hw)
{
 uint32_t rxcw = 0;
 uint32_t ctrl;
 uint32_t status;
 uint32_t rctl;
 uint32_t icr;
 uint32_t signal = 0;
 int32_t ret_val;
 uint16_t phy_data;
 ;;
 uint16_t speed, duplex;
 if (hw->mac_type >= em_82575 &&
     hw->media_type != em_media_type_copper) {
  ret_val = em_get_pcs_speed_and_duplex_82575(hw, &speed,
      &duplex);
  hw->get_link_status = hw->serdes_link_down;
  return (ret_val);
 }
 ctrl = bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00000 : 0x00000));
 status = bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00008 : 0x00008));
 if ((hw->media_type == em_media_type_fiber) ||
     (hw->media_type == em_media_type_internal_serdes)) {
  rxcw = bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00180 : 0x00180));
  if (hw->media_type == em_media_type_fiber) {
   signal = (hw->mac_type > em_82544) ?
       0x00080000 : 0;
   if (status & 0x00000002)
    hw->get_link_status = 0;
  }
 }
 if ((hw->media_type == em_media_type_copper ||
     (hw->media_type == em_media_type_oem)) &&
     hw->get_link_status) {
  ret_val = em_read_phy_reg(hw, 0x01, &phy_data);
  if (ret_val)
   return ret_val;
  ret_val = em_read_phy_reg(hw, 0x01, &phy_data);
  if (ret_val)
   return ret_val;
  hw->icp_xxxx_is_link_up = (phy_data & 0x0004) != 0;
  if (hw->mac_type == em_pchlan) {
   ret_val = em_k1_gig_workaround_hv(hw,
       hw->icp_xxxx_is_link_up);
   if (ret_val)
    return ret_val;
  }
  if (phy_data & 0x0004) {
   hw->get_link_status = 0;
   if (hw->phy_type == em_phy_82578) {
    ret_val = em_link_stall_workaround_hv(hw);
    if (ret_val)
     return ret_val;
   }
   if (hw->mac_type == em_pch2lan) {
    ret_val = em_k1_workaround_lv(hw);
    if (ret_val)
     return ret_val;
   }
   if ((hw->device_id == 0x155A) ||
       (hw->device_id == 0x1559) ||
       (hw->device_id == 0x15A2) ||
       (hw->device_id == 0x15A3)) {
    ret_val = em_k1_workaround_lpt_lp(hw,
        hw->icp_xxxx_is_link_up);
    if (ret_val)
     return ret_val;
   }
   em_check_downshift(hw);
   if (hw->mac_type == em_pch2lan ||
       hw->mac_type == em_pch_lpt ||
       hw->mac_type == em_pch_spt) {
    ret_val = em_set_eee_pchlan(hw);
    if (ret_val)
     return ret_val;
   }
   if ((hw->mac_type == em_82544 ||
       hw->mac_type == em_82543) && (!hw->autoneg) &&
       (hw->forced_speed_duplex == em_10_full ||
       hw->forced_speed_duplex == em_10_half)) {
    bus_space_write_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x000D8 : 0x000D8), 0xffffffff);
    ret_val = em_polarity_reversal_workaround(hw);
    icr = bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x000C0 : 0x000C0));
    bus_space_write_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x000C8 : 0x000C8), (icr & ~0x00000004));
    bus_space_write_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x000D0 : 0x000D0), ( 0x00000080 | 0x00000001 | 0x00000010 | 0x00000008 | 0x00000040 | 0x00000004));
   }
  } else {
   em_config_dsp_after_link_change(hw, 0);
   return 0;
  }
  if (!hw->autoneg)
   return -3;
  em_config_dsp_after_link_change(hw, 1);
  if (hw->mac_type >= em_82544 && hw->mac_type != em_icp_xxxx) {
   em_config_collision_dist(hw);
  } else {
   ret_val = em_config_mac_to_phy(hw);
   if (ret_val) {
    ;
    return ret_val;
   }
  }
  ret_val = em_config_fc_after_link_up(hw);
  if (ret_val) {
   ;
   return ret_val;
  }
  if (hw->tbi_compatibility_en) {
   uint16_t speed, duplex;
   ret_val = em_get_speed_and_duplex(hw, &speed, &duplex);
   if (ret_val) {
    ;
    return ret_val;
   }
   if (speed != 1000) {
    if (hw->tbi_compatibility_on) {
     rctl = bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00100 : 0x00100));
     rctl &= ~0x00000004;
     bus_space_write_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00100 : 0x00100), rctl);
     hw->tbi_compatibility_on = 0;
    }
   } else {
    if (!hw->tbi_compatibility_on) {
     hw->tbi_compatibility_on = 1;
     rctl = bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00100 : 0x00100));
     rctl |= 0x00000004;
     bus_space_write_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00100 : 0x00100), rctl);
    }
   }
  }
 }
 else if ((((hw->media_type == em_media_type_fiber) &&
     ((ctrl & 0x00080000) == signal)) ||
     (hw->media_type == em_media_type_internal_serdes)) &&
     (!(status & 0x00000002)) && (!(rxcw & 0x20000000))) {
  if (hw->autoneg_failed == 0) {
   hw->autoneg_failed = 1;
   return 0;
  }
  ;
  bus_space_write_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00178 : 0x00178), (hw->txcw & ~0x80000000));
  ctrl = bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00000 : 0x00000));
  ctrl |= (0x00000040 | 0x00000001);
  bus_space_write_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00000 : 0x00000), ctrl);
  ret_val = em_config_fc_after_link_up(hw);
  if (ret_val) {
   ;
   return ret_val;
  }
 }
 else if (((hw->media_type == em_media_type_fiber) ||
     (hw->media_type == em_media_type_internal_serdes)) &&
     (ctrl & 0x00000040) && (rxcw & 0x20000000)) {
  ;
  bus_space_write_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00178 : 0x00178), hw->txcw);
  bus_space_write_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00000 : 0x00000), (ctrl & ~0x00000040));
  hw->serdes_link_down = 0;
 }
 else if ((hw->media_type == em_media_type_internal_serdes) &&
     !(0x80000000 & bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00178 : 0x00178)))) {
  delay(10);
  if (0x40000000 & bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00180 : 0x00180))) {
   if (!(rxcw & 0x08000000)) {
    hw->serdes_link_down = 0;
    ;
   }
  } else {
   hw->serdes_link_down = 1;
   ;
  }
 }
 if ((hw->media_type == em_media_type_internal_serdes) &&
     (0x80000000 & bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00178 : 0x00178)))) {
  hw->serdes_link_down = !(0x00000002 &
      bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00008 : 0x00008)));
 }
 return 0;
}
int32_t
em_get_pcs_speed_and_duplex_82575(struct em_hw *hw, uint16_t *speed,
    uint16_t *duplex)
{
 uint32_t pcs;
 hw->serdes_link_down = 1;
 *speed = 0;
 *duplex = 0;
 pcs = bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x0420C : 0x0420C));
 if ((pcs & 0x01) && (pcs & 0x10)) {
  hw->serdes_link_down = 0;
  if (pcs & 0x04) {
   *speed = 1000;
  } else if (pcs & 0x02) {
   *speed = 100;
  } else {
   *speed = 10;
  }
  if (pcs & 0x08) {
   *duplex = 2;
  } else {
   *duplex = 1;
  }
 }
 return (0);
}
int32_t
em_get_speed_and_duplex(struct em_hw *hw, uint16_t *speed, uint16_t *duplex)
{
 uint32_t status;
 int32_t ret_val;
 uint16_t phy_data;
 ;;
 if (hw->mac_type >= em_82575 && hw->media_type != em_media_type_copper)
  return em_get_pcs_speed_and_duplex_82575(hw, speed, duplex);
 if (hw->mac_type >= em_82543) {
  status = bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00008 : 0x00008));
  if (status & 0x00000080) {
   *speed = 1000;
   ;
  } else if (status & 0x00000040) {
   *speed = 100;
   ;
  } else {
   *speed = 10;
   ;
  }
  if (status & 0x00000001) {
   *duplex = 2;
   ;
  } else {
   *duplex = 1;
   ;
  }
 } else {
  ;
  *speed = 1000;
  *duplex = 2;
 }
 if (hw->phy_type == em_phy_igp && hw->speed_downgraded) {
  ret_val = em_read_phy_reg(hw, 0x06, &phy_data);
  if (ret_val)
   return ret_val;
  if (!(phy_data & 0x0001))
   *duplex = 1;
  else {
   ret_val = em_read_phy_reg(hw, 0x05,
       &phy_data);
   if (ret_val)
    return ret_val;
   if ((*speed == 100 &&
       !(phy_data & 0x0100)) ||
       (*speed == 10 &&
       !(phy_data & 0x0040)))
    *duplex = 1;
  }
 }
 if ((hw->mac_type == em_80003es2lan) &&
     (hw->media_type == em_media_type_copper)) {
  if (*speed == 1000)
   ret_val = em_configure_kmrn_for_1000(hw);
  else
   ret_val = em_configure_kmrn_for_10_100(hw, *duplex);
  if (ret_val)
   return ret_val;
 }
 if ((hw->mac_type == em_ich8lan) &&
     (hw->phy_type == em_phy_igp_3) &&
     (*speed == 1000)) {
  ret_val = em_kumeran_lock_loss_workaround(hw);
  if (ret_val)
   return ret_val;
 }
 return 0;
}
 int32_t
em_wait_autoneg(struct em_hw *hw)
{
 int32_t ret_val;
 uint16_t i;
 uint16_t phy_data;
 ;;
 ;
 for (i = 45; i > 0; i--) {
  ret_val = em_read_phy_reg(hw, 0x01, &phy_data);
  if (ret_val)
   return ret_val;
  ret_val = em_read_phy_reg(hw, 0x01, &phy_data);
  if (ret_val)
   return ret_val;
  if (phy_data & 0x0020) {
   return 0;
  }
  delay(1000*(100));
 }
 return 0;
}
static void
em_raise_mdi_clk(struct em_hw *hw, uint32_t *ctrl)
{
 bus_space_write_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00000 : 0x00000), (*ctrl | 0x00200000));
 bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00008 : 0x00008));
 delay(10);
}
static void
em_lower_mdi_clk(struct em_hw *hw, uint32_t *ctrl)
{
 bus_space_write_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00000 : 0x00000), (*ctrl & ~0x00200000));
 bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00008 : 0x00008));
 delay(10);
}
static void
em_shift_out_mdi_bits(struct em_hw *hw, uint32_t data, uint16_t count)
{
 uint32_t ctrl;
 uint32_t mask;
 mask = 0x01;
 mask <<= (count - 1);
 ctrl = bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00000 : 0x00000));
 ctrl |= (0x01000000 | 0x02000000);
 while (mask) {
  if (data & mask)
   ctrl |= 0x00100000;
  else
   ctrl &= ~0x00100000;
  bus_space_write_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00000 : 0x00000), ctrl);
  bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00008 : 0x00008));
  delay(10);
  em_raise_mdi_clk(hw, &ctrl);
  em_lower_mdi_clk(hw, &ctrl);
  mask = mask >> 1;
 }
}
static uint16_t
em_shift_in_mdi_bits(struct em_hw *hw)
{
 uint32_t ctrl;
 uint16_t data = 0;
 uint8_t i;
 ctrl = bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00000 : 0x00000));
 ctrl &= ~0x01000000;
 ctrl &= ~0x00100000;
 bus_space_write_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00000 : 0x00000), ctrl);
 bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00008 : 0x00008));
 em_raise_mdi_clk(hw, &ctrl);
 em_lower_mdi_clk(hw, &ctrl);
 for (data = 0, i = 0; i < 16; i++) {
  data = data << 1;
  em_raise_mdi_clk(hw, &ctrl);
  ctrl = bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00000 : 0x00000));
  if (ctrl & 0x00100000)
   data |= 1;
  em_lower_mdi_clk(hw, &ctrl);
 }
 em_raise_mdi_clk(hw, &ctrl);
 em_lower_mdi_clk(hw, &ctrl);
 return data;
}
 int32_t
em_swfw_sync_acquire(struct em_hw *hw, uint16_t mask)
{
 uint32_t swfw_sync = 0;
 uint32_t swmask = mask;
 uint32_t fwmask = mask << 16;
 int32_t timeout = 200;
 ;;
 if (hw->swfwhw_semaphore_present)
  return em_get_software_flag(hw);
 if (!hw->swfw_sync_present)
  return em_get_hw_eeprom_semaphore(hw);
 while (timeout) {
  if (em_get_hw_eeprom_semaphore(hw))
   return -13;
  swfw_sync = bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x05B5C : 0x05B5C));
  if (!(swfw_sync & (fwmask | swmask))) {
   break;
  }
  em_put_hw_eeprom_semaphore(hw);
  delay(1000*(5));
  timeout--;
 }
 if (!timeout) {
  ;
  return -13;
 }
 swfw_sync |= swmask;
 bus_space_write_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x05B5C : 0x05B5C), swfw_sync);
 em_put_hw_eeprom_semaphore(hw);
 return 0;
}
 void
em_swfw_sync_release(struct em_hw *hw, uint16_t mask)
{
 uint32_t swfw_sync;
 uint32_t swmask = mask;
 ;;
 if (hw->swfwhw_semaphore_present) {
  em_release_software_flag(hw);
  return;
 }
 if (!hw->swfw_sync_present) {
  em_put_hw_eeprom_semaphore(hw);
  return;
 }
 while (em_get_hw_eeprom_semaphore(hw) != 0);
 swfw_sync = bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x05B5C : 0x05B5C));
 swfw_sync &= ~swmask;
 bus_space_write_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x05B5C : 0x05B5C), swfw_sync);
 em_put_hw_eeprom_semaphore(hw);
}
int32_t
em_access_phy_wakeup_reg_bm(struct em_hw *hw, uint32_t reg_addr,
    uint16_t *phy_data, boolean_t read)
{
 int32_t ret_val;
 uint16_t reg64 = ((uint16_t)(((reg_addr) & 0x1F) | (((reg_addr) >> (21 - 5)) & ~0x1F)));
 uint16_t phy_reg = 0;
 hw->phy_addr = 1;
 em_write_phy_reg_ex(hw, 0x1F,
     (769 << 5));
 ret_val = em_read_phy_reg_ex(hw, 17, &phy_reg);
 if (ret_val)
  goto out;
 phy_reg &= ~((1 << 4));
 ret_val = em_write_phy_reg_ex(hw, 17, phy_reg);
 if (ret_val)
  goto out;
 ret_val = em_write_phy_reg_ex(hw, 17,
     phy_reg | (1 << 2));
 if (ret_val)
  goto out;
 ret_val = em_write_phy_reg_ex(hw, 0x1F,
     (800 << 5));
 ret_val = em_write_phy_reg_ex(hw, 0x11, reg64);
 if (ret_val)
  goto out;
 if (read)
  ret_val = em_read_phy_reg_ex(hw, 0x12,
      phy_data);
 else
  ret_val = em_write_phy_reg_ex(hw, 0x12,
      *phy_data);
 if (ret_val)
  goto out;
 em_write_phy_reg_ex(hw, 0x1F,
     (769 << 5));
 ret_val = em_write_phy_reg_ex(hw, 17, phy_reg);
 if (ret_val)
  goto out;
out:
 return ret_val;
}
int32_t
em_access_phy_debug_regs_hv(struct em_hw *hw, uint32_t reg_addr,
    uint16_t *phy_data, boolean_t read)
{
 int32_t ret_val;
 uint32_t addr_reg = 0;
 uint32_t data_reg = 0;
 addr_reg = (hw->phy_type == em_phy_82578) ?
            29 : 16;
 data_reg = addr_reg + 1;
 hw->phy_addr = 2;
 ret_val = em_write_phy_reg_ex(hw, addr_reg, (uint16_t)reg_addr & 0x3F);
 if (ret_val) {
  printf("Could not write PHY the HV address register\n");
  goto out;
 }
 if (read)
  ret_val = em_read_phy_reg_ex(hw, data_reg, phy_data);
 else
  ret_val = em_write_phy_reg_ex(hw, data_reg, *phy_data);
 if (ret_val) {
  printf("Could not read data value from HV data register\n");
  goto out;
 }
out:
 return ret_val;
}
int32_t
em_access_phy_reg_hv(struct em_hw *hw, uint32_t reg_addr, uint16_t *phy_data,
    boolean_t read)
{
 uint32_t ret_val;
 uint16_t swfw;
 uint16_t page = ((uint16_t)(((reg_addr) >> 5) & 0xFFFF));
 uint16_t reg64 = ((uint16_t)(((reg_addr) & 0x1F) | (((reg_addr) >> (21 - 5)) & ~0x1F)));
 ;;
 swfw = 0x0002;
 if (em_swfw_sync_acquire(hw, swfw))
  return -13;
 if (page == 800) {
  ret_val = em_access_phy_wakeup_reg_bm(hw, reg_addr,
      phy_data, read);
  goto release;
 }
 if (page >= 768)
  hw->phy_addr = 1;
 else
  hw->phy_addr = 2;
 if (page == 768)
  page = 0;
 if (!read &&
     (hw->phy_type == em_phy_82578) &&
     (hw->phy_revision >= 1) &&
     (hw->phy_addr == 2) &&
     ((0x1F & reg64) == 0) &&
     (*phy_data & (1 << 11))) {
  uint16_t data2 = 0x7EFF;
  ret_val = em_access_phy_debug_regs_hv(hw, (1 << 6) | 0x3,
      &data2, 0);
  if (ret_val)
   return ret_val;
 }
 if (reg_addr > 0xF) {
  ret_val = em_write_phy_reg_ex(hw, 0x1F,
      (page << 5));
  if (ret_val)
   return ret_val;
 }
 if (read)
  ret_val = em_read_phy_reg_ex(hw, 0x1F & reg64,
      phy_data);
 else
  ret_val = em_write_phy_reg_ex(hw, 0x1F & reg64,
      *phy_data);
release:
 em_swfw_sync_release(hw, swfw);
 return ret_val;
}
int32_t
em_read_phy_reg(struct em_hw *hw, uint32_t reg_addr, uint16_t *phy_data)
{
 uint32_t ret_val;
 uint16_t swfw;
 ;;
 if (hw->mac_type == em_pchlan ||
  hw->mac_type == em_pch2lan ||
  hw->mac_type == em_pch_lpt ||
  hw->mac_type == em_pch_spt)
  return (em_access_phy_reg_hv(hw, reg_addr, phy_data, 1));
 if (((hw->mac_type == em_80003es2lan) || (hw->mac_type == em_82575)) &&
     (bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00008 : 0x00008)) & 0x00000004)) {
  swfw = 0x0004;
 } else {
  swfw = 0x0002;
 }
 if (em_swfw_sync_acquire(hw, swfw))
  return -13;
 if ((hw->phy_type == em_phy_igp ||
     hw->phy_type == em_phy_igp_3 ||
     hw->phy_type == em_phy_igp_2) &&
     (reg_addr > 0xF)) {
  ret_val = em_write_phy_reg_ex(hw, 0x1F,
      (uint16_t) reg_addr);
  if (ret_val) {
   em_swfw_sync_release(hw, swfw);
   return ret_val;
  }
 } else if (hw->phy_type == em_phy_gg82563) {
  if (((reg_addr & 0x1F) > 0xF) ||
      (hw->mac_type == em_80003es2lan)) {
   if ((reg_addr & 0x1F) <
       30) {
    ret_val = em_write_phy_reg_ex(hw,
        (((0) << 5) | ((22) & 0x1F)),
        (uint16_t) ((uint16_t) reg_addr >>
        5));
   } else {
    ret_val = em_write_phy_reg_ex(hw,
        (((0) << 5) | ((29) & 0x1F)),
        (uint16_t) ((uint16_t) reg_addr >>
        5));
   }
   if (ret_val) {
    em_swfw_sync_release(hw, swfw);
    return ret_val;
   }
  }
 } else if ((hw->phy_type == em_phy_bm) && (hw->phy_revision == 1)) {
  if (reg_addr > 0xF) {
   ret_val = em_write_phy_reg_ex(hw, 22,
       (uint16_t) ((uint16_t) reg_addr >>
       5));
   if (ret_val)
    return ret_val;
  }
 }
 ret_val = em_read_phy_reg_ex(hw, 0x1F & reg_addr,
     phy_data);
 em_swfw_sync_release(hw, swfw);
 return ret_val;
}
 int32_t
em_read_phy_reg_ex(struct em_hw *hw, uint32_t reg_addr, uint16_t *phy_data)
{
 uint32_t i;
 uint32_t mdic = 0;
 ;;
 if (reg_addr > 0x1F) {
  ;
  return -4;
 }
 if (hw->mac_type == em_icp_xxxx) {
  *phy_data = gcu_miibus_readreg(hw, hw->icp_xxxx_port_num,
      reg_addr);
  return 0;
 }
 if (hw->mac_type > em_82543) {
  mdic = ((reg_addr << 16) |
      (hw->phy_addr << 21) |
      (0x08000000));
  bus_space_write_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00020 : 0x00020), mdic);
  for (i = 0; i < 1960; i++) {
   delay(50);
   mdic = bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00020 : 0x00020));
   if (mdic & 0x10000000)
    break;
  }
  if (!(mdic & 0x10000000)) {
   ;
   return -2;
  }
  if (mdic & 0x40000000) {
   ;
   return -2;
  }
  *phy_data = (uint16_t) mdic;
  if (hw->mac_type == em_pch2lan || hw->mac_type == em_pch_lpt || hw->mac_type == em_pch_spt)
   delay(100);
 } else {
  em_shift_out_mdi_bits(hw, 0xFFFFFFFF, 32);
  mdic = ((reg_addr) | (hw->phy_addr << 5) |
      (0x02 << 10) | (0x01 << 12));
  em_shift_out_mdi_bits(hw, mdic, 14);
  *phy_data = em_shift_in_mdi_bits(hw);
 }
 return 0;
}
int32_t
em_write_phy_reg(struct em_hw *hw, uint32_t reg_addr, uint16_t phy_data)
{
 uint32_t ret_val;
 ;;
 if (hw->mac_type == em_pchlan ||
  hw->mac_type == em_pch2lan ||
  hw->mac_type == em_pch_lpt ||
  hw->mac_type == em_pch_spt)
  return (em_access_phy_reg_hv(hw, reg_addr, &phy_data, 0));
 if (em_swfw_sync_acquire(hw, hw->swfw))
  return -13;
 if ((hw->phy_type == em_phy_igp ||
     hw->phy_type == em_phy_igp_3 ||
     hw->phy_type == em_phy_igp_2) &&
     (reg_addr > 0xF)) {
  ret_val = em_write_phy_reg_ex(hw, 0x1F,
      (uint16_t) reg_addr);
  if (ret_val) {
   em_swfw_sync_release(hw, hw->swfw);
   return ret_val;
  }
 } else if (hw->phy_type == em_phy_gg82563) {
  if (((reg_addr & 0x1F) > 0xF) ||
      (hw->mac_type == em_80003es2lan)) {
   if ((reg_addr & 0x1F) <
       30) {
    ret_val = em_write_phy_reg_ex(hw,
        (((0) << 5) | ((22) & 0x1F)),
        (uint16_t) ((uint16_t) reg_addr >>
        5));
   } else {
    ret_val = em_write_phy_reg_ex(hw,
        (((0) << 5) | ((29) & 0x1F)),
        (uint16_t) ((uint16_t) reg_addr >>
        5));
   }
   if (ret_val) {
    em_swfw_sync_release(hw, hw->swfw);
    return ret_val;
   }
  }
 } else if ((hw->phy_type == em_phy_bm) && (hw->phy_revision == 1)) {
  if (reg_addr > 0xF) {
   ret_val = em_write_phy_reg_ex(hw, 22,
       (uint16_t) ((uint16_t) reg_addr >>
       5));
   if (ret_val)
    return ret_val;
  }
 }
 ret_val = em_write_phy_reg_ex(hw, 0x1F & reg_addr,
     phy_data);
 em_swfw_sync_release(hw, hw->swfw);
 return ret_val;
}
 int32_t
em_write_phy_reg_ex(struct em_hw *hw, uint32_t reg_addr, uint16_t phy_data)
{
 uint32_t i;
 uint32_t mdic = 0;
 ;;
 if (reg_addr > 0x1F) {
  ;
  return -4;
 }
 if (hw->mac_type == em_icp_xxxx) {
  gcu_miibus_writereg(hw, hw->icp_xxxx_port_num,
      reg_addr, phy_data);
  return 0;
 }
 if (hw->mac_type > em_82543) {
  mdic = (((uint32_t) phy_data) |
   (reg_addr << 16) |
   (hw->phy_addr << 21) |
   (0x04000000));
  bus_space_write_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00020 : 0x00020), mdic);
  for (i = 0; i < 641; i++) {
   delay(5);
   mdic = bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00020 : 0x00020));
   if (mdic & 0x10000000)
    break;
  }
  if (!(mdic & 0x10000000)) {
   ;
   return -2;
  }
  if (hw->mac_type == em_pch2lan || hw->mac_type == em_pch_lpt || hw->mac_type == em_pch_spt)
   delay(100);
 } else {
  em_shift_out_mdi_bits(hw, 0xFFFFFFFF, 32);
  mdic = ((0x02) | (reg_addr << 2) |
      (hw->phy_addr << 7) | (0x01 << 12) |
      (0x01 << 14));
  mdic <<= 16;
  mdic |= (uint32_t) phy_data;
  em_shift_out_mdi_bits(hw, mdic, 32);
 }
 return 0;
}
 int32_t
em_read_kmrn_reg(struct em_hw *hw, uint32_t reg_addr, uint16_t *data)
{
 uint32_t reg_val;
 ;;
 if (em_swfw_sync_acquire(hw, hw->swfw))
  return -13;
 reg_val = ((reg_addr << 16) &
     0x001F0000) |
     0x00200000;
 bus_space_write_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00034 : 0x00034), reg_val);
 delay(2);
 reg_val = bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00034 : 0x00034));
 *data = (uint16_t) reg_val;
 em_swfw_sync_release(hw, hw->swfw);
 return 0;
}
 int32_t
em_write_kmrn_reg(struct em_hw *hw, uint32_t reg_addr, uint16_t data)
{
 uint32_t reg_val;
 ;;
 if (em_swfw_sync_acquire(hw, hw->swfw))
  return -13;
 reg_val = ((reg_addr << 16) &
     0x001F0000) | data;
 bus_space_write_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00034 : 0x00034), reg_val);
 delay(2);
 em_swfw_sync_release(hw, hw->swfw);
 return 0;
}
int32_t
em_phy_hw_reset(struct em_hw *hw)
{
 uint32_t ctrl, ctrl_ext;
 uint32_t led_ctrl;
 int32_t ret_val;
 ;;
 ret_val = em_check_phy_reset_block(hw);
 if (ret_val)
  return 0;
 ;
 if (hw->mac_type > em_82543 && hw->mac_type != em_icp_xxxx) {
  if (em_swfw_sync_acquire(hw, hw->swfw)) {
   ;
   return -13;
  }
  ctrl = bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00000 : 0x00000));
  bus_space_write_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00000 : 0x00000), ctrl | 0x80000000);
  bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00008 : 0x00008));
  if (hw->mac_type < em_82571)
   delay(1000*(10));
  else
   delay(100);
  bus_space_write_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00000 : 0x00000), ctrl);
  bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00008 : 0x00008));
  if (hw->mac_type >= em_82571)
   delay(1000*(10));
  em_swfw_sync_release(hw, hw->swfw);
 } else {
  ctrl_ext = bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00018 : 0x00018));
  ctrl_ext |= 0x00000100;
  ctrl_ext &= ~0x00000010;
  bus_space_write_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00018 : 0x00018), ctrl_ext);
  bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00008 : 0x00008));
  delay(1000*(10));
  ctrl_ext |= 0x00000010;
  bus_space_write_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00018 : 0x00018), ctrl_ext);
  bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00008 : 0x00008));
 }
 delay(150);
 if ((hw->mac_type == em_82541) || (hw->mac_type == em_82547)) {
  led_ctrl = bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00E00 : 0x00E00));
  led_ctrl &= 0xFFFFF0FF;
  led_ctrl |= (0x0300 | 0x07000000);
  bus_space_write_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00E00 : 0x00E00), led_ctrl);
 }
 ret_val = em_get_phy_cfg_done(hw);
 if (ret_val != 0)
  return ret_val;
 em_release_software_semaphore(hw);
 if ((hw->mac_type == em_ich8lan) && (hw->phy_type == em_phy_igp_3))
  ret_val = em_init_lcd_from_nvm(hw);
 return ret_val;
}
int32_t
em_oem_bits_config_pchlan(struct em_hw *hw, boolean_t d0_state)
{
 int32_t ret_val = 0;
 uint32_t mac_reg;
 uint16_t oem_reg;
 uint16_t swfw = 0x0002;
 if (hw->mac_type < em_pchlan)
  return ret_val;
 ret_val = em_swfw_sync_acquire(hw, swfw);
 if (ret_val)
  return ret_val;
 if (hw->mac_type == em_pchlan) {
  mac_reg = bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00F00 : 0x00F00));
  if (mac_reg & 0x00000008)
   goto out;
 }
 mac_reg = bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00028 : 0x00028));
 if (!(mac_reg & (1 << 27)))
  goto out;
 mac_reg = bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00F10 : 0x00F10));
 ret_val = em_read_phy_reg(hw, (((768) << 5) | ((25) & 0x1F)), &oem_reg);
 if (ret_val)
  goto out;
 oem_reg &= ~(0x0040 | 0x0004);
 if (d0_state) {
  if (mac_reg & 0x00000040)
   oem_reg |= 0x0040;
  if (mac_reg & 0x00000002)
   oem_reg |= 0x0004;
  if (!em_check_phy_reset_block(hw))
   oem_reg |= 0x0400;
 } else {
  if (mac_reg & (0x00000040 |
      0x00000008))
   oem_reg |= 0x0040;
  if (mac_reg & (0x00000002 |
      0x00000004))
   oem_reg |= 0x0004;
 }
 ret_val = em_write_phy_reg(hw, (((768) << 5) | ((25) & 0x1F)), oem_reg);
out:
 em_swfw_sync_release(hw, swfw);
 return ret_val;
}
int32_t
em_phy_reset(struct em_hw *hw)
{
 int32_t ret_val;
 uint16_t phy_data;
 ;;
 ret_val = em_check_phy_reset_block(hw);
 if (ret_val)
  return 0;
 switch (hw->phy_type) {
 case em_phy_igp:
 case em_phy_igp_2:
 case em_phy_igp_3:
 case em_phy_ife:
  ret_val = em_phy_hw_reset(hw);
  if (ret_val)
   return ret_val;
  break;
 default:
  ret_val = em_read_phy_reg(hw, 0x00, &phy_data);
  if (ret_val)
   return ret_val;
  phy_data |= 0x8000;
  ret_val = em_write_phy_reg(hw, 0x00, phy_data);
  if (ret_val)
   return ret_val;
  delay(1);
  break;
 }
 delay(1000*(10));
 if (hw->phy_type == em_phy_igp || hw->phy_type == em_phy_igp_2)
  em_phy_init_script(hw);
 if (hw->mac_type == em_pchlan) {
  ret_val = em_hv_phy_workarounds_ich8lan(hw);
  if (ret_val)
   return ret_val;
 } else if (hw->mac_type == em_pch2lan) {
  ret_val = em_lv_phy_workarounds_ich8lan(hw);
  if (ret_val)
   return ret_val;
 }
 if (hw->mac_type >= em_pchlan) {
  ret_val = em_oem_bits_config_pchlan(hw, 1);
  if (ret_val)
   return ret_val;
 }
 if ((hw->mac_type == em_pch2lan) &&
     !(bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x05B54 : 0x05B54)) & 0x00008000)) {
  delay(1000*(10));
  em_gate_hw_phy_config_ich8lan(hw, 0);
 }
 if (hw->phy_id == 0x01410DD0) {
  ret_val = em_initialize_M88E1512_phy(hw);
  if (ret_val)
   return ret_val;
 }
 return 0;
}
 int32_t
em_kumeran_lock_loss_workaround(struct em_hw *hw)
{
 int32_t ret_val;
 int32_t reg64;
 int32_t cnt;
 uint16_t phy_data;
 if (hw->kmrn_lock_loss_workaround_disabled)
  return 0;
 ret_val = em_read_phy_reg(hw, 0x01, &phy_data);
 ret_val = em_read_phy_reg(hw, 0x01, &phy_data);
 if (phy_data & 0x0004) {
  for (cnt = 0; cnt < 10; cnt++) {
   ret_val = em_read_phy_reg(hw, (((770) << 5) | ((19) & 0x1F)),
       &phy_data);
   if (ret_val)
    return ret_val;
   ret_val = em_read_phy_reg(hw, (((770) << 5) | ((19) & 0x1F)), &phy_data);
   if (ret_val)
    return ret_val;
   if (!(phy_data & 0x0002))
    return 0;
   em_phy_hw_reset(hw);
   delay(1000*(5));
  }
  reg64 = bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00F10 : 0x00F10));
  bus_space_write_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00F10 : 0x00F10), reg64 | 0x00000040 | 0x00000008);
  return 2;
 }
 return 0;
}
 int32_t
em_match_gig_phy(struct em_hw *hw)
{
 int32_t phy_init_status, ret_val;
 uint16_t phy_id_high, phy_id_low;
 boolean_t match = 0;
 ;;
 ret_val = em_read_phy_reg(hw, 0x02, &phy_id_high);
 if (ret_val)
  return ret_val;
 hw->phy_id = (uint32_t) (phy_id_high << 16);
 delay(20);
 ret_val = em_read_phy_reg(hw, 0x03, &phy_id_low);
 if (ret_val)
  return ret_val;
 hw->phy_id |= (uint32_t) (phy_id_low & 0xFFFFFFF0);
 hw->phy_revision = (uint32_t) phy_id_low & ~0xFFFFFFF0;
 switch (hw->mac_type) {
 case em_82543:
  if (hw->phy_id == 0x01410C50)
   match = 1;
  break;
 case em_82544:
  if (hw->phy_id == 0x01410C30)
   match = 1;
  break;
 case em_82540:
 case em_82545:
 case em_82545_rev_3:
 case em_82546:
 case em_82546_rev_3:
  if (hw->phy_id == 0x01410C20)
   match = 1;
  break;
 case em_82541:
 case em_82541_rev_2:
 case em_82547:
 case em_82547_rev_2:
  if (hw->phy_id == 0x02A80380)
   match = 1;
  break;
 case em_82573:
  if (hw->phy_id == 0x01410CC0)
   match = 1;
  break;
 case em_82574:
  if (hw->phy_id == 0x01410CB0)
   match = 1;
  break;
 case em_82575:
  if (hw->phy_id == 0x01410C50)
   match = 1;
  if (hw->phy_id == 0x02A80380)
   match = 1;
  if (hw->phy_id == 0x02A80390)
   match = 1;
  break;
 case em_82580:
 case em_i210:
 case em_i350:
  if (hw->phy_id == 0x015403A0 ||
      hw->phy_id == 0x01410C00 ||
      hw->phy_id == 0x01410DC0 ||
      hw->phy_id == 0x015403B0 ||
      hw->phy_id == 0x01410C90 ||
      hw->phy_id == 0x01410EA0 ||
      hw->phy_id == 0x01410DD0) {
   uint32_t mdic;
   mdic = bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, 0x00E04);
   mdic &= 0x03E00000;
   hw->phy_addr = mdic >> 21;
   ;
   match = 1;
  }
  break;
 case em_80003es2lan:
  if (hw->phy_id == 0x01410CA0)
   match = 1;
  break;
 case em_ich8lan:
 case em_ich9lan:
 case em_ich10lan:
 case em_pchlan:
 case em_pch2lan:
  if (hw->phy_id == 0x02A80390)
   match = 1;
  if (hw->phy_id == 0x02A80330)
   match = 1;
  if (hw->phy_id == 0x02A80320)
   match = 1;
  if (hw->phy_id == 0x02A80310)
   match = 1;
  if (hw->phy_id == 0x01410CB0)
   match = 1;
  if (hw->phy_id == 0x01540050)
   match = 1;
  if (hw->phy_id == 0x004DD040)
   match = 1;
  if (hw->phy_id == 0x01540090)
   match = 1;
  break;
 case em_pch_lpt:
 case em_pch_spt:
  if (hw->phy_id == 0x015400A0)
   match = 1;
  break;
 case em_icp_xxxx:
  if (hw->phy_id == 0x01410CD0)
   match = 1;
  if (hw->phy_id == 0x001CC912)
   match = 1;
  break;
 default:
  ;
  return -3;
 }
 phy_init_status = em_set_phy_type(hw);
 if ((match) && (phy_init_status == 0)) {
  ;
  return 0;
 }
 ;
 return -2;
}
 int32_t
em_detect_gig_phy(struct em_hw *hw)
{
 int32_t ret_val;
 ;;
 if (hw->phy_id != 0)
  return 0;
 if (hw->mac_type != em_icp_xxxx)
  hw->phy_addr = 1;
 else
  hw->phy_addr = 0;
 if (hw->mac_type == em_82571 ||
     hw->mac_type == em_82572) {
  hw->phy_id = 0x02A80380;
  hw->phy_type = em_phy_igp_2;
  return 0;
 }
 if ((hw->media_type == em_media_type_fiber) &&
     (hw->mac_type == em_82542_rev2_0 ||
     hw->mac_type == em_82542_rev2_1 ||
     hw->mac_type == em_82543 ||
     hw->mac_type == em_82573 ||
     hw->mac_type == em_82574 ||
     hw->mac_type == em_80003es2lan)) {
  hw->phy_type = em_phy_undefined;
  return 0;
 }
 if ((hw->media_type == em_media_type_internal_serdes ||
     hw->media_type == em_media_type_fiber) &&
     hw->mac_type >= em_82575) {
  hw->phy_type = em_phy_undefined;
  return 0;
 }
 if (hw->mac_type <= em_82543) {
  ret_val = em_phy_hw_reset(hw);
  if (ret_val)
   return ret_val;
 }
 if (hw->mac_type == em_80003es2lan)
  hw->phy_type = em_phy_gg82563;
 if (hw->mac_type == em_82580 || hw->mac_type == em_i210 ||
     hw->mac_type == em_i350) {
  uint32_t ctrl_ext = bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, 0x00018);
  bus_space_write_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, 0x00018, ctrl_ext & ~0x00000080);
  delay(300);
 }
 for (hw->phy_addr = 1; (hw->phy_addr < 4); hw->phy_addr++) {
  ret_val = em_match_gig_phy(hw);
  if (ret_val == 0)
   return 0;
 }
 return -2;
}
static int32_t
em_phy_reset_dsp(struct em_hw *hw)
{
 int32_t ret_val;
 ;;
 do {
  if (hw->phy_type != em_phy_gg82563) {
   ret_val = em_write_phy_reg(hw, 29, 0x001d);
   if (ret_val)
    break;
  }
  ret_val = em_write_phy_reg(hw, 30, 0x00c1);
  if (ret_val)
   break;
  ret_val = em_write_phy_reg(hw, 30, 0x0000);
  if (ret_val)
   break;
  ret_val = 0;
 } while (0);
 return ret_val;
}
int32_t
em_init_eeprom_params(struct em_hw *hw)
{
 struct em_eeprom_info *eeprom = &hw->eeprom;
 uint32_t eecd = bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00010 : 0x00010));
 int32_t ret_val = 0;
 uint16_t eeprom_size;
 ;;
 switch (hw->mac_type) {
 case em_82542_rev2_0:
 case em_82542_rev2_1:
 case em_82543:
 case em_82544:
  eeprom->type = em_eeprom_microwire;
  eeprom->word_size = 64;
  eeprom->opcode_bits = 3;
  eeprom->address_bits = 6;
  eeprom->delay_usec = 50;
  eeprom->use_eerd = 0;
  eeprom->use_eewr = 0;
  break;
 case em_82540:
 case em_82545:
 case em_82545_rev_3:
 case em_icp_xxxx:
 case em_82546:
 case em_82546_rev_3:
  eeprom->type = em_eeprom_microwire;
  eeprom->opcode_bits = 3;
  eeprom->delay_usec = 50;
  if (eecd & 0x00000200) {
   eeprom->word_size = 256;
   eeprom->address_bits = 8;
  } else {
   eeprom->word_size = 64;
   eeprom->address_bits = 6;
  }
  eeprom->use_eerd = 0;
  eeprom->use_eewr = 0;
  break;
 case em_82541:
 case em_82541_rev_2:
 case em_82547:
 case em_82547_rev_2:
  if (eecd & 0x00002000) {
   eeprom->type = em_eeprom_spi;
   eeprom->opcode_bits = 8;
   eeprom->delay_usec = 1;
   if (eecd & 0x00000400) {
    eeprom->page_size = 32;
    eeprom->address_bits = 16;
   } else {
    eeprom->page_size = 8;
    eeprom->address_bits = 8;
   }
  } else {
   eeprom->type = em_eeprom_microwire;
   eeprom->opcode_bits = 3;
   eeprom->delay_usec = 50;
   if (eecd & 0x00000400) {
    eeprom->word_size = 256;
    eeprom->address_bits = 8;
   } else {
    eeprom->word_size = 64;
    eeprom->address_bits = 6;
   }
  }
  eeprom->use_eerd = 0;
  eeprom->use_eewr = 0;
  break;
 case em_82571:
 case em_82572:
  eeprom->type = em_eeprom_spi;
  eeprom->opcode_bits = 8;
  eeprom->delay_usec = 1;
  if (eecd & 0x00000400) {
   eeprom->page_size = 32;
   eeprom->address_bits = 16;
  } else {
   eeprom->page_size = 8;
   eeprom->address_bits = 8;
  }
  eeprom->use_eerd = 0;
  eeprom->use_eewr = 0;
  break;
 case em_82573:
 case em_82574:
 case em_82575:
 case em_82580:
 case em_i210:
 case em_i350:
  eeprom->type = em_eeprom_spi;
  eeprom->opcode_bits = 8;
  eeprom->delay_usec = 1;
  if (eecd & 0x00000400) {
   eeprom->page_size = 32;
   eeprom->address_bits = 16;
  } else {
   eeprom->page_size = 8;
   eeprom->address_bits = 8;
  }
  eeprom->use_eerd = 1;
  eeprom->use_eewr = 1;
  if (em_is_onboard_nvm_eeprom(hw) == 0) {
   eeprom->type = em_eeprom_flash;
   eeprom->word_size = 2048;
   eecd &= ~0x00100000;
   bus_space_write_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00010 : 0x00010), eecd);
  }
  if (em_get_flash_presence_i210(hw) == 0) {
   eeprom->type = em_eeprom_invm;
   eeprom->word_size = 64;
   eeprom->use_eerd = 0;
   eeprom->use_eewr = 0;
  }
  break;
 case em_80003es2lan:
  eeprom->type = em_eeprom_spi;
  eeprom->opcode_bits = 8;
  eeprom->delay_usec = 1;
  if (eecd & 0x00000400) {
   eeprom->page_size = 32;
   eeprom->address_bits = 16;
  } else {
   eeprom->page_size = 8;
   eeprom->address_bits = 8;
  }
  eeprom->use_eerd = 1;
  eeprom->use_eewr = 0;
  break;
 case em_ich8lan:
 case em_ich9lan:
 case em_ich10lan:
 case em_pchlan:
 case em_pch2lan:
 case em_pch_lpt:
  {
  int32_t i = 0;
  uint32_t flash_size =
      bus_space_read_4(((struct em_osdep *)(hw)->back)->flash_bus_space_tag, ((struct em_osdep *)(hw)->back)->flash_bus_space_handle, ((struct em_osdep *)(hw)->back)->em_flashoffset + 0x0000);
   eeprom->type = em_eeprom_ich8;
   eeprom->use_eerd = 0;
   eeprom->use_eewr = 0;
   eeprom->word_size = 2048;
   if (hw->eeprom_shadow_ram != ((void *)0)) {
    for (i = 0; i < 2048; i++) {
     hw->eeprom_shadow_ram[i].modified =
         0;
     hw->eeprom_shadow_ram[i].eeprom_word =
         0xFFFF;
    }
   }
   hw->flash_base_addr = (flash_size &
       0x1FFF) * 4096;
   hw->flash_bank_size = ((flash_size >> 16) &
       0x1FFF) + 1;
   hw->flash_bank_size -= (flash_size &
       0x1FFF);
   hw->flash_bank_size *= 4096;
   hw->flash_bank_size /= 2 * sizeof(uint16_t);
   break;
  }
 case em_pch_spt:
  {
   int32_t i = 0;
   uint32_t flash_size = bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, 0xc);
   eeprom->type = em_eeprom_ich8;
   eeprom->use_eerd = 0;
   eeprom->use_eewr = 0;
   eeprom->word_size = 2048;
   if (hw->eeprom_shadow_ram != ((void *)0)) {
    for (i = 0; i < 2048; i++) {
     hw->eeprom_shadow_ram[i].modified =
         0;
     hw->eeprom_shadow_ram[i].eeprom_word =
         0xFFFF;
    }
   }
   hw->flash_base_addr = 0;
   flash_size = ((flash_size >> 1) & 0x1f) + 1;
   flash_size *= 4096;
   hw->flash_bank_size = flash_size / 4;
  }
  break;
 default:
  break;
 }
 if (eeprom->type == em_eeprom_spi) {
  if (hw->mac_type <= em_82547_rev_2) {
   eeprom->word_size = 64;
   ret_val = em_read_eeprom(hw, 0x0012, 1,
       &eeprom_size);
   if (ret_val)
    return ret_val;
   eeprom_size = (eeprom_size & 0x1C00) >>
       10;
   if (eeprom_size)
    eeprom_size++;
  } else {
   eeprom_size = (uint16_t) (
       (eecd & 0x00007800) >>
       11);
  }
  if (eeprom_size + 6 >
      14) {
   eeprom->word_size = 1 << 14;
  } else {
   eeprom->word_size = 1 <<
       (eeprom_size + 6);
  }
 }
 return ret_val;
}
static void
em_raise_ee_clk(struct em_hw *hw, uint32_t *eecd)
{
 *eecd = *eecd | 0x00000001;
 bus_space_write_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00010 : 0x00010), *eecd);
 bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00008 : 0x00008));
 delay(hw->eeprom.delay_usec);
}
static void
em_lower_ee_clk(struct em_hw *hw, uint32_t *eecd)
{
 *eecd = *eecd & ~0x00000001;
 bus_space_write_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00010 : 0x00010), *eecd);
 bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00008 : 0x00008));
 delay(hw->eeprom.delay_usec);
}
static void
em_shift_out_ee_bits(struct em_hw *hw, uint16_t data, uint16_t count)
{
 struct em_eeprom_info *eeprom = &hw->eeprom;
 uint32_t eecd;
 uint32_t mask;
 mask = 0x01 << (count - 1);
 eecd = bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00010 : 0x00010));
 if (eeprom->type == em_eeprom_microwire) {
  eecd &= ~0x00000008;
 } else if (eeprom->type == em_eeprom_spi) {
  eecd |= 0x00000008;
 }
 do {
  eecd &= ~0x00000004;
  if (data & mask)
   eecd |= 0x00000004;
  bus_space_write_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00010 : 0x00010), eecd);
  bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00008 : 0x00008));
  delay(eeprom->delay_usec);
  em_raise_ee_clk(hw, &eecd);
  em_lower_ee_clk(hw, &eecd);
  mask = mask >> 1;
 } while (mask);
 eecd &= ~0x00000004;
 bus_space_write_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00010 : 0x00010), eecd);
}
static uint16_t
em_shift_in_ee_bits(struct em_hw *hw, uint16_t count)
{
 uint32_t eecd;
 uint32_t i;
 uint16_t data;
 eecd = bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00010 : 0x00010));
 eecd &= ~(0x00000008 | 0x00000004);
 data = 0;
 for (i = 0; i < count; i++) {
  data = data << 1;
  em_raise_ee_clk(hw, &eecd);
  eecd = bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00010 : 0x00010));
  eecd &= ~(0x00000004);
  if (eecd & 0x00000008)
   data |= 1;
  em_lower_ee_clk(hw, &eecd);
 }
 return data;
}
static int32_t
em_acquire_eeprom(struct em_hw *hw)
{
 struct em_eeprom_info *eeprom = &hw->eeprom;
 uint32_t eecd, i = 0;
 ;;
 if (em_swfw_sync_acquire(hw, 0x0001))
  return -13;
 eecd = bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00010 : 0x00010));
 if ((hw->mac_type != em_82573) && (hw->mac_type != em_82574)) {
  if (hw->mac_type > em_82544) {
   eecd |= 0x00000040;
   bus_space_write_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00010 : 0x00010), eecd);
   eecd = bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00010 : 0x00010));
   while ((!(eecd & 0x00000080)) &&
       (i < 1000)) {
    i++;
    delay(5);
    eecd = bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00010 : 0x00010));
   }
   if (!(eecd & 0x00000080)) {
    eecd &= ~0x00000040;
    bus_space_write_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00010 : 0x00010), eecd);
    ;
    em_swfw_sync_release(hw, 0x0001);
    return -1;
   }
  }
 }
 if (eeprom->type == em_eeprom_microwire) {
  eecd &= ~(0x00000004 | 0x00000001);
  bus_space_write_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00010 : 0x00010), eecd);
  eecd |= 0x00000002;
  bus_space_write_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00010 : 0x00010), eecd);
 } else if (eeprom->type == em_eeprom_spi) {
  eecd &= ~(0x00000002 | 0x00000001);
  bus_space_write_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00010 : 0x00010), eecd);
  delay(1);
 }
 return 0;
}
static void
em_standby_eeprom(struct em_hw *hw)
{
 struct em_eeprom_info *eeprom = &hw->eeprom;
 uint32_t eecd;
 eecd = bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00010 : 0x00010));
 if (eeprom->type == em_eeprom_microwire) {
  eecd &= ~(0x00000002 | 0x00000001);
  bus_space_write_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00010 : 0x00010), eecd);
  bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00008 : 0x00008));
  delay(eeprom->delay_usec);
  eecd |= 0x00000001;
  bus_space_write_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00010 : 0x00010), eecd);
  bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00008 : 0x00008));
  delay(eeprom->delay_usec);
  eecd |= 0x00000002;
  bus_space_write_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00010 : 0x00010), eecd);
  bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00008 : 0x00008));
  delay(eeprom->delay_usec);
  eecd &= ~0x00000001;
  bus_space_write_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00010 : 0x00010), eecd);
  bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00008 : 0x00008));
  delay(eeprom->delay_usec);
 } else if (eeprom->type == em_eeprom_spi) {
  eecd |= 0x00000002;
  bus_space_write_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00010 : 0x00010), eecd);
  bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00008 : 0x00008));
  delay(eeprom->delay_usec);
  eecd &= ~0x00000002;
  bus_space_write_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00010 : 0x00010), eecd);
  bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00008 : 0x00008));
  delay(eeprom->delay_usec);
 }
}
static void
em_release_eeprom(struct em_hw *hw)
{
 uint32_t eecd;
 ;;
 eecd = bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00010 : 0x00010));
 if (hw->eeprom.type == em_eeprom_spi) {
  eecd |= 0x00000002;
  eecd &= ~0x00000001;
  bus_space_write_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00010 : 0x00010), eecd);
  delay(hw->eeprom.delay_usec);
 } else if (hw->eeprom.type == em_eeprom_microwire) {
  eecd &= ~(0x00000002 | 0x00000004);
  bus_space_write_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00010 : 0x00010), eecd);
  eecd |= 0x00000001;
  bus_space_write_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00010 : 0x00010), eecd);
  bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00008 : 0x00008));
  delay(hw->eeprom.delay_usec);
  eecd &= ~0x00000001;
  bus_space_write_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00010 : 0x00010), eecd);
  bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00008 : 0x00008));
  delay(hw->eeprom.delay_usec);
 }
 if (hw->mac_type > em_82544) {
  eecd &= ~0x00000040;
  bus_space_write_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00010 : 0x00010), eecd);
 }
 em_swfw_sync_release(hw, 0x0001);
}
 int32_t
em_spi_eeprom_ready(struct em_hw *hw)
{
 uint16_t retry_count = 0;
 uint8_t spi_stat_reg;
 ;;
 retry_count = 0;
 do {
  em_shift_out_ee_bits(hw, 0x05,
      hw->eeprom.opcode_bits);
  spi_stat_reg = (uint8_t) em_shift_in_ee_bits(hw, 8);
  if (!(spi_stat_reg & 0x01))
   break;
  delay(5);
  retry_count += 5;
  em_standby_eeprom(hw);
 } while (retry_count < 5000);
 if (retry_count >= 5000) {
  ;
  return -1;
 }
 return 0;
}
int32_t
em_read_eeprom(struct em_hw *hw, uint16_t offset, uint16_t words,
    uint16_t *data)
{
 struct em_eeprom_info *eeprom = &hw->eeprom;
 uint32_t i = 0;
 ;;
 if (eeprom->word_size == 0)
  em_init_eeprom_params(hw);
 if ((offset >= eeprom->word_size) ||
     (words > eeprom->word_size - offset) ||
     (words == 0)) {
  ;
  return -1;
 }
 if (em_is_onboard_nvm_eeprom(hw) == 1 &&
     em_get_flash_presence_i210(hw) == 1 &&
     hw->eeprom.use_eerd == 0) {
  if (em_acquire_eeprom(hw) != 0)
   return -1;
 }
 if (eeprom->use_eerd == 1)
  return em_read_eeprom_eerd(hw, offset, words, data);
 if (eeprom->type == em_eeprom_ich8)
  return em_read_eeprom_ich8(hw, offset, words, data);
 if (eeprom->type == em_eeprom_invm)
  return em_read_invm_i210(hw, offset, words, data);
 if (eeprom->type == em_eeprom_spi) {
  uint16_t word_in;
  uint8_t read_opcode = 0x03;
  if (em_spi_eeprom_ready(hw)) {
   em_release_eeprom(hw);
   return -1;
  }
  em_standby_eeprom(hw);
  if ((eeprom->address_bits == 8) && (offset >= 128))
   read_opcode |= 0x08;
  em_shift_out_ee_bits(hw, read_opcode, eeprom->opcode_bits);
  em_shift_out_ee_bits(hw, (uint16_t) (offset * 2),
      eeprom->address_bits);
  for (i = 0; i < words; i++) {
   word_in = em_shift_in_ee_bits(hw, 16);
   data[i] = (word_in >> 8) | (word_in << 8);
  }
 } else if (eeprom->type == em_eeprom_microwire) {
  for (i = 0; i < words; i++) {
   em_shift_out_ee_bits(hw, 0x6,
       eeprom->opcode_bits);
   em_shift_out_ee_bits(hw, (uint16_t) (offset + i),
       eeprom->address_bits);
   data[i] = em_shift_in_ee_bits(hw, 16);
   em_standby_eeprom(hw);
  }
 }
 em_release_eeprom(hw);
 return 0;
}
 int32_t
em_read_eeprom_eerd(struct em_hw *hw, uint16_t offset, uint16_t words,
    uint16_t *data)
{
 uint32_t i, eerd = 0;
 int32_t error = 0;
 for (i = 0; i < words; i++) {
  eerd = ((offset + i) << 2) +
      1;
  bus_space_write_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00014 : 0x00014), eerd);
  error = em_poll_eerd_eewr_done(hw, 0);
  if (error) {
   break;
  }
  data[i] = (bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00014 : 0x00014)) >>
      16);
 }
 return error;
}
 int32_t
em_write_eeprom_eewr(struct em_hw *hw, uint16_t offset, uint16_t words,
    uint16_t *data)
{
 uint32_t register_value = 0;
 uint32_t i = 0;
 int32_t error = 0;
 if (em_swfw_sync_acquire(hw, 0x0001))
  return -13;
 for (i = 0; i < words; i++) {
  register_value = (data[i] << 16) |
      ((offset + i) << 2) |
      1;
  error = em_poll_eerd_eewr_done(hw, 1);
  if (error) {
   break;
  }
  bus_space_write_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x0102C : 0x0102C), register_value);
  error = em_poll_eerd_eewr_done(hw, 1);
  if (error) {
   break;
  }
 }
 em_swfw_sync_release(hw, 0x0001);
 return error;
}
 int32_t
em_poll_eerd_eewr_done(struct em_hw *hw, int eerd)
{
 uint32_t attempts = 100000;
 uint32_t i, reg64 = 0;
 int32_t done = 1;
 for (i = 0; i < attempts; i++) {
  if (eerd == 0)
   reg64 = bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00014 : 0x00014));
  else
   reg64 = bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x0102C : 0x0102C));
  if (reg64 & 2) {
   done = 0;
   break;
  }
  delay(5);
 }
 return done;
}
 boolean_t
em_is_onboard_nvm_eeprom(struct em_hw *hw)
{
 uint32_t eecd = 0;
 ;;
 if ((hw->mac_type == em_ich8lan || hw->mac_type == em_ich9lan || hw->mac_type == em_ich10lan || hw->mac_type == em_pchlan || hw->mac_type == em_pch2lan || hw->mac_type == em_pch_lpt || hw->mac_type == em_pch_spt))
  return 0;
 if ((hw->mac_type == em_82573) || (hw->mac_type == em_82574)) {
  eecd = bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00010 : 0x00010));
  eecd = ((eecd >> 15) & 0x03);
  if (eecd == 0x03) {
   return 0;
  }
 }
 return 1;
}
boolean_t
em_get_flash_presence_i210(struct em_hw *hw)
{
 uint32_t eecd;
 ;;
 if (hw->mac_type != em_i210)
  return 1;
 eecd = bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00010 : 0x00010));
 if (eecd & 0x00080000)
  return 1;
 return 0;
}
int32_t
em_validate_eeprom_checksum(struct em_hw *hw)
{
 uint16_t checksum = 0;
 uint16_t i, eeprom_data;
 uint16_t checksum_reg;
 ;;
 checksum_reg = hw->mac_type != em_icp_xxxx ?
     0x003F :
     0x003F;
 if (((hw->mac_type == em_82573) || (hw->mac_type == em_82574)) &&
     (em_is_onboard_nvm_eeprom(hw) == 0)) {
  em_read_eeprom(hw, 0x10, 1, &eeprom_data);
  if ((eeprom_data & 0x10) == 0) {
   em_read_eeprom(hw, 0x23, 1, &eeprom_data);
   if ((eeprom_data & 0x8000) == 0) {
    eeprom_data |= 0x8000;
    em_write_eeprom(hw, 0x23, 1, &eeprom_data);
    em_update_eeprom_checksum(hw);
   }
  }
 }
 if ((hw->mac_type == em_ich8lan || hw->mac_type == em_ich9lan || hw->mac_type == em_ich10lan || hw->mac_type == em_pchlan || hw->mac_type == em_pch2lan || hw->mac_type == em_pch_lpt || hw->mac_type == em_pch_spt)) {
  uint16_t word;
  uint16_t valid_csum_mask;
  switch (hw->mac_type) {
  case em_pch_lpt:
  case em_pch_spt:
   word = 0x0003;
   valid_csum_mask = 0x0001;
   break;
  default:
   word = 0x0019;
   valid_csum_mask = 0x0040;
   break;
  }
  em_read_eeprom(hw, word, 1, &eeprom_data);
  if ((eeprom_data & valid_csum_mask) == 0) {
   eeprom_data |= valid_csum_mask;
   em_write_eeprom(hw, word, 1, &eeprom_data);
   em_update_eeprom_checksum(hw);
  }
 }
 for (i = 0; i < (checksum_reg + 1); i++) {
  if (em_read_eeprom(hw, i, 1, &eeprom_data) < 0) {
   ;
   return -1;
  }
  checksum += eeprom_data;
 }
 if (checksum == (uint16_t) 0xBABA)
  return 0;
 else {
  ;
  return -1;
 }
}
int32_t
em_update_eeprom_checksum(struct em_hw *hw)
{
 uint32_t ctrl_ext;
 uint16_t checksum = 0;
 uint16_t i, eeprom_data;
 ;;
 for (i = 0; i < 0x003F; i++) {
  if (em_read_eeprom(hw, i, 1, &eeprom_data) < 0) {
   ;
   return -1;
  }
  checksum += eeprom_data;
 }
 checksum = (uint16_t) 0xBABA - checksum;
 if (em_write_eeprom(hw, 0x003F, 1, &checksum) < 0) {
  ;
  return -1;
 } else if (hw->eeprom.type == em_eeprom_flash) {
  em_commit_shadow_ram(hw);
 } else if (hw->eeprom.type == em_eeprom_ich8) {
  em_commit_shadow_ram(hw);
  ctrl_ext = bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00018 : 0x00018));
  ctrl_ext |= 0x00002000;
  bus_space_write_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00018 : 0x00018), ctrl_ext);
  delay(1000*(10));
 }
 return 0;
}
int32_t
em_write_eeprom(struct em_hw *hw, uint16_t offset, uint16_t words,
    uint16_t *data)
{
 struct em_eeprom_info *eeprom = &hw->eeprom;
 int32_t status = 0;
 ;;
 if (eeprom->word_size == 0)
  em_init_eeprom_params(hw);
 if ((offset >= eeprom->word_size) ||
     (words > eeprom->word_size - offset) ||
     (words == 0)) {
  ;
  return -1;
 }
 if (eeprom->use_eewr == 1)
  return em_write_eeprom_eewr(hw, offset, words, data);
 if (eeprom->type == em_eeprom_ich8)
  return em_write_eeprom_ich8(hw, offset, words, data);
 if (em_acquire_eeprom(hw) != 0)
  return -1;
 if (eeprom->type == em_eeprom_microwire) {
  status = em_write_eeprom_microwire(hw, offset, words, data);
 } else {
  status = em_write_eeprom_spi(hw, offset, words, data);
  delay(1000*(10));
 }
 em_release_eeprom(hw);
 return status;
}
 int32_t
em_write_eeprom_spi(struct em_hw *hw, uint16_t offset, uint16_t words,
    uint16_t *data)
{
 struct em_eeprom_info *eeprom = &hw->eeprom;
 uint16_t widx = 0;
 ;;
 while (widx < words) {
  uint8_t write_opcode = 0x02;
  if (em_spi_eeprom_ready(hw))
   return -1;
  em_standby_eeprom(hw);
  em_shift_out_ee_bits(hw, 0x06,
      eeprom->opcode_bits);
  em_standby_eeprom(hw);
  if ((eeprom->address_bits == 8) && (offset >= 128))
   write_opcode |= 0x08;
  em_shift_out_ee_bits(hw, write_opcode, eeprom->opcode_bits);
  em_shift_out_ee_bits(hw, (uint16_t) ((offset + widx) * 2),
      eeprom->address_bits);
  while (widx < words) {
   uint16_t word_out = data[widx];
   word_out = (word_out >> 8) | (word_out << 8);
   em_shift_out_ee_bits(hw, word_out, 16);
   widx++;
   if ((((offset + widx) * 2) % eeprom->page_size) == 0) {
    em_standby_eeprom(hw);
    break;
   }
  }
 }
 return 0;
}
 int32_t
em_write_eeprom_microwire(struct em_hw *hw, uint16_t offset, uint16_t words,
    uint16_t *data)
{
 struct em_eeprom_info *eeprom = &hw->eeprom;
 uint32_t eecd;
 uint16_t words_written = 0;
 uint16_t i = 0;
 ;;
 em_shift_out_ee_bits(hw, 0x13,
     (uint16_t) (eeprom->opcode_bits + 2));
 em_shift_out_ee_bits(hw, 0, (uint16_t) (eeprom->address_bits - 2));
 em_standby_eeprom(hw);
 while (words_written < words) {
  em_shift_out_ee_bits(hw, 0x5,
      eeprom->opcode_bits);
  em_shift_out_ee_bits(hw, (uint16_t) (offset + words_written),
      eeprom->address_bits);
  em_shift_out_ee_bits(hw, data[words_written], 16);
  em_standby_eeprom(hw);
  for (i = 0; i < 200; i++) {
   eecd = bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00010 : 0x00010));
   if (eecd & 0x00000008)
    break;
   delay(50);
  }
  if (i == 200) {
   ;
   return -1;
  }
  em_standby_eeprom(hw);
  words_written++;
 }
 em_shift_out_ee_bits(hw, 0x10,
     (uint16_t) (eeprom->opcode_bits + 2));
 em_shift_out_ee_bits(hw, 0, (uint16_t) (eeprom->address_bits - 2));
 return 0;
}
 int32_t
em_commit_shadow_ram(struct em_hw *hw)
{
 uint32_t attempts = 100000;
 uint32_t eecd = 0;
 uint32_t flop = 0;
 uint32_t i = 0;
 int32_t error = 0;
 uint32_t old_bank_offset = 0;
 uint32_t new_bank_offset = 0;
 uint8_t low_byte = 0;
 uint8_t high_byte = 0;
 boolean_t sector_write_failed = 0;
 if ((hw->mac_type == em_82573) || (hw->mac_type == em_82574)) {
  flop = bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x0103C : 0x0103C));
  for (i = 0; i < attempts; i++) {
   eecd = bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00010 : 0x00010));
   if ((eecd & 0x00080000) == 0) {
    break;
   }
   delay(5);
  }
  if (i == attempts) {
   return -1;
  }
  if ((flop & 0xFF00) == 0xDB00) {
   bus_space_write_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x08F00 : 0x08F00), 0xC0);
  }
  bus_space_write_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00010 : 0x00010), eecd | 0x00080000);
  for (i = 0; i < attempts; i++) {
   eecd = bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00010 : 0x00010));
   if ((eecd & 0x00080000) == 0) {
    break;
   }
   delay(5);
  }
  if (i == attempts) {
   return -1;
  }
 }
 if ((hw->mac_type == em_ich8lan || hw->mac_type == em_ich9lan) &&
     hw->eeprom_shadow_ram != ((void *)0)) {
  if (!(bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00010 : 0x00010)) & 0x00400000)) {
   new_bank_offset = hw->flash_bank_size * 2;
   old_bank_offset = 0;
   em_erase_ich8_4k_segment(hw, 1);
  } else {
   old_bank_offset = hw->flash_bank_size * 2;
   new_bank_offset = 0;
   em_erase_ich8_4k_segment(hw, 0);
  }
  sector_write_failed = 0;
  for (i = 0; i < 2048; i++) {
   if (hw->eeprom_shadow_ram[i].modified == 1) {
    low_byte = (uint8_t)
        hw->eeprom_shadow_ram[i].eeprom_word;
    delay(100);
    error = em_verify_write_ich8_byte(hw,
        (i << 1) + new_bank_offset, low_byte);
    if (error != 0)
     sector_write_failed = 1;
    else {
     high_byte = (uint8_t)
         (hw->eeprom_shadow_ram
         [i].eeprom_word >> 8);
     delay(100);
    }
   } else {
    em_read_ich8_byte(hw, (i << 1) +
        old_bank_offset, &low_byte);
    delay(100);
    error = em_verify_write_ich8_byte(hw,
          (i << 1) + new_bank_offset, low_byte);
    if (error != 0)
     sector_write_failed = 1;
    else {
     em_read_ich8_byte(hw, (i << 1) +
         old_bank_offset + 1, &high_byte);
     delay(100);
    }
   }
   if (sector_write_failed == 0) {
    if (i == 0x13)
     high_byte = 0xC0 |
         high_byte;
    error = em_verify_write_ich8_byte(hw, (i << 1)
        + new_bank_offset + 1, high_byte);
    if (error != 0)
     sector_write_failed = 1;
   } else {
    break;
   }
  }
  if (sector_write_failed == 0) {
   em_read_ich8_byte(hw, 0x13 * 2 + 1 +
       new_bank_offset, &high_byte);
   high_byte &= 0xBF;
   error = em_verify_write_ich8_byte(hw,
       0x13 * 2 + 1 + new_bank_offset,
       high_byte);
   if (error == 0) {
    error = em_verify_write_ich8_byte(hw,
        0x13 * 2 + 1 +
        old_bank_offset, 0);
   }
   for (i = 0; i < 2048; i++) {
    hw->eeprom_shadow_ram[i].modified = 0;
    hw->eeprom_shadow_ram[i].eeprom_word = 0xFFFF;
   }
  }
 }
 return error;
}
int32_t
em_read_part_num(struct em_hw *hw, uint32_t *part_num)
{
 uint16_t offset = 8;
 uint16_t eeprom_data;
 ;;
 if (em_read_eeprom(hw, offset, 1, &eeprom_data) < 0) {
  ;
  return -1;
 }
 *part_num = (uint32_t) (eeprom_data << 16);
 if (em_read_eeprom(hw, ++offset, 1, &eeprom_data) < 0) {
  ;
  return -1;
 }
 *part_num |= eeprom_data;
 return 0;
}
int32_t
em_read_mac_addr(struct em_hw *hw)
{
 uint16_t offset;
 uint16_t eeprom_data, i;
 uint16_t ia_base_addr = 0;
 ;;
 if (hw->mac_type == em_icp_xxxx) {
  ia_base_addr = (uint16_t)
  ((((hw->icp_xxxx_port_num) + 1) << 4) + 2);
 } else if (hw->mac_type == em_82580 || hw->mac_type == em_i350) {
  ia_base_addr = (hw->bus_func ? (0x40 + (0x40 * hw->bus_func)) : 0);
 }
 for (i = 0; i < 6; i += 2) {
  offset = i >> 1;
  if (em_read_eeprom(hw, offset + ia_base_addr, 1, &eeprom_data)
      < 0) {
   ;
   return -1;
  }
  hw->perm_mac_addr[i] = (uint8_t) (eeprom_data & 0x00FF);
  hw->perm_mac_addr[i + 1] = (uint8_t) (eeprom_data >> 8);
 }
 switch (hw->mac_type) {
 default:
  break;
 case em_82546:
 case em_82546_rev_3:
 case em_82571:
 case em_82575:
 case em_80003es2lan:
  if (bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00008 : 0x00008)) & 0x00000004)
   hw->perm_mac_addr[5] ^= 0x01;
  break;
 }
 for (i = 0; i < 6; i++)
  hw->mac_addr[i] = hw->perm_mac_addr[i];
 return 0;
}
 int32_t
em_phy_no_cable_workaround(struct em_hw *hw) {
 int32_t ret_val, dft_ret_val;
 uint32_t mac_reg;
 uint16_t data, phy_reg;
 em_read_phy_reg(hw, (((769) << 5) | ((20) & 0x1F)), &phy_reg);
 ret_val = em_write_phy_reg(hw, (((769) << 5) | ((20) & 0x1F)), phy_reg | (1 << 14));
 if (ret_val)
  return ret_val;
 mac_reg = bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x05F04 : 0x05F04));
 mac_reg &= ~(0xF << 14);
 bus_space_write_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x05F04 : 0x05F04), mac_reg);
 mac_reg = bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00100 : 0x00100));
 mac_reg &= ~0x04000000;
 bus_space_write_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00100 : 0x00100), mac_reg);
 ret_val = em_read_kmrn_reg(hw, 0x00000001, &data);
 if (ret_val)
  goto out;
 ret_val = em_write_kmrn_reg(hw, 0x00000001,
     data & ~(1 << 0));
 if (ret_val)
  goto out;
 ret_val = em_read_kmrn_reg(hw, 0x00000010, &data);
 if (ret_val)
  goto out;
 data &= ~(0xF << 8);
 data |= (0xB << 8);
 ret_val = em_write_kmrn_reg(hw, 0x00000010, data);
 if (ret_val)
  goto out;
 em_read_phy_reg(hw, (((769) << 5) | ((23) & 0x1F)), &data);
 data &= ~(0x7F << 5);
 ret_val = em_write_phy_reg(hw, (((769) << 5) | ((23) & 0x1F)), data);
 if (ret_val)
  goto out;
 em_read_phy_reg(hw, (((769) << 5) | ((16) & 0x1F)), &data);
 data |= (1 << 13);
 ret_val = em_write_phy_reg(hw, (((769) << 5) | ((16) & 0x1F)), data);
 if (ret_val)
  goto out;
 em_read_phy_reg(hw, (((776) << 5) | ((20) & 0x1F)), &data);
 data &= ~(0x3FF << 2);
 data |= (0x8 << 2);
 ret_val = em_write_phy_reg(hw, (((776) << 5) | ((20) & 0x1F)), data);
 if (ret_val)
  goto out;
 ret_val = em_write_phy_reg(hw, (((776) << 5) | ((23) & 0x1F)), 0x7E00);
 if (ret_val)
  goto out;
 em_read_phy_reg(hw, (((770) << 5) | ((17) & 0x1F)), &data);
 ret_val = em_write_phy_reg(hw, (((770) << 5) | ((17) & 0x1F)), data & ~(1 << 10));
 if (ret_val)
  goto out;
out:
 dft_ret_val = em_write_phy_reg(hw, (((769) << 5) | ((20) & 0x1F)), phy_reg & ~(1 << 14));
 if (ret_val)
  return ret_val;
 else
  return dft_ret_val;
}
 void
em_init_rx_addrs(struct em_hw *hw)
{
 uint32_t i;
 uint32_t rar_num;
 ;;
 if (hw->mac_type == em_pch_lpt || hw->mac_type == em_pch_spt || hw->mac_type == em_pch2lan)
  if (em_phy_no_cable_workaround(hw))
   printf(" ...failed to apply em_phy_no_cable_"
       "workaround.\n");
 ;
 em_rar_set(hw, hw->mac_addr, 0);
 rar_num = 15;
 if ((hw->mac_type == em_82571) && (hw->laa_is_present == 1))
  rar_num -= 1;
 if ((hw->mac_type == em_ich8lan || hw->mac_type == em_ich9lan || hw->mac_type == em_ich10lan || hw->mac_type == em_pchlan || hw->mac_type == em_pch2lan || hw->mac_type == em_pch_lpt || hw->mac_type == em_pch_spt))
  rar_num = 7;
 if (hw->mac_type == em_ich8lan)
  rar_num -= 1;
 if (hw->mac_type == em_82580)
  rar_num = 24;
 if (hw->mac_type == em_i210)
  rar_num = 16;
 if (hw->mac_type == em_i350)
  rar_num = 32;
 ;
 for (i = 1; i < rar_num; i++) {
  bus_space_write_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x05400 : 0x00040) + (((i << 1)) << 2), 0);
  bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00008 : 0x00008));
  bus_space_write_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x05400 : 0x00040) + ((((i << 1) + 1)) << 2), 0);
  bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00008 : 0x00008));
 }
}
void
em_mc_addr_list_update(struct em_hw *hw, uint8_t *mc_addr_list,
    uint32_t mc_addr_count, uint32_t pad, uint32_t rar_used_count)
{
 uint32_t hash_value;
 uint32_t i;
 uint32_t num_rar_entry;
 uint32_t num_mta_entry;
 ;;
 hw->num_mc_addrs = mc_addr_count;
 ;
 num_rar_entry = 15;
 if ((hw->mac_type == em_ich8lan || hw->mac_type == em_ich9lan || hw->mac_type == em_ich10lan || hw->mac_type == em_pchlan || hw->mac_type == em_pch2lan || hw->mac_type == em_pch_lpt || hw->mac_type == em_pch_spt))
  num_rar_entry = 7;
 if (hw->mac_type == em_ich8lan)
  num_rar_entry -= 1;
 if ((hw->mac_type == em_82571) && (hw->laa_is_present == 1))
  num_rar_entry -= 1;
 for (i = rar_used_count; i < num_rar_entry; i++) {
  bus_space_write_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x05400 : 0x00040) + (((i << 1)) << 2), 0);
  bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00008 : 0x00008));
  bus_space_write_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x05400 : 0x00040) + ((((i << 1) + 1)) << 2), 0);
  bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00008 : 0x00008));
 }
 ;
 num_mta_entry = 128;
 if ((hw->mac_type == em_ich8lan || hw->mac_type == em_ich9lan || hw->mac_type == em_ich10lan || hw->mac_type == em_pchlan || hw->mac_type == em_pch2lan || hw->mac_type == em_pch_lpt || hw->mac_type == em_pch_spt))
  num_mta_entry = 32;
 for (i = 0; i < num_mta_entry; i++) {
  bus_space_write_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x05200 : 0x00200) + ((i) << 2), 0);
  bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00008 : 0x00008));
 }
 for (i = 0; i < mc_addr_count; i++) {
  ;
  ;
  hash_value = em_hash_mc_addr(hw, mc_addr_list +
      (i * (6 + pad)));
  ;
  if (rar_used_count < num_rar_entry) {
   em_rar_set(hw, mc_addr_list +
       (i * (6 + pad)),
       rar_used_count);
   rar_used_count++;
  } else {
   em_mta_set(hw, hash_value);
  }
 }
 ;
}
uint32_t
em_hash_mc_addr(struct em_hw *hw, uint8_t *mc_addr)
{
 uint32_t hash_value = 0;
 switch (hw->mc_filter_type) {
 case 0:
  if ((hw->mac_type == em_ich8lan || hw->mac_type == em_ich9lan || hw->mac_type == em_ich10lan || hw->mac_type == em_pchlan || hw->mac_type == em_pch2lan || hw->mac_type == em_pch_lpt || hw->mac_type == em_pch_spt)) {
   hash_value = ((mc_addr[4] >> 6) |
       (((uint16_t) mc_addr[5]) << 2));
  } else {
   hash_value = ((mc_addr[4] >> 4) |
       (((uint16_t) mc_addr[5]) << 4));
  }
  break;
 case 1:
  if ((hw->mac_type == em_ich8lan || hw->mac_type == em_ich9lan || hw->mac_type == em_ich10lan || hw->mac_type == em_pchlan || hw->mac_type == em_pch2lan || hw->mac_type == em_pch_lpt || hw->mac_type == em_pch_spt)) {
   hash_value = ((mc_addr[4] >> 5) |
       (((uint16_t) mc_addr[5]) << 3));
  } else {
   hash_value = ((mc_addr[4] >> 3) |
       (((uint16_t) mc_addr[5]) << 5));
  }
  break;
 case 2:
  if ((hw->mac_type == em_ich8lan || hw->mac_type == em_ich9lan || hw->mac_type == em_ich10lan || hw->mac_type == em_pchlan || hw->mac_type == em_pch2lan || hw->mac_type == em_pch_lpt || hw->mac_type == em_pch_spt)) {
   hash_value = ((mc_addr[4] >> 4) |
       (((uint16_t) mc_addr[5]) << 4));
  } else {
   hash_value = ((mc_addr[4] >> 2) |
       (((uint16_t) mc_addr[5]) << 6));
  }
  break;
 case 3:
  if ((hw->mac_type == em_ich8lan || hw->mac_type == em_ich9lan || hw->mac_type == em_ich10lan || hw->mac_type == em_pchlan || hw->mac_type == em_pch2lan || hw->mac_type == em_pch_lpt || hw->mac_type == em_pch_spt)) {
   hash_value = ((mc_addr[4] >> 2) |
       (((uint16_t) mc_addr[5]) << 6));
  } else {
   hash_value = ((mc_addr[4]) |
       (((uint16_t) mc_addr[5]) << 8));
  }
  break;
 }
 hash_value &= 0xFFF;
 if ((hw->mac_type == em_ich8lan || hw->mac_type == em_ich9lan || hw->mac_type == em_ich10lan || hw->mac_type == em_pchlan || hw->mac_type == em_pch2lan || hw->mac_type == em_pch_lpt || hw->mac_type == em_pch_spt))
  hash_value &= 0x3FF;
 return hash_value;
}
void
em_mta_set(struct em_hw *hw, uint32_t hash_value)
{
 uint32_t hash_bit, hash_reg;
 uint32_t mta;
 uint32_t temp;
 hash_reg = (hash_value >> 5) & 0x7F;
 if ((hw->mac_type == em_ich8lan || hw->mac_type == em_ich9lan || hw->mac_type == em_ich10lan || hw->mac_type == em_pchlan || hw->mac_type == em_pch2lan || hw->mac_type == em_pch_lpt || hw->mac_type == em_pch_spt))
  hash_reg &= 0x1F;
 hash_bit = hash_value & 0x1F;
 mta = bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x05200 : 0x00200) + ((hash_reg) << 2));
 mta |= (1 << hash_bit);
 if ((hw->mac_type == em_82544) && ((hash_reg & 0x1) == 1)) {
  temp = bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x05200 : 0x00200) + (((hash_reg - 1)) << 2));
  bus_space_write_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x05200 : 0x00200) + ((hash_reg) << 2), mta);
  bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00008 : 0x00008));
  bus_space_write_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x05200 : 0x00200) + (((hash_reg - 1)) << 2), temp);
  bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00008 : 0x00008));
 } else {
  bus_space_write_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x05200 : 0x00200) + ((hash_reg) << 2), mta);
  bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00008 : 0x00008));
 }
}
void
em_rar_set(struct em_hw *hw, uint8_t *addr, uint32_t index)
{
 uint32_t rar_low, rar_high;
 rar_low = ((uint32_t) addr[0] | ((uint32_t) addr[1] << 8) |
     ((uint32_t) addr[2] << 16) | ((uint32_t) addr[3] << 24));
 rar_high = ((uint32_t) addr[4] | ((uint32_t) addr[5] << 8));
 switch (hw->mac_type) {
 case em_82571:
 case em_82572:
 case em_80003es2lan:
  if (hw->leave_av_bit_off == 1)
   break;
 default:
  rar_high |= 0x80000000;
  break;
 }
 bus_space_write_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x05400 : 0x00040) + (((index << 1)) << 2), rar_low);
 bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00008 : 0x00008));
 bus_space_write_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x05400 : 0x00040) + ((((index << 1) + 1)) << 2), rar_high);
 bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00008 : 0x00008));
}
 void
em_clear_vfta(struct em_hw *hw)
{
 uint32_t offset;
 uint32_t vfta_value = 0;
 uint32_t vfta_offset = 0;
 uint32_t vfta_bit_in_reg = 0;
 if ((hw->mac_type == em_ich8lan || hw->mac_type == em_ich9lan || hw->mac_type == em_ich10lan || hw->mac_type == em_pchlan || hw->mac_type == em_pch2lan || hw->mac_type == em_pch_lpt || hw->mac_type == em_pch_spt))
  return;
 if ((hw->mac_type == em_82573) || (hw->mac_type == em_82574)) {
  if (hw->mng_cookie.vlan_id != 0) {
   vfta_offset = (hw->mng_cookie.vlan_id >>
       0x5) & 0x7F;
   vfta_bit_in_reg = 1 << (hw->mng_cookie.vlan_id &
       0x1F);
  }
 }
 for (offset = 0; offset < 128; offset++) {
  vfta_value = (offset == vfta_offset) ? vfta_bit_in_reg : 0;
  bus_space_write_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x05600 : 0x00600) + ((offset) << 2), vfta_value);
  bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00008 : 0x00008));
 }
}
void
em_clear_vfta_i350(struct em_hw *hw)
{
 uint32_t offset;
 int i;
 for (offset = 0; offset < 128; offset++) {
  for (i = 0; i < 10; i++)
   bus_space_write_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x05600 : 0x00600) + ((offset) << 2), 0);
  bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00008 : 0x00008));
 }
}
 int32_t
em_id_led_init(struct em_hw *hw)
{
 uint32_t ledctl;
 const uint32_t ledctl_mask = 0x000000FF;
 const uint32_t ledctl_on = 0xE;
 const uint32_t ledctl_off = 0xF;
 uint16_t eeprom_data, i, temp;
 const uint16_t led_mask = 0x0F;
 ;;
 if (hw->mac_type < em_82540 || hw->mac_type == em_icp_xxxx) {
  return 0;
 }
 ledctl = bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00E00 : 0x00E00));
 hw->ledctl_default = ledctl;
 hw->ledctl_mode1 = hw->ledctl_default;
 hw->ledctl_mode2 = hw->ledctl_default;
 if (em_read_eeprom(hw, 0x0004, 1, &eeprom_data) < 0) {
  ;
  return -1;
 }
 if ((hw->mac_type == em_82573) &&
     (eeprom_data == 0xF746))
  eeprom_data = 0x1811;
 else if ((eeprom_data == 0x0000) ||
     (eeprom_data == 0xFFFF)) {
  if (hw->mac_type == em_ich8lan ||
      hw->mac_type == em_ich9lan ||
      hw->mac_type == em_ich10lan)
   eeprom_data = ((0x1 << 12) | (0x3 << 8) | (0x2 << 4) | (0x1));
  else
   eeprom_data = ((0x8 << 12) | (0x9 << 8) | (0x1 << 4) | (0x1));
 }
 for (i = 0; i < 4; i++) {
  temp = (eeprom_data >> (i << 2)) & led_mask;
  switch (temp) {
  case 0x4:
  case 0x5:
  case 0x6:
   hw->ledctl_mode1 &= ~(ledctl_mask << (i << 3));
   hw->ledctl_mode1 |= ledctl_on << (i << 3);
   break;
  case 0x7:
  case 0x8:
  case 0x9:
   hw->ledctl_mode1 &= ~(ledctl_mask << (i << 3));
   hw->ledctl_mode1 |= ledctl_off << (i << 3);
   break;
  default:
   break;
  }
  switch (temp) {
  case 0x2:
  case 0x5:
  case 0x8:
   hw->ledctl_mode2 &= ~(ledctl_mask << (i << 3));
   hw->ledctl_mode2 |= ledctl_on << (i << 3);
   break;
  case 0x3:
  case 0x6:
  case 0x9:
   hw->ledctl_mode2 &= ~(ledctl_mask << (i << 3));
   hw->ledctl_mode2 |= ledctl_off << (i << 3);
   break;
  default:
   break;
  }
 }
 return 0;
}
void
em_clear_hw_cntrs(struct em_hw *hw)
{
 volatile uint32_t temp;
 temp = bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x04000 : 0x04000));
 temp = bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x04008 : 0x04008));
 temp = bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x04010 : 0x04010));
 temp = bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x04014 : 0x04014));
 temp = bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x04018 : 0x04018));
 temp = bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x0401C : 0x0401C));
 temp = bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x04020 : 0x04020));
 temp = bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x04028 : 0x04028));
 temp = bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x04030 : 0x04030));
 temp = bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x04038 : 0x04038));
 temp = bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x04040 : 0x04040));
 temp = bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x04048 : 0x04048));
 temp = bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x0404C : 0x0404C));
 temp = bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x04050 : 0x04050));
 temp = bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x04054 : 0x04054));
 temp = bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x04058 : 0x04058));
 if (!(hw->mac_type == em_ich8lan || hw->mac_type == em_ich9lan || hw->mac_type == em_ich10lan || hw->mac_type == em_pchlan || hw->mac_type == em_pch2lan || hw->mac_type == em_pch_lpt || hw->mac_type == em_pch_spt)) {
  temp = bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x0405C : 0x0405C));
  temp = bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x04060 : 0x04060));
  temp = bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x04064 : 0x04064));
  temp = bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x04068 : 0x04068));
  temp = bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x0406C : 0x0406C));
  temp = bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x04070 : 0x04070));
 }
 temp = bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x04074 : 0x04074));
 temp = bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x04078 : 0x04078));
 temp = bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x0407C : 0x0407C));
 temp = bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x04080 : 0x04080));
 temp = bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x04088 : 0x04088));
 temp = bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x0408C : 0x0408C));
 temp = bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x04090 : 0x04090));
 temp = bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x04094 : 0x04094));
 temp = bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x040A0 : 0x040A0));
 temp = bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x040A4 : 0x040A4));
 temp = bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x040A8 : 0x040A8));
 temp = bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x040AC : 0x040AC));
 temp = bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x040B0 : 0x040B0));
 temp = bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x040C0 : 0x040C0));
 temp = bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x040C4 : 0x040C4));
 temp = bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x040C8 : 0x040C8));
 temp = bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x040CC : 0x040CC));
 temp = bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x040D0 : 0x040D0));
 temp = bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x040D4 : 0x040D4));
 if (!(hw->mac_type == em_ich8lan || hw->mac_type == em_ich9lan || hw->mac_type == em_ich10lan || hw->mac_type == em_pchlan || hw->mac_type == em_pch2lan || hw->mac_type == em_pch_lpt || hw->mac_type == em_pch_spt)) {
  temp = bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x040D8 : 0x040D8));
  temp = bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x040DC : 0x040DC));
  temp = bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x040E0 : 0x040E0));
  temp = bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x040E4 : 0x040E4));
  temp = bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x040E8 : 0x040E8));
  temp = bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x040EC : 0x040EC));
 }
 temp = bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x040F0 : 0x040F0));
 temp = bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x040F4 : 0x040F4));
 if (hw->mac_type < em_82543)
  return;
 temp = bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x04004 : 0x04004));
 temp = bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x0400C : 0x0400C));
 temp = bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x04034 : 0x04034));
 temp = bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x0403C : 0x0403C));
 temp = bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x040F8 : 0x040F8));
 temp = bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x040FC : 0x040FC));
 if (hw->mac_type <= em_82544
     || hw->mac_type == em_icp_xxxx)
  return;
 temp = bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x040B4 : 0x040B4));
 temp = bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x040B8 : 0x040B8));
 temp = bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x040BC : 0x040BC));
 if (hw->mac_type <= em_82547_rev_2)
  return;
 temp = bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x04100 : 0x04100));
 temp = bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x04124 : 0x04124));
 if (hw->phy_type == em_phy_82577 ||
     hw->phy_type == em_phy_82578 ||
     hw->phy_type == em_phy_82579 ||
     hw->phy_type == em_phy_i217) {
  uint16_t phy_data;
  em_read_phy_reg(hw, (((778) << 5) | ((16) & 0x1F)), &phy_data);
  em_read_phy_reg(hw, (((778) << 5) | ((17) & 0x1F)), &phy_data);
  em_read_phy_reg(hw, (((778) << 5) | ((18) & 0x1F)), &phy_data);
  em_read_phy_reg(hw, (((778) << 5) | ((19) & 0x1F)), &phy_data);
  em_read_phy_reg(hw, (((778) << 5) | ((20) & 0x1F)), &phy_data);
  em_read_phy_reg(hw, (((778) << 5) | ((21) & 0x1F)), &phy_data);
  em_read_phy_reg(hw, (((778) << 5) | ((23) & 0x1F)), &phy_data);
  em_read_phy_reg(hw, (((778) << 5) | ((24) & 0x1F)), &phy_data);
  em_read_phy_reg(hw, (((778) << 5) | ((25) & 0x1F)), &phy_data);
  em_read_phy_reg(hw, (((778) << 5) | ((26) & 0x1F)), &phy_data);
  em_read_phy_reg(hw, (((778) << 5) | ((27) & 0x1F)), &phy_data);
  em_read_phy_reg(hw, (((778) << 5) | ((28) & 0x1F)), &phy_data);
  em_read_phy_reg(hw, (((778) << 5) | ((29) & 0x1F)), &phy_data);
  em_read_phy_reg(hw, (((778) << 5) | ((30) & 0x1F)), &phy_data);
 }
 if (hw->mac_type == em_ich8lan ||
     hw->mac_type == em_ich9lan ||
     hw->mac_type == em_ich10lan ||
     hw->mac_type == em_pchlan ||
     (hw->mac_type != em_pch2lan && hw->mac_type != em_pch_lpt && hw->mac_type != em_pch_spt))
  return;
 temp = bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x04104 : 0x04104));
 temp = bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x04108 : 0x04108));
 temp = bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x0410C : 0x0410C));
 temp = bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x04110 : 0x04110));
 temp = bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x04118 : 0x04118));
 temp = bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x0411C : 0x0411C));
 temp = bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x04120 : 0x04120));
}
void
em_tbi_adjust_stats(struct em_hw *hw, struct em_hw_stats *stats,
    uint32_t frame_len, uint8_t *mac_addr)
{
 uint64_t carry_bit;
 frame_len--;
 stats->crcerrs--;
 stats->gprc++;
 carry_bit = 0x80000000 & stats->gorcl;
 stats->gorcl += frame_len;
 if (carry_bit && ((stats->gorcl & 0x80000000) == 0))
  stats->gorch++;
 if ((mac_addr[0] == (uint8_t) 0xff) && (mac_addr[1] == (uint8_t) 0xff))
  stats->bprc++;
 else if (*mac_addr & 0x01)
  stats->mprc++;
 if (frame_len == hw->max_frame_size) {
  if (stats->roc > 0)
   stats->roc--;
 }
 if (frame_len == 64) {
  stats->prc64++;
  stats->prc127--;
 } else if (frame_len == 127) {
  stats->prc127++;
  stats->prc255--;
 } else if (frame_len == 255) {
  stats->prc255++;
  stats->prc511--;
 } else if (frame_len == 511) {
  stats->prc511++;
  stats->prc1023--;
 } else if (frame_len == 1023) {
  stats->prc1023++;
  stats->prc1522--;
 } else if (frame_len == 1522) {
  stats->prc1522++;
 }
}
void
em_get_bus_info(struct em_hw *hw)
{
 int32_t ret_val;
 uint16_t pci_ex_link_status;
 uint32_t status;
 switch (hw->mac_type) {
 case em_82542_rev2_0:
 case em_82542_rev2_1:
  hw->bus_type = em_bus_type_unknown;
  hw->bus_speed = em_bus_speed_unknown;
  hw->bus_width = em_bus_width_unknown;
  break;
 case em_icp_xxxx:
  hw->bus_type = em_bus_type_cpp;
  hw->bus_speed = em_bus_speed_unknown;
  hw->bus_width = em_bus_width_unknown;
  break;
 case em_82571:
 case em_82572:
 case em_82573:
 case em_82574:
 case em_82575:
 case em_82580:
 case em_80003es2lan:
 case em_i210:
 case em_i350:
  hw->bus_type = em_bus_type_pci_express;
  hw->bus_speed = em_bus_speed_2500;
  ret_val = em_read_pcie_cap_reg(hw, 0x12,
      &pci_ex_link_status);
  if (ret_val)
   hw->bus_width = em_bus_width_unknown;
  else
   hw->bus_width = (pci_ex_link_status &
       0x3F0) >> 4;
  break;
 case em_ich8lan:
 case em_ich9lan:
 case em_ich10lan:
 case em_pchlan:
 case em_pch2lan:
 case em_pch_lpt:
 case em_pch_spt:
  hw->bus_type = em_bus_type_pci_express;
  hw->bus_speed = em_bus_speed_2500;
  hw->bus_width = em_bus_width_pciex_1;
  break;
 default:
  status = bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00008 : 0x00008));
  hw->bus_type = (status & 0x00002000) ?
      em_bus_type_pcix : em_bus_type_pci;
  if (hw->device_id == 0x101D) {
   hw->bus_speed = (hw->bus_type == em_bus_type_pci) ?
       em_bus_speed_66 : em_bus_speed_120;
  } else if (hw->bus_type == em_bus_type_pci) {
   hw->bus_speed = (status & 0x00000800) ?
       em_bus_speed_66 : em_bus_speed_33;
  } else {
   switch (status & 0x0000C000) {
   case 0x00000000:
    hw->bus_speed = em_bus_speed_66;
    break;
   case 0x00004000:
    hw->bus_speed = em_bus_speed_100;
    break;
   case 0x00008000:
    hw->bus_speed = em_bus_speed_133;
    break;
   default:
    hw->bus_speed = em_bus_speed_reserved;
    break;
   }
  }
  hw->bus_width = (status & 0x00001000) ?
      em_bus_width_64 : em_bus_width_32;
  break;
 }
}
 void
em_write_reg_io(struct em_hw *hw, uint32_t offset, uint32_t value)
{
 unsigned long io_addr = hw->io_base;
 unsigned long io_data = hw->io_base + 4;
 bus_space_write_4(((struct em_osdep *)(hw)->back)->io_bus_space_tag, ((struct em_osdep *)(hw)->back)->io_bus_space_handle, (io_addr), (offset));
 bus_space_write_4(((struct em_osdep *)(hw)->back)->io_bus_space_tag, ((struct em_osdep *)(hw)->back)->io_bus_space_handle, (io_data), (value));
}
 int32_t
em_get_cable_length(struct em_hw *hw, uint16_t *min_length,
    uint16_t *max_length)
{
 int32_t ret_val;
 uint16_t agc_value = 0;
 uint16_t i, phy_data;
 uint16_t cable_length;
 ;;
 *min_length = *max_length = 0;
 if (hw->phy_type == em_phy_m88 ||
     hw->phy_type == em_phy_oem ||
     hw->phy_type == em_phy_82578) {
  ret_val = em_read_phy_reg(hw, 0x11,
      &phy_data);
  if (ret_val)
   return ret_val;
  cable_length = (phy_data & 0x0380) >>
      7;
  switch (cable_length) {
  case em_cable_length_50:
   *min_length = 0;
   *max_length = em_igp_cable_length_50;
   break;
  case em_cable_length_50_80:
   *min_length = em_igp_cable_length_50;
   *max_length = em_igp_cable_length_80;
   break;
  case em_cable_length_80_110:
   *min_length = em_igp_cable_length_80;
   *max_length = em_igp_cable_length_110;
   break;
  case em_cable_length_110_140:
   *min_length = em_igp_cable_length_110;
   *max_length = em_igp_cable_length_140;
   break;
  case em_cable_length_140:
   *min_length = em_igp_cable_length_140;
   *max_length = em_igp_cable_length_170;
   break;
  default:
   return -2;
   break;
  }
 } else if (hw->phy_type == em_phy_rtl8211) {
  *min_length = 0;
  *max_length = em_igp_cable_length_50;
 } else if (hw->phy_type == em_phy_gg82563) {
  ret_val = em_read_phy_reg(hw, (((5) << 5) | ((26) & 0x1F)),
      &phy_data);
  if (ret_val)
   return ret_val;
  cable_length = phy_data & 0x0007;
  switch (cable_length) {
  case em_gg_cable_length_60:
   *min_length = 0;
   *max_length = em_igp_cable_length_60;
   break;
  case em_gg_cable_length_60_115:
   *min_length = em_igp_cable_length_60;
   *max_length = em_igp_cable_length_115;
   break;
  case em_gg_cable_length_115_150:
   *min_length = em_igp_cable_length_115;
   *max_length = em_igp_cable_length_150;
   break;
  case em_gg_cable_length_150:
   *min_length = em_igp_cable_length_150;
   *max_length = em_igp_cable_length_180;
   break;
  default:
   return -2;
   break;
  }
 } else if (hw->phy_type == em_phy_igp) {
  uint16_t cur_agc_value;
  uint16_t min_agc_value =
      128;
  uint16_t agc_reg_array[4] =
      {0x1172, 0x1272,
      0x1472, 0x1872};
  for (i = 0; i < 4; i++) {
   ret_val = em_read_phy_reg(hw, agc_reg_array[i],
       &phy_data);
   if (ret_val)
    return ret_val;
   cur_agc_value = phy_data >>
       7;
   if ((cur_agc_value >=
       128 - 1) ||
       (cur_agc_value == 0))
    return -2;
   agc_value += cur_agc_value;
   if (min_agc_value > cur_agc_value)
    min_agc_value = cur_agc_value;
  }
  if (agc_value < 4 *
      em_igp_cable_length_50) {
   agc_value -= min_agc_value;
   agc_value /= (4 - 1);
  } else {
   agc_value /= 4;
  }
  *min_length = ((em_igp_cable_length_table[agc_value] -
      10) > 0) ?
      (em_igp_cable_length_table[agc_value] -
      10) : 0;
  *max_length = em_igp_cable_length_table[agc_value] +
      10;
 } else if (hw->phy_type == em_phy_igp_2 ||
     hw->phy_type == em_phy_igp_3) {
  uint16_t cur_agc_index, max_agc_index = 0;
  uint16_t min_agc_index = 113 - 1;
  uint16_t agc_reg_array[4] =
      {0x11B1, 0x12B1,
      0x14B1, 0x18B1};
  for (i = 0; i < 4; i++) {
   ret_val = em_read_phy_reg(hw, agc_reg_array[i],
       &phy_data);
   if (ret_val)
    return ret_val;
   cur_agc_index = (phy_data >>
       9) &
       0x7F;
   if ((cur_agc_index >= 113)
       || (cur_agc_index == 0))
    return -2;
   if (em_igp_2_cable_length_table[min_agc_index] >
       em_igp_2_cable_length_table[cur_agc_index])
    min_agc_index = cur_agc_index;
   if (em_igp_2_cable_length_table[max_agc_index] <
       em_igp_2_cable_length_table[cur_agc_index])
    max_agc_index = cur_agc_index;
   agc_value += em_igp_2_cable_length_table
       [cur_agc_index];
  }
  agc_value -= (em_igp_2_cable_length_table[min_agc_index] +
      em_igp_2_cable_length_table[max_agc_index]);
  agc_value /= (4 - 2);
  *min_length = ((agc_value - 15) > 0) ?
      (agc_value - 15) : 0;
  *max_length = agc_value + 15;
 }
 return 0;
}
 int32_t
em_check_downshift(struct em_hw *hw)
{
 int32_t ret_val;
 uint16_t phy_data;
 ;;
 if (hw->phy_type == em_phy_igp ||
     hw->phy_type == em_phy_igp_3 ||
     hw->phy_type == em_phy_igp_2) {
  ret_val = em_read_phy_reg(hw, 0x13,
      &phy_data);
  if (ret_val)
   return ret_val;
  hw->speed_downgraded = (phy_data &
      0x8000) ? 1 : 0;
 } else if ((hw->phy_type == em_phy_m88) ||
     (hw->phy_type == em_phy_gg82563) ||
     (hw->phy_type == em_phy_oem) ||
     (hw->phy_type == em_phy_82578)) {
  ret_val = em_read_phy_reg(hw, 0x11,
      &phy_data);
  if (ret_val)
   return ret_val;
  hw->speed_downgraded = (phy_data & 0x0020) >>
      5;
 } else if (hw->phy_type == em_phy_ife) {
  hw->speed_downgraded = 0;
 }
 return 0;
}
 int32_t
em_config_dsp_after_link_change(struct em_hw *hw, boolean_t link_up)
{
 int32_t ret_val;
 uint16_t phy_data, phy_saved_data, speed, duplex, i;
 uint16_t dsp_reg_array[4] =
     {0x1171, 0x1271,
     0x1471, 0x1871};
 uint16_t min_length, max_length;
 ;;
 if (hw->phy_type != em_phy_igp)
  return 0;
 if (link_up) {
  ret_val = em_get_speed_and_duplex(hw, &speed, &duplex);
  if (ret_val) {
   ;
   return ret_val;
  }
  if (speed == 1000) {
   ret_val = em_get_cable_length(hw, &min_length, &max_length);
   if (ret_val)
    return ret_val;
   if ((hw->dsp_config_state == em_dsp_config_enabled) &&
       min_length >= em_igp_cable_length_50) {
    for (i = 0; i < 4;
        i++) {
     ret_val = em_read_phy_reg(hw,
         dsp_reg_array[i], &phy_data);
     if (ret_val)
      return ret_val;
     phy_data &=
         ~0xC000;
     ret_val = em_write_phy_reg(hw,
         dsp_reg_array[i], phy_data);
     if (ret_val)
      return ret_val;
    }
    hw->dsp_config_state = em_dsp_config_activated;
   }
   if ((hw->ffe_config_state == em_ffe_config_enabled) &&
       (min_length < em_igp_cable_length_50)) {
    uint16_t ffe_idle_err_timeout =
        20;
    uint32_t idle_errs = 0;
    ret_val = em_read_phy_reg(hw, 0x0A,
        &phy_data);
    if (ret_val)
     return ret_val;
    for (i = 0; i < ffe_idle_err_timeout; i++) {
     delay(1000);
     ret_val = em_read_phy_reg(hw,
         0x0A, &phy_data);
     if (ret_val)
      return ret_val;
     idle_errs += (phy_data &
         0x00FF);
     if (idle_errs >
         5) {
      hw->ffe_config_state =
          em_ffe_config_active;
      ret_val = em_write_phy_reg(hw,
          0x1F35,
          0x0069);
      if (ret_val)
       return ret_val;
      break;
     }
     if (idle_errs)
      ffe_idle_err_timeout =
          100;
    }
   }
  }
 } else {
  if (hw->dsp_config_state == em_dsp_config_activated) {
   ret_val = em_read_phy_reg(hw, 0x2F5B, &phy_saved_data);
   if (ret_val)
    return ret_val;
   ret_val = em_write_phy_reg(hw, 0x2F5B, 0x0003);
   if (ret_val)
    return ret_val;
   delay(1000*(20));
   ret_val = em_write_phy_reg(hw, 0x0000,
       0x0140);
   if (ret_val)
    return ret_val;
   for (i = 0; i < 4; i++) {
    ret_val = em_read_phy_reg(hw, dsp_reg_array[i],
        &phy_data);
    if (ret_val)
     return ret_val;
    phy_data &= ~0xC000;
    phy_data |=
        0x8000;
    ret_val = em_write_phy_reg(hw,
        dsp_reg_array[i], phy_data);
    if (ret_val)
     return ret_val;
   }
   ret_val = em_write_phy_reg(hw, 0x0000,
       0x3300);
   if (ret_val)
    return ret_val;
   delay(1000*(20));
   ret_val = em_write_phy_reg(hw, 0x2F5B, phy_saved_data);
   if (ret_val)
    return ret_val;
   hw->dsp_config_state = em_dsp_config_enabled;
  }
  if (hw->ffe_config_state == em_ffe_config_active) {
   ret_val = em_read_phy_reg(hw, 0x2F5B, &phy_saved_data);
   if (ret_val)
    return ret_val;
   ret_val = em_write_phy_reg(hw, 0x2F5B, 0x0003);
   if (ret_val)
    return ret_val;
   delay(1000*(20));
   ret_val = em_write_phy_reg(hw, 0x0000,
       0x0140);
   if (ret_val)
    return ret_val;
   ret_val = em_write_phy_reg(hw, 0x1F35,
       0x002A);
   if (ret_val)
    return ret_val;
   ret_val = em_write_phy_reg(hw, 0x0000,
       0x3300);
   if (ret_val)
    return ret_val;
   delay(1000*(20));
   ret_val = em_write_phy_reg(hw, 0x2F5B, phy_saved_data);
   if (ret_val)
    return ret_val;
   hw->ffe_config_state = em_ffe_config_enabled;
  }
 }
 return 0;
}
static int32_t
em_set_phy_mode(struct em_hw *hw)
{
 int32_t ret_val;
 uint16_t eeprom_data;
 ;;
 if ((hw->mac_type == em_82545_rev_3) &&
     (hw->media_type == em_media_type_copper)) {
  ret_val = em_read_eeprom(hw, 0x0007, 1,
      &eeprom_data);
  if (ret_val) {
   return ret_val;
  }
  if ((eeprom_data != 0xFFFF) &&
      (eeprom_data & 0x8000)) {
   ret_val = em_write_phy_reg(hw,
       0x1D, 0x000B);
   if (ret_val)
    return ret_val;
   ret_val = em_write_phy_reg(hw,
       0x1E, 0x8104);
   if (ret_val)
    return ret_val;
   hw->phy_reset_disable = 0;
  }
 }
 return 0;
}
 int32_t
em_set_d3_lplu_state(struct em_hw *hw, boolean_t active)
{
 uint32_t phy_ctrl = 0;
 int32_t ret_val;
 uint16_t phy_data;
 ;;
 if (hw->phy_type != em_phy_igp && hw->phy_type != em_phy_igp_2
     && hw->phy_type != em_phy_igp_3)
  return 0;
 if (hw->mac_type == em_82541_rev_2 || hw->mac_type == em_82547_rev_2) {
  ret_val = em_read_phy_reg(hw, 0x14, &phy_data);
  if (ret_val)
   return ret_val;
 } else if ((hw->mac_type == em_ich8lan || hw->mac_type == em_ich9lan || hw->mac_type == em_ich10lan || hw->mac_type == em_pchlan || hw->mac_type == em_pch2lan || hw->mac_type == em_pch_lpt || hw->mac_type == em_pch_spt)) {
  phy_ctrl = bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00F10 : 0x00F10));
 } else {
  ret_val = em_read_phy_reg(hw, 0x19,
      &phy_data);
  if (ret_val)
   return ret_val;
 }
 if (!active) {
  if (hw->mac_type == em_82541_rev_2 ||
      hw->mac_type == em_82547_rev_2) {
   phy_data &= ~0x10;
   ret_val = em_write_phy_reg(hw, 0x14,
       phy_data);
   if (ret_val)
    return ret_val;
  } else {
   if ((hw->mac_type == em_ich8lan || hw->mac_type == em_ich9lan || hw->mac_type == em_ich10lan || hw->mac_type == em_pchlan || hw->mac_type == em_pch2lan || hw->mac_type == em_pch_lpt || hw->mac_type == em_pch_spt)) {
    phy_ctrl &= ~0x00000004;
    bus_space_write_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00F10 : 0x00F10), phy_ctrl);
   } else {
    phy_data &= ~0x0004;
    ret_val = em_write_phy_reg(hw,
        0x19, phy_data);
    if (ret_val)
     return ret_val;
   }
  }
  if (hw->smart_speed == em_smart_speed_on) {
   ret_val = em_read_phy_reg(hw,
       0x10, &phy_data);
   if (ret_val)
    return ret_val;
   phy_data |= 0x0080;
   ret_val = em_write_phy_reg(hw,
       0x10, phy_data);
   if (ret_val)
    return ret_val;
  } else if (hw->smart_speed == em_smart_speed_off) {
   ret_val = em_read_phy_reg(hw,
       0x10, &phy_data);
   if (ret_val)
    return ret_val;
   phy_data &= ~0x0080;
   ret_val = em_write_phy_reg(hw,
       0x10, phy_data);
   if (ret_val)
    return ret_val;
  }
 } else if ((hw->autoneg_advertised == 0x002F)
     || (hw->autoneg_advertised == 0x0003) ||
     (hw->autoneg_advertised == 0x000F)) {
  if (hw->mac_type == em_82541_rev_2 ||
      hw->mac_type == em_82547_rev_2) {
   phy_data |= 0x10;
   ret_val = em_write_phy_reg(hw, 0x14,
       phy_data);
   if (ret_val)
    return ret_val;
  } else {
   if ((hw->mac_type == em_ich8lan || hw->mac_type == em_ich9lan || hw->mac_type == em_ich10lan || hw->mac_type == em_pchlan || hw->mac_type == em_pch2lan || hw->mac_type == em_pch_lpt || hw->mac_type == em_pch_spt)) {
    phy_ctrl |= 0x00000004;
    bus_space_write_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00F10 : 0x00F10), phy_ctrl);
   } else {
    phy_data |= 0x0004;
    ret_val = em_write_phy_reg(hw,
        0x19, phy_data);
    if (ret_val)
     return ret_val;
   }
  }
  ret_val = em_read_phy_reg(hw, 0x10,
      &phy_data);
  if (ret_val)
   return ret_val;
  phy_data &= ~0x0080;
  ret_val = em_write_phy_reg(hw, 0x10,
      phy_data);
  if (ret_val)
   return ret_val;
 }
 return 0;
}
 int32_t
em_set_d0_lplu_state(struct em_hw *hw, boolean_t active)
{
 uint32_t phy_ctrl = 0;
 int32_t ret_val;
 uint16_t phy_data;
 ;;
 if (hw->mac_type <= em_82547_rev_2)
  return 0;
 if ((hw->mac_type == em_ich8lan || hw->mac_type == em_ich9lan || hw->mac_type == em_ich10lan || hw->mac_type == em_pchlan || hw->mac_type == em_pch2lan || hw->mac_type == em_pch_lpt || hw->mac_type == em_pch_spt)) {
  phy_ctrl = bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00F10 : 0x00F10));
 } else {
  ret_val = em_read_phy_reg(hw, 0x19,
      &phy_data);
  if (ret_val)
   return ret_val;
 }
 if (!active) {
  if ((hw->mac_type == em_ich8lan || hw->mac_type == em_ich9lan || hw->mac_type == em_ich10lan || hw->mac_type == em_pchlan || hw->mac_type == em_pch2lan || hw->mac_type == em_pch_lpt || hw->mac_type == em_pch_spt)) {
   phy_ctrl &= ~0x00000002;
   bus_space_write_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00F10 : 0x00F10), phy_ctrl);
  } else {
   phy_data &= ~0x0002;
   ret_val = em_write_phy_reg(hw,
       0x19, phy_data);
   if (ret_val)
    return ret_val;
  }
  if (hw->smart_speed == em_smart_speed_on) {
   ret_val = em_read_phy_reg(hw,
       0x10, &phy_data);
   if (ret_val)
    return ret_val;
   phy_data |= 0x0080;
   ret_val = em_write_phy_reg(hw,
       0x10, phy_data);
   if (ret_val)
    return ret_val;
  } else if (hw->smart_speed == em_smart_speed_off) {
   ret_val = em_read_phy_reg(hw,
       0x10, &phy_data);
   if (ret_val)
    return ret_val;
   phy_data &= ~0x0080;
   ret_val = em_write_phy_reg(hw,
       0x10, phy_data);
   if (ret_val)
    return ret_val;
  }
 } else {
  if ((hw->mac_type == em_ich8lan || hw->mac_type == em_ich9lan || hw->mac_type == em_ich10lan || hw->mac_type == em_pchlan || hw->mac_type == em_pch2lan || hw->mac_type == em_pch_lpt || hw->mac_type == em_pch_spt)) {
   phy_ctrl |= 0x00000002;
   bus_space_write_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00F10 : 0x00F10), phy_ctrl);
  } else {
   phy_data |= 0x0002;
   ret_val = em_write_phy_reg(hw,
       0x19, phy_data);
   if (ret_val)
    return ret_val;
  }
  ret_val = em_read_phy_reg(hw, 0x10,
      &phy_data);
  if (ret_val)
   return ret_val;
  phy_data &= ~0x0080;
  ret_val = em_write_phy_reg(hw, 0x10,
      phy_data);
  if (ret_val)
   return ret_val;
 }
 return 0;
}
int32_t
em_set_lplu_state_pchlan(struct em_hw *hw, boolean_t active)
{
 int32_t ret_val = 0;
 uint16_t oem_reg;
 ;;
 ret_val = em_read_phy_reg(hw, (((768) << 5) | ((25) & 0x1F)), &oem_reg);
 if (ret_val)
  goto out;
 if (active)
  oem_reg |= 0x0004;
 else
  oem_reg &= ~0x0004;
 oem_reg |= 0x0400;
 ret_val = em_write_phy_reg(hw, (((768) << 5) | ((25) & 0x1F)), oem_reg);
out:
 return ret_val;
}
static int32_t
em_set_vco_speed(struct em_hw *hw)
{
 int32_t ret_val;
 uint16_t default_page = 0;
 uint16_t phy_data;
 ;;
 switch (hw->mac_type) {
 case em_82545_rev_3:
 case em_82546_rev_3:
  break;
 default:
  return 0;
 }
 ret_val = em_read_phy_reg(hw, 0x1D, &default_page);
 if (ret_val)
  return ret_val;
 ret_val = em_write_phy_reg(hw, 0x1D, 0x0005);
 if (ret_val)
  return ret_val;
 ret_val = em_read_phy_reg(hw, 0x1E, &phy_data);
 if (ret_val)
  return ret_val;
 phy_data &= ~0x100;
 ret_val = em_write_phy_reg(hw, 0x1E, phy_data);
 if (ret_val)
  return ret_val;
 ret_val = em_write_phy_reg(hw, 0x1D, 0x0004);
 if (ret_val)
  return ret_val;
 ret_val = em_read_phy_reg(hw, 0x1E, &phy_data);
 if (ret_val)
  return ret_val;
 phy_data |= 0x800;
 ret_val = em_write_phy_reg(hw, 0x1E, phy_data);
 if (ret_val)
  return ret_val;
 ret_val = em_write_phy_reg(hw, 0x1D, default_page);
 if (ret_val)
  return ret_val;
 return 0;
}
 int32_t
em_host_if_read_cookie(struct em_hw *hw, uint8_t *buffer)
{
 uint8_t i;
 uint32_t offset = 0x6F0;
 uint8_t length = 0x10;
 length = (length >> 2);
 offset = (offset >> 2);
 for (i = 0; i < length; i++) {
  *((uint32_t *) buffer + i) =
      bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x08800 : 0x08800) + ((offset + i) << 2));
 }
 return 0;
}
 int32_t
em_mng_enable_host_if(struct em_hw *hw)
{
 uint32_t hicr;
 uint8_t i;
 hicr = bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x08F00 : 0x08F00));
 if ((hicr & 0x00000001) == 0) {
  ;
  return -11;
 }
 for (i = 0; i < 10; i++) {
  hicr = bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x08F00 : 0x08F00));
  if (!(hicr & 0x00000002))
   break;
  delay(1000*(1));
 }
 if (i == 10) {
  ;
  return -11;
 }
 return 0;
}
boolean_t
em_check_mng_mode(struct em_hw *hw)
{
 uint32_t fwsm;
 fwsm = bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x05B54 : 0x05B54));
 if ((hw->mac_type == em_ich8lan || hw->mac_type == em_ich9lan || hw->mac_type == em_ich10lan || hw->mac_type == em_pchlan || hw->mac_type == em_pch2lan || hw->mac_type == em_pch_lpt || hw->mac_type == em_pch_spt)) {
  if ((fwsm & 0x0000000E) ==
      (0x2 << 1))
   return 1;
 } else if ((fwsm & 0x0000000E) ==
     (0x3 << 1))
  return 1;
 return 0;
}
 uint8_t
em_calculate_mng_checksum(char *buffer, uint32_t length)
{
 uint8_t sum = 0;
 uint32_t i;
 if (!buffer)
  return 0;
 for (i = 0; i < length; i++)
  sum += buffer[i];
 return (uint8_t) (0 - sum);
}
boolean_t
em_enable_tx_pkt_filtering(struct em_hw *hw)
{
 int32_t ret_val, checksum;
 boolean_t tx_filter = 0;
 struct em_host_mng_dhcp_cookie *hdr = &(hw->mng_cookie);
 uint8_t *buffer = (uint8_t *) & (hw->mng_cookie);
 if (em_check_mng_mode(hw)) {
  ret_val = em_mng_enable_host_if(hw);
  if (ret_val == 0) {
   ret_val = em_host_if_read_cookie(hw, buffer);
   if (ret_val == 0) {
    checksum = hdr->checksum;
    hdr->checksum = 0;
    if ((hdr->signature == 0x544D4149) &&
        checksum == em_calculate_mng_checksum(
        (char *) buffer,
        0x10)) {
     if (hdr->status &
         0x1)
      tx_filter = 1;
    } else
     tx_filter = 1;
   } else
    tx_filter = 1;
  }
 }
 hw->tx_pkt_filtering = tx_filter;
 return tx_filter;
}
static int32_t
em_polarity_reversal_workaround(struct em_hw *hw)
{
 int32_t ret_val;
 uint16_t mii_status_reg;
 uint16_t i;
 ret_val = em_write_phy_reg(hw, 0x1D, 0x0019);
 if (ret_val)
  return ret_val;
 ret_val = em_write_phy_reg(hw, 0x1E, 0xFFFF);
 if (ret_val)
  return ret_val;
 ret_val = em_write_phy_reg(hw, 0x1D, 0x0000);
 if (ret_val)
  return ret_val;
 for (i = 20; i > 0; i--) {
  ret_val = em_read_phy_reg(hw, 0x01, &mii_status_reg);
  if (ret_val)
   return ret_val;
  ret_val = em_read_phy_reg(hw, 0x01, &mii_status_reg);
  if (ret_val)
   return ret_val;
  if ((mii_status_reg & ~0x0004) == 0)
   break;
  delay(1000*(100));
 }
 delay(1000*(1000));
 ret_val = em_write_phy_reg(hw, 0x1D, 0x0019);
 if (ret_val)
  return ret_val;
 delay(1000*(50));
 ret_val = em_write_phy_reg(hw, 0x1E, 0xFFF0);
 if (ret_val)
  return ret_val;
 delay(1000*(50));
 ret_val = em_write_phy_reg(hw, 0x1E, 0xFF00);
 if (ret_val)
  return ret_val;
 delay(1000*(50));
 ret_val = em_write_phy_reg(hw, 0x1E, 0x0000);
 if (ret_val)
  return ret_val;
 ret_val = em_write_phy_reg(hw, 0x1D, 0x0000);
 if (ret_val)
  return ret_val;
 for (i = 20; i > 0; i--) {
  ret_val = em_read_phy_reg(hw, 0x01, &mii_status_reg);
  if (ret_val)
   return ret_val;
  ret_val = em_read_phy_reg(hw, 0x01, &mii_status_reg);
  if (ret_val)
   return ret_val;
  if (mii_status_reg & 0x0004)
   break;
  delay(1000*(100));
 }
 return 0;
}
 void
em_set_pci_express_master_disable(struct em_hw *hw)
{
 uint32_t ctrl;
 ;;
 if (hw->bus_type != em_bus_type_pci_express)
  return;
 ctrl = bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00000 : 0x00000));
 ctrl |= 0x00000004;
 bus_space_write_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00000 : 0x00000), ctrl);
}
int32_t
em_disable_pciex_master(struct em_hw *hw)
{
 int32_t timeout = 800;
 ;;
 if (hw->bus_type != em_bus_type_pci_express)
  return 0;
 em_set_pci_express_master_disable(hw);
 while (timeout) {
  if (!(bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00008 : 0x00008)) &
      0x00080000))
   break;
  else
   delay(100);
  timeout--;
 }
 if (!timeout) {
  ;
  return -10;
 }
 return 0;
}
 int32_t
em_get_auto_rd_done(struct em_hw *hw)
{
 int32_t timeout = 10;
 ;;
 switch (hw->mac_type) {
 default:
  delay(1000*(5));
  break;
 case em_82571:
 case em_82572:
 case em_82573:
 case em_82574:
 case em_82575:
 case em_82580:
 case em_80003es2lan:
 case em_i210:
 case em_i350:
 case em_ich8lan:
 case em_ich9lan:
 case em_ich10lan:
 case em_pchlan:
 case em_pch2lan:
 case em_pch_lpt:
 case em_pch_spt:
  while (timeout) {
   if (bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00010 : 0x00010)) & 0x00000200)
    break;
   else
    delay(1000*(1));
   timeout--;
  }
  if (!timeout) {
   ;
   return -9;
  }
  break;
 }
 if ((hw->mac_type == em_82573) || (hw->mac_type == em_82574))
  delay(1000*(25));
 return 0;
}
 int32_t
em_get_phy_cfg_done(struct em_hw *hw)
{
 int32_t timeout = 100;
 uint32_t cfg_mask = 0x040000;
 ;;
 switch (hw->mac_type) {
 default:
  delay(1000*(10));
  break;
 case em_80003es2lan:
 case em_82575:
 case em_82580:
 case em_i350:
  switch (hw->bus_func) {
  case 1:
   cfg_mask = 0x080000;
   break;
  case 2:
   cfg_mask = 0x100000;
   break;
  case 3:
   cfg_mask = 0x200000;
   break;
  }
 case em_82571:
 case em_82572:
  while (timeout) {
   if (bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x01010 : 0x01010)) & cfg_mask)
    break;
   else
    delay(1000*(1));
   timeout--;
  }
  if (!timeout) {
   ;
  }
  break;
 }
 return 0;
}
 int32_t
em_get_hw_eeprom_semaphore(struct em_hw *hw)
{
 int32_t timeout;
 uint32_t swsm;
 ;;
 if (!hw->eeprom_semaphore_present)
  return 0;
 if (hw->mac_type == em_80003es2lan) {
  if (em_get_software_semaphore(hw) != 0)
   return -1;
 }
 timeout = hw->eeprom.word_size + 1;
 while (timeout) {
  swsm = bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x05B50 : 0x05B50));
  swsm |= 0x00000002;
  bus_space_write_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x05B50 : 0x05B50), swsm);
  swsm = bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x05B50 : 0x05B50));
  if (swsm & 0x00000002)
   break;
  delay(50);
  timeout--;
 }
 if (!timeout) {
  em_put_hw_eeprom_semaphore(hw);
  ;
  return -1;
 }
 return 0;
}
 void
em_put_hw_eeprom_semaphore(struct em_hw *hw)
{
 uint32_t swsm;
 ;;
 if (!hw->eeprom_semaphore_present)
  return;
 swsm = bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x05B50 : 0x05B50));
 if (hw->mac_type == em_80003es2lan) {
  swsm &= ~(0x00000001 | 0x00000002);
 } else
  swsm &= ~(0x00000002);
 bus_space_write_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x05B50 : 0x05B50), swsm);
}
 int32_t
em_get_software_semaphore(struct em_hw *hw)
{
 int32_t timeout = hw->eeprom.word_size + 1;
 uint32_t swsm;
 ;;
 if (hw->mac_type != em_80003es2lan)
  return 0;
 while (timeout) {
  swsm = bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x05B50 : 0x05B50));
  if (!(swsm & 0x00000001))
   break;
  delay(1000*(1));
  timeout--;
 }
 if (!timeout) {
  ;
  return -9;
 }
 return 0;
}
 void
em_release_software_semaphore(struct em_hw *hw)
{
 uint32_t swsm;
 ;;
 if (hw->mac_type != em_80003es2lan)
  return;
 swsm = bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x05B50 : 0x05B50));
 swsm &= ~0x00000001;
 bus_space_write_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x05B50 : 0x05B50), swsm);
}
int32_t
em_check_phy_reset_block(struct em_hw *hw)
{
 uint32_t manc = 0;
 uint32_t fwsm = 0;
 ;;
 if ((hw->mac_type == em_ich8lan || hw->mac_type == em_ich9lan || hw->mac_type == em_ich10lan || hw->mac_type == em_pchlan || hw->mac_type == em_pch2lan || hw->mac_type == em_pch_lpt || hw->mac_type == em_pch_spt)) {
  fwsm = bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x05B54 : 0x05B54));
  return (fwsm & 0x00000040) ? 0 :
      12;
 }
 if (hw->mac_type > em_82547_rev_2)
  manc = bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x05820 : 0x05820));
 return (manc & 0x00040000) ?
     12 : 0;
}
 int32_t
em_set_pci_ex_no_snoop(struct em_hw *hw, uint32_t no_snoop)
{
 uint32_t gcr_reg = 0;
 ;;
 if (hw->bus_type == em_bus_type_unknown)
  em_get_bus_info(hw);
 if (hw->bus_type != em_bus_type_pci_express)
  return 0;
 if (no_snoop) {
  gcr_reg = bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x05B00 : 0x05B00));
  gcr_reg &= ~((0x00000001 | 0x00000002 | 0x00000004 | 0x00000008 | 0x00000010 | 0x00000020));
  gcr_reg |= no_snoop;
  bus_space_write_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x05B00 : 0x05B00), gcr_reg);
 }
 if ((hw->mac_type == em_ich8lan || hw->mac_type == em_ich9lan || hw->mac_type == em_ich10lan || hw->mac_type == em_pchlan || hw->mac_type == em_pch2lan || hw->mac_type == em_pch_lpt || hw->mac_type == em_pch_spt)) {
  uint32_t ctrl_ext;
  ctrl_ext = bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00018 : 0x00018));
  ctrl_ext |= 0x00020000;
  bus_space_write_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00018 : 0x00018), ctrl_ext);
 }
 return 0;
}
 int32_t
em_get_software_flag(struct em_hw *hw)
{
 int32_t timeout = 100;
 uint32_t extcnf_ctrl;
 ;;
 if ((hw->mac_type == em_ich8lan || hw->mac_type == em_ich9lan || hw->mac_type == em_ich10lan || hw->mac_type == em_pchlan || hw->mac_type == em_pch2lan || hw->mac_type == em_pch_lpt || hw->mac_type == em_pch_spt)) {
  while (timeout) {
   extcnf_ctrl = bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00F00 : 0x00F00));
   extcnf_ctrl |= 0x00000020;
   bus_space_write_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00F00 : 0x00F00), extcnf_ctrl);
   extcnf_ctrl = bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00F00 : 0x00F00));
   if (extcnf_ctrl & 0x00000020)
    break;
   delay(1000*(1));
   timeout--;
  }
  if (!timeout) {
   ;
   return -3;
  }
 }
 return 0;
}
 void
em_release_software_flag(struct em_hw *hw)
{
 uint32_t extcnf_ctrl;
 ;;
 if ((hw->mac_type == em_ich8lan || hw->mac_type == em_ich9lan || hw->mac_type == em_ich10lan || hw->mac_type == em_pchlan || hw->mac_type == em_pch2lan || hw->mac_type == em_pch_lpt || hw->mac_type == em_pch_spt)) {
  extcnf_ctrl = bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00F00 : 0x00F00));
  extcnf_ctrl &= ~0x00000020;
  bus_space_write_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00F00 : 0x00F00), extcnf_ctrl);
 }
 return;
}
int32_t
em_valid_nvm_bank_detect_ich8lan(struct em_hw *hw, uint32_t *bank)
{
 uint32_t eecd;
 uint32_t bank1_offset = hw->flash_bank_size * sizeof(uint16_t);
 uint32_t act_offset = 0x13 * 2 + 1;
 uint32_t nvm_dword = 0;
 uint8_t sig_byte = 0;
 int32_t ret_val;
 ;;
 switch (hw->mac_type) {
 case em_pch_spt:
  bank1_offset = hw->flash_bank_size * 2;
  act_offset = 0x13 * 2;
  *bank = 0;
  ret_val = em_read_ich8_dword(hw, act_offset, &nvm_dword);
  if (ret_val)
   return ret_val;
  sig_byte = (uint8_t)((nvm_dword & 0xFF00) >> 8);
  if ((sig_byte & 0xC0) ==
      0x80) {
   *bank = 0;
   return 0;
  }
  ret_val = em_read_ich8_dword(hw, act_offset + bank1_offset,
      &nvm_dword);
  if (ret_val)
   return ret_val;
  sig_byte = (uint8_t)((nvm_dword & 0xFF00) >> 8);
  if ((sig_byte & 0xC0) ==
      0x80) {
   *bank = 1;
   return 0;
  }
  ;
  return -1;
 case em_ich8lan:
 case em_ich9lan:
  eecd = bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00010 : 0x00010));
  if ((eecd & (0x00000200 | 0x00000100)) ==
      (0x00000200 | 0x00000100)) {
   if (eecd & 0x00400000)
    *bank = 1;
   else
    *bank = 0;
   return 0;
  }
  ;
 default:
  *bank = 0;
  ret_val = em_read_ich8_byte(hw, act_offset,
       &sig_byte);
  if (ret_val)
   return ret_val;
  if ((sig_byte & 0xC0) ==
      0x80) {
   *bank = 0;
   return 0;
  }
  ret_val = em_read_ich8_byte(hw, act_offset +
       bank1_offset,
       &sig_byte);
  if (ret_val)
   return ret_val;
  if ((sig_byte & 0xC0) ==
      0x80) {
   *bank = 1;
   return 0;
  }
  ;
  return -1;
 }
}
 int32_t
em_read_eeprom_spt(struct em_hw *hw, uint16_t offset, uint16_t words,
    uint16_t *data)
{
 int32_t error = 0;
 uint32_t flash_bank = 0;
 uint32_t act_offset = 0;
 uint32_t bank_offset = 0;
 uint32_t dword = 0;
 uint16_t i = 0, add;
 if (hw->mac_type != em_pch_spt)
  return -1;
 error = em_get_software_flag(hw);
 if (error != 0)
  return error;
 error = em_valid_nvm_bank_detect_ich8lan(hw, &flash_bank);
 if (error != 0) {
  ;
  flash_bank = 0;
 }
 bank_offset = flash_bank * (hw->flash_bank_size * 2);
 for (i = add = 0; i < words; i += add) {
  if ((offset + i) % 2) {
   add = 1;
   if (hw->eeprom_shadow_ram != ((void *)0)
       && hw->eeprom_shadow_ram[offset + i].modified) {
    data[i] =
        hw->eeprom_shadow_ram[offset+i].eeprom_word;
    continue;
   }
   act_offset = bank_offset + (offset + i - 1) * 2;
  } else {
   add = 2;
   if (hw->eeprom_shadow_ram != ((void *)0)
       && hw->eeprom_shadow_ram[offset+i].modified
       && hw->eeprom_shadow_ram[offset+i+1].modified) {
    data[i] = hw->eeprom_shadow_ram[offset+i].eeprom_word;
    data[i+1] = hw->eeprom_shadow_ram[offset+i+1].eeprom_word;
    continue;
   }
   act_offset = bank_offset + (offset + i) * 2;
  }
  error = em_read_ich8_dword(hw, act_offset, &dword);
  if (error != 0)
   break;
  if (hw->eeprom_shadow_ram != ((void *)0)
      && hw->eeprom_shadow_ram[offset+i].modified) {
   data[i] = hw->eeprom_shadow_ram[offset+i].eeprom_word;
  } else {
   if (add == 1)
    data[i] = dword >> 16;
   else
    data[i] = dword & 0xFFFFUL;
  }
  if (add == 1 || words-i == 1)
   continue;
  if (hw->eeprom_shadow_ram != ((void *)0)
      && hw->eeprom_shadow_ram[offset+i+1].modified) {
   data[i+1] =
       hw->eeprom_shadow_ram[offset+i+1].eeprom_word;
  } else {
   data[i+1] = dword >> 16;
  }
 }
 em_release_software_flag(hw);
 return error;
}
 int32_t
em_read_eeprom_ich8(struct em_hw *hw, uint16_t offset, uint16_t words,
    uint16_t *data)
{
 int32_t error = 0;
 uint32_t flash_bank = 0;
 uint32_t act_offset = 0;
 uint32_t bank_offset = 0;
 uint16_t word = 0;
 uint16_t i = 0;
 if (hw->mac_type == em_pch_spt)
  return em_read_eeprom_spt(hw, offset, words, data);
 error = em_get_software_flag(hw);
 if (error != 0)
  return error;
 error = em_valid_nvm_bank_detect_ich8lan(hw, &flash_bank);
 if (error != 0) {
  ;
  flash_bank = 0;
 }
 bank_offset = flash_bank * (hw->flash_bank_size * 2);
 for (i = 0; i < words; i++) {
  if (hw->eeprom_shadow_ram != ((void *)0) &&
      hw->eeprom_shadow_ram[offset + i].modified == 1) {
   data[i] =
       hw->eeprom_shadow_ram[offset + i].eeprom_word;
  } else {
   act_offset = bank_offset + ((offset + i) * 2);
   error = em_read_ich8_word(hw, act_offset, &word);
   if (error != 0)
    break;
   data[i] = word;
  }
 }
 em_release_software_flag(hw);
 return error;
}
 int32_t
em_write_eeprom_ich8(struct em_hw *hw, uint16_t offset, uint16_t words,
    uint16_t *data)
{
 uint32_t i = 0;
 int32_t error = 0;
 error = em_get_software_flag(hw);
 if (error != 0)
  return error;
 if (hw->eeprom_shadow_ram != ((void *)0)) {
  for (i = 0; i < words; i++) {
   if ((offset + i) < 2048) {
    hw->eeprom_shadow_ram[offset + i].modified =
        1;
    hw->eeprom_shadow_ram[offset + i].eeprom_word =
        data[i];
   } else {
    error = -1;
    break;
   }
  }
 } else {
  error = -1;
 }
 em_release_software_flag(hw);
 return error;
}
 int32_t
em_ich8_cycle_init(struct em_hw *hw)
{
 union ich8_hws_flash_status hsfsts;
 int32_t error = 1;
 int32_t i = 0;
 ;;
 if (hw->mac_type == em_pch_spt)
  hsfsts.regval = bus_space_read_4(((struct em_osdep *)(hw)->back)->flash_bus_space_tag, ((struct em_osdep *)(hw)->back)->flash_bus_space_handle, ((struct em_osdep *)(hw)->back)->em_flashoffset + 0x0004) & 0xFFFFUL;
 else
  hsfsts.regval = bus_space_read_2(((struct em_osdep *)(hw)->back)->flash_bus_space_tag, ((struct em_osdep *)(hw)->back)->flash_bus_space_handle, ((struct em_osdep *)(hw)->back)->em_flashoffset + 0x0004);
 if (hsfsts.hsf_status.fldesvalid == 0) {
  ;
  return error;
 }
 hsfsts.hsf_status.flcerr = 1;
 hsfsts.hsf_status.dael = 1;
 if (hw->mac_type == em_pch_spt)
  bus_space_write_4(((struct em_osdep *)(hw)->back)->flash_bus_space_tag, ((struct em_osdep *)(hw)->back)->flash_bus_space_handle, ((struct em_osdep *)(hw)->back)->em_flashoffset + 0x0004, hsfsts.regval & 0xFFFFUL);
 else
  bus_space_write_2(((struct em_osdep *)(hw)->back)->flash_bus_space_tag, ((struct em_osdep *)(hw)->back)->flash_bus_space_handle, ((struct em_osdep *)(hw)->back)->em_flashoffset + 0x0004, hsfsts.regval);
 if (hsfsts.hsf_status.flcinprog == 0) {
  hsfsts.hsf_status.flcdone = 1;
  if (hw->mac_type == em_pch_spt)
   bus_space_write_4(((struct em_osdep *)(hw)->back)->flash_bus_space_tag, ((struct em_osdep *)(hw)->back)->flash_bus_space_handle, ((struct em_osdep *)(hw)->back)->em_flashoffset + 0x0004, hsfsts.regval & 0xFFFFUL);
  else
   bus_space_write_2(((struct em_osdep *)(hw)->back)->flash_bus_space_tag, ((struct em_osdep *)(hw)->back)->flash_bus_space_handle, ((struct em_osdep *)(hw)->back)->em_flashoffset + 0x0004, hsfsts.regval);
  error = 0;
 } else {
  for (i = 0; i < 5000; i++) {
   if (hw->mac_type == em_pch_spt)
    hsfsts.regval = bus_space_read_4(((struct em_osdep *)(hw)->back)->flash_bus_space_tag, ((struct em_osdep *)(hw)->back)->flash_bus_space_handle, ((struct em_osdep *)(hw)->back)->em_flashoffset + 0x0004) & 0xFFFFUL;
   else
    hsfsts.regval = bus_space_read_2(((struct em_osdep *)(hw)->back)->flash_bus_space_tag, ((struct em_osdep *)(hw)->back)->flash_bus_space_handle, ((struct em_osdep *)(hw)->back)->em_flashoffset + 0x0004);
   if (hsfsts.hsf_status.flcinprog == 0) {
    error = 0;
    break;
   }
   delay(1);
  }
  if (error == 0) {
   hsfsts.hsf_status.flcdone = 1;
   if (hw->mac_type == em_pch_spt)
    bus_space_write_4(((struct em_osdep *)(hw)->back)->flash_bus_space_tag, ((struct em_osdep *)(hw)->back)->flash_bus_space_handle, ((struct em_osdep *)(hw)->back)->em_flashoffset + 0x0004, hsfsts.regval & 0xFFFFUL);
   else
    bus_space_write_2(((struct em_osdep *)(hw)->back)->flash_bus_space_tag, ((struct em_osdep *)(hw)->back)->flash_bus_space_handle, ((struct em_osdep *)(hw)->back)->em_flashoffset + 0x0004, hsfsts.regval);
  } else {
   ;
  }
 }
 return error;
}
 int32_t
em_ich8_flash_cycle(struct em_hw *hw, uint32_t timeout)
{
 union ich8_hws_flash_ctrl hsflctl;
 union ich8_hws_flash_status hsfsts;
 int32_t error = 1;
 uint32_t i = 0;
 if (hw->mac_type == em_pch_spt)
  hsflctl.regval = bus_space_read_4(((struct em_osdep *)(hw)->back)->flash_bus_space_tag, ((struct em_osdep *)(hw)->back)->flash_bus_space_handle, ((struct em_osdep *)(hw)->back)->em_flashoffset + 0x0004) >> 16;
 else
  hsflctl.regval = bus_space_read_2(((struct em_osdep *)(hw)->back)->flash_bus_space_tag, ((struct em_osdep *)(hw)->back)->flash_bus_space_handle, ((struct em_osdep *)(hw)->back)->em_flashoffset + 0x0006);
 hsflctl.hsf_ctrl.flcgo = 1;
 if (hw->mac_type == em_pch_spt)
  bus_space_write_4(((struct em_osdep *)(hw)->back)->flash_bus_space_tag, ((struct em_osdep *)(hw)->back)->flash_bus_space_handle, ((struct em_osdep *)(hw)->back)->em_flashoffset + 0x0004, (uint32_t)hsflctl.regval << 16);
 else
  bus_space_write_2(((struct em_osdep *)(hw)->back)->flash_bus_space_tag, ((struct em_osdep *)(hw)->back)->flash_bus_space_handle, ((struct em_osdep *)(hw)->back)->em_flashoffset + 0x0006, hsflctl.regval);
 do {
  if (hw->mac_type == em_pch_spt)
   hsfsts.regval = bus_space_read_4(((struct em_osdep *)(hw)->back)->flash_bus_space_tag, ((struct em_osdep *)(hw)->back)->flash_bus_space_handle, ((struct em_osdep *)(hw)->back)->em_flashoffset + 0x0004) & 0xFFFFUL;
  else
   hsfsts.regval = bus_space_read_2(((struct em_osdep *)(hw)->back)->flash_bus_space_tag, ((struct em_osdep *)(hw)->back)->flash_bus_space_handle, ((struct em_osdep *)(hw)->back)->em_flashoffset + 0x0004);
  if (hsfsts.hsf_status.flcdone == 1)
   break;
  delay(1);
  i++;
 } while (i < timeout);
 if (hsfsts.hsf_status.flcdone == 1 && hsfsts.hsf_status.flcerr == 0) {
  error = 0;
 }
 return error;
}
 int32_t
em_read_ich8_data(struct em_hw *hw, uint32_t index, uint32_t size,
    uint16_t *data)
{
 union ich8_hws_flash_status hsfsts;
 union ich8_hws_flash_ctrl hsflctl;
 uint32_t flash_linear_address;
 uint32_t flash_data = 0;
 int32_t error = -1;
 int32_t count = 0;
 ;;
 if (size < 1 || size > 2 || data == 0x0 ||
     index > 0x00FFFFFF)
  return error;
 flash_linear_address = (0x00FFFFFF & index) +
     hw->flash_base_addr;
 do {
  delay(1);
  error = em_ich8_cycle_init(hw);
  if (error != 0)
   break;
  hsflctl.regval = bus_space_read_2(((struct em_osdep *)(hw)->back)->flash_bus_space_tag, ((struct em_osdep *)(hw)->back)->flash_bus_space_handle, ((struct em_osdep *)(hw)->back)->em_flashoffset + 0x0006);
  hsflctl.hsf_ctrl.fldbcount = size - 1;
  hsflctl.hsf_ctrl.flcycle = 0x0;
  bus_space_write_2(((struct em_osdep *)(hw)->back)->flash_bus_space_tag, ((struct em_osdep *)(hw)->back)->flash_bus_space_handle, ((struct em_osdep *)(hw)->back)->em_flashoffset + 0x0006, hsflctl.regval);
  bus_space_write_4(((struct em_osdep *)(hw)->back)->flash_bus_space_tag, ((struct em_osdep *)(hw)->back)->flash_bus_space_handle, ((struct em_osdep *)(hw)->back)->em_flashoffset + 0x0008, flash_linear_address);
  error = em_ich8_flash_cycle(hw, 5000);
  if (error == 0) {
   flash_data = bus_space_read_4(((struct em_osdep *)(hw)->back)->flash_bus_space_tag, ((struct em_osdep *)(hw)->back)->flash_bus_space_handle, ((struct em_osdep *)(hw)->back)->em_flashoffset + 0x0010);
   if (size == 1) {
    *data = (uint8_t) (flash_data & 0x000000FF);
   } else if (size == 2) {
    *data = (uint16_t) (flash_data & 0x0000FFFF);
   }
   break;
  } else {
   hsfsts.regval = bus_space_read_2(((struct em_osdep *)(hw)->back)->flash_bus_space_tag, ((struct em_osdep *)(hw)->back)->flash_bus_space_handle, ((struct em_osdep *)(hw)->back)->em_flashoffset + 0x0004);
   if (hsfsts.hsf_status.flcerr == 1) {
    continue;
   } else if (hsfsts.hsf_status.flcdone == 0) {
    ;
    break;
   }
  }
 } while (count++ < 10);
 return error;
}
 int32_t
em_read_ich8_data32(struct em_hw *hw, uint32_t offset, uint32_t *data)
{
 union ich8_hws_flash_status hsfsts;
 union ich8_hws_flash_ctrl hsflctl;
 uint32_t flash_linear_address;
 int32_t error = -1;
 uint32_t count = 0;
 ;;
 if (hw->mac_type != em_pch_spt)
  return error;
 if (offset > 0x00FFFFFF)
  return error;
 flash_linear_address = (0x00FFFFFF & offset) +
     hw->flash_base_addr;
 do {
  delay(1);
  error = em_ich8_cycle_init(hw);
  if (error != 0)
   break;
  hsflctl.regval = bus_space_read_4(((struct em_osdep *)(hw)->back)->flash_bus_space_tag, ((struct em_osdep *)(hw)->back)->flash_bus_space_handle, ((struct em_osdep *)(hw)->back)->em_flashoffset + 0x0004) >> 16;
  hsflctl.hsf_ctrl.fldbcount = sizeof(uint32_t) - 1;
  hsflctl.hsf_ctrl.flcycle = 0x0;
  bus_space_write_4(((struct em_osdep *)(hw)->back)->flash_bus_space_tag, ((struct em_osdep *)(hw)->back)->flash_bus_space_handle, ((struct em_osdep *)(hw)->back)->em_flashoffset + 0x0004, (uint32_t)hsflctl.regval << 16);
  bus_space_write_4(((struct em_osdep *)(hw)->back)->flash_bus_space_tag, ((struct em_osdep *)(hw)->back)->flash_bus_space_handle, ((struct em_osdep *)(hw)->back)->em_flashoffset + 0x0008, flash_linear_address);
  error = em_ich8_flash_cycle(hw, 5000);
  if (error == 0) {
   (*data) = (uint32_t)bus_space_read_4(((struct em_osdep *)(hw)->back)->flash_bus_space_tag, ((struct em_osdep *)(hw)->back)->flash_bus_space_handle, ((struct em_osdep *)(hw)->back)->em_flashoffset + 0x0010);
   break;
  } else {
   hsfsts.regval = bus_space_read_2(((struct em_osdep *)(hw)->back)->flash_bus_space_tag, ((struct em_osdep *)(hw)->back)->flash_bus_space_handle, ((struct em_osdep *)(hw)->back)->em_flashoffset + 0x0004);
   if (hsfsts.hsf_status.flcerr == 1) {
    continue;
   } else if (hsfsts.hsf_status.flcdone == 0) {
    ;
    break;
   }
  }
 } while (count++ < 10);
 return error;
}
 int32_t
em_write_ich8_data(struct em_hw *hw, uint32_t index, uint32_t size,
    uint16_t data)
{
 union ich8_hws_flash_status hsfsts;
 union ich8_hws_flash_ctrl hsflctl;
 uint32_t flash_linear_address;
 uint32_t flash_data = 0;
 int32_t error = -1;
 int32_t count = 0;
 ;;
 if (hw->mac_type == em_pch_spt)
  return -1;
 if (size < 1 || size > 2 || data > size * 0xff ||
     index > 0x00FFFFFF)
  return error;
 flash_linear_address = (0x00FFFFFF & index) +
     hw->flash_base_addr;
 do {
  delay(1);
  error = em_ich8_cycle_init(hw);
  if (error != 0)
   break;
  hsflctl.regval = bus_space_read_2(((struct em_osdep *)(hw)->back)->flash_bus_space_tag, ((struct em_osdep *)(hw)->back)->flash_bus_space_handle, ((struct em_osdep *)(hw)->back)->em_flashoffset + 0x0006);
  hsflctl.hsf_ctrl.fldbcount = size - 1;
  hsflctl.hsf_ctrl.flcycle = 0x2;
  bus_space_write_2(((struct em_osdep *)(hw)->back)->flash_bus_space_tag, ((struct em_osdep *)(hw)->back)->flash_bus_space_handle, ((struct em_osdep *)(hw)->back)->em_flashoffset + 0x0006, hsflctl.regval);
  bus_space_write_4(((struct em_osdep *)(hw)->back)->flash_bus_space_tag, ((struct em_osdep *)(hw)->back)->flash_bus_space_handle, ((struct em_osdep *)(hw)->back)->em_flashoffset + 0x0008, flash_linear_address);
  if (size == 1)
   flash_data = (uint32_t) data & 0x00FF;
  else
   flash_data = (uint32_t) data;
  bus_space_write_4(((struct em_osdep *)(hw)->back)->flash_bus_space_tag, ((struct em_osdep *)(hw)->back)->flash_bus_space_handle, ((struct em_osdep *)(hw)->back)->em_flashoffset + 0x0010, flash_data);
  error = em_ich8_flash_cycle(hw, 5000);
  if (error == 0) {
   break;
  } else {
   hsfsts.regval = bus_space_read_2(((struct em_osdep *)(hw)->back)->flash_bus_space_tag, ((struct em_osdep *)(hw)->back)->flash_bus_space_handle, ((struct em_osdep *)(hw)->back)->em_flashoffset + 0x0004);
   if (hsfsts.hsf_status.flcerr == 1) {
    continue;
   } else if (hsfsts.hsf_status.flcdone == 0) {
    ;
    break;
   }
  }
 } while (count++ < 10);
 return error;
}
 int32_t
em_read_ich8_byte(struct em_hw *hw, uint32_t index, uint8_t *data)
{
 int32_t status = 0;
 uint16_t word = 0;
 if (hw->mac_type == em_pch_spt)
  return -1;
 else
  status = em_read_ich8_data(hw, index, 1, &word);
 if (status == 0) {
  *data = (uint8_t) word;
 }
 return status;
}
 int32_t
em_verify_write_ich8_byte(struct em_hw *hw, uint32_t index, uint8_t byte)
{
 int32_t error = 0;
 int32_t program_retries = 0;
 ;
 error = em_write_ich8_byte(hw, index, byte);
 if (error != 0) {
  for (program_retries = 0; program_retries < 100;
      program_retries++) {
   ;
   error = em_write_ich8_byte(hw, index, byte);
   delay(100);
   if (error == 0)
    break;
  }
 }
 if (program_retries == 100)
  error = 1;
 return error;
}
 int32_t
em_write_ich8_byte(struct em_hw *hw, uint32_t index, uint8_t data)
{
 int32_t status = 0;
 uint16_t word = (uint16_t) data;
 status = em_write_ich8_data(hw, index, 1, word);
 return status;
}
 int32_t
em_read_ich8_dword(struct em_hw *hw, uint32_t index, uint32_t *data)
{
 int32_t status = 0;
 status = em_read_ich8_data32(hw, index, data);
 return status;
}
 int32_t
em_read_ich8_word(struct em_hw *hw, uint32_t index, uint16_t *data)
{
 int32_t status = 0;
 status = em_read_ich8_data(hw, index, 2, data);
 return status;
}
int32_t
em_erase_ich8_4k_segment(struct em_hw *hw, uint32_t bank)
{
 union ich8_hws_flash_status hsfsts;
 union ich8_hws_flash_ctrl hsflctl;
 uint32_t flash_linear_address;
 int32_t count = 0;
 int32_t error = 1;
 int32_t iteration;
 int32_t sub_sector_size = 0;
 int32_t bank_size;
 int32_t j = 0;
 int32_t error_flag = 0;
 hsfsts.regval = bus_space_read_2(((struct em_osdep *)(hw)->back)->flash_bus_space_tag, ((struct em_osdep *)(hw)->back)->flash_bus_space_handle, ((struct em_osdep *)(hw)->back)->em_flashoffset + 0x0004);
 if (hsfsts.hsf_status.berasesz == 0x0) {
  sub_sector_size = 256;
  bank_size = 4096;
  iteration = 4096 / 256;
 } else if (hsfsts.hsf_status.berasesz == 0x1) {
  bank_size = 4096;
  iteration = 1;
 } else if (hsfsts.hsf_status.berasesz == 0x2) {
  if (hw->mac_type == em_ich9lan) {
   uint32_t gfpreg, sector_base_addr, sector_end_addr;
   gfpreg = bus_space_read_4(((struct em_osdep *)(hw)->back)->flash_bus_space_tag, ((struct em_osdep *)(hw)->back)->flash_bus_space_handle, ((struct em_osdep *)(hw)->back)->em_flashoffset + 0x0000);
   sector_base_addr = gfpreg & 0x1FFF;
   sector_end_addr =
       ((gfpreg >> 16) & 0x1FFF) + 1;
   bank_size = (sector_end_addr - sector_base_addr)
       << 12;
   bank_size /= 2;
   bank_size =
       (bank_size / sizeof(uint16_t)) * sizeof(uint16_t);
   sub_sector_size = 8192;
   iteration = bank_size / 8192;
  } else {
   return error;
  }
 } else if (hsfsts.hsf_status.berasesz == 0x3) {
  bank_size = 65536;
  iteration = 1;
 } else {
  return error;
 }
 for (j = 0; j < iteration; j++) {
  do {
   count++;
   error = em_ich8_cycle_init(hw);
   if (error != 0) {
    error_flag = 1;
    break;
   }
   hsflctl.regval = bus_space_read_2(((struct em_osdep *)(hw)->back)->flash_bus_space_tag, ((struct em_osdep *)(hw)->back)->flash_bus_space_handle, ((struct em_osdep *)(hw)->back)->em_flashoffset + 0x0006);
   hsflctl.hsf_ctrl.flcycle = 0x3;
   bus_space_write_2(((struct em_osdep *)(hw)->back)->flash_bus_space_tag, ((struct em_osdep *)(hw)->back)->flash_bus_space_handle, ((struct em_osdep *)(hw)->back)->em_flashoffset + 0x0006, hsflctl.regval);
   flash_linear_address =
       bank * bank_size + j * sub_sector_size;
   flash_linear_address += hw->flash_base_addr;
   flash_linear_address &= 0x00FFFFFF;
   bus_space_write_4(((struct em_osdep *)(hw)->back)->flash_bus_space_tag, ((struct em_osdep *)(hw)->back)->flash_bus_space_handle, ((struct em_osdep *)(hw)->back)->em_flashoffset + 0x0008, flash_linear_address);
   error =
       em_ich8_flash_cycle(hw, 3000000);
   if (error == 0) {
    break;
   } else {
    hsfsts.regval = bus_space_read_2(((struct em_osdep *)(hw)->back)->flash_bus_space_tag, ((struct em_osdep *)(hw)->back)->flash_bus_space_handle, ((struct em_osdep *)(hw)->back)->em_flashoffset + 0x0004);
    if (hsfsts.hsf_status.flcerr == 1) {
     continue;
    } else if (hsfsts.hsf_status.flcdone == 0) {
     error_flag = 1;
     break;
    }
   }
  } while ((count < 10) && !error_flag);
  if (error_flag == 1)
   break;
 }
 if (error_flag != 1)
  error = 0;
 return error;
}
 int32_t
em_read_invm_i210(struct em_hw *hw, uint16_t offset, uint16_t words,
    uint16_t *data)
{
 int32_t ret_val = 0;
 switch (offset)
 {
 case 0x0000:
 case 0x0001:
 case 0x0002:
  ret_val = em_read_invm_word_i210(hw, offset, data);
  if (ret_val != 0) {
   ;
   *data = 0xFFFF;
   ret_val = 0;
  }
  break;
 case 0x000F:
  ret_val = em_read_invm_word_i210(hw, offset, data);
  if (ret_val != 0) {
   *data = 0x7243;
   ret_val = 0;
  }
  break;
 case 0x0013:
  ret_val = em_read_invm_word_i210(hw, offset, data);
  if (ret_val != 0) {
   *data = 0x00C1;
   ret_val = 0;
  }
  break;
 case 0x001C:
  ret_val = em_read_invm_word_i210(hw, offset, data);
  if (ret_val != 0) {
   *data = 0x0184;
   ret_val = 0;
  }
  break;
 case 0x001F:
  ret_val = em_read_invm_word_i210(hw, offset, data);
  if (ret_val != 0) {
   *data = 0x200C;
   ret_val = 0;
  }
  break;
 case 0x0004:
  ret_val = em_read_invm_word_i210(hw, offset, data);
  if (ret_val != 0) {
   *data = 0xFFFF;
   ret_val = 0;
  }
  break;
 default:
  ;
  *data = 0xFFFF;
  break;
 }
 return ret_val;
}
 int32_t
em_read_invm_word_i210(struct em_hw *hw, uint16_t address, uint16_t *data)
{
 int32_t error = -14;
 uint32_t invm_dword;
 uint16_t i;
 uint8_t record_type, word_address;
 for (i = 0; i < 64; i++) {
  invm_dword = bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, (0x12120 + 4*(i)));
  record_type = ((invm_dword) & 0x7);
  if (record_type == 0x0)
   break;
  if (record_type == 0x2)
   i += 1;
  if (record_type == 0x4)
   i += 8;
  if (record_type == 0x1) {
   word_address = (((invm_dword) & 0x0000FE00) >> 9);
   if (word_address == address) {
    *data = (((invm_dword) & 0xFFFF0000) >> 16);
    error = 0;
    break;
   }
  }
 }
 return error;
}
 int32_t
em_init_lcd_from_nvm_config_region(struct em_hw *hw, uint32_t cnf_base_addr,
    uint32_t cnf_size)
{
 uint32_t ret_val = 0;
 uint16_t word_addr, reg_data, reg_addr;
 uint16_t i;
 word_addr = (uint16_t) (cnf_base_addr << 1);
 for (i = 0; i < cnf_size; i++) {
  ret_val =
      em_read_eeprom(hw, (word_addr + i * 2), 1, &reg_data);
  if (ret_val)
   return ret_val;
  ret_val =
      em_read_eeprom(hw, (word_addr + i * 2 + 1), 1, &reg_addr);
  if (ret_val)
   return ret_val;
  ret_val = em_get_software_flag(hw);
  if (ret_val != 0)
   return ret_val;
  ret_val =
      em_write_phy_reg_ex(hw, (uint32_t) reg_addr, reg_data);
  em_release_software_flag(hw);
 }
 return ret_val;
}
 int32_t
em_init_lcd_from_nvm(struct em_hw *hw)
{
 uint32_t reg_data, cnf_base_addr, cnf_size, ret_val, loop, sw_cfg_mask;
 if (hw->phy_type != em_phy_igp_3)
  return 0;
 if (hw->device_id == 0x1049 ||
     hw->device_id == 0x104D ||
     hw->mac_type == em_pchlan ||
     hw->mac_type == em_pch2lan ||
     hw->mac_type == em_pch_lpt ||
     hw->mac_type == em_pch_spt)
  sw_cfg_mask = (1 << 27);
 else
  sw_cfg_mask = 1;
 reg_data = bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00028 : 0x00028));
 if (!(reg_data & sw_cfg_mask))
  return 0;
 loop = 0;
 do {
  reg_data =
      bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00008 : 0x00008)) & 0x00000200;
  delay(100);
  loop++;
 } while ((!reg_data) && (loop < 50));
 reg_data = bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00008 : 0x00008));
 reg_data &= ~0x00000200;
 bus_space_write_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00008 : 0x00008), reg_data);
 reg_data = bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00F00 : 0x00F00));
 if ((reg_data & 0x00000001) == 0x0000) {
  reg_data = bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00F08 : 0x00F08));
  cnf_size = reg_data & 0x00FF0000;
  cnf_size >>= 16;
  if (cnf_size) {
   reg_data = bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00F00 : 0x00F00));
   cnf_base_addr = reg_data & 0x0FFF0000;
   cnf_base_addr >>= 16;
   ret_val = em_init_lcd_from_nvm_config_region(hw,
       cnf_base_addr, cnf_size);
   if (ret_val)
    return ret_val;
  }
 }
 return 0;
}
int32_t
em_set_pciex_completion_timeout(struct em_hw *hw)
{
 uint32_t gcr = bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x05B00 : 0x05B00));
 int32_t ret_val = 0;
 if (gcr & 0x0000F000)
  goto out;
 ;
 if (!(gcr & 0x00040000)) {
  gcr |= 0x00001000;
  ;
  goto out;
 }
out:
 gcr &= ~0x00010000;
 ;
 bus_space_write_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x05B00 : 0x05B00), gcr);
 return ret_val;
}
static int32_t
em_set_mdio_slow_mode_hv(struct em_hw *hw)
{
 int32_t ret_val;
 uint16_t data;
 ;;
 ret_val = em_read_phy_reg(hw, (((769) << 5) | ((16) & 0x1F)), &data);
 if (ret_val)
  return ret_val;
 data |= 0x0400;
 ret_val = em_write_phy_reg(hw, (((769) << 5) | ((16) & 0x1F)), data);
 return ret_val;
}
int32_t
em_hv_phy_workarounds_ich8lan(struct em_hw *hw)
{
 int32_t ret_val = 0;
 uint16_t phy_data;
 uint16_t swfw;
 ;;
 if (hw->mac_type != em_pchlan)
  goto out;
 swfw = 0x0002;
 if (hw->phy_type == em_phy_82577 ||
     hw->phy_type == em_phy_82578) {
  ret_val = em_set_mdio_slow_mode_hv(hw);
  if (ret_val)
   goto out;
 }
 if ((hw->revision_id == 2) &&
     (hw->phy_type == em_phy_82577) &&
     ((hw->phy_revision == 2) || (hw->phy_revision == 3))) {
  em_write_phy_reg(hw, 0x10, 0x8823);
  em_write_phy_reg(hw, 0x11, 0x0018);
  em_write_phy_reg(hw, 0x10, 0x8824);
  em_write_phy_reg(hw, 0x11, 0x0016);
  em_write_phy_reg(hw, 0x10, 0x8825);
  em_write_phy_reg(hw, 0x11, 0x001A);
  em_write_phy_reg(hw, 0x10, 0x888C);
  em_write_phy_reg(hw, 0x11, 0x0007);
  em_write_phy_reg(hw, 0x10, 0x888D);
  em_write_phy_reg(hw, 0x11, 0x0007);
  em_write_phy_reg(hw, 0x10, 0x888E);
  em_write_phy_reg(hw, 0x11, 0x0007);
  em_write_phy_reg(hw, 0x10, 0x8827);
  em_write_phy_reg(hw, 0x11, 0x0001);
  em_write_phy_reg(hw, 0x10, 0x8835);
  em_write_phy_reg(hw, 0x11, 0x0001);
  em_write_phy_reg(hw, 0x10, 0x8834);
  em_write_phy_reg(hw, 0x11, 0x0001);
  em_write_phy_reg(hw, 0x10, 0x8833);
  em_write_phy_reg(hw, 0x11, 0x0002);
 }
 if (((hw->phy_type == em_phy_82577) &&
      ((hw->phy_revision == 1) || (hw->phy_revision == 2))) ||
     ((hw->phy_type == em_phy_82578) && (hw->phy_revision == 1))) {
  ret_val = em_write_phy_reg(hw, (((769) << 5) | ((25) & 0x1F)), 0x4431);
  if (ret_val)
   goto out;
  ret_val = em_write_phy_reg(hw, (((770) << 5) | ((16) & 0x1F)), 0xA204);
  if (ret_val)
   goto out;
 }
 if (hw->phy_type == em_phy_82578) {
  if (hw->phy_revision < 2) {
   em_phy_reset(hw);
   ret_val = em_write_phy_reg(hw, 0x00, 0x3140);
  }
 }
 if ((hw->revision_id == 2) &&
     (hw->phy_type == em_phy_82577) &&
     ((hw->phy_revision == 2) || (hw->phy_revision == 3))) {
  ret_val = em_write_phy_reg(hw, (((0) << 5) | ((25) & 0x1F)), 0x0400);
  if (ret_val)
   goto out;
  ret_val = em_write_phy_reg(hw, (((0) << 5) | ((25) & 0x1F)), 0x0400);
  if (ret_val)
   goto out;
 }
 ret_val = em_swfw_sync_acquire(hw, swfw);
 if (ret_val)
  goto out;
 hw->phy_addr = 1;
 ret_val = em_write_phy_reg(hw, 0x1F, 0);
 em_swfw_sync_release(hw, swfw);
 if (ret_val)
  goto out;
 ret_val = em_read_phy_reg(hw,
                                       (((769) << 5) | ((17) & 0x1F)),
                                       &phy_data);
 if (ret_val)
  goto release;
 ret_val = em_write_phy_reg(hw,
                                        (((769) << 5) | ((17) & 0x1F)),
                                        phy_data & 0x00FF);
release:
out:
 return ret_val;
}
int32_t
em_link_stall_workaround_hv(struct em_hw *hw)
{
 int32_t ret_val = 0;
 uint16_t phy_data;
 if (hw->phy_type != em_phy_82578)
  goto out;
 em_read_phy_reg(hw, 0x00, &phy_data);
 if (phy_data & 0x00004000)
  goto out;
 ret_val = em_read_phy_reg(hw, 17, &phy_data);
 if (ret_val)
  goto out;
 phy_data &= 0x0400 |
      0x0800 |
      0xC000;
 if (phy_data != (0x0400 |
    0x0800 |
    0x8000))
  goto out;
 delay(1000*(200));
 ret_val = em_write_phy_reg(hw, (((776) << 5) | ((16) & 0x1F)),
     0x0400 | 0x0004);
 if (ret_val)
  goto out;
 ret_val = em_write_phy_reg(hw, (((776) << 5) | ((16) & 0x1F)),
     0x0400);
out:
 return ret_val;
}
int32_t
em_k1_gig_workaround_hv(struct em_hw *hw, boolean_t link)
{
 int32_t ret_val;
 uint16_t phy_data;
 boolean_t k1_enable;
 ;;
 if (hw->mac_type != em_pchlan)
  return 0;
 ret_val = em_read_eeprom_ich8(hw, 0x1B, 1, &phy_data);
 if (ret_val)
  return ret_val;
 k1_enable = phy_data & 0x1 ? 1 : 0;
 if (link) {
  if (hw->phy_type == em_phy_82578) {
   ret_val = em_read_phy_reg(hw, 17,
       &phy_data);
   if (ret_val)
    return ret_val;
   phy_data &= 0x0400 |
        0x0800 |
        0xC000;
   if (phy_data == (0x0400 |
      0x0800 |
      0x8000))
    k1_enable = 0;
  }
  if (hw->phy_type == em_phy_82577) {
   ret_val = em_read_phy_reg(hw, 26,
       &phy_data);
   if (ret_val)
    return ret_val;
   phy_data &= 0x0040 |
        0x1000 |
        0x0300;
   if (phy_data == (0x0040 |
      0x1000 |
      0x0200))
    k1_enable = 0;
  }
  ret_val = em_write_phy_reg(hw, (((770) << 5) | ((19) & 0x1F)),
      0x0100);
  if (ret_val)
   return ret_val;
 } else {
  ret_val = em_write_phy_reg(hw, (((770) << 5) | ((19) & 0x1F)),
      0x4100);
  if (ret_val)
   return ret_val;
 }
 ret_val = em_configure_k1_ich8lan(hw, k1_enable);
 return ret_val;
}
int32_t
em_k1_workaround_lv(struct em_hw *hw)
{
 int32_t ret_val;
 uint16_t phy_data;
 uint32_t mac_reg;
 ret_val = em_read_phy_reg(hw, 17, &phy_data);
 if (ret_val)
  return ret_val;
 if ((phy_data & (0x0040 | 0x1000))
     == (0x0040 | 0x1000)) {
  mac_reg = bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00024 : 0x00024));
  mac_reg &= ~0x7;
  if (phy_data & 0x0200)
   mac_reg |= 0x7;
  else
   mac_reg |= 0x3;
  bus_space_write_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00024 : 0x00024), mac_reg);
 }
 return 0;
}
int32_t
em_k1_workaround_lpt_lp(struct em_hw *hw, boolean_t link)
{
 uint32_t fextnvm6 = bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00010 : 0x00010));
 uint32_t status = bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00008 : 0x00008));
 int32_t ret_val = 0;
 uint16_t reg64;
 if (link && (status & 0x00000080)) {
  ret_val = em_read_kmrn_reg(hw, 0x7,
      &reg64);
  if (ret_val)
   return ret_val;
  ret_val = em_write_kmrn_reg(hw, 0x7,
      reg64 & ~0x0002);
  if (ret_val)
   return ret_val;
  delay(10);
  bus_space_write_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00010 : 0x00010), fextnvm6 | 0x00000100);
  ret_val = em_write_kmrn_reg(hw, 0x7,
      reg64);
 } else {
  fextnvm6 &= ~0x00000100;
  if (!link || ((status & 0x00000040) &&
         (status & 0x00000001)))
   goto update_fextnvm6;
  ret_val = em_read_phy_reg(hw, (((770) << 5) | ((18) & 0x1F)), &reg64);
  if (ret_val)
   return ret_val;
  reg64 &= ~0x3F00;
  if (status & 0x00000040) {
   reg64 |= 5 << 8;
   fextnvm6 &= ~0x00000200;
  } else {
   reg64 |= 50 <<
          8;
   fextnvm6 |= 0x00000200;
  }
  ret_val = em_write_phy_reg(hw, (((770) << 5) | ((18) & 0x1F)), reg64);
  if (ret_val)
   return ret_val;
update_fextnvm6:
  bus_space_write_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00010 : 0x00010), fextnvm6);
 }
 return ret_val;
}
void
em_gate_hw_phy_config_ich8lan(struct em_hw *hw, boolean_t gate)
{
       uint32_t extcnf_ctrl;
       ;;
       if (hw->mac_type != em_pch2lan)
               return;
       extcnf_ctrl = bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00F00 : 0x00F00));
       if (gate)
               extcnf_ctrl |= 0x00000080;
       else
               extcnf_ctrl &= ~0x00000080;
       bus_space_write_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00F00 : 0x00F00), extcnf_ctrl);
}
int32_t
em_configure_k1_ich8lan(struct em_hw *hw, boolean_t k1_enable)
{
 int32_t ret_val = 0;
 uint32_t ctrl_reg = 0;
 uint32_t ctrl_ext = 0;
 uint32_t reg64 = 0;
 uint16_t kmrn_reg = 0;
 ret_val = em_read_kmrn_reg(hw, 0x7,
     &kmrn_reg);
 if (ret_val)
  goto out;
 if (k1_enable)
  kmrn_reg |= 0x0002;
 else
  kmrn_reg &= ~0x0002;
 ret_val = em_write_kmrn_reg(hw, 0x7,
     kmrn_reg);
 if (ret_val)
  goto out;
 delay(20);
 ctrl_ext = bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00018 : 0x00018));
 ctrl_reg = bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00000 : 0x00000));
 reg64 = ctrl_reg & ~(0x00000200 | 0x00000100);
 reg64 |= 0x00000800;
 bus_space_write_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00000 : 0x00000), reg64);
 bus_space_write_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00018 : 0x00018), ctrl_ext | 0x00008000);
 delay(20);
 bus_space_write_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00000 : 0x00000), ctrl_reg);
 bus_space_write_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, ((hw)->mac_type >= em_82543 ? 0x00018 : 0x00018), ctrl_ext);
 delay(20);
out:
 return ret_val;
}
int32_t
em_lv_phy_workarounds_ich8lan(struct em_hw *hw)
{
       int32_t ret_val = 0;
       uint16_t swfw;
       ;;
       if (hw->mac_type != em_pch2lan)
               goto out;
       ret_val = em_set_mdio_slow_mode_hv(hw);
       swfw = 0x0002;
       ret_val = em_swfw_sync_acquire(hw, swfw);
       if (ret_val)
               goto out;
       ret_val = em_write_phy_reg(hw, 0x10,
                                              0x084F);
       if (ret_val)
               goto release;
       ret_val = em_write_phy_reg(hw, 0x11,
                                              0x0034);
       if (ret_val)
               goto release;
       ret_val = em_write_phy_reg(hw, 0x10,
                                              0x2411);
       if (ret_val)
               goto release;
       ret_val = em_write_phy_reg(hw, 0x11,
                                              0x0005);
release:
       em_swfw_sync_release(hw, swfw);
out:
       return ret_val;
}
int32_t
em_set_eee_i350(struct em_hw *hw)
{
 int32_t ret_val = 0;
 uint32_t ipcnfg, eeer;
 if ((hw->mac_type < em_i350) ||
     (hw->media_type != em_media_type_copper))
  goto out;
 ipcnfg = bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, 0x0E38);
 eeer = bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, 0x0E30);
 if (hw->eee_enable) {
  ipcnfg |= (0x00000008 | 0x00000004);
  eeer |= (0x00010000 | 0x00020000 |
      0x00040000);
 } else {
  ipcnfg &= ~(0x00000008 | 0x00000004);
  eeer &= ~(0x00010000 | 0x00020000 |
      0x00040000);
 }
 bus_space_write_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, 0x0E38, ipcnfg);
 bus_space_write_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, 0x0E30, eeer);
 bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, 0x0E38);
 bus_space_read_4(((struct em_osdep *)(hw)->back)->mem_bus_space_tag, ((struct em_osdep *)(hw)->back)->mem_bus_space_handle, 0x0E30);
out:
 return ret_val;
}
int32_t
em_set_eee_pchlan(struct em_hw *hw)
{
       int32_t ret_val = 0;
       uint16_t phy_reg;
       ;;
       if (hw->phy_type != em_phy_82579 &&
    hw->phy_type != em_phy_i217)
               goto out;
       ret_val = em_read_phy_reg(hw, (((772) << 5) | ((20) & 0x1F)), &phy_reg);
       if (ret_val)
               goto out;
       if (hw->eee_enable)
               phy_reg &= ~0x6000;
       else
               phy_reg |= 0x6000;
       ret_val = em_write_phy_reg(hw, (((772) << 5) | ((20) & 0x1F)), phy_reg);
out:
       return ret_val;
}
int32_t
em_initialize_M88E1512_phy(struct em_hw *hw)
{
 int32_t ret_val = 0;
 ;;
 if (hw->phy_id != 0x01410DD0)
  goto out;
 ret_val = em_write_phy_reg(hw, 0x16, 0x00FF);
 if (ret_val)
  goto out;
 ret_val = em_write_phy_reg(hw, 0x0011, 0x214B);
 if (ret_val)
  goto out;
 ret_val = em_write_phy_reg(hw, 0x0010, 0x2144);
 if (ret_val)
  goto out;
 ret_val = em_write_phy_reg(hw, 0x0011, 0x0C28);
 if (ret_val)
  goto out;
 ret_val = em_write_phy_reg(hw, 0x0010, 0x2146);
 if (ret_val)
  goto out;
 ret_val = em_write_phy_reg(hw, 0x0011, 0xB233);
 if (ret_val)
  goto out;
 ret_val = em_write_phy_reg(hw, 0x0010, 0x214D);
 if (ret_val)
  goto out;
 ret_val = em_write_phy_reg(hw, 0x0011, 0xCC0C);
 if (ret_val)
  goto out;
 ret_val = em_write_phy_reg(hw, 0x0010, 0x2159);
 if (ret_val)
  goto out;
 ret_val = em_write_phy_reg(hw, 0x16, 0x00FB);
 if (ret_val)
  goto out;
 ret_val = em_write_phy_reg(hw, 0x0007, 0x000D);
 if (ret_val)
  goto out;
 ret_val = em_write_phy_reg(hw, 0x16, 0x12);
 if (ret_val)
  goto out;
 ret_val = em_write_phy_reg(hw, 0x0014, 0x8001);
 if (ret_val)
  goto out;
 ret_val = em_write_phy_reg(hw, 0x16, 0);
 if (ret_val)
  goto out;
 ret_val = em_phy_hw_reset(hw);
 if (ret_val) {
  ;
  return ret_val;
 }
 delay(1000*(1000));
out:
 return ret_val;
}
