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
void vfs_stall_barrier(void);
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
struct ipc_perm {
 uid_t cuid;
 gid_t cgid;
 uid_t uid;
 gid_t gid;
 mode_t mode;
 unsigned short seq;
 key_t key;
};
struct ucred;
int ipcperm(struct ucred *, struct ipc_perm *, int);
struct msqid_ds {
 struct ipc_perm msg_perm;
 struct msg *msg_first;
 struct msg *msg_last;
 unsigned long msg_cbytes;
 unsigned long msg_qnum;
 unsigned long msg_qbytes;
 pid_t msg_lspid;
 pid_t msg_lrpid;
 time_t msg_stime;
 long msg_pad1;
 time_t msg_rtime;
 long msg_pad2;
 time_t msg_ctime;
 long msg_pad3;
 long msg_pad4[4];
};
struct msg {
 long msg_type;
 size_t msg_len;
 struct mbuf *msg_data;
 struct { struct msg *tqe_next; struct msg **tqe_prev; } msg_next;
};
struct que {
 struct msqid_ds msqid_ds;
 int que_ix;
 int que_flags;
 int que_references;
 struct { struct que *tqe_next; struct que **tqe_prev; } que_next;
 struct { struct msg *tqh_first; struct msg **tqh_last; } que_msgs;
};
struct mymsg {
 long mtype;
 char mtext[1];
};
struct msginfo {
 int msgmax,
  msgmni,
  msgmnb,
  msgtql,
  msgssz,
  msgseg;
};
extern struct msginfo msginfo;
int sysctl_sysvmsg(int *, u_int, void *, size_t *);
struct msg_sysctl_info {
 struct msginfo msginfo;
 struct msqid_ds msgids[1];
};
struct proc;
void msginit(void);
int msgctl1(struct proc *, int, int, caddr_t,
     int (*)(const void *, void *, size_t),
     int (*)(const void *, void *, size_t));
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
struct que *que_create(key_t, struct ucred *, int);
struct que *que_lookup(int);
struct que *que_key_lookup(key_t);
void que_wakewriters(void);
void que_free(struct que *);
struct msg *msg_create(struct que *);
void msg_free(struct msg *);
void msg_enqueue(struct que *, struct msg *, struct proc *);
void msg_dequeue(struct que *, struct msg *, struct proc *);
struct msg *msg_lookup(struct que *, int);
int msg_copyin(struct msg *, const char *, size_t, struct proc *);
int msg_copyout(struct msg *, char *, size_t *, struct proc *);
struct pool sysvmsgpl;
struct msginfo msginfo;
struct { struct que *tqh_first; struct que **tqh_last; } msg_queues;
int num_ques;
int num_msgs;
int sequence;
int maxmsgs;
void
msginit(void)
{
 msginfo.msgmax = (8*2048);
 msginfo.msgmni = 40;
 msginfo.msgmnb = 2048;
 msginfo.msgtql = 40;
 msginfo.msgssz = 8;
 msginfo.msgseg = 2048;
 pool_init(&sysvmsgpl, sizeof(struct msg), 0, 0, 0x0001,
     "sysvmsgpl", ((void *)0));
 do { (&msg_queues)->tqh_first = ((void *)0); (&msg_queues)->tqh_last = &(&msg_queues)->tqh_first; } while (0);
 num_ques = 0;
 num_msgs = 0;
 sequence = 1;
 maxmsgs = 0;
}
int
sys_msgctl(struct proc *p, void *v, register_t *retval)
{
 struct sys_msgctl_args *uap = v;
 return (msgctl1(p, ((uap)->msqid.be.datum), ((uap)->cmd.be.datum),
     (caddr_t)((uap)->buf.be.datum), copyin, copyout));
}
int
msgctl1(struct proc *p, int msqid, int cmd, caddr_t buf,
    int (*ds_copyin)(const void *, void *, size_t),
    int (*ds_copyout)(const void *, void *, size_t))
{
 struct msqid_ds tmp;
 struct ucred *cred = p->p_ucred;
 struct que *que;
 int error = 0;
 if ((que = que_lookup(msqid)) == ((void *)0))
  return (22);
 (que)->que_references++;
 switch (cmd) {
 case 0:
  if ((error = ipcperm(cred, &que->msqid_ds.msg_perm, 010000)))
   goto out;
  do { if (((que)->que_next.tqe_next) != ((void *)0)) (que)->que_next.tqe_next->que_next.tqe_prev = (que)->que_next.tqe_prev; else (&msg_queues)->tqh_last = (que)->que_next.tqe_prev; *(que)->que_next.tqe_prev = (que)->que_next.tqe_next; ((que)->que_next.tqe_prev) = ((void *)-1); ((que)->que_next.tqe_next) = ((void *)-1); } while (0);
  que->que_flags |= 0x04;
  if (--que->que_references > 0) {
   wakeup(que);
   tsleep(&que->que_references, 22, "msgqrm", 0);
  }
  que_free(que);
  return (0);
 case 1:
  if ((error = ipcperm(cred, &que->msqid_ds.msg_perm, 010000)))
   goto out;
  if ((error = ds_copyin(buf, &tmp, sizeof(struct msqid_ds))))
   goto out;
  if (tmp.msg_qbytes > que->msqid_ds.msg_qbytes &&
      cred->cr_uid != 0) {
   error = 1;
   goto out;
  }
  if (tmp.msg_qbytes > msginfo.msgmnb)
   tmp.msg_qbytes = msginfo.msgmnb;
  if (tmp.msg_qbytes == 0) {
   error = 22;
   goto out;
  }
  que->msqid_ds.msg_perm.uid = tmp.msg_perm.uid;
  que->msqid_ds.msg_perm.gid = tmp.msg_perm.gid;
  que->msqid_ds.msg_perm.mode =
      (que->msqid_ds.msg_perm.mode & ~0777) |
      (tmp.msg_perm.mode & 0777);
  que->msqid_ds.msg_qbytes = tmp.msg_qbytes;
  que->msqid_ds.msg_ctime = time_second;
  break;
 case 2:
  if ((error = ipcperm(cred, &que->msqid_ds.msg_perm, 000400)))
   goto out;
  error = ds_copyout(&que->msqid_ds, buf,
      sizeof(struct msqid_ds));
  break;
 default:
  error = 22;
  break;
 }
out:
 do { if (--(que)->que_references == 0 && (que)->que_flags & 0x04) wakeup_n((&(que)->que_references), 1); } while (0);
 return (error);
}
int
sys_msgget(struct proc *p, void *v, register_t *retval)
{
 struct sys_msgget_args *uap = v;
 struct ucred *cred = p->p_ucred;
 struct que *que;
 key_t key = ((uap)->key.be.datum);
 int msgflg = ((uap)->msgflg.be.datum);
 int error = 0;
again:
 if (key != (key_t)0) {
  que = que_key_lookup(key);
  if (que) {
   if ((msgflg & 001000) && (msgflg & 002000))
    return (17);
   if ((error = ipcperm(cred, &que->msqid_ds.msg_perm,
       msgflg & 0700)))
    return (error);
   goto found;
  }
 }
 if (key != (key_t)0 && !(msgflg & 001000))
  return (2);
 if (num_ques >= msginfo.msgmni)
  return (28);
 if ((que = que_create(key, cred, msgflg & 0777)) == ((void *)0))
  goto again;
found:
 *retval = (((que->msqid_ds.msg_perm.seq) << 16) | (que->que_ix & 0xffff));
 return (error);
}
int
sys_msgsnd(struct proc *p, void *v, register_t *retval)
{
 struct sys_msgsnd_args *uap = v;
 struct ucred *cred = p->p_ucred;
 struct que *que;
 struct msg *msg;
 size_t msgsz = ((uap)->msgsz.be.datum);
 int error;
 if ((que = que_lookup(((uap)->msqid.be.datum))) == ((void *)0))
  return (22);
 if (msgsz > que->msqid_ds.msg_qbytes || msgsz > msginfo.msgmax)
  return (22);
 if ((error = ipcperm(cred, &que->msqid_ds.msg_perm, 000200)))
  return (error);
 (que)->que_references++;
 while (((que)->msqid_ds.msg_qbytes - (que)->msqid_ds.msg_cbytes) < msgsz || num_msgs >= msginfo.msgtql) {
  if (((uap)->msgflg.be.datum) & 004000) {
   error = 35;
   goto out;
  }
  if (num_msgs >= msginfo.msgtql)
   maxmsgs = 1;
  que->que_flags |= 0x02;
  if ((error = tsleep(que, 22|0x100, "msgwait", 0)))
   goto out;
  if (que->que_flags & 0x04) {
   error = 89;
   goto out;
  }
 }
 if ((msg = msg_create(que)) == ((void *)0)) {
  error = 89;
  goto out;
 }
 if ((error = msg_copyin(msg, (const char *)((uap)->msgp.be.datum), msgsz, p)))
  goto out;
 msg_enqueue(que, msg, p);
 if (que->que_flags & 0x01) {
  que->que_flags &= ~0x01;
  wakeup(que);
 }
 if (que->que_flags & 0x04) {
  error = 89;
  wakeup(que);
 }
out:
 do { if (--(que)->que_references == 0 && (que)->que_flags & 0x04) wakeup_n((&(que)->que_references), 1); } while (0);
 return (error);
}
int
sys_msgrcv(struct proc *p, void *v, register_t *retval)
{
 struct sys_msgrcv_args *uap = v;
 struct ucred *cred = p->p_ucred;
 char *msgp = ((uap)->msgp.be.datum);
 struct que *que;
 struct msg *msg;
 size_t msgsz = ((uap)->msgsz.be.datum);
 long msgtyp = ((uap)->msgtyp.be.datum);
 int error;
 if ((que = que_lookup(((uap)->msqid.be.datum))) == ((void *)0))
  return (22);
 if ((error = ipcperm(cred, &que->msqid_ds.msg_perm, 000400)))
  return (error);
 (que)->que_references++;
 while ((msg = msg_lookup(que, msgtyp)) == ((void *)0)) {
  if (((uap)->msgflg.be.datum) & 004000) {
   error = 90;
   goto out;
  }
  que->que_flags |= 0x01;
  if ((error = tsleep(que, 22|0x100, "msgwait", 0)))
   goto out;
  if (que->que_flags & 0x04) {
   error = 89;
   goto out;
  }
 }
 if ((error = msg_copyout(msg, msgp, &msgsz, p)))
  goto out;
 msg_dequeue(que, msg, p);
 msg_free(msg);
 if (que->que_flags & 0x02) {
  que->que_flags &= ~0x02;
  wakeup(que);
 }
 if (maxmsgs) {
  maxmsgs = 0;
  que_wakewriters();
 }
 *retval = msgsz;
out:
 do { if (--(que)->que_references == 0 && (que)->que_flags & 0x04) wakeup_n((&(que)->que_references), 1); } while (0);
 return (error);
}
struct que *
que_create(key_t key, struct ucred *cred, int mode)
{
 struct que *que, *que2;
 int nextix = 1;
 que = malloc(sizeof(*que), 127, 0x0001|0x0008);
 if (que_key_lookup(key)) {
  free(que, 127, sizeof *que);
  return (((void *)0));
 }
 for((que2) = ((&msg_queues)->tqh_first); (que2) != ((void *)0); (que2) = ((que2)->que_next.tqe_next)) {
  if (nextix < que2->que_ix)
   break;
  nextix = que2->que_ix + 1;
 }
 que->que_ix = nextix;
 que->msqid_ds.msg_perm.key = key;
 que->msqid_ds.msg_perm.cuid = cred->cr_uid;
 que->msqid_ds.msg_perm.uid = cred->cr_uid;
 que->msqid_ds.msg_perm.cgid = cred->cr_gid;
 que->msqid_ds.msg_perm.gid = cred->cr_gid;
 que->msqid_ds.msg_perm.mode = mode & 0777;
 que->msqid_ds.msg_perm.seq = ++sequence & 0x7fff;
 que->msqid_ds.msg_qbytes = msginfo.msgmnb;
 que->msqid_ds.msg_ctime = time_second;
 do { (&que->que_msgs)->tqh_first = ((void *)0); (&que->que_msgs)->tqh_last = &(&que->que_msgs)->tqh_first; } while (0);
 if (que2)
  do { (que)->que_next.tqe_prev = (que2)->que_next.tqe_prev; (que)->que_next.tqe_next = (que2); *(que2)->que_next.tqe_prev = (que); (que2)->que_next.tqe_prev = &(que)->que_next.tqe_next; } while (0);
 else
  do { (que)->que_next.tqe_next = ((void *)0); (que)->que_next.tqe_prev = (&msg_queues)->tqh_last; *(&msg_queues)->tqh_last = (que); (&msg_queues)->tqh_last = &(que)->que_next.tqe_next; } while (0);
 num_ques++;
 return (que);
}
struct que *
que_lookup(int id)
{
 struct que *que;
 for((que) = ((&msg_queues)->tqh_first); (que) != ((void *)0); (que) = ((que)->que_next.tqe_next))
  if (que->que_ix == ((id) & 0xffff))
   break;
 if (que && que->que_flags & 0x04)
  return (((void *)0));
 return (que);
}
struct que *
que_key_lookup(key_t key)
{
 struct que *que;
 if (key == (key_t)0)
  return (((void *)0));
 for((que) = ((&msg_queues)->tqh_first); (que) != ((void *)0); (que) = ((que)->que_next.tqe_next))
  if (que->msqid_ds.msg_perm.key == key)
   break;
 if (que && que->que_flags & 0x04)
  return (((void *)0));
 return (que);
}
void
que_wakewriters(void)
{
 struct que *que;
 for((que) = ((&msg_queues)->tqh_first); (que) != ((void *)0); (que) = ((que)->que_next.tqe_next)) {
  if (que->que_flags & 0x02) {
   que->que_flags &= ~0x02;
   wakeup(que);
  }
 }
}
void
que_free(struct que *que)
{
 struct msg *msg;
 if (que->que_references > 0)
  panic("freeing message queue with active references");
 while ((msg = ((&que->que_msgs)->tqh_first))) {
  do { if (((msg)->msg_next.tqe_next) != ((void *)0)) (msg)->msg_next.tqe_next->msg_next.tqe_prev = (msg)->msg_next.tqe_prev; else (&que->que_msgs)->tqh_last = (msg)->msg_next.tqe_prev; *(msg)->msg_next.tqe_prev = (msg)->msg_next.tqe_next; ((msg)->msg_next.tqe_prev) = ((void *)-1); ((msg)->msg_next.tqe_next) = ((void *)-1); } while (0);
  msg_free(msg);
 }
 free(que, 127, sizeof *que);
 num_ques--;
}
struct msg *
msg_create(struct que *que)
{
 struct msg *msg;
 msg = pool_get(&sysvmsgpl, 0x0001|0x0008);
 if (que->que_flags & 0x04) {
  pool_put(&sysvmsgpl, msg);
  wakeup(que);
  return(((void *)0));
 }
 num_msgs++;
 return (msg);
}
struct msg *
msg_lookup(struct que *que, int msgtyp)
{
 struct msg *msg;
 for((msg) = ((&que->que_msgs)->tqh_first); (msg) != ((void *)0); (msg) = ((msg)->msg_next.tqe_next))
  if (msgtyp == 0 || msgtyp == msg->msg_type ||
      (msgtyp < 0 && -msgtyp <= msg->msg_type))
   break;
 return (msg);
}
void
msg_free(struct msg *msg)
{
 m_freem(msg->msg_data);
 pool_put(&sysvmsgpl, msg);
 num_msgs--;
}
void
msg_enqueue(struct que *que, struct msg *msg, struct proc *p)
{
 que->msqid_ds.msg_cbytes += msg->msg_len;
 que->msqid_ds.msg_qnum++;
 que->msqid_ds.msg_lspid = p->p_p->ps_pid;
 que->msqid_ds.msg_stime = time_second;
 do { (msg)->msg_next.tqe_next = ((void *)0); (msg)->msg_next.tqe_prev = (&que->que_msgs)->tqh_last; *(&que->que_msgs)->tqh_last = (msg); (&que->que_msgs)->tqh_last = &(msg)->msg_next.tqe_next; } while (0);
}
void
msg_dequeue(struct que *que, struct msg *msg, struct proc *p)
{
 que->msqid_ds.msg_cbytes -= msg->msg_len;
 que->msqid_ds.msg_qnum--;
 que->msqid_ds.msg_lrpid = p->p_p->ps_pid;
 que->msqid_ds.msg_rtime = time_second;
 do { if (((msg)->msg_next.tqe_next) != ((void *)0)) (msg)->msg_next.tqe_next->msg_next.tqe_prev = (msg)->msg_next.tqe_prev; else (&que->que_msgs)->tqh_last = (msg)->msg_next.tqe_prev; *(msg)->msg_next.tqe_prev = (msg)->msg_next.tqe_next; ((msg)->msg_next.tqe_prev) = ((void *)-1); ((msg)->msg_next.tqe_next) = ((void *)-1); } while (0);
}
int
msg_copyin(struct msg *msg, const char *ubuf, size_t len, struct proc *p)
{
 struct mbuf **mm, *m;
 size_t xfer;
 int error;
 if (msg == ((void *)0))
  panic ("msg NULL");
 if ((error = copyin(ubuf, &msg->msg_type, sizeof(long)))) {
  msg_free(msg);
  return (error);
 }
 if (msg->msg_type < 0) {
  msg_free(msg);
  return (22);
 }
 ubuf += sizeof(long);
 msg->msg_len = 0;
 mm = &msg->msg_data;
 while (msg->msg_len < len) {
  m = m_get(0x0001, 1);
  if (len >= (((256 - sizeof(struct m_hdr)) - sizeof(struct pkthdr)) + (256 - sizeof(struct m_hdr)) + 1)) {
   (void) m_clget((m), (0x0001), (1 << 11));
   xfer = min(len, (1 << 11));
  } else {
   xfer = min(len, (256 - sizeof(struct m_hdr)));
  }
  m->m_hdr.mh_len = xfer;
  msg->msg_len += xfer;
  *mm = m;
  mm = &m->m_hdr.mh_next;
 }
 for (m = msg->msg_data; m; m = m->m_hdr.mh_next) {
  if ((error = copyin(ubuf, ((void *)((m)->m_hdr.mh_data)), m->m_hdr.mh_len))) {
   msg_free(msg);
   return (error);
  }
  ubuf += m->m_hdr.mh_len;
 }
 return (0);
}
int
msg_copyout(struct msg *msg, char *ubuf, size_t *len, struct proc *p)
{
 struct mbuf *m;
 size_t xfer;
 int error;
 if (msg->msg_len > (8*2048))
  panic("SysV message longer than MSGMAX");
 xfer = min(*len, msg->msg_len);
 if ((error = copyout(&msg->msg_type, ubuf, sizeof(long))))
  return (error);
 ubuf += sizeof(long);
 *len = xfer;
 for (m = msg->msg_data; m; m = m->m_hdr.mh_next) {
  if ((error = copyout(((void *)((m)->m_hdr.mh_data)), ubuf, m->m_hdr.mh_len)))
   return (error);
  ubuf += m->m_hdr.mh_len;
 }
 return (0);
}
int
sysctl_sysvmsg(int *name, u_int namelen, void *where, size_t *sizep)
{
 struct msg_sysctl_info *info;
 struct que *que;
 size_t infolen;
 int error;
 switch (*name) {
 case 1:
  if (namelen != 1)
   return (20);
  infolen = sizeof(msginfo) +
      msginfo.msgmni * sizeof(struct msqid_ds);
  if (where == ((void *)0)) {
   *sizep = infolen;
   return (0);
  }
  if (*sizep == sizeof(struct msginfo))
   return (copyout(&msginfo, where, sizeof(msginfo)));
  info = malloc(infolen, 127, 0x0001|0x0008);
  infolen = sizeof(msginfo) +
      msginfo.msgmni * sizeof(struct msqid_ds);
  if (*sizep < infolen) {
   free(info, 127, 0);
   return (12);
  }
  __builtin_memcpy((&info->msginfo), (&msginfo), (sizeof(struct msginfo)));
  for((que) = ((&msg_queues)->tqh_first); (que) != ((void *)0); (que) = ((que)->que_next.tqe_next))
   __builtin_memcpy((&info->msgids[que->que_ix]), (&que->msqid_ds), (sizeof(struct msqid_ds)));
  error = copyout(info, where, infolen);
  free(info, 127, 0);
  return (error);
 default:
  return (22);
 }
}
