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
struct sigacts {
 sig_t ps_sigact[33];
 sigset_t ps_catchmask[33];
 sigset_t ps_sigonstack;
 sigset_t ps_sigintr;
 sigset_t ps_sigreset;
 sigset_t ps_siginfo;
 sigset_t ps_sigignore;
 sigset_t ps_sigcatch;
 int ps_flags;
 int ps_refcnt;
};
enum signal_type { SPROCESS, STHREAD, SPROPAGATED };
int coredump(struct proc *p);
void execsigs(struct proc *p);
void gsignal(int pgid, int sig);
void csignal(pid_t pgid, int signum, uid_t uid, uid_t euid);
int issignal(struct proc *p);
void pgsignal(struct pgrp *pgrp, int sig, int checkctty);
void postsig(int sig);
void psignal(struct proc *p, int sig);
void ptsignal(struct proc *p, int sig, enum signal_type type);
void siginit(struct process *);
void trapsignal(struct proc *p, int sig, u_long code, int type,
     union sigval val);
void sigexit(struct proc *, int);
int sigonstack(size_t);
void setsigvec(struct proc *, int, struct sigaction *);
int killpg1(struct proc *, int, int, int);
void signal_init(void);
struct sigacts *sigactsinit(struct process *);
struct sigacts *sigactsshare(struct process *);
void sigstkinit(struct sigaltstack *);
void sigactsunshare(struct process *);
void sigactsfree(struct process *);
void sendsig(sig_t action, int sig, int returnmask, u_long code,
     int type, union sigval val);
struct mdproc {
 struct trapframe64 *md_tf;
 struct fpstate64 *md_fpstate;
 volatile int md_astpending;
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
struct mutex {
 volatile void *mtx_owner;
 int mtx_wantipl;
 int mtx_oldipl;
};
void __mtx_init(struct mutex *, int);
void __mtx_enter(struct mutex *);
int __mtx_enter_try(struct mutex *);
void __mtx_leave(struct mutex *);
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
struct pcb {
 u_int64_t pcb_sp;
 u_int64_t pcb_pc;
 caddr_t pcb_onfault;
 short pcb_pstate;
 char pcb_nsaved;
 char pcb_cwp;
 char pcb_pil;
 const char *lastcall;
 u_int64_t pcb_wcookie;
 struct rwindow64 pcb_rw[8];
 u_int64_t pcb_rwsp[8];
};
struct plimit {
 struct rlimit pl_rlimit[9];
 int p_refcnt;
};
void addupc_intr(struct proc *, u_long);
void addupc_task(struct proc *, u_long, u_int);
void tuagg_unlocked(struct process *, struct proc *);
void tuagg(struct process *, struct proc *);
struct tusage;
void calctsru(struct tusage *, struct timespec *, struct timespec *,
     struct timespec *);
void calcru(struct tusage *, struct timeval *, struct timeval *,
     struct timeval *);
struct plimit *limcopy(struct plimit *);
void limfree(struct plimit *);
void ruadd(struct rusage *, struct rusage *);
struct user {
 struct pcb u_pcb;
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
struct buf;
struct vnode;
struct bufhead { struct buf *lh_first; };
struct workhead { struct worklist *lh_first; };
struct bufq_impl;
struct bufq {
 struct { struct bufq *sle_next; } bufq_entries;
 struct mutex bufq_mtx;
 void *bufq_data;
 u_int bufq_outstanding;
 u_int bufq_hi;
 u_int bufq_low;
 int bufq_waiting;
 int bufq_stop;
 int bufq_type;
 const struct bufq_impl *bufq_impl;
};
int bufq_init(struct bufq *, int);
int bufq_switch(struct bufq *, int);
void bufq_destroy(struct bufq *);
void bufq_queue(struct bufq *, struct buf *);
struct buf *bufq_dequeue(struct bufq *);
void bufq_requeue(struct bufq *, struct buf *);
int bufq_peek(struct bufq *);
void bufq_drain(struct bufq *);
void bufq_wait(struct bufq *);
void bufq_done(struct bufq *, struct buf *);
void bufq_quiesce(void);
void bufq_restart(void);
struct bufq_fifo_head { struct buf *sqh_first; struct buf **sqh_last; };
struct bufq_fifo {
 struct { struct buf *sqe_next; } bqf_entries;
};
struct bufq_nscan_head { struct buf *sqh_first; struct buf **sqh_last; };
struct bufq_nscan {
 struct { struct buf *sqe_next; } bqf_entries;
};
union bufq_data {
 struct bufq_fifo bufq_data_fifo;
 struct bufq_nscan bufq_data_nscan;
};
extern struct bio_ops {
 void (*io_start)(struct buf *);
 void (*io_complete)(struct buf *);
 void (*io_deallocate)(struct buf *);
 void (*io_movedeps)(struct buf *, struct buf *);
 int (*io_countdeps)(struct buf *, int, int);
} bioops;
struct buf {
 struct rb_entry b_rbbufs;
 struct { struct buf *le_next; struct buf **le_prev; } b_list;
 struct { struct buf *le_next; struct buf **le_prev; } b_vnbufs;
 struct { struct buf *tqe_next; struct buf **tqe_prev; } b_freelist;
 int cache;
 struct proc *b_proc;
 volatile long b_flags;
 long b_bufsize;
 long b_bcount;
 size_t b_resid;
 int b_error;
 dev_t b_dev;
 caddr_t b_data;
 void *b_saveaddr;
 struct { struct buf *tqe_next; struct buf **tqe_prev; } b_valist;
 union bufq_data b_bufq;
 struct bufq *b_bq;
 struct uvm_object *b_pobj;
 off_t b_poffs;
 daddr_t b_lblkno;
 daddr_t b_blkno;
 void (*b_iodone)(struct buf *);
 struct vnode *b_vp;
 int b_dirtyoff;
 int b_dirtyend;
 int b_validoff;
 int b_validend;
  struct workhead b_dep;
};
struct bufqueue { struct buf *tqh_first; struct buf **tqh_last; };
struct bufcache {
 int64_t hotbufpages;
 int64_t warmbufpages;
 int64_t cachepages;
 struct bufqueue hotqueue;
 struct bufqueue coldqueue;
 struct bufqueue warmqueue;
};
struct cluster_info {
 daddr_t ci_lastr;
 daddr_t ci_lastw;
 daddr_t ci_cstart;
 daddr_t ci_lasta;
 int ci_clen;
 int ci_ralen;
 daddr_t ci_maxra;
};

extern struct proc *cleanerproc;
extern long bufpages;
extern struct pool bufpool;
extern struct bufhead bufhead;
void bawrite(struct buf *);
void bdwrite(struct buf *);
void biodone(struct buf *);
int biowait(struct buf *);
int bread(struct vnode *, daddr_t, int, struct buf **);
int breadn(struct vnode *, daddr_t, int, daddr_t *, int *, int,
    struct buf **);
void brelse(struct buf *);
void bufinit(void);
void buf_dirty(struct buf *);
void buf_undirty(struct buf *);
void buf_adjcnt(struct buf *, long);
int bwrite(struct buf *);
struct buf *getblk(struct vnode *, daddr_t, int, int, int);
struct buf *geteblk(size_t);
struct buf *incore(struct vnode *, daddr_t);
void bufcache_take(struct buf *);
void bufcache_release(struct buf *);
int buf_flip_high(struct buf *);
void buf_flip_dma(struct buf *);
struct buf *bufcache_getcleanbuf(int, int);
struct buf *bufcache_getanycleanbuf(void);
struct buf *bufcache_getdirtybuf(void);
void buf_mem_init(vsize_t);
void buf_acquire(struct buf *);
void buf_acquire_unmapped(struct buf *);
void buf_acquire_nomap(struct buf *);
void buf_map(struct buf *);
void buf_release(struct buf *);
int buf_dealloc_mem(struct buf *);
void buf_fix_mapping(struct buf *, vsize_t);
void buf_alloc_pages(struct buf *, vsize_t);
void buf_free_pages(struct buf *);
void minphys(struct buf *bp);
int physio(void (*strategy)(struct buf *), dev_t dev, int flags,
     void (*minphys)(struct buf *), struct uio *uio);
void brelvp(struct buf *);
void reassignbuf(struct buf *);
void bgetvp(struct vnode *, struct buf *);
void buf_replacevnode(struct buf *, struct vnode *);
void buf_daemon(struct proc *);
void buf_replacevnode(struct buf *, struct vnode *);
int bread_cluster(struct vnode *, daddr_t, int, struct buf **);
static __inline void
buf_start(struct buf *bp)
{
 if (bioops.io_start)
  (*bioops.io_start)(bp);
}
static __inline void
buf_complete(struct buf *bp)
{
 if (bioops.io_complete)
  (*bioops.io_complete)(bp);
}
static __inline void
buf_deallocate(struct buf *bp)
{
 if (bioops.io_deallocate)
  (*bioops.io_deallocate)(bp);
}
static __inline void
buf_movedeps(struct buf *bp, struct buf *bp2)
{
 if (bioops.io_movedeps)
  (*bioops.io_movedeps)(bp, bp2);
}
static __inline int
buf_countdeps(struct buf *bp, int i, int islocked)
{
 if (bioops.io_countdeps)
  return ((*bioops.io_countdeps)(bp, i, islocked));
 else
  return (0);
}
void cluster_write(struct buf *, struct cluster_info *, u_quad_t);

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

__attribute__((__noreturn__)) void reboot(int);
__attribute__((__noreturn__)) void boot(int);

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
struct buf;
struct proc;
struct tty;
struct uio;
struct vnode;
struct knote;
struct bdevsw {
 int (*d_open)(dev_t dev, int oflags, int devtype,
         struct proc *p);
 int (*d_close)(dev_t dev, int fflag, int devtype,
         struct proc *p);
 void (*d_strategy)(struct buf *bp);
 int (*d_ioctl)(dev_t dev, u_long cmd, caddr_t data,
         int fflag, struct proc *p);
 int (*d_dump)(dev_t dev, daddr_t blkno, caddr_t va,
        size_t size);
 daddr_t (*d_psize)(dev_t dev);
 u_int d_type;
};
extern struct bdevsw bdevsw[];
struct cdevsw {
 int (*d_open)(dev_t dev, int oflags, int devtype,
         struct proc *p);
 int (*d_close)(dev_t dev, int fflag, int devtype,
         struct proc *);
 int (*d_read)(dev_t dev, struct uio *uio, int ioflag);
 int (*d_write)(dev_t dev, struct uio *uio, int ioflag);
 int (*d_ioctl)(dev_t dev, u_long cmd, caddr_t data,
         int fflag, struct proc *p);
 int (*d_stop)(struct tty *tp, int rw);
 struct tty *
  (*d_tty)(dev_t dev);
 int (*d_poll)(dev_t dev, int events, struct proc *p);
 paddr_t (*d_mmap)(dev_t, off_t, int);
 u_int d_type;
 u_int d_flags;
 int (*d_kqfilter)(dev_t dev, struct knote *kn);
};
extern struct cdevsw cdevsw[];
struct linesw {
 int (*l_open)(dev_t dev, struct tty *tp, struct proc *p);
 int (*l_close)(struct tty *tp, int flags, struct proc *p);
 int (*l_read)(struct tty *tp, struct uio *uio,
         int flag);
 int (*l_write)(struct tty *tp, struct uio *uio,
         int flag);
 int (*l_ioctl)(struct tty *tp, u_long cmd, caddr_t data,
         int flag, struct proc *p);
 int (*l_rint)(int c, struct tty *tp);
 int (*l_start)(struct tty *tp);
 int (*l_modem)(struct tty *tp, int flag);
};
extern struct linesw linesw[];
struct swdevt {
 dev_t sw_dev;
 int sw_flags;
};
extern struct swdevt swdevt[];
extern int chrtoblktbl[];
extern int nchrtoblktbl;
struct bdevsw *bdevsw_lookup(dev_t);
struct cdevsw *cdevsw_lookup(dev_t);
dev_t chrtoblk(dev_t);
dev_t blktochr(dev_t);
int iskmemdev(dev_t);
int iszerodev(dev_t);
dev_t getnulldev(void);
int filedescopen(dev_t, int, int, struct proc *); int filedescclose(dev_t, int, int, struct proc *); int filedescread(dev_t, struct uio *, int); int filedescwrite(dev_t, struct uio *, int); int filedescioctl(dev_t, u_long, caddr_t, int, struct proc *); int filedescstop(struct tty *, int); struct tty *filedesctty(dev_t); int filedescpoll(dev_t, int, struct proc *); paddr_t filedescmmap(dev_t, off_t, int); int filedesckqfilter(dev_t, struct knote *);
int logopen(dev_t, int, int, struct proc *); int logclose(dev_t, int, int, struct proc *); int logread(dev_t, struct uio *, int); int logwrite(dev_t, struct uio *, int); int logioctl(dev_t, u_long, caddr_t, int, struct proc *); int logstop(struct tty *, int); struct tty *logtty(dev_t); int logpoll(dev_t, int, struct proc *); paddr_t logmmap(dev_t, off_t, int); int logkqfilter(dev_t, struct knote *);
int ptsopen(dev_t, int, int, struct proc *); int ptsclose(dev_t, int, int, struct proc *); int ptsread(dev_t, struct uio *, int); int ptswrite(dev_t, struct uio *, int); int ptyioctl(dev_t, u_long, caddr_t, int, struct proc *); int ptsstop(struct tty *, int); struct tty *ptytty(dev_t); int ptspoll(dev_t, int, struct proc *); paddr_t ptsmmap(dev_t, off_t, int); int ptskqfilter(dev_t, struct knote *);
int ptcopen(dev_t, int, int, struct proc *); int ptcclose(dev_t, int, int, struct proc *); int ptcread(dev_t, struct uio *, int); int ptcwrite(dev_t, struct uio *, int); int ptyioctl(dev_t, u_long, caddr_t, int, struct proc *); int ptcstop(struct tty *, int); struct tty *ptytty(dev_t); int ptcpoll(dev_t, int, struct proc *); paddr_t ptcmmap(dev_t, off_t, int); int ptckqfilter(dev_t, struct knote *);
int ptmopen(dev_t, int, int, struct proc *); int ptmclose(dev_t, int, int, struct proc *); int ptmread(dev_t, struct uio *, int); int ptmwrite(dev_t, struct uio *, int); int ptmioctl(dev_t, u_long, caddr_t, int, struct proc *); int ptmstop(struct tty *, int); struct tty *ptmtty(dev_t); int ptmpoll(dev_t, int, struct proc *); paddr_t ptmmmap(dev_t, off_t, int); int ptmkqfilter(dev_t, struct knote *);
int cttyopen(dev_t, int, int, struct proc *); int cttyclose(dev_t, int, int, struct proc *); int cttyread(dev_t, struct uio *, int); int cttywrite(dev_t, struct uio *, int); int cttyioctl(dev_t, u_long, caddr_t, int, struct proc *); int cttystop(struct tty *, int); struct tty *cttytty(dev_t); int cttypoll(dev_t, int, struct proc *); paddr_t cttymmap(dev_t, off_t, int); int cttykqfilter(dev_t, struct knote *);
int audioopen(dev_t, int, int, struct proc *); int audioclose(dev_t, int, int, struct proc *); int audioread(dev_t, struct uio *, int); int audiowrite(dev_t, struct uio *, int); int audioioctl(dev_t, u_long, caddr_t, int, struct proc *); int audiostop(struct tty *, int); struct tty *audiotty(dev_t); int audiopoll(dev_t, int, struct proc *); paddr_t audiommap(dev_t, off_t, int); int audiokqfilter(dev_t, struct knote *);
int drmopen(dev_t, int, int, struct proc *); int drmclose(dev_t, int, int, struct proc *); int drmread(dev_t, struct uio *, int); int drmwrite(dev_t, struct uio *, int); int drmioctl(dev_t, u_long, caddr_t, int, struct proc *); int drmstop(struct tty *, int); struct tty *drmtty(dev_t); int drmpoll(dev_t, int, struct proc *); paddr_t drmmmap(dev_t, off_t, int); int drmkqfilter(dev_t, struct knote *);
int midiopen(dev_t, int, int, struct proc *); int midiclose(dev_t, int, int, struct proc *); int midiread(dev_t, struct uio *, int); int midiwrite(dev_t, struct uio *, int); int midiioctl(dev_t, u_long, caddr_t, int, struct proc *); int midistop(struct tty *, int); struct tty *miditty(dev_t); int midipoll(dev_t, int, struct proc *); paddr_t midimmap(dev_t, off_t, int); int midikqfilter(dev_t, struct knote *);
int radioopen(dev_t, int, int, struct proc *); int radioclose(dev_t, int, int, struct proc *); int radioread(dev_t, struct uio *, int); int radiowrite(dev_t, struct uio *, int); int radioioctl(dev_t, u_long, caddr_t, int, struct proc *); int radiostop(struct tty *, int); struct tty *radiotty(dev_t); int radiopoll(dev_t, int, struct proc *); paddr_t radiommap(dev_t, off_t, int); int radiokqfilter(dev_t, struct knote *);
int videoopen(dev_t, int, int, struct proc *); int videoclose(dev_t, int, int, struct proc *); int videoread(dev_t, struct uio *, int); int videowrite(dev_t, struct uio *, int); int videoioctl(dev_t, u_long, caddr_t, int, struct proc *); int videostop(struct tty *, int); struct tty *videotty(dev_t); int videopoll(dev_t, int, struct proc *); paddr_t videommap(dev_t, off_t, int); int videokqfilter(dev_t, struct knote *);
int cnopen(dev_t, int, int, struct proc *); int cnclose(dev_t, int, int, struct proc *); int cnread(dev_t, struct uio *, int); int cnwrite(dev_t, struct uio *, int); int cnioctl(dev_t, u_long, caddr_t, int, struct proc *); int cnstop(struct tty *, int); struct tty *cntty(dev_t); int cnpoll(dev_t, int, struct proc *); paddr_t cnmmap(dev_t, off_t, int); int cnkqfilter(dev_t, struct knote *);
int swopen(dev_t, int, int, struct proc *); int swclose(dev_t, int, int, struct proc *); void swstrategy(struct buf *); int swioctl(dev_t, u_long, caddr_t, int, struct proc *); int swdump(dev_t, daddr_t, caddr_t, size_t); daddr_t swsize(dev_t);
int vndopen(dev_t, int, int, struct proc *); int vndclose(dev_t, int, int, struct proc *); void vndstrategy(struct buf *); int vndioctl(dev_t, u_long, caddr_t, int, struct proc *); int vnddump(dev_t, daddr_t, caddr_t, size_t); daddr_t vndsize(dev_t);
int vndopen(dev_t, int, int, struct proc *); int vndclose(dev_t, int, int, struct proc *); int vndread(dev_t, struct uio *, int); int vndwrite(dev_t, struct uio *, int); int vndioctl(dev_t, u_long, caddr_t, int, struct proc *); int vndstop(struct tty *, int); struct tty *vndtty(dev_t); int vndpoll(dev_t, int, struct proc *); paddr_t vndmmap(dev_t, off_t, int); int vndkqfilter(dev_t, struct knote *);
int chopen(dev_t, int, int, struct proc *); int chclose(dev_t, int, int, struct proc *); int chread(dev_t, struct uio *, int); int chwrite(dev_t, struct uio *, int); int chioctl(dev_t, u_long, caddr_t, int, struct proc *); int chstop(struct tty *, int); struct tty *chtty(dev_t); int chpoll(dev_t, int, struct proc *); paddr_t chmmap(dev_t, off_t, int); int chkqfilter(dev_t, struct knote *);
int sdopen(dev_t, int, int, struct proc *); int sdclose(dev_t, int, int, struct proc *); void sdstrategy(struct buf *); int sdioctl(dev_t, u_long, caddr_t, int, struct proc *); int sddump(dev_t, daddr_t, caddr_t, size_t); daddr_t sdsize(dev_t);
int sdopen(dev_t, int, int, struct proc *); int sdclose(dev_t, int, int, struct proc *); int sdread(dev_t, struct uio *, int); int sdwrite(dev_t, struct uio *, int); int sdioctl(dev_t, u_long, caddr_t, int, struct proc *); int sdstop(struct tty *, int); struct tty *sdtty(dev_t); int sdpoll(dev_t, int, struct proc *); paddr_t sdmmap(dev_t, off_t, int); int sdkqfilter(dev_t, struct knote *);
int sesopen(dev_t, int, int, struct proc *); int sesclose(dev_t, int, int, struct proc *); int sesread(dev_t, struct uio *, int); int seswrite(dev_t, struct uio *, int); int sesioctl(dev_t, u_long, caddr_t, int, struct proc *); int sesstop(struct tty *, int); struct tty *sestty(dev_t); int sespoll(dev_t, int, struct proc *); paddr_t sesmmap(dev_t, off_t, int); int seskqfilter(dev_t, struct knote *);
int stopen(dev_t, int, int, struct proc *); int stclose(dev_t, int, int, struct proc *); int stread(dev_t, struct uio *, int); int stwrite(dev_t, struct uio *, int); int stioctl(dev_t, u_long, caddr_t, int, struct proc *); int ststop(struct tty *, int); struct tty *sttty(dev_t); int stpoll(dev_t, int, struct proc *); paddr_t stmmap(dev_t, off_t, int); int stkqfilter(dev_t, struct knote *);
int cdopen(dev_t, int, int, struct proc *); int cdclose(dev_t, int, int, struct proc *); void cdstrategy(struct buf *); int cdioctl(dev_t, u_long, caddr_t, int, struct proc *); int cddump(dev_t, daddr_t, caddr_t, size_t); daddr_t cdsize(dev_t);
int cdopen(dev_t, int, int, struct proc *); int cdclose(dev_t, int, int, struct proc *); int cdread(dev_t, struct uio *, int); int cdwrite(dev_t, struct uio *, int); int cdioctl(dev_t, u_long, caddr_t, int, struct proc *); int cdstop(struct tty *, int); struct tty *cdtty(dev_t); int cdpoll(dev_t, int, struct proc *); paddr_t cdmmap(dev_t, off_t, int); int cdkqfilter(dev_t, struct knote *);
int rdopen(dev_t, int, int, struct proc *); int rdclose(dev_t, int, int, struct proc *); void rdstrategy(struct buf *); int rdioctl(dev_t, u_long, caddr_t, int, struct proc *); int rddump(dev_t, daddr_t, caddr_t, size_t); daddr_t rdsize(dev_t);
int rdopen(dev_t, int, int, struct proc *); int rdclose(dev_t, int, int, struct proc *); int rdread(dev_t, struct uio *, int); int rdwrite(dev_t, struct uio *, int); int rdioctl(dev_t, u_long, caddr_t, int, struct proc *); int rdstop(struct tty *, int); struct tty *rdtty(dev_t); int rdpoll(dev_t, int, struct proc *); paddr_t rdmmap(dev_t, off_t, int); int rdkqfilter(dev_t, struct knote *);
int ukopen(dev_t, int, int, struct proc *); int ukclose(dev_t, int, int, struct proc *); void ukstrategy(struct buf *); int ukioctl(dev_t, u_long, caddr_t, int, struct proc *); int ukdump(dev_t, daddr_t, caddr_t, size_t); daddr_t uksize(dev_t);
int ukopen(dev_t, int, int, struct proc *); int ukclose(dev_t, int, int, struct proc *); int ukread(dev_t, struct uio *, int); int ukwrite(dev_t, struct uio *, int); int ukioctl(dev_t, u_long, caddr_t, int, struct proc *); int ukstop(struct tty *, int); struct tty *uktty(dev_t); int ukpoll(dev_t, int, struct proc *); paddr_t ukmmap(dev_t, off_t, int); int ukkqfilter(dev_t, struct knote *);
int diskmapopen(dev_t, int, int, struct proc *); int diskmapclose(dev_t, int, int, struct proc *); int diskmapread(dev_t, struct uio *, int); int diskmapwrite(dev_t, struct uio *, int); int diskmapioctl(dev_t, u_long, caddr_t, int, struct proc *); int diskmapstop(struct tty *, int); struct tty *diskmaptty(dev_t); int diskmappoll(dev_t, int, struct proc *); paddr_t diskmapmmap(dev_t, off_t, int); int diskmapkqfilter(dev_t, struct knote *);
int bpfopen(dev_t, int, int, struct proc *); int bpfclose(dev_t, int, int, struct proc *); int bpfread(dev_t, struct uio *, int); int bpfwrite(dev_t, struct uio *, int); int bpfioctl(dev_t, u_long, caddr_t, int, struct proc *); int bpfstop(struct tty *, int); struct tty *bpftty(dev_t); int bpfpoll(dev_t, int, struct proc *); paddr_t bpfmmap(dev_t, off_t, int); int bpfkqfilter(dev_t, struct knote *);
int pfopen(dev_t, int, int, struct proc *); int pfclose(dev_t, int, int, struct proc *); int pfread(dev_t, struct uio *, int); int pfwrite(dev_t, struct uio *, int); int pfioctl(dev_t, u_long, caddr_t, int, struct proc *); int pfstop(struct tty *, int); struct tty *pftty(dev_t); int pfpoll(dev_t, int, struct proc *); paddr_t pfmmap(dev_t, off_t, int); int pfkqfilter(dev_t, struct knote *);
int tunopen(dev_t, int, int, struct proc *); int tunclose(dev_t, int, int, struct proc *); int tunread(dev_t, struct uio *, int); int tunwrite(dev_t, struct uio *, int); int tunioctl(dev_t, u_long, caddr_t, int, struct proc *); int tunstop(struct tty *, int); struct tty *tuntty(dev_t); int tunpoll(dev_t, int, struct proc *); paddr_t tunmmap(dev_t, off_t, int); int tunkqfilter(dev_t, struct knote *);
int tapopen(dev_t, int, int, struct proc *); int tapclose(dev_t, int, int, struct proc *); int tapread(dev_t, struct uio *, int); int tapwrite(dev_t, struct uio *, int); int tapioctl(dev_t, u_long, caddr_t, int, struct proc *); int tapstop(struct tty *, int); struct tty *taptty(dev_t); int tappoll(dev_t, int, struct proc *); paddr_t tapmmap(dev_t, off_t, int); int tapkqfilter(dev_t, struct knote *);
int switchopen(dev_t, int, int, struct proc *); int switchclose(dev_t, int, int, struct proc *); int switchread(dev_t, struct uio *, int); int switchwrite(dev_t, struct uio *, int); int switchioctl(dev_t, u_long, caddr_t, int, struct proc *); int switchstop(struct tty *, int); struct tty *switchtty(dev_t); int switchpoll(dev_t, int, struct proc *); paddr_t switchmmap(dev_t, off_t, int); int switchkqfilter(dev_t, struct knote *);
int pppxopen(dev_t, int, int, struct proc *); int pppxclose(dev_t, int, int, struct proc *); int pppxread(dev_t, struct uio *, int); int pppxwrite(dev_t, struct uio *, int); int pppxioctl(dev_t, u_long, caddr_t, int, struct proc *); int pppxstop(struct tty *, int); struct tty *pppxtty(dev_t); int pppxpoll(dev_t, int, struct proc *); paddr_t pppxmmap(dev_t, off_t, int); int pppxkqfilter(dev_t, struct knote *);
int randomopen(dev_t, int, int, struct proc *); int randomclose(dev_t, int, int, struct proc *); int randomread(dev_t, struct uio *, int); int randomwrite(dev_t, struct uio *, int); int randomioctl(dev_t, u_long, caddr_t, int, struct proc *); int randomstop(struct tty *, int); struct tty *randomtty(dev_t); int randompoll(dev_t, int, struct proc *); paddr_t randommmap(dev_t, off_t, int); int randomkqfilter(dev_t, struct knote *);
int wsdisplayopen(dev_t, int, int, struct proc *); int wsdisplayclose(dev_t, int, int, struct proc *); int wsdisplayread(dev_t, struct uio *, int); int wsdisplaywrite(dev_t, struct uio *, int); int wsdisplayioctl(dev_t, u_long, caddr_t, int, struct proc *); int wsdisplaystop(struct tty *, int); struct tty *wsdisplaytty(dev_t); int wsdisplaypoll(dev_t, int, struct proc *); paddr_t wsdisplaymmap(dev_t, off_t, int); int wsdisplaykqfilter(dev_t, struct knote *);
int wskbdopen(dev_t, int, int, struct proc *); int wskbdclose(dev_t, int, int, struct proc *); int wskbdread(dev_t, struct uio *, int); int wskbdwrite(dev_t, struct uio *, int); int wskbdioctl(dev_t, u_long, caddr_t, int, struct proc *); int wskbdstop(struct tty *, int); struct tty *wskbdtty(dev_t); int wskbdpoll(dev_t, int, struct proc *); paddr_t wskbdmmap(dev_t, off_t, int); int wskbdkqfilter(dev_t, struct knote *);
int wsmouseopen(dev_t, int, int, struct proc *); int wsmouseclose(dev_t, int, int, struct proc *); int wsmouseread(dev_t, struct uio *, int); int wsmousewrite(dev_t, struct uio *, int); int wsmouseioctl(dev_t, u_long, caddr_t, int, struct proc *); int wsmousestop(struct tty *, int); struct tty *wsmousetty(dev_t); int wsmousepoll(dev_t, int, struct proc *); paddr_t wsmousemmap(dev_t, off_t, int); int wsmousekqfilter(dev_t, struct knote *);
int wsmuxopen(dev_t, int, int, struct proc *); int wsmuxclose(dev_t, int, int, struct proc *); int wsmuxread(dev_t, struct uio *, int); int wsmuxwrite(dev_t, struct uio *, int); int wsmuxioctl(dev_t, u_long, caddr_t, int, struct proc *); int wsmuxstop(struct tty *, int); struct tty *wsmuxtty(dev_t); int wsmuxpoll(dev_t, int, struct proc *); paddr_t wsmuxmmap(dev_t, off_t, int); int wsmuxkqfilter(dev_t, struct knote *);
int ksymsopen(dev_t, int, int, struct proc *); int ksymsclose(dev_t, int, int, struct proc *); int ksymsread(dev_t, struct uio *, int); int ksymswrite(dev_t, struct uio *, int); int ksymsioctl(dev_t, u_long, caddr_t, int, struct proc *); int ksymsstop(struct tty *, int); struct tty *ksymstty(dev_t); int ksymspoll(dev_t, int, struct proc *); paddr_t ksymsmmap(dev_t, off_t, int); int ksymskqfilter(dev_t, struct knote *);
int bioopen(dev_t, int, int, struct proc *); int bioclose(dev_t, int, int, struct proc *); int bioread(dev_t, struct uio *, int); int biowrite(dev_t, struct uio *, int); int bioioctl(dev_t, u_long, caddr_t, int, struct proc *); int biostop(struct tty *, int); struct tty *biotty(dev_t); int biopoll(dev_t, int, struct proc *); paddr_t biommap(dev_t, off_t, int); int biokqfilter(dev_t, struct knote *);
int vscsiopen(dev_t, int, int, struct proc *); int vscsiclose(dev_t, int, int, struct proc *); int vscsiread(dev_t, struct uio *, int); int vscsiwrite(dev_t, struct uio *, int); int vscsiioctl(dev_t, u_long, caddr_t, int, struct proc *); int vscsistop(struct tty *, int); struct tty *vscsitty(dev_t); int vscsipoll(dev_t, int, struct proc *); paddr_t vscsimmap(dev_t, off_t, int); int vscsikqfilter(dev_t, struct knote *);
int gpropen(dev_t, int, int, struct proc *); int gprclose(dev_t, int, int, struct proc *); int gprread(dev_t, struct uio *, int); int gprwrite(dev_t, struct uio *, int); int gprioctl(dev_t, u_long, caddr_t, int, struct proc *); int gprstop(struct tty *, int); struct tty *gprtty(dev_t); int gprpoll(dev_t, int, struct proc *); paddr_t gprmmap(dev_t, off_t, int); int gprkqfilter(dev_t, struct knote *);
int bktropen(dev_t, int, int, struct proc *); int bktrclose(dev_t, int, int, struct proc *); int bktrread(dev_t, struct uio *, int); int bktrwrite(dev_t, struct uio *, int); int bktrioctl(dev_t, u_long, caddr_t, int, struct proc *); int bktrstop(struct tty *, int); struct tty *bktrtty(dev_t); int bktrpoll(dev_t, int, struct proc *); paddr_t bktrmmap(dev_t, off_t, int); int bktrkqfilter(dev_t, struct knote *);
int usbopen(dev_t, int, int, struct proc *); int usbclose(dev_t, int, int, struct proc *); int usbread(dev_t, struct uio *, int); int usbwrite(dev_t, struct uio *, int); int usbioctl(dev_t, u_long, caddr_t, int, struct proc *); int usbstop(struct tty *, int); struct tty *usbtty(dev_t); int usbpoll(dev_t, int, struct proc *); paddr_t usbmmap(dev_t, off_t, int); int usbkqfilter(dev_t, struct knote *);
int ugenopen(dev_t, int, int, struct proc *); int ugenclose(dev_t, int, int, struct proc *); int ugenread(dev_t, struct uio *, int); int ugenwrite(dev_t, struct uio *, int); int ugenioctl(dev_t, u_long, caddr_t, int, struct proc *); int ugenstop(struct tty *, int); struct tty *ugentty(dev_t); int ugenpoll(dev_t, int, struct proc *); paddr_t ugenmmap(dev_t, off_t, int); int ugenkqfilter(dev_t, struct knote *);
int uhidopen(dev_t, int, int, struct proc *); int uhidclose(dev_t, int, int, struct proc *); int uhidread(dev_t, struct uio *, int); int uhidwrite(dev_t, struct uio *, int); int uhidioctl(dev_t, u_long, caddr_t, int, struct proc *); int uhidstop(struct tty *, int); struct tty *uhidtty(dev_t); int uhidpoll(dev_t, int, struct proc *); paddr_t uhidmmap(dev_t, off_t, int); int uhidkqfilter(dev_t, struct knote *);
int ucomopen(dev_t, int, int, struct proc *); int ucomclose(dev_t, int, int, struct proc *); int ucomread(dev_t, struct uio *, int); int ucomwrite(dev_t, struct uio *, int); int ucomioctl(dev_t, u_long, caddr_t, int, struct proc *); int ucomstop(struct tty *, int); struct tty *ucomtty(dev_t); int ucompoll(dev_t, int, struct proc *); paddr_t ucommmap(dev_t, off_t, int); int ucomkqfilter(dev_t, struct knote *);
int ulptopen(dev_t, int, int, struct proc *); int ulptclose(dev_t, int, int, struct proc *); int ulptread(dev_t, struct uio *, int); int ulptwrite(dev_t, struct uio *, int); int ulptioctl(dev_t, u_long, caddr_t, int, struct proc *); int ulptstop(struct tty *, int); struct tty *ulpttty(dev_t); int ulptpoll(dev_t, int, struct proc *); paddr_t ulptmmap(dev_t, off_t, int); int ulptkqfilter(dev_t, struct knote *);
int urioopen(dev_t, int, int, struct proc *); int urioclose(dev_t, int, int, struct proc *); int urioread(dev_t, struct uio *, int); int uriowrite(dev_t, struct uio *, int); int urioioctl(dev_t, u_long, caddr_t, int, struct proc *); int uriostop(struct tty *, int); struct tty *uriotty(dev_t); int uriopoll(dev_t, int, struct proc *); paddr_t uriommap(dev_t, off_t, int); int uriokqfilter(dev_t, struct knote *);
int hotplugopen(dev_t, int, int, struct proc *); int hotplugclose(dev_t, int, int, struct proc *); int hotplugread(dev_t, struct uio *, int); int hotplugwrite(dev_t, struct uio *, int); int hotplugioctl(dev_t, u_long, caddr_t, int, struct proc *); int hotplugstop(struct tty *, int); struct tty *hotplugtty(dev_t); int hotplugpoll(dev_t, int, struct proc *); paddr_t hotplugmmap(dev_t, off_t, int); int hotplugkqfilter(dev_t, struct knote *);
int gpioopen(dev_t, int, int, struct proc *); int gpioclose(dev_t, int, int, struct proc *); int gpioread(dev_t, struct uio *, int); int gpiowrite(dev_t, struct uio *, int); int gpioioctl(dev_t, u_long, caddr_t, int, struct proc *); int gpiostop(struct tty *, int); struct tty *gpiotty(dev_t); int gpiopoll(dev_t, int, struct proc *); paddr_t gpiommap(dev_t, off_t, int); int gpiokqfilter(dev_t, struct knote *);
int amdmsropen(dev_t, int, int, struct proc *); int amdmsrclose(dev_t, int, int, struct proc *); int amdmsrread(dev_t, struct uio *, int); int amdmsrwrite(dev_t, struct uio *, int); int amdmsrioctl(dev_t, u_long, caddr_t, int, struct proc *); int amdmsrstop(struct tty *, int); struct tty *amdmsrtty(dev_t); int amdmsrpoll(dev_t, int, struct proc *); paddr_t amdmsrmmap(dev_t, off_t, int); int amdmsrkqfilter(dev_t, struct knote *);
int fuseopen(dev_t, int, int, struct proc *); int fuseclose(dev_t, int, int, struct proc *); int fuseread(dev_t, struct uio *, int); int fusewrite(dev_t, struct uio *, int); int fuseioctl(dev_t, u_long, caddr_t, int, struct proc *); int fusestop(struct tty *, int); struct tty *fusetty(dev_t); int fusepoll(dev_t, int, struct proc *); paddr_t fusemmap(dev_t, off_t, int); int fusekqfilter(dev_t, struct knote *);
int pvbusopen(dev_t, int, int, struct proc *); int pvbusclose(dev_t, int, int, struct proc *); int pvbusread(dev_t, struct uio *, int); int pvbuswrite(dev_t, struct uio *, int); int pvbusioctl(dev_t, u_long, caddr_t, int, struct proc *); int pvbusstop(struct tty *, int); struct tty *pvbustty(dev_t); int pvbuspoll(dev_t, int, struct proc *); paddr_t pvbusmmap(dev_t, off_t, int); int pvbuskqfilter(dev_t, struct knote *);
int ipmiopen(dev_t, int, int, struct proc *); int ipmiclose(dev_t, int, int, struct proc *); int ipmiread(dev_t, struct uio *, int); int ipmiwrite(dev_t, struct uio *, int); int ipmiioctl(dev_t, u_long, caddr_t, int, struct proc *); int ipmistop(struct tty *, int); struct tty *ipmitty(dev_t); int ipmipoll(dev_t, int, struct proc *); paddr_t ipmimmap(dev_t, off_t, int); int ipmikqfilter(dev_t, struct knote *);
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
struct msgbuf {
 long msg_magic;
 long msg_bufx;
 long msg_bufr;
 long msg_bufs;
 long msg_bufl;
 long msg_bufd;
 char msg_bufc[1];
};
extern struct msgbuf *msgbufp;
extern struct msgbuf *consbufp;
void initmsgbuf(caddr_t buf, size_t bufsize);
void initconsbuf(void);
void msgbuf_putchar(struct msgbuf *, const char c);
struct sys_exit_args {
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } rval;
};
struct sys_read_args {
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } fd;
 union { register_t pad; struct { void * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (void *)) ? 0 : sizeof (register_t) - sizeof (void *)]; void * datum; } be; } buf;
 union { register_t pad; struct { size_t datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (size_t)) ? 0 : sizeof (register_t) - sizeof (size_t)]; size_t datum; } be; } nbyte;
};
struct sys_write_args {
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } fd;
 union { register_t pad; struct { const void * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (const void *)) ? 0 : sizeof (register_t) - sizeof (const void *)]; const void * datum; } be; } buf;
 union { register_t pad; struct { size_t datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (size_t)) ? 0 : sizeof (register_t) - sizeof (size_t)]; size_t datum; } be; } nbyte;
};
struct sys_open_args {
 union { register_t pad; struct { const char * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (const char *)) ? 0 : sizeof (register_t) - sizeof (const char *)]; const char * datum; } be; } path;
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } flags;
 union { register_t pad; struct { mode_t datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (mode_t)) ? 0 : sizeof (register_t) - sizeof (mode_t)]; mode_t datum; } be; } mode;
};
struct sys_close_args {
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } fd;
};
struct sys_getentropy_args {
 union { register_t pad; struct { void * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (void *)) ? 0 : sizeof (register_t) - sizeof (void *)]; void * datum; } be; } buf;
 union { register_t pad; struct { size_t datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (size_t)) ? 0 : sizeof (register_t) - sizeof (size_t)]; size_t datum; } be; } nbyte;
};
struct sys___tfork_args {
 union { register_t pad; struct { const struct __tfork * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (const struct __tfork *)) ? 0 : sizeof (register_t) - sizeof (const struct __tfork *)]; const struct __tfork * datum; } be; } param;
 union { register_t pad; struct { size_t datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (size_t)) ? 0 : sizeof (register_t) - sizeof (size_t)]; size_t datum; } be; } psize;
};
struct sys_link_args {
 union { register_t pad; struct { const char * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (const char *)) ? 0 : sizeof (register_t) - sizeof (const char *)]; const char * datum; } be; } path;
 union { register_t pad; struct { const char * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (const char *)) ? 0 : sizeof (register_t) - sizeof (const char *)]; const char * datum; } be; } link;
};
struct sys_unlink_args {
 union { register_t pad; struct { const char * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (const char *)) ? 0 : sizeof (register_t) - sizeof (const char *)]; const char * datum; } be; } path;
};
struct sys_wait4_args {
 union { register_t pad; struct { pid_t datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (pid_t)) ? 0 : sizeof (register_t) - sizeof (pid_t)]; pid_t datum; } be; } pid;
 union { register_t pad; struct { int * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int *)) ? 0 : sizeof (register_t) - sizeof (int *)]; int * datum; } be; } status;
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } options;
 union { register_t pad; struct { struct rusage * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (struct rusage *)) ? 0 : sizeof (register_t) - sizeof (struct rusage *)]; struct rusage * datum; } be; } rusage;
};
struct sys_chdir_args {
 union { register_t pad; struct { const char * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (const char *)) ? 0 : sizeof (register_t) - sizeof (const char *)]; const char * datum; } be; } path;
};
struct sys_fchdir_args {
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } fd;
};
struct sys_mknod_args {
 union { register_t pad; struct { const char * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (const char *)) ? 0 : sizeof (register_t) - sizeof (const char *)]; const char * datum; } be; } path;
 union { register_t pad; struct { mode_t datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (mode_t)) ? 0 : sizeof (register_t) - sizeof (mode_t)]; mode_t datum; } be; } mode;
 union { register_t pad; struct { dev_t datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (dev_t)) ? 0 : sizeof (register_t) - sizeof (dev_t)]; dev_t datum; } be; } dev;
};
struct sys_chmod_args {
 union { register_t pad; struct { const char * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (const char *)) ? 0 : sizeof (register_t) - sizeof (const char *)]; const char * datum; } be; } path;
 union { register_t pad; struct { mode_t datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (mode_t)) ? 0 : sizeof (register_t) - sizeof (mode_t)]; mode_t datum; } be; } mode;
};
struct sys_chown_args {
 union { register_t pad; struct { const char * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (const char *)) ? 0 : sizeof (register_t) - sizeof (const char *)]; const char * datum; } be; } path;
 union { register_t pad; struct { uid_t datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (uid_t)) ? 0 : sizeof (register_t) - sizeof (uid_t)]; uid_t datum; } be; } uid;
 union { register_t pad; struct { gid_t datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (gid_t)) ? 0 : sizeof (register_t) - sizeof (gid_t)]; gid_t datum; } be; } gid;
};
struct sys_obreak_args {
 union { register_t pad; struct { char * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (char *)) ? 0 : sizeof (register_t) - sizeof (char *)]; char * datum; } be; } nsize;
};
struct sys_getrusage_args {
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } who;
 union { register_t pad; struct { struct rusage * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (struct rusage *)) ? 0 : sizeof (register_t) - sizeof (struct rusage *)]; struct rusage * datum; } be; } rusage;
};
struct sys_mount_args {
 union { register_t pad; struct { const char * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (const char *)) ? 0 : sizeof (register_t) - sizeof (const char *)]; const char * datum; } be; } type;
 union { register_t pad; struct { const char * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (const char *)) ? 0 : sizeof (register_t) - sizeof (const char *)]; const char * datum; } be; } path;
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } flags;
 union { register_t pad; struct { void * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (void *)) ? 0 : sizeof (register_t) - sizeof (void *)]; void * datum; } be; } data;
};
struct sys_unmount_args {
 union { register_t pad; struct { const char * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (const char *)) ? 0 : sizeof (register_t) - sizeof (const char *)]; const char * datum; } be; } path;
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } flags;
};
struct sys_setuid_args {
 union { register_t pad; struct { uid_t datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (uid_t)) ? 0 : sizeof (register_t) - sizeof (uid_t)]; uid_t datum; } be; } uid;
};
struct sys_ptrace_args {
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } req;
 union { register_t pad; struct { pid_t datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (pid_t)) ? 0 : sizeof (register_t) - sizeof (pid_t)]; pid_t datum; } be; } pid;
 union { register_t pad; struct { caddr_t datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (caddr_t)) ? 0 : sizeof (register_t) - sizeof (caddr_t)]; caddr_t datum; } be; } addr;
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } data;
};
struct sys_recvmsg_args {
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } s;
 union { register_t pad; struct { struct msghdr * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (struct msghdr *)) ? 0 : sizeof (register_t) - sizeof (struct msghdr *)]; struct msghdr * datum; } be; } msg;
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } flags;
};
struct sys_sendmsg_args {
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } s;
 union { register_t pad; struct { const struct msghdr * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (const struct msghdr *)) ? 0 : sizeof (register_t) - sizeof (const struct msghdr *)]; const struct msghdr * datum; } be; } msg;
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } flags;
};
struct sys_recvfrom_args {
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } s;
 union { register_t pad; struct { void * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (void *)) ? 0 : sizeof (register_t) - sizeof (void *)]; void * datum; } be; } buf;
 union { register_t pad; struct { size_t datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (size_t)) ? 0 : sizeof (register_t) - sizeof (size_t)]; size_t datum; } be; } len;
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } flags;
 union { register_t pad; struct { struct sockaddr * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (struct sockaddr *)) ? 0 : sizeof (register_t) - sizeof (struct sockaddr *)]; struct sockaddr * datum; } be; } from;
 union { register_t pad; struct { socklen_t * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (socklen_t *)) ? 0 : sizeof (register_t) - sizeof (socklen_t *)]; socklen_t * datum; } be; } fromlenaddr;
};
struct sys_accept_args {
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } s;
 union { register_t pad; struct { struct sockaddr * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (struct sockaddr *)) ? 0 : sizeof (register_t) - sizeof (struct sockaddr *)]; struct sockaddr * datum; } be; } name;
 union { register_t pad; struct { socklen_t * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (socklen_t *)) ? 0 : sizeof (register_t) - sizeof (socklen_t *)]; socklen_t * datum; } be; } anamelen;
};
struct sys_getpeername_args {
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } fdes;
 union { register_t pad; struct { struct sockaddr * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (struct sockaddr *)) ? 0 : sizeof (register_t) - sizeof (struct sockaddr *)]; struct sockaddr * datum; } be; } asa;
 union { register_t pad; struct { socklen_t * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (socklen_t *)) ? 0 : sizeof (register_t) - sizeof (socklen_t *)]; socklen_t * datum; } be; } alen;
};
struct sys_getsockname_args {
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } fdes;
 union { register_t pad; struct { struct sockaddr * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (struct sockaddr *)) ? 0 : sizeof (register_t) - sizeof (struct sockaddr *)]; struct sockaddr * datum; } be; } asa;
 union { register_t pad; struct { socklen_t * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (socklen_t *)) ? 0 : sizeof (register_t) - sizeof (socklen_t *)]; socklen_t * datum; } be; } alen;
};
struct sys_access_args {
 union { register_t pad; struct { const char * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (const char *)) ? 0 : sizeof (register_t) - sizeof (const char *)]; const char * datum; } be; } path;
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } amode;
};
struct sys_chflags_args {
 union { register_t pad; struct { const char * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (const char *)) ? 0 : sizeof (register_t) - sizeof (const char *)]; const char * datum; } be; } path;
 union { register_t pad; struct { u_int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (u_int)) ? 0 : sizeof (register_t) - sizeof (u_int)]; u_int datum; } be; } flags;
};
struct sys_fchflags_args {
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } fd;
 union { register_t pad; struct { u_int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (u_int)) ? 0 : sizeof (register_t) - sizeof (u_int)]; u_int datum; } be; } flags;
};
struct sys_stat_args {
 union { register_t pad; struct { const char * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (const char *)) ? 0 : sizeof (register_t) - sizeof (const char *)]; const char * datum; } be; } path;
 union { register_t pad; struct { struct stat * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (struct stat *)) ? 0 : sizeof (register_t) - sizeof (struct stat *)]; struct stat * datum; } be; } ub;
};
struct sys_lstat_args {
 union { register_t pad; struct { const char * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (const char *)) ? 0 : sizeof (register_t) - sizeof (const char *)]; const char * datum; } be; } path;
 union { register_t pad; struct { struct stat * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (struct stat *)) ? 0 : sizeof (register_t) - sizeof (struct stat *)]; struct stat * datum; } be; } ub;
};
struct sys_dup_args {
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } fd;
};
struct sys_fstatat_args {
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } fd;
 union { register_t pad; struct { const char * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (const char *)) ? 0 : sizeof (register_t) - sizeof (const char *)]; const char * datum; } be; } path;
 union { register_t pad; struct { struct stat * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (struct stat *)) ? 0 : sizeof (register_t) - sizeof (struct stat *)]; struct stat * datum; } be; } buf;
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } flag;
};
struct sys_profil_args {
 union { register_t pad; struct { caddr_t datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (caddr_t)) ? 0 : sizeof (register_t) - sizeof (caddr_t)]; caddr_t datum; } be; } samples;
 union { register_t pad; struct { size_t datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (size_t)) ? 0 : sizeof (register_t) - sizeof (size_t)]; size_t datum; } be; } size;
 union { register_t pad; struct { u_long datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (u_long)) ? 0 : sizeof (register_t) - sizeof (u_long)]; u_long datum; } be; } offset;
 union { register_t pad; struct { u_int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (u_int)) ? 0 : sizeof (register_t) - sizeof (u_int)]; u_int datum; } be; } scale;
};
struct sys_ktrace_args {
 union { register_t pad; struct { const char * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (const char *)) ? 0 : sizeof (register_t) - sizeof (const char *)]; const char * datum; } be; } fname;
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } ops;
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } facs;
 union { register_t pad; struct { pid_t datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (pid_t)) ? 0 : sizeof (register_t) - sizeof (pid_t)]; pid_t datum; } be; } pid;
};
struct sys_sigaction_args {
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } signum;
 union { register_t pad; struct { const struct sigaction * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (const struct sigaction *)) ? 0 : sizeof (register_t) - sizeof (const struct sigaction *)]; const struct sigaction * datum; } be; } nsa;
 union { register_t pad; struct { struct sigaction * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (struct sigaction *)) ? 0 : sizeof (register_t) - sizeof (struct sigaction *)]; struct sigaction * datum; } be; } osa;
};
struct sys_sigprocmask_args {
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } how;
 union { register_t pad; struct { sigset_t datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (sigset_t)) ? 0 : sizeof (register_t) - sizeof (sigset_t)]; sigset_t datum; } be; } mask;
};
struct sys_setlogin_args {
 union { register_t pad; struct { const char * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (const char *)) ? 0 : sizeof (register_t) - sizeof (const char *)]; const char * datum; } be; } namebuf;
};
struct sys_acct_args {
 union { register_t pad; struct { const char * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (const char *)) ? 0 : sizeof (register_t) - sizeof (const char *)]; const char * datum; } be; } path;
};
struct sys_fstat_args {
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } fd;
 union { register_t pad; struct { struct stat * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (struct stat *)) ? 0 : sizeof (register_t) - sizeof (struct stat *)]; struct stat * datum; } be; } sb;
};
struct sys_ioctl_args {
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } fd;
 union { register_t pad; struct { u_long datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (u_long)) ? 0 : sizeof (register_t) - sizeof (u_long)]; u_long datum; } be; } com;
 union { register_t pad; struct { void * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (void *)) ? 0 : sizeof (register_t) - sizeof (void *)]; void * datum; } be; } data;
};
struct sys_reboot_args {
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } opt;
};
struct sys_revoke_args {
 union { register_t pad; struct { const char * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (const char *)) ? 0 : sizeof (register_t) - sizeof (const char *)]; const char * datum; } be; } path;
};
struct sys_symlink_args {
 union { register_t pad; struct { const char * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (const char *)) ? 0 : sizeof (register_t) - sizeof (const char *)]; const char * datum; } be; } path;
 union { register_t pad; struct { const char * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (const char *)) ? 0 : sizeof (register_t) - sizeof (const char *)]; const char * datum; } be; } link;
};
struct sys_readlink_args {
 union { register_t pad; struct { const char * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (const char *)) ? 0 : sizeof (register_t) - sizeof (const char *)]; const char * datum; } be; } path;
 union { register_t pad; struct { char * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (char *)) ? 0 : sizeof (register_t) - sizeof (char *)]; char * datum; } be; } buf;
 union { register_t pad; struct { size_t datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (size_t)) ? 0 : sizeof (register_t) - sizeof (size_t)]; size_t datum; } be; } count;
};
struct sys_execve_args {
 union { register_t pad; struct { const char * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (const char *)) ? 0 : sizeof (register_t) - sizeof (const char *)]; const char * datum; } be; } path;
 union { register_t pad; struct { char *const * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (char *const *)) ? 0 : sizeof (register_t) - sizeof (char *const *)]; char *const * datum; } be; } argp;
 union { register_t pad; struct { char *const * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (char *const *)) ? 0 : sizeof (register_t) - sizeof (char *const *)]; char *const * datum; } be; } envp;
};
struct sys_umask_args {
 union { register_t pad; struct { mode_t datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (mode_t)) ? 0 : sizeof (register_t) - sizeof (mode_t)]; mode_t datum; } be; } newmask;
};
struct sys_chroot_args {
 union { register_t pad; struct { const char * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (const char *)) ? 0 : sizeof (register_t) - sizeof (const char *)]; const char * datum; } be; } path;
};
struct sys_getfsstat_args {
 union { register_t pad; struct { struct statfs * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (struct statfs *)) ? 0 : sizeof (register_t) - sizeof (struct statfs *)]; struct statfs * datum; } be; } buf;
 union { register_t pad; struct { size_t datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (size_t)) ? 0 : sizeof (register_t) - sizeof (size_t)]; size_t datum; } be; } bufsize;
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } flags;
};
struct sys_statfs_args {
 union { register_t pad; struct { const char * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (const char *)) ? 0 : sizeof (register_t) - sizeof (const char *)]; const char * datum; } be; } path;
 union { register_t pad; struct { struct statfs * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (struct statfs *)) ? 0 : sizeof (register_t) - sizeof (struct statfs *)]; struct statfs * datum; } be; } buf;
};
struct sys_fstatfs_args {
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } fd;
 union { register_t pad; struct { struct statfs * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (struct statfs *)) ? 0 : sizeof (register_t) - sizeof (struct statfs *)]; struct statfs * datum; } be; } buf;
};
struct sys_fhstatfs_args {
 union { register_t pad; struct { const fhandle_t * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (const fhandle_t *)) ? 0 : sizeof (register_t) - sizeof (const fhandle_t *)]; const fhandle_t * datum; } be; } fhp;
 union { register_t pad; struct { struct statfs * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (struct statfs *)) ? 0 : sizeof (register_t) - sizeof (struct statfs *)]; struct statfs * datum; } be; } buf;
};
struct sys_gettimeofday_args {
 union { register_t pad; struct { struct timeval * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (struct timeval *)) ? 0 : sizeof (register_t) - sizeof (struct timeval *)]; struct timeval * datum; } be; } tp;
 union { register_t pad; struct { struct timezone * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (struct timezone *)) ? 0 : sizeof (register_t) - sizeof (struct timezone *)]; struct timezone * datum; } be; } tzp;
};
struct sys_settimeofday_args {
 union { register_t pad; struct { const struct timeval * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (const struct timeval *)) ? 0 : sizeof (register_t) - sizeof (const struct timeval *)]; const struct timeval * datum; } be; } tv;
 union { register_t pad; struct { const struct timezone * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (const struct timezone *)) ? 0 : sizeof (register_t) - sizeof (const struct timezone *)]; const struct timezone * datum; } be; } tzp;
};
struct sys_setitimer_args {
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } which;
 union { register_t pad; struct { const struct itimerval * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (const struct itimerval *)) ? 0 : sizeof (register_t) - sizeof (const struct itimerval *)]; const struct itimerval * datum; } be; } itv;
 union { register_t pad; struct { struct itimerval * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (struct itimerval *)) ? 0 : sizeof (register_t) - sizeof (struct itimerval *)]; struct itimerval * datum; } be; } oitv;
};
struct sys_getitimer_args {
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } which;
 union { register_t pad; struct { struct itimerval * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (struct itimerval *)) ? 0 : sizeof (register_t) - sizeof (struct itimerval *)]; struct itimerval * datum; } be; } itv;
};
struct sys_select_args {
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } nd;
 union { register_t pad; struct { fd_set * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (fd_set *)) ? 0 : sizeof (register_t) - sizeof (fd_set *)]; fd_set * datum; } be; } in;
 union { register_t pad; struct { fd_set * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (fd_set *)) ? 0 : sizeof (register_t) - sizeof (fd_set *)]; fd_set * datum; } be; } ou;
 union { register_t pad; struct { fd_set * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (fd_set *)) ? 0 : sizeof (register_t) - sizeof (fd_set *)]; fd_set * datum; } be; } ex;
 union { register_t pad; struct { struct timeval * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (struct timeval *)) ? 0 : sizeof (register_t) - sizeof (struct timeval *)]; struct timeval * datum; } be; } tv;
};
struct sys_kevent_args {
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } fd;
 union { register_t pad; struct { const struct kevent * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (const struct kevent *)) ? 0 : sizeof (register_t) - sizeof (const struct kevent *)]; const struct kevent * datum; } be; } changelist;
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } nchanges;
 union { register_t pad; struct { struct kevent * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (struct kevent *)) ? 0 : sizeof (register_t) - sizeof (struct kevent *)]; struct kevent * datum; } be; } eventlist;
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } nevents;
 union { register_t pad; struct { const struct timespec * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (const struct timespec *)) ? 0 : sizeof (register_t) - sizeof (const struct timespec *)]; const struct timespec * datum; } be; } timeout;
};
struct sys_munmap_args {
 union { register_t pad; struct { void * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (void *)) ? 0 : sizeof (register_t) - sizeof (void *)]; void * datum; } be; } addr;
 union { register_t pad; struct { size_t datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (size_t)) ? 0 : sizeof (register_t) - sizeof (size_t)]; size_t datum; } be; } len;
};
struct sys_mprotect_args {
 union { register_t pad; struct { void * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (void *)) ? 0 : sizeof (register_t) - sizeof (void *)]; void * datum; } be; } addr;
 union { register_t pad; struct { size_t datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (size_t)) ? 0 : sizeof (register_t) - sizeof (size_t)]; size_t datum; } be; } len;
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } prot;
};
struct sys_madvise_args {
 union { register_t pad; struct { void * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (void *)) ? 0 : sizeof (register_t) - sizeof (void *)]; void * datum; } be; } addr;
 union { register_t pad; struct { size_t datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (size_t)) ? 0 : sizeof (register_t) - sizeof (size_t)]; size_t datum; } be; } len;
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } behav;
};
struct sys_utimes_args {
 union { register_t pad; struct { const char * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (const char *)) ? 0 : sizeof (register_t) - sizeof (const char *)]; const char * datum; } be; } path;
 union { register_t pad; struct { const struct timeval * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (const struct timeval *)) ? 0 : sizeof (register_t) - sizeof (const struct timeval *)]; const struct timeval * datum; } be; } tptr;
};
struct sys_futimes_args {
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } fd;
 union { register_t pad; struct { const struct timeval * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (const struct timeval *)) ? 0 : sizeof (register_t) - sizeof (const struct timeval *)]; const struct timeval * datum; } be; } tptr;
};
struct sys_mincore_args {
 union { register_t pad; struct { void * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (void *)) ? 0 : sizeof (register_t) - sizeof (void *)]; void * datum; } be; } addr;
 union { register_t pad; struct { size_t datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (size_t)) ? 0 : sizeof (register_t) - sizeof (size_t)]; size_t datum; } be; } len;
 union { register_t pad; struct { char * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (char *)) ? 0 : sizeof (register_t) - sizeof (char *)]; char * datum; } be; } vec;
};
struct sys_getgroups_args {
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } gidsetsize;
 union { register_t pad; struct { gid_t * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (gid_t *)) ? 0 : sizeof (register_t) - sizeof (gid_t *)]; gid_t * datum; } be; } gidset;
};
struct sys_setgroups_args {
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } gidsetsize;
 union { register_t pad; struct { const gid_t * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (const gid_t *)) ? 0 : sizeof (register_t) - sizeof (const gid_t *)]; const gid_t * datum; } be; } gidset;
};
struct sys_setpgid_args {
 union { register_t pad; struct { pid_t datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (pid_t)) ? 0 : sizeof (register_t) - sizeof (pid_t)]; pid_t datum; } be; } pid;
 union { register_t pad; struct { pid_t datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (pid_t)) ? 0 : sizeof (register_t) - sizeof (pid_t)]; pid_t datum; } be; } pgid;
};
struct sys_futex_args {
 union { register_t pad; struct { uint32_t * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (uint32_t *)) ? 0 : sizeof (register_t) - sizeof (uint32_t *)]; uint32_t * datum; } be; } f;
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } op;
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } val;
 union { register_t pad; struct { const struct timespec * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (const struct timespec *)) ? 0 : sizeof (register_t) - sizeof (const struct timespec *)]; const struct timespec * datum; } be; } timeout;
 union { register_t pad; struct { uint32_t * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (uint32_t *)) ? 0 : sizeof (register_t) - sizeof (uint32_t *)]; uint32_t * datum; } be; } g;
};
struct sys_utimensat_args {
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } fd;
 union { register_t pad; struct { const char * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (const char *)) ? 0 : sizeof (register_t) - sizeof (const char *)]; const char * datum; } be; } path;
 union { register_t pad; struct { const struct timespec * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (const struct timespec *)) ? 0 : sizeof (register_t) - sizeof (const struct timespec *)]; const struct timespec * datum; } be; } times;
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } flag;
};
struct sys_futimens_args {
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } fd;
 union { register_t pad; struct { const struct timespec * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (const struct timespec *)) ? 0 : sizeof (register_t) - sizeof (const struct timespec *)]; const struct timespec * datum; } be; } times;
};
struct sys_kbind_args {
 union { register_t pad; struct { const struct __kbind * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (const struct __kbind *)) ? 0 : sizeof (register_t) - sizeof (const struct __kbind *)]; const struct __kbind * datum; } be; } param;
 union { register_t pad; struct { size_t datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (size_t)) ? 0 : sizeof (register_t) - sizeof (size_t)]; size_t datum; } be; } psize;
 union { register_t pad; struct { int64_t datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int64_t)) ? 0 : sizeof (register_t) - sizeof (int64_t)]; int64_t datum; } be; } proc_cookie;
};
struct sys_clock_gettime_args {
 union { register_t pad; struct { clockid_t datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (clockid_t)) ? 0 : sizeof (register_t) - sizeof (clockid_t)]; clockid_t datum; } be; } clock_id;
 union { register_t pad; struct { struct timespec * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (struct timespec *)) ? 0 : sizeof (register_t) - sizeof (struct timespec *)]; struct timespec * datum; } be; } tp;
};
struct sys_clock_settime_args {
 union { register_t pad; struct { clockid_t datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (clockid_t)) ? 0 : sizeof (register_t) - sizeof (clockid_t)]; clockid_t datum; } be; } clock_id;
 union { register_t pad; struct { const struct timespec * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (const struct timespec *)) ? 0 : sizeof (register_t) - sizeof (const struct timespec *)]; const struct timespec * datum; } be; } tp;
};
struct sys_clock_getres_args {
 union { register_t pad; struct { clockid_t datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (clockid_t)) ? 0 : sizeof (register_t) - sizeof (clockid_t)]; clockid_t datum; } be; } clock_id;
 union { register_t pad; struct { struct timespec * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (struct timespec *)) ? 0 : sizeof (register_t) - sizeof (struct timespec *)]; struct timespec * datum; } be; } tp;
};
struct sys_dup2_args {
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } from;
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } to;
};
struct sys_nanosleep_args {
 union { register_t pad; struct { const struct timespec * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (const struct timespec *)) ? 0 : sizeof (register_t) - sizeof (const struct timespec *)]; const struct timespec * datum; } be; } rqtp;
 union { register_t pad; struct { struct timespec * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (struct timespec *)) ? 0 : sizeof (register_t) - sizeof (struct timespec *)]; struct timespec * datum; } be; } rmtp;
};
struct sys_fcntl_args {
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } fd;
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } cmd;
 union { register_t pad; struct { void * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (void *)) ? 0 : sizeof (register_t) - sizeof (void *)]; void * datum; } be; } arg;
};
struct sys_accept4_args {
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } s;
 union { register_t pad; struct { struct sockaddr * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (struct sockaddr *)) ? 0 : sizeof (register_t) - sizeof (struct sockaddr *)]; struct sockaddr * datum; } be; } name;
 union { register_t pad; struct { socklen_t * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (socklen_t *)) ? 0 : sizeof (register_t) - sizeof (socklen_t *)]; socklen_t * datum; } be; } anamelen;
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } flags;
};
struct sys___thrsleep_args {
 union { register_t pad; struct { const volatile void * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (const volatile void *)) ? 0 : sizeof (register_t) - sizeof (const volatile void *)]; const volatile void * datum; } be; } ident;
 union { register_t pad; struct { clockid_t datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (clockid_t)) ? 0 : sizeof (register_t) - sizeof (clockid_t)]; clockid_t datum; } be; } clock_id;
 union { register_t pad; struct { const struct timespec * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (const struct timespec *)) ? 0 : sizeof (register_t) - sizeof (const struct timespec *)]; const struct timespec * datum; } be; } tp;
 union { register_t pad; struct { void * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (void *)) ? 0 : sizeof (register_t) - sizeof (void *)]; void * datum; } be; } lock;
 union { register_t pad; struct { const int * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (const int *)) ? 0 : sizeof (register_t) - sizeof (const int *)]; const int * datum; } be; } abort;
};
struct sys_fsync_args {
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } fd;
};
struct sys_setpriority_args {
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } which;
 union { register_t pad; struct { id_t datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (id_t)) ? 0 : sizeof (register_t) - sizeof (id_t)]; id_t datum; } be; } who;
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } prio;
};
struct sys_socket_args {
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } domain;
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } type;
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } protocol;
};
struct sys_connect_args {
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } s;
 union { register_t pad; struct { const struct sockaddr * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (const struct sockaddr *)) ? 0 : sizeof (register_t) - sizeof (const struct sockaddr *)]; const struct sockaddr * datum; } be; } name;
 union { register_t pad; struct { socklen_t datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (socklen_t)) ? 0 : sizeof (register_t) - sizeof (socklen_t)]; socklen_t datum; } be; } namelen;
};
struct sys_getdents_args {
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } fd;
 union { register_t pad; struct { void * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (void *)) ? 0 : sizeof (register_t) - sizeof (void *)]; void * datum; } be; } buf;
 union { register_t pad; struct { size_t datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (size_t)) ? 0 : sizeof (register_t) - sizeof (size_t)]; size_t datum; } be; } buflen;
};
struct sys_getpriority_args {
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } which;
 union { register_t pad; struct { id_t datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (id_t)) ? 0 : sizeof (register_t) - sizeof (id_t)]; id_t datum; } be; } who;
};
struct sys_pipe2_args {
 union { register_t pad; struct { int * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int *)) ? 0 : sizeof (register_t) - sizeof (int *)]; int * datum; } be; } fdp;
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } flags;
};
struct sys_dup3_args {
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } from;
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } to;
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } flags;
};
struct sys_sigreturn_args {
 union { register_t pad; struct { struct sigcontext * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (struct sigcontext *)) ? 0 : sizeof (register_t) - sizeof (struct sigcontext *)]; struct sigcontext * datum; } be; } sigcntxp;
};
struct sys_bind_args {
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } s;
 union { register_t pad; struct { const struct sockaddr * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (const struct sockaddr *)) ? 0 : sizeof (register_t) - sizeof (const struct sockaddr *)]; const struct sockaddr * datum; } be; } name;
 union { register_t pad; struct { socklen_t datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (socklen_t)) ? 0 : sizeof (register_t) - sizeof (socklen_t)]; socklen_t datum; } be; } namelen;
};
struct sys_setsockopt_args {
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } s;
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } level;
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } name;
 union { register_t pad; struct { const void * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (const void *)) ? 0 : sizeof (register_t) - sizeof (const void *)]; const void * datum; } be; } val;
 union { register_t pad; struct { socklen_t datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (socklen_t)) ? 0 : sizeof (register_t) - sizeof (socklen_t)]; socklen_t datum; } be; } valsize;
};
struct sys_listen_args {
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } s;
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } backlog;
};
struct sys_chflagsat_args {
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } fd;
 union { register_t pad; struct { const char * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (const char *)) ? 0 : sizeof (register_t) - sizeof (const char *)]; const char * datum; } be; } path;
 union { register_t pad; struct { u_int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (u_int)) ? 0 : sizeof (register_t) - sizeof (u_int)]; u_int datum; } be; } flags;
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } atflags;
};
struct sys_pledge_args {
 union { register_t pad; struct { const char * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (const char *)) ? 0 : sizeof (register_t) - sizeof (const char *)]; const char * datum; } be; } promises;
 union { register_t pad; struct { const char * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (const char *)) ? 0 : sizeof (register_t) - sizeof (const char *)]; const char * datum; } be; } execpromises;
};
struct sys_ppoll_args {
 union { register_t pad; struct { struct pollfd * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (struct pollfd *)) ? 0 : sizeof (register_t) - sizeof (struct pollfd *)]; struct pollfd * datum; } be; } fds;
 union { register_t pad; struct { u_int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (u_int)) ? 0 : sizeof (register_t) - sizeof (u_int)]; u_int datum; } be; } nfds;
 union { register_t pad; struct { const struct timespec * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (const struct timespec *)) ? 0 : sizeof (register_t) - sizeof (const struct timespec *)]; const struct timespec * datum; } be; } ts;
 union { register_t pad; struct { const sigset_t * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (const sigset_t *)) ? 0 : sizeof (register_t) - sizeof (const sigset_t *)]; const sigset_t * datum; } be; } mask;
};
struct sys_pselect_args {
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } nd;
 union { register_t pad; struct { fd_set * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (fd_set *)) ? 0 : sizeof (register_t) - sizeof (fd_set *)]; fd_set * datum; } be; } in;
 union { register_t pad; struct { fd_set * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (fd_set *)) ? 0 : sizeof (register_t) - sizeof (fd_set *)]; fd_set * datum; } be; } ou;
 union { register_t pad; struct { fd_set * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (fd_set *)) ? 0 : sizeof (register_t) - sizeof (fd_set *)]; fd_set * datum; } be; } ex;
 union { register_t pad; struct { const struct timespec * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (const struct timespec *)) ? 0 : sizeof (register_t) - sizeof (const struct timespec *)]; const struct timespec * datum; } be; } ts;
 union { register_t pad; struct { const sigset_t * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (const sigset_t *)) ? 0 : sizeof (register_t) - sizeof (const sigset_t *)]; const sigset_t * datum; } be; } mask;
};
struct sys_sigsuspend_args {
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } mask;
};
struct sys_sendsyslog_args {
 union { register_t pad; struct { const char * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (const char *)) ? 0 : sizeof (register_t) - sizeof (const char *)]; const char * datum; } be; } buf;
 union { register_t pad; struct { size_t datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (size_t)) ? 0 : sizeof (register_t) - sizeof (size_t)]; size_t datum; } be; } nbyte;
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } flags;
};
struct sys_getsockopt_args {
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } s;
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } level;
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } name;
 union { register_t pad; struct { void * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (void *)) ? 0 : sizeof (register_t) - sizeof (void *)]; void * datum; } be; } val;
 union { register_t pad; struct { socklen_t * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (socklen_t *)) ? 0 : sizeof (register_t) - sizeof (socklen_t *)]; socklen_t * datum; } be; } avalsize;
};
struct sys_thrkill_args {
 union { register_t pad; struct { pid_t datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (pid_t)) ? 0 : sizeof (register_t) - sizeof (pid_t)]; pid_t datum; } be; } tid;
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } signum;
 union { register_t pad; struct { void * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (void *)) ? 0 : sizeof (register_t) - sizeof (void *)]; void * datum; } be; } tcb;
};
struct sys_readv_args {
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } fd;
 union { register_t pad; struct { const struct iovec * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (const struct iovec *)) ? 0 : sizeof (register_t) - sizeof (const struct iovec *)]; const struct iovec * datum; } be; } iovp;
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } iovcnt;
};
struct sys_writev_args {
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } fd;
 union { register_t pad; struct { const struct iovec * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (const struct iovec *)) ? 0 : sizeof (register_t) - sizeof (const struct iovec *)]; const struct iovec * datum; } be; } iovp;
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } iovcnt;
};
struct sys_kill_args {
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } pid;
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } signum;
};
struct sys_fchown_args {
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } fd;
 union { register_t pad; struct { uid_t datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (uid_t)) ? 0 : sizeof (register_t) - sizeof (uid_t)]; uid_t datum; } be; } uid;
 union { register_t pad; struct { gid_t datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (gid_t)) ? 0 : sizeof (register_t) - sizeof (gid_t)]; gid_t datum; } be; } gid;
};
struct sys_fchmod_args {
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } fd;
 union { register_t pad; struct { mode_t datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (mode_t)) ? 0 : sizeof (register_t) - sizeof (mode_t)]; mode_t datum; } be; } mode;
};
struct sys_setreuid_args {
 union { register_t pad; struct { uid_t datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (uid_t)) ? 0 : sizeof (register_t) - sizeof (uid_t)]; uid_t datum; } be; } ruid;
 union { register_t pad; struct { uid_t datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (uid_t)) ? 0 : sizeof (register_t) - sizeof (uid_t)]; uid_t datum; } be; } euid;
};
struct sys_setregid_args {
 union { register_t pad; struct { gid_t datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (gid_t)) ? 0 : sizeof (register_t) - sizeof (gid_t)]; gid_t datum; } be; } rgid;
 union { register_t pad; struct { gid_t datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (gid_t)) ? 0 : sizeof (register_t) - sizeof (gid_t)]; gid_t datum; } be; } egid;
};
struct sys_rename_args {
 union { register_t pad; struct { const char * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (const char *)) ? 0 : sizeof (register_t) - sizeof (const char *)]; const char * datum; } be; } from;
 union { register_t pad; struct { const char * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (const char *)) ? 0 : sizeof (register_t) - sizeof (const char *)]; const char * datum; } be; } to;
};
struct sys_flock_args {
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } fd;
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } how;
};
struct sys_mkfifo_args {
 union { register_t pad; struct { const char * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (const char *)) ? 0 : sizeof (register_t) - sizeof (const char *)]; const char * datum; } be; } path;
 union { register_t pad; struct { mode_t datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (mode_t)) ? 0 : sizeof (register_t) - sizeof (mode_t)]; mode_t datum; } be; } mode;
};
struct sys_sendto_args {
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } s;
 union { register_t pad; struct { const void * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (const void *)) ? 0 : sizeof (register_t) - sizeof (const void *)]; const void * datum; } be; } buf;
 union { register_t pad; struct { size_t datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (size_t)) ? 0 : sizeof (register_t) - sizeof (size_t)]; size_t datum; } be; } len;
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } flags;
 union { register_t pad; struct { const struct sockaddr * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (const struct sockaddr *)) ? 0 : sizeof (register_t) - sizeof (const struct sockaddr *)]; const struct sockaddr * datum; } be; } to;
 union { register_t pad; struct { socklen_t datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (socklen_t)) ? 0 : sizeof (register_t) - sizeof (socklen_t)]; socklen_t datum; } be; } tolen;
};
struct sys_shutdown_args {
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } s;
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } how;
};
struct sys_socketpair_args {
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } domain;
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } type;
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } protocol;
 union { register_t pad; struct { int * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int *)) ? 0 : sizeof (register_t) - sizeof (int *)]; int * datum; } be; } rsv;
};
struct sys_mkdir_args {
 union { register_t pad; struct { const char * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (const char *)) ? 0 : sizeof (register_t) - sizeof (const char *)]; const char * datum; } be; } path;
 union { register_t pad; struct { mode_t datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (mode_t)) ? 0 : sizeof (register_t) - sizeof (mode_t)]; mode_t datum; } be; } mode;
};
struct sys_rmdir_args {
 union { register_t pad; struct { const char * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (const char *)) ? 0 : sizeof (register_t) - sizeof (const char *)]; const char * datum; } be; } path;
};
struct sys_adjtime_args {
 union { register_t pad; struct { const struct timeval * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (const struct timeval *)) ? 0 : sizeof (register_t) - sizeof (const struct timeval *)]; const struct timeval * datum; } be; } delta;
 union { register_t pad; struct { struct timeval * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (struct timeval *)) ? 0 : sizeof (register_t) - sizeof (struct timeval *)]; struct timeval * datum; } be; } olddelta;
};
struct sys_getlogin_r_args {
 union { register_t pad; struct { char * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (char *)) ? 0 : sizeof (register_t) - sizeof (char *)]; char * datum; } be; } namebuf;
 union { register_t pad; struct { u_int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (u_int)) ? 0 : sizeof (register_t) - sizeof (u_int)]; u_int datum; } be; } namelen;
};
struct sys_quotactl_args {
 union { register_t pad; struct { const char * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (const char *)) ? 0 : sizeof (register_t) - sizeof (const char *)]; const char * datum; } be; } path;
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } cmd;
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } uid;
 union { register_t pad; struct { char * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (char *)) ? 0 : sizeof (register_t) - sizeof (char *)]; char * datum; } be; } arg;
};
struct sys_nfssvc_args {
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } flag;
 union { register_t pad; struct { void * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (void *)) ? 0 : sizeof (register_t) - sizeof (void *)]; void * datum; } be; } argp;
};
struct sys_getfh_args {
 union { register_t pad; struct { const char * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (const char *)) ? 0 : sizeof (register_t) - sizeof (const char *)]; const char * datum; } be; } fname;
 union { register_t pad; struct { fhandle_t * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (fhandle_t *)) ? 0 : sizeof (register_t) - sizeof (fhandle_t *)]; fhandle_t * datum; } be; } fhp;
};
struct sys_sysarch_args {
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } op;
 union { register_t pad; struct { void * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (void *)) ? 0 : sizeof (register_t) - sizeof (void *)]; void * datum; } be; } parms;
};
struct sys_pread_args {
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } fd;
 union { register_t pad; struct { void * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (void *)) ? 0 : sizeof (register_t) - sizeof (void *)]; void * datum; } be; } buf;
 union { register_t pad; struct { size_t datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (size_t)) ? 0 : sizeof (register_t) - sizeof (size_t)]; size_t datum; } be; } nbyte;
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } pad;
 union { register_t pad; struct { off_t datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (off_t)) ? 0 : sizeof (register_t) - sizeof (off_t)]; off_t datum; } be; } offset;
};
struct sys_pwrite_args {
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } fd;
 union { register_t pad; struct { const void * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (const void *)) ? 0 : sizeof (register_t) - sizeof (const void *)]; const void * datum; } be; } buf;
 union { register_t pad; struct { size_t datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (size_t)) ? 0 : sizeof (register_t) - sizeof (size_t)]; size_t datum; } be; } nbyte;
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } pad;
 union { register_t pad; struct { off_t datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (off_t)) ? 0 : sizeof (register_t) - sizeof (off_t)]; off_t datum; } be; } offset;
};
struct sys_setgid_args {
 union { register_t pad; struct { gid_t datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (gid_t)) ? 0 : sizeof (register_t) - sizeof (gid_t)]; gid_t datum; } be; } gid;
};
struct sys_setegid_args {
 union { register_t pad; struct { gid_t datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (gid_t)) ? 0 : sizeof (register_t) - sizeof (gid_t)]; gid_t datum; } be; } egid;
};
struct sys_seteuid_args {
 union { register_t pad; struct { uid_t datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (uid_t)) ? 0 : sizeof (register_t) - sizeof (uid_t)]; uid_t datum; } be; } euid;
};
struct sys_pathconf_args {
 union { register_t pad; struct { const char * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (const char *)) ? 0 : sizeof (register_t) - sizeof (const char *)]; const char * datum; } be; } path;
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } name;
};
struct sys_fpathconf_args {
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } fd;
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } name;
};
struct sys_swapctl_args {
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } cmd;
 union { register_t pad; struct { const void * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (const void *)) ? 0 : sizeof (register_t) - sizeof (const void *)]; const void * datum; } be; } arg;
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } misc;
};
struct sys_getrlimit_args {
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } which;
 union { register_t pad; struct { struct rlimit * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (struct rlimit *)) ? 0 : sizeof (register_t) - sizeof (struct rlimit *)]; struct rlimit * datum; } be; } rlp;
};
struct sys_setrlimit_args {
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } which;
 union { register_t pad; struct { const struct rlimit * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (const struct rlimit *)) ? 0 : sizeof (register_t) - sizeof (const struct rlimit *)]; const struct rlimit * datum; } be; } rlp;
};
struct sys_mmap_args {
 union { register_t pad; struct { void * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (void *)) ? 0 : sizeof (register_t) - sizeof (void *)]; void * datum; } be; } addr;
 union { register_t pad; struct { size_t datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (size_t)) ? 0 : sizeof (register_t) - sizeof (size_t)]; size_t datum; } be; } len;
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } prot;
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } flags;
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } fd;
 union { register_t pad; struct { long datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (long)) ? 0 : sizeof (register_t) - sizeof (long)]; long datum; } be; } pad;
 union { register_t pad; struct { off_t datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (off_t)) ? 0 : sizeof (register_t) - sizeof (off_t)]; off_t datum; } be; } pos;
};
struct sys_lseek_args {
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } fd;
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } pad;
 union { register_t pad; struct { off_t datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (off_t)) ? 0 : sizeof (register_t) - sizeof (off_t)]; off_t datum; } be; } offset;
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } whence;
};
struct sys_truncate_args {
 union { register_t pad; struct { const char * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (const char *)) ? 0 : sizeof (register_t) - sizeof (const char *)]; const char * datum; } be; } path;
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } pad;
 union { register_t pad; struct { off_t datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (off_t)) ? 0 : sizeof (register_t) - sizeof (off_t)]; off_t datum; } be; } length;
};
struct sys_ftruncate_args {
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } fd;
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } pad;
 union { register_t pad; struct { off_t datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (off_t)) ? 0 : sizeof (register_t) - sizeof (off_t)]; off_t datum; } be; } length;
};
struct sys_sysctl_args {
 union { register_t pad; struct { const int * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (const int *)) ? 0 : sizeof (register_t) - sizeof (const int *)]; const int * datum; } be; } name;
 union { register_t pad; struct { u_int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (u_int)) ? 0 : sizeof (register_t) - sizeof (u_int)]; u_int datum; } be; } namelen;
 union { register_t pad; struct { void * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (void *)) ? 0 : sizeof (register_t) - sizeof (void *)]; void * datum; } be; } old;
 union { register_t pad; struct { size_t * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (size_t *)) ? 0 : sizeof (register_t) - sizeof (size_t *)]; size_t * datum; } be; } oldlenp;
 union { register_t pad; struct { void * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (void *)) ? 0 : sizeof (register_t) - sizeof (void *)]; void * datum; } be; } new;
 union { register_t pad; struct { size_t datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (size_t)) ? 0 : sizeof (register_t) - sizeof (size_t)]; size_t datum; } be; } newlen;
};
struct sys_mlock_args {
 union { register_t pad; struct { const void * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (const void *)) ? 0 : sizeof (register_t) - sizeof (const void *)]; const void * datum; } be; } addr;
 union { register_t pad; struct { size_t datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (size_t)) ? 0 : sizeof (register_t) - sizeof (size_t)]; size_t datum; } be; } len;
};
struct sys_munlock_args {
 union { register_t pad; struct { const void * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (const void *)) ? 0 : sizeof (register_t) - sizeof (const void *)]; const void * datum; } be; } addr;
 union { register_t pad; struct { size_t datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (size_t)) ? 0 : sizeof (register_t) - sizeof (size_t)]; size_t datum; } be; } len;
};
struct sys_getpgid_args {
 union { register_t pad; struct { pid_t datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (pid_t)) ? 0 : sizeof (register_t) - sizeof (pid_t)]; pid_t datum; } be; } pid;
};
struct sys_utrace_args {
 union { register_t pad; struct { const char * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (const char *)) ? 0 : sizeof (register_t) - sizeof (const char *)]; const char * datum; } be; } label;
 union { register_t pad; struct { const void * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (const void *)) ? 0 : sizeof (register_t) - sizeof (const void *)]; const void * datum; } be; } addr;
 union { register_t pad; struct { size_t datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (size_t)) ? 0 : sizeof (register_t) - sizeof (size_t)]; size_t datum; } be; } len;
};
struct sys_semget_args {
 union { register_t pad; struct { key_t datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (key_t)) ? 0 : sizeof (register_t) - sizeof (key_t)]; key_t datum; } be; } key;
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } nsems;
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } semflg;
};
struct sys_msgget_args {
 union { register_t pad; struct { key_t datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (key_t)) ? 0 : sizeof (register_t) - sizeof (key_t)]; key_t datum; } be; } key;
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } msgflg;
};
struct sys_msgsnd_args {
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } msqid;
 union { register_t pad; struct { const void * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (const void *)) ? 0 : sizeof (register_t) - sizeof (const void *)]; const void * datum; } be; } msgp;
 union { register_t pad; struct { size_t datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (size_t)) ? 0 : sizeof (register_t) - sizeof (size_t)]; size_t datum; } be; } msgsz;
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } msgflg;
};
struct sys_msgrcv_args {
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } msqid;
 union { register_t pad; struct { void * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (void *)) ? 0 : sizeof (register_t) - sizeof (void *)]; void * datum; } be; } msgp;
 union { register_t pad; struct { size_t datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (size_t)) ? 0 : sizeof (register_t) - sizeof (size_t)]; size_t datum; } be; } msgsz;
 union { register_t pad; struct { long datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (long)) ? 0 : sizeof (register_t) - sizeof (long)]; long datum; } be; } msgtyp;
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } msgflg;
};
struct sys_shmat_args {
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } shmid;
 union { register_t pad; struct { const void * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (const void *)) ? 0 : sizeof (register_t) - sizeof (const void *)]; const void * datum; } be; } shmaddr;
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } shmflg;
};
struct sys_shmdt_args {
 union { register_t pad; struct { const void * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (const void *)) ? 0 : sizeof (register_t) - sizeof (const void *)]; const void * datum; } be; } shmaddr;
};
struct sys_minherit_args {
 union { register_t pad; struct { void * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (void *)) ? 0 : sizeof (register_t) - sizeof (void *)]; void * datum; } be; } addr;
 union { register_t pad; struct { size_t datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (size_t)) ? 0 : sizeof (register_t) - sizeof (size_t)]; size_t datum; } be; } len;
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } inherit;
};
struct sys_poll_args {
 union { register_t pad; struct { struct pollfd * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (struct pollfd *)) ? 0 : sizeof (register_t) - sizeof (struct pollfd *)]; struct pollfd * datum; } be; } fds;
 union { register_t pad; struct { u_int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (u_int)) ? 0 : sizeof (register_t) - sizeof (u_int)]; u_int datum; } be; } nfds;
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } timeout;
};
struct sys_lchown_args {
 union { register_t pad; struct { const char * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (const char *)) ? 0 : sizeof (register_t) - sizeof (const char *)]; const char * datum; } be; } path;
 union { register_t pad; struct { uid_t datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (uid_t)) ? 0 : sizeof (register_t) - sizeof (uid_t)]; uid_t datum; } be; } uid;
 union { register_t pad; struct { gid_t datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (gid_t)) ? 0 : sizeof (register_t) - sizeof (gid_t)]; gid_t datum; } be; } gid;
};
struct sys_getsid_args {
 union { register_t pad; struct { pid_t datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (pid_t)) ? 0 : sizeof (register_t) - sizeof (pid_t)]; pid_t datum; } be; } pid;
};
struct sys_msync_args {
 union { register_t pad; struct { void * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (void *)) ? 0 : sizeof (register_t) - sizeof (void *)]; void * datum; } be; } addr;
 union { register_t pad; struct { size_t datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (size_t)) ? 0 : sizeof (register_t) - sizeof (size_t)]; size_t datum; } be; } len;
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } flags;
};
struct sys_pipe_args {
 union { register_t pad; struct { int * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int *)) ? 0 : sizeof (register_t) - sizeof (int *)]; int * datum; } be; } fdp;
};
struct sys_fhopen_args {
 union { register_t pad; struct { const fhandle_t * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (const fhandle_t *)) ? 0 : sizeof (register_t) - sizeof (const fhandle_t *)]; const fhandle_t * datum; } be; } fhp;
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } flags;
};
struct sys_preadv_args {
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } fd;
 union { register_t pad; struct { const struct iovec * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (const struct iovec *)) ? 0 : sizeof (register_t) - sizeof (const struct iovec *)]; const struct iovec * datum; } be; } iovp;
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } iovcnt;
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } pad;
 union { register_t pad; struct { off_t datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (off_t)) ? 0 : sizeof (register_t) - sizeof (off_t)]; off_t datum; } be; } offset;
};
struct sys_pwritev_args {
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } fd;
 union { register_t pad; struct { const struct iovec * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (const struct iovec *)) ? 0 : sizeof (register_t) - sizeof (const struct iovec *)]; const struct iovec * datum; } be; } iovp;
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } iovcnt;
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } pad;
 union { register_t pad; struct { off_t datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (off_t)) ? 0 : sizeof (register_t) - sizeof (off_t)]; off_t datum; } be; } offset;
};
struct sys_mlockall_args {
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } flags;
};
struct sys_getresuid_args {
 union { register_t pad; struct { uid_t * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (uid_t *)) ? 0 : sizeof (register_t) - sizeof (uid_t *)]; uid_t * datum; } be; } ruid;
 union { register_t pad; struct { uid_t * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (uid_t *)) ? 0 : sizeof (register_t) - sizeof (uid_t *)]; uid_t * datum; } be; } euid;
 union { register_t pad; struct { uid_t * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (uid_t *)) ? 0 : sizeof (register_t) - sizeof (uid_t *)]; uid_t * datum; } be; } suid;
};
struct sys_setresuid_args {
 union { register_t pad; struct { uid_t datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (uid_t)) ? 0 : sizeof (register_t) - sizeof (uid_t)]; uid_t datum; } be; } ruid;
 union { register_t pad; struct { uid_t datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (uid_t)) ? 0 : sizeof (register_t) - sizeof (uid_t)]; uid_t datum; } be; } euid;
 union { register_t pad; struct { uid_t datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (uid_t)) ? 0 : sizeof (register_t) - sizeof (uid_t)]; uid_t datum; } be; } suid;
};
struct sys_getresgid_args {
 union { register_t pad; struct { gid_t * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (gid_t *)) ? 0 : sizeof (register_t) - sizeof (gid_t *)]; gid_t * datum; } be; } rgid;
 union { register_t pad; struct { gid_t * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (gid_t *)) ? 0 : sizeof (register_t) - sizeof (gid_t *)]; gid_t * datum; } be; } egid;
 union { register_t pad; struct { gid_t * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (gid_t *)) ? 0 : sizeof (register_t) - sizeof (gid_t *)]; gid_t * datum; } be; } sgid;
};
struct sys_setresgid_args {
 union { register_t pad; struct { gid_t datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (gid_t)) ? 0 : sizeof (register_t) - sizeof (gid_t)]; gid_t datum; } be; } rgid;
 union { register_t pad; struct { gid_t datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (gid_t)) ? 0 : sizeof (register_t) - sizeof (gid_t)]; gid_t datum; } be; } egid;
 union { register_t pad; struct { gid_t datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (gid_t)) ? 0 : sizeof (register_t) - sizeof (gid_t)]; gid_t datum; } be; } sgid;
};
struct sys_mquery_args {
 union { register_t pad; struct { void * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (void *)) ? 0 : sizeof (register_t) - sizeof (void *)]; void * datum; } be; } addr;
 union { register_t pad; struct { size_t datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (size_t)) ? 0 : sizeof (register_t) - sizeof (size_t)]; size_t datum; } be; } len;
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } prot;
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } flags;
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } fd;
 union { register_t pad; struct { long datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (long)) ? 0 : sizeof (register_t) - sizeof (long)]; long datum; } be; } pad;
 union { register_t pad; struct { off_t datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (off_t)) ? 0 : sizeof (register_t) - sizeof (off_t)]; off_t datum; } be; } pos;
};
struct sys_closefrom_args {
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } fd;
};
struct sys_sigaltstack_args {
 union { register_t pad; struct { const struct sigaltstack * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (const struct sigaltstack *)) ? 0 : sizeof (register_t) - sizeof (const struct sigaltstack *)]; const struct sigaltstack * datum; } be; } nss;
 union { register_t pad; struct { struct sigaltstack * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (struct sigaltstack *)) ? 0 : sizeof (register_t) - sizeof (struct sigaltstack *)]; struct sigaltstack * datum; } be; } oss;
};
struct sys_shmget_args {
 union { register_t pad; struct { key_t datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (key_t)) ? 0 : sizeof (register_t) - sizeof (key_t)]; key_t datum; } be; } key;
 union { register_t pad; struct { size_t datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (size_t)) ? 0 : sizeof (register_t) - sizeof (size_t)]; size_t datum; } be; } size;
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } shmflg;
};
struct sys_semop_args {
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } semid;
 union { register_t pad; struct { struct sembuf * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (struct sembuf *)) ? 0 : sizeof (register_t) - sizeof (struct sembuf *)]; struct sembuf * datum; } be; } sops;
 union { register_t pad; struct { size_t datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (size_t)) ? 0 : sizeof (register_t) - sizeof (size_t)]; size_t datum; } be; } nsops;
};
struct sys_fhstat_args {
 union { register_t pad; struct { const fhandle_t * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (const fhandle_t *)) ? 0 : sizeof (register_t) - sizeof (const fhandle_t *)]; const fhandle_t * datum; } be; } fhp;
 union { register_t pad; struct { struct stat * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (struct stat *)) ? 0 : sizeof (register_t) - sizeof (struct stat *)]; struct stat * datum; } be; } sb;
};
struct sys___semctl_args {
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } semid;
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } semnum;
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } cmd;
 union { register_t pad; struct { union semun * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (union semun *)) ? 0 : sizeof (register_t) - sizeof (union semun *)]; union semun * datum; } be; } arg;
};
struct sys_shmctl_args {
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } shmid;
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } cmd;
 union { register_t pad; struct { struct shmid_ds * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (struct shmid_ds *)) ? 0 : sizeof (register_t) - sizeof (struct shmid_ds *)]; struct shmid_ds * datum; } be; } buf;
};
struct sys_msgctl_args {
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } msqid;
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } cmd;
 union { register_t pad; struct { struct msqid_ds * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (struct msqid_ds *)) ? 0 : sizeof (register_t) - sizeof (struct msqid_ds *)]; struct msqid_ds * datum; } be; } buf;
};
struct sys___thrwakeup_args {
 union { register_t pad; struct { const volatile void * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (const volatile void *)) ? 0 : sizeof (register_t) - sizeof (const volatile void *)]; const volatile void * datum; } be; } ident;
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } n;
};
struct sys___threxit_args {
 union { register_t pad; struct { pid_t * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (pid_t *)) ? 0 : sizeof (register_t) - sizeof (pid_t *)]; pid_t * datum; } be; } notdead;
};
struct sys___thrsigdivert_args {
 union { register_t pad; struct { sigset_t datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (sigset_t)) ? 0 : sizeof (register_t) - sizeof (sigset_t)]; sigset_t datum; } be; } sigmask;
 union { register_t pad; struct { siginfo_t * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (siginfo_t *)) ? 0 : sizeof (register_t) - sizeof (siginfo_t *)]; siginfo_t * datum; } be; } info;
 union { register_t pad; struct { const struct timespec * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (const struct timespec *)) ? 0 : sizeof (register_t) - sizeof (const struct timespec *)]; const struct timespec * datum; } be; } timeout;
};
struct sys___getcwd_args {
 union { register_t pad; struct { char * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (char *)) ? 0 : sizeof (register_t) - sizeof (char *)]; char * datum; } be; } buf;
 union { register_t pad; struct { size_t datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (size_t)) ? 0 : sizeof (register_t) - sizeof (size_t)]; size_t datum; } be; } len;
};
struct sys_adjfreq_args {
 union { register_t pad; struct { const int64_t * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (const int64_t *)) ? 0 : sizeof (register_t) - sizeof (const int64_t *)]; const int64_t * datum; } be; } freq;
 union { register_t pad; struct { int64_t * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int64_t *)) ? 0 : sizeof (register_t) - sizeof (int64_t *)]; int64_t * datum; } be; } oldfreq;
};
struct sys_setrtable_args {
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } rtableid;
};
struct sys_faccessat_args {
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } fd;
 union { register_t pad; struct { const char * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (const char *)) ? 0 : sizeof (register_t) - sizeof (const char *)]; const char * datum; } be; } path;
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } amode;
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } flag;
};
struct sys_fchmodat_args {
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } fd;
 union { register_t pad; struct { const char * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (const char *)) ? 0 : sizeof (register_t) - sizeof (const char *)]; const char * datum; } be; } path;
 union { register_t pad; struct { mode_t datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (mode_t)) ? 0 : sizeof (register_t) - sizeof (mode_t)]; mode_t datum; } be; } mode;
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } flag;
};
struct sys_fchownat_args {
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } fd;
 union { register_t pad; struct { const char * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (const char *)) ? 0 : sizeof (register_t) - sizeof (const char *)]; const char * datum; } be; } path;
 union { register_t pad; struct { uid_t datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (uid_t)) ? 0 : sizeof (register_t) - sizeof (uid_t)]; uid_t datum; } be; } uid;
 union { register_t pad; struct { gid_t datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (gid_t)) ? 0 : sizeof (register_t) - sizeof (gid_t)]; gid_t datum; } be; } gid;
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } flag;
};
struct sys_linkat_args {
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } fd1;
 union { register_t pad; struct { const char * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (const char *)) ? 0 : sizeof (register_t) - sizeof (const char *)]; const char * datum; } be; } path1;
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } fd2;
 union { register_t pad; struct { const char * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (const char *)) ? 0 : sizeof (register_t) - sizeof (const char *)]; const char * datum; } be; } path2;
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } flag;
};
struct sys_mkdirat_args {
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } fd;
 union { register_t pad; struct { const char * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (const char *)) ? 0 : sizeof (register_t) - sizeof (const char *)]; const char * datum; } be; } path;
 union { register_t pad; struct { mode_t datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (mode_t)) ? 0 : sizeof (register_t) - sizeof (mode_t)]; mode_t datum; } be; } mode;
};
struct sys_mkfifoat_args {
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } fd;
 union { register_t pad; struct { const char * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (const char *)) ? 0 : sizeof (register_t) - sizeof (const char *)]; const char * datum; } be; } path;
 union { register_t pad; struct { mode_t datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (mode_t)) ? 0 : sizeof (register_t) - sizeof (mode_t)]; mode_t datum; } be; } mode;
};
struct sys_mknodat_args {
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } fd;
 union { register_t pad; struct { const char * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (const char *)) ? 0 : sizeof (register_t) - sizeof (const char *)]; const char * datum; } be; } path;
 union { register_t pad; struct { mode_t datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (mode_t)) ? 0 : sizeof (register_t) - sizeof (mode_t)]; mode_t datum; } be; } mode;
 union { register_t pad; struct { dev_t datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (dev_t)) ? 0 : sizeof (register_t) - sizeof (dev_t)]; dev_t datum; } be; } dev;
};
struct sys_openat_args {
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } fd;
 union { register_t pad; struct { const char * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (const char *)) ? 0 : sizeof (register_t) - sizeof (const char *)]; const char * datum; } be; } path;
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } flags;
 union { register_t pad; struct { mode_t datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (mode_t)) ? 0 : sizeof (register_t) - sizeof (mode_t)]; mode_t datum; } be; } mode;
};
struct sys_readlinkat_args {
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } fd;
 union { register_t pad; struct { const char * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (const char *)) ? 0 : sizeof (register_t) - sizeof (const char *)]; const char * datum; } be; } path;
 union { register_t pad; struct { char * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (char *)) ? 0 : sizeof (register_t) - sizeof (char *)]; char * datum; } be; } buf;
 union { register_t pad; struct { size_t datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (size_t)) ? 0 : sizeof (register_t) - sizeof (size_t)]; size_t datum; } be; } count;
};
struct sys_renameat_args {
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } fromfd;
 union { register_t pad; struct { const char * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (const char *)) ? 0 : sizeof (register_t) - sizeof (const char *)]; const char * datum; } be; } from;
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } tofd;
 union { register_t pad; struct { const char * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (const char *)) ? 0 : sizeof (register_t) - sizeof (const char *)]; const char * datum; } be; } to;
};
struct sys_symlinkat_args {
 union { register_t pad; struct { const char * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (const char *)) ? 0 : sizeof (register_t) - sizeof (const char *)]; const char * datum; } be; } path;
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } fd;
 union { register_t pad; struct { const char * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (const char *)) ? 0 : sizeof (register_t) - sizeof (const char *)]; const char * datum; } be; } link;
};
struct sys_unlinkat_args {
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } fd;
 union { register_t pad; struct { const char * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (const char *)) ? 0 : sizeof (register_t) - sizeof (const char *)]; const char * datum; } be; } path;
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } flag;
};
struct sys___set_tcb_args {
 union { register_t pad; struct { void * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (void *)) ? 0 : sizeof (register_t) - sizeof (void *)]; void * datum; } be; } tcb;
};
int sys_exit(struct proc *, void *, register_t *);
int sys_fork(struct proc *, void *, register_t *);
int sys_read(struct proc *, void *, register_t *);
int sys_write(struct proc *, void *, register_t *);
int sys_open(struct proc *, void *, register_t *);
int sys_close(struct proc *, void *, register_t *);
int sys_getentropy(struct proc *, void *, register_t *);
int sys___tfork(struct proc *, void *, register_t *);
int sys_link(struct proc *, void *, register_t *);
int sys_unlink(struct proc *, void *, register_t *);
int sys_wait4(struct proc *, void *, register_t *);
int sys_chdir(struct proc *, void *, register_t *);
int sys_fchdir(struct proc *, void *, register_t *);
int sys_mknod(struct proc *, void *, register_t *);
int sys_chmod(struct proc *, void *, register_t *);
int sys_chown(struct proc *, void *, register_t *);
int sys_obreak(struct proc *, void *, register_t *);
int sys_getdtablecount(struct proc *, void *, register_t *);
int sys_getrusage(struct proc *, void *, register_t *);
int sys_getpid(struct proc *, void *, register_t *);
int sys_mount(struct proc *, void *, register_t *);
int sys_unmount(struct proc *, void *, register_t *);
int sys_setuid(struct proc *, void *, register_t *);
int sys_getuid(struct proc *, void *, register_t *);
int sys_geteuid(struct proc *, void *, register_t *);
int sys_ptrace(struct proc *, void *, register_t *);
int sys_recvmsg(struct proc *, void *, register_t *);
int sys_sendmsg(struct proc *, void *, register_t *);
int sys_recvfrom(struct proc *, void *, register_t *);
int sys_accept(struct proc *, void *, register_t *);
int sys_getpeername(struct proc *, void *, register_t *);
int sys_getsockname(struct proc *, void *, register_t *);
int sys_access(struct proc *, void *, register_t *);
int sys_chflags(struct proc *, void *, register_t *);
int sys_fchflags(struct proc *, void *, register_t *);
int sys_sync(struct proc *, void *, register_t *);
int sys_stat(struct proc *, void *, register_t *);
int sys_getppid(struct proc *, void *, register_t *);
int sys_lstat(struct proc *, void *, register_t *);
int sys_dup(struct proc *, void *, register_t *);
int sys_fstatat(struct proc *, void *, register_t *);
int sys_getegid(struct proc *, void *, register_t *);
int sys_profil(struct proc *, void *, register_t *);
int sys_ktrace(struct proc *, void *, register_t *);
int sys_sigaction(struct proc *, void *, register_t *);
int sys_getgid(struct proc *, void *, register_t *);
int sys_sigprocmask(struct proc *, void *, register_t *);
int sys_setlogin(struct proc *, void *, register_t *);
int sys_acct(struct proc *, void *, register_t *);
int sys_sigpending(struct proc *, void *, register_t *);
int sys_fstat(struct proc *, void *, register_t *);
int sys_ioctl(struct proc *, void *, register_t *);
int sys_reboot(struct proc *, void *, register_t *);
int sys_revoke(struct proc *, void *, register_t *);
int sys_symlink(struct proc *, void *, register_t *);
int sys_readlink(struct proc *, void *, register_t *);
int sys_execve(struct proc *, void *, register_t *);
int sys_umask(struct proc *, void *, register_t *);
int sys_chroot(struct proc *, void *, register_t *);
int sys_getfsstat(struct proc *, void *, register_t *);
int sys_statfs(struct proc *, void *, register_t *);
int sys_fstatfs(struct proc *, void *, register_t *);
int sys_fhstatfs(struct proc *, void *, register_t *);
int sys_vfork(struct proc *, void *, register_t *);
int sys_gettimeofday(struct proc *, void *, register_t *);
int sys_settimeofday(struct proc *, void *, register_t *);
int sys_setitimer(struct proc *, void *, register_t *);
int sys_getitimer(struct proc *, void *, register_t *);
int sys_select(struct proc *, void *, register_t *);
int sys_kevent(struct proc *, void *, register_t *);
int sys_munmap(struct proc *, void *, register_t *);
int sys_mprotect(struct proc *, void *, register_t *);
int sys_madvise(struct proc *, void *, register_t *);
int sys_utimes(struct proc *, void *, register_t *);
int sys_futimes(struct proc *, void *, register_t *);
int sys_mincore(struct proc *, void *, register_t *);
int sys_getgroups(struct proc *, void *, register_t *);
int sys_setgroups(struct proc *, void *, register_t *);
int sys_getpgrp(struct proc *, void *, register_t *);
int sys_setpgid(struct proc *, void *, register_t *);
int sys_futex(struct proc *, void *, register_t *);
int sys_utimensat(struct proc *, void *, register_t *);
int sys_futimens(struct proc *, void *, register_t *);
int sys_kbind(struct proc *, void *, register_t *);
int sys_clock_gettime(struct proc *, void *, register_t *);
int sys_clock_settime(struct proc *, void *, register_t *);
int sys_clock_getres(struct proc *, void *, register_t *);
int sys_dup2(struct proc *, void *, register_t *);
int sys_nanosleep(struct proc *, void *, register_t *);
int sys_fcntl(struct proc *, void *, register_t *);
int sys_accept4(struct proc *, void *, register_t *);
int sys___thrsleep(struct proc *, void *, register_t *);
int sys_fsync(struct proc *, void *, register_t *);
int sys_setpriority(struct proc *, void *, register_t *);
int sys_socket(struct proc *, void *, register_t *);
int sys_connect(struct proc *, void *, register_t *);
int sys_getdents(struct proc *, void *, register_t *);
int sys_getpriority(struct proc *, void *, register_t *);
int sys_pipe2(struct proc *, void *, register_t *);
int sys_dup3(struct proc *, void *, register_t *);
int sys_sigreturn(struct proc *, void *, register_t *);
int sys_bind(struct proc *, void *, register_t *);
int sys_setsockopt(struct proc *, void *, register_t *);
int sys_listen(struct proc *, void *, register_t *);
int sys_chflagsat(struct proc *, void *, register_t *);
int sys_pledge(struct proc *, void *, register_t *);
int sys_ppoll(struct proc *, void *, register_t *);
int sys_pselect(struct proc *, void *, register_t *);
int sys_sigsuspend(struct proc *, void *, register_t *);
int sys_sendsyslog(struct proc *, void *, register_t *);
int sys_getsockopt(struct proc *, void *, register_t *);
int sys_thrkill(struct proc *, void *, register_t *);
int sys_readv(struct proc *, void *, register_t *);
int sys_writev(struct proc *, void *, register_t *);
int sys_kill(struct proc *, void *, register_t *);
int sys_fchown(struct proc *, void *, register_t *);
int sys_fchmod(struct proc *, void *, register_t *);
int sys_setreuid(struct proc *, void *, register_t *);
int sys_setregid(struct proc *, void *, register_t *);
int sys_rename(struct proc *, void *, register_t *);
int sys_flock(struct proc *, void *, register_t *);
int sys_mkfifo(struct proc *, void *, register_t *);
int sys_sendto(struct proc *, void *, register_t *);
int sys_shutdown(struct proc *, void *, register_t *);
int sys_socketpair(struct proc *, void *, register_t *);
int sys_mkdir(struct proc *, void *, register_t *);
int sys_rmdir(struct proc *, void *, register_t *);
int sys_adjtime(struct proc *, void *, register_t *);
int sys_getlogin_r(struct proc *, void *, register_t *);
int sys_setsid(struct proc *, void *, register_t *);
int sys_quotactl(struct proc *, void *, register_t *);
int sys_nfssvc(struct proc *, void *, register_t *);
int sys_getfh(struct proc *, void *, register_t *);
int sys_sysarch(struct proc *, void *, register_t *);
int sys_pread(struct proc *, void *, register_t *);
int sys_pwrite(struct proc *, void *, register_t *);
int sys_setgid(struct proc *, void *, register_t *);
int sys_setegid(struct proc *, void *, register_t *);
int sys_seteuid(struct proc *, void *, register_t *);
int sys_pathconf(struct proc *, void *, register_t *);
int sys_fpathconf(struct proc *, void *, register_t *);
int sys_swapctl(struct proc *, void *, register_t *);
int sys_getrlimit(struct proc *, void *, register_t *);
int sys_setrlimit(struct proc *, void *, register_t *);
int sys_mmap(struct proc *, void *, register_t *);
int sys_lseek(struct proc *, void *, register_t *);
int sys_truncate(struct proc *, void *, register_t *);
int sys_ftruncate(struct proc *, void *, register_t *);
int sys_sysctl(struct proc *, void *, register_t *);
int sys_mlock(struct proc *, void *, register_t *);
int sys_munlock(struct proc *, void *, register_t *);
int sys_getpgid(struct proc *, void *, register_t *);
int sys_utrace(struct proc *, void *, register_t *);
int sys_semget(struct proc *, void *, register_t *);
int sys_msgget(struct proc *, void *, register_t *);
int sys_msgsnd(struct proc *, void *, register_t *);
int sys_msgrcv(struct proc *, void *, register_t *);
int sys_shmat(struct proc *, void *, register_t *);
int sys_shmdt(struct proc *, void *, register_t *);
int sys_minherit(struct proc *, void *, register_t *);
int sys_poll(struct proc *, void *, register_t *);
int sys_issetugid(struct proc *, void *, register_t *);
int sys_lchown(struct proc *, void *, register_t *);
int sys_getsid(struct proc *, void *, register_t *);
int sys_msync(struct proc *, void *, register_t *);
int sys_pipe(struct proc *, void *, register_t *);
int sys_fhopen(struct proc *, void *, register_t *);
int sys_preadv(struct proc *, void *, register_t *);
int sys_pwritev(struct proc *, void *, register_t *);
int sys_kqueue(struct proc *, void *, register_t *);
int sys_mlockall(struct proc *, void *, register_t *);
int sys_munlockall(struct proc *, void *, register_t *);
int sys_getresuid(struct proc *, void *, register_t *);
int sys_setresuid(struct proc *, void *, register_t *);
int sys_getresgid(struct proc *, void *, register_t *);
int sys_setresgid(struct proc *, void *, register_t *);
int sys_mquery(struct proc *, void *, register_t *);
int sys_closefrom(struct proc *, void *, register_t *);
int sys_sigaltstack(struct proc *, void *, register_t *);
int sys_shmget(struct proc *, void *, register_t *);
int sys_semop(struct proc *, void *, register_t *);
int sys_fhstat(struct proc *, void *, register_t *);
int sys___semctl(struct proc *, void *, register_t *);
int sys_shmctl(struct proc *, void *, register_t *);
int sys_msgctl(struct proc *, void *, register_t *);
int sys_sched_yield(struct proc *, void *, register_t *);
int sys_getthrid(struct proc *, void *, register_t *);
int sys___thrwakeup(struct proc *, void *, register_t *);
int sys___threxit(struct proc *, void *, register_t *);
int sys___thrsigdivert(struct proc *, void *, register_t *);
int sys___getcwd(struct proc *, void *, register_t *);
int sys_adjfreq(struct proc *, void *, register_t *);
int sys_setrtable(struct proc *, void *, register_t *);
int sys_getrtable(struct proc *, void *, register_t *);
int sys_faccessat(struct proc *, void *, register_t *);
int sys_fchmodat(struct proc *, void *, register_t *);
int sys_fchownat(struct proc *, void *, register_t *);
int sys_linkat(struct proc *, void *, register_t *);
int sys_mkdirat(struct proc *, void *, register_t *);
int sys_mkfifoat(struct proc *, void *, register_t *);
int sys_mknodat(struct proc *, void *, register_t *);
int sys_openat(struct proc *, void *, register_t *);
int sys_readlinkat(struct proc *, void *, register_t *);
int sys_renameat(struct proc *, void *, register_t *);
int sys_symlinkat(struct proc *, void *, register_t *);
int sys_unlinkat(struct proc *, void *, register_t *);
int sys___set_tcb(struct proc *, void *, register_t *);
int sys___get_tcb(struct proc *, void *, register_t *);
struct ps_strings {
 char **ps_argvstr;
 int ps_nargvstr;
 char **ps_envstr;
 int ps_nenvstr;
};
struct proc;
struct exec_package;
typedef int (*exec_makecmds_fcn)(struct proc *, struct exec_package *);
struct execsw {
 u_int es_hdrsz;
 exec_makecmds_fcn es_check;
 struct emul *es_emul;
};
struct exec_vmcmd {
 int (*ev_proc)(struct proc *p, struct exec_vmcmd *cmd);
 u_long ev_len;
 u_long ev_addr;
 struct vnode *ev_vp;
 u_long ev_offset;
 u_int ev_prot;
 int ev_flags;
};
struct exec_vmcmd_set {
 u_int evs_cnt;
 u_int evs_used;
 struct exec_vmcmd *evs_cmds;
 struct exec_vmcmd evs_start[8];
};
struct exec_package {
 char *ep_name;
 void *ep_hdr;
 u_int ep_hdrlen;
 u_int ep_hdrvalid;
 struct nameidata *ep_ndp;
 struct exec_vmcmd_set ep_vmcmds;
 struct vnode *ep_vp;
 struct vattr *ep_vap;
 u_long ep_taddr;
 u_long ep_tsize;
 u_long ep_daddr;
 u_long ep_dsize;
 u_long ep_maxsaddr;
 u_long ep_minsaddr;
 u_long ep_ssize;
 u_long ep_entry;
 u_int ep_flags;
 char **ep_fa;
 int ep_fd;
 struct emul *ep_emul;
 void *ep_emul_arg;
 size_t ep_emul_argsize;
 void *ep_emul_argp;
 char *ep_interp;
};
int exec_makecmds(struct proc *, struct exec_package *);
int exec_runcmds(struct proc *, struct exec_package *);
void vmcmdset_extend(struct exec_vmcmd_set *);
void kill_vmcmds(struct exec_vmcmd_set *evsp);
int vmcmd_map_pagedvn(struct proc *, struct exec_vmcmd *);
int vmcmd_map_readvn(struct proc *, struct exec_vmcmd *);
int vmcmd_map_zero(struct proc *, struct exec_vmcmd *);
int vmcmd_randomize(struct proc *, struct exec_vmcmd *);
void *copyargs(struct exec_package *,
        struct ps_strings *,
        void *, void *);
void setregs(struct proc *, struct exec_package *,
        u_long, register_t *);
int check_exec(struct proc *, struct exec_package *);
int exec_setup_stack(struct proc *, struct exec_package *);
int exec_process_vmcmds(struct proc *, struct exec_package *);
extern struct execsw execsw[];
extern int nexecs;
extern int exec_maxhdrsz;
extern int stackgap_random;
struct exec {
 u_int32_t a_midmag;
 u_int32_t a_text;
 u_int32_t a_data;
 u_int32_t a_bss;
 u_int32_t a_syms;
 u_int32_t a_entry;
 u_int32_t a_trsize;
 u_int32_t a_drsize;
};
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
struct vm_amap;
void amap_populate(struct vm_aref *, vaddr_t);
int amap_add(struct vm_aref *, vaddr_t, struct vm_anon *,
      boolean_t);
struct vm_amap *amap_alloc(vaddr_t, int, int);
void amap_copy(vm_map_t, vm_map_entry_t, int, boolean_t, vaddr_t,
      vaddr_t);
void amap_cow_now(vm_map_t, vm_map_entry_t);
void amap_free(struct vm_amap *);
void amap_init(void);
struct vm_anon *amap_lookup(struct vm_aref *, vaddr_t);
void amap_lookups(struct vm_aref *, vaddr_t, struct vm_anon **, int);
void amap_ref(struct vm_amap *, vaddr_t, vsize_t, int);
void amap_splitref(struct vm_aref *, struct vm_aref *, vaddr_t);
void amap_unadd(struct vm_aref *, vaddr_t);
void amap_unref(struct vm_amap *, vaddr_t, vsize_t, int);
void amap_wipeout(struct vm_amap *);
boolean_t amap_swap_off(int, int);
struct vm_amap_chunk {
 struct { struct vm_amap_chunk *tqe_next; struct vm_amap_chunk **tqe_prev; } ac_list;
 int ac_baseslot;
 uint16_t ac_usedmap;
 uint16_t ac_nslot;
 struct vm_anon *ac_anon[];
};
struct vm_amap {
 int am_ref;
 int am_flags;
 int am_nslot;
 int am_nused;
 int *am_ppref;
 struct { struct vm_amap *le_next; struct vm_amap **le_prev; } am_list;
 union {
  struct {
   struct vm_amap_chunk **amn_buckets;
   struct { struct vm_amap_chunk *tqh_first; struct vm_amap_chunk **tqh_last; } amn_chunks;
   int amn_ncused;
   int amn_hashshift;
  } ami_normal;
  struct vm_amap_chunk ami_small;
 } am_impl;
};
void amap_pp_adjref(struct vm_amap *, int, vsize_t, int);
void amap_pp_establish(struct vm_amap *);
void amap_wiperange(struct vm_amap *, int, int);
void uao_init(void);
int uao_set_swslot(struct uvm_object *, int, int);
int uao_dropswap(struct uvm_object *, int);
int uao_swap_off(int, int);
int uao_shrink(struct uvm_object *, int);
int uao_grow(struct uvm_object *, int);
extern struct uvm_pagerops aobj_pager;
void uvm_swapout_threads(void);
struct vm_page *uvm_atopg(vaddr_t);
void uvm_km_init(vaddr_t, vaddr_t, vaddr_t);
void uvm_km_page_init(void);
void uvm_km_page_lateinit(void);
void uvm_km_pgremove(struct uvm_object *, vaddr_t, vaddr_t);
void uvm_km_pgremove_intrsafe(vaddr_t, vaddr_t);
struct uvm_km_free_page {
 struct uvm_km_free_page *next;
};
struct uvm_km_pages {
 struct mutex mtx;
 int lowat;
 int hiwat;
 int free;
 vaddr_t page[(4 * (2048))];
 struct uvm_km_free_page *freelist;
 int freelistlen;
 struct proc *km_proc;
};
extern struct uvm_km_pages uvm_km_pages;
int uvm_swap_get(struct vm_page *, int, int);
int uvm_swap_put(int, struct vm_page **, int, int);
int uvm_swap_alloc(int *, boolean_t);
void uvm_swap_free(int, int);
void uvm_swap_markbad(int, int);
void uvm_swap_freepages(struct vm_page **, int);
void uvm_swap_initcrypt_all(void);
void uvm_swap_finicrypt_all(void);
struct uvm_pmr_addr { struct rb_tree rbh_root; };
struct uvm_pmr_size { struct rb_tree rbh_root; };
struct uvm_pmemrange {
 struct uvm_pmr_addr addr;
 struct uvm_pmr_size size[2];
 struct { struct vm_page *tqh_first; struct vm_page **tqh_last; } single[2];
 paddr_t low;
 paddr_t high;
 int use;
 psize_t nsegs;
 struct { struct uvm_pmemrange *tqe_next; struct uvm_pmemrange **tqe_prev; } pmr_use;
 struct rb_entry pmr_addr;
};
struct uvm_pmalloc {
 struct { struct uvm_pmalloc *tqe_next; struct uvm_pmalloc **tqe_prev; } pmq;
 struct uvm_constraint_range pm_constraint;
 psize_t pm_size;
 int pm_flags;
};
struct uvm_pmemrange_addr { struct rb_tree rbh_root; };
struct uvm_pmemrange_use { struct uvm_pmemrange *tqh_first; struct uvm_pmemrange **tqh_last; };
struct uvm_pmr_control {
 struct uvm_pmemrange_addr addr;
 struct uvm_pmemrange_use use;
 struct { struct uvm_pmalloc *tqh_first; struct uvm_pmalloc **tqh_last; } allocs;
};
void uvm_pmr_freepages(struct vm_page *, psize_t);
void uvm_pmr_freepageq(struct pglist *);
int uvm_pmr_getpages(psize_t, paddr_t, paddr_t, paddr_t, paddr_t,
     int, int, struct pglist *);
void uvm_pmr_init(void);
int uvm_wait_pla(paddr_t, paddr_t, paddr_t, int);
void uvm_wakeup_pla(paddr_t, psize_t);
int uvm_pmr_isfree(struct vm_page *pg);
int uvm_pmr_addr_cmp(const struct vm_page *, const struct vm_page *);
int uvm_pmr_size_cmp(const struct vm_page *, const struct vm_page *);
extern const struct rb_type *const uvm_pmr_addr_RBT_TYPE; __attribute__((__unused__)) static inline void uvm_pmr_addr_RBT_INIT(struct uvm_pmr_addr *head) { _rb_init(&head->rbh_root); } __attribute__((__unused__)) static inline struct vm_page * uvm_pmr_addr_RBT_INSERT(struct uvm_pmr_addr *head, struct vm_page *elm) { return _rb_insert(uvm_pmr_addr_RBT_TYPE, &head->rbh_root, elm); } __attribute__((__unused__)) static inline struct vm_page * uvm_pmr_addr_RBT_REMOVE(struct uvm_pmr_addr *head, struct vm_page *elm) { return _rb_remove(uvm_pmr_addr_RBT_TYPE, &head->rbh_root, elm); } __attribute__((__unused__)) static inline struct vm_page * uvm_pmr_addr_RBT_FIND(struct uvm_pmr_addr *head, const struct vm_page *key) { return _rb_find(uvm_pmr_addr_RBT_TYPE, &head->rbh_root, key); } __attribute__((__unused__)) static inline struct vm_page * uvm_pmr_addr_RBT_NFIND(struct uvm_pmr_addr *head, const struct vm_page *key) { return _rb_nfind(uvm_pmr_addr_RBT_TYPE, &head->rbh_root, key); } __attribute__((__unused__)) static inline struct vm_page * uvm_pmr_addr_RBT_ROOT(struct uvm_pmr_addr *head) { return _rb_root(uvm_pmr_addr_RBT_TYPE, &head->rbh_root); } __attribute__((__unused__)) static inline int uvm_pmr_addr_RBT_EMPTY(struct uvm_pmr_addr *head) { return _rb_empty(&head->rbh_root); } __attribute__((__unused__)) static inline struct vm_page * uvm_pmr_addr_RBT_MIN(struct uvm_pmr_addr *head) { return _rb_min(uvm_pmr_addr_RBT_TYPE, &head->rbh_root); } __attribute__((__unused__)) static inline struct vm_page * uvm_pmr_addr_RBT_MAX(struct uvm_pmr_addr *head) { return _rb_max(uvm_pmr_addr_RBT_TYPE, &head->rbh_root); } __attribute__((__unused__)) static inline struct vm_page * uvm_pmr_addr_RBT_NEXT(struct vm_page *elm) { return _rb_next(uvm_pmr_addr_RBT_TYPE, elm); } __attribute__((__unused__)) static inline struct vm_page * uvm_pmr_addr_RBT_PREV(struct vm_page *elm) { return _rb_prev(uvm_pmr_addr_RBT_TYPE, elm); } __attribute__((__unused__)) static inline struct vm_page * uvm_pmr_addr_RBT_LEFT(struct vm_page *elm) { return _rb_left(uvm_pmr_addr_RBT_TYPE, elm); } __attribute__((__unused__)) static inline struct vm_page * uvm_pmr_addr_RBT_RIGHT(struct vm_page *elm) { return _rb_right(uvm_pmr_addr_RBT_TYPE, elm); } __attribute__((__unused__)) static inline struct vm_page * uvm_pmr_addr_RBT_PARENT(struct vm_page *elm) { return _rb_parent(uvm_pmr_addr_RBT_TYPE, elm); } __attribute__((__unused__)) static inline void uvm_pmr_addr_RBT_SET_LEFT(struct vm_page *elm, struct vm_page *left) { return _rb_set_left(uvm_pmr_addr_RBT_TYPE, elm, left); } __attribute__((__unused__)) static inline void uvm_pmr_addr_RBT_SET_RIGHT(struct vm_page *elm, struct vm_page *right) { return _rb_set_right(uvm_pmr_addr_RBT_TYPE, elm, right); } __attribute__((__unused__)) static inline void uvm_pmr_addr_RBT_SET_PARENT(struct vm_page *elm, struct vm_page *parent) { return _rb_set_parent(uvm_pmr_addr_RBT_TYPE, elm, parent); } __attribute__((__unused__)) static inline void uvm_pmr_addr_RBT_POISON(struct vm_page *elm, unsigned long poison) { return _rb_poison(uvm_pmr_addr_RBT_TYPE, elm, poison); } __attribute__((__unused__)) static inline int uvm_pmr_addr_RBT_CHECK(struct vm_page *elm, unsigned long poison) { return _rb_check(uvm_pmr_addr_RBT_TYPE, elm, poison); };
extern const struct rb_type *const uvm_pmr_size_RBT_TYPE; __attribute__((__unused__)) static inline void uvm_pmr_size_RBT_INIT(struct uvm_pmr_size *head) { _rb_init(&head->rbh_root); } __attribute__((__unused__)) static inline struct vm_page * uvm_pmr_size_RBT_INSERT(struct uvm_pmr_size *head, struct vm_page *elm) { return _rb_insert(uvm_pmr_size_RBT_TYPE, &head->rbh_root, elm); } __attribute__((__unused__)) static inline struct vm_page * uvm_pmr_size_RBT_REMOVE(struct uvm_pmr_size *head, struct vm_page *elm) { return _rb_remove(uvm_pmr_size_RBT_TYPE, &head->rbh_root, elm); } __attribute__((__unused__)) static inline struct vm_page * uvm_pmr_size_RBT_FIND(struct uvm_pmr_size *head, const struct vm_page *key) { return _rb_find(uvm_pmr_size_RBT_TYPE, &head->rbh_root, key); } __attribute__((__unused__)) static inline struct vm_page * uvm_pmr_size_RBT_NFIND(struct uvm_pmr_size *head, const struct vm_page *key) { return _rb_nfind(uvm_pmr_size_RBT_TYPE, &head->rbh_root, key); } __attribute__((__unused__)) static inline struct vm_page * uvm_pmr_size_RBT_ROOT(struct uvm_pmr_size *head) { return _rb_root(uvm_pmr_size_RBT_TYPE, &head->rbh_root); } __attribute__((__unused__)) static inline int uvm_pmr_size_RBT_EMPTY(struct uvm_pmr_size *head) { return _rb_empty(&head->rbh_root); } __attribute__((__unused__)) static inline struct vm_page * uvm_pmr_size_RBT_MIN(struct uvm_pmr_size *head) { return _rb_min(uvm_pmr_size_RBT_TYPE, &head->rbh_root); } __attribute__((__unused__)) static inline struct vm_page * uvm_pmr_size_RBT_MAX(struct uvm_pmr_size *head) { return _rb_max(uvm_pmr_size_RBT_TYPE, &head->rbh_root); } __attribute__((__unused__)) static inline struct vm_page * uvm_pmr_size_RBT_NEXT(struct vm_page *elm) { return _rb_next(uvm_pmr_size_RBT_TYPE, elm); } __attribute__((__unused__)) static inline struct vm_page * uvm_pmr_size_RBT_PREV(struct vm_page *elm) { return _rb_prev(uvm_pmr_size_RBT_TYPE, elm); } __attribute__((__unused__)) static inline struct vm_page * uvm_pmr_size_RBT_LEFT(struct vm_page *elm) { return _rb_left(uvm_pmr_size_RBT_TYPE, elm); } __attribute__((__unused__)) static inline struct vm_page * uvm_pmr_size_RBT_RIGHT(struct vm_page *elm) { return _rb_right(uvm_pmr_size_RBT_TYPE, elm); } __attribute__((__unused__)) static inline struct vm_page * uvm_pmr_size_RBT_PARENT(struct vm_page *elm) { return _rb_parent(uvm_pmr_size_RBT_TYPE, elm); } __attribute__((__unused__)) static inline void uvm_pmr_size_RBT_SET_LEFT(struct vm_page *elm, struct vm_page *left) { return _rb_set_left(uvm_pmr_size_RBT_TYPE, elm, left); } __attribute__((__unused__)) static inline void uvm_pmr_size_RBT_SET_RIGHT(struct vm_page *elm, struct vm_page *right) { return _rb_set_right(uvm_pmr_size_RBT_TYPE, elm, right); } __attribute__((__unused__)) static inline void uvm_pmr_size_RBT_SET_PARENT(struct vm_page *elm, struct vm_page *parent) { return _rb_set_parent(uvm_pmr_size_RBT_TYPE, elm, parent); } __attribute__((__unused__)) static inline void uvm_pmr_size_RBT_POISON(struct vm_page *elm, unsigned long poison) { return _rb_poison(uvm_pmr_size_RBT_TYPE, elm, poison); } __attribute__((__unused__)) static inline int uvm_pmr_size_RBT_CHECK(struct vm_page *elm, unsigned long poison) { return _rb_check(uvm_pmr_size_RBT_TYPE, elm, poison); };
extern const struct rb_type *const uvm_pmemrange_addr_RBT_TYPE; __attribute__((__unused__)) static inline void uvm_pmemrange_addr_RBT_INIT(struct uvm_pmemrange_addr *head) { _rb_init(&head->rbh_root); } __attribute__((__unused__)) static inline struct uvm_pmemrange * uvm_pmemrange_addr_RBT_INSERT(struct uvm_pmemrange_addr *head, struct uvm_pmemrange *elm) { return _rb_insert(uvm_pmemrange_addr_RBT_TYPE, &head->rbh_root, elm); } __attribute__((__unused__)) static inline struct uvm_pmemrange * uvm_pmemrange_addr_RBT_REMOVE(struct uvm_pmemrange_addr *head, struct uvm_pmemrange *elm) { return _rb_remove(uvm_pmemrange_addr_RBT_TYPE, &head->rbh_root, elm); } __attribute__((__unused__)) static inline struct uvm_pmemrange * uvm_pmemrange_addr_RBT_FIND(struct uvm_pmemrange_addr *head, const struct uvm_pmemrange *key) { return _rb_find(uvm_pmemrange_addr_RBT_TYPE, &head->rbh_root, key); } __attribute__((__unused__)) static inline struct uvm_pmemrange * uvm_pmemrange_addr_RBT_NFIND(struct uvm_pmemrange_addr *head, const struct uvm_pmemrange *key) { return _rb_nfind(uvm_pmemrange_addr_RBT_TYPE, &head->rbh_root, key); } __attribute__((__unused__)) static inline struct uvm_pmemrange * uvm_pmemrange_addr_RBT_ROOT(struct uvm_pmemrange_addr *head) { return _rb_root(uvm_pmemrange_addr_RBT_TYPE, &head->rbh_root); } __attribute__((__unused__)) static inline int uvm_pmemrange_addr_RBT_EMPTY(struct uvm_pmemrange_addr *head) { return _rb_empty(&head->rbh_root); } __attribute__((__unused__)) static inline struct uvm_pmemrange * uvm_pmemrange_addr_RBT_MIN(struct uvm_pmemrange_addr *head) { return _rb_min(uvm_pmemrange_addr_RBT_TYPE, &head->rbh_root); } __attribute__((__unused__)) static inline struct uvm_pmemrange * uvm_pmemrange_addr_RBT_MAX(struct uvm_pmemrange_addr *head) { return _rb_max(uvm_pmemrange_addr_RBT_TYPE, &head->rbh_root); } __attribute__((__unused__)) static inline struct uvm_pmemrange * uvm_pmemrange_addr_RBT_NEXT(struct uvm_pmemrange *elm) { return _rb_next(uvm_pmemrange_addr_RBT_TYPE, elm); } __attribute__((__unused__)) static inline struct uvm_pmemrange * uvm_pmemrange_addr_RBT_PREV(struct uvm_pmemrange *elm) { return _rb_prev(uvm_pmemrange_addr_RBT_TYPE, elm); } __attribute__((__unused__)) static inline struct uvm_pmemrange * uvm_pmemrange_addr_RBT_LEFT(struct uvm_pmemrange *elm) { return _rb_left(uvm_pmemrange_addr_RBT_TYPE, elm); } __attribute__((__unused__)) static inline struct uvm_pmemrange * uvm_pmemrange_addr_RBT_RIGHT(struct uvm_pmemrange *elm) { return _rb_right(uvm_pmemrange_addr_RBT_TYPE, elm); } __attribute__((__unused__)) static inline struct uvm_pmemrange * uvm_pmemrange_addr_RBT_PARENT(struct uvm_pmemrange *elm) { return _rb_parent(uvm_pmemrange_addr_RBT_TYPE, elm); } __attribute__((__unused__)) static inline void uvm_pmemrange_addr_RBT_SET_LEFT(struct uvm_pmemrange *elm, struct uvm_pmemrange *left) { return _rb_set_left(uvm_pmemrange_addr_RBT_TYPE, elm, left); } __attribute__((__unused__)) static inline void uvm_pmemrange_addr_RBT_SET_RIGHT(struct uvm_pmemrange *elm, struct uvm_pmemrange *right) { return _rb_set_right(uvm_pmemrange_addr_RBT_TYPE, elm, right); } __attribute__((__unused__)) static inline void uvm_pmemrange_addr_RBT_SET_PARENT(struct uvm_pmemrange *elm, struct uvm_pmemrange *parent) { return _rb_set_parent(uvm_pmemrange_addr_RBT_TYPE, elm, parent); } __attribute__((__unused__)) static inline void uvm_pmemrange_addr_RBT_POISON(struct uvm_pmemrange *elm, unsigned long poison) { return _rb_poison(uvm_pmemrange_addr_RBT_TYPE, elm, poison); } __attribute__((__unused__)) static inline int uvm_pmemrange_addr_RBT_CHECK(struct uvm_pmemrange *elm, unsigned long poison) { return _rb_check(uvm_pmemrange_addr_RBT_TYPE, elm, poison); };
struct vm_page *uvm_pmr_insert_addr(struct uvm_pmemrange *,
       struct vm_page *, int);
void uvm_pmr_insert_size(struct uvm_pmemrange *,
       struct vm_page *);
struct vm_page *uvm_pmr_insert(struct uvm_pmemrange *,
       struct vm_page *, int);
void uvm_pmr_remove_addr(struct uvm_pmemrange *,
       struct vm_page *);
void uvm_pmr_remove_size(struct uvm_pmemrange *,
       struct vm_page *);
void uvm_pmr_remove(struct uvm_pmemrange *,
       struct vm_page *);
struct vm_page *uvm_pmr_extract_range(struct uvm_pmemrange *,
       struct vm_page *, paddr_t, paddr_t,
       struct pglist *);
struct uvm {
 struct pglist page_active;
 struct pglist page_inactive_swp;
 struct pglist page_inactive_obj;
 struct mutex pageqlock;
 struct mutex fpageqlock;
 boolean_t page_init_done;
 struct uvm_pmr_control pmr_control;
 int pagedaemon;
 struct proc *pagedaemon_proc;
 int aiodoned;
 struct proc *aiodoned_proc;
 struct mutex aiodoned_lock;
 struct { struct vm_map_entry *slh_first; } kentry_free;
 struct { struct buf *tqh_first; struct buf **tqh_last; } aio_done;
 struct uvm_object *kernel_object;
};
extern struct uvm uvm;
struct vm_map_entry *uvm_map_entrybyaddr(struct uvm_map_addr *, vaddr_t);
int uvm_map_isavail(struct vm_map *,
       struct uvm_addr_state *,
       struct vm_map_entry **, struct vm_map_entry**,
       vaddr_t, vsize_t);
struct uvm_addr_state *uvm_map_uaddr(struct vm_map *, vaddr_t);
struct uvm_addr_state *uvm_map_uaddr_e(struct vm_map *, struct vm_map_entry *);
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
typedef __uint8_t Elf_Byte;
typedef __uint32_t Elf32_Addr;
typedef __uint32_t Elf32_Off;
typedef __int32_t Elf32_Sword;
typedef __uint32_t Elf32_Word;
typedef __uint16_t Elf32_Half;
typedef __uint64_t Elf64_Addr;
typedef __uint64_t Elf64_Off;
typedef __int32_t Elf64_Shalf;
typedef __int32_t Elf64_Sword;
typedef __uint32_t Elf64_Word;
typedef __int64_t Elf64_Sxword;
typedef __uint64_t Elf64_Xword;
typedef __uint32_t Elf64_Half;
typedef __uint16_t Elf64_Quarter;
typedef struct elfhdr {
 unsigned char e_ident[16];
 Elf32_Half e_type;
 Elf32_Half e_machine;
 Elf32_Word e_version;
 Elf32_Addr e_entry;
 Elf32_Off e_phoff;
 Elf32_Off e_shoff;
 Elf32_Word e_flags;
 Elf32_Half e_ehsize;
 Elf32_Half e_phentsize;
 Elf32_Half e_phnum;
 Elf32_Half e_shentsize;
 Elf32_Half e_shnum;
 Elf32_Half e_shstrndx;
} Elf32_Ehdr;
typedef struct {
 unsigned char e_ident[16];
 Elf64_Quarter e_type;
 Elf64_Quarter e_machine;
 Elf64_Half e_version;
 Elf64_Addr e_entry;
 Elf64_Off e_phoff;
 Elf64_Off e_shoff;
 Elf64_Half e_flags;
 Elf64_Quarter e_ehsize;
 Elf64_Quarter e_phentsize;
 Elf64_Quarter e_phnum;
 Elf64_Quarter e_shentsize;
 Elf64_Quarter e_shnum;
 Elf64_Quarter e_shstrndx;
} Elf64_Ehdr;
typedef struct {
 Elf32_Word sh_name;
 Elf32_Word sh_type;
 Elf32_Word sh_flags;
 Elf32_Addr sh_addr;
 Elf32_Off sh_offset;
 Elf32_Word sh_size;
 Elf32_Word sh_link;
 Elf32_Word sh_info;
 Elf32_Word sh_addralign;
 Elf32_Word sh_entsize;
} Elf32_Shdr;
typedef struct {
 Elf64_Half sh_name;
 Elf64_Half sh_type;
 Elf64_Xword sh_flags;
 Elf64_Addr sh_addr;
 Elf64_Off sh_offset;
 Elf64_Xword sh_size;
 Elf64_Half sh_link;
 Elf64_Half sh_info;
 Elf64_Xword sh_addralign;
 Elf64_Xword sh_entsize;
} Elf64_Shdr;
typedef struct elf32_sym {
 Elf32_Word st_name;
 Elf32_Addr st_value;
 Elf32_Word st_size;
 unsigned char st_info;
 unsigned char st_other;
 Elf32_Half st_shndx;
} Elf32_Sym;
typedef struct {
 Elf64_Half st_name;
 Elf_Byte st_info;
 Elf_Byte st_other;
 Elf64_Quarter st_shndx;
 Elf64_Xword st_value;
 Elf64_Xword st_size;
} Elf64_Sym;
typedef struct {
 Elf32_Addr r_offset;
 Elf32_Word r_info;
} Elf32_Rel;
typedef struct {
 Elf32_Addr r_offset;
 Elf32_Word r_info;
 Elf32_Sword r_addend;
} Elf32_Rela;
typedef struct {
 Elf64_Xword r_offset;
 Elf64_Xword r_info;
} Elf64_Rel;
typedef struct {
 Elf64_Xword r_offset;
 Elf64_Xword r_info;
 Elf64_Sxword r_addend;
} Elf64_Rela;
typedef struct {
 Elf32_Word p_type;
 Elf32_Off p_offset;
 Elf32_Addr p_vaddr;
 Elf32_Addr p_paddr;
 Elf32_Word p_filesz;
 Elf32_Word p_memsz;
 Elf32_Word p_flags;
 Elf32_Word p_align;
} Elf32_Phdr;
typedef struct {
 Elf64_Half p_type;
 Elf64_Half p_flags;
 Elf64_Off p_offset;
 Elf64_Addr p_vaddr;
 Elf64_Addr p_paddr;
 Elf64_Xword p_filesz;
 Elf64_Xword p_memsz;
 Elf64_Xword p_align;
} Elf64_Phdr;
typedef struct {
 Elf32_Sword d_tag;
 union {
  Elf32_Word d_val;
  Elf32_Addr d_ptr;
 } d_un;
} Elf32_Dyn;
typedef struct {
 Elf64_Xword d_tag;
 union {
  Elf64_Addr d_ptr;
  Elf64_Xword d_val;
 } d_un;
} Elf64_Dyn;
typedef struct {
 Elf32_Word n_namesz;
 Elf32_Word n_descsz;
 Elf32_Word n_type;
} Elf32_Nhdr;
typedef struct {
 Elf64_Half n_namesz;
 Elf64_Half n_descsz;
 Elf64_Half n_type;
} Elf64_Nhdr;
typedef struct {
 Elf32_Word namesz;
 Elf32_Word descsz;
 Elf32_Word type;
} Elf32_Note;
typedef struct {
 Elf64_Half namesz;
 Elf64_Half descsz;
 Elf64_Half type;
} Elf64_Note;
struct elfcore_procinfo {
 uint32_t cpi_version;
 uint32_t cpi_cpisize;
 uint32_t cpi_signo;
 uint32_t cpi_sigcode;
 uint32_t cpi_sigpend;
 uint32_t cpi_sigmask;
 uint32_t cpi_sigignore;
 uint32_t cpi_sigcatch;
 int32_t cpi_pid;
 int32_t cpi_ppid;
 int32_t cpi_pgrp;
 int32_t cpi_sid;
 uint32_t cpi_ruid;
 uint32_t cpi_euid;
 uint32_t cpi_svuid;
 uint32_t cpi_rgid;
 uint32_t cpi_egid;
 uint32_t cpi_svgid;
 int8_t cpi_name[32];
};
typedef struct {
 Elf32_Sword au_id;
 Elf32_Word au_v;
} Aux32Info;
typedef struct {
 Elf64_Shalf au_id;
 Elf64_Xword au_v;
} Aux64Info;
enum AuxID {
 AUX_null = 0,
 AUX_ignore = 1,
 AUX_execfd = 2,
 AUX_phdr = 3,
 AUX_phent = 4,
 AUX_phnum = 5,
 AUX_pagesz = 6,
 AUX_base = 7,
 AUX_flags = 8,
 AUX_entry = 9,
 AUX_sun_uid = 2000,
 AUX_sun_ruid = 2001,
 AUX_sun_gid = 2002,
 AUX_sun_rgid = 2003
};
struct elf_args {
        u_long arg_entry;
        u_long arg_interp;
        u_long arg_phaddr;
        u_long arg_phentsize;
        u_long arg_phnum;
};
struct exec_package;
int exec_elf_makecmds(struct proc *, struct exec_package *);
void random_start(void);
void enqueue_randomness(unsigned int, unsigned int);
void suspend_randomness(void);
void resume_randomness(char *, size_t);
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
struct frame32 {
 int32_t fr_local[8];
 int32_t fr_arg[6];
 u_int32_t fr_fp;
 u_int32_t fr_pc;
 int32_t fr_xxx;
 int32_t fr_argd[6];
 int32_t fr_argx[1];
};
struct frame64 {
 int64_t fr_local[8];
 int64_t fr_arg[6];
 u_int64_t fr_fp;
 u_int64_t fr_pc;
 int64_t fr_argd[6];
 int64_t fr_argx[0];
};
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
typedef u_int64_t cell_t;
int OF_test (char *service);
int OF_test_method (int handle, char *method);
int OF_getproplen (int handle, char *prop);
int OF_stdin (void);
int OF_stdout (void);
void OF_set_symbol_lookup (void (*s2v)(void *), void (*v2s)(void *));
void OF_poweroff (void);
void OF_sym2val (void *);
void OF_val2sym (void *);
int OF_milliseconds (void);
int OF_searchprop (int node, char *prop, void *buf, int buflen);
int OF_mapintr(int node, int *interrupt, int validlen, int buflen);
void (*OF_set_callback(void (*)(void *)))(void *);
struct mem_region {
 u_int64_t start;
 u_int64_t size;
};
int prom_set_trap_table(vaddr_t tba, paddr_t mmfsa);
paddr_t prom_vtop(vaddr_t vaddr);
vaddr_t prom_claim_virt(vaddr_t vaddr, int len);
vaddr_t prom_alloc_virt(int len, int align);
int prom_free_virt(vaddr_t vaddr, int len);
int prom_unmap_virt(vaddr_t vaddr, int len);
int prom_map_phys(paddr_t paddr, off_t size, vaddr_t vaddr, int mode);
paddr_t prom_alloc_phys(int len, int align);
paddr_t prom_claim_phys(paddr_t phys, int len);
int prom_free_phys(paddr_t paddr, int len);
paddr_t prom_get_msgbuf(int len, int align);
int prom_itlb_load(int index, u_int64_t data, vaddr_t vaddr);
int prom_dtlb_load(int index, u_int64_t data, vaddr_t vaddr);
void prom_start_cpu(int cpu, void *func, long arg);
void prom_start_cpu_by_cpuid(int cpu, void *func, long arg);
const char *prom_serengeti_set_console_input(const char *);
time_t prom_opl_get_tod(void);
uint64_t prom_set_sun4v_api_version(uint64_t, uint64_t, uint64_t, uint64_t *);
void prom_sun4v_soft_state_supported(void);
void prom_printf(const char *, ...);
enum vactype { VAC_NONE, VAC_WRITETHROUGH, VAC_WRITEBACK };
extern enum vactype vactype;
void cache_enable(void);
int cache_flush_page(paddr_t);
int cache_flush(vaddr_t, vsize_t);
void us_dcache_flush_page(paddr_t);
void us3_dcache_flush_page(paddr_t);
void no_dcache_flush_page(paddr_t);
void cache_flush_virt(vaddr_t, vsize_t);
void cache_flush_phys(paddr_t, psize_t, int);
struct cacheinfo {
 void (*c_dcache_flush_page)(paddr_t);
 int c_totalsize;
 int c_enabled;
 int c_hwflush;
 int c_linesize;
 int c_l2linesize;
 int c_physical;
 int c_split;
 int ic_totalsize;
 int ic_enabled;
 int ic_linesize;
 int ic_l2linesize;
 int dc_totalsize;
 int dc_enabled;
 int dc_linesize;
 int dc_l2linesize;
 int ec_totalsize;
 int ec_enabled;
 int ec_linesize;
 int ec_l2linesize;
};
extern struct cacheinfo cacheinfo;
struct cachestats {
 int cs_npgflush;
 int cs_nraflush;
};
int _bus_dmamap_create(bus_dma_tag_t, bus_dma_tag_t, bus_size_t, int,
     bus_size_t, bus_size_t, int, bus_dmamap_t *);
void _bus_dmamap_destroy(bus_dma_tag_t, bus_dma_tag_t, bus_dmamap_t);
int _bus_dmamap_load(bus_dma_tag_t, bus_dma_tag_t, bus_dmamap_t, void *,
            bus_size_t, struct proc *, int);
int _bus_dmamap_load_mbuf(bus_dma_tag_t, bus_dma_tag_t, bus_dmamap_t,
            struct mbuf *, int);
int _bus_dmamap_load_uio(bus_dma_tag_t, bus_dma_tag_t, bus_dmamap_t,
            struct uio *, int);
int _bus_dmamap_load_raw(bus_dma_tag_t, bus_dma_tag_t, bus_dmamap_t,
            bus_dma_segment_t *, int, bus_size_t, int);
int _bus_dmamap_load_buffer(bus_dma_tag_t, bus_dmamap_t, void *,
     bus_size_t, struct proc *, int, bus_addr_t *, int *, int);
void _bus_dmamap_unload(bus_dma_tag_t, bus_dma_tag_t, bus_dmamap_t);
void _bus_dmamap_sync(bus_dma_tag_t, bus_dma_tag_t, bus_dmamap_t,
     bus_addr_t, bus_size_t, int);
int _bus_dmamem_alloc(bus_dma_tag_t, bus_dma_tag_t tag, bus_size_t size,
            bus_size_t alignment, bus_size_t boundary,
            bus_dma_segment_t *segs, int nsegs, int *rsegs, int flags);
void _bus_dmamem_free(bus_dma_tag_t tag, bus_dma_tag_t,
     bus_dma_segment_t *segs, int nsegs);
int _bus_dmamem_map(bus_dma_tag_t tag, bus_dma_tag_t,
     bus_dma_segment_t *segs, int nsegs, size_t size, caddr_t *kvap,
     int flags);
void _bus_dmamem_unmap(bus_dma_tag_t tag, bus_dma_tag_t, caddr_t kva,
            size_t size);
paddr_t _bus_dmamem_mmap(bus_dma_tag_t tag, bus_dma_tag_t,
     bus_dma_segment_t *segs, int nsegs, off_t off, int prot, int flags);
int _bus_dmamem_alloc_range(bus_dma_tag_t tag, bus_dma_tag_t,
     bus_size_t size, bus_size_t alignment, bus_size_t boundary,
            bus_dma_segment_t *segs, int nsegs, int *rsegs, int flags,
            vaddr_t low, vaddr_t high);
int bus_space_debug = 0;
struct vm_map *exec_map = ((void *)0);
struct vm_map *phys_map = ((void *)0);
struct uvm_constraint_range dma_constraint = { 0x0, (paddr_t)-1 };
struct uvm_constraint_range *uvm_md_constraints[] = { ((void *)0) };
int physmem;
extern caddr_t msgbufaddr;
int sparc_led_blink = 1;
int allowaperture = 0;
extern int ceccerrs;
extern int64_t cecclast;
int safepri = 0;
void blink_led_timeout(void *);
void dumpsys(void);
void stackdump(void);
void
cpu_startup(void)
{
 vaddr_t minaddr, maxaddr;
 extern struct user *proc0paddr;
 proc0.p_addr = proc0paddr;
 printf("%s", version);
 printf("real mem = %lu (%luMB)\n", ((paddr_t)((psize_t)physmem) << 13),
     ((paddr_t)((psize_t)physmem) << 13)/1024/1024);
 minaddr = ((kernel_map)->min_offset);
 exec_map = uvm_km_suballoc(kernel_map, &minaddr, &maxaddr,
     16*(256 * 1024), 0x01, 0, ((void *)0));
 minaddr = ((kernel_map)->min_offset);
 phys_map = uvm_km_suballoc(kernel_map, &minaddr, &maxaddr,
     (300*(1 << 13)), 0, 0, ((void *)0));
 printf("avail mem = %lu (%luMB)\n", ((paddr_t)((psize_t)uvmexp.free) << 13),
     ((paddr_t)((psize_t)uvmexp.free) << 13)/1024/1024);
 bufinit();
}
void
setregs(p, pack, stack, retval)
 struct proc *p;
 struct exec_package *pack;
 vaddr_t stack;
 register_t *retval;
{
 struct trapframe64 *tf = p->p_md.md_tf;
 int64_t tstate;
 int pstate = (0x080|0x002);
 Elf64_Ehdr *eh = pack->ep_hdr;
 arc4random_buf(&p->p_addr->u_pcb.pcb_wcookie,
     sizeof(p->p_addr->u_pcb.pcb_wcookie));
 switch (p->p_addr->u_pcb.pcb_wcookie % 3) {
 case 0:
  p->p_addr->u_pcb.pcb_wcookie |= 0x3;
  break;
 case 1:
  p->p_addr->u_pcb.pcb_wcookie = 1 |
      (p->p_addr->u_pcb.pcb_wcookie & ~0x3);
  break;
 case 2:
  p->p_addr->u_pcb.pcb_wcookie = 2 |
      (p->p_addr->u_pcb.pcb_wcookie & ~0x3);
  break;
 }
 switch ((eh->e_flags & 0x3)) {
 default:
  printf("Unknown memory model %d\n",
         (eh->e_flags & 0x3));
 case 0x0:
  pstate = 0x000|0x002;
  break;
 case 0x1:
  pstate = 0x040|0x002;
  break;
 case 0x2:
  pstate = 0x080|0x002;
  break;
 }
 tstate = ((u_int64_t)0x82 << 24) |
     (pstate << 8) | (tf->tf_tstate & 0x01f);
 if (p->p_md.md_fpstate != ((void *)0)) {
  fpusave_proc(p, 0);
  free(p->p_md.md_fpstate, 42, sizeof(struct fpstate64));
  p->p_md.md_fpstate = ((void *)0);
 }
 __builtin_bzero(((caddr_t)tf), (sizeof *tf));
 tf->tf_tstate = tstate;
 tf->tf_pc = pack->ep_entry & ~3;
 tf->tf_npc = tf->tf_pc + 4;
 tf->tf_global[2] = tf->tf_pc;
 stack -= sizeof(struct rwindow64);
 tf->tf_out[6] = stack - (2048-1);
 retval[1] = 0;
}
struct sigframe {
 int sf_signo;
 int sf_code;
 siginfo_t *sf_sip;
 struct sigcontext sf_sc;
 siginfo_t sf_si;
};
int
cpu_sysctl(int *name, u_int namelen, void *oldp, size_t *oldlenp, void *newp,
    size_t newlen, struct proc *p)
{
 int oldval, ret;
 if (namelen != 1)
  return (20);
 switch (name[0]) {
 case 2:
  oldval = sparc_led_blink;
  ret = sysctl_int(oldp, oldlenp, newp, newlen,
      &sparc_led_blink);
  if (!oldval && sparc_led_blink > oldval)
   blink_led_timeout(((void *)0));
  return (ret);
 case 3:
  if (securelevel > 0)
   return (sysctl_int_lower(oldp, oldlenp, newp, newlen,
       &allowaperture));
  else
   return (sysctl_int(oldp, oldlenp, newp, newlen,
       &allowaperture));
 case 4:
  return (sysctl_rdint(oldp, oldlenp, newp, cputyp));
 case 5:
  return (sysctl_rdint(oldp, oldlenp, newp, ceccerrs));
 case 6:
  return (sysctl_rdquad(oldp, oldlenp, newp, cecclast));
 default:
  return (45);
 }
}
void
sendsig(sig_t catcher, int sig, int mask, u_long code, int type,
    union sigval val)
{
 struct proc *p = (__curcpu->ci_self)->ci_curproc;
 struct sigacts *psp = p->p_p->ps_sigacts;
 struct sigframe *fp;
 struct trapframe64 *tf;
 vaddr_t addr, oldsp, newsp;
 struct sigframe sf;
 tf = p->p_md.md_tf;
 oldsp = tf->tf_out[6] + (2048-1);
 if ((p->p_sigstk.ss_flags & 0x0004) == 0 &&
     !sigonstack(oldsp) && (psp->ps_sigonstack & (1U << ((sig)-1))))
  fp = (struct sigframe *)((caddr_t)p->p_sigstk.ss_sp +
      p->p_sigstk.ss_size);
 else
  fp = (struct sigframe *)oldsp;
 fp = (struct sigframe *)((long)(fp - 1) & ~0x0f);
 __builtin_bzero((&sf), (sizeof(sf)));
 sf.sf_signo = sig;
 sf.sf_sip = ((void *)0);
 sf.sf_sc.sc_mask = mask;
 sf.sf_sc.sc_sp = (long)tf->tf_out[6];
 sf.sf_sc.sc_pc = tf->tf_pc;
 sf.sf_sc.sc_npc = tf->tf_npc;
 sf.sf_sc.sc_tstate = tf->tf_tstate;
 sf.sf_sc.sc_g1 = tf->tf_global[1];
 sf.sf_sc.sc_o0 = tf->tf_out[0];
 if (psp->ps_siginfo & (1U << ((sig)-1))) {
  sf.sf_sip = &fp->sf_si;
  initsiginfo(&sf.sf_si, sig, code, type, val);
 }
 newsp = (vaddr_t)fp - sizeof(struct rwindow64);
 write_user_windows();
 sf.sf_sc.sc_cookie = (long)&fp->sf_sc ^ p->p_p->ps_sigcookie;
 if (rwindow_save(p) || copyout((caddr_t)&sf, (caddr_t)fp, sizeof sf) ||
     copyout(&(tf->tf_out[6]), (&(((struct rwindow64 *)newsp)->rw_in[6])), sizeof(tf->tf_out[6]))) {
  sigexit(p, 4);
 }
 addr = p->p_p->ps_sigcode;
 tf->tf_global[1] = (vaddr_t)catcher;
 tf->tf_pc = addr;
 tf->tf_npc = addr + 4;
 tf->tf_out[6] = newsp - (2048-1);
}
int
sys_sigreturn(struct proc *p, void *v, register_t *retval)
{
 struct sys_sigreturn_args *uap = v;
 struct sigcontext ksc, *scp = ((uap)->sigcntxp.be.datum);
 struct trapframe64 *tf;
 int error = 22;
 if (((p)->p_md.md_tf->tf_pc) != p->p_p->ps_sigcoderet) {
  sigexit(p, 4);
  return (1);
 }
 write_user_windows();
 if (rwindow_save(p)) {
  sigexit(p, 4);
 }
 if ((vaddr_t)scp & 3)
  return (22);
 if ((error = copyin((caddr_t)scp, &ksc, sizeof ksc)))
  return (error);
 if (ksc.sc_cookie != ((long)scp ^ p->p_p->ps_sigcookie)) {
  sigexit(p, 4);
  return (14);
 }
 ksc.sc_cookie = 0;
 (void)copyout(&ksc.sc_cookie, (caddr_t)scp +
     __builtin_offsetof(struct sigcontext, sc_cookie), sizeof (ksc.sc_cookie));
 scp = &ksc;
 tf = p->p_md.md_tf;
 if (((ksc.sc_pc | ksc.sc_npc) & 3) != 0 ||
     (ksc.sc_pc == 0) || (ksc.sc_npc == 0)) {
  return (22);
 }
 tf->tf_tstate = (u_int64_t)(tf->tf_tstate & ~0xff00000000LL) | (scp->sc_tstate & 0xff00000000LL);
 tf->tf_pc = (u_int64_t)scp->sc_pc;
 tf->tf_npc = (u_int64_t)scp->sc_npc;
 tf->tf_global[1] = (u_int64_t)scp->sc_g1;
 tf->tf_out[0] = (u_int64_t)scp->sc_o0;
 tf->tf_out[6] = (u_int64_t)scp->sc_sp;
 p->p_sigmask = scp->sc_mask & ~((1U << ((9)-1)) | (1U << ((17)-1)));
 return (-2);
}
void
signotify(struct proc *p)
{
 ((p)->p_md.md_astpending = 1);
 cpu_unidle(p->p_cpu);
}
int waittime = -1;
struct pcb dumppcb;
__attribute__((__noreturn__)) void
boot(int howto)
{
 int i;
 static char str[128];
 if (cold) {
  if ((howto & 0x4000) == 0)
   howto |= 0x0008;
  goto haltsys;
 }
 fb_unblank();
 boothowto = howto;
 if ((howto & 0x0004) == 0 && waittime < 0) {
  extern int sparc_clock_time_is_ok;
  waittime = 0;
  vfs_shutdown((__curcpu->ci_self)->ci_curproc);
  if ((howto & 0x0800) == 0 && sparc_clock_time_is_ok) {
   resettodr();
  } else {
   printf("WARNING: not updating battery clock\n");
  }
 }
 if_downall();
 uvm_shutdown();
 _splraise(15);
 cold = 1;
 if ((howto & 0x0100) != 0)
  dumpsys();
haltsys:
 config_suspend_all(6);
 if ((howto & 0x1000) != 0) {
  OF_poweroff();
  printf("WARNING: powerdown failed!\n");
 }
 if ((howto & 0x0008) != 0) {
  printf("halted\n\n");
  OF_exit();
  panic("PROM exit failed");
 }
 printf("rebooting\n\n");
 {
  i = 1;
  str[0] = '\0';
 }
 if ((howto & 0x0002) != 0)
  str[i++] = 's';
 if ((howto & 0x0040) != 0)
  str[i++] = 'd';
 if (i > 1) {
  if (str[0] == '\0')
   str[0] = '-';
  str[i] = 0;
 } else
  str[0] = 0;
 OF_boot(str);
 panic("cpu_reboot -- failed");
 for (;;)
  continue;
}
u_long dumpmag = 0x8fca0101;
int dumpsize = 0;
long dumplo = 0;
void
dumpconf(void)
{
 int nblks, dumpblks;
 if (dumpdev == (dev_t)(-1) ||
     (nblks = (bdevsw[((int32_t)(((u_int32_t)(dumpdev) >> 8) & 0xff))].d_psize)(dumpdev)) == 0)
  return;
 if (nblks <= ((1) << (13 - 9)))
  return;
 dumpblks = ((physmem) << (13 - 9)) + pmap_dumpsize();
 if (dumpblks > (nblks - ((1) << (13 - 9))))
  return;
 dumplo = nblks - dumpblks;
 dumpsize = physmem;
}
static vaddr_t dumpspace;
caddr_t
reserve_dumppages(p)
 caddr_t p;
{
 dumpspace = (vaddr_t)p;
 return (p + ((1 << 13)));
}
void
dumpsys(void)
{
 int psize;
 daddr_t blkno;
 int (*dump)(dev_t, daddr_t, caddr_t, size_t);
 int error = 0;
 struct mem_region *mp;
 extern struct mem_region *mem;
 snapshot(&dumppcb);
 stackdump();
 if (dumpdev == (dev_t)(-1))
  return;
 if (dumpsize == 0)
  dumpconf();
 if (!dumpspace) {
  printf("\nno address space available, dump not possible\n");
  return;
 }
 if (dumplo <= 0) {
  printf("\ndump to dev %u,%u not possible\n", ((int32_t)(((u_int32_t)(dumpdev) >> 8) & 0xff)),
      ((int32_t)((dumpdev) & 0xff) | (((dumpdev) & 0xffff0000) >> 8)));
  return;
 }
 printf("\ndumping to dev %u,%u offset %ld\n", ((int32_t)(((u_int32_t)(dumpdev) >> 8) & 0xff)),
     ((int32_t)((dumpdev) & 0xff) | (((dumpdev) & 0xffff0000) >> 8)), dumplo);
 psize = (*bdevsw[((int32_t)(((u_int32_t)(dumpdev) >> 8) & 0xff))].d_psize)(dumpdev);
 printf("dump ");
 if (psize == -1) {
  printf("area unavailable\n");
  return;
 }
 blkno = dumplo;
 dump = bdevsw[((int32_t)(((u_int32_t)(dumpdev) >> 8) & 0xff))].d_dump;
 error = pmap_dumpmmu(dump, blkno);
 blkno += pmap_dumpsize();
printf("starting dump, blkno %lld\n", (long long)blkno);
 for (mp = mem; mp->size; mp++) {
  u_int64_t i = 0, n;
  paddr_t maddr = mp->start;
  for (; i < mp->size; i += n) {
   n = mp->size - i;
   if (n > ((1 << 13)))
    n = ((1 << 13));
   if (i && (i % (1024*1024)) == 0)
    printf("%lld ", i / (1024*1024));
   (void) pmap_enter((&kernel_pmap_), dumpspace, maddr,
       0x01, 0x01 | 0x00000010);
   ;
   error = (*dump)(dumpdev, blkno,
     (caddr_t)dumpspace, (int)n);
   pmap_remove((&kernel_pmap_), dumpspace, dumpspace + n);
   ;
   if (error)
    break;
   maddr += n;
   blkno += ((n) >> 9);
  }
 }
 switch (error) {
 case 6:
  printf("device bad\n");
  break;
 case 14:
  printf("device not ready\n");
  break;
 case 22:
  printf("area improper\n");
  break;
 case 5:
  printf("i/o error\n");
  break;
 case 0:
  printf("succeeded\n");
  break;
 default:
  printf("error %d\n", error);
  break;
 }
}
void trapdump(struct trapframe64*);
void
trapdump(tf)
 struct trapframe64* tf;
{
 printf("TRAPFRAME: tstate=%llx pc=%llx npc=%llx y=%x\n",
        (unsigned long long)tf->tf_tstate, (unsigned long long)tf->tf_pc,
        (unsigned long long)tf->tf_npc, (unsigned)tf->tf_y);
 printf("%%g1-7: %llx %llx %llx %llx %llx %llx %llx\n",
        (unsigned long long)tf->tf_global[1],
        (unsigned long long)tf->tf_global[2],
        (unsigned long long)tf->tf_global[3],
        (unsigned long long)tf->tf_global[4],
        (unsigned long long)tf->tf_global[5],
        (unsigned long long)tf->tf_global[6],
        (unsigned long long)tf->tf_global[7]);
 printf("%%o0-7: %llx %llx %llx %llx\n %llx %llx %llx %llx\n",
        (unsigned long long)tf->tf_out[0],
        (unsigned long long)tf->tf_out[1],
        (unsigned long long)tf->tf_out[2],
        (unsigned long long)tf->tf_out[3],
        (unsigned long long)tf->tf_out[4],
        (unsigned long long)tf->tf_out[5],
        (unsigned long long)tf->tf_out[6],
        (unsigned long long)tf->tf_out[7]);
}
void
stackdump(void)
{
 struct frame32 *fp = (struct frame32 *)getfp(), *sfp;
 struct frame64 *fp64;
 sfp = fp;
 printf("Frame pointer is at %p\n", fp);
 printf("Call traceback:\n");
 while (fp && ((u_long)fp >> 13) == ((u_long)sfp >> 13)) {
  if( ((long)fp) & 1 ) {
   fp64 = (struct frame64*)(((char *)fp)+(2048-1));
   printf("%llx(%llx, %llx, %llx, %llx, %llx, %llx, %llx) "
       "fp = %llx\n",
          (unsigned long long)fp64->fr_pc,
          (unsigned long long)fp64->fr_arg[0],
          (unsigned long long)fp64->fr_arg[1],
          (unsigned long long)fp64->fr_arg[2],
          (unsigned long long)fp64->fr_arg[3],
          (unsigned long long)fp64->fr_arg[4],
          (unsigned long long)fp64->fr_arg[5],
          (unsigned long long)fp64->fr_arg[6],
          (unsigned long long)fp64->fr_fp);
   fp = (struct frame32 *)(u_long)fp64->fr_fp;
  } else {
   printf("  pc = %x  args = (%x, %x, %x, %x, %x, %x) "
       "fp = %x\n", fp->fr_pc, fp->fr_arg[0],
       fp->fr_arg[1], fp->fr_arg[2], fp->fr_arg[3],
       fp->fr_arg[4], fp->fr_arg[5], fp->fr_fp);
   fp = (struct frame32*)(u_long)(u_short)fp->fr_fp;
  }
 }
}
int
_bus_dmamap_create(t, t0, size, nsegments, maxsegsz, boundary, flags, dmamp)
 bus_dma_tag_t t, t0;
 bus_size_t size;
 int nsegments;
 bus_size_t maxsegsz;
 bus_size_t boundary;
 int flags;
 bus_dmamap_t *dmamp;
{
 struct sparc_bus_dmamap *map;
 void *mapstore;
 size_t mapsize;
 mapsize = sizeof(struct sparc_bus_dmamap) +
     (sizeof(bus_dma_segment_t) * (nsegments - 1));
 if ((mapstore = malloc(mapsize, 2, (flags & 0x0001) ?
     (0x0002 | 0x0008) : (0x0001 | 0x0008))) == ((void *)0))
  return (12);
 map = (struct sparc_bus_dmamap *)mapstore;
 map->_dm_size = size;
 map->_dm_segcnt = nsegments;
 map->_dm_maxsegsz = maxsegsz;
 map->_dm_boundary = boundary;
 map->_dm_flags = flags & ~(0x0000 | 0x0001 |
     0x0004 | 0x0008 | 0x0010);
 map->dm_mapsize = 0;
 map->dm_nsegs = 0;
 *dmamp = map;
 return (0);
}
void
_bus_dmamap_destroy(t, t0, map)
 bus_dma_tag_t t, t0;
 bus_dmamap_t map;
{
 if (map->dm_nsegs)
  bus_dmamap_unload(t0, map);
 free(map, 2, 0);
}
int
_bus_dmamap_load(t, t0, map, buf, buflen, p, flags)
 bus_dma_tag_t t, t0;
 bus_dmamap_t map;
 void *buf;
 bus_size_t buflen;
 struct proc *p;
 int flags;
{
 bus_addr_t lastaddr;
 int seg, error;
 map->dm_mapsize = 0;
 map->dm_nsegs = 0;
 if (buflen > map->_dm_size)
  return (22);
 seg = 0;
 error = _bus_dmamap_load_buffer(t, map, buf, buflen, p, flags,
     &lastaddr, &seg, 1);
 if (error == 0) {
  map->dm_mapsize = buflen;
  map->dm_nsegs = seg + 1;
 }
 return (error);
}
int
_bus_dmamap_load_mbuf(t, t0, map, m, flags)
 bus_dma_tag_t t, t0;
 bus_dmamap_t map;
 struct mbuf *m;
 int flags;
{
 bus_dma_segment_t segs[20];
 int i;
 size_t len;
  map->dm_mapsize = 0;
  map->dm_nsegs = 0;
 if (m->M_dat.MH.MH_pkthdr.len > map->_dm_size)
  return (22);
 map->_dm_type = 3;
 map->_dm_source = m;
 i = 0;
 len = 0;
 while (m) {
  vaddr_t vaddr = ((vaddr_t)((m)->m_hdr.mh_data));
  long buflen = (long)m->m_hdr.mh_len;
  len += buflen;
  while (buflen > 0 && i < 20) {
   paddr_t pa;
   long incr;
   incr = min(buflen, (1 << 13));
   if (pmap_extract((&kernel_pmap_), vaddr, &pa) == 0) {
    printf("_bus_dmamap_load_mbuf: pmap_extract failed %lx\n",
     vaddr);
    map->_dm_type = 0;
    map->_dm_source = ((void *)0);
    return 22;
   }
   buflen -= incr;
   vaddr += incr;
   if (i > 0 && pa == (segs[i - 1].ds_addr +
       segs[i - 1].ds_len) && ((segs[i - 1].ds_len + incr)
       < map->_dm_maxsegsz)) {
    segs[i - 1].ds_len += incr;
    continue;
   }
   segs[i].ds_addr = pa;
   segs[i].ds_len = incr;
   segs[i]._ds_boundary = 0;
   segs[i]._ds_align = 0;
   segs[i]._ds_mlist = ((void *)0);
   i++;
  }
  m = m->m_hdr.mh_next;
  if (m && i >= 20) {
   map->_dm_type = 0;
   map->_dm_source = ((void *)0);
   return (27);
  }
 }
 return (bus_dmamap_load_raw(t0, map, segs, i,
       (bus_size_t)len, flags));
}
int
_bus_dmamap_load_uio(t, t0, map, uio, flags)
 bus_dma_tag_t t, t0;
 bus_dmamap_t map;
 struct uio *uio;
 int flags;
{
 bus_dma_segment_t segs[20];
 int i, j;
 size_t len;
  map->dm_mapsize = 0;
  map->dm_nsegs = 0;
 if (uio->uio_resid > map->_dm_size)
  return (22);
 if (uio->uio_segflg != UIO_SYSSPACE)
  return (45);
 map->_dm_type = 2;
 map->_dm_source = (void *)uio;
 i = j = 0;
 len = 0;
 while (j < uio->uio_iovcnt) {
  vaddr_t vaddr = (vaddr_t)uio->uio_iov[j].iov_base;
  long buflen = (long)uio->uio_iov[j].iov_len;
  len += buflen;
  while (buflen > 0 && i < 20) {
   paddr_t pa;
   long incr;
   incr = min(buflen, (1 << 13));
   (void) pmap_extract((&kernel_pmap_), vaddr, &pa);
   buflen -= incr;
   vaddr += incr;
   if (i > 0 && pa == (segs[i - 1].ds_addr +
       segs[i - 1].ds_len) && ((segs[i - 1].ds_len + incr)
       < map->_dm_maxsegsz)) {
    segs[i - 1].ds_len += incr;
    continue;
   }
   segs[i].ds_addr = pa;
   segs[i].ds_len = incr;
   segs[i]._ds_boundary = 0;
   segs[i]._ds_align = 0;
   segs[i]._ds_mlist = ((void *)0);
   i++;
  }
  j++;
  if ((uio->uio_iovcnt - j) && i >= 20) {
   map->_dm_type = 0;
   map->_dm_source = ((void *)0);
   return (27);
  }
 }
 return (bus_dmamap_load_raw(t0, map, segs, i, (bus_size_t)len, flags));
}
int
_bus_dmamap_load_raw(t, t0, map, segs, nsegs, size, flags)
 bus_dma_tag_t t, t0;
 bus_dmamap_t map;
 bus_dma_segment_t *segs;
 int nsegs;
 bus_size_t size;
 int flags;
{
 panic("_bus_dmamap_load_raw: not implemented");
}
int
_bus_dmamap_load_buffer(bus_dma_tag_t t, bus_dmamap_t map, void *buf,
    bus_size_t buflen, struct proc *p, int flags, bus_addr_t *lastaddrp,
    int *segp, int first)
{
 bus_size_t sgsize;
 bus_addr_t curaddr, lastaddr, baddr, bmask;
 vaddr_t vaddr = (vaddr_t)buf;
 int seg;
 pmap_t pmap;
 if (p != ((void *)0))
  pmap = p->p_vmspace->vm_map.pmap;
 else
  pmap = (&kernel_pmap_);
 lastaddr = *lastaddrp;
 bmask = ~(map->_dm_boundary - 1);
 for (seg = *segp; buflen > 0 ; ) {
  pmap_extract(pmap, vaddr, (paddr_t *)&curaddr);
  sgsize = (1 << 13) - ((u_long)vaddr & ((1 << 13) - 1));
  if (buflen < sgsize)
   sgsize = buflen;
  if (map->_dm_boundary > 0) {
   baddr = (curaddr + map->_dm_boundary) & bmask;
   if (sgsize > (baddr - curaddr))
    sgsize = (baddr - curaddr);
  }
  if (first) {
   map->dm_segs[seg].ds_addr = curaddr;
   map->dm_segs[seg].ds_len = sgsize;
   first = 0;
  } else {
   if (curaddr == lastaddr &&
       (map->dm_segs[seg].ds_len + sgsize) <=
        map->_dm_maxsegsz &&
       (map->_dm_boundary == 0 ||
        (map->dm_segs[seg].ds_addr & bmask) ==
        (curaddr & bmask)))
    map->dm_segs[seg].ds_len += sgsize;
   else {
    if (++seg >= map->_dm_segcnt)
     break;
    map->dm_segs[seg].ds_addr = curaddr;
    map->dm_segs[seg].ds_len = sgsize;
   }
  }
  lastaddr = curaddr + sgsize;
  vaddr += sgsize;
  buflen -= sgsize;
 }
 *segp = seg;
 *lastaddrp = lastaddr;
 if (buflen != 0)
  return (27);
 return (0);
}
void
_bus_dmamap_unload(t, t0, map)
 bus_dma_tag_t t, t0;
 bus_dmamap_t map;
{
 map->dm_mapsize = 0;
 map->dm_nsegs = 0;
}
void
_bus_dmamap_sync(t, t0, map, offset, len, ops)
 bus_dma_tag_t t, t0;
 bus_dmamap_t map;
 bus_addr_t offset;
 bus_size_t len;
 int ops;
{
 if (ops & (0x04 | 0x02))
  __asm volatile("membar " "#MemIssue" ::: "memory");
}
int
_bus_dmamem_alloc(t, t0, size, alignment, boundary, segs, nsegs, rsegs, flags)
 bus_dma_tag_t t, t0;
 bus_size_t size, alignment, boundary;
 bus_dma_segment_t *segs;
 int nsegs;
 int *rsegs;
 int flags;
{
 struct pglist *mlist;
 int error, plaflag;
 size = (((size) + ((1 << 13) - 1)) & ~((1 << 13) - 1));
 if ((mlist = malloc(sizeof(*mlist), 2,
     (flags & 0x0001) ? 0x0002 : 0x0001)) == ((void *)0))
  return (12);
 segs[0]._ds_boundary = boundary;
 segs[0]._ds_align = alignment;
 if (flags & 0x0020) {
  boundary = 0;
  alignment = 0;
 }
 plaflag = flags & 0x0001 ? 0x0002 : 0x0001;
 if (flags & 0x0800)
  plaflag |= 0x0004;
 do { (mlist)->tqh_first = ((void *)0); (mlist)->tqh_last = &(mlist)->tqh_first; } while (0);
 error = uvm_pglistalloc(size, (paddr_t)0, (paddr_t)-1,
     alignment, boundary, mlist, nsegs, plaflag);
 if (error)
  return (error);
 segs[0].ds_addr = 0UL;
 segs[0].ds_len = size;
 *rsegs = 1;
 segs[0]._ds_mlist = mlist;
 return (0);
}
void
_bus_dmamem_free(t, t0, segs, nsegs)
 bus_dma_tag_t t, t0;
 bus_dma_segment_t *segs;
 int nsegs;
{
 if (nsegs != 1)
  panic("bus_dmamem_free: nsegs = %d", nsegs);
 uvm_pglistfree(segs[0]._ds_mlist);
 free(segs[0]._ds_mlist, 2, 0);
}
int
_bus_dmamem_map(t, t0, segs, nsegs, size, kvap, flags)
 bus_dma_tag_t t, t0;
 bus_dma_segment_t *segs;
 int nsegs;
 size_t size;
 caddr_t *kvap;
 int flags;
{
 const struct kmem_dyn_mode *kd;
 struct vm_page *m;
 vaddr_t va, sva;
 size_t ssize;
 bus_addr_t addr, cbit;
 struct pglist *mlist;
 int error;
 if (nsegs != 1)
  panic("_bus_dmamem_map: nsegs = %d", nsegs);
 size = (((size) + ((1 << 13) - 1)) & ~((1 << 13) - 1));
 kd = flags & 0x0001 ? &kd_trylock : &kd_waitok;
 va = (vaddr_t)km_alloc(size, &kv_any, &kp_none, kd);
 if (va == 0)
  return (12);
 *kvap = (caddr_t)va;
 cbit = 0;
 if (flags & 0x0010)
  cbit |= 0x001;
 sva = va;
 ssize = size;
 mlist = segs[0]._ds_mlist;
 for((m) = ((mlist)->tqh_first); (m) != ((void *)0); (m) = ((m)->pageq.tqe_next)) {
  if (size == 0)
   panic("_bus_dmamem_map: size botch");
  addr = ((m)->phys_addr);
  error = pmap_enter((&kernel_pmap_), va, addr | cbit,
      0x01 | 0x02,
      0x01 | 0x02 | 0x00000010 | 0x00000020);
  if (error) {
   ;
   km_free((void *)sva, ssize, &kv_any, &kp_none);
   return (error);
  }
  va += (1 << 13);
  size -= (1 << 13);
 }
 ;
 return (0);
}
void
_bus_dmamem_unmap(t, t0, kva, size)
 bus_dma_tag_t t, t0;
 caddr_t kva;
 size_t size;
{
 if ((u_long)kva & ((1 << 13) - 1))
  panic("_bus_dmamem_unmap");
 km_free(kva, (((size) + ((1 << 13) - 1)) & ~((1 << 13) - 1)), &kv_any, &kp_none);
}
paddr_t
_bus_dmamem_mmap(t, t0, segs, nsegs, off, prot, flags)
 bus_dma_tag_t t, t0;
 bus_dma_segment_t *segs;
 int nsegs;
 off_t off;
 int prot, flags;
{
 int i;
 for (i = 0; i < nsegs; i++) {
  if (off & ((1 << 13) - 1))
   panic("_bus_dmamem_mmap: offset unaligned");
  if (segs[i].ds_addr & ((1 << 13) - 1))
   panic("_bus_dmamem_mmap: segment unaligned");
  if (segs[i].ds_len & ((1 << 13) - 1))
   panic("_bus_dmamem_mmap: segment size not multiple"
     " of page size");
  if (off >= segs[i].ds_len) {
   off -= segs[i].ds_len;
   continue;
  }
  return (segs[i].ds_addr + off);
 }
 return (-1);
}
struct sparc_bus_dma_tag mainbus_dma_tag = {
 ((void *)0),
 ((void *)0),
 _bus_dmamap_create,
 _bus_dmamap_destroy,
 _bus_dmamap_load,
 _bus_dmamap_load_mbuf,
 _bus_dmamap_load_uio,
 _bus_dmamap_load_raw,
 _bus_dmamap_unload,
 _bus_dmamap_sync,
 _bus_dmamem_alloc,
 _bus_dmamem_free,
 _bus_dmamem_map,
 _bus_dmamem_unmap,
 _bus_dmamem_mmap
};
int sparc_bus_map(bus_space_tag_t, bus_space_tag_t, bus_addr_t, bus_size_t,
    int, bus_space_handle_t *);
int sparc_bus_protect(bus_space_tag_t, bus_space_tag_t, bus_space_handle_t,
    bus_size_t, int);
int sparc_bus_unmap(bus_space_tag_t, bus_space_tag_t, bus_space_handle_t,
    bus_size_t);
bus_addr_t sparc_bus_addr(bus_space_tag_t, bus_space_tag_t,
    bus_space_handle_t);
int sparc_bus_subregion(bus_space_tag_t, bus_space_tag_t, bus_space_handle_t,
    bus_size_t, bus_size_t, bus_space_handle_t *);
paddr_t sparc_bus_mmap(bus_space_tag_t, bus_space_tag_t, bus_addr_t, off_t,
    int, int);
void *sparc_mainbus_intr_establish(bus_space_tag_t, bus_space_tag_t, int, int,
    int, int (*)(void *), void *, const char *);
int sparc_bus_alloc(bus_space_tag_t, bus_space_tag_t, bus_addr_t, bus_addr_t,
    bus_size_t, bus_size_t, bus_size_t, int, bus_addr_t *,
    bus_space_handle_t *);
void sparc_bus_free(bus_space_tag_t, bus_space_tag_t, bus_space_handle_t,
    bus_size_t);
int
sparc_bus_map(bus_space_tag_t t, bus_space_tag_t t0, bus_addr_t addr,
    bus_size_t size, int flags, bus_space_handle_t *hp)
{
 vaddr_t va;
 u_int64_t pa;
 paddr_t pm_flags = 0;
 vm_prot_t pm_prot = 0x01;
 if (flags & 0x0010) {
  hp->bh_ptr = addr;
  return (0);
 }
 if (size == 0) {
  char buf[80];
  bus_space_render_tag(t0, buf, sizeof buf);
  printf("\nsparc_bus_map: zero size on %s", buf);
  return (22);
 }
 if ( (((t0->asi) & 0x08) && ((t0->sasi) & 0x08)) ||
     ((((t0->asi) | 0x09) == 0x1d) != (((t0->sasi) | 0x09) == 0x1d)) ) {
  char buf[80];
  bus_space_render_tag(t0, buf, sizeof buf);
  printf("\nsparc_bus_map: mismatched ASIs on %s: asi=%x sasi=%x",
      buf, t0->asi, t0->sasi);
 }
 if ((((t0->asi) | 0x09) == 0x1d)) {
  if (flags & 0x0002) {
   char buf[80];
   bus_space_render_tag(t0, buf, sizeof buf);
   printf("\nsparc_bus_map: linear mapping requested on physical bus %s", buf);
   return (22);
  }
  hp->bh_ptr = addr;
  return (0);
 }
 size = (((size) + ((1 << 13) - 1)) & ~((1 << 13) - 1));
 if (((t0->sasi) & 0x08) && !((t0->asi) & 0x08))
  pm_flags |= 0x004;
 if ((flags & 0x0001) == 0)
  pm_flags |= 0x001;
 va = (vaddr_t)km_alloc(size, &kv_any, &kp_none, &kd_nowait);
 if (va == 0)
  return (12);
 hp->bh_ptr = va | (addr & ((1 << 13) - 1));
 pa = ((addr) & ~((1 << 13) - 1));
 if ((flags & 0x0004) == 0)
  pm_prot |= 0x02;
 do {
  ;
  pmap_enter((&kernel_pmap_), va, pa | pm_flags, pm_prot,
   pm_prot|0x00000010);
  va += (1 << 13);
  pa += (1 << 13);
 } while ((size -= (1 << 13)) > 0);
 ;
 return (0);
}
int
sparc_bus_subregion(bus_space_tag_t tag, bus_space_tag_t tag0,
    bus_space_handle_t handle, bus_size_t offset, bus_size_t size,
    bus_space_handle_t *nhandlep)
{
 *nhandlep = handle;
 nhandlep->bh_ptr += offset;
 return (0);
}
int
sparc_bus_protect(bus_space_tag_t t, bus_space_tag_t t0, bus_space_handle_t h,
    bus_size_t size, int flags)
{
        vm_prot_t prot;
 paddr_t pm_flags = 0;
        paddr_t pa;
        vaddr_t sva, eva;
 void* addr = bus_space_vaddr(t0, h);
 if (addr == 0) {
  printf("\nsparc_bus_protect: null address");
  return (22);
 }
 if ((((t0->asi) | 0x09) == 0x1d)) {
  printf("\nsparc_bus_protect: physical ASI");
  return (22);
 }
        prot = (flags & 0x0004) ?
     0x01 : 0x01 | 0x02;
 if ((flags & 0x0001) == 0)
     pm_flags |= 0x001;
        eva = ((((vaddr_t)addr + size) + ((1 << 13) - 1)) & ~((1 << 13) - 1));
        for (sva = (((vaddr_t)addr) & ~((1 << 13) - 1)); sva < eva; sva += (1 << 13)) {
                if (pmap_extract((&kernel_pmap_), sva, &pa) == 0)
                        panic("bus_space_protect(): invalid page");
                pmap_enter((&kernel_pmap_), sva, pa | pm_flags, prot, prot | 0x00000010);
        }
 ;
 return (0);
}
int
sparc_bus_unmap(bus_space_tag_t t, bus_space_tag_t t0, bus_space_handle_t bh,
    bus_size_t size)
{
 vaddr_t va = (((vaddr_t)bh.bh_ptr) & ~((1 << 13) - 1));
 vaddr_t endva = va + (((size) + ((1 << 13) - 1)) & ~((1 << 13) - 1));
 if ((((t0->asi) | 0x09) == 0x1d))
  return (0);
 pmap_remove((&kernel_pmap_), va, endva);
 ;
 km_free((void *)va, endva - va, &kv_any, &kp_none);
 return (0);
}
paddr_t
sparc_bus_mmap(bus_space_tag_t t, bus_space_tag_t t0, bus_addr_t paddr,
    off_t off, int prot, int flags)
{
 if ((((t0->asi) | 0x09) == 0x1d)) {
  printf("\nsparc_bus_mmap: physical ASI");
  return (0);
 }
 return ((paddr + off) | 0x001);
}
bus_addr_t
sparc_bus_addr(bus_space_tag_t t, bus_space_tag_t t0, bus_space_handle_t h)
{
 paddr_t addr;
 if ((((t0->asi) | 0x09) == 0x1d))
  return h.bh_ptr;
 if (!pmap_extract((&kernel_pmap_), h.bh_ptr, &addr))
  return (-1);
 return addr;
}
void *
bus_intr_allocate(bus_space_tag_t t, int (*handler)(void *), void *arg,
    int number, int pil,
    volatile u_int64_t *mapper, volatile u_int64_t *clearer,
    const char *what)
{
 struct intrhand *ih;
 ih = malloc(sizeof(*ih), 2, 0x0002 | 0x0008);
 if (ih == ((void *)0))
  return (((void *)0));
 ih->ih_fun = handler;
 ih->ih_arg = arg;
 ih->ih_number = number;
 ih->ih_pil = pil;
 ih->ih_map = mapper;
 ih->ih_clr = clearer;
 ih->ih_bus = t;
 strlcpy(ih->ih_name, what, sizeof(ih->ih_name));
 return (ih);
}
void
bus_intr_free(void *arg)
{
 free(arg, 2, 0);
}
void *
sparc_mainbus_intr_establish(bus_space_tag_t t, bus_space_tag_t t0, int number,
    int pil, int flags, int (*handler)(void *), void *arg, const char *what)
{
 struct intrhand *ih;
 ih = bus_intr_allocate(t0, handler, arg, number, pil, ((void *)0), ((void *)0), what);
 if (ih == ((void *)0))
  return (((void *)0));
 intr_establish(ih->ih_pil, ih);
 return (ih);
}
int
sparc_bus_alloc(bus_space_tag_t t, bus_space_tag_t t0, bus_addr_t rs,
    bus_addr_t re, bus_size_t s, bus_size_t a, bus_size_t b, int f,
    bus_addr_t *ap, bus_space_handle_t *hp)
{
 return (25);
}
void
sparc_bus_free(bus_space_tag_t t, bus_space_tag_t t0, bus_space_handle_t h,
    bus_size_t s)
{
 return;
}
static const struct sparc_bus_space_tag _mainbus_space_tag = {
 ((void *)0),
 ((void *)0),
 UPA_BUS_SPACE,
 0x80,
 0x80,
 "mainbus",
 sparc_bus_alloc,
 sparc_bus_free,
 sparc_bus_map,
 sparc_bus_protect,
 sparc_bus_unmap,
 sparc_bus_subregion,
 sparc_bus_mmap,
 sparc_mainbus_intr_establish,
 sparc_bus_addr
};
const bus_space_tag_t mainbus_space_tag = &_mainbus_space_tag;
struct cfdriver mainbus_cd = {
 ((void *)0), "mainbus", DV_DULL
};
int
bus_space_alloc(bus_space_tag_t t, bus_addr_t rs, bus_addr_t re, bus_size_t s,
    bus_size_t a, bus_size_t b, int f, bus_addr_t *ap, bus_space_handle_t *hp)
{
        const bus_space_tag_t t0 = t;
        int ret;
        while (t->sparc_bus_alloc == ((void *)0)) t = t->parent;;
        ret = (*(t)->sparc_bus_alloc)(t, t0, rs, re, s, a, b, f, ap, hp);
        ;
        return ret;
}
void
bus_space_free(bus_space_tag_t t, bus_space_handle_t h, bus_size_t s)
{
 const bus_space_tag_t t0 = t;
 while (t->sparc_bus_free == ((void *)0)) t = t->parent;;
 (*(t)->sparc_bus_free)(t, t0, h, s);
 ;
}
int
bus_space_map(bus_space_tag_t t, bus_addr_t a, bus_size_t s, int f,
    bus_space_handle_t *hp)
{
 const bus_space_tag_t t0 = t;
 int ret;
 while (t->sparc_bus_map == ((void *)0)) t = t->parent;;
 ret = (*(t)->sparc_bus_map)(t, t0, a, s, f, hp);
 ;
 return (ret);
}
int
bus_space_protect(bus_space_tag_t t, bus_space_handle_t h, bus_size_t s, int f)
{
 const bus_space_tag_t t0 = t;
 int ret;
 while (t->sparc_bus_protect == ((void *)0)) t = t->parent;;
 ret = (*(t)->sparc_bus_protect)(t, t0, h, s, f);
 ;
 return (ret);
}
int
bus_space_unmap(bus_space_tag_t t, bus_space_handle_t h, bus_size_t s)
{
 const bus_space_tag_t t0 = t;
 int ret;
 while (t->sparc_bus_unmap == ((void *)0)) t = t->parent;;
 ;
 ret = (*(t)->sparc_bus_unmap)(t, t0, h, s);
 ;
 return (ret);
}
int
bus_space_subregion(bus_space_tag_t t, bus_space_handle_t h, bus_size_t o,
    bus_size_t s, bus_space_handle_t *hp)
{
 const bus_space_tag_t t0 = t;
 int ret;
 while (t->sparc_bus_subregion == ((void *)0)) t = t->parent;;
 ;
 ret = (*(t)->sparc_bus_subregion)(t, t0, h, o, s, hp);
 ;
 return (ret);
}
paddr_t
bus_space_mmap(bus_space_tag_t t, bus_addr_t a, off_t o, int p, int f)
{
 const bus_space_tag_t t0 = t;
 paddr_t ret;
 while (t->sparc_bus_mmap == ((void *)0)) t = t->parent;;
 ret = (*(t)->sparc_bus_mmap)(t, t0, a, o, p, f);
 ;
 return (ret);
}
void *
bus_intr_establish(bus_space_tag_t t, int p, int l, int f, int (*h)(void *),
    void *a, const char *w)
{
 const bus_space_tag_t t0 = t;
 void *ret;
 while (t->sparc_intr_establish == ((void *)0)) t = t->parent;;
 ret = (*(t)->sparc_intr_establish)(t, t0, p, l, f, h, a, w);
 ;
 return (ret);
}
void *
bus_space_vaddr(bus_space_tag_t t, bus_space_handle_t h)
{
 ;
        if(t->asi == 0x80 || t->asi == 0x88)
  return ((void *)(vaddr_t)(h.bh_ptr));
 return (((void *)0));
}
void
bus_space_render_tag(bus_space_tag_t t, char* buf, size_t len)
{
 if (t == ((void *)0)) {
  strlcat(buf, "<NULL>", len);
  return;
 }
 buf[0] = '\0';
 if (t->parent)
  bus_space_render_tag(t->parent, buf, len);
 strlcat(buf, "/", len);
 strlcat(buf, t->name, len);
}
struct blink_led_softc {
 struct { struct blink_led *slh_first; } bls_head;
 int bls_on;
 struct timeout bls_to;
} blink_sc = { { ((void *)0) }, 0 };
void
blink_led_register(struct blink_led *l)
{
 if ((((&blink_sc.bls_head)->slh_first) == ((void *)0))) {
  timeout_set(&blink_sc.bls_to, blink_led_timeout, &blink_sc);
  blink_sc.bls_on = 0;
  if (sparc_led_blink)
   timeout_add(&blink_sc.bls_to, 1);
 }
 do { (l)->bl_next.sle_next = (&blink_sc.bls_head)->slh_first; (&blink_sc.bls_head)->slh_first = (l); } while (0);
}
void
blink_led_timeout(void *vsc)
{
 struct blink_led_softc *sc = &blink_sc;
 struct blink_led *l;
 int t;
 if ((((&sc->bls_head)->slh_first) == ((void *)0)))
  return;
 for((l) = ((&sc->bls_head)->slh_first); (l) != ((void *)0); (l) = ((l)->bl_next.sle_next)) {
  (*l->bl_func)(l->bl_arg, sc->bls_on);
 }
 sc->bls_on = !sc->bls_on;
 if (!sparc_led_blink)
  return;
 t = (((averunnable.ldavg[0] + (1<<11)) * hz) >> (11 + 1));
 timeout_add(&sc->bls_to, t);
}
