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
typedef int boolean_t;
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
enum {
 PBA_STRATEGY_EQUAL = 0,
 PBA_STRATEGY_WEIGHTED = 1,
};
enum ixgbe_fdir_pballoc_type {
 IXGBE_FDIR_PBALLOC_NONE = 0,
 IXGBE_FDIR_PBALLOC_64K = 1,
 IXGBE_FDIR_PBALLOC_128K = 2,
 IXGBE_FDIR_PBALLOC_256K = 3,
};
struct ixgbe_hic_hdr {
 uint8_t cmd;
 uint8_t buf_len;
 union {
  uint8_t cmd_resv;
  uint8_t ret_status;
 } cmd_or_resp;
 uint8_t checksum;
};
struct ixgbe_hic_hdr2_req {
 uint8_t cmd;
 uint8_t buf_lenh;
 uint8_t buf_lenl;
 uint8_t checksum;
};
struct ixgbe_hic_hdr2_rsp {
 uint8_t cmd;
 uint8_t buf_lenl;
 uint8_t buf_lenh_status;
 uint8_t checksum;
};
union ixgbe_hic_hdr2 {
 struct ixgbe_hic_hdr2_req req;
 struct ixgbe_hic_hdr2_rsp rsp;
};
struct ixgbe_hic_drv_info {
 struct ixgbe_hic_hdr hdr;
 uint8_t port_num;
 uint8_t ver_sub;
 uint8_t ver_build;
 uint8_t ver_min;
 uint8_t ver_maj;
 uint8_t pad;
 uint16_t pad2;
};
struct ixgbe_hic_read_shadow_ram {
 union ixgbe_hic_hdr2 hdr;
 uint32_t address;
 uint16_t length;
 uint16_t pad2;
 uint16_t data;
 uint16_t pad3;
};
struct ixgbe_hic_write_shadow_ram {
 union ixgbe_hic_hdr2 hdr;
 uint32_t address;
 uint16_t length;
 uint16_t pad2;
 uint16_t data;
 uint16_t pad3;
};
struct ixgbe_hic_disable_rxen {
 struct ixgbe_hic_hdr hdr;
 uint8_t port_number;
 uint8_t pad2;
 uint16_t pad3;
};
struct ixgbe_hic_internal_phy_req {
 struct ixgbe_hic_hdr hdr;
 uint8_t port_number;
 uint8_t command_type;
 uint16_t address;
 uint16_t rsv1;
 uint32_t write_data;
 uint16_t pad;
};
struct ixgbe_hic_internal_phy_resp {
 struct ixgbe_hic_hdr hdr;
 uint32_t read_data;
};
struct ixgbe_legacy_tx_desc {
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
   uint16_t vlan;
  } fields;
 } upper;
};
union ixgbe_adv_tx_desc {
 struct {
  uint64_t buffer_addr;
  uint32_t cmd_type_len;
  uint32_t olinfo_status;
 } read;
 struct {
  uint64_t rsvd;
  uint32_t nxtseq_seed;
  uint32_t status;
 } wb;
};
struct ixgbe_legacy_rx_desc {
 uint64_t buffer_addr;
 uint16_t length;
 uint16_t csum;
 uint8_t status;
 uint8_t errors;
 uint16_t vlan;
};
union ixgbe_adv_rx_desc {
 struct {
  uint64_t pkt_addr;
  uint64_t hdr_addr;
 } read;
 struct {
  struct {
   union {
    uint32_t data;
    struct {
     uint16_t pkt_info;
     uint16_t hdr_info;
    } hs_rss;
   } lo_dword;
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
struct ixgbe_adv_tx_context_desc {
 uint32_t vlan_macip_lens;
 uint32_t seqnum_seed;
 uint32_t type_tucmd_mlhl;
 uint32_t mss_l4len_idx;
};
typedef uint32_t ixgbe_autoneg_advertised;
typedef uint32_t ixgbe_link_speed;
typedef uint32_t ixgbe_physical_layer;
enum ixgbe_atr_flow_type {
 IXGBE_ATR_FLOW_TYPE_IPV4 = 0x0,
 IXGBE_ATR_FLOW_TYPE_UDPV4 = 0x1,
 IXGBE_ATR_FLOW_TYPE_TCPV4 = 0x2,
 IXGBE_ATR_FLOW_TYPE_SCTPV4 = 0x3,
 IXGBE_ATR_FLOW_TYPE_IPV6 = 0x4,
 IXGBE_ATR_FLOW_TYPE_UDPV6 = 0x5,
 IXGBE_ATR_FLOW_TYPE_TCPV6 = 0x6,
 IXGBE_ATR_FLOW_TYPE_SCTPV6 = 0x7,
 IXGBE_ATR_FLOW_TYPE_TUNNELED_IPV4 = 0x10,
 IXGBE_ATR_FLOW_TYPE_TUNNELED_UDPV4 = 0x11,
 IXGBE_ATR_FLOW_TYPE_TUNNELED_TCPV4 = 0x12,
 IXGBE_ATR_FLOW_TYPE_TUNNELED_SCTPV4 = 0x13,
 IXGBE_ATR_FLOW_TYPE_TUNNELED_IPV6 = 0x14,
 IXGBE_ATR_FLOW_TYPE_TUNNELED_UDPV6 = 0x15,
 IXGBE_ATR_FLOW_TYPE_TUNNELED_TCPV6 = 0x16,
 IXGBE_ATR_FLOW_TYPE_TUNNELED_SCTPV6 = 0x17,
};
union ixgbe_atr_input {
 struct {
  uint8_t vm_pool;
  uint8_t flow_type;
  uint16_t vlan_id;
  uint32_t dst_ip[4];
  uint32_t src_ip[4];
  uint8_t inner_mac[6];
  uint16_t tunnel_type;
  uint32_t tni_vni;
  uint16_t src_port;
  uint16_t dst_port;
  uint16_t flex_bytes;
  uint16_t bkt_hash;
 } formatted;
 uint32_t dword_stream[14];
};
union ixgbe_atr_hash_dword {
 struct {
  uint8_t vm_pool;
  uint8_t flow_type;
  uint16_t vlan_id;
 } formatted;
 uint32_t ip;
 struct {
  uint16_t src;
  uint16_t dst;
 } port;
 uint16_t flex_bytes;
 uint32_t dword;
};
enum ixgbe_fcoe_boot_status {
 ixgbe_fcoe_bootstatus_disabled = 0,
 ixgbe_fcoe_bootstatus_enabled = 1,
 ixgbe_fcoe_bootstatus_unavailable = 0xFFFF
};
enum ixgbe_eeprom_type {
 ixgbe_eeprom_uninitialized = 0,
 ixgbe_eeprom_spi,
 ixgbe_flash,
 ixgbe_eeprom_none
};
enum ixgbe_mac_type {
 ixgbe_mac_unknown = 0,
 ixgbe_mac_82598EB,
 ixgbe_mac_82599EB,
 ixgbe_mac_82599_vf,
 ixgbe_mac_X540,
 ixgbe_mac_X540_vf,
 ixgbe_mac_X550,
 ixgbe_mac_X550EM_x,
 ixgbe_mac_X550_vf,
 ixgbe_mac_X550EM_x_vf,
 ixgbe_num_macs
};
enum ixgbe_phy_type {
 ixgbe_phy_unknown = 0,
 ixgbe_phy_none,
 ixgbe_phy_tn,
 ixgbe_phy_aq,
 ixgbe_phy_x550em_kr,
 ixgbe_phy_x550em_kx4,
 ixgbe_phy_x550em_ext_t,
 ixgbe_phy_cu_unknown,
 ixgbe_phy_qt,
 ixgbe_phy_xaui,
 ixgbe_phy_nl,
 ixgbe_phy_sfp_passive_tyco,
 ixgbe_phy_sfp_passive_unknown,
 ixgbe_phy_sfp_active_unknown,
 ixgbe_phy_sfp_avago,
 ixgbe_phy_sfp_ftl,
 ixgbe_phy_sfp_ftl_active,
 ixgbe_phy_sfp_unknown,
 ixgbe_phy_sfp_intel,
 ixgbe_phy_qsfp_passive_unknown,
 ixgbe_phy_qsfp_active_unknown,
 ixgbe_phy_qsfp_intel,
 ixgbe_phy_qsfp_unknown,
 ixgbe_phy_sfp_unsupported,
 ixgbe_phy_generic
};
enum ixgbe_sfp_type {
 ixgbe_sfp_type_da_cu = 0,
 ixgbe_sfp_type_sr = 1,
 ixgbe_sfp_type_lr = 2,
 ixgbe_sfp_type_da_cu_core0 = 3,
 ixgbe_sfp_type_da_cu_core1 = 4,
 ixgbe_sfp_type_srlr_core0 = 5,
 ixgbe_sfp_type_srlr_core1 = 6,
 ixgbe_sfp_type_da_act_lmt_core0 = 7,
 ixgbe_sfp_type_da_act_lmt_core1 = 8,
 ixgbe_sfp_type_1g_cu_core0 = 9,
 ixgbe_sfp_type_1g_cu_core1 = 10,
 ixgbe_sfp_type_1g_sx_core0 = 11,
 ixgbe_sfp_type_1g_sx_core1 = 12,
 ixgbe_sfp_type_1g_lx_core0 = 13,
 ixgbe_sfp_type_1g_lx_core1 = 14,
 ixgbe_sfp_type_not_present = 0xFFFE,
 ixgbe_sfp_type_unknown = 0xFFFF
};
enum ixgbe_media_type {
 ixgbe_media_type_unknown = 0,
 ixgbe_media_type_fiber,
 ixgbe_media_type_fiber_fixed,
 ixgbe_media_type_fiber_qsfp,
 ixgbe_media_type_copper,
 ixgbe_media_type_backplane,
 ixgbe_media_type_cx4,
 ixgbe_media_type_virtual
};
enum ixgbe_fc_mode {
 ixgbe_fc_none = 0,
 ixgbe_fc_rx_pause,
 ixgbe_fc_tx_pause,
 ixgbe_fc_full,
 ixgbe_fc_default
};
enum ixgbe_smart_speed {
 ixgbe_smart_speed_auto = 0,
 ixgbe_smart_speed_on,
 ixgbe_smart_speed_off
};
enum ixgbe_bus_type {
 ixgbe_bus_type_unknown = 0,
 ixgbe_bus_type_pci,
 ixgbe_bus_type_pcix,
 ixgbe_bus_type_pci_express,
 ixgbe_bus_type_internal,
 ixgbe_bus_type_reserved
};
enum ixgbe_bus_speed {
 ixgbe_bus_speed_unknown = 0,
 ixgbe_bus_speed_33 = 33,
 ixgbe_bus_speed_66 = 66,
 ixgbe_bus_speed_100 = 100,
 ixgbe_bus_speed_120 = 120,
 ixgbe_bus_speed_133 = 133,
 ixgbe_bus_speed_2500 = 2500,
 ixgbe_bus_speed_5000 = 5000,
 ixgbe_bus_speed_8000 = 8000,
 ixgbe_bus_speed_reserved
};
enum ixgbe_bus_width {
 ixgbe_bus_width_unknown = 0,
 ixgbe_bus_width_pcie_x1 = 1,
 ixgbe_bus_width_pcie_x2 = 2,
 ixgbe_bus_width_pcie_x4 = 4,
 ixgbe_bus_width_pcie_x8 = 8,
 ixgbe_bus_width_32 = 32,
 ixgbe_bus_width_64 = 64,
 ixgbe_bus_width_reserved
};
struct ixgbe_addr_filter_info {
 uint32_t num_mc_addrs;
 uint32_t rar_used_count;
 uint32_t mta_in_use;
 uint32_t overflow_promisc;
 _Bool user_set_promisc;
};
struct ixgbe_bus_info {
 enum ixgbe_bus_speed speed;
 enum ixgbe_bus_width width;
 enum ixgbe_bus_type type;
 uint16_t func;
 uint16_t lan_id;
};
struct ixgbe_fc_info {
 uint32_t high_water[8];
 uint32_t low_water[8];
 uint16_t pause_time;
 _Bool send_xon;
 _Bool strict_ieee;
 _Bool disable_fc_autoneg;
 _Bool fc_was_autonegged;
 enum ixgbe_fc_mode current_mode;
 enum ixgbe_fc_mode requested_mode;
};
struct ixgbe_hw_stats {
 uint64_t crcerrs;
 uint64_t illerrc;
 uint64_t errbc;
 uint64_t mspdc;
 uint64_t mpctotal;
 uint64_t mpc[8];
 uint64_t mlfc;
 uint64_t mrfc;
 uint64_t rlec;
 uint64_t lxontxc;
 uint64_t lxonrxc;
 uint64_t lxofftxc;
 uint64_t lxoffrxc;
 uint64_t pxontxc[8];
 uint64_t pxonrxc[8];
 uint64_t pxofftxc[8];
 uint64_t pxoffrxc[8];
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
 uint64_t gorc;
 uint64_t gotc;
 uint64_t rnbc[8];
 uint64_t ruc;
 uint64_t rfc;
 uint64_t roc;
 uint64_t rjc;
 uint64_t mngprc;
 uint64_t mngpdc;
 uint64_t mngptc;
 uint64_t tor;
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
 uint64_t xec;
 uint64_t qprc[16];
 uint64_t qptc[16];
 uint64_t qbrc[16];
 uint64_t qbtc[16];
 uint64_t qprdc[16];
 uint64_t pxon2offc[8];
 uint64_t fdirustat_add;
 uint64_t fdirustat_remove;
 uint64_t fdirfstat_fadd;
 uint64_t fdirfstat_fremove;
 uint64_t fdirmatch;
 uint64_t fdirmiss;
 uint64_t fccrc;
 uint64_t fclast;
 uint64_t fcoerpdc;
 uint64_t fcoeprc;
 uint64_t fcoeptc;
 uint64_t fcoedwrc;
 uint64_t fcoedwtc;
 uint64_t fcoe_noddp;
 uint64_t fcoe_noddp_ext_buff;
 uint64_t ldpcec;
 uint64_t pcrc8ec;
 uint64_t b2ospc;
 uint64_t b2ogprc;
 uint64_t o2bgptc;
 uint64_t o2bspc;
};
struct ixgbe_hw;
typedef uint8_t* (*ixgbe_mc_addr_itr)(struct ixgbe_hw *hw,
          uint8_t **mc_addr_ptr,
          uint32_t *vmdq);
struct ixgbe_eeprom_operations {
 int32_t (*init_params)(struct ixgbe_hw *);
 int32_t (*read)(struct ixgbe_hw *, uint16_t, uint16_t *);
 int32_t (*write)(struct ixgbe_hw *, uint16_t, uint16_t);
 int32_t (*validate_checksum)(struct ixgbe_hw *, uint16_t *);
 int32_t (*update_checksum)(struct ixgbe_hw *);
 int32_t (*calc_checksum)(struct ixgbe_hw *);
};
struct ixgbe_mac_operations {
 int32_t (*init_hw)(struct ixgbe_hw *);
 int32_t (*reset_hw)(struct ixgbe_hw *);
 int32_t (*start_hw)(struct ixgbe_hw *);
 int32_t (*clear_hw_cntrs)(struct ixgbe_hw *);
 enum ixgbe_media_type (*get_media_type)(struct ixgbe_hw *);
 uint32_t (*get_supported_physical_layer)(struct ixgbe_hw *);
 int32_t (*get_mac_addr)(struct ixgbe_hw *, uint8_t *);
 int32_t (*stop_adapter)(struct ixgbe_hw *);
 int32_t (*get_bus_info)(struct ixgbe_hw *);
 void (*set_lan_id)(struct ixgbe_hw *);
 int32_t (*read_analog_reg8)(struct ixgbe_hw*, uint32_t, uint8_t*);
 int32_t (*write_analog_reg8)(struct ixgbe_hw*, uint32_t, uint8_t);
 int32_t (*setup_sfp)(struct ixgbe_hw *);
 int32_t (*enable_rx_dma)(struct ixgbe_hw *, uint32_t);
 int32_t (*disable_sec_rx_path)(struct ixgbe_hw *);
 int32_t (*enable_sec_rx_path)(struct ixgbe_hw *);
 int32_t (*acquire_swfw_sync)(struct ixgbe_hw *, uint32_t);
 void (*release_swfw_sync)(struct ixgbe_hw *, uint32_t);
 int32_t (*prot_autoc_read)(struct ixgbe_hw *, _Bool *, uint32_t *);
 int32_t (*prot_autoc_write)(struct ixgbe_hw *, uint32_t, _Bool);
 void (*disable_tx_laser)(struct ixgbe_hw *);
 void (*enable_tx_laser)(struct ixgbe_hw *);
 void (*flap_tx_laser)(struct ixgbe_hw *);
 int32_t (*setup_link)(struct ixgbe_hw *, ixgbe_link_speed, _Bool);
 int32_t (*setup_mac_link)(struct ixgbe_hw *, ixgbe_link_speed, _Bool);
 int32_t (*check_link)(struct ixgbe_hw *, ixgbe_link_speed *, _Bool *, _Bool);
 int32_t (*get_link_capabilities)(struct ixgbe_hw *, ixgbe_link_speed *,
      _Bool *);
 void (*set_rate_select_speed)(struct ixgbe_hw *, ixgbe_link_speed);
 int32_t (*led_on)(struct ixgbe_hw *, uint32_t);
 int32_t (*led_off)(struct ixgbe_hw *, uint32_t);
 int32_t (*blink_led_start)(struct ixgbe_hw *, uint32_t);
 int32_t (*blink_led_stop)(struct ixgbe_hw *, uint32_t);
 int32_t (*set_rar)(struct ixgbe_hw *, uint32_t, uint8_t *, uint32_t, uint32_t);
 int32_t (*clear_rar)(struct ixgbe_hw *, uint32_t);
 int32_t (*insert_mac_addr)(struct ixgbe_hw *, uint8_t *, uint32_t);
 int32_t (*set_vmdq)(struct ixgbe_hw *, uint32_t, uint32_t);
 int32_t (*clear_vmdq)(struct ixgbe_hw *, uint32_t, uint32_t);
 int32_t (*init_rx_addrs)(struct ixgbe_hw *);
 int32_t (*update_mc_addr_list)(struct ixgbe_hw *, uint8_t *, uint32_t,
           ixgbe_mc_addr_itr, _Bool clear);
 int32_t (*enable_mc)(struct ixgbe_hw *);
 int32_t (*disable_mc)(struct ixgbe_hw *);
 int32_t (*clear_vfta)(struct ixgbe_hw *);
 int32_t (*set_vfta)(struct ixgbe_hw *, uint32_t, uint32_t, _Bool);
 int32_t (*set_vlvf)(struct ixgbe_hw *, uint32_t, uint32_t, _Bool, _Bool *);
 int32_t (*init_uta_tables)(struct ixgbe_hw *);
 void (*set_mac_anti_spoofing)(struct ixgbe_hw *, _Bool, int);
 void (*set_vlan_anti_spoofing)(struct ixgbe_hw *, _Bool, int);
 int32_t (*fc_enable)(struct ixgbe_hw *);
 int32_t (*setup_fc)(struct ixgbe_hw *);
 void (*disable_rx)(struct ixgbe_hw *hw);
 void (*enable_rx)(struct ixgbe_hw *hw);
 void (*stop_mac_link_on_d3)(struct ixgbe_hw *);
};
struct ixgbe_phy_operations {
 int32_t (*identify)(struct ixgbe_hw *);
 int32_t (*identify_sfp)(struct ixgbe_hw *);
 int32_t (*init)(struct ixgbe_hw *);
 int32_t (*reset)(struct ixgbe_hw *);
 int32_t (*read_reg)(struct ixgbe_hw *, uint32_t, uint32_t, uint16_t *);
 int32_t (*write_reg)(struct ixgbe_hw *, uint32_t, uint32_t, uint16_t);
 int32_t (*read_reg_mdi)(struct ixgbe_hw *, uint32_t, uint32_t, uint16_t *);
 int32_t (*write_reg_mdi)(struct ixgbe_hw *, uint32_t, uint32_t, uint16_t);
 int32_t (*setup_link)(struct ixgbe_hw *);
 int32_t (*setup_internal_link)(struct ixgbe_hw *);
 int32_t (*setup_link_speed)(struct ixgbe_hw *, ixgbe_link_speed, _Bool);
 int32_t (*check_link)(struct ixgbe_hw *, ixgbe_link_speed *, _Bool *);
 int32_t (*get_firmware_version)(struct ixgbe_hw *, uint16_t *);
 int32_t (*read_i2c_byte)(struct ixgbe_hw *, uint8_t, uint8_t, uint8_t *);
 int32_t (*write_i2c_byte)(struct ixgbe_hw *, uint8_t, uint8_t, uint8_t);
 int32_t (*read_i2c_eeprom)(struct ixgbe_hw *, uint8_t , uint8_t *);
 int32_t (*write_i2c_eeprom)(struct ixgbe_hw *, uint8_t, uint8_t);
 void (*i2c_bus_clear)(struct ixgbe_hw *);
 int32_t (*read_i2c_combined)(struct ixgbe_hw *, uint8_t addr, uint16_t reg64, uint16_t *val);
 int32_t (*write_i2c_combined)(struct ixgbe_hw *, uint8_t addr, uint16_t reg64, uint16_t val);
 int32_t (*check_overtemp)(struct ixgbe_hw *);
 int32_t (*set_phy_power)(struct ixgbe_hw *, _Bool on);
 int32_t (*handle_lasi)(struct ixgbe_hw *hw);
 int32_t (*read_i2c_combined_unlocked)(struct ixgbe_hw *, uint8_t addr, uint16_t reg64,
           uint16_t *value);
 int32_t (*write_i2c_combined_unlocked)(struct ixgbe_hw *, uint8_t addr, uint16_t reg64,
            uint16_t value);
 int32_t (*read_i2c_byte_unlocked)(struct ixgbe_hw *, uint8_t offset, uint8_t addr,
       uint8_t *value);
 int32_t (*write_i2c_byte_unlocked)(struct ixgbe_hw *, uint8_t offset, uint8_t addr,
        uint8_t value);
};
struct ixgbe_eeprom_info {
 struct ixgbe_eeprom_operations ops;
 enum ixgbe_eeprom_type type;
 uint32_t semaphore_delay;
 uint16_t word_size;
 uint16_t address_bits;
 uint16_t word_page_size;
 uint16_t ctrl_word_3;
};
struct ixgbe_mac_info {
 struct ixgbe_mac_operations ops;
 enum ixgbe_mac_type type;
 uint8_t addr[6];
 uint8_t perm_addr[6];
 uint32_t mta_shadow[128];
 int32_t mc_filter_type;
 uint32_t mcft_size;
 uint32_t vft_size;
 uint32_t num_rar_entries;
 uint32_t rar_highwater;
 uint32_t rx_pb_size;
 uint32_t max_tx_queues;
 uint32_t max_rx_queues;
 uint32_t orig_autoc;
 _Bool get_link_status;
 uint32_t orig_autoc2;
 uint32_t max_msix_vectors;
 int msix_vectors_from_pcie;
 _Bool orig_link_settings_stored;
 _Bool autotry_restart;
 uint8_t flags;
 uint32_t max_link_up_time;
};
struct ixgbe_phy_info {
 struct ixgbe_phy_operations ops;
 enum ixgbe_phy_type type;
 uint32_t addr;
 uint32_t id;
 enum ixgbe_sfp_type sfp_type;
 _Bool sfp_setup_needed;
 uint32_t revision;
 enum ixgbe_media_type media_type;
 uint32_t phy_semaphore_mask;
 _Bool reset_disable;
 ixgbe_autoneg_advertised autoneg_advertised;
 ixgbe_link_speed speeds_supported;
 enum ixgbe_smart_speed smart_speed;
 _Bool smart_speed_active;
 _Bool multispeed_fiber;
 _Bool reset_if_overtemp;
 _Bool qsfp_shared_i2c_bus;
 uint32_t nw_mng_if_sel;
};
struct ixgbe_mbx_operations {
 void (*init_params)(struct ixgbe_hw *hw);
 int32_t (*read)(struct ixgbe_hw *, uint32_t *, uint16_t, uint16_t);
 int32_t (*write)(struct ixgbe_hw *, uint32_t *, uint16_t, uint16_t);
 int32_t (*read_posted)(struct ixgbe_hw *, uint32_t *, uint16_t, uint16_t);
 int32_t (*write_posted)(struct ixgbe_hw *, uint32_t *, uint16_t, uint16_t);
 int32_t (*check_for_msg)(struct ixgbe_hw *, uint16_t);
 int32_t (*check_for_ack)(struct ixgbe_hw *, uint16_t);
 int32_t (*check_for_rst)(struct ixgbe_hw *, uint16_t);
};
struct ixgbe_mbx_stats {
 uint32_t msgs_tx;
 uint32_t msgs_rx;
 uint32_t acks;
 uint32_t reqs;
 uint32_t rsts;
};
struct ixgbe_mbx_info {
 struct ixgbe_mbx_operations ops;
 struct ixgbe_mbx_stats stats;
 uint32_t timeout;
 uint32_t usec_delay;
 uint32_t v2p_mailbox;
 uint16_t size;
};
struct ixgbe_hw {
 uint8_t *hw_addr;
 void *back;
 struct ixgbe_mac_info mac;
 struct ixgbe_addr_filter_info addr_ctrl;
 struct ixgbe_fc_info fc;
 struct ixgbe_phy_info phy;
 struct ixgbe_eeprom_info eeprom;
 struct ixgbe_bus_info bus;
 struct ixgbe_mbx_info mbx;
 uint16_t device_id;
 uint16_t vendor_id;
 uint16_t subsystem_device_id;
 uint16_t subsystem_vendor_id;
 uint8_t revision_id;
 _Bool adapter_stopped;
 int api_version;
 _Bool force_full_reset;
};
struct ixgbe_hw;
struct ixgbe_osdep {
 bus_dma_tag_t os_dmat;
 bus_space_tag_t os_memt;
 bus_space_handle_t os_memh;
 bus_size_t os_memsize;
 bus_addr_t os_membase;
 void *os_sc;
 struct pci_attach_args os_pa;
};
extern uint16_t ixgbe_read_pci_cfg(struct ixgbe_hw *, uint32_t);
extern void ixgbe_write_pci_cfg(struct ixgbe_hw *, uint32_t, uint16_t);
uint16_t ixgbe_get_pcie_msix_count_generic(struct ixgbe_hw *hw);
int32_t ixgbe_init_ops_generic(struct ixgbe_hw *hw);
int32_t ixgbe_init_hw_generic(struct ixgbe_hw *hw);
int32_t ixgbe_start_hw_generic(struct ixgbe_hw *hw);
int32_t ixgbe_start_hw_gen2(struct ixgbe_hw *hw);
int32_t ixgbe_clear_hw_cntrs_generic(struct ixgbe_hw *hw);
int32_t ixgbe_read_pba_num_generic(struct ixgbe_hw *hw, uint32_t *pba_num);
int32_t ixgbe_read_pba_string_generic(struct ixgbe_hw *hw, uint8_t *pba_num,
          uint32_t pba_num_size);
int32_t ixgbe_read_pba_length_generic(struct ixgbe_hw *hw, uint32_t *pba_num_size);
int32_t ixgbe_get_mac_addr_generic(struct ixgbe_hw *hw, uint8_t *mac_addr);
int32_t ixgbe_get_bus_info_generic(struct ixgbe_hw *hw);
void ixgbe_set_lan_id_multi_port_pcie(struct ixgbe_hw *hw);
int32_t ixgbe_stop_adapter_generic(struct ixgbe_hw *hw);
int32_t ixgbe_led_on_generic(struct ixgbe_hw *hw, uint32_t index);
int32_t ixgbe_led_off_generic(struct ixgbe_hw *hw, uint32_t index);
int32_t ixgbe_init_eeprom_params_generic(struct ixgbe_hw *hw);
int32_t ixgbe_write_eeprom_generic(struct ixgbe_hw *hw, uint16_t offset, uint16_t data);
int32_t ixgbe_read_eerd_generic(struct ixgbe_hw *hw, uint16_t offset, uint16_t *data);
int32_t ixgbe_write_eewr_generic(struct ixgbe_hw *hw, uint16_t offset, uint16_t data);
int32_t ixgbe_read_eeprom_bit_bang_generic(struct ixgbe_hw *hw, uint16_t offset,
        uint16_t *data);
int32_t ixgbe_calc_eeprom_checksum_generic(struct ixgbe_hw *hw);
int32_t ixgbe_validate_eeprom_checksum_generic(struct ixgbe_hw *hw,
            uint16_t *checksum_val);
int32_t ixgbe_update_eeprom_checksum_generic(struct ixgbe_hw *hw);
int32_t ixgbe_poll_eerd_eewr_done(struct ixgbe_hw *hw, uint32_t ee_reg);
int32_t ixgbe_set_rar_generic(struct ixgbe_hw *hw, uint32_t index, uint8_t *addr, uint32_t vmdq,
         uint32_t enable_addr);
int32_t ixgbe_clear_rar_generic(struct ixgbe_hw *hw, uint32_t index);
int32_t ixgbe_init_rx_addrs_generic(struct ixgbe_hw *hw);
int32_t ixgbe_update_mc_addr_list_generic(struct ixgbe_hw *hw, uint8_t *mc_addr_list,
       uint32_t mc_addr_count,
       ixgbe_mc_addr_itr func, _Bool clear);
int32_t ixgbe_enable_mc_generic(struct ixgbe_hw *hw);
int32_t ixgbe_disable_mc_generic(struct ixgbe_hw *hw);
int32_t ixgbe_enable_rx_dma_generic(struct ixgbe_hw *hw, uint32_t regval);
int32_t ixgbe_disable_sec_rx_path_generic(struct ixgbe_hw *hw);
int32_t ixgbe_enable_sec_rx_path_generic(struct ixgbe_hw *hw);
int32_t ixgbe_fc_enable_generic(struct ixgbe_hw *hw);
void ixgbe_fc_autoneg(struct ixgbe_hw *hw);
int32_t ixgbe_setup_fc_generic(struct ixgbe_hw *hw);
int32_t ixgbe_validate_mac_addr(uint8_t *mac_addr);
int32_t ixgbe_acquire_swfw_sync(struct ixgbe_hw *hw, uint32_t mask);
void ixgbe_release_swfw_sync(struct ixgbe_hw *hw, uint32_t mask);
int32_t ixgbe_disable_pcie_master(struct ixgbe_hw *hw);
int32_t prot_autoc_read_generic(struct ixgbe_hw *hw, _Bool *, uint32_t *reg_val);
int32_t prot_autoc_write_generic(struct ixgbe_hw *hw, uint32_t reg_val, _Bool locked);
int32_t ixgbe_blink_led_start_generic(struct ixgbe_hw *hw, uint32_t index);
int32_t ixgbe_blink_led_stop_generic(struct ixgbe_hw *hw, uint32_t index);
int32_t ixgbe_set_vmdq_generic(struct ixgbe_hw *hw, uint32_t rar, uint32_t vmdq);
int32_t ixgbe_clear_vmdq_generic(struct ixgbe_hw *hw, uint32_t rar, uint32_t vmdq);
int32_t ixgbe_insert_mac_addr_generic(struct ixgbe_hw *hw, uint8_t *addr, uint32_t vmdq);
int32_t ixgbe_init_uta_tables_generic(struct ixgbe_hw *hw);
int32_t ixgbe_set_vfta_generic(struct ixgbe_hw *hw, uint32_t vlan,
          uint32_t vind, _Bool vlan_on);
int32_t ixgbe_set_vlvf_generic(struct ixgbe_hw *hw, uint32_t vlan, uint32_t vind,
          _Bool vlan_on, _Bool *vfta_changed);
int32_t ixgbe_clear_vfta_generic(struct ixgbe_hw *hw);
int32_t ixgbe_check_mac_link_generic(struct ixgbe_hw *hw,
         ixgbe_link_speed *speed,
         _Bool *link_up,
         _Bool link_up_wait_to_complete);
int32_t ixgbe_get_device_caps_generic(struct ixgbe_hw *hw,
          uint16_t *device_caps);
int32_t ixgbe_host_interface_command(struct ixgbe_hw *hw, uint32_t *buffer,
         uint32_t length, uint32_t timeout,
         _Bool return_data);
void ixgbe_clear_tx_pending(struct ixgbe_hw *hw);
_Bool ixgbe_mng_present(struct ixgbe_hw *hw);
_Bool ixgbe_mng_enabled(struct ixgbe_hw *hw);
void ixgbe_disable_rx_generic(struct ixgbe_hw *hw);
void ixgbe_enable_rx_generic(struct ixgbe_hw *hw);
int32_t ixgbe_setup_mac_link_multispeed_fiber(struct ixgbe_hw *hw,
           ixgbe_link_speed speed,
           _Bool autoneg_wait_to_complete);
void ixgbe_set_soft_rate_select_speed(struct ixgbe_hw *hw,
          ixgbe_link_speed speed);
int32_t ixgbe_init_shared_code(struct ixgbe_hw *hw);
int32_t ixgbe_init_ops_82598(struct ixgbe_hw *hw);
int32_t ixgbe_init_ops_82599(struct ixgbe_hw *hw);
int32_t ixgbe_init_ops_X540(struct ixgbe_hw *hw);
int32_t ixgbe_init_ops_X550(struct ixgbe_hw *hw);
int32_t ixgbe_init_ops_X550EM(struct ixgbe_hw *hw);
int32_t ixgbe_set_mac_type(struct ixgbe_hw *hw);
int32_t ixgbe_init_hw(struct ixgbe_hw *hw);
enum ixgbe_media_type ixgbe_get_media_type(struct ixgbe_hw *hw);
int32_t ixgbe_identify_phy(struct ixgbe_hw *hw);
void ixgbe_flap_tx_laser(struct ixgbe_hw *hw);
int32_t ixgbe_setup_link(struct ixgbe_hw *hw, ixgbe_link_speed speed,
    _Bool autoneg_wait_to_complete);
int32_t ixgbe_setup_mac_link(struct ixgbe_hw *hw, ixgbe_link_speed speed,
    _Bool autoneg_wait_to_complete);
int32_t ixgbe_check_link(struct ixgbe_hw *hw, ixgbe_link_speed *speed,
    _Bool *link_up, _Bool link_up_wait_to_complete);
int32_t ixgbe_get_link_capabilities(struct ixgbe_hw *hw, ixgbe_link_speed *speed,
        _Bool *autoneg);
int32_t ixgbe_set_rar(struct ixgbe_hw *hw, uint32_t index, uint8_t *addr,
        uint32_t vmdq, uint32_t enable_addr);
int32_t ixgbe_set_vmdq(struct ixgbe_hw *hw, uint32_t rar, uint32_t vmdq);
int32_t ixgbe_clear_vmdq(struct ixgbe_hw *hw, uint32_t rar, uint32_t vmdq);
int32_t ixgbe_init_uta_tables(struct ixgbe_hw *hw);
void ixgbe_add_uc_addr(struct ixgbe_hw *hw, uint8_t *addr, uint32_t vmdq);
void ixgbe_set_mta(struct ixgbe_hw *hw, uint8_t *mc_addr);
void ixgbe_disable_rx(struct ixgbe_hw *hw);
void ixgbe_enable_rx(struct ixgbe_hw *hw);
int32_t ixgbe_init_phy_ops_generic(struct ixgbe_hw *hw);
_Bool ixgbe_validate_phy_addr(struct ixgbe_hw *hw, uint32_t phy_addr);
enum ixgbe_phy_type ixgbe_get_phy_type_from_id(uint32_t phy_id);
int32_t ixgbe_get_phy_id(struct ixgbe_hw *hw);
int32_t ixgbe_identify_phy_generic(struct ixgbe_hw *hw);
int32_t ixgbe_reset_phy_generic(struct ixgbe_hw *hw);
int32_t ixgbe_read_phy_reg_mdi(struct ixgbe_hw *hw, uint32_t reg_addr,
          uint32_t device_type, uint16_t *phy_data);
int32_t ixgbe_write_phy_reg_mdi(struct ixgbe_hw *hw, uint32_t reg_addr,
    uint32_t device_type, uint16_t phy_data);
int32_t ixgbe_read_phy_reg_generic(struct ixgbe_hw *hw, uint32_t reg_addr,
       uint32_t device_type, uint16_t *phy_data);
int32_t ixgbe_write_phy_reg_generic(struct ixgbe_hw *hw, uint32_t reg_addr,
        uint32_t device_type, uint16_t phy_data);
int32_t ixgbe_setup_phy_link_generic(struct ixgbe_hw *hw);
int32_t ixgbe_setup_phy_link_speed_generic(struct ixgbe_hw *hw,
        ixgbe_link_speed speed,
        _Bool autoneg_wait_to_complete);
int32_t ixgbe_get_copper_link_capabilities_generic(struct ixgbe_hw *hw,
         ixgbe_link_speed *speed,
         _Bool *autoneg);
int32_t ixgbe_check_reset_blocked(struct ixgbe_hw *hw);
int32_t ixgbe_check_phy_link_tnx(struct ixgbe_hw *hw,
     ixgbe_link_speed *speed,
     _Bool *link_up);
int32_t ixgbe_setup_phy_link_tnx(struct ixgbe_hw *hw);
int32_t ixgbe_get_phy_firmware_version_tnx(struct ixgbe_hw *hw,
        uint16_t *firmware_version);
int32_t ixgbe_get_phy_firmware_version_generic(struct ixgbe_hw *hw,
            uint16_t *firmware_version);
int32_t ixgbe_reset_phy_nl(struct ixgbe_hw *hw);
_Bool ixgbe_is_sfp(struct ixgbe_hw *hw);
int32_t ixgbe_set_copper_phy_power(struct ixgbe_hw *hw, _Bool on);
int32_t ixgbe_identify_module_generic(struct ixgbe_hw *hw);
int32_t ixgbe_identify_sfp_module_generic(struct ixgbe_hw *hw);
int32_t ixgbe_get_supported_phy_sfp_layer_generic(struct ixgbe_hw *hw);
int32_t ixgbe_identify_qsfp_module_generic(struct ixgbe_hw *hw);
int32_t ixgbe_get_sfp_init_sequence_offsets(struct ixgbe_hw *hw,
         uint16_t *list_offset,
         uint16_t *data_offset);
int32_t ixgbe_tn_check_overtemp(struct ixgbe_hw *hw);
int32_t ixgbe_read_i2c_byte_generic(struct ixgbe_hw *hw, uint8_t byte_offset,
        uint8_t dev_addr, uint8_t *data);
int32_t ixgbe_read_i2c_byte_generic_unlocked(struct ixgbe_hw *hw, uint8_t byte_offset,
          uint8_t dev_addr, uint8_t *data);
int32_t ixgbe_write_i2c_byte_generic(struct ixgbe_hw *hw, uint8_t byte_offset,
         uint8_t dev_addr, uint8_t data);
int32_t ixgbe_write_i2c_byte_generic_unlocked(struct ixgbe_hw *hw, uint8_t byte_offset,
           uint8_t dev_addr, uint8_t data);
int32_t ixgbe_read_i2c_eeprom_generic(struct ixgbe_hw *hw, uint8_t byte_offset,
          uint8_t *eeprom_data);
int32_t ixgbe_write_i2c_eeprom_generic(struct ixgbe_hw *hw, uint8_t byte_offset,
           uint8_t eeprom_data);
int32_t ixgbe_read_mbx(struct ixgbe_hw *, uint32_t *, uint16_t, uint16_t);
int32_t ixgbe_write_mbx(struct ixgbe_hw *, uint32_t *, uint16_t, uint16_t);
int32_t ixgbe_read_posted_mbx(struct ixgbe_hw *, uint32_t *, uint16_t, uint16_t);
int32_t ixgbe_write_posted_mbx(struct ixgbe_hw *, uint32_t *, uint16_t, uint16_t);
int32_t ixgbe_check_for_msg(struct ixgbe_hw *, uint16_t);
int32_t ixgbe_check_for_ack(struct ixgbe_hw *, uint16_t);
int32_t ixgbe_check_for_rst(struct ixgbe_hw *, uint16_t);
void ixgbe_init_mbx_ops_generic(struct ixgbe_hw *hw);
void ixgbe_init_mbx_params_pf(struct ixgbe_hw *);
int32_t ixgbe_get_link_capabilities_82599(struct ixgbe_hw *hw,
       ixgbe_link_speed *speed,
       _Bool *autoneg);
enum ixgbe_media_type ixgbe_get_media_type_82599(struct ixgbe_hw *hw);
void ixgbe_disable_tx_laser_multispeed_fiber(struct ixgbe_hw *hw);
void ixgbe_enable_tx_laser_multispeed_fiber(struct ixgbe_hw *hw);
void ixgbe_flap_tx_laser_multispeed_fiber(struct ixgbe_hw *hw);
void ixgbe_set_hard_rate_select_speed(struct ixgbe_hw *hw,
          ixgbe_link_speed speed);
int32_t ixgbe_setup_mac_link_smartspeed(struct ixgbe_hw *hw,
     ixgbe_link_speed speed,
     _Bool autoneg_wait_to_complete);
int32_t ixgbe_start_mac_link_82599(struct ixgbe_hw *hw,
       _Bool autoneg_wait_to_complete);
int32_t ixgbe_setup_mac_link_82599(struct ixgbe_hw *hw,
       ixgbe_link_speed speed,
       _Bool autoneg_wait_to_complete);
int32_t ixgbe_setup_sfp_modules_82599(struct ixgbe_hw *hw);
void ixgbe_init_mac_link_ops_82599(struct ixgbe_hw *hw);
int32_t ixgbe_reset_hw_82599(struct ixgbe_hw *hw);
int32_t ixgbe_read_analog_reg8_82599(struct ixgbe_hw *hw, uint32_t reg64,
         uint8_t *val);
int32_t ixgbe_write_analog_reg8_82599(struct ixgbe_hw *hw, uint32_t reg64,
          uint8_t val);
int32_t ixgbe_start_hw_82599(struct ixgbe_hw *hw);
int32_t ixgbe_identify_phy_82599(struct ixgbe_hw *hw);
int32_t ixgbe_init_phy_ops_82599(struct ixgbe_hw *hw);
uint32_t ixgbe_get_supported_physical_layer_82599(struct ixgbe_hw *hw);
int32_t ixgbe_enable_rx_dma_82599(struct ixgbe_hw *hw, uint32_t regval);
int32_t prot_autoc_read_82599(struct ixgbe_hw *, _Bool *locked, uint32_t *reg_val);
int32_t prot_autoc_write_82599(struct ixgbe_hw *, uint32_t reg_val, _Bool locked);
void ixgbe_stop_mac_link_on_d3_82599(struct ixgbe_hw *hw);
int32_t ixgbe_setup_copper_link_82599(struct ixgbe_hw *hw,
          ixgbe_link_speed speed,
          _Bool autoneg_wait_to_complete);
int32_t ixgbe_verify_fw_version_82599(struct ixgbe_hw *hw);
_Bool ixgbe_verify_lesm_fw_enabled_82599(struct ixgbe_hw *hw);
int32_t ixgbe_reset_pipeline_82599(struct ixgbe_hw *hw);
int32_t ixgbe_read_eeprom_82599(struct ixgbe_hw *hw,
    uint16_t offset, uint16_t *data);
int32_t ixgbe_read_i2c_byte_82599(struct ixgbe_hw *hw, uint8_t byte_offset,
      uint8_t dev_addr, uint8_t *data);
int32_t ixgbe_write_i2c_byte_82599(struct ixgbe_hw *hw, uint8_t byte_offset,
       uint8_t dev_addr, uint8_t data);
void ixgbe_init_mac_link_ops_82599(struct ixgbe_hw *hw)
{
 struct ixgbe_mac_info *mac = &hw->mac;
 ;;
 if ((mac->ops.get_media_type(hw) == ixgbe_media_type_fiber) &&
     !ixgbe_mng_enabled(hw)) {
  mac->ops.disable_tx_laser =
           ixgbe_disable_tx_laser_multispeed_fiber;
  mac->ops.enable_tx_laser =
     ixgbe_enable_tx_laser_multispeed_fiber;
  mac->ops.flap_tx_laser = ixgbe_flap_tx_laser_multispeed_fiber;
 } else {
  mac->ops.disable_tx_laser = ((void *)0);
  mac->ops.enable_tx_laser = ((void *)0);
  mac->ops.flap_tx_laser = ((void *)0);
 }
 if (hw->phy.multispeed_fiber) {
  mac->ops.setup_link = ixgbe_setup_mac_link_multispeed_fiber;
  mac->ops.setup_mac_link = ixgbe_setup_mac_link_82599;
  mac->ops.set_rate_select_speed =
            ixgbe_set_hard_rate_select_speed;
  if (ixgbe_get_media_type(hw) == ixgbe_media_type_fiber_fixed)
   mac->ops.set_rate_select_speed =
            ixgbe_set_soft_rate_select_speed;
 } else {
  if ((ixgbe_get_media_type(hw) == ixgbe_media_type_backplane) &&
       (hw->phy.smart_speed == ixgbe_smart_speed_auto ||
        hw->phy.smart_speed == ixgbe_smart_speed_on) &&
        !ixgbe_verify_lesm_fw_enabled_82599(hw)) {
   mac->ops.setup_link = ixgbe_setup_mac_link_smartspeed;
  } else {
   mac->ops.setup_link = ixgbe_setup_mac_link_82599;
  }
 }
}
int32_t ixgbe_init_phy_ops_82599(struct ixgbe_hw *hw)
{
 struct ixgbe_mac_info *mac = &hw->mac;
 struct ixgbe_phy_info *phy = &hw->phy;
 int32_t ret_val = 0;
 uint32_t esdp;
 ;;
 if (hw->device_id == 0x1558) {
  hw->phy.qsfp_shared_i2c_bus = 1;
  esdp = bus_space_read_4(((struct ixgbe_osdep *)(hw)->back)->os_memt, ((struct ixgbe_osdep *)(hw)->back)->os_memh, 0x00020);
  esdp |= 0x00000100;
  esdp &= ~0x00000200;
  esdp &= ~0x00000001;
  esdp &= ~0x00010000;
  esdp &= ~0x00020000;
  bus_space_write_4(((struct ixgbe_osdep *)(hw)->back)->os_memt, ((struct ixgbe_osdep *)(hw)->back)->os_memh, 0x00020, esdp);
  bus_space_read_4(((struct ixgbe_osdep *)(hw)->back)->os_memt, ((struct ixgbe_osdep *)(hw)->back)->os_memh, 0x00008);
  phy->ops.read_i2c_byte = ixgbe_read_i2c_byte_82599;
  phy->ops.write_i2c_byte = ixgbe_write_i2c_byte_82599;
 }
 ret_val = phy->ops.identify(hw);
 if (ret_val == -19)
  goto init_phy_ops_out;
 ixgbe_init_mac_link_ops_82599(hw);
 if (hw->phy.sfp_type != ixgbe_sfp_type_unknown)
  hw->phy.ops.reset = ((void *)0);
 if (mac->ops.get_media_type(hw) == ixgbe_media_type_copper) {
  mac->ops.setup_link = ixgbe_setup_copper_link_82599;
  mac->ops.get_link_capabilities =
      ixgbe_get_copper_link_capabilities_generic;
 }
 switch (hw->phy.type) {
 case ixgbe_phy_tn:
  phy->ops.setup_link = ixgbe_setup_phy_link_tnx;
  phy->ops.check_link = ixgbe_check_phy_link_tnx;
  phy->ops.get_firmware_version =
        ixgbe_get_phy_firmware_version_tnx;
  break;
 default:
  break;
 }
init_phy_ops_out:
 return ret_val;
}
int32_t ixgbe_setup_sfp_modules_82599(struct ixgbe_hw *hw)
{
 int32_t ret_val = 0;
 uint16_t list_offset, data_offset, data_value;
 ;;
 if (hw->phy.sfp_type != ixgbe_sfp_type_unknown) {
  ixgbe_init_mac_link_ops_82599(hw);
  hw->phy.ops.reset = ((void *)0);
  ret_val = ixgbe_get_sfp_init_sequence_offsets(hw, &list_offset,
             &data_offset);
  if (ret_val != 0)
   goto setup_sfp_out;
  ret_val = hw->mac.ops.acquire_swfw_sync(hw,
       0x0008);
  if (ret_val != 0) {
   ret_val = -16;
   goto setup_sfp_out;
  }
  if (hw->eeprom.ops.read(hw, ++data_offset, &data_value))
   goto setup_sfp_err;
  while (data_value != 0xffff) {
   bus_space_write_4(((struct ixgbe_osdep *)(hw)->back)->os_memt, ((struct ixgbe_osdep *)(hw)->back)->os_memh, 0x014F00, data_value);
   bus_space_read_4(((struct ixgbe_osdep *)(hw)->back)->os_memt, ((struct ixgbe_osdep *)(hw)->back)->os_memh, 0x00008);
   if (hw->eeprom.ops.read(hw, ++data_offset, &data_value))
    goto setup_sfp_err;
  }
  hw->mac.ops.release_swfw_sync(hw, 0x0008);
  delay(1000 * (hw->eeprom.semaphore_delay));
  ret_val = hw->mac.ops.prot_autoc_write(hw,
   hw->mac.orig_autoc | (0x3 << 13),
   0);
  if (ret_val) {
   ;
   ret_val = -30;
   goto setup_sfp_out;
  }
 }
setup_sfp_out:
 return ret_val;
setup_sfp_err:
 hw->mac.ops.release_swfw_sync(hw, 0x0008);
 delay(1000 * (hw->eeprom.semaphore_delay));
 ;
 return -3;
}
int32_t prot_autoc_read_82599(struct ixgbe_hw *hw, _Bool *locked,
    uint32_t *reg_val)
{
 int32_t ret_val;
 *locked = 0;
 if (ixgbe_verify_lesm_fw_enabled_82599(hw)) {
  ret_val = hw->mac.ops.acquire_swfw_sync(hw,
     0x0008);
  if (ret_val != 0)
   return -16;
  *locked = 1;
 }
 *reg_val = bus_space_read_4(((struct ixgbe_osdep *)(hw)->back)->os_memt, ((struct ixgbe_osdep *)(hw)->back)->os_memh, 0x042A0);
 return 0;
}
int32_t prot_autoc_write_82599(struct ixgbe_hw *hw, uint32_t autoc, _Bool locked)
{
 int32_t ret_val = 0;
 if (ixgbe_check_reset_blocked(hw))
  goto out;
 if (!locked && ixgbe_verify_lesm_fw_enabled_82599(hw)) {
  ret_val = hw->mac.ops.acquire_swfw_sync(hw,
     0x0008);
  if (ret_val != 0)
   return -16;
  locked = 1;
 }
 bus_space_write_4(((struct ixgbe_osdep *)(hw)->back)->os_memt, ((struct ixgbe_osdep *)(hw)->back)->os_memh, 0x042A0, autoc);
 ret_val = ixgbe_reset_pipeline_82599(hw);
out:
 if (locked)
  hw->mac.ops.release_swfw_sync(hw, 0x0008);
 return ret_val;
}
int32_t ixgbe_init_ops_82599(struct ixgbe_hw *hw)
{
 struct ixgbe_mac_info *mac = &hw->mac;
 struct ixgbe_phy_info *phy = &hw->phy;
 struct ixgbe_eeprom_info *eeprom = &hw->eeprom;
 int32_t ret_val;
 ;;
 ret_val = ixgbe_init_phy_ops_generic(hw);
 ret_val = ixgbe_init_ops_generic(hw);
 phy->ops.identify = ixgbe_identify_phy_82599;
 phy->ops.init = ixgbe_init_phy_ops_82599;
 mac->ops.reset_hw = ixgbe_reset_hw_82599;
 mac->ops.get_media_type = ixgbe_get_media_type_82599;
 mac->ops.get_supported_physical_layer =
        ixgbe_get_supported_physical_layer_82599;
 mac->ops.disable_sec_rx_path = ixgbe_disable_sec_rx_path_generic;
 mac->ops.enable_sec_rx_path = ixgbe_enable_sec_rx_path_generic;
 mac->ops.enable_rx_dma = ixgbe_enable_rx_dma_82599;
 mac->ops.read_analog_reg8 = ixgbe_read_analog_reg8_82599;
 mac->ops.write_analog_reg8 = ixgbe_write_analog_reg8_82599;
 mac->ops.start_hw = ixgbe_start_hw_82599;
 mac->ops.prot_autoc_read = prot_autoc_read_82599;
 mac->ops.prot_autoc_write = prot_autoc_write_82599;
 mac->ops.set_vmdq = ixgbe_set_vmdq_generic;
 mac->ops.clear_vmdq = ixgbe_clear_vmdq_generic;
 mac->ops.insert_mac_addr = ixgbe_insert_mac_addr_generic;
 mac->rar_highwater = 1;
 mac->ops.set_vfta = ixgbe_set_vfta_generic;
 mac->ops.set_vlvf = ixgbe_set_vlvf_generic;
 mac->ops.clear_vfta = ixgbe_clear_vfta_generic;
 mac->ops.init_uta_tables = ixgbe_init_uta_tables_generic;
 mac->ops.setup_sfp = ixgbe_setup_sfp_modules_82599;
 mac->ops.get_link_capabilities = ixgbe_get_link_capabilities_82599;
 mac->ops.check_link = ixgbe_check_mac_link_generic;
 mac->ops.stop_mac_link_on_d3 = ixgbe_stop_mac_link_on_d3_82599;
 ixgbe_init_mac_link_ops_82599(hw);
 mac->mcft_size = 128;
 mac->vft_size = 128;
 mac->num_rar_entries = 128;
 mac->rx_pb_size = 512;
 mac->max_rx_queues = 128;
 mac->max_tx_queues = 128;
 mac->max_msix_vectors = 0 ;
 hw->mbx.ops.init_params = ixgbe_init_mbx_params_pf;
 eeprom->ops.read = ixgbe_read_eeprom_82599;
 return ret_val;
}
int32_t ixgbe_get_link_capabilities_82599(struct ixgbe_hw *hw,
          ixgbe_link_speed *speed,
          _Bool *autoneg)
{
 int32_t status = 0;
 uint32_t autoc = 0;
 ;;
 if (hw->phy.sfp_type == ixgbe_sfp_type_1g_cu_core0 ||
     hw->phy.sfp_type == ixgbe_sfp_type_1g_cu_core1 ||
     hw->phy.sfp_type == ixgbe_sfp_type_1g_lx_core0 ||
     hw->phy.sfp_type == ixgbe_sfp_type_1g_lx_core1 ||
     hw->phy.sfp_type == ixgbe_sfp_type_1g_sx_core0 ||
     hw->phy.sfp_type == ixgbe_sfp_type_1g_sx_core1) {
  *speed = 0x0020;
  *autoneg = 1;
  goto out;
 }
 if (hw->mac.orig_link_settings_stored)
  autoc = hw->mac.orig_autoc;
 else
  autoc = bus_space_read_4(((struct ixgbe_osdep *)(hw)->back)->os_memt, ((struct ixgbe_osdep *)(hw)->back)->os_memh, 0x042A0);
 switch (autoc & (0x7 << 13)) {
 case (0x0 << 13):
  *speed = 0x0020;
  *autoneg = 0;
  break;
 case (0x1 << 13):
  *speed = 0x0080;
  *autoneg = 0;
  break;
 case (0x2 << 13):
  *speed = 0x0020;
  *autoneg = 1;
  break;
 case (0x3 << 13):
  *speed = 0x0080;
  *autoneg = 0;
  break;
 case (0x4 << 13):
 case (0x6 << 13):
  *speed = 0;
  if (autoc & 0x00010000)
   *speed |= 0x0080;
  if (autoc & 0x80000000)
   *speed |= 0x0080;
  if (autoc & 0x40000000)
   *speed |= 0x0020;
  *autoneg = 1;
  break;
 case (0x7 << 13):
  *speed = 0x0008;
  if (autoc & 0x00010000)
   *speed |= 0x0080;
  if (autoc & 0x80000000)
   *speed |= 0x0080;
  if (autoc & 0x40000000)
   *speed |= 0x0020;
  *autoneg = 1;
  break;
 case (0x5 << 13):
  *speed = 0x0020 | 0x0008;
  *autoneg = 0;
  break;
 default:
  status = -8;
  goto out;
  break;
 }
 if (hw->phy.multispeed_fiber) {
  *speed |= 0x0080 |
     0x0020;
  if (hw->phy.media_type == ixgbe_media_type_fiber_qsfp)
   *autoneg = 0;
  else
   *autoneg = 1;
 }
out:
 return status;
}
enum ixgbe_media_type ixgbe_get_media_type_82599(struct ixgbe_hw *hw)
{
 enum ixgbe_media_type media_type;
 ;;
 switch (hw->phy.type) {
 case ixgbe_phy_cu_unknown:
 case ixgbe_phy_tn:
  media_type = ixgbe_media_type_copper;
  goto out;
 default:
  break;
 }
 switch (hw->device_id) {
 case 0x10F7:
 case 0x1514:
 case 0x10F8:
 case 0x1517:
 case 0x152A:
 case 0x10FC:
  media_type = ixgbe_media_type_backplane;
  break;
 case 0x10FB:
 case 0x1529:
 case 0x1507:
 case 0x154D:
 case 0x154A:
 case 0x1557:
  media_type = ixgbe_media_type_fiber;
  break;
 case 0x10F9:
  media_type = ixgbe_media_type_cx4;
  break;
 case 0x151C:
  media_type = ixgbe_media_type_copper;
  break;
 case 0x1558:
  media_type = ixgbe_media_type_fiber_qsfp;
  break;
 case 0x155D:
  media_type = ixgbe_media_type_fiber_fixed;
  hw->phy.multispeed_fiber = 1;
  break;
 default:
  media_type = ixgbe_media_type_unknown;
  break;
 }
out:
 return media_type;
}
void ixgbe_stop_mac_link_on_d3_82599(struct ixgbe_hw *hw)
{
 uint32_t autoc2_reg;
 uint16_t ee_ctrl_2 = 0;
 ;;
 ixgbe_read_eeprom_82599(hw, 1, &ee_ctrl_2);
 if (!ixgbe_mng_present(hw) &&
     (ee_ctrl_2 & 2)) {
  autoc2_reg = bus_space_read_4(((struct ixgbe_osdep *)(hw)->back)->os_memt, ((struct ixgbe_osdep *)(hw)->back)->os_memh, 0x042A8);
  autoc2_reg |= 0x50000000;
  bus_space_write_4(((struct ixgbe_osdep *)(hw)->back)->os_memt, ((struct ixgbe_osdep *)(hw)->back)->os_memh, 0x042A8, autoc2_reg);
 }
}
int32_t ixgbe_start_mac_link_82599(struct ixgbe_hw *hw,
       _Bool autoneg_wait_to_complete)
{
 uint32_t autoc_reg;
 uint32_t links_reg;
 uint32_t i;
 int32_t status = 0;
 _Bool got_lock = 0;
 ;;
 if (ixgbe_verify_lesm_fw_enabled_82599(hw)) {
  status = hw->mac.ops.acquire_swfw_sync(hw,
             0x0008);
  if (status != 0)
   goto out;
  got_lock = 1;
 }
 ixgbe_reset_pipeline_82599(hw);
 if (got_lock)
  hw->mac.ops.release_swfw_sync(hw, 0x0008);
 if (autoneg_wait_to_complete) {
  autoc_reg = bus_space_read_4(((struct ixgbe_osdep *)(hw)->back)->os_memt, ((struct ixgbe_osdep *)(hw)->back)->os_memh, 0x042A0);
  if ((autoc_reg & (0x7 << 13)) ==
       (0x4 << 13) ||
      (autoc_reg & (0x7 << 13)) ==
       (0x6 << 13) ||
      (autoc_reg & (0x7 << 13)) ==
       (0x7 << 13)) {
   links_reg = 0;
   for (i = 0; i < 45; i++) {
    links_reg = bus_space_read_4(((struct ixgbe_osdep *)(hw)->back)->os_memt, ((struct ixgbe_osdep *)(hw)->back)->os_memh, 0x042A4);
    if (links_reg & 0x80000000)
     break;
    delay(1000 * (100));
   }
   if (!(links_reg & 0x80000000)) {
    status = -14;
    ;
   }
  }
 }
 delay(1000 * (50));
out:
 return status;
}
void ixgbe_disable_tx_laser_multispeed_fiber(struct ixgbe_hw *hw)
{
 uint32_t esdp_reg = bus_space_read_4(((struct ixgbe_osdep *)(hw)->back)->os_memt, ((struct ixgbe_osdep *)(hw)->back)->os_memh, 0x00020);
 if (ixgbe_check_reset_blocked(hw))
  return;
 esdp_reg |= 0x00000008;
 bus_space_write_4(((struct ixgbe_osdep *)(hw)->back)->os_memt, ((struct ixgbe_osdep *)(hw)->back)->os_memh, 0x00020, esdp_reg);
 bus_space_read_4(((struct ixgbe_osdep *)(hw)->back)->os_memt, ((struct ixgbe_osdep *)(hw)->back)->os_memh, 0x00008);
 delay(100);
}
void ixgbe_enable_tx_laser_multispeed_fiber(struct ixgbe_hw *hw)
{
 uint32_t esdp_reg = bus_space_read_4(((struct ixgbe_osdep *)(hw)->back)->os_memt, ((struct ixgbe_osdep *)(hw)->back)->os_memh, 0x00020);
 esdp_reg &= ~0x00000008;
 bus_space_write_4(((struct ixgbe_osdep *)(hw)->back)->os_memt, ((struct ixgbe_osdep *)(hw)->back)->os_memh, 0x00020, esdp_reg);
 bus_space_read_4(((struct ixgbe_osdep *)(hw)->back)->os_memt, ((struct ixgbe_osdep *)(hw)->back)->os_memh, 0x00008);
 delay(1000 * (100));
}
void ixgbe_flap_tx_laser_multispeed_fiber(struct ixgbe_hw *hw)
{
 ;;
 if (ixgbe_check_reset_blocked(hw))
  return;
 if (hw->mac.autotry_restart) {
  ixgbe_disable_tx_laser_multispeed_fiber(hw);
  ixgbe_enable_tx_laser_multispeed_fiber(hw);
  hw->mac.autotry_restart = 0;
 }
}
void ixgbe_set_hard_rate_select_speed(struct ixgbe_hw *hw,
          ixgbe_link_speed speed)
{
 uint32_t esdp_reg = bus_space_read_4(((struct ixgbe_osdep *)(hw)->back)->os_memt, ((struct ixgbe_osdep *)(hw)->back)->os_memh, 0x00020);
 switch (speed) {
 case 0x0080:
  esdp_reg |= (0x00002000 | 0x00000020);
  break;
 case 0x0020:
  esdp_reg &= ~0x00000020;
  esdp_reg |= 0x00002000;
  break;
 default:
  ;
  return;
 }
 bus_space_write_4(((struct ixgbe_osdep *)(hw)->back)->os_memt, ((struct ixgbe_osdep *)(hw)->back)->os_memh, 0x00020, esdp_reg);
 bus_space_read_4(((struct ixgbe_osdep *)(hw)->back)->os_memt, ((struct ixgbe_osdep *)(hw)->back)->os_memh, 0x00008);
}
int32_t ixgbe_setup_mac_link_smartspeed(struct ixgbe_hw *hw,
     ixgbe_link_speed speed,
     _Bool autoneg_wait_to_complete)
{
 int32_t status = 0;
 ixgbe_link_speed link_speed = 0;
 int32_t i, j;
 _Bool link_up = 0;
 uint32_t autoc_reg = bus_space_read_4(((struct ixgbe_osdep *)(hw)->back)->os_memt, ((struct ixgbe_osdep *)(hw)->back)->os_memh, 0x042A0);
 ;;
 hw->phy.autoneg_advertised = 0;
 if (speed & 0x0080)
  hw->phy.autoneg_advertised |= 0x0080;
 if (speed & 0x0020)
  hw->phy.autoneg_advertised |= 0x0020;
 if (speed & 0x0008)
  hw->phy.autoneg_advertised |= 0x0008;
 hw->phy.smart_speed_active = 0;
 for (j = 0; j < 3; j++) {
  status = ixgbe_setup_mac_link_82599(hw, speed,
          autoneg_wait_to_complete);
  if (status != 0)
   goto out;
  for (i = 0; i < 5; i++) {
   delay(1000 * (100));
   status = ixgbe_check_link(hw, &link_speed, &link_up,
        0);
   if (status != 0)
    goto out;
   if (link_up)
    goto out;
  }
 }
 if (((autoc_reg & 0x00010000) == 0) ||
     ((autoc_reg & 0xC0000000) == 0))
  goto out;
 hw->phy.smart_speed_active = 1;
 status = ixgbe_setup_mac_link_82599(hw, speed,
         autoneg_wait_to_complete);
 if (status != 0)
  goto out;
 for (i = 0; i < 6; i++) {
  delay(1000 * (100));
  status = ixgbe_check_link(hw, &link_speed, &link_up, 0);
  if (status != 0)
   goto out;
  if (link_up)
   goto out;
 }
 hw->phy.smart_speed_active = 0;
 status = ixgbe_setup_mac_link_82599(hw, speed,
         autoneg_wait_to_complete);
out:
 if (link_up && (link_speed == 0x0020))
  ;
 return status;
}
int32_t ixgbe_setup_mac_link_82599(struct ixgbe_hw *hw,
       ixgbe_link_speed speed,
       _Bool autoneg_wait_to_complete)
{
 _Bool autoneg = 0;
 int32_t status = 0;
 uint32_t pma_pmd_1g, link_mode;
 uint32_t current_autoc = bus_space_read_4(((struct ixgbe_osdep *)(hw)->back)->os_memt, ((struct ixgbe_osdep *)(hw)->back)->os_memh, 0x042A0);
 uint32_t orig_autoc = 0;
 uint32_t autoc = current_autoc;
 uint32_t autoc2 = bus_space_read_4(((struct ixgbe_osdep *)(hw)->back)->os_memt, ((struct ixgbe_osdep *)(hw)->back)->os_memh, 0x042A8);
 uint32_t pma_pmd_10g_serial = autoc2 & 0x00030000;
 uint32_t links_reg;
 uint32_t i;
 ixgbe_link_speed link_capabilities = 0;
 ;;
 status = ixgbe_get_link_capabilities_82599(hw, &link_capabilities,
     &autoneg);
 if (status)
  goto out;
 speed &= link_capabilities;
 if (speed == 0) {
  status = -8;
  goto out;
 }
 if (hw->mac.orig_link_settings_stored)
  orig_autoc = hw->mac.orig_autoc;
 else
  orig_autoc = autoc;
 link_mode = autoc & (0x7 << 13);
 pma_pmd_1g = autoc & 0x00000200;
 if (link_mode == (0x4 << 13) ||
     link_mode == (0x6 << 13) ||
     link_mode == (0x7 << 13)) {
  autoc &= ~(0xC0000000 | 0x00010000);
  if (speed & 0x0080) {
   if (orig_autoc & 0x80000000)
    autoc |= 0x80000000;
   if ((orig_autoc & 0x00010000) &&
       (hw->phy.smart_speed_active == 0))
    autoc |= 0x00010000;
  }
  if (speed & 0x0020)
   autoc |= 0x40000000;
 } else if ((pma_pmd_1g == (0x0 << 9)) &&
     (link_mode == (0x0 << 13) ||
      link_mode == (0x2 << 13))) {
  if ((speed == 0x0080) &&
      (pma_pmd_10g_serial == (0x2 << 16))) {
   autoc &= ~(0x7 << 13);
   autoc |= (0x3 << 13);
  }
 } else if ((pma_pmd_10g_serial == (0x2 << 16)) &&
     (link_mode == (0x3 << 13))) {
  if ((speed == 0x0020) &&
      (pma_pmd_1g == (0x0 << 9))) {
   autoc &= ~(0x7 << 13);
   if (autoneg || hw->phy.type == ixgbe_phy_qsfp_intel)
    autoc |= (0x2 << 13);
   else
    autoc |= (0x0 << 13);
  }
 }
 if (autoc != current_autoc) {
  status = hw->mac.ops.prot_autoc_write(hw, autoc, 0);
  if (status != 0)
   goto out;
  if (autoneg_wait_to_complete) {
   if (link_mode == (0x4 << 13) ||
       link_mode == (0x6 << 13) ||
       link_mode == (0x7 << 13)) {
    links_reg = 0;
    for (i = 0; i < 45; i++) {
     links_reg =
            bus_space_read_4(((struct ixgbe_osdep *)(hw)->back)->os_memt, ((struct ixgbe_osdep *)(hw)->back)->os_memh, 0x042A4);
     if (links_reg & 0x80000000)
      break;
     delay(1000 * (100));
    }
    if (!(links_reg & 0x80000000)) {
     status =
      -14;
     ;
    }
   }
  }
  delay(1000 * (50));
 }
out:
 return status;
}
int32_t ixgbe_setup_copper_link_82599(struct ixgbe_hw *hw,
          ixgbe_link_speed speed,
          _Bool autoneg_wait_to_complete)
{
 int32_t status;
 ;;
 status = hw->phy.ops.setup_link_speed(hw, speed,
           autoneg_wait_to_complete);
 ixgbe_start_mac_link_82599(hw, autoneg_wait_to_complete);
 return status;
}
int32_t ixgbe_reset_hw_82599(struct ixgbe_hw *hw)
{
 ixgbe_link_speed link_speed;
 int32_t status;
 uint32_t ctrl = 0;
 uint32_t i, autoc, autoc2;
 uint32_t curr_lms;
 _Bool link_up = 0;
 ;;
 status = hw->mac.ops.stop_adapter(hw);
 if (status != 0)
  goto reset_hw_out;
 ixgbe_clear_tx_pending(hw);
 status = hw->phy.ops.init(hw);
 if (status == -19)
  goto reset_hw_out;
 if (hw->phy.sfp_setup_needed) {
  status = hw->mac.ops.setup_sfp(hw);
  hw->phy.sfp_setup_needed = 0;
 }
 if (status == -19)
  goto reset_hw_out;
 if (hw->phy.reset_disable == 0 && hw->phy.ops.reset != ((void *)0))
  hw->phy.ops.reset(hw);
 curr_lms = bus_space_read_4(((struct ixgbe_osdep *)(hw)->back)->os_memt, ((struct ixgbe_osdep *)(hw)->back)->os_memh, 0x042A0) & (0x7 << 13);
mac_reset_top:
 ctrl = 0x00000008;
 if (!hw->force_full_reset) {
  hw->mac.ops.check_link(hw, &link_speed, &link_up, 0);
  if (link_up)
   ctrl = 0x04000000;
 }
 ctrl |= bus_space_read_4(((struct ixgbe_osdep *)(hw)->back)->os_memt, ((struct ixgbe_osdep *)(hw)->back)->os_memh, 0x00000);
 bus_space_write_4(((struct ixgbe_osdep *)(hw)->back)->os_memt, ((struct ixgbe_osdep *)(hw)->back)->os_memh, 0x00000, ctrl);
 bus_space_read_4(((struct ixgbe_osdep *)(hw)->back)->os_memt, ((struct ixgbe_osdep *)(hw)->back)->os_memh, 0x00008);
 for (i = 0; i < 10; i++) {
  delay(1);
  ctrl = bus_space_read_4(((struct ixgbe_osdep *)(hw)->back)->os_memt, ((struct ixgbe_osdep *)(hw)->back)->os_memh, 0x00000);
  if (!(ctrl & (0x00000008 | 0x04000000)))
   break;
 }
 if (ctrl & (0x00000008 | 0x04000000)) {
  status = -15;
  ;
 }
 delay(1000 * (50));
 if (hw->mac.flags & 0x01) {
  hw->mac.flags &= ~0x01;
  goto mac_reset_top;
 }
 autoc = bus_space_read_4(((struct ixgbe_osdep *)(hw)->back)->os_memt, ((struct ixgbe_osdep *)(hw)->back)->os_memh, 0x042A0);
 autoc2 = bus_space_read_4(((struct ixgbe_osdep *)(hw)->back)->os_memt, ((struct ixgbe_osdep *)(hw)->back)->os_memh, 0x042A8);
 if (autoc2 & 0x70000000) {
  autoc2 &= ~0x70000000;
  bus_space_write_4(((struct ixgbe_osdep *)(hw)->back)->os_memt, ((struct ixgbe_osdep *)(hw)->back)->os_memh, 0x042A8, autoc2);
  bus_space_read_4(((struct ixgbe_osdep *)(hw)->back)->os_memt, ((struct ixgbe_osdep *)(hw)->back)->os_memh, 0x00008);
 }
 if (hw->mac.orig_link_settings_stored == 0) {
  hw->mac.orig_autoc = autoc;
  hw->mac.orig_autoc2 = autoc2;
  hw->mac.orig_link_settings_stored = 1;
 } else {
  if (hw->phy.multispeed_fiber && ixgbe_mng_enabled(hw))
   hw->mac.orig_autoc =
    (hw->mac.orig_autoc & ~(0x7 << 13)) |
    curr_lms;
  if (autoc != hw->mac.orig_autoc) {
   status = hw->mac.ops.prot_autoc_write(hw,
       hw->mac.orig_autoc,
       0);
   if (status != 0)
    goto reset_hw_out;
  }
  if ((autoc2 & 0xFFFF0000) !=
      (hw->mac.orig_autoc2 & 0xFFFF0000)) {
   autoc2 &= ~0xFFFF0000;
   autoc2 |= (hw->mac.orig_autoc2 &
       0xFFFF0000);
   bus_space_write_4(((struct ixgbe_osdep *)(hw)->back)->os_memt, ((struct ixgbe_osdep *)(hw)->back)->os_memh, 0x042A8, autoc2);
  }
 }
 hw->mac.ops.get_mac_addr(hw, hw->mac.perm_addr);
 hw->mac.num_rar_entries = 128;
 hw->mac.ops.init_rx_addrs(hw);
reset_hw_out:
 return status;
}
int32_t ixgbe_read_analog_reg8_82599(struct ixgbe_hw *hw, uint32_t reg64,
         uint8_t *val)
{
 uint32_t core_ctl;
 ;;
 bus_space_write_4(((struct ixgbe_osdep *)(hw)->back)->os_memt, ((struct ixgbe_osdep *)(hw)->back)->os_memh, 0x014F00, 0x00010000 | (reg64 << 8));
 bus_space_read_4(((struct ixgbe_osdep *)(hw)->back)->os_memt, ((struct ixgbe_osdep *)(hw)->back)->os_memh, 0x00008);
 delay(10);
 core_ctl = bus_space_read_4(((struct ixgbe_osdep *)(hw)->back)->os_memt, ((struct ixgbe_osdep *)(hw)->back)->os_memh, 0x014F00);
 *val = (uint8_t)core_ctl;
 return 0;
}
int32_t ixgbe_write_analog_reg8_82599(struct ixgbe_hw *hw, uint32_t reg64,
          uint8_t val)
{
 uint32_t core_ctl;
 ;;
 core_ctl = (reg64 << 8) | val;
 bus_space_write_4(((struct ixgbe_osdep *)(hw)->back)->os_memt, ((struct ixgbe_osdep *)(hw)->back)->os_memh, 0x014F00, core_ctl);
 bus_space_read_4(((struct ixgbe_osdep *)(hw)->back)->os_memt, ((struct ixgbe_osdep *)(hw)->back)->os_memh, 0x00008);
 delay(10);
 return 0;
}
int32_t ixgbe_start_hw_82599(struct ixgbe_hw *hw)
{
 int32_t ret_val = 0;
 ;;
 ret_val = ixgbe_start_hw_generic(hw);
 if (ret_val != 0)
  goto out;
 ret_val = ixgbe_start_hw_gen2(hw);
 if (ret_val != 0)
  goto out;
 hw->mac.autotry_restart = 1;
 if (ret_val == 0)
  ret_val = ixgbe_verify_fw_version_82599(hw);
out:
 return ret_val;
}
int32_t ixgbe_identify_phy_82599(struct ixgbe_hw *hw)
{
 int32_t status;
 ;;
 status = ixgbe_identify_phy_generic(hw);
 if (status != 0) {
  if (hw->mac.ops.get_media_type(hw) == ixgbe_media_type_copper)
   return status;
  else
   status = ixgbe_identify_module_generic(hw);
 }
 if (hw->phy.type == ixgbe_phy_unknown) {
  hw->phy.type = ixgbe_phy_none;
  return 0;
 }
 if (hw->phy.type == ixgbe_phy_sfp_unsupported)
  return -19;
 return status;
}
uint32_t ixgbe_get_supported_physical_layer_82599(struct ixgbe_hw *hw)
{
 uint32_t physical_layer = 0;
 uint32_t autoc = bus_space_read_4(((struct ixgbe_osdep *)(hw)->back)->os_memt, ((struct ixgbe_osdep *)(hw)->back)->os_memh, 0x042A0);
 uint32_t autoc2 = bus_space_read_4(((struct ixgbe_osdep *)(hw)->back)->os_memt, ((struct ixgbe_osdep *)(hw)->back)->os_memh, 0x042A8);
 uint32_t pma_pmd_10g_serial = autoc2 & 0x00030000;
 uint32_t pma_pmd_10g_parallel = autoc & 0x00000180;
 uint32_t pma_pmd_1g = autoc & 0x00000200;
 uint16_t ext_ability = 0;
 ;;
 hw->phy.ops.identify(hw);
 switch (hw->phy.type) {
 case ixgbe_phy_tn:
 case ixgbe_phy_cu_unknown:
  hw->phy.ops.read_reg(hw, 0xB,
  0x1, &ext_ability);
  if (ext_ability & 0x0004)
   physical_layer |= 0x0001;
  if (ext_ability & 0x0020)
   physical_layer |= 0x0002;
  if (ext_ability & 0x0080)
   physical_layer |= 0x0004;
  goto out;
 default:
  break;
 }
 switch (autoc & (0x7 << 13)) {
 case (0x2 << 13):
 case (0x0 << 13):
  if (pma_pmd_1g == (0x1 << 9)) {
   physical_layer = 0x0200 |
       0x0400;
   goto out;
  } else
   goto sfp_check;
  break;
 case (0x1 << 13):
  if (pma_pmd_10g_parallel == (0x2 << 7))
   physical_layer = 0x0100;
  else if (pma_pmd_10g_parallel == (0x1 << 7))
   physical_layer = 0x0080;
  else if (pma_pmd_10g_parallel == (0x0 << 7))
   physical_layer = 0x1000;
  goto out;
  break;
 case (0x3 << 13):
  if (pma_pmd_10g_serial == (0x0 << 16)) {
   physical_layer = 0x0800;
   goto out;
  } else if (pma_pmd_10g_serial == (0x2 << 16))
   goto sfp_check;
  break;
 case (0x4 << 13):
 case (0x6 << 13):
  if (autoc & 0x40000000)
   physical_layer |= 0x0200;
  if (autoc & 0x80000000)
   physical_layer |= 0x0080;
  if (autoc & 0x00010000)
   physical_layer |= 0x0800;
  goto out;
  break;
 default:
  goto out;
  break;
 }
sfp_check:
 physical_layer = ixgbe_get_supported_phy_sfp_layer_generic(hw);
out:
 return physical_layer;
}
int32_t ixgbe_enable_rx_dma_82599(struct ixgbe_hw *hw, uint32_t regval)
{
 ;;
 hw->mac.ops.disable_sec_rx_path(hw);
 if (regval & 0x00000001)
  ixgbe_enable_rx(hw);
 else
  ixgbe_disable_rx(hw);
 hw->mac.ops.enable_sec_rx_path(hw);
 return 0;
}
int32_t ixgbe_verify_fw_version_82599(struct ixgbe_hw *hw)
{
 int32_t status = -24;
 uint16_t fw_offset, fw_ptp_cfg_offset;
 uint16_t fw_version;
 ;;
 if (hw->phy.media_type != ixgbe_media_type_fiber) {
  status = 0;
  goto fw_version_out;
 }
 if (hw->eeprom.ops.read(hw, 0x0F, &fw_offset)) {
  ;
  return -24;
 }
 if ((fw_offset == 0) || (fw_offset == 0xFFFF))
  goto fw_version_out;
 if (hw->eeprom.ops.read(hw, (fw_offset +
     0x4),
     &fw_ptp_cfg_offset)) {
  ;
  return -24;
 }
 if ((fw_ptp_cfg_offset == 0) || (fw_ptp_cfg_offset == 0xFFFF))
  goto fw_version_out;
 if (hw->eeprom.ops.read(hw, (fw_ptp_cfg_offset +
       0x7), &fw_version)) {
  ;
  return -24;
 }
 if (fw_version > 0x5)
  status = 0;
fw_version_out:
 return status;
}
_Bool ixgbe_verify_lesm_fw_enabled_82599(struct ixgbe_hw *hw)
{
 _Bool lesm_enabled = 0;
 uint16_t fw_offset, fw_lesm_param_offset, fw_lesm_state;
 int32_t status;
 ;;
 status = hw->eeprom.ops.read(hw, 0x0F, &fw_offset);
 if ((status != 0) ||
     (fw_offset == 0) || (fw_offset == 0xFFFF))
  goto out;
 status = hw->eeprom.ops.read(hw, (fw_offset +
         0x2),
         &fw_lesm_param_offset);
 if ((status != 0) ||
     (fw_lesm_param_offset == 0) || (fw_lesm_param_offset == 0xFFFF))
  goto out;
 status = hw->eeprom.ops.read(hw, (fw_lesm_param_offset +
         0x1),
         &fw_lesm_state);
 if ((status == 0) &&
     (fw_lesm_state & 0x8000))
  lesm_enabled = 1;
out:
 return lesm_enabled;
}
int32_t ixgbe_read_eeprom_82599(struct ixgbe_hw *hw,
    uint16_t offset, uint16_t *data)
{
 struct ixgbe_eeprom_info *eeprom = &hw->eeprom;
 int32_t ret_val = -4;
 ;;
 if ((eeprom->type == ixgbe_eeprom_spi) &&
     (offset <= 0x00003FFF))
  ret_val = ixgbe_read_eerd_generic(hw, offset, data);
 else
  ret_val = ixgbe_read_eeprom_bit_bang_generic(hw, offset, data);
 return ret_val;
}
int32_t ixgbe_reset_pipeline_82599(struct ixgbe_hw *hw)
{
 int32_t ret_val;
 uint32_t anlp1_reg = 0;
 uint32_t i, autoc_reg, autoc2_reg;
 autoc2_reg = bus_space_read_4(((struct ixgbe_osdep *)(hw)->back)->os_memt, ((struct ixgbe_osdep *)(hw)->back)->os_memh, 0x042A8);
 if (autoc2_reg & 0x70000000) {
  autoc2_reg &= ~0x70000000;
  bus_space_write_4(((struct ixgbe_osdep *)(hw)->back)->os_memt, ((struct ixgbe_osdep *)(hw)->back)->os_memh, 0x042A8, autoc2_reg);
  bus_space_read_4(((struct ixgbe_osdep *)(hw)->back)->os_memt, ((struct ixgbe_osdep *)(hw)->back)->os_memh, 0x00008);
 }
 autoc_reg = bus_space_read_4(((struct ixgbe_osdep *)(hw)->back)->os_memt, ((struct ixgbe_osdep *)(hw)->back)->os_memh, 0x042A0);
 autoc_reg |= 0x00001000;
 bus_space_write_4(((struct ixgbe_osdep *)(hw)->back)->os_memt, ((struct ixgbe_osdep *)(hw)->back)->os_memh, 0x042A0, autoc_reg ^ (0x4 << 13));
 for (i = 0; i < 10; i++) {
  delay(1000 * (4));
  anlp1_reg = bus_space_read_4(((struct ixgbe_osdep *)(hw)->back)->os_memt, ((struct ixgbe_osdep *)(hw)->back)->os_memh, 0x042B0);
  if (anlp1_reg & 0x000f0000)
   break;
 }
 if (!(anlp1_reg & 0x000f0000)) {
  ;
  ret_val = -15;
  goto reset_pipeline_out;
 }
 ret_val = 0;
reset_pipeline_out:
 bus_space_write_4(((struct ixgbe_osdep *)(hw)->back)->os_memt, ((struct ixgbe_osdep *)(hw)->back)->os_memh, 0x042A0, autoc_reg);
 bus_space_read_4(((struct ixgbe_osdep *)(hw)->back)->os_memt, ((struct ixgbe_osdep *)(hw)->back)->os_memh, 0x00008);
 return ret_val;
}
int32_t ixgbe_read_i2c_byte_82599(struct ixgbe_hw *hw, uint8_t byte_offset,
      uint8_t dev_addr, uint8_t *data)
{
 uint32_t esdp;
 int32_t status;
 int32_t timeout = 200;
 ;;
 if (hw->phy.qsfp_shared_i2c_bus == 1) {
  esdp = bus_space_read_4(((struct ixgbe_osdep *)(hw)->back)->os_memt, ((struct ixgbe_osdep *)(hw)->back)->os_memh, 0x00020);
  esdp |= 0x00000001;
  bus_space_write_4(((struct ixgbe_osdep *)(hw)->back)->os_memt, ((struct ixgbe_osdep *)(hw)->back)->os_memh, 0x00020, esdp);
  bus_space_read_4(((struct ixgbe_osdep *)(hw)->back)->os_memt, ((struct ixgbe_osdep *)(hw)->back)->os_memh, 0x00008);
  while (timeout) {
   esdp = bus_space_read_4(((struct ixgbe_osdep *)(hw)->back)->os_memt, ((struct ixgbe_osdep *)(hw)->back)->os_memh, 0x00020);
   if (esdp & 0x00000002)
    break;
   delay(1000 * (5));
   timeout--;
  }
  if (!timeout) {
   ;
   status = -18;
   goto release_i2c_access;
  }
 }
 status = ixgbe_read_i2c_byte_generic(hw, byte_offset, dev_addr, data);
release_i2c_access:
 if (hw->phy.qsfp_shared_i2c_bus == 1) {
  esdp = bus_space_read_4(((struct ixgbe_osdep *)(hw)->back)->os_memt, ((struct ixgbe_osdep *)(hw)->back)->os_memh, 0x00020);
  esdp &= ~0x00000001;
  bus_space_write_4(((struct ixgbe_osdep *)(hw)->back)->os_memt, ((struct ixgbe_osdep *)(hw)->back)->os_memh, 0x00020, esdp);
  bus_space_read_4(((struct ixgbe_osdep *)(hw)->back)->os_memt, ((struct ixgbe_osdep *)(hw)->back)->os_memh, 0x00008);
 }
 return status;
}
int32_t ixgbe_write_i2c_byte_82599(struct ixgbe_hw *hw, uint8_t byte_offset,
       uint8_t dev_addr, uint8_t data)
{
 uint32_t esdp;
 int32_t status;
 int32_t timeout = 200;
 ;;
 if (hw->phy.qsfp_shared_i2c_bus == 1) {
  esdp = bus_space_read_4(((struct ixgbe_osdep *)(hw)->back)->os_memt, ((struct ixgbe_osdep *)(hw)->back)->os_memh, 0x00020);
  esdp |= 0x00000001;
  bus_space_write_4(((struct ixgbe_osdep *)(hw)->back)->os_memt, ((struct ixgbe_osdep *)(hw)->back)->os_memh, 0x00020, esdp);
  bus_space_read_4(((struct ixgbe_osdep *)(hw)->back)->os_memt, ((struct ixgbe_osdep *)(hw)->back)->os_memh, 0x00008);
  while (timeout) {
   esdp = bus_space_read_4(((struct ixgbe_osdep *)(hw)->back)->os_memt, ((struct ixgbe_osdep *)(hw)->back)->os_memh, 0x00020);
   if (esdp & 0x00000002)
    break;
   delay(1000 * (5));
   timeout--;
  }
  if (!timeout) {
   ;
   status = -18;
   goto release_i2c_access;
  }
 }
 status = ixgbe_write_i2c_byte_generic(hw, byte_offset, dev_addr, data);
release_i2c_access:
 if (hw->phy.qsfp_shared_i2c_bus == 1) {
  esdp = bus_space_read_4(((struct ixgbe_osdep *)(hw)->back)->os_memt, ((struct ixgbe_osdep *)(hw)->back)->os_memh, 0x00020);
  esdp &= ~0x00000001;
  bus_space_write_4(((struct ixgbe_osdep *)(hw)->back)->os_memt, ((struct ixgbe_osdep *)(hw)->back)->os_memh, 0x00020, esdp);
  bus_space_read_4(((struct ixgbe_osdep *)(hw)->back)->os_memt, ((struct ixgbe_osdep *)(hw)->back)->os_memh, 0x00008);
 }
 return status;
}
