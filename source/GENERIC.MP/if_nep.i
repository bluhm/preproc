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
struct nep_block {
 bus_dmamap_t nb_map;
 void *nb_block;
};
struct nep_txbuf_hdr {
 uint64_t nh_flags;
 uint64_t nh_reserved;
};
struct nep_buf {
 bus_dmamap_t nb_map;
 struct mbuf *nb_m;
};
struct nep_dmamem {
 bus_dmamap_t ndm_map;
 bus_dma_segment_t ndm_seg;
 size_t ndm_size;
 caddr_t ndm_kva;
};
struct pool *nep_block_pool;
struct nep_softc {
 struct device sc_dev;
 struct arpcom sc_ac;
 struct mii_data sc_mii;
 bus_dma_tag_t sc_dmat;
 bus_space_tag_t sc_memt;
 bus_space_handle_t sc_memh;
 bus_size_t sc_mems;
 void *sc_ih;
 int sc_port;
 struct nep_dmamem *sc_txring;
 struct nep_buf *sc_txbuf;
 uint64_t *sc_txdesc;
 int sc_tx_prod;
 int sc_tx_cnt;
 int sc_tx_cons;
 uint64_t sc_wrap;
 uint16_t sc_pkt_cnt;
 struct nep_dmamem *sc_rbring;
 struct nep_block *sc_rb;
 uint32_t *sc_rbdesc;
 struct if_rxring sc_rx_ring;
 int sc_rx_prod;
 struct nep_dmamem *sc_rcring;
 uint64_t *sc_rcdesc;
 int sc_rx_cons;
 struct nep_dmamem *sc_rxmbox;
 struct timeout sc_tick;
};
int nep_match(struct device *, void *, void *);
void nep_attach(struct device *, struct device *, void *);
struct cfattach nep_ca = {
 sizeof(struct nep_softc), nep_match, nep_attach
};
struct cfdriver nep_cd = {
 ((void *)0), "nep", DV_DULL
};
static u_int nep_mextfree_idx;
int nep_pci_enaddr(struct nep_softc *, struct pci_attach_args *);
uint64_t nep_read(struct nep_softc *, uint32_t);
void nep_write(struct nep_softc *, uint32_t, uint64_t);
int nep_mii_readreg(struct device *, int, int);
void nep_mii_writereg(struct device *, int, int, int);
void nep_mii_statchg(struct device *);
void nep_xmac_mii_statchg(struct nep_softc *);
void nep_bmac_mii_statchg(struct nep_softc *);
int nep_media_change(struct ifnet *);
void nep_media_status(struct ifnet *, struct ifmediareq *);
int nep_intr(void *);
void nep_rx_proc(struct nep_softc *);
void nep_extfree(caddr_t, u_int, void *);
void nep_tx_proc(struct nep_softc *);
void nep_init_ipp(struct nep_softc *);
void nep_ipp_clear_dfifo(struct nep_softc *, uint64_t);
void nep_init_rx_mac(struct nep_softc *);
void nep_init_rx_xmac(struct nep_softc *);
void nep_init_rx_bmac(struct nep_softc *);
void nep_init_rx_channel(struct nep_softc *, int);
void nep_init_tx_mac(struct nep_softc *);
void nep_init_tx_xmac(struct nep_softc *);
void nep_init_tx_bmac(struct nep_softc *);
void nep_init_tx_channel(struct nep_softc *, int);
void nep_enable_rx_mac(struct nep_softc *);
void nep_disable_rx_mac(struct nep_softc *);
void nep_stop_dma(struct nep_softc *);
void nep_fill_rx_ring(struct nep_softc *);
void nep_up(struct nep_softc *);
void nep_down(struct nep_softc *);
void nep_iff(struct nep_softc *);
int nep_encap(struct nep_softc *, struct mbuf **, int *);
void nep_start(struct ifnet *);
void nep_watchdog(struct ifnet *);
void nep_tick(void *);
int nep_ioctl(struct ifnet *, u_long, caddr_t);
struct nep_dmamem *nep_dmamem_alloc(struct nep_softc *, size_t);
void nep_dmamem_free(struct nep_softc *, struct nep_dmamem *);
int
nep_match(struct device *parent, void *match, void *aux)
{
 struct pci_attach_args *pa = aux;
 if ((((pa->pa_id) >> 0) & 0xffff) == 0x108e &&
     (((pa->pa_id) >> 16) & 0xffff) == 0xabcd)
  return (1);
 return (0);
}
void
nep_attach(struct device *parent, struct device *self, void *aux)
{
 struct nep_softc *sc = (struct nep_softc *)self;
 struct pci_attach_args *pa = aux;
 pci_intr_handle_t ih;
 const char *intrstr = ((void *)0);
 struct ifnet *ifp = &sc->sc_ac.ac_if;
 struct mii_data *mii = &sc->sc_mii;
 pcireg_t memtype;
 uint64_t val;
 if (nep_mextfree_idx == 0)
  nep_mextfree_idx = mextfree_register(nep_extfree);
 sc->sc_dmat = pa->pa_dmat;
 memtype = 0x00000000 | 0x00000004;
 if (pci_mapreg_map(pa, 0x10, memtype, 0,
     &sc->sc_memt, &sc->sc_memh, ((void *)0), &sc->sc_mems, 0)) {
  printf(": can't map registers\n");
  return;
 }
 if (pci_intr_map_msi(pa, &ih) && pci_intr_map(pa, &ih)) {
  printf(": can't map interrupt\n");
  bus_space_unmap(sc->sc_memt, sc->sc_memh, sc->sc_mems);
  return;
 }
 intrstr = pci_intr_string(pa->pa_pc, ih);
 sc->sc_ih = pci_intr_establish(pa->pa_pc, ih, 6,
     nep_intr, sc, self->dv_xname);
 if (sc->sc_ih == ((void *)0)) {
  printf(": can't establish interrupt");
  if (intrstr != ((void *)0))
   printf(" at %s", intrstr);
  printf("\n");
  bus_space_unmap(sc->sc_memt, sc->sc_memh, sc->sc_mems);
  return;
 }
 printf(": %s", intrstr);
 sc->sc_port = pa->pa_function;
 nep_write(sc, (0x080000 + 0x10200 + (sc->sc_port) * 0x00008), pa->pa_function << 5);
 nep_write(sc, (0x080000 + 0x20000 + ((0 + (sc->sc_port))) * 0x00008), sc->sc_port);
 nep_write(sc, (0x080000 + 0x20000 + ((32 + (sc->sc_port))) * 0x00008), sc->sc_port);
 nep_write(sc, (0x080000 + 0x20000 + ((64 + (sc->sc_port))) * 0x00008), sc->sc_port);
 if (sc->sc_port == 0) {
  nep_write(sc, (0x080000 + 0x20000 + (63) * 0x00008), sc->sc_port);
  nep_write(sc, (0x080000 + 0x20000 + (68) * 0x00008), sc->sc_port);
  nep_write(sc, (0x580000 + 0x00010), 0);
 }
 if (OF_getprop((int)(((pa->pa_tag)>>32)&0xffffffff), "local-mac-address",
     sc->sc_ac.ac_enaddr, 6) <= 0)
  nep_pci_enaddr(sc, pa);
 printf(", address %s\n", ether_sprintf(sc->sc_ac.ac_enaddr));
 if (nep_block_pool == ((void *)0)) {
  nep_block_pool = malloc(sizeof(*nep_block_pool),
      2, 0x0001);
  if (nep_block_pool == ((void *)0)) {
   printf("%s: unable to allocate block pool\n",
       sc->sc_dev.dv_xname);
   return;
  }
  pool_init(nep_block_pool, (1 << 13), 0, 6, 0,
      "nepblk", ((void *)0));
 }
 val = nep_read(sc, (0x180000 + 0x16020));
 val &= ~(1ULL << 15);
 nep_write(sc, (0x180000 + 0x16020), val);
 strlcpy(ifp->if_xname, sc->sc_dev.dv_xname, sizeof(ifp->if_xname));
 ifp->if_softc = sc;
 ifp->if_flags = 0x2 | 0x800 | 0x8000;
 ifp->if_ioctl = nep_ioctl;
 ifp->if_start = nep_start;
 ifp->if_watchdog = nep_watchdog;
 mii->mii_ifp = ifp;
 mii->mii_readreg = nep_mii_readreg;
 mii->mii_writereg = nep_mii_writereg;
 mii->mii_statchg = nep_mii_statchg;
 ifmedia_init(&sc->sc_mii.mii_media, 0, nep_media_change, nep_media_status);
 mii_attach(&sc->sc_dev, mii, 0xffffffff, -1,
     sc->sc_port ^ 0x3, 0);
 if (((&sc->sc_mii.mii_phys)->lh_first) == ((void *)0)) {
  printf("%s: no PHY found!\n", sc->sc_dev.dv_xname);
  ifmedia_add(&sc->sc_mii.mii_media, 0x0000000000000100ULL|1ULL, 0, ((void *)0));
  ifmedia_set(&sc->sc_mii.mii_media, 0x0000000000000100ULL|1ULL);
 } else
  ifmedia_set(&sc->sc_mii.mii_media, 0x0000000000000100ULL|0ULL);
 if_attach(ifp);
 ether_ifattach(ifp);
 timeout_set(&sc->sc_tick, nep_tick, sc);
 if (sc->sc_port == 0) {
  nep_write(sc, (0xa00000 + 0x00000 + (63) * 0x02000), 0);
  nep_write(sc, (0xb00000 + 0x00000 + (68 - 64) * 0x02000), 0);
 }
}
static const uint8_t nep_promhdr[] = { 0x55, 0xaa };
static const uint8_t nep_promdat[] = {
 'P', 'C', 'I', 'R',
 0x108e & 0xff, 0x108e >> 8,
 0xabcd & 0xff, 0xabcd >> 8
};
int
nep_pci_enaddr(struct nep_softc *sc, struct pci_attach_args *pa)
{
 struct pci_vpd_largeres *res;
 struct pci_vpd *vpd;
 bus_space_handle_t romh;
 bus_space_tag_t romt;
 bus_size_t romsize = 0;
 u_int8_t buf[32], *desc;
 pcireg_t address;
 int dataoff, vpdoff, len;
 int off = 0;
 int rv = -1;
 if (pci_mapreg_map(pa, 0x30, 0x00000000, 0,
     &romt, &romh, 0, &romsize, 0))
  return (-1);
 address = pci_conf_read(pa->pa_pc, pa->pa_tag, 0x30);
 address |= 0x00000001;
 pci_conf_write(pa->pa_pc, pa->pa_tag, 0x30, address);
 while (off < romsize) {
  bus_space_read_region_1(romt, romh, off, buf, sizeof(buf));
  if (__builtin_memcmp((buf), (nep_promhdr), (sizeof(nep_promhdr))))
   goto fail;
  dataoff =
      buf[0x18] | (buf[0x18 + 1] << 8);
  if (dataoff < 0x1c)
   goto fail;
  dataoff += off;
  bus_space_read_region_1(romt, romh, dataoff, buf, sizeof(buf));
  if (__builtin_memcmp((buf), (nep_promdat), (sizeof(nep_promdat))))
   goto fail;
  if (buf[0x14] == 1)
      break;
  len = buf[0x10] | (buf[0x10 + 1] << 8);
  off += len * 512;
 }
 vpdoff = buf[0x08] | (buf[0x08 + 1] << 8);
 if (vpdoff < 0x1c)
  goto fail;
 vpdoff += off;
next:
 bus_space_read_region_1(romt, romh, vpdoff, buf, sizeof(buf));
 if (!((buf[0]) & 0x80))
  goto fail;
 res = (struct pci_vpd_largeres *)buf;
 vpdoff += sizeof(*res);
 len = ((res->vpdres_len_msb << 8) + res->vpdres_len_lsb);
 switch(((res->vpdres_byte0) & 0x7f)) {
 case 0x02:
  vpdoff += len;
  goto next;
 case 0x10:
  while (len > 0) {
   bus_space_read_region_1(romt, romh, vpdoff,
        buf, sizeof(buf));
   vpd = (struct pci_vpd *)buf;
   vpdoff += sizeof(*vpd) + vpd->vpd_len;
   len -= sizeof(*vpd) + vpd->vpd_len;
   if (vpd->vpd_key0 != 'Z')
    continue;
   desc = buf + sizeof(*vpd);
   if (desc[0] != 'I')
    continue;
   desc += 3;
   if (desc[0] != 'B' || desc[1] != 6)
    continue;
   desc += 2;
   if (strcmp(desc, "local-mac-address") != 0)
    continue;
   desc += strlen("local-mac-address") + 1;
   __builtin_memcpy((sc->sc_ac.ac_enaddr), (desc), (6));
   sc->sc_ac.ac_enaddr[5] += pa->pa_function;
   rv = 0;
  }
  break;
 default:
  goto fail;
 }
 fail:
 if (romsize != 0)
  bus_space_unmap(romt, romh, romsize);
 address = pci_conf_read(pa->pa_pc, pa->pa_tag, 0x30);
 address &= ~0x00000001;
 pci_conf_write(pa->pa_pc, pa->pa_tag, 0x30, address);
 return (rv);
}
uint64_t
nep_read(struct nep_softc *sc, uint32_t reg64)
{
 return (bus_space_read_8(sc->sc_memt, sc->sc_memh, reg64));
}
void
nep_write(struct nep_softc *sc, uint32_t reg64, uint64_t value)
{
 bus_space_write_8(sc->sc_memt, sc->sc_memh, reg64, value);
}
int
nep_mii_readreg(struct device *self, int phy, int reg64)
{
 struct nep_softc *sc = (struct nep_softc *)self;
 uint64_t frame;
 int n;
 frame = 0x60020000;
 frame |= (reg64 << 18) | (phy << 23);
 nep_write(sc, (0x180000 + 0x16018), frame);
 for (n = 0; n < 1000; n++) {
  delay(10);
  frame = nep_read(sc, (0x180000 + 0x16018));
  if (frame & (1ULL << 16))
   return (frame & 0xffff);
 }
 printf("%s: %s timeout\n", sc->sc_dev.dv_xname, __func__);
 return (0);
}
void
nep_mii_writereg(struct device *self, int phy, int reg64, int val)
{
 struct nep_softc *sc = (struct nep_softc *)self;
 uint64_t frame;
 int n;
 frame = 0x50020000;
 frame |= (reg64 << 18) | (phy << 23);
 frame |= (val & 0xffff);
 nep_write(sc, (0x180000 + 0x16018), frame);
 for (n = 0; n < 1000; n++) {
  delay(10);
  frame = nep_read(sc, (0x180000 + 0x16018));
  if (frame & (1ULL << 16))
   return;
 }
 printf("%s: %s timeout\n", sc->sc_dev.dv_xname, __func__);
 return;
}
void
nep_mii_statchg(struct device *dev)
{
 struct nep_softc *sc = (struct nep_softc *)dev;
 if (sc->sc_port < 2)
  nep_xmac_mii_statchg(sc);
 else
  nep_bmac_mii_statchg(sc);
}
void
nep_xmac_mii_statchg(struct nep_softc *sc)
{
 struct mii_data *mii = &sc->sc_mii;
 uint64_t val;
 val = nep_read(sc, (0x180000 + 0x00060 + (sc->sc_port) * 0x06000));
 if (((mii->mii_media_active) & 0x00000000000000ffULL) == 6)
  val |= (1ULL << 31);
 else
  val &= ~(1ULL << 31);
 val |= (1ULL << 30);
 val &= ~(3ULL << 27);
 if (((mii->mii_media_active) & 0x00000000000000ffULL) == 16 ||
     ((mii->mii_media_active) & 0x00000000000000ffULL) == 11)
  val |= (1ULL << 27);
 else
  val |= (2ULL << 27);
 val |= (1ULL << 26);
 if (mii->mii_media_active & 0x0000800000000000ULL)
  val |= (1ULL << 25);
 else
  val &= ~(1ULL << 25);
 val |= (1ULL << 24);
 nep_write(sc, (0x180000 + 0x00060 + (sc->sc_port) * 0x06000), val);
}
void
nep_bmac_mii_statchg(struct nep_softc *sc)
{
 struct mii_data *mii = &sc->sc_mii;
 uint64_t val;
 val = nep_read(sc, (0x180000 + 0x0c078 + ((sc->sc_port) - 2) * 0x04000));
 if (((mii->mii_media_active) & 0x00000000000000ffULL) == 6)
  val |= (1ULL << 7);
 else
  val &= (1ULL << 7);
 if (((mii->mii_media_active) & 0x00000000000000ffULL) == 16 ||
     ((mii->mii_media_active) & 0x00000000000000ffULL) == 11)
  val |= (1ULL << 3);
 else
  val &= ~(1ULL << 3);
 if (mii->mii_media_active & 0x0000800000000000ULL)
  val |= (1ULL << 1);
 else
  val &= ~(1ULL << 1);
 val |= (1ULL << 0);
 nep_write(sc, (0x180000 + 0x0c078 + ((sc->sc_port) - 2) * 0x04000), val);
}
int
nep_media_change(struct ifnet *ifp)
{
 struct nep_softc *sc = ifp->if_softc;
 if (((&sc->sc_mii.mii_phys)->lh_first))
  mii_mediachg(&sc->sc_mii);
 return (0);
}
void
nep_media_status(struct ifnet *ifp, struct ifmediareq *ifmr)
{
 struct nep_softc *sc = ifp->if_softc;
 if (((&sc->sc_mii.mii_phys)->lh_first)) {
  mii_pollstat(&sc->sc_mii);
  ifmr->ifm_active = sc->sc_mii.mii_media_active;
  ifmr->ifm_status = sc->sc_mii.mii_media_status;
 }
}
int
nep_intr(void *arg)
{
 struct nep_softc *sc = arg;
 uint64_t sv0, sv1, sv2;
 int rearm = 0;
 sv0 = nep_read(sc, (0x800000 + 0x00000 + (sc->sc_port) * 0x02000));
 sv1 = nep_read(sc, (0x800000 + 0x00008 + (sc->sc_port) * 0x02000));
 sv2 = nep_read(sc, (0x800000 + 0x00010 + (sc->sc_port) * 0x02000));
 if ((sv0 | sv1 | sv2) == 0)
  return (0);
 if (sv0 & (1ULL << (32 + (sc->sc_port)))) {
  nep_tx_proc(sc);
  rearm = 1;
 }
 if (sv0 & (1ULL << (0 + (sc->sc_port)))) {
  nep_rx_proc(sc);
  rearm = 1;
 }
 if (rearm)
  nep_write(sc, (0x800000 + 0x00018 + (sc->sc_port) * 0x02000), (1ULL << 31) | 2);
 else
  printf("%s: %s %llx %llx %llx\n", sc->sc_dev.dv_xname,
      __func__, sv0, sv1, sv2);
 return (1);
}
void
nep_rx_proc(struct nep_softc *sc)
{
 struct ifnet *ifp = &sc->sc_ac.ac_if;
 struct mbuf_list ml = { ((void *)0), ((void *)0), 0 };
 uint64_t val;
 uint16_t count;
 uint16_t pktread = 0, ptrread = 0;
 uint64_t rxd;
 uint64_t addr;
 bus_addr_t page;
 bus_size_t off;
 char *block;
 struct mbuf *m;
 int idx, len, i;
 val = nep_read(sc, (0x600000 + 0x00070 + (sc->sc_port) * 0x00200));
 nep_write(sc, (0x600000 + 0x00070 + (sc->sc_port) * 0x00200),
     (1ULL << 46) | (1ULL << 45));
 bus_dmamap_sync(sc->sc_dmat, ((sc->sc_rcring)->ndm_map), 0,
     ((sc->sc_rcring)->ndm_size), 0x02);
 count = nep_read(sc, (0x600000 + 0x00050 + (sc->sc_port) * 0x00200));
 while (count > 0) {
  idx = sc->sc_rx_cons;
  ((idx < 512) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../dev/pci/if_nep.c", 1002, "idx < NEP_NRCDESC"));
  rxd = (__uint64_t)(__builtin_constant_p(sc->sc_rcdesc[idx]) ? (__uint64_t)((((__uint64_t)(sc->sc_rcdesc[idx]) & 0xff) << 56) | ((__uint64_t)(sc->sc_rcdesc[idx]) & 0xff00ULL) << 40 | ((__uint64_t)(sc->sc_rcdesc[idx]) & 0xff0000ULL) << 24 | ((__uint64_t)(sc->sc_rcdesc[idx]) & 0xff000000ULL) << 8 | ((__uint64_t)(sc->sc_rcdesc[idx]) & 0xff00000000ULL) >> 8 | ((__uint64_t)(sc->sc_rcdesc[idx]) & 0xff0000000000ULL) >> 24 | ((__uint64_t)(sc->sc_rcdesc[idx]) & 0xff000000000000ULL) >> 40 | ((__uint64_t)(sc->sc_rcdesc[idx]) & 0xff00000000000000ULL) >> 56) : __swap64md(sc->sc_rcdesc[idx]));
  addr = (rxd & 0x3fffffffffULL) << 6;
  len = (rxd & (0x3fffULL << 40)) >> 40;
  page = addr & ~((1 << 13) - 1);
  off = addr & ((1 << 13) - 1);
  block = ((void *)0);
  for (i = 0; i < 256; i++) {
   if (sc->sc_rb[i].nb_block &&
       sc->sc_rb[i].nb_map->dm_segs[0].ds_addr == page) {
    block = sc->sc_rb[i].nb_block;
    break;
   }
  }
  if (block == ((void *)0)) {
   m = ((void *)0);
  } else {
   bus_dmamap_unload(sc->sc_dmat, sc->sc_rb[i].nb_map);
   sc->sc_rb[i].nb_block = ((void *)0);
   m = m_gethdr((0x0002), (1));
  }
  if (m == ((void *)0)) {
   ifp->if_data.ifi_ierrors++;
  } else {
   do { (m)->m_hdr.mh_data = (m)->M_dat.MH.MH_dat.MH_ext.ext_buf = (caddr_t)(block + off); (m)->m_hdr.mh_flags |= 0x0001 | (0x0008 & 0x0008); (m)->M_dat.MH.MH_dat.MH_ext.ext_size = ((1 << 13)); (m)->M_dat.MH.MH_dat.MH_ext.ext_free_fn = (nep_mextfree_idx); (m)->M_dat.MH.MH_dat.MH_ext.ext_arg = (block); do { (m)->M_dat.MH.MH_dat.MH_ext.ext_prevref = (m); (m)->M_dat.MH.MH_dat.MH_ext.ext_nextref = (m); ; ; } while ( 0); } while ( 0);
   m->M_dat.MH.MH_pkthdr.len = m->m_hdr.mh_len = len;
   m->m_hdr.mh_data += 2;
   ml_enqueue(&ml, m);
  }
  do { (&sc->sc_rx_ring)->rxr_alive -= (1); } while (0);
  if ((rxd & (1ULL << 63)) == 0) {
   count--;
   pktread++;
  }
  ptrread++;
  sc->sc_rx_cons++;
  if (sc->sc_rx_cons >= 512)
   sc->sc_rx_cons = 0;
 }
 bus_dmamap_sync(sc->sc_dmat, ((sc->sc_rcring)->ndm_map), 0,
     ((sc->sc_rcring)->ndm_size), 0x01);
 if_input(ifp, &ml);
 nep_fill_rx_ring(sc);
 val = pktread | (ptrread << 16);
 val |= (1ULL << 47);
 nep_write(sc, (0x600000 + 0x00070 + (sc->sc_port) * 0x00200), val);
}
void
nep_extfree(caddr_t buf, u_int size, void *arg)
{
 pool_put(nep_block_pool, arg);
}
void
nep_tx_proc(struct nep_softc *sc)
{
 struct ifnet *ifp = &sc->sc_ac.ac_if;
 struct nep_buf *txb;
 uint64_t val;
 uint16_t pkt_cnt, count;
 int idx;
 val = nep_read(sc, (0x600000 + 0x40028 + (sc->sc_port) * 0x00200));
 pkt_cnt = (val & (0xfffULL << 48)) >> 48;
 count = (pkt_cnt - sc->sc_pkt_cnt);
 count &= ((0xfffULL << 48) >> 48);
 sc->sc_pkt_cnt = pkt_cnt;
 while (count > 0) {
  idx = sc->sc_tx_cons;
  ((idx < 256) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../dev/pci/if_nep.c", 1084, "idx < NEP_NTXDESC"));
  txb = &sc->sc_txbuf[idx];
  if (txb->nb_m) {
   bus_dmamap_sync(sc->sc_dmat, txb->nb_map, 0,
       txb->nb_map->dm_mapsize, 0x08);
   bus_dmamap_unload(sc->sc_dmat, txb->nb_map);
   m_freem(txb->nb_m);
   txb->nb_m = ((void *)0);
   count--;
  }
  ifq_clr_oactive(&ifp->if_snd);
  sc->sc_tx_cnt--;
  sc->sc_tx_cons++;
  if (sc->sc_tx_cons >= 256)
   sc->sc_tx_cons = 0;
 }
 if (sc->sc_tx_cnt == 0)
  ifp->if_timer = 0;
}
void
nep_init_ipp(struct nep_softc *sc)
{
 uint64_t val;
 int num_entries;
 int n, i;
 if (sc->sc_port < 2)
  num_entries = 2048;
 else
  num_entries = 1024;
 for (i = 0; i < num_entries; i++)
  nep_ipp_clear_dfifo(sc, i);
 (void)nep_read(sc, (0x280000 + 0x00040 + (((sc->sc_port & 0x1) << 1) | (sc->sc_port & 0x2) >> 1) * 0x04000));
 (void)nep_read(sc, (0x280000 + 0x00040 + (((sc->sc_port & 0x1) << 1) | (sc->sc_port & 0x2) >> 1) * 0x04000));
 val = nep_read(sc, (0x280000 + 0x00000 + (((sc->sc_port & 0x1) << 1) | (sc->sc_port & 0x2) >> 1) * 0x04000));
 val |= (1ULL << 31);
 nep_write(sc, (0x280000 + 0x00000 + (((sc->sc_port & 0x1) << 1) | (sc->sc_port & 0x2) >> 1) * 0x04000), val);
 n = 1000;
 while (--n) {
  val = nep_read(sc, (0x280000 + 0x00000 + (((sc->sc_port & 0x1) << 1) | (sc->sc_port & 0x2) >> 1) * 0x04000));
  if ((val & (1ULL << 31)) == 0)
   break;
 }
 if (n == 0)
  printf("timeout resetting IPP\n");
 val = nep_read(sc, (0x280000 + 0x00000 + (((sc->sc_port & 0x1) << 1) | (sc->sc_port & 0x2) >> 1) * 0x04000));
 val |= (1ULL << 0);
 nep_write(sc, (0x280000 + 0x00000 + (((sc->sc_port & 0x1) << 1) | (sc->sc_port & 0x2) >> 1) * 0x04000), val);
 nep_write(sc, (0x280000 + 0x00048 + (((sc->sc_port & 0x1) << 1) | (sc->sc_port & 0x2) >> 1) * 0x04000), 0);
}
void
nep_ipp_clear_dfifo(struct nep_softc *sc, uint64_t addr)
{
 uint64_t val;
 val = nep_read(sc, (0x280000 + 0x00000 + (((sc->sc_port & 0x1) << 1) | (sc->sc_port & 0x2) >> 1) * 0x04000));
 val |= (1ULL << 5);
 nep_write(sc, (0x280000 + 0x00000 + (((sc->sc_port & 0x1) << 1) | (sc->sc_port & 0x2) >> 1) * 0x04000), val);
 nep_write(sc, (0x280000 + 0x00118 + (((sc->sc_port & 0x1) << 1) | (sc->sc_port & 0x2) >> 1) * 0x04000), addr);
 nep_write(sc, (0x280000 + 0x000e8 + (((sc->sc_port & 0x1) << 1) | (sc->sc_port & 0x2) >> 1) * 0x04000), 0);
 nep_write(sc, (0x280000 + 0x000f0 + (((sc->sc_port & 0x1) << 1) | (sc->sc_port & 0x2) >> 1) * 0x04000), 0);
 nep_write(sc, (0x280000 + 0x000f8 + (((sc->sc_port & 0x1) << 1) | (sc->sc_port & 0x2) >> 1) * 0x04000), 0);
 nep_write(sc, (0x280000 + 0x00100 + (((sc->sc_port & 0x1) << 1) | (sc->sc_port & 0x2) >> 1) * 0x04000), 0);
 nep_write(sc, (0x280000 + 0x00108 + (((sc->sc_port & 0x1) << 1) | (sc->sc_port & 0x2) >> 1) * 0x04000), 0);
 val &= ~(1ULL << 5);
 nep_write(sc, (0x280000 + 0x00000 + (((sc->sc_port & 0x1) << 1) | (sc->sc_port & 0x2) >> 1) * 0x04000), val);
 nep_write(sc, (0x280000 + 0x00110 + (((sc->sc_port & 0x1) << 1) | (sc->sc_port & 0x2) >> 1) * 0x04000), addr);
 (void)nep_read(sc, (0x280000 + 0x000c0 + (((sc->sc_port & 0x1) << 1) | (sc->sc_port & 0x2) >> 1) * 0x04000));
 (void)nep_read(sc, (0x280000 + 0x000c8 + (((sc->sc_port & 0x1) << 1) | (sc->sc_port & 0x2) >> 1) * 0x04000));
 (void)nep_read(sc, (0x280000 + 0x000d0 + (((sc->sc_port & 0x1) << 1) | (sc->sc_port & 0x2) >> 1) * 0x04000));
 (void)nep_read(sc, (0x280000 + 0x000d8 + (((sc->sc_port & 0x1) << 1) | (sc->sc_port & 0x2) >> 1) * 0x04000));
 (void)nep_read(sc, (0x280000 + 0x000e0 + (((sc->sc_port & 0x1) << 1) | (sc->sc_port & 0x2) >> 1) * 0x04000));
}
void
nep_init_rx_mac(struct nep_softc *sc)
{
 if (sc->sc_port < 2)
  nep_init_rx_xmac(sc);
 else
  nep_init_rx_bmac(sc);
}
void
nep_init_rx_xmac(struct nep_softc *sc)
{
 uint64_t addr0, addr1, addr2;
 uint64_t val;
 int n, i;
 nep_write(sc, (0x180000 + 0x00008 + (sc->sc_port) * 0x06000),
     (1ULL << 1) | (1ULL << 0));
 n = 1000;
 while (--n) {
  val = nep_read(sc, (0x180000 + 0x00008 + (sc->sc_port) * 0x06000));
  if ((val & ((1ULL << 1) |
      (1ULL << 0))) == 0)
   break;
 }
 if (n == 0)
  printf("timeout resetting Rx MAC\n");
 addr0 = (sc->sc_ac.ac_enaddr[4] << 8) | sc->sc_ac.ac_enaddr[5];
 addr1 = (sc->sc_ac.ac_enaddr[2] << 8) | sc->sc_ac.ac_enaddr[3];
 addr2 = (sc->sc_ac.ac_enaddr[0] << 8) | sc->sc_ac.ac_enaddr[1];
 nep_write(sc, (0x180000 + 0x000a0 + (sc->sc_port) * 0x06000), addr0);
 nep_write(sc, (0x180000 + 0x000a8 + (sc->sc_port) * 0x06000), addr1);
 nep_write(sc, (0x180000 + 0x000b0 + (sc->sc_port) * 0x06000), addr2);
 nep_write(sc, (0x180000 + 0x00208 + (sc->sc_port) * 0x06000), 0);
 nep_write(sc, (0x180000 + 0x00818 + (sc->sc_port) * 0x06000), 0);
 nep_write(sc, (0x180000 + 0x00820 + (sc->sc_port) * 0x06000), 0);
 nep_write(sc, (0x180000 + 0x00828 + (sc->sc_port) * 0x06000), 0);
 nep_write(sc, (0x180000 + 0x00830 + (sc->sc_port) * 0x06000), 0);
 nep_write(sc, (0x180000 + 0x00838 + (sc->sc_port) * 0x06000), 0);
 for (i = 0; i < 16; i++)
  nep_write(sc, ((0x180000 + 0x00840 + (sc->sc_port) * 0x06000) + (i) * 0x00008), 0);
 for (i = 0; i < 20; i++)
  nep_write(sc, ((0x180000 + 0x00900 + (sc->sc_port) * 0x06000) + (i) * 0x00008), sc->sc_port);
}
void
nep_init_rx_bmac(struct nep_softc *sc)
{
 uint64_t addr0, addr1, addr2;
 uint64_t val;
 int n, i;
 nep_write(sc, (0x180000 + 0x0c008 + ((sc->sc_port) - 2) * 0x04000), (1ULL << 0));
 n = 1000;
 while (--n) {
  val = nep_read(sc, (0x180000 + 0x0c008 + ((sc->sc_port) - 2) * 0x04000));
  if ((val & (1ULL << 0)) == 0)
   break;
 }
 if (n == 0)
  printf("timeout resetting Rx MAC\n");
 val = nep_read(sc, (0x180000 + 0x0c068 + ((sc->sc_port) - 2) * 0x04000));
 val &= ~(1ULL << 7);
 val &= ~(1ULL << 3);
 val &= ~(1ULL << 4);
 val &= ~(1ULL << 6);
 val &= ~(1ULL << 5);
 val &= ~(1ULL << 2);
 val &= ~(1ULL << 1);
 val &= ~(1ULL << 0);
 nep_write(sc, (0x180000 + 0x0c068 + ((sc->sc_port) - 2) * 0x04000), val);
 addr0 = (sc->sc_ac.ac_enaddr[4] << 8) | sc->sc_ac.ac_enaddr[5];
 addr1 = (sc->sc_ac.ac_enaddr[2] << 8) | sc->sc_ac.ac_enaddr[3];
 addr2 = (sc->sc_ac.ac_enaddr[0] << 8) | sc->sc_ac.ac_enaddr[1];
 nep_write(sc, (0x180000 + 0x0c100 + ((sc->sc_port) - 2) * 0x04000), addr0);
 nep_write(sc, (0x180000 + 0x0c108 + ((sc->sc_port) - 2) * 0x04000), addr1);
 nep_write(sc, (0x180000 + 0x0c110 + ((sc->sc_port) - 2) * 0x04000), addr2);
 nep_write(sc, (0x180000 + 0x0c3f8 + ((sc->sc_port) - 2) * 0x04000), 1);
 nep_write(sc, (0x180000 + 0x0c298 + ((sc->sc_port) - 2) * 0x04000), 0);
 nep_write(sc, (0x180000 + 0x0c2a0 + ((sc->sc_port) - 2) * 0x04000), 0);
 nep_write(sc, (0x180000 + 0x0c2a8 + ((sc->sc_port) - 2) * 0x04000), 0);
 nep_write(sc, (0x180000 + 0x0c2b0 + ((sc->sc_port) - 2) * 0x04000), 0);
 nep_write(sc, (0x180000 + 0x0c2b8 + ((sc->sc_port) - 2) * 0x04000), 0);
 for (i = 0; i < 16; i++)
  nep_write(sc, ((0x180000 + 0x0c2c0 + ((sc->sc_port) - 2) * 0x04000) + (i) * 0x00008), 0);
 for (i = 0; i < 9; i++)
  nep_write(sc, ((0x180000 + 0x0c400 + ((sc->sc_port) - 2) * 0x04000) + (i) * 0x00008), sc->sc_port);
}
void
nep_init_rx_channel(struct nep_softc *sc, int chan)
{
 uint64_t val;
 int i, n;
 val = nep_read(sc, (0x600000 + 0x00000 + (chan) * 0x00200));
 val &= ~(1ULL << 31);
 val |= (1ULL << 30);
 nep_write(sc, (0x600000 + 0x00000 + (chan) * 0x00200), (1ULL << 30));
 n = 1000;
 while (--n) {
  val = nep_read(sc, (0x600000 + 0x00000 + (chan) * 0x00200));
  if ((val & (1ULL << 30)) == 0)
   break;
 }
 if (n == 0)
  printf("timeout resetting Rx DMA\n");
 nep_write(sc, (0x680000 + 0x20008 + (chan) * 0x00040), 0);
 nep_write(sc, (0x680000 + 0x20010 + (chan) * 0x00040), 0);
 nep_write(sc, (0x680000 + 0x20018 + (chan) * 0x00040), 0);
 nep_write(sc, (0x680000 + 0x20020 + (chan) * 0x00040), 0);
 nep_write(sc, (0x680000 + 0x20028 + (chan) * 0x00040), 0);
 nep_write(sc, (0x680000 + 0x20030 + (chan) * 0x00040), 0);
 nep_write(sc, (0x680000 + 0x20038 + (chan) * 0x00040), 0);
 nep_write(sc, (0x680000 + 0x20000 + (chan) * 0x00040),
     (sc->sc_port << 2) |
     (1ULL << 0) | (1ULL << 1));
 nep_write(sc, (0x600000 + 0x00068 + (chan) * 0x00200), (1ULL << 3));
 nep_write(sc, (0x600000 + 0x00070 + (chan) * 0x00200), (1ULL << 47));
 val = ((sc->sc_rxmbox)->ndm_map->dm_segs[0].ds_addr) >> 32;
 nep_write(sc, (0x600000 + 0x00000 + (chan) * 0x00200), val);
 val = ((sc->sc_rxmbox)->ndm_map->dm_segs[0].ds_addr) & 0xffffffc0;
 nep_write(sc, (0x600000 + 0x00008 + (chan) * 0x00200), val);
 val = ((sc->sc_rbring)->ndm_map->dm_segs[0].ds_addr);
 val |= (uint64_t)256 << 48;
 nep_write(sc, (0x600000 + 0x00010 + (chan) * 0x00200), val);
 val = (1ULL << 24);
 val |= (3ULL << 8) | (1ULL << 15);
 nep_write(sc, (0x600000 + 0x00018 + (chan) * 0x00200), val);
 nep_write(sc, (0x600000 + 0x00020 + (chan) * 0x00200), 0);
 val = ((sc->sc_rcring)->ndm_map->dm_segs[0].ds_addr);
 val |= (uint64_t)512 << 48;
 nep_write(sc, (0x600000 + 0x00040 + (chan) * 0x00200), val);
 val = 8 | (1ULL << 15);
 val |= (16 << 16);
 nep_write(sc, (0x600000 + 0x00048 + (chan) * 0x00200), val);
 nep_write(sc, ((0x680000 + 0x00008) + (sc->sc_port) * 0x00008), chan);
 for (i = 0; i < 16; i++)
  nep_write(sc, (0x580000 + 0x10000 + (sc->sc_port * 16 + i) * 0x00008), chan);
}
void
nep_init_tx_mac(struct nep_softc *sc)
{
 if (sc->sc_port < 2)
  nep_init_tx_xmac(sc);
 else
  nep_init_tx_bmac(sc);
}
void
nep_init_tx_xmac(struct nep_softc *sc)
{
 uint64_t val;
 int n;
 nep_write(sc, (0x180000 + 0x00000 + (sc->sc_port) * 0x06000),
     (1ULL << 1) | (1ULL << 0));
 n = 1000;
 while (--n) {
  val = nep_read(sc, (0x180000 + 0x00000 + (sc->sc_port) * 0x06000));
  if ((val & ((1ULL << 1) |
      (1ULL << 0))) == 0)
   break;
 }
 if (n == 0)
  printf("timeout resetting Tx MAC\n");
 val = nep_read(sc, (0x180000 + 0x00060 + (sc->sc_port) * 0x06000));
 val &= ~(1ULL << 3);
 val &= ~(1ULL << 2);
 val &= ~(1ULL << 1);
 val &= ~(1ULL << 0);
 nep_write(sc, (0x180000 + 0x00060 + (sc->sc_port) * 0x06000), val);
 val = nep_read(sc, (0x180000 + 0x00080 + (sc->sc_port) * 0x06000));
 val &= ~(0xffULL << 8);
 val |= (10ULL << 8);
 val &= ~(0x07ULL << 0);
 val |= (3ULL << 0);
 nep_write(sc, (0x180000 + 0x00080 + (sc->sc_port) * 0x06000), val);
 val = nep_read(sc, (0x180000 + 0x00088 + (sc->sc_port) * 0x06000));
 val &= ~(0x3ffULL << 20);
 val &= ~(0x3ffULL << 0);
 val |= (64 << 20);
 val |= (64 << 0);
 nep_write(sc, (0x180000 + 0x00088 + (sc->sc_port) * 0x06000), val);
 nep_write(sc, (0x180000 + 0x00090 + (sc->sc_port) * 0x06000), 1518);
 nep_write(sc, (0x180000 + 0x00170 + (sc->sc_port) * 0x06000), 0);
 nep_write(sc, (0x180000 + 0x00178 + (sc->sc_port) * 0x06000), 0);
}
void
nep_init_tx_bmac(struct nep_softc *sc)
{
 uint64_t val;
 int n;
 nep_write(sc, (0x180000 + 0x0c000 + ((sc->sc_port) - 2) * 0x04000), (1ULL << 0));
 n = 1000;
 while (--n) {
  val = nep_read(sc, (0x180000 + 0x0c000 + ((sc->sc_port) - 2) * 0x04000));
  if ((val & (1ULL << 0)) == 0)
   break;
 }
 if (n == 0)
  printf("timeout resetting Tx MAC\n");
 nep_write(sc, (0x180000 + 0x0c0a0 + ((sc->sc_port) - 2) * 0x04000), 0x40);
 nep_write(sc, (0x180000 + 0x0c0a8 + ((sc->sc_port) - 2) * 0x04000), 1518 |
     (1518 << 16));
 nep_write(sc, (0x180000 + 0x0c0b8 + ((sc->sc_port) - 2) * 0x04000), 0x8808);
 nep_write(sc, (0x180000 + 0x0c0b0 + ((sc->sc_port) - 2) * 0x04000), 0x7);
}
void
nep_init_tx_channel(struct nep_softc *sc, int chan)
{
 uint64_t val;
 int n;
 val = nep_read(sc, (0x780000 + 0x20000));
 val |= (1ULL << 4);
 val |= (1ULL << sc->sc_port);
 nep_write(sc, (0x780000 + 0x20000), val);
 nep_write(sc, (0x780000 + 0x20028 + (sc->sc_port) * 0x00100), 1ULL << chan);
 val = nep_read(sc, (0x780000 + 0x20430));
 val &= ~(0x3fULL << ((sc->sc_port) * 8));
 nep_write(sc, (0x780000 + 0x20430), val);
 val = nep_read(sc, (0x600000 + 0x40028 + (chan) * 0x00200));
 val |= (1ULL << 31);
 nep_write(sc, (0x600000 + 0x40028 + (chan) * 0x00200), val);
 n = 1000;
 while (--n) {
  val = nep_read(sc, (0x600000 + 0x40028 + (chan) * 0x00200));
  if ((val & (1ULL << 31)) == 0)
   break;
 }
 if (n == 0)
  printf("timeout resetting Tx DMA\n");
 nep_write(sc, (0x680000 + 0x40008 + (chan) * 0x00200), 0);
 nep_write(sc, (0x680000 + 0x40010 + (chan) * 0x00200), 0);
 nep_write(sc, (0x680000 + 0x40018 + (chan) * 0x00200), 0);
 nep_write(sc, (0x680000 + 0x40020 + (chan) * 0x00200), 0);
 nep_write(sc, (0x680000 + 0x40028 + (chan) * 0x00200), 0);
 nep_write(sc, (0x680000 + 0x40030 + (chan) * 0x00200), 0);
 nep_write(sc, (0x680000 + 0x40038 + (chan) * 0x00200), 0);
 nep_write(sc, (0x680000 + 0x40000 + (chan) * 0x00200),
     (sc->sc_port << 2) |
     (1ULL << 0) | (1ULL << 1));
 nep_write(sc, (0x600000 + 0x40018 + (chan) * 0x00200), 0);
 nep_write(sc, (0x780000 + 0x00000 + (chan) * 0x01000), 1518 + 64);
 nep_write(sc, (0x600000 + 0x40020 + (chan) * 0x00200), 0);
 val = ((sc->sc_txring)->ndm_map->dm_segs[0].ds_addr);
 val |= (((sc->sc_txring)->ndm_size) / 64) << 48;
 nep_write(sc, (0x600000 + 0x40000 + (chan) * 0x00200), val);
 nep_write(sc, (0x600000 + 0x40028 + (chan) * 0x00200), 0);
}
void
nep_enable_rx_mac(struct nep_softc *sc)
{
 struct ifnet *ifp = &sc->sc_ac.ac_if;
 uint64_t val;
 if (sc->sc_port < 2) {
  val = nep_read(sc, (0x180000 + 0x00060 + (sc->sc_port) * 0x06000));
  val &= ~(1ULL << 9);
  val &= ~(1ULL << 10);
  val &= ~(1ULL << 15);
  if (ifp->if_flags & 0x100)
   val |= (1ULL << 9);
  if (ifp->if_flags & 0x200)
   val |= (1ULL << 10);
  else
   val |= (1ULL << 15);
  val |= (1ULL << 8);
  nep_write(sc, (0x180000 + 0x00060 + (sc->sc_port) * 0x06000), val);
 } else {
  val = nep_read(sc, (0x180000 + 0x0c068 + ((sc->sc_port) - 2) * 0x04000));
  val &= ~(1ULL << 3);
  val &= ~(1ULL << 4);
  val &= ~(1ULL << 5);
  if (ifp->if_flags & 0x100)
   val |= (1ULL << 3);
  if (ifp->if_flags & 0x200)
   val |= (1ULL << 4);
  else
   val |= (1ULL << 5);
  val |= (1ULL << 0);
  nep_write(sc, (0x180000 + 0x0c068 + ((sc->sc_port) - 2) * 0x04000), val);
 }
}
void
nep_disable_rx_mac(struct nep_softc *sc)
{
 uint64_t val;
 if (sc->sc_port < 2) {
  val = nep_read(sc, (0x180000 + 0x00060 + (sc->sc_port) * 0x06000));
  val &= ~(1ULL << 8);
  nep_write(sc, (0x180000 + 0x00060 + (sc->sc_port) * 0x06000), val);
 } else {
  val = nep_read(sc, (0x180000 + 0x0c068 + ((sc->sc_port) - 2) * 0x04000));
  val &= ~(1ULL << 0);
  nep_write(sc, (0x180000 + 0x0c068 + ((sc->sc_port) - 2) * 0x04000), val);
 }
}
void
nep_stop_dma(struct nep_softc *sc)
{
 uint64_t val;
 int n;
 val = nep_read(sc, (0x600000 + 0x40028 + (sc->sc_port) * 0x00200));
 val |= (1ULL << 28);
 nep_write(sc, (0x600000 + 0x40028 + (sc->sc_port) * 0x00200), val);
 n = 1000;
 while (--n) {
  val = nep_read(sc, (0x600000 + 0x40028 + (sc->sc_port) * 0x00200));
  if (val & (1ULL << 27))
   break;
 }
 if (n == 0)
  printf("timeout stopping Tx DMA\n");
 val = nep_read(sc, (0x600000 + 0x00000 + (sc->sc_port) * 0x00200));
 val &= ~(1ULL << 31);
 nep_write(sc, (0x600000 + 0x00000 + (sc->sc_port) * 0x00200), val);
 n = 1000;
 while (--n) {
  val = nep_read(sc, (0x600000 + 0x00000 + (sc->sc_port) * 0x00200));
  if (val & (1ULL << 29))
   break;
 }
 if (n == 0)
  printf("timeout stopping Rx DMA\n");
}
void
nep_up(struct nep_softc *sc)
{
 struct ifnet *ifp = &sc->sc_ac.ac_if;
 struct nep_block *rb;
 struct nep_buf *txb;
 uint64_t val;
 int i, n;
 sc->sc_rbring = nep_dmamem_alloc(sc, 256 * sizeof(uint32_t));
 if (sc->sc_rbring == ((void *)0))
  return;
 sc->sc_rbdesc = ((void *)(sc->sc_rbring)->ndm_kva);;
 sc->sc_rb = malloc(sizeof(struct nep_block) * 256,
     2, 0x0001);
 for (i = 0; i < 256; i++) {
  rb = &sc->sc_rb[i];
  bus_dmamap_create(sc->sc_dmat, (1 << 13), 1, (1 << 13), 0,
      0x0000, &rb->nb_map);
  rb->nb_block = ((void *)0);
 }
 sc->sc_rx_prod = 0;
 if_rxr_init(&sc->sc_rx_ring, 16, 256);
 sc->sc_rcring = nep_dmamem_alloc(sc, 512 * sizeof(uint64_t));
 if (sc->sc_rcring == ((void *)0))
  goto free_rbring;
 sc->sc_rcdesc = ((void *)(sc->sc_rcring)->ndm_kva);;
 sc->sc_rx_cons = 0;
 sc->sc_rxmbox = nep_dmamem_alloc(sc, 64);
 if (sc->sc_rxmbox == ((void *)0))
  goto free_rcring;
 sc->sc_txring = nep_dmamem_alloc(sc, 256 * sizeof(uint64_t));
 if (sc->sc_txring == ((void *)0))
  goto free_rxmbox;
 sc->sc_txdesc = ((void *)(sc->sc_txring)->ndm_kva);;
 sc->sc_txbuf = malloc(sizeof(struct nep_buf) * 256,
     2, 0x0001);
 for (i = 0; i < 256; i++) {
  txb = &sc->sc_txbuf[i];
  bus_dmamap_create(sc->sc_dmat, (1 << 11), 15,
      (1 << 11), 0, 0x0000, &txb->nb_map);
  txb->nb_m = ((void *)0);
 }
 sc->sc_tx_prod = sc->sc_tx_cons = 0;
 sc->sc_tx_cnt = 0;
 sc->sc_wrap = 0;
 sc->sc_pkt_cnt = 0;
 if (sc->sc_port < 2) {
  val = nep_read(sc, (0x180000 + 0x00060 + (sc->sc_port) * 0x06000));
  val &= ~(1ULL << 23);
  nep_write(sc, (0x180000 + 0x00060 + (sc->sc_port) * 0x06000), val);
 }
 nep_write(sc, (0x180000 + 0x040a0 + ((sc->sc_port < 2) ? ((sc->sc_port) * 0x06000) : (0x02000 + (sc->sc_port) * 0x4000))), (1ULL << 1));
 val = nep_read(sc, (0x180000 + 0x04000 + ((sc->sc_port < 2) ? ((sc->sc_port) * 0x06000) : (0x02000 + (sc->sc_port) * 0x4000))));
 val |= (1ULL << 15);
 nep_write(sc, (0x180000 + 0x04000 + ((sc->sc_port < 2) ? ((sc->sc_port) * 0x06000) : (0x02000 + (sc->sc_port) * 0x4000))), val);
 n = 1000;
 while (--n) {
  val = nep_read(sc, (0x180000 + 0x04000 + ((sc->sc_port < 2) ? ((sc->sc_port) * 0x06000) : (0x02000 + (sc->sc_port) * 0x4000))));
  if ((val & (1ULL << 15)) == 0)
   break;
 }
 if (n == 0)
  printf("timeout resetting PCS\n");
 nep_init_rx_mac(sc);
 nep_init_rx_channel(sc, sc->sc_port);
 nep_init_ipp(sc);
 nep_init_tx_mac(sc);
 nep_init_tx_channel(sc, sc->sc_port);
 nep_fill_rx_ring(sc);
 nep_enable_rx_mac(sc);
 if (sc->sc_port < 2) {
  val = nep_read(sc, (0x180000 + 0x00060 + (sc->sc_port) * 0x06000));
  val |= (1ULL << 0);
  nep_write(sc, (0x180000 + 0x00060 + (sc->sc_port) * 0x06000), val);
 } else {
  val = nep_read(sc, (0x180000 + 0x0c060 + ((sc->sc_port) - 2) * 0x04000));
  val |= (1ULL << 0);
  nep_write(sc, (0x180000 + 0x0c060 + ((sc->sc_port) - 2) * 0x04000), val);
 }
 val = nep_read(sc, (0x600000 + 0x00000 + (sc->sc_port) * 0x00200));
 val |= (1ULL << 31);
 nep_write(sc, (0x600000 + 0x00000 + (sc->sc_port) * 0x00200), val);
 ifp->if_flags |= 0x40;
 ifq_clr_oactive(&ifp->if_snd);
 ifp->if_timer = 0;
 nep_write(sc, (0xb00000 + 0x00000 + ((64 + (sc->sc_port)) - 64) * 0x02000), 0);
 nep_write(sc, (0xa00000 + 0x00000 + ((0 + (sc->sc_port))) * 0x02000), 0);
 nep_write(sc, (0xa00000 + 0x00000 + ((32 + (sc->sc_port))) * 0x02000), 0);
 nep_write(sc, (0x800000 + 0x00018 + (sc->sc_port) * 0x02000), (1ULL << 31) | 2);
 timeout_add_sec(&sc->sc_tick, 1);
 return;
free_rxmbox:
 nep_dmamem_free(sc, sc->sc_rxmbox);
free_rcring:
 nep_dmamem_free(sc, sc->sc_rcring);
free_rbring:
 nep_dmamem_free(sc, sc->sc_rbring);
}
void
nep_down(struct nep_softc *sc)
{
 struct ifnet *ifp = &sc->sc_ac.ac_if;
 struct nep_buf *txb;
 struct nep_block *rb;
 uint64_t val;
 int i;
 timeout_del(&sc->sc_tick);
 nep_write(sc, (0xb00000 + 0x00000 + ((64 + (sc->sc_port)) - 64) * 0x02000), 1);
 nep_write(sc, (0xa00000 + 0x00000 + ((0 + (sc->sc_port))) * 0x02000), 1);
 nep_write(sc, (0xa00000 + 0x00000 + ((32 + (sc->sc_port))) * 0x02000), 1);
 ifp->if_flags &= ~0x40;
 ifq_clr_oactive(&ifp->if_snd);
 ifp->if_timer = 0;
 nep_disable_rx_mac(sc);
 val = nep_read(sc, (0x280000 + 0x00000 + (((sc->sc_port & 0x1) << 1) | (sc->sc_port & 0x2) >> 1) * 0x04000));
 val &= ~(1ULL << 0);
 nep_write(sc, (0x280000 + 0x00000 + (((sc->sc_port & 0x1) << 1) | (sc->sc_port & 0x2) >> 1) * 0x04000), val);
 nep_stop_dma(sc);
 for (i = 0; i < 256; i++) {
  txb = &sc->sc_txbuf[i];
  if (txb->nb_m) {
   bus_dmamap_sync(sc->sc_dmat, txb->nb_map, 0,
       txb->nb_map->dm_mapsize, 0x08);
   bus_dmamap_unload(sc->sc_dmat, txb->nb_map);
   m_freem(txb->nb_m);
  }
  bus_dmamap_destroy(sc->sc_dmat, txb->nb_map);
 }
 nep_dmamem_free(sc, sc->sc_txring);
 free(sc->sc_txbuf, 2, sizeof(struct nep_buf) * 256);
 nep_dmamem_free(sc, sc->sc_rxmbox);
 nep_dmamem_free(sc, sc->sc_rcring);
 for (i = 0; i < 256; i++) {
  rb = &sc->sc_rb[i];
  if (rb->nb_block) {
   bus_dmamap_sync(sc->sc_dmat, rb->nb_map, 0,
       rb->nb_map->dm_mapsize, 0x02);
   bus_dmamap_unload(sc->sc_dmat, rb->nb_map);
   pool_put(nep_block_pool, rb->nb_block);
  }
  bus_dmamap_destroy(sc->sc_dmat, rb->nb_map);
 }
 nep_dmamem_free(sc, sc->sc_rbring);
 free(sc->sc_rb, 2, sizeof(struct nep_block) * 256);
}
void
nep_iff(struct nep_softc *sc)
{
 struct arpcom *ac = &sc->sc_ac;
 struct ifnet *ifp = &sc->sc_ac.ac_if;
 struct ether_multi *enm;
 struct ether_multistep step;
 uint32_t crc, hash[16];
 int i;
 nep_disable_rx_mac(sc);
 ifp->if_flags &= ~0x200;
 __builtin_memset((hash), (0), (sizeof(hash)));
 if (ifp->if_flags & 0x100 || ac->ac_multirangecnt > 0) {
  ifp->if_flags |= 0x200;
 } else {
  do { (step).e_enm = ((&(ac)->ac_multiaddrs)->lh_first); do { if ((((enm)) = ((step)).e_enm) != ((void *)0)) ((step)).e_enm = ((((enm)))->enm_list.le_next); } while ( 0); } while ( 0);
  while (enm != ((void *)0)) {
                        crc = ether_crc32_le(enm->enm_addrlo,
                            6);
                        crc >>= 24;
                        hash[crc >> 4] |= 1 << (15 - (crc & 15));
   do { if (((enm) = (step).e_enm) != ((void *)0)) (step).e_enm = (((enm))->enm_list.le_next); } while ( 0);
  }
 }
 for (i = 0; i < (sizeof((hash)) / sizeof((hash)[0])); i++) {
  if (sc->sc_port < 2)
   nep_write(sc, ((0x180000 + 0x00840 + (sc->sc_port) * 0x06000) + (i) * 0x00008), hash[i]);
  else
   nep_write(sc, ((0x180000 + 0x0c2c0 + ((sc->sc_port) - 2) * 0x04000) + (i) * 0x00008), hash[i]);
 }
 nep_enable_rx_mac(sc);
}
int
nep_encap(struct nep_softc *sc, struct mbuf **m0, int *idx)
{
 struct mbuf *m = *m0;
 struct nep_txbuf_hdr *nh;
 uint64_t txd;
 bus_dmamap_t map;
 int cur, frag, i;
 int len, pad;
 int err;
 if (m->M_dat.MH.MH_pkthdr.len < (64 - 4)) {
  struct mbuf *n;
  int padlen;
  padlen = (64 - 4) - m->M_dat.MH.MH_pkthdr.len;
  n = m_get((0x0002), (1));
  if (n == ((void *)0)) {
   m_freem(m);
   return (55);
  }
  __builtin_memset((((caddr_t)((n)->m_hdr.mh_data))), (0), (padlen));
  n->m_hdr.mh_len = padlen;
  m_cat(m, n);
  m->M_dat.MH.MH_pkthdr.len += padlen;
 }
 if (m_leadingspace(m) < 16)
  pad = 0;
 else
  pad = ((u_long)((m)->m_hdr.mh_data)) % 16;
 len = m->M_dat.MH.MH_pkthdr.len + pad;
 (m) = m_prepend((m), (sizeof(*nh) + pad), (0x0002));
 if (m == ((void *)0))
  return (55);
 nh = ((struct nep_txbuf_hdr *)((m)->m_hdr.mh_data));
 nh->nh_flags = (__uint64_t)(__builtin_constant_p((len << 16) | (pad / 2)) ? (__uint64_t)((((__uint64_t)((len << 16) | (pad / 2)) & 0xff) << 56) | ((__uint64_t)((len << 16) | (pad / 2)) & 0xff00ULL) << 40 | ((__uint64_t)((len << 16) | (pad / 2)) & 0xff0000ULL) << 24 | ((__uint64_t)((len << 16) | (pad / 2)) & 0xff000000ULL) << 8 | ((__uint64_t)((len << 16) | (pad / 2)) & 0xff00000000ULL) >> 8 | ((__uint64_t)((len << 16) | (pad / 2)) & 0xff0000000000ULL) >> 24 | ((__uint64_t)((len << 16) | (pad / 2)) & 0xff000000000000ULL) >> 40 | ((__uint64_t)((len << 16) | (pad / 2)) & 0xff00000000000000ULL) >> 56) : __swap64md((len << 16) | (pad / 2)));
 nh->nh_reserved = 0;
 cur = frag = *idx;
 map = sc->sc_txbuf[cur].nb_map;
 err = bus_dmamap_load_mbuf(sc->sc_dmat, map, m, 0x0001);
 if (err) {
  m_freem(m);
  return (55);
 }
 bus_dmamap_sync(sc->sc_dmat, map, 0, map->dm_mapsize,
     0x04);
 txd = (1ULL << 63) | (1ULL << 62);
 txd |= ((uint64_t)map->dm_nsegs << 58);
 for (i = 0; i < map->dm_nsegs; i++) {
  txd |= ((uint64_t)map->dm_segs[i].ds_len << 44);
  txd |= map->dm_segs[i].ds_addr;
  sc->sc_txdesc[frag] = (__uint64_t)(__builtin_constant_p(txd) ? (__uint64_t)((((__uint64_t)(txd) & 0xff) << 56) | ((__uint64_t)(txd) & 0xff00ULL) << 40 | ((__uint64_t)(txd) & 0xff0000ULL) << 24 | ((__uint64_t)(txd) & 0xff000000ULL) << 8 | ((__uint64_t)(txd) & 0xff00000000ULL) >> 8 | ((__uint64_t)(txd) & 0xff0000000000ULL) >> 24 | ((__uint64_t)(txd) & 0xff000000000000ULL) >> 40 | ((__uint64_t)(txd) & 0xff00000000000000ULL) >> 56) : __swap64md(txd));
  txd = 0;
  bus_dmamap_sync(sc->sc_dmat, ((sc->sc_txring)->ndm_map),
      frag * sizeof(txd), sizeof(txd), 0x04);
  cur = frag++;
  if (frag >= 256)
   frag = 0;
  ((frag != sc->sc_tx_cons) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../dev/pci/if_nep.c", 1846, "frag != sc->sc_tx_cons"));
 }
 ((sc->sc_txbuf[cur].nb_m == ((void *)0)) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../dev/pci/if_nep.c", 1849, "sc->sc_txbuf[cur].nb_m == NULL"));
 sc->sc_txbuf[*idx].nb_map = sc->sc_txbuf[cur].nb_map;
 sc->sc_txbuf[cur].nb_map = map;
 sc->sc_txbuf[cur].nb_m = m;
 if (frag < *idx)
  sc->sc_wrap ^= (1ULL << 19);
 nep_write(sc, (0x600000 + 0x40018 + (sc->sc_port) * 0x00200), sc->sc_wrap | (frag << 3));
 sc->sc_tx_cnt += map->dm_nsegs;
 *idx = frag;
 m_adj(m, sizeof(*nh) + pad);
 *m0 = m;
 return (0);
}
void
nep_start(struct ifnet *ifp)
{
 struct nep_softc *sc = (struct nep_softc *)ifp->if_softc;
 struct mbuf *m;
 int idx;
 if (!(ifp->if_flags & 0x40))
  return;
 if (ifq_is_oactive(&ifp->if_snd))
  return;
 if ((((&ifp->if_snd)->ifq_len) == 0))
  return;
 idx = sc->sc_tx_prod;
 for (;;) {
  m = ifq_deq_begin(&ifp->if_snd);
  if (m == ((void *)0))
   break;
  if (sc->sc_tx_cnt >= (256 - 15)) {
   ifq_deq_rollback(&ifp->if_snd, m);
   ifq_set_oactive(&ifp->if_snd);
   break;
  }
  ifq_deq_commit(&ifp->if_snd, m);
  if (nep_encap(sc, &m, &idx))
   break;
  if (ifp->if_bpf)
   bpf_mtap(ifp->if_bpf, m, (1<<1));
 }
 if (sc->sc_tx_prod != idx) {
  sc->sc_tx_prod = idx;
  ifp->if_timer = 5;
 }
}
void
nep_watchdog(struct ifnet *ifp)
{
 printf("%s\n", __func__);
}
void
nep_tick(void *arg)
{
 struct nep_softc *sc = arg;
 int s;
 s = _splraise(6);
 mii_tick(&sc->sc_mii);
 _splx(s);
 timeout_add_sec(&sc->sc_tick, 1);
}
int
nep_ioctl(struct ifnet *ifp, u_long cmd, caddr_t data)
{
 struct nep_softc *sc = (struct nep_softc *)ifp->if_softc;
 struct ifreq *ifr = (struct ifreq *)data;
 int s, error = 0;
 s = _splraise(6);
 switch (cmd) {
 case ((unsigned long)0x80000000 | ((sizeof(struct ifreq) & 0x1fff) << 16) | ((('i')) << 8) | ((12))):
  ifp->if_flags |= 0x1;
 case ((unsigned long)0x80000000 | ((sizeof(struct ifreq) & 0x1fff) << 16) | ((('i')) << 8) | ((16))):
  if (((ifp->if_flags) & (0x1))) {
   if (((ifp->if_flags) & (0x40)))
    error = 52;
   else
    nep_up(sc);
  } else {
   if (((ifp->if_flags) & (0x40)))
    nep_down(sc);
  }
  break;
 case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct ifmediareq) & 0x1fff) << 16) | ((('i')) << 8) | ((56))):
 case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct ifreq) & 0x1fff) << 16) | ((('i')) << 8) | ((55))):
  error = ifmedia_ioctl(ifp, ifr, &sc->sc_mii.mii_media, cmd);
  break;
 default:
  error = ether_ioctl(ifp, &sc->sc_ac, cmd, data);
 }
 if (error == 52) {
  if ((ifp->if_flags & (0x1 | 0x40)) ==
      (0x1 | 0x40))
   nep_iff(sc);
  error = 0;
 }
 _splx(s);
 return (error);
}
void
nep_fill_rx_ring(struct nep_softc *sc)
{
 struct nep_block *rb;
 void *block;
 uint64_t val;
 u_int slots;
 int desc, err;
 int count = 0;
 desc = sc->sc_rx_prod;
 slots = if_rxr_get(&sc->sc_rx_ring, 256);
 while (slots > 0) {
  rb = &sc->sc_rb[desc];
  block = pool_get(nep_block_pool, 0x0002);
  if (block == ((void *)0))
   break;
  err = bus_dmamap_load(sc->sc_dmat, rb->nb_map, block,
       (1 << 13), ((void *)0), 0x0001);
  if (err) {
   pool_put(nep_block_pool, block);
   break;
  }
  rb->nb_block = block;
  sc->sc_rbdesc[desc++] =
      (__uint32_t)(__builtin_constant_p(rb->nb_map->dm_segs[0].ds_addr >> 12) ? (__uint32_t)(((__uint32_t)(rb->nb_map->dm_segs[0].ds_addr >> 12) & 0xff) << 24 | ((__uint32_t)(rb->nb_map->dm_segs[0].ds_addr >> 12) & 0xff00) << 8 | ((__uint32_t)(rb->nb_map->dm_segs[0].ds_addr >> 12) & 0xff0000) >> 8 | ((__uint32_t)(rb->nb_map->dm_segs[0].ds_addr >> 12) & 0xff000000) >> 24) : __swap32md(rb->nb_map->dm_segs[0].ds_addr >> 12));
  count++;
  slots--;
  if (desc >= 256)
   desc = 0;
 }
 do { (&sc->sc_rx_ring)->rxr_alive -= (slots); } while (0);
 if (count > 0) {
  nep_write(sc, (0x600000 + 0x00020 + (sc->sc_port) * 0x00200), count);
  val = nep_read(sc, (0x600000 + 0x00070 + (sc->sc_port) * 0x00200));
  val |= (1ULL << 35);
  nep_write(sc, (0x600000 + 0x00070 + (sc->sc_port) * 0x00200), val);
  sc->sc_rx_prod = desc;
 }
}
struct nep_dmamem *
nep_dmamem_alloc(struct nep_softc *sc, size_t size)
{
 struct nep_dmamem *m;
 int nsegs;
 m = malloc(sizeof(*m), 2, 0x0002 | 0x0008);
 if (m == ((void *)0))
  return (((void *)0));
 m->ndm_size = size;
 if (bus_dmamap_create(sc->sc_dmat, size, 1, size, 0,
     0x0001 | 0x0002, &m->ndm_map) != 0)
  goto qdmfree;
 if (bus_dmamem_alloc(sc->sc_dmat, size, (1 << 13), 0, &m->ndm_seg, 1,
     &nsegs, 0x0001 | 0x0800) != 0)
  goto destroy;
 if (bus_dmamem_map(sc->sc_dmat, &m->ndm_seg, nsegs, size, &m->ndm_kva,
     0x0001) != 0)
  goto free;
 if (bus_dmamap_load(sc->sc_dmat, m->ndm_map, m->ndm_kva, size, ((void *)0),
     0x0001) != 0)
  goto unmap;
 return (m);
unmap:
 bus_dmamem_unmap(sc->sc_dmat, m->ndm_kva, m->ndm_size);
free:
 bus_dmamem_free(sc->sc_dmat, &m->ndm_seg, 1);
destroy:
 bus_dmamap_destroy(sc->sc_dmat, m->ndm_map);
qdmfree:
 free(m, 2, sizeof(*m));
 return (((void *)0));
}
void
nep_dmamem_free(struct nep_softc *sc, struct nep_dmamem *m)
{
 bus_dmamap_unload(sc->sc_dmat, m->ndm_map);
 bus_dmamem_unmap(sc->sc_dmat, m->ndm_kva, m->ndm_size);
 bus_dmamem_free(sc->sc_dmat, &m->ndm_seg, 1);
 bus_dmamap_destroy(sc->sc_dmat, m->ndm_map);
 free(m, 2, sizeof(*m));
}
