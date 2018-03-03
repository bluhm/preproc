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
extern int netisr;
extern struct task if_input_task_locked;
void arpintr(void);
void ipintr(void);
void ip6intr(void);
void pppintr(void);
void bridgeintr(void);
void pppoeintr(void);
void switchintr(void);
void pfsyncintr(void);
void pipexintr(void);
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
struct icmp6_hdr {
 u_int8_t icmp6_type;
 u_int8_t icmp6_code;
 u_int16_t icmp6_cksum;
 union {
  u_int32_t icmp6_un_data32[1];
  u_int16_t icmp6_un_data16[2];
  u_int8_t icmp6_un_data8[4];
 } icmp6_dataun;
} __attribute__((__packed__));
struct mld_hdr {
 struct icmp6_hdr mld_icmp6_hdr;
 struct in6_addr mld_addr;
} __attribute__((__packed__));
struct nd_router_solicit {
 struct icmp6_hdr nd_rs_hdr;
} __attribute__((__packed__));
struct nd_router_advert {
 struct icmp6_hdr nd_ra_hdr;
 u_int32_t nd_ra_reachable;
 u_int32_t nd_ra_retransmit;
} __attribute__((__packed__));
struct nd_neighbor_solicit {
 struct icmp6_hdr nd_ns_hdr;
 struct in6_addr nd_ns_target;
} __attribute__((__packed__));
struct nd_neighbor_advert {
 struct icmp6_hdr nd_na_hdr;
 struct in6_addr nd_na_target;
} __attribute__((__packed__));
struct nd_redirect {
 struct icmp6_hdr nd_rd_hdr;
 struct in6_addr nd_rd_target;
 struct in6_addr nd_rd_dst;
} __attribute__((__packed__));
struct nd_opt_hdr {
 u_int8_t nd_opt_type;
 u_int8_t nd_opt_len;
} __attribute__((__packed__));
struct nd_opt_prefix_info {
 u_int8_t nd_opt_pi_type;
 u_int8_t nd_opt_pi_len;
 u_int8_t nd_opt_pi_prefix_len;
 u_int8_t nd_opt_pi_flags_reserved;
 u_int32_t nd_opt_pi_valid_time;
 u_int32_t nd_opt_pi_preferred_time;
 u_int32_t nd_opt_pi_reserved2;
 struct in6_addr nd_opt_pi_prefix;
} __attribute__((__packed__));
struct nd_opt_rd_hdr {
 u_int8_t nd_opt_rh_type;
 u_int8_t nd_opt_rh_len;
 u_int16_t nd_opt_rh_reserved1;
 u_int32_t nd_opt_rh_reserved2;
} __attribute__((__packed__));
struct nd_opt_mtu {
 u_int8_t nd_opt_mtu_type;
 u_int8_t nd_opt_mtu_len;
 u_int16_t nd_opt_mtu_reserved;
 u_int32_t nd_opt_mtu_mtu;
} __attribute__((__packed__));
struct nd_opt_route_info {
 u_int8_t nd_opt_rti_type;
 u_int8_t nd_opt_rti_len;
 u_int8_t nd_opt_rti_prefixlen;
 u_int8_t nd_opt_rti_flags;
 u_int32_t nd_opt_rti_lifetime;
} __attribute__((__packed__));
struct nd_opt_rdnss {
 u_int8_t nd_opt_rdnss_type;
 u_int8_t nd_opt_rdnss_len;
 u_int16_t nd_opt_rdnss_reserved;
 u_int32_t nd_opt_rdnss_lifetime;
} __attribute__((__packed__));
struct nd_opt_dnssl {
 u_int8_t nd_opt_dnssl_type;
 u_int8_t nd_opt_dnssl_len;
 u_int16_t nd_opt_dnssl_reserved;
 u_int32_t nd_opt_dnssl_lifetime;
} __attribute__((__packed__));
struct icmp6_namelookup {
 struct icmp6_hdr icmp6_nl_hdr;
 u_int8_t icmp6_nl_nonce[8];
 int32_t icmp6_nl_ttl;
} __attribute__((__packed__));
struct icmp6_nodeinfo {
 struct icmp6_hdr icmp6_ni_hdr;
 u_int8_t icmp6_ni_nonce[8];
} __attribute__((__packed__));
struct ni_reply_fqdn {
 u_int32_t ni_fqdn_ttl;
 u_int8_t ni_fqdn_namelen;
 u_int8_t ni_fqdn_name[3];
} __attribute__((__packed__));
struct icmp6_router_renum {
 struct icmp6_hdr rr_hdr;
 u_int8_t rr_segnum;
 u_int8_t rr_flags;
 u_int16_t rr_maxdelay;
 u_int32_t rr_reserved;
} __attribute__((__packed__));
struct rr_pco_match {
 u_int8_t rpm_code;
 u_int8_t rpm_len;
 u_int8_t rpm_ordinal;
 u_int8_t rpm_matchlen;
 u_int8_t rpm_minlen;
 u_int8_t rpm_maxlen;
 u_int16_t rpm_reserved;
 struct in6_addr rpm_prefix;
} __attribute__((__packed__));
struct rr_pco_use {
 u_int8_t rpu_uselen;
 u_int8_t rpu_keeplen;
 u_int8_t rpu_ramask;
 u_int8_t rpu_raflags;
 u_int32_t rpu_vltime;
 u_int32_t rpu_pltime;
 u_int32_t rpu_flags;
 struct in6_addr rpu_prefix;
} __attribute__((__packed__));
struct rr_result {
 u_int16_t rrr_flags;
 u_int8_t rrr_ordinal;
 u_int8_t rrr_matchedlen;
 u_int32_t rrr_ifid;
 struct in6_addr rrr_prefix;
} __attribute__((__packed__));
struct icmp6_filter {
 u_int32_t icmp6_filt[8];
};
struct icmp6stat {
 u_int64_t icp6s_error;
 u_int64_t icp6s_canterror;
 u_int64_t icp6s_toofreq;
 u_int64_t icp6s_outhist[256];
 u_int64_t icp6s_badcode;
 u_int64_t icp6s_tooshort;
 u_int64_t icp6s_checksum;
 u_int64_t icp6s_badlen;
 u_int64_t icp6s_reflect;
 u_int64_t icp6s_inhist[256];
 u_int64_t icp6s_nd_toomanyopt;
 u_int64_t icp6s_odst_unreach_noroute;
 u_int64_t icp6s_odst_unreach_admin;
 u_int64_t icp6s_odst_unreach_beyondscope;
 u_int64_t icp6s_odst_unreach_addr;
 u_int64_t icp6s_odst_unreach_noport;
 u_int64_t icp6s_opacket_too_big;
 u_int64_t icp6s_otime_exceed_transit;
 u_int64_t icp6s_otime_exceed_reassembly;
 u_int64_t icp6s_oparamprob_header;
 u_int64_t icp6s_oparamprob_nextheader;
 u_int64_t icp6s_oparamprob_option;
 u_int64_t icp6s_oredirect;
 u_int64_t icp6s_ounknown;
 u_int64_t icp6s_pmtuchg;
 u_int64_t icp6s_nd_badopt;
 u_int64_t icp6s_badns;
 u_int64_t icp6s_badna;
 u_int64_t icp6s_badrs;
 u_int64_t icp6s_badra;
 u_int64_t icp6s_badredirect;
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
enum icmp6stat_counters {
 icp6s_error,
 icp6s_canterror,
 icp6s_toofreq,
 icp6s_outhist,
 icp6s_badcode = icp6s_outhist + 256,
 icp6s_tooshort,
 icp6s_checksum,
 icp6s_badlen,
 icp6s_reflect,
 icp6s_inhist,
 icp6s_nd_toomanyopt = icp6s_inhist + 256,
 icp6s_odst_unreach_noroute,
 icp6s_odst_unreach_admin,
 icp6s_odst_unreach_beyondscope,
 icp6s_odst_unreach_addr,
 icp6s_odst_unreach_noport,
 icp6s_opacket_too_big,
 icp6s_otime_exceed_transit,
 icp6s_otime_exceed_reassembly,
 icp6s_oparamprob_header,
 icp6s_oparamprob_nextheader,
 icp6s_oparamprob_option,
 icp6s_oredirect,
 icp6s_ounknown,
 icp6s_pmtuchg,
 icp6s_nd_badopt,
 icp6s_badns,
 icp6s_badna,
 icp6s_badrs,
 icp6s_badra,
 icp6s_badredirect,
 icp6s_ncounters,
};
extern struct cpumem *icmp6counters;
static inline void
icmp6stat_inc(enum icmp6stat_counters c)
{
 counters_inc(icmp6counters, c);
}
struct rtentry;
struct rttimer;
struct in6_multi;
void icmp6_init(void);
void icmp6_paramerror(struct mbuf *, int);
void icmp6_error(struct mbuf *, int, int, int);
int icmp6_input(struct mbuf **, int *, int, int);
void icmp6_fasttimo(void);
void icmp6_reflect(struct mbuf *, size_t);
void icmp6_prepare(struct mbuf *);
void icmp6_redirect_input(struct mbuf *, int);
void icmp6_redirect_output(struct mbuf *, struct rtentry *);
int icmp6_sysctl(int *, u_int, void *, size_t *, void *, size_t);
struct ip6ctlparam;
void icmp6_mtudisc_update(struct ip6ctlparam *, int);
void icmp6_mtudisc_callback_register(void (*)(struct sockaddr_in6 *, u_int));
extern int icmp6_redirtimeout;
struct nd_ifinfo {
 u_int32_t basereachable;
 u_int32_t reachable;
 u_int32_t retrans;
 int recalctm;
 u_int8_t initialized;
};
struct in6_nbrinfo {
 char ifname[16];
 struct in6_addr addr;
 time_t expire;
 long asked;
 int isrouter;
 int state;
};
struct prf_ra {
 u_int onlink : 1;
 u_int autonomous : 1;
 u_int router : 1;
 u_int reserved : 5;
};
struct in6_ndireq {
 char ifname[16];
 struct nd_ifinfo ndi;
};
struct in6_ndifreq {
 char ifname[16];
 u_long ifindex;
};
struct llinfo_nd6 {
 struct { struct llinfo_nd6 *tqe_next; struct llinfo_nd6 **tqe_prev; } ln_list;
 struct rtentry *ln_rt;
 struct mbuf *ln_hold;
 long ln_asked;
 int ln_byhint;
 short ln_state;
 short ln_router;
};
extern int nd6_delay;
extern int nd6_umaxtries;
extern int nd6_mmaxtries;
extern int nd6_maxnudhint;
extern int nd6_gctimer;
extern int nd6_debug;
union nd_opts {
 struct nd_opt_hdr *nd_opt_array[9];
 struct {
  struct nd_opt_hdr *zero;
  struct nd_opt_hdr *src_lladdr;
  struct nd_opt_hdr *tgt_lladdr;
  struct nd_opt_prefix_info *pi_beg;
  struct nd_opt_rd_hdr *rh;
  struct nd_opt_mtu *mtu;
  struct nd_opt_hdr *search;
  struct nd_opt_hdr *last;
  int done;
  struct nd_opt_prefix_info *pi_end;
 } nd_opt_each;
};
void nd6_init(void);
struct nd_ifinfo *nd6_ifattach(struct ifnet *);
void nd6_ifdetach(struct nd_ifinfo *);
int nd6_is_addr_neighbor(struct sockaddr_in6 *, struct ifnet *);
void nd6_option_init(void *, int, union nd_opts *);
struct nd_opt_hdr *nd6_option(union nd_opts *);
int nd6_options(union nd_opts *);
struct rtentry *nd6_lookup(struct in6_addr *, int, struct ifnet *, u_int);
void nd6_setmtu(struct ifnet *);
void nd6_llinfo_settimer(struct llinfo_nd6 *, unsigned int);
void nd6_purge(struct ifnet *);
void nd6_nud_hint(struct rtentry *);
void nd6_rtrequest(struct ifnet *, int, struct rtentry *);
int nd6_ioctl(u_long, caddr_t, struct ifnet *);
void nd6_cache_lladdr(struct ifnet *, struct in6_addr *, char *, int, int, int);
int nd6_resolve(struct ifnet *, struct rtentry *, struct mbuf *,
  struct sockaddr *, u_char *);
int nd6_need_cache(struct ifnet *);
void nd6_na_input(struct mbuf *, int, int);
void nd6_na_output(struct ifnet *, struct in6_addr *,
 struct in6_addr *, u_long, int, struct sockaddr *);
void nd6_ns_input(struct mbuf *, int, int);
void nd6_ns_output(struct ifnet *, struct in6_addr *,
 struct in6_addr *, struct llinfo_nd6 *, int);
caddr_t nd6_ifptomac(struct ifnet *);
void nd6_dad_start(struct ifaddr *);
void nd6_dad_stop(struct ifaddr *);
void nd6_rtr_cache(struct mbuf *, int, int, int);
int in6_ifdel(struct ifnet *, struct in6_addr *);
void rt6_flush(struct in6_addr *, struct ifnet *);
void nd6_expire_timer_update(struct in6_ifaddr *);
struct udphdr {
 u_int16_t uh_sport;
 u_int16_t uh_dport;
 u_int16_t uh_ulen;
 u_int16_t uh_sum;
};
typedef u_int32_t tcp_seq;
struct tcphdr {
 u_int16_t th_sport;
 u_int16_t th_dport;
 tcp_seq th_seq;
 tcp_seq th_ack;
 u_int32_t th_off:4,
    th_x2:4;
 u_int8_t th_flags;
 u_int16_t th_win;
 u_int16_t th_sum;
 u_int16_t th_urp;
};
struct icmp_ra_addr {
 u_int32_t ira_addr;
 u_int32_t ira_preference;
};
struct icmp {
 u_int8_t icmp_type;
 u_int8_t icmp_code;
 u_int16_t icmp_cksum;
 union {
  u_int8_t ih_pptr;
  struct ih_exthdr {
   u_int8_t iex_pad;
   u_int8_t iex_length;
  } ih_exthdr;
  struct in_addr ih_gwaddr;
  struct ih_idseq {
     u_int16_t icd_id;
     u_int16_t icd_seq;
  } ih_idseq;
  int32_t ih_void;
  struct ih_pmtu {
     u_int16_t ipm_void;
     u_int16_t ipm_nextmtu;
  } ih_pmtu;
  struct ih_rtradv {
   u_int8_t irt_num_addrs;
   u_int8_t irt_wpa;
   u_int16_t irt_lifetime;
  } ih_rtradv;
 } icmp_hun;
 union {
  struct id_ts {
     u_int32_t its_otime;
     u_int32_t its_rtime;
     u_int32_t its_ttime;
  } id_ts;
  struct id_ip {
     struct ip idi_ip;
  } id_ip;
  u_int32_t id_mask;
  int8_t id_data[1];
 } icmp_dun;
};
struct icmp_ext_hdr {
 u_int8_t ieh_version;
 u_int8_t ieh_res;
 u_int16_t ieh_cksum;
};
struct icmp_ext_obj_hdr {
 u_int16_t ieo_length;
 u_int8_t ieo_cnum;
 u_int8_t ieo_ctype;
};
struct mbuf *
 icmp_do_error(struct mbuf *, int, int, u_int32_t, int);
void icmp_error(struct mbuf *, int, int, u_int32_t, int);
int icmp_input(struct mbuf **, int *, int, int);
void icmp_init(void);
int icmp_reflect(struct mbuf *, struct mbuf **, struct in_ifaddr *);
void icmp_send(struct mbuf *, struct mbuf *);
int icmp_sysctl(int *, u_int, void *, size_t *, void *, size_t);
struct rtentry *
 icmp_mtudisc_clone(struct in_addr, u_int);
void icmp_mtudisc(struct icmp *, u_int);
int icmp_do_exthdr(struct mbuf *, u_int16_t, u_int8_t, void *, size_t);
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
struct ofp_header {
 uint8_t oh_version;
 uint8_t oh_type;
 uint16_t oh_length;
 uint32_t oh_xid;
} __attribute__((__packed__));
struct ofp_hello_element_header {
 uint16_t he_type;
 uint16_t he_length;
} __attribute__((__packed__));
struct ofp_hello_element_versionbitmap {
 uint16_t hev_type;
 uint16_t hev_length;
} __attribute__((__packed__));
struct ofp_switch_config {
 struct ofp_header cfg_oh;
 uint16_t cfg_flags;
 uint16_t cfg_miss_send_len;
} __attribute__((__packed__));
struct ofp_switch_port {
 uint32_t swp_number;
 uint8_t swp_pad[4];
 uint8_t swp_macaddr[6];
 uint8_t swp_pad2[2];
 char swp_name[16];
 uint32_t swp_config;
 uint32_t swp_state;
 uint32_t swp_cur;
 uint32_t swp_advertised;
 uint32_t swp_supported;
 uint32_t swp_peer;
 uint32_t swp_cur_speed;
 uint32_t swp_max_speed;
} __attribute__((__packed__));
struct ofp_switch_features {
 struct ofp_header swf_oh;
 uint64_t swf_datapath_id;
 uint32_t swf_nbuffers;
 uint8_t swf_ntables;
 uint8_t swf_aux_id;
 uint8_t swf_pad[2];
 uint32_t swf_capabilities;
 uint32_t swf_actions;
} __attribute__((__packed__));
struct ofp_match {
 uint16_t om_type;
 uint16_t om_length;
} __attribute__((__packed__));
struct ofp_packet_in {
 struct ofp_header pin_oh;
 uint32_t pin_buffer_id;
 uint16_t pin_total_len;
 uint8_t pin_reason;
 uint8_t pin_table_id;
 uint64_t pin_cookie;
 struct ofp_match pin_match;
} __attribute__((__packed__));
struct ofp_instruction {
 uint16_t i_type;
 uint16_t i_len;
} __attribute__((__packed__));
struct ofp_instruction_write_metadata {
 uint16_t iwm_type;
 uint16_t iwm_len;
 uint8_t iwm_pad[4];
 uint64_t iwm_metadata;
 uint64_t iwm_metadata_mask;
} __attribute__((__packed__));
struct ofp_instruction_goto_table {
 uint16_t igt_type;
 uint16_t igt_len;
 uint8_t igt_table_id;
 uint8_t igt_pad[3];
} __attribute__((__packed__));
struct ofp_instruction_actions {
 uint16_t ia_type;
 uint16_t ia_len;
 uint8_t ia_pad[4];
} __attribute__((__packed__));
struct ofp_instruction_meter {
 uint16_t im_type;
 uint16_t im_len;
 uint32_t im_meter_id;
} __attribute__((__packed__));
struct ofp_instruction_experimenter {
 uint16_t ie_type;
 uint16_t ie_len;
 uint32_t ie_experimenter;
} __attribute__((__packed__));
struct ofp_action_header {
 uint16_t ah_type;
 uint16_t ah_len;
 uint32_t ah_pad;
} __attribute__((__packed__));
struct ofp_action_output {
 uint16_t ao_type;
 uint16_t ao_len;
 uint32_t ao_port;
 uint16_t ao_max_len;
 uint8_t ao_pad[6];
} __attribute__((__packed__));
struct ofp_action_mpls_ttl {
 uint16_t amt_type;
 uint16_t amt_len;
 uint8_t amt_ttl;
 uint8_t amt_pad[3];
} __attribute__((__packed__));
struct ofp_action_push {
 uint16_t ap_type;
 uint16_t ap_len;
 uint16_t ap_ethertype;
 uint8_t ap_pad[2];
} __attribute__((__packed__));
struct ofp_action_pop_mpls {
 uint16_t apm_type;
 uint16_t apm_len;
 uint16_t apm_ethertype;
 uint8_t apm_pad[2];
} __attribute__((__packed__));
struct ofp_action_group {
 uint16_t ag_type;
 uint16_t ag_len;
 uint32_t ag_group_id;
} __attribute__((__packed__));
struct ofp_action_nw_ttl {
 uint16_t ant_type;
 uint16_t ant_len;
 uint8_t ant_ttl;
 uint8_t ant_pad[3];
} __attribute__((__packed__));
struct ofp_action_set_field {
 uint16_t asf_type;
 uint16_t asf_len;
 uint8_t asf_field[4];
} __attribute__((__packed__));
struct ofp_action_set_queue {
 uint16_t asq_type;
 uint16_t asq_len;
 uint32_t asq_queue_id;
} __attribute__((__packed__));
struct ofp_packet_out {
 struct ofp_header pout_oh;
 uint32_t pout_buffer_id;
 uint32_t pout_in_port;
 uint16_t pout_actions_len;
 uint8_t pout_pad[6];
 struct ofp_action_header pout_actions[0];
} __attribute__((__packed__));
struct ofp_ox_match {
 uint16_t oxm_class;
 uint8_t oxm_fh;
 uint8_t oxm_length;
 uint8_t oxm_value[0];
} __attribute__((__packed__));
struct ofp_flow_mod {
 struct ofp_header fm_oh;
 uint64_t fm_cookie;
 uint64_t fm_cookie_mask;
 uint8_t fm_table_id;
 uint8_t fm_command;
 uint16_t fm_idle_timeout;
 uint16_t fm_hard_timeout;
 uint16_t fm_priority;
 uint32_t fm_buffer_id;
 uint32_t fm_out_port;
 uint32_t fm_out_group;
 uint16_t fm_flags;
 uint8_t fm_pad[2];
 struct ofp_match fm_match;
} __attribute__((__packed__));
struct ofp_flow_removed {
 struct ofp_header fr_oh;
 uint64_t fr_cookie;
 uint16_t fr_priority;
 uint8_t fr_reason;
 uint8_t fr_table_id;
 uint32_t fr_duration_sec;
 uint32_t fr_duration_nsec;
 uint16_t fr_idle_timeout;
 uint16_t fr_hard_timeout;
 uint64_t fr_packet_count;
 uint64_t fr_byte_count;
 struct ofp_match fr_match;
} __attribute__((__packed__));
struct ofp_error {
 struct ofp_header err_oh;
 uint16_t err_type;
 uint16_t err_code;
 uint8_t err_data[0];
} __attribute__((__packed__));
struct ofp_bucket {
 uint16_t b_len;
 uint16_t b_weight;
 uint32_t b_watch_port;
 uint32_t b_watch_group;
 uint8_t b_pad[4];
 struct ofp_action_header b_actions[0];
} __attribute__((__packed__));
struct ofp_group_mod {
 struct ofp_header gm_oh;
 uint16_t gm_command;
 uint8_t gm_type;
 uint8_t gm_pad;
 uint32_t gm_group_id;
 struct ofp_bucket gm_buckets[0];
} __attribute__((__packed__));
struct ofp_multipart {
 struct ofp_header mp_oh;
 uint16_t mp_type;
 uint16_t mp_flags;
 uint8_t mp_pad[4];
} __attribute__((__packed__));
struct ofp_desc {
 char d_mfr_desc[256];
 char d_hw_desc[256];
 char d_sw_desc[256];
 char d_serial_num[32];
 char d_dp_desc[256];
} __attribute__((__packed__));
struct ofp_flow_stats_request {
 uint8_t fsr_table_id;
 uint8_t fsr_pad[3];
 uint32_t fsr_out_port;
 uint32_t fsr_out_group;
 uint8_t fsr_pad2[4];
 uint64_t fsr_cookie;
 uint64_t fsr_cookie_mask;
 struct ofp_match fsr_match;
} __attribute__((__packed__));
struct ofp_flow_stats {
 uint16_t fs_length;
 uint8_t fs_table_id;
 uint8_t fs_pad;
 uint32_t fs_duration_sec;
 uint32_t fs_duration_nsec;
 uint16_t fs_priority;
 uint16_t fs_idle_timeout;
 uint16_t fs_hard_timeout;
 uint16_t fs_flags;
 uint8_t fs_pad2[4];
 uint64_t fs_cookie;
 uint64_t fs_packet_count;
 uint64_t fs_byte_count;
 struct ofp_match fs_match;
} __attribute__((__packed__));
struct ofp_aggregate_stats_request {
 uint8_t asr_table_id;
 uint8_t asr_pad[3];
 uint32_t asr_out_port;
 uint32_t asr_out_group;
 uint8_t asr_pad2[4];
 uint64_t asr_cookie;
 uint64_t asr_cookie_mask;
 struct ofp_match asr_match;
} __attribute__((__packed__));
struct ofp_aggregate_stats {
 uint64_t as_packet_count;
 uint64_t as_byte_count;
 uint32_t as_flow_count;
 uint8_t as_pad[4];
} __attribute__((__packed__));
struct ofp_table_stats {
 uint8_t ts_table_id;
 uint8_t ts_pad[3];
 uint32_t ts_active_count;
 uint64_t ts_lookup_count;
 uint64_t ts_matched_count;
} __attribute__((__packed__));
struct ofp_table_features {
 uint16_t tf_length;
 uint8_t tf_tableid;
 uint8_t tf_pad[5];
 char tf_name[32];
 uint64_t tf_metadata_match;
 uint64_t tf_metadata_write;
 uint32_t tf_config;
 uint32_t tf_max_entries;
} __attribute__((__packed__));
struct ofp_table_feature_property {
 uint16_t tp_type;
 uint16_t tp_length;
} __attribute__((__packed__));
struct ofp_table_feature_property_instruction {
 uint16_t tpi_type;
 uint16_t tpi_length;
 struct ofp_instruction tpi_instructions[0];
} __attribute__((__packed__));
struct ofp_table_feature_property_next_tables {
 uint16_t tpnt_type;
 uint16_t tpnt_length;
 uint8_t tpnt_tables[0];
} __attribute__((__packed__));
struct ofp_table_feature_property_actions {
 uint16_t tpa_type;
 uint16_t tpa_length;
 struct ofp_action_header tpa_actions[0];
} __attribute__((__packed__));
struct ofp_table_feature_property_oxm {
 uint16_t tpoxm_type;
 uint16_t tpoxm_length;
 uint32_t tpoxm_oxm[0];
} __attribute__((__packed__));
struct ofp_table_feature_property_experimenter {
 uint16_t tfpexp_type;
 uint16_t tfpexp_length;
 uint32_t tfpexp_experimenter;
 uint32_t tfpexp_exp_type;
 uint32_t tfpexp_experimenter_data[0];
} __attribute__((__packed__));
struct ofp_port_stats {
 uint32_t pt_port_no;
 uint8_t pt_pad[4];
 uint64_t pt_rx_packets;
 uint64_t pt_tx_packets;
 uint64_t pt_rx_bytes;
 uint64_t pt_tx_bytes;
 uint64_t pt_rx_dropped;
 uint64_t pt_tx_dropped;
 uint64_t pt_rx_errors;
 uint64_t pt_tx_errors;
 uint64_t pt_rx_frame_err;
 uint64_t pt_rx_over_err;
 uint64_t pt_rx_crc_err;
 uint64_t pt_collision;
 uint32_t pt_duration_sec;
 uint32_t pt_duration_nsec;
} __attribute__((__packed__));
struct ofp_group_stats_request {
 uint32_t gsr_group_id;
 uint8_t gsr_pad[4];
} __attribute__((__packed__));
struct ofp_bucket_counter {
 uint64_t gs_packet_count;
 uint64_t gs_byte_count;
} __attribute__((__packed__));
struct ofp_group_stats {
 uint16_t gs_length;
 uint8_t gs_pad[2];
 uint32_t gs_group_id;
 uint32_t gs_ref_count;
 uint8_t gs_pad2[4];
 uint64_t gs_packet_count;
 uint64_t gs_byte_count;
 uint32_t gs_duration_sec;
 uint32_t gs_duration_nsec;
 struct ofp_bucket_counter gs_bucket_stats[0];
} __attribute__((__packed__));
struct ofp_group_desc {
 uint16_t gd_length;
 uint8_t gd_type;
 uint8_t gd_pad;
 uint32_t gd_group_id;
 struct ofp_bucket gd_buckets[0];
} __attribute__((__packed__));
enum ofp_state {
 OFP_STATE_CLOSED,
 OFP_STATE_HELLO_WAIT,
 OFP_STATE_FEATURE_WAIT,
 OFP_STATE_ESTABLISHED
};
struct dlt_openflow_hdr {
 uint32_t of_direction;
 uint64_t of_datapath_id;
} __attribute__((__packed__));
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
struct switch_field_tunnel {
 uint32_t tun_af;
 struct in_addr tun_ipv4_src;
 struct in_addr tun_ipv4_dst;
 struct in6_addr tun_ipv6_src;
 struct in6_addr tun_ipv6_dst;
 uint64_t tun_key;
};
struct switch_field_ether {
 uint8_t eth_src[6];
 uint8_t __pad_eth_src[2];
 uint8_t eth_dst[6];
 uint8_t __pad_eth_dst[2];
 uint16_t eth_type;
 uint8_t __pad_eth_type[2];
};
struct switch_field_vlan {
 uint16_t vlan_tpid;
 uint16_t vlan_vid;
 uint16_t vlan_pcp;
 uint8_t __pad_vlan_pcp[2];
};
struct switch_field_ipv4 {
 uint32_t ipv4_src;
 uint32_t ipv4_dst;
 uint8_t ipv4_proto;
 uint8_t ipv4_tos;
 uint8_t ipv4_ttl;
 uint8_t ipv4_frag;
};
struct switch_field_ipv6 {
 struct in6_addr ipv6_src;
 struct in6_addr ipv6_dst;
 uint32_t ipv6_flow_label;
 uint8_t ipv6_nxt;
 uint8_t ipv6_tclass;
 uint8_t ipv6_hlimit;
 uint8_t ipv6_frag;
};
struct switch_field_arp {
 uint16_t _arp_op;
 uint8_t __pad_arp_op[2];
 uint8_t arp_sha[6];
 uint8_t __pad_arp_sha[2];
 uint8_t arp_tha[6];
 uint8_t __pad_arp_tha[2];
 uint32_t arp_sip;
 uint32_t arp_tip;
};
struct switch_field_nd6 {
 struct in6_addr nd6_target;
 uint8_t nd6_lladdr[6];
 uint8_t __pad_nd6_lladdr[2];
};
struct switch_field_icmpv4 {
 uint8_t icmpv4_type;
 uint8_t icmpv4_code;
 uint8_t __pad[2];
};
struct switch_field_icmpv6 {
 uint8_t icmpv6_type;
 uint8_t icmpv6_code;
 uint8_t __pad[2];
};
struct switch_field_tcp {
 uint16_t tcp_src;
 uint16_t tcp_dst;
 uint8_t tcp_flags;
 uint8_t __pad[3];
};
struct switch_field_udp {
 uint16_t udp_src;
 uint16_t udp_dst;
};
struct switch_field_sctp {
 uint16_t sctp_src;
 uint16_t sctp_dst;
};
union switch_field {
 struct switch_field_tunnel swfcl_tunnel;
 struct switch_field_ether swfcl_ether;
 struct switch_field_vlan swfcl_vlan;
 struct switch_field_ipv4 swfcl_ipv4;
 struct switch_field_ipv6 swfcl_ipv6;
 struct switch_field_arp swfcl_arp;
 struct switch_field_nd6 swfcl_nd6;
 struct switch_field_icmpv4 swfcl_icmpv4;
 struct switch_field_icmpv6 swfcl_icmpv6;
 struct switch_field_tcp swfcl_tcp;
 struct switch_field_udp swfcl_udp;
 struct switch_field_sctp swfcl_sctp;
};
struct switch_flow_classify {
 uint64_t swfcl_flow_hash;
 uint64_t swfcl_metadata;
 uint64_t swfcl_cookie;
 uint8_t swfcl_table_id;
 uint32_t swfcl_in_port;
 struct switch_field_tunnel *swfcl_tunnel;
 struct switch_field_ether *swfcl_ether;
 struct switch_field_vlan *swfcl_vlan;
 struct switch_field_ipv4 *swfcl_ipv4;
 struct switch_field_ipv6 *swfcl_ipv6;
 struct switch_field_arp *swfcl_arp;
 struct switch_field_nd6 *swfcl_nd6;
 struct switch_field_icmpv4 *swfcl_icmpv4;
 struct switch_field_icmpv6 *swfcl_icmpv6;
 struct switch_field_tcp *swfcl_tcp;
 struct switch_field_udp *swfcl_udp;
 struct switch_field_sctp *swfcl_sctp;
};
struct switch_softc;
struct switch_port {
 struct { struct switch_port *tqe_next; struct switch_port **tqe_prev; } swpo_list_next;
 struct { struct switch_port *tqe_next; struct switch_port **tqe_prev; } swpo_fwdp_next;
 uint32_t swpo_port_no;
 uint32_t swpo_ifindex;
 struct timespec swpo_appended;
 struct switch_softc *swpo_switch;
 uint32_t swpo_flags;
 void *swpo_dhcookie;
 void (*swop_bk_start)(struct ifnet *);
};
struct switch_fwdp_queue { struct switch_port *tqh_first; struct switch_port **tqh_last; };
struct switch_dev {
 struct mbuf *swdev_lastm;
 struct mbuf *swdev_inputm;
 struct mbuf_queue swdev_outq;
 struct selinfo swdev_rsel;
 struct selinfo swdev_wsel;
 int swdev_waiting;
 void (*swdev_init)(struct switch_softc *);
 int (*swdev_input)(struct switch_softc *,
        struct mbuf *);
 int (*swdev_output)(struct switch_softc *,
        struct mbuf *);
};
struct switch_softc {
 struct ifnet sc_if;
 int sc_unit;
 uint32_t sc_capabilities;
 struct switch_dev *sc_swdev;
 struct bstp_state *sc_stp;
 struct swofp_ofs *sc_ofs;
 caddr_t sc_ofbpf;
 struct { struct switch_port *tqh_first; struct switch_port **tqh_last; } sc_swpo_list;
 struct { struct switch_softc *le_next; struct switch_softc **le_prev; } sc_switch_next;
 void (*switch_process_forward)(
     struct switch_softc *, struct switch_flow_classify *,
     struct mbuf *);
};
struct switch_softc
 *switch_lookup(int);
void switch_port_egress(struct switch_softc *, struct switch_fwdp_queue *,
     struct mbuf *);
int switch_swfcl_dup(struct switch_flow_classify *,
     struct switch_flow_classify *);
void switch_swfcl_free(struct switch_flow_classify *);
struct mbuf
 *switch_flow_classifier(struct mbuf *, uint32_t,
     struct switch_flow_classify *);
int switch_mtap(caddr_t, struct mbuf *, int, uint64_t);
int ofp_split_mbuf(struct mbuf *, struct mbuf **);
void switch_dev_destroy(struct switch_softc *);
void swofp_attach(void);
int swofp_create(struct switch_softc *);
int swofp_init(struct switch_softc *);
void swofp_destroy(struct switch_softc *);
int swofp_ioctl(struct ifnet *, unsigned long, caddr_t);
uint32_t
  swofp_assign_portno(struct switch_softc *, uint32_t);
int switch_clone_create(struct if_clone *, int);
int switch_clone_destroy(struct ifnet *);
void switch_process(struct ifnet *, struct mbuf *);
int switch_port_set_local(struct switch_softc *, struct switch_port *);
int switch_port_unset_local(struct switch_softc *, struct switch_port *);
int switch_ioctl(struct ifnet *, unsigned long, caddr_t);
int switch_port_add(struct switch_softc *, struct ifbreq *);
void switch_port_detach(void *);
int switch_port_del(struct switch_softc *, struct ifbreq *);
int switch_port_list(struct switch_softc *, struct ifbifconf *);
int switch_input(struct ifnet *, struct mbuf *, void *);
struct mbuf
 *switch_port_ingress(struct switch_softc *, struct ifnet *,
     struct mbuf *);
int switch_ifenqueue(struct switch_softc *, struct ifnet *,
     struct mbuf *, int);
void switch_port_ifb_start(struct ifnet *);
struct mbuf
 *switch_flow_classifier_udp(struct mbuf *, int *,
     struct switch_flow_classify *);
struct mbuf
 *switch_flow_classifier_tcp(struct mbuf *, int *,
     struct switch_flow_classify *);
struct mbuf
 *switch_flow_classifier_icmpv4(struct mbuf *, int *,
     struct switch_flow_classify *);
struct mbuf
 *switch_flow_classifier_nd6(struct mbuf *, int *,
     struct switch_flow_classify *);
struct mbuf
 *switch_flow_classifier_icmpv6(struct mbuf *, int *,
     struct switch_flow_classify *);
struct mbuf
 *switch_flow_classifier_ipv4(struct mbuf *, int *,
     struct switch_flow_classify *);
struct mbuf
 *switch_flow_classifier_ipv6(struct mbuf *, int *,
     struct switch_flow_classify *);
struct mbuf
 *switch_flow_classifier_arp(struct mbuf *, int *,
     struct switch_flow_classify *);
struct mbuf
 *switch_flow_classifier_ether(struct mbuf *, int *,
     struct switch_flow_classify *);
struct mbuf
 *switch_flow_classifier_tunnel(struct mbuf *, int *,
     struct switch_flow_classify *);
void switch_flow_classifier_dump(struct switch_softc *,
     struct switch_flow_classify *);
void switchattach(int);
struct if_clone switch_cloner =
    { .ifc_list = { ((void *)0), ((void *)0) }, .ifc_name = "switch", .ifc_namelen = sizeof("switch") - 1, .ifc_create = switch_clone_create, .ifc_destroy = switch_clone_destroy, };
struct { struct switch_softc *lh_first; } switch_list;
struct niqueue switchintrq = { { { ((void *)0), ((((6)) > 0 && ((6)) < 12) ? 12 : ((6))), 0 }, { ((void *)0), ((void *)0), 0 }, ((1024)), 0 }, (31) };
struct rwlock switch_ifs_lk = { 0, "switchifs" };
struct pool swfcl_pool;
void
switchattach(int n)
{
 pool_init(&swfcl_pool, sizeof(union switch_field), 0, 0, 0,
     "swfcl", ((void *)0));
 swofp_attach();
 do { ((&switch_list)->lh_first) = ((void *)0); } while (0);
 if_clone_attach(&switch_cloner);
}
struct switch_softc *
switch_lookup(int unit)
{
 struct switch_softc *sc;
 for((sc) = ((&switch_list)->lh_first); (sc)!= ((void *)0); (sc) = ((sc)->sc_switch_next.le_next)) {
  if (sc->sc_unit == unit)
   return (sc);
 }
 return (((void *)0));
}
int
switch_clone_create(struct if_clone *ifc, int unit)
{
 struct switch_softc *sc;
 struct ifnet *ifp;
 sc = malloc(sizeof(struct switch_softc), 2, 0x0001|0x0008);
 ifp = &sc->sc_if;
 snprintf(ifp->if_xname, sizeof ifp->if_xname, "switch%d", unit);
 ifp->if_softc = sc;
 ifp->if_data.ifi_mtu = (1518 - ((6 * 2) + 2) - 4);
 ifp->if_ioctl = switch_ioctl;
 ifp->if_output = ((void *)0);
 ifp->if_start = ((void *)0);
 ifp->if_data.ifi_type = 0xd1;
 ifp->if_data.ifi_hdrlen = ((6 * 2) + 2);
 do { (&sc->sc_swpo_list)->tqh_first = ((void *)0); (&sc->sc_swpo_list)->tqh_last = &(&sc->sc_swpo_list)->tqh_first; } while (0);
 sc->sc_unit = unit;
 sc->sc_stp = bstp_create(&sc->sc_if);
 if (!sc->sc_stp) {
  free(sc, 2, sizeof(*sc));
  return (12);
 }
 if_attach(ifp);
 if_alloc_sadl(ifp);
 bpfattach(&ifp->if_bpf, ifp, 1, ((6 * 2) + 2));
 swofp_create(sc);
 do { if (((sc)->sc_switch_next.le_next = (&switch_list)->lh_first) != ((void *)0)) (&switch_list)->lh_first->sc_switch_next.le_prev = &(sc)->sc_switch_next.le_next; (&switch_list)->lh_first = (sc); (sc)->sc_switch_next.le_prev = &(&switch_list)->lh_first; } while (0);
 return (0);
}
int
switch_clone_destroy(struct ifnet *ifp)
{
 struct switch_softc *sc = ifp->if_softc;
 struct switch_port *swpo, *tp;
 struct ifnet *ifs;
 for ((swpo) = ((&sc->sc_swpo_list)->tqh_first); (swpo) != ((void *)0) && ((tp) = ((swpo)->swpo_list_next.tqe_next), 1); (swpo) = (tp)) {
  if ((ifs = if_get(swpo->swpo_ifindex)) != ((void *)0)) {
   switch_port_detach(ifs);
   if_put(ifs);
  } else
   log(3, "failed to cleanup on ifindex(%d)\n",
       swpo->swpo_ifindex);
 }
 do { if ((sc)->sc_switch_next.le_next != ((void *)0)) (sc)->sc_switch_next.le_next->sc_switch_next.le_prev = (sc)->sc_switch_next.le_prev; *(sc)->sc_switch_next.le_prev = (sc)->sc_switch_next.le_next; ((sc)->sc_switch_next.le_prev) = ((void *)-1); ((sc)->sc_switch_next.le_next) = ((void *)-1); } while (0);
 bstp_destroy(sc->sc_stp);
 swofp_destroy(sc);
 switch_dev_destroy(sc);
 if_deactivate(ifp);
 if_detach(ifp);
 free(sc, 2, sizeof(*sc));
 return (0);
}
void
switchintr(void)
{
 struct mbuf_list ml;
 struct mbuf *m;
 struct ifnet *ifp;
 mq_delist(&(&switchintrq)->ni_q, (&ml));
 if (((&ml)->ml_len == 0))
  return;
 while ((m = ml_dequeue(&ml)) != ((void *)0)) {
  ifp = if_get(m->M_dat.MH.MH_pkthdr.ph_ifidx);
  if (ifp == ((void *)0)) {
   m_freem(m);
   continue;
  }
  switch_process(ifp, m);
  if_put(ifp);
 }
}
void
switch_process(struct ifnet *ifp, struct mbuf *m)
{
 struct switch_softc *sc = ((void *)0);
 struct switch_port *swpo;
 struct switch_flow_classify swfcl = { 0 };
 swpo = (struct switch_port *)ifp->if_switchport;
 if (swpo == ((void *)0))
  goto discard;
 sc = swpo->swpo_switch;
 if ((sc->sc_if.if_flags & (0x1|0x40)) != (0x1|0x40))
  goto discard;
 if (sc->sc_if.if_bpf)
  bpf_mtap_ether(sc->sc_if.if_bpf, m, 1);
 if (m->M_dat.MH.MH_pkthdr.len < sizeof(struct ether_header))
  goto discard;
 if ((m = switch_port_ingress(sc, ifp, m)) == ((void *)0))
  return;
 if ((m = switch_flow_classifier(m, swpo->swpo_port_no,
     &swfcl)) == ((void *)0)) {
  switch_swfcl_free(&swfcl);
  return;
 }
 if (sc->sc_if.if_flags & 0x4)
  switch_flow_classifier_dump(sc, &swfcl);
 if (!sc->switch_process_forward)
  goto discard;
 (sc->switch_process_forward)(sc, &swfcl, m);
 switch_swfcl_free(&swfcl);
 return;
discard:
 m_freem(m);
 switch_swfcl_free(&swfcl);
 if (sc)
  sc->sc_if.if_data.ifi_oerrors++;
}
int
switch_port_set_local(struct switch_softc *sc, struct switch_port *swpo)
{
 struct switch_port *tswpo;
 struct ifreq ifreq;
 struct ifnet *ifs;
 int error = 0, re_up = 0;
 for((tswpo) = ((&sc->sc_swpo_list)->tqh_first); (tswpo) != ((void *)0); (tswpo) = ((tswpo)->swpo_list_next.tqe_next)) {
  if (tswpo->swpo_flags & 0x1000)
   return (17);
 }
 ifs = if_get(swpo->swpo_ifindex);
 if (ifs == ((void *)0))
  return (2);
 if (ifs->if_flags & 0x1) {
  re_up = 1;
  __builtin_memset((&ifreq), (0), (sizeof(ifreq)));
  strlcpy(ifreq.ifr_name, ifs->if_xname, 16);
  ifs->if_flags &= ~0x1;
  ifreq.ifr_ifru.ifru_flags = ifs->if_flags;
  error = (*ifs->if_ioctl)(ifs, ((unsigned long)0x80000000 | ((sizeof(struct ifreq) & 0x1fff) << 16) | ((('i')) << 8) | ((16))), (caddr_t)&ifreq);
  if (error)
   goto error;
 }
 swpo->swpo_flags |= 0x1000;
 swpo->swpo_port_no = 0xfffffffe;
 swpo->swop_bk_start = ifs->if_start;
 ifs->if_start = switch_port_ifb_start;
 if (re_up) {
  __builtin_memset((&ifreq), (0), (sizeof(ifreq)));
  strlcpy(ifreq.ifr_name, ifs->if_xname, 16);
  ifs->if_flags &= 0x1;
  ifreq.ifr_ifru.ifru_flags = ifs->if_flags;
  error = (*ifs->if_ioctl)(ifs, ((unsigned long)0x80000000 | ((sizeof(struct ifreq) & 0x1fff) << 16) | ((('i')) << 8) | ((16))), (caddr_t)&ifreq);
  if (error)
   goto error;
 }
 error:
 if_put(ifs);
 return (error);
}
int
switch_port_unset_local(struct switch_softc *sc, struct switch_port *swpo)
{
 struct ifreq ifreq;
 struct ifnet *ifs;
 int error = 0, re_up = 0;
 ifs = if_get(swpo->swpo_ifindex);
 if (ifs == ((void *)0))
  return (2);
 if (ifs->if_flags & 0x1) {
  re_up = 1;
  __builtin_memset((&ifreq), (0), (sizeof(ifreq)));
  strlcpy(ifreq.ifr_name, ifs->if_xname, 16);
  ifs->if_flags &= ~0x1;
  ifreq.ifr_ifru.ifru_flags = ifs->if_flags;
  error = (*ifs->if_ioctl)(ifs, ((unsigned long)0x80000000 | ((sizeof(struct ifreq) & 0x1fff) << 16) | ((('i')) << 8) | ((16))), (caddr_t)&ifreq);
  if (error)
   goto error;
 }
 swpo->swpo_flags &= ~0x1000;
 swpo->swpo_port_no = swofp_assign_portno(sc, ifs->if_index);
 ifs->if_start = swpo->swop_bk_start;
 swpo->swop_bk_start = ((void *)0);
 if (re_up) {
  __builtin_memset((&ifreq), (0), (sizeof(ifreq)));
  strlcpy(ifreq.ifr_name, ifs->if_xname, 16);
  ifs->if_flags &= 0x1;
  ifreq.ifr_ifru.ifru_flags = ifs->if_flags;
  error = (*ifs->if_ioctl)(ifs, ((unsigned long)0x80000000 | ((sizeof(struct ifreq) & 0x1fff) << 16) | ((('i')) << 8) | ((16))), (caddr_t)&ifreq);
  if (error)
   goto error;
 }
 error:
 if_put(ifs);
 return (error);
}
int
switch_ioctl(struct ifnet *ifp, unsigned long cmd, caddr_t data)
{
 struct ifbaconf *baconf = (struct ifbaconf *)data;
 struct ifbropreq *brop = (struct ifbropreq *)data;
 struct ifbrlconf *bc = (struct ifbrlconf *)data;
 struct ifbreq *breq = (struct ifbreq *)data;
 struct switch_softc *sc = ifp->if_softc;
 struct bstp_state *bs = sc->sc_stp;
 struct bstp_port *bp;
 struct ifnet *ifs;
 struct switch_port *swpo;
 int error = 0;
 switch (cmd) {
 case ((unsigned long)0x80000000 | ((sizeof(struct ifbreq) & 0x1fff) << 16) | ((('i')) << 8) | ((60))):
  if ((error = suser((__curcpu->ci_self)->ci_curproc)) != 0)
   break;
  error = switch_port_add(sc, (struct ifbreq *)data);
  break;
 case ((unsigned long)0x80000000 | ((sizeof(struct ifbreq) & 0x1fff) << 16) | ((('i')) << 8) | ((61))):
  if ((error = suser((__curcpu->ci_self)->ci_curproc)) != 0)
   break;
  error = switch_port_del(sc, (struct ifbreq *)data);
  break;
 case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct ifbreq) & 0x1fff) << 16) | ((('i')) << 8) | ((66))):
  error = switch_port_list(sc, (struct ifbifconf *)data);
  break;
 case ((unsigned long)0x80000000 | ((sizeof(struct ifbreq) & 0x1fff) << 16) | ((('i')) << 8) | ((73))):
  if ((error = suser((__curcpu->ci_self)->ci_curproc)) != 0)
   break;
  error = switch_port_add(sc, (struct ifbreq *)data);
  if (error && error != 17)
   break;
  ifs = ifunit(breq->ifbr_ifsname);
  if (ifs == ((void *)0)) {
   error = 2;
   break;
  }
  swpo = (struct switch_port *)ifs->if_switchport;
  if (swpo == ((void *)0) || swpo->swpo_switch != sc) {
   error = 3;
   break;
  }
  error = switch_port_set_local(sc, swpo);
  break;
 case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct ifbreq) & 0x1fff) << 16) | ((('i')) << 8) | ((62))):
  ifs = ifunit(breq->ifbr_ifsname);
  if (ifs == ((void *)0)) {
   error = 2;
   break;
  }
  swpo = (struct switch_port *)ifs->if_switchport;
  if (swpo == ((void *)0) || swpo->swpo_switch != sc) {
   error = 3;
   break;
  }
  breq->ifbr_ifsflags = swpo->swpo_flags;
  breq->ifbr_portno = swpo->swpo_port_no;
  break;
 case ((unsigned long)0x80000000 | ((sizeof(struct ifreq) & 0x1fff) << 16) | ((('i')) << 8) | ((16))):
  if ((ifp->if_flags & 0x1) == 0x1)
   ifp->if_flags |= 0x40;
  if ((ifp->if_flags & 0x1) == 0)
   ifp->if_flags &= ~0x40;
  break;
 case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct ifbaconf) & 0x1fff) << 16) | ((('i')) << 8) | ((67))):
  baconf->ifbac_len = 0;
  break;
 case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct ifbrlconf) & 0x1fff) << 16) | ((('i')) << 8) | ((79))):
  bc->ifbrl_len = 0;
  break;
 case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct ifbropreq) & 0x1fff) << 16) | ((('i')) << 8) | ((88))):
  if ((bp = bs->bs_root_port) == ((void *)0))
   brop->ifbop_root_port = 0;
  else
   brop->ifbop_root_port = bp->bp_ifp->if_index;
  brop->ifbop_maxage = bs->bs_bridge_max_age >> 8;
  brop->ifbop_hellotime = bs->bs_bridge_htime >> 8;
  brop->ifbop_fwddelay = bs->bs_bridge_fdelay >> 8;
  brop->ifbop_holdcount = bs->bs_txholdcount;
  brop->ifbop_priority = bs->bs_bridge_priority;
  brop->ifbop_protocol = bs->bs_protover;
  brop->ifbop_root_bridge = bs->bs_root_pv.pv_root_id;
  brop->ifbop_root_path_cost = bs->bs_root_pv.pv_cost;
  brop->ifbop_root_port = bs->bs_root_pv.pv_port_id;
  brop->ifbop_desg_bridge = bs->bs_root_pv.pv_dbridge_id;
  brop->ifbop_last_tc_time.tv_sec = bs->bs_last_tc_time.tv_sec;
  brop->ifbop_last_tc_time.tv_usec = bs->bs_last_tc_time.tv_usec;
  break;
 case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct ifbrparam) & 0x1fff) << 16) | ((('i')) << 8) | ((91))):
 case ((unsigned long)0x80000000 | ((sizeof(struct ifbrparam) & 0x1fff) << 16) | ((('i')) << 8) | ((92))):
 case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct ifbrparam) & 0x1fff) << 16) | ((('i')) << 8) | ((96))):
 case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct ifbrparam) & 0x1fff) << 16) | ((('i')) << 8) | ((93))):
 case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct ifbreq) & 0x1fff) << 16) | ((('i')) << 8) | ((95))):
  error = swofp_ioctl(ifp, cmd, data);
  break;
 default:
  error = 25;
  break;
 }
 return (error);
}
int
switch_port_add(struct switch_softc *sc, struct ifbreq *req)
{
 struct ifnet *ifs;
 struct switch_port *swpo;
 int error;
 if ((ifs = ifunit(req->ifbr_ifsname)) == ((void *)0))
  return (2);
 if (ifs->if_bridgeport != ((void *)0))
  return (16);
 if (ifs->if_switchport != ((void *)0)) {
  swpo = (struct switch_port *)ifs->if_switchport;
  if (swpo->swpo_switch == sc)
   return (17);
  else
   return (16);
 }
 if (ifs->if_data.ifi_type == 0x06) {
  if ((error = ifpromisc(ifs, 1)) != 0)
   return (error);
 }
 swpo = malloc(sizeof(*swpo), 2, 0x0002|0x0008);
 if (swpo == ((void *)0)) {
  if (ifs->if_data.ifi_type == 0x06)
   ifpromisc(ifs, 0);
  return (12);
 }
 swpo->swpo_switch = sc;
 swpo->swpo_ifindex = ifs->if_index;
 ifs->if_switchport = (caddr_t)swpo;
 if_ih_insert(ifs, switch_input, ((void *)0));
 swpo->swpo_port_no = swofp_assign_portno(sc, ifs->if_index);
 swpo->swpo_dhcookie = hook_establish(ifs->if_detachhooks, 0,
     switch_port_detach, ifs);
 nanouptime(&swpo->swpo_appended);
 do { (swpo)->swpo_list_next.tqe_next = ((void *)0); (swpo)->swpo_list_next.tqe_prev = (&sc->sc_swpo_list)->tqh_last; *(&sc->sc_swpo_list)->tqh_last = (swpo); (&sc->sc_swpo_list)->tqh_last = &(swpo)->swpo_list_next.tqe_next; } while (0);
 return (0);
}
int
switch_port_list(struct switch_softc *sc, struct ifbifconf *bifc)
{
 struct switch_port *swpo;
 struct ifnet *ifs;
 struct ifbreq breq;
 int total = 0, n = 0, error = 0;
 for((swpo) = ((&sc->sc_swpo_list)->tqh_first); (swpo) != ((void *)0); (swpo) = ((swpo)->swpo_list_next.tqe_next))
  total++;
 if (bifc->ifbic_len == 0)
  goto done;
 for((swpo) = ((&sc->sc_swpo_list)->tqh_first); (swpo) != ((void *)0); (swpo) = ((swpo)->swpo_list_next.tqe_next)) {
  __builtin_memset((&breq), (0), (sizeof(breq)));
  if (bifc->ifbic_len < sizeof(breq))
   break;
  ifs = if_get(swpo->swpo_ifindex);
  if (ifs == ((void *)0)) {
   error = 2;
   goto done;
  }
  strlcpy(breq.ifbr_ifsname, ifs->if_xname, 16);
  if_put(ifs);
  strlcpy(breq.ifbr_name, sc->sc_if.if_xname, 16);
  breq.ifbr_ifsflags = swpo->swpo_flags;
  breq.ifbr_portno = swpo->swpo_port_no;
  if ((error = copyout((caddr_t)&breq,
      (caddr_t)(bifc->ifbic_ifbicu.ifbicu_req + n), sizeof(breq))) != 0)
   goto done;
  bifc->ifbic_len -= sizeof(breq);
  n++;
 }
done:
 bifc->ifbic_len = n * sizeof(breq);
 return (error);
}
void
switch_port_detach(void *arg)
{
 struct ifnet *ifp = (struct ifnet *)arg;
 struct switch_softc *sc;
 struct switch_port *swpo;
 swpo = (struct switch_port *)ifp->if_switchport;
 sc = swpo->swpo_switch;
 if (swpo->swpo_flags & 0x1000)
  switch_port_unset_local(sc, swpo);
 ifp->if_switchport = ((void *)0);
 hook_disestablish(ifp->if_detachhooks, swpo->swpo_dhcookie);
 ifpromisc(ifp, 0);
 if_ih_remove(ifp, switch_input, ((void *)0));
 do { if (((swpo)->swpo_list_next.tqe_next) != ((void *)0)) (swpo)->swpo_list_next.tqe_next->swpo_list_next.tqe_prev = (swpo)->swpo_list_next.tqe_prev; else (&sc->sc_swpo_list)->tqh_last = (swpo)->swpo_list_next.tqe_prev; *(swpo)->swpo_list_next.tqe_prev = (swpo)->swpo_list_next.tqe_next; ((swpo)->swpo_list_next.tqe_prev) = ((void *)-1); ((swpo)->swpo_list_next.tqe_next) = ((void *)-1); } while (0);
 free(swpo, 2, sizeof(*swpo));
}
int
switch_port_del(struct switch_softc *sc, struct ifbreq *req)
{
 struct switch_port *swpo;
 struct ifnet *ifs;
 int error = 0;
 for((swpo) = ((&sc->sc_swpo_list)->tqh_first); (swpo) != ((void *)0); (swpo) = ((swpo)->swpo_list_next.tqe_next)) {
  if ((ifs = if_get(swpo->swpo_ifindex)) == ((void *)0))
   continue;
  if (strncmp(ifs->if_xname, req->ifbr_ifsname, 16) == 0)
   break;
  if_put(ifs);
 }
 if (swpo) {
  switch_port_detach(ifs);
  if_put(ifs);
  error = 0;
 } else
  error = 2;
 return (error);
}
int
switch_input(struct ifnet *ifp, struct mbuf *m, void *cookie)
{
 ((m->m_hdr.mh_flags & 0x0002) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../net/if_switch.c", 624, "m->m_flags & M_PKTHDR"));
 if (m->m_hdr.mh_flags & 0x0010) {
  m->m_hdr.mh_flags &= ~0x0010;
  return (0);
 }
 niq_enqueue(&switchintrq, m);
 return (1);
}
struct mbuf *
switch_port_ingress(struct switch_softc *sc, struct ifnet *src_if,
    struct mbuf *m)
{
 struct switch_port *swpo;
 struct ether_header eh;
 swpo = (struct switch_port *)src_if->if_switchport;
 sc->sc_if.if_data.ifi_ipackets++;
 sc->sc_if.if_data.ifi_ibytes += m->M_dat.MH.MH_pkthdr.len;
 m_copydata(m, 0, ((6 * 2) + 2), (caddr_t)&eh);
 return (m);
}
void
switch_port_egress(struct switch_softc *sc, struct switch_fwdp_queue *fwdp_q,
    struct mbuf *m)
{
 struct switch_port *swpo;
 struct ifnet *dst_if;
 struct mbuf *mc;
 struct ether_header eh;
 int len, used = 0;
 if (sc->sc_if.if_bpf)
  bpf_mtap(sc->sc_if.if_bpf, m, (1<<1));
 m_copydata(m, 0, ((6 * 2) + 2), (caddr_t)&eh);
 for((swpo) = ((fwdp_q)->tqh_first); (swpo) != ((void *)0); (swpo) = ((swpo)->swpo_fwdp_next.tqe_next)) {
  if ((dst_if = if_get(swpo->swpo_ifindex)) == ((void *)0))
   continue;
  if ((dst_if->if_flags & 0x40) == 0)
   goto out;
  if (((swpo)->swpo_fwdp_next.tqe_next) == ((void *)0)) {
   mc = m;
   used = 1;
  } else {
   mc = m_dup_pkt(m, 2, 0x0002);
   if (mc == ((void *)0))
    goto out;
  }
  len = mc->M_dat.MH.MH_pkthdr.len;
  if ((mc->m_hdr.mh_flags & 0x0020) &&
      (dst_if->if_data.ifi_capabilities & 0x00000020) == 0)
   len += 4;
  if (!(swpo->swpo_flags & 0x1000) &&
      ((len - ((6 * 2) + 2)) > dst_if->if_data.ifi_mtu))
   bridge_fragment((struct bridge_softc *)sc,
       dst_if, &eh, mc);
  else
   switch_ifenqueue(sc, dst_if, mc,
       (swpo->swpo_flags & 0x1000));
 out:
  if_put(dst_if);
 }
 if (!used)
  m_freem(m);
}
int
switch_ifenqueue(struct switch_softc *sc, struct ifnet *ifp,
    struct mbuf *m, int local)
{
 struct mbuf_list ml = { ((void *)0), ((void *)0), 0 };
 int error, len;
 m->m_hdr.mh_flags |= 0x0010;
 len = m->M_dat.MH.MH_pkthdr.len;
 if (local) {
  ml_enqueue(&ml, m);
  if_input(ifp, &ml);
 } else {
  error = if_enqueue(ifp, m);
  if (error) {
   sc->sc_if.if_data.ifi_oerrors++;
   return (error);
  }
  sc->sc_if.if_data.ifi_opackets++;
  sc->sc_if.if_data.ifi_obytes += len;
 }
 return (0);
}
void
switch_port_ifb_start(struct ifnet *ifp)
{
 struct mbuf *m;
 struct mbuf_list ml = { ((void *)0), ((void *)0), 0 };
 for (;;) {
  do { (m) = ifq_dequeue(&ifp->if_snd); } while ( 0);
  if (m == ((void *)0))
   return;
  if (ifp->if_bpf)
   bpf_mtap(ifp->if_bpf, m, (1<<1));
  ml_enqueue(&ml, m);
  if_input(ifp, &ml);
 }
}
int
switch_swfcl_dup(struct switch_flow_classify *from,
    struct switch_flow_classify *to)
{
 __builtin_memset((to), (0), (sizeof(*to)));
 to->swfcl_flow_hash = from->swfcl_flow_hash;
 to->swfcl_metadata = from->swfcl_metadata;
 to->swfcl_cookie = from->swfcl_cookie;
 to->swfcl_table_id = from->swfcl_table_id;
 to->swfcl_in_port = from->swfcl_in_port;
 if (from->swfcl_tunnel) {
  to->swfcl_tunnel = pool_get(&swfcl_pool, 0x0002|0x0008);
  if (to->swfcl_tunnel == ((void *)0))
   goto failed;
  __builtin_memcpy((to->swfcl_tunnel), (from->swfcl_tunnel), (sizeof(*from->swfcl_tunnel)));
 }
 if (from->swfcl_ether) {
  to->swfcl_ether = pool_get(&swfcl_pool, 0x0002|0x0008);
  if (to->swfcl_ether == ((void *)0))
   goto failed;
  __builtin_memcpy((to->swfcl_ether), (from->swfcl_ether), (sizeof(*from->swfcl_ether)));
 }
 if (from->swfcl_vlan) {
  to->swfcl_vlan = pool_get(&swfcl_pool, 0x0002|0x0008);
  if (to->swfcl_vlan == ((void *)0))
   goto failed;
  __builtin_memcpy((to->swfcl_vlan), (from->swfcl_vlan), (sizeof(*from->swfcl_vlan)));
 }
 if (from->swfcl_ipv4) {
  to->swfcl_ipv4 = pool_get(&swfcl_pool, 0x0002|0x0008);
  if (to->swfcl_ipv4 == ((void *)0))
   goto failed;
  __builtin_memcpy((to->swfcl_ipv4), (from->swfcl_ipv4), (sizeof(*from->swfcl_ipv4)));
 }
 if (from->swfcl_ipv6) {
  to->swfcl_ipv6 = pool_get(&swfcl_pool, 0x0002|0x0008);
  if (to->swfcl_ipv6 == ((void *)0))
   goto failed;
  __builtin_memcpy((to->swfcl_ipv6), (from->swfcl_ipv6), (sizeof(*from->swfcl_ipv6)));
 }
 if (from->swfcl_arp) {
  to->swfcl_arp = pool_get(&swfcl_pool, 0x0002|0x0008);
  if (to->swfcl_arp == ((void *)0))
   goto failed;
  __builtin_memcpy((to->swfcl_arp), (from->swfcl_arp), (sizeof(*from->swfcl_arp)));
 }
 if (from->swfcl_nd6) {
  to->swfcl_nd6 = pool_get(&swfcl_pool, 0x0002|0x0008);
  if (to->swfcl_nd6 == ((void *)0))
   goto failed;
  __builtin_memcpy((to->swfcl_nd6), (from->swfcl_nd6), (sizeof(*from->swfcl_nd6)));
 }
 if (from->swfcl_icmpv4) {
  to->swfcl_icmpv4 = pool_get(&swfcl_pool, 0x0002|0x0008);
  if (to->swfcl_icmpv4 == ((void *)0))
   goto failed;
  __builtin_memcpy((to->swfcl_icmpv4), (from->swfcl_icmpv4), (sizeof(*from->swfcl_icmpv4)));
 }
 if (from->swfcl_icmpv6) {
  to->swfcl_icmpv6 = pool_get(&swfcl_pool, 0x0002|0x0008);
  if (to->swfcl_icmpv6 == ((void *)0))
   goto failed;
  __builtin_memcpy((to->swfcl_icmpv6), (from->swfcl_icmpv6), (sizeof(*from->swfcl_icmpv6)));
 }
 if (from->swfcl_tcp) {
  to->swfcl_tcp = pool_get(&swfcl_pool, 0x0002|0x0008);
  if (to->swfcl_tcp == ((void *)0))
   goto failed;
  __builtin_memcpy((to->swfcl_tcp), (from->swfcl_tcp), (sizeof(*from->swfcl_tcp)));
 }
 if (from->swfcl_udp) {
  to->swfcl_udp = pool_get(&swfcl_pool, 0x0002|0x0008);
  if (to->swfcl_udp == ((void *)0))
   goto failed;
  __builtin_memcpy((to->swfcl_udp), (from->swfcl_udp), (sizeof(*from->swfcl_udp)));
 }
 if (from->swfcl_sctp) {
  to->swfcl_sctp = pool_get(&swfcl_pool, 0x0002|0x0008);
  if (to->swfcl_sctp == ((void *)0))
   goto failed;
  __builtin_memcpy((to->swfcl_sctp), (from->swfcl_sctp), (sizeof(*from->swfcl_sctp)));
 }
 return (0);
 failed:
 switch_swfcl_free(to);
 return (55);
}
void
switch_swfcl_free(struct switch_flow_classify *swfcl)
{
 if (swfcl->swfcl_tunnel)
  pool_put(&swfcl_pool, swfcl->swfcl_tunnel);
 if (swfcl->swfcl_ether)
  pool_put(&swfcl_pool, swfcl->swfcl_ether);
 if (swfcl->swfcl_vlan)
  pool_put(&swfcl_pool, swfcl->swfcl_vlan);
 if (swfcl->swfcl_ipv4)
  pool_put(&swfcl_pool, swfcl->swfcl_ipv4);
 if (swfcl->swfcl_ipv6)
  pool_put(&swfcl_pool, swfcl->swfcl_ipv6);
 if (swfcl->swfcl_arp)
  pool_put(&swfcl_pool, swfcl->swfcl_arp);
 if (swfcl->swfcl_nd6)
  pool_put(&swfcl_pool, swfcl->swfcl_nd6);
 if (swfcl->swfcl_icmpv4)
  pool_put(&swfcl_pool, swfcl->swfcl_icmpv4);
 if (swfcl->swfcl_icmpv6)
  pool_put(&swfcl_pool, swfcl->swfcl_icmpv6);
 if (swfcl->swfcl_tcp)
  pool_put(&swfcl_pool, swfcl->swfcl_tcp);
 if (swfcl->swfcl_udp)
  pool_put(&swfcl_pool, swfcl->swfcl_udp);
 if (swfcl->swfcl_sctp)
  pool_put(&swfcl_pool, swfcl->swfcl_sctp);
 __builtin_memset((swfcl), (0), (sizeof(*swfcl)));
}
struct mbuf *
switch_flow_classifier_udp(struct mbuf *m, int *offset,
    struct switch_flow_classify *swfcl)
{
 struct udphdr *uh;
 swfcl->swfcl_udp = pool_get(&swfcl_pool, 0x0002|0x0008);
 if (swfcl->swfcl_udp == ((void *)0)) {
  m_freem(m);
  return (((void *)0));
 }
 if (m->m_hdr.mh_len < (*offset + sizeof(*uh)) &&
     (m = m_pullup(m, *offset + sizeof(*uh))) == ((void *)0))
  return (((void *)0));
 uh = (struct udphdr *)((m)->m_hdr.mh_data + *offset);
 swfcl->swfcl_udp->udp_src = uh->uh_sport;
 swfcl->swfcl_udp->udp_dst = uh->uh_dport;
 return (m);
}
struct mbuf *
switch_flow_classifier_tcp(struct mbuf *m, int *offset,
    struct switch_flow_classify *swfcl)
{
 struct tcphdr *th;
 swfcl->swfcl_tcp = pool_get(&swfcl_pool, 0x0002|0x0008);
 if (swfcl->swfcl_tcp == ((void *)0)) {
  m_freem(m);
  return (((void *)0));
 }
 if (m->m_hdr.mh_len < (*offset + sizeof(*th)) &&
     (m = m_pullup(m, *offset + sizeof(*th))) == ((void *)0))
  return (((void *)0));
 th = (struct tcphdr *)((m)->m_hdr.mh_data + *offset);
 swfcl->swfcl_tcp->tcp_src = th->th_sport;
 swfcl->swfcl_tcp->tcp_dst = th->th_dport;
 swfcl->swfcl_tcp->tcp_flags = th->th_flags;
 return (m);
}
struct mbuf *
switch_flow_classifier_icmpv4(struct mbuf *m, int *offset,
    struct switch_flow_classify *swfcl)
{
 struct icmp *icmp;
 swfcl->swfcl_icmpv4 = pool_get(&swfcl_pool, 0x0002|0x0008);
 if (swfcl->swfcl_icmpv4 == ((void *)0)) {
  m_freem(m);
  return (((void *)0));
 }
 if (m->m_hdr.mh_len < (*offset + 8) &&
     (m = m_pullup(m, (*offset + 8))) == ((void *)0))
  return (((void *)0));
 icmp = (struct icmp *)((m)->m_hdr.mh_data + *offset);
 swfcl->swfcl_icmpv4->icmpv4_type = icmp->icmp_type;
 swfcl->swfcl_icmpv4->icmpv4_code = icmp->icmp_code;
 return (m);
}
struct mbuf *
switch_flow_classifier_nd6(struct mbuf *m, int *offset,
    struct switch_flow_classify *swfcl)
{
 struct icmp6_hdr *icmp6;
 struct nd_neighbor_advert *nd_na;
 struct nd_neighbor_solicit *nd_ns;
 union nd_opts ndopts;
 uint8_t *lladdr;
 int lladdrlen;
 int icmp6len = m->M_dat.MH.MH_pkthdr.len - *offset;
 do { struct mbuf *t; int tmp; if ((m)->m_hdr.mh_len >= (*offset) + (sizeof(*icmp6))) (icmp6) = (struct icmp6_hdr *)(((caddr_t)(((m))->m_hdr.mh_data)) + (*offset)); else { t = m_pulldown((m), (*offset), (sizeof(*icmp6)), &tmp); if (t) { if (t->m_hdr.mh_len < tmp + (sizeof(*icmp6))) panic("m_pulldown malfunction"); (icmp6) = (struct icmp6_hdr *)(((caddr_t)((t)->m_hdr.mh_data)) + tmp); } else { (icmp6) = (struct icmp6_hdr *)((void *)0); (m) = ((void *)0); } } } while ( 0);
 if (icmp6 == ((void *)0))
  goto failed;
 switch (icmp6->icmp6_type) {
 case 136:
  if (icmp6len < sizeof(struct nd_neighbor_advert))
   goto failed;
  break;
 case 135:
  if (icmp6len < sizeof(struct nd_neighbor_solicit))
   goto failed;
  break;
 }
 swfcl->swfcl_nd6 = pool_get(&swfcl_pool, 0x0002|0x0008);
 if (swfcl->swfcl_nd6 == ((void *)0))
  goto failed;
 switch (icmp6->icmp6_type) {
 case 136:
  do { struct mbuf *t; int tmp; if ((m)->m_hdr.mh_len >= (*offset) + (icmp6len)) (nd_na) = (struct nd_neighbor_advert *)(((caddr_t)(((m))->m_hdr.mh_data)) + (*offset)); else { t = m_pulldown((m), (*offset), (icmp6len), &tmp); if (t) { if (t->m_hdr.mh_len < tmp + (icmp6len)) panic("m_pulldown malfunction"); (nd_na) = (struct nd_neighbor_advert *)(((caddr_t)((t)->m_hdr.mh_data)) + tmp); } else { (nd_na) = (struct nd_neighbor_advert *)((void *)0); (m) = ((void *)0); } } } while ( 0);
  if (nd_na == ((void *)0))
   goto failed;
  swfcl->swfcl_nd6->nd6_target = nd_na->nd_na_target;
  icmp6len -= sizeof(*nd_na);
  nd6_option_init(nd_na + 1, icmp6len, &ndopts);
  if (nd6_options(&ndopts) < 0)
   goto failed;
  if (!ndopts.nd_opt_each.tgt_lladdr)
   goto failed;
  lladdr = (char *)(ndopts.nd_opt_each.tgt_lladdr + 1);
  lladdrlen = (ndopts.nd_opt_each.tgt_lladdr->nd_opt_len << 3) - 2;
  if (lladdrlen != 6)
   goto failed;
  __builtin_memcpy((swfcl->swfcl_nd6->nd6_lladdr), (lladdr), (6));
  break;
 case 135:
  do { struct mbuf *t; int tmp; if ((m)->m_hdr.mh_len >= (*offset) + (icmp6len)) (nd_ns) = (struct nd_neighbor_solicit *)(((caddr_t)(((m))->m_hdr.mh_data)) + (*offset)); else { t = m_pulldown((m), (*offset), (icmp6len), &tmp); if (t) { if (t->m_hdr.mh_len < tmp + (icmp6len)) panic("m_pulldown malfunction"); (nd_ns) = (struct nd_neighbor_solicit *)(((caddr_t)((t)->m_hdr.mh_data)) + tmp); } else { (nd_ns) = (struct nd_neighbor_solicit *)((void *)0); (m) = ((void *)0); } } } while ( 0);
  if (nd_ns == ((void *)0))
   goto failed;
  swfcl->swfcl_nd6->nd6_target = nd_ns->nd_ns_target;
  icmp6len -= sizeof(*nd_ns);
  nd6_option_init(nd_ns + 1, icmp6len, &ndopts);
  if (nd6_options(&ndopts) < 0)
   goto failed;
  if (!ndopts.nd_opt_each.src_lladdr)
   goto failed;
  lladdr = (char *)(ndopts.nd_opt_each.src_lladdr + 1);
  lladdrlen = (ndopts.nd_opt_each.src_lladdr->nd_opt_len << 3) - 2;
  if (lladdrlen != 6)
   goto failed;
  __builtin_memcpy((swfcl->swfcl_nd6->nd6_lladdr), (lladdr), (6));
  break;
 }
 return (m);
 failed:
 m_freem(m);
 return (((void *)0));
}
struct mbuf *
switch_flow_classifier_icmpv6(struct mbuf *m, int *offset,
    struct switch_flow_classify *swfcl)
{
 struct icmp6_hdr *icmp6;
 swfcl->swfcl_icmpv6 = pool_get(&swfcl_pool, 0x0002|0x0008);
 if (swfcl->swfcl_icmpv6 == ((void *)0)) {
  m_freem(m);
  return (((void *)0));
 }
 do { struct mbuf *t; int tmp; if ((m)->m_hdr.mh_len >= (*offset) + (sizeof(*icmp6))) (icmp6) = (struct icmp6_hdr *)(((caddr_t)(((m))->m_hdr.mh_data)) + (*offset)); else { t = m_pulldown((m), (*offset), (sizeof(*icmp6)), &tmp); if (t) { if (t->m_hdr.mh_len < tmp + (sizeof(*icmp6))) panic("m_pulldown malfunction"); (icmp6) = (struct icmp6_hdr *)(((caddr_t)((t)->m_hdr.mh_data)) + tmp); } else { (icmp6) = (struct icmp6_hdr *)((void *)0); (m) = ((void *)0); } } } while ( 0);
 if (icmp6 == ((void *)0))
  return (((void *)0));
 swfcl->swfcl_icmpv6->icmpv6_type = icmp6->icmp6_type;
 swfcl->swfcl_icmpv6->icmpv6_code = icmp6->icmp6_code;
 switch (icmp6->icmp6_type) {
 case 135:
 case 136:
  return switch_flow_classifier_nd6(m, offset, swfcl);
 }
 return (m);
}
struct mbuf *
switch_flow_classifier_ipv4(struct mbuf *m, int *offset,
    struct switch_flow_classify *swfcl)
{
 struct ip *ip;
 swfcl->swfcl_ipv4 = pool_get(&swfcl_pool, 0x0002|0x0008);
 if (swfcl->swfcl_ipv4 == ((void *)0)) {
  m_freem(m);
  return (((void *)0));
 }
 if (m->m_hdr.mh_len < (*offset + sizeof(*ip)) &&
     (m = m_pullup(m, *offset + sizeof(*ip))) == ((void *)0))
  return (((void *)0));
 ip = (struct ip *)((m)->m_hdr.mh_data + *offset);
 swfcl->swfcl_ipv4->ipv4_tos = ip->ip_tos;
 swfcl->swfcl_ipv4->ipv4_ttl = ip->ip_ttl;
 swfcl->swfcl_ipv4->ipv4_proto = ip->ip_p;
 __builtin_memcpy((&swfcl->swfcl_ipv4->ipv4_src), (&ip->ip_src.s_addr), (sizeof(uint32_t)));
 __builtin_memcpy((&swfcl->swfcl_ipv4->ipv4_dst), (&ip->ip_dst.s_addr), (sizeof(uint32_t)));
 *offset += (ip->ip_hl << 2);
 switch (ip->ip_p) {
 case 17:
  return switch_flow_classifier_udp(m, offset, swfcl);
 case 6:
  return switch_flow_classifier_tcp(m, offset, swfcl);
 case 1:
  return switch_flow_classifier_icmpv4(m, offset, swfcl);
 }
 return (m);
}
struct mbuf *
switch_flow_classifier_ipv6(struct mbuf *m, int *offset,
    struct switch_flow_classify *swfcl)
{
 struct ip6_hdr *ip6;
 swfcl->swfcl_ipv6 = pool_get(&swfcl_pool, 0x0002|0x0008);
 if (swfcl->swfcl_ipv6 == ((void *)0)) {
  m_freem(m);
  return (((void *)0));
 }
 if (m->m_hdr.mh_len < (*offset + sizeof(*ip6)) &&
     (m = m_pullup(m, *offset + sizeof(*ip6))) == ((void *)0))
  return (((void *)0));
 ip6 = (struct ip6_hdr *)((m)->m_hdr.mh_data + *offset);
 swfcl->swfcl_ipv6->ipv6_src = ip6->ip6_src;
 swfcl->swfcl_ipv6->ipv6_dst = ip6->ip6_dst;
 swfcl->swfcl_ipv6->ipv6_flow_label =
     (ip6->ip6_ctlun.ip6_un1.ip6_un1_flow & 0x000fffff);
 swfcl->swfcl_ipv6->ipv6_tclass = (((__uint32_t)(ip6->ip6_ctlun.ip6_un1.ip6_un1_flow)) >> 20);
 swfcl->swfcl_ipv6->ipv6_hlimit = ip6->ip6_ctlun.ip6_un1.ip6_un1_hlim;
 swfcl->swfcl_ipv6->ipv6_nxt = ip6->ip6_ctlun.ip6_un1.ip6_un1_nxt;
 *offset += sizeof(*ip6);
 switch (ip6->ip6_ctlun.ip6_un1.ip6_un1_nxt) {
 case 17:
  return switch_flow_classifier_udp(m, offset, swfcl);
 case 6:
  return switch_flow_classifier_tcp(m, offset, swfcl);
 case 58:
  return switch_flow_classifier_icmpv6(m, offset, swfcl);
 }
 return (m);
}
struct mbuf *
switch_flow_classifier_arp(struct mbuf *m, int *offset,
    struct switch_flow_classify *swfcl)
{
 struct ether_arp *ea;
 swfcl->swfcl_arp = pool_get(&swfcl_pool, 0x0002|0x0008);
 if (swfcl->swfcl_arp == ((void *)0)) {
  m_freem(m);
  return (((void *)0));
 }
 if (m->m_hdr.mh_len < (*offset + sizeof(*ea)) &&
     (m = m_pullup(m, *offset + sizeof(*ea))) == ((void *)0))
  return (((void *)0));
 ea = (struct ether_arp *)((m)->m_hdr.mh_data + *offset);
 swfcl->swfcl_arp->_arp_op = ea->ea_hdr.ar_op;
 __builtin_memcpy((swfcl->swfcl_arp->arp_sha), (&ea->arp_sha), (6));
 __builtin_memcpy((swfcl->swfcl_arp->arp_tha), (&ea->arp_tha), (6));
 __builtin_memcpy((&swfcl->swfcl_arp->arp_sip), (&ea->arp_spa), (sizeof(uint32_t)));
 __builtin_memcpy((&swfcl->swfcl_arp->arp_tip), (&ea->arp_tpa), (sizeof(uint32_t)));
 return (m);
}
struct mbuf *
switch_flow_classifier_ether(struct mbuf *m, int *offset,
    struct switch_flow_classify *swfcl)
{
 struct ether_header *eh;
 struct ether_vlan_header *evl;
 uint16_t ether_type;
 swfcl->swfcl_ether = pool_get(&swfcl_pool, 0x0002|0x0008);
 if (swfcl->swfcl_ether == ((void *)0)) {
  m_freem(m);
  return (((void *)0));
 }
 if (m->m_hdr.mh_len < sizeof(*eh) && (m = m_pullup(m, sizeof(*eh))) == ((void *)0))
  return (((void *)0));
 eh = ((struct ether_header *)((m)->m_hdr.mh_data));
 __builtin_memcpy((swfcl->swfcl_ether->eth_src), (eh->ether_shost), (6));
 __builtin_memcpy((swfcl->swfcl_ether->eth_dst), (eh->ether_dhost), (6));
 if ((m->m_hdr.mh_flags & 0x0020) ||
     (((__uint16_t)(eh->ether_type)) == 0x8100) ||
     (((__uint16_t)(eh->ether_type)) == 0x88A8)) {
  swfcl->swfcl_vlan = pool_get(&swfcl_pool, 0x0002|0x0008);
  if (swfcl->swfcl_vlan == ((void *)0)) {
   m_freem(m);
   return (((void *)0));
  }
 }
 if (m->m_hdr.mh_flags & 0x0020) {
  swfcl->swfcl_vlan->vlan_tpid = ((__uint16_t)(0x8100));
  swfcl->swfcl_vlan->vlan_vid =
      ((__uint16_t)(((m->M_dat.MH.MH_pkthdr.ether_vtag) & 0xFFF)));
  swfcl->swfcl_vlan->vlan_pcp =
      (((m->M_dat.MH.MH_pkthdr.ether_vtag) >> 13) & 7);
  ether_type = eh->ether_type;
  *offset += sizeof(*eh);
 } else if (((__uint16_t)(eh->ether_type)) == 0x8100) {
  if (m->m_hdr.mh_len < sizeof(*evl) &&
      (m = m_pullup(m, sizeof(*evl))) == ((void *)0))
   return (((void *)0));
  evl = ((struct ether_vlan_header *)((m)->m_hdr.mh_data));
  swfcl->swfcl_vlan->vlan_tpid = ((__uint16_t)(0x8100));
  swfcl->swfcl_vlan->vlan_vid =
      (evl->evl_tag & ((__uint16_t)(0xFFF)));
  swfcl->swfcl_vlan->vlan_pcp =
      (((((__uint16_t)(evl->evl_tag))) >> 13) & 7);
  ether_type = evl->evl_proto;
  *offset += sizeof(*evl);
 } else {
  ether_type = eh->ether_type;
  *offset += sizeof(*eh);
 }
 swfcl->swfcl_ether->eth_type = ether_type;
 ether_type = ((__uint16_t)(ether_type));
 switch (ether_type) {
 case 0x0806:
  return switch_flow_classifier_arp(m, offset, swfcl);
 case 0x0800:
  return switch_flow_classifier_ipv4(m, offset, swfcl);
 case 0x86DD:
  return switch_flow_classifier_ipv6(m, offset, swfcl);
 case 0x8847:
  break;
 }
 return (m);
}
struct mbuf *
switch_flow_classifier_tunnel(struct mbuf *m, int *offset,
    struct switch_flow_classify *swfcl)
{
 struct bridge_tunneltag *brtag;
 if ((brtag = bridge_tunnel(m)) == ((void *)0))
  goto out;
 if ((brtag->brtag_peer.sa.sa_family != 2) &&
     (brtag->brtag_peer.sa.sa_family != 24))
  goto out;
 swfcl->swfcl_tunnel = pool_get(&swfcl_pool, 0x0002|0x0008);
 if (swfcl->swfcl_tunnel == ((void *)0)) {
  m_freem(m);
  return (((void *)0));
 }
 swfcl->swfcl_tunnel->tun_af = brtag->brtag_peer.sa.sa_family;
 swfcl->swfcl_tunnel->tun_key = ((__uint64_t)(brtag->brtag_id));
 if (swfcl->swfcl_tunnel->tun_af == 2) {
  swfcl->swfcl_tunnel->tun_ipv4_src =
      brtag->brtag_local.sin.sin_addr;
  swfcl->swfcl_tunnel->tun_ipv4_dst =
      brtag->brtag_peer.sin.sin_addr;
 } else {
  swfcl->swfcl_tunnel->tun_ipv6_src =
      brtag->brtag_local.sin6.sin6_addr;
  swfcl->swfcl_tunnel->tun_ipv6_dst =
      brtag->brtag_peer.sin6.sin6_addr;
 }
 bridge_tunneluntag(m);
 out:
 return switch_flow_classifier_ether(m, offset, swfcl);
}
struct mbuf *
switch_flow_classifier(struct mbuf *m, uint32_t in_port,
    struct switch_flow_classify *swfcl)
{
 int offset = 0;
 __builtin_memset((swfcl), (0), (sizeof(*swfcl)));
 swfcl->swfcl_in_port = in_port;
 return switch_flow_classifier_tunnel(m, &offset, swfcl);
}
void
switch_flow_classifier_dump(struct switch_softc *sc,
    struct switch_flow_classify *swfcl)
{
 char saddr[46], daddr[46];
 log(7, "%s: ", sc->sc_if.if_xname);
 addlog("in_port(%u),", swfcl->swfcl_in_port);
 if (swfcl->swfcl_tunnel) {
  if (swfcl->swfcl_tunnel->tun_af == 2) {
   inet_ntop(2,
       (void *)&swfcl->swfcl_tunnel->tun_ipv4_src,
       saddr, sizeof(saddr));
   inet_ntop(2,
       (void *)&swfcl->swfcl_tunnel->tun_ipv4_dst,
       daddr, sizeof(daddr));
   addlog("tun_ipv4_src(%s),tun_ipv4_dst(%s),"
       "tun_id(%llu),", saddr, daddr,
       ((__uint64_t)(swfcl->swfcl_tunnel->tun_key)));
  } else if (swfcl->swfcl_tunnel->tun_af == 24) {
   inet_ntop(24,
       (void *)&swfcl->swfcl_tunnel->tun_ipv6_src,
       saddr, sizeof(saddr));
   inet_ntop(24,
       (void *)&swfcl->swfcl_tunnel->tun_ipv6_dst,
       daddr, sizeof(daddr));
   addlog("tun_ipv6_src(%s) tun_ipv6_dst(%s),"
       "tun_id(%llu),", saddr, daddr,
       ((__uint64_t)(swfcl->swfcl_tunnel->tun_key)));
  }
 }
 if (swfcl->swfcl_vlan) {
  addlog("vlan_tpid(0x%0x4x),vlan_pcp(%u),vlan_vid(%u),",
      ((__uint16_t)(swfcl->swfcl_vlan->vlan_tpid)),
      swfcl->swfcl_vlan->vlan_pcp,
      ((__uint16_t)(swfcl->swfcl_vlan->vlan_vid)));
 }
 if (swfcl->swfcl_ether) {
  addlog("eth_dst(%s),eth_src(%s),eth_type(0x%04x)",
      ether_sprintf(swfcl->swfcl_ether->eth_dst),
      ether_sprintf(swfcl->swfcl_ether->eth_src),
      ((__uint16_t)(swfcl->swfcl_ether->eth_type)));
 }
 if (swfcl->swfcl_arp) {
  inet_ntop(2, (void *)&swfcl->swfcl_arp->arp_sip,
      saddr, sizeof(saddr));
  inet_ntop(2, (void *)&swfcl->swfcl_arp->arp_tip,
      daddr, sizeof(daddr));
  addlog("arp_op(%x),arp_tha(%s),arp_sha(%s),arp_sip(%s),"
      "arp_tip(%s),", swfcl->swfcl_arp->_arp_op,
      ether_sprintf(swfcl->swfcl_arp->arp_tha),
      ether_sprintf(swfcl->swfcl_arp->arp_sha), saddr, daddr);
 }
 if (swfcl->swfcl_ipv4) {
  inet_ntop(2, (void *)&swfcl->swfcl_ipv4->ipv4_src,
      saddr, sizeof(saddr));
  inet_ntop(2, (void *)&swfcl->swfcl_ipv4->ipv4_dst,
      daddr, sizeof(daddr));
  addlog("ip_proto(%u),ip_tos(%u),ip_ttl(%u),ip_src(%s),"
      "ip_dst(%s),", swfcl->swfcl_ipv4->ipv4_proto,
      swfcl->swfcl_ipv4->ipv4_tos, swfcl->swfcl_ipv4->ipv4_ttl,
      saddr, daddr);
 }
 if (swfcl->swfcl_ipv6) {
  inet_ntop(24, (void *)&swfcl->swfcl_ipv6->ipv6_src,
      saddr, sizeof(saddr));
  inet_ntop(24, (void *)&swfcl->swfcl_ipv6->ipv6_dst,
      daddr, sizeof(daddr));
  addlog("ip6_nxt(%u),ip6_flow_label(%u),ip6_tclass(%d),"
      "ip6_hlimit(%u),ip6_src(%s),ip6_dst(%s),",
      swfcl->swfcl_ipv6->ipv6_nxt,
      ((__uint32_t)(swfcl->swfcl_ipv6->ipv6_flow_label)),
      swfcl->swfcl_ipv6->ipv6_tclass,
      swfcl->swfcl_ipv6->ipv6_hlimit, saddr, daddr);
 }
 if (swfcl->swfcl_icmpv4) {
  addlog("icmp_type(%u),icmp_code(%u),",
      swfcl->swfcl_icmpv4->icmpv4_type,
      swfcl->swfcl_icmpv4->icmpv4_code);
 }
 if (swfcl->swfcl_icmpv6) {
  addlog("icmp6_type(%u),icmp6_code(%u),",
      swfcl->swfcl_icmpv6->icmpv6_type,
      swfcl->swfcl_icmpv6->icmpv6_code);
 }
 if (swfcl->swfcl_nd6) {
  inet_ntop(24, (void *)&swfcl->swfcl_nd6->nd6_target,
      saddr, sizeof(saddr));
  addlog("nd_target(%s),nd_lladdr(%s),", saddr,
      ether_sprintf(swfcl->swfcl_nd6->nd6_lladdr));
 }
 if (swfcl->swfcl_tcp) {
  addlog("tcp_src(%u),tcp_dst(%u),tcp_flags(%x),",
      ((__uint16_t)(swfcl->swfcl_tcp->tcp_src)),
      ((__uint16_t)(swfcl->swfcl_tcp->tcp_dst)),
      swfcl->swfcl_tcp->tcp_flags);
 }
 if (swfcl->swfcl_udp) {
  addlog("udp_src(%u),udp_dst(%u),",
      ((__uint16_t)(swfcl->swfcl_udp->udp_src)),
      ((__uint16_t)(swfcl->swfcl_udp->udp_dst)));
 }
 addlog("\n");
}
int
switch_mtap(caddr_t arg, struct mbuf *m, int dir, uint64_t datapath_id)
{
 struct dlt_openflow_hdr of;
 of.of_datapath_id = ((__uint64_t)(datapath_id));
 of.of_direction = ((__uint32_t)(dir == 1 ? 1 : 2));
 return (bpf_mtap_hdr(arg, (caddr_t)&of, sizeof(of), m, dir, ((void *)0)));
}
int
ofp_split_mbuf(struct mbuf *m, struct mbuf **mtail)
{
 struct ofp_header *oh;
 uint16_t ohlen;
 *mtail = ((void *)0);
 again:
 if (m->M_dat.MH.MH_pkthdr.len < sizeof(*oh))
  return (-1);
 oh = ((struct ofp_header *)((m)->m_hdr.mh_data));
 ohlen = ((__uint16_t)(oh->oh_length));
 if (ohlen < sizeof(*oh)) {
  m_adj(m, sizeof(*oh));
  goto again;
 }
 if (m->M_dat.MH.MH_pkthdr.len == ohlen)
  return (0);
 else if (m->M_dat.MH.MH_pkthdr.len < ohlen)
  return (-1);
 *mtail = m_split(m, ohlen, 0x0002);
 if (*mtail == ((void *)0))
  return (-1);
 return (0);
}
