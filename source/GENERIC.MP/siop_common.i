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
struct mutex {
 volatile void *mtx_owner;
 int mtx_wantipl;
 int mtx_oldipl;
};
void __mtx_init(struct mutex *, int);
void __mtx_enter(struct mutex *);
int __mtx_enter_try(struct mutex *);
void __mtx_leave(struct mutex *);
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
typedef struct scsireq {
 u_long flags;
 u_long timeout;
 u_char cmd[16];
 u_char cmdlen;
 caddr_t databuf;
 u_long datalen;
 u_long datalen_used;
 u_char sense[48];
 u_char senselen;
 u_char senselen_used;
 u_char status;
 u_char retsts;
 int error;
} scsireq_t;
struct scsi_addr {
 int type;
 int scbus;
 int target;
 int lun;
};
struct sbioc_device {
 void *sd_cookie;
 int sd_target;
 int sd_lun;
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
struct scf_period {
 int clock;
 int period;
 int scf;
};
static const struct scf_period scf_period[] = {
 {250, 25, 1},
 {250, 37, 2},
 {250, 50, 3},
 {250, 75, 4},
 {125, 12, 1},
 {125, 18, 2},
 {125, 25, 3},
 {125, 37, 4},
 {125, 50, 5},
 { 62, 10, 1},
 { 62, 12, 3},
 { 62, 18, 4},
 { 62, 25, 5},
};
static const struct scf_period dt_scf_period[] = {
 { 62, 9, 1},
 { 62, 10, 3},
 { 62, 12, 5},
 { 62, 18, 6},
 { 62, 25, 7},
};
struct nvram_symbios {
 u_int16_t type;
 u_int16_t byte_count;
 u_int16_t checksum;
 u_int8_t v_major;
 u_int8_t v_minor;
 u_int32_t boot_crc;
 u_int16_t flags;
 u_int16_t flags1;
 u_int16_t term_state;
 u_int16_t rmvbl_flags;
 u_int8_t host_id;
 u_int8_t num_hba;
 u_int8_t num_devices;
 u_int8_t max_scam_devices;
 u_int8_t num_valid_scam_devices;
 u_int8_t rsvd;
 struct nvram_symbios_host {
  u_int16_t type;
  u_int16_t device_id;
  u_int16_t vendor_id;
  u_int8_t bus_nr;
  u_int8_t device_fn;
  u_int16_t word8;
  u_int16_t flags;
  u_int16_t io_port;
 } __attribute__((__packed__)) host[4];
 struct nvram_symbios_target {
  u_int8_t flags;
  u_int8_t rsvd;
  u_int8_t bus_width;
  u_int8_t sync_offset;
  u_int16_t sync_period;
  u_int16_t timeout;
 } __attribute__((__packed__)) target[16];
 struct nvram_symbios_scam {
  u_int16_t id;
  u_int16_t method;
  u_int16_t status;
  u_int8_t target_id;
  u_int8_t rsvd;
 } __attribute__((__packed__)) scam[4];
 u_int8_t spare_devices[15 * 8];
 u_int8_t trailer[6];
} __attribute__((__packed__));
typedef struct scr_table {
 u_int32_t count;
 u_int32_t addr;
} __attribute__((__packed__)) scr_table_t;
struct siop_common_xfer {
 u_int8_t msg_out[16];
 u_int8_t msg_in[16];
 u_int32_t status;
 u_int32_t pad1;
 u_int32_t id;
 struct scsi_generic xscmd;
 scr_table_t t_msgin;
 scr_table_t t_extmsgin;
 scr_table_t t_extmsgdata;
 scr_table_t t_msgout;
 scr_table_t cmd;
 scr_table_t t_status;
 scr_table_t data[17];
} __attribute__((__packed__));
struct siop_common_cmd {
 struct siop_common_softc *siop_sc;
 struct siop_common_target *siop_target;
 struct scsi_xfer *xs;
 struct siop_common_xfer *siop_tables;
 struct scsi_sense_data *sense;
 bus_addr_t dsa;
 bus_dmamap_t dmamap_data;
 int status;
 int flags;
 int tag;
 int resid;
};
struct siop_common_target {
 int status;
 int flags;
 u_int32_t id;
 int period;
 int offset;
};
struct siop_common_softc {
 struct device sc_dev;
 struct scsi_link sc_link;
 int features;
 int ram_size;
 int maxburst;
 int maxoff;
 int clock_div;
 int clock_period;
 int st_minsync;
 int dt_minsync;
 int st_maxsync;
 int dt_maxsync;
 int mode;
 bus_space_tag_t sc_rt;
 bus_space_handle_t sc_rh;
 bus_addr_t sc_raddr;
 bus_space_tag_t sc_ramt;
 bus_space_handle_t sc_ramh;
 bus_dma_tag_t sc_dmat;
 void (*sc_reset)(struct siop_common_softc*);
 bus_dmamap_t sc_scriptdma;
 bus_addr_t sc_scriptaddr;
 u_int32_t *sc_script;
 struct siop_common_target *targets[16];
};
int siop_common_attach(struct siop_common_softc *);
void siop_common_reset(struct siop_common_softc *);
void siop_setuptables(struct siop_common_cmd *);
int siop_modechange(struct siop_common_softc *);
int siop_wdtr_neg(struct siop_common_cmd *);
int siop_sdtr_neg(struct siop_common_cmd *);
int siop_ppr_neg(struct siop_common_cmd *);
void siop_sdtr_msg(struct siop_common_cmd *, int, int, int);
void siop_wdtr_msg(struct siop_common_cmd *, int, int);
void siop_ppr_msg(struct siop_common_cmd *, int, int, int);
void siop_update_xfer_mode(struct siop_common_softc *, int);
int siop_iwr(struct siop_common_cmd *);
void siop_minphys(struct buf *, struct scsi_link *);
void siop_ma(struct siop_common_cmd *);
void siop_sdp(struct siop_common_cmd *, int);
void siop_update_resid(struct siop_common_cmd *, int);
void siop_clearfifo(struct siop_common_softc *);
void siop_resetbus(struct siop_common_softc *);
struct siop_dmamem {
 bus_dmamap_t sdm_map;
 bus_dma_segment_t sdm_seg;
 size_t sdm_size;
 caddr_t sdm_kva;
};
struct siop_xfer {
 struct siop_common_xfer siop_tables;
 u_int32_t resel[35];
} __attribute__((__packed__));
struct siop_cmd {
 struct { struct siop_cmd *tqe_next; struct siop_cmd **tqe_prev; } next;
 struct siop_common_cmd cmd_c;
 struct siop_cbd *siop_cbdp;
 int reselslot;
 u_int32_t saved_offset;
};
struct siop_cbd {
 struct { struct siop_cbd *tqe_next; struct siop_cbd **tqe_prev; } next;
 struct siop_cmd *cmds;
 struct siop_dmamem *xfers;
 struct siop_dmamem *sense;
};
struct siop_tag {
 struct siop_cmd *active;
 u_int reseloff;
};
struct siop_lun {
 struct siop_tag siop_tag[16];
 int lun_flags;
 u_int reseloff;
};
struct siop_target {
 struct siop_common_target target_c;
 struct siop_lun *siop_lun[8];
 u_int reseloff;
 struct siop_lunsw *lunsw;
};
struct siop_lunsw {
 struct { struct siop_lunsw *tqe_next; struct siop_lunsw **tqe_prev; } next;
 u_int32_t lunsw_off;
 u_int32_t lunsw_size;
};
struct cmd_list { struct siop_cmd *tqh_first; struct siop_cmd **tqh_last; };
struct cbd_list { struct siop_cbd *tqh_first; struct siop_cbd **tqh_last; };
struct lunsw_list { struct siop_lunsw *tqh_first; struct siop_lunsw **tqh_last; };
struct siop_softc {
 struct siop_common_softc sc_c;
 int sc_currschedslot;
 struct cbd_list cmds;
 struct cmd_list free_list;
 struct cmd_list urgent_list;
 struct cmd_list ready_list;
 struct scsi_iopool iopool;
 struct lunsw_list lunsw_list;
 u_int32_t script_free_lo;
 u_int32_t script_free_hi;
 int sc_ntargets;
 u_int32_t sc_flags;
};
void siop_attach(struct siop_softc *);
int siop_intr(void *);
void siop_add_dev(struct siop_softc *, int, int);
void siop_del_dev(struct siop_softc *, int, int);
int
siop_common_attach(sc)
 struct siop_common_softc *sc;
{
 int error, i;
 bus_dma_segment_t seg;
 int rseg;
 if ((sc->features & 0x00004000) == 0) {
  error = bus_dmamem_alloc(sc->sc_dmat, (1 << 13),
      (1 << 13), 0, &seg, 1, &rseg, 0x0001);
  if (error) {
   printf("%s: unable to allocate script DMA memory, "
       "error = %d\n", sc->sc_dev.dv_xname, error);
   return error;
  }
  error = bus_dmamem_map(sc->sc_dmat, &seg, rseg, (1 << 13),
      (caddr_t *)&sc->sc_script,
      0x0001|0x0004);
  if (error) {
   printf("%s: unable to map script DMA memory, "
       "error = %d\n", sc->sc_dev.dv_xname, error);
   return error;
  }
  error = bus_dmamap_create(sc->sc_dmat, (1 << 13), 1,
      (1 << 13), 0, 0x0001, &sc->sc_scriptdma);
  if (error) {
   printf("%s: unable to create script DMA map, "
       "error = %d\n", sc->sc_dev.dv_xname, error);
   return error;
  }
  error = bus_dmamap_load(sc->sc_dmat, sc->sc_scriptdma,
      sc->sc_script, (1 << 13), ((void *)0), 0x0001);
  if (error) {
   printf("%s: unable to load script DMA map, "
       "error = %d\n", sc->sc_dev.dv_xname, error);
   return error;
  }
  sc->sc_scriptaddr =
      sc->sc_scriptdma->dm_segs[0].ds_addr;
  sc->ram_size = (1 << 13);
 }
 sc->sc_link.adapter_softc = sc;
 sc->sc_link.adapter_buswidth =
     (sc->features & 0x00000001) ? 16 : 8;
 sc->sc_link.adapter_target =
     bus_space_read_1(sc->sc_rt, sc->sc_rh, 0x04);
 if (sc->sc_link.adapter_target == 0 ||
     sc->sc_link.adapter_target >=
     sc->sc_link.adapter_buswidth)
  sc->sc_link.adapter_target = 7;
 for (i = 0; i < 16; i++)
  sc->targets[i] = ((void *)0);
 sc->st_maxsync = 0;
 sc->dt_maxsync = 0;
 sc->st_minsync = 255;
 sc->dt_minsync = 255;
 for (i = 0; i < sizeof(scf_period) / sizeof(scf_period[0]); i++) {
  if (sc->clock_period != scf_period[i].clock)
   continue;
  if (sc->st_maxsync < scf_period[i].period)
   sc->st_maxsync = scf_period[i].period;
  if (sc->st_minsync > scf_period[i].period)
   sc->st_minsync = scf_period[i].period;
 }
 if (sc->st_maxsync == 255 || sc->st_minsync == 0)
  panic("siop: can't find my sync parameters");
 for (i = 0; i < sizeof(dt_scf_period) / sizeof(dt_scf_period[0]); i++) {
  if (sc->clock_period != dt_scf_period[i].clock)
   continue;
  if (sc->dt_maxsync < dt_scf_period[i].period)
   sc->dt_maxsync = dt_scf_period[i].period;
  if (sc->dt_minsync > dt_scf_period[i].period)
   sc->dt_minsync = dt_scf_period[i].period;
 }
 if (sc->dt_maxsync == 255 || sc->dt_minsync == 0)
  panic("siop: can't find my sync parameters");
 return 0;
}
void
siop_common_reset(sc)
 struct siop_common_softc *sc;
{
 u_int32_t stest3;
 bus_space_write_1(sc->sc_rt, sc->sc_rh, 0x14, 0x40);
 delay(1000);
 bus_space_write_1(sc->sc_rt, sc->sc_rh, 0x14, 0);
 bus_space_write_1(sc->sc_rt, sc->sc_rh, 0x00,
     0xc0 | 0x08 | 0x02);
 bus_space_write_1(sc->sc_rt, sc->sc_rh, 0x01, 0);
 bus_space_write_1(sc->sc_rt, sc->sc_rh, 0x03, sc->clock_div);
 bus_space_write_1(sc->sc_rt, sc->sc_rh, 0x05, 0);
 bus_space_write_1(sc->sc_rt, sc->sc_rh, 0x39, 0xff);
 bus_space_write_1(sc->sc_rt, sc->sc_rh, 0x40,
     0xff & ~(0x40 | 0x20 | 0x10));
 bus_space_write_1(sc->sc_rt, sc->sc_rh, 0x41,
     0xff & ~(0x01 | 0x02));
 bus_space_write_1(sc->sc_rt, sc->sc_rh, 0x4E, 0);
 bus_space_write_1(sc->sc_rt, sc->sc_rh, 0x4F, 0x80);
 bus_space_write_1(sc->sc_rt, sc->sc_rh, 0x48,
     (0xb << 0));
 bus_space_write_1(sc->sc_rt, sc->sc_rh, 0x04,
     sc->sc_link.adapter_target | 0x40);
 bus_space_write_1(sc->sc_rt, sc->sc_rh, 0x4A,
     1 << sc->sc_link.adapter_target);
 bus_space_write_1(sc->sc_rt, sc->sc_rh, 0x3B,
     (sc->features & 0x00002000) ? 0x01 | 0x20 : 0x01);
 if (sc->features & 0x00100000)
  bus_space_write_1(sc->sc_rt, sc->sc_rh,
      0xbf, 0x08);
 if (sc->features & (0x00000400 | 0x00000800)) {
  stest3 = bus_space_read_1(sc->sc_rt, sc->sc_rh, 0x4F);
  bus_space_write_1(sc->sc_rt, sc->sc_rh, 0x4D,
      0x08);
  if (sc->features & 0x00000800) {
   while ((bus_space_read_1(sc->sc_rt, sc->sc_rh,
       0x52) & 0x20) == 0)
    delay(10);
  } else {
   delay(100);
  }
  bus_space_write_1(sc->sc_rt, sc->sc_rh, 0x4F,
      stest3 | 0x20);
  bus_space_write_1(sc->sc_rt, sc->sc_rh, 0x4D,
      0x08 | 0x04);
  bus_space_write_1(sc->sc_rt, sc->sc_rh, 0x4F, stest3);
 } else {
  bus_space_write_1(sc->sc_rt, sc->sc_rh, 0x4D, 0);
 }
 if (sc->features & 0x00001000)
  bus_space_write_1(sc->sc_rt, sc->sc_rh, 0x22,
      bus_space_read_1(sc->sc_rt, sc->sc_rh, 0x22) |
      0x20);
 if (sc->features & 0x00000100) {
  bus_space_write_1(sc->sc_rt, sc->sc_rh, 0x47,
      bus_space_read_1(sc->sc_rt, sc->sc_rh, 0x47) & 0xfe);
 }
 if (sc->features & 0x00000008) {
  bus_space_write_1(sc->sc_rt, sc->sc_rh, 0xBC, 0);
 }
 sc->mode = bus_space_read_1(sc->sc_rt, sc->sc_rh, 0x52) &
     0xc0;
 if (sc->features & 0x00004000)
  bus_space_set_region_4(sc->sc_ramt, sc->sc_ramh,
   0, 0, sc->ram_size / 4);
 sc->sc_reset(sc);
}
void
siop_setuptables(siop_cmd)
 struct siop_common_cmd *siop_cmd;
{
 int i;
 struct siop_common_softc *sc = siop_cmd->siop_sc;
 struct scsi_xfer *xs = siop_cmd->xs;
 int target = xs->sc_link->target;
 int lun = xs->sc_link->lun;
 int msgoffset = 1;
 int *targ_flags = &sc->targets[target]->flags;
 int quirks;
 siop_cmd->siop_tables->id = (((sc)->features & 0x00200000) ? ((__uint32_t)((sc->targets[target]->id))) : (__uint32_t)(__builtin_constant_p((sc->targets[target]->id)) ? (__uint32_t)(((__uint32_t)((sc->targets[target]->id)) & 0xff) << 24 | ((__uint32_t)((sc->targets[target]->id)) & 0xff00) << 8 | ((__uint32_t)((sc->targets[target]->id)) & 0xff0000) >> 8 | ((__uint32_t)((sc->targets[target]->id)) & 0xff000000) >> 24) : __swap32md((sc->targets[target]->id))));
 __builtin_memset((siop_cmd->siop_tables->msg_out), (0), (sizeof(siop_cmd->siop_tables->msg_out)));
 if (siop_cmd->status == 3)
  siop_cmd->siop_tables->msg_out[0] = (((0) ? 0xc0 : 0x80) | (lun));
 else if ((sc->features & 0x00080000) &&
     (sc->targets[target]->flags & 0x10) == 0)
  siop_cmd->siop_tables->msg_out[0] = (((0) ? 0xc0 : 0x80) | (lun));
 else
  siop_cmd->siop_tables->msg_out[0] = (((1) ? 0xc0 : 0x80) | (lun));
 siop_cmd->siop_tables->t_msgout.count = (((sc)->features & 0x00200000) ? ((__uint32_t)((msgoffset))) : (__uint32_t)(__builtin_constant_p((msgoffset)) ? (__uint32_t)(((__uint32_t)((msgoffset)) & 0xff) << 24 | ((__uint32_t)((msgoffset)) & 0xff00) << 8 | ((__uint32_t)((msgoffset)) & 0xff0000) >> 8 | ((__uint32_t)((msgoffset)) & 0xff000000) >> 24) : __swap32md((msgoffset))));
 if (sc->targets[target]->status == 1) {
  *targ_flags &= 0x08;
  quirks = xs->sc_link->quirks;
  if ((quirks & 0x0008) == 0)
   *targ_flags |= 0x04;
  if (((quirks & 0x0004) == 0) &&
      (sc->features & 0x00000001))
   *targ_flags |= 0x02;
  if ((quirks & 0x0002) == 0)
   *targ_flags |= 0x01;
  if ((sc->features & 0x00080000) &&
      (*targ_flags & 0x02) == 0)
   *targ_flags &= ~0x04;
  siop_add_dev((struct siop_softc *)sc, target, lun);
  if ((*targ_flags & 0x08) &&
      (sc->mode == 0xc0)) {
   sc->targets[target]->status = 4;
    siop_ppr_msg(siop_cmd, msgoffset, sc->dt_minsync,
       sc->maxoff);
  } else if (*targ_flags & 0x02) {
   sc->targets[target]->status = 2;
   siop_wdtr_msg(siop_cmd, msgoffset,
       0x01);
  } else if (*targ_flags & 0x01) {
   sc->targets[target]->status = 3;
   siop_sdtr_msg(siop_cmd, msgoffset, sc->st_minsync,
   (sc->maxoff > 31) ? 31 : sc->maxoff);
  } else {
   sc->targets[target]->status = 5;
   siop_update_xfer_mode(sc, target);
  }
 } else if (sc->targets[target]->status == 5 &&
     (*targ_flags & 0x04) &&
     siop_cmd->status != 3) {
  siop_cmd->flags |= 0x0002;
 }
 siop_cmd->siop_tables->status =
     (((sc)->features & 0x00200000) ? ((__uint32_t)((0xff))) : (__uint32_t)(__builtin_constant_p((0xff)) ? (__uint32_t)(((__uint32_t)((0xff)) & 0xff) << 24 | ((__uint32_t)((0xff)) & 0xff00) << 8 | ((__uint32_t)((0xff)) & 0xff0000) >> 8 | ((__uint32_t)((0xff)) & 0xff000000) >> 24) : __swap32md((0xff))));
 if ((xs->flags & (0x00800 | 0x01000)) ||
     siop_cmd->status == 3) {
  __builtin_bzero((siop_cmd->siop_tables->data), (sizeof(siop_cmd->siop_tables->data)));
  for (i = 0; i < siop_cmd->dmamap_data->dm_nsegs; i++) {
   siop_cmd->siop_tables->data[i].count =
       (((sc)->features & 0x00200000) ? ((__uint32_t)((siop_cmd->dmamap_data->dm_segs[i].ds_len))) : (__uint32_t)(__builtin_constant_p((siop_cmd->dmamap_data->dm_segs[i].ds_len)) ? (__uint32_t)(((__uint32_t)((siop_cmd->dmamap_data->dm_segs[i].ds_len)) & 0xff) << 24 | ((__uint32_t)((siop_cmd->dmamap_data->dm_segs[i].ds_len)) & 0xff00) << 8 | ((__uint32_t)((siop_cmd->dmamap_data->dm_segs[i].ds_len)) & 0xff0000) >> 8 | ((__uint32_t)((siop_cmd->dmamap_data->dm_segs[i].ds_len)) & 0xff000000) >> 24) : __swap32md((siop_cmd->dmamap_data->dm_segs[i].ds_len))));
   siop_cmd->siop_tables->data[i].addr =
       (((sc)->features & 0x00200000) ? ((__uint32_t)((siop_cmd->dmamap_data->dm_segs[i].ds_addr))) : (__uint32_t)(__builtin_constant_p((siop_cmd->dmamap_data->dm_segs[i].ds_addr)) ? (__uint32_t)(((__uint32_t)((siop_cmd->dmamap_data->dm_segs[i].ds_addr)) & 0xff) << 24 | ((__uint32_t)((siop_cmd->dmamap_data->dm_segs[i].ds_addr)) & 0xff00) << 8 | ((__uint32_t)((siop_cmd->dmamap_data->dm_segs[i].ds_addr)) & 0xff0000) >> 8 | ((__uint32_t)((siop_cmd->dmamap_data->dm_segs[i].ds_addr)) & 0xff000000) >> 24) : __swap32md((siop_cmd->dmamap_data->dm_segs[i].ds_addr))));
  }
 }
}
int
siop_wdtr_neg(siop_cmd)
 struct siop_common_cmd *siop_cmd;
{
 struct siop_common_softc *sc = siop_cmd->siop_sc;
 struct siop_common_target *siop_target = siop_cmd->siop_target;
 int target = siop_cmd->xs->sc_link->target;
 struct siop_common_xfer *tables = siop_cmd->siop_tables;
 if (siop_target->status == 2) {
  switch (tables->msg_in[3]) {
  case 0x00:
   siop_target->flags &= ~0x10;
   sc->targets[target]->id &= ~(0x08 << 24);
   break;
  case 0x01:
   if (siop_target->flags & 0x02) {
    siop_target->flags |= 0x10;
    sc->targets[target]->id |= (0x08 << 24);
    break;
   }
  default:
   siop_target->flags &= ~0x10;
   siop_target->status = 5;
   siop_target->offset = siop_target->period = 0;
   siop_update_xfer_mode(sc, target);
   printf("%s: rejecting invalid wide negotiation from "
       "target %d (%d)\n", sc->sc_dev.dv_xname, target,
       tables->msg_in[3]);
   tables->t_msgout.count = (((sc)->features & 0x00200000) ? ((__uint32_t)((1))) : (__uint32_t)(__builtin_constant_p((1)) ? (__uint32_t)(((__uint32_t)((1)) & 0xff) << 24 | ((__uint32_t)((1)) & 0xff00) << 8 | ((__uint32_t)((1)) & 0xff0000) >> 8 | ((__uint32_t)((1)) & 0xff000000) >> 24) : __swap32md((1))));
   tables->msg_out[0] = 0x07;
   return 0x1;
  }
  tables->id = (((sc)->features & 0x00200000) ? ((__uint32_t)((sc->targets[target]->id))) : (__uint32_t)(__builtin_constant_p((sc->targets[target]->id)) ? (__uint32_t)(((__uint32_t)((sc->targets[target]->id)) & 0xff) << 24 | ((__uint32_t)((sc->targets[target]->id)) & 0xff00) << 8 | ((__uint32_t)((sc->targets[target]->id)) & 0xff0000) >> 8 | ((__uint32_t)((sc->targets[target]->id)) & 0xff000000) >> 24) : __swap32md((sc->targets[target]->id))));
  bus_space_write_1(sc->sc_rt, sc->sc_rh,
      0x03,
      (sc->targets[target]->id >> 24) & 0xff);
  if (siop_target->flags & 0x01) {
   siop_target->status = 3;
   siop_sdtr_msg(siop_cmd, 0, sc->st_minsync,
       (sc->maxoff > 31) ? 31 : sc->maxoff);
   return 0x1;
  } else {
   siop_target->status = 5;
   siop_update_xfer_mode(sc, target);
   return 0x2;
  }
 } else {
  if (tables->msg_in[3] >= 0x01
      && (siop_target->flags & 0x02)) {
   siop_target->flags |= 0x10;
   sc->targets[target]->id |= 0x08 << 24;
  } else {
   siop_target->flags &= ~0x10;
   sc->targets[target]->id &= ~(0x08 << 24);
  }
  tables->id = (((sc)->features & 0x00200000) ? ((__uint32_t)((sc->targets[target]->id))) : (__uint32_t)(__builtin_constant_p((sc->targets[target]->id)) ? (__uint32_t)(((__uint32_t)((sc->targets[target]->id)) & 0xff) << 24 | ((__uint32_t)((sc->targets[target]->id)) & 0xff00) << 8 | ((__uint32_t)((sc->targets[target]->id)) & 0xff0000) >> 8 | ((__uint32_t)((sc->targets[target]->id)) & 0xff000000) >> 24) : __swap32md((sc->targets[target]->id))));
  bus_space_write_1(sc->sc_rt, sc->sc_rh, 0x03,
      (sc->targets[target]->id >> 24) & 0xff);
  siop_target->status = 5;
  siop_target->offset = siop_target->period = 0;
  siop_update_xfer_mode(sc, target);
  siop_wdtr_msg(siop_cmd, 0, (siop_target->flags & 0x10) ?
      0x01 : 0x00);
  return 0x1;
 }
}
int
siop_ppr_neg(siop_cmd)
 struct siop_common_cmd *siop_cmd;
{
 struct siop_common_softc *sc = siop_cmd->siop_sc;
 struct siop_common_target *siop_target = siop_cmd->siop_target;
 int target = siop_cmd->xs->sc_link->target;
 struct siop_common_xfer *tables = siop_cmd->siop_tables;
 int sync, offset, options, scf = 0;
 int i;
 if (siop_target->status == 4) {
  sync = tables->msg_in[3];
  offset = tables->msg_in[5];
  options = tables->msg_in[7];
  if (options != 0x02) {
   printf("%s: ppr negotiation for target %d: "
       "no DT option\n", sc->sc_dev.dv_xname, target);
   siop_target->status = 1;
   siop_target->flags &= ~(0x08 | 0x20);
   siop_target->offset = 0;
   siop_target->period = 0;
   goto reject;
  }
  if (offset > sc->maxoff || sync < sc->dt_minsync ||
      sync > sc->dt_maxsync) {
   printf("%s: ppr negotiation for target %d: "
       "offset (%d) or sync (%d) out of range\n",
       sc->sc_dev.dv_xname, target, offset, sync);
   siop_target->status = 1;
   siop_target->flags &= ~(0x08 | 0x20);
   siop_target->offset = 0;
   siop_target->period = 0;
   goto reject;
  } else {
   for (i = 0; i <
       sizeof(dt_scf_period) / sizeof(dt_scf_period[0]);
       i++) {
    if (sc->clock_period != dt_scf_period[i].clock)
     continue;
    if (dt_scf_period[i].period == sync) {
     siop_target->offset = offset;
     siop_target->period = sync;
     scf = dt_scf_period[i].scf;
     siop_target->flags |= 0x20;
    }
   }
   if ((siop_target->flags & 0x20) == 0) {
    printf("%s: ppr negotiation for target %d: "
        "sync (%d) incompatible with adapter\n",
        sc->sc_dev.dv_xname, target, sync);
    siop_target->status = 1;
    siop_target->flags &= ~(0x08 | 0x20);
    siop_target->offset = 0;
    siop_target->period = 0;
    goto reject;
   }
  }
  if (tables->msg_in[6] != 1) {
   printf("%s: ppr negotiation for target %d: "
       "transfer width (%d) incompatible with dt\n",
       sc->sc_dev.dv_xname, target, tables->msg_in[6]);
   siop_target->status = 1;
   siop_target->flags &= ~(0x08 | 0x20);
   siop_target->offset = 0;
   siop_target->period = 0;
   goto reject;
  }
  siop_target->flags |= 0x10;
  sc->targets[target]->id |= (0x08 << 24);
  sc->targets[target]->id &= ~(0x70 << 24);
  sc->targets[target]->id |= scf << (24 + 4);
  sc->targets[target]->id &= ~(0x3f << 8);
  sc->targets[target]->id |=
      (siop_target->offset & 0x3f) << 8;
  sc->targets[target]->id &= ~0xff;
  sc->targets[target]->id |= 0x80;
  siop_target->status = 5;
  siop_update_xfer_mode(sc, target);
  bus_space_write_1(sc->sc_rt, sc->sc_rh, 0x03,
      (sc->targets[target]->id >> 24) & 0xff);
  bus_space_write_1(sc->sc_rt, sc->sc_rh, 0x05,
      (sc->targets[target]->id >> 8) & 0xff);
  bus_space_write_1(sc->sc_rt, sc->sc_rh, 0xBC,
      sc->targets[target]->id & 0xff);
  return 0x2;
 } else {
  printf("%s: rejecting invalid PPR negotiation from "
      "target %d\n", sc->sc_dev.dv_xname, target);
reject:
  tables->t_msgout.count = (((sc)->features & 0x00200000) ? ((__uint32_t)((1))) : (__uint32_t)(__builtin_constant_p((1)) ? (__uint32_t)(((__uint32_t)((1)) & 0xff) << 24 | ((__uint32_t)((1)) & 0xff00) << 8 | ((__uint32_t)((1)) & 0xff0000) >> 8 | ((__uint32_t)((1)) & 0xff000000) >> 24) : __swap32md((1))));
  tables->msg_out[0] = 0x07;
  return 0x1;
 }
}
int
siop_sdtr_neg(siop_cmd)
 struct siop_common_cmd *siop_cmd;
{
 struct siop_common_softc *sc = siop_cmd->siop_sc;
 struct siop_common_target *siop_target = siop_cmd->siop_target;
 int target = siop_cmd->xs->sc_link->target;
 int sync, maxoffset, offset, i;
 int send_msgout = 0;
 struct siop_common_xfer *tables = siop_cmd->siop_tables;
 maxoffset = (sc->maxoff > 31) ? 31 : sc->maxoff;
 sync = tables->msg_in[3];
 offset = tables->msg_in[4];
 if (siop_target->status == 3) {
  siop_target->status = 5;
  if (offset > maxoffset || sync < sc->st_minsync ||
   sync > sc->st_maxsync)
   goto reject;
  for (i = 0; i < sizeof(scf_period) / sizeof(scf_period[0]);
      i++) {
   if (sc->clock_period != scf_period[i].clock)
    continue;
   if (scf_period[i].period == sync) {
    siop_target->offset = offset;
    siop_target->period = sync;
    sc->targets[target]->id &=
        ~(0x70 << 24);
    sc->targets[target]->id |= scf_period[i].scf
        << (24 + 4);
    if (sync < 25 &&
        (sc->features & 0x00000008) == 0)
     sc->targets[target]->id |=
         0x80 << 24;
    else
     sc->targets[target]->id &=
         ~(0x80 << 24);
    sc->targets[target]->id &=
        ~(0x3f << 8);
    sc->targets[target]->id |=
        (offset & 0x3f) << 8;
    sc->targets[target]->id &= ~0xff;
    goto end;
   }
  }
reject:
  send_msgout = 1;
  tables->t_msgout.count = (((sc)->features & 0x00200000) ? ((__uint32_t)((1))) : (__uint32_t)(__builtin_constant_p((1)) ? (__uint32_t)(((__uint32_t)((1)) & 0xff) << 24 | ((__uint32_t)((1)) & 0xff00) << 8 | ((__uint32_t)((1)) & 0xff0000) >> 8 | ((__uint32_t)((1)) & 0xff000000) >> 24) : __swap32md((1))));
  tables->msg_out[0] = 0x07;
  sc->targets[target]->id &= ~(0x70 << 24);
  sc->targets[target]->id &= ~(0x80 << 24);
  sc->targets[target]->id &= ~(0x3f << 8);
  sc->targets[target]->id &= ~0xff;
  siop_target->offset = siop_target->period = 0;
 } else {
  if (offset == 0 || sync > sc->st_maxsync) {
   goto async;
  }
  if (offset > maxoffset)
   offset = maxoffset;
  if (sync < sc->st_minsync)
   sync = sc->st_minsync;
  for (i = 0; i < sizeof(scf_period) / sizeof(scf_period[0]);
      i++) {
   if (sc->clock_period != scf_period[i].clock)
    continue;
   if (scf_period[i].period == sync) {
    siop_target->offset = offset;
    siop_target->period = sync;
    sc->targets[target]->id &=
        ~(0x70 << 24);
    sc->targets[target]->id |= scf_period[i].scf
        << (24 + 4);
    if (sync < 25 &&
        (sc->features & 0x00000008) == 0)
     sc->targets[target]->id |=
         0x80 << 24;
    else
     sc->targets[target]->id &=
         ~(0x80 << 24);
    sc->targets[target]->id &=
        ~(0x3f << 8);
    sc->targets[target]->id |=
        (offset & 0x3f) << 8;
    sc->targets[target]->id &= ~0xff;
    siop_sdtr_msg(siop_cmd, 0, sync, offset);
    send_msgout = 1;
    goto end;
   }
  }
async:
  siop_target->offset = siop_target->period = 0;
  sc->targets[target]->id &= ~(0x70 << 24);
  sc->targets[target]->id &= ~(0x80 << 24);
  sc->targets[target]->id &= ~(0x3f << 8);
  sc->targets[target]->id &= ~0xff;
  siop_sdtr_msg(siop_cmd, 0, 0, 0);
  send_msgout = 1;
 }
end:
 if (siop_target->status == 5)
  siop_update_xfer_mode(sc, target);
 tables->id = (((sc)->features & 0x00200000) ? ((__uint32_t)((sc->targets[target]->id))) : (__uint32_t)(__builtin_constant_p((sc->targets[target]->id)) ? (__uint32_t)(((__uint32_t)((sc->targets[target]->id)) & 0xff) << 24 | ((__uint32_t)((sc->targets[target]->id)) & 0xff00) << 8 | ((__uint32_t)((sc->targets[target]->id)) & 0xff0000) >> 8 | ((__uint32_t)((sc->targets[target]->id)) & 0xff000000) >> 24) : __swap32md((sc->targets[target]->id))));
 bus_space_write_1(sc->sc_rt, sc->sc_rh, 0x03,
     (sc->targets[target]->id >> 24) & 0xff);
 bus_space_write_1(sc->sc_rt, sc->sc_rh, 0x05,
     (sc->targets[target]->id >> 8) & 0xff);
 if (send_msgout) {
  return 0x1;
 } else {
  return 0x2;
 }
}
void
siop_sdtr_msg(siop_cmd, offset, ssync, soff)
 struct siop_common_cmd *siop_cmd;
 int offset;
 int ssync, soff;
{
 siop_cmd->siop_tables->msg_out[offset + 0] = 0x01;
 siop_cmd->siop_tables->msg_out[offset + 1] = 0x03;
 siop_cmd->siop_tables->msg_out[offset + 2] = 0x01;
 siop_cmd->siop_tables->msg_out[offset + 3] = ssync;
 siop_cmd->siop_tables->msg_out[offset + 4] = soff;
 siop_cmd->siop_tables->t_msgout.count =
     (((siop_cmd->siop_sc)->features & 0x00200000) ? ((__uint32_t)((offset + 0x03 + 2))) : (__uint32_t)(__builtin_constant_p((offset + 0x03 + 2)) ? (__uint32_t)(((__uint32_t)((offset + 0x03 + 2)) & 0xff) << 24 | ((__uint32_t)((offset + 0x03 + 2)) & 0xff00) << 8 | ((__uint32_t)((offset + 0x03 + 2)) & 0xff0000) >> 8 | ((__uint32_t)((offset + 0x03 + 2)) & 0xff000000) >> 24) : __swap32md((offset + 0x03 + 2))));
}
void
siop_wdtr_msg(siop_cmd, offset, wide)
 struct siop_common_cmd *siop_cmd;
 int offset;
 int wide;
{
 siop_cmd->siop_tables->msg_out[offset + 0] = 0x01;
 siop_cmd->siop_tables->msg_out[offset + 1] = 0x02;
 siop_cmd->siop_tables->msg_out[offset + 2] = 0x03;
 siop_cmd->siop_tables->msg_out[offset + 3] = wide;
 siop_cmd->siop_tables->t_msgout.count =
     (((siop_cmd->siop_sc)->features & 0x00200000) ? ((__uint32_t)((offset + 0x02 + 2))) : (__uint32_t)(__builtin_constant_p((offset + 0x02 + 2)) ? (__uint32_t)(((__uint32_t)((offset + 0x02 + 2)) & 0xff) << 24 | ((__uint32_t)((offset + 0x02 + 2)) & 0xff00) << 8 | ((__uint32_t)((offset + 0x02 + 2)) & 0xff0000) >> 8 | ((__uint32_t)((offset + 0x02 + 2)) & 0xff000000) >> 24) : __swap32md((offset + 0x02 + 2))));
}
void
siop_ppr_msg(siop_cmd, offset, ssync, soff)
 struct siop_common_cmd *siop_cmd;
 int offset;
 int ssync, soff;
{
 siop_cmd->siop_tables->msg_out[offset + 0] = 0x01;
 siop_cmd->siop_tables->msg_out[offset + 1] = 0x06;
 siop_cmd->siop_tables->msg_out[offset + 2] = 0x04;
 siop_cmd->siop_tables->msg_out[offset + 3] = ssync;
 siop_cmd->siop_tables->msg_out[offset + 4] = 0;
 siop_cmd->siop_tables->msg_out[offset + 5] = soff;
 siop_cmd->siop_tables->msg_out[offset + 6] = 1;
 siop_cmd->siop_tables->msg_out[offset + 7] = 0x02;
 siop_cmd->siop_tables->t_msgout.count =
     (((siop_cmd->siop_sc)->features & 0x00200000) ? ((__uint32_t)((offset + 0x06 + 2))) : (__uint32_t)(__builtin_constant_p((offset + 0x06 + 2)) ? (__uint32_t)(((__uint32_t)((offset + 0x06 + 2)) & 0xff) << 24 | ((__uint32_t)((offset + 0x06 + 2)) & 0xff00) << 8 | ((__uint32_t)((offset + 0x06 + 2)) & 0xff0000) >> 8 | ((__uint32_t)((offset + 0x06 + 2)) & 0xff000000) >> 24) : __swap32md((offset + 0x06 + 2))));
}
void
siop_minphys(struct buf *bp, struct scsi_link *sl)
{
 if (bp->b_bcount > ((17 - 1) * (1 << 13)))
  bp->b_bcount = ((17 - 1) * (1 << 13));
 minphys(bp);
}
void
siop_ma(siop_cmd)
 struct siop_common_cmd *siop_cmd;
{
 int offset, dbc, sstat;
 struct siop_common_softc *sc = siop_cmd->siop_sc;
 scr_table_t *table;
 if ((siop_cmd->xs->flags & (0x01000 | 0x00800))
     == 0)
     return;
 offset = bus_space_read_1(sc->sc_rt, sc->sc_rh, 0x34 + 1);
 if (offset >= 17) {
  printf("%s: bad offset in siop_sdp (%d)\n",
      sc->sc_dev.dv_xname, offset);
  return;
 }
 table = &siop_cmd->siop_tables->data[offset];
 dbc = bus_space_read_4(sc->sc_rt, sc->sc_rh, 0x24) & 0x00ffffff;
 if (siop_cmd->xs->flags & 0x01000) {
  if (sc->features & 0x00020000) {
   dbc +=
       bus_space_read_2(sc->sc_rt, sc->sc_rh, 0xf0);
  } else {
   int dfifo =
       bus_space_read_1(sc->sc_rt, sc->sc_rh, 0x20);
   if (sc->features & 0x00001000) {
    dfifo |= (bus_space_read_1(sc->sc_rt, sc->sc_rh,
        0x22) & 0x03) << 8;
    dbc += (dfifo - (dbc & 0x3ff)) & 0x3ff;
   } else {
    dbc += (dfifo - (dbc & 0x7f)) & 0x7f;
   }
  }
  sstat = bus_space_read_1(sc->sc_rt, sc->sc_rh, 0x0D);
  if (sstat & 0x20)
   dbc++;
  if ((sstat & 0x40) && (sc->features & 0x00020000) == 0)
   dbc++;
  if (siop_cmd->siop_target->flags & 0x10) {
   sstat = bus_space_read_1(sc->sc_rt, sc->sc_rh,
       0x0F);
   if (sstat & 0x20)
    dbc++;
   if ((sstat & 0x40) &&
       (sc->features & 0x00020000) == 0)
    dbc++;
  }
  bus_space_write_1(sc->sc_rt, sc->sc_rh, 0x1B,
      bus_space_read_1(sc->sc_rt, sc->sc_rh, 0x1B) |
      0x04);
 }
 siop_cmd->flags |= 0x0004;
 siop_cmd->resid = dbc;
}
void
siop_sdp(siop_cmd, offset)
 struct siop_common_cmd *siop_cmd;
 int offset;
{
 struct siop_common_softc *sc = siop_cmd->siop_sc;
 scr_table_t *table;
 if ((siop_cmd->xs->flags & (0x01000 | 0x00800))
     == 0)
     return;
 if (offset == 17)
  return;
 if (offset > 17) {
  sc_print_addr(siop_cmd->xs->sc_link);
  printf("offset %d > %d\n", offset, 17);
  panic("siop_sdp: offset");
 }
 siop_update_resid(siop_cmd, offset);
 if (siop_cmd->flags & 0x0004) {
  siop_cmd->flags &= ~0x0004;
  table = &siop_cmd->siop_tables->data[offset];
  table->addr =
      (((sc)->features & 0x00200000) ? ((__uint32_t)(((((sc)->features & 0x00200000) ? ((__uint32_t)((table->addr))) : (__uint32_t)(__builtin_constant_p((table->addr)) ? (__uint32_t)(((__uint32_t)((table->addr)) & 0xff) << 24 | ((__uint32_t)((table->addr)) & 0xff00) << 8 | ((__uint32_t)((table->addr)) & 0xff0000) >> 8 | ((__uint32_t)((table->addr)) & 0xff000000) >> 24) : __swap32md((table->addr)))) + (((sc)->features & 0x00200000) ? ((__uint32_t)((table->count))) : (__uint32_t)(__builtin_constant_p((table->count)) ? (__uint32_t)(((__uint32_t)((table->count)) & 0xff) << 24 | ((__uint32_t)((table->count)) & 0xff00) << 8 | ((__uint32_t)((table->count)) & 0xff0000) >> 8 | ((__uint32_t)((table->count)) & 0xff000000) >> 24) : __swap32md((table->count)))) - siop_cmd->resid))) : (__uint32_t)(__builtin_constant_p(((((sc)->features & 0x00200000) ? ((__uint32_t)((table->addr))) : (__uint32_t)(__builtin_constant_p((table->addr)) ? (__uint32_t)(((__uint32_t)((table->addr)) & 0xff) << 24 | ((__uint32_t)((table->addr)) & 0xff00) << 8 | ((__uint32_t)((table->addr)) & 0xff0000) >> 8 | ((__uint32_t)((table->addr)) & 0xff000000) >> 24) : __swap32md((table->addr)))) + (((sc)->features & 0x00200000) ? ((__uint32_t)((table->count))) : (__uint32_t)(__builtin_constant_p((table->count)) ? (__uint32_t)(((__uint32_t)((table->count)) & 0xff) << 24 | ((__uint32_t)((table->count)) & 0xff00) << 8 | ((__uint32_t)((table->count)) & 0xff0000) >> 8 | ((__uint32_t)((table->count)) & 0xff000000) >> 24) : __swap32md((table->count)))) - siop_cmd->resid)) ? (__uint32_t)(((__uint32_t)(((((sc)->features & 0x00200000) ? ((__uint32_t)((table->addr))) : (__uint32_t)(__builtin_constant_p((table->addr)) ? (__uint32_t)(((__uint32_t)((table->addr)) & 0xff) << 24 | ((__uint32_t)((table->addr)) & 0xff00) << 8 | ((__uint32_t)((table->addr)) & 0xff0000) >> 8 | ((__uint32_t)((table->addr)) & 0xff000000) >> 24) : __swap32md((table->addr)))) + (((sc)->features & 0x00200000) ? ((__uint32_t)((table->count))) : (__uint32_t)(__builtin_constant_p((table->count)) ? (__uint32_t)(((__uint32_t)((table->count)) & 0xff) << 24 | ((__uint32_t)((table->count)) & 0xff00) << 8 | ((__uint32_t)((table->count)) & 0xff0000) >> 8 | ((__uint32_t)((table->count)) & 0xff000000) >> 24) : __swap32md((table->count)))) - siop_cmd->resid)) & 0xff) << 24 | ((__uint32_t)(((((sc)->features & 0x00200000) ? ((__uint32_t)((table->addr))) : (__uint32_t)(__builtin_constant_p((table->addr)) ? (__uint32_t)(((__uint32_t)((table->addr)) & 0xff) << 24 | ((__uint32_t)((table->addr)) & 0xff00) << 8 | ((__uint32_t)((table->addr)) & 0xff0000) >> 8 | ((__uint32_t)((table->addr)) & 0xff000000) >> 24) : __swap32md((table->addr)))) + (((sc)->features & 0x00200000) ? ((__uint32_t)((table->count))) : (__uint32_t)(__builtin_constant_p((table->count)) ? (__uint32_t)(((__uint32_t)((table->count)) & 0xff) << 24 | ((__uint32_t)((table->count)) & 0xff00) << 8 | ((__uint32_t)((table->count)) & 0xff0000) >> 8 | ((__uint32_t)((table->count)) & 0xff000000) >> 24) : __swap32md((table->count)))) - siop_cmd->resid)) & 0xff00) << 8 | ((__uint32_t)(((((sc)->features & 0x00200000) ? ((__uint32_t)((table->addr))) : (__uint32_t)(__builtin_constant_p((table->addr)) ? (__uint32_t)(((__uint32_t)((table->addr)) & 0xff) << 24 | ((__uint32_t)((table->addr)) & 0xff00) << 8 | ((__uint32_t)((table->addr)) & 0xff0000) >> 8 | ((__uint32_t)((table->addr)) & 0xff000000) >> 24) : __swap32md((table->addr)))) + (((sc)->features & 0x00200000) ? ((__uint32_t)((table->count))) : (__uint32_t)(__builtin_constant_p((table->count)) ? (__uint32_t)(((__uint32_t)((table->count)) & 0xff) << 24 | ((__uint32_t)((table->count)) & 0xff00) << 8 | ((__uint32_t)((table->count)) & 0xff0000) >> 8 | ((__uint32_t)((table->count)) & 0xff000000) >> 24) : __swap32md((table->count)))) - siop_cmd->resid)) & 0xff0000) >> 8 | ((__uint32_t)(((((sc)->features & 0x00200000) ? ((__uint32_t)((table->addr))) : (__uint32_t)(__builtin_constant_p((table->addr)) ? (__uint32_t)(((__uint32_t)((table->addr)) & 0xff) << 24 | ((__uint32_t)((table->addr)) & 0xff00) << 8 | ((__uint32_t)((table->addr)) & 0xff0000) >> 8 | ((__uint32_t)((table->addr)) & 0xff000000) >> 24) : __swap32md((table->addr)))) + (((sc)->features & 0x00200000) ? ((__uint32_t)((table->count))) : (__uint32_t)(__builtin_constant_p((table->count)) ? (__uint32_t)(((__uint32_t)((table->count)) & 0xff) << 24 | ((__uint32_t)((table->count)) & 0xff00) << 8 | ((__uint32_t)((table->count)) & 0xff0000) >> 8 | ((__uint32_t)((table->count)) & 0xff000000) >> 24) : __swap32md((table->count)))) - siop_cmd->resid)) & 0xff000000) >> 24) : __swap32md(((((sc)->features & 0x00200000) ? ((__uint32_t)((table->addr))) : (__uint32_t)(__builtin_constant_p((table->addr)) ? (__uint32_t)(((__uint32_t)((table->addr)) & 0xff) << 24 | ((__uint32_t)((table->addr)) & 0xff00) << 8 | ((__uint32_t)((table->addr)) & 0xff0000) >> 8 | ((__uint32_t)((table->addr)) & 0xff000000) >> 24) : __swap32md((table->addr)))) + (((sc)->features & 0x00200000) ? ((__uint32_t)((table->count))) : (__uint32_t)(__builtin_constant_p((table->count)) ? (__uint32_t)(((__uint32_t)((table->count)) & 0xff) << 24 | ((__uint32_t)((table->count)) & 0xff00) << 8 | ((__uint32_t)((table->count)) & 0xff0000) >> 8 | ((__uint32_t)((table->count)) & 0xff000000) >> 24) : __swap32md((table->count)))) - siop_cmd->resid))));
  table->count = (((sc)->features & 0x00200000) ? ((__uint32_t)((siop_cmd->resid))) : (__uint32_t)(__builtin_constant_p((siop_cmd->resid)) ? (__uint32_t)(((__uint32_t)((siop_cmd->resid)) & 0xff) << 24 | ((__uint32_t)((siop_cmd->resid)) & 0xff00) << 8 | ((__uint32_t)((siop_cmd->resid)) & 0xff0000) >> 8 | ((__uint32_t)((siop_cmd->resid)) & 0xff000000) >> 24) : __swap32md((siop_cmd->resid))));
 }
 __builtin_bcopy((&siop_cmd->siop_tables->data[offset]), (&siop_cmd->siop_tables->data[0]), ((17 - offset) * sizeof(scr_table_t)));
}
void
siop_update_resid(siop_cmd, offset)
 struct siop_common_cmd *siop_cmd;
 int offset;
{
 struct siop_common_softc *sc = siop_cmd->siop_sc;
 scr_table_t *table;
 int i;
 if ((siop_cmd->xs->flags & (0x01000 | 0x00800))
     == 0)
     return;
 for (i = 0; i < offset; i++)
  siop_cmd->xs->resid -=
      (((sc)->features & 0x00200000) ? ((__uint32_t)((siop_cmd->siop_tables->data[i].count))) : (__uint32_t)(__builtin_constant_p((siop_cmd->siop_tables->data[i].count)) ? (__uint32_t)(((__uint32_t)((siop_cmd->siop_tables->data[i].count)) & 0xff) << 24 | ((__uint32_t)((siop_cmd->siop_tables->data[i].count)) & 0xff00) << 8 | ((__uint32_t)((siop_cmd->siop_tables->data[i].count)) & 0xff0000) >> 8 | ((__uint32_t)((siop_cmd->siop_tables->data[i].count)) & 0xff000000) >> 24) : __swap32md((siop_cmd->siop_tables->data[i].count))));
 if (siop_cmd->flags & 0x0004) {
  table = &siop_cmd->siop_tables->data[offset];
  siop_cmd->xs->resid -=
      (((sc)->features & 0x00200000) ? ((__uint32_t)((table->count))) : (__uint32_t)(__builtin_constant_p((table->count)) ? (__uint32_t)(((__uint32_t)((table->count)) & 0xff) << 24 | ((__uint32_t)((table->count)) & 0xff00) << 8 | ((__uint32_t)((table->count)) & 0xff0000) >> 8 | ((__uint32_t)((table->count)) & 0xff000000) >> 24) : __swap32md((table->count)))) - siop_cmd->resid;
 }
}
int
siop_iwr(siop_cmd)
 struct siop_common_cmd *siop_cmd;
{
 int offset;
 scr_table_t *table;
 struct siop_common_softc *sc = siop_cmd->siop_sc;
 if ((siop_cmd->siop_target->flags & 0x10) == 0) {
  siop_cmd->siop_tables->t_msgout.count = (((sc)->features & 0x00200000) ? ((__uint32_t)((1))) : (__uint32_t)(__builtin_constant_p((1)) ? (__uint32_t)(((__uint32_t)((1)) & 0xff) << 24 | ((__uint32_t)((1)) & 0xff00) << 8 | ((__uint32_t)((1)) & 0xff0000) >> 8 | ((__uint32_t)((1)) & 0xff000000) >> 24) : __swap32md((1))));
  siop_cmd->siop_tables->msg_out[0] = 0x07;
  return 0x1;
 }
 offset = bus_space_read_1(sc->sc_rt, sc->sc_rh, 0x34 + 1);
 if ((siop_cmd->flags & 0x0004) == 0)
  offset--;
 table = &siop_cmd->siop_tables->data[offset];
 if ((siop_cmd->flags & 0x0004) == 0) {
  if ((((sc)->features & 0x00200000) ? ((__uint32_t)((table->count))) : (__uint32_t)(__builtin_constant_p((table->count)) ? (__uint32_t)(((__uint32_t)((table->count)) & 0xff) << 24 | ((__uint32_t)((table->count)) & 0xff00) << 8 | ((__uint32_t)((table->count)) & 0xff0000) >> 8 | ((__uint32_t)((table->count)) & 0xff000000) >> 24) : __swap32md((table->count)))) & 1) {
   return 0x2;
  } else {
    siop_cmd->flags |= 0x0004;
    siop_cmd->resid = 1;
    bus_space_write_1(sc->sc_rt, sc->sc_rh,
        0x34 + 1, offset);
    return 0x2;
  }
 } else {
  siop_cmd->resid--;
  return 0x2;
 }
}
void
siop_clearfifo(sc)
 struct siop_common_softc *sc;
{
 int timeout = 0;
 int ctest3 = bus_space_read_1(sc->sc_rt, sc->sc_rh, 0x1B);
 bus_space_write_1(sc->sc_rt, sc->sc_rh, 0x1B,
     ctest3 | 0x04);
 while ((bus_space_read_1(sc->sc_rt, sc->sc_rh, 0x1B) &
     0x04) != 0) {
  delay(1);
  if (++timeout > 1000) {
   printf("clear fifo failed\n");
   bus_space_write_1(sc->sc_rt, sc->sc_rh, 0x1B,
       bus_space_read_1(sc->sc_rt, sc->sc_rh,
       0x1B) & ~0x04);
   return;
  }
 }
}
int
siop_modechange(sc)
 struct siop_common_softc *sc;
{
 int retry;
 int sist0, sist1, stest2;
 for (retry = 0; retry < 5; retry++) {
  delay(100000);
  sist0 = bus_space_read_1(sc->sc_rt, sc->sc_rh, 0x42);
  sist1 = bus_space_read_1(sc->sc_rt, sc->sc_rh, 0x43);
  if (sist1 & 0x10)
   continue;
  sc->mode = bus_space_read_1(sc->sc_rt, sc->sc_rh, 0x52) &
      0xc0;
  stest2 = bus_space_read_1(sc->sc_rt, sc->sc_rh, 0x4E);
  switch(sc->mode) {
  case 0x40:
   printf("%s: switching to differential mode\n",
       sc->sc_dev.dv_xname);
   bus_space_write_1(sc->sc_rt, sc->sc_rh, 0x4E,
       stest2 | 0x20);
   break;
  case 0x80:
   printf("%s: switching to single-ended mode\n",
       sc->sc_dev.dv_xname);
   bus_space_write_1(sc->sc_rt, sc->sc_rh, 0x4E,
       stest2 & ~0x20);
   break;
  case 0xc0:
   printf("%s: switching to LVD mode\n",
       sc->sc_dev.dv_xname);
   bus_space_write_1(sc->sc_rt, sc->sc_rh, 0x4E,
       stest2 & ~0x20);
   break;
  default:
   printf("%s: invalid SCSI mode 0x%x\n",
       sc->sc_dev.dv_xname, sc->mode);
   return 0;
  }
  return 1;
 }
 printf("%s: timeout waiting for DIFFSENSE to stabilise\n",
     sc->sc_dev.dv_xname);
 return 0;
}
void
siop_resetbus(sc)
 struct siop_common_softc *sc;
{
 int scntl1;
 scntl1 = bus_space_read_1(sc->sc_rt, sc->sc_rh, 0x01);
 bus_space_write_1(sc->sc_rt, sc->sc_rh, 0x01,
     scntl1 | 0x08);
 delay(100);
 bus_space_write_1(sc->sc_rt, sc->sc_rh, 0x01, scntl1);
}
void
siop_update_xfer_mode(sc, target)
        struct siop_common_softc *sc;
        int target;
{
 struct siop_common_target *siop_target;
 siop_target = sc->targets[target];
 printf("%s: target %d now using %s%s%d bit ",
            sc->sc_dev.dv_xname, target,
     (siop_target->flags & 0x04) ? "tagged " : "",
     (siop_target->flags & 0x20) ? "DT " : "",
     (siop_target->flags & 0x10) ? 16 : 8);
 if (siop_target->offset == 0)
  printf("async ");
 else {
  switch (siop_target->period) {
  case 9:
   printf("80.0");
   break;
  case 10:
   printf("40.0");
   break;
  case 12:
   printf("20.0");
   break;
  case 18:
   printf("13.3");
   break;
  case 25:
   printf("10.0");
   break;
  case 37:
   printf("6.67");
   break;
  case 50:
   printf("5.0");
   break;
  case 75:
   printf("3.33");
   break;
  default:
   printf("??");
   break;
  }
  printf(" MHz %d REQ/ACK offset ", siop_target->offset);
 }
 printf("xfers\n");
 if ((sc->features & 0x00080000) &&
     (siop_target->flags & 0x10) == 0)
  siop_target->flags &= ~0x04;
}
