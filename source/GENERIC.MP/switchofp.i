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
typedef __int_least8_t int_least8_t;
typedef __uint_least8_t uint_least8_t;
typedef __int_least16_t int_least16_t;
typedef __uint_least16_t uint_least16_t;
typedef __int_least32_t int_least32_t;
typedef __uint_least32_t uint_least32_t;
typedef __int_least64_t int_least64_t;
typedef __uint_least64_t uint_least64_t;
typedef __int_fast8_t int_fast8_t;
typedef __uint_fast8_t uint_fast8_t;
typedef __int_fast16_t int_fast16_t;
typedef __uint_fast16_t uint_fast16_t;
typedef __int_fast32_t int_fast32_t;
typedef __uint_fast32_t uint_fast32_t;
typedef __int_fast64_t int_fast64_t;
typedef __uint_fast64_t uint_fast64_t;
typedef __intptr_t intptr_t;
typedef __uintptr_t uintptr_t;
typedef __intmax_t intmax_t;
typedef __uintmax_t uintmax_t;
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
struct udphdr {
 u_int16_t uh_sport;
 u_int16_t uh_dport;
 u_int16_t uh_ulen;
 u_int16_t uh_sum;
};
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
enum { PF_TRANS_RULESET, PF_TRANS_ALTQ, PF_TRANS_TABLE };
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
struct ifbreq {
 char ifbr_name[16];
 char ifbr_ifsname[16];
 u_int32_t ifbr_ifsflags;
 u_int32_t ifbr_portno;
 u_int32_t ifbr_protected;
 u_int8_t ifbr_state;
 u_int8_t ifbr_priority;
 u_int32_t ifbr_path_cost;
 u_int32_t ifbr_stpflags;
 u_int8_t ifbr_proto;
 u_int8_t ifbr_role;
 u_int32_t ifbr_fwd_trans;
 u_int64_t ifbr_desg_bridge;
 u_int32_t ifbr_desg_port;
 u_int64_t ifbr_root_bridge;
 u_int32_t ifbr_root_cost;
 u_int32_t ifbr_root_port;
};
struct ifbifconf {
 char ifbic_name[16];
 u_int32_t ifbic_len;
 union {
  caddr_t ifbicu_buf;
  struct ifbreq *ifbicu_req;
 } ifbic_ifbicu;
};
struct ifbareq {
 char ifba_name[16];
 char ifba_ifsname[16];
 u_int8_t ifba_age;
 u_int8_t ifba_flags;
 struct ether_addr ifba_dst;
 struct sockaddr_storage ifba_dstsa;
};
struct ifbaconf {
 char ifbac_name[16];
 u_int32_t ifbac_len;
 union {
  caddr_t ifbacu_buf;
  struct ifbareq *ifbacu_req;
 } ifbac_ifbacu;
};
struct ifbrparam {
 char ifbrp_name[16];
 union {
  u_int32_t ifbrpu_csize;
  int ifbrpu_ctime;
  u_int16_t ifbrpu_prio;
  u_int8_t ifbrpu_hellotime;
  u_int8_t ifbrpu_fwddelay;
  u_int8_t ifbrpu_maxage;
  u_int8_t ifbrpu_proto;
  u_int8_t ifbrpu_txhc;
  u_int64_t ifbrpu_datapath;
  u_int32_t ifbrpu_maxgroup;
 } ifbrp_ifbrpu;
};
struct ifbropreq {
 char ifbop_name[16];
 u_int8_t ifbop_holdcount;
 u_int8_t ifbop_maxage;
 u_int8_t ifbop_hellotime;
 u_int8_t ifbop_fwddelay;
 u_int8_t ifbop_protocol;
 u_int16_t ifbop_priority;
 u_int64_t ifbop_root_bridge;
 u_int16_t ifbop_root_port;
 u_int32_t ifbop_root_path_cost;
 u_int64_t ifbop_desg_bridge;
 struct timeval ifbop_last_tc_time;
};
struct ifbrarpf {
 u_int16_t brla_flags;
 u_int16_t brla_op;
 struct ether_addr brla_sha;
 struct in_addr brla_spa;
 struct ether_addr brla_tha;
 struct in_addr brla_tpa;
};
struct ifbrlreq {
 char ifbr_name[16];
 char ifbr_ifsname[16];
 u_int8_t ifbr_action;
 u_int8_t ifbr_flags;
 struct ether_addr ifbr_src;
 struct ether_addr ifbr_dst;
 char ifbr_tagname[64];
 struct ifbrarpf ifbr_arpf;
};
struct ifbrlconf {
 char ifbrl_name[16];
 char ifbrl_ifsname[16];
 u_int32_t ifbrl_len;
 union {
  caddr_t ifbrlu_buf;
  struct ifbrlreq *ifbrlu_req;
 } ifbrl_ifbrlu;
};
struct brl_head { struct brl_node *sqh_first; struct brl_node **sqh_last; };
struct brl_node {
 struct { struct brl_node *sqe_next; } brl_next;
 struct ether_addr brl_src;
 struct ether_addr brl_dst;
 u_int16_t brl_tag;
 u_int8_t brl_action;
 u_int8_t brl_flags;
 struct ifbrarpf brl_arpf;
};
struct bstp_timer {
 u_int16_t active;
 u_int16_t value;
 u_int32_t latched;
};
struct bstp_pri_vector {
 u_int64_t pv_root_id;
 u_int32_t pv_cost;
 u_int64_t pv_dbridge_id;
 u_int16_t pv_dport_id;
 u_int16_t pv_port_id;
};
struct bstp_config_unit {
 struct bstp_pri_vector cu_pv;
 u_int16_t cu_message_age;
 u_int16_t cu_max_age;
 u_int16_t cu_forward_delay;
 u_int16_t cu_hello_time;
 u_int8_t cu_message_type;
 u_int8_t cu_topology_change_ack;
 u_int8_t cu_topology_change;
 u_int8_t cu_proposal;
 u_int8_t cu_agree;
 u_int8_t cu_learning;
 u_int8_t cu_forwarding;
 u_int8_t cu_role;
};
struct bstp_tcn_unit {
 u_int8_t tu_message_type;
};
struct bstp_port {
 struct { struct bstp_port *le_next; struct bstp_port **le_prev; } bp_next;
 struct ifnet *bp_ifp;
 struct bstp_state *bp_bs;
 void *bp_lhcookie;
 u_int8_t bp_active;
 u_int8_t bp_protover;
 u_int32_t bp_flags;
 u_int32_t bp_path_cost;
 u_int16_t bp_port_msg_age;
 u_int16_t bp_port_max_age;
 u_int16_t bp_port_fdelay;
 u_int16_t bp_port_htime;
 u_int16_t bp_desg_msg_age;
 u_int16_t bp_desg_max_age;
 u_int16_t bp_desg_fdelay;
 u_int16_t bp_desg_htime;
 struct bstp_timer bp_edge_delay_timer;
 struct bstp_timer bp_forward_delay_timer;
 struct bstp_timer bp_hello_timer;
 struct bstp_timer bp_message_age_timer;
 struct bstp_timer bp_migrate_delay_timer;
 struct bstp_timer bp_recent_backup_timer;
 struct bstp_timer bp_recent_root_timer;
 struct bstp_timer bp_tc_timer;
 struct bstp_config_unit bp_msg_cu;
 struct bstp_pri_vector bp_desg_pv;
 struct bstp_pri_vector bp_port_pv;
 u_int16_t bp_port_id;
 u_int8_t bp_state;
 u_int8_t bp_tcstate;
 u_int8_t bp_role;
 u_int8_t bp_infois;
 u_int8_t bp_tc_ack;
 u_int8_t bp_tc_prop;
 u_int8_t bp_fdbflush;
 u_int8_t bp_priority;
 u_int8_t bp_ptp_link;
 u_int8_t bp_agree;
 u_int8_t bp_agreed;
 u_int8_t bp_sync;
 u_int8_t bp_synced;
 u_int8_t bp_proposing;
 u_int8_t bp_proposed;
 u_int8_t bp_operedge;
 u_int8_t bp_reroot;
 u_int8_t bp_rcvdtc;
 u_int8_t bp_rcvdtca;
 u_int8_t bp_rcvdtcn;
 u_int32_t bp_forward_transitions;
 u_int8_t bp_txcount;
};
struct bstp_state {
 struct ifnet *bs_ifp;
 struct bstp_pri_vector bs_bridge_pv;
 struct bstp_pri_vector bs_root_pv;
 struct bstp_port *bs_root_port;
 u_int8_t bs_protover;
 u_int16_t bs_migration_delay;
 u_int16_t bs_edge_delay;
 u_int16_t bs_bridge_max_age;
 u_int16_t bs_bridge_fdelay;
 u_int16_t bs_bridge_htime;
 u_int16_t bs_root_msg_age;
 u_int16_t bs_root_max_age;
 u_int16_t bs_root_fdelay;
 u_int16_t bs_root_htime;
 u_int16_t bs_hold_time;
 u_int16_t bs_bridge_priority;
 u_int8_t bs_txholdcount;
 u_int8_t bs_allsynced;
 struct timeout bs_bstptimeout;
 struct bstp_timer bs_link_timer;
 struct timeval bs_last_tc_time;
 struct { struct bstp_port *lh_first; } bs_bplist;
};
struct bridge_iflist {
 struct { struct bridge_iflist *tqe_next; struct bridge_iflist **tqe_prev; } next;
 struct bridge_softc *bridge_sc;
 struct bstp_port *bif_stp;
 struct brl_head bif_brlin;
 struct brl_head bif_brlout;
 struct ifnet *ifp;
 u_int32_t bif_flags;
 u_int32_t bif_protected;
 void *bif_dhcookie;
};
union brsockaddr_union {
 struct sockaddr sa;
 struct sockaddr_in sin;
 struct sockaddr_in6 sin6;
};
struct bridge_tunneltag {
 union brsockaddr_union brtag_peer;
 union brsockaddr_union brtag_local;
 u_int32_t brtag_id;
};
struct bridge_rtnode {
 struct { struct bridge_rtnode *le_next; struct bridge_rtnode **le_prev; } brt_next;
 struct ifnet *brt_if;
 u_int8_t brt_flags;
 u_int8_t brt_age;
 struct ether_addr brt_addr;
 struct bridge_tunneltag brt_tunnel;
};
struct bridge_softc {
 struct ifnet sc_if;
 u_int32_t sc_brtmax;
 u_int32_t sc_brtcnt;
 int sc_brttimeout;
 u_int64_t sc_hashkey[2];
 struct timeout sc_brtimeout;
 struct bstp_state *sc_stp;
 struct { struct bridge_iflist *tqh_first; struct bridge_iflist **tqh_last; } sc_iflist;
 struct { struct bridge_iflist *tqh_first; struct bridge_iflist **tqh_last; } sc_spanlist;
 struct { struct bridge_rtnode *lh_first; } sc_rts[1024];
};
extern const u_int8_t bstp_etheraddr[];
struct llc;
int bridge_output(struct ifnet *, struct mbuf *, struct sockaddr *,
    struct rtentry *);
void bridge_update(struct ifnet *, struct ether_addr *, int);
void bridge_rtdelete(struct bridge_softc *, struct ifnet *, int);
void bridge_rtagenode(struct ifnet *, int);
struct bridge_tunneltag *bridge_tunnel(struct mbuf *);
struct bridge_tunneltag *bridge_tunneltag(struct mbuf *);
void bridge_tunneluntag(struct mbuf *);
void bridge_copyaddr(struct sockaddr *, struct sockaddr *);
void bridge_copytag(struct bridge_tunneltag *, struct bridge_tunneltag *);
struct bstp_state *bstp_create(struct ifnet *);
void bstp_destroy(struct bstp_state *);
void bstp_initialization(struct bstp_state *);
void bstp_stop(struct bstp_state *);
int bstp_ioctl(struct ifnet *, u_long, caddr_t);
struct bstp_port *bstp_add(struct bstp_state *, struct ifnet *);
void bstp_delete(struct bstp_port *);
struct mbuf *bstp_input(struct bstp_state *, struct bstp_port *,
    struct ether_header *, struct mbuf *);
void bstp_ifstate(void *);
u_int8_t bstp_getstate(struct bstp_state *, struct bstp_port *);
void bstp_ifsflags(struct bstp_port *, u_int);
void bridge_send_icmp_err(struct bridge_softc *, struct ifnet *,
    struct ether_header *, struct mbuf *, int, struct llc *, int, int, int);
int bridgectl_ioctl(struct ifnet *, u_long, caddr_t);
struct ifnet *bridge_rtupdate(struct bridge_softc *,
    struct ether_addr *, struct ifnet *ifp, int, u_int8_t, struct mbuf *);
struct bridge_rtnode *bridge_rtlookup(struct bridge_softc *,
    struct ether_addr *);
void bridge_rtflush(struct bridge_softc *, int);
void bridge_rtage(void *);
u_int8_t bridge_filterrule(struct brl_head *, struct ether_header *,
    struct mbuf *);
void bridge_flushrule(struct bridge_iflist *);
struct mbuf *bridge_ip(struct bridge_softc *, int, struct ifnet *,
    struct ether_header *, struct mbuf *);
void bridge_fragment(struct bridge_softc *, struct ifnet *,
    struct ether_header *, struct mbuf *);
int bridge_ifenqueue(struct bridge_softc *, struct ifnet *, struct mbuf *);
struct switch_field_tunnel {
 uint32_t tun_af;
 struct in_addr tun_ipv4_src;
 struct in_addr tun_ipv4_dst;
 struct in6_addr tun_ipv6_src;
 struct in6_addr tun_ipv6_dst;
 uint64_t tun_key;
};
struct switch_field_ether {
 uint8_t eth_src[6];
 uint8_t __pad_eth_src[2];
 uint8_t eth_dst[6];
 uint8_t __pad_eth_dst[2];
 uint16_t eth_type;
 uint8_t __pad_eth_type[2];
};
struct switch_field_vlan {
 uint16_t vlan_tpid;
 uint16_t vlan_vid;
 uint16_t vlan_pcp;
 uint8_t __pad_vlan_pcp[2];
};
struct switch_field_ipv4 {
 uint32_t ipv4_src;
 uint32_t ipv4_dst;
 uint8_t ipv4_proto;
 uint8_t ipv4_tos;
 uint8_t ipv4_ttl;
 uint8_t ipv4_frag;
};
struct switch_field_ipv6 {
 struct in6_addr ipv6_src;
 struct in6_addr ipv6_dst;
 uint32_t ipv6_flow_label;
 uint8_t ipv6_nxt;
 uint8_t ipv6_tclass;
 uint8_t ipv6_hlimit;
 uint8_t ipv6_frag;
};
struct switch_field_arp {
 uint16_t _arp_op;
 uint8_t __pad_arp_op[2];
 uint8_t arp_sha[6];
 uint8_t __pad_arp_sha[2];
 uint8_t arp_tha[6];
 uint8_t __pad_arp_tha[2];
 uint32_t arp_sip;
 uint32_t arp_tip;
};
struct switch_field_nd6 {
 struct in6_addr nd6_target;
 uint8_t nd6_lladdr[6];
 uint8_t __pad_nd6_lladdr[2];
};
struct switch_field_icmpv4 {
 uint8_t icmpv4_type;
 uint8_t icmpv4_code;
 uint8_t __pad[2];
};
struct switch_field_icmpv6 {
 uint8_t icmpv6_type;
 uint8_t icmpv6_code;
 uint8_t __pad[2];
};
struct switch_field_tcp {
 uint16_t tcp_src;
 uint16_t tcp_dst;
 uint8_t tcp_flags;
 uint8_t __pad[3];
};
struct switch_field_udp {
 uint16_t udp_src;
 uint16_t udp_dst;
};
struct switch_field_sctp {
 uint16_t sctp_src;
 uint16_t sctp_dst;
};
union switch_field {
 struct switch_field_tunnel swfcl_tunnel;
 struct switch_field_ether swfcl_ether;
 struct switch_field_vlan swfcl_vlan;
 struct switch_field_ipv4 swfcl_ipv4;
 struct switch_field_ipv6 swfcl_ipv6;
 struct switch_field_arp swfcl_arp;
 struct switch_field_nd6 swfcl_nd6;
 struct switch_field_icmpv4 swfcl_icmpv4;
 struct switch_field_icmpv6 swfcl_icmpv6;
 struct switch_field_tcp swfcl_tcp;
 struct switch_field_udp swfcl_udp;
 struct switch_field_sctp swfcl_sctp;
};
struct switch_flow_classify {
 uint64_t swfcl_flow_hash;
 uint64_t swfcl_metadata;
 uint64_t swfcl_cookie;
 uint8_t swfcl_table_id;
 uint32_t swfcl_in_port;
 struct switch_field_tunnel *swfcl_tunnel;
 struct switch_field_ether *swfcl_ether;
 struct switch_field_vlan *swfcl_vlan;
 struct switch_field_ipv4 *swfcl_ipv4;
 struct switch_field_ipv6 *swfcl_ipv6;
 struct switch_field_arp *swfcl_arp;
 struct switch_field_nd6 *swfcl_nd6;
 struct switch_field_icmpv4 *swfcl_icmpv4;
 struct switch_field_icmpv6 *swfcl_icmpv6;
 struct switch_field_tcp *swfcl_tcp;
 struct switch_field_udp *swfcl_udp;
 struct switch_field_sctp *swfcl_sctp;
};
struct switch_softc;
struct switch_port {
 struct { struct switch_port *tqe_next; struct switch_port **tqe_prev; } swpo_list_next;
 struct { struct switch_port *tqe_next; struct switch_port **tqe_prev; } swpo_fwdp_next;
 uint32_t swpo_port_no;
 uint32_t swpo_ifindex;
 struct timespec swpo_appended;
 struct switch_softc *swpo_switch;
 uint32_t swpo_flags;
 void *swpo_dhcookie;
 void (*swop_bk_start)(struct ifnet *);
};
struct switch_fwdp_queue { struct switch_port *tqh_first; struct switch_port **tqh_last; };
struct switch_dev {
 struct mbuf *swdev_lastm;
 struct mbuf *swdev_inputm;
 struct mbuf_queue swdev_outq;
 struct selinfo swdev_rsel;
 struct selinfo swdev_wsel;
 int swdev_waiting;
 void (*swdev_init)(struct switch_softc *);
 int (*swdev_input)(struct switch_softc *,
        struct mbuf *);
 int (*swdev_output)(struct switch_softc *,
        struct mbuf *);
};
struct switch_softc {
 struct ifnet sc_if;
 int sc_unit;
 uint32_t sc_capabilities;
 struct switch_dev *sc_swdev;
 struct bstp_state *sc_stp;
 struct swofp_ofs *sc_ofs;
 caddr_t sc_ofbpf;
 struct { struct switch_port *tqh_first; struct switch_port **tqh_last; } sc_swpo_list;
 struct { struct switch_softc *le_next; struct switch_softc **le_prev; } sc_switch_next;
 void (*switch_process_forward)(
     struct switch_softc *, struct switch_flow_classify *,
     struct mbuf *);
};
struct switch_softc
 *switch_lookup(int);
void switch_port_egress(struct switch_softc *, struct switch_fwdp_queue *,
     struct mbuf *);
int switch_swfcl_dup(struct switch_flow_classify *,
     struct switch_flow_classify *);
void switch_swfcl_free(struct switch_flow_classify *);
struct mbuf
 *switch_flow_classifier(struct mbuf *, uint32_t,
     struct switch_flow_classify *);
int switch_mtap(caddr_t, struct mbuf *, int, uint64_t);
int ofp_split_mbuf(struct mbuf *, struct mbuf **);
void switch_dev_destroy(struct switch_softc *);
void swofp_attach(void);
int swofp_create(struct switch_softc *);
int swofp_init(struct switch_softc *);
void swofp_destroy(struct switch_softc *);
int swofp_ioctl(struct ifnet *, unsigned long, caddr_t);
uint32_t
  swofp_assign_portno(struct switch_softc *, uint32_t);
struct vlanreq {
 char vlr_parent[16];
 u_short vlr_tag;
};
struct vlan_mc_entry {
 struct { struct vlan_mc_entry *le_next; struct vlan_mc_entry **le_prev; } mc_entries;
 union {
  struct ether_multi *mcu_enm;
 } mc_u;
 struct sockaddr_storage mc_addr;
};
struct ifvlan {
 struct arpcom ifv_ac;
 unsigned int ifv_ifp0;
 struct ifv_linkmib {
  u_int16_t ifvm_proto;
  u_int16_t ifvm_tag;
  u_int16_t ifvm_prio;
  u_int16_t ifvm_type;
 } ifv_mib;
 struct __vlan_mchead { struct vlan_mc_entry *lh_first; } vlan_mc_listhead;
 struct { struct srp se_next; } ifv_list;
 int ifv_flags;
 struct refcnt ifv_refcnt;
 void *lh_cookie;
 void *dh_cookie;
 struct ifih *ifv_ifih;
};
struct mbuf *vlan_inject(struct mbuf *, uint16_t, uint16_t);
struct ofp_header {
 uint8_t oh_version;
 uint8_t oh_type;
 uint16_t oh_length;
 uint32_t oh_xid;
} __attribute__((__packed__));
struct ofp_hello_element_header {
 uint16_t he_type;
 uint16_t he_length;
} __attribute__((__packed__));
struct ofp_hello_element_versionbitmap {
 uint16_t hev_type;
 uint16_t hev_length;
} __attribute__((__packed__));
struct ofp_switch_config {
 struct ofp_header cfg_oh;
 uint16_t cfg_flags;
 uint16_t cfg_miss_send_len;
} __attribute__((__packed__));
struct ofp_switch_port {
 uint32_t swp_number;
 uint8_t swp_pad[4];
 uint8_t swp_macaddr[6];
 uint8_t swp_pad2[2];
 char swp_name[16];
 uint32_t swp_config;
 uint32_t swp_state;
 uint32_t swp_cur;
 uint32_t swp_advertised;
 uint32_t swp_supported;
 uint32_t swp_peer;
 uint32_t swp_cur_speed;
 uint32_t swp_max_speed;
} __attribute__((__packed__));
struct ofp_switch_features {
 struct ofp_header swf_oh;
 uint64_t swf_datapath_id;
 uint32_t swf_nbuffers;
 uint8_t swf_ntables;
 uint8_t swf_aux_id;
 uint8_t swf_pad[2];
 uint32_t swf_capabilities;
 uint32_t swf_actions;
} __attribute__((__packed__));
struct ofp_match {
 uint16_t om_type;
 uint16_t om_length;
} __attribute__((__packed__));
struct ofp_packet_in {
 struct ofp_header pin_oh;
 uint32_t pin_buffer_id;
 uint16_t pin_total_len;
 uint8_t pin_reason;
 uint8_t pin_table_id;
 uint64_t pin_cookie;
 struct ofp_match pin_match;
} __attribute__((__packed__));
struct ofp_instruction {
 uint16_t i_type;
 uint16_t i_len;
} __attribute__((__packed__));
struct ofp_instruction_write_metadata {
 uint16_t iwm_type;
 uint16_t iwm_len;
 uint8_t iwm_pad[4];
 uint64_t iwm_metadata;
 uint64_t iwm_metadata_mask;
} __attribute__((__packed__));
struct ofp_instruction_goto_table {
 uint16_t igt_type;
 uint16_t igt_len;
 uint8_t igt_table_id;
 uint8_t igt_pad[3];
} __attribute__((__packed__));
struct ofp_instruction_actions {
 uint16_t ia_type;
 uint16_t ia_len;
 uint8_t ia_pad[4];
} __attribute__((__packed__));
struct ofp_instruction_meter {
 uint16_t im_type;
 uint16_t im_len;
 uint32_t im_meter_id;
} __attribute__((__packed__));
struct ofp_instruction_experimenter {
 uint16_t ie_type;
 uint16_t ie_len;
 uint32_t ie_experimenter;
} __attribute__((__packed__));
struct ofp_action_header {
 uint16_t ah_type;
 uint16_t ah_len;
 uint32_t ah_pad;
} __attribute__((__packed__));
struct ofp_action_output {
 uint16_t ao_type;
 uint16_t ao_len;
 uint32_t ao_port;
 uint16_t ao_max_len;
 uint8_t ao_pad[6];
} __attribute__((__packed__));
struct ofp_action_mpls_ttl {
 uint16_t amt_type;
 uint16_t amt_len;
 uint8_t amt_ttl;
 uint8_t amt_pad[3];
} __attribute__((__packed__));
struct ofp_action_push {
 uint16_t ap_type;
 uint16_t ap_len;
 uint16_t ap_ethertype;
 uint8_t ap_pad[2];
} __attribute__((__packed__));
struct ofp_action_pop_mpls {
 uint16_t apm_type;
 uint16_t apm_len;
 uint16_t apm_ethertype;
 uint8_t apm_pad[2];
} __attribute__((__packed__));
struct ofp_action_group {
 uint16_t ag_type;
 uint16_t ag_len;
 uint32_t ag_group_id;
} __attribute__((__packed__));
struct ofp_action_nw_ttl {
 uint16_t ant_type;
 uint16_t ant_len;
 uint8_t ant_ttl;
 uint8_t ant_pad[3];
} __attribute__((__packed__));
struct ofp_action_set_field {
 uint16_t asf_type;
 uint16_t asf_len;
 uint8_t asf_field[4];
} __attribute__((__packed__));
struct ofp_action_set_queue {
 uint16_t asq_type;
 uint16_t asq_len;
 uint32_t asq_queue_id;
} __attribute__((__packed__));
struct ofp_packet_out {
 struct ofp_header pout_oh;
 uint32_t pout_buffer_id;
 uint32_t pout_in_port;
 uint16_t pout_actions_len;
 uint8_t pout_pad[6];
 struct ofp_action_header pout_actions[0];
} __attribute__((__packed__));
struct ofp_ox_match {
 uint16_t oxm_class;
 uint8_t oxm_fh;
 uint8_t oxm_length;
 uint8_t oxm_value[0];
} __attribute__((__packed__));
struct ofp_flow_mod {
 struct ofp_header fm_oh;
 uint64_t fm_cookie;
 uint64_t fm_cookie_mask;
 uint8_t fm_table_id;
 uint8_t fm_command;
 uint16_t fm_idle_timeout;
 uint16_t fm_hard_timeout;
 uint16_t fm_priority;
 uint32_t fm_buffer_id;
 uint32_t fm_out_port;
 uint32_t fm_out_group;
 uint16_t fm_flags;
 uint8_t fm_pad[2];
 struct ofp_match fm_match;
} __attribute__((__packed__));
struct ofp_flow_removed {
 struct ofp_header fr_oh;
 uint64_t fr_cookie;
 uint16_t fr_priority;
 uint8_t fr_reason;
 uint8_t fr_table_id;
 uint32_t fr_duration_sec;
 uint32_t fr_duration_nsec;
 uint16_t fr_idle_timeout;
 uint16_t fr_hard_timeout;
 uint64_t fr_packet_count;
 uint64_t fr_byte_count;
 struct ofp_match fr_match;
} __attribute__((__packed__));
struct ofp_error {
 struct ofp_header err_oh;
 uint16_t err_type;
 uint16_t err_code;
 uint8_t err_data[0];
} __attribute__((__packed__));
struct ofp_bucket {
 uint16_t b_len;
 uint16_t b_weight;
 uint32_t b_watch_port;
 uint32_t b_watch_group;
 uint8_t b_pad[4];
 struct ofp_action_header b_actions[0];
} __attribute__((__packed__));
struct ofp_group_mod {
 struct ofp_header gm_oh;
 uint16_t gm_command;
 uint8_t gm_type;
 uint8_t gm_pad;
 uint32_t gm_group_id;
 struct ofp_bucket gm_buckets[0];
} __attribute__((__packed__));
struct ofp_multipart {
 struct ofp_header mp_oh;
 uint16_t mp_type;
 uint16_t mp_flags;
 uint8_t mp_pad[4];
} __attribute__((__packed__));
struct ofp_desc {
 char d_mfr_desc[256];
 char d_hw_desc[256];
 char d_sw_desc[256];
 char d_serial_num[32];
 char d_dp_desc[256];
} __attribute__((__packed__));
struct ofp_flow_stats_request {
 uint8_t fsr_table_id;
 uint8_t fsr_pad[3];
 uint32_t fsr_out_port;
 uint32_t fsr_out_group;
 uint8_t fsr_pad2[4];
 uint64_t fsr_cookie;
 uint64_t fsr_cookie_mask;
 struct ofp_match fsr_match;
} __attribute__((__packed__));
struct ofp_flow_stats {
 uint16_t fs_length;
 uint8_t fs_table_id;
 uint8_t fs_pad;
 uint32_t fs_duration_sec;
 uint32_t fs_duration_nsec;
 uint16_t fs_priority;
 uint16_t fs_idle_timeout;
 uint16_t fs_hard_timeout;
 uint16_t fs_flags;
 uint8_t fs_pad2[4];
 uint64_t fs_cookie;
 uint64_t fs_packet_count;
 uint64_t fs_byte_count;
 struct ofp_match fs_match;
} __attribute__((__packed__));
struct ofp_aggregate_stats_request {
 uint8_t asr_table_id;
 uint8_t asr_pad[3];
 uint32_t asr_out_port;
 uint32_t asr_out_group;
 uint8_t asr_pad2[4];
 uint64_t asr_cookie;
 uint64_t asr_cookie_mask;
 struct ofp_match asr_match;
} __attribute__((__packed__));
struct ofp_aggregate_stats {
 uint64_t as_packet_count;
 uint64_t as_byte_count;
 uint32_t as_flow_count;
 uint8_t as_pad[4];
} __attribute__((__packed__));
struct ofp_table_stats {
 uint8_t ts_table_id;
 uint8_t ts_pad[3];
 uint32_t ts_active_count;
 uint64_t ts_lookup_count;
 uint64_t ts_matched_count;
} __attribute__((__packed__));
struct ofp_table_features {
 uint16_t tf_length;
 uint8_t tf_tableid;
 uint8_t tf_pad[5];
 char tf_name[32];
 uint64_t tf_metadata_match;
 uint64_t tf_metadata_write;
 uint32_t tf_config;
 uint32_t tf_max_entries;
} __attribute__((__packed__));
struct ofp_table_feature_property {
 uint16_t tp_type;
 uint16_t tp_length;
} __attribute__((__packed__));
struct ofp_table_feature_property_instruction {
 uint16_t tpi_type;
 uint16_t tpi_length;
 struct ofp_instruction tpi_instructions[0];
} __attribute__((__packed__));
struct ofp_table_feature_property_next_tables {
 uint16_t tpnt_type;
 uint16_t tpnt_length;
 uint8_t tpnt_tables[0];
} __attribute__((__packed__));
struct ofp_table_feature_property_actions {
 uint16_t tpa_type;
 uint16_t tpa_length;
 struct ofp_action_header tpa_actions[0];
} __attribute__((__packed__));
struct ofp_table_feature_property_oxm {
 uint16_t tpoxm_type;
 uint16_t tpoxm_length;
 uint32_t tpoxm_oxm[0];
} __attribute__((__packed__));
struct ofp_table_feature_property_experimenter {
 uint16_t tfpexp_type;
 uint16_t tfpexp_length;
 uint32_t tfpexp_experimenter;
 uint32_t tfpexp_exp_type;
 uint32_t tfpexp_experimenter_data[0];
} __attribute__((__packed__));
struct ofp_port_stats {
 uint32_t pt_port_no;
 uint8_t pt_pad[4];
 uint64_t pt_rx_packets;
 uint64_t pt_tx_packets;
 uint64_t pt_rx_bytes;
 uint64_t pt_tx_bytes;
 uint64_t pt_rx_dropped;
 uint64_t pt_tx_dropped;
 uint64_t pt_rx_errors;
 uint64_t pt_tx_errors;
 uint64_t pt_rx_frame_err;
 uint64_t pt_rx_over_err;
 uint64_t pt_rx_crc_err;
 uint64_t pt_collision;
 uint32_t pt_duration_sec;
 uint32_t pt_duration_nsec;
} __attribute__((__packed__));
struct ofp_group_stats_request {
 uint32_t gsr_group_id;
 uint8_t gsr_pad[4];
} __attribute__((__packed__));
struct ofp_bucket_counter {
 uint64_t gs_packet_count;
 uint64_t gs_byte_count;
} __attribute__((__packed__));
struct ofp_group_stats {
 uint16_t gs_length;
 uint8_t gs_pad[2];
 uint32_t gs_group_id;
 uint32_t gs_ref_count;
 uint8_t gs_pad2[4];
 uint64_t gs_packet_count;
 uint64_t gs_byte_count;
 uint32_t gs_duration_sec;
 uint32_t gs_duration_nsec;
 struct ofp_bucket_counter gs_bucket_stats[0];
} __attribute__((__packed__));
struct ofp_group_desc {
 uint16_t gd_length;
 uint8_t gd_type;
 uint8_t gd_pad;
 uint32_t gd_group_id;
 struct ofp_bucket gd_buckets[0];
} __attribute__((__packed__));
enum ofp_state {
 OFP_STATE_CLOSED,
 OFP_STATE_HELLO_WAIT,
 OFP_STATE_FEATURE_WAIT,
 OFP_STATE_ESTABLISHED
};
struct dlt_openflow_hdr {
 uint32_t of_direction;
 uint64_t of_datapath_id;
} __attribute__((__packed__));
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
struct swofp_flow_entry {
 uint64_t swfe_cookie;
 uint16_t swfe_priority;
 uint8_t swfe_table_id;
 struct ofp_match *swfe_match;
 struct { struct swofp_flow_entry *le_next; struct swofp_flow_entry **le_prev; } swfe_next;
 uint64_t swfe_packet_cnt;
 uint64_t swfe_byte_cnt;
 struct ofp_instruction_goto_table *swfe_goto_table;
 struct ofp_instruction_write_metadata *swfe_write_metadata;
 struct ofp_instruction_actions *swfe_write_actions;
 struct ofp_instruction_actions *swfe_apply_actions;
 struct ofp_instruction_actions *swfe_clear_actions;
 struct ofp_instruction_meter *swfe_meter;
 struct ofp_instruction_experimenter *swfe_experimenter;
 struct timespec swfe_installed_time;
 struct timespec swfe_idle_time;
 uint16_t swfe_idle_timeout;
 uint16_t swfe_hard_timeout;
 uint16_t swfe_flags;
 int swfe_tablemiss;
};
struct swofp_flow_table {
 uint32_t swft_table_id;
 struct { struct swofp_flow_table *tqe_next; struct swofp_flow_table **tqe_prev; } swft_table_next;
 uint64_t swft_lookup_count;
 uint64_t swft_matched_count;
 struct { struct swofp_flow_entry *lh_first; } swft_flow_list;
 uint32_t swft_flow_num;
};
struct swofp_group_entry {
 uint32_t swge_group_id;
 struct { struct swofp_group_entry *le_next; struct swofp_group_entry **le_prev; } swge_next;
 uint64_t swge_packet_count;
 uint64_t swge_byte_count;
 uint32_t swge_ref_count;
 uint8_t swge_type;
 uint32_t swge_buckets_len;
 struct ofp_bucket *swge_buckets;
 struct ofp_bucket_counter *swge_bucket_counter;
 struct timespec swge_installed_time;
};
struct swofp_action_set {
 uint16_t swas_type;
 struct ofp_action_header *swas_action;
};
struct swofp_pipeline_desc {
 uint32_t swpld_table_id;
 uint64_t swpld_cookie;
 uint64_t swpld_metadata;
 struct switch_flow_classify *swpld_swfcl;
 struct switch_flow_classify swpld_pre_swfcl;
 struct switch_fwdp_queue swpld_fwdp_q;
 struct swofp_action_set swpld_action_set[18];
 struct ofp_action_header *swpld_set_fields[40];
 int swpld_tablemiss;
};
struct swofp_ofs {
 uint32_t swofs_xidnxt;
 uint64_t swofs_datapath_id;
 struct ofp_switch_config swofs_switch_config;
 struct timeout swofs_flow_timeout;
 uint32_t swofs_flow_max_entry;
 struct { struct swofp_flow_table *tqh_first; struct swofp_flow_table **tqh_last; } swofs_table_list;
 uint32_t swofs_group_max_table;
 int swofs_group_table_num;
 struct { struct swofp_group_entry *lh_first; } swofs_group_table;
 int (*swofp_cp_init)(struct switch_softc *);
};
struct swofp_mpmsg {
 struct mbuf *swmp_hdr;
 struct mbuf_list swmp_body;
};
typedef int (*ofp_msg_handler)(struct switch_softc *, struct mbuf *);
void swofp_forward_ofs(struct switch_softc *, struct switch_flow_classify *,
     struct mbuf *);
int swofp_input(struct switch_softc *, struct mbuf *);
int swofp_output(struct switch_softc *, struct mbuf *);
void swofp_timer(void *);
struct ofp_oxm_class
 *swofp_lookup_oxm_handler(struct ofp_ox_match *);
ofp_msg_handler
 swofp_lookup_msg_handler(uint8_t);
ofp_msg_handler
 swofp_lookup_mpmsg_handler(uint16_t);
struct ofp_action_handler
 *swofp_lookup_action_handler(uint16_t);
ofp_msg_handler
 *swofp_flow_mod_lookup_handler(uint8_t);
struct swofp_pipeline_desc
 *swofp_pipeline_desc_create(struct switch_flow_classify *);
void swofp_pipeline_desc_destroy(struct swofp_pipeline_desc *);
int swofp_flow_match_by_swfcl(struct ofp_match *,
     struct switch_flow_classify *);
struct swofp_flow_entry
 *swofp_flow_lookup(struct swofp_flow_table *,
     struct switch_flow_classify *);
struct swofp_flow_table
 *swofp_flow_table_lookup(struct switch_softc *, uint16_t);
struct swofp_flow_table
 *swofp_flow_table_add(struct switch_softc *, uint16_t);
int swofp_flow_table_delete(struct switch_softc *, uint16_t);
void swofp_flow_table_delete_all(struct switch_softc *);
void swofp_flow_delete_on_table_by_group(struct switch_softc *,
     struct swofp_flow_table *, uint32_t);
void swofp_flow_delete_on_table(struct switch_softc *,
     struct swofp_flow_table *, struct ofp_match *, uint16_t,
     uint64_t, uint64_t cookie_mask, uint32_t,
     uint32_t, int);
struct swofp_group_entry
 *swofp_group_entry_lookup(struct switch_softc *, uint32_t);
int swofp_group_entry_add(struct switch_softc *,
     struct swofp_group_entry *);
int swofp_group_entry_delete(struct switch_softc *,
     struct swofp_group_entry *);
int swofp_group_entry_delete_all(struct switch_softc *);
int swofp_validate_buckets(struct switch_softc *, struct mbuf *, uint8_t,
     uint16_t *, uint16_t *);
int swofp_flow_entry_put_instructions(struct switch_softc *,
     struct mbuf *, struct swofp_flow_entry *, uint16_t *, uint16_t *);
void swofp_flow_entry_table_free(struct ofp_instruction **);
void swofp_flow_entry_instruction_free(struct swofp_flow_entry *);
void swofp_flow_entry_free(struct swofp_flow_entry **);
void swofp_flow_entry_add(struct switch_softc *, struct swofp_flow_table *,
     struct swofp_flow_entry *);
void swofp_flow_entry_delete(struct switch_softc *,
     struct swofp_flow_table *, struct swofp_flow_entry *, uint8_t);
int swofp_flow_mod_cmd_common_modify(struct switch_softc *,
     struct mbuf *, int );
int swofp_flow_cmp_non_strict(struct swofp_flow_entry *,
     struct ofp_match *);
int swofp_flow_cmp_strict(struct swofp_flow_entry *, struct ofp_match *,
     uint32_t);
int swofp_flow_cmp_common(struct swofp_flow_entry *,
     struct ofp_match *, int);
struct swofp_flow_entry
 *swofp_flow_search_by_table(struct swofp_flow_table *,
     struct ofp_match *, uint16_t);
int swofp_flow_has_group(struct ofp_instruction_actions *, uint32_t);
int swofp_flow_filter_out_port(struct ofp_instruction_actions *,
     uint32_t);
int swofp_flow_filter(struct swofp_flow_entry *, uint64_t, uint64_t,
     uint32_t, uint32_t);
void swofp_flow_timeout(struct switch_softc *);
int swofp_validate_oxm(struct ofp_ox_match *, uint16_t *);
int swofp_validate_flow_match(struct ofp_match *, uint16_t *);
int swofp_validate_flow_instruction(struct switch_softc *,
     struct ofp_instruction *, size_t, uint16_t *, uint16_t *);
int swofp_validate_action(struct switch_softc *sc,
     struct ofp_action_header *, size_t, uint16_t *);
int swofp_ox_cmp_data(struct ofp_ox_match *,
     struct ofp_ox_match *, int);
int swofp_ox_cmp_ipv6_addr(struct ofp_ox_match *,
     struct ofp_ox_match *, int);
int swofp_ox_cmp_ipv4_addr(struct ofp_ox_match *,
     struct ofp_ox_match *, int);
int swofp_ox_cmp_vlan_vid(struct ofp_ox_match *,
     struct ofp_ox_match *, int);
int swofp_ox_cmp_ether_addr(struct ofp_ox_match *,
     struct ofp_ox_match *, int);
int swofp_ox_match_ether_addr(struct switch_flow_classify *,
     struct ofp_ox_match *);
int swofp_ox_match_vlan_vid(struct switch_flow_classify *,
     struct ofp_ox_match *);
int swofp_ox_match_ipv6_addr(struct switch_flow_classify *,
     struct ofp_ox_match *);
int swofp_ox_match_ipv4_addr(struct switch_flow_classify *,
     struct ofp_ox_match *);
int swofp_ox_match_uint8(struct switch_flow_classify *,
     struct ofp_ox_match *);
int swofp_ox_match_uint16(struct switch_flow_classify *,
     struct ofp_ox_match *);
int swofp_ox_match_uint32(struct switch_flow_classify *,
     struct ofp_ox_match *);
int swofp_ox_match_uint64(struct switch_flow_classify *,
     struct ofp_ox_match *);
void swofp_ox_match_put_start(struct ofp_match *);
int swofp_ox_match_put_end(struct ofp_match *);
int swofp_ox_match_put_uint32(struct ofp_match *, uint8_t, uint32_t);
int swofp_ox_match_put_uint64(struct ofp_match *, uint8_t, uint64_t);
int swofp_nx_match_put(struct ofp_match *, uint8_t, int, caddr_t);
struct mbuf
 *swofp_action_push_vlan(struct switch_softc *, struct mbuf *,
     struct swofp_pipeline_desc *, struct ofp_action_header *);
struct mbuf
 *swofp_action_pop_vlan(struct switch_softc *, struct mbuf *,
     struct swofp_pipeline_desc *, struct ofp_action_header *);
struct mbuf
 *swofp_expand_8021q_tag(struct mbuf *);
struct mbuf
 *swofp_apply_set_field_udp(struct mbuf *, int,
     struct switch_flow_classify *, struct switch_flow_classify *);
struct mbuf
 *swofp_apply_set_field_tcp(struct mbuf *, int,
     struct switch_flow_classify *, struct switch_flow_classify *);
struct mbuf
 *swofp_apply_set_field_nd6(struct mbuf *, int,
     struct switch_flow_classify *, struct switch_flow_classify *);
struct mbuf
 *swofp_apply_set_field_icmpv6(struct mbuf *m, int,
     struct switch_flow_classify *, struct switch_flow_classify *);
struct mbuf
 *swofp_apply_set_field_icmpv4(struct mbuf *, int,
     struct switch_flow_classify *, struct switch_flow_classify *);
struct mbuf
 *swofp_apply_set_field_ipv6(struct mbuf *, int,
     struct switch_flow_classify *, struct switch_flow_classify *);
struct mbuf
 *swofp_apply_set_field_ipv4(struct mbuf *, int,
     struct switch_flow_classify *, struct switch_flow_classify *);
struct mbuf
 *swofp_apply_set_field_arp(struct mbuf *, int,
     struct switch_flow_classify *, struct switch_flow_classify *);
struct mbuf
 *swofp_apply_set_field_ether(struct mbuf *, int,
     struct switch_flow_classify *, struct switch_flow_classify *);
struct mbuf
 *swofp_apply_set_field_tunnel(struct mbuf *, int,
     struct switch_flow_classify *, struct switch_flow_classify *);
struct mbuf
 *swofp_apply_set_field(struct mbuf *, struct swofp_pipeline_desc *);
int swofp_ox_set_vlan_vid(struct switch_flow_classify *,
     struct ofp_ox_match *);
int swofp_ox_set_uint8(struct switch_flow_classify *,
     struct ofp_ox_match *);
int swofp_ox_set_uint16(struct switch_flow_classify *,
     struct ofp_ox_match *);
int swofp_ox_set_uint32(struct switch_flow_classify *,
     struct ofp_ox_match *);
int swofp_ox_set_uint64(struct switch_flow_classify *,
     struct ofp_ox_match *);
int swofp_ox_set_ether_addr(struct switch_flow_classify *,
     struct ofp_ox_match *);
int swofp_ox_set_ipv4_addr(struct switch_flow_classify *,
     struct ofp_ox_match *);
int swofp_ox_set_ipv6_addr(struct switch_flow_classify *,
     struct ofp_ox_match *);
int swofp_action_output_controller(struct switch_softc *, struct mbuf *,
     struct swofp_pipeline_desc *, uint16_t, uint8_t);
struct mbuf
 *swofp_action_output(struct switch_softc *, struct mbuf *,
     struct swofp_pipeline_desc *, struct ofp_action_header *);
struct mbuf
 *swofp_action_group_all(struct switch_softc *, struct mbuf *,
     struct swofp_pipeline_desc *, struct swofp_group_entry *);
struct mbuf
 *swofp_action_group(struct switch_softc *, struct mbuf *,
     struct swofp_pipeline_desc *, struct ofp_action_header *);
struct mbuf
 *swofp_action_set_field(struct switch_softc *, struct mbuf *,
     struct swofp_pipeline_desc *, struct ofp_action_header *);
struct mbuf
 *swofp_execute_action(struct switch_softc *, struct mbuf *,
     struct swofp_pipeline_desc *, struct ofp_action_header *);
struct mbuf
 *swofp_execute_action_set_field(struct switch_softc *, struct mbuf *,
     struct swofp_pipeline_desc *, struct ofp_action_header *);
struct mbuf
 *swofp_execute_action_set(struct switch_softc *, struct mbuf *,
     struct swofp_pipeline_desc *);
struct mbuf
 *swofp_apply_actions(struct switch_softc *, struct mbuf *,
     struct swofp_pipeline_desc *, struct ofp_instruction_actions *);
struct swofp_action_set
 *swofp_lookup_action_set(struct swofp_pipeline_desc *, uint16_t);
void swofp_write_actions_set_field(struct swofp_action_set *,
     struct ofp_action_header *);
int swofp_write_actions(struct ofp_instruction_actions *,
     struct swofp_pipeline_desc *);
void swofp_clear_actions_set_field(struct swofp_action_set *,
     struct ofp_action_header *);
int swofp_clear_actions(struct ofp_instruction_actions *,
     struct swofp_pipeline_desc *);
void swofp_write_metadata(struct ofp_instruction_write_metadata *,
     struct swofp_pipeline_desc *);
void swofp_send_hello(struct switch_softc *);
int swofp_recv_hello(struct switch_softc *, struct mbuf *);
int swofp_send_echo(struct switch_softc *, struct mbuf *);
int swofp_recv_echo(struct switch_softc *, struct mbuf *);
void swofp_send_error(struct switch_softc *, struct mbuf *,
     uint16_t, uint16_t);
int swofp_recv_features_req(struct switch_softc *, struct mbuf *);
int swofp_recv_config_req(struct switch_softc *, struct mbuf *);
int swofp_recv_set_config(struct switch_softc *, struct mbuf *);
int swofp_send_flow_removed(struct switch_softc *,
     struct swofp_flow_entry *, uint8_t);
int swofp_recv_packet_out(struct switch_softc *, struct mbuf *);
int swofp_flow_mod_cmd_add(struct switch_softc *, struct mbuf *);
int swofp_flow_mod_cmd_common_modify(struct switch_softc *,
     struct mbuf *, int);
int swofp_flow_mod_cmd_modify(struct switch_softc *, struct mbuf *);
int swofp_flow_mod_cmd_modify_strict(struct switch_softc *, struct mbuf *);
int swofp_flow_mod_cmd_common_delete(struct switch_softc *,
     struct mbuf *, int);
int swofp_flow_mod_cmd_delete(struct switch_softc *, struct mbuf *);
int swofp_flow_mod_cmd_delete_strict(struct switch_softc *, struct mbuf *);
int swofp_flow_mod(struct switch_softc *, struct mbuf *);
int swofp_group_mod_add(struct switch_softc *, struct mbuf *);
int swofp_group_mod_modify(struct switch_softc *, struct mbuf *);
int swofp_group_mod_delete(struct switch_softc *, struct mbuf *);
int swofp_group_mod(struct switch_softc *, struct mbuf *);
int swofp_multipart_req(struct switch_softc *, struct mbuf *);
int swofp_barrier_req(struct switch_softc *, struct mbuf *);
void swofp_barrier_reply(struct switch_softc *, struct mbuf *);
int swofp_mpmsg_reply_create(struct ofp_multipart *, struct swofp_mpmsg *);
int swofp_mpmsg_put(struct swofp_mpmsg *, caddr_t, size_t);
int swofp_mpmsg_m_put(struct swofp_mpmsg *, struct mbuf *);
void swofp_mpmsg_destroy(struct swofp_mpmsg *);
int swofp_multipart_reply(struct switch_softc *, struct swofp_mpmsg *);
int swofp_put_flow(struct mbuf *, struct swofp_flow_table *,
     struct swofp_flow_entry *);
int swofp_put_flows_from_table(struct swofp_mpmsg *,
     struct swofp_flow_table *, struct ofp_flow_stats_request *);
void swofp_aggregate_stat_from_table(struct ofp_aggregate_stats *,
     struct swofp_flow_table *, struct ofp_aggregate_stats_request *);
int swofp_table_features_put_oxm(struct mbuf *, int *, uint16_t);
int swofp_table_features_put_actions(struct mbuf *, int *, uint16_t);
int swofp_table_features_put_instruction(struct mbuf *, int *, uint16_t);
int swofp_mp_recv_desc(struct switch_softc *, struct mbuf *);
int swofp_mp_recv_flow(struct switch_softc *, struct mbuf *);
int swofp_mp_recv_aggregate_flow_stat(struct switch_softc *, struct mbuf *);
int swofp_mp_recv_table_stats(struct switch_softc *, struct mbuf *);
int swofp_mp_recv_table_features(struct switch_softc *, struct mbuf *);
int swofp_mp_recv_port_stats(struct switch_softc *, struct mbuf *);
int swofp_mp_recv_port_desc(struct switch_softc *, struct mbuf *);
int swofp_mp_recv_group_desc(struct switch_softc *, struct mbuf *);
struct ofp_msg_class {
 uint8_t msg_type;
 ofp_msg_handler msg_handler;
};
struct ofp_msg_class ofp_msg_table[] = {
 { 0, swofp_recv_hello },
 { 1, ((void *)0) },
 { 2, swofp_recv_echo },
 { 3, ((void *)0) },
 { 4, ((void *)0) },
 { 5, swofp_recv_features_req },
 { 6, ((void *)0) },
 { 7, swofp_recv_config_req },
 { 8, ((void *)0) },
 { 9, swofp_recv_set_config },
 { 10, ((void *)0) },
 { 11, ((void *)0) },
 { 12, ((void *)0) },
 { 13, swofp_recv_packet_out },
 { 14, swofp_flow_mod },
 { 15, swofp_group_mod },
 { 16, ((void *)0) },
 { 17, ((void *)0) },
 { 18, swofp_multipart_req },
 { 19, ((void *)0) },
 { 20, swofp_barrier_req },
 { 21, ((void *)0) },
 { 22, ((void *)0) },
 { 23, ((void *)0) },
 { 24, ((void *)0) },
 { 25, ((void *)0) },
 { 26, ((void *)0) },
 { 27, ((void *)0) },
 { 28, ((void *)0) },
 { 29, ((void *)0) }
};
struct ofp_flow_mod_class {
 uint8_t ofm_cmd_type;
 ofp_msg_handler ofm_cmd_handler;
};
struct ofp_flow_mod_class ofp_flow_mod_table[] = {
 { 0, swofp_flow_mod_cmd_add },
 { 1, swofp_flow_mod_cmd_modify },
 { 2, swofp_flow_mod_cmd_modify_strict },
 { 3, swofp_flow_mod_cmd_delete },
 { 4, swofp_flow_mod_cmd_delete_strict },
};
struct ofp_mpmsg_class {
 uint8_t msgsg_type;
 ofp_msg_handler mpmsg_handler;
};
struct ofp_mpmsg_class ofp_mpmsg_table[] = {
 { 0, swofp_mp_recv_desc },
 { 1, swofp_mp_recv_flow },
 { 2, swofp_mp_recv_aggregate_flow_stat },
 { 3, swofp_mp_recv_table_stats },
 { 4, swofp_mp_recv_port_stats },
 { 5, ((void *)0) },
 { 6, ((void *)0) },
 { 7, swofp_mp_recv_group_desc },
 { 8, ((void *)0) },
 { 9, ((void *)0) },
 { 10, ((void *)0) },
 { 11, ((void *)0) },
 { 12, swofp_mp_recv_table_features },
 { 13, swofp_mp_recv_port_desc }
};
struct ofp_oxm_class {
 uint8_t oxm_field;
 uint8_t oxm_len;
 uint8_t oxm_flags;
 int (*oxm_match)(struct switch_flow_classify *,
      struct ofp_ox_match *);
 int (*oxm_set)(struct switch_flow_classify *,
      struct ofp_ox_match *);
 int (*oxm_cmp)(struct ofp_ox_match *,
      struct ofp_ox_match *, int);
};
struct ofp_oxm_class ofp_oxm_handlers[] = {
 {
  0,
  sizeof(uint32_t),
  0,
  swofp_ox_match_uint32, ((void *)0),
  swofp_ox_cmp_data
 },
 {
  1,
  sizeof(uint32_t),
  0,
  ((void *)0), ((void *)0),
  ((void *)0)
 },
 {
  2,
  sizeof(uint64_t),
  0x1|0x2,
  swofp_ox_match_uint64, ((void *)0),
  ((void *)0)
 },
 {
  3,
  6,
  0x1|0x2,
  swofp_ox_match_ether_addr, swofp_ox_set_ether_addr,
  swofp_ox_cmp_ether_addr
 },
 {
  4,
  6,
  0x1|0x2,
  swofp_ox_match_ether_addr, swofp_ox_set_ether_addr,
  swofp_ox_cmp_ether_addr
 },
 {
  5,
  sizeof(uint16_t),
  0x2,
  swofp_ox_match_uint16, swofp_ox_set_uint16,
  swofp_ox_cmp_data
 },
 {
  6,
  sizeof(uint16_t),
  0x1|0x2,
  swofp_ox_match_vlan_vid, swofp_ox_set_vlan_vid,
  swofp_ox_cmp_vlan_vid
 },
 {
  7,
  sizeof(uint8_t),
  0x2,
  swofp_ox_match_uint8, swofp_ox_set_uint16,
  swofp_ox_cmp_data
 },
 {
  8,
  sizeof(uint8_t),
  0x2,
  swofp_ox_match_uint8, swofp_ox_set_uint8,
  swofp_ox_cmp_data
 },
 {
  9,
  sizeof(uint8_t),
  0x2,
  swofp_ox_match_uint8, swofp_ox_set_uint8,
  swofp_ox_cmp_data
 },
 {
  10,
  sizeof(uint8_t),
  0x2,
  swofp_ox_match_uint8, swofp_ox_set_uint8,
  swofp_ox_cmp_data
 },
 {
  11,
  sizeof(uint32_t),
  0x1|0x2,
  swofp_ox_match_ipv4_addr, swofp_ox_set_ipv4_addr,
  swofp_ox_cmp_ipv4_addr
 },
 {
  12,
  sizeof(uint32_t),
  0x1|0x2,
  swofp_ox_match_ipv4_addr, swofp_ox_set_ipv4_addr,
  swofp_ox_cmp_ipv4_addr
 },
 {
  13,
  sizeof(uint16_t),
  0x2,
  swofp_ox_match_uint16, swofp_ox_set_uint16,
  swofp_ox_cmp_data
 },
 {
  14,
  sizeof(uint16_t),
  0x2,
  swofp_ox_match_uint16, swofp_ox_set_uint16,
  swofp_ox_cmp_data
 },
 {
  15,
  sizeof(uint16_t),
  0x2,
  swofp_ox_match_uint16, swofp_ox_set_uint16,
  swofp_ox_cmp_data
 },
 {
  16,
  sizeof(uint16_t),
  0x2,
  swofp_ox_match_uint16, swofp_ox_set_uint16,
  swofp_ox_cmp_data
 },
 {
  17,
  sizeof(uint16_t),
  0x2,
  swofp_ox_match_uint16, swofp_ox_set_uint16,
  swofp_ox_cmp_data
 },
 {
  18,
  sizeof(uint16_t),
  0x2,
  swofp_ox_match_uint16, swofp_ox_set_uint16,
  swofp_ox_cmp_data
 },
 {
  19,
  sizeof(uint8_t),
  0x2,
  swofp_ox_match_uint8, swofp_ox_set_uint8,
  swofp_ox_cmp_data
 },
 {
  20,
  sizeof(uint8_t),
  0x2,
  swofp_ox_match_uint8, swofp_ox_set_uint8,
  swofp_ox_cmp_data
 },
 {
  21,
  sizeof(uint16_t),
  0x2,
  swofp_ox_match_uint16, swofp_ox_set_uint16,
  swofp_ox_cmp_data
 },
 {
  22,
  sizeof(uint32_t),
  0x1|0x2,
  swofp_ox_match_ipv4_addr, swofp_ox_set_ipv4_addr,
  swofp_ox_cmp_ipv4_addr
 },
 {
  23,
  sizeof(uint32_t),
  0x1|0x2,
  swofp_ox_match_ipv4_addr, swofp_ox_set_ipv4_addr,
  swofp_ox_cmp_ipv4_addr
 },
 {
  24,
  6,
  0x1|0x2,
  swofp_ox_match_ether_addr, swofp_ox_set_ether_addr,
  swofp_ox_cmp_ether_addr
 },
 {
  25,
  6,
  0x1|0x2,
  swofp_ox_match_ether_addr, swofp_ox_set_ether_addr,
  swofp_ox_cmp_ether_addr
 },
 {
  26,
  sizeof(struct in6_addr),
  0x1|0x2,
  swofp_ox_match_ipv6_addr, swofp_ox_set_ipv6_addr,
  swofp_ox_cmp_ipv6_addr
 },
 {
  27,
  sizeof(struct in6_addr),
  0x1|0x2,
  swofp_ox_match_ipv6_addr, swofp_ox_set_ipv6_addr,
  swofp_ox_cmp_ipv6_addr
 },
 {
  28,
  sizeof(uint32_t),
  0x1|0x2,
  swofp_ox_match_uint32, swofp_ox_set_uint32,
  swofp_ox_cmp_data
 },
 {
  29,
  sizeof(uint8_t),
  0x2,
  swofp_ox_match_uint8, swofp_ox_set_uint8,
  swofp_ox_cmp_data
 },
 {
  30,
  sizeof(uint8_t),
  0x2,
  swofp_ox_match_uint8, swofp_ox_set_uint8,
  swofp_ox_cmp_data
 },
 {
  31,
  sizeof(struct in6_addr),
  0x2,
  swofp_ox_match_ipv6_addr, swofp_ox_set_ipv6_addr,
  swofp_ox_cmp_ipv6_addr
 },
 {
  32,
  6,
  0x2,
  swofp_ox_match_ether_addr, swofp_ox_set_ether_addr,
  swofp_ox_cmp_ether_addr
 },
 {
  33,
  6,
  0x2,
  swofp_ox_match_ether_addr, swofp_ox_set_ether_addr,
  swofp_ox_cmp_ether_addr
 },
 {
  34,
  sizeof(uint32_t),
  0x2,
  ((void *)0), ((void *)0),
  ((void *)0)
 },
 {
  35,
  sizeof(uint8_t),
  0x2,
  ((void *)0), ((void *)0),
  ((void *)0)
 },
 {
  36,
  sizeof(uint8_t),
  0x2,
  ((void *)0), ((void *)0),
  ((void *)0)
 },
 {
  37,
  3,
  0x1|0x2,
  ((void *)0), ((void *)0),
  ((void *)0)
 },
 {
  38,
  sizeof(uint64_t),
  0x2,
  swofp_ox_match_uint64, swofp_ox_set_uint64,
  swofp_ox_cmp_data
 },
 {
  39,
  sizeof(uint16_t),
  0x2,
  ((void *)0), ((void *)0),
  ((void *)0)
 },
};
struct ofp_oxm_class ofp_oxm_nxm_handlers[] = {
 {
  38,
  sizeof(uint64_t),
  0x1|0x2,
  swofp_ox_match_uint64, swofp_ox_set_uint64,
  swofp_ox_cmp_data
 },
 {
  31,
  sizeof(uint32_t),
  0x1|0x2,
  swofp_ox_match_ipv4_addr, swofp_ox_set_ipv4_addr,
  swofp_ox_cmp_ipv4_addr
 },
 {
  32,
  sizeof(uint32_t),
  0x1|0x2,
  swofp_ox_match_ipv4_addr, swofp_ox_set_ipv4_addr,
  swofp_ox_cmp_ipv4_addr
 },
 {
  109,
  sizeof(struct in6_addr),
  0x1|0x2,
  swofp_ox_match_ipv6_addr, swofp_ox_set_ipv6_addr,
  swofp_ox_cmp_ipv6_addr
 },
 {
  110,
  sizeof(struct in6_addr),
  0x1|0x2,
  swofp_ox_match_ipv6_addr, swofp_ox_set_ipv6_addr,
  swofp_ox_cmp_ipv6_addr
 },
};
struct ofp_action_handler {
 uint16_t action_type;
 struct mbuf * (*action)(struct switch_softc *, struct mbuf *,
     struct swofp_pipeline_desc *, struct ofp_action_header *);
};
struct ofp_action_handler ofp_action_handlers[] = {
 {
  12,
  ((void *)0)
 },
 {
  20,
  ((void *)0)
 },
 {
  27,
  ((void *)0)
 },
 {
  18,
  swofp_action_pop_vlan
 },
 {
  19,
  ((void *)0)
 },
 {
  26,
  ((void *)0)
 },
 {
  17,
  swofp_action_push_vlan
 },
 {
  11,
  ((void *)0)
 },
 {
  24,
  ((void *)0)
 },
 {
  16,
  ((void *)0)
 },
 {
  15,
  ((void *)0)
 },
 {
  23,
  ((void *)0)
 },
 {
  25,
  swofp_action_set_field
 },
 {
  21,
  ((void *)0)
 },
 {
  22,
  swofp_action_group
 },
 {
  0,
  swofp_action_output
 },
 {
  0xffff,
  ((void *)0)
 },
};
extern struct pool swfcl_pool;
struct pool swpld_pool;
void
swofp_attach(void)
{
 pool_init(&swpld_pool, sizeof(struct swofp_pipeline_desc), 0, 0, 0,
     "swpld", ((void *)0));
}
int
swofp_create(struct switch_softc *sc)
{
 struct swofp_ofs *swofs;
 int error;
 swofs = malloc(sizeof(*swofs), 2, 0x0002|0x0008);
 if (swofs == ((void *)0))
  return (12);
 sc->sc_ofs = swofs;
 do { (&swofs->swofs_table_list)->tqh_first = ((void *)0); (&swofs->swofs_table_list)->tqh_last = &(&swofs->swofs_table_list)->tqh_first; } while (0);
 if ((swofp_flow_table_add(sc, 0)) == ((void *)0)) {
  error = 55;
  free(swofs, 2, sizeof(*swofs));
  return (error);
 }
 swofs->swofs_xidnxt = 1;
 arc4random_buf(&swofs->swofs_datapath_id,
     sizeof(swofs->swofs_datapath_id));
 timeout_set(&swofs->swofs_flow_timeout, swofp_timer, sc);
 timeout_add_sec(&swofs->swofs_flow_timeout, 10);
 swofs->swofs_group_max_table = 1000;
 swofs->swofs_flow_max_entry = 10000;
 sc->sc_capabilities |= 0x0004;
 sc->switch_process_forward = swofp_forward_ofs;
 bpfattach(&sc->sc_ofbpf, &sc->sc_if, 267,
     sizeof(struct ofp_header));
 return (0);
}
void
swofp_destroy(struct switch_softc *sc)
{
 struct swofp_ofs *swofs = sc->sc_ofs;
 if ((sc->sc_capabilities & 0x0004) == 0 || swofs == ((void *)0))
  return;
 timeout_del(&swofs->swofs_flow_timeout);
 sc->sc_capabilities &= ~0x0004;
 sc->switch_process_forward = ((void *)0);
 swofp_group_entry_delete_all(sc);
 free(swofs, 2, sizeof(*swofs));
}
int
swofp_init(struct switch_softc *sc)
{
 sc->sc_swdev->swdev_input = swofp_input;
 swofp_send_hello(sc);
 return (0);
}
uint32_t
swofp_assign_portno(struct switch_softc *sc, uint32_t req)
{
 struct switch_port *swpo;
 uint32_t candidate;
 for((swpo) = ((&sc->sc_swpo_list)->tqh_first); (swpo) != ((void *)0); (swpo) = ((swpo)->swpo_list_next.tqe_next)) {
  if (swpo->swpo_port_no == req)
   break;
 }
 if (swpo == ((void *)0))
  return (req);
 candidate = (req << 16) | req;
 while (1) {
  for((swpo) = ((&sc->sc_swpo_list)->tqh_first); (swpo) != ((void *)0); (swpo) = ((swpo)->swpo_list_next.tqe_next)) {
   if (swpo->swpo_port_no == candidate)
    break;
  }
  if (swpo == ((void *)0))
   return (candidate);
  if (candidate < 0xffffff00)
   candidate++;
  else
   candidate = 0;
 }
}
int
swofp_ioctl(struct ifnet *ifp, unsigned long cmd, caddr_t data)
{
 struct switch_softc *sc = ifp->if_softc;
 struct swofp_ofs *swofs = sc->sc_ofs;
 struct ifbrparam *bparam = (struct ifbrparam *)data;
 struct ifbreq *breq = (struct ifbreq *)data;
 struct switch_port *swpo;
 struct ifnet *ifs;
 int error = 0;
 switch (cmd) {
 case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct ifbrparam) & 0x1fff) << 16) | ((('i')) << 8) | ((91))):
  __builtin_memcpy((&bparam->ifbrp_ifbrpu.ifbrpu_datapath), (&swofs->swofs_datapath_id), (sizeof(uint64_t)));
  break;
 case ((unsigned long)0x80000000 | ((sizeof(struct ifbrparam) & 0x1fff) << 16) | ((('i')) << 8) | ((92))):
  if ((error = suser((__curcpu->ci_self)->ci_curproc)) != 0)
   break;
  __builtin_memcpy((&swofs->swofs_datapath_id), (&bparam->ifbrp_ifbrpu.ifbrpu_datapath), (sizeof(uint64_t)));
  break;
 case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct ifbrparam) & 0x1fff) << 16) | ((('i')) << 8) | ((96))):
  bparam->ifbrp_ifbrpu.ifbrpu_csize = swofs->swofs_flow_max_entry;
  break;
 case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct ifbrparam) & 0x1fff) << 16) | ((('i')) << 8) | ((93))):
  bparam->ifbrp_ifbrpu.ifbrpu_maxgroup = swofs->swofs_group_max_table;
  break;
 case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct ifbreq) & 0x1fff) << 16) | ((('i')) << 8) | ((95))):
  if ((error = suser((__curcpu->ci_self)->ci_curproc)) != 0)
   break;
  if (breq->ifbr_portno >= 0xffffff00)
   return (22);
  if ((ifs = ifunit(breq->ifbr_ifsname)) == ((void *)0))
   return (2);
  if (ifs->if_switchport == ((void *)0))
   return (2);
  for((swpo) = ((&sc->sc_swpo_list)->tqh_first); (swpo) != ((void *)0); (swpo) = ((swpo)->swpo_list_next.tqe_next)) {
   if (swpo->swpo_port_no == breq->ifbr_portno)
    return (17);
  }
  swpo = (struct switch_port *)ifs->if_switchport;
  swpo->swpo_port_no = breq->ifbr_portno;
  break;
 default:
  error = 25;
  break;
 }
 return (error);
}
struct ofp_oxm_class *
swofp_lookup_oxm_handler(struct ofp_ox_match *oxm)
{
 struct ofp_oxm_class *handlers;
 uint8_t oxm_field;
 int i, len;
 switch (((__uint16_t)(oxm->oxm_class))) {
 case 0x8000:
  handlers = ofp_oxm_handlers;
  len = (sizeof((ofp_oxm_handlers)) / sizeof((ofp_oxm_handlers)[0]));
  break;
 case 0x0001:
  handlers = ofp_oxm_nxm_handlers;
  len = (sizeof((ofp_oxm_nxm_handlers)) / sizeof((ofp_oxm_nxm_handlers)[0]));
  break;
 default:
  return (((void *)0));
 }
 oxm_field = (((oxm)->oxm_fh) >> 1);
 for (i = 0; i < len ; i++) {
  if (handlers[i].oxm_field == oxm_field)
   return (&handlers[i]);
 }
 return (((void *)0));
}
ofp_msg_handler
swofp_lookup_msg_handler(uint8_t type)
{
 if (type >= 30)
  return (((void *)0));
 else
  return (ofp_msg_table[type].msg_handler);
}
ofp_msg_handler
swofp_lookup_mpmsg_handler(uint16_t type)
{
 if (type >= (sizeof((ofp_mpmsg_table)) / sizeof((ofp_mpmsg_table)[0])))
  return (((void *)0));
 else
  return (ofp_mpmsg_table[type].mpmsg_handler);
}
struct ofp_action_handler *
swofp_lookup_action_handler(uint16_t type)
{
 int i;
 for (i = 0; i < (sizeof((ofp_action_handlers)) / sizeof((ofp_action_handlers)[0])); i++) {
  if (ofp_action_handlers[i].action_type == type)
   return &(ofp_action_handlers[i]);
 }
 return (((void *)0));
}
struct swofp_pipeline_desc *
swofp_pipeline_desc_create(struct switch_flow_classify *swfcl)
{
 struct swofp_pipeline_desc *swpld = ((void *)0);
 struct swofp_action_set *swas = ((void *)0);
 int i;
 swpld = pool_get(&swpld_pool, 0x0002|0x0008);
 if (swpld == ((void *)0))
  return (((void *)0));
 swas = swpld->swpld_action_set;
 for (i = 0; i < (sizeof((ofp_action_handlers)) / sizeof((ofp_action_handlers)[0])); i++) {
  swas[i].swas_type = ofp_action_handlers[i].action_type;
  if (swas[i].swas_type == 25)
   swas[i].swas_action = (struct ofp_action_header *)
       swpld->swpld_set_fields;
  else
   swas[i].swas_action = ((void *)0);
 }
 swpld->swpld_swfcl = swfcl;
 return (swpld);
}
void
swofp_pipeline_desc_destroy(struct swofp_pipeline_desc *swpld)
{
 switch_swfcl_free(&swpld->swpld_pre_swfcl);
 pool_put(&swpld_pool, swpld);
}
struct swofp_flow_table *
swofp_flow_table_lookup(struct switch_softc *sc, uint16_t table_id)
{
 struct swofp_ofs *ofs = sc->sc_ofs;
 struct swofp_flow_table *swft;
 for((swft) = ((&ofs->swofs_table_list)->tqh_first); (swft) != ((void *)0); (swft) = ((swft)->swft_table_next.tqe_next)) {
  if (swft->swft_table_id == table_id)
   return (swft);
 }
 return (((void *)0));
}
struct swofp_flow_table *
swofp_flow_table_add(struct switch_softc *sc, uint16_t table_id)
{
 struct swofp_ofs *ofs = sc->sc_ofs;
 struct swofp_flow_table *swft, *new;
 if ((swft = swofp_flow_table_lookup(sc, table_id)) != ((void *)0))
  return (swft);
 if ((new = malloc(sizeof(*new), 2, 0x0002|0x0008)) == ((void *)0))
  return (((void *)0));
 new->swft_table_id = table_id;
 for((swft) = ((&ofs->swofs_table_list)->tqh_first); (swft) != ((void *)0); (swft) = ((swft)->swft_table_next.tqe_next)) {
  if (table_id < swft->swft_table_id)
   break;
 }
 if (swft)
  do { (new)->swft_table_next.tqe_prev = (swft)->swft_table_next.tqe_prev; (new)->swft_table_next.tqe_next = (swft); *(swft)->swft_table_next.tqe_prev = (new); (swft)->swft_table_next.tqe_prev = &(new)->swft_table_next.tqe_next; } while (0);
 else
  do { (new)->swft_table_next.tqe_next = ((void *)0); (new)->swft_table_next.tqe_prev = (&ofs->swofs_table_list)->tqh_last; *(&ofs->swofs_table_list)->tqh_last = (new); (&ofs->swofs_table_list)->tqh_last = &(new)->swft_table_next.tqe_next; } while (0);
 do {} while(0);
 return (new);
}
int
swofp_flow_table_delete(struct switch_softc *sc, uint16_t table_id)
{
 struct swofp_ofs *ofs = sc->sc_ofs;
 struct swofp_flow_table *swft;
 struct swofp_flow_entry *swfe, *tswfe;
 if ((swft = swofp_flow_table_lookup(sc, table_id)) == ((void *)0))
  return 2;
 for ((swfe) = ((&swft->swft_flow_list)->lh_first); (swfe) && ((tswfe) = ((swfe)->swfe_next.le_next), 1); (swfe) = (tswfe)) {
  swfe->swfe_flags &= ~(0x0001);
  swofp_flow_entry_delete(sc, swft, swfe,
      2);
 }
 do { if (((swft)->swft_table_next.tqe_next) != ((void *)0)) (swft)->swft_table_next.tqe_next->swft_table_next.tqe_prev = (swft)->swft_table_next.tqe_prev; else (&ofs->swofs_table_list)->tqh_last = (swft)->swft_table_next.tqe_prev; *(swft)->swft_table_next.tqe_prev = (swft)->swft_table_next.tqe_next; ((swft)->swft_table_next.tqe_prev) = ((void *)-1); ((swft)->swft_table_next.tqe_next) = ((void *)-1); } while (0);
 free(swft, 2, sizeof(*swft));
 do {} while(0);
 return 0;
}
void
swofp_flow_table_delete_all(struct switch_softc *sc)
{
 struct swofp_ofs *ofs = sc->sc_ofs;
 struct swofp_flow_table *swft, *tswft;
 int error;
 for ((swft) = ((&ofs->swofs_table_list)->tqh_first); (swft) != ((void *)0) && ((tswft) = ((swft)->swft_table_next.tqe_next), 1); (swft) = (tswft)) {
  if ((error = swofp_flow_table_delete(sc,swft->swft_table_id)))
   log(3, "can't delete table id:%d (error:%d)\n",
       swft->swft_table_id, error);
 }
}
struct swofp_group_entry *
swofp_group_entry_lookup(struct switch_softc *sc, uint32_t group_id)
{
 struct swofp_ofs *ofs = sc->sc_ofs;
 struct swofp_group_entry *swge;
 for((swge) = ((&ofs->swofs_group_table)->lh_first); (swge)!= ((void *)0); (swge) = ((swge)->swge_next.le_next)) {
  if (swge->swge_group_id == group_id)
   return swge;
 }
 return (((void *)0));
}
int
swofp_group_entry_add(struct switch_softc *sc, struct swofp_group_entry *swge)
{
 struct swofp_ofs *ofs = sc->sc_ofs;
 do { if (((swge)->swge_next.le_next = (&ofs->swofs_group_table)->lh_first) != ((void *)0)) (&ofs->swofs_group_table)->lh_first->swge_next.le_prev = &(swge)->swge_next.le_next; (&ofs->swofs_group_table)->lh_first = (swge); (swge)->swge_next.le_prev = &(&ofs->swofs_group_table)->lh_first; } while (0);
 ofs->swofs_group_table_num++;
 do {} while(0);
 return (0);
}
int
swofp_group_entry_delete(struct switch_softc *sc,
    struct swofp_group_entry *swge)
{
 struct swofp_ofs *ofs = sc->sc_ofs;
 struct swofp_flow_table *swft;
 do {} while(0);
 do { if ((swge)->swge_next.le_next != ((void *)0)) (swge)->swge_next.le_next->swge_next.le_prev = (swge)->swge_next.le_prev; *(swge)->swge_next.le_prev = (swge)->swge_next.le_next; ((swge)->swge_next.le_prev) = ((void *)-1); ((swge)->swge_next.le_next) = ((void *)-1); } while (0);
 ofs->swofs_group_table_num--;
 for((swft) = ((&ofs->swofs_table_list)->tqh_first); (swft) != ((void *)0); (swft) = ((swft)->swft_table_next.tqe_next)) {
  swofp_flow_delete_on_table_by_group(sc, swft,
      swge->swge_group_id);
 }
 free(swge->swge_buckets, 2, swge->swge_buckets_len);
 free(swge, 2, sizeof(*swge));
 return (0);
}
int
swofp_group_entry_delete_all(struct switch_softc *sc)
{
 struct swofp_ofs *ofs = sc->sc_ofs;
 struct swofp_group_entry *swge, *tswge;
 for ((swge) = ((&ofs->swofs_group_table)->lh_first); (swge) && ((tswge) = ((swge)->swge_next.le_next), 1); (swge) = (tswge)) {
  swofp_group_entry_delete(sc, swge);
 }
 return (0);
}
int
swofp_validate_buckets(struct switch_softc *sc, struct mbuf *m, uint8_t type,
    uint16_t *etype, uint16_t *error)
{
 struct ofp_group_mod *ogm;
 struct ofp_bucket *bucket;
 struct ofp_action_header *ah;
 uint16_t weight, remaining;
 int start, len, off, num;
 size_t blen;
 *etype = 6;
 ogm = ((struct ofp_group_mod *)((m)->m_hdr.mh_data));
 start = __builtin_offsetof(struct ofp_group_mod, gm_buckets);
 remaining = len = ((__uint16_t)(ogm->gm_oh.oh_length)) - start;
 if (len < 0) {
  *error = 1;
  return (-1);
 }
 if (len < sizeof(*bucket) && type == 2) {
  *error = 1;
  return (-1);
 }
 for (off = start, num = 0; off < start + len; off += blen, num++) {
  bucket = (struct ofp_bucket *)(((caddr_t)((m)->m_hdr.mh_data)) + off);
  blen = ((__uint16_t)(bucket->b_len));
  if (blen < sizeof(*bucket)) {
   *error = 12;
   return (-1);
  }
  if (blen > remaining) {
   *etype = 1;
   *error = 6;
   return (-1);
  }
  remaining -= blen;
  switch (type) {
  case 0:
  case 2:
  case 3:
   if (((__uint16_t)(bucket->b_weight)) != 0) {
    *error = 12;
    return (-1);
   }
   break;
  case 1:
   if (num > 1 && weight != ((__uint16_t)(bucket->b_weight))) {
    *error = 2;
    return (-1);
   }
   break;
  }
  if (type == 2 && num > 1) {
   *error = 12;
   return (-1);
  }
  weight = ((__uint16_t)(bucket->b_weight));
  if (blen == sizeof(*bucket))
   continue;
  ah = (struct ofp_action_header *)
      (((caddr_t)((m)->m_hdr.mh_data)) + off + sizeof(*bucket));
  if (swofp_validate_action(sc, ah, blen - sizeof(*bucket),
      error)) {
   *etype = 2;
   return (-1);
  }
 }
 return (0);
}
void
swofp_flow_entry_table_free(struct ofp_instruction **table)
{
 if (*table) {
  free(*table, 2, ((__uint16_t)((*table)->i_len)));
  *table = ((void *)0);
 }
}
void
swofp_flow_entry_instruction_free(struct swofp_flow_entry *swfe)
{
 swofp_flow_entry_table_free((struct ofp_instruction **)
     &swfe->swfe_goto_table);
 swofp_flow_entry_table_free((struct ofp_instruction **)
     &swfe->swfe_write_metadata);
 swofp_flow_entry_table_free((struct ofp_instruction **)
     &swfe->swfe_apply_actions);
 swofp_flow_entry_table_free((struct ofp_instruction **)
     &swfe->swfe_write_actions);
 swofp_flow_entry_table_free((struct ofp_instruction **)
     &swfe->swfe_clear_actions);
 swofp_flow_entry_table_free((struct ofp_instruction **)
     &swfe->swfe_experimenter);
 swofp_flow_entry_table_free((struct ofp_instruction **)
     &swfe->swfe_meter);
}
void
swofp_flow_entry_free(struct swofp_flow_entry **swfe)
{
 if ((*swfe)->swfe_match)
  free((*swfe)->swfe_match, 2,
      ((__uint16_t)((*swfe)->swfe_match->om_length)));
 swofp_flow_entry_instruction_free(*swfe);
 free((*swfe), 2, sizeof(**swfe));
}
void
swofp_flow_entry_add(struct switch_softc *sc, struct swofp_flow_table *swft,
    struct swofp_flow_entry *swfe)
{
 swfe->swfe_table_id = swft->swft_table_id;
 do { if (((swfe)->swfe_next.le_next = (&swft->swft_flow_list)->lh_first) != ((void *)0)) (&swft->swft_flow_list)->lh_first->swfe_next.le_prev = &(swfe)->swfe_next.le_next; (&swft->swft_flow_list)->lh_first = (swfe); (swfe)->swfe_next.le_prev = &(&swft->swft_flow_list)->lh_first; } while (0);
 swft->swft_flow_num++;
 do {} while(0);
}
void
swofp_flow_entry_delete(struct switch_softc *sc, struct swofp_flow_table *swft,
    struct swofp_flow_entry *swfe, uint8_t reason)
{
 if (swfe->swfe_flags & 0x0001)
  swofp_send_flow_removed(sc, swfe, reason);
 do { if ((swfe)->swfe_next.le_next != ((void *)0)) (swfe)->swfe_next.le_next->swfe_next.le_prev = (swfe)->swfe_next.le_prev; *(swfe)->swfe_next.le_prev = (swfe)->swfe_next.le_next; ((swfe)->swfe_next.le_prev) = ((void *)-1); ((swfe)->swfe_next.le_next) = ((void *)-1); } while (0);
 swofp_flow_entry_free(&swfe);
 swft->swft_flow_num--;
 do {} while(0);
}
void
swofp_flow_timeout(struct switch_softc *sc)
{
 struct swofp_ofs *ofs = sc->sc_ofs;
 struct swofp_flow_table *swft;
 struct swofp_flow_entry *swfe, *tswfe;
 struct timespec now, duration, idle;
 nanouptime(&now);
 for((swft) = ((&ofs->swofs_table_list)->tqh_first); (swft) != ((void *)0); (swft) = ((swft)->swft_table_next.tqe_next)) {
  for ((swfe) = ((&swft->swft_flow_list)->lh_first); (swfe) && ((tswfe) = ((swfe)->swfe_next.le_next), 1); (swfe) = (tswfe)) {
   if (swfe->swfe_idle_timeout) {
    do { (&idle)->tv_sec = (&now)->tv_sec - (&swfe->swfe_idle_time)->tv_sec; (&idle)->tv_nsec = (&now)->tv_nsec - (&swfe->swfe_idle_time)->tv_nsec; if ((&idle)->tv_nsec < 0) { (&idle)->tv_sec--; (&idle)->tv_nsec += 1000000000L; } } while (0);
    if (swfe->swfe_idle_timeout < idle.tv_sec) {
     do {} while(0);
     swofp_flow_entry_delete(sc, swft, swfe,
         0);
     continue;
    }
   }
   if (swfe->swfe_hard_timeout) {
    do { (&duration)->tv_sec = (&now)->tv_sec - (&swfe->swfe_installed_time)->tv_sec; (&duration)->tv_nsec = (&now)->tv_nsec - (&swfe->swfe_installed_time)->tv_nsec; if ((&duration)->tv_nsec < 0) { (&duration)->tv_sec--; (&duration)->tv_nsec += 1000000000L; } } while (0);
    if (swfe->swfe_hard_timeout < duration.tv_sec) {
     do {} while(0);
     swofp_flow_entry_delete(sc, swft, swfe,
         1);
    }
   }
  }
 }
}
void
swofp_timer(void *v)
{
 struct switch_softc *sc = (struct switch_softc *)v;
 struct swofp_ofs *swofs = sc->sc_ofs;
 swofp_flow_timeout(sc);
 timeout_add_sec(&swofs->swofs_flow_timeout, 10);
}
int
swofp_ox_cmp_data(struct ofp_ox_match *target,
    struct ofp_ox_match *key, int strict)
{
 uint64_t tmth, tmask, kmth, kmask;
 uint64_t dummy_mask = 0xffffffffffffffffULL;
 int len;
 if ((((target)->oxm_fh) >> 1) != (((key)->oxm_fh) >> 1))
  return (1);
 switch ((((target)->oxm_fh) >> 1)) {
 case 7:
 case 8:
 case 9:
 case 10:
 case 20:
 case 19:
 case 30:
 case 29:
  len = sizeof(uint8_t);
  break;
 case 5:
 case 13:
 case 14:
 case 15:
 case 16:
 case 21:
  len = sizeof(uint16_t);
  break;
 case 0:
 case 28:
  len = sizeof(uint32_t);
  break;
 case 38:
  len = sizeof(uint64_t);
  break;
 default:
  return (1);
 }
 tmth = tmask = kmth = kmask = 0;
 __builtin_memcpy((&tmth), (((caddr_t)target + sizeof(*target))), (len));
 if ((((target)->oxm_fh) & 0x1))
  __builtin_memcpy((&tmask), (((caddr_t)target + sizeof(*target) + len)), (len));
 else
  __builtin_memcpy((&tmask), (&dummy_mask), (len));
 __builtin_memcpy((&kmth), (((caddr_t)key + sizeof(*key))), (len));
 if ((((key)->oxm_fh) & 0x1))
  __builtin_memcpy((&kmask), (((caddr_t)key + sizeof(*key) + len)), (len));
 else
  __builtin_memcpy((&kmask), (&dummy_mask), (len));
 if (strict) {
  if (tmask != kmask)
   return (1);
 } else {
  if ((tmask & kmask) != kmask)
   return (1);
 }
 return !((tmth & tmask) == (kmth & kmask));
}
int
swofp_ox_cmp_ipv6_addr(struct ofp_ox_match *target,
    struct ofp_ox_match *key, int strict)
{
 struct in6_addr tmth, tmask, kmth, kmask;
 struct in6_addr mask = in6mask128;
 if ((((target)->oxm_fh) >> 1) != (((key)->oxm_fh) >> 1))
  return (1);
 switch ((((target)->oxm_fh) >> 1)) {
 case 109:
 case 110:
 case 26:
 case 27:
 case 31:
  break;
 default:
  return (1);
 }
 __builtin_memcpy((&kmth), (((caddr_t)key + sizeof(*key))), (sizeof(kmth)));
 if ((((key)->oxm_fh) & 0x1))
  __builtin_memcpy((&kmask), (((caddr_t)key + sizeof(*key) + sizeof(kmask))), (sizeof(kmask)));
 else
  kmask = mask;
 __builtin_memcpy((&tmth), (((caddr_t)target + sizeof(*target))), (sizeof(tmth)));
 if ((((target)->oxm_fh) & 0x1))
  __builtin_memcpy((&tmask), (((caddr_t)target + sizeof(*target) + sizeof(tmask))), (sizeof(tmask)));
 else
  tmask = mask;
 if (strict) {
  if (__builtin_memcmp((&tmask), (&kmask), (sizeof(tmask))) != 0)
   return (1);
  tmth.__u6_addr.__u6_addr32[0] &= tmask.__u6_addr.__u6_addr32[0];
  tmth.__u6_addr.__u6_addr32[1] &= tmask.__u6_addr.__u6_addr32[1];
  tmth.__u6_addr.__u6_addr32[2] &= tmask.__u6_addr.__u6_addr32[2];
  tmth.__u6_addr.__u6_addr32[3] &= tmask.__u6_addr.__u6_addr32[3];
  kmth.__u6_addr.__u6_addr32[0] &= kmask.__u6_addr.__u6_addr32[0];
  kmth.__u6_addr.__u6_addr32[1] &= kmask.__u6_addr.__u6_addr32[1];
  kmth.__u6_addr.__u6_addr32[2] &= kmask.__u6_addr.__u6_addr32[2];
  kmth.__u6_addr.__u6_addr32[3] &= kmask.__u6_addr.__u6_addr32[3];
 } else {
  tmask.__u6_addr.__u6_addr32[0] &= kmask.__u6_addr.__u6_addr32[0];
  tmask.__u6_addr.__u6_addr32[1] &= kmask.__u6_addr.__u6_addr32[1];
  tmask.__u6_addr.__u6_addr32[2] &= kmask.__u6_addr.__u6_addr32[2];
  tmask.__u6_addr.__u6_addr32[3] &= kmask.__u6_addr.__u6_addr32[3];
  if (__builtin_memcmp((&tmask), (&kmask), (sizeof(tmask))) != 0)
   return (1);
  tmth.__u6_addr.__u6_addr32[0] &= kmask.__u6_addr.__u6_addr32[0];
  tmth.__u6_addr.__u6_addr32[1] &= kmask.__u6_addr.__u6_addr32[1];
  tmth.__u6_addr.__u6_addr32[2] &= kmask.__u6_addr.__u6_addr32[2];
  tmth.__u6_addr.__u6_addr32[3] &= kmask.__u6_addr.__u6_addr32[3];
  kmth.__u6_addr.__u6_addr32[0] &= kmask.__u6_addr.__u6_addr32[0];
  kmth.__u6_addr.__u6_addr32[1] &= kmask.__u6_addr.__u6_addr32[1];
  kmth.__u6_addr.__u6_addr32[2] &= kmask.__u6_addr.__u6_addr32[2];
  kmth.__u6_addr.__u6_addr32[3] &= kmask.__u6_addr.__u6_addr32[3];
 }
 return __builtin_memcmp((&tmth), (&kmth), (sizeof(tmth)));
}
int
swofp_ox_cmp_ipv4_addr(struct ofp_ox_match *target,
    struct ofp_ox_match *key, int strict)
{
 uint32_t tmth, tmask, kmth, kmask;
 if ((((target)->oxm_fh) >> 1) != (((key)->oxm_fh) >> 1))
  return (1);
 switch ((((target)->oxm_fh) >> 1)) {
 case 31:
 case 32:
 case 11:
 case 12:
 case 22:
 case 23:
  break;
 default:
  return (1);
 }
 __builtin_memcpy((&tmth), (((caddr_t)target + sizeof(*target))), (sizeof(uint32_t)));
 if ((((target)->oxm_fh) & 0x1))
  __builtin_memcpy((&tmask), (((caddr_t)target + sizeof(*target) + sizeof(uint32_t))), (sizeof(uint32_t)));
 else
  tmask = 0xffffffffU;
 __builtin_memcpy((&kmth), (((caddr_t)key + sizeof(*key))), (sizeof(uint32_t)));
 if ((((key)->oxm_fh) & 0x1))
  __builtin_memcpy((&kmask), (((caddr_t)key + sizeof(*key) + sizeof(uint32_t))), (sizeof(uint32_t)));
 else
  kmask = 0xffffffffU;
 if (strict) {
  if (tmask != kmask)
   return (1);
 } else {
  if ((tmask & kmask) != kmask)
   return (1);
 }
 return !((tmth & kmask) == (kmth & kmask));
}
int
swofp_ox_cmp_vlan_vid(struct ofp_ox_match *target,
    struct ofp_ox_match *key, int strict)
{
 uint16_t tmth, tmask, kmth, kmask;
 if ((((target)->oxm_fh) >> 1) != (((key)->oxm_fh) >> 1) ||
     (((target)->oxm_fh) >> 1) != 6)
  return (1);
 __builtin_memcpy((&tmth), (((caddr_t)target + sizeof(*target))), (sizeof(uint16_t)));
 if ((((target)->oxm_fh) & 0x1))
  __builtin_memcpy((&tmask), (((caddr_t)target + sizeof(*target) + sizeof(uint16_t))), (sizeof(uint16_t)));
 else
  tmask = 0xffff;
 __builtin_memcpy((&kmth), (((caddr_t)key + sizeof(*key))), (sizeof(uint16_t)));
 if ((((key)->oxm_fh) & 0x1))
  __builtin_memcpy((&kmask), (((caddr_t)key + sizeof(*key) + sizeof(uint16_t))), (sizeof(uint16_t)));
 else
  kmask = 0xffff;
 tmth &= ((__uint16_t)(0xFFF));
 tmask &= ((__uint16_t)(0xFFF));
 kmth &= ((__uint16_t)(0xFFF));
 kmask &= ((__uint16_t)(0xFFF));
 if (strict) {
  if (tmask != kmask)
   return (1);
 } else {
  if ((tmask & kmask) != kmask)
   return (1);
 }
 return !((tmth & kmask) == (kmth & kmask));
}
int
swofp_ox_cmp_ether_addr(struct ofp_ox_match *target,
    struct ofp_ox_match *key, int strict)
{
 uint64_t tmth, tmask, kmth, kmask;
 uint64_t eth_mask = 0x0000FFFFFFFFFFFFULL;
 if ((((target)->oxm_fh) >> 1) != (((key)->oxm_fh) >> 1))
  return (1);
 switch ((((target)->oxm_fh) >> 1)) {
 case 4:
 case 3:
 case 24:
 case 25:
 case 32:
 case 33:
  break;
 default:
  return (1);
 }
 __builtin_memcpy((&tmth), (((caddr_t)target + sizeof(*target))), (6));
 if ((((target)->oxm_fh) & 0x1))
  __builtin_memcpy((&tmask), (((caddr_t)target + sizeof(*target) + 6)), (6));
 else
  tmask = 0xffffffffffffffffULL;
 __builtin_memcpy((&kmth), (((caddr_t)key + sizeof(*key))), (6));
 if ((((key)->oxm_fh) & 0x1))
  __builtin_memcpy((&kmask), (((caddr_t)key + sizeof(*key) + 6)), (6));
 else
  kmask = 0xffffffffffffffffULL;
 tmask &= eth_mask;
 tmth &= eth_mask;
 kmask &= eth_mask;
 kmth &= eth_mask;
 if (strict) {
  if (tmask != kmask)
   return (1);
 } else {
  if ((tmask & kmask) != kmask)
   return (1);
 }
 return !((tmth & kmask) == (kmth & kmask));
}
int
swofp_validate_oxm(struct ofp_ox_match *oxm, uint16_t *err)
{
 struct ofp_oxm_class *handler;
 int hasmask;
 int neededlen;
 handler = swofp_lookup_oxm_handler(oxm);
 if (handler == ((void *)0) || handler->oxm_match == ((void *)0)) {
  *err = 6;
  return (-1);
 }
 hasmask = (((oxm)->oxm_fh) & 0x1);
 neededlen = (hasmask) ?
     (handler->oxm_len * 2) : (handler->oxm_len);
 if (oxm->oxm_length != neededlen) {
  *err = 1;
  return (-1);
 }
 return (0);
}
int
swofp_validate_flow_match(struct ofp_match *om, uint16_t *err)
{
 struct ofp_ox_match *oxm;
 for ((oxm) = (struct ofp_ox_match *)((caddr_t)(om) + sizeof(*om)); (caddr_t)(oxm) < ((caddr_t)(om) + (((__uint16_t)(om->om_length)))); (oxm) = (struct ofp_ox_match *)((caddr_t)(oxm) + (oxm)->oxm_length + sizeof(*oxm))) {
  if (swofp_validate_oxm(oxm, err))
   return (*err);
 }
 return (0);
}
int
swofp_validate_flow_instruction(struct switch_softc *sc,
    struct ofp_instruction *oi, size_t total, uint16_t *etype,
    uint16_t *err)
{
 struct ofp_action_header *oah;
 struct ofp_instruction_actions *oia;
 int ilen;
 *etype = 3;
 ilen = ((__uint16_t)(oi->i_len));
 if (ilen > total || ilen < sizeof(*oi)) {
  *err = 7;
  return (-1);
 }
 switch (((__uint16_t)(oi->i_type))) {
 case 1:
  if (ilen != sizeof(struct ofp_instruction_goto_table)) {
   *err = 7;
   return (-1);
  }
  break;
 case 2:
  if (ilen != sizeof(struct ofp_instruction_write_metadata)) {
   *err = 7;
   return (-1);
  }
  break;
 case 6:
  if (ilen != sizeof(struct ofp_instruction_meter)) {
   *err = 7;
   return (-1);
  }
  break;
 case 3:
 case 5:
 case 4:
  if (ilen < sizeof(*oia)) {
   *err = 7;
   return (-1);
  }
  oia = (struct ofp_instruction_actions *)oi;
  oah = (struct ofp_action_header *)
      ((uint8_t *)oia + sizeof(*oia));
  if (swofp_validate_action(sc, oah, ilen - sizeof(*oia),
      err)) {
   *etype = 2;
   return (-1);
  }
  break;
 case 0xffff:
 default:
  *err = 0;
  return (-1);
 }
 return (0);
}
int
swofp_validate_action(struct switch_softc *sc, struct ofp_action_header *ah,
    size_t ahtotal, uint16_t *err)
{
 struct ofp_action_handler *oah;
 struct ofp_ox_match *oxm;
 struct ofp_action_push *ap;
 struct ofp_action_group *ag;
 struct ofp_action_output *ao;
 struct switch_port *swpo;
 uint8_t *dptr;
 int ahtype, ahlen, oxmlen;
 if (ahtotal == 0)
  return (0);
 if (ahtotal < sizeof(*ah)) {
  *err = 1;
  return (-1);
 }
 parse_next_action:
 ahtype = ((__uint16_t)(ah->ah_type));
 ahlen = ((__uint16_t)(ah->ah_len));
 if (ahlen < sizeof(*ah) || ahlen > ahtotal) {
  *err = 1;
  return (-1);
 }
 switch (ahtype) {
 case 0:
  if (ahlen != sizeof(struct ofp_action_output)) {
   *err = 1;
   return (-1);
  }
  ao = (struct ofp_action_output *)ah;
  switch (((__uint32_t)(ao->ao_port))) {
  case 0xffffffff:
   *err = 4;
   return (-1);
  case 0xfffffffc:
  case 0xfffffffa:
   *err = 4;
   return (-1);
  case 0xfffffffd:
  case 0xfffffff9:
  case 0xfffffffb:
  case 0xfffffff8:
  case 0xfffffffe:
   break;
  default:
   for((swpo) = ((&sc->sc_swpo_list)->tqh_first); (swpo) != ((void *)0); (swpo) = ((swpo)->swpo_list_next.tqe_next)) {
    if (swpo->swpo_port_no ==
        ((__uint32_t)(ao->ao_port)))
     break;
   }
   if (swpo == ((void *)0)) {
    *err = 4;
    return (-1);
   }
   break;
  }
  break;
 case 22:
  if (ahlen != sizeof(struct ofp_action_group)) {
   *err = 1;
   return (-1);
  }
  ag = (struct ofp_action_group *)ah;
  if (swofp_group_entry_lookup(sc,
      ((__uint32_t)(ag->ag_group_id))) == ((void *)0)) {
   *err = 9;
   return (-1);
  }
  break;
 case 21:
  if (ahlen != sizeof(struct ofp_action_set_queue)) {
   *err = 1;
   return (-1);
  }
  break;
 case 15:
  if (ahlen != sizeof(struct ofp_action_mpls_ttl)) {
   *err = 1;
   return (-1);
  }
  break;
 case 23:
  if (ahlen != sizeof(struct ofp_action_nw_ttl)) {
   *err = 1;
   return (-1);
  }
  break;
 case 11:
 case 12:
 case 16:
 case 18:
  if (ahlen != sizeof(struct ofp_action_header)) {
   *err = 1;
   return (-1);
  }
  break;
 case 17:
 case 19:
 case 26:
  if (ahlen != sizeof(struct ofp_action_push)) {
   *err = 1;
   return (-1);
  }
  ap = (struct ofp_action_push *)ah;
  switch (((__uint16_t)(ap->ap_type))) {
  case 17:
   if (((__uint16_t)(ap->ap_ethertype)) != 0x8100 &&
       ((__uint16_t)(ap->ap_ethertype)) != 0x88A8) {
    *err = 5;
    return (-1);
   }
   break;
  case 19:
  case 26:
  default:
   *err = 0;
   return (-1);
  }
  break;
 case 20:
  if (ahlen != sizeof(struct ofp_action_pop_mpls)) {
   *err = 1;
   return (-1);
  }
  break;
 case 25:
  if (ahlen < sizeof(struct ofp_action_set_field)) {
   *err = 1;
   return (-1);
  }
  oxmlen = ahlen - (sizeof(struct ofp_action_set_field) -
      __builtin_offsetof(struct ofp_action_set_field, asf_field));
  if (oxmlen < sizeof(*oxm)) {
   *err = 1;
   return (-1);
  }
  dptr = (uint8_t *)ah;
  dptr += sizeof(struct ofp_action_set_field) -
      __builtin_offsetof(struct ofp_action_set_field, asf_field);
  while (oxmlen > 0) {
   oxm = (struct ofp_ox_match *)dptr;
   if (swofp_validate_oxm(oxm, err)) {
    if (*err == 1)
     *err = 14;
    else
     *err = 13;
    return (-1);
   }
   dptr += sizeof(*oxm) + oxm->oxm_length;
   oxmlen -= sizeof(*oxm) + oxm->oxm_length;
  }
  break;
 default:
  *err = 0;
  return (-1);
 }
 oah = swofp_lookup_action_handler(ahtype);
 if (oah == ((void *)0)) {
  *err = 0;
  return (-1);
 }
 ahtotal -= min(ahlen, ahtotal);
 if (ahtotal) {
  ah = (struct ofp_action_header *)((uint8_t *)ah + ahlen);
  goto parse_next_action;
 }
 return (0);
}
int
swofp_flow_filter_out_port(struct ofp_instruction_actions *oia,
    uint32_t out_port)
{
 struct ofp_action_header *oah;
 struct ofp_action_output *oao;
 if (oia == ((void *)0))
  return (0);
 for ((oah) = (struct ofp_action_header *)((caddr_t)(struct ofp_instruction_actions *)oia + sizeof(*(struct ofp_instruction_actions *)oia)); (caddr_t)oah < ((caddr_t)(struct ofp_instruction_actions *)oia + ((__uint16_t)(((struct ofp_instruction_actions *)oia)->ia_len))); (oah) = (struct ofp_action_header *)((caddr_t)oah + ((__uint16_t)((oah)->ah_len)))) {
  if (((__uint16_t)(oah->ah_type)) == 0) {
   oao = (struct ofp_action_output *)oah;
   if (((__uint32_t)(oao->ao_port)) == out_port)
    return (1);
  }
 }
 return (0);
}
int
swofp_flow_filter(struct swofp_flow_entry *swfe, uint64_t cookie,
    uint64_t cookie_mask, uint32_t out_port, uint32_t out_group)
{
 if (cookie_mask != 0 &&
     ((swfe->swfe_cookie & cookie_mask) != (cookie & cookie_mask)))
  return (0);
 if ((out_port == 0xffffffff) && (out_group == 0xfffffffc))
  return (1);
 if ((out_port != 0xffffffff) &&
     !(swofp_flow_filter_out_port(swfe->swfe_write_actions, out_port) ||
     swofp_flow_filter_out_port(swfe->swfe_apply_actions, out_port)))
     return (0);
 if (out_port != 0xfffffffc) {
 }
 return (1);
}
int
swofp_flow_cmp_common(struct swofp_flow_entry *swfe, struct ofp_match *key,
    int strict)
{
 struct ofp_match *target = swfe->swfe_match;
 struct ofp_oxm_class *khandler;
 struct ofp_ox_match *toxm, *koxm;
 void *kmask;
 int len;
 uint8_t dummy_unmask[sizeof(struct in6_addr)];
 __builtin_memset((dummy_unmask), (0), (sizeof(dummy_unmask)));
 for ((koxm) = (struct ofp_ox_match *)((caddr_t)(key) + sizeof(*key)); (caddr_t)(koxm) < ((caddr_t)(key) + (((__uint16_t)(key->om_length)))); (koxm) = (struct ofp_ox_match *)((caddr_t)(koxm) + (koxm)->oxm_length + sizeof(*koxm))) {
  khandler = swofp_lookup_oxm_handler(koxm);
  if (khandler == ((void *)0) || khandler->oxm_match == ((void *)0))
   return (0);
  len = khandler->oxm_len;
  if (strict && (((koxm)->oxm_fh) & 0x1)) {
   kmask = (void *)((caddr_t)koxm + sizeof(*koxm) + len);
   if (__builtin_memcmp((kmask), (dummy_unmask), (len)) == 0)
    continue;
  }
  for ((toxm) = (struct ofp_ox_match *)((caddr_t)(target) + sizeof(*target)); (caddr_t)(toxm) < ((caddr_t)(target) + (((__uint16_t)(target->om_length)))); (toxm) = (struct ofp_ox_match *)((caddr_t)(toxm) + (toxm)->oxm_length + sizeof(*toxm))) {
   if (khandler->oxm_cmp(toxm, koxm, strict) == 0)
    break;
  }
  if ((((caddr_t)(target) + (((__uint16_t)(target->om_length)))) <= (caddr_t)(toxm)))
   return (0);
 }
 return (1);
}
int
swofp_flow_cmp_non_strict(struct swofp_flow_entry *swfe, struct ofp_match *key)
{
 if (key == ((void *)0))
  return (1);
 return swofp_flow_cmp_common(swfe, key, 0);
}
int
swofp_flow_cmp_strict(struct swofp_flow_entry *swfe, struct ofp_match *key,
    uint32_t priority)
{
 struct ofp_match *target = swfe->swfe_match;
 struct ofp_ox_match *toxm, *koxm;
 int key_matches, target_matches;
 if (swfe->swfe_priority != priority)
  return (0);
 key_matches = target_matches = 0;
 for ((koxm) = (struct ofp_ox_match *)((caddr_t)(key) + sizeof(*key)); (caddr_t)(koxm) < ((caddr_t)(key) + (((__uint16_t)(key->om_length)))); (koxm) = (struct ofp_ox_match *)((caddr_t)(koxm) + (koxm)->oxm_length + sizeof(*koxm)))
  key_matches++;
 for ((toxm) = (struct ofp_ox_match *)((caddr_t)(target) + sizeof(*target)); (caddr_t)(toxm) < ((caddr_t)(target) + (((__uint16_t)(target->om_length)))); (toxm) = (struct ofp_ox_match *)((caddr_t)(toxm) + (toxm)->oxm_length + sizeof(*toxm)))
  target_matches++;
 if (key_matches != target_matches)
  return (0);
 return swofp_flow_cmp_common(swfe, key, 1);
}
struct swofp_flow_entry *
swofp_flow_search_by_table(struct swofp_flow_table *swft, struct ofp_match *key,
    uint16_t priority)
{
 struct swofp_flow_entry *swfe;
 for((swfe) = ((&swft->swft_flow_list)->lh_first); (swfe)!= ((void *)0); (swfe) = ((swfe)->swfe_next.le_next)) {
  if (swofp_flow_cmp_strict(swfe, key, priority))
   return (swfe);
 }
 return (((void *)0));
}
int
swofp_flow_has_group(struct ofp_instruction_actions *oia, uint32_t group_id)
{
 struct ofp_action_header *oah;
 struct ofp_action_group *oag;
 if (oia == ((void *)0))
  return (0);
 for ((oah) = (struct ofp_action_header *)((caddr_t)(struct ofp_instruction_actions *)oia + sizeof(*(struct ofp_instruction_actions *)oia)); (caddr_t)oah < ((caddr_t)(struct ofp_instruction_actions *)oia + ((__uint16_t)(((struct ofp_instruction_actions *)oia)->ia_len))); (oah) = (struct ofp_action_header *)((caddr_t)oah + ((__uint16_t)((oah)->ah_len)))) {
  if (((__uint16_t)(oah->ah_type)) == 22) {
   oag = (struct ofp_action_group *)oah;
   if (((__uint32_t)(oag->ag_group_id)) == group_id)
    return (1);
  }
 }
 return (0);
}
void
swofp_flow_delete_on_table_by_group(struct switch_softc *sc,
    struct swofp_flow_table *swft, uint32_t group_id)
{
 struct swofp_flow_entry *swfe, *tswfe;
 for ((swfe) = ((&swft->swft_flow_list)->lh_first); (swfe) && ((tswfe) = ((swfe)->swfe_next.le_next), 1); (swfe) = (tswfe)) {
  if (swofp_flow_has_group(swfe->swfe_apply_actions, group_id) ||
      swofp_flow_has_group(swfe->swfe_write_actions, group_id)) {
   swofp_flow_entry_delete(sc, swft, swfe,
       3);
  }
 }
}
void
swofp_flow_delete_on_table(struct switch_softc *sc,
    struct swofp_flow_table *swft, struct ofp_match *key, uint16_t priority,
    uint64_t cookie, uint64_t cookie_mask, uint32_t out_port,
    uint32_t out_group, int strict)
{
 struct swofp_flow_entry *swfe, *tswfe;
 for ((swfe) = ((&swft->swft_flow_list)->lh_first); (swfe) && ((tswfe) = ((swfe)->swfe_next.le_next), 1); (swfe) = (tswfe)) {
  if (strict && !swofp_flow_cmp_strict(swfe, key, priority))
   continue;
  else if (!swofp_flow_cmp_non_strict(swfe, key))
   continue;
  if (!swofp_flow_filter(swfe, cookie, cookie_mask,
      out_port, out_group))
   continue;
  swofp_flow_entry_delete(sc, swft, swfe,
      2);
 }
}
void
swofp_ox_match_put_start(struct ofp_match *om)
{
 om->om_type = ((__uint16_t)(1));
 om->om_length = ((__uint16_t)(sizeof(*om)));
}
int
swofp_ox_match_put_end(struct ofp_match *om)
{
 int tsize = ((__uint16_t)(om->om_length));
 int padding;
 padding = (((tsize) + (8 - 1)) & ~(8 - 1)) - tsize;
 if (padding)
  __builtin_memset(((caddr_t)om + tsize), (0), (padding));
 return tsize + padding;
}
int
swofp_ox_match_put_uint32(struct ofp_match *om, uint8_t type, uint32_t val)
{
 int off = ((__uint16_t)(om->om_length));
 struct ofp_ox_match *oxm;
 oxm = (struct ofp_ox_match *)((caddr_t)om + off);
 oxm->oxm_class = ((__uint16_t)(0x8000));
 (((oxm)->oxm_fh) = ((type) << 1));
 oxm->oxm_length = sizeof(uint32_t);
 *(uint32_t *)oxm->oxm_value = ((__uint32_t)(val));
 om->om_length = ((__uint16_t)(((__uint16_t)(om->om_length)) + sizeof(*oxm) + sizeof(uint32_t)));
 return ((__uint16_t)(om->om_length));
}
int
swofp_ox_match_put_uint64(struct ofp_match *om, uint8_t type, uint64_t val)
{
 struct ofp_ox_match *oxm;
 int off = ((__uint16_t)(om->om_length));
 oxm = (struct ofp_ox_match *)((caddr_t)om + off);
 oxm->oxm_class = ((__uint16_t)(0x8000));
 (((oxm)->oxm_fh) = ((type) << 1));
 oxm->oxm_length = sizeof(uint64_t);
 *(uint64_t *)oxm->oxm_value = ((__uint64_t)(val));
 om->om_length = ((__uint16_t)(((__uint16_t)(om->om_length)) + sizeof(*oxm) + sizeof(uint64_t)));
 return ((__uint16_t)(om->om_length));
}
int
swofp_nx_match_put(struct ofp_match *om, uint8_t type, int len,
    caddr_t val)
{
 struct ofp_ox_match *oxm;
 int off = ((__uint16_t)(om->om_length));
 oxm = (struct ofp_ox_match *)((caddr_t)om + off);
 oxm->oxm_class = ((__uint16_t)(0x0001));
 (((oxm)->oxm_fh) = ((type) << 1));
 oxm->oxm_length = len;
 __builtin_memcpy(((void *)oxm->oxm_value), (val), (len));
 om->om_length = ((__uint16_t)(((__uint16_t)(om->om_length)) + sizeof(*oxm) + len));
 return ((__uint16_t)(om->om_length));
}
int
swofp_ox_set_vlan_vid(struct switch_flow_classify *swfcl,
    struct ofp_ox_match *oxm)
{
 uint16_t val;
 val = *(uint16_t *)oxm->oxm_value;
 swfcl->swfcl_vlan->vlan_vid = (val & ((__uint16_t)(0xFFF)));
 return (0);
}
int
swofp_ox_set_uint8(struct switch_flow_classify *swfcl,
    struct ofp_ox_match *oxm)
{
 uint8_t val;
 val = *(uint8_t *)oxm->oxm_value;
 switch ((((oxm)->oxm_fh) >> 1)) {
 case 8:
  if (swfcl->swfcl_ipv4)
   swfcl->swfcl_ipv4->ipv4_tos = ((val << 2) |
       (swfcl->swfcl_ipv4->ipv4_tos & 0x03));
  else
   swfcl->swfcl_ipv6->ipv6_tclass = ((val << 2) |
       (swfcl->swfcl_ipv6->ipv6_tclass & 0x03));
  break;
 case 9:
  if (swfcl->swfcl_ipv4)
   swfcl->swfcl_ipv4->ipv4_tos = ((val & 0x03) |
       (swfcl->swfcl_ipv4->ipv4_tos & ~0x03));
  else
   swfcl->swfcl_ipv6->ipv6_tclass = (
       (val & 0x03) |
       (swfcl->swfcl_ipv6->ipv6_tclass & ~0x03));
  break;
 case 10:
  if (swfcl->swfcl_ipv4)
   swfcl->swfcl_ipv4->ipv4_proto = val;
  else
   swfcl->swfcl_ipv6->ipv6_nxt = val;
  break;
 case 19:
  swfcl->swfcl_icmpv4->icmpv4_type = val;
  break;
 case 20:
  swfcl->swfcl_icmpv4->icmpv4_code = val;
  break;
 case 29:
  swfcl->swfcl_icmpv6->icmpv6_type = val;
  break;
 case 30:
  swfcl->swfcl_icmpv6->icmpv6_code = val;
  break;
 }
 return (0);
}
int
swofp_ox_set_uint16(struct switch_flow_classify *swfcl,
    struct ofp_ox_match *oxm)
{
 uint16_t val;
 val = *(uint16_t *)oxm->oxm_value;
 switch ((((oxm)->oxm_fh) >> 1)) {
 case 5:
  swfcl->swfcl_ether->eth_type = val;
  break;
 case 7:
  swfcl->swfcl_vlan->vlan_pcp = val;
  break;
 case 13:
  swfcl->swfcl_tcp->tcp_src = val;
  break;
 case 14:
  swfcl->swfcl_tcp->tcp_dst = val;
  break;
 case 15:
  swfcl->swfcl_udp->udp_src = val;
  break;
 case 16:
  swfcl->swfcl_udp->udp_dst = val;
  break;
 case 21:
  swfcl->swfcl_arp->_arp_op = val;
 }
 return (0);
}
int
swofp_ox_set_uint32(struct switch_flow_classify *swfcl,
    struct ofp_ox_match *oxm)
{
 uint32_t val;
 val = *(uint32_t *)oxm->oxm_value;
 switch ((((oxm)->oxm_fh) >> 1)) {
 case 28:
  swfcl->swfcl_ipv6->ipv6_flow_label = val;
  break;
 }
 return (0);
}
int
swofp_ox_set_uint64(struct switch_flow_classify *swfcl,
    struct ofp_ox_match *oxm)
{
 uint64_t val;
 val = *(uint64_t *)oxm->oxm_value;
 switch ((((oxm)->oxm_fh) >> 1)) {
 case 38:
  swfcl->swfcl_tunnel->tun_key = val;
  break;
 }
 return (0);
}
int
swofp_ox_set_ipv6_addr(struct switch_flow_classify *swfcl,
    struct ofp_ox_match *oxm)
{
 struct in6_addr val;
 __builtin_memcpy((&val), (oxm->oxm_value), (sizeof(val)));
 switch ((((oxm)->oxm_fh) >> 1)) {
 case 109:
  swfcl->swfcl_tunnel->tun_ipv6_src = val;
  break;
 case 110:
  swfcl->swfcl_tunnel->tun_ipv6_dst = val;
  break;
 case 26:
  swfcl->swfcl_ipv6->ipv6_src = val;
  break;
 case 27:
  swfcl->swfcl_ipv6->ipv6_dst = val;
  break;
 case 31:
  swfcl->swfcl_nd6->nd6_target = val;
  break;
 }
 return (0);
}
int
swofp_ox_set_ipv4_addr(struct switch_flow_classify *swfcl,
    struct ofp_ox_match *oxm)
{
 uint32_t val;
 val = *(uint32_t *)oxm->oxm_value;
 switch ((((oxm)->oxm_fh) >> 1)) {
 case 31:
  swfcl->swfcl_tunnel->tun_ipv4_src = *(struct in_addr *)&val;
  break;
 case 32:
  swfcl->swfcl_tunnel->tun_ipv4_dst = *(struct in_addr *)&val;
  break;
 case 11:
  swfcl->swfcl_ipv4->ipv4_src = val;
  break;
 case 12:
  swfcl->swfcl_ipv4->ipv4_dst = val;
  break;
 case 22:
  swfcl->swfcl_arp->arp_sip = val;
  break;
 case 23:
  swfcl->swfcl_arp->arp_tip = val;
  break;
 }
 return (0);
}
int
swofp_ox_set_ether_addr(struct switch_flow_classify *swfcl,
    struct ofp_ox_match *oxm)
{
 caddr_t eth_addr;
 eth_addr = oxm->oxm_value;
 switch ((((oxm)->oxm_fh) >> 1)) {
 case 4:
  __builtin_memcpy((swfcl->swfcl_ether->eth_src), (eth_addr), (6));
  break;
 case 3:
  __builtin_memcpy((swfcl->swfcl_ether->eth_dst), (eth_addr), (6));
  break;
 case 24:
  __builtin_memcpy((swfcl->swfcl_arp->arp_sha), (eth_addr), (6));
  break;
 case 25:
  __builtin_memcpy((swfcl->swfcl_arp->arp_tha), (eth_addr), (6));
  break;
 case 33:
 case 32:
  __builtin_memcpy((swfcl->swfcl_nd6->nd6_lladdr), (eth_addr), (6));
  break;
 }
 return (0);
}
int
swofp_ox_match_ipv6_addr(struct switch_flow_classify *swfcl,
    struct ofp_ox_match *oxm)
{
 struct in6_addr in, mth, mask = in6mask128;
 switch ((((oxm)->oxm_fh) >> 1)) {
 case 109:
 case 110:
  if (swfcl->swfcl_tunnel == ((void *)0))
   return (1);
  break;
 case 26:
 case 27:
  if (swfcl->swfcl_ipv6 == ((void *)0))
   return (1);
  break;
 case 31:
  if (swfcl->swfcl_nd6 == ((void *)0))
   return (1);
  break;
 default:
  return (1);
 }
 switch ((((oxm)->oxm_fh) >> 1)) {
 case 109:
  in = swfcl->swfcl_tunnel->tun_ipv6_src;
  break;
 case 110:
  in = swfcl->swfcl_tunnel->tun_ipv6_dst;
  break;
 case 26:
  in = swfcl->swfcl_ipv6->ipv6_src;
  break;
 case 27:
  in = swfcl->swfcl_ipv6->ipv6_dst;
  break;
 case 31:
  in = swfcl->swfcl_nd6->nd6_target;
  break;
 }
 __builtin_memcpy((&mth), (oxm->oxm_value), (sizeof(mth)));
 if ((((oxm)->oxm_fh) & 0x1)) {
  __builtin_memcpy((&mask), (oxm->oxm_value + sizeof(mth)), (sizeof(mask)));
  in.__u6_addr.__u6_addr32[0] &= mask.__u6_addr.__u6_addr32[0];
  in.__u6_addr.__u6_addr32[1] &= mask.__u6_addr.__u6_addr32[1];
  in.__u6_addr.__u6_addr32[2] &= mask.__u6_addr.__u6_addr32[2];
  in.__u6_addr.__u6_addr32[3] &= mask.__u6_addr.__u6_addr32[3];
  mth.__u6_addr.__u6_addr32[0] &= mask.__u6_addr.__u6_addr32[0];
  mth.__u6_addr.__u6_addr32[1] &= mask.__u6_addr.__u6_addr32[1];
  mth.__u6_addr.__u6_addr32[2] &= mask.__u6_addr.__u6_addr32[2];
  mth.__u6_addr.__u6_addr32[3] &= mask.__u6_addr.__u6_addr32[3];
 }
 return __builtin_memcmp((&in), (&mth), (sizeof(in)));
}
int
swofp_ox_match_ipv4_addr(struct switch_flow_classify *swfcl,
    struct ofp_ox_match *oxm)
{
 uint32_t in, mth, mask;
 switch ((((oxm)->oxm_fh) >> 1)) {
 case 31:
 case 32:
  if (swfcl->swfcl_tunnel == ((void *)0))
   return (1);
  break;
 case 11:
 case 12:
  if (swfcl->swfcl_ipv4 == ((void *)0))
   return (1);
  break;
 case 22:
 case 23:
  if (swfcl->swfcl_arp == ((void *)0))
   return (1);
  break;
 default:
  return (1);
 }
 switch ((((oxm)->oxm_fh) >> 1)) {
 case 31:
  in = swfcl->swfcl_tunnel->tun_ipv4_src.s_addr;
  break;
 case 32:
  in = swfcl->swfcl_tunnel->tun_ipv4_dst.s_addr;
  break;
 case 11:
  in = swfcl->swfcl_ipv4->ipv4_src;
  break;
 case 12:
  in = swfcl->swfcl_ipv4->ipv4_dst;
  break;
 case 22:
  in = swfcl->swfcl_arp->arp_sip;
  break;
 case 23:
  in = swfcl->swfcl_arp->arp_tip;
  break;
 }
 __builtin_memcpy((&mth), (oxm->oxm_value), (sizeof(uint32_t)));
 if ((((oxm)->oxm_fh) & 0x1))
  __builtin_memcpy((&mask), (oxm->oxm_value + sizeof(uint32_t)), (sizeof(uint32_t)));
 else
  mask = 0xffffffffU;
 return !((in & mask) == (mth & mask));
}
int
swofp_ox_match_vlan_vid(struct switch_flow_classify *swfcl,
    struct ofp_ox_match *oxm)
{
 uint16_t in, mth, mask = 0;
 if (swfcl->swfcl_vlan == ((void *)0))
  return (1);
 in = swfcl->swfcl_vlan->vlan_vid;
 __builtin_memcpy((&mth), (oxm->oxm_value), (sizeof(uint16_t)));
 if ((((oxm)->oxm_fh) & 0x1))
  __builtin_memcpy((&mask), (oxm->oxm_value + sizeof(uint16_t)), (sizeof(uint16_t)));
 else
  mask = 0xffff;
 if (mth == ((__uint16_t)(0x0000)))
  return (1);
 if (((__uint16_t)(mth)) == 0x1000 &&
     ((__uint16_t)(mask)) == 0x1000)
  return (0);
 in &= ((__uint16_t)(0xFFF));
 mth &= ((__uint16_t)(0xFFF));
 return !((in & mask) == (mth & mask));
}
int
swofp_ox_match_uint8(struct switch_flow_classify *swfcl,
    struct ofp_ox_match *oxm)
{
 uint8_t in, mth;
 switch ((((oxm)->oxm_fh) >> 1)) {
 case 7:
  if (swfcl->swfcl_vlan == ((void *)0))
   return (1);
  break;
 case 8:
 case 9:
 case 10:
  if ((swfcl->swfcl_ipv4 == ((void *)0) &&
      swfcl->swfcl_ipv6 == ((void *)0)))
   return (1);
  break;
 case 20:
 case 19:
  if (swfcl->swfcl_icmpv4 == ((void *)0))
   return (1);
  break;
 case 30:
 case 29:
  if (swfcl->swfcl_icmpv6 == ((void *)0))
   return (1);
  break;
 default:
  return (1);
 }
 switch ((((oxm)->oxm_fh) >> 1)) {
 case 7:
  in = swfcl->swfcl_vlan->vlan_pcp;
  break;
 case 8:
  if (swfcl->swfcl_ipv4)
   in = swfcl->swfcl_ipv4->ipv4_tos >> 2;
  else
   in = swfcl->swfcl_ipv6->ipv6_tclass >> 2;
  break;
 case 9:
  if (swfcl->swfcl_ipv4)
   in = (swfcl->swfcl_ipv4->ipv4_tos) & 0x03;
  else
   in = (swfcl->swfcl_ipv6->ipv6_tclass) & 0x03;
  break;
 case 10:
  if (swfcl->swfcl_ipv4)
   in = swfcl->swfcl_ipv4->ipv4_proto;
  else
   in = swfcl->swfcl_ipv6->ipv6_nxt;
  break;
 case 20:
  in = swfcl->swfcl_icmpv4->icmpv4_code;
  break;
 case 19:
  in = swfcl->swfcl_icmpv4->icmpv4_type;
  break;
 case 30:
  in = swfcl->swfcl_icmpv6->icmpv6_code;
  break;
 case 29:
  in = swfcl->swfcl_icmpv6->icmpv6_type;
  break;
 }
 __builtin_memcpy((&mth), (oxm->oxm_value), (sizeof(uint8_t)));
 return !(in == mth);
}
int
swofp_ox_match_uint16(struct switch_flow_classify *swfcl,
    struct ofp_ox_match *oxm)
{
 uint16_t in, mth;
 switch ((((oxm)->oxm_fh) >> 1)) {
 case 5:
  if (swfcl->swfcl_ether == ((void *)0))
   return (1);
  break;
 case 13:
 case 14:
  if (swfcl->swfcl_tcp == ((void *)0))
   return (1);
  break;
 case 15:
 case 16:
  if (swfcl->swfcl_udp == ((void *)0))
   return (1);
  break;
 case 21:
  if (swfcl->swfcl_arp == ((void *)0))
   return (1);
  break;
 default:
  return (1);
 }
 switch ((((oxm)->oxm_fh) >> 1)) {
 case 5:
  in = swfcl->swfcl_ether->eth_type;
  break;
 case 13:
  in = swfcl->swfcl_tcp->tcp_src;
  break;
 case 14:
  in = swfcl->swfcl_tcp->tcp_dst;
  break;
 case 15:
  in = swfcl->swfcl_udp->udp_src;
  break;
 case 16:
  in = swfcl->swfcl_udp->udp_dst;
  break;
 case 21:
  in = swfcl->swfcl_arp->_arp_op;
  break;
 }
 __builtin_memcpy((&mth), (oxm->oxm_value), (sizeof(uint16_t)));
 return !(in == mth);
}
int
swofp_ox_match_uint32(struct switch_flow_classify *swfcl,
    struct ofp_ox_match *oxm)
{
 uint32_t in, mth, mask, nomask = 0xffffffffU;
 switch ((((oxm)->oxm_fh) >> 1)) {
 case 0:
  break;
 case 28:
  if (swfcl->swfcl_ipv6 == ((void *)0))
   return (1);
  break;
 default:
  return (1);
 }
 switch ((((oxm)->oxm_fh) >> 1)) {
 case 0:
  in = ((__uint32_t)(swfcl->swfcl_in_port));
  break;
 case 28:
  in = swfcl->swfcl_ipv6->ipv6_flow_label;
  nomask &= 0x000fffff;
  break;
 }
 __builtin_memcpy((&mth), (oxm->oxm_value), (sizeof(uint32_t)));
 if ((((oxm)->oxm_fh) & 0x1))
  __builtin_memcpy((&mask), (oxm->oxm_value + sizeof(uint32_t)), (sizeof(uint32_t)));
 else
  mask = nomask;
 return !((in & mask) == (mth & mask));
}
int
swofp_ox_match_uint64(struct switch_flow_classify *swfcl,
    struct ofp_ox_match *oxm)
{
 uint64_t in, mth, mask;
 switch ((((oxm)->oxm_fh) >> 1)) {
 case 2:
  break;
 case 38:
  if (swfcl->swfcl_tunnel == ((void *)0))
   return (1);
  break;
 default:
  return (1);
 }
 switch ((((oxm)->oxm_fh) >> 1)) {
 case 2:
  in = swfcl->swfcl_metadata;
  break;
 case 38:
  in = swfcl->swfcl_tunnel->tun_key;
  break;
 }
 __builtin_memcpy((&mth), (oxm->oxm_value), (sizeof(uint64_t)));
 if ((((oxm)->oxm_fh) & 0x1))
  __builtin_memcpy((&mask), (oxm->oxm_value + sizeof(uint64_t)), (sizeof(uint64_t)));
 else
  mask = 0xffffffffffffffffULL;
 return !((in & mask) == (mth & mask));
}
int
swofp_ox_match_ether_addr(struct switch_flow_classify *swfcl,
    struct ofp_ox_match *oxm)
{
 uint64_t eth_mask = 0x0000FFFFFFFFFFFFULL;
 uint64_t in, mth, mask;
 switch ((((oxm)->oxm_fh) >> 1)) {
 case 4:
 case 3:
  if (swfcl->swfcl_ether == ((void *)0))
   return (1);
  break;
 case 24:
 case 25:
  if (swfcl->swfcl_arp == ((void *)0))
   return (1);
  break;
 case 32:
 case 33:
  if (swfcl->swfcl_nd6 == ((void *)0))
   return (1);
  break;
 default:
  return (1);
 }
 switch ((((oxm)->oxm_fh) >> 1)) {
 case 4:
  in = *(uint64_t *)(swfcl->swfcl_ether->eth_src);
  break;
 case 3:
  in = *(uint64_t *)(swfcl->swfcl_ether->eth_dst);
  break;
 case 24:
  in = *(uint64_t *)(swfcl->swfcl_arp->arp_sha);
  break;
 case 25:
  in = *(uint64_t *)(swfcl->swfcl_arp->arp_tha);
  break;
 case 32:
 case 33:
  in = *(uint64_t *)(swfcl->swfcl_nd6->nd6_lladdr);
  break;
 }
 __builtin_memcpy((&mth), (oxm->oxm_value), (6));
 if ((((oxm)->oxm_fh) & 0x1))
  __builtin_memcpy((&mask), (oxm->oxm_value + 6), (6));
 else
  mask = 0xffffffffffffffffULL;
 return !((in & mask & eth_mask) == (mth & mask & eth_mask));
}
int
swofp_flow_match_by_swfcl(struct ofp_match *om,
    struct switch_flow_classify *swfcl)
{
 struct ofp_oxm_class *oxm_handler;
 struct ofp_ox_match *oxm;
 for ((oxm) = (struct ofp_ox_match *)((caddr_t)(om) + sizeof(*om)); (caddr_t)(oxm) < ((caddr_t)(om) + (((__uint16_t)(om->om_length)))); (oxm) = (struct ofp_ox_match *)((caddr_t)(oxm) + (oxm)->oxm_length + sizeof(*oxm))) {
  oxm_handler = swofp_lookup_oxm_handler(oxm);
  if ((oxm_handler == ((void *)0)) ||
      (oxm_handler->oxm_match == ((void *)0)))
   continue;
  if (oxm_handler->oxm_match(swfcl, oxm))
   return (1);
 }
 return (0);
}
struct swofp_flow_entry *
swofp_flow_lookup(struct swofp_flow_table *swft,
    struct switch_flow_classify *swfcl)
{
 struct swofp_flow_entry *swfe, *interim = ((void *)0);
 for((swfe) = ((&swft->swft_flow_list)->lh_first); (swfe)!= ((void *)0); (swfe) = ((swfe)->swfe_next.le_next)) {
  if (swofp_flow_match_by_swfcl(swfe->swfe_match, swfcl) != 0)
   continue;
  if (interim == ((void *)0) ||
      (interim->swfe_priority < swfe->swfe_priority))
   interim = swfe;
 }
 swft->swft_lookup_count++;
 if (interim)
  swft->swft_matched_count++;
 return interim;
}
struct mbuf *
swofp_expand_8021q_tag(struct mbuf *m)
{
 if ((m->m_hdr.mh_flags & 0x0020) == 0)
  return (m);
 return (vlan_inject(m, 0x8100,
     ((m->M_dat.MH.MH_pkthdr.ether_vtag) & 0xFFF) |
     (((m->M_dat.MH.MH_pkthdr.ether_vtag) >> 13) & 7)));
}
struct mbuf *
swofp_action_pop_vlan(struct switch_softc *sc, struct mbuf *m,
    struct swofp_pipeline_desc *swpld, struct ofp_action_header *oah)
{
 struct switch_flow_classify *swfcl = swpld->swpld_swfcl;
 struct ether_vlan_header *evl;
 struct ether_header eh;
 if (swfcl->swfcl_vlan == ((void *)0)) {
  m_freem(m);
  return (((void *)0));
 }
 if ((m->m_hdr.mh_flags & 0x0020)) {
  m->m_hdr.mh_flags &= ~0x0020;
  return (m);
 }
 if (m->m_hdr.mh_len < sizeof(*evl) &&
     (m = m_pullup(m, sizeof(*evl))) == ((void *)0))
  return (((void *)0));
 evl = ((struct ether_vlan_header *)((m)->m_hdr.mh_data));
 if ((((__uint16_t)(evl->evl_encap_proto)) != 0x8100) &&
     (((__uint16_t)(evl->evl_encap_proto)) != 0x88A8)) {
  m_freem(m);
  return (((void *)0));
 }
 m_copydata(m, 0, ((6 * 2) + 2), (caddr_t)&eh);
 eh.ether_type = evl->evl_proto;
 m_adj(m, sizeof(*evl));
 (m) = m_prepend((m), (sizeof(eh)), (0x0002));
 if (m == ((void *)0))
  return (((void *)0));
 m_copyback(m, 0, sizeof(eh), &eh, 0x0002);
 if (m->m_hdr.mh_len < sizeof(*evl) &&
     (m = m_pullup(m, sizeof(*evl))) == ((void *)0))
  return (((void *)0));
 evl = ((struct ether_vlan_header *)((m)->m_hdr.mh_data));
 if (((__uint16_t)(evl->evl_encap_proto)) == 0x8100) {
  swfcl->swfcl_vlan->vlan_tpid = ((__uint16_t)(0x8100));
  swfcl->swfcl_vlan->vlan_vid =
      (evl->evl_tag & ((__uint16_t)(0xFFF)));
  swfcl->swfcl_vlan->vlan_pcp =
      (((((__uint16_t)(evl->evl_tag))) >> 13) & 7);
 } else {
  pool_put(&swfcl_pool, swfcl->swfcl_vlan);
  swfcl->swfcl_vlan = ((void *)0);
 }
 return (m);
}
struct mbuf *
swofp_action_push_vlan(struct switch_softc *sc, struct mbuf *m,
    struct swofp_pipeline_desc *swpld, struct ofp_action_header *oah)
{
 struct switch_flow_classify *swfcl = swpld->swpld_swfcl;
 struct ofp_action_push *oap;
 struct ether_header *eh;
 struct ether_vlan_header evh;
 m = swofp_expand_8021q_tag(m);
 if (m == ((void *)0))
  return (((void *)0));
 oap = (struct ofp_action_push *)oah;
 if ((m->m_hdr.mh_len < sizeof(*eh)) &&
     ((m = m_pullup(m, sizeof(*eh))) == ((void *)0))) {
  return (((void *)0));
 }
 eh = ((struct ether_header *)((m)->m_hdr.mh_data));
 switch (((__uint16_t)(oap->ap_ethertype))) {
 case 0x8100:
  if ((((__uint16_t)(eh->ether_type)) == 0x8100) ||
      (((__uint16_t)(eh->ether_type)) == 0x88A8)) {
   m_freem(m);
   return (((void *)0));
  }
  break;
 case 0x88A8:
  if (((__uint16_t)(eh->ether_type)) != 0x8100) {
   m_freem(m);
   return (((void *)0));
  }
  break;
 default:
  m_freem(m);
  return (((void *)0));
 }
 if (swfcl->swfcl_vlan == ((void *)0)) {
  swfcl->swfcl_vlan = pool_get(&swfcl_pool, 0x0002|0x0008);
  if (swfcl->swfcl_vlan == ((void *)0)) {
   m_freem(m);
   return (((void *)0));
  }
  swfcl->swfcl_vlan->vlan_vid = ((__uint16_t)(1));
 }
 m_copydata(m, 0, ((6 * 2) + 2), (caddr_t)&evh);
 evh.evl_proto = evh.evl_encap_proto;
 evh.evl_encap_proto = oap->ap_ethertype;
 evh.evl_tag = (swfcl->swfcl_vlan->vlan_vid |
     ((__uint16_t)(swfcl->swfcl_vlan->vlan_pcp << 13)));
 m_adj(m, ((6 * 2) + 2));
 (m) = m_prepend((m), (sizeof(evh)), (0x0002));
 if (m == ((void *)0))
  return (((void *)0));
 m_copyback(m, 0, sizeof(evh), &evh, 0x0002);
 swfcl->swfcl_vlan->vlan_tpid = oap->ap_ethertype;
 swfcl->swfcl_vlan->vlan_vid = evh.evl_tag & ((__uint16_t)(0xFFF));
 swfcl->swfcl_vlan->vlan_pcp = (((((__uint16_t)(evh.evl_tag))) >> 13) & 7);
 return (m);
}
int
swofp_action_output_controller(struct switch_softc *sc, struct mbuf *m0,
    struct swofp_pipeline_desc *swpld , uint16_t frame_max_len, uint8_t reason)
{
 struct swofp_ofs *swofs = sc->sc_ofs;
 struct switch_flow_classify *swfcl = swpld->swpld_swfcl;
 struct ofp_packet_in *pin;
 struct ofp_match *om;
 struct ofp_ox_match *oxm;
 struct mbuf *m;
 caddr_t tail;
 int match_len;
 if (reason != 1)
  frame_max_len = swofs->swofs_switch_config.cfg_miss_send_len;
 match_len = (
     sizeof(*om) +
     (sizeof(*oxm) + sizeof(uint32_t)) +
     (sizeof(*oxm) + sizeof(uint64_t))
 );
 if (swfcl->swfcl_tunnel) {
  match_len += (sizeof(*oxm) + sizeof(uint64_t));
  if (swfcl->swfcl_tunnel->tun_af == 2)
   match_len += (sizeof(*oxm) + sizeof(uint32_t)) * 2;
  else if (swfcl->swfcl_tunnel->tun_af == 24)
   match_len += (sizeof(*oxm) +
       sizeof(struct in6_addr)) * 2;
 }
 m = m_gethdr((0x0002), (1));
 if (m == ((void *)0)) {
  m_freem(m0);
  return (55);
 }
 if ((sizeof(*pin) + match_len) >= ((256 - sizeof(struct m_hdr)) - sizeof(struct pkthdr))) {
  (void) m_clget((m), (0x0002), (1 << 11));
  if ((m->m_hdr.mh_flags & 0x0001) == 0) {
   m_freem(m);
   m_freem(m0);
   return (55);
  }
 }
 pin = ((struct ofp_packet_in *)((m)->m_hdr.mh_data));
 __builtin_memset((pin), (0), (sizeof(*pin)));
 pin->pin_oh.oh_version = 0x04;
 pin->pin_oh.oh_type = 10;
 pin->pin_oh.oh_xid = ((__uint32_t)(swofs->swofs_xidnxt++));
 pin->pin_buffer_id = ((__uint32_t)(0xffffffff));
 pin->pin_table_id = swpld->swpld_table_id;
 pin->pin_cookie = swpld->swpld_cookie;
 pin->pin_reason = reason;
 if (frame_max_len) {
  if (frame_max_len < m0->M_dat.MH.MH_pkthdr.len) {
   m_freem(m);
   m_freem(m0);
   return (40);
  }
  pin->pin_total_len = ((__uint16_t)(m0->M_dat.MH.MH_pkthdr.len));
 }
 om = &pin->pin_match;
 swofp_ox_match_put_start(om);
 swofp_ox_match_put_uint32(om, 0, swfcl->swfcl_in_port);
 swofp_ox_match_put_uint64(om, 2, swpld->swpld_metadata);
 if (swfcl->swfcl_tunnel) {
  swofp_ox_match_put_uint64(om, 38,
      ((__uint64_t)(swfcl->swfcl_tunnel->tun_key)));
  if (swfcl->swfcl_tunnel->tun_af == 2) {
   swofp_nx_match_put(om, 31,
       sizeof(uint32_t),
       (caddr_t)&swfcl->swfcl_tunnel->tun_ipv4_src);
   swofp_nx_match_put(om, 32,
       sizeof(uint32_t),
       (caddr_t)&swfcl->swfcl_tunnel->tun_ipv4_dst);
  } else if (swfcl->swfcl_tunnel->tun_af == 24) {
   swofp_nx_match_put(om, 109,
       sizeof(struct in6_addr),
       (caddr_t)&swfcl->swfcl_tunnel->tun_ipv6_src);
   swofp_nx_match_put(om, 110,
       sizeof(struct in6_addr),
       (caddr_t)&swfcl->swfcl_tunnel->tun_ipv6_dst);
  }
 }
 match_len = swofp_ox_match_put_end(om);
 tail = (caddr_t)pin +
     __builtin_offsetof(struct ofp_packet_in, pin_match) + match_len;
 __builtin_memset((tail), (0), (2));
 m->m_hdr.mh_len = m->M_dat.MH.MH_pkthdr.len =
     __builtin_offsetof(struct ofp_packet_in, pin_match) + match_len + 2;
 pin->pin_oh.oh_length =
     ((__uint16_t)(m->M_dat.MH.MH_pkthdr.len + ((__uint16_t)(pin->pin_total_len))));
 if (frame_max_len) {
  m_cat(m, m0);
  m->M_dat.MH.MH_pkthdr.len += ((__uint16_t)(pin->pin_total_len));
 }
 (void)swofp_output(sc, m);
 return (0);
}
struct mbuf *
swofp_action_output(struct switch_softc *sc, struct mbuf *m,
    struct swofp_pipeline_desc *swpld, struct ofp_action_header *oah)
{
 struct ofp_action_output *oao;
 struct switch_port *swpo;
 struct mbuf *mc;
 m->M_dat.MH.MH_pkthdr.csum_flags = 0;
 if ((m = swofp_apply_set_field(m, swpld)) == ((void *)0))
  return (((void *)0));
 oao = (struct ofp_action_output *)oah;
 switch (((__uint32_t)(oao->ao_port))) {
 case 0xfffffffd:
 case 0xfffffff9:
  if ((mc = m_dup_pkt(m, 2, 0x0002)) == ((void *)0)) {
   m_freem(m);
   return (((void *)0));
  }
 }
 switch (((__uint32_t)(oao->ao_port))) {
 case 0xfffffffd:
  swofp_action_output_controller(sc, mc, swpld,
      ((__uint16_t)(oao->ao_max_len)), swpld->swpld_tablemiss ?
      0 : 1);
  break;
 case 0xfffffff9:
  swofp_forward_ofs(sc, swpld->swpld_swfcl, mc);
  break;
 case 0xfffffffb:
  for((swpo) = ((&sc->sc_swpo_list)->tqh_first); (swpo) != ((void *)0); (swpo) = ((swpo)->swpo_list_next.tqe_next)) {
   if (swpo->swpo_port_no !=
       swpld->swpld_swfcl->swfcl_in_port)
    do { if (((swpo)->swpo_fwdp_next.tqe_next = (&swpld->swpld_fwdp_q)->tqh_first) != ((void *)0)) (&swpld->swpld_fwdp_q)->tqh_first->swpo_fwdp_next.tqe_prev = &(swpo)->swpo_fwdp_next.tqe_next; else (&swpld->swpld_fwdp_q)->tqh_last = &(swpo)->swpo_fwdp_next.tqe_next; (&swpld->swpld_fwdp_q)->tqh_first = (swpo); (swpo)->swpo_fwdp_next.tqe_prev = &(&swpld->swpld_fwdp_q)->tqh_first; } while (0);
  }
  break;
 case 0xfffffff8:
  for((swpo) = ((&sc->sc_swpo_list)->tqh_first); (swpo) != ((void *)0); (swpo) = ((swpo)->swpo_list_next.tqe_next)) {
   if (swpo->swpo_port_no ==
       swpld->swpld_swfcl->swfcl_in_port) {
    do { if (((swpo)->swpo_fwdp_next.tqe_next = (&swpld->swpld_fwdp_q)->tqh_first) != ((void *)0)) (&swpld->swpld_fwdp_q)->tqh_first->swpo_fwdp_next.tqe_prev = &(swpo)->swpo_fwdp_next.tqe_next; else (&swpld->swpld_fwdp_q)->tqh_last = &(swpo)->swpo_fwdp_next.tqe_next; (&swpld->swpld_fwdp_q)->tqh_first = (swpo); (swpo)->swpo_fwdp_next.tqe_prev = &(&swpld->swpld_fwdp_q)->tqh_first; } while (0);
    break;
   }
  }
  break;
 case 0xfffffffa:
 case 0xfffffffc:
 case 0xffffffff:
  break;
 case 0xfffffffe:
  for((swpo) = ((&sc->sc_swpo_list)->tqh_first); (swpo) != ((void *)0); (swpo) = ((swpo)->swpo_list_next.tqe_next)) {
   if (swpo->swpo_flags & 0x1000) {
    do { if (((swpo)->swpo_fwdp_next.tqe_next = (&swpld->swpld_fwdp_q)->tqh_first) != ((void *)0)) (&swpld->swpld_fwdp_q)->tqh_first->swpo_fwdp_next.tqe_prev = &(swpo)->swpo_fwdp_next.tqe_next; else (&swpld->swpld_fwdp_q)->tqh_last = &(swpo)->swpo_fwdp_next.tqe_next; (&swpld->swpld_fwdp_q)->tqh_first = (swpo); (swpo)->swpo_fwdp_next.tqe_prev = &(&swpld->swpld_fwdp_q)->tqh_first; } while (0);
    break;
   }
  }
  break;
 default:
  for((swpo) = ((&sc->sc_swpo_list)->tqh_first); (swpo) != ((void *)0); (swpo) = ((swpo)->swpo_list_next.tqe_next)) {
   if (swpo->swpo_port_no == ((__uint32_t)(oao->ao_port)))
    do { if (((swpo)->swpo_fwdp_next.tqe_next = (&swpld->swpld_fwdp_q)->tqh_first) != ((void *)0)) (&swpld->swpld_fwdp_q)->tqh_first->swpo_fwdp_next.tqe_prev = &(swpo)->swpo_fwdp_next.tqe_next; else (&swpld->swpld_fwdp_q)->tqh_last = &(swpo)->swpo_fwdp_next.tqe_next; (&swpld->swpld_fwdp_q)->tqh_first = (swpo); (swpo)->swpo_fwdp_next.tqe_prev = &(&swpld->swpld_fwdp_q)->tqh_first; } while (0);
  }
  break;
 }
 if (!(((&swpld->swpld_fwdp_q)->tqh_first) == ((void *)0))) {
  if ((mc = m_dup_pkt(m, 2, 0x0002)) == ((void *)0)) {
   m_freem(m);
   return (((void *)0));
  }
  switch_port_egress(sc, &swpld->swpld_fwdp_q, mc);
  do { (&swpld->swpld_fwdp_q)->tqh_first = ((void *)0); (&swpld->swpld_fwdp_q)->tqh_last = &(&swpld->swpld_fwdp_q)->tqh_first; } while (0);
 }
 return (m);
}
struct mbuf *
swofp_action_group_all(struct switch_softc *sc, struct mbuf *m,
    struct swofp_pipeline_desc *swpld, struct swofp_group_entry *swge)
{
 struct ofp_bucket *bucket;
 struct ofp_action_header *ah;
 int actions_len;
 struct swofp_pipeline_desc *clean_swpld = ((void *)0);
 struct switch_flow_classify swfcl;
 struct mbuf *n;
 if (swge->swge_buckets == ((void *)0))
  return (m);
 for ((bucket) = (swge->swge_buckets); (caddr_t)bucket < ((caddr_t)swge->swge_buckets + (swge->swge_buckets_len)); (bucket) = (struct ofp_bucket *)((caddr_t)(bucket) + ((__uint16_t)((bucket)->b_len)))) {
  if (switch_swfcl_dup(swpld->swpld_swfcl, &swfcl) != 0)
   goto failed;
  clean_swpld = swofp_pipeline_desc_create(&swfcl);
  if (clean_swpld == ((void *)0))
   goto failed;
  if ((n = m_dup_pkt(m, 2, 0x0002)) == ((void *)0))
   goto failed;
  actions_len = (((__uint16_t)(bucket->b_len)) -
      (__builtin_offsetof(struct ofp_bucket, b_actions)));
  for ((ah) = (bucket->b_actions); (caddr_t)ah < ((caddr_t)bucket->b_actions + (actions_len)); (ah) = (struct ofp_action_header *)((caddr_t)ah + ((__uint16_t)((ah)->ah_len)))) {
   n = swofp_execute_action(sc, n, clean_swpld, ah);
   if (n == ((void *)0))
    goto failed;
  }
  m_freem(n);
  swofp_pipeline_desc_destroy(clean_swpld);
  clean_swpld = ((void *)0);
  switch_swfcl_free(&swfcl);
 }
 return (m);
 failed:
 m_freem(m);
 if (clean_swpld)
  swofp_pipeline_desc_destroy(clean_swpld);
 return (((void *)0));
}
struct mbuf *
swofp_action_group(struct switch_softc *sc, struct mbuf *m,
    struct swofp_pipeline_desc *swpld, struct ofp_action_header *oah)
{
 struct ofp_action_group *oag;
 struct swofp_group_entry *swge;
 oag = (struct ofp_action_group *)oah;
 swge = swofp_group_entry_lookup(sc, ((__uint32_t)(oag->ag_group_id)));
 if (swge == ((void *)0)) {
  m_freem(m);
  return (((void *)0));
 }
 swge->swge_packet_count++;
 swge->swge_byte_count += m->M_dat.MH.MH_pkthdr.len;
 switch (swge->swge_type) {
 case 0:
  return swofp_action_group_all(sc, m, swpld, swge);
 case 2:
 case 3:
 case 1:
  m_freem(m);
  return (((void *)0));
 }
 return (m);
}
struct mbuf *
swofp_apply_set_field_udp(struct mbuf *m, int off,
    struct switch_flow_classify *pre_swfcl, struct switch_flow_classify *swfcl)
{
 struct udphdr *uh;
 if (m->m_hdr.mh_len < (off + sizeof(*uh)) &&
     (m = m_pullup(m, off + sizeof(*uh))) == ((void *)0))
  return ((void *)0);
 uh = (struct udphdr *)((m)->m_hdr.mh_data + off);
 if (pre_swfcl->swfcl_udp) {
  uh->uh_sport = pre_swfcl->swfcl_udp->udp_src;
  uh->uh_dport = pre_swfcl->swfcl_udp->udp_dst;
  __builtin_memcpy((swfcl->swfcl_udp), (pre_swfcl->swfcl_udp), (sizeof(*swfcl->swfcl_udp)));
 }
 return (m);
}
struct mbuf *
swofp_apply_set_field_tcp(struct mbuf *m, int off,
    struct switch_flow_classify *pre_swfcl, struct switch_flow_classify *swfcl)
{
 struct tcphdr *th;
 if (m->m_hdr.mh_len < (off + sizeof(*th)) &&
     (m = m_pullup(m, off + sizeof(*th))) == ((void *)0))
  return ((void *)0);
 th = (struct tcphdr *)((m)->m_hdr.mh_data + off);
 if (pre_swfcl->swfcl_tcp) {
  th->th_sport = pre_swfcl->swfcl_tcp->tcp_src;
  th->th_dport = pre_swfcl->swfcl_tcp->tcp_dst;
  __builtin_memcpy((swfcl->swfcl_tcp), (pre_swfcl->swfcl_tcp), (sizeof(*swfcl->swfcl_tcp)));
 }
 return (m);
}
struct mbuf *
swofp_apply_set_field_nd6(struct mbuf *m, int off,
    struct switch_flow_classify *pre_swfcl, struct switch_flow_classify *swfcl)
{
 struct icmp6_hdr *icmp6;
 struct nd_neighbor_advert *nd_na;
 struct nd_neighbor_solicit *nd_ns;
 union nd_opts ndopts;
 int icmp6len = m->M_dat.MH.MH_pkthdr.len - off;
 int lladdrlen;
 uint8_t *lladdr;
 if (pre_swfcl->swfcl_nd6 == ((void *)0))
  return (m);
 do { struct mbuf *t; int tmp; if ((m)->m_hdr.mh_len >= (off) + (sizeof(*icmp6))) (icmp6) = (struct icmp6_hdr *)(((caddr_t)(((m))->m_hdr.mh_data)) + (off)); else { t = m_pulldown((m), (off), (sizeof(*icmp6)), &tmp); if (t) { if (t->m_hdr.mh_len < tmp + (sizeof(*icmp6))) panic("m_pulldown malfunction"); (icmp6) = (struct icmp6_hdr *)(((caddr_t)((t)->m_hdr.mh_data)) + tmp); } else { (icmp6) = (struct icmp6_hdr *)((void *)0); (m) = ((void *)0); } } } while ( 0);
 if (icmp6 == ((void *)0))
  goto failed;
 switch (icmp6->icmp6_type) {
 case 136:
  if (icmp6len < sizeof(struct nd_neighbor_advert))
   goto failed;
  break;
 case 135:
  if (icmp6len < sizeof(struct nd_neighbor_solicit))
   goto failed;
  break;
 }
 switch (icmp6->icmp6_type) {
 case 136:
  do { struct mbuf *t; int tmp; if ((m)->m_hdr.mh_len >= (off) + (icmp6len)) (nd_na) = (struct nd_neighbor_advert *)(((caddr_t)(((m))->m_hdr.mh_data)) + (off)); else { t = m_pulldown((m), (off), (icmp6len), &tmp); if (t) { if (t->m_hdr.mh_len < tmp + (icmp6len)) panic("m_pulldown malfunction"); (nd_na) = (struct nd_neighbor_advert *)(((caddr_t)((t)->m_hdr.mh_data)) + tmp); } else { (nd_na) = (struct nd_neighbor_advert *)((void *)0); (m) = ((void *)0); } } } while ( 0);
  if (nd_na == ((void *)0))
   goto failed;
  nd_na->nd_na_target = pre_swfcl->swfcl_nd6->nd6_target;
  icmp6len -= sizeof(*nd_na);
  nd6_option_init(nd_na + 1, icmp6len, &ndopts);
  if (nd6_options(&ndopts) < 0)
   goto failed;
  if (!ndopts.nd_opt_each.tgt_lladdr)
   goto failed;
  lladdr = (char *)(ndopts.nd_opt_each.tgt_lladdr + 1);
  lladdrlen = (ndopts.nd_opt_each.tgt_lladdr->nd_opt_len << 3) - 2;
  if (lladdrlen != 6)
   goto failed;
  __builtin_memcpy((lladdr), (pre_swfcl->swfcl_nd6->nd6_lladdr), (6));
  break;
 case 135:
  do { struct mbuf *t; int tmp; if ((m)->m_hdr.mh_len >= (off) + (icmp6len)) (nd_ns) = (struct nd_neighbor_solicit *)(((caddr_t)(((m))->m_hdr.mh_data)) + (off)); else { t = m_pulldown((m), (off), (icmp6len), &tmp); if (t) { if (t->m_hdr.mh_len < tmp + (icmp6len)) panic("m_pulldown malfunction"); (nd_ns) = (struct nd_neighbor_solicit *)(((caddr_t)((t)->m_hdr.mh_data)) + tmp); } else { (nd_ns) = (struct nd_neighbor_solicit *)((void *)0); (m) = ((void *)0); } } } while ( 0);
  if (nd_ns == ((void *)0))
   goto failed;
  nd_ns->nd_ns_target = pre_swfcl->swfcl_nd6->nd6_target;
  icmp6len -= sizeof(*nd_ns);
  nd6_option_init(nd_ns + 1, icmp6len, &ndopts);
  if (nd6_options(&ndopts) < 0)
   goto failed;
  if (!ndopts.nd_opt_each.src_lladdr)
   goto failed;
  lladdr = (char *)(ndopts.nd_opt_each.src_lladdr + 1);
  lladdrlen = (ndopts.nd_opt_each.src_lladdr->nd_opt_len << 3) - 2;
  if (lladdrlen != 6)
   goto failed;
  __builtin_memcpy((lladdr), (pre_swfcl->swfcl_nd6->nd6_lladdr), (6));
  break;
 }
 __builtin_memcpy((swfcl->swfcl_nd6), (pre_swfcl->swfcl_nd6), (sizeof(*swfcl->swfcl_nd6)));
 return (m);
 failed:
 m_freem(m);
 return (((void *)0));
}
struct mbuf *
swofp_apply_set_field_icmpv6(struct mbuf *m, int off,
    struct switch_flow_classify *pre_swfcl, struct switch_flow_classify *swfcl)
{
 struct icmp6_hdr *icmp6;
 do { struct mbuf *t; int tmp; if ((m)->m_hdr.mh_len >= (off) + (sizeof(*icmp6))) (icmp6) = (struct icmp6_hdr *)(((caddr_t)(((m))->m_hdr.mh_data)) + (off)); else { t = m_pulldown((m), (off), (sizeof(*icmp6)), &tmp); if (t) { if (t->m_hdr.mh_len < tmp + (sizeof(*icmp6))) panic("m_pulldown malfunction"); (icmp6) = (struct icmp6_hdr *)(((caddr_t)((t)->m_hdr.mh_data)) + tmp); } else { (icmp6) = (struct icmp6_hdr *)((void *)0); (m) = ((void *)0); } } } while ( 0);
 if (icmp6 == ((void *)0))
  return (((void *)0));
 if (pre_swfcl->swfcl_icmpv6) {
  icmp6->icmp6_type = pre_swfcl->swfcl_icmpv6->icmpv6_type;
  icmp6->icmp6_code = pre_swfcl->swfcl_icmpv6->icmpv6_code;
  __builtin_memcpy((swfcl->swfcl_icmpv6), (pre_swfcl->swfcl_icmpv6), (sizeof(*swfcl->swfcl_icmpv6)));
 }
 m->M_dat.MH.MH_pkthdr.csum_flags |= 0x0200;
 switch (icmp6->icmp6_type) {
 case 136:
 case 135:
  return swofp_apply_set_field_nd6(m, off, pre_swfcl, swfcl);
 }
 return (m);
}
struct mbuf *
swofp_apply_set_field_icmpv4(struct mbuf *m, int off,
    struct switch_flow_classify *pre_swfcl, struct switch_flow_classify *swfcl)
{
 struct icmp *icmp;
 if (m->m_hdr.mh_len < (off + 8) &&
     (m = m_pullup(m, (off + 8))) == ((void *)0))
  return ((void *)0);
 icmp = (struct icmp *)((m)->m_hdr.mh_data + off);
 if (pre_swfcl->swfcl_icmpv4) {
  icmp->icmp_type = pre_swfcl->swfcl_icmpv4->icmpv4_type;
  icmp->icmp_code = pre_swfcl->swfcl_icmpv4->icmpv4_code;
  __builtin_memcpy((swfcl->swfcl_icmpv4), (pre_swfcl->swfcl_icmpv4), (sizeof(*swfcl->swfcl_icmpv4)));
 }
 m->M_dat.MH.MH_pkthdr.csum_flags |= 0x0200;
 return (m);
}
struct mbuf *
swofp_apply_set_field_ipv6(struct mbuf *m, int off,
    struct switch_flow_classify *pre_swfcl, struct switch_flow_classify *swfcl)
{
 struct ip6_hdr *ip6;
 int hlen;
 u_char eh_bk[sizeof(struct ether_vlan_header) + 4];
 if (m->m_hdr.mh_len < (off + sizeof(*ip6)) &&
     (m = m_pullup(m, off + sizeof(*ip6))) == ((void *)0))
  return (((void *)0));
 ip6 = (struct ip6_hdr *)(((caddr_t)((m)->m_hdr.mh_data)) + off);
 if (pre_swfcl->swfcl_ipv6) {
  ip6->ip6_ctlun.ip6_un1.ip6_un1_flow = (0x60 |
      (pre_swfcl->swfcl_ipv6->ipv6_flow_label &
      0x000fffff) |
      ((__uint32_t)(pre_swfcl->swfcl_ipv6->ipv6_tclass << 20)));
  ip6->ip6_ctlun.ip6_un1.ip6_un1_hlim = pre_swfcl->swfcl_ipv6->ipv6_hlimit;
  ip6->ip6_ctlun.ip6_un1.ip6_un1_nxt = pre_swfcl->swfcl_ipv6->ipv6_nxt;
  ip6->ip6_src = pre_swfcl->swfcl_ipv6->ipv6_src;
  ip6->ip6_dst = pre_swfcl->swfcl_ipv6->ipv6_dst;
  __builtin_memcpy((pre_swfcl->swfcl_ipv6), (swfcl->swfcl_ipv6), (sizeof(*pre_swfcl->swfcl_ipv6)));
 }
 hlen = sizeof(*ip6);
 switch (swfcl->swfcl_ipv6->ipv6_nxt) {
 case 17:
  m = swofp_apply_set_field_udp(m, (off + hlen),
      pre_swfcl, swfcl);
  if (m == ((void *)0))
   return (((void *)0));
  m->M_dat.MH.MH_pkthdr.csum_flags |= 0x0004;
  break;
 case 6:
  m = swofp_apply_set_field_tcp(m, (off + hlen),
      pre_swfcl, swfcl);
  if (m == ((void *)0))
   return (((void *)0));
  m->M_dat.MH.MH_pkthdr.csum_flags |= 0x0002;
  break;
 case 58:
  m = swofp_apply_set_field_icmpv6(m, (off + hlen),
      pre_swfcl, swfcl);
  if (m == ((void *)0))
   return (((void *)0));
  break;
 }
 m_copydata(m, 0, off, eh_bk);
 m_adj(m, off);
 if (m->m_hdr.mh_len < hlen && ((m = m_pullup(m, hlen)) == ((void *)0)))
  return (((void *)0));
 in6_proto_cksum_out(m, ((void *)0));
 (m) = m_prepend((m), (off), (0x0002));
 if (m == ((void *)0))
  return (((void *)0));
 m_copyback(m, 0, off, eh_bk, 0x0002);
 return (m);
}
struct mbuf *
swofp_apply_set_field_ipv4(struct mbuf *m, int off,
    struct switch_flow_classify *pre_swfcl, struct switch_flow_classify *swfcl)
{
 struct ip *ip;
 int hlen;
 u_char eh_bk[sizeof(struct ether_vlan_header) + 4];
 if (m->m_hdr.mh_len < (off + sizeof(*ip)) &&
     (m = m_pullup(m, off + sizeof(*ip))) == ((void *)0))
  return (((void *)0));
 ip = (struct ip *)(((caddr_t)((m)->m_hdr.mh_data)) + off);
 if (pre_swfcl->swfcl_ipv4) {
  ip->ip_p = pre_swfcl->swfcl_ipv4->ipv4_proto;
  ip->ip_tos = pre_swfcl->swfcl_ipv4->ipv4_tos;
  __builtin_memcpy((&ip->ip_src.s_addr), (&pre_swfcl->swfcl_ipv4->ipv4_src), (sizeof(uint32_t)));
  __builtin_memcpy((&ip->ip_dst.s_addr), (&pre_swfcl->swfcl_ipv4->ipv4_dst), (sizeof(uint32_t)));
  __builtin_memcpy((pre_swfcl->swfcl_ipv4), (swfcl->swfcl_ipv4), (sizeof(*pre_swfcl->swfcl_ipv4)));
 }
 hlen = (ip->ip_hl << 2);
 switch (swfcl->swfcl_ipv4->ipv4_proto) {
 case 17:
  m = swofp_apply_set_field_udp(m, (off + hlen),
      pre_swfcl, swfcl);
  if (m == ((void *)0))
   return (((void *)0));
  m->M_dat.MH.MH_pkthdr.csum_flags |= 0x0004;
  break;
 case 6:
  m = swofp_apply_set_field_tcp(m, (off + hlen),
      pre_swfcl, swfcl);
  if (m == ((void *)0))
   return (((void *)0));
  m->M_dat.MH.MH_pkthdr.csum_flags |= 0x0002;
  break;
 case 1:
  m = swofp_apply_set_field_icmpv4(m, (off + hlen),
      pre_swfcl, swfcl);
  if (m == ((void *)0))
   return (((void *)0));
  break;
 }
 m_copydata(m, 0, off, eh_bk);
 m_adj(m, off);
 if (m->m_hdr.mh_len < hlen && ((m = m_pullup(m, hlen)) == ((void *)0)))
  return (((void *)0));
 ip = ((struct ip *)((m)->m_hdr.mh_data));
 ip->ip_sum = 0;
 in_proto_cksum_out(m, ((void *)0));
 ip->ip_sum = in_cksum(m, hlen);
 (m) = m_prepend((m), (off), (0x0002));
 if (m == ((void *)0))
  return (((void *)0));
 m_copyback(m, 0, off, eh_bk, 0x0002);
 return (m);
}
struct mbuf *
swofp_apply_set_field_arp( struct mbuf *m, int off,
    struct switch_flow_classify *pre_swfcl, struct switch_flow_classify *swfcl)
{
 struct ether_arp *ea;
 if (m->m_hdr.mh_len < (off + sizeof(*ea)) &&
     (m = m_pullup(m, off + sizeof(*ea))) == ((void *)0))
  return (((void *)0));
 ea = (struct ether_arp *)((m)->m_hdr.mh_data + off);
 if (pre_swfcl->swfcl_arp) {
  ea->ea_hdr.ar_op = pre_swfcl->swfcl_arp->_arp_op;
  __builtin_memcpy((&ea->arp_sha), (pre_swfcl->swfcl_arp->arp_sha), (6));
  __builtin_memcpy((&ea->arp_tha), (pre_swfcl->swfcl_arp->arp_tha), (6));
  __builtin_memcpy((&ea->arp_spa), (&pre_swfcl->swfcl_arp->arp_sip), (sizeof(uint32_t)));
  __builtin_memcpy((&ea->arp_tpa), (&pre_swfcl->swfcl_arp->arp_tip), (sizeof(uint32_t)));
  __builtin_memcpy((swfcl->swfcl_arp), (pre_swfcl->swfcl_arp), (sizeof(*swfcl->swfcl_arp)));
 }
 return (m);
}
struct mbuf *
swofp_apply_set_field_ether(struct mbuf *m, int off,
    struct switch_flow_classify *pre_swfcl, struct switch_flow_classify *swfcl)
{
 struct ether_header *eh;
 struct ether_vlan_header *evl = ((void *)0);
 uint16_t *ether_type;
 m = swofp_expand_8021q_tag(m);
 if (m == ((void *)0))
  return (((void *)0));
 if ((m = m_pullup(m, (sizeof(*evl) + 4))) == ((void *)0))
  return (((void *)0));
 eh = ((struct ether_header *)((m)->m_hdr.mh_data));
 switch (((__uint16_t)(eh->ether_type))) {
 case 0x88A8:
  off = 4 + sizeof(struct ether_vlan_header);
  evl = ((struct ether_vlan_header *)((m)->m_hdr.mh_data));
  ether_type = (uint16_t *)(((caddr_t)((m)->m_hdr.mh_data)) + 4 +
      __builtin_offsetof(struct ether_vlan_header, evl_proto));
  break;
 case 0x8100:
  off = sizeof(struct ether_vlan_header);
  evl = ((struct ether_vlan_header *)((m)->m_hdr.mh_data));
  ether_type = &evl->evl_proto;
  break;
 default:
  off = sizeof(struct ether_header);
  ether_type = &eh->ether_type;
  break;
 }
 if (pre_swfcl->swfcl_vlan) {
  switch (((__uint16_t)(eh->ether_type))) {
  case 0x88A8:
  case 0x8100:
   evl->evl_tag = (pre_swfcl->swfcl_vlan->vlan_vid |
       ((__uint16_t)(pre_swfcl->swfcl_vlan->vlan_pcp << 13)));
   break;
  default:
   break;
  }
  if (swfcl->swfcl_vlan)
   __builtin_memcpy((swfcl->swfcl_vlan), (pre_swfcl->swfcl_vlan), (sizeof(*swfcl->swfcl_vlan)));
 }
 if (pre_swfcl->swfcl_ether) {
  __builtin_memcpy((eh->ether_shost), (pre_swfcl->swfcl_ether->eth_src), (6));
  __builtin_memcpy((eh->ether_dhost), (pre_swfcl->swfcl_ether->eth_dst), (6));
  *ether_type = pre_swfcl->swfcl_ether->eth_type;
  __builtin_memcpy((swfcl->swfcl_ether), (pre_swfcl->swfcl_ether), (sizeof(*swfcl->swfcl_ether)));
 }
 switch (((__uint16_t)(*ether_type))) {
 case 0x0806:
  return swofp_apply_set_field_arp(m, off, pre_swfcl, swfcl);
 case 0x0800:
  return swofp_apply_set_field_ipv4(m, off, pre_swfcl, swfcl);
 case 0x86DD:
  return swofp_apply_set_field_ipv6(m, off, pre_swfcl, swfcl);
 case 0x8847:
  break;
 }
 return (m);
}
struct mbuf *
swofp_apply_set_field_tunnel(struct mbuf *m, int off,
    struct switch_flow_classify *pre_swfcl, struct switch_flow_classify *swfcl)
{
 struct bridge_tunneltag *brtag;
 if (pre_swfcl->swfcl_tunnel) {
  if ((brtag = bridge_tunneltag(m)) == ((void *)0)) {
   m_freem(m);
   return (((void *)0));
  }
  brtag->brtag_id = ((__uint64_t)(pre_swfcl->swfcl_tunnel->tun_key));
  if (pre_swfcl->swfcl_tunnel->tun_ipv4_dst.s_addr !=
      ((u_int32_t) ((__uint32_t)((u_int32_t)(0x00000000))))) {
   brtag->brtag_peer.sin.sin_family =
       brtag->brtag_local.sin.sin_family = 2;
   brtag->brtag_local.sin.sin_addr =
       pre_swfcl->swfcl_tunnel->tun_ipv4_src;
   brtag->brtag_peer.sin.sin_addr =
       pre_swfcl->swfcl_tunnel->tun_ipv4_dst;
  } else if (!((*(const u_int32_t *)(const void *)(&(&pre_swfcl->swfcl_tunnel->tun_ipv6_dst)->__u6_addr.__u6_addr8[0]) == 0) && (*(const u_int32_t *)(const void *)(&(&pre_swfcl->swfcl_tunnel->tun_ipv6_dst)->__u6_addr.__u6_addr8[4]) == 0) && (*(const u_int32_t *)(const void *)(&(&pre_swfcl->swfcl_tunnel->tun_ipv6_dst)->__u6_addr.__u6_addr8[8]) == 0) && (*(const u_int32_t *)(const void *)(&(&pre_swfcl->swfcl_tunnel->tun_ipv6_dst)->__u6_addr.__u6_addr8[12]) == 0))) {
   brtag->brtag_peer.sin6.sin6_family =
       brtag->brtag_local.sin.sin_family = 24;
   brtag->brtag_local.sin6.sin6_addr =
       pre_swfcl->swfcl_tunnel->tun_ipv6_src;
   brtag->brtag_peer.sin6.sin6_addr =
       pre_swfcl->swfcl_tunnel->tun_ipv6_dst;
  } else {
   bridge_tunneluntag(m);
   m_freem(m);
   return (((void *)0));
  }
  if (swfcl->swfcl_tunnel) {
   __builtin_memcpy((swfcl->swfcl_tunnel), (pre_swfcl->swfcl_tunnel), (sizeof(*pre_swfcl->swfcl_tunnel)));
  }
 }
 return swofp_apply_set_field_ether(m, 0, pre_swfcl, swfcl);
}
struct mbuf *
swofp_apply_set_field(struct mbuf *m, struct swofp_pipeline_desc *swpld)
{
 return swofp_apply_set_field_tunnel(m, 0,
     &swpld->swpld_pre_swfcl, swpld->swpld_swfcl);
}
struct mbuf *
swofp_action_set_field(struct switch_softc *sc, struct mbuf *m,
    struct swofp_pipeline_desc *swpld, struct ofp_action_header *oah)
{
 struct ofp_oxm_class *oxm_handler;
 struct ofp_action_set_field *oasf;
 struct ofp_ox_match *oxm;
 struct switch_flow_classify *swfcl, *pre_swfcl;
 oasf = (struct ofp_action_set_field *)oah;
 oxm = (struct ofp_ox_match *)oasf->asf_field;
 oxm_handler = swofp_lookup_oxm_handler(oxm);
 if ((oxm_handler == ((void *)0)) ||
     (oxm_handler->oxm_set == ((void *)0)))
  goto failed;
 swfcl = swpld->swpld_swfcl;
 pre_swfcl = &swpld->swpld_pre_swfcl;
 if (oxm->oxm_class == ((__uint16_t)(0x0001))) {
  switch ((((oxm)->oxm_fh) >> 1)) {
  case 38:
  case 31:
  case 32:
  case 109:
  case 110:
   if (pre_swfcl->swfcl_tunnel)
    break;
   pre_swfcl->swfcl_tunnel = pool_get(&swfcl_pool,
       0x0002|0x0008);
   if (pre_swfcl->swfcl_tunnel == ((void *)0))
    goto failed;
   if (swfcl->swfcl_tunnel)
    __builtin_memcpy((pre_swfcl->swfcl_tunnel), (swfcl->swfcl_tunnel), (sizeof(*swfcl->swfcl_tunnel)));
   break;
  }
 } else {
  switch ((((oxm)->oxm_fh) >> 1)) {
  case 4:
  case 3:
  case 5:
   if (pre_swfcl->swfcl_ether)
    break;
   pre_swfcl->swfcl_ether = pool_get(&swfcl_pool,
       0x0002|0x0008);
   if (pre_swfcl->swfcl_ether == ((void *)0))
    goto failed;
   __builtin_memcpy((pre_swfcl->swfcl_ether), (swfcl->swfcl_ether), (sizeof(*swfcl->swfcl_ether)));
  break;
  case 6:
  case 7:
   if (pre_swfcl->swfcl_vlan)
    break;
   pre_swfcl->swfcl_vlan = pool_get(&swfcl_pool,
       0x0002|0x0008);
   if (pre_swfcl->swfcl_vlan == ((void *)0))
    goto failed;
   if (swfcl->swfcl_vlan)
    __builtin_memcpy((pre_swfcl->swfcl_vlan), (swfcl->swfcl_vlan), (sizeof(*swfcl->swfcl_vlan)));
   break;
  case 24:
  case 25:
  case 22:
  case 23:
  case 21:
   if (pre_swfcl->swfcl_arp)
    break;
   pre_swfcl->swfcl_arp = pool_get(&swfcl_pool,
       0x0002|0x0008);
   if (swfcl->swfcl_arp == ((void *)0))
    goto failed;
   __builtin_memcpy((pre_swfcl->swfcl_arp), (swfcl->swfcl_arp), (sizeof(*swfcl->swfcl_arp)));
   break;
  case 8:
  case 9:
  case 10:
   if (swfcl->swfcl_ipv4) {
    if (pre_swfcl->swfcl_ipv4)
     break;
    pre_swfcl->swfcl_ipv4 = pool_get(&swfcl_pool,
        0x0002|0x0008);
    if (pre_swfcl->swfcl_ipv4 == ((void *)0))
     goto failed;
    __builtin_memcpy((pre_swfcl->swfcl_ipv4), (swfcl->swfcl_ipv4), (sizeof(*swfcl->swfcl_ipv4)));
   } else if (swfcl->swfcl_ipv6) {
    if (pre_swfcl->swfcl_ipv6)
     break;
    pre_swfcl->swfcl_ipv6 = pool_get(&swfcl_pool,
        0x0002|0x0008);
    if (pre_swfcl->swfcl_ipv6 == ((void *)0))
     goto failed;
    __builtin_memcpy((pre_swfcl->swfcl_ipv6), (swfcl->swfcl_ipv6), (sizeof(*swfcl->swfcl_ipv6)));
   }
   break;
  case 11:
  case 12:
   if (pre_swfcl->swfcl_ipv4)
    break;
   pre_swfcl->swfcl_ipv4 = pool_get(&swfcl_pool,
       0x0002|0x0008);
   if (pre_swfcl->swfcl_ipv4 == ((void *)0))
    goto failed;
   __builtin_memcpy((pre_swfcl->swfcl_ipv4), (swfcl->swfcl_ipv4), (sizeof(*swfcl->swfcl_ipv4)));
   break;
  case 26:
  case 27:
  case 28:
   if (pre_swfcl->swfcl_ipv6)
    break;
   pre_swfcl->swfcl_ipv6 = pool_get(&swfcl_pool,
       0x0002|0x0008);
   if (pre_swfcl->swfcl_ipv6 == ((void *)0))
    goto failed;
   __builtin_memcpy((pre_swfcl->swfcl_ipv6), (swfcl->swfcl_ipv6), (sizeof(*swfcl->swfcl_ipv6)));
   break;
  case 15:
  case 16:
   if (pre_swfcl->swfcl_udp)
    break;
   pre_swfcl->swfcl_udp = pool_get(&swfcl_pool,
       0x0002|0x0008);
   if (pre_swfcl->swfcl_udp == ((void *)0))
    goto failed;
   __builtin_memcpy((pre_swfcl->swfcl_udp), (swfcl->swfcl_udp), (sizeof(*swfcl->swfcl_udp)));
   break;
  case 13:
  case 14:
   if (pre_swfcl->swfcl_tcp)
    break;
   pre_swfcl->swfcl_tcp = pool_get(&swfcl_pool,
       0x0002|0x0008);
   if (pre_swfcl->swfcl_tcp == ((void *)0))
    goto failed;
   __builtin_memcpy((pre_swfcl->swfcl_tcp), (swfcl->swfcl_tcp), (sizeof(*swfcl->swfcl_tcp)));
   break;
  case 20:
  case 19:
   if (pre_swfcl->swfcl_icmpv4)
    break;
   pre_swfcl->swfcl_icmpv4 = pool_get(&swfcl_pool,
       0x0002|0x0008);
   if (pre_swfcl->swfcl_icmpv4 == ((void *)0))
    goto failed;
   __builtin_memcpy((pre_swfcl->swfcl_icmpv4), (swfcl->swfcl_icmpv4), (sizeof(*swfcl->swfcl_icmpv4)));
   break;
  case 30:
  case 29:
   if (pre_swfcl->swfcl_icmpv6)
    break;
   pre_swfcl->swfcl_icmpv6 = pool_get(&swfcl_pool,
       0x0002|0x0008);
   if (pre_swfcl->swfcl_icmpv6 == ((void *)0))
    goto failed;
   __builtin_memcpy((pre_swfcl->swfcl_icmpv6), (swfcl->swfcl_icmpv6), (sizeof(*swfcl->swfcl_icmpv6)));
   break;
  case 32:
  case 33:
  case 31:
   if (pre_swfcl->swfcl_nd6)
    break;
   pre_swfcl->swfcl_nd6 = pool_get(&swfcl_pool,
       0x0002|0x0008);
   if (pre_swfcl->swfcl_nd6 == ((void *)0))
    goto failed;
   __builtin_memcpy((pre_swfcl->swfcl_nd6), (swfcl->swfcl_nd6), (sizeof(*swfcl->swfcl_nd6)));
   break;
  case 38:
   if (pre_swfcl->swfcl_tunnel)
    break;
   pre_swfcl->swfcl_tunnel = pool_get(&swfcl_pool,
       0x0002|0x0008);
   if (pre_swfcl->swfcl_tunnel == ((void *)0))
    goto failed;
   if (swfcl->swfcl_tunnel)
    __builtin_memcpy((pre_swfcl->swfcl_tunnel), (swfcl->swfcl_tunnel), (sizeof(*swfcl->swfcl_tunnel)));
   break;
  }
 }
 if (oxm_handler->oxm_set(pre_swfcl, oxm))
  goto failed;
 return (m);
 failed:
 m_freem(m);
 return (((void *)0));
}
struct mbuf *
swofp_execute_action(struct switch_softc *sc, struct mbuf *m,
    struct swofp_pipeline_desc *swpld, struct ofp_action_header *oah)
{
 struct ofp_action_handler *handler;
 handler = swofp_lookup_action_handler(((__uint16_t)(oah->ah_type)));
 if ((handler == ((void *)0)) || (handler->action == ((void *)0))) {
  do {} while(0);
  m_freem(m);
  return (((void *)0));
 }
 m = handler->action(sc, m, swpld, oah);
 if (m == ((void *)0))
  return (((void *)0));
 return (m);
}
struct mbuf *
swofp_execute_action_set_field(struct switch_softc *sc, struct mbuf *m,
    struct swofp_pipeline_desc *swpld, struct ofp_action_header *oah)
{
 struct ofp_action_header **set_fields;
 int i;
 set_fields = (struct ofp_action_header **)oah;
 for (i = 0; i < 40; i++) {
  if (set_fields[i] == ((void *)0))
   continue;
  m = swofp_execute_action(sc, m, swpld, set_fields[i]);
  if (m == ((void *)0))
   return (((void *)0));
 }
 return (m);
}
struct mbuf *
swofp_execute_action_set(struct switch_softc *sc, struct mbuf *m,
    struct swofp_pipeline_desc *swpld)
{
 struct swofp_action_set *swas;
 int i;
 do { (&swpld->swpld_fwdp_q)->tqh_first = ((void *)0); (&swpld->swpld_fwdp_q)->tqh_last = &(&swpld->swpld_fwdp_q)->tqh_first; } while (0);
 swas = swpld->swpld_action_set;
 swpld->swpld_swfcl->swfcl_cookie = 0xffffffffffffffffULL;
 for (i = 0 ; i < (sizeof((ofp_action_handlers)) / sizeof((ofp_action_handlers)[0])); i++) {
  if (swas[i].swas_action == ((void *)0))
   continue;
  if (swas[i].swas_type == 25)
   m = swofp_execute_action_set_field(sc, m, swpld,
       swas[i].swas_action);
  else
   m = swofp_execute_action(sc, m, swpld,
       swas[i].swas_action);
  if (m == ((void *)0))
   break;
 }
 m_freem(m);
 return (((void *)0));
}
struct mbuf *
swofp_apply_actions(struct switch_softc *sc, struct mbuf *m,
    struct swofp_pipeline_desc *swpld, struct ofp_instruction_actions *oia)
{
 struct ofp_action_header *oah;
 do { (&swpld->swpld_fwdp_q)->tqh_first = ((void *)0); (&swpld->swpld_fwdp_q)->tqh_last = &(&swpld->swpld_fwdp_q)->tqh_first; } while (0);
 for ((oah) = (struct ofp_action_header *)((caddr_t)oia + sizeof(*oia)); (caddr_t)oah < ((caddr_t)oia + ((__uint16_t)((oia)->ia_len))); (oah) = (struct ofp_action_header *)((caddr_t)oah + ((__uint16_t)((oah)->ah_len)))) {
  m = swofp_execute_action(sc, m, swpld, oah);
  if (m == ((void *)0))
   return (((void *)0));
 }
 return (m);
}
struct swofp_action_set *
swofp_lookup_action_set(struct swofp_pipeline_desc *swpld, uint16_t type)
{
 int i;
 for (i = 0; i < (sizeof((ofp_action_handlers)) / sizeof((ofp_action_handlers)[0])); i ++) {
  if (swpld->swpld_action_set[i].swas_type == type)
   return (&swpld->swpld_action_set[i]);
 }
 return (((void *)0));
}
void
swofp_write_actions_set_field(struct swofp_action_set *swas,
    struct ofp_action_header *oah)
{
 struct ofp_action_header **set_fields;
 struct ofp_action_set_field *oasf;
 struct ofp_ox_match *oxm;
 set_fields = (struct ofp_action_header **)swas->swas_action;
 oasf = (struct ofp_action_set_field *)oah;
 oxm = (struct ofp_ox_match *)oasf->asf_field;
 set_fields[(((oxm)->oxm_fh) >> 1)] = oah;
}
int
swofp_write_actions(struct ofp_instruction_actions *oia,
    struct swofp_pipeline_desc *swpld)
{
 struct swofp_action_set *swas;
 struct ofp_action_header *oah;
 for ((oah) = (struct ofp_action_header *)((caddr_t)oia + sizeof(*oia)); (caddr_t)oah < ((caddr_t)oia + ((__uint16_t)((oia)->ia_len))); (oah) = (struct ofp_action_header *)((caddr_t)oah + ((__uint16_t)((oah)->ah_len)))) {
  swas = swofp_lookup_action_set(swpld, ((__uint16_t)(oah->ah_type)));
  if (swas == ((void *)0))
   return (2);
  if (((__uint16_t)(oah->ah_type)) == 25)
   swofp_write_actions_set_field(swas, oah);
  else
   swas->swas_action = oah;
 }
 return (0);
}
void
swofp_clear_actions_set_field(struct swofp_action_set *swas,
    struct ofp_action_header *oah)
{
 struct ofp_action_header **set_fields;
 struct ofp_action_set_field *oasf;
 struct ofp_ox_match *oxm;
 set_fields = (struct ofp_action_header **)swas->swas_action;
 oasf = (struct ofp_action_set_field *)oah;
 oxm = (struct ofp_ox_match *)oasf->asf_field;
 set_fields[(((oxm)->oxm_fh) >> 1)] = ((void *)0);
}
int
swofp_clear_actions(struct ofp_instruction_actions *oia,
    struct swofp_pipeline_desc *swpld)
{
 struct swofp_action_set *swas;
 struct ofp_action_header *oah;
 for ((oah) = (struct ofp_action_header *)((caddr_t)oia + sizeof(*oia)); (caddr_t)oah < ((caddr_t)oia + ((__uint16_t)((oia)->ia_len))); (oah) = (struct ofp_action_header *)((caddr_t)oah + ((__uint16_t)((oah)->ah_len)))) {
  swas = swofp_lookup_action_set(swpld, ((__uint16_t)(oah->ah_type)));
  if (swas == ((void *)0))
   return (2);
  if (((__uint16_t)(oah->ah_type)) == 25)
   swofp_clear_actions_set_field(swas, oah);
  else
   swas->swas_action = ((void *)0);
 }
 return (0);
}
void
swofp_write_metadata(struct ofp_instruction_write_metadata *iowm,
    struct swofp_pipeline_desc *swpld)
{
 uint64_t val, mask;
 val = iowm->iwm_metadata;
 mask = iowm->iwm_metadata_mask;
 swpld->swpld_metadata = (val & mask);
}
void
swofp_forward_ofs(struct switch_softc *sc, struct switch_flow_classify *swfcl,
    struct mbuf *m)
{
 struct swofp_ofs *ofs = sc->sc_ofs;
 struct swofp_flow_entry *swfe;
 struct swofp_flow_table *swft;
 struct swofp_pipeline_desc *swpld;
 int error;
 uint8_t next_table_id = 0;
 swpld = swofp_pipeline_desc_create(swfcl);
 if (swpld == ((void *)0)) {
  m_freem(m);
  return;
 }
 for((swft) = ((&ofs->swofs_table_list)->tqh_first); (swft) != ((void *)0); (swft) = ((swft)->swft_table_next.tqe_next)) {
  if (swft->swft_table_id != next_table_id)
   continue;
  swpld->swpld_swfcl->swfcl_metadata = swpld->swpld_metadata;
  if ((swfe = swofp_flow_lookup(swft,
      swpld->swpld_swfcl)) == ((void *)0))
   break;
  swpld->swpld_cookie = swfe->swfe_cookie;
  swpld->swpld_table_id = swft->swft_table_id;
  swpld->swpld_tablemiss = swfe->swfe_tablemiss;
  nanouptime(&swfe->swfe_idle_time);
  swfe->swfe_packet_cnt++;
  swfe->swfe_byte_cnt += m->M_dat.MH.MH_pkthdr.len;
  if (swfe->swfe_meter) {
  }
  if (swfe->swfe_apply_actions) {
   m = swofp_apply_actions(sc, m, swpld,
       swfe->swfe_apply_actions);
   if (m == ((void *)0))
    goto out;
  }
  if (swfe->swfe_clear_actions) {
   error = swofp_clear_actions(
       swfe->swfe_clear_actions, swpld);
   if (error)
    goto out;
  }
  if (swfe->swfe_write_actions) {
   error = swofp_write_actions(
       swfe->swfe_write_actions, swpld);
   if (error)
    goto out;
  }
  if (swfe->swfe_write_metadata)
   swofp_write_metadata(swfe->swfe_write_metadata, swpld);
  if (swfe->swfe_goto_table)
   next_table_id = swfe->swfe_goto_table->igt_table_id;
  else
   break;
 }
 m = swofp_execute_action_set(sc, m, swpld);
 out:
 m_freem(m);
 swofp_pipeline_desc_destroy(swpld);
}
int
swofp_input(struct switch_softc *sc, struct mbuf *m)
{
 struct swofp_ofs *swofs = sc->sc_ofs;
 struct ofp_header *oh;
 ofp_msg_handler handler;
 uint16_t ohlen;
 if (m->m_hdr.mh_len < sizeof(*oh) &&
     (m = m_pullup(m, sizeof(*oh))) == ((void *)0))
  return (55);
 oh = ((struct ofp_header *)((m)->m_hdr.mh_data));
 ohlen = ((__uint16_t)(oh->oh_length));
 if (ohlen < sizeof(*oh)) {
  swofp_send_error(sc, m, 1,
      6);
  return (0);
 }
 if (m->m_hdr.mh_len < ohlen && (m = m_pullup(m, ohlen)) == ((void *)0))
  return (55);
 if (sc->sc_ofbpf)
  switch_mtap(sc->sc_ofbpf, m, 1,
      swofs->swofs_datapath_id);
 handler = swofp_lookup_msg_handler(oh->oh_type);
 if (handler)
  (*handler)(sc, m);
 else
  swofp_send_error(sc, m, 1,
      1);
 return (0);
}
int
swofp_output(struct switch_softc *sc, struct mbuf *m)
{
 struct swofp_ofs *swofs = sc->sc_ofs;
 if (sc->sc_swdev == ((void *)0)) {
  m_freem(m);
  return (6);
 }
 if (sc->sc_ofbpf)
  switch_mtap(sc->sc_ofbpf, m, (1<<1),
      swofs->swofs_datapath_id);
 if (sc->sc_swdev->swdev_output(sc, m) != 0)
  return (55);
 return (0);
}
int
swofp_recv_hello(struct switch_softc *sc, struct mbuf *m)
{
 struct ofp_header *oh;
 oh = ((struct ofp_header *)((m)->m_hdr.mh_data));
 if (oh->oh_version != 0x04)
  swofp_send_error(sc, m,
      0, 0);
 else
  m_freem(m);
 return (0);
}
void
swofp_send_hello(struct switch_softc *sc)
{
 struct swofp_ofs *swofs = sc->sc_ofs;
 struct mbuf *m;
 struct ofp_header *oh;
 m = m_gethdr((0x0002), (1));
 if (m == ((void *)0))
  return;
 oh = ((struct ofp_header *)((m)->m_hdr.mh_data));
 oh->oh_version = 0x04;
 oh->oh_type = 0;
 oh->oh_length = ((__uint16_t)(sizeof(*oh)));
 oh->oh_xid = ((__uint32_t)(swofs->swofs_xidnxt++));
 m->m_hdr.mh_len = m->M_dat.MH.MH_pkthdr.len = sizeof(*oh);
 (void)swofp_output(sc, m);
}
void
swofp_send_error(struct switch_softc *sc, struct mbuf *m,
    uint16_t type, uint16_t code)
{
 struct ofp_error *oe;
 uint16_t len;
 uint8_t data[64];
 oe = ((struct ofp_error *)((m)->m_hdr.mh_data));
 len = min(((__uint16_t)(oe->err_oh.oh_length)), 64);
 m_copydata(m, 0, len, data);
 oe->err_oh.oh_version = 0x04;
 oe->err_oh.oh_type = 1;
 oe->err_type = ((__uint16_t)(type));
 oe->err_code = ((__uint16_t)(code));
 oe->err_oh.oh_length = ((__uint16_t)(len + sizeof(struct ofp_error)));
 m->m_hdr.mh_len = m->M_dat.MH.MH_pkthdr.len = sizeof(struct ofp_error);
 if (m_copyback(m, sizeof(struct ofp_error), len, data, 0x0002)) {
  m_freem(m);
  return;
 }
 (void)swofp_output(sc, m);
}
int
swofp_recv_echo(struct switch_softc *sc, struct mbuf *m)
{
 return swofp_send_echo(sc, m);
}
int
swofp_send_echo(struct switch_softc *sc, struct mbuf *m)
{
 struct ofp_header *oh;
 oh = ((struct ofp_header *)((m)->m_hdr.mh_data));
 oh->oh_type = 3;
 return (swofp_output(sc, m));
}
int
swofp_recv_features_req(struct switch_softc *sc, struct mbuf *m)
{
 struct swofp_ofs *swofs = sc->sc_ofs;
 struct ofp_header *oh;
 struct ofp_switch_features swf;
 oh = ((struct ofp_header *)((m)->m_hdr.mh_data));
 __builtin_memset((&swf), (0), (sizeof(swf)));
 __builtin_memcpy((&swf), (oh), (sizeof(*oh)));
 swf.swf_oh.oh_type = 6;
 swf.swf_oh.oh_length = ((__uint16_t)(sizeof(swf)));
 swf.swf_datapath_id = ((__uint64_t)(swofs->swofs_datapath_id));
 swf.swf_nbuffers = ((__uint32_t)(0));
 swf.swf_ntables = 0xfe;
 swf.swf_aux_id = 0;
 swf.swf_capabilities = ((__uint32_t)(0x1 | 0x2 | 0x4 | 0x8));
 m_copyback(m, 0, sizeof(swf), (caddr_t)&swf, 0x0001);
 return (swofp_output(sc, m));
}
int
swofp_recv_config_req(struct switch_softc *sc, struct mbuf *m)
{
 struct swofp_ofs *swofs = sc->sc_ofs;
 struct ofp_switch_config osc;
 __builtin_memcpy((&osc.cfg_oh), (((caddr_t)((m)->m_hdr.mh_data))), (sizeof(struct ofp_header)));
 osc.cfg_oh.oh_type = 8;
 osc.cfg_oh.oh_length = ((__uint16_t)(sizeof(osc)));
 osc.cfg_flags = ((__uint16_t)(swofs->swofs_switch_config.cfg_flags));
 osc.cfg_miss_send_len =
     ((__uint16_t)(swofs->swofs_switch_config.cfg_miss_send_len));
 if (m_copyback(m, 0, sizeof(osc), &osc, 0x0002)) {
  m_freem(m);
  return (-1);
 }
 return (swofp_output(sc, m));
}
int
swofp_recv_set_config(struct switch_softc *sc, struct mbuf *m)
{
 struct swofp_ofs *swofs = sc->sc_ofs;
 struct ofp_switch_config *swc;
 swc = ((struct ofp_switch_config *)((m)->m_hdr.mh_data));
 if (((__uint16_t)(swc->cfg_oh.oh_length)) < sizeof(*swc)) {
  swofp_send_error(sc, m, 1,
      6);
  return (-1);
 }
 swofs->swofs_switch_config.cfg_flags = 0x0000;
 swofs->swofs_switch_config.cfg_miss_send_len =
     ((__uint16_t)(swc->cfg_miss_send_len));
 m_freem(m);
 return (0);
}
int
swofp_send_flow_removed(struct switch_softc *sc, struct swofp_flow_entry *swfe,
    uint8_t reason)
{
 struct ofp_flow_removed *ofr;
 struct timespec now, duration;
 struct mbuf *m;
 int match_len;
 match_len = ((__uint16_t)(swfe->swfe_match->om_length));
 m = m_gethdr((0x0001), (1));
 if (m == ((void *)0))
  return (55);
 if ((sizeof(*ofr) + match_len) >= ((256 - sizeof(struct m_hdr)) - sizeof(struct pkthdr))) {
  (void) m_clget((m), (0x0001), (1 << 11));
  if ((m->m_hdr.mh_flags & 0x0001) == 0) {
   m_freem(m);
   return (55);
  }
 }
 ofr = ((struct ofp_flow_removed *)((m)->m_hdr.mh_data));
 ofr->fr_oh.oh_version = 0x04;
 ofr->fr_oh.oh_type = 11;
 ofr->fr_oh.oh_xid = ((__uint32_t)(sc->sc_ofs->swofs_xidnxt++));
 ofr->fr_cookie = ((__uint64_t)(swfe->swfe_cookie));
 ofr->fr_priority = ((__uint16_t)(swfe->swfe_priority));
 ofr->fr_reason = reason;
 ofr->fr_table_id = swfe->swfe_table_id;
 nanouptime(&now);
 do { (&duration)->tv_sec = (&now)->tv_sec - (&swfe->swfe_installed_time)->tv_sec; (&duration)->tv_nsec = (&now)->tv_nsec - (&swfe->swfe_installed_time)->tv_nsec; if ((&duration)->tv_nsec < 0) { (&duration)->tv_sec--; (&duration)->tv_nsec += 1000000000L; } } while (0);
 ofr->fr_duration_sec = ((__uint32_t)((int)duration.tv_sec));
 ofr->fr_priority = ((__uint16_t)(swfe->swfe_priority));
 ofr->fr_idle_timeout = ((__uint16_t)(swfe->swfe_idle_timeout));
 ofr->fr_hard_timeout = ((__uint16_t)(swfe->swfe_hard_timeout));
 ofr->fr_byte_count = ((__uint64_t)(swfe->swfe_byte_cnt));
 ofr->fr_packet_count = ((__uint64_t)(swfe->swfe_packet_cnt));
 __builtin_memcpy((&ofr->fr_match), (swfe->swfe_match), (match_len));
 ofr->fr_oh.oh_length =
     ((__uint16_t)(sizeof(*ofr) + match_len - sizeof(struct ofp_match)));
 m->m_hdr.mh_len = m->M_dat.MH.MH_pkthdr.len =
     sizeof(*ofr) + match_len - sizeof(struct ofp_match);
 return (swofp_output(sc, m));
}
int
swofp_flow_entry_put_instructions(struct switch_softc *sc, struct mbuf *m,
    struct swofp_flow_entry *swfe, uint16_t *etype, uint16_t *error)
{
 struct ofp_flow_mod *ofm;
 struct ofp_instruction *oi;
 caddr_t inst;
 int start, len, off;
 *etype = 3;
 ofm = ((struct ofp_flow_mod *)((m)->m_hdr.mh_data));
 swofp_flow_entry_instruction_free(swfe);
 start = (__builtin_offsetof(struct ofp_flow_mod, fm_match) + (((((__uint16_t)((ofm)->fm_match.om_length))) + (8 - 1)) & ~(8 - 1)));
 len = ((__uint16_t)(ofm->fm_oh.oh_length)) - start;
 for (off = start; off < start + len; off += ((__uint16_t)(oi->i_len))) {
  oi = (struct ofp_instruction *)(((caddr_t)((m)->m_hdr.mh_data)) + off);
  if (swofp_validate_flow_instruction(sc, oi,
      len - (off - start), etype, error))
   return (-1);
  if ((inst = malloc(((__uint16_t)(oi->i_len)), 2,
      0x0002|0x0008)) == ((void *)0)) {
   *error = 0;
   return (-1);
  }
  __builtin_memcpy((inst), (oi), (((__uint16_t)(oi->i_len))));
  switch (((__uint16_t)(oi->i_type))) {
  case 1:
   if (swfe->swfe_goto_table)
    free(swfe->swfe_goto_table, 2,
        ((__uint16_t)(swfe->swfe_goto_table->igt_len)));
   swfe->swfe_goto_table =
       (struct ofp_instruction_goto_table *)inst;
   break;
  case 2:
   if (swfe->swfe_write_metadata)
    free(swfe->swfe_write_metadata, 2,
        ((__uint16_t)(swfe->swfe_write_metadata->iwm_len)));
   swfe->swfe_write_metadata =
       (struct ofp_instruction_write_metadata *)inst;
   break;
  case 3:
   if (swfe->swfe_write_actions)
    free(swfe->swfe_write_actions, 2,
        ((__uint16_t)(swfe->swfe_write_actions->ia_len)));
   swfe->swfe_write_actions =
       (struct ofp_instruction_actions *)inst;
   break;
  case 4:
   if (swfe->swfe_apply_actions)
    free(swfe->swfe_apply_actions, 2,
        ((__uint16_t)(swfe->swfe_apply_actions->ia_len)));
   swfe->swfe_apply_actions =
       (struct ofp_instruction_actions *)inst;
   break;
  case 5:
   if (swfe->swfe_clear_actions)
    free(swfe->swfe_clear_actions, 2,
        ((__uint16_t)(swfe->swfe_clear_actions->ia_len)));
   swfe->swfe_clear_actions =
       (struct ofp_instruction_actions *)inst;
   break;
  case 6:
   if (swfe->swfe_meter)
    free(swfe->swfe_meter, 2,
        ((__uint16_t)(swfe->swfe_meter->im_len)));
   swfe->swfe_meter = (struct ofp_instruction_meter *)inst;
   break;
  case 0xffff:
   if (swfe->swfe_experimenter)
    free(swfe->swfe_experimenter, 2,
        ((__uint16_t)(swfe->swfe_experimenter->ie_len)));
   swfe->swfe_experimenter =
       (struct ofp_instruction_experimenter *)inst;
   break;
  default:
   free(inst, 2, ((__uint16_t)(oi->i_len)));
   break;
  }
 }
 return (0);
}
int
swofp_flow_mod_cmd_add(struct switch_softc *sc, struct mbuf *m)
{
 struct swofp_ofs *ofs = sc->sc_ofs;
 struct ofp_flow_mod *ofm;
 struct ofp_match *om;
 struct swofp_flow_entry *swfe, *old_swfe;
 struct swofp_flow_table *swft;
 int omlen;
 uint16_t error, etype;
 etype = 5;
 ofm = ((struct ofp_flow_mod *)((m)->m_hdr.mh_data));
 om = &ofm->fm_match;
 if (0xfe < ofm->fm_table_id) {
  error = 2;
  goto ofp_error;
 }
 if (ofm->fm_cookie == 0xffffffffffffffffULL) {
  error = 0;
  goto ofp_error;
 }
 omlen = ((__uint16_t)(om->om_length));
 if (omlen < sizeof(*om) ||
     omlen >= (m->m_hdr.mh_len - sizeof(*ofm))) {
  etype = 4;
  error = 1;
  goto ofp_error;
 }
 if ((swft = swofp_flow_table_add(sc, ofm->fm_table_id)) == ((void *)0)) {
  error = 2;
  goto ofp_error;
 }
 if (swft->swft_flow_num >= ofs->swofs_flow_max_entry) {
  error = 1;
  goto ofp_error;
 }
 if (swofp_validate_flow_match(om, &error)) {
  etype = 4;
  goto ofp_error;
 }
 if ((old_swfe = swofp_flow_search_by_table(swft, om,
     ((__uint16_t)(ofm->fm_priority))))) {
  if (((__uint16_t)(ofm->fm_flags)) & 0x0002) {
   error = 3;
   goto ofp_error;
  }
 }
 if ((swfe = malloc(sizeof(*swfe), 2,
     0x0002|0x0008)) == ((void *)0)) {
  error = 0;
  goto ofp_error;
 }
 swfe->swfe_priority = ((__uint16_t)(ofm->fm_priority));
 swfe->swfe_cookie = ((__uint64_t)(ofm->fm_cookie));
 swfe->swfe_flags = ((__uint16_t)(ofm->fm_flags));
 swfe->swfe_idle_timeout = ((__uint16_t)(ofm->fm_idle_timeout));
 swfe->swfe_hard_timeout = ((__uint16_t)(ofm->fm_hard_timeout));
 nanouptime(&swfe->swfe_installed_time);
 nanouptime(&swfe->swfe_idle_time);
 if ((swfe->swfe_match = malloc(omlen, 2,
     0x0002|0x0008)) == ((void *)0)) {
  error = 0;
  goto ofp_error_free_flow;
 }
 __builtin_memcpy((swfe->swfe_match), (om), (omlen));
 if (omlen == sizeof(*om) && swfe->swfe_priority == 0)
  swfe->swfe_tablemiss = 1;
 if (swofp_flow_entry_put_instructions(sc, m, swfe, &etype, &error))
  goto ofp_error_free_flow;
 if (old_swfe) {
  if (!(((__uint16_t)(ofm->fm_flags)) & 0x0004)) {
   swfe->swfe_packet_cnt = old_swfe->swfe_packet_cnt;
   swfe->swfe_byte_cnt = old_swfe->swfe_byte_cnt;
  }
  swfe->swfe_flags &= ~(0x0001);
  swofp_flow_entry_delete(sc, swft, old_swfe,
      2);
 }
 swofp_flow_entry_add(sc, swft, swfe);
 m_freem(m);
 return (0);
 ofp_error_free_flow:
 swofp_flow_entry_free(&swfe);
 ofp_error:
 swofp_send_error(sc, m, etype, error);
 return (0);
}
int
swofp_flow_mod_cmd_common_modify(struct switch_softc *sc, struct mbuf *m,
    int strict)
{
 struct ofp_flow_mod *ofm;
 struct ofp_match *om;
 struct swofp_flow_entry *swfe;
 struct swofp_flow_table *swft;
 int omlen;
 uint16_t error, etype;
 etype = 5;
 ofm = ((struct ofp_flow_mod *)((m)->m_hdr.mh_data));
 om = &ofm->fm_match;
 if (0xfe < ofm->fm_table_id) {
  error = 2;
  goto ofp_error;
 }
 if (ofm->fm_cookie == 0xffffffffffffffffULL) {
  error = 0;
  goto ofp_error;
 }
 omlen = ((__uint16_t)(om->om_length));
 if (omlen < sizeof(*om) ||
     omlen >= (m->m_hdr.mh_len - sizeof(*ofm))) {
  etype = 4;
  error = 1;
  goto ofp_error;
 }
 if (swofp_validate_flow_match(om, &error)) {
  etype = 4;
  goto ofp_error;
 }
 if ((swft = swofp_flow_table_lookup(sc, ofm->fm_table_id)) == ((void *)0)) {
  error = 2;
  goto ofp_error;
 }
 for((swfe) = ((&swft->swft_flow_list)->lh_first); (swfe)!= ((void *)0); (swfe) = ((swfe)->swfe_next.le_next)) {
  if (strict && !swofp_flow_cmp_strict(swfe, om,
      ((__uint16_t)(ofm->fm_priority))))
   continue;
  else if (!swofp_flow_cmp_non_strict(swfe, om))
   continue;
  if (!swofp_flow_filter(swfe, ((__uint64_t)(ofm->fm_cookie)),
      ((__uint64_t)(ofm->fm_cookie_mask)), ((__uint32_t)(ofm->fm_out_port)),
      ((__uint32_t)(ofm->fm_out_group))))
   continue;
  if (swofp_flow_entry_put_instructions(sc, m, swfe, &etype,
      &error)) {
   swofp_flow_entry_delete(sc, swft, swfe,
       2);
   etype = 3;
   goto ofp_error;
  }
  if (((__uint16_t)(ofm->fm_flags)) & 0x0004) {
   swfe->swfe_packet_cnt = 0;
   swfe->swfe_byte_cnt = 0;
  }
 }
 m_freem(m);
 return (0);
 ofp_error:
 swofp_send_error(sc, m, etype, error);
 return (0);
}
int
swofp_flow_mod_cmd_modify(struct switch_softc *sc, struct mbuf *m)
{
 return swofp_flow_mod_cmd_common_modify(sc, m, 0);
}
int
swofp_flow_mod_cmd_modify_strict(struct switch_softc *sc, struct mbuf *m)
{
 return swofp_flow_mod_cmd_common_modify(sc, m, 1);
}
int
swofp_flow_mod_cmd_common_delete(struct switch_softc *sc, struct mbuf *m,
    int strict)
{
 struct swofp_ofs *ofs = sc->sc_ofs;
 struct ofp_flow_mod *ofm;
 struct ofp_match *om;
 struct swofp_flow_table *swft;
 int omlen;
 uint16_t error, etype = 5;
 ofm = (struct ofp_flow_mod *)(((caddr_t)((m)->m_hdr.mh_data)));
 om = &ofm->fm_match;
 omlen = ((__uint16_t)(om->om_length));
 if (omlen < sizeof(*om) ||
     omlen >= (m->m_hdr.mh_len - sizeof(*ofm))) {
  etype = 4;
  error = 1;
  goto ofp_error;
 }
 if (swofp_validate_flow_match(om, &error)) {
  etype = 4;
  goto ofp_error;
 }
 for((swft) = ((&ofs->swofs_table_list)->tqh_first); (swft) != ((void *)0); (swft) = ((swft)->swft_table_next.tqe_next)) {
  if ((ofm->fm_table_id != 0xff) &&
      (ofm->fm_table_id != swft->swft_table_id))
   continue;
  swofp_flow_delete_on_table(sc, swft, om,
      ((__uint16_t)(ofm->fm_priority)),
      ((__uint64_t)(ofm->fm_cookie)),
      ((__uint64_t)(ofm->fm_cookie_mask)),
      ((__uint32_t)(ofm->fm_out_port)),
      ((__uint32_t)(ofm->fm_out_group)), strict);
 }
 m_freem(m);
 return (0);
 ofp_error:
 swofp_send_error(sc, m, etype, error);
 return (-1);
}
int
swofp_flow_mod_cmd_delete(struct switch_softc *sc, struct mbuf *m)
{
 return swofp_flow_mod_cmd_common_delete(sc, m, 0);
}
int
swofp_flow_mod_cmd_delete_strict(struct switch_softc *sc, struct mbuf *m)
{
 return swofp_flow_mod_cmd_common_delete(sc, m, 1);
}
ofp_msg_handler *
swofp_flow_mod_lookup_handler(uint8_t cmd)
{
 if (cmd >= (sizeof((ofp_flow_mod_table)) / sizeof((ofp_flow_mod_table)[0])))
  return (((void *)0));
 else
  return (&ofp_flow_mod_table[cmd].ofm_cmd_handler);
}
int
swofp_flow_mod(struct switch_softc *sc, struct mbuf *m)
{
 struct ofp_flow_mod *ofm;
 ofp_msg_handler *handler;
 uint16_t ohlen;
 ofm = ((struct ofp_flow_mod *)((m)->m_hdr.mh_data));
 ohlen = ((__uint16_t)(ofm->fm_oh.oh_length));
 if (ohlen < sizeof(*ofm) ||
     ohlen < (sizeof(*ofm) + ((__uint16_t)(ofm->fm_match.om_length)))) {
  swofp_send_error(sc, m, 1,
      6);
  return (-1);
 }
 handler = swofp_flow_mod_lookup_handler(ofm->fm_command);
 if (handler) {
  (*handler)(sc, m);
 } else {
  swofp_send_error(sc, m, 5,
     6);
 }
 return (0);
}
int
swofp_group_mod_add(struct switch_softc *sc, struct mbuf *m)
{
 struct swofp_ofs *ofs = sc->sc_ofs;
 struct ofp_group_mod *ogm;
 struct swofp_group_entry *swge;
 uint16_t error, etype;
 etype = 6;
 ogm = ((struct ofp_group_mod *)((m)->m_hdr.mh_data));
 if (ofs->swofs_group_table_num >= ofs->swofs_group_max_table) {
  error = 3;
  goto failed;
 }
 if (((__uint32_t)(ogm->gm_group_id)) > 0xffffff00) {
  error = 1;
  goto failed;
 }
 if ((swge = swofp_group_entry_lookup(sc,
     ((__uint32_t)(ogm->gm_group_id))))) {
  error = 0;
  goto failed;
 }
 if (ogm->gm_type != 0) {
  error = 10;
  goto failed;
 }
 if (swofp_validate_buckets(sc, m, ogm->gm_type, &etype, &error))
  goto failed;
 if ((swge = malloc(sizeof(*swge), 2, 0x0002|0x0008)) == ((void *)0)) {
  error = 8;
  goto failed;
 }
 swge->swge_group_id = ((__uint32_t)(ogm->gm_group_id));
 swge->swge_type = ogm->gm_type;
 swge->swge_buckets_len = (((__uint16_t)(ogm->gm_oh.oh_length)) -
     __builtin_offsetof(struct ofp_group_mod, gm_buckets));
 if (swge->swge_buckets_len > 0) {
  if ((swge->swge_buckets = malloc(swge->swge_buckets_len,
      2, 0x0002|0x0008)) == ((void *)0)) {
   free(swge, 2, sizeof(*swge));
   error = 8;
   goto failed;
  }
  m_copydata(m, __builtin_offsetof(struct ofp_group_mod, gm_buckets),
      swge->swge_buckets_len, (caddr_t)swge->swge_buckets);
 }
 swofp_group_entry_add(sc, swge);
 m_freem(m);
 return (0);
 failed:
 swofp_send_error(sc, m, etype, error);
 return (0);
}
int
swofp_group_mod_modify(struct switch_softc *sc, struct mbuf *m)
{
 struct ofp_group_mod *ogm;
 struct swofp_group_entry *swge;
 uint16_t error, etype;
 uint32_t obucketlen;
 etype = 6;
 ogm = ((struct ofp_group_mod *)((m)->m_hdr.mh_data));
 if (ogm->gm_type != 0) {
  error = 10;
  goto failed;
 }
 if ((swge = swofp_group_entry_lookup(sc,
     ((__uint32_t)(ogm->gm_group_id)))) == ((void *)0)) {
  error = 8;
  goto failed;
 }
 if (swofp_validate_buckets(sc, m, ogm->gm_type, &etype, &error))
  goto failed;
 swge->swge_type = ogm->gm_type;
 obucketlen = swge->swge_buckets_len;
 swge->swge_buckets_len = (((__uint16_t)(ogm->gm_oh.oh_length)) -
     __builtin_offsetof(struct ofp_group_mod, gm_buckets));
 if (obucketlen != swge->swge_buckets_len) {
  free(swge->swge_buckets, 2, obucketlen);
  swge->swge_buckets = ((void *)0);
  if (swge->swge_buckets_len > 0 &&
      (swge->swge_buckets = malloc(swge->swge_buckets_len,
      2, 0x0002|0x0008)) == ((void *)0)) {
   free(swge, 2, sizeof(*swge));
   error = 8;
   goto failed;
  }
 }
 if (swge->swge_buckets != ((void *)0))
  m_copydata(m, __builtin_offsetof(struct ofp_group_mod, gm_buckets),
      swge->swge_buckets_len, (caddr_t)swge->swge_buckets);
 m_freem(m);
 return (0);
failed:
 swofp_send_error(sc, m, etype, error);
 return (0);
}
int
swofp_group_mod_delete(struct switch_softc *sc, struct mbuf *m)
{
 struct ofp_group_mod *ogm;
 struct swofp_group_entry *swge;
 int group_id;
 ogm = ((struct ofp_group_mod *)((m)->m_hdr.mh_data));
 group_id = ((__uint32_t)(ogm->gm_group_id));
 if (group_id == 0xfffffffc)
  swofp_group_entry_delete_all(sc);
 else if ((swge = swofp_group_entry_lookup(sc, group_id)) != ((void *)0))
  swofp_group_entry_delete(sc, swge);
 else {
  swofp_send_error(sc, m, 6,
      8);
  return (0);
 }
 m_freem(m);
 return (0);
}
int
swofp_group_mod(struct switch_softc *sc, struct mbuf *m)
{
 struct ofp_group_mod *ogm;
 uint16_t cmd;
 ogm = ((struct ofp_group_mod *)((m)->m_hdr.mh_data));
 if (((__uint16_t)(ogm->gm_oh.oh_length)) < sizeof(*ogm)) {
  swofp_send_error(sc, m, 1,
      6);
  return (-1);
 }
 cmd = ((__uint16_t)(ogm->gm_command));
 switch (cmd) {
 case 0:
  return swofp_group_mod_add(sc, m);
 case 1:
  return swofp_group_mod_modify(sc, m);
 case 2:
  return swofp_group_mod_delete(sc, m);
 default:
  swofp_send_error(sc, m, 6,
      11);
  break;
 }
 return (0);
}
int
swofp_recv_packet_out(struct switch_softc *sc, struct mbuf *m)
{
 struct ofp_packet_out *pout;
 struct ofp_action_header *ah;
 struct mbuf *mc = ((void *)0), *mcn;
 int al_start, al_len, off;
 uint16_t ohlen, error;
 struct switch_flow_classify swfcl = {};
 struct swofp_pipeline_desc swpld = { .swpld_swfcl = &swfcl };
 pout = ((struct ofp_packet_out *)((m)->m_hdr.mh_data));
 ohlen = ((__uint16_t)(pout->pout_oh.oh_length));
 if (ohlen < sizeof(*pout) ||
     ohlen < (sizeof(*pout) + ((__uint16_t)(pout->pout_actions_len)))) {
  swofp_send_error(sc, m, 1,
      6);
  return (-1);
 }
 al_len = ((__uint16_t)(pout->pout_actions_len));
 al_start = __builtin_offsetof(struct ofp_packet_out, pout_actions);
 ah = (struct ofp_action_header *)
     ((uint8_t *)pout + sizeof(*pout));
 if (swofp_validate_action(sc, ah, al_len, &error)) {
  swofp_send_error(sc, m, 2, error);
  return (22);
 }
 if (pout->pout_buffer_id == 0xffffffff) {
  if ((mc = m_split(m, (al_start + al_len), 0x0002)) == ((void *)0)) {
   m_freem(m);
   return (55);
  }
  mcn = m_dup_pkt(mc, 2, 0x0002);
  m_freem(mc);
  if (mcn == ((void *)0)) {
   m_freem(m);
   return (55);
  }
  mc = mcn;
 } else {
  swofp_send_error(sc, m, 1,
      8);
  return (0);
 }
 mc = switch_flow_classifier(mc, pout->pout_in_port, &swfcl);
 if (mc == ((void *)0)) {
  m_freem(m);
  return (0);
 }
 do { (&swpld.swpld_fwdp_q)->tqh_first = ((void *)0); (&swpld.swpld_fwdp_q)->tqh_last = &(&swpld.swpld_fwdp_q)->tqh_first; } while (0);
 swfcl.swfcl_in_port = ((__uint32_t)(pout->pout_in_port));
 for (off = al_start; off < al_start + al_len;
     off += ((__uint16_t)(ah->ah_len))) {
  ah = (struct ofp_action_header *)(((caddr_t)((m)->m_hdr.mh_data)) + off);
  mc = swofp_execute_action(sc, mc, &swpld, ah);
  if (mc == ((void *)0))
   break;
 }
 if (mc)
  switch_port_egress(sc, &swpld.swpld_fwdp_q, mc);
 m_freem(m);
 return (0);
}
int
swofp_mpmsg_reply_create(struct ofp_multipart *req, struct swofp_mpmsg *swmp)
{
 struct mbuf *hdr, *body;
 struct ofp_multipart *omp;
 __builtin_memset((swmp), (0), (sizeof(*swmp)));
 ml_init(&swmp->swmp_body);
 hdr = m_gethdr((0x0002), (1));
 if (hdr == ((void *)0))
  goto error;
 __builtin_memset((((caddr_t)((hdr)->m_hdr.mh_data))), (0), (sizeof(*omp)));
 omp = ((struct ofp_multipart *)((hdr)->m_hdr.mh_data));
 omp->mp_oh.oh_version = req->mp_oh.oh_version;
 omp->mp_oh.oh_xid = req->mp_oh.oh_xid;
 omp->mp_oh.oh_type = 19;
 omp->mp_type = req->mp_type;
 hdr->m_hdr.mh_len = hdr->M_dat.MH.MH_pkthdr.len = sizeof(*omp);
 swmp->swmp_hdr = hdr;
 body = m_gethdr((0x0002), (1));
 if (body == ((void *)0))
  goto error;
 (void) m_clget((body), (0x0002), (1 << 11));
 if ((body->m_hdr.mh_flags & 0x0001) == 0) {
  m_freem(body);
  goto error;
 }
 body->m_hdr.mh_len = body->M_dat.MH.MH_pkthdr.len = 0;
 ml_enqueue(&swmp->swmp_body, body);
 return (0);
 error:
 m_freem(hdr);
 swmp->swmp_hdr = ((void *)0);
 return (55);
}
int
swofp_mpmsg_put(struct swofp_mpmsg *swmp, caddr_t data, size_t len)
{
 struct mbuf *m, *n;
 int error;
 ((swmp->swmp_hdr != ((void *)0)) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../net/switchofp.c", 5711, "swmp->swmp_hdr != NULL"));
 m = swmp->swmp_body.ml_tail;
 if (m == ((void *)0))
  return (55);
 if (m->M_dat.MH.MH_pkthdr.len + len > 0xffef) {
  n = m_gethdr((0x0002), (1));
  if (n == ((void *)0))
   return (55);
  (void) m_clget((n), (0x0002), (1 << 11));
  if ((n->m_hdr.mh_flags & 0x0001) == 0) {
   m_freem(n);
   return (55);
  }
  n->m_hdr.mh_len = n->M_dat.MH.MH_pkthdr.len = 0;
  ml_enqueue(&swmp->swmp_body, n);
  m = n;
 }
 if ((error = m_copyback(m, m->M_dat.MH.MH_pkthdr.len, len, data, 0x0002)))
  return (error);
 return (0);
}
int
swofp_mpmsg_m_put(struct swofp_mpmsg *swmp, struct mbuf *msg)
{
 struct mbuf *m, *n;
 int len;
 ((swmp->swmp_hdr != ((void *)0)) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../net/switchofp.c", 5748, "swmp->swmp_hdr != NULL"));
 m = swmp->swmp_body.ml_tail;
 if (m == ((void *)0))
  return (55);
 if (m->M_dat.MH.MH_pkthdr.len + msg->M_dat.MH.MH_pkthdr.len > 0xffef) {
  n = m_gethdr((0x0002), (1));
  if (n == ((void *)0))
   return (55);
  (void) m_clget((n), (0x0002), (1 << 11));
  if ((n->m_hdr.mh_flags & 0x0001) == 0) {
   m_freem(n);
   return (55);
  }
  n->m_hdr.mh_len = n->M_dat.MH.MH_pkthdr.len = 0;
  ml_enqueue(&swmp->swmp_body, n);
  m = n;
 }
 len = m->M_dat.MH.MH_pkthdr.len + msg->M_dat.MH.MH_pkthdr.len;
 m_cat(m, msg);
 m->M_dat.MH.MH_pkthdr.len = len;
 return (0);
}
void
swofp_mpmsg_destroy(struct swofp_mpmsg *swmp)
{
 m_freem(swmp->swmp_hdr);
 ml_purge(&swmp->swmp_body);
}
int
swofp_multipart_req(struct switch_softc *sc, struct mbuf *m)
{
 struct ofp_multipart *omp;
 ofp_msg_handler handler;
 omp = ((struct ofp_multipart *)((m)->m_hdr.mh_data));
 if (((__uint16_t)(omp->mp_oh.oh_length)) < sizeof(*omp)) {
  swofp_send_error(sc, m, 1,
      6);
  return (-1);
 }
 if (omp->mp_flags & 18) {
  m_freem(m);
  return (55);
 }
 handler = swofp_lookup_mpmsg_handler(((__uint16_t)(omp->mp_type)));
 if (handler)
  (*handler)(sc, m);
 else
  swofp_send_error(sc, m, 1,
      2);
 return (0);
}
int
swofp_multipart_reply(struct switch_softc *sc, struct swofp_mpmsg *swmp)
{
 struct ofp_multipart *omp;
 struct mbuf *hdr, *body;
 int len, error = 0;
 ((swmp->swmp_hdr != ((void *)0)) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../net/switchofp.c", 5820, "swmp->swmp_hdr != NULL"));
 omp = ((struct ofp_multipart *)((swmp->swmp_hdr)->m_hdr.mh_data));
 while ((body = ml_dequeue(&swmp->swmp_body)) != ((void *)0)) {
  omp->mp_oh.oh_length = ((__uint16_t)(sizeof(*omp) + body->M_dat.MH.MH_pkthdr.len));
  if (swmp->swmp_body.ml_tail != ((void *)0)) {
   omp->mp_flags |= ((__uint16_t)(1));
   if ((hdr = m_dup_pkt(swmp->swmp_hdr, 0,
       0x0001)) == ((void *)0)) {
    error = 55;
    goto error;
   }
  } else {
   omp->mp_flags &= ~((__uint16_t)(1));
   hdr = swmp->swmp_hdr;
  }
  if (body->M_dat.MH.MH_pkthdr.len) {
   len = hdr->M_dat.MH.MH_pkthdr.len + body->M_dat.MH.MH_pkthdr.len;
   m_cat(hdr, body);
   hdr->M_dat.MH.MH_pkthdr.len = len;
  } else
   m_freem(body);
  (void)swofp_output(sc, hdr);
 }
 return (0);
 error:
 swofp_mpmsg_destroy(swmp);
 return (error);
}
int
swofp_put_flow(struct mbuf *m, struct swofp_flow_table *swft,
    struct swofp_flow_entry *swfe)
{
 struct ofp_flow_stats *pofs, ofs;
 struct timespec now, duration;
 const uint8_t pad_data[8] = {};
 struct mbuf *n;
 int start, off, error, offp, pad = 0;
 int omlen;
 __builtin_memset((&ofs), (0), (sizeof(ofs)));
 ofs.fs_table_id = swft->swft_table_id;
 nanouptime(&now);
 do { (&duration)->tv_sec = (&now)->tv_sec - (&swfe->swfe_installed_time)->tv_sec; (&duration)->tv_nsec = (&now)->tv_nsec - (&swfe->swfe_installed_time)->tv_nsec; if ((&duration)->tv_nsec < 0) { (&duration)->tv_sec--; (&duration)->tv_nsec += 1000000000L; } } while (0);
 ofs.fs_duration_sec = ((__uint32_t)((int)duration.tv_sec));
 ofs.fs_priority = ((__uint16_t)(swfe->swfe_priority));
 ofs.fs_idle_timeout = ((__uint16_t)(swfe->swfe_idle_timeout));
 ofs.fs_hard_timeout = ((__uint16_t)(swfe->swfe_hard_timeout));
 ofs.fs_cookie = ((__uint64_t)(swfe->swfe_cookie));
 ofs.fs_byte_count = ((__uint64_t)(swfe->swfe_byte_cnt));
 ofs.fs_packet_count = ((__uint64_t)(swfe->swfe_packet_cnt));
 start = off = m->M_dat.MH.MH_pkthdr.len;
 if ((error = m_copyback(m, off, (sizeof(ofs) -
     sizeof(struct ofp_match)), &ofs, 0x0002)))
  goto failed;
 off += (sizeof(ofs) - sizeof(struct ofp_match));
 omlen = ((__uint16_t)(swfe->swfe_match->om_length));
 pad = (((omlen) + (8 - 1)) & ~(8 - 1)) - omlen;
 if ((error = m_copyback(m, off, omlen, swfe->swfe_match, 0x0002)))
  goto failed;
 off += omlen;
 if ((error = m_copyback(m, off, pad, pad_data, 0x0002)))
  goto failed;
 off += pad;
 if (swfe->swfe_goto_table) {
  if ((error = m_copyback(m, off,
      ((__uint16_t)(swfe->swfe_goto_table->igt_len)),
      swfe->swfe_goto_table, 0x0002)))
   goto failed;
  off += ((__uint16_t)(swfe->swfe_goto_table->igt_len));
 }
 if (swfe->swfe_write_metadata) {
  if ((error = m_copyback(m, off,
      ((__uint16_t)(swfe->swfe_write_metadata->iwm_len)),
      swfe->swfe_write_metadata, 0x0002)))
   goto failed;
  off += ((__uint16_t)(swfe->swfe_write_metadata->iwm_len));
 }
 if (swfe->swfe_apply_actions) {
  if ((error = m_copyback(m, off,
      ((__uint16_t)(swfe->swfe_apply_actions->ia_len)),
      swfe->swfe_apply_actions, 0x0002)))
   goto failed;
  off += ((__uint16_t)(swfe->swfe_apply_actions->ia_len));
 }
 if (swfe->swfe_write_actions) {
  if ((error = m_copyback(m, off,
      ((__uint16_t)(swfe->swfe_write_actions->ia_len)),
      swfe->swfe_write_actions, 0x0002)))
   goto failed;
  off += ((__uint16_t)(swfe->swfe_write_actions->ia_len));
 }
 if (swfe->swfe_clear_actions) {
  if ((error = m_copyback(m, off,
      ((__uint16_t)(swfe->swfe_clear_actions->ia_len)),
      swfe->swfe_clear_actions, 0x0002)))
   goto failed;
  off += ((__uint16_t)(swfe->swfe_clear_actions->ia_len));
 }
 if ((n = m_pulldown(m, start, sizeof(*pofs), &offp)) == ((void *)0))
  return (55);
 pofs = (struct ofp_flow_stats *)(((caddr_t)((n)->m_hdr.mh_data)) + offp);
 pofs->fs_length = ((__uint16_t)(off - start));
 return (0);
 failed:
 m_freem(m);
 return (error);
}
int
swofp_mp_recv_desc(struct switch_softc *sc, struct mbuf *m)
{
 struct ofp_desc od;
 struct swofp_mpmsg swmp;
 int error;
 if ((error = swofp_mpmsg_reply_create(
     ((struct ofp_multipart *)((m)->m_hdr.mh_data)), &swmp)))
  goto failed;
 __builtin_memset((&od), (0), (sizeof(od)));
 strlcpy(od.d_mfr_desc, "openbsd.org", 256);
 strlcpy(od.d_hw_desc, "openbsd", 256);
 strlcpy(od.d_sw_desc, "openbsd", 256);
 strlcpy(od.d_serial_num, "0", 32);
 strlcpy(od.d_dp_desc, sc->sc_if.if_xname, 256);
 if ((error = swofp_mpmsg_put(&swmp, (caddr_t)&od, sizeof(od))))
  goto failed;
 m_freem(m);
 return swofp_multipart_reply(sc, &swmp);
 failed:
 m_freem(m);
 swofp_mpmsg_destroy(&swmp);
 return (error);
}
int
swofp_put_flows_from_table(struct swofp_mpmsg *swmp,
    struct swofp_flow_table *swft, struct ofp_flow_stats_request *ofsr)
{
 struct swofp_flow_entry *swfe;
 struct mbuf *m;
 int error = 0;
 for((swfe) = ((&swft->swft_flow_list)->lh_first); (swfe)!= ((void *)0); (swfe) = ((swfe)->swfe_next.le_next)) {
  if (!swofp_flow_cmp_non_strict(swfe, &ofsr->fsr_match))
   continue;
  if (!swofp_flow_filter(swfe, ((__uint64_t)(ofsr->fsr_cookie)),
      ((__uint64_t)(ofsr->fsr_cookie_mask)), ((__uint32_t)(ofsr->fsr_out_port)),
      ((__uint32_t)(ofsr->fsr_out_group))))
   continue;
  m = m_gethdr((0x0002), (1));
  if (m == ((void *)0))
   return (55);
  m->m_hdr.mh_len = m->M_dat.MH.MH_pkthdr.len = 0;
  if ((error = swofp_put_flow(m, swft, swfe)))
   break;
  if ((error = swofp_mpmsg_m_put(swmp, m))) {
   m_freem(m);
   break;
  }
 }
 return (error);
}
int
swofp_mp_recv_flow(struct switch_softc *sc, struct mbuf *m)
{
 struct swofp_ofs *ofs = sc->sc_ofs;
 struct ofp_flow_stats_request *ofsr;
 struct swofp_flow_table *swft;
 struct swofp_mpmsg swmp;
 int error;
 if ((error = swofp_mpmsg_reply_create(
     ((struct ofp_multipart *)((m)->m_hdr.mh_data)), &swmp)))
  goto failed;
 ofsr = (struct ofp_flow_stats_request *)
     (((caddr_t)((m)->m_hdr.mh_data)) + sizeof(struct ofp_multipart));
 for((swft) = ((&ofs->swofs_table_list)->tqh_first); (swft) != ((void *)0); (swft) = ((swft)->swft_table_next.tqe_next)) {
  if ((ofsr->fsr_table_id != 0xff) &&
      (ofsr->fsr_table_id != swft->swft_table_id))
   continue;
  if ((error = swofp_put_flows_from_table(&swmp, swft, ofsr)))
   goto failed;
 }
 m_freem(m);
 return swofp_multipart_reply(sc, &swmp);
 failed:
 m_freem(m);
 swofp_mpmsg_destroy(&swmp);
 return (error);
}
void
swofp_aggregate_stat_from_table(struct ofp_aggregate_stats *aggstat,
    struct swofp_flow_table *swft, struct ofp_aggregate_stats_request *oasr)
{
 struct swofp_flow_entry *swfe;
 uint64_t packet_cnt = 0, byte_cnt = 0;
 uint32_t flow_cnt = 0;
 for((swfe) = ((&swft->swft_flow_list)->lh_first); (swfe)!= ((void *)0); (swfe) = ((swfe)->swfe_next.le_next)) {
  if (!swofp_flow_cmp_non_strict(swfe, &oasr->asr_match))
   continue;
  if (!swofp_flow_filter(swfe, ((__uint64_t)(oasr->asr_cookie)),
      ((__uint64_t)(oasr->asr_cookie_mask)), ((__uint32_t)(oasr->asr_out_port)),
      ((__uint32_t)(oasr->asr_out_group))))
   continue;
  packet_cnt += swfe->swfe_packet_cnt;
  byte_cnt += swfe->swfe_byte_cnt;
  flow_cnt++;
 }
 aggstat->as_packet_count = ((__uint64_t)(packet_cnt));
 aggstat->as_byte_count = ((__uint64_t)(byte_cnt));
 aggstat->as_flow_count = ((__uint32_t)(flow_cnt++));
}
int
swofp_mp_recv_aggregate_flow_stat(struct switch_softc *sc, struct mbuf *m)
{
 struct swofp_ofs *ofs = sc->sc_ofs;
 struct ofp_aggregate_stats_request *oasr;
 struct swofp_flow_table *swft;
 struct swofp_mpmsg swmp;
 struct ofp_aggregate_stats aggstat;
 int error;
 if ((error = swofp_mpmsg_reply_create(
     ((struct ofp_multipart *)((m)->m_hdr.mh_data)), &swmp)))
  goto failed;
 __builtin_memset((&aggstat), (0), (sizeof(aggstat)));
 oasr = (struct ofp_aggregate_stats_request *)
     (((caddr_t)((m)->m_hdr.mh_data)) + sizeof(struct ofp_multipart));
 for((swft) = ((&ofs->swofs_table_list)->tqh_first); (swft) != ((void *)0); (swft) = ((swft)->swft_table_next.tqe_next)) {
  if ((oasr->asr_table_id != 0xff) &&
      (oasr->asr_table_id != swft->swft_table_id))
   continue;
  swofp_aggregate_stat_from_table(&aggstat, swft, oasr);
 }
 if ((error = swofp_mpmsg_put(&swmp, (caddr_t)&aggstat,
     sizeof(aggstat))))
  goto failed;
 m_freem(m);
 return swofp_multipart_reply(sc, &swmp);
 failed:
 m_freem(m);
 swofp_mpmsg_destroy(&swmp);
 return (error);
}
int
swofp_mp_recv_table_stats(struct switch_softc *sc, struct mbuf *m)
{
 struct swofp_ofs *ofs = sc->sc_ofs;
 struct ofp_table_stats tblstat;
 struct swofp_flow_table *swft;
 struct swofp_mpmsg swmp;
 int error;
 if ((error = swofp_mpmsg_reply_create(
     ((struct ofp_multipart *)((m)->m_hdr.mh_data)), &swmp)))
  goto failed;
 for((swft) = ((&ofs->swofs_table_list)->tqh_first); (swft) != ((void *)0); (swft) = ((swft)->swft_table_next.tqe_next)) {
  __builtin_memset((&tblstat), (0), (sizeof(tblstat)));
  tblstat.ts_table_id = swft->swft_table_id;
  tblstat.ts_active_count = ((__uint32_t)((uint32_t)swft->swft_flow_num));
  tblstat.ts_lookup_count = ((__uint64_t)(swft->swft_lookup_count));
  tblstat.ts_matched_count = ((__uint64_t)(swft->swft_matched_count));
  if ((error = swofp_mpmsg_put(&swmp, (caddr_t)&tblstat,
      sizeof(tblstat))))
   goto failed;
 }
 m_freem(m);
 return swofp_multipart_reply(sc, &swmp);
 failed:
 m_freem(m);
 swofp_mpmsg_destroy(&swmp);
 return (error);
}
int
swofp_mp_recv_port_stats(struct switch_softc *sc, struct mbuf *m)
{
 struct switch_port *swpo;
 struct swofp_mpmsg swmp;
 struct ifnet *ifs;
 struct ofp_port_stats postat;
 int error;
 struct timespec now, duration;
 if ((error = swofp_mpmsg_reply_create(
     ((struct ofp_multipart *)((m)->m_hdr.mh_data)), &swmp)))
  goto failed;
 nanouptime(&now);
 for((swpo) = ((&sc->sc_swpo_list)->tqh_first); (swpo) != ((void *)0); (swpo) = ((swpo)->swpo_list_next.tqe_next)) {
  __builtin_memset((&postat), (0), (sizeof(postat)));
  ifs = if_get(swpo->swpo_ifindex);
  if (ifs == ((void *)0))
   continue;
  if (swpo->swpo_flags & 0x1000)
   postat.pt_port_no = ((__uint32_t)(0xfffffffe));
  else
   postat.pt_port_no = ((__uint32_t)(swpo->swpo_port_no));
  postat.pt_rx_packets = ((__uint64_t)(ifs->if_data.ifi_ipackets));
  postat.pt_tx_packets = ((__uint64_t)(ifs->if_data.ifi_opackets));
  postat.pt_rx_bytes = ((__uint64_t)(ifs->if_data.ifi_obytes));
  postat.pt_tx_bytes = ((__uint64_t)(ifs->if_data.ifi_ibytes));
  postat.pt_rx_dropped = ((__uint64_t)(ifs->if_data.ifi_iqdrops));
  postat.pt_tx_dropped = ((__uint64_t)(ifs->if_data.ifi_oqdrops));
  postat.pt_rx_errors = ((__uint64_t)(ifs->if_data.ifi_ierrors));
  postat.pt_tx_errors = ((__uint64_t)(ifs->if_data.ifi_oerrors));
  postat.pt_rx_frame_err = ((__uint64_t)(0));
  postat.pt_rx_over_err = ((__uint64_t)(0));
  postat.pt_rx_crc_err = ((__uint64_t)(0));
  postat.pt_collision = ((__uint64_t)(ifs->if_data.ifi_collisions));
  do { (&duration)->tv_sec = (&now)->tv_sec - (&swpo->swpo_appended)->tv_sec; (&duration)->tv_nsec = (&now)->tv_nsec - (&swpo->swpo_appended)->tv_nsec; if ((&duration)->tv_nsec < 0) { (&duration)->tv_sec--; (&duration)->tv_nsec += 1000000000L; } } while (0);
  postat.pt_duration_sec = ((__uint32_t)((uint32_t)duration.tv_sec));
  postat.pt_duration_nsec = ((__uint32_t)(duration.tv_nsec));
  if_put(ifs);
  if ((error = swofp_mpmsg_put(&swmp, (caddr_t)&postat,
      sizeof(postat))))
   goto failed;
 }
 m_freem(m);
 return swofp_multipart_reply(sc, &swmp);
 failed:
 m_freem(m);
 swofp_mpmsg_destroy(&swmp);
 return (error);
}
int
swofp_table_features_put_oxm(struct mbuf *m, int *off, uint16_t tp_type)
{
 struct ofp_table_feature_property tp;
 struct ofp_ox_match oxm;
 uint32_t padding = 0;
 int i, supported = 0;
 for (i = 0 ; i < (sizeof((ofp_oxm_handlers)) / sizeof((ofp_oxm_handlers)[0])); i++) {
  switch (tp_type) {
  case 8:
   if (ofp_oxm_handlers[i].oxm_match == ((void *)0))
    continue;
   break;
  case 10:
   if (ofp_oxm_handlers[i].oxm_match == ((void *)0) ||
       !(ofp_oxm_handlers[i].oxm_flags &
       0x2))
    continue;
   break;
  case 14:
  case 15:
  case 12:
  case 13:
   if (ofp_oxm_handlers[i].oxm_set == ((void *)0))
    continue;
   break;
  }
  supported++;
 }
 tp.tp_type = ((__uint16_t)(tp_type));
 tp.tp_length = ((__uint16_t)((sizeof(oxm) * supported) + sizeof(tp)));
 if (m_copyback(m, *off, sizeof(tp), (caddr_t)&tp, 0x0002))
  return (13);
 *off += sizeof(tp);
 for (i = 0 ; i < (sizeof((ofp_oxm_handlers)) / sizeof((ofp_oxm_handlers)[0])); i++) {
  switch (tp_type) {
  case 8:
   if (ofp_oxm_handlers[i].oxm_match == ((void *)0))
    continue;
   break;
  case 10:
   if (ofp_oxm_handlers[i].oxm_match == ((void *)0) ||
       !(ofp_oxm_handlers[i].oxm_flags &
       0x2))
    continue;
   break;
  case 14:
  case 15:
  case 12:
  case 13:
   if (ofp_oxm_handlers[i].oxm_set == ((void *)0))
    continue;
   break;
  }
  __builtin_memset((&oxm), (0), (sizeof(oxm)));
  (((&oxm)->oxm_fh) = ((ofp_oxm_handlers[i].oxm_field) << 1));
  if ((tp_type == 8) &&
      (ofp_oxm_handlers[i].oxm_flags & 0x1))
   (((&oxm)->oxm_fh) |= 0x1);
  oxm.oxm_class = ((__uint16_t)(0x8000));
  oxm.oxm_length = ofp_oxm_handlers[i].oxm_len;
  if (m_copyback(m, *off, sizeof(oxm), (caddr_t)&oxm, 0x0002))
   return (13);
  *off += sizeof(oxm);
 }
 if ((supported & 0x1) == 0) {
  if (m_copyback(m, *off, sizeof(padding),
      (caddr_t)&padding, 0x0002))
   return (13);
  *off += sizeof(padding);
 }
 return (0);
}
int
swofp_table_features_put_actions(struct mbuf *m, int *off, uint16_t tp_type)
{
 struct ofp_table_feature_property tp;
 struct ofp_action_header action;
 int i, supported = 0;
 int actionlen, padsize;
 uint8_t padding[8];
 for (i = 0 ; i < (sizeof((ofp_action_handlers)) / sizeof((ofp_action_handlers)[0])); i++) {
  if (ofp_action_handlers[i].action)
   supported++;
 }
 actionlen = sizeof(action) - sizeof(action.ah_pad);
 tp.tp_type = ((__uint16_t)(tp_type));
 tp.tp_length = (actionlen * supported) + sizeof(tp);
 padsize = (((tp.tp_length) + (8 - 1)) & ~(8 - 1)) - tp.tp_length;
 tp.tp_length = ((__uint16_t)(tp.tp_length));
 if (m_copyback(m, *off, sizeof(tp), (caddr_t)&tp, 0x0002))
  return (13);
 *off += sizeof(tp);
 for (i = 0 ; i < (sizeof((ofp_action_handlers)) / sizeof((ofp_action_handlers)[0])); i++) {
  if (ofp_action_handlers[i].action == ((void *)0))
   continue;
  __builtin_memset((&action), (0), (actionlen));
  action.ah_type = ((__uint16_t)(ofp_action_handlers[i].action_type));
  action.ah_len = ((__uint16_t)(actionlen));
  if (m_copyback(m, *off, actionlen,
      (caddr_t)&action, 0x0002))
   return (13);
  *off += actionlen;
 }
 if (padsize) {
  __builtin_memset((padding), (0), (padsize));
  if (m_copyback(m, *off, padsize, &padding, 0x0002))
   return (13);
  *off += padsize;
 }
 return (0);
}
int
swofp_table_features_put_instruction(struct mbuf *m, int *off, uint16_t tp_type)
{
 struct ofp_table_feature_property tp;
 struct ofp_instruction instructions[] =
     {
  {
   ((__uint16_t)(1)),
   ((__uint16_t)(sizeof(struct ofp_instruction)))
  },
  {
   ((__uint16_t)(2)),
   ((__uint16_t)(sizeof(struct ofp_instruction)))
  },
  {
   ((__uint16_t)(3)),
   ((__uint16_t)(sizeof(struct ofp_instruction)))
  },
  {
   ((__uint16_t)(4)),
   ((__uint16_t)(sizeof(struct ofp_instruction)))
  },
  {
   ((__uint16_t)(5)),
   ((__uint16_t)(sizeof(struct ofp_instruction)))
  },
     };
 tp.tp_type = ((__uint16_t)(tp_type));
 tp.tp_length = ((__uint16_t)(sizeof(instructions) + sizeof(tp)));
 if (m_copyback(m, *off, sizeof(tp), (caddr_t)&tp, 0x0002))
  return (13);
 *off += sizeof(tp);
 if (m_copyback(m, *off, sizeof(instructions),
     (caddr_t)instructions, 0x0002))
  return (13);
 *off += sizeof(instructions);
 return (0);
}
int
swofp_mp_recv_table_features(struct switch_softc *sc, struct mbuf *m)
{
 struct swofp_ofs *ofs = sc->sc_ofs;
 struct swofp_flow_table *swft;
 struct ofp_table_features *tblf;
 struct mbuf *n;
 int off, error;
 struct swofp_mpmsg swmp;
 if ((error = swofp_mpmsg_reply_create(
     ((struct ofp_multipart *)((m)->m_hdr.mh_data)), &swmp)))
  goto error;
 for((swft) = ((&ofs->swofs_table_list)->tqh_first); (swft) != ((void *)0); (swft) = ((swft)->swft_table_next.tqe_next)) {
  n = m_gethdr((0x0002), (1));
  if (n == ((void *)0))
   goto error;
  (void) m_clget((n), (0x0002), (1 << 11));
  if ((n->m_hdr.mh_flags & 0x0001) == 0) {
   m_freem(n);
   goto error;
  }
  n->m_hdr.mh_len = n->M_dat.MH.MH_pkthdr.len = sizeof(*tblf);
  tblf = ((struct ofp_table_features *)((n)->m_hdr.mh_data));
  __builtin_memset((tblf), (0), (sizeof(*tblf)));
  tblf->tf_tableid = swft->swft_table_id;
  tblf->tf_metadata_match = 0xffffffffffffffffULL;
  tblf->tf_metadata_write = 0xffffffffffffffffULL;
  tblf->tf_config = 0;
  tblf->tf_max_entries = ((__uint32_t)(ofs->swofs_flow_max_entry));
  off = sizeof(*tblf);
  if ((error = swofp_table_features_put_instruction(n, &off,
      0)))
   goto error;
  if ((error = swofp_table_features_put_instruction(n, &off,
      1)))
   goto error;
  if ((error = swofp_table_features_put_actions(n, &off,
      6)))
   goto error;
  if ((error = swofp_table_features_put_actions(n, &off,
      7)))
   goto error;
  if ((error = swofp_table_features_put_actions(n, &off,
      4)))
   goto error;
  if ((error = swofp_table_features_put_actions(n, &off,
      5)))
   goto error;
  if ((error = swofp_table_features_put_oxm(n, &off,
      8)))
   goto error;
  if ((error = swofp_table_features_put_oxm(n, &off,
      10)))
   goto error;
  if ((error = swofp_table_features_put_oxm(n, &off,
      12)))
   goto error;
  if ((error = swofp_table_features_put_oxm(n, &off,
      13)))
   goto error;
  if ((error = swofp_table_features_put_oxm(n, &off,
      14)))
   goto error;
  if ((error = swofp_table_features_put_oxm(n, &off,
      15)))
   goto error;
  tblf->tf_length = ((__uint16_t)(n->M_dat.MH.MH_pkthdr.len));
  if ((error = swofp_mpmsg_m_put(&swmp, n))) {
   m_freem(n);
   goto error;
  }
 }
 m_freem(m);
 return swofp_multipart_reply(sc, &swmp);
 error:
 m_freem(m);
 swofp_mpmsg_destroy(&swmp);
 return (error);
}
int
swofp_mp_recv_port_desc(struct switch_softc *sc, struct mbuf *m)
{
 struct ofp_switch_port swp;
 struct switch_port *swpo;
 struct swofp_mpmsg swmp;
 struct ifnet *ifs;
 int error;
 if ((error = swofp_mpmsg_reply_create(
     ((struct ofp_multipart *)((m)->m_hdr.mh_data)), &swmp))) {
  m_freem(m);
  return (error);
 }
 for((swpo) = ((&sc->sc_swpo_list)->tqh_first); (swpo) != ((void *)0); (swpo) = ((swpo)->swpo_list_next.tqe_next)) {
  __builtin_memset((&swp), (0), (sizeof(swp)));
  ifs = if_get(swpo->swpo_ifindex);
  if (ifs == ((void *)0))
   continue;
  if (swpo->swpo_flags & 0x1000)
   swp.swp_number = ((__uint32_t)(0xfffffffe));
  else
   swp.swp_number = ((__uint32_t)(swpo->swpo_port_no));
  __builtin_memcpy((swp.swp_macaddr), (((struct arpcom *)ifs)->ac_enaddr), (6));
  strlcpy(swp.swp_name, ifs->if_xname,
      sizeof(swp.swp_name));
  if (!((ifs->if_flags) & (0x1)))
   swp.swp_config |= 0x1;
  if (!((swpo->swpo_flags) & (0x0008)))
   swp.swp_config |= 0x2;
  swp.swp_config = ((__uint32_t)(swp.swp_config));
  if (!((ifs->if_data.ifi_link_state) >= 4 || (ifs->if_data.ifi_link_state) == 0))
   swp.swp_state |= 0x1;
  if_put(ifs);
  swp.swp_state = ((__uint32_t)(swp.swp_state));
  swp.swp_cur = ((__uint32_t)(swp.swp_cur));
  swp.swp_advertised = ((__uint32_t)(swp.swp_advertised));
  swp.swp_supported = ((__uint32_t)(swp.swp_supported));
  swp.swp_peer = ((__uint32_t)(swp.swp_peer));
  if ((error = swofp_mpmsg_put(&swmp, (caddr_t)&swp,
      sizeof(swp))))
   goto error;
 }
 m_freem(m);
 return swofp_multipart_reply(sc, &swmp);
 error:
 m_freem(m);
 swofp_mpmsg_destroy(&swmp);
 return (error);
}
int
swofp_mp_recv_group_desc(struct switch_softc *sc, struct mbuf *m)
{
 struct ofp_group_desc ogd;
 struct swofp_group_entry *swge;
 struct swofp_mpmsg swmp;
 int error;
 if ((error = swofp_mpmsg_reply_create(
     ((struct ofp_multipart *)((m)->m_hdr.mh_data)), &swmp)))
  goto failed;
 for((swge) = ((&sc->sc_ofs->swofs_group_table)->lh_first); (swge)!= ((void *)0); (swge) = ((swge)->swge_next.le_next)) {
  __builtin_memset((&ogd), (0), (sizeof(ogd)));
  ogd.gd_length = ((__uint16_t)(__builtin_offsetof(struct ofp_group_desc, gd_buckets) + swge->swge_buckets_len));
  ogd.gd_group_id = ((__uint32_t)(swge->swge_group_id));
  ogd.gd_type = swge->swge_type;
  if ((error = swofp_mpmsg_put(&swmp, (caddr_t)&ogd,
      sizeof(ogd))))
   goto failed;
  if (swge->swge_buckets != ((void *)0) &&
      (error = swofp_mpmsg_put(&swmp, (caddr_t)swge->swge_buckets,
      swge->swge_buckets_len)))
   goto failed;
 }
 m_freem(m);
 return swofp_multipart_reply(sc, &swmp);
 failed:
 m_freem(m);
 swofp_mpmsg_destroy(&swmp);
 return (error);
}
int
swofp_barrier_req(struct switch_softc *sc, struct mbuf *m)
{
 swofp_barrier_reply(sc, m);
 return 0;
}
void
swofp_barrier_reply(struct switch_softc *sc, struct mbuf *m)
{
 struct ofp_header *oh;
 oh = ((struct ofp_header *)((m)->m_hdr.mh_data));
 oh->oh_type = 21;
 (void)swofp_output(sc, m);
}
