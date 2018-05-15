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
enum sensor_type {
 SENSOR_TEMP,
 SENSOR_FANRPM,
 SENSOR_VOLTS_DC,
 SENSOR_VOLTS_AC,
 SENSOR_OHMS,
 SENSOR_WATTS,
 SENSOR_AMPS,
 SENSOR_WATTHOUR,
 SENSOR_AMPHOUR,
 SENSOR_INDICATOR,
 SENSOR_INTEGER,
 SENSOR_PERCENT,
 SENSOR_LUX,
 SENSOR_DRIVE,
 SENSOR_TIMEDELTA,
 SENSOR_HUMIDITY,
 SENSOR_FREQ,
 SENSOR_ANGLE,
 SENSOR_DISTANCE,
 SENSOR_PRESSURE,
 SENSOR_ACCEL,
 SENSOR_MAX_TYPES
};
enum sensor_status {
 SENSOR_S_UNSPEC,
 SENSOR_S_OK,
 SENSOR_S_WARN,
 SENSOR_S_CRIT,
 SENSOR_S_UNKNOWN
};
struct sensor {
 char desc[32];
 struct timeval tv;
 int64_t value;
 enum sensor_type type;
 enum sensor_status status;
 int numt;
 int flags;
};
struct sensordev {
 int num;
 char xname[16];
 int maxnumt[SENSOR_MAX_TYPES];
 int sensors_count;
};
struct ksensor {
 struct { struct ksensor *sle_next; } list;
 char desc[32];
 struct timeval tv;
 int64_t value;
 enum sensor_type type;
 enum sensor_status status;
 int numt;
 int flags;
};
struct ksensors_head { struct ksensor *slh_first; };
struct ksensordev {
 struct { struct ksensordev *sle_next; } list;
 int num;
 char xname[16];
 int maxnumt[SENSOR_MAX_TYPES];
 int sensors_count;
 struct ksensors_head sensors_list;
};
void sensordev_install(struct ksensordev *);
void sensordev_deinstall(struct ksensordev *);
int sensordev_get(int, struct ksensordev **);
void sensor_attach(struct ksensordev *, struct ksensor *);
void sensor_detach(struct ksensordev *, struct ksensor *);
int sensor_find(int, enum sensor_type, int, struct ksensor **);
struct sensor_task;
struct sensor_task *sensor_task_register(void *, void (*)(void *),
        unsigned int);
void sensor_task_unregister(struct sensor_task *);
void sensor_quiesce(void);
void sensor_restart(void);
struct dk_inquiry {
 char vendor[64];
 char product[128];
 char revision[64];
 char serial[64];
};
struct dk_cache {
 unsigned int wrcache;
 unsigned int rdcache;
};
struct dk_diskmap {
 char *device;
 int fd;
 int flags;
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
struct scsi_generic {
 u_int8_t opcode;
 u_int8_t bytes[15];
};
struct scsi_test_unit_ready {
 u_int8_t opcode;
 u_int8_t byte2;
 u_int8_t unused[3];
 u_int8_t control;
};
struct scsi_send_diag {
 u_int8_t opcode;
 u_int8_t byte2;
 u_int8_t unused[1];
 u_int8_t paramlen[2];
 u_int8_t control;
};
struct scsi_sense {
 u_int8_t opcode;
 u_int8_t byte2;
 u_int8_t unused[2];
 u_int8_t length;
 u_int8_t control;
};
struct scsi_inquiry {
 u_int8_t opcode;
 u_int8_t flags;
 u_int8_t pagecode;
 u_int8_t length[2];
 u_int8_t control;
};
struct scsi_mode_sense {
 u_int8_t opcode;
 u_int8_t byte2;
 u_int8_t page;
 u_int8_t unused;
 u_int8_t length;
 u_int8_t control;
};
struct scsi_mode_sense_big {
 u_int8_t opcode;
 u_int8_t byte2;
 u_int8_t page;
 u_int8_t unused[4];
 u_int8_t length[2];
 u_int8_t control;
};
struct scsi_mode_select {
 u_int8_t opcode;
 u_int8_t byte2;
 u_int8_t unused[2];
 u_int8_t length;
 u_int8_t control;
};
struct scsi_mode_select_big {
 u_int8_t opcode;
 u_int8_t byte2;
 u_int8_t unused[5];
 u_int8_t length[2];
 u_int8_t control;
};
struct scsi_reserve {
 u_int8_t opcode;
 u_int8_t byte2;
 u_int8_t unused[2];
 u_int8_t length;
 u_int8_t control;
};
struct scsi_release {
 u_int8_t opcode;
 u_int8_t byte2;
 u_int8_t unused[2];
 u_int8_t length;
 u_int8_t control;
};
struct scsi_prevent {
 u_int8_t opcode;
 u_int8_t byte2;
 u_int8_t unused[2];
 u_int8_t how;
 u_int8_t control;
};
struct scsi_report_luns {
 u_int8_t opcode;
 u_int8_t unused;
 u_int8_t selectreport;
 u_int8_t unused2[3];
 u_int8_t length[4];
 u_int8_t unused4;
 u_int8_t control;
};
struct scsi_inquiry_data {
 u_int8_t device;
 u_int8_t dev_qual2;
 u_int8_t version;
 u_int8_t response_format;
 u_int8_t additional_length;
 u_int8_t unused[2];
 u_int8_t flags;
 char vendor[8];
 char product[16];
 char revision[4];
 u_int8_t extra[20];
 u_int8_t flags2;
 u_int8_t reserved;
};
struct scsi_vpd_hdr {
 u_int8_t device;
 u_int8_t page_code;
 u_int8_t page_length[2];
};
struct scsi_vpd_serial {
 struct scsi_vpd_hdr hdr;
 char serial[32];
};
struct scsi_vpd_devid_hdr {
 u_int8_t pi_code;
 u_int8_t flags;
 u_int8_t reserved;
 u_int8_t len;
};
struct scsi_vpd_ata {
 struct scsi_vpd_hdr hdr;
 u_int8_t _reserved1[4];
 u_int8_t sat_vendor[8];
 u_int8_t sat_product[16];
 u_int8_t sat_revision[4];
 u_int8_t device_signature[20];
 u_int8_t command_code;
 u_int8_t _reserved2[3];
 u_int8_t identify[512];
};
struct scsi_sense_data_unextended {
       u_int8_t error_code;
       u_int8_t block[3];
};
struct scsi_sense_data {
       u_int8_t error_code;
       u_int8_t segment;
       u_int8_t flags;
       u_int8_t info[4];
       u_int8_t extra_len;
       u_int8_t cmd_spec_info[4];
       u_int8_t add_sense_code;
       u_int8_t add_sense_code_qual;
       u_int8_t fru;
       u_int8_t sense_key_spec_1;
       u_int8_t sense_key_spec_2;
       u_int8_t sense_key_spec_3;
};
struct scsi_blk_desc {
 u_int8_t density;
 u_int8_t nblocks[3];
 u_int8_t reserved;
 u_int8_t blklen[3];
};
struct scsi_direct_blk_desc {
 u_int8_t nblocks[4];
 u_int8_t density;
 u_int8_t blklen[3];
};
struct scsi_blk_desc_big {
 u_int8_t nblocks[8];
 u_int8_t density;
 u_int8_t reserved[3];
 u_int8_t blklen[4];
};
struct scsi_mode_header {
 u_int8_t data_length;
 u_int8_t medium_type;
 u_int8_t dev_spec;
 u_int8_t blk_desc_len;
};
struct scsi_mode_header_big {
 u_int8_t data_length[2];
 u_int8_t medium_type;
 u_int8_t dev_spec;
 u_int8_t reserved;
 u_int8_t reserved2;
 u_int8_t blk_desc_len[2];
};
union scsi_mode_sense_buf {
 struct scsi_mode_header hdr;
 struct scsi_mode_header_big hdr_big;
 u_char buf[254];
} __attribute__((__packed__));
struct scsi_report_luns_data {
 u_int8_t length[4];
 u_int8_t reserved[4];
 struct {
  u_int8_t lundata[8];
 } luns[256];
};
struct scsi_ata_passthru_12 {
 u_int8_t opcode;
 u_int8_t count_proto;
 u_int8_t flags;
 u_int8_t features;
 u_int8_t sector_count;
 u_int8_t lba_low;
 u_int8_t lba_mid;
 u_int8_t lba_high;
 u_int8_t device;
 u_int8_t command;
 u_int8_t _reserved;
 u_int8_t control;
};
struct scsi_ata_passthru_16 {
 u_int8_t opcode;
 u_int8_t count_proto;
 u_int8_t flags;
 u_int8_t features[2];
 u_int8_t sector_count[2];
 u_int8_t lba_low[2];
 u_int8_t lba_mid[2];
 u_int8_t lba_high[2];
 u_int8_t device;
 u_int8_t command;
 u_int8_t control;
};
struct scsi_status_iu_header {
       u_int8_t reserved[2];
       u_int8_t flags;
       u_int8_t status;
       u_int8_t sense_length[4];
       u_int8_t pkt_failures_length[4];
 u_int8_t data[1];
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
struct mutex {
 volatile void *mtx_owner;
 int mtx_wantipl;
 int mtx_oldipl;
};
void __mtx_init(struct mutex *, int);
void __mtx_enter(struct mutex *);
int __mtx_enter_try(struct mutex *);
void __mtx_leave(struct mutex *);
extern u_int32_t scsidebug_buses, scsidebug_targets, scsidebug_luns;
extern int scsidebug_level;
static __inline void _lto2b(u_int32_t val, u_int8_t *bytes);
static __inline void _lto3b(u_int32_t val, u_int8_t *bytes);
static __inline void _lto4b(u_int32_t val, u_int8_t *bytes);
static __inline void _lto8b(u_int64_t val, u_int8_t *bytes);
static __inline u_int32_t _2btol(u_int8_t *bytes);
static __inline u_int32_t _3btol(u_int8_t *bytes);
static __inline u_int32_t _4btol(u_int8_t *bytes);
static __inline u_int64_t _5btol(u_int8_t *bytes);
static __inline u_int64_t _8btol(u_int8_t *bytes);
static __inline void
_lto2b(u_int32_t val, u_int8_t *bytes)
{
 bytes[0] = (val >> 8) & 0xff;
 bytes[1] = val & 0xff;
}
static __inline void
_lto3b(u_int32_t val, u_int8_t *bytes)
{
 bytes[0] = (val >> 16) & 0xff;
 bytes[1] = (val >> 8) & 0xff;
 bytes[2] = val & 0xff;
}
static __inline void
_lto4b(u_int32_t val, u_int8_t *bytes)
{
 bytes[0] = (val >> 24) & 0xff;
 bytes[1] = (val >> 16) & 0xff;
 bytes[2] = (val >> 8) & 0xff;
 bytes[3] = val & 0xff;
}
static __inline void
_lto8b(u_int64_t val, u_int8_t *bytes)
{
 bytes[0] = (val >> 56) & 0xff;
 bytes[1] = (val >> 48) & 0xff;
 bytes[2] = (val >> 40) & 0xff;
 bytes[3] = (val >> 32) & 0xff;
 bytes[4] = (val >> 24) & 0xff;
 bytes[5] = (val >> 16) & 0xff;
 bytes[6] = (val >> 8) & 0xff;
 bytes[7] = val & 0xff;
}
static __inline u_int32_t
_2btol(u_int8_t *bytes)
{
 u_int32_t rv;
 rv = (bytes[0] << 8) | bytes[1];
 return (rv);
}
static __inline u_int32_t
_3btol(u_int8_t *bytes)
{
 u_int32_t rv;
 rv = (bytes[0] << 16) | (bytes[1] << 8) | bytes[2];
 return (rv);
}
static __inline u_int32_t
_4btol(u_int8_t *bytes)
{
 u_int32_t rv;
 rv = (bytes[0] << 24) | (bytes[1] << 16) |
     (bytes[2] << 8) | bytes[3];
 return (rv);
}
static __inline u_int64_t
_5btol(u_int8_t *bytes)
{
 u_int64_t rv;
 rv = ((u_int64_t)bytes[0] << 32) |
      ((u_int64_t)bytes[1] << 24) |
      ((u_int64_t)bytes[2] << 16) |
      ((u_int64_t)bytes[3] << 8) |
      (u_int64_t)bytes[4];
 return (rv);
}
static __inline u_int64_t
_8btol(u_int8_t *bytes)
{
 u_int64_t rv;
 rv = (((u_int64_t)bytes[0]) << 56) |
     (((u_int64_t)bytes[1]) << 48) |
     (((u_int64_t)bytes[2]) << 40) |
     (((u_int64_t)bytes[3]) << 32) |
     (((u_int64_t)bytes[4]) << 24) |
     (((u_int64_t)bytes[5]) << 16) |
     (((u_int64_t)bytes[6]) << 8) |
     ((u_int64_t)bytes[7]);
 return (rv);
}
struct devid {
 u_int8_t d_type;
 u_int8_t d_flags;
 u_int8_t d_refcount;
 u_int8_t d_len;
};
struct devid * devid_alloc(u_int8_t, u_int8_t, u_int8_t, u_int8_t *);
struct devid * devid_copy(struct devid *);
void devid_free(struct devid *);
struct scsi_xfer;
struct scsi_link;
struct scsibus_softc;
extern int scsi_autoconf;
struct scsi_adapter {
 void (*scsi_cmd)(struct scsi_xfer *);
 void (*scsi_minphys)(struct buf *, struct scsi_link *);
 int (*dev_probe)(struct scsi_link *);
 void (*dev_free)(struct scsi_link *);
 int (*ioctl)(struct scsi_link *, u_long, caddr_t, int);
};
struct scsi_iopool;
struct scsi_iohandler {
 struct { struct scsi_iohandler *tqe_next; struct scsi_iohandler **tqe_prev; } q_entry;
 u_int q_state;
 struct scsi_iopool *pool;
 void (*handler)(void *, void *);
 void *cookie;
};
struct scsi_runq { struct scsi_iohandler *tqh_first; struct scsi_iohandler **tqh_last; };
struct scsi_iopool {
 void *iocookie;
 void *(*io_get)(void *);
 void (*io_put)(void *, void *);
 struct scsi_runq queue;
 u_int running;
 struct mutex mtx;
};
struct scsi_xshandler {
 struct scsi_iohandler ioh;
 struct scsi_link *link;
 void (*handler)(struct scsi_xfer *);
};
struct scsi_link {
 struct { struct scsi_link *sle_next; } bus_list;
 u_int state;
 u_int8_t scsibus;
 u_int8_t luns;
 u_int16_t target;
 u_int16_t lun;
 u_int16_t openings;
 u_int64_t port_wwn;
 u_int64_t node_wwn;
 u_int16_t adapter_target;
 u_int16_t adapter_buswidth;
 u_int16_t flags;
 u_int16_t quirks;
 int (*interpret_sense)(struct scsi_xfer *);
 void *device_softc;
 struct scsi_adapter *adapter;
 void *adapter_softc;
 struct scsibus_softc *bus;
 struct scsi_inquiry_data inqdata;
 struct devid *id;
 struct scsi_runq queue;
 u_int running;
 u_short pending;
 struct scsi_iopool *pool;
};
int scsiprint(void *, const char *);
struct scsi_inquiry_pattern {
 u_int8_t type;
 int removable;
 char *vendor;
 char *product;
 char *revision;
};
struct scsibus_attach_args {
 struct scsi_link *saa_sc_link;
};
struct scsibus_softc {
 struct device sc_dev;
 struct scsi_link *adapter_link;
 struct { struct scsi_link *slh_first; } sc_link_list;
 u_int16_t sc_buswidth;
};
struct scsi_attach_args {
 struct scsi_link *sa_sc_link;
 struct scsi_inquiry_data *sa_inqbuf;
};
struct scsi_xfer {
 struct { struct scsi_xfer *sqe_next; } xfer_list;
 int flags;
 struct scsi_link *sc_link;
 int retries;
 int timeout;
 struct scsi_generic *cmd;
 int cmdlen;
 u_char *data;
 int datalen;
 size_t resid;
 int error;
 struct buf *bp;
 struct scsi_sense_data sense;
 u_int8_t status;
 struct scsi_generic cmdstore;
 struct timeout stimeout;
 void *cookie;
 void (*done)(struct scsi_xfer *);
 void *io;
};
struct scsi_xfer_list { struct scsi_xfer *sqh_first; struct scsi_xfer **sqh_last; };
const void *scsi_inqmatch(struct scsi_inquiry_data *, const void *, int,
     int, int *);
void scsi_init(void);
int scsi_test_unit_ready(struct scsi_link *, int, int);
int scsi_inquire(struct scsi_link *, struct scsi_inquiry_data *, int);
int scsi_inquire_vpd(struct scsi_link *, void *, u_int, u_int8_t, int);
void scsi_init_inquiry(struct scsi_xfer *, u_int8_t, u_int8_t,
     void *, size_t);
int scsi_prevent(struct scsi_link *, int, int);
int scsi_start(struct scsi_link *, int, int);
int scsi_mode_sense(struct scsi_link *, int, int, struct scsi_mode_header *,
     size_t, int, int);
int scsi_mode_sense_big(struct scsi_link *, int, int,
     struct scsi_mode_header_big *, size_t, int, int);
void * scsi_mode_sense_page(struct scsi_mode_header *, int);
void * scsi_mode_sense_big_page(struct scsi_mode_header_big *, int);
int scsi_do_mode_sense(struct scsi_link *, int,
     union scsi_mode_sense_buf *, void **, u_int32_t *, u_int64_t *,
     u_int32_t *, int, int, int *);
int scsi_mode_select(struct scsi_link *, int, struct scsi_mode_header *,
     int, int);
int scsi_mode_select_big(struct scsi_link *, int,
     struct scsi_mode_header_big *, int, int);
void scsi_done(struct scsi_xfer *);
int scsi_do_ioctl(struct scsi_link *, u_long, caddr_t, int);
void sc_print_addr(struct scsi_link *);
int scsi_report_luns(struct scsi_link *, int,
     struct scsi_report_luns_data *, u_int32_t, int, int);
void scsi_minphys(struct buf *, struct scsi_link *);
int scsi_interpret_sense(struct scsi_xfer *);
void scsi_xs_show(struct scsi_xfer *);
void scsi_print_sense(struct scsi_xfer *);
void scsi_show_mem(u_char *, int);
void scsi_strvis(u_char *, u_char *, int);
int scsi_delay(struct scsi_xfer *, int);
int scsi_probe(struct scsibus_softc *, int, int);
int scsi_probe_bus(struct scsibus_softc *);
int scsi_probe_target(struct scsibus_softc *, int);
int scsi_probe_lun(struct scsibus_softc *, int, int);
int scsi_detach(struct scsibus_softc *, int, int, int);
int scsi_detach_bus(struct scsibus_softc *, int);
int scsi_detach_target(struct scsibus_softc *, int, int);
int scsi_detach_lun(struct scsibus_softc *, int, int, int);
int scsi_req_probe(struct scsibus_softc *, int, int);
int scsi_req_detach(struct scsibus_softc *, int, int, int);
int scsi_activate(struct scsibus_softc *, int, int, int);
struct scsi_link * scsi_get_link(struct scsibus_softc *, int, int);
void scsi_add_link(struct scsibus_softc *,
       struct scsi_link *);
void scsi_remove_link(struct scsibus_softc *,
       struct scsi_link *);
extern const u_int8_t version_to_spc[];
struct scsi_xfer * scsi_xs_get(struct scsi_link *, int);
void scsi_xs_exec(struct scsi_xfer *);
int scsi_xs_sync(struct scsi_xfer *);
void scsi_xs_put(struct scsi_xfer *);
void scsi_iopool_init(struct scsi_iopool *, void *,
     void *(*)(void *), void (*)(void *, void *));
void scsi_iopool_run(struct scsi_iopool *);
void scsi_iopool_destroy(struct scsi_iopool *);
void scsi_link_shutdown(struct scsi_link *);
void * scsi_io_get(struct scsi_iopool *, int);
void scsi_io_put(struct scsi_iopool *, void *);
void * scsi_default_get(void *);
void scsi_default_put(void *, void *);
void scsi_ioh_set(struct scsi_iohandler *, struct scsi_iopool *,
     void (*)(void *, void *), void *);
int scsi_ioh_add(struct scsi_iohandler *);
int scsi_ioh_del(struct scsi_iohandler *);
void scsi_xsh_set(struct scsi_xshandler *, struct scsi_link *,
     void (*)(struct scsi_xfer *));
int scsi_xsh_add(struct scsi_xshandler *);
int scsi_xsh_del(struct scsi_xshandler *);
int scsi_pending_start(struct mutex *, u_int *);
int scsi_pending_finish(struct mutex *, u_int *);
void scsi_cmd_rw_decode(struct scsi_generic *, u_int64_t *, u_int32_t *);
struct bio_msg {
 int bm_type;
 char bm_msg[128];
};
struct bio_status {
 char bs_controller[16];
 int bs_status;
 int bs_msg_count;
 struct bio_msg bs_msgs[5];
};
struct bio {
 void *bio_cookie;
 struct bio_status bio_status;
};
struct bio_locate {
 struct bio bl_bio;
 char *bl_name;
};
struct bioc_inq {
 struct bio bi_bio;
 char bi_dev[16];
 int bi_novol;
 int bi_nodisk;
};
struct bioc_disk {
 struct bio bd_bio;
 u_int16_t bd_channel;
 u_int16_t bd_target;
 u_int16_t bd_lun;
 u_int16_t bd_other_id;
 int bd_volid;
 int bd_diskid;
 int bd_status;
 uint64_t bd_size;
 char bd_vendor[32];
 char bd_serial[32];
 char bd_procdev[16];
 struct {
  int bdp_percent;
  int bdp_seconds;
 } bd_patrol;
};
struct bioc_vol {
 struct bio bv_bio;
 int bv_volid;
 int16_t bv_percent;
 u_int16_t bv_seconds;
 int bv_status;
 uint64_t bv_size;
 int bv_level;
 int bv_nodisk;
 int bv_cache;
 char bv_dev[16];
 char bv_vendor[32];
};
struct bioc_alarm {
 struct bio ba_bio;
 int ba_opcode;
 int ba_status;
};
struct bioc_blink {
 struct bio bb_bio;
 u_int16_t bb_channel;
 u_int16_t bb_target;
 int bb_status;
};
struct bioc_setstate {
 struct bio bs_bio;
 u_int16_t bs_channel;
 u_int16_t bs_target;
 u_int16_t bs_lun;
 u_int16_t bs_other_id_type;
 int bs_other_id;
 int bs_status;
 int bs_volid;
};
struct bioc_createraid {
 struct bio bc_bio;
 void *bc_dev_list;
 u_int16_t bc_dev_list_len;
 int32_t bc_key_disk;
 u_int16_t bc_level;
 u_int32_t bc_flags;
 u_int32_t bc_opaque_size;
 u_int32_t bc_opaque_flags;
 u_int32_t bc_opaque_status;
 void *bc_opaque;
};
struct bioc_deleteraid {
 struct bio bd_bio;
 u_int32_t bd_flags;
 char bd_dev[16];
};
struct bioc_discipline {
 struct bio bd_bio;
 char bd_dev[16];
 u_int32_t bd_cmd;
 u_int32_t bd_size;
 void *bd_data;
};
struct bioc_installboot {
 struct bio bb_bio;
 char bb_dev[16];
 void *bb_bootblk;
 void *bb_bootldr;
 u_int32_t bb_bootblk_size;
 u_int32_t bb_bootldr_size;
};
struct bioc_patrol {
 struct bio bp_bio;
 int bp_opcode;
 int bp_mode;
 int bp_status;
 int bp_autoival;
 int bp_autonext;
 int bp_autonow;
};
int bio_register(struct device *, int (*)(struct device *, u_long,
     caddr_t));
void bio_unregister(struct device *);
void bio_status_init(struct bio_status *, struct device *);
void bio_status(struct bio_status *, int, int, const char *, va_list *);
void bio_info(struct bio_status *, int, const char *, ...);
void bio_warn(struct bio_status *, int, const char *, ...);
void bio_error(struct bio_status *, int, const char *, ...);
struct mpii_sge {
 u_int32_t sg_hdr;
 u_int32_t sg_addr_lo;
 u_int32_t sg_addr_hi;
} __attribute__((__packed__)) __attribute__((__aligned__(4)));
struct mpii_ieee_sge {
 u_int64_t sg_addr;
 u_int32_t sg_len;
 u_int16_t _reserved;
 u_int8_t sg_next_chain_offset;
 u_int8_t sg_flags;
} __attribute__((__packed__)) __attribute__((__aligned__(8)));
struct mpii_fw_tce {
 u_int8_t reserved1;
 u_int8_t context_size;
 u_int8_t details_length;
 u_int8_t flags;
 u_int32_t reserved2;
 u_int32_t image_offset;
 u_int32_t image_size;
} __attribute__((__packed__)) __attribute__((__aligned__(4)));
struct mpii_msg_request {
 u_int8_t reserved1;
 u_int8_t reserved2;
 u_int8_t chain_offset;
 u_int8_t function;
 u_int8_t reserved3;
 u_int8_t reserved4;
 u_int8_t reserved5;
 u_int8_t msg_flags;
 u_int8_t vp_id;
 u_int8_t vf_id;
 u_int16_t reserved6;
} __attribute__((__packed__)) __attribute__((__aligned__(4)));
struct mpii_msg_reply {
 u_int16_t reserved1;
 u_int8_t msg_length;
 u_int8_t function;
 u_int16_t reserved2;
 u_int8_t reserved3;
 u_int8_t msg_flags;
 u_int8_t vp_id;
 u_int8_t vf_if;
 u_int16_t reserved4;
 u_int16_t reserved5;
 u_int16_t ioc_status;
 u_int32_t ioc_loginfo;
} __attribute__((__packed__)) __attribute__((__aligned__(4)));
struct mpii_msg_iocinit_request {
 u_int8_t whoinit;
 u_int8_t reserved1;
 u_int8_t chain_offset;
 u_int8_t function;
 u_int16_t reserved2;
 u_int8_t reserved3;
 u_int8_t msg_flags;
 u_int8_t vp_id;
 u_int8_t vf_id;
 u_int16_t reserved4;
 u_int8_t msg_version_min;
 u_int8_t msg_version_maj;
 u_int8_t hdr_version_unit;
 u_int8_t hdr_version_dev;
 u_int32_t reserved5;
 u_int32_t reserved6;
 u_int16_t reserved7;
 u_int16_t system_request_frame_size;
 u_int16_t reply_descriptor_post_queue_depth;
 u_int16_t reply_free_queue_depth;
 u_int32_t sense_buffer_address_high;
 u_int32_t system_reply_address_high;
 u_int32_t system_request_frame_base_address_lo;
 u_int32_t system_request_frame_base_address_hi;
 u_int32_t reply_descriptor_post_queue_address_lo;
 u_int32_t reply_descriptor_post_queue_address_hi;
 u_int32_t reply_free_queue_address_lo;
 u_int32_t reply_free_queue_address_hi;
 u_int64_t timestamp;
} __attribute__((__packed__)) __attribute__((__aligned__(4)));
struct mpii_msg_iocinit_reply {
 u_int8_t whoinit;
 u_int8_t reserved1;
 u_int8_t msg_length;
 u_int8_t function;
 u_int16_t reserved2;
 u_int8_t reserved3;
 u_int8_t msg_flags;
 u_int8_t vp_id;
 u_int8_t vf_id;
 u_int16_t reserved4;
 u_int16_t reserved5;
 u_int16_t ioc_status;
 u_int32_t ioc_loginfo;
} __attribute__((__packed__)) __attribute__((__aligned__(4)));
struct mpii_msg_iocfacts_request {
 u_int16_t reserved1;
 u_int8_t chain_offset;
 u_int8_t function;
 u_int16_t reserved2;
 u_int8_t reserved3;
 u_int8_t msg_flags;
 u_int8_t vp_id;
 u_int8_t vf_id;
 u_int16_t reserved4;
} __attribute__((__packed__)) __attribute__((__aligned__(4)));
struct mpii_msg_iocfacts_reply {
 u_int8_t msg_version_min;
 u_int8_t msg_version_maj;
 u_int8_t msg_length;
 u_int8_t function;
 u_int8_t header_version_dev;
 u_int8_t header_version_unit;
 u_int8_t ioc_number;
 u_int8_t msg_flags;
 u_int8_t vp_id;
 u_int8_t vf_id;
 u_int16_t reserved1;
 u_int16_t ioc_exceptions;
 u_int16_t ioc_status;
 u_int32_t ioc_loginfo;
 u_int8_t max_chain_depth;
 u_int8_t whoinit;
 u_int8_t number_of_ports;
 u_int8_t reserved2;
 u_int16_t request_credit;
 u_int16_t product_id;
 u_int32_t ioc_capabilities;
 u_int8_t fw_version_dev;
 u_int8_t fw_version_unit;
 u_int8_t fw_version_min;
 u_int8_t fw_version_maj;
 u_int16_t ioc_request_frame_size;
 u_int16_t reserved3;
 u_int16_t max_initiators;
 u_int16_t max_targets;
 u_int16_t max_sas_expanders;
 u_int16_t max_enclosures;
 u_int16_t protocol_flags;
 u_int16_t high_priority_credit;
 u_int16_t max_reply_descriptor_post_queue_depth;
 u_int8_t reply_frame_size;
 u_int8_t max_volumes;
 u_int16_t max_dev_handle;
 u_int16_t max_persistent_entries;
 u_int32_t reserved4;
} __attribute__((__packed__)) __attribute__((__aligned__(4)));
struct mpii_msg_portfacts_request {
 u_int16_t reserved1;
 u_int8_t chain_offset;
 u_int8_t function;
 u_int16_t reserved2;
 u_int8_t port_number;
 u_int8_t msg_flags;
 u_int8_t vp_id;
 u_int8_t vf_id;
 u_int16_t reserved3;
} __attribute__((__packed__)) __attribute__((__aligned__(4)));
struct mpii_msg_portfacts_reply {
 u_int16_t reserved1;
 u_int8_t msg_length;
 u_int8_t function;
 u_int16_t reserved2;
 u_int8_t port_number;
 u_int8_t msg_flags;
 u_int8_t vp_id;
 u_int8_t vf_id;
 u_int16_t reserved3;
 u_int16_t reserved4;
 u_int16_t ioc_status;
 u_int32_t ioc_loginfo;
 u_int8_t reserved5;
 u_int8_t port_type;
 u_int16_t reserved6;
 u_int16_t max_posted_cmd_buffers;
 u_int16_t reserved7;
} __attribute__((__packed__)) __attribute__((__aligned__(4)));
struct mpii_msg_portenable_request {
 u_int16_t reserved1;
 u_int8_t chain_offset;
 u_int8_t function;
 u_int8_t reserved2;
 u_int8_t port_flags;
 u_int8_t reserved3;
 u_int8_t msg_flags;
 u_int8_t vp_id;
 u_int8_t vf_id;
 u_int16_t reserved4;
} __attribute__((__packed__)) __attribute__((__aligned__(4)));
struct mpii_msg_portenable_reply {
 u_int16_t reserved1;
 u_int8_t msg_length;
 u_int8_t function;
 u_int8_t reserved2;
 u_int8_t port_flags;
 u_int8_t reserved3;
 u_int8_t msg_flags;
 u_int8_t vp_id;
 u_int8_t vf_id;
 u_int16_t reserved4;
 u_int16_t reserved5;
 u_int16_t ioc_status;
 u_int32_t ioc_loginfo;
} __attribute__((__packed__)) __attribute__((__aligned__(4)));
struct mpii_msg_event_request {
 u_int16_t reserved1;
 u_int8_t chain_offset;
 u_int8_t function;
 u_int16_t reserved2;
 u_int8_t reserved3;
 u_int8_t msg_flags;
 u_int8_t vp_id;
 u_int8_t vf_id;
 u_int16_t reserved4;
 u_int32_t reserved5;
 u_int32_t reserved6;
 u_int32_t event_masks[4];
 u_int16_t sas_broadcase_primitive_masks;
 u_int16_t reserved7;
 u_int32_t reserved8;
} __attribute__((__packed__)) __attribute__((__aligned__(4)));
struct mpii_msg_event_reply {
 u_int16_t event_data_length;
 u_int8_t msg_length;
 u_int8_t function;
 u_int16_t reserved1;
 u_int8_t ack_required;
 u_int8_t msg_flags;
 u_int8_t vp_id;
 u_int8_t vf_id;
 u_int16_t reserved2;
 u_int16_t reserved3;
 u_int16_t ioc_status;
 u_int32_t ioc_loginfo;
 u_int16_t event;
 u_int16_t reserved4;
 u_int32_t event_context;
} __attribute__((__packed__)) __attribute__((__aligned__(4)));
struct mpii_msg_eventack_request {
 u_int16_t reserved1;
 u_int8_t chain_offset;
 u_int8_t function;
 u_int8_t reserved2[3];
 u_int8_t msg_flags;
 u_int8_t vp_id;
 u_int8_t vf_id;
 u_int16_t reserved3;
 u_int16_t event;
 u_int16_t reserved4;
 u_int32_t event_context;
} __attribute__((__packed__)) __attribute__((__aligned__(4)));
struct mpii_msg_eventack_reply {
 u_int16_t reserved1;
 u_int8_t msg_length;
 u_int8_t function;
 u_int8_t reserved2[3];
 u_int8_t msg_flags;
 u_int8_t vp_id;
 u_int8_t vf_id;
 u_int16_t reserved3;
 u_int16_t reserved4;
 u_int16_t ioc_status;
 u_int32_t ioc_loginfo;
} __attribute__((__packed__)) __attribute__((__aligned__(4)));
struct mpii_msg_fwupload_request {
 u_int8_t image_type;
 u_int8_t reserved1;
 u_int8_t chain_offset;
 u_int8_t function;
 u_int8_t reserved2[3];
 u_int8_t msg_flags;
 u_int8_t vp_id;
 u_int8_t vf_id;
 u_int16_t reserved3;
 u_int32_t reserved4;
 u_int32_t reserved5;
 struct mpii_fw_tce tce;
} __attribute__((__packed__)) __attribute__((__aligned__(4)));
struct mpii_msg_fwupload_reply {
 u_int8_t image_type;
 u_int8_t reserved1;
 u_int8_t msg_length;
 u_int8_t function;
 u_int8_t reserved2[3];
 u_int8_t msg_flags;
 u_int8_t vp_id;
 u_int8_t vf_id;
 u_int16_t reserved3;
 u_int16_t reserved4;
 u_int16_t ioc_status;
 u_int32_t ioc_loginfo;
 u_int32_t actual_image_size;
} __attribute__((__packed__)) __attribute__((__aligned__(4)));
struct mpii_msg_scsi_io {
 u_int16_t dev_handle;
 u_int8_t chain_offset;
 u_int8_t function;
 u_int16_t reserved1;
 u_int8_t reserved2;
 u_int8_t msg_flags;
 u_int8_t vp_id;
 u_int8_t vf_id;
 u_int16_t reserved3;
 u_int32_t sense_buffer_low_address;
 u_int16_t sgl_flags;
 u_int8_t sense_buffer_length;
 u_int8_t reserved4;
 u_int8_t sgl_offset0;
 u_int8_t sgl_offset1;
 u_int8_t sgl_offset2;
 u_int8_t sgl_offset3;
 u_int32_t skip_count;
 u_int32_t data_length;
 u_int32_t bidirectional_data_length;
 u_int16_t io_flags;
 u_int16_t eedp_flags;
 u_int32_t eedp_block_size;
 u_int32_t secondary_reference_tag;
 u_int16_t secondary_application_tag;
 u_int16_t application_tag_translation_mask;
 u_int16_t lun[4];
 u_int8_t reserved5;
 u_int8_t tagging;
 u_int8_t reserved6;
 u_int8_t direction;
 u_int8_t cdb[(32)];
} __attribute__((__packed__)) __attribute__((__aligned__(4)));
struct mpii_msg_scsi_io_error {
 u_int16_t dev_handle;
 u_int8_t msg_length;
 u_int8_t function;
 u_int16_t reserved1;
 u_int8_t reserved2;
 u_int8_t msg_flags;
 u_int8_t vp_id;
 u_int8_t vf_id;
 u_int16_t reserved3;
 u_int8_t scsi_status;
 u_int8_t scsi_state;
 u_int16_t ioc_status;
 u_int32_t ioc_loginfo;
 u_int32_t transfer_count;
 u_int32_t sense_count;
 u_int32_t response_info;
 u_int16_t task_tag;
 u_int16_t reserved4;
 u_int32_t bidirectional_transfer_count;
 u_int32_t reserved5;
 u_int32_t reserved6;
} __attribute__((__packed__)) __attribute__((__aligned__(4)));
struct mpii_request_descr {
 u_int8_t request_flags;
 u_int8_t vf_id;
 u_int16_t smid;
 u_int16_t lmid;
 u_int16_t dev_handle;
} __attribute__((__packed__)) __attribute__((__aligned__(8)));
struct mpii_reply_descr {
 u_int8_t reply_flags;
 u_int8_t vf_id;
 u_int16_t smid;
 union {
  u_int32_t data;
  u_int32_t frame_addr;
 };
} __attribute__((__packed__)) __attribute__((__aligned__(8)));
struct mpii_request_header {
 u_int16_t function_dependent1;
 u_int8_t chain_offset;
 u_int8_t function;
 u_int16_t function_dependent2;
 u_int8_t function_dependent3;
 u_int8_t message_flags;
 u_int8_t vp_id;
 u_int8_t vf_id;
 u_int16_t reserved;
} __attribute__((__packed__)) __attribute__((__aligned__(4)));
struct mpii_msg_scsi_task_request {
 u_int16_t dev_handle;
 u_int8_t chain_offset;
 u_int8_t function;
 u_int8_t reserved1;
 u_int8_t task_type;
 u_int8_t reserved2;
 u_int8_t msg_flags;
 u_int8_t vp_id;
 u_int8_t vf_id;
 u_int16_t reserved3;
 u_int16_t lun[4];
 u_int32_t reserved4[7];
 u_int16_t task_mid;
 u_int16_t reserved5;
} __attribute__((__packed__)) __attribute__((__aligned__(4)));
struct mpii_msg_scsi_task_reply {
 u_int16_t dev_handle;
 u_int8_t msg_length;
 u_int8_t function;
 u_int8_t response_code;
 u_int8_t task_type;
 u_int8_t reserved1;
 u_int8_t msg_flags;
 u_int8_t vp_id;
 u_int8_t vf_id;
 u_int16_t reserved2;
 u_int16_t reserved3;
 u_int16_t ioc_status;
 u_int32_t ioc_loginfo;
 u_int32_t termination_count;
} __attribute__((__packed__)) __attribute__((__aligned__(4)));
struct mpii_msg_sas_oper_request {
 u_int8_t operation;
 u_int8_t reserved1;
 u_int8_t chain_offset;
 u_int8_t function;
 u_int16_t dev_handle;
 u_int8_t ioc_param;
 u_int8_t msg_flags;
 u_int8_t vp_id;
 u_int8_t vf_id;
 u_int16_t reserved2;
 u_int16_t reserved3;
 u_int8_t phy_num;
 u_int8_t prim_flags;
 u_int32_t primitive;
 u_int8_t lookup_method;
 u_int8_t reserved4;
 u_int16_t slot_num;
 u_int64_t lookup_addr;
 u_int32_t ioc_param_value;
 u_int64_t reserved5;
} __attribute__((__packed__)) __attribute__((__aligned__(4)));
struct mpii_msg_sas_oper_reply {
 u_int8_t operation;
 u_int8_t reserved1;
 u_int8_t chain_offset;
 u_int8_t function;
 u_int16_t dev_handle;
 u_int8_t ioc_param;
 u_int8_t msg_flags;
 u_int8_t vp_id;
 u_int8_t vf_id;
 u_int16_t reserved2;
 u_int16_t reserved3;
 u_int16_t ioc_status;
 u_int32_t ioc_loginfo;
} __attribute__((__packed__)) __attribute__((__aligned__(4)));
struct mpii_msg_raid_action_request {
 u_int8_t action;
 u_int8_t reserved1;
 u_int8_t chain_offset;
 u_int8_t function;
 u_int16_t vol_dev_handle;
 u_int8_t phys_disk_num;
 u_int8_t msg_flags;
 u_int8_t vp_id;
 u_int8_t vf_if;
 u_int16_t reserved2;
 u_int32_t reserved3;
 u_int32_t action_data;
 struct mpii_sge action_sge;
} __attribute__((__packed__)) __attribute__((__aligned__(4)));
struct mpii_msg_raid_action_reply {
 u_int8_t action;
 u_int8_t reserved1;
 u_int8_t chain_offset;
 u_int8_t function;
 u_int16_t vol_dev_handle;
 u_int8_t phys_disk_num;
 u_int8_t msg_flags;
 u_int8_t vp_id;
 u_int8_t vf_if;
 u_int16_t reserved2;
 u_int16_t reserved3;
 u_int16_t ioc_status;
 u_int32_t action_data[5];
} __attribute__((__packed__)) __attribute__((__aligned__(4)));
struct mpii_cfg_hdr {
 u_int8_t page_version;
 u_int8_t page_length;
 u_int8_t page_number;
 u_int8_t page_type;
} __attribute__((__packed__)) __attribute__((__aligned__(4)));
struct mpii_ecfg_hdr {
 u_int8_t page_version;
 u_int8_t reserved1;
 u_int8_t page_number;
 u_int8_t page_type;
 u_int16_t ext_page_length;
 u_int8_t ext_page_type;
 u_int8_t reserved2;
} __attribute__((__packed__)) __attribute__((__aligned__(4)));
struct mpii_msg_config_request {
 u_int8_t action;
 u_int8_t sgl_flags;
 u_int8_t chain_offset;
 u_int8_t function;
 u_int16_t ext_page_len;
 u_int8_t ext_page_type;
 u_int8_t msg_flags;
 u_int8_t vp_id;
 u_int8_t vf_id;
 u_int16_t reserved1;
 u_int32_t reserved2[2];
 struct mpii_cfg_hdr config_header;
 u_int32_t page_address;
 struct mpii_sge page_buffer;
} __attribute__((__packed__)) __attribute__((__aligned__(4)));
struct mpii_msg_config_reply {
 u_int8_t action;
 u_int8_t sgl_flags;
 u_int8_t msg_length;
 u_int8_t function;
 u_int16_t ext_page_length;
 u_int8_t ext_page_type;
 u_int8_t msg_flags;
 u_int8_t vp_id;
 u_int8_t vf_id;
 u_int16_t reserved1;
 u_int16_t reserved2;
 u_int16_t ioc_status;
 u_int32_t ioc_loginfo;
 struct mpii_cfg_hdr config_header;
} __attribute__((__packed__)) __attribute__((__aligned__(4)));
struct mpii_cfg_manufacturing_pg0 {
 struct mpii_cfg_hdr config_header;
 char chip_name[16];
 char chip_revision[8];
 char board_name[16];
 char board_assembly[16];
 char board_tracer_number[16];
} __attribute__((__packed__)) __attribute__((__aligned__(4)));
struct mpii_cfg_ioc_pg1 {
 struct mpii_cfg_hdr config_header;
 u_int32_t flags;
 u_int32_t coalescing_timeout;
 u_int8_t coalescing_depth;
 u_int8_t pci_slot_num;
 u_int8_t pci_bus_num;
 u_int8_t pci_domain_segment;
 u_int32_t reserved1;
 u_int32_t reserved2;
} __attribute__((__packed__)) __attribute__((__aligned__(4)));
struct mpii_cfg_ioc_pg3 {
 struct mpii_cfg_hdr config_header;
 u_int8_t no_phys_disks;
 u_int8_t reserved[3];
} __attribute__((__packed__)) __attribute__((__aligned__(4)));
struct mpii_cfg_ioc_pg8 {
 struct mpii_cfg_hdr config_header;
 u_int8_t num_devs_per_enclosure;
 u_int8_t reserved1;
 u_int16_t reserved2;
 u_int16_t max_persistent_entries;
 u_int16_t max_num_physical_mapped_ids;
 u_int16_t flags;
 u_int16_t reserved3;
 u_int16_t ir_volume_mapping_flags;
 u_int16_t reserved4;
 u_int32_t reserved5;
} __attribute__((__packed__)) __attribute__((__aligned__(4)));
struct mpii_cfg_raid_physdisk {
 u_int8_t phys_disk_id;
 u_int8_t phys_disk_bus;
 u_int8_t phys_disk_ioc;
 u_int8_t phys_disk_num;
} __attribute__((__packed__)) __attribute__((__aligned__(4)));
struct mpii_cfg_fc_port_pg0 {
 struct mpii_cfg_hdr config_header;
 u_int32_t flags;
 u_int8_t mpii_port_nr;
 u_int8_t link_type;
 u_int8_t port_state;
 u_int8_t reserved1;
 u_int32_t port_id;
 u_int64_t wwnn;
 u_int64_t wwpn;
 u_int32_t supported_service_class;
 u_int32_t supported_speeds;
 u_int32_t current_speed;
 u_int32_t max_frame_size;
 u_int64_t fabric_wwnn;
 u_int64_t fabric_wwpn;
 u_int32_t discovered_port_count;
 u_int32_t max_initiators;
 u_int8_t max_aliases_supported;
 u_int8_t max_hard_aliases_supported;
 u_int8_t num_current_aliases;
 u_int8_t reserved2;
} __attribute__((__packed__)) __attribute__((__aligned__(4)));
struct mpii_cfg_fc_port_pg1 {
 struct mpii_cfg_hdr config_header;
 u_int32_t flags;
 u_int64_t noseepromwwnn;
 u_int64_t noseepromwwpn;
 u_int8_t hard_alpa;
 u_int8_t link_config;
 u_int8_t topology_config;
 u_int8_t alt_connector;
 u_int8_t num_req_aliases;
 u_int8_t rr_tov;
 u_int8_t initiator_dev_to;
 u_int8_t initiator_lo_pend_to;
} __attribute__((__packed__)) __attribute__((__aligned__(4)));
struct mpii_cfg_fc_device_pg0 {
 struct mpii_cfg_hdr config_header;
 u_int64_t wwnn;
 u_int64_t wwpn;
 u_int32_t port_id;
 u_int8_t protocol;
 u_int8_t flags;
 u_int16_t bb_credit;
 u_int16_t max_rx_frame_size;
 u_int8_t adisc_hard_alpa;
 u_int8_t port_nr;
 u_int8_t fc_ph_low_version;
 u_int8_t fc_ph_high_version;
 u_int8_t current_target_id;
 u_int8_t current_bus;
} __attribute__((__packed__)) __attribute__((__aligned__(4)));
struct mpii_cfg_raid_vol_pg0 {
 struct mpii_cfg_hdr config_header;
 u_int16_t volume_handle;
 u_int8_t volume_state;
 u_int8_t volume_type;
 u_int32_t volume_status;
 u_int16_t volume_settings;
 u_int8_t hot_spare_pool;
 u_int8_t reserved1;
 u_int64_t max_lba;
 u_int32_t stripe_size;
 u_int16_t block_size;
 u_int16_t reserved2;
 u_int8_t phys_disk_types;
 u_int8_t resync_rate;
 u_int16_t data_scrub_rate;
 u_int8_t num_phys_disks;
 u_int16_t reserved3;
 u_int8_t inactive_status;
} __attribute__((__packed__)) __attribute__((__aligned__(4)));
struct mpii_cfg_raid_vol_pg0_physdisk {
 u_int8_t raid_set_num;
 u_int8_t phys_disk_map;
 u_int8_t phys_disk_num;
 u_int8_t reserved;
} __attribute__((__packed__)) __attribute__((__aligned__(4)));
struct mpii_cfg_raid_vol_pg1 {
 struct mpii_cfg_hdr config_header;
 u_int8_t volume_id;
 u_int8_t volume_bus;
 u_int8_t volume_ioc;
 u_int8_t reserved1;
 u_int8_t guid[24];
 u_int8_t name[32];
 u_int64_t wwid;
 u_int32_t reserved2;
 u_int32_t reserved3;
} __attribute__((__packed__)) __attribute__((__aligned__(4)));
struct mpii_cfg_raid_physdisk_pg0 {
 struct mpii_cfg_hdr config_header;
 u_int16_t dev_handle;
 u_int8_t reserved1;
 u_int8_t phys_disk_num;
 u_int8_t enc_id;
 u_int8_t enc_bus;
 u_int8_t hot_spare_pool;
 u_int8_t enc_type;
 u_int32_t reserved2;
 u_int8_t vendor_id[8];
 u_int8_t product_id[16];
 u_int8_t product_rev[4];
 u_int8_t serial[32];
 u_int32_t reserved3;
 u_int8_t phys_disk_state;
 u_int8_t offline_reason;
 u_int8_t incompat_reason;
 u_int8_t phys_disk_attrs;
 u_int32_t phys_disk_status;
 u_int64_t dev_max_lba;
 u_int64_t host_max_lba;
 u_int64_t coerced_max_lba;
 u_int16_t block_size;
 u_int16_t reserved4;
 u_int32_t reserved5;
} __attribute__((__packed__)) __attribute__((__aligned__(4)));
struct mpii_cfg_raid_physdisk_pg1 {
 struct mpii_cfg_hdr config_header;
 u_int8_t num_phys_disk_paths;
 u_int8_t phys_disk_num;
 u_int16_t reserved1;
 u_int32_t reserved2;
} __attribute__((__packed__)) __attribute__((__aligned__(4)));
struct mpii_cfg_raid_physdisk_path {
 u_int8_t phys_disk_id;
 u_int8_t phys_disk_bus;
 u_int16_t reserved1;
 u_int64_t wwwid;
 u_int64_t owner_wwid;
 u_int8_t ownder_id;
 u_int8_t reserved2;
 u_int16_t flags;
} __attribute__((__packed__)) __attribute__((__aligned__(4)));
struct mpii_cfg_sas_dev_pg0 {
 struct mpii_ecfg_hdr config_header;
 u_int16_t slot;
 u_int16_t enc_handle;
 u_int64_t sas_addr;
 u_int16_t parent_dev_handle;
 u_int8_t phy_num;
 u_int8_t access_status;
 u_int16_t dev_handle;
 u_int8_t target;
 u_int8_t bus;
 u_int32_t device_info;
 u_int16_t flags;
 u_int8_t physical_port;
 u_int8_t max_port_conn;
 u_int64_t device_name;
 u_int8_t port_groups;
 u_int8_t dma_group;
 u_int8_t ctrl_group;
 u_int8_t reserved1;
 u_int64_t reserved2;
} __attribute__((__packed__)) __attribute__((__aligned__(4)));
struct mpii_cfg_raid_config_pg0 {
 struct mpii_ecfg_hdr config_header;
 u_int8_t num_hot_spares;
 u_int8_t num_phys_disks;
 u_int8_t num_volumes;
 u_int8_t config_num;
 u_int32_t flags;
 u_int32_t config_guid[6];
 u_int32_t reserved1;
 u_int8_t num_elements;
 u_int8_t reserved2[3];
} __attribute__((__packed__)) __attribute__((__aligned__(4)));
struct mpii_raid_config_element {
 u_int16_t element_flags;
 u_int16_t vol_dev_handle;
 u_int8_t hot_spare_pool;
 u_int8_t phys_disk_num;
 u_int16_t phys_disk_dev_handle;
} __attribute__((__packed__)) __attribute__((__aligned__(4)));
struct mpii_cfg_dpm_pg0 {
 struct mpii_ecfg_hdr config_header;
} __attribute__((__packed__)) __attribute__((__aligned__(4)));
struct mpii_dpm_entry {
 u_int64_t physical_identifier;
 u_int16_t mapping_information;
 u_int16_t device_index;
 u_int32_t physical_bits_mapping;
 u_int32_t reserved1;
} __attribute__((__packed__)) __attribute__((__aligned__(4)));
struct mpii_evt_sas_discovery {
 u_int8_t flags;
 u_int8_t reason_code;
 u_int8_t physical_port;
 u_int8_t reserved1;
 u_int32_t discovery_status;
} __attribute__((__packed__)) __attribute__((__aligned__(4)));
struct mpii_evt_ir_status {
 u_int16_t vol_dev_handle;
 u_int16_t reserved1;
 u_int8_t operation;
 u_int8_t percent;
 u_int16_t reserved2;
 u_int32_t reserved3;
};
struct mpii_evt_ir_volume {
 u_int16_t vol_dev_handle;
 u_int8_t reason_code;
 u_int8_t reserved1;
 u_int32_t new_value;
 u_int32_t prev_value;
} __attribute__((__packed__)) __attribute__((__aligned__(4)));
struct mpii_evt_ir_physical_disk {
 u_int16_t reserved1;
 u_int8_t reason_code;
 u_int8_t phys_disk_num;
 u_int16_t phys_disk_dev_handle;
 u_int16_t reserved2;
 u_int16_t slot;
 u_int16_t enclosure_handle;
 u_int32_t new_value;
 u_int32_t previous_value;
} __attribute__((__packed__)) __attribute__((__aligned__(4)));
struct mpii_evt_sas_tcl {
 u_int16_t enclosure_handle;
 u_int16_t expander_handle;
 u_int8_t num_phys;
 u_int8_t reserved1[3];
 u_int8_t num_entries;
 u_int8_t start_phy_num;
 u_int8_t expn_status;
 u_int8_t physical_port;
} __attribute__((__packed__)) __attribute__((__aligned__(4)));
struct mpii_evt_phy_entry {
 u_int16_t dev_handle;
 u_int8_t link_rate;
 u_int8_t phy_status;
} __attribute__((__packed__)) __attribute__((__aligned__(4)));
struct mpii_evt_ir_cfg_change_list {
 u_int8_t num_elements;
 u_int16_t reserved;
 u_int8_t config_num;
 u_int32_t flags;
} __attribute__((__packed__)) __attribute__((__aligned__(4)));
struct mpii_evt_ir_cfg_element {
 u_int16_t element_flags;
 u_int16_t vol_dev_handle;
 u_int8_t reason_code;
 u_int8_t phys_disk_num;
 u_int16_t phys_disk_dev_handle;
} __attribute__((__packed__)) __attribute__((__aligned__(4)));
struct mpii_dmamem {
 bus_dmamap_t mdm_map;
 bus_dma_segment_t mdm_seg;
 size_t mdm_size;
 caddr_t mdm_kva;
};
struct mpii_softc;
struct mpii_rcb {
 struct { struct mpii_rcb *sqe_next; } rcb_link;
 void *rcb_reply;
 u_int32_t rcb_reply_dva;
};
struct mpii_rcb_list { struct mpii_rcb *sqh_first; struct mpii_rcb **sqh_last; };
struct mpii_device {
 int flags;
 short slot;
 short percent;
 u_int16_t dev_handle;
 u_int16_t enclosure;
 u_int16_t expander;
 u_int8_t phy_num;
 u_int8_t physical_port;
};
struct mpii_ccb {
 struct mpii_softc *ccb_sc;
 void * ccb_cookie;
 bus_dmamap_t ccb_dmamap;
 bus_addr_t ccb_offset;
 void *ccb_cmd;
 bus_addr_t ccb_cmd_dva;
 u_int16_t ccb_dev_handle;
 u_int16_t ccb_smid;
 volatile enum {
  MPII_CCB_FREE,
  MPII_CCB_READY,
  MPII_CCB_QUEUED,
  MPII_CCB_TIMEOUT
 } ccb_state;
 void (*ccb_done)(struct mpii_ccb *);
 struct mpii_rcb *ccb_rcb;
 struct { struct mpii_ccb *sqe_next; } ccb_link;
};
struct mpii_ccb_list { struct mpii_ccb *sqh_first; struct mpii_ccb **sqh_last; };
struct mpii_softc {
 struct device sc_dev;
 pci_chipset_tag_t sc_pc;
 pcitag_t sc_tag;
 void *sc_ih;
 struct scsi_link sc_link;
 int sc_flags;
 struct scsibus_softc *sc_scsibus;
 struct mpii_device **sc_devs;
 bus_space_tag_t sc_iot;
 bus_space_handle_t sc_ioh;
 bus_size_t sc_ios;
 bus_dma_tag_t sc_dmat;
 struct mutex sc_req_mtx;
 struct mutex sc_rep_mtx;
 ushort sc_reply_size;
 ushort sc_request_size;
 ushort sc_max_cmds;
 ushort sc_num_reply_frames;
 u_int sc_reply_free_qdepth;
 u_int sc_reply_post_qdepth;
 ushort sc_chain_sge;
 ushort sc_max_sgl;
 u_int8_t sc_ioc_event_replay;
 u_int8_t sc_porttype;
 u_int8_t sc_max_volumes;
 u_int16_t sc_max_devices;
 u_int16_t sc_vd_count;
 u_int16_t sc_vd_id_low;
 u_int16_t sc_pd_id_start;
 int sc_ioc_number;
 u_int8_t sc_vf_id;
 struct mpii_ccb *sc_ccbs;
 struct mpii_ccb_list sc_ccb_free;
 struct mutex sc_ccb_free_mtx;
 struct mutex sc_ccb_mtx;
 struct mpii_ccb_list sc_ccb_tmos;
 struct scsi_iohandler sc_ccb_tmo_handler;
 struct scsi_iopool sc_iopool;
 struct mpii_dmamem *sc_requests;
 struct mpii_dmamem *sc_replies;
 struct mpii_rcb *sc_rcbs;
 struct mpii_dmamem *sc_reply_postq;
 struct mpii_reply_descr *sc_reply_postq_kva;
 u_int sc_reply_post_host_index;
 struct mpii_dmamem *sc_reply_freeq;
 u_int sc_reply_free_host_index;
 struct mpii_rcb_list sc_evt_sas_queue;
 struct mutex sc_evt_sas_mtx;
 struct task sc_evt_sas_task;
 struct mpii_rcb_list sc_evt_ack_queue;
 struct mutex sc_evt_ack_mtx;
 struct scsi_iohandler sc_evt_ack_handler;
 int (*sc_ioctl)(struct device *, u_long, caddr_t);
 int sc_nsensors;
 struct ksensor *sc_sensors;
 struct ksensordev sc_sensordev;
};
int mpii_match(struct device *, void *, void *);
void mpii_attach(struct device *, struct device *, void *);
int mpii_detach(struct device *, int);
int mpii_intr(void *);
struct cfattach mpii_ca = {
 sizeof(struct mpii_softc),
 mpii_match,
 mpii_attach,
 mpii_detach
};
struct cfdriver mpii_cd = {
 ((void *)0),
 "mpii",
 DV_DULL
};
void mpii_scsi_cmd(struct scsi_xfer *);
void mpii_scsi_cmd_done(struct mpii_ccb *);
int mpii_scsi_probe(struct scsi_link *);
int mpii_scsi_ioctl(struct scsi_link *, u_long, caddr_t, int);
struct scsi_adapter mpii_switch = {
 mpii_scsi_cmd,
 scsi_minphys,
 mpii_scsi_probe,
 ((void *)0),
 mpii_scsi_ioctl
};
struct mpii_dmamem *
  mpii_dmamem_alloc(struct mpii_softc *, size_t);
void mpii_dmamem_free(struct mpii_softc *,
      struct mpii_dmamem *);
int mpii_alloc_ccbs(struct mpii_softc *);
void * mpii_get_ccb(void *);
void mpii_put_ccb(void *, void *);
int mpii_alloc_replies(struct mpii_softc *);
int mpii_alloc_queues(struct mpii_softc *);
void mpii_push_reply(struct mpii_softc *, struct mpii_rcb *);
void mpii_push_replies(struct mpii_softc *);
void mpii_scsi_cmd_tmo(void *);
void mpii_scsi_cmd_tmo_handler(void *, void *);
void mpii_scsi_cmd_tmo_done(struct mpii_ccb *);
int mpii_insert_dev(struct mpii_softc *, struct mpii_device *);
int mpii_remove_dev(struct mpii_softc *, struct mpii_device *);
struct mpii_device *
  mpii_find_dev(struct mpii_softc *, u_int16_t);
void mpii_start(struct mpii_softc *, struct mpii_ccb *);
int mpii_poll(struct mpii_softc *, struct mpii_ccb *);
void mpii_poll_done(struct mpii_ccb *);
struct mpii_rcb *
  mpii_reply(struct mpii_softc *, struct mpii_reply_descr *);
void mpii_wait(struct mpii_softc *, struct mpii_ccb *);
void mpii_wait_done(struct mpii_ccb *);
void mpii_init_queues(struct mpii_softc *);
int mpii_load_xs(struct mpii_ccb *);
int mpii_load_xs_sas3(struct mpii_ccb *);
u_int32_t mpii_read(struct mpii_softc *, bus_size_t);
void mpii_write(struct mpii_softc *, bus_size_t, u_int32_t);
int mpii_wait_eq(struct mpii_softc *, bus_size_t, u_int32_t,
      u_int32_t);
int mpii_wait_ne(struct mpii_softc *, bus_size_t, u_int32_t,
      u_int32_t);
int mpii_init(struct mpii_softc *);
int mpii_reset_soft(struct mpii_softc *);
int mpii_reset_hard(struct mpii_softc *);
int mpii_handshake_send(struct mpii_softc *, void *, size_t);
int mpii_handshake_recv_dword(struct mpii_softc *,
      u_int32_t *);
int mpii_handshake_recv(struct mpii_softc *, void *, size_t);
void mpii_empty_done(struct mpii_ccb *);
int mpii_iocinit(struct mpii_softc *);
int mpii_iocfacts(struct mpii_softc *);
int mpii_portfacts(struct mpii_softc *);
int mpii_portenable(struct mpii_softc *);
int mpii_cfg_coalescing(struct mpii_softc *);
int mpii_board_info(struct mpii_softc *);
int mpii_target_map(struct mpii_softc *);
int mpii_eventnotify(struct mpii_softc *);
void mpii_eventnotify_done(struct mpii_ccb *);
void mpii_eventack(void *, void *);
void mpii_eventack_done(struct mpii_ccb *);
void mpii_event_process(struct mpii_softc *, struct mpii_rcb *);
void mpii_event_done(struct mpii_softc *, struct mpii_rcb *);
void mpii_event_sas(void *);
void mpii_event_raid(struct mpii_softc *,
      struct mpii_msg_event_reply *);
void mpii_event_discovery(struct mpii_softc *,
      struct mpii_msg_event_reply *);
void mpii_sas_remove_device(struct mpii_softc *, u_int16_t);
int mpii_req_cfg_header(struct mpii_softc *, u_int8_t,
      u_int8_t, u_int32_t, int, void *);
int mpii_req_cfg_page(struct mpii_softc *, u_int32_t, int,
      void *, int, void *, size_t);
int mpii_ioctl_cache(struct scsi_link *, u_long, struct dk_cache *);
int mpii_ioctl(struct device *, u_long, caddr_t);
int mpii_ioctl_inq(struct mpii_softc *, struct bioc_inq *);
int mpii_ioctl_vol(struct mpii_softc *, struct bioc_vol *);
int mpii_ioctl_disk(struct mpii_softc *, struct bioc_disk *);
int mpii_bio_hs(struct mpii_softc *, struct bioc_disk *, int,
      int, int *);
int mpii_bio_disk(struct mpii_softc *, struct bioc_disk *,
      u_int8_t);
struct mpii_device *
  mpii_find_vol(struct mpii_softc *, int);
 int mpii_bio_volstate(struct mpii_softc *, struct bioc_vol *);
int mpii_create_sensors(struct mpii_softc *);
void mpii_refresh_sensors(void *);
static inline void
mpii_dvatosge(struct mpii_sge *sge, u_int64_t dva)
{
 __swapm32((&sge->sg_addr_lo), (dva));
 __swapm32((&sge->sg_addr_hi), (dva >> 32));
}
static const struct pci_matchid mpii_devices[] = {
 { 0x1000, 0x0070 },
 { 0x1000, 0x0072 },
 { 0x1000, 0x0074 },
 { 0x1000, 0x0076 },
 { 0x1000, 0x0077 },
 { 0x1000, 0x0064 },
 { 0x1000, 0x0065 },
 { 0x1000, 0x0080 },
 { 0x1000, 0x0081 },
 { 0x1000, 0x0082 },
 { 0x1000, 0x0083 },
 { 0x1000, 0x0084 },
 { 0x1000, 0x0085 },
 { 0x1000, 0x0086 },
 { 0x1000, 0x0087 },
 { 0x1000, 0x006e },
 { 0x1000, 0x0096 },
 { 0x1000, 0x0097 },
 { 0x1000, 0x0090 },
 { 0x1000, 0x0091 },
 { 0x1000, 0x0094 },
 { 0x1000, 0x0095 }
};
int
mpii_match(struct device *parent, void *match, void *aux)
{
 return (pci_matchbyid(aux, mpii_devices, (sizeof((mpii_devices)) / sizeof((mpii_devices)[0]))));
}
void
mpii_attach(struct device *parent, struct device *self, void *aux)
{
 struct mpii_softc *sc = (struct mpii_softc *)self;
 struct pci_attach_args *pa = aux;
 pcireg_t memtype;
 int r;
 pci_intr_handle_t ih;
 struct scsibus_attach_args saa;
 struct mpii_ccb *ccb;
 sc->sc_pc = pa->pa_pc;
 sc->sc_tag = pa->pa_tag;
 sc->sc_dmat = pa->pa_dmat;
 do { (void)(((void *)0)); (void)(0); __mtx_init((&sc->sc_req_mtx), ((((5)) > 0 && ((5)) < 12) ? 12 : ((5)))); } while (0);
 do { (void)(((void *)0)); (void)(0); __mtx_init((&sc->sc_rep_mtx), ((((5)) > 0 && ((5)) < 12) ? 12 : ((5)))); } while (0);
 for (r = 0x10; r < 0x28; r += sizeof(memtype)) {
  memtype = pci_mapreg_type(sc->sc_pc, sc->sc_tag, r);
  if ((memtype & 0x00000001) == 0x00000000)
   break;
 }
 if (r >= 0x28) {
  printf(": unable to locate system interface registers\n");
  return;
 }
 if (pci_mapreg_map(pa, r, memtype, 0, &sc->sc_iot, &sc->sc_ioh,
     ((void *)0), &sc->sc_ios, 0xFF) != 0) {
  printf(": unable to map system interface registers\n");
  return;
 }
 pci_conf_write(sc->sc_pc, sc->sc_tag, 0x30,
     pci_conf_read(sc->sc_pc, sc->sc_tag, 0x30) &
     ~0x00000001);
 mpii_write(sc, (0x34),
     (1<<30) | (1<<3) |
     (1<<0));
 if (pci_intr_map_msi(pa, &ih) != 0 && pci_intr_map(pa, &ih) != 0) {
  printf(": unable to map interrupt\n");
  goto unmap;
 }
 printf(": %s\n", pci_intr_string(sc->sc_pc, ih));
 if (mpii_init(sc) != 0) {
  printf("%s: unable to initialize ioc\n", ((sc)->sc_dev.dv_xname));
  goto unmap;
 }
 if (mpii_iocfacts(sc) != 0) {
  printf("%s: unable to get iocfacts\n", ((sc)->sc_dev.dv_xname));
  goto unmap;
 }
 if (mpii_alloc_ccbs(sc) != 0) {
  goto unmap;
 }
 if (mpii_alloc_replies(sc) != 0) {
  printf("%s: unable to allocated reply space\n", ((sc)->sc_dev.dv_xname));
  goto free_ccbs;
 }
 if (mpii_alloc_queues(sc) != 0) {
  printf("%s: unable to allocate reply queues\n", ((sc)->sc_dev.dv_xname));
  goto free_replies;
 }
 if (mpii_iocinit(sc) != 0) {
  printf("%s: unable to send iocinit\n", ((sc)->sc_dev.dv_xname));
  goto free_queues;
 }
 if (mpii_wait_eq(sc, (0x00), (0xf<<28),
     (0x2<<28)) != 0) {
  printf("%s: state: 0x%08x\n", ((sc)->sc_dev.dv_xname),
   mpii_read((sc), (0x00)) & (0xf<<28));
  printf("%s: operational state timeout\n", ((sc)->sc_dev.dv_xname));
  goto free_queues;
 }
 mpii_push_replies(sc);
 mpii_init_queues(sc);
 if (mpii_board_info(sc) != 0) {
  printf("%s: unable to get manufacturing page 0\n",
      ((sc)->sc_dev.dv_xname));
  goto free_queues;
 }
 if (mpii_portfacts(sc) != 0) {
  printf("%s: unable to get portfacts\n", ((sc)->sc_dev.dv_xname));
  goto free_queues;
 }
 if (mpii_target_map(sc) != 0) {
  printf("%s: unable to setup target mappings\n", ((sc)->sc_dev.dv_xname));
  goto free_queues;
 }
 if (mpii_cfg_coalescing(sc) != 0) {
  printf("%s: unable to configure coalescing\n", ((sc)->sc_dev.dv_xname));
  goto free_queues;
 }
 if ((sc->sc_porttype == (0x30)) ||
     (sc->sc_porttype == (0x31))) {
  if (mpii_eventnotify(sc) != 0) {
   printf("%s: unable to enable events\n", ((sc)->sc_dev.dv_xname));
   goto free_queues;
  }
 }
 sc->sc_devs = mallocarray(sc->sc_max_devices,
     sizeof(struct mpii_device *), 2, 0x0002 | 0x0008);
 if (sc->sc_devs == ((void *)0)) {
  printf("%s: unable to allocate memory for mpii_device\n",
      ((sc)->sc_dev.dv_xname));
  goto free_queues;
 }
 if (mpii_portenable(sc) != 0) {
  printf("%s: unable to enable port\n", ((sc)->sc_dev.dv_xname));
  goto free_devs;
 }
 sc->sc_link.adapter = &mpii_switch;
 sc->sc_link.adapter_softc = sc;
 sc->sc_link.adapter_target = -1;
 sc->sc_link.adapter_buswidth = sc->sc_max_devices;
 sc->sc_link.luns = 1;
 sc->sc_link.openings = sc->sc_max_cmds - 1;
 sc->sc_link.pool = &sc->sc_iopool;
 __builtin_memset((&saa), (0), (sizeof(saa)));
 saa.saa_sc_link = &sc->sc_link;
 sc->sc_ih = pci_intr_establish(sc->sc_pc, ih, 5,
     mpii_intr, sc, sc->sc_dev.dv_xname);
 if (sc->sc_ih == ((void *)0))
  goto free_devs;
 ((sc->sc_flags) |= ((1<<3)));
 config_pending_incr();
 sc->sc_scsibus = (struct scsibus_softc *) config_found_sm((&sc->sc_dev), (&saa), (scsiprint), ((void *)0));
 mpii_write(sc, (0x34), (1<<0)
     | (1<<30));
 if (((sc->sc_flags) & ((1<<1)))) {
  if (bio_register(&sc->sc_dev, mpii_ioctl) != 0)
   panic("%s: controller registration failed",
       ((sc)->sc_dev.dv_xname));
  else
   sc->sc_ioctl = mpii_ioctl;
  if (mpii_create_sensors(sc) != 0)
   printf("%s: unable to create sensors\n", ((sc)->sc_dev.dv_xname));
 }
 return;
free_devs:
 free(sc->sc_devs, 2, 0);
 sc->sc_devs = ((void *)0);
free_queues:
 bus_dmamap_sync(sc->sc_dmat, ((sc->sc_reply_freeq)->mdm_map),
     0, sc->sc_reply_free_qdepth * 4, 0x02);
 mpii_dmamem_free(sc, sc->sc_reply_freeq);
 bus_dmamap_sync(sc->sc_dmat, ((sc->sc_reply_postq)->mdm_map),
     0, sc->sc_reply_post_qdepth * 8, 0x02);
 mpii_dmamem_free(sc, sc->sc_reply_postq);
free_replies:
 bus_dmamap_sync(sc->sc_dmat, ((sc->sc_replies)->mdm_map),
  0, (1 << 13), 0x02);
 mpii_dmamem_free(sc, sc->sc_replies);
free_ccbs:
 while ((ccb = mpii_get_ccb(sc)) != ((void *)0))
  bus_dmamap_destroy(sc->sc_dmat, ccb->ccb_dmamap);
 mpii_dmamem_free(sc, sc->sc_requests);
 free(sc->sc_ccbs, 2, 0);
unmap:
 bus_space_unmap(sc->sc_iot, sc->sc_ioh, sc->sc_ios);
 sc->sc_ios = 0;
}
int
mpii_detach(struct device *self, int flags)
{
 struct mpii_softc *sc = (struct mpii_softc *)self;
 if (sc->sc_ih != ((void *)0)) {
  pci_intr_disestablish(sc->sc_pc, sc->sc_ih);
  sc->sc_ih = ((void *)0);
 }
 if (sc->sc_ios != 0) {
  bus_space_unmap(sc->sc_iot, sc->sc_ioh, sc->sc_ios);
  sc->sc_ios = 0;
 }
 return (0);
}
int
mpii_intr(void *arg)
{
 struct mpii_rcb_list evts = { ((void *)0), &(evts).sqh_first };
 struct mpii_ccb_list ccbs = { ((void *)0), &(ccbs).sqh_first };
 struct mpii_softc *sc = arg;
 struct mpii_reply_descr *postq = sc->sc_reply_postq_kva, *rdp;
 struct mpii_ccb *ccb;
 struct mpii_rcb *rcb;
 int smid;
 u_int idx;
 int rv = 0;
 __mtx_enter(&sc->sc_rep_mtx );
 bus_dmamap_sync(sc->sc_dmat,
     ((sc->sc_reply_postq)->mdm_map),
     0, sc->sc_reply_post_qdepth * sizeof(*rdp),
     0x02 | 0x08);
 idx = sc->sc_reply_post_host_index;
 for (;;) {
  rdp = &postq[idx];
  if ((rdp->reply_flags & (0x0f)) ==
      (0x0f))
   break;
  if (rdp->data == 0xffffffff) {
   break;
  }
  smid = __mswap16(&rdp->smid);
  rcb = mpii_reply(sc, rdp);
  if (smid) {
   ccb = &sc->sc_ccbs[smid - 1];
   ccb->ccb_state = MPII_CCB_READY;
   ccb->ccb_rcb = rcb;
   do { (ccb)->ccb_link.sqe_next = ((void *)0); *(&ccbs)->sqh_last = (ccb); (&ccbs)->sqh_last = &(ccb)->ccb_link.sqe_next; } while (0);
  } else
   do { (rcb)->rcb_link.sqe_next = ((void *)0); *(&evts)->sqh_last = (rcb); (&evts)->sqh_last = &(rcb)->rcb_link.sqe_next; } while (0);
  if (++idx >= sc->sc_reply_post_qdepth)
   idx = 0;
  rv = 1;
 }
 bus_dmamap_sync(sc->sc_dmat,
     ((sc->sc_reply_postq)->mdm_map),
     0, sc->sc_reply_post_qdepth * sizeof(*rdp),
     0x01 | 0x04);
 if (rv)
  bus_space_write_4((sc)->sc_iot, (sc)->sc_ioh, (0x6c), (sc->sc_reply_post_host_index = idx));
 __mtx_leave(&sc->sc_rep_mtx );
 if (rv == 0)
  return (0);
 while ((ccb = ((&ccbs)->sqh_first)) != ((void *)0)) {
  do { if (((&ccbs)->sqh_first = (&ccbs)->sqh_first->ccb_link.sqe_next) == ((void *)0)) (&ccbs)->sqh_last = &(&ccbs)->sqh_first; } while (0);
  ccb->ccb_done(ccb);
 }
 while ((rcb = ((&evts)->sqh_first)) != ((void *)0)) {
  do { if (((&evts)->sqh_first = (&evts)->sqh_first->rcb_link.sqe_next) == ((void *)0)) (&evts)->sqh_last = &(&evts)->sqh_first; } while (0);
  mpii_event_process(sc, rcb);
 }
 return (1);
}
int
mpii_load_xs_sas3(struct mpii_ccb *ccb)
{
 struct mpii_softc *sc = ccb->ccb_sc;
 struct scsi_xfer *xs = ccb->ccb_cookie;
 struct mpii_msg_scsi_io *io = ccb->ccb_cmd;
 struct mpii_ieee_sge *csge, *nsge, *sge;
 bus_dmamap_t dmap = ccb->ccb_dmamap;
 int i, error;
 nsge = (struct mpii_ieee_sge *)(io + 1);
 csge = nsge + sc->sc_chain_sge;
 if (xs->datalen == 0) {
  nsge->sg_flags = (0x40);
  return (0);
 }
 error = bus_dmamap_load(sc->sc_dmat, dmap, xs->data, xs->datalen, ((void *)0),
     (xs->flags & 0x00001) ? 0x0001 : 0x0000);
 if (error) {
  printf("%s: error %d loading dmamap\n", ((sc)->sc_dev.dv_xname), error);
  return (1);
 }
 for (i = 0; i < dmap->dm_nsegs; i++, nsge++) {
  if (nsge == csge) {
   nsge++;
   io->chain_offset = ((caddr_t)csge - (caddr_t)io) / 4;
   csge->sg_flags = (0x80) |
       (0x00);
   csge->sg_addr = (__uint64_t)(__builtin_constant_p(ccb->ccb_cmd_dva + ((caddr_t)nsge - (caddr_t)io)) ? (__uint64_t)((((__uint64_t)(ccb->ccb_cmd_dva + ((caddr_t)nsge - (caddr_t)io)) & 0xff) << 56) | ((__uint64_t)(ccb->ccb_cmd_dva + ((caddr_t)nsge - (caddr_t)io)) & 0xff00ULL) << 40 | ((__uint64_t)(ccb->ccb_cmd_dva + ((caddr_t)nsge - (caddr_t)io)) & 0xff0000ULL) << 24 | ((__uint64_t)(ccb->ccb_cmd_dva + ((caddr_t)nsge - (caddr_t)io)) & 0xff000000ULL) << 8 | ((__uint64_t)(ccb->ccb_cmd_dva + ((caddr_t)nsge - (caddr_t)io)) & 0xff00000000ULL) >> 8 | ((__uint64_t)(ccb->ccb_cmd_dva + ((caddr_t)nsge - (caddr_t)io)) & 0xff0000000000ULL) >> 24 | ((__uint64_t)(ccb->ccb_cmd_dva + ((caddr_t)nsge - (caddr_t)io)) & 0xff000000000000ULL) >> 40 | ((__uint64_t)(ccb->ccb_cmd_dva + ((caddr_t)nsge - (caddr_t)io)) & 0xff00000000000000ULL) >> 56) : __swap64md(ccb->ccb_cmd_dva + ((caddr_t)nsge - (caddr_t)io)));
   csge->sg_len = (__uint32_t)(__builtin_constant_p((dmap->dm_nsegs - i) * sizeof(*sge)) ? (__uint32_t)(((__uint32_t)((dmap->dm_nsegs - i) * sizeof(*sge)) & 0xff) << 24 | ((__uint32_t)((dmap->dm_nsegs - i) * sizeof(*sge)) & 0xff00) << 8 | ((__uint32_t)((dmap->dm_nsegs - i) * sizeof(*sge)) & 0xff0000) >> 8 | ((__uint32_t)((dmap->dm_nsegs - i) * sizeof(*sge)) & 0xff000000) >> 24) : __swap32md((dmap->dm_nsegs - i) * sizeof(*sge)));
  }
  sge = nsge;
  sge->sg_flags = (0x00);
  sge->sg_len = (__uint32_t)(__builtin_constant_p(dmap->dm_segs[i].ds_len) ? (__uint32_t)(((__uint32_t)(dmap->dm_segs[i].ds_len) & 0xff) << 24 | ((__uint32_t)(dmap->dm_segs[i].ds_len) & 0xff00) << 8 | ((__uint32_t)(dmap->dm_segs[i].ds_len) & 0xff0000) >> 8 | ((__uint32_t)(dmap->dm_segs[i].ds_len) & 0xff000000) >> 24) : __swap32md(dmap->dm_segs[i].ds_len));
  sge->sg_addr = (__uint64_t)(__builtin_constant_p(dmap->dm_segs[i].ds_addr) ? (__uint64_t)((((__uint64_t)(dmap->dm_segs[i].ds_addr) & 0xff) << 56) | ((__uint64_t)(dmap->dm_segs[i].ds_addr) & 0xff00ULL) << 40 | ((__uint64_t)(dmap->dm_segs[i].ds_addr) & 0xff0000ULL) << 24 | ((__uint64_t)(dmap->dm_segs[i].ds_addr) & 0xff000000ULL) << 8 | ((__uint64_t)(dmap->dm_segs[i].ds_addr) & 0xff00000000ULL) >> 8 | ((__uint64_t)(dmap->dm_segs[i].ds_addr) & 0xff0000000000ULL) >> 24 | ((__uint64_t)(dmap->dm_segs[i].ds_addr) & 0xff000000000000ULL) >> 40 | ((__uint64_t)(dmap->dm_segs[i].ds_addr) & 0xff00000000000000ULL) >> 56) : __swap64md(dmap->dm_segs[i].ds_addr));
 }
 sge->sg_flags |= (0x40);
 bus_dmamap_sync(sc->sc_dmat, dmap, 0, dmap->dm_mapsize,
     (xs->flags & 0x00800) ? 0x01 :
     0x04);
 return (0);
}
int
mpii_load_xs(struct mpii_ccb *ccb)
{
 struct mpii_softc *sc = ccb->ccb_sc;
 struct scsi_xfer *xs = ccb->ccb_cookie;
 struct mpii_msg_scsi_io *io = ccb->ccb_cmd;
 struct mpii_sge *csge, *nsge, *sge;
 bus_dmamap_t dmap = ccb->ccb_dmamap;
 u_int32_t flags;
 u_int16_t len;
 int i, error;
 nsge = (struct mpii_sge *)(io + 1);
 csge = nsge + sc->sc_chain_sge;
 if (xs->datalen == 0) {
  nsge->sg_hdr = (__uint32_t)(__builtin_constant_p((0x1<<28) | (0x1<<31) | (0x1<<30) | (0x1<<24)) ? (__uint32_t)(((__uint32_t)((0x1<<28) | (0x1<<31) | (0x1<<30) | (0x1<<24)) & 0xff) << 24 | ((__uint32_t)((0x1<<28) | (0x1<<31) | (0x1<<30) | (0x1<<24)) & 0xff00) << 8 | ((__uint32_t)((0x1<<28) | (0x1<<31) | (0x1<<30) | (0x1<<24)) & 0xff0000) >> 8 | ((__uint32_t)((0x1<<28) | (0x1<<31) | (0x1<<30) | (0x1<<24)) & 0xff000000) >> 24) : __swap32md((0x1<<28) | (0x1<<31) | (0x1<<30) | (0x1<<24)));
  return (0);
 }
 error = bus_dmamap_load(sc->sc_dmat, dmap, xs->data, xs->datalen, ((void *)0),
     (xs->flags & 0x00001) ? 0x0001 : 0x0000);
 if (error) {
  printf("%s: error %d loading dmamap\n", ((sc)->sc_dev.dv_xname), error);
  return (1);
 }
 flags = (0x1<<28) | (0x1<<25);
 if (xs->flags & 0x01000)
  flags |= (0x1<<26);
 for (i = 0; i < dmap->dm_nsegs; i++, nsge++) {
  if (nsge == csge) {
   nsge++;
   io->chain_offset = ((caddr_t)csge - (caddr_t)io) / 4;
   len = (dmap->dm_nsegs - i) * sizeof(*sge);
   csge->sg_hdr = (__uint32_t)(__builtin_constant_p((0x3<<28) | (0x1<<25) | len) ? (__uint32_t)(((__uint32_t)((0x3<<28) | (0x1<<25) | len) & 0xff) << 24 | ((__uint32_t)((0x3<<28) | (0x1<<25) | len) & 0xff00) << 8 | ((__uint32_t)((0x3<<28) | (0x1<<25) | len) & 0xff0000) >> 8 | ((__uint32_t)((0x3<<28) | (0x1<<25) | len) & 0xff000000) >> 24) : __swap32md((0x3<<28) | (0x1<<25) | len));
   mpii_dvatosge(csge, ccb->ccb_cmd_dva +
       ((caddr_t)nsge - (caddr_t)io));
  }
  sge = nsge;
  sge->sg_hdr = (__uint32_t)(__builtin_constant_p(flags | dmap->dm_segs[i].ds_len) ? (__uint32_t)(((__uint32_t)(flags | dmap->dm_segs[i].ds_len) & 0xff) << 24 | ((__uint32_t)(flags | dmap->dm_segs[i].ds_len) & 0xff00) << 8 | ((__uint32_t)(flags | dmap->dm_segs[i].ds_len) & 0xff0000) >> 8 | ((__uint32_t)(flags | dmap->dm_segs[i].ds_len) & 0xff000000) >> 24) : __swap32md(flags | dmap->dm_segs[i].ds_len));
  mpii_dvatosge(sge, dmap->dm_segs[i].ds_addr);
 }
 sge->sg_hdr |= (__uint32_t)(__builtin_constant_p((0x1<<31) | (0x1<<30) | (0x1<<24)) ? (__uint32_t)(((__uint32_t)((0x1<<31) | (0x1<<30) | (0x1<<24)) & 0xff) << 24 | ((__uint32_t)((0x1<<31) | (0x1<<30) | (0x1<<24)) & 0xff00) << 8 | ((__uint32_t)((0x1<<31) | (0x1<<30) | (0x1<<24)) & 0xff0000) >> 8 | ((__uint32_t)((0x1<<31) | (0x1<<30) | (0x1<<24)) & 0xff000000) >> 24) : __swap32md((0x1<<31) | (0x1<<30) | (0x1<<24)));
 bus_dmamap_sync(sc->sc_dmat, dmap, 0, dmap->dm_mapsize,
     (xs->flags & 0x00800) ? 0x01 :
     0x04);
 return (0);
}
int
mpii_scsi_probe(struct scsi_link *link)
{
 struct mpii_softc *sc = link->adapter_softc;
 struct mpii_cfg_sas_dev_pg0 pg0;
 struct mpii_ecfg_hdr ehdr;
 struct mpii_device *dev;
 uint32_t address;
 int flags;
 if ((sc->sc_porttype != (0x30)) &&
     (sc->sc_porttype != (0x31)))
  return (6);
 dev = sc->sc_devs[link->target];
 if (dev == ((void *)0))
  return (1);
 flags = dev->flags;
 if (((flags) & ((0x0004))) || ((flags) & ((0x0008))))
  return (1);
 if (((flags) & ((0x0010))))
  return (0);
 __builtin_memset((&ehdr), (0), (sizeof(ehdr)));
 ehdr.page_type = (0x0f);
 ehdr.page_number = 0;
 ehdr.page_version = 0;
 ehdr.ext_page_type = (0x12);
 ehdr.ext_page_length = (__uint16_t)(__builtin_constant_p(sizeof(pg0) / 4) ? (__uint16_t)(((__uint16_t)(sizeof(pg0) / 4) & 0xffU) << 8 | ((__uint16_t)(sizeof(pg0) / 4) & 0xff00U) >> 8) : __swap16md(sizeof(pg0) / 4));
 address = (0x20000000) | (uint32_t)dev->dev_handle;
 if (mpii_req_cfg_page(sc, address, (1<<0),
     &ehdr, 1, &pg0, sizeof(pg0)) != 0) {
  printf("%s: unable to fetch SAS device page 0 for target %u\n",
      ((sc)->sc_dev.dv_xname), link->target);
  return (0);
 }
 link->port_wwn = (__uint64_t)(__builtin_constant_p(pg0.sas_addr) ? (__uint64_t)((((__uint64_t)(pg0.sas_addr) & 0xff) << 56) | ((__uint64_t)(pg0.sas_addr) & 0xff00ULL) << 40 | ((__uint64_t)(pg0.sas_addr) & 0xff0000ULL) << 24 | ((__uint64_t)(pg0.sas_addr) & 0xff000000ULL) << 8 | ((__uint64_t)(pg0.sas_addr) & 0xff00000000ULL) >> 8 | ((__uint64_t)(pg0.sas_addr) & 0xff0000000000ULL) >> 24 | ((__uint64_t)(pg0.sas_addr) & 0xff000000000000ULL) >> 40 | ((__uint64_t)(pg0.sas_addr) & 0xff00000000000000ULL) >> 56) : __swap64md(pg0.sas_addr));
 link->node_wwn = (__uint64_t)(__builtin_constant_p(pg0.device_name) ? (__uint64_t)((((__uint64_t)(pg0.device_name) & 0xff) << 56) | ((__uint64_t)(pg0.device_name) & 0xff00ULL) << 40 | ((__uint64_t)(pg0.device_name) & 0xff0000ULL) << 24 | ((__uint64_t)(pg0.device_name) & 0xff000000ULL) << 8 | ((__uint64_t)(pg0.device_name) & 0xff00000000ULL) >> 8 | ((__uint64_t)(pg0.device_name) & 0xff0000000000ULL) >> 24 | ((__uint64_t)(pg0.device_name) & 0xff000000000000ULL) >> 40 | ((__uint64_t)(pg0.device_name) & 0xff00000000000000ULL) >> 56) : __swap64md(pg0.device_name));
 if (((__mswap32(&pg0.device_info)) & ((1<<13)))) {
  link->flags |= 0x0200;
  link->quirks |= 0x4000;
 }
 return (0);
}
u_int32_t
mpii_read(struct mpii_softc *sc, bus_size_t r)
{
 u_int32_t rv;
 bus_space_barrier(sc->sc_iot, sc->sc_ioh, r, 4,
     0x01);
 rv = bus_space_read_4(sc->sc_iot, sc->sc_ioh, r);
 ;
 return (rv);
}
void
mpii_write(struct mpii_softc *sc, bus_size_t r, u_int32_t v)
{
 ;
 bus_space_write_4(sc->sc_iot, sc->sc_ioh, r, v);
 bus_space_barrier(sc->sc_iot, sc->sc_ioh, r, 4,
     0x02);
}
int
mpii_wait_eq(struct mpii_softc *sc, bus_size_t r, u_int32_t mask,
    u_int32_t target)
{
 int i;
 ;
 for (i = 0; i < 15000; i++) {
  if ((mpii_read(sc, r) & mask) == target)
   return (0);
  delay(1000);
 }
 return (1);
}
int
mpii_wait_ne(struct mpii_softc *sc, bus_size_t r, u_int32_t mask,
    u_int32_t target)
{
 int i;
 ;
 for (i = 0; i < 15000; i++) {
  if ((mpii_read(sc, r) & mask) != target)
   return (0);
  delay(1000);
 }
 return (1);
}
int
mpii_init(struct mpii_softc *sc)
{
 u_int32_t db;
 int i;
 if (mpii_wait_ne(sc, (0x00), (0xf<<28),
     (0x0<<28)) != 0) {
  ;
  return (1);
 }
 db = mpii_read((sc), (0x00));
 if ((db & (0x7<<24)) == (0x3<<24)) {
  ;
  return (0);
 }
 for (i = 0; i < 5; i++) {
  switch (db & (0xf<<28)) {
  case (0x1<<28):
   ;
   return (0);
  case (0x2<<28):
   ;
   if (sc->sc_ioc_event_replay)
    mpii_reset_soft(sc);
   else
    mpii_reset_hard(sc);
   break;
  case (0x4<<28):
   ;
   mpii_reset_hard(sc);
   break;
  case (0x0<<28):
   ;
   if (mpii_wait_ne(sc, (0x00), (0xf<<28),
       (0x0<<28)) != 0)
    return (1);
   break;
  }
  db = mpii_read((sc), (0x00));
 }
 return (1);
}
int
mpii_reset_soft(struct mpii_softc *sc)
{
 ;
 if (mpii_read((sc), (0x00)) & (0x1<<27)) {
  return (1);
 }
 mpii_write((sc), (0x00), (((((0x40)) << (24)) & (0xff << (24)))));
 if (mpii_wait_eq((sc), (0x30), (1<<31), 0) != 0)
  return (1);
 if (mpii_wait_eq(sc, (0x00), (0xf<<28),
     (0x1<<28)) != 0)
  return (1);
 return (0);
}
int
mpii_reset_hard(struct mpii_softc *sc)
{
 u_int16_t i;
 ;
 mpii_write((sc), (0x30), (0));
 mpii_write(sc, (0x04), (0x00));
 mpii_write(sc, (0x04), (0x0f));
 mpii_write(sc, (0x04), (0x04));
 mpii_write(sc, (0x04), (0x0b));
 mpii_write(sc, (0x04), (0x02));
 mpii_write(sc, (0x04), (0x07));
 mpii_write(sc, (0x04), (0x0d));
 delay(100);
 if ((mpii_read(sc, (0x08)) & (1<<7)) == 0) {
  ;
  return(1);
 }
 mpii_write(sc, (0x08), (1<<2));
 delay(240000);
 for (i = 0; i < 30000; i++) {
  if ((mpii_read(sc, (0x08)) &
      (1<<2)) == 0)
   break;
  delay(10000);
 }
 mpii_write(sc, (0x04), 0xff);
 ;
 return(0);
}
int
mpii_handshake_send(struct mpii_softc *sc, void *buf, size_t dwords)
{
 u_int32_t *query = buf;
 int i;
 if (mpii_read((sc), (0x00)) & (0x1<<27))
  return (1);
 if (mpii_read((sc), (0x30)) & (1<<0))
  mpii_write((sc), (0x30), (0));
 mpii_write((sc), (0x00), (((((0x42)) << (24)) & (0xff << (24))) | (((dwords) << 16) & (0xff << 16))));
 if (mpii_wait_ne((sc), (0x30), (1<<0), 0) != 0)
  return (1);
 mpii_write((sc), (0x30), (0));
 if (mpii_wait_eq((sc), (0x30), (1<<31), 0) != 0)
  return (1);
 for (i = 0; i < dwords; i++) {
  mpii_write((sc), (0x00), ((__uint32_t)(__builtin_constant_p(query[i]) ? (__uint32_t)(((__uint32_t)(query[i]) & 0xff) << 24 | ((__uint32_t)(query[i]) & 0xff00) << 8 | ((__uint32_t)(query[i]) & 0xff0000) >> 8 | ((__uint32_t)(query[i]) & 0xff000000) >> 24) : __swap32md(query[i]))));
  if (mpii_wait_eq((sc), (0x30), (1<<31), 0) != 0)
   return (1);
 }
 return (0);
}
int
mpii_handshake_recv_dword(struct mpii_softc *sc, u_int32_t *dword)
{
 u_int16_t *words = (u_int16_t *)dword;
 int i;
 for (i = 0; i < 2; i++) {
  if (mpii_wait_ne((sc), (0x30), (1<<0), 0) != 0)
   return (1);
  words[i] = (__uint16_t)(__builtin_constant_p(mpii_read((sc), (0x00)) & (0xffff)) ? (__uint16_t)(((__uint16_t)(mpii_read((sc), (0x00)) & (0xffff)) & 0xffU) << 8 | ((__uint16_t)(mpii_read((sc), (0x00)) & (0xffff)) & 0xff00U) >> 8) : __swap16md(mpii_read((sc), (0x00)) & (0xffff)));
  mpii_write((sc), (0x30), (0));
 }
 return (0);
}
int
mpii_handshake_recv(struct mpii_softc *sc, void *buf, size_t dwords)
{
 struct mpii_msg_reply *reply = buf;
 u_int32_t *dbuf = buf, dummy;
 int i;
 if (mpii_handshake_recv_dword(sc, &dbuf[0]) != 0)
  return (1);
 ;
 for (i = 1; i < (((dwords)<(reply->msg_length))?(dwords):(reply->msg_length)); i++) {
  if (mpii_handshake_recv_dword(sc, &dbuf[i]) != 0)
   return (1);
 }
 while (i++ < reply->msg_length) {
  if (mpii_handshake_recv_dword(sc, &dummy) != 0)
   return (1);
  ;
 }
 if (mpii_wait_ne((sc), (0x30), (1<<0), 0) != 0)
  return (1);
 if (mpii_wait_eq(sc, (0x00), (0x1<<27), 0) != 0)
  return (1);
 mpii_write((sc), (0x30), (0));
 return (0);
}
void
mpii_empty_done(struct mpii_ccb *ccb)
{
}
int
mpii_iocfacts(struct mpii_softc *sc)
{
 struct mpii_msg_iocfacts_request ifq;
 struct mpii_msg_iocfacts_reply ifp;
 int irs;
 int sge_size;
 u_int qdepth;
 ;
 __builtin_memset((&ifq), (0), (sizeof(ifq)));
 __builtin_memset((&ifp), (0), (sizeof(ifp)));
 ifq.function = (0x03);
 if (mpii_handshake_send(sc, &ifq, (sizeof(ifq) / sizeof(u_int32_t))) != 0) {
  ;
  return (1);
 }
 if (mpii_handshake_recv(sc, &ifp, (sizeof(ifp) / sizeof(u_int32_t))) != 0) {
  ;
  return (1);
 }
 sc->sc_ioc_number = ifp.ioc_number;
 sc->sc_vf_id = ifp.vf_id;
 sc->sc_max_volumes = ifp.max_volumes;
 sc->sc_max_devices = ifp.max_volumes + __mswap16(&ifp.max_targets);
 if (((__mswap32(&ifp.ioc_capabilities)) & ((1<<12))))
  ((sc->sc_flags) |= ((1<<1)));
 sc->sc_max_cmds = (((__mswap16(&ifp.request_credit))<((128)))?(__mswap16(&ifp.request_credit)):((128)));
 if (ifp.msg_version_maj == 2 && ifp.msg_version_min == 5)
  ((sc->sc_flags) |= ((1<<2)));
 sc->sc_num_reply_frames = sc->sc_max_cmds + 32;
 if (!(sc->sc_num_reply_frames % 16))
  sc->sc_num_reply_frames--;
 sc->sc_reply_post_qdepth = sc->sc_max_cmds +
     sc->sc_num_reply_frames;
 sc->sc_reply_post_qdepth += 16 - (sc->sc_reply_post_qdepth % 16);
 qdepth = __mswap16(&ifp.max_reply_descriptor_post_queue_depth);
 if (sc->sc_reply_post_qdepth > qdepth) {
  sc->sc_reply_post_qdepth = qdepth;
  if (sc->sc_reply_post_qdepth < 16) {
   printf("%s: RDPQ is too shallow\n", ((sc)->sc_dev.dv_xname));
   return (1);
  }
  sc->sc_max_cmds = sc->sc_reply_post_qdepth / 2 - 4;
  sc->sc_num_reply_frames = sc->sc_max_cmds + 4;
 }
 sc->sc_reply_free_qdepth = sc->sc_num_reply_frames +
     16 - (sc->sc_num_reply_frames % 16);
 sc->sc_reply_size = ifp.reply_frame_size * 4;
 irs = __mswap16(&ifp.ioc_request_frame_size) * 4;
 sc->sc_request_size = (512);
 if (irs > sc->sc_request_size) {
  sc->sc_request_size = irs + sizeof(struct scsi_sense_data);
  sc->sc_request_size += 16 - (sc->sc_request_size % 16);
 }
 if (((sc->sc_flags) & ((1<<2)))) {
  sge_size = sizeof(struct mpii_ieee_sge);
 } else {
  sge_size = sizeof(struct mpii_sge);
 }
 sc->sc_chain_sge = (irs - sizeof(struct mpii_msg_scsi_io)) /
     sge_size - 1;
 sc->sc_max_sgl = (sc->sc_request_size -
      sizeof(struct mpii_msg_scsi_io) - sizeof(struct scsi_sense_data)) /
     sge_size - 1;
 return (0);
}
int
mpii_iocinit(struct mpii_softc *sc)
{
 struct mpii_msg_iocinit_request iiq;
 struct mpii_msg_iocinit_reply iip;
 ;
 __builtin_memset((&iiq), (0), (sizeof(iiq)));
 __builtin_memset((&iip), (0), (sizeof(iip)));
 iiq.function = (0x02);
 iiq.whoinit = (0x04);
 iiq.vf_id = 0;
 iiq.msg_version_maj = 0x02;
 iiq.msg_version_min = 0x00;
 iiq.hdr_version_unit = 0x00;
 iiq.hdr_version_dev = 0x00;
 __swapm16((&iiq.system_request_frame_size), (sc->sc_request_size / 4));
 __swapm16((&iiq.reply_descriptor_post_queue_depth), (sc->sc_reply_post_qdepth));
 __swapm16((&iiq.reply_free_queue_depth), (sc->sc_reply_free_qdepth));
 __swapm32((&iiq.sense_buffer_address_high), (((u_int64_t)(sc->sc_requests)->mdm_map->dm_segs[0].ds_addr) >> 32));
 __swapm32((&iiq.system_reply_address_high), (((u_int64_t)(sc->sc_replies)->mdm_map->dm_segs[0].ds_addr) >> 32));
 __swapm32((&iiq.system_request_frame_base_address_lo), (((u_int64_t)(sc->sc_requests)->mdm_map->dm_segs[0].ds_addr)));
 __swapm32((&iiq.system_request_frame_base_address_hi), (((u_int64_t)(sc->sc_requests)->mdm_map->dm_segs[0].ds_addr) >> 32));
 __swapm32((&iiq.reply_descriptor_post_queue_address_lo), (((u_int64_t)(sc->sc_reply_postq)->mdm_map->dm_segs[0].ds_addr)));
 __swapm32((&iiq.reply_descriptor_post_queue_address_hi), (((u_int64_t)(sc->sc_reply_postq)->mdm_map->dm_segs[0].ds_addr) >> 32));
 __swapm32((&iiq.reply_free_queue_address_lo), (((u_int64_t)(sc->sc_reply_freeq)->mdm_map->dm_segs[0].ds_addr)));
 __swapm32((&iiq.reply_free_queue_address_hi), (((u_int64_t)(sc->sc_reply_freeq)->mdm_map->dm_segs[0].ds_addr) >> 32));
 if (mpii_handshake_send(sc, &iiq, (sizeof(iiq) / sizeof(u_int32_t))) != 0) {
  ;
  return (1);
 }
 if (mpii_handshake_recv(sc, &iip, (sizeof(iip) / sizeof(u_int32_t))) != 0) {
  ;
  return (1);
 }
 ;
 ;
 ;
 ;
 ;
 if (__mswap16(&iip.ioc_status) != (0x0000) ||
     __mswap32(&iip.ioc_loginfo))
  return (1);
 return (0);
}
void
mpii_push_reply(struct mpii_softc *sc, struct mpii_rcb *rcb)
{
 u_int32_t *rfp;
 u_int idx;
 if (rcb == ((void *)0))
  return;
 idx = sc->sc_reply_free_host_index;
 rfp = ((void *)(sc->sc_reply_freeq)->mdm_kva);
 __swapm32((&rfp[idx]), (rcb->rcb_reply_dva));
 if (++idx >= sc->sc_reply_free_qdepth)
  idx = 0;
 bus_space_write_4((sc)->sc_iot, (sc)->sc_ioh, (0x48), (sc->sc_reply_free_host_index = idx));
}
int
mpii_portfacts(struct mpii_softc *sc)
{
 struct mpii_msg_portfacts_request *pfq;
 struct mpii_msg_portfacts_reply *pfp;
 struct mpii_ccb *ccb;
 int rv = 1;
 ;
 ccb = scsi_io_get(&sc->sc_iopool, 0);
 if (ccb == ((void *)0)) {
  ;
  return (rv);
 }
 ccb->ccb_done = mpii_empty_done;
 pfq = ccb->ccb_cmd;
 __builtin_memset((pfq), (0), (sizeof(*pfq)));
 pfq->function = (0x05);
 pfq->chain_offset = 0;
 pfq->msg_flags = 0;
 pfq->port_number = 0;
 pfq->vp_id = 0;
 pfq->vf_id = 0;
 if (mpii_poll(sc, ccb) != 0) {
  ;
  goto err;
 }
 if (ccb->ccb_rcb == ((void *)0)) {
  ;
  goto err;
 }
 pfp = ccb->ccb_rcb->rcb_reply;
 sc->sc_porttype = pfp->port_type;
 mpii_push_reply(sc, ccb->ccb_rcb);
 rv = 0;
err:
 scsi_io_put(&sc->sc_iopool, ccb);
 return (rv);
}
void
mpii_eventack(void *cookie, void *io)
{
 struct mpii_softc *sc = cookie;
 struct mpii_ccb *ccb = io;
 struct mpii_rcb *rcb, *next;
 struct mpii_msg_event_reply *enp;
 struct mpii_msg_eventack_request *eaq;
 __mtx_enter(&sc->sc_evt_ack_mtx );
 rcb = ((&sc->sc_evt_ack_queue)->sqh_first);
 if (rcb != ((void *)0)) {
  next = ((rcb)->rcb_link.sqe_next);
  do { if (((&sc->sc_evt_ack_queue)->sqh_first = (&sc->sc_evt_ack_queue)->sqh_first->rcb_link.sqe_next) == ((void *)0)) (&sc->sc_evt_ack_queue)->sqh_last = &(&sc->sc_evt_ack_queue)->sqh_first; } while (0);
 }
 __mtx_leave(&sc->sc_evt_ack_mtx );
 if (rcb == ((void *)0)) {
  scsi_io_put(&sc->sc_iopool, ccb);
  return;
 }
 enp = (struct mpii_msg_event_reply *)rcb->rcb_reply;
 ccb->ccb_done = mpii_eventack_done;
 eaq = ccb->ccb_cmd;
 eaq->function = (0x08);
 eaq->event = enp->event;
 eaq->event_context = enp->event_context;
 mpii_push_reply(sc, rcb);
 mpii_start(sc, ccb);
 if (next != ((void *)0))
  scsi_ioh_add(&sc->sc_evt_ack_handler);
}
void
mpii_eventack_done(struct mpii_ccb *ccb)
{
 struct mpii_softc *sc = ccb->ccb_sc;
 ;
 mpii_push_reply(sc, ccb->ccb_rcb);
 scsi_io_put(&sc->sc_iopool, ccb);
}
int
mpii_portenable(struct mpii_softc *sc)
{
 struct mpii_msg_portenable_request *peq;
 struct mpii_ccb *ccb;
 ;
 ccb = scsi_io_get(&sc->sc_iopool, 0);
 if (ccb == ((void *)0)) {
  ;
  return (1);
 }
 ccb->ccb_done = mpii_empty_done;
 peq = ccb->ccb_cmd;
 peq->function = (0x06);
 peq->vf_id = sc->sc_vf_id;
 if (mpii_poll(sc, ccb) != 0) {
  ;
  return (1);
 }
 if (ccb->ccb_rcb == ((void *)0)) {
  ;
  return (1);
 }
 mpii_push_reply(sc, ccb->ccb_rcb);
 scsi_io_put(&sc->sc_iopool, ccb);
 return (0);
}
int
mpii_cfg_coalescing(struct mpii_softc *sc)
{
 struct mpii_cfg_hdr hdr;
 struct mpii_cfg_ioc_pg1 ipg;
 hdr.page_version = 0;
 hdr.page_length = sizeof(ipg) / 4;
 hdr.page_number = 1;
 hdr.page_type = (0x01);
 __builtin_memset((&ipg), (0), (sizeof(ipg)));
 if (mpii_req_cfg_page(sc, 0, (1<<1), &hdr, 1, &ipg,
     sizeof(ipg)) != 0) {
  ;
  return (1);
 }
 if (!((__mswap32(&ipg.flags)) & ((1<<0))))
  return (0);
 ((ipg.flags) &= ~((__uint32_t)(__builtin_constant_p((1<<0)) ? (__uint32_t)(((__uint32_t)((1<<0)) & 0xff) << 24 | ((__uint32_t)((1<<0)) & 0xff00) << 8 | ((__uint32_t)((1<<0)) & 0xff0000) >> 8 | ((__uint32_t)((1<<0)) & 0xff000000) >> 24) : __swap32md((1<<0)))));
 if (mpii_req_cfg_page(sc, 0, (1<<1), &hdr, 0, &ipg,
     sizeof(ipg)) != 0) {
  ;
  return (1);
 }
 return (0);
}
int
mpii_eventnotify(struct mpii_softc *sc)
{
 struct mpii_msg_event_request *enq;
 struct mpii_ccb *ccb;
 ccb = scsi_io_get(&sc->sc_iopool, 0);
 if (ccb == ((void *)0)) {
  ;
  return (1);
 }
 do { (&sc->sc_evt_sas_queue)->sqh_first = ((void *)0); (&sc->sc_evt_sas_queue)->sqh_last = &(&sc->sc_evt_sas_queue)->sqh_first; } while (0);
 do { (void)(((void *)0)); (void)(0); __mtx_init((&sc->sc_evt_sas_mtx), ((((5)) > 0 && ((5)) < 12) ? 12 : ((5)))); } while (0);
 task_set(&sc->sc_evt_sas_task, mpii_event_sas, sc);
 do { (&sc->sc_evt_ack_queue)->sqh_first = ((void *)0); (&sc->sc_evt_ack_queue)->sqh_last = &(&sc->sc_evt_ack_queue)->sqh_first; } while (0);
 do { (void)(((void *)0)); (void)(0); __mtx_init((&sc->sc_evt_ack_mtx), ((((5)) > 0 && ((5)) < 12) ? 12 : ((5)))); } while (0);
 scsi_ioh_set(&sc->sc_evt_ack_handler, &sc->sc_iopool,
     mpii_eventack, sc);
 ccb->ccb_done = mpii_eventnotify_done;
 enq = ccb->ccb_cmd;
 enq->function = (0x07);
 do { enq->event_masks[0] = 0xffffffff; enq->event_masks[1] = 0xffffffff; enq->event_masks[2] = 0xffffffff; enq->event_masks[3] = 0xffffffff; } while (0);
 do { enq->event_masks[(0x16) / 32] &= (__uint32_t)(__builtin_constant_p(~(1 << ((0x16) % 32))) ? (__uint32_t)(((__uint32_t)(~(1 << ((0x16) % 32))) & 0xff) << 24 | ((__uint32_t)(~(1 << ((0x16) % 32))) & 0xff00) << 8 | ((__uint32_t)(~(1 << ((0x16) % 32))) & 0xff0000) >> 8 | ((__uint32_t)(~(1 << ((0x16) % 32))) & 0xff000000) >> 24) : __swap32md(~(1 << ((0x16) % 32)))); } while (0);
 do { enq->event_masks[(0x1c) / 32] &= (__uint32_t)(__builtin_constant_p(~(1 << ((0x1c) % 32))) ? (__uint32_t)(((__uint32_t)(~(1 << ((0x1c) % 32))) & 0xff) << 24 | ((__uint32_t)(~(1 << ((0x1c) % 32))) & 0xff00) << 8 | ((__uint32_t)(~(1 << ((0x1c) % 32))) & 0xff0000) >> 8 | ((__uint32_t)(~(1 << ((0x1c) % 32))) & 0xff000000) >> 24) : __swap32md(~(1 << ((0x1c) % 32)))); } while (0);
 do { enq->event_masks[(0x0f) / 32] &= (__uint32_t)(__builtin_constant_p(~(1 << ((0x0f) % 32))) ? (__uint32_t)(((__uint32_t)(~(1 << ((0x0f) % 32))) & 0xff) << 24 | ((__uint32_t)(~(1 << ((0x0f) % 32))) & 0xff00) << 8 | ((__uint32_t)(~(1 << ((0x0f) % 32))) & 0xff0000) >> 8 | ((__uint32_t)(~(1 << ((0x0f) % 32))) & 0xff000000) >> 24) : __swap32md(~(1 << ((0x0f) % 32)))); } while (0);
 do { enq->event_masks[(0x1d) / 32] &= (__uint32_t)(__builtin_constant_p(~(1 << ((0x1d) % 32))) ? (__uint32_t)(((__uint32_t)(~(1 << ((0x1d) % 32))) & 0xff) << 24 | ((__uint32_t)(~(1 << ((0x1d) % 32))) & 0xff00) << 8 | ((__uint32_t)(~(1 << ((0x1d) % 32))) & 0xff0000) >> 8 | ((__uint32_t)(~(1 << ((0x1d) % 32))) & 0xff000000) >> 24) : __swap32md(~(1 << ((0x1d) % 32)))); } while (0);
 do { enq->event_masks[(0x20) / 32] &= (__uint32_t)(__builtin_constant_p(~(1 << ((0x20) % 32))) ? (__uint32_t)(((__uint32_t)(~(1 << ((0x20) % 32))) & 0xff) << 24 | ((__uint32_t)(~(1 << ((0x20) % 32))) & 0xff00) << 8 | ((__uint32_t)(~(1 << ((0x20) % 32))) & 0xff0000) >> 8 | ((__uint32_t)(~(1 << ((0x20) % 32))) & 0xff000000) >> 24) : __swap32md(~(1 << ((0x20) % 32)))); } while (0);
 do { enq->event_masks[(0x1e) / 32] &= (__uint32_t)(__builtin_constant_p(~(1 << ((0x1e) % 32))) ? (__uint32_t)(((__uint32_t)(~(1 << ((0x1e) % 32))) & 0xff) << 24 | ((__uint32_t)(~(1 << ((0x1e) % 32))) & 0xff00) << 8 | ((__uint32_t)(~(1 << ((0x1e) % 32))) & 0xff0000) >> 8 | ((__uint32_t)(~(1 << ((0x1e) % 32))) & 0xff000000) >> 24) : __swap32md(~(1 << ((0x1e) % 32)))); } while (0);
 do { enq->event_masks[(0x1f) / 32] &= (__uint32_t)(__builtin_constant_p(~(1 << ((0x1f) % 32))) ? (__uint32_t)(((__uint32_t)(~(1 << ((0x1f) % 32))) & 0xff) << 24 | ((__uint32_t)(~(1 << ((0x1f) % 32))) & 0xff00) << 8 | ((__uint32_t)(~(1 << ((0x1f) % 32))) & 0xff0000) >> 8 | ((__uint32_t)(~(1 << ((0x1f) % 32))) & 0xff000000) >> 24) : __swap32md(~(1 << ((0x1f) % 32)))); } while (0);
 do { enq->event_masks[(0x14) / 32] &= (__uint32_t)(__builtin_constant_p(~(1 << ((0x14) % 32))) ? (__uint32_t)(((__uint32_t)(~(1 << ((0x14) % 32))) & 0xff) << 24 | ((__uint32_t)(~(1 << ((0x14) % 32))) & 0xff00) << 8 | ((__uint32_t)(~(1 << ((0x14) % 32))) & 0xff0000) >> 8 | ((__uint32_t)(~(1 << ((0x14) % 32))) & 0xff000000) >> 24) : __swap32md(~(1 << ((0x14) % 32)))); } while (0);
 mpii_start(sc, ccb);
 return (0);
}
void
mpii_eventnotify_done(struct mpii_ccb *ccb)
{
 struct mpii_softc *sc = ccb->ccb_sc;
 struct mpii_rcb *rcb = ccb->ccb_rcb;
 ;
 scsi_io_put(&sc->sc_iopool, ccb);
 mpii_event_process(sc, rcb);
}
void
mpii_event_raid(struct mpii_softc *sc, struct mpii_msg_event_reply *enp)
{
 struct mpii_evt_ir_cfg_change_list *ccl;
 struct mpii_evt_ir_cfg_element *ce;
 struct mpii_device *dev;
 u_int16_t type;
 int i;
 ccl = (struct mpii_evt_ir_cfg_change_list *)(enp + 1);
 if (ccl->num_elements == 0)
  return;
 if (((__mswap32(&ccl->flags)) & ((0x1)))) {
  return;
 }
 ce = (struct mpii_evt_ir_cfg_element *)(ccl + 1);
 for (i = 0; i < ccl->num_elements; i++, ce++) {
  type = (__mswap16(&ce->element_flags) &
      (0xf));
  switch (type) {
  case (0x0):
   switch (ce->reason_code) {
   case (0x01):
   case (0x06):
    if (mpii_find_dev(sc,
        __mswap16(&ce->vol_dev_handle))) {
     printf("%s: device %#x is already "
         "configured\n", ((sc)->sc_dev.dv_xname),
         __mswap16(&ce->vol_dev_handle));
     break;
    }
    dev = malloc(sizeof(*dev), 2,
        0x0002 | 0x0008);
    if (!dev) {
     printf("%s: failed to allocate a "
         "device structure\n", ((sc)->sc_dev.dv_xname));
     break;
    }
    ((dev->flags) |= ((0x0010)));
    dev->slot = sc->sc_vd_id_low;
    dev->dev_handle = __mswap16(&ce->vol_dev_handle);
    if (mpii_insert_dev(sc, dev)) {
     free(dev, 2, sizeof *dev);
     break;
    }
    sc->sc_vd_count++;
    break;
   case (0x02):
   case (0x07):
    if (!(dev = mpii_find_dev(sc,
        __mswap16(&ce->vol_dev_handle))))
     break;
    mpii_remove_dev(sc, dev);
    sc->sc_vd_count--;
    break;
   }
   break;
  case (0x1):
   if (ce->reason_code ==
       (0x08) ||
       ce->reason_code ==
       (0x04)) {
    if (!(dev = mpii_find_dev(sc,
        __mswap16(&ce->phys_disk_dev_handle))))
     break;
    ((dev->flags) &= ~((0x0040)));
    ((dev->flags) |= ((0x0020) | (0x0004)));
   }
   break;
  case (0x2):
   if (ce->reason_code ==
       (0x04)) {
    if (!(dev = mpii_find_dev(sc,
        __mswap16(&ce->phys_disk_dev_handle))))
     break;
    ((dev->flags) |= ((0x0040) | (0x0004)));
   }
   break;
  }
 }
}
void
mpii_event_sas(void *xsc)
{
 struct mpii_softc *sc = xsc;
 struct mpii_rcb *rcb, *next;
 struct mpii_msg_event_reply *enp;
 struct mpii_evt_sas_tcl *tcl;
 struct mpii_evt_phy_entry *pe;
 struct mpii_device *dev;
 int i;
 u_int16_t handle;
 __mtx_enter(&sc->sc_evt_sas_mtx );
 rcb = ((&sc->sc_evt_sas_queue)->sqh_first);
 if (rcb != ((void *)0)) {
  next = ((rcb)->rcb_link.sqe_next);
  do { if (((&sc->sc_evt_sas_queue)->sqh_first = (&sc->sc_evt_sas_queue)->sqh_first->rcb_link.sqe_next) == ((void *)0)) (&sc->sc_evt_sas_queue)->sqh_last = &(&sc->sc_evt_sas_queue)->sqh_first; } while (0);
 }
 __mtx_leave(&sc->sc_evt_sas_mtx );
 if (rcb == ((void *)0))
  return;
 if (next != ((void *)0))
  task_add(systq, &sc->sc_evt_sas_task);
 enp = (struct mpii_msg_event_reply *)rcb->rcb_reply;
 switch (__mswap16(&enp->event)) {
 case (0x16):
  mpii_event_discovery(sc, enp);
  goto done;
 case (0x1c):
  break;
 default:
  panic("%s: unexpected event %#x in sas event queue",
      ((sc)->sc_dev.dv_xname), __mswap16(&enp->event));
 }
 tcl = (struct mpii_evt_sas_tcl *)(enp + 1);
 pe = (struct mpii_evt_phy_entry *)(tcl + 1);
 for (i = 0; i < tcl->num_entries; i++, pe++) {
  switch (pe->phy_status & (0x0f)) {
  case (0x01):
   handle = __mswap16(&pe->dev_handle);
   if (mpii_find_dev(sc, handle)) {
    printf("%s: device %#x is already "
        "configured\n", ((sc)->sc_dev.dv_xname), handle);
    break;
   }
   dev = malloc(sizeof(*dev), 2, 0x0001 | 0x0008);
   dev->slot = sc->sc_pd_id_start + tcl->start_phy_num + i;
   dev->dev_handle = handle;
   dev->phy_num = tcl->start_phy_num + i;
   if (tcl->enclosure_handle)
    dev->physical_port = tcl->physical_port;
   dev->enclosure = __mswap16(&tcl->enclosure_handle);
   dev->expander = __mswap16(&tcl->expander_handle);
   if (mpii_insert_dev(sc, dev)) {
    free(dev, 2, sizeof *dev);
    break;
   }
   if (sc->sc_scsibus != ((void *)0))
    scsi_probe_target(sc->sc_scsibus, dev->slot);
   break;
  case (0x02):
   dev = mpii_find_dev(sc, __mswap16(&pe->dev_handle));
   if (dev == ((void *)0))
    break;
   mpii_remove_dev(sc, dev);
   mpii_sas_remove_device(sc, dev->dev_handle);
   if (sc->sc_scsibus != ((void *)0) &&
       !((dev->flags) & ((0x0004)))) {
    scsi_activate(sc->sc_scsibus, dev->slot, -1,
        1);
    scsi_detach_target(sc->sc_scsibus, dev->slot,
        0x01);
   }
   free(dev, 2, sizeof *dev);
   break;
  }
 }
done:
 mpii_event_done(sc, rcb);
}
void
mpii_event_discovery(struct mpii_softc *sc, struct mpii_msg_event_reply *enp)
{
 struct mpii_evt_sas_discovery *esd =
     (struct mpii_evt_sas_discovery *)(enp + 1);
 if (esd->reason_code == (0x02)) {
  if (esd->discovery_status != 0) {
   printf("%s: sas discovery completed with status %#x\n",
       ((sc)->sc_dev.dv_xname), esd->discovery_status);
  }
  if (((sc->sc_flags) & ((1<<3)))) {
   ((sc->sc_flags) &= ~((1<<3)));
   config_pending_decr();
  }
 }
}
void
mpii_event_process(struct mpii_softc *sc, struct mpii_rcb *rcb)
{
 struct mpii_msg_event_reply *enp;
 enp = (struct mpii_msg_event_reply *)rcb->rcb_reply;
 ;
 switch (__mswap16(&enp->event)) {
 case (0x0a):
  break;
 case (0x16):
 case (0x1c):
  __mtx_enter(&sc->sc_evt_sas_mtx );
  do { (rcb)->rcb_link.sqe_next = ((void *)0); *(&sc->sc_evt_sas_queue)->sqh_last = (rcb); (&sc->sc_evt_sas_queue)->sqh_last = &(rcb)->rcb_link.sqe_next; } while (0);
  __mtx_leave(&sc->sc_evt_sas_mtx );
  task_add(systq, &sc->sc_evt_sas_task);
  return;
 case (0x0f):
  break;
 case (0x1d):
  break;
 case (0x1e): {
  struct mpii_evt_ir_volume *evd =
      (struct mpii_evt_ir_volume *)(enp + 1);
  struct mpii_device *dev;
  const char *vol_states[] = {
   "Invalid",
   "Offline",
   "Building",
   "Online",
   "Degraded",
   "Online",
  };
  if (cold)
   break;
  _kernel_lock("/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../dev/pci/mpii.c", 1964);
  dev = mpii_find_dev(sc, __mswap16(&evd->vol_dev_handle));
  _kernel_unlock();
  if (dev == ((void *)0))
   break;
  if (evd->reason_code == (0x03))
   printf("%s: volume %d state changed from %s to %s\n",
       ((sc)->sc_dev.dv_xname), dev->slot - sc->sc_vd_id_low,
       vol_states[evd->prev_value],
       vol_states[evd->new_value]);
  if (evd->reason_code == (0x02) &&
      ((evd->new_value) & ((1<<16))) &&
      !((evd->prev_value) & ((1<<16))))
   printf("%s: started resync on a volume %d\n",
       ((sc)->sc_dev.dv_xname), dev->slot - sc->sc_vd_id_low);
  }
  break;
 case (0x1f):
  break;
 case (0x20):
  mpii_event_raid(sc, enp);
  break;
 case (0x14): {
  struct mpii_evt_ir_status *evs =
      (struct mpii_evt_ir_status *)(enp + 1);
  struct mpii_device *dev;
  _kernel_lock("/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../dev/pci/mpii.c", 1993);
  dev = mpii_find_dev(sc, __mswap16(&evs->vol_dev_handle));
  _kernel_unlock();
  if (dev != ((void *)0) &&
      evs->operation == (0x00))
   dev->percent = evs->percent;
  break;
  }
 default:
  ;
 }
 mpii_event_done(sc, rcb);
}
void
mpii_event_done(struct mpii_softc *sc, struct mpii_rcb *rcb)
{
 struct mpii_msg_event_reply *enp = rcb->rcb_reply;
 if (enp->ack_required) {
  __mtx_enter(&sc->sc_evt_ack_mtx );
  do { (rcb)->rcb_link.sqe_next = ((void *)0); *(&sc->sc_evt_ack_queue)->sqh_last = (rcb); (&sc->sc_evt_ack_queue)->sqh_last = &(rcb)->rcb_link.sqe_next; } while (0);
  __mtx_leave(&sc->sc_evt_ack_mtx );
  scsi_ioh_add(&sc->sc_evt_ack_handler);
 } else
  mpii_push_reply(sc, rcb);
}
void
mpii_sas_remove_device(struct mpii_softc *sc, u_int16_t handle)
{
 struct mpii_msg_scsi_task_request *stq;
 struct mpii_msg_sas_oper_request *soq;
 struct mpii_ccb *ccb;
 ccb = scsi_io_get(&sc->sc_iopool, 0);
 if (ccb == ((void *)0))
  return;
 stq = ccb->ccb_cmd;
 stq->function = (0x01);
 stq->task_type = (0x03);
 __swapm16((&stq->dev_handle), (handle));
 ccb->ccb_done = mpii_empty_done;
 mpii_wait(sc, ccb);
 if (ccb->ccb_rcb != ((void *)0))
  mpii_push_reply(sc, ccb->ccb_rcb);
 ccb->ccb_state = MPII_CCB_READY;
 ccb->ccb_rcb = ((void *)0);
 soq = ccb->ccb_cmd;
 __builtin_memset((soq), (0), (sizeof(*soq)));
 soq->function = (0x1b);
 soq->operation = (0x0d);
 __swapm16((&soq->dev_handle), (handle));
 ccb->ccb_done = mpii_empty_done;
 mpii_wait(sc, ccb);
 if (ccb->ccb_rcb != ((void *)0))
  mpii_push_reply(sc, ccb->ccb_rcb);
 scsi_io_put(&sc->sc_iopool, ccb);
}
int
mpii_board_info(struct mpii_softc *sc)
{
 struct mpii_msg_iocfacts_request ifq;
 struct mpii_msg_iocfacts_reply ifp;
 struct mpii_cfg_manufacturing_pg0 mpg;
 struct mpii_cfg_hdr hdr;
 __builtin_memset((&ifq), (0), (sizeof(ifq)));
 __builtin_memset((&ifp), (0), (sizeof(ifp)));
 ifq.function = (0x03);
 if (mpii_handshake_send(sc, &ifq, (sizeof(ifq) / sizeof(u_int32_t))) != 0) {
  ;
  return (1);
 }
 if (mpii_handshake_recv(sc, &ifp, (sizeof(ifp) / sizeof(u_int32_t))) != 0) {
  ;
  return (1);
 }
 hdr.page_version = 0;
 hdr.page_length = sizeof(mpg) / 4;
 hdr.page_number = 0;
 hdr.page_type = (0x09);
 __builtin_memset((&mpg), (0), (sizeof(mpg)));
 if (mpii_req_cfg_page(sc, 0, (1<<1), &hdr, 1, &mpg,
     sizeof(mpg)) != 0) {
  printf("%s: unable to fetch manufacturing page 0\n",
      ((sc)->sc_dev.dv_xname));
  return (22);
 }
 printf("%s: %s, firmware %u.%u.%u.%u%s, MPI %u.%u\n", ((sc)->sc_dev.dv_xname),
     mpg.board_name, ifp.fw_version_maj, ifp.fw_version_min,
     ifp.fw_version_unit, ifp.fw_version_dev,
     ((sc->sc_flags) & ((1<<1))) ? " IR" : "",
     ifp.msg_version_maj, ifp.msg_version_min);
 return (0);
}
int
mpii_target_map(struct mpii_softc *sc)
{
 struct mpii_cfg_hdr hdr;
 struct mpii_cfg_ioc_pg8 ipg;
 int flags, pad = 0;
 hdr.page_version = 0;
 hdr.page_length = sizeof(ipg) / 4;
 hdr.page_number = 8;
 hdr.page_type = (0x01);
 __builtin_memset((&ipg), (0), (sizeof(ipg)));
 if (mpii_req_cfg_page(sc, 0, (1<<1), &hdr, 1, &ipg,
     sizeof(ipg)) != 0) {
  printf("%s: unable to fetch ioc page 8\n",
      ((sc)->sc_dev.dv_xname));
  return (22);
 }
 if (__mswap16(&ipg.flags) & (1<<4))
  pad = 1;
 flags = __mswap16(&ipg.ir_volume_mapping_flags) &
     (0x00000003);
 if (((sc->sc_flags) & ((1<<1)))) {
  if (flags == (0<<0)) {
   sc->sc_vd_id_low += pad;
   pad = sc->sc_max_volumes;
  } else
   sc->sc_vd_id_low = sc->sc_max_devices -
       sc->sc_max_volumes;
 }
 sc->sc_pd_id_start += pad;
 return (0);
}
int
mpii_req_cfg_header(struct mpii_softc *sc, u_int8_t type, u_int8_t number,
    u_int32_t address, int flags, void *p)
{
 struct mpii_msg_config_request *cq;
 struct mpii_msg_config_reply *cp;
 struct mpii_ccb *ccb;
 struct mpii_cfg_hdr *hdr = p;
 struct mpii_ecfg_hdr *ehdr = p;
 int etype = 0;
 int rv = 0;
 ;
 ccb = scsi_io_get(&sc->sc_iopool,
     ((flags) & ((1<<1))) ? 0x00001 : 0);
 if (ccb == ((void *)0)) {
  ;
  return (1);
 }
 if (((flags) & ((1<<0)))) {
  etype = type;
  type = (0x0f);
 }
 cq = ccb->ccb_cmd;
 cq->function = (0x04);
 cq->action = (0x00);
 cq->config_header.page_number = number;
 cq->config_header.page_type = type;
 cq->ext_page_type = etype;
 __swapm32((&cq->page_address), (address));
 __swapm32((&cq->page_buffer.sg_hdr), ((0x1<<28) | (0x1<<31) | (0x1<<30) | (0x1<<24)));
 ccb->ccb_done = mpii_empty_done;
 if (((flags) & ((1<<1)))) {
  if (mpii_poll(sc, ccb) != 0) {
   ;
   return (1);
  }
 } else
  mpii_wait(sc, ccb);
 if (ccb->ccb_rcb == ((void *)0)) {
  scsi_io_put(&sc->sc_iopool, ccb);
  return (1);
 }
 cp = ccb->ccb_rcb->rcb_reply;
 ;
 ;
 ;
 ;
 ;
 ;
 if (__mswap16(&cp->ioc_status) != (0x0000))
  rv = 1;
 else if (((flags) & ((1<<0)))) {
  __builtin_memset((ehdr), (0), (sizeof(*ehdr)));
  ehdr->page_version = cp->config_header.page_version;
  ehdr->page_number = cp->config_header.page_number;
  ehdr->page_type = cp->config_header.page_type;
  ehdr->ext_page_length = cp->ext_page_length;
  ehdr->ext_page_type = cp->ext_page_type;
 } else
  *hdr = cp->config_header;
 mpii_push_reply(sc, ccb->ccb_rcb);
 scsi_io_put(&sc->sc_iopool, ccb);
 return (rv);
}
int
mpii_req_cfg_page(struct mpii_softc *sc, u_int32_t address, int flags,
    void *p, int read, void *page, size_t len)
{
 struct mpii_msg_config_request *cq;
 struct mpii_msg_config_reply *cp;
 struct mpii_ccb *ccb;
 struct mpii_cfg_hdr *hdr = p;
 struct mpii_ecfg_hdr *ehdr = p;
 caddr_t kva;
 int page_length;
 int rv = 0;
 ;
 page_length = ((flags) & ((1<<0))) ?
     __mswap16(&ehdr->ext_page_length) : hdr->page_length;
 if (len > sc->sc_request_size - sizeof(*cq) || len < page_length * 4)
  return (1);
 ccb = scsi_io_get(&sc->sc_iopool,
     ((flags) & ((1<<1))) ? 0x00001 : 0);
 if (ccb == ((void *)0)) {
  ;
  return (1);
 }
 cq = ccb->ccb_cmd;
 cq->function = (0x04);
 cq->action = (read ? (0x01) :
     (0x02));
 if (((flags) & ((1<<0)))) {
  cq->config_header.page_version = ehdr->page_version;
  cq->config_header.page_number = ehdr->page_number;
  cq->config_header.page_type = ehdr->page_type;
  cq->ext_page_len = ehdr->ext_page_length;
  cq->ext_page_type = ehdr->ext_page_type;
 } else
  cq->config_header = *hdr;
 cq->config_header.page_type &= (0x0f);
 __swapm32((&cq->page_address), (address));
 __swapm32((&cq->page_buffer.sg_hdr), ((0x1<<28) | (0x1<<31) | (0x1<<30) | (0x1<<24) | (0x1<<25) | (page_length * 4) | (read ? (0x0<<26) : (0x1<<26))));
 mpii_dvatosge(&cq->page_buffer, ccb->ccb_cmd_dva +
     sizeof(struct mpii_msg_config_request));
 kva = ccb->ccb_cmd;
 kva += sizeof(struct mpii_msg_config_request);
 if (!read)
  __builtin_memcpy((kva), (page), (len));
 ccb->ccb_done = mpii_empty_done;
 if (((flags) & ((1<<1)))) {
  if (mpii_poll(sc, ccb) != 0) {
   ;
   return (1);
  }
 } else
  mpii_wait(sc, ccb);
 if (ccb->ccb_rcb == ((void *)0)) {
  scsi_io_put(&sc->sc_iopool, ccb);
  return (1);
 }
 cp = ccb->ccb_rcb->rcb_reply;
 ;
 ;
 ;
 ;
 ;
 ;
 if (__mswap16(&cp->ioc_status) != (0x0000))
  rv = 1;
 else if (read)
  __builtin_memcpy((page), (kva), (len));
 mpii_push_reply(sc, ccb->ccb_rcb);
 scsi_io_put(&sc->sc_iopool, ccb);
 return (rv);
}
struct mpii_rcb *
mpii_reply(struct mpii_softc *sc, struct mpii_reply_descr *rdp)
{
 struct mpii_rcb *rcb = ((void *)0);
 u_int32_t rfid;
 ;
 if ((rdp->reply_flags & (0x0f)) ==
     (0x01)) {
  rfid = (__mswap32(&rdp->frame_addr) -
      (u_int32_t)((u_int64_t)(sc->sc_replies)->mdm_map->dm_segs[0].ds_addr)) /
      sc->sc_reply_size;
  bus_dmamap_sync(sc->sc_dmat,
      ((sc->sc_replies)->mdm_map), sc->sc_reply_size * rfid,
      sc->sc_reply_size, 0x02);
  rcb = &sc->sc_rcbs[rfid];
 }
 __builtin_memset((rdp), (0xff), (sizeof(*rdp)));
 bus_dmamap_sync(sc->sc_dmat, ((sc->sc_reply_postq)->mdm_map),
     8 * sc->sc_reply_post_host_index, 8,
     0x02 | 0x08);
 return (rcb);
}
struct mpii_dmamem *
mpii_dmamem_alloc(struct mpii_softc *sc, size_t size)
{
 struct mpii_dmamem *mdm;
 int nsegs;
 mdm = malloc(sizeof(*mdm), 2, 0x0002 | 0x0008);
 if (mdm == ((void *)0))
  return (((void *)0));
 mdm->mdm_size = size;
 if (bus_dmamap_create(sc->sc_dmat, size, 1, size, 0,
     0x0001 | 0x0002, &mdm->mdm_map) != 0)
  goto mdmfree;
 if (bus_dmamem_alloc(sc->sc_dmat, size, (1 << 13), 0, &mdm->mdm_seg,
     1, &nsegs, 0x0001 | 0x0800) != 0)
  goto destroy;
 if (bus_dmamem_map(sc->sc_dmat, &mdm->mdm_seg, nsegs, size,
     &mdm->mdm_kva, 0x0001) != 0)
  goto free;
 if (bus_dmamap_load(sc->sc_dmat, mdm->mdm_map, mdm->mdm_kva, size,
     ((void *)0), 0x0001) != 0)
  goto unmap;
 return (mdm);
unmap:
 bus_dmamem_unmap(sc->sc_dmat, mdm->mdm_kva, size);
free:
 bus_dmamem_free(sc->sc_dmat, &mdm->mdm_seg, 1);
destroy:
 bus_dmamap_destroy(sc->sc_dmat, mdm->mdm_map);
mdmfree:
 free(mdm, 2, sizeof *mdm);
 return (((void *)0));
}
void
mpii_dmamem_free(struct mpii_softc *sc, struct mpii_dmamem *mdm)
{
 ;
 bus_dmamap_unload(sc->sc_dmat, mdm->mdm_map);
 bus_dmamem_unmap(sc->sc_dmat, mdm->mdm_kva, mdm->mdm_size);
 bus_dmamem_free(sc->sc_dmat, &mdm->mdm_seg, 1);
 bus_dmamap_destroy(sc->sc_dmat, mdm->mdm_map);
 free(mdm, 2, sizeof *mdm);
}
int
mpii_insert_dev(struct mpii_softc *sc, struct mpii_device *dev)
{
 int slot;
 if (dev == ((void *)0) || dev->slot < 0)
  return (1);
 slot = dev->slot;
 while (slot < sc->sc_max_devices && sc->sc_devs[slot] != ((void *)0))
  slot++;
 if (slot >= sc->sc_max_devices)
  return (1);
 dev->slot = slot;
 sc->sc_devs[slot] = dev;
 return (0);
}
int
mpii_remove_dev(struct mpii_softc *sc, struct mpii_device *dev)
{
 int i;
 if (dev == ((void *)0))
  return (1);
 for (i = 0; i < sc->sc_max_devices; i++) {
  if (sc->sc_devs[i] == ((void *)0))
   continue;
  if (sc->sc_devs[i]->dev_handle == dev->dev_handle) {
   sc->sc_devs[i] = ((void *)0);
   return (0);
  }
 }
 return (1);
}
struct mpii_device *
mpii_find_dev(struct mpii_softc *sc, u_int16_t handle)
{
 int i;
 for (i = 0; i < sc->sc_max_devices; i++) {
  if (sc->sc_devs[i] == ((void *)0))
   continue;
  if (sc->sc_devs[i]->dev_handle == handle)
   return (sc->sc_devs[i]);
 }
 return (((void *)0));
}
int
mpii_alloc_ccbs(struct mpii_softc *sc)
{
 struct mpii_ccb *ccb;
 u_int8_t *cmd;
 int i;
 do { (&sc->sc_ccb_free)->sqh_first = ((void *)0); (&sc->sc_ccb_free)->sqh_last = &(&sc->sc_ccb_free)->sqh_first; } while (0);
 do { (&sc->sc_ccb_tmos)->sqh_first = ((void *)0); (&sc->sc_ccb_tmos)->sqh_last = &(&sc->sc_ccb_tmos)->sqh_first; } while (0);
 do { (void)(((void *)0)); (void)(0); __mtx_init((&sc->sc_ccb_free_mtx), ((((5)) > 0 && ((5)) < 12) ? 12 : ((5)))); } while (0);
 do { (void)(((void *)0)); (void)(0); __mtx_init((&sc->sc_ccb_mtx), ((((5)) > 0 && ((5)) < 12) ? 12 : ((5)))); } while (0);
 scsi_ioh_set(&sc->sc_ccb_tmo_handler, &sc->sc_iopool,
     mpii_scsi_cmd_tmo_handler, sc);
 sc->sc_ccbs = mallocarray((sc->sc_max_cmds-1), sizeof(*ccb),
     2, 0x0002 | 0x0008);
 if (sc->sc_ccbs == ((void *)0)) {
  printf("%s: unable to allocate ccbs\n", ((sc)->sc_dev.dv_xname));
  return (1);
 }
 sc->sc_requests = mpii_dmamem_alloc(sc,
     sc->sc_request_size * sc->sc_max_cmds);
 if (sc->sc_requests == ((void *)0)) {
  printf("%s: unable to allocate ccb dmamem\n", ((sc)->sc_dev.dv_xname));
  goto free_ccbs;
 }
 cmd = ((void *)(sc->sc_requests)->mdm_kva);
 for (i = 1; i < sc->sc_max_cmds; i++) {
  ccb = &sc->sc_ccbs[i - 1];
  if (bus_dmamap_create(sc->sc_dmat, (64 * 1024), sc->sc_max_sgl,
      (64 * 1024), 0, 0x0001 | 0x0002,
      &ccb->ccb_dmamap) != 0) {
   printf("%s: unable to create dma map\n", ((sc)->sc_dev.dv_xname));
   goto free_maps;
  }
  ccb->ccb_sc = sc;
  __swapm16((&ccb->ccb_smid), (i));
  ccb->ccb_offset = sc->sc_request_size * i;
  ccb->ccb_cmd = &cmd[ccb->ccb_offset];
  ccb->ccb_cmd_dva = (u_int32_t)((u_int64_t)(sc->sc_requests)->mdm_map->dm_segs[0].ds_addr) +
      ccb->ccb_offset;
  ;
  mpii_put_ccb(sc, ccb);
 }
 scsi_iopool_init(&sc->sc_iopool, sc, mpii_get_ccb, mpii_put_ccb);
 return (0);
free_maps:
 while ((ccb = mpii_get_ccb(sc)) != ((void *)0))
  bus_dmamap_destroy(sc->sc_dmat, ccb->ccb_dmamap);
 mpii_dmamem_free(sc, sc->sc_requests);
free_ccbs:
 free(sc->sc_ccbs, 2, (sc->sc_max_cmds-1) * sizeof(*ccb));
 return (1);
}
void
mpii_put_ccb(void *cookie, void *io)
{
 struct mpii_softc *sc = cookie;
 struct mpii_ccb *ccb = io;
 ;
 ccb->ccb_state = MPII_CCB_FREE;
 ccb->ccb_cookie = ((void *)0);
 ccb->ccb_done = ((void *)0);
 ccb->ccb_rcb = ((void *)0);
 __builtin_memset((ccb->ccb_cmd), (0), (sc->sc_request_size));
 _kernel_unlock();
 __mtx_enter(&sc->sc_ccb_free_mtx );
 do { if (((ccb)->ccb_link.sqe_next = (&sc->sc_ccb_free)->sqh_first) == ((void *)0)) (&sc->sc_ccb_free)->sqh_last = &(ccb)->ccb_link.sqe_next; (&sc->sc_ccb_free)->sqh_first = (ccb); } while (0);
 __mtx_leave(&sc->sc_ccb_free_mtx );
 _kernel_lock("/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../dev/pci/mpii.c", 2588);
}
void *
mpii_get_ccb(void *cookie)
{
 struct mpii_softc *sc = cookie;
 struct mpii_ccb *ccb;
 _kernel_unlock();
 __mtx_enter(&sc->sc_ccb_free_mtx );
 ccb = ((&sc->sc_ccb_free)->sqh_first);
 if (ccb != ((void *)0)) {
  do { if (((&sc->sc_ccb_free)->sqh_first = (&sc->sc_ccb_free)->sqh_first->ccb_link.sqe_next) == ((void *)0)) (&sc->sc_ccb_free)->sqh_last = &(&sc->sc_ccb_free)->sqh_first; } while (0);
  ccb->ccb_state = MPII_CCB_READY;
 }
 __mtx_leave(&sc->sc_ccb_free_mtx );
 _kernel_lock("/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../dev/pci/mpii.c", 2607);
 ;
 return (ccb);
}
int
mpii_alloc_replies(struct mpii_softc *sc)
{
 ;
 sc->sc_rcbs = mallocarray(sc->sc_num_reply_frames,
     sizeof(struct mpii_rcb), 2, 0x0002);
 if (sc->sc_rcbs == ((void *)0))
  return (1);
 sc->sc_replies = mpii_dmamem_alloc(sc, sc->sc_reply_size *
     sc->sc_num_reply_frames);
 if (sc->sc_replies == ((void *)0)) {
  free(sc->sc_rcbs, 2,
      sc->sc_num_reply_frames * sizeof(struct mpii_rcb));
  return (1);
 }
 return (0);
}
void
mpii_push_replies(struct mpii_softc *sc)
{
 struct mpii_rcb *rcb;
 caddr_t kva = ((void *)(sc->sc_replies)->mdm_kva);
 int i;
 bus_dmamap_sync(sc->sc_dmat, ((sc->sc_replies)->mdm_map),
     0, sc->sc_reply_size * sc->sc_num_reply_frames,
     0x01);
 for (i = 0; i < sc->sc_num_reply_frames; i++) {
  rcb = &sc->sc_rcbs[i];
  rcb->rcb_reply = kva + sc->sc_reply_size * i;
  rcb->rcb_reply_dva = (u_int32_t)((u_int64_t)(sc->sc_replies)->mdm_map->dm_segs[0].ds_addr) +
      sc->sc_reply_size * i;
  mpii_push_reply(sc, rcb);
 }
}
void
mpii_start(struct mpii_softc *sc, struct mpii_ccb *ccb)
{
 struct mpii_request_header *rhp;
 struct mpii_request_descr descr;
 u_long *rdp = (u_long *)&descr;
 ;
 bus_dmamap_sync(sc->sc_dmat, ((sc->sc_requests)->mdm_map),
     ccb->ccb_offset, sc->sc_request_size,
     0x01 | 0x04);
 ccb->ccb_state = MPII_CCB_QUEUED;
 rhp = ccb->ccb_cmd;
 __builtin_memset((&descr), (0), (sizeof(descr)));
 switch (rhp->function) {
 case (0x00):
  descr.request_flags = (0x00);
  descr.dev_handle = (__uint16_t)(__builtin_constant_p(ccb->ccb_dev_handle) ? (__uint16_t)(((__uint16_t)(ccb->ccb_dev_handle) & 0xffU) << 8 | ((__uint16_t)(ccb->ccb_dev_handle) & 0xff00U) >> 8) : __swap16md(ccb->ccb_dev_handle));
  break;
 case (0x01):
  descr.request_flags = (0x06);
  break;
 default:
  descr.request_flags = (0x08);
 }
 descr.vf_id = sc->sc_vf_id;
 descr.smid = ccb->ccb_smid;
 ;
 ;
 bus_space_write_raw_8(sc->sc_iot, sc->sc_ioh,
     (0xc0), *rdp);
}
int
mpii_poll(struct mpii_softc *sc, struct mpii_ccb *ccb)
{
 void (*done)(struct mpii_ccb *);
 void *cookie;
 int rv = 1;
 ;
 done = ccb->ccb_done;
 cookie = ccb->ccb_cookie;
 ccb->ccb_done = mpii_poll_done;
 ccb->ccb_cookie = &rv;
 mpii_start(sc, ccb);
 while (rv == 1) {
  if (((mpii_read(((sc)), (0x30)) & (1<<3)) == (1<<3)))
   mpii_intr(sc);
  else
   delay(10);
 }
 ccb->ccb_cookie = cookie;
 done(ccb);
 return (0);
}
void
mpii_poll_done(struct mpii_ccb *ccb)
{
 int *rv = ccb->ccb_cookie;
 *rv = 0;
}
int
mpii_alloc_queues(struct mpii_softc *sc)
{
 u_int32_t *rfp;
 int i;
 ;
 sc->sc_reply_freeq = mpii_dmamem_alloc(sc,
     sc->sc_reply_free_qdepth * sizeof(*rfp));
 if (sc->sc_reply_freeq == ((void *)0))
  return (1);
 rfp = ((void *)(sc->sc_reply_freeq)->mdm_kva);
 for (i = 0; i < sc->sc_num_reply_frames; i++) {
  rfp[i] = (u_int32_t)((u_int64_t)(sc->sc_replies)->mdm_map->dm_segs[0].ds_addr) +
      sc->sc_reply_size * i;
 }
 sc->sc_reply_postq = mpii_dmamem_alloc(sc,
     sc->sc_reply_post_qdepth * sizeof(struct mpii_reply_descr));
 if (sc->sc_reply_postq == ((void *)0))
  goto free_reply_freeq;
 sc->sc_reply_postq_kva = ((void *)(sc->sc_reply_postq)->mdm_kva);
 __builtin_memset((sc->sc_reply_postq_kva), (0xff), (sc->sc_reply_post_qdepth * sizeof(struct mpii_reply_descr)));
 return (0);
free_reply_freeq:
 mpii_dmamem_free(sc, sc->sc_reply_freeq);
 return (1);
}
void
mpii_init_queues(struct mpii_softc *sc)
{
 ;
 sc->sc_reply_free_host_index = sc->sc_reply_free_qdepth - 1;
 sc->sc_reply_post_host_index = 0;
 bus_space_write_4((sc)->sc_iot, (sc)->sc_ioh, (0x48), (sc->sc_reply_free_host_index));
 bus_space_write_4((sc)->sc_iot, (sc)->sc_ioh, (0x6c), (sc->sc_reply_post_host_index));
}
void
mpii_wait(struct mpii_softc *sc, struct mpii_ccb *ccb)
{
 struct mutex mtx = { ((void *)0), ((((5)) > 0 && ((5)) < 12) ? 12 : ((5))), 0 };
 void (*done)(struct mpii_ccb *);
 void *cookie;
 done = ccb->ccb_done;
 cookie = ccb->ccb_cookie;
 ccb->ccb_done = mpii_wait_done;
 ccb->ccb_cookie = &mtx;
 mpii_start(sc, ccb);
 __mtx_enter(&mtx );
 while (ccb->ccb_cookie != ((void *)0))
  msleep(ccb, &mtx, 16, "mpiiwait", 0);
 __mtx_leave(&mtx );
 ccb->ccb_cookie = cookie;
 done(ccb);
}
void
mpii_wait_done(struct mpii_ccb *ccb)
{
 struct mutex *mtx = ccb->ccb_cookie;
 __mtx_enter(mtx );
 ccb->ccb_cookie = ((void *)0);
 __mtx_leave(mtx );
 wakeup_n((ccb), 1);
}
void
mpii_scsi_cmd(struct scsi_xfer *xs)
{
 struct scsi_link *link = xs->sc_link;
 struct mpii_softc *sc = link->adapter_softc;
 struct mpii_ccb *ccb = xs->io;
 struct mpii_msg_scsi_io *io;
 struct mpii_device *dev;
 int ret;
 ;
 if (xs->cmdlen > (32)) {
  ;
  __builtin_memset((&xs->sense), (0), (sizeof(xs->sense)));
  xs->sense.error_code = 0x80 | 0x70;
  xs->sense.flags = 0x05;
  xs->sense.add_sense_code = 0x20;
  xs->error = 1;
  scsi_done(xs);
  return;
 }
 if ((dev = sc->sc_devs[link->target]) == ((void *)0)) {
  xs->error = 3;
  scsi_done(xs);
  return;
 }
 _kernel_unlock();
 ;
 ccb->ccb_cookie = xs;
 ccb->ccb_done = mpii_scsi_cmd_done;
 ccb->ccb_dev_handle = dev->dev_handle;
 io = ccb->ccb_cmd;
 __builtin_memset((io), (0), (sizeof(*io)));
 io->function = (0x00);
 io->sense_buffer_length = sizeof(xs->sense);
 io->sgl_offset0 = sizeof(struct mpii_msg_scsi_io) / 4;
 __swapm16((&io->io_flags), (xs->cmdlen));
 __swapm16((&io->dev_handle), (ccb->ccb_dev_handle));
 (*(__uint16_t *)(&io->lun[0]) = ((__uint16_t)(link->lun)));
 switch (xs->flags & (0x00800 | 0x01000)) {
 case 0x00800:
  io->direction = (0x2);
  break;
 case 0x01000:
  io->direction = (0x1);
  break;
 default:
  io->direction = (0x0);
  break;
 }
 io->tagging = (0x0);
 __builtin_memcpy((io->cdb), (xs->cmd), (xs->cmdlen));
 __swapm32((&io->data_length), (xs->datalen));
 __swapm32((&io->sense_buffer_low_address), (ccb->ccb_cmd_dva + sc->sc_request_size - sizeof(struct scsi_sense_data)));
 if (((sc->sc_flags) & ((1<<2))))
  ret = mpii_load_xs_sas3(ccb);
 else
  ret = mpii_load_xs(ccb);
 if (ret != 0) {
  xs->error = 2;
  goto done;
 }
 timeout_set(&xs->stimeout, mpii_scsi_cmd_tmo, ccb);
 if (xs->flags & 0x00002) {
  if (mpii_poll(sc, ccb) != 0) {
   xs->error = 2;
   goto done;
  }
 } else {
  timeout_add_msec(&xs->stimeout, xs->timeout);
  mpii_start(sc, ccb);
 }
 _kernel_lock("/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../dev/pci/mpii.c", 2928);
 return;
done:
 _kernel_lock("/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../dev/pci/mpii.c", 2932);
 scsi_done(xs);
}
void
mpii_scsi_cmd_tmo(void *xccb)
{
 struct mpii_ccb *ccb = xccb;
 struct mpii_softc *sc = ccb->ccb_sc;
 printf("%s: mpii_scsi_cmd_tmo\n", ((sc)->sc_dev.dv_xname));
 __mtx_enter(&sc->sc_ccb_mtx );
 if (ccb->ccb_state == MPII_CCB_QUEUED) {
  ccb->ccb_state = MPII_CCB_TIMEOUT;
  do { if (((ccb)->ccb_link.sqe_next = (&sc->sc_ccb_tmos)->sqh_first) == ((void *)0)) (&sc->sc_ccb_tmos)->sqh_last = &(ccb)->ccb_link.sqe_next; (&sc->sc_ccb_tmos)->sqh_first = (ccb); } while (0);
 }
 __mtx_leave(&sc->sc_ccb_mtx );
 scsi_ioh_add(&sc->sc_ccb_tmo_handler);
}
void
mpii_scsi_cmd_tmo_handler(void *cookie, void *io)
{
 struct mpii_softc *sc = cookie;
 struct mpii_ccb *tccb = io;
 struct mpii_ccb *ccb;
 struct mpii_msg_scsi_task_request *stq;
 __mtx_enter(&sc->sc_ccb_mtx );
 ccb = ((&sc->sc_ccb_tmos)->sqh_first);
 if (ccb != ((void *)0)) {
  do { if (((&sc->sc_ccb_tmos)->sqh_first = (&sc->sc_ccb_tmos)->sqh_first->ccb_link.sqe_next) == ((void *)0)) (&sc->sc_ccb_tmos)->sqh_last = &(&sc->sc_ccb_tmos)->sqh_first; } while (0);
  ccb->ccb_state = MPII_CCB_QUEUED;
 }
 __mtx_leave(&sc->sc_ccb_mtx );
 if (ccb == ((void *)0)) {
  scsi_io_put(&sc->sc_iopool, tccb);
  return;
 }
 stq = tccb->ccb_cmd;
 stq->function = (0x01);
 stq->task_type = (0x03);
 __swapm16((&stq->dev_handle), (ccb->ccb_dev_handle));
 tccb->ccb_done = mpii_scsi_cmd_tmo_done;
 mpii_start(sc, tccb);
}
void
mpii_scsi_cmd_tmo_done(struct mpii_ccb *tccb)
{
 mpii_scsi_cmd_tmo_handler(tccb->ccb_sc, tccb);
}
void
mpii_scsi_cmd_done(struct mpii_ccb *ccb)
{
 struct mpii_ccb *tccb;
 struct mpii_msg_scsi_io_error *sie;
 struct mpii_softc *sc = ccb->ccb_sc;
 struct scsi_xfer *xs = ccb->ccb_cookie;
 struct scsi_sense_data *sense;
 bus_dmamap_t dmap = ccb->ccb_dmamap;
 timeout_del(&xs->stimeout);
 __mtx_enter(&sc->sc_ccb_mtx );
 if (ccb->ccb_state == MPII_CCB_TIMEOUT) {
  if (ccb == ((&sc->sc_ccb_tmos)->sqh_first))
   do { if (((&sc->sc_ccb_tmos)->sqh_first = (&sc->sc_ccb_tmos)->sqh_first->ccb_link.sqe_next) == ((void *)0)) (&sc->sc_ccb_tmos)->sqh_last = &(&sc->sc_ccb_tmos)->sqh_first; } while (0);
  else {
   for((tccb) = ((&sc->sc_ccb_tmos)->sqh_first); (tccb) != ((void *)0); (tccb) = ((tccb)->ccb_link.sqe_next)) {
    if (((tccb)->ccb_link.sqe_next) == ccb) {
     do { if (((tccb)->ccb_link.sqe_next = (tccb)->ccb_link.sqe_next->ccb_link.sqe_next) == ((void *)0)) (&sc->sc_ccb_tmos)->sqh_last = &(tccb)->ccb_link.sqe_next; } while (0);
     break;
    }
   }
  }
 }
 ccb->ccb_state = MPII_CCB_READY;
 __mtx_leave(&sc->sc_ccb_mtx );
 if (xs->datalen != 0) {
  bus_dmamap_sync(sc->sc_dmat, dmap, 0, dmap->dm_mapsize,
      (xs->flags & 0x00800) ? 0x02 :
      0x08);
  bus_dmamap_unload(sc->sc_dmat, dmap);
 }
 xs->error = 0;
 xs->resid = 0;
 if (ccb->ccb_rcb == ((void *)0)) {
  xs->status = 0x00;
  goto done;
 }
 sie = ccb->ccb_rcb->rcb_reply;
 ;
 ;
 ;
 ;
 ;
 ;
 ;
 ;
 ;
 ;
 if (sie->scsi_state & (1<<2))
  xs->status = 0x22;
 else
  xs->status = sie->scsi_status;
 xs->resid = 0;
 switch (__mswap16(&sie->ioc_status) & (0x7fff)) {
 case (0x0045):
  xs->resid = xs->datalen - __mswap32(&sie->transfer_count);
 case (0x0000):
 case (0x0040):
  switch (xs->status) {
  case 0x00:
   xs->error = 0;
   break;
  case 0x02:
   xs->error = 1;
   break;
  case 0x08:
  case 0x28:
   xs->error = 5;
   break;
  default:
   xs->error = 2;
  }
  break;
 case (0x0002):
 case (0x0006):
  xs->error = 5;
  break;
 case (0x004b):
 case (0x0048):
  xs->error = 8;
  break;
 case (0x0042):
 case (0x0043):
  xs->error = 3;
  break;
 default:
  xs->error = 2;
  break;
 }
 sense = (struct scsi_sense_data *)((caddr_t)ccb->ccb_cmd +
     sc->sc_request_size - sizeof(*sense));
 if (sie->scsi_state & (1<<0))
  __builtin_memcpy((&xs->sense), (sense), (sizeof(xs->sense)));
 ;
 mpii_push_reply(sc, ccb->ccb_rcb);
done:
 _kernel_lock("/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../dev/pci/mpii.c", 3126);
 scsi_done(xs);
 _kernel_unlock();
}
int
mpii_scsi_ioctl(struct scsi_link *link, u_long cmd, caddr_t addr, int flag)
{
 struct mpii_softc *sc = (struct mpii_softc *)link->adapter_softc;
 struct mpii_device *dev = sc->sc_devs[link->target];
 ;
 switch (cmd) {
 case ((unsigned long)0x40000000 | ((sizeof(struct dk_cache) & 0x1fff) << 16) | ((('d')) << 8) | ((117))):
 case ((unsigned long)0x80000000 | ((sizeof(struct dk_cache) & 0x1fff) << 16) | ((('d')) << 8) | ((118))):
  if (dev != ((void *)0) && ((dev->flags) & ((0x0010)))) {
   return (mpii_ioctl_cache(link, cmd,
       (struct dk_cache *)addr));
  }
  break;
 default:
  if (sc->sc_ioctl)
   return (sc->sc_ioctl(link->adapter_softc, cmd, addr));
  break;
 }
 return (25);
}
int
mpii_ioctl_cache(struct scsi_link *link, u_long cmd, struct dk_cache *dc)
{
 struct mpii_softc *sc = (struct mpii_softc *)link->adapter_softc;
 struct mpii_device *dev = sc->sc_devs[link->target];
 struct mpii_cfg_raid_vol_pg0 *vpg;
 struct mpii_msg_raid_action_request *req;
 struct mpii_msg_raid_action_reply *rep;
 struct mpii_cfg_hdr hdr;
 struct mpii_ccb *ccb;
 u_int32_t addr = (1<<28) | dev->dev_handle;
 size_t pagelen;
 int rv = 0;
 int enabled;
 if (mpii_req_cfg_header(sc, (0x08), 0,
     addr, (1<<1), &hdr) != 0)
  return (22);
 pagelen = hdr.page_length * 4;
 vpg = malloc(pagelen, 127, 0x0001 | 0x0004 | 0x0008);
 if (vpg == ((void *)0))
  return (12);
 if (mpii_req_cfg_page(sc, addr, (1<<1), &hdr, 1,
     vpg, pagelen) != 0) {
  rv = 22;
  goto done;
 }
 enabled = ((__mswap16(&vpg->volume_settings) &
     (0x3<<0)) ==
     (0x2<<0)) ? 1 : 0;
 if (cmd == ((unsigned long)0x40000000 | ((sizeof(struct dk_cache) & 0x1fff) << 16) | ((('d')) << 8) | ((117)))) {
  dc->wrcache = enabled;
  dc->rdcache = 0;
  goto done;
 }
 if (dc->rdcache) {
  rv = 45;
  goto done;
 }
 if (((dc->wrcache) ? 1 : 0) == enabled)
  goto done;
 ccb = scsi_io_get(&sc->sc_iopool, 0x00002);
 if (ccb == ((void *)0)) {
  rv = 12;
  goto done;
 }
 ccb->ccb_done = mpii_empty_done;
 req = ccb->ccb_cmd;
 __builtin_memset((req), (0), (sizeof(*req)));
 req->function = (0x15);
 req->action = (0x17);
 __swapm16((&req->vol_dev_handle), (dev->dev_handle));
 __swapm32((&req->action_data), (dc->wrcache ? (0x02) : (0x01)));
 if (mpii_poll(sc, ccb) != 0) {
  rv = 5;
  goto done;
 }
 if (ccb->ccb_rcb != ((void *)0)) {
  rep = ccb->ccb_rcb->rcb_reply;
  if ((rep->ioc_status != (0x0000)) ||
      ((rep->action_data[0] &
       (0x03)) !=
      (dc->wrcache ? (0x02) :
       (0x01))))
   rv = 22;
  mpii_push_reply(sc, ccb->ccb_rcb);
 }
 scsi_io_put(&sc->sc_iopool, ccb);
done:
 free(vpg, 127, pagelen);
 return (rv);
}
int
mpii_ioctl(struct device *dev, u_long cmd, caddr_t addr)
{
 struct mpii_softc *sc = (struct mpii_softc *)dev;
 int error = 0;
 ;
 switch (cmd) {
 case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct bioc_inq) & 0x1fff) << 16) | ((('B')) << 8) | ((32))):
  ;
  error = mpii_ioctl_inq(sc, (struct bioc_inq *)addr);
  break;
 case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct bioc_vol) & 0x1fff) << 16) | ((('B')) << 8) | ((34))):
  ;
  error = mpii_ioctl_vol(sc, (struct bioc_vol *)addr);
  break;
 case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct bioc_disk) & 0x1fff) << 16) | ((('B')) << 8) | ((33))):
  ;
  error = mpii_ioctl_disk(sc, (struct bioc_disk *)addr);
  break;
 default:
  ;
  error = 22;
 }
 return (error);
}
int
mpii_ioctl_inq(struct mpii_softc *sc, struct bioc_inq *bi)
{
 int i;
 ;
 strlcpy(bi->bi_dev, ((sc)->sc_dev.dv_xname), sizeof(bi->bi_dev));
 for (i = 0; i < sc->sc_max_devices; i++)
  if (sc->sc_devs[i] &&
      ((sc->sc_devs[i]->flags) & ((0x0010))))
   bi->bi_novol++;
 return (0);
}
int
mpii_ioctl_vol(struct mpii_softc *sc, struct bioc_vol *bv)
{
 struct mpii_cfg_raid_vol_pg0 *vpg;
 struct mpii_cfg_hdr hdr;
 struct mpii_device *dev;
 struct scsi_link *lnk;
 struct device *scdev;
 size_t pagelen;
 u_int16_t volh;
 int rv, hcnt = 0;
 ;
 if ((dev = mpii_find_vol(sc, bv->bv_volid)) == ((void *)0))
  return (19);
 volh = dev->dev_handle;
 if (mpii_req_cfg_header(sc, (0x08), 0,
     (1<<28) | volh, 0, &hdr) != 0) {
  printf("%s: unable to fetch header for raid volume page 0\n",
      ((sc)->sc_dev.dv_xname));
  return (22);
 }
 pagelen = hdr.page_length * 4;
 vpg = malloc(pagelen, 127, 0x0001 | 0x0004 | 0x0008);
 if (vpg == ((void *)0)) {
  printf("%s: unable to allocate space for raid "
      "volume page 0\n", ((sc)->sc_dev.dv_xname));
  return (12);
 }
 if (mpii_req_cfg_page(sc, (1<<28) | volh, 0,
     &hdr, 1, vpg, pagelen) != 0) {
  printf("%s: unable to fetch raid volume page 0\n",
      ((sc)->sc_dev.dv_xname));
  free(vpg, 127, pagelen);
  return (22);
 }
 switch (vpg->volume_state) {
 case (0x03):
 case (0x05):
  bv->bv_status = 0x00;
  break;
 case (0x04):
  if (((__mswap32(&vpg->volume_status)) & ((1<<16)))) {
   bv->bv_status = 0x05;
   bv->bv_percent = dev->percent;
  } else
   bv->bv_status = 0x02;
  break;
 case (0x01):
  bv->bv_status = 0x01;
  break;
 case (0x02):
  bv->bv_status = 0x03;
  break;
 case (0x00):
 default:
  bv->bv_status = 0xff;
  break;
 }
 switch (vpg->volume_type) {
 case (0x00):
  bv->bv_level = 0;
  break;
 case (0x02):
  bv->bv_level = 1;
  break;
 case (0x01):
 case (0x05):
  bv->bv_level = 10;
  break;
 default:
  bv->bv_level = -1;
 }
 if ((rv = mpii_bio_hs(sc, ((void *)0), 0, vpg->hot_spare_pool, &hcnt)) != 0) {
  free(vpg, 127, pagelen);
  return (rv);
 }
 bv->bv_nodisk = vpg->num_phys_disks + hcnt;
 bv->bv_size = (__uint64_t)(__builtin_constant_p(vpg->max_lba) ? (__uint64_t)((((__uint64_t)(vpg->max_lba) & 0xff) << 56) | ((__uint64_t)(vpg->max_lba) & 0xff00ULL) << 40 | ((__uint64_t)(vpg->max_lba) & 0xff0000ULL) << 24 | ((__uint64_t)(vpg->max_lba) & 0xff000000ULL) << 8 | ((__uint64_t)(vpg->max_lba) & 0xff00000000ULL) >> 8 | ((__uint64_t)(vpg->max_lba) & 0xff0000000000ULL) >> 24 | ((__uint64_t)(vpg->max_lba) & 0xff000000000000ULL) >> 40 | ((__uint64_t)(vpg->max_lba) & 0xff00000000000000ULL) >> 56) : __swap64md(vpg->max_lba)) * __mswap16(&vpg->block_size);
 lnk = scsi_get_link(sc->sc_scsibus, dev->slot, 0);
 if (lnk != ((void *)0)) {
  scdev = lnk->device_softc;
  strlcpy(bv->bv_dev, scdev->dv_xname, sizeof(bv->bv_dev));
 }
 free(vpg, 127, pagelen);
 return (0);
}
int
mpii_ioctl_disk(struct mpii_softc *sc, struct bioc_disk *bd)
{
 struct mpii_cfg_raid_vol_pg0 *vpg;
 struct mpii_cfg_raid_vol_pg0_physdisk *pd;
 struct mpii_cfg_hdr hdr;
 struct mpii_device *dev;
 size_t pagelen;
 u_int16_t volh;
 u_int8_t dn;
 ;
 if ((dev = mpii_find_vol(sc, bd->bd_volid)) == ((void *)0))
  return (19);
 volh = dev->dev_handle;
 if (mpii_req_cfg_header(sc, (0x08), 0,
     (1<<28) | volh, 0, &hdr) != 0) {
  printf("%s: unable to fetch header for raid volume page 0\n",
      ((sc)->sc_dev.dv_xname));
  return (22);
 }
 pagelen = hdr.page_length * 4;
 vpg = malloc(pagelen, 127, 0x0001 | 0x0004 | 0x0008);
 if (vpg == ((void *)0)) {
  printf("%s: unable to allocate space for raid "
      "volume page 0\n", ((sc)->sc_dev.dv_xname));
  return (12);
 }
 if (mpii_req_cfg_page(sc, (1<<28) | volh, 0,
     &hdr, 1, vpg, pagelen) != 0) {
  printf("%s: unable to fetch raid volume page 0\n",
      ((sc)->sc_dev.dv_xname));
  free(vpg, 127, pagelen);
  return (22);
 }
 if (bd->bd_diskid >= vpg->num_phys_disks) {
  int nvdsk = vpg->num_phys_disks;
  int hsmap = vpg->hot_spare_pool;
  free(vpg, 127, pagelen);
  return (mpii_bio_hs(sc, bd, nvdsk, hsmap, ((void *)0)));
 }
 pd = (struct mpii_cfg_raid_vol_pg0_physdisk *)(vpg + 1) +
     bd->bd_diskid;
 dn = pd->phys_disk_num;
 free(vpg, 127, pagelen);
 return (mpii_bio_disk(sc, bd, dn));
}
int
mpii_bio_hs(struct mpii_softc *sc, struct bioc_disk *bd, int nvdsk,
     int hsmap, int *hscnt)
{
 struct mpii_cfg_raid_config_pg0 *cpg;
 struct mpii_raid_config_element *el;
 struct mpii_ecfg_hdr ehdr;
 size_t pagelen;
 int i, nhs = 0;
 if (bd)
  ;
 else
  ;
 if (mpii_req_cfg_header(sc, (0x16),
     0, (2<<28), (1<<0),
     &ehdr) != 0) {
  printf("%s: unable to fetch header for raid config page 0\n",
      ((sc)->sc_dev.dv_xname));
  return (22);
 }
 pagelen = __mswap16(&ehdr.ext_page_length) * 4;
 cpg = malloc(pagelen, 127, 0x0001 | 0x0004 | 0x0008);
 if (cpg == ((void *)0)) {
  printf("%s: unable to allocate space for raid config page 0\n",
      ((sc)->sc_dev.dv_xname));
  return (12);
 }
 if (mpii_req_cfg_page(sc, (2<<28),
     (1<<0), &ehdr, 1, cpg, pagelen) != 0) {
  printf("%s: unable to fetch raid config page 0\n",
      ((sc)->sc_dev.dv_xname));
  free(cpg, 127, pagelen);
  return (22);
 }
 el = (struct mpii_raid_config_element *)(cpg + 1);
 for (i = 0; i < cpg->num_elements; i++, el++) {
  if (((__mswap16(&el->element_flags)) & ((0x2))) &&
      el->hot_spare_pool == hsmap) {
   if (bd != ((void *)0) && bd->bd_diskid == nhs + nvdsk) {
    u_int8_t dn = el->phys_disk_num;
    free(cpg, 127, pagelen);
    return (mpii_bio_disk(sc, bd, dn));
   }
   nhs++;
  }
 }
 if (hscnt)
  *hscnt = nhs;
 free(cpg, 127, pagelen);
 return (0);
}
int
mpii_bio_disk(struct mpii_softc *sc, struct bioc_disk *bd, u_int8_t dn)
{
 struct mpii_cfg_raid_physdisk_pg0 *ppg;
 struct mpii_cfg_hdr hdr;
 struct mpii_device *dev;
 int len;
 ;
 ppg = malloc(sizeof(*ppg), 127, 0x0001 | 0x0004 | 0x0008);
 if (ppg == ((void *)0)) {
  printf("%s: unable to allocate space for raid physical disk "
      "page 0\n", ((sc)->sc_dev.dv_xname));
  return (12);
 }
 hdr.page_version = 0;
 hdr.page_length = sizeof(*ppg) / 4;
 hdr.page_number = 0;
 hdr.page_type = (0x0a);
 if (mpii_req_cfg_page(sc, (1<<28) | dn, 0,
     &hdr, 1, ppg, sizeof(*ppg)) != 0) {
  printf("%s: unable to fetch raid drive page 0\n",
      ((sc)->sc_dev.dv_xname));
  free(ppg, 127, sizeof(*ppg));
  return (22);
 }
 bd->bd_target = ppg->phys_disk_num;
 if ((dev = mpii_find_dev(sc, __mswap16(&ppg->dev_handle))) == ((void *)0)) {
  bd->bd_status = 0xff;
  free(ppg, 127, sizeof(*ppg));
  return (0);
 }
 switch (ppg->phys_disk_state) {
 case (0x03):
 case (0x07):
  bd->bd_status = 0x00;
  break;
 case (0x02):
  if (ppg->offline_reason ==
      (0x03) ||
      ppg->offline_reason ==
      (0x06))
   bd->bd_status = 0x02;
  else
   bd->bd_status = 0x01;
  break;
 case (0x05):
  bd->bd_status = 0x02;
  break;
 case (0x06):
  bd->bd_status = 0x03;
  break;
 case (0x04):
  bd->bd_status = 0x04;
  break;
 case (0x00):
  bd->bd_status = 0x05;
  break;
 case (0x01):
 default:
  bd->bd_status = 0xff;
  break;
 }
 bd->bd_size = (__uint64_t)(__builtin_constant_p(ppg->dev_max_lba) ? (__uint64_t)((((__uint64_t)(ppg->dev_max_lba) & 0xff) << 56) | ((__uint64_t)(ppg->dev_max_lba) & 0xff00ULL) << 40 | ((__uint64_t)(ppg->dev_max_lba) & 0xff0000ULL) << 24 | ((__uint64_t)(ppg->dev_max_lba) & 0xff000000ULL) << 8 | ((__uint64_t)(ppg->dev_max_lba) & 0xff00000000ULL) >> 8 | ((__uint64_t)(ppg->dev_max_lba) & 0xff0000000000ULL) >> 24 | ((__uint64_t)(ppg->dev_max_lba) & 0xff000000000000ULL) >> 40 | ((__uint64_t)(ppg->dev_max_lba) & 0xff00000000000000ULL) >> 56) : __swap64md(ppg->dev_max_lba)) * __mswap16(&ppg->block_size);
 scsi_strvis(bd->bd_vendor, ppg->vendor_id, sizeof(ppg->vendor_id));
 len = strlen(bd->bd_vendor);
 bd->bd_vendor[len] = ' ';
 scsi_strvis(&bd->bd_vendor[len + 1], ppg->product_id,
     sizeof(ppg->product_id));
 scsi_strvis(bd->bd_serial, ppg->serial, sizeof(ppg->serial));
 free(ppg, 127, sizeof(*ppg));
 return (0);
}
struct mpii_device *
mpii_find_vol(struct mpii_softc *sc, int volid)
{
 struct mpii_device *dev = ((void *)0);
 if (sc->sc_vd_id_low + volid >= sc->sc_max_devices)
  return (((void *)0));
 dev = sc->sc_devs[sc->sc_vd_id_low + volid];
 if (dev && ((dev->flags) & ((0x0010))))
  return (dev);
 return (((void *)0));
}
int
mpii_bio_volstate(struct mpii_softc *sc, struct bioc_vol *bv)
{
 struct mpii_cfg_raid_vol_pg0 *vpg;
 struct mpii_cfg_hdr hdr;
 struct mpii_device *dev = ((void *)0);
 size_t pagelen;
 u_int16_t volh;
 if ((dev = mpii_find_vol(sc, bv->bv_volid)) == ((void *)0))
  return (19);
 volh = dev->dev_handle;
 if (mpii_req_cfg_header(sc, (0x08), 0,
     (1<<28) | volh, (1<<1), &hdr) != 0) {
  ;
  return (22);
 }
 pagelen = hdr.page_length * 4;
 vpg = malloc(pagelen, 127, 0x0002 | 0x0008);
 if (vpg == ((void *)0)) {
  ;
  return (12);
 }
 if (mpii_req_cfg_page(sc, (1<<28) | volh,
     (1<<1), &hdr, 1, vpg, pagelen) != 0) {
  ;
  free(vpg, 127, pagelen);
  return (22);
 }
 switch (vpg->volume_state) {
 case (0x03):
 case (0x05):
  bv->bv_status = 0x00;
  break;
 case (0x04):
  if (((__mswap32(&vpg->volume_status)) & ((1<<16))))
   bv->bv_status = 0x05;
  else
   bv->bv_status = 0x02;
  break;
 case (0x01):
  bv->bv_status = 0x01;
  break;
 case (0x02):
  bv->bv_status = 0x03;
  break;
 case (0x00):
 default:
  bv->bv_status = 0xff;
  break;
 }
 free(vpg, 127, pagelen);
 return (0);
}
int
mpii_create_sensors(struct mpii_softc *sc)
{
 struct scsibus_softc *ssc = sc->sc_scsibus;
 struct device *dev;
 struct scsi_link *link;
 int i;
 sc->sc_sensors = mallocarray(sc->sc_vd_count, sizeof(struct ksensor),
     2, 0x0002 | 0x0008);
 if (sc->sc_sensors == ((void *)0))
  return (1);
 sc->sc_nsensors = sc->sc_vd_count;
 strlcpy(sc->sc_sensordev.xname, ((sc)->sc_dev.dv_xname),
     sizeof(sc->sc_sensordev.xname));
 for (i = 0; i < sc->sc_vd_count; i++) {
  link = scsi_get_link(ssc, i + sc->sc_vd_id_low, 0);
  if (link == ((void *)0))
   goto bad;
  dev = link->device_softc;
  sc->sc_sensors[i].type = SENSOR_DRIVE;
  sc->sc_sensors[i].status = SENSOR_S_UNKNOWN;
  strlcpy(sc->sc_sensors[i].desc, dev->dv_xname,
      sizeof(sc->sc_sensors[i].desc));
  sensor_attach(&sc->sc_sensordev, &sc->sc_sensors[i]);
 }
 if (sensor_task_register(sc, mpii_refresh_sensors, 10) == ((void *)0))
  goto bad;
 sensordev_install(&sc->sc_sensordev);
 return (0);
bad:
 free(sc->sc_sensors, 2, 0);
 return (1);
}
void
mpii_refresh_sensors(void *arg)
{
 struct mpii_softc *sc = arg;
 struct bioc_vol bv;
 int i;
 for (i = 0; i < sc->sc_nsensors; i++) {
  __builtin_memset((&bv), (0), (sizeof(bv)));
  bv.bv_volid = i;
  if (mpii_bio_volstate(sc, &bv))
   return;
  switch(bv.bv_status) {
  case 0x01:
   sc->sc_sensors[i].value = 9;
   sc->sc_sensors[i].status = SENSOR_S_CRIT;
   break;
  case 0x02:
   sc->sc_sensors[i].value = 10;
   sc->sc_sensors[i].status = SENSOR_S_WARN;
   break;
  case 0x05:
   sc->sc_sensors[i].value = 7;
   sc->sc_sensors[i].status = SENSOR_S_WARN;
   break;
  case 0x00:
   sc->sc_sensors[i].value = 4;
   sc->sc_sensors[i].status = SENSOR_S_OK;
   break;
  case 0xff:
  default:
   sc->sc_sensors[i].value = 0;
   sc->sc_sensors[i].status = SENSOR_S_UNKNOWN;
  }
 }
}
