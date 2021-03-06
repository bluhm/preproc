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
typedef u_int16_t keysym_t;
typedef u_int32_t kbd_t;
struct wscons_keymap {
 keysym_t command;
 keysym_t group1[2];
 keysym_t group2[2];
};
struct wscons_keydesc {
 kbd_t name;
 kbd_t base;
 int map_size;
 const keysym_t *map;
};
struct wskbd_mapdata {
 const struct wscons_keydesc *keydesc;
 kbd_t layout;
};
void wskbd_get_mapentry(const struct wskbd_mapdata *, int,
                                struct wscons_keymap *);
void wskbd_init_keymap(int, struct wscons_keymap **, int *);
int wskbd_load_keymap(const struct wskbd_mapdata *, kbd_t,
                               struct wscons_keymap **, int *);
keysym_t wskbd_compose_value(keysym_t *);
struct pcisel {
 u_int8_t pc_bus;
 u_int8_t pc_dev;
 u_int8_t pc_func;
};
struct pci_io {
 struct pcisel pi_sel;
 int pi_reg;
 int pi_width;
 u_int32_t pi_data;
};
struct pci_rom {
 struct pcisel pr_sel;
 int pr_romlen;
 char *pr_rom;
};
struct pci_vga {
 struct pcisel pv_sel;
 int pv_lock;
 int pv_decode;
};
struct wscons_event {
 u_int type;
 int value;
 struct timespec time;
};
struct wskbd_bell_data {
 u_int which;
 u_int pitch;
 u_int period;
 u_int volume;
};
struct wskbd_keyrepeat_data {
 u_int which;
 u_int del1;
 u_int delN;
};
struct wskbd_map_data {
 u_int maplen;
 struct wscons_keymap *map;
};
struct wskbd_backlight {
 unsigned int min, max, curval;
};
struct wskbd_encoding_data {
 int nencodings;
 kbd_t *encodings;
};
struct wsmouse_calibcoords {
 int minx, miny;
 int maxx, maxy;
 int swapxy;
 int resx, resy;
 int samplelen;
 struct wsmouse_calibcoord {
  int rawx, rawy;
  int x, y;
 } samples[16];
};
enum wsmousecfg {
 WSMOUSECFG_DX_SCALE = 0,
 WSMOUSECFG_DY_SCALE,
 WSMOUSECFG_PRESSURE_LO,
 WSMOUSECFG_PRESSURE_HI,
 WSMOUSECFG_TRKMAXDIST,
 WSMOUSECFG_SWAPXY,
 WSMOUSECFG_X_INV,
 WSMOUSECFG_Y_INV,
 WSMOUSECFG_DX_MAX = 32,
 WSMOUSECFG_DY_MAX,
 WSMOUSECFG_X_HYSTERESIS,
 WSMOUSECFG_Y_HYSTERESIS,
 WSMOUSECFG_DECELERATION,
 WSMOUSECFG_STRONG_HYSTERESIS,
 WSMOUSECFG_SMOOTHING,
 WSMOUSECFG_SOFTBUTTONS = 64,
 WSMOUSECFG_SOFTMBTN,
 WSMOUSECFG_TOPBUTTONS,
 WSMOUSECFG_TWOFINGERSCROLL,
 WSMOUSECFG_EDGESCROLL,
 WSMOUSECFG_HORIZSCROLL,
 WSMOUSECFG_SWAPSIDES,
 WSMOUSECFG_DISABLE,
 WSMOUSECFG_TAPPING,
 WSMOUSECFG_LEFT_EDGE = 128,
 WSMOUSECFG_RIGHT_EDGE,
 WSMOUSECFG_TOP_EDGE,
 WSMOUSECFG_BOTTOM_EDGE,
 WSMOUSECFG_CENTERWIDTH,
 WSMOUSECFG_HORIZSCROLLDIST,
 WSMOUSECFG_VERTSCROLLDIST,
 WSMOUSECFG_F2WIDTH,
 WSMOUSECFG_F2PRESSURE,
 WSMOUSECFG_TAP_MAXTIME,
 WSMOUSECFG_TAP_CLICKTIME,
 WSMOUSECFG_TAP_LOCKTIME,
 WSMOUSECFG_LOG_INPUT = 256,
 WSMOUSECFG_LOG_EVENTS,
};
struct wsmouse_param {
 enum wsmousecfg key;
 int value;
};
struct wsmouse_parameters {
 struct wsmouse_param *params;
 u_int nparams;
};
struct wsdisplay_fbinfo {
 u_int height;
 u_int width;
 u_int depth;
 u_int cmsize;
};
struct wsdisplay_cmap {
 u_int index;
 u_int count;
 u_char *red;
 u_char *green;
 u_char *blue;
};
struct wsdisplay_curpos {
 u_int x, y;
};
struct wsdisplay_cursor {
 u_int which;
 u_int enable;
 struct wsdisplay_curpos pos;
 struct wsdisplay_curpos hot;
 struct wsdisplay_cmap cmap;
 struct wsdisplay_curpos size;
 u_char *image;
 u_char *mask;
};
struct wsdisplay_font {
 char name[32];
 int index;
 int firstchar, numchars;
 int encoding;
 u_int fontwidth, fontheight, stride;
 int bitorder, byteorder;
 void *cookie;
 void *data;
};
struct wsdisplay_burner {
 u_int off;
 u_int on;
 u_int flags;
};
struct wsdisplay_addscreendata {
 int idx;
 char screentype[16];
 char emul[16];
};
struct wsdisplay_delscreendata {
 int idx;
 int flags;
};
struct wsdisplay_param {
        int param;
        int min, max, curval;
        int reserved[4];
};
struct wsdisplay_gfx_mode {
 int width;
 int height;
 int depth;
};
struct wsdisplay_screentype {
 int idx;
 int nidx;
 char name[16];
 int ncols, nrows;
 int fontwidth, fontheight;
};
struct wsdisplay_emultype {
 int idx;
 char name[16];
};
struct wsmux_device {
 int type;
 int idx;
};
struct wsmux_device_list {
 int ndevices;
 struct wsmux_device devices[32];
};
struct wskbd_accessops {
 int (*enable)(void *, int);
 void (*set_leds)(void *, int);
 int (*ioctl)(void *v, u_long cmd, caddr_t data, int flag,
         struct proc *p);
};
struct wskbd_consops {
 void (*getc)(void *, u_int *, int *);
 void (*pollc)(void *, int);
 void (*bell)(void *, u_int, u_int, u_int);
 void (*debugger)(void *);
};
struct wskbddev_attach_args {
 int console;
 const struct wskbd_mapdata *keymap;
 const struct wskbd_accessops *accessops;
 void *accesscookie;
};
void wskbd_cnattach(const struct wskbd_consops *, void *,
       const struct wskbd_mapdata *);
void wskbd_cndetach(void);
int wskbddevprint(void *, const char *);
void wskbd_input(struct device *kbddev, u_int type, int value);
void wskbd_rawinput(struct device *, u_char *, int);
int wskbd_cngetc(dev_t dev);
void wskbd_cnpollc(dev_t dev, int poll);
void wskbd_cnbell(dev_t, u_int, u_int, u_int);
struct sunkbd_softc {
 struct device sc_dev;
 int (*sc_sendcmd)(void *, u_int8_t *, u_int);
 void (*sc_decode)(u_int8_t, u_int *, int *);
 int sc_leds;
 int sc_id;
 u_int8_t sc_kbdstate;
 int sc_click;
 int sc_layout;
 int sc_bellactive, sc_belltimeout;
 struct timeout sc_bellto;
 struct device *sc_wskbddev;
 int sc_rawkbd;
};
extern struct wskbd_accessops sunkbd_accessops;
void sunkbd_attach(struct sunkbd_softc *, struct wskbddev_attach_args *);
void sunkbd_bellstop(void *);
void sunkbd_decode(u_int8_t, u_int *, int *);
void sunkbd_input(struct sunkbd_softc *, u_int8_t *, u_int);
void sunkbd_raw(struct sunkbd_softc *, u_int8_t);
int sunkbd_setclick(struct sunkbd_softc *, int);
extern const struct wscons_keydesc sunkbd_keydesctab[];
extern struct wskbd_mapdata sunkbd_keymapdata;
extern const struct wscons_keydesc sunkbd5_keydesctab[];
extern struct wskbd_mapdata sunkbd5_keymapdata;
extern const int sunkbd_layouts[0x062];
extern const u_int8_t sunkbd_rawmap[0x80];
const u_int8_t sunkbd_rawmap[0x80] = {
 0x00,
 0x89,
 0x86,
 0x8a,
 0x87,
 0x3b,
 0x3c,
 0x44,
 0x3d,
 0x57,
 0x3e,
 0x58,
 0x3f,
 0xb8,
 0x40,
 0x00,
 0x41,
 0x42,
 0x43,
 0x38,
 0xc8,
 0x6a,
 0x67,
 0x46,
 0xcb,
 0x8b,
 0x8c,
 0xd0,
 0xcd,
 0x01,
 0x02,
 0x03,
 0x04,
 0x05,
 0x06,
 0x07,
 0x08,
 0x09,
 0x0a,
 0x0b,
 0x0c,
 0x0d,
 0x29,
 0x0e,
 0xd2,
 0x76,
 0xb5,
 0x37,
 0x00,
 0x8d,
 0x53,
 0x8e,
 0xc7,
 0x0f,
 0x10,
 0x11,
 0x12,
 0x13,
 0x14,
 0x15,
 0x16,
 0x17,
 0x18,
 0x19,
 0x1a,
 0x1b,
 0xd3,
 0x72,
 0x47,
 0x48,
 0x49,
 0x4a,
 0x8f,
 0x90,
 0xcf,
 0x00,
 0x1d,
 0x1e,
 0x1f,
 0x20,
 0x21,
 0x22,
 0x23,
 0x24,
 0x25,
 0x26,
 0x27,
 0x28,
 0x2b,
 0x1c,
 0x9c,
 0x4b,
 0x4c,
 0x4d,
 0x52,
 0x91,
 0xc9,
 0x92,
 0x45,
 0x2a,
 0x2c,
 0x2d,
 0x2e,
 0x2f,
 0x30,
 0x31,
 0x32,
 0x33,
 0x34,
 0x35,
 0x36,
 0x00,
 0x4f,
 0x50,
 0x51,
 0x00,
 0x00,
 0x00,
 0x88,
 0x3a,
 0x73,
 0x39,
 0x74,
 0xd1,
 0x00,
 0x4e,
 0x00,
 0x85
};
const keysym_t sunkbd_keydesc_us[] = {
    ((0x01) | 0xe000), 0xf10d,
    ((0x02) | 0xe000), 0xf427,
    ((0x03) | 0xe000), 0xf38e,
    ((0x04) | 0xe000), 0xf426,
    ((0x05) | 0xe000), 0xf300,
    ((0x06) | 0xe000), 0xf301,
    ((0x07) | 0xe000), 0xf309,
    ((0x08) | 0xe000), 0xf302,
    ((0x09) | 0xe000), 0xf30a,
    ((0x0a) | 0xe000), 0xf303,
    ((0x0b) | 0xe000), 0xf30b,
    ((0x0c) | 0xe000), 0xf304,
    ((0x0d) | 0xe000), 0xf108,
    ((0x0e) | 0xe000), 0xf305,
    ((0x10) | 0xe000), 0xf306,
    ((0x11) | 0xe000), 0xf307,
    ((0x12) | 0xe000), 0xf308,
    ((0x13) | 0xe000), 0xf107,
    ((0x14) | 0xe000), 0xf384,
    ((0x15) | 0xe000), 0xf3c1,
    ((0x16) | 0xe000), 0xf3c2,
    ((0x17) | 0xe000), 0xf10c,
    ((0x18) | 0xe000), 0xf386,
    ((0x19) | 0xe000), 0xf38f,
    ((0x1a) | 0xe000), 0xf390,
    ((0x1b) | 0xe000), 0xf385,
    ((0x1c) | 0xe000), 0xf387,
    ((0x1d) | 0xe000), 0x1b,
    ((0x1e) | 0xe000), 0x31, 0x21,
    ((0x1f) | 0xe000), 0x32, 0x40,
    ((0x20) | 0xe000), 0x33, 0x23,
    ((0x21) | 0xe000), 0x34, 0x24,
    ((0x22) | 0xe000), 0x35, 0x25,
    ((0x23) | 0xe000), 0x36, 0x5e,
    ((0x24) | 0xe000), 0x37, 0x26,
    ((0x25) | 0xe000), 0x38, 0x2a,
    ((0x26) | 0xe000), 0x39, 0x28,
    ((0x27) | 0xe000), 0x30, 0x29,
    ((0x28) | 0xe000), 0x2d, 0x5f,
    ((0x29) | 0xe000), 0x3d, 0x2b,
    ((0x2a) | 0xe000), 0x60, 0x7e,
    ((0x2b) | 0xe000), 0x7f,
    ((0x2c) | 0xe000), 0xf389,
    ((0x2d) | 0xe000), 0xf23d,
    ((0x2e) | 0xe000), 0xf22f,
    ((0x2f) | 0xe000), 0xf22a,
    ((0x31) | 0xe000), 0xf391,
    ((0x32) | 0xe000), 0xf29f, 0xf22e,
    ((0x33) | 0xe000), 0xf392,
    ((0x34) | 0xe000), 0xf381,
    ((0x35) | 0xe000), 0x09,
    ((0x36) | 0xe000), 0x71,
    ((0x37) | 0xe000), 0x77,
    ((0x38) | 0xe000), 0x65,
    ((0x39) | 0xe000), 0x72,
    ((0x3a) | 0xe000), 0x74,
    ((0x3b) | 0xe000), 0x79,
    ((0x3c) | 0xe000), 0x75,
    ((0x3d) | 0xe000), 0x69,
    ((0x3e) | 0xe000), 0x6f,
    ((0x3f) | 0xe000), 0x70,
    ((0x40) | 0xe000), 0x5b, 0x7b,
    ((0x41) | 0xe000), 0x5d,0x7d,
    ((0x42) | 0xe000), 0x7f,
    ((0x43) | 0xe000), 0xf109,
    ((0x44) | 0xe000), 0xf295, 0xf237,
    ((0x45) | 0xe000), 0xf297, 0xf238,
    ((0x46) | 0xe000), 0xf29a, 0xf239,
    ((0x47) | 0xe000), 0xf22d,
    ((0x48) | 0xe000), 0xf393,
    ((0x49) | 0xe000), 0xf394,
    ((0x4a) | 0xe000), 0xf388,
    ((0x4c) | 0xe000), 0xf103,
    ((0x4d) | 0xe000), 0xf420, 0x61,
    ((0x4e) | 0xe000), 0x73,
    ((0x4f) | 0xe000), 0x64,
    ((0x50) | 0xe000), 0x66,
    ((0x51) | 0xe000), 0x67,
    ((0x52) | 0xe000), 0x68,
    ((0x53) | 0xe000), 0x6a,
    ((0x54) | 0xe000), 0x6b,
    ((0x55) | 0xe000), 0x6c,
    ((0x56) | 0xe000), 0x3b, 0x3a,
    ((0x57) | 0xe000), 0x27, 0x22,
    ((0x58) | 0xe000), 0x5c, 0x7c,
    ((0x59) | 0xe000), 0x0d,
    ((0x5a) | 0xe000), 0xf20d,
    ((0x5b) | 0xe000), 0xf296, 0xf234,
    ((0x5c) | 0xe000), 0xf29d, 0xf235,
    ((0x5d) | 0xe000), 0xf298, 0xf236,
    ((0x5e) | 0xe000), 0xf29e, 0xf230,
    ((0x5f) | 0xe000), 0xf38c,
    ((0x60) | 0xe000), 0xf382,
    ((0x61) | 0xe000), 0xf395,
    ((0x62) | 0xe000), 0xf10b,
    ((0x63) | 0xe000), 0xf101,
    ((0x64) | 0xe000), 0x7a,
    ((0x65) | 0xe000), 0x78,
    ((0x66) | 0xe000), 0x63,
    ((0x67) | 0xe000), 0x76,
    ((0x68) | 0xe000), 0x62,
    ((0x69) | 0xe000), 0x6e,
    ((0x6a) | 0xe000), 0x6d,
    ((0x6b) | 0xe000), 0x2c, 0x3c,
    ((0x6c) | 0xe000), 0x2e, 0x3e,
    ((0x6d) | 0xe000), 0x2f, 0x3f,
    ((0x6e) | 0xe000), 0xf102,
    ((0x6f) | 0xe000), 0x0a,
    ((0x70) | 0xe000), 0xf29c, 0xf231,
    ((0x71) | 0xe000), 0xf299, 0xf232,
    ((0x72) | 0xe000), 0xf29b, 0xf233,
    ((0x76) | 0xe000), 0xf38a,
    ((0x77) | 0xe000), 0xf105,
    ((0x78) | 0xe000), 0xf110,
    ((0x79) | 0xe000), 0x20,
    ((0x7a) | 0xe000), 0xf111,
    ((0x7b) | 0xe000), 0xf383,
    ((0x7d) | 0xe000), 0xf22b,
    ((0x7f) | 0xe000), 0xf3d1,
};
const keysym_t sunkbd_keydesc_befr[] = {
    ((0x0d) | 0xe000), 0xf105,
    ((0x0f) | 0xe000), 0x5d,0x7d, 0xbb,
    ((0x1e) | 0xe000), 0x26, 0x31,
    ((0x1f) | 0xe000), 0xe9, 0x32, 0xb2,
    ((0x20) | 0xe000), 0x22, 0x33, 0xb3,
    ((0x21) | 0xe000), 0x27, 0x34,
    ((0x22) | 0xe000), 0x28, 0x35,
    ((0x23) | 0xe000), 0xa7, 0x36,
    ((0x24) | 0xe000), 0xe8, 0x37,
    ((0x25) | 0xe000), 0x21, 0x38, 0xa3,
    ((0x26) | 0xe000), 0xe7, 0x39, 0x5c,
    ((0x27) | 0xe000), 0xe0, 0x30,
    ((0x28) | 0xe000), 0x29, 0xb0, 0x7e,
    ((0x29) | 0xe000), 0x2d, 0x5f, 0x23,
    ((0x2a) | 0xe000), 0x2a, 0x7c, 0xa4,
    ((0x36) | 0xe000), 0x61,
    ((0x37) | 0xe000), 0x7a,
    ((0x40) | 0xe000), 0x0302,0x0308,
    ((0x41) | 0xe000), 0x60, 0x24, 0x40,
    ((0x4d) | 0xe000), 0xf420, 0x71,
    ((0x56) | 0xe000), 0x6d, 0x4d, 0xb5,
    ((0x57) | 0xe000), 0xf9, 0x25,
    ((0x58) | 0xe000), 0x5b, 0x7b, 0xab,
    ((0x64) | 0xe000), 0x77,
    ((0x6a) | 0xe000), 0x2c, 0x3f,
    ((0x6b) | 0xe000), 0x3b, 0x2e,
    ((0x6c) | 0xe000), 0x3a, 0x2f,
    ((0x6d) | 0xe000), 0x3d, 0x2b,
    ((0x77) | 0xe000), 0xf10a,
    ((0x7c) | 0xe000), 0x3c, 0x3e,
};
const keysym_t sunkbd5_keydesc_fr[] = {
    ((0x0d) | 0xe000), 0xf10a,
    ((0x1e) | 0xe000), 0x26, 0x31,
    ((0x1f) | 0xe000), 0xe9, 0x32, 0x7e,
    ((0x20) | 0xe000), 0x22, 0x33, 0x23,
    ((0x21) | 0xe000), 0x27, 0x34, 0x7b,
    ((0x22) | 0xe000), 0x28, 0x35, 0x5b,
    ((0x23) | 0xe000), 0x2d, 0x36, 0x7c,
    ((0x24) | 0xe000), 0xe8, 0x37, 0x60,
    ((0x25) | 0xe000), 0x5f, 0x38, 0x5c,
    ((0x26) | 0xe000), 0xe7, 0x39, 0x5e,
    ((0x27) | 0xe000), 0xe0, 0x30, 0x40,
    ((0x28) | 0xe000), 0x29, 0xb0, 0x5d,
    ((0x29) | 0xe000), 0x3d, 0x2b, 0x7d,
    ((0x2a) | 0xe000), 0xb2,
    ((0x36) | 0xe000), 0x61,
    ((0x37) | 0xe000), 0x7a,
    ((0x40) | 0xe000), 0x0302,0x0308,
    ((0x41) | 0xe000), 0x24, 0xa3, 0xa4,
    ((0x4d) | 0xe000), 0xf420, 0x71,
    ((0x56) | 0xe000), 0x6d,
    ((0x57) | 0xe000), 0xf9, 0x25,
    ((0x58) | 0xe000), 0x2a, 0xb5,
    ((0x64) | 0xe000), 0x77,
    ((0x6a) | 0xe000), 0x2c, 0x3f,
    ((0x6b) | 0xe000), 0x3b, 0x2e,
    ((0x6c) | 0xe000), 0x3a, 0x2f,
    ((0x6d) | 0xe000), 0x21, 0xa7,
    ((0x7c) | 0xe000), 0x3c, 0x3e,
};
const keysym_t sunkbd_keydesc_dk[] = {
    ((0x0d) | 0xe000), 0xf109,
    ((0x0f) | 0xe000), 0x7e, 0x5e,
    ((0x1f) | 0xe000), 0x32, 0x22, 0x40,
    ((0x20) | 0xe000), 0x33, 0x23, 0xa3,
    ((0x21) | 0xe000), 0x34, 0xa4, 0x24,
    ((0x23) | 0xe000), 0x36, 0x26,
    ((0x24) | 0xe000), 0x37, 0x2f, 0x7b,
    ((0x25) | 0xe000), 0x38, 0x28, 0x5b,
    ((0x26) | 0xe000), 0x39, 0x29, 0x5d,
    ((0x27) | 0xe000), 0x30, 0x3d, 0x7d,
    ((0x28) | 0xe000), 0x2b, 0x3f,
    ((0x29) | 0xe000), 0x0301, 0x0300, 0x7c,
    ((0x2a) | 0xe000), 0x27, 0x2a, 0x60,
    ((0x40) | 0xe000), 0xe5,
    ((0x41) | 0xe000), 0x0308,0x0302,0x0303,
    ((0x43) | 0xe000), 0xf10a,
    ((0x4c) | 0xe000), 0xf105,
    ((0x56) | 0xe000), 0xe6,
    ((0x57) | 0xe000), 0xf8,
    ((0x58) | 0xe000), 0xbd, 0xa7,
    ((0x6b) | 0xe000), 0x2c, 0x3b,
    ((0x6c) | 0xe000), 0x2e, 0x3a,
    ((0x6d) | 0xe000), 0x2d, 0x5f,
    ((0x77) | 0xe000), 0xf103,
    ((0x7c) | 0xe000), 0x3c, 0x3e, 0x5c,
};
const keysym_t sunkbd5_keydesc_dk[] = {
    ((0x0d) | 0xe000), 0xf10a,
    ((0x1f) | 0xe000), 0x32, 0x22, 0x40,
    ((0x20) | 0xe000), 0x33, 0x23, 0xa3,
    ((0x21) | 0xe000), 0x34, 0xa4, 0x24,
    ((0x22) | 0xe000), 0x35, 0x25, 0x7e,
    ((0x23) | 0xe000), 0x36, 0x26, 0x5e,
    ((0x24) | 0xe000), 0x37, 0x2f, 0x7b,
    ((0x25) | 0xe000), 0x38, 0x28, 0x5b,
    ((0x26) | 0xe000), 0x39, 0x29, 0x5d,
    ((0x27) | 0xe000), 0x30, 0x3d, 0x7d,
    ((0x28) | 0xe000), 0x2b, 0x3f,
    ((0x29) | 0xe000), 0x0301, 0x0300, 0x7c,
    ((0x2a) | 0xe000), 0xbd, 0x2a, 0x60,
    ((0x40) | 0xe000), 0xe5,
    ((0x41) | 0xe000), 0x0308,0x0302,0x0303,
    ((0x56) | 0xe000), 0xe6,
    ((0x57) | 0xe000), 0xf8,
    ((0x58) | 0xe000), 0x5c, 0x2a, 0x60,
    ((0x6b) | 0xe000), 0x2c, 0x3b,
    ((0x6c) | 0xe000), 0x2e, 0x3a,
    ((0x6d) | 0xe000), 0x2d, 0x5f,
    ((0x7c) | 0xe000), 0x3c, 0x3e, 0x5c,
};
const keysym_t sunkbd_keydesc_de[] = {
    ((0x0d) | 0xe000), 0xf107,
    ((0x0f) | 0xe000), 0x5d,0x7d, 0xbb,
    ((0x13) | 0xe000), 0xf10a,
    ((0x1f) | 0xe000), 0x32, 0x22, 0xb2,
    ((0x20) | 0xe000), 0x33, 0xa7, 0xb3,
    ((0x23) | 0xe000), 0x36, 0x26,
    ((0x24) | 0xe000), 0x37, 0x2f, 0xb0,
    ((0x25) | 0xe000), 0x38, 0x28, 0x60,
    ((0x26) | 0xe000), 0x39, 0x29, 0x27,
    ((0x27) | 0xe000), 0x30, 0x3d, 0x7c,
    ((0x28) | 0xe000), 0xdf, 0x3f, 0x5c,
    ((0x29) | 0xe000), 0x0301, 0x0300,
    ((0x2a) | 0xe000), 0x23, 0x5e, 0x40,
    ((0x3b) | 0xe000), 0x7a,
    ((0x40) | 0xe000), 0xfc,
    ((0x41) | 0xe000), 0x2b, 0x2a, 0x7e,
    ((0x4c) | 0xe000), 0xf105,
    ((0x56) | 0xe000), 0xf6,
    ((0x57) | 0xe000), 0xe4,
    ((0x58) | 0xe000), 0x5b, 0x7b, 0xab,
    ((0x64) | 0xe000), 0x79,
    ((0x6a) | 0xe000), 0x6d, 0x4d, 0xb5,
    ((0x6b) | 0xe000), 0x2c, 0x3b,
    ((0x6c) | 0xe000), 0x2e, 0x3a,
    ((0x6d) | 0xe000), 0x2d, 0x5f,
    ((0x77) | 0xe000), 0xf103,
    ((0x7c) | 0xe000), 0x3c, 0x3e,
};
const keysym_t sunkbd5_keydesc_de[] = {
    ((0x0d) | 0xe000), 0xf10a,
    ((0x1f) | 0xe000), 0x32, 0x22, 0xb2,
    ((0x20) | 0xe000), 0x33, 0xa7, 0xb3,
    ((0x23) | 0xe000), 0x36, 0x26,
    ((0x24) | 0xe000), 0x37, 0x2f, 0x7b,
    ((0x25) | 0xe000), 0x38, 0x28, 0x5b,
    ((0x26) | 0xe000), 0x39, 0x29, 0x5d,
    ((0x27) | 0xe000), 0x30, 0x3d, 0x7d,
    ((0x28) | 0xe000), 0xdf, 0x3f, 0x5c,
    ((0x29) | 0xe000), 0x0301, 0x0300,
    ((0x2a) | 0xe000), 0x5e, 0xb0,
    ((0x36) | 0xe000), 0x71, 0x51, 0x40,
    ((0x3b) | 0xe000), 0x7a,
    ((0x40) | 0xe000), 0xfc,
    ((0x41) | 0xe000), 0x2b, 0x2a, 0x7e,
    ((0x56) | 0xe000), 0xf6,
    ((0x57) | 0xe000), 0xe4,
    ((0x58) | 0xe000), 0x23, 0x27, 0x60,
    ((0x64) | 0xe000), 0x79,
    ((0x6a) | 0xe000), 0x6d, 0x4d, 0xb5,
    ((0x6b) | 0xe000), 0x2c, 0x3b,
    ((0x6c) | 0xe000), 0x2e, 0x3a,
    ((0x6d) | 0xe000), 0x2d, 0x5f,
    ((0x7c) | 0xe000), 0x3c, 0x3e, 0x7c,
};
const keysym_t sunkbd_keydesc_it[] = {
    ((0x0d) | 0xe000), 0xf10a,
    ((0x0f) | 0xe000), 0x5d,0x7d, 0xbb,
    ((0x1f) | 0xe000), 0x32, 0x22, 0xb2,
    ((0x20) | 0xe000), 0x33, 0xa3, 0xb3,
    ((0x23) | 0xe000), 0x36, 0x26, 0xac,
    ((0x24) | 0xe000), 0x37, 0x2f,
    ((0x25) | 0xe000), 0x38, 0x28,
    ((0x26) | 0xe000), 0x39, 0x29, 0x5c,
    ((0x27) | 0xe000), 0x30, 0x3d, 0x7c,
    ((0x28) | 0xe000), 0x27, 0x3f, 0x60,
    ((0x29) | 0xe000), 0xec, 0x5e,
    ((0x2a) | 0xe000), 0xf9, 0xa7,
    ((0x40) | 0xe000), 0xe8, 0xe9,
    ((0x41) | 0xe000), 0x2b, 0x2a, 0x7e,
    ((0x4c) | 0xe000), 0xf105,
    ((0x56) | 0xe000), 0xf2, 0xe7, 0x40,
    ((0x57) | 0xe000), 0xe0, 0xb0, 0x23,
    ((0x58) | 0xe000), 0x5b, 0x7b, 0xab,
    ((0x6b) | 0xe000), 0x2c, 0x3b,
    ((0x6c) | 0xe000), 0x2e, 0x3a,
    ((0x6d) | 0xe000), 0x2d, 0x5f,
    ((0x77) | 0xe000), 0xf103,
    ((0x7c) | 0xe000), 0x3c, 0x3e,
};
const keysym_t sunkbd5_keydesc_it[] = {
    ((0x0d) | 0xe000), 0xf10a,
    ((0x1f) | 0xe000), 0x32, 0x22,
    ((0x20) | 0xe000), 0x33, 0xa3,
    ((0x23) | 0xe000), 0x36, 0x26,
    ((0x24) | 0xe000), 0x37, 0x2f,
    ((0x25) | 0xe000), 0x38, 0x28, 0x7b,
    ((0x26) | 0xe000), 0x39, 0x29, 0x7d,
    ((0x27) | 0xe000), 0x30, 0x3d,
    ((0x28) | 0xe000), 0x27, 0x3f, 0x60,
    ((0x29) | 0xe000), 0xec, 0x5e,
    ((0x2a) | 0xe000), 0x5c, 0x7c,
    ((0x40) | 0xe000), 0xe8, 0xe9, 0x5b,
    ((0x41) | 0xe000), 0x2b, 0x2a, 0x5d,
    ((0x56) | 0xe000), 0xf2, 0xe7, 0x40,
    ((0x57) | 0xe000), 0xe0, 0xb0, 0x23,
    ((0x58) | 0xe000), 0xf9, 0xa7, 0x7e,
    ((0x6b) | 0xe000), 0x2c, 0x3b,
    ((0x6c) | 0xe000), 0x2e, 0x3a,
    ((0x6d) | 0xe000), 0x2d, 0x5f,
    ((0x7c) | 0xe000), 0x3c, 0x3e,
};
const keysym_t sunkbd_keydesc_nl[] = {
    ((0x0d) | 0xe000), 0xf105,
    ((0x0f) | 0xe000), 0x5c, 0x7c,
    ((0x1e) | 0xe000), 0x31, 0x21, 0xb9,
    ((0x1f) | 0xe000), 0x32, 0x22, 0xb2,
    ((0x20) | 0xe000), 0x33, 0x23, 0xb3,
    ((0x21) | 0xe000), 0x34, 0x24, 0xbc,
    ((0x22) | 0xe000), 0x35, 0x25, 0xbd,
    ((0x23) | 0xe000), 0x36, 0x26, 0xbe,
    ((0x24) | 0xe000), 0x37, 0x5f, 0xa3,
    ((0x25) | 0xe000), 0x38, 0x28, 0x7b,
    ((0x26) | 0xe000), 0x39, 0x29, 0x7d,
    ((0x27) | 0xe000), 0x30, 0x27, 0x60,
    ((0x28) | 0xe000), 0x2f, 0x3f,
    ((0x29) | 0xe000), 0xb0, 0x0303, 0x030a,
    ((0x2a) | 0xe000), 0x3c, 0x3e,
    ((0x40) | 0xe000), 0x0308,0x0302,
    ((0x41) | 0xe000), 0x2a, 0xa6, 0x7e,
    ((0x4e) | 0xe000), 0x73, 0x53, 0xdf,
    ((0x56) | 0xe000), 0x2b, 0xb1,
    ((0x57) | 0xe000), 0x0301, 0x0300,
    ((0x58) | 0xe000), 0x40, 0xa7, 0xac,
    ((0x64) | 0xe000), 0x7a, 0x5a, 0xab,
    ((0x65) | 0xe000), 0x78, 0x58, 0xbb,
    ((0x66) | 0xe000), 0x63, 0x43, 0xa2,
    ((0x6a) | 0xe000), 0x6d, 0x4d, 0xb5,
    ((0x6b) | 0xe000), 0x2c, 0x3b,
    ((0x6c) | 0xe000), 0x2e, 0x3a,
    ((0x6d) | 0xe000), 0x2d, 0x3d,
    ((0x77) | 0xe000), 0xf10a,
    ((0x7d) | 0xe000), 0x5d,0x5b,
};
const keysym_t sunkbd5_keydesc_nl[] = {
    ((0x0d) | 0xe000), 0xf10a,
    ((0x1e) | 0xe000), 0x31, 0x21, 0xb9,
    ((0x1f) | 0xe000), 0x32, 0x22, 0xb2,
    ((0x20) | 0xe000), 0x33, 0x23, 0xb3,
    ((0x21) | 0xe000), 0x34, 0x24, 0xbc,
    ((0x22) | 0xe000), 0x35, 0x25, 0xbd,
    ((0x23) | 0xe000), 0x36, 0x26, 0xbe,
    ((0x24) | 0xe000), 0x37, 0x5f, 0xa3,
    ((0x25) | 0xe000), 0x38, 0x28, 0x7b,
    ((0x26) | 0xe000), 0x39, 0x29, 0x7d,
    ((0x27) | 0xe000), 0x30, 0x27, 0x60,
    ((0x28) | 0xe000), 0x2f, 0x3f, 0x5c,
    ((0x29) | 0xe000), 0xb0, 0x0303, 0x030a,
    ((0x2a) | 0xe000), 0x40, 0xa7, 0xac,
    ((0x40) | 0xe000), 0x0308,0x0302,
    ((0x41) | 0xe000), 0x2a, 0x7c, 0x7e,
    ((0x4e) | 0xe000), 0x73, 0x53, 0xdf,
    ((0x56) | 0xe000), 0x2b, 0xb1,
    ((0x57) | 0xe000), 0x0301, 0x0300,
    ((0x58) | 0xe000), 0x3c, 0x3e, 0x5e,
    ((0x64) | 0xe000), 0x7a, 0x5a, 0xab,
    ((0x65) | 0xe000), 0x78, 0x58, 0xbb,
    ((0x66) | 0xe000), 0x63, 0x43, 0xa2,
    ((0x6a) | 0xe000), 0x6d, 0x4d, 0xb5,
    ((0x6b) | 0xe000), 0x2c, 0x3b,
    ((0x6c) | 0xe000), 0x2e, 0x3a, 0xad,
    ((0x6d) | 0xe000), 0x2d, 0x3d,
    ((0x7d) | 0xe000), 0x5d,0x5b, 0xa6,
};
const keysym_t sunkbd_keydesc_no[] = {
    ((0x0d) | 0xe000), 0xf10a,
    ((0x0f) | 0xe000), 0x7e, 0x5e,
    ((0x1f) | 0xe000), 0x32, 0x22, 0x40,
    ((0x20) | 0xe000), 0x33, 0x23, 0xa3,
    ((0x21) | 0xe000), 0x34, 0xa4, 0x24,
    ((0x23) | 0xe000), 0x36, 0x26,
    ((0x24) | 0xe000), 0x37, 0x2f, 0x7b,
    ((0x25) | 0xe000), 0x38, 0x28, 0x5b,
    ((0x26) | 0xe000), 0x39, 0x29, 0x5d,
    ((0x27) | 0xe000), 0x30, 0x3d, 0x7d,
    ((0x28) | 0xe000), 0x2b, 0x3f,
    ((0x29) | 0xe000), 0x5c, 0x0300, 0x0301,
    ((0x2a) | 0xe000), 0x27, 0x2a, 0x60,
    ((0x40) | 0xe000), 0xe5,
    ((0x41) | 0xe000), 0x0308,0x0302,0x0303,
    ((0x4c) | 0xe000), 0xf105,
    ((0x56) | 0xe000), 0xf8,
    ((0x57) | 0xe000), 0xe6,
    ((0x58) | 0xe000), 0x7c, 0xa7,
    ((0x6b) | 0xe000), 0x2c, 0x3b,
    ((0x6c) | 0xe000), 0x2e, 0x3a,
    ((0x6d) | 0xe000), 0x2d, 0x5f,
    ((0x77) | 0xe000), 0xf103,
    ((0x7d) | 0xe000), 0x3c, 0x3e,
};
const keysym_t sunkbd5_keydesc_no[] = {
    ((0x0d) | 0xe000), 0xf10a,
    ((0x1f) | 0xe000), 0x32, 0x22, 0x40,
    ((0x20) | 0xe000), 0x33, 0x23, 0xa3,
    ((0x21) | 0xe000), 0x34, 0xa4, 0x24,
    ((0x22) | 0xe000), 0x35, 0x25, 0x7e,
    ((0x23) | 0xe000), 0x36, 0x26, 0x5e,
    ((0x24) | 0xe000), 0x37, 0x2f, 0x7b,
    ((0x25) | 0xe000), 0x38, 0x28, 0x5b,
    ((0x26) | 0xe000), 0x39, 0x29, 0x5d,
    ((0x27) | 0xe000), 0x30, 0x3d, 0x7d,
    ((0x28) | 0xe000), 0x2b, 0x3f,
    ((0x29) | 0xe000), 0x5c, 0x0300, 0x0301,
    ((0x2a) | 0xe000), 0x7c, 0xa7,
    ((0x40) | 0xe000), 0xe5,
    ((0x41) | 0xe000), 0x0308,0x0302,0x0303,
    ((0x56) | 0xe000), 0xf8,
    ((0x57) | 0xe000), 0xe6,
    ((0x58) | 0xe000), 0x27, 0x2a, 0x60,
    ((0x6b) | 0xe000), 0x2c, 0x3b,
    ((0x6c) | 0xe000), 0x2e, 0x3a,
    ((0x6d) | 0xe000), 0x2d, 0x5f,
    ((0x7d) | 0xe000), 0x3c, 0x3e,
};
const keysym_t sunkbd_keydesc_pt[] = {
    ((0x0d) | 0xe000), 0xf10a,
    ((0x0f) | 0xe000), 0x5d,0x7d, 0xbb,
    ((0x1f) | 0xe000), 0x32, 0x22, 0x40,
    ((0x20) | 0xe000), 0x33, 0x23, 0xa3,
    ((0x21) | 0xe000), 0x34, 0x24, 0xa7,
    ((0x23) | 0xe000), 0x36, 0x26, 0xac,
    ((0x24) | 0xe000), 0x37, 0x2f,
    ((0x25) | 0xe000), 0x38, 0x28,
    ((0x26) | 0xe000), 0x39, 0x29, 0x5c,
    ((0x27) | 0xe000), 0x30, 0x3d, 0x7c,
    ((0x28) | 0xe000), 0x27, 0x3f, 0x60,
    ((0x29) | 0xe000), 0xa1, 0xbf,
    ((0x2a) | 0xe000), 0x0303, 0x0302,0x5e,
    ((0x40) | 0xe000), 0x0308,0x2a, 0x2b,
    ((0x41) | 0xe000), 0x0301, 0x0300, 0x7e,
    ((0x4c) | 0xe000), 0xf105,
    ((0x56) | 0xe000), 0xe7,
    ((0x57) | 0xe000), 0xba, 0xaa,
    ((0x58) | 0xe000), 0x5b, 0x7b, 0xab,
    ((0x6b) | 0xe000), 0x2c, 0x3b,
    ((0x6c) | 0xe000), 0x2e, 0x3a,
    ((0x6d) | 0xe000), 0x2d, 0x5f,
    ((0x77) | 0xe000), 0xf103,
    ((0x7d) | 0xe000), 0x3c, 0x3e,
};
const keysym_t sunkbd5_keydesc_pt[] = {
    ((0x0d) | 0xe000), 0xf10a,
    ((0x1f) | 0xe000), 0x32, 0x22, 0x40,
    ((0x20) | 0xe000), 0x33, 0x23, 0xa3,
    ((0x21) | 0xe000), 0x34, 0x24, 0xa7,
    ((0x22) | 0xe000), 0x35, 0x25, 0x7e,
    ((0x23) | 0xe000), 0x36, 0x26, 0x5e,
    ((0x24) | 0xe000), 0x37, 0x2f, 0x7b,
    ((0x25) | 0xe000), 0x38, 0x28, 0x5b,
    ((0x26) | 0xe000), 0x39, 0x29, 0x5d,
    ((0x27) | 0xe000), 0x30, 0x3d, 0x7d,
    ((0x28) | 0xe000), 0x27, 0x3f, 0x60,
    ((0x29) | 0xe000), 0xab,0xbb,
    ((0x2a) | 0xe000), 0x5c, 0x7c,
    ((0x40) | 0xe000), 0x2b, 0x2a, 0x0308,
    ((0x41) | 0xe000), 0x0301, 0x0300,
    ((0x56) | 0xe000), 0xe7,
    ((0x57) | 0xe000), 0xba, 0xaa,
    ((0x58) | 0xe000), 0x0303, 0x0302,
    ((0x6b) | 0xe000), 0x2c, 0x3b,
    ((0x6c) | 0xe000), 0x2e, 0x3a,
    ((0x6d) | 0xe000), 0x2d, 0x5f,
    ((0x7d) | 0xe000), 0x3c, 0x3e,
};
const keysym_t sunkbd_keydesc_es[] = {
    ((0x0d) | 0xe000), 0xf10a,
    ((0x0f) | 0xe000), 0x5d,0x7d, 0xbb,
    ((0x1f) | 0xe000), 0x32, 0x22, 0x40,
    ((0x20) | 0xe000), 0x33, 0xad, 0x23,
    ((0x22) | 0xe000), 0x35, 0x25, 0xb0,
    ((0x23) | 0xe000), 0x36, 0x26, 0xac,
    ((0x24) | 0xe000), 0x37, 0x2f,
    ((0x25) | 0xe000), 0x38, 0x28,
    ((0x26) | 0xe000), 0x39, 0x29, 0x5c,
    ((0x27) | 0xe000), 0x30, 0x3d, 0x7c,
    ((0x28) | 0xe000), 0x27, 0x3f, 0x60,
    ((0x29) | 0xe000), 0xa1, 0xbf,
    ((0x2a) | 0xe000), 0xe7,
    ((0x3e) | 0xe000), 0x6f, 0x4f, 0xba,
    ((0x40) | 0xe000), 0x0300, 0x0302,0x5e,
    ((0x41) | 0xe000), 0x2b, 0x2a, 0x7e,
    ((0x4c) | 0xe000), 0xf105,
    ((0x4d) | 0xe000), 0x61, 0x41, 0xaa,
    ((0x56) | 0xe000), 0xf1,
    ((0x57) | 0xe000), 0x0301, 0x0308,
    ((0x58) | 0xe000), 0x5b, 0x7b, 0xab,
    ((0x6b) | 0xe000), 0x2c, 0x3b,
    ((0x6c) | 0xe000), 0x2e, 0x3a,
    ((0x6d) | 0xe000), 0x2d, 0x5f,
    ((0x77) | 0xe000), 0xf103,
    ((0x7d) | 0xe000), 0x3c, 0x3e,
};
const keysym_t sunkbd5_keydesc_es[] = {
    ((0x0d) | 0xe000), 0xf10a,
    ((0x1e) | 0xe000), 0x31, 0x21, 0x7c,
    ((0x1f) | 0xe000), 0x32, 0x22, 0x40,
    ((0x20) | 0xe000), 0x33, 0xad, 0x23,
    ((0x21) | 0xe000), 0x34, 0x24, 0x5e,
    ((0x22) | 0xe000), 0x35, 0x25, 0x7e,
    ((0x23) | 0xe000), 0x36, 0x26, 0xac,
    ((0x24) | 0xe000), 0x37, 0x2f,
    ((0x25) | 0xe000), 0x38, 0x28,
    ((0x26) | 0xe000), 0x39, 0x29,
    ((0x27) | 0xe000), 0x30, 0x3d,
    ((0x28) | 0xe000), 0x27, 0x3f, 0x60,
    ((0x29) | 0xe000), 0xa1, 0xbf,
    ((0x2a) | 0xe000), 0xba, 0xaa, 0x5c,
    ((0x40) | 0xe000), 0x0300, 0x0302,0x5b,
    ((0x41) | 0xe000), 0x2b, 0x2a, 0x5d,
    ((0x56) | 0xe000), 0xf1,
    ((0x57) | 0xe000), 0x0301, 0x0308,0x7b,
    ((0x58) | 0xe000), 0xe7, 0xc7, 0x7d,
    ((0x6b) | 0xe000), 0x2c, 0x3b,
    ((0x6c) | 0xe000), 0x2e, 0x3a,
    ((0x6d) | 0xe000), 0x2d, 0x5f,
    ((0x7d) | 0xe000), 0x3c, 0x3e,
};
const keysym_t sunkbd_keydesc_sv[] = {
    ((0x0d) | 0xe000), 0xf109,
    ((0x0f) | 0xe000), 0x7e, 0x5e,
    ((0x1f) | 0xe000), 0x32, 0x22, 0x40,
    ((0x20) | 0xe000), 0x33, 0x23, 0xa3,
    ((0x21) | 0xe000), 0x34, 0xa4, 0x24,
    ((0x23) | 0xe000), 0x36, 0x26,
    ((0x24) | 0xe000), 0x37, 0x2f, 0x7b,
    ((0x25) | 0xe000), 0x38, 0x28, 0x5b,
    ((0x26) | 0xe000), 0x39, 0x29, 0x5d,
    ((0x27) | 0xe000), 0x30, 0x3d, 0x7d,
    ((0x28) | 0xe000), 0x2b, 0x3f, 0x5c,
    ((0x29) | 0xe000), 0x0301, 0x0300,
    ((0x2a) | 0xe000), 0x27, 0x2a, 0x60,
    ((0x40) | 0xe000), 0xe5,
    ((0x41) | 0xe000), 0x0308,0x0302,0x0303,
    ((0x43) | 0xe000), 0xf10a,
    ((0x4c) | 0xe000), 0xf105,
    ((0x56) | 0xe000), 0xf6,
    ((0x57) | 0xe000), 0xe4,
    ((0x58) | 0xe000), 0xa7, 0xbd,
    ((0x6b) | 0xe000), 0x2c, 0x3b,
    ((0x6c) | 0xe000), 0x2e, 0x3a,
    ((0x6d) | 0xe000), 0x2d, 0x5f,
    ((0x77) | 0xe000), 0xf103,
    ((0x7c) | 0xe000), 0x3c, 0x3e, 0x7c,
};
const keysym_t sunkbd_keydesc_sv_nodead[] = {
    ((0x29) | 0xe000), 0x27, 0x60,
    ((0x41) | 0xe000), 0xa8, 0x5e, 0x7e,
};
const keysym_t sunkbd5_keydesc_sv[] = {
    ((0x0d) | 0xe000), 0xf10a,
    ((0x0f) | 0xe000), 0x7e, 0x5e,
    ((0x1f) | 0xe000), 0x32, 0x22, 0x40,
    ((0x20) | 0xe000), 0x33, 0x23, 0xa3,
    ((0x21) | 0xe000), 0x34, 0xa4, 0x24,
    ((0x23) | 0xe000), 0x36, 0x26,
    ((0x24) | 0xe000), 0x37, 0x2f, 0x7b,
    ((0x25) | 0xe000), 0x38, 0x28, 0x5b,
    ((0x26) | 0xe000), 0x39, 0x29, 0x5d,
    ((0x27) | 0xe000), 0x30, 0x3d, 0x7d,
    ((0x28) | 0xe000), 0x2b, 0x3f, 0x5c,
    ((0x29) | 0xe000), 0x0301, 0x0300,
    ((0x2a) | 0xe000), 0xa7, 0xbd,
    ((0x40) | 0xe000), 0xe5,
    ((0x41) | 0xe000), 0x0308,0x0302,0x0303,
    ((0x43) | 0xe000), 0xf109,
    ((0x4c) | 0xe000), 0xf103,
    ((0x56) | 0xe000), 0xf6,
    ((0x57) | 0xe000), 0xe4,
    ((0x58) | 0xe000), 0x27, 0x2a, 0x60,
    ((0x6b) | 0xe000), 0x2c, 0x3b,
    ((0x6c) | 0xe000), 0x2e, 0x3a,
    ((0x6d) | 0xe000), 0x2d, 0x5f,
    ((0x77) | 0xe000), 0xf105,
    ((0x7c) | 0xe000), 0x3c, 0x3e, 0x7c,
};
const keysym_t sunkbd_keydesc_sf[] = {
    ((0x0d) | 0xe000), 0xf109,
    ((0x0f) | 0xe000), 0x3e, 0x7d,
    ((0x1e) | 0xe000), 0x31, 0x2b, 0x21,
    ((0x1f) | 0xe000), 0x32, 0x22, 0x40,
    ((0x20) | 0xe000), 0x33, 0x2a, 0x23,
    ((0x21) | 0xe000), 0x34, 0xe7, 0xa2,
    ((0x22) | 0xe000), 0x35, 0x25, 0x7e,
    ((0x23) | 0xe000), 0x36, 0x26, 0xa7,
    ((0x24) | 0xe000), 0x37, 0x2f, 0x7c,
    ((0x25) | 0xe000), 0x38, 0x28, 0xb0,
    ((0x26) | 0xe000), 0x39, 0x29, 0x5c,
    ((0x27) | 0xe000), 0x30, 0x3d, 0x5e,
    ((0x28) | 0xe000), 0x27, 0x3f, 0x60,
    ((0x29) | 0xe000), 0x0302,0x0300,
    ((0x2a) | 0xe000), 0x24, 0x0303, 0xa3,
    ((0x3b) | 0xe000), 0x7a,
    ((0x40) | 0xe000), 0xe8, 0xfc,
    ((0x41) | 0xe000), 0x0308,0x0301,
    ((0x43) | 0xe000), 0xf10a,
    ((0x4c) | 0xe000), 0xf105,
    ((0x56) | 0xe000), 0xe9, 0xf6,
    ((0x57) | 0xe000), 0xe0, 0xe4,
    ((0x58) | 0xe000), 0x3c, 0x7b,
    ((0x64) | 0xe000), 0x79,
    ((0x6a) | 0xe000), 0x6d, 0x4d, 0xb5,
    ((0x6b) | 0xe000), 0x2c, 0x3b,
    ((0x6c) | 0xe000), 0x2e, 0x3a,
    ((0x6d) | 0xe000), 0x2d, 0x5f,
    ((0x77) | 0xe000), 0xf103,
    ((0x7c) | 0xe000), 0x5d,0x5b, 0x5c,
};
const keysym_t sunkbd5_keydesc_sf[] = {
    ((0x0d) | 0xe000), 0xf10a,
    ((0x1e) | 0xe000), 0x31, 0x2b, 0x7c,
    ((0x1f) | 0xe000), 0x32, 0x22, 0x40,
    ((0x20) | 0xe000), 0x33, 0x2a, 0x23,
    ((0x21) | 0xe000), 0x34, 0xe7, 0x5e,
    ((0x22) | 0xe000), 0x35, 0x25, 0x7e,
    ((0x23) | 0xe000), 0x36, 0x26,
    ((0x24) | 0xe000), 0x37, 0x2f,
    ((0x25) | 0xe000), 0x38, 0x28,
    ((0x26) | 0xe000), 0x39, 0x29,
    ((0x27) | 0xe000), 0x30, 0x3d, 0x60,
    ((0x28) | 0xe000), 0x27, 0x3f, 0x0301,
    ((0x29) | 0xe000), 0x0302,0x0300,0x0303,
    ((0x2a) | 0xe000), 0x24, 0xb0,
    ((0x3b) | 0xe000), 0x7a,
    ((0x40) | 0xe000), 0xe8, 0xfc, 0x5b,
    ((0x41) | 0xe000), 0x0308,0x21, 0x5d,
    ((0x56) | 0xe000), 0xe9, 0xf6,
    ((0x57) | 0xe000), 0xe0, 0xe4, 0x7b,
    ((0x58) | 0xe000), 0x24, 0xa3, 0x7d,
    ((0x64) | 0xe000), 0x79,
    ((0x6b) | 0xe000), 0x2c, 0x3b,
    ((0x6c) | 0xe000), 0x2e, 0x3a,
    ((0x6d) | 0xe000), 0x2d, 0x5f,
    ((0x7c) | 0xe000), 0x3c, 0x3e, 0x5c,
};
const keysym_t sunkbd_keydesc_sg[] = {
    ((0x0d) | 0xe000), 0xf109,
    ((0x0f) | 0xe000), 0x3e, 0x7d,
    ((0x1e) | 0xe000), 0x31, 0x2b, 0x21,
    ((0x1f) | 0xe000), 0x32, 0x22, 0x40,
    ((0x20) | 0xe000), 0x33, 0x2a, 0x23,
    ((0x21) | 0xe000), 0x34, 0xe7, 0xa2,
    ((0x22) | 0xe000), 0x35, 0x25, 0x7e,
    ((0x23) | 0xe000), 0x36, 0x26, 0xa7,
    ((0x24) | 0xe000), 0x37, 0x2f, 0x7c,
    ((0x25) | 0xe000), 0x38, 0x28, 0xb0,
    ((0x26) | 0xe000), 0x39, 0x29, 0x5c,
    ((0x27) | 0xe000), 0x30, 0x3d, 0x5e,
    ((0x28) | 0xe000), 0x27, 0x3f, 0x60,
    ((0x29) | 0xe000), 0x0302,0x0300,
    ((0x2a) | 0xe000), 0x24, 0x0303, 0xa3,
    ((0x3b) | 0xe000), 0x7a,
    ((0x40) | 0xe000), 0xfc, 0xe8,
    ((0x41) | 0xe000), 0x0308,0x0301,
    ((0x43) | 0xe000), 0xf10a,
    ((0x4c) | 0xe000), 0xf105,
    ((0x56) | 0xe000), 0xf6, 0xe9,
    ((0x57) | 0xe000), 0xe4, 0xe0,
    ((0x58) | 0xe000), 0x3c, 0x7b,
    ((0x64) | 0xe000), 0x79,
    ((0x6a) | 0xe000), 0x6d, 0x4d, 0xb5,
    ((0x6b) | 0xe000), 0x2c, 0x3b,
    ((0x6c) | 0xe000), 0x2e, 0x3a,
    ((0x6d) | 0xe000), 0x2d, 0x5f,
    ((0x77) | 0xe000), 0xf103,
    ((0x7c) | 0xe000), 0x5d,0x5b, 0x5c,
};
const keysym_t sunkbd5_keydesc_sg[] = {
    ((0x0d) | 0xe000), 0xf10a,
    ((0x1e) | 0xe000), 0x31, 0x2b, 0x7c,
    ((0x1f) | 0xe000), 0x32, 0x22, 0x40,
    ((0x20) | 0xe000), 0x33, 0x2a, 0x23,
    ((0x21) | 0xe000), 0x34, 0xe7, 0x5e,
    ((0x22) | 0xe000), 0x35, 0x25, 0x7e,
    ((0x23) | 0xe000), 0x36, 0x26,
    ((0x24) | 0xe000), 0x37, 0x2f,
    ((0x25) | 0xe000), 0x38, 0x28,
    ((0x26) | 0xe000), 0x39, 0x29,
    ((0x27) | 0xe000), 0x30, 0x3d, 0x60,
    ((0x28) | 0xe000), 0x27, 0x3f, 0x0301,
    ((0x29) | 0xe000), 0x0302,0x0300,0x0303,
    ((0x2a) | 0xe000), 0x24, 0xb0,
    ((0x3b) | 0xe000), 0x7a,
    ((0x40) | 0xe000), 0xfc, 0xe8, 0x5b,
    ((0x41) | 0xe000), 0x0308,0x21, 0x5d,
    ((0x56) | 0xe000), 0xf6, 0xe9,
    ((0x57) | 0xe000), 0xe4, 0xe0, 0x7b,
    ((0x58) | 0xe000), 0x24, 0xa3, 0x7d,
    ((0x64) | 0xe000), 0x79,
    ((0x6b) | 0xe000), 0x2c, 0x3b,
    ((0x6c) | 0xe000), 0x2e, 0x3a,
    ((0x6d) | 0xe000), 0x2d, 0x5f,
    ((0x7c) | 0xe000), 0x3c, 0x3e, 0x5c,
};
const keysym_t sunkbd_keydesc_uk[] = {
    ((0x1e) | 0xe000), 0x31, 0x21, 0x7c,
    ((0x21) | 0xe000), 0x33, 0xa3, 0x23,
    ((0x28) | 0xe000), 0x2d, 0x5f, 0xac,
    ((0x43) | 0xe000), 0xf10a,
};
const keysym_t sunkbd5_keydesc_uk[] = {
    ((0x0d) | 0xe000), 0xf10a,
    ((0x1f) | 0xe000), 0x32, 0x22,
    ((0x20) | 0xe000), 0x33, 0xa3,
    ((0x2a) | 0xe000), 0x60, 0xac, 0xa6,
    ((0x57) | 0xe000), 0x27, 0x40,
    ((0x58) | 0xe000), 0x23, 0x7e,
    ((0x7c) | 0xe000), 0x5c, 0x7c,
};
const keysym_t sunkbd5_keydesc_jp[] = {
    ((0x1f) | 0xe000), 0x32, 0x22,
    ((0x23) | 0xe000), 0x36, 0x26,
    ((0x24) | 0xe000), 0x37, 0x27,
    ((0x25) | 0xe000), 0x38, 0x28,
    ((0x26) | 0xe000), 0x39, 0x29,
    ((0x27) | 0xe000), 0x30,
    ((0x28) | 0xe000), 0x2d, 0x3d,
    ((0x29) | 0xe000), 0x5e, 0x7e,
    ((0x2a) | 0xe000), 0xa5, 0x7c,
    ((0x40) | 0xe000), 0x40, 0x60,
    ((0x41) | 0xe000), 0x5b, 0x7b,
    ((0x56) | 0xe000), 0x3b, 0x2b,
    ((0x57) | 0xe000), 0x3a, 0x2a,
    ((0x58) | 0xe000), 0x5d,0x7d,
    ((0x7c) | 0xe000), 0x5c, 0x5f,
};
const struct wscons_keydesc sunkbd_keydesctab[] = {
 { 0x0200, 0, sizeof(sunkbd_keydesc_us)/sizeof(keysym_t), sunkbd_keydesc_us },
 { 0x0d00, 0x0200, sizeof(sunkbd_keydesc_befr)/sizeof(keysym_t), sunkbd_keydesc_befr },
 { 0x0300, 0x0200, sizeof(sunkbd_keydesc_de)/sizeof(keysym_t), sunkbd_keydesc_de },
 { 0x0400, 0x0200, sizeof(sunkbd_keydesc_dk)/sizeof(keysym_t), sunkbd_keydesc_dk },
 { 0x0b00, 0x0200, sizeof(sunkbd_keydesc_es)/sizeof(keysym_t), sunkbd_keydesc_es },
 { 0x0600, 0x0200, sizeof(sunkbd_keydesc_befr)/sizeof(keysym_t), sunkbd_keydesc_befr },
 { 0x0500, 0x0200, sizeof(sunkbd_keydesc_it)/sizeof(keysym_t), sunkbd_keydesc_it },
 { 0x1600, 0x0200, sizeof(sunkbd_keydesc_nl)/sizeof(keysym_t), sunkbd_keydesc_nl },
 { 0x0a00, 0x0200, sizeof(sunkbd_keydesc_no)/sizeof(keysym_t), sunkbd_keydesc_no },
 { 0x1100, 0x0200, sizeof(sunkbd_keydesc_pt)/sizeof(keysym_t), sunkbd_keydesc_pt },
 { 0x1000, 0x0200, sizeof(sunkbd_keydesc_sf)/sizeof(keysym_t), sunkbd_keydesc_sf },
 { 0x0f00, 0x0200, sizeof(sunkbd_keydesc_sg)/sizeof(keysym_t), sunkbd_keydesc_sg },
 { 0x0900, 0x0200, sizeof(sunkbd_keydesc_sv)/sizeof(keysym_t), sunkbd_keydesc_sv },
 { 0x0900 | 0x00000001, 0x0900, sizeof(sunkbd_keydesc_sv_nodead)/sizeof(keysym_t), sunkbd_keydesc_sv_nodead },
 { 0x0700, 0x0200, sizeof(sunkbd_keydesc_uk)/sizeof(keysym_t), sunkbd_keydesc_uk },
 {0, 0, 0, 0},
};
const struct wscons_keydesc sunkbd5_keydesctab[] = {
 { 0x0200, 0, sizeof(sunkbd_keydesc_us)/sizeof(keysym_t), sunkbd_keydesc_us },
 { 0x0300, 0x0200, sizeof(sunkbd5_keydesc_de)/sizeof(keysym_t), sunkbd5_keydesc_de },
 { 0x0400, 0x0200, sizeof(sunkbd5_keydesc_dk)/sizeof(keysym_t), sunkbd5_keydesc_dk },
 { 0x0b00, 0x0200, sizeof(sunkbd5_keydesc_es)/sizeof(keysym_t), sunkbd5_keydesc_es },
 { 0x0600, 0x0200, sizeof(sunkbd5_keydesc_fr)/sizeof(keysym_t), sunkbd5_keydesc_fr },
 { 0x0500, 0x0200, sizeof(sunkbd5_keydesc_it)/sizeof(keysym_t), sunkbd5_keydesc_it },
 { 0x0800, 0x0200, sizeof(sunkbd5_keydesc_jp)/sizeof(keysym_t), sunkbd5_keydesc_jp },
 { 0x1600, 0x0200, sizeof(sunkbd5_keydesc_nl)/sizeof(keysym_t), sunkbd5_keydesc_nl },
 { 0x0a00, 0x0200, sizeof(sunkbd5_keydesc_no)/sizeof(keysym_t), sunkbd5_keydesc_no },
 { 0x1100, 0x0200, sizeof(sunkbd5_keydesc_pt)/sizeof(keysym_t), sunkbd5_keydesc_pt },
 { 0x1000, 0x0200, sizeof(sunkbd5_keydesc_sf)/sizeof(keysym_t), sunkbd5_keydesc_sf },
 { 0x0f00, 0x0200, sizeof(sunkbd5_keydesc_sg)/sizeof(keysym_t), sunkbd5_keydesc_sg },
 { 0x0900, 0x0200, sizeof(sunkbd5_keydesc_sv)/sizeof(keysym_t), sunkbd5_keydesc_sv },
 { 0x0900 | 0x00000001, 0x0900, sizeof(sunkbd_keydesc_sv_nodead)/sizeof(keysym_t), sunkbd_keydesc_sv_nodead },
 { 0x0700, 0x0200, sizeof(sunkbd5_keydesc_uk)/sizeof(keysym_t), sunkbd5_keydesc_uk },
 {0, 0, 0, 0},
};
const int sunkbd_layouts[0x062] = {
 0x0200,
 0x0200,
 0x0d00,
 -1,
 0x0400,
 0x0300,
 0x0500,
 0x1600,
 0x0a00,
 0x1100,
 0x0b00,
 0x0900,
 0x1000,
 0x0f00,
 0x0700,
 -1,
 -1,
 -1,
 -1,
 -1,
 -1,
 -1,
 -1,
 -1,
 -1,
 -1,
 -1,
 -1,
 -1,
 -1,
 -1,
 -1,
 -1,
 0x0200,
 0x0200,
 0x0600,
 0x0400,
 0x0300,
 0x0500,
 0x1600,
 0x0a00,
 0x1100,
 0x0b00,
 0x0900,
 0x1000,
 0x0f00,
 0x0700,
 -1,
 -1,
 0x0800,
 -1,
 -1,
 -1,
 -1,
 -1,
 -1,
 -1,
 -1,
 -1,
 -1,
 -1,
 -1,
 -1,
 -1,
 -1,
 -1,
 -1,
 -1,
 -1,
 -1,
 -1,
 -1,
 -1,
 -1,
 -1,
 -1,
 -1,
 -1,
 -1,
 -1,
 0x0200,
 0x0200,
 0x0600,
 0x0400,
 0x0300,
 0x0500,
 0x1600,
 0x0a00,
 0x1100,
 0x0b00,
 0x0900,
 0x1000,
 0x0f00,
 0x0700,
 -1,
 -1,
 0x0800,
 -1,
};
struct wskbd_mapdata sunkbd_keymapdata = {
 sunkbd_keydesctab,
 0x0200 | 0x80000000,
};
struct wskbd_mapdata sunkbd5_keymapdata = {
 sunkbd5_keydesctab,
 0x0200 | 0x80000000,
};
