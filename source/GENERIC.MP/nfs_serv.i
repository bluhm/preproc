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
struct nameidata {
 const char *ni_dirp;
 int ni_dirfd;
 enum uio_seg ni_segflg;
 struct vnode *ni_startdir;
 struct vnode *ni_rootdir;
 uint64_t ni_pledge;
 struct vnode *ni_vp;
 struct vnode *ni_dvp;
 size_t ni_pathlen;
 char *ni_next;
 u_long ni_loopcnt;
 struct componentname {
  u_long cn_nameiop;
  u_long cn_flags;
  struct proc *cn_proc;
  struct ucred *cn_cred;
  char *cn_pnbuf;
  char *cn_nameptr;
  long cn_namelen;
  long cn_consume;
 } ni_cnd;
};
void ndinitat(struct nameidata *ndp, u_long op, u_long flags,
    enum uio_seg segflg, int dirfd, const char *namep, struct proc *p);
struct namecache {
 struct { struct namecache *tqe_next; struct namecache **tqe_prev; } nc_lru;
 struct { struct namecache *tqe_next; struct namecache **tqe_prev; } nc_neg;
 struct rb_entry n_rbcache;
 struct { struct namecache *tqe_next; struct namecache **tqe_prev; } nc_me;
 struct vnode *nc_dvp;
 u_long nc_dvpid;
 struct vnode *nc_vp;
 u_long nc_vpid;
 char nc_nlen;
 char nc_name[31];
};
struct namecache_rb_cache;
int namei(struct nameidata *ndp);
int vfs_lookup(struct nameidata *ndp);
int vfs_relookup(struct vnode *dvp, struct vnode **vpp,
        struct componentname *cnp);
void cache_tree_init(struct namecache_rb_cache *);
void cache_purge(struct vnode *);
int cache_lookup(struct vnode *, struct vnode **, struct componentname *);
void cache_enter(struct vnode *, struct vnode *, struct componentname *);
int cache_revlookup(struct vnode *, struct vnode **, char **, char *);
void nchinit(void);
struct mount;
void cache_purgevfs(struct mount *);
extern struct pool namei_pool;
struct nchstats {
 u_int64_t ncs_goodhits;
 u_int64_t ncs_neghits;
 u_int64_t ncs_badhits;
 u_int64_t ncs_falsehits;
 u_int64_t ncs_miss;
 u_int64_t ncs_long;
 u_int64_t ncs_pass2;
 u_int64_t ncs_2passes;
 u_int64_t ncs_revhits;
 u_int64_t ncs_revmiss;
 u_int64_t ncs_dothits;
 u_int64_t ncs_dotdothits;
};
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

enum vtype { VNON, VREG, VDIR, VBLK, VCHR, VLNK, VSOCK, VFIFO, VBAD };
enum vtagtype {
 VT_NON, VT_UFS, VT_NFS, VT_MFS, VT_MSDOSFS,
 VT_PORTAL, VT_PROCFS, VT_AFS, VT_ISOFS, VT_ADOSFS,
 VT_EXT2FS, VT_VFS, VT_NTFS, VT_UDF, VT_FUSEFS, VT_TMPFS,
};
struct buflists { struct buf *lh_first; };
struct buf_rb_bufs { struct rb_tree rbh_root; };
struct namecache;
struct namecache_rb_cache { struct rb_tree rbh_root; };
struct uvm_vnode;
struct vnode {
 struct uvm_vnode *v_uvm;
 struct vops *v_op;
 enum vtype v_type;
 enum vtagtype v_tag;
 u_int v_flag;
 u_int v_usecount;
 u_int v_writecount;
 u_int v_bioflag;
 u_int v_holdcnt;
 u_int v_id;
 u_int v_inflight;
 struct mount *v_mount;
 struct { struct vnode *tqe_next; struct vnode **tqe_prev; } v_freelist;
 struct { struct vnode *le_next; struct vnode **le_prev; } v_mntvnodes;
 struct buf_rb_bufs v_bufs_tree;
 struct buflists v_cleanblkhd;
 struct buflists v_dirtyblkhd;
 u_int v_numoutput;
 struct { struct vnode *le_next; struct vnode **le_prev; } v_synclist;
 union {
  struct mount *vu_mountedhere;
  struct socket *vu_socket;
  struct specinfo *vu_specinfo;
  struct fifoinfo *vu_fifoinfo;
 } v_un;
 struct namecache_rb_cache v_nc_tree;
 struct { struct namecache *tqh_first; struct namecache **tqh_last; } v_cache_dst;
 void *v_data;
 struct selinfo v_selectinfo;
};
struct vattr {
 enum vtype va_type;
 mode_t va_mode;
 nlink_t va_nlink;
 uid_t va_uid;
 gid_t va_gid;
 long va_fsid;
 u_quad_t va_fileid;
 u_quad_t va_size;
 long va_blocksize;
 struct timespec va_atime;
 struct timespec va_mtime;
 struct timespec va_ctime;
 u_long va_gen;
 u_long va_flags;
 dev_t va_rdev;
 u_quad_t va_bytes;
 u_quad_t va_filerev;
 u_int va_vaflags;
 long va_spare;
};
extern const struct rb_type *const buf_rb_bufs_RBT_TYPE; __attribute__((__unused__)) static inline void buf_rb_bufs_RBT_INIT(struct buf_rb_bufs *head) { _rb_init(&head->rbh_root); } __attribute__((__unused__)) static inline struct buf * buf_rb_bufs_RBT_INSERT(struct buf_rb_bufs *head, struct buf *elm) { return _rb_insert(buf_rb_bufs_RBT_TYPE, &head->rbh_root, elm); } __attribute__((__unused__)) static inline struct buf * buf_rb_bufs_RBT_REMOVE(struct buf_rb_bufs *head, struct buf *elm) { return _rb_remove(buf_rb_bufs_RBT_TYPE, &head->rbh_root, elm); } __attribute__((__unused__)) static inline struct buf * buf_rb_bufs_RBT_FIND(struct buf_rb_bufs *head, const struct buf *key) { return _rb_find(buf_rb_bufs_RBT_TYPE, &head->rbh_root, key); } __attribute__((__unused__)) static inline struct buf * buf_rb_bufs_RBT_NFIND(struct buf_rb_bufs *head, const struct buf *key) { return _rb_nfind(buf_rb_bufs_RBT_TYPE, &head->rbh_root, key); } __attribute__((__unused__)) static inline struct buf * buf_rb_bufs_RBT_ROOT(struct buf_rb_bufs *head) { return _rb_root(buf_rb_bufs_RBT_TYPE, &head->rbh_root); } __attribute__((__unused__)) static inline int buf_rb_bufs_RBT_EMPTY(struct buf_rb_bufs *head) { return _rb_empty(&head->rbh_root); } __attribute__((__unused__)) static inline struct buf * buf_rb_bufs_RBT_MIN(struct buf_rb_bufs *head) { return _rb_min(buf_rb_bufs_RBT_TYPE, &head->rbh_root); } __attribute__((__unused__)) static inline struct buf * buf_rb_bufs_RBT_MAX(struct buf_rb_bufs *head) { return _rb_max(buf_rb_bufs_RBT_TYPE, &head->rbh_root); } __attribute__((__unused__)) static inline struct buf * buf_rb_bufs_RBT_NEXT(struct buf *elm) { return _rb_next(buf_rb_bufs_RBT_TYPE, elm); } __attribute__((__unused__)) static inline struct buf * buf_rb_bufs_RBT_PREV(struct buf *elm) { return _rb_prev(buf_rb_bufs_RBT_TYPE, elm); } __attribute__((__unused__)) static inline struct buf * buf_rb_bufs_RBT_LEFT(struct buf *elm) { return _rb_left(buf_rb_bufs_RBT_TYPE, elm); } __attribute__((__unused__)) static inline struct buf * buf_rb_bufs_RBT_RIGHT(struct buf *elm) { return _rb_right(buf_rb_bufs_RBT_TYPE, elm); } __attribute__((__unused__)) static inline struct buf * buf_rb_bufs_RBT_PARENT(struct buf *elm) { return _rb_parent(buf_rb_bufs_RBT_TYPE, elm); } __attribute__((__unused__)) static inline void buf_rb_bufs_RBT_SET_LEFT(struct buf *elm, struct buf *left) { return _rb_set_left(buf_rb_bufs_RBT_TYPE, elm, left); } __attribute__((__unused__)) static inline void buf_rb_bufs_RBT_SET_RIGHT(struct buf *elm, struct buf *right) { return _rb_set_right(buf_rb_bufs_RBT_TYPE, elm, right); } __attribute__((__unused__)) static inline void buf_rb_bufs_RBT_SET_PARENT(struct buf *elm, struct buf *parent) { return _rb_set_parent(buf_rb_bufs_RBT_TYPE, elm, parent); } __attribute__((__unused__)) static inline void buf_rb_bufs_RBT_POISON(struct buf *elm, unsigned long poison) { return _rb_poison(buf_rb_bufs_RBT_TYPE, elm, poison); } __attribute__((__unused__)) static inline int buf_rb_bufs_RBT_CHECK(struct buf *elm, unsigned long poison) { return _rb_check(buf_rb_bufs_RBT_TYPE, elm, poison); };
extern enum vtype iftovt_tab[];
extern int vttoif_tab[];
struct freelst { struct vnode *tqh_first; struct vnode **tqh_last; };
extern struct freelst vnode_hold_list;
extern struct freelst vnode_free_list;
extern struct vnode *rootvnode;
extern int initialvnodes;
extern int maxvnodes;
extern int syncdelay;
extern int rushjob;
extern void vhold(struct vnode *);
extern void vdrop(struct vnode *);
struct vops {
 int (*vop_lock)(void *);
 int (*vop_unlock)(void *);
 int (*vop_islocked)(void *);
 int (*vop_abortop)(void *);
 int (*vop_access)(void *);
 int (*vop_advlock)(void *);
 int (*vop_bmap)(void *);
 int (*vop_bwrite)(void *);
 int (*vop_close)(void *);
 int (*vop_create)(void *);
 int (*vop_fsync)(void *);
 int (*vop_getattr)(void *);
 int (*vop_inactive)(void *);
 int (*vop_ioctl)(void *);
 int (*vop_link)(void *);
 int (*vop_lookup)(void *);
 int (*vop_mknod)(void *);
 int (*vop_open)(void *);
 int (*vop_pathconf)(void *);
 int (*vop_poll)(void *);
 int (*vop_print)(void *);
 int (*vop_read)(void *);
 int (*vop_readdir)(void *);
 int (*vop_readlink)(void *);
 int (*vop_reclaim)(void *);
 int (*vop_remove)(void *);
 int (*vop_rename)(void *);
 int (*vop_revoke)(void *);
 int (*vop_mkdir)(void *);
 int (*vop_rmdir)(void *);
 int (*vop_setattr)(void *);
 int (*vop_strategy)(void *);
 int (*vop_symlink)(void *);
 int (*vop_write)(void *);
 int (*vop_kqfilter)(void *);
};
extern struct vops dead_vops;
extern struct vops spec_vops;
struct vop_generic_args {
 void *a_garbage;
};
struct vop_islocked_args {
 struct vnode *a_vp;
};
int VOP_ISLOCKED(struct vnode *);
struct vop_lookup_args {
 struct vnode *a_dvp;
 struct vnode **a_vpp;
 struct componentname *a_cnp;
};
int VOP_LOOKUP(struct vnode *, struct vnode **, struct componentname *);
struct vop_create_args {
 struct vnode *a_dvp;
 struct vnode **a_vpp;
 struct componentname *a_cnp;
 struct vattr *a_vap;
};
int VOP_CREATE(struct vnode *, struct vnode **, struct componentname *,
    struct vattr *);
struct vop_mknod_args {
 struct vnode *a_dvp;
 struct vnode **a_vpp;
 struct componentname *a_cnp;
 struct vattr *a_vap;
};
int VOP_MKNOD(struct vnode *, struct vnode **, struct componentname *,
    struct vattr *);
struct vop_open_args {
 struct vnode *a_vp;
 int a_mode;
 struct ucred *a_cred;
 struct proc *a_p;
};
int VOP_OPEN(struct vnode *, int, struct ucred *, struct proc *);
struct vop_close_args {
 struct vnode *a_vp;
 int a_fflag;
 struct ucred *a_cred;
 struct proc *a_p;
};
int VOP_CLOSE(struct vnode *, int, struct ucred *, struct proc *);
struct vop_access_args {
 struct vnode *a_vp;
 int a_mode;
 struct ucred *a_cred;
 struct proc *a_p;
};
int VOP_ACCESS(struct vnode *, int, struct ucred *, struct proc *);
struct vop_getattr_args {
 struct vnode *a_vp;
 struct vattr *a_vap;
 struct ucred *a_cred;
 struct proc *a_p;
};
int VOP_GETATTR(struct vnode *, struct vattr *, struct ucred *, struct proc *);
struct vop_setattr_args {
 struct vnode *a_vp;
 struct vattr *a_vap;
 struct ucred *a_cred;
 struct proc *a_p;
};
int VOP_SETATTR(struct vnode *, struct vattr *, struct ucred *, struct proc *);
struct vop_read_args {
 struct vnode *a_vp;
 struct uio *a_uio;
 int a_ioflag;
 struct ucred *a_cred;
};
int VOP_READ(struct vnode *, struct uio *, int, struct ucred *);
struct vop_write_args {
 struct vnode *a_vp;
 struct uio *a_uio;
 int a_ioflag;
 struct ucred *a_cred;
};
int VOP_WRITE(struct vnode *, struct uio *, int, struct ucred *);
struct vop_ioctl_args {
 struct vnode *a_vp;
 u_long a_command;
 void *a_data;
 int a_fflag;
 struct ucred *a_cred;
 struct proc *a_p;
};
int VOP_IOCTL(struct vnode *, u_long, void *, int, struct ucred *,
    struct proc *);
struct vop_poll_args {
 struct vnode *a_vp;
 int a_fflag;
 int a_events;
 struct proc *a_p;
};
int VOP_POLL(struct vnode *, int, int, struct proc *);
struct vop_kqfilter_args {
 struct vnode *a_vp;
 struct knote *a_kn;
};
int VOP_KQFILTER(struct vnode *, struct knote *);
struct vop_revoke_args {
 struct vnode *a_vp;
 int a_flags;
};
int VOP_REVOKE(struct vnode *, int);
struct vop_fsync_args {
 struct vnode *a_vp;
 struct ucred *a_cred;
 int a_waitfor;
 struct proc *a_p;
};
int VOP_FSYNC(struct vnode *, struct ucred *, int, struct proc *);
struct vop_remove_args {
 struct vnode *a_dvp;
 struct vnode *a_vp;
 struct componentname *a_cnp;
};
int VOP_REMOVE(struct vnode *, struct vnode *, struct componentname *);
struct vop_link_args {
 struct vnode *a_dvp;
 struct vnode *a_vp;
 struct componentname *a_cnp;
};
int VOP_LINK(struct vnode *, struct vnode *, struct componentname *);
struct vop_rename_args {
 struct vnode *a_fdvp;
 struct vnode *a_fvp;
 struct componentname *a_fcnp;
 struct vnode *a_tdvp;
 struct vnode *a_tvp;
 struct componentname *a_tcnp;
};
int VOP_RENAME(struct vnode *, struct vnode *, struct componentname *,
    struct vnode *, struct vnode *, struct componentname *);
struct vop_mkdir_args {
 struct vnode *a_dvp;
 struct vnode **a_vpp;
 struct componentname *a_cnp;
 struct vattr *a_vap;
};
int VOP_MKDIR(struct vnode *, struct vnode **, struct componentname *,
    struct vattr *);
struct vop_rmdir_args {
 struct vnode *a_dvp;
 struct vnode *a_vp;
 struct componentname *a_cnp;
};
int VOP_RMDIR(struct vnode *, struct vnode *, struct componentname *);
struct vop_symlink_args {
 struct vnode *a_dvp;
 struct vnode **a_vpp;
 struct componentname *a_cnp;
 struct vattr *a_vap;
 char *a_target;
};
int VOP_SYMLINK(struct vnode *, struct vnode **, struct componentname *,
    struct vattr *, char *);
struct vop_readdir_args {
 struct vnode *a_vp;
 struct uio *a_uio;
 struct ucred *a_cred;
 int *a_eofflag;
};
int VOP_READDIR(struct vnode *, struct uio *, struct ucred *, int *);
struct vop_readlink_args {
 struct vnode *a_vp;
 struct uio *a_uio;
 struct ucred *a_cred;
};
int VOP_READLINK(struct vnode *, struct uio *, struct ucred *);
struct vop_abortop_args {
 struct vnode *a_dvp;
 struct componentname *a_cnp;
};
int VOP_ABORTOP(struct vnode *, struct componentname *);
struct vop_inactive_args {
 struct vnode *a_vp;
 struct proc *a_p;
};
int VOP_INACTIVE(struct vnode *, struct proc *);
struct vop_reclaim_args {
 struct vnode *a_vp;
 struct proc *a_p;
};
int VOP_RECLAIM(struct vnode *, struct proc *);
struct vop_lock_args {
 struct vnode *a_vp;
 int a_flags;
 struct proc *a_p;
};
int VOP_LOCK(struct vnode *, int, struct proc *);
struct vop_unlock_args {
 struct vnode *a_vp;
 struct proc *a_p;
};
int VOP_UNLOCK(struct vnode *, struct proc *);
struct vop_bmap_args {
 struct vnode *a_vp;
 daddr_t a_bn;
 struct vnode **a_vpp;
 daddr_t *a_bnp;
 int *a_runp;
};
int VOP_BMAP(struct vnode *, daddr_t, struct vnode **, daddr_t *, int *);
struct vop_print_args {
 struct vnode *a_vp;
};
int VOP_PRINT(struct vnode *);
struct vop_pathconf_args {
 struct vnode *a_vp;
 int a_name;
 register_t *a_retval;
};
int VOP_PATHCONF(struct vnode *, int, register_t *);
struct vop_advlock_args {
 struct vnode *a_vp;
 void *a_id;
 int a_op;
 struct flock *a_fl;
 int a_flags;
};
int VOP_ADVLOCK(struct vnode *, void *, int, struct flock *, int);
struct vop_strategy_args {
 struct buf *a_bp;
};
int VOP_STRATEGY(struct buf *);
struct vop_bwrite_args {
 struct buf *a_bp;
};
int VOP_BWRITE(struct buf *);
struct file;
struct filedesc;
struct mount;
struct nameidata;
struct proc;
struct stat;
struct statfs;
struct ucred;
struct uio;
struct vattr;
struct vnode;
int bdevvp(dev_t, struct vnode **);
int cdevvp(dev_t, struct vnode **);
struct vnode *checkalias(struct vnode *, dev_t, struct mount *);
int getnewvnode(enum vtagtype, struct mount *, struct vops *,
     struct vnode **);
int vaccess(enum vtype, mode_t, uid_t, gid_t, mode_t, struct ucred *);
void vattr_null(struct vattr *);
void vdevgone(int, int, int, enum vtype);
int vcount(struct vnode *);
int vfinddev(dev_t, enum vtype, struct vnode **);
void vflushbuf(struct vnode *, int);
int vflush(struct mount *, struct vnode *, int);
int vget(struct vnode *, int, struct proc *);
void vgone(struct vnode *);
void vgonel(struct vnode *, struct proc *);
int vinvalbuf(struct vnode *, int, struct ucred *, struct proc *,
     int, int);
void vntblinit(void);
int vwaitforio(struct vnode *, int, char *, int);
void vwakeup(struct vnode *);
void vput(struct vnode *);
int vrecycle(struct vnode *, struct proc *);
int vrele(struct vnode *);
void vref(struct vnode *);
void vprint(char *, struct vnode *);
void copy_statfs_info(struct statfs *, const struct mount *);
int vfs_getcwd_scandir(struct vnode **, struct vnode **, char **, char *,
    struct proc *);
int vfs_getcwd_common(struct vnode *, struct vnode *, char **, char *, int,
    int, struct proc *);
int vfs_getcwd_getcache(struct vnode **, struct vnode **, char **, char *);
int vop_generic_abortop(void *);
int vop_generic_bmap(void *);
int vop_generic_bwrite(void *);
int vop_generic_islocked(void *);
int vop_generic_lock(void *);
int vop_generic_unlock(void *);
int vop_generic_revoke(void *);
int vop_generic_kqfilter(void *);
int vop_generic_lookup(void *);
int vn_isunder(struct vnode *, struct vnode *, struct proc *);
int vn_close(struct vnode *, int, struct ucred *, struct proc *);
int vn_open(struct nameidata *, int, int);
int vn_rdwr(enum uio_rw, struct vnode *, caddr_t, int, off_t,
     enum uio_seg, int, struct ucred *, size_t *, struct proc *);
int vn_stat(struct vnode *, struct stat *, struct proc *);
int vn_statfile(struct file *, struct stat *, struct proc *);
int vn_lock(struct vnode *, int, struct proc *);
int vn_writechk(struct vnode *);
int vn_fsizechk(struct vnode *, struct uio *, int, ssize_t *);
int vn_ioctl(struct file *, u_long, caddr_t, struct proc *);
void vn_marktext(struct vnode *);
void sched_sync(struct proc *);
void vn_initialize_syncerd(void);
void vn_syncer_add_to_worklist(struct vnode *, int);
int vn_isdisk(struct vnode *, int *);
int softdep_fsync(struct vnode *);
int getvnode(struct proc *, int, struct file **);
void uvm_vnp_setsize(struct vnode *, off_t);
void uvm_vnp_sync(struct mount *);
void uvm_vnp_terminate(struct vnode *);
int uvm_vnp_uncache(struct vnode *);
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
struct dirent {
 __ino_t d_fileno;
 __off_t d_off;
 __uint16_t d_reclen;
 __uint8_t d_type;
 __uint8_t d_namlen;
 __uint8_t __d_padding[4];
 char d_name[255 + 1];
};
struct stat {
 mode_t st_mode;
 dev_t st_dev;
 ino_t st_ino;
 nlink_t st_nlink;
 uid_t st_uid;
 gid_t st_gid;
 dev_t st_rdev;
 struct timespec st_atim;
 struct timespec st_mtim;
 struct timespec st_ctim;
 off_t st_size;
 blkcnt_t st_blocks;
 blksize_t st_blksize;
 u_int32_t st_flags;
 u_int32_t st_gen;
 struct timespec __st_birthtim;
};
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
struct __tfork {
 void *tf_tcb;
 pid_t *tf_tid;
 void *tf_stack;
};
struct __kbind {
 void *kb_addr;
 size_t kb_size;
};
struct direct {
 u_int32_t d_ino;
 u_int16_t d_reclen;
 u_int8_t d_type;
 u_int8_t d_namlen;
 char d_name[255 + 1];
};
struct dirtemplate {
 u_int32_t dot_ino;
 int16_t dot_reclen;
 u_int8_t dot_type;
 u_int8_t dot_namlen;
 char dot_name[4];
 u_int32_t dotdot_ino;
 int16_t dotdot_reclen;
 u_int8_t dotdot_type;
 u_int8_t dotdot_namlen;
 char dotdot_name[4];
};
struct odirtemplate {
 u_int32_t dot_ino;
 int16_t dot_reclen;
 u_int16_t dot_namlen;
 char dot_name[4];
 u_int32_t dotdot_ino;
 int16_t dotdot_reclen;
 u_int16_t dotdot_namlen;
 char dotdot_name[4];
};
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
struct nfsd_args {
 int sock;
 caddr_t name;
 int namelen;
};
struct nfsd_srvargs {
 struct nfsd *nsd_nfsd;
 uid_t nsd_uid;
 u_int32_t nsd_haddr;
 struct xucred nsd_cr;
 int nsd_authlen;
 u_char *nsd_authstr;
 int nsd_verflen;
 u_char *nsd_verfstr;
 struct timeval nsd_timestamp;
 u_int32_t nsd_ttl;
};
struct nfsstats {
 uint64_t attrcache_hits;
 uint64_t attrcache_misses;
 uint64_t lookupcache_hits;
 uint64_t lookupcache_misses;
 uint64_t direofcache_hits;
 uint64_t direofcache_misses;
 uint64_t biocache_reads;
 uint64_t read_bios;
 uint64_t read_physios;
 uint64_t biocache_writes;
 uint64_t write_bios;
 uint64_t write_physios;
 uint64_t biocache_readlinks;
 uint64_t readlink_bios;
 uint64_t biocache_readdirs;
 uint64_t readdir_bios;
 uint64_t rpccnt[23];
 uint64_t rpcretries;
 uint64_t srvrpccnt[23];
 uint64_t srvrpc_errs;
 uint64_t srv_errs;
 uint64_t rpcrequests;
 uint64_t rpctimeouts;
 uint64_t rpcunexpected;
 uint64_t rpcinvalid;
 uint64_t srvcache_inproghits;
 uint64_t srvcache_idemdonehits;
 uint64_t srvcache_nonidemdonehits;
 uint64_t srvcache_misses;
 uint64_t forcedsync;
 uint64_t srvnqnfs_leases;
 uint64_t srvnqnfs_maxleases;
 uint64_t srvnqnfs_getleases;
 uint64_t srvvop_writes;
};
extern int nfs_niothreads;
struct uio; struct buf; struct vattr; struct nameidata;
struct nfsreq {
 struct { struct nfsreq *tqe_next; struct nfsreq **tqe_prev; } r_chain;
 struct mbuf *r_mreq;
 struct mbuf *r_mrep;
 struct mbuf *r_md;
 caddr_t r_dpos;
 struct nfsmount *r_nmp;
 struct vnode *r_vp;
 u_int32_t r_xid;
 int r_flags;
 int r_rexmit;
 int r_timer;
 int r_procnum;
 int r_rtt;
 struct proc *r_procp;
};
enum nfs_rto_timers {
 NFS_DEFAULT_TIMER,
 NFS_GETATTR_TIMER,
 NFS_LOOKUP_TIMER,
 NFS_READ_TIMER,
 NFS_WRITE_TIMER,
};
union nethostaddr {
 u_int32_t had_inetaddr;
 struct mbuf *had_nam;
};
struct nfssvc_sock {
 struct { struct nfssvc_sock *tqe_next; struct nfssvc_sock **tqe_prev; } ns_chain;
 struct file *ns_fp;
 struct socket *ns_so;
 struct mbuf *ns_nam;
 struct mbuf *ns_raw;
 struct mbuf *ns_rawend;
 struct mbuf *ns_rec;
 struct mbuf *ns_recend;
 struct mbuf *ns_frag;
 int ns_flag;
 int ns_solock;
 int ns_cc;
 int ns_reclen;
 u_int32_t ns_sref;
};
struct nfsd {
 struct { struct nfsd *tqe_next; struct nfsd **tqe_prev; } nfsd_chain;
 int nfsd_flag;
 struct nfssvc_sock *nfsd_slp;
 struct proc *nfsd_procp;
 struct nfsrv_descript *nfsd_nd;
};
struct nfsrv_descript {
 struct mbuf *nd_mrep;
 struct mbuf *nd_md;
 struct mbuf *nd_nam;
 struct mbuf *nd_nam2;
 caddr_t nd_dpos;
 unsigned int nd_procnum;
 int nd_flag;
 int nd_repstat;
 u_int32_t nd_retxid;
 struct ucred nd_cr;
};
extern struct pool nfsreqpl;
extern struct pool nfs_node_pool;
extern struct nfsdhead { struct nfsd *tqh_first; struct nfsd **tqh_last; } nfsd_head;
extern int nfsd_head_flag;
struct nfsv2_time;
void txdr_nfsv2time(const struct timespec *_from, struct nfsv2_time *_to);
struct nfsm_info {
 struct mbuf *nmi_mreq;
 struct mbuf *nmi_mrep;
 struct proc *nmi_procp;
 struct ucred *nmi_cred;
 struct mbuf *nmi_md;
 struct mbuf *nmi_mb;
 caddr_t nmi_dpos;
 int nmi_v3;
};
struct nfsnode;
struct sillyrename;
struct componentname;
struct nfs_diskless;
struct nfsm_info;
int nfs_bioread(struct vnode *, struct uio *, int, struct ucred *);
int nfs_write(void *);
int nfs_vinvalbuf(struct vnode *, int, struct ucred *, struct proc *);
int nfs_asyncio(struct buf *, int readahead);
int nfs_doio(struct buf *, struct proc *);
int nfs_boot_init(struct nfs_diskless *, struct proc *);
void nfs_ninit(struct nfsmount *);
int nfs_nget(struct mount *, nfsfh_t *, int, struct nfsnode **);
int nfs_inactive(void *);
int nfs_reclaim(void *);
int nfs_readlink(void *);
int nfs_readlinkrpc(struct vnode *, struct uio *, struct ucred *);
int nfs_readrpc(struct vnode *, struct uio *);
int nfs_writerpc(struct vnode *, struct uio *, int *, int *);
int nfs_removeit(struct sillyrename *);
int nfs_mmap(void *);
int nfs_blkatoff(void *);
int nfs_writebp(struct buf *, int);
int nfsrv3_access(struct nfsrv_descript *, struct nfssvc_sock *,
         struct proc *, struct mbuf **);
int nfsrv_getattr(struct nfsrv_descript *, struct nfssvc_sock *,
         struct proc *, struct mbuf **);
int nfsrv_setattr(struct nfsrv_descript *, struct nfssvc_sock *,
         struct proc *, struct mbuf **);
int nfsrv_lookup(struct nfsrv_descript *, struct nfssvc_sock *,
        struct proc *, struct mbuf **);
int nfsrv_readlink(struct nfsrv_descript *, struct nfssvc_sock *,
   struct proc *, struct mbuf **);
int nfsrv_read(struct nfsrv_descript *, struct nfssvc_sock *,
      struct proc *, struct mbuf **);
int nfsrv_write(struct nfsrv_descript *, struct nfssvc_sock *,
       struct proc *, struct mbuf **);
int nfsrv_create(struct nfsrv_descript *, struct nfssvc_sock *,
        struct proc *, struct mbuf **);
int nfsrv_mknod(struct nfsrv_descript *, struct nfssvc_sock *,
       struct proc *, struct mbuf **);
int nfsrv_remove(struct nfsrv_descript *, struct nfssvc_sock *,
        struct proc *, struct mbuf **);
int nfsrv_rename(struct nfsrv_descript *, struct nfssvc_sock *,
        struct proc *, struct mbuf **);
int nfsrv_link(struct nfsrv_descript *, struct nfssvc_sock *,
      struct proc *, struct mbuf **);
int nfsrv_symlink(struct nfsrv_descript *, struct nfssvc_sock *,
         struct proc *, struct mbuf **);
int nfsrv_mkdir(struct nfsrv_descript *, struct nfssvc_sock *,
       struct proc *, struct mbuf **);
int nfsrv_rmdir(struct nfsrv_descript *, struct nfssvc_sock *,
       struct proc *, struct mbuf **);
int nfsrv_readdir(struct nfsrv_descript *, struct nfssvc_sock *,
         struct proc *, struct mbuf **);
int nfsrv_readdirplus(struct nfsrv_descript *, struct nfssvc_sock *,
      struct proc *, struct mbuf **);
int nfsrv_commit(struct nfsrv_descript *, struct nfssvc_sock *,
        struct proc *, struct mbuf **);
int nfsrv_statfs(struct nfsrv_descript *, struct nfssvc_sock *,
        struct proc *, struct mbuf **);
int nfsrv_fsinfo(struct nfsrv_descript *, struct nfssvc_sock *,
        struct proc *, struct mbuf **);
int nfsrv_pathconf(struct nfsrv_descript *, struct nfssvc_sock *,
          struct proc *, struct mbuf **);
int nfsrv_null(struct nfsrv_descript *, struct nfssvc_sock *,
      struct proc *, struct mbuf **);
int nfsrv_noop(struct nfsrv_descript *, struct nfssvc_sock *,
      struct proc *, struct mbuf **);
int nfs_connect(struct nfsmount *, struct nfsreq *);
void nfs_disconnect(struct nfsmount *);
int nfs_send(struct socket *, struct mbuf *, struct mbuf *,
    struct nfsreq *);
int nfs_request(struct vnode *, int, struct nfsm_info *);
int nfs_rephead(int, struct nfsrv_descript *, struct nfssvc_sock *, int,
  struct mbuf **, struct mbuf **);
void nfs_timer(void *);
int nfs_sigintr(struct nfsmount *, struct nfsreq *, struct proc *);
int nfs_sndlock(int *, struct nfsreq *);
void nfs_sndunlock(int *);
void nfsrv_rcv(struct socket *, caddr_t, int);
int nfsrv_dorec(struct nfssvc_sock *, struct nfsd *,
       struct nfsrv_descript **);
void nfsrv_wakenfsd(struct nfssvc_sock *);
void nfsrv_initcache(void );
int nfsrv_getcache(struct nfsrv_descript *, struct nfssvc_sock *,
   struct mbuf **);
void nfsrv_updatecache(struct nfsrv_descript *, int, struct mbuf *);
void nfsrv_cleancache(void);
struct mbuf *nfsm_reqhead(int);
void nfsm_rpchead(struct nfsreq *, struct ucred *, int);
void *nfsm_build(struct mbuf **, u_int);
int nfsm_mbuftouio(struct mbuf **, struct uio *, int, caddr_t *);
void nfsm_uiotombuf(struct mbuf **, struct uio *, size_t);
void nfsm_strtombuf(struct mbuf **, void *, size_t);
void nfsm_buftombuf(struct mbuf **, void *, size_t);
int nfsm_disct(struct mbuf **, caddr_t *, int, int, caddr_t *);
int nfs_adv(struct mbuf **, caddr_t *, int, int);
int nfsm_strtmbuf(struct mbuf **, char **, char *, long);
int nfs_vfs_init(struct vfsconf *);
int nfs_attrtimeo(struct nfsnode *);
int nfs_loadattrcache(struct vnode **, struct mbuf **, caddr_t *,
      struct vattr *);
int nfs_getattrcache(struct vnode *, struct vattr *);
int nfs_namei(struct nameidata *, fhandle_t *, int, struct nfssvc_sock *,
     struct mbuf *, struct mbuf **, caddr_t *, struct vnode **,
     struct proc *);
void nfsm_v3attrbuild(struct mbuf **, struct vattr *, int);
void nfsm_adj(struct mbuf *, int, int);
void nfsm_srvwcc(struct nfsrv_descript *, int, struct vattr *, int,
        struct vattr *, struct nfsm_info *);
void nfsm_srvpostop_attr(struct nfsrv_descript *, int, struct vattr *,
        struct nfsm_info *);
void nfsm_srvfattr(struct nfsrv_descript *, struct vattr *,
   struct nfs_fattr *);
int nfsrv_fhtovp(fhandle_t *, int, struct vnode **, struct ucred *,
        struct nfssvc_sock *, struct mbuf *, int *);
int netaddr_match(int, union nethostaddr *, struct mbuf *);
void nfs_clearcommit(struct mount *);
int nfs_in_committed_range(struct vnode *, struct buf *);
int nfs_in_tobecommitted_range(struct vnode *, struct buf *);
void nfs_add_committed_range(struct vnode *, struct buf *);
void nfs_del_committed_range(struct vnode *, struct buf *);
void nfs_add_tobecommitted_range(struct vnode *, struct buf *);
void nfs_del_tobecommitted_range(struct vnode *, struct buf *);
void nfs_merge_commit_ranges(struct vnode *);
int nfsrv_errmap(struct nfsrv_descript *, int);
int nfsm_srvsattr(struct mbuf **, struct vattr *, struct mbuf *, caddr_t *);
void nfsm_fhtom(struct nfsm_info *, struct vnode *, int);
void nfsm_srvfhtom(struct mbuf **, fhandle_t *, int);
int sys_nfssvc(struct proc *, void *, register_t *);
void nfsrv_init(int);
void start_nfsio(void *);
void nfs_getset_niothreads(int);
int nfs_kqfilter(void *);
extern u_int32_t nfs_xdrneg1;
extern u_int32_t nfs_false, nfs_true;
extern enum vtype nv3tov_type[8];
extern struct nfsstats nfsstats;
extern nfstype nfsv2_type[9];
extern nfstype nfsv3_type[9];
int nfsrv_access(struct vnode *, int, struct ucred *, int, struct proc *, int);
int
nfsrv3_access(struct nfsrv_descript *nfsd, struct nfssvc_sock *slp,
    struct proc *procp, struct mbuf **mrq)
{
 struct mbuf *nam = nfsd->nd_nam;
 struct nfsm_info info;
 struct ucred *cred = &nfsd->nd_cr;
 struct vnode *vp;
 nfsfh_t nfh;
 fhandle_t *fhp;
 u_int32_t *tl;
 int32_t t1;
 int error = 0, rdonly, getret;
 char *cp2;
 struct vattr va;
 u_long testmode, nfsmode;
 info.nmi_mreq = ((void *)0);
 info.nmi_mrep = nfsd->nd_mrep;
 info.nmi_md = nfsd->nd_md;
 info.nmi_dpos = nfsd->nd_dpos;
 fhp = &nfh.fh_generic;
 { if (nfsd->nd_flag & 0x08) { { t1 = ((caddr_t)((info.nmi_md)->m_hdr.mh_data)) + info.nmi_md->m_hdr.mh_len - info.nmi_dpos; if (t1 >= (4)) { (tl) = (u_int32_t *)(info.nmi_dpos); info.nmi_dpos += (4); } else if ((t1 = nfsm_disct(&info.nmi_md, &info.nmi_dpos, (4), t1, &cp2)) != 0) { error = t1; m_freem(info.nmi_mrep); goto nfsmout; } else { (tl) = (u_int32_t *)cp2; } }; if (((int)((__uint32_t)((int32_t)(*tl)))) != (sizeof (fhandle_t))) { error = 72; { nfsd->nd_repstat = error; if (error && !(nfsd->nd_flag & 0x08)) (void) nfs_rephead(0, nfsd, slp, error, &info.nmi_mreq, &info.nmi_mb); else (void) nfs_rephead((0), nfsd, slp, error, &info.nmi_mreq, &info.nmi_mb); if (info.nmi_mrep != ((void *)0)) { m_freem(info.nmi_mrep); info.nmi_mrep = ((void *)0); } *mrq = info.nmi_mreq; if (error && (!(nfsd->nd_flag & 0x08) || error == 72)) return(0); }; } } { t1 = ((caddr_t)((info.nmi_md)->m_hdr.mh_data)) + info.nmi_md->m_hdr.mh_len - info.nmi_dpos; if (t1 >= ((sizeof (fhandle_t)))) { (tl) = (u_int32_t *)(info.nmi_dpos); info.nmi_dpos += ((sizeof (fhandle_t))); } else if ((t1 = nfsm_disct(&info.nmi_md, &info.nmi_dpos, ((sizeof (fhandle_t))), t1, &cp2)) != 0) { error = t1; m_freem(info.nmi_mrep); goto nfsmout; } else { (tl) = (u_int32_t *)cp2; } }; __builtin_bcopy((tl), ((fhp)), ((sizeof (fhandle_t)))); if ((nfsd->nd_flag & 0x08) == 0) { t1 = ((caddr_t)((info.nmi_md)->m_hdr.mh_data)) + info.nmi_md->m_hdr.mh_len - info.nmi_dpos; if (t1 >= (32 - (sizeof (fhandle_t)))) { info.nmi_dpos += (32 - (sizeof (fhandle_t))); } else if ((t1 = nfs_adv(&info.nmi_md, &info.nmi_dpos, (32 - (sizeof (fhandle_t))), t1)) != 0) { error = t1; m_freem(info.nmi_mrep); goto nfsmout; } }; };
 { t1 = ((caddr_t)((info.nmi_md)->m_hdr.mh_data)) + info.nmi_md->m_hdr.mh_len - info.nmi_dpos; if (t1 >= (4)) { (tl) = (u_int32_t *)(info.nmi_dpos); info.nmi_dpos += (4); } else if ((t1 = nfsm_disct(&info.nmi_md, &info.nmi_dpos, (4), t1, &cp2)) != 0) { error = t1; m_freem(info.nmi_mrep); goto nfsmout; } else { (tl) = (u_int32_t *)cp2; } };
 error = nfsrv_fhtovp(fhp, 1, &vp, cred, slp, nam, &rdonly);
 if (error) {
  { nfsd->nd_repstat = error; if (error && !(nfsd->nd_flag & 0x08)) (void) nfs_rephead(0, nfsd, slp, error, &info.nmi_mreq, &info.nmi_mb); else (void) nfs_rephead((4), nfsd, slp, error, &info.nmi_mreq, &info.nmi_mb); if (info.nmi_mrep != ((void *)0)) { m_freem(info.nmi_mrep); info.nmi_mrep = ((void *)0); } *mrq = info.nmi_mreq; if (error && (!(nfsd->nd_flag & 0x08) || error == 72)) return(0); };
  nfsm_srvpostop_attr(nfsd, 1, ((void *)0), &info);
  error = 0;
  goto nfsmout;
 }
 nfsmode = ((u_int32_t)((__uint32_t)((int32_t)(*tl))));
 if ((nfsmode & 0x01) &&
  nfsrv_access(vp, 00400, cred, rdonly, procp, 0))
  nfsmode &= ~0x01;
 if (vp->v_type == VDIR)
  testmode = (0x04 | 0x08 |
   0x10);
 else
  testmode = (0x04 | 0x08);
 if ((nfsmode & testmode) &&
  nfsrv_access(vp, 00200, cred, rdonly, procp, 0))
  nfsmode &= ~testmode;
 if (vp->v_type == VDIR)
  testmode = 0x02;
 else
  testmode = 0x20;
 if ((nfsmode & testmode) &&
  nfsrv_access(vp, 00100, cred, rdonly, procp, 0))
  nfsmode &= ~testmode;
 getret = VOP_GETATTR(vp, &va, cred, procp);
 vput(vp);
 { nfsd->nd_repstat = error; if (error && !(nfsd->nd_flag & 0x08)) (void) nfs_rephead(0, nfsd, slp, error, &info.nmi_mreq, &info.nmi_mb); else (void) nfs_rephead((((1) ? (84 + 4) : 0) + 4), nfsd, slp, error, &info.nmi_mreq, &info.nmi_mb); if (info.nmi_mrep != ((void *)0)) { m_freem(info.nmi_mrep); info.nmi_mrep = ((void *)0); } *mrq = info.nmi_mreq; if (error && (!(nfsd->nd_flag & 0x08) || error == 72)) return(0); };
 nfsm_srvpostop_attr(nfsd, getret, &va, &info);
 tl = nfsm_build(&info.nmi_mb, 4);
 *tl = (((__uint32_t)((int32_t)(nfsmode))));
nfsmout:
 return(error);
}
int
nfsrv_getattr(struct nfsrv_descript *nfsd, struct nfssvc_sock *slp,
    struct proc *procp, struct mbuf **mrq)
{
 struct mbuf *nam = nfsd->nd_nam;
 struct nfsm_info info;
 struct ucred *cred = &nfsd->nd_cr;
 struct nfs_fattr *fp;
 struct vattr va;
 struct vnode *vp;
 nfsfh_t nfh;
 fhandle_t *fhp;
 u_int32_t *tl;
 int32_t t1;
 int error = 0, rdonly;
 char *cp2;
 info.nmi_mreq = ((void *)0);
 info.nmi_mrep = nfsd->nd_mrep;
 info.nmi_md = nfsd->nd_md;
 info.nmi_dpos = nfsd->nd_dpos;
 info.nmi_v3 = (nfsd->nd_flag & 0x08);
 fhp = &nfh.fh_generic;
 { if (nfsd->nd_flag & 0x08) { { t1 = ((caddr_t)((info.nmi_md)->m_hdr.mh_data)) + info.nmi_md->m_hdr.mh_len - info.nmi_dpos; if (t1 >= (4)) { (tl) = (u_int32_t *)(info.nmi_dpos); info.nmi_dpos += (4); } else if ((t1 = nfsm_disct(&info.nmi_md, &info.nmi_dpos, (4), t1, &cp2)) != 0) { error = t1; m_freem(info.nmi_mrep); goto nfsmout; } else { (tl) = (u_int32_t *)cp2; } }; if (((int)((__uint32_t)((int32_t)(*tl)))) != (sizeof (fhandle_t))) { error = 72; { nfsd->nd_repstat = error; if (error && !(nfsd->nd_flag & 0x08)) (void) nfs_rephead(0, nfsd, slp, error, &info.nmi_mreq, &info.nmi_mb); else (void) nfs_rephead((0), nfsd, slp, error, &info.nmi_mreq, &info.nmi_mb); if (info.nmi_mrep != ((void *)0)) { m_freem(info.nmi_mrep); info.nmi_mrep = ((void *)0); } *mrq = info.nmi_mreq; if (error && (!(nfsd->nd_flag & 0x08) || error == 72)) return(0); }; } } { t1 = ((caddr_t)((info.nmi_md)->m_hdr.mh_data)) + info.nmi_md->m_hdr.mh_len - info.nmi_dpos; if (t1 >= ((sizeof (fhandle_t)))) { (tl) = (u_int32_t *)(info.nmi_dpos); info.nmi_dpos += ((sizeof (fhandle_t))); } else if ((t1 = nfsm_disct(&info.nmi_md, &info.nmi_dpos, ((sizeof (fhandle_t))), t1, &cp2)) != 0) { error = t1; m_freem(info.nmi_mrep); goto nfsmout; } else { (tl) = (u_int32_t *)cp2; } }; __builtin_bcopy((tl), ((fhp)), ((sizeof (fhandle_t)))); if ((nfsd->nd_flag & 0x08) == 0) { t1 = ((caddr_t)((info.nmi_md)->m_hdr.mh_data)) + info.nmi_md->m_hdr.mh_len - info.nmi_dpos; if (t1 >= (32 - (sizeof (fhandle_t)))) { info.nmi_dpos += (32 - (sizeof (fhandle_t))); } else if ((t1 = nfs_adv(&info.nmi_md, &info.nmi_dpos, (32 - (sizeof (fhandle_t))), t1)) != 0) { error = t1; m_freem(info.nmi_mrep); goto nfsmout; } }; };
 error = nfsrv_fhtovp(fhp, 1, &vp, cred, slp, nam, &rdonly);
 if (error) {
  { nfsd->nd_repstat = error; if (error && !(nfsd->nd_flag & 0x08)) (void) nfs_rephead(0, nfsd, slp, error, &info.nmi_mreq, &info.nmi_mb); else (void) nfs_rephead((0), nfsd, slp, error, &info.nmi_mreq, &info.nmi_mb); if (info.nmi_mrep != ((void *)0)) { m_freem(info.nmi_mrep); info.nmi_mrep = ((void *)0); } *mrq = info.nmi_mreq; if (error && (!(nfsd->nd_flag & 0x08) || error == 72)) return(0); };
  error = 0;
  goto nfsmout;
 }
 error = VOP_GETATTR(vp, &va, cred, procp);
 vput(vp);
 { nfsd->nd_repstat = error; if (error && !(nfsd->nd_flag & 0x08)) (void) nfs_rephead(0, nfsd, slp, error, &info.nmi_mreq, &info.nmi_mb); else (void) nfs_rephead((((nfsd->nd_flag & 0x08) ? 84 : 68)), nfsd, slp, error, &info.nmi_mreq, &info.nmi_mb); if (info.nmi_mrep != ((void *)0)) { m_freem(info.nmi_mrep); info.nmi_mrep = ((void *)0); } *mrq = info.nmi_mreq; if (error && (!(nfsd->nd_flag & 0x08) || error == 72)) return(0); };
 if (error) {
  error = 0;
  goto nfsmout;
 }
 fp = nfsm_build(&info.nmi_mb, ((nfsd->nd_flag & 0x08) ? 84 : 68));
 nfsm_srvfattr(nfsd, &va, fp);
nfsmout:
 return(error);
}
int
nfsrv_setattr(struct nfsrv_descript *nfsd, struct nfssvc_sock *slp,
    struct proc *procp, struct mbuf **mrq)
{
 struct mbuf *nam = nfsd->nd_nam;
 struct nfsm_info info;
 struct ucred *cred = &nfsd->nd_cr;
 struct vattr va, preat;
 struct nfsv2_sattr *sp;
 struct nfs_fattr *fp;
 struct vnode *vp;
 nfsfh_t nfh;
 fhandle_t *fhp;
 u_int32_t *tl;
 int32_t t1;
 int error = 0, rdonly, preat_ret = 1, postat_ret = 1;
 int gcheck = 0;
 char *cp2;
 struct timespec guard;
 info.nmi_mreq = ((void *)0);
 info.nmi_mrep = nfsd->nd_mrep;
 info.nmi_md = nfsd->nd_md;
 info.nmi_dpos = nfsd->nd_dpos;
 info.nmi_v3 = (nfsd->nd_flag & 0x08);
 fhp = &nfh.fh_generic;
 { if (nfsd->nd_flag & 0x08) { { t1 = ((caddr_t)((info.nmi_md)->m_hdr.mh_data)) + info.nmi_md->m_hdr.mh_len - info.nmi_dpos; if (t1 >= (4)) { (tl) = (u_int32_t *)(info.nmi_dpos); info.nmi_dpos += (4); } else if ((t1 = nfsm_disct(&info.nmi_md, &info.nmi_dpos, (4), t1, &cp2)) != 0) { error = t1; m_freem(info.nmi_mrep); goto nfsmout; } else { (tl) = (u_int32_t *)cp2; } }; if (((int)((__uint32_t)((int32_t)(*tl)))) != (sizeof (fhandle_t))) { error = 72; { nfsd->nd_repstat = error; if (error && !(nfsd->nd_flag & 0x08)) (void) nfs_rephead(0, nfsd, slp, error, &info.nmi_mreq, &info.nmi_mb); else (void) nfs_rephead((0), nfsd, slp, error, &info.nmi_mreq, &info.nmi_mb); if (info.nmi_mrep != ((void *)0)) { m_freem(info.nmi_mrep); info.nmi_mrep = ((void *)0); } *mrq = info.nmi_mreq; if (error && (!(nfsd->nd_flag & 0x08) || error == 72)) return(0); }; } } { t1 = ((caddr_t)((info.nmi_md)->m_hdr.mh_data)) + info.nmi_md->m_hdr.mh_len - info.nmi_dpos; if (t1 >= ((sizeof (fhandle_t)))) { (tl) = (u_int32_t *)(info.nmi_dpos); info.nmi_dpos += ((sizeof (fhandle_t))); } else if ((t1 = nfsm_disct(&info.nmi_md, &info.nmi_dpos, ((sizeof (fhandle_t))), t1, &cp2)) != 0) { error = t1; m_freem(info.nmi_mrep); goto nfsmout; } else { (tl) = (u_int32_t *)cp2; } }; __builtin_bcopy((tl), ((fhp)), ((sizeof (fhandle_t)))); if ((nfsd->nd_flag & 0x08) == 0) { t1 = ((caddr_t)((info.nmi_md)->m_hdr.mh_data)) + info.nmi_md->m_hdr.mh_len - info.nmi_dpos; if (t1 >= (32 - (sizeof (fhandle_t)))) { info.nmi_dpos += (32 - (sizeof (fhandle_t))); } else if ((t1 = nfs_adv(&info.nmi_md, &info.nmi_dpos, (32 - (sizeof (fhandle_t))), t1)) != 0) { error = t1; m_freem(info.nmi_mrep); goto nfsmout; } }; };
 vattr_null(&va);
 if (info.nmi_v3) {
  va.va_vaflags |= 0x01;
  error = nfsm_srvsattr(&info.nmi_md, &va, info.nmi_mrep, &info.nmi_dpos);
  if (error)
   goto nfsmout;
  { t1 = ((caddr_t)((info.nmi_md)->m_hdr.mh_data)) + info.nmi_md->m_hdr.mh_len - info.nmi_dpos; if (t1 >= (4)) { (tl) = (u_int32_t *)(info.nmi_dpos); info.nmi_dpos += (4); } else if ((t1 = nfsm_disct(&info.nmi_md, &info.nmi_dpos, (4), t1, &cp2)) != 0) { error = t1; m_freem(info.nmi_mrep); goto nfsmout; } else { (tl) = (u_int32_t *)cp2; } };
  gcheck = ((int)((__uint32_t)((int32_t)(*tl))));
  if (gcheck) {
   { t1 = ((caddr_t)((info.nmi_md)->m_hdr.mh_data)) + info.nmi_md->m_hdr.mh_len - info.nmi_dpos; if (t1 >= (2 * 4)) { (tl) = (u_int32_t *)(info.nmi_dpos); info.nmi_dpos += (2 * 4); } else if ((t1 = nfsm_disct(&info.nmi_md, &info.nmi_dpos, (2 * 4), t1, &cp2)) != 0) { error = t1; m_freem(info.nmi_mrep); goto nfsmout; } else { (tl) = (u_int32_t *)cp2; } };
   do { (&guard)->tv_sec = ((__uint32_t)(((struct nfsv3_time *)(tl))->nfsv3_sec)); (&guard)->tv_nsec = ((__uint32_t)(((struct nfsv3_time *)(tl))->nfsv3_nsec)); } while (0);
  }
 } else {
  { t1 = ((caddr_t)((info.nmi_md)->m_hdr.mh_data)) + info.nmi_md->m_hdr.mh_len - info.nmi_dpos; if (t1 >= (32)) { (sp) = (struct nfsv2_sattr *)(info.nmi_dpos); info.nmi_dpos += (32); } else if ((t1 = nfsm_disct(&info.nmi_md, &info.nmi_dpos, (32), t1, &cp2)) != 0) { error = t1; m_freem(info.nmi_mrep); goto nfsmout; } else { (sp) = (struct nfsv2_sattr *)cp2; } };
  if ((((int)((__uint32_t)((int32_t)(sp->sa_mode)))) & 0xffff) != 0xffff)
   va.va_mode = (((u_int16_t)((__uint32_t)((int32_t)((sp->sa_mode)))))&07777);
  if (sp->sa_uid != nfs_xdrneg1)
   va.va_uid = ((uid_t)((__uint32_t)((int32_t)(sp->sa_uid))));
  if (sp->sa_gid != nfs_xdrneg1)
   va.va_gid = ((gid_t)((__uint32_t)((int32_t)(sp->sa_gid))));
  if (sp->sa_size != nfs_xdrneg1)
   va.va_size = ((u_quad_t)((__uint32_t)((int32_t)(sp->sa_size))));
  if (sp->sa_atime.nfsv2_sec != nfs_xdrneg1) {
   va.va_atime.tv_sec =
    ((u_int32_t)((__uint32_t)((int32_t)(sp->sa_atime.nfsv2_sec))));
   va.va_atime.tv_nsec = 0;
  }
  if (sp->sa_mtime.nfsv2_sec != nfs_xdrneg1)
   do { (&va.va_mtime)->tv_sec = ((__uint32_t)(((struct nfsv2_time *)(&sp->sa_mtime))->nfsv2_sec)); if (((struct nfsv2_time *)(&sp->sa_mtime))->nfsv2_usec != 0xffffffff) (&va.va_mtime)->tv_nsec = 1000 * ((__uint32_t)(((struct nfsv2_time *)(&sp->sa_mtime))->nfsv2_usec)); else (&va.va_mtime)->tv_nsec = 0; } while (0);
 }
 error = nfsrv_fhtovp(fhp, 1, &vp, cred, slp, nam, &rdonly);
 if (error) {
  { nfsd->nd_repstat = error; if (error && !(nfsd->nd_flag & 0x08)) (void) nfs_rephead(0, nfsd, slp, error, &info.nmi_mreq, &info.nmi_mb); else (void) nfs_rephead((2 * 4), nfsd, slp, error, &info.nmi_mreq, &info.nmi_mb); if (info.nmi_mrep != ((void *)0)) { m_freem(info.nmi_mrep); info.nmi_mrep = ((void *)0); } *mrq = info.nmi_mreq; if (error && (!(nfsd->nd_flag & 0x08) || error == 72)) return(0); };
  nfsm_srvwcc(nfsd, preat_ret, &preat, postat_ret, &va, &info);
  error = 0;
  goto nfsmout;
 }
 if (info.nmi_v3) {
  error = preat_ret = VOP_GETATTR(vp, &preat, cred, procp);
  if (!error && gcheck &&
   (preat.va_ctime.tv_sec != guard.tv_sec ||
    preat.va_ctime.tv_nsec != guard.tv_nsec))
   error = 10002;
  if (error) {
   vput(vp);
   { nfsd->nd_repstat = error; if (error && !(nfsd->nd_flag & 0x08)) (void) nfs_rephead(0, nfsd, slp, error, &info.nmi_mreq, &info.nmi_mb); else (void) nfs_rephead((((info.nmi_v3) ? ((84 + 4) + 8 * 4) : 0)), nfsd, slp, error, &info.nmi_mreq, &info.nmi_mb); if (info.nmi_mrep != ((void *)0)) { m_freem(info.nmi_mrep); info.nmi_mrep = ((void *)0); } *mrq = info.nmi_mreq; if (error && (!(nfsd->nd_flag & 0x08) || error == 72)) return(0); };
   nfsm_srvwcc(nfsd, preat_ret, &preat, postat_ret, &va,
       &info);
   error = 0;
   goto nfsmout;
  }
 }
 if (va.va_size == ((u_quad_t)((quad_t) -1))) {
  if (rdonly || (vp->v_mount->mnt_flag & 0x00000001)) {
   error = 30;
   goto out;
  }
 } else {
  if (vp->v_type == VDIR) {
   error = 21;
   goto out;
  } else if ((error = nfsrv_access(vp, 00200, cred, rdonly,
   procp, 1)) != 0)
   goto out;
 }
 error = VOP_SETATTR(vp, &va, cred, procp);
 postat_ret = VOP_GETATTR(vp, &va, cred, procp);
 if (!error)
  error = postat_ret;
out:
 vput(vp);
 { nfsd->nd_repstat = error; if (error && !(nfsd->nd_flag & 0x08)) (void) nfs_rephead(0, nfsd, slp, error, &info.nmi_mreq, &info.nmi_mb); else (void) nfs_rephead((((info.nmi_v3) ? ((84 + 4) + 8 * 4) : 68)), nfsd, slp, error, &info.nmi_mreq, &info.nmi_mb); if (info.nmi_mrep != ((void *)0)) { m_freem(info.nmi_mrep); info.nmi_mrep = ((void *)0); } *mrq = info.nmi_mreq; if (error && (!(nfsd->nd_flag & 0x08) || error == 72)) return(0); };
 if (info.nmi_v3) {
  nfsm_srvwcc(nfsd, preat_ret, &preat, postat_ret, &va,
      &info);
  error = 0;
  goto nfsmout;
 } else {
  fp = nfsm_build(&info.nmi_mb, 68);
  nfsm_srvfattr(nfsd, &va, fp);
 }
nfsmout:
 return(error);
}
int
nfsrv_lookup(struct nfsrv_descript *nfsd, struct nfssvc_sock *slp,
    struct proc *procp, struct mbuf **mrq)
{
 struct mbuf *nam = nfsd->nd_nam;
 struct ucred *cred = &nfsd->nd_cr;
 struct nfs_fattr *fp;
 struct nameidata nd;
 struct vnode *vp, *dirp;
 struct nfsm_info info;
 nfsfh_t nfh;
 fhandle_t *fhp;
 u_int32_t *tl;
 int32_t t1;
 int error = 0, len, dirattr_ret = 1;
 int v3 = (nfsd->nd_flag & 0x08);
 char *cp2;
 struct vattr va, dirattr;
 info.nmi_mrep = nfsd->nd_mrep;
 info.nmi_mreq = ((void *)0);
 info.nmi_md = nfsd->nd_md;
 info.nmi_dpos = nfsd->nd_dpos;
 info.nmi_v3 = (nfsd->nd_flag & 0x08);
 fhp = &nfh.fh_generic;
 { if (nfsd->nd_flag & 0x08) { { t1 = ((caddr_t)((info.nmi_md)->m_hdr.mh_data)) + info.nmi_md->m_hdr.mh_len - info.nmi_dpos; if (t1 >= (4)) { (tl) = (u_int32_t *)(info.nmi_dpos); info.nmi_dpos += (4); } else if ((t1 = nfsm_disct(&info.nmi_md, &info.nmi_dpos, (4), t1, &cp2)) != 0) { error = t1; m_freem(info.nmi_mrep); goto nfsmout; } else { (tl) = (u_int32_t *)cp2; } }; if (((int)((__uint32_t)((int32_t)(*tl)))) != (sizeof (fhandle_t))) { error = 72; { nfsd->nd_repstat = error; if (error && !(nfsd->nd_flag & 0x08)) (void) nfs_rephead(0, nfsd, slp, error, &info.nmi_mreq, &info.nmi_mb); else (void) nfs_rephead((0), nfsd, slp, error, &info.nmi_mreq, &info.nmi_mb); if (info.nmi_mrep != ((void *)0)) { m_freem(info.nmi_mrep); info.nmi_mrep = ((void *)0); } *mrq = info.nmi_mreq; if (error && (!(nfsd->nd_flag & 0x08) || error == 72)) return(0); }; } } { t1 = ((caddr_t)((info.nmi_md)->m_hdr.mh_data)) + info.nmi_md->m_hdr.mh_len - info.nmi_dpos; if (t1 >= ((sizeof (fhandle_t)))) { (tl) = (u_int32_t *)(info.nmi_dpos); info.nmi_dpos += ((sizeof (fhandle_t))); } else if ((t1 = nfsm_disct(&info.nmi_md, &info.nmi_dpos, ((sizeof (fhandle_t))), t1, &cp2)) != 0) { error = t1; m_freem(info.nmi_mrep); goto nfsmout; } else { (tl) = (u_int32_t *)cp2; } }; __builtin_bcopy((tl), ((fhp)), ((sizeof (fhandle_t)))); if ((nfsd->nd_flag & 0x08) == 0) { t1 = ((caddr_t)((info.nmi_md)->m_hdr.mh_data)) + info.nmi_md->m_hdr.mh_len - info.nmi_dpos; if (t1 >= (32 - (sizeof (fhandle_t)))) { info.nmi_dpos += (32 - (sizeof (fhandle_t))); } else if ((t1 = nfs_adv(&info.nmi_md, &info.nmi_dpos, (32 - (sizeof (fhandle_t))), t1)) != 0) { error = t1; m_freem(info.nmi_mrep); goto nfsmout; } }; };
 { { t1 = ((caddr_t)((info.nmi_md)->m_hdr.mh_data)) + info.nmi_md->m_hdr.mh_len - info.nmi_dpos; if (t1 >= (4)) { (tl) = (u_int32_t *)(info.nmi_dpos); info.nmi_dpos += (4); } else if ((t1 = nfsm_disct(&info.nmi_md, &info.nmi_dpos, (4), t1, &cp2)) != 0) { error = t1; m_freem(info.nmi_mrep); goto nfsmout; } else { (tl) = (u_int32_t *)cp2; } }; if (((len) = ((int32_t)((__uint32_t)((int32_t)(*tl))))) > 255) error = 63; if ((len) <= 0) error = 72; if (error) { nfsd->nd_repstat = error; if (error && !(nfsd->nd_flag & 0x08)) (void) nfs_rephead(0, nfsd, slp, error, &info.nmi_mreq, &info.nmi_mb); else (void) nfs_rephead((0), nfsd, slp, error, &info.nmi_mreq, &info.nmi_mb); if (info.nmi_mrep != ((void *)0)) { m_freem(info.nmi_mrep); info.nmi_mrep = ((void *)0); } *mrq = info.nmi_mreq; if (error && (!(nfsd->nd_flag & 0x08) || error == 72)) return(0); }; };
 ndinitat(&nd, 0, 0x0004 | 0x001000, UIO_SYSSPACE, -100, ((void *)0), procp);
 nd.ni_cnd.cn_cred = cred;
 error = nfs_namei(&nd, fhp, len, slp, nam, &info.nmi_md, &info.nmi_dpos, &dirp, procp);
 if (dirp) {
  if (info.nmi_v3)
   dirattr_ret = VOP_GETATTR(dirp, &dirattr, cred,
    procp);
  vrele(dirp);
 }
 if (error) {
  { nfsd->nd_repstat = error; if (error && !(nfsd->nd_flag & 0x08)) (void) nfs_rephead(0, nfsd, slp, error, &info.nmi_mreq, &info.nmi_mb); else (void) nfs_rephead((((info.nmi_v3) ? (84 + 4) : 0)), nfsd, slp, error, &info.nmi_mreq, &info.nmi_mb); if (info.nmi_mrep != ((void *)0)) { m_freem(info.nmi_mrep); info.nmi_mrep = ((void *)0); } *mrq = info.nmi_mreq; if (error && (!(nfsd->nd_flag & 0x08) || error == 72)) return(0); };
  nfsm_srvpostop_attr(nfsd, dirattr_ret, &dirattr, &info);
  return (0);
 }
 vrele(nd.ni_startdir);
 pool_put(&namei_pool, nd.ni_cnd.cn_pnbuf);
 vp = nd.ni_vp;
 __builtin_memset((fhp), (0), (sizeof(nfh)));
 fhp->fh_fsid = vp->v_mount->mnt_stat.f_fsid;
 error = (*(vp)->v_mount->mnt_op->vfs_vptofh)(vp, &fhp->fh_fid);
 if (!error)
  error = VOP_GETATTR(vp, &va, cred, procp);
 vput(vp);
 { nfsd->nd_repstat = error; if (error && !(nfsd->nd_flag & 0x08)) (void) nfs_rephead(0, nfsd, slp, error, &info.nmi_mreq, &info.nmi_mb); else (void) nfs_rephead((((info.nmi_v3) ? (sizeof (fhandle_t)) : 32) + ((info.nmi_v3) ? (84 + 4) : 68) + ((info.nmi_v3) ? (84 + 4) : 0)), nfsd, slp, error, &info.nmi_mreq, &info.nmi_mb); if (info.nmi_mrep != ((void *)0)) { m_freem(info.nmi_mrep); info.nmi_mrep = ((void *)0); } *mrq = info.nmi_mreq; if (error && (!(nfsd->nd_flag & 0x08) || error == 72)) return(0); };
 if (error) {
  nfsm_srvpostop_attr(nfsd, dirattr_ret, &dirattr, &info);
  error = 0;
  goto nfsmout;
 }
 nfsm_srvfhtom(&info.nmi_mb, fhp, info.nmi_v3);
 if (v3) {
  nfsm_srvpostop_attr(nfsd, 0, &va, &info);
  nfsm_srvpostop_attr(nfsd, dirattr_ret, &dirattr, &info);
 } else {
  fp = nfsm_build(&info.nmi_mb, 68);
  nfsm_srvfattr(nfsd, &va, fp);
 }
nfsmout:
 return(error);
}
int
nfsrv_readlink(struct nfsrv_descript *nfsd, struct nfssvc_sock *slp,
    struct proc *procp, struct mbuf **mrq)
{
 struct mbuf *nam = nfsd->nd_nam;
 struct ucred *cred = &nfsd->nd_cr;
 struct iovec iov;
 struct mbuf *mp = ((void *)0);
 struct nfsm_info info;
 u_int32_t *tl;
 int32_t t1;
 int error = 0, rdonly, tlen, len = 0, getret;
 char *cp2;
 struct vnode *vp;
 struct vattr attr;
 nfsfh_t nfh;
 fhandle_t *fhp;
 struct uio uio;
 info.nmi_mreq = ((void *)0);
 info.nmi_mrep = nfsd->nd_mrep;
 info.nmi_md = nfsd->nd_md;
 info.nmi_dpos = nfsd->nd_dpos;
 info.nmi_v3 = (nfsd->nd_flag & 0x08);
 __builtin_memset((&uio), (0), (sizeof(uio)));
 fhp = &nfh.fh_generic;
 { if (nfsd->nd_flag & 0x08) { { t1 = ((caddr_t)((info.nmi_md)->m_hdr.mh_data)) + info.nmi_md->m_hdr.mh_len - info.nmi_dpos; if (t1 >= (4)) { (tl) = (u_int32_t *)(info.nmi_dpos); info.nmi_dpos += (4); } else if ((t1 = nfsm_disct(&info.nmi_md, &info.nmi_dpos, (4), t1, &cp2)) != 0) { error = t1; m_freem(info.nmi_mrep); goto nfsmout; } else { (tl) = (u_int32_t *)cp2; } }; if (((int)((__uint32_t)((int32_t)(*tl)))) != (sizeof (fhandle_t))) { error = 72; { nfsd->nd_repstat = error; if (error && !(nfsd->nd_flag & 0x08)) (void) nfs_rephead(0, nfsd, slp, error, &info.nmi_mreq, &info.nmi_mb); else (void) nfs_rephead((0), nfsd, slp, error, &info.nmi_mreq, &info.nmi_mb); if (info.nmi_mrep != ((void *)0)) { m_freem(info.nmi_mrep); info.nmi_mrep = ((void *)0); } *mrq = info.nmi_mreq; if (error && (!(nfsd->nd_flag & 0x08) || error == 72)) return(0); }; } } { t1 = ((caddr_t)((info.nmi_md)->m_hdr.mh_data)) + info.nmi_md->m_hdr.mh_len - info.nmi_dpos; if (t1 >= ((sizeof (fhandle_t)))) { (tl) = (u_int32_t *)(info.nmi_dpos); info.nmi_dpos += ((sizeof (fhandle_t))); } else if ((t1 = nfsm_disct(&info.nmi_md, &info.nmi_dpos, ((sizeof (fhandle_t))), t1, &cp2)) != 0) { error = t1; m_freem(info.nmi_mrep); goto nfsmout; } else { (tl) = (u_int32_t *)cp2; } }; __builtin_bcopy((tl), ((fhp)), ((sizeof (fhandle_t)))); if ((nfsd->nd_flag & 0x08) == 0) { t1 = ((caddr_t)((info.nmi_md)->m_hdr.mh_data)) + info.nmi_md->m_hdr.mh_len - info.nmi_dpos; if (t1 >= (32 - (sizeof (fhandle_t)))) { info.nmi_dpos += (32 - (sizeof (fhandle_t))); } else if ((t1 = nfs_adv(&info.nmi_md, &info.nmi_dpos, (32 - (sizeof (fhandle_t))), t1)) != 0) { error = t1; m_freem(info.nmi_mrep); goto nfsmout; } }; };
 error = nfsrv_fhtovp(fhp, 1, &vp, cred, slp, nam, &rdonly);
 if (error) {
  { nfsd->nd_repstat = error; if (error && !(nfsd->nd_flag & 0x08)) (void) nfs_rephead(0, nfsd, slp, error, &info.nmi_mreq, &info.nmi_mb); else (void) nfs_rephead((2 * 4), nfsd, slp, error, &info.nmi_mreq, &info.nmi_mb); if (info.nmi_mrep != ((void *)0)) { m_freem(info.nmi_mrep); info.nmi_mrep = ((void *)0); } *mrq = info.nmi_mreq; if (error && (!(nfsd->nd_flag & 0x08) || error == 72)) return(0); };
  nfsm_srvpostop_attr(nfsd, 1, ((void *)0), &info);
  error = 0;
  goto nfsmout;
 }
 if (vp->v_type != VLNK) {
  if (info.nmi_v3)
   error = 22;
  else
   error = 6;
  goto out;
 }
 mp = m_get((0x0001), (1));
 (void) m_clget((mp), (0x0001), (1 << 11));
 mp->m_hdr.mh_len = 1024;
 len = 1024;
 iov.iov_base = ((caddr_t)((mp)->m_hdr.mh_data));
 iov.iov_len = mp->m_hdr.mh_len;
 uio.uio_iov = &iov;
 uio.uio_iovcnt = 1;
 uio.uio_offset = 0;
 uio.uio_resid = 1024;
 uio.uio_rw = UIO_READ;
 uio.uio_segflg = UIO_SYSSPACE;
 uio.uio_procp = ((void *)0);
 error = VOP_READLINK(vp, &uio, cred);
out:
 getret = VOP_GETATTR(vp, &attr, cred, procp);
 vput(vp);
 if (error)
  m_freem(mp);
 { nfsd->nd_repstat = error; if (error && !(nfsd->nd_flag & 0x08)) (void) nfs_rephead(0, nfsd, slp, error, &info.nmi_mreq, &info.nmi_mb); else (void) nfs_rephead((((info.nmi_v3) ? (84 + 4) : 0) + 4), nfsd, slp, error, &info.nmi_mreq, &info.nmi_mb); if (info.nmi_mrep != ((void *)0)) { m_freem(info.nmi_mrep); info.nmi_mrep = ((void *)0); } *mrq = info.nmi_mreq; if (error && (!(nfsd->nd_flag & 0x08) || error == 72)) return(0); };
 if (info.nmi_v3) {
  nfsm_srvpostop_attr(nfsd, getret, &attr, &info);
  if (error) {
   error = 0;
   goto nfsmout;
  }
 }
 if (uio.uio_resid > 0) {
  len -= uio.uio_resid;
  tlen = (((len)+3)&(~0x3));
  nfsm_adj(mp, 1024 -tlen, tlen-len);
 }
 tl = nfsm_build(&info.nmi_mb, 4);
 *tl = (((__uint32_t)((int32_t)(len))));
 info.nmi_mb->m_hdr.mh_next = mp;
nfsmout:
 return (error);
}
int
nfsrv_read(struct nfsrv_descript *nfsd, struct nfssvc_sock *slp,
    struct proc *procp, struct mbuf **mrq)
{
 struct mbuf *nam = nfsd->nd_nam;
 struct ucred *cred = &nfsd->nd_cr;
 struct mbuf *m;
 struct nfs_fattr *fp;
 struct nfsm_info info;
 u_int32_t *tl;
 int32_t t1;
 int i, reqlen;
 int error = 0, rdonly, cnt, len, left, siz, tlen, getret = 1;
 char *cp2;
 struct mbuf *m2;
 struct vnode *vp;
 nfsfh_t nfh;
 fhandle_t *fhp;
 struct uio io, *uiop = &io;
 struct vattr va;
 off_t off;
 info.nmi_mreq = ((void *)0);
 info.nmi_mrep = nfsd->nd_mrep;
 info.nmi_md = nfsd->nd_md;
 info.nmi_dpos = nfsd->nd_dpos;
 info.nmi_v3 = (nfsd->nd_flag & 0x08);
 fhp = &nfh.fh_generic;
 { if (nfsd->nd_flag & 0x08) { { t1 = ((caddr_t)((info.nmi_md)->m_hdr.mh_data)) + info.nmi_md->m_hdr.mh_len - info.nmi_dpos; if (t1 >= (4)) { (tl) = (u_int32_t *)(info.nmi_dpos); info.nmi_dpos += (4); } else if ((t1 = nfsm_disct(&info.nmi_md, &info.nmi_dpos, (4), t1, &cp2)) != 0) { error = t1; m_freem(info.nmi_mrep); goto nfsmout; } else { (tl) = (u_int32_t *)cp2; } }; if (((int)((__uint32_t)((int32_t)(*tl)))) != (sizeof (fhandle_t))) { error = 72; { nfsd->nd_repstat = error; if (error && !(nfsd->nd_flag & 0x08)) (void) nfs_rephead(0, nfsd, slp, error, &info.nmi_mreq, &info.nmi_mb); else (void) nfs_rephead((0), nfsd, slp, error, &info.nmi_mreq, &info.nmi_mb); if (info.nmi_mrep != ((void *)0)) { m_freem(info.nmi_mrep); info.nmi_mrep = ((void *)0); } *mrq = info.nmi_mreq; if (error && (!(nfsd->nd_flag & 0x08) || error == 72)) return(0); }; } } { t1 = ((caddr_t)((info.nmi_md)->m_hdr.mh_data)) + info.nmi_md->m_hdr.mh_len - info.nmi_dpos; if (t1 >= ((sizeof (fhandle_t)))) { (tl) = (u_int32_t *)(info.nmi_dpos); info.nmi_dpos += ((sizeof (fhandle_t))); } else if ((t1 = nfsm_disct(&info.nmi_md, &info.nmi_dpos, ((sizeof (fhandle_t))), t1, &cp2)) != 0) { error = t1; m_freem(info.nmi_mrep); goto nfsmout; } else { (tl) = (u_int32_t *)cp2; } }; __builtin_bcopy((tl), ((fhp)), ((sizeof (fhandle_t)))); if ((nfsd->nd_flag & 0x08) == 0) { t1 = ((caddr_t)((info.nmi_md)->m_hdr.mh_data)) + info.nmi_md->m_hdr.mh_len - info.nmi_dpos; if (t1 >= (32 - (sizeof (fhandle_t)))) { info.nmi_dpos += (32 - (sizeof (fhandle_t))); } else if ((t1 = nfs_adv(&info.nmi_md, &info.nmi_dpos, (32 - (sizeof (fhandle_t))), t1)) != 0) { error = t1; m_freem(info.nmi_mrep); goto nfsmout; } }; };
 if (info.nmi_v3) {
  { t1 = ((caddr_t)((info.nmi_md)->m_hdr.mh_data)) + info.nmi_md->m_hdr.mh_len - info.nmi_dpos; if (t1 >= (2 * 4)) { (tl) = (u_int32_t *)(info.nmi_dpos); info.nmi_dpos += (2 * 4); } else if ((t1 = nfsm_disct(&info.nmi_md, &info.nmi_dpos, (2 * 4), t1, &cp2)) != 0) { error = t1; m_freem(info.nmi_mrep); goto nfsmout; } else { (tl) = (u_int32_t *)cp2; } };
  off = ((((u_quad_t)((__uint32_t)(((u_int32_t *)(tl))[0]))) << 32) | (u_quad_t)(((__uint32_t)(((u_int32_t *)(tl))[1]))));
 } else {
  { t1 = ((caddr_t)((info.nmi_md)->m_hdr.mh_data)) + info.nmi_md->m_hdr.mh_len - info.nmi_dpos; if (t1 >= (4)) { (tl) = (u_int32_t *)(info.nmi_dpos); info.nmi_dpos += (4); } else if ((t1 = nfsm_disct(&info.nmi_md, &info.nmi_dpos, (4), t1, &cp2)) != 0) { error = t1; m_freem(info.nmi_mrep); goto nfsmout; } else { (tl) = (u_int32_t *)cp2; } };
  off = (off_t)((u_int32_t)((__uint32_t)((int32_t)(*tl))));
 }
 { t1 = ((caddr_t)((info.nmi_md)->m_hdr.mh_data)) + info.nmi_md->m_hdr.mh_len - info.nmi_dpos; if (t1 >= (4)) { (tl) = (u_int32_t *)(info.nmi_dpos); info.nmi_dpos += (4); } else if ((t1 = nfsm_disct(&info.nmi_md, &info.nmi_dpos, (4), t1, &cp2)) != 0) { error = t1; m_freem(info.nmi_mrep); goto nfsmout; } else { (tl) = (u_int32_t *)cp2; } };
 reqlen = ((int32_t)((__uint32_t)((int32_t)(*tl))));
 if (reqlen > ((((nfsd)->nd_flag & 0x08) ? (((nfsd)->nd_nam2) ? 32768 : (64 * 1024)) : 8192)) || reqlen <= 0) {
  error = 72;
  { nfsd->nd_repstat = error; if (error && !(nfsd->nd_flag & 0x08)) (void) nfs_rephead(0, nfsd, slp, error, &info.nmi_mreq, &info.nmi_mb); else (void) nfs_rephead((0), nfsd, slp, error, &info.nmi_mreq, &info.nmi_mb); if (info.nmi_mrep != ((void *)0)) { m_freem(info.nmi_mrep); info.nmi_mrep = ((void *)0); } *mrq = info.nmi_mreq; if (error && (!(nfsd->nd_flag & 0x08) || error == 72)) return(0); };
 }
 error = nfsrv_fhtovp(fhp, 1, &vp, cred, slp, nam, &rdonly);
 if (error)
  goto bad;
 if (vp->v_type != VREG) {
  if (info.nmi_v3)
   error = 22;
  else
   error = (vp->v_type == VDIR) ? 21 : 13;
 }
 if (!error) {
     if ((error = nfsrv_access(vp, 00400, cred, rdonly, procp, 1)) != 0)
  error = nfsrv_access(vp, 00100, cred, rdonly, procp, 1);
 }
 getret = VOP_GETATTR(vp, &va, cred, procp);
 if (!error)
  error = getret;
 if (error)
  goto vbad;
 if (off >= va.va_size)
  cnt = 0;
 else if ((off + reqlen) > va.va_size)
  cnt = va.va_size - off;
 else
  cnt = reqlen;
 { nfsd->nd_repstat = error; if (error && !(nfsd->nd_flag & 0x08)) (void) nfs_rephead(0, nfsd, slp, error, &info.nmi_mreq, &info.nmi_mb); else (void) nfs_rephead((((info.nmi_v3) ? (84 + 4) : 68) + 3 * 4 +(((cnt)+3)&(~0x3))), nfsd, slp, error, &info.nmi_mreq, &info.nmi_mb); if (info.nmi_mrep != ((void *)0)) { m_freem(info.nmi_mrep); info.nmi_mrep = ((void *)0); } *mrq = info.nmi_mreq; if (error && (!(nfsd->nd_flag & 0x08) || error == 72)) return(0); };
 if (info.nmi_v3) {
  tl = nfsm_build(&info.nmi_mb, 84 + 4 * 4);
  *tl++ = nfs_true;
  fp = (struct nfs_fattr *)tl;
  tl += (84 / sizeof (u_int32_t));
 } else {
  tl = nfsm_build(&info.nmi_mb, 68 + 4);
  fp = (struct nfs_fattr *)tl;
  tl += (68 / sizeof (u_int32_t));
 }
 len = left = (((cnt)+3)&(~0x3));
 if (cnt > 0) {
  struct iovec *iv, *iv2;
  size_t ivlen;
  i = 0;
  m = m2 = info.nmi_mb;
  while (left > 0) {
   siz = min(m_trailingspace(m), left);
   if (siz > 0) {
    left -= siz;
    i++;
   }
   if (left > 0) {
    m = m_get((0x0001), (1));
    if (left >= (((256 - sizeof(struct m_hdr)) - sizeof(struct pkthdr)) + (256 - sizeof(struct m_hdr)) + 1))
     (void) m_clget((m), (0x0001), (1 << 11));
    m->m_hdr.mh_len = 0;
    m2->m_hdr.mh_next = m;
    m2 = m;
   }
  }
  iv = mallocarray(i, sizeof(*iv), 127, 0x0001);
  ivlen = i * sizeof(*iv);
  uiop->uio_iov = iv2 = iv;
  m = info.nmi_mb;
  left = len;
  i = 0;
  while (left > 0) {
   if (m == ((void *)0))
    panic("nfsrv_read iov");
   siz = min(m_trailingspace(m), left);
   if (siz > 0) {
    iv->iov_base = ((caddr_t)((m)->m_hdr.mh_data)) + m->m_hdr.mh_len;
    iv->iov_len = siz;
    m->m_hdr.mh_len += siz;
    left -= siz;
    iv++;
    i++;
   }
   m = m->m_hdr.mh_next;
  }
  uiop->uio_iovcnt = i;
  uiop->uio_offset = off;
  uiop->uio_resid = len;
  uiop->uio_rw = UIO_READ;
  uiop->uio_segflg = UIO_SYSSPACE;
  error = VOP_READ(vp, uiop, 0x08, cred);
  off = uiop->uio_offset;
  free(iv2, 127, ivlen);
  if (error || (getret = VOP_GETATTR(vp, &va, cred, procp)) != 0){
   if (!error)
    error = getret;
   m_freem(info.nmi_mreq);
   goto vbad;
  }
 } else
  uiop->uio_resid = 0;
 vput(vp);
 nfsm_srvfattr(nfsd, &va, fp);
 tlen = len - uiop->uio_resid;
 cnt = cnt < tlen ? cnt : tlen;
 tlen = (((cnt)+3)&(~0x3));
 if (len != tlen || tlen != cnt)
  nfsm_adj(info.nmi_mb, len - tlen, tlen - cnt);
 if (info.nmi_v3) {
  *tl++ = (((__uint32_t)((int32_t)(cnt))));
  if (len < reqlen)
   *tl++ = nfs_true;
  else
   *tl++ = nfs_false;
 }
 *tl = (((__uint32_t)((int32_t)(cnt))));
nfsmout:
 return(error);
vbad:
 vput(vp);
bad:
 { nfsd->nd_repstat = error; if (error && !(nfsd->nd_flag & 0x08)) (void) nfs_rephead(0, nfsd, slp, error, &info.nmi_mreq, &info.nmi_mb); else (void) nfs_rephead((0), nfsd, slp, error, &info.nmi_mreq, &info.nmi_mb); if (info.nmi_mrep != ((void *)0)) { m_freem(info.nmi_mrep); info.nmi_mrep = ((void *)0); } *mrq = info.nmi_mreq; if (error && (!(nfsd->nd_flag & 0x08) || error == 72)) return(0); };
 nfsm_srvpostop_attr(nfsd, getret, &va, &info);
 return (0);
}
int
nfsrv_write(struct nfsrv_descript *nfsd, struct nfssvc_sock *slp,
    struct proc *procp, struct mbuf **mrq)
{
 struct mbuf *nam = nfsd->nd_nam;
 struct ucred *cred = &nfsd->nd_cr;
 struct nfsm_info info;
 int i, cnt;
 struct mbuf *mp;
 struct nfs_fattr *fp;
 struct vattr va, forat;
 u_int32_t *tl;
 int32_t t1;
 int error = 0, rdonly, len, forat_ret = 1;
 int ioflags, aftat_ret = 1, retlen, zeroing, adjust;
 int stable = 2;
 char *cp2;
 struct vnode *vp;
 nfsfh_t nfh;
 fhandle_t *fhp;
 struct uio io, *uiop = &io;
 off_t off;
 info.nmi_mreq = ((void *)0);
 info.nmi_mrep = nfsd->nd_mrep;
 info.nmi_md = nfsd->nd_md;
 info.nmi_dpos = nfsd->nd_dpos;
 info.nmi_v3 = (nfsd->nd_flag & 0x08);
 if (info.nmi_mrep == ((void *)0)) {
  *mrq = ((void *)0);
  return (0);
 }
 fhp = &nfh.fh_generic;
 { if (nfsd->nd_flag & 0x08) { { t1 = ((caddr_t)((info.nmi_md)->m_hdr.mh_data)) + info.nmi_md->m_hdr.mh_len - info.nmi_dpos; if (t1 >= (4)) { (tl) = (u_int32_t *)(info.nmi_dpos); info.nmi_dpos += (4); } else if ((t1 = nfsm_disct(&info.nmi_md, &info.nmi_dpos, (4), t1, &cp2)) != 0) { error = t1; m_freem(info.nmi_mrep); goto nfsmout; } else { (tl) = (u_int32_t *)cp2; } }; if (((int)((__uint32_t)((int32_t)(*tl)))) != (sizeof (fhandle_t))) { error = 72; { nfsd->nd_repstat = error; if (error && !(nfsd->nd_flag & 0x08)) (void) nfs_rephead(0, nfsd, slp, error, &info.nmi_mreq, &info.nmi_mb); else (void) nfs_rephead((0), nfsd, slp, error, &info.nmi_mreq, &info.nmi_mb); if (info.nmi_mrep != ((void *)0)) { m_freem(info.nmi_mrep); info.nmi_mrep = ((void *)0); } *mrq = info.nmi_mreq; if (error && (!(nfsd->nd_flag & 0x08) || error == 72)) return(0); }; } } { t1 = ((caddr_t)((info.nmi_md)->m_hdr.mh_data)) + info.nmi_md->m_hdr.mh_len - info.nmi_dpos; if (t1 >= ((sizeof (fhandle_t)))) { (tl) = (u_int32_t *)(info.nmi_dpos); info.nmi_dpos += ((sizeof (fhandle_t))); } else if ((t1 = nfsm_disct(&info.nmi_md, &info.nmi_dpos, ((sizeof (fhandle_t))), t1, &cp2)) != 0) { error = t1; m_freem(info.nmi_mrep); goto nfsmout; } else { (tl) = (u_int32_t *)cp2; } }; __builtin_bcopy((tl), ((fhp)), ((sizeof (fhandle_t)))); if ((nfsd->nd_flag & 0x08) == 0) { t1 = ((caddr_t)((info.nmi_md)->m_hdr.mh_data)) + info.nmi_md->m_hdr.mh_len - info.nmi_dpos; if (t1 >= (32 - (sizeof (fhandle_t)))) { info.nmi_dpos += (32 - (sizeof (fhandle_t))); } else if ((t1 = nfs_adv(&info.nmi_md, &info.nmi_dpos, (32 - (sizeof (fhandle_t))), t1)) != 0) { error = t1; m_freem(info.nmi_mrep); goto nfsmout; } }; };
 if (info.nmi_v3) {
  { t1 = ((caddr_t)((info.nmi_md)->m_hdr.mh_data)) + info.nmi_md->m_hdr.mh_len - info.nmi_dpos; if (t1 >= (5 * 4)) { (tl) = (u_int32_t *)(info.nmi_dpos); info.nmi_dpos += (5 * 4); } else if ((t1 = nfsm_disct(&info.nmi_md, &info.nmi_dpos, (5 * 4), t1, &cp2)) != 0) { error = t1; m_freem(info.nmi_mrep); goto nfsmout; } else { (tl) = (u_int32_t *)cp2; } };
  off = ((((u_quad_t)((__uint32_t)(((u_int32_t *)(tl))[0]))) << 32) | (u_quad_t)(((__uint32_t)(((u_int32_t *)(tl))[1]))));
  tl += 3;
  stable = ((int)((__uint32_t)((int32_t)(*tl++))));
 } else {
  { t1 = ((caddr_t)((info.nmi_md)->m_hdr.mh_data)) + info.nmi_md->m_hdr.mh_len - info.nmi_dpos; if (t1 >= (4 * 4)) { (tl) = (u_int32_t *)(info.nmi_dpos); info.nmi_dpos += (4 * 4); } else if ((t1 = nfsm_disct(&info.nmi_md, &info.nmi_dpos, (4 * 4), t1, &cp2)) != 0) { error = t1; m_freem(info.nmi_mrep); goto nfsmout; } else { (tl) = (u_int32_t *)cp2; } };
  off = (off_t)((u_int32_t)((__uint32_t)((int32_t)(*++tl))));
  tl += 2;
 }
 retlen = len = ((int32_t)((__uint32_t)((int32_t)(*tl))));
 cnt = i = 0;
 if (len > 0) {
     zeroing = 1;
     mp = info.nmi_mrep;
     while (mp) {
  if (mp == info.nmi_md) {
   zeroing = 0;
   adjust = info.nmi_dpos - ((caddr_t)((mp)->m_hdr.mh_data));
   mp->m_hdr.mh_len -= adjust;
   if (mp->m_hdr.mh_len > 0 && adjust > 0)
    mp->m_hdr.mh_data += adjust;
  }
  if (zeroing)
   mp->m_hdr.mh_len = 0;
  else if (mp->m_hdr.mh_len > 0) {
   i += mp->m_hdr.mh_len;
   if (i > len) {
    mp->m_hdr.mh_len -= (i - len);
    zeroing = 1;
   }
   if (mp->m_hdr.mh_len > 0)
    cnt++;
  }
  mp = mp->m_hdr.mh_next;
     }
 }
 if (len > (64 * 1024) || len < 0 || i < len) {
  error = 5;
  goto bad;
 }
 error = nfsrv_fhtovp(fhp, 1, &vp, cred, slp, nam, &rdonly);
 if (error)
  goto bad;
 if (info.nmi_v3)
  forat_ret = VOP_GETATTR(vp, &forat, cred, procp);
 if (vp->v_type != VREG) {
  if (info.nmi_v3)
   error = 22;
  else
   error = (vp->v_type == VDIR) ? 21 : 13;
  goto vbad;
 }
 error = nfsrv_access(vp, 00200, cred, rdonly, procp, 1);
 if (error)
  goto vbad;
 if (len > 0) {
     struct iovec *iv, *ivp;
     size_t ivlen;
     ivp = mallocarray(cnt, sizeof(*ivp), 127, 0x0001);
     ivlen = cnt * sizeof(*ivp);
     uiop->uio_iov = iv = ivp;
     uiop->uio_iovcnt = cnt;
     mp = info.nmi_mrep;
     while (mp) {
  if (mp->m_hdr.mh_len > 0) {
   ivp->iov_base = ((caddr_t)((mp)->m_hdr.mh_data));
   ivp->iov_len = mp->m_hdr.mh_len;
   ivp++;
  }
  mp = mp->m_hdr.mh_next;
     }
     if (stable == 0)
  ioflags = 0x08;
     else if (stable == 1)
  ioflags = (0x04 | 0x08);
     else
  ioflags = (0x04 | 0x08);
     uiop->uio_resid = len;
     uiop->uio_rw = UIO_WRITE;
     uiop->uio_segflg = UIO_SYSSPACE;
     uiop->uio_procp = ((void *)0);
     uiop->uio_offset = off;
     error = VOP_WRITE(vp, uiop, ioflags, cred);
     nfsstats.srvvop_writes++;
     free(iv, 127, ivlen);
 }
 aftat_ret = VOP_GETATTR(vp, &va, cred, procp);
 vput(vp);
 if (!error)
  error = aftat_ret;
 { nfsd->nd_repstat = error; if (error && !(nfsd->nd_flag & 0x08)) (void) nfs_rephead(0, nfsd, slp, error, &info.nmi_mreq, &info.nmi_mb); else (void) nfs_rephead((((info.nmi_v3) ? (7 * 4) : 0) + ((info.nmi_v3) ? (84 + 4) : 68) + 2 * 4 + ((info.nmi_v3) ? 8 : 0)), nfsd, slp, error, &info.nmi_mreq, &info.nmi_mb); if (info.nmi_mrep != ((void *)0)) { m_freem(info.nmi_mrep); info.nmi_mrep = ((void *)0); } *mrq = info.nmi_mreq; if (error && (!(nfsd->nd_flag & 0x08) || error == 72)) return(0); };
 if (info.nmi_v3) {
  nfsm_srvwcc(nfsd, forat_ret, &forat, aftat_ret, &va, &info);
  if (error) {
   error = 0;
   goto nfsmout;
  }
  tl = nfsm_build(&info.nmi_mb, 4 * 4);
  *tl++ = (((__uint32_t)((int32_t)(retlen))));
  if (stable == 0)
   *tl++ = (((__uint32_t)((int32_t)(stable))));
  else
   *tl++ = (((__uint32_t)((int32_t)(2))));
  *tl++ = (((__uint32_t)((int32_t)(boottime.tv_sec))));
  *tl = (((__uint32_t)((int32_t)(boottime.tv_nsec/1000))));
 } else {
  fp = nfsm_build(&info.nmi_mb, 68);
  nfsm_srvfattr(nfsd, &va, fp);
 }
nfsmout:
 return(error);
vbad:
 vput(vp);
bad:
 { nfsd->nd_repstat = error; if (error && !(nfsd->nd_flag & 0x08)) (void) nfs_rephead(0, nfsd, slp, error, &info.nmi_mreq, &info.nmi_mb); else (void) nfs_rephead((0), nfsd, slp, error, &info.nmi_mreq, &info.nmi_mb); if (info.nmi_mrep != ((void *)0)) { m_freem(info.nmi_mrep); info.nmi_mrep = ((void *)0); } *mrq = info.nmi_mreq; if (error && (!(nfsd->nd_flag & 0x08) || error == 72)) return(0); };
 nfsm_srvwcc(nfsd, forat_ret, &forat, aftat_ret, &va, &info);
 return (0);
}
int
nfsrv_create(struct nfsrv_descript *nfsd, struct nfssvc_sock *slp,
    struct proc *procp, struct mbuf **mrq)
{
 struct mbuf *nam = nfsd->nd_nam;
 struct ucred *cred = &nfsd->nd_cr;
 struct nfs_fattr *fp;
 struct vattr va, dirfor, diraft;
 struct nfsv2_sattr *sp;
 struct nfsm_info info;
 u_int32_t *tl;
 struct nameidata nd;
 caddr_t cp;
 int32_t t1;
 int error = 0, len, tsize, dirfor_ret = 1, diraft_ret = 1;
 dev_t rdev = 0;
 int how, exclusive_flag = 0;
 char *cp2;
 struct vnode *vp = ((void *)0), *dirp = ((void *)0);
 nfsfh_t nfh;
 fhandle_t *fhp;
 u_quad_t tempsize;
 u_char cverf[8];
 info.nmi_mreq = ((void *)0);
 info.nmi_mrep = nfsd->nd_mrep;
 info.nmi_md = nfsd->nd_md;
 info.nmi_dpos = nfsd->nd_dpos;
 info.nmi_v3 = (nfsd->nd_flag & 0x08);
 fhp = &nfh.fh_generic;
 { if (nfsd->nd_flag & 0x08) { { t1 = ((caddr_t)((info.nmi_md)->m_hdr.mh_data)) + info.nmi_md->m_hdr.mh_len - info.nmi_dpos; if (t1 >= (4)) { (tl) = (u_int32_t *)(info.nmi_dpos); info.nmi_dpos += (4); } else if ((t1 = nfsm_disct(&info.nmi_md, &info.nmi_dpos, (4), t1, &cp2)) != 0) { error = t1; m_freem(info.nmi_mrep); goto nfsmout; } else { (tl) = (u_int32_t *)cp2; } }; if (((int)((__uint32_t)((int32_t)(*tl)))) != (sizeof (fhandle_t))) { error = 72; { nfsd->nd_repstat = error; if (error && !(nfsd->nd_flag & 0x08)) (void) nfs_rephead(0, nfsd, slp, error, &info.nmi_mreq, &info.nmi_mb); else (void) nfs_rephead((0), nfsd, slp, error, &info.nmi_mreq, &info.nmi_mb); if (info.nmi_mrep != ((void *)0)) { m_freem(info.nmi_mrep); info.nmi_mrep = ((void *)0); } *mrq = info.nmi_mreq; if (error && (!(nfsd->nd_flag & 0x08) || error == 72)) return(0); }; } } { t1 = ((caddr_t)((info.nmi_md)->m_hdr.mh_data)) + info.nmi_md->m_hdr.mh_len - info.nmi_dpos; if (t1 >= ((sizeof (fhandle_t)))) { (tl) = (u_int32_t *)(info.nmi_dpos); info.nmi_dpos += ((sizeof (fhandle_t))); } else if ((t1 = nfsm_disct(&info.nmi_md, &info.nmi_dpos, ((sizeof (fhandle_t))), t1, &cp2)) != 0) { error = t1; m_freem(info.nmi_mrep); goto nfsmout; } else { (tl) = (u_int32_t *)cp2; } }; __builtin_bcopy((tl), ((fhp)), ((sizeof (fhandle_t)))); if ((nfsd->nd_flag & 0x08) == 0) { t1 = ((caddr_t)((info.nmi_md)->m_hdr.mh_data)) + info.nmi_md->m_hdr.mh_len - info.nmi_dpos; if (t1 >= (32 - (sizeof (fhandle_t)))) { info.nmi_dpos += (32 - (sizeof (fhandle_t))); } else if ((t1 = nfs_adv(&info.nmi_md, &info.nmi_dpos, (32 - (sizeof (fhandle_t))), t1)) != 0) { error = t1; m_freem(info.nmi_mrep); goto nfsmout; } }; };
 { { t1 = ((caddr_t)((info.nmi_md)->m_hdr.mh_data)) + info.nmi_md->m_hdr.mh_len - info.nmi_dpos; if (t1 >= (4)) { (tl) = (u_int32_t *)(info.nmi_dpos); info.nmi_dpos += (4); } else if ((t1 = nfsm_disct(&info.nmi_md, &info.nmi_dpos, (4), t1, &cp2)) != 0) { error = t1; m_freem(info.nmi_mrep); goto nfsmout; } else { (tl) = (u_int32_t *)cp2; } }; if (((len) = ((int32_t)((__uint32_t)((int32_t)(*tl))))) > 255) error = 63; if ((len) <= 0) error = 72; if (error) { nfsd->nd_repstat = error; if (error && !(nfsd->nd_flag & 0x08)) (void) nfs_rephead(0, nfsd, slp, error, &info.nmi_mreq, &info.nmi_mb); else (void) nfs_rephead((0), nfsd, slp, error, &info.nmi_mreq, &info.nmi_mb); if (info.nmi_mrep != ((void *)0)) { m_freem(info.nmi_mrep); info.nmi_mrep = ((void *)0); } *mrq = info.nmi_mreq; if (error && (!(nfsd->nd_flag & 0x08) || error == 72)) return(0); }; };
 ndinitat(&nd, 1, 0x0008 | 0x0004 | 0x001000, UIO_SYSSPACE, -100, ((void *)0), procp);
 nd.ni_cnd.cn_cred = cred;
 error = nfs_namei(&nd, fhp, len, slp, nam, &info.nmi_md,
     &info.nmi_dpos, &dirp, procp);
 if (dirp) {
  if (info.nmi_v3)
   dirfor_ret = VOP_GETATTR(dirp, &dirfor, cred, procp);
  else {
   vrele(dirp);
   dirp = ((void *)0);
  }
 }
 if (error) {
  { nfsd->nd_repstat = error; if (error && !(nfsd->nd_flag & 0x08)) (void) nfs_rephead(0, nfsd, slp, error, &info.nmi_mreq, &info.nmi_mb); else (void) nfs_rephead((((info.nmi_v3) ? ((84 + 4) + 8 * 4) : 0)), nfsd, slp, error, &info.nmi_mreq, &info.nmi_mb); if (info.nmi_mrep != ((void *)0)) { m_freem(info.nmi_mrep); info.nmi_mrep = ((void *)0); } *mrq = info.nmi_mreq; if (error && (!(nfsd->nd_flag & 0x08) || error == 72)) return(0); };
  nfsm_srvwcc(nfsd, dirfor_ret, &dirfor, diraft_ret, &diraft,
      &info);
  if (dirp)
   vrele(dirp);
  return (0);
 }
 vattr_null(&va);
 if (info.nmi_v3) {
  { t1 = ((caddr_t)((info.nmi_md)->m_hdr.mh_data)) + info.nmi_md->m_hdr.mh_len - info.nmi_dpos; if (t1 >= (4)) { (tl) = (u_int32_t *)(info.nmi_dpos); info.nmi_dpos += (4); } else if ((t1 = nfsm_disct(&info.nmi_md, &info.nmi_dpos, (4), t1, &cp2)) != 0) { error = t1; m_freem(info.nmi_mrep); goto nfsmout; } else { (tl) = (u_int32_t *)cp2; } };
  how = ((int)((__uint32_t)((int32_t)(*tl))));
  switch (how) {
  case 1:
   if (nd.ni_vp) {
    error = 17;
    break;
   }
  case 0:
   error = nfsm_srvsattr(&info.nmi_md, &va, info.nmi_mrep,
       &info.nmi_dpos);
   if (error)
    goto nfsmout;
   break;
  case 2:
   { t1 = ((caddr_t)((info.nmi_md)->m_hdr.mh_data)) + info.nmi_md->m_hdr.mh_len - info.nmi_dpos; if (t1 >= (8)) { (cp) = (caddr_t)(info.nmi_dpos); info.nmi_dpos += (8); } else if ((t1 = nfsm_disct(&info.nmi_md, &info.nmi_dpos, (8), t1, &cp2)) != 0) { error = t1; m_freem(info.nmi_mrep); goto nfsmout; } else { (cp) = (caddr_t)cp2; } };
   __builtin_bcopy((cp), (cverf), (8));
   exclusive_flag = 1;
   if (nd.ni_vp == ((void *)0))
    va.va_mode = 0;
   break;
  };
  va.va_type = VREG;
 } else {
  { t1 = ((caddr_t)((info.nmi_md)->m_hdr.mh_data)) + info.nmi_md->m_hdr.mh_len - info.nmi_dpos; if (t1 >= (32)) { (sp) = (struct nfsv2_sattr *)(info.nmi_dpos); info.nmi_dpos += (32); } else if ((t1 = nfsm_disct(&info.nmi_md, &info.nmi_dpos, (32), t1, &cp2)) != 0) { error = t1; m_freem(info.nmi_mrep); goto nfsmout; } else { (sp) = (struct nfsv2_sattr *)cp2; } };
  va.va_type = (iftovt_tab[((((u_int32_t)((__uint32_t)((int32_t)(sp->sa_mode))))) & 0170000) >> 12]);
  if (va.va_type == VNON)
   va.va_type = VREG;
  va.va_mode = (((u_int16_t)((__uint32_t)((int32_t)((sp->sa_mode)))))&07777);
  switch (va.va_type) {
  case VREG:
   tsize = ((int32_t)((__uint32_t)((int32_t)(sp->sa_size))));
   if (tsize != -1)
    va.va_size = (u_quad_t)tsize;
   break;
  case VCHR:
  case VBLK:
  case VFIFO:
   rdev = (dev_t)((int32_t)((__uint32_t)((int32_t)(sp->sa_size))));
   break;
  default:
   break;
  };
 }
 if (nd.ni_vp == ((void *)0)) {
  if (va.va_type == VREG || va.va_type == VSOCK) {
   vrele(nd.ni_startdir);
   error = VOP_CREATE(nd.ni_dvp, &nd.ni_vp, &nd.ni_cnd, &va);
   if (!error) {
    pool_put(&namei_pool, nd.ni_cnd.cn_pnbuf);
    if (exclusive_flag) {
     exclusive_flag = 0;
     vattr_null(&va);
     __builtin_bcopy((cverf), ((caddr_t)&va.va_atime), (8));
     error = VOP_SETATTR(nd.ni_vp, &va, cred,
      procp);
    }
   }
  } else if (va.va_type == VCHR || va.va_type == VBLK ||
   va.va_type == VFIFO) {
   if (va.va_type == VCHR && rdev == 0xffffffff)
    va.va_type = VFIFO;
   if (va.va_type != VFIFO &&
       (error = suser_ucred(cred))) {
    vrele(nd.ni_startdir);
    if (nd.ni_cnd.cn_flags & 0x000400) {
     pool_put(&namei_pool, nd.ni_cnd.cn_pnbuf);
     nd.ni_cnd.cn_flags &= ~0x000400;
    }
    VOP_ABORTOP(nd.ni_dvp, &nd.ni_cnd);
    vput(nd.ni_dvp);
    { nfsd->nd_repstat = error; if (error && !(nfsd->nd_flag & 0x08)) (void) nfs_rephead(0, nfsd, slp, error, &info.nmi_mreq, &info.nmi_mb); else (void) nfs_rephead((0), nfsd, slp, error, &info.nmi_mreq, &info.nmi_mb); if (info.nmi_mrep != ((void *)0)) { m_freem(info.nmi_mrep); info.nmi_mrep = ((void *)0); } *mrq = info.nmi_mreq; if (error && (!(nfsd->nd_flag & 0x08) || error == 72)) return(0); };
    error = 0;
    goto nfsmout;
   } else
    va.va_rdev = (dev_t)rdev;
   error = VOP_MKNOD(nd.ni_dvp, &nd.ni_vp, &nd.ni_cnd,
       &va);
   if (error) {
    vrele(nd.ni_startdir);
    if (nd.ni_cnd.cn_flags & 0x000400) {
     pool_put(&namei_pool, nd.ni_cnd.cn_pnbuf);
     nd.ni_cnd.cn_flags &= ~0x000400;
    }
    { nfsd->nd_repstat = error; if (error && !(nfsd->nd_flag & 0x08)) (void) nfs_rephead(0, nfsd, slp, error, &info.nmi_mreq, &info.nmi_mb); else (void) nfs_rephead((0), nfsd, slp, error, &info.nmi_mreq, &info.nmi_mb); if (info.nmi_mrep != ((void *)0)) { m_freem(info.nmi_mrep); info.nmi_mrep = ((void *)0); } *mrq = info.nmi_mreq; if (error && (!(nfsd->nd_flag & 0x08) || error == 72)) return(0); };
    error = 0;
    goto nfsmout;
   }
   nd.ni_cnd.cn_nameiop = 0;
   nd.ni_cnd.cn_flags &= ~(0x0008 | 0x001000);
   nd.ni_cnd.cn_proc = procp;
   nd.ni_cnd.cn_cred = cred;
   if ((error = vfs_lookup(&nd)) != 0) {
    if (nd.ni_cnd.cn_flags & 0x000400) {
     pool_put(&namei_pool, nd.ni_cnd.cn_pnbuf);
     nd.ni_cnd.cn_flags &= ~0x000400;
    }
    { nfsd->nd_repstat = error; if (error && !(nfsd->nd_flag & 0x08)) (void) nfs_rephead(0, nfsd, slp, error, &info.nmi_mreq, &info.nmi_mb); else (void) nfs_rephead((0), nfsd, slp, error, &info.nmi_mreq, &info.nmi_mb); if (info.nmi_mrep != ((void *)0)) { m_freem(info.nmi_mrep); info.nmi_mrep = ((void *)0); } *mrq = info.nmi_mreq; if (error && (!(nfsd->nd_flag & 0x08) || error == 72)) return(0); };
    error = 0;
    goto nfsmout;
   }
   pool_put(&namei_pool, nd.ni_cnd.cn_pnbuf);
   if (nd.ni_cnd.cn_flags & 0x010000) {
    vrele(nd.ni_dvp);
    vput(nd.ni_vp);
    VOP_ABORTOP(nd.ni_dvp, &nd.ni_cnd);
    error = 22;
    { nfsd->nd_repstat = error; if (error && !(nfsd->nd_flag & 0x08)) (void) nfs_rephead(0, nfsd, slp, error, &info.nmi_mreq, &info.nmi_mb); else (void) nfs_rephead((0), nfsd, slp, error, &info.nmi_mreq, &info.nmi_mb); if (info.nmi_mrep != ((void *)0)) { m_freem(info.nmi_mrep); info.nmi_mrep = ((void *)0); } *mrq = info.nmi_mreq; if (error && (!(nfsd->nd_flag & 0x08) || error == 72)) return(0); };
    error = 0;
    goto nfsmout;
   }
  } else {
   vrele(nd.ni_startdir);
   pool_put(&namei_pool, nd.ni_cnd.cn_pnbuf);
   nd.ni_cnd.cn_flags &= ~0x000400;
   VOP_ABORTOP(nd.ni_dvp, &nd.ni_cnd);
   vput(nd.ni_dvp);
   error = 6;
  }
  vp = nd.ni_vp;
 } else {
  vrele(nd.ni_startdir);
  pool_put(&namei_pool, nd.ni_cnd.cn_pnbuf);
  nd.ni_cnd.cn_flags &= ~0x000400;
  vp = nd.ni_vp;
  if (nd.ni_dvp == vp)
   vrele(nd.ni_dvp);
  else
   vput(nd.ni_dvp);
  VOP_ABORTOP(nd.ni_dvp, &nd.ni_cnd);
  if (va.va_size != -1) {
   error = nfsrv_access(vp, 00200, cred,
       (nd.ni_cnd.cn_flags & 0x000200), procp, 0);
   if (!error) {
    tempsize = va.va_size;
    vattr_null(&va);
    va.va_size = tempsize;
    error = VOP_SETATTR(vp, &va, cred,
      procp);
   }
   if (error)
    vput(vp);
  }
 }
 if (!error) {
  __builtin_memset((fhp), (0), (sizeof(nfh)));
  fhp->fh_fsid = vp->v_mount->mnt_stat.f_fsid;
  error = (*(vp)->v_mount->mnt_op->vfs_vptofh)(vp, &fhp->fh_fid);
  if (!error)
   error = VOP_GETATTR(vp, &va, cred, procp);
  vput(vp);
 }
 if (info.nmi_v3) {
  if (exclusive_flag && !error &&
   __builtin_bcmp((cverf), ((caddr_t)&va.va_atime), (8)))
   error = 17;
  diraft_ret = VOP_GETATTR(dirp, &diraft, cred, procp);
  vrele(dirp);
 }
 { nfsd->nd_repstat = error; if (error && !(nfsd->nd_flag & 0x08)) (void) nfs_rephead(0, nfsd, slp, error, &info.nmi_mreq, &info.nmi_mb); else (void) nfs_rephead((((info.nmi_v3) ? (sizeof (fhandle_t)) : 32) + ((info.nmi_v3) ? 84 : 68) + ((info.nmi_v3) ? ((84 + 4) + 8 * 4) : 0)), nfsd, slp, error, &info.nmi_mreq, &info.nmi_mb); if (info.nmi_mrep != ((void *)0)) { m_freem(info.nmi_mrep); info.nmi_mrep = ((void *)0); } *mrq = info.nmi_mreq; if (error && (!(nfsd->nd_flag & 0x08) || error == 72)) return(0); };
 if (info.nmi_v3) {
  if (!error) {
   { tl = nfsm_build(&info.nmi_mb, 2 * 4 + (sizeof (fhandle_t))); *tl++ = nfs_true; *tl++ = (((__uint32_t)((int32_t)((sizeof (fhandle_t)))))); __builtin_bcopy(((fhp)), (tl), ((sizeof (fhandle_t)))); };
   nfsm_srvpostop_attr(nfsd, 0, &va, &info);
  }
  nfsm_srvwcc(nfsd, dirfor_ret, &dirfor, diraft_ret, &diraft,
      &info);
 } else {
  nfsm_srvfhtom(&info.nmi_mb, fhp, info.nmi_v3);
  fp = nfsm_build(&info.nmi_mb, 68);
  nfsm_srvfattr(nfsd, &va, fp);
 }
 return (0);
nfsmout:
 if (dirp)
  vrele(dirp);
 if (nd.ni_cnd.cn_nameiop != 0) {
  vrele(nd.ni_startdir);
  if (nd.ni_cnd.cn_flags & 0x000400) {
   pool_put(&namei_pool, nd.ni_cnd.cn_pnbuf);
   nd.ni_cnd.cn_flags &= ~0x000400;
  }
 }
 VOP_ABORTOP(nd.ni_dvp, &nd.ni_cnd);
 if (nd.ni_dvp == nd.ni_vp)
  vrele(nd.ni_dvp);
 else
  vput(nd.ni_dvp);
 if (nd.ni_vp)
  vput(nd.ni_vp);
 return (error);
}
int
nfsrv_mknod(struct nfsrv_descript *nfsd, struct nfssvc_sock *slp,
    struct proc *procp, struct mbuf **mrq)
{
 struct mbuf *nam = nfsd->nd_nam;
 struct ucred *cred = &nfsd->nd_cr;
 struct vattr va, dirfor, diraft;
 struct nfsm_info info;
 u_int32_t *tl;
 struct nameidata nd;
 int32_t t1;
 int error = 0, len, dirfor_ret = 1, diraft_ret = 1;
 u_int32_t major, minor;
 enum vtype vtyp;
 char *cp2;
 struct vnode *vp, *dirp = ((void *)0);
 nfsfh_t nfh;
 fhandle_t *fhp;
 info.nmi_mreq = ((void *)0);
 info.nmi_mrep = nfsd->nd_mrep;
 info.nmi_md = nfsd->nd_md;
 info.nmi_dpos = nfsd->nd_dpos;
 info.nmi_v3 = (nfsd->nd_flag & 0x08);
 fhp = &nfh.fh_generic;
 { if (nfsd->nd_flag & 0x08) { { t1 = ((caddr_t)((info.nmi_md)->m_hdr.mh_data)) + info.nmi_md->m_hdr.mh_len - info.nmi_dpos; if (t1 >= (4)) { (tl) = (u_int32_t *)(info.nmi_dpos); info.nmi_dpos += (4); } else if ((t1 = nfsm_disct(&info.nmi_md, &info.nmi_dpos, (4), t1, &cp2)) != 0) { error = t1; m_freem(info.nmi_mrep); goto nfsmout; } else { (tl) = (u_int32_t *)cp2; } }; if (((int)((__uint32_t)((int32_t)(*tl)))) != (sizeof (fhandle_t))) { error = 72; { nfsd->nd_repstat = error; if (error && !(nfsd->nd_flag & 0x08)) (void) nfs_rephead(0, nfsd, slp, error, &info.nmi_mreq, &info.nmi_mb); else (void) nfs_rephead((0), nfsd, slp, error, &info.nmi_mreq, &info.nmi_mb); if (info.nmi_mrep != ((void *)0)) { m_freem(info.nmi_mrep); info.nmi_mrep = ((void *)0); } *mrq = info.nmi_mreq; if (error && (!(nfsd->nd_flag & 0x08) || error == 72)) return(0); }; } } { t1 = ((caddr_t)((info.nmi_md)->m_hdr.mh_data)) + info.nmi_md->m_hdr.mh_len - info.nmi_dpos; if (t1 >= ((sizeof (fhandle_t)))) { (tl) = (u_int32_t *)(info.nmi_dpos); info.nmi_dpos += ((sizeof (fhandle_t))); } else if ((t1 = nfsm_disct(&info.nmi_md, &info.nmi_dpos, ((sizeof (fhandle_t))), t1, &cp2)) != 0) { error = t1; m_freem(info.nmi_mrep); goto nfsmout; } else { (tl) = (u_int32_t *)cp2; } }; __builtin_bcopy((tl), ((fhp)), ((sizeof (fhandle_t)))); if ((nfsd->nd_flag & 0x08) == 0) { t1 = ((caddr_t)((info.nmi_md)->m_hdr.mh_data)) + info.nmi_md->m_hdr.mh_len - info.nmi_dpos; if (t1 >= (32 - (sizeof (fhandle_t)))) { info.nmi_dpos += (32 - (sizeof (fhandle_t))); } else if ((t1 = nfs_adv(&info.nmi_md, &info.nmi_dpos, (32 - (sizeof (fhandle_t))), t1)) != 0) { error = t1; m_freem(info.nmi_mrep); goto nfsmout; } }; };
 { { t1 = ((caddr_t)((info.nmi_md)->m_hdr.mh_data)) + info.nmi_md->m_hdr.mh_len - info.nmi_dpos; if (t1 >= (4)) { (tl) = (u_int32_t *)(info.nmi_dpos); info.nmi_dpos += (4); } else if ((t1 = nfsm_disct(&info.nmi_md, &info.nmi_dpos, (4), t1, &cp2)) != 0) { error = t1; m_freem(info.nmi_mrep); goto nfsmout; } else { (tl) = (u_int32_t *)cp2; } }; if (((len) = ((int32_t)((__uint32_t)((int32_t)(*tl))))) > 255) error = 63; if ((len) <= 0) error = 72; if (error) { nfsd->nd_repstat = error; if (error && !(nfsd->nd_flag & 0x08)) (void) nfs_rephead(0, nfsd, slp, error, &info.nmi_mreq, &info.nmi_mb); else (void) nfs_rephead((0), nfsd, slp, error, &info.nmi_mreq, &info.nmi_mb); if (info.nmi_mrep != ((void *)0)) { m_freem(info.nmi_mrep); info.nmi_mrep = ((void *)0); } *mrq = info.nmi_mreq; if (error && (!(nfsd->nd_flag & 0x08) || error == 72)) return(0); }; };
 ndinitat(&nd, 1, 0x0008 | 0x0004 | 0x001000, UIO_SYSSPACE, -100, ((void *)0), procp);
 nd.ni_cnd.cn_cred = cred;
 error = nfs_namei(&nd, fhp, len, slp, nam, &info.nmi_md, &info.nmi_dpos, &dirp, procp);
 if (dirp)
  dirfor_ret = VOP_GETATTR(dirp, &dirfor, cred, procp);
 if (error) {
  { nfsd->nd_repstat = error; if (error && !(nfsd->nd_flag & 0x08)) (void) nfs_rephead(0, nfsd, slp, error, &info.nmi_mreq, &info.nmi_mb); else (void) nfs_rephead((((1) ? ((84 + 4) + 8 * 4) : 0)), nfsd, slp, error, &info.nmi_mreq, &info.nmi_mb); if (info.nmi_mrep != ((void *)0)) { m_freem(info.nmi_mrep); info.nmi_mrep = ((void *)0); } *mrq = info.nmi_mreq; if (error && (!(nfsd->nd_flag & 0x08) || error == 72)) return(0); };
  nfsm_srvwcc(nfsd, dirfor_ret, &dirfor, diraft_ret, &diraft,
      &info);
  if (dirp)
   vrele(dirp);
  return (0);
 }
 { t1 = ((caddr_t)((info.nmi_md)->m_hdr.mh_data)) + info.nmi_md->m_hdr.mh_len - info.nmi_dpos; if (t1 >= (4)) { (tl) = (u_int32_t *)(info.nmi_dpos); info.nmi_dpos += (4); } else if ((t1 = nfsm_disct(&info.nmi_md, &info.nmi_dpos, (4), t1, &cp2)) != 0) { error = t1; m_freem(info.nmi_mrep); goto nfsmout; } else { (tl) = (u_int32_t *)cp2; } };
 vtyp = nv3tov_type[((u_int32_t)((__uint32_t)((int32_t)((*tl)))))&0x7];
 if (vtyp != VCHR && vtyp != VBLK && vtyp != VSOCK && vtyp != VFIFO) {
  vrele(nd.ni_startdir);
  pool_put(&namei_pool, nd.ni_cnd.cn_pnbuf);
  error = 10007;
  VOP_ABORTOP(nd.ni_dvp, &nd.ni_cnd);
  if (nd.ni_dvp == nd.ni_vp)
   vrele(nd.ni_dvp);
  else
   vput(nd.ni_dvp);
  if (nd.ni_vp)
   vput(nd.ni_vp);
  goto out;
 }
 vattr_null(&va);
 error = nfsm_srvsattr(&info.nmi_md, &va, info.nmi_mrep, &info.nmi_dpos);
 if (error)
  goto nfsmout;
 if (vtyp == VCHR || vtyp == VBLK) {
  { t1 = ((caddr_t)((info.nmi_md)->m_hdr.mh_data)) + info.nmi_md->m_hdr.mh_len - info.nmi_dpos; if (t1 >= (2 * 4)) { (tl) = (u_int32_t *)(info.nmi_dpos); info.nmi_dpos += (2 * 4); } else if ((t1 = nfsm_disct(&info.nmi_md, &info.nmi_dpos, (2 * 4), t1, &cp2)) != 0) { error = t1; m_freem(info.nmi_mrep); goto nfsmout; } else { (tl) = (u_int32_t *)cp2; } };
  major = ((u_int32_t)((__uint32_t)((int32_t)(*tl++))));
  minor = ((u_int32_t)((__uint32_t)((int32_t)(*tl))));
  va.va_rdev = ((dev_t)((((major) & 0xff) << 8) | ((minor) & 0xff) | (((minor) & 0xffff00) << 8)));
 }
 if (nd.ni_vp) {
  vrele(nd.ni_startdir);
  pool_put(&namei_pool, nd.ni_cnd.cn_pnbuf);
  error = 17;
  VOP_ABORTOP(nd.ni_dvp, &nd.ni_cnd);
  if (nd.ni_dvp == nd.ni_vp)
   vrele(nd.ni_dvp);
  else
   vput(nd.ni_dvp);
  vput(nd.ni_vp);
  goto out;
 }
 va.va_type = vtyp;
 if (vtyp == VSOCK) {
  vrele(nd.ni_startdir);
  error = VOP_CREATE(nd.ni_dvp, &nd.ni_vp, &nd.ni_cnd, &va);
  if (!error)
   pool_put(&namei_pool, nd.ni_cnd.cn_pnbuf);
 } else {
  if (va.va_type != VFIFO &&
      (error = suser_ucred(cred))) {
   vrele(nd.ni_startdir);
   pool_put(&namei_pool, nd.ni_cnd.cn_pnbuf);
   VOP_ABORTOP(nd.ni_dvp, &nd.ni_cnd);
   vput(nd.ni_dvp);
   goto out;
  }
  error = VOP_MKNOD(nd.ni_dvp, &nd.ni_vp, &nd.ni_cnd, &va);
  if (error) {
   vrele(nd.ni_startdir);
   goto out;
  }
  nd.ni_cnd.cn_nameiop = 0;
  nd.ni_cnd.cn_flags &= ~(0x0008 | 0x001000);
  nd.ni_cnd.cn_proc = procp;
  nd.ni_cnd.cn_cred = procp->p_ucred;
  error = vfs_lookup(&nd);
  pool_put(&namei_pool, nd.ni_cnd.cn_pnbuf);
  if (error)
   goto out;
  if (nd.ni_cnd.cn_flags & 0x010000) {
   vrele(nd.ni_dvp);
   vput(nd.ni_vp);
   VOP_ABORTOP(nd.ni_dvp, &nd.ni_cnd);
   error = 22;
  }
 }
out:
 vp = nd.ni_vp;
 if (!error) {
  __builtin_memset((fhp), (0), (sizeof(nfh)));
  fhp->fh_fsid = vp->v_mount->mnt_stat.f_fsid;
  error = (*(vp)->v_mount->mnt_op->vfs_vptofh)(vp, &fhp->fh_fid);
  if (!error)
   error = VOP_GETATTR(vp, &va, cred, procp);
  vput(vp);
 }
 diraft_ret = VOP_GETATTR(dirp, &diraft, cred, procp);
 vrele(dirp);
 { nfsd->nd_repstat = error; if (error && !(nfsd->nd_flag & 0x08)) (void) nfs_rephead(0, nfsd, slp, error, &info.nmi_mreq, &info.nmi_mb); else (void) nfs_rephead((((1) ? (sizeof (fhandle_t)) : 32) + ((1) ? (84 + 4) : 0) + ((1) ? ((84 + 4) + 8 * 4) : 0)), nfsd, slp, error, &info.nmi_mreq, &info.nmi_mb); if (info.nmi_mrep != ((void *)0)) { m_freem(info.nmi_mrep); info.nmi_mrep = ((void *)0); } *mrq = info.nmi_mreq; if (error && (!(nfsd->nd_flag & 0x08) || error == 72)) return(0); };
 if (!error) {
  { tl = nfsm_build(&info.nmi_mb, 2 * 4 + (sizeof (fhandle_t))); *tl++ = nfs_true; *tl++ = (((__uint32_t)((int32_t)((sizeof (fhandle_t)))))); __builtin_bcopy(((fhp)), (tl), ((sizeof (fhandle_t)))); };
  nfsm_srvpostop_attr(nfsd, 0, &va, &info);
 }
 nfsm_srvwcc(nfsd, dirfor_ret, &dirfor, diraft_ret, &diraft, &info);
 return (0);
nfsmout:
 if (dirp)
  vrele(dirp);
 if (nd.ni_cnd.cn_nameiop) {
  vrele(nd.ni_startdir);
  pool_put(&namei_pool, nd.ni_cnd.cn_pnbuf);
 }
 VOP_ABORTOP(nd.ni_dvp, &nd.ni_cnd);
 if (nd.ni_dvp == nd.ni_vp)
  vrele(nd.ni_dvp);
 else
  vput(nd.ni_dvp);
 if (nd.ni_vp)
  vput(nd.ni_vp);
 return (error);
}
int
nfsrv_remove(struct nfsrv_descript *nfsd, struct nfssvc_sock *slp,
    struct proc *procp, struct mbuf **mrq)
{
 struct mbuf *nam = nfsd->nd_nam;
 struct ucred *cred = &nfsd->nd_cr;
 struct nameidata nd;
 struct nfsm_info info;
 u_int32_t *tl;
 int32_t t1;
 int error = 0, len, dirfor_ret = 1, diraft_ret = 1;
 char *cp2;
 struct vnode *vp, *dirp;
 struct vattr dirfor, diraft;
 nfsfh_t nfh;
 fhandle_t *fhp;
 info.nmi_mreq = ((void *)0);
 info.nmi_mrep = nfsd->nd_mrep;
 info.nmi_md = nfsd->nd_md;
 info.nmi_dpos = nfsd->nd_dpos;
 info.nmi_v3 = (nfsd->nd_flag & 0x08);
 vp = ((void *)0);
 fhp = &nfh.fh_generic;
 { if (nfsd->nd_flag & 0x08) { { t1 = ((caddr_t)((info.nmi_md)->m_hdr.mh_data)) + info.nmi_md->m_hdr.mh_len - info.nmi_dpos; if (t1 >= (4)) { (tl) = (u_int32_t *)(info.nmi_dpos); info.nmi_dpos += (4); } else if ((t1 = nfsm_disct(&info.nmi_md, &info.nmi_dpos, (4), t1, &cp2)) != 0) { error = t1; m_freem(info.nmi_mrep); goto nfsmout; } else { (tl) = (u_int32_t *)cp2; } }; if (((int)((__uint32_t)((int32_t)(*tl)))) != (sizeof (fhandle_t))) { error = 72; { nfsd->nd_repstat = error; if (error && !(nfsd->nd_flag & 0x08)) (void) nfs_rephead(0, nfsd, slp, error, &info.nmi_mreq, &info.nmi_mb); else (void) nfs_rephead((0), nfsd, slp, error, &info.nmi_mreq, &info.nmi_mb); if (info.nmi_mrep != ((void *)0)) { m_freem(info.nmi_mrep); info.nmi_mrep = ((void *)0); } *mrq = info.nmi_mreq; if (error && (!(nfsd->nd_flag & 0x08) || error == 72)) return(0); }; } } { t1 = ((caddr_t)((info.nmi_md)->m_hdr.mh_data)) + info.nmi_md->m_hdr.mh_len - info.nmi_dpos; if (t1 >= ((sizeof (fhandle_t)))) { (tl) = (u_int32_t *)(info.nmi_dpos); info.nmi_dpos += ((sizeof (fhandle_t))); } else if ((t1 = nfsm_disct(&info.nmi_md, &info.nmi_dpos, ((sizeof (fhandle_t))), t1, &cp2)) != 0) { error = t1; m_freem(info.nmi_mrep); goto nfsmout; } else { (tl) = (u_int32_t *)cp2; } }; __builtin_bcopy((tl), ((fhp)), ((sizeof (fhandle_t)))); if ((nfsd->nd_flag & 0x08) == 0) { t1 = ((caddr_t)((info.nmi_md)->m_hdr.mh_data)) + info.nmi_md->m_hdr.mh_len - info.nmi_dpos; if (t1 >= (32 - (sizeof (fhandle_t)))) { info.nmi_dpos += (32 - (sizeof (fhandle_t))); } else if ((t1 = nfs_adv(&info.nmi_md, &info.nmi_dpos, (32 - (sizeof (fhandle_t))), t1)) != 0) { error = t1; m_freem(info.nmi_mrep); goto nfsmout; } }; };
 { { t1 = ((caddr_t)((info.nmi_md)->m_hdr.mh_data)) + info.nmi_md->m_hdr.mh_len - info.nmi_dpos; if (t1 >= (4)) { (tl) = (u_int32_t *)(info.nmi_dpos); info.nmi_dpos += (4); } else if ((t1 = nfsm_disct(&info.nmi_md, &info.nmi_dpos, (4), t1, &cp2)) != 0) { error = t1; m_freem(info.nmi_mrep); goto nfsmout; } else { (tl) = (u_int32_t *)cp2; } }; if (((len) = ((int32_t)((__uint32_t)((int32_t)(*tl))))) > 255) error = 63; if ((len) <= 0) error = 72; if (error) { nfsd->nd_repstat = error; if (error && !(nfsd->nd_flag & 0x08)) (void) nfs_rephead(0, nfsd, slp, error, &info.nmi_mreq, &info.nmi_mb); else (void) nfs_rephead((0), nfsd, slp, error, &info.nmi_mreq, &info.nmi_mb); if (info.nmi_mrep != ((void *)0)) { m_freem(info.nmi_mrep); info.nmi_mrep = ((void *)0); } *mrq = info.nmi_mreq; if (error && (!(nfsd->nd_flag & 0x08) || error == 72)) return(0); }; };
  ndinitat(&nd, 2, 0x0008 | 0x0004, UIO_SYSSPACE, -100, ((void *)0), procp);
 nd.ni_cnd.cn_cred = cred;
 error = nfs_namei(&nd, fhp, len, slp, nam, &info.nmi_md, &info.nmi_dpos, &dirp, procp);
 if (dirp) {
  if (info.nmi_v3)
   dirfor_ret = VOP_GETATTR(dirp, &dirfor, cred, procp);
  else {
   vrele(dirp);
   dirp = ((void *)0);
  }
 }
 if (!error) {
  vp = nd.ni_vp;
  if (vp->v_type == VDIR &&
      (error = suser_ucred(cred)) != 0)
   goto out;
  if (vp->v_flag & 0x0001) {
   error = 16;
   goto out;
  }
  if (vp->v_flag & 0x0002)
   uvm_vnp_uncache(vp);
out:
  if (!error) {
   error = VOP_REMOVE(nd.ni_dvp, nd.ni_vp, &nd.ni_cnd);
  } else {
   VOP_ABORTOP(nd.ni_dvp, &nd.ni_cnd);
   if (nd.ni_dvp == vp)
    vrele(nd.ni_dvp);
   else
    vput(nd.ni_dvp);
   vput(vp);
  }
 }
 if (dirp && info.nmi_v3) {
  diraft_ret = VOP_GETATTR(dirp, &diraft, cred, procp);
  vrele(dirp);
 }
 { nfsd->nd_repstat = error; if (error && !(nfsd->nd_flag & 0x08)) (void) nfs_rephead(0, nfsd, slp, error, &info.nmi_mreq, &info.nmi_mb); else (void) nfs_rephead((((info.nmi_v3) ? ((84 + 4) + 8 * 4) : 0)), nfsd, slp, error, &info.nmi_mreq, &info.nmi_mb); if (info.nmi_mrep != ((void *)0)) { m_freem(info.nmi_mrep); info.nmi_mrep = ((void *)0); } *mrq = info.nmi_mreq; if (error && (!(nfsd->nd_flag & 0x08) || error == 72)) return(0); };
 if (info.nmi_v3) {
  nfsm_srvwcc(nfsd, dirfor_ret, &dirfor, diraft_ret, &diraft,
      &info);
  return (0);
 }
nfsmout:
 return(error);
}
int
nfsrv_rename(struct nfsrv_descript *nfsd, struct nfssvc_sock *slp,
    struct proc *procp, struct mbuf **mrq)
{
 struct mbuf *nam = nfsd->nd_nam;
 struct ucred *cred = &nfsd->nd_cr;
 struct nfsm_info info;
 u_int32_t *tl;
 int32_t t1;
 int error = 0, len, len2, fdirfor_ret = 1, fdiraft_ret = 1;
 int tdirfor_ret = 1, tdiraft_ret = 1;
 char *cp2;
 struct nameidata fromnd, tond;
 struct vnode *fvp = ((void *)0), *tvp, *tdvp, *fdirp = ((void *)0);
 struct vnode *tdirp = ((void *)0);
 struct vattr fdirfor, fdiraft, tdirfor, tdiraft;
 nfsfh_t fnfh, tnfh;
 fhandle_t *ffhp, *tfhp;
 uid_t saved_uid;
 info.nmi_mreq = ((void *)0);
 info.nmi_mrep = nfsd->nd_mrep;
 info.nmi_md = nfsd->nd_md;
 info.nmi_dpos = nfsd->nd_dpos;
 info.nmi_v3 = (nfsd->nd_flag & 0x08);
 ffhp = &fnfh.fh_generic;
 tfhp = &tnfh.fh_generic;
 { if (nfsd->nd_flag & 0x08) { { t1 = ((caddr_t)((info.nmi_md)->m_hdr.mh_data)) + info.nmi_md->m_hdr.mh_len - info.nmi_dpos; if (t1 >= (4)) { (tl) = (u_int32_t *)(info.nmi_dpos); info.nmi_dpos += (4); } else if ((t1 = nfsm_disct(&info.nmi_md, &info.nmi_dpos, (4), t1, &cp2)) != 0) { error = t1; m_freem(info.nmi_mrep); goto nfsmout; } else { (tl) = (u_int32_t *)cp2; } }; if (((int)((__uint32_t)((int32_t)(*tl)))) != (sizeof (fhandle_t))) { error = 72; { nfsd->nd_repstat = error; if (error && !(nfsd->nd_flag & 0x08)) (void) nfs_rephead(0, nfsd, slp, error, &info.nmi_mreq, &info.nmi_mb); else (void) nfs_rephead((0), nfsd, slp, error, &info.nmi_mreq, &info.nmi_mb); if (info.nmi_mrep != ((void *)0)) { m_freem(info.nmi_mrep); info.nmi_mrep = ((void *)0); } *mrq = info.nmi_mreq; if (error && (!(nfsd->nd_flag & 0x08) || error == 72)) return(0); }; } } { t1 = ((caddr_t)((info.nmi_md)->m_hdr.mh_data)) + info.nmi_md->m_hdr.mh_len - info.nmi_dpos; if (t1 >= ((sizeof (fhandle_t)))) { (tl) = (u_int32_t *)(info.nmi_dpos); info.nmi_dpos += ((sizeof (fhandle_t))); } else if ((t1 = nfsm_disct(&info.nmi_md, &info.nmi_dpos, ((sizeof (fhandle_t))), t1, &cp2)) != 0) { error = t1; m_freem(info.nmi_mrep); goto nfsmout; } else { (tl) = (u_int32_t *)cp2; } }; __builtin_bcopy((tl), ((ffhp)), ((sizeof (fhandle_t)))); if ((nfsd->nd_flag & 0x08) == 0) { t1 = ((caddr_t)((info.nmi_md)->m_hdr.mh_data)) + info.nmi_md->m_hdr.mh_len - info.nmi_dpos; if (t1 >= (32 - (sizeof (fhandle_t)))) { info.nmi_dpos += (32 - (sizeof (fhandle_t))); } else if ((t1 = nfs_adv(&info.nmi_md, &info.nmi_dpos, (32 - (sizeof (fhandle_t))), t1)) != 0) { error = t1; m_freem(info.nmi_mrep); goto nfsmout; } }; };
 { { t1 = ((caddr_t)((info.nmi_md)->m_hdr.mh_data)) + info.nmi_md->m_hdr.mh_len - info.nmi_dpos; if (t1 >= (4)) { (tl) = (u_int32_t *)(info.nmi_dpos); info.nmi_dpos += (4); } else if ((t1 = nfsm_disct(&info.nmi_md, &info.nmi_dpos, (4), t1, &cp2)) != 0) { error = t1; m_freem(info.nmi_mrep); goto nfsmout; } else { (tl) = (u_int32_t *)cp2; } }; if (((len) = ((int32_t)((__uint32_t)((int32_t)(*tl))))) > 255) error = 63; if ((len) <= 0) error = 72; if (error) { nfsd->nd_repstat = error; if (error && !(nfsd->nd_flag & 0x08)) (void) nfs_rephead(0, nfsd, slp, error, &info.nmi_mreq, &info.nmi_mb); else (void) nfs_rephead((0), nfsd, slp, error, &info.nmi_mreq, &info.nmi_mb); if (info.nmi_mrep != ((void *)0)) { m_freem(info.nmi_mrep); info.nmi_mrep = ((void *)0); } *mrq = info.nmi_mreq; if (error && (!(nfsd->nd_flag & 0x08) || error == 72)) return(0); }; };
 saved_uid = cred->cr_uid;
 ndinitat(&fromnd, 2, 0x0010 | 0x001000, UIO_SYSSPACE, -100, ((void *)0), procp);
 fromnd.ni_cnd.cn_cred = cred;
 error = nfs_namei(&fromnd, ffhp, len, slp, nam, &info.nmi_md,
     &info.nmi_dpos, &fdirp, procp);
 if (fdirp) {
  if (info.nmi_v3)
   fdirfor_ret = VOP_GETATTR(fdirp, &fdirfor, cred,
    procp);
  else {
   vrele(fdirp);
   fdirp = ((void *)0);
  }
 }
 if (error) {
  { nfsd->nd_repstat = error; if (error && !(nfsd->nd_flag & 0x08)) (void) nfs_rephead(0, nfsd, slp, error, &info.nmi_mreq, &info.nmi_mb); else (void) nfs_rephead((2 * ((info.nmi_v3) ? ((84 + 4) + 8 * 4) : 0)), nfsd, slp, error, &info.nmi_mreq, &info.nmi_mb); if (info.nmi_mrep != ((void *)0)) { m_freem(info.nmi_mrep); info.nmi_mrep = ((void *)0); } *mrq = info.nmi_mreq; if (error && (!(nfsd->nd_flag & 0x08) || error == 72)) return(0); };
  nfsm_srvwcc(nfsd, fdirfor_ret, &fdirfor, fdiraft_ret, &fdiraft,
      &info);
  nfsm_srvwcc(nfsd, tdirfor_ret, &tdirfor, tdiraft_ret, &tdiraft,
      &info);
  if (fdirp)
   vrele(fdirp);
  return (0);
 }
 fvp = fromnd.ni_vp;
 { if (nfsd->nd_flag & 0x08) { { t1 = ((caddr_t)((info.nmi_md)->m_hdr.mh_data)) + info.nmi_md->m_hdr.mh_len - info.nmi_dpos; if (t1 >= (4)) { (tl) = (u_int32_t *)(info.nmi_dpos); info.nmi_dpos += (4); } else if ((t1 = nfsm_disct(&info.nmi_md, &info.nmi_dpos, (4), t1, &cp2)) != 0) { error = t1; m_freem(info.nmi_mrep); goto nfsmout; } else { (tl) = (u_int32_t *)cp2; } }; if (((int)((__uint32_t)((int32_t)(*tl)))) != (sizeof (fhandle_t))) { error = 72; { nfsd->nd_repstat = error; if (error && !(nfsd->nd_flag & 0x08)) (void) nfs_rephead(0, nfsd, slp, error, &info.nmi_mreq, &info.nmi_mb); else (void) nfs_rephead((0), nfsd, slp, error, &info.nmi_mreq, &info.nmi_mb); if (info.nmi_mrep != ((void *)0)) { m_freem(info.nmi_mrep); info.nmi_mrep = ((void *)0); } *mrq = info.nmi_mreq; if (error && (!(nfsd->nd_flag & 0x08) || error == 72)) return(0); }; } } { t1 = ((caddr_t)((info.nmi_md)->m_hdr.mh_data)) + info.nmi_md->m_hdr.mh_len - info.nmi_dpos; if (t1 >= ((sizeof (fhandle_t)))) { (tl) = (u_int32_t *)(info.nmi_dpos); info.nmi_dpos += ((sizeof (fhandle_t))); } else if ((t1 = nfsm_disct(&info.nmi_md, &info.nmi_dpos, ((sizeof (fhandle_t))), t1, &cp2)) != 0) { error = t1; m_freem(info.nmi_mrep); goto nfsmout; } else { (tl) = (u_int32_t *)cp2; } }; __builtin_bcopy((tl), ((tfhp)), ((sizeof (fhandle_t)))); if ((nfsd->nd_flag & 0x08) == 0) { t1 = ((caddr_t)((info.nmi_md)->m_hdr.mh_data)) + info.nmi_md->m_hdr.mh_len - info.nmi_dpos; if (t1 >= (32 - (sizeof (fhandle_t)))) { info.nmi_dpos += (32 - (sizeof (fhandle_t))); } else if ((t1 = nfs_adv(&info.nmi_md, &info.nmi_dpos, (32 - (sizeof (fhandle_t))), t1)) != 0) { error = t1; m_freem(info.nmi_mrep); goto nfsmout; } }; };
 { { t1 = ((caddr_t)((info.nmi_md)->m_hdr.mh_data)) + info.nmi_md->m_hdr.mh_len - info.nmi_dpos; if (t1 >= (4)) { (tl) = (u_int32_t *)(info.nmi_dpos); info.nmi_dpos += (4); } else if ((t1 = nfsm_disct(&info.nmi_md, &info.nmi_dpos, (4), t1, &cp2)) != 0) { error = t1; m_freem(info.nmi_mrep); goto nfsmout; } else { (tl) = (u_int32_t *)cp2; } }; if (((len2) = ((int32_t)((__uint32_t)((int32_t)(*tl))))) > (255)) { m_freem(info.nmi_mrep); error = 72; goto nfsmout; } };
 cred->cr_uid = saved_uid;
 ndinitat(&tond, 3, 0x0008 | 0x0004| 0x0020 | 0x001000, UIO_SYSSPACE, -100, ((void *)0), procp);
 tond.ni_cnd.cn_cred = cred;
 error = nfs_namei(&tond, tfhp, len2, slp, nam, &info.nmi_md,
     &info.nmi_dpos, &tdirp, procp);
 if (tdirp) {
  if (info.nmi_v3)
   tdirfor_ret = VOP_GETATTR(tdirp, &tdirfor, cred,
    procp);
  else {
   vrele(tdirp);
   tdirp = ((void *)0);
  }
 }
 if (error) {
  VOP_ABORTOP(fromnd.ni_dvp, &fromnd.ni_cnd);
  vrele(fromnd.ni_dvp);
  vrele(fvp);
  goto out1;
 }
 tdvp = tond.ni_dvp;
 tvp = tond.ni_vp;
 if (tvp != ((void *)0)) {
  if (fvp->v_type == VDIR && tvp->v_type != VDIR) {
   error = info.nmi_v3 ? 17 : 21;
   goto out;
  } else if (fvp->v_type != VDIR && tvp->v_type == VDIR) {
   error = info.nmi_v3 ? 17 : 20;
   goto out;
  }
  if (tvp->v_type == VDIR && tvp->v_un.vu_mountedhere) {
   error = info.nmi_v3 ? 18 : 66;
   goto out;
  }
 }
 if (fvp->v_type == VDIR && fvp->v_un.vu_mountedhere) {
  error = info.nmi_v3 ? 18 : 66;
  goto out;
 }
 if (fvp->v_mount != tdvp->v_mount) {
  error = info.nmi_v3 ? 18 : 66;
  goto out;
 }
 if (fvp == tdvp)
  error = info.nmi_v3 ? 22 : 66;
 if (fvp == tvp && fromnd.ni_dvp == tdvp &&
     fromnd.ni_cnd.cn_namelen == tond.ni_cnd.cn_namelen &&
     !__builtin_bcmp((fromnd.ni_cnd.cn_nameptr), (tond.ni_cnd.cn_nameptr), (fromnd.ni_cnd.cn_namelen)))
  error = -1;
out:
 if (!error) {
  error = VOP_RENAME(fromnd.ni_dvp, fromnd.ni_vp, &fromnd.ni_cnd,
       tond.ni_dvp, tond.ni_vp, &tond.ni_cnd);
 } else {
  VOP_ABORTOP(tond.ni_dvp, &tond.ni_cnd);
  if (tdvp == tvp)
   vrele(tdvp);
  else
   vput(tdvp);
  if (tvp)
   vput(tvp);
  VOP_ABORTOP(fromnd.ni_dvp, &fromnd.ni_cnd);
  vrele(fromnd.ni_dvp);
  vrele(fvp);
  if (error == -1)
   error = 0;
 }
 vrele(tond.ni_startdir);
 pool_put(&namei_pool, tond.ni_cnd.cn_pnbuf);
out1:
 if (fdirp) {
  fdiraft_ret = VOP_GETATTR(fdirp, &fdiraft, cred, procp);
  vrele(fdirp);
 }
 if (tdirp) {
  tdiraft_ret = VOP_GETATTR(tdirp, &tdiraft, cred, procp);
  vrele(tdirp);
 }
 vrele(fromnd.ni_startdir);
 pool_put(&namei_pool, fromnd.ni_cnd.cn_pnbuf);
 { nfsd->nd_repstat = error; if (error && !(nfsd->nd_flag & 0x08)) (void) nfs_rephead(0, nfsd, slp, error, &info.nmi_mreq, &info.nmi_mb); else (void) nfs_rephead((2 * ((info.nmi_v3) ? ((84 + 4) + 8 * 4) : 0)), nfsd, slp, error, &info.nmi_mreq, &info.nmi_mb); if (info.nmi_mrep != ((void *)0)) { m_freem(info.nmi_mrep); info.nmi_mrep = ((void *)0); } *mrq = info.nmi_mreq; if (error && (!(nfsd->nd_flag & 0x08) || error == 72)) return(0); };
 if (info.nmi_v3) {
  nfsm_srvwcc(nfsd, fdirfor_ret, &fdirfor, fdiraft_ret, &fdiraft,
      &info);
  nfsm_srvwcc(nfsd, tdirfor_ret, &tdirfor, tdiraft_ret, &tdiraft,
      &info);
 }
 return (0);
nfsmout:
 if (fdirp)
  vrele(fdirp);
 if (tdirp)
  vrele(tdirp);
 if (tond.ni_cnd.cn_nameiop) {
  vrele(tond.ni_startdir);
  pool_put(&namei_pool, tond.ni_cnd.cn_pnbuf);
 }
 if (fromnd.ni_cnd.cn_nameiop) {
  if (fromnd.ni_startdir)
   vrele(fromnd.ni_startdir);
  VOP_ABORTOP(fromnd.ni_dvp, &fromnd.ni_cnd);
  if (fromnd.ni_dvp != ((void *)0) && fromnd.ni_dvp != fdirp)
   vrele(fromnd.ni_dvp);
  if (fvp)
   vrele(fvp);
 }
 return (error);
}
int
nfsrv_link(struct nfsrv_descript *nfsd, struct nfssvc_sock *slp,
    struct proc *procp, struct mbuf **mrq)
{
 struct mbuf *nam = nfsd->nd_nam;
 struct nfsm_info info;
 struct ucred *cred = &nfsd->nd_cr;
 struct nameidata nd;
 u_int32_t *tl;
 int32_t t1;
 int error = 0, rdonly, len, dirfor_ret = 1, diraft_ret = 1;
 int getret = 1;
 char *cp2;
 struct vnode *vp, *xp, *dirp = ((void *)0);
 struct vattr dirfor, diraft, at;
 nfsfh_t nfh, dnfh;
 fhandle_t *fhp, *dfhp;
 info.nmi_mreq = ((void *)0);
 info.nmi_mrep = nfsd->nd_mrep;
 info.nmi_md = nfsd->nd_md;
 info.nmi_dpos = nfsd->nd_dpos;
 info.nmi_v3 = (nfsd->nd_flag & 0x08);
 fhp = &nfh.fh_generic;
 dfhp = &dnfh.fh_generic;
 { if (nfsd->nd_flag & 0x08) { { t1 = ((caddr_t)((info.nmi_md)->m_hdr.mh_data)) + info.nmi_md->m_hdr.mh_len - info.nmi_dpos; if (t1 >= (4)) { (tl) = (u_int32_t *)(info.nmi_dpos); info.nmi_dpos += (4); } else if ((t1 = nfsm_disct(&info.nmi_md, &info.nmi_dpos, (4), t1, &cp2)) != 0) { error = t1; m_freem(info.nmi_mrep); goto nfsmout; } else { (tl) = (u_int32_t *)cp2; } }; if (((int)((__uint32_t)((int32_t)(*tl)))) != (sizeof (fhandle_t))) { error = 72; { nfsd->nd_repstat = error; if (error && !(nfsd->nd_flag & 0x08)) (void) nfs_rephead(0, nfsd, slp, error, &info.nmi_mreq, &info.nmi_mb); else (void) nfs_rephead((0), nfsd, slp, error, &info.nmi_mreq, &info.nmi_mb); if (info.nmi_mrep != ((void *)0)) { m_freem(info.nmi_mrep); info.nmi_mrep = ((void *)0); } *mrq = info.nmi_mreq; if (error && (!(nfsd->nd_flag & 0x08) || error == 72)) return(0); }; } } { t1 = ((caddr_t)((info.nmi_md)->m_hdr.mh_data)) + info.nmi_md->m_hdr.mh_len - info.nmi_dpos; if (t1 >= ((sizeof (fhandle_t)))) { (tl) = (u_int32_t *)(info.nmi_dpos); info.nmi_dpos += ((sizeof (fhandle_t))); } else if ((t1 = nfsm_disct(&info.nmi_md, &info.nmi_dpos, ((sizeof (fhandle_t))), t1, &cp2)) != 0) { error = t1; m_freem(info.nmi_mrep); goto nfsmout; } else { (tl) = (u_int32_t *)cp2; } }; __builtin_bcopy((tl), ((fhp)), ((sizeof (fhandle_t)))); if ((nfsd->nd_flag & 0x08) == 0) { t1 = ((caddr_t)((info.nmi_md)->m_hdr.mh_data)) + info.nmi_md->m_hdr.mh_len - info.nmi_dpos; if (t1 >= (32 - (sizeof (fhandle_t)))) { info.nmi_dpos += (32 - (sizeof (fhandle_t))); } else if ((t1 = nfs_adv(&info.nmi_md, &info.nmi_dpos, (32 - (sizeof (fhandle_t))), t1)) != 0) { error = t1; m_freem(info.nmi_mrep); goto nfsmout; } }; };
 { if (nfsd->nd_flag & 0x08) { { t1 = ((caddr_t)((info.nmi_md)->m_hdr.mh_data)) + info.nmi_md->m_hdr.mh_len - info.nmi_dpos; if (t1 >= (4)) { (tl) = (u_int32_t *)(info.nmi_dpos); info.nmi_dpos += (4); } else if ((t1 = nfsm_disct(&info.nmi_md, &info.nmi_dpos, (4), t1, &cp2)) != 0) { error = t1; m_freem(info.nmi_mrep); goto nfsmout; } else { (tl) = (u_int32_t *)cp2; } }; if (((int)((__uint32_t)((int32_t)(*tl)))) != (sizeof (fhandle_t))) { error = 72; { nfsd->nd_repstat = error; if (error && !(nfsd->nd_flag & 0x08)) (void) nfs_rephead(0, nfsd, slp, error, &info.nmi_mreq, &info.nmi_mb); else (void) nfs_rephead((0), nfsd, slp, error, &info.nmi_mreq, &info.nmi_mb); if (info.nmi_mrep != ((void *)0)) { m_freem(info.nmi_mrep); info.nmi_mrep = ((void *)0); } *mrq = info.nmi_mreq; if (error && (!(nfsd->nd_flag & 0x08) || error == 72)) return(0); }; } } { t1 = ((caddr_t)((info.nmi_md)->m_hdr.mh_data)) + info.nmi_md->m_hdr.mh_len - info.nmi_dpos; if (t1 >= ((sizeof (fhandle_t)))) { (tl) = (u_int32_t *)(info.nmi_dpos); info.nmi_dpos += ((sizeof (fhandle_t))); } else if ((t1 = nfsm_disct(&info.nmi_md, &info.nmi_dpos, ((sizeof (fhandle_t))), t1, &cp2)) != 0) { error = t1; m_freem(info.nmi_mrep); goto nfsmout; } else { (tl) = (u_int32_t *)cp2; } }; __builtin_bcopy((tl), ((dfhp)), ((sizeof (fhandle_t)))); if ((nfsd->nd_flag & 0x08) == 0) { t1 = ((caddr_t)((info.nmi_md)->m_hdr.mh_data)) + info.nmi_md->m_hdr.mh_len - info.nmi_dpos; if (t1 >= (32 - (sizeof (fhandle_t)))) { info.nmi_dpos += (32 - (sizeof (fhandle_t))); } else if ((t1 = nfs_adv(&info.nmi_md, &info.nmi_dpos, (32 - (sizeof (fhandle_t))), t1)) != 0) { error = t1; m_freem(info.nmi_mrep); goto nfsmout; } }; };
 { { t1 = ((caddr_t)((info.nmi_md)->m_hdr.mh_data)) + info.nmi_md->m_hdr.mh_len - info.nmi_dpos; if (t1 >= (4)) { (tl) = (u_int32_t *)(info.nmi_dpos); info.nmi_dpos += (4); } else if ((t1 = nfsm_disct(&info.nmi_md, &info.nmi_dpos, (4), t1, &cp2)) != 0) { error = t1; m_freem(info.nmi_mrep); goto nfsmout; } else { (tl) = (u_int32_t *)cp2; } }; if (((len) = ((int32_t)((__uint32_t)((int32_t)(*tl))))) > 255) error = 63; if ((len) <= 0) error = 72; if (error) { nfsd->nd_repstat = error; if (error && !(nfsd->nd_flag & 0x08)) (void) nfs_rephead(0, nfsd, slp, error, &info.nmi_mreq, &info.nmi_mb); else (void) nfs_rephead((0), nfsd, slp, error, &info.nmi_mreq, &info.nmi_mb); if (info.nmi_mrep != ((void *)0)) { m_freem(info.nmi_mrep); info.nmi_mrep = ((void *)0); } *mrq = info.nmi_mreq; if (error && (!(nfsd->nd_flag & 0x08) || error == 72)) return(0); }; };
 error = nfsrv_fhtovp(fhp, 0, &vp, cred, slp, nam, &rdonly);
 if (error) {
  { nfsd->nd_repstat = error; if (error && !(nfsd->nd_flag & 0x08)) (void) nfs_rephead(0, nfsd, slp, error, &info.nmi_mreq, &info.nmi_mb); else (void) nfs_rephead((((info.nmi_v3) ? (84 + 4) : 0) + ((info.nmi_v3) ? ((84 + 4) + 8 * 4) : 0)), nfsd, slp, error, &info.nmi_mreq, &info.nmi_mb); if (info.nmi_mrep != ((void *)0)) { m_freem(info.nmi_mrep); info.nmi_mrep = ((void *)0); } *mrq = info.nmi_mreq; if (error && (!(nfsd->nd_flag & 0x08) || error == 72)) return(0); };
  nfsm_srvpostop_attr(nfsd, getret, &at, &info);
  nfsm_srvwcc(nfsd, dirfor_ret, &dirfor, diraft_ret, &diraft,
      &info);
  error = 0;
  goto nfsmout;
 }
 if (vp->v_type == VDIR && (error = suser_ucred(cred)) != 0)
  goto out1;
 ndinitat(&nd, 1, 0x0008, UIO_SYSSPACE, -100, ((void *)0), procp);
 nd.ni_cnd.cn_cred = cred;
 error = nfs_namei(&nd, dfhp, len, slp, nam, &info.nmi_md,
     &info.nmi_dpos, &dirp, procp);
 if (dirp) {
  if (info.nmi_v3)
   dirfor_ret = VOP_GETATTR(dirp, &dirfor, cred,
    procp);
  else {
   vrele(dirp);
   dirp = ((void *)0);
  }
 }
 if (error)
  goto out1;
 xp = nd.ni_vp;
 if (xp != ((void *)0)) {
  error = 17;
  goto out;
 }
 xp = nd.ni_dvp;
 if (vp->v_mount != xp->v_mount)
  error = 18;
out:
 if (!error) {
  error = VOP_LINK(nd.ni_dvp, vp, &nd.ni_cnd);
 } else {
  VOP_ABORTOP(nd.ni_dvp, &nd.ni_cnd);
  if (nd.ni_dvp == nd.ni_vp)
   vrele(nd.ni_dvp);
  else
   vput(nd.ni_dvp);
  if (nd.ni_vp)
   vrele(nd.ni_vp);
 }
out1:
 if (info.nmi_v3)
  getret = VOP_GETATTR(vp, &at, cred, procp);
 if (dirp) {
  diraft_ret = VOP_GETATTR(dirp, &diraft, cred, procp);
  vrele(dirp);
 }
 vrele(vp);
 { nfsd->nd_repstat = error; if (error && !(nfsd->nd_flag & 0x08)) (void) nfs_rephead(0, nfsd, slp, error, &info.nmi_mreq, &info.nmi_mb); else (void) nfs_rephead((((info.nmi_v3) ? (84 + 4) : 0) + ((info.nmi_v3) ? ((84 + 4) + 8 * 4) : 0)), nfsd, slp, error, &info.nmi_mreq, &info.nmi_mb); if (info.nmi_mrep != ((void *)0)) { m_freem(info.nmi_mrep); info.nmi_mrep = ((void *)0); } *mrq = info.nmi_mreq; if (error && (!(nfsd->nd_flag & 0x08) || error == 72)) return(0); };
 if (info.nmi_v3) {
  nfsm_srvpostop_attr(nfsd, getret, &at, &info);
  nfsm_srvwcc(nfsd, dirfor_ret, &dirfor, diraft_ret, &diraft,
       &info);
  error = 0;
 }
nfsmout:
 return(error);
}
int
nfsrv_symlink(struct nfsrv_descript *nfsd, struct nfssvc_sock *slp,
    struct proc *procp, struct mbuf **mrq)
{
 struct mbuf *nam = nfsd->nd_nam;
 struct ucred *cred = &nfsd->nd_cr;
 struct vattr va, dirfor, diraft;
 struct nameidata nd;
 struct nfsm_info info;
 u_int32_t *tl;
 int32_t t1;
 struct nfsv2_sattr *sp;
 char *pathcp = ((void *)0), *cp2;
 struct uio io;
 struct iovec iv;
 int error = 0, len, pathlen, len2, dirfor_ret = 1, diraft_ret = 1;
 struct vnode *dirp = ((void *)0);
 nfsfh_t nfh;
 fhandle_t *fhp;
 info.nmi_mreq = ((void *)0);
 info.nmi_mrep = nfsd->nd_mrep;
 info.nmi_md = nfsd->nd_md;
 info.nmi_dpos = nfsd->nd_dpos;
 info.nmi_v3 = (nfsd->nd_flag & 0x08);
 fhp = &nfh.fh_generic;
 { if (nfsd->nd_flag & 0x08) { { t1 = ((caddr_t)((info.nmi_md)->m_hdr.mh_data)) + info.nmi_md->m_hdr.mh_len - info.nmi_dpos; if (t1 >= (4)) { (tl) = (u_int32_t *)(info.nmi_dpos); info.nmi_dpos += (4); } else if ((t1 = nfsm_disct(&info.nmi_md, &info.nmi_dpos, (4), t1, &cp2)) != 0) { error = t1; m_freem(info.nmi_mrep); goto nfsmout; } else { (tl) = (u_int32_t *)cp2; } }; if (((int)((__uint32_t)((int32_t)(*tl)))) != (sizeof (fhandle_t))) { error = 72; { nfsd->nd_repstat = error; if (error && !(nfsd->nd_flag & 0x08)) (void) nfs_rephead(0, nfsd, slp, error, &info.nmi_mreq, &info.nmi_mb); else (void) nfs_rephead((0), nfsd, slp, error, &info.nmi_mreq, &info.nmi_mb); if (info.nmi_mrep != ((void *)0)) { m_freem(info.nmi_mrep); info.nmi_mrep = ((void *)0); } *mrq = info.nmi_mreq; if (error && (!(nfsd->nd_flag & 0x08) || error == 72)) return(0); }; } } { t1 = ((caddr_t)((info.nmi_md)->m_hdr.mh_data)) + info.nmi_md->m_hdr.mh_len - info.nmi_dpos; if (t1 >= ((sizeof (fhandle_t)))) { (tl) = (u_int32_t *)(info.nmi_dpos); info.nmi_dpos += ((sizeof (fhandle_t))); } else if ((t1 = nfsm_disct(&info.nmi_md, &info.nmi_dpos, ((sizeof (fhandle_t))), t1, &cp2)) != 0) { error = t1; m_freem(info.nmi_mrep); goto nfsmout; } else { (tl) = (u_int32_t *)cp2; } }; __builtin_bcopy((tl), ((fhp)), ((sizeof (fhandle_t)))); if ((nfsd->nd_flag & 0x08) == 0) { t1 = ((caddr_t)((info.nmi_md)->m_hdr.mh_data)) + info.nmi_md->m_hdr.mh_len - info.nmi_dpos; if (t1 >= (32 - (sizeof (fhandle_t)))) { info.nmi_dpos += (32 - (sizeof (fhandle_t))); } else if ((t1 = nfs_adv(&info.nmi_md, &info.nmi_dpos, (32 - (sizeof (fhandle_t))), t1)) != 0) { error = t1; m_freem(info.nmi_mrep); goto nfsmout; } }; };
 { { t1 = ((caddr_t)((info.nmi_md)->m_hdr.mh_data)) + info.nmi_md->m_hdr.mh_len - info.nmi_dpos; if (t1 >= (4)) { (tl) = (u_int32_t *)(info.nmi_dpos); info.nmi_dpos += (4); } else if ((t1 = nfsm_disct(&info.nmi_md, &info.nmi_dpos, (4), t1, &cp2)) != 0) { error = t1; m_freem(info.nmi_mrep); goto nfsmout; } else { (tl) = (u_int32_t *)cp2; } }; if (((len) = ((int32_t)((__uint32_t)((int32_t)(*tl))))) > 255) error = 63; if ((len) <= 0) error = 72; if (error) { nfsd->nd_repstat = error; if (error && !(nfsd->nd_flag & 0x08)) (void) nfs_rephead(0, nfsd, slp, error, &info.nmi_mreq, &info.nmi_mb); else (void) nfs_rephead((0), nfsd, slp, error, &info.nmi_mreq, &info.nmi_mb); if (info.nmi_mrep != ((void *)0)) { m_freem(info.nmi_mrep); info.nmi_mrep = ((void *)0); } *mrq = info.nmi_mreq; if (error && (!(nfsd->nd_flag & 0x08) || error == 72)) return(0); }; };
 ndinitat(&nd, 1, 0x0008 | 0x001000, UIO_SYSSPACE, -100, ((void *)0), procp);
 nd.ni_cnd.cn_cred = cred;
 error = nfs_namei(&nd, fhp, len, slp, nam, &info.nmi_md,
     &info.nmi_dpos, &dirp, procp);
 if (dirp) {
  if (info.nmi_v3)
   dirfor_ret = VOP_GETATTR(dirp, &dirfor, cred,
    procp);
  else {
   vrele(dirp);
   dirp = ((void *)0);
  }
 }
 if (error)
  goto out;
 vattr_null(&va);
 if (info.nmi_v3) {
  error = nfsm_srvsattr(&info.nmi_md, &va, info.nmi_mrep,
      &info.nmi_dpos);
  if (error)
   goto nfsmout;
 }
 { { t1 = ((caddr_t)((info.nmi_md)->m_hdr.mh_data)) + info.nmi_md->m_hdr.mh_len - info.nmi_dpos; if (t1 >= (4)) { (tl) = (u_int32_t *)(info.nmi_dpos); info.nmi_dpos += (4); } else if ((t1 = nfsm_disct(&info.nmi_md, &info.nmi_dpos, (4), t1, &cp2)) != 0) { error = t1; m_freem(info.nmi_mrep); goto nfsmout; } else { (tl) = (u_int32_t *)cp2; } }; if (((len2) = ((int32_t)((__uint32_t)((int32_t)(*tl))))) > (1024)) { m_freem(info.nmi_mrep); error = 72; goto nfsmout; } };
 pathlen = len2 + 1;
 pathcp = malloc(pathlen, 127, 0x0001);
 iv.iov_base = pathcp;
 iv.iov_len = len2;
 io.uio_resid = len2;
 io.uio_offset = 0;
 io.uio_iov = &iv;
 io.uio_iovcnt = 1;
 io.uio_segflg = UIO_SYSSPACE;
 io.uio_rw = UIO_READ;
 io.uio_procp = ((void *)0);
 if ((len2) > 0 && (t1 = nfsm_mbuftouio(&info.nmi_md, (&io), (len2), &info.nmi_dpos)) != 0) { error = t1; m_freem(info.nmi_mrep); goto nfsmout; };
 if (!info.nmi_v3) {
  { t1 = ((caddr_t)((info.nmi_md)->m_hdr.mh_data)) + info.nmi_md->m_hdr.mh_len - info.nmi_dpos; if (t1 >= (32)) { (sp) = (struct nfsv2_sattr *)(info.nmi_dpos); info.nmi_dpos += (32); } else if ((t1 = nfsm_disct(&info.nmi_md, &info.nmi_dpos, (32), t1, &cp2)) != 0) { error = t1; m_freem(info.nmi_mrep); goto nfsmout; } else { (sp) = (struct nfsv2_sattr *)cp2; } };
  va.va_mode = ((u_int16_t)((__uint32_t)((int32_t)(sp->sa_mode))));
 }
 *(pathcp + len2) = '\0';
 if (nd.ni_vp) {
  vrele(nd.ni_startdir);
  pool_put(&namei_pool, nd.ni_cnd.cn_pnbuf);
  VOP_ABORTOP(nd.ni_dvp, &nd.ni_cnd);
  if (nd.ni_dvp == nd.ni_vp)
   vrele(nd.ni_dvp);
  else
   vput(nd.ni_dvp);
  vrele(nd.ni_vp);
  error = 17;
  goto out;
 }
 error = VOP_SYMLINK(nd.ni_dvp, &nd.ni_vp, &nd.ni_cnd, &va, pathcp);
 if (error)
  vrele(nd.ni_startdir);
 else {
  if (info.nmi_v3) {
   nd.ni_cnd.cn_nameiop = 0;
   nd.ni_cnd.cn_flags &= ~(0x0008 | 0x001000 |
       0x0040);
   nd.ni_cnd.cn_flags |= (0x0000 | 0x0004);
   nd.ni_cnd.cn_proc = procp;
   nd.ni_cnd.cn_cred = cred;
   error = vfs_lookup(&nd);
   if (!error) {
    __builtin_memset((fhp), (0), (sizeof(nfh)));
    fhp->fh_fsid =
        nd.ni_vp->v_mount->mnt_stat.f_fsid;
    error = (*(nd.ni_vp)->v_mount->mnt_op->vfs_vptofh)(nd.ni_vp, &fhp->fh_fid);
    if (!error)
     error = VOP_GETATTR(nd.ni_vp, &va, cred,
         procp);
    vput(nd.ni_vp);
   }
  } else
   vrele(nd.ni_startdir);
  pool_put(&namei_pool, nd.ni_cnd.cn_pnbuf);
 }
out:
 if (pathcp)
  free(pathcp, 127, pathlen);
 if (dirp) {
  diraft_ret = VOP_GETATTR(dirp, &diraft, cred, procp);
  vrele(dirp);
 }
 { nfsd->nd_repstat = error; if (error && !(nfsd->nd_flag & 0x08)) (void) nfs_rephead(0, nfsd, slp, error, &info.nmi_mreq, &info.nmi_mb); else (void) nfs_rephead((((info.nmi_v3) ? (sizeof (fhandle_t)) : 32) + ((info.nmi_v3) ? (84 + 4) : 0) + ((info.nmi_v3) ? ((84 + 4) + 8 * 4) : 0)), nfsd, slp, error, &info.nmi_mreq, &info.nmi_mb); if (info.nmi_mrep != ((void *)0)) { m_freem(info.nmi_mrep); info.nmi_mrep = ((void *)0); } *mrq = info.nmi_mreq; if (error && (!(nfsd->nd_flag & 0x08) || error == 72)) return(0); };
 if (info.nmi_v3) {
  if (!error) {
   { tl = nfsm_build(&info.nmi_mb, 2 * 4 + (sizeof (fhandle_t))); *tl++ = nfs_true; *tl++ = (((__uint32_t)((int32_t)((sizeof (fhandle_t)))))); __builtin_bcopy(((fhp)), (tl), ((sizeof (fhandle_t)))); };
   nfsm_srvpostop_attr(nfsd, 0, &va, &info);
  }
  nfsm_srvwcc(nfsd, dirfor_ret, &dirfor, diraft_ret, &diraft,
      &info);
 }
 return (0);
nfsmout:
 if (nd.ni_cnd.cn_nameiop) {
  vrele(nd.ni_startdir);
  pool_put(&namei_pool, nd.ni_cnd.cn_pnbuf);
 }
 if (dirp)
  vrele(dirp);
 VOP_ABORTOP(nd.ni_dvp, &nd.ni_cnd);
 if (nd.ni_dvp == nd.ni_vp)
  vrele(nd.ni_dvp);
 else
  vput(nd.ni_dvp);
 if (nd.ni_vp)
  vrele(nd.ni_vp);
 if (pathcp)
  free(pathcp, 127, pathlen);
 return (error);
}
int
nfsrv_mkdir(struct nfsrv_descript *nfsd, struct nfssvc_sock *slp,
    struct proc *procp, struct mbuf **mrq)
{
 struct mbuf *nam = nfsd->nd_nam;
 struct ucred *cred = &nfsd->nd_cr;
 struct vattr va, dirfor, diraft;
 struct nfs_fattr *fp;
 struct nameidata nd;
 struct nfsm_info info;
 u_int32_t *tl;
 int32_t t1;
 int error = 0, len, dirfor_ret = 1, diraft_ret = 1;
 char *cp2;
 struct vnode *vp, *dirp = ((void *)0);
 nfsfh_t nfh;
 fhandle_t *fhp;
 info.nmi_mreq = ((void *)0);
 info.nmi_mrep = nfsd->nd_mrep;
 info.nmi_md = nfsd->nd_md;
 info.nmi_dpos = nfsd->nd_dpos;
 info.nmi_v3 = (nfsd->nd_flag & 0x08);
 fhp = &nfh.fh_generic;
 { if (nfsd->nd_flag & 0x08) { { t1 = ((caddr_t)((info.nmi_md)->m_hdr.mh_data)) + info.nmi_md->m_hdr.mh_len - info.nmi_dpos; if (t1 >= (4)) { (tl) = (u_int32_t *)(info.nmi_dpos); info.nmi_dpos += (4); } else if ((t1 = nfsm_disct(&info.nmi_md, &info.nmi_dpos, (4), t1, &cp2)) != 0) { error = t1; m_freem(info.nmi_mrep); goto nfsmout; } else { (tl) = (u_int32_t *)cp2; } }; if (((int)((__uint32_t)((int32_t)(*tl)))) != (sizeof (fhandle_t))) { error = 72; { nfsd->nd_repstat = error; if (error && !(nfsd->nd_flag & 0x08)) (void) nfs_rephead(0, nfsd, slp, error, &info.nmi_mreq, &info.nmi_mb); else (void) nfs_rephead((0), nfsd, slp, error, &info.nmi_mreq, &info.nmi_mb); if (info.nmi_mrep != ((void *)0)) { m_freem(info.nmi_mrep); info.nmi_mrep = ((void *)0); } *mrq = info.nmi_mreq; if (error && (!(nfsd->nd_flag & 0x08) || error == 72)) return(0); }; } } { t1 = ((caddr_t)((info.nmi_md)->m_hdr.mh_data)) + info.nmi_md->m_hdr.mh_len - info.nmi_dpos; if (t1 >= ((sizeof (fhandle_t)))) { (tl) = (u_int32_t *)(info.nmi_dpos); info.nmi_dpos += ((sizeof (fhandle_t))); } else if ((t1 = nfsm_disct(&info.nmi_md, &info.nmi_dpos, ((sizeof (fhandle_t))), t1, &cp2)) != 0) { error = t1; m_freem(info.nmi_mrep); goto nfsmout; } else { (tl) = (u_int32_t *)cp2; } }; __builtin_bcopy((tl), ((fhp)), ((sizeof (fhandle_t)))); if ((nfsd->nd_flag & 0x08) == 0) { t1 = ((caddr_t)((info.nmi_md)->m_hdr.mh_data)) + info.nmi_md->m_hdr.mh_len - info.nmi_dpos; if (t1 >= (32 - (sizeof (fhandle_t)))) { info.nmi_dpos += (32 - (sizeof (fhandle_t))); } else if ((t1 = nfs_adv(&info.nmi_md, &info.nmi_dpos, (32 - (sizeof (fhandle_t))), t1)) != 0) { error = t1; m_freem(info.nmi_mrep); goto nfsmout; } }; };
 { { t1 = ((caddr_t)((info.nmi_md)->m_hdr.mh_data)) + info.nmi_md->m_hdr.mh_len - info.nmi_dpos; if (t1 >= (4)) { (tl) = (u_int32_t *)(info.nmi_dpos); info.nmi_dpos += (4); } else if ((t1 = nfsm_disct(&info.nmi_md, &info.nmi_dpos, (4), t1, &cp2)) != 0) { error = t1; m_freem(info.nmi_mrep); goto nfsmout; } else { (tl) = (u_int32_t *)cp2; } }; if (((len) = ((int32_t)((__uint32_t)((int32_t)(*tl))))) > 255) error = 63; if ((len) <= 0) error = 72; if (error) { nfsd->nd_repstat = error; if (error && !(nfsd->nd_flag & 0x08)) (void) nfs_rephead(0, nfsd, slp, error, &info.nmi_mreq, &info.nmi_mb); else (void) nfs_rephead((0), nfsd, slp, error, &info.nmi_mreq, &info.nmi_mb); if (info.nmi_mrep != ((void *)0)) { m_freem(info.nmi_mrep); info.nmi_mrep = ((void *)0); } *mrq = info.nmi_mreq; if (error && (!(nfsd->nd_flag & 0x08) || error == 72)) return(0); }; };
 ndinitat(&nd, 1, 0x0008, UIO_SYSSPACE, -100, ((void *)0), procp);
 nd.ni_cnd.cn_cred = cred;
 error = nfs_namei(&nd, fhp, len, slp, nam, &info.nmi_md,
     &info.nmi_dpos, &dirp, procp);
 if (dirp) {
  if (info.nmi_v3)
   dirfor_ret = VOP_GETATTR(dirp, &dirfor, cred, procp);
  else {
   vrele(dirp);
   dirp = ((void *)0);
  }
 }
 if (error) {
  { nfsd->nd_repstat = error; if (error && !(nfsd->nd_flag & 0x08)) (void) nfs_rephead(0, nfsd, slp, error, &info.nmi_mreq, &info.nmi_mb); else (void) nfs_rephead((((info.nmi_v3) ? ((84 + 4) + 8 * 4) : 0)), nfsd, slp, error, &info.nmi_mreq, &info.nmi_mb); if (info.nmi_mrep != ((void *)0)) { m_freem(info.nmi_mrep); info.nmi_mrep = ((void *)0); } *mrq = info.nmi_mreq; if (error && (!(nfsd->nd_flag & 0x08) || error == 72)) return(0); };
  nfsm_srvwcc(nfsd, dirfor_ret, &dirfor, diraft_ret, &diraft,
      &info);
  if (dirp)
   vrele(dirp);
  return (0);
 }
 vattr_null(&va);
 if (info.nmi_v3) {
  error = nfsm_srvsattr(&info.nmi_md, &va, info.nmi_mrep,
      &info.nmi_dpos);
  if (error)
   goto nfsmout;
 } else {
  { t1 = ((caddr_t)((info.nmi_md)->m_hdr.mh_data)) + info.nmi_md->m_hdr.mh_len - info.nmi_dpos; if (t1 >= (4)) { (tl) = (u_int32_t *)(info.nmi_dpos); info.nmi_dpos += (4); } else if ((t1 = nfsm_disct(&info.nmi_md, &info.nmi_dpos, (4), t1, &cp2)) != 0) { error = t1; m_freem(info.nmi_mrep); goto nfsmout; } else { (tl) = (u_int32_t *)cp2; } };
  va.va_mode = (((u_int16_t)((__uint32_t)((int32_t)((*tl++)))))&07777);
 }
 va.va_type = VDIR;
 vp = nd.ni_vp;
 if (vp != ((void *)0)) {
  VOP_ABORTOP(nd.ni_dvp, &nd.ni_cnd);
  if (nd.ni_dvp == vp)
   vrele(nd.ni_dvp);
  else
   vput(nd.ni_dvp);
  vrele(vp);
  error = 17;
  goto out;
 }
 error = VOP_MKDIR(nd.ni_dvp, &nd.ni_vp, &nd.ni_cnd, &va);
 if (!error) {
  vp = nd.ni_vp;
  __builtin_memset((fhp), (0), (sizeof(nfh)));
  fhp->fh_fsid = vp->v_mount->mnt_stat.f_fsid;
  error = (*(vp)->v_mount->mnt_op->vfs_vptofh)(vp, &fhp->fh_fid);
  if (!error)
   error = VOP_GETATTR(vp, &va, cred, procp);
  vput(vp);
 }
out:
 if (dirp) {
  diraft_ret = VOP_GETATTR(dirp, &diraft, cred, procp);
  vrele(dirp);
 }
 { nfsd->nd_repstat = error; if (error && !(nfsd->nd_flag & 0x08)) (void) nfs_rephead(0, nfsd, slp, error, &info.nmi_mreq, &info.nmi_mb); else (void) nfs_rephead((((info.nmi_v3) ? (sizeof (fhandle_t)) : 32) + ((info.nmi_v3) ? (84 + 4) : 0) + ((info.nmi_v3) ? ((84 + 4) + 8 * 4) : 0)), nfsd, slp, error, &info.nmi_mreq, &info.nmi_mb); if (info.nmi_mrep != ((void *)0)) { m_freem(info.nmi_mrep); info.nmi_mrep = ((void *)0); } *mrq = info.nmi_mreq; if (error && (!(nfsd->nd_flag & 0x08) || error == 72)) return(0); };
 if (info.nmi_v3) {
  if (!error) {
   { tl = nfsm_build(&info.nmi_mb, 2 * 4 + (sizeof (fhandle_t))); *tl++ = nfs_true; *tl++ = (((__uint32_t)((int32_t)((sizeof (fhandle_t)))))); __builtin_bcopy(((fhp)), (tl), ((sizeof (fhandle_t)))); };
   nfsm_srvpostop_attr(nfsd, 0, &va, &info);
  }
  nfsm_srvwcc(nfsd, dirfor_ret, &dirfor, diraft_ret, &diraft,
      &info);
 } else {
  nfsm_srvfhtom(&info.nmi_mb, fhp, info.nmi_v3);
  fp = nfsm_build(&info.nmi_mb, 68);
  nfsm_srvfattr(nfsd, &va, fp);
 }
 return (0);
nfsmout:
 if (dirp)
  vrele(dirp);
 VOP_ABORTOP(nd.ni_dvp, &nd.ni_cnd);
 if (nd.ni_dvp == nd.ni_vp)
  vrele(nd.ni_dvp);
 else
  vput(nd.ni_dvp);
 if (nd.ni_vp)
  vrele(nd.ni_vp);
 return (error);
}
int
nfsrv_rmdir(struct nfsrv_descript *nfsd, struct nfssvc_sock *slp,
    struct proc *procp, struct mbuf **mrq)
{
 struct mbuf *nam = nfsd->nd_nam;
 struct ucred *cred = &nfsd->nd_cr;
 struct nfsm_info info;
 u_int32_t *tl;
 int32_t t1;
 int error = 0, len, dirfor_ret = 1, diraft_ret = 1;
 char *cp2;
 struct vnode *vp, *dirp = ((void *)0);
 struct vattr dirfor, diraft;
 nfsfh_t nfh;
 fhandle_t *fhp;
 struct nameidata nd;
 info.nmi_mreq = ((void *)0);
 info.nmi_mrep = nfsd->nd_mrep;
 info.nmi_md = nfsd->nd_md;
 info.nmi_dpos = nfsd->nd_dpos;
 info.nmi_v3 = (nfsd->nd_flag & 0x08);
 fhp = &nfh.fh_generic;
 { if (nfsd->nd_flag & 0x08) { { t1 = ((caddr_t)((info.nmi_md)->m_hdr.mh_data)) + info.nmi_md->m_hdr.mh_len - info.nmi_dpos; if (t1 >= (4)) { (tl) = (u_int32_t *)(info.nmi_dpos); info.nmi_dpos += (4); } else if ((t1 = nfsm_disct(&info.nmi_md, &info.nmi_dpos, (4), t1, &cp2)) != 0) { error = t1; m_freem(info.nmi_mrep); goto nfsmout; } else { (tl) = (u_int32_t *)cp2; } }; if (((int)((__uint32_t)((int32_t)(*tl)))) != (sizeof (fhandle_t))) { error = 72; { nfsd->nd_repstat = error; if (error && !(nfsd->nd_flag & 0x08)) (void) nfs_rephead(0, nfsd, slp, error, &info.nmi_mreq, &info.nmi_mb); else (void) nfs_rephead((0), nfsd, slp, error, &info.nmi_mreq, &info.nmi_mb); if (info.nmi_mrep != ((void *)0)) { m_freem(info.nmi_mrep); info.nmi_mrep = ((void *)0); } *mrq = info.nmi_mreq; if (error && (!(nfsd->nd_flag & 0x08) || error == 72)) return(0); }; } } { t1 = ((caddr_t)((info.nmi_md)->m_hdr.mh_data)) + info.nmi_md->m_hdr.mh_len - info.nmi_dpos; if (t1 >= ((sizeof (fhandle_t)))) { (tl) = (u_int32_t *)(info.nmi_dpos); info.nmi_dpos += ((sizeof (fhandle_t))); } else if ((t1 = nfsm_disct(&info.nmi_md, &info.nmi_dpos, ((sizeof (fhandle_t))), t1, &cp2)) != 0) { error = t1; m_freem(info.nmi_mrep); goto nfsmout; } else { (tl) = (u_int32_t *)cp2; } }; __builtin_bcopy((tl), ((fhp)), ((sizeof (fhandle_t)))); if ((nfsd->nd_flag & 0x08) == 0) { t1 = ((caddr_t)((info.nmi_md)->m_hdr.mh_data)) + info.nmi_md->m_hdr.mh_len - info.nmi_dpos; if (t1 >= (32 - (sizeof (fhandle_t)))) { info.nmi_dpos += (32 - (sizeof (fhandle_t))); } else if ((t1 = nfs_adv(&info.nmi_md, &info.nmi_dpos, (32 - (sizeof (fhandle_t))), t1)) != 0) { error = t1; m_freem(info.nmi_mrep); goto nfsmout; } }; };
 { { t1 = ((caddr_t)((info.nmi_md)->m_hdr.mh_data)) + info.nmi_md->m_hdr.mh_len - info.nmi_dpos; if (t1 >= (4)) { (tl) = (u_int32_t *)(info.nmi_dpos); info.nmi_dpos += (4); } else if ((t1 = nfsm_disct(&info.nmi_md, &info.nmi_dpos, (4), t1, &cp2)) != 0) { error = t1; m_freem(info.nmi_mrep); goto nfsmout; } else { (tl) = (u_int32_t *)cp2; } }; if (((len) = ((int32_t)((__uint32_t)((int32_t)(*tl))))) > 255) error = 63; if ((len) <= 0) error = 72; if (error) { nfsd->nd_repstat = error; if (error && !(nfsd->nd_flag & 0x08)) (void) nfs_rephead(0, nfsd, slp, error, &info.nmi_mreq, &info.nmi_mb); else (void) nfs_rephead((0), nfsd, slp, error, &info.nmi_mreq, &info.nmi_mb); if (info.nmi_mrep != ((void *)0)) { m_freem(info.nmi_mrep); info.nmi_mrep = ((void *)0); } *mrq = info.nmi_mreq; if (error && (!(nfsd->nd_flag & 0x08) || error == 72)) return(0); }; };
 ndinitat(&nd, 2, 0x0008 | 0x0004, UIO_SYSSPACE, -100, ((void *)0), procp);
 nd.ni_cnd.cn_cred = cred;
 error = nfs_namei(&nd, fhp, len, slp, nam, &info.nmi_md,
     &info.nmi_dpos, &dirp, procp);
 if (dirp) {
  if (info.nmi_v3)
   dirfor_ret = VOP_GETATTR(dirp, &dirfor, cred,
    procp);
  else {
   vrele(dirp);
   dirp = ((void *)0);
  }
 }
 if (error) {
  { nfsd->nd_repstat = error; if (error && !(nfsd->nd_flag & 0x08)) (void) nfs_rephead(0, nfsd, slp, error, &info.nmi_mreq, &info.nmi_mb); else (void) nfs_rephead((((info.nmi_v3) ? ((84 + 4) + 8 * 4) : 0)), nfsd, slp, error, &info.nmi_mreq, &info.nmi_mb); if (info.nmi_mrep != ((void *)0)) { m_freem(info.nmi_mrep); info.nmi_mrep = ((void *)0); } *mrq = info.nmi_mreq; if (error && (!(nfsd->nd_flag & 0x08) || error == 72)) return(0); };
  nfsm_srvwcc(nfsd, dirfor_ret, &dirfor, diraft_ret, &diraft,
      &info);
  if (dirp)
   vrele(dirp);
  return (0);
 }
 vp = nd.ni_vp;
 if (vp->v_type != VDIR) {
  error = 20;
  goto out;
 }
 if (nd.ni_dvp == vp) {
  error = 22;
  goto out;
 }
 if (vp->v_flag & 0x0001)
  error = 16;
out:
 if (!error) {
  error = VOP_RMDIR(nd.ni_dvp, nd.ni_vp, &nd.ni_cnd);
 } else {
  VOP_ABORTOP(nd.ni_dvp, &nd.ni_cnd);
  if (nd.ni_dvp == nd.ni_vp)
   vrele(nd.ni_dvp);
  else
   vput(nd.ni_dvp);
  vput(vp);
 }
 if (dirp) {
  diraft_ret = VOP_GETATTR(dirp, &diraft, cred, procp);
  vrele(dirp);
 }
 { nfsd->nd_repstat = error; if (error && !(nfsd->nd_flag & 0x08)) (void) nfs_rephead(0, nfsd, slp, error, &info.nmi_mreq, &info.nmi_mb); else (void) nfs_rephead((((info.nmi_v3) ? ((84 + 4) + 8 * 4) : 0)), nfsd, slp, error, &info.nmi_mreq, &info.nmi_mb); if (info.nmi_mrep != ((void *)0)) { m_freem(info.nmi_mrep); info.nmi_mrep = ((void *)0); } *mrq = info.nmi_mreq; if (error && (!(nfsd->nd_flag & 0x08) || error == 72)) return(0); };
 if (info.nmi_v3) {
  nfsm_srvwcc(nfsd, dirfor_ret, &dirfor, diraft_ret, &diraft,
      &info);
  error = 0;
 }
nfsmout:
 return(error);
}
struct flrep {
 nfsuint64 fl_off;
 u_int32_t fl_postopok;
 u_int32_t fl_fattr[84 / sizeof (u_int32_t)];
 u_int32_t fl_fhok;
 u_int32_t fl_fhsize;
 u_int32_t fl_nfh[(sizeof (fhandle_t)) / sizeof (u_int32_t)];
};
int
nfsrv_readdir(struct nfsrv_descript *nfsd, struct nfssvc_sock *slp,
    struct proc *procp, struct mbuf **mrq)
{
 struct mbuf *nam = nfsd->nd_nam;
 struct ucred *cred = &nfsd->nd_cr;
 struct dirent *dp;
 struct nfsm_info info;
 u_int32_t *tl;
 int32_t t1;
 char *cpos, *cend, *cp2, *rbuf;
 struct vnode *vp;
 struct vattr at;
 nfsfh_t nfh;
 fhandle_t *fhp;
 struct uio io;
 struct iovec iv;
 int len, nlen, pad, xfer, error = 0, getret = 1;
 int siz, cnt, fullsiz, eofflag, rdonly;
 u_quad_t off, toff, verf;
 info.nmi_mreq = ((void *)0);
 info.nmi_mrep = nfsd->nd_mrep;
 info.nmi_md = nfsd->nd_md;
 info.nmi_dpos = nfsd->nd_dpos;
 info.nmi_v3 = (nfsd->nd_flag & 0x08);
 fhp = &nfh.fh_generic;
 { if (nfsd->nd_flag & 0x08) { { t1 = ((caddr_t)((info.nmi_md)->m_hdr.mh_data)) + info.nmi_md->m_hdr.mh_len - info.nmi_dpos; if (t1 >= (4)) { (tl) = (u_int32_t *)(info.nmi_dpos); info.nmi_dpos += (4); } else if ((t1 = nfsm_disct(&info.nmi_md, &info.nmi_dpos, (4), t1, &cp2)) != 0) { error = t1; m_freem(info.nmi_mrep); goto nfsmout; } else { (tl) = (u_int32_t *)cp2; } }; if (((int)((__uint32_t)((int32_t)(*tl)))) != (sizeof (fhandle_t))) { error = 72; { nfsd->nd_repstat = error; if (error && !(nfsd->nd_flag & 0x08)) (void) nfs_rephead(0, nfsd, slp, error, &info.nmi_mreq, &info.nmi_mb); else (void) nfs_rephead((0), nfsd, slp, error, &info.nmi_mreq, &info.nmi_mb); if (info.nmi_mrep != ((void *)0)) { m_freem(info.nmi_mrep); info.nmi_mrep = ((void *)0); } *mrq = info.nmi_mreq; if (error && (!(nfsd->nd_flag & 0x08) || error == 72)) return(0); }; } } { t1 = ((caddr_t)((info.nmi_md)->m_hdr.mh_data)) + info.nmi_md->m_hdr.mh_len - info.nmi_dpos; if (t1 >= ((sizeof (fhandle_t)))) { (tl) = (u_int32_t *)(info.nmi_dpos); info.nmi_dpos += ((sizeof (fhandle_t))); } else if ((t1 = nfsm_disct(&info.nmi_md, &info.nmi_dpos, ((sizeof (fhandle_t))), t1, &cp2)) != 0) { error = t1; m_freem(info.nmi_mrep); goto nfsmout; } else { (tl) = (u_int32_t *)cp2; } }; __builtin_bcopy((tl), ((fhp)), ((sizeof (fhandle_t)))); if ((nfsd->nd_flag & 0x08) == 0) { t1 = ((caddr_t)((info.nmi_md)->m_hdr.mh_data)) + info.nmi_md->m_hdr.mh_len - info.nmi_dpos; if (t1 >= (32 - (sizeof (fhandle_t)))) { info.nmi_dpos += (32 - (sizeof (fhandle_t))); } else if ((t1 = nfs_adv(&info.nmi_md, &info.nmi_dpos, (32 - (sizeof (fhandle_t))), t1)) != 0) { error = t1; m_freem(info.nmi_mrep); goto nfsmout; } }; };
 if (info.nmi_v3) {
  { t1 = ((caddr_t)((info.nmi_md)->m_hdr.mh_data)) + info.nmi_md->m_hdr.mh_len - info.nmi_dpos; if (t1 >= (5 * 4)) { (tl) = (u_int32_t *)(info.nmi_dpos); info.nmi_dpos += (5 * 4); } else if ((t1 = nfsm_disct(&info.nmi_md, &info.nmi_dpos, (5 * 4), t1, &cp2)) != 0) { error = t1; m_freem(info.nmi_mrep); goto nfsmout; } else { (tl) = (u_int32_t *)cp2; } };
  toff = ((((u_quad_t)((__uint32_t)(((u_int32_t *)(tl))[0]))) << 32) | (u_quad_t)(((__uint32_t)(((u_int32_t *)(tl))[1]))));
  tl += 2;
  verf = ((((u_quad_t)((__uint32_t)(((u_int32_t *)(tl))[0]))) << 32) | (u_quad_t)(((__uint32_t)(((u_int32_t *)(tl))[1]))));
  tl += 2;
 } else {
  { t1 = ((caddr_t)((info.nmi_md)->m_hdr.mh_data)) + info.nmi_md->m_hdr.mh_len - info.nmi_dpos; if (t1 >= (2 * 4)) { (tl) = (u_int32_t *)(info.nmi_dpos); info.nmi_dpos += (2 * 4); } else if ((t1 = nfsm_disct(&info.nmi_md, &info.nmi_dpos, (2 * 4), t1, &cp2)) != 0) { error = t1; m_freem(info.nmi_mrep); goto nfsmout; } else { (tl) = (u_int32_t *)cp2; } };
  toff = ((u_quad_t)((__uint32_t)((int32_t)(*tl++))));
 }
 off = toff;
 cnt = ((int)((__uint32_t)((int32_t)(*tl))));
 siz = ((cnt + (1 << 9) - 1) & ~((1 << 9) - 1));
 xfer = (((nfsd)->nd_flag & 0x08) ? (((nfsd)->nd_nam2) ? 32768 : (64 * 1024)) : 8192);
 if (siz > xfer)
  siz = xfer;
 if (cnt > xfer)
  cnt = xfer;
 fullsiz = siz;
 error = nfsrv_fhtovp(fhp, 1, &vp, cred, slp, nam, &rdonly);
 if (error) {
  { nfsd->nd_repstat = error; if (error && !(nfsd->nd_flag & 0x08)) (void) nfs_rephead(0, nfsd, slp, error, &info.nmi_mreq, &info.nmi_mb); else (void) nfs_rephead((4), nfsd, slp, error, &info.nmi_mreq, &info.nmi_mb); if (info.nmi_mrep != ((void *)0)) { m_freem(info.nmi_mrep); info.nmi_mrep = ((void *)0); } *mrq = info.nmi_mreq; if (error && (!(nfsd->nd_flag & 0x08) || error == 72)) return(0); };
  nfsm_srvpostop_attr(nfsd, getret, &at, &info);
  error = 0;
  goto nfsmout;
 }
 if (info.nmi_v3)
  error = getret = VOP_GETATTR(vp, &at, cred, procp);
 if (!error)
  error = nfsrv_access(vp, 00100, cred, rdonly, procp, 0);
 if (error) {
  vput(vp);
  { nfsd->nd_repstat = error; if (error && !(nfsd->nd_flag & 0x08)) (void) nfs_rephead(0, nfsd, slp, error, &info.nmi_mreq, &info.nmi_mb); else (void) nfs_rephead((((info.nmi_v3) ? (84 + 4) : 0)), nfsd, slp, error, &info.nmi_mreq, &info.nmi_mb); if (info.nmi_mrep != ((void *)0)) { m_freem(info.nmi_mrep); info.nmi_mrep = ((void *)0); } *mrq = info.nmi_mreq; if (error && (!(nfsd->nd_flag & 0x08) || error == 72)) return(0); };
  nfsm_srvpostop_attr(nfsd, getret, &at, &info);
  error = 0;
  goto nfsmout;
 }
 VOP_UNLOCK(vp, procp);
 rbuf = malloc(fullsiz, 127, 0x0001);
again:
 iv.iov_base = rbuf;
 iv.iov_len = fullsiz;
 io.uio_iov = &iv;
 io.uio_iovcnt = 1;
 io.uio_offset = (off_t)off;
 io.uio_resid = fullsiz;
 io.uio_segflg = UIO_SYSSPACE;
 io.uio_rw = UIO_READ;
 io.uio_procp = ((void *)0);
 eofflag = 0;
 vn_lock(vp, 0x0001UL | 0x2000UL, procp);
 error = VOP_READDIR(vp, &io, cred, &eofflag);
 off = (off_t)io.uio_offset;
 if (info.nmi_v3) {
  getret = VOP_GETATTR(vp, &at, cred, procp);
  if (!error)
   error = getret;
 }
 VOP_UNLOCK(vp, procp);
 if (error) {
  vrele(vp);
  free(rbuf, 127, fullsiz);
  { nfsd->nd_repstat = error; if (error && !(nfsd->nd_flag & 0x08)) (void) nfs_rephead(0, nfsd, slp, error, &info.nmi_mreq, &info.nmi_mb); else (void) nfs_rephead((((info.nmi_v3) ? (84 + 4) : 0)), nfsd, slp, error, &info.nmi_mreq, &info.nmi_mb); if (info.nmi_mrep != ((void *)0)) { m_freem(info.nmi_mrep); info.nmi_mrep = ((void *)0); } *mrq = info.nmi_mreq; if (error && (!(nfsd->nd_flag & 0x08) || error == 72)) return(0); };
  nfsm_srvpostop_attr(nfsd, getret, &at, &info);
  error = 0;
  goto nfsmout;
 }
 if (io.uio_resid) {
  siz -= io.uio_resid;
  if (siz == 0) {
   vrele(vp);
   { nfsd->nd_repstat = error; if (error && !(nfsd->nd_flag & 0x08)) (void) nfs_rephead(0, nfsd, slp, error, &info.nmi_mreq, &info.nmi_mb); else (void) nfs_rephead((((info.nmi_v3) ? (84 + 4) : 0) + ((info.nmi_v3) ? 8 : 0) + 2 * 4), nfsd, slp, error, &info.nmi_mreq, &info.nmi_mb); if (info.nmi_mrep != ((void *)0)) { m_freem(info.nmi_mrep); info.nmi_mrep = ((void *)0); } *mrq = info.nmi_mreq; if (error && (!(nfsd->nd_flag & 0x08) || error == 72)) return(0); };
   if (info.nmi_v3) {
    nfsm_srvpostop_attr(nfsd, getret, &at, &info);
    tl = nfsm_build(&info.nmi_mb, 4 * 4);
    do { ((u_int32_t *)(tl))[0] = ((__uint32_t)((u_int32_t)((at.va_filerev) >> 32))); ((u_int32_t *)(tl))[1] = ((__uint32_t)((u_int32_t)((at.va_filerev) & 0xffffffff))); } while (0);
    tl += 2;
   } else
    tl = nfsm_build(&info.nmi_mb, 2 * 4);
   *tl++ = nfs_false;
   *tl = nfs_true;
   free(rbuf, 127, fullsiz);
   error = 0;
   goto nfsmout;
  }
 }
 cpos = rbuf;
 cend = rbuf + siz;
 dp = (struct dirent *)cpos;
 while (cpos < cend && dp->d_fileno == 0) {
  cpos += dp->d_reclen;
  dp = (struct dirent *)cpos;
 }
 if (cpos >= cend) {
  toff = off;
  siz = fullsiz;
  goto again;
 }
 len = 3 * 4;
 { nfsd->nd_repstat = error; if (error && !(nfsd->nd_flag & 0x08)) (void) nfs_rephead(0, nfsd, slp, error, &info.nmi_mreq, &info.nmi_mb); else (void) nfs_rephead((((info.nmi_v3) ? (84 + 4) : 0) + ((info.nmi_v3) ? 8 : 0) + siz), nfsd, slp, error, &info.nmi_mreq, &info.nmi_mb); if (info.nmi_mrep != ((void *)0)) { m_freem(info.nmi_mrep); info.nmi_mrep = ((void *)0); } *mrq = info.nmi_mreq; if (error && (!(nfsd->nd_flag & 0x08) || error == 72)) return(0); };
 if (info.nmi_v3) {
  nfsm_srvpostop_attr(nfsd, getret, &at, &info);
  tl = nfsm_build(&info.nmi_mb, 2 * 4);
  do { ((u_int32_t *)(tl))[0] = ((__uint32_t)((u_int32_t)((at.va_filerev) >> 32))); ((u_int32_t *)(tl))[1] = ((__uint32_t)((u_int32_t)((at.va_filerev) & 0xffffffff))); } while (0);
 }
 while (cpos < cend) {
  if (dp->d_fileno != 0) {
   nlen = dp->d_namlen;
   pad = ((((nlen)+3)&(~0x3)) - (nlen));
   len += (4 * 4 + nlen + pad);
   if (info.nmi_v3)
    len += 2 * 4;
   if (len > cnt) {
    eofflag = 0;
    break;
   }
   tl = nfsm_build(&info.nmi_mb,
       (info.nmi_v3 ? 3 : 2) * 4);
   *tl++ = nfs_true;
   if (info.nmi_v3)
    do { ((u_int32_t *)(tl))[0] = ((__uint32_t)((u_int32_t)((dp->d_fileno) >> 32))); ((u_int32_t *)(tl))[1] = ((__uint32_t)((u_int32_t)((dp->d_fileno) & 0xffffffff))); } while (0);
   else
    *tl = (((__uint32_t)((int32_t)((u_int32_t)dp->d_fileno))));
   nfsm_strtombuf(&info.nmi_mb, dp->d_name, nlen);
   if (info.nmi_v3) {
    tl = nfsm_build(&info.nmi_mb, 2*4);
    do { ((u_int32_t *)(tl))[0] = ((__uint32_t)((u_int32_t)((dp->d_off) >> 32))); ((u_int32_t *)(tl))[1] = ((__uint32_t)((u_int32_t)((dp->d_off) & 0xffffffff))); } while (0);
   } else {
    tl = nfsm_build(&info.nmi_mb, 4);
    *tl = (((__uint32_t)((int32_t)((u_int32_t)dp->d_off))));
   }
  }
  cpos += dp->d_reclen;
  dp = (struct dirent *)cpos;
 }
 vrele(vp);
 tl = nfsm_build(&info.nmi_mb, 2 * 4);
 *tl++ = nfs_false;
 if (eofflag)
  *tl = nfs_true;
 else
  *tl = nfs_false;
 free(rbuf, 127, fullsiz);
nfsmout:
 return(error);
}
int
nfsrv_readdirplus(struct nfsrv_descript *nfsd, struct nfssvc_sock *slp,
    struct proc *procp, struct mbuf **mrq)
{
 struct mbuf *nam = nfsd->nd_nam;
 struct ucred *cred = &nfsd->nd_cr;
 struct dirent *dp;
 struct nfsm_info info;
 u_int32_t *tl;
 int32_t t1;
 char *cpos, *cend, *cp2, *rbuf;
 struct vnode *vp, *nvp;
 struct flrep fl;
 nfsfh_t nfh;
 fhandle_t *fhp, *nfhp = (fhandle_t *)fl.fl_nfh;
 struct uio io;
 struct iovec iv;
 struct vattr va, at, *vap = &va;
 struct nfs_fattr *fp;
 int len, nlen, pad, xfer, error = 0, getret = 1;
 int siz, cnt, fullsiz, eofflag, rdonly, dirlen;
 u_quad_t off, toff, verf;
 info.nmi_mreq = ((void *)0);
 info.nmi_mrep = nfsd->nd_mrep;
 info.nmi_md = nfsd->nd_md;
 info.nmi_dpos = nfsd->nd_dpos;
 info.nmi_v3 = (nfsd->nd_flag & 0x08);
 fhp = &nfh.fh_generic;
 { if (nfsd->nd_flag & 0x08) { { t1 = ((caddr_t)((info.nmi_md)->m_hdr.mh_data)) + info.nmi_md->m_hdr.mh_len - info.nmi_dpos; if (t1 >= (4)) { (tl) = (u_int32_t *)(info.nmi_dpos); info.nmi_dpos += (4); } else if ((t1 = nfsm_disct(&info.nmi_md, &info.nmi_dpos, (4), t1, &cp2)) != 0) { error = t1; m_freem(info.nmi_mrep); goto nfsmout; } else { (tl) = (u_int32_t *)cp2; } }; if (((int)((__uint32_t)((int32_t)(*tl)))) != (sizeof (fhandle_t))) { error = 72; { nfsd->nd_repstat = error; if (error && !(nfsd->nd_flag & 0x08)) (void) nfs_rephead(0, nfsd, slp, error, &info.nmi_mreq, &info.nmi_mb); else (void) nfs_rephead((0), nfsd, slp, error, &info.nmi_mreq, &info.nmi_mb); if (info.nmi_mrep != ((void *)0)) { m_freem(info.nmi_mrep); info.nmi_mrep = ((void *)0); } *mrq = info.nmi_mreq; if (error && (!(nfsd->nd_flag & 0x08) || error == 72)) return(0); }; } } { t1 = ((caddr_t)((info.nmi_md)->m_hdr.mh_data)) + info.nmi_md->m_hdr.mh_len - info.nmi_dpos; if (t1 >= ((sizeof (fhandle_t)))) { (tl) = (u_int32_t *)(info.nmi_dpos); info.nmi_dpos += ((sizeof (fhandle_t))); } else if ((t1 = nfsm_disct(&info.nmi_md, &info.nmi_dpos, ((sizeof (fhandle_t))), t1, &cp2)) != 0) { error = t1; m_freem(info.nmi_mrep); goto nfsmout; } else { (tl) = (u_int32_t *)cp2; } }; __builtin_bcopy((tl), ((fhp)), ((sizeof (fhandle_t)))); if ((nfsd->nd_flag & 0x08) == 0) { t1 = ((caddr_t)((info.nmi_md)->m_hdr.mh_data)) + info.nmi_md->m_hdr.mh_len - info.nmi_dpos; if (t1 >= (32 - (sizeof (fhandle_t)))) { info.nmi_dpos += (32 - (sizeof (fhandle_t))); } else if ((t1 = nfs_adv(&info.nmi_md, &info.nmi_dpos, (32 - (sizeof (fhandle_t))), t1)) != 0) { error = t1; m_freem(info.nmi_mrep); goto nfsmout; } }; };
 { t1 = ((caddr_t)((info.nmi_md)->m_hdr.mh_data)) + info.nmi_md->m_hdr.mh_len - info.nmi_dpos; if (t1 >= (6 * 4)) { (tl) = (u_int32_t *)(info.nmi_dpos); info.nmi_dpos += (6 * 4); } else if ((t1 = nfsm_disct(&info.nmi_md, &info.nmi_dpos, (6 * 4), t1, &cp2)) != 0) { error = t1; m_freem(info.nmi_mrep); goto nfsmout; } else { (tl) = (u_int32_t *)cp2; } };
 toff = ((((u_quad_t)((__uint32_t)(((u_int32_t *)(tl))[0]))) << 32) | (u_quad_t)(((__uint32_t)(((u_int32_t *)(tl))[1]))));
 tl += 2;
 verf = ((((u_quad_t)((__uint32_t)(((u_int32_t *)(tl))[0]))) << 32) | (u_quad_t)(((__uint32_t)(((u_int32_t *)(tl))[1]))));
 tl += 2;
 siz = ((int)((__uint32_t)((int32_t)(*tl++))));
 cnt = ((int)((__uint32_t)((int32_t)(*tl))));
 off = toff;
 siz = ((siz + (1 << 9) - 1) & ~((1 << 9) - 1));
 xfer = (((nfsd)->nd_flag & 0x08) ? (((nfsd)->nd_nam2) ? 32768 : (64 * 1024)) : 8192);
 if (siz > xfer)
  siz = xfer;
 if (cnt > xfer)
  cnt = xfer;
 fullsiz = siz;
 error = nfsrv_fhtovp(fhp, 1, &vp, cred, slp, nam, &rdonly);
 if (error) {
  { nfsd->nd_repstat = error; if (error && !(nfsd->nd_flag & 0x08)) (void) nfs_rephead(0, nfsd, slp, error, &info.nmi_mreq, &info.nmi_mb); else (void) nfs_rephead((4), nfsd, slp, error, &info.nmi_mreq, &info.nmi_mb); if (info.nmi_mrep != ((void *)0)) { m_freem(info.nmi_mrep); info.nmi_mrep = ((void *)0); } *mrq = info.nmi_mreq; if (error && (!(nfsd->nd_flag & 0x08) || error == 72)) return(0); };
  nfsm_srvpostop_attr(nfsd, getret, &at, &info);
  error = 0;
  goto nfsmout;
 }
 error = getret = VOP_GETATTR(vp, &at, cred, procp);
 if (!error)
  error = nfsrv_access(vp, 00100, cred, rdonly, procp, 0);
 if (error) {
  vput(vp);
  { nfsd->nd_repstat = error; if (error && !(nfsd->nd_flag & 0x08)) (void) nfs_rephead(0, nfsd, slp, error, &info.nmi_mreq, &info.nmi_mb); else (void) nfs_rephead(((84 + 4)), nfsd, slp, error, &info.nmi_mreq, &info.nmi_mb); if (info.nmi_mrep != ((void *)0)) { m_freem(info.nmi_mrep); info.nmi_mrep = ((void *)0); } *mrq = info.nmi_mreq; if (error && (!(nfsd->nd_flag & 0x08) || error == 72)) return(0); };
  nfsm_srvpostop_attr(nfsd, getret, &at, &info);
  error = 0;
  goto nfsmout;
 }
 VOP_UNLOCK(vp, procp);
 rbuf = malloc(fullsiz, 127, 0x0001);
again:
 iv.iov_base = rbuf;
 iv.iov_len = fullsiz;
 io.uio_iov = &iv;
 io.uio_iovcnt = 1;
 io.uio_offset = (off_t)off;
 io.uio_resid = fullsiz;
 io.uio_segflg = UIO_SYSSPACE;
 io.uio_rw = UIO_READ;
 io.uio_procp = ((void *)0);
 eofflag = 0;
 vn_lock(vp, 0x0001UL | 0x2000UL, procp);
 error = VOP_READDIR(vp, &io, cred, &eofflag);
 off = (u_quad_t)io.uio_offset;
 getret = VOP_GETATTR(vp, &at, cred, procp);
 VOP_UNLOCK(vp, procp);
 if (!error)
  error = getret;
 if (error) {
  vrele(vp);
  free(rbuf, 127, fullsiz);
  { nfsd->nd_repstat = error; if (error && !(nfsd->nd_flag & 0x08)) (void) nfs_rephead(0, nfsd, slp, error, &info.nmi_mreq, &info.nmi_mb); else (void) nfs_rephead(((84 + 4)), nfsd, slp, error, &info.nmi_mreq, &info.nmi_mb); if (info.nmi_mrep != ((void *)0)) { m_freem(info.nmi_mrep); info.nmi_mrep = ((void *)0); } *mrq = info.nmi_mreq; if (error && (!(nfsd->nd_flag & 0x08) || error == 72)) return(0); };
  nfsm_srvpostop_attr(nfsd, getret, &at, &info);
  error = 0;
  goto nfsmout;
 }
 if (io.uio_resid) {
  siz -= io.uio_resid;
  if (siz == 0) {
   vrele(vp);
   { nfsd->nd_repstat = error; if (error && !(nfsd->nd_flag & 0x08)) (void) nfs_rephead(0, nfsd, slp, error, &info.nmi_mreq, &info.nmi_mb); else (void) nfs_rephead(((84 + 4) + 8 + 2 * 4), nfsd, slp, error, &info.nmi_mreq, &info.nmi_mb); if (info.nmi_mrep != ((void *)0)) { m_freem(info.nmi_mrep); info.nmi_mrep = ((void *)0); } *mrq = info.nmi_mreq; if (error && (!(nfsd->nd_flag & 0x08) || error == 72)) return(0); };
   nfsm_srvpostop_attr(nfsd, getret, &at, &info);
   tl = nfsm_build(&info.nmi_mb, 4 * 4);
   do { ((u_int32_t *)(tl))[0] = ((__uint32_t)((u_int32_t)((at.va_filerev) >> 32))); ((u_int32_t *)(tl))[1] = ((__uint32_t)((u_int32_t)((at.va_filerev) & 0xffffffff))); } while (0);
   tl += 2;
   *tl++ = nfs_false;
   *tl = nfs_true;
   free(rbuf, 127, fullsiz);
   error = 0;
   goto nfsmout;
  }
 }
 cpos = rbuf;
 cend = rbuf + siz;
 dp = (struct dirent *)cpos;
 while (cpos < cend && dp->d_fileno == 0) {
  cpos += dp->d_reclen;
  dp = (struct dirent *)cpos;
 }
 if (cpos >= cend) {
  toff = off;
  siz = fullsiz;
  goto again;
 }
 dirlen = len = (84 + 4) + 8 + 2 * 4;
 { nfsd->nd_repstat = error; if (error && !(nfsd->nd_flag & 0x08)) (void) nfs_rephead(0, nfsd, slp, error, &info.nmi_mreq, &info.nmi_mb); else (void) nfs_rephead((cnt), nfsd, slp, error, &info.nmi_mreq, &info.nmi_mb); if (info.nmi_mrep != ((void *)0)) { m_freem(info.nmi_mrep); info.nmi_mrep = ((void *)0); } *mrq = info.nmi_mreq; if (error && (!(nfsd->nd_flag & 0x08) || error == 72)) return(0); };
 nfsm_srvpostop_attr(nfsd, getret, &at, &info);
 tl = nfsm_build(&info.nmi_mb, 2 * 4);
 do { ((u_int32_t *)(tl))[0] = ((__uint32_t)((u_int32_t)((at.va_filerev) >> 32))); ((u_int32_t *)(tl))[1] = ((__uint32_t)((u_int32_t)((at.va_filerev) & 0xffffffff))); } while (0);
 while (cpos < cend) {
  if (dp->d_fileno != 0) {
   nlen = dp->d_namlen;
   pad = ((((nlen)+3)&(~0x3)) - (nlen));
   if ((*(vp->v_mount)->mnt_op->vfs_vget)(vp->v_mount, dp->d_fileno, &nvp))
    goto invalid;
   __builtin_memset((nfhp), (0), ((sizeof (fhandle_t))));
   nfhp->fh_fsid =
    nvp->v_mount->mnt_stat.f_fsid;
   if ((*(nvp)->v_mount->mnt_op->vfs_vptofh)(nvp, &nfhp->fh_fid)) {
    vput(nvp);
    goto invalid;
   }
   if (VOP_GETATTR(nvp, vap, cred, procp)) {
    vput(nvp);
    goto invalid;
   }
   vput(nvp);
   len += (8 * 4 + nlen + pad + (sizeof (fhandle_t)) +
    (84 + 4));
   dirlen += (6 * 4 + nlen + pad);
   if (len > cnt || dirlen > fullsiz) {
    eofflag = 0;
    break;
   }
   tl = nfsm_build(&info.nmi_mb, 3 * 4);
   *tl++ = nfs_true;
   do { ((u_int32_t *)(tl))[0] = ((__uint32_t)((u_int32_t)((dp->d_fileno) >> 32))); ((u_int32_t *)(tl))[1] = ((__uint32_t)((u_int32_t)((dp->d_fileno) & 0xffffffff))); } while (0);
   nfsm_strtombuf(&info.nmi_mb, dp->d_name, nlen);
   fp = (struct nfs_fattr *)&fl.fl_fattr;
   nfsm_srvfattr(nfsd, vap, fp);
   fl.fl_fhsize = (((__uint32_t)((int32_t)((sizeof (fhandle_t))))));
   fl.fl_fhok = nfs_true;
   fl.fl_postopok = nfs_true;
   do { ((u_int32_t *)(fl.fl_off.nfsuquad))[0] = ((__uint32_t)((u_int32_t)((dp->d_off) >> 32))); ((u_int32_t *)(fl.fl_off.nfsuquad))[1] = ((__uint32_t)((u_int32_t)((dp->d_off) & 0xffffffff))); } while (0);
   nfsm_buftombuf(&info.nmi_mb, &fl, sizeof(struct flrep));
  }
invalid:
  cpos += dp->d_reclen;
  dp = (struct dirent *)cpos;
 }
 vrele(vp);
 tl = nfsm_build(&info.nmi_mb, 2 * 4);
 *tl++ = nfs_false;
 if (eofflag)
  *tl = nfs_true;
 else
  *tl = nfs_false;
 free(rbuf, 127, fullsiz);
nfsmout:
 return(error);
}
int
nfsrv_commit(struct nfsrv_descript *nfsd, struct nfssvc_sock *slp,
    struct proc *procp, struct mbuf **mrq)
{
 struct mbuf *nam = nfsd->nd_nam;
 struct ucred *cred = &nfsd->nd_cr;
 struct vattr bfor, aft;
 struct vnode *vp;
 struct nfsm_info info;
 nfsfh_t nfh;
 fhandle_t *fhp;
 u_int32_t *tl;
 int32_t t1;
 int error = 0, rdonly, for_ret = 1, aft_ret = 1, cnt;
 char *cp2;
 u_quad_t off;
 info.nmi_mreq = ((void *)0);
 info.nmi_mrep = nfsd->nd_mrep;
 info.nmi_md = nfsd->nd_md;
 info.nmi_dpos = nfsd->nd_dpos;
 info.nmi_v3 = (nfsd->nd_flag & 0x08);
 fhp = &nfh.fh_generic;
 { if (nfsd->nd_flag & 0x08) { { t1 = ((caddr_t)((info.nmi_md)->m_hdr.mh_data)) + info.nmi_md->m_hdr.mh_len - info.nmi_dpos; if (t1 >= (4)) { (tl) = (u_int32_t *)(info.nmi_dpos); info.nmi_dpos += (4); } else if ((t1 = nfsm_disct(&info.nmi_md, &info.nmi_dpos, (4), t1, &cp2)) != 0) { error = t1; m_freem(info.nmi_mrep); goto nfsmout; } else { (tl) = (u_int32_t *)cp2; } }; if (((int)((__uint32_t)((int32_t)(*tl)))) != (sizeof (fhandle_t))) { error = 72; { nfsd->nd_repstat = error; if (error && !(nfsd->nd_flag & 0x08)) (void) nfs_rephead(0, nfsd, slp, error, &info.nmi_mreq, &info.nmi_mb); else (void) nfs_rephead((0), nfsd, slp, error, &info.nmi_mreq, &info.nmi_mb); if (info.nmi_mrep != ((void *)0)) { m_freem(info.nmi_mrep); info.nmi_mrep = ((void *)0); } *mrq = info.nmi_mreq; if (error && (!(nfsd->nd_flag & 0x08) || error == 72)) return(0); }; } } { t1 = ((caddr_t)((info.nmi_md)->m_hdr.mh_data)) + info.nmi_md->m_hdr.mh_len - info.nmi_dpos; if (t1 >= ((sizeof (fhandle_t)))) { (tl) = (u_int32_t *)(info.nmi_dpos); info.nmi_dpos += ((sizeof (fhandle_t))); } else if ((t1 = nfsm_disct(&info.nmi_md, &info.nmi_dpos, ((sizeof (fhandle_t))), t1, &cp2)) != 0) { error = t1; m_freem(info.nmi_mrep); goto nfsmout; } else { (tl) = (u_int32_t *)cp2; } }; __builtin_bcopy((tl), ((fhp)), ((sizeof (fhandle_t)))); if ((nfsd->nd_flag & 0x08) == 0) { t1 = ((caddr_t)((info.nmi_md)->m_hdr.mh_data)) + info.nmi_md->m_hdr.mh_len - info.nmi_dpos; if (t1 >= (32 - (sizeof (fhandle_t)))) { info.nmi_dpos += (32 - (sizeof (fhandle_t))); } else if ((t1 = nfs_adv(&info.nmi_md, &info.nmi_dpos, (32 - (sizeof (fhandle_t))), t1)) != 0) { error = t1; m_freem(info.nmi_mrep); goto nfsmout; } }; };
 { t1 = ((caddr_t)((info.nmi_md)->m_hdr.mh_data)) + info.nmi_md->m_hdr.mh_len - info.nmi_dpos; if (t1 >= (3 * 4)) { (tl) = (u_int32_t *)(info.nmi_dpos); info.nmi_dpos += (3 * 4); } else if ((t1 = nfsm_disct(&info.nmi_md, &info.nmi_dpos, (3 * 4), t1, &cp2)) != 0) { error = t1; m_freem(info.nmi_mrep); goto nfsmout; } else { (tl) = (u_int32_t *)cp2; } };
 off = ((((u_quad_t)((__uint32_t)(((u_int32_t *)(tl))[0]))) << 32) | (u_quad_t)(((__uint32_t)(((u_int32_t *)(tl))[1]))));
 tl += 2;
 cnt = ((int)((__uint32_t)((int32_t)(*tl))));
 error = nfsrv_fhtovp(fhp, 1, &vp, cred, slp, nam, &rdonly);
 if (error) {
  { nfsd->nd_repstat = error; if (error && !(nfsd->nd_flag & 0x08)) (void) nfs_rephead(0, nfsd, slp, error, &info.nmi_mreq, &info.nmi_mb); else (void) nfs_rephead((2 * 4), nfsd, slp, error, &info.nmi_mreq, &info.nmi_mb); if (info.nmi_mrep != ((void *)0)) { m_freem(info.nmi_mrep); info.nmi_mrep = ((void *)0); } *mrq = info.nmi_mreq; if (error && (!(nfsd->nd_flag & 0x08) || error == 72)) return(0); };
  nfsm_srvwcc(nfsd, for_ret, &bfor, aft_ret, &aft, &info);
  error = 0;
  goto nfsmout;
 }
 for_ret = VOP_GETATTR(vp, &bfor, cred, procp);
 error = VOP_FSYNC(vp, cred, 1, procp);
 aft_ret = VOP_GETATTR(vp, &aft, cred, procp);
 vput(vp);
 { nfsd->nd_repstat = error; if (error && !(nfsd->nd_flag & 0x08)) (void) nfs_rephead(0, nfsd, slp, error, &info.nmi_mreq, &info.nmi_mb); else (void) nfs_rephead((((84 + 4) + 8 * 4) + 8), nfsd, slp, error, &info.nmi_mreq, &info.nmi_mb); if (info.nmi_mrep != ((void *)0)) { m_freem(info.nmi_mrep); info.nmi_mrep = ((void *)0); } *mrq = info.nmi_mreq; if (error && (!(nfsd->nd_flag & 0x08) || error == 72)) return(0); };
 nfsm_srvwcc(nfsd, for_ret, &bfor, aft_ret, &aft, &info);
 if (!error) {
  tl = nfsm_build(&info.nmi_mb, 8);
  *tl++ = (((__uint32_t)((int32_t)(boottime.tv_sec))));
  *tl = (((__uint32_t)((int32_t)(boottime.tv_nsec/1000))));
 } else
  error = 0;
nfsmout:
 return(error);
}
int
nfsrv_statfs(struct nfsrv_descript *nfsd, struct nfssvc_sock *slp,
    struct proc *procp, struct mbuf **mrq)
{
 struct mbuf *nam = nfsd->nd_nam;
 struct ucred *cred = &nfsd->nd_cr;
 struct statfs *sf;
 struct nfs_statfs *sfp;
 struct nfsm_info info;
 u_int32_t *tl;
 int32_t t1;
 int error = 0, rdonly, getret = 1;
 char *cp2;
 struct vnode *vp;
 struct vattr at;
 nfsfh_t nfh;
 fhandle_t *fhp;
 struct statfs statfs;
 u_quad_t tval;
 info.nmi_mreq = ((void *)0);
 info.nmi_mrep = nfsd->nd_mrep;
 info.nmi_md = nfsd->nd_md;
 info.nmi_dpos = nfsd->nd_dpos;
 info.nmi_v3 = (nfsd->nd_flag & 0x08);
 fhp = &nfh.fh_generic;
 { if (nfsd->nd_flag & 0x08) { { t1 = ((caddr_t)((info.nmi_md)->m_hdr.mh_data)) + info.nmi_md->m_hdr.mh_len - info.nmi_dpos; if (t1 >= (4)) { (tl) = (u_int32_t *)(info.nmi_dpos); info.nmi_dpos += (4); } else if ((t1 = nfsm_disct(&info.nmi_md, &info.nmi_dpos, (4), t1, &cp2)) != 0) { error = t1; m_freem(info.nmi_mrep); goto nfsmout; } else { (tl) = (u_int32_t *)cp2; } }; if (((int)((__uint32_t)((int32_t)(*tl)))) != (sizeof (fhandle_t))) { error = 72; { nfsd->nd_repstat = error; if (error && !(nfsd->nd_flag & 0x08)) (void) nfs_rephead(0, nfsd, slp, error, &info.nmi_mreq, &info.nmi_mb); else (void) nfs_rephead((0), nfsd, slp, error, &info.nmi_mreq, &info.nmi_mb); if (info.nmi_mrep != ((void *)0)) { m_freem(info.nmi_mrep); info.nmi_mrep = ((void *)0); } *mrq = info.nmi_mreq; if (error && (!(nfsd->nd_flag & 0x08) || error == 72)) return(0); }; } } { t1 = ((caddr_t)((info.nmi_md)->m_hdr.mh_data)) + info.nmi_md->m_hdr.mh_len - info.nmi_dpos; if (t1 >= ((sizeof (fhandle_t)))) { (tl) = (u_int32_t *)(info.nmi_dpos); info.nmi_dpos += ((sizeof (fhandle_t))); } else if ((t1 = nfsm_disct(&info.nmi_md, &info.nmi_dpos, ((sizeof (fhandle_t))), t1, &cp2)) != 0) { error = t1; m_freem(info.nmi_mrep); goto nfsmout; } else { (tl) = (u_int32_t *)cp2; } }; __builtin_bcopy((tl), ((fhp)), ((sizeof (fhandle_t)))); if ((nfsd->nd_flag & 0x08) == 0) { t1 = ((caddr_t)((info.nmi_md)->m_hdr.mh_data)) + info.nmi_md->m_hdr.mh_len - info.nmi_dpos; if (t1 >= (32 - (sizeof (fhandle_t)))) { info.nmi_dpos += (32 - (sizeof (fhandle_t))); } else if ((t1 = nfs_adv(&info.nmi_md, &info.nmi_dpos, (32 - (sizeof (fhandle_t))), t1)) != 0) { error = t1; m_freem(info.nmi_mrep); goto nfsmout; } }; };
 error = nfsrv_fhtovp(fhp, 1, &vp, cred, slp, nam, &rdonly);
 if (error) {
  { nfsd->nd_repstat = error; if (error && !(nfsd->nd_flag & 0x08)) (void) nfs_rephead(0, nfsd, slp, error, &info.nmi_mreq, &info.nmi_mb); else (void) nfs_rephead((4), nfsd, slp, error, &info.nmi_mreq, &info.nmi_mb); if (info.nmi_mrep != ((void *)0)) { m_freem(info.nmi_mrep); info.nmi_mrep = ((void *)0); } *mrq = info.nmi_mreq; if (error && (!(nfsd->nd_flag & 0x08) || error == 72)) return(0); };
  nfsm_srvpostop_attr(nfsd, getret, &at, &info);
  error = 0;
  goto nfsmout;
 }
 sf = &statfs;
 error = (*(vp->v_mount)->mnt_op->vfs_statfs)(vp->v_mount, sf, procp);
 getret = VOP_GETATTR(vp, &at, cred, procp);
 vput(vp);
 { nfsd->nd_repstat = error; if (error && !(nfsd->nd_flag & 0x08)) (void) nfs_rephead(0, nfsd, slp, error, &info.nmi_mreq, &info.nmi_mb); else (void) nfs_rephead((((info.nmi_v3) ? (84 + 4) : 0) + ((info.nmi_v3) ? 52 : 20)), nfsd, slp, error, &info.nmi_mreq, &info.nmi_mb); if (info.nmi_mrep != ((void *)0)) { m_freem(info.nmi_mrep); info.nmi_mrep = ((void *)0); } *mrq = info.nmi_mreq; if (error && (!(nfsd->nd_flag & 0x08) || error == 72)) return(0); };
 if (info.nmi_v3)
  nfsm_srvpostop_attr(nfsd, getret, &at, &info);
 if (error) {
  error = 0;
  goto nfsmout;
 }
 sfp = nfsm_build(&info.nmi_mb, ((info.nmi_v3) ? 52 : 20));
 if (info.nmi_v3) {
  tval = (u_quad_t)sf->f_blocks;
  tval *= (u_quad_t)sf->f_bsize;
  do { ((u_int32_t *)(&sfp->sf_un.sf_nfsv3.nfsv3sf_tbytes))[0] = ((__uint32_t)((u_int32_t)((tval) >> 32))); ((u_int32_t *)(&sfp->sf_un.sf_nfsv3.nfsv3sf_tbytes))[1] = ((__uint32_t)((u_int32_t)((tval) & 0xffffffff))); } while (0);
  tval = (u_quad_t)sf->f_bfree;
  tval *= (u_quad_t)sf->f_bsize;
  do { ((u_int32_t *)(&sfp->sf_un.sf_nfsv3.nfsv3sf_fbytes))[0] = ((__uint32_t)((u_int32_t)((tval) >> 32))); ((u_int32_t *)(&sfp->sf_un.sf_nfsv3.nfsv3sf_fbytes))[1] = ((__uint32_t)((u_int32_t)((tval) & 0xffffffff))); } while (0);
  tval = (u_quad_t)sf->f_bavail;
  tval *= (u_quad_t)sf->f_bsize;
  do { ((u_int32_t *)(&sfp->sf_un.sf_nfsv3.nfsv3sf_abytes))[0] = ((__uint32_t)((u_int32_t)((tval) >> 32))); ((u_int32_t *)(&sfp->sf_un.sf_nfsv3.nfsv3sf_abytes))[1] = ((__uint32_t)((u_int32_t)((tval) & 0xffffffff))); } while (0);
  tval = (u_quad_t)sf->f_files;
  do { ((u_int32_t *)(&sfp->sf_un.sf_nfsv3.nfsv3sf_tfiles))[0] = ((__uint32_t)((u_int32_t)((tval) >> 32))); ((u_int32_t *)(&sfp->sf_un.sf_nfsv3.nfsv3sf_tfiles))[1] = ((__uint32_t)((u_int32_t)((tval) & 0xffffffff))); } while (0);
  tval = (u_quad_t)sf->f_ffree;
  do { ((u_int32_t *)(&sfp->sf_un.sf_nfsv3.nfsv3sf_ffiles))[0] = ((__uint32_t)((u_int32_t)((tval) >> 32))); ((u_int32_t *)(&sfp->sf_un.sf_nfsv3.nfsv3sf_ffiles))[1] = ((__uint32_t)((u_int32_t)((tval) & 0xffffffff))); } while (0);
  do { ((u_int32_t *)(&sfp->sf_un.sf_nfsv3.nfsv3sf_afiles))[0] = ((__uint32_t)((u_int32_t)((tval) >> 32))); ((u_int32_t *)(&sfp->sf_un.sf_nfsv3.nfsv3sf_afiles))[1] = ((__uint32_t)((u_int32_t)((tval) & 0xffffffff))); } while (0);
  sfp->sf_un.sf_nfsv3.nfsv3sf_invarsec = 0;
 } else {
  sfp->sf_un.sf_nfsv2.nfsv2sf_tsize = (((__uint32_t)((int32_t)(32768))));
  sfp->sf_un.sf_nfsv2.nfsv2sf_bsize = (((__uint32_t)((int32_t)(sf->f_bsize))));
  sfp->sf_un.sf_nfsv2.nfsv2sf_blocks = (((__uint32_t)((int32_t)(sf->f_blocks))));
  sfp->sf_un.sf_nfsv2.nfsv2sf_bfree = (((__uint32_t)((int32_t)(sf->f_bfree))));
  sfp->sf_un.sf_nfsv2.nfsv2sf_bavail = (((__uint32_t)((int32_t)(sf->f_bavail))));
 }
nfsmout:
 return(error);
}
int
nfsrv_fsinfo(struct nfsrv_descript *nfsd, struct nfssvc_sock *slp,
    struct proc *procp, struct mbuf **mrq)
{
 struct mbuf *nam = nfsd->nd_nam;
 struct ucred *cred = &nfsd->nd_cr;
 struct nfsm_info info;
 u_int32_t *tl;
 struct nfsv3_fsinfo *sip;
 int32_t t1;
 int error = 0, rdonly, getret = 1, pref;
 char *cp2;
 struct vnode *vp;
 struct vattr at;
 nfsfh_t nfh;
 fhandle_t *fhp;
 info.nmi_mreq = ((void *)0);
 info.nmi_mrep = nfsd->nd_mrep;
 info.nmi_md = nfsd->nd_md;
 info.nmi_dpos = nfsd->nd_dpos;
 info.nmi_v3 = (nfsd->nd_flag & 0x08);
 fhp = &nfh.fh_generic;
 { if (nfsd->nd_flag & 0x08) { { t1 = ((caddr_t)((info.nmi_md)->m_hdr.mh_data)) + info.nmi_md->m_hdr.mh_len - info.nmi_dpos; if (t1 >= (4)) { (tl) = (u_int32_t *)(info.nmi_dpos); info.nmi_dpos += (4); } else if ((t1 = nfsm_disct(&info.nmi_md, &info.nmi_dpos, (4), t1, &cp2)) != 0) { error = t1; m_freem(info.nmi_mrep); goto nfsmout; } else { (tl) = (u_int32_t *)cp2; } }; if (((int)((__uint32_t)((int32_t)(*tl)))) != (sizeof (fhandle_t))) { error = 72; { nfsd->nd_repstat = error; if (error && !(nfsd->nd_flag & 0x08)) (void) nfs_rephead(0, nfsd, slp, error, &info.nmi_mreq, &info.nmi_mb); else (void) nfs_rephead((0), nfsd, slp, error, &info.nmi_mreq, &info.nmi_mb); if (info.nmi_mrep != ((void *)0)) { m_freem(info.nmi_mrep); info.nmi_mrep = ((void *)0); } *mrq = info.nmi_mreq; if (error && (!(nfsd->nd_flag & 0x08) || error == 72)) return(0); }; } } { t1 = ((caddr_t)((info.nmi_md)->m_hdr.mh_data)) + info.nmi_md->m_hdr.mh_len - info.nmi_dpos; if (t1 >= ((sizeof (fhandle_t)))) { (tl) = (u_int32_t *)(info.nmi_dpos); info.nmi_dpos += ((sizeof (fhandle_t))); } else if ((t1 = nfsm_disct(&info.nmi_md, &info.nmi_dpos, ((sizeof (fhandle_t))), t1, &cp2)) != 0) { error = t1; m_freem(info.nmi_mrep); goto nfsmout; } else { (tl) = (u_int32_t *)cp2; } }; __builtin_bcopy((tl), ((fhp)), ((sizeof (fhandle_t)))); if ((nfsd->nd_flag & 0x08) == 0) { t1 = ((caddr_t)((info.nmi_md)->m_hdr.mh_data)) + info.nmi_md->m_hdr.mh_len - info.nmi_dpos; if (t1 >= (32 - (sizeof (fhandle_t)))) { info.nmi_dpos += (32 - (sizeof (fhandle_t))); } else if ((t1 = nfs_adv(&info.nmi_md, &info.nmi_dpos, (32 - (sizeof (fhandle_t))), t1)) != 0) { error = t1; m_freem(info.nmi_mrep); goto nfsmout; } }; };
 error = nfsrv_fhtovp(fhp, 1, &vp, cred, slp, nam, &rdonly);
 if (error) {
  { nfsd->nd_repstat = error; if (error && !(nfsd->nd_flag & 0x08)) (void) nfs_rephead(0, nfsd, slp, error, &info.nmi_mreq, &info.nmi_mb); else (void) nfs_rephead((4), nfsd, slp, error, &info.nmi_mreq, &info.nmi_mb); if (info.nmi_mrep != ((void *)0)) { m_freem(info.nmi_mrep); info.nmi_mrep = ((void *)0); } *mrq = info.nmi_mreq; if (error && (!(nfsd->nd_flag & 0x08) || error == 72)) return(0); };
  nfsm_srvpostop_attr(nfsd, getret, &at, &info);
  error = 0;
  goto nfsmout;
 }
 getret = VOP_GETATTR(vp, &at, cred, procp);
 vput(vp);
 { nfsd->nd_repstat = error; if (error && !(nfsd->nd_flag & 0x08)) (void) nfs_rephead(0, nfsd, slp, error, &info.nmi_mreq, &info.nmi_mb); else (void) nfs_rephead(((84 + 4) + 48), nfsd, slp, error, &info.nmi_mreq, &info.nmi_mb); if (info.nmi_mrep != ((void *)0)) { m_freem(info.nmi_mrep); info.nmi_mrep = ((void *)0); } *mrq = info.nmi_mreq; if (error && (!(nfsd->nd_flag & 0x08) || error == 72)) return(0); };
 nfsm_srvpostop_attr(nfsd, getret, &at, &info);
 sip = nfsm_build(&info.nmi_mb, 48);
 if (slp->ns_so->so_type == 2)
  pref = 32768;
 else
  pref = (64 * 1024);
 sip->fs_rtmax = (((__uint32_t)((int32_t)((64 * 1024)))));
 sip->fs_rtpref = (((__uint32_t)((int32_t)(pref))));
 sip->fs_rtmult = (((__uint32_t)((int32_t)(512))));
 sip->fs_wtmax = (((__uint32_t)((int32_t)((64 * 1024)))));
 sip->fs_wtpref = (((__uint32_t)((int32_t)(pref))));
 sip->fs_wtmult = (((__uint32_t)((int32_t)(512))));
 sip->fs_dtpref = (((__uint32_t)((int32_t)(pref))));
 sip->fs_maxfilesize.nfsuquad[0] = 0xffffffff;
 sip->fs_maxfilesize.nfsuquad[1] = 0xffffffff;
 sip->fs_timedelta.nfsv3_sec = 0;
 sip->fs_timedelta.nfsv3_nsec = (((__uint32_t)((int32_t)(1))));
 sip->fs_properties = (((__uint32_t)((int32_t)(0x01 | 0x02 | 0x08 | 0x10))));
nfsmout:
 return(error);
}
int
nfsrv_pathconf(struct nfsrv_descript *nfsd, struct nfssvc_sock *slp,
    struct proc *procp, struct mbuf **mrq)
{
 struct mbuf *nam = nfsd->nd_nam;
 struct ucred *cred = &nfsd->nd_cr;
 struct nfsm_info info;
 u_int32_t *tl;
 struct nfsv3_pathconf *pc;
 int32_t t1;
 int error = 0, rdonly, getret = 1;
 register_t linkmax, namemax, chownres, notrunc;
 char *cp2;
 struct vnode *vp;
 struct vattr at;
 nfsfh_t nfh;
 fhandle_t *fhp;
 info.nmi_mreq = ((void *)0);
 info.nmi_mrep = nfsd->nd_mrep;
 info.nmi_md = nfsd->nd_md;
 info.nmi_dpos = nfsd->nd_dpos;
 info.nmi_v3 = (nfsd->nd_flag & 0x08);
 fhp = &nfh.fh_generic;
 { if (nfsd->nd_flag & 0x08) { { t1 = ((caddr_t)((info.nmi_md)->m_hdr.mh_data)) + info.nmi_md->m_hdr.mh_len - info.nmi_dpos; if (t1 >= (4)) { (tl) = (u_int32_t *)(info.nmi_dpos); info.nmi_dpos += (4); } else if ((t1 = nfsm_disct(&info.nmi_md, &info.nmi_dpos, (4), t1, &cp2)) != 0) { error = t1; m_freem(info.nmi_mrep); goto nfsmout; } else { (tl) = (u_int32_t *)cp2; } }; if (((int)((__uint32_t)((int32_t)(*tl)))) != (sizeof (fhandle_t))) { error = 72; { nfsd->nd_repstat = error; if (error && !(nfsd->nd_flag & 0x08)) (void) nfs_rephead(0, nfsd, slp, error, &info.nmi_mreq, &info.nmi_mb); else (void) nfs_rephead((0), nfsd, slp, error, &info.nmi_mreq, &info.nmi_mb); if (info.nmi_mrep != ((void *)0)) { m_freem(info.nmi_mrep); info.nmi_mrep = ((void *)0); } *mrq = info.nmi_mreq; if (error && (!(nfsd->nd_flag & 0x08) || error == 72)) return(0); }; } } { t1 = ((caddr_t)((info.nmi_md)->m_hdr.mh_data)) + info.nmi_md->m_hdr.mh_len - info.nmi_dpos; if (t1 >= ((sizeof (fhandle_t)))) { (tl) = (u_int32_t *)(info.nmi_dpos); info.nmi_dpos += ((sizeof (fhandle_t))); } else if ((t1 = nfsm_disct(&info.nmi_md, &info.nmi_dpos, ((sizeof (fhandle_t))), t1, &cp2)) != 0) { error = t1; m_freem(info.nmi_mrep); goto nfsmout; } else { (tl) = (u_int32_t *)cp2; } }; __builtin_bcopy((tl), ((fhp)), ((sizeof (fhandle_t)))); if ((nfsd->nd_flag & 0x08) == 0) { t1 = ((caddr_t)((info.nmi_md)->m_hdr.mh_data)) + info.nmi_md->m_hdr.mh_len - info.nmi_dpos; if (t1 >= (32 - (sizeof (fhandle_t)))) { info.nmi_dpos += (32 - (sizeof (fhandle_t))); } else if ((t1 = nfs_adv(&info.nmi_md, &info.nmi_dpos, (32 - (sizeof (fhandle_t))), t1)) != 0) { error = t1; m_freem(info.nmi_mrep); goto nfsmout; } }; };
 error = nfsrv_fhtovp(fhp, 1, &vp, cred, slp, nam, &rdonly);
 if (error) {
  { nfsd->nd_repstat = error; if (error && !(nfsd->nd_flag & 0x08)) (void) nfs_rephead(0, nfsd, slp, error, &info.nmi_mreq, &info.nmi_mb); else (void) nfs_rephead((4), nfsd, slp, error, &info.nmi_mreq, &info.nmi_mb); if (info.nmi_mrep != ((void *)0)) { m_freem(info.nmi_mrep); info.nmi_mrep = ((void *)0); } *mrq = info.nmi_mreq; if (error && (!(nfsd->nd_flag & 0x08) || error == 72)) return(0); };
  nfsm_srvpostop_attr(nfsd, getret, &at, &info);
  error = 0;
  goto nfsmout;
 }
 error = VOP_PATHCONF(vp, 1, &linkmax);
 if (!error)
  error = VOP_PATHCONF(vp, 4, &namemax);
 if (!error)
  error = VOP_PATHCONF(vp, 7, &chownres);
 if (!error)
  error = VOP_PATHCONF(vp, 8, &notrunc);
 getret = VOP_GETATTR(vp, &at, cred, procp);
 vput(vp);
 { nfsd->nd_repstat = error; if (error && !(nfsd->nd_flag & 0x08)) (void) nfs_rephead(0, nfsd, slp, error, &info.nmi_mreq, &info.nmi_mb); else (void) nfs_rephead(((84 + 4) + 24), nfsd, slp, error, &info.nmi_mreq, &info.nmi_mb); if (info.nmi_mrep != ((void *)0)) { m_freem(info.nmi_mrep); info.nmi_mrep = ((void *)0); } *mrq = info.nmi_mreq; if (error && (!(nfsd->nd_flag & 0x08) || error == 72)) return(0); };
 nfsm_srvpostop_attr(nfsd, getret, &at, &info);
 if (error) {
  error = 0;
  goto nfsmout;
 }
 pc = nfsm_build(&info.nmi_mb, 24);
 pc->pc_linkmax = (((__uint32_t)((int32_t)(linkmax))));
 pc->pc_namemax = (((__uint32_t)((int32_t)(namemax))));
 pc->pc_notrunc = (((__uint32_t)((int32_t)(notrunc))));
 pc->pc_chownrestricted = (((__uint32_t)((int32_t)(chownres))));
 pc->pc_caseinsensitive = nfs_false;
 pc->pc_casepreserving = nfs_true;
nfsmout:
 return(error);
}
int
nfsrv_null(struct nfsrv_descript *nfsd, struct nfssvc_sock *slp,
    struct proc *procp, struct mbuf **mrq)
{
 struct nfsm_info info;
 int error = 0x20000000;
 info.nmi_mreq = ((void *)0);
 info.nmi_mrep = nfsd->nd_mrep;
 info.nmi_md = nfsd->nd_md;
 info.nmi_dpos = nfsd->nd_dpos;
 info.nmi_v3 = (nfsd->nd_flag & 0x08);
 { nfsd->nd_repstat = error; if (error && !(nfsd->nd_flag & 0x08)) (void) nfs_rephead(0, nfsd, slp, error, &info.nmi_mreq, &info.nmi_mb); else (void) nfs_rephead((0), nfsd, slp, error, &info.nmi_mreq, &info.nmi_mb); if (info.nmi_mrep != ((void *)0)) { m_freem(info.nmi_mrep); info.nmi_mrep = ((void *)0); } *mrq = info.nmi_mreq; if (error && (!(nfsd->nd_flag & 0x08) || error == 72)) return(0); };
 return (0);
}
int
nfsrv_noop(struct nfsrv_descript *nfsd, struct nfssvc_sock *slp,
    struct proc *procp, struct mbuf **mrq)
{
 struct nfsm_info info;
 int error;
 info.nmi_mreq = ((void *)0);
 info.nmi_mrep = nfsd->nd_mrep;
 info.nmi_md = nfsd->nd_md;
 info.nmi_dpos = nfsd->nd_dpos;
 info.nmi_v3 = (nfsd->nd_flag & 0x08);
 if (nfsd->nd_repstat)
  error = nfsd->nd_repstat;
 else
  error = 76;
 { nfsd->nd_repstat = error; if (error && !(nfsd->nd_flag & 0x08)) (void) nfs_rephead(0, nfsd, slp, error, &info.nmi_mreq, &info.nmi_mb); else (void) nfs_rephead((0), nfsd, slp, error, &info.nmi_mreq, &info.nmi_mb); if (info.nmi_mrep != ((void *)0)) { m_freem(info.nmi_mrep); info.nmi_mrep = ((void *)0); } *mrq = info.nmi_mreq; if (error && (!(nfsd->nd_flag & 0x08) || error == 72)) return(0); };
 return (0);
}
int
nfsrv_access(struct vnode *vp, int flags, struct ucred *cred, int rdonly,
    struct proc *p, int override)
{
 struct vattr vattr;
 int error;
 if (flags & 00200) {
  if (rdonly || (vp->v_mount->mnt_flag & 0x00000001)) {
   switch (vp->v_type) {
   case VREG:
   case VDIR:
   case VLNK:
    return (30);
   default:
    break;
   }
  }
  if ((vp->v_flag & 0x0002) && !uvm_vnp_uncache(vp))
   return (26);
 }
 error = VOP_ACCESS(vp, flags, cred, p);
 if (override && error == 13 &&
     VOP_GETATTR(vp, &vattr, cred, p) == 0 &&
     cred->cr_uid == vattr.va_uid)
  error = 0;
 return error;
}
