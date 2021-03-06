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
struct flock {
 off_t l_start;
 off_t l_len;
 pid_t l_pid;
 short l_type;
 short l_whence;
};
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
typedef unsigned int tcflag_t;
typedef unsigned char cc_t;
typedef unsigned int speed_t;
struct termios {
 tcflag_t c_iflag;
 tcflag_t c_oflag;
 tcflag_t c_cflag;
 tcflag_t c_lflag;
 cc_t c_cc[20];
 int c_ispeed;
 int c_ospeed;
};
struct ptmget {
 int cfd;
 int sfd;
 char cn[16];
 char sn[16];
};
struct clist {
 int c_cc;
 int c_cn;
 u_char *c_cf;
 u_char *c_cl;
 u_char *c_cs;
 u_char *c_ce;
 u_char *c_cq;
};
struct tty {
 struct { struct tty *tqe_next; struct tty **tqe_prev; } tty_link;
 struct clist t_rawq;
 long t_rawcc;
 struct clist t_canq;
 long t_cancc;
 struct clist t_outq;
 long t_outcc;
 int t_qlen;
 u_char t_line;
 dev_t t_dev;
 int t_state;
 int t_flags;
 struct pgrp *t_pgrp;
 struct session *t_session;
 struct selinfo t_rsel;
 struct selinfo t_wsel;
 struct termios t_termios;
 struct winsize t_winsize;
 void (*t_oproc)(struct tty *);
 int (*t_param)(struct tty *, struct termios *);
 int (*t_hwiflow)(struct tty *tp, int flag);
 void *t_sc;
 short t_column;
 short t_rocount, t_rocol;
 short t_hiwat;
 short t_lowat;
 short t_gen;
 struct timeout t_rstrt_to;
 struct timeval t_tv;
};
struct itty {
 dev_t t_dev;
 int t_rawq_c_cc;
 int t_canq_c_cc;
 int t_outq_c_cc;
 short t_hiwat;
 short t_lowat;
 short t_column;
 int t_state;
 struct session *t_session;
 pid_t t_pgrp_pg_id;
 u_char t_line;
};
struct speedtab {
 int sp_speed;
 int sp_code;
};
struct ttylist_head { struct tty *tqh_first; struct tty **tqh_last; };
extern int tty_count;
extern struct ttychars ttydefaults;
extern char ttyin[], ttyout[], ttopen[], ttclos[], ttybg[], ttybuf[];
extern int64_t tk_cancc, tk_nin, tk_nout, tk_rawcc;
int sysctl_tty(int *, u_int, void *, size_t *, void *, size_t);
int sysctl_pty(int *, u_int, void *, size_t *, void *, size_t);
int b_to_q(u_char *cp, int cc, struct clist *q);
void catq(struct clist *from, struct clist *to);
void clist_init(void);
int getc(struct clist *q);
void ndflush(struct clist *q, int cc);
int ndqb(struct clist *q, int flag);
u_char *nextc(struct clist *q, u_char *cp, int *c);
int putc(int c, struct clist *q);
int q_to_b(struct clist *q, u_char *cp, int cc);
int unputc(struct clist *q);
int nullmodem(struct tty *tp, int flag);
int tputchar(int c, struct tty *tp);
int ttioctl(struct tty *tp, u_long com, caddr_t data, int flag,
     struct proc *p);
int ttread(struct tty *tp, struct uio *uio, int flag);
void ttrstrt(void *tp);
int ttpoll(dev_t device, int events, struct proc *p);
int ttkqfilter(dev_t dev, struct knote *kn);
void ttsetwater(struct tty *tp);
int ttspeedtab(int speed, const struct speedtab *table);
int ttstart(struct tty *tp);
void ttwakeupwr(struct tty *tp);
void ttwakeup(struct tty *tp);
int ttwrite(struct tty *tp, struct uio *uio, int flag);
void ttychars(struct tty *tp);
int ttycheckoutq(struct tty *tp, int wait);
int ttyclose(struct tty *tp);
void ttyflush(struct tty *tp, int rw);
void ttyinfo(struct tty *tp);
int ttyinput(int c, struct tty *tp);
int ttylclose(struct tty *tp, int flag, struct proc *p);
int ttymodem(struct tty *tp, int flag);
int ttyopen(dev_t device, struct tty *tp, struct proc *p);
int ttyoutput(int c, struct tty *tp);
void ttypend(struct tty *tp);
void ttyretype(struct tty *tp);
void ttyrub(int c, struct tty *tp);
int ttysleep(struct tty *tp,
     void *chan, int pri, char *wmesg, int timeout);
int ttywait(struct tty *tp);
int ttywflush(struct tty *tp);
void ttytstamp(struct tty *tp, int octs, int ncts, int odcd, int ndcd);
void tty_init(void);
struct tty *ttymalloc(int);
void ttyfree(struct tty *);
u_char *firstc(struct clist *clp, int *c);
int cttyopen(dev_t, int, int, struct proc *);
int cttyread(dev_t, struct uio *, int);
int cttywrite(dev_t, struct uio *, int);
int cttyioctl(dev_t, u_long, caddr_t, int, struct proc *);
int cttypoll(dev_t, int, struct proc *);
void clalloc(struct clist *, int, int);
void clfree(struct clist *);
int nullioctl(struct tty *, u_long, caddr_t, int, struct proc *);
int pppopen(dev_t dev, struct tty *, struct proc *);
int pppclose(struct tty *, int, struct proc *);
int ppptioctl(struct tty *, u_long, caddr_t, int, struct proc *);
int pppinput(int c, struct tty *);
int pppstart(struct tty *);
int pppread(struct tty *, struct uio *, int);
int pppwrite(struct tty *, struct uio *, int);
int nmeaopen(dev_t, struct tty *, struct proc *);
int nmeaclose(struct tty *, int, struct proc *);
int nmeainput(int, struct tty *);
int mstsopen(dev_t, struct tty *, struct proc *);
int mstsclose(struct tty *, int, struct proc *);
int mstsinput(int, struct tty *);
int endrunopen(dev_t, struct tty *, struct proc *);
int endrunclose(struct tty *, int, struct proc *);
int endruninput(int, struct tty *);
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
int mmopen(dev_t, int, int, struct proc *); int mmclose(dev_t, int, int, struct proc *); int mmrw(dev_t, struct uio *, int); int mmrw(dev_t, struct uio *, int); int mmioctl(dev_t, u_long, caddr_t, int, struct proc *); int mmstop(struct tty *, int); struct tty *mmtty(dev_t); int mmpoll(dev_t, int, struct proc *); paddr_t mmmmap(dev_t, off_t, int); int mmkqfilter(dev_t, struct knote *);
int openpromopen(dev_t, int, int, struct proc *); int openpromclose(dev_t, int, int, struct proc *); int openpromread(dev_t, struct uio *, int); int openpromwrite(dev_t, struct uio *, int); int openpromioctl(dev_t, u_long, caddr_t, int, struct proc *); int openpromstop(struct tty *, int); struct tty *openpromtty(dev_t); int openprompoll(dev_t, int, struct proc *); paddr_t openprommmap(dev_t, off_t, int); int openpromkqfilter(dev_t, struct knote *);
int uperfopen(dev_t, int, int, struct proc *); int uperfclose(dev_t, int, int, struct proc *); int uperfread(dev_t, struct uio *, int); int uperfwrite(dev_t, struct uio *, int); int uperfioctl(dev_t, u_long, caddr_t, int, struct proc *); int uperfstop(struct tty *, int); struct tty *uperftty(dev_t); int uperfpoll(dev_t, int, struct proc *); paddr_t uperfmmap(dev_t, off_t, int); int uperfkqfilter(dev_t, struct knote *);
int vdspopen(dev_t, int, int, struct proc *); int vdspclose(dev_t, int, int, struct proc *); int vdspread(dev_t, struct uio *, int); int vdspwrite(dev_t, struct uio *, int); int vdspioctl(dev_t, u_long, caddr_t, int, struct proc *); int vdspstop(struct tty *, int); struct tty *vdsptty(dev_t); int vdsppoll(dev_t, int, struct proc *); paddr_t vdspmmap(dev_t, off_t, int); int vdspkqfilter(dev_t, struct knote *);
int cnopen(dev_t, int, int, struct proc *); int cnclose(dev_t, int, int, struct proc *); int cnread(dev_t, struct uio *, int); int cnwrite(dev_t, struct uio *, int); int cnioctl(dev_t, u_long, caddr_t, int, struct proc *); int cnstop(struct tty *, int); struct tty *cntty(dev_t); int cnpoll(dev_t, int, struct proc *); paddr_t cnmmap(dev_t, off_t, int); int cnkqfilter(dev_t, struct knote *);
int zsopen(dev_t, int, int, struct proc *); int zsclose(dev_t, int, int, struct proc *); int zsread(dev_t, struct uio *, int); int zswrite(dev_t, struct uio *, int); int zsioctl(dev_t, u_long, caddr_t, int, struct proc *); int zsstop(struct tty *, int); struct tty *zstty(dev_t); int zspoll(dev_t, int, struct proc *); paddr_t zsmmap(dev_t, off_t, int); int zskqfilter(dev_t, struct knote *);
int fdopen(dev_t, int, int, struct proc *); int fdclose(dev_t, int, int, struct proc *); void fdstrategy(struct buf *); int fdioctl(dev_t, u_long, caddr_t, int, struct proc *); int fddump(dev_t, daddr_t, caddr_t, size_t); daddr_t fdsize(dev_t);
int fdopen(dev_t, int, int, struct proc *); int fdclose(dev_t, int, int, struct proc *); int fdread(dev_t, struct uio *, int); int fdwrite(dev_t, struct uio *, int); int fdioctl(dev_t, u_long, caddr_t, int, struct proc *); int fdstop(struct tty *, int); struct tty *fdtty(dev_t); int fdpoll(dev_t, int, struct proc *); paddr_t fdmmap(dev_t, off_t, int); int fdkqfilter(dev_t, struct knote *);
int fbopen(dev_t, int, int, struct proc *); int fbclose(dev_t, int, int, struct proc *); int fbread(dev_t, struct uio *, int); int fbwrite(dev_t, struct uio *, int); int fbioctl(dev_t, u_long, caddr_t, int, struct proc *); int fbstop(struct tty *, int); struct tty *fbtty(dev_t); int fbpoll(dev_t, int, struct proc *); paddr_t fbmmap(dev_t, off_t, int); int fbkqfilter(dev_t, struct knote *);
int msopen(dev_t, int, int, struct proc *); int msclose(dev_t, int, int, struct proc *); int msread(dev_t, struct uio *, int); int mswrite(dev_t, struct uio *, int); int msioctl(dev_t, u_long, caddr_t, int, struct proc *); int msstop(struct tty *, int); struct tty *mstty(dev_t); int mspoll(dev_t, int, struct proc *); paddr_t msmmap(dev_t, off_t, int); int mskqfilter(dev_t, struct knote *);
int kbdopen(dev_t, int, int, struct proc *); int kbdclose(dev_t, int, int, struct proc *); int kbdread(dev_t, struct uio *, int); int kbdwrite(dev_t, struct uio *, int); int kbdioctl(dev_t, u_long, caddr_t, int, struct proc *); int kbdstop(struct tty *, int); struct tty *kbdtty(dev_t); int kbdpoll(dev_t, int, struct proc *); paddr_t kbdmmap(dev_t, off_t, int); int kbdkqfilter(dev_t, struct knote *);
int kdopen(dev_t, int, int, struct proc *); int kdclose(dev_t, int, int, struct proc *); int kdread(dev_t, struct uio *, int); int kdwrite(dev_t, struct uio *, int); int kdioctl(dev_t, u_long, caddr_t, int, struct proc *); int kdstop(struct tty *, int); struct tty *kdtty(dev_t); int kdpoll(dev_t, int, struct proc *); paddr_t kdmmap(dev_t, off_t, int); int kdkqfilter(dev_t, struct knote *);
int bwtwoopen(dev_t, int, int, struct proc *); int bwtwoclose(dev_t, int, int, struct proc *); int bwtworead(dev_t, struct uio *, int); int bwtwowrite(dev_t, struct uio *, int); int bwtwoioctl(dev_t, u_long, caddr_t, int, struct proc *); int bwtwostop(struct tty *, int); struct tty *bwtwotty(dev_t); int bwtwopoll(dev_t, int, struct proc *); paddr_t bwtwommap(dev_t, off_t, int); int bwtwokqfilter(dev_t, struct knote *);
int cgtwoopen(dev_t, int, int, struct proc *); int cgtwoclose(dev_t, int, int, struct proc *); int cgtworead(dev_t, struct uio *, int); int cgtwowrite(dev_t, struct uio *, int); int cgtwoioctl(dev_t, u_long, caddr_t, int, struct proc *); int cgtwostop(struct tty *, int); struct tty *cgtwotty(dev_t); int cgtwopoll(dev_t, int, struct proc *); paddr_t cgtwommap(dev_t, off_t, int); int cgtwokqfilter(dev_t, struct knote *);
int cgthreeopen(dev_t, int, int, struct proc *); int cgthreeclose(dev_t, int, int, struct proc *); int cgthreeread(dev_t, struct uio *, int); int cgthreewrite(dev_t, struct uio *, int); int cgthreeioctl(dev_t, u_long, caddr_t, int, struct proc *); int cgthreestop(struct tty *, int); struct tty *cgthreetty(dev_t); int cgthreepoll(dev_t, int, struct proc *); paddr_t cgthreemmap(dev_t, off_t, int); int cgthreekqfilter(dev_t, struct knote *);
int cgfouropen(dev_t, int, int, struct proc *); int cgfourclose(dev_t, int, int, struct proc *); int cgfourread(dev_t, struct uio *, int); int cgfourwrite(dev_t, struct uio *, int); int cgfourioctl(dev_t, u_long, caddr_t, int, struct proc *); int cgfourstop(struct tty *, int); struct tty *cgfourtty(dev_t); int cgfourpoll(dev_t, int, struct proc *); paddr_t cgfourmmap(dev_t, off_t, int); int cgfourkqfilter(dev_t, struct knote *);
int cgsixopen(dev_t, int, int, struct proc *); int cgsixclose(dev_t, int, int, struct proc *); int cgsixread(dev_t, struct uio *, int); int cgsixwrite(dev_t, struct uio *, int); int cgsixioctl(dev_t, u_long, caddr_t, int, struct proc *); int cgsixstop(struct tty *, int); struct tty *cgsixtty(dev_t); int cgsixpoll(dev_t, int, struct proc *); paddr_t cgsixmmap(dev_t, off_t, int); int cgsixkqfilter(dev_t, struct knote *);
int cgeightopen(dev_t, int, int, struct proc *); int cgeightclose(dev_t, int, int, struct proc *); int cgeightread(dev_t, struct uio *, int); int cgeightwrite(dev_t, struct uio *, int); int cgeightioctl(dev_t, u_long, caddr_t, int, struct proc *); int cgeightstop(struct tty *, int); struct tty *cgeighttty(dev_t); int cgeightpoll(dev_t, int, struct proc *); paddr_t cgeightmmap(dev_t, off_t, int); int cgeightkqfilter(dev_t, struct knote *);
int tcxopen(dev_t, int, int, struct proc *); int tcxclose(dev_t, int, int, struct proc *); int tcxread(dev_t, struct uio *, int); int tcxwrite(dev_t, struct uio *, int); int tcxioctl(dev_t, u_long, caddr_t, int, struct proc *); int tcxstop(struct tty *, int); struct tty *tcxtty(dev_t); int tcxpoll(dev_t, int, struct proc *); paddr_t tcxmmap(dev_t, off_t, int); int tcxkqfilter(dev_t, struct knote *);
int cgfourteenopen(dev_t, int, int, struct proc *); int cgfourteenclose(dev_t, int, int, struct proc *); int cgfourteenread(dev_t, struct uio *, int); int cgfourteenwrite(dev_t, struct uio *, int); int cgfourteenioctl(dev_t, u_long, caddr_t, int, struct proc *); int cgfourteenstop(struct tty *, int); struct tty *cgfourteentty(dev_t); int cgfourteenpoll(dev_t, int, struct proc *); paddr_t cgfourteenmmap(dev_t, off_t, int); int cgfourteenkqfilter(dev_t, struct knote *);
int bppopen(dev_t, int, int, struct proc *); int bppclose(dev_t, int, int, struct proc *); int bppread(dev_t, struct uio *, int); int bppwrite(dev_t, struct uio *, int); int bppioctl(dev_t, u_long, caddr_t, int, struct proc *); int bppstop(struct tty *, int); struct tty *bpptty(dev_t); int bpppoll(dev_t, int, struct proc *); paddr_t bppmmap(dev_t, off_t, int); int bppkqfilter(dev_t, struct knote *);
int lptopen(dev_t, int, int, struct proc *); int lptclose(dev_t, int, int, struct proc *); int lptread(dev_t, struct uio *, int); int lptwrite(dev_t, struct uio *, int); int lptioctl(dev_t, u_long, caddr_t, int, struct proc *); int lptstop(struct tty *, int); struct tty *lpttty(dev_t); int lptpoll(dev_t, int, struct proc *); paddr_t lptmmap(dev_t, off_t, int); int lptkqfilter(dev_t, struct knote *);
int scsibusopen(dev_t, int, int, struct proc *); int scsibusclose(dev_t, int, int, struct proc *); int scsibusread(dev_t, struct uio *, int); int scsibuswrite(dev_t, struct uio *, int); int scsibusioctl(dev_t, u_long, caddr_t, int, struct proc *); int scsibusstop(struct tty *, int); struct tty *scsibustty(dev_t); int scsibuspoll(dev_t, int, struct proc *); paddr_t scsibusmmap(dev_t, off_t, int); int scsibuskqfilter(dev_t, struct knote *);
int wdopen(dev_t, int, int, struct proc *); int wdclose(dev_t, int, int, struct proc *); void wdstrategy(struct buf *); int wdioctl(dev_t, u_long, caddr_t, int, struct proc *); int wddump(dev_t, daddr_t, caddr_t, size_t); daddr_t wdsize(dev_t);
int wdopen(dev_t, int, int, struct proc *); int wdclose(dev_t, int, int, struct proc *); int wdread(dev_t, struct uio *, int); int wdwrite(dev_t, struct uio *, int); int wdioctl(dev_t, u_long, caddr_t, int, struct proc *); int wdstop(struct tty *, int); struct tty *wdtty(dev_t); int wdpoll(dev_t, int, struct proc *); paddr_t wdmmap(dev_t, off_t, int); int wdkqfilter(dev_t, struct knote *);
int sabttyopen(dev_t, int, int, struct proc *); int sabttyclose(dev_t, int, int, struct proc *); int sabttyread(dev_t, struct uio *, int); int sabttywrite(dev_t, struct uio *, int); int sabttyioctl(dev_t, u_long, caddr_t, int, struct proc *); int sabttystop(struct tty *, int); struct tty *sabttytty(dev_t); int sabttypoll(dev_t, int, struct proc *); paddr_t sabttymmap(dev_t, off_t, int); int sabttykqfilter(dev_t, struct knote *);
int pconsopen(dev_t, int, int, struct proc *); int pconsclose(dev_t, int, int, struct proc *); int pconsread(dev_t, struct uio *, int); int pconswrite(dev_t, struct uio *, int); int pconsioctl(dev_t, u_long, caddr_t, int, struct proc *); int pconsstop(struct tty *, int); struct tty *pconstty(dev_t); int pconspoll(dev_t, int, struct proc *); paddr_t pconsmmap(dev_t, off_t, int); int pconskqfilter(dev_t, struct knote *);
int vconsopen(dev_t, int, int, struct proc *); int vconsclose(dev_t, int, int, struct proc *); int vconsread(dev_t, struct uio *, int); int vconswrite(dev_t, struct uio *, int); int vconsioctl(dev_t, u_long, caddr_t, int, struct proc *); int vconsstop(struct tty *, int); struct tty *vconstty(dev_t); int vconspoll(dev_t, int, struct proc *); paddr_t vconsmmap(dev_t, off_t, int); int vconskqfilter(dev_t, struct knote *);
int vccttyopen(dev_t, int, int, struct proc *); int vccttyclose(dev_t, int, int, struct proc *); int vccttyread(dev_t, struct uio *, int); int vccttywrite(dev_t, struct uio *, int); int vccttyioctl(dev_t, u_long, caddr_t, int, struct proc *); int vccttystop(struct tty *, int); struct tty *vccttytty(dev_t); int vccttypoll(dev_t, int, struct proc *); paddr_t vccttymmap(dev_t, off_t, int); int vccttykqfilter(dev_t, struct knote *);
int sbbcopen(dev_t, int, int, struct proc *); int sbbcclose(dev_t, int, int, struct proc *); int sbbcread(dev_t, struct uio *, int); int sbbcwrite(dev_t, struct uio *, int); int sbbcioctl(dev_t, u_long, caddr_t, int, struct proc *); int sbbcstop(struct tty *, int); struct tty *sbbctty(dev_t); int sbbcpoll(dev_t, int, struct proc *); paddr_t sbbcmmap(dev_t, off_t, int); int sbbckqfilter(dev_t, struct knote *);
int vldcpopen(dev_t, int, int, struct proc *); int vldcpclose(dev_t, int, int, struct proc *); int vldcpread(dev_t, struct uio *, int); int vldcpwrite(dev_t, struct uio *, int); int vldcpioctl(dev_t, u_long, caddr_t, int, struct proc *); int vldcpstop(struct tty *, int); struct tty *vldcptty(dev_t); int vldcppoll(dev_t, int, struct proc *); paddr_t vldcpmmap(dev_t, off_t, int); int vldcpkqfilter(dev_t, struct knote *);
int comopen(dev_t, int, int, struct proc *); int comclose(dev_t, int, int, struct proc *); int comread(dev_t, struct uio *, int); int comwrite(dev_t, struct uio *, int); int comioctl(dev_t, u_long, caddr_t, int, struct proc *); int comstop(struct tty *, int); struct tty *comtty(dev_t); int compoll(dev_t, int, struct proc *); paddr_t commmap(dev_t, off_t, int); int comkqfilter(dev_t, struct knote *);
int mttyopen(dev_t, int, int, struct proc *); int mttyclose(dev_t, int, int, struct proc *); int mttyread(dev_t, struct uio *, int); int mttywrite(dev_t, struct uio *, int); int mttyioctl(dev_t, u_long, caddr_t, int, struct proc *); int mttystop(struct tty *, int); struct tty *mttytty(dev_t); int mttypoll(dev_t, int, struct proc *); paddr_t mttymmap(dev_t, off_t, int); int mttykqfilter(dev_t, struct knote *);
int mbppopen(dev_t, int, int, struct proc *); int mbppclose(dev_t, int, int, struct proc *); int mbppread(dev_t, struct uio *, int); int mbppwrite(dev_t, struct uio *, int); int mbppioctl(dev_t, u_long, caddr_t, int, struct proc *); int mbppstop(struct tty *, int); struct tty *mbpptty(dev_t); int mbpppoll(dev_t, int, struct proc *); paddr_t mbppmmap(dev_t, off_t, int); int mbppkqfilter(dev_t, struct knote *);
int sttyopen(dev_t, int, int, struct proc *); int sttyclose(dev_t, int, int, struct proc *); int sttyread(dev_t, struct uio *, int); int sttywrite(dev_t, struct uio *, int); int sttyioctl(dev_t, u_long, caddr_t, int, struct proc *); int sttystop(struct tty *, int); struct tty *sttytty(dev_t); int sttypoll(dev_t, int, struct proc *); paddr_t sttymmap(dev_t, off_t, int); int sttykqfilter(dev_t, struct knote *);
int sbppopen(dev_t, int, int, struct proc *); int sbppclose(dev_t, int, int, struct proc *); int sbppread(dev_t, struct uio *, int); int sbppwrite(dev_t, struct uio *, int); int sbppioctl(dev_t, u_long, caddr_t, int, struct proc *); int sbppstop(struct tty *, int); struct tty *sbpptty(dev_t); int sbpppoll(dev_t, int, struct proc *); paddr_t sbppmmap(dev_t, off_t, int); int sbppkqfilter(dev_t, struct knote *);
int bppopen(dev_t, int, int, struct proc *); int bppclose(dev_t, int, int, struct proc *); int bppread(dev_t, struct uio *, int); int bppwrite(dev_t, struct uio *, int); int bppioctl(dev_t, u_long, caddr_t, int, struct proc *); int bppstop(struct tty *, int); struct tty *bpptty(dev_t); int bpppoll(dev_t, int, struct proc *); paddr_t bppmmap(dev_t, off_t, int); int bppkqfilter(dev_t, struct knote *);
struct bpp_param {
 int bp_burst;
 int bp_timeout;
 int bp_delay;
};
struct magma_board_info {
 const char *mb_sbusname;
 const char *mb_name;
 const char *mb_realname;
 int mb_nser;
 int mb_npar;
 int mb_ncd1400;
 int mb_svcackr;
 int mb_svcackt;
 int mb_svcackm;
 int mb_cd1400[4];
 int mb_ncd1190;
 int mb_cd1190[2];
};
struct cd1400 {
 bus_space_handle_t cd_regh;
 bus_space_tag_t cd_regt;
 int cd_chiprev;
 int cd_clock;
 int cd_parmode;
};
struct cd1190 {
 bus_space_handle_t cd_regh;
 bus_space_tag_t cd_regt;
 int cd_chiprev;
};
struct magma_softc {
 struct device ms_dev;
 bus_space_tag_t sc_bustag;
 bus_space_handle_t sc_iohandle;
 void *sc_ih;
 void *sc_sih;
 int ms_ncd1400;
 struct cd1400 ms_cd1400[4];
 bus_space_handle_t sc_svcackrh;
 bus_space_handle_t sc_svcackth;
 bus_space_handle_t sc_svcackmh;
 int ms_ncd1190;
 struct cd1190 ms_cd1190[2];
 const struct magma_board_info *ms_board;
 struct mtty_softc *ms_mtty;
 struct mbpp_softc *ms_mbpp;
 struct intrhand ms_hardint;
 struct intrhand ms_softint;
};
struct mtty_port {
 struct cd1400 *mp_cd1400;
 int mp_channel;
 struct tty *mp_tty;
 int mp_openflags;
 int mp_flags;
 int mp_carrier;
 u_char *mp_rbuf;
 u_char *mp_rend;
 u_char *mp_rget;
 u_char *mp_rput;
 u_char *mp_txp;
 int mp_txc;
};
struct mtty_softc {
 struct device ms_dev;
 int ms_nports;
 struct mtty_port ms_port[16];
};
struct mbpp_port {
 struct cd1400 *mp_cd1400;
 struct cd1190 *mp_cd1190;
 int mp_flags;
 struct bpp_param mp_param;
 u_char *mp_ptr;
 int mp_cnt;
 struct timeout mp_timeout_tmo;
 struct timeout mp_start_tmo;
};
struct mbpp_softc {
 struct device ms_dev;
 int ms_nports;
 struct mbpp_port ms_port[2];
};
int cd1400_compute_baud(speed_t, int, int *, int *);
__inline void cd1400_write_ccr(struct cd1400 *, u_char);
__inline u_char cd1400_read_reg(struct cd1400 *, int);
__inline void cd1400_write_reg(struct cd1400 *, int, u_char);
void cd1400_enable_transmitter(struct cd1400 *, int);
int magma_match(struct device *, void *, void *);
void magma_attach(struct device *, struct device *, void *);
int magma_hard(void *);
void magma_soft(void *);
int mtty_match(struct device *, void *, void *);
void mtty_attach(struct device *, struct device *, void *);
int mtty_modem_control(struct mtty_port *, int, int);
int mtty_param(struct tty *, struct termios *);
void mtty_start(struct tty *);
int mbpp_match(struct device *, void *, void *);
void mbpp_attach(struct device *, struct device *, void *);
int mbpp_rw(dev_t, struct uio *);
void mbpp_timeout(void *);
void mbpp_start(void *);
int mbpp_send(struct mbpp_port *, caddr_t, int);
int mbpp_recv(struct mbpp_port *, caddr_t, int);
int mbpp_hztoms(int);
int mbpp_mstohz(int);
static const struct magma_board_info supported_cards[] = {
 {
  "MAGMA_Sp", "MAGMA,4_Sp", "Magma 4 Sp", 4, 0,
  1, 0xa000, 0xc000, 0xe000, { 0x8000, 0, 0, 0 },
  0, { 0, 0 }
 },
 {
  "MAGMA_Sp", "MAGMA,8_Sp", "Magma 8 Sp", 8, 0,
  2, 0xa000, 0xc000, 0xe000, { 0x4000, 0x6000, 0, 0 },
  0, { 0, 0 }
 },
 {
  "MAGMA_Sp", "MAGMA,_8HS_Sp", "Magma Fast 8 Sp", 8, 0,
  2, 0x2000, 0x4000, 0x6000, { 0x8000, 0xa000, 0, 0 },
  0, { 0, 0 }
 },
 {
  "MAGMA_Sp", "MAGMA,_8SP_422", "Magma 8 Sp - 422", 8, 0,
  2, 0x2000, 0x4000, 0x6000, { 0x8000, 0xa000, 0, 0 },
  0, { 0, 0 }
 },
 {
  "MAGMA_Sp", "MAGMA,12_Sp", "Magma 12 Sp", 12, 0,
  3, 0xa000, 0xc000, 0xe000, { 0x2000, 0x4000, 0x6000, 0 },
  0, { 0, 0 }
 },
 {
  "MAGMA_Sp", "MAGMA,16_Sp", "Magma 16 Sp", 16, 0,
  4, 0xd000, 0xe000, 0xf000, { 0x8000, 0x9000, 0xa000, 0xb000 },
  0, { 0, 0 }
 },
 {
  "MAGMA_Sp", "MAGMA,16_Sp_2", "Magma 16 Sp", 16, 0,
  4, 0x2000, 0x4000, 0x6000, { 0x8000, 0xa000, 0xc000, 0xe000 },
  0, { 0, 0 }
 },
 {
  "MAGMA_Sp", "MAGMA,16HS_Sp", "Magma Fast 16 Sp", 16, 0,
  4, 0x2000, 0x4000, 0x6000, { 0x8000, 0xa000, 0xc000, 0xe000 },
  0, { 0, 0 }
 },
 {
  "MAGMA_Sp", "MAGMA,21_Sp", "Magma LC 2+1 Sp", 2, 1,
  1, 0xa000, 0xc000, 0xe000, { 0x8000, 0, 0, 0 },
  0, { 0, 0 }
 },
 {
  "MAGMA_Sp", "MAGMA,21HS_Sp", "Magma 2+1 Sp", 2, 1,
  1, 0xa000, 0xc000, 0xe000, { 0x4000, 0, 0, 0 },
  1, { 0x6000, 0 }
 },
 {
  "MAGMA_Sp", "MAGMA,41_Sp", "Magma 4+1 Sp", 4, 1,
  1, 0xa000, 0xc000, 0xe000, { 0x4000, 0, 0, 0 },
  1, { 0x6000, 0 }
 },
 {
  "MAGMA_Sp", "MAGMA,82_Sp", "Magma 8+2 Sp", 8, 2,
  2, 0xd000, 0xe000, 0xf000, { 0x8000, 0x9000, 0, 0 },
  2, { 0xa000, 0xb000 }
 },
 {
  "MAGMA_Sp", "MAGMA,P1_Sp", "Magma P1 Sp", 0, 1,
  0, 0, 0, 0, { 0, 0, 0, 0 },
  1, { 0x8000, 0 }
 },
 {
  "MAGMA_Sp", "MAGMA,P2_Sp", "Magma P2 Sp", 0, 2,
  0, 0, 0, 0, { 0, 0, 0, 0 },
  2, { 0x4000, 0x8000 }
 },
 {
  "MAGMA 2+1HS Sp", "", "Magma 2+1HS Sp", 2, 0,
  1, 0xa000, 0xc000, 0xe000, { 0x4000, 0, 0, 0 },
  1, { 0x8000, 0 }
 },
 {
  ((void *)0), ((void *)0), ((void *)0), 0, 0,
  0, 0, 0, 0, { 0, 0, 0, 0 },
  0, { 0, 0 }
 }
};
struct cfattach magma_ca = {
 sizeof(struct magma_softc), magma_match, magma_attach
};
struct cfdriver magma_cd = {
 ((void *)0), "magma", DV_DULL
};
struct cfattach mtty_ca = {
 sizeof(struct mtty_softc), mtty_match, mtty_attach
};
struct cfdriver mtty_cd = {
 ((void *)0), "mtty", DV_TTY
};
struct cfattach mbpp_ca = {
 sizeof(struct mbpp_softc), mbpp_match, mbpp_attach
};
struct cfdriver mbpp_cd = {
 ((void *)0), "mbpp", DV_DULL
};
int
cd1400_compute_baud(speed_t speed, int clock, int *cor, int *bpr)
{
 int c, co, br;
 if (speed < 50 || speed > 150000)
  return (1);
 for (c = 0, co = 8 ; co <= 2048 ; co <<= 2, c++) {
  br = ((clock * 1000000) + (co * speed) / 2) / (co * speed);
  if (br < 0x100) {
   *bpr = br;
   *cor = c;
   return (0);
  }
 }
 return (1);
}
__inline void
cd1400_write_ccr(struct cd1400 *cd, u_char cmd)
{
 while (bus_space_read_1((cd)->cd_regt, (cd)->cd_regh, (0x05)))
           ;
 bus_space_write_1((cd)->cd_regt, (cd)->cd_regh, (0x05), (cmd));
}
void
cd1400_enable_transmitter(struct cd1400 *cd, int channel)
{
 int s, srer;
 s = _splraise(6);
 bus_space_write_1((cd)->cd_regt, (cd)->cd_regh, (0x68), (channel));
 srer = bus_space_read_1((cd)->cd_regt, (cd)->cd_regh, (0x06));
 ((srer) |= ((1<<2)));
 bus_space_write_1((cd)->cd_regt, (cd)->cd_regh, (0x06), (srer));
 _splx(s);
}
int
magma_match(struct device *parent, void *vcf, void *aux)
{
 struct sbus_attach_args *sa = aux;
 const struct magma_board_info *card;
 for (card = supported_cards; ; card++) {
  if (card->mb_sbusname == ((void *)0))
   return (0);
  if (strcmp(sa->sa_name, card->mb_sbusname) == 0)
   break;
 }
 return (1);
}
void
magma_attach(struct device *parent, struct device *dev, void *aux)
{
 struct sbus_attach_args *sa = aux;
 struct magma_softc *sc = (struct magma_softc *)dev;
 const struct magma_board_info *card;
 char magma_prom[40], *clockstr;
 int chip, cd_clock;
 getpropstringA(sa->sa_node, "magma_prom", magma_prom);
 for (card = supported_cards; card->mb_name != ((void *)0); card++) {
  if (strcmp(sa->sa_name, card->mb_sbusname) != 0)
   continue;
  if (strcmp(magma_prom, card->mb_name) == 0)
   break;
 }
 if (card->mb_name == ((void *)0)) {
  printf(": %s (unsupported)\n", magma_prom);
  return;
 }
 sc->sc_bustag = sa->sa_bustag;
 clockstr = getpropstring(sa->sa_node, "clock");
 if (strlen(clockstr) == 0)
  cd_clock = 25;
 else {
  cd_clock = 0;
  while (*clockstr != '\0')
   cd_clock = cd_clock * 10 + *clockstr++ - '0';
 }
 if (bus_space_map(sa->sa_bustag, ((((bus_addr_t)sa->sa_reg[0].sbr_slot)<<32)|(sa->sa_reg[0].sbr_offset)), sa->sa_reg[0].sbr_size, 0, &sc->sc_iohandle) != 0) {
  printf(": can't map registers\n");
  return;
 }
 if (sa->sa_nintr < 1) {
  printf(": can't find interrupt\n");
  return;
 }
 sc->sc_ih = bus_intr_establish(sa->sa_bustag, sa->sa_intr[0].sbi_pri, 6, 0,
     magma_hard, sc, dev->dv_xname);
 if (sc->sc_ih == ((void *)0)) {
  printf(": couldn't establish interrupt, pri %d\n",
      (((sa->sa_intr[0].sbi_pri)>>11)&0x0f));
  bus_space_unmap(sc->sc_bustag, sc->sc_iohandle,
      sa->sa_reg[0].sbr_size);
  return;
 }
 sc->sc_sih = softintr_establish(6, magma_soft, sc);
 if (sc->sc_sih == ((void *)0)) {
  printf(": can't get soft intr\n");
  bus_space_unmap(sc->sc_bustag, sc->sc_iohandle,
      sa->sa_reg[0].sbr_size);
  return;
 }
 printf(": %s\n", card->mb_realname);
 sc->ms_board = card;
 sc->ms_ncd1400 = card->mb_ncd1400;
 sc->ms_ncd1190 = card->mb_ncd1190;
 if (bus_space_subregion(sc->sc_bustag, sc->sc_iohandle,
     card->mb_svcackr, 1, &sc->sc_svcackrh)) {
  printf(": failed to map svcackr\n");
  return;
 }
 if (bus_space_subregion(sc->sc_bustag, sc->sc_iohandle,
     card->mb_svcackt, 1, &sc->sc_svcackth)) {
  printf(": failed to map svcackt\n");
  return;
 }
 if (bus_space_subregion(sc->sc_bustag, sc->sc_iohandle,
     card->mb_svcackm, 1, &sc->sc_svcackmh)) {
  printf(": failed to map svcackm\n");
  return;
 }
 for (chip = 0 ; chip < card->mb_ncd1400 ; chip++) {
  struct cd1400 *cd = &sc->ms_cd1400[chip];
  cd->cd_clock = cd_clock;
  if (bus_space_subregion(sc->sc_bustag, sc->sc_iohandle,
      card->mb_cd1400[chip], 0x80, &cd->cd_regh)) {
   printf(": failed to map cd1400 regs\n");
   return;
  }
  cd->cd_regt = sc->sc_bustag;
  cd->cd_chiprev = bus_space_read_1((cd)->cd_regt, (cd)->cd_regh, (0x40));
  ;
  bus_space_write_1((cd)->cd_regt, (cd)->cd_regh, (0x40), (0x00));
  cd1400_write_ccr(cd,
      (1<<7) | (1<<0));
  while (bus_space_read_1((cd)->cd_regt, (cd)->cd_regh, (0x40)) != cd->cd_chiprev)
          ;
  bus_space_write_1((cd)->cd_regt, (cd)->cd_regh, (0x7E), (((cd->cd_clock * 1000000 / 512 + 500) / 1000)));
  if (card->mb_npar && card->mb_ncd1190 == 0) {
   bus_space_write_1((cd)->cd_regt, (cd)->cd_regh, (0x4B), ((1<<7)));
   cd->cd_parmode = 1;
  }
 }
 for (chip = 0 ; chip < card->mb_ncd1190 ; chip++) {
  struct cd1190 *cd = &sc->ms_cd1190[chip];
  if (bus_space_subregion(sc->sc_bustag, sc->sc_iohandle,
      card->mb_cd1190[chip], 0x20, &cd->cd_regh)) {
   printf(": failed to map cd1190 regs\n");
   return;
  }
  cd->cd_regt = sc->sc_bustag;
  ;
 }
 (void)config_found_sm((dev), (mtty_match), (((void *)0)), ((void *)0));
 (void)config_found_sm((dev), (mbpp_match), (((void *)0)), ((void *)0));
}
int
magma_hard(void *arg)
{
 struct magma_softc *sc = arg;
 struct cd1400 *cd;
 int chip, status = 0;
 int serviced = 0;
 int needsoftint = 0;
 for (chip = 0 ; chip < sc->ms_ncd1400 ; chip++)
  status |= bus_space_read_1((&sc->ms_cd1400[chip])->cd_regt, (&sc->ms_cd1400[chip])->cd_regh, (0x67));
 if (((status) & ((1<<0)))) {
  u_int8_t rivr = bus_space_read_1(sc->sc_bustag, sc->sc_svcackrh, 0);
  int port = rivr >> 4;
  if (rivr & (1<<3)) {
   struct mbpp_port *mbpp;
   int n_chars;
   mbpp = &sc->ms_mbpp->ms_port[port];
   cd = mbpp->mp_cd1400;
   n_chars = bus_space_read_1((cd)->cd_regt, (cd)->cd_regh, (0x0E));
   while (n_chars--) {
    if (mbpp->mp_cnt == 0) {
     ((mbpp->mp_flags) |= ((1<<4)));
     needsoftint = 1;
     break;
    }
    *mbpp->mp_ptr = bus_space_read_1((cd)->cd_regt, (cd)->cd_regh, (0x62));
    mbpp->mp_ptr++;
    mbpp->mp_cnt--;
   }
  } else {
   struct mtty_port *mtty;
   u_char *ptr, n_chars, line_stat;
   mtty = &sc->ms_mtty->ms_port[port];
   cd = mtty->mp_cd1400;
   if (((rivr) & ((1<<2)))) {
    line_stat = bus_space_read_1((cd)->cd_regt, (cd)->cd_regh, (0x62));
    n_chars = 1;
   } else {
    line_stat = 0;
    n_chars = bus_space_read_1((cd)->cd_regt, (cd)->cd_regh, (0x0E));
   }
   ptr = mtty->mp_rput;
   while (n_chars--) {
    *ptr++ = line_stat;
    *ptr++ = bus_space_read_1((cd)->cd_regt, (cd)->cd_regh, (0x62));
    if (ptr == mtty->mp_rend)
     ptr = mtty->mp_rbuf;
    if (ptr == mtty->mp_rget) {
     if (ptr == mtty->mp_rbuf)
      ptr = mtty->mp_rend;
     ptr -= 2;
     ((mtty->mp_flags) |= ((1<<5)));
     break;
    }
   }
   mtty->mp_rput = ptr;
   needsoftint = 1;
  }
  bus_space_write_1((cd)->cd_regt, (cd)->cd_regh, (0x60), (0));
  serviced = 1;
 }
 if (((status) & ((1<<2)))) {
  u_int8_t mivr = bus_space_read_1(sc->sc_bustag, sc->sc_svcackmh, 0);
  int port = mivr >> 4;
  struct mtty_port *mtty;
  int carrier;
  u_char msvr;
  mtty = &sc->ms_mtty->ms_port[port];
  cd = mtty->mp_cd1400;
  msvr = bus_space_read_1((cd)->cd_regt, (cd)->cd_regh, (0x6D));
  carrier = ((msvr) & (cd->cd_parmode ? (1<<7) : (1<<4)));
  if (mtty->mp_carrier != carrier) {
   ((mtty->mp_flags) |= ((1<<0)));
   mtty->mp_carrier = carrier;
   needsoftint = 1;
  }
  bus_space_write_1((cd)->cd_regt, (cd)->cd_regh, (0x60), (0));
  serviced = 1;
 }
 if (((status) & ((1<<1)))) {
  u_int8_t tivr = bus_space_read_1(sc->sc_bustag, sc->sc_svcackth, 0);
  int port = tivr >> 4;
  if (tivr & (1<<3)) {
   struct mbpp_port *mbpp;
   mbpp = &sc->ms_mbpp->ms_port[port];
   cd = mbpp->mp_cd1400;
   if (mbpp->mp_cnt) {
    int count = 0;
    while (mbpp->mp_cnt && count++ < 30) {
     bus_space_write_1((cd)->cd_regt, (cd)->cd_regh, (0x63), (*mbpp->mp_ptr));
     mbpp->mp_ptr++;
     mbpp->mp_cnt--;
    }
   } else {
    bus_space_write_1((cd)->cd_regt, (cd)->cd_regh, (0x06), (0));
    ((mbpp->mp_flags) |= ((1<<4)));
    needsoftint = 1;
   }
  } else {
   struct mtty_port *mtty;
   struct tty *tp;
   mtty = &sc->ms_mtty->ms_port[port];
   cd = mtty->mp_cd1400;
   tp = mtty->mp_tty;
   if (!((mtty->mp_flags) & ((1<<4)))) {
    int count = 0;
    if (((mtty->mp_flags) & ((1<<1)))) {
     bus_space_write_1((cd)->cd_regt, (cd)->cd_regh, (0x63), (0));
     bus_space_write_1((cd)->cd_regt, (cd)->cd_regh, (0x63), (0x81));
     ((mtty->mp_flags) &= ~((1<<1)));
     count += 2;
    }
    if (((mtty->mp_flags) & ((1<<2)))) {
     bus_space_write_1((cd)->cd_regt, (cd)->cd_regh, (0x63), (0));
     bus_space_write_1((cd)->cd_regt, (cd)->cd_regh, (0x63), (0x83));
     ((mtty->mp_flags) &= ~((1<<2)));
     count += 2;
    }
    while (mtty->mp_txc > 0 && count < 12 - 1) {
     u_char ch;
     ch = *mtty->mp_txp;
     mtty->mp_txc--;
     mtty->mp_txp++;
     if (ch == 0) {
      bus_space_write_1((cd)->cd_regt, (cd)->cd_regh, (0x63), (ch));
      count++;
     }
     bus_space_write_1((cd)->cd_regt, (cd)->cd_regh, (0x63), (ch));
     count++;
    }
   }
   if (mtty->mp_txc == 0 || ((mtty->mp_flags) & ((1<<4)))) {
    int srer;
    srer = bus_space_read_1((cd)->cd_regt, (cd)->cd_regh, (0x06));
    ((srer) &= ~((1<<2)));
    bus_space_write_1((cd)->cd_regt, (cd)->cd_regh, (0x06), (srer));
    ((mtty->mp_flags) &= ~((1<<4)));
    ((mtty->mp_flags) |= ((1<<3)));
    needsoftint = 1;
   }
  }
  bus_space_write_1((cd)->cd_regt, (cd)->cd_regh, (0x60), (0));
  serviced = 1;
 }
 if (needsoftint)
  softintr_schedule(sc->sc_sih);
 return (serviced);
}
void
magma_soft(void *arg)
{
 struct magma_softc *sc = arg;
 struct mtty_softc *mtty = sc->ms_mtty;
 struct mbpp_softc *mbpp = sc->ms_mbpp;
 int port;
 int serviced = 0;
 int s, flags;
 if (mtty) {
  for (port = 0 ; port < mtty->ms_nports ; port++) {
   struct mtty_port *mp = &mtty->ms_port[port];
   struct tty *tp = mp->mp_tty;
   if (!((tp->t_state) & (0x00020)))
    continue;
   while (mp->mp_rget != mp->mp_rput) {
    u_char stat;
    int data;
    stat = mp->mp_rget[0];
    data = mp->mp_rget[1];
    mp->mp_rget = ((mp->mp_rget + 2) == mp->mp_rend) ? mp->mp_rbuf : (mp->mp_rget + 2);
    if (stat & ((1<<3) | (1<<1)))
     data |= 0x01000000;
    if (stat & (1<<2))
     data |= 0x02000000;
    if (stat & (1<<0))
     log(4, "%s%x: fifo overflow\n", mtty->ms_dev.dv_xname, port);
    (*linesw[tp->t_line].l_rint)(data, tp);
    serviced = 1;
   }
   s = _splraise(15);
   flags = mp->mp_flags;
   ((mp->mp_flags) &= ~((1<<3) | (1<<0) | (1<<5)));
   _splx(s);
   if (((flags) & ((1<<0)))) {
    ;
    (*linesw[tp->t_line].l_modem)(tp, mp->mp_carrier);
    serviced = 1;
   }
   if (((flags) & ((1<<5)))) {
    log(4, "%s%x: ring buffer overflow\n", mtty->ms_dev.dv_xname, port);
    serviced = 1;
   }
   if (((flags) & ((1<<3)))) {
    ndflush(&tp->t_outq, mp->mp_txp - tp->t_outq.c_cf);
    ((tp->t_state) &= ~(0x00004));
    (*linesw[tp->t_line].l_start)(tp);
    serviced = 1;
   }
  }
 }
 if (mbpp) {
  for (port = 0 ; port < mbpp->ms_nports ; port++) {
   struct mbpp_port *mp = &mbpp->ms_port[port];
   if (!((mp->mp_flags) & ((1<<0))))
    continue;
   s = _splraise(15);
   flags = mp->mp_flags;
   ((mp->mp_flags) &= ~((1<<4)));
   _splx(s);
   if (((flags) & ((1<<4)))) {
    wakeup(mp);
    serviced = 1;
   }
  }
 }
}
int
mtty_match(struct device *parent, void *vcf, void *args)
{
 struct magma_softc *sc = (struct magma_softc *)parent;
 return (args == mtty_match && sc->ms_board->mb_nser &&
     sc->ms_mtty == ((void *)0));
}
void
mtty_attach(struct device *parent, struct device *dev, void *args)
{
 struct magma_softc *sc = (struct magma_softc *)parent;
 struct mtty_softc *ms = (struct mtty_softc *)dev;
 int port, chip, chan;
 sc->ms_mtty = ms;
 ;
 for (port = 0, chip = 0, chan = 0;
      port < sc->ms_board->mb_nser; port++) {
  struct mtty_port *mp = &ms->ms_port[port];
  struct tty *tp;
  mp->mp_cd1400 = &sc->ms_cd1400[chip];
  if (mp->mp_cd1400->cd_parmode && chan == 0) {
   chan = 1;
  }
  mp->mp_channel = chan;
  tp = ttymalloc(0);
  tp->t_oproc = mtty_start;
  tp->t_param = mtty_param;
  mp->mp_tty = tp;
  mp->mp_rbuf = malloc((2 * 512), 2, 0x0002);
  if (mp->mp_rbuf == ((void *)0))
   break;
  mp->mp_rend = mp->mp_rbuf + (2 * 512);
  chan = (chan + 1) % 4;
  if (chan == 0)
   chip++;
 }
 ms->ms_nports = port;
 printf(": %d tty%s\n", port, port == 1 ? "" : "s");
}
int
mttyopen(dev_t dev, int flags, int mode, struct proc *p)
{
 int card = ((((int32_t)((dev) & 0xff) | (((dev) & 0xffff0000) >> 8)) >> 6) & 0x03);
 int port = (((int32_t)((dev) & 0xff) | (((dev) & 0xffff0000) >> 8)) & 0x0f);
 struct mtty_softc *ms;
 struct mtty_port *mp;
 struct tty *tp;
 struct cd1400 *cd;
 int s;
 if (card >= mtty_cd.cd_ndevs || (ms = mtty_cd.cd_devs[card]) == ((void *)0)
     || port >= ms->ms_nports)
  return (6);
 mp = &ms->ms_port[port];
 tp = mp->mp_tty;
 tp->t_dev = dev;
 if (!((tp->t_state) & (0x00020))) {
  ((tp->t_state) |= (0x00200));
  ttychars(tp);
  tp->t_termios.c_iflag = (0x00000002 | 0x00000100 | 0x00002000 | 0x00000200 | 0x00000800);
  tp->t_termios.c_oflag = (0x00000001 | 0x00000002 | 0x00000004);
  tp->t_termios.c_cflag = (0x00000800 | 0x00000300 | 0x00004000);
  if (((mp->mp_openflags) & (0x02)))
   ((tp->t_termios.c_cflag) |= (0x00008000));
  if (((mp->mp_openflags) & (0x04)))
   ((tp->t_termios.c_cflag) |= (0x00010000));
  if (((mp->mp_openflags) & (0x08)))
   ((tp->t_termios.c_cflag) |= (0x00100000));
  tp->t_termios.c_lflag = (0x00000008 | 0x00000100 | 0x00000080 | 0x00000400 | 0x00000002|0x00000001|0x00000040);
  tp->t_termios.c_ispeed = tp->t_termios.c_ospeed = (9600);
  mp->mp_rput = mp->mp_rget = mp->mp_rbuf;
  s = _splraise(6);
  cd = mp->mp_cd1400;
  bus_space_write_1((cd)->cd_regt, (cd)->cd_regh, (0x68), (mp->mp_channel));
  cd1400_write_ccr(cd, (1<<7));
  bus_space_write_1((cd)->cd_regt, (cd)->cd_regh, (0x18), (port << 4));
  (void)mtty_param(tp, &tp->t_termios);
  ttsetwater(tp);
  bus_space_write_1((cd)->cd_regt, (cd)->cd_regh, (0x06), ((1<<4) | (1<<7)));
  if (((mp->mp_openflags) & (0x01)) || mp->mp_carrier)
   ((tp->t_state) |= (0x00008));
  else
   ((tp->t_state) &= ~(0x00008));
 } else if (((tp->t_state) & (0x00400)) && suser(p) != 0) {
  return (16);
 } else {
  s = _splraise(6);
 }
 if (!((flags) & (0x0004))) {
  while (!((tp->t_termios.c_cflag) & (0x00008000)) && !((tp->t_state) & (0x00008))) {
   int error;
   ((tp->t_state) |= (0x00200));
   error = ttysleep(tp, &tp->t_rawq, 25 | 0x100, "mttydcd", 0);
   if (error != 0) {
    _splx(s);
    ((tp->t_state) &= ~(0x00200));
    return (error);
   }
  }
 }
 _splx(s);
 return ((*linesw[tp->t_line].l_open)(dev, tp, p));
}
int
mttyclose(dev_t dev, int flag, int mode, struct proc *p)
{
 struct mtty_softc *ms = mtty_cd.cd_devs[((((int32_t)((dev) & 0xff) | (((dev) & 0xffff0000) >> 8)) >> 6) & 0x03)];
 struct mtty_port *mp = &ms->ms_port[(((int32_t)((dev) & 0xff) | (((dev) & 0xffff0000) >> 8)) & 0x0f)];
 struct tty *tp = mp->mp_tty;
 int s;
 (*linesw[tp->t_line].l_close)(tp, flag, p);
 s = _splraise(6);
 if (((tp->t_termios.c_cflag) & (0x00004000)) || !((tp->t_state) & (0x00020))) {
  (void)mtty_modem_control(mp, 0, 0);
 }
 _splx(s);
 ttyclose(tp);
 return (0);
}
int
mttyread(dev_t dev, struct uio *uio, int flags)
{
 struct mtty_softc *ms = mtty_cd.cd_devs[((((int32_t)((dev) & 0xff) | (((dev) & 0xffff0000) >> 8)) >> 6) & 0x03)];
 struct mtty_port *mp = &ms->ms_port[(((int32_t)((dev) & 0xff) | (((dev) & 0xffff0000) >> 8)) & 0x0f)];
 struct tty *tp = mp->mp_tty;
 return ((*linesw[tp->t_line].l_read)(tp, uio, flags));
}
int
mttywrite(dev_t dev, struct uio *uio, int flags)
{
 struct mtty_softc *ms = mtty_cd.cd_devs[((((int32_t)((dev) & 0xff) | (((dev) & 0xffff0000) >> 8)) >> 6) & 0x03)];
 struct mtty_port *mp = &ms->ms_port[(((int32_t)((dev) & 0xff) | (((dev) & 0xffff0000) >> 8)) & 0x0f)];
 struct tty *tp = mp->mp_tty;
 return ((*linesw[tp->t_line].l_write)(tp, uio, flags));
}
struct tty *
mttytty(dev_t dev)
{
 struct mtty_softc *ms = mtty_cd.cd_devs[((((int32_t)((dev) & 0xff) | (((dev) & 0xffff0000) >> 8)) >> 6) & 0x03)];
 struct mtty_port *mp = &ms->ms_port[(((int32_t)((dev) & 0xff) | (((dev) & 0xffff0000) >> 8)) & 0x0f)];
 return (mp->mp_tty);
}
int
mttyioctl(dev_t dev, u_long cmd, caddr_t data, int flags, struct proc *p)
{
 struct mtty_softc *ms = mtty_cd.cd_devs[((((int32_t)((dev) & 0xff) | (((dev) & 0xffff0000) >> 8)) >> 6) & 0x03)];
 struct mtty_port *mp = &ms->ms_port[(((int32_t)((dev) & 0xff) | (((dev) & 0xffff0000) >> 8)) & 0x0f)];
 struct tty *tp = mp->mp_tty;
 int error;
 error = (*linesw[tp->t_line].l_ioctl)(tp, cmd, data, flags, p);
 if (error >= 0)
  return (error);
 error = ttioctl(tp, cmd, data, flags, p);
 if (error >= 0)
  return (error);
 error = 0;
 switch(cmd) {
 case ((unsigned long)0x20000000 | ((0 & 0x1fff) << 16) | ((('t')) << 8) | ((123))):
  ((mp->mp_flags) |= ((1<<1)));
  cd1400_enable_transmitter(mp->mp_cd1400, mp->mp_channel);
  break;
 case ((unsigned long)0x20000000 | ((0 & 0x1fff) << 16) | ((('t')) << 8) | ((122))):
  ((mp->mp_flags) |= ((1<<2)));
  cd1400_enable_transmitter(mp->mp_cd1400, mp->mp_channel);
  break;
 case ((unsigned long)0x20000000 | ((0 & 0x1fff) << 16) | ((('t')) << 8) | ((121))):
  mtty_modem_control(mp, 0002, 1);
  break;
 case ((unsigned long)0x20000000 | ((0 & 0x1fff) << 16) | ((('t')) << 8) | ((120))):
  mtty_modem_control(mp, 0002, 2);
  break;
 case ((unsigned long)0x80000000 | ((sizeof(int) & 0x1fff) << 16) | ((('t')) << 8) | ((109))):
  mtty_modem_control(mp, *((int *)data), 0);
  break;
 case ((unsigned long)0x80000000 | ((sizeof(int) & 0x1fff) << 16) | ((('t')) << 8) | ((108))):
  mtty_modem_control(mp, *((int *)data), 1);
  break;
 case ((unsigned long)0x80000000 | ((sizeof(int) & 0x1fff) << 16) | ((('t')) << 8) | ((107))):
  mtty_modem_control(mp, *((int *)data), 2);
  break;
 case ((unsigned long)0x40000000 | ((sizeof(int) & 0x1fff) << 16) | ((('t')) << 8) | ((106))):
  *((int *)data) = mtty_modem_control(mp, 0, 3);
  break;
 case ((unsigned long)0x40000000 | ((sizeof(int) & 0x1fff) << 16) | ((('t')) << 8) | ((93))):
  *((int *)data) = mp->mp_openflags;
  break;
 case ((unsigned long)0x80000000 | ((sizeof(int) & 0x1fff) << 16) | ((('t')) << 8) | ((92))):
  if (suser(p))
   error = 1;
  else
   mp->mp_openflags = *((int *)data) &
    (0x01 | 0x02 |
    0x04 | 0x08);
  break;
 default:
  error = 25;
 }
 return (error);
}
int
mttystop(struct tty *tp, int flags)
{
 struct mtty_softc *ms = mtty_cd.cd_devs[((((int32_t)((tp->t_dev) & 0xff) | (((tp->t_dev) & 0xffff0000) >> 8)) >> 6) & 0x03)];
 struct mtty_port *mp = &ms->ms_port[(((int32_t)((tp->t_dev) & 0xff) | (((tp->t_dev) & 0xffff0000) >> 8)) & 0x0f)];
 int s;
 s = _splraise(6);
 if (((tp->t_state) & (0x00004))) {
  if (!((tp->t_state) & (0x00100)))
   ((tp->t_state) |= (0x00010));
  ((mp->mp_flags) |= ((1<<4)));
 }
 _splx(s);
 return (0);
}
void
mtty_start(struct tty *tp)
{
 struct mtty_softc *ms = mtty_cd.cd_devs[((((int32_t)((tp->t_dev) & 0xff) | (((tp->t_dev) & 0xffff0000) >> 8)) >> 6) & 0x03)];
 struct mtty_port *mp = &ms->ms_port[(((int32_t)((tp->t_dev) & 0xff) | (((tp->t_dev) & 0xffff0000) >> 8)) & 0x0f)];
 int s;
 s = _splraise(6);
 if (!((tp->t_state) & (0x00100 | 0x00080 | 0x00004))) {
  ttwakeupwr(tp);
  if (tp->t_outq.c_cc) {
   mp->mp_txc = ndqb(&tp->t_outq, 0);
   mp->mp_txp = tp->t_outq.c_cf;
   ((tp->t_state) |= (0x00004));
   cd1400_enable_transmitter(mp->mp_cd1400, mp->mp_channel);
  }
 }
 _splx(s);
}
int
mtty_modem_control(struct mtty_port *mp, int bits, int howto)
{
 struct cd1400 *cd = mp->mp_cd1400;
 struct tty *tp = mp->mp_tty;
 int s, msvr;
 s = _splraise(6);
 bus_space_write_1((cd)->cd_regt, (cd)->cd_regh, (0x68), (mp->mp_channel));
 switch(howto) {
 case 3:
  bits = 0;
  bits |= 0001;
  msvr = bus_space_read_1((cd)->cd_regt, (cd)->cd_regh, (0x6C));
  if (msvr & (1<<0))
   bits |= 0002;
  msvr = bus_space_read_1((cd)->cd_regt, (cd)->cd_regh, (0x6D));
  if (msvr & (1<<1))
   bits |= 0004;
  if (msvr & (1<<6))
   bits |= 0040;
  if (msvr & (1<<5))
   bits |= 0200;
  if (msvr & (1<<7))
   bits |= (cd->cd_parmode ? 0100 : 0400);
  if (msvr & (1<<4))
   bits |= (cd->cd_parmode ? 0 : 0100);
  break;
 case 0:
  if (!((tp->t_termios.c_cflag) & (0x00010000)))
   bus_space_write_1((cd)->cd_regt, (cd)->cd_regh, (0x6D), (((bits & 0004) ? (1<<1) : 0)));
  bus_space_write_1((cd)->cd_regt, (cd)->cd_regh, (0x6C), (((bits & 0002) ? (1<<0) : 0)));
  break;
 case 1:
  if ((bits & 0004) && !((tp->t_termios.c_cflag) & (0x00010000)))
   bus_space_write_1((cd)->cd_regt, (cd)->cd_regh, (0x6D), ((1<<1)));
  if (bits & 0002)
   bus_space_write_1((cd)->cd_regt, (cd)->cd_regh, (0x6C), ((1<<0)));
  break;
 case 2:
  if ((bits & 0004) && !((tp->t_termios.c_cflag) & (0x00010000)))
   bus_space_write_1((cd)->cd_regt, (cd)->cd_regh, (0x6D), (0));
  if (bits & 0002)
   bus_space_write_1((cd)->cd_regt, (cd)->cd_regh, (0x6C), (0));
  break;
 }
 _splx(s);
 return (bits);
}
int
mtty_param(struct tty *tp, struct termios *t)
{
 struct mtty_softc *ms = mtty_cd.cd_devs[((((int32_t)((tp->t_dev) & 0xff) | (((tp->t_dev) & 0xffff0000) >> 8)) >> 6) & 0x03)];
 struct mtty_port *mp = &ms->ms_port[(((int32_t)((tp->t_dev) & 0xff) | (((tp->t_dev) & 0xffff0000) >> 8)) & 0x0f)];
 struct cd1400 *cd = mp->mp_cd1400;
 int rbpr, tbpr, rcor, tcor;
 u_char mcor1 = 0, mcor2 = 0;
 int s, opt;
 if (t->c_ospeed &&
     cd1400_compute_baud(t->c_ospeed, cd->cd_clock, &tcor, &tbpr))
  return (22);
 if (t->c_ispeed &&
     cd1400_compute_baud(t->c_ispeed, cd->cd_clock, &rcor, &rbpr))
  return (22);
 s = _splraise(6);
 (void)mtty_modem_control(mp, 0002,
     (t->c_ospeed == 0 ? 2 : 1));
 if (t->c_ospeed) {
  bus_space_write_1((cd)->cd_regt, (cd)->cd_regh, (0x76), (tcor));
  bus_space_write_1((cd)->cd_regt, (cd)->cd_regh, (0x72), (tbpr));
 }
 if (t->c_ispeed) {
  bus_space_write_1((cd)->cd_regt, (cd)->cd_regh, (0x7C), (rcor));
  bus_space_write_1((cd)->cd_regt, (cd)->cd_regh, (0x78), (rbpr));
 }
 opt = (1<<4) | (1<<3) | (1<<1);
 cd1400_write_ccr(cd, opt);
 opt = 0;
 if (((t->c_cflag) & (0x00001000)))
  opt |= (((t->c_cflag) & (0x00002000)) ? (1<<7) : (2<<5));
 if (!((t->c_iflag) & (0x00000010)))
  opt |= (1<<4);
 if (((t->c_cflag) & (0x00000400)))
  opt |= (2<<2);
 switch( t->c_cflag & 0x00000300) {
 case 0x00000000:
  opt |= (0<<0);
  break;
 case 0x00000100:
  opt |= (1<<0);
  break;
 case 0x00000200:
  opt |= (2<<0);
  break;
 default:
  opt |= (3<<0);
  break;
 }
 bus_space_write_1((cd)->cd_regt, (cd)->cd_regh, (0x08), (opt));
 opt = (1<<5);
 if (((t->c_cflag) & (0x00010000)))
  opt |= (1<<1);
 bus_space_write_1((cd)->cd_regt, (cd)->cd_regh, (0x09), (opt));
 bus_space_write_1((cd)->cd_regt, (cd)->cd_regh, (0x0A), (6));
 cd1400_write_ccr(cd, (1<<6) | (1<<1) | (1<<2) | (1<<3));
 bus_space_write_1((cd)->cd_regt, (cd)->cd_regh, (0x1E), ((0<<0)));
 bus_space_write_1((cd)->cd_regt, (cd)->cd_regh, (0x1F), (0));
 if (((t->c_cflag) & (0x00010000)))
  mcor1 = 9;
 if (cd->cd_parmode) {
  ((mcor1) |= ((1<<7)));
  ((mcor2) |= ((1<<7)));
 } else {
  ((mcor1) |= ((1<<4)));
  ((mcor2) |= ((1<<4)));
 }
 bus_space_write_1((cd)->cd_regt, (cd)->cd_regh, (0x15), (mcor1));
 bus_space_write_1((cd)->cd_regt, (cd)->cd_regh, (0x16), (mcor2));
 bus_space_write_1((cd)->cd_regt, (cd)->cd_regh, (0x21), (2));
 _splx(s);
 return (0);
}
int
mbpp_match(struct device *parent, void *vcf, void *args)
{
 struct magma_softc *sc = (struct magma_softc *)parent;
 return (args == mbpp_match && sc->ms_board->mb_npar &&
     sc->ms_mbpp == ((void *)0));
}
void
mbpp_attach(struct device *parent, struct device *dev, void *args)
{
 struct magma_softc *sc = (struct magma_softc *)parent;
 struct mbpp_softc *ms = (struct mbpp_softc *)dev;
 struct mbpp_port *mp;
 int port;
 sc->ms_mbpp = ms;
 ;
 for (port = 0 ; port < sc->ms_board->mb_npar ; port++) {
  mp = &ms->ms_port[port];
  if (sc->ms_ncd1190)
   mp->mp_cd1190 = &sc->ms_cd1190[port];
  else
   mp->mp_cd1400 = &sc->ms_cd1400[0];
  timeout_set(&mp->mp_timeout_tmo, mbpp_timeout, mp);
  timeout_set(&mp->mp_start_tmo, mbpp_start, mp);
 }
 ms->ms_nports = port;
 printf(": %d port%s\n", port, port == 1 ? "" : "s");
}
int
mbppopen(dev_t dev, int flags, int mode, struct proc *p)
{
 int card = ((((int32_t)((dev) & 0xff) | (((dev) & 0xffff0000) >> 8)) >> 6) & 0x03);
 int port = (((int32_t)((dev) & 0xff) | (((dev) & 0xffff0000) >> 8)) & 0x0f);
 struct mbpp_softc *ms;
 struct mbpp_port *mp;
 int s;
 if (card >= mbpp_cd.cd_ndevs || (ms = mbpp_cd.cd_devs[card]) == ((void *)0) || port >= ms->ms_nports)
  return (6);
 mp = &ms->ms_port[port];
 s = _splraise(6);
 if (((mp->mp_flags) & ((1<<0)))) {
  _splx(s);
  return (16);
 }
 ((mp->mp_flags) |= ((1<<0)));
 _splx(s);
 mp->mp_param.bp_burst = 1024;
 mp->mp_param.bp_timeout = mbpp_mstohz(-1);
 mp->mp_param.bp_delay = mbpp_mstohz(10);
 if (mp->mp_cd1400) {
  struct cd1400 *cd = mp->mp_cd1400;
  s = _splraise(6);
  bus_space_write_1((cd)->cd_regt, (cd)->cd_regh, (0x68), (0));
  cd1400_write_ccr(cd, (1<<7));
  bus_space_write_1((cd)->cd_regt, (cd)->cd_regh, (0x18), ((1<<3)));
  _splx(s);
 } else {
  mp->mp_flags = 0;
  return (6);
 }
 return (0);
}
int
mbppclose(dev_t dev, int flag, int mode, struct proc *p)
{
 struct mbpp_softc *ms = mbpp_cd.cd_devs[((((int32_t)((dev) & 0xff) | (((dev) & 0xffff0000) >> 8)) >> 6) & 0x03)];
 struct mbpp_port *mp = &ms->ms_port[(((int32_t)((dev) & 0xff) | (((dev) & 0xffff0000) >> 8)) & 0x0f)];
 mp->mp_flags = 0;
 return (0);
}
int
mbppread(dev_t dev, struct uio *uio, int flags)
{
 return (mbpp_rw(dev, uio));
}
int
mbppwrite(dev_t dev, struct uio *uio, int flags)
{
 return (mbpp_rw(dev, uio));
}
int
mbppioctl(dev_t dev, u_long cmd, caddr_t data, int flags, struct proc *p)
{
 struct mbpp_softc *ms = mbpp_cd.cd_devs[((((int32_t)((dev) & 0xff) | (((dev) & 0xffff0000) >> 8)) >> 6) & 0x03)];
 struct mbpp_port *mp = &ms->ms_port[(((int32_t)((dev) & 0xff) | (((dev) & 0xffff0000) >> 8)) & 0x0f)];
 struct bpp_param *bp;
 int error = 0;
 int s;
 switch(cmd) {
 case ((unsigned long)0x80000000 | ((sizeof(struct bpp_param) & 0x1fff) << 16) | ((('P')) << 8) | ((0x1))):
  bp = (struct bpp_param *)data;
  if (bp->bp_burst < 1 || bp->bp_burst > 1024 ||
      bp->bp_delay < 0 || bp->bp_delay > 0) {
   error = 22;
  } else {
   mp->mp_param.bp_burst = bp->bp_burst;
   mp->mp_param.bp_timeout = mbpp_mstohz(bp->bp_timeout);
   mp->mp_param.bp_delay = mbpp_mstohz(bp->bp_delay);
  }
  break;
 case ((unsigned long)0x40000000 | ((sizeof(struct bpp_param) & 0x1fff) << 16) | ((('P')) << 8) | ((0x2))):
  bp = (struct bpp_param *)data;
  bp->bp_burst = mp->mp_param.bp_burst;
  bp->bp_timeout = mbpp_hztoms(mp->mp_param.bp_timeout);
  bp->bp_delay = mbpp_hztoms(mp->mp_param.bp_delay);
  break;
 case ((unsigned long)0x40000000 | ((sizeof(int) & 0x1fff) << 16) | ((('P')) << 8) | ((0x4))):
  s = _splraise(6);
  bus_space_write_1((mp->mp_cd1400)->cd_regt, (mp->mp_cd1400)->cd_regh, (0x68), (0));
  *(int *)data = bus_space_read_1((mp->mp_cd1400)->cd_regt, (mp->mp_cd1400)->cd_regh, (0x6F));
  _splx(s);
  break;
 default:
  error = 25;
 }
 return (error);
}
int
mbpppoll(dev_t dev, int events, struct proc *p)
{
 return (seltrue(dev, events, p));
}
int
mbpp_rw(dev_t dev, struct uio *uio)
{
 int card = ((((int32_t)((dev) & 0xff) | (((dev) & 0xffff0000) >> 8)) >> 6) & 0x03);
 int port = (((int32_t)((dev) & 0xff) | (((dev) & 0xffff0000) >> 8)) & 0x0f);
 struct mbpp_softc *ms = mbpp_cd.cd_devs[card];
 struct mbpp_port *mp = &ms->ms_port[port];
 caddr_t buffer, ptr;
 size_t buflen, cnt, len;
 int s, error = 0;
 int gotdata = 0;
 if (uio->uio_resid == 0)
  return (0);
 buflen = ulmin(uio->uio_resid, mp->mp_param.bp_burst);
 buffer = malloc(buflen, 2, 0x0001);
 ((mp->mp_flags) |= ((1<<2)));
 if (mp->mp_param.bp_timeout > 0) {
  ((mp->mp_flags) |= ((1<<1)));
  timeout_add(&mp->mp_timeout_tmo, mp->mp_param.bp_timeout);
 }
 len = cnt = 0;
 while (uio->uio_resid > 0) {
  len = ulmin(buflen, uio->uio_resid);
  ptr = buffer;
  if (uio->uio_rw == UIO_WRITE) {
   error = uiomove(ptr, len, uio);
   if (error)
    break;
  }
 again:
  if (!((mp->mp_flags) & ((1<<2))))
   break;
  if (uio->uio_rw == UIO_WRITE) {
   cnt = mbpp_send(mp, ptr, len);
  } else {
   cnt = mbpp_recv(mp, ptr, len);
  }
  if (uio->uio_rw == UIO_READ) {
   if (cnt) {
    error = uiomove(ptr, cnt, uio);
    if (error)
     break;
    gotdata++;
   }
   else if (gotdata)
    break;
  }
  if (!((mp->mp_flags) & ((1<<2))))
   break;
  if (mp->mp_param.bp_delay > 0) {
   s = _splraise(6);
   ((mp->mp_flags) |= ((1<<3)));
   timeout_add(&mp->mp_start_tmo, mp->mp_param.bp_delay);
   error = tsleep(mp, 0x100 | 22, "mbppdelay", 0);
   _splx(s);
   if (error)
    break;
  }
  if (uio->uio_rw == UIO_WRITE && cnt != len) {
   ptr += cnt;
   len -= cnt;
   cnt = 0;
   goto again;
  }
 }
 s = _splraise(6);
 if (((mp->mp_flags) & ((1<<1)))) {
  timeout_del(&mp->mp_timeout_tmo);
  ((mp->mp_flags) &= ~((1<<1)));
 }
 if (((mp->mp_flags) & ((1<<3)))) {
  timeout_del(&mp->mp_start_tmo);
  ((mp->mp_flags) &= ~((1<<3)));
 }
 _splx(s);
 if (uio->uio_rw == UIO_WRITE && cnt != len) {
  uio->uio_resid += (len - cnt);
 }
 free(buffer, 2, 0);
 return (error);
}
void
mbpp_timeout(void *arg)
{
 struct mbpp_port *mp = arg;
 ((mp->mp_flags) &= ~((1<<2) | (1<<1)));
 wakeup(mp);
}
void
mbpp_start(void *arg)
{
 struct mbpp_port *mp = arg;
 ((mp->mp_flags) &= ~((1<<3)));
 wakeup(mp);
}
int
mbpp_send(struct mbpp_port *mp, caddr_t ptr, int len)
{
 int s;
 struct cd1400 *cd = mp->mp_cd1400;
 mp->mp_ptr = ptr;
 mp->mp_cnt = len;
 s = _splraise(6);
 if (cd) {
  bus_space_write_1((cd)->cd_regt, (cd)->cd_regh, (0x68), (0));
  bus_space_write_1((cd)->cd_regt, (cd)->cd_regh, (0x72), (10));
  cd1400_write_ccr(cd, (1<<4) | (1<<3));
  bus_space_write_1((cd)->cd_regt, (cd)->cd_regh, (0x06), ((1<<2)));
 }
 tsleep(mp, 0x100 | 22, "mbpp_send", 0);
 if (cd) {
  bus_space_write_1((cd)->cd_regt, (cd)->cd_regh, (0x68), (0));
  bus_space_write_1((cd)->cd_regt, (cd)->cd_regh, (0x06), (0));
  cd1400_write_ccr(cd, (1<<4) | (1<<2));
  cd1400_write_ccr(cd, (1<<7) | (1<<1));
 }
 _splx(s);
 return (len - mp->mp_cnt);
}
int
mbpp_recv(struct mbpp_port *mp, caddr_t ptr, int len)
{
 int s;
 struct cd1400 *cd = mp->mp_cd1400;
 mp->mp_ptr = ptr;
 mp->mp_cnt = len;
 s = _splraise(6);
 if (cd) {
  int rcor, rbpr;
  bus_space_write_1((cd)->cd_regt, (cd)->cd_regh, (0x68), (0));
  cd1400_compute_baud(100000, cd->cd_clock, &rcor, &rbpr);
  bus_space_write_1((cd)->cd_regt, (cd)->cd_regh, (0x7C), (rcor));
  bus_space_write_1((cd)->cd_regt, (cd)->cd_regh, (0x78), (rbpr));
  bus_space_write_1((cd)->cd_regt, (cd)->cd_regh, (0x0A), (25));
  cd1400_write_ccr(cd, (1<<6) | (1<<3));
  cd1400_write_ccr(cd, (1<<4) | (1<<1));
  bus_space_write_1((cd)->cd_regt, (cd)->cd_regh, (0x06), ((1<<4)));
 }
 tsleep(mp, 0x100 | 22, "mbpp_recv", 0);
 if (cd) {
  bus_space_write_1((cd)->cd_regt, (cd)->cd_regh, (0x68), (0));
  bus_space_write_1((cd)->cd_regt, (cd)->cd_regh, (0x06), (0));
  cd1400_write_ccr(cd, (1<<4) | (1<<0));
 }
 _splx(s);
 return (len - mp->mp_cnt);
}
int
mbpp_hztoms(int h)
{
 int m = h;
 if (m > 0)
  m = m * 1000 / hz;
 return (m);
}
int
mbpp_mstohz(int m)
{
 int h = m;
 if (h > 0) {
  h = h * hz / 1000;
  if (h == 0)
   h = 1000 / hz;
 }
 return (h);
}
