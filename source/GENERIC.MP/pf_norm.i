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
struct flock {
 off_t l_start;
 off_t l_len;
 pid_t l_pid;
 short l_type;
 short l_whence;
};
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
struct pfloghdr {
 u_int8_t length;
 sa_family_t af;
 u_int8_t action;
 u_int8_t reason;
 char ifname[16];
 char ruleset[16];
 u_int32_t rulenr;
 u_int32_t subrulenr;
 uid_t uid;
 pid_t pid;
 uid_t rule_uid;
 pid_t rule_pid;
 u_int8_t dir;
 u_int8_t rewritten;
 sa_family_t naf;
 u_int8_t pad[1];
 struct pf_addr saddr;
 struct pf_addr daddr;
 u_int16_t sport;
 u_int16_t dport;
};
struct pflog_softc {
 struct ifnet sc_if;
 int sc_unit;
};
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
extern tcp_seq tcp_iss;
struct udphdr {
 u_int16_t uh_sport;
 u_int16_t uh_dport;
 u_int16_t uh_ulen;
 u_int16_t uh_sum;
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
extern struct rwlock pf_lock;
struct pf_pdesc {
 struct {
  int done;
  uid_t uid;
  gid_t gid;
  pid_t pid;
 } lookup;
 u_int64_t tot_len;
 struct pf_addr nsaddr;
 struct pf_addr ndaddr;
 struct pfi_kif *kif;
 struct mbuf *m;
 struct pf_addr *src;
 struct pf_addr *dst;
 u_int16_t *pcksum;
 u_int16_t *sport;
 u_int16_t *dport;
 u_int16_t osport;
 u_int16_t odport;
 u_int16_t nsport;
 u_int16_t ndport;
 u_int32_t off;
 u_int32_t hdrlen;
 u_int32_t p_len;
 u_int32_t extoff;
 u_int32_t fragoff;
 u_int32_t jumbolen;
 u_int32_t badopts;
 u_int16_t rdomain;
 u_int16_t virtual_proto;
 sa_family_t af;
 sa_family_t naf;
 u_int8_t proto;
 u_int8_t tos;
 u_int8_t ttl;
 u_int8_t dir;
 u_int8_t sidx;
 u_int8_t didx;
 u_int8_t destchg;
 u_int8_t pflog;
 union {
  struct tcphdr tcp;
  struct udphdr udp;
  struct icmp icmp;
  struct icmp6_hdr icmp6;
  struct mld_hdr mld;
  struct nd_neighbor_solicit nd_ns;
 } hdr;
};
extern struct task pf_purge_task;
extern struct timeout pf_purge_to;
extern void pf_purge_timeout(void *);
extern void pf_purge(void *);
struct pf_frent {
 struct { struct pf_frent *tqe_next; struct pf_frent **tqe_prev; } fr_next;
 struct mbuf *fe_m;
 u_int16_t fe_hdrlen;
 u_int16_t fe_extoff;
 u_int16_t fe_len;
 u_int16_t fe_off;
 u_int16_t fe_mff;
};
struct pf_frag_tree { struct pf_fragment *rbh_root; };
struct pf_frnode {
 struct pf_addr fn_src;
 struct pf_addr fn_dst;
 sa_family_t fn_af;
 u_int8_t fn_proto;
 u_int8_t fn_direction;
 u_int32_t fn_fragments;
 u_int32_t fn_gen;
 struct { struct pf_frnode *rbe_left; struct pf_frnode *rbe_right; struct pf_frnode *rbe_parent; int rbe_color; } fn_entry;
 struct pf_frag_tree fn_tree;
};
struct pf_fragment {
 u_int32_t fr_id;
 struct { struct pf_fragment *rbe_left; struct pf_fragment *rbe_right; struct pf_fragment *rbe_parent; int rbe_color; } fr_entry;
 struct { struct pf_fragment *tqe_next; struct pf_fragment **tqe_prev; } frag_next;
 struct pf_fragq { struct pf_frent *tqh_first; struct pf_frent **tqh_last; } fr_queue;
 int32_t fr_timeout;
 u_int32_t fr_gen;
 u_int16_t fr_maxlen;
 struct pf_frnode *fr_node;
};
struct pf_fragment_tag {
 u_int16_t ft_hdrlen;
 u_int16_t ft_extoff;
 u_int16_t ft_maxlen;
};
struct pf_fragqueue { struct pf_fragment *tqh_first; struct pf_fragment **tqh_last; } pf_fragqueue;
static __inline int pf_frnode_compare(struct pf_frnode *,
       struct pf_frnode *);
struct pf_frnode_tree { struct pf_frnode *rbh_root; } pf_frnode_tree;
 void pf_frnode_tree_RB_INSERT_COLOR(struct pf_frnode_tree *, struct pf_frnode *); void pf_frnode_tree_RB_REMOVE_COLOR(struct pf_frnode_tree *, struct pf_frnode *, struct pf_frnode *); struct pf_frnode *pf_frnode_tree_RB_REMOVE(struct pf_frnode_tree *, struct pf_frnode *); struct pf_frnode *pf_frnode_tree_RB_INSERT(struct pf_frnode_tree *, struct pf_frnode *); struct pf_frnode *pf_frnode_tree_RB_FIND(struct pf_frnode_tree *, struct pf_frnode *); struct pf_frnode *pf_frnode_tree_RB_NFIND(struct pf_frnode_tree *, struct pf_frnode *); struct pf_frnode *pf_frnode_tree_RB_NEXT(struct pf_frnode *); struct pf_frnode *pf_frnode_tree_RB_PREV(struct pf_frnode *); struct pf_frnode *pf_frnode_tree_RB_MINMAX(struct pf_frnode_tree *, int);;
 void pf_frnode_tree_RB_INSERT_COLOR(struct pf_frnode_tree *head, struct pf_frnode *elm) { struct pf_frnode *parent, *gparent, *tmp; while ((parent = (elm)->fn_entry.rbe_parent) && (parent)->fn_entry.rbe_color == 1) { gparent = (parent)->fn_entry.rbe_parent; if (parent == (gparent)->fn_entry.rbe_left) { tmp = (gparent)->fn_entry.rbe_right; if (tmp && (tmp)->fn_entry.rbe_color == 1) { (tmp)->fn_entry.rbe_color = 0; do { (parent)->fn_entry.rbe_color = 0; (gparent)->fn_entry.rbe_color = 1; } while (0); elm = gparent; continue; } if ((parent)->fn_entry.rbe_right == elm) { do { (tmp) = (parent)->fn_entry.rbe_right; if (((parent)->fn_entry.rbe_right = (tmp)->fn_entry.rbe_left)) { ((tmp)->fn_entry.rbe_left)->fn_entry.rbe_parent = (parent); } do {} while (0); if (((tmp)->fn_entry.rbe_parent = (parent)->fn_entry.rbe_parent)) { if ((parent) == ((parent)->fn_entry.rbe_parent)->fn_entry.rbe_left) ((parent)->fn_entry.rbe_parent)->fn_entry.rbe_left = (tmp); else ((parent)->fn_entry.rbe_parent)->fn_entry.rbe_right = (tmp); } else (head)->rbh_root = (tmp); (tmp)->fn_entry.rbe_left = (parent); (parent)->fn_entry.rbe_parent = (tmp); do {} while (0); if (((tmp)->fn_entry.rbe_parent)) do {} while (0); } while (0); tmp = parent; parent = elm; elm = tmp; } do { (parent)->fn_entry.rbe_color = 0; (gparent)->fn_entry.rbe_color = 1; } while (0); do { (tmp) = (gparent)->fn_entry.rbe_left; if (((gparent)->fn_entry.rbe_left = (tmp)->fn_entry.rbe_right)) { ((tmp)->fn_entry.rbe_right)->fn_entry.rbe_parent = (gparent); } do {} while (0); if (((tmp)->fn_entry.rbe_parent = (gparent)->fn_entry.rbe_parent)) { if ((gparent) == ((gparent)->fn_entry.rbe_parent)->fn_entry.rbe_left) ((gparent)->fn_entry.rbe_parent)->fn_entry.rbe_left = (tmp); else ((gparent)->fn_entry.rbe_parent)->fn_entry.rbe_right = (tmp); } else (head)->rbh_root = (tmp); (tmp)->fn_entry.rbe_right = (gparent); (gparent)->fn_entry.rbe_parent = (tmp); do {} while (0); if (((tmp)->fn_entry.rbe_parent)) do {} while (0); } while (0); } else { tmp = (gparent)->fn_entry.rbe_left; if (tmp && (tmp)->fn_entry.rbe_color == 1) { (tmp)->fn_entry.rbe_color = 0; do { (parent)->fn_entry.rbe_color = 0; (gparent)->fn_entry.rbe_color = 1; } while (0); elm = gparent; continue; } if ((parent)->fn_entry.rbe_left == elm) { do { (tmp) = (parent)->fn_entry.rbe_left; if (((parent)->fn_entry.rbe_left = (tmp)->fn_entry.rbe_right)) { ((tmp)->fn_entry.rbe_right)->fn_entry.rbe_parent = (parent); } do {} while (0); if (((tmp)->fn_entry.rbe_parent = (parent)->fn_entry.rbe_parent)) { if ((parent) == ((parent)->fn_entry.rbe_parent)->fn_entry.rbe_left) ((parent)->fn_entry.rbe_parent)->fn_entry.rbe_left = (tmp); else ((parent)->fn_entry.rbe_parent)->fn_entry.rbe_right = (tmp); } else (head)->rbh_root = (tmp); (tmp)->fn_entry.rbe_right = (parent); (parent)->fn_entry.rbe_parent = (tmp); do {} while (0); if (((tmp)->fn_entry.rbe_parent)) do {} while (0); } while (0); tmp = parent; parent = elm; elm = tmp; } do { (parent)->fn_entry.rbe_color = 0; (gparent)->fn_entry.rbe_color = 1; } while (0); do { (tmp) = (gparent)->fn_entry.rbe_right; if (((gparent)->fn_entry.rbe_right = (tmp)->fn_entry.rbe_left)) { ((tmp)->fn_entry.rbe_left)->fn_entry.rbe_parent = (gparent); } do {} while (0); if (((tmp)->fn_entry.rbe_parent = (gparent)->fn_entry.rbe_parent)) { if ((gparent) == ((gparent)->fn_entry.rbe_parent)->fn_entry.rbe_left) ((gparent)->fn_entry.rbe_parent)->fn_entry.rbe_left = (tmp); else ((gparent)->fn_entry.rbe_parent)->fn_entry.rbe_right = (tmp); } else (head)->rbh_root = (tmp); (tmp)->fn_entry.rbe_left = (gparent); (gparent)->fn_entry.rbe_parent = (tmp); do {} while (0); if (((tmp)->fn_entry.rbe_parent)) do {} while (0); } while (0); } } (head->rbh_root)->fn_entry.rbe_color = 0; } void pf_frnode_tree_RB_REMOVE_COLOR(struct pf_frnode_tree *head, struct pf_frnode *parent, struct pf_frnode *elm) { struct pf_frnode *tmp; while ((elm == ((void *)0) || (elm)->fn_entry.rbe_color == 0) && elm != (head)->rbh_root) { if ((parent)->fn_entry.rbe_left == elm) { tmp = (parent)->fn_entry.rbe_right; if ((tmp)->fn_entry.rbe_color == 1) { do { (tmp)->fn_entry.rbe_color = 0; (parent)->fn_entry.rbe_color = 1; } while (0); do { (tmp) = (parent)->fn_entry.rbe_right; if (((parent)->fn_entry.rbe_right = (tmp)->fn_entry.rbe_left)) { ((tmp)->fn_entry.rbe_left)->fn_entry.rbe_parent = (parent); } do {} while (0); if (((tmp)->fn_entry.rbe_parent = (parent)->fn_entry.rbe_parent)) { if ((parent) == ((parent)->fn_entry.rbe_parent)->fn_entry.rbe_left) ((parent)->fn_entry.rbe_parent)->fn_entry.rbe_left = (tmp); else ((parent)->fn_entry.rbe_parent)->fn_entry.rbe_right = (tmp); } else (head)->rbh_root = (tmp); (tmp)->fn_entry.rbe_left = (parent); (parent)->fn_entry.rbe_parent = (tmp); do {} while (0); if (((tmp)->fn_entry.rbe_parent)) do {} while (0); } while (0); tmp = (parent)->fn_entry.rbe_right; } if (((tmp)->fn_entry.rbe_left == ((void *)0) || ((tmp)->fn_entry.rbe_left)->fn_entry.rbe_color == 0) && ((tmp)->fn_entry.rbe_right == ((void *)0) || ((tmp)->fn_entry.rbe_right)->fn_entry.rbe_color == 0)) { (tmp)->fn_entry.rbe_color = 1; elm = parent; parent = (elm)->fn_entry.rbe_parent; } else { if ((tmp)->fn_entry.rbe_right == ((void *)0) || ((tmp)->fn_entry.rbe_right)->fn_entry.rbe_color == 0) { struct pf_frnode *oleft; if ((oleft = (tmp)->fn_entry.rbe_left)) (oleft)->fn_entry.rbe_color = 0; (tmp)->fn_entry.rbe_color = 1; do { (oleft) = (tmp)->fn_entry.rbe_left; if (((tmp)->fn_entry.rbe_left = (oleft)->fn_entry.rbe_right)) { ((oleft)->fn_entry.rbe_right)->fn_entry.rbe_parent = (tmp); } do {} while (0); if (((oleft)->fn_entry.rbe_parent = (tmp)->fn_entry.rbe_parent)) { if ((tmp) == ((tmp)->fn_entry.rbe_parent)->fn_entry.rbe_left) ((tmp)->fn_entry.rbe_parent)->fn_entry.rbe_left = (oleft); else ((tmp)->fn_entry.rbe_parent)->fn_entry.rbe_right = (oleft); } else (head)->rbh_root = (oleft); (oleft)->fn_entry.rbe_right = (tmp); (tmp)->fn_entry.rbe_parent = (oleft); do {} while (0); if (((oleft)->fn_entry.rbe_parent)) do {} while (0); } while (0); tmp = (parent)->fn_entry.rbe_right; } (tmp)->fn_entry.rbe_color = (parent)->fn_entry.rbe_color; (parent)->fn_entry.rbe_color = 0; if ((tmp)->fn_entry.rbe_right) ((tmp)->fn_entry.rbe_right)->fn_entry.rbe_color = 0; do { (tmp) = (parent)->fn_entry.rbe_right; if (((parent)->fn_entry.rbe_right = (tmp)->fn_entry.rbe_left)) { ((tmp)->fn_entry.rbe_left)->fn_entry.rbe_parent = (parent); } do {} while (0); if (((tmp)->fn_entry.rbe_parent = (parent)->fn_entry.rbe_parent)) { if ((parent) == ((parent)->fn_entry.rbe_parent)->fn_entry.rbe_left) ((parent)->fn_entry.rbe_parent)->fn_entry.rbe_left = (tmp); else ((parent)->fn_entry.rbe_parent)->fn_entry.rbe_right = (tmp); } else (head)->rbh_root = (tmp); (tmp)->fn_entry.rbe_left = (parent); (parent)->fn_entry.rbe_parent = (tmp); do {} while (0); if (((tmp)->fn_entry.rbe_parent)) do {} while (0); } while (0); elm = (head)->rbh_root; break; } } else { tmp = (parent)->fn_entry.rbe_left; if ((tmp)->fn_entry.rbe_color == 1) { do { (tmp)->fn_entry.rbe_color = 0; (parent)->fn_entry.rbe_color = 1; } while (0); do { (tmp) = (parent)->fn_entry.rbe_left; if (((parent)->fn_entry.rbe_left = (tmp)->fn_entry.rbe_right)) { ((tmp)->fn_entry.rbe_right)->fn_entry.rbe_parent = (parent); } do {} while (0); if (((tmp)->fn_entry.rbe_parent = (parent)->fn_entry.rbe_parent)) { if ((parent) == ((parent)->fn_entry.rbe_parent)->fn_entry.rbe_left) ((parent)->fn_entry.rbe_parent)->fn_entry.rbe_left = (tmp); else ((parent)->fn_entry.rbe_parent)->fn_entry.rbe_right = (tmp); } else (head)->rbh_root = (tmp); (tmp)->fn_entry.rbe_right = (parent); (parent)->fn_entry.rbe_parent = (tmp); do {} while (0); if (((tmp)->fn_entry.rbe_parent)) do {} while (0); } while (0); tmp = (parent)->fn_entry.rbe_left; } if (((tmp)->fn_entry.rbe_left == ((void *)0) || ((tmp)->fn_entry.rbe_left)->fn_entry.rbe_color == 0) && ((tmp)->fn_entry.rbe_right == ((void *)0) || ((tmp)->fn_entry.rbe_right)->fn_entry.rbe_color == 0)) { (tmp)->fn_entry.rbe_color = 1; elm = parent; parent = (elm)->fn_entry.rbe_parent; } else { if ((tmp)->fn_entry.rbe_left == ((void *)0) || ((tmp)->fn_entry.rbe_left)->fn_entry.rbe_color == 0) { struct pf_frnode *oright; if ((oright = (tmp)->fn_entry.rbe_right)) (oright)->fn_entry.rbe_color = 0; (tmp)->fn_entry.rbe_color = 1; do { (oright) = (tmp)->fn_entry.rbe_right; if (((tmp)->fn_entry.rbe_right = (oright)->fn_entry.rbe_left)) { ((oright)->fn_entry.rbe_left)->fn_entry.rbe_parent = (tmp); } do {} while (0); if (((oright)->fn_entry.rbe_parent = (tmp)->fn_entry.rbe_parent)) { if ((tmp) == ((tmp)->fn_entry.rbe_parent)->fn_entry.rbe_left) ((tmp)->fn_entry.rbe_parent)->fn_entry.rbe_left = (oright); else ((tmp)->fn_entry.rbe_parent)->fn_entry.rbe_right = (oright); } else (head)->rbh_root = (oright); (oright)->fn_entry.rbe_left = (tmp); (tmp)->fn_entry.rbe_parent = (oright); do {} while (0); if (((oright)->fn_entry.rbe_parent)) do {} while (0); } while (0); tmp = (parent)->fn_entry.rbe_left; } (tmp)->fn_entry.rbe_color = (parent)->fn_entry.rbe_color; (parent)->fn_entry.rbe_color = 0; if ((tmp)->fn_entry.rbe_left) ((tmp)->fn_entry.rbe_left)->fn_entry.rbe_color = 0; do { (tmp) = (parent)->fn_entry.rbe_left; if (((parent)->fn_entry.rbe_left = (tmp)->fn_entry.rbe_right)) { ((tmp)->fn_entry.rbe_right)->fn_entry.rbe_parent = (parent); } do {} while (0); if (((tmp)->fn_entry.rbe_parent = (parent)->fn_entry.rbe_parent)) { if ((parent) == ((parent)->fn_entry.rbe_parent)->fn_entry.rbe_left) ((parent)->fn_entry.rbe_parent)->fn_entry.rbe_left = (tmp); else ((parent)->fn_entry.rbe_parent)->fn_entry.rbe_right = (tmp); } else (head)->rbh_root = (tmp); (tmp)->fn_entry.rbe_right = (parent); (parent)->fn_entry.rbe_parent = (tmp); do {} while (0); if (((tmp)->fn_entry.rbe_parent)) do {} while (0); } while (0); elm = (head)->rbh_root; break; } } } if (elm) (elm)->fn_entry.rbe_color = 0; } struct pf_frnode * pf_frnode_tree_RB_REMOVE(struct pf_frnode_tree *head, struct pf_frnode *elm) { struct pf_frnode *child, *parent, *old = elm; int color; if ((elm)->fn_entry.rbe_left == ((void *)0)) child = (elm)->fn_entry.rbe_right; else if ((elm)->fn_entry.rbe_right == ((void *)0)) child = (elm)->fn_entry.rbe_left; else { struct pf_frnode *left; elm = (elm)->fn_entry.rbe_right; while ((left = (elm)->fn_entry.rbe_left)) elm = left; child = (elm)->fn_entry.rbe_right; parent = (elm)->fn_entry.rbe_parent; color = (elm)->fn_entry.rbe_color; if (child) (child)->fn_entry.rbe_parent = parent; if (parent) { if ((parent)->fn_entry.rbe_left == elm) (parent)->fn_entry.rbe_left = child; else (parent)->fn_entry.rbe_right = child; do {} while (0); } else (head)->rbh_root = child; if ((elm)->fn_entry.rbe_parent == old) parent = elm; (elm)->fn_entry = (old)->fn_entry; if ((old)->fn_entry.rbe_parent) { if (((old)->fn_entry.rbe_parent)->fn_entry.rbe_left == old) ((old)->fn_entry.rbe_parent)->fn_entry.rbe_left = elm; else ((old)->fn_entry.rbe_parent)->fn_entry.rbe_right = elm; do {} while (0); } else (head)->rbh_root = elm; ((old)->fn_entry.rbe_left)->fn_entry.rbe_parent = elm; if ((old)->fn_entry.rbe_right) ((old)->fn_entry.rbe_right)->fn_entry.rbe_parent = elm; if (parent) { left = parent; do { do {} while (0); } while ((left = (left)->fn_entry.rbe_parent)); } goto color; } parent = (elm)->fn_entry.rbe_parent; color = (elm)->fn_entry.rbe_color; if (child) (child)->fn_entry.rbe_parent = parent; if (parent) { if ((parent)->fn_entry.rbe_left == elm) (parent)->fn_entry.rbe_left = child; else (parent)->fn_entry.rbe_right = child; do {} while (0); } else (head)->rbh_root = child; color: if (color == 0) pf_frnode_tree_RB_REMOVE_COLOR(head, parent, child); return (old); } struct pf_frnode * pf_frnode_tree_RB_INSERT(struct pf_frnode_tree *head, struct pf_frnode *elm) { struct pf_frnode *tmp; struct pf_frnode *parent = ((void *)0); int comp = 0; tmp = (head)->rbh_root; while (tmp) { parent = tmp; comp = (pf_frnode_compare)(elm, parent); if (comp < 0) tmp = (tmp)->fn_entry.rbe_left; else if (comp > 0) tmp = (tmp)->fn_entry.rbe_right; else return (tmp); } do { (elm)->fn_entry.rbe_parent = parent; (elm)->fn_entry.rbe_left = (elm)->fn_entry.rbe_right = ((void *)0); (elm)->fn_entry.rbe_color = 1; } while (0); if (parent != ((void *)0)) { if (comp < 0) (parent)->fn_entry.rbe_left = elm; else (parent)->fn_entry.rbe_right = elm; do {} while (0); } else (head)->rbh_root = elm; pf_frnode_tree_RB_INSERT_COLOR(head, elm); return (((void *)0)); } struct pf_frnode * pf_frnode_tree_RB_FIND(struct pf_frnode_tree *head, struct pf_frnode *elm) { struct pf_frnode *tmp = (head)->rbh_root; int comp; while (tmp) { comp = pf_frnode_compare(elm, tmp); if (comp < 0) tmp = (tmp)->fn_entry.rbe_left; else if (comp > 0) tmp = (tmp)->fn_entry.rbe_right; else return (tmp); } return (((void *)0)); } struct pf_frnode * pf_frnode_tree_RB_NFIND(struct pf_frnode_tree *head, struct pf_frnode *elm) { struct pf_frnode *tmp = (head)->rbh_root; struct pf_frnode *res = ((void *)0); int comp; while (tmp) { comp = pf_frnode_compare(elm, tmp); if (comp < 0) { res = tmp; tmp = (tmp)->fn_entry.rbe_left; } else if (comp > 0) tmp = (tmp)->fn_entry.rbe_right; else return (tmp); } return (res); } struct pf_frnode * pf_frnode_tree_RB_NEXT(struct pf_frnode *elm) { if ((elm)->fn_entry.rbe_right) { elm = (elm)->fn_entry.rbe_right; while ((elm)->fn_entry.rbe_left) elm = (elm)->fn_entry.rbe_left; } else { if ((elm)->fn_entry.rbe_parent && (elm == ((elm)->fn_entry.rbe_parent)->fn_entry.rbe_left)) elm = (elm)->fn_entry.rbe_parent; else { while ((elm)->fn_entry.rbe_parent && (elm == ((elm)->fn_entry.rbe_parent)->fn_entry.rbe_right)) elm = (elm)->fn_entry.rbe_parent; elm = (elm)->fn_entry.rbe_parent; } } return (elm); } struct pf_frnode * pf_frnode_tree_RB_PREV(struct pf_frnode *elm) { if ((elm)->fn_entry.rbe_left) { elm = (elm)->fn_entry.rbe_left; while ((elm)->fn_entry.rbe_right) elm = (elm)->fn_entry.rbe_right; } else { if ((elm)->fn_entry.rbe_parent && (elm == ((elm)->fn_entry.rbe_parent)->fn_entry.rbe_right)) elm = (elm)->fn_entry.rbe_parent; else { while ((elm)->fn_entry.rbe_parent && (elm == ((elm)->fn_entry.rbe_parent)->fn_entry.rbe_left)) elm = (elm)->fn_entry.rbe_parent; elm = (elm)->fn_entry.rbe_parent; } } return (elm); } struct pf_frnode * pf_frnode_tree_RB_MINMAX(struct pf_frnode_tree *head, int val) { struct pf_frnode *tmp = (head)->rbh_root; struct pf_frnode *parent = ((void *)0); while (tmp) { parent = tmp; if (val < 0) tmp = (tmp)->fn_entry.rbe_left; else tmp = (tmp)->fn_entry.rbe_right; } return (parent); };
static __inline int pf_frag_compare(struct pf_fragment *,
       struct pf_fragment *);
 void pf_frag_tree_RB_INSERT_COLOR(struct pf_frag_tree *, struct pf_fragment *); void pf_frag_tree_RB_REMOVE_COLOR(struct pf_frag_tree *, struct pf_fragment *, struct pf_fragment *); struct pf_fragment *pf_frag_tree_RB_REMOVE(struct pf_frag_tree *, struct pf_fragment *); struct pf_fragment *pf_frag_tree_RB_INSERT(struct pf_frag_tree *, struct pf_fragment *); struct pf_fragment *pf_frag_tree_RB_FIND(struct pf_frag_tree *, struct pf_fragment *); struct pf_fragment *pf_frag_tree_RB_NFIND(struct pf_frag_tree *, struct pf_fragment *); struct pf_fragment *pf_frag_tree_RB_NEXT(struct pf_fragment *); struct pf_fragment *pf_frag_tree_RB_PREV(struct pf_fragment *); struct pf_fragment *pf_frag_tree_RB_MINMAX(struct pf_frag_tree *, int);;
 void pf_frag_tree_RB_INSERT_COLOR(struct pf_frag_tree *head, struct pf_fragment *elm) { struct pf_fragment *parent, *gparent, *tmp; while ((parent = (elm)->fr_entry.rbe_parent) && (parent)->fr_entry.rbe_color == 1) { gparent = (parent)->fr_entry.rbe_parent; if (parent == (gparent)->fr_entry.rbe_left) { tmp = (gparent)->fr_entry.rbe_right; if (tmp && (tmp)->fr_entry.rbe_color == 1) { (tmp)->fr_entry.rbe_color = 0; do { (parent)->fr_entry.rbe_color = 0; (gparent)->fr_entry.rbe_color = 1; } while (0); elm = gparent; continue; } if ((parent)->fr_entry.rbe_right == elm) { do { (tmp) = (parent)->fr_entry.rbe_right; if (((parent)->fr_entry.rbe_right = (tmp)->fr_entry.rbe_left)) { ((tmp)->fr_entry.rbe_left)->fr_entry.rbe_parent = (parent); } do {} while (0); if (((tmp)->fr_entry.rbe_parent = (parent)->fr_entry.rbe_parent)) { if ((parent) == ((parent)->fr_entry.rbe_parent)->fr_entry.rbe_left) ((parent)->fr_entry.rbe_parent)->fr_entry.rbe_left = (tmp); else ((parent)->fr_entry.rbe_parent)->fr_entry.rbe_right = (tmp); } else (head)->rbh_root = (tmp); (tmp)->fr_entry.rbe_left = (parent); (parent)->fr_entry.rbe_parent = (tmp); do {} while (0); if (((tmp)->fr_entry.rbe_parent)) do {} while (0); } while (0); tmp = parent; parent = elm; elm = tmp; } do { (parent)->fr_entry.rbe_color = 0; (gparent)->fr_entry.rbe_color = 1; } while (0); do { (tmp) = (gparent)->fr_entry.rbe_left; if (((gparent)->fr_entry.rbe_left = (tmp)->fr_entry.rbe_right)) { ((tmp)->fr_entry.rbe_right)->fr_entry.rbe_parent = (gparent); } do {} while (0); if (((tmp)->fr_entry.rbe_parent = (gparent)->fr_entry.rbe_parent)) { if ((gparent) == ((gparent)->fr_entry.rbe_parent)->fr_entry.rbe_left) ((gparent)->fr_entry.rbe_parent)->fr_entry.rbe_left = (tmp); else ((gparent)->fr_entry.rbe_parent)->fr_entry.rbe_right = (tmp); } else (head)->rbh_root = (tmp); (tmp)->fr_entry.rbe_right = (gparent); (gparent)->fr_entry.rbe_parent = (tmp); do {} while (0); if (((tmp)->fr_entry.rbe_parent)) do {} while (0); } while (0); } else { tmp = (gparent)->fr_entry.rbe_left; if (tmp && (tmp)->fr_entry.rbe_color == 1) { (tmp)->fr_entry.rbe_color = 0; do { (parent)->fr_entry.rbe_color = 0; (gparent)->fr_entry.rbe_color = 1; } while (0); elm = gparent; continue; } if ((parent)->fr_entry.rbe_left == elm) { do { (tmp) = (parent)->fr_entry.rbe_left; if (((parent)->fr_entry.rbe_left = (tmp)->fr_entry.rbe_right)) { ((tmp)->fr_entry.rbe_right)->fr_entry.rbe_parent = (parent); } do {} while (0); if (((tmp)->fr_entry.rbe_parent = (parent)->fr_entry.rbe_parent)) { if ((parent) == ((parent)->fr_entry.rbe_parent)->fr_entry.rbe_left) ((parent)->fr_entry.rbe_parent)->fr_entry.rbe_left = (tmp); else ((parent)->fr_entry.rbe_parent)->fr_entry.rbe_right = (tmp); } else (head)->rbh_root = (tmp); (tmp)->fr_entry.rbe_right = (parent); (parent)->fr_entry.rbe_parent = (tmp); do {} while (0); if (((tmp)->fr_entry.rbe_parent)) do {} while (0); } while (0); tmp = parent; parent = elm; elm = tmp; } do { (parent)->fr_entry.rbe_color = 0; (gparent)->fr_entry.rbe_color = 1; } while (0); do { (tmp) = (gparent)->fr_entry.rbe_right; if (((gparent)->fr_entry.rbe_right = (tmp)->fr_entry.rbe_left)) { ((tmp)->fr_entry.rbe_left)->fr_entry.rbe_parent = (gparent); } do {} while (0); if (((tmp)->fr_entry.rbe_parent = (gparent)->fr_entry.rbe_parent)) { if ((gparent) == ((gparent)->fr_entry.rbe_parent)->fr_entry.rbe_left) ((gparent)->fr_entry.rbe_parent)->fr_entry.rbe_left = (tmp); else ((gparent)->fr_entry.rbe_parent)->fr_entry.rbe_right = (tmp); } else (head)->rbh_root = (tmp); (tmp)->fr_entry.rbe_left = (gparent); (gparent)->fr_entry.rbe_parent = (tmp); do {} while (0); if (((tmp)->fr_entry.rbe_parent)) do {} while (0); } while (0); } } (head->rbh_root)->fr_entry.rbe_color = 0; } void pf_frag_tree_RB_REMOVE_COLOR(struct pf_frag_tree *head, struct pf_fragment *parent, struct pf_fragment *elm) { struct pf_fragment *tmp; while ((elm == ((void *)0) || (elm)->fr_entry.rbe_color == 0) && elm != (head)->rbh_root) { if ((parent)->fr_entry.rbe_left == elm) { tmp = (parent)->fr_entry.rbe_right; if ((tmp)->fr_entry.rbe_color == 1) { do { (tmp)->fr_entry.rbe_color = 0; (parent)->fr_entry.rbe_color = 1; } while (0); do { (tmp) = (parent)->fr_entry.rbe_right; if (((parent)->fr_entry.rbe_right = (tmp)->fr_entry.rbe_left)) { ((tmp)->fr_entry.rbe_left)->fr_entry.rbe_parent = (parent); } do {} while (0); if (((tmp)->fr_entry.rbe_parent = (parent)->fr_entry.rbe_parent)) { if ((parent) == ((parent)->fr_entry.rbe_parent)->fr_entry.rbe_left) ((parent)->fr_entry.rbe_parent)->fr_entry.rbe_left = (tmp); else ((parent)->fr_entry.rbe_parent)->fr_entry.rbe_right = (tmp); } else (head)->rbh_root = (tmp); (tmp)->fr_entry.rbe_left = (parent); (parent)->fr_entry.rbe_parent = (tmp); do {} while (0); if (((tmp)->fr_entry.rbe_parent)) do {} while (0); } while (0); tmp = (parent)->fr_entry.rbe_right; } if (((tmp)->fr_entry.rbe_left == ((void *)0) || ((tmp)->fr_entry.rbe_left)->fr_entry.rbe_color == 0) && ((tmp)->fr_entry.rbe_right == ((void *)0) || ((tmp)->fr_entry.rbe_right)->fr_entry.rbe_color == 0)) { (tmp)->fr_entry.rbe_color = 1; elm = parent; parent = (elm)->fr_entry.rbe_parent; } else { if ((tmp)->fr_entry.rbe_right == ((void *)0) || ((tmp)->fr_entry.rbe_right)->fr_entry.rbe_color == 0) { struct pf_fragment *oleft; if ((oleft = (tmp)->fr_entry.rbe_left)) (oleft)->fr_entry.rbe_color = 0; (tmp)->fr_entry.rbe_color = 1; do { (oleft) = (tmp)->fr_entry.rbe_left; if (((tmp)->fr_entry.rbe_left = (oleft)->fr_entry.rbe_right)) { ((oleft)->fr_entry.rbe_right)->fr_entry.rbe_parent = (tmp); } do {} while (0); if (((oleft)->fr_entry.rbe_parent = (tmp)->fr_entry.rbe_parent)) { if ((tmp) == ((tmp)->fr_entry.rbe_parent)->fr_entry.rbe_left) ((tmp)->fr_entry.rbe_parent)->fr_entry.rbe_left = (oleft); else ((tmp)->fr_entry.rbe_parent)->fr_entry.rbe_right = (oleft); } else (head)->rbh_root = (oleft); (oleft)->fr_entry.rbe_right = (tmp); (tmp)->fr_entry.rbe_parent = (oleft); do {} while (0); if (((oleft)->fr_entry.rbe_parent)) do {} while (0); } while (0); tmp = (parent)->fr_entry.rbe_right; } (tmp)->fr_entry.rbe_color = (parent)->fr_entry.rbe_color; (parent)->fr_entry.rbe_color = 0; if ((tmp)->fr_entry.rbe_right) ((tmp)->fr_entry.rbe_right)->fr_entry.rbe_color = 0; do { (tmp) = (parent)->fr_entry.rbe_right; if (((parent)->fr_entry.rbe_right = (tmp)->fr_entry.rbe_left)) { ((tmp)->fr_entry.rbe_left)->fr_entry.rbe_parent = (parent); } do {} while (0); if (((tmp)->fr_entry.rbe_parent = (parent)->fr_entry.rbe_parent)) { if ((parent) == ((parent)->fr_entry.rbe_parent)->fr_entry.rbe_left) ((parent)->fr_entry.rbe_parent)->fr_entry.rbe_left = (tmp); else ((parent)->fr_entry.rbe_parent)->fr_entry.rbe_right = (tmp); } else (head)->rbh_root = (tmp); (tmp)->fr_entry.rbe_left = (parent); (parent)->fr_entry.rbe_parent = (tmp); do {} while (0); if (((tmp)->fr_entry.rbe_parent)) do {} while (0); } while (0); elm = (head)->rbh_root; break; } } else { tmp = (parent)->fr_entry.rbe_left; if ((tmp)->fr_entry.rbe_color == 1) { do { (tmp)->fr_entry.rbe_color = 0; (parent)->fr_entry.rbe_color = 1; } while (0); do { (tmp) = (parent)->fr_entry.rbe_left; if (((parent)->fr_entry.rbe_left = (tmp)->fr_entry.rbe_right)) { ((tmp)->fr_entry.rbe_right)->fr_entry.rbe_parent = (parent); } do {} while (0); if (((tmp)->fr_entry.rbe_parent = (parent)->fr_entry.rbe_parent)) { if ((parent) == ((parent)->fr_entry.rbe_parent)->fr_entry.rbe_left) ((parent)->fr_entry.rbe_parent)->fr_entry.rbe_left = (tmp); else ((parent)->fr_entry.rbe_parent)->fr_entry.rbe_right = (tmp); } else (head)->rbh_root = (tmp); (tmp)->fr_entry.rbe_right = (parent); (parent)->fr_entry.rbe_parent = (tmp); do {} while (0); if (((tmp)->fr_entry.rbe_parent)) do {} while (0); } while (0); tmp = (parent)->fr_entry.rbe_left; } if (((tmp)->fr_entry.rbe_left == ((void *)0) || ((tmp)->fr_entry.rbe_left)->fr_entry.rbe_color == 0) && ((tmp)->fr_entry.rbe_right == ((void *)0) || ((tmp)->fr_entry.rbe_right)->fr_entry.rbe_color == 0)) { (tmp)->fr_entry.rbe_color = 1; elm = parent; parent = (elm)->fr_entry.rbe_parent; } else { if ((tmp)->fr_entry.rbe_left == ((void *)0) || ((tmp)->fr_entry.rbe_left)->fr_entry.rbe_color == 0) { struct pf_fragment *oright; if ((oright = (tmp)->fr_entry.rbe_right)) (oright)->fr_entry.rbe_color = 0; (tmp)->fr_entry.rbe_color = 1; do { (oright) = (tmp)->fr_entry.rbe_right; if (((tmp)->fr_entry.rbe_right = (oright)->fr_entry.rbe_left)) { ((oright)->fr_entry.rbe_left)->fr_entry.rbe_parent = (tmp); } do {} while (0); if (((oright)->fr_entry.rbe_parent = (tmp)->fr_entry.rbe_parent)) { if ((tmp) == ((tmp)->fr_entry.rbe_parent)->fr_entry.rbe_left) ((tmp)->fr_entry.rbe_parent)->fr_entry.rbe_left = (oright); else ((tmp)->fr_entry.rbe_parent)->fr_entry.rbe_right = (oright); } else (head)->rbh_root = (oright); (oright)->fr_entry.rbe_left = (tmp); (tmp)->fr_entry.rbe_parent = (oright); do {} while (0); if (((oright)->fr_entry.rbe_parent)) do {} while (0); } while (0); tmp = (parent)->fr_entry.rbe_left; } (tmp)->fr_entry.rbe_color = (parent)->fr_entry.rbe_color; (parent)->fr_entry.rbe_color = 0; if ((tmp)->fr_entry.rbe_left) ((tmp)->fr_entry.rbe_left)->fr_entry.rbe_color = 0; do { (tmp) = (parent)->fr_entry.rbe_left; if (((parent)->fr_entry.rbe_left = (tmp)->fr_entry.rbe_right)) { ((tmp)->fr_entry.rbe_right)->fr_entry.rbe_parent = (parent); } do {} while (0); if (((tmp)->fr_entry.rbe_parent = (parent)->fr_entry.rbe_parent)) { if ((parent) == ((parent)->fr_entry.rbe_parent)->fr_entry.rbe_left) ((parent)->fr_entry.rbe_parent)->fr_entry.rbe_left = (tmp); else ((parent)->fr_entry.rbe_parent)->fr_entry.rbe_right = (tmp); } else (head)->rbh_root = (tmp); (tmp)->fr_entry.rbe_right = (parent); (parent)->fr_entry.rbe_parent = (tmp); do {} while (0); if (((tmp)->fr_entry.rbe_parent)) do {} while (0); } while (0); elm = (head)->rbh_root; break; } } } if (elm) (elm)->fr_entry.rbe_color = 0; } struct pf_fragment * pf_frag_tree_RB_REMOVE(struct pf_frag_tree *head, struct pf_fragment *elm) { struct pf_fragment *child, *parent, *old = elm; int color; if ((elm)->fr_entry.rbe_left == ((void *)0)) child = (elm)->fr_entry.rbe_right; else if ((elm)->fr_entry.rbe_right == ((void *)0)) child = (elm)->fr_entry.rbe_left; else { struct pf_fragment *left; elm = (elm)->fr_entry.rbe_right; while ((left = (elm)->fr_entry.rbe_left)) elm = left; child = (elm)->fr_entry.rbe_right; parent = (elm)->fr_entry.rbe_parent; color = (elm)->fr_entry.rbe_color; if (child) (child)->fr_entry.rbe_parent = parent; if (parent) { if ((parent)->fr_entry.rbe_left == elm) (parent)->fr_entry.rbe_left = child; else (parent)->fr_entry.rbe_right = child; do {} while (0); } else (head)->rbh_root = child; if ((elm)->fr_entry.rbe_parent == old) parent = elm; (elm)->fr_entry = (old)->fr_entry; if ((old)->fr_entry.rbe_parent) { if (((old)->fr_entry.rbe_parent)->fr_entry.rbe_left == old) ((old)->fr_entry.rbe_parent)->fr_entry.rbe_left = elm; else ((old)->fr_entry.rbe_parent)->fr_entry.rbe_right = elm; do {} while (0); } else (head)->rbh_root = elm; ((old)->fr_entry.rbe_left)->fr_entry.rbe_parent = elm; if ((old)->fr_entry.rbe_right) ((old)->fr_entry.rbe_right)->fr_entry.rbe_parent = elm; if (parent) { left = parent; do { do {} while (0); } while ((left = (left)->fr_entry.rbe_parent)); } goto color; } parent = (elm)->fr_entry.rbe_parent; color = (elm)->fr_entry.rbe_color; if (child) (child)->fr_entry.rbe_parent = parent; if (parent) { if ((parent)->fr_entry.rbe_left == elm) (parent)->fr_entry.rbe_left = child; else (parent)->fr_entry.rbe_right = child; do {} while (0); } else (head)->rbh_root = child; color: if (color == 0) pf_frag_tree_RB_REMOVE_COLOR(head, parent, child); return (old); } struct pf_fragment * pf_frag_tree_RB_INSERT(struct pf_frag_tree *head, struct pf_fragment *elm) { struct pf_fragment *tmp; struct pf_fragment *parent = ((void *)0); int comp = 0; tmp = (head)->rbh_root; while (tmp) { parent = tmp; comp = (pf_frag_compare)(elm, parent); if (comp < 0) tmp = (tmp)->fr_entry.rbe_left; else if (comp > 0) tmp = (tmp)->fr_entry.rbe_right; else return (tmp); } do { (elm)->fr_entry.rbe_parent = parent; (elm)->fr_entry.rbe_left = (elm)->fr_entry.rbe_right = ((void *)0); (elm)->fr_entry.rbe_color = 1; } while (0); if (parent != ((void *)0)) { if (comp < 0) (parent)->fr_entry.rbe_left = elm; else (parent)->fr_entry.rbe_right = elm; do {} while (0); } else (head)->rbh_root = elm; pf_frag_tree_RB_INSERT_COLOR(head, elm); return (((void *)0)); } struct pf_fragment * pf_frag_tree_RB_FIND(struct pf_frag_tree *head, struct pf_fragment *elm) { struct pf_fragment *tmp = (head)->rbh_root; int comp; while (tmp) { comp = pf_frag_compare(elm, tmp); if (comp < 0) tmp = (tmp)->fr_entry.rbe_left; else if (comp > 0) tmp = (tmp)->fr_entry.rbe_right; else return (tmp); } return (((void *)0)); } struct pf_fragment * pf_frag_tree_RB_NFIND(struct pf_frag_tree *head, struct pf_fragment *elm) { struct pf_fragment *tmp = (head)->rbh_root; struct pf_fragment *res = ((void *)0); int comp; while (tmp) { comp = pf_frag_compare(elm, tmp); if (comp < 0) { res = tmp; tmp = (tmp)->fr_entry.rbe_left; } else if (comp > 0) tmp = (tmp)->fr_entry.rbe_right; else return (tmp); } return (res); } struct pf_fragment * pf_frag_tree_RB_NEXT(struct pf_fragment *elm) { if ((elm)->fr_entry.rbe_right) { elm = (elm)->fr_entry.rbe_right; while ((elm)->fr_entry.rbe_left) elm = (elm)->fr_entry.rbe_left; } else { if ((elm)->fr_entry.rbe_parent && (elm == ((elm)->fr_entry.rbe_parent)->fr_entry.rbe_left)) elm = (elm)->fr_entry.rbe_parent; else { while ((elm)->fr_entry.rbe_parent && (elm == ((elm)->fr_entry.rbe_parent)->fr_entry.rbe_right)) elm = (elm)->fr_entry.rbe_parent; elm = (elm)->fr_entry.rbe_parent; } } return (elm); } struct pf_fragment * pf_frag_tree_RB_PREV(struct pf_fragment *elm) { if ((elm)->fr_entry.rbe_left) { elm = (elm)->fr_entry.rbe_left; while ((elm)->fr_entry.rbe_right) elm = (elm)->fr_entry.rbe_right; } else { if ((elm)->fr_entry.rbe_parent && (elm == ((elm)->fr_entry.rbe_parent)->fr_entry.rbe_right)) elm = (elm)->fr_entry.rbe_parent; else { while ((elm)->fr_entry.rbe_parent && (elm == ((elm)->fr_entry.rbe_parent)->fr_entry.rbe_left)) elm = (elm)->fr_entry.rbe_parent; elm = (elm)->fr_entry.rbe_parent; } } return (elm); } struct pf_fragment * pf_frag_tree_RB_MINMAX(struct pf_frag_tree *head, int val) { struct pf_fragment *tmp = (head)->rbh_root; struct pf_fragment *parent = ((void *)0); while (tmp) { parent = tmp; if (val < 0) tmp = (tmp)->fr_entry.rbe_left; else tmp = (tmp)->fr_entry.rbe_right; } return (parent); };
void pf_flush_fragments(void);
void pf_free_fragment(struct pf_fragment *);
struct pf_fragment *pf_find_fragment(struct pf_frnode *, u_int32_t);
struct pf_frent *pf_create_fragment(u_short *);
struct pf_fragment *pf_fillup_fragment(struct pf_frnode *, u_int32_t,
       struct pf_frent *, u_short *);
int pf_isfull_fragment(struct pf_fragment *);
struct mbuf *pf_join_fragment(struct pf_fragment *);
int pf_reassemble(struct mbuf **, int, u_short *);
int pf_reassemble6(struct mbuf **, struct ip6_frag *,
       u_int16_t, u_int16_t, int, u_short *);
struct pool pf_frent_pl, pf_frag_pl, pf_frnode_pl;
struct pool pf_state_scrub_pl;
int pf_nfrents;
void
pf_normalize_init(void)
{
 pool_init(&pf_frent_pl, sizeof(struct pf_frent), 0,
     2, 0, "pffrent", ((void *)0));
 pool_init(&pf_frnode_pl, sizeof(struct pf_frnode), 0,
     2, 0, "pffrnode", ((void *)0));
 pool_init(&pf_frag_pl, sizeof(struct pf_fragment), 0,
     2, 0, "pffrag", ((void *)0));
 pool_init(&pf_state_scrub_pl, sizeof(struct pf_state_scrub), 0,
     2, 0, "pfstscr", ((void *)0));
 pool_sethiwat(&pf_frag_pl, ((16 * 1024) / 32));
 pool_sethardlimit(&pf_frent_pl, ((16 * 1024) / 16), ((void *)0), 0);
 do { (&pf_fragqueue)->tqh_first = ((void *)0); (&pf_fragqueue)->tqh_last = &(&pf_fragqueue)->tqh_first; } while (0);
 (void)(0);
}
static __inline int
pf_frnode_compare(struct pf_frnode *a, struct pf_frnode *b)
{
 int diff;
 if ((diff = a->fn_proto - b->fn_proto) != 0)
  return (diff);
 if ((diff = a->fn_af - b->fn_af) != 0)
  return (diff);
 if ((diff = pf_addr_compare(&a->fn_src, &b->fn_src, a->fn_af)) != 0)
  return (diff);
 if ((diff = pf_addr_compare(&a->fn_dst, &b->fn_dst, a->fn_af)) != 0)
  return (diff);
 return (0);
}
static __inline int
pf_frag_compare(struct pf_fragment *a, struct pf_fragment *b)
{
 int diff;
 if ((diff = a->fr_id - b->fr_id) != 0)
  return (diff);
 return (0);
}
void
pf_purge_expired_fragments(void)
{
 struct pf_fragment *frag;
 int32_t expire;
 (void)(0);
 expire = time_uptime - pf_default_rule.timeout[PFTM_FRAG];
 (void)(0);
 while ((frag = (*(((struct pf_fragqueue *)((&pf_fragqueue)->tqh_last))->tqh_last))) != ((void *)0)) {
  if (frag->fr_timeout > expire)
   break;
  do { if (pf_status.debug >= (5)) { log(5, "pf: "); addlog("expiring %d(%p)", frag->fr_id, frag); addlog("\n"); } } while (0);
  pf_free_fragment(frag);
 }
 (void)(0);
}
void
pf_flush_fragments(void)
{
 struct pf_fragment *frag;
 int goal;
 goal = pf_nfrents * 9 / 10;
 do { if (pf_status.debug >= (5)) { log(5, "pf: "); addlog("trying to free > %d frents", pf_nfrents - goal); addlog("\n"); } } while (0);
 while (goal < pf_nfrents) {
  if ((frag = (*(((struct pf_fragqueue *)((&pf_fragqueue)->tqh_last))->tqh_last))) == ((void *)0))
   break;
  pf_free_fragment(frag);
 }
}
void
pf_free_fragment(struct pf_fragment *frag)
{
 struct pf_frent *frent;
 struct pf_frnode *frnode;
 frnode = frag->fr_node;
 pf_frag_tree_RB_REMOVE(&frnode->fn_tree, frag);
 ((frnode->fn_fragments >= 1) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../net/pf_norm.c", 254, "frnode->fn_fragments >= 1"));
 frnode->fn_fragments--;
 if (frnode->fn_fragments == 0) {
  ((((&frnode->fn_tree)->rbh_root == ((void *)0))) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../net/pf_norm.c", 257, "RB_EMPTY(&frnode->fn_tree)"));
  pf_frnode_tree_RB_REMOVE(&pf_frnode_tree, frnode);
  pool_put(&pf_frnode_pl, frnode);
 }
 do { if (((frag)->frag_next.tqe_next) != ((void *)0)) (frag)->frag_next.tqe_next->frag_next.tqe_prev = (frag)->frag_next.tqe_prev; else (&pf_fragqueue)->tqh_last = (frag)->frag_next.tqe_prev; *(frag)->frag_next.tqe_prev = (frag)->frag_next.tqe_next; ((frag)->frag_next.tqe_prev) = ((void *)-1); ((frag)->frag_next.tqe_next) = ((void *)-1); } while (0);
 while ((frent = ((&frag->fr_queue)->tqh_first)) != ((void *)0)) {
  do { if (((frent)->fr_next.tqe_next) != ((void *)0)) (frent)->fr_next.tqe_next->fr_next.tqe_prev = (frent)->fr_next.tqe_prev; else (&frag->fr_queue)->tqh_last = (frent)->fr_next.tqe_prev; *(frent)->fr_next.tqe_prev = (frent)->fr_next.tqe_next; ((frent)->fr_next.tqe_prev) = ((void *)-1); ((frent)->fr_next.tqe_next) = ((void *)-1); } while (0);
  m_freem(frent->fe_m);
  pool_put(&pf_frent_pl, frent);
  pf_nfrents--;
 }
 pool_put(&pf_frag_pl, frag);
}
struct pf_fragment *
pf_find_fragment(struct pf_frnode *key, u_int32_t id)
{
 struct pf_fragment *frag, idkey;
 struct pf_frnode *frnode;
 u_int32_t stale;
 frnode = pf_frnode_tree_RB_FIND(&pf_frnode_tree, key);
 if (frnode == ((void *)0))
  return (((void *)0));
 ((frnode->fn_fragments >= 1) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../net/pf_norm.c", 283, "frnode->fn_fragments >= 1"));
 idkey.fr_id = id;
 frag = pf_frag_tree_RB_FIND(&frnode->fn_tree, &idkey);
 if (frag == ((void *)0))
  return (((void *)0));
 stale = pf_default_rule.timeout[PFTM_FRAG] * 200;
 if ((frnode->fn_gen - frag->fr_gen) >= stale) {
  do { if (pf_status.debug >= (5)) { log(5, "pf: "); addlog("stale fragment %d(%p), gen %u, num %u", frag->fr_id, frag, frag->fr_gen, frnode->fn_fragments); addlog("\n"); } } while (0);
  pf_free_fragment(frag);
  return (((void *)0));
 }
 do { if (((frag)->frag_next.tqe_next) != ((void *)0)) (frag)->frag_next.tqe_next->frag_next.tqe_prev = (frag)->frag_next.tqe_prev; else (&pf_fragqueue)->tqh_last = (frag)->frag_next.tqe_prev; *(frag)->frag_next.tqe_prev = (frag)->frag_next.tqe_next; ((frag)->frag_next.tqe_prev) = ((void *)-1); ((frag)->frag_next.tqe_next) = ((void *)-1); } while (0);
 do { if (((frag)->frag_next.tqe_next = (&pf_fragqueue)->tqh_first) != ((void *)0)) (&pf_fragqueue)->tqh_first->frag_next.tqe_prev = &(frag)->frag_next.tqe_next; else (&pf_fragqueue)->tqh_last = &(frag)->frag_next.tqe_next; (&pf_fragqueue)->tqh_first = (frag); (frag)->frag_next.tqe_prev = &(&pf_fragqueue)->tqh_first; } while (0);
 return (frag);
}
struct pf_frent *
pf_create_fragment(u_short *reason)
{
 struct pf_frent *frent;
 frent = pool_get(&pf_frent_pl, 0x0002);
 if (frent == ((void *)0)) {
  pf_flush_fragments();
  frent = pool_get(&pf_frent_pl, 0x0002);
  if (frent == ((void *)0)) {
   do { if ((void *)(reason) != ((void *)0)) { *(reason) = (5); if (5 < 17) pf_status.counters[5]++; } } while (0);
   return (((void *)0));
  }
 }
 pf_nfrents++;
 return (frent);
}
struct pf_fragment *
pf_fillup_fragment(struct pf_frnode *key, u_int32_t id,
    struct pf_frent *frent, u_short *reason)
{
 struct pf_frent *after, *next, *prev;
 struct pf_fragment *frag;
 struct pf_frnode *frnode;
 u_int16_t total;
 if (frent->fe_len == 0) {
  do { if (pf_status.debug >= (5)) { log(5, "pf: "); addlog("bad fragment: len 0"); addlog("\n"); } } while (0);
  goto bad_fragment;
 }
 if (frent->fe_mff && (frent->fe_len & 0x7)) {
  do { if (pf_status.debug >= (5)) { log(5, "pf: "); addlog("bad fragment: mff and len %d", frent->fe_len); addlog("\n"); } } while (0);
  goto bad_fragment;
 }
 if (frent->fe_off + frent->fe_len > 65535) {
  do { if (pf_status.debug >= (5)) { log(5, "pf: "); addlog("bad fragment: max packet %d", frent->fe_off + frent->fe_len); addlog("\n"); } } while (0);
  goto bad_fragment;
 }
 do { if (pf_status.debug >= (6)) { log(6, "pf: "); addlog(key->fn_af == 2 ? "reass frag %d @ %d-%d" : "reass frag %#08x @ %d-%d", id, frent->fe_off, frent->fe_off + frent->fe_len); addlog("\n"); } } while (0);
 frag = pf_find_fragment(key, id);
 if (frag == ((void *)0)) {
  frag = pool_get(&pf_frag_pl, 0x0002);
  if (frag == ((void *)0)) {
   pf_flush_fragments();
   frag = pool_get(&pf_frag_pl, 0x0002);
   if (frag == ((void *)0)) {
    do { if ((void *)(reason) != ((void *)0)) { *(reason) = (5); if (5 < 17) pf_status.counters[5]++; } } while (0);
    goto drop_fragment;
   }
  }
  frnode = pf_frnode_tree_RB_FIND(&pf_frnode_tree, key);
  if (frnode == ((void *)0)) {
   frnode = pool_get(&pf_frnode_pl, 0x0002);
   if (frnode == ((void *)0)) {
    pf_flush_fragments();
    frnode = pool_get(&pf_frnode_pl, 0x0002);
    if (frnode == ((void *)0)) {
     do { if ((void *)(reason) != ((void *)0)) { *(reason) = (5); if (5 < 17) pf_status.counters[5]++; } } while (0);
     pool_put(&pf_frag_pl, frag);
     goto drop_fragment;
    }
   }
   *frnode = *key;
   do { (&frnode->fn_tree)->rbh_root = ((void *)0); } while (0);
   frnode->fn_fragments = 0;
   frnode->fn_gen = 0;
  }
  do { (&frag->fr_queue)->tqh_first = ((void *)0); (&frag->fr_queue)->tqh_last = &(&frag->fr_queue)->tqh_first; } while (0);
  frag->fr_timeout = time_uptime;
  frag->fr_gen = frnode->fn_gen++;
  frag->fr_maxlen = frent->fe_len;
  frag->fr_id = id;
  frag->fr_node = frnode;
  pf_frag_tree_RB_INSERT(&frnode->fn_tree, frag);
  frnode->fn_fragments++;
  if (frnode->fn_fragments == 1)
   pf_frnode_tree_RB_INSERT(&pf_frnode_tree, frnode);
  do { if (((frag)->frag_next.tqe_next = (&pf_fragqueue)->tqh_first) != ((void *)0)) (&pf_fragqueue)->tqh_first->frag_next.tqe_prev = &(frag)->frag_next.tqe_next; else (&pf_fragqueue)->tqh_last = &(frag)->frag_next.tqe_next; (&pf_fragqueue)->tqh_first = (frag); (frag)->frag_next.tqe_prev = &(&pf_fragqueue)->tqh_first; } while (0);
  do { if (((frent)->fr_next.tqe_next = (&frag->fr_queue)->tqh_first) != ((void *)0)) (&frag->fr_queue)->tqh_first->fr_next.tqe_prev = &(frent)->fr_next.tqe_next; else (&frag->fr_queue)->tqh_last = &(frent)->fr_next.tqe_next; (&frag->fr_queue)->tqh_first = (frent); (frent)->fr_next.tqe_prev = &(&frag->fr_queue)->tqh_first; } while (0);
  return (frag);
 }
 ((!(((&frag->fr_queue)->tqh_first) == ((void *)0))) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../net/pf_norm.c", 414, "!TAILQ_EMPTY(&frag->fr_queue)"));
 ((frag->fr_node) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../net/pf_norm.c", 415, "frag->fr_node"));
 if (frent->fe_len > frag->fr_maxlen)
  frag->fr_maxlen = frent->fe_len;
 total = (*(((struct pf_fragq *)((&frag->fr_queue)->tqh_last))->tqh_last))->fe_off +
     (*(((struct pf_fragq *)((&frag->fr_queue)->tqh_last))->tqh_last))->fe_len;
 if (frent->fe_off + frent->fe_len < total && !frent->fe_mff)
  goto free_ipv6_fragment;
 if (!(*(((struct pf_fragq *)((&frag->fr_queue)->tqh_last))->tqh_last))->fe_mff) {
  if (frent->fe_off + frent->fe_len > total ||
      (frent->fe_off + frent->fe_len == total && frent->fe_mff))
   goto free_ipv6_fragment;
 } else {
  if (frent->fe_off + frent->fe_len == total && !frent->fe_mff)
   goto free_ipv6_fragment;
 }
 prev = ((void *)0);
 for((after) = ((&frag->fr_queue)->tqh_first); (after) != ((void *)0); (after) = ((after)->fr_next.tqe_next)) {
  if (after->fe_off > frent->fe_off)
   break;
  prev = after;
 }
 ((prev != ((void *)0) || after != ((void *)0)) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../net/pf_norm.c", 447, "prev != NULL || after != NULL"));
 if (prev != ((void *)0) && prev->fe_off + prev->fe_len > frent->fe_off) {
  u_int16_t precut;
  if (frag->fr_node->fn_af == 24)
   goto free_fragment;
  precut = prev->fe_off + prev->fe_len - frent->fe_off;
  if (precut >= frent->fe_len) {
   do { if (pf_status.debug >= (5)) { log(5, "pf: "); addlog("new frag overlapped"); addlog("\n"); } } while (0);
   goto drop_fragment;
  }
  do { if (pf_status.debug >= (5)) { log(5, "pf: "); addlog("frag head overlap %d", precut); addlog("\n"); } } while (0);
  m_adj(frent->fe_m, precut);
  frent->fe_off += precut;
  frent->fe_len -= precut;
 }
 for (; after != ((void *)0) && frent->fe_off + frent->fe_len > after->fe_off;
     after = next) {
  u_int16_t aftercut;
  if (frag->fr_node->fn_af == 24)
   goto free_fragment;
  aftercut = frent->fe_off + frent->fe_len - after->fe_off;
  if (aftercut < after->fe_len) {
   do { if (pf_status.debug >= (5)) { log(5, "pf: "); addlog("frag tail overlap %d", aftercut); addlog("\n"); } } while (0);
   m_adj(after->fe_m, aftercut);
   after->fe_off += aftercut;
   after->fe_len -= aftercut;
   break;
  }
  do { if (pf_status.debug >= (5)) { log(5, "pf: "); addlog("old frag overlapped"); addlog("\n"); } } while (0);
  next = ((after)->fr_next.tqe_next);
  do { if (((after)->fr_next.tqe_next) != ((void *)0)) (after)->fr_next.tqe_next->fr_next.tqe_prev = (after)->fr_next.tqe_prev; else (&frag->fr_queue)->tqh_last = (after)->fr_next.tqe_prev; *(after)->fr_next.tqe_prev = (after)->fr_next.tqe_next; ((after)->fr_next.tqe_prev) = ((void *)-1); ((after)->fr_next.tqe_next) = ((void *)-1); } while (0);
  m_freem(after->fe_m);
  pool_put(&pf_frent_pl, after);
  pf_nfrents--;
 }
 if (prev == ((void *)0))
  do { if (((frent)->fr_next.tqe_next = (&frag->fr_queue)->tqh_first) != ((void *)0)) (&frag->fr_queue)->tqh_first->fr_next.tqe_prev = &(frent)->fr_next.tqe_next; else (&frag->fr_queue)->tqh_last = &(frent)->fr_next.tqe_next; (&frag->fr_queue)->tqh_first = (frent); (frent)->fr_next.tqe_prev = &(&frag->fr_queue)->tqh_first; } while (0);
 else
  do { if (((frent)->fr_next.tqe_next = (prev)->fr_next.tqe_next) != ((void *)0)) (frent)->fr_next.tqe_next->fr_next.tqe_prev = &(frent)->fr_next.tqe_next; else (&frag->fr_queue)->tqh_last = &(frent)->fr_next.tqe_next; (prev)->fr_next.tqe_next = (frent); (frent)->fr_next.tqe_prev = &(prev)->fr_next.tqe_next; } while (0);
 return (frag);
free_ipv6_fragment:
 if (frag->fr_node->fn_af == 2)
  goto bad_fragment;
free_fragment:
 do { if (pf_status.debug >= (5)) { log(5, "pf: "); addlog("flush overlapping fragments"); addlog("\n"); } } while (0);
 pf_free_fragment(frag);
bad_fragment:
 do { if ((void *)(reason) != ((void *)0)) { *(reason) = (2); if (2 < 17) pf_status.counters[2]++; } } while (0);
drop_fragment:
 pool_put(&pf_frent_pl, frent);
 pf_nfrents--;
 return (((void *)0));
}
int
pf_isfull_fragment(struct pf_fragment *frag)
{
 struct pf_frent *frent, *next;
 u_int16_t off, total;
 ((!(((&frag->fr_queue)->tqh_first) == ((void *)0))) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../net/pf_norm.c", 530, "!TAILQ_EMPTY(&frag->fr_queue)"));
 if ((*(((struct pf_fragq *)((&frag->fr_queue)->tqh_last))->tqh_last))->fe_mff)
  return (0);
 total = (*(((struct pf_fragq *)((&frag->fr_queue)->tqh_last))->tqh_last))->fe_off +
     (*(((struct pf_fragq *)((&frag->fr_queue)->tqh_last))->tqh_last))->fe_len;
 off = 0;
 for (frent = ((&frag->fr_queue)->tqh_first); frent; frent = next) {
  next = ((frent)->fr_next.tqe_next);
  off += frent->fe_len;
  if (off < total && (next == ((void *)0) || next->fe_off != off)) {
   do { if (pf_status.debug >= (5)) { log(5, "pf: "); addlog("missing fragment at %d, next %d, total %d", off, next == ((void *)0) ? -1 : next->fe_off, total); addlog("\n"); } } while (0);
   return (0);
  }
 }
 do { if (pf_status.debug >= (6)) { log(6, "pf: "); addlog("%d < %d?", off, total); addlog("\n"); } } while (0);
 if (off < total)
  return (0);
 ((off == total) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../net/pf_norm.c", 555, "off == total"));
 return (1);
}
struct mbuf *
pf_join_fragment(struct pf_fragment *frag)
{
 struct mbuf *m, *m2;
 struct pf_frent *frent;
 frent = ((&frag->fr_queue)->tqh_first);
 do { if (((frent)->fr_next.tqe_next) != ((void *)0)) (frent)->fr_next.tqe_next->fr_next.tqe_prev = (frent)->fr_next.tqe_prev; else (&frag->fr_queue)->tqh_last = (frent)->fr_next.tqe_prev; *(frent)->fr_next.tqe_prev = (frent)->fr_next.tqe_next; ((frent)->fr_next.tqe_prev) = ((void *)-1); ((frent)->fr_next.tqe_next) = ((void *)-1); } while (0);
 m = frent->fe_m;
 if ((frent->fe_hdrlen + frent->fe_len) < m->M_dat.MH.MH_pkthdr.len)
  m_adj(m, (frent->fe_hdrlen + frent->fe_len) - m->M_dat.MH.MH_pkthdr.len);
 m2 = m->m_hdr.mh_next;
 m->m_hdr.mh_next = ((void *)0);
 m_cat(m, m2);
 pool_put(&pf_frent_pl, frent);
 pf_nfrents--;
 while ((frent = ((&frag->fr_queue)->tqh_first)) != ((void *)0)) {
  do { if (((frent)->fr_next.tqe_next) != ((void *)0)) (frent)->fr_next.tqe_next->fr_next.tqe_prev = (frent)->fr_next.tqe_prev; else (&frag->fr_queue)->tqh_last = (frent)->fr_next.tqe_prev; *(frent)->fr_next.tqe_prev = (frent)->fr_next.tqe_next; ((frent)->fr_next.tqe_prev) = ((void *)-1); ((frent)->fr_next.tqe_next) = ((void *)-1); } while (0);
  m2 = frent->fe_m;
  m_adj(m2, frent->fe_hdrlen);
  if (frent->fe_len < m2->M_dat.MH.MH_pkthdr.len)
   m_adj(m2, frent->fe_len - m2->M_dat.MH.MH_pkthdr.len);
  pool_put(&pf_frent_pl, frent);
  pf_nfrents--;
  m_cat(m, m2);
 }
 pf_free_fragment(frag);
 return (m);
}
int
pf_reassemble(struct mbuf **m0, int dir, u_short *reason)
{
 struct mbuf *m = *m0;
 struct ip *ip = ((struct ip *)((m)->m_hdr.mh_data));
 struct pf_frent *frent;
 struct pf_fragment *frag;
 struct pf_frnode key;
 u_int16_t total, hdrlen;
 if ((frent = pf_create_fragment(reason)) == ((void *)0))
  return (PF_DROP);
 frent->fe_m = m;
 frent->fe_hdrlen = ip->ip_hl << 2;
 frent->fe_extoff = 0;
 frent->fe_len = ((__uint16_t)(ip->ip_len)) - (ip->ip_hl << 2);
 frent->fe_off = (((__uint16_t)(ip->ip_off)) & 0x1fff) << 3;
 frent->fe_mff = ((__uint16_t)(ip->ip_off)) & 0x2000;
 key.fn_src.pfa.v4 = ip->ip_src;
 key.fn_dst.pfa.v4 = ip->ip_dst;
 key.fn_af = 2;
 key.fn_proto = ip->ip_p;
 key.fn_direction = dir;
 (void)(0);
 if ((frag = pf_fillup_fragment(&key, ip->ip_id, frent, reason))
     == ((void *)0)) {
  (void)(0);
  return (PF_DROP);
 }
 m = *m0 = ((void *)0);
 if (!pf_isfull_fragment(frag)) {
  (void)(0);
  return (PF_PASS);
 }
 frent = ((&frag->fr_queue)->tqh_first);
 ((frent != ((void *)0)) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../net/pf_norm.c", 643, "frent != NULL"));
 total = (*(((struct pf_fragq *)((&frag->fr_queue)->tqh_last))->tqh_last))->fe_off +
     (*(((struct pf_fragq *)((&frag->fr_queue)->tqh_last))->tqh_last))->fe_len;
 hdrlen = frent->fe_hdrlen;
 m = *m0 = pf_join_fragment(frag);
 frag = ((void *)0);
 if (m->m_hdr.mh_flags & 0x0002) {
  int plen = 0;
  for (m = *m0; m; m = m->m_hdr.mh_next)
   plen += m->m_hdr.mh_len;
  m = *m0;
  m->M_dat.MH.MH_pkthdr.len = plen;
 }
 ip = ((struct ip *)((m)->m_hdr.mh_data));
 ip->ip_len = ((__uint16_t)(hdrlen + total));
 ip->ip_off &= ~(0x2000|0x1fff);
 if (hdrlen + total > 65535) {
  (void)(0);
  do { if (pf_status.debug >= (5)) { log(5, "pf: "); addlog("drop: too big: %d", total); addlog("\n"); } } while (0);
  ip->ip_len = 0;
  do { if ((void *)(reason) != ((void *)0)) { *(reason) = (3); if (3 < 17) pf_status.counters[3]++; } } while (0);
  return (PF_DROP);
 }
 (void)(0);
 do { if (pf_status.debug >= (6)) { log(6, "pf: "); addlog("complete: %p(%d)", m, ((__uint16_t)(ip->ip_len))); addlog("\n"); } } while (0);
 return (PF_PASS);
}
int
pf_reassemble6(struct mbuf **m0, struct ip6_frag *fraghdr,
    u_int16_t hdrlen, u_int16_t extoff, int dir, u_short *reason)
{
 struct mbuf *m = *m0;
 struct ip6_hdr *ip6 = ((struct ip6_hdr *)((m)->m_hdr.mh_data));
 struct m_tag *mtag;
 struct pf_fragment_tag *ftag;
 struct pf_frent *frent;
 struct pf_fragment *frag;
 struct pf_frnode key;
 int off;
 u_int16_t total, maxlen;
 u_int8_t proto;
 if ((frent = pf_create_fragment(reason)) == ((void *)0))
  return (PF_DROP);
 frent->fe_m = m;
 frent->fe_hdrlen = hdrlen;
 frent->fe_extoff = extoff;
 frent->fe_len = sizeof(struct ip6_hdr) + ((__uint16_t)(ip6->ip6_ctlun.ip6_un1.ip6_un1_plen)) - hdrlen;
 frent->fe_off = ((__uint16_t)(fraghdr->ip6f_offlg & 0xfff8));
 frent->fe_mff = fraghdr->ip6f_offlg & 0x0001;
 key.fn_src.pfa.v6 = ip6->ip6_src;
 key.fn_dst.pfa.v6 = ip6->ip6_dst;
 key.fn_af = 24;
 key.fn_proto = 0;
 key.fn_direction = dir;
 (void)(0);
 if ((frag = pf_fillup_fragment(&key, fraghdr->ip6f_ident, frent,
     reason)) == ((void *)0)) {
  (void)(0);
  return (PF_DROP);
 }
 m = *m0 = ((void *)0);
 if (!pf_isfull_fragment(frag)) {
  (void)(0);
  return (PF_PASS);
 }
 extoff = frent->fe_extoff;
 maxlen = frag->fr_maxlen;
 frent = ((&frag->fr_queue)->tqh_first);
 ((frent != ((void *)0)) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../net/pf_norm.c", 729, "frent != NULL"));
 total = (*(((struct pf_fragq *)((&frag->fr_queue)->tqh_last))->tqh_last))->fe_off +
     (*(((struct pf_fragq *)((&frag->fr_queue)->tqh_last))->tqh_last))->fe_len;
 hdrlen = frent->fe_hdrlen - sizeof(struct ip6_frag);
 m = *m0 = pf_join_fragment(frag);
 frag = ((void *)0);
 if ((m = m_getptr(m, hdrlen + __builtin_offsetof(struct ip6_frag, ip6f_nxt),
     &off)) == ((void *)0))
  panic("%s: short frag mbuf chain", __func__);
 proto = *(((caddr_t)((m)->m_hdr.mh_data)) + off);
 m = *m0;
 if (frag6_deletefraghdr(m, hdrlen) != 0)
  goto fail;
 if (m->m_hdr.mh_flags & 0x0002) {
  int plen = 0;
  for (m = *m0; m; m = m->m_hdr.mh_next)
   plen += m->m_hdr.mh_len;
  m = *m0;
  m->M_dat.MH.MH_pkthdr.len = plen;
 }
 if ((mtag = m_tag_get(0x0800, sizeof(struct
     pf_fragment_tag), 0x0002)) == ((void *)0))
  goto fail;
 ftag = (struct pf_fragment_tag *)(mtag + 1);
 ftag->ft_hdrlen = hdrlen;
 ftag->ft_extoff = extoff;
 ftag->ft_maxlen = maxlen;
 m_tag_prepend(m, mtag);
 ip6 = ((struct ip6_hdr *)((m)->m_hdr.mh_data));
 ip6->ip6_ctlun.ip6_un1.ip6_un1_plen = ((__uint16_t)(hdrlen - sizeof(struct ip6_hdr) + total));
 if (extoff) {
  if ((m = m_getptr(m, extoff + __builtin_offsetof(struct ip6_ext, ip6e_nxt), &off)) == ((void *)0))
   panic("%s: short ext mbuf chain", __func__);
  *(((caddr_t)((m)->m_hdr.mh_data)) + off) = proto;
  m = *m0;
 } else
  ip6->ip6_ctlun.ip6_un1.ip6_un1_nxt = proto;
 if (hdrlen - sizeof(struct ip6_hdr) + total > 65535) {
  (void)(0);
  do { if (pf_status.debug >= (5)) { log(5, "pf: "); addlog("drop: too big: %d", total); addlog("\n"); } } while (0);
  ip6->ip6_ctlun.ip6_un1.ip6_un1_plen = 0;
  do { if ((void *)(reason) != ((void *)0)) { *(reason) = (3); if (3 < 17) pf_status.counters[3]++; } } while (0);
  return (PF_DROP);
 }
 (void)(0);
 do { if (pf_status.debug >= (6)) { log(6, "pf: "); addlog("complete: %p(%d)", m, ((__uint16_t)(ip6->ip6_ctlun.ip6_un1.ip6_un1_plen))); addlog("\n"); } } while (0);
 return (PF_PASS);
fail:
 (void)(0);
 do { if ((void *)(reason) != ((void *)0)) { *(reason) = (5); if (5 < 17) pf_status.counters[5]++; } } while (0);
 return (PF_DROP);
}
int
pf_refragment6(struct mbuf **m0, struct m_tag *mtag, struct sockaddr_in6 *dst,
    struct ifnet *ifp, struct rtentry *rt)
{
 struct mbuf *m = *m0, *t;
 struct pf_fragment_tag *ftag = (struct pf_fragment_tag *)(mtag + 1);
 u_int32_t mtu;
 u_int16_t hdrlen, extoff, maxlen;
 u_int8_t proto;
 int error, action;
 hdrlen = ftag->ft_hdrlen;
 extoff = ftag->ft_extoff;
 maxlen = ftag->ft_maxlen;
 m_tag_delete(m, mtag);
 mtag = ((void *)0);
 ftag = ((void *)0);
 in6_proto_cksum_out(m, ((void *)0));
 if (extoff) {
  int off;
  if ((m = m_getptr(m, extoff + __builtin_offsetof(struct ip6_ext, ip6e_nxt), &off)) == ((void *)0))
   panic("%s: short ext mbuf chain", __func__);
  proto = *(((caddr_t)((m)->m_hdr.mh_data)) + off);
  *(((caddr_t)((m)->m_hdr.mh_data)) + off) = 44;
  m = *m0;
 } else {
  struct ip6_hdr *hdr;
  hdr = ((struct ip6_hdr *)((m)->m_hdr.mh_data));
  proto = hdr->ip6_ctlun.ip6_un1.ip6_un1_nxt;
  hdr->ip6_ctlun.ip6_un1.ip6_un1_nxt = 44;
 }
 mtu = hdrlen + sizeof(struct ip6_frag) + maxlen;
 error = ip6_fragment(m, hdrlen, proto, mtu);
 m = (*m0)->m_hdr.mh_nextpkt;
 (*m0)->m_hdr.mh_nextpkt = ((void *)0);
 if (error == 0) {
  m_freemp(m0);
  action = PF_PASS;
 } else {
  do { if (pf_status.debug >= (5)) { log(5, "pf: "); addlog("refragment error %d", error); addlog("\n"); } } while (0);
  action = PF_DROP;
 }
 for (t = m; m; m = t) {
  t = m->m_hdr.mh_nextpkt;
  m->m_hdr.mh_nextpkt = ((void *)0);
  m->M_dat.MH.MH_pkthdr.pf.flags |= 0x40;
  if (error == 0) {
   if (ifp == ((void *)0)) {
    ip6_forward(m, ((void *)0), 0);
   } else if ((u_long)m->M_dat.MH.MH_pkthdr.len <= ifp->if_data.ifi_mtu) {
    ifp->if_output(ifp, m, sin6tosa(dst), rt);
   } else {
    icmp6_error(m, 2, 0,
        ifp->if_data.ifi_mtu);
   }
  } else {
   m_freem(m);
  }
 }
 return (action);
}
int
pf_normalize_ip(struct pf_pdesc *pd, u_short *reason)
{
 struct ip *h = ((struct ip *)((pd->m)->m_hdr.mh_data));
 u_int16_t fragoff = (((__uint16_t)(h->ip_off)) & 0x1fff) << 3;
 u_int16_t mff = (((__uint16_t)(h->ip_off)) & 0x2000);
 if (!fragoff && !mff)
  goto no_fragment;
 if (pf_status.reass & 0x02 && h->ip_off & ((__uint16_t)(0x4000)))
  h->ip_off &= ((__uint16_t)(~0x4000));
 if (h->ip_off & ((__uint16_t)(0x4000))) {
  do { if (pf_status.debug >= (5)) { log(5, "pf: "); addlog("bad fragment: IP_DF"); addlog("\n"); } } while (0);
  do { if ((void *)(reason) != ((void *)0)) { *(reason) = (2); if (2 < 17) pf_status.counters[2]++; } } while (0);
  return (PF_DROP);
 }
 if (!pf_status.reass)
  return (PF_PASS);
 if (pf_reassemble(&pd->m, pd->dir, reason) != PF_PASS)
  return (PF_DROP);
 if (pd->m == ((void *)0))
  return (PF_PASS);
 h = ((struct ip *)((pd->m)->m_hdr.mh_data));
no_fragment:
 if (h->ip_off & ~((__uint16_t)(0x4000)))
  h->ip_off &= ((__uint16_t)(0x4000));
 return (PF_PASS);
}
int
pf_normalize_ip6(struct pf_pdesc *pd, u_short *reason)
{
 struct ip6_frag frag;
 if (pd->fragoff == 0)
  goto no_fragment;
 if (!pf_pull_hdr(pd->m, pd->fragoff, &frag, sizeof(frag), ((void *)0), reason,
     24))
  return (PF_DROP);
 if (!pf_status.reass)
  return (PF_PASS);
 if (pf_reassemble6(&pd->m, &frag, pd->fragoff + sizeof(frag),
     pd->extoff, pd->dir, reason) != PF_PASS)
  return (PF_DROP);
 if (pd->m == ((void *)0))
  return (PF_PASS);
no_fragment:
 return (PF_PASS);
}
int
pf_normalize_tcp(struct pf_pdesc *pd)
{
 struct tcphdr *th = &pd->hdr.tcp;
 u_short reason;
 u_int8_t flags;
 u_int rewrite = 0;
 flags = th->th_flags;
 if (flags & 0x02) {
  if (flags & 0x04)
   goto tcp_drop;
  if (flags & 0x01)
   flags &= ~0x01;
 } else {
  if (!(flags & (0x10|0x04)))
   goto tcp_drop;
 }
 if (!(flags & 0x10)) {
  if (flags & (0x01|0x08|0x20))
   goto tcp_drop;
 }
 if (flags != th->th_flags || th->th_x2 != 0) {
  u_int8_t *th_off = (u_int8_t*)(&th->th_ack+1);
  pf_patch_8(pd, th_off, th->th_off << 4, (1));
  pf_patch_8(pd, &th->th_flags, flags, (!(1)));
  rewrite = 1;
 }
 if (!(flags & 0x20) && th->th_urp) {
  pf_patch_16(pd, &th->th_urp, 0);
  rewrite = 1;
 }
 if (rewrite) {
  m_copyback(pd->m, pd->off, sizeof(*th), th, 0x0002);
 }
 return (PF_PASS);
tcp_drop:
 do { if ((void *)(&reason) != ((void *)0)) { *(&reason) = (4); if (4 < 17) pf_status.counters[4]++; } } while (0);
 return (PF_DROP);
}
int
pf_normalize_tcp_init(struct pf_pdesc *pd, struct pf_state_peer *src)
{
 struct tcphdr *th = &pd->hdr.tcp;
 u_int32_t tsval, tsecr;
 u_int8_t hdr[60];
 u_int8_t *opt;
 ((src->scrub == ((void *)0)) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../net/pf_norm.c", 1014, "src->scrub == NULL"));
 src->scrub = pool_get(&pf_state_scrub_pl, 0x0002);
 if (src->scrub == ((void *)0))
  return (1);
 __builtin_memset((src->scrub), (0), (sizeof(*src->scrub)));
 switch (pd->af) {
 case 2: {
  struct ip *h = ((struct ip *)((pd->m)->m_hdr.mh_data));
  src->scrub->pfss_ttl = h->ip_ttl;
  break;
 }
 case 24: {
  struct ip6_hdr *h = ((struct ip6_hdr *)((pd->m)->m_hdr.mh_data));
  src->scrub->pfss_ttl = h->ip6_ctlun.ip6_un1.ip6_un1_hlim;
  break;
 }
 default:
  unhandled_af(pd->af);
 }
 if ((th->th_flags & 0x02) == 0)
  return (0);
 if (th->th_off > (sizeof(struct tcphdr) >> 2) && src->scrub &&
     pf_pull_hdr(pd->m, pd->off, hdr, th->th_off << 2, ((void *)0), ((void *)0),
     pd->af)) {
  int hlen;
  opt = hdr + sizeof(struct tcphdr);
  hlen = (th->th_off << 2) - sizeof(struct tcphdr);
  while (hlen >= 10) {
   switch (*opt) {
   case 0:
   case 1:
    opt++;
    hlen--;
    break;
   case 8:
    if (opt[1] >= 10) {
     src->scrub->pfss_flags |=
         0x0001;
     src->scrub->pfss_ts_mod = arc4random();
     __builtin_memcpy((&tsval), (&opt[2]), (sizeof(u_int32_t)));
     __builtin_memcpy((&tsecr), (&opt[6]), (sizeof(u_int32_t)));
     src->scrub->pfss_tsval0 = ((__uint32_t)(tsval));
     src->scrub->pfss_tsval = ((__uint32_t)(tsval));
     src->scrub->pfss_tsecr = ((__uint32_t)(tsecr));
     getmicrouptime(&src->scrub->pfss_last);
    }
   default:
    hlen -= (((opt[1])>(2))?(opt[1]):(2));
    opt += (((opt[1])>(2))?(opt[1]):(2));
    break;
   }
  }
 }
 return (0);
}
void
pf_normalize_tcp_cleanup(struct pf_state *state)
{
 if (state->src.scrub)
  pool_put(&pf_state_scrub_pl, state->src.scrub);
 if (state->dst.scrub)
  pool_put(&pf_state_scrub_pl, state->dst.scrub);
}
int
pf_normalize_tcp_stateful(struct pf_pdesc *pd, u_short *reason,
    struct pf_state *state, struct pf_state_peer *src,
    struct pf_state_peer *dst, int *writeback)
{
 struct tcphdr *th = &pd->hdr.tcp;
 struct timeval uptime;
 u_int32_t tsval, tsecr;
 u_int tsval_from_last;
 u_int8_t hdr[60];
 u_int8_t *opts, *opt;
 int copyback = 0;
 int got_ts = 0;
 ((src->scrub || dst->scrub) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../net/pf_norm.c", 1113, "src->scrub || dst->scrub"));
 switch (pd->af) {
 case 2:
  if (src->scrub) {
   struct ip *h = ((struct ip *)((pd->m)->m_hdr.mh_data));
   if (h->ip_ttl > src->scrub->pfss_ttl)
    src->scrub->pfss_ttl = h->ip_ttl;
   h->ip_ttl = src->scrub->pfss_ttl;
  }
  break;
 case 24:
  if (src->scrub) {
   struct ip6_hdr *h = ((struct ip6_hdr *)((pd->m)->m_hdr.mh_data));
   if (h->ip6_ctlun.ip6_un1.ip6_un1_hlim > src->scrub->pfss_ttl)
    src->scrub->pfss_ttl = h->ip6_ctlun.ip6_un1.ip6_un1_hlim;
   h->ip6_ctlun.ip6_un1.ip6_un1_hlim = src->scrub->pfss_ttl;
  }
  break;
 default:
  unhandled_af(pd->af);
 }
 if (th->th_off > (sizeof(struct tcphdr) >> 2) &&
     ((src->scrub && (src->scrub->pfss_flags & 0x0001)) ||
     (dst->scrub && (dst->scrub->pfss_flags & 0x0001))) &&
     pf_pull_hdr(pd->m, pd->off, hdr, th->th_off << 2, ((void *)0), ((void *)0),
     pd->af)) {
  int hlen;
  opt = opts = hdr + sizeof(struct tcphdr);
  hlen = (th->th_off << 2) - sizeof(struct tcphdr);
  while (hlen >= 10) {
   switch (*opt) {
   case 0:
   case 1:
    opt++;
    hlen--;
    break;
   case 8:
    if (got_ts) {
     if (pf_status.debug >= 5) {
      log(5,
          "pf: %s: multiple TS??",
          __func__);
      pf_print_state(state);
      addlog("\n");
     }
     do { if ((void *)(reason) != ((void *)0)) { *(reason) = (6); if (6 < 17) pf_status.counters[6]++; } } while (0);
     return (PF_DROP);
    }
    if (opt[1] >= 10) {
     u_int8_t *ts = opt + 2;
     u_int8_t *tsr = opt + 6;
     __builtin_memcpy((&tsval), (ts), (sizeof(u_int32_t)));
     __builtin_memcpy((&tsecr), (tsr), (sizeof(u_int32_t)));
     if (tsval && src->scrub &&
         (src->scrub->pfss_flags &
         0x0001)) {
      tsval = ((__uint32_t)(tsval));
      pf_patch_32_unaligned(pd, ts,
          ((__uint32_t)(tsval + src->scrub->pfss_ts_mod)),
          (((ts - opts) % 2) == 0 ? (1) : (!(1))));
      copyback = 1;
     }
     if (tsecr && dst->scrub &&
         (dst->scrub->pfss_flags &
         0x0001)) {
      tsecr = ((__uint32_t)(tsecr))
          - dst->scrub->pfss_ts_mod;
      pf_patch_32_unaligned(pd, tsr,
          ((__uint32_t)(tsecr)),
          (((tsr - opts) % 2) == 0 ? (1) : (!(1))));
      copyback = 1;
     }
     got_ts = 1;
    }
   default:
    hlen -= (((opt[1])>(2))?(opt[1]):(2));
    opt += (((opt[1])>(2))?(opt[1]):(2));
    break;
   }
  }
  if (copyback) {
   *writeback = 1;
   m_copyback(pd->m, pd->off + sizeof(struct tcphdr),
       (th->th_off << 2) - sizeof(struct tcphdr), hdr +
       sizeof(struct tcphdr), 0x0002);
  }
 }
 getmicrouptime(&uptime);
 if (src->scrub && (src->scrub->pfss_flags & 0x0010) &&
     (uptime.tv_sec - src->scrub->pfss_last.tv_sec > (24*24*60*60) ||
     time_uptime - state->creation > (12*24*60*60))) {
  if (pf_status.debug >= 5) {
   log(5, "pf: src idled out of PAWS ");
   pf_print_state(state);
   addlog("\n");
  }
  src->scrub->pfss_flags =
      (src->scrub->pfss_flags & ~0x0010) | 0x0020;
 }
 if (dst->scrub && (dst->scrub->pfss_flags & 0x0010) &&
     uptime.tv_sec - dst->scrub->pfss_last.tv_sec > (24*24*60*60)) {
  if (pf_status.debug >= 5) {
   log(5, "pf: dst idled out of PAWS ");
   pf_print_state(state);
   addlog("\n");
  }
  dst->scrub->pfss_flags =
      (dst->scrub->pfss_flags & ~0x0010) | 0x0020;
 }
 if (got_ts && src->scrub && dst->scrub &&
     (src->scrub->pfss_flags & 0x0010) &&
     (dst->scrub->pfss_flags & 0x0010)) {
  struct timeval delta_ts;
  int ts_fudge;
  if ((ts_fudge = state->rule.ptr->timeout[PFTM_TS_DIFF]) == 0)
   ts_fudge = pf_default_rule.timeout[PFTM_TS_DIFF];
  do { (&delta_ts)->tv_sec = (&uptime)->tv_sec - (&src->scrub->pfss_last)->tv_sec; (&delta_ts)->tv_usec = (&uptime)->tv_usec - (&src->scrub->pfss_last)->tv_usec; if ((&delta_ts)->tv_usec < 0) { (&delta_ts)->tv_sec--; (&delta_ts)->tv_usec += 1000000; } } while (0);
  tsval_from_last = (delta_ts.tv_sec + ts_fudge) * 1100;
  tsval_from_last += delta_ts.tv_usec / (1000000/1100);
  if ((src->state >= 4 &&
      dst->state >= 4) &&
      (((int)((tsval)-(dst->scrub->pfss_tsecr)) < 0) ||
      ((int)((tsval)-(src->scrub->pfss_tsval + tsval_from_last)) > 0) ||
      (tsecr && (((int)((tsecr)-(dst->scrub->pfss_tsval)) > 0) ||
      ((int)((tsecr)-(dst->scrub->pfss_tsval0)) < 0))))) {
   do { if (pf_status.debug >= (5)) { log(5, "pf: "); addlog("Timestamp failed %c%c%c%c", ((int)((tsval)-(dst->scrub->pfss_tsecr)) < 0) ? '0' : ' ', ((int)((tsval)-(src->scrub->pfss_tsval + tsval_from_last)) > 0) ? '1' : ' ', ((int)((tsecr)-(dst->scrub->pfss_tsval)) > 0) ? '2' : ' ', ((int)((tsecr)-(dst->scrub->pfss_tsval0)) < 0)? '3' : ' '); addlog("\n"); } } while (0);
   do { if (pf_status.debug >= (5)) { log(5, "pf: "); addlog(" tsval: %u  tsecr: %u  " "+ticks: %u  idle: %llu.%06lus", tsval, tsecr, tsval_from_last, (long long)delta_ts.tv_sec, delta_ts.tv_usec); addlog("\n"); } } while (0);
   do { if (pf_status.debug >= (5)) { log(5, "pf: "); addlog(" src->tsval: %u  tsecr: %u", src->scrub->pfss_tsval, src->scrub->pfss_tsecr); addlog("\n"); } } while (0);
   do { if (pf_status.debug >= (5)) { log(5, "pf: "); addlog(" dst->tsval: %u  tsecr: %u  " "tsval0: %u", dst->scrub->pfss_tsval, dst->scrub->pfss_tsecr, dst->scrub->pfss_tsval0); addlog("\n"); } } while (0);
   if (pf_status.debug >= 5) {
    log(5, "pf: ");
    pf_print_state(state);
    pf_print_flags(th->th_flags);
    addlog("\n");
   }
   do { if ((void *)(reason) != ((void *)0)) { *(reason) = (6); if (6 < 17) pf_status.counters[6]++; } } while (0);
   return (PF_DROP);
  }
 } else if (!got_ts && (th->th_flags & 0x04) == 0 &&
     ((src->state == 4 && dst->state == 4)
     || pd->p_len > 0 || (th->th_flags & 0x02)) &&
     src->scrub && dst->scrub &&
     (src->scrub->pfss_flags & 0x0010) &&
     (dst->scrub->pfss_flags & 0x0010)) {
  if (pd->p_len > 0 && (src->scrub->pfss_flags & 0x0040)) {
   if (pf_status.debug >= 5) {
    log(5,
        "pf: did not receive expected RFC1323 "
        "timestamp");
    pf_print_state(state);
    pf_print_flags(th->th_flags);
    addlog("\n");
   }
   do { if ((void *)(reason) != ((void *)0)) { *(reason) = (6); if (6 < 17) pf_status.counters[6]++; } } while (0);
   return (PF_DROP);
  }
 }
 if (pd->p_len > 0 && src->scrub && (src->scrub->pfss_flags &
     (0x0001|0x0040|0x0080)) == 0x0001) {
  if (got_ts)
   src->scrub->pfss_flags |= 0x0040;
  else {
   src->scrub->pfss_flags |= 0x0080;
   if (pf_status.debug >= 5 && dst->scrub &&
       (dst->scrub->pfss_flags & 0x0001)) {
    log(5,
        "pf: broken RFC1323 stack did not "
        "timestamp data packet. Disabled PAWS "
        "security.");
    pf_print_state(state);
    pf_print_flags(th->th_flags);
    addlog("\n");
   }
  }
 }
 if (got_ts && src->scrub && 0x0001 == (src->scrub->pfss_flags &
     (0x0020|0x0001))) {
  getmicrouptime(&src->scrub->pfss_last);
  if (((int)((tsval)-(src->scrub->pfss_tsval)) >= 0) ||
      (src->scrub->pfss_flags & 0x0010) == 0)
   src->scrub->pfss_tsval = tsval;
  if (tsecr) {
   if (((int)((tsecr)-(src->scrub->pfss_tsecr)) >= 0) ||
       (src->scrub->pfss_flags & 0x0010) == 0)
    src->scrub->pfss_tsecr = tsecr;
   if ((src->scrub->pfss_flags & 0x0010) == 0 &&
       (((int)((tsval)-(src->scrub->pfss_tsval0)) < 0) ||
       src->scrub->pfss_tsval0 == 0)) {
    src->scrub->pfss_tsval0 = tsval;
   }
   if ((src->scrub->pfss_flags & 0x0010) == 0)
    src->scrub->pfss_flags |= 0x0010;
  }
 }
 return (0);
}
int
pf_normalize_mss(struct pf_pdesc *pd, u_int16_t maxmss)
{
 struct tcphdr *th = &pd->hdr.tcp;
 u_int16_t mss;
 int thoff;
 int opt, cnt, optlen = 0;
 u_int8_t opts[40];
 u_int8_t *optp = opts;
 thoff = th->th_off << 2;
 cnt = thoff - sizeof(struct tcphdr);
 if (cnt <= 0 || cnt > 40 || !pf_pull_hdr(pd->m,
     pd->off + sizeof(*th), opts, cnt, ((void *)0), ((void *)0), pd->af))
  return (0);
 for (; cnt > 0; cnt -= optlen, optp += optlen) {
  opt = optp[0];
  if (opt == 0)
   break;
  if (opt == 1)
   optlen = 1;
  else {
   if (cnt < 2)
    break;
   optlen = optp[1];
   if (optlen < 2 || optlen > cnt)
    break;
  }
  if (opt == 2) {
   u_int8_t *mssp = optp + 2;
   __builtin_memcpy((&mss), (mssp), (sizeof(mss)));
   if (((__uint16_t)(mss)) > maxmss) {
    size_t mssoffopts = mssp - opts;
    pf_patch_16_unaligned(pd, &mss,
        ((__uint16_t)(maxmss)), (((mssoffopts) % 2) == 0 ? (1) : (!(1))));
    m_copyback(pd->m,
        pd->off + sizeof(*th) + mssoffopts,
        sizeof(mss), &mss, 0x0002);
    m_copyback(pd->m, pd->off, sizeof(*th), th,
        0x0002);
   }
  }
 }
 return (0);
}
void
pf_scrub(struct mbuf *m, u_int16_t flags, sa_family_t af, u_int8_t min_ttl,
    u_int8_t tos)
{
 struct ip *h = ((struct ip *)((m)->m_hdr.mh_data));
 struct ip6_hdr *h6 = ((struct ip6_hdr *)((m)->m_hdr.mh_data));
 if (flags & 0x0020 && af == 2 && h->ip_off & ((__uint16_t)(0x4000)))
  h->ip_off &= ((__uint16_t)(~0x4000));
 if (min_ttl && af == 2 && h->ip_ttl < min_ttl)
  h->ip_ttl = min_ttl;
 if (min_ttl && af == 24 && h6->ip6_ctlun.ip6_un1.ip6_un1_hlim < min_ttl)
  h6->ip6_ctlun.ip6_un1.ip6_un1_hlim = min_ttl;
 if (flags & 0x0040) {
  if (af == 2)
   h->ip_tos = tos | (h->ip_tos & 0x03);
  if (af == 24) {
   h6->ip6_ctlun.ip6_un1.ip6_un1_flow &= ~((__uint32_t)(0x0fc00000));
   h6->ip6_ctlun.ip6_un1.ip6_un1_flow |= ((__uint32_t)(((u_int32_t)tos) << 20));
  }
 }
 if (flags & 0x0080 && af == 2 &&
     !(h->ip_off & ~((__uint16_t)(0x4000))))
  h->ip_id = ((__uint16_t)(ip_randomid()));
}
