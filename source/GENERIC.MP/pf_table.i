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
struct udphdr {
 u_int16_t uh_sport;
 u_int16_t uh_dport;
 u_int16_t uh_ulen;
 u_int16_t uh_sum;
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
struct pfr_walktree {
 enum pfrw_op {
  PFRW_MARK,
  PFRW_SWEEP,
  PFRW_ENQUEUE,
  PFRW_GET_ADDRS,
  PFRW_GET_ASTATS,
  PFRW_POOL_GET,
  PFRW_DYNADDR_UPDATE
 } pfrw_op;
 union {
  struct pfr_addr *pfrw1_addr;
  struct pfr_astats *pfrw1_astats;
  struct pfr_kentryworkq *pfrw1_workq;
  struct pfr_kentry *pfrw1_kentry;
  struct pfi_dynaddr *pfrw1_dyn;
 } pfrw_1;
 int pfrw_free;
 int pfrw_flags;
};
struct pool pfr_ktable_pl;
struct pool pfr_kentry_pl[PFRKE_MAX];
struct pool pfr_kcounters_pl;
union sockaddr_union pfr_mask;
struct pf_addr pfr_ffaddr;
int pfr_gcd(int, int);
void pfr_copyout_addr(struct pfr_addr *,
       struct pfr_kentry *ke);
int pfr_validate_addr(struct pfr_addr *);
void pfr_enqueue_addrs(struct pfr_ktable *,
       struct pfr_kentryworkq *, int *, int);
void pfr_mark_addrs(struct pfr_ktable *);
struct pfr_kentry *pfr_lookup_addr(struct pfr_ktable *,
       struct pfr_addr *, int);
struct pfr_kentry *pfr_create_kentry(struct pfr_addr *);
void pfr_destroy_kentries(struct pfr_kentryworkq *);
void pfr_destroy_kentry(struct pfr_kentry *);
void pfr_insert_kentries(struct pfr_ktable *,
       struct pfr_kentryworkq *, time_t);
void pfr_remove_kentries(struct pfr_ktable *,
       struct pfr_kentryworkq *);
void pfr_clstats_kentries(struct pfr_kentryworkq *, time_t,
       int);
void pfr_reset_feedback(struct pfr_addr *, int, int);
void pfr_prepare_network(union sockaddr_union *, int, int);
int pfr_route_kentry(struct pfr_ktable *,
       struct pfr_kentry *);
int pfr_unroute_kentry(struct pfr_ktable *,
       struct pfr_kentry *);
int pfr_walktree(struct radix_node *, void *, u_int);
int pfr_validate_table(struct pfr_table *, int, int);
int pfr_fix_anchor(char *);
void pfr_commit_ktable(struct pfr_ktable *, time_t);
void pfr_insert_ktables(struct pfr_ktableworkq *);
void pfr_insert_ktable(struct pfr_ktable *);
void pfr_setflags_ktables(struct pfr_ktableworkq *);
void pfr_setflags_ktable(struct pfr_ktable *, int);
void pfr_clstats_ktables(struct pfr_ktableworkq *, time_t,
       int);
void pfr_clstats_ktable(struct pfr_ktable *, time_t, int);
struct pfr_ktable *pfr_create_ktable(struct pfr_table *, time_t, int,
       int);
void pfr_destroy_ktables(struct pfr_ktableworkq *, int);
void pfr_destroy_ktable(struct pfr_ktable *, int);
int pfr_ktable_compare(struct pfr_ktable *,
       struct pfr_ktable *);
void pfr_ktable_winfo_update(struct pfr_ktable *,
       struct pfr_kentry *);
struct pfr_ktable *pfr_lookup_table(struct pfr_table *);
void pfr_clean_node_mask(struct pfr_ktable *,
       struct pfr_kentryworkq *);
int pfr_table_count(struct pfr_table *, int);
int pfr_skip_table(struct pfr_table *,
       struct pfr_ktable *, int);
struct pfr_kentry *pfr_kentry_byidx(struct pfr_ktable *, int, int);
int pfr_islinklocal(sa_family_t, struct pf_addr *);
 void pfr_ktablehead_RB_INSERT_COLOR(struct pfr_ktablehead *, struct pfr_ktable *); void pfr_ktablehead_RB_REMOVE_COLOR(struct pfr_ktablehead *, struct pfr_ktable *, struct pfr_ktable *); struct pfr_ktable *pfr_ktablehead_RB_REMOVE(struct pfr_ktablehead *, struct pfr_ktable *); struct pfr_ktable *pfr_ktablehead_RB_INSERT(struct pfr_ktablehead *, struct pfr_ktable *); struct pfr_ktable *pfr_ktablehead_RB_FIND(struct pfr_ktablehead *, struct pfr_ktable *); struct pfr_ktable *pfr_ktablehead_RB_NFIND(struct pfr_ktablehead *, struct pfr_ktable *); struct pfr_ktable *pfr_ktablehead_RB_NEXT(struct pfr_ktable *); struct pfr_ktable *pfr_ktablehead_RB_PREV(struct pfr_ktable *); struct pfr_ktable *pfr_ktablehead_RB_MINMAX(struct pfr_ktablehead *, int);;
 void pfr_ktablehead_RB_INSERT_COLOR(struct pfr_ktablehead *head, struct pfr_ktable *elm) { struct pfr_ktable *parent, *gparent, *tmp; while ((parent = (elm)->pfrkt_tree.rbe_parent) && (parent)->pfrkt_tree.rbe_color == 1) { gparent = (parent)->pfrkt_tree.rbe_parent; if (parent == (gparent)->pfrkt_tree.rbe_left) { tmp = (gparent)->pfrkt_tree.rbe_right; if (tmp && (tmp)->pfrkt_tree.rbe_color == 1) { (tmp)->pfrkt_tree.rbe_color = 0; do { (parent)->pfrkt_tree.rbe_color = 0; (gparent)->pfrkt_tree.rbe_color = 1; } while (0); elm = gparent; continue; } if ((parent)->pfrkt_tree.rbe_right == elm) { do { (tmp) = (parent)->pfrkt_tree.rbe_right; if (((parent)->pfrkt_tree.rbe_right = (tmp)->pfrkt_tree.rbe_left)) { ((tmp)->pfrkt_tree.rbe_left)->pfrkt_tree.rbe_parent = (parent); } do {} while (0); if (((tmp)->pfrkt_tree.rbe_parent = (parent)->pfrkt_tree.rbe_parent)) { if ((parent) == ((parent)->pfrkt_tree.rbe_parent)->pfrkt_tree.rbe_left) ((parent)->pfrkt_tree.rbe_parent)->pfrkt_tree.rbe_left = (tmp); else ((parent)->pfrkt_tree.rbe_parent)->pfrkt_tree.rbe_right = (tmp); } else (head)->rbh_root = (tmp); (tmp)->pfrkt_tree.rbe_left = (parent); (parent)->pfrkt_tree.rbe_parent = (tmp); do {} while (0); if (((tmp)->pfrkt_tree.rbe_parent)) do {} while (0); } while (0); tmp = parent; parent = elm; elm = tmp; } do { (parent)->pfrkt_tree.rbe_color = 0; (gparent)->pfrkt_tree.rbe_color = 1; } while (0); do { (tmp) = (gparent)->pfrkt_tree.rbe_left; if (((gparent)->pfrkt_tree.rbe_left = (tmp)->pfrkt_tree.rbe_right)) { ((tmp)->pfrkt_tree.rbe_right)->pfrkt_tree.rbe_parent = (gparent); } do {} while (0); if (((tmp)->pfrkt_tree.rbe_parent = (gparent)->pfrkt_tree.rbe_parent)) { if ((gparent) == ((gparent)->pfrkt_tree.rbe_parent)->pfrkt_tree.rbe_left) ((gparent)->pfrkt_tree.rbe_parent)->pfrkt_tree.rbe_left = (tmp); else ((gparent)->pfrkt_tree.rbe_parent)->pfrkt_tree.rbe_right = (tmp); } else (head)->rbh_root = (tmp); (tmp)->pfrkt_tree.rbe_right = (gparent); (gparent)->pfrkt_tree.rbe_parent = (tmp); do {} while (0); if (((tmp)->pfrkt_tree.rbe_parent)) do {} while (0); } while (0); } else { tmp = (gparent)->pfrkt_tree.rbe_left; if (tmp && (tmp)->pfrkt_tree.rbe_color == 1) { (tmp)->pfrkt_tree.rbe_color = 0; do { (parent)->pfrkt_tree.rbe_color = 0; (gparent)->pfrkt_tree.rbe_color = 1; } while (0); elm = gparent; continue; } if ((parent)->pfrkt_tree.rbe_left == elm) { do { (tmp) = (parent)->pfrkt_tree.rbe_left; if (((parent)->pfrkt_tree.rbe_left = (tmp)->pfrkt_tree.rbe_right)) { ((tmp)->pfrkt_tree.rbe_right)->pfrkt_tree.rbe_parent = (parent); } do {} while (0); if (((tmp)->pfrkt_tree.rbe_parent = (parent)->pfrkt_tree.rbe_parent)) { if ((parent) == ((parent)->pfrkt_tree.rbe_parent)->pfrkt_tree.rbe_left) ((parent)->pfrkt_tree.rbe_parent)->pfrkt_tree.rbe_left = (tmp); else ((parent)->pfrkt_tree.rbe_parent)->pfrkt_tree.rbe_right = (tmp); } else (head)->rbh_root = (tmp); (tmp)->pfrkt_tree.rbe_right = (parent); (parent)->pfrkt_tree.rbe_parent = (tmp); do {} while (0); if (((tmp)->pfrkt_tree.rbe_parent)) do {} while (0); } while (0); tmp = parent; parent = elm; elm = tmp; } do { (parent)->pfrkt_tree.rbe_color = 0; (gparent)->pfrkt_tree.rbe_color = 1; } while (0); do { (tmp) = (gparent)->pfrkt_tree.rbe_right; if (((gparent)->pfrkt_tree.rbe_right = (tmp)->pfrkt_tree.rbe_left)) { ((tmp)->pfrkt_tree.rbe_left)->pfrkt_tree.rbe_parent = (gparent); } do {} while (0); if (((tmp)->pfrkt_tree.rbe_parent = (gparent)->pfrkt_tree.rbe_parent)) { if ((gparent) == ((gparent)->pfrkt_tree.rbe_parent)->pfrkt_tree.rbe_left) ((gparent)->pfrkt_tree.rbe_parent)->pfrkt_tree.rbe_left = (tmp); else ((gparent)->pfrkt_tree.rbe_parent)->pfrkt_tree.rbe_right = (tmp); } else (head)->rbh_root = (tmp); (tmp)->pfrkt_tree.rbe_left = (gparent); (gparent)->pfrkt_tree.rbe_parent = (tmp); do {} while (0); if (((tmp)->pfrkt_tree.rbe_parent)) do {} while (0); } while (0); } } (head->rbh_root)->pfrkt_tree.rbe_color = 0; } void pfr_ktablehead_RB_REMOVE_COLOR(struct pfr_ktablehead *head, struct pfr_ktable *parent, struct pfr_ktable *elm) { struct pfr_ktable *tmp; while ((elm == ((void *)0) || (elm)->pfrkt_tree.rbe_color == 0) && elm != (head)->rbh_root) { if ((parent)->pfrkt_tree.rbe_left == elm) { tmp = (parent)->pfrkt_tree.rbe_right; if ((tmp)->pfrkt_tree.rbe_color == 1) { do { (tmp)->pfrkt_tree.rbe_color = 0; (parent)->pfrkt_tree.rbe_color = 1; } while (0); do { (tmp) = (parent)->pfrkt_tree.rbe_right; if (((parent)->pfrkt_tree.rbe_right = (tmp)->pfrkt_tree.rbe_left)) { ((tmp)->pfrkt_tree.rbe_left)->pfrkt_tree.rbe_parent = (parent); } do {} while (0); if (((tmp)->pfrkt_tree.rbe_parent = (parent)->pfrkt_tree.rbe_parent)) { if ((parent) == ((parent)->pfrkt_tree.rbe_parent)->pfrkt_tree.rbe_left) ((parent)->pfrkt_tree.rbe_parent)->pfrkt_tree.rbe_left = (tmp); else ((parent)->pfrkt_tree.rbe_parent)->pfrkt_tree.rbe_right = (tmp); } else (head)->rbh_root = (tmp); (tmp)->pfrkt_tree.rbe_left = (parent); (parent)->pfrkt_tree.rbe_parent = (tmp); do {} while (0); if (((tmp)->pfrkt_tree.rbe_parent)) do {} while (0); } while (0); tmp = (parent)->pfrkt_tree.rbe_right; } if (((tmp)->pfrkt_tree.rbe_left == ((void *)0) || ((tmp)->pfrkt_tree.rbe_left)->pfrkt_tree.rbe_color == 0) && ((tmp)->pfrkt_tree.rbe_right == ((void *)0) || ((tmp)->pfrkt_tree.rbe_right)->pfrkt_tree.rbe_color == 0)) { (tmp)->pfrkt_tree.rbe_color = 1; elm = parent; parent = (elm)->pfrkt_tree.rbe_parent; } else { if ((tmp)->pfrkt_tree.rbe_right == ((void *)0) || ((tmp)->pfrkt_tree.rbe_right)->pfrkt_tree.rbe_color == 0) { struct pfr_ktable *oleft; if ((oleft = (tmp)->pfrkt_tree.rbe_left)) (oleft)->pfrkt_tree.rbe_color = 0; (tmp)->pfrkt_tree.rbe_color = 1; do { (oleft) = (tmp)->pfrkt_tree.rbe_left; if (((tmp)->pfrkt_tree.rbe_left = (oleft)->pfrkt_tree.rbe_right)) { ((oleft)->pfrkt_tree.rbe_right)->pfrkt_tree.rbe_parent = (tmp); } do {} while (0); if (((oleft)->pfrkt_tree.rbe_parent = (tmp)->pfrkt_tree.rbe_parent)) { if ((tmp) == ((tmp)->pfrkt_tree.rbe_parent)->pfrkt_tree.rbe_left) ((tmp)->pfrkt_tree.rbe_parent)->pfrkt_tree.rbe_left = (oleft); else ((tmp)->pfrkt_tree.rbe_parent)->pfrkt_tree.rbe_right = (oleft); } else (head)->rbh_root = (oleft); (oleft)->pfrkt_tree.rbe_right = (tmp); (tmp)->pfrkt_tree.rbe_parent = (oleft); do {} while (0); if (((oleft)->pfrkt_tree.rbe_parent)) do {} while (0); } while (0); tmp = (parent)->pfrkt_tree.rbe_right; } (tmp)->pfrkt_tree.rbe_color = (parent)->pfrkt_tree.rbe_color; (parent)->pfrkt_tree.rbe_color = 0; if ((tmp)->pfrkt_tree.rbe_right) ((tmp)->pfrkt_tree.rbe_right)->pfrkt_tree.rbe_color = 0; do { (tmp) = (parent)->pfrkt_tree.rbe_right; if (((parent)->pfrkt_tree.rbe_right = (tmp)->pfrkt_tree.rbe_left)) { ((tmp)->pfrkt_tree.rbe_left)->pfrkt_tree.rbe_parent = (parent); } do {} while (0); if (((tmp)->pfrkt_tree.rbe_parent = (parent)->pfrkt_tree.rbe_parent)) { if ((parent) == ((parent)->pfrkt_tree.rbe_parent)->pfrkt_tree.rbe_left) ((parent)->pfrkt_tree.rbe_parent)->pfrkt_tree.rbe_left = (tmp); else ((parent)->pfrkt_tree.rbe_parent)->pfrkt_tree.rbe_right = (tmp); } else (head)->rbh_root = (tmp); (tmp)->pfrkt_tree.rbe_left = (parent); (parent)->pfrkt_tree.rbe_parent = (tmp); do {} while (0); if (((tmp)->pfrkt_tree.rbe_parent)) do {} while (0); } while (0); elm = (head)->rbh_root; break; } } else { tmp = (parent)->pfrkt_tree.rbe_left; if ((tmp)->pfrkt_tree.rbe_color == 1) { do { (tmp)->pfrkt_tree.rbe_color = 0; (parent)->pfrkt_tree.rbe_color = 1; } while (0); do { (tmp) = (parent)->pfrkt_tree.rbe_left; if (((parent)->pfrkt_tree.rbe_left = (tmp)->pfrkt_tree.rbe_right)) { ((tmp)->pfrkt_tree.rbe_right)->pfrkt_tree.rbe_parent = (parent); } do {} while (0); if (((tmp)->pfrkt_tree.rbe_parent = (parent)->pfrkt_tree.rbe_parent)) { if ((parent) == ((parent)->pfrkt_tree.rbe_parent)->pfrkt_tree.rbe_left) ((parent)->pfrkt_tree.rbe_parent)->pfrkt_tree.rbe_left = (tmp); else ((parent)->pfrkt_tree.rbe_parent)->pfrkt_tree.rbe_right = (tmp); } else (head)->rbh_root = (tmp); (tmp)->pfrkt_tree.rbe_right = (parent); (parent)->pfrkt_tree.rbe_parent = (tmp); do {} while (0); if (((tmp)->pfrkt_tree.rbe_parent)) do {} while (0); } while (0); tmp = (parent)->pfrkt_tree.rbe_left; } if (((tmp)->pfrkt_tree.rbe_left == ((void *)0) || ((tmp)->pfrkt_tree.rbe_left)->pfrkt_tree.rbe_color == 0) && ((tmp)->pfrkt_tree.rbe_right == ((void *)0) || ((tmp)->pfrkt_tree.rbe_right)->pfrkt_tree.rbe_color == 0)) { (tmp)->pfrkt_tree.rbe_color = 1; elm = parent; parent = (elm)->pfrkt_tree.rbe_parent; } else { if ((tmp)->pfrkt_tree.rbe_left == ((void *)0) || ((tmp)->pfrkt_tree.rbe_left)->pfrkt_tree.rbe_color == 0) { struct pfr_ktable *oright; if ((oright = (tmp)->pfrkt_tree.rbe_right)) (oright)->pfrkt_tree.rbe_color = 0; (tmp)->pfrkt_tree.rbe_color = 1; do { (oright) = (tmp)->pfrkt_tree.rbe_right; if (((tmp)->pfrkt_tree.rbe_right = (oright)->pfrkt_tree.rbe_left)) { ((oright)->pfrkt_tree.rbe_left)->pfrkt_tree.rbe_parent = (tmp); } do {} while (0); if (((oright)->pfrkt_tree.rbe_parent = (tmp)->pfrkt_tree.rbe_parent)) { if ((tmp) == ((tmp)->pfrkt_tree.rbe_parent)->pfrkt_tree.rbe_left) ((tmp)->pfrkt_tree.rbe_parent)->pfrkt_tree.rbe_left = (oright); else ((tmp)->pfrkt_tree.rbe_parent)->pfrkt_tree.rbe_right = (oright); } else (head)->rbh_root = (oright); (oright)->pfrkt_tree.rbe_left = (tmp); (tmp)->pfrkt_tree.rbe_parent = (oright); do {} while (0); if (((oright)->pfrkt_tree.rbe_parent)) do {} while (0); } while (0); tmp = (parent)->pfrkt_tree.rbe_left; } (tmp)->pfrkt_tree.rbe_color = (parent)->pfrkt_tree.rbe_color; (parent)->pfrkt_tree.rbe_color = 0; if ((tmp)->pfrkt_tree.rbe_left) ((tmp)->pfrkt_tree.rbe_left)->pfrkt_tree.rbe_color = 0; do { (tmp) = (parent)->pfrkt_tree.rbe_left; if (((parent)->pfrkt_tree.rbe_left = (tmp)->pfrkt_tree.rbe_right)) { ((tmp)->pfrkt_tree.rbe_right)->pfrkt_tree.rbe_parent = (parent); } do {} while (0); if (((tmp)->pfrkt_tree.rbe_parent = (parent)->pfrkt_tree.rbe_parent)) { if ((parent) == ((parent)->pfrkt_tree.rbe_parent)->pfrkt_tree.rbe_left) ((parent)->pfrkt_tree.rbe_parent)->pfrkt_tree.rbe_left = (tmp); else ((parent)->pfrkt_tree.rbe_parent)->pfrkt_tree.rbe_right = (tmp); } else (head)->rbh_root = (tmp); (tmp)->pfrkt_tree.rbe_right = (parent); (parent)->pfrkt_tree.rbe_parent = (tmp); do {} while (0); if (((tmp)->pfrkt_tree.rbe_parent)) do {} while (0); } while (0); elm = (head)->rbh_root; break; } } } if (elm) (elm)->pfrkt_tree.rbe_color = 0; } struct pfr_ktable * pfr_ktablehead_RB_REMOVE(struct pfr_ktablehead *head, struct pfr_ktable *elm) { struct pfr_ktable *child, *parent, *old = elm; int color; if ((elm)->pfrkt_tree.rbe_left == ((void *)0)) child = (elm)->pfrkt_tree.rbe_right; else if ((elm)->pfrkt_tree.rbe_right == ((void *)0)) child = (elm)->pfrkt_tree.rbe_left; else { struct pfr_ktable *left; elm = (elm)->pfrkt_tree.rbe_right; while ((left = (elm)->pfrkt_tree.rbe_left)) elm = left; child = (elm)->pfrkt_tree.rbe_right; parent = (elm)->pfrkt_tree.rbe_parent; color = (elm)->pfrkt_tree.rbe_color; if (child) (child)->pfrkt_tree.rbe_parent = parent; if (parent) { if ((parent)->pfrkt_tree.rbe_left == elm) (parent)->pfrkt_tree.rbe_left = child; else (parent)->pfrkt_tree.rbe_right = child; do {} while (0); } else (head)->rbh_root = child; if ((elm)->pfrkt_tree.rbe_parent == old) parent = elm; (elm)->pfrkt_tree = (old)->pfrkt_tree; if ((old)->pfrkt_tree.rbe_parent) { if (((old)->pfrkt_tree.rbe_parent)->pfrkt_tree.rbe_left == old) ((old)->pfrkt_tree.rbe_parent)->pfrkt_tree.rbe_left = elm; else ((old)->pfrkt_tree.rbe_parent)->pfrkt_tree.rbe_right = elm; do {} while (0); } else (head)->rbh_root = elm; ((old)->pfrkt_tree.rbe_left)->pfrkt_tree.rbe_parent = elm; if ((old)->pfrkt_tree.rbe_right) ((old)->pfrkt_tree.rbe_right)->pfrkt_tree.rbe_parent = elm; if (parent) { left = parent; do { do {} while (0); } while ((left = (left)->pfrkt_tree.rbe_parent)); } goto color; } parent = (elm)->pfrkt_tree.rbe_parent; color = (elm)->pfrkt_tree.rbe_color; if (child) (child)->pfrkt_tree.rbe_parent = parent; if (parent) { if ((parent)->pfrkt_tree.rbe_left == elm) (parent)->pfrkt_tree.rbe_left = child; else (parent)->pfrkt_tree.rbe_right = child; do {} while (0); } else (head)->rbh_root = child; color: if (color == 0) pfr_ktablehead_RB_REMOVE_COLOR(head, parent, child); return (old); } struct pfr_ktable * pfr_ktablehead_RB_INSERT(struct pfr_ktablehead *head, struct pfr_ktable *elm) { struct pfr_ktable *tmp; struct pfr_ktable *parent = ((void *)0); int comp = 0; tmp = (head)->rbh_root; while (tmp) { parent = tmp; comp = (pfr_ktable_compare)(elm, parent); if (comp < 0) tmp = (tmp)->pfrkt_tree.rbe_left; else if (comp > 0) tmp = (tmp)->pfrkt_tree.rbe_right; else return (tmp); } do { (elm)->pfrkt_tree.rbe_parent = parent; (elm)->pfrkt_tree.rbe_left = (elm)->pfrkt_tree.rbe_right = ((void *)0); (elm)->pfrkt_tree.rbe_color = 1; } while (0); if (parent != ((void *)0)) { if (comp < 0) (parent)->pfrkt_tree.rbe_left = elm; else (parent)->pfrkt_tree.rbe_right = elm; do {} while (0); } else (head)->rbh_root = elm; pfr_ktablehead_RB_INSERT_COLOR(head, elm); return (((void *)0)); } struct pfr_ktable * pfr_ktablehead_RB_FIND(struct pfr_ktablehead *head, struct pfr_ktable *elm) { struct pfr_ktable *tmp = (head)->rbh_root; int comp; while (tmp) { comp = pfr_ktable_compare(elm, tmp); if (comp < 0) tmp = (tmp)->pfrkt_tree.rbe_left; else if (comp > 0) tmp = (tmp)->pfrkt_tree.rbe_right; else return (tmp); } return (((void *)0)); } struct pfr_ktable * pfr_ktablehead_RB_NFIND(struct pfr_ktablehead *head, struct pfr_ktable *elm) { struct pfr_ktable *tmp = (head)->rbh_root; struct pfr_ktable *res = ((void *)0); int comp; while (tmp) { comp = pfr_ktable_compare(elm, tmp); if (comp < 0) { res = tmp; tmp = (tmp)->pfrkt_tree.rbe_left; } else if (comp > 0) tmp = (tmp)->pfrkt_tree.rbe_right; else return (tmp); } return (res); } struct pfr_ktable * pfr_ktablehead_RB_NEXT(struct pfr_ktable *elm) { if ((elm)->pfrkt_tree.rbe_right) { elm = (elm)->pfrkt_tree.rbe_right; while ((elm)->pfrkt_tree.rbe_left) elm = (elm)->pfrkt_tree.rbe_left; } else { if ((elm)->pfrkt_tree.rbe_parent && (elm == ((elm)->pfrkt_tree.rbe_parent)->pfrkt_tree.rbe_left)) elm = (elm)->pfrkt_tree.rbe_parent; else { while ((elm)->pfrkt_tree.rbe_parent && (elm == ((elm)->pfrkt_tree.rbe_parent)->pfrkt_tree.rbe_right)) elm = (elm)->pfrkt_tree.rbe_parent; elm = (elm)->pfrkt_tree.rbe_parent; } } return (elm); } struct pfr_ktable * pfr_ktablehead_RB_PREV(struct pfr_ktable *elm) { if ((elm)->pfrkt_tree.rbe_left) { elm = (elm)->pfrkt_tree.rbe_left; while ((elm)->pfrkt_tree.rbe_right) elm = (elm)->pfrkt_tree.rbe_right; } else { if ((elm)->pfrkt_tree.rbe_parent && (elm == ((elm)->pfrkt_tree.rbe_parent)->pfrkt_tree.rbe_right)) elm = (elm)->pfrkt_tree.rbe_parent; else { while ((elm)->pfrkt_tree.rbe_parent && (elm == ((elm)->pfrkt_tree.rbe_parent)->pfrkt_tree.rbe_left)) elm = (elm)->pfrkt_tree.rbe_parent; elm = (elm)->pfrkt_tree.rbe_parent; } } return (elm); } struct pfr_ktable * pfr_ktablehead_RB_MINMAX(struct pfr_ktablehead *head, int val) { struct pfr_ktable *tmp = (head)->rbh_root; struct pfr_ktable *parent = ((void *)0); while (tmp) { parent = tmp; if (val < 0) tmp = (tmp)->pfrkt_tree.rbe_left; else tmp = (tmp)->pfrkt_tree.rbe_right; } return (parent); };
struct pfr_ktablehead pfr_ktables;
struct pfr_table pfr_nulltable;
int pfr_ktable_cnt;
int
pfr_gcd(int m, int n)
{
       int t;
       while (m > 0) {
        t = n % m;
        n = m;
        m = t;
       }
       return (n);
}
void
pfr_initialize(void)
{
 rn_init(sizeof(struct sockaddr_in6));
 pool_init(&pfr_ktable_pl, sizeof(struct pfr_ktable),
     0, 2, 0, "pfrktable", ((void *)0));
 pool_init(&pfr_kentry_pl[PFRKE_PLAIN], sizeof(struct pfr_kentry),
     0, 2, 0, "pfrke_plain", ((void *)0));
 pool_init(&pfr_kentry_pl[PFRKE_ROUTE], sizeof(struct pfr_kentry_route),
     0, 2, 0, "pfrke_route", ((void *)0));
 pool_init(&pfr_kentry_pl[PFRKE_COST], sizeof(struct pfr_kentry_cost),
     0, 2, 0, "pfrke_cost", ((void *)0));
 pool_init(&pfr_kcounters_pl, sizeof(struct pfr_kcounters),
     0, 2, 0, "pfrkcounters", ((void *)0));
 __builtin_memset((&pfr_ffaddr), (0xff), (sizeof(pfr_ffaddr)));
}
int
pfr_clr_addrs(struct pfr_table *tbl, int *ndel, int flags)
{
 struct pfr_ktable *kt;
 struct pfr_kentryworkq workq;
 do { if ((flags & ~(0x00000002)) & 0x0000007F) return (22); } while (0);
 if (pfr_validate_table(tbl, 0, flags & 0x10000000))
  return (22);
 kt = pfr_lookup_table(tbl);
 if (kt == ((void *)0) || !(kt->pfrkt_ts.pfrts_t.pfrt_flags & 0x00000004))
  return (3);
 if (kt->pfrkt_ts.pfrts_t.pfrt_flags & 0x00000002)
  return (1);
 pfr_enqueue_addrs(kt, &workq, ndel, 0);
 if (!(flags & 0x00000002)) {
  pfr_remove_kentries(kt, &workq);
  if (kt->pfrkt_ts.pfrts_cnt) {
   do { if (pf_status.debug >= (5)) { log(5, "pf: "); addlog("pfr_clr_addrs: corruption detected (%d).", kt->pfrkt_ts.pfrts_cnt); addlog("\n"); } } while (0);
   kt->pfrkt_ts.pfrts_cnt = 0;
  }
 }
 return (0);
}
int
pfr_add_addrs(struct pfr_table *tbl, struct pfr_addr *addr, int size,
    int *nadd, int flags)
{
 struct pfr_ktable *kt, *tmpkt;
 struct pfr_kentryworkq workq;
 struct pfr_kentry *p, *q;
 struct pfr_addr ad;
 int i, rv, xadd = 0;
 time_t tzero = time_second;
 do { if ((flags & ~(0x00000002 | 0x00000004)) & 0x0000007F) return (22); } while (0);
 if (pfr_validate_table(tbl, 0, flags & 0x10000000))
  return (22);
 kt = pfr_lookup_table(tbl);
 if (kt == ((void *)0) || !(kt->pfrkt_ts.pfrts_t.pfrt_flags & 0x00000004))
  return (3);
 if (kt->pfrkt_ts.pfrts_t.pfrt_flags & 0x00000002)
  return (1);
 tmpkt = pfr_create_ktable(&pfr_nulltable, 0, 0,
     !(flags & 0x10000000));
 if (tmpkt == ((void *)0))
  return (12);
 { ((&workq)->slh_first) = ((void *)0); };
 for (i = 0; i < size; i++) {
  do { if ((__curcpu->ci_self)->ci_schedstate.spc_schedflags & 0x0002) preempt(); } while (0);
  if (((flags & 0x10000000) ? copyin((addr+i), (&ad), (sizeof(ad))) : (__builtin_bcopy(((addr+i)), ((&ad)), ((sizeof(ad)))), 0)))
   do { rv = (14); goto _bad; } while (0);
  if (pfr_validate_addr(&ad))
   do { rv = (22); goto _bad; } while (0);
  p = pfr_lookup_addr(kt, &ad, 1);
  q = pfr_lookup_addr(tmpkt, &ad, 1);
  if (flags & 0x00000004) {
   if (q != ((void *)0))
    ad.pfra_fback = PFR_FB_DUPLICATE;
   else if (p == ((void *)0))
    ad.pfra_fback = PFR_FB_ADDED;
   else if ((p->u._ke._pfrke_flags & 0x01) !=
       ad.pfra_not)
    ad.pfra_fback = PFR_FB_CONFLICT;
   else
    ad.pfra_fback = PFR_FB_NONE;
  }
  if (p == ((void *)0) && q == ((void *)0)) {
   p = pfr_create_kentry(&ad);
   if (p == ((void *)0))
    do { rv = (12); goto _bad; } while (0);
   if (pfr_route_kentry(tmpkt, p)) {
    pfr_destroy_kentry(p);
    ad.pfra_fback = PFR_FB_NONE;
   } else {
    do { (p)->u._ke._pfrke_workq.sle_next = (&workq)->slh_first; (&workq)->slh_first = (p); } while (0);
    xadd++;
   }
  }
  if (flags & 0x00000004)
   if (((flags & 0x10000000) ? copyout((&ad), (addr+i), (sizeof(ad))) : (__builtin_bcopy(((&ad)), ((addr+i)), ((sizeof(ad)))), 0)))
    do { rv = (14); goto _bad; } while (0);
 }
 pfr_clean_node_mask(tmpkt, &workq);
 if (!(flags & 0x00000002)) {
  pfr_insert_kentries(kt, &workq, tzero);
 } else
  pfr_destroy_kentries(&workq);
 if (nadd != ((void *)0))
  *nadd = xadd;
 pfr_destroy_ktable(tmpkt, 0);
 return (0);
_bad:
 pfr_clean_node_mask(tmpkt, &workq);
 pfr_destroy_kentries(&workq);
 if (flags & 0x00000004)
  pfr_reset_feedback(addr, size, flags);
 pfr_destroy_ktable(tmpkt, 0);
 return (rv);
}
int
pfr_del_addrs(struct pfr_table *tbl, struct pfr_addr *addr, int size,
    int *ndel, int flags)
{
 struct pfr_ktable *kt;
 struct pfr_kentryworkq workq;
 struct pfr_kentry *p;
 struct pfr_addr ad;
 int i, rv, xdel = 0, log = 1;
 do { if ((flags & ~(0x00000002 | 0x00000004)) & 0x0000007F) return (22); } while (0);
 if (pfr_validate_table(tbl, 0, flags & 0x10000000))
  return (22);
 kt = pfr_lookup_table(tbl);
 if (kt == ((void *)0) || !(kt->pfrkt_ts.pfrts_t.pfrt_flags & 0x00000004))
  return (3);
 if (kt->pfrkt_ts.pfrts_t.pfrt_flags & 0x00000002)
  return (1);
 for (i = kt->pfrkt_ts.pfrts_cnt; i > 0; i >>= 1)
  log++;
 if (size > kt->pfrkt_ts.pfrts_cnt/log) {
  pfr_mark_addrs(kt);
 } else {
  for (i = 0; i < size; i++) {
   do { if ((__curcpu->ci_self)->ci_schedstate.spc_schedflags & 0x0002) preempt(); } while (0);
   if (((flags & 0x10000000) ? copyin((addr+i), (&ad), (sizeof(ad))) : (__builtin_bcopy(((addr+i)), ((&ad)), ((sizeof(ad)))), 0)))
    return (14);
   if (pfr_validate_addr(&ad))
    return (22);
   p = pfr_lookup_addr(kt, &ad, 1);
   if (p != ((void *)0))
    p->u._ke._pfrke_flags &= ~0x02;
  }
 }
 { ((&workq)->slh_first) = ((void *)0); };
 for (i = 0; i < size; i++) {
  do { if ((__curcpu->ci_self)->ci_schedstate.spc_schedflags & 0x0002) preempt(); } while (0);
  if (((flags & 0x10000000) ? copyin((addr+i), (&ad), (sizeof(ad))) : (__builtin_bcopy(((addr+i)), ((&ad)), ((sizeof(ad)))), 0)))
   do { rv = (14); goto _bad; } while (0);
  if (pfr_validate_addr(&ad))
   do { rv = (22); goto _bad; } while (0);
  p = pfr_lookup_addr(kt, &ad, 1);
  if (flags & 0x00000004) {
   if (p == ((void *)0))
    ad.pfra_fback = PFR_FB_NONE;
   else if ((p->u._ke._pfrke_flags & 0x01) !=
       ad.pfra_not)
    ad.pfra_fback = PFR_FB_CONFLICT;
   else if (p->u._ke._pfrke_flags & 0x02)
    ad.pfra_fback = PFR_FB_DUPLICATE;
   else
    ad.pfra_fback = PFR_FB_DELETED;
  }
  if (p != ((void *)0) &&
      (p->u._ke._pfrke_flags & 0x01) == ad.pfra_not &&
      !(p->u._ke._pfrke_flags & 0x02)) {
   p->u._ke._pfrke_flags |= 0x02;
   do { (p)->u._ke._pfrke_workq.sle_next = (&workq)->slh_first; (&workq)->slh_first = (p); } while (0);
   xdel++;
  }
  if (flags & 0x00000004)
   if (((flags & 0x10000000) ? copyout((&ad), (addr+i), (sizeof(ad))) : (__builtin_bcopy(((&ad)), ((addr+i)), ((sizeof(ad)))), 0)))
    do { rv = (14); goto _bad; } while (0);
 }
 if (!(flags & 0x00000002)) {
  pfr_remove_kentries(kt, &workq);
 }
 if (ndel != ((void *)0))
  *ndel = xdel;
 return (0);
_bad:
 if (flags & 0x00000004)
  pfr_reset_feedback(addr, size, flags);
 return (rv);
}
int
pfr_set_addrs(struct pfr_table *tbl, struct pfr_addr *addr, int size,
    int *size2, int *nadd, int *ndel, int *nchange, int flags,
    u_int32_t ignore_pfrt_flags)
{
 struct pfr_ktable *kt, *tmpkt;
 struct pfr_kentryworkq addq, delq, changeq;
 struct pfr_kentry *p, *q;
 struct pfr_addr ad;
 int i, rv, xadd = 0, xdel = 0, xchange = 0;
 time_t tzero = time_second;
 do { if ((flags & ~(0x00000002 | 0x00000004)) & 0x0000007F) return (22); } while (0);
 if (pfr_validate_table(tbl, ignore_pfrt_flags, flags &
     0x10000000))
  return (22);
 kt = pfr_lookup_table(tbl);
 if (kt == ((void *)0) || !(kt->pfrkt_ts.pfrts_t.pfrt_flags & 0x00000004))
  return (3);
 if (kt->pfrkt_ts.pfrts_t.pfrt_flags & 0x00000002)
  return (1);
 tmpkt = pfr_create_ktable(&pfr_nulltable, 0, 0,
     !(flags & 0x10000000));
 if (tmpkt == ((void *)0))
  return (12);
 pfr_mark_addrs(kt);
 { ((&addq)->slh_first) = ((void *)0); };
 { ((&delq)->slh_first) = ((void *)0); };
 { ((&changeq)->slh_first) = ((void *)0); };
 for (i = 0; i < size; i++) {
  do { if ((__curcpu->ci_self)->ci_schedstate.spc_schedflags & 0x0002) preempt(); } while (0);
  if (((flags & 0x10000000) ? copyin((addr+i), (&ad), (sizeof(ad))) : (__builtin_bcopy(((addr+i)), ((&ad)), ((sizeof(ad)))), 0)))
   do { rv = (14); goto _bad; } while (0);
  if (pfr_validate_addr(&ad))
   do { rv = (22); goto _bad; } while (0);
  ad.pfra_fback = PFR_FB_NONE;
  p = pfr_lookup_addr(kt, &ad, 1);
  if (p != ((void *)0)) {
   if (p->u._ke._pfrke_flags & 0x02) {
    ad.pfra_fback = PFR_FB_DUPLICATE;
    goto _skip;
   }
   p->u._ke._pfrke_flags |= 0x02;
   if ((p->u._ke._pfrke_flags & 0x01) != ad.pfra_not) {
    do { (p)->u._ke._pfrke_workq.sle_next = (&changeq)->slh_first; (&changeq)->slh_first = (p); } while (0);
    ad.pfra_fback = PFR_FB_CHANGED;
    xchange++;
   }
  } else {
   q = pfr_lookup_addr(tmpkt, &ad, 1);
   if (q != ((void *)0)) {
    ad.pfra_fback = PFR_FB_DUPLICATE;
    goto _skip;
   }
   p = pfr_create_kentry(&ad);
   if (p == ((void *)0))
    do { rv = (12); goto _bad; } while (0);
   if (pfr_route_kentry(tmpkt, p)) {
    pfr_destroy_kentry(p);
    ad.pfra_fback = PFR_FB_NONE;
    goto _skip;
   }
   do { (p)->u._ke._pfrke_workq.sle_next = (&addq)->slh_first; (&addq)->slh_first = (p); } while (0);
   ad.pfra_fback = PFR_FB_ADDED;
   xadd++;
   if (p->u._ke._pfrke_type == PFRKE_COST)
    kt->pfrkt_refcntcost++;
   pfr_ktable_winfo_update(kt, p);
  }
_skip:
  if (flags & 0x00000004)
   if (((flags & 0x10000000) ? copyout((&ad), (addr+i), (sizeof(ad))) : (__builtin_bcopy(((&ad)), ((addr+i)), ((sizeof(ad)))), 0)))
    do { rv = (14); goto _bad; } while (0);
 }
 pfr_enqueue_addrs(kt, &delq, &xdel, (1));
 if ((flags & 0x00000004) && *size2) {
  if (*size2 < size+xdel) {
   *size2 = size+xdel;
   do { rv = (0); goto _bad; } while (0);
  }
  i = 0;
  for((p) = ((&delq)->slh_first); (p) != ((void *)0); (p) = ((p)->u._ke._pfrke_workq.sle_next)) {
   pfr_copyout_addr(&ad, p);
   ad.pfra_fback = PFR_FB_DELETED;
   if (((flags & 0x10000000) ? copyout((&ad), (addr+size+i), (sizeof(ad))) : (__builtin_bcopy(((&ad)), ((addr+size+i)), ((sizeof(ad)))), 0)))
    do { rv = (14); goto _bad; } while (0);
   i++;
  }
 }
 pfr_clean_node_mask(tmpkt, &addq);
 if (!(flags & 0x00000002)) {
  pfr_insert_kentries(kt, &addq, tzero);
  pfr_remove_kentries(kt, &delq);
  pfr_clstats_kentries(&changeq, tzero, (1));
 } else
  pfr_destroy_kentries(&addq);
 if (nadd != ((void *)0))
  *nadd = xadd;
 if (ndel != ((void *)0))
  *ndel = xdel;
 if (nchange != ((void *)0))
  *nchange = xchange;
 if ((flags & 0x00000004) && size2)
  *size2 = size+xdel;
 pfr_destroy_ktable(tmpkt, 0);
 return (0);
_bad:
 pfr_clean_node_mask(tmpkt, &addq);
 pfr_destroy_kentries(&addq);
 if (flags & 0x00000004)
  pfr_reset_feedback(addr, size, flags);
 pfr_destroy_ktable(tmpkt, 0);
 return (rv);
}
int
pfr_tst_addrs(struct pfr_table *tbl, struct pfr_addr *addr, int size,
 int *nmatch, int flags)
{
 struct pfr_ktable *kt;
 struct pfr_kentry *p;
 struct pfr_addr ad;
 int i, xmatch = 0;
 do { if ((flags & ~(0x00000020)) & 0x0000007F) return (22); } while (0);
 if (pfr_validate_table(tbl, 0, 0))
  return (22);
 kt = pfr_lookup_table(tbl);
 if (kt == ((void *)0) || !(kt->pfrkt_ts.pfrts_t.pfrt_flags & 0x00000004))
  return (3);
 for (i = 0; i < size; i++) {
  do { if ((__curcpu->ci_self)->ci_schedstate.spc_schedflags & 0x0002) preempt(); } while (0);
  if (((flags & 0x10000000) ? copyin((addr+i), (&ad), (sizeof(ad))) : (__builtin_bcopy(((addr+i)), ((&ad)), ((sizeof(ad)))), 0)))
   return (14);
  if (pfr_validate_addr(&ad))
   return (22);
  if (((&ad)->pfra_net < ((((&ad)->pfra_af)==2)?32:128)))
   return (22);
  p = pfr_lookup_addr(kt, &ad, 0);
  if (flags & 0x00000020)
   pfr_copyout_addr(&ad, p);
  ad.pfra_fback = (p == ((void *)0)) ? PFR_FB_NONE :
      ((p->u._ke._pfrke_flags & 0x01) ?
      PFR_FB_NOTMATCH : PFR_FB_MATCH);
  if (p != ((void *)0) && !(p->u._ke._pfrke_flags & 0x01))
   xmatch++;
  if (((flags & 0x10000000) ? copyout((&ad), (addr+i), (sizeof(ad))) : (__builtin_bcopy(((&ad)), ((addr+i)), ((sizeof(ad)))), 0)))
   return (14);
 }
 if (nmatch != ((void *)0))
  *nmatch = xmatch;
 return (0);
}
int
pfr_get_addrs(struct pfr_table *tbl, struct pfr_addr *addr, int *size,
 int flags)
{
 struct pfr_ktable *kt;
 struct pfr_walktree w;
 int rv;
 do { if ((flags & ~(0)) & 0x0000007F) return (22); } while (0);
 if (pfr_validate_table(tbl, 0, 0))
  return (22);
 kt = pfr_lookup_table(tbl);
 if (kt == ((void *)0) || !(kt->pfrkt_ts.pfrts_t.pfrt_flags & 0x00000004))
  return (3);
 if (kt->pfrkt_ts.pfrts_cnt > *size) {
  *size = kt->pfrkt_ts.pfrts_cnt;
  return (0);
 }
 __builtin_bzero((&w), (sizeof(w)));
 w.pfrw_op = PFRW_GET_ADDRS;
 w.pfrw_1.pfrw1_addr = addr;
 w.pfrw_free = kt->pfrkt_ts.pfrts_cnt;
 w.pfrw_flags = flags;
 rv = rn_walktree(kt->pfrkt_ip4, pfr_walktree, &w);
 if (!rv)
  rv = rn_walktree(kt->pfrkt_ip6, pfr_walktree, &w);
 if (rv)
  return (rv);
 if (w.pfrw_free) {
  do { if (pf_status.debug >= (3)) { log(3, "pf: "); addlog("pfr_get_addrs: corruption detected (%d)", w.pfrw_free); addlog("\n"); } } while (0);
  return (25);
 }
 *size = kt->pfrkt_ts.pfrts_cnt;
 return (0);
}
int
pfr_get_astats(struct pfr_table *tbl, struct pfr_astats *addr, int *size,
 int flags)
{
 struct pfr_ktable *kt;
 struct pfr_walktree w;
 struct pfr_kentryworkq workq;
 int rv;
 time_t tzero = time_second;
 if (pfr_validate_table(tbl, 0, 0))
  return (22);
 kt = pfr_lookup_table(tbl);
 if (kt == ((void *)0) || !(kt->pfrkt_ts.pfrts_t.pfrt_flags & 0x00000004))
  return (3);
 if (kt->pfrkt_ts.pfrts_cnt > *size) {
  *size = kt->pfrkt_ts.pfrts_cnt;
  return (0);
 }
 __builtin_bzero((&w), (sizeof(w)));
 w.pfrw_op = PFRW_GET_ASTATS;
 w.pfrw_1.pfrw1_astats = addr;
 w.pfrw_free = kt->pfrkt_ts.pfrts_cnt;
 w.pfrw_flags = flags;
 rv = rn_walktree(kt->pfrkt_ip4, pfr_walktree, &w);
 if (!rv)
  rv = rn_walktree(kt->pfrkt_ip6, pfr_walktree, &w);
 if (!rv && (flags & 0x00000008)) {
  pfr_enqueue_addrs(kt, &workq, ((void *)0), 0);
  pfr_clstats_kentries(&workq, tzero, 0);
 }
 if (rv)
  return (rv);
 if (w.pfrw_free) {
  do { if (pf_status.debug >= (3)) { log(3, "pf: "); addlog("pfr_get_astats: corruption detected (%d)", w.pfrw_free); addlog("\n"); } } while (0);
  return (25);
 }
 *size = kt->pfrkt_ts.pfrts_cnt;
 return (0);
}
int
pfr_clr_astats(struct pfr_table *tbl, struct pfr_addr *addr, int size,
    int *nzero, int flags)
{
 struct pfr_ktable *kt;
 struct pfr_kentryworkq workq;
 struct pfr_kentry *p;
 struct pfr_addr ad;
 int i, rv, xzero = 0;
 do { if ((flags & ~(0x00000002 | 0x00000004)) & 0x0000007F) return (22); } while (0);
 if (pfr_validate_table(tbl, 0, 0))
  return (22);
 kt = pfr_lookup_table(tbl);
 if (kt == ((void *)0) || !(kt->pfrkt_ts.pfrts_t.pfrt_flags & 0x00000004))
  return (3);
 { ((&workq)->slh_first) = ((void *)0); };
 for (i = 0; i < size; i++) {
  do { if ((__curcpu->ci_self)->ci_schedstate.spc_schedflags & 0x0002) preempt(); } while (0);
  if (((flags & 0x10000000) ? copyin((addr+i), (&ad), (sizeof(ad))) : (__builtin_bcopy(((addr+i)), ((&ad)), ((sizeof(ad)))), 0)))
   do { rv = (14); goto _bad; } while (0);
  if (pfr_validate_addr(&ad))
   do { rv = (22); goto _bad; } while (0);
  p = pfr_lookup_addr(kt, &ad, 1);
  if (flags & 0x00000004) {
   ad.pfra_fback = (p != ((void *)0)) ?
       PFR_FB_CLEARED : PFR_FB_NONE;
   if (((flags & 0x10000000) ? copyout((&ad), (addr+i), (sizeof(ad))) : (__builtin_bcopy(((&ad)), ((addr+i)), ((sizeof(ad)))), 0)))
    do { rv = (14); goto _bad; } while (0);
  }
  if (p != ((void *)0)) {
   do { (p)->u._ke._pfrke_workq.sle_next = (&workq)->slh_first; (&workq)->slh_first = (p); } while (0);
   xzero++;
  }
 }
 if (!(flags & 0x00000002)) {
  pfr_clstats_kentries(&workq, time_second, 0);
 }
 if (nzero != ((void *)0))
  *nzero = xzero;
 return (0);
_bad:
 if (flags & 0x00000004)
  pfr_reset_feedback(addr, size, flags);
 return (rv);
}
int
pfr_validate_addr(struct pfr_addr *ad)
{
 int i;
 switch (ad->pfra_af) {
 case 2:
  if (ad->pfra_net > 32)
   return (-1);
  break;
 case 24:
  if (ad->pfra_net > 128)
   return (-1);
  break;
 default:
  return (-1);
 }
 if (ad->pfra_net < 128 &&
  (((caddr_t)ad)[ad->pfra_net/8] & (0xFF >> (ad->pfra_net%8))))
   return (-1);
 for (i = (ad->pfra_net+7)/8; i < sizeof(ad->pfra_u); i++)
  if (((caddr_t)ad)[i])
   return (-1);
 if (ad->pfra_not && ad->pfra_not != 1)
  return (-1);
 if (ad->pfra_fback)
  return (-1);
 if (ad->pfra_type >= PFRKE_MAX)
  return (-1);
 return (0);
}
void
pfr_enqueue_addrs(struct pfr_ktable *kt, struct pfr_kentryworkq *workq,
 int *naddr, int sweep)
{
 struct pfr_walktree w;
 { ((workq)->slh_first) = ((void *)0); };
 __builtin_bzero((&w), (sizeof(w)));
 w.pfrw_op = sweep ? PFRW_SWEEP : PFRW_ENQUEUE;
 w.pfrw_1.pfrw1_workq = workq;
 if (kt->pfrkt_ip4 != ((void *)0))
  if (rn_walktree(kt->pfrkt_ip4, pfr_walktree, &w))
   do { if (pf_status.debug >= (3)) { log(3, "pf: "); addlog("pfr_enqueue_addrs: IPv4 walktree failed."); addlog("\n"); } } while (0);
 if (kt->pfrkt_ip6 != ((void *)0))
  if (rn_walktree(kt->pfrkt_ip6, pfr_walktree, &w))
   do { if (pf_status.debug >= (3)) { log(3, "pf: "); addlog("pfr_enqueue_addrs: IPv6 walktree failed."); addlog("\n"); } } while (0);
 if (naddr != ((void *)0))
  *naddr = w.pfrw_free;
}
void
pfr_mark_addrs(struct pfr_ktable *kt)
{
 struct pfr_walktree w;
 __builtin_bzero((&w), (sizeof(w)));
 w.pfrw_op = PFRW_MARK;
 if (rn_walktree(kt->pfrkt_ip4, pfr_walktree, &w))
  do { if (pf_status.debug >= (3)) { log(3, "pf: "); addlog("pfr_mark_addrs: IPv4 walktree failed."); addlog("\n"); } } while (0);
 if (rn_walktree(kt->pfrkt_ip6, pfr_walktree, &w))
  do { if (pf_status.debug >= (3)) { log(3, "pf: "); addlog("pfr_mark_addrs: IPv6 walktree failed."); addlog("\n"); } } while (0);
}
struct pfr_kentry *
pfr_lookup_addr(struct pfr_ktable *kt, struct pfr_addr *ad, int exact)
{
 union sockaddr_union sa, mask;
 struct radix_node_head *head;
 struct pfr_kentry *ke;
 __builtin_bzero((&sa), (sizeof(sa)));
 switch (ad->pfra_af) {
 case 2:
  do { (sa.sin).sin_len = sizeof(sa.sin); (sa.sin).sin_family = 2; (sa.sin).sin_addr = (ad->pfra_u._pfra_ip4addr); } while (0);
  head = kt->pfrkt_ip4;
  break;
 case 24:
  do { (sa.sin6).sin6_len = sizeof(sa.sin6); (sa.sin6).sin6_family = 24; (sa.sin6).sin6_addr = (ad->pfra_u._pfra_ip6addr); } while (0);
  head = kt->pfrkt_ip6;
  break;
 default:
  unhandled_af(ad->pfra_af);
 }
 if (((ad)->pfra_net < ((((ad)->pfra_af)==2)?32:128))) {
  pfr_prepare_network(&mask, ad->pfra_af, ad->pfra_net);
  ke = (struct pfr_kentry *)rn_lookup(&sa, &mask, head);
 } else {
  ke = (struct pfr_kentry *)rn_match(&sa, head);
  if (exact && ke && ((ke)->u._ke._pfrke_net < ((((ke)->u._ke._pfrke_af)==2)?32:128)))
   ke = ((void *)0);
 }
 return (ke);
}
struct pfr_kentry *
pfr_create_kentry(struct pfr_addr *ad)
{
 struct pfr_kentry_all *ke;
 if (ad->pfra_type >= PFRKE_MAX)
  panic("unknown pfra_type %d", ad->pfra_type);
 ke = pool_get(&pfr_kentry_pl[ad->pfra_type], 0x0002 | 0x0008);
 if (ke == ((void *)0))
  return (((void *)0));
 ke->u._ke._pfrke_type = ad->pfra_type;
 if (ad->pfra_weight == 0)
  ad->pfra_weight = 1;
 switch (ke->u._ke._pfrke_type) {
 case PFRKE_PLAIN:
  break;
 case PFRKE_COST:
  ((struct pfr_kentry_cost *)ke)->weight = ad->pfra_weight;
 case PFRKE_ROUTE:
  if (ad->pfra_ifname[0])
   ke->u.kr.kif = pfi_kif_get(ad->pfra_ifname);
  if (ke->u.kr.kif)
   pfi_kif_ref(ke->u.kr.kif, PFI_KIF_REF_ROUTE);
  break;
 }
 switch (ad->pfra_af) {
 case 2:
  do { (ke->u._ke._pfrke_sa.sin).sin_len = sizeof(ke->u._ke._pfrke_sa.sin); (ke->u._ke._pfrke_sa.sin).sin_family = 2; (ke->u._ke._pfrke_sa.sin).sin_addr = (ad->pfra_u._pfra_ip4addr); } while (0);
  break;
 case 24:
  do { (ke->u._ke._pfrke_sa.sin6).sin6_len = sizeof(ke->u._ke._pfrke_sa.sin6); (ke->u._ke._pfrke_sa.sin6).sin6_family = 24; (ke->u._ke._pfrke_sa.sin6).sin6_addr = (ad->pfra_u._pfra_ip6addr); } while (0);
  break;
 default:
  unhandled_af(ad->pfra_af);
 }
 ke->u._ke._pfrke_af = ad->pfra_af;
 ke->u._ke._pfrke_net = ad->pfra_net;
 if (ad->pfra_not)
  ke->u._ke._pfrke_flags |= 0x01;
 return ((struct pfr_kentry *)ke);
}
void
pfr_destroy_kentries(struct pfr_kentryworkq *workq)
{
 struct pfr_kentry *p, *q;
 int i;
 for (i = 0, p = ((workq)->slh_first); p != ((void *)0); i++, p = q) {
  do { if ((__curcpu->ci_self)->ci_schedstate.spc_schedflags & 0x0002) preempt(); } while (0);
  q = ((p)->u._ke._pfrke_workq.sle_next);
  pfr_destroy_kentry(p);
 }
}
void
pfr_destroy_kentry(struct pfr_kentry *ke)
{
 if (ke->u._ke._pfrke_counters)
  pool_put(&pfr_kcounters_pl, ke->u._ke._pfrke_counters);
 if (ke->u._ke._pfrke_type == PFRKE_COST || ke->u._ke._pfrke_type == PFRKE_ROUTE)
  pfi_kif_unref(((struct pfr_kentry_all *)ke)->u.kr.kif,
      PFI_KIF_REF_ROUTE);
 pool_put(&pfr_kentry_pl[ke->u._ke._pfrke_type], ke);
}
void
pfr_insert_kentries(struct pfr_ktable *kt,
    struct pfr_kentryworkq *workq, time_t tzero)
{
 struct pfr_kentry *p;
 int rv, n = 0;
 for((p) = ((workq)->slh_first); (p) != ((void *)0); (p) = ((p)->u._ke._pfrke_workq.sle_next)) {
  rv = pfr_route_kentry(kt, p);
  if (rv) {
   do { if (pf_status.debug >= (3)) { log(3, "pf: "); addlog("pfr_insert_kentries: cannot route entry " "(code=%d).", rv); addlog("\n"); } } while (0);
   break;
  }
  p->u._ke._pfrke_tzero = tzero;
  ++n;
  if (p->u._ke._pfrke_type == PFRKE_COST)
   kt->pfrkt_refcntcost++;
  pfr_ktable_winfo_update(kt, p);
  do { if ((__curcpu->ci_self)->ci_schedstate.spc_schedflags & 0x0002) preempt(); } while (0);
 }
 kt->pfrkt_ts.pfrts_cnt += n;
}
int
pfr_insert_kentry(struct pfr_ktable *kt, struct pfr_addr *ad, time_t tzero)
{
 struct pfr_kentry *p;
 int rv;
 p = pfr_lookup_addr(kt, ad, 1);
 if (p != ((void *)0))
  return (0);
 p = pfr_create_kentry(ad);
 if (p == ((void *)0))
  return (22);
 rv = pfr_route_kentry(kt, p);
 if (rv)
  return (rv);
 p->u._ke._pfrke_tzero = tzero;
 if (p->u._ke._pfrke_type == PFRKE_COST)
  kt->pfrkt_refcntcost++;
 kt->pfrkt_ts.pfrts_cnt++;
 pfr_ktable_winfo_update(kt, p);
 return (0);
}
void
pfr_remove_kentries(struct pfr_ktable *kt,
    struct pfr_kentryworkq *workq)
{
 struct pfr_kentry *p;
 struct pfr_kentryworkq addrq;
 int n = 0;
 for((p) = ((workq)->slh_first); (p) != ((void *)0); (p) = ((p)->u._ke._pfrke_workq.sle_next)) {
  pfr_unroute_kentry(kt, p);
  ++n;
  do { if ((__curcpu->ci_self)->ci_schedstate.spc_schedflags & 0x0002) preempt(); } while (0);
  if (p->u._ke._pfrke_type == PFRKE_COST)
   kt->pfrkt_refcntcost--;
 }
 kt->pfrkt_ts.pfrts_cnt -= n;
 pfr_destroy_kentries(workq);
 if (kt->pfrkt_refcntcost > 0) {
  kt->pfrkt_gcdweight = 0;
  kt->pfrkt_maxweight = 1;
  pfr_enqueue_addrs(kt, &addrq, ((void *)0), 0);
  for((p) = ((&addrq)->slh_first); (p) != ((void *)0); (p) = ((p)->u._ke._pfrke_workq.sle_next))
   pfr_ktable_winfo_update(kt, p);
 }
}
void
pfr_clean_node_mask(struct pfr_ktable *kt,
    struct pfr_kentryworkq *workq)
{
 struct pfr_kentry *p;
 for((p) = ((workq)->slh_first); (p) != ((void *)0); (p) = ((p)->u._ke._pfrke_workq.sle_next)) {
  pfr_unroute_kentry(kt, p);
 }
}
void
pfr_clstats_kentries(struct pfr_kentryworkq *workq, time_t tzero, int negchange)
{
 struct pfr_kentry *p;
 for((p) = ((workq)->slh_first); (p) != ((void *)0); (p) = ((p)->u._ke._pfrke_workq.sle_next)) {
  if (negchange)
   p->u._ke._pfrke_flags ^= 0x01;
  if (p->u._ke._pfrke_counters) {
   pool_put(&pfr_kcounters_pl, p->u._ke._pfrke_counters);
   p->u._ke._pfrke_counters = ((void *)0);
  }
  p->u._ke._pfrke_tzero = tzero;
 }
}
void
pfr_reset_feedback(struct pfr_addr *addr, int size, int flags)
{
 struct pfr_addr ad;
 int i;
 for (i = 0; i < size; i++) {
  do { if ((__curcpu->ci_self)->ci_schedstate.spc_schedflags & 0x0002) preempt(); } while (0);
  if (((flags & 0x10000000) ? copyin((addr+i), (&ad), (sizeof(ad))) : (__builtin_bcopy(((addr+i)), ((&ad)), ((sizeof(ad)))), 0)))
   break;
  ad.pfra_fback = PFR_FB_NONE;
  if (((flags & 0x10000000) ? copyout((&ad), (addr+i), (sizeof(ad))) : (__builtin_bcopy(((&ad)), ((addr+i)), ((sizeof(ad)))), 0)))
   break;
 }
}
void
pfr_prepare_network(union sockaddr_union *sa, int af, int net)
{
 int i;
 __builtin_bzero((sa), (sizeof(*sa)));
 switch (af) {
 case 2:
  sa->sin.sin_len = sizeof(sa->sin);
  sa->sin.sin_family = 2;
  sa->sin.sin_addr.s_addr = net ? ((__uint32_t)(-1 << (32-net))) : 0;
  break;
 case 24:
  sa->sin6.sin6_len = sizeof(sa->sin6);
  sa->sin6.sin6_family = 24;
  for (i = 0; i < 4; i++) {
   if (net <= 32) {
    sa->sin6.sin6_addr.__u6_addr.__u6_addr32[i] =
        net ? ((__uint32_t)(-1 << (32-net))) : 0;
    break;
   }
   sa->sin6.sin6_addr.__u6_addr.__u6_addr32[i] = 0xFFFFFFFF;
   net -= 32;
  }
  break;
 default:
  unhandled_af(af);
 }
}
int
pfr_route_kentry(struct pfr_ktable *kt, struct pfr_kentry *ke)
{
 union sockaddr_union mask;
 struct radix_node *rn;
 struct radix_node_head *head;
 __builtin_bzero((ke->u._ke._pfrke_node), (sizeof(ke->u._ke._pfrke_node)));
 switch (ke->u._ke._pfrke_af) {
 case 2:
  head = kt->pfrkt_ip4;
  break;
 case 24:
  head = kt->pfrkt_ip6;
  break;
 default:
  unhandled_af(ke->u._ke._pfrke_af);
 }
 if (((ke)->u._ke._pfrke_net < ((((ke)->u._ke._pfrke_af)==2)?32:128))) {
  pfr_prepare_network(&mask, ke->u._ke._pfrke_af, ke->u._ke._pfrke_net);
  rn = rn_addroute(&ke->u._ke._pfrke_sa, &mask, head, ke->u._ke._pfrke_node, 0);
 } else
  rn = rn_addroute(&ke->u._ke._pfrke_sa, ((void *)0), head, ke->u._ke._pfrke_node, 0);
 return (rn == ((void *)0) ? -1 : 0);
}
int
pfr_unroute_kentry(struct pfr_ktable *kt, struct pfr_kentry *ke)
{
 union sockaddr_union mask;
 struct radix_node *rn;
 struct radix_node_head *head;
 switch (ke->u._ke._pfrke_af) {
 case 2:
  head = kt->pfrkt_ip4;
  break;
 case 24:
  head = kt->pfrkt_ip6;
  break;
 default:
  unhandled_af(ke->u._ke._pfrke_af);
 }
 if (((ke)->u._ke._pfrke_net < ((((ke)->u._ke._pfrke_af)==2)?32:128))) {
  pfr_prepare_network(&mask, ke->u._ke._pfrke_af, ke->u._ke._pfrke_net);
  rn = rn_delete(&ke->u._ke._pfrke_sa, &mask, head, ((void *)0));
 } else
  rn = rn_delete(&ke->u._ke._pfrke_sa, ((void *)0), head, ((void *)0));
 if (rn == ((void *)0)) {
  do { if (pf_status.debug >= (3)) { log(3, "pf: "); addlog("pfr_unroute_kentry: delete failed.\n"); addlog("\n"); } } while (0);
  return (-1);
 }
 return (0);
}
void
pfr_copyout_addr(struct pfr_addr *ad, struct pfr_kentry *ke)
{
 __builtin_bzero((ad), (sizeof(*ad)));
 if (ke == ((void *)0))
  return;
 ad->pfra_af = ke->u._ke._pfrke_af;
 ad->pfra_net = ke->u._ke._pfrke_net;
 ad->pfra_type = ke->u._ke._pfrke_type;
 if (ke->u._ke._pfrke_flags & 0x01)
  ad->pfra_not = 1;
 switch (ad->pfra_af) {
 case 2:
  ad->pfra_u._pfra_ip4addr = ke->u._ke._pfrke_sa.sin.sin_addr;
  break;
 case 24:
  ad->pfra_u._pfra_ip6addr = ke->u._ke._pfrke_sa.sin6.sin6_addr;
  break;
 default:
  unhandled_af(ad->pfra_af);
 }
 if (ke->u._ke._pfrke_counters != ((void *)0))
  ad->pfra_states = ke->u._ke._pfrke_counters->states;
 switch (ke->u._ke._pfrke_type) {
 case PFRKE_COST:
  ad->pfra_weight = ((struct pfr_kentry_cost *)ke)->weight;
 case PFRKE_ROUTE:
  if (((struct pfr_kentry_route *)ke)->kif != ((void *)0))
   strlcpy(ad->pfra_ifname,
       ((struct pfr_kentry_route *)ke)->kif->pfik_name,
       16);
  break;
 default:
  break;
 }
}
int
pfr_walktree(struct radix_node *rn, void *arg, u_int id)
{
 struct pfr_kentry *ke = (struct pfr_kentry *)rn;
 struct pfr_walktree *w = arg;
 union sockaddr_union mask;
 int flags = w->pfrw_flags;
 switch (w->pfrw_op) {
 case PFRW_MARK:
  ke->u._ke._pfrke_flags &= ~0x02;
  break;
 case PFRW_SWEEP:
  if (ke->u._ke._pfrke_flags & 0x02)
   break;
 case PFRW_ENQUEUE:
  do { (ke)->u._ke._pfrke_workq.sle_next = (w->pfrw_1.pfrw1_workq)->slh_first; (w->pfrw_1.pfrw1_workq)->slh_first = (ke); } while (0);
  w->pfrw_free++;
  break;
 case PFRW_GET_ADDRS:
  if (w->pfrw_free-- > 0) {
   struct pfr_addr ad;
   pfr_copyout_addr(&ad, ke);
   if (copyout(&ad, w->pfrw_1.pfrw1_addr, sizeof(ad)))
    return (14);
   w->pfrw_1.pfrw1_addr++;
  }
  break;
 case PFRW_GET_ASTATS:
  if (w->pfrw_free-- > 0) {
   struct pfr_astats as;
   pfr_copyout_addr(&as.pfras_a, ke);
   if (ke->u._ke._pfrke_counters) {
    __builtin_bcopy((ke->u._ke._pfrke_counters->pfrkc_packets), (as.pfras_packets), (sizeof(as.pfras_packets)));
    __builtin_bcopy((ke->u._ke._pfrke_counters->pfrkc_bytes), (as.pfras_bytes), (sizeof(as.pfras_bytes)));
   } else {
    __builtin_bzero((as.pfras_packets), (sizeof(as.pfras_packets)));
    __builtin_bzero((as.pfras_bytes), (sizeof(as.pfras_bytes)));
    as.pfras_a.pfra_fback = PFR_FB_NOCOUNT;
   }
   as.pfras_tzero = ke->u._ke._pfrke_tzero;
   if (((flags & 0x10000000) ? copyout((&as), (w->pfrw_1.pfrw1_astats), (sizeof(as))) : (__builtin_bcopy(((&as)), ((w->pfrw_1.pfrw1_astats)), ((sizeof(as)))), 0)))
    return (14);
   w->pfrw_1.pfrw1_astats++;
  }
  break;
 case PFRW_POOL_GET:
  if (ke->u._ke._pfrke_flags & 0x01)
   break;
  if (!w->pfrw_free--) {
   w->pfrw_1.pfrw1_kentry = ke;
   return (1);
  }
  break;
 case PFRW_DYNADDR_UPDATE:
  switch (ke->u._ke._pfrke_af) {
  case 2:
   if (w->pfrw_1.pfrw1_dyn->pfid_acnt4++ > 0)
    break;
   pfr_prepare_network(&mask, 2, ke->u._ke._pfrke_net);
   w->pfrw_1.pfrw1_dyn->pfid_addr4 = *(((2)==2) ? (struct pf_addr *)&(&ke->u._ke._pfrke_sa)->sin.sin_addr : (struct pf_addr *)&(&ke->u._ke._pfrke_sa)->sin6.sin6_addr);
   w->pfrw_1.pfrw1_dyn->pfid_mask4 = *(((2)==2) ? (struct pf_addr *)&(&mask)->sin.sin_addr : (struct pf_addr *)&(&mask)->sin6.sin6_addr);
   break;
  case 24:
   if (w->pfrw_1.pfrw1_dyn->pfid_acnt6++ > 0)
    break;
   pfr_prepare_network(&mask, 24, ke->u._ke._pfrke_net);
   w->pfrw_1.pfrw1_dyn->pfid_addr6 = *(((24)==2) ? (struct pf_addr *)&(&ke->u._ke._pfrke_sa)->sin.sin_addr : (struct pf_addr *)&(&ke->u._ke._pfrke_sa)->sin6.sin6_addr);
   w->pfrw_1.pfrw1_dyn->pfid_mask6 = *(((24)==2) ? (struct pf_addr *)&(&mask)->sin.sin_addr : (struct pf_addr *)&(&mask)->sin6.sin6_addr);
   break;
  default:
   unhandled_af(ke->u._ke._pfrke_af);
  }
  break;
 }
 return (0);
}
int
pfr_clr_tables(struct pfr_table *filter, int *ndel, int flags)
{
 struct pfr_ktableworkq workq;
 struct pfr_ktable *p;
 int xdel = 0;
 do { if ((flags & ~(0x00000002 | 0x00000040)) & 0x0000007F) return (22); } while (0);
 if (pfr_fix_anchor(filter->pfrt_anchor))
  return (22);
 if (pfr_table_count(filter, flags) < 0)
  return (2);
 { ((&workq)->slh_first) = ((void *)0); };
 for ((p) = pfr_ktablehead_RB_MINMAX(&pfr_ktables, -1); (p) != ((void *)0); (p) = pfr_ktablehead_RB_NEXT(p)) {
  if (pfr_skip_table(filter, p, flags))
   continue;
  if (!strcmp(p->pfrkt_ts.pfrts_t.pfrt_anchor, "_pf"))
   continue;
  if (!(p->pfrkt_ts.pfrts_t.pfrt_flags & 0x00000004))
   continue;
  p->pfrkt_nflags = p->pfrkt_ts.pfrts_t.pfrt_flags & ~0x00000004;
  do { (p)->pfrkt_workq.sle_next = (&workq)->slh_first; (&workq)->slh_first = (p); } while (0);
  xdel++;
 }
 if (!(flags & 0x00000002)) {
  pfr_setflags_ktables(&workq);
 }
 if (ndel != ((void *)0))
  *ndel = xdel;
 return (0);
}
int
pfr_add_tables(struct pfr_table *tbl, int size, int *nadd, int flags)
{
 struct pfr_ktableworkq addq, changeq;
 struct pfr_ktable *p, *q, *r, key;
 int i, rv, xadd = 0;
 time_t tzero = time_second;
 do { if ((flags & ~(0x00000002)) & 0x0000007F) return (22); } while (0);
 { ((&addq)->slh_first) = ((void *)0); };
 { ((&changeq)->slh_first) = ((void *)0); };
 for (i = 0; i < size; i++) {
  do { if ((__curcpu->ci_self)->ci_schedstate.spc_schedflags & 0x0002) preempt(); } while (0);
  if (((flags & 0x10000000) ? copyin((tbl+i), (&key.pfrkt_ts.pfrts_t), (sizeof(key.pfrkt_ts.pfrts_t))) : (__builtin_bcopy(((tbl+i)), ((&key.pfrkt_ts.pfrts_t)), ((sizeof(key.pfrkt_ts.pfrts_t)))), 0)))
   do { rv = (14); goto _bad; } while (0);
  if (pfr_validate_table(&key.pfrkt_ts.pfrts_t, 0x00000043,
      flags & 0x10000000))
   do { rv = (22); goto _bad; } while (0);
  key.pfrkt_ts.pfrts_t.pfrt_flags |= 0x00000004;
  p = pfr_ktablehead_RB_FIND(&pfr_ktables, &key);
  if (p == ((void *)0)) {
   p = pfr_create_ktable(&key.pfrkt_ts.pfrts_t, tzero, 1,
       !(flags & 0x10000000));
   if (p == ((void *)0))
    do { rv = (12); goto _bad; } while (0);
   for((q) = ((&addq)->slh_first); (q) != ((void *)0); (q) = ((q)->pfrkt_workq.sle_next)) {
    if (!pfr_ktable_compare(p, q)) {
     pfr_destroy_ktable(p, 0);
     goto _skip;
    }
   }
   do { (p)->pfrkt_workq.sle_next = (&addq)->slh_first; (&addq)->slh_first = (p); } while (0);
   xadd++;
   if (!key.pfrkt_ts.pfrts_t.pfrt_anchor[0])
    goto _skip;
   __builtin_bzero((key.pfrkt_ts.pfrts_t.pfrt_anchor), (sizeof(key.pfrkt_ts.pfrts_t.pfrt_anchor)));
   r = pfr_ktablehead_RB_FIND(&pfr_ktables, &key);
   if (r != ((void *)0)) {
    p->pfrkt_root = r;
    goto _skip;
   }
   for((q) = ((&addq)->slh_first); (q) != ((void *)0); (q) = ((q)->pfrkt_workq.sle_next)) {
    if (!pfr_ktable_compare(&key, q)) {
     p->pfrkt_root = q;
     goto _skip;
    }
   }
   key.pfrkt_ts.pfrts_t.pfrt_flags = 0;
   r = pfr_create_ktable(&key.pfrkt_ts.pfrts_t, 0, 1,
       !(flags & 0x10000000));
   if (r == ((void *)0))
    do { rv = (12); goto _bad; } while (0);
   do { (r)->pfrkt_workq.sle_next = (&addq)->slh_first; (&addq)->slh_first = (r); } while (0);
   p->pfrkt_root = r;
  } else if (!(p->pfrkt_ts.pfrts_t.pfrt_flags & 0x00000004)) {
   for((q) = ((&changeq)->slh_first); (q) != ((void *)0); (q) = ((q)->pfrkt_workq.sle_next))
    if (!pfr_ktable_compare(&key, q))
     goto _skip;
   p->pfrkt_nflags = (p->pfrkt_ts.pfrts_t.pfrt_flags &
       ~0x00000043) | key.pfrkt_ts.pfrts_t.pfrt_flags;
   do { (p)->pfrkt_workq.sle_next = (&changeq)->slh_first; (&changeq)->slh_first = (p); } while (0);
   xadd++;
  }
_skip:
 ;
 }
 if (!(flags & 0x00000002)) {
  pfr_insert_ktables(&addq);
  pfr_setflags_ktables(&changeq);
 } else
   pfr_destroy_ktables(&addq, 0);
 if (nadd != ((void *)0))
  *nadd = xadd;
 return (0);
_bad:
 pfr_destroy_ktables(&addq, 0);
 return (rv);
}
int
pfr_del_tables(struct pfr_table *tbl, int size, int *ndel, int flags)
{
 struct pfr_ktableworkq workq;
 struct pfr_ktable *p, *q, key;
 int i, xdel = 0;
 do { if ((flags & ~(0x00000002)) & 0x0000007F) return (22); } while (0);
 { ((&workq)->slh_first) = ((void *)0); };
 for (i = 0; i < size; i++) {
  do { if ((__curcpu->ci_self)->ci_schedstate.spc_schedflags & 0x0002) preempt(); } while (0);
  if (((flags & 0x10000000) ? copyin((tbl+i), (&key.pfrkt_ts.pfrts_t), (sizeof(key.pfrkt_ts.pfrts_t))) : (__builtin_bcopy(((tbl+i)), ((&key.pfrkt_ts.pfrts_t)), ((sizeof(key.pfrkt_ts.pfrts_t)))), 0)))
   return (14);
  if (pfr_validate_table(&key.pfrkt_ts.pfrts_t, 0,
      flags & 0x10000000))
   return (22);
  p = pfr_ktablehead_RB_FIND(&pfr_ktables, &key);
  if (p != ((void *)0) && (p->pfrkt_ts.pfrts_t.pfrt_flags & 0x00000004)) {
   for((q) = ((&workq)->slh_first); (q) != ((void *)0); (q) = ((q)->pfrkt_workq.sle_next))
    if (!pfr_ktable_compare(p, q))
     goto _skip;
   p->pfrkt_nflags = p->pfrkt_ts.pfrts_t.pfrt_flags & ~0x00000004;
   do { (p)->pfrkt_workq.sle_next = (&workq)->slh_first; (&workq)->slh_first = (p); } while (0);
   xdel++;
  }
_skip:
 ;
 }
 if (!(flags & 0x00000002)) {
  pfr_setflags_ktables(&workq);
 }
 if (ndel != ((void *)0))
  *ndel = xdel;
 return (0);
}
int
pfr_get_tables(struct pfr_table *filter, struct pfr_table *tbl, int *size,
 int flags)
{
 struct pfr_ktable *p;
 int n, nn;
 do { if ((flags & ~(0x00000040)) & 0x0000007F) return (22); } while (0);
 if (pfr_fix_anchor(filter->pfrt_anchor))
  return (22);
 n = nn = pfr_table_count(filter, flags);
 if (n < 0)
  return (2);
 if (n > *size) {
  *size = n;
  return (0);
 }
 for ((p) = pfr_ktablehead_RB_MINMAX(&pfr_ktables, -1); (p) != ((void *)0); (p) = pfr_ktablehead_RB_NEXT(p)) {
  if (pfr_skip_table(filter, p, flags))
   continue;
  if (n-- <= 0)
   continue;
  if (((flags & 0x10000000) ? copyout((&p->pfrkt_ts.pfrts_t), (tbl++), (sizeof(*tbl))) : (__builtin_bcopy(((&p->pfrkt_ts.pfrts_t)), ((tbl++)), ((sizeof(*tbl)))), 0)))
   return (14);
 }
 if (n) {
  do { if (pf_status.debug >= (3)) { log(3, "pf: "); addlog("pfr_get_tables: corruption detected (%d).", n); addlog("\n"); } } while (0);
  return (25);
 }
 *size = nn;
 return (0);
}
int
pfr_get_tstats(struct pfr_table *filter, struct pfr_tstats *tbl, int *size,
 int flags)
{
 struct pfr_ktable *p;
 struct pfr_ktableworkq workq;
 int n, nn;
 time_t tzero = time_second;
 do { if ((flags & ~(0x00000040)) & 0x0000007F) return (22); } while (0);
 if (pfr_fix_anchor(filter->pfrt_anchor))
  return (22);
 n = nn = pfr_table_count(filter, flags);
 if (n < 0)
  return (2);
 if (n > *size) {
  *size = n;
  return (0);
 }
 { ((&workq)->slh_first) = ((void *)0); };
 for ((p) = pfr_ktablehead_RB_MINMAX(&pfr_ktables, -1); (p) != ((void *)0); (p) = pfr_ktablehead_RB_NEXT(p)) {
  if (pfr_skip_table(filter, p, flags))
   continue;
  if (n-- <= 0)
   continue;
  if (((flags & 0x10000000) ? copyout((&p->pfrkt_ts), (tbl++), (sizeof(*tbl))) : (__builtin_bcopy(((&p->pfrkt_ts)), ((tbl++)), ((sizeof(*tbl)))), 0)))
   return (14);
  do { (p)->pfrkt_workq.sle_next = (&workq)->slh_first; (&workq)->slh_first = (p); } while (0);
 }
 if (flags & 0x00000008)
  pfr_clstats_ktables(&workq, tzero,
      flags & 0x00000010);
 if (n) {
  do { if (pf_status.debug >= (3)) { log(3, "pf: "); addlog("pfr_get_tstats: corruption detected (%d).", n); addlog("\n"); } } while (0);
  return (25);
 }
 *size = nn;
 return (0);
}
int
pfr_clr_tstats(struct pfr_table *tbl, int size, int *nzero, int flags)
{
 struct pfr_ktableworkq workq;
 struct pfr_ktable *p, key;
 int i, xzero = 0;
 time_t tzero = time_second;
 do { if ((flags & ~(0x00000002 | 0x00000010)) & 0x0000007F) return (22); } while (0);
 { ((&workq)->slh_first) = ((void *)0); };
 for (i = 0; i < size; i++) {
  do { if ((__curcpu->ci_self)->ci_schedstate.spc_schedflags & 0x0002) preempt(); } while (0);
  if (((flags & 0x10000000) ? copyin((tbl+i), (&key.pfrkt_ts.pfrts_t), (sizeof(key.pfrkt_ts.pfrts_t))) : (__builtin_bcopy(((tbl+i)), ((&key.pfrkt_ts.pfrts_t)), ((sizeof(key.pfrkt_ts.pfrts_t)))), 0)))
   return (14);
  if (pfr_validate_table(&key.pfrkt_ts.pfrts_t, 0, 0))
   return (22);
  p = pfr_ktablehead_RB_FIND(&pfr_ktables, &key);
  if (p != ((void *)0)) {
   do { (p)->pfrkt_workq.sle_next = (&workq)->slh_first; (&workq)->slh_first = (p); } while (0);
   xzero++;
  }
 }
 if (!(flags & 0x00000002)) {
  pfr_clstats_ktables(&workq, tzero, flags & 0x00000010);
 }
 if (nzero != ((void *)0))
  *nzero = xzero;
 return (0);
}
int
pfr_set_tflags(struct pfr_table *tbl, int size, int setflag, int clrflag,
 int *nchange, int *ndel, int flags)
{
 struct pfr_ktableworkq workq;
 struct pfr_ktable *p, *q, key;
 int i, xchange = 0, xdel = 0;
 do { if ((flags & ~(0x00000002)) & 0x0000007F) return (22); } while (0);
 if ((setflag & ~0x00000043) ||
     (clrflag & ~0x00000043) ||
     (setflag & clrflag))
  return (22);
 { ((&workq)->slh_first) = ((void *)0); };
 for (i = 0; i < size; i++) {
  do { if ((__curcpu->ci_self)->ci_schedstate.spc_schedflags & 0x0002) preempt(); } while (0);
  if (((flags & 0x10000000) ? copyin((tbl+i), (&key.pfrkt_ts.pfrts_t), (sizeof(key.pfrkt_ts.pfrts_t))) : (__builtin_bcopy(((tbl+i)), ((&key.pfrkt_ts.pfrts_t)), ((sizeof(key.pfrkt_ts.pfrts_t)))), 0)))
   return (14);
  if (pfr_validate_table(&key.pfrkt_ts.pfrts_t, 0,
      flags & 0x10000000))
   return (22);
  p = pfr_ktablehead_RB_FIND(&pfr_ktables, &key);
  if (p != ((void *)0) && (p->pfrkt_ts.pfrts_t.pfrt_flags & 0x00000004)) {
   p->pfrkt_nflags = (p->pfrkt_ts.pfrts_t.pfrt_flags | setflag) &
       ~clrflag;
   if (p->pfrkt_nflags == p->pfrkt_ts.pfrts_t.pfrt_flags)
    goto _skip;
   for((q) = ((&workq)->slh_first); (q) != ((void *)0); (q) = ((q)->pfrkt_workq.sle_next))
    if (!pfr_ktable_compare(p, q))
     goto _skip;
   do { (p)->pfrkt_workq.sle_next = (&workq)->slh_first; (&workq)->slh_first = (p); } while (0);
   if ((p->pfrkt_ts.pfrts_t.pfrt_flags & 0x00000001) &&
       (clrflag & 0x00000001) &&
       !(p->pfrkt_ts.pfrts_t.pfrt_flags & 0x00000010))
    xdel++;
   else
    xchange++;
  }
_skip:
 ;
 }
 if (!(flags & 0x00000002)) {
  pfr_setflags_ktables(&workq);
 }
 if (nchange != ((void *)0))
  *nchange = xchange;
 if (ndel != ((void *)0))
  *ndel = xdel;
 return (0);
}
int
pfr_ina_begin(struct pfr_table *trs, u_int32_t *ticket, int *ndel, int flags)
{
 struct pfr_ktableworkq workq;
 struct pfr_ktable *p;
 struct pf_ruleset *rs;
 int xdel = 0;
 do { if ((flags & ~(0x00000002)) & 0x0000007F) return (22); } while (0);
 rs = pf_find_or_create_ruleset(trs->pfrt_anchor);
 if (rs == ((void *)0))
  return (12);
 { ((&workq)->slh_first) = ((void *)0); };
 for ((p) = pfr_ktablehead_RB_MINMAX(&pfr_ktables, -1); (p) != ((void *)0); (p) = pfr_ktablehead_RB_NEXT(p)) {
  if (!(p->pfrkt_ts.pfrts_t.pfrt_flags & 0x00000008) ||
      pfr_skip_table(trs, p, 0))
   continue;
  p->pfrkt_nflags = p->pfrkt_ts.pfrts_t.pfrt_flags & ~0x00000008;
  do { (p)->pfrkt_workq.sle_next = (&workq)->slh_first; (&workq)->slh_first = (p); } while (0);
  xdel++;
 }
 if (!(flags & 0x00000002)) {
  pfr_setflags_ktables(&workq);
  if (ticket != ((void *)0))
   *ticket = ++rs->tticket;
  rs->topen = 1;
 } else
  pf_remove_if_empty_ruleset(rs);
 if (ndel != ((void *)0))
  *ndel = xdel;
 return (0);
}
int
pfr_ina_define(struct pfr_table *tbl, struct pfr_addr *addr, int size,
    int *nadd, int *naddr, u_int32_t ticket, int flags)
{
 struct pfr_ktableworkq tableq;
 struct pfr_kentryworkq addrq;
 struct pfr_ktable *kt, *rt, *shadow, key;
 struct pfr_kentry *p;
 struct pfr_addr ad;
 struct pf_ruleset *rs;
 int i, rv, xadd = 0, xaddr = 0;
 do { if ((flags & ~(0x00000002 | 0x00000010)) & 0x0000007F) return (22); } while (0);
 if (size && !(flags & 0x00000010))
  return (22);
 if (pfr_validate_table(tbl, 0x00000043,
     flags & 0x10000000))
  return (22);
 rs = pf_find_ruleset(tbl->pfrt_anchor);
 if (rs == ((void *)0) || !rs->topen || ticket != rs->tticket)
  return (16);
 tbl->pfrt_flags |= 0x00000008;
 { ((&tableq)->slh_first) = ((void *)0); };
 kt = pfr_ktablehead_RB_FIND(&pfr_ktables, (struct pfr_ktable *)tbl);
 if (kt == ((void *)0)) {
  kt = pfr_create_ktable(tbl, 0, 1,
      !(flags & 0x10000000));
  if (kt == ((void *)0))
   return (12);
  do { (kt)->pfrkt_workq.sle_next = (&tableq)->slh_first; (&tableq)->slh_first = (kt); } while (0);
  xadd++;
  if (!tbl->pfrt_anchor[0])
   goto _skip;
  __builtin_bzero((&key), (sizeof(key)));
  strlcpy(key.pfrkt_ts.pfrts_t.pfrt_name, tbl->pfrt_name, sizeof(key.pfrkt_ts.pfrts_t.pfrt_name));
  rt = pfr_ktablehead_RB_FIND(&pfr_ktables, &key);
  if (rt != ((void *)0)) {
   kt->pfrkt_root = rt;
   goto _skip;
  }
  rt = pfr_create_ktable(&key.pfrkt_ts.pfrts_t, 0, 1,
      !(flags & 0x10000000));
  if (rt == ((void *)0)) {
   pfr_destroy_ktables(&tableq, 0);
   return (12);
  }
  do { (rt)->pfrkt_workq.sle_next = (&tableq)->slh_first; (&tableq)->slh_first = (rt); } while (0);
  kt->pfrkt_root = rt;
 } else if (!(kt->pfrkt_ts.pfrts_t.pfrt_flags & 0x00000008))
  xadd++;
_skip:
 shadow = pfr_create_ktable(tbl, 0, 0, !(flags & 0x10000000));
 if (shadow == ((void *)0)) {
  pfr_destroy_ktables(&tableq, 0);
  return (12);
 }
 { ((&addrq)->slh_first) = ((void *)0); };
 for (i = 0; i < size; i++) {
  do { if ((__curcpu->ci_self)->ci_schedstate.spc_schedflags & 0x0002) preempt(); } while (0);
  if (((flags & 0x10000000) ? copyin((addr+i), (&ad), (sizeof(ad))) : (__builtin_bcopy(((addr+i)), ((&ad)), ((sizeof(ad)))), 0)))
   do { rv = (14); goto _bad; } while (0);
  if (pfr_validate_addr(&ad))
   do { rv = (22); goto _bad; } while (0);
  if (pfr_lookup_addr(shadow, &ad, 1) != ((void *)0))
   continue;
  p = pfr_create_kentry(&ad);
  if (p == ((void *)0))
   do { rv = (12); goto _bad; } while (0);
  if (pfr_route_kentry(shadow, p)) {
   pfr_destroy_kentry(p);
   continue;
  }
  do { (p)->u._ke._pfrke_workq.sle_next = (&addrq)->slh_first; (&addrq)->slh_first = (p); } while (0);
  xaddr++;
  if (p->u._ke._pfrke_type == PFRKE_COST)
   kt->pfrkt_refcntcost++;
  pfr_ktable_winfo_update(kt, p);
 }
 if (!(flags & 0x00000002)) {
  if (kt->pfrkt_shadow != ((void *)0))
   pfr_destroy_ktable(kt->pfrkt_shadow, 1);
  kt->pfrkt_ts.pfrts_t.pfrt_flags |= 0x00000008;
  pfr_insert_ktables(&tableq);
  shadow->pfrkt_ts.pfrts_cnt = (flags & 0x00000010) ?
      xaddr : (-1);
  kt->pfrkt_shadow = shadow;
 } else {
  pfr_clean_node_mask(shadow, &addrq);
  pfr_destroy_ktable(shadow, 0);
  pfr_destroy_ktables(&tableq, 0);
  pfr_destroy_kentries(&addrq);
 }
 if (nadd != ((void *)0))
  *nadd = xadd;
 if (naddr != ((void *)0))
  *naddr = xaddr;
 return (0);
_bad:
 pfr_destroy_ktable(shadow, 0);
 pfr_destroy_ktables(&tableq, 0);
 pfr_destroy_kentries(&addrq);
 return (rv);
}
int
pfr_ina_rollback(struct pfr_table *trs, u_int32_t ticket, int *ndel, int flags)
{
 struct pfr_ktableworkq workq;
 struct pfr_ktable *p;
 struct pf_ruleset *rs;
 int xdel = 0;
 do { if ((flags & ~(0x00000002)) & 0x0000007F) return (22); } while (0);
 rs = pf_find_ruleset(trs->pfrt_anchor);
 if (rs == ((void *)0) || !rs->topen || ticket != rs->tticket)
  return (0);
 { ((&workq)->slh_first) = ((void *)0); };
 for ((p) = pfr_ktablehead_RB_MINMAX(&pfr_ktables, -1); (p) != ((void *)0); (p) = pfr_ktablehead_RB_NEXT(p)) {
  if (!(p->pfrkt_ts.pfrts_t.pfrt_flags & 0x00000008) ||
      pfr_skip_table(trs, p, 0))
   continue;
  p->pfrkt_nflags = p->pfrkt_ts.pfrts_t.pfrt_flags & ~0x00000008;
  do { (p)->pfrkt_workq.sle_next = (&workq)->slh_first; (&workq)->slh_first = (p); } while (0);
  xdel++;
 }
 if (!(flags & 0x00000002)) {
  pfr_setflags_ktables(&workq);
  rs->topen = 0;
  pf_remove_if_empty_ruleset(rs);
 }
 if (ndel != ((void *)0))
  *ndel = xdel;
 return (0);
}
int
pfr_ina_commit(struct pfr_table *trs, u_int32_t ticket, int *nadd,
    int *nchange, int flags)
{
 struct pfr_ktable *p, *q;
 struct pfr_ktableworkq workq;
 struct pf_ruleset *rs;
 int xadd = 0, xchange = 0;
 time_t tzero = time_second;
 do { if ((flags & ~(0x00000002)) & 0x0000007F) return (22); } while (0);
 rs = pf_find_ruleset(trs->pfrt_anchor);
 if (rs == ((void *)0) || !rs->topen || ticket != rs->tticket)
  return (16);
 { ((&workq)->slh_first) = ((void *)0); };
 for ((p) = pfr_ktablehead_RB_MINMAX(&pfr_ktables, -1); (p) != ((void *)0); (p) = pfr_ktablehead_RB_NEXT(p)) {
  if (!(p->pfrkt_ts.pfrts_t.pfrt_flags & 0x00000008) ||
      pfr_skip_table(trs, p, 0))
   continue;
  do { (p)->pfrkt_workq.sle_next = (&workq)->slh_first; (&workq)->slh_first = (p); } while (0);
  if (p->pfrkt_ts.pfrts_t.pfrt_flags & 0x00000004)
   xchange++;
  else
   xadd++;
 }
 if (!(flags & 0x00000002)) {
  for (p = ((&workq)->slh_first); p != ((void *)0); p = q) {
   q = ((p)->pfrkt_workq.sle_next);
   pfr_commit_ktable(p, tzero);
  }
  rs->topen = 0;
  pf_remove_if_empty_ruleset(rs);
 }
 if (nadd != ((void *)0))
  *nadd = xadd;
 if (nchange != ((void *)0))
  *nchange = xchange;
 return (0);
}
void
pfr_commit_ktable(struct pfr_ktable *kt, time_t tzero)
{
 struct pfr_ktable *shadow = kt->pfrkt_shadow;
 int nflags;
 if (shadow->pfrkt_ts.pfrts_cnt == (-1)) {
  if (!(kt->pfrkt_ts.pfrts_t.pfrt_flags & 0x00000004))
   pfr_clstats_ktable(kt, tzero, 1);
 } else if (kt->pfrkt_ts.pfrts_t.pfrt_flags & 0x00000004) {
  struct pfr_kentryworkq addrq, addq, changeq, delq, garbageq;
  struct pfr_kentry *p, *q, *next;
  struct pfr_addr ad;
  pfr_enqueue_addrs(shadow, &addrq, ((void *)0), 0);
  pfr_mark_addrs(kt);
  { ((&addq)->slh_first) = ((void *)0); };
  { ((&changeq)->slh_first) = ((void *)0); };
  { ((&delq)->slh_first) = ((void *)0); };
  { ((&garbageq)->slh_first) = ((void *)0); };
  pfr_clean_node_mask(shadow, &addrq);
  for (p = ((&addrq)->slh_first); p != ((void *)0); p = next) {
   next = ((p)->u._ke._pfrke_workq.sle_next);
   pfr_copyout_addr(&ad, p);
   q = pfr_lookup_addr(kt, &ad, 1);
   if (q != ((void *)0)) {
    if ((q->u._ke._pfrke_flags & 0x01) !=
        (p->u._ke._pfrke_flags & 0x01))
     do { (q)->u._ke._pfrke_workq.sle_next = (&changeq)->slh_first; (&changeq)->slh_first = (q); } while (0);
    q->u._ke._pfrke_flags |= 0x02;
    do { (p)->u._ke._pfrke_workq.sle_next = (&garbageq)->slh_first; (&garbageq)->slh_first = (p); } while (0);
   } else {
    p->u._ke._pfrke_tzero = tzero;
    do { (p)->u._ke._pfrke_workq.sle_next = (&addq)->slh_first; (&addq)->slh_first = (p); } while (0);
   }
  }
  pfr_enqueue_addrs(kt, &delq, ((void *)0), (1));
  pfr_insert_kentries(kt, &addq, tzero);
  pfr_remove_kentries(kt, &delq);
  pfr_clstats_kentries(&changeq, tzero, (1));
  pfr_destroy_kentries(&garbageq);
 } else {
  do { struct radix_node_head * tmp = kt->pfrkt_ip4; kt->pfrkt_ip4 = shadow->pfrkt_ip4; shadow->pfrkt_ip4 = tmp; } while (0);
  do { struct radix_node_head * tmp = kt->pfrkt_ip6; kt->pfrkt_ip6 = shadow->pfrkt_ip6; shadow->pfrkt_ip6 = tmp; } while (0);
  do { int tmp = kt->pfrkt_ts.pfrts_cnt; kt->pfrkt_ts.pfrts_cnt = shadow->pfrkt_ts.pfrts_cnt; shadow->pfrkt_ts.pfrts_cnt = tmp; } while (0);
  pfr_clstats_ktable(kt, tzero, 1);
 }
 nflags = ((shadow->pfrkt_ts.pfrts_t.pfrt_flags & 0x00000043) |
     (kt->pfrkt_ts.pfrts_t.pfrt_flags & 0x0000003C) | 0x00000004)
  & ~0x00000008;
 pfr_destroy_ktable(shadow, 0);
 kt->pfrkt_shadow = ((void *)0);
 pfr_setflags_ktable(kt, nflags);
}
int
pfr_validate_table(struct pfr_table *tbl, int allowedflags, int no_reserved)
{
 int i;
 if (!tbl->pfrt_name[0])
  return (-1);
 if (no_reserved && !strcmp(tbl->pfrt_anchor, "_pf"))
   return (-1);
 if (tbl->pfrt_name[32 -1])
  return (-1);
 for (i = strlen(tbl->pfrt_name); i < 32; i++)
  if (tbl->pfrt_name[i])
   return (-1);
 if (pfr_fix_anchor(tbl->pfrt_anchor))
  return (-1);
 if (tbl->pfrt_flags & ~allowedflags)
  return (-1);
 return (0);
}
int
pfr_fix_anchor(char *anchor)
{
 size_t siz = 1024;
 int i;
 if (anchor[0] == '/') {
  char *path;
  int off;
  path = anchor;
  off = 1;
  while (*++path == '/')
   off++;
  __builtin_bcopy((path), (anchor), (siz - off));
  __builtin_memset((anchor + siz - off), (0), (off));
 }
 if (anchor[siz - 1])
  return (-1);
 for (i = strlen(anchor); i < siz; i++)
  if (anchor[i])
   return (-1);
 return (0);
}
int
pfr_table_count(struct pfr_table *filter, int flags)
{
 struct pf_ruleset *rs;
 if (flags & 0x00000040)
  return (pfr_ktable_cnt);
 if (filter->pfrt_anchor[0]) {
  rs = pf_find_ruleset(filter->pfrt_anchor);
  return ((rs != ((void *)0)) ? rs->tables : -1);
 }
 return (pf_main_anchor.ruleset.tables);
}
int
pfr_skip_table(struct pfr_table *filter, struct pfr_ktable *kt, int flags)
{
 if (flags & 0x00000040)
  return (0);
 if (strcmp(filter->pfrt_anchor, kt->pfrkt_ts.pfrts_t.pfrt_anchor))
  return (1);
 return (0);
}
void
pfr_insert_ktables(struct pfr_ktableworkq *workq)
{
 struct pfr_ktable *p;
 for((p) = ((workq)->slh_first); (p) != ((void *)0); (p) = ((p)->pfrkt_workq.sle_next))
  pfr_insert_ktable(p);
}
void
pfr_insert_ktable(struct pfr_ktable *kt)
{
 pfr_ktablehead_RB_INSERT(&pfr_ktables, kt);
 pfr_ktable_cnt++;
 if (kt->pfrkt_root != ((void *)0))
  if (!kt->pfrkt_root->pfrkt_ts.pfrts_refcnt[PFR_REFCNT_ANCHOR]++)
   pfr_setflags_ktable(kt->pfrkt_root,
       kt->pfrkt_root->pfrkt_ts.pfrts_t.pfrt_flags|0x00000020);
}
void
pfr_setflags_ktables(struct pfr_ktableworkq *workq)
{
 struct pfr_ktable *p, *q;
 for (p = ((workq)->slh_first); p; p = q) {
  q = ((p)->pfrkt_workq.sle_next);
  pfr_setflags_ktable(p, p->pfrkt_nflags);
 }
}
void
pfr_setflags_ktable(struct pfr_ktable *kt, int newf)
{
 struct pfr_kentryworkq addrq;
 if (!(newf & 0x00000010) &&
     !(newf & 0x00000020) &&
     !(newf & 0x00000001))
  newf &= ~0x00000004;
 if (!(newf & 0x00000004))
  newf &= ~0x00000043;
 if (!(newf & 0x0000003C)) {
  pfr_ktablehead_RB_REMOVE(&pfr_ktables, kt);
  if (kt->pfrkt_root != ((void *)0))
   if (!--kt->pfrkt_root->pfrkt_ts.pfrts_refcnt[PFR_REFCNT_ANCHOR])
    pfr_setflags_ktable(kt->pfrkt_root,
        kt->pfrkt_root->pfrkt_ts.pfrts_t.pfrt_flags &
     ~0x00000020);
  pfr_destroy_ktable(kt, 1);
  pfr_ktable_cnt--;
  return;
 }
 if (!(newf & 0x00000004) && kt->pfrkt_ts.pfrts_cnt) {
  pfr_enqueue_addrs(kt, &addrq, ((void *)0), 0);
  pfr_remove_kentries(kt, &addrq);
 }
 if (!(newf & 0x00000008) && kt->pfrkt_shadow != ((void *)0)) {
  pfr_destroy_ktable(kt->pfrkt_shadow, 1);
  kt->pfrkt_shadow = ((void *)0);
 }
 kt->pfrkt_ts.pfrts_t.pfrt_flags = newf;
}
void
pfr_clstats_ktables(struct pfr_ktableworkq *workq, time_t tzero, int recurse)
{
 struct pfr_ktable *p;
 for((p) = ((workq)->slh_first); (p) != ((void *)0); (p) = ((p)->pfrkt_workq.sle_next))
  pfr_clstats_ktable(p, tzero, recurse);
}
void
pfr_clstats_ktable(struct pfr_ktable *kt, time_t tzero, int recurse)
{
 struct pfr_kentryworkq addrq;
 if (recurse) {
  pfr_enqueue_addrs(kt, &addrq, ((void *)0), 0);
  pfr_clstats_kentries(&addrq, tzero, 0);
 }
 __builtin_bzero((kt->pfrkt_ts.pfrts_packets), (sizeof(kt->pfrkt_ts.pfrts_packets)));
 __builtin_bzero((kt->pfrkt_ts.pfrts_bytes), (sizeof(kt->pfrkt_ts.pfrts_bytes)));
 kt->pfrkt_ts.pfrts_match = kt->pfrkt_ts.pfrts_nomatch = 0;
 kt->pfrkt_ts.pfrts_tzero = tzero;
}
struct pfr_ktable *
pfr_create_ktable(struct pfr_table *tbl, time_t tzero, int attachruleset,
    int intr)
{
 struct pfr_ktable *kt;
 struct pf_ruleset *rs;
 if (intr)
  kt = pool_get(&pfr_ktable_pl, 0x0002|0x0008|0x0004);
 else
  kt = pool_get(&pfr_ktable_pl, 0x0001|0x0008|0x0004);
 if (kt == ((void *)0))
  return (((void *)0));
 kt->pfrkt_ts.pfrts_t = *tbl;
 if (attachruleset) {
  rs = pf_find_or_create_ruleset(tbl->pfrt_anchor);
  if (!rs) {
   pfr_destroy_ktable(kt, 0);
   return (((void *)0));
  }
  kt->pfrkt_rs = rs;
  rs->tables++;
 }
 if (!rn_inithead((void **)&kt->pfrkt_ip4,
     __builtin_offsetof(struct sockaddr_in, sin_addr)) ||
     !rn_inithead((void **)&kt->pfrkt_ip6,
     __builtin_offsetof(struct sockaddr_in6, sin6_addr))) {
  pfr_destroy_ktable(kt, 0);
  return (((void *)0));
 }
 kt->pfrkt_ts.pfrts_tzero = tzero;
 kt->pfrkt_refcntcost = 0;
 kt->pfrkt_gcdweight = 0;
 kt->pfrkt_maxweight = 1;
 return (kt);
}
void
pfr_destroy_ktables(struct pfr_ktableworkq *workq, int flushaddr)
{
 struct pfr_ktable *p, *q;
 for (p = ((workq)->slh_first); p; p = q) {
  q = ((p)->pfrkt_workq.sle_next);
  pfr_destroy_ktable(p, flushaddr);
 }
}
void
pfr_destroy_ktable(struct pfr_ktable *kt, int flushaddr)
{
 struct pfr_kentryworkq addrq;
 if (flushaddr) {
  pfr_enqueue_addrs(kt, &addrq, ((void *)0), 0);
  pfr_clean_node_mask(kt, &addrq);
  pfr_destroy_kentries(&addrq);
 }
 if (kt->pfrkt_ip4 != ((void *)0))
  free((caddr_t)kt->pfrkt_ip4, 5, 0);
 if (kt->pfrkt_ip6 != ((void *)0))
  free((caddr_t)kt->pfrkt_ip6, 5, 0);
 if (kt->pfrkt_shadow != ((void *)0))
  pfr_destroy_ktable(kt->pfrkt_shadow, flushaddr);
 if (kt->pfrkt_rs != ((void *)0)) {
  kt->pfrkt_rs->tables--;
  pf_remove_if_empty_ruleset(kt->pfrkt_rs);
 }
 pool_put(&pfr_ktable_pl, kt);
}
int
pfr_ktable_compare(struct pfr_ktable *p, struct pfr_ktable *q)
{
 int d;
 if ((d = strncmp(p->pfrkt_ts.pfrts_t.pfrt_name, q->pfrkt_ts.pfrts_t.pfrt_name, 32)))
  return (d);
 return (strcmp(p->pfrkt_ts.pfrts_t.pfrt_anchor, q->pfrkt_ts.pfrts_t.pfrt_anchor));
}
struct pfr_ktable *
pfr_lookup_table(struct pfr_table *tbl)
{
 return (pfr_ktablehead_RB_FIND(&pfr_ktables, (struct pfr_ktable *)tbl));
}
int
pfr_match_addr(struct pfr_ktable *kt, struct pf_addr *a, sa_family_t af)
{
 struct pfr_kentry *ke = ((void *)0);
 struct sockaddr_in tmp4;
 struct sockaddr_in6 tmp6;
 int match;
 if (!(kt->pfrkt_ts.pfrts_t.pfrt_flags & 0x00000004) && kt->pfrkt_root != ((void *)0))
  kt = kt->pfrkt_root;
 if (!(kt->pfrkt_ts.pfrts_t.pfrt_flags & 0x00000004))
  return (0);
 switch (af) {
 case 2:
  __builtin_bzero((&tmp4), (sizeof(tmp4)));
  tmp4.sin_len = sizeof(tmp4);
  tmp4.sin_family = 2;
  tmp4.sin_addr.s_addr = a->pfa.addr32[0];
  ke = (struct pfr_kentry *)rn_match(&tmp4, kt->pfrkt_ip4);
  break;
 case 24:
  __builtin_bzero((&tmp6), (sizeof(tmp6)));
  tmp6.sin6_len = sizeof(tmp6);
  tmp6.sin6_family = 24;
  __builtin_bcopy((a), (&tmp6.sin6_addr), (sizeof(tmp6.sin6_addr)));
  ke = (struct pfr_kentry *)rn_match(&tmp6, kt->pfrkt_ip6);
  break;
 default:
  unhandled_af(af);
 }
 match = (ke && !(ke->u._ke._pfrke_flags & 0x01));
 if (match)
  kt->pfrkt_ts.pfrts_match++;
 else
  kt->pfrkt_ts.pfrts_nomatch++;
 return (match);
}
void
pfr_update_stats(struct pfr_ktable *kt, struct pf_addr *a, struct pf_pdesc *pd,
    int op, int notrule)
{
 struct pfr_kentry *ke = ((void *)0);
 struct sockaddr_in tmp4;
 struct sockaddr_in6 tmp6;
 sa_family_t af = pd->af;
 u_int64_t len = pd->tot_len;
 int dir_idx = (pd->dir == PF_OUT);
 int op_idx;
 if (!(kt->pfrkt_ts.pfrts_t.pfrt_flags & 0x00000004) && kt->pfrkt_root != ((void *)0))
  kt = kt->pfrkt_root;
 if (!(kt->pfrkt_ts.pfrts_t.pfrt_flags & 0x00000004))
  return;
 switch (af) {
 case 2:
  __builtin_bzero((&tmp4), (sizeof(tmp4)));
  tmp4.sin_len = sizeof(tmp4);
  tmp4.sin_family = 2;
  tmp4.sin_addr.s_addr = a->pfa.addr32[0];
  ke = (struct pfr_kentry *)rn_match(&tmp4, kt->pfrkt_ip4);
  break;
 case 24:
  __builtin_bzero((&tmp6), (sizeof(tmp6)));
  tmp6.sin6_len = sizeof(tmp6);
  tmp6.sin6_family = 24;
  __builtin_bcopy((a), (&tmp6.sin6_addr), (sizeof(tmp6.sin6_addr)));
  ke = (struct pfr_kentry *)rn_match(&tmp6, kt->pfrkt_ip6);
  break;
 default:
  unhandled_af(af);
 }
 switch (op) {
 case PF_PASS:
  op_idx = PFR_OP_PASS;
  break;
 case PF_MATCH:
  op_idx = PFR_OP_MATCH;
  break;
 case PF_DROP:
  op_idx = PFR_OP_BLOCK;
  break;
 default:
  panic("unhandled op");
 }
 if ((ke == ((void *)0) || (ke->u._ke._pfrke_flags & 0x01)) != notrule) {
  if (op_idx != PFR_OP_PASS)
   do { if (pf_status.debug >= (7)) { log(7, "pf: "); addlog("pfr_update_stats: assertion failed."); addlog("\n"); } } while (0);
  op_idx = PFR_OP_ADDR_MAX;
 }
 kt->pfrkt_ts.pfrts_packets[dir_idx][op_idx]++;
 kt->pfrkt_ts.pfrts_bytes[dir_idx][op_idx] += len;
 if (ke != ((void *)0) && op_idx != PFR_OP_ADDR_MAX &&
     (kt->pfrkt_ts.pfrts_t.pfrt_flags & 0x00000040)) {
  if (ke->u._ke._pfrke_counters == ((void *)0))
   ke->u._ke._pfrke_counters = pool_get(&pfr_kcounters_pl,
       0x0002 | 0x0008);
  if (ke->u._ke._pfrke_counters != ((void *)0)) {
   ke->u._ke._pfrke_counters->pfrkc_packets[dir_idx][op_idx]++;
   ke->u._ke._pfrke_counters->pfrkc_bytes[dir_idx][op_idx] += len;
  }
 }
}
struct pfr_ktable *
pfr_attach_table(struct pf_ruleset *rs, char *name, int intr)
{
 struct pfr_ktable *kt, *rt;
 struct pfr_table tbl;
 struct pf_anchor *ac = rs->anchor;
 __builtin_bzero((&tbl), (sizeof(tbl)));
 strlcpy(tbl.pfrt_name, name, sizeof(tbl.pfrt_name));
 if (ac != ((void *)0))
  strlcpy(tbl.pfrt_anchor, ac->path, sizeof(tbl.pfrt_anchor));
 kt = pfr_lookup_table(&tbl);
 if (kt == ((void *)0)) {
  kt = pfr_create_ktable(&tbl, time_second, 1, intr);
  if (kt == ((void *)0))
   return (((void *)0));
  if (ac != ((void *)0)) {
   __builtin_bzero((tbl.pfrt_anchor), (sizeof(tbl.pfrt_anchor)));
   rt = pfr_lookup_table(&tbl);
   if (rt == ((void *)0)) {
    rt = pfr_create_ktable(&tbl, 0, 1, intr);
    if (rt == ((void *)0)) {
     pfr_destroy_ktable(kt, 0);
     return (((void *)0));
    }
    pfr_insert_ktable(rt);
   }
   kt->pfrkt_root = rt;
  }
  pfr_insert_ktable(kt);
 }
 if (!kt->pfrkt_ts.pfrts_refcnt[PFR_REFCNT_RULE]++)
  pfr_setflags_ktable(kt, kt->pfrkt_ts.pfrts_t.pfrt_flags|0x00000010);
 return (kt);
}
void
pfr_detach_table(struct pfr_ktable *kt)
{
 if (kt->pfrkt_ts.pfrts_refcnt[PFR_REFCNT_RULE] <= 0)
  do { if (pf_status.debug >= (5)) { log(5, "pf: "); addlog("pfr_detach_table: refcount = %d.", kt->pfrkt_ts.pfrts_refcnt[PFR_REFCNT_RULE]); addlog("\n"); } } while (0);
 else if (!--kt->pfrkt_ts.pfrts_refcnt[PFR_REFCNT_RULE])
  pfr_setflags_ktable(kt, kt->pfrkt_ts.pfrts_t.pfrt_flags&~0x00000010);
}
int
pfr_islinklocal(sa_family_t af, struct pf_addr *addr)
{
 if (af == 24 && (((&addr->pfa.v6)->__u6_addr.__u6_addr8[0] == 0xfe) && (((&addr->pfa.v6)->__u6_addr.__u6_addr8[1] & 0xc0) == 0x80)))
  return (1);
 return (0);
}
int
pfr_pool_get(struct pf_pool *rpool, struct pf_addr **raddr,
    struct pf_addr **rmask, sa_family_t af)
{
 struct pfr_ktable *kt;
 struct pfr_kentry *ke, *ke2;
 struct pf_addr *addr, *counter;
 union sockaddr_union mask;
 struct sockaddr_in tmp4;
 struct sockaddr_in6 tmp6;
 int startidx, idx = -1, loop = 0, use_counter = 0;
 switch (af) {
 case 2:
  __builtin_bzero((&tmp4), (sizeof(tmp4)));
  tmp4.sin_len = sizeof(tmp4);
  tmp4.sin_family = 2;
  addr = (struct pf_addr *)&tmp4.sin_addr;
  break;
 case 24:
  __builtin_bzero((&tmp6), (sizeof(tmp6)));
  tmp6.sin6_len = sizeof(tmp6);
  tmp6.sin6_family = 24;
  addr = (struct pf_addr *)&tmp6.sin6_addr;
  break;
 default:
  unhandled_af(af);
 }
 if (rpool->addr.type == PF_ADDR_TABLE)
  kt = rpool->addr.p.tbl;
 else if (rpool->addr.type == PF_ADDR_DYNIFTL)
  kt = rpool->addr.p.dyn->pfid_kt;
 else
  return (-1);
 if (!(kt->pfrkt_ts.pfrts_t.pfrt_flags & 0x00000004) && kt->pfrkt_root != ((void *)0))
  kt = kt->pfrkt_root;
 if (!(kt->pfrkt_ts.pfrts_t.pfrt_flags & 0x00000004))
  return (-1);
 counter = &rpool->counter;
 idx = rpool->tblidx;
 if (idx < 0 || idx >= kt->pfrkt_ts.pfrts_cnt)
  idx = 0;
 else
  use_counter = 1;
 startidx = idx;
 _next_block:
 if (loop && startidx == idx) {
  kt->pfrkt_ts.pfrts_nomatch++;
  return (1);
 }
 ke = pfr_kentry_byidx(kt, idx, af);
 if (ke == ((void *)0)) {
  if (loop || (ke = pfr_kentry_byidx(kt, 0, af)) == ((void *)0)) {
   kt->pfrkt_ts.pfrts_nomatch++;
   return (1);
  }
  idx = 0;
  loop++;
 }
 if (idx == 0 && use_counter == 1 && kt->pfrkt_refcntcost > 0) {
  rpool->curweight = rpool->curweight - kt->pfrkt_gcdweight;
  if (rpool->curweight < 1)
   rpool->curweight = kt->pfrkt_maxweight;
 }
 pfr_prepare_network(&pfr_mask, af, ke->u._ke._pfrke_net);
 *raddr = (((af)==2) ? (struct pf_addr *)&(&ke->u._ke._pfrke_sa)->sin.sin_addr : (struct pf_addr *)&(&ke->u._ke._pfrke_sa)->sin6.sin6_addr);
 *rmask = (((af)==2) ? (struct pf_addr *)&(&pfr_mask)->sin.sin_addr : (struct pf_addr *)&(&pfr_mask)->sin6.sin6_addr);
 if (use_counter && !((af == 2 && !(counter)->pfa.addr32[0]) || (af == 24 && !(counter)->pfa.addr32[0] && !(counter)->pfa.addr32[1] && !(counter)->pfa.addr32[2] && !(counter)->pfa.addr32[3] ))) {
  if (!pf_match_addr(0, *raddr, *rmask, counter, af)) {
   idx++;
   use_counter = 0;
   goto _next_block;
  }
  pf_addrcpy(addr, counter, af);
 } else {
  pf_addrcpy(addr, *raddr, af);
 }
 if (!((ke)->u._ke._pfrke_net < ((((ke)->u._ke._pfrke_af)==2)?32:128))) {
  if (rpool->addr.type == PF_ADDR_DYNIFTL &&
      pfr_islinklocal(af, addr)) {
   idx++;
   goto _next_block;
  }
  pf_addrcpy(counter, addr, af);
  rpool->tblidx = idx;
  kt->pfrkt_ts.pfrts_match++;
  rpool->states = 0;
  if (ke->u._ke._pfrke_counters != ((void *)0))
   rpool->states = ke->u._ke._pfrke_counters->states;
  switch (ke->u._ke._pfrke_type) {
  case PFRKE_COST:
   rpool->weight = ((struct pfr_kentry_cost *)ke)->weight;
  case PFRKE_ROUTE:
   rpool->kif = ((struct pfr_kentry_route *)ke)->kif;
   break;
  default:
   rpool->weight = 1;
   break;
  }
  return (0);
 }
 for (;;) {
  switch (af) {
  case 2:
   ke2 = (struct pfr_kentry *)rn_match(&tmp4,
       kt->pfrkt_ip4);
   break;
  case 24:
   ke2 = (struct pfr_kentry *)rn_match(&tmp6,
       kt->pfrkt_ip6);
   break;
  default:
   unhandled_af(af);
  }
  if (ke2 == ke) {
   if (rpool->addr.type == PF_ADDR_DYNIFTL &&
       pfr_islinklocal(af, addr))
    goto _next_entry;
   pf_addrcpy(counter, addr, af);
   rpool->tblidx = idx;
   kt->pfrkt_ts.pfrts_match++;
   rpool->states = 0;
   if (ke->u._ke._pfrke_counters != ((void *)0))
    rpool->states = ke->u._ke._pfrke_counters->states;
   switch (ke->u._ke._pfrke_type) {
   case PFRKE_COST:
    rpool->weight =
        ((struct pfr_kentry_cost *)ke)->weight;
   case PFRKE_ROUTE:
    rpool->kif = ((struct pfr_kentry_route *)ke)->kif;
    break;
   default:
    rpool->weight = 1;
    break;
   }
   return (0);
  }
_next_entry:
  pfr_prepare_network(&mask, 2, ke2->u._ke._pfrke_net);
  pf_poolmask(addr, addr, (((af)==2) ? (struct pf_addr *)&(&mask)->sin.sin_addr : (struct pf_addr *)&(&mask)->sin6.sin6_addr), &pfr_ffaddr, af);
  pf_addr_inc(addr, af);
  if (!pf_match_addr(0, *raddr, *rmask, addr, af)) {
   idx++;
   use_counter = 0;
   goto _next_block;
  }
 }
}
struct pfr_kentry *
pfr_kentry_byidx(struct pfr_ktable *kt, int idx, int af)
{
 struct pfr_walktree w;
 __builtin_bzero((&w), (sizeof(w)));
 w.pfrw_op = PFRW_POOL_GET;
 w.pfrw_free = idx;
 switch (af) {
 case 2:
  rn_walktree(kt->pfrkt_ip4, pfr_walktree, &w);
  return (w.pfrw_1.pfrw1_kentry);
 case 24:
  rn_walktree(kt->pfrkt_ip6, pfr_walktree, &w);
  return (w.pfrw_1.pfrw1_kentry);
 default:
  return (((void *)0));
 }
}
int
pfr_states_increase(struct pfr_ktable *kt, struct pf_addr *addr, int af)
{
 struct pfr_kentry *ke;
 ke = pfr_kentry_byaddr(kt, addr, af, 1);
 if (ke == ((void *)0))
  return (-1);
 if (ke->u._ke._pfrke_counters == ((void *)0))
  ke->u._ke._pfrke_counters = pool_get(&pfr_kcounters_pl,
      0x0002 | 0x0008);
 if (ke->u._ke._pfrke_counters == ((void *)0))
  return (-1);
 ke->u._ke._pfrke_counters->states++;
 return ke->u._ke._pfrke_counters->states;
}
int
pfr_states_decrease(struct pfr_ktable *kt, struct pf_addr *addr, int af)
{
 struct pfr_kentry *ke;
 ke = pfr_kentry_byaddr(kt, addr, af, 1);
 if (ke == ((void *)0))
  return (-1);
 if (ke->u._ke._pfrke_counters == ((void *)0))
  ke->u._ke._pfrke_counters = pool_get(&pfr_kcounters_pl,
      0x0002 | 0x0008);
 if (ke->u._ke._pfrke_counters == ((void *)0))
  return (-1);
 if (ke->u._ke._pfrke_counters->states > 0)
  ke->u._ke._pfrke_counters->states--;
 else
  do { if (pf_status.debug >= (7)) { log(7, "pf: "); addlog("pfr_states_decrease: states-- when states <= 0"); addlog("\n"); } } while (0);
 return ke->u._ke._pfrke_counters->states;
}
struct pfr_kentry *
pfr_kentry_byaddr(struct pfr_ktable *kt, struct pf_addr *addr, sa_family_t af,
    int exact)
{
 struct pfr_kentry *ke;
 struct pfr_addr p;
 __builtin_bzero((&p), (sizeof(p)));
 p.pfra_af = af;
 switch (af) {
 case 2:
  p.pfra_net = 32;
  p.pfra_u._pfra_ip4addr = addr->pfa.v4;
  break;
 case 24:
  p.pfra_net = 128;
  p.pfra_u._pfra_ip6addr = addr->pfa.v6;
  break;
 default:
  unhandled_af(af);
 }
 ke = pfr_lookup_addr(kt, &p, exact);
 return ke;
}
void
pfr_dynaddr_update(struct pfr_ktable *kt, struct pfi_dynaddr *dyn)
{
 struct pfr_walktree w;
 __builtin_bzero((&w), (sizeof(w)));
 w.pfrw_op = PFRW_DYNADDR_UPDATE;
 w.pfrw_1.pfrw1_dyn = dyn;
 dyn->pfid_acnt4 = 0;
 dyn->pfid_acnt6 = 0;
 switch (dyn->pfid_af) {
 case 0:
  rn_walktree(kt->pfrkt_ip4, pfr_walktree, &w);
  rn_walktree(kt->pfrkt_ip6, pfr_walktree, &w);
  break;
 case 2:
  rn_walktree(kt->pfrkt_ip4, pfr_walktree, &w);
  break;
 case 24:
  rn_walktree(kt->pfrkt_ip6, pfr_walktree, &w);
  break;
 default:
  unhandled_af(dyn->pfid_af);
 }
}
void
pfr_ktable_winfo_update(struct pfr_ktable *kt, struct pfr_kentry *p) {
 if (kt->pfrkt_refcntcost > 0) {
  u_int16_t weight;
  weight = (p->u._ke._pfrke_type == PFRKE_COST) ?
      ((struct pfr_kentry_cost *)p)->weight : 1;
  if (kt->pfrkt_gcdweight == 0)
   kt->pfrkt_gcdweight = weight;
  kt->pfrkt_gcdweight =
   pfr_gcd(weight, kt->pfrkt_gcdweight);
  if (kt->pfrkt_maxweight < weight)
   kt->pfrkt_maxweight = weight;
 }
}
