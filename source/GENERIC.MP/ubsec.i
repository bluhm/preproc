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
struct cryptoini {
 int cri_alg;
 int cri_klen;
 int cri_rnd;
 caddr_t cri_key;
 union {
  u_int8_t iv[64];
  u_int8_t esn[4];
 } u;
 struct cryptoini *cri_next;
};
struct cryptodesc {
 int crd_skip;
 int crd_len;
 int crd_inject;
 int crd_flags;
 struct cryptoini CRD_INI;
};
struct cryptop {
 struct task crp_task;
 u_int64_t crp_sid;
 int crp_ilen;
 int crp_olen;
 int crp_alloctype;
 int crp_etype;
 int crp_flags;
 void *crp_buf;
 void *crp_opaque;
 struct cryptodesc *crp_desc;
 struct cryptodesc crp_sdesc[2];
 int crp_ndesc;
 int crp_ndescalloc;
 void (*crp_callback)(struct cryptop *);
 caddr_t crp_mac;
};
struct cryptocap {
 u_int64_t cc_operations;
 u_int64_t cc_bytes;
 u_int64_t cc_koperations;
 u_int32_t cc_sessions;
 int cc_alg[23 + 1];
 int cc_queued;
 u_int8_t cc_flags;
 int (*cc_newsession) (u_int32_t *, struct cryptoini *);
 int (*cc_process) (struct cryptop *);
 int (*cc_freesession) (u_int64_t);
};
int crypto_newsession(u_int64_t *, struct cryptoini *, int);
int crypto_freesession(u_int64_t);
int crypto_dispatch(struct cryptop *);
int crypto_register(u_int32_t, int *,
     int (*)(u_int32_t *, struct cryptoini *), int (*)(u_int64_t),
     int (*)(struct cryptop *));
int crypto_unregister(u_int32_t, int);
int32_t crypto_get_driverid(u_int8_t);
int crypto_invoke(struct cryptop *);
void crypto_done(struct cryptop *);
void cuio_copydata(struct uio *, int, int, caddr_t);
void cuio_copyback(struct uio *, int, int, const void *);
int cuio_getptr(struct uio *, int, int *);
int cuio_apply(struct uio *, int, int,
     int (*f)(caddr_t, caddr_t, unsigned int), caddr_t);
struct cryptop *crypto_getreq(int);
void crypto_freereq(struct cryptop *);
struct swcr_data {
 int sw_alg;
 union {
  struct {
   u_int8_t *SW_ictx;
   u_int8_t *SW_octx;
   u_int32_t SW_klen;
   struct auth_hash *SW_axf;
  } SWCR_AUTH;
  struct {
   u_int8_t *SW_kschedule;
   struct enc_xform *SW_exf;
  } SWCR_ENC;
  struct {
   u_int32_t SW_size;
   struct comp_algo *SW_cxf;
  } SWCR_COMP;
 } SWCR_UN;
 struct swcr_data *sw_next;
};
extern const u_int8_t hmac_ipad_buffer[128];
extern const u_int8_t hmac_opad_buffer[128];
int swcr_encdec(struct cryptodesc *, struct swcr_data *, caddr_t, int);
int swcr_authcompute(struct cryptop *, struct cryptodesc *, struct swcr_data *,
 caddr_t, int);
int swcr_authenc(struct cryptop *);
int swcr_compdec(struct cryptodesc *, struct swcr_data *, caddr_t, int);
int swcr_process(struct cryptop *);
int swcr_newsession(u_int32_t *, struct cryptoini *);
int swcr_freesession(u_int64_t);
void swcr_init(void);
void random_start(void);
void enqueue_randomness(unsigned int);
void suspend_randomness(void);
void resume_randomness(char *, size_t);
typedef struct MD5Context {
 u_int32_t state[4];
 u_int64_t count;
 u_int8_t buffer[64];
} MD5_CTX;

void MD5Init(MD5_CTX *);
void MD5Update(MD5_CTX *, const void *, size_t)
  __attribute__((__bounded__(__string__,2,3)));
void MD5Final(u_int8_t [16], MD5_CTX *)
  __attribute__((__bounded__(__minbytes__,1,16)));
void MD5Transform(u_int32_t [4], const u_int8_t [64])
  __attribute__((__bounded__(__minbytes__,1,4)))
  __attribute__((__bounded__(__minbytes__,2,64)));

typedef struct {
 u_int32_t state[5];
 u_int64_t count;
 unsigned char buffer[64];
} SHA1_CTX;
void SHA1Init(SHA1_CTX * context);
void SHA1Transform(u_int32_t state[5], const unsigned char buffer[64]);
void SHA1Update(SHA1_CTX *context, const void *data, unsigned int len);
void SHA1Final(unsigned char digest[20], SHA1_CTX *context);
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
struct ubsec_pktctx {
 u_int32_t pc_deskey[6];
 u_int32_t pc_hminner[5];
 u_int32_t pc_hmouter[5];
 u_int32_t pc_iv[2];
 u_int16_t pc_flags;
 u_int16_t pc_offset;
};
struct ubsec_pktctx_hdr {
 volatile u_int16_t ph_len;
 volatile u_int16_t ph_type;
 volatile u_int16_t ph_flags;
 volatile u_int16_t ph_offset;
};
struct ubsec_pktctx_3des {
 struct ubsec_pktctx_hdr pc_hdr;
 volatile u_int32_t pc_deskey[6];
 volatile u_int32_t pc_iv[2];
 volatile u_int32_t pc_hminner[5];
 volatile u_int32_t pc_hmouter[5];
};
struct ubsec_pktctx_aes128 {
 struct ubsec_pktctx_hdr pc_hdr;
 volatile u_int32_t pc_aeskey[4];
 volatile u_int32_t pc_iv[4];
 volatile u_int32_t pc_hminner[5];
 volatile u_int32_t pc_hmouter[5];
};
struct ubsec_pktctx_aes192 {
 struct ubsec_pktctx_hdr pc_hdr;
 volatile u_int32_t pc_aeskey[6];
 volatile u_int32_t pc_iv[4];
 volatile u_int32_t pc_hminner[5];
 volatile u_int32_t pc_hmouter[5];
};
struct ubsec_pktctx_aes256 {
 struct ubsec_pktctx_hdr pc_hdr;
 volatile u_int32_t pc_aeskey[8];
 volatile u_int32_t pc_iv[4];
 volatile u_int32_t pc_hminner[5];
 volatile u_int32_t pc_hmouter[5];
};
struct ubsec_pktbuf {
 volatile u_int32_t pb_addr;
 volatile u_int32_t pb_next;
 volatile u_int32_t pb_len;
};
struct ubsec_mcr {
 volatile u_int16_t mcr_pkts;
 volatile u_int16_t mcr_flags;
 volatile u_int32_t mcr_cmdctxp;
 struct ubsec_pktbuf mcr_ipktbuf;
 volatile u_int16_t mcr_reserved;
 volatile u_int16_t mcr_pktlen;
 struct ubsec_pktbuf mcr_opktbuf;
};
struct ubsec_mcr_add {
 volatile u_int32_t mcr_cmdctxp;
 struct ubsec_pktbuf mcr_ipktbuf;
 volatile u_int16_t mcr_reserved;
 volatile u_int16_t mcr_pktlen;
 struct ubsec_pktbuf mcr_opktbuf;
};
struct ubsec_ctx_keyop {
 volatile u_int16_t ctx_len;
 volatile u_int16_t ctx_op;
 volatile u_int8_t ctx_pad[60];
};
struct ubsec_ctx_rngbypass {
 volatile u_int16_t rbp_len;
 volatile u_int16_t rbp_op;
 volatile u_int8_t rbp_pad[60];
};
struct ubsec_ctx_modexp {
 volatile u_int16_t me_len;
 volatile u_int16_t me_op;
 volatile u_int16_t me_E_len;
 volatile u_int16_t me_N_len;
 u_int8_t me_N[2048/8];
};
struct ubsec_ctx_rsapriv {
 volatile u_int16_t rpr_len;
 volatile u_int16_t rpr_op;
 volatile u_int16_t rpr_q_len;
 volatile u_int16_t rpr_p_len;
 u_int8_t rpr_buf[5 * 1024 / 8];
};
struct ubsec_dma_alloc {
 u_int32_t dma_paddr;
 caddr_t dma_vaddr;
 bus_dmamap_t dma_map;
 bus_dma_segment_t dma_seg;
 bus_size_t dma_size;
 int dma_nseg;
};
struct ubsec_q2 {
 struct { struct ubsec_q2 *sqe_next; } q_next;
 struct ubsec_dma_alloc q_mcr;
 struct ubsec_dma_alloc q_ctx;
 u_int q_type;
};
struct ubsec_q2_rng {
 struct ubsec_q2 rng_q;
 struct ubsec_dma_alloc rng_buf;
 int rng_used;
};
struct ubsec_dmachunk {
 struct ubsec_mcr d_mcr;
 struct ubsec_mcr_add d_mcradd[17 -1];
 struct ubsec_pktbuf d_sbuf[64 -1];
 struct ubsec_pktbuf d_dbuf[64 -1];
 u_int32_t d_macbuf[5];
 union {
  struct ubsec_pktctx_aes256 ctx_aes256;
  struct ubsec_pktctx_aes192 ctx_aes192;
  struct ubsec_pktctx_aes128 ctx_aes128;
  struct ubsec_pktctx_3des ctx_3des;
  struct ubsec_pktctx ctx;
 } d_ctx;
};
struct ubsec_dma {
 struct { struct ubsec_dma *sqe_next; } d_next;
 struct ubsec_dmachunk *d_dma;
 struct ubsec_dma_alloc d_alloc;
};
struct ubsec_q {
 struct { struct ubsec_q *sqe_next; } q_next;
 int q_nstacked_mcrs;
 struct ubsec_q *q_stacked_mcr[17 -1];
 struct cryptop *q_crp;
 struct ubsec_dma *q_dma;
 struct mbuf *q_src_m, *q_dst_m;
 struct uio *q_src_io, *q_dst_io;
 bus_dmamap_t q_src_map;
 bus_dmamap_t q_dst_map;
 int q_sesn;
};
struct ubsec_softc {
 struct device sc_dv;
 void *sc_ih;
 bus_space_handle_t sc_sh;
 bus_space_tag_t sc_st;
 bus_dma_tag_t sc_dmat;
 int sc_flags;
 u_int32_t sc_statmask;
 int32_t sc_cid;
 int sc_maxaggr;
 struct { struct ubsec_q *sqh_first; struct ubsec_q **sqh_last; } sc_queue;
 int sc_nqueue;
 struct { struct ubsec_q *sqh_first; struct ubsec_q **sqh_last; } sc_qchip;
 struct { struct ubsec_q *sqh_first; struct ubsec_q **sqh_last; } sc_freequeue;
 struct { struct ubsec_q2 *sqh_first; struct ubsec_q2 **sqh_last; } sc_queue2;
 int sc_nqueue2;
 struct { struct ubsec_q2 *sqh_first; struct ubsec_q2 **sqh_last; } sc_qchip2;
 struct { struct ubsec_q2 *sqh_first; struct ubsec_q2 **sqh_last; } sc_queue4;
 int sc_nqueue4;
 struct { struct ubsec_q2 *sqh_first; struct ubsec_q2 **sqh_last; } sc_qchip4;
 int sc_nsessions;
 struct ubsec_session *sc_sessions;
 struct timeout sc_rngto;
 int sc_rnghz;
 struct ubsec_q2_rng sc_rng;
 struct ubsec_dma sc_dmaa[60];
 struct ubsec_q *sc_queuea[60];
};
struct ubsec_session {
 u_int32_t ses_used;
 u_int32_t ses_key[8];
 u_int32_t ses_hminner[5];
 u_int32_t ses_hmouter[5];
 u_int32_t ses_iv[4];
};
struct ubsec_stats {
 u_int64_t hst_ibytes;
 u_int64_t hst_obytes;
 u_int32_t hst_ipackets;
 u_int32_t hst_opackets;
 u_int32_t hst_invalid;
 u_int32_t hst_nomem;
 u_int32_t hst_queuefull;
 u_int32_t hst_dmaerr;
 u_int32_t hst_mcrerr;
 u_int32_t hst_nodmafree;
};
int ubsec_probe(struct device *, void *, void *);
void ubsec_attach(struct device *, struct device *, void *);
void ubsec_reset_board(struct ubsec_softc *);
void ubsec_init_board(struct ubsec_softc *);
void ubsec_init_pciregs(struct pci_attach_args *pa);
void ubsec_cleanchip(struct ubsec_softc *);
void ubsec_totalreset(struct ubsec_softc *);
int ubsec_free_q(struct ubsec_softc*, struct ubsec_q *);
struct cfattach ubsec_ca = {
 sizeof(struct ubsec_softc), ubsec_probe, ubsec_attach,
};
struct cfdriver ubsec_cd = {
 0, "ubsec", DV_DULL
};
int ubsec_intr(void *);
int ubsec_newsession(u_int32_t *, struct cryptoini *);
int ubsec_freesession(u_int64_t);
int ubsec_process(struct cryptop *);
void ubsec_callback(struct ubsec_softc *, struct ubsec_q *);
void ubsec_feed(struct ubsec_softc *);
void ubsec_callback2(struct ubsec_softc *, struct ubsec_q2 *);
void ubsec_feed2(struct ubsec_softc *);
void ubsec_feed4(struct ubsec_softc *);
void ubsec_rng(void *);
int ubsec_dma_malloc(struct ubsec_softc *, bus_size_t,
    struct ubsec_dma_alloc *, int);
void ubsec_dma_free(struct ubsec_softc *, struct ubsec_dma_alloc *);
int ubsec_dmamap_aligned(bus_dmamap_t);
struct ubsec_stats ubsecstats;
const struct pci_matchid ubsec_devices[] = {
 { 0x15ab, 0x0000 },
 { 0x15ab, 0x5601 },
 { 0x14e4, 0x5801 },
 { 0x14e4, 0x5802 },
 { 0x14e4, 0x5805 },
 { 0x14e4, 0x5820 },
 { 0x14e4, 0x5821 },
 { 0x14e4, 0x5822 },
 { 0x14e4, 0x5823 },
 { 0x14e4, 0x5825 },
 { 0x14e4, 0x5860 },
 { 0x14e4, 0x5861 },
 { 0x14e4, 0x5862 },
 { 0x108e, 0x5455 },
 { 0x108e, 0x5454 },
};
int
ubsec_probe(struct device *parent, void *match, void *aux)
{
 return (pci_matchbyid((struct pci_attach_args *)aux, ubsec_devices,
     (sizeof((ubsec_devices)) / sizeof((ubsec_devices)[0]))));
}
void
ubsec_attach(struct device *parent, struct device *self, void *aux)
{
 struct ubsec_softc *sc = (struct ubsec_softc *)self;
 struct pci_attach_args *pa = aux;
 pci_chipset_tag_t pc = pa->pa_pc;
 pci_intr_handle_t ih;
 pcireg_t memtype;
 const char *intrstr = ((void *)0);
 struct ubsec_dma *dmap;
 bus_size_t iosize;
 u_int32_t i;
 int algs[23 + 1];
 do { (&sc->sc_queue)->sqh_first = ((void *)0); (&sc->sc_queue)->sqh_last = &(&sc->sc_queue)->sqh_first; } while (0);
 do { (&sc->sc_qchip)->sqh_first = ((void *)0); (&sc->sc_qchip)->sqh_last = &(&sc->sc_qchip)->sqh_first; } while (0);
 do { (&sc->sc_queue2)->sqh_first = ((void *)0); (&sc->sc_queue2)->sqh_last = &(&sc->sc_queue2)->sqh_first; } while (0);
 do { (&sc->sc_qchip2)->sqh_first = ((void *)0); (&sc->sc_qchip2)->sqh_last = &(&sc->sc_qchip2)->sqh_first; } while (0);
 do { (&sc->sc_queue4)->sqh_first = ((void *)0); (&sc->sc_queue4)->sqh_last = &(&sc->sc_queue4)->sqh_first; } while (0);
 do { (&sc->sc_qchip4)->sqh_first = ((void *)0); (&sc->sc_qchip4)->sqh_last = &(&sc->sc_qchip4)->sqh_first; } while (0);
 sc->sc_statmask = 0x20000000 | 0x10000000;
 sc->sc_maxaggr = 5;
 if ((((pa->pa_id) >> 0) & 0xffff) == 0x15ab &&
     (((pa->pa_id) >> 16) & 0xffff) == 0x5601)
  sc->sc_flags |= 0x01 | 0x10;
 if ((((pa->pa_id) >> 0) & 0xffff) == 0x14e4 &&
     ((((pa->pa_id) >> 16) & 0xffff) == 0x5802 ||
      (((pa->pa_id) >> 16) & 0xffff) == 0x5805))
  sc->sc_flags |= 0x01 | 0x10;
 if ((((pa->pa_id) >> 0) & 0xffff) == 0x14e4 &&
     ((((pa->pa_id) >> 16) & 0xffff) == 0x5820 ||
      (((pa->pa_id) >> 16) & 0xffff) == 0x5822))
  sc->sc_flags |= 0x01 | 0x10 |
      0x02 | 0x08 | 0x04;
 if (((((pa->pa_id) >> 0) & 0xffff) == 0x14e4 &&
      (((pa->pa_id) >> 16) & 0xffff) == 0x5821) ||
     ((((pa->pa_id) >> 0) & 0xffff) == 0x108e &&
      ((((pa->pa_id) >> 16) & 0xffff) == 0x5455 ||
       (((pa->pa_id) >> 16) & 0xffff) == 0x5454))) {
  sc->sc_statmask |= 0x02000000 |
      0x01000000;
  sc->sc_flags |= 0x01 | 0x10 |
      0x02 | 0x08 | 0x04;
 }
 if ((((pa->pa_id) >> 0) & 0xffff) == 0x14e4 &&
     ((((pa->pa_id) >> 16) & 0xffff) == 0x5823 ||
      (((pa->pa_id) >> 16) & 0xffff) == 0x5825))
  sc->sc_flags |= 0x01 | 0x10 |
      0x02 | 0x08 | 0x04 |
      0x20;
 if ((((pa->pa_id) >> 0) & 0xffff) == 0x14e4 &&
     ((((pa->pa_id) >> 16) & 0xffff) == 0x5860 ||
      (((pa->pa_id) >> 16) & 0xffff) == 0x5861 ||
      (((pa->pa_id) >> 16) & 0xffff) == 0x5862)) {
  sc->sc_maxaggr = 17;
  sc->sc_statmask |=
      0x02000000 | 0x01000000 |
      0x00800000 | 0x00400000;
  sc->sc_flags |= 0x40 | 0x08 |
      0x02 | 0x20 |
      0x01 | 0x04;
 }
 memtype = pci_mapreg_type(pa->pa_pc, pa->pa_tag, 0x10);
 if (pci_mapreg_map(pa, 0x10, memtype, 0,
     &sc->sc_st, &sc->sc_sh, ((void *)0), &iosize, 0)) {
  printf(": can't find mem space\n");
  return;
 }
 sc->sc_dmat = pa->pa_dmat;
 if (pci_intr_map(pa, &ih)) {
  printf(": couldn't map interrupt\n");
  bus_space_unmap(sc->sc_st, sc->sc_sh, iosize);
  return;
 }
 intrstr = pci_intr_string(pc, ih);
 sc->sc_ih = pci_intr_establish(pc, ih, 6, ubsec_intr, sc,
     self->dv_xname);
 if (sc->sc_ih == ((void *)0)) {
  printf(": couldn't establish interrupt");
  if (intrstr != ((void *)0))
   printf(" at %s", intrstr);
  printf("\n");
  bus_space_unmap(sc->sc_st, sc->sc_sh, iosize);
  return;
 }
 sc->sc_cid = crypto_get_driverid(0);
 if (sc->sc_cid < 0) {
  pci_intr_disestablish(pc, sc->sc_ih);
  bus_space_unmap(sc->sc_st, sc->sc_sh, iosize);
  return;
 }
 do { (&sc->sc_freequeue)->sqh_first = ((void *)0); (&sc->sc_freequeue)->sqh_last = &(&sc->sc_freequeue)->sqh_first; } while (0);
 dmap = sc->sc_dmaa;
 for (i = 0; i < 60; i++, dmap++) {
  struct ubsec_q *q;
  q = (struct ubsec_q *)malloc(sizeof(struct ubsec_q),
      2, 0x0002);
  if (q == ((void *)0)) {
   printf(": can't allocate queue buffers\n");
   break;
  }
  if (ubsec_dma_malloc(sc, sizeof(struct ubsec_dmachunk),
      &dmap->d_alloc, 0)) {
   printf(": can't allocate dma buffers\n");
   free(q, 2, 0);
   break;
  }
  dmap->d_dma = (struct ubsec_dmachunk *)dmap->d_alloc.dma_vaddr;
  q->q_dma = dmap;
  sc->sc_queuea[i] = q;
  do { (q)->q_next.sqe_next = ((void *)0); *(&sc->sc_freequeue)->sqh_last = (q); (&sc->sc_freequeue)->sqh_last = &(q)->q_next.sqe_next; } while (0);
 }
 __builtin_bzero((algs), (sizeof(algs)));
 algs[1] = 0x01;
 algs[4] = 0x01;
 algs[5] = 0x01;
 if (sc->sc_flags & 0x20)
  algs[7] = 0x01;
 crypto_register(sc->sc_cid, algs, ubsec_newsession,
     ubsec_freesession, ubsec_process);
 ubsec_reset_board(sc);
 ubsec_init_pciregs(pa);
 ubsec_init_board(sc);
 printf(": 3DES MD5 SHA1");
 if (sc->sc_flags & 0x20)
  printf(" AES");
 if (sc->sc_flags & 0x10) {
  if (sc->sc_flags & 0x80)
   sc->sc_statmask |= 0x00010000;
  else
   sc->sc_statmask |= 0x04000000;
  if (ubsec_dma_malloc(sc, sizeof(struct ubsec_mcr),
      &sc->sc_rng.rng_q.q_mcr, 0))
   goto skip_rng;
  if (ubsec_dma_malloc(sc, sizeof(struct ubsec_ctx_rngbypass),
      &sc->sc_rng.rng_q.q_ctx, 0)) {
   ubsec_dma_free(sc, &sc->sc_rng.rng_q.q_mcr);
   goto skip_rng;
  }
  if (ubsec_dma_malloc(sc, sizeof(u_int32_t) *
      16, &sc->sc_rng.rng_buf, 0)) {
   ubsec_dma_free(sc, &sc->sc_rng.rng_q.q_ctx);
   ubsec_dma_free(sc, &sc->sc_rng.rng_q.q_mcr);
   goto skip_rng;
  }
  timeout_set(&sc->sc_rngto, ubsec_rng, sc);
  if (hz >= 100)
   sc->sc_rnghz = hz / 100;
  else
   sc->sc_rnghz = 1;
  timeout_add(&sc->sc_rngto, sc->sc_rnghz);
  printf(" RNG");
skip_rng:
 ;
 }
 if (sc->sc_flags & 0x01) {
  sc->sc_statmask |= 0x04000000;
 }
 printf(", %s\n", intrstr);
}
int
ubsec_intr(void *arg)
{
 struct ubsec_softc *sc = arg;
 volatile u_int32_t stat;
 struct ubsec_q *q;
 struct ubsec_dma *dmap;
 u_int16_t flags;
 int npkts = 0, i;
 stat = bus_space_read_4((sc)->sc_st, (sc)->sc_sh, (0x0008));
 if ((stat & (0x20000000|0x04000000|0x00010000|
     0x10000000)) == 0)
  return (0);
 stat &= sc->sc_statmask;
 bus_space_write_4((sc)->sc_st, (sc)->sc_sh, 0x0008, stat);
 if ((stat & 0x20000000)) {
  while (!(((&sc->sc_qchip)->sqh_first) == ((void *)0))) {
   q = ((&sc->sc_qchip)->sqh_first);
   dmap = q->q_dma;
   if ((dmap->d_dma->d_mcr.mcr_flags & (__uint16_t)(__builtin_constant_p(0x0001) ? (__uint16_t)(((__uint16_t)(0x0001) & 0xffU) << 8 | ((__uint16_t)(0x0001) & 0xff00U) >> 8) : __swap16md(0x0001))) == 0)
    break;
   do { if (((&sc->sc_qchip)->sqh_first = (&sc->sc_qchip)->sqh_first->q_next.sqe_next) == ((void *)0)) (&sc->sc_qchip)->sqh_last = &(&sc->sc_qchip)->sqh_first; } while (0);
   npkts = q->q_nstacked_mcrs;
   for (i = 0; i < npkts; i++) {
    if(q->q_stacked_mcr[i])
     ubsec_callback(sc, q->q_stacked_mcr[i]);
    else
     break;
   }
   ubsec_callback(sc, q);
  }
  if (!(stat & 0x10000000))
   ubsec_feed(sc);
 }
 if ((sc->sc_flags & (0x01|0x10)) &&
     (stat & 0x04000000)) {
  struct ubsec_q2 *q2;
  struct ubsec_mcr *mcr;
  while (!(((&sc->sc_qchip2)->sqh_first) == ((void *)0))) {
   q2 = ((&sc->sc_qchip2)->sqh_first);
   bus_dmamap_sync(sc->sc_dmat, q2->q_mcr.dma_map,
       0, q2->q_mcr.dma_map->dm_mapsize,
       0x02|0x08);
   mcr = (struct ubsec_mcr *)q2->q_mcr.dma_vaddr;
   if (sc->sc_flags & 0x40)
    flags = (__uint16_t)(__builtin_constant_p(mcr->mcr_flags) ? (__uint16_t)(((__uint16_t)(mcr->mcr_flags) & 0xffU) << 8 | ((__uint16_t)(mcr->mcr_flags) & 0xff00U) >> 8) : __swap16md(mcr->mcr_flags));
   else
    flags = mcr->mcr_flags;
   if ((flags & (__uint16_t)(__builtin_constant_p(0x0001) ? (__uint16_t)(((__uint16_t)(0x0001) & 0xffU) << 8 | ((__uint16_t)(0x0001) & 0xff00U) >> 8) : __swap16md(0x0001))) == 0) {
    bus_dmamap_sync(sc->sc_dmat,
        q2->q_mcr.dma_map, 0,
        q2->q_mcr.dma_map->dm_mapsize,
        0x01|0x04);
    break;
   }
   do { if (((&sc->sc_qchip2)->sqh_first = (&sc->sc_qchip2)->sqh_first->q_next.sqe_next) == ((void *)0)) (&sc->sc_qchip2)->sqh_last = &(&sc->sc_qchip2)->sqh_first; } while (0);
   ubsec_callback2(sc, q2);
   if (!(stat & 0x10000000))
    ubsec_feed2(sc);
  }
 }
 if ((sc->sc_flags & 0x80) && (stat & 0x00010000)) {
  struct ubsec_q2 *q2;
  struct ubsec_mcr *mcr;
  while (!(((&sc->sc_qchip4)->sqh_first) == ((void *)0))) {
   q2 = ((&sc->sc_qchip4)->sqh_first);
   bus_dmamap_sync(sc->sc_dmat, q2->q_mcr.dma_map,
       0, q2->q_mcr.dma_map->dm_mapsize,
       0x02|0x08);
   mcr = (struct ubsec_mcr *)q2->q_mcr.dma_vaddr;
   flags = (__uint16_t)(__builtin_constant_p(mcr->mcr_flags) ? (__uint16_t)(((__uint16_t)(mcr->mcr_flags) & 0xffU) << 8 | ((__uint16_t)(mcr->mcr_flags) & 0xff00U) >> 8) : __swap16md(mcr->mcr_flags));
   if ((flags & (__uint16_t)(__builtin_constant_p(0x0001) ? (__uint16_t)(((__uint16_t)(0x0001) & 0xffU) << 8 | ((__uint16_t)(0x0001) & 0xff00U) >> 8) : __swap16md(0x0001))) == 0) {
    bus_dmamap_sync(sc->sc_dmat,
        q2->q_mcr.dma_map, 0,
        q2->q_mcr.dma_map->dm_mapsize,
        0x01|0x04);
    break;
   }
   do { if (((&sc->sc_qchip4)->sqh_first = (&sc->sc_qchip4)->sqh_first->q_next.sqe_next) == ((void *)0)) (&sc->sc_qchip4)->sqh_last = &(&sc->sc_qchip4)->sqh_first; } while (0);
   ubsec_callback2(sc, q2);
   if (!(stat & 0x10000000))
    ubsec_feed4(sc);
  }
 }
 if (stat & 0x10000000) {
  ubsecstats.hst_dmaerr++;
  ubsec_totalreset(sc);
  ubsec_feed(sc);
 }
 return (1);
}
void
ubsec_feed(struct ubsec_softc *sc)
{
 struct ubsec_q *q, *q2;
 int npkts, i;
 void *v;
 u_int32_t stat;
 npkts = sc->sc_nqueue;
 if (npkts > sc->sc_maxaggr)
  npkts = sc->sc_maxaggr;
 if (npkts < 2)
  goto feed1;
 if ((stat = bus_space_read_4((sc)->sc_st, (sc)->sc_sh, (0x0008))) & (0x40000000 | 0x10000000)) {
  if(stat & 0x10000000) {
   ubsec_totalreset(sc);
   ubsecstats.hst_dmaerr++;
  }
  return;
 }
 q = ((&sc->sc_queue)->sqh_first);
 do { if (((&sc->sc_queue)->sqh_first = (&sc->sc_queue)->sqh_first->q_next.sqe_next) == ((void *)0)) (&sc->sc_queue)->sqh_last = &(&sc->sc_queue)->sqh_first; } while (0);
 --sc->sc_nqueue;
 bus_dmamap_sync(sc->sc_dmat, q->q_src_map,
     0, q->q_src_map->dm_mapsize, 0x04);
 if (q->q_dst_map != ((void *)0))
  bus_dmamap_sync(sc->sc_dmat, q->q_dst_map,
      0, q->q_dst_map->dm_mapsize, 0x01);
 q->q_nstacked_mcrs = npkts - 1;
 for (i = 0; i < q->q_nstacked_mcrs; i++) {
  q2 = ((&sc->sc_queue)->sqh_first);
  bus_dmamap_sync(sc->sc_dmat, q2->q_src_map,
      0, q2->q_src_map->dm_mapsize, 0x04);
  if (q2->q_dst_map != ((void *)0))
   bus_dmamap_sync(sc->sc_dmat, q2->q_dst_map,
       0, q2->q_dst_map->dm_mapsize, 0x01);
  do { if (((&sc->sc_queue)->sqh_first = (&sc->sc_queue)->sqh_first->q_next.sqe_next) == ((void *)0)) (&sc->sc_queue)->sqh_last = &(&sc->sc_queue)->sqh_first; } while (0);
  --sc->sc_nqueue;
  v = ((char *)&q2->q_dma->d_dma->d_mcr) + sizeof(struct ubsec_mcr) -
      sizeof(struct ubsec_mcr_add);
  __builtin_bcopy((v), (&q->q_dma->d_dma->d_mcradd[i]), (sizeof(struct ubsec_mcr_add)));
  q->q_stacked_mcr[i] = q2;
 }
 q->q_dma->d_dma->d_mcr.mcr_pkts = (__uint16_t)(__builtin_constant_p(npkts) ? (__uint16_t)(((__uint16_t)(npkts) & 0xffU) << 8 | ((__uint16_t)(npkts) & 0xff00U) >> 8) : __swap16md(npkts));
 do { (q)->q_next.sqe_next = ((void *)0); *(&sc->sc_qchip)->sqh_last = (q); (&sc->sc_qchip)->sqh_last = &(q)->q_next.sqe_next; } while (0);
 bus_dmamap_sync(sc->sc_dmat, q->q_dma->d_alloc.dma_map,
     0, q->q_dma->d_alloc.dma_map->dm_mapsize,
     0x01 | 0x04);
 bus_space_write_4((sc)->sc_st, (sc)->sc_sh, 0x0000, q->q_dma->d_alloc.dma_paddr + __builtin_offsetof(struct ubsec_dmachunk, d_mcr));
 return;
feed1:
 while (!(((&sc->sc_queue)->sqh_first) == ((void *)0))) {
  if ((stat = bus_space_read_4((sc)->sc_st, (sc)->sc_sh, (0x0008))) &
      (0x40000000 | 0x10000000)) {
   if(stat & 0x10000000) {
    ubsec_totalreset(sc);
    ubsecstats.hst_dmaerr++;
   }
   break;
  }
  q = ((&sc->sc_queue)->sqh_first);
  bus_dmamap_sync(sc->sc_dmat, q->q_src_map,
      0, q->q_src_map->dm_mapsize, 0x04);
  if (q->q_dst_map != ((void *)0))
   bus_dmamap_sync(sc->sc_dmat, q->q_dst_map,
       0, q->q_dst_map->dm_mapsize, 0x01);
  bus_dmamap_sync(sc->sc_dmat, q->q_dma->d_alloc.dma_map,
      0, q->q_dma->d_alloc.dma_map->dm_mapsize,
      0x01 | 0x04);
  bus_space_write_4((sc)->sc_st, (sc)->sc_sh, 0x0000, q->q_dma->d_alloc.dma_paddr + __builtin_offsetof(struct ubsec_dmachunk, d_mcr));
  do { if (((&sc->sc_queue)->sqh_first = (&sc->sc_queue)->sqh_first->q_next.sqe_next) == ((void *)0)) (&sc->sc_queue)->sqh_last = &(&sc->sc_queue)->sqh_first; } while (0);
  --sc->sc_nqueue;
  do { (q)->q_next.sqe_next = ((void *)0); *(&sc->sc_qchip)->sqh_last = (q); (&sc->sc_qchip)->sqh_last = &(q)->q_next.sqe_next; } while (0);
 }
}
int
ubsec_newsession(u_int32_t *sidp, struct cryptoini *cri)
{
 struct cryptoini *c, *encini = ((void *)0), *macini = ((void *)0);
 struct ubsec_softc *sc = ((void *)0);
 struct ubsec_session *ses = ((void *)0);
 MD5_CTX md5ctx;
 SHA1_CTX sha1ctx;
 int i, sesn;
 if (sidp == ((void *)0) || cri == ((void *)0))
  return (22);
 for (i = 0; i < ubsec_cd.cd_ndevs; i++) {
  sc = ubsec_cd.cd_devs[i];
  if (sc == ((void *)0) || sc->sc_cid == (*sidp))
   break;
 }
 if (sc == ((void *)0))
  return (22);
 for (c = cri; c != ((void *)0); c = c->cri_next) {
  if (c->cri_alg == 4 ||
      c->cri_alg == 5) {
   if (macini)
    return (22);
   macini = c;
  } else if (c->cri_alg == 1 ||
      c->cri_alg == 7) {
   if (encini)
    return (22);
   encini = c;
  } else
   return (22);
 }
 if (encini == ((void *)0) && macini == ((void *)0))
  return (22);
 if (encini && encini->cri_alg == 7) {
  switch (encini->cri_klen) {
  case 128:
  case 192:
  case 256:
   break;
  default:
   return (22);
  }
 }
 if (sc->sc_sessions == ((void *)0)) {
  ses = sc->sc_sessions = (struct ubsec_session *)malloc(
      sizeof(struct ubsec_session), 2, 0x0002);
  if (ses == ((void *)0))
   return (12);
  sesn = 0;
  sc->sc_nsessions = 1;
 } else {
  for (sesn = 0; sesn < sc->sc_nsessions; sesn++) {
   if (sc->sc_sessions[sesn].ses_used == 0) {
    ses = &sc->sc_sessions[sesn];
    break;
   }
  }
  if (ses == ((void *)0)) {
   sesn = sc->sc_nsessions;
   ses = mallocarray((sesn + 1),
       sizeof(struct ubsec_session), 2, 0x0002);
   if (ses == ((void *)0))
    return (12);
   __builtin_bcopy((sc->sc_sessions), (ses), (sesn * sizeof(struct ubsec_session)));
   explicit_bzero(sc->sc_sessions, sesn *
       sizeof(struct ubsec_session));
   free(sc->sc_sessions, 2, 0);
   sc->sc_sessions = ses;
   ses = &sc->sc_sessions[sesn];
   sc->sc_nsessions++;
  }
 }
 __builtin_bzero((ses), (sizeof(struct ubsec_session)));
 ses->ses_used = 1;
 if (encini) {
  if (encini->cri_alg == 7) {
   __builtin_bcopy((encini->cri_key), (ses->ses_key), (encini->cri_klen / 8));
  } else
   __builtin_bcopy((encini->cri_key), (ses->ses_key), (24));
  (ses->ses_key[0]) = (__uint32_t)(__builtin_constant_p(((__uint32_t)((ses->ses_key[0])))) ? (__uint32_t)(((__uint32_t)(((__uint32_t)((ses->ses_key[0])))) & 0xff) << 24 | ((__uint32_t)(((__uint32_t)((ses->ses_key[0])))) & 0xff00) << 8 | ((__uint32_t)(((__uint32_t)((ses->ses_key[0])))) & 0xff0000) >> 8 | ((__uint32_t)(((__uint32_t)((ses->ses_key[0])))) & 0xff000000) >> 24) : __swap32md(((__uint32_t)((ses->ses_key[0])))));
  (ses->ses_key[1]) = (__uint32_t)(__builtin_constant_p(((__uint32_t)((ses->ses_key[1])))) ? (__uint32_t)(((__uint32_t)(((__uint32_t)((ses->ses_key[1])))) & 0xff) << 24 | ((__uint32_t)(((__uint32_t)((ses->ses_key[1])))) & 0xff00) << 8 | ((__uint32_t)(((__uint32_t)((ses->ses_key[1])))) & 0xff0000) >> 8 | ((__uint32_t)(((__uint32_t)((ses->ses_key[1])))) & 0xff000000) >> 24) : __swap32md(((__uint32_t)((ses->ses_key[1])))));
  (ses->ses_key[2]) = (__uint32_t)(__builtin_constant_p(((__uint32_t)((ses->ses_key[2])))) ? (__uint32_t)(((__uint32_t)(((__uint32_t)((ses->ses_key[2])))) & 0xff) << 24 | ((__uint32_t)(((__uint32_t)((ses->ses_key[2])))) & 0xff00) << 8 | ((__uint32_t)(((__uint32_t)((ses->ses_key[2])))) & 0xff0000) >> 8 | ((__uint32_t)(((__uint32_t)((ses->ses_key[2])))) & 0xff000000) >> 24) : __swap32md(((__uint32_t)((ses->ses_key[2])))));
  (ses->ses_key[3]) = (__uint32_t)(__builtin_constant_p(((__uint32_t)((ses->ses_key[3])))) ? (__uint32_t)(((__uint32_t)(((__uint32_t)((ses->ses_key[3])))) & 0xff) << 24 | ((__uint32_t)(((__uint32_t)((ses->ses_key[3])))) & 0xff00) << 8 | ((__uint32_t)(((__uint32_t)((ses->ses_key[3])))) & 0xff0000) >> 8 | ((__uint32_t)(((__uint32_t)((ses->ses_key[3])))) & 0xff000000) >> 24) : __swap32md(((__uint32_t)((ses->ses_key[3])))));
  (ses->ses_key[4]) = (__uint32_t)(__builtin_constant_p(((__uint32_t)((ses->ses_key[4])))) ? (__uint32_t)(((__uint32_t)(((__uint32_t)((ses->ses_key[4])))) & 0xff) << 24 | ((__uint32_t)(((__uint32_t)((ses->ses_key[4])))) & 0xff00) << 8 | ((__uint32_t)(((__uint32_t)((ses->ses_key[4])))) & 0xff0000) >> 8 | ((__uint32_t)(((__uint32_t)((ses->ses_key[4])))) & 0xff000000) >> 24) : __swap32md(((__uint32_t)((ses->ses_key[4])))));
  (ses->ses_key[5]) = (__uint32_t)(__builtin_constant_p(((__uint32_t)((ses->ses_key[5])))) ? (__uint32_t)(((__uint32_t)(((__uint32_t)((ses->ses_key[5])))) & 0xff) << 24 | ((__uint32_t)(((__uint32_t)((ses->ses_key[5])))) & 0xff00) << 8 | ((__uint32_t)(((__uint32_t)((ses->ses_key[5])))) & 0xff0000) >> 8 | ((__uint32_t)(((__uint32_t)((ses->ses_key[5])))) & 0xff000000) >> 24) : __swap32md(((__uint32_t)((ses->ses_key[5])))));
  (ses->ses_key[6]) = (__uint32_t)(__builtin_constant_p(((__uint32_t)((ses->ses_key[6])))) ? (__uint32_t)(((__uint32_t)(((__uint32_t)((ses->ses_key[6])))) & 0xff) << 24 | ((__uint32_t)(((__uint32_t)((ses->ses_key[6])))) & 0xff00) << 8 | ((__uint32_t)(((__uint32_t)((ses->ses_key[6])))) & 0xff0000) >> 8 | ((__uint32_t)(((__uint32_t)((ses->ses_key[6])))) & 0xff000000) >> 24) : __swap32md(((__uint32_t)((ses->ses_key[6])))));
  (ses->ses_key[7]) = (__uint32_t)(__builtin_constant_p(((__uint32_t)((ses->ses_key[7])))) ? (__uint32_t)(((__uint32_t)(((__uint32_t)((ses->ses_key[7])))) & 0xff) << 24 | ((__uint32_t)(((__uint32_t)((ses->ses_key[7])))) & 0xff00) << 8 | ((__uint32_t)(((__uint32_t)((ses->ses_key[7])))) & 0xff0000) >> 8 | ((__uint32_t)(((__uint32_t)((ses->ses_key[7])))) & 0xff000000) >> 24) : __swap32md(((__uint32_t)((ses->ses_key[7])))));
 }
 if (macini) {
  for (i = 0; i < macini->cri_klen / 8; i++)
   macini->cri_key[i] ^= 0x36;
  if (macini->cri_alg == 4) {
   MD5Init(&md5ctx);
   MD5Update(&md5ctx, macini->cri_key,
       macini->cri_klen / 8);
   MD5Update(&md5ctx, hmac_ipad_buffer,
       64 - (macini->cri_klen / 8));
   __builtin_bcopy((md5ctx.state), (ses->ses_hminner), (sizeof(md5ctx.state)));
  } else {
   SHA1Init(&sha1ctx);
   SHA1Update(&sha1ctx, macini->cri_key,
       macini->cri_klen / 8);
   SHA1Update(&sha1ctx, hmac_ipad_buffer,
       64 - (macini->cri_klen / 8));
   __builtin_bcopy((sha1ctx.state), (ses->ses_hminner), (sizeof(sha1ctx.state)));
  }
  for (i = 0; i < macini->cri_klen / 8; i++)
   macini->cri_key[i] ^= (0x36 ^ 0x5C);
  if (macini->cri_alg == 4) {
   MD5Init(&md5ctx);
   MD5Update(&md5ctx, macini->cri_key,
       macini->cri_klen / 8);
   MD5Update(&md5ctx, hmac_opad_buffer,
       64 - (macini->cri_klen / 8));
   __builtin_bcopy((md5ctx.state), (ses->ses_hmouter), (sizeof(md5ctx.state)));
  } else {
   SHA1Init(&sha1ctx);
   SHA1Update(&sha1ctx, macini->cri_key,
       macini->cri_klen / 8);
   SHA1Update(&sha1ctx, hmac_opad_buffer,
       64 - (macini->cri_klen / 8));
   __builtin_bcopy((sha1ctx.state), (ses->ses_hmouter), (sizeof(sha1ctx.state)));
  }
  for (i = 0; i < macini->cri_klen / 8; i++)
   macini->cri_key[i] ^= 0x5C;
 }
 *sidp = (((sc->sc_dv.dv_unit) << 28) | ((sesn) & 0x0fffffff));
 return (0);
}
int
ubsec_freesession(u_int64_t tid)
{
 struct ubsec_softc *sc;
 int card, session;
 u_int32_t sid = ((u_int32_t)tid) & 0xffffffff;
 card = (((sid) & 0xf0000000) >> 28);
 if (card >= ubsec_cd.cd_ndevs || ubsec_cd.cd_devs[card] == ((void *)0))
  return (22);
 sc = ubsec_cd.cd_devs[card];
 session = ( (sid) & 0x0fffffff);
 explicit_bzero(&sc->sc_sessions[session], sizeof(sc->sc_sessions[session]));
 return (0);
}
int
ubsec_process(struct cryptop *crp)
{
 struct ubsec_q *q = ((void *)0);
 int card, err = 0, i, j, s, nicealign;
 struct ubsec_softc *sc;
 struct cryptodesc *crd1, *crd2 = ((void *)0), *maccrd, *enccrd;
 int encoffset = 0, macoffset = 0, cpskip, cpoffset;
 int sskip, dskip, stheend, dtheend;
 int16_t coffset;
 struct ubsec_session *ses, key;
 struct ubsec_dma *dmap = ((void *)0);
 u_int16_t flags = 0;
 int ivlen = 0, keylen = 0;
 if (crp == ((void *)0) || crp->crp_callback == ((void *)0)) {
  ubsecstats.hst_invalid++;
  return (22);
 }
 card = (((crp->crp_sid) & 0xf0000000) >> 28);
 if (card >= ubsec_cd.cd_ndevs || ubsec_cd.cd_devs[card] == ((void *)0)) {
  ubsecstats.hst_invalid++;
  return (22);
 }
 sc = ubsec_cd.cd_devs[card];
 s = _splraise(6);
 if ((((&sc->sc_freequeue)->sqh_first) == ((void *)0))) {
  ubsecstats.hst_queuefull++;
  _splx(s);
  err = 12;
  goto errout2;
 }
 q = ((&sc->sc_freequeue)->sqh_first);
 do { if (((&sc->sc_freequeue)->sqh_first = (&sc->sc_freequeue)->sqh_first->q_next.sqe_next) == ((void *)0)) (&sc->sc_freequeue)->sqh_last = &(&sc->sc_freequeue)->sqh_first; } while (0);
 _splx(s);
 dmap = q->q_dma;
 __builtin_bzero((q), (sizeof(struct ubsec_q)));
 __builtin_bzero((&key), (sizeof(key)));
 q->q_sesn = ( (crp->crp_sid) & 0x0fffffff);
 q->q_dma = dmap;
 ses = &sc->sc_sessions[q->q_sesn];
 if (crp->crp_flags & 0x0001) {
  q->q_src_m = (struct mbuf *)crp->crp_buf;
  q->q_dst_m = (struct mbuf *)crp->crp_buf;
 } else if (crp->crp_flags & 0x0002) {
  q->q_src_io = (struct uio *)crp->crp_buf;
  q->q_dst_io = (struct uio *)crp->crp_buf;
 } else {
  err = 22;
  goto errout;
 }
 __builtin_bzero((&dmap->d_dma->d_mcr), (sizeof(struct ubsec_mcr)));
 dmap->d_dma->d_mcr.mcr_pkts = (__uint16_t)(__builtin_constant_p(1) ? (__uint16_t)(((__uint16_t)(1) & 0xffU) << 8 | ((__uint16_t)(1) & 0xff00U) >> 8) : __swap16md(1));
 dmap->d_dma->d_mcr.mcr_flags = 0;
 q->q_crp = crp;
 if (crp->crp_ndesc < 1) {
  err = 22;
  goto errout;
 }
 crd1 = &crp->crp_desc[0];
 if (crp->crp_ndesc >= 2)
  crd2 = &crp->crp_desc[1];
 if (crd2 == ((void *)0)) {
  if (crd1->CRD_INI.cri_alg == 4 ||
      crd1->CRD_INI.cri_alg == 5) {
   maccrd = crd1;
   enccrd = ((void *)0);
  } else if (crd1->CRD_INI.cri_alg == 1 ||
      crd1->CRD_INI.cri_alg == 7) {
   maccrd = ((void *)0);
   enccrd = crd1;
  } else {
   err = 22;
   goto errout;
  }
 } else {
  if ((crd1->CRD_INI.cri_alg == 4 ||
      crd1->CRD_INI.cri_alg == 5) &&
      (crd2->CRD_INI.cri_alg == 1 ||
      crd2->CRD_INI.cri_alg == 7) &&
      ((crd2->crd_flags & 0x01) == 0)) {
   maccrd = crd1;
   enccrd = crd2;
  } else if ((crd1->CRD_INI.cri_alg == 1 ||
      crd1->CRD_INI.cri_alg == 7) &&
      (crd2->CRD_INI.cri_alg == 4 ||
      crd2->CRD_INI.cri_alg == 5) &&
      (crd1->crd_flags & 0x01)) {
   enccrd = crd1;
   maccrd = crd2;
  } else {
   err = 22;
   goto errout;
  }
 }
 if (enccrd) {
  if (enccrd->CRD_INI.cri_alg == 7) {
   if ((sc->sc_flags & 0x20) == 0) {
    err = 22;
    goto errout;
   }
   flags |= (__uint16_t)(__builtin_constant_p(0x8000) ? (__uint16_t)(((__uint16_t)(0x8000) & 0xffU) << 8 | ((__uint16_t)(0x8000) & 0xff00U) >> 8) : __swap16md(0x8000));
   switch (enccrd->CRD_INI.cri_klen) {
   case 128:
   case 192:
   case 256:
    keylen = enccrd->CRD_INI.cri_klen / 8;
    break;
   default:
    err = 22;
    goto errout;
   }
   ivlen = 16;
  } else {
   flags |= (__uint16_t)(__builtin_constant_p(0x8000) ? (__uint16_t)(((__uint16_t)(0x8000) & 0xffU) << 8 | ((__uint16_t)(0x8000) & 0xff00U) >> 8) : __swap16md(0x8000));
   ivlen = 8;
   keylen = 24;
  }
  encoffset = enccrd->crd_skip;
  if (enccrd->crd_flags & 0x01) {
   if (enccrd->crd_flags & 0x04)
    __builtin_bcopy((enccrd->CRD_INI.u.iv), (key.ses_iv), (ivlen));
   else
    arc4random_buf(key.ses_iv, ivlen);
   if ((enccrd->crd_flags & 0x02) == 0) {
    if (crp->crp_flags & 0x0001)
     err = m_copyback(q->q_src_m,
         enccrd->crd_inject,
         ivlen, key.ses_iv, 0x0002);
    else if (crp->crp_flags & 0x0002)
     cuio_copyback(q->q_src_io,
         enccrd->crd_inject,
         ivlen, key.ses_iv);
    if (err)
     goto errout;
   }
  } else {
   flags |= (__uint16_t)(__builtin_constant_p(0x4000) ? (__uint16_t)(((__uint16_t)(0x4000) & 0xffU) << 8 | ((__uint16_t)(0x4000) & 0xff00U) >> 8) : __swap16md(0x4000));
   if (enccrd->crd_flags & 0x04)
    __builtin_bcopy((enccrd->CRD_INI.u.iv), (key.ses_iv), (ivlen));
   else if (crp->crp_flags & 0x0001)
    m_copydata(q->q_src_m, enccrd->crd_inject,
        ivlen, (caddr_t)key.ses_iv);
   else if (crp->crp_flags & 0x0002)
    cuio_copydata(q->q_src_io,
        enccrd->crd_inject, ivlen,
        (caddr_t)key.ses_iv);
  }
  for (i = 0; i < (keylen / 4); i++)
   key.ses_key[i] = ses->ses_key[i];
  for (i = 0; i < (ivlen / 4); i++)
   (key.ses_iv[i]) = (__uint32_t)(__builtin_constant_p(((__uint32_t)((key.ses_iv[i])))) ? (__uint32_t)(((__uint32_t)(((__uint32_t)((key.ses_iv[i])))) & 0xff) << 24 | ((__uint32_t)(((__uint32_t)((key.ses_iv[i])))) & 0xff00) << 8 | ((__uint32_t)(((__uint32_t)((key.ses_iv[i])))) & 0xff0000) >> 8 | ((__uint32_t)(((__uint32_t)((key.ses_iv[i])))) & 0xff000000) >> 24) : __swap32md(((__uint32_t)((key.ses_iv[i])))));
 }
 if (maccrd) {
  macoffset = maccrd->crd_skip;
  if (maccrd->CRD_INI.cri_alg == 4)
   flags |= (__uint16_t)(__builtin_constant_p(0x1000) ? (__uint16_t)(((__uint16_t)(0x1000) & 0xffU) << 8 | ((__uint16_t)(0x1000) & 0xff00U) >> 8) : __swap16md(0x1000));
  else
   flags |= (__uint16_t)(__builtin_constant_p(0x2000) ? (__uint16_t)(((__uint16_t)(0x2000) & 0xffU) << 8 | ((__uint16_t)(0x2000) & 0xff00U) >> 8) : __swap16md(0x2000));
  for (i = 0; i < 5; i++) {
   key.ses_hminner[i] = ses->ses_hminner[i];
   key.ses_hmouter[i] = ses->ses_hmouter[i];
   (key.ses_hminner[i]) = (__uint32_t)(__builtin_constant_p(key.ses_hminner[i]) ? (__uint32_t)(((__uint32_t)(key.ses_hminner[i]) & 0xff) << 24 | ((__uint32_t)(key.ses_hminner[i]) & 0xff00) << 8 | ((__uint32_t)(key.ses_hminner[i]) & 0xff0000) >> 8 | ((__uint32_t)(key.ses_hminner[i]) & 0xff000000) >> 24) : __swap32md(key.ses_hminner[i]));
   (key.ses_hmouter[i]) = (__uint32_t)(__builtin_constant_p(key.ses_hmouter[i]) ? (__uint32_t)(((__uint32_t)(key.ses_hmouter[i]) & 0xff) << 24 | ((__uint32_t)(key.ses_hmouter[i]) & 0xff00) << 8 | ((__uint32_t)(key.ses_hmouter[i]) & 0xff0000) >> 8 | ((__uint32_t)(key.ses_hmouter[i]) & 0xff000000) >> 24) : __swap32md(key.ses_hmouter[i]));
  }
 }
 if (enccrd && maccrd) {
  if (((encoffset + enccrd->crd_len) !=
      (macoffset + maccrd->crd_len)) ||
      (enccrd->crd_skip < maccrd->crd_skip)) {
   err = 22;
   goto errout;
  }
  sskip = maccrd->crd_skip;
  cpskip = dskip = enccrd->crd_skip;
  stheend = maccrd->crd_len;
  dtheend = enccrd->crd_len;
  coffset = enccrd->crd_skip - maccrd->crd_skip;
  cpoffset = cpskip + dtheend;
 } else {
  cpskip = dskip = sskip = macoffset + encoffset;
  dtheend = stheend = (enccrd)?enccrd->crd_len:maccrd->crd_len;
  cpoffset = cpskip + dtheend;
  coffset = 0;
 }
 if (bus_dmamap_create(sc->sc_dmat, 0xfff0, 64,
  0xfff0, 0, 0x0001, &q->q_src_map) != 0) {
  err = 12;
  goto errout;
 }
 if (crp->crp_flags & 0x0001) {
  if (bus_dmamap_load_mbuf(sc->sc_dmat, q->q_src_map,
      q->q_src_m, 0x0001) != 0) {
   bus_dmamap_destroy(sc->sc_dmat, q->q_src_map);
   q->q_src_map = ((void *)0);
   err = 12;
   goto errout;
  }
 } else if (crp->crp_flags & 0x0002) {
  if (bus_dmamap_load_uio(sc->sc_dmat, q->q_src_map,
      q->q_src_io, 0x0001) != 0) {
   bus_dmamap_destroy(sc->sc_dmat, q->q_src_map);
   q->q_src_map = ((void *)0);
   err = 12;
   goto errout;
  }
 }
 nicealign = ubsec_dmamap_aligned(q->q_src_map);
 dmap->d_dma->d_mcr.mcr_pktlen = (__uint16_t)(__builtin_constant_p(stheend) ? (__uint16_t)(((__uint16_t)(stheend) & 0xffU) << 8 | ((__uint16_t)(stheend) & 0xff00U) >> 8) : __swap16md(stheend));
 for (i = j = 0; i < q->q_src_map->dm_nsegs; i++) {
  struct ubsec_pktbuf *pb;
  bus_size_t packl = q->q_src_map->dm_segs[i].ds_len;
  bus_addr_t packp = q->q_src_map->dm_segs[i].ds_addr;
  if (sskip >= packl) {
   sskip -= packl;
   continue;
  }
  packl -= sskip;
  packp += sskip;
  sskip = 0;
  if (packl > 0xfffc) {
   err = 5;
   goto errout;
  }
  if (j == 0)
   pb = &dmap->d_dma->d_mcr.mcr_ipktbuf;
  else
   pb = &dmap->d_dma->d_sbuf[j - 1];
  pb->pb_addr = (__uint32_t)(__builtin_constant_p(packp) ? (__uint32_t)(((__uint32_t)(packp) & 0xff) << 24 | ((__uint32_t)(packp) & 0xff00) << 8 | ((__uint32_t)(packp) & 0xff0000) >> 8 | ((__uint32_t)(packp) & 0xff000000) >> 24) : __swap32md(packp));
  if (stheend) {
   if (packl > stheend) {
    pb->pb_len = (__uint32_t)(__builtin_constant_p(stheend) ? (__uint32_t)(((__uint32_t)(stheend) & 0xff) << 24 | ((__uint32_t)(stheend) & 0xff00) << 8 | ((__uint32_t)(stheend) & 0xff0000) >> 8 | ((__uint32_t)(stheend) & 0xff000000) >> 24) : __swap32md(stheend));
    stheend = 0;
   } else {
    pb->pb_len = (__uint32_t)(__builtin_constant_p(packl) ? (__uint32_t)(((__uint32_t)(packl) & 0xff) << 24 | ((__uint32_t)(packl) & 0xff00) << 8 | ((__uint32_t)(packl) & 0xff0000) >> 8 | ((__uint32_t)(packl) & 0xff000000) >> 24) : __swap32md(packl));
    stheend -= packl;
   }
  } else
   pb->pb_len = (__uint32_t)(__builtin_constant_p(packl) ? (__uint32_t)(((__uint32_t)(packl) & 0xff) << 24 | ((__uint32_t)(packl) & 0xff00) << 8 | ((__uint32_t)(packl) & 0xff0000) >> 8 | ((__uint32_t)(packl) & 0xff000000) >> 24) : __swap32md(packl));
  if ((i + 1) == q->q_src_map->dm_nsegs)
   pb->pb_next = 0;
  else
   pb->pb_next = (__uint32_t)(__builtin_constant_p(dmap->d_alloc.dma_paddr + __builtin_offsetof(struct ubsec_dmachunk, d_sbuf[j])) ? (__uint32_t)(((__uint32_t)(dmap->d_alloc.dma_paddr + __builtin_offsetof(struct ubsec_dmachunk, d_sbuf[j])) & 0xff) << 24 | ((__uint32_t)(dmap->d_alloc.dma_paddr + __builtin_offsetof(struct ubsec_dmachunk, d_sbuf[j])) & 0xff00) << 8 | ((__uint32_t)(dmap->d_alloc.dma_paddr + __builtin_offsetof(struct ubsec_dmachunk, d_sbuf[j])) & 0xff0000) >> 8 | ((__uint32_t)(dmap->d_alloc.dma_paddr + __builtin_offsetof(struct ubsec_dmachunk, d_sbuf[j])) & 0xff000000) >> 24) : __swap32md(dmap->d_alloc.dma_paddr + __builtin_offsetof(struct ubsec_dmachunk, d_sbuf[j])));
  j++;
 }
 if (enccrd == ((void *)0) && maccrd != ((void *)0)) {
  dmap->d_dma->d_mcr.mcr_opktbuf.pb_addr = 0;
  dmap->d_dma->d_mcr.mcr_opktbuf.pb_len = 0;
  dmap->d_dma->d_mcr.mcr_opktbuf.pb_next =
      (__uint32_t)(__builtin_constant_p(dmap->d_alloc.dma_paddr + __builtin_offsetof(struct ubsec_dmachunk, d_macbuf[0])) ? (__uint32_t)(((__uint32_t)(dmap->d_alloc.dma_paddr + __builtin_offsetof(struct ubsec_dmachunk, d_macbuf[0])) & 0xff) << 24 | ((__uint32_t)(dmap->d_alloc.dma_paddr + __builtin_offsetof(struct ubsec_dmachunk, d_macbuf[0])) & 0xff00) << 8 | ((__uint32_t)(dmap->d_alloc.dma_paddr + __builtin_offsetof(struct ubsec_dmachunk, d_macbuf[0])) & 0xff0000) >> 8 | ((__uint32_t)(dmap->d_alloc.dma_paddr + __builtin_offsetof(struct ubsec_dmachunk, d_macbuf[0])) & 0xff000000) >> 24) : __swap32md(dmap->d_alloc.dma_paddr + __builtin_offsetof(struct ubsec_dmachunk, d_macbuf[0])));
 } else {
  if (crp->crp_flags & 0x0002) {
   if (!nicealign) {
    err = 22;
    goto errout;
   }
   if (bus_dmamap_create(sc->sc_dmat, 0xfff0,
       64, 0xfff0, 0, 0x0001,
       &q->q_dst_map) != 0) {
    err = 12;
    goto errout;
   }
   if (bus_dmamap_load_uio(sc->sc_dmat, q->q_dst_map,
       q->q_dst_io, 0x0001) != 0) {
    bus_dmamap_destroy(sc->sc_dmat, q->q_dst_map);
    q->q_dst_map = ((void *)0);
    goto errout;
   }
  } else if (crp->crp_flags & 0x0001) {
   if (nicealign) {
    q->q_dst_m = q->q_src_m;
    q->q_dst_map = q->q_src_map;
   } else {
    q->q_dst_m = m_dup_pkt(q->q_src_m, 0,
        0x0002);
    if (q->q_dst_m == ((void *)0)) {
      err = 12;
      goto errout;
     }
    if (bus_dmamap_create(sc->sc_dmat, 0xfff0,
        64, 0xfff0, 0, 0x0001,
        &q->q_dst_map) != 0) {
     err = 12;
     goto errout;
    }
    if (bus_dmamap_load_mbuf(sc->sc_dmat,
        q->q_dst_map, q->q_dst_m,
        0x0001) != 0) {
     bus_dmamap_destroy(sc->sc_dmat,
     q->q_dst_map);
     q->q_dst_map = ((void *)0);
     err = 12;
     goto errout;
    }
   }
  } else {
   err = 22;
   goto errout;
  }
  for (i = j = 0; i < q->q_dst_map->dm_nsegs; i++) {
   struct ubsec_pktbuf *pb;
   bus_size_t packl = q->q_dst_map->dm_segs[i].ds_len;
   bus_addr_t packp = q->q_dst_map->dm_segs[i].ds_addr;
   if (dskip >= packl) {
    dskip -= packl;
    continue;
   }
   packl -= dskip;
   packp += dskip;
   dskip = 0;
   if (packl > 0xfffc) {
    err = 5;
    goto errout;
   }
   if (j == 0)
    pb = &dmap->d_dma->d_mcr.mcr_opktbuf;
   else
    pb = &dmap->d_dma->d_dbuf[j - 1];
   pb->pb_addr = (__uint32_t)(__builtin_constant_p(packp) ? (__uint32_t)(((__uint32_t)(packp) & 0xff) << 24 | ((__uint32_t)(packp) & 0xff00) << 8 | ((__uint32_t)(packp) & 0xff0000) >> 8 | ((__uint32_t)(packp) & 0xff000000) >> 24) : __swap32md(packp));
   if (dtheend) {
    if (packl > dtheend) {
     pb->pb_len = (__uint32_t)(__builtin_constant_p(dtheend) ? (__uint32_t)(((__uint32_t)(dtheend) & 0xff) << 24 | ((__uint32_t)(dtheend) & 0xff00) << 8 | ((__uint32_t)(dtheend) & 0xff0000) >> 8 | ((__uint32_t)(dtheend) & 0xff000000) >> 24) : __swap32md(dtheend));
     dtheend = 0;
    } else {
     pb->pb_len = (__uint32_t)(__builtin_constant_p(packl) ? (__uint32_t)(((__uint32_t)(packl) & 0xff) << 24 | ((__uint32_t)(packl) & 0xff00) << 8 | ((__uint32_t)(packl) & 0xff0000) >> 8 | ((__uint32_t)(packl) & 0xff000000) >> 24) : __swap32md(packl));
     dtheend -= packl;
    }
   } else
    pb->pb_len = (__uint32_t)(__builtin_constant_p(packl) ? (__uint32_t)(((__uint32_t)(packl) & 0xff) << 24 | ((__uint32_t)(packl) & 0xff00) << 8 | ((__uint32_t)(packl) & 0xff0000) >> 8 | ((__uint32_t)(packl) & 0xff000000) >> 24) : __swap32md(packl));
   if ((i + 1) == q->q_dst_map->dm_nsegs) {
    if (maccrd)
     pb->pb_next = (__uint32_t)(__builtin_constant_p(dmap->d_alloc.dma_paddr + __builtin_offsetof(struct ubsec_dmachunk, d_macbuf[0])) ? (__uint32_t)(((__uint32_t)(dmap->d_alloc.dma_paddr + __builtin_offsetof(struct ubsec_dmachunk, d_macbuf[0])) & 0xff) << 24 | ((__uint32_t)(dmap->d_alloc.dma_paddr + __builtin_offsetof(struct ubsec_dmachunk, d_macbuf[0])) & 0xff00) << 8 | ((__uint32_t)(dmap->d_alloc.dma_paddr + __builtin_offsetof(struct ubsec_dmachunk, d_macbuf[0])) & 0xff0000) >> 8 | ((__uint32_t)(dmap->d_alloc.dma_paddr + __builtin_offsetof(struct ubsec_dmachunk, d_macbuf[0])) & 0xff000000) >> 24) : __swap32md(dmap->d_alloc.dma_paddr + __builtin_offsetof(struct ubsec_dmachunk, d_macbuf[0])));
    else
     pb->pb_next = 0;
   } else
    pb->pb_next = (__uint32_t)(__builtin_constant_p(dmap->d_alloc.dma_paddr + __builtin_offsetof(struct ubsec_dmachunk, d_dbuf[j])) ? (__uint32_t)(((__uint32_t)(dmap->d_alloc.dma_paddr + __builtin_offsetof(struct ubsec_dmachunk, d_dbuf[j])) & 0xff) << 24 | ((__uint32_t)(dmap->d_alloc.dma_paddr + __builtin_offsetof(struct ubsec_dmachunk, d_dbuf[j])) & 0xff00) << 8 | ((__uint32_t)(dmap->d_alloc.dma_paddr + __builtin_offsetof(struct ubsec_dmachunk, d_dbuf[j])) & 0xff0000) >> 8 | ((__uint32_t)(dmap->d_alloc.dma_paddr + __builtin_offsetof(struct ubsec_dmachunk, d_dbuf[j])) & 0xff000000) >> 24) : __swap32md(dmap->d_alloc.dma_paddr + __builtin_offsetof(struct ubsec_dmachunk, d_dbuf[j])));
   j++;
  }
 }
 dmap->d_dma->d_mcr.mcr_cmdctxp = (__uint32_t)(__builtin_constant_p(dmap->d_alloc.dma_paddr + __builtin_offsetof(struct ubsec_dmachunk, d_ctx)) ? (__uint32_t)(((__uint32_t)(dmap->d_alloc.dma_paddr + __builtin_offsetof(struct ubsec_dmachunk, d_ctx)) & 0xff) << 24 | ((__uint32_t)(dmap->d_alloc.dma_paddr + __builtin_offsetof(struct ubsec_dmachunk, d_ctx)) & 0xff00) << 8 | ((__uint32_t)(dmap->d_alloc.dma_paddr + __builtin_offsetof(struct ubsec_dmachunk, d_ctx)) & 0xff0000) >> 8 | ((__uint32_t)(dmap->d_alloc.dma_paddr + __builtin_offsetof(struct ubsec_dmachunk, d_ctx)) & 0xff000000) >> 24) : __swap32md(dmap->d_alloc.dma_paddr + __builtin_offsetof(struct ubsec_dmachunk, d_ctx)));
 if (enccrd && enccrd->CRD_INI.cri_alg == 7) {
  struct ubsec_pktctx_aes128 *aes128;
  struct ubsec_pktctx_aes192 *aes192;
  struct ubsec_pktctx_aes256 *aes256;
  struct ubsec_pktctx_hdr *ph;
  u_int8_t *ctx;
  ctx = (u_int8_t *)(dmap->d_alloc.dma_vaddr +
      __builtin_offsetof(struct ubsec_dmachunk, d_ctx));
  ph = (struct ubsec_pktctx_hdr *)ctx;
  ph->ph_type = (__uint16_t)(__builtin_constant_p(0x0040) ? (__uint16_t)(((__uint16_t)(0x0040) & 0xffU) << 8 | ((__uint16_t)(0x0040) & 0xff00U) >> 8) : __swap16md(0x0040));
  ph->ph_flags = flags;
  ph->ph_offset = (__uint16_t)(__builtin_constant_p(coffset >> 2) ? (__uint16_t)(((__uint16_t)(coffset >> 2) & 0xffU) << 8 | ((__uint16_t)(coffset >> 2) & 0xff00U) >> 8) : __swap16md(coffset >> 2));
  switch (enccrd->CRD_INI.cri_klen) {
  case 128:
   aes128 = (struct ubsec_pktctx_aes128 *)ctx;
    ph->ph_len = (__uint16_t)(__builtin_constant_p(sizeof(*aes128)) ? (__uint16_t)(((__uint16_t)(sizeof(*aes128)) & 0xffU) << 8 | ((__uint16_t)(sizeof(*aes128)) & 0xff00U) >> 8) : __swap16md(sizeof(*aes128)));
   ph->ph_flags |= (__uint16_t)(__builtin_constant_p(0x0000) ? (__uint16_t)(((__uint16_t)(0x0000) & 0xffU) << 8 | ((__uint16_t)(0x0000) & 0xff00U) >> 8) : __swap16md(0x0000));
   for (i = 0; i < 4; i++)
    aes128->pc_aeskey[i] = key.ses_key[i];
   for (i = 0; i < 5; i++)
    aes128->pc_hminner[i] = key.ses_hminner[i];
   for (i = 0; i < 5; i++)
    aes128->pc_hmouter[i] = key.ses_hmouter[i];
   for (i = 0; i < 4; i++)
    aes128->pc_iv[i] = key.ses_iv[i];
   break;
  case 192:
   aes192 = (struct ubsec_pktctx_aes192 *)ctx;
   ph->ph_len = (__uint16_t)(__builtin_constant_p(sizeof(*aes192)) ? (__uint16_t)(((__uint16_t)(sizeof(*aes192)) & 0xffU) << 8 | ((__uint16_t)(sizeof(*aes192)) & 0xff00U) >> 8) : __swap16md(sizeof(*aes192)));
   ph->ph_flags |= (__uint16_t)(__builtin_constant_p(0x0100) ? (__uint16_t)(((__uint16_t)(0x0100) & 0xffU) << 8 | ((__uint16_t)(0x0100) & 0xff00U) >> 8) : __swap16md(0x0100));
   for (i = 0; i < 6; i++)
    aes192->pc_aeskey[i] = key.ses_key[i];
   for (i = 0; i < 5; i++)
    aes192->pc_hminner[i] = key.ses_hminner[i];
   for (i = 0; i < 5; i++)
    aes192->pc_hmouter[i] = key.ses_hmouter[i];
   for (i = 0; i < 4; i++)
    aes192->pc_iv[i] = key.ses_iv[i];
   break;
  case 256:
   aes256 = (struct ubsec_pktctx_aes256 *)ctx;
   ph->ph_len = (__uint16_t)(__builtin_constant_p(sizeof(*aes256)) ? (__uint16_t)(((__uint16_t)(sizeof(*aes256)) & 0xffU) << 8 | ((__uint16_t)(sizeof(*aes256)) & 0xff00U) >> 8) : __swap16md(sizeof(*aes256)));
   ph->ph_flags |= (__uint16_t)(__builtin_constant_p(0x0200) ? (__uint16_t)(((__uint16_t)(0x0200) & 0xffU) << 8 | ((__uint16_t)(0x0200) & 0xff00U) >> 8) : __swap16md(0x0200));
   for (i = 0; i < 8; i++)
    aes256->pc_aeskey[i] = key.ses_key[i];
   for (i = 0; i < 5; i++)
    aes256->pc_hminner[i] = key.ses_hminner[i];
   for (i = 0; i < 5; i++)
    aes256->pc_hmouter[i] = key.ses_hmouter[i];
   for (i = 0; i < 4; i++)
    aes256->pc_iv[i] = key.ses_iv[i];
   break;
  }
 } else if (sc->sc_flags & 0x02) {
  struct ubsec_pktctx_3des *ctx;
  struct ubsec_pktctx_hdr *ph;
  ctx = (struct ubsec_pktctx_3des *)
      (dmap->d_alloc.dma_vaddr +
      __builtin_offsetof(struct ubsec_dmachunk, d_ctx));
  ph = (struct ubsec_pktctx_hdr *)ctx;
  ph->ph_len = (__uint16_t)(__builtin_constant_p(sizeof(*ctx)) ? (__uint16_t)(((__uint16_t)(sizeof(*ctx)) & 0xffU) << 8 | ((__uint16_t)(sizeof(*ctx)) & 0xff00U) >> 8) : __swap16md(sizeof(*ctx)));
  ph->ph_type = (__uint16_t)(__builtin_constant_p(0x0000) ? (__uint16_t)(((__uint16_t)(0x0000) & 0xffU) << 8 | ((__uint16_t)(0x0000) & 0xff00U) >> 8) : __swap16md(0x0000));
  ph->ph_flags = flags;
  ph->ph_offset = (__uint16_t)(__builtin_constant_p(coffset >> 2) ? (__uint16_t)(((__uint16_t)(coffset >> 2) & 0xffU) << 8 | ((__uint16_t)(coffset >> 2) & 0xff00U) >> 8) : __swap16md(coffset >> 2));
  for (i = 0; i < 6; i++)
   ctx->pc_deskey[i] = key.ses_key[i];
  for (i = 0; i < 5; i++)
   ctx->pc_hminner[i] = key.ses_hminner[i];
  for (i = 0; i < 5; i++)
   ctx->pc_hmouter[i] = key.ses_hmouter[i];
  for (i = 0; i < 2; i++)
   ctx->pc_iv[i] = key.ses_iv[i];
 } else {
  struct ubsec_pktctx *ctx = (struct ubsec_pktctx *)
      (dmap->d_alloc.dma_vaddr +
      __builtin_offsetof(struct ubsec_dmachunk, d_ctx));
  ctx->pc_flags = flags;
  ctx->pc_offset = (__uint16_t)(__builtin_constant_p(coffset >> 2) ? (__uint16_t)(((__uint16_t)(coffset >> 2) & 0xffU) << 8 | ((__uint16_t)(coffset >> 2) & 0xff00U) >> 8) : __swap16md(coffset >> 2));
  for (i = 0; i < 6; i++)
   ctx->pc_deskey[i] = key.ses_key[i];
  for (i = 0; i < 5; i++)
   ctx->pc_hminner[i] = key.ses_hminner[i];
  for (i = 0; i < 5; i++)
   ctx->pc_hmouter[i] = key.ses_hmouter[i];
  for (i = 0; i < 2; i++)
   ctx->pc_iv[i] = key.ses_iv[i];
 }
 s = _splraise(6);
 do { (q)->q_next.sqe_next = ((void *)0); *(&sc->sc_queue)->sqh_last = (q); (&sc->sc_queue)->sqh_last = &(q)->q_next.sqe_next; } while (0);
 sc->sc_nqueue++;
 ubsecstats.hst_ipackets++;
 ubsecstats.hst_ibytes += dmap->d_alloc.dma_map->dm_mapsize;
 ubsec_feed(sc);
 _splx(s);
 explicit_bzero(&key, sizeof(key));
 return (0);
errout:
 if (q != ((void *)0)) {
  if ((q->q_dst_m != ((void *)0)) && (q->q_src_m != q->q_dst_m))
   m_freem(q->q_dst_m);
  if (q->q_dst_map != ((void *)0) && q->q_dst_map != q->q_src_map) {
   bus_dmamap_unload(sc->sc_dmat, q->q_dst_map);
   bus_dmamap_destroy(sc->sc_dmat, q->q_dst_map);
  }
  if (q->q_src_map != ((void *)0)) {
   bus_dmamap_unload(sc->sc_dmat, q->q_src_map);
   bus_dmamap_destroy(sc->sc_dmat, q->q_src_map);
  }
  s = _splraise(6);
  do { (q)->q_next.sqe_next = ((void *)0); *(&sc->sc_freequeue)->sqh_last = (q); (&sc->sc_freequeue)->sqh_last = &(q)->q_next.sqe_next; } while (0);
  _splx(s);
 }
 if (err == 22)
  ubsecstats.hst_invalid++;
 else
  ubsecstats.hst_nomem++;
errout2:
 crp->crp_etype = err;
 crypto_done(crp);
 explicit_bzero(&key, sizeof(key));
 return (0);
}
void
ubsec_callback(struct ubsec_softc *sc, struct ubsec_q *q)
{
 struct cryptop *crp = (struct cryptop *)q->q_crp;
 struct cryptodesc *crd;
 struct ubsec_dma *dmap = q->q_dma;
 u_int8_t *ctx = (u_int8_t *)(dmap->d_alloc.dma_vaddr +
      __builtin_offsetof(struct ubsec_dmachunk, d_ctx));
 struct ubsec_pktctx_hdr *ph = (struct ubsec_pktctx_hdr *)ctx;
 int i;
 ubsecstats.hst_opackets++;
 ubsecstats.hst_obytes += dmap->d_alloc.dma_size;
 bus_dmamap_sync(sc->sc_dmat, dmap->d_alloc.dma_map, 0,
     dmap->d_alloc.dma_map->dm_mapsize,
     0x02|0x08);
 if (q->q_dst_map != ((void *)0) && q->q_dst_map != q->q_src_map) {
  bus_dmamap_sync(sc->sc_dmat, q->q_dst_map,
      0, q->q_dst_map->dm_mapsize, 0x02);
  bus_dmamap_unload(sc->sc_dmat, q->q_dst_map);
  bus_dmamap_destroy(sc->sc_dmat, q->q_dst_map);
 }
 bus_dmamap_sync(sc->sc_dmat, q->q_src_map,
     0, q->q_src_map->dm_mapsize, 0x08);
 bus_dmamap_unload(sc->sc_dmat, q->q_src_map);
 bus_dmamap_destroy(sc->sc_dmat, q->q_src_map);
 explicit_bzero(ctx, ph->ph_len);
 if ((crp->crp_flags & 0x0001) && (q->q_src_m != q->q_dst_m)) {
  m_freem(q->q_src_m);
  crp->crp_buf = (caddr_t)q->q_dst_m;
 }
 for (i = 0; i < crp->crp_ndesc; i++) {
  crd = &crp->crp_desc[i];
  if (crd->CRD_INI.cri_alg != 4 &&
      crd->CRD_INI.cri_alg != 5)
   continue;
  if (crp->crp_flags & 0x0001)
   crp->crp_etype = m_copyback((struct mbuf *)crp->crp_buf,
       crd->crd_inject, 12,
       dmap->d_dma->d_macbuf, 0x0002);
  else if (crp->crp_flags & 0x0002 && crp->crp_mac)
   __builtin_bcopy(((caddr_t)dmap->d_dma->d_macbuf), (crp->crp_mac), (12));
  break;
 }
 do { (q)->q_next.sqe_next = ((void *)0); *(&sc->sc_freequeue)->sqh_last = (q); (&sc->sc_freequeue)->sqh_last = &(q)->q_next.sqe_next; } while (0);
 crypto_done(crp);
}
void
ubsec_feed2(struct ubsec_softc *sc)
{
 struct ubsec_q2 *q;
 while (!(((&sc->sc_queue2)->sqh_first) == ((void *)0))) {
  if (bus_space_read_4((sc)->sc_st, (sc)->sc_sh, (0x0008)) & 0x08000000)
   break;
  q = ((&sc->sc_queue2)->sqh_first);
  bus_dmamap_sync(sc->sc_dmat, q->q_mcr.dma_map, 0,
      q->q_mcr.dma_map->dm_mapsize,
      0x01 | 0x04);
  bus_dmamap_sync(sc->sc_dmat, q->q_ctx.dma_map, 0,
      q->q_ctx.dma_map->dm_mapsize,
      0x04);
  bus_space_write_4((sc)->sc_st, (sc)->sc_sh, 0x0010, q->q_mcr.dma_paddr);
  do { if (((&sc->sc_queue2)->sqh_first = (&sc->sc_queue2)->sqh_first->q_next.sqe_next) == ((void *)0)) (&sc->sc_queue2)->sqh_last = &(&sc->sc_queue2)->sqh_first; } while (0);
  --sc->sc_nqueue2;
  do { (q)->q_next.sqe_next = ((void *)0); *(&sc->sc_qchip2)->sqh_last = (q); (&sc->sc_qchip2)->sqh_last = &(q)->q_next.sqe_next; } while (0);
 }
}
void
ubsec_feed4(struct ubsec_softc *sc)
{
 struct ubsec_q2 *q;
 while (!(((&sc->sc_queue4)->sqh_first) == ((void *)0))) {
  if (bus_space_read_4((sc)->sc_st, (sc)->sc_sh, (0x0008)) & 0x00020000)
   break;
  q = ((&sc->sc_queue4)->sqh_first);
  bus_dmamap_sync(sc->sc_dmat, q->q_mcr.dma_map, 0,
      q->q_mcr.dma_map->dm_mapsize,
      0x01 | 0x04);
  bus_dmamap_sync(sc->sc_dmat, q->q_ctx.dma_map, 0,
      q->q_ctx.dma_map->dm_mapsize,
      0x04);
  bus_space_write_4((sc)->sc_st, (sc)->sc_sh, 0x001c, q->q_mcr.dma_paddr);
  do { if (((&sc->sc_queue4)->sqh_first = (&sc->sc_queue4)->sqh_first->q_next.sqe_next) == ((void *)0)) (&sc->sc_queue4)->sqh_last = &(&sc->sc_queue4)->sqh_first; } while (0);
  --sc->sc_nqueue4;
  do { (q)->q_next.sqe_next = ((void *)0); *(&sc->sc_qchip4)->sqh_last = (q); (&sc->sc_qchip4)->sqh_last = &(q)->q_next.sqe_next; } while (0);
 }
}
void
ubsec_callback2(struct ubsec_softc *sc, struct ubsec_q2 *q)
{
 struct ubsec_ctx_keyop *ctx;
 ctx = (struct ubsec_ctx_keyop *)q->q_ctx.dma_vaddr;
 bus_dmamap_sync(sc->sc_dmat, q->q_ctx.dma_map, 0,
     q->q_ctx.dma_map->dm_mapsize, 0x08);
 switch (q->q_type) {
 case 0x42:
 case 0x41: {
  struct ubsec_q2_rng *rng = (struct ubsec_q2_rng *)q;
  u_int32_t *p;
  int i;
  bus_dmamap_sync(sc->sc_dmat, rng->rng_buf.dma_map, 0,
      rng->rng_buf.dma_map->dm_mapsize, 0x02);
  p = (u_int32_t *)rng->rng_buf.dma_vaddr;
  for (i = 0; i < 16; p++, i++)
   enqueue_randomness(*p);
  rng->rng_used = 0;
  timeout_add(&sc->sc_rngto, sc->sc_rnghz);
  break;
 }
 default:
  printf("%s: unknown ctx op: %x\n", sc->sc_dv.dv_xname,
      (__uint16_t)(__builtin_constant_p(ctx->ctx_op) ? (__uint16_t)(((__uint16_t)(ctx->ctx_op) & 0xffU) << 8 | ((__uint16_t)(ctx->ctx_op) & 0xff00U) >> 8) : __swap16md(ctx->ctx_op)));
  break;
 }
}
void
ubsec_rng(void *vsc)
{
 struct ubsec_softc *sc = vsc;
 struct ubsec_q2_rng *rng = &sc->sc_rng;
 struct ubsec_mcr *mcr;
 struct ubsec_ctx_rngbypass *ctx;
 int s, *nqueue;
 s = _splraise(6);
 if (rng->rng_used) {
  _splx(s);
  return;
 }
 if (sc->sc_flags & 0x80)
  nqueue = &sc->sc_nqueue4;
 else
  nqueue = &sc->sc_nqueue2;
 (*nqueue)++;
 if (*nqueue >= 60)
  goto out;
 mcr = (struct ubsec_mcr *)rng->rng_q.q_mcr.dma_vaddr;
 ctx = (struct ubsec_ctx_rngbypass *)rng->rng_q.q_ctx.dma_vaddr;
 mcr->mcr_pkts = (__uint16_t)(__builtin_constant_p(1) ? (__uint16_t)(((__uint16_t)(1) & 0xffU) << 8 | ((__uint16_t)(1) & 0xff00U) >> 8) : __swap16md(1));
 mcr->mcr_flags = 0;
 mcr->mcr_cmdctxp = (__uint32_t)(__builtin_constant_p(rng->rng_q.q_ctx.dma_paddr) ? (__uint32_t)(((__uint32_t)(rng->rng_q.q_ctx.dma_paddr) & 0xff) << 24 | ((__uint32_t)(rng->rng_q.q_ctx.dma_paddr) & 0xff00) << 8 | ((__uint32_t)(rng->rng_q.q_ctx.dma_paddr) & 0xff0000) >> 8 | ((__uint32_t)(rng->rng_q.q_ctx.dma_paddr) & 0xff000000) >> 24) : __swap32md(rng->rng_q.q_ctx.dma_paddr));
 mcr->mcr_ipktbuf.pb_addr = mcr->mcr_ipktbuf.pb_next = 0;
 mcr->mcr_ipktbuf.pb_len = 0;
 mcr->mcr_reserved = mcr->mcr_pktlen = 0;
 mcr->mcr_opktbuf.pb_addr = (__uint32_t)(__builtin_constant_p(rng->rng_buf.dma_paddr) ? (__uint32_t)(((__uint32_t)(rng->rng_buf.dma_paddr) & 0xff) << 24 | ((__uint32_t)(rng->rng_buf.dma_paddr) & 0xff00) << 8 | ((__uint32_t)(rng->rng_buf.dma_paddr) & 0xff0000) >> 8 | ((__uint32_t)(rng->rng_buf.dma_paddr) & 0xff000000) >> 24) : __swap32md(rng->rng_buf.dma_paddr));
 mcr->mcr_opktbuf.pb_len = (__uint32_t)(__builtin_constant_p(((sizeof(u_int32_t) * 16)) & 0x0000ffff) ? (__uint32_t)(((__uint32_t)(((sizeof(u_int32_t) * 16)) & 0x0000ffff) & 0xff) << 24 | ((__uint32_t)(((sizeof(u_int32_t) * 16)) & 0x0000ffff) & 0xff00) << 8 | ((__uint32_t)(((sizeof(u_int32_t) * 16)) & 0x0000ffff) & 0xff0000) >> 8 | ((__uint32_t)(((sizeof(u_int32_t) * 16)) & 0x0000ffff) & 0xff000000) >> 24) : __swap32md(((sizeof(u_int32_t) * 16)) & 0x0000ffff));
 mcr->mcr_opktbuf.pb_next = 0;
 ctx->rbp_len = (__uint16_t)(__builtin_constant_p(sizeof(struct ubsec_ctx_rngbypass)) ? (__uint16_t)(((__uint16_t)(sizeof(struct ubsec_ctx_rngbypass)) & 0xffU) << 8 | ((__uint16_t)(sizeof(struct ubsec_ctx_rngbypass)) & 0xff00U) >> 8) : __swap16md(sizeof(struct ubsec_ctx_rngbypass)));
 ctx->rbp_op = (__uint16_t)(__builtin_constant_p(0x42) ? (__uint16_t)(((__uint16_t)(0x42) & 0xffU) << 8 | ((__uint16_t)(0x42) & 0xff00U) >> 8) : __swap16md(0x42));
 rng->rng_q.q_type = 0x42;
 bus_dmamap_sync(sc->sc_dmat, rng->rng_buf.dma_map, 0,
     rng->rng_buf.dma_map->dm_mapsize, 0x01);
 if (sc->sc_flags & 0x80) {
  do { (&rng->rng_q)->q_next.sqe_next = ((void *)0); *(&sc->sc_queue4)->sqh_last = (&rng->rng_q); (&sc->sc_queue4)->sqh_last = &(&rng->rng_q)->q_next.sqe_next; } while (0);
  rng->rng_used = 1;
  ubsec_feed4(sc);
 } else {
  do { (&rng->rng_q)->q_next.sqe_next = ((void *)0); *(&sc->sc_queue2)->sqh_last = (&rng->rng_q); (&sc->sc_queue2)->sqh_last = &(&rng->rng_q)->q_next.sqe_next; } while (0);
  rng->rng_used = 1;
  ubsec_feed2(sc);
 }
 _splx(s);
 return;
out:
 (*nqueue)--;
 _splx(s);
 timeout_add(&sc->sc_rngto, sc->sc_rnghz);
}
int
ubsec_dma_malloc(struct ubsec_softc *sc, bus_size_t size,
    struct ubsec_dma_alloc *dma, int mapflags)
{
 int r;
 if ((r = bus_dmamem_alloc(sc->sc_dmat, size, (1 << 13), 0,
     &dma->dma_seg, 1, &dma->dma_nseg, 0x0001)) != 0)
  goto fail_0;
 if ((r = bus_dmamem_map(sc->sc_dmat, &dma->dma_seg, dma->dma_nseg,
     size, &dma->dma_vaddr, mapflags | 0x0001)) != 0)
  goto fail_1;
 if ((r = bus_dmamap_create(sc->sc_dmat, size, 1, size, 0,
     0x0001, &dma->dma_map)) != 0)
  goto fail_2;
 if ((r = bus_dmamap_load(sc->sc_dmat, dma->dma_map, dma->dma_vaddr,
     size, ((void *)0), 0x0001)) != 0)
  goto fail_3;
 dma->dma_paddr = dma->dma_map->dm_segs[0].ds_addr;
 dma->dma_size = size;
 return (0);
fail_3:
 bus_dmamap_destroy(sc->sc_dmat, dma->dma_map);
fail_2:
 bus_dmamem_unmap(sc->sc_dmat, dma->dma_vaddr, size);
fail_1:
 bus_dmamem_free(sc->sc_dmat, &dma->dma_seg, dma->dma_nseg);
fail_0:
 dma->dma_map = ((void *)0);
 return (r);
}
void
ubsec_dma_free(struct ubsec_softc *sc, struct ubsec_dma_alloc *dma)
{
 bus_dmamap_unload(sc->sc_dmat, dma->dma_map);
 bus_dmamem_unmap(sc->sc_dmat, dma->dma_vaddr, dma->dma_size);
 bus_dmamem_free(sc->sc_dmat, &dma->dma_seg, dma->dma_nseg);
 bus_dmamap_destroy(sc->sc_dmat, dma->dma_map);
}
void
ubsec_reset_board(struct ubsec_softc *sc)
{
 volatile u_int32_t ctrl;
 ctrl = bus_space_read_4((sc)->sc_st, (sc)->sc_sh, (0x0004));
 ctrl |= 0x80000000;
 bus_space_write_4((sc)->sc_st, (sc)->sc_sh, 0x0004, ctrl);
 delay(10);
 if (sc->sc_flags & 0x40) {
  bus_space_write_4((sc)->sc_st, (sc)->sc_sh, 0x0700, 0x00000001);
  bus_space_write_4((sc)->sc_st, (sc)->sc_sh, 0x0f00, 0x80000000);
 }
}
void
ubsec_init_board(struct ubsec_softc *sc)
{
 u_int32_t ctrl;
 ctrl = bus_space_read_4((sc)->sc_st, (sc)->sc_sh, (0x0004));
 ctrl &= ~(0x08000000 | 0x04000000);
 ctrl |= (0x08000000 | 0x04000000) | 0x20000000;
 if (sc->sc_flags & 0x01)
  ctrl |= 0x40000000;
 else
  ctrl &= ~0x40000000;
 if (sc->sc_flags & 0x08)
  ctrl &= ~0x00400000;
 if (sc->sc_flags & 0x40) {
  ctrl |= 0x000f0000;
  ctrl &= ~0x00400000;
  if (sc->sc_flags & 0x80)
   ctrl |= 0x00200000;
  else
   ctrl &= ~0x00200000;
 }
 bus_space_write_4((sc)->sc_st, (sc)->sc_sh, 0x0004, ctrl);
}
void
ubsec_init_pciregs(struct pci_attach_args *pa)
{
 pci_chipset_tag_t pc = pa->pa_pc;
 u_int32_t misc;
 misc = pci_conf_read(pc, pa->pa_tag, 0x0c);
 misc = (misc & ~(0xff << 0))
     | ((0x01 & 0xff) << 0);
 pci_conf_write(pc, pa->pa_tag, 0x0c, misc);
}
void
ubsec_cleanchip(struct ubsec_softc *sc)
{
 struct ubsec_q *q;
 while (!(((&sc->sc_qchip)->sqh_first) == ((void *)0))) {
  q = ((&sc->sc_qchip)->sqh_first);
  do { if (((&sc->sc_qchip)->sqh_first = (&sc->sc_qchip)->sqh_first->q_next.sqe_next) == ((void *)0)) (&sc->sc_qchip)->sqh_last = &(&sc->sc_qchip)->sqh_first; } while (0);
  ubsec_free_q(sc, q);
 }
}
int
ubsec_free_q(struct ubsec_softc *sc, struct ubsec_q *q)
{
 struct ubsec_q *q2;
 struct cryptop *crp;
 int npkts;
 int i;
 npkts = q->q_nstacked_mcrs;
 for (i = 0; i < npkts; i++) {
  if(q->q_stacked_mcr[i]) {
   q2 = q->q_stacked_mcr[i];
   if ((q2->q_dst_m != ((void *)0)) && (q2->q_src_m != q2->q_dst_m))
    m_freem(q2->q_dst_m);
   crp = (struct cryptop *)q2->q_crp;
   do { (q2)->q_next.sqe_next = ((void *)0); *(&sc->sc_freequeue)->sqh_last = (q2); (&sc->sc_freequeue)->sqh_last = &(q2)->q_next.sqe_next; } while (0);
   crp->crp_etype = 14;
   crypto_done(crp);
  } else {
   break;
  }
 }
 if ((q->q_dst_m != ((void *)0)) && (q->q_src_m != q->q_dst_m))
  m_freem(q->q_dst_m);
 crp = (struct cryptop *)q->q_crp;
 do { (q)->q_next.sqe_next = ((void *)0); *(&sc->sc_freequeue)->sqh_last = (q); (&sc->sc_freequeue)->sqh_last = &(q)->q_next.sqe_next; } while (0);
 crp->crp_etype = 14;
 crypto_done(crp);
 return(0);
}
void
ubsec_totalreset(struct ubsec_softc *sc)
{
 ubsec_reset_board(sc);
 ubsec_init_board(sc);
 ubsec_cleanchip(sc);
}
int
ubsec_dmamap_aligned(bus_dmamap_t map)
{
 int i;
 for (i = 0; i < map->dm_nsegs; i++) {
  if (map->dm_segs[i].ds_addr & 3)
   return (0);
  if ((i != (map->dm_nsegs - 1)) &&
      (map->dm_segs[i].ds_len & 3))
   return (0);
 }
 return (1);
}
