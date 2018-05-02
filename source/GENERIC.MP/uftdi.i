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
typedef u_int8_t uByte;
typedef u_int8_t uWord[2];
typedef u_int8_t uDWord[4];
struct usb_device_request {
 uByte bmRequestType;
 uByte bRequest;
 uWord wValue;
 uWord wIndex;
 uWord wLength;
} __attribute__((__packed__));
typedef struct usb_device_request usb_device_request_t;
struct usb_descriptor {
 uByte bLength;
 uByte bDescriptorType;
 uByte bDescriptorSubtype;
} __attribute__((__packed__));
typedef struct usb_descriptor usb_descriptor_t;
struct usb_device_descriptor {
 uByte bLength;
 uByte bDescriptorType;
 uWord bcdUSB;
 uByte bDeviceClass;
 uByte bDeviceSubClass;
 uByte bDeviceProtocol;
 uByte bMaxPacketSize;
 uWord idVendor;
 uWord idProduct;
 uWord bcdDevice;
 uByte iManufacturer;
 uByte iProduct;
 uByte iSerialNumber;
 uByte bNumConfigurations;
} __attribute__((__packed__));
typedef struct usb_device_descriptor usb_device_descriptor_t;
struct usb_config_descriptor {
 uByte bLength;
 uByte bDescriptorType;
 uWord wTotalLength;
 uByte bNumInterface;
 uByte bConfigurationValue;
 uByte iConfiguration;
 uByte bmAttributes;
 uByte bMaxPower;
} __attribute__((__packed__));
typedef struct usb_config_descriptor usb_config_descriptor_t;
struct usb_interface_descriptor {
 uByte bLength;
 uByte bDescriptorType;
 uByte bInterfaceNumber;
 uByte bAlternateSetting;
 uByte bNumEndpoints;
 uByte bInterfaceClass;
 uByte bInterfaceSubClass;
 uByte bInterfaceProtocol;
 uByte iInterface;
} __attribute__((__packed__));
typedef struct usb_interface_descriptor usb_interface_descriptor_t;
struct usb_interface_assoc_descriptor {
 uByte bLength;
 uByte bDescriptorType;
 uByte bFirstInterface;
 uByte bInterfaceCount;
 uByte bFunctionClass;
 uByte bFunctionSubClass;
 uByte bFunctionProtocol;
 uByte iFunction;
} __attribute__((__packed__));
typedef struct usb_interface_assoc_descriptor usb_interface_assoc_descriptor_t;
struct usb_endpoint_descriptor {
 uByte bLength;
 uByte bDescriptorType;
 uByte bEndpointAddress;
 uByte bmAttributes;
 uWord wMaxPacketSize;
 uByte bInterval;
} __attribute__((__packed__));
typedef struct usb_endpoint_descriptor usb_endpoint_descriptor_t;
struct usb_endpoint_ss_comp_descriptor {
 uByte bLength;
 uByte bDescriptorType;
 uByte bMaxBurst;
 uByte bmAttributes;
 uWord wBytesPerInterval;
} __attribute__((__packed__));
typedef struct usb_endpoint_ss_comp_descriptor
  usb_endpoint_ss_comp_descriptor_t;
struct usb_string_descriptor {
 uByte bLength;
 uByte bDescriptorType;
 uWord bString[126];
} __attribute__((__packed__));
typedef struct usb_string_descriptor usb_string_descriptor_t;
struct usb_hub_descriptor {
 uByte bDescLength;
 uByte bDescriptorType;
 uByte bNbrPorts;
 uWord wHubCharacteristics;
 uByte bPwrOn2PwrGood;
 uByte bHubContrCurrent;
 uByte DeviceRemovable[32];
} __attribute__((__packed__));
typedef struct usb_hub_descriptor usb_hub_descriptor_t;
struct usb_hub_ss_descriptor {
 uByte bDescLength;
 uByte bDescriptorType;
 uByte bNbrPorts;
 uWord wHubCharacteristics;
 uByte bPwrOn2PwrGood;
 uByte bHubContrCurrent;
 uByte bHubHdrDecLat;
 uWord wHubDelay;
 uByte DeviceRemovable[32];
} __attribute__((__packed__));
typedef struct usb_hub_ss_descriptor usb_hub_ss_descriptor_t;
struct usb_device_qualifier {
 uByte bLength;
 uByte bDescriptorType;
 uWord bcdUSB;
 uByte bDeviceClass;
 uByte bDeviceSubClass;
 uByte bDeviceProtocol;
 uByte bMaxPacketSize0;
 uByte bNumConfigurations;
 uByte bReserved;
} __attribute__((__packed__));
typedef struct usb_device_qualifier usb_device_qualifier_t;
struct usb_otg_descriptor {
 uByte bLength;
 uByte bDescriptorType;
 uByte bmAttributes;
} __attribute__((__packed__));
typedef struct usb_otg_descriptor usb_otg_descriptor_t;
struct usb_status {
 uWord wStatus;
} __attribute__((__packed__));
typedef struct usb_status usb_status_t;
struct usb_hub_status {
 uWord wHubStatus;
 uWord wHubChange;
} __attribute__((__packed__));
typedef struct usb_hub_status usb_hub_status_t;
struct usb_port_status {
 uWord wPortStatus;
 uWord wPortChange;
} __attribute__((__packed__));
typedef struct usb_port_status usb_port_status_t;
struct usb_ctl_request {
 int ucr_addr;
 usb_device_request_t ucr_request;
 void *ucr_data;
 int ucr_flags;
 int ucr_actlen;
};
struct usb_alt_interface {
 int uai_config_index;
 int uai_interface_index;
 int uai_alt_no;
};
struct usb_config_desc {
 int ucd_config_index;
 struct usb_config_descriptor ucd_desc;
};
struct usb_device_cdesc {
 u_int8_t udc_bus;
 u_int8_t udc_addr;
 int udc_config_index;
 struct usb_config_descriptor udc_desc;
};
struct usb_interface_desc {
 int uid_config_index;
 int uid_interface_index;
 int uid_alt_index;
 struct usb_interface_descriptor uid_desc;
};
struct usb_endpoint_desc {
 int ued_config_index;
 int ued_interface_index;
 int ued_alt_index;
 int ued_endpoint_index;
 struct usb_endpoint_descriptor ued_desc;
};
struct usb_full_desc {
 int ufd_config_index;
 u_int ufd_size;
 u_char *ufd_data;
};
struct usb_device_fdesc {
 u_int8_t udf_bus;
 u_int8_t udf_addr;
 int udf_config_index;
 u_int udf_size;
 u_char *udf_data;
};
struct usb_device_ddesc {
 u_int8_t udd_bus;
 u_int8_t udd_addr;
 struct usb_device_descriptor udd_desc;
};
struct usb_string_desc {
 int usd_string_index;
 int usd_language_id;
 struct usb_string_descriptor usd_desc;
};
struct usb_ctl_report_desc {
 int ucrd_size;
 u_char ucrd_data[1024];
};
struct usb_device_info {
 u_int8_t udi_bus;
 u_int8_t udi_addr;
 char udi_product[127];
 char udi_vendor[127];
 char udi_release[8];
 u_int16_t udi_productNo;
 u_int16_t udi_vendorNo;
 u_int16_t udi_releaseNo;
 u_int8_t udi_class;
 u_int8_t udi_subclass;
 u_int8_t udi_protocol;
 u_int8_t udi_config;
 u_int8_t udi_speed;
 int udi_power;
 int udi_nports;
 char udi_devnames[4][16];
 u_int8_t udi_ports[16];
 char udi_serial[127];
};
struct usb_ctl_report {
 int ucr_report;
 u_char ucr_data[1024];
};
struct usb_device_stats {
 u_long uds_requests[4];
};
struct usbd_bus;
struct usbd_device;
struct usbd_interface;
struct usbd_pipe;
struct usbd_xfer;
typedef enum {
 USBD_NORMAL_COMPLETION = 0,
 USBD_IN_PROGRESS,
 USBD_PENDING_REQUESTS,
 USBD_NOT_STARTED,
 USBD_INVAL,
 USBD_NOMEM,
 USBD_CANCELLED,
 USBD_BAD_ADDRESS,
 USBD_IN_USE,
 USBD_NO_ADDR,
 USBD_SET_ADDR_FAILED,
 USBD_NO_POWER,
 USBD_TOO_DEEP,
 USBD_IOERROR,
 USBD_NOT_CONFIGURED,
 USBD_TIMEOUT,
 USBD_SHORT_XFER,
 USBD_STALLED,
 USBD_INTERRUPTED,
 USBD_ERROR_MAX
} usbd_status;
typedef void (*usbd_callback)(struct usbd_xfer *, void *, usbd_status);
usbd_status usbd_open_pipe(struct usbd_interface *iface, u_int8_t address,
    u_int8_t flags, struct usbd_pipe **pipe);
usbd_status usbd_close_pipe(struct usbd_pipe *pipe);
usbd_status usbd_transfer(struct usbd_xfer *req);
struct usbd_xfer *usbd_alloc_xfer(struct usbd_device *);
void usbd_free_xfer(struct usbd_xfer *xfer);
void usbd_setup_xfer(struct usbd_xfer *xfer, struct usbd_pipe *pipe,
    void *priv, void *buffer, u_int32_t length, u_int16_t flags,
    u_int32_t timeout, usbd_callback);
void usbd_setup_default_xfer(struct usbd_xfer *xfer, struct usbd_device *dev,
    void *priv, u_int32_t timeout, usb_device_request_t *req,
    void *buffer, u_int32_t length, u_int16_t flags, usbd_callback);
void usbd_setup_isoc_xfer(struct usbd_xfer *xfer, struct usbd_pipe *pipe,
    void *priv, u_int16_t *frlengths, u_int32_t nframes,
    u_int16_t flags, usbd_callback);
void usbd_get_xfer_status(struct usbd_xfer *xfer, void **priv,
    void **buffer, u_int32_t *count, usbd_status *status);
usb_endpoint_descriptor_t *usbd_interface2endpoint_descriptor(
    struct usbd_interface *iface, u_int8_t address);
void usbd_abort_pipe(struct usbd_pipe *pipe);
usbd_status usbd_clear_endpoint_stall(struct usbd_pipe *pipe);
usbd_status usbd_clear_endpoint_stall_async(struct usbd_pipe *pipe);
void usbd_clear_endpoint_toggle(struct usbd_pipe *pipe);
usbd_status usbd_device2interface_handle(struct usbd_device *dev,
    u_int8_t ifaceno, struct usbd_interface **iface);
void *usbd_alloc_buffer(struct usbd_xfer *xfer, u_int32_t size);
void usbd_free_buffer(struct usbd_xfer *xfer);
usbd_status usbd_open_pipe_intr(struct usbd_interface *iface, u_int8_t address,
    u_int8_t flags, struct usbd_pipe **pipe, void *priv,
    void *buffer, u_int32_t length, usbd_callback, int);
usbd_status usbd_do_request(struct usbd_device *pipe, usb_device_request_t *req,
    void *data);
usbd_status usbd_request_async(struct usbd_xfer *xfer,
    usb_device_request_t *req, void *priv, usbd_callback callback);
usbd_status usbd_do_request_flags(struct usbd_device *pipe,
    usb_device_request_t *req, void *data, u_int16_t flags, int*, u_int32_t);
usb_interface_descriptor_t *usbd_get_interface_descriptor(
    struct usbd_interface *iface);
usb_config_descriptor_t *usbd_get_config_descriptor(struct usbd_device *dev);
usb_device_descriptor_t *usbd_get_device_descriptor(struct usbd_device *dev);
usbd_status usbd_set_interface(struct usbd_interface *, int);
int usbd_get_no_alts(usb_config_descriptor_t *, int);
void usbd_fill_deviceinfo(struct usbd_device *, struct usb_device_info *);
usb_config_descriptor_t *usbd_get_cdesc(struct usbd_device *, int, u_int *);
int usbd_get_interface_altindex(struct usbd_interface *iface);
usb_interface_descriptor_t *usbd_find_idesc(usb_config_descriptor_t *cd,
    int iindex, int ano);
usb_endpoint_descriptor_t *usbd_find_edesc(usb_config_descriptor_t *cd,
    int ifaceidx, int altidx, int endptidx);
void usbd_dopoll(struct usbd_device *);
void usbd_set_polling(struct usbd_device *iface, int on);
const char *usbd_errstr(usbd_status err);
const struct usbd_quirks *usbd_get_quirks(struct usbd_device *);
usb_endpoint_descriptor_t *usbd_get_endpoint_descriptor(
    struct usbd_interface *iface, u_int8_t address);
usbd_status usbd_reload_device_desc(struct usbd_device *);
int usbd_ratecheck(struct timeval *last);
int usbd_get_devcnt(struct usbd_device *);
void usbd_claim_iface(struct usbd_device *, int);
int usbd_iface_claimed(struct usbd_device *, int);
int usbd_is_dying(struct usbd_device *);
void usbd_deactivate(struct usbd_device *);
void usbd_ref_incr(struct usbd_device *);
void usbd_ref_decr(struct usbd_device *);
void usbd_ref_wait(struct usbd_device *);
struct usbd_desc_iter {
 const uByte *cur;
 const uByte *end;
};
void usbd_desc_iter_init(struct usbd_device *, struct usbd_desc_iter *);
const usb_descriptor_t *usbd_desc_iter_next(struct usbd_desc_iter *);
int usbd_str(usb_string_descriptor_t *, int, const char *);
struct usb_task {
 struct { struct usb_task *tqe_next; struct usb_task **tqe_prev; } next;
 struct usbd_device *dev;
 void (*fun)(void *);
 void *arg;
 char type;
 u_int state;
};
void usb_add_task(struct usbd_device *, struct usb_task *);
void usb_rem_task(struct usbd_device *, struct usb_task *);
void usb_wait_task(struct usbd_device *, struct usb_task *);
void usb_rem_wait_task(struct usbd_device *, struct usb_task *);
struct usb_devno {
 u_int16_t ud_vendor;
 u_int16_t ud_product;
};
const struct usb_devno *usbd_match_device(const struct usb_devno *tbl,
    u_int nentries, u_int sz, u_int16_t vendor, u_int16_t product);
struct usb_attach_arg {
 int port;
 int configno;
 int ifaceno;
 int vendor;
 int product;
 int release;
 struct usbd_device *device;
 struct usbd_interface *iface;
 int usegeneric;
 struct usbd_interface **ifaces;
 int nifaces;
};
usbd_status usbd_get_desc(struct usbd_device *dev, int type,
      int index, int len, void *desc);
usbd_status usbd_get_port_status(struct usbd_device *,
      int, usb_port_status_t *);
usbd_status usbd_set_hub_depth(struct usbd_device *, int);
usbd_status usbd_set_hub_feature(struct usbd_device *dev, int);
usbd_status usbd_clear_hub_feature(struct usbd_device *, int);
usbd_status usbd_set_port_feature(struct usbd_device *dev, int, int);
usbd_status usbd_clear_port_feature(struct usbd_device *, int, int);
usbd_status usbd_get_device_status(struct usbd_device *, usb_status_t *);
usbd_status usbd_get_hub_status(struct usbd_device *, usb_hub_status_t *);
usbd_status usbd_get_hub_descriptor(struct usbd_device *,
      usb_hub_descriptor_t *, uint8_t);
usbd_status usbd_get_hub_ss_descriptor(struct usbd_device *,
      usb_hub_ss_descriptor_t *, uint8_t);
struct usb_hid_descriptor *usbd_get_hid_descriptor(struct usbd_device *,
     usb_interface_descriptor_t *);
usbd_status usbd_set_idle(struct usbd_device *, int, int, int);
usbd_status usbd_get_report_descriptor(struct usbd_device *, int, void *,
      int);
usbd_status usbd_get_config(struct usbd_device *dev, u_int8_t *conf);
usbd_status usbd_get_string_desc(struct usbd_device *dev, int sindex,
      int langid,usb_string_descriptor_t *sdesc, int *sizep);
void usbd_delay_ms(struct usbd_device *, u_int);
usbd_status usbd_set_config_no(struct usbd_device *dev, int no, int msg);
usbd_status usbd_set_config_index(struct usbd_device *dev, int index,
      int msg);
void usb_detach_wait(struct device *);
void usb_detach_wakeup(struct device *);
struct ucom_softc;
struct ucom_methods {
 void (*ucom_get_status)(void *sc, int portno, u_char *lsr, u_char *msr);
 void (*ucom_set)(void *sc, int portno, int reg64, int onoff);
 int (*ucom_param)(void *sc, int portno, struct termios *);
 int (*ucom_ioctl)(void *sc, int portno, u_long cmd,
     caddr_t data, int flag, struct proc *p);
 int (*ucom_open)(void *sc, int portno);
 void (*ucom_close)(void *sc, int portno);
 void (*ucom_read)(void *sc, int portno, u_char **ptr, u_int32_t *count);
 void (*ucom_write)(void *sc, int portno, u_char *to, u_char *from,
      u_int32_t *count);
};
struct ucom_attach_args {
 int portno;
 int bulkin;
 int bulkout;
 struct uhidev_softc *uhidev;
 u_int ibufsize;
 u_int ibufsizepad;
 u_int obufsize;
 u_int opkthdrlen;
 const char *info;
 struct usbd_device *device;
 struct usbd_interface *iface;
 struct ucom_methods *methods;
 void *arg;
};
int ucomsubmatch(struct device *, void *, void *);
int ucomprint(void *aux, const char *pnp);
void ucom_status_change(struct ucom_softc *);
enum uftdi_type {
 UFTDI_TYPE_SIO,
 UFTDI_TYPE_8U232AM,
 UFTDI_TYPE_2232H
};
enum {
 ftdi_sio_b300 = 0,
 ftdi_sio_b600 = 1,
 ftdi_sio_b1200 = 2,
 ftdi_sio_b2400 = 3,
 ftdi_sio_b4800 = 4,
 ftdi_sio_b9600 = 5,
 ftdi_sio_b19200 = 6,
 ftdi_sio_b38400 = 7,
 ftdi_sio_b57600 = 8,
 ftdi_sio_b115200 = 9
};
struct uftdi_softc {
 struct device sc_dev;
 struct usbd_device *sc_udev;
 struct usbd_interface *sc_iface;
 enum uftdi_type sc_type;
 u_int sc_hdrlen;
 u_char sc_msr;
 u_char sc_lsr;
 struct device *sc_subdev;
 u_int last_lcr;
};
void uftdi_get_status(void *, int portno, u_char *lsr, u_char *msr);
void uftdi_set(void *, int, int, int);
int uftdi_param(void *, int, struct termios *);
int uftdi_open(void *sc, int portno);
void uftdi_read(void *sc, int portno, u_char **ptr,
      u_int32_t *count);
void uftdi_write(void *sc, int portno, u_char *to, u_char *from,
       u_int32_t *count);
void uftdi_break(void *sc, int portno, int onoff);
int uftdi_8u232am_getrate(speed_t speed, int *rate);
int uftdi_2232h_getrate(speed_t speed, int *rate);
struct ucom_methods uftdi_methods = {
 uftdi_get_status,
 uftdi_set,
 uftdi_param,
 ((void *)0),
 uftdi_open,
 ((void *)0),
 uftdi_read,
 uftdi_write,
};
int uftdi_match(struct device *, void *, void *);
void uftdi_attach(struct device *, struct device *, void *);
int uftdi_detach(struct device *, int);
struct cfdriver uftdi_cd = {
 ((void *)0), "uftdi", DV_DULL
};
const struct cfattach uftdi_ca = {
 sizeof(struct uftdi_softc), uftdi_match, uftdi_attach, uftdi_detach
};
static const struct usb_devno uftdi_devs[] = {
 { 0x1bc9, 0x6001 },
 { 0x0456, 0xf000 },
 { 0x0456, 0xf001 },
 { 0x03eb, 0x2109 },
 { 0x1a79, 0x6001 },
 { 0x0856, 0xac27 },
 { 0x0856, 0xac25 },
 { 0x0856, 0xac26 },
 { 0x0856, 0xac33 },
 { 0x0856, 0xac34 },
 { 0x0856, 0xac50 },
 { 0x0856, 0xac49 },
 { 0x0856, 0xac03 },
 { 0x0856, 0xac17 },
 { 0x0856, 0xac16 },
 { 0x0856, 0xac11 },
 { 0x0856, 0xac19 },
 { 0x0856, 0xac18 },
 { 0x0856, 0xac01 },
 { 0x0856, 0xac12 },
 { 0x0856, 0xac02 },
 { 0x0856, 0xba02 },
 { 0x1cf1, 0x0001 },
 { 0x1cf1, 0x0004 },
 { 0x0c7d, 0x0005 },
 { 0xdeee, 0x0300 },
 { 0xdeee, 0x0302 },
 { 0xdeee, 0x0303 },
 { 0x0f94, 0x0005 },
 { 0x0f94, 0x0001 },
 { 0x0403, 0xfad0 },
 { 0x0403, 0xdd20 },
 { 0x0403, 0xe548 },
 { 0x0403, 0xf2d0 },
 { 0x0403, 0xff00 },
 { 0x0403, 0xdf28 },
 { 0x0403, 0xc990 },
 { 0x0403, 0xc991 },
 { 0x0403, 0xc992 },
 { 0x0403, 0xc993 },
 { 0x0403, 0xc994 },
 { 0x0403, 0xc995 },
 { 0x0403, 0xc996 },
 { 0x0403, 0xc997 },
 { 0x0403, 0xdf30 },
 { 0x0403, 0xdf32 },
 { 0x0403, 0xdf31 },
 { 0x0403, 0xdf33 },
 { 0x0403, 0xdf35 },
 { 0x0403, 0xfb99 },
 { 0x0403, 0x9f80 },
 { 0x0403, 0xffa8 },
 { 0x0403, 0xf9d0 },
 { 0x0403, 0xf9d1 },
 { 0x0403, 0xf9d4 },
 { 0x0403, 0xf9d3 },
 { 0x0403, 0xf9d2 },
 { 0x0403, 0xf9d5 },
 { 0x0403, 0xcaa0 },
 { 0x0403, 0xf448 },
 { 0x0403, 0xef50 },
 { 0x0403, 0xc850 },
 { 0x0403, 0xef51 },
 { 0x0403, 0xea90 },
 { 0x0403, 0xe520 },
 { 0x0403, 0xe888 },
 { 0x0403, 0xf06e },
 { 0x0403, 0xfb59 },
 { 0x0403, 0xe0f0 },
 { 0x0403, 0xe0f1 },
 { 0x0403, 0xe0ef },
 { 0x0403, 0xe00a },
 { 0x0403, 0xf06f },
 { 0x0403, 0xe0e8 },
 { 0x0403, 0xe0ed },
 { 0x0403, 0xe0f4 },
 { 0x0403, 0xe0ea },
 { 0x0403, 0xe002 },
 { 0x0403, 0xe001 },
 { 0x0403, 0xf06c },
 { 0x0403, 0xe0f2 },
 { 0x0403, 0xfb5c },
 { 0x0403, 0xe0f3 },
 { 0x0403, 0xf06b },
 { 0x0403, 0xe0ec },
 { 0x0403, 0xfb5d },
 { 0x0403, 0xe009 },
 { 0x0403, 0xf069 },
 { 0x0403, 0xf068 },
 { 0x0403, 0xfb5e },
 { 0x0403, 0xfb5f },
 { 0x0403, 0xf06d },
 { 0x0403, 0xfb5a },
 { 0x0403, 0xe0eb },
 { 0x0403, 0xfb5b },
 { 0x0403, 0xfb58 },
 { 0x0403, 0xf06a },
 { 0x0403, 0xe000 },
 { 0x0403, 0xe0f5 },
 { 0x0403, 0xe0f6 },
 { 0x0403, 0xe0f7 },
 { 0x0403, 0xe0e9 },
 { 0x0403, 0xe004 },
 { 0x0403, 0xe0ee },
 { 0x0403, 0xe008 },
 { 0x0403, 0xe40b },
 { 0x0403, 0xfbfa },
 { 0x0403, 0x0232 },
 { 0x0403, 0x6006 },
 { 0x0403, 0x6007 },
 { 0x0403, 0x6008 },
 { 0x0403, 0x6009 },
 { 0x0403, 0x6011 },
 { 0x0403, 0x6015 },
 { 0x0403, 0xd678 },
 { 0x0403, 0xe808 },
 { 0x0403, 0xe809 },
 { 0x0403, 0xe80a },
 { 0x0403, 0xe80b },
 { 0x0403, 0xe80c },
 { 0x0403, 0xe80d },
 { 0x0403, 0xe80e },
 { 0x0403, 0xe80f },
 { 0x0403, 0xe88d },
 { 0x0403, 0xe88e },
 { 0x0403, 0xe88f },
 { 0x0403, 0xed74 },
 { 0x0403, 0xed71 },
 { 0x0403, 0xff3f },
 { 0x0403, 0xff3d },
 { 0x0403, 0xff3a },
 { 0x0403, 0xff3e },
 { 0x0403, 0xff39 },
 { 0x0403, 0xff3b },
 { 0x0403, 0xff3c },
 { 0x0403, 0xff38 },
 { 0x0403, 0xd070 },
 { 0x0403, 0xd071 },
 { 0x0403, 0xd738 },
 { 0x0403, 0xfc0a },
 { 0x0403, 0xfc0c },
 { 0x0403, 0xfc08 },
 { 0x0403, 0xfc0b },
 { 0x0403, 0xfc09 },
 { 0x0403, 0xfc0d },
 { 0x0403, 0xfc0e },
 { 0x0403, 0xfc0f },
 { 0x0403, 0xfa03 },
 { 0x0403, 0xfa04 },
 { 0x0403, 0xfa02 },
 { 0x0403, 0xfa01 },
 { 0x0403, 0xf44a },
 { 0x0403, 0xf44b },
 { 0x0403, 0xf44c },
 { 0x0403, 0xf449 },
 { 0x0403, 0xbcd8 },
 { 0x0403, 0xbcd9 },
 { 0x0403, 0xc7d0 },
 { 0x0403, 0xfa05 },
 { 0x0403, 0xfa06 },
 { 0x0403, 0xeeed },
 { 0x0403, 0xeeec },
 { 0x0403, 0xeee8 },
 { 0x0403, 0xeeee },
 { 0x0403, 0xeeea },
 { 0x0403, 0xeeeb },
 { 0x0403, 0xeeef },
 { 0x0403, 0xeee9 },
 { 0x0403, 0xca81 },
 { 0x0403, 0x9379 },
 { 0x0403, 0xabb8 },
 { 0x0403, 0xf460 },
 { 0x0403, 0xbaf8 },
 { 0x0403, 0xbfd8 },
 { 0x0403, 0xbfdb },
 { 0x0403, 0xbfd9 },
 { 0x0403, 0xbfda },
 { 0x0403, 0xcc48 },
 { 0x0403, 0xcc49 },
 { 0x0403, 0xcc4a },
 { 0x0403, 0x9e90 },
 { 0x0403, 0xfa88 },
 { 0x0403, 0xf208 },
 { 0x0403, 0xfc70 },
 { 0x0403, 0xfc72 },
 { 0x0403, 0xfc73 },
 { 0x0403, 0xfc71 },
 { 0x0403, 0xe6c8 },
 { 0x0403, 0xfb80 },
 { 0x0403, 0xfa10 },
 { 0x0403, 0xed22 },
 { 0x0403, 0xd010 },
 { 0x0403, 0xd011 },
 { 0x0403, 0xd012 },
 { 0x0403, 0xd013 },
 { 0x0403, 0xd014 },
 { 0x0403, 0xd015 },
 { 0x0403, 0xd016 },
 { 0x0403, 0xd017 },
 { 0x0403, 0xfc82 },
 { 0x0403, 0x6010 },
 { 0x0403, 0xcff8 },
 { 0x0403, 0xee18 },
 { 0x0403, 0x8372 },
 { 0x0403, 0x6001 },
 { 0x0403, 0x6004 },
 { 0x0403, 0xf0c8 },
 { 0x0403, 0xf680 },
 { 0x0403, 0xec89 },
 { 0x0403, 0xec88 },
 { 0x0403, 0xfaf0 },
 { 0x0403, 0xfa78 },
 { 0x0403, 0xebe0 },
 { 0x0403, 0xbdc8 },
 { 0x0403, 0xe700 },
 { 0x0403, 0xe889 },
 { 0x0403, 0xfa00 },
 { 0x0403, 0xf850 },
 { 0x0403, 0xf857 },
 { 0x0403, 0xfe38 },
 { 0x0403, 0xdc00 },
 { 0x0403, 0xdc01 },
 { 0x0403, 0xd388 },
 { 0x0403, 0xd389 },
 { 0x0403, 0xd38a },
 { 0x0403, 0xd38b },
 { 0x0403, 0xd38c },
 { 0x0403, 0xd38d },
 { 0x0403, 0xd38e },
 { 0x0403, 0xd38f },
 { 0x0403, 0xe050 },
 { 0x0c33, 0x0010 },
 { 0x0c26, 0x0004 },
 { 0x0c26, 0x0013 },
 { 0x0c26, 0x0012 },
 { 0x0c26, 0x0009 },
 { 0x0c26, 0x000a },
 { 0x0c26, 0x000b },
 { 0x0c26, 0x000d },
 { 0x0c26, 0x000c },
 { 0x0c26, 0x0011 },
 { 0x0c26, 0x0010 },
 { 0x0acd, 0x0300 },
 { 0x1209, 0x1002 },
 { 0x1209, 0x1003 },
 { 0x1209, 0x1006 },
 { 0x093c, 0x0701 },
 { 0x093c, 0x0601 },
 { 0x04bb, 0x093c },
 { 0x0c6c, 0x04b2 },
 { 0x0d46, 0x2020 },
 { 0x0d46, 0x2021 },
 { 0x0fd8, 0x0001 },
 { 0x9e88, 0x9e8f },
 { 0x1b3d, 0x0100 },
 { 0x1b3d, 0x0101 },
 { 0x1b3d, 0x0102 },
 { 0x1b3d, 0x0103 },
 { 0x1b3d, 0x0104 },
 { 0x1b3d, 0x0105 },
 { 0x1b3d, 0x0106 },
 { 0x1b3d, 0x0107 },
 { 0x1b3d, 0x0108 },
 { 0x1b3d, 0x0109 },
 { 0x1b3d, 0x010a },
 { 0x1b3d, 0x010b },
 { 0x1b3d, 0x010c },
 { 0x1b3d, 0x010d },
 { 0x1b3d, 0x010e },
 { 0x1b3d, 0x010f },
 { 0x1b3d, 0x0110 },
 { 0x1b3d, 0x0111 },
 { 0x1b3d, 0x0112 },
 { 0x1b3d, 0x0113 },
 { 0x1b3d, 0x0114 },
 { 0x1b3d, 0x0115 },
 { 0x1b3d, 0x0116 },
 { 0x1b3d, 0x0117 },
 { 0x1b3d, 0x0118 },
 { 0x1b3d, 0x0119 },
 { 0x1b3d, 0x011a },
 { 0x1b3d, 0x011b },
 { 0x1b3d, 0x011c },
 { 0x1b3d, 0x011d },
 { 0x1b3d, 0x011e },
 { 0x1b3d, 0x011f },
 { 0x1b3d, 0x0120 },
 { 0x1b3d, 0x0121 },
 { 0x1b3d, 0x0122 },
 { 0x1b3d, 0x0123 },
 { 0x1b3d, 0x0124 },
 { 0x1b3d, 0x0125 },
 { 0x1b3d, 0x0126 },
 { 0x1b3d, 0x0127 },
 { 0x1b3d, 0x0128 },
 { 0x1b3d, 0x0129 },
 { 0x1b3d, 0x012a },
 { 0x1b3d, 0x012b },
 { 0x1b3d, 0x012c },
 { 0x1b3d, 0x012d },
 { 0x1b3d, 0x012e },
 { 0x1b3d, 0x012f },
 { 0x1b3d, 0x0130 },
 { 0x1b3d, 0x0131 },
 { 0x1b3d, 0x0132 },
 { 0x1b3d, 0x0133 },
 { 0x1b3d, 0x0134 },
 { 0x1b3d, 0x0135 },
 { 0x1b3d, 0x0136 },
 { 0x1b3d, 0x0137 },
 { 0x1b3d, 0x0138 },
 { 0x1b3d, 0x0139 },
 { 0x1b3d, 0x013a },
 { 0x1b3d, 0x013b },
 { 0x1b3d, 0x013c },
 { 0x1b3d, 0x013d },
 { 0x1b3d, 0x013e },
 { 0x1b3d, 0x013f },
 { 0x1b3d, 0x0140 },
 { 0x1b3d, 0x0141 },
 { 0x1b3d, 0x0142 },
 { 0x1b3d, 0x0143 },
 { 0x1b3d, 0x0144 },
 { 0x1b3d, 0x0145 },
 { 0x1b3d, 0x0146 },
 { 0x1b3d, 0x0147 },
 { 0x1b3d, 0x0148 },
 { 0x1b3d, 0x0149 },
 { 0x1b3d, 0x014a },
 { 0x1b3d, 0x014b },
 { 0x1b3d, 0x014c },
 { 0x1b3d, 0x014d },
 { 0x1b3d, 0x014e },
 { 0x1b3d, 0x014f },
 { 0x1b3d, 0x0150 },
 { 0x1b3d, 0x0151 },
 { 0x1b3d, 0x0152 },
 { 0x1b3d, 0x0153 },
 { 0x1b3d, 0x0154 },
 { 0x1b3d, 0x0155 },
 { 0x1b3d, 0x0156 },
 { 0x1b3d, 0x0157 },
 { 0x1b3d, 0x0158 },
 { 0x1b3d, 0x0159 },
 { 0x1b3d, 0x015a },
 { 0x1b3d, 0x015b },
 { 0x1b3d, 0x015c },
 { 0x1b3d, 0x015d },
 { 0x1b3d, 0x015e },
 { 0x1b3d, 0x015f },
 { 0x1b3d, 0x0160 },
 { 0x1b3d, 0x0161 },
 { 0x1b3d, 0x0162 },
 { 0x1b3d, 0x0163 },
 { 0x1b3d, 0x0164 },
 { 0x1b3d, 0x0165 },
 { 0x1b3d, 0x0166 },
 { 0x1b3d, 0x0167 },
 { 0x1b3d, 0x0168 },
 { 0x1b3d, 0x0169 },
 { 0x1b3d, 0x016a },
 { 0x1b3d, 0x016b },
 { 0x1b3d, 0x016c },
 { 0x1b3d, 0x016d },
 { 0x1b3d, 0x016e },
 { 0x1b3d, 0x016f },
 { 0x1b3d, 0x0170 },
 { 0x1b3d, 0x0171 },
 { 0x1b3d, 0x0172 },
 { 0x1b3d, 0x0173 },
 { 0x1b3d, 0x0174 },
 { 0x1b3d, 0x0175 },
 { 0x1b3d, 0x0176 },
 { 0x1b3d, 0x0177 },
 { 0x1b3d, 0x0178 },
 { 0x1b3d, 0x0179 },
 { 0x1b3d, 0x017a },
 { 0x1b3d, 0x017b },
 { 0x1b3d, 0x017c },
 { 0x1b3d, 0x017d },
 { 0x1b3d, 0x017e },
 { 0x1b3d, 0x017f },
 { 0x1b3d, 0x0180 },
 { 0x1b3d, 0x0181 },
 { 0x1b3d, 0x0182 },
 { 0x1b3d, 0x0183 },
 { 0x1b3d, 0x0184 },
 { 0x1b3d, 0x0185 },
 { 0x1b3d, 0x0186 },
 { 0x1b3d, 0x0187 },
 { 0x1b3d, 0x0188 },
 { 0x1b3d, 0x0189 },
 { 0x1b3d, 0x018a },
 { 0x1b3d, 0x018b },
 { 0x1b3d, 0x018c },
 { 0x1b3d, 0x018d },
 { 0x1b3d, 0x018e },
 { 0x1b3d, 0x018f },
 { 0x1b3d, 0x0190 },
 { 0x1b3d, 0x0191 },
 { 0x1b3d, 0x0192 },
 { 0x1b3d, 0x0193 },
 { 0x1b3d, 0x0194 },
 { 0x1b3d, 0x0195 },
 { 0x1b3d, 0x0196 },
 { 0x1b3d, 0x0197 },
 { 0x1b3d, 0x0198 },
 { 0x1b3d, 0x0199 },
 { 0x1b3d, 0x019a },
 { 0x1b3d, 0x019b },
 { 0x1b3d, 0x019c },
 { 0x1b3d, 0x019d },
 { 0x1b3d, 0x019e },
 { 0x1b3d, 0x019f },
 { 0x1b3d, 0x01a0 },
 { 0x1b3d, 0x01a1 },
 { 0x1b3d, 0x01a2 },
 { 0x1b3d, 0x01a3 },
 { 0x1b3d, 0x01a4 },
 { 0x1b3d, 0x01a5 },
 { 0x1b3d, 0x01a6 },
 { 0x1b3d, 0x01a7 },
 { 0x1b3d, 0x01a8 },
 { 0x1b3d, 0x01a9 },
 { 0x1b3d, 0x01aa },
 { 0x1b3d, 0x01ab },
 { 0x1b3d, 0x01ac },
 { 0x1b3d, 0x01ad },
 { 0x1b3d, 0x01ae },
 { 0x1b3d, 0x01af },
 { 0x1b3d, 0x01b0 },
 { 0x1b3d, 0x01b1 },
 { 0x1b3d, 0x01b2 },
 { 0x1b3d, 0x01b3 },
 { 0x1b3d, 0x01b4 },
 { 0x1b3d, 0x01b5 },
 { 0x1b3d, 0x01b6 },
 { 0x1b3d, 0x01b7 },
 { 0x1b3d, 0x01b8 },
 { 0x1b3d, 0x01b9 },
 { 0x1b3d, 0x01ba },
 { 0x1b3d, 0x01bb },
 { 0x1b3d, 0x01bc },
 { 0x1b3d, 0x01bd },
 { 0x1b3d, 0x01be },
 { 0x1b3d, 0x01bf },
 { 0x1b3d, 0x01c0 },
 { 0x1b3d, 0x01c1 },
 { 0x1b3d, 0x01c2 },
 { 0x1b3d, 0x01c3 },
 { 0x1b3d, 0x01c4 },
 { 0x1b3d, 0x01c5 },
 { 0x1b3d, 0x01c6 },
 { 0x1b3d, 0x01c7 },
 { 0x1b3d, 0x01c8 },
 { 0x1b3d, 0x01c9 },
 { 0x1b3d, 0x01ca },
 { 0x1b3d, 0x01cb },
 { 0x1b3d, 0x01cc },
 { 0x1b3d, 0x01cd },
 { 0x1b3d, 0x01ce },
 { 0x1b3d, 0x01cf },
 { 0x1b3d, 0x01d0 },
 { 0x1b3d, 0x01d1 },
 { 0x1b3d, 0x01d2 },
 { 0x1b3d, 0x01d3 },
 { 0x1b3d, 0x01d4 },
 { 0x1b3d, 0x01d5 },
 { 0x1b3d, 0x01d6 },
 { 0x1b3d, 0x01d7 },
 { 0x1b3d, 0x01d8 },
 { 0x1b3d, 0x01d9 },
 { 0x1b3d, 0x01da },
 { 0x1b3d, 0x01db },
 { 0x1b3d, 0x01dc },
 { 0x1b3d, 0x01dd },
 { 0x1b3d, 0x01de },
 { 0x1b3d, 0x01df },
 { 0x1b3d, 0x01e0 },
 { 0x1b3d, 0x01e1 },
 { 0x1b3d, 0x01e2 },
 { 0x1b3d, 0x01e3 },
 { 0x1b3d, 0x01e4 },
 { 0x1b3d, 0x01e5 },
 { 0x1b3d, 0x01e6 },
 { 0x1b3d, 0x01e7 },
 { 0x1b3d, 0x01e8 },
 { 0x1b3d, 0x01e9 },
 { 0x1b3d, 0x01ea },
 { 0x1b3d, 0x01eb },
 { 0x1b3d, 0x01ec },
 { 0x1b3d, 0x01ed },
 { 0x1b3d, 0x01ee },
 { 0x1b3d, 0x01ef },
 { 0x1b3d, 0x01f0 },
 { 0x1b3d, 0x01f1 },
 { 0x1b3d, 0x01f2 },
 { 0x1b3d, 0x01f3 },
 { 0x1b3d, 0x01f4 },
 { 0x1b3d, 0x01f5 },
 { 0x1b3d, 0x01f6 },
 { 0x1b3d, 0x01f7 },
 { 0x1b3d, 0x01f8 },
 { 0x1b3d, 0x01f9 },
 { 0x1b3d, 0x01fa },
 { 0x1b3d, 0x01fb },
 { 0x1b3d, 0x01fc },
 { 0x1b3d, 0x01fd },
 { 0x1b3d, 0x01fe },
 { 0x1b3d, 0x01ff },
 { 0x1781, 0x0c30 },
 { 0x0411, 0x00b3 },
 { 0x1342, 0x0202 },
 { 0x0b39, 0x0421 },
 { 0x5050, 0x8003 },
 { 0x5050, 0x0101 },
 { 0x5050, 0x0104 },
 { 0x5050, 0x0700 },
 { 0x5050, 0x1000 },
 { 0x5050, 0x8005 },
 { 0x5050, 0x8004 },
 { 0x5050, 0x0500 },
 { 0x5050, 0x0300 },
 { 0x5050, 0x8001 },
 { 0x5050, 0x0B00 },
 { 0x5050, 0x0E00 },
 { 0x5050, 0x0A00 },
 { 0x5050, 0x0C00 },
 { 0x5050, 0x0F00 },
 { 0x5050, 0x0900 },
 { 0x5050, 0x0D00 },
 { 0x5050, 0x0800 },
 { 0x5050, 0x0301 },
 { 0x5050, 0x0102 },
 { 0x5050, 0x0105 },
 { 0x5050, 0x0107 },
 { 0x5050, 0x0106 },
 { 0x5050, 0x0100 },
 { 0x5050, 0x0103 },
 { 0x5050, 0x0200 },
 { 0x5050, 0x8002 },
 { 0x5050, 0x8000 },
 { 0x5050, 0x0400 },
 { 0x0d3a, 0x0300 },
 { 0x0d3a, 0x0400 },
 { 0x0584, 0xb020 },
 { 0x2100, 0x9e52 },
 { 0x0ba0, 0x800d },
 { 0x0c52, 0x2101 },
 { 0x0c52, 0x2102 },
 { 0x0c52, 0x2103 },
 { 0x0c52, 0x2104 },
 { 0x0c52, 0x9020 },
 { 0x0c52, 0x2211 },
 { 0x0c52, 0x2221 },
 { 0x0c52, 0x2212 },
 { 0x0c52, 0x2222 },
 { 0x0c52, 0x2213 },
 { 0x0c52, 0x2223 },
 { 0x0c52, 0x2411 },
 { 0x0c52, 0x2421 },
 { 0x0c52, 0x2431 },
 { 0x0c52, 0x2441 },
 { 0x0c52, 0x2412 },
 { 0x0c52, 0x2422 },
 { 0x0c52, 0x2432 },
 { 0x0c52, 0x2442 },
 { 0x0c52, 0x2413 },
 { 0x0c52, 0x2423 },
 { 0x0c52, 0x2433 },
 { 0x0c52, 0x2443 },
 { 0x0c52, 0X2811 },
 { 0x0c52, 0X2821 },
 { 0x0c52, 0X2831 },
 { 0x0c52, 0X2841 },
 { 0x0c52, 0X2851 },
 { 0x0c52, 0X2861 },
 { 0x0c52, 0X2871 },
 { 0x0c52, 0X2881 },
 { 0x0c52, 0X2812 },
 { 0x0c52, 0X2822 },
 { 0x0c52, 0X2832 },
 { 0x0c52, 0X2842 },
 { 0x0c52, 0X2852 },
 { 0x0c52, 0X2862 },
 { 0x0c52, 0X2872 },
 { 0x0c52, 0X2882 },
 { 0x0c52, 0X2813 },
 { 0x0c52, 0X2823 },
 { 0x0c52, 0X2833 },
 { 0x0c52, 0X2843 },
 { 0x0c52, 0X2853 },
 { 0x0c52, 0X2863 },
 { 0x0c52, 0X2873 },
 { 0x0c52, 0X2883 },
 { 0x0742, 0x4001 },
 { 0x128d, 0x0007 },
 { 0x128d, 0x0001 },
 { 0x128d, 0x0002 },
 { 0x128d, 0x0003 },
 { 0x128d, 0x0009 },
 { 0x128d, 0x0006 },
 { 0x128d, 0x0004 },
 { 0x128d, 0x000a },
 { 0x128d, 0xf001 },
 { 0x128d, 0x0005 },
 { 0x103e, 0x03e8 },
 { 0x1b91, 0x0064 },
 { 0x0dcd, 0x0001 }
};
int
uftdi_match(struct device *parent, void *match, void *aux)
{
 struct usb_attach_arg *uaa = aux;
 if (uaa->iface == ((void *)0) || uaa->configno != 1)
  return (0);
 if (usbd_match_device((const struct usb_devno *)(uftdi_devs), sizeof (uftdi_devs) / sizeof ((uftdi_devs)[0]), sizeof ((uftdi_devs)[0]), (uaa->vendor), (uaa->product)) == ((void *)0))
  return (0);
 if (uaa->vendor == 0x0403 &&
     uaa->product == 0x9e90 &&
     uaa->ifaceno == 0)
  return (0);
 return (8);
}
void
uftdi_attach(struct device *parent, struct device *self, void *aux)
{
 struct uftdi_softc *sc = (struct uftdi_softc *)self;
 struct usb_attach_arg *uaa = aux;
 usb_interface_descriptor_t *id;
 usb_endpoint_descriptor_t *ed;
 char *devname = sc->sc_dev.dv_xname;
 struct ucom_attach_args uca;
 int i;
 sc->sc_udev = uaa->device;
 sc->sc_iface = uaa->iface;
 if (uaa->release < 0x0200) {
  sc->sc_type = UFTDI_TYPE_SIO;
  sc->sc_hdrlen = 1;
 } else if (uaa->release == 0x0700 || uaa->release == 0x0800) {
  sc->sc_type = UFTDI_TYPE_2232H;
  sc->sc_hdrlen = 0;
 } else {
  sc->sc_type = UFTDI_TYPE_8U232AM;
  sc->sc_hdrlen = 0;
 }
 uca.bulkin = uca.bulkout = -1;
 id = usbd_get_interface_descriptor(sc->sc_iface);
 for (i = 0; i < id->bNumEndpoints; i++) {
  int addr, dir, attr;
  ed = usbd_interface2endpoint_descriptor(sc->sc_iface, i);
  if (ed == ((void *)0)) {
   printf("%s: could not read endpoint descriptor\n",
       devname);
   goto bad;
  }
  addr = ed->bEndpointAddress;
  dir = ((ed->bEndpointAddress) & 0x80);
  attr = ed->bmAttributes & 0x03;
  if (dir == 0x80 && attr == 0x02) {
   uca.bulkin = addr;
   uca.ibufsize = (((ed->wMaxPacketSize)[0] | ((ed->wMaxPacketSize)[1] << 8)) > 0) ?
       ((ed->wMaxPacketSize)[0] | ((ed->wMaxPacketSize)[1] << 8)) : 64;
  } else if (dir == 0x00 && attr == 0x02) {
   uca.bulkout = addr;
   uca.obufsize = (((ed->wMaxPacketSize)[0] | ((ed->wMaxPacketSize)[1] << 8)) > 0) ?
       ((ed->wMaxPacketSize)[0] | ((ed->wMaxPacketSize)[1] << 8)) : 64;
   uca.obufsize-= sc->sc_hdrlen;
  } else {
   printf("%s: unexpected endpoint\n", devname);
   goto bad;
  }
 }
 if (uca.bulkin == -1) {
  printf("%s: Could not find data bulk in\n",
         sc->sc_dev.dv_xname);
  goto bad;
 }
 if (uca.bulkout == -1) {
  printf("%s: Could not find data bulk out\n",
         sc->sc_dev.dv_xname);
  goto bad;
 }
 if (uaa->iface == ((void *)0))
  uca.portno = 1;
 else
  uca.portno = 1 + id->bInterfaceNumber;
 uca.ibufsizepad = uca.ibufsize;
 uca.opkthdrlen = sc->sc_hdrlen;
 uca.device = sc->sc_udev;
 uca.iface = sc->sc_iface;
 uca.methods = &uftdi_methods;
 uca.arg = sc;
 uca.info = ((void *)0);
 ;
 sc->sc_subdev = config_found_sm(self, &uca, ucomprint, ucomsubmatch);
 return;
bad:
 ;
 usbd_deactivate(sc->sc_udev);
}
int
uftdi_detach(struct device *self, int flags)
{
 struct uftdi_softc *sc = (struct uftdi_softc *)self;
 ;
 if (sc->sc_subdev != ((void *)0)) {
  config_detach(sc->sc_subdev, flags);
  sc->sc_subdev = ((void *)0);
 }
 return (0);
}
int
uftdi_open(void *vsc, int portno)
{
 struct uftdi_softc *sc = vsc;
 usb_device_request_t req;
 usbd_status err;
 struct termios t;
 ;
 if (usbd_is_dying(sc->sc_udev))
  return (5);
 req.bmRequestType = (0x00 | 0x40 | 0x00);
 req.bRequest = 0;
 ((req.wValue)[0] = (u_int8_t)(0), (req.wValue)[1] = (u_int8_t)((0) >> 8));
 ((req.wIndex)[0] = (u_int8_t)(portno), (req.wIndex)[1] = (u_int8_t)((portno) >> 8));
 ((req.wLength)[0] = (u_int8_t)(0), (req.wLength)[1] = (u_int8_t)((0) >> 8));
 err = usbd_do_request(sc->sc_udev, &req, ((void *)0));
 if (err)
  return (5);
 t.c_ospeed = 9600;
 t.c_cflag = 0x00000400 | 0x00000300;
 (void)uftdi_param(sc, portno, &t);
 req.bmRequestType = (0x00 | 0x40 | 0x00);
 req.bRequest = 2;
 ((req.wValue)[0] = (u_int8_t)(0), (req.wValue)[1] = (u_int8_t)((0) >> 8));
 ((req.wIndex)[0] = (u_int8_t)(portno), (req.wIndex)[1] = (u_int8_t)(0x1));
 ((req.wLength)[0] = (u_int8_t)(0), (req.wLength)[1] = (u_int8_t)((0) >> 8));
 err = usbd_do_request(sc->sc_udev, &req, ((void *)0));
 if (err)
  return (5);
 return (0);
}
void
uftdi_read(void *vsc, int portno, u_char **ptr, u_int32_t *count)
{
 struct uftdi_softc *sc = vsc;
 u_char msr, lsr;
 ;
 msr = (((*ptr)[0]) & 0xf0);
 lsr = ((*ptr)[1]);
 if (sc->sc_msr != msr ||
     (sc->sc_lsr & (~0x60)) != (lsr & (~0x60))) {
  ;
  sc->sc_msr = msr;
  sc->sc_lsr = lsr;
  ucom_status_change((struct ucom_softc *)sc->sc_subdev);
 }
 *ptr += 2;
 *count -= 2;
}
void
uftdi_write(void *vsc, int portno, u_char *to, u_char *from, u_int32_t *count)
{
 struct uftdi_softc *sc = vsc;
 ;
 if (sc->sc_hdrlen > 0)
  *to = (((*count) << 2) | (portno));
 __builtin_memcpy((to + sc->sc_hdrlen), (from), (*count));
 *count += sc->sc_hdrlen;
}
void
uftdi_set(void *vsc, int portno, int reg64, int onoff)
{
 struct uftdi_softc *sc = vsc;
 usb_device_request_t req;
 int ctl;
 ;
 switch (reg64) {
 case 1:
  ctl = onoff ? (1 | ( 0x1 << 8)) : (0 | ( 0x1 << 8));
  break;
 case 2:
  ctl = onoff ? (2 | ( 0x2 << 8)) : (0 | ( 0x2 << 8));
  break;
 case 3:
  uftdi_break(sc, portno, onoff);
  return;
 default:
  return;
 }
 req.bmRequestType = (0x00 | 0x40 | 0x00);
 req.bRequest = 1;
 ((req.wValue)[0] = (u_int8_t)(ctl), (req.wValue)[1] = (u_int8_t)((ctl) >> 8));
 ((req.wIndex)[0] = (u_int8_t)(portno), (req.wIndex)[1] = (u_int8_t)((portno) >> 8));
 ((req.wLength)[0] = (u_int8_t)(0), (req.wLength)[1] = (u_int8_t)((0) >> 8));
 ;
 (void)usbd_do_request(sc->sc_udev, &req, ((void *)0));
}
int
uftdi_param(void *vsc, int portno, struct termios *t)
{
 struct uftdi_softc *sc = vsc;
 usb_device_request_t req;
 usbd_status err;
 int rate, data, flow;
 ;
 if (usbd_is_dying(sc->sc_udev))
  return (5);
 switch (sc->sc_type) {
 case UFTDI_TYPE_SIO:
  switch (t->c_ospeed) {
  case 300: rate = ftdi_sio_b300; break;
  case 600: rate = ftdi_sio_b600; break;
  case 1200: rate = ftdi_sio_b1200; break;
  case 2400: rate = ftdi_sio_b2400; break;
  case 4800: rate = ftdi_sio_b4800; break;
  case 9600: rate = ftdi_sio_b9600; break;
  case 19200: rate = ftdi_sio_b19200; break;
  case 38400: rate = ftdi_sio_b38400; break;
  case 57600: rate = ftdi_sio_b57600; break;
  case 115200: rate = ftdi_sio_b115200; break;
  default:
   return (22);
  }
  break;
 case UFTDI_TYPE_8U232AM:
  if (uftdi_8u232am_getrate(t->c_ospeed, &rate) == -1)
   return (22);
  break;
 case UFTDI_TYPE_2232H:
  if (uftdi_2232h_getrate(t->c_ospeed, &rate) == -1)
    return (22);
  break;
 }
 req.bmRequestType = (0x00 | 0x40 | 0x00);
 req.bRequest = 3;
 ((req.wValue)[0] = (u_int8_t)(rate), (req.wValue)[1] = (u_int8_t)((rate) >> 8));
 ((req.wIndex)[0] = (u_int8_t)(((rate >> 8) & 0xFF00) | portno), (req.wIndex)[1] = (u_int8_t)((((rate >> 8) & 0xFF00) | portno) >> 8));
 ((req.wLength)[0] = (u_int8_t)(0), (req.wLength)[1] = (u_int8_t)((0) >> 8));
 ;
 err = usbd_do_request(sc->sc_udev, &req, ((void *)0));
 if (err)
  return (5);
 if (((t->c_cflag) & (0x00000400)))
  data = (0x2 << 11);
 else
  data = (0x0 << 11);
 if (((t->c_cflag) & (0x00001000))) {
  if (((t->c_cflag) & (0x00002000)))
   data |= (0x1 << 8);
  else
   data |= (0x2 << 8);
 } else
  data |= (0x0 << 8);
 switch (((t->c_cflag) & (0x00000300))) {
 case 0x00000000:
  data |= (5);
  break;
 case 0x00000100:
  data |= (6);
  break;
 case 0x00000200:
  data |= (7);
  break;
 case 0x00000300:
  data |= (8);
  break;
 }
 sc->last_lcr = data;
 req.bmRequestType = (0x00 | 0x40 | 0x00);
 req.bRequest = 4;
 ((req.wValue)[0] = (u_int8_t)(data), (req.wValue)[1] = (u_int8_t)((data) >> 8));
 ((req.wIndex)[0] = (u_int8_t)(portno), (req.wIndex)[1] = (u_int8_t)((portno) >> 8));
 ((req.wLength)[0] = (u_int8_t)(0), (req.wLength)[1] = (u_int8_t)((0) >> 8));
 ;
 err = usbd_do_request(sc->sc_udev, &req, ((void *)0));
 if (err)
  return (5);
 if (((t->c_cflag) & (0x00010000))) {
  flow = 0x1;
  ((req.wValue)[0] = (u_int8_t)(0), (req.wValue)[1] = (u_int8_t)((0) >> 8));
 } else if (((t->c_iflag) & (0x00000200|0x00000400))) {
  flow = 0x4;
  ((req.wValue)[0] = (u_int8_t)(t->c_cc[12]), (req.wValue)[1] = (u_int8_t)(t->c_cc[13]));
 } else {
  flow = 0x0;
  ((req.wValue)[0] = (u_int8_t)(0), (req.wValue)[1] = (u_int8_t)((0) >> 8));
 }
 req.bmRequestType = (0x00 | 0x40 | 0x00);
 req.bRequest = 2;
 ((req.wIndex)[0] = (u_int8_t)(portno), (req.wIndex)[1] = (u_int8_t)(flow));
 ((req.wLength)[0] = (u_int8_t)(0), (req.wLength)[1] = (u_int8_t)((0) >> 8));
 err = usbd_do_request(sc->sc_udev, &req, ((void *)0));
 if (err)
  return (5);
 return (0);
}
void
uftdi_get_status(void *vsc, int portno, u_char *lsr, u_char *msr)
{
 struct uftdi_softc *sc = vsc;
 ;
 if (msr != ((void *)0))
  *msr = sc->sc_msr;
 if (lsr != ((void *)0))
  *lsr = sc->sc_lsr;
}
void
uftdi_break(void *vsc, int portno, int onoff)
{
 struct uftdi_softc *sc = vsc;
 usb_device_request_t req;
 int data;
 ;
 if (onoff) {
  data = sc->last_lcr | (0x1 << 14);
 } else {
  data = sc->last_lcr;
 }
 req.bmRequestType = (0x00 | 0x40 | 0x00);
 req.bRequest = 4;
 ((req.wValue)[0] = (u_int8_t)(data), (req.wValue)[1] = (u_int8_t)((data) >> 8));
 ((req.wIndex)[0] = (u_int8_t)(portno), (req.wIndex)[1] = (u_int8_t)((portno) >> 8));
 ((req.wLength)[0] = (u_int8_t)(0), (req.wLength)[1] = (u_int8_t)((0) >> 8));
 (void)usbd_do_request(sc->sc_udev, &req, ((void *)0));
}
int
uftdi_8u232am_getrate(speed_t speed, int *rate)
{
 static const unsigned char roundoff[16] = {
  0, 2, 2, 4, 4, 4, 8, 8,
  8, 8, 8, 8, 16, 16, 16, 16,
 };
 unsigned int d, freq;
 int result;
 if (speed <= 0)
  return (-1);
 if (speed >= 3000000 * 100 / 103 &&
     speed <= 3000000 * 100 / 97) {
  result = 0;
  goto done;
 }
 if (speed >= 2000000 * 100 / 103 &&
     speed <= 2000000 * 100 / 97) {
  result = 1;
  goto done;
 }
 d = (3000000 << 4) / speed;
 d = (d & ~15) + roundoff[d & 15];
 if (d < 0x20)
  d = 0x20;
 else if (d > 0x3fff8)
  d = 0x3fff8;
 freq = speed * d;
 if (freq < (quad_t)(3000000 << 4) * 100 / 103 ||
     freq > (quad_t)(3000000 << 4) * 100 / 97)
  return (-1);
 result = d >> 4;
 if (d & 8)
  result |= 0x4000;
 else if (d & 4)
  result |= 0x8000;
 else if (d & 2)
  result |= 0xc000;
done:
 *rate = result;
 return (0);
}
int
uftdi_2232h_getrate(speed_t speed, int *rate)
{
 char sub[8] = {0, 3, 2, 4, 1, 5, 6, 7};
 int n = (12000000 << 3) / speed;
 int s = n & 7;
 int result = (n >> 3) | (sub[s] << 14);
 int resultspeed, accuracy;
 if (result == 1)
  result = 0;
 else if (result == 0x4001)
  result = 1;
 if (result == 0)
  goto done;
 resultspeed = (12000000 << 3) /
     (((result & 0x00003FFF) << 3) | s);
 accuracy = (abs(speed - resultspeed) * 100) / speed;
 if (accuracy > 3)
  return -1;
done:
 result|= 0x00020000;
 *rate = result;
 return 0;
}
