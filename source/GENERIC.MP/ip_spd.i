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
struct sadb_msg {
 uint8_t sadb_msg_version;
 uint8_t sadb_msg_type;
 uint8_t sadb_msg_errno;
 uint8_t sadb_msg_satype;
 uint16_t sadb_msg_len;
 uint16_t sadb_msg_reserved;
 uint32_t sadb_msg_seq;
 uint32_t sadb_msg_pid;
};
struct sadb_ext {
 uint16_t sadb_ext_len;
 uint16_t sadb_ext_type;
};
struct sadb_sa {
 uint16_t sadb_sa_len;
 uint16_t sadb_sa_exttype;
 uint32_t sadb_sa_spi;
 uint8_t sadb_sa_replay;
 uint8_t sadb_sa_state;
 uint8_t sadb_sa_auth;
 uint8_t sadb_sa_encrypt;
 uint32_t sadb_sa_flags;
};
struct sadb_lifetime {
 uint16_t sadb_lifetime_len;
 uint16_t sadb_lifetime_exttype;
 uint32_t sadb_lifetime_allocations;
 uint64_t sadb_lifetime_bytes;
 uint64_t sadb_lifetime_addtime;
 uint64_t sadb_lifetime_usetime;
};
struct sadb_address {
 uint16_t sadb_address_len;
 uint16_t sadb_address_exttype;
 uint32_t sadb_address_reserved;
};
struct sadb_key {
 uint16_t sadb_key_len;
 uint16_t sadb_key_exttype;
 uint16_t sadb_key_bits;
 uint16_t sadb_key_reserved;
};
struct sadb_ident {
 uint16_t sadb_ident_len;
 uint16_t sadb_ident_exttype;
 uint16_t sadb_ident_type;
 uint16_t sadb_ident_reserved;
 uint64_t sadb_ident_id;
};
struct sadb_sens {
 uint16_t sadb_sens_len;
 uint16_t sadb_sens_exttype;
 uint32_t sadb_sens_dpd;
 uint8_t sadb_sens_sens_level;
 uint8_t sadb_sens_sens_len;
 uint8_t sadb_sens_integ_level;
 uint8_t sadb_sens_integ_len;
 uint32_t sadb_sens_reserved;
};
struct sadb_prop {
 uint16_t sadb_prop_len;
 uint16_t sadb_prop_exttype;
 uint8_t sadb_prop_num;
 uint8_t sadb_prop_replay;
 uint16_t sadb_prop_reserved;
};
struct sadb_comb {
 uint8_t sadb_comb_auth;
 uint8_t sadb_comb_encrypt;
 uint16_t sadb_comb_flags;
 uint16_t sadb_comb_auth_minbits;
 uint16_t sadb_comb_auth_maxbits;
 uint16_t sadb_comb_encrypt_minbits;
 uint16_t sadb_comb_encrypt_maxbits;
 uint32_t sadb_comb_reserved;
 uint32_t sadb_comb_soft_allocations;
 uint32_t sadb_comb_hard_allocations;
 uint64_t sadb_comb_soft_bytes;
 uint64_t sadb_comb_hard_bytes;
 uint64_t sadb_comb_soft_addtime;
 uint64_t sadb_comb_hard_addtime;
 uint64_t sadb_comb_soft_usetime;
 uint64_t sadb_comb_hard_usetime;
};
struct sadb_supported {
 uint16_t sadb_supported_len;
 uint16_t sadb_supported_exttype;
 uint32_t sadb_supported_reserved;
};
struct sadb_alg {
 uint8_t sadb_alg_id;
 uint8_t sadb_alg_ivlen;
 uint16_t sadb_alg_minbits;
 uint16_t sadb_alg_maxbits;
 uint16_t sadb_alg_reserved;
};
struct sadb_spirange {
 uint16_t sadb_spirange_len;
 uint16_t sadb_spirange_exttype;
 uint32_t sadb_spirange_min;
 uint32_t sadb_spirange_max;
 uint32_t sadb_spirange_reserved;
};
struct sadb_protocol {
 uint16_t sadb_protocol_len;
 uint16_t sadb_protocol_exttype;
 uint8_t sadb_protocol_proto;
 uint8_t sadb_protocol_direction;
 uint8_t sadb_protocol_flags;
 uint8_t sadb_protocol_reserved2;
};
struct sadb_x_policy {
 uint16_t sadb_x_policy_len;
 uint16_t sadb_x_policy_exttype;
 u_int32_t sadb_x_policy_seq;
};
struct sadb_x_udpencap {
 uint16_t sadb_x_udpencap_len;
 uint16_t sadb_x_udpencap_exttype;
 uint16_t sadb_x_udpencap_port;
 uint16_t sadb_x_udpencap_reserved;
};
struct sadb_x_tag {
 uint16_t sadb_x_tag_len;
 uint16_t sadb_x_tag_exttype;
 u_int32_t sadb_x_tag_taglen;
};
struct sadb_x_tap {
 uint16_t sadb_x_tap_len;
 uint16_t sadb_x_tap_exttype;
 u_int32_t sadb_x_tap_unit;
};
struct tdb;
struct socket;
struct mbuf;
int pfkeyv2_parsemessage(void *, int, void **);
int pfkeyv2_expire(struct tdb *, u_int16_t);
int pfkeyv2_acquire(struct ipsec_policy *, union sockaddr_union *,
    union sockaddr_union *, u_int32_t *, struct sockaddr_encap *);
int pfkeyv2_get(struct tdb *, void **, void **, int *);
int pfkeyv2_policy(struct ipsec_acquire *, void **, void **);
int pfkeyv2_send(struct socket *, void *, int);
int pfkeyv2_sendmessage(void **, int, struct socket *, u_int8_t, int, u_int);
int pfkeyv2_dump_policy(struct ipsec_policy *, void **, void **, int *);
int pfkeyv2_dump_walker(struct tdb *, void *, int);
int pfkeyv2_get_proto_alg(u_int8_t, u_int8_t *, int *);
int pfkeyv2_sysctl(int *, u_int, void *, size_t *, void *, size_t);
int pfkeyv2_sysctl_walker(struct tdb *, void *, int);
int pfkeyv2_sysctl_dump(void *);
int pfdatatopacket(void *, int, struct mbuf **);
void export_address(void **, struct sockaddr *);
void export_identities(void **, struct ipsec_ids *, int, void **);
void export_lifetime(void **, struct tdb *, int);
void export_sa(void **, struct tdb *);
void export_flow(void **, u_int8_t, struct sockaddr_encap *,
    struct sockaddr_encap *, void **);
void export_key(void **, struct tdb *, int);
void export_udpencap(void **, struct tdb *);
void export_tag(void **, struct tdb *);
void export_tap(void **, struct tdb *);
void export_satype(void **, struct tdb *);
void import_address(struct sockaddr *, struct sadb_address *);
void import_identities(struct ipsec_ids **, int, struct sadb_ident *,
    struct sadb_ident *);
void import_key(struct ipsecinit *, struct sadb_key *, int);
void import_lifetime(struct tdb *, struct sadb_lifetime *, int);
void import_sa(struct tdb *, struct sadb_sa *, struct ipsecinit *);
void import_flow(struct sockaddr_encap *, struct sockaddr_encap *,
    struct sadb_address *, struct sadb_address *, struct sadb_address *,
    struct sadb_address *, struct sadb_protocol *, struct sadb_protocol *);
void import_udpencap(struct tdb *, struct sadb_x_udpencap *);
void import_tag(struct tdb *, struct sadb_x_tag *);
void import_tap(struct tdb *, struct sadb_x_tap *);
int ipsp_acquire_sa(struct ipsec_policy *, union sockaddr_union *,
     union sockaddr_union *, struct sockaddr_encap *, struct mbuf *);
struct ipsec_acquire *ipsp_pending_acquire(struct ipsec_policy *,
     union sockaddr_union *);
void ipsp_delete_acquire_timo(void *);
void ipsp_delete_acquire(struct ipsec_acquire *);
struct pool ipsec_policy_pool;
struct pool ipsec_acquire_pool;
int ipsec_policy_pool_initialized = 0;
int ipsec_acquire_pool_initialized = 0;
struct radix_node_head **spd_tables;
unsigned int spd_table_max;
struct ipsec_acquire_head { struct ipsec_acquire *tqh_first; struct ipsec_acquire **tqh_last; } ipsec_acquire_head =
    { ((void *)0), &(ipsec_acquire_head).tqh_first };
struct radix_node_head *
spd_table_get(unsigned int rtableid)
{
 unsigned int rdomain;
 do { int _s = rw_status(&netlock); if ((splassert_ctl > 0) && (_s != 0x0001UL && _s != 0x0002UL)) splassert_fail(0x0002UL, _s, __func__); } while (0);
 if (spd_tables == ((void *)0))
  return (((void *)0));
 rdomain = rtable_l2(rtableid);
 if (rdomain > spd_table_max)
  return (((void *)0));
 return (spd_tables[rdomain]);
}
struct radix_node_head *
spd_table_add(unsigned int rtableid)
{
 struct radix_node_head *rnh = ((void *)0);
 unsigned int rdomain;
 void *p;
 do { int _s = rw_status(&netlock); if ((splassert_ctl > 0) && (_s != 0x0001UL && _s != 0x0002UL)) splassert_fail(0x0002UL, _s, __func__); } while (0);
 rdomain = rtable_l2(rtableid);
 if (spd_tables == ((void *)0) || rdomain > spd_table_max) {
  if ((p = mallocarray(rdomain + 1, sizeof(*rnh),
      5, 0x0002|0x0008)) == ((void *)0))
   return (((void *)0));
  if (spd_tables != ((void *)0)) {
   __builtin_memcpy((p), (spd_tables), (sizeof(*rnh) * (spd_table_max+1)));
   free(spd_tables, 5, 0);
  }
  spd_tables = p;
  spd_table_max = rdomain;
 }
 if (spd_tables[rdomain] == ((void *)0)) {
  if (rn_inithead((void **)&rnh,
      __builtin_offsetof(struct sockaddr_encap, sen_type)) == 0)
   rnh = ((void *)0);
  spd_tables[rdomain] = rnh;
 }
 return (spd_tables[rdomain]);
}
int
spd_table_walk(unsigned int rtableid,
    int (*func)(struct ipsec_policy *, void *, unsigned int), void *arg)
{
 struct radix_node_head *rnh;
 int (*walker)(struct radix_node *, void *, u_int) = (void *)func;
 int error;
 rnh = spd_table_get(rtableid);
 if (rnh == ((void *)0))
  return (0);
 while ((error = rn_walktree(rnh, walker, arg)) == 35)
  continue;
 return (error);
}
struct tdb *
ipsp_spd_lookup(struct mbuf *m, int af, int hlen, int *error, int direction,
    struct tdb *tdbp, struct inpcb *inp, u_int32_t ipsecflowinfo)
{
 struct radix_node_head *rnh;
 struct radix_node *rn;
 union sockaddr_union sdst, ssrc;
 struct sockaddr_encap *ddst, dst;
 struct ipsec_policy *ipo;
 struct ipsec_ids *ids = ((void *)0);
 int signore = 0, dignore = 0;
 u_int rdomain = rtable_l2(m->M_dat.MH.MH_pkthdr.ph_rtableid);
 do { int _s = rw_status(&netlock); if ((splassert_ctl > 0) && (_s != 0x0001UL && _s != 0x0002UL)) splassert_fail(0x0002UL, _s, __func__); } while (0);
 if (!ipsec_in_use && inp == ((void *)0)) {
  *error = 0;
  return ((void *)0);
 }
 if ((inp != ((void *)0)) && (direction == 0x1) &&
     (inp->inp_seclevel[1] == 0x00) &&
     (inp->inp_seclevel[2] == 0x00) &&
     (inp->inp_seclevel[0] == 0x00)) {
  *error = 0;
  return ((void *)0);
 }
 __builtin_memset((&dst), (0), (sizeof(dst)));
 __builtin_memset((&sdst), (0), (sizeof(union sockaddr_union)));
 __builtin_memset((&ssrc), (0), (sizeof(union sockaddr_union)));
 ddst = (struct sockaddr_encap *)&dst;
 ddst->sen_family = 30;
 ddst->sen_len = sizeof(struct sockaddr_encap);
 switch (af) {
 case 2:
  if (hlen < sizeof (struct ip) || m->M_dat.MH.MH_pkthdr.len < hlen) {
   *error = 22;
   return ((void *)0);
  }
  ddst->Sen.Sip4.Direction = direction;
  ddst->sen_type = 0x0001;
  m_copydata(m, __builtin_offsetof(struct ip, ip_src),
      sizeof(struct in_addr), (caddr_t) &(ddst->Sen.Sip4.Src));
  m_copydata(m, __builtin_offsetof(struct ip, ip_dst),
      sizeof(struct in_addr), (caddr_t) &(ddst->Sen.Sip4.Dst));
  m_copydata(m, __builtin_offsetof(struct ip, ip_p), sizeof(u_int8_t),
      (caddr_t) &(ddst->Sen.Sip4.Proto));
  sdst.sin.sin_family = ssrc.sin.sin_family = 2;
  sdst.sin.sin_len = ssrc.sin.sin_len =
      sizeof(struct sockaddr_in);
  ssrc.sin.sin_addr = ddst->Sen.Sip4.Src;
  sdst.sin.sin_addr = ddst->Sen.Sip4.Dst;
  switch (ddst->Sen.Sip4.Proto) {
  case 17:
  case 6:
   if (m->M_dat.MH.MH_pkthdr.len < hlen + 2 * sizeof(u_int16_t)) {
    *error = 22;
    return ((void *)0);
   }
   m_copydata(m, hlen, sizeof(u_int16_t),
       (caddr_t) &(ddst->Sen.Sip4.Sport));
   m_copydata(m, hlen + sizeof(u_int16_t), sizeof(u_int16_t),
       (caddr_t) &(ddst->Sen.Sip4.Dport));
   break;
  default:
   ddst->Sen.Sip4.Sport = 0;
   ddst->Sen.Sip4.Dport = 0;
  }
  break;
 case 24:
  if (hlen < sizeof (struct ip6_hdr) || m->M_dat.MH.MH_pkthdr.len < hlen) {
   *error = 22;
   return ((void *)0);
  }
  ddst->sen_type = 0x0004;
  ddst->Sen.Sip6.Direction = direction;
  m_copydata(m, __builtin_offsetof(struct ip6_hdr, ip6_src),
      sizeof(struct in6_addr),
      (caddr_t) &(ddst->Sen.Sip6.Src));
  m_copydata(m, __builtin_offsetof(struct ip6_hdr, ip6_dst),
      sizeof(struct in6_addr),
      (caddr_t) &(ddst->Sen.Sip6.Dst));
  m_copydata(m, __builtin_offsetof(struct ip6_hdr, ip6_ctlun.ip6_un1.ip6_un1_nxt),
      sizeof(u_int8_t),
      (caddr_t) &(ddst->Sen.Sip6.Proto));
  sdst.sin6.sin6_family = ssrc.sin6.sin6_family = 24;
  sdst.sin6.sin6_len = ssrc.sin6.sin6_len =
      sizeof(struct sockaddr_in6);
  in6_recoverscope(&ssrc.sin6, &ddst->Sen.Sip6.Src);
  in6_recoverscope(&sdst.sin6, &ddst->Sen.Sip6.Dst);
  switch (ddst->Sen.Sip6.Proto) {
  case 17:
  case 6:
   if (m->M_dat.MH.MH_pkthdr.len < hlen + 2 * sizeof(u_int16_t)) {
    *error = 22;
    return ((void *)0);
   }
   m_copydata(m, hlen, sizeof(u_int16_t),
       (caddr_t) &(ddst->Sen.Sip6.Sport));
   m_copydata(m, hlen + sizeof(u_int16_t), sizeof(u_int16_t),
       (caddr_t) &(ddst->Sen.Sip6.Dport));
   break;
  default:
   ddst->Sen.Sip6.Sport = 0;
   ddst->Sen.Sip6.Dport = 0;
  }
  break;
 default:
  *error = 47;
  return ((void *)0);
 }
 if ((rnh = spd_table_get(rdomain)) == ((void *)0) ||
     (rn = rn_match((caddr_t)&dst, rnh)) == ((void *)0)) {
  *error = 0;
  return ipsp_spd_inp(m, af, hlen, error, direction,
      tdbp, inp, ((void *)0));
 }
 ipo = (struct ipsec_policy *)rn;
 switch (ipo->ipo_type) {
 case 3:
  *error = 0;
  return ipsp_spd_inp(m, af, hlen, error, direction, tdbp,
      inp, ipo);
 case 4:
  *error = 65;
  return ((void *)0);
 case 0:
 case 1:
 case 2:
 case 5:
  break;
 default:
  *error = 22;
  return ((void *)0);
 }
 switch (ipo->ipo_dst.sa.sa_family) {
 case 2:
  if ((ipo->ipo_dst.sin.sin_addr.s_addr == ((u_int32_t) ((__uint32_t)((u_int32_t)(0x00000000))))) ||
      (ipo->ipo_dst.sin.sin_addr.s_addr == ((u_int32_t) ((__uint32_t)((u_int32_t)(0xffffffff))))))
   dignore = 1;
  break;
 case 24:
  if ((((*(const u_int32_t *)(const void *)(&(&ipo->ipo_dst.sin6.sin6_addr)->__u6_addr.__u6_addr8[0]) == 0) && (*(const u_int32_t *)(const void *)(&(&ipo->ipo_dst.sin6.sin6_addr)->__u6_addr.__u6_addr8[4]) == 0) && (*(const u_int32_t *)(const void *)(&(&ipo->ipo_dst.sin6.sin6_addr)->__u6_addr.__u6_addr8[8]) == 0) && (*(const u_int32_t *)(const void *)(&(&ipo->ipo_dst.sin6.sin6_addr)->__u6_addr.__u6_addr8[12]) == 0))) ||
      (__builtin_memcmp((&ipo->ipo_dst.sin6.sin6_addr), (&in6mask128), (sizeof(in6mask128))) == 0))
   dignore = 1;
  break;
 }
 switch (ipo->ipo_src.sa.sa_family) {
 case 2:
  if (ipo->ipo_src.sin.sin_addr.s_addr == ((u_int32_t) ((__uint32_t)((u_int32_t)(0x00000000)))))
   signore = 1;
  break;
 case 24:
  if (((*(const u_int32_t *)(const void *)(&(&ipo->ipo_src.sin6.sin6_addr)->__u6_addr.__u6_addr8[0]) == 0) && (*(const u_int32_t *)(const void *)(&(&ipo->ipo_src.sin6.sin6_addr)->__u6_addr.__u6_addr8[4]) == 0) && (*(const u_int32_t *)(const void *)(&(&ipo->ipo_src.sin6.sin6_addr)->__u6_addr.__u6_addr8[8]) == 0) && (*(const u_int32_t *)(const void *)(&(&ipo->ipo_src.sin6.sin6_addr)->__u6_addr.__u6_addr8[12]) == 0)))
   signore = 1;
  break;
 }
 if ((ipo->ipo_tdb) && (ipo->ipo_tdb->tdb_flags & 0x00010)) {
  do { if (((ipo)->ipo_tdb_next.tqe_next) != ((void *)0)) (ipo)->ipo_tdb_next.tqe_next->ipo_tdb_next.tqe_prev = (ipo)->ipo_tdb_next.tqe_prev; else (&ipo->ipo_tdb->tdb_policy_head)->tqh_last = (ipo)->ipo_tdb_next.tqe_prev; *(ipo)->ipo_tdb_next.tqe_prev = (ipo)->ipo_tdb_next.tqe_next; ((ipo)->ipo_tdb_next.tqe_prev) = ((void *)-1); ((ipo)->ipo_tdb_next.tqe_next) = ((void *)-1); } while (0);
  ipo->ipo_tdb = ((void *)0);
 }
 if (direction == 0x2) {
  if ((inp != ((void *)0)) &&
      (inp->inp_seclevel[1] == 0x00) &&
      (inp->inp_seclevel[2] ==
   0x00) &&
      (inp->inp_seclevel[0] == 0x00)) {
   if (dignore ||
       !__builtin_memcmp((&sdst), (&ipo->ipo_dst), (sdst.sa.sa_len))) {
    *error = 0;
    return ((void *)0);
   }
  }
  if (ipsecflowinfo)
   ids = ipsp_ids_lookup(ipsecflowinfo);
  if (ipo->ipo_tdb) {
   if ((ipo->ipo_last_searched <= ipsec_last_added) ||
       (ipo->ipo_sproto != ipo->ipo_tdb->tdb_sproto) ||
       __builtin_memcmp((dignore ? &sdst : &ipo->ipo_dst), (&ipo->ipo_tdb->tdb_dst), (ipo->ipo_tdb->tdb_dst.sa.sa_len)))
    goto nomatchout;
   if (!ipsp_aux_match(ipo->ipo_tdb,
       ids ? ids : ipo->ipo_ids,
       &ipo->ipo_addr, &ipo->ipo_mask))
    goto nomatchout;
   *error = 0;
   return ipsp_spd_inp(m, af, hlen, error, direction,
       tdbp, inp, ipo);
  nomatchout:
   do { if (((ipo)->ipo_tdb_next.tqe_next) != ((void *)0)) (ipo)->ipo_tdb_next.tqe_next->ipo_tdb_next.tqe_prev = (ipo)->ipo_tdb_next.tqe_prev; else (&ipo->ipo_tdb->tdb_policy_head)->tqh_last = (ipo)->ipo_tdb_next.tqe_prev; *(ipo)->ipo_tdb_next.tqe_prev = (ipo)->ipo_tdb_next.tqe_next; ((ipo)->ipo_tdb_next.tqe_prev) = ((void *)-1); ((ipo)->ipo_tdb_next.tqe_next) = ((void *)-1); } while (0);
   ipo->ipo_tdb = ((void *)0);
   ipo->ipo_last_searched = 0;
  }
  if (ipo->ipo_last_searched <= ipsec_last_added) {
   if (dignore == 0)
    ipo->ipo_last_searched = time_second;
   ipo->ipo_tdb =
       gettdbbydst(rdomain,
    dignore ? &sdst : &ipo->ipo_dst,
    ipo->ipo_sproto,
    ids ? ids: ipo->ipo_ids,
    &ipo->ipo_addr, &ipo->ipo_mask);
   if (ipo->ipo_tdb) {
    do { (ipo)->ipo_tdb_next.tqe_next = ((void *)0); (ipo)->ipo_tdb_next.tqe_prev = (&ipo->ipo_tdb->tdb_policy_head)->tqh_last; *(&ipo->ipo_tdb->tdb_policy_head)->tqh_last = (ipo); (&ipo->ipo_tdb->tdb_policy_head)->tqh_last = &(ipo)->ipo_tdb_next.tqe_next; } while (0);
    *error = 0;
    return ipsp_spd_inp(m, af, hlen, error,
        direction, tdbp, inp, ipo);
   }
  }
  switch (ipo->ipo_type) {
  case 2:
   if (ipsp_acquire_sa(ipo,
       dignore ? &sdst : &ipo->ipo_dst,
       signore ? ((void *)0) : &ipo->ipo_src, ddst, m) != 0) {
    *error = 13;
    return ((void *)0);
   }
  case 5:
   *error = -22;
   return ((void *)0);
  case 1:
   ipsp_acquire_sa(ipo, dignore ? &sdst : &ipo->ipo_dst,
       signore ? ((void *)0) : &ipo->ipo_src, ddst, ((void *)0));
  case 0:
   *error = 0;
   return ipsp_spd_inp(m, af, hlen, error, direction,
       tdbp, inp, ipo);
  }
 } else {
  if (tdbp != ((void *)0)) {
   if (ipo->ipo_tdb == tdbp) {
    *error = 0;
    return ipsp_spd_inp(m, af, hlen, error,
        direction, tdbp, inp, ipo);
   }
   if (__builtin_memcmp((dignore ? &ssrc : &ipo->ipo_dst), (&tdbp->tdb_src), (tdbp->tdb_src.sa.sa_len)) ||
       (ipo->ipo_sproto != tdbp->tdb_sproto))
    goto nomatchin;
   if (ipo->ipo_ids)
    if (tdbp->tdb_ids == ((void *)0) ||
        !ipsp_ids_match(ipo->ipo_ids, tdbp->tdb_ids))
     goto nomatchin;
   if (ipo->ipo_tdb)
    do { if (((ipo)->ipo_tdb_next.tqe_next) != ((void *)0)) (ipo)->ipo_tdb_next.tqe_next->ipo_tdb_next.tqe_prev = (ipo)->ipo_tdb_next.tqe_prev; else (&ipo->ipo_tdb->tdb_policy_head)->tqh_last = (ipo)->ipo_tdb_next.tqe_prev; *(ipo)->ipo_tdb_next.tqe_prev = (ipo)->ipo_tdb_next.tqe_next; ((ipo)->ipo_tdb_next.tqe_prev) = ((void *)-1); ((ipo)->ipo_tdb_next.tqe_next) = ((void *)-1); } while (0);
   ipo->ipo_tdb = tdbp;
   do { (ipo)->ipo_tdb_next.tqe_next = ((void *)0); (ipo)->ipo_tdb_next.tqe_prev = (&tdbp->tdb_policy_head)->tqh_last; *(&tdbp->tdb_policy_head)->tqh_last = (ipo); (&tdbp->tdb_policy_head)->tqh_last = &(ipo)->ipo_tdb_next.tqe_next; } while (0);
   *error = 0;
   return ipsp_spd_inp(m, af, hlen, error, direction,
       tdbp, inp, ipo);
  nomatchin:
 ;
  }
  if (ipo->ipo_tdb) {
   if (ipo->ipo_sproto == ipo->ipo_tdb->tdb_sproto &&
       !__builtin_memcmp((&ipo->ipo_tdb->tdb_src), (dignore ? &ssrc : &ipo->ipo_dst), (ipo->ipo_tdb->tdb_src.sa.sa_len)))
    goto skipinputsearch;
   do { if (((ipo)->ipo_tdb_next.tqe_next) != ((void *)0)) (ipo)->ipo_tdb_next.tqe_next->ipo_tdb_next.tqe_prev = (ipo)->ipo_tdb_next.tqe_prev; else (&ipo->ipo_tdb->tdb_policy_head)->tqh_last = (ipo)->ipo_tdb_next.tqe_prev; *(ipo)->ipo_tdb_next.tqe_prev = (ipo)->ipo_tdb_next.tqe_next; ((ipo)->ipo_tdb_next.tqe_prev) = ((void *)-1); ((ipo)->ipo_tdb_next.tqe_next) = ((void *)-1); } while (0);
   ipo->ipo_last_searched = 0;
   ipo->ipo_tdb = ((void *)0);
  }
  if (ipo->ipo_last_searched <= ipsec_last_added) {
   if (dignore == 0)
    ipo->ipo_last_searched = time_second;
   ipo->ipo_tdb =
       gettdbbysrc(rdomain,
    dignore ? &ssrc : &ipo->ipo_dst,
    ipo->ipo_sproto, ipo->ipo_ids,
    &ipo->ipo_addr, &ipo->ipo_mask);
   if (ipo->ipo_tdb)
    do { (ipo)->ipo_tdb_next.tqe_next = ((void *)0); (ipo)->ipo_tdb_next.tqe_prev = (&ipo->ipo_tdb->tdb_policy_head)->tqh_last; *(&ipo->ipo_tdb->tdb_policy_head)->tqh_last = (ipo); (&ipo->ipo_tdb->tdb_policy_head)->tqh_last = &(ipo)->ipo_tdb_next.tqe_next; } while (0);
  }
  skipinputsearch:
  switch (ipo->ipo_type) {
  case 2:
   if (ipo->ipo_tdb) {
    *error = -22;
    return ((void *)0);
   }
   if ((*error = ipsp_acquire_sa(ipo,
       dignore ? &ssrc : &ipo->ipo_dst,
       signore ? ((void *)0) : &ipo->ipo_src, ddst, m)) != 0)
    return ((void *)0);
  case 5:
   *error = -22;
   return ((void *)0);
  case 1:
   if (ipo->ipo_tdb) {
    *error = 0;
    return ipsp_spd_inp(m, af, hlen, error,
        direction, tdbp, inp, ipo);
   }
   ipsp_acquire_sa(ipo, dignore ? &ssrc : &ipo->ipo_dst,
       signore ? ((void *)0) : &ipo->ipo_src, ddst, ((void *)0));
  case 0:
   *error = 0;
   return ipsp_spd_inp(m, af, hlen, error, direction,
       tdbp, inp, ipo);
  }
 }
 *error = 22;
 return ((void *)0);
}
int
ipsec_delete_policy(struct ipsec_policy *ipo)
{
 struct ipsec_acquire *ipa;
 struct radix_node_head *rnh;
 struct radix_node *rn = (struct radix_node *)ipo;
 int err = 0;
 do { int _s = rw_status(&netlock); if ((splassert_ctl > 0) && (_s != 0x0001UL && _s != 0x0002UL)) splassert_fail(0x0002UL, _s, __func__); } while (0);
 if (--ipo->ipo_ref_count > 0)
  return 0;
 if ((rnh = spd_table_get(ipo->ipo_rdomain)) == ((void *)0) ||
     rn_delete(&ipo->ipo_addr, &ipo->ipo_mask, rnh, rn) == ((void *)0))
  return (3);
 if (ipo->ipo_tdb != ((void *)0))
  do { if (((ipo)->ipo_tdb_next.tqe_next) != ((void *)0)) (ipo)->ipo_tdb_next.tqe_next->ipo_tdb_next.tqe_prev = (ipo)->ipo_tdb_next.tqe_prev; else (&ipo->ipo_tdb->tdb_policy_head)->tqh_last = (ipo)->ipo_tdb_next.tqe_prev; *(ipo)->ipo_tdb_next.tqe_prev = (ipo)->ipo_tdb_next.tqe_next; ((ipo)->ipo_tdb_next.tqe_prev) = ((void *)-1); ((ipo)->ipo_tdb_next.tqe_next) = ((void *)-1); } while (0);
 while ((ipa = ((&ipo->ipo_acquires)->tqh_first)) != ((void *)0))
  ipsp_delete_acquire(ipa);
 do { if (((ipo)->ipo_list.tqe_next) != ((void *)0)) (ipo)->ipo_list.tqe_next->ipo_list.tqe_prev = (ipo)->ipo_list.tqe_prev; else (&ipsec_policy_head)->tqh_last = (ipo)->ipo_list.tqe_prev; *(ipo)->ipo_list.tqe_prev = (ipo)->ipo_list.tqe_next; ((ipo)->ipo_list.tqe_prev) = ((void *)-1); ((ipo)->ipo_list.tqe_next) = ((void *)-1); } while (0);
 if (ipo->ipo_ids)
  ipsp_ids_free(ipo->ipo_ids);
 ipsec_in_use--;
 pool_put(&ipsec_policy_pool, ipo);
 return err;
}
void
ipsp_delete_acquire_timo(void *v)
{
 struct ipsec_acquire *ipa = v;
 do { _rw_enter_write(&netlock ); } while (0);
 ipsp_delete_acquire(ipa);
 do { _rw_exit_write(&netlock ); } while (0);
}
void
ipsp_delete_acquire(struct ipsec_acquire *ipa)
{
 do { int _s = rw_status(&netlock); if ((splassert_ctl > 0) && (_s != 0x0001UL && _s != 0x0002UL)) splassert_fail(0x0002UL, _s, __func__); } while (0);
 timeout_del(&ipa->ipa_timeout);
 do { if (((ipa)->ipa_next.tqe_next) != ((void *)0)) (ipa)->ipa_next.tqe_next->ipa_next.tqe_prev = (ipa)->ipa_next.tqe_prev; else (&ipsec_acquire_head)->tqh_last = (ipa)->ipa_next.tqe_prev; *(ipa)->ipa_next.tqe_prev = (ipa)->ipa_next.tqe_next; ((ipa)->ipa_next.tqe_prev) = ((void *)-1); ((ipa)->ipa_next.tqe_next) = ((void *)-1); } while (0);
 if (ipa->ipa_policy != ((void *)0))
  do { if (((ipa)->ipa_ipo_next.tqe_next) != ((void *)0)) (ipa)->ipa_ipo_next.tqe_next->ipa_ipo_next.tqe_prev = (ipa)->ipa_ipo_next.tqe_prev; else (&ipa->ipa_policy->ipo_acquires)->tqh_last = (ipa)->ipa_ipo_next.tqe_prev; *(ipa)->ipa_ipo_next.tqe_prev = (ipa)->ipa_ipo_next.tqe_next; ((ipa)->ipa_ipo_next.tqe_prev) = ((void *)-1); ((ipa)->ipa_ipo_next.tqe_next) = ((void *)-1); } while (0);
 pool_put(&ipsec_acquire_pool, ipa);
}
struct ipsec_acquire *
ipsp_pending_acquire(struct ipsec_policy *ipo, union sockaddr_union *gw)
{
 struct ipsec_acquire *ipa;
 do { int _s = rw_status(&netlock); if ((splassert_ctl > 0) && (_s != 0x0001UL && _s != 0x0002UL)) splassert_fail(0x0002UL, _s, __func__); } while (0);
 for((ipa) = ((&ipo->ipo_acquires)->tqh_first); (ipa) != ((void *)0); (ipa) = ((ipa)->ipa_ipo_next.tqe_next)) {
  if (!__builtin_memcmp((gw), (&ipa->ipa_addr), (gw->sa.sa_len)))
   return ipa;
 }
 return ((void *)0);
}
int
ipsp_acquire_sa(struct ipsec_policy *ipo, union sockaddr_union *gw,
    union sockaddr_union *laddr, struct sockaddr_encap *ddst, struct mbuf *m)
{
 struct ipsec_acquire *ipa;
 do { int _s = rw_status(&netlock); if ((splassert_ctl > 0) && (_s != 0x0001UL && _s != 0x0002UL)) splassert_fail(0x0002UL, _s, __func__); } while (0);
 if ((ipa = ipsp_pending_acquire(ipo, gw)) != ((void *)0))
  return 0;
 if (ipsec_acquire_pool_initialized == 0) {
  ipsec_acquire_pool_initialized = 1;
  pool_init(&ipsec_acquire_pool, sizeof(struct ipsec_acquire),
      0, 2, 0, "ipsec acquire", ((void *)0));
 }
 ipa = pool_get(&ipsec_acquire_pool, 0x0002|0x0008);
 if (ipa == ((void *)0))
  return 12;
 ipa->ipa_addr = *gw;
 timeout_set_proc(&ipa->ipa_timeout, ipsp_delete_acquire_timo, ipa);
 ipa->ipa_info.sen_len = ipa->ipa_mask.sen_len = sizeof(struct sockaddr_encap);
 ipa->ipa_info.sen_family = ipa->ipa_mask.sen_family = 30;
 switch (ipo->ipo_addr.sen_type) {
 case 0x0001:
  ipa->ipa_info.sen_type = ipa->ipa_mask.sen_type = 0x0001;
  ipa->ipa_info.Sen.Sip4.Direction = ipo->ipo_addr.Sen.Sip4.Direction;
  ipa->ipa_mask.Sen.Sip4.Direction = ipo->ipo_mask.Sen.Sip4.Direction;
  if (ipsp_is_unspecified(ipo->ipo_dst)) {
   ipa->ipa_info.Sen.Sip4.Src = ddst->Sen.Sip4.Src;
   ipa->ipa_mask.Sen.Sip4.Src.s_addr = ((u_int32_t) ((__uint32_t)((u_int32_t)(0xffffffff))));
   ipa->ipa_info.Sen.Sip4.Dst = ddst->Sen.Sip4.Dst;
   ipa->ipa_mask.Sen.Sip4.Dst.s_addr = ((u_int32_t) ((__uint32_t)((u_int32_t)(0xffffffff))));
  } else {
   ipa->ipa_info.Sen.Sip4.Src = ipo->ipo_addr.Sen.Sip4.Src;
   ipa->ipa_mask.Sen.Sip4.Src = ipo->ipo_mask.Sen.Sip4.Src;
   ipa->ipa_info.Sen.Sip4.Dst = ipo->ipo_addr.Sen.Sip4.Dst;
   ipa->ipa_mask.Sen.Sip4.Dst = ipo->ipo_mask.Sen.Sip4.Dst;
  }
  ipa->ipa_info.Sen.Sip4.Proto = ipo->ipo_addr.Sen.Sip4.Proto;
  ipa->ipa_mask.Sen.Sip4.Proto = ipo->ipo_mask.Sen.Sip4.Proto;
  if (ipo->ipo_addr.Sen.Sip4.Proto) {
   ipa->ipa_info.Sen.Sip4.Sport = ipo->ipo_addr.Sen.Sip4.Sport;
   ipa->ipa_mask.Sen.Sip4.Sport = ipo->ipo_mask.Sen.Sip4.Sport;
   ipa->ipa_info.Sen.Sip4.Dport = ipo->ipo_addr.Sen.Sip4.Dport;
   ipa->ipa_mask.Sen.Sip4.Dport = ipo->ipo_mask.Sen.Sip4.Dport;
  }
  break;
 case 0x0004:
  ipa->ipa_info.sen_type = ipa->ipa_mask.sen_type = 0x0004;
  ipa->ipa_info.Sen.Sip6.Direction =
      ipo->ipo_addr.Sen.Sip6.Direction;
  ipa->ipa_mask.Sen.Sip6.Direction =
      ipo->ipo_mask.Sen.Sip6.Direction;
  if (ipsp_is_unspecified(ipo->ipo_dst)) {
   ipa->ipa_info.Sen.Sip6.Src = ddst->Sen.Sip6.Src;
   ipa->ipa_mask.Sen.Sip6.Src = in6mask128;
   ipa->ipa_info.Sen.Sip6.Dst = ddst->Sen.Sip6.Dst;
   ipa->ipa_mask.Sen.Sip6.Dst = in6mask128;
  } else {
   ipa->ipa_info.Sen.Sip6.Src = ipo->ipo_addr.Sen.Sip6.Src;
   ipa->ipa_mask.Sen.Sip6.Src = ipo->ipo_mask.Sen.Sip6.Src;
   ipa->ipa_info.Sen.Sip6.Dst = ipo->ipo_addr.Sen.Sip6.Dst;
   ipa->ipa_mask.Sen.Sip6.Dst = ipo->ipo_mask.Sen.Sip6.Dst;
  }
  ipa->ipa_info.Sen.Sip6.Proto = ipo->ipo_addr.Sen.Sip6.Proto;
  ipa->ipa_mask.Sen.Sip6.Proto = ipo->ipo_mask.Sen.Sip6.Proto;
  if (ipo->ipo_mask.Sen.Sip6.Proto) {
   ipa->ipa_info.Sen.Sip6.Sport =
       ipo->ipo_addr.Sen.Sip6.Sport;
   ipa->ipa_mask.Sen.Sip6.Sport =
       ipo->ipo_mask.Sen.Sip6.Sport;
   ipa->ipa_info.Sen.Sip6.Dport =
       ipo->ipo_addr.Sen.Sip6.Dport;
   ipa->ipa_mask.Sen.Sip6.Dport =
       ipo->ipo_mask.Sen.Sip6.Dport;
  }
  break;
 default:
  pool_put(&ipsec_acquire_pool, ipa);
  return 0;
 }
 timeout_add_sec(&ipa->ipa_timeout, ipsec_expire_acquire);
 do { (ipa)->ipa_next.tqe_next = ((void *)0); (ipa)->ipa_next.tqe_prev = (&ipsec_acquire_head)->tqh_last; *(&ipsec_acquire_head)->tqh_last = (ipa); (&ipsec_acquire_head)->tqh_last = &(ipa)->ipa_next.tqe_next; } while (0);
 do { (ipa)->ipa_ipo_next.tqe_next = ((void *)0); (ipa)->ipa_ipo_next.tqe_prev = (&ipo->ipo_acquires)->tqh_last; *(&ipo->ipo_acquires)->tqh_last = (ipa); (&ipo->ipo_acquires)->tqh_last = &(ipa)->ipa_ipo_next.tqe_next; } while (0);
 ipa->ipa_policy = ipo;
 return pfkeyv2_acquire(ipo, gw, laddr, &ipa->ipa_seq, ddst);
}
struct tdb *
ipsp_spd_inp(struct mbuf *m, int af, int hlen, int *error, int direction,
    struct tdb *tdbp, struct inpcb *inp, struct ipsec_policy *ipo)
{
 if (inp == ((void *)0))
  goto justreturn;
 if (inp->inp_seclevel[1] == 0x00 &&
     inp->inp_seclevel[2] == 0x00 &&
     inp->inp_seclevel[0] == 0x00)
  goto justreturn;
 if (inp->inp_seclevel[1] == 0x01 &&
     inp->inp_seclevel[2] == 0x01 &&
     inp->inp_seclevel[0] == 0x01)
  goto justreturn;
 *error = -22;
 return ((void *)0);
 justreturn:
 if (ipo != ((void *)0))
  return ipo->ipo_tdb;
 else
  return ((void *)0);
}
struct ipsec_acquire *
ipsec_get_acquire(u_int32_t seq)
{
 struct ipsec_acquire *ipa;
 for((ipa) = ((&ipsec_acquire_head)->tqh_first); (ipa) != ((void *)0); (ipa) = ((ipa)->ipa_next.tqe_next))
  if (ipa->ipa_seq == seq)
   return ipa;
 return ((void *)0);
}
