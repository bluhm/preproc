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
struct kinfo_pool {
 unsigned int pr_size;
 unsigned int pr_pgsize;
 unsigned int pr_itemsperpage;
 unsigned int pr_minpages;
 unsigned int pr_maxpages;
 unsigned int pr_hardlimit;
 unsigned int pr_npages;
 unsigned int pr_nout;
 unsigned int pr_nitems;
 unsigned long pr_nget;
 unsigned long pr_nput;
 unsigned long pr_nfail;
 unsigned long pr_npagealloc;
 unsigned long pr_npagefree;
 unsigned int pr_hiwat;
 unsigned long pr_nidle;
};
struct kinfo_pool_cache {
 uint64_t pr_ngc;
 unsigned int pr_len;
 unsigned int pr_nitems;
 unsigned int pr_contention;
};
struct kinfo_pool_cache_cpu {
 unsigned int pr_cpu;
 uint64_t pr_nget;
 uint64_t pr_nfail;
 uint64_t pr_nput;
 uint64_t pr_nlget;
 uint64_t pr_nlfail;
 uint64_t pr_nlput;
};
struct pool;
struct pool_request;
struct pool_lock_ops;
struct pool_requests { struct pool_request *tqh_first; struct pool_request **tqh_last; };
struct pool_allocator {
 void *(*pa_alloc)(struct pool *, int, int *);
 void (*pa_free)(struct pool *, void *);
 size_t pa_pagesz;
};
struct pool_pagelist { struct pool_page_header *tqh_first; struct pool_page_header **tqh_last; };
struct pool_cache_item;
struct pool_cache_lists { struct pool_cache_item *tqh_first; struct pool_cache_item **tqh_last; };
struct cpumem;
union pool_lock {
 struct mutex prl_mtx;
 struct rwlock prl_rwlock;
};
struct pool {
 union pool_lock pr_lock;
 const struct pool_lock_ops *
   pr_lock_ops;
 struct { struct pool *sqe_next; }
   pr_poollist;
 struct pool_pagelist
   pr_emptypages;
 struct pool_pagelist
   pr_fullpages;
 struct pool_pagelist
   pr_partpages;
 struct pool_page_header *
   pr_curpage;
 unsigned int pr_size;
 unsigned int pr_minitems;
 unsigned int pr_minpages;
 unsigned int pr_maxpages;
 unsigned int pr_npages;
 unsigned int pr_itemsperpage;
 unsigned int pr_slack;
 unsigned int pr_nitems;
 unsigned int pr_nout;
 unsigned int pr_hardlimit;
 unsigned int pr_serial;
 unsigned int pr_pgsize;
 vaddr_t pr_pgmask;
 struct pool_allocator *
   pr_alloc;
 const char * pr_wchan;
 int pr_flags;
 int pr_ipl;
 struct phtree { struct rb_tree rbh_root; }
   pr_phtree;
 struct cpumem * pr_cache;
 unsigned long pr_cache_magic[2];
 union pool_lock pr_cache_lock;
 struct pool_cache_lists
   pr_cache_lists;
 u_int pr_cache_nitems;
 u_int pr_cache_items;
 u_int pr_cache_contention;
 u_int pr_cache_contention_prev;
 int pr_cache_tick;
 int pr_cache_nout;
 uint64_t pr_cache_ngc;
 u_int pr_align;
 u_int pr_maxcolors;
 int pr_phoffset;
 const char *pr_hardlimit_warning;
 struct timeval pr_hardlimit_ratecap;
 struct timeval pr_hardlimit_warning_last;
 union pool_lock pr_requests_lock;
 struct pool_requests
   pr_requests;
 unsigned int pr_requesting;
 unsigned long pr_nget;
 unsigned long pr_nfail;
 unsigned long pr_nput;
 unsigned long pr_npagealloc;
 unsigned long pr_npagefree;
 unsigned int pr_hiwat;
 unsigned long pr_nidle;
 const struct kmem_pa_mode *
   pr_crange;
};
extern struct pool_allocator pool_allocator_single;
extern struct pool_allocator pool_allocator_multi;
struct pool_request {
 struct { struct pool_request *tqe_next; struct pool_request **tqe_prev; } pr_entry;
 void (*pr_handler)(struct pool *, void *, void *);
 void *pr_cookie;
 void *pr_item;
};
void pool_init(struct pool *, size_t, u_int, int, int,
      const char *, struct pool_allocator *);
void pool_cache_init(struct pool *);
void pool_destroy(struct pool *);
void pool_setlowat(struct pool *, int);
void pool_sethiwat(struct pool *, int);
int pool_sethardlimit(struct pool *, u_int, const char *, int);
struct uvm_constraint_range;
void pool_set_constraints(struct pool *,
      const struct kmem_pa_mode *mode);
void *pool_get(struct pool *, int) __attribute__((__malloc__));
void pool_request_init(struct pool_request *,
      void (*)(struct pool *, void *, void *), void *);
void pool_request(struct pool *, struct pool_request *);
void pool_put(struct pool *, void *);
int pool_reclaim(struct pool *);
void pool_reclaim_all(void);
int pool_prime(struct pool *, int);
void pool_printit(struct pool *, const char *,
      int (*)(const char *, ...));
void pool_walk(struct pool *, int, int (*)(const char *, ...),
      void (*)(void *, int, int (*)(const char *, ...)));
void dma_alloc_init(void);
void *dma_alloc(size_t size, int flags);
void dma_free(void *m, size_t size);
typedef struct _SIPHASH_CTX {
 uint64_t v[4];
 uint8_t buf[8];
 uint32_t bytes;
} SIPHASH_CTX;
typedef struct {
 uint64_t k0;
 uint64_t k1;
} SIPHASH_KEY;
void SipHash_Init(SIPHASH_CTX *, const SIPHASH_KEY *);
void SipHash_Update(SIPHASH_CTX *, int, int, const void *, size_t)
      __attribute__ ((__bounded__ (__buffer__, 4, 5) ));
uint64_t SipHash_End(SIPHASH_CTX *, int, int);
void SipHash_Final(void *, SIPHASH_CTX *, int, int)
      __attribute__ ((__bounded__ (__minbytes__, 1, 8) ));
uint64_t SipHash(const SIPHASH_KEY *, int, int, const void *, size_t)
      __attribute__ ((__bounded__ (__buffer__, 4, 5) ));
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
struct rt_kmetrics {
 u_int64_t rmx_pksent;
 int64_t rmx_expire;
 u_int rmx_locks;
 u_int rmx_mtu;
};
struct rt_metrics {
 u_int64_t rmx_pksent;
 int64_t rmx_expire;
 u_int rmx_locks;
 u_int rmx_mtu;
 u_int rmx_refcnt;
 u_int rmx_hopcount;
 u_int rmx_recvpipe;
 u_int rmx_sendpipe;
 u_int rmx_ssthresh;
 u_int rmx_rtt;
 u_int rmx_rttvar;
 u_int rmx_pad;
};
struct art_root {
 struct srp ar_root;
 struct rwlock ar_lock;
 uint8_t ar_bits[32];
 uint8_t ar_nlvl;
 uint8_t ar_alen;
 uint8_t ar_off;
 unsigned int ar_rtableid;
};
struct rtentry;
struct art_node {
 union {
     struct srpl an__rtlist;
     struct art_node *an__gc;
 } an_pointer;
 uint8_t an_plen;
};
void art_init(void);
struct art_root *art_alloc(unsigned int, unsigned int, unsigned int);
struct art_node *art_insert(struct art_root *, struct art_node *, void *,
       int);
struct art_node *art_delete(struct art_root *, struct art_node *, void *,
       int);
struct art_node *art_match(struct art_root *, void *, struct srp_ref *);
struct art_node *art_lookup(struct art_root *, void *, int,
       struct srp_ref *);
int art_walk(struct art_root *,
       int (*)(struct art_node *, void *), void *);
struct art_node *art_get(void *, uint8_t);
void art_put(struct art_node *);
int rtable_satoplen(sa_family_t, struct sockaddr *);
void rtable_init(void);
int rtable_exists(unsigned int);
int rtable_add(unsigned int);
unsigned int rtable_l2(unsigned int);
unsigned int rtable_loindex(unsigned int);
void rtable_l2set(unsigned int, unsigned int, unsigned int);
struct rtentry *rtable_lookup(unsigned int, struct sockaddr *,
       struct sockaddr *, struct sockaddr *, uint8_t);
struct rtentry *rtable_match(unsigned int, struct sockaddr *, uint32_t *);
struct rtentry *rtable_iterate(struct rtentry *);
int rtable_insert(unsigned int, struct sockaddr *,
       struct sockaddr *, struct sockaddr *, uint8_t,
       struct rtentry *);
int rtable_delete(unsigned int, struct sockaddr *,
       struct sockaddr *, struct rtentry *);
int rtable_walk(unsigned int, sa_family_t,
       int (*)(struct rtentry *, void *, unsigned int), void *);
int rtable_mpath_capable(unsigned int, sa_family_t);
struct rtentry *rtable_mpath_match(unsigned int, struct rtentry *,
       struct sockaddr *, uint8_t);
int rtable_mpath_reprio(unsigned int, struct sockaddr *,
       struct sockaddr *, uint8_t, struct rtentry *);
struct rtentry {
 struct sockaddr *rt_dest;
 struct { struct srp se_next; } rt_next;
 struct sockaddr *rt_gateway;
 struct ifaddr *rt_ifa;
 caddr_t rt_llinfo;
 union {
  struct rtentry *_nh;
  unsigned int _ref;
 } RT_gw;
 struct rtentry *rt_parent;
 struct { struct rttimer *lh_first; } rt_timer;
 struct rt_kmetrics rt_rmx;
 unsigned int rt_ifidx;
 unsigned int rt_flags;
 int rt_refcnt;
 int rt_plen;
 uint16_t rt_labelid;
 uint8_t rt_priority;
};
struct rtstat {
 u_int32_t rts_badredirect;
 u_int32_t rts_dynamic;
 u_int32_t rts_newgateway;
 u_int32_t rts_unreach;
 u_int32_t rts_wildcard;
};
struct rt_tableinfo {
 u_short rti_tableid;
 u_short rti_domainid;
};
struct rt_msghdr {
 u_short rtm_msglen;
 u_char rtm_version;
 u_char rtm_type;
 u_short rtm_hdrlen;
 u_short rtm_index;
 u_short rtm_tableid;
 u_char rtm_priority;
 u_char rtm_mpls;
 int rtm_addrs;
 int rtm_flags;
 int rtm_fmask;
 pid_t rtm_pid;
 int rtm_seq;
 int rtm_errno;
 u_int rtm_inits;
 struct rt_metrics rtm_rmx;
};
struct sockaddr_rtlabel {
 u_int8_t sr_len;
 sa_family_t sr_family;
 char sr_label[32];
};
struct sockaddr_rtdns {
 u_int8_t sr_len;
 sa_family_t sr_family;
 char sr_dns[128];
};
struct sockaddr_rtstatic {
 u_int8_t sr_len;
 sa_family_t sr_family;
 char sr_static[128];
};
struct sockaddr_rtsearch {
 u_int8_t sr_len;
 sa_family_t sr_family;
 char sr_search[128];
};
struct route {
 struct rtentry *ro_rt;
 u_long ro_tableid;
 struct sockaddr ro_dst;
};
struct rt_addrinfo {
 int rti_addrs;
 struct sockaddr *rti_info[15];
 int rti_flags;
 struct ifaddr *rti_ifa;
 struct rt_msghdr *rti_rtm;
 u_char rti_mpls;
};
struct cpumem {
 void *mem;
};
struct cpumem_iter {
 unsigned int cpu;
} ;
struct counters_ref {
 uint64_t g;
 uint64_t *c;
};
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
struct pool;
struct cpumem *cpumem_get(struct pool *);
void cpumem_put(struct pool *, struct cpumem *);
struct cpumem *cpumem_malloc(size_t, int);
struct cpumem *cpumem_malloc_ncpus(struct cpumem *, size_t, int);
void cpumem_free(struct cpumem *, int, size_t);
void *cpumem_first(struct cpumem_iter *, struct cpumem *);
void *cpumem_next(struct cpumem_iter *, struct cpumem *);
static inline void *
cpumem_enter(struct cpumem *cm)
{
 return (cm[(__curcpu->ci_cpuid)].mem);
}
static inline void
cpumem_leave(struct cpumem *cm, void *mem)
{
}
struct cpumem *counters_alloc(unsigned int);
struct cpumem *counters_alloc_ncpus(struct cpumem *, unsigned int);
void counters_free(struct cpumem *, unsigned int);
void counters_read(struct cpumem *, uint64_t *, unsigned int);
void counters_zero(struct cpumem *, unsigned int);
static inline uint64_t *
counters_enter(struct counters_ref *ref, struct cpumem *cm)
{
 ref->c = cpumem_enter(cm);
 ref->g = ++(*ref->c);
 __asm volatile("membar " "#StoreStore" ::: "memory");
 return (ref->c + 1);
}
static inline void
counters_leave(struct counters_ref *ref, struct cpumem *cm)
{
 __asm volatile("membar " "#StoreStore" ::: "memory");
 (*ref->c) = ++ref->g;
 cpumem_leave(cm, ref->c);
}
static inline void
counters_inc(struct cpumem *cm, unsigned int c)
{
 struct counters_ref ref;
 uint64_t *counters;
 counters = counters_enter(&ref, cm);
 counters[c]++;
 counters_leave(&ref, cm);
}
static inline void
counters_add(struct cpumem *cm, unsigned int c, uint64_t v)
{
 struct counters_ref ref;
 uint64_t *counters;
 counters = counters_enter(&ref, cm);
 counters[c] += v;
 counters_leave(&ref, cm);
}
static inline void
counters_pkt(struct cpumem *cm, unsigned int c, unsigned int b, uint64_t v)
{
 struct counters_ref ref;
 uint64_t *counters;
 counters = counters_enter(&ref, cm);
 counters[c]++;
 counters[b] += v;
 counters_leave(&ref, cm);
}
enum rtstat_counters {
 rts_badredirect,
 rts_dynamic,
 rts_newgateway,
 rts_unreach,
 rts_wildcard,
 rts_ncounters
};
static inline void
rtstat_inc(enum rtstat_counters c)
{
 extern struct cpumem *rtcounters;
 counters_inc(rtcounters, c);
}
struct rttimer {
 struct { struct rttimer *tqe_next; struct rttimer **tqe_prev; } rtt_next;
 struct { struct rttimer *le_next; struct rttimer **le_prev; } rtt_link;
 struct rttimer_queue *rtt_queue;
 struct rtentry *rtt_rt;
 void (*rtt_func)(struct rtentry *,
       struct rttimer *);
 time_t rtt_time;
 u_int rtt_tableid;
};
struct rttimer_queue {
 long rtq_timeout;
 unsigned long rtq_count;
 struct { struct rttimer *tqh_first; struct rttimer **tqh_last; } rtq_head;
 struct { struct rttimer_queue *le_next; struct rttimer_queue **le_prev; } rtq_link;
};
const char *rtlabel_id2name(u_int16_t);
u_int16_t rtlabel_name2id(char *);
struct sockaddr *rtlabel_id2sa(u_int16_t, struct sockaddr_rtlabel *);
void rtlabel_unref(u_int16_t);
extern struct rtstat rtstat;
struct mbuf;
struct socket;
struct ifnet;
struct sockaddr_in6;
struct bfd_config;
void route_init(void);
void rtm_ifchg(struct ifnet *);
void rtm_ifannounce(struct ifnet *, int);
void rtm_bfd(struct bfd_config *);
void rt_maskedcopy(struct sockaddr *,
     struct sockaddr *, struct sockaddr *);
struct sockaddr *rt_plen2mask(struct rtentry *, struct sockaddr_in6 *);
void rtm_send(struct rtentry *, int, int, unsigned int);
void rtm_addr(struct rtentry *, int, struct ifaddr *);
void rtm_miss(int, struct rt_addrinfo *, int, uint8_t, u_int, int, u_int);
int rt_setgate(struct rtentry *, struct sockaddr *, u_int);
struct rtentry *rt_getll(struct rtentry *);
int rt_timer_add(struct rtentry *,
               void(*)(struct rtentry *, struct rttimer *),
        struct rttimer_queue *, u_int);
void rt_timer_remove_all(struct rtentry *);
struct rttimer_queue *rt_timer_queue_create(u_int);
void rt_timer_queue_change(struct rttimer_queue *, long);
void rt_timer_queue_destroy(struct rttimer_queue *);
unsigned long rt_timer_queue_count(struct rttimer_queue *);
void rt_timer_timer(void *);
int rtisvalid(struct rtentry *);
int rt_hash(struct rtentry *, struct sockaddr *, uint32_t *);
struct rtentry *rtalloc_mpath(struct sockaddr *, uint32_t *, u_int);
struct rtentry *rtalloc(struct sockaddr *, int, unsigned int);
void rtref(struct rtentry *);
void rtfree(struct rtentry *);
int rt_ifa_add(struct ifaddr *, int, struct sockaddr *);
int rt_ifa_del(struct ifaddr *, int, struct sockaddr *);
void rt_ifa_purge(struct ifaddr *);
int rt_ifa_addlocal(struct ifaddr *);
int rt_ifa_dellocal(struct ifaddr *);
void rtredirect(struct sockaddr *, struct sockaddr *, struct sockaddr *, struct rtentry **, unsigned int);
int rtrequest(int, struct rt_addrinfo *, u_int8_t, struct rtentry **,
      u_int);
int rtrequest_delete(struct rt_addrinfo *, u_int8_t, struct ifnet *,
      struct rtentry **, u_int);
void rt_if_track(struct ifnet *);
int rt_if_linkstate_change(struct rtentry *, void *, u_int);
int rtdeletemsg(struct rtentry *, struct ifnet *, u_int);
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
struct in_ifaddr {
 struct ifaddr ia_ifa;
 u_int32_t ia_net;
 u_int32_t ia_netmask;
 struct { struct in_ifaddr *tqe_next; struct in_ifaddr **tqe_prev; } ia_list;
 struct sockaddr_in ia_addr;
 struct sockaddr_in ia_dstaddr;
 struct sockaddr_in ia_sockmask;
 struct in_multi *ia_allhosts;
};
struct in_aliasreq {
 char ifra_name[16];
 union {
  struct sockaddr_in ifrau_addr;
  int ifrau_align;
 } ifra_ifrau;
 struct sockaddr_in ifra_dstaddr;
 struct sockaddr_in ifra_mask;
};
struct router_info {
 unsigned int rti_ifidx;
 int rti_type;
 int rti_age;
 struct router_info *rti_next;
};
struct in_multi {
 struct ifmaddr inm_ifma;
 struct sockaddr_in inm_sin;
 u_int inm_state;
 u_int inm_timer;
 struct router_info *inm_rti;
};
static __inline struct in_multi *
ifmatoinm(struct ifmaddr *ifma)
{
       return ((struct in_multi *)(ifma));
}
int in_ifinit(struct ifnet *,
     struct in_ifaddr *, struct sockaddr_in *, int);
struct in_multi *in_addmulti(struct in_addr *, struct ifnet *);
void in_delmulti(struct in_multi *);
int in_hasmulti(struct in_addr *, struct ifnet *);
void in_ifscrub(struct ifnet *, struct in_ifaddr *);
int in_control(struct socket *, u_long, caddr_t, struct ifnet *);
int in_ioctl(u_long, caddr_t, struct ifnet *, int);
void in_prefixlen2mask(struct in_addr *, int);
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
struct ip {
 u_int ip_v:4,
    ip_hl:4;
 u_int8_t ip_tos;
 u_int16_t ip_len;
 u_int16_t ip_id;
 u_int16_t ip_off;
 u_int8_t ip_ttl;
 u_int8_t ip_p;
 u_int16_t ip_sum;
 struct in_addr ip_src, ip_dst;
};
struct ip_timestamp {
 u_int8_t ipt_code;
 u_int8_t ipt_len;
 u_int8_t ipt_ptr;
 u_int ipt_oflw:4,
   ipt_flg:4;
 union ipt_timestamp {
   u_int32_t ipt_time[1];
   struct ipt_ta {
   struct in_addr ipt_addr;
   u_int32_t ipt_time;
   } ipt_ta[1];
 } ipt_timestamp;
};
struct ippseudo {
 struct in_addr ippseudo_src;
 struct in_addr ippseudo_dst;
 u_int8_t ippseudo_pad;
 u_int8_t ippseudo_p;
 u_int16_t ippseudo_len;
};
struct ipovly {
 u_int8_t ih_x1[9];
 u_int8_t ih_pr;
 u_int16_t ih_len;
 struct in_addr ih_src;
 struct in_addr ih_dst;
};
struct ipstat {
 u_long ips_total;
 u_long ips_badsum;
 u_long ips_tooshort;
 u_long ips_toosmall;
 u_long ips_badhlen;
 u_long ips_badlen;
 u_long ips_fragments;
 u_long ips_fragdropped;
 u_long ips_fragtimeout;
 u_long ips_forward;
 u_long ips_cantforward;
 u_long ips_redirectsent;
 u_long ips_noproto;
 u_long ips_delivered;
 u_long ips_localout;
 u_long ips_odropped;
 u_long ips_reassembled;
 u_long ips_fragmented;
 u_long ips_ofragments;
 u_long ips_cantfrag;
 u_long ips_badoptions;
 u_long ips_noroute;
 u_long ips_badvers;
 u_long ips_rawout;
 u_long ips_badfrags;
 u_long ips_rcvmemdrop;
 u_long ips_toolong;
 u_long ips_nogif;
 u_long ips_badaddr;
 u_long ips_inswcsum;
 u_long ips_outswcsum;
 u_long ips_notmember;
};
struct ipoption {
 struct in_addr ipopt_dst;
 int8_t ipopt_list[40];
};
enum ipstat_counters {
 ips_total,
 ips_badsum,
 ips_tooshort,
 ips_toosmall,
 ips_badhlen,
 ips_badlen,
 ips_fragments,
 ips_fragdropped,
 ips_fragtimeout,
 ips_forward,
 ips_cantforward,
 ips_redirectsent,
 ips_noproto,
 ips_delivered,
 ips_localout,
 ips_odropped,
 ips_reassembled,
 ips_fragmented,
 ips_ofragments,
 ips_cantfrag,
 ips_badoptions,
 ips_noroute,
 ips_badvers,
 ips_rawout,
 ips_badfrags,
 ips_rcvmemdrop,
 ips_toolong,
 ips_nogif,
 ips_badaddr,
 ips_inswcsum,
 ips_outswcsum,
 ips_notmember,
 ips_ncounters
};
extern struct cpumem *ipcounters;
static inline void
ipstat_inc(enum ipstat_counters c)
{
 counters_inc(ipcounters, c);
}
struct ip_moptions {
 struct in_multi **imo_membership;
 unsigned short imo_ifidx;
 u_int8_t imo_ttl;
 u_int8_t imo_loop;
 u_int16_t imo_num_memberships;
 u_int16_t imo_max_memberships;
};
struct ipqehead { struct ipqent *lh_first; };
struct ipqent {
 struct { struct ipqent *le_next; struct ipqent **le_prev; } ipqe_q;
 struct ip *ipqe_ip;
 struct mbuf *ipqe_m;
 u_int8_t ipqe_mff;
};
struct ipq {
 struct { struct ipq *le_next; struct ipq **le_prev; } ipq_q;
 u_int8_t ipq_ttl;
 u_int8_t ipq_p;
 u_int16_t ipq_id;
 struct ipqehead ipq_fragq;
 struct in_addr ipq_src, ipq_dst;
};
extern struct ipstat ipstat;
extern int ip_defttl;
extern int ip_mtudisc;
extern u_int ip_mtudisc_timeout;
extern int ipport_firstauto;
extern int ipport_lastauto;
extern int ipport_hifirstauto;
extern int ipport_hilastauto;
extern int ipforwarding;
extern int ipmforwarding;
extern int ipmultipath;
extern int la_hold_total;
extern struct rttimer_queue *ip_mtudisc_timeout_q;
extern struct pool ipqent_pool;
struct route;
struct inpcb;
int ip_ctloutput(int, struct socket *, int, int, struct mbuf *);
void ip_flush(void);
int ip_fragment(struct mbuf *, struct ifnet *, u_long);
void ip_freef(struct ipq *);
void ip_freemoptions(struct ip_moptions *);
int ip_getmoptions(int, struct ip_moptions *, struct mbuf *);
void ip_init(void);
struct mbuf*
  ip_insertoptions(struct mbuf *, struct mbuf *, int *);
int ip_mforward(struct mbuf *, struct ifnet *);
int ip_optcopy(struct ip *, struct ip *);
int ip_output(struct mbuf *, struct mbuf *, struct route *, int,
     struct ip_moptions *, struct inpcb *, u_int32_t);
struct mbuf *
  ip_reass(struct ipqent *, struct ipq *);
u_int16_t
  ip_randomid(void);
void ip_send(struct mbuf *);
void ip_slowtimo(void);
struct mbuf *
  ip_srcroute(struct mbuf *);
void ip_stripoptions(struct mbuf *);
int ip_sysctl(int *, u_int, void *, size_t *, void *, size_t);
void ip_savecontrol(struct inpcb *, struct mbuf **, struct ip *,
     struct mbuf *);
void ipintr(void);
int ip_input_if(struct mbuf **, int *, int, int, struct ifnet *);
int ip_deliver(struct mbuf **, int *, int, int);
void ip_forward(struct mbuf *, struct ifnet *, struct rtentry *, int);
int rip_ctloutput(int, struct socket *, int, int, struct mbuf *);
void rip_init(void);
int rip_input(struct mbuf **, int *, int, int);
int rip_output(struct mbuf *, struct socket *, struct sockaddr *,
     struct mbuf *);
int rip_usrreq(struct socket *,
     int, struct mbuf *, struct mbuf *, struct mbuf *, struct proc *);
int rip_attach(struct socket *, int);
int rip_detach(struct socket *);
extern struct socket *ip_mrouter[];
struct ip6_hdr {
 union {
  struct ip6_hdrctl {
   u_int32_t ip6_un1_flow;
   u_int16_t ip6_un1_plen;
   u_int8_t ip6_un1_nxt;
   u_int8_t ip6_un1_hlim;
  } ip6_un1;
  u_int8_t ip6_un2_vfc;
 } ip6_ctlun;
 struct in6_addr ip6_src;
 struct in6_addr ip6_dst;
} __attribute__((__packed__));
struct ip6_hdr_pseudo {
 struct in6_addr ip6ph_src;
 struct in6_addr ip6ph_dst;
 u_int32_t ip6ph_len;
 u_int8_t ip6ph_zero[3];
 u_int8_t ip6ph_nxt;
} __attribute__((__packed__));
struct ip6_ext {
 u_int8_t ip6e_nxt;
 u_int8_t ip6e_len;
} __attribute__((__packed__));
struct ip6_hbh {
 u_int8_t ip6h_nxt;
 u_int8_t ip6h_len;
} __attribute__((__packed__));
struct ip6_dest {
 u_int8_t ip6d_nxt;
 u_int8_t ip6d_len;
} __attribute__((__packed__));
struct ip6_opt {
 u_int8_t ip6o_type;
 u_int8_t ip6o_len;
} __attribute__((__packed__));
struct ip6_opt_jumbo {
 u_int8_t ip6oj_type;
 u_int8_t ip6oj_len;
 u_int8_t ip6oj_jumbo_len[4];
} __attribute__((__packed__));
struct ip6_opt_nsap {
 u_int8_t ip6on_type;
 u_int8_t ip6on_len;
 u_int8_t ip6on_src_nsap_len;
 u_int8_t ip6on_dst_nsap_len;
} __attribute__((__packed__));
struct ip6_opt_tunnel {
 u_int8_t ip6ot_type;
 u_int8_t ip6ot_len;
 u_int8_t ip6ot_encap_limit;
} __attribute__((__packed__));
struct ip6_opt_router {
 u_int8_t ip6or_type;
 u_int8_t ip6or_len;
 u_int8_t ip6or_value[2];
} __attribute__((__packed__));
struct ip6_rthdr {
 u_int8_t ip6r_nxt;
 u_int8_t ip6r_len;
 u_int8_t ip6r_type;
 u_int8_t ip6r_segleft;
} __attribute__((__packed__));
struct ip6_rthdr0 {
 u_int8_t ip6r0_nxt;
 u_int8_t ip6r0_len;
 u_int8_t ip6r0_type;
 u_int8_t ip6r0_segleft;
 u_int32_t ip6r0_reserved;
} __attribute__((__packed__));
struct ip6_frag {
 u_int8_t ip6f_nxt;
 u_int8_t ip6f_reserved;
 u_int16_t ip6f_offlg;
 u_int32_t ip6f_ident;
} __attribute__((__packed__));
struct ip6q {
 struct { struct ip6q *tqe_next; struct ip6q **tqe_prev; } ip6q_queue;
 struct ip6asfrag_list { struct ip6asfrag *lh_first; } ip6q_asfrag;
 struct in6_addr ip6q_src, ip6q_dst;
 int ip6q_unfrglen;
 int ip6q_nfrag;
 u_int32_t ip6q_ident;
 u_int8_t ip6q_nxt;
 u_int8_t ip6q_ttl;
};
struct ip6asfrag {
 struct { struct ip6asfrag *le_next; struct ip6asfrag **le_prev; } ip6af_list;
 struct mbuf *ip6af_m;
 int ip6af_offset;
 int ip6af_frglen;
 int ip6af_off;
 u_int32_t ip6af_flow;
 u_int16_t ip6af_mff;
};
struct ip6_moptions {
 struct { struct in6_multi_mship *lh_first; } im6o_memberships;
 unsigned short im6o_ifidx;
 u_char im6o_hlim;
 u_char im6o_loop;
};
struct ip6po_rhinfo {
 struct ip6_rthdr *ip6po_rhi_rthdr;
 struct route_in6 ip6po_rhi_route;
};
struct ip6_pktopts {
 int ip6po_hlim;
 struct in6_pktinfo *ip6po_pktinfo;
 struct ip6_hbh *ip6po_hbh;
 struct ip6_dest *ip6po_dest1;
 struct ip6po_rhinfo ip6po_rhinfo;
 struct ip6_dest *ip6po_dest2;
 int ip6po_tclass;
 int ip6po_minmtu;
 int ip6po_flags;
};
struct ip6stat {
 u_int64_t ip6s_total;
 u_int64_t ip6s_tooshort;
 u_int64_t ip6s_toosmall;
 u_int64_t ip6s_fragments;
 u_int64_t ip6s_fragdropped;
 u_int64_t ip6s_fragtimeout;
 u_int64_t ip6s_fragoverflow;
 u_int64_t ip6s_forward;
 u_int64_t ip6s_cantforward;
 u_int64_t ip6s_redirectsent;
 u_int64_t ip6s_delivered;
 u_int64_t ip6s_localout;
 u_int64_t ip6s_odropped;
 u_int64_t ip6s_reassembled;
 u_int64_t ip6s_fragmented;
 u_int64_t ip6s_ofragments;
 u_int64_t ip6s_cantfrag;
 u_int64_t ip6s_badoptions;
 u_int64_t ip6s_noroute;
 u_int64_t ip6s_badvers;
 u_int64_t ip6s_rawout;
 u_int64_t ip6s_badscope;
 u_int64_t ip6s_notmember;
 u_int64_t ip6s_nxthist[256];
 u_int64_t ip6s_m1;
 u_int64_t ip6s_m2m[32];
 u_int64_t ip6s_mext1;
 u_int64_t ip6s_mext2m;
 u_int64_t ip6s_nogif;
 u_int64_t ip6s_toomanyhdr;
 u_int64_t ip6s_sources_none;
 u_int64_t ip6s_sources_sameif[16];
 u_int64_t ip6s_sources_otherif[16];
 u_int64_t ip6s_sources_samescope[16];
 u_int64_t ip6s_sources_otherscope[16];
 u_int64_t ip6s_sources_deprecated[16];
 u_int64_t ip6s_forward_cachehit;
 u_int64_t ip6s_forward_cachemiss;
};
enum ip6stat_counters {
 ip6s_total,
 ip6s_tooshort,
 ip6s_toosmall,
 ip6s_fragments,
 ip6s_fragdropped,
 ip6s_fragtimeout,
 ip6s_fragoverflow,
 ip6s_forward,
 ip6s_cantforward,
 ip6s_redirectsent,
 ip6s_delivered,
 ip6s_localout,
 ip6s_odropped,
 ip6s_reassembled,
 ip6s_fragmented,
 ip6s_ofragments,
 ip6s_cantfrag,
 ip6s_badoptions,
 ip6s_noroute,
 ip6s_badvers,
 ip6s_rawout,
 ip6s_badscope,
 ip6s_notmember,
 ip6s_nxthist,
 ip6s_m1 = ip6s_nxthist + 256,
 ip6s_m2m,
 ip6s_mext1 = ip6s_m2m + 32,
 ip6s_mext2m,
 ip6s_nogif,
 ip6s_toomanyhdr,
 ip6s_sources_none,
 ip6s_sources_sameif,
 ip6s_sources_otherif = ip6s_sources_sameif + 16,
 ip6s_sources_samescope = ip6s_sources_otherif + 16,
 ip6s_sources_otherscope = ip6s_sources_samescope + 16,
 ip6s_sources_deprecated = ip6s_sources_otherscope + 16,
 ip6s_forward_cachehit = ip6s_sources_deprecated + 16,
 ip6s_forward_cachemiss,
 ip6s_ncounters,
};
extern struct cpumem *ip6counters;
static inline void
ip6stat_inc(enum ip6stat_counters c)
{
 counters_inc(ip6counters, c);
}
static inline void
ip6stat_add(enum ip6stat_counters c, uint64_t v)
{
 counters_add(ip6counters, c, v);
}
extern int ip6_mtudisc_timeout;
extern struct rttimer_queue *icmp6_mtudisc_timeout_q;
extern int ip6_defhlim;
extern int ip6_defmcasthlim;
extern int ip6_forwarding;
extern int ip6_mforwarding;
extern int ip6_multipath;
extern int ip6_sendredirect;
extern int ip6_use_deprecated;
extern int ip6_mcast_pmtu;
extern int ip6_neighborgcthresh;
extern int ip6_maxdynroutes;
extern struct socket *ip6_mrouter[255];
extern int ip6_sendredirects;
extern int ip6_maxfragpackets;
extern int ip6_maxfrags;
extern int ip6_log_interval;
extern time_t ip6_log_time;
extern int ip6_hdrnestlimit;
extern int ip6_dad_count;
extern int ip6_dad_pending;
extern int ip6_auto_flowlabel;
extern int ip6_auto_linklocal;
extern uint8_t ip6_soiikey[16];
struct in6pcb;
struct inpcb;
int icmp6_ctloutput(int, struct socket *, int, int, struct mbuf *);
void ip6_init(void);
void ip6intr(void);
int ip6_input_if(struct mbuf **, int *, int, int, struct ifnet *);
void ip6_freepcbopts(struct ip6_pktopts *);
void ip6_freemoptions(struct ip6_moptions *);
int ip6_unknown_opt(u_int8_t *, struct mbuf *, int);
int ip6_get_prevhdr(struct mbuf *, int);
int ip6_nexthdr(struct mbuf *, int, int, int *);
int ip6_lasthdr(struct mbuf *, int, int, int *);
int ip6_mforward(struct ip6_hdr *, struct ifnet *, struct mbuf *);
int ip6_process_hopopts(struct mbuf *, u_int8_t *, int, u_int32_t *,
      u_int32_t *);
void ip6_savecontrol(struct inpcb *, struct mbuf *, struct mbuf **);
int ip6_sysctl(int *, u_int, void *, size_t *, void *, size_t);
void ip6_forward(struct mbuf *, struct rtentry *, int);
void ip6_mloopback(struct ifnet *, struct mbuf *, struct sockaddr_in6 *);
int ip6_output(struct mbuf *, struct ip6_pktopts *, struct route_in6 *, int,
     struct ip6_moptions *, struct inpcb *);
int ip6_fragment(struct mbuf *, int, u_char, u_long);
int ip6_ctloutput(int, struct socket *, int, int, struct mbuf *);
int ip6_raw_ctloutput(int, struct socket *, int, int, struct mbuf *);
void ip6_initpktopts(struct ip6_pktopts *);
int ip6_setpktopts(struct mbuf *, struct ip6_pktopts *,
     struct ip6_pktopts *, int, int);
void ip6_clearpktopts(struct ip6_pktopts *, int);
void ip6_randomid_init(void);
u_int32_t ip6_randomid(void);
void ip6_send(struct mbuf *);
int route6_input(struct mbuf **, int *, int, int);
void frag6_init(void);
int frag6_input(struct mbuf **, int *, int, int);
int frag6_deletefraghdr(struct mbuf *, int);
void frag6_slowtimo(void);
void rip6_init(void);
int rip6_input(struct mbuf **, int *, int, int);
void rip6_ctlinput(int, struct sockaddr *, u_int, void *);
int rip6_ctloutput(int, struct socket *, int, int, struct mbuf *);
int rip6_output(struct mbuf *, struct socket *, struct sockaddr *,
     struct mbuf *);
int rip6_usrreq(struct socket *,
     int, struct mbuf *, struct mbuf *, struct mbuf *, struct proc *);
int rip6_attach(struct socket *, int);
int rip6_detach(struct socket *);
int rip6_sysctl(int *, u_int, void *, size_t *, void *, size_t);
int dest6_input(struct mbuf **, int *, int, int);
int none_input(struct mbuf **, int *, int);
int in6_pcbselsrc(struct in6_addr **, struct sockaddr_in6 *,
     struct inpcb *, struct ip6_pktopts *);
int in6_selectsrc(struct in6_addr **, struct sockaddr_in6 *,
     struct ip6_moptions *, unsigned int);
struct rtentry *in6_selectroute(struct sockaddr_in6 *, struct ip6_pktopts *,
     struct route_in6 *, unsigned int rtableid);
u_int32_t ip6_randomflowlabel(void);
struct tdb;
struct tdb *
 ip6_output_ipsec_lookup(struct mbuf *, int *, struct inpcb *);
int ip6_output_ipsec_send(struct tdb *, struct mbuf *, int, int);
struct in6_addrlifetime {
 time_t ia6t_expire;
 time_t ia6t_preferred;
 u_int32_t ia6t_vltime;
 u_int32_t ia6t_pltime;
};
struct nd_ifinfo;
struct in6_ifextra {
 struct nd_ifinfo *nd_ifinfo;
 void *rs_lhcookie;
 int nprefixes;
 int ndefrouters;
};
struct in6_ifaddr {
 struct ifaddr ia_ifa;
 struct sockaddr_in6 ia_addr;
 struct sockaddr_in6 ia_dstaddr;
 struct sockaddr_in6 ia_prefixmask;
 struct { struct in6_ifaddr *tqe_next; struct in6_ifaddr **tqe_prev; } ia_list;
 int ia6_flags;
 struct in6_addrlifetime ia6_lifetime;
 time_t ia6_createtime;
 time_t ia6_updatetime;
 struct { struct in6_multi_mship *lh_first; } ia6_memberships;
};
struct in6_ifstat {
 u_int64_t ifs6_in_receive;
 u_int64_t ifs6_in_hdrerr;
 u_int64_t ifs6_in_toobig;
 u_int64_t ifs6_in_noroute;
 u_int64_t ifs6_in_addrerr;
 u_int64_t ifs6_in_protounknown;
 u_int64_t ifs6_in_truncated;
 u_int64_t ifs6_in_discard;
 u_int64_t ifs6_in_deliver;
 u_int64_t ifs6_out_forward;
 u_int64_t ifs6_out_request;
 u_int64_t ifs6_out_discard;
 u_int64_t ifs6_out_fragok;
 u_int64_t ifs6_out_fragfail;
 u_int64_t ifs6_out_fragcreat;
 u_int64_t ifs6_reass_reqd;
 u_int64_t ifs6_reass_ok;
 u_int64_t ifs6_reass_fail;
 u_int64_t ifs6_in_mcast;
 u_int64_t ifs6_out_mcast;
};
struct icmp6_ifstat {
 u_int64_t ifs6_in_msg;
 u_int64_t ifs6_in_error;
 u_int64_t ifs6_in_dstunreach;
 u_int64_t ifs6_in_adminprohib;
 u_int64_t ifs6_in_timeexceed;
 u_int64_t ifs6_in_paramprob;
 u_int64_t ifs6_in_pkttoobig;
 u_int64_t ifs6_in_echo;
 u_int64_t ifs6_in_echoreply;
 u_int64_t ifs6_in_routersolicit;
 u_int64_t ifs6_in_routeradvert;
 u_int64_t ifs6_in_neighborsolicit;
 u_int64_t ifs6_in_neighboradvert;
 u_int64_t ifs6_in_redirect;
 u_int64_t ifs6_in_mldquery;
 u_int64_t ifs6_in_mldreport;
 u_int64_t ifs6_in_mlddone;
 u_int64_t ifs6_out_msg;
 u_int64_t ifs6_out_error;
 u_int64_t ifs6_out_dstunreach;
 u_int64_t ifs6_out_adminprohib;
 u_int64_t ifs6_out_timeexceed;
 u_int64_t ifs6_out_paramprob;
 u_int64_t ifs6_out_pkttoobig;
 u_int64_t ifs6_out_echo;
 u_int64_t ifs6_out_echoreply;
 u_int64_t ifs6_out_routersolicit;
 u_int64_t ifs6_out_routeradvert;
 u_int64_t ifs6_out_neighborsolicit;
 u_int64_t ifs6_out_neighboradvert;
 u_int64_t ifs6_out_redirect;
 u_int64_t ifs6_out_mldquery;
 u_int64_t ifs6_out_mldreport;
 u_int64_t ifs6_out_mlddone;
};
struct in6_ifreq {
 char ifr_name[16];
 union {
  struct sockaddr_in6 ifru_addr;
  struct sockaddr_in6 ifru_dstaddr;
  short ifru_flags;
  int ifru_flags6;
  int ifru_metric;
  caddr_t ifru_data;
  struct in6_addrlifetime ifru_lifetime;
  struct in6_ifstat ifru_stat;
  struct icmp6_ifstat ifru_icmp6stat;
 } ifr_ifru;
};
struct in6_aliasreq {
 char ifra_name[16];
 union {
  struct sockaddr_in6 ifrau_addr;
  int ifrau_align;
  } ifra_ifrau;
 struct sockaddr_in6 ifra_dstaddr;
 struct sockaddr_in6 ifra_prefixmask;
 int ifra_flags;
 struct in6_addrlifetime ifra_lifetime;
};
struct in6_multi_mship {
 struct in6_multi *i6mm_maddr;
 struct { struct in6_multi_mship *le_next; struct in6_multi_mship **le_prev; } i6mm_chain;
};
struct in6_multi {
 struct ifmaddr in6m_ifma;
 struct sockaddr_in6 in6m_sin;
 u_int in6m_state;
 u_int in6m_timer;
};
static __inline struct in6_multi *
ifmatoin6m(struct ifmaddr *ifma)
{
       return ((struct in6_multi *)(ifma));
}
struct in6_multi *in6_addmulti(struct in6_addr *, struct ifnet *, int *);
void in6_delmulti(struct in6_multi *);
int in6_hasmulti(struct in6_addr *, struct ifnet *);
struct in6_multi_mship *in6_joingroup(struct ifnet *, struct in6_addr *, int *);
void in6_leavegroup(struct in6_multi_mship *);
int in6_control(struct socket *, u_long, caddr_t, struct ifnet *);
int in6_ioctl(u_long, caddr_t, struct ifnet *, int);
int in6_update_ifa(struct ifnet *, struct in6_aliasreq *,
 struct in6_ifaddr *);
void in6_purgeaddr(struct ifaddr *);
int in6if_do_dad(struct ifnet *);
void *in6_domifattach(struct ifnet *);
void in6_domifdetach(struct ifnet *, void *);
struct in6_ifaddr *in6ifa_ifpforlinklocal(struct ifnet *, int);
struct in6_ifaddr *in6ifa_ifpwithaddr(struct ifnet *, struct in6_addr *);
int in6_addr2scopeid(unsigned int, struct in6_addr *);
int in6_matchlen(struct in6_addr *, struct in6_addr *);
void in6_prefixlen2mask(struct in6_addr *, int);
void in6_purgeprefix(struct ifnet *);
struct pipex_mppe_req {
 int16_t stateless;
 int16_t keylenbits;
 u_char master_key[16];
};
struct pipex_statistics {
 uint32_t ipackets;
 uint32_t ierrors;
 uint64_t ibytes;
 uint32_t opackets;
 uint32_t oerrors;
 uint64_t obytes;
 uint32_t idle_time;
};
struct pipex_session_req {
 int pr_protocol;
 uint16_t pr_session_id;
 uint16_t pr_peer_session_id;
 uint32_t pr_ppp_flags;
 int8_t pr_ccp_id;
 int pr_ppp_id;
 uint16_t pr_peer_mru;
 uint32_t pr_timeout_sec;
 struct in_addr pr_ip_srcaddr;
 struct in_addr pr_ip_address;
 struct in_addr pr_ip_netmask;
 struct sockaddr_in6 pr_ip6_address;
 int pr_ip6_prefixlen;
 union {
  struct {
   uint32_t snd_nxt;
   uint32_t rcv_nxt;
   uint32_t snd_una;
   uint32_t rcv_acked;
   int winsz;
   int maxwinsz;
   int peer_maxwinsz;
  } pptp;
  struct {
   uint32_t option_flags;
   uint16_t tunnel_id;
   uint16_t peer_tunnel_id;
   uint32_t ns_nxt;
   uint32_t nr_nxt;
   uint32_t ns_una;
   uint32_t nr_acked;
   uint32_t ipsecflowinfo;
  } l2tp;
  struct {
   char over_ifname[16];
  } pppoe;
 } pr_proto;
 struct sockaddr_storage pr_peer_address;
 struct sockaddr_storage pr_local_address;
 struct pipex_mppe_req pr_mppe_recv;
 struct pipex_mppe_req pr_mppe_send;
};
struct pipex_session_stat_req {
 int psr_protocol;
 uint16_t psr_session_id;
 struct pipex_statistics psr_stat;
};
struct pipex_session_close_req {
 int psr_protocol;
 uint16_t psr_session_id;
 struct pipex_statistics psr_stat;
};
struct pipex_session_list_req {
 uint8_t plr_flags;
 int plr_ppp_id_count;
 int plr_ppp_id[128];
};
struct pipex_session_config_req {
 int psr_protocol;
 uint16_t psr_session_id;
 int pcr_ip_forward;
};
struct pppx_hdr {
 u_int32_t pppx_proto;
 u_int32_t pppx_id;
};
struct pipex_session_descr_req {
 int pdr_protocol;
 uint16_t pdr_session_id;
 char pdr_descr[64];
};
extern int pipex_enable;
struct pipex_session;
struct pipex_iface_context {
 struct ifnet *ifnet_this;
 u_int pipexmode;
 struct pipex_session *multicast_session;
};

void pipex_init (void);
void pipex_iface_init (struct pipex_iface_context *, struct ifnet *);
void pipex_iface_fini (struct pipex_iface_context *);
int pipex_notify_close_session(struct pipex_session *session);
int pipex_notify_close_session_all(void);
struct mbuf *pipex_output (struct mbuf *, int, int, struct pipex_iface_context *);
struct pipex_session *pipex_pppoe_lookup_session (struct mbuf *);
struct pipex_session *pipex_pppoe_lookup_session (struct mbuf *);
struct mbuf *pipex_pppoe_input (struct mbuf *, struct pipex_session *);
struct pipex_session *pipex_pptp_lookup_session (struct mbuf *);
struct mbuf *pipex_pptp_input (struct mbuf *, struct pipex_session *);
struct pipex_session *pipex_pptp_userland_lookup_session_ipv4 (struct mbuf *, struct in_addr);
struct pipex_session *pipex_pptp_userland_lookup_session_ipv6 (struct mbuf *, struct in6_addr);
struct pipex_session *pipex_l2tp_userland_lookup_session(struct mbuf *, struct sockaddr *);
struct mbuf *pipex_pptp_userland_output (struct mbuf *, struct pipex_session *);
struct pipex_session *pipex_l2tp_lookup_session (struct mbuf *, int);
struct mbuf *pipex_l2tp_input (struct mbuf *, int off, struct pipex_session *, uint32_t);
struct pipex_session *pipex_l2tp_userland_lookup_session_ipv4 (struct mbuf *, struct in_addr);
struct pipex_session *pipex_l2tp_userland_lookup_session_ipv6 (struct mbuf *, struct in6_addr);
struct mbuf *pipex_l2tp_userland_output (struct mbuf *, struct pipex_session *);
int pipex_ioctl (struct pipex_iface_context *, u_long, caddr_t);
void pipex_session_init_mppe_recv(struct pipex_session *, int,
int, u_char *);
void pipex_session_init_mppe_send(struct pipex_session *, int,
int, u_char *);

struct shim_hdr {
 u_int32_t shim_label;
};
struct sockaddr_mpls {
 u_int8_t smpls_len;
 u_int8_t smpls_family;
 u_int16_t smpls_pad0;
 u_int32_t smpls_label;
 u_int32_t smpls_pad1[2];
};
struct rt_mpls {
 u_int32_t mpls_label;
 u_int8_t mpls_operation;
 u_int8_t mpls_exp;
};
struct ifmpwreq {
 uint32_t imr_flags;
 uint32_t imr_type;
 struct shim_hdr imr_lshim;
 struct shim_hdr imr_rshim;
 struct sockaddr_storage imr_nexthop;
};
extern struct domain mplsdomain;
struct mpe_softc {
 struct ifnet sc_if;
 struct ifaddr sc_ifa;
 int sc_unit;
 struct sockaddr_mpls sc_smpls;
 struct { struct mpe_softc *le_next; struct mpe_softc **le_prev; } sc_list;
};
void mpe_input(struct mbuf *, struct ifnet *, struct sockaddr_mpls *,
     u_int8_t);
void mpe_input6(struct mbuf *, struct ifnet *, struct sockaddr_mpls *,
     u_int8_t);
extern int mpls_defttl;
extern int mpls_mapttl_ip;
extern int mpls_mapttl_ip6;
extern int mpls_inkloop;
struct mbuf *mpls_shim_pop(struct mbuf *);
struct mbuf *mpls_shim_swap(struct mbuf *, struct rt_mpls *);
struct mbuf *mpls_shim_push(struct mbuf *, struct rt_mpls *);
int mpls_output(struct ifnet *, struct mbuf *, struct sockaddr *,
      struct rtentry *);
void mpls_input(struct ifnet *, struct mbuf *);
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
struct ip;
struct ip6_hdr;
struct mbuf_list;
typedef struct refcnt pf_refcnt_t;
enum { PF_INOUT, PF_IN, PF_OUT, PF_FWD };
enum { PF_PASS, PF_DROP, PF_SCRUB, PF_NOSCRUB, PF_NAT, PF_NONAT,
   PF_BINAT, PF_NOBINAT, PF_RDR, PF_NORDR, PF_SYNPROXY_DROP, PF_DEFER,
   PF_MATCH, PF_DIVERT, PF_RT, PF_AFRT };
enum { PF_TRANS_RULESET, PF_TRANS_ALTQ, PF_TRANS_TABLE };
enum { PF_OP_NONE, PF_OP_IRG, PF_OP_EQ, PF_OP_NE, PF_OP_LT,
   PF_OP_LE, PF_OP_GT, PF_OP_GE, PF_OP_XRG, PF_OP_RRG };
enum { PF_CHANGE_NONE, PF_CHANGE_ADD_HEAD, PF_CHANGE_ADD_TAIL,
   PF_CHANGE_ADD_BEFORE, PF_CHANGE_ADD_AFTER,
   PF_CHANGE_REMOVE, PF_CHANGE_GET_TICKET };
enum { PF_GET_NONE, PF_GET_CLR_CNTR };
enum { PF_SK_WIRE, PF_SK_STACK, PF_SK_BOTH };
enum { PF_PEER_SRC, PF_PEER_DST, PF_PEER_BOTH };
enum { PFTM_TCP_FIRST_PACKET, PFTM_TCP_OPENING, PFTM_TCP_ESTABLISHED,
   PFTM_TCP_CLOSING, PFTM_TCP_FIN_WAIT, PFTM_TCP_CLOSED,
   PFTM_UDP_FIRST_PACKET, PFTM_UDP_SINGLE, PFTM_UDP_MULTIPLE,
   PFTM_ICMP_FIRST_PACKET, PFTM_ICMP_ERROR_REPLY,
   PFTM_OTHER_FIRST_PACKET, PFTM_OTHER_SINGLE,
   PFTM_OTHER_MULTIPLE, PFTM_FRAG, PFTM_INTERVAL,
   PFTM_ADAPTIVE_START, PFTM_ADAPTIVE_END, PFTM_SRC_NODE,
   PFTM_TS_DIFF, PFTM_MAX, PFTM_PURGE, PFTM_UNLINKED };
enum { PF_NOPFROUTE, PF_ROUTETO, PF_DUPTO, PF_REPLYTO };
enum { PF_LIMIT_STATES, PF_LIMIT_SRC_NODES, PF_LIMIT_FRAGS,
   PF_LIMIT_TABLES, PF_LIMIT_TABLE_ENTRIES, PF_LIMIT_MAX };
enum { PF_POOL_NONE, PF_POOL_BITMASK, PF_POOL_RANDOM,
   PF_POOL_SRCHASH, PF_POOL_ROUNDROBIN, PF_POOL_LEASTSTATES };
enum { PF_ADDR_ADDRMASK, PF_ADDR_NOROUTE, PF_ADDR_DYNIFTL,
   PF_ADDR_TABLE, PF_ADDR_RTLABEL, PF_ADDR_URPFFAILED,
   PF_ADDR_RANGE, PF_ADDR_NONE };
struct pf_addr {
 union {
  struct in_addr v4;
  struct in6_addr v6;
  u_int8_t addr8[16];
  u_int16_t addr16[8];
  u_int32_t addr32[4];
 } pfa;
};
struct pf_addr_wrap {
 union {
  struct {
   struct pf_addr addr;
   struct pf_addr mask;
  } a;
  char ifname[16];
  char tblname[32];
  char rtlabelname[32];
  u_int32_t rtlabel;
 } v;
 union {
  struct pfi_dynaddr *dyn;
  struct pfr_ktable *tbl;
  int dyncnt;
  int tblcnt;
 } p;
 u_int8_t type;
 u_int8_t iflags;
};
struct pfi_dynaddr {
 struct { struct pfi_dynaddr *tqe_next; struct pfi_dynaddr **tqe_prev; } entry;
 struct pf_addr pfid_addr4;
 struct pf_addr pfid_mask4;
 struct pf_addr pfid_addr6;
 struct pf_addr pfid_mask6;
 struct pfr_ktable *pfid_kt;
 struct pfi_kif *pfid_kif;
 void *pfid_hook_cookie;
 int pfid_net;
 int pfid_acnt4;
 int pfid_acnt6;
 sa_family_t pfid_af;
 u_int8_t pfid_iflags;
};
struct pf_rule_uid {
 uid_t uid[2];
 u_int8_t op;
};
struct pf_rule_gid {
 uid_t gid[2];
 u_int8_t op;
};
struct pf_rule_addr {
 struct pf_addr_wrap addr;
 u_int16_t port[2];
 u_int8_t neg;
 u_int8_t port_op;
 u_int16_t weight;
};
struct pf_threshold {
 u_int32_t limit;
 u_int32_t seconds;
 u_int32_t count;
 u_int32_t last;
};
struct pf_poolhashkey {
 union {
  u_int8_t key8[16];
  u_int16_t key16[8];
  u_int32_t key32[4];
 } pfk;
};
struct pf_pool {
 struct pf_addr_wrap addr;
 struct pf_poolhashkey key;
 struct pf_addr counter;
 char ifname[16];
 struct pfi_kif *kif;
 int tblidx;
 u_int64_t states;
 int curweight;
 u_int16_t weight;
 u_int16_t proxy_port[2];
 u_int8_t port_op;
 u_int8_t opts;
};
typedef u_int32_t pf_osfp_t;
struct pf_osfp_entry {
 struct { struct pf_osfp_entry *sle_next; } fp_entry;
 pf_osfp_t fp_os;
 int fp_enflags;
 u_char fp_class_nm[32];
 u_char fp_version_nm[32];
 u_char fp_subtype_nm[32];
};
typedef u_int64_t pf_tcpopts_t;
struct pf_os_fingerprint {
 struct pf_osfp_enlist { struct pf_osfp_entry *slh_first; } fp_oses;
 pf_tcpopts_t fp_tcpopts;
 u_int16_t fp_wsize;
 u_int16_t fp_psize;
 u_int16_t fp_mss;
 u_int16_t fp_flags;
 u_int8_t fp_optcnt;
 u_int8_t fp_wscale;
 u_int8_t fp_ttl;
 struct { struct pf_os_fingerprint *sle_next; } fp_next;
};
struct pf_osfp_ioctl {
 struct pf_osfp_entry fp_os;
 pf_tcpopts_t fp_tcpopts;
 u_int16_t fp_wsize;
 u_int16_t fp_psize;
 u_int16_t fp_mss;
 u_int16_t fp_flags;
 u_int8_t fp_optcnt;
 u_int8_t fp_wscale;
 u_int8_t fp_ttl;
 int fp_getnum;
};
struct pf_rule_actions {
 int rtableid;
 u_int16_t qid;
 u_int16_t pqid;
 u_int16_t max_mss;
 u_int16_t flags;
 u_int8_t log;
 u_int8_t set_tos;
 u_int8_t min_ttl;
 u_int8_t set_prio[2];
 u_int8_t pad[3];
};
union pf_rule_ptr {
 struct pf_rule *ptr;
 u_int32_t nr;
};
struct pf_rule {
 struct pf_rule_addr src;
 struct pf_rule_addr dst;
 union pf_rule_ptr skip[9];
 char label[64];
 char ifname[16];
 char rcv_ifname[16];
 char qname[64];
 char pqname[64];
 char tagname[64];
 char match_tagname[64];
 char overload_tblname[32];
 struct { struct pf_rule *tqe_next; struct pf_rule **tqe_prev; } entries;
 struct pf_pool nat;
 struct pf_pool rdr;
 struct pf_pool route;
 struct pf_threshold pktrate;
 u_int64_t evaluations;
 u_int64_t packets[2];
 u_int64_t bytes[2];
 struct pfi_kif *kif;
 struct pfi_kif *rcv_kif;
 struct pf_anchor *anchor;
 struct pfr_ktable *overload_tbl;
 pf_osfp_t os_fingerprint;
 int rtableid;
 int onrdomain;
 u_int32_t timeout[PFTM_MAX];
 u_int32_t states_cur;
 u_int32_t states_tot;
 u_int32_t max_states;
 u_int32_t src_nodes;
 u_int32_t max_src_nodes;
 u_int32_t max_src_states;
 u_int32_t max_src_conn;
 struct {
  u_int32_t limit;
  u_int32_t seconds;
 } max_src_conn_rate;
 u_int32_t qid;
 u_int32_t pqid;
 u_int32_t rt_listid;
 u_int32_t nr;
 u_int32_t prob;
 uid_t cuid;
 pid_t cpid;
 u_int16_t return_icmp;
 u_int16_t return_icmp6;
 u_int16_t max_mss;
 u_int16_t tag;
 u_int16_t match_tag;
 u_int16_t scrub_flags;
 struct pf_rule_uid uid;
 struct pf_rule_gid gid;
 u_int32_t rule_flag;
 u_int8_t action;
 u_int8_t direction;
 u_int8_t log;
 u_int8_t logif;
 u_int8_t quick;
 u_int8_t ifnot;
 u_int8_t match_tag_not;
 u_int8_t keep_state;
 sa_family_t af;
 u_int8_t proto;
 u_int8_t type;
 u_int8_t code;
 u_int8_t flags;
 u_int8_t flagset;
 u_int8_t min_ttl;
 u_int8_t allow_opts;
 u_int8_t rt;
 u_int8_t return_ttl;
 u_int8_t tos;
 u_int8_t set_tos;
 u_int8_t anchor_relative;
 u_int8_t anchor_wildcard;
 u_int8_t flush;
 u_int8_t prio;
 u_int8_t set_prio[2];
 sa_family_t naf;
 u_int8_t rcvifnot;
 u_int8_t pad[2];
 struct {
  struct pf_addr addr;
  u_int16_t port;
  u_int8_t type;
 } divert;
 struct { struct pf_rule *sle_next; } gcle;
 struct pf_ruleset *ruleset;
 time_t exptime;
};
struct pf_rule_item {
 struct { struct pf_rule_item *sle_next; } entry;
 struct pf_rule *r;
};
struct pf_rule_slist { struct pf_rule_item *slh_first; };
enum pf_sn_types { PF_SN_NONE, PF_SN_NAT, PF_SN_RDR, PF_SN_ROUTE, PF_SN_MAX };
struct pf_src_node {
 struct { struct pf_src_node *rbe_left; struct pf_src_node *rbe_right; struct pf_src_node *rbe_parent; int rbe_color; } entry;
 struct pf_addr addr;
 struct pf_addr raddr;
 union pf_rule_ptr rule;
 struct pfi_kif *kif;
 u_int64_t bytes[2];
 u_int64_t packets[2];
 u_int32_t states;
 u_int32_t conn;
 struct pf_threshold conn_rate;
 int32_t creation;
 int32_t expire;
 sa_family_t af;
 sa_family_t naf;
 u_int8_t type;
};
struct pf_sn_item {
 struct { struct pf_sn_item *sle_next; } next;
 struct pf_src_node *sn;
};
struct pf_sn_head { struct pf_sn_item *slh_first; };
struct pf_state_scrub {
 struct timeval pfss_last;
 u_int32_t pfss_tsecr;
 u_int32_t pfss_tsval;
 u_int32_t pfss_tsval0;
 u_int16_t pfss_flags;
 u_int8_t pfss_ttl;
 u_int8_t pad;
 u_int32_t pfss_ts_mod;
};
struct pf_state_host {
 struct pf_addr addr;
 u_int16_t port;
 u_int16_t pad;
};
struct pf_state_peer {
 struct pf_state_scrub *scrub;
 u_int32_t seqlo;
 u_int32_t seqhi;
 u_int32_t seqdiff;
 u_int16_t max_win;
 u_int16_t mss;
 u_int8_t state;
 u_int8_t wscale;
 u_int8_t tcp_est;
 u_int8_t pad[1];
};
struct pf_state_queue { struct pf_state *tqh_first; struct pf_state **tqh_last; };
struct pf_state_key_cmp {
 struct pf_addr addr[2];
 u_int16_t port[2];
 u_int16_t rdomain;
 sa_family_t af;
 u_int8_t proto;
};
struct pf_state_item {
 struct { struct pf_state_item *tqe_next; struct pf_state_item **tqe_prev; } entry;
 struct pf_state *s;
};
struct pf_statelisthead { struct pf_state_item *tqh_first; struct pf_state_item **tqh_last; };
struct pf_state_key {
 struct pf_addr addr[2];
 u_int16_t port[2];
 u_int16_t rdomain;
 sa_family_t af;
 u_int8_t proto;
 struct { struct pf_state_key *rbe_left; struct pf_state_key *rbe_right; struct pf_state_key *rbe_parent; int rbe_color; } entry;
 struct pf_statelisthead states;
 struct pf_state_key *reverse;
 struct inpcb *inp;
 pf_refcnt_t refcnt;
 u_int8_t removed;
};
struct pf_state_cmp {
 u_int64_t id;
 u_int32_t creatorid;
 u_int8_t direction;
 u_int8_t pad[3];
};
struct pf_state {
 u_int64_t id;
 u_int32_t creatorid;
 u_int8_t direction;
 u_int8_t pad[3];
 struct { struct pf_state *tqe_next; struct pf_state **tqe_prev; } sync_list;
 struct { struct pf_state *tqe_next; struct pf_state **tqe_prev; } entry_list;
 struct { struct pf_state *rbe_left; struct pf_state *rbe_right; struct pf_state *rbe_parent; int rbe_color; } entry_id;
 struct pf_state_peer src;
 struct pf_state_peer dst;
 struct pf_rule_slist match_rules;
 union pf_rule_ptr rule;
 union pf_rule_ptr anchor;
 union pf_rule_ptr natrule;
 struct pf_addr rt_addr;
 struct pf_sn_head src_nodes;
 struct pf_state_key *key[2];
 struct pfi_kif *kif;
 struct pfi_kif *rt_kif;
 u_int64_t packets[2];
 u_int64_t bytes[2];
 int32_t creation;
 int32_t expire;
 int32_t pfsync_time;
 u_int16_t qid;
 u_int16_t pqid;
 u_int16_t tag;
 u_int16_t state_flags;
 u_int8_t log;
 u_int8_t timeout;
 u_int8_t sync_state;
 u_int8_t sync_updates;
 int rtableid[2];
 u_int8_t min_ttl;
 u_int8_t set_tos;
 u_int8_t set_prio[2];
 u_int16_t max_mss;
 u_int16_t if_index_in;
 u_int16_t if_index_out;
 u_int8_t pad2[2];
};
struct pfsync_state_scrub {
 u_int16_t pfss_flags;
 u_int8_t pfss_ttl;
 u_int8_t scrub_flag;
 u_int32_t pfss_ts_mod;
} __attribute__((__packed__));
struct pfsync_state_peer {
 struct pfsync_state_scrub scrub;
 u_int32_t seqlo;
 u_int32_t seqhi;
 u_int32_t seqdiff;
 u_int16_t max_win;
 u_int16_t mss;
 u_int8_t state;
 u_int8_t wscale;
 u_int8_t pad[6];
} __attribute__((__packed__));
struct pfsync_state_key {
 struct pf_addr addr[2];
 u_int16_t port[2];
 u_int16_t rdomain;
 sa_family_t af;
 u_int8_t pad;
};
struct pfsync_state {
 u_int64_t id;
 char ifname[16];
 struct pfsync_state_key key[2];
 struct pfsync_state_peer src;
 struct pfsync_state_peer dst;
 struct pf_addr rt_addr;
 u_int32_t rule;
 u_int32_t anchor;
 u_int32_t nat_rule;
 u_int32_t creation;
 u_int32_t expire;
 u_int32_t packets[2][2];
 u_int32_t bytes[2][2];
 u_int32_t creatorid;
 int32_t rtableid[2];
 u_int16_t max_mss;
 sa_family_t af;
 u_int8_t proto;
 u_int8_t direction;
 u_int8_t log;
 u_int8_t pad0;
 u_int8_t timeout;
 u_int8_t sync_flags;
 u_int8_t updates;
 u_int8_t min_ttl;
 u_int8_t set_tos;
 u_int16_t state_flags;
 u_int8_t set_prio[2];
} __attribute__((__packed__));
struct pf_rulequeue { struct pf_rule *tqh_first; struct pf_rule **tqh_last; };
struct pf_anchor;
struct pf_ruleset {
 struct {
  struct pf_rulequeue queues[2];
  struct {
   struct pf_rulequeue *ptr;
   struct pf_rule **ptr_array;
   u_int32_t rcount;
   u_int32_t ticket;
   int open;
  } active, inactive;
 } rules;
 struct pf_anchor *anchor;
 u_int32_t tticket;
 int tables;
 int topen;
};
struct pf_anchor_global { struct pf_anchor *rbh_root; };
struct pf_anchor_node { struct pf_anchor *rbh_root; };
struct pf_anchor {
 struct { struct pf_anchor *rbe_left; struct pf_anchor *rbe_right; struct pf_anchor *rbe_parent; int rbe_color; } entry_global;
 struct { struct pf_anchor *rbe_left; struct pf_anchor *rbe_right; struct pf_anchor *rbe_parent; int rbe_color; } entry_node;
 struct pf_anchor *parent;
 struct pf_anchor_node children;
 char name[64];
 char path[1024];
 struct pf_ruleset ruleset;
 int refcnt;
 int match;
};
 void pf_anchor_global_RB_INSERT_COLOR(struct pf_anchor_global *, struct pf_anchor *); void pf_anchor_global_RB_REMOVE_COLOR(struct pf_anchor_global *, struct pf_anchor *, struct pf_anchor *); struct pf_anchor *pf_anchor_global_RB_REMOVE(struct pf_anchor_global *, struct pf_anchor *); struct pf_anchor *pf_anchor_global_RB_INSERT(struct pf_anchor_global *, struct pf_anchor *); struct pf_anchor *pf_anchor_global_RB_FIND(struct pf_anchor_global *, struct pf_anchor *); struct pf_anchor *pf_anchor_global_RB_NFIND(struct pf_anchor_global *, struct pf_anchor *); struct pf_anchor *pf_anchor_global_RB_NEXT(struct pf_anchor *); struct pf_anchor *pf_anchor_global_RB_PREV(struct pf_anchor *); struct pf_anchor *pf_anchor_global_RB_MINMAX(struct pf_anchor_global *, int);
 void pf_anchor_node_RB_INSERT_COLOR(struct pf_anchor_node *, struct pf_anchor *); void pf_anchor_node_RB_REMOVE_COLOR(struct pf_anchor_node *, struct pf_anchor *, struct pf_anchor *); struct pf_anchor *pf_anchor_node_RB_REMOVE(struct pf_anchor_node *, struct pf_anchor *); struct pf_anchor *pf_anchor_node_RB_INSERT(struct pf_anchor_node *, struct pf_anchor *); struct pf_anchor *pf_anchor_node_RB_FIND(struct pf_anchor_node *, struct pf_anchor *); struct pf_anchor *pf_anchor_node_RB_NFIND(struct pf_anchor_node *, struct pf_anchor *); struct pf_anchor *pf_anchor_node_RB_NEXT(struct pf_anchor *); struct pf_anchor *pf_anchor_node_RB_PREV(struct pf_anchor *); struct pf_anchor *pf_anchor_node_RB_MINMAX(struct pf_anchor_node *, int);
struct pfr_table {
 char pfrt_anchor[1024];
 char pfrt_name[32];
 u_int32_t pfrt_flags;
 u_int8_t pfrt_fback;
};
enum { PFR_FB_NONE, PFR_FB_MATCH, PFR_FB_ADDED, PFR_FB_DELETED,
 PFR_FB_CHANGED, PFR_FB_CLEARED, PFR_FB_DUPLICATE,
 PFR_FB_NOTMATCH, PFR_FB_CONFLICT, PFR_FB_NOCOUNT, PFR_FB_MAX };
struct pfr_addr {
 union {
  struct in_addr _pfra_ip4addr;
  struct in6_addr _pfra_ip6addr;
 } pfra_u;
 char pfra_ifname[16];
 u_int32_t pfra_states;
 u_int16_t pfra_weight;
 u_int8_t pfra_af;
 u_int8_t pfra_net;
 u_int8_t pfra_not;
 u_int8_t pfra_fback;
 u_int8_t pfra_type;
 u_int8_t pad[7];
};
enum { PFR_DIR_IN, PFR_DIR_OUT, PFR_DIR_MAX };
enum { PFR_OP_BLOCK, PFR_OP_MATCH, PFR_OP_PASS, PFR_OP_ADDR_MAX,
    PFR_OP_TABLE_MAX };
struct pfr_astats {
 struct pfr_addr pfras_a;
 u_int64_t pfras_packets[PFR_DIR_MAX][PFR_OP_ADDR_MAX];
 u_int64_t pfras_bytes[PFR_DIR_MAX][PFR_OP_ADDR_MAX];
 time_t pfras_tzero;
};
enum { PFR_REFCNT_RULE, PFR_REFCNT_ANCHOR, PFR_REFCNT_MAX };
struct pfr_tstats {
 struct pfr_table pfrts_t;
 u_int64_t pfrts_packets[PFR_DIR_MAX][PFR_OP_TABLE_MAX];
 u_int64_t pfrts_bytes[PFR_DIR_MAX][PFR_OP_TABLE_MAX];
 u_int64_t pfrts_match;
 u_int64_t pfrts_nomatch;
 time_t pfrts_tzero;
 int pfrts_cnt;
 int pfrts_refcnt[PFR_REFCNT_MAX];
};
struct pfr_kcounters {
 u_int64_t pfrkc_packets[PFR_DIR_MAX][PFR_OP_ADDR_MAX];
 u_int64_t pfrkc_bytes[PFR_DIR_MAX][PFR_OP_ADDR_MAX];
 u_int64_t states;
};
union pfsockaddr_union {
 struct sockaddr sa;
 struct sockaddr_in sin;
 struct sockaddr_in6 sin6;
};
struct pfr_kentryworkq { struct pfr_kentry *slh_first; };
struct _pfr_kentry {
 struct radix_node _pfrke_node[2];
 union pfsockaddr_union _pfrke_sa;
 struct { struct pfr_kentry *sle_next; } _pfrke_workq;
 struct pfr_kcounters *_pfrke_counters;
 time_t _pfrke_tzero;
 u_int8_t _pfrke_af;
 u_int8_t _pfrke_net;
 u_int8_t _pfrke_flags;
 u_int8_t _pfrke_type;
};
enum { PFRKE_PLAIN, PFRKE_ROUTE, PFRKE_COST, PFRKE_MAX };
struct pfr_kentry {
 union {
  struct _pfr_kentry _ke;
 } u;
};
struct pfr_kentry_route {
 union {
  struct _pfr_kentry _ke;
 } u;
 struct pfi_kif *kif;
};
struct pfr_kentry_cost {
 union {
  struct _pfr_kentry _ke;
 } u;
 struct pfi_kif *kif;
 u_int16_t weight;
};
struct pfr_kentry_all {
 union {
  struct _pfr_kentry _ke;
  struct pfr_kentry_route kr;
  struct pfr_kentry_cost kc;
 } u;
};
struct pfr_ktableworkq { struct pfr_ktable *slh_first; };
struct pfr_ktablehead { struct pfr_ktable *rbh_root; };
struct pfr_ktable {
 struct pfr_tstats pfrkt_ts;
 struct { struct pfr_ktable *rbe_left; struct pfr_ktable *rbe_right; struct pfr_ktable *rbe_parent; int rbe_color; } pfrkt_tree;
 struct { struct pfr_ktable *sle_next; } pfrkt_workq;
 struct radix_node_head *pfrkt_ip4;
 struct radix_node_head *pfrkt_ip6;
 struct pfr_ktable *pfrkt_shadow;
 struct pfr_ktable *pfrkt_root;
 struct pf_ruleset *pfrkt_rs;
 long pfrkt_larg;
 int pfrkt_nflags;
 u_int64_t pfrkt_refcntcost;
 u_int16_t pfrkt_gcdweight;
 u_int16_t pfrkt_maxweight;
};
struct pf_state_tree { struct pf_state_key *rbh_root; };
 void pf_state_tree_RB_INSERT_COLOR(struct pf_state_tree *, struct pf_state_key *); void pf_state_tree_RB_REMOVE_COLOR(struct pf_state_tree *, struct pf_state_key *, struct pf_state_key *); struct pf_state_key *pf_state_tree_RB_REMOVE(struct pf_state_tree *, struct pf_state_key *); struct pf_state_key *pf_state_tree_RB_INSERT(struct pf_state_tree *, struct pf_state_key *); struct pf_state_key *pf_state_tree_RB_FIND(struct pf_state_tree *, struct pf_state_key *); struct pf_state_key *pf_state_tree_RB_NFIND(struct pf_state_tree *, struct pf_state_key *); struct pf_state_key *pf_state_tree_RB_NEXT(struct pf_state_key *); struct pf_state_key *pf_state_tree_RB_PREV(struct pf_state_key *); struct pf_state_key *pf_state_tree_RB_MINMAX(struct pf_state_tree *, int);
struct pf_state_tree_ext_gwy { struct pf_state_key *rbh_root; };
 void pf_state_tree_ext_gwy_RB_INSERT_COLOR(struct pf_state_tree_ext_gwy *, struct pf_state_key *); void pf_state_tree_ext_gwy_RB_REMOVE_COLOR(struct pf_state_tree_ext_gwy *, struct pf_state_key *, struct pf_state_key *); struct pf_state_key *pf_state_tree_ext_gwy_RB_REMOVE(struct pf_state_tree_ext_gwy *, struct pf_state_key *); struct pf_state_key *pf_state_tree_ext_gwy_RB_INSERT(struct pf_state_tree_ext_gwy *, struct pf_state_key *); struct pf_state_key *pf_state_tree_ext_gwy_RB_FIND(struct pf_state_tree_ext_gwy *, struct pf_state_key *); struct pf_state_key *pf_state_tree_ext_gwy_RB_NFIND(struct pf_state_tree_ext_gwy *, struct pf_state_key *); struct pf_state_key *pf_state_tree_ext_gwy_RB_NEXT(struct pf_state_key *); struct pf_state_key *pf_state_tree_ext_gwy_RB_PREV(struct pf_state_key *); struct pf_state_key *pf_state_tree_ext_gwy_RB_MINMAX(struct pf_state_tree_ext_gwy *, int);
struct pfi_ifhead { struct pfi_kif *rbh_root; };
extern struct pf_state_tree pf_statetbl;
struct pfi_kif_cmp {
 char pfik_name[16];
};
struct ifnet;
struct ifg_group;
struct pfi_kif {
 char pfik_name[16];
 struct { struct pfi_kif *rbe_left; struct pfi_kif *rbe_right; struct pfi_kif *rbe_parent; int rbe_color; } pfik_tree;
 u_int64_t pfik_packets[2][2][2];
 u_int64_t pfik_bytes[2][2][2];
 time_t pfik_tzero;
 int pfik_flags;
 int pfik_flags_new;
 void *pfik_ah_cookie;
 struct ifnet *pfik_ifp;
 struct ifg_group *pfik_group;
 int pfik_states;
 int pfik_rules;
 int pfik_routes;
 struct { struct pfi_dynaddr *tqh_first; struct pfi_dynaddr **tqh_last; } pfik_dynaddrs;
};
enum pfi_kif_refs {
 PFI_KIF_REF_NONE,
 PFI_KIF_REF_STATE,
 PFI_KIF_REF_RULE,
 PFI_KIF_REF_ROUTE
};
struct pf_status {
 u_int64_t counters[17];
 u_int64_t lcounters[10];
 u_int64_t fcounters[3];
 u_int64_t scounters[3];
 u_int64_t pcounters[2][2][3];
 u_int64_t bcounters[2][2];
 u_int64_t stateid;
 u_int64_t syncookies_inflight[2];
 time_t since;
 u_int32_t running;
 u_int32_t states;
 u_int32_t states_halfopen;
 u_int32_t src_nodes;
 u_int32_t debug;
 u_int32_t hostid;
 u_int32_t reass;
 u_int8_t syncookies_active;
 u_int8_t syncookies_mode;
 u_int8_t pad[2];
 char ifname[16];
 u_int8_t pf_chksum[16];
};
struct pf_queue_bwspec {
 u_int absolute;
 u_int percent;
};
struct pf_queue_scspec {
 struct pf_queue_bwspec m1;
 struct pf_queue_bwspec m2;
 u_int d;
};
struct pf_queue_fqspec {
 u_int flows;
 u_int quantum;
 u_int target;
 u_int interval;
};
struct pf_queuespec {
 struct { struct pf_queuespec *tqe_next; struct pf_queuespec **tqe_prev; } entries;
 char qname[64];
 char parent[64];
 char ifname[16];
 struct pf_queue_scspec realtime;
 struct pf_queue_scspec linkshare;
 struct pf_queue_scspec upperlimit;
 struct pf_queue_fqspec flowqueue;
 struct pfi_kif *kif;
 u_int flags;
 u_int qlimit;
 u_int32_t qid;
 u_int32_t parent_qid;
};
struct priq_opts {
 int flags;
};
struct hfsc_opts {
 u_int rtsc_m1;
 u_int rtsc_d;
 u_int rtsc_m2;
 u_int lssc_m1;
 u_int lssc_d;
 u_int lssc_m2;
 u_int ulsc_m1;
 u_int ulsc_d;
 u_int ulsc_m2;
 int flags;
};
struct pfq_ops {
 void * (*pfq_alloc)(struct ifnet *);
 int (*pfq_addqueue)(void *, struct pf_queuespec *);
 void (*pfq_free)(void *);
 int (*pfq_qstats)(struct pf_queuespec *, void *, int *);
 unsigned int (*pfq_qlength)(void *);
 struct mbuf * (*pfq_enqueue)(void *, struct mbuf *);
 struct mbuf * (*pfq_deq_begin)(void *, void **, struct mbuf_list *);
 void (*pfq_deq_commit)(void *, struct mbuf *, void *);
 void (*pfq_purge)(void *, struct mbuf_list *);
};
struct pf_tagname {
 struct { struct pf_tagname *tqe_next; struct pf_tagname **tqe_prev; } entries;
 char name[64];
 u_int16_t tag;
 int ref;
};
struct pf_divert {
 struct pf_addr addr;
 u_int16_t port;
 u_int16_t rdomain;
 u_int8_t type;
};
enum pf_divert_types {
 PF_DIVERT_NONE,
 PF_DIVERT_TO,
 PF_DIVERT_REPLY,
 PF_DIVERT_PACKET
};
struct pfioc_rule {
 u_int32_t action;
 u_int32_t ticket;
 u_int32_t nr;
 char anchor[1024];
 char anchor_call[1024];
 struct pf_rule rule;
};
struct pfioc_natlook {
 struct pf_addr saddr;
 struct pf_addr daddr;
 struct pf_addr rsaddr;
 struct pf_addr rdaddr;
 u_int16_t rdomain;
 u_int16_t rrdomain;
 u_int16_t sport;
 u_int16_t dport;
 u_int16_t rsport;
 u_int16_t rdport;
 sa_family_t af;
 u_int8_t proto;
 u_int8_t direction;
};
struct pfioc_state {
 struct pfsync_state state;
};
struct pfioc_src_node_kill {
 sa_family_t psnk_af;
 struct pf_rule_addr psnk_src;
 struct pf_rule_addr psnk_dst;
 u_int psnk_killed;
};
struct pfioc_state_kill {
 struct pf_state_cmp psk_pfcmp;
 sa_family_t psk_af;
 int psk_proto;
 struct pf_rule_addr psk_src;
 struct pf_rule_addr psk_dst;
 char psk_ifname[16];
 char psk_label[64];
 u_int psk_killed;
 u_int16_t psk_rdomain;
};
struct pfioc_states {
 int ps_len;
 union {
  caddr_t psu_buf;
  struct pfsync_state *psu_states;
 } ps_u;
};
struct pfioc_src_nodes {
 int psn_len;
 union {
  caddr_t psu_buf;
  struct pf_src_node *psu_src_nodes;
 } psn_u;
};
struct pfioc_tm {
 int timeout;
 int seconds;
};
struct pfioc_limit {
 int index;
 unsigned limit;
};
struct pfioc_ruleset {
 u_int32_t nr;
 char path[1024];
 char name[64];
};
struct pfioc_trans {
 int size;
 int esize;
 struct pfioc_trans_e {
  int type;
  char anchor[1024];
  u_int32_t ticket;
 } *array;
};
struct pfioc_queue {
 u_int32_t ticket;
 u_int nr;
 struct pf_queuespec queue;
};
struct pfioc_qstats {
 u_int32_t ticket;
 u_int32_t nr;
 struct pf_queuespec queue;
 void *buf;
 int nbytes;
};
struct pfioc_table {
 struct pfr_table pfrio_table;
 void *pfrio_buffer;
 int pfrio_esize;
 int pfrio_size;
 int pfrio_size2;
 int pfrio_nadd;
 int pfrio_ndel;
 int pfrio_nchange;
 int pfrio_flags;
 u_int32_t pfrio_ticket;
};
struct pfioc_iface {
 char pfiio_name[16];
 void *pfiio_buffer;
 int pfiio_esize;
 int pfiio_size;
 int pfiio_nzero;
 int pfiio_flags;
};
struct pfioc_synflwats {
 u_int32_t hiwat;
 u_int32_t lowat;
};
struct pf_pdesc;
struct pf_src_tree { struct pf_src_node *rbh_root; };
 void pf_src_tree_RB_INSERT_COLOR(struct pf_src_tree *, struct pf_src_node *); void pf_src_tree_RB_REMOVE_COLOR(struct pf_src_tree *, struct pf_src_node *, struct pf_src_node *); struct pf_src_node *pf_src_tree_RB_REMOVE(struct pf_src_tree *, struct pf_src_node *); struct pf_src_node *pf_src_tree_RB_INSERT(struct pf_src_tree *, struct pf_src_node *); struct pf_src_node *pf_src_tree_RB_FIND(struct pf_src_tree *, struct pf_src_node *); struct pf_src_node *pf_src_tree_RB_NFIND(struct pf_src_tree *, struct pf_src_node *); struct pf_src_node *pf_src_tree_RB_NEXT(struct pf_src_node *); struct pf_src_node *pf_src_tree_RB_PREV(struct pf_src_node *); struct pf_src_node *pf_src_tree_RB_MINMAX(struct pf_src_tree *, int);;
extern struct pf_src_tree tree_src_tracking;
struct pf_state_tree_id { struct pf_state *rbh_root; };
 void pf_state_tree_id_RB_INSERT_COLOR(struct pf_state_tree_id *, struct pf_state *); void pf_state_tree_id_RB_REMOVE_COLOR(struct pf_state_tree_id *, struct pf_state *, struct pf_state *); struct pf_state *pf_state_tree_id_RB_REMOVE(struct pf_state_tree_id *, struct pf_state *); struct pf_state *pf_state_tree_id_RB_INSERT(struct pf_state_tree_id *, struct pf_state *); struct pf_state *pf_state_tree_id_RB_FIND(struct pf_state_tree_id *, struct pf_state *); struct pf_state *pf_state_tree_id_RB_NFIND(struct pf_state_tree_id *, struct pf_state *); struct pf_state *pf_state_tree_id_RB_NEXT(struct pf_state *); struct pf_state *pf_state_tree_id_RB_PREV(struct pf_state *); struct pf_state *pf_state_tree_id_RB_MINMAX(struct pf_state_tree_id *, int);;
extern struct pf_state_tree_id tree_id;
extern struct pf_state_queue state_list;
struct pf_queuehead { struct pf_queuespec *tqh_first; struct pf_queuespec **tqh_last; };
extern struct pf_queuehead pf_queues[2];
extern struct pf_queuehead *pf_queues_active, *pf_queues_inactive;
extern u_int32_t ticket_pabuf;
extern struct pool pf_src_tree_pl, pf_sn_item_pl, pf_rule_pl;
extern struct pool pf_state_pl, pf_state_key_pl, pf_state_item_pl,
        pf_rule_item_pl, pf_queue_pl;
extern struct pool pf_state_scrub_pl;
extern struct ifnet *sync_ifp;
extern struct pf_rule pf_default_rule;
extern int pf_tbladdr_setup(struct pf_ruleset *,
        struct pf_addr_wrap *);
extern void pf_tbladdr_remove(struct pf_addr_wrap *);
extern void pf_tbladdr_copyout(struct pf_addr_wrap *);
extern void pf_calc_skip_steps(struct pf_rulequeue *);
extern void pf_purge_expired_src_nodes();
extern void pf_purge_expired_states(u_int32_t);
extern void pf_purge_expired_rules();
extern void pf_remove_state(struct pf_state *);
extern void pf_remove_divert_state(struct pf_state_key *);
extern void pf_free_state(struct pf_state *);
extern int pf_state_insert(struct pfi_kif *,
        struct pf_state_key **,
        struct pf_state_key **,
        struct pf_state *);
int pf_insert_src_node(struct pf_src_node **,
        struct pf_rule *, enum pf_sn_types,
        sa_family_t, struct pf_addr *,
        struct pf_addr *);
void pf_remove_src_node(struct pf_src_node *);
struct pf_src_node *pf_get_src_node(struct pf_state *,
        enum pf_sn_types);
void pf_src_tree_remove_state(struct pf_state *);
void pf_state_rm_src_node(struct pf_state *,
        struct pf_src_node *);
extern struct pf_state *pf_find_state_byid(struct pf_state_cmp *);
extern struct pf_state *pf_find_state_all(struct pf_state_key_cmp *,
        u_int, int *);
extern void pf_state_export(struct pfsync_state *,
        struct pf_state *);
extern void pf_print_state(struct pf_state *);
extern void pf_print_flags(u_int8_t);
extern void pf_addrcpy(struct pf_addr *, struct pf_addr *,
        sa_family_t);
void pf_rm_rule(struct pf_rulequeue *,
        struct pf_rule *);
void pf_purge_rule(struct pf_rule *);
struct pf_divert *pf_find_divert(struct mbuf *);
int pf_setup_pdesc(struct pf_pdesc *, sa_family_t,
        int, struct pfi_kif *, struct mbuf *,
        u_short *);
int pf_test(sa_family_t, int, struct ifnet *, struct mbuf **);
void pf_poolmask(struct pf_addr *, struct pf_addr*,
     struct pf_addr *, struct pf_addr *, sa_family_t);
void pf_addr_inc(struct pf_addr *, sa_family_t);
void *pf_pull_hdr(struct mbuf *, int, void *, int, u_short *, u_short *,
     sa_family_t);
int pf_patch_8(struct pf_pdesc *, u_int8_t *, u_int8_t, _Bool);
int pf_patch_16(struct pf_pdesc *, u_int16_t *, u_int16_t);
int pf_patch_16_unaligned(struct pf_pdesc *, void *, u_int16_t, _Bool);
int pf_patch_32(struct pf_pdesc *, u_int32_t *, u_int32_t);
int pf_patch_32_unaligned(struct pf_pdesc *, void *, u_int32_t, _Bool);
int pflog_packet(struct pf_pdesc *, u_int8_t, struct pf_rule *,
     struct pf_rule *, struct pf_ruleset *, struct pf_rule *);
void pf_send_deferred_syn(struct pf_state *);
int pf_match_addr(u_int8_t, struct pf_addr *, struct pf_addr *,
     struct pf_addr *, sa_family_t);
int pf_match_addr_range(struct pf_addr *, struct pf_addr *,
     struct pf_addr *, sa_family_t);
int pf_match(u_int8_t, u_int32_t, u_int32_t, u_int32_t);
int pf_match_port(u_int8_t, u_int16_t, u_int16_t, u_int16_t);
int pf_match_uid(u_int8_t, uid_t, uid_t, uid_t);
int pf_match_gid(u_int8_t, gid_t, gid_t, gid_t);
int pf_refragment6(struct mbuf **, struct m_tag *mtag,
     struct sockaddr_in6 *, struct ifnet *, struct rtentry *);
void pf_normalize_init(void);
int pf_normalize_ip(struct pf_pdesc *, u_short *);
int pf_normalize_ip6(struct pf_pdesc *, u_short *);
int pf_normalize_tcp(struct pf_pdesc *);
void pf_normalize_tcp_cleanup(struct pf_state *);
int pf_normalize_tcp_init(struct pf_pdesc *, struct pf_state_peer *);
int pf_normalize_tcp_stateful(struct pf_pdesc *, u_short *,
     struct pf_state *, struct pf_state_peer *, struct pf_state_peer *,
     int *);
int pf_normalize_mss(struct pf_pdesc *, u_int16_t);
void pf_scrub(struct mbuf *, u_int16_t, sa_family_t, u_int8_t, u_int8_t);
int32_t pf_state_expires(const struct pf_state *);
void pf_purge_expired_fragments(void);
int pf_routable(struct pf_addr *addr, sa_family_t af, struct pfi_kif *,
     int);
int pf_rtlabel_match(struct pf_addr *, sa_family_t, struct pf_addr_wrap *,
     int);
int pf_socket_lookup(struct pf_pdesc *);
struct pf_state_key *pf_alloc_state_key(int);
int pf_ouraddr(struct mbuf *);
void pf_pkt_addr_changed(struct mbuf *);
struct inpcb *pf_inp_lookup(struct mbuf *);
void pf_inp_link(struct mbuf *, struct inpcb *);
void pf_inp_unlink(struct inpcb *);
int pf_state_key_attach(struct pf_state_key *, struct pf_state *, int);
int pf_translate(struct pf_pdesc *, struct pf_addr *, u_int16_t,
     struct pf_addr *, u_int16_t, u_int16_t, int);
int pf_translate_af(struct pf_pdesc *);
void pf_route(struct pf_pdesc *, struct pf_rule *, struct pf_state *);
void pf_route6(struct pf_pdesc *, struct pf_rule *, struct pf_state *);
void pf_init_threshold(struct pf_threshold *, u_int32_t, u_int32_t);
void pfr_initialize(void);
int pfr_match_addr(struct pfr_ktable *, struct pf_addr *, sa_family_t);
void pfr_update_stats(struct pfr_ktable *, struct pf_addr *,
     struct pf_pdesc *, int, int);
int pfr_pool_get(struct pf_pool *, struct pf_addr **,
     struct pf_addr **, sa_family_t);
int pfr_states_increase(struct pfr_ktable *, struct pf_addr *, int);
int pfr_states_decrease(struct pfr_ktable *, struct pf_addr *, int);
struct pfr_kentry *
 pfr_kentry_byaddr(struct pfr_ktable *, struct pf_addr *, sa_family_t,
     int);
void pfr_dynaddr_update(struct pfr_ktable *, struct pfi_dynaddr *);
struct pfr_ktable *
 pfr_attach_table(struct pf_ruleset *, char *, int);
void pfr_detach_table(struct pfr_ktable *);
int pfr_clr_tables(struct pfr_table *, int *, int);
int pfr_add_tables(struct pfr_table *, int, int *, int);
int pfr_del_tables(struct pfr_table *, int, int *, int);
int pfr_get_tables(struct pfr_table *, struct pfr_table *, int *, int);
int pfr_get_tstats(struct pfr_table *, struct pfr_tstats *, int *, int);
int pfr_clr_tstats(struct pfr_table *, int, int *, int);
int pfr_set_tflags(struct pfr_table *, int, int, int, int *, int *, int);
int pfr_clr_addrs(struct pfr_table *, int *, int);
int pfr_insert_kentry(struct pfr_ktable *, struct pfr_addr *, time_t);
int pfr_add_addrs(struct pfr_table *, struct pfr_addr *, int, int *,
     int);
int pfr_del_addrs(struct pfr_table *, struct pfr_addr *, int, int *,
     int);
int pfr_set_addrs(struct pfr_table *, struct pfr_addr *, int, int *,
     int *, int *, int *, int, u_int32_t);
int pfr_get_addrs(struct pfr_table *, struct pfr_addr *, int *, int);
int pfr_get_astats(struct pfr_table *, struct pfr_astats *, int *, int);
int pfr_clr_astats(struct pfr_table *, struct pfr_addr *, int, int *,
     int);
int pfr_tst_addrs(struct pfr_table *, struct pfr_addr *, int, int *,
     int);
int pfr_ina_begin(struct pfr_table *, u_int32_t *, int *, int);
int pfr_ina_rollback(struct pfr_table *, u_int32_t, int *, int);
int pfr_ina_commit(struct pfr_table *, u_int32_t, int *, int *, int);
int pfr_ina_define(struct pfr_table *, struct pfr_addr *, int, int *,
     int *, u_int32_t, int);
extern struct pfi_kif *pfi_all;
void pfi_initialize(void);
struct pfi_kif *pfi_kif_find(const char *);
struct pfi_kif *pfi_kif_get(const char *);
void pfi_kif_ref(struct pfi_kif *, enum pfi_kif_refs);
void pfi_kif_unref(struct pfi_kif *, enum pfi_kif_refs);
int pfi_kif_match(struct pfi_kif *, struct pfi_kif *);
void pfi_attach_ifnet(struct ifnet *);
void pfi_detach_ifnet(struct ifnet *);
void pfi_attach_ifgroup(struct ifg_group *);
void pfi_detach_ifgroup(struct ifg_group *);
void pfi_group_change(const char *);
int pfi_match_addr(struct pfi_dynaddr *, struct pf_addr *,
      sa_family_t);
int pfi_dynaddr_setup(struct pf_addr_wrap *, sa_family_t);
void pfi_dynaddr_remove(struct pf_addr_wrap *);
void pfi_dynaddr_copyout(struct pf_addr_wrap *);
void pfi_update_status(const char *, struct pf_status *);
int pfi_get_ifaces(const char *, struct pfi_kif *, int *);
int pfi_set_flags(const char *, int);
int pfi_clear_flags(const char *, int);
void pfi_xcommit(void);
int pf_match_tag(struct mbuf *, struct pf_rule *, int *);
u_int16_t pf_tagname2tag(char *, int);
void pf_tag2tagname(u_int16_t, char *);
void pf_tag_ref(u_int16_t);
void pf_tag_unref(u_int16_t);
void pf_tag_packet(struct mbuf *, int, int);
int pf_addr_compare(struct pf_addr *, struct pf_addr *,
      sa_family_t);
const struct pfq_ops
  *pf_queue_manager(struct pf_queuespec *);
extern struct pf_status pf_status;
extern struct pool pf_frent_pl, pf_frag_pl;
struct pf_pool_limit {
 void *pp;
 unsigned limit;
 unsigned limit_new;
};
extern struct pf_pool_limit pf_pool_limits[PF_LIMIT_MAX];
extern struct pf_anchor_global pf_anchors;
extern struct pf_anchor pf_main_anchor;
struct tcphdr;
void pf_init_ruleset(struct pf_ruleset *);
int pf_anchor_setup(struct pf_rule *,
       const struct pf_ruleset *, const char *);
int pf_anchor_copyout(const struct pf_ruleset *,
       const struct pf_rule *, struct pfioc_rule *);
void pf_anchor_remove(struct pf_rule *);
void pf_remove_if_empty_ruleset(struct pf_ruleset *);
struct pf_anchor *pf_find_anchor(const char *);
struct pf_ruleset *pf_find_ruleset(const char *);
struct pf_ruleset *pf_get_leaf_ruleset(char *, char **);
struct pf_anchor *pf_create_anchor(struct pf_anchor *, const char *);
struct pf_ruleset *pf_find_or_create_ruleset(const char *);
void pf_rs_initialize(void);
int pf_anchor_copyout(const struct pf_ruleset *,
       const struct pf_rule *, struct pfioc_rule *);
void pf_anchor_remove(struct pf_rule *);
int pf_osfp_add(struct pf_osfp_ioctl *);
struct pf_osfp_enlist *
 pf_osfp_fingerprint(struct pf_pdesc *);
struct pf_osfp_enlist *
 pf_osfp_fingerprint_hdr(const struct ip *, const struct ip6_hdr *,
     const struct tcphdr *);
void pf_osfp_flush(void);
int pf_osfp_get(struct pf_osfp_ioctl *);
void pf_osfp_initialize(void);
int pf_osfp_match(struct pf_osfp_enlist *, pf_osfp_t);
struct pf_os_fingerprint *
 pf_osfp_validate(void);
void pf_print_host(struct pf_addr *, u_int16_t,
       sa_family_t);
int pf_get_transaddr(struct pf_rule *, struct pf_pdesc *,
       struct pf_src_node **, struct pf_rule **);
int pf_map_addr(sa_family_t, struct pf_rule *,
       struct pf_addr *, struct pf_addr *,
       struct pf_addr *, struct pf_src_node **,
       struct pf_pool *, enum pf_sn_types);
int pf_postprocess_addr(struct pf_state *);
void pf_mbuf_link_state_key(struct mbuf *,
       struct pf_state_key *);
void pf_mbuf_unlink_state_key(struct mbuf *);
u_int8_t pf_get_wscale(struct pf_pdesc *);
u_int16_t pf_get_mss(struct pf_pdesc *);
struct mbuf * pf_build_tcp(const struct pf_rule *, sa_family_t,
       const struct pf_addr *, const struct pf_addr *,
       u_int16_t, u_int16_t, u_int32_t, u_int32_t,
       u_int8_t, u_int16_t, u_int16_t, u_int8_t, int,
       u_int16_t, u_int, u_int);
void pf_send_tcp(const struct pf_rule *, sa_family_t,
       const struct pf_addr *, const struct pf_addr *,
       u_int16_t, u_int16_t, u_int32_t, u_int32_t,
       u_int8_t, u_int16_t, u_int16_t, u_int8_t, int,
       u_int16_t, u_int);
void pf_syncookies_init(void);
int pf_syncookies_setmode(u_int8_t);
int pf_syncookies_setwats(u_int32_t, u_int32_t);
int pf_syncookies_getwats(struct pfioc_synflwats *);
int pf_synflood_check(struct pf_pdesc *);
void pf_syncookie_send(struct pf_pdesc *);
u_int8_t pf_syncookie_validate(struct pf_pdesc *);
struct mbuf * pf_syncookie_recreate_syn(struct pf_pdesc *);
struct gre_h {
 u_int16_t flags;
 u_int16_t ptype;
} __attribute__((__packed__));
struct greip {
 struct ip gi_i;
 struct gre_h gi_g;
} __attribute__((__packed__));
struct gre_sre {
 u_int16_t sre_family;
 u_char sre_offset;
 u_char sre_length;
 u_char *sre_rtinfo;
};
struct greioctl {
 int unit;
 struct in_addr addr;
};
struct mobile_h {
 u_int16_t proto;
 u_int16_t hcrc;
 u_int32_t odst;
 u_int32_t osrc;
} __attribute__((__packed__));
struct mobip_h {
 struct ip mi;
 struct mobile_h mh;
} __attribute__((__packed__));
int gre_sysctl(int *, u_int, void *, size_t *, void *, size_t);
int gre_input(struct mbuf **, int *, int, int);
int gre_input6(struct mbuf **, int *, int, int);
int gre_usrreq(struct socket *, int, struct mbuf *, struct mbuf *, struct mbuf *, struct proc *);
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
struct ifbreq {
 char ifbr_name[16];
 char ifbr_ifsname[16];
 u_int32_t ifbr_ifsflags;
 u_int32_t ifbr_portno;
 u_int32_t ifbr_protected;
 u_int8_t ifbr_state;
 u_int8_t ifbr_priority;
 u_int32_t ifbr_path_cost;
 u_int32_t ifbr_stpflags;
 u_int8_t ifbr_proto;
 u_int8_t ifbr_role;
 u_int32_t ifbr_fwd_trans;
 u_int64_t ifbr_desg_bridge;
 u_int32_t ifbr_desg_port;
 u_int64_t ifbr_root_bridge;
 u_int32_t ifbr_root_cost;
 u_int32_t ifbr_root_port;
};
struct ifbifconf {
 char ifbic_name[16];
 u_int32_t ifbic_len;
 union {
  caddr_t ifbicu_buf;
  struct ifbreq *ifbicu_req;
 } ifbic_ifbicu;
};
struct ifbareq {
 char ifba_name[16];
 char ifba_ifsname[16];
 u_int8_t ifba_age;
 u_int8_t ifba_flags;
 struct ether_addr ifba_dst;
 struct sockaddr_storage ifba_dstsa;
};
struct ifbaconf {
 char ifbac_name[16];
 u_int32_t ifbac_len;
 union {
  caddr_t ifbacu_buf;
  struct ifbareq *ifbacu_req;
 } ifbac_ifbacu;
};
struct ifbrparam {
 char ifbrp_name[16];
 union {
  u_int32_t ifbrpu_csize;
  int ifbrpu_ctime;
  u_int16_t ifbrpu_prio;
  u_int8_t ifbrpu_hellotime;
  u_int8_t ifbrpu_fwddelay;
  u_int8_t ifbrpu_maxage;
  u_int8_t ifbrpu_proto;
  u_int8_t ifbrpu_txhc;
  u_int64_t ifbrpu_datapath;
  u_int32_t ifbrpu_maxgroup;
 } ifbrp_ifbrpu;
};
struct ifbropreq {
 char ifbop_name[16];
 u_int8_t ifbop_holdcount;
 u_int8_t ifbop_maxage;
 u_int8_t ifbop_hellotime;
 u_int8_t ifbop_fwddelay;
 u_int8_t ifbop_protocol;
 u_int16_t ifbop_priority;
 u_int64_t ifbop_root_bridge;
 u_int16_t ifbop_root_port;
 u_int32_t ifbop_root_path_cost;
 u_int64_t ifbop_desg_bridge;
 struct timeval ifbop_last_tc_time;
};
struct ifbrarpf {
 u_int16_t brla_flags;
 u_int16_t brla_op;
 struct ether_addr brla_sha;
 struct in_addr brla_spa;
 struct ether_addr brla_tha;
 struct in_addr brla_tpa;
};
struct ifbrlreq {
 char ifbr_name[16];
 char ifbr_ifsname[16];
 u_int8_t ifbr_action;
 u_int8_t ifbr_flags;
 struct ether_addr ifbr_src;
 struct ether_addr ifbr_dst;
 char ifbr_tagname[64];
 struct ifbrarpf ifbr_arpf;
};
struct ifbrlconf {
 char ifbrl_name[16];
 char ifbrl_ifsname[16];
 u_int32_t ifbrl_len;
 union {
  caddr_t ifbrlu_buf;
  struct ifbrlreq *ifbrlu_req;
 } ifbrl_ifbrlu;
};
struct brl_head { struct brl_node *sqh_first; struct brl_node **sqh_last; };
struct brl_node {
 struct { struct brl_node *sqe_next; } brl_next;
 struct ether_addr brl_src;
 struct ether_addr brl_dst;
 u_int16_t brl_tag;
 u_int8_t brl_action;
 u_int8_t brl_flags;
 struct ifbrarpf brl_arpf;
};
struct bstp_timer {
 u_int16_t active;
 u_int16_t value;
 u_int32_t latched;
};
struct bstp_pri_vector {
 u_int64_t pv_root_id;
 u_int32_t pv_cost;
 u_int64_t pv_dbridge_id;
 u_int16_t pv_dport_id;
 u_int16_t pv_port_id;
};
struct bstp_config_unit {
 struct bstp_pri_vector cu_pv;
 u_int16_t cu_message_age;
 u_int16_t cu_max_age;
 u_int16_t cu_forward_delay;
 u_int16_t cu_hello_time;
 u_int8_t cu_message_type;
 u_int8_t cu_topology_change_ack;
 u_int8_t cu_topology_change;
 u_int8_t cu_proposal;
 u_int8_t cu_agree;
 u_int8_t cu_learning;
 u_int8_t cu_forwarding;
 u_int8_t cu_role;
};
struct bstp_tcn_unit {
 u_int8_t tu_message_type;
};
struct bstp_port {
 struct { struct bstp_port *le_next; struct bstp_port **le_prev; } bp_next;
 struct ifnet *bp_ifp;
 struct bstp_state *bp_bs;
 void *bp_lhcookie;
 u_int8_t bp_active;
 u_int8_t bp_protover;
 u_int32_t bp_flags;
 u_int32_t bp_path_cost;
 u_int16_t bp_port_msg_age;
 u_int16_t bp_port_max_age;
 u_int16_t bp_port_fdelay;
 u_int16_t bp_port_htime;
 u_int16_t bp_desg_msg_age;
 u_int16_t bp_desg_max_age;
 u_int16_t bp_desg_fdelay;
 u_int16_t bp_desg_htime;
 struct bstp_timer bp_edge_delay_timer;
 struct bstp_timer bp_forward_delay_timer;
 struct bstp_timer bp_hello_timer;
 struct bstp_timer bp_message_age_timer;
 struct bstp_timer bp_migrate_delay_timer;
 struct bstp_timer bp_recent_backup_timer;
 struct bstp_timer bp_recent_root_timer;
 struct bstp_timer bp_tc_timer;
 struct bstp_config_unit bp_msg_cu;
 struct bstp_pri_vector bp_desg_pv;
 struct bstp_pri_vector bp_port_pv;
 u_int16_t bp_port_id;
 u_int8_t bp_state;
 u_int8_t bp_tcstate;
 u_int8_t bp_role;
 u_int8_t bp_infois;
 u_int8_t bp_tc_ack;
 u_int8_t bp_tc_prop;
 u_int8_t bp_fdbflush;
 u_int8_t bp_priority;
 u_int8_t bp_ptp_link;
 u_int8_t bp_agree;
 u_int8_t bp_agreed;
 u_int8_t bp_sync;
 u_int8_t bp_synced;
 u_int8_t bp_proposing;
 u_int8_t bp_proposed;
 u_int8_t bp_operedge;
 u_int8_t bp_reroot;
 u_int8_t bp_rcvdtc;
 u_int8_t bp_rcvdtca;
 u_int8_t bp_rcvdtcn;
 u_int32_t bp_forward_transitions;
 u_int8_t bp_txcount;
};
struct bstp_state {
 struct ifnet *bs_ifp;
 struct bstp_pri_vector bs_bridge_pv;
 struct bstp_pri_vector bs_root_pv;
 struct bstp_port *bs_root_port;
 u_int8_t bs_protover;
 u_int16_t bs_migration_delay;
 u_int16_t bs_edge_delay;
 u_int16_t bs_bridge_max_age;
 u_int16_t bs_bridge_fdelay;
 u_int16_t bs_bridge_htime;
 u_int16_t bs_root_msg_age;
 u_int16_t bs_root_max_age;
 u_int16_t bs_root_fdelay;
 u_int16_t bs_root_htime;
 u_int16_t bs_hold_time;
 u_int16_t bs_bridge_priority;
 u_int8_t bs_txholdcount;
 u_int8_t bs_allsynced;
 struct timeout bs_bstptimeout;
 struct bstp_timer bs_link_timer;
 struct timeval bs_last_tc_time;
 struct { struct bstp_port *lh_first; } bs_bplist;
};
struct bridge_iflist {
 struct { struct bridge_iflist *tqe_next; struct bridge_iflist **tqe_prev; } next;
 struct bridge_softc *bridge_sc;
 struct bstp_port *bif_stp;
 struct brl_head bif_brlin;
 struct brl_head bif_brlout;
 struct ifnet *ifp;
 u_int32_t bif_flags;
 u_int32_t bif_protected;
 void *bif_dhcookie;
};
union brsockaddr_union {
 struct sockaddr sa;
 struct sockaddr_in sin;
 struct sockaddr_in6 sin6;
};
struct bridge_tunneltag {
 union brsockaddr_union brtag_peer;
 union brsockaddr_union brtag_local;
 u_int32_t brtag_id;
};
struct bridge_rtnode {
 struct { struct bridge_rtnode *le_next; struct bridge_rtnode **le_prev; } brt_next;
 struct ifnet *brt_if;
 u_int8_t brt_flags;
 u_int8_t brt_age;
 struct ether_addr brt_addr;
 struct bridge_tunneltag brt_tunnel;
};
struct bridge_softc {
 struct ifnet sc_if;
 u_int32_t sc_brtmax;
 u_int32_t sc_brtcnt;
 int sc_brttimeout;
 u_int64_t sc_hashkey[2];
 struct timeout sc_brtimeout;
 struct bstp_state *sc_stp;
 struct { struct bridge_iflist *tqh_first; struct bridge_iflist **tqh_last; } sc_iflist;
 struct { struct bridge_iflist *tqh_first; struct bridge_iflist **tqh_last; } sc_spanlist;
 struct { struct bridge_rtnode *lh_first; } sc_rts[1024];
};
extern const u_int8_t bstp_etheraddr[];
struct llc;
int bridge_output(struct ifnet *, struct mbuf *, struct sockaddr *,
    struct rtentry *);
void bridge_update(struct ifnet *, struct ether_addr *, int);
void bridge_rtdelete(struct bridge_softc *, struct ifnet *, int);
void bridge_rtagenode(struct ifnet *, int);
struct bridge_tunneltag *bridge_tunnel(struct mbuf *);
struct bridge_tunneltag *bridge_tunneltag(struct mbuf *);
void bridge_tunneluntag(struct mbuf *);
void bridge_copyaddr(struct sockaddr *, struct sockaddr *);
void bridge_copytag(struct bridge_tunneltag *, struct bridge_tunneltag *);
struct bstp_state *bstp_create(struct ifnet *);
void bstp_destroy(struct bstp_state *);
void bstp_initialization(struct bstp_state *);
void bstp_stop(struct bstp_state *);
int bstp_ioctl(struct ifnet *, u_long, caddr_t);
struct bstp_port *bstp_add(struct bstp_state *, struct ifnet *);
void bstp_delete(struct bstp_port *);
struct mbuf *bstp_input(struct bstp_state *, struct bstp_port *,
    struct ether_header *, struct mbuf *);
void bstp_ifstate(void *);
u_int8_t bstp_getstate(struct bstp_state *, struct bstp_port *);
void bstp_ifsflags(struct bstp_port *, u_int);
void bridge_send_icmp_err(struct bridge_softc *, struct ifnet *,
    struct ether_header *, struct mbuf *, int, struct llc *, int, int, int);
int bridgectl_ioctl(struct ifnet *, u_long, caddr_t);
struct ifnet *bridge_rtupdate(struct bridge_softc *,
    struct ether_addr *, struct ifnet *ifp, int, u_int8_t, struct mbuf *);
struct bridge_rtnode *bridge_rtlookup(struct bridge_softc *,
    struct ether_addr *);
void bridge_rtflush(struct bridge_softc *, int);
void bridge_rtage(void *);
u_int8_t bridge_filterrule(struct brl_head *, struct ether_header *,
    struct mbuf *);
void bridge_flushrule(struct bridge_iflist *);
struct mbuf *bridge_ip(struct bridge_softc *, int, struct ifnet *,
    struct ether_header *, struct mbuf *);
void bridge_fragment(struct bridge_softc *, struct ifnet *,
    struct ether_header *, struct mbuf *);
int bridge_ifenqueue(struct bridge_softc *, struct ifnet *, struct mbuf *);
struct gre_header {
 uint16_t gre_flags;
 uint16_t gre_proto;
} __attribute__((__packed__)) __attribute__((__aligned__(4)));
struct gre_h_cksum {
 uint16_t gre_cksum;
 uint16_t gre_reserved1;
} __attribute__((__packed__)) __attribute__((__aligned__(4)));
struct gre_h_key {
 uint32_t gre_key;
} __attribute__((__packed__)) __attribute__((__aligned__(4)));
struct gre_h_seq {
 uint32_t gre_seq;
} __attribute__((__packed__)) __attribute__((__aligned__(4)));
struct gre_h_wccp {
 uint8_t wccp_flags;
 uint8_t service_id;
 uint8_t alt_bucket;
 uint8_t pri_bucket;
} __attribute__((__packed__)) __attribute__((__aligned__(4)));
union gre_addr {
 struct in_addr in4;
 struct in6_addr in6;
};
static inline int
  gre_ip_cmp(int, const union gre_addr *,
      const union gre_addr *);
struct gre_tunnel {
 uint32_t t_key_mask;
 uint32_t t_key;
 u_int t_rtableid;
 union gre_addr t_src;
 union gre_addr t_dst;
 int t_ttl;
 uint16_t t_df;
 sa_family_t t_af;
};
static int
  gre_cmp_src(const struct gre_tunnel *,
      const struct gre_tunnel *);
static int
  gre_cmp(const struct gre_tunnel *, const struct gre_tunnel *);
static int gre_set_tunnel(struct gre_tunnel *, struct if_laddrreq *, int);
static int gre_get_tunnel(struct gre_tunnel *, struct if_laddrreq *);
static int gre_del_tunnel(struct gre_tunnel *);
static int gre_set_vnetid(struct gre_tunnel *, struct ifreq *);
static int gre_get_vnetid(struct gre_tunnel *, struct ifreq *);
static int gre_del_vnetid(struct gre_tunnel *);
static int gre_set_vnetflowid(struct gre_tunnel *, struct ifreq *);
static int gre_get_vnetflowid(struct gre_tunnel *, struct ifreq *);
static struct mbuf *
  gre_encap_dst(const struct gre_tunnel *, const union gre_addr *,
      struct mbuf *, uint16_t, uint8_t, uint8_t);
static int
  gre_ip_output(const struct gre_tunnel *, struct mbuf *);
static int gre_tunnel_ioctl(struct ifnet *, struct gre_tunnel *,
      u_long, void *);
struct gre_softc {
 struct gre_tunnel sc_tunnel;
 struct { struct gre_softc *tqe_next; struct gre_softc **tqe_prev; } sc_entry;
 struct ifnet sc_if;
 struct timeout sc_ka_send;
 struct timeout sc_ka_hold;
 unsigned int sc_ka_state;
 unsigned int sc_ka_timeo;
 unsigned int sc_ka_count;
 unsigned int sc_ka_holdmax;
 unsigned int sc_ka_holdcnt;
 SIPHASH_KEY sc_ka_key;
 uint32_t sc_ka_bias;
 int sc_ka_recvtm;
};
struct gre_list { struct gre_softc *tqh_first; struct gre_softc **tqh_last; };
struct gre_keepalive {
 uint32_t gk_uptime;
 uint32_t gk_random;
 uint8_t gk_digest[8];
} __attribute__((__packed__)) __attribute__((__aligned__(4)));
static int gre_clone_create(struct if_clone *, int);
static int gre_clone_destroy(struct ifnet *);
struct if_clone gre_cloner =
    { .ifc_list = { ((void *)0), ((void *)0) }, .ifc_name = "gre", .ifc_namelen = sizeof("gre") - 1, .ifc_create = gre_clone_create, .ifc_destroy = gre_clone_destroy, };
struct gre_list gre_list = { ((void *)0), &(gre_list).tqh_first };
static int gre_output(struct ifnet *, struct mbuf *, struct sockaddr *,
      struct rtentry *);
static void gre_start(struct ifnet *);
static int gre_ioctl(struct ifnet *, u_long, caddr_t);
static int gre_up(struct gre_softc *);
static int gre_down(struct gre_softc *);
static void gre_link_state(struct gre_softc *);
static int gre_input_key(struct mbuf **, int *, int, int,
      struct gre_tunnel *);
static void gre_keepalive_send(void *);
static void gre_keepalive_recv(struct ifnet *ifp, struct mbuf *);
static void gre_keepalive_hold(void *);
static struct mbuf *
  gre_l3_encap_dst(const struct gre_tunnel *, const void *,
      struct mbuf *m, sa_family_t);
struct mgre_softc {
 struct gre_tunnel sc_tunnel;
 struct rb_entry sc_entry;
 struct ifnet sc_if;
};
struct mgre_tree { struct rb_tree rbh_root; };
static inline int
  mgre_cmp(const struct mgre_softc *, const struct mgre_softc *);
extern const struct rb_type *const mgre_tree_RBT_TYPE; __attribute__((__unused__)) static inline void mgre_tree_RBT_INIT(struct mgre_tree *head) { _rb_init(&head->rbh_root); } __attribute__((__unused__)) static inline struct mgre_softc * mgre_tree_RBT_INSERT(struct mgre_tree *head, struct mgre_softc *elm) { return _rb_insert(mgre_tree_RBT_TYPE, &head->rbh_root, elm); } __attribute__((__unused__)) static inline struct mgre_softc * mgre_tree_RBT_REMOVE(struct mgre_tree *head, struct mgre_softc *elm) { return _rb_remove(mgre_tree_RBT_TYPE, &head->rbh_root, elm); } __attribute__((__unused__)) static inline struct mgre_softc * mgre_tree_RBT_FIND(struct mgre_tree *head, const struct mgre_softc *key) { return _rb_find(mgre_tree_RBT_TYPE, &head->rbh_root, key); } __attribute__((__unused__)) static inline struct mgre_softc * mgre_tree_RBT_NFIND(struct mgre_tree *head, const struct mgre_softc *key) { return _rb_nfind(mgre_tree_RBT_TYPE, &head->rbh_root, key); } __attribute__((__unused__)) static inline struct mgre_softc * mgre_tree_RBT_ROOT(struct mgre_tree *head) { return _rb_root(mgre_tree_RBT_TYPE, &head->rbh_root); } __attribute__((__unused__)) static inline int mgre_tree_RBT_EMPTY(struct mgre_tree *head) { return _rb_empty(&head->rbh_root); } __attribute__((__unused__)) static inline struct mgre_softc * mgre_tree_RBT_MIN(struct mgre_tree *head) { return _rb_min(mgre_tree_RBT_TYPE, &head->rbh_root); } __attribute__((__unused__)) static inline struct mgre_softc * mgre_tree_RBT_MAX(struct mgre_tree *head) { return _rb_max(mgre_tree_RBT_TYPE, &head->rbh_root); } __attribute__((__unused__)) static inline struct mgre_softc * mgre_tree_RBT_NEXT(struct mgre_softc *elm) { return _rb_next(mgre_tree_RBT_TYPE, elm); } __attribute__((__unused__)) static inline struct mgre_softc * mgre_tree_RBT_PREV(struct mgre_softc *elm) { return _rb_prev(mgre_tree_RBT_TYPE, elm); } __attribute__((__unused__)) static inline struct mgre_softc * mgre_tree_RBT_LEFT(struct mgre_softc *elm) { return _rb_left(mgre_tree_RBT_TYPE, elm); } __attribute__((__unused__)) static inline struct mgre_softc * mgre_tree_RBT_RIGHT(struct mgre_softc *elm) { return _rb_right(mgre_tree_RBT_TYPE, elm); } __attribute__((__unused__)) static inline struct mgre_softc * mgre_tree_RBT_PARENT(struct mgre_softc *elm) { return _rb_parent(mgre_tree_RBT_TYPE, elm); } __attribute__((__unused__)) static inline void mgre_tree_RBT_SET_LEFT(struct mgre_softc *elm, struct mgre_softc *left) { return _rb_set_left(mgre_tree_RBT_TYPE, elm, left); } __attribute__((__unused__)) static inline void mgre_tree_RBT_SET_RIGHT(struct mgre_softc *elm, struct mgre_softc *right) { return _rb_set_right(mgre_tree_RBT_TYPE, elm, right); } __attribute__((__unused__)) static inline void mgre_tree_RBT_SET_PARENT(struct mgre_softc *elm, struct mgre_softc *parent) { return _rb_set_parent(mgre_tree_RBT_TYPE, elm, parent); } __attribute__((__unused__)) static inline void mgre_tree_RBT_POISON(struct mgre_softc *elm, unsigned long poison) { return _rb_poison(mgre_tree_RBT_TYPE, elm, poison); } __attribute__((__unused__)) static inline int mgre_tree_RBT_CHECK(struct mgre_softc *elm, unsigned long poison) { return _rb_check(mgre_tree_RBT_TYPE, elm, poison); };
static int mgre_clone_create(struct if_clone *, int);
static int mgre_clone_destroy(struct ifnet *);
struct if_clone mgre_cloner =
    { .ifc_list = { ((void *)0), ((void *)0) }, .ifc_name = "mgre", .ifc_namelen = sizeof("mgre") - 1, .ifc_create = mgre_clone_create, .ifc_destroy = mgre_clone_destroy, };
static void mgre_rtrequest(struct ifnet *, int, struct rtentry *);
static int mgre_output(struct ifnet *, struct mbuf *, struct sockaddr *,
      struct rtentry *);
static void mgre_start(struct ifnet *);
static int mgre_ioctl(struct ifnet *, u_long, caddr_t);
static int mgre_set_tunnel(struct mgre_softc *, struct if_laddrreq *);
static int mgre_get_tunnel(struct mgre_softc *, struct if_laddrreq *);
static int mgre_up(struct mgre_softc *);
static int mgre_down(struct mgre_softc *);
struct mgre_tree mgre_tree = { { ((void *)0) } };
static struct mbuf *
  gre_ether_align(struct mbuf *, int);
struct egre_softc {
 struct gre_tunnel sc_tunnel;
 struct rb_entry sc_entry;
 struct arpcom sc_ac;
 struct ifmedia sc_media;
};
struct egre_tree { struct rb_tree rbh_root; };
static inline int
  egre_cmp(const struct egre_softc *, const struct egre_softc *);
extern const struct rb_type *const egre_tree_RBT_TYPE; __attribute__((__unused__)) static inline void egre_tree_RBT_INIT(struct egre_tree *head) { _rb_init(&head->rbh_root); } __attribute__((__unused__)) static inline struct egre_softc * egre_tree_RBT_INSERT(struct egre_tree *head, struct egre_softc *elm) { return _rb_insert(egre_tree_RBT_TYPE, &head->rbh_root, elm); } __attribute__((__unused__)) static inline struct egre_softc * egre_tree_RBT_REMOVE(struct egre_tree *head, struct egre_softc *elm) { return _rb_remove(egre_tree_RBT_TYPE, &head->rbh_root, elm); } __attribute__((__unused__)) static inline struct egre_softc * egre_tree_RBT_FIND(struct egre_tree *head, const struct egre_softc *key) { return _rb_find(egre_tree_RBT_TYPE, &head->rbh_root, key); } __attribute__((__unused__)) static inline struct egre_softc * egre_tree_RBT_NFIND(struct egre_tree *head, const struct egre_softc *key) { return _rb_nfind(egre_tree_RBT_TYPE, &head->rbh_root, key); } __attribute__((__unused__)) static inline struct egre_softc * egre_tree_RBT_ROOT(struct egre_tree *head) { return _rb_root(egre_tree_RBT_TYPE, &head->rbh_root); } __attribute__((__unused__)) static inline int egre_tree_RBT_EMPTY(struct egre_tree *head) { return _rb_empty(&head->rbh_root); } __attribute__((__unused__)) static inline struct egre_softc * egre_tree_RBT_MIN(struct egre_tree *head) { return _rb_min(egre_tree_RBT_TYPE, &head->rbh_root); } __attribute__((__unused__)) static inline struct egre_softc * egre_tree_RBT_MAX(struct egre_tree *head) { return _rb_max(egre_tree_RBT_TYPE, &head->rbh_root); } __attribute__((__unused__)) static inline struct egre_softc * egre_tree_RBT_NEXT(struct egre_softc *elm) { return _rb_next(egre_tree_RBT_TYPE, elm); } __attribute__((__unused__)) static inline struct egre_softc * egre_tree_RBT_PREV(struct egre_softc *elm) { return _rb_prev(egre_tree_RBT_TYPE, elm); } __attribute__((__unused__)) static inline struct egre_softc * egre_tree_RBT_LEFT(struct egre_softc *elm) { return _rb_left(egre_tree_RBT_TYPE, elm); } __attribute__((__unused__)) static inline struct egre_softc * egre_tree_RBT_RIGHT(struct egre_softc *elm) { return _rb_right(egre_tree_RBT_TYPE, elm); } __attribute__((__unused__)) static inline struct egre_softc * egre_tree_RBT_PARENT(struct egre_softc *elm) { return _rb_parent(egre_tree_RBT_TYPE, elm); } __attribute__((__unused__)) static inline void egre_tree_RBT_SET_LEFT(struct egre_softc *elm, struct egre_softc *left) { return _rb_set_left(egre_tree_RBT_TYPE, elm, left); } __attribute__((__unused__)) static inline void egre_tree_RBT_SET_RIGHT(struct egre_softc *elm, struct egre_softc *right) { return _rb_set_right(egre_tree_RBT_TYPE, elm, right); } __attribute__((__unused__)) static inline void egre_tree_RBT_SET_PARENT(struct egre_softc *elm, struct egre_softc *parent) { return _rb_set_parent(egre_tree_RBT_TYPE, elm, parent); } __attribute__((__unused__)) static inline void egre_tree_RBT_POISON(struct egre_softc *elm, unsigned long poison) { return _rb_poison(egre_tree_RBT_TYPE, elm, poison); } __attribute__((__unused__)) static inline int egre_tree_RBT_CHECK(struct egre_softc *elm, unsigned long poison) { return _rb_check(egre_tree_RBT_TYPE, elm, poison); };
static int egre_clone_create(struct if_clone *, int);
static int egre_clone_destroy(struct ifnet *);
static void egre_start(struct ifnet *);
static int egre_ioctl(struct ifnet *, u_long, caddr_t);
static int egre_media_change(struct ifnet *);
static void egre_media_status(struct ifnet *, struct ifmediareq *);
static int egre_up(struct egre_softc *);
static int egre_down(struct egre_softc *);
static int egre_input(const struct gre_tunnel *, struct mbuf *, int);
struct if_clone egre_cloner =
    { .ifc_list = { ((void *)0), ((void *)0) }, .ifc_name = "egre", .ifc_namelen = sizeof("egre") - 1, .ifc_create = egre_clone_create, .ifc_destroy = egre_clone_destroy, };
struct egre_tree egre_tree = { { ((void *)0) } };
struct nvgre_entry {
 struct { struct nvgre_entry *rbe_left; struct nvgre_entry *rbe_right; struct nvgre_entry *rbe_parent; int rbe_color; } nv_entry;
 struct ether_addr nv_dst;
 uint8_t nv_type;
 union gre_addr nv_gateway;
 struct refcnt nv_refs;
 int nv_age;
};
struct nvgre_map { struct rb_tree rbh_root; };
static inline int
  nvgre_entry_cmp(const struct nvgre_entry *,
      const struct nvgre_entry *);
extern const struct rb_type *const nvgre_map_RBT_TYPE; __attribute__((__unused__)) static inline void nvgre_map_RBT_INIT(struct nvgre_map *head) { _rb_init(&head->rbh_root); } __attribute__((__unused__)) static inline struct nvgre_entry * nvgre_map_RBT_INSERT(struct nvgre_map *head, struct nvgre_entry *elm) { return _rb_insert(nvgre_map_RBT_TYPE, &head->rbh_root, elm); } __attribute__((__unused__)) static inline struct nvgre_entry * nvgre_map_RBT_REMOVE(struct nvgre_map *head, struct nvgre_entry *elm) { return _rb_remove(nvgre_map_RBT_TYPE, &head->rbh_root, elm); } __attribute__((__unused__)) static inline struct nvgre_entry * nvgre_map_RBT_FIND(struct nvgre_map *head, const struct nvgre_entry *key) { return _rb_find(nvgre_map_RBT_TYPE, &head->rbh_root, key); } __attribute__((__unused__)) static inline struct nvgre_entry * nvgre_map_RBT_NFIND(struct nvgre_map *head, const struct nvgre_entry *key) { return _rb_nfind(nvgre_map_RBT_TYPE, &head->rbh_root, key); } __attribute__((__unused__)) static inline struct nvgre_entry * nvgre_map_RBT_ROOT(struct nvgre_map *head) { return _rb_root(nvgre_map_RBT_TYPE, &head->rbh_root); } __attribute__((__unused__)) static inline int nvgre_map_RBT_EMPTY(struct nvgre_map *head) { return _rb_empty(&head->rbh_root); } __attribute__((__unused__)) static inline struct nvgre_entry * nvgre_map_RBT_MIN(struct nvgre_map *head) { return _rb_min(nvgre_map_RBT_TYPE, &head->rbh_root); } __attribute__((__unused__)) static inline struct nvgre_entry * nvgre_map_RBT_MAX(struct nvgre_map *head) { return _rb_max(nvgre_map_RBT_TYPE, &head->rbh_root); } __attribute__((__unused__)) static inline struct nvgre_entry * nvgre_map_RBT_NEXT(struct nvgre_entry *elm) { return _rb_next(nvgre_map_RBT_TYPE, elm); } __attribute__((__unused__)) static inline struct nvgre_entry * nvgre_map_RBT_PREV(struct nvgre_entry *elm) { return _rb_prev(nvgre_map_RBT_TYPE, elm); } __attribute__((__unused__)) static inline struct nvgre_entry * nvgre_map_RBT_LEFT(struct nvgre_entry *elm) { return _rb_left(nvgre_map_RBT_TYPE, elm); } __attribute__((__unused__)) static inline struct nvgre_entry * nvgre_map_RBT_RIGHT(struct nvgre_entry *elm) { return _rb_right(nvgre_map_RBT_TYPE, elm); } __attribute__((__unused__)) static inline struct nvgre_entry * nvgre_map_RBT_PARENT(struct nvgre_entry *elm) { return _rb_parent(nvgre_map_RBT_TYPE, elm); } __attribute__((__unused__)) static inline void nvgre_map_RBT_SET_LEFT(struct nvgre_entry *elm, struct nvgre_entry *left) { return _rb_set_left(nvgre_map_RBT_TYPE, elm, left); } __attribute__((__unused__)) static inline void nvgre_map_RBT_SET_RIGHT(struct nvgre_entry *elm, struct nvgre_entry *right) { return _rb_set_right(nvgre_map_RBT_TYPE, elm, right); } __attribute__((__unused__)) static inline void nvgre_map_RBT_SET_PARENT(struct nvgre_entry *elm, struct nvgre_entry *parent) { return _rb_set_parent(nvgre_map_RBT_TYPE, elm, parent); } __attribute__((__unused__)) static inline void nvgre_map_RBT_POISON(struct nvgre_entry *elm, unsigned long poison) { return _rb_poison(nvgre_map_RBT_TYPE, elm, poison); } __attribute__((__unused__)) static inline int nvgre_map_RBT_CHECK(struct nvgre_entry *elm, unsigned long poison) { return _rb_check(nvgre_map_RBT_TYPE, elm, poison); };
struct nvgre_softc {
 struct gre_tunnel sc_tunnel;
 unsigned int sc_ifp0;
 struct rb_entry sc_uentry;
 struct rb_entry sc_mentry;
 struct arpcom sc_ac;
 struct ifmedia sc_media;
 struct mbuf_queue sc_send_list;
 struct task sc_send_task;
 void *sc_inm;
 void *sc_lhcookie;
 void *sc_dhcookie;
 struct rwlock sc_ether_lock;
 struct nvgre_map sc_ether_map;
 unsigned int sc_ether_num;
 unsigned int sc_ether_max;
 int sc_ether_tmo;
 struct timeout sc_ether_age;
};
struct nvgre_ucast_tree { struct rb_tree rbh_root; };
struct nvgre_mcast_tree { struct rb_tree rbh_root; };
static inline int
  nvgre_cmp_ucast(const struct nvgre_softc *,
      const struct nvgre_softc *);
static int
  nvgre_cmp_mcast(const struct gre_tunnel *,
      const union gre_addr *, unsigned int,
      const struct gre_tunnel *, const union gre_addr *,
      unsigned int);
static inline int
  nvgre_cmp_mcast_sc(const struct nvgre_softc *,
      const struct nvgre_softc *);
extern const struct rb_type *const nvgre_ucast_tree_RBT_TYPE; __attribute__((__unused__)) static inline void nvgre_ucast_tree_RBT_INIT(struct nvgre_ucast_tree *head) { _rb_init(&head->rbh_root); } __attribute__((__unused__)) static inline struct nvgre_softc * nvgre_ucast_tree_RBT_INSERT(struct nvgre_ucast_tree *head, struct nvgre_softc *elm) { return _rb_insert(nvgre_ucast_tree_RBT_TYPE, &head->rbh_root, elm); } __attribute__((__unused__)) static inline struct nvgre_softc * nvgre_ucast_tree_RBT_REMOVE(struct nvgre_ucast_tree *head, struct nvgre_softc *elm) { return _rb_remove(nvgre_ucast_tree_RBT_TYPE, &head->rbh_root, elm); } __attribute__((__unused__)) static inline struct nvgre_softc * nvgre_ucast_tree_RBT_FIND(struct nvgre_ucast_tree *head, const struct nvgre_softc *key) { return _rb_find(nvgre_ucast_tree_RBT_TYPE, &head->rbh_root, key); } __attribute__((__unused__)) static inline struct nvgre_softc * nvgre_ucast_tree_RBT_NFIND(struct nvgre_ucast_tree *head, const struct nvgre_softc *key) { return _rb_nfind(nvgre_ucast_tree_RBT_TYPE, &head->rbh_root, key); } __attribute__((__unused__)) static inline struct nvgre_softc * nvgre_ucast_tree_RBT_ROOT(struct nvgre_ucast_tree *head) { return _rb_root(nvgre_ucast_tree_RBT_TYPE, &head->rbh_root); } __attribute__((__unused__)) static inline int nvgre_ucast_tree_RBT_EMPTY(struct nvgre_ucast_tree *head) { return _rb_empty(&head->rbh_root); } __attribute__((__unused__)) static inline struct nvgre_softc * nvgre_ucast_tree_RBT_MIN(struct nvgre_ucast_tree *head) { return _rb_min(nvgre_ucast_tree_RBT_TYPE, &head->rbh_root); } __attribute__((__unused__)) static inline struct nvgre_softc * nvgre_ucast_tree_RBT_MAX(struct nvgre_ucast_tree *head) { return _rb_max(nvgre_ucast_tree_RBT_TYPE, &head->rbh_root); } __attribute__((__unused__)) static inline struct nvgre_softc * nvgre_ucast_tree_RBT_NEXT(struct nvgre_softc *elm) { return _rb_next(nvgre_ucast_tree_RBT_TYPE, elm); } __attribute__((__unused__)) static inline struct nvgre_softc * nvgre_ucast_tree_RBT_PREV(struct nvgre_softc *elm) { return _rb_prev(nvgre_ucast_tree_RBT_TYPE, elm); } __attribute__((__unused__)) static inline struct nvgre_softc * nvgre_ucast_tree_RBT_LEFT(struct nvgre_softc *elm) { return _rb_left(nvgre_ucast_tree_RBT_TYPE, elm); } __attribute__((__unused__)) static inline struct nvgre_softc * nvgre_ucast_tree_RBT_RIGHT(struct nvgre_softc *elm) { return _rb_right(nvgre_ucast_tree_RBT_TYPE, elm); } __attribute__((__unused__)) static inline struct nvgre_softc * nvgre_ucast_tree_RBT_PARENT(struct nvgre_softc *elm) { return _rb_parent(nvgre_ucast_tree_RBT_TYPE, elm); } __attribute__((__unused__)) static inline void nvgre_ucast_tree_RBT_SET_LEFT(struct nvgre_softc *elm, struct nvgre_softc *left) { return _rb_set_left(nvgre_ucast_tree_RBT_TYPE, elm, left); } __attribute__((__unused__)) static inline void nvgre_ucast_tree_RBT_SET_RIGHT(struct nvgre_softc *elm, struct nvgre_softc *right) { return _rb_set_right(nvgre_ucast_tree_RBT_TYPE, elm, right); } __attribute__((__unused__)) static inline void nvgre_ucast_tree_RBT_SET_PARENT(struct nvgre_softc *elm, struct nvgre_softc *parent) { return _rb_set_parent(nvgre_ucast_tree_RBT_TYPE, elm, parent); } __attribute__((__unused__)) static inline void nvgre_ucast_tree_RBT_POISON(struct nvgre_softc *elm, unsigned long poison) { return _rb_poison(nvgre_ucast_tree_RBT_TYPE, elm, poison); } __attribute__((__unused__)) static inline int nvgre_ucast_tree_RBT_CHECK(struct nvgre_softc *elm, unsigned long poison) { return _rb_check(nvgre_ucast_tree_RBT_TYPE, elm, poison); };
extern const struct rb_type *const nvgre_mcast_tree_RBT_TYPE; __attribute__((__unused__)) static inline void nvgre_mcast_tree_RBT_INIT(struct nvgre_mcast_tree *head) { _rb_init(&head->rbh_root); } __attribute__((__unused__)) static inline struct nvgre_softc * nvgre_mcast_tree_RBT_INSERT(struct nvgre_mcast_tree *head, struct nvgre_softc *elm) { return _rb_insert(nvgre_mcast_tree_RBT_TYPE, &head->rbh_root, elm); } __attribute__((__unused__)) static inline struct nvgre_softc * nvgre_mcast_tree_RBT_REMOVE(struct nvgre_mcast_tree *head, struct nvgre_softc *elm) { return _rb_remove(nvgre_mcast_tree_RBT_TYPE, &head->rbh_root, elm); } __attribute__((__unused__)) static inline struct nvgre_softc * nvgre_mcast_tree_RBT_FIND(struct nvgre_mcast_tree *head, const struct nvgre_softc *key) { return _rb_find(nvgre_mcast_tree_RBT_TYPE, &head->rbh_root, key); } __attribute__((__unused__)) static inline struct nvgre_softc * nvgre_mcast_tree_RBT_NFIND(struct nvgre_mcast_tree *head, const struct nvgre_softc *key) { return _rb_nfind(nvgre_mcast_tree_RBT_TYPE, &head->rbh_root, key); } __attribute__((__unused__)) static inline struct nvgre_softc * nvgre_mcast_tree_RBT_ROOT(struct nvgre_mcast_tree *head) { return _rb_root(nvgre_mcast_tree_RBT_TYPE, &head->rbh_root); } __attribute__((__unused__)) static inline int nvgre_mcast_tree_RBT_EMPTY(struct nvgre_mcast_tree *head) { return _rb_empty(&head->rbh_root); } __attribute__((__unused__)) static inline struct nvgre_softc * nvgre_mcast_tree_RBT_MIN(struct nvgre_mcast_tree *head) { return _rb_min(nvgre_mcast_tree_RBT_TYPE, &head->rbh_root); } __attribute__((__unused__)) static inline struct nvgre_softc * nvgre_mcast_tree_RBT_MAX(struct nvgre_mcast_tree *head) { return _rb_max(nvgre_mcast_tree_RBT_TYPE, &head->rbh_root); } __attribute__((__unused__)) static inline struct nvgre_softc * nvgre_mcast_tree_RBT_NEXT(struct nvgre_softc *elm) { return _rb_next(nvgre_mcast_tree_RBT_TYPE, elm); } __attribute__((__unused__)) static inline struct nvgre_softc * nvgre_mcast_tree_RBT_PREV(struct nvgre_softc *elm) { return _rb_prev(nvgre_mcast_tree_RBT_TYPE, elm); } __attribute__((__unused__)) static inline struct nvgre_softc * nvgre_mcast_tree_RBT_LEFT(struct nvgre_softc *elm) { return _rb_left(nvgre_mcast_tree_RBT_TYPE, elm); } __attribute__((__unused__)) static inline struct nvgre_softc * nvgre_mcast_tree_RBT_RIGHT(struct nvgre_softc *elm) { return _rb_right(nvgre_mcast_tree_RBT_TYPE, elm); } __attribute__((__unused__)) static inline struct nvgre_softc * nvgre_mcast_tree_RBT_PARENT(struct nvgre_softc *elm) { return _rb_parent(nvgre_mcast_tree_RBT_TYPE, elm); } __attribute__((__unused__)) static inline void nvgre_mcast_tree_RBT_SET_LEFT(struct nvgre_softc *elm, struct nvgre_softc *left) { return _rb_set_left(nvgre_mcast_tree_RBT_TYPE, elm, left); } __attribute__((__unused__)) static inline void nvgre_mcast_tree_RBT_SET_RIGHT(struct nvgre_softc *elm, struct nvgre_softc *right) { return _rb_set_right(nvgre_mcast_tree_RBT_TYPE, elm, right); } __attribute__((__unused__)) static inline void nvgre_mcast_tree_RBT_SET_PARENT(struct nvgre_softc *elm, struct nvgre_softc *parent) { return _rb_set_parent(nvgre_mcast_tree_RBT_TYPE, elm, parent); } __attribute__((__unused__)) static inline void nvgre_mcast_tree_RBT_POISON(struct nvgre_softc *elm, unsigned long poison) { return _rb_poison(nvgre_mcast_tree_RBT_TYPE, elm, poison); } __attribute__((__unused__)) static inline int nvgre_mcast_tree_RBT_CHECK(struct nvgre_softc *elm, unsigned long poison) { return _rb_check(nvgre_mcast_tree_RBT_TYPE, elm, poison); };
static int nvgre_clone_create(struct if_clone *, int);
static int nvgre_clone_destroy(struct ifnet *);
static void nvgre_start(struct ifnet *);
static int nvgre_ioctl(struct ifnet *, u_long, caddr_t);
static int nvgre_up(struct nvgre_softc *);
static int nvgre_down(struct nvgre_softc *);
static int nvgre_set_parent(struct nvgre_softc *, const char *);
static void nvgre_link_change(void *);
static void nvgre_detach(void *);
static int nvgre_input(const struct gre_tunnel *, struct mbuf *, int);
static void nvgre_send(void *);
static int nvgre_rtfind(struct nvgre_softc *, struct ifbaconf *);
static void nvgre_flush_map(struct nvgre_softc *);
static void nvgre_input_map(struct nvgre_softc *,
      const struct gre_tunnel *, const struct ether_header *);
static void nvgre_age(void *);
struct if_clone nvgre_cloner =
    { .ifc_list = { ((void *)0), ((void *)0) }, .ifc_name = "nvgre", .ifc_namelen = sizeof("nvgre") - 1, .ifc_create = nvgre_clone_create, .ifc_destroy = nvgre_clone_destroy, };
struct pool nvgre_pool;
struct nvgre_ucast_tree nvgre_ucast_tree = { { ((void *)0) } };
struct nvgre_mcast_tree nvgre_mcast_tree = { { ((void *)0) } };
int gre_allow = 0;
int gre_wccp = 0;
void
greattach(int n)
{
 if_clone_attach(&gre_cloner);
 if_clone_attach(&mgre_cloner);
 if_clone_attach(&egre_cloner);
 if_clone_attach(&nvgre_cloner);
}
static int
gre_clone_create(struct if_clone *ifc, int unit)
{
 struct gre_softc *sc;
 struct ifnet *ifp;
 sc = malloc(sizeof(*sc), 2, 0x0001|0x0008);
 snprintf(sc->sc_if.if_xname, sizeof sc->sc_if.if_xname, "%s%d",
     ifc->ifc_name, unit);
 ifp = &sc->sc_if;
 ifp->if_softc = sc;
 ifp->if_data.ifi_type = 0x83;
 ifp->if_data.ifi_hdrlen = (sizeof(struct ip) + sizeof(struct gre_header));
 ifp->if_data.ifi_mtu = 1476;
 ifp->if_flags = 0x10|0x8000;
 ifp->if_xflags = 0x2;
 ifp->if_output = gre_output;
 ifp->if_start = gre_start;
 ifp->if_ioctl = gre_ioctl;
 ifp->if_rtrequest = p2p_rtrequest;
 sc->sc_tunnel.t_ttl = ip_defttl;
 sc->sc_tunnel.t_df = ((__uint16_t)(0));
 timeout_set(&sc->sc_ka_send, gre_keepalive_send, sc);
 timeout_set_proc(&sc->sc_ka_hold, gre_keepalive_hold, sc);
 sc->sc_ka_state = 0;
 if_attach(ifp);
 if_alloc_sadl(ifp);
 bpfattach(&ifp->if_bpf, ifp, 12, sizeof(uint32_t));
 do { _rw_enter_write(&netlock ); } while (0);
 do { (sc)->sc_entry.tqe_next = ((void *)0); (sc)->sc_entry.tqe_prev = (&gre_list)->tqh_last; *(&gre_list)->tqh_last = (sc); (&gre_list)->tqh_last = &(sc)->sc_entry.tqe_next; } while (0);
 do { _rw_exit_write(&netlock ); } while (0);
 return (0);
}
static int
gre_clone_destroy(struct ifnet *ifp)
{
 struct gre_softc *sc = ifp->if_softc;
 do { _rw_enter_write(&netlock ); } while (0);
 if (((ifp->if_flags) & (0x40)))
  gre_down(sc);
 do { if (((sc)->sc_entry.tqe_next) != ((void *)0)) (sc)->sc_entry.tqe_next->sc_entry.tqe_prev = (sc)->sc_entry.tqe_prev; else (&gre_list)->tqh_last = (sc)->sc_entry.tqe_prev; *(sc)->sc_entry.tqe_prev = (sc)->sc_entry.tqe_next; ((sc)->sc_entry.tqe_prev) = ((void *)-1); ((sc)->sc_entry.tqe_next) = ((void *)-1); } while (0);
 do { _rw_exit_write(&netlock ); } while (0);
 if_detach(ifp);
 free(sc, 2, sizeof(*sc));
 return (0);
}
static int
mgre_clone_create(struct if_clone *ifc, int unit)
{
 struct mgre_softc *sc;
 struct ifnet *ifp;
 sc = malloc(sizeof(*sc), 2, 0x0001|0x0008);
 ifp = &sc->sc_if;
 snprintf(ifp->if_xname, sizeof(ifp->if_xname),
     "%s%d", ifc->ifc_name, unit);
 ifp->if_softc = sc;
 ifp->if_data.ifi_type = 0x88;
 ifp->if_data.ifi_hdrlen = (sizeof(struct ip) + sizeof(struct gre_header));
 ifp->if_data.ifi_mtu = 1476;
 ifp->if_flags = 0x8000|0x800;
 ifp->if_xflags = 0x2;
 ifp->if_rtrequest = mgre_rtrequest;
 ifp->if_output = mgre_output;
 ifp->if_start = mgre_start;
 ifp->if_ioctl = mgre_ioctl;
 sc->sc_tunnel.t_ttl = ip_defttl;
 sc->sc_tunnel.t_df = ((__uint16_t)(0));
 if_attach(ifp);
 if_alloc_sadl(ifp);
 bpfattach(&ifp->if_bpf, ifp, 12, sizeof(uint32_t));
 return (0);
}
static int
mgre_clone_destroy(struct ifnet *ifp)
{
 struct mgre_softc *sc = ifp->if_softc;
 do { _rw_enter_write(&netlock ); } while (0);
 if (((ifp->if_flags) & (0x40)))
  mgre_down(sc);
 do { _rw_exit_write(&netlock ); } while (0);
 if_detach(ifp);
 free(sc, 2, sizeof(*sc));
 return (0);
}
static int
egre_clone_create(struct if_clone *ifc, int unit)
{
 struct egre_softc *sc;
 struct ifnet *ifp;
 sc = malloc(sizeof(*sc), 2, 0x0001|0x0008);
 ifp = &sc->sc_ac.ac_if;
 snprintf(ifp->if_xname, sizeof(ifp->if_xname), "%s%d",
     ifc->ifc_name, unit);
 ifp->if_softc = sc;
 ifp->if_data.ifi_mtu = 1500;
 ifp->if_ioctl = egre_ioctl;
 ifp->if_start = egre_start;
 ifp->if_xflags = 0x2;
 ((&ifp->if_snd)->ifq_maxlen = (256));
 ifp->if_flags = 0x2 | 0x800 | 0x8000;
 ether_fakeaddr(ifp);
 sc->sc_tunnel.t_ttl = ip_defttl;
 sc->sc_tunnel.t_df = ((__uint16_t)(0));
 ifmedia_init(&sc->sc_media, 0, egre_media_change, egre_media_status);
 ifmedia_add(&sc->sc_media, 0x0000000000000100ULL | 0ULL, 0, ((void *)0));
 ifmedia_set(&sc->sc_media, 0x0000000000000100ULL | 0ULL);
 if_attach(ifp);
 ether_ifattach(ifp);
 return (0);
}
static int
egre_clone_destroy(struct ifnet *ifp)
{
 struct egre_softc *sc = ifp->if_softc;
 do { _rw_enter_write(&netlock ); } while (0);
 if (((ifp->if_flags) & (0x40)))
  egre_down(sc);
 do { _rw_exit_write(&netlock ); } while (0);
 ifmedia_delete_instance(&sc->sc_media, ((uint64_t) -1));
 ether_ifdetach(ifp);
 if_detach(ifp);
 free(sc, 2, sizeof(*sc));
 return (0);
}
static int
nvgre_clone_create(struct if_clone *ifc, int unit)
{
 struct nvgre_softc *sc;
 struct ifnet *ifp;
 struct gre_tunnel *tunnel;
 if (nvgre_pool.pr_size == 0) {
  pool_init(&nvgre_pool, sizeof(struct nvgre_entry), 0,
      2, 0, "nvgren", ((void *)0));
 }
 sc = malloc(sizeof(*sc), 2, 0x0001|0x0008);
 ifp = &sc->sc_ac.ac_if;
 snprintf(ifp->if_xname, sizeof(ifp->if_xname), "%s%d",
     ifc->ifc_name, unit);
 ifp->if_softc = sc;
 ifp->if_data.ifi_mtu = 1500;
 ifp->if_ioctl = nvgre_ioctl;
 ifp->if_start = nvgre_start;
 ifp->if_xflags = 0x2;
 ((&ifp->if_snd)->ifq_maxlen = (256));
 ifp->if_flags = 0x2 | 0x800 | 0x8000;
 ether_fakeaddr(ifp);
 tunnel = &sc->sc_tunnel;
 tunnel->t_ttl = 1;
 tunnel->t_df = ((__uint16_t)(0x4000));
 tunnel->t_key_mask = ((__uint32_t)(0xffffff00U));
 tunnel->t_key = ((__uint32_t)((0x000fff + 1) << 8));
 mq_init(&sc->sc_send_list, 256 * 2, 2);
 task_set(&sc->sc_send_task, nvgre_send, sc);
 _rw_init_flags(&sc->sc_ether_lock, "nvgrelk", 0, ((void *)0));
 nvgre_map_RBT_INIT(&sc->sc_ether_map);
 sc->sc_ether_num = 0;
 sc->sc_ether_max = 100;
 sc->sc_ether_tmo = 240 * hz;
 timeout_set_proc(&sc->sc_ether_age, nvgre_age, sc);
 ifmedia_init(&sc->sc_media, 0, egre_media_change, egre_media_status);
 ifmedia_add(&sc->sc_media, 0x0000000000000100ULL | 0ULL, 0, ((void *)0));
 ifmedia_set(&sc->sc_media, 0x0000000000000100ULL | 0ULL);
 if_attach(ifp);
 ether_ifattach(ifp);
 return (0);
}
static int
nvgre_clone_destroy(struct ifnet *ifp)
{
 struct nvgre_softc *sc = ifp->if_softc;
 do { _rw_enter_write(&netlock ); } while (0);
 if (((ifp->if_flags) & (0x40)))
  nvgre_down(sc);
 do { _rw_exit_write(&netlock ); } while (0);
 ifmedia_delete_instance(&sc->sc_media, ((uint64_t) -1));
 ether_ifdetach(ifp);
 if_detach(ifp);
 free(sc, 2, sizeof(*sc));
 return (0);
}
int
gre_input(struct mbuf **mp, int *offp, int type, int af)
{
 struct mbuf *m = *mp;
 struct gre_tunnel key;
 struct ip *ip;
 ip = ((struct ip *)((m)->m_hdr.mh_data));
 key.t_af = 2;
 key.t_ttl = ip->ip_ttl;
 key.t_src.in4 = ip->ip_dst;
 key.t_dst.in4 = ip->ip_src;
 if (gre_input_key(mp, offp, type, af, &key) == -1)
  return (rip_input(mp, offp, type, af));
 return (257);
}
int
gre_input6(struct mbuf **mp, int *offp, int type, int af)
{
 struct mbuf *m = *mp;
 struct gre_tunnel key;
 struct ip6_hdr *ip6;
 ip6 = ((struct ip6_hdr *)((m)->m_hdr.mh_data));
 key.t_af = 24;
 key.t_ttl = ip6->ip6_ctlun.ip6_un1.ip6_un1_hlim;
 key.t_src.in6 = ip6->ip6_dst;
 key.t_dst.in6 = ip6->ip6_src;
 if (gre_input_key(mp, offp, type, af, &key) == -1)
  return (rip6_input(mp, offp, type, af));
 return (257);
}
static inline struct ifnet *
gre_find(const struct gre_tunnel *key)
{
 struct gre_softc *sc;
 for((sc) = ((&gre_list)->tqh_first); (sc) != ((void *)0); (sc) = ((sc)->sc_entry.tqe_next)) {
  if (gre_cmp(key, &sc->sc_tunnel) != 0)
   continue;
  if (!((sc->sc_if.if_flags) & (0x40)))
   continue;
  return (&sc->sc_if);
 }
 return (((void *)0));
}
static inline struct ifnet *
mgre_find(const struct gre_tunnel *key)
{
 struct mgre_softc *sc;
 do { int _s = rw_status(&netlock); if ((splassert_ctl > 0) && (_s != 0x0001UL && _s != 0x0002UL)) splassert_fail(0x0002UL, _s, __func__); } while (0);
 sc = mgre_tree_RBT_FIND(&mgre_tree, (const struct mgre_softc *)key);
 if (sc != ((void *)0))
  return (&sc->sc_if);
 return (((void *)0));
}
static int
gre_input_key(struct mbuf **mp, int *offp, int type, int af,
    struct gre_tunnel *key)
{
 struct mbuf *m = *mp;
 int iphlen = *offp, hlen;
 struct ifnet *ifp;
 const struct gre_tunnel *tunnel;
 caddr_t buf;
 struct gre_header *gh;
 struct gre_h_key *gkh;
 void (*input)(struct ifnet *, struct mbuf *);
 int bpf_af = 0;
 int mcast = 0;
 int ttloff;
 if (!gre_allow)
  goto decline;
 hlen = iphlen + sizeof(*gh);
 if (m->M_dat.MH.MH_pkthdr.len < hlen)
  goto decline;
 m = m_pullup(m, hlen);
 if (m == ((void *)0))
  return (257);
 buf = ((caddr_t)((m)->m_hdr.mh_data));
 gh = (struct gre_header *)(buf + iphlen);
 switch (gh->gre_flags & ((__uint16_t)(0x0007))) {
 case ((__uint16_t)(0x0000)):
  break;
 case ((__uint16_t)(0x0001)):
  if (pipex_enable) {
   struct pipex_session *session;
   session = pipex_pptp_lookup_session(m);
   if (session != ((void *)0) &&
       pipex_pptp_input(m, session) == ((void *)0))
    return (257);
  }
 default:
  goto decline;
 }
 if ((gh->gre_flags & ((__uint16_t)(~(0x2000|0x0007)))) != ((__uint16_t)(0)))
  goto decline;
 if (gh->gre_flags & ((__uint16_t)(0x2000))) {
  hlen += sizeof(*gkh);
  if (m->M_dat.MH.MH_pkthdr.len < hlen)
   goto decline;
  m = m_pullup(m, hlen);
  if (m == ((void *)0))
   return (257);
  buf = ((caddr_t)((m)->m_hdr.mh_data));
  gh = (struct gre_header *)(buf + iphlen);
  gkh = (struct gre_h_key *)(gh + 1);
  key->t_key_mask = ((__uint32_t)(0xffffffffU));
  key->t_key = gkh->gre_key;
 } else
  key->t_key_mask = ((__uint32_t)(0x00000000U));
 key->t_rtableid = m->M_dat.MH.MH_pkthdr.ph_rtableid;
 if (gh->gre_proto == ((__uint16_t)(0x6558))) {
  if (egre_input(key, m, hlen) == -1 &&
      nvgre_input(key, m, hlen) == -1)
   goto decline;
  return (257);
 }
 ifp = gre_find(key);
 if (ifp == ((void *)0)) {
  ifp = mgre_find(key);
  if (ifp == ((void *)0))
   goto decline;
 }
 switch (gh->gre_proto) {
 case ((__uint16_t)(0x883e)): {
  struct mbuf *n;
  int off;
  if (!gre_wccp && !((ifp->if_flags) & (0x1000)))
   goto decline;
  n = m_getptr(m, hlen, &off);
  if (n == ((void *)0))
   goto decline;
  if (n->m_hdr.mh_data[off] >> 4 != 4)
   hlen += sizeof(gre_wccp);
 }
 case ((__uint16_t)(0x0800)):
  bpf_af = 2;
  ttloff = __builtin_offsetof(struct ip, ip_ttl);
  input = ipv4_input;
  break;
 case ((__uint16_t)(0x86DD)):
  bpf_af = 24;
  ttloff = __builtin_offsetof(struct ip6_hdr, ip6_ctlun.ip6_un1.ip6_un1_hlim);
  input = ipv6_input;
  break;
 case ((__uint16_t)(0x8848)):
  mcast = 0x0200|0x0100;
 case ((__uint16_t)(0x8847)):
  bpf_af = 33;
  ttloff = 3;
  input = mpls_input;
  break;
 case ((__uint16_t)(0)):
  if (ifp->if_data.ifi_type != 0x83) {
   goto decline;
  }
  bpf_af = 0;
  input = gre_keepalive_recv;
  break;
 default:
  goto decline;
 }
 m_adj(m, hlen);
 tunnel = ifp->if_softc;
 if (tunnel->t_ttl == -1) {
  m = m_pullup(m, ttloff + 1);
  if (m == ((void *)0))
   return (257);
  *(m->m_hdr.mh_data + ttloff) = key->t_ttl;
 }
 if (tunnel->t_key_mask == ((__uint32_t)(0xffffff00U))) {
  m->M_dat.MH.MH_pkthdr.ph_flowid = 0x8000 |
      (((__uint32_t)(*(__uint32_t *)(&key->t_key))) & ~((__uint32_t)(0xffffff00U)));
 }
 m->m_hdr.mh_flags &= ~(0x0200|0x0100);
 m->m_hdr.mh_flags |= mcast;
 m->M_dat.MH.MH_pkthdr.ph_ifidx = ifp->if_index;
 m->M_dat.MH.MH_pkthdr.ph_rtableid = ifp->if_data.ifi_rdomain;
 pf_pkt_addr_changed(m);
 ifp->if_data.ifi_ipackets++;
 ifp->if_data.ifi_ibytes += m->M_dat.MH.MH_pkthdr.len;
 if (ifp->if_bpf)
  bpf_mtap_af(ifp->if_bpf, bpf_af, m, 1);
 (*input)(ifp, m);
 return (257);
decline:
 mp = &m;
 return (-1);
}
static int
egre_input(const struct gre_tunnel *key, struct mbuf *m, int hlen)
{
 struct egre_softc *sc;
 struct mbuf_list ml = { ((void *)0), ((void *)0), 0 };
 do { int _s = rw_status(&netlock); if ((splassert_ctl > 0) && (_s != 0x0001UL && _s != 0x0002UL)) splassert_fail(0x0002UL, _s, __func__); } while (0);
 sc = egre_tree_RBT_FIND(&egre_tree, (const struct egre_softc *)key);
 if (sc == ((void *)0))
  return (-1);
 m = gre_ether_align(m, hlen);
 if (m == ((void *)0))
  return (0);
 if (sc->sc_tunnel.t_key_mask == ((__uint32_t)(0xffffff00U))) {
  m->M_dat.MH.MH_pkthdr.ph_flowid = 0x8000 |
      (((__uint32_t)(*(__uint32_t *)(&key->t_key))) & ~((__uint32_t)(0xffffff00U)));
 }
 m->m_hdr.mh_flags &= ~(0x0200|0x0100);
 pf_pkt_addr_changed(m);
 ml_enqueue(&ml, m);
 if_input(&sc->sc_ac.ac_if, &ml);
 return (0);
}
static int
nvgre_rtfind(struct nvgre_softc *sc, struct ifbaconf *baconf)
{
 struct ifnet *ifp = &sc->sc_ac.ac_if;
 struct nvgre_entry *nv;
 struct ifbareq bareq;
 caddr_t uaddr, end;
 int error;
 int age;
 if (baconf->ifbac_len == 0) {
  baconf->ifbac_len = sc->sc_ether_num * sizeof(bareq);
  return (0);
 }
 uaddr = baconf->ifbac_ifbacu.ifbacu_buf;
 end = uaddr + baconf->ifbac_len;
 _rw_enter_read(&sc->sc_ether_lock );
 for ((nv) = nvgre_map_RBT_MIN((&sc->sc_ether_map)); (nv) != ((void *)0); (nv) = nvgre_map_RBT_NEXT((nv))) {
  if (uaddr >= end)
   break;
  __builtin_memcpy((bareq.ifba_name), (ifp->if_xname), (sizeof(bareq.ifba_name)));
  __builtin_memcpy((bareq.ifba_ifsname), (ifp->if_xname), (sizeof(bareq.ifba_ifsname)));
  __builtin_memcpy((&bareq.ifba_dst), (&nv->nv_dst), (sizeof(bareq.ifba_dst)));
  __builtin_memset((&bareq.ifba_dstsa), (0), (sizeof(bareq.ifba_dstsa)));
  switch (sc->sc_tunnel.t_af) {
  case 2: {
   struct sockaddr_in *sin;
   sin = (struct sockaddr_in *)&bareq.ifba_dstsa;
   sin->sin_len = sizeof(*sin);
   sin->sin_family = 2;
   sin->sin_addr = nv->nv_gateway.in4;
   break;
  }
  case 24: {
   struct sockaddr_in6 *sin6;
   sin6 = (struct sockaddr_in6 *)&bareq.ifba_dstsa;
   sin6->sin6_len = sizeof(*sin6);
   sin6->sin6_family = 24;
   sin6->sin6_addr = nv->nv_gateway.in6;
   break;
  }
  default:
   unhandled_af(sc->sc_tunnel.t_af);
  }
  switch (nv->nv_type) {
  case 0:
   age = (ticks - nv->nv_age) / hz;
   bareq.ifba_age = (((age)<(0xff))?(age):(0xff));
   bareq.ifba_flags = 0x00;
   break;
  case 1:
   bareq.ifba_age = 0;
   bareq.ifba_flags = 0x01;
   break;
  }
  error = copyout(&bareq, uaddr, sizeof(bareq));
  if (error != 0) {
   _rw_exit_read(&sc->sc_ether_lock );
   return (error);
  }
  uaddr += sizeof(bareq);
 }
 baconf->ifbac_len = sc->sc_ether_num * sizeof(bareq);
 _rw_exit_read(&sc->sc_ether_lock );
 return (0);
}
static void
nvgre_flush_map(struct nvgre_softc *sc)
{
 struct nvgre_map map;
 struct nvgre_entry *nv, *nnv;
 _rw_enter_write(&sc->sc_ether_lock );
 map = sc->sc_ether_map;
 nvgre_map_RBT_INIT(&sc->sc_ether_map);
 sc->sc_ether_num = 0;
 _rw_exit_write(&sc->sc_ether_lock );
 for ((nv) = nvgre_map_RBT_MIN((&map)); (nv) != ((void *)0) && ((nnv) = nvgre_map_RBT_NEXT((nv)), 1); (nv) = (nnv)) {
  nvgre_map_RBT_REMOVE(&map, nv);
  if (refcnt_rele(&nv->nv_refs))
   pool_put(&nvgre_pool, nv);
 }
}
static void
nvgre_input_map(struct nvgre_softc *sc, const struct gre_tunnel *key,
    const struct ether_header *eh)
{
 struct nvgre_entry *nv, nkey;
 int new = 0;
 if ((__builtin_memcmp(((((eh->ether_shost)))), (((etherbroadcastaddr))), (6)) == 0) ||
     (*(eh->ether_shost) & 0x01))
  return;
 __builtin_memcpy((&nkey.nv_dst), (eh->ether_shost), (6));
 _rw_enter_read(&sc->sc_ether_lock );
 nv = nvgre_map_RBT_FIND(&sc->sc_ether_map, &nkey);
 if (nv == ((void *)0))
  new = 1;
 else {
  nv->nv_age = ticks;
  if (nv->nv_type != 0 ||
      gre_ip_cmp(key->t_af, &key->t_dst, &nv->nv_gateway))
   nv = ((void *)0);
  else
   refcnt_take(&nv->nv_refs);
 }
 _rw_exit_read(&sc->sc_ether_lock );
 if (new) {
  struct nvgre_entry *onv;
  unsigned int num;
  nv = pool_get(&nvgre_pool, 0x0002);
  if (nv == ((void *)0)) {
   return;
  }
  __builtin_memcpy((&nv->nv_dst), (eh->ether_shost), (6));
  nv->nv_type = 0;
  nv->nv_gateway = key->t_dst;
  refcnt_init(&nv->nv_refs);
  nv->nv_age = ticks;
  _rw_enter_write(&sc->sc_ether_lock );
  num = sc->sc_ether_num;
  if (++num > sc->sc_ether_max)
   onv = nv;
  else {
   onv = nvgre_map_RBT_INSERT(&sc->sc_ether_map, nv);
   if (onv == ((void *)0)) {
    sc->sc_ether_num = num;
   }
  }
  _rw_exit_write(&sc->sc_ether_lock );
  if (onv != ((void *)0))
   pool_put(&nvgre_pool, nv);
 } else if (nv != ((void *)0)) {
  _rw_enter_write(&sc->sc_ether_lock );
  nv->nv_gateway = key->t_dst;
  _rw_exit_write(&sc->sc_ether_lock );
  if (refcnt_rele(&nv->nv_refs)) {
   pool_put(&nvgre_pool, nv);
  }
 }
}
static inline struct nvgre_softc *
nvgre_mcast_find(const struct gre_tunnel *key, unsigned int if0idx)
{
 struct nvgre_softc *sc;
 int rv;
 do { int _s = rw_status(&netlock); if ((splassert_ctl > 0) && (_s != 0x0001UL && _s != 0x0002UL)) splassert_fail(0x0002UL, _s, __func__); } while (0);
 sc = nvgre_mcast_tree_RBT_ROOT(&nvgre_mcast_tree);
 while (sc != ((void *)0)) {
  rv = nvgre_cmp_mcast(key, &key->t_src, if0idx,
      &sc->sc_tunnel, &sc->sc_tunnel.t_dst, sc->sc_ifp0);
  if (rv == 0)
   return (sc);
  if (rv < 0)
   sc = nvgre_mcast_tree_RBT_LEFT(sc);
  else
   sc = nvgre_mcast_tree_RBT_RIGHT(sc);
 }
 return (((void *)0));
}
static inline struct nvgre_softc *
nvgre_ucast_find(const struct gre_tunnel *key)
{
 do { int _s = rw_status(&netlock); if ((splassert_ctl > 0) && (_s != 0x0001UL && _s != 0x0002UL)) splassert_fail(0x0002UL, _s, __func__); } while (0);
 return (nvgre_ucast_tree_RBT_FIND(&nvgre_ucast_tree, (struct nvgre_softc *)key));
}
static int
nvgre_input(const struct gre_tunnel *key, struct mbuf *m, int hlen)
{
 struct nvgre_softc *sc;
 struct mbuf_list ml = { ((void *)0), ((void *)0), 0 };
 if (((m->m_hdr.mh_flags) & (0x0200|0x0100)))
  sc = nvgre_mcast_find(key, m->M_dat.MH.MH_pkthdr.ph_ifidx);
 else
  sc = nvgre_ucast_find(key);
 if (sc == ((void *)0))
  return (-1);
 m = gre_ether_align(m, hlen);
 if (m == ((void *)0))
  return (0);
 nvgre_input_map(sc, key, ((struct ether_header *)((m)->m_hdr.mh_data)));
 m->M_dat.MH.MH_pkthdr.ph_flowid = 0x8000 |
     (((__uint32_t)(*(__uint32_t *)(&key->t_key))) & ~((__uint32_t)(0xffffff00U)));
 m->m_hdr.mh_flags &= ~(0x0200|0x0100);
 pf_pkt_addr_changed(m);
 ml_enqueue(&ml, m);
 if_input(&sc->sc_ac.ac_if, &ml);
 return (0);
}
static struct mbuf *
gre_ether_align(struct mbuf *m, int hlen)
{
 struct mbuf *n;
 int off;
 m_adj(m, hlen);
 if (m->M_dat.MH.MH_pkthdr.len < sizeof(struct ether_header)) {
  m_freem(m);
  return (((void *)0));
 }
 m = m_pullup(m, sizeof(struct ether_header));
 if (m == ((void *)0))
  return (((void *)0));
 n = m_getptr(m, sizeof(struct ether_header), &off);
 if (n == ((void *)0)) {
  m_freem(m);
  return (((void *)0));
 }
 if (!((((unsigned long)(((caddr_t)((n)->m_hdr.mh_data)) + off)) & (sizeof(uint32_t) - 1)) == 0)) {
  n = m_dup_pkt(m, 2, 0x0002);
  m_freem(m);
  if (n == ((void *)0))
   return (((void *)0));
  m = n;
 }
 return (m);
}
static void
gre_keepalive_recv(struct ifnet *ifp, struct mbuf *m)
{
 struct gre_softc *sc = ifp->if_softc;
 struct gre_keepalive *gk;
 SIPHASH_CTX ctx;
 uint8_t digest[8];
 int uptime, delta;
 int tick = ticks;
 if (sc->sc_ka_state == 0 ||
     sc->sc_tunnel.t_rtableid != sc->sc_if.if_data.ifi_rdomain)
  goto drop;
 if (m->M_dat.MH.MH_pkthdr.len < sizeof(*gk))
  goto drop;
 m = m_pullup(m, sizeof(*gk));
 if (m == ((void *)0))
  return;
 gk = ((struct gre_keepalive *)((m)->m_hdr.mh_data));
 uptime = ((__uint32_t)(*(__uint32_t *)(&gk->gk_uptime))) - sc->sc_ka_bias;
 delta = tick - uptime;
 if (delta < 0)
  goto drop;
 if (delta > hz * 10)
  goto drop;
 delta = tick - sc->sc_ka_recvtm;
 if (delta > 0 && delta < (hz / 10))
  goto drop;
 SipHash_Init((&ctx), (&sc->sc_ka_key));
 SipHash_Update((&ctx), 2, 4, (&gk->gk_uptime), (sizeof(gk->gk_uptime)));
 SipHash_Update((&ctx), 2, 4, (&gk->gk_random), (sizeof(gk->gk_random)));
 SipHash_Final((digest), (&ctx), 2, 4);
 if (__builtin_memcmp((digest), (gk->gk_digest), (sizeof(digest))) != 0)
  goto drop;
 sc->sc_ka_recvtm = tick;
 switch (sc->sc_ka_state) {
 case 1:
  sc->sc_ka_state = 2;
  sc->sc_ka_holdcnt = sc->sc_ka_holdmax;
  sc->sc_ka_holdmax = (((sc->sc_ka_holdmax * 2)<(16 * sc->sc_ka_count))?(sc->sc_ka_holdmax * 2):(16 * sc->sc_ka_count));
  break;
 case 2:
  if (--sc->sc_ka_holdcnt > 0)
   break;
  sc->sc_ka_state = 3;
  gre_link_state(sc);
  break;
 case 3:
  sc->sc_ka_holdmax--;
  sc->sc_ka_holdmax = (((sc->sc_ka_holdmax)>(sc->sc_ka_count))?(sc->sc_ka_holdmax):(sc->sc_ka_count));
  break;
 }
 timeout_add_sec(&sc->sc_ka_hold, sc->sc_ka_timeo * sc->sc_ka_count);
drop:
 m_freem(m);
}
static int
gre_output(struct ifnet *ifp, struct mbuf *m, struct sockaddr *dst,
    struct rtentry *rt)
{
 struct m_tag *mtag;
 int error = 0;
 if (!gre_allow) {
  error = 13;
  goto drop;
 }
 if (!((ifp->if_flags) & (0x40))) {
  error = 50;
  goto drop;
 }
 switch (dst->sa_family) {
 case 2:
 case 24:
 case 33:
  break;
 default:
  error = 47;
  goto drop;
 }
 for (mtag = m_tag_find(m, 0x0080, ((void *)0)); mtag;
      mtag = m_tag_find(m, 0x0080, mtag)) {
  if (__builtin_memcmp(((caddr_t)(mtag + 1)), (&ifp->if_index), (sizeof(ifp->if_index))) == 0) {
   m_freem(m);
   error = 5;
   goto end;
  }
 }
 mtag = m_tag_get(0x0080, sizeof(ifp->if_index), 0x0002);
 if (mtag == ((void *)0)) {
  m_freem(m);
  error = 55;
  goto end;
 }
 __builtin_memcpy(((caddr_t)(mtag + 1)), (&ifp->if_index), (sizeof(ifp->if_index)));
 m_tag_prepend(m, mtag);
 m->M_dat.MH.MH_pkthdr.ph_family = dst->sa_family;
 error = if_enqueue(ifp, m);
end:
 if (error)
  ifp->if_data.ifi_oerrors++;
 return (error);
drop:
 m_freem(m);
 return (error);
}
void
gre_start(struct ifnet *ifp)
{
 struct gre_softc *sc = ifp->if_softc;
 struct mbuf *m;
 int af;
 caddr_t if_bpf;
 while ((m = ifq_dequeue(&ifp->if_snd)) != ((void *)0)) {
  af = m->M_dat.MH.MH_pkthdr.ph_family;
  if_bpf = ifp->if_bpf;
  if (if_bpf)
   bpf_mtap_af(if_bpf, af, m, (1<<1));
  m = gre_l3_encap_dst((&sc->sc_tunnel), &(&sc->sc_tunnel)->t_dst, (m), (af));
  if (m == ((void *)0) || gre_ip_output(&sc->sc_tunnel, m) != 0) {
   ifp->if_data.ifi_oerrors++;
   continue;
  }
 }
}
void
mgre_rtrequest(struct ifnet *ifp, int req, struct rtentry *rt)
{
 struct ifnet *lo0ifp;
 struct ifaddr *ifa, *lo0ifa;
 switch (req) {
 case 0x1:
  if (!((rt->rt_flags) & (0x200000)))
   break;
  for((ifa) = ((&ifp->if_addrlist)->tqh_first); (ifa) != ((void *)0); (ifa) = ((ifa)->ifa_list.tqe_next)) {
   if (__builtin_memcmp((((rt)->rt_dest)), (ifa->ifa_addr), (((rt)->rt_dest)->sa_len)) == 0)
    break;
  }
  if (ifa == ((void *)0))
   break;
  ((ifa == rt->rt_ifa) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../net/if_gre.c", 1510, "ifa == rt->rt_ifa"));
  lo0ifp = if_get(rtable_loindex(ifp->if_data.ifi_rdomain));
  ((lo0ifp != ((void *)0)) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../net/if_gre.c", 1513, "lo0ifp != NULL"));
  for((lo0ifa) = ((&lo0ifp->if_addrlist)->tqh_first); (lo0ifa) != ((void *)0); (lo0ifa) = ((lo0ifa)->ifa_list.tqe_next)) {
   if (lo0ifa->ifa_addr->sa_family ==
       ifa->ifa_addr->sa_family)
    break;
  }
  if_put(lo0ifp);
  if (lo0ifa == ((void *)0))
   break;
  rt->rt_flags &= ~0x400;
  break;
 case 0x2:
 case 0xb:
 default:
  break;
 }
}
static int
mgre_output(struct ifnet *ifp, struct mbuf *m, struct sockaddr *dest,
    struct rtentry *rt0)
{
 struct mgre_softc *sc = ifp->if_softc;
 struct sockaddr *gate;
 struct rtentry *rt;
 struct m_tag *mtag;
 int error = 0;
 sa_family_t af;
 const void *addr;
 if (!gre_allow) {
  error = 13;
  goto drop;
 }
 if (!((ifp->if_flags) & (0x40))) {
  error = 50;
  goto drop;
 }
 switch (dest->sa_family) {
 case 2:
 case 24:
 case 33:
  break;
 default:
  error = 47;
  goto drop;
 }
 if (((m->m_hdr.mh_flags) & (0x0200|0x0100))) {
  error = 51;
  goto drop;
 }
 rt = rt_getll(rt0);
 if (((rt->rt_flags) & (0x8))) {
  error = (rt == rt0) ? 64 : 65;
  goto drop;
 }
 if (!((rt->rt_flags) & (0x4))) {
  error = 65;
  goto drop;
 }
 if (((rt->rt_flags) & (0x2))) {
  error = 22;
  goto drop;
 }
 gate = rt->rt_gateway;
 af = gate->sa_family;
 if (af != sc->sc_tunnel.t_af) {
  error = 35;
  goto drop;
 }
 for (mtag = m_tag_find(m, 0x0080, ((void *)0)); mtag;
      mtag = m_tag_find(m, 0x0080, mtag)) {
  if (__builtin_memcmp(((caddr_t)(mtag + 1)), (&ifp->if_index), (sizeof(ifp->if_index))) == 0) {
   error = 5;
   goto drop;
  }
 }
 mtag = m_tag_get(0x0080, sizeof(ifp->if_index), 0x0002);
 if (mtag == ((void *)0)) {
  error = 55;
  goto drop;
 }
 __builtin_memcpy(((caddr_t)(mtag + 1)), (&ifp->if_index), (sizeof(ifp->if_index)));
 m_tag_prepend(m, mtag);
 switch (af) {
 case 2: {
  struct sockaddr_in *sin = (struct sockaddr_in *)gate;
  addr = &sin->sin_addr;
  break;
 }
 case 24: {
  struct sockaddr_in6 *sin6 = (struct sockaddr_in6 *)gate;
  addr = &sin6->sin6_addr;
  break;
 }
 default:
  unhandled_af(af);
 }
 m = gre_l3_encap_dst(&sc->sc_tunnel, addr, m, dest->sa_family);
 if (m == ((void *)0))
  return (55);
 m->M_dat.MH.MH_pkthdr.ph_family = dest->sa_family;
 error = if_enqueue(ifp, m);
 if (error)
  ifp->if_data.ifi_oerrors++;
 return (error);
drop:
 m_freem(m);
 return (error);
}
static void
mgre_start(struct ifnet *ifp)
{
 struct mgre_softc *sc = ifp->if_softc;
 struct mbuf *m;
 caddr_t if_bpf;
 while ((m = ifq_dequeue(&ifp->if_snd)) != ((void *)0)) {
  if_bpf = ifp->if_bpf;
  if (if_bpf) {
   struct m_hdr mh;
   struct mbuf *n;
   int off;
   n = m_getptr(m, ifp->if_data.ifi_hdrlen, &off);
   ((n != ((void *)0)) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../net/if_gre.c", 1667, "n != NULL"));
   mh.mh_flags = 0;
   mh.mh_next = n->m_hdr.mh_next;
   mh.mh_len = n->m_hdr.mh_len - off;
   mh.mh_data = n->m_hdr.mh_data + off;
   bpf_mtap_af(if_bpf, m->M_dat.MH.MH_pkthdr.ph_family,
       (struct mbuf *)&mh, (1<<1));
  }
  if (m == ((void *)0) || gre_ip_output(&sc->sc_tunnel, m) != 0) {
    ifp->if_data.ifi_oerrors++;
    continue;
   }
 }
}
static void
egre_start(struct ifnet *ifp)
{
 struct egre_softc *sc = ifp->if_softc;
 struct mbuf *m0, *m;
 caddr_t if_bpf;
 if (!gre_allow) {
  ifq_purge(&ifp->if_snd);
  return;
 }
 while ((m0 = ifq_dequeue(&ifp->if_snd)) != ((void *)0)) {
  if_bpf = ifp->if_bpf;
  if (if_bpf)
   bpf_mtap_ether(if_bpf, m0, (1<<1));
  m = m_gethdr(0x0002, m0->m_hdr.mh_type);
  if (m == ((void *)0)) {
   m_freem(m0);
   continue;
  }
  do { (m)->m_hdr.mh_flags = ((m)->m_hdr.mh_flags & (0x0001 | 0x0008)); (m)->m_hdr.mh_flags |= (m0)->m_hdr.mh_flags & (0x0002|0x0004|0x0010|0x0100|0x0200|0x0400|0x4000| 0x0800|0x0040|0x1000|0x8000|0x0020|0x0080| 0x2000); do { ((m))->M_dat.MH.MH_pkthdr = ((m0))->M_dat.MH.MH_pkthdr; ((m0))->m_hdr.mh_flags &= ~0x0002; { ((&((m0))->M_dat.MH.MH_pkthdr.ph_tags)->slh_first) = ((void *)0); }; ((m0))->M_dat.MH.MH_pkthdr.pf.statekey = ((void *)0); } while ( 0); if (((m)->m_hdr.mh_flags & 0x0001) == 0) (m)->m_hdr.mh_data = (m)->M_dat.MH.MH_dat.MH_databuf; } while ( 0);
  m->m_hdr.mh_next = m0;
  (m)->m_hdr.mh_data += (((256 - sizeof(struct m_hdr)) - sizeof(struct pkthdr)) - (0)) &~ (sizeof(long) - 1);
  m->m_hdr.mh_len = 0;
  m = gre_encap_dst((&sc->sc_tunnel), &(&sc->sc_tunnel)->t_dst, (m), (((__uint16_t)(0x6558))), (sc->sc_tunnel.t_ttl), (0));
  if (m == ((void *)0) || gre_ip_output(&sc->sc_tunnel, m) != 0) {
   ifp->if_data.ifi_oerrors++;
   continue;
  }
 }
}
static struct mbuf *
gre_l3_encap_dst(const struct gre_tunnel *tunnel, const void *dst,
    struct mbuf *m, sa_family_t af)
{
 uint16_t proto;
 uint8_t ttl, tos;
 int tttl = tunnel->t_ttl;
 int ttloff;
 switch (af) {
 case 2: {
  struct ip *ip;
  m = m_pullup(m, sizeof(*ip));
  if (m == ((void *)0))
   return (((void *)0));
  ip = ((struct ip *)((m)->m_hdr.mh_data));
  tos = ip->ip_tos;
  ttloff = __builtin_offsetof(struct ip, ip_ttl);
  proto = ((__uint16_t)(0x0800));
  break;
 }
 case 24:
  tos = 0;
  ttloff = __builtin_offsetof(struct ip6_hdr, ip6_ctlun.ip6_un1.ip6_un1_hlim);
  proto = ((__uint16_t)(0x86DD));
  break;
 case 33:
  ttloff = 3;
  tos = 0;
  if (m->m_hdr.mh_flags & (0x0100 | 0x0200))
   proto = ((__uint16_t)(0x8848));
  else
   proto = ((__uint16_t)(0x8847));
  break;
 default:
  unhandled_af(af);
 }
 if (tttl == -1) {
  m = m_pullup(m, ttloff + 1);
  if (m == ((void *)0))
   return (((void *)0));
  ttl = *(m->m_hdr.mh_data + ttloff);
 } else
  ttl = tttl;
 return (gre_encap_dst(tunnel, dst, m, proto, ttl, tos));
}
static struct mbuf *
gre_encap_dst(const struct gre_tunnel *tunnel, const union gre_addr *dst,
    struct mbuf *m, uint16_t proto, uint8_t ttl, uint8_t tos)
{
 struct gre_header *gh;
 struct gre_h_key *gkh;
 int hlen;
 hlen = sizeof(*gh);
 if (tunnel->t_key_mask != ((__uint32_t)(0x00000000U)))
  hlen += sizeof(*gkh);
 m = m_prepend(m, hlen, 0x0002);
 if (m == ((void *)0))
  return (((void *)0));
 gh = ((struct gre_header *)((m)->m_hdr.mh_data));
 gh->gre_flags = 0x0000;
 gh->gre_proto = proto;
 if (tunnel->t_key_mask != ((__uint32_t)(0x00000000U))) {
  gh->gre_flags |= ((__uint16_t)(0x2000));
  gkh = (struct gre_h_key *)(gh + 1);
  gkh->gre_key = tunnel->t_key;
  if (tunnel->t_key_mask == ((__uint32_t)(0xffffff00U)) &&
      ((m->M_dat.MH.MH_pkthdr.ph_flowid) & (0x8000))) {
   gkh->gre_key |= ((__uint32_t)(~((__uint32_t)(0xffffff00U)) & (m->M_dat.MH.MH_pkthdr.ph_flowid & 0x7fff)));
  }
 }
 switch (tunnel->t_af) {
 case 2: {
  struct ip *ip;
  m = m_prepend(m, sizeof(*ip), 0x0002);
  if (m == ((void *)0))
   return (((void *)0));
  ip = ((struct ip *)((m)->m_hdr.mh_data));
  ip->ip_v = 4;
  ip->ip_hl = sizeof(*ip) >> 2;
  ip->ip_off = tunnel->t_df;
  ip->ip_tos = tos;
  ip->ip_len = ((__uint16_t)(m->M_dat.MH.MH_pkthdr.len));
  ip->ip_ttl = ttl;
  ip->ip_p = 47;
  ip->ip_src = tunnel->t_src.in4;
  ip->ip_dst = dst->in4;
  break;
 }
 case 24: {
  struct ip6_hdr *ip6;
  int len = m->M_dat.MH.MH_pkthdr.len;
  m = m_prepend(m, sizeof(*ip6), 0x0002);
  if (m == ((void *)0))
   return (((void *)0));
  ip6 = ((struct ip6_hdr *)((m)->m_hdr.mh_data));
  ip6->ip6_ctlun.ip6_un1.ip6_un1_flow = ((m->M_dat.MH.MH_pkthdr.ph_flowid) & (0x8000)) ?
      ((__uint32_t)(m->M_dat.MH.MH_pkthdr.ph_flowid & 0x7fff)) : 0;
  ip6->ip6_ctlun.ip6_un2_vfc |= 0x60;
  ip6->ip6_ctlun.ip6_un1.ip6_un1_plen = ((__uint16_t)(len));
  ip6->ip6_ctlun.ip6_un1.ip6_un1_nxt = 47;
  ip6->ip6_ctlun.ip6_un1.ip6_un1_hlim = ttl;
  ip6->ip6_src = tunnel->t_src.in6;
  ip6->ip6_dst = dst->in6;
  if (tunnel->t_df)
   ((m->M_dat.MH.MH_pkthdr.csum_flags) |= (0x1000));
  break;
 }
 default:
  panic("%s: unsupported af %d in %p", __func__, tunnel->t_af,
      tunnel);
 }
 return (m);
}
static int
gre_ip_output(const struct gre_tunnel *tunnel, struct mbuf *m)
{
 m->m_hdr.mh_flags &= ~(0x0100|0x0200);
 m->M_dat.MH.MH_pkthdr.ph_rtableid = tunnel->t_rtableid;
 pf_pkt_addr_changed(m);
 switch (tunnel->t_af) {
 case 2:
  ip_send(m);
  break;
 case 24:
  ip6_send(m);
  break;
 default:
  panic("%s: unsupported af %d in %p", __func__, tunnel->t_af,
      tunnel);
 }
 return (0);
}
static int
gre_tunnel_ioctl(struct ifnet *ifp, struct gre_tunnel *tunnel,
    u_long cmd, void *data)
{
 struct ifreq *ifr = (struct ifreq *)data;
 int error = 0;
 switch(cmd) {
 case ((unsigned long)0x80000000 | ((sizeof(struct ifreq) & 0x1fff) << 16) | ((('i')) << 8) | ((127))):
  if (ifr->ifr_ifru.ifru_metric < 576) {
   error = 22;
   break;
  }
  ifp->if_data.ifi_mtu = ifr->ifr_ifru.ifru_metric;
  break;
 case ((unsigned long)0x80000000 | ((sizeof(struct ifreq) & 0x1fff) << 16) | ((('i')) << 8) | ((49))):
 case ((unsigned long)0x80000000 | ((sizeof(struct ifreq) & 0x1fff) << 16) | ((('i')) << 8) | ((50))):
  break;
 case ((unsigned long)0x80000000 | ((sizeof(struct ifreq) & 0x1fff) << 16) | ((('i')) << 8) | ((166))):
  error = gre_set_vnetid(tunnel, ifr);
  break;
 case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct ifreq) & 0x1fff) << 16) | ((('i')) << 8) | ((167))):
  error = gre_get_vnetid(tunnel, ifr);
  break;
 case ((unsigned long)0x80000000 | ((sizeof(struct ifreq) & 0x1fff) << 16) | ((('i')) << 8) | ((175))):
  error = gre_del_vnetid(tunnel);
  break;
 case ((unsigned long)0x80000000 | ((sizeof(struct ifreq) & 0x1fff) << 16) | ((('i')) << 8) | ((195))):
  error = gre_set_vnetflowid(tunnel, ifr);
  break;
 case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct ifreq) & 0x1fff) << 16) | ((('i')) << 8) | ((196))):
  error = gre_get_vnetflowid(tunnel, ifr);
  break;
 case ((unsigned long)0x80000000 | ((sizeof(struct if_laddrreq) & 0x1fff) << 16) | ((('i')) << 8) | ((74))):
  error = gre_set_tunnel(tunnel, (struct if_laddrreq *)data, 1);
  break;
 case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct if_laddrreq) & 0x1fff) << 16) | ((('i')) << 8) | ((75))):
  error = gre_get_tunnel(tunnel, (struct if_laddrreq *)data);
  break;
 case ((unsigned long)0x80000000 | ((sizeof(struct ifreq) & 0x1fff) << 16) | ((('i')) << 8) | ((73))):
  error = gre_del_tunnel(tunnel);
  break;
 case ((unsigned long)0x80000000 | ((sizeof(struct ifreq) & 0x1fff) << 16) | ((('i')) << 8) | ((161))):
  if (ifr->ifr_ifru.ifru_metric < 0 ||
      ifr->ifr_ifru.ifru_metric > 255 ||
      !rtable_exists(ifr->ifr_ifru.ifru_metric)) {
   error = 22;
   break;
  }
  tunnel->t_rtableid = ifr->ifr_ifru.ifru_metric;
  break;
 case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct ifreq) & 0x1fff) << 16) | ((('i')) << 8) | ((162))):
  ifr->ifr_ifru.ifru_metric = tunnel->t_rtableid;
  break;
 case ((unsigned long)0x80000000 | ((sizeof(struct ifreq) & 0x1fff) << 16) | ((('i')) << 8) | ((193))):
  tunnel->t_df = ifr->ifr_ifru.ifru_metric ? ((__uint16_t)(0x4000)) : ((__uint16_t)(0));
  break;
 case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct ifreq) & 0x1fff) << 16) | ((('i')) << 8) | ((194))):
  ifr->ifr_ifru.ifru_metric = tunnel->t_df ? 1 : 0;
  break;
 default:
  error = 25;
  break;
 }
 return (error);
}
static int
gre_ioctl(struct ifnet *ifp, u_long cmd, caddr_t data)
{
 struct gre_softc *sc = ifp->if_softc;
 struct ifreq *ifr = (struct ifreq *)data;
 struct ifkalivereq *ikar = (struct ifkalivereq *)data;
 int error = 0;
 switch(cmd) {
 case ((unsigned long)0x80000000 | ((sizeof(struct ifreq) & 0x1fff) << 16) | ((('i')) << 8) | ((12))):
  ifp->if_flags |= 0x1;
 case ((unsigned long)0x80000000 | ((sizeof(struct ifreq) & 0x1fff) << 16) | ((('i')) << 8) | ((16))):
  if (((ifp->if_flags) & (0x1))) {
   if (!((ifp->if_flags) & (0x40)))
    error = gre_up(sc);
   else
    error = 0;
  } else {
   if (((ifp->if_flags) & (0x40)))
    error = gre_down(sc);
  }
  break;
 case ((unsigned long)0x80000000 | ((sizeof(struct ifreq) & 0x1fff) << 16) | ((('i')) << 8) | ((159))):
  error = 25;
  break;
 case ((unsigned long)0x80000000 | ((sizeof(struct ifkalivereq) & 0x1fff) << 16) | ((('i')) << 8) | ((163))):
  if (ikar->ikar_timeo < 0 || ikar->ikar_timeo > 86400 ||
      ikar->ikar_cnt < 0 || ikar->ikar_cnt > 256)
   return (22);
  if (ikar->ikar_timeo == 0 || ikar->ikar_cnt == 0) {
   sc->sc_ka_count = 0;
   sc->sc_ka_timeo = 0;
   sc->sc_ka_state = 0;
  } else {
   sc->sc_ka_count = ikar->ikar_cnt;
   sc->sc_ka_timeo = ikar->ikar_timeo;
   sc->sc_ka_state = 1;
  }
  break;
 case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct ifkalivereq) & 0x1fff) << 16) | ((('i')) << 8) | ((164))):
  ikar->ikar_cnt = sc->sc_ka_count;
  ikar->ikar_timeo = sc->sc_ka_timeo;
  break;
 case ((unsigned long)0x80000000 | ((sizeof(struct ifreq) & 0x1fff) << 16) | ((('i')) << 8) | ((168))):
  if (ifr->ifr_ifru.ifru_metric != -1 &&
      (ifr->ifr_ifru.ifru_metric < 1 || ifr->ifr_ifru.ifru_metric > 0xff)) {
   error = 22;
   break;
  }
  sc->sc_tunnel.t_ttl = ifr->ifr_ifru.ifru_metric;
  break;
 case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct ifreq) & 0x1fff) << 16) | ((('i')) << 8) | ((169))):
  ifr->ifr_ifru.ifru_metric = sc->sc_tunnel.t_ttl;
  break;
 default:
  error = gre_tunnel_ioctl(ifp, &sc->sc_tunnel, cmd, data);
  break;
 }
 return (error);
}
static int
mgre_ioctl(struct ifnet *ifp, u_long cmd, caddr_t data)
{
 struct mgre_softc *sc = ifp->if_softc;
 struct ifreq *ifr = (struct ifreq *)data;
 int error = 0;
 switch(cmd) {
 case ((unsigned long)0x80000000 | ((sizeof(struct ifreq) & 0x1fff) << 16) | ((('i')) << 8) | ((12))):
  break;
 case ((unsigned long)0x80000000 | ((sizeof(struct ifreq) & 0x1fff) << 16) | ((('i')) << 8) | ((16))):
  if (((ifp->if_flags) & (0x1))) {
   if (!((ifp->if_flags) & (0x40)))
    error = mgre_up(sc);
   else
    error = 0;
  } else {
   if (((ifp->if_flags) & (0x40)))
    error = mgre_down(sc);
  }
  break;
 case ((unsigned long)0x80000000 | ((sizeof(struct ifreq) & 0x1fff) << 16) | ((('i')) << 8) | ((168))):
  if (ifr->ifr_ifru.ifru_metric != -1 &&
      (ifr->ifr_ifru.ifru_metric < 1 || ifr->ifr_ifru.ifru_metric > 0xff)) {
   error = 22;
   break;
  }
  sc->sc_tunnel.t_ttl = ifr->ifr_ifru.ifru_metric;
  break;
 case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct ifreq) & 0x1fff) << 16) | ((('i')) << 8) | ((169))):
  ifr->ifr_ifru.ifru_metric = sc->sc_tunnel.t_ttl;
  break;
 case ((unsigned long)0x80000000 | ((sizeof(struct if_laddrreq) & 0x1fff) << 16) | ((('i')) << 8) | ((74))):
  if (((ifp->if_flags) & (0x40))) {
   error = 16;
   break;
  }
  error = mgre_set_tunnel(sc, (struct if_laddrreq *)data);
  break;
 case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct if_laddrreq) & 0x1fff) << 16) | ((('i')) << 8) | ((75))):
  error = mgre_get_tunnel(sc, (struct if_laddrreq *)data);
  break;
 case ((unsigned long)0x80000000 | ((sizeof(struct ifreq) & 0x1fff) << 16) | ((('i')) << 8) | ((166))):
 case ((unsigned long)0x80000000 | ((sizeof(struct ifreq) & 0x1fff) << 16) | ((('i')) << 8) | ((175))):
 case ((unsigned long)0x80000000 | ((sizeof(struct ifreq) & 0x1fff) << 16) | ((('i')) << 8) | ((73))):
 case ((unsigned long)0x80000000 | ((sizeof(struct ifreq) & 0x1fff) << 16) | ((('i')) << 8) | ((161))):
  if (((ifp->if_flags) & (0x40))) {
   error = 16;
   break;
  }
 default:
  error = gre_tunnel_ioctl(ifp, &sc->sc_tunnel, cmd, data);
   break;
  }
 return (error);
}
static int
mgre_set_tunnel(struct mgre_softc *sc, struct if_laddrreq *req)
{
 struct gre_tunnel *tunnel = &sc->sc_tunnel;
 struct sockaddr *addr = (struct sockaddr *)&req->addr;
 struct sockaddr *dstaddr = (struct sockaddr *)&req->dstaddr;
 struct sockaddr_in *addr4;
 struct sockaddr_in6 *addr6;
 int error;
 if (dstaddr->sa_family != 0)
  return (22);
 switch (addr->sa_family) {
 case 2:
  if (addr->sa_len != sizeof(*addr4))
   return (22);
  addr4 = (struct sockaddr_in *)addr;
  if (((addr4->sin_addr).s_addr == ((u_int32_t) ((__uint32_t)((u_int32_t)(0x00000000))))) ||
      (((u_int32_t)(addr4->sin_addr.s_addr) & ((u_int32_t) ((__uint32_t)((u_int32_t)(0xf0000000))))) == ((u_int32_t) ((__uint32_t)((u_int32_t)(0xe0000000))))))
   return (22);
  tunnel->t_src.in4 = addr4->sin_addr;
  tunnel->t_dst.in4.s_addr = ((u_int32_t) ((__uint32_t)((u_int32_t)(0x00000000))));
  break;
 case 24:
  if (addr->sa_len != sizeof(*addr6))
   return (22);
  addr6 = (struct sockaddr_in6 *)addr;
  if (((*(const u_int32_t *)(const void *)(&(&addr6->sin6_addr)->__u6_addr.__u6_addr8[0]) == 0) && (*(const u_int32_t *)(const void *)(&(&addr6->sin6_addr)->__u6_addr.__u6_addr8[4]) == 0) && (*(const u_int32_t *)(const void *)(&(&addr6->sin6_addr)->__u6_addr.__u6_addr8[8]) == 0) && (*(const u_int32_t *)(const void *)(&(&addr6->sin6_addr)->__u6_addr.__u6_addr8[12]) == 0)) ||
      ((&addr6->sin6_addr)->__u6_addr.__u6_addr8[0] == 0xff))
   return (22);
  error = in6_embedscope(&tunnel->t_src.in6, addr6, ((void *)0));
  if (error != 0)
   return (error);
  __builtin_memset((&tunnel->t_dst.in6), (0), (sizeof(tunnel->t_dst.in6)));
  break;
 default:
  return (47);
 }
 tunnel->t_af = addr->sa_family;
 return (0);
}
static int
mgre_get_tunnel(struct mgre_softc *sc, struct if_laddrreq *req)
{
 struct gre_tunnel *tunnel = &sc->sc_tunnel;
 struct sockaddr *dstaddr = (struct sockaddr *)&req->dstaddr;
 struct sockaddr_in *sin;
 struct sockaddr_in6 *sin6;
 switch (tunnel->t_af) {
 case 0:
  return (49);
 case 2:
  sin = (struct sockaddr_in *)&req->addr;
  __builtin_memset((sin), (0), (sizeof(*sin)));
  sin->sin_family = 2;
  sin->sin_len = sizeof(*sin);
  sin->sin_addr = tunnel->t_src.in4;
  break;
 case 24:
  sin6 = (struct sockaddr_in6 *)&req->addr;
  __builtin_memset((sin6), (0), (sizeof(*sin6)));
  sin6->sin6_family = 24;
  sin6->sin6_len = sizeof(*sin6);
  in6_recoverscope(sin6, &tunnel->t_src.in6);
  break;
 default:
  unhandled_af(tunnel->t_af);
 }
 dstaddr->sa_len = 2;
 dstaddr->sa_family = 0;
 return (0);
}
static int
egre_ioctl(struct ifnet *ifp, u_long cmd, caddr_t data)
{
 struct egre_softc *sc = ifp->if_softc;
 struct ifreq *ifr = (struct ifreq *)data;
 int error = 0;
 switch(cmd) {
 case ((unsigned long)0x80000000 | ((sizeof(struct ifreq) & 0x1fff) << 16) | ((('i')) << 8) | ((12))):
  break;
 case ((unsigned long)0x80000000 | ((sizeof(struct ifreq) & 0x1fff) << 16) | ((('i')) << 8) | ((16))):
  if (((ifp->if_flags) & (0x1))) {
   if (!((ifp->if_flags) & (0x40)))
    error = egre_up(sc);
   else
    error = 0;
  } else {
   if (((ifp->if_flags) & (0x40)))
    error = egre_down(sc);
  }
  break;
 case ((unsigned long)0x80000000 | ((sizeof(struct ifreq) & 0x1fff) << 16) | ((('i')) << 8) | ((168))):
  if (ifr->ifr_ifru.ifru_metric < 1 || ifr->ifr_ifru.ifru_metric > 0xff) {
   error = 22;
   break;
  }
  sc->sc_tunnel.t_ttl = (uint8_t)ifr->ifr_ifru.ifru_metric;
  break;
 case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct ifreq) & 0x1fff) << 16) | ((('i')) << 8) | ((169))):
  ifr->ifr_ifru.ifru_metric = (int)sc->sc_tunnel.t_ttl;
  break;
 case ((unsigned long)0x80000000 | ((sizeof(struct ifreq) & 0x1fff) << 16) | ((('i')) << 8) | ((166))):
 case ((unsigned long)0x80000000 | ((sizeof(struct ifreq) & 0x1fff) << 16) | ((('i')) << 8) | ((175))):
 case ((unsigned long)0x80000000 | ((sizeof(struct ifreq) & 0x1fff) << 16) | ((('i')) << 8) | ((195))):
 case ((unsigned long)0x80000000 | ((sizeof(struct if_laddrreq) & 0x1fff) << 16) | ((('i')) << 8) | ((74))):
 case ((unsigned long)0x80000000 | ((sizeof(struct ifreq) & 0x1fff) << 16) | ((('i')) << 8) | ((73))):
 case ((unsigned long)0x80000000 | ((sizeof(struct ifreq) & 0x1fff) << 16) | ((('i')) << 8) | ((161))):
  if (((ifp->if_flags) & (0x40))) {
   error = 16;
   break;
  }
 default:
  error = gre_tunnel_ioctl(ifp, &sc->sc_tunnel, cmd, data);
  if (error == 25)
   error = ether_ioctl(ifp, &sc->sc_ac, cmd, data);
  break;
 }
 return (error);
}
static int
nvgre_ioctl(struct ifnet *ifp, u_long cmd, caddr_t data)
{
 struct nvgre_softc *sc = ifp->if_softc;
 struct gre_tunnel *tunnel = &sc->sc_tunnel;
 struct ifreq *ifr = (struct ifreq *)data;
 struct if_parent *parent = (struct if_parent *)data;
 struct ifbrparam *bparam = (struct ifbrparam *)data;
 struct ifnet *ifp0;
 int error = 0;
 switch (cmd) {
 case ((unsigned long)0x80000000 | ((sizeof(struct ifreq) & 0x1fff) << 16) | ((('i')) << 8) | ((12))):
  break;
 case ((unsigned long)0x80000000 | ((sizeof(struct ifreq) & 0x1fff) << 16) | ((('i')) << 8) | ((16))):
  if (((ifp->if_flags) & (0x1))) {
   if (!((ifp->if_flags) & (0x40)))
    error = nvgre_up(sc);
   else
    error = 52;
  } else {
   if (((ifp->if_flags) & (0x40)))
    error = nvgre_down(sc);
  }
  break;
 case ((unsigned long)0x80000000 | ((sizeof(struct if_laddrreq) & 0x1fff) << 16) | ((('i')) << 8) | ((74))):
  if (((ifp->if_flags) & (0x40))) {
   error = 16;
   break;
  }
  error = gre_set_tunnel(tunnel, (struct if_laddrreq *)data, 0);
  if (error == 0)
   nvgre_flush_map(sc);
  break;
 case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct if_laddrreq) & 0x1fff) << 16) | ((('i')) << 8) | ((75))):
  error = gre_get_tunnel(tunnel, (struct if_laddrreq *)data);
  break;
 case ((unsigned long)0x80000000 | ((sizeof(struct ifreq) & 0x1fff) << 16) | ((('i')) << 8) | ((73))):
  if (((ifp->if_flags) & (0x40))) {
   error = 16;
   break;
  }
  error = gre_del_tunnel(tunnel);
  if (error == 0)
   nvgre_flush_map(sc);
  break;
 case ((unsigned long)0x80000000 | ((sizeof(struct if_parent) & 0x1fff) << 16) | ((('i')) << 8) | ((178))):
  if (((ifp->if_flags) & (0x40))) {
   error = 16;
   break;
  }
  error = nvgre_set_parent(sc, parent->ifp_parent);
  if (error == 0)
   nvgre_flush_map(sc);
  break;
 case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct if_parent) & 0x1fff) << 16) | ((('i')) << 8) | ((179))):
  ifp0 = if_get(sc->sc_ifp0);
  if (ifp0 == ((void *)0))
   error = 49;
  else {
   __builtin_memcpy((parent->ifp_parent), (ifp0->if_xname), (sizeof(parent->ifp_parent)));
  }
  if_put(ifp0);
  break;
 case ((unsigned long)0x80000000 | ((sizeof(struct ifreq) & 0x1fff) << 16) | ((('i')) << 8) | ((180))):
  if (((ifp->if_flags) & (0x40))) {
   error = 16;
   break;
  }
  sc->sc_ifp0 = 0;
  nvgre_flush_map(sc);
  break;
 case ((unsigned long)0x80000000 | ((sizeof(struct ifreq) & 0x1fff) << 16) | ((('i')) << 8) | ((166))):
  if (((ifp->if_flags) & (0x40))) {
   error = 16;
   break;
  }
  if (ifr->ifr_ifru.ifru_vnetid < 0x00000000U ||
      ifr->ifr_ifru.ifru_vnetid > 0x00ffffffU) {
   error = 22;
   break;
  }
  tunnel->t_key = ((__uint32_t)(ifr->ifr_ifru.ifru_vnetid << 8));
  nvgre_flush_map(sc);
  break;
 case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct ifreq) & 0x1fff) << 16) | ((('i')) << 8) | ((167))):
  error = gre_get_vnetid(tunnel, ifr);
  break;
 case ((unsigned long)0x80000000 | ((sizeof(struct ifreq) & 0x1fff) << 16) | ((('i')) << 8) | ((161))):
  if (ifr->ifr_ifru.ifru_metric < 0 ||
      ifr->ifr_ifru.ifru_metric > 255 ||
      !rtable_exists(ifr->ifr_ifru.ifru_metric)) {
   error = 22;
   break;
  }
  tunnel->t_rtableid = ifr->ifr_ifru.ifru_metric;
  nvgre_flush_map(sc);
  break;
 case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct ifreq) & 0x1fff) << 16) | ((('i')) << 8) | ((162))):
  ifr->ifr_ifru.ifru_metric = tunnel->t_rtableid;
  break;
 case ((unsigned long)0x80000000 | ((sizeof(struct ifreq) & 0x1fff) << 16) | ((('i')) << 8) | ((193))):
  tunnel->t_df = ifr->ifr_ifru.ifru_metric ? ((__uint16_t)(0x4000)) : ((__uint16_t)(0));
  break;
 case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct ifreq) & 0x1fff) << 16) | ((('i')) << 8) | ((194))):
  ifr->ifr_ifru.ifru_metric = tunnel->t_df ? 1 : 0;
  break;
 case ((unsigned long)0x80000000 | ((sizeof(struct ifreq) & 0x1fff) << 16) | ((('i')) << 8) | ((168))):
  if (ifr->ifr_ifru.ifru_metric < 1 || ifr->ifr_ifru.ifru_metric > 0xff) {
   error = 22;
   break;
  }
  tunnel->t_ttl = ifr->ifr_ifru.ifru_metric;
  break;
 case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct ifreq) & 0x1fff) << 16) | ((('i')) << 8) | ((169))):
  ifr->ifr_ifru.ifru_metric = tunnel->t_ttl;
  break;
 case ((unsigned long)0x80000000 | ((sizeof(struct ifbrparam) & 0x1fff) << 16) | ((('i')) << 8) | ((64))):
  if (bparam->ifbrp_ifbrpu.ifbrpu_csize < 1) {
   error = 22;
   break;
  }
  sc->sc_ether_max = bparam->ifbrp_ifbrpu.ifbrpu_csize;
  break;
 case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct ifbrparam) & 0x1fff) << 16) | ((('i')) << 8) | ((65))):
  bparam->ifbrp_ifbrpu.ifbrpu_csize = sc->sc_ether_max;
  break;
 case ((unsigned long)0x80000000 | ((sizeof(struct ifbrparam) & 0x1fff) << 16) | ((('i')) << 8) | ((69))):
  if (bparam->ifbrp_ifbrpu.ifbrpu_ctime < 0 ||
      bparam->ifbrp_ifbrpu.ifbrpu_ctime > 0x7fffffff / hz) {
   error = 22;
   break;
  }
  sc->sc_ether_tmo = bparam->ifbrp_ifbrpu.ifbrpu_ctime * hz;
  break;
 case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct ifbrparam) & 0x1fff) << 16) | ((('i')) << 8) | ((70))):
  bparam->ifbrp_ifbrpu.ifbrpu_ctime = sc->sc_ether_tmo / hz;
  break;
 case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct ifbaconf) & 0x1fff) << 16) | ((('i')) << 8) | ((67))):
  error = nvgre_rtfind(sc, (struct ifbaconf *)data);
  break;
 case ((unsigned long)0x80000000 | ((sizeof(struct ifbreq) & 0x1fff) << 16) | ((('i')) << 8) | ((72))):
  nvgre_flush_map(sc);
  break;
 default:
  error = ether_ioctl(ifp, &sc->sc_ac, cmd, data);
  break;
 }
 if (error == 52) {
  error = 0;
 }
 return (error);
}
static int
gre_up(struct gre_softc *sc)
{
 do { int _s = rw_status(&netlock); if ((splassert_ctl > 0) && (_s != 0x0001UL && _s != 0x0002UL)) splassert_fail(0x0002UL, _s, __func__); } while (0);
 ((sc->sc_if.if_flags) |= (0x40));
 if (sc->sc_ka_state != 0) {
  arc4random_buf(&sc->sc_ka_key, sizeof(sc->sc_ka_key));
  sc->sc_ka_bias = arc4random();
  sc->sc_ka_recvtm = ticks - hz;
  sc->sc_ka_holdmax = sc->sc_ka_count;
  gre_keepalive_send(sc);
 }
 return (0);
}
static int
gre_down(struct gre_softc *sc)
{
 do { int _s = rw_status(&netlock); if ((splassert_ctl > 0) && (_s != 0x0001UL && _s != 0x0002UL)) splassert_fail(0x0002UL, _s, __func__); } while (0);
 ((sc->sc_if.if_flags) &= ~(0x40));
 if (sc->sc_ka_state != 0) {
  if (!timeout_del(&sc->sc_ka_hold))
   timeout_barrier(&sc->sc_ka_hold);
  if (!timeout_del(&sc->sc_ka_send))
   timeout_barrier(&sc->sc_ka_send);
  sc->sc_ka_state = 1;
  gre_link_state(sc);
 }
 return (0);
}
static void
gre_link_state(struct gre_softc *sc)
{
 struct ifnet *ifp = &sc->sc_if;
 int link_state = 0;
 if (((ifp->if_flags) & (0x40))) {
  switch (sc->sc_ka_state) {
  case 0:
   break;
  case 3:
   link_state = 4;
   break;
  default:
   link_state = 3;
   break;
  }
 }
 if (ifp->if_data.ifi_link_state != link_state) {
  ifp->if_data.ifi_link_state = link_state;
  if_link_state_change(ifp);
 }
}
static void
gre_keepalive_send(void *arg)
{
 struct gre_tunnel t;
 struct gre_softc *sc = arg;
 struct mbuf *m;
 struct gre_keepalive *gk;
 SIPHASH_CTX ctx;
 int linkhdr, len;
 uint16_t proto;
 uint8_t ttl;
 if (!((sc->sc_if.if_flags) & (0x40)) ||
     sc->sc_ka_state == 0 ||
     sc->sc_tunnel.t_rtableid != sc->sc_if.if_data.ifi_rdomain)
  return;
 linkhdr = max_linkhdr + (((sizeof(struct ip))>(sizeof(struct ip6_hdr)))?(sizeof(struct ip)):(sizeof(struct ip6_hdr))) +
     sizeof(struct gre_header) + sizeof(struct gre_h_key);
 len = linkhdr + sizeof(*gk);
 m = m_gethdr((0x0002), (1));
 if (m == ((void *)0))
  return;
 if (len > ((256 - sizeof(struct m_hdr)) - sizeof(struct pkthdr))) {
  m_clget((m), (0x0002), (len));
  if (!((m->m_hdr.mh_flags) & (0x0001))) {
   m_freem(m);
   return;
  }
 }
 m->M_dat.MH.MH_pkthdr.len = m->m_hdr.mh_len = len;
 m_adj(m, linkhdr);
 gk = ((struct gre_keepalive *)((m)->m_hdr.mh_data));
 (*(__uint32_t *)(&gk->gk_uptime) = ((__uint32_t)(sc->sc_ka_bias + ticks)));
 (*(__uint32_t *)(&gk->gk_random) = ((__uint32_t)(arc4random())));
 SipHash_Init((&ctx), (&sc->sc_ka_key));
 SipHash_Update((&ctx), 2, 4, (&gk->gk_uptime), (sizeof(gk->gk_uptime)));
 SipHash_Update((&ctx), 2, 4, (&gk->gk_random), (sizeof(gk->gk_random)));
 SipHash_Final((gk->gk_digest), (&ctx), 2, 4);
 ttl = sc->sc_tunnel.t_ttl == -1 ? ip_defttl : sc->sc_tunnel.t_ttl;
 t.t_af = sc->sc_tunnel.t_af;
 t.t_df = sc->sc_tunnel.t_df;
 t.t_src = sc->sc_tunnel.t_dst;
 t.t_dst = sc->sc_tunnel.t_src;
 t.t_key = sc->sc_tunnel.t_key;
 t.t_key_mask = sc->sc_tunnel.t_key_mask;
 m = gre_encap_dst((&t), &(&t)->t_dst, (m), (((__uint16_t)(0))), (ttl), (0xc0));
 if (m == ((void *)0))
  return;
 switch (sc->sc_tunnel.t_af) {
 case 2: {
  struct ip *ip;
  ip = ((struct ip *)((m)->m_hdr.mh_data));
  ip->ip_id = ((__uint16_t)(ip_randomid()));
  ip->ip_sum = 0;
  ip->ip_sum = in_cksum(m, sizeof(*ip));
  proto = ((__uint16_t)(0x0800));
  break;
 }
 case 24:
  proto = ((__uint16_t)(0x86DD));
  break;
 }
 m = gre_encap_dst((&sc->sc_tunnel), &(&sc->sc_tunnel)->t_dst, (m), (proto), (ttl), (0xc0));
 if (m == ((void *)0))
  return;
 gre_ip_output(&sc->sc_tunnel, m);
 timeout_add_sec(&sc->sc_ka_send, sc->sc_ka_timeo);
}
static void
gre_keepalive_hold(void *arg)
{
 struct gre_softc *sc = arg;
 if (!((sc->sc_if.if_flags) & (0x40)) ||
     sc->sc_ka_state == 0)
  return;
 do { _rw_enter_write(&netlock ); } while (0);
 sc->sc_ka_state = 1;
 gre_link_state(sc);
 do { _rw_exit_write(&netlock ); } while (0);
}
static int
gre_set_tunnel(struct gre_tunnel *tunnel, struct if_laddrreq *req, int ucast)
{
 struct sockaddr *src = (struct sockaddr *)&req->addr;
 struct sockaddr *dst = (struct sockaddr *)&req->dstaddr;
 struct sockaddr_in *src4, *dst4;
 struct sockaddr_in6 *src6, *dst6;
 int error;
 if (src->sa_family != dst->sa_family || src->sa_len != dst->sa_len)
  return (22);
 switch (dst->sa_family) {
 case 2:
  if (dst->sa_len != sizeof(*dst4))
   return (22);
  src4 = (struct sockaddr_in *)src;
  if (((src4->sin_addr).s_addr == ((u_int32_t) ((__uint32_t)((u_int32_t)(0x00000000))))) ||
      (((u_int32_t)(src4->sin_addr.s_addr) & ((u_int32_t) ((__uint32_t)((u_int32_t)(0xf0000000))))) == ((u_int32_t) ((__uint32_t)((u_int32_t)(0xe0000000))))))
   return (22);
  dst4 = (struct sockaddr_in *)dst;
  if (((dst4->sin_addr).s_addr == ((u_int32_t) ((__uint32_t)((u_int32_t)(0x00000000))))) ||
      ((((u_int32_t)(dst4->sin_addr.s_addr) & ((u_int32_t) ((__uint32_t)((u_int32_t)(0xf0000000))))) == ((u_int32_t) ((__uint32_t)((u_int32_t)(0xe0000000))))) != !ucast))
   return (22);
  tunnel->t_src.in4 = src4->sin_addr;
  tunnel->t_dst.in4 = dst4->sin_addr;
  break;
 case 24:
  if (dst->sa_len != sizeof(*dst6))
   return (22);
  src6 = (struct sockaddr_in6 *)src;
  if (((*(const u_int32_t *)(const void *)(&(&src6->sin6_addr)->__u6_addr.__u6_addr8[0]) == 0) && (*(const u_int32_t *)(const void *)(&(&src6->sin6_addr)->__u6_addr.__u6_addr8[4]) == 0) && (*(const u_int32_t *)(const void *)(&(&src6->sin6_addr)->__u6_addr.__u6_addr8[8]) == 0) && (*(const u_int32_t *)(const void *)(&(&src6->sin6_addr)->__u6_addr.__u6_addr8[12]) == 0)) ||
      ((&src6->sin6_addr)->__u6_addr.__u6_addr8[0] == 0xff))
   return (22);
  dst6 = (struct sockaddr_in6 *)dst;
  if (((*(const u_int32_t *)(const void *)(&(&dst6->sin6_addr)->__u6_addr.__u6_addr8[0]) == 0) && (*(const u_int32_t *)(const void *)(&(&dst6->sin6_addr)->__u6_addr.__u6_addr8[4]) == 0) && (*(const u_int32_t *)(const void *)(&(&dst6->sin6_addr)->__u6_addr.__u6_addr8[8]) == 0) && (*(const u_int32_t *)(const void *)(&(&dst6->sin6_addr)->__u6_addr.__u6_addr8[12]) == 0)) ||
      ((&dst6->sin6_addr)->__u6_addr.__u6_addr8[0] == 0xff) != !ucast)
   return (22);
  if (src6->sin6_scope_id != dst6->sin6_scope_id)
   return (22);
  error = in6_embedscope(&tunnel->t_src.in6, src6, ((void *)0));
  if (error != 0)
   return (error);
  error = in6_embedscope(&tunnel->t_dst.in6, dst6, ((void *)0));
  if (error != 0)
   return (error);
  break;
 default:
  return (47);
 }
 tunnel->t_af = dst->sa_family;
 return (0);
}
static int
gre_get_tunnel(struct gre_tunnel *tunnel, struct if_laddrreq *req)
{
 struct sockaddr *src = (struct sockaddr *)&req->addr;
 struct sockaddr *dst = (struct sockaddr *)&req->dstaddr;
 struct sockaddr_in *sin;
 struct sockaddr_in6 *sin6;
 switch (tunnel->t_af) {
 case 0:
  return (49);
 case 2:
  sin = (struct sockaddr_in *)src;
  __builtin_memset((sin), (0), (sizeof(*sin)));
  sin->sin_family = 2;
  sin->sin_len = sizeof(*sin);
  sin->sin_addr = tunnel->t_src.in4;
  sin = (struct sockaddr_in *)dst;
  __builtin_memset((sin), (0), (sizeof(*sin)));
  sin->sin_family = 2;
  sin->sin_len = sizeof(*sin);
  sin->sin_addr = tunnel->t_dst.in4;
  break;
 case 24:
  sin6 = (struct sockaddr_in6 *)src;
  __builtin_memset((sin6), (0), (sizeof(*sin6)));
  sin6->sin6_family = 24;
  sin6->sin6_len = sizeof(*sin6);
  in6_recoverscope(sin6, &tunnel->t_src.in6);
  sin6 = (struct sockaddr_in6 *)dst;
  __builtin_memset((sin6), (0), (sizeof(*sin6)));
  sin6->sin6_family = 24;
  sin6->sin6_len = sizeof(*sin6);
  in6_recoverscope(sin6, &tunnel->t_dst.in6);
  break;
 default:
  return (47);
 }
 return (0);
}
static int
gre_del_tunnel(struct gre_tunnel *tunnel)
{
 tunnel->t_af = 0;
 return (0);
}
static int
gre_set_vnetid(struct gre_tunnel *tunnel, struct ifreq *ifr)
{
 uint32_t key;
 uint32_t min = 0x00000000U;
 uint32_t max = 0xffffffffU;
 unsigned int shift = 0;
 uint32_t mask = ((__uint32_t)(0xffffffffU));
 if (tunnel->t_key_mask == ((__uint32_t)(0xffffff00U))) {
  min = 0x00000000U;
  max = 0x00ffffffU;
  shift = 8;
  mask = ((__uint32_t)(0xffffff00U));
 }
 if (ifr->ifr_ifru.ifru_vnetid < min || ifr->ifr_ifru.ifru_vnetid > max)
  return (22);
 key = ((__uint32_t)(ifr->ifr_ifru.ifru_vnetid << shift));
 tunnel->t_key_mask = mask;
 tunnel->t_key = key;
 return (0);
}
static int
gre_get_vnetid(struct gre_tunnel *tunnel, struct ifreq *ifr)
{
 int shift;
 switch (tunnel->t_key_mask) {
 case ((__uint32_t)(0x00000000U)):
  return (49);
 case ((__uint32_t)(0xffffff00U)):
  shift = 8;
  break;
 case ((__uint32_t)(0xffffffffU)):
  shift = 0;
  break;
 }
 ifr->ifr_ifru.ifru_vnetid = ((__uint32_t)(tunnel->t_key)) >> shift;
 return (0);
}
static int
gre_del_vnetid(struct gre_tunnel *tunnel)
{
 tunnel->t_key_mask = ((__uint32_t)(0x00000000U));
 return (0);
}
static int
gre_set_vnetflowid(struct gre_tunnel *tunnel, struct ifreq *ifr)
{
 uint32_t mask, key;
 if (tunnel->t_key_mask == ((__uint32_t)(0x00000000U)))
  return (49);
 mask = ifr->ifr_ifru.ifru_vnetid ? ((__uint32_t)(0xffffff00U)) : ((__uint32_t)(0xffffffffU));
 if (tunnel->t_key_mask == mask) {
  return (0);
 }
 key = ((__uint32_t)(tunnel->t_key));
 if (mask == ((__uint32_t)(0xffffff00U))) {
  if (key > 0x00ffffffU)
   return (34);
  key = ((__uint32_t)(key << 8));
 } else
  key = ((__uint32_t)(key >> 8));
 tunnel->t_key_mask = mask;
 tunnel->t_key = key;
 return (0);
}
static int
gre_get_vnetflowid(struct gre_tunnel *tunnel, struct ifreq *ifr)
{
 if (tunnel->t_key_mask == ((__uint32_t)(0x00000000U)))
  return (49);
 ifr->ifr_ifru.ifru_vnetid = tunnel->t_key_mask == ((__uint32_t)(0xffffff00U));
 return (0);
}
static int
mgre_up(struct mgre_softc *sc)
{
 unsigned int hlen;
 switch (sc->sc_tunnel.t_af) {
 case 0:
  return (39);
 case 2:
  hlen = sizeof(struct ip);
  break;
 case 24:
  hlen = sizeof(struct ip6_hdr);
  break;
 }
 hlen += sizeof(struct gre_header);
 if (sc->sc_tunnel.t_key_mask != ((__uint32_t)(0x00000000U)))
  hlen += sizeof(struct gre_h_key);
 do { int _s = rw_status(&netlock); if ((splassert_ctl > 0) && (_s != 0x0001UL && _s != 0x0002UL)) splassert_fail(0x0002UL, _s, __func__); } while (0);
 if (mgre_tree_RBT_INSERT(&mgre_tree, sc) != ((void *)0))
  return (48);
 sc->sc_if.if_data.ifi_hdrlen = hlen;
 ((sc->sc_if.if_flags) |= (0x40));
 return (0);
}
static int
mgre_down(struct mgre_softc *sc)
{
 do { int _s = rw_status(&netlock); if ((splassert_ctl > 0) && (_s != 0x0001UL && _s != 0x0002UL)) splassert_fail(0x0002UL, _s, __func__); } while (0);
 ((sc->sc_if.if_flags) &= ~(0x40));
 sc->sc_if.if_data.ifi_hdrlen = (sizeof(struct ip) + sizeof(struct gre_header));
 mgre_tree_RBT_REMOVE(&mgre_tree, sc);
 return (0);
}
static int
egre_up(struct egre_softc *sc)
{
 if (sc->sc_tunnel.t_af == 0)
  return (39);
 do { int _s = rw_status(&netlock); if ((splassert_ctl > 0) && (_s != 0x0001UL && _s != 0x0002UL)) splassert_fail(0x0002UL, _s, __func__); } while (0);
 if (egre_tree_RBT_INSERT(&egre_tree, sc) != ((void *)0))
  return (48);
 ((sc->sc_ac.ac_if.if_flags) |= (0x40));
 return (0);
}
static int
egre_down(struct egre_softc *sc)
{
 do { int _s = rw_status(&netlock); if ((splassert_ctl > 0) && (_s != 0x0001UL && _s != 0x0002UL)) splassert_fail(0x0002UL, _s, __func__); } while (0);
 ((sc->sc_ac.ac_if.if_flags) &= ~(0x40));
 egre_tree_RBT_REMOVE(&egre_tree, sc);
 return (0);
}
static int
egre_media_change(struct ifnet *ifp)
{
 return (25);
}
static void
egre_media_status(struct ifnet *ifp, struct ifmediareq *imr)
{
 imr->ifm_active = 0x0000000000000100ULL | 0ULL;
 imr->ifm_status = 0x0000000000000001ULL | 0x0000000000000002ULL;
}
static int
nvgre_up(struct nvgre_softc *sc)
{
 struct gre_tunnel *tunnel = &sc->sc_tunnel;
 struct ifnet *ifp0;
 void *inm;
 int error;
 if (tunnel->t_af == 0)
  return (39);
 ifp0 = if_get(sc->sc_ifp0);
 if (ifp0 == ((void *)0))
  return (6);
 if (!((ifp0->if_flags) & (0x8000))) {
  error = 19;
  goto put;
 }
 do { int _s = rw_status(&netlock); if ((splassert_ctl > 0) && (_s != 0x0001UL && _s != 0x0002UL)) splassert_fail(0x0002UL, _s, __func__); } while (0);
 if (nvgre_mcast_tree_RBT_INSERT(&nvgre_mcast_tree, sc) != ((void *)0)) {
  error = 48;
  goto put;
 }
 if (nvgre_ucast_tree_RBT_INSERT(&nvgre_ucast_tree, sc) != ((void *)0)) {
  error = 48;
  goto remove_mcast;
 }
 switch (tunnel->t_af) {
 case 2:
  inm = in_addmulti(&tunnel->t_dst.in4, ifp0);
  if (inm == ((void *)0)) {
   error = 53;
   goto remove_ucast;
  }
  break;
 case 24:
  inm = in6_addmulti(&tunnel->t_dst.in6, ifp0, &error);
  if (inm == ((void *)0)) {
   goto remove_ucast;
  }
  break;
 default:
  unhandled_af(tunnel->t_af);
 }
 sc->sc_lhcookie = hook_establish(ifp0->if_linkstatehooks, 0,
     nvgre_link_change, sc);
 if (sc->sc_lhcookie == ((void *)0)) {
  error = 12;
  goto delmulti;
 }
 sc->sc_dhcookie = hook_establish(ifp0->if_detachhooks, 0,
     nvgre_detach, sc);
 if (sc->sc_dhcookie == ((void *)0)) {
  error = 12;
  goto dislh;
 }
 if_put(ifp0);
 sc->sc_inm = inm;
 ((sc->sc_ac.ac_if.if_flags) |= (0x40));
 timeout_add_sec(&sc->sc_ether_age, 100);
 return (0);
dislh:
 hook_disestablish(ifp0->if_linkstatehooks, sc->sc_lhcookie);
delmulti:
 switch (tunnel->t_af) {
 case 2:
  in_delmulti(inm);
  break;
 case 24:
  in6_delmulti(inm);
  break;
 }
remove_ucast:
 nvgre_ucast_tree_RBT_REMOVE(&nvgre_ucast_tree, sc);
remove_mcast:
 nvgre_mcast_tree_RBT_REMOVE(&nvgre_mcast_tree, sc);
put:
 if_put(ifp0);
 return (error);
}
static int
nvgre_down(struct nvgre_softc *sc)
{
 struct gre_tunnel *tunnel = &sc->sc_tunnel;
 struct ifnet *ifp = &sc->sc_ac.ac_if;
 struct taskq *softnet = net_tq(ifp->if_index);
 struct ifnet *ifp0;
 do { int _s = rw_status(&netlock); if ((splassert_ctl > 0) && (_s != 0x0001UL && _s != 0x0002UL)) splassert_fail(0x0002UL, _s, __func__); } while (0);
 ((ifp->if_flags) &= ~(0x40));
 do { _rw_exit_write(&netlock ); } while (0);
 if (!timeout_del(&sc->sc_ether_age))
  timeout_barrier(&sc->sc_ether_age);
 ifq_barrier(&ifp->if_snd);
 if (!task_del(softnet, &sc->sc_send_task))
  taskq_barrier(softnet);
 do { _rw_enter_write(&netlock ); } while (0);
 mq_purge(&sc->sc_send_list);
 ifp0 = if_get(sc->sc_ifp0);
 if (ifp0 != ((void *)0)) {
  hook_disestablish(ifp0->if_detachhooks, sc->sc_dhcookie);
  hook_disestablish(ifp0->if_linkstatehooks, sc->sc_lhcookie);
 }
 if_put(ifp0);
 switch (tunnel->t_af) {
 case 2:
  in_delmulti(sc->sc_inm);
  break;
 case 24:
  in6_delmulti(sc->sc_inm);
  break;
 }
 nvgre_ucast_tree_RBT_REMOVE(&nvgre_ucast_tree, sc);
 nvgre_mcast_tree_RBT_REMOVE(&nvgre_mcast_tree, sc);
 return (0);
}
static void
nvgre_link_change(void *arg)
{
}
static void
nvgre_detach(void *arg)
{
 struct nvgre_softc *sc = arg;
 struct ifnet *ifp = &sc->sc_ac.ac_if;
 if (((ifp->if_flags) & (0x40))) {
  nvgre_down(sc);
  if_down(ifp);
 }
 sc->sc_ifp0 = 0;
}
static int
nvgre_set_parent(struct nvgre_softc *sc, const char *parent)
{
 struct ifnet *ifp0;
 ifp0 = ifunit(parent);
 if (ifp0 == ((void *)0))
  return (22);
 if (!((ifp0->if_flags) & (0x8000)))
  return (43);
 sc->sc_ifp0 = ifp0->if_index;
 return (0);
}
static void
nvgre_age(void *arg)
{
 struct nvgre_softc *sc = arg;
 struct nvgre_entry *nv, *nnv;
 int tmo = sc->sc_ether_tmo * 2;
 int diff;
 if (!((sc->sc_ac.ac_if.if_flags) & (0x40)))
  return;
 _rw_enter_write(&sc->sc_ether_lock );
 for ((nv) = nvgre_map_RBT_MIN((&sc->sc_ether_map)); (nv) != ((void *)0) && ((nnv) = nvgre_map_RBT_NEXT((nv)), 1); (nv) = (nnv)) {
  if (nv->nv_type != 0)
   continue;
  diff = ticks - nv->nv_age;
  if (diff < tmo)
   continue;
  sc->sc_ether_num--;
  nvgre_map_RBT_REMOVE(&sc->sc_ether_map, nv);
  if (refcnt_rele(&nv->nv_refs))
   pool_put(&nvgre_pool, nv);
 }
 _rw_exit_write(&sc->sc_ether_lock );
 timeout_add_sec(&sc->sc_ether_age, 100);
}
static inline int
nvgre_entry_valid(struct nvgre_softc *sc, const struct nvgre_entry *nv)
{
 int diff;
 if (nv == ((void *)0))
  return (0);
 if (nv->nv_type == 1)
  return (1);
 diff = ticks - nv->nv_age;
 if (diff < sc->sc_ether_tmo)
  return (1);
 return (0);
}
static void
nvgre_start(struct ifnet *ifp)
{
 struct nvgre_softc *sc = ifp->if_softc;
 const struct gre_tunnel *tunnel = &sc->sc_tunnel;
 union gre_addr gateway;
 struct nvgre_entry *nv, key;
 struct mbuf_list ml = { ((void *)0), ((void *)0), 0 };
 struct ether_header *eh;
 struct mbuf *m, *m0;
 caddr_t if_bpf;
 if (!gre_allow) {
  ifq_purge(&ifp->if_snd);
  return;
 }
 while ((m0 = ifq_dequeue(&ifp->if_snd)) != ((void *)0)) {
  if_bpf = ifp->if_bpf;
  if (if_bpf)
   bpf_mtap_ether(if_bpf, m0, (1<<1));
  eh = ((struct ether_header *)((m0)->m_hdr.mh_data));
  if ((__builtin_memcmp(((((eh->ether_dhost)))), (((etherbroadcastaddr))), (6)) == 0))
   gateway = tunnel->t_dst;
  else {
   __builtin_memcpy((&key.nv_dst), (eh->ether_dhost), (sizeof(key.nv_dst)));
   _rw_enter_read(&sc->sc_ether_lock );
   nv = nvgre_map_RBT_FIND(&sc->sc_ether_map, &key);
   if (nvgre_entry_valid(sc, nv))
    gateway = nv->nv_gateway;
   else {
    gateway = tunnel->t_dst;
   }
   _rw_exit_read(&sc->sc_ether_lock );
  }
  m = m_gethdr(0x0002, m0->m_hdr.mh_type);
  if (m == ((void *)0)) {
   m_freem(m0);
   continue;
  }
  do { (m)->m_hdr.mh_flags = ((m)->m_hdr.mh_flags & (0x0001 | 0x0008)); (m)->m_hdr.mh_flags |= (m0)->m_hdr.mh_flags & (0x0002|0x0004|0x0010|0x0100|0x0200|0x0400|0x4000| 0x0800|0x0040|0x1000|0x8000|0x0020|0x0080| 0x2000); do { ((m))->M_dat.MH.MH_pkthdr = ((m0))->M_dat.MH.MH_pkthdr; ((m0))->m_hdr.mh_flags &= ~0x0002; { ((&((m0))->M_dat.MH.MH_pkthdr.ph_tags)->slh_first) = ((void *)0); }; ((m0))->M_dat.MH.MH_pkthdr.pf.statekey = ((void *)0); } while ( 0); if (((m)->m_hdr.mh_flags & 0x0001) == 0) (m)->m_hdr.mh_data = (m)->M_dat.MH.MH_dat.MH_databuf; } while ( 0);
  m->m_hdr.mh_next = m0;
  (m)->m_hdr.mh_data += (((256 - sizeof(struct m_hdr)) - sizeof(struct pkthdr)) - (0)) &~ (sizeof(long) - 1);
  m->m_hdr.mh_len = 0;
  m = gre_encap_dst(tunnel, &gateway, m,
      ((__uint16_t)(0x6558)), tunnel->t_ttl, 0);
  if (m == ((void *)0))
   continue;
  m->m_hdr.mh_flags &= ~(0x0100|0x0200);
  m->M_dat.MH.MH_pkthdr.ph_rtableid = tunnel->t_rtableid;
  pf_pkt_addr_changed(m);
  ml_enqueue(&ml, m);
 }
 if (!((&ml)->ml_len == 0)) {
  if (mq_enlist(&sc->sc_send_list, &ml) == 0)
   task_add(net_tq(ifp->if_index), &sc->sc_send_task);
 }
}
static uint64_t
nvgre_send4(struct nvgre_softc *sc, struct mbuf_list *ml)
{
 struct ip_moptions imo;
 struct mbuf *m;
 uint64_t oerrors = 0;
 imo.imo_ifidx = sc->sc_ifp0;
 imo.imo_ttl = sc->sc_tunnel.t_ttl;
 imo.imo_loop = 0;
 do { _rw_enter_read(&netlock ); } while (0);
 while ((m = ml_dequeue(ml)) != ((void *)0)) {
  if (ip_output(m, ((void *)0), ((void *)0), 0x2, &imo, ((void *)0), 0) != 0)
   oerrors++;
 }
 do { _rw_exit_read(&netlock ); } while (0);
 return (oerrors);
}
static uint64_t
nvgre_send6(struct nvgre_softc *sc, struct mbuf_list *ml)
{
 struct ip6_moptions im6o;
 struct mbuf *m;
 uint64_t oerrors = 0;
 im6o.im6o_ifidx = sc->sc_ifp0;
 im6o.im6o_hlim = sc->sc_tunnel.t_ttl;
 im6o.im6o_loop = 0;
 do { _rw_enter_read(&netlock ); } while (0);
 while ((m = ml_dequeue(ml)) != ((void *)0)) {
  if (ip6_output(m, ((void *)0), ((void *)0), 0, &im6o, ((void *)0)) != 0)
   oerrors++;
 }
 do { _rw_exit_read(&netlock ); } while (0);
 return (oerrors);
}
static void
nvgre_send(void *arg)
{
 struct nvgre_softc *sc = arg;
 struct ifnet *ifp = &sc->sc_ac.ac_if;
 sa_family_t af = sc->sc_tunnel.t_af;
 struct mbuf_list ml;
 uint64_t oerrors;
 if (!((ifp->if_flags) & (0x40)))
  return;
 mq_delist(&sc->sc_send_list, &ml);
 if (((&ml)->ml_len == 0))
  return;
 switch (af) {
 case 2:
  oerrors = nvgre_send4(sc, &ml);
  break;
 case 24:
  oerrors = nvgre_send6(sc, &ml);
  break;
 default:
  unhandled_af(af);
 }
 ifp->if_data.ifi_oerrors += oerrors;
}
int
gre_sysctl(int *name, u_int namelen, void *oldp, size_t *oldlenp, void *newp,
    size_t newlen)
{
 int error;
 if (namelen != 1)
  return (20);
 switch (name[0]) {
 case 1:
  do { _rw_enter_write(&netlock ); } while (0);
  error = sysctl_int(oldp, oldlenp, newp, newlen, &gre_allow);
  do { _rw_exit_write(&netlock ); } while (0);
  return (error);
 case 2:
  do { _rw_enter_write(&netlock ); } while (0);
  error = sysctl_int(oldp, oldlenp, newp, newlen, &gre_wccp);
  do { _rw_exit_write(&netlock ); } while (0);
  return (error);
 default:
  return (42);
 }
}
static inline int
gre_ip_cmp(int af, const union gre_addr *a, const union gre_addr *b)
{
 switch (af) {
 case 24:
  return (__builtin_memcmp((&a->in6), (&b->in6), (sizeof(a->in6))));
 case 2:
  return (__builtin_memcmp((&a->in4), (&b->in4), (sizeof(a->in4))));
 default:
  panic("%s: unsupported af %d\n", __func__, af);
 }
 return (0);
}
static int
gre_cmp_src(const struct gre_tunnel *a, const struct gre_tunnel *b)
{
 uint32_t ka, kb;
 uint32_t mask;
 int rv;
 ka = a->t_key_mask & ((__uint32_t)(0xffffff00U));
 kb = b->t_key_mask & ((__uint32_t)(0xffffff00U));
 if (ka > kb)
  return (1);
 if (ka < kb)
  return (-1);
 if (ka != ((__uint32_t)(0x00000000U))) {
  mask = a->t_key_mask & b->t_key_mask;
  ka = a->t_key & mask;
  kb = b->t_key & mask;
  if (ka > kb)
   return (1);
  if (ka < kb)
   return (-1);
 }
 if (a->t_rtableid > b->t_rtableid)
  return (1);
 if (a->t_rtableid < b->t_rtableid)
  return (-1);
 if (a->t_af > b->t_af)
  return (1);
 if (a->t_af < b->t_af)
  return (-1);
 rv = gre_ip_cmp(a->t_af, &a->t_src, &b->t_src);
 if (rv != 0)
  return (rv);
 return (0);
}
static int
gre_cmp(const struct gre_tunnel *a, const struct gre_tunnel *b)
{
 int rv;
 rv = gre_cmp_src(a, b);
 if (rv != 0)
  return (rv);
 return (gre_ip_cmp(a->t_af, &a->t_dst, &b->t_dst));
}
static inline int
mgre_cmp(const struct mgre_softc *a, const struct mgre_softc *b)
{
 return (gre_cmp_src(&a->sc_tunnel, &b->sc_tunnel));
}
static int mgre_tree_RBT_COMPARE(const void *lptr, const void *rptr) { const struct mgre_softc *l = lptr, *r = rptr; return mgre_cmp(l, r); } static const struct rb_type mgre_tree_RBT_INFO = { mgre_tree_RBT_COMPARE, ((void *)0), __builtin_offsetof(struct mgre_softc, sc_entry), }; const struct rb_type *const mgre_tree_RBT_TYPE = &mgre_tree_RBT_INFO;
static inline int
egre_cmp(const struct egre_softc *a, const struct egre_softc *b)
{
 return (gre_cmp(&a->sc_tunnel, &b->sc_tunnel));
}
static int egre_tree_RBT_COMPARE(const void *lptr, const void *rptr) { const struct egre_softc *l = lptr, *r = rptr; return egre_cmp(l, r); } static const struct rb_type egre_tree_RBT_INFO = { egre_tree_RBT_COMPARE, ((void *)0), __builtin_offsetof(struct egre_softc, sc_entry), }; const struct rb_type *const egre_tree_RBT_TYPE = &egre_tree_RBT_INFO;
static inline int
nvgre_entry_cmp(const struct nvgre_entry *a, const struct nvgre_entry *b)
{
 return (__builtin_memcmp((&a->nv_dst), (&b->nv_dst), (sizeof(a->nv_dst))));
}
static int nvgre_map_RBT_COMPARE(const void *lptr, const void *rptr) { const struct nvgre_entry *l = lptr, *r = rptr; return nvgre_entry_cmp(l, r); } static const struct rb_type nvgre_map_RBT_INFO = { nvgre_map_RBT_COMPARE, ((void *)0), __builtin_offsetof(struct nvgre_entry, nv_entry), }; const struct rb_type *const nvgre_map_RBT_TYPE = &nvgre_map_RBT_INFO;
static int
nvgre_cmp_tunnel(const struct gre_tunnel *a, const struct gre_tunnel *b)
{
 uint32_t ka, kb;
 ka = a->t_key & ((__uint32_t)(0xffffff00U));
 kb = b->t_key & ((__uint32_t)(0xffffff00U));
 if (ka > kb)
  return (1);
 if (ka < kb)
  return (-1);
 if (a->t_rtableid > b->t_rtableid)
  return (1);
 if (a->t_rtableid < b->t_rtableid)
  return (-1);
 if (a->t_af > b->t_af)
  return (1);
 if (a->t_af < b->t_af)
  return (-1);
 return (0);
}
static inline int
nvgre_cmp_ucast(const struct nvgre_softc *na, const struct nvgre_softc *nb)
{
 const struct gre_tunnel *a = &na->sc_tunnel;
 const struct gre_tunnel *b = &nb->sc_tunnel;
 int rv;
 rv = nvgre_cmp_tunnel(a, b);
 if (rv != 0)
  return (rv);
 rv = gre_ip_cmp(a->t_af, &a->t_src, &b->t_src);
 if (rv != 0)
  return (rv);
 return (0);
}
static int
nvgre_cmp_mcast(const struct gre_tunnel *a, const union gre_addr *aa,
    unsigned int if0idxa, const struct gre_tunnel *b,
    const union gre_addr *ab,unsigned int if0idxb)
{
 int rv;
 rv = nvgre_cmp_tunnel(a, b);
 if (rv != 0)
  return (rv);
 rv = gre_ip_cmp(a->t_af, aa, ab);
 if (rv != 0)
  return (rv);
 if (if0idxa > if0idxb)
  return (1);
 if (if0idxa < if0idxb)
  return (-1);
 return (0);
}
static inline int
nvgre_cmp_mcast_sc(const struct nvgre_softc *na, const struct nvgre_softc *nb)
{
 const struct gre_tunnel *a = &na->sc_tunnel;
 const struct gre_tunnel *b = &nb->sc_tunnel;
 return (nvgre_cmp_mcast(a, &a->t_dst, na->sc_ifp0,
     b, &b->t_dst, nb->sc_ifp0));
}
static int nvgre_ucast_tree_RBT_COMPARE(const void *lptr, const void *rptr) { const struct nvgre_softc *l = lptr, *r = rptr; return nvgre_cmp_ucast(l, r); } static const struct rb_type nvgre_ucast_tree_RBT_INFO = { nvgre_ucast_tree_RBT_COMPARE, ((void *)0), __builtin_offsetof(struct nvgre_softc, sc_uentry), }; const struct rb_type *const nvgre_ucast_tree_RBT_TYPE = &nvgre_ucast_tree_RBT_INFO;
static int nvgre_mcast_tree_RBT_COMPARE(const void *lptr, const void *rptr) { const struct nvgre_softc *l = lptr, *r = rptr; return nvgre_cmp_mcast_sc(l, r); } static const struct rb_type nvgre_mcast_tree_RBT_INFO = { nvgre_mcast_tree_RBT_COMPARE, ((void *)0), __builtin_offsetof(struct nvgre_softc, sc_mentry), }; const struct rb_type *const nvgre_mcast_tree_RBT_TYPE = &nvgre_mcast_tree_RBT_INFO;
