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
struct mbuf;
struct sockaddr;
struct socket;
struct domain;
struct proc;
struct protosw {
 short pr_type;
 struct domain *pr_domain;
 short pr_protocol;
 short pr_flags;
 int (*pr_input)(struct mbuf **, int *, int, int);
 int (*pr_output)(struct mbuf *, struct socket *, struct sockaddr *,
      struct mbuf *);
 void (*pr_ctlinput)(int, struct sockaddr *, u_int, void *);
 int (*pr_ctloutput)(int, struct socket *, int, int, struct mbuf *);
 int (*pr_usrreq)(struct socket *, int, struct mbuf *,
      struct mbuf *, struct mbuf *, struct proc *);
 int (*pr_attach)(struct socket *, int);
 int (*pr_detach)(struct socket *);
 void (*pr_init)(void);
 void (*pr_fasttimo)(void);
 void (*pr_slowtimo)(void);
 int (*pr_sysctl)(int *, u_int, void *, size_t *, void *, size_t);
};
struct sockaddr;
const struct protosw *pffindproto(int, int, int);
const struct protosw *pffindtype(int, int);
void pfctlinput(int, struct sockaddr *);
extern u_char ip_protox[];
extern const struct protosw inetsw[];
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
struct soqhead { struct socket *tqh_first; struct socket **tqh_last; };
struct socket {
 const struct protosw *so_proto;
 void *so_pcb;
 u_int so_state;
 short so_type;
 short so_options;
 short so_linger;
 struct socket *so_head;
 struct soqhead *so_onq;
 struct soqhead so_q0;
 struct soqhead so_q;
 struct { struct socket *tqe_next; struct socket **tqe_prev; } so_qe;
 short so_q0len;
 short so_qlen;
 short so_qlimit;
 short so_timeo;
 u_int so_error;
 pid_t so_pgid;
 uid_t so_siguid;
 uid_t so_sigeuid;
 u_long so_oobmark;
 struct sosplice {
  struct socket *ssp_socket;
  struct socket *ssp_soback;
  off_t ssp_len;
  off_t ssp_max;
  struct timeval ssp_idletv;
  struct timeout ssp_idleto;
  struct task ssp_task;
 } *so_sp;
 struct sockbuf {
  u_long sb_cc;
  u_long sb_datacc;
  u_long sb_hiwat;
  u_long sb_wat;
  u_long sb_mbcnt;
  u_long sb_mbmax;
  long sb_lowat;
  struct mbuf *sb_mb;
  struct mbuf *sb_mbtail;
  struct mbuf *sb_lastrecord;
  u_short sb_timeo;
  short sb_flags;
  int sb_flagsintr;
  struct selinfo sb_sel;
 } so_rcv, so_snd;
 void (*so_upcall)(struct socket *so, caddr_t arg, int waitf);
 caddr_t so_upcallarg;
 uid_t so_euid, so_ruid;
 gid_t so_egid, so_rgid;
 pid_t so_cpid;
};
void soassertlocked(struct socket *);
static inline int
sb_notify(struct socket *so, struct sockbuf *sb)
{
 int flags = (sb->sb_flags | sb->sb_flagsintr);
 ((sb == &so->so_rcv || sb == &so->so_snd) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../sys/socketvar.h", 178, "sb == &so->so_rcv || sb == &so->so_snd"));
 soassertlocked(so);
 return ((flags & (0x04|0x08|0x10|0x20|0x80)) != 0);
}
static inline long
sbspace(struct socket *so, struct sockbuf *sb)
{
 ((sb == &so->so_rcv || sb == &so->so_snd) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../sys/socketvar.h", 192, "sb == &so->so_rcv || sb == &so->so_snd"));
 return lmin(sb->sb_hiwat - sb->sb_cc, sb->sb_mbmax - sb->sb_mbcnt);
}
static inline int
soreadable(struct socket *so)
{
 soassertlocked(so);
 if (((so)->so_sp && (so)->so_sp->ssp_socket))
  return 0;
 return (so->so_state & 0x020) || so->so_qlen || so->so_error ||
     so->so_rcv.sb_cc >= so->so_rcv.sb_lowat;
}
int sblock(struct socket *, struct sockbuf *, int);
void sbunlock(struct socket *, struct sockbuf *);
extern u_long sb_max;
extern struct pool socket_pool;
struct mbuf;
struct sockaddr;
struct proc;
struct msghdr;
struct stat;
struct knote;
int soo_read(struct file *fp, off_t *, struct uio *uio,
     struct ucred *cred);
int soo_write(struct file *fp, off_t *, struct uio *uio,
     struct ucred *cred);
int soo_ioctl(struct file *fp, u_long cmd, caddr_t data,
     struct proc *p);
int soo_poll(struct file *fp, int events, struct proc *p);
int soo_kqfilter(struct file *fp, struct knote *kn);
int soo_close(struct file *fp, struct proc *p);
int soo_stat(struct file *, struct stat *, struct proc *);
void sbappend(struct socket *, struct sockbuf *, struct mbuf *);
void sbappendstream(struct socket *, struct sockbuf *, struct mbuf *);
int sbappendaddr(struct socket *, struct sockbuf *, struct sockaddr *,
     struct mbuf *, struct mbuf *);
int sbappendcontrol(struct socket *, struct sockbuf *, struct mbuf *,
     struct mbuf *);
void sbappendrecord(struct socket *, struct sockbuf *, struct mbuf *);
void sbcompress(struct sockbuf *sb, struct mbuf *m, struct mbuf *n);
struct mbuf *
 sbcreatecontrol(caddr_t p, int size, int type, int level);
void sbdrop(struct socket *, struct sockbuf *, int);
void sbdroprecord(struct sockbuf *sb);
void sbflush(struct socket *, struct sockbuf *);
void sbinsertoob(struct sockbuf *sb, struct mbuf *m0);
void sbrelease(struct socket *, struct sockbuf *);
int sbcheckreserve(u_long cnt, u_long defcnt);
int sbchecklowmem(void);
int sbreserve(struct socket *, struct sockbuf *, u_long);
int sbwait(struct socket *, struct sockbuf *sb);
int sb_lock(struct sockbuf *sb);
void soinit(void);
int soabort(struct socket *so);
int soaccept(struct socket *so, struct mbuf *nam);
int sobind(struct socket *so, struct mbuf *nam, struct proc *p);
void socantrcvmore(struct socket *so);
void socantsendmore(struct socket *so);
int soclose(struct socket *so);
int soconnect(struct socket *so, struct mbuf *nam);
int soconnect2(struct socket *so1, struct socket *so2);
int socreate(int dom, struct socket **aso, int type, int proto);
int sodisconnect(struct socket *so);
void sofree(struct socket *so);
int sogetopt(struct socket *so, int level, int optname, struct mbuf *m);
void sohasoutofband(struct socket *so);
void soisconnected(struct socket *so);
void soisconnecting(struct socket *so);
void soisdisconnected(struct socket *so);
void soisdisconnecting(struct socket *so);
int solisten(struct socket *so, int backlog);
struct socket *sonewconn(struct socket *head, int connstatus);
void soqinsque(struct socket *head, struct socket *so, int q);
int soqremque(struct socket *so, int q);
int soreceive(struct socket *so, struct mbuf **paddr, struct uio *uio,
     struct mbuf **mp0, struct mbuf **controlp, int *flagsp,
     socklen_t controllen);
int soreserve(struct socket *so, u_long sndcc, u_long rcvcc);
void sorflush(struct socket *so);
int sosend(struct socket *so, struct mbuf *addr, struct uio *uio,
     struct mbuf *top, struct mbuf *control, int flags);
int sosetopt(struct socket *so, int level, int optname, struct mbuf *m);
int soshutdown(struct socket *so, int how);
void sowakeup(struct socket *so, struct sockbuf *sb);
void sorwakeup(struct socket *);
void sowwakeup(struct socket *);
int sockargs(struct mbuf **, const void *, size_t, int);
int sosleep(struct socket *, void *, int, const char *, int);
int solock(struct socket *);
void sounlock(int);
int sendit(struct proc *, int, struct msghdr *, int, register_t *);
int recvit(struct proc *, int, struct msghdr *, caddr_t,
      register_t *);
int doaccept(struct proc *, int, struct sockaddr *, socklen_t *, int,
     register_t *);
struct mdproc {
 struct trapframe64 *md_tf;
 struct fpstate64 *md_fpstate;
 volatile int md_astpending;
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
int pledge_syscall(struct proc *, int, uint64_t *);
int pledge_fail(struct proc *, int, uint64_t);
struct mbuf;
struct nameidata;
int pledge_namei(struct proc *, struct nameidata *, char *);
int pledge_sendfd(struct proc *p, struct file *);
int pledge_recvfd(struct proc *p, struct file *);
int pledge_sysctl(struct proc *p, int namelen, int *name, void *new);
int pledge_chown(struct proc *p, uid_t, gid_t);
int pledge_adjtime(struct proc *p, const void *v);
int pledge_sendit(struct proc *p, const void *to);
int pledge_sockopt(struct proc *p, int set, int level, int optname);
int pledge_socket(struct proc *p, int domain, unsigned int state);
int pledge_ioctl(struct proc *p, long com, struct file *);
int pledge_ioctl_drm(struct proc *p, long com, dev_t device);
int pledge_ioctl_vmm(struct proc *p, long com);
int pledge_flock(struct proc *p);
int pledge_fcntl(struct proc *p, int cmd);
int pledge_swapctl(struct proc *p);
int pledge_kill(struct proc *p, pid_t pid);
int pledge_protexec(struct proc *p, int prot);
struct mbuf;
struct ifnet;
struct domain {
 int dom_family;
 char *dom_name;
 void (*dom_init)(void);
 int (*dom_externalize)(struct mbuf *, socklen_t, int);
 void (*dom_dispose)(struct mbuf *);
 const struct protosw *dom_protosw, *dom_protoswNPROTOSW;
 unsigned int dom_rtkeylen;
 unsigned int dom_rtoffset;
 unsigned int dom_maxplen;
 void *(*dom_ifattach)(struct ifnet *);
 void (*dom_ifdetach)(struct ifnet *, void *);
};
extern struct domain *domains[];
void domaininit(void);
extern struct domain inetdomain;
extern struct domain inet6domain;
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
void rtm_addr(int, struct ifaddr *);
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
struct m_tag;
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
union sockaddr_union {
 struct sockaddr sa;
 struct sockaddr_in sin;
 struct sockaddr_in6 sin6;
};
struct sockaddr_encap {
 u_int8_t sen_len;
 u_int8_t sen_family;
 u_int16_t sen_type;
 union {
  struct {
   u_int8_t Direction;
   struct in_addr Src;
   struct in_addr Dst;
   u_int8_t Proto;
   u_int16_t Sport;
   u_int16_t Dport;
  } Sip4;
  struct {
   u_int8_t Direction;
   struct in6_addr Src;
   struct in6_addr Dst;
   u_int8_t Proto;
   u_int16_t Sport;
   u_int16_t Dport;
  } Sip6;
  struct ipsec_policy *PolicyHead;
 } Sen;
};
struct ipsec_id {
 u_int16_t type;
 int16_t len;
};
struct ipsec_ids {
 struct rb_entry id_node_id;
 struct rb_entry id_node_flow;
 struct ipsec_id *id_local;
 struct ipsec_id *id_remote;
 u_int32_t id_flow;
 int id_refcount;
 struct timeout id_timeout;
};
struct ipsec_ids_flows { struct rb_tree rbh_root; };
struct ipsec_ids_tree { struct rb_tree rbh_root; };
struct ipsec_acquire {
 union sockaddr_union ipa_addr;
 u_int32_t ipa_seq;
 struct sockaddr_encap ipa_info;
 struct sockaddr_encap ipa_mask;
 struct timeout ipa_timeout;
 struct ipsec_policy *ipa_policy;
 struct inpcb *ipa_pcb;
 struct { struct ipsec_acquire *tqe_next; struct ipsec_acquire **tqe_prev; } ipa_ipo_next;
 struct { struct ipsec_acquire *tqe_next; struct ipsec_acquire **tqe_prev; } ipa_next;
};
struct ipsec_policy {
 struct radix_node ipo_nodes[2];
 struct sockaddr_encap ipo_addr;
 struct sockaddr_encap ipo_mask;
 union sockaddr_union ipo_src;
 union sockaddr_union ipo_dst;
 u_int64_t ipo_last_searched;
 u_int8_t ipo_flags;
 u_int8_t ipo_type;
 u_int8_t ipo_sproto;
 u_int ipo_rdomain;
 int ipo_ref_count;
 struct tdb *ipo_tdb;
 struct ipsec_ids *ipo_ids;
 struct ipo_acquires_head { struct ipsec_acquire *tqh_first; struct ipsec_acquire **tqh_last; } ipo_acquires;
 struct { struct ipsec_policy *tqe_next; struct ipsec_policy **tqe_prev; } ipo_tdb_next;
 struct { struct ipsec_policy *tqe_next; struct ipsec_policy **tqe_prev; } ipo_list;
};
struct tdb {
 struct tdb *tdb_hnext;
 struct tdb *tdb_dnext;
 struct tdb *tdb_snext;
 struct tdb *tdb_inext;
 struct tdb *tdb_onext;
 struct xformsw *tdb_xform;
 struct enc_xform *tdb_encalgxform;
 struct auth_hash *tdb_authalgxform;
 struct comp_algo *tdb_compalgxform;
 u_int32_t tdb_flags;
 struct timeout tdb_timer_tmo;
 struct timeout tdb_first_tmo;
 struct timeout tdb_stimer_tmo;
 struct timeout tdb_sfirst_tmo;
 u_int32_t tdb_seq;
 u_int32_t tdb_exp_allocations;
 u_int32_t tdb_soft_allocations;
 u_int32_t tdb_cur_allocations;
 u_int64_t tdb_exp_bytes;
 u_int64_t tdb_soft_bytes;
 u_int64_t tdb_cur_bytes;
 u_int64_t tdb_exp_timeout;
 u_int64_t tdb_soft_timeout;
 u_int64_t tdb_established;
 u_int64_t tdb_first_use;
 u_int64_t tdb_soft_first_use;
 u_int64_t tdb_exp_first_use;
 u_int64_t tdb_last_used;
 u_int64_t tdb_last_marked;
 u_int64_t tdb_cryptoid;
 u_int32_t tdb_spi;
 u_int16_t tdb_amxkeylen;
 u_int16_t tdb_emxkeylen;
 u_int16_t tdb_ivlen;
 u_int8_t tdb_sproto;
 u_int8_t tdb_wnd;
 u_int8_t tdb_satype;
 u_int8_t tdb_updates;
 union sockaddr_union tdb_dst;
 union sockaddr_union tdb_src;
 u_int8_t *tdb_amxkey;
 u_int8_t *tdb_emxkey;
 u_int64_t tdb_rpl;
 u_int32_t tdb_seen[((((2100+32)) + ((32) - 1)) / (32))];
 u_int8_t tdb_iv[4];
 struct ipsec_ids *tdb_ids;
 int tdb_ids_swapped;
 u_int32_t tdb_mtu;
 u_int64_t tdb_mtutimeout;
 u_int16_t tdb_udpencap_port;
 u_int16_t tdb_tag;
 u_int32_t tdb_tap;
 u_int tdb_rdomain;
 struct sockaddr_encap tdb_filter;
 struct sockaddr_encap tdb_filtermask;
 struct tdb_policy_head { struct ipsec_policy *tqh_first; struct ipsec_policy **tqh_last; } tdb_policy_head;
 struct { struct tdb *tqe_next; struct tdb **tqe_prev; } tdb_sync_entry;
};
struct tdb_ident {
 u_int32_t spi;
 union sockaddr_union dst;
 u_int8_t proto;
 u_int rdomain;
};
struct tdb_crypto {
 u_int32_t tc_spi;
 union sockaddr_union tc_dst;
 u_int8_t tc_proto;
 int tc_protoff;
 int tc_skip;
 u_int tc_rdomain;
};
struct ipsecinit {
 u_int8_t *ii_enckey;
 u_int8_t *ii_authkey;
 u_int16_t ii_enckeylen;
 u_int16_t ii_authkeylen;
 u_int8_t ii_encalg;
 u_int8_t ii_authalg;
 u_int8_t ii_compalg;
};
struct xformsw {
 u_short xf_type;
 u_short xf_flags;
 char *xf_name;
 int (*xf_attach)(void);
 int (*xf_init)(struct tdb *, struct xformsw *, struct ipsecinit *);
 int (*xf_zeroize)(struct tdb *);
 int (*xf_input)(struct mbuf *, struct tdb *, int, int);
 int (*xf_output)(struct mbuf *, struct tdb *, struct mbuf **,
     int, int);
};
extern int ipsec_in_use;
extern u_int64_t ipsec_last_added;
extern int ipsec_policy_pool_initialized;
extern int encdebug;
extern int ipsec_keep_invalid;
extern int ipsec_require_pfs;
extern int ipsec_expire_acquire;
extern int ipsec_soft_allocations;
extern int ipsec_exp_allocations;
extern int ipsec_soft_bytes;
extern int ipsec_exp_bytes;
extern int ipsec_soft_timeout;
extern int ipsec_exp_timeout;
extern int ipsec_soft_first_use;
extern int ipsec_exp_first_use;
extern char ipsec_def_enc[];
extern char ipsec_def_auth[];
extern char ipsec_def_comp[];
extern struct enc_xform enc_xform_des;
extern struct enc_xform enc_xform_3des;
extern struct enc_xform enc_xform_blf;
extern struct enc_xform enc_xform_cast5;
extern struct auth_hash auth_hash_hmac_md5_96;
extern struct auth_hash auth_hash_hmac_sha1_96;
extern struct auth_hash auth_hash_hmac_ripemd_160_96;
extern struct comp_algo comp_algo_deflate;
extern struct ipsec_policy_head { struct ipsec_policy *tqh_first; struct ipsec_policy **tqh_last; } ipsec_policy_head;
struct radix_node_head *spd_table_add(unsigned int);
struct radix_node_head *spd_table_get(unsigned int);
int spd_table_walk(unsigned int,
    int (*walker)(struct ipsec_policy *, void *, unsigned int), void *);
uint32_t reserve_spi(u_int, u_int32_t, u_int32_t, union sockaddr_union *,
  union sockaddr_union *, u_int8_t, int *);
struct tdb *gettdb(u_int, u_int32_t, union sockaddr_union *, u_int8_t);
struct tdb *gettdbbydst(u_int, union sockaddr_union *, u_int8_t,
  struct ipsec_ids *,
  struct sockaddr_encap *, struct sockaddr_encap *);
struct tdb *gettdbbysrc(u_int, union sockaddr_union *, u_int8_t,
  struct ipsec_ids *,
  struct sockaddr_encap *, struct sockaddr_encap *);
struct tdb *gettdbbysrcdst(u_int, u_int32_t, union sockaddr_union *,
  union sockaddr_union *, u_int8_t);
void puttdb(struct tdb *);
void tdb_delete(struct tdb *);
struct tdb *tdb_alloc(u_int);
void tdb_free(struct tdb *);
int tdb_init(struct tdb *, u_int16_t, struct ipsecinit *);
void tdb_unlink(struct tdb *);
int tdb_walk(u_int, int (*)(struct tdb *, void *, int), void *);
int ipe4_attach(void);
int ipe4_init(struct tdb *, struct xformsw *, struct ipsecinit *);
int ipe4_zeroize(struct tdb *);
int ipe4_input(struct mbuf *, struct tdb *, int, int);
int ah_attach(void);
int ah_init(struct tdb *, struct xformsw *, struct ipsecinit *);
int ah_zeroize(struct tdb *);
int ah_input(struct mbuf *, struct tdb *, int, int);
int ah_output(struct mbuf *, struct tdb *, struct mbuf **, int, int);
int ah_sysctl(int *, u_int, void *, size_t *, void *, size_t);
int ah4_input(struct mbuf **, int *, int, int);
void ah4_ctlinput(int, struct sockaddr *, u_int, void *);
void udpencap_ctlinput(int, struct sockaddr *, u_int, void *);
int ah6_input(struct mbuf **, int *, int, int);
int esp_attach(void);
int esp_init(struct tdb *, struct xformsw *, struct ipsecinit *);
int esp_zeroize(struct tdb *);
int esp_input(struct mbuf *, struct tdb *, int, int);
int esp_output(struct mbuf *, struct tdb *, struct mbuf **, int, int);
int esp_sysctl(int *, u_int, void *, size_t *, void *, size_t);
int esp4_input(struct mbuf **, int *, int, int);
void esp4_ctlinput(int, struct sockaddr *, u_int, void *);
int esp6_input(struct mbuf **, int *, int, int);
int ipcomp_attach(void);
int ipcomp_init(struct tdb *, struct xformsw *, struct ipsecinit *);
int ipcomp_zeroize(struct tdb *);
int ipcomp_input(struct mbuf *, struct tdb *, int, int);
int ipcomp_output(struct mbuf *, struct tdb *, struct mbuf **, int, int);
int ipcomp_sysctl(int *, u_int, void *, size_t *, void *, size_t);
int ipcomp4_input(struct mbuf **, int *, int, int);
int ipcomp6_input(struct mbuf **, int *, int, int);
int tcp_signature_tdb_attach(void);
int tcp_signature_tdb_init(struct tdb *, struct xformsw *,
     struct ipsecinit *);
int tcp_signature_tdb_zeroize(struct tdb *);
int tcp_signature_tdb_input(struct mbuf *, struct tdb *, int, int);
int tcp_signature_tdb_output(struct mbuf *, struct tdb *, struct mbuf **,
   int, int);
int checkreplaywindow(struct tdb *, u_int32_t, u_int32_t *, int);
int ipsp_process_packet(struct mbuf *, struct tdb *, int, int);
int ipsp_process_done(struct mbuf *, struct tdb *);
struct tdb *ipsp_spd_lookup(struct mbuf *, int, int, int *, int,
     struct tdb *, struct inpcb *, u_int32_t);
struct tdb *ipsp_spd_inp(struct mbuf *, int, int, int *, int,
     struct tdb *, struct inpcb *, struct ipsec_policy *);
int ipsp_is_unspecified(union sockaddr_union);
int ipsp_aux_match(struct tdb *, struct ipsec_ids *,
     struct sockaddr_encap *, struct sockaddr_encap *);
int ipsp_ids_match(struct ipsec_ids *, struct ipsec_ids *);
struct ipsec_ids *ipsp_ids_insert(struct ipsec_ids *);
struct ipsec_ids *ipsp_ids_lookup(u_int32_t);
void ipsp_ids_free(struct ipsec_ids *);
void ipsec_init(void);
int ipsec_sysctl(int *, u_int, void *, size_t *, void *, size_t);
int ipsec_common_input(struct mbuf *, int, int, int, int, int);
void ipsec_common_input_cb(struct mbuf *, struct tdb *, int, int);
int ipsec_delete_policy(struct ipsec_policy *);
ssize_t ipsec_hdrsz(struct tdb *);
void ipsec_adjust_mtu(struct mbuf *, u_int32_t);
struct ipsec_acquire *ipsec_get_acquire(u_int32_t);
int ipsec_forward_check(struct mbuf *, int, int);
int ipsec_local_check(struct mbuf *, int, int, int);
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
struct pf_state_key;
union inpaddru {
 struct in6_addr iau_addr6;
 struct {
  uint8_t pad[12];
  struct in_addr inaddr;
 } iau_a4u;
};
struct inpcb {
 struct { struct inpcb *le_next; struct inpcb **le_prev; } inp_hash;
 struct { struct inpcb *le_next; struct inpcb **le_prev; } inp_lhash;
 struct { struct inpcb *tqe_next; struct inpcb **tqe_prev; } inp_queue;
 struct inpcbtable *inp_table;
 union inpaddru inp_faddru;
 union inpaddru inp_laddru;
 u_int16_t inp_fport;
 u_int16_t inp_lport;
 struct socket *inp_socket;
 caddr_t inp_ppcb;
 union {
  struct route ru_route;
  struct route_in6 ru_route6;
 } inp_ru;
 int inp_flags;
 union {
  struct ip hu_ip;
  struct ip6_hdr hu_ipv6;
 } inp_hu;
 struct mbuf *inp_options;
 struct ip6_pktopts *inp_outputopts6;
 int inp_hops;
 union {
  struct ip_moptions *mou_mo;
  struct ip6_moptions *mou_mo6;
 } inp_mou;
 u_char inp_seclevel[4];
 u_char inp_ip_minttl;
 int inp_cksum6;
 struct icmp6_filter *inp_icmp6filt;
 struct pf_state_key *inp_pf_sk;
 u_int inp_rtableid;
 int inp_pipex;
};
struct inpcbhead { struct inpcb *lh_first; };
struct inpcbtable {
 struct inpthead { struct inpcb *tqh_first; struct inpcb **tqh_last; } inpt_queue;
 struct inpcbhead *inpt_hashtbl, *inpt_lhashtbl;
 SIPHASH_KEY inpt_key;
 u_long inpt_hash, inpt_lhash;
 int inpt_count, inpt_size;
};
struct baddynamicports {
 u_int32_t tcp[((((65536) + (((sizeof(u_int32_t) * 8)) - 1)) / ((sizeof(u_int32_t) * 8))))];
 u_int32_t udp[((((65536) + (((sizeof(u_int32_t) * 8)) - 1)) / ((sizeof(u_int32_t) * 8))))];
};
extern struct baddynamicports baddynamicports;
extern struct baddynamicports rootonlyports;
void in_losing(struct inpcb *);
int in_pcballoc(struct socket *, struct inpcbtable *);
int in_pcbbind(struct inpcb *, struct mbuf *, struct proc *);
int in_pcbaddrisavail(struct inpcb *, struct sockaddr_in *, int,
     struct proc *);
int in_pcbconnect(struct inpcb *, struct mbuf *);
void in_pcbdetach(struct inpcb *);
void in_pcbdisconnect(struct inpcb *);
struct inpcb *
  in_pcbhashlookup(struct inpcbtable *, struct in_addr,
          u_int, struct in_addr, u_int, u_int);
struct inpcb *
  in_pcblookup_listen(struct inpcbtable *, struct in_addr, u_int,
     struct mbuf *, u_int);
struct inpcb *
  in6_pcbhashlookup(struct inpcbtable *, const struct in6_addr *,
          u_int, const struct in6_addr *, u_int, u_int);
struct inpcb *
  in6_pcblookup_listen(struct inpcbtable *, struct in6_addr *, u_int,
     struct mbuf *, u_int);
int in6_pcbaddrisavail(struct inpcb *, struct sockaddr_in6 *, int,
     struct proc *);
int in6_pcbconnect(struct inpcb *, struct mbuf *);
int in6_setsockaddr(struct inpcb *, struct mbuf *);
int in6_setpeeraddr(struct inpcb *, struct mbuf *);
void in_pcbinit(struct inpcbtable *, int);
struct inpcb *
  in_pcblookup_local(struct inpcbtable *, void *, u_int, int, u_int);
void in_pcbnotifyall(struct inpcbtable *, struct sockaddr *,
     u_int, int, void (*)(struct inpcb *, int));
void in_pcbrehash(struct inpcb *);
void in_rtchange(struct inpcb *, int);
void in_setpeeraddr(struct inpcb *, struct mbuf *);
void in_setsockaddr(struct inpcb *, struct mbuf *);
int in_baddynamic(u_int16_t, u_int16_t);
int in_rootonly(u_int16_t, u_int16_t);
int in_pcbselsrc(struct in_addr **, struct sockaddr_in *, struct inpcb *);
struct rtentry *
 in_pcbrtentry(struct inpcb *);
int in6_pcbnotify(struct inpcbtable *, struct sockaddr_in6 *,
 u_int, const struct sockaddr_in6 *, u_int, u_int, int, void *,
 void (*)(struct inpcb *, int));
int in6_selecthlim(struct inpcb *);
int in_pcbpickport(u_int16_t *, void *, int, struct inpcb *, struct proc *);
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
struct ip;
struct ip6_hdr;
struct mbuf_list;
typedef struct refcnt pf_refcnt_t;
enum { PF_INOUT, PF_IN, PF_OUT, PF_FWD };
enum { PF_PASS, PF_DROP, PF_SCRUB, PF_NOSCRUB, PF_NAT, PF_NONAT,
   PF_BINAT, PF_NOBINAT, PF_RDR, PF_NORDR, PF_SYNPROXY_DROP, PF_DEFER,
   PF_MATCH, PF_DIVERT, PF_RT, PF_AFRT };
enum { PF_TRANS_RULESET, PF_TRANS_TABLE };
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
typedef enum { NFNON=0, NFREG=1, NFDIR=2, NFBLK=3, NFCHR=4, NFLNK=5,
 NFSOCK=6, NFFIFO=7 } nfstype;
union nfsfh {
 fhandle_t fh_generic;
 u_char fh_bytes[64];
};
typedef union nfsfh nfsfh_t;
struct nfsv2_time {
 u_int32_t nfsv2_sec;
 u_int32_t nfsv2_usec;
};
typedef struct nfsv2_time nfstime2;
struct nfsv3_time {
 u_int32_t nfsv3_sec;
 u_int32_t nfsv3_nsec;
};
typedef struct nfsv3_time nfstime3;
struct nfs_uquad {
 u_int32_t nfsuquad[2];
};
typedef struct nfs_uquad nfsuint64;
struct nfsv3_spec {
 u_int32_t specdata1;
 u_int32_t specdata2;
};
typedef struct nfsv3_spec nfsv3spec;
struct nfs_fattr {
 u_int32_t fa_type;
 u_int32_t fa_mode;
 u_int32_t fa_nlink;
 u_int32_t fa_uid;
 u_int32_t fa_gid;
 union {
  struct {
   u_int32_t nfsv2fa_size;
   u_int32_t nfsv2fa_blocksize;
   u_int32_t nfsv2fa_rdev;
   u_int32_t nfsv2fa_blocks;
   u_int32_t nfsv2fa_fsid;
   u_int32_t nfsv2fa_fileid;
   nfstime2 nfsv2fa_atime;
   nfstime2 nfsv2fa_mtime;
   nfstime2 nfsv2fa_ctime;
  } fa_nfsv2;
  struct {
   nfsuint64 nfsv3fa_size;
   nfsuint64 nfsv3fa_used;
   nfsv3spec nfsv3fa_rdev;
   nfsuint64 nfsv3fa_fsid;
   nfsuint64 nfsv3fa_fileid;
   nfstime3 nfsv3fa_atime;
   nfstime3 nfsv3fa_mtime;
   nfstime3 nfsv3fa_ctime;
  } fa_nfsv3;
 } fa_un;
};
struct nfsv2_sattr {
 u_int32_t sa_mode;
 u_int32_t sa_uid;
 u_int32_t sa_gid;
 u_int32_t sa_size;
 nfstime2 sa_atime;
 nfstime2 sa_mtime;
};
struct nfsv3_sattr {
 u_int32_t sa_modetrue;
 u_int32_t sa_mode;
 u_int32_t sa_uidfalse;
 u_int32_t sa_gidfalse;
 u_int32_t sa_sizefalse;
 u_int32_t sa_atimetype;
 nfstime3 sa_atime;
 u_int32_t sa_mtimetype;
 nfstime3 sa_mtime;
};
struct nfs_statfs {
 union {
  struct {
   u_int32_t nfsv2sf_tsize;
   u_int32_t nfsv2sf_bsize;
   u_int32_t nfsv2sf_blocks;
   u_int32_t nfsv2sf_bfree;
   u_int32_t nfsv2sf_bavail;
  } sf_nfsv2;
  struct {
   nfsuint64 nfsv3sf_tbytes;
   nfsuint64 nfsv3sf_fbytes;
   nfsuint64 nfsv3sf_abytes;
   nfsuint64 nfsv3sf_tfiles;
   nfsuint64 nfsv3sf_ffiles;
   nfsuint64 nfsv3sf_afiles;
   u_int32_t nfsv3sf_invarsec;
  } sf_nfsv3;
 } sf_un;
};
struct nfsv3_fsinfo {
 u_int32_t fs_rtmax;
 u_int32_t fs_rtpref;
 u_int32_t fs_rtmult;
 u_int32_t fs_wtmax;
 u_int32_t fs_wtpref;
 u_int32_t fs_wtmult;
 u_int32_t fs_dtpref;
 nfsuint64 fs_maxfilesize;
 nfstime3 fs_timedelta;
 u_int32_t fs_properties;
};
struct nfsv3_pathconf {
 u_int32_t pc_linkmax;
 u_int32_t pc_namemax;
 u_int32_t pc_notrunc;
 u_int32_t pc_chownrestricted;
 u_int32_t pc_caseinsensitive;
 u_int32_t pc_casepreserving;
};
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
struct espstat {
 uint64_t esps_hdrops;
 uint64_t esps_nopf;
 uint64_t esps_notdb;
 uint64_t esps_badkcr;
 uint64_t esps_qfull;
 uint64_t esps_noxform;
 uint64_t esps_badilen;
 uint64_t esps_wrap;
 uint64_t esps_badenc;
 uint64_t esps_badauth;
 uint64_t esps_replay;
 uint64_t esps_input;
 uint64_t esps_output;
 uint64_t esps_invalid;
 uint64_t esps_ibytes;
 uint64_t esps_obytes;
 uint64_t esps_toobig;
 uint64_t esps_pdrops;
 uint64_t esps_crypto;
 uint64_t esps_udpencin;
 uint64_t esps_udpencout;
 uint64_t esps_udpinval;
 uint64_t esps_udpneeded;
 uint64_t esps_outfail;
};
enum espstat_counters {
 esps_hdrops,
 esps_nopf,
 esps_notdb,
 esps_badkcr,
 esps_qfull,
 esps_noxform,
 esps_badilen,
 esps_wrap,
 esps_badenc,
 esps_badauth,
 esps_replay,
 esps_input,
 esps_output,
 esps_invalid,
 esps_ibytes,
 esps_obytes,
 esps_toobig,
 esps_pdrops,
 esps_crypto,
 esps_udpencin,
 esps_udpencout,
 esps_udpinval,
 esps_udpneeded,
 esps_outfail,
 esps_ncounters
};
extern struct cpumem *espcounters;
static inline void
espstat_inc(enum espstat_counters c)
{
 counters_inc(espcounters, c);
}
static inline void
espstat_add(enum espstat_counters c, uint64_t v)
{
 counters_add(espcounters, c, v);
}
extern int esp_enable;
extern int udpencap_enable;
extern int udpencap_port;
struct in_addr zeroin_addr;
union {
 struct in_addr za_in;
 struct in6_addr za_in6;
} zeroin46_addr;
int ipport_firstauto = 1024;
int ipport_lastauto = 49151;
int ipport_hifirstauto = 49152;
int ipport_hilastauto = 65535;
struct baddynamicports baddynamicports;
struct baddynamicports rootonlyports;
struct pool inpcb_pool;
int inpcb_pool_initialized = 0;
int in_pcbresize (struct inpcbtable *, int);
struct inpcbhead *in_pcbhash(struct inpcbtable *, int,
    const struct in_addr *, u_short, const struct in_addr *, u_short);
struct inpcbhead *in6_pcbhash(struct inpcbtable *, int,
    const struct in6_addr *, u_short, const struct in6_addr *, u_short);
struct inpcbhead *in_pcblhash(struct inpcbtable *, int, u_short);
struct inpcbhead *
in_pcbhash(struct inpcbtable *table, int rdom,
    const struct in_addr *faddr, u_short fport,
    const struct in_addr *laddr, u_short lport)
{
 SIPHASH_CTX ctx;
 u_int32_t nrdom = ((__uint32_t)(rdom));
 SipHash_Init((&ctx), (&table->inpt_key));
 SipHash_Update((&ctx), 2, 4, (&nrdom), (sizeof(nrdom)));
 SipHash_Update((&ctx), 2, 4, (faddr), (sizeof(*faddr)));
 SipHash_Update((&ctx), 2, 4, (&fport), (sizeof(fport)));
 SipHash_Update((&ctx), 2, 4, (laddr), (sizeof(*laddr)));
 SipHash_Update((&ctx), 2, 4, (&lport), (sizeof(lport)));
 return (&table->inpt_hashtbl[SipHash_End((&ctx), 2, 4) & table->inpt_hash]);
}
struct inpcbhead *
in6_pcbhash(struct inpcbtable *table, int rdom,
    const struct in6_addr *faddr, u_short fport,
    const struct in6_addr *laddr, u_short lport)
{
 SIPHASH_CTX ctx;
 u_int32_t nrdom = ((__uint32_t)(rdom));
 SipHash_Init((&ctx), (&table->inpt_key));
 SipHash_Update((&ctx), 2, 4, (&nrdom), (sizeof(nrdom)));
 SipHash_Update((&ctx), 2, 4, (faddr), (sizeof(*faddr)));
 SipHash_Update((&ctx), 2, 4, (&fport), (sizeof(fport)));
 SipHash_Update((&ctx), 2, 4, (laddr), (sizeof(*laddr)));
 SipHash_Update((&ctx), 2, 4, (&lport), (sizeof(lport)));
 return (&table->inpt_hashtbl[SipHash_End((&ctx), 2, 4) & table->inpt_hash]);
}
struct inpcbhead *
in_pcblhash(struct inpcbtable *table, int rdom, u_short lport)
{
 SIPHASH_CTX ctx;
 u_int32_t nrdom = ((__uint32_t)(rdom));
 SipHash_Init((&ctx), (&table->inpt_key));
 SipHash_Update((&ctx), 2, 4, (&nrdom), (sizeof(nrdom)));
 SipHash_Update((&ctx), 2, 4, (&lport), (sizeof(lport)));
 return (&table->inpt_lhashtbl[SipHash_End((&ctx), 2, 4) & table->inpt_lhash]);
}
void
in_pcbinit(struct inpcbtable *table, int hashsize)
{
 do { (&table->inpt_queue)->tqh_first = ((void *)0); (&table->inpt_queue)->tqh_last = &(&table->inpt_queue)->tqh_first; } while (0);
 table->inpt_hashtbl = hashinit(hashsize, 4, 0x0002,
     &table->inpt_hash);
 if (table->inpt_hashtbl == ((void *)0))
  panic("in_pcbinit: hashinit failed");
 table->inpt_lhashtbl = hashinit(hashsize, 4, 0x0002,
     &table->inpt_lhash);
 if (table->inpt_lhashtbl == ((void *)0))
  panic("in_pcbinit: hashinit failed for lport");
 table->inpt_count = 0;
 table->inpt_size = hashsize;
 arc4random_buf(&table->inpt_key, sizeof(table->inpt_key));
}
int
in_baddynamic(u_int16_t port, u_int16_t proto)
{
 switch (proto) {
 case 6:
  return (((baddynamicports.tcp)[(port) / (sizeof(u_int32_t) * 8)] & (1 << ((port) % (sizeof(u_int32_t) * 8)))));
 case 17:
  if (port == udpencap_port)
   return (1);
  return (((baddynamicports.udp)[(port) / (sizeof(u_int32_t) * 8)] & (1 << ((port) % (sizeof(u_int32_t) * 8)))));
 default:
  return (0);
 }
}
int
in_rootonly(u_int16_t port, u_int16_t proto)
{
 switch (proto) {
 case 6:
  return (port < 1024 ||
      ((rootonlyports.tcp)[(port) / (sizeof(u_int32_t) * 8)] & (1 << ((port) % (sizeof(u_int32_t) * 8)))));
 case 17:
  return (port < 1024 ||
      ((rootonlyports.udp)[(port) / (sizeof(u_int32_t) * 8)] & (1 << ((port) % (sizeof(u_int32_t) * 8)))));
 default:
  return (0);
 }
}
int
in_pcballoc(struct socket *so, struct inpcbtable *table)
{
 struct inpcb *inp;
 struct inpcbhead *head;
 do { int _s = rw_status(&netlock); if ((splassert_ctl > 0) && (_s != 0x0001UL && _s != 0x0002UL)) splassert_fail(0x0002UL, _s, __func__); } while (0);
 if (inpcb_pool_initialized == 0) {
  pool_init(&inpcb_pool, sizeof(struct inpcb), 0,
      2, 0, "inpcbpl", ((void *)0));
  inpcb_pool_initialized = 1;
 }
 inp = pool_get(&inpcb_pool, 0x0002|0x0008);
 if (inp == ((void *)0))
  return (55);
 inp->inp_table = table;
 inp->inp_socket = so;
 inp->inp_seclevel[0] = 0x01;
 inp->inp_seclevel[1] = 0x01;
 inp->inp_seclevel[2] = 0x01;
 inp->inp_seclevel[3] = 0x01;
 inp->inp_rtableid = (__curcpu->ci_self)->ci_curproc->p_p->ps_rtableid;
 if (table->inpt_hash != 0 &&
     table->inpt_count++ > (((table->inpt_hash) * 3) / 4))
  (void)in_pcbresize(table, (table->inpt_hash + 1) * 2);
 do { if (((inp)->inp_queue.tqe_next = (&table->inpt_queue)->tqh_first) != ((void *)0)) (&table->inpt_queue)->tqh_first->inp_queue.tqe_prev = &(inp)->inp_queue.tqe_next; else (&table->inpt_queue)->tqh_last = &(inp)->inp_queue.tqe_next; (&table->inpt_queue)->tqh_first = (inp); (inp)->inp_queue.tqe_prev = &(&table->inpt_queue)->tqh_first; } while (0);
 head = in_pcblhash(table, inp->inp_rtableid, inp->inp_lport);
 do { if (((inp)->inp_lhash.le_next = (head)->lh_first) != ((void *)0)) (head)->lh_first->inp_lhash.le_prev = &(inp)->inp_lhash.le_next; (head)->lh_first = (inp); (inp)->inp_lhash.le_prev = &(head)->lh_first; } while (0);
 if ((so->so_proto->pr_domain->dom_family) == 24)
  head = in6_pcbhash(table, rtable_l2(inp->inp_rtableid), &inp->inp_faddru.iau_addr6, inp->inp_fport, &inp->inp_laddru.iau_addr6, inp->inp_lport);
 else
  head = in_pcbhash(table, rtable_l2(inp->inp_rtableid), &inp->inp_faddru.iau_a4u.inaddr, inp->inp_fport, &inp->inp_laddru.iau_a4u.inaddr, inp->inp_lport);
 do { if (((inp)->inp_hash.le_next = (head)->lh_first) != ((void *)0)) (head)->lh_first->inp_hash.le_prev = &(inp)->inp_hash.le_next; (head)->lh_first = (inp); (inp)->inp_hash.le_prev = &(head)->lh_first; } while (0);
 so->so_pcb = inp;
 inp->inp_hops = -1;
 if ((so->so_proto->pr_domain->dom_family) == 24)
  inp->inp_flags = 0x100;
 inp->inp_cksum6 = -1;
 return (0);
}
int
in_pcbbind(struct inpcb *inp, struct mbuf *nam, struct proc *p)
{
 struct socket *so = inp->inp_socket;
 u_int16_t lport = 0;
 int wild = 0;
 void *laddr = &zeroin46_addr;
 int error;
 if (inp->inp_lport)
  return (22);
 if ((so->so_options & (0x0004|0x0200)) == 0 &&
     ((so->so_proto->pr_flags & 0x04) == 0 ||
      (so->so_options & 0x0002) == 0))
  wild = 1;
 switch ((so->so_proto->pr_domain->dom_family)) {
 case 24:
  if (!((*(const u_int32_t *)(const void *)(&(&inp->inp_laddru.iau_addr6)->__u6_addr.__u6_addr8[0]) == 0) && (*(const u_int32_t *)(const void *)(&(&inp->inp_laddru.iau_addr6)->__u6_addr.__u6_addr8[4]) == 0) && (*(const u_int32_t *)(const void *)(&(&inp->inp_laddru.iau_addr6)->__u6_addr.__u6_addr8[8]) == 0) && (*(const u_int32_t *)(const void *)(&(&inp->inp_laddru.iau_addr6)->__u6_addr.__u6_addr8[12]) == 0)))
   return (22);
  wild |= 4;
  if (nam) {
   struct sockaddr_in6 *sin6;
   if ((error = in6_nam2sin6(nam, &sin6)))
    return (error);
   if ((error = in6_pcbaddrisavail(inp, sin6, wild, p)))
    return (error);
   laddr = &sin6->sin6_addr;
   lport = sin6->sin6_port;
  }
  break;
 case 2:
  if (inp->inp_laddru.iau_a4u.inaddr.s_addr != ((u_int32_t) ((__uint32_t)((u_int32_t)(0x00000000)))))
   return (22);
  if (nam) {
   struct sockaddr_in *sin;
   if ((error = in_nam2sin(nam, &sin)))
    return (error);
   if ((error = in_pcbaddrisavail(inp, sin, wild, p)))
    return (error);
   laddr = &sin->sin_addr;
   lport = sin->sin_port;
  }
  break;
 default:
  return (22);
 }
 if (lport == 0) {
  if ((error = in_pcbpickport(&lport, laddr, wild, inp, p)))
   return (error);
 } else {
  if (in_rootonly(((__uint16_t)(lport)), so->so_proto->pr_protocol) &&
      suser(p) != 0)
   return (13);
 }
 if (nam) {
  switch ((so->so_proto->pr_domain->dom_family)) {
  case 24:
   inp->inp_laddru.iau_addr6 = *(struct in6_addr *)laddr;
   break;
  case 2:
   inp->inp_laddru.iau_a4u.inaddr = *(struct in_addr *)laddr;
   break;
  }
 }
 inp->inp_lport = lport;
 in_pcbrehash(inp);
 return (0);
}
int
in_pcbaddrisavail(struct inpcb *inp, struct sockaddr_in *sin, int wild,
    struct proc *p)
{
 struct socket *so = inp->inp_socket;
 struct inpcbtable *table = inp->inp_table;
 u_int16_t lport = sin->sin_port;
 int reuseport = (so->so_options & 0x0200);
 if ((((u_int32_t)(sin->sin_addr.s_addr) & ((u_int32_t) ((__uint32_t)((u_int32_t)(0xf0000000))))) == ((u_int32_t) ((__uint32_t)((u_int32_t)(0xe0000000)))))) {
  if (so->so_options & (0x0004|0x0200))
   reuseport = 0x0004|0x0200;
 } else if (sin->sin_addr.s_addr != ((u_int32_t) ((__uint32_t)((u_int32_t)(0x00000000))))) {
  if (!((so->so_options) & (0x1000)) &&
      !(so->so_type == 2 &&
      sin->sin_addr.s_addr == ((u_int32_t) ((__uint32_t)((u_int32_t)(0xffffffff))))) &&
      !(so->so_type == 2 &&
      in_broadcast(sin->sin_addr, inp->inp_rtableid))) {
   struct ifaddr *ia;
   sin->sin_port = 0;
   __builtin_memset((sin->sin_zero), (0), (sizeof(sin->sin_zero)));
   ia = ifa_ifwithaddr(sintosa(sin), inp->inp_rtableid);
   sin->sin_port = lport;
   if (ia == ((void *)0))
    return (49);
  }
 }
 if (lport) {
  struct inpcb *t;
  if (so->so_euid) {
   t = in_pcblookup_local(table, &sin->sin_addr, lport,
       1, inp->inp_rtableid);
   if (t && (so->so_euid != t->inp_socket->so_euid))
    return (48);
  }
  t = in_pcblookup_local(table, &sin->sin_addr, lport,
      wild, inp->inp_rtableid);
  if (t && (reuseport & t->inp_socket->so_options) == 0)
   return (48);
 }
 return (0);
}
int
in_pcbpickport(u_int16_t *lport, void *laddr, int wild, struct inpcb *inp,
    struct proc *p)
{
 struct socket *so = inp->inp_socket;
 struct inpcbtable *table = inp->inp_table;
 u_int16_t first, last, lower, higher, candidate, localport;
 int count;
 if (inp->inp_flags & 0x010) {
  first = ipport_hifirstauto;
  last = ipport_hilastauto;
 } else if (inp->inp_flags & 0x020) {
  if (suser(p))
   return (13);
  first = 1024 -1;
  last = 600;
 } else {
  first = ipport_firstauto;
  last = ipport_lastauto;
 }
 if (first < last) {
  lower = first;
  higher = last;
 } else {
  lower = last;
  higher = first;
 }
 count = higher - lower;
 candidate = lower + arc4random_uniform(count);
 do {
  if (count-- < 0)
   return (49);
  ++candidate;
  if (candidate < lower || candidate > higher)
   candidate = lower;
  localport = ((__uint16_t)(candidate));
 } while (in_baddynamic(candidate, so->so_proto->pr_protocol) ||
     in_pcblookup_local(table, laddr, localport, wild,
     inp->inp_rtableid));
 *lport = localport;
 return (0);
}
int
in_pcbconnect(struct inpcb *inp, struct mbuf *nam)
{
 struct in_addr *ina = ((void *)0);
 struct sockaddr_in *sin;
 int error;
 if ((inp->inp_socket->so_proto->pr_domain->dom_family) == 24)
  return (in6_pcbconnect(inp, nam));
 if ((inp->inp_flags & 0x100) != 0)
  panic("IPv6 pcb passed into in_pcbconnect");
 if ((error = in_nam2sin(nam, &sin)))
  return (error);
 if (sin->sin_port == 0)
  return (49);
 error = in_pcbselsrc(&ina, sin, inp);
 if (error)
  return (error);
 if (in_pcbhashlookup(inp->inp_table, sin->sin_addr, sin->sin_port,
     *ina, inp->inp_lport, inp->inp_rtableid) != ((void *)0))
  return (48);
 ((inp->inp_laddru.iau_a4u.inaddr.s_addr == ((u_int32_t) ((__uint32_t)((u_int32_t)(0x00000000)))) || inp->inp_lport) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../netinet/in_pcb.c", 531, "inp->inp_laddr.s_addr == INADDR_ANY || inp->inp_lport"));
 if (inp->inp_laddru.iau_a4u.inaddr.s_addr == ((u_int32_t) ((__uint32_t)((u_int32_t)(0x00000000))))) {
  if (inp->inp_lport == 0) {
   error = in_pcbbind(inp, ((void *)0), (__curcpu->ci_self)->ci_curproc);
   if (error)
    return (error);
   if (in_pcbhashlookup(inp->inp_table, sin->sin_addr,
       sin->sin_port, *ina, inp->inp_lport,
       inp->inp_rtableid) != ((void *)0)) {
    inp->inp_lport = 0;
    return (48);
   }
  }
  inp->inp_laddru.iau_a4u.inaddr = *ina;
 }
 inp->inp_faddru.iau_a4u.inaddr = sin->sin_addr;
 inp->inp_fport = sin->sin_port;
 in_pcbrehash(inp);
 {
  ipsp_spd_inp(((void *)0), 2, 0, &error, 0x2,
      ((void *)0), inp, ((void *)0));
 }
 return (0);
}
void
in_pcbdisconnect(struct inpcb *inp)
{
 switch ((inp->inp_socket->so_proto->pr_domain->dom_family)) {
 case 24:
  inp->inp_faddru.iau_addr6 = in6addr_any;
  break;
 case 2:
  inp->inp_faddru.iau_a4u.inaddr.s_addr = ((u_int32_t) ((__uint32_t)((u_int32_t)(0x00000000))));
  break;
 }
 inp->inp_fport = 0;
 in_pcbrehash(inp);
 if (inp->inp_socket->so_state & 0x001)
  in_pcbdetach(inp);
}
void
in_pcbdetach(struct inpcb *inp)
{
 struct socket *so = inp->inp_socket;
 do { int _s = rw_status(&netlock); if ((splassert_ctl > 0) && (_s != 0x0001UL && _s != 0x0002UL)) splassert_fail(0x0002UL, _s, __func__); } while (0);
 so->so_pcb = 0;
 sofree(so);
 m_freem(inp->inp_options);
 if (inp->inp_ru.ru_route.ro_rt) {
  rtfree(inp->inp_ru.ru_route.ro_rt);
  inp->inp_ru.ru_route.ro_rt = ((void *)0);
 }
 if (inp->inp_flags & 0x100) {
  ip6_freepcbopts(inp->inp_outputopts6);
  ip6_freemoptions(inp->inp_mou.mou_mo6);
 } else
  ip_freemoptions(inp->inp_mou.mou_mo);
 if (inp->inp_pf_sk) {
  pf_remove_divert_state(inp->inp_pf_sk);
  pf_inp_unlink(inp);
 }
 do { if ((inp)->inp_lhash.le_next != ((void *)0)) (inp)->inp_lhash.le_next->inp_lhash.le_prev = (inp)->inp_lhash.le_prev; *(inp)->inp_lhash.le_prev = (inp)->inp_lhash.le_next; ((inp)->inp_lhash.le_prev) = ((void *)-1); ((inp)->inp_lhash.le_next) = ((void *)-1); } while (0);
 do { if ((inp)->inp_hash.le_next != ((void *)0)) (inp)->inp_hash.le_next->inp_hash.le_prev = (inp)->inp_hash.le_prev; *(inp)->inp_hash.le_prev = (inp)->inp_hash.le_next; ((inp)->inp_hash.le_prev) = ((void *)-1); ((inp)->inp_hash.le_next) = ((void *)-1); } while (0);
 do { if (((inp)->inp_queue.tqe_next) != ((void *)0)) (inp)->inp_queue.tqe_next->inp_queue.tqe_prev = (inp)->inp_queue.tqe_prev; else (&inp->inp_table->inpt_queue)->tqh_last = (inp)->inp_queue.tqe_prev; *(inp)->inp_queue.tqe_prev = (inp)->inp_queue.tqe_next; ((inp)->inp_queue.tqe_prev) = ((void *)-1); ((inp)->inp_queue.tqe_next) = ((void *)-1); } while (0);
 inp->inp_table->inpt_count--;
 pool_put(&inpcb_pool, inp);
}
void
in_setsockaddr(struct inpcb *inp, struct mbuf *nam)
{
 struct sockaddr_in *sin;
 nam->m_hdr.mh_len = sizeof(*sin);
 sin = ((struct sockaddr_in *)((nam)->m_hdr.mh_data));
 __builtin_memset((sin), (0), (sizeof(*sin)));
 sin->sin_family = 2;
 sin->sin_len = sizeof(*sin);
 sin->sin_port = inp->inp_lport;
 sin->sin_addr = inp->inp_laddru.iau_a4u.inaddr;
}
void
in_setpeeraddr(struct inpcb *inp, struct mbuf *nam)
{
 struct sockaddr_in *sin;
 if ((inp->inp_socket->so_proto->pr_domain->dom_family) == 24) {
  in6_setpeeraddr(inp, nam);
  return;
 }
 nam->m_hdr.mh_len = sizeof(*sin);
 sin = ((struct sockaddr_in *)((nam)->m_hdr.mh_data));
 __builtin_memset((sin), (0), (sizeof(*sin)));
 sin->sin_family = 2;
 sin->sin_len = sizeof(*sin);
 sin->sin_port = inp->inp_fport;
 sin->sin_addr = inp->inp_faddru.iau_a4u.inaddr;
}
void
in_pcbnotifyall(struct inpcbtable *table, struct sockaddr *dst, u_int rdomain,
    int errno, void (*notify)(struct inpcb *, int))
{
 struct inpcb *inp, *ninp;
 struct in_addr faddr;
 do { int _s = rw_status(&netlock); if ((splassert_ctl > 0) && (_s != 0x0001UL && _s != 0x0002UL)) splassert_fail(0x0002UL, _s, __func__); } while (0);
 if (dst->sa_family != 2)
  return;
 faddr = satosin(dst)->sin_addr;
 if (faddr.s_addr == ((u_int32_t) ((__uint32_t)((u_int32_t)(0x00000000)))))
  return;
 rdomain = rtable_l2(rdomain);
 for ((inp) = ((&table->inpt_queue)->tqh_first); (inp) != ((void *)0) && ((ninp) = ((inp)->inp_queue.tqe_next), 1); (inp) = (ninp)) {
  if (inp->inp_flags & 0x100)
   continue;
  if (inp->inp_faddru.iau_a4u.inaddr.s_addr != faddr.s_addr ||
      rtable_l2(inp->inp_rtableid) != rdomain ||
      inp->inp_socket == 0) {
   continue;
  }
  if (notify)
   (*notify)(inp, errno);
 }
}
void
in_losing(struct inpcb *inp)
{
 struct rtentry *rt;
 struct rt_addrinfo info;
 struct sockaddr_in6 sa_mask;
 if ((rt = inp->inp_ru.ru_route.ro_rt)) {
  inp->inp_ru.ru_route.ro_rt = 0;
  __builtin_memset((&info), (0), (sizeof(info)));
  info.rti_flags = rt->rt_flags;
  info.rti_info[0] = &inp->inp_ru.ru_route.ro_dst;
  info.rti_info[1] = rt->rt_gateway;
  info.rti_info[2] = rt_plen2mask(rt, &sa_mask);
  _kernel_lock("/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../netinet/in_pcb.c", 720);
  rtm_miss(0x5, &info, rt->rt_flags, rt->rt_priority,
      rt->rt_ifidx, 0, inp->inp_rtableid);
  _kernel_unlock();
  if (rt->rt_flags & 0x10) {
   struct ifnet *ifp;
   ifp = if_get(rt->rt_ifidx);
   if (ifp != ((void *)0)) {
    rtrequest_delete(&info, rt->rt_priority, ifp,
        ((void *)0), inp->inp_rtableid);
   }
   if_put(ifp);
  }
  rtfree(rt);
 }
}
void
in_rtchange(struct inpcb *inp, int errno)
{
 if (inp->inp_ru.ru_route.ro_rt) {
  rtfree(inp->inp_ru.ru_route.ro_rt);
  inp->inp_ru.ru_route.ro_rt = 0;
 }
}
struct inpcb *
in_pcblookup_local(struct inpcbtable *table, void *laddrp, u_int lport_arg,
    int flags, u_int rdomain)
{
 struct inpcb *inp, *match = ((void *)0);
 int matchwild = 3, wildcard;
 u_int16_t lport = lport_arg;
 struct in_addr laddr = *(struct in_addr *)laddrp;
 struct in6_addr *laddr6 = (struct in6_addr *)laddrp;
 struct inpcbhead *head;
 rdomain = rtable_l2(rdomain);
 head = in_pcblhash(table, rdomain, lport);
 for((inp) = ((head)->lh_first); (inp)!= ((void *)0); (inp) = ((inp)->inp_lhash.le_next)) {
  if (rtable_l2(inp->inp_rtableid) != rdomain)
   continue;
  if (inp->inp_lport != lport)
   continue;
  wildcard = 0;
  if (((flags) & (4))) {
   if (!((inp->inp_flags) & (0x100)))
    continue;
   if (!((*(const u_int32_t *)(const void *)(&(&inp->inp_faddru.iau_addr6)->__u6_addr.__u6_addr8[0]) == 0) && (*(const u_int32_t *)(const void *)(&(&inp->inp_faddru.iau_addr6)->__u6_addr.__u6_addr8[4]) == 0) && (*(const u_int32_t *)(const void *)(&(&inp->inp_faddru.iau_addr6)->__u6_addr.__u6_addr8[8]) == 0) && (*(const u_int32_t *)(const void *)(&(&inp->inp_faddru.iau_addr6)->__u6_addr.__u6_addr8[12]) == 0)))
    wildcard++;
   if (!(__builtin_memcmp((&(&inp->inp_laddru.iau_addr6)->__u6_addr.__u6_addr8[0]), (&(laddr6)->__u6_addr.__u6_addr8[0]), (sizeof(struct in6_addr))) == 0)) {
    if (((*(const u_int32_t *)(const void *)(&(&inp->inp_laddru.iau_addr6)->__u6_addr.__u6_addr8[0]) == 0) && (*(const u_int32_t *)(const void *)(&(&inp->inp_laddru.iau_addr6)->__u6_addr.__u6_addr8[4]) == 0) && (*(const u_int32_t *)(const void *)(&(&inp->inp_laddru.iau_addr6)->__u6_addr.__u6_addr8[8]) == 0) && (*(const u_int32_t *)(const void *)(&(&inp->inp_laddru.iau_addr6)->__u6_addr.__u6_addr8[12]) == 0)) ||
        ((*(const u_int32_t *)(const void *)(&(laddr6)->__u6_addr.__u6_addr8[0]) == 0) && (*(const u_int32_t *)(const void *)(&(laddr6)->__u6_addr.__u6_addr8[4]) == 0) && (*(const u_int32_t *)(const void *)(&(laddr6)->__u6_addr.__u6_addr8[8]) == 0) && (*(const u_int32_t *)(const void *)(&(laddr6)->__u6_addr.__u6_addr8[12]) == 0)))
     wildcard++;
    else
     continue;
   }
  } else
  {
   if (((inp->inp_flags) & (0x100)))
    continue;
   if (inp->inp_faddru.iau_a4u.inaddr.s_addr != ((u_int32_t) ((__uint32_t)((u_int32_t)(0x00000000)))))
    wildcard++;
   if (inp->inp_laddru.iau_a4u.inaddr.s_addr != laddr.s_addr) {
    if (inp->inp_laddru.iau_a4u.inaddr.s_addr == ((u_int32_t) ((__uint32_t)((u_int32_t)(0x00000000)))) ||
        laddr.s_addr == ((u_int32_t) ((__uint32_t)((u_int32_t)(0x00000000)))))
     wildcard++;
    else
     continue;
   }
  }
  if ((!wildcard || (flags & 1)) &&
      wildcard < matchwild) {
   match = inp;
   if ((matchwild = wildcard) == 0)
    break;
  }
 }
 return (match);
}
struct rtentry *
in_pcbrtentry(struct inpcb *inp)
{
 struct route *ro;
 ro = &inp->inp_ru.ru_route;
 if (!rtisvalid(ro->ro_rt)) {
  rtfree(ro->ro_rt);
  ro->ro_rt = ((void *)0);
 }
 if (ro->ro_rt == ((void *)0)) {
  __builtin_memset((ro), (0), (sizeof(struct route_in6)));
  switch((inp->inp_socket->so_proto->pr_domain->dom_family)) {
  case 24:
   if (((*(const u_int32_t *)(const void *)(&(&inp->inp_faddru.iau_addr6)->__u6_addr.__u6_addr8[0]) == 0) && (*(const u_int32_t *)(const void *)(&(&inp->inp_faddru.iau_addr6)->__u6_addr.__u6_addr8[4]) == 0) && (*(const u_int32_t *)(const void *)(&(&inp->inp_faddru.iau_addr6)->__u6_addr.__u6_addr8[8]) == 0) && (*(const u_int32_t *)(const void *)(&(&inp->inp_faddru.iau_addr6)->__u6_addr.__u6_addr8[12]) == 0)))
    break;
   ro->ro_dst.sa_family = 24;
   ro->ro_dst.sa_len = sizeof(struct sockaddr_in6);
   satosin6(&ro->ro_dst)->sin6_addr = inp->inp_faddru.iau_addr6;
   ro->ro_tableid = inp->inp_rtableid;
   ro->ro_rt = rtalloc_mpath(&ro->ro_dst,
       &inp->inp_laddru.iau_addr6.__u6_addr.__u6_addr32[0], ro->ro_tableid);
   break;
  case 2:
   if (inp->inp_faddru.iau_a4u.inaddr.s_addr == ((u_int32_t) ((__uint32_t)((u_int32_t)(0x00000000)))))
    break;
   ro->ro_dst.sa_family = 2;
   ro->ro_dst.sa_len = sizeof(struct sockaddr_in);
   satosin(&ro->ro_dst)->sin_addr = inp->inp_faddru.iau_a4u.inaddr;
   ro->ro_tableid = inp->inp_rtableid;
   ro->ro_rt = rtalloc_mpath(&ro->ro_dst,
       &inp->inp_laddru.iau_a4u.inaddr.s_addr, ro->ro_tableid);
   break;
  }
 }
 return (ro->ro_rt);
}
int
in_pcbselsrc(struct in_addr **insrc, struct sockaddr_in *sin,
    struct inpcb *inp)
{
 struct ip_moptions *mopts = inp->inp_mou.mou_mo;
 struct route *ro = &inp->inp_ru.ru_route;
 struct in_addr *laddr = &inp->inp_laddru.iau_a4u.inaddr;
 u_int rtableid = inp->inp_rtableid;
 struct sockaddr_in *sin2;
 struct in_ifaddr *ia = ((void *)0);
 if (laddr && laddr->s_addr != ((u_int32_t) ((__uint32_t)((u_int32_t)(0x00000000)))) &&
     laddr->s_addr != ((u_int32_t) ((__uint32_t)((u_int32_t)(0xffffffff))))) {
  *insrc = laddr;
  return (0);
 }
 if ((((u_int32_t)(sin->sin_addr.s_addr) & ((u_int32_t) ((__uint32_t)((u_int32_t)(0xf0000000))))) == ((u_int32_t) ((__uint32_t)((u_int32_t)(0xe0000000))))) && mopts != ((void *)0)) {
  struct ifnet *ifp;
  ifp = if_get(mopts->imo_ifidx);
  if (ifp != ((void *)0)) {
   if (ifp->if_data.ifi_rdomain == rtable_l2(rtableid))
    do { struct ifaddr *ifa; do { int _s = rw_status(&netlock); if ((splassert_ctl > 0) && (_s != 0x0001UL && _s != 0x0002UL)) splassert_fail(0x0002UL, _s, __func__); } while (0); for((ifa) = ((&(ifp)->if_addrlist)->tqh_first); (ifa) != ((void *)0); (ifa) = ((ifa)->ifa_list.tqe_next)) { if (ifa->ifa_addr->sa_family == 2) break; } (ia) = ifatoia(ifa); } while ( 0);
   if (ia == ((void *)0)) {
    if_put(ifp);
    return (49);
   }
   *insrc = &ia->ia_addr.sin_addr;
   if_put(ifp);
   return (0);
  }
 }
 if (!rtisvalid(ro->ro_rt) || (ro->ro_tableid != rtableid) ||
     (satosin(&ro->ro_dst)->sin_addr.s_addr != sin->sin_addr.s_addr)) {
  rtfree(ro->ro_rt);
  ro->ro_rt = ((void *)0);
 }
 if (ro->ro_rt == ((void *)0)) {
  ro->ro_dst.sa_family = 2;
  ro->ro_dst.sa_len = sizeof(struct sockaddr_in);
  satosin(&ro->ro_dst)->sin_addr = sin->sin_addr;
  ro->ro_tableid = rtableid;
  ro->ro_rt = rtalloc_mpath(&ro->ro_dst, ((void *)0), ro->ro_tableid);
  sin2 = satosin(&ro->ro_dst);
  __builtin_memset((sin2->sin_zero), (0), (sizeof(sin2->sin_zero)));
 }
 if (ro->ro_rt != ((void *)0))
  ia = ifatoia(ro->ro_rt->rt_ifa);
 if (ia == ((void *)0))
  return (49);
 *insrc = &ia->ia_addr.sin_addr;
 return (0);
}
void
in_pcbrehash(struct inpcb *inp)
{
 struct inpcbtable *table = inp->inp_table;
 struct inpcbhead *head;
 do { int _s = rw_status(&netlock); if ((splassert_ctl > 0) && (_s != 0x0001UL && _s != 0x0002UL)) splassert_fail(0x0002UL, _s, __func__); } while (0);
 do { if ((inp)->inp_lhash.le_next != ((void *)0)) (inp)->inp_lhash.le_next->inp_lhash.le_prev = (inp)->inp_lhash.le_prev; *(inp)->inp_lhash.le_prev = (inp)->inp_lhash.le_next; ((inp)->inp_lhash.le_prev) = ((void *)-1); ((inp)->inp_lhash.le_next) = ((void *)-1); } while (0);
 head = in_pcblhash(table, inp->inp_rtableid, inp->inp_lport);
 do { if (((inp)->inp_lhash.le_next = (head)->lh_first) != ((void *)0)) (head)->lh_first->inp_lhash.le_prev = &(inp)->inp_lhash.le_next; (head)->lh_first = (inp); (inp)->inp_lhash.le_prev = &(head)->lh_first; } while (0);
 do { if ((inp)->inp_hash.le_next != ((void *)0)) (inp)->inp_hash.le_next->inp_hash.le_prev = (inp)->inp_hash.le_prev; *(inp)->inp_hash.le_prev = (inp)->inp_hash.le_next; ((inp)->inp_hash.le_prev) = ((void *)-1); ((inp)->inp_hash.le_next) = ((void *)-1); } while (0);
 if (inp->inp_flags & 0x100)
  head = in6_pcbhash(table, rtable_l2(inp->inp_rtableid), &inp->inp_faddru.iau_addr6, inp->inp_fport, &inp->inp_laddru.iau_addr6, inp->inp_lport);
 else
  head = in_pcbhash(table, rtable_l2(inp->inp_rtableid), &inp->inp_faddru.iau_a4u.inaddr, inp->inp_fport, &inp->inp_laddru.iau_a4u.inaddr, inp->inp_lport);
 do { if (((inp)->inp_hash.le_next = (head)->lh_first) != ((void *)0)) (head)->lh_first->inp_hash.le_prev = &(inp)->inp_hash.le_next; (head)->lh_first = (inp); (inp)->inp_hash.le_prev = &(head)->lh_first; } while (0);
}
int
in_pcbresize(struct inpcbtable *table, int hashsize)
{
 u_long nhash, nlhash;
 int osize;
 void *nhashtbl, *nlhashtbl, *ohashtbl, *olhashtbl;
 struct inpcb *inp0, *inp1;
 ohashtbl = table->inpt_hashtbl;
 olhashtbl = table->inpt_lhashtbl;
 osize = table->inpt_size;
 nhashtbl = hashinit(hashsize, 4, 0x0002, &nhash);
 if (nhashtbl == ((void *)0))
  return 55;
 nlhashtbl = hashinit(hashsize, 4, 0x0002, &nlhash);
 if (nlhashtbl == ((void *)0)) {
  hashfree(nhashtbl, hashsize, 4);
  return 55;
 }
 table->inpt_hashtbl = nhashtbl;
 table->inpt_lhashtbl = nlhashtbl;
 table->inpt_hash = nhash;
 table->inpt_lhash = nlhash;
 table->inpt_size = hashsize;
 arc4random_buf(&table->inpt_key, sizeof(table->inpt_key));
 for ((inp0) = ((&table->inpt_queue)->tqh_first); (inp0) != ((void *)0) && ((inp1) = ((inp0)->inp_queue.tqe_next), 1); (inp0) = (inp1)) {
  in_pcbrehash(inp0);
 }
 hashfree(ohashtbl, osize, 4);
 hashfree(olhashtbl, osize, 4);
 return (0);
}
int in_pcbnotifymiss = 0;
struct inpcb *
in_pcbhashlookup(struct inpcbtable *table, struct in_addr faddr,
    u_int fport_arg, struct in_addr laddr, u_int lport_arg, u_int rdomain)
{
 struct inpcbhead *head;
 struct inpcb *inp;
 u_int16_t fport = fport_arg, lport = lport_arg;
 rdomain = rtable_l2(rdomain);
 head = in_pcbhash(table, rdomain, &faddr, fport, &laddr, lport);
 for((inp) = ((head)->lh_first); (inp)!= ((void *)0); (inp) = ((inp)->inp_hash.le_next)) {
  if (inp->inp_flags & 0x100)
   continue;
  if (inp->inp_faddru.iau_a4u.inaddr.s_addr == faddr.s_addr &&
      inp->inp_fport == fport && inp->inp_lport == lport &&
      inp->inp_laddru.iau_a4u.inaddr.s_addr == laddr.s_addr &&
      rtable_l2(inp->inp_rtableid) == rdomain) {
   if (inp != ((head)->lh_first)) {
    do { if ((inp)->inp_hash.le_next != ((void *)0)) (inp)->inp_hash.le_next->inp_hash.le_prev = (inp)->inp_hash.le_prev; *(inp)->inp_hash.le_prev = (inp)->inp_hash.le_next; ((inp)->inp_hash.le_prev) = ((void *)-1); ((inp)->inp_hash.le_next) = ((void *)-1); } while (0);
    do { if (((inp)->inp_hash.le_next = (head)->lh_first) != ((void *)0)) (head)->lh_first->inp_hash.le_prev = &(inp)->inp_hash.le_next; (head)->lh_first = (inp); (inp)->inp_hash.le_prev = &(head)->lh_first; } while (0);
   }
   break;
  }
 }
 if (inp == ((void *)0) && in_pcbnotifymiss) {
  printf("%s: faddr=%08x fport=%d laddr=%08x lport=%d rdom=%d\n",
      __func__, ((__uint32_t)(faddr.s_addr)), ((__uint16_t)(fport)),
      ((__uint32_t)(laddr.s_addr)), ((__uint16_t)(lport)), rdomain);
 }
 return (inp);
}
struct inpcb *
in6_pcbhashlookup(struct inpcbtable *table, const struct in6_addr *faddr,
    u_int fport_arg, const struct in6_addr *laddr, u_int lport_arg,
    u_int rtable)
{
 struct inpcbhead *head;
 struct inpcb *inp;
 u_int16_t fport = fport_arg, lport = lport_arg;
 rtable = rtable_l2(rtable);
 head = in6_pcbhash(table, rtable, faddr, fport, laddr, lport);
 for((inp) = ((head)->lh_first); (inp)!= ((void *)0); (inp) = ((inp)->inp_hash.le_next)) {
  if (!(inp->inp_flags & 0x100))
   continue;
  if ((__builtin_memcmp((&(&inp->inp_faddru.iau_addr6)->__u6_addr.__u6_addr8[0]), (&(faddr)->__u6_addr.__u6_addr8[0]), (sizeof(struct in6_addr))) == 0) &&
      inp->inp_fport == fport && inp->inp_lport == lport &&
      (__builtin_memcmp((&(&inp->inp_laddru.iau_addr6)->__u6_addr.__u6_addr8[0]), (&(laddr)->__u6_addr.__u6_addr8[0]), (sizeof(struct in6_addr))) == 0) &&
      rtable_l2(inp->inp_rtableid) == rtable) {
   if (inp != ((head)->lh_first)) {
    do { if ((inp)->inp_hash.le_next != ((void *)0)) (inp)->inp_hash.le_next->inp_hash.le_prev = (inp)->inp_hash.le_prev; *(inp)->inp_hash.le_prev = (inp)->inp_hash.le_next; ((inp)->inp_hash.le_prev) = ((void *)-1); ((inp)->inp_hash.le_next) = ((void *)-1); } while (0);
    do { if (((inp)->inp_hash.le_next = (head)->lh_first) != ((void *)0)) (head)->lh_first->inp_hash.le_prev = &(inp)->inp_hash.le_next; (head)->lh_first = (inp); (inp)->inp_hash.le_prev = &(head)->lh_first; } while (0);
   }
   break;
  }
 }
 if (inp == ((void *)0) && in_pcbnotifymiss) {
  printf("in6_pcbhashlookup: faddr=");
  printf(" fport=%d laddr=", ((__uint16_t)(fport)));
  printf(" lport=%d\n", ((__uint16_t)(lport)));
 }
 return (inp);
}
struct inpcb *
in_pcblookup_listen(struct inpcbtable *table, struct in_addr laddr,
    u_int lport_arg, struct mbuf *m, u_int rdomain)
{
 struct inpcbhead *head;
 struct in_addr *key1, *key2;
 struct inpcb *inp;
 u_int16_t lport = lport_arg;
 rdomain = rtable_l2(rdomain);
 key1 = &laddr;
 key2 = &zeroin_addr;
 if (m && m->M_dat.MH.MH_pkthdr.pf.flags & 0x08) {
  struct pf_divert *divert;
  divert = pf_find_divert(m);
  ((divert != ((void *)0)) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../netinet/in_pcb.c", 1154, "divert != NULL"));
  switch (divert->type) {
  case PF_DIVERT_TO:
   key1 = key2 = &divert->addr.pfa.v4;
   lport = divert->port;
   break;
  case PF_DIVERT_REPLY:
   return (((void *)0));
  default:
   panic("%s: unknown divert type %d, mbuf %p, divert %p",
       __func__, divert->type, m, divert);
  }
 } else if (m && m->M_dat.MH.MH_pkthdr.pf.flags & 0x04) {
  key1 = &zeroin_addr;
  key2 = &laddr;
 }
 head = in_pcbhash(table, rdomain, &zeroin_addr, 0, key1, lport);
 for((inp) = ((head)->lh_first); (inp)!= ((void *)0); (inp) = ((inp)->inp_hash.le_next)) {
  if (inp->inp_flags & 0x100)
   continue;
  if (inp->inp_lport == lport && inp->inp_fport == 0 &&
      inp->inp_laddru.iau_a4u.inaddr.s_addr == key1->s_addr &&
      inp->inp_faddru.iau_a4u.inaddr.s_addr == ((u_int32_t) ((__uint32_t)((u_int32_t)(0x00000000)))) &&
      rtable_l2(inp->inp_rtableid) == rdomain)
   break;
 }
 if (inp == ((void *)0) && key1->s_addr != key2->s_addr) {
  head = in_pcbhash(table, rdomain, &zeroin_addr, 0, key2, lport);
  for((inp) = ((head)->lh_first); (inp)!= ((void *)0); (inp) = ((inp)->inp_hash.le_next)) {
   if (inp->inp_flags & 0x100)
    continue;
   if (inp->inp_lport == lport && inp->inp_fport == 0 &&
       inp->inp_laddru.iau_a4u.inaddr.s_addr == key2->s_addr &&
       inp->inp_faddru.iau_a4u.inaddr.s_addr == ((u_int32_t) ((__uint32_t)((u_int32_t)(0x00000000)))) &&
       rtable_l2(inp->inp_rtableid) == rdomain)
    break;
  }
 }
 if (inp == ((void *)0) && in_pcbnotifymiss) {
  printf("in_pcblookup_listen: laddr=%08x lport=%d\n",
      ((__uint32_t)(laddr.s_addr)), ((__uint16_t)(lport)));
 }
 if (inp != ((void *)0) && inp != ((head)->lh_first)) {
  do { if ((inp)->inp_hash.le_next != ((void *)0)) (inp)->inp_hash.le_next->inp_hash.le_prev = (inp)->inp_hash.le_prev; *(inp)->inp_hash.le_prev = (inp)->inp_hash.le_next; ((inp)->inp_hash.le_prev) = ((void *)-1); ((inp)->inp_hash.le_next) = ((void *)-1); } while (0);
  do { if (((inp)->inp_hash.le_next = (head)->lh_first) != ((void *)0)) (head)->lh_first->inp_hash.le_prev = &(inp)->inp_hash.le_next; (head)->lh_first = (inp); (inp)->inp_hash.le_prev = &(head)->lh_first; } while (0);
 }
 return (inp);
}
struct inpcb *
in6_pcblookup_listen(struct inpcbtable *table, struct in6_addr *laddr,
    u_int lport_arg, struct mbuf *m, u_int rtable)
{
 struct inpcbhead *head;
 struct in6_addr *key1, *key2;
 struct inpcb *inp;
 u_int16_t lport = lport_arg;
 rtable = rtable_l2(rtable);
 key1 = laddr;
 key2 = &zeroin6_addr;
 if (m && m->M_dat.MH.MH_pkthdr.pf.flags & 0x08) {
  struct pf_divert *divert;
  divert = pf_find_divert(m);
  ((divert != ((void *)0)) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../netinet/in_pcb.c", 1234, "divert != NULL"));
  switch (divert->type) {
  case PF_DIVERT_TO:
   key1 = key2 = &divert->addr.pfa.v6;
   lport = divert->port;
   break;
  case PF_DIVERT_REPLY:
   return (((void *)0));
  default:
   panic("%s: unknown divert type %d, mbuf %p, divert %p",
       __func__, divert->type, m, divert);
  }
 } else if (m && m->M_dat.MH.MH_pkthdr.pf.flags & 0x04) {
  key1 = &zeroin6_addr;
  key2 = laddr;
 }
 head = in6_pcbhash(table, rtable, &zeroin6_addr, 0, key1, lport);
 for((inp) = ((head)->lh_first); (inp)!= ((void *)0); (inp) = ((inp)->inp_hash.le_next)) {
  if (!(inp->inp_flags & 0x100))
   continue;
  if (inp->inp_lport == lport && inp->inp_fport == 0 &&
      (__builtin_memcmp((&(&inp->inp_laddru.iau_addr6)->__u6_addr.__u6_addr8[0]), (&(key1)->__u6_addr.__u6_addr8[0]), (sizeof(struct in6_addr))) == 0) &&
      ((*(const u_int32_t *)(const void *)(&(&inp->inp_faddru.iau_addr6)->__u6_addr.__u6_addr8[0]) == 0) && (*(const u_int32_t *)(const void *)(&(&inp->inp_faddru.iau_addr6)->__u6_addr.__u6_addr8[4]) == 0) && (*(const u_int32_t *)(const void *)(&(&inp->inp_faddru.iau_addr6)->__u6_addr.__u6_addr8[8]) == 0) && (*(const u_int32_t *)(const void *)(&(&inp->inp_faddru.iau_addr6)->__u6_addr.__u6_addr8[12]) == 0)) &&
      rtable_l2(inp->inp_rtableid) == rtable)
   break;
 }
 if (inp == ((void *)0) && ! (__builtin_memcmp((&(key1)->__u6_addr.__u6_addr8[0]), (&(key2)->__u6_addr.__u6_addr8[0]), (sizeof(struct in6_addr))) == 0)) {
  head = in6_pcbhash(table, rtable, &zeroin6_addr, 0, key2, lport);
  for((inp) = ((head)->lh_first); (inp)!= ((void *)0); (inp) = ((inp)->inp_hash.le_next)) {
   if (!(inp->inp_flags & 0x100))
    continue;
   if (inp->inp_lport == lport && inp->inp_fport == 0 &&
       (__builtin_memcmp((&(&inp->inp_laddru.iau_addr6)->__u6_addr.__u6_addr8[0]), (&(key2)->__u6_addr.__u6_addr8[0]), (sizeof(struct in6_addr))) == 0) &&
       ((*(const u_int32_t *)(const void *)(&(&inp->inp_faddru.iau_addr6)->__u6_addr.__u6_addr8[0]) == 0) && (*(const u_int32_t *)(const void *)(&(&inp->inp_faddru.iau_addr6)->__u6_addr.__u6_addr8[4]) == 0) && (*(const u_int32_t *)(const void *)(&(&inp->inp_faddru.iau_addr6)->__u6_addr.__u6_addr8[8]) == 0) && (*(const u_int32_t *)(const void *)(&(&inp->inp_faddru.iau_addr6)->__u6_addr.__u6_addr8[12]) == 0)) &&
       rtable_l2(inp->inp_rtableid) == rtable)
    break;
  }
 }
 if (inp == ((void *)0) && in_pcbnotifymiss) {
  printf("in6_pcblookup_listen: laddr= lport=%d\n",
      ((__uint16_t)(lport)));
 }
 if (inp != ((void *)0) && inp != ((head)->lh_first)) {
  do { if ((inp)->inp_hash.le_next != ((void *)0)) (inp)->inp_hash.le_next->inp_hash.le_prev = (inp)->inp_hash.le_prev; *(inp)->inp_hash.le_prev = (inp)->inp_hash.le_next; ((inp)->inp_hash.le_prev) = ((void *)-1); ((inp)->inp_hash.le_next) = ((void *)-1); } while (0);
  do { if (((inp)->inp_hash.le_next = (head)->lh_first) != ((void *)0)) (head)->lh_first->inp_hash.le_prev = &(inp)->inp_hash.le_next; (head)->lh_first = (inp); (inp)->inp_hash.le_prev = &(head)->lh_first; } while (0);
 }
 return (inp);
}
