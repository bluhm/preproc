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
struct mutex {
 volatile void *mtx_owner;
 int mtx_wantipl;
 int mtx_oldipl;
};
void __mtx_init(struct mutex *, int);
void __mtx_enter(struct mutex *);
int __mtx_enter_try(struct mutex *);
void __mtx_leave(struct mutex *);
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
struct usb_dma_block;
struct usb_dma {
 struct usb_dma_block *block;
 u_int offs;
};
struct usbd_xfer;
struct usbd_pipe;
struct usbd_endpoint {
 usb_endpoint_descriptor_t *edesc;
 int refcnt;
 int savedtoggle;
};
struct usbd_bus_methods {
 usbd_status (*open_pipe)(struct usbd_pipe *);
 int (*dev_setaddr)(struct usbd_device *, int);
 void (*soft_intr)(void *);
 void (*do_poll)(struct usbd_bus *);
 struct usbd_xfer * (*allocx)(struct usbd_bus *);
 void (*freex)(struct usbd_bus *, struct usbd_xfer *);
};
struct usbd_pipe_methods {
 usbd_status (*transfer)(struct usbd_xfer *);
 usbd_status (*start)(struct usbd_xfer *);
 void (*abort)(struct usbd_xfer *);
 void (*close)(struct usbd_pipe *);
 void (*cleartoggle)(struct usbd_pipe *);
 void (*done)(struct usbd_xfer *);
};
struct usbd_tt {
 struct usbd_hub *hub;
};
struct usbd_port {
 usb_port_status_t status;
 u_int16_t power;
 u_int8_t portno;
 u_int8_t restartcnt;
 u_int8_t reattach;
 struct usbd_device *device;
 struct usbd_device *parent;
 struct usbd_tt *tt;
};
struct usbd_hub {
 int (*explore)(struct usbd_device *);
 void *hubsoftc;
 struct usbd_port *ports;
 int nports;
 u_int8_t powerdelay;
 u_int8_t ttthink;
};
struct usbd_bus {
 struct device bdev;
 struct usbd_bus_methods *methods;
 void *bpfif;
 caddr_t bpf;
 u_int32_t pipe_size;
 struct usbd_device *root_hub;
 struct usbd_device *devices[128];
 char use_polling;
 char dying;
 int flags;
 struct device *usbctl;
 struct usb_device_stats stats;
 int intr_context;
 u_int no_intrs;
 int usbrev;
 void *soft;
 bus_dma_tag_t dmatag;
};
struct usbd_device {
 struct usbd_bus *bus;
 struct usbd_pipe *default_pipe;
 u_int8_t dying;
 u_int8_t ref_cnt;
 u_int8_t address;
 u_int8_t config;
 u_int8_t depth;
 u_int8_t speed;
 u_int8_t self_powered;
 u_int16_t power;
 int16_t langid;
 struct usbd_port *powersrc;
 struct usbd_device *myhub;
 struct usbd_port *myhsport;
 struct usbd_endpoint def_ep;
 usb_endpoint_descriptor_t def_ep_desc;
 struct usbd_interface *ifaces;
 usb_device_descriptor_t ddesc;
 usb_config_descriptor_t *cdesc;
 const struct usbd_quirks *quirks;
 struct usbd_hub *hub;
 struct device **subdevs;
 int ndevs;
 char *serial;
 char *vendor;
 char *product;
};
struct usbd_interface {
 struct usbd_device *device;
 usb_interface_descriptor_t *idesc;
 int index;
 int altindex;
 struct usbd_endpoint *endpoints;
 void *priv;
 struct { struct usbd_pipe *lh_first; } pipes;
 u_int8_t claimed;
};
struct usbd_pipe {
 struct usbd_interface *iface;
 struct usbd_device *device;
 struct usbd_endpoint *endpoint;
 size_t pipe_size;
 char running;
 char aborting;
 struct { struct usbd_xfer *sqh_first; struct usbd_xfer **sqh_last; } queue;
 struct { struct usbd_pipe *le_next; struct usbd_pipe **le_prev; } next;
 struct usbd_xfer *intrxfer;
 char repeat;
 int interval;
 struct usbd_pipe_methods *methods;
};
struct usbd_xfer {
 struct usbd_pipe *pipe;
 void *priv;
 char *buffer;
 u_int32_t length;
 u_int32_t actlen;
 u_int16_t flags;
 u_int32_t timeout;
 usbd_status status;
 usbd_callback callback;
 volatile char done;
 u_int32_t busy_free;
 usb_device_request_t request;
 u_int16_t *frlengths;
 int nframes;
 struct usbd_device *device;
 struct usb_dma dmabuf;
 int rqflags;
 struct { struct usbd_xfer *sqe_next; } next;
 void *hcpriv;
 struct usb_task abort_task;
 struct timeout timeout_handle;
};
void usbd_dump_iface(struct usbd_interface *);
void usbd_dump_device(struct usbd_device *);
void usbd_dump_endpoint(struct usbd_endpoint *);
void usbd_dump_queue(struct usbd_pipe *);
void usbd_dump_pipe(struct usbd_pipe *);
int usbctlprint(void *, const char *);
void usb_delay_ms(struct usbd_bus *, u_int);
usbd_status usbd_port_disown_to_1_1(struct usbd_device *, int);
int usbd_reset_port(struct usbd_device *, int);
usbd_status usbd_setup_pipe(struct usbd_device *,
      struct usbd_interface *, struct usbd_endpoint *, int,
      struct usbd_pipe **);
int usbd_set_address(struct usbd_device *, int);
usbd_status usbd_new_device(struct device *, struct usbd_bus *,
      int, int, int, struct usbd_port *);
usbd_status usbd_fill_iface_data(struct usbd_device *, int, int);
usbd_status usb_insert_transfer(struct usbd_xfer *);
void usb_transfer_complete(struct usbd_xfer *);
int usbd_detach(struct usbd_device *, struct device *);
void usb_needs_explore(struct usbd_device *, int);
void usb_needs_reattach(struct usbd_device *);
void usb_schedsoftintr(struct usbd_bus *);
void usb_tap(struct usbd_bus *, struct usbd_xfer *, uint8_t);
static inline int
usbd_xfer_isread(struct usbd_xfer *xfer)
{
 if (xfer->rqflags & 0x01)
  return (xfer->request.bmRequestType & 0x80);
 return (xfer->pipe->endpoint->edesc->bEndpointAddress & 0x80);
}
struct usb_frag_dma;
struct usb_dma_block {
 bus_dma_tag_t tag;
 bus_dmamap_t map;
        caddr_t kaddr;
        bus_dma_segment_t segs[1];
        int nsegs;
        size_t size;
        size_t align;
 struct usb_frag_dma *frags;
 struct { struct usb_dma_block *le_next; struct usb_dma_block **le_prev; } next;
};
usbd_status usb_allocmem(struct usbd_bus *,size_t,size_t, struct usb_dma *);
void usb_freemem(struct usbd_bus *, struct usb_dma *);
void usb_syncmem(struct usb_dma *, bus_addr_t, bus_size_t, int);
typedef u_int32_t uhci_physaddr_t;
struct uhci_td {
 uhci_physaddr_t td_link;
 u_int32_t td_status;
 u_int32_t td_token;
 u_int32_t td_buffer;
};
struct uhci_qh {
 uhci_physaddr_t qh_hlink;
 uhci_physaddr_t qh_elink;
};
struct uhci_soft_qh;
struct uhci_soft_td;
typedef union {
 struct uhci_soft_qh *sqh;
 struct uhci_soft_td *std;
} uhci_soft_td_qh_t;
struct uhci_xfer {
 struct usbd_xfer xfer;
 struct { struct uhci_xfer *le_next; struct uhci_xfer **le_prev; } inext;
 struct uhci_soft_td *stdstart;
 struct uhci_soft_td *stdend;
 int curframe;
 int isdone;
};
struct uhci_soft_td {
 struct uhci_td td;
 uhci_soft_td_qh_t link;
 uhci_physaddr_t physaddr;
};
struct uhci_soft_qh {
 struct uhci_qh qh;
 struct uhci_soft_qh *hlink;
 struct uhci_soft_td *elink;
 uhci_physaddr_t physaddr;
 int pos;
};
struct uhci_vframe {
 struct uhci_soft_td *htd;
 struct uhci_soft_td *etd;
 struct uhci_soft_qh *hqh;
 struct uhci_soft_qh *eqh;
 u_int bandwidth;
};
struct uhci_softc {
 struct usbd_bus sc_bus;
 bus_space_tag_t iot;
 bus_space_handle_t ioh;
 bus_size_t sc_size;
 uhci_physaddr_t *sc_pframes;
 struct usb_dma sc_dma;
 struct uhci_vframe sc_vframes[128];
 struct uhci_soft_qh *sc_lctl_start;
 struct uhci_soft_qh *sc_lctl_end;
 struct uhci_soft_qh *sc_hctl_start;
 struct uhci_soft_qh *sc_hctl_end;
 struct uhci_soft_qh *sc_bulk_start;
 struct uhci_soft_qh *sc_bulk_end;
 struct uhci_soft_qh *sc_last_qh;
 u_int32_t sc_loops;
 struct uhci_soft_td *sc_freetds;
 struct uhci_soft_qh *sc_freeqhs;
 u_int8_t sc_conf;
 u_int8_t sc_saved_sof;
 u_int16_t sc_saved_frnum;
 char sc_softwake;
 char sc_isreset;
 char sc_suspend;
 struct { struct uhci_xfer *lh_first; } sc_intrhead;
 struct usbd_xfer *sc_intrxfer;
 struct timeout sc_root_intr;
 char sc_vendor[32];
 int sc_id_vendor;
};
usbd_status uhci_init(struct uhci_softc *);
usbd_status uhci_run(struct uhci_softc *, int run);
int uhci_intr(void *);
int uhci_detach(struct device *, int);
int uhci_activate(struct device *, int);
struct cfdriver uhci_cd = {
 ((void *)0), "uhci", DV_DULL
};
struct pool *uhcixfer;
struct uhci_pipe {
 struct usbd_pipe pipe;
 int nexttoggle;
 union {
  struct {
   struct uhci_soft_qh *sqh;
   struct usb_dma reqdma;
   struct uhci_soft_td *setup, *stat;
   u_int length;
  } ctl;
  struct {
   int npoll;
   int isread;
   struct uhci_soft_qh **qhs;
  } intr;
  struct {
   struct uhci_soft_qh *sqh;
   u_int length;
   int isread;
  } bulk;
  struct iso {
   struct uhci_soft_td **stds;
   int next, inuse;
  } iso;
 } u;
};
void uhci_globalreset(struct uhci_softc *);
usbd_status uhci_portreset(struct uhci_softc *, int);
void uhci_reset(struct uhci_softc *);
usbd_status uhci_run(struct uhci_softc *, int run);
struct uhci_soft_td *uhci_alloc_std(struct uhci_softc *);
void uhci_free_std(struct uhci_softc *, struct uhci_soft_td *);
struct uhci_soft_qh *uhci_alloc_sqh(struct uhci_softc *);
void uhci_free_sqh(struct uhci_softc *, struct uhci_soft_qh *);
void uhci_free_std_chain(struct uhci_softc *,
      struct uhci_soft_td *, struct uhci_soft_td *);
usbd_status uhci_alloc_std_chain(struct uhci_softc *, u_int,
      struct usbd_xfer *, struct uhci_soft_td **,
      struct uhci_soft_td **);
void uhci_poll_hub(void *);
void uhci_check_intr(struct uhci_softc *, struct usbd_xfer *);
void uhci_idone(struct usbd_xfer *);
void uhci_abort_xfer(struct usbd_xfer *, usbd_status status);
void uhci_timeout(void *);
void uhci_timeout_task(void *);
void uhci_add_ls_ctrl(struct uhci_softc *, struct uhci_soft_qh *);
void uhci_add_hs_ctrl(struct uhci_softc *, struct uhci_soft_qh *);
void uhci_add_bulk(struct uhci_softc *, struct uhci_soft_qh *);
void uhci_remove_ls_ctrl(struct uhci_softc *, struct uhci_soft_qh *);
void uhci_remove_hs_ctrl(struct uhci_softc *, struct uhci_soft_qh *);
void uhci_remove_bulk(struct uhci_softc *,struct uhci_soft_qh *);
void uhci_add_loop(struct uhci_softc *sc);
void uhci_rem_loop(struct uhci_softc *sc);
usbd_status uhci_setup_isoc(struct usbd_pipe *pipe);
void uhci_device_isoc_enter(struct usbd_xfer *);
struct usbd_xfer *uhci_allocx(struct usbd_bus *);
void uhci_freex(struct usbd_bus *, struct usbd_xfer *);
usbd_status uhci_device_ctrl_transfer(struct usbd_xfer *);
usbd_status uhci_device_ctrl_start(struct usbd_xfer *);
void uhci_device_ctrl_abort(struct usbd_xfer *);
void uhci_device_ctrl_close(struct usbd_pipe *);
void uhci_device_ctrl_done(struct usbd_xfer *);
usbd_status uhci_device_intr_transfer(struct usbd_xfer *);
usbd_status uhci_device_intr_start(struct usbd_xfer *);
void uhci_device_intr_abort(struct usbd_xfer *);
void uhci_device_intr_close(struct usbd_pipe *);
void uhci_device_intr_done(struct usbd_xfer *);
usbd_status uhci_device_bulk_transfer(struct usbd_xfer *);
usbd_status uhci_device_bulk_start(struct usbd_xfer *);
void uhci_device_bulk_abort(struct usbd_xfer *);
void uhci_device_bulk_close(struct usbd_pipe *);
void uhci_device_bulk_done(struct usbd_xfer *);
usbd_status uhci_device_isoc_transfer(struct usbd_xfer *);
usbd_status uhci_device_isoc_start(struct usbd_xfer *);
void uhci_device_isoc_abort(struct usbd_xfer *);
void uhci_device_isoc_close(struct usbd_pipe *);
void uhci_device_isoc_done(struct usbd_xfer *);
usbd_status uhci_root_ctrl_transfer(struct usbd_xfer *);
usbd_status uhci_root_ctrl_start(struct usbd_xfer *);
void uhci_root_ctrl_abort(struct usbd_xfer *);
void uhci_root_ctrl_close(struct usbd_pipe *);
void uhci_root_ctrl_done(struct usbd_xfer *);
usbd_status uhci_root_intr_transfer(struct usbd_xfer *);
usbd_status uhci_root_intr_start(struct usbd_xfer *);
void uhci_root_intr_abort(struct usbd_xfer *);
void uhci_root_intr_close(struct usbd_pipe *);
void uhci_root_intr_done(struct usbd_xfer *);
usbd_status uhci_open(struct usbd_pipe *);
void uhci_poll(struct usbd_bus *);
void uhci_softintr(void *);
usbd_status uhci_device_request(struct usbd_xfer *xfer);
void uhci_add_intr(struct uhci_softc *, struct uhci_soft_qh *);
void uhci_remove_intr(struct uhci_softc *, struct uhci_soft_qh *);
usbd_status uhci_device_setintr(struct uhci_softc *sc,
      struct uhci_pipe *pipe, int ival);
void uhci_device_clear_toggle(struct usbd_pipe *pipe);
__inline__ struct uhci_soft_qh *uhci_find_prev_qh(struct uhci_soft_qh *,
      struct uhci_soft_qh *);
__attribute__((__unused__)) static __inline u_int8_t
UREAD1(struct uhci_softc *sc, bus_size_t r)
{
 bus_space_barrier((sc)->iot, (sc)->ioh, 0, (sc)->sc_size, 0x01|0x02);
 return bus_space_read_1(sc->iot, sc->ioh, r);
}
__attribute__((__unused__)) static __inline u_int16_t
UREAD2(struct uhci_softc *sc, bus_size_t r)
{
 bus_space_barrier((sc)->iot, (sc)->ioh, 0, (sc)->sc_size, 0x01|0x02);
 return bus_space_read_2(sc->iot, sc->ioh, r);
}
__attribute__((__unused__)) static __inline u_int32_t
UREAD4(struct uhci_softc *sc, bus_size_t r)
{
 bus_space_barrier((sc)->iot, (sc)->ioh, 0, (sc)->sc_size, 0x01|0x02);
 return bus_space_read_4(sc->iot, sc->ioh, r);
}
struct usbd_bus_methods uhci_bus_methods = {
 .open_pipe = uhci_open,
 .dev_setaddr = usbd_set_address,
 .soft_intr = uhci_softintr,
 .do_poll = uhci_poll,
 .allocx = uhci_allocx,
 .freex = uhci_freex,
};
struct usbd_pipe_methods uhci_root_ctrl_methods = {
 .transfer = uhci_root_ctrl_transfer,
 .start = uhci_root_ctrl_start,
 .abort = uhci_root_ctrl_abort,
 .close = uhci_root_ctrl_close,
 .done = uhci_root_ctrl_done,
};
struct usbd_pipe_methods uhci_root_intr_methods = {
 .transfer = uhci_root_intr_transfer,
 .start = uhci_root_intr_start,
 .abort = uhci_root_intr_abort,
 .close = uhci_root_intr_close,
 .done = uhci_root_intr_done,
};
struct usbd_pipe_methods uhci_device_ctrl_methods = {
 .transfer = uhci_device_ctrl_transfer,
 .start = uhci_device_ctrl_start,
 .abort = uhci_device_ctrl_abort,
 .close = uhci_device_ctrl_close,
 .done = uhci_device_ctrl_done,
};
struct usbd_pipe_methods uhci_device_intr_methods = {
 .transfer = uhci_device_intr_transfer,
 .start = uhci_device_intr_start,
 .abort = uhci_device_intr_abort,
 .close = uhci_device_intr_close,
 .cleartoggle = uhci_device_clear_toggle,
 .done = uhci_device_intr_done,
};
struct usbd_pipe_methods uhci_device_bulk_methods = {
 .transfer = uhci_device_bulk_transfer,
 .start = uhci_device_bulk_start,
 .abort = uhci_device_bulk_abort,
 .close = uhci_device_bulk_close,
 .cleartoggle = uhci_device_clear_toggle,
 .done = uhci_device_bulk_done,
};
struct usbd_pipe_methods uhci_device_isoc_methods = {
 .transfer = uhci_device_isoc_transfer,
 .start = uhci_device_isoc_start,
 .abort = uhci_device_isoc_abort,
 .close = uhci_device_isoc_close,
 .done = uhci_device_isoc_done,
};
__inline__ struct uhci_soft_qh *
uhci_find_prev_qh(struct uhci_soft_qh *pqh, struct uhci_soft_qh *sqh)
{
 ;
 for (; pqh->hlink != sqh; pqh = pqh->hlink) {
  if ((__uint32_t)(__builtin_constant_p(pqh->qh.qh_hlink) ? (__uint32_t)(((__uint32_t)(pqh->qh.qh_hlink) & 0xff) << 24 | ((__uint32_t)(pqh->qh.qh_hlink) & 0xff00) << 8 | ((__uint32_t)(pqh->qh.qh_hlink) & 0xff0000) >> 8 | ((__uint32_t)(pqh->qh.qh_hlink) & 0xff000000) >> 24) : __swap32md(pqh->qh.qh_hlink)) & 0x00000001) {
   printf("uhci_find_prev_qh: QH not found\n");
   return (((void *)0));
  }
 }
 return (pqh);
}
void
uhci_globalreset(struct uhci_softc *sc)
{
 do { bus_space_barrier((sc)->iot, (sc)->ioh, 0, (sc)->sc_size, 0x01|0x02); bus_space_write_2((sc)->iot, (sc)->ioh, (0x00), (0x0004)); } while ( 0);
 usb_delay_ms(&sc->sc_bus, 100);
 do { bus_space_barrier((sc)->iot, (sc)->ioh, 0, (sc)->sc_size, 0x01|0x02); bus_space_write_2((sc)->iot, (sc)->ioh, (0x00), (0)); } while ( 0);
}
usbd_status
uhci_init(struct uhci_softc *sc)
{
 usbd_status err;
 int i, j;
 struct uhci_soft_qh *clsqh, *chsqh, *bsqh, *sqh, *lsqh;
 struct uhci_soft_td *std;
 ;
 sc->sc_saved_sof = UREAD1(sc, 0x0c);
 do { bus_space_barrier((sc)->iot, (sc)->ioh, 0, (sc)->sc_size, 0x01|0x02); bus_space_write_2((sc)->iot, (sc)->ioh, (0x04), (0)); } while ( 0);
 uhci_globalreset(sc);
 uhci_reset(sc);
 if (uhcixfer == ((void *)0)) {
  uhcixfer = malloc(sizeof(struct pool), 2, 0x0002);
  if (uhcixfer == ((void *)0)) {
   printf("%s: unable to allocate pool descriptor\n",
       sc->sc_bus.bdev.dv_xname);
   return (12);
  }
  pool_init(uhcixfer, sizeof(struct uhci_xfer), 0, 2,
      0, "uhcixfer", ((void *)0));
 }
 do { bus_space_barrier((sc)->iot, (sc)->ioh, 0, (sc)->sc_size, 0x01|0x02); bus_space_write_1((sc)->iot, (sc)->ioh, (0x0c), (sc->sc_saved_sof)); } while ( 0);
 err = usb_allocmem(&sc->sc_bus,
    1024 * sizeof(uhci_physaddr_t),
    4096, &sc->sc_dma);
 if (err)
  return (err);
 sc->sc_pframes = ((void *)((char *)((&sc->sc_dma)->block->kaddr + (&sc->sc_dma)->offs) + (0)));
 do { bus_space_barrier((sc)->iot, (sc)->ioh, 0, (sc)->sc_size, 0x01|0x02); bus_space_write_2((sc)->iot, (sc)->ioh, (0x06), (0)); } while ( 0);
 do { bus_space_barrier((sc)->iot, (sc)->ioh, 0, (sc)->sc_size, 0x01|0x02); bus_space_write_4((sc)->iot, (sc)->ioh, (0x08), (((&sc->sc_dma)->block->map->dm_segs[0].ds_addr + (&sc->sc_dma)->offs + (0)))); } while ( 0);
 std = uhci_alloc_std(sc);
 if (std == ((void *)0))
  return (USBD_NOMEM);
 std->link.std = ((void *)0);
 std->td.td_link = (__uint32_t)(__builtin_constant_p(0x00000001) ? (__uint32_t)(((__uint32_t)(0x00000001) & 0xff) << 24 | ((__uint32_t)(0x00000001) & 0xff00) << 8 | ((__uint32_t)(0x00000001) & 0xff0000) >> 8 | ((__uint32_t)(0x00000001) & 0xff000000) >> 24) : __swap32md(0x00000001));
 std->td.td_status = (__uint32_t)(__builtin_constant_p(0) ? (__uint32_t)(((__uint32_t)(0) & 0xff) << 24 | ((__uint32_t)(0) & 0xff00) << 8 | ((__uint32_t)(0) & 0xff0000) >> 8 | ((__uint32_t)(0) & 0xff000000) >> 24) : __swap32md(0));
 std->td.td_token = (__uint32_t)(__builtin_constant_p(0) ? (__uint32_t)(((__uint32_t)(0) & 0xff) << 24 | ((__uint32_t)(0) & 0xff00) << 8 | ((__uint32_t)(0) & 0xff0000) >> 8 | ((__uint32_t)(0) & 0xff000000) >> 24) : __swap32md(0));
 std->td.td_buffer = (__uint32_t)(__builtin_constant_p(0) ? (__uint32_t)(((__uint32_t)(0) & 0xff) << 24 | ((__uint32_t)(0) & 0xff00) << 8 | ((__uint32_t)(0) & 0xff0000) >> 8 | ((__uint32_t)(0) & 0xff000000) >> 24) : __swap32md(0));
 lsqh = uhci_alloc_sqh(sc);
 if (lsqh == ((void *)0))
  return (USBD_NOMEM);
 lsqh->hlink = ((void *)0);
 lsqh->qh.qh_hlink = (__uint32_t)(__builtin_constant_p(0x00000001) ? (__uint32_t)(((__uint32_t)(0x00000001) & 0xff) << 24 | ((__uint32_t)(0x00000001) & 0xff00) << 8 | ((__uint32_t)(0x00000001) & 0xff0000) >> 8 | ((__uint32_t)(0x00000001) & 0xff000000) >> 24) : __swap32md(0x00000001));
 lsqh->elink = std;
 lsqh->qh.qh_elink = (__uint32_t)(__builtin_constant_p(std->physaddr | 0x00000000) ? (__uint32_t)(((__uint32_t)(std->physaddr | 0x00000000) & 0xff) << 24 | ((__uint32_t)(std->physaddr | 0x00000000) & 0xff00) << 8 | ((__uint32_t)(std->physaddr | 0x00000000) & 0xff0000) >> 8 | ((__uint32_t)(std->physaddr | 0x00000000) & 0xff000000) >> 24) : __swap32md(std->physaddr | 0x00000000));
 sc->sc_last_qh = lsqh;
 bsqh = uhci_alloc_sqh(sc);
 if (bsqh == ((void *)0))
  return (USBD_NOMEM);
 bsqh->hlink = lsqh;
 bsqh->qh.qh_hlink = (__uint32_t)(__builtin_constant_p(lsqh->physaddr | 0x00000002) ? (__uint32_t)(((__uint32_t)(lsqh->physaddr | 0x00000002) & 0xff) << 24 | ((__uint32_t)(lsqh->physaddr | 0x00000002) & 0xff00) << 8 | ((__uint32_t)(lsqh->physaddr | 0x00000002) & 0xff0000) >> 8 | ((__uint32_t)(lsqh->physaddr | 0x00000002) & 0xff000000) >> 24) : __swap32md(lsqh->physaddr | 0x00000002));
 bsqh->elink = ((void *)0);
 bsqh->qh.qh_elink = (__uint32_t)(__builtin_constant_p(0x00000001) ? (__uint32_t)(((__uint32_t)(0x00000001) & 0xff) << 24 | ((__uint32_t)(0x00000001) & 0xff00) << 8 | ((__uint32_t)(0x00000001) & 0xff0000) >> 8 | ((__uint32_t)(0x00000001) & 0xff000000) >> 24) : __swap32md(0x00000001));
 sc->sc_bulk_start = sc->sc_bulk_end = bsqh;
 chsqh = uhci_alloc_sqh(sc);
 if (chsqh == ((void *)0))
  return (USBD_NOMEM);
 chsqh->hlink = bsqh;
 chsqh->qh.qh_hlink = (__uint32_t)(__builtin_constant_p(bsqh->physaddr | 0x00000002) ? (__uint32_t)(((__uint32_t)(bsqh->physaddr | 0x00000002) & 0xff) << 24 | ((__uint32_t)(bsqh->physaddr | 0x00000002) & 0xff00) << 8 | ((__uint32_t)(bsqh->physaddr | 0x00000002) & 0xff0000) >> 8 | ((__uint32_t)(bsqh->physaddr | 0x00000002) & 0xff000000) >> 24) : __swap32md(bsqh->physaddr | 0x00000002));
 chsqh->elink = ((void *)0);
 chsqh->qh.qh_elink = (__uint32_t)(__builtin_constant_p(0x00000001) ? (__uint32_t)(((__uint32_t)(0x00000001) & 0xff) << 24 | ((__uint32_t)(0x00000001) & 0xff00) << 8 | ((__uint32_t)(0x00000001) & 0xff0000) >> 8 | ((__uint32_t)(0x00000001) & 0xff000000) >> 24) : __swap32md(0x00000001));
 sc->sc_hctl_start = sc->sc_hctl_end = chsqh;
 clsqh = uhci_alloc_sqh(sc);
 if (clsqh == ((void *)0))
  return (USBD_NOMEM);
 clsqh->hlink = chsqh;
 clsqh->qh.qh_hlink = (__uint32_t)(__builtin_constant_p(chsqh->physaddr | 0x00000002) ? (__uint32_t)(((__uint32_t)(chsqh->physaddr | 0x00000002) & 0xff) << 24 | ((__uint32_t)(chsqh->physaddr | 0x00000002) & 0xff00) << 8 | ((__uint32_t)(chsqh->physaddr | 0x00000002) & 0xff0000) >> 8 | ((__uint32_t)(chsqh->physaddr | 0x00000002) & 0xff000000) >> 24) : __swap32md(chsqh->physaddr | 0x00000002));
 clsqh->elink = ((void *)0);
 clsqh->qh.qh_elink = (__uint32_t)(__builtin_constant_p(0x00000001) ? (__uint32_t)(((__uint32_t)(0x00000001) & 0xff) << 24 | ((__uint32_t)(0x00000001) & 0xff00) << 8 | ((__uint32_t)(0x00000001) & 0xff0000) >> 8 | ((__uint32_t)(0x00000001) & 0xff000000) >> 24) : __swap32md(0x00000001));
 sc->sc_lctl_start = sc->sc_lctl_end = clsqh;
 for(i = 0; i < 128; i++) {
  std = uhci_alloc_std(sc);
  sqh = uhci_alloc_sqh(sc);
  if (std == ((void *)0) || sqh == ((void *)0))
   return (USBD_NOMEM);
  std->link.sqh = sqh;
  std->td.td_link = (__uint32_t)(__builtin_constant_p(sqh->physaddr | 0x00000002) ? (__uint32_t)(((__uint32_t)(sqh->physaddr | 0x00000002) & 0xff) << 24 | ((__uint32_t)(sqh->physaddr | 0x00000002) & 0xff00) << 8 | ((__uint32_t)(sqh->physaddr | 0x00000002) & 0xff0000) >> 8 | ((__uint32_t)(sqh->physaddr | 0x00000002) & 0xff000000) >> 24) : __swap32md(sqh->physaddr | 0x00000002));
  std->td.td_status = (__uint32_t)(__builtin_constant_p(0x02000000) ? (__uint32_t)(((__uint32_t)(0x02000000) & 0xff) << 24 | ((__uint32_t)(0x02000000) & 0xff00) << 8 | ((__uint32_t)(0x02000000) & 0xff0000) >> 8 | ((__uint32_t)(0x02000000) & 0xff000000) >> 24) : __swap32md(0x02000000));
  std->td.td_token = (__uint32_t)(__builtin_constant_p(0) ? (__uint32_t)(((__uint32_t)(0) & 0xff) << 24 | ((__uint32_t)(0) & 0xff00) << 8 | ((__uint32_t)(0) & 0xff0000) >> 8 | ((__uint32_t)(0) & 0xff000000) >> 24) : __swap32md(0));
  std->td.td_buffer = (__uint32_t)(__builtin_constant_p(0) ? (__uint32_t)(((__uint32_t)(0) & 0xff) << 24 | ((__uint32_t)(0) & 0xff00) << 8 | ((__uint32_t)(0) & 0xff0000) >> 8 | ((__uint32_t)(0) & 0xff000000) >> 24) : __swap32md(0));
  sqh->hlink = clsqh;
  sqh->qh.qh_hlink = (__uint32_t)(__builtin_constant_p(clsqh->physaddr | 0x00000002) ? (__uint32_t)(((__uint32_t)(clsqh->physaddr | 0x00000002) & 0xff) << 24 | ((__uint32_t)(clsqh->physaddr | 0x00000002) & 0xff00) << 8 | ((__uint32_t)(clsqh->physaddr | 0x00000002) & 0xff0000) >> 8 | ((__uint32_t)(clsqh->physaddr | 0x00000002) & 0xff000000) >> 24) : __swap32md(clsqh->physaddr | 0x00000002));
  sqh->elink = ((void *)0);
  sqh->qh.qh_elink = (__uint32_t)(__builtin_constant_p(0x00000001) ? (__uint32_t)(((__uint32_t)(0x00000001) & 0xff) << 24 | ((__uint32_t)(0x00000001) & 0xff00) << 8 | ((__uint32_t)(0x00000001) & 0xff0000) >> 8 | ((__uint32_t)(0x00000001) & 0xff000000) >> 24) : __swap32md(0x00000001));
  sc->sc_vframes[i].htd = std;
  sc->sc_vframes[i].etd = std;
  sc->sc_vframes[i].hqh = sqh;
  sc->sc_vframes[i].eqh = sqh;
  for (j = i;
       j < 1024;
       j += 128)
   sc->sc_pframes[j] = (__uint32_t)(__builtin_constant_p(std->physaddr) ? (__uint32_t)(((__uint32_t)(std->physaddr) & 0xff) << 24 | ((__uint32_t)(std->physaddr) & 0xff00) << 8 | ((__uint32_t)(std->physaddr) & 0xff0000) >> 8 | ((__uint32_t)(std->physaddr) & 0xff000000) >> 24) : __swap32md(std->physaddr));
 }
 do { ((&sc->sc_intrhead)->lh_first) = ((void *)0); } while (0);
 timeout_set(&sc->sc_root_intr, uhci_poll_hub, sc);
 sc->sc_bus.methods = &uhci_bus_methods;
 sc->sc_bus.pipe_size = sizeof(struct uhci_pipe);
 sc->sc_suspend = 4;
 do { bus_space_barrier((sc)->iot, (sc)->ioh, 0, (sc)->sc_size, 0x01|0x02); bus_space_write_2((sc)->iot, (sc)->ioh, (0x00), (0x0080)); } while ( 0);
 ;
 do { bus_space_barrier((sc)->iot, (sc)->ioh, 0, (sc)->sc_size, 0x01|0x02); bus_space_write_2((sc)->iot, (sc)->ioh, (0x04), (0x0001 | 0x0002 | 0x0004 | 0x0008)); } while ( 0);
 return (uhci_run(sc, 1));
}
int
uhci_activate(struct device *self, int act)
{
 struct uhci_softc *sc = (struct uhci_softc *)self;
 int cmd, rv = 0;
 switch (act) {
 case 3:
  rv = config_activate_children(self, act);
  sc->sc_bus.use_polling++;
  uhci_run(sc, 0);
  sc->sc_saved_frnum = UREAD2(sc, 0x06);
  do { bus_space_barrier((sc)->iot, (sc)->ioh, 0, (sc)->sc_size, 0x01|0x02); bus_space_write_2((sc)->iot, (sc)->ioh, (0x04), (0)); } while ( 0);
  cmd = UREAD2(sc, 0x00);
  do { bus_space_barrier((sc)->iot, (sc)->ioh, 0, (sc)->sc_size, 0x01|0x02); bus_space_write_2((sc)->iot, (sc)->ioh, (0x00), (cmd | 0x0008)); } while ( 0);
  usb_delay_ms(&sc->sc_bus, 50);
  sc->sc_suspend = act;
  sc->sc_bus.use_polling--;
  ;
  break;
 case 6:
  rv = config_activate_children(self, act);
  uhci_run(sc, 0);
  break;
 case 4:
  if (sc->sc_suspend == 4)
   printf("uhci_powerhook: weird, resume without suspend.\n");
  sc->sc_bus.use_polling++;
  sc->sc_suspend = act;
  cmd = UREAD2(sc, 0x00);
  if (cmd & 0x0001)
   uhci_run(sc, 0);
  do { bus_space_barrier((sc)->iot, (sc)->ioh, 0, (sc)->sc_size, 0x01|0x02); bus_space_write_4((sc)->iot, (sc)->ioh, (0x08), (((&sc->sc_dma)->block->map->dm_segs[0].ds_addr + (&sc->sc_dma)->offs + (0)))); } while ( 0);
  do { bus_space_barrier((sc)->iot, (sc)->ioh, 0, (sc)->sc_size, 0x01|0x02); bus_space_write_2((sc)->iot, (sc)->ioh, (0x06), (sc->sc_saved_frnum)); } while ( 0);
  do { bus_space_barrier((sc)->iot, (sc)->ioh, 0, (sc)->sc_size, 0x01|0x02); bus_space_write_1((sc)->iot, (sc)->ioh, (0x0c), (sc->sc_saved_sof)); } while ( 0);
  do { bus_space_barrier((sc)->iot, (sc)->ioh, 0, (sc)->sc_size, 0x01|0x02); bus_space_write_2((sc)->iot, (sc)->ioh, (0x00), (cmd | 0x0010)); } while ( 0);
  usb_delay_ms(&sc->sc_bus, (50*5));
  do { bus_space_barrier((sc)->iot, (sc)->ioh, 0, (sc)->sc_size, 0x01|0x02); bus_space_write_2((sc)->iot, (sc)->ioh, (0x00), (cmd & ~0x0008)); } while ( 0);
  do { bus_space_barrier((sc)->iot, (sc)->ioh, 0, (sc)->sc_size, 0x01|0x02); bus_space_write_2((sc)->iot, (sc)->ioh, (0x00), (0x0080)); } while ( 0);
  do { bus_space_barrier((sc)->iot, (sc)->ioh, 0, (sc)->sc_size, 0x01|0x02); bus_space_write_2((sc)->iot, (sc)->ioh, (0x04), (0x0001 | 0x0002 | 0x0004 | 0x0008)); } while ( 0);
  uhci_run(sc, 1);
  usb_delay_ms(&sc->sc_bus, 50);
  sc->sc_bus.use_polling--;
  rv = config_activate_children(self, act);
  break;
 default:
  rv = config_activate_children(self, act);
  break;
 }
 return (rv);
}
int
uhci_detach(struct device *self, int flags)
{
 struct uhci_softc *sc = (struct uhci_softc *)self;
 int rv;
 rv = config_detach_children(self, flags);
 if (rv != 0)
  return (rv);
 ((sc->sc_intrxfer == ((void *)0)) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../dev/usb/uhci.c", 573, "sc->sc_intrxfer == NULL"));
 return (rv);
}
struct usbd_xfer *
uhci_allocx(struct usbd_bus *bus)
{
 struct uhci_xfer *ux;
 ux = pool_get(uhcixfer, 0x0002 | 0x0008);
 if (ux != ((void *)0))
  ux->isdone = 1;
 return ((struct usbd_xfer *)ux);
}
void
uhci_freex(struct usbd_bus *bus, struct usbd_xfer *xfer)
{
 struct uhci_xfer *ux = (struct uhci_xfer*)xfer;
 if (!ux->isdone) {
  printf("%s: !isdone\n", __func__);
  return;
 }
 pool_put(uhcixfer, ux);
}
void
uhci_poll_hub(void *addr)
{
 struct uhci_softc *sc = addr;
 struct usbd_xfer *xfer;
 int s;
 u_char *p;
 if (sc->sc_bus.dying)
  return;
 xfer = sc->sc_intrxfer;
 if (xfer == ((void *)0))
  return;
 p = ((void *)((char *)((&xfer->dmabuf)->block->kaddr + (&xfer->dmabuf)->offs) + (0)));
 p[0] = 0;
 if (UREAD2(sc, 0x010) & (0x0002|0x0800))
  p[0] |= 1<<1;
 if (UREAD2(sc, 0x012) & (0x0002|0x0800))
  p[0] |= 1<<2;
 if (p[0] == 0) {
  timeout_add_msec(&sc->sc_root_intr, 255);
  return;
 }
 xfer->actlen = xfer->length;
 xfer->status = USBD_NORMAL_COMPLETION;
 s = splraise(2);
 xfer->device->bus->intr_context++;
 usb_transfer_complete(xfer);
 xfer->device->bus->intr_context--;
 _splx(s);
}
void
uhci_root_ctrl_done(struct usbd_xfer *xfer)
{
}
void
uhci_add_loop(struct uhci_softc *sc) {
 if (++sc->sc_loops == 1) {
  ;
  sc->sc_last_qh->qh.qh_hlink =
      (__uint32_t)(__builtin_constant_p(sc->sc_hctl_start->physaddr | 0x00000002) ? (__uint32_t)(((__uint32_t)(sc->sc_hctl_start->physaddr | 0x00000002) & 0xff) << 24 | ((__uint32_t)(sc->sc_hctl_start->physaddr | 0x00000002) & 0xff00) << 8 | ((__uint32_t)(sc->sc_hctl_start->physaddr | 0x00000002) & 0xff0000) >> 8 | ((__uint32_t)(sc->sc_hctl_start->physaddr | 0x00000002) & 0xff000000) >> 24) : __swap32md(sc->sc_hctl_start->physaddr | 0x00000002));
 }
}
void
uhci_rem_loop(struct uhci_softc *sc) {
 if (--sc->sc_loops == 0) {
  ;
  sc->sc_last_qh->qh.qh_hlink = (__uint32_t)(__builtin_constant_p(0x00000001) ? (__uint32_t)(((__uint32_t)(0x00000001) & 0xff) << 24 | ((__uint32_t)(0x00000001) & 0xff00) << 8 | ((__uint32_t)(0x00000001) & 0xff0000) >> 8 | ((__uint32_t)(0x00000001) & 0xff000000) >> 24) : __swap32md(0x00000001));
 }
}
void
uhci_add_hs_ctrl(struct uhci_softc *sc, struct uhci_soft_qh *sqh)
{
 struct uhci_soft_qh *eqh;
 do { if (splassert_ctl > 0) { splassert_check(2, __func__); } } while (0);
 ;
 eqh = sc->sc_hctl_end;
 sqh->hlink = eqh->hlink;
 sqh->qh.qh_hlink = eqh->qh.qh_hlink;
 eqh->hlink = sqh;
 eqh->qh.qh_hlink = (__uint32_t)(__builtin_constant_p(sqh->physaddr | 0x00000002) ? (__uint32_t)(((__uint32_t)(sqh->physaddr | 0x00000002) & 0xff) << 24 | ((__uint32_t)(sqh->physaddr | 0x00000002) & 0xff00) << 8 | ((__uint32_t)(sqh->physaddr | 0x00000002) & 0xff0000) >> 8 | ((__uint32_t)(sqh->physaddr | 0x00000002) & 0xff000000) >> 24) : __swap32md(sqh->physaddr | 0x00000002));
 sc->sc_hctl_end = sqh;
}
void
uhci_remove_hs_ctrl(struct uhci_softc *sc, struct uhci_soft_qh *sqh)
{
 struct uhci_soft_qh *pqh;
 do { if (splassert_ctl > 0) { splassert_check(2, __func__); } } while (0);
 ;
 if (!(sqh->qh.qh_elink & (__uint32_t)(__builtin_constant_p(0x00000001) ? (__uint32_t)(((__uint32_t)(0x00000001) & 0xff) << 24 | ((__uint32_t)(0x00000001) & 0xff00) << 8 | ((__uint32_t)(0x00000001) & 0xff0000) >> 8 | ((__uint32_t)(0x00000001) & 0xff000000) >> 24) : __swap32md(0x00000001)))) {
  sqh->qh.qh_elink = (__uint32_t)(__builtin_constant_p(0x00000001) ? (__uint32_t)(((__uint32_t)(0x00000001) & 0xff) << 24 | ((__uint32_t)(0x00000001) & 0xff00) << 8 | ((__uint32_t)(0x00000001) & 0xff0000) >> 8 | ((__uint32_t)(0x00000001) & 0xff000000) >> 24) : __swap32md(0x00000001));
  delay(5);
 }
 pqh = uhci_find_prev_qh(sc->sc_hctl_start, sqh);
 pqh->hlink = sqh->hlink;
 pqh->qh.qh_hlink = sqh->qh.qh_hlink;
 delay(5);
 if (sc->sc_hctl_end == sqh)
  sc->sc_hctl_end = pqh;
}
void
uhci_add_ls_ctrl(struct uhci_softc *sc, struct uhci_soft_qh *sqh)
{
 struct uhci_soft_qh *eqh;
 do { if (splassert_ctl > 0) { splassert_check(2, __func__); } } while (0);
 ;
 eqh = sc->sc_lctl_end;
 sqh->hlink = eqh->hlink;
 sqh->qh.qh_hlink = eqh->qh.qh_hlink;
 eqh->hlink = sqh;
 eqh->qh.qh_hlink = (__uint32_t)(__builtin_constant_p(sqh->physaddr | 0x00000002) ? (__uint32_t)(((__uint32_t)(sqh->physaddr | 0x00000002) & 0xff) << 24 | ((__uint32_t)(sqh->physaddr | 0x00000002) & 0xff00) << 8 | ((__uint32_t)(sqh->physaddr | 0x00000002) & 0xff0000) >> 8 | ((__uint32_t)(sqh->physaddr | 0x00000002) & 0xff000000) >> 24) : __swap32md(sqh->physaddr | 0x00000002));
 sc->sc_lctl_end = sqh;
}
void
uhci_remove_ls_ctrl(struct uhci_softc *sc, struct uhci_soft_qh *sqh)
{
 struct uhci_soft_qh *pqh;
 do { if (splassert_ctl > 0) { splassert_check(2, __func__); } } while (0);
 ;
 if (!(sqh->qh.qh_elink & (__uint32_t)(__builtin_constant_p(0x00000001) ? (__uint32_t)(((__uint32_t)(0x00000001) & 0xff) << 24 | ((__uint32_t)(0x00000001) & 0xff00) << 8 | ((__uint32_t)(0x00000001) & 0xff0000) >> 8 | ((__uint32_t)(0x00000001) & 0xff000000) >> 24) : __swap32md(0x00000001)))) {
  sqh->qh.qh_elink = (__uint32_t)(__builtin_constant_p(0x00000001) ? (__uint32_t)(((__uint32_t)(0x00000001) & 0xff) << 24 | ((__uint32_t)(0x00000001) & 0xff00) << 8 | ((__uint32_t)(0x00000001) & 0xff0000) >> 8 | ((__uint32_t)(0x00000001) & 0xff000000) >> 24) : __swap32md(0x00000001));
  delay(5);
 }
 pqh = uhci_find_prev_qh(sc->sc_lctl_start, sqh);
 pqh->hlink = sqh->hlink;
 pqh->qh.qh_hlink = sqh->qh.qh_hlink;
 delay(5);
 if (sc->sc_lctl_end == sqh)
  sc->sc_lctl_end = pqh;
}
void
uhci_add_bulk(struct uhci_softc *sc, struct uhci_soft_qh *sqh)
{
 struct uhci_soft_qh *eqh;
 do { if (splassert_ctl > 0) { splassert_check(2, __func__); } } while (0);
 ;
 eqh = sc->sc_bulk_end;
 sqh->hlink = eqh->hlink;
 sqh->qh.qh_hlink = eqh->qh.qh_hlink;
 eqh->hlink = sqh;
 eqh->qh.qh_hlink = (__uint32_t)(__builtin_constant_p(sqh->physaddr | 0x00000002) ? (__uint32_t)(((__uint32_t)(sqh->physaddr | 0x00000002) & 0xff) << 24 | ((__uint32_t)(sqh->physaddr | 0x00000002) & 0xff00) << 8 | ((__uint32_t)(sqh->physaddr | 0x00000002) & 0xff0000) >> 8 | ((__uint32_t)(sqh->physaddr | 0x00000002) & 0xff000000) >> 24) : __swap32md(sqh->physaddr | 0x00000002));
 sc->sc_bulk_end = sqh;
 uhci_add_loop(sc);
}
void
uhci_remove_bulk(struct uhci_softc *sc, struct uhci_soft_qh *sqh)
{
 struct uhci_soft_qh *pqh;
 do { if (splassert_ctl > 0) { splassert_check(2, __func__); } } while (0);
 ;
 uhci_rem_loop(sc);
 if (!(sqh->qh.qh_elink & (__uint32_t)(__builtin_constant_p(0x00000001) ? (__uint32_t)(((__uint32_t)(0x00000001) & 0xff) << 24 | ((__uint32_t)(0x00000001) & 0xff00) << 8 | ((__uint32_t)(0x00000001) & 0xff0000) >> 8 | ((__uint32_t)(0x00000001) & 0xff000000) >> 24) : __swap32md(0x00000001)))) {
  sqh->qh.qh_elink = (__uint32_t)(__builtin_constant_p(0x00000001) ? (__uint32_t)(((__uint32_t)(0x00000001) & 0xff) << 24 | ((__uint32_t)(0x00000001) & 0xff00) << 8 | ((__uint32_t)(0x00000001) & 0xff0000) >> 8 | ((__uint32_t)(0x00000001) & 0xff000000) >> 24) : __swap32md(0x00000001));
  delay(5);
 }
 pqh = uhci_find_prev_qh(sc->sc_bulk_start, sqh);
 pqh->hlink = sqh->hlink;
 pqh->qh.qh_hlink = sqh->qh.qh_hlink;
 delay(5);
 if (sc->sc_bulk_end == sqh)
  sc->sc_bulk_end = pqh;
}
int uhci_intr1(struct uhci_softc *);
int
uhci_intr(void *arg)
{
 struct uhci_softc *sc = arg;
 if (sc->sc_bus.dying)
  return (0);
 if (sc->sc_bus.use_polling)
  return (0);
 return (uhci_intr1(sc));
}
int
uhci_intr1(struct uhci_softc *sc)
{
 int status;
 int ack;
 status = UREAD2(sc, 0x02);
 if (status == 0xffff) {
  sc->sc_bus.dying = 1;
  return (0);
 }
 status &= 0x003f;
 if (status == 0)
  return (0);
 if (sc->sc_suspend != 4) {
  printf("%s: interrupt while not operating ignored\n",
         sc->sc_bus.bdev.dv_xname);
  return (0);
 }
 ack = 0;
 if (status & 0x0001)
  ack |= 0x0001;
 if (status & 0x0002)
  ack |= 0x0002;
 if (status & 0x0004) {
  ack |= 0x0004;
 }
 if (status & 0x0008) {
  ack |= 0x0008;
  printf("%s: host system error\n", sc->sc_bus.bdev.dv_xname);
 }
 if (status & 0x0010) {
  ack |= 0x0010;
  printf("%s: host controller process error\n",
         sc->sc_bus.bdev.dv_xname);
 }
 if (status & 0x0020) {
  if (!sc->sc_bus.dying) {
   printf("%s: host controller halted\n",
       sc->sc_bus.bdev.dv_xname);
  }
  sc->sc_bus.dying = 1;
 }
 if (!ack)
  return (0);
 do { bus_space_barrier((sc)->iot, (sc)->ioh, 0, (sc)->sc_size, 0x01|0x02); bus_space_write_2((sc)->iot, (sc)->ioh, (0x02), (ack)); } while ( 0);
 sc->sc_bus.no_intrs++;
 usb_schedsoftintr(&sc->sc_bus);
 ;
 return (1);
}
void
uhci_softintr(void *v)
{
 struct uhci_softc *sc = v;
 struct uhci_xfer *ux, *nextex;
 ;
 if (sc->sc_bus.dying)
  return;
 sc->sc_bus.intr_context++;
 for (ux = ((&sc->sc_intrhead)->lh_first); ux; ux = nextex) {
  nextex = ((ux)->inext.le_next);
  uhci_check_intr(sc, &ux->xfer);
 }
 if (sc->sc_softwake) {
  sc->sc_softwake = 0;
  wakeup(&sc->sc_softwake);
 }
 sc->sc_bus.intr_context--;
}
void
uhci_check_intr(struct uhci_softc *sc, struct usbd_xfer *xfer)
{
 struct uhci_xfer *ux = (struct uhci_xfer *)xfer;
 struct uhci_soft_td *std, *lstd;
 u_int32_t status;
 ;
 if (ux == ((void *)0)) {
  printf("%s: no ux? %p\n", __func__, ux);
  return;
 }
 if (xfer->status == USBD_CANCELLED || xfer->status == USBD_TIMEOUT) {
  ;
  return;
 }
 if (ux->stdstart == ((void *)0))
  return;
 lstd = ux->stdend;
 if (lstd == ((void *)0)) {
  printf("%s: std==0\n", __func__);
  return;
 }
 if ((__uint32_t)(__builtin_constant_p(lstd->td.td_status) ? (__uint32_t)(((__uint32_t)(lstd->td.td_status) & 0xff) << 24 | ((__uint32_t)(lstd->td.td_status) & 0xff00) << 8 | ((__uint32_t)(lstd->td.td_status) & 0xff0000) >> 8 | ((__uint32_t)(lstd->td.td_status) & 0xff000000) >> 24) : __swap32md(lstd->td.td_status)) & 0x00800000) {
  ;
  for (std = ux->stdstart; std != lstd; std = std->link.std) {
   status = (__uint32_t)(__builtin_constant_p(std->td.td_status) ? (__uint32_t)(((__uint32_t)(std->td.td_status) & 0xff) << 24 | ((__uint32_t)(std->td.td_status) & 0xff00) << 8 | ((__uint32_t)(std->td.td_status) & 0xff0000) >> 8 | ((__uint32_t)(std->td.td_status) & 0xff000000) >> 24) : __swap32md(std->td.td_status));
   if (status & 0x00800000)
    break;
   if (status & 0x00400000)
    goto done;
   if ((status & 0x20000000) &&
         (((status) + 1) & 0x3ff) <
         (((((__uint32_t)(__builtin_constant_p(std->td.td_token) ? (__uint32_t)(((__uint32_t)(std->td.td_token) & 0xff) << 24 | ((__uint32_t)(std->td.td_token) & 0xff00) << 8 | ((__uint32_t)(std->td.td_token) & 0xff0000) >> 8 | ((__uint32_t)(std->td.td_token) & 0xff000000) >> 24) : __swap32md(std->td.td_token))) >> 21) + 1) & 0x7ff))
    goto done;
  }
  ;
  return;
 }
 done:
 ;
 timeout_del(&xfer->timeout_handle);
 usb_rem_task(xfer->pipe->device, &xfer->abort_task);
 uhci_idone(xfer);
}
void
uhci_idone(struct usbd_xfer *xfer)
{
 struct uhci_xfer *ux = (struct uhci_xfer *)xfer;
 struct uhci_pipe *upipe = (struct uhci_pipe *)xfer->pipe;
 struct uhci_soft_td *std;
 u_int32_t status = 0, nstatus;
 int actlen;
 ;
 {
  int s = _splraise(15);
  if (ux->isdone) {
   _splx(s);
   printf("uhci_idone: ux=%p is done!\n", ux);
   return;
  }
  ux->isdone = 1;
  _splx(s);
 }
 if (xfer->nframes != 0) {
  struct uhci_soft_td **stds = upipe->u.iso.stds;
  int i, n, nframes, len;
  ;
  nframes = xfer->nframes;
  actlen = 0;
  n = ux->curframe;
  for (i = 0; i < nframes; i++) {
   std = stds[n];
   if (++n >= 128)
    n = 0;
   status = (__uint32_t)(__builtin_constant_p(std->td.td_status) ? (__uint32_t)(((__uint32_t)(std->td.td_status) & 0xff) << 24 | ((__uint32_t)(std->td.td_status) & 0xff00) << 8 | ((__uint32_t)(std->td.td_status) & 0xff0000) >> 8 | ((__uint32_t)(std->td.td_status) & 0xff000000) >> 24) : __swap32md(std->td.td_status));
   len = (((status) + 1) & 0x3ff);
   xfer->frlengths[i] = len;
   actlen += len;
  }
  upipe->u.iso.inuse -= nframes;
  xfer->actlen = actlen;
  xfer->status = USBD_NORMAL_COMPLETION;
  goto end;
 }
 actlen = 0;
 for (std = ux->stdstart; std != ((void *)0); std = std->link.std) {
  nstatus = (__uint32_t)(__builtin_constant_p(std->td.td_status) ? (__uint32_t)(((__uint32_t)(std->td.td_status) & 0xff) << 24 | ((__uint32_t)(std->td.td_status) & 0xff00) << 8 | ((__uint32_t)(std->td.td_status) & 0xff0000) >> 8 | ((__uint32_t)(std->td.td_status) & 0xff000000) >> 24) : __swap32md(std->td.td_status));
  if (nstatus & 0x00800000)
   break;
  status = nstatus;
  if ((((__uint32_t)(__builtin_constant_p(std->td.td_token) ? (__uint32_t)(((__uint32_t)(std->td.td_token) & 0xff) << 24 | ((__uint32_t)(std->td.td_token) & 0xff00) << 8 | ((__uint32_t)(std->td.td_token) & 0xff0000) >> 8 | ((__uint32_t)(std->td.td_token) & 0xff000000) >> 24) : __swap32md(std->td.td_token))) & 0xff) !=
      0x0000002d)
   actlen += (((status) + 1) & 0x3ff);
  else {
   if (status & (0x00400000 | 0x00080000))
    status &= ~0x00040000;
  }
 }
 if (std != ((void *)0))
  upipe->nexttoggle = ((((__uint32_t)(__builtin_constant_p(std->td.td_token) ? (__uint32_t)(((__uint32_t)(std->td.td_token) & 0xff) << 24 | ((__uint32_t)(std->td.td_token) & 0xff00) << 8 | ((__uint32_t)(std->td.td_token) & 0xff0000) >> 8 | ((__uint32_t)(std->td.td_token) & 0xff000000) >> 24) : __swap32md(std->td.td_token))) >> 19) & 1);
 status &= (0x00020000|0x00040000|0x00100000|0x00200000|0x00400000);
 ;
 xfer->actlen = actlen;
 if (status != 0) {
  if (status == 0x00400000)
   xfer->status = USBD_STALLED;
  else
   xfer->status = USBD_IOERROR;
 } else {
  xfer->status = USBD_NORMAL_COMPLETION;
 }
 end:
 usb_transfer_complete(xfer);
 ;
}
void
uhci_timeout(void *addr)
{
 struct usbd_xfer *xfer = addr;
 struct uhci_softc *sc = (struct uhci_softc *)xfer->device->bus;
 if (sc->sc_bus.dying) {
  uhci_timeout_task(addr);
  return;
 }
 ((&xfer->abort_task)->fun = (uhci_timeout_task), (&xfer->abort_task)->arg = (addr), (&xfer->abort_task)->type = (2), (&xfer->abort_task)->state = 0x0);
 usb_add_task(xfer->device, &xfer->abort_task);
}
void
uhci_timeout_task(void *addr)
{
 struct usbd_xfer *xfer = addr;
 int s;
 ;
 s = splraise(2);
 uhci_abort_xfer(xfer, USBD_TIMEOUT);
 _splx(s);
}
void
uhci_poll(struct usbd_bus *bus)
{
 struct uhci_softc *sc = (struct uhci_softc *)bus;
 if (UREAD2(sc, 0x02) & 0x003f)
  uhci_intr1(sc);
}
void
uhci_reset(struct uhci_softc *sc)
{
 int n;
 do { bus_space_barrier((sc)->iot, (sc)->ioh, 0, (sc)->sc_size, 0x01|0x02); bus_space_write_2((sc)->iot, (sc)->ioh, (0x00), (0x0002)); } while ( 0);
 for (n = 0; n < 100 &&
      (UREAD2(sc, 0x00) & 0x0002); n++)
  usb_delay_ms(&sc->sc_bus, 1);
 if (n >= 100)
  printf("%s: controller did not reset\n",
         sc->sc_bus.bdev.dv_xname);
}
usbd_status
uhci_run(struct uhci_softc *sc, int run)
{
 int s, n, running;
 u_int16_t cmd;
 run = run != 0;
 s = splraise(5);
 ;
 cmd = UREAD2(sc, 0x00);
 if (run)
  cmd |= 0x0001;
 else
  cmd &= ~0x0001;
 do { bus_space_barrier((sc)->iot, (sc)->ioh, 0, (sc)->sc_size, 0x01|0x02); bus_space_write_2((sc)->iot, (sc)->ioh, (0x00), (cmd)); } while ( 0);
 for(n = 0; n < 10; n++) {
  running = !(UREAD2(sc, 0x02) & 0x0020);
  if (run == running) {
   _splx(s);
   ;
   return (USBD_NORMAL_COMPLETION);
  }
  usb_delay_ms(&sc->sc_bus, 1);
 }
 _splx(s);
 printf("%s: cannot %s\n", sc->sc_bus.bdev.dv_xname,
        run ? "start" : "stop");
 return (USBD_IOERROR);
}
struct uhci_soft_td *
uhci_alloc_std(struct uhci_softc *sc)
{
 struct uhci_soft_td *std = ((void *)0);
 usbd_status err;
 int i, offs;
 struct usb_dma dma;
 int s;
 s = splraise(2);
 if (sc->sc_freetds == ((void *)0)) {
  ;
  err = usb_allocmem(&sc->sc_bus, ((sizeof (struct uhci_soft_td) + 16 - 1) / 16 * 16) * 128,
     16, &dma);
  if (err)
   goto out;
  for(i = 0; i < 128; i++) {
   offs = i * ((sizeof (struct uhci_soft_td) + 16 - 1) / 16 * 16);
   std = ((void *)((char *)((&dma)->block->kaddr + (&dma)->offs) + (offs)));
   std->physaddr = ((&dma)->block->map->dm_segs[0].ds_addr + (&dma)->offs + (offs));
   std->link.std = sc->sc_freetds;
   sc->sc_freetds = std;
  }
 }
 std = sc->sc_freetds;
 sc->sc_freetds = std->link.std;
 __builtin_memset((&std->td), (0), (sizeof(struct uhci_td)));
out:
 _splx(s);
 return (std);
}
void
uhci_free_std(struct uhci_softc *sc, struct uhci_soft_td *std)
{
 int s;
 if ((__uint32_t)(__builtin_constant_p(std->td.td_token) ? (__uint32_t)(((__uint32_t)(std->td.td_token) & 0xff) << 24 | ((__uint32_t)(std->td.td_token) & 0xff00) << 8 | ((__uint32_t)(std->td.td_token) & 0xff0000) >> 8 | ((__uint32_t)(std->td.td_token) & 0xff000000) >> 24) : __swap32md(std->td.td_token)) == 0x12345678) {
  printf("uhci_free_std: freeing free TD %p\n", std);
  return;
 }
 std->td.td_token = (__uint32_t)(__builtin_constant_p(0x12345678) ? (__uint32_t)(((__uint32_t)(0x12345678) & 0xff) << 24 | ((__uint32_t)(0x12345678) & 0xff00) << 8 | ((__uint32_t)(0x12345678) & 0xff0000) >> 8 | ((__uint32_t)(0x12345678) & 0xff000000) >> 24) : __swap32md(0x12345678));
 s = splraise(2);
 std->link.std = sc->sc_freetds;
 sc->sc_freetds = std;
 _splx(s);
}
struct uhci_soft_qh *
uhci_alloc_sqh(struct uhci_softc *sc)
{
 struct uhci_soft_qh *sqh = ((void *)0);
 usbd_status err;
 int i, offs;
 struct usb_dma dma;
 int s;
 s = splraise(2);
 if (sc->sc_freeqhs == ((void *)0)) {
  ;
  err = usb_allocmem(&sc->sc_bus, ((sizeof (struct uhci_soft_qh) + 16 - 1) / 16 * 16) * 128,
     16, &dma);
  if (err)
   goto out;
  for (i = 0; i < 128; i++) {
   offs = i * ((sizeof (struct uhci_soft_qh) + 16 - 1) / 16 * 16);
   sqh = ((void *)((char *)((&dma)->block->kaddr + (&dma)->offs) + (offs)));
   sqh->physaddr = ((&dma)->block->map->dm_segs[0].ds_addr + (&dma)->offs + (offs));
   sqh->hlink = sc->sc_freeqhs;
   sc->sc_freeqhs = sqh;
  }
 }
 sqh = sc->sc_freeqhs;
 sc->sc_freeqhs = sqh->hlink;
 __builtin_memset((&sqh->qh), (0), (sizeof(struct uhci_qh)));
out:
 _splx(s);
 return (sqh);
}
void
uhci_free_sqh(struct uhci_softc *sc, struct uhci_soft_qh *sqh)
{
 sqh->hlink = sc->sc_freeqhs;
 sc->sc_freeqhs = sqh;
}
void
uhci_free_std_chain(struct uhci_softc *sc, struct uhci_soft_td *std,
    struct uhci_soft_td *stdend)
{
 struct uhci_soft_td *p;
 for (; std != stdend; std = p) {
  p = std->link.std;
  uhci_free_std(sc, std);
 }
}
usbd_status
uhci_alloc_std_chain(struct uhci_softc *sc, u_int len, struct usbd_xfer *xfer,
    struct uhci_soft_td **sp, struct uhci_soft_td **ep)
{
 struct uhci_pipe *upipe = (struct uhci_pipe *)xfer->pipe;
 struct uhci_soft_td *p, *lastp;
 uhci_physaddr_t lastlink;
 int i, ntd, l, tog, mps;
 u_int32_t status;
 u_int16_t flags = xfer->flags;
 int rd = usbd_xfer_isread(xfer);
 struct usb_dma *dma = &xfer->dmabuf;
 int addr = xfer->device->address;
 int endpt = xfer->pipe->endpoint->edesc->bEndpointAddress;
 ;
 mps = ((xfer->pipe->endpoint->edesc->wMaxPacketSize)[0] | ((xfer->pipe->endpoint->edesc->wMaxPacketSize)[1] << 8));
 if (mps == 0) {
  printf("uhci_alloc_std_chain: mps=0\n");
  return (USBD_INVAL);
 }
 ntd = (len + mps - 1) / mps;
 if (len == 0)
  flags |= 0x08;
 if ((flags & 0x08) && len % mps == 0)
  ntd++;
 ;
 tog = upipe->nexttoggle;
 if (ntd % 2 == 0)
  tog ^= 1;
 upipe->nexttoggle = tog ^ 1;
 lastp = ((void *)0);
 lastlink = 0x00000001;
 ntd--;
 status = ((((3) << 27) | 0x00800000) | 0x3ff);
 if (xfer->pipe->device->speed == 1)
  status |= 0x04000000;
 if (flags & 0x04)
  status |= 0x20000000;
 for (i = ntd; i >= 0; i--) {
  p = uhci_alloc_std(sc);
  if (p == ((void *)0)) {
   uhci_free_std_chain(sc, lastp, ((void *)0));
   return (USBD_NOMEM);
  }
  p->link.std = lastp;
  p->td.td_link = (__uint32_t)(__builtin_constant_p(lastlink | 0x00000004 | 0x00000000) ? (__uint32_t)(((__uint32_t)(lastlink | 0x00000004 | 0x00000000) & 0xff) << 24 | ((__uint32_t)(lastlink | 0x00000004 | 0x00000000) & 0xff00) << 8 | ((__uint32_t)(lastlink | 0x00000004 | 0x00000000) & 0xff0000) >> 8 | ((__uint32_t)(lastlink | 0x00000004 | 0x00000000) & 0xff000000) >> 24) : __swap32md(lastlink | 0x00000004 | 0x00000000));
  lastp = p;
  lastlink = p->physaddr;
  p->td.td_status = (__uint32_t)(__builtin_constant_p(status) ? (__uint32_t)(((__uint32_t)(status) & 0xff) << 24 | ((__uint32_t)(status) & 0xff00) << 8 | ((__uint32_t)(status) & 0xff0000) >> 8 | ((__uint32_t)(status) & 0xff000000) >> 24) : __swap32md(status));
  if (i == ntd) {
   l = len % mps;
   if (l == 0 && !(flags & 0x08))
    l = mps;
   *ep = p;
  } else
   l = mps;
  p->td.td_token =
      (__uint32_t)(__builtin_constant_p(rd ? ((((uint32_t)(l)-1) << 21) | (((endpt)&0xf) << 15) | ((addr) << 8) | 0x00000069 | ((tog) << 19)) : ((((uint32_t)(l)-1) << 21) | (((endpt)&0xf) << 15) | ((addr) << 8) | 0x000000e1 | ((tog) << 19))) ? (__uint32_t)(((__uint32_t)(rd ? ((((uint32_t)(l)-1) << 21) | (((endpt)&0xf) << 15) | ((addr) << 8) | 0x00000069 | ((tog) << 19)) : ((((uint32_t)(l)-1) << 21) | (((endpt)&0xf) << 15) | ((addr) << 8) | 0x000000e1 | ((tog) << 19))) & 0xff) << 24 | ((__uint32_t)(rd ? ((((uint32_t)(l)-1) << 21) | (((endpt)&0xf) << 15) | ((addr) << 8) | 0x00000069 | ((tog) << 19)) : ((((uint32_t)(l)-1) << 21) | (((endpt)&0xf) << 15) | ((addr) << 8) | 0x000000e1 | ((tog) << 19))) & 0xff00) << 8 | ((__uint32_t)(rd ? ((((uint32_t)(l)-1) << 21) | (((endpt)&0xf) << 15) | ((addr) << 8) | 0x00000069 | ((tog) << 19)) : ((((uint32_t)(l)-1) << 21) | (((endpt)&0xf) << 15) | ((addr) << 8) | 0x000000e1 | ((tog) << 19))) & 0xff0000) >> 8 | ((__uint32_t)(rd ? ((((uint32_t)(l)-1) << 21) | (((endpt)&0xf) << 15) | ((addr) << 8) | 0x00000069 | ((tog) << 19)) : ((((uint32_t)(l)-1) << 21) | (((endpt)&0xf) << 15) | ((addr) << 8) | 0x000000e1 | ((tog) << 19))) & 0xff000000) >> 24) : __swap32md(rd ? ((((uint32_t)(l)-1) << 21) | (((endpt)&0xf) << 15) | ((addr) << 8) | 0x00000069 | ((tog) << 19)) : ((((uint32_t)(l)-1) << 21) | (((endpt)&0xf) << 15) | ((addr) << 8) | 0x000000e1 | ((tog) << 19))));
  p->td.td_buffer = (__uint32_t)(__builtin_constant_p(((dma)->block->map->dm_segs[0].ds_addr + (dma)->offs + (i * mps))) ? (__uint32_t)(((__uint32_t)(((dma)->block->map->dm_segs[0].ds_addr + (dma)->offs + (i * mps))) & 0xff) << 24 | ((__uint32_t)(((dma)->block->map->dm_segs[0].ds_addr + (dma)->offs + (i * mps))) & 0xff00) << 8 | ((__uint32_t)(((dma)->block->map->dm_segs[0].ds_addr + (dma)->offs + (i * mps))) & 0xff0000) >> 8 | ((__uint32_t)(((dma)->block->map->dm_segs[0].ds_addr + (dma)->offs + (i * mps))) & 0xff000000) >> 24) : __swap32md(((dma)->block->map->dm_segs[0].ds_addr + (dma)->offs + (i * mps))));
  tog ^= 1;
 }
 *sp = lastp;
 ;
 return (USBD_NORMAL_COMPLETION);
}
void
uhci_device_clear_toggle(struct usbd_pipe *pipe)
{
 struct uhci_pipe *upipe = (struct uhci_pipe *)pipe;
 upipe->nexttoggle = 0;
}
usbd_status
uhci_device_bulk_transfer(struct usbd_xfer *xfer)
{
 usbd_status err;
 err = usb_insert_transfer(xfer);
 if (err)
  return (err);
 return (uhci_device_bulk_start(((&xfer->pipe->queue)->sqh_first)));
}
usbd_status
uhci_device_bulk_start(struct usbd_xfer *xfer)
{
 struct uhci_softc *sc = (struct uhci_softc *)xfer->device->bus;
 struct uhci_pipe *upipe = (struct uhci_pipe *)xfer->pipe;
 struct uhci_xfer *ux = (struct uhci_xfer *)xfer;
 struct uhci_soft_td *data, *dataend;
 struct uhci_soft_qh *sqh;
 usbd_status err;
 u_int len;
 int s;
 ;
 if (sc->sc_bus.dying)
  return (USBD_IOERROR);
 if (xfer->rqflags & 0x01)
  panic("uhci_device_bulk_start: a request");
 len = xfer->length;
 sqh = upipe->u.bulk.sqh;
 err = uhci_alloc_std_chain(sc, len, xfer, &data, &dataend);
 if (err)
  return (err);
 dataend->td.td_status |= (__uint32_t)(__builtin_constant_p(0x01000000) ? (__uint32_t)(((__uint32_t)(0x01000000) & 0xff) << 24 | ((__uint32_t)(0x01000000) & 0xff00) << 8 | ((__uint32_t)(0x01000000) & 0xff0000) >> 8 | ((__uint32_t)(0x01000000) & 0xff000000) >> 24) : __swap32md(0x01000000));
 ux->stdstart = data;
 ux->stdend = dataend;
 if (!ux->isdone) {
  printf("uhci_device_bulk_start: not done, ux=%p\n", ux);
 }
 ux->isdone = 0;
 sqh->elink = data;
 sqh->qh.qh_elink = (__uint32_t)(__builtin_constant_p(data->physaddr | 0x00000000) ? (__uint32_t)(((__uint32_t)(data->physaddr | 0x00000000) & 0xff) << 24 | ((__uint32_t)(data->physaddr | 0x00000000) & 0xff00) << 8 | ((__uint32_t)(data->physaddr | 0x00000000) & 0xff0000) >> 8 | ((__uint32_t)(data->physaddr | 0x00000000) & 0xff000000) >> 24) : __swap32md(data->physaddr | 0x00000000));
 s = splraise(2);
 uhci_add_bulk(sc, sqh);
 do { if ((((ux))->inext.le_next = (&(sc)->sc_intrhead)->lh_first) != ((void *)0)) (&(sc)->sc_intrhead)->lh_first->inext.le_prev = &((ux))->inext.le_next; (&(sc)->sc_intrhead)->lh_first = ((ux)); ((ux))->inext.le_prev = &(&(sc)->sc_intrhead)->lh_first; } while (0);
 if (xfer->timeout && !sc->sc_bus.use_polling) {
  timeout_del(&xfer->timeout_handle);
  timeout_set(&xfer->timeout_handle, uhci_timeout, xfer);
  timeout_add_msec(&xfer->timeout_handle, xfer->timeout);
 }
 xfer->status = USBD_IN_PROGRESS;
 _splx(s);
 return (USBD_IN_PROGRESS);
}
void
uhci_device_bulk_abort(struct usbd_xfer *xfer)
{
 ;
 uhci_abort_xfer(xfer, USBD_CANCELLED);
}
void
uhci_abort_xfer(struct usbd_xfer *xfer, usbd_status status)
{
 struct uhci_softc *sc = (struct uhci_softc *)xfer->device->bus;
 struct uhci_xfer *ux = (struct uhci_xfer *)xfer;
 struct uhci_soft_td *std;
 int s;
 ;
 if (sc->sc_bus.dying) {
  s = splraise(2);
  xfer->status = status;
  timeout_del(&xfer->timeout_handle);
  usb_rem_task(xfer->device, &xfer->abort_task);
  ux->isdone = 1;
  usb_transfer_complete(xfer);
  _splx(s);
  return;
 }
 if (xfer->device->bus->intr_context || !(__curcpu->ci_self)->ci_curproc)
  panic("uhci_abort_xfer: not in process context");
 s = splraise(2);
 xfer->status = status;
 timeout_del(&xfer->timeout_handle);
 usb_rem_task(xfer->device, &xfer->abort_task);
 ;
 for (std = ux->stdstart; std != ((void *)0); std = std->link.std)
  std->td.td_status &= (__uint32_t)(__builtin_constant_p(~(0x00800000 | 0x01000000)) ? (__uint32_t)(((__uint32_t)(~(0x00800000 | 0x01000000)) & 0xff) << 24 | ((__uint32_t)(~(0x00800000 | 0x01000000)) & 0xff00) << 8 | ((__uint32_t)(~(0x00800000 | 0x01000000)) & 0xff0000) >> 8 | ((__uint32_t)(~(0x00800000 | 0x01000000)) & 0xff000000) >> 24) : __swap32md(~(0x00800000 | 0x01000000)));
 _splx(s);
 usb_delay_ms(&sc->sc_bus, 2);
 s = splraise(2);
 sc->sc_softwake = 1;
 usb_schedsoftintr(&sc->sc_bus);
 ;
 tsleep(&sc->sc_softwake, 22, "uhciab", 0);
 _splx(s);
 ;
 s = splraise(2);
 ux->isdone = 1;
 usb_transfer_complete(xfer);
 _splx(s);
}
void
uhci_device_bulk_close(struct usbd_pipe *pipe)
{
 struct uhci_softc *sc = (struct uhci_softc *)pipe->device->bus;
 struct uhci_pipe *upipe = (struct uhci_pipe *)pipe;
 uhci_free_sqh(sc, upipe->u.bulk.sqh);
 pipe->endpoint->savedtoggle = upipe->nexttoggle;
}
usbd_status
uhci_device_ctrl_transfer(struct usbd_xfer *xfer)
{
 usbd_status err;
 err = usb_insert_transfer(xfer);
 if (err)
  return (err);
 return (uhci_device_ctrl_start(((&xfer->pipe->queue)->sqh_first)));
}
usbd_status
uhci_device_ctrl_start(struct usbd_xfer *xfer)
{
 struct uhci_softc *sc = (struct uhci_softc *)xfer->device->bus;
 usbd_status err;
 if (sc->sc_bus.dying)
  return (USBD_IOERROR);
 if (!(xfer->rqflags & 0x01))
  panic("uhci_device_ctrl_transfer: not a request");
 err = uhci_device_request(xfer);
 if (err)
  return (err);
 return (USBD_IN_PROGRESS);
}
usbd_status
uhci_device_intr_transfer(struct usbd_xfer *xfer)
{
 usbd_status err;
 err = usb_insert_transfer(xfer);
 if (err)
  return (err);
 return (uhci_device_intr_start(((&xfer->pipe->queue)->sqh_first)));
}
usbd_status
uhci_device_intr_start(struct usbd_xfer *xfer)
{
 struct uhci_softc *sc = (struct uhci_softc *)xfer->device->bus;
 struct uhci_pipe *upipe = (struct uhci_pipe *)xfer->pipe;
 struct uhci_xfer *ux = (struct uhci_xfer *)xfer;
 struct uhci_soft_td *data, *dataend;
 struct uhci_soft_qh *sqh;
 usbd_status err;
 int i, s;
 if (sc->sc_bus.dying)
  return (USBD_IOERROR);
 ;
 if (xfer->rqflags & 0x01)
  panic("uhci_device_intr_start: a request");
 upipe->u.intr.isread = usbd_xfer_isread(xfer);
 err = uhci_alloc_std_chain(sc, xfer->length, xfer, &data, &dataend);
 if (err)
  return (err);
 dataend->td.td_status |= (__uint32_t)(__builtin_constant_p(0x01000000) ? (__uint32_t)(((__uint32_t)(0x01000000) & 0xff) << 24 | ((__uint32_t)(0x01000000) & 0xff00) << 8 | ((__uint32_t)(0x01000000) & 0xff0000) >> 8 | ((__uint32_t)(0x01000000) & 0xff000000) >> 24) : __swap32md(0x01000000));
 s = splraise(2);
 ux->stdstart = data;
 ux->stdend = dataend;
 if (!ux->isdone) {
  printf("uhci_device_intr_transfer: not done, ux=%p\n", ux);
 }
 ux->isdone = 0;
 ;
 for (i = 0; i < upipe->u.intr.npoll; i++) {
  sqh = upipe->u.intr.qhs[i];
  sqh->elink = data;
  sqh->qh.qh_elink = (__uint32_t)(__builtin_constant_p(data->physaddr | 0x00000000) ? (__uint32_t)(((__uint32_t)(data->physaddr | 0x00000000) & 0xff) << 24 | ((__uint32_t)(data->physaddr | 0x00000000) & 0xff00) << 8 | ((__uint32_t)(data->physaddr | 0x00000000) & 0xff0000) >> 8 | ((__uint32_t)(data->physaddr | 0x00000000) & 0xff000000) >> 24) : __swap32md(data->physaddr | 0x00000000));
 }
 do { if ((((ux))->inext.le_next = (&(sc)->sc_intrhead)->lh_first) != ((void *)0)) (&(sc)->sc_intrhead)->lh_first->inext.le_prev = &((ux))->inext.le_next; (&(sc)->sc_intrhead)->lh_first = ((ux)); ((ux))->inext.le_prev = &(&(sc)->sc_intrhead)->lh_first; } while (0);
 xfer->status = USBD_IN_PROGRESS;
 _splx(s);
 return (USBD_IN_PROGRESS);
}
void
uhci_device_ctrl_abort(struct usbd_xfer *xfer)
{
 ;
 uhci_abort_xfer(xfer, USBD_CANCELLED);
}
void
uhci_device_ctrl_close(struct usbd_pipe *pipe)
{
}
void
uhci_device_intr_abort(struct usbd_xfer *xfer)
{
 ((!xfer->pipe->repeat || xfer->pipe->intrxfer == xfer) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../dev/usb/uhci.c", 1916, "!xfer->pipe->repeat || xfer->pipe->intrxfer == xfer"));
 uhci_abort_xfer(xfer, USBD_CANCELLED);
}
void
uhci_device_intr_close(struct usbd_pipe *pipe)
{
 struct uhci_pipe *upipe = (struct uhci_pipe *)pipe;
 struct uhci_softc *sc = (struct uhci_softc *)pipe->device->bus;
 int i, npoll;
 int s;
 npoll = upipe->u.intr.npoll;
 s = splraise(2);
 for (i = 0; i < npoll; i++)
  uhci_remove_intr(sc, upipe->u.intr.qhs[i]);
 _splx(s);
 usb_delay_ms(&sc->sc_bus, 2);
 for(i = 0; i < npoll; i++)
  uhci_free_sqh(sc, upipe->u.intr.qhs[i]);
 free(upipe->u.intr.qhs, 103, 0);
}
usbd_status
uhci_device_request(struct usbd_xfer *xfer)
{
 struct uhci_softc *sc = (struct uhci_softc *)xfer->device->bus;
 struct uhci_pipe *upipe = (struct uhci_pipe *)xfer->pipe;
 struct uhci_xfer *ux = (struct uhci_xfer *)xfer;
 usb_device_request_t *req = &xfer->request;
 int addr = xfer->device->address;
 int endpt = xfer->pipe->endpoint->edesc->bEndpointAddress;
 struct uhci_soft_td *setup, *data, *stat, *next, *dataend;
 struct uhci_soft_qh *sqh;
 u_int len;
 u_int32_t ls;
 usbd_status err;
 int s;
 ;
 ls = xfer->device->speed == 1 ? 0x04000000 : 0;
 len = ((req->wLength)[0] | ((req->wLength)[1] << 8));
 setup = upipe->u.ctl.setup;
 stat = upipe->u.ctl.stat;
 sqh = upipe->u.ctl.sqh;
 if (len != 0) {
  upipe->nexttoggle = 1;
  err = uhci_alloc_std_chain(sc, len, xfer, &data, &dataend);
  if (err)
   return (err);
  next = data;
  dataend->link.std = stat;
  dataend->td.td_link = (__uint32_t)(__builtin_constant_p(stat->physaddr | 0x00000004 | 0x00000000) ? (__uint32_t)(((__uint32_t)(stat->physaddr | 0x00000004 | 0x00000000) & 0xff) << 24 | ((__uint32_t)(stat->physaddr | 0x00000004 | 0x00000000) & 0xff00) << 8 | ((__uint32_t)(stat->physaddr | 0x00000004 | 0x00000000) & 0xff0000) >> 8 | ((__uint32_t)(stat->physaddr | 0x00000004 | 0x00000000) & 0xff000000) >> 24) : __swap32md(stat->physaddr | 0x00000004 | 0x00000000));
 } else {
  next = stat;
 }
 upipe->u.ctl.length = len;
 __builtin_memcpy((((void *)((char *)((&upipe->u.ctl.reqdma)->block->kaddr + (&upipe->u.ctl.reqdma)->offs) + (0)))), (req), (sizeof *req));
 setup->link.std = next;
 setup->td.td_link = (__uint32_t)(__builtin_constant_p(next->physaddr | 0x00000004 | 0x00000000) ? (__uint32_t)(((__uint32_t)(next->physaddr | 0x00000004 | 0x00000000) & 0xff) << 24 | ((__uint32_t)(next->physaddr | 0x00000004 | 0x00000000) & 0xff00) << 8 | ((__uint32_t)(next->physaddr | 0x00000004 | 0x00000000) & 0xff0000) >> 8 | ((__uint32_t)(next->physaddr | 0x00000004 | 0x00000000) & 0xff000000) >> 24) : __swap32md(next->physaddr | 0x00000004 | 0x00000000));
 setup->td.td_status = (__uint32_t)(__builtin_constant_p(((3) << 27) | ls | 0x00800000) ? (__uint32_t)(((__uint32_t)(((3) << 27) | ls | 0x00800000) & 0xff) << 24 | ((__uint32_t)(((3) << 27) | ls | 0x00800000) & 0xff00) << 8 | ((__uint32_t)(((3) << 27) | ls | 0x00800000) & 0xff0000) >> 8 | ((__uint32_t)(((3) << 27) | ls | 0x00800000) & 0xff000000) >> 24) : __swap32md(((3) << 27) | ls | 0x00800000));
 setup->td.td_token = (__uint32_t)(__builtin_constant_p(((((uint32_t)(sizeof *req)-1) << 21) | (((endpt)&0xf) << 15) | ((addr) << 8) | 0x0000002d)) ? (__uint32_t)(((__uint32_t)(((((uint32_t)(sizeof *req)-1) << 21) | (((endpt)&0xf) << 15) | ((addr) << 8) | 0x0000002d)) & 0xff) << 24 | ((__uint32_t)(((((uint32_t)(sizeof *req)-1) << 21) | (((endpt)&0xf) << 15) | ((addr) << 8) | 0x0000002d)) & 0xff00) << 8 | ((__uint32_t)(((((uint32_t)(sizeof *req)-1) << 21) | (((endpt)&0xf) << 15) | ((addr) << 8) | 0x0000002d)) & 0xff0000) >> 8 | ((__uint32_t)(((((uint32_t)(sizeof *req)-1) << 21) | (((endpt)&0xf) << 15) | ((addr) << 8) | 0x0000002d)) & 0xff000000) >> 24) : __swap32md(((((uint32_t)(sizeof *req)-1) << 21) | (((endpt)&0xf) << 15) | ((addr) << 8) | 0x0000002d)));
 setup->td.td_buffer = (__uint32_t)(__builtin_constant_p(((&upipe->u.ctl.reqdma)->block->map->dm_segs[0].ds_addr + (&upipe->u.ctl.reqdma)->offs + (0))) ? (__uint32_t)(((__uint32_t)(((&upipe->u.ctl.reqdma)->block->map->dm_segs[0].ds_addr + (&upipe->u.ctl.reqdma)->offs + (0))) & 0xff) << 24 | ((__uint32_t)(((&upipe->u.ctl.reqdma)->block->map->dm_segs[0].ds_addr + (&upipe->u.ctl.reqdma)->offs + (0))) & 0xff00) << 8 | ((__uint32_t)(((&upipe->u.ctl.reqdma)->block->map->dm_segs[0].ds_addr + (&upipe->u.ctl.reqdma)->offs + (0))) & 0xff0000) >> 8 | ((__uint32_t)(((&upipe->u.ctl.reqdma)->block->map->dm_segs[0].ds_addr + (&upipe->u.ctl.reqdma)->offs + (0))) & 0xff000000) >> 24) : __swap32md(((&upipe->u.ctl.reqdma)->block->map->dm_segs[0].ds_addr + (&upipe->u.ctl.reqdma)->offs + (0))));
 stat->link.std = ((void *)0);
 stat->td.td_link = (__uint32_t)(__builtin_constant_p(0x00000001) ? (__uint32_t)(((__uint32_t)(0x00000001) & 0xff) << 24 | ((__uint32_t)(0x00000001) & 0xff00) << 8 | ((__uint32_t)(0x00000001) & 0xff0000) >> 8 | ((__uint32_t)(0x00000001) & 0xff000000) >> 24) : __swap32md(0x00000001));
 stat->td.td_status = (__uint32_t)(__builtin_constant_p(((3) << 27) | ls | 0x00800000 | 0x01000000) ? (__uint32_t)(((__uint32_t)(((3) << 27) | ls | 0x00800000 | 0x01000000) & 0xff) << 24 | ((__uint32_t)(((3) << 27) | ls | 0x00800000 | 0x01000000) & 0xff00) << 8 | ((__uint32_t)(((3) << 27) | ls | 0x00800000 | 0x01000000) & 0xff0000) >> 8 | ((__uint32_t)(((3) << 27) | ls | 0x00800000 | 0x01000000) & 0xff000000) >> 24) : __swap32md(((3) << 27) | ls | 0x00800000 | 0x01000000));
 stat->td.td_token = (__uint32_t)(__builtin_constant_p(usbd_xfer_isread(xfer) ? ((((uint32_t)(0)-1) << 21) | (((endpt)&0xf) << 15) | ((addr) << 8) | 0x000000e1 | ((1) << 19)) : ((((uint32_t)(0)-1) << 21) | (((endpt)&0xf) << 15) | ((addr) << 8) | 0x00000069 | ((1) << 19))) ? (__uint32_t)(((__uint32_t)(usbd_xfer_isread(xfer) ? ((((uint32_t)(0)-1) << 21) | (((endpt)&0xf) << 15) | ((addr) << 8) | 0x000000e1 | ((1) << 19)) : ((((uint32_t)(0)-1) << 21) | (((endpt)&0xf) << 15) | ((addr) << 8) | 0x00000069 | ((1) << 19))) & 0xff) << 24 | ((__uint32_t)(usbd_xfer_isread(xfer) ? ((((uint32_t)(0)-1) << 21) | (((endpt)&0xf) << 15) | ((addr) << 8) | 0x000000e1 | ((1) << 19)) : ((((uint32_t)(0)-1) << 21) | (((endpt)&0xf) << 15) | ((addr) << 8) | 0x00000069 | ((1) << 19))) & 0xff00) << 8 | ((__uint32_t)(usbd_xfer_isread(xfer) ? ((((uint32_t)(0)-1) << 21) | (((endpt)&0xf) << 15) | ((addr) << 8) | 0x000000e1 | ((1) << 19)) : ((((uint32_t)(0)-1) << 21) | (((endpt)&0xf) << 15) | ((addr) << 8) | 0x00000069 | ((1) << 19))) & 0xff0000) >> 8 | ((__uint32_t)(usbd_xfer_isread(xfer) ? ((((uint32_t)(0)-1) << 21) | (((endpt)&0xf) << 15) | ((addr) << 8) | 0x000000e1 | ((1) << 19)) : ((((uint32_t)(0)-1) << 21) | (((endpt)&0xf) << 15) | ((addr) << 8) | 0x00000069 | ((1) << 19))) & 0xff000000) >> 24) : __swap32md(usbd_xfer_isread(xfer) ? ((((uint32_t)(0)-1) << 21) | (((endpt)&0xf) << 15) | ((addr) << 8) | 0x000000e1 | ((1) << 19)) : ((((uint32_t)(0)-1) << 21) | (((endpt)&0xf) << 15) | ((addr) << 8) | 0x00000069 | ((1) << 19))));
 stat->td.td_buffer = (__uint32_t)(__builtin_constant_p(0) ? (__uint32_t)(((__uint32_t)(0) & 0xff) << 24 | ((__uint32_t)(0) & 0xff00) << 8 | ((__uint32_t)(0) & 0xff0000) >> 8 | ((__uint32_t)(0) & 0xff000000) >> 24) : __swap32md(0));
 ux->stdstart = setup;
 ux->stdend = stat;
 if (!ux->isdone) {
  printf("%s: not done, ux=%p\n", __func__, ux);
 }
 ux->isdone = 0;
 sqh->elink = setup;
 sqh->qh.qh_elink = (__uint32_t)(__builtin_constant_p(setup->physaddr | 0x00000000) ? (__uint32_t)(((__uint32_t)(setup->physaddr | 0x00000000) & 0xff) << 24 | ((__uint32_t)(setup->physaddr | 0x00000000) & 0xff00) << 8 | ((__uint32_t)(setup->physaddr | 0x00000000) & 0xff0000) >> 8 | ((__uint32_t)(setup->physaddr | 0x00000000) & 0xff000000) >> 24) : __swap32md(setup->physaddr | 0x00000000));
 s = splraise(2);
 if (xfer->device->speed == 1)
  uhci_add_ls_ctrl(sc, sqh);
 else
  uhci_add_hs_ctrl(sc, sqh);
 do { if ((((ux))->inext.le_next = (&(sc)->sc_intrhead)->lh_first) != ((void *)0)) (&(sc)->sc_intrhead)->lh_first->inext.le_prev = &((ux))->inext.le_next; (&(sc)->sc_intrhead)->lh_first = ((ux)); ((ux))->inext.le_prev = &(&(sc)->sc_intrhead)->lh_first; } while (0);
 if (xfer->timeout && !sc->sc_bus.use_polling) {
  timeout_del(&xfer->timeout_handle);
  timeout_set(&xfer->timeout_handle, uhci_timeout, xfer);
  timeout_add_msec(&xfer->timeout_handle, xfer->timeout);
 }
 xfer->status = USBD_IN_PROGRESS;
 _splx(s);
 return (USBD_NORMAL_COMPLETION);
}
usbd_status
uhci_device_isoc_transfer(struct usbd_xfer *xfer)
{
 usbd_status err;
 ;
 err = usb_insert_transfer(xfer);
 if (err && err != USBD_IN_PROGRESS)
  return (err);
 uhci_device_isoc_enter(xfer);
 if (!err)
  uhci_device_isoc_start(((&xfer->pipe->queue)->sqh_first));
 return (err);
}
void
uhci_device_isoc_enter(struct usbd_xfer *xfer)
{
 struct uhci_softc *sc = (struct uhci_softc *)xfer->device->bus;
 struct uhci_pipe *upipe = (struct uhci_pipe *)xfer->pipe;
 struct iso *iso = &upipe->u.iso;
 struct uhci_soft_td *std;
 u_int32_t buf, len, status;
 int s, i, next, nframes;
 ;
 if (sc->sc_bus.dying)
  return;
 if (xfer->status == USBD_IN_PROGRESS) {
  printf("uhci_device_isoc_enter: xfer=%p in frame list\n", xfer);
 }
 if (iso->inuse >= 128)
  printf("uhci_device_isoc_enter: overflow!\n");
 next = iso->next;
 if (next == -1) {
  next = (UREAD2(sc, 0x06) + 3) % 128;
  ;
 }
 xfer->status = USBD_IN_PROGRESS;
 ((struct uhci_xfer *)xfer)->curframe = next;
 buf = ((&xfer->dmabuf)->block->map->dm_segs[0].ds_addr + (&xfer->dmabuf)->offs + (0));
 status = ((((0) << 27) | 0x00800000 | 0x02000000) | 0x3ff);
 nframes = xfer->nframes;
 s = splraise(2);
 for (i = 0; i < nframes; i++) {
  std = iso->stds[next];
  if (++next >= 128)
   next = 0;
  len = xfer->frlengths[i];
  std->td.td_buffer = (__uint32_t)(__builtin_constant_p(buf) ? (__uint32_t)(((__uint32_t)(buf) & 0xff) << 24 | ((__uint32_t)(buf) & 0xff00) << 8 | ((__uint32_t)(buf) & 0xff0000) >> 8 | ((__uint32_t)(buf) & 0xff000000) >> 24) : __swap32md(buf));
  if (i == nframes - 1)
   status |= 0x01000000;
  std->td.td_status = (__uint32_t)(__builtin_constant_p(status) ? (__uint32_t)(((__uint32_t)(status) & 0xff) << 24 | ((__uint32_t)(status) & 0xff00) << 8 | ((__uint32_t)(status) & 0xff0000) >> 8 | ((__uint32_t)(status) & 0xff000000) >> 24) : __swap32md(status));
  std->td.td_token &= (__uint32_t)(__builtin_constant_p(~0xffe00000) ? (__uint32_t)(((__uint32_t)(~0xffe00000) & 0xff) << 24 | ((__uint32_t)(~0xffe00000) & 0xff00) << 8 | ((__uint32_t)(~0xffe00000) & 0xff0000) >> 8 | ((__uint32_t)(~0xffe00000) & 0xff000000) >> 24) : __swap32md(~0xffe00000));
  std->td.td_token |= (__uint32_t)(__builtin_constant_p((((uint32_t)(len)-1) << 21)) ? (__uint32_t)(((__uint32_t)((((uint32_t)(len)-1) << 21)) & 0xff) << 24 | ((__uint32_t)((((uint32_t)(len)-1) << 21)) & 0xff00) << 8 | ((__uint32_t)((((uint32_t)(len)-1) << 21)) & 0xff0000) >> 8 | ((__uint32_t)((((uint32_t)(len)-1) << 21)) & 0xff000000) >> 24) : __swap32md((((uint32_t)(len)-1) << 21)));
  buf += len;
 }
 iso->next = next;
 iso->inuse += xfer->nframes;
 _splx(s);
}
usbd_status
uhci_device_isoc_start(struct usbd_xfer *xfer)
{
 struct uhci_softc *sc = (struct uhci_softc *)xfer->device->bus;
 struct uhci_pipe *upipe = (struct uhci_pipe *)xfer->pipe;
 struct uhci_xfer *ux = (struct uhci_xfer *)xfer;
 struct uhci_soft_td *end;
 int s, i;
 ;
 if (sc->sc_bus.dying)
  return (USBD_IOERROR);
 if (xfer->status != USBD_IN_PROGRESS)
  printf("uhci_device_isoc_start: not in progress %p\n", xfer);
 i = ux->curframe + xfer->nframes;
 if (i >= 128)
  i -= 128;
 end = upipe->u.iso.stds[i];
 if (end == ((void *)0)) {
  printf("uhci_device_isoc_start: end == NULL\n");
  return (USBD_INVAL);
 }
 s = splraise(2);
 ux->stdstart = end;
 ux->stdend = end;
 if (!ux->isdone)
  printf("%s: not done, ux=%p\n", __func__, ux);
 ux->isdone = 0;
 do { if ((((ux))->inext.le_next = (&(sc)->sc_intrhead)->lh_first) != ((void *)0)) (&(sc)->sc_intrhead)->lh_first->inext.le_prev = &((ux))->inext.le_next; (&(sc)->sc_intrhead)->lh_first = ((ux)); ((ux))->inext.le_prev = &(&(sc)->sc_intrhead)->lh_first; } while (0);
 _splx(s);
 return (USBD_IN_PROGRESS);
}
void
uhci_device_isoc_abort(struct usbd_xfer *xfer)
{
 struct uhci_xfer *ux = (struct uhci_xfer *)xfer;
 struct uhci_pipe *upipe = (struct uhci_pipe *)xfer->pipe;
 struct uhci_soft_td **stds = upipe->u.iso.stds;
 struct uhci_soft_td *std;
 int i, n, s, nframes, maxlen, len;
 s = splraise(2);
 if (xfer->status != USBD_NOT_STARTED &&
     xfer->status != USBD_IN_PROGRESS) {
  _splx(s);
  return;
 }
 xfer->status = USBD_CANCELLED;
 nframes = xfer->nframes;
 n = ux->curframe;
 maxlen = 0;
 for (i = 0; i < nframes; i++) {
  std = stds[n];
  std->td.td_status &= (__uint32_t)(__builtin_constant_p(~(0x00800000 | 0x01000000)) ? (__uint32_t)(((__uint32_t)(~(0x00800000 | 0x01000000)) & 0xff) << 24 | ((__uint32_t)(~(0x00800000 | 0x01000000)) & 0xff00) << 8 | ((__uint32_t)(~(0x00800000 | 0x01000000)) & 0xff0000) >> 8 | ((__uint32_t)(~(0x00800000 | 0x01000000)) & 0xff000000) >> 24) : __swap32md(~(0x00800000 | 0x01000000)));
  len = (((((__uint32_t)(__builtin_constant_p(std->td.td_token) ? (__uint32_t)(((__uint32_t)(std->td.td_token) & 0xff) << 24 | ((__uint32_t)(std->td.td_token) & 0xff00) << 8 | ((__uint32_t)(std->td.td_token) & 0xff0000) >> 8 | ((__uint32_t)(std->td.td_token) & 0xff000000) >> 24) : __swap32md(std->td.td_token))) >> 21) + 1) & 0x7ff);
  if (len > maxlen)
   maxlen = len;
  if (++n >= 128)
   n = 0;
 }
 delay(maxlen);
 ux->isdone = 1;
 usb_transfer_complete(xfer);
 _splx(s);
}
void
uhci_device_isoc_close(struct usbd_pipe *pipe)
{
 struct uhci_softc *sc = (struct uhci_softc *)pipe->device->bus;
 struct uhci_pipe *upipe = (struct uhci_pipe *)pipe;
 struct uhci_soft_td *std, *vstd;
 struct iso *iso;
 int i, s;
 iso = &upipe->u.iso;
 for (i = 0; i < 128; i++)
  iso->stds[i]->td.td_status &= (__uint32_t)(__builtin_constant_p(~0x00800000) ? (__uint32_t)(((__uint32_t)(~0x00800000) & 0xff) << 24 | ((__uint32_t)(~0x00800000) & 0xff00) << 8 | ((__uint32_t)(~0x00800000) & 0xff0000) >> 8 | ((__uint32_t)(~0x00800000) & 0xff000000) >> 24) : __swap32md(~0x00800000));
 usb_delay_ms(&sc->sc_bus, 2);
 s = splraise(2);
 for (i = 0; i < 128; i++) {
  std = iso->stds[i];
  for (vstd = sc->sc_vframes[i].htd;
       vstd != ((void *)0) && vstd->link.std != std;
       vstd = vstd->link.std)
   ;
  if (vstd == ((void *)0)) {
   printf("uhci_device_isoc_close: %p not found\n", std);
   _splx(s);
   return;
  }
  vstd->link = std->link;
  vstd->td.td_link = std->td.td_link;
  uhci_free_std(sc, std);
 }
 _splx(s);
 free(iso->stds, 103, 0);
}
usbd_status
uhci_setup_isoc(struct usbd_pipe *pipe)
{
 struct uhci_softc *sc = (struct uhci_softc *)pipe->device->bus;
 struct uhci_pipe *upipe = (struct uhci_pipe *)pipe;
 int addr = pipe->device->address;
 int endpt = pipe->endpoint->edesc->bEndpointAddress;
 int rd = ((endpt) & 0x80) == 0x80;
 struct uhci_soft_td *std, *vstd;
 u_int32_t token;
 struct iso *iso;
 int i, s;
 iso = &upipe->u.iso;
 iso->stds = malloc(128 *
      sizeof (struct uhci_soft_td *),
      103, 0x0001);
 token = rd ? ((((uint32_t)(0)-1) << 21) | (((endpt)&0xf) << 15) | ((addr) << 8) | 0x00000069 | ((0) << 19)) :
       ((((uint32_t)(0)-1) << 21) | (((endpt)&0xf) << 15) | ((addr) << 8) | 0x000000e1 | ((0) << 19));
 for (i = 0; i < 128; i++) {
  std = uhci_alloc_std(sc);
  if (std == 0)
   goto bad;
  std->td.td_status = (__uint32_t)(__builtin_constant_p(0x02000000) ? (__uint32_t)(((__uint32_t)(0x02000000) & 0xff) << 24 | ((__uint32_t)(0x02000000) & 0xff00) << 8 | ((__uint32_t)(0x02000000) & 0xff0000) >> 8 | ((__uint32_t)(0x02000000) & 0xff000000) >> 24) : __swap32md(0x02000000));
  std->td.td_token = (__uint32_t)(__builtin_constant_p(token) ? (__uint32_t)(((__uint32_t)(token) & 0xff) << 24 | ((__uint32_t)(token) & 0xff00) << 8 | ((__uint32_t)(token) & 0xff0000) >> 8 | ((__uint32_t)(token) & 0xff000000) >> 24) : __swap32md(token));
  iso->stds[i] = std;
 }
 s = splraise(2);
 for (i = 0; i < 128; i++) {
  std = iso->stds[i];
  vstd = sc->sc_vframes[i].htd;
  std->link = vstd->link;
  std->td.td_link = vstd->td.td_link;
  vstd->link.std = std;
  vstd->td.td_link = (__uint32_t)(__builtin_constant_p(std->physaddr | 0x00000000) ? (__uint32_t)(((__uint32_t)(std->physaddr | 0x00000000) & 0xff) << 24 | ((__uint32_t)(std->physaddr | 0x00000000) & 0xff00) << 8 | ((__uint32_t)(std->physaddr | 0x00000000) & 0xff0000) >> 8 | ((__uint32_t)(std->physaddr | 0x00000000) & 0xff000000) >> 24) : __swap32md(std->physaddr | 0x00000000));
 }
 _splx(s);
 iso->next = -1;
 iso->inuse = 0;
 return (USBD_NORMAL_COMPLETION);
 bad:
 while (--i >= 0)
  uhci_free_std(sc, iso->stds[i]);
 free(iso->stds, 103, 0);
 return (USBD_NOMEM);
}
void
uhci_device_isoc_done(struct usbd_xfer *xfer)
{
 struct uhci_xfer *ux = (struct uhci_xfer *)xfer;
 ;
 if (!((ux)->inext.le_prev != ((void *)0)))
  return;
        if (ux->stdend == ((void *)0)) {
                printf("uhci_device_isoc_done: xfer=%p stdend==NULL\n", xfer);
  return;
 }
 ux->stdend->td.td_status &= (__uint32_t)(__builtin_constant_p(~0x01000000) ? (__uint32_t)(((__uint32_t)(~0x01000000) & 0xff) << 24 | ((__uint32_t)(~0x01000000) & 0xff00) << 8 | ((__uint32_t)(~0x01000000) & 0xff0000) >> 8 | ((__uint32_t)(~0x01000000) & 0xff000000) >> 24) : __swap32md(~0x01000000));
 do { do { if (((ux))->inext.le_next != ((void *)0)) ((ux))->inext.le_next->inext.le_prev = ((ux))->inext.le_prev; *((ux))->inext.le_prev = ((ux))->inext.le_next; (((ux))->inext.le_prev) = ((void *)-1); (((ux))->inext.le_next) = ((void *)-1); } while (0); (ux)->inext.le_prev = ((void *)0); } while (0);
}
void
uhci_device_intr_done(struct usbd_xfer *xfer)
{
 struct uhci_softc *sc = (struct uhci_softc *)xfer->device->bus;
 struct uhci_pipe *upipe = (struct uhci_pipe *)xfer->pipe;
 struct uhci_xfer *ux = (struct uhci_xfer *)xfer;
 struct uhci_soft_qh *sqh;
 int i, npoll;
 ;
 npoll = upipe->u.intr.npoll;
 for(i = 0; i < npoll; i++) {
  sqh = upipe->u.intr.qhs[i];
  sqh->elink = ((void *)0);
  sqh->qh.qh_elink = (__uint32_t)(__builtin_constant_p(0x00000001) ? (__uint32_t)(((__uint32_t)(0x00000001) & 0xff) << 24 | ((__uint32_t)(0x00000001) & 0xff00) << 8 | ((__uint32_t)(0x00000001) & 0xff0000) >> 8 | ((__uint32_t)(0x00000001) & 0xff000000) >> 24) : __swap32md(0x00000001));
 }
 uhci_free_std_chain(sc, ux->stdstart, ((void *)0));
 if (xfer->pipe->repeat) {
  struct uhci_soft_td *data, *dataend;
  ;
  uhci_alloc_std_chain(sc, xfer->length, xfer, &data, &dataend);
  dataend->td.td_status |= (__uint32_t)(__builtin_constant_p(0x01000000) ? (__uint32_t)(((__uint32_t)(0x01000000) & 0xff) << 24 | ((__uint32_t)(0x01000000) & 0xff00) << 8 | ((__uint32_t)(0x01000000) & 0xff0000) >> 8 | ((__uint32_t)(0x01000000) & 0xff000000) >> 24) : __swap32md(0x01000000));
  ux->stdstart = data;
  ux->stdend = dataend;
  if (!ux->isdone) {
   printf("%s: not done, ux=%p\n", __func__, ux);
  }
  ux->isdone = 0;
  for (i = 0; i < npoll; i++) {
   sqh = upipe->u.intr.qhs[i];
   sqh->elink = data;
   sqh->qh.qh_elink = (__uint32_t)(__builtin_constant_p(data->physaddr | 0x00000000) ? (__uint32_t)(((__uint32_t)(data->physaddr | 0x00000000) & 0xff) << 24 | ((__uint32_t)(data->physaddr | 0x00000000) & 0xff00) << 8 | ((__uint32_t)(data->physaddr | 0x00000000) & 0xff0000) >> 8 | ((__uint32_t)(data->physaddr | 0x00000000) & 0xff000000) >> 24) : __swap32md(data->physaddr | 0x00000000));
  }
  xfer->status = USBD_IN_PROGRESS;
 } else {
  ;
  if (((ux)->inext.le_prev != ((void *)0)))
   do { do { if (((ux))->inext.le_next != ((void *)0)) ((ux))->inext.le_next->inext.le_prev = ((ux))->inext.le_prev; *((ux))->inext.le_prev = ((ux))->inext.le_next; (((ux))->inext.le_prev) = ((void *)-1); (((ux))->inext.le_next) = ((void *)-1); } while (0); (ux)->inext.le_prev = ((void *)0); } while (0);
 }
}
void
uhci_device_ctrl_done(struct usbd_xfer *xfer)
{
 struct uhci_softc *sc = (struct uhci_softc *)xfer->device->bus;
 struct uhci_pipe *upipe = (struct uhci_pipe *)xfer->pipe;
 struct uhci_xfer *ux = (struct uhci_xfer *)xfer;
 if (!(xfer->rqflags & 0x01))
  panic("uhci_device_ctrl_done: not a request");
 if (!((ux)->inext.le_prev != ((void *)0)))
  return;
 do { do { if (((ux))->inext.le_next != ((void *)0)) ((ux))->inext.le_next->inext.le_prev = ((ux))->inext.le_prev; *((ux))->inext.le_prev = ((ux))->inext.le_next; (((ux))->inext.le_prev) = ((void *)-1); (((ux))->inext.le_next) = ((void *)-1); } while (0); (ux)->inext.le_prev = ((void *)0); } while (0);
 if (xfer->device->speed == 1)
  uhci_remove_ls_ctrl(sc, upipe->u.ctl.sqh);
 else
  uhci_remove_hs_ctrl(sc, upipe->u.ctl.sqh);
 if (upipe->u.ctl.length != 0)
  uhci_free_std_chain(sc, ux->stdstart->link.std, ux->stdend);
 ;
}
void
uhci_device_bulk_done(struct usbd_xfer *xfer)
{
 struct uhci_softc *sc = (struct uhci_softc *)xfer->device->bus;
 struct uhci_pipe *upipe = (struct uhci_pipe *)xfer->pipe;
 struct uhci_xfer *ux = (struct uhci_xfer *)xfer;
 ;
 if (!((ux)->inext.le_prev != ((void *)0)))
  return;
 do { do { if (((ux))->inext.le_next != ((void *)0)) ((ux))->inext.le_next->inext.le_prev = ((ux))->inext.le_prev; *((ux))->inext.le_prev = ((ux))->inext.le_next; (((ux))->inext.le_prev) = ((void *)-1); (((ux))->inext.le_next) = ((void *)-1); } while (0); (ux)->inext.le_prev = ((void *)0); } while (0);
 uhci_remove_bulk(sc, upipe->u.bulk.sqh);
 uhci_free_std_chain(sc, ux->stdstart, ((void *)0));
 ;
}
void
uhci_add_intr(struct uhci_softc *sc, struct uhci_soft_qh *sqh)
{
 struct uhci_vframe *vf = &sc->sc_vframes[sqh->pos];
 struct uhci_soft_qh *eqh;
 ;
 eqh = vf->eqh;
 sqh->hlink = eqh->hlink;
 sqh->qh.qh_hlink = eqh->qh.qh_hlink;
 eqh->hlink = sqh;
 eqh->qh.qh_hlink = (__uint32_t)(__builtin_constant_p(sqh->physaddr | 0x00000002) ? (__uint32_t)(((__uint32_t)(sqh->physaddr | 0x00000002) & 0xff) << 24 | ((__uint32_t)(sqh->physaddr | 0x00000002) & 0xff00) << 8 | ((__uint32_t)(sqh->physaddr | 0x00000002) & 0xff0000) >> 8 | ((__uint32_t)(sqh->physaddr | 0x00000002) & 0xff000000) >> 24) : __swap32md(sqh->physaddr | 0x00000002));
 vf->eqh = sqh;
 vf->bandwidth++;
}
void
uhci_remove_intr(struct uhci_softc *sc, struct uhci_soft_qh *sqh)
{
 struct uhci_vframe *vf = &sc->sc_vframes[sqh->pos];
 struct uhci_soft_qh *pqh;
 ;
 if (!(sqh->qh.qh_elink & (__uint32_t)(__builtin_constant_p(0x00000001) ? (__uint32_t)(((__uint32_t)(0x00000001) & 0xff) << 24 | ((__uint32_t)(0x00000001) & 0xff00) << 8 | ((__uint32_t)(0x00000001) & 0xff0000) >> 8 | ((__uint32_t)(0x00000001) & 0xff000000) >> 24) : __swap32md(0x00000001)))) {
  sqh->qh.qh_elink = (__uint32_t)(__builtin_constant_p(0x00000001) ? (__uint32_t)(((__uint32_t)(0x00000001) & 0xff) << 24 | ((__uint32_t)(0x00000001) & 0xff00) << 8 | ((__uint32_t)(0x00000001) & 0xff0000) >> 8 | ((__uint32_t)(0x00000001) & 0xff000000) >> 24) : __swap32md(0x00000001));
  delay(5);
 }
 pqh = uhci_find_prev_qh(vf->hqh, sqh);
 pqh->hlink = sqh->hlink;
 pqh->qh.qh_hlink = sqh->qh.qh_hlink;
 delay(5);
 if (vf->eqh == sqh)
  vf->eqh = pqh;
 vf->bandwidth--;
}
usbd_status
uhci_device_setintr(struct uhci_softc *sc, struct uhci_pipe *upipe, int ival)
{
 struct uhci_soft_qh *sqh, **qhs;
 int i, npoll, s;
 u_int bestbw, bw, bestoffs, offs;
 ;
 if (ival == 0) {
  printf("uhci_device_setintr: 0 interval\n");
  return (USBD_INVAL);
 }
 if (ival > 128)
  ival = 128;
 npoll = (128 + ival - 1) / ival;
 ;
 qhs = mallocarray(npoll, sizeof(struct uhci_soft_qh *), 103,
     0x0002);
 if (qhs == ((void *)0))
  return (USBD_NOMEM);
 for (bestoffs = offs = 0, bestbw = ~0; offs < ival; offs++) {
  for (bw = i = 0; i < npoll; i++)
   bw += sc->sc_vframes[((i * ival + offs) & (128 -1))].bandwidth;
  if (bw < bestbw) {
   bestbw = bw;
   bestoffs = offs;
  }
 }
 ;
 for(i = 0; i < npoll; i++) {
  sqh = uhci_alloc_sqh(sc);
  if (sqh == ((void *)0)) {
   while (i > 0)
    uhci_free_sqh(sc, qhs[--i]);
   free(qhs, 103, 0);
   return (USBD_NOMEM);
  }
  sqh->elink = ((void *)0);
  sqh->qh.qh_elink = (__uint32_t)(__builtin_constant_p(0x00000001) ? (__uint32_t)(((__uint32_t)(0x00000001) & 0xff) << 24 | ((__uint32_t)(0x00000001) & 0xff00) << 8 | ((__uint32_t)(0x00000001) & 0xff0000) >> 8 | ((__uint32_t)(0x00000001) & 0xff000000) >> 24) : __swap32md(0x00000001));
  sqh->pos = ((i * ival + bestoffs) & (128 -1));
  qhs[i] = sqh;
 }
 upipe->u.intr.npoll = npoll;
 upipe->u.intr.qhs = qhs;
 s = splraise(2);
 for(i = 0; i < npoll; i++)
  uhci_add_intr(sc, upipe->u.intr.qhs[i]);
 _splx(s);
 ;
 return (USBD_NORMAL_COMPLETION);
}
usbd_status
uhci_open(struct usbd_pipe *pipe)
{
 struct uhci_softc *sc = (struct uhci_softc *)pipe->device->bus;
 struct uhci_pipe *upipe = (struct uhci_pipe *)pipe;
 usb_endpoint_descriptor_t *ed = pipe->endpoint->edesc;
 usbd_status err;
 int ival;
 ;
 upipe->nexttoggle = pipe->endpoint->savedtoggle;
 if (pipe->device->depth == 0) {
  switch (ed->bEndpointAddress) {
  case 0:
   pipe->methods = &uhci_root_ctrl_methods;
   break;
  case 0x80 | 1:
   pipe->methods = &uhci_root_intr_methods;
   break;
  default:
   return (USBD_INVAL);
  }
 } else {
  switch (ed->bmAttributes & 0x03) {
  case 0x00:
   pipe->methods = &uhci_device_ctrl_methods;
   upipe->u.ctl.sqh = uhci_alloc_sqh(sc);
   if (upipe->u.ctl.sqh == ((void *)0))
    goto bad;
   upipe->u.ctl.setup = uhci_alloc_std(sc);
   if (upipe->u.ctl.setup == ((void *)0)) {
    uhci_free_sqh(sc, upipe->u.ctl.sqh);
    goto bad;
   }
   upipe->u.ctl.stat = uhci_alloc_std(sc);
   if (upipe->u.ctl.stat == ((void *)0)) {
    uhci_free_sqh(sc, upipe->u.ctl.sqh);
    uhci_free_std(sc, upipe->u.ctl.setup);
    goto bad;
   }
   err = usb_allocmem(&sc->sc_bus,
      sizeof(usb_device_request_t),
      0, &upipe->u.ctl.reqdma);
   if (err) {
    uhci_free_sqh(sc, upipe->u.ctl.sqh);
    uhci_free_std(sc, upipe->u.ctl.setup);
    uhci_free_std(sc, upipe->u.ctl.stat);
    goto bad;
   }
   break;
  case 0x03:
   pipe->methods = &uhci_device_intr_methods;
   ival = pipe->interval;
   if (ival == (-1))
    ival = ed->bInterval;
   return (uhci_device_setintr(sc, upipe, ival));
  case 0x01:
   pipe->methods = &uhci_device_isoc_methods;
   return (uhci_setup_isoc(pipe));
  case 0x02:
   pipe->methods = &uhci_device_bulk_methods;
   upipe->u.bulk.sqh = uhci_alloc_sqh(sc);
   if (upipe->u.bulk.sqh == ((void *)0))
    goto bad;
   break;
  }
 }
 return (USBD_NORMAL_COMPLETION);
 bad:
 return (USBD_NOMEM);
}
usb_device_descriptor_t uhci_devd = {
 18,
 0x01,
 {0x00, 0x01},
 0x09,
 0x00,
 0x00,
 64,
 {0},{0},{0x00,0x01},
 1,2,0,
 1
};
usb_config_descriptor_t uhci_confd = {
 9,
 0x02,
 {9 +
  9 +
  7},
 1,
 1,
 0,
 0x40,
 0
};
usb_interface_descriptor_t uhci_ifcd = {
 9,
 0x04,
 0,
 0,
 1,
 0x09,
 0,
 0,
 0
};
usb_endpoint_descriptor_t uhci_endpd = {
 7,
 0x05,
 0x80 | 1,
 0x03,
 {8},
 255
};
usb_hub_descriptor_t uhci_hubd_piix = {
 8,
 0x29,
 2,
 { 0x0002 | 0x0008, 0 },
 50,
 0,
 { 0x00 },
};
usbd_status
uhci_portreset(struct uhci_softc *sc, int index)
{
 int lim, port, x;
 if (index == 1)
  port = 0x010;
 else if (index == 2)
  port = 0x012;
 else
  return (USBD_IOERROR);
 x = ((UREAD2(sc, port)) & (0x1000 | 0x0200 | 0x0040 | 0x0004));
 do { bus_space_barrier((sc)->iot, (sc)->ioh, 0, (sc)->sc_size, 0x01|0x02); bus_space_write_2((sc)->iot, (sc)->ioh, (port), (x | 0x0200)); } while ( 0);
 usb_delay_ms(&sc->sc_bus, 100);
 ;
 x = ((UREAD2(sc, port)) & (0x1000 | 0x0200 | 0x0040 | 0x0004));
 do { bus_space_barrier((sc)->iot, (sc)->ioh, 0, (sc)->sc_size, 0x01|0x02); bus_space_write_2((sc)->iot, (sc)->ioh, (port), (x & ~0x0200)); } while ( 0);
 delay(100);
 ;
 x = ((UREAD2(sc, port)) & (0x1000 | 0x0200 | 0x0040 | 0x0004));
 do { bus_space_barrier((sc)->iot, (sc)->ioh, 0, (sc)->sc_size, 0x01|0x02); bus_space_write_2((sc)->iot, (sc)->ioh, (port), (x | 0x0004)); } while ( 0);
 for (lim = 10; --lim > 0;) {
  usb_delay_ms(&sc->sc_bus, 50);
  x = UREAD2(sc, port);
  ;
  if (!(x & 0x0001)) {
   ;
   break;
  }
  if (x & (0x0008 | 0x0002)) {
   do { bus_space_barrier((sc)->iot, (sc)->ioh, 0, (sc)->sc_size, 0x01|0x02); bus_space_write_2((sc)->iot, (sc)->ioh, (port), (((x) & (0x1000 | 0x0200 | 0x0040 | 0x0004)) | (x & (0x0008 | 0x0002)))); } while ( 0);
   continue;
  }
  if (x & 0x0004)
   break;
  do { bus_space_barrier((sc)->iot, (sc)->ioh, 0, (sc)->sc_size, 0x01|0x02); bus_space_write_2((sc)->iot, (sc)->ioh, (port), (((x) & (0x1000 | 0x0200 | 0x0040 | 0x0004)) | 0x0004)); } while ( 0);
 }
 ;
 if (lim <= 0) {
  ;
  return (USBD_TIMEOUT);
 }
 sc->sc_isreset = 1;
 return (USBD_NORMAL_COMPLETION);
}
usbd_status
uhci_root_ctrl_transfer(struct usbd_xfer *xfer)
{
 usbd_status err;
 err = usb_insert_transfer(xfer);
 if (err)
  return (err);
 return (uhci_root_ctrl_start(((&xfer->pipe->queue)->sqh_first)));
}
usbd_status
uhci_root_ctrl_start(struct usbd_xfer *xfer)
{
 struct uhci_softc *sc = (struct uhci_softc *)xfer->device->bus;
 usb_device_request_t *req;
 void *buf = ((void *)0);
 int port, x;
 int s, len, value, index, status, change, l, totlen = 0;
 usb_port_status_t ps;
 usbd_status err;
 if (sc->sc_bus.dying)
  return (USBD_IOERROR);
 if (!(xfer->rqflags & 0x01))
  panic("uhci_root_ctrl_start: not a request");
 req = &xfer->request;
 ;
 len = ((req->wLength)[0] | ((req->wLength)[1] << 8));
 value = ((req->wValue)[0] | ((req->wValue)[1] << 8));
 index = ((req->wIndex)[0] | ((req->wIndex)[1] << 8));
 if (len != 0)
  buf = ((void *)((char *)((&xfer->dmabuf)->block->kaddr + (&xfer->dmabuf)->offs) + (0)));
 switch(((req->bRequest) | ((req->bmRequestType) << 8))) {
 case ((0x01) | (((0x00 | 0x00 | 0x00)) << 8)):
 case ((0x01) | (((0x00 | 0x00 | 0x01)) << 8)):
 case ((0x01) | (((0x00 | 0x00 | 0x02)) << 8)):
  break;
 case ((0x08) | (((0x80 | 0x00 | 0x00)) << 8)):
  if (len > 0) {
   *(u_int8_t *)buf = sc->sc_conf;
   totlen = 1;
  }
  break;
 case ((0x06) | (((0x80 | 0x00 | 0x00)) << 8)):
  ;
  switch(value >> 8) {
  case 0x01:
   if ((value & 0xff) != 0) {
    err = USBD_IOERROR;
    goto ret;
   }
   totlen = l = min(len, 18);
   ((uhci_devd.idVendor)[0] = (u_int8_t)(sc->sc_id_vendor), (uhci_devd.idVendor)[1] = (u_int8_t)((sc->sc_id_vendor) >> 8));
   __builtin_memcpy((buf), (&uhci_devd), (l));
   break;
  case 0x02:
   if ((value & 0xff) != 0) {
    err = USBD_IOERROR;
    goto ret;
   }
   totlen = l = min(len, 9);
   __builtin_memcpy((buf), (&uhci_confd), (l));
   buf = (char *)buf + l;
   len -= l;
   l = min(len, 9);
   totlen += l;
   __builtin_memcpy((buf), (&uhci_ifcd), (l));
   buf = (char *)buf + l;
   len -= l;
   l = min(len, 7);
   totlen += l;
   __builtin_memcpy((buf), (&uhci_endpd), (l));
   break;
  case 0x03:
   if (len == 0)
    break;
   *(u_int8_t *)buf = 0;
   totlen = 1;
   switch (value & 0xff) {
   case 0:
    totlen = usbd_str(buf, len, "\001");
    break;
   case 1:
    totlen = usbd_str(buf, len, sc->sc_vendor);
    break;
   case 2:
    totlen = usbd_str(buf, len, "UHCI root hub");
    break;
   }
   break;
  default:
   err = USBD_IOERROR;
   goto ret;
  }
  break;
 case ((0x0a) | (((0x80 | 0x00 | 0x01)) << 8)):
  if (len > 0) {
   *(u_int8_t *)buf = 0;
   totlen = 1;
  }
  break;
 case ((0x00) | (((0x80 | 0x00 | 0x00)) << 8)):
  if (len > 1) {
   ((((usb_status_t *)buf)->wStatus)[0] = (u_int8_t)(0x0001), (((usb_status_t *)buf)->wStatus)[1] = (u_int8_t)((0x0001) >> 8));
   totlen = 2;
  }
  break;
 case ((0x00) | (((0x80 | 0x00 | 0x01)) << 8)):
 case ((0x00) | (((0x80 | 0x00 | 0x02)) << 8)):
  if (len > 1) {
   ((((usb_status_t *)buf)->wStatus)[0] = (u_int8_t)(0), (((usb_status_t *)buf)->wStatus)[1] = (u_int8_t)((0) >> 8));
   totlen = 2;
  }
  break;
 case ((0x05) | (((0x00 | 0x00 | 0x00)) << 8)):
  if (value >= 128) {
   err = USBD_IOERROR;
   goto ret;
  }
  break;
 case ((0x09) | (((0x00 | 0x00 | 0x00)) << 8)):
  if (value != 0 && value != 1) {
   err = USBD_IOERROR;
   goto ret;
  }
  sc->sc_conf = value;
  break;
 case ((0x07) | (((0x00 | 0x00 | 0x00)) << 8)):
  break;
 case ((0x03) | (((0x00 | 0x00 | 0x00)) << 8)):
 case ((0x03) | (((0x00 | 0x00 | 0x01)) << 8)):
 case ((0x03) | (((0x00 | 0x00 | 0x02)) << 8)):
  err = USBD_IOERROR;
  goto ret;
 case ((0x0b) | (((0x00 | 0x00 | 0x01)) << 8)):
  break;
 case ((0x0c) | (((0x00 | 0x00 | 0x02)) << 8)):
  break;
 case ((0x01) | (((0x00 | 0x20 | 0x00)) << 8)):
  break;
 case ((0x01) | (((0x00 | 0x20 | 0x03)) << 8)):
  ;
  if (index == 1)
   port = 0x010;
  else if (index == 2)
   port = 0x012;
  else {
   err = USBD_IOERROR;
   goto ret;
  }
  switch(value) {
  case 1:
   x = ((UREAD2(sc, port)) & (0x1000 | 0x0200 | 0x0040 | 0x0004));
   do { bus_space_barrier((sc)->iot, (sc)->ioh, 0, (sc)->sc_size, 0x01|0x02); bus_space_write_2((sc)->iot, (sc)->ioh, (port), (x & ~0x0004)); } while ( 0);
   break;
  case 2:
   x = ((UREAD2(sc, port)) & (0x1000 | 0x0200 | 0x0040 | 0x0004));
   do { bus_space_barrier((sc)->iot, (sc)->ioh, 0, (sc)->sc_size, 0x01|0x02); bus_space_write_2((sc)->iot, (sc)->ioh, (port), (x & ~0x1000)); } while ( 0);
   break;
  case 4:
   x = ((UREAD2(sc, port)) & (0x1000 | 0x0200 | 0x0040 | 0x0004));
   do { bus_space_barrier((sc)->iot, (sc)->ioh, 0, (sc)->sc_size, 0x01|0x02); bus_space_write_2((sc)->iot, (sc)->ioh, (port), (x & ~0x0200)); } while ( 0);
   break;
  case 16:
   x = ((UREAD2(sc, port)) & (0x1000 | 0x0200 | 0x0040 | 0x0004));
   do { bus_space_barrier((sc)->iot, (sc)->ioh, 0, (sc)->sc_size, 0x01|0x02); bus_space_write_2((sc)->iot, (sc)->ioh, (port), (x | 0x0002)); } while ( 0);
   break;
  case 17:
   x = ((UREAD2(sc, port)) & (0x1000 | 0x0200 | 0x0040 | 0x0004));
   do { bus_space_barrier((sc)->iot, (sc)->ioh, 0, (sc)->sc_size, 0x01|0x02); bus_space_write_2((sc)->iot, (sc)->ioh, (port), (x | 0x0008)); } while ( 0);
   break;
  case 19:
   x = ((UREAD2(sc, port)) & (0x1000 | 0x0200 | 0x0040 | 0x0004));
   do { bus_space_barrier((sc)->iot, (sc)->ioh, 0, (sc)->sc_size, 0x01|0x02); bus_space_write_2((sc)->iot, (sc)->ioh, (port), (x | 0x0800)); } while ( 0);
   break;
  case 20:
   sc->sc_isreset = 0;
   err = USBD_NORMAL_COMPLETION;
   goto ret;
  case 0:
  case 3:
  case 8:
  case 9:
  case 18:
  default:
   err = USBD_IOERROR;
   goto ret;
  }
  break;
 case ((0x02) | (((0x80 | 0x20 | 0x03)) << 8)):
  if (index == 1)
   port = 0x010;
  else if (index == 2)
   port = 0x012;
  else {
   err = USBD_IOERROR;
   goto ret;
  }
  if (len > 0) {
   *(u_int8_t *)buf =
    (UREAD2(sc, port) & 0x0030) >>
    4;
   totlen = 1;
  }
  break;
 case ((0x06) | (((0x80 | 0x20 | 0x00)) << 8)):
  if ((value & 0xff) != 0) {
   err = USBD_IOERROR;
   goto ret;
  }
  l = min(len, 8);
  totlen = l;
  __builtin_memcpy((buf), (&uhci_hubd_piix), (l));
  break;
 case ((0x00) | (((0x80 | 0x20 | 0x00)) << 8)):
  if (len != 4) {
   err = USBD_IOERROR;
   goto ret;
  }
  __builtin_memset((buf), (0), (len));
  totlen = len;
  break;
 case ((0x00) | (((0x80 | 0x20 | 0x03)) << 8)):
  if (index == 1)
   port = 0x010;
  else if (index == 2)
   port = 0x012;
  else {
   err = USBD_IOERROR;
   goto ret;
  }
  if (len != 4) {
   err = USBD_IOERROR;
   goto ret;
  }
  x = UREAD2(sc, port);
  status = change = 0;
  if (x & 0x0001)
   status |= 0x0001;
  if (x & 0x0002)
   change |= 0x0001;
  if (x & 0x0004)
   status |= 0x0002;
  if (x & 0x0008)
   change |= 0x0002;
  if (x & 0x0400)
   status |= 0x0008;
  if (x & 0x0800)
   change |= 0x0008;
  if (x & 0x1000)
   status |= 0x0004;
  if (x & 0x0100)
   status |= 0x0200;
  status |= 0x0100;
  if (sc->sc_isreset)
   change |= 0x0010;
  ((ps.wPortStatus)[0] = (u_int8_t)(status), (ps.wPortStatus)[1] = (u_int8_t)((status) >> 8));
  ((ps.wPortChange)[0] = (u_int8_t)(change), (ps.wPortChange)[1] = (u_int8_t)((change) >> 8));
  l = min(len, sizeof ps);
  __builtin_memcpy((buf), (&ps), (l));
  totlen = l;
  break;
 case ((0x07) | (((0x00 | 0x20 | 0x00)) << 8)):
  err = USBD_IOERROR;
  goto ret;
 case ((0x03) | (((0x00 | 0x20 | 0x00)) << 8)):
  break;
 case ((0x03) | (((0x00 | 0x20 | 0x03)) << 8)):
  if (index == 1)
   port = 0x010;
  else if (index == 2)
   port = 0x012;
  else {
   err = USBD_IOERROR;
   goto ret;
  }
  switch(value) {
  case 1:
   x = ((UREAD2(sc, port)) & (0x1000 | 0x0200 | 0x0040 | 0x0004));
   do { bus_space_barrier((sc)->iot, (sc)->ioh, 0, (sc)->sc_size, 0x01|0x02); bus_space_write_2((sc)->iot, (sc)->ioh, (port), (x | 0x0004)); } while ( 0);
   break;
  case 2:
   x = ((UREAD2(sc, port)) & (0x1000 | 0x0200 | 0x0040 | 0x0004));
   do { bus_space_barrier((sc)->iot, (sc)->ioh, 0, (sc)->sc_size, 0x01|0x02); bus_space_write_2((sc)->iot, (sc)->ioh, (port), (x | 0x1000)); } while ( 0);
   break;
  case 4:
   err = uhci_portreset(sc, index);
   goto ret;
  case 8:
   err = USBD_NORMAL_COMPLETION;
   goto ret;
  case 30:
   err = USBD_NORMAL_COMPLETION;
   goto ret;
  case 16:
  case 17:
  case 19:
  case 0:
  case 3:
  case 9:
  case 18:
  case 20:
  default:
   err = USBD_IOERROR;
   goto ret;
  }
  break;
 default:
  err = USBD_IOERROR;
  goto ret;
 }
 xfer->actlen = totlen;
 err = USBD_NORMAL_COMPLETION;
 ret:
 xfer->status = err;
 s = splraise(2);
 usb_transfer_complete(xfer);
 _splx(s);
 return (err);
}
void
uhci_root_ctrl_abort(struct usbd_xfer *xfer)
{
}
void
uhci_root_ctrl_close(struct usbd_pipe *pipe)
{
 ;
}
void
uhci_root_intr_abort(struct usbd_xfer *xfer)
{
 struct uhci_softc *sc = (struct uhci_softc *)xfer->device->bus;
 int s;
 timeout_del(&sc->sc_root_intr);
 sc->sc_intrxfer = ((void *)0);
 xfer->status = USBD_CANCELLED;
 s = splraise(2);
 usb_transfer_complete(xfer);
 _splx(s);
}
usbd_status
uhci_root_intr_transfer(struct usbd_xfer *xfer)
{
 usbd_status err;
 err = usb_insert_transfer(xfer);
 if (err)
  return (err);
 return (uhci_root_intr_start(((&xfer->pipe->queue)->sqh_first)));
}
usbd_status
uhci_root_intr_start(struct usbd_xfer *xfer)
{
 struct uhci_softc *sc = (struct uhci_softc *)xfer->device->bus;
 if (sc->sc_bus.dying)
  return (USBD_IOERROR);
 sc->sc_intrxfer = xfer;
 timeout_add_msec(&sc->sc_root_intr, 255);
 return (USBD_IN_PROGRESS);
}
void
uhci_root_intr_close(struct usbd_pipe *pipe)
{
}
void
uhci_root_intr_done(struct usbd_xfer *xfer)
{
 struct uhci_softc *sc = (struct uhci_softc *)xfer->device->bus;
 if (xfer->pipe->repeat)
  timeout_add_msec(&sc->sc_root_intr, 255);
}
