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
void usbd_fill_deviceinfo(struct usbd_device *, struct usb_device_info *, int);
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
struct usbd_quirks {
 u_int32_t uq_flags;
};
extern const struct usbd_quirks usbd_no_quirk;
const struct usbd_quirks *usbd_find_quirk(usb_device_descriptor_t *);
usbd_status usbd_set_config(struct usbd_device *, int);
void usbd_devinfo(struct usbd_device *, int, char *, size_t);
void usbd_devinfo_vp(struct usbd_device *, char *, size_t,
      char *, size_t, int);
char *usbd_get_device_string(struct usbd_device *, uByte);
char *usbd_get_string(struct usbd_device *, int, char *, size_t);
int usbd_getnewaddr(struct usbd_bus *);
int usbd_print(void *, const char *);
void usbd_free_iface_data(struct usbd_device *, int);
usbd_status usbd_probe_and_attach(struct device *,
      struct usbd_device *, int, int);
int usbd_printBCD(char *cp, size_t len, int bcd);
void usb_free_device(struct usbd_device *);
int usbd_parse_idesc(struct usbd_device *, struct usbd_interface *);
struct usb_known_vendor {
 u_int16_t vendor;
 char *vendorname;
};
struct usb_known_product {
 u_int16_t vendor;
 u_int16_t product;
 char *productname;
};
const struct usb_known_product usb_known_products[] = {
 {
     0x0506, 0x009d,
     "HomeConnect",
 },
 {
     0x0506, 0x00a0,
     "Bluetooth",
 },
 {
     0x0506, 0x03e8,
     "3C19250 Ethernet",
 },
 {
     0x0506, 0x0a01,
     "3CRSHEW696",
 },
 {
     0x0506, 0x11f8,
     "HomeConnect 3C460",
 },
 {
     0x0506, 0x3021,
     "U.S.Robotics 56000",
 },
 {
     0x0506, 0x4601,
     "HomeConnect 3C460B",
 },
 {
     0x6891, 0xa727,
     "3CRUSB10075",
 },
 {
     0xa727, 0x6893,
     "AR5523",
 },
 {
     0xa727, 0x6895,
     "AR5523",
 },
 {
     0xa727, 0x6897,
     "AR5523",
 },
 {
     0x04c1, 0x0082,
     "3Com OfficeConnect Analog Modem",
 },
 {
     0x04c1, 0x008f,
     "3Com U.S. Robotics Pro ISDN TA",
 },
 {
     0x04c1, 0x009d,
     "3Com HomeConnect",
 },
 {
     0x04c1, 0x3021,
     "U.S.Robotics 56000",
 },
 {
     0x1472, 0x0009,
     "Aolynk WUB320g",
 },
 {
     0x1a61, 0x3410,
     "Stereo Plug Cable",
 },
 {
     0x07b8, 0x110c,
     "XX1",
 },
 {
     0x07b8, 0x200c,
     "XX2",
 },
 {
     0x07b8, 0x2770,
     "RT2770",
 },
 {
     0x07b8, 0x2870,
     "RT2870",
 },
 {
     0x07b8, 0x3070,
     "RT3070",
 },
 {
     0x07b8, 0x3071,
     "RT3071",
 },
 {
     0x07b8, 0x3072,
     "RT3072",
 },
 {
     0x1482, 0x3c09,
     "RT2870",
 },
 {
     0x07b8, 0x4000,
     "URE450 Ethernet",
 },
 {
     0x07b8, 0x4002,
     "UFE1000 Fast Ethernet",
 },
 {
     0x07b8, 0x4003,
     "1/10/100 Ethernet",
 },
 {
     0x07b8, 0x4004,
     "XX4",
 },
 {
     0x07b8, 0x4007,
     "XX5",
 },
 {
     0x07b8, 0x400b,
     "XX6",
 },
 {
     0x07b8, 0x401a,
     "RTL8151",
 },
 {
     0x07b8, 0x400c,
     "XX7",
 },
 {
     0x07b8, 0x4102,
     "XX8",
 },
 {
     0x07b8, 0x4104,
     "XX9",
 },
 {
     0x07b8, 0x6001,
     "WL54",
 },
 {
     0x07b8, 0x8178,
     "RTL8192CU",
 },
 {
     0x07b8, 0x8188,
     "RTL8188CU",
 },
 {
     0x07b8, 0x8189,
     "RTL8188CU",
 },
 {
     0x07b8, 0xabc1,
     "XX10",
 },
 {
     0x07b8, 0xb000,
     "BWU613",
 },
 {
     0x07b8, 0xb21b,
     "HWU54DM",
 },
 {
     0x07b8, 0xb21c,
     "RT2573",
 },
 {
     0x07b8, 0xb21d,
     "RT2573",
 },
 {
     0x07b8, 0xb21e,
     "RT2573",
 },
 {
     0x07b8, 0xb21f,
     "WUG2700",
 },
 {
     0x083a, 0x1046,
     "USB320-EC Ethernet",
 },
 {
     0x083a, 0x3501,
     "2664W",
 },
 {
     0x083a, 0x3503,
     "T-Sinus 111 WLAN",
 },
 {
     0x083a, 0x4505,
     "SMCWUSB-G",
 },
 {
     0x083a, 0x4506,
     "SMCWUSBT-G2",
 },
 {
     0x083a, 0x4507,
     "SMCWUSBT-G2",
 },
 {
     0x083a, 0x4521,
     "PrismGT USB 2.0 WLAN",
 },
 {
     0x083a, 0x5046,
     "SpeedStream Ethernet",
 },
 {
     0x083a, 0x6618,
     "RT2870",
 },
 {
     0x083a, 0x7511,
     "RT3070",
 },
 {
     0x083a, 0x7512,
     "RT2770",
 },
 {
     0x083a, 0x7522,
     "RT2870",
 },
 {
     0x083a, 0x8522,
     "RT2870",
 },
 {
     0x083a, 0xa512,
     "RT3070",
 },
 {
     0x083a, 0xa618,
     "RT2870",
 },
 {
     0x083a, 0xa701,
     "RT3070",
 },
 {
     0x083a, 0xa702,
     "RT3070",
 },
 {
     0x083a, 0xa703,
     "RT3070",
 },
 {
     0x083a, 0xa704,
     "AR9280+AR7010",
 },
 {
     0x083a, 0xb522,
     "RT2870",
 },
 {
     0x083a, 0xc512,
     "RTL8192SU",
 },
 {
     0x083a, 0xc522,
     "RT3070",
 },
 {
     0x083a, 0xd522,
     "RT3070",
 },
 {
     0x083a, 0xe501,
     "ZD1211B",
 },
 {
     0x083a, 0xe503,
     "WN4501H-LF-IR",
 },
 {
     0x083a, 0xe506,
     "WUS-201",
 },
 {
     0x083a, 0xf522,
     "WN7512",
 },
 {
     0x4766, 0x0001,
     "MEZ1000 RDA",
 },
 {
     0x0402, 0x5632,
     "USB 2.0 Data Link",
 },
 {
     0x0967, 0x0204,
     "Warplink",
 },
 {
     0x04a5, 0x12a6,
     "Acerscan C310U",
 },
 {
     0x04a5, 0x2022,
     "Acerscan 320U",
 },
 {
     0x04a5, 0x2040,
     "Acerscan 640U",
 },
 {
     0x04a5, 0x2060,
     "Acerscan 620U",
 },
 {
     0x04a5, 0x6003,
     "ATA/ATAPI",
 },
 {
     0x04a5, 0x9000,
     "AWL300",
 },
 {
     0x04a5, 0x9001,
     "AWL400",
 },
 {
     0x1668, 0x0408,
     "Prism2.5 WLAN",
 },
 {
     0x1668, 0x0421,
     "Prism2.5 WLAN A",
 },
 {
     0x1668, 0x1200,
     "AR9287+AR7010",
 },
 {
     0x1668, 0x6106,
     "ROPEX FreeLan 802.11b",
 },
 {
     0x1668, 0x7605,
     "802UAT1",
 },
 {
     0x09c4, 0x0011,
     "ACT-IR2000U FIR",
 },
 {
     0x0853, 0x0100,
     "HHKB Professional",
 },
 {
     0x0854, 0x0100,
     "I/O Board",
 },
 {
     0x0854, 0x0101,
     "I/O Board, rev. 1",
 },
 {
     0x03f3, 0x0020,
     "AWN-8020 WLAN",
 },
 {
     0x0bf6, 0xa001,
     "Cable 205",
 },
 {
     0x05dd, 0xff31,
     "AWU-120",
 },
 {
     0x07a6, 0x07c2,
     "AN986A Ethernet",
 },
 {
     0x07a6, 0x0986,
     "AN986 Ethernet",
 },
 {
     0x07a6, 0x8511,
     "AN8511 Ethernet",
 },
 {
     0x07a6, 0x8513,
     "AN8513 Ethernet",
 },
 {
     0x07a6, 0x8515,
     "AN8515 Ethernet",
 },
 {
     0x06e1, 0x0008,
     "UBS-10BT Ethernet",
 },
 {
     0x06e1, 0x0009,
     "UBS-10BT Ethernet",
 },
 {
     0x3334, 0x1701,
     "Fast Ethernet",
 },
 {
     0x0c08, 0x0378,
     "Q-Drive",
 },
 {
     0x06bd, 0x0001,
     "SnapScan 1212U",
 },
 {
     0x06bd, 0x0002,
     "SnapScan 1236U",
 },
 {
     0x06bd, 0x0100,
     "SnapScan Touch",
 },
 {
     0x06bd, 0x2061,
     "SnapScan 1212U",
 },
 {
     0x06bd, 0x208d,
     "SnapScan e40",
 },
 {
     0x06bd, 0x208f,
     "SnapScan e50",
 },
 {
     0x06bd, 0x2091,
     "SnapScan e20",
 },
 {
     0x06bd, 0x2095,
     "SnapScan e25",
 },
 {
     0x06bd, 0x2097,
     "SnapScan e26",
 },
 {
     0x06bd, 0x20fd,
     "SnapScan e52",
 },
 {
     0x0f3d, 0x0112,
     "CDMA Wireless EVDO card",
 },
 {
     0x0f3d, 0x68aa,
     "Aircard 313U",
 },
 {
     0x12fd, 0x1001,
     "AWU2000B",
 },
 {
     0x1eda, 0x2012,
     "RT3070",
 },
 {
     0x1eda, 0x2310,
     "RT3070",
 },
 {
     0x124a, 0x168b,
     "WM-168b",
 },
 {
     0x0529, 0x0001,
     "USB-HASP 0.06",
 },
 {
     0x11f7, 0x02df,
     "One Touch 535/735",
 },
 {
     0x06b9, 0x0120,
     "SpeedTouch 120g",
 },
 {
     0x06b9, 0x0121,
     "SpeedTouch 121g",
 },
 {
     0x058f, 0x9213,
     "MacAlly Kbd Hub",
 },
 {
     0x058f, 0x9215,
     "AU9814 Hub",
 },
 {
     0x058f, 0x9410,
     "MicroConnectors/StrongMan",
 },
 {
     0x058f, 0x9472,
     "NEC Kbd Hub",
 },
 {
     0x0566, 0x2802,
     "Kbd Hub",
 },
 {
     0x07c9, 0xb100,
     "AT-USB100",
 },
 {
     0x8516, 0x2070,
     "RT2070",
 },
 {
     0x8516, 0x2770,
     "RT2770",
 },
 {
     0x8516, 0x2870,
     "RT2870",
 },
 {
     0x8516, 0x3070,
     "RT3070",
 },
 {
     0x8516, 0x3071,
     "RT3071",
 },
 {
     0x8516, 0x3072,
     "RT3072",
 },
 {
     0x8516, 0x3572,
     "RT3572",
 },
 {
     0x04d2, 0x0070,
     "ADA70 Speakers",
 },
 {
     0x04d2, 0xff05,
     "ASC495 Speakers",
 },
 {
     0x1bc9, 0x6001,
     "Neptune 3",
 },
 {
     0x0bb2, 0x0302,
     "WLAN",
 },
 {
     0x0bb2, 0x6098,
     "NTL 250 cable modem",
 },
 {
     0x051d, 0x0002,
     "UPS",
 },
 {
     0x051d, 0x0003,
     "5G UPS",
 },
 {
     0x0e0b, 0x9031,
     "RT2870",
 },
 {
     0x0e0b, 0x9041,
     "RT2870",
 },
 {
     0x18c5, 0x0002,
     "CG-WLUSB2GO",
 },
 {
     0x18c5, 0x0008,
     "CG-WLUSB2GNR",
 },
 {
     0x18c5, 0x0012,
     "RT2870",
 },
 {
     0x15c5, 0x0008,
     "RT2870",
 },
 {
     0x1110, 0x900f,
     "Eagle I",
 },
 {
     0x1110, 0x9010,
     "Eagle I",
 },
 {
     0x1110, 0x9021,
     "Eagle II",
 },
 {
     0x1110, 0x9022,
     "Eagle II",
 },
 {
     0x1110, 0x9023,
     "Eagle IIC",
 },
 {
     0x1110, 0x9024,
     "Eagle IIC",
 },
 {
     0x1110, 0x9031,
     "Eagle III",
 },
 {
     0x1110, 0x9032,
     "Eagle III",
 },
 {
     0x0456, 0xf000,
     "gnICE",
 },
 {
     0x0456, 0xf001,
     "gnICE+",
 },
 {
     0x0547, 0x2008,
     "Serial",
 },
 {
     0x0547, 0x2131,
     "EZUSB",
 },
 {
     0x0547, 0x2720,
     "EZLINK",
 },
 {
     0x16d5, 0x6202,
     "NTT DoCoMo A2502",
 },
 {
     0x16d5, 0x6501,
     "ADU-E100H",
 },
 {
     0x16d5, 0x6502,
     "ADU-500A",
 },
 {
     0x03e8, 0x0008,
     "Ethernet",
 },
 {
     0x05ac, 0x020e,
     "Keyboard/Trackpad",
 },
 {
     0x05ac, 0x020f,
     "Keyboard/Trackpad",
 },
 {
     0x05ac, 0x0214,
     "Keyboard/Trackpad",
 },
 {
     0x05ac, 0x0215,
     "Keyboard/Trackpad",
 },
 {
     0x05ac, 0x0223,
     "Keyboard/Trackpad",
 },
 {
     0x05ac, 0x0224,
     "Keyboard/Trackpad",
 },
 {
     0x05ac, 0x0225,
     "Keyboard/Trackpad",
 },
 {
     0x05ac, 0x0230,
     "Keyboard/Trackpad",
 },
 {
     0x05ac, 0x0231,
     "Keyboard/Trackpad",
 },
 {
     0x05ac, 0x0232,
     "Keyboard/Trackpad",
 },
 {
     0x05ac, 0x0236,
     "Keyboard/Trackpad",
 },
 {
     0x05ac, 0x0237,
     "Keyboard/Trackpad",
 },
 {
     0x05ac, 0x0238,
     "Keyboard/Trackpad",
 },
 {
     0x05ac, 0x023f,
     "Keyboard/Trackpad",
 },
 {
     0x05ac, 0x0240,
     "Keyboard/Trackpad",
 },
 {
     0x05ac, 0x0241,
     "Keyboard/Trackpad",
 },
 {
     0x05ac, 0x0242,
     "Keyboard/Trackpad",
 },
 {
     0x05ac, 0x0243,
     "Keyboard/Trackpad",
 },
 {
     0x05ac, 0x0244,
     "Keyboard/Trackpad",
 },
 {
     0x05ac, 0x0245,
     "Keyboard/Trackpad",
 },
 {
     0x05ac, 0x0246,
     "Keyboard/Trackpad",
 },
 {
     0x05ac, 0x0247,
     "Keyboard/Trackpad",
 },
 {
     0x05ac, 0x0249,
     "Keyboard/Trackpad",
 },
 {
     0x05ac, 0x024a,
     "Keyboard/Trackpad",
 },
 {
     0x05ac, 0x024b,
     "Keyboard/Trackpad",
 },
 {
     0x05ac, 0x024c,
     "Keyboard/Trackpad",
 },
 {
     0x05ac, 0x024d,
     "Keyboard/Trackpad",
 },
 {
     0x05ac, 0x024e,
     "Keyboard/Trackpad",
 },
 {
     0x05ac, 0x0252,
     "Keyboard/Trackpad",
 },
 {
     0x05ac, 0x0253,
     "Keyboard/Trackpad",
 },
 {
     0x05ac, 0x0254,
     "Keyboard/Trackpad",
 },
 {
     0x05ac, 0x0262,
     "Keyboard/Trackpad",
 },
 {
     0x05ac, 0x0263,
     "Keyboard/Trackpad",
 },
 {
     0x05ac, 0x0264,
     "Keyboard/Trackpad",
 },
 {
     0x05ac, 0x0259,
     "Keyboard/Trackpad",
 },
 {
     0x05ac, 0x025a,
     "Keyboard/Trackpad",
 },
 {
     0x05ac, 0x025b,
     "Keyboard/Trackpad",
 },
 {
     0x05ac, 0x0290,
     "Keyboard/Trackpad",
 },
 {
     0x05ac, 0x0291,
     "Keyboard/Trackpad",
 },
 {
     0x05ac, 0x0292,
     "Keyboard/Trackpad",
 },
 {
     0x05ac, 0x0272,
     "Keyboard/Trackpad",
 },
 {
     0x05ac, 0x0273,
     "Keyboard/Trackpad",
 },
 {
     0x05ac, 0x0274,
     "Keyboard/Trackpad",
 },
 {
     0x05ac, 0x0302,
     "Optical mouse",
 },
 {
     0x05ac, 0x1000,
     "HID-proxy",
 },
 {
     0x05ac, 0x1101,
     "Speakers",
 },
 {
     0x05ac, 0x1290,
     "iPhone",
 },
 {
     0x05ac, 0x1291,
     "iPod Touch",
 },
 {
     0x05ac, 0x1292,
     "iPhone 3G",
 },
 {
     0x05ac, 0x1293,
     "iPod Touch 2G",
 },
 {
     0x05ac, 0x1294,
     "iPhone 3GS",
 },
 {
     0x05ac, 0x1297,
     "iPhone 4 GSM",
 },
 {
     0x05ac, 0x1299,
     "iPod Touch 3G",
 },
 {
     0x05ac, 0x129a,
     "iPad",
 },
 {
     0x05ac, 0x129c,
     "iPhone 4 CDMA",
 },
 {
     0x05ac, 0x129e,
     "iPod Touch 4G",
 },
 {
     0x05ac, 0x129f,
     "iPad 2",
 },
 {
     0x05ac, 0x12a0,
     "iPhone 4S",
 },
 {
     0x05ac, 0x12a8,
     "iPhone 6",
 },
 {
     0x05ac, 0x1402,
     "Ethernet A1277",
 },
 {
     0x05ac, 0x8205,
     "Bluetooth",
 },
 {
     0x05ac, 0x8300,
     "Bluetooth",
 },
 {
     0x05ac, 0x8501,
     "iSight",
 },
 {
     0x05ac, 0x8502,
     "iSight",
 },
 {
     0x12d8, 0x0001,
     "True Random Number Generator",
 },
 {
     0x2341, 0x8036,
     "Leonardo",
 },
 {
     0x6547, 0x0232,
     "ARK3116 Serial",
 },
 {
     0x2626, 0xea60,
     "CP210x Serial",
 },
 {
     0x0a17, 0x0004,
     "PENTAX Optio230",
 },
 {
     0x10bd, 0x1427,
     "Ethernet",
 },
 {
     0x069a, 0x0320,
     "WLL013 (Intersil)",
 },
 {
     0x069a, 0x0321,
     "WLL013",
 },
 {
     0x069a, 0x0821,
     "Voyager 1010",
 },
 {
     0x0b95, 0x1720,
     "USB 2.0 10/100 Ethernet controller",
 },
 {
     0x0b95, 0x1780,
     "AX88178",
 },
 {
     0x0b95, 0x1790,
     "AX88179",
 },
 {
     0x0b95, 0x7720,
     "AX88772",
 },
 {
     0x0b95, 0x772a,
     "AX88772A",
 },
 {
     0x0b95, 0x772b,
     "AX88772B",
 },
 {
     0x0b95, 0x7e2b,
     "AX88772B",
 },
 {
     0x1761, 0x0b05,
     "USB-N11",
 },
 {
     0x0b05, 0x1706,
     "RT2570",
 },
 {
     0x0b05, 0x1707,
     "RT2570",
 },
 {
     0x0b05, 0x1723,
     "RT2573",
 },
 {
     0x0b05, 0x1724,
     "RT2573",
 },
 {
     0x0b05, 0x170c,
     "WL-159g",
 },
 {
     0x0b05, 0x171b,
     "A9T wireless",
 },
 {
     0x0b05, 0x171d,
     "P5B wireless",
 },
 {
     0x0b05, 0x1731,
     "RT2870",
 },
 {
     0x0b05, 0x1732,
     "RT2870",
 },
 {
     0x0b05, 0x1742,
     "RT2870",
 },
 {
     0x0b05, 0x1760,
     "RT2870",
 },
 {
     0x0b05, 0x1761,
     "RT2870",
 },
 {
     0x0b05, 0x1784,
     "USB-N13",
 },
 {
     0x0b05, 0x1786,
     "USB-N10",
 },
 {
     0x0b05, 0x1790,
     "RT3070",
 },
 {
     0x0b05, 0x1791,
     "RTL8192SU",
 },
 {
     0x0b05, 0x179d,
     "USB-N53",
 },
 {
     0x0b05, 0x17ab,
     "RTL8192CU",
 },
 {
     0x0b05, 0x17ad,
     "USB-N66",
 },
 {
     0x0b05, 0x17ba,
     "RTL8192CU",
 },
 {
     0x0b05, 0x17c0,
     "RTL8192CU",
 },
 {
     0x0b05, 0x4202,
     "MyPal A730",
 },
 {
     0x2821, 0x3300,
     "WL-140",
 },
 {
     0x0557, 0x2001,
     "Parallel",
 },
 {
     0x0557, 0x2002,
     "10Mbps Ethernet",
 },
 {
     0x0557, 0x2007,
     "UC-110T Ethernet",
 },
 {
     0x0557, 0x2008,
     "UC232A Serial",
 },
 {
     0x0557, 0x2009,
     "UC210T Ethernet",
 },
 {
     0x0557, 0x2011,
     "UC2324 Serial",
 },
 {
     0x0557, 0x4000,
     "DSB-650C",
 },
 {
     0x168c, 0x0001,
     "AR5523",
 },
 {
     0x168c, 0x0002,
     "AR5523",
 },
 {
     0x0cf3, 0x0001,
     "AR5523",
 },
 {
     0x0cf3, 0x0002,
     "AR5523",
 },
 {
     0x0cf3, 0x0003,
     "AR5523",
 },
 {
     0x0cf3, 0x0004,
     "AR5523",
 },
 {
     0x0cf3, 0x0005,
     "AR5523",
 },
 {
     0x0cf3, 0x0006,
     "AR5523",
 },
 {
     0x0cf3, 0x1001,
     "TG121N",
 },
 {
     0x0cf3, 0x1002,
     "WN821NV2",
 },
 {
     0x0cf3, 0x1006,
     "AR9271",
 },
 {
     0x0cf3, 0x1010,
     "3CRUSBN275",
 },
 {
     0x0cf3, 0x1011,
     "WN612",
 },
 {
     0x0cf3, 0x3000,
     "AR3011",
 },
 {
     0x0cf3, 0x7010,
     "AR9280+AR7010",
 },
 {
     0x0cf3, 0x7015,
     "AR9287+AR7010",
 },
 {
     0x0cf3, 0x9170,
     "AR9170",
 },
 {
     0x0cf3, 0x9271,
     "AR9271",
 },
 {
     0x0cf3, 0xb003,
     "AR9271",
 },
 {
     0x0b6f, 0xa001,
     "USB Cable 205",
 },
 {
     0x03eb, 0x2109,
     "STK541 Zigbee",
 },
 {
     0x03eb, 0x3301,
     "UHB124 hub",
 },
 {
     0x03eb, 0x4102,
     "W-Buddie WN210",
 },
 {
     0x03eb, 0x5601,
     "DWL-900AP Wireless access point",
 },
 {
     0x03eb, 0x6119,
     "AT91 CDC ACM",
 },
 {
     0x03eb, 0x7603,
     "AT76C503 (Intersil 3861 Radio)",
 },
 {
     0x03eb, 0x7604,
     "AT76C503 (Intersil 3863 Radio)",
 },
 {
     0x03eb, 0x7605,
     "AT76C503 (RFMD Radio)",
 },
 {
     0x03eb, 0x7606,
     "AT76C505 (RFMD Radio)",
 },
 {
     0x03eb, 0x7613,
     "AT76C505 (RFMD 2958 Radio)",
 },
 {
     0x03eb, 0x7614,
     "AT76C505A (RFMD 2958 Radio)",
 },
 {
     0x03eb, 0x7617,
     "AT76C505AS (RFMD 2958 Radio)",
 },
 {
     0x0909, 0x0009,
     "ATC-HA4USB USB headphone",
 },
 {
     0x192f, 0x0000,
     "Mouse",
 },
 {
     0x0680, 0x0100,
     "USB Audio Speaker",
 },
 {
     0x50c2, 0x4013,
     "WLAN",
 },
 {
     0x0638, 0x0268,
     "1200U",
 },
 {
     0x057c, 0x8401,
     "FRITZ!WLAN N",
 },
 {
     0x1726, 0x1000,
     "Data Modem",
 },
 {
     0x13d3, 0x3247,
     "RT2870",
 },
 {
     0x13d3, 0x3262,
     "RT2870",
 },
 {
     0x13d3, 0x3273,
     "RT3070",
 },
 {
     0x13d3, 0x3284,
     "RT3070",
 },
 {
     0x13d3, 0x3305,
     "RT3070",
 },
 {
     0x13d3, 0x3306,
     "RTL8192SU",
 },
 {
     0x13d3, 0x3307,
     "RT3070",
 },
 {
     0x13d3, 0x3309,
     "RTL8192SU",
 },
 {
     0x13d3, 0x3310,
     "RTL8192SU",
 },
 {
     0x13d3, 0x3311,
     "RTL8192SU",
 },
 {
     0x13d3, 0x3321,
     "RT3070",
 },
 {
     0x13d3, 0x3325,
     "RTL8192SU",
 },
 {
     0x13d3, 0x3327,
     "AR9271",
 },
 {
     0x13d3, 0x3328,
     "AR9271",
 },
 {
     0x13d3, 0x3346,
     "AR9271",
 },
 {
     0x13d3, 0x3348,
     "AR9271",
 },
 {
     0x13d3, 0x3349,
     "AR9271",
 },
 {
     0x13d3, 0x3350,
     "AR9271",
 },
 {
     0x13d3, 0x3357,
     "RTL8188CU",
 },
 {
     0x13d3, 0x3358,
     "RTL8188CE",
 },
 {
     0x13d3, 0x3359,
     "RTL8188CE",
 },
 {
     0x1a79, 0x6001,
     "Ascensia Contour",
 },
 {
     0x0856, 0xac01,
     "USOTL4 RS-422/485",
 },
 {
     0x0856, 0xac02,
     "USTL4 RS-422/485",
 },
 {
     0x0856, 0xac03,
     "USO9ML2 RS-232",
 },
 {
     0x0856, 0xac11,
     "USOPTL4 RS-422/485",
 },
 {
     0x0856, 0xac12,
     "USPTL4 RS-422/485",
 },
 {
     0x0856, 0xac16,
     "USO9ML2DR-2 RS-232",
 },
 {
     0x0856, 0xac17,
     "USO9ML2DR RS-232",
 },
 {
     0x0856, 0xac18,
     "USOPTL4DR-2 RS-422/485",
 },
 {
     0x0856, 0xac19,
     "USOPTL4DR RS-422/485",
 },
 {
     0x0856, 0xac25,
     "485USB9F-2W RS-422/485",
 },
 {
     0x0856, 0xac26,
     "485USB9F-4W RS-422/485",
 },
 {
     0x0856, 0xac27,
     "232USB9M RS-232",
 },
 {
     0x0856, 0xac33,
     "485USBTB-2W RS-422/485",
 },
 {
     0x0856, 0xac34,
     "485USBTB-4W RS-422/485",
 },
 {
     0x0856, 0xac49,
     "TTL5USB9M",
 },
 {
     0x0856, 0xac50,
     "TTL3USB9M",
 },
 {
     0x0856, 0xba02,
     "ZZ Programmer",
 },
 {
     0x13ad, 0x9999,
     "Card reader",
 },
 {
     0x050d, 0x0050,
     "F5D6050 802.11b Wireless adapter",
 },
 {
     0x050d, 0x0081,
     "Bluetooth",
 },
 {
     0x050d, 0x0083,
     "Bluetooth",
 },
 {
     0x050d, 0x0084,
     "Bluetooth",
 },
 {
     0x050d, 0x0103,
     "F5U103 Serial",
 },
 {
     0x050d, 0x0109,
     "F5U109 Serial",
 },
 {
     0x050d, 0x0115,
     "SCSI",
 },
 {
     0x050d, 0x0121,
     "F5D5050 Ethernet",
 },
 {
     0x050d, 0x0234,
     "F5U234 USB 2.0 4-Port Hub",
 },
 {
     0x050d, 0x0237,
     "F5U237 USB 2.0 7-Port Hub",
 },
 {
     0x050d, 0x0257,
     "F5U257 Serial",
 },
 {
     0x050d, 0x0375,
     "F6H375 UPS",
 },
 {
     0x050d, 0x0409,
     "F5U409 Serial",
 },
 {
     0x050d, 0x0551,
     "F6C550-AVR UPS",
 },
 {
     0x050d, 0x0750,
     "F6C1250EITW-RK UPS",
 },
 {
     0x050d, 0x0751,
     "F6C1500EITW-RK UPS",
 },
 {
     0x050d, 0x0900,
     "F6C900 UPS",
 },
 {
     0x050d, 0x0910,
     "F6C100 UPS",
 },
 {
     0x050d, 0x0912,
     "F6C120 UPS",
 },
 {
     0x050d, 0x0980,
     "F6C800 UPS",
 },
 {
     0x050d, 0x1004,
     "RTL8192CU",
 },
 {
     0x050d, 0x1100,
     "F6C1100/1200 UPS",
 },
 {
     0x050d, 0x1102,
     "RTL8188CU",
 },
 {
     0x050d, 0x1103,
     "F9L1103 Wireless Adapter",
 },
 {
     0x050d, 0x11f2,
     "RTL8188CUS",
 },
 {
     0x050d, 0x1203,
     "F5U120-PC Hub",
 },
 {
     0x050d, 0x2102,
     "RTL8192CU",
 },
 {
     0x050d, 0x2103,
     "F7D2102",
 },
 {
     0x050d, 0x21f2,
     "RTL8192CU",
 },
 {
     0x050d, 0x1004,
     "F9L1004V1",
 },
 {
     0x050d, 0x4050,
     "ZD1211B",
 },
 {
     0x050d, 0x5055,
     "F5D5055",
 },
 {
     0x050d, 0x7050,
     "F5D7050 54g USB Network Adapter",
 },
 {
     0x050d, 0x705a,
     "F5D705A 54g USB Network Adapter",
 },
 {
     0x050d, 0x705c,
     "F5D705C 54g USB Network Adapter",
 },
 {
     0x050d, 0x705e,
     "F5D705E 54g USB Network Adapter",
 },
 {
     0x050d, 0x8053,
     "RT2870",
 },
 {
     0x050d, 0x805c,
     "RT2870",
 },
 {
     0x050d, 0x815c,
     "F5D8053 v3",
 },
 {
     0x050d, 0x815f,
     "RTL8192SU",
 },
 {
     0x050d, 0x825a,
     "F5D8055",
 },
 {
     0x050d, 0x825b,
     "F5D8055 v2",
 },
 {
     0x050d, 0x845a,
     "RTL8192SU",
 },
 {
     0x050d, 0x905c,
     "F5D9050C",
 },
 {
     0x050d, 0x905b,
     "F5D9050 ver 3",
 },
 {
     0x050d, 0x935a,
     "F6D4050 ver 1",
 },
 {
     0x050d, 0x935b,
     "F6D4050 ver 2",
 },
 {
     0x050d, 0x945a,
     "RTL8192SU",
 },
 {
     0x050d, 0x945b,
     "F7D1101 v2",
 },
 {
     0x1293, 0x0002,
     "F5U002 Parallel",
 },
 {
     0x07fa, 0x1196,
     "BWIFI-USB54AR",
 },
 {
     0x07fa, 0x7712,
     "RT3070",
 },
 {
     0x08dd, 0x0986,
     "USB100N 10/100 Ethernet",
 },
 {
     0x08dd, 0x0987,
     "USB100LP",
 },
 {
     0x08dd, 0x0988,
     "USB100EL",
 },
 {
     0x08dd, 0x8511,
     "USBE100",
 },
 {
     0x08dd, 0x90ff,
     "USB2AR Ethernet",
 },
 {
     0x0a5c, 0x0bdc,
     "BCMFW",
 },
 {
     0x0a5c, 0x2000,
     "BCM2033",
 },
 {
     0x0a5c, 0x2033,
     "BCM2033 (no fw)",
 },
 {
     0x0a5c, 0xbd17,
     "BCM43236",
 },
 {
     0x0a5c, 0xbd1e,
     "BCM43143",
 },
 {
     0x0a5c, 0xbd1f,
     "BCM43242",
 },
 {
     0x0a5c, 0xbd27,
     "BCM43569",
 },
 {
     0x04f9, 0x0002,
     "HL-1050 laser printer",
 },
 {
     0x04f9, 0x0161,
     "MFC 210C",
 },
 {
     0x046e, 0x6782,
     "Keyboard/Mouse",
 },
 {
     0x03da, 0x0001,
     "6ch ConSer",
 },
 {
     0xcace, 0x0300,
     "AirPcap Nx",
 },
 {
     0x04a9, 0x2206,
     "CANOSCAN N656U",
 },
 {
     0x04a9, 0x2207,
     "CANOSCAN N1220U",
 },
 {
     0x04a9, 0x220d,
     "CANOSCAN N670U",
 },
 {
     0x04a9, 0x220e,
     "CANOSCAN N1240U",
 },
 {
     0x04a9, 0x221c,
     "CANOSCAN LiDE60",
 },
 {
     0x04a9, 0x3041,
     "PowerShot S10",
 },
 {
     0x04a9, 0x3043,
     "PowerShot S20",
 },
 {
     0x04a9, 0x3045,
     "PowerShot S100",
 },
 {
     0x04a9, 0x3047,
     "PowerShot S100",
 },
 {
     0x04a9, 0x3048,
     "PowerShot G1",
 },
 {
     0x04a9, 0x304e,
     "PowerShot A20",
 },
 {
     0x04a9, 0x311b,
     "PowerShot A540",
 },
 {
     0x04a9, 0x315e,
     "PowerShot SX100",
 },
 {
     0x0423, 0x000a,
     "Netmate Ethernet",
 },
 {
     0x0423, 0x000c,
     "Netmate2 Ethernet",
 },
 {
     0x0423, 0x000d,
     "USB Chief Bus & Protocol Analyzer",
 },
 {
     0x0423, 0x1237,
     "Andromeda hub",
 },
 {
     0x07cf, 0x1001,
     "QV",
 },
 {
     0x07cf, 0x2002,
     "BE-300 PDA",
 },
 {
     0x07cf, 0x4001,
     "CASIO Nameland EZ-USB",
 },
 {
     0x1065, 0x2136,
     "EasyDisk Portable",
 },
 {
     0x046a, 0x0001,
     "My3000 keyboard",
 },
 {
     0x046a, 0x0003,
     "My3000 hub",
 },
 {
     0x0ad2, 0x933d,
     "CM12402 Eagle IR Cam",
 },
 {
     0x05fe, 0x0001,
     "mouse",
 },
 {
     0x05fe, 0x0003,
     "Cypress",
 },
 {
     0x04f2, 0x0001,
     "KB-8933 keyboard",
 },
 {
     0x04f2, 0x480c,
     "Integrated Camera",
 },
 {
     0x04f2, 0xaff7,
     "RTL8188CUS",
 },
 {
     0x04f2, 0xaff8,
     "RTL8188CUS",
 },
 {
     0x04f2, 0xaff9,
     "RTL8188CUS",
 },
 {
     0x04f2, 0xaffa,
     "RTL8188CUS",
 },
 {
     0x04f2, 0xaffb,
     "RTL8188CUS",
 },
 {
     0x04f2, 0xaffc,
     "RTL8188CUS",
 },
 {
     0x068e, 0x00f1,
     "Pro Throttle",
 },
 {
     0x068e, 0x00f2,
     "Pro Pedals",
 },
 {
     0x068e, 0x00f3,
     "Fighterstick",
 },
 {
     0x068e, 0x00ff,
     "Flight Sim Yoke",
 },
 {
     0x13b1, 0x000a,
     "WUSB54G v2",
 },
 {
     0x13b1, 0x000c,
     "WUSB54AG",
 },
 {
     0x13b1, 0x000d,
     "RT2570",
 },
 {
     0x13b1, 0x0011,
     "RT2570",
 },
 {
     0x13b1, 0x0018,
     "USB200M v2",
 },
 {
     0x13b1, 0x001a,
     "HU200-TS",
 },
 {
     0x13b1, 0x0020,
     "WUSB54GC",
 },
 {
     0x13b1, 0x0023,
     "WUSB54GR",
 },
 {
     0x13b1, 0x0024,
     "WUSBF54G",
 },
 {
     0x13b1, 0x0028,
     "WUSB200",
 },
 {
     0x13b1, 0x002f,
     "AE1000",
 },
 {
     0x13b1, 0x0031,
     "AM10",
 },
 {
     0x167b, 0x4001,
     "RT3070",
 },
 {
     0x05a6, 0x0101,
     "RT3070",
 },
 {
     0x166a, 0x0101,
     "560884 C-Bus Switch",
 },
 {
     0x166a, 0x0201,
     "5500PACA C-Bus Controller",
 },
 {
     0x166a, 0x0301,
     "5800PC C-Bus Wireless",
 },
 {
     0x166a, 0x0303,
     "5500PCU C-Bus",
 },
 {
     0x166a, 0x0304,
     "5000CT2 C-Bus Touch Screen",
 },
 {
     0x166a, 0x0305,
     "C5000CT2 C-Bus Touch Screen",
 },
 {
     0x166a, 0x0401,
     "L51xx C-Bus Dimmer",
 },
 {
     0x049f, 0x0003,
     "iPAQ PocketPC",
 },
 {
     0x049f, 0x0012,
     "A1500",
 },
 {
     0x049f, 0x0032,
     "iPAQ WLAN",
 },
 {
     0x049f, 0x0033,
     "W100",
 },
 {
     0x049f, 0x0076,
     "WLAN MultiPort W200",
 },
 {
     0x049f, 0x504a,
     "Personal Jukebox PJB100",
 },
 {
     0x049f, 0x505a,
     "iPAQ Linux",
 },
 {
     0x0e5e, 0x6622,
     "CW6622",
 },
 {
     0x16d8, 0x5141,
     "CDMA Technologies USB modem",
 },
 {
     0x16d8, 0x5523,
     "CM-5100P EVDO",
 },
 {
     0x16d8, 0x5533,
     "CCU-550 EVDO",
 },
 {
     0x16d8, 0x5543,
     "CNU-550pro EVDO",
 },
 {
     0x16d8, 0x6006,
     "CGU-628",
 },
 {
     0x16d8, 0x6803,
     "CNU-680",
 },
 {
     0x16d8, 0xf000,
     "CGU-628 disk mode",
 },
 {
     0xcdab, 0x8010,
     "RTL8192CU",
 },
 {
     0x0d8e, 0x3762,
     "PrismGT USB 2.0 WLAN",
 },
 {
     0x0d8e, 0x7100,
     "C11U",
 },
 {
     0x0d8e, 0x7110,
     "WL-210",
 },
 {
     0x0d8e, 0x7801,
     "AR5523",
 },
 {
     0x0d8e, 0x7802,
     "AR5523",
 },
 {
     0x0d8e, 0x7811,
     "AR5523",
 },
 {
     0x0d8e, 0x7812,
     "AR5523",
 },
 {
     0x14b2, 0x3300,
     "RTL8192SU",
 },
 {
     0x14b2, 0x3301,
     "RTL8192SU",
 },
 {
     0x14b2, 0x3302,
     "RTL8192SU",
 },
 {
     0x14b2, 0x3c02,
     "C54RU WLAN",
 },
 {
     0x14b2, 0x3c08,
     "RT3070",
 },
 {
     0x14b2, 0x3c11,
     "RT3070",
 },
 {
     0x14b2, 0x3c2c,
     "RT3070",
 },
 {
     0x14b2, 0x3c22,
     "C54RU",
 },
 {
     0x14b2, 0x3c25,
     "VIGORN61",
 },
 {
     0x14b2, 0x3c06,
     "RT2870",
 },
 {
     0x14b2, 0x3c07,
     "RT2870",
 },
 {
     0x14b2, 0x3c09,
     "RT2870",
 },
 {
     0x14b2, 0x3c12,
     "RT2870",
 },
 {
     0x14b2, 0x3c23,
     "RT2870",
 },
 {
     0x14b2, 0x3c24,
     "RT2573M",
 },
 {
     0x14b2, 0x3c25,
     "RT2870",
 },
 {
     0x14b2, 0x3c27,
     "RT2870",
 },
 {
     0x14b2, 0x3c28,
     "RT2870",
 },
 {
     0x0919, 0x0100,
     "Eye Q 3x",
 },
 {
     0x0478, 0x0001,
     "QuickCam",
 },
 {
     0x07aa, 0x0001,
     "Ether USB-T",
 },
 {
     0x07aa, 0x0004,
     "FEther USB-TX",
 },
 {
     0x07aa, 0x000c,
     "WirelessLAN USB-11",
 },
 {
     0x07aa, 0x000d,
     "FEther USB-TXS",
 },
 {
     0x07aa, 0x0012,
     "Wireless LAN Stick-11",
 },
 {
     0x07aa, 0x0017,
     "FEther USB2-TX",
 },
 {
     0x07aa, 0x001a,
     "ULUSB-11 Key",
 },
 {
     0x07aa, 0x002d,
     "CG-WLUSB2GL",
 },
 {
     0x07aa, 0x002e,
     "CG-WLUSB2GPX",
 },
 {
     0x07aa, 0x002f,
     "RT2870",
 },
 {
     0x07aa, 0x003c,
     "RT2870",
 },
 {
     0x07aa, 0x003f,
     "RT2870",
 },
 {
     0x07aa, 0x0041,
     "RT3070",
 },
 {
     0x07aa, 0x0042,
     "CG-WLUSB300GNM",
 },
 {
     0x07aa, 0x0043,
     "CG-WLUSB300N",
 },
 {
     0x07aa, 0x0047,
     "RTL8192SU",
 },
 {
     0x07aa, 0x0056,
     "RTL8192CU",
 },
 {
     0x07aa, 0x7613,
     "WLAN USB Stick 11",
 },
 {
     0x07aa, 0x9601,
     "FEther USB-TXC",
 },
 {
     0x1b1c, 0x1c00,
     "CP210X",
 },
 {
     0x041e, 0x1002,
     "Nomad II",
 },
 {
     0x041e, 0x4004,
     "Nomad II MG",
 },
 {
     0x041e, 0x4106,
     "Nomad",
 },
 {
     0x1292, 0x0258,
     "Voip Blaster",
 },
 {
     0x041e, 0x3f02,
     "E-Mu 0202",
 },
 {
     0x0a12, 0x0001,
     "Bluetooth",
 },
 {
     0x0a12, 0x1000,
     "BlueCore",
 },
 {
     0x0698, 0x9999,
     "Ex1300 hub",
 },
 {
     0x0764, 0x0005,
     "UPS",
 },
 {
     0x0764, 0x0501,
     "1500 UPS",
 },
 {
     0x0764, 0x0601,
     "OR2200 UPS",
 },
 {
     0x129b, 0x160c,
     "Siemens Gigaset 108",
 },
 {
     0x129b, 0x1666,
     "TG54USB",
 },
 {
     0x129b, 0x1667,
     "ZD1211B",
 },
 {
     0x129b, 0x1828,
     "RT2870",
 },
 {
     0x04b4, 0x0001,
     "mouse",
 },
 {
     0x04b4, 0x0002,
     "thermometer",
 },
 {
     0x04b4, 0x0101,
     "Keyboard/Hub",
 },
 {
     0x04b4, 0x1002,
     "FM Radio",
 },
 {
     0x04b4, 0x5500,
     "RS232",
 },
 {
     0x04b4, 0x6560,
     "USB2 Hub",
 },
 {
     0x04b4, 0xe001,
     "CY4636 LP RDK Bridge",
 },
 {
     0x04b4, 0xfd10,
     "Sispm - old version",
 },
 {
     0x04b4, 0xfd11,
     "Sispm",
 },
 {
     0x04b4, 0xfd12,
     "Sispm - flash",
 },
 {
     0x3579, 0x6901,
     "PhotoClip",
 },
 {
     0x04fa, 0x2490,
     "USB-FOB/iBUTTON",
 },
 {
     0x04fa, 0x4201,
     "J-6502 speakers",
 },
 {
     0xdaae, 0xead6,
     "MultiCom",
 },
 {
     0x04a6, 0x0668,
     "HenTong WK-668",
 },
 {
     0x04a6, 0x9601,
     "DM9601",
 },
 {
     0x413c, 0x4005,
     "Axim X51v",
 },
 {
     0x413c, 0x8000,
     "Bluetooth",
 },
 {
     0x413c, 0x8100,
     "TrueMobile 1180 WLAN",
 },
 {
     0x413c, 0x8102,
     "PrismGT USB 2.0 WLAN",
 },
 {
     0x413c, 0x8103,
     "Bluetooth",
 },
 {
     0x413c, 0x8104,
     "PrismGT USB 2.0 WLAN",
 },
 {
     0x413c, 0x8115,
     "W5500 HSDPA",
 },
 {
     0x413c, 0x8135,
     "Dell U740 CDMA",
 },
 {
     0x413c, 0x8138,
     "EU870D HSDPA",
 },
 {
     0x413c, 0x9500,
     "DW700 GPS",
 },
 {
     0x047c, 0xFFFF,
     "UPS",
 },
 {
     0x1163, 0x0100,
     "Earthmate GPS",
 },
 {
     0x1163, 0x0200,
     "Earthmate LT20",
 },
 {
     0x0841, 0x0001,
     "Rio 500",
 },
 {
     0x1371, 0x0002,
     "WL-200U",
 },
 {
     0x1371, 0x0013,
     "CHUSB 611G",
 },
 {
     0x1371, 0x0014,
     "WL-240U",
 },
 {
     0x1371, 0x5743,
     "XH1153 802.11b",
 },
 {
     0x1371, 0x9022,
     "RT2573",
 },
 {
     0x1371, 0x9032,
     "C-Net CWD-854 rev F",
 },
 {
     0x1371, 0x9401,
     "RTL8187",
 },
 {
     0x05c5, 0x0002,
     "AccelePort 2",
 },
 {
     0x05c5, 0x0004,
     "AccelePort 4",
 },
 {
     0x05c5, 0x0008,
     "AccelePort 8",
 },
 {
     0x08fd, 0x000a,
     "ZigBee",
 },
 {
     0x074e, 0x0001,
     "PS/2 Active",
 },
 {
     0x2001, 0x1a00,
     "10/100 Ethernet",
 },
 {
     0x2001, 0x1a02,
     "DUB-E100 rev C1",
 },
 {
     0x2001, 0x200c,
     "10/100 Ethernet",
 },
 {
     0x2001, 0x3200,
     "DWL-120 rev E",
 },
 {
     0x2001, 0x3301,
     "DWA-130 rev C",
 },
 {
     0x2001, 0x3307,
     "RTL8192CU",
 },
 {
     0x2001, 0x3308,
     "RTL8188CU",
 },
 {
     0x2001, 0x3309,
     "RTL8192CU",
 },
 {
     0x2001, 0x330a,
     "RTL8192CU",
 },
 {
     0x2001, 0x330b,
     "RTL8192CU",
 },
 {
     0x2001, 0x330d,
     "DWA-131 rev B",
 },
 {
     0x2001, 0x330f,
     "DWA-125 rev D1",
 },
 {
     0x2001, 0x3310,
     "DWA-123 rev D1",
 },
 {
     0x2001, 0x3317,
     "DWA-137 rev A1",
 },
 {
     0x2001, 0x3319,
     "DWA-131 rev E1",
 },
 {
     0x2001, 0x3700,
     "DWL-122",
 },
 {
     0x2001, 0x3701,
     "DWL-G120",
 },
 {
     0x2001, 0x3702,
     "DWL-120 rev F",
 },
 {
     0x2001, 0x3704,
     "DWL-G122 rev A2",
 },
 {
     0x2001, 0x3a00,
     "DWL-AG132",
 },
 {
     0x2001, 0x3a01,
     "DWL-AG132",
 },
 {
     0x2001, 0x3a02,
     "DWL-G132",
 },
 {
     0x2001, 0x3a03,
     "DWL-G132",
 },
 {
     0x2001, 0x3a04,
     "DWL-AG122",
 },
 {
     0x2001, 0x3a05,
     "DWL-AG122",
 },
 {
     0x2001, 0x3c00,
     "RT2570",
 },
 {
     0x2001, 0x3c05,
     "DUB-E100 rev B1",
 },
 {
     0x2001, 0x3c09,
     "RT2870",
 },
 {
     0x2001, 0x3c0a,
     "RT3072",
 },
 {
     0x2001, 0x3c15,
     "DWA-140 rev B3",
 },
 {
     0x2001, 0x3c1a,
     "DWA-160 rev B2",
 },
 {
     0x2001, 0x3c1b,
     "DWA-127",
 },
 {
     0x2001, 0x3c1e,
     "DWA-125 rev B2",
 },
 {
     0x2001, 0x3c1f,
     "DWA-162 Wireless Adapter",
 },
 {
     0x2001, 0x3c20,
     "DWA-140 rev D1",
 },
 {
     0x2001, 0x3c25,
     "DWA-130 rev F1",
 },
 {
     0x2001, 0x4000,
     "10Mbps Ethernet",
 },
 {
     0x2001, 0x4001,
     "10/100 Ethernet",
 },
 {
     0x2001, 0x4002,
     "10/100 Ethernet",
 },
 {
     0x2001, 0x4003,
     "1/10/100 Ethernet",
 },
 {
     0x2001, 0x400b,
     "10/100 Ethernet",
 },
 {
     0x2001, 0x4102,
     "10/100 Ethernet",
 },
 {
     0x2001, 0x4a00,
     "DUB-1312",
 },
 {
     0x2001, 0xabc1,
     "10/100 Ethernet",
 },
 {
     0x07d1, 0x3300,
     "RTL8192SU",
 },
 {
     0x07d1, 0x3302,
     "RTL8192SU",
 },
 {
     0x07d1, 0x3303,
     "DWA-131 A1",
 },
 {
     0x07d1, 0x3a07,
     "WUA-2340",
 },
 {
     0x07d1, 0x3a08,
     "WUA-2340",
 },
 {
     0x07d1, 0x3a09,
     "DWA-160 A2",
 },
 {
     0x07d1, 0x3a0f,
     "DWA-130 rev D1",
 },
 {
     0x07d1, 0x3a10,
     "AR9271",
 },
 {
     0x07d1, 0x3c03,
     "DWL-G122 rev C1",
 },
 {
     0x07d1, 0x3c04,
     "WUA-1340",
 },
 {
     0x07d1, 0x3c06,
     "DWA-111",
 },
 {
     0x07d1, 0x3c07,
     "DWA-110",
 },
 {
     0x07d1, 0x3c09,
     "RT2870",
 },
 {
     0x07d1, 0x3c0a,
     "RT3072",
 },
 {
     0x07d1, 0x3c0b,
     "RT3072",
 },
 {
     0x07d1, 0x3c0d,
     "RT3070",
 },
 {
     0x07d1, 0x3c0e,
     "RT3070",
 },
 {
     0x07d1, 0x3c0f,
     "RT3070",
 },
 {
     0x07d1, 0x3c10,
     "DWA-160 A1",
 },
 {
     0x07d1, 0x3c11,
     "RT2870",
 },
 {
     0x07d1, 0x3c13,
     "DWA-130",
 },
 {
     0x07d1, 0x3c15,
     "RT3070",
 },
 {
     0x07d1, 0x3c16,
     "RT3070",
 },
 {
     0x2101, 0x020f,
     "KVM-221",
 },
 {
     0x17e9, 0x01ba,
     "LCD-4300U",
 },
 {
     0x17e9, 0x01bb,
     "LCD-8000U",
 },
 {
     0x17e9, 0x0100,
     "Samsung LD220",
 },
 {
     0x17e9, 0x0059,
     "IOGEAR DVI GUC2020",
 },
 {
     0x17e9, 0x0136,
     "Rextron DVI",
 },
 {
     0x17e9, 0x0138,
     "StarTech CONV-USB2DVI",
 },
 {
     0x17e9, 0x0141,
     "DisplayLink DVI",
 },
 {
     0x17e9, 0x015a,
     "CMP-USBVGA10",
 },
 {
     0x17e9, 0x0198,
     "WS Tech DVI",
 },
 {
     0x17e9, 0x019b,
     "EasyCAP008 DVI",
 },
 {
     0x17e9, 0x01d4,
     "HP USB Docking",
 },
 {
     0x17e9, 0x01d7,
     "HP USB DVI",
 },
 {
     0x17e9, 0x01e2,
     "Lenovo DVI",
 },
 {
     0x17e9, 0x024c,
     "SUNWEIT DVI",
 },
 {
     0x17e9, 0x0215,
     "VideoHome NBdock1920",
 },
 {
     0x17e9, 0x02a9,
     "Lilliput UM-70",
 },
 {
     0x17e9, 0x401a,
     "nanovision MiMo",
 },
 {
     0x17e9, 0x03e0,
     "Lenovo ThinkVision LT1421",
 },
 {
     0x17e9, 0x0117,
     "Polaris2 USB dock",
 },
 {
     0x0c0b, 0xb001,
     "Storage Adapter",
 },
 {
     0x071b, 0x3203,
     "RockChip Media Player",
 },
 {
     0x0675, 0x0550,
     "Vigor550",
 },
 {
     0x0675, 0x0600,
     "Vigor600",
 },
 {
     0x1d34, 0x0013,
     "USB LED Message Board v1.0",
 },
 {
     0x1cf1, 0x0001,
     "Sensor Terminal",
 },
 {
     0x1cf1, 0x0004,
     "Wireless Terminal",
 },
 {
     0x0fe9, 0xb307,
     "RT3070",
 },
 {
     0x0fcf, 0x1003,
     "ANT dev board",
 },
 {
     0x0fcf, 0x1004,
     "ANT2USB",
 },
 {
     0x0fcf, 0x1006,
     "ANT dev board",
 },
 {
     0x0c76, 0x0005,
     "Flash Disk",
 },
 {
     0x7392, 0x7318,
     "EW-7318",
 },
 {
     0x7392, 0x7611,
     "RTL8192SU",
 },
 {
     0x7392, 0x7612,
     "RTL8192SU",
 },
 {
     0x7392, 0x7618,
     "EW-7618",
 },
 {
     0x7392, 0x7622,
     "RTL8192SU",
 },
 {
     0x7392, 0x7711,
     "RT2870",
 },
 {
     0x7392, 0x7717,
     "EW-7717",
 },
 {
     0x7392, 0x7718,
     "EW-7718",
 },
 {
     0x7392, 0x7722,
     "EW-7722UTn",
 },
 {
     0x7392, 0x7811,
     "EW-7811Un",
 },
 {
     0x7392, 0x7822,
     "RTL8192CU",
 },
 {
     0x0eef, 0x0001,
     "Touch Panel",
 },
 {
     0x0eef, 0x0002,
     "Touch Panel",
 },
 {
     0x0123, 0x0001,
     "Touch Panel",
 },
 {
     0x0734, 0x4905,
     "Diva 852 ISDN TA",
 },
 {
     0x056d, 0x0000,
     "hub",
 },
 {
     0x056d, 0x0001,
     "monitor",
 },
 {
     0x04f3, 0x0001,
     "Barcode Scanner",
 },
 {
     0x0db7, 0x0002,
     "Goldpfeil P-LAN",
 },
 {
     0x056e, 0x0002,
     "29UO",
 },
 {
     0x056e, 0x200c,
     "LD-USB/TX",
 },
 {
     0x056e, 0x4002,
     "LD-USB/TX",
 },
 {
     0x056e, 0x4005,
     "LD-USBL/TX",
 },
 {
     0x056e, 0x4008,
     "WDC-150SU2M",
 },
 {
     0x056e, 0x400b,
     "LD-USB/TX",
 },
 {
     0x056e, 0x4010,
     "LD-USB20",
 },
 {
     0x056e, 0x5003,
     "UC-SGT Serial",
 },
 {
     0x056e, 0x5004,
     "UC-SGT0 Serial",
 },
 {
     0x056e, 0xabc1,
     "LD-USB/TX",
 },
 {
     0x0c7d, 0x0005,
     "FT323R",
 },
 {
     0x05cc, 0x2265,
     "ELSA",
 },
 {
     0x05cc, 0x3000,
     "Microlink USB2Ethernet",
 },
 {
     0x18ef, 0xe00f,
     "USB-I2C",
 },
 {
     0xeb1a, 0x2761,
     "EeePC701 camera",
 },
 {
     0x203d, 0x1480,
     "RT3070",
 },
 {
     0x203d, 0x14a1,
     "RT3070",
 },
 {
     0x203d, 0x14a9,
     "RT3070",
 },
 {
     0x1645, 0x0001,
     "1S serial",
 },
 {
     0x1645, 0x0002,
     "2S serial",
 },
 {
     0x1645, 0x0003,
     "1S25 serial",
 },
 {
     0x1645, 0x0004,
     "4S serial",
 },
 {
     0x1645, 0x0005,
     "E45 Ethernet",
 },
 {
     0x1645, 0x0006,
     "Centronics",
 },
 {
     0x1645, 0x0008,
     "Ethernet",
 },
 {
     0x1645, 0x0093,
     "1S9 serial",
 },
 {
     0x1645, 0x8000,
     "EZ-USB",
 },
 {
     0x1645, 0x8004,
     "2U4S serial",
 },
 {
     0x1645, 0x8005,
     "Ethernet",
 },
 {
     0x04b8, 0x0001,
     "USB Printer",
 },
 {
     0x04b8, 0x0002,
     "ISD Smart Cable for Mac",
 },
 {
     0x04b8, 0x0003,
     "ISD Smart Cable",
 },
 {
     0x04b8, 0x0005,
     "USB Printer",
 },
 {
     0x04b8, 0x0101,
     "Perfection 636U / 636Photo",
 },
 {
     0x04b8, 0x0103,
     "Perfection 610",
 },
 {
     0x04b8, 0x0104,
     "Perfection 1200U / 1200Photo",
 },
 {
     0x04b8, 0x0107,
     "Expression 1600",
 },
 {
     0x04b8, 0x010a,
     "Perfection 1640SU",
 },
 {
     0x04b8, 0x010b,
     "Perfection 1240U / 1240Photo",
 },
 {
     0x04b8, 0x010c,
     "Perfection 640U",
 },
 {
     0x04b8, 0x0110,
     "Perfection 1650",
 },
 {
     0x04b8, 0x0112,
     "GT-9700F",
 },
 {
     0x04b8, 0x011b,
     "Perfection 2400",
 },
 {
     0x04b8, 0x011d,
     "Perfection 1260",
 },
 {
     0x04b8, 0x011e,
     "Perfection 1660",
 },
 {
     0x04b8, 0x011f,
     "Perfection 1670",
 },
 {
     0x04b8, 0x080e,
     "Stylus CX3650",
 },
 {
     0x04b8, 0x0818,
     "Stylus DX3800",
 },
 {
     0x04b8, 0x082f,
     "Stylus DX4000",
 },
 {
     0x04b8, 0x082b,
     "Stylus DX5000",
 },
 {
     0x04b8, 0x082e,
     "Stylus DX6000",
 },
 {
     0x04b8, 0x0808,
     "CX5400",
 },
 {
     0x056c, 0x8007,
     "Serial",
 },
 {
     0xdeee, 0x0300,
     "ER1 Control Module",
 },
 {
     0xdeee, 0x0302,
     "RCM4 interface",
 },
 {
     0xdeee, 0x0303,
     "RCM4 interface",
 },
 {
     0x08e9, 0x0100,
     "XTNDAccess IrDA",
 },
 {
     0x0f94, 0x0001,
     "Twist",
 },
 {
     0x0f94, 0x0005,
     "Samba",
 },
 {
     0x4855, 0x0090,
     "RTL8188CU",
 },
 {
     0x4855, 0x0091,
     "RTL8192CU",
 },
 {
     0x1e29, 0x0102,
     "CPX-USB",
 },
 {
     0x1e29, 0x0501,
     "CMSP",
 },
 {
     0x1582, 0x6003,
     "WL-430U",
 },
 {
     0x0e67, 0x0002,
     "Wrist PDA",
 },
 {
     0x0489, 0xe000,
     "T-Com TC 300",
 },
 {
     0x0489, 0xe003,
     "Pirelli DP-L10",
 },
 {
     0x07ab, 0xfc01,
     "Connector for DVD drive",
 },
 {
     0x0403, 0x0232,
     "Serial",
 },
 {
     0x0403, 0x6001,
     "8U232AM Serial",
 },
 {
     0x0403, 0x6004,
     "8U232AM Serial",
 },
 {
     0x0403, 0x6006,
     "Serial",
 },
 {
     0x0403, 0x6007,
     "Serial",
 },
 {
     0x0403, 0x6008,
     "Serial",
 },
 {
     0x0403, 0x6009,
     "Serial",
 },
 {
     0x0403, 0x6010,
     "2232C Serial",
 },
 {
     0x0403, 0x6011,
     "FT4232H",
 },
 {
     0x0403, 0x6015,
     "FTX",
 },
 {
     0x0403, 0x8371,
     "PS/2 Keyboard/Mouse",
 },
 {
     0x0403, 0x8372,
     "Serial",
 },
 {
     0x0403, 0x9379,
     "MJS Sirius To PC Interface",
 },
 {
     0x0403, 0x9e90,
     "OpenRD JTAGKey",
 },
 {
     0x0403, 0x9f80,
     "CANdapter",
 },
 {
     0x0403, 0xabb8,
     "Mindstorms NXTCam",
 },
 {
     0x0403, 0xbaf8,
     "OOCDlink",
 },
 {
     0x0403, 0xbcd8,
     "LM3S Devel",
 },
 {
     0x0403, 0xbcd9,
     "LM3S Eval",
 },
 {
     0x0403, 0xbdc8,
     "JTAG/RS-232",
 },
 {
     0x0403, 0xbfd8,
     "OpenDCC",
 },
 {
     0x0403, 0xbfd9,
     "OpenDCC Sniffer",
 },
 {
     0x0403, 0xbfda,
     "OpenDCC Throttle",
 },
 {
     0x0403, 0xbfdb,
     "OpenDCC Gateway",
 },
 {
     0x0403, 0xc7d0,
     "RR-CirKits LocoBuffer",
 },
 {
     0x0403, 0xc850,
     "DMX4ALL DMX interface",
 },
 {
     0x0403, 0xc990,
     "ASK RDR 4X7",
 },
 {
     0x0403, 0xc991,
     "ASK RDR 4X7",
 },
 {
     0x0403, 0xc992,
     "ASK RDR 4X7",
 },
 {
     0x0403, 0xc993,
     "ASK RDR 4X7",
 },
 {
     0x0403, 0xc994,
     "ASK RDR 4X7",
 },
 {
     0x0403, 0xc995,
     "ASK RDR 4X7",
 },
 {
     0x0403, 0xc996,
     "ASK RDR 4X7",
 },
 {
     0x0403, 0xc997,
     "ASK RDR 4X7",
 },
 {
     0x0403, 0xca81,
     "MJS Sirius To PC Interface",
 },
 {
     0x0403, 0xcaa0,
     "uChameleon",
 },
 {
     0x0403, 0xcc48,
     "OpenPort 1.3 Mitsubishi",
 },
 {
     0x0403, 0xcc49,
     "OpenPort 1.3 Subaru",
 },
 {
     0x0403, 0xcc4a,
     "OpenPort 1.3 Universal",
 },
 {
     0x0403, 0xcff8,
     "2232L Serial",
 },
 {
     0x0403, 0xd010,
     "Radio Modem",
 },
 {
     0x0403, 0xd011,
     "Radio Modem",
 },
 {
     0x0403, 0xd012,
     "Radio Modem",
 },
 {
     0x0403, 0xd013,
     "Radio Modem",
 },
 {
     0x0403, 0xd014,
     "Radio Modem",
 },
 {
     0x0403, 0xd015,
     "Radio Modem",
 },
 {
     0x0403, 0xd016,
     "Radio Modem",
 },
 {
     0x0403, 0xd017,
     "Radio Modem",
 },
 {
     0x0403, 0xd070,
     "iPlus",
 },
 {
     0x0403, 0xd071,
     "iPlus",
 },
 {
     0x0403, 0xd388,
     "Serial",
 },
 {
     0x0403, 0xd389,
     "Serial",
 },
 {
     0x0403, 0xd38a,
     "Serial",
 },
 {
     0x0403, 0xd38b,
     "Serial",
 },
 {
     0x0403, 0xd38c,
     "Serial",
 },
 {
     0x0403, 0xd38d,
     "Serial",
 },
 {
     0x0403, 0xd38e,
     "Serial",
 },
 {
     0x0403, 0xd38f,
     "Serial",
 },
 {
     0x0403, 0xd678,
     "Gamma Scout Online",
 },
 {
     0x0403, 0xd738,
     "Propox JTAG",
 },
 {
     0x0403, 0xdc00,
     "Westrex 777",
 },
 {
     0x0403, 0xdc01,
     "Westrex 8900F",
 },
 {
     0x0403, 0xdd20,
     "HF Dual ISO Reader",
 },
 {
     0x0403, 0xdf28,
     "CCD camera",
 },
 {
     0x0403, 0xdf30,
     "ATK-16 Camera",
 },
 {
     0x0403, 0xdf31,
     "ATK-16HR Camera",
 },
 {
     0x0403, 0xdf32,
     "ATK-16C Camera",
 },
 {
     0x0403, 0xdf33,
     "ATK-16HRC Camera",
 },
 {
     0x0403, 0xdf35,
     "ATK-16IC Camera",
 },
 {
     0x0403, 0xe050,
     "ServoCenter3.1",
 },
 {
     0x0403, 0xe000,
     "USR",
 },
 {
     0x0403, 0xe001,
     "Mini-Sound-Modul",
 },
 {
     0x0403, 0xe002,
     "KL 100",
 },
 {
     0x0403, 0xe004,
     "WS 550",
 },
 {
     0x0403, 0xe008,
     "WS 888",
 },
 {
     0x0403, 0xe009,
     "WS 550",
 },
 {
     0x0403, 0xe00a,
     "Funk Energie Monitor",
 },
 {
     0x0403, 0xe0e8,
     "FHZ 1300 PC",
 },
 {
     0x0403, 0xe0e9,
     "WS 500",
 },
 {
     0x0403, 0xe0ea,
     "RS-485",
 },
 {
     0x0403, 0xe0eb,
     "UMS 100",
 },
 {
     0x0403, 0xe0ec,
     "TFD 128",
 },
 {
     0x0403, 0xe0ed,
     "FM3 RX",
 },
 {
     0x0403, 0xe0ee,
     "WS 777",
 },
 {
     0x0403, 0xe0ef,
     "EM 1010 PC",
 },
 {
     0x0403, 0xe0f0,
     "CSI 8",
 },
 {
     0x0403, 0xe0f1,
     "EM 1000 DL",
 },
 {
     0x0403, 0xe0f2,
     "PCK 100",
 },
 {
     0x0403, 0xe0f3,
     "RFP 500",
 },
 {
     0x0403, 0xe0f4,
     "FS 20 SIG",
 },
 {
     0x0403, 0xe0f5,
     "UTP 8",
 },
 {
     0x0403, 0xe0f6,
     "WS 300 PC",
 },
 {
     0x0403, 0xe0f7,
     "WS 444 PC",
 },
 {
     0x0403, 0xe40b,
     "Serial",
 },
 {
     0x0403, 0xe520,
     "EVER Eco Pro UPS",
 },
 {
     0x0403, 0xe548,
     "Active Robots comms",
 },
 {
     0x0403, 0xe6c8,
     "Pyramid Display",
 },
 {
     0x0403, 0xe700,
     "Unicom III",
 },
 {
     0x0403, 0xe808,
     "Serial",
 },
 {
     0x0403, 0xe809,
     "Serial",
 },
 {
     0x0403, 0xe80a,
     "Serial",
 },
 {
     0x0403, 0xe80b,
     "Serial",
 },
 {
     0x0403, 0xe80c,
     "Serial",
 },
 {
     0x0403, 0xe80d,
     "Serial",
 },
 {
     0x0403, 0xe80e,
     "Serial",
 },
 {
     0x0403, 0xe80f,
     "Serial",
 },
 {
     0x0403, 0xe888,
     "Expert ISDN",
 },
 {
     0x0403, 0xe889,
     "RS232 OptoBridge",
 },
 {
     0x0403, 0xe88a,
     "Expert mouseCLOCK USB II",
 },
 {
     0x0403, 0xe88b,
     "Expert mouseCLOCK USB II MSF",
 },
 {
     0x0403, 0xe88c,
     "Expert mouseCLOCK USB II HBG",
 },
 {
     0x0403, 0xe88d,
     "Serial",
 },
 {
     0x0403, 0xe88e,
     "Serial",
 },
 {
     0x0403, 0xe88f,
     "Serial",
 },
 {
     0x0403, 0xea90,
     "1-Wire",
 },
 {
     0x0403, 0xebe0,
     "TNC-X packet-radio",
 },
 {
     0x0403, 0xec88,
     "VCP",
 },
 {
     0x0403, 0xec89,
     "D2XX",
 },
 {
     0x0403, 0xed22,
     "RigExpert Tiny",
 },
 {
     0x0403, 0xed71,
     "HO870",
 },
 {
     0x0403, 0xed74,
     "HO820",
 },
 {
     0x0403, 0xee18,
     "FT232BM Serial",
 },
 {
     0x0403, 0xeee8,
     "KW",
 },
 {
     0x0403, 0xeee9,
     "YS",
 },
 {
     0x0403, 0xeeea,
     "Y6",
 },
 {
     0x0403, 0xeeeb,
     "Y8",
 },
 {
     0x0403, 0xeeec,
     "IC",
 },
 {
     0x0403, 0xeeed,
     "DB9",
 },
 {
     0x0403, 0xeeee,
     "RS232",
 },
 {
     0x0403, 0xeeef,
     "Y9",
 },
 {
     0x0403, 0xef50,
     "DGQG",
 },
 {
     0x0403, 0xef51,
     "DUSB",
 },
 {
     0x0403, 0xf068,
     "UAD 8",
 },
 {
     0x0403, 0xf069,
     "UAD 7",
 },
 {
     0x0403, 0xf06a,
     "USI 2",
 },
 {
     0x0403, 0xf06b,
     "T 1100",
 },
 {
     0x0403, 0xf06c,
     "PCD 200",
 },
 {
     0x0403, 0xf06d,
     "ULA 200",
 },
 {
     0x0403, 0xf06e,
     "ALC 8500 Expert",
 },
 {
     0x0403, 0xf06f,
     "FHZ 1000 PC",
 },
 {
     0x0403, 0xf0c0,
     "UltraPort",
 },
 {
     0x0403, 0xf0c8,
     "Sprog II",
 },
 {
     0x0403, 0xf208,
     "Infrared",
 },
 {
     0x0403, 0xf2d0,
     "HomePro ZWave",
 },
 {
     0x0403, 0xf3c0,
     "Serial",
 },
 {
     0x0403, 0xf3c1,
     "Serial",
 },
 {
     0x0403, 0xf448,
     "Coastal ChipWorks TNC-X",
 },
 {
     0x0403, 0xf449,
     "Master Development 2.0",
 },
 {
     0x0403, 0xf44a,
     "Serial",
 },
 {
     0x0403, 0xf44b,
     "Serial",
 },
 {
     0x0403, 0xf44c,
     "Serial",
 },
 {
     0x0403, 0xf460,
     "Oceanic instrument",
 },
 {
     0x0403, 0xf680,
     "Suunto Sports",
 },
 {
     0x0403, 0xf850,
     "USB-UIRT",
 },
 {
     0x0403, 0xf857,
     "USBX-707",
 },
 {
     0x0403, 0xf9d0,
     "ICD-U20",
 },
 {
     0x0403, 0xf9d1,
     "ICD-U40",
 },
 {
     0x0403, 0xf9d2,
     "MACH-X",
 },
 {
     0x0403, 0xf9d3,
     "LOAD N GO",
 },
 {
     0x0403, 0xf9d4,
     "ICDU64",
 },
 {
     0x0403, 0xf9d5,
     "PRIME8",
 },
 {
     0x0403, 0xf9e9,
     "ITM Touchscreen",
 },
 {
     0x0403, 0xfa00,
     "Matrix Orbital USB Serial",
 },
 {
     0x0403, 0xfa01,
     "Matrix Orbital MX200 Series LCD",
 },
 {
     0x0403, 0xfa02,
     "Matrix Orbital LCD",
 },
 {
     0x0403, 0xfa03,
     "Matrix Orbital LK202-24 LCD",
 },
 {
     0x0403, 0xfa04,
     "Matrix Orbital LK204-24 LCD",
 },
 {
     0x0403, 0xfa05,
     "Matrix Orbital LCD",
 },
 {
     0x0403, 0xfa06,
     "Matrix Orbital LCD",
 },
 {
     0x0403, 0xfa10,
     "Relais",
 },
 {
     0x0403, 0xfa78,
     "Tira-1",
 },
 {
     0x0403, 0xfa88,
     "DAC-2",
 },
 {
     0x0403, 0xfad0,
     "Accesso reader",
 },
 {
     0x0403, 0xfaf0,
     "Serial",
 },
 {
     0x0403, 0xfb58,
     "UR 100",
 },
 {
     0x0403, 0xfb59,
     "CLI 7000",
 },
 {
     0x0403, 0xfb5a,
     "UM 100",
 },
 {
     0x0403, 0xfb5b,
     "UO 100",
 },
 {
     0x0403, 0xfb5c,
     "PPS 7330",
 },
 {
     0x0403, 0xfb5d,
     "TFM 100",
 },
 {
     0x0403, 0xfb5e,
     "UDF 77",
 },
 {
     0x0403, 0xfb5f,
     "UIO 88",
 },
 {
     0x0403, 0xfb80,
     "R2000KU RNG",
 },
 {
     0x0403, 0xfb99,
     "BCS SE923",
 },
 {
     0x0403, 0xfbfa,
     "FT232RL",
 },
 {
     0x0403, 0xfc08,
     "Crystalfontz CFA-632 LCD",
 },
 {
     0x0403, 0xfc09,
     "Crystalfontz CFA-634 LCD",
 },
 {
     0x0403, 0xfc0a,
     "Crystalfontz CFA-547 LCD",
 },
 {
     0x0403, 0xfc0b,
     "Crystalfontz CFA-633 LCD",
 },
 {
     0x0403, 0xfc0c,
     "Crystalfontz CFA-631 LCD",
 },
 {
     0x0403, 0xfc0d,
     "Crystalfontz CFA-635 LCD",
 },
 {
     0x0403, 0xfc0e,
     "Crystalfontz CFA-640 LCD",
 },
 {
     0x0403, 0xfc0f,
     "Crystalfontz CFA-642 LCD",
 },
 {
     0x0403, 0xfc60,
     "Serial",
 },
 {
     0x0403, 0xfc70,
     "Protego",
 },
 {
     0x0403, 0xfc71,
     "R200-USB TRNG",
 },
 {
     0x0403, 0xfc72,
     "Protego",
 },
 {
     0x0403, 0xfc73,
     "Protego",
 },
 {
     0x0403, 0xfc82,
     "SEMC DSS-20 SyncStation",
 },
 {
     0x0403, 0xfd60,
     "CANview",
 },
 {
     0x0403, 0xfe38,
     "Modem",
 },
 {
     0x0403, 0xff00,
     "AMC-232USB0",
 },
 {
     0x0403, 0xff20,
     "TT-USB",
 },
 {
     0x0403, 0xff38,
     "US485",
 },
 {
     0x0403, 0xff39,
     "PIC-Programmer",
 },
 {
     0x0403, 0xff3a,
     "PCMCIA SRAM-cards reader",
 },
 {
     0x0403, 0xff3b,
     "Particel counter PK1",
 },
 {
     0x0403, 0xff3c,
     "RS232",
 },
 {
     0x0403, 0xff3d,
     "APP 70 dust monitoring",
 },
 {
     0x0403, 0xff3e,
     "IBS PEDO-Modem",
 },
 {
     0x0403, 0xff3f,
     "Serial",
 },
 {
     0x0403, 0xffa8,
     "CANUSB",
 },
 {
     0x04cb, 0x0100,
     "Mass Storage",
 },
 {
     0x04c5, 0x105b,
     "AH-F401U Air H device",
 },
 {
     0x0430, 0x0005,
     "Type 6 Keyboard",
 },
 {
     0x0430, 0x00a2,
     "Type 7 Keyboard",
 },
 {
     0x0430, 0x0100,
     "Type 6 Mouse",
 },
 {
     0x0430, 0x0423,
     "Smart Power Strip FX-5204PS",
 },
 {
     0x0430, 0x042a,
     "Base Station FX-5251WB",
 },
 {
     0x0430, 0xa4a2,
     "Virtual Eth Device",
 },
 {
     0x0bf8, 0x1009,
     "PrismGT USB 2.0 WLAN",
 },
 {
     0x1b71, 0x3002,
     "Fushicai Audio-Video Grabber",
 },
 {
     0x0e7e, 0x1001,
     "YP3X00 PDA",
 },
 {
     0x091e, 0x0003,
     "GPSmap 60Csx",
 },
 {
     0x091e, 0x0004,
     "Ique 3600",
 },
 {
     0x091e, 0x23c0,
     "Dakota 20",
 },
 {
     0x091e, 0x2459,
     "GPSmap 62s",
 },
 {
     0x1076, 0x7f40,
     "GDM720x MASS storage mode",
 },
 {
     0x08e6, 0x5501,
     "Prox-PU/CU",
 },
 {
     0x05e3, 0x0502,
     "GL620USB-A GeneLink USB-USB Bridge",
 },
 {
     0x05e3, 0x05e3,
     "GeneLink Host-Host Bridge",
 },
 {
     0x05e3, 0x0604,
     "GL650 Hub",
 },
 {
     0x05e3, 0x0700,
     "GL641USB CompactFlash",
 },
 {
     0x1044, 0x8002,
     "GN-BR402W",
 },
 {
     0x1044, 0x8003,
     "GN-WLBM101",
 },
 {
     0x1044, 0x8007,
     "GN-WBKG",
 },
 {
     0x1044, 0x8008,
     "GN-WB01GS",
 },
 {
     0x1044, 0x800a,
     "GN-WI05GS",
 },
 {
     0x1044, 0x800b,
     "RT2870",
 },
 {
     0x1044, 0x800c,
     "GN-WB31N",
 },
 {
     0x1044, 0x800d,
     "GN-WB32L",
 },
 {
     0x1690, 0x0701,
     "WLAN",
 },
 {
     0x1690, 0x0710,
     "SMCWUSBT-G",
 },
 {
     0x1690, 0x0711,
     "SMCWUSBT-G",
 },
 {
     0x1690, 0x0712,
     "AR5523",
 },
 {
     0x1690, 0x0713,
     "AR5523",
 },
 {
     0x1690, 0x0722,
     "RT2573",
 },
 {
     0x1690, 0x0740,
     "RT3070",
 },
 {
     0x1690, 0x0744,
     "RT3070",
 },
 {
     0x16ab, 0x7801,
     "AR5523",
 },
 {
     0x16ab, 0x7802,
     "AR5523",
 },
 {
     0x16ab, 0x7811,
     "AR5523",
 },
 {
     0x16ab, 0x7812,
     "AR5523",
 },
 {
     0x0915, 0x2000,
     "PrismGT USB 2.0 WLAN",
 },
 {
     0x0915, 0x2002,
     "PrismGT USB 2.0 WLAN",
 },
 {
     0x0c33, 0x0010,
     "Aurical",
 },
 {
     0x0921, 0x1001,
     "GoCOM232 Serial converter",
 },
 {
     0x1631, 0x6200,
     "GWUSB2E",
 },
 {
     0x1631, 0xc019,
     "RT2573",
 },
 {
     0x0428, 0x4001,
     "GamePad Pro",
 },
 {
     0x0a6b, 0x0001,
     "CF-writer/MP3 Player",
 },
 {
     0x077d, 0x0405,
     "iMate, ADB adapter",
 },
 {
     0x0959, 0xdcf7,
     "Expert mouseCLOCK USB",
 },
 {
     0x06f8, 0xa300,
     "DA Leader",
 },
 {
     0x06f8, 0xe000,
     "HWGUSB2-54 WLAN",
 },
 {
     0x06f8, 0xe010,
     "HWGUSB2-54-LB",
 },
 {
     0x06f8, 0xe020,
     "HWGUSB2-54V2-AP",
 },
 {
     0x06f8, 0xe030,
     "HWNU-300",
 },
 {
     0x06f8, 0xe031,
     "HWNUm-300",
 },
 {
     0x06f8, 0xe032,
     "HWGUn-54",
 },
 {
     0x06f8, 0xe033,
     "HWNUP-150",
 },
 {
     0x06f8, 0xe035,
     "RTL8192CU",
 },
 {
     0x0637, 0x0001,
     "Gunze USB Touch Panel",
 },
 {
     0x0693, 0x0002,
     "FlashGate SmartMedia",
 },
 {
     0x0693, 0x0003,
     "FlashGate CompactFlash",
 },
 {
     0x0693, 0x0005,
     "FlashGate",
 },
 {
     0x0b41, 0x0011,
     "Crossam2+USB IR commander",
 },
 {
     0x082d, 0x0100,
     "Handspring Visor",
 },
 {
     0x082d, 0x0200,
     "Handspring Treo",
 },
 {
     0x082d, 0x0300,
     "Handspring Treo 600",
 },
 {
     0x0573, 0x4d12,
     "WinTV FM",
 },
 {
     0x0e66, 0x0001,
     "RT2870",
 },
 {
     0x0e66, 0x0003,
     "RT2870",
 },
 {
     0x0e66, 0x0009,
     "HWUN2",
 },
 {
     0x0e66, 0x000b,
     "HWDN2",
 },
 {
     0x0e66, 0x0013,
     "RT2870",
 },
 {
     0x0e66, 0x0015,
     "RTL8192SU",
 },
 {
     0x0e66, 0x0016,
     "RTL8192SU",
 },
 {
     0x0e66, 0x0017,
     "RT2870",
 },
 {
     0x0e66, 0x0018,
     "RT2870",
 },
 {
     0x0e66, 0x0019,
     "RTL8192CU",
 },
 {
     0x0e66, 0x0020,
     "RTL8192CU",
 },
 {
     0x0e66, 0x400c,
     "10/100 Ethernet",
 },
 {
     0x07b8, 0x420a,
     "UF200 Ethernet",
 },
 {
     0x0a47, 0x9601,
     "USB-100",
 },
 {
     0x04a4, 0x0004,
     "DVD-CAM DZ-MV100A Camcorder",
 },
 {
     0x04d9, 0x0499,
     "Mouse",
 },
 {
     0x03f0, 0x0004,
     "DeskJet 895C",
 },
 {
     0x03f0, 0x0101,
     "Scanjet 4100C",
 },
 {
     0x03f0, 0x0102,
     "Photosmart S20",
 },
 {
     0x03f0, 0x0104,
     "DeskJet 880C",
 },
 {
     0x03f0, 0x0105,
     "ScanJet 4200C",
 },
 {
     0x03f0, 0x0107,
     "CD-Writer Plus",
 },
 {
     0x03f0, 0x010c,
     "Multimedia Keyboard Hub",
 },
 {
     0x03f0, 0x011c,
     "HN210W",
 },
 {
     0x03f0, 0x0121,
     "HP-x9G+",
 },
 {
     0x03f0, 0x0201,
     "ScanJet 6200C",
 },
 {
     0x03f0, 0x0202,
     "PhotoSmart S20",
 },
 {
     0x03f0, 0x0204,
     "DeskJet 815C",
 },
 {
     0x03f0, 0x0205,
     "ScanJet 3300C",
 },
 {
     0x03f0, 0x0207,
     "CD-Writer Plus 8200e",
 },
 {
     0x03f0, 0x0212,
     "DeskJet 1220C",
 },
 {
     0x03f0, 0x0304,
     "DeskJet 810C/812C",
 },
 {
     0x03f0, 0x0305,
     "Scanjet 4300C",
 },
 {
     0x03f0, 0x0307,
     "CD-Writer+ CD-4e",
 },
 {
     0x03f0, 0x0311,
     "OfficeJet G85xi",
 },
 {
     0x03f0, 0x0317,
     "LaserJet 1200",
 },
 {
     0x03f0, 0x0401,
     "Scanjet 5200C",
 },
 {
     0x03f0, 0x0404,
     "DeskJet 830C",
 },
 {
     0x03f0, 0x0405,
     "ScanJet 3400cse",
 },
 {
     0x03f0, 0x0504,
     "DeskJet 885C",
 },
 {
     0x03f0, 0x0517,
     "LaserJet 1000",
 },
 {
     0x03f0, 0x0601,
     "Scanjet 6300C",
 },
 {
     0x03f0, 0x0604,
     "DeskJet 840c",
 },
 {
     0x03f0, 0x0605,
     "ScanJet 2200C",
 },
 {
     0x03f0, 0x0701,
     "Scanjet 5300C",
 },
 {
     0x03f0, 0x0804,
     "DeskJet 816C",
 },
 {
     0x03f0, 0x1004,
     "Deskjet 970Cse",
 },
 {
     0x03f0, 0x1005,
     "Scanjet 5400C",
 },
 {
     0x03f0, 0x1016,
     "iPAQ 22xx/Jornada 548",
 },
 {
     0x03f0, 0x1104,
     "Deskjet 959C",
 },
 {
     0x03f0, 0x1116,
     "Jornada 568",
 },
 {
     0x03f0, 0x1204,
     "DeskJet 930c",
 },
 {
     0x03f0, 0x1317,
     "LaserJet 1005",
 },
 {
     0x03f0, 0x1801,
     "Inkjet P-2000U",
 },
 {
     0x03f0, 0x1e1d,
     "HS2300",
 },
 {
     0x03f0, 0x1f06,
     "T750 UPS",
 },
 {
     0x03f0, 0x1f08,
     "T1000 UPS",
 },
 {
     0x03f0, 0x1f09,
     "T1500 UPS",
 },
 {
     0x03f0, 0x1f0a,
     "R/T2200 UPS",
 },
 {
     0x03f0, 0x1fe0,
     "R1500 G2 UPS",
 },
 {
     0x03f0, 0x1fe1,
     "T750 G2 UPS",
 },
 {
     0x03f0, 0x2004,
     "DeskJet 640c",
 },
 {
     0x03f0, 0x2b17,
     "LaserJet 1020",
 },
 {
     0x03f0, 0x3102,
     "Photosmart P1100",
 },
 {
     0x03f0, 0x4117,
     "LaserJet 1018",
 },
 {
     0x03f0, 0x811c,
     "HN210E Ethernet",
 },
 {
     0x103c, 0x1629,
     "RTL8188CU",
 },
 {
     0xf003, 0x6002,
     "PhotoSmart C500",
 },
 {
     0x0bb4, 0x00cf,
     "PPC6700 Modem",
 },
 {
     0x0bb4, 0x0a51,
     "SmartPhone",
 },
 {
     0x0bb4, 0x0ffe,
     "Android phone",
 },
 {
     0x12d1, 0x1001,
     "HUAWEI Mobile E618",
 },
 {
     0x12d1, 0x1003,
     "HUAWEI Mobile Modem",
 },
 {
     0x12d1, 0x1008,
     "HUAWEI Mobile Modem",
 },
 {
     0x12d1, 0x1404,
     "HUAWEI Mobile Modem",
 },
 {
     0x12d1, 0x1406,
     "HUAWEI Mobile Modem",
 },
 {
     0x12d1, 0x140c,
     "HUAWEI Mobile E180",
 },
 {
     0x12d1, 0x1411,
     "HUAWEI Mobile E510",
 },
 {
     0x12d1, 0x1414,
     "HUAWEI Mobile E181",
 },
 {
     0x12d1, 0x1417,
     "HUAWEI Mobile Modem",
 },
 {
     0x12d1, 0x1429,
     "HUAWEI Mobile Modem",
 },
 {
     0x12d1, 0x1442,
     "HUAWEI Mobile Modem",
 },
 {
     0x12d1, 0x1446,
     "HUAWEI Mobile Modem",
 },
 {
     0x12d1, 0x1465,
     "HUAWEI Mobile K3765",
 },
 {
     0x12d1, 0x14ac,
     "HUAWEI Mobile Modem",
 },
 {
     0x12d1, 0x14c5,
     "HUAWEI Mobile Modem",
 },
 {
     0x12d1, 0x14b7,
     "HUAWEI Mobile Modem K4511",
 },
 {
     0x12d1, 0x14fe,
     "HUAWEI Mobile E353 Initial",
 },
 {
     0x12d1, 0x1505,
     "HUAWEI Mobile E392 Initial",
 },
 {
     0x12d1, 0x1520,
     "HUAWEI Mobile K3765 Initial",
 },
 {
     0x12d1, 0x1573,
     "HUAWEI Mobile ME906",
 },
 {
     0x12d1, 0x1c05,
     "HUAWEI Mobile E173s",
 },
 {
     0x12d1, 0x1c0b,
     "HUAWEI Mobile E173s Initial",
 },
 {
     0x12d1, 0x1f01,
     "HUAWEI Mobile E303",
 },
 {
     0x02ad, 0x138c,
     "PVR-SMART",
 },
 {
     0x106c, 0x3701,
     "PC5740 EVDO",
 },
 {
     0x106c, 0x3714,
     "UM175 EVDO",
 },
 {
     0x04b3, 0x3107,
     "Optical",
 },
 {
     0x04b3, 0x310b,
     "Wheel",
 },
 {
     0x04b3, 0x4427,
     "CD-ROM",
 },
 {
     0x04b3, 0x4484,
     "Hub",
 },
 {
     0x0aba, 0x0102,
     "Quantis USB",
 },
 {
     0x0c26, 0x0004,
     "ID-1",
 },
 {
     0x0c26, 0x0009,
     "ID-RP2C service 1",
 },
 {
     0x0c26, 0x000a,
     "ID-RP2C service 2",
 },
 {
     0x0c26, 0x000b,
     "ID-RP2D",
 },
 {
     0x0c26, 0x000c,
     "ID-RP2V service T",
 },
 {
     0x0c26, 0x000d,
     "ID-RP2V service R",
 },
 {
     0x0c26, 0x0010,
     "ID-RP4000V service T",
 },
 {
     0x0c26, 0x0011,
     "ID-RP4000V service R",
 },
 {
     0x0c26, 0x0012,
     "ID-RP2000V service T",
 },
 {
     0x0c26, 0x0013,
     "ID-RP2000V service R",
 },
 {
     0x075d, 0x0300,
     "UPS",
 },
 {
     0x0acd, 0x0300,
     "Serial",
 },
 {
     0x04e1, 0x0201,
     "Hub",
 },
 {
     0x0718, 0xb000,
     "Flash Go!",
 },
 {
     0x1608, 0x0001,
     "EdgePort/4 RS232",
 },
 {
     0x1608, 0x0002,
     "Hubport/7",
 },
 {
     0x1608, 0x0003,
     "Rapidport/4",
 },
 {
     0x1608, 0x0004,
     "Edgeport/4 RS232",
 },
 {
     0x1608, 0x0005,
     "Edgeport/2 RS232",
 },
 {
     0x1608, 0x0006,
     "Edgeport/4 RS422",
 },
 {
     0x1608, 0x0007,
     "Edgeport/2 RS422/RS485",
 },
 {
     0x1608, 0x0008,
     "Hubport/4",
 },
 {
     0x1608, 0x0009,
     "Hand-built Edgeport/8",
 },
 {
     0x1608, 0x000A,
     "MultiTech version of RP/4",
 },
 {
     0x1608, 0x000B,
     "Edgeport/(4)21 Parallel",
 },
 {
     0x1608, 0x000C,
     "Edgeport/421 Hub+RS232+Parallel",
 },
 {
     0x1608, 0x000D,
     "Edgeport/21 RS232+Parallel",
 },
 {
     0x1608, 0x000E,
     "1/2 Edgeport/8",
 },
 {
     0x1608, 0x000F,
     "Edgeport/8",
 },
 {
     0x1608, 0x0010,
     "Edgeport/2 RS232/DIN",
 },
 {
     0x1608, 0x0011,
     "Edgeport/4 RS232/DIN",
 },
 {
     0x1608, 0x0012,
     "1/2 Edgeport/16",
 },
 {
     0x1608, 0x0013,
     "Edgeport Compatible",
 },
 {
     0x1608, 0x0014,
     "Edgeport/8 RS422",
 },
 {
     0x1608, 0x0305,
     "WatchPort/H",
 },
 {
     0x1608, 0x1403,
     "OEM device",
 },
 {
     0x05ab, 0x0002,
     "Parallel",
 },
 {
     0x05ab, 0x0031,
     "ATAPI",
 },
 {
     0x05ab, 0x0060,
     "USB2 Storage",
 },
 {
     0x05ab, 0x0200,
     "IDE ISD110",
 },
 {
     0x05ab, 0x0202,
     "IDE ISD105",
 },
 {
     0x05ab, 0x0301,
     "Portable USB Harddrive V2",
 },
 {
     0x05ab, 0x0351,
     "Portable USB Harddrive V2",
 },
 {
     0x05ab, 0x081a,
     "USB cable",
 },
 {
     0x05ab, 0x5701,
     "USB Storage Adapter V2",
 },
 {
     0x8087, 0x0020,
     "Rate Matching Hub",
 },
 {
     0x8087, 0x0024,
     "Rate Matching Hub",
 },
 {
     0x8086, 0x0110,
     "EasyPC",
 },
 {
     0x8086, 0x0200,
     "AP310 AnyPoint II",
 },
 {
     0x8086, 0x1111,
     "Wireless 2011B",
 },
 {
     0x8087, 0x8000,
     "Rate Matching Hub",
 },
 {
     0x8087, 0x8001,
     "Rate Matching Hub",
 },
 {
     0x8087, 0x8002,
     "Rate Matching Hub",
 },
 {
     0x8087, 0x8008,
     "Rate Matching Hub",
 },
 {
     0x8087, 0x8009,
     "Rate Matching Hub",
 },
 {
     0x8087, 0x800a,
     "Rate Matching Hub",
 },
 {
     0x8086, 0x9890,
     "82930 test board",
 },
 {
     0x8087, 0x0a2a,
     "Bluetooth",
 },
 {
     0x8087, 0x0a2b,
     "Bluetooth",
 },
 {
     0x1209, 0x1002,
     "IO Board",
 },
 {
     0x1209, 0x1003,
     "Mini IO Board",
 },
 {
     0x1209, 0x1006,
     "Mini IO Board",
 },
 {
     0x09aa, 0x1000,
     "PrismGT USB 2.0 WLAN",
 },
 {
     0x09aa, 0x3642,
     "Prism2.x WLAN",
 },
 {
     0x093c, 0x0601,
     "ValueCAN",
 },
 {
     0x093c, 0x0701,
     "NeoVI Blue",
 },
 {
     0x04bb, 0x0314,
     "USB-SSMRW SD-card",
 },
 {
     0x04bb, 0x031e,
     "USB-SDRW SD-card",
 },
 {
     0x04bb, 0x0901,
     "USB ET/T",
 },
 {
     0x04bb, 0x0904,
     "USB ET/TX",
 },
 {
     0x04bb, 0x0913,
     "USB ET/TX-S",
 },
 {
     0x04bb, 0x0919,
     "USB WN-B11",
 },
 {
     0x04bb, 0x0922,
     "USB Airport WN-B11",
 },
 {
     0x04bb, 0x0928,
     "USB WN-G54/US",
 },
 {
     0x04bb, 0x0929,
     "USB WN-G54/US",
 },
 {
     0x04bb, 0x092a,
     "ETX-US2",
 },
 {
     0x04bb, 0x0930,
     "ETG-US2",
 },
 {
     0x04bb, 0x093c,
     "FT232R",
 },
 {
     0x04bb, 0x093f,
     "WN-GDN/US2",
 },
 {
     0x04bb, 0x0944,
     "RT3072",
 },
 {
     0x04bb, 0x0945,
     "RT3072",
 },
 {
     0x04bb, 0x0947,
     "RT3072",
 },
 {
     0x04bb, 0x0948,
     "RT3072",
 },
 {
     0x04bb, 0x094c,
     "WN-G150UM",
 },
 {
     0x04bb, 0x0950,
     "RTL8192CU",
 },
 {
     0x04bb, 0x0a03,
     "RSAQ1 Serial",
 },
 {
     0x40bb, 0x0a09,
     "USB2.0-SCSI Bridge USB2-SC",
 },
 {
     0x04bb, 0x0a0e,
     "RSAQ5 Serial",
 },
 {
     0x059b, 0x0001,
     "Zip 100",
 },
 {
     0x059b, 0x0030,
     "Zip 250",
 },
 {
     0x059b, 0x0032,
     "Zip 250",
 },
 {
     0x059b, 0x0055,
     "CDRW 9602",
 },
 {
     0x4102, 0x1101,
     "iFP-1xx",
 },
 {
     0x4102, 0x1103,
     "iFP-3xx",
 },
 {
     0x4102, 0x1105,
     "iFP-5xx",
 },
 {
     0x0eba, 0x1080,
     "WM1080A",
 },
 {
     0x04d8, 0x0002,
     "USB-LCD-20x2",
 },
 {
     0x04d8, 0xc002,
     "USB-LCD-256x64",
 },
 {
     0x16d6, 0x0001,
     "PC-60B",
 },
 {
     0x087d, 0x5704,
     "Ethernet",
 },
 {
     0x0784, 0x5300,
     "JD 350",
 },
 {
     0x0c6c, 0x04b2,
     "SPECBOS 1201",
 },
 {
     0x1145, 0x0001,
     "AirH\"PHONE AH-J3001V/J3002V",
 },
 {
     0x04f1, 0x3009,
     "MP-XP7250 Builtin WLAN",
 },
 {
     0x04f1, 0x3008,
     "MP-PRX1",
 },
 {
     0x17a8, 0x0001,
     "Optical Eye/3-wire",
 },
 {
     0x17a8, 0x0005,
     "M-Bus Master MultiPort 250D",
 },
 {
     0x05e9, 0x0008,
     "10BT Ethernet",
 },
 {
     0x05e9, 0x0009,
     "10BT Ethernet",
 },
 {
     0x050f, 0x0003,
     "MiniHub 4000P",
 },
 {
     0x050f, 0x0180,
     "KC-180 IrDA",
 },
 {
     0x07c1, 0x0068,
     "HKS-0200 USBDAQ",
 },
 {
     0x047d, 0x1003,
     "Orbit trackball",
 },
 {
     0x047d, 0x1005,
     "TurboBall",
 },
 {
     0x047d, 0x1009,
     "Orbit trackball for Mac",
 },
 {
     0x047d, 0x105e,
     "Bluetooth",
 },
 {
     0x047d, 0x5002,
     "VideoCAM VGA",
 },
 {
     0x06cd, 0x0101,
     "USA-28 serial",
 },
 {
     0x06cd, 0x0102,
     "USA-28X serial",
 },
 {
     0x06cd, 0x0103,
     "USA-19 serial",
 },
 {
     0x06cd, 0x0104,
     "USA-18 serial",
 },
 {
     0x06cd, 0x0105,
     "USA-18X serial",
 },
 {
     0x06cd, 0x0106,
     "USA-19W serial",
 },
 {
     0x06cd, 0x0107,
     "USA-19 serial",
 },
 {
     0x06cd, 0x0108,
     "USA-19W serial",
 },
 {
     0x06cd, 0x0109,
     "USA-49W serial",
 },
 {
     0x06cd, 0x010a,
     "USA-49W serial",
 },
 {
     0x06cd, 0x010b,
     "USA-19QI serial",
 },
 {
     0x06cd, 0x010c,
     "USA-19QI serial",
 },
 {
     0x06cd, 0x010d,
     "USA-19Q serial",
 },
 {
     0x06cd, 0x010e,
     "USA-19Q serial",
 },
 {
     0x06cd, 0x010f,
     "USA-28 serial",
 },
 {
     0x06cd, 0x0110,
     "USA-28X/XB serial",
 },
 {
     0x06cd, 0x0111,
     "USA-18 serial",
 },
 {
     0x06cd, 0x0112,
     "USA-18X serial",
 },
 {
     0x06cd, 0x0113,
     "USA-28XB serial",
 },
 {
     0x06cd, 0x0114,
     "USA-28XB serial",
 },
 {
     0x06cd, 0x0115,
     "USA-28XA serial",
 },
 {
     0x06cd, 0x0116,
     "USA-18XA serial",
 },
 {
     0x06cd, 0x0117,
     "USA-18XA serial",
 },
 {
     0x06cd, 0x0118,
     "USA-19WQ serial",
 },
 {
     0x06cd, 0x0119,
     "USA-19WQ serial",
 },
 {
     0x06cd, 0x0201,
     "UIA-10 remote control",
 },
 {
     0x06cd, 0x0202,
     "UIA-11 remote control",
 },
 {
     0x0951, 0x0008,
     "Ethernet",
 },
 {
     0x0951, 0x000a,
     "KNU101TX Ethernet",
 },
 {
     0x0d46, 0x2020,
     "Konverter for B1",
 },
 {
     0x0d46, 0x2021,
     "Konverter for KAAN",
 },
 {
     0x040a, 0x0100,
     "Digital Science DC220",
 },
 {
     0x040a, 0x0110,
     "Digital Science DC260",
 },
 {
     0x040a, 0x0111,
     "Digital Science DC265",
 },
 {
     0x040a, 0x0112,
     "Digital Science DC290",
 },
 {
     0x040a, 0x0120,
     "Digital Science DC240",
 },
 {
     0x040a, 0x0130,
     "Digital Science DC280",
 },
 {
     0x040a, 0x0550,
     "EasyShare DX4900",
 },
 {
     0x04c8, 0x0720,
     "Camera",
 },
 {
     0x0458, 0x0001,
     "Niche mouse",
 },
 {
     0x0458, 0x0003,
     "Genius NetScroll mouse",
 },
 {
     0x0458, 0x1004,
     "Flight 2000 joystick",
 },
 {
     0x0458, 0x2001,
     "ColorPage Vivid-Pro",
 },
 {
     0x0482, 0x0203,
     "AH-K3001V",
 },
 {
     0x0c88, 0x17da,
     "KPC650 EVDO",
 },
 {
     0x059f, 0xa601,
     "Hard Disk",
 },
 {
     0x059f, 0xa602,
     "CD R/W",
 },
 {
     0x1fb9, 0x0100,
     "Model 121",
 },
 {
     0x1fb9, 0x0200,
     "Model 218A",
 },
 {
     0x1fb9, 0x0201,
     "Model 219",
 },
 {
     0x1fb9, 0x0202,
     "Model 233",
 },
 {
     0x1fb9, 0x0203,
     "Model 235",
 },
 {
     0x1fb9, 0x0300,
     "Model 335",
 },
 {
     0x1fb9, 0x0301,
     "Model 336",
 },
 {
     0x1fb9, 0x0302,
     "Model 350",
 },
 {
     0x1fb9, 0x0303,
     "Model 371",
 },
 {
     0x1fb9, 0x0400,
     "Model 411",
 },
 {
     0x1fb9, 0x0401,
     "Model 425",
 },
 {
     0x1fb9, 0x0402,
     "Model 455A",
 },
 {
     0x1fb9, 0x0403,
     "Model 475A",
 },
 {
     0x1fb9, 0x0404,
     "Model 465",
 },
 {
     0x1fb9, 0x0600,
     "Model 625A",
 },
 {
     0x1fb9, 0x0601,
     "Model 642A",
 },
 {
     0x1fb9, 0x0602,
     "Model 648",
 },
 {
     0x1fb9, 0x0700,
     "Model 737",
 },
 {
     0x1fb9, 0x0701,
     "Model 776",
 },
 {
     0x0fd8, 0x0001,
     "AltiTrack",
 },
 {
     0x0413, 0x2101,
     "9531 GPS",
 },
 {
     0x17ef, 0x304b,
     "AX88179",
 },
 {
     0x17ef, 0x7203,
     "USB 2.0 Ethernet",
 },
 {
     0x05dc, 0x0001,
     "jumpSHOT CompactFlash",
 },
 {
     0x05dc, 0xa002,
     "2662W-AR",
 },
 {
     0x043d, 0x0009,
     "Optra S 2450",
 },
 {
     0x06da, 0xffff,
     "UPS",
 },
 {
     0x10af, 0x0001,
     "PowerSure PSA UPS",
 },
 {
     0x3195, 0xf190,
     "Link Instruments MSO-19",
 },
 {
     0x3195, 0xf280,
     "Link Instruments MSO-28",
 },
 {
     0x3195, 0xf281,
     "Link Instruments MSO-28",
 },
 {
     0x1737, 0x0039,
     "USB1000",
 },
 {
     0x1737, 0x0070,
     "WUSB100",
 },
 {
     0x1737, 0x0071,
     "WUSB600N",
 },
 {
     0x1737, 0x0073,
     "WUSB54GC v2",
 },
 {
     0x1737, 0x0077,
     "WUSB54GC v3",
 },
 {
     0x1737, 0x0078,
     "RT3070",
 },
 {
     0x1737, 0x0079,
     "WUSB600N v2",
 },
 {
     0x066b, 0x0105,
     "Camedia MAUSB-2",
 },
 {
     0x066b, 0x200c,
     "USB10TX",
 },
 {
     0x066b, 0x20f9,
     "HG20F9 Ethernet",
 },
 {
     0x066b, 0x2202,
     "USB10T Ethernet",
 },
 {
     0x066b, 0x2203,
     "USB100TX Ethernet",
 },
 {
     0x066b, 0x2204,
     "USB100H1 Ethernet/HPNA",
 },
 {
     0x066b, 0x2206,
     "USB10TA Ethernet",
 },
 {
     0x066b, 0x2211,
     "WUSB11 802.11b",
 },
 {
     0x066b, 0x2212,
     "WUSB11 802.11b v2.5",
 },
 {
     0x066b, 0x2213,
     "WUSB12 802.11b v1.1",
 },
 {
     0x077b, 0x2226,
     "USB 2.0 10/100 Ethernet controller",
 },
 {
     0x077b, 0x2219,
     "WUSB11",
 },
 {
     0x077b, 0x2219,
     "Network Everywhere NWU11B",
 },
 {
     0x1915, 0x2233,
     "WUSB11 v2.8",
 },
 {
     0x1915, 0x2236,
     "WUSB11 v3.0",
 },
 {
     0x066b, 0x400b,
     "USB10TX",
 },
 {
     0x04ca, 0x4605,
     "AR9271",
 },
 {
     0x0789, 0x0102,
     "LAN-GTJ/U2",
 },
 {
     0x0789, 0x0105,
     "LAN-TX",
 },
 {
     0x0789, 0x010c,
     "RTL8187",
 },
 {
     0x0789, 0x0162,
     "RT2870",
 },
 {
     0x0789, 0x0163,
     "RT2870",
 },
 {
     0x0789, 0x0164,
     "RT2870",
 },
 {
     0x0789, 0x0166,
     "LAN-W300N/U2",
 },
 {
     0x0789, 0x0168,
     "LAN-W150N/U2",
 },
 {
     0x0789, 0x0169,
     "LAN-W300N/U2S",
 },
 {
     0x046d, 0x0203,
     "M2452 keyboard",
 },
 {
     0x046d, 0x0301,
     "M4848 mouse",
 },
 {
     0x046d, 0x040f,
     "PageScan",
 },
 {
     0x046d, 0x0801,
     "QuickCam Web",
 },
 {
     0x046d, 0x0802,
     "Webcam C200",
 },
 {
     0x046d, 0x0807,
     "Webcam C500",
 },
 {
     0x046d, 0x0810,
     "QuickCam Pro",
 },
 {
     0x046d, 0x081b,
     "Webcam C310",
 },
 {
     0x046d, 0x0821,
     "HD Pro Webcam C910",
 },
 {
     0x046d, 0x0840,
     "QuickCam Express",
 },
 {
     0x046d, 0x0850,
     "QuickCam",
 },
 {
     0x046d, 0x08a9,
     "QuickCam Notebook Deluxe",
 },
 {
     0x046d, 0x08b0,
     "QuickCam Pro 3000",
 },
 {
     0x046d, 0x08b1,
     "QuickCam Notebook Pro",
 },
 {
     0x046d, 0x08b2,
     "QuickCam Pro 4000",
 },
 {
     0x046d, 0x08b3,
     "QuickCam Zoom",
 },
 {
     0x046d, 0x08c1,
     "QuickCam Fusion",
 },
 {
     0x046d, 0x08c2,
     "QuickCam Orbit MP",
 },
 {
     0x046d, 0x08c3,
     "QuickCam Notebook Pro",
 },
 {
     0x046d, 0x08c5,
     "QuickCam Pro 5000",
 },
 {
     0x046d, 0x08c6,
     "QuickCam OEM",
 },
 {
     0x046d, 0x08c7,
     "QuickCam OEM",
 },
 {
     0x046d, 0x08c9,
     "QuickCam Ultra Vision",
 },
 {
     0x046d, 0x08ca,
     "QuickCam Fusion",
 },
 {
     0x046d, 0x08cb,
     "QuickCam Notebook Pro",
 },
 {
     0x046d, 0x08cc,
     "QuickCam Orbit MP",
 },
 {
     0x046d, 0x08ce,
     "QuickCam Pro 5000",
 },
 {
     0x046d, 0x0990,
     "QuickCam Pro 9000",
 },
 {
     0x046d, 0x0991,
     "QuickCam Pro Notebook",
 },
 {
     0x046d, 0x0992,
     "QuickCam Communicate Deluxe",
 },
 {
     0x046d, 0x0994,
     "QuickCam Orbit AF",
 },
 {
     0x046d, 0x09a1,
     "QuickCam Communicate MP",
 },
 {
     0x046d, 0x09a4,
     "QuickCam E 3500 Plus",
 },
 {
     0x046d, 0x09c1,
     "QuickCam Deluxe Notebook",
 },
 {
     0x046d, 0xc000,
     "N43",
 },
 {
     0x046d, 0xc001,
     "N48 mouse",
 },
 {
     0x046d, 0xc002,
     "M-BA47 mouse",
 },
 {
     0x046d, 0xc004,
     "WingMan Gaming Mouse",
 },
 {
     0x046d, 0xc00c,
     "BD58 mouse",
 },
 {
     0x046d, 0xc030,
     "iFeel Mouse",
 },
 {
     0x046d, 0xc208,
     "WingMan GamePad Extreme",
 },
 {
     0x046d, 0xc20a,
     "WingMan RumblePad",
 },
 {
     0x046d, 0xc281,
     "WingMan Force joystick",
 },
 {
     0x046d, 0xc293,
     "WingMan Formula Force GP (GT-Force)",
 },
 {
     0x046d, 0xc303,
     "iTouch Keyboard",
 },
 {
     0x046d, 0xc401,
     "USB-PS/2 Trackball",
 },
 {
     0x046d, 0xc404,
     "TrackMan Wheel",
 },
 {
     0x046d, 0xc501,
     "Cordless mouse",
 },
 {
     0x046d, 0xc503,
     "Cordless keyboard",
 },
 {
     0x046d, 0xc504,
     "Cordless Desktop Optical",
 },
 {
     0x046d, 0xd001,
     "QuickCam Pro",
 },
 {
     0x1c9e, 0x9401,
     "Emobile D21LC Mass only mode",
 },
 {
     0x1c9e, 0x9404,
     "Emobile D21LC",
 },
 {
     0x1c9e, 0x9801,
     "IIJmobile 510FU",
 },
 {
     0x1c9e, 0x98ff,
     "IIJmobile 510FU Mass only mode",
 },
 {
     0x07b8, 0x401a,
     "LCS-8138TX",
 },
 {
     0x047e, 0x1001,
     "USS-720 evaluation kit",
 },
 {
     0x0618, 0x0101,
     "mouse",
 },
 {
     0x9e88, 0x9e8f,
     "SheevaPlug",
 },
 {
     0x1b3d, 0x0100,
     "LCD",
 },
 {
     0x1b3d, 0x0101,
     "LCD",
 },
 {
     0x1b3d, 0x0102,
     "LCD",
 },
 {
     0x1b3d, 0x0103,
     "LCD",
 },
 {
     0x1b3d, 0x0104,
     "LCD",
 },
 {
     0x1b3d, 0x0105,
     "LCD",
 },
 {
     0x1b3d, 0x0106,
     "LCD",
 },
 {
     0x1b3d, 0x0107,
     "LCD",
 },
 {
     0x1b3d, 0x0108,
     "LCD",
 },
 {
     0x1b3d, 0x0109,
     "LCD",
 },
 {
     0x1b3d, 0x010a,
     "LCD",
 },
 {
     0x1b3d, 0x010b,
     "LCD",
 },
 {
     0x1b3d, 0x010c,
     "LCD",
 },
 {
     0x1b3d, 0x010d,
     "LCD",
 },
 {
     0x1b3d, 0x010e,
     "LCD",
 },
 {
     0x1b3d, 0x010f,
     "LCD",
 },
 {
     0x1b3d, 0x0110,
     "LCD",
 },
 {
     0x1b3d, 0x0111,
     "LCD",
 },
 {
     0x1b3d, 0x0112,
     "LCD",
 },
 {
     0x1b3d, 0x0113,
     "LCD",
 },
 {
     0x1b3d, 0x0114,
     "LCD",
 },
 {
     0x1b3d, 0x0115,
     "LCD",
 },
 {
     0x1b3d, 0x0116,
     "LCD",
 },
 {
     0x1b3d, 0x0117,
     "LCD",
 },
 {
     0x1b3d, 0x0118,
     "LCD",
 },
 {
     0x1b3d, 0x0119,
     "LCD",
 },
 {
     0x1b3d, 0x011a,
     "LCD",
 },
 {
     0x1b3d, 0x011b,
     "LCD",
 },
 {
     0x1b3d, 0x011c,
     "LCD",
 },
 {
     0x1b3d, 0x011d,
     "LCD",
 },
 {
     0x1b3d, 0x011e,
     "LCD",
 },
 {
     0x1b3d, 0x011f,
     "LCD",
 },
 {
     0x1b3d, 0x0120,
     "LCD",
 },
 {
     0x1b3d, 0x0121,
     "LCD",
 },
 {
     0x1b3d, 0x0122,
     "LCD",
 },
 {
     0x1b3d, 0x0123,
     "LCD",
 },
 {
     0x1b3d, 0x0124,
     "LCD",
 },
 {
     0x1b3d, 0x0125,
     "LCD",
 },
 {
     0x1b3d, 0x0126,
     "LCD",
 },
 {
     0x1b3d, 0x0127,
     "LCD",
 },
 {
     0x1b3d, 0x0128,
     "LCD",
 },
 {
     0x1b3d, 0x0129,
     "LCD",
 },
 {
     0x1b3d, 0x012a,
     "LCD",
 },
 {
     0x1b3d, 0x012b,
     "LCD",
 },
 {
     0x1b3d, 0x012c,
     "LCD",
 },
 {
     0x1b3d, 0x012d,
     "LCD",
 },
 {
     0x1b3d, 0x012e,
     "LCD",
 },
 {
     0x1b3d, 0x012f,
     "LCD",
 },
 {
     0x1b3d, 0x0130,
     "LCD",
 },
 {
     0x1b3d, 0x0131,
     "LCD",
 },
 {
     0x1b3d, 0x0132,
     "LCD",
 },
 {
     0x1b3d, 0x0133,
     "LCD",
 },
 {
     0x1b3d, 0x0134,
     "LCD",
 },
 {
     0x1b3d, 0x0135,
     "LCD",
 },
 {
     0x1b3d, 0x0136,
     "LCD",
 },
 {
     0x1b3d, 0x0137,
     "LCD",
 },
 {
     0x1b3d, 0x0138,
     "LCD",
 },
 {
     0x1b3d, 0x0139,
     "LCD",
 },
 {
     0x1b3d, 0x013a,
     "LCD",
 },
 {
     0x1b3d, 0x013b,
     "LCD",
 },
 {
     0x1b3d, 0x013c,
     "LCD",
 },
 {
     0x1b3d, 0x013d,
     "LCD",
 },
 {
     0x1b3d, 0x013e,
     "LCD",
 },
 {
     0x1b3d, 0x013f,
     "LCD",
 },
 {
     0x1b3d, 0x0140,
     "LCD",
 },
 {
     0x1b3d, 0x0141,
     "LCD",
 },
 {
     0x1b3d, 0x0142,
     "LCD",
 },
 {
     0x1b3d, 0x0143,
     "LCD",
 },
 {
     0x1b3d, 0x0144,
     "LCD",
 },
 {
     0x1b3d, 0x0145,
     "LCD",
 },
 {
     0x1b3d, 0x0146,
     "LCD",
 },
 {
     0x1b3d, 0x0147,
     "LCD",
 },
 {
     0x1b3d, 0x0148,
     "LCD",
 },
 {
     0x1b3d, 0x0149,
     "LCD",
 },
 {
     0x1b3d, 0x014a,
     "LCD",
 },
 {
     0x1b3d, 0x014b,
     "LCD",
 },
 {
     0x1b3d, 0x014c,
     "LCD",
 },
 {
     0x1b3d, 0x014d,
     "LCD",
 },
 {
     0x1b3d, 0x014e,
     "LCD",
 },
 {
     0x1b3d, 0x014f,
     "LCD",
 },
 {
     0x1b3d, 0x0150,
     "LCD",
 },
 {
     0x1b3d, 0x0151,
     "LCD",
 },
 {
     0x1b3d, 0x0152,
     "LCD",
 },
 {
     0x1b3d, 0x0153,
     "LCD",
 },
 {
     0x1b3d, 0x0154,
     "LCD",
 },
 {
     0x1b3d, 0x0155,
     "LCD",
 },
 {
     0x1b3d, 0x0156,
     "LCD",
 },
 {
     0x1b3d, 0x0157,
     "LCD",
 },
 {
     0x1b3d, 0x0158,
     "LCD",
 },
 {
     0x1b3d, 0x0159,
     "LCD",
 },
 {
     0x1b3d, 0x015a,
     "LCD",
 },
 {
     0x1b3d, 0x015b,
     "LCD",
 },
 {
     0x1b3d, 0x015c,
     "LCD",
 },
 {
     0x1b3d, 0x015d,
     "LCD",
 },
 {
     0x1b3d, 0x015e,
     "LCD",
 },
 {
     0x1b3d, 0x015f,
     "LCD",
 },
 {
     0x1b3d, 0x0160,
     "LCD",
 },
 {
     0x1b3d, 0x0161,
     "LCD",
 },
 {
     0x1b3d, 0x0162,
     "LCD",
 },
 {
     0x1b3d, 0x0163,
     "LCD",
 },
 {
     0x1b3d, 0x0164,
     "LCD",
 },
 {
     0x1b3d, 0x0165,
     "LCD",
 },
 {
     0x1b3d, 0x0166,
     "LCD",
 },
 {
     0x1b3d, 0x0167,
     "LCD",
 },
 {
     0x1b3d, 0x0168,
     "LCD",
 },
 {
     0x1b3d, 0x0169,
     "LCD",
 },
 {
     0x1b3d, 0x016a,
     "LCD",
 },
 {
     0x1b3d, 0x016b,
     "LCD",
 },
 {
     0x1b3d, 0x016c,
     "LCD",
 },
 {
     0x1b3d, 0x016d,
     "LCD",
 },
 {
     0x1b3d, 0x016e,
     "LCD",
 },
 {
     0x1b3d, 0x016f,
     "LCD",
 },
 {
     0x1b3d, 0x0170,
     "LCD",
 },
 {
     0x1b3d, 0x0171,
     "LCD",
 },
 {
     0x1b3d, 0x0172,
     "LCD",
 },
 {
     0x1b3d, 0x0173,
     "LCD",
 },
 {
     0x1b3d, 0x0174,
     "LCD",
 },
 {
     0x1b3d, 0x0175,
     "LCD",
 },
 {
     0x1b3d, 0x0176,
     "LCD",
 },
 {
     0x1b3d, 0x0177,
     "LCD",
 },
 {
     0x1b3d, 0x0178,
     "LCD",
 },
 {
     0x1b3d, 0x0179,
     "LCD",
 },
 {
     0x1b3d, 0x017a,
     "LCD",
 },
 {
     0x1b3d, 0x017b,
     "LCD",
 },
 {
     0x1b3d, 0x017c,
     "LCD",
 },
 {
     0x1b3d, 0x017d,
     "LCD",
 },
 {
     0x1b3d, 0x017e,
     "LCD",
 },
 {
     0x1b3d, 0x017f,
     "LCD",
 },
 {
     0x1b3d, 0x0180,
     "LCD",
 },
 {
     0x1b3d, 0x0181,
     "LCD",
 },
 {
     0x1b3d, 0x0182,
     "LCD",
 },
 {
     0x1b3d, 0x0183,
     "LCD",
 },
 {
     0x1b3d, 0x0184,
     "LCD",
 },
 {
     0x1b3d, 0x0185,
     "LCD",
 },
 {
     0x1b3d, 0x0186,
     "LCD",
 },
 {
     0x1b3d, 0x0187,
     "LCD",
 },
 {
     0x1b3d, 0x0188,
     "LCD",
 },
 {
     0x1b3d, 0x0189,
     "LCD",
 },
 {
     0x1b3d, 0x018a,
     "LCD",
 },
 {
     0x1b3d, 0x018b,
     "LCD",
 },
 {
     0x1b3d, 0x018c,
     "LCD",
 },
 {
     0x1b3d, 0x018d,
     "LCD",
 },
 {
     0x1b3d, 0x018e,
     "LCD",
 },
 {
     0x1b3d, 0x018f,
     "LCD",
 },
 {
     0x1b3d, 0x0190,
     "LCD",
 },
 {
     0x1b3d, 0x0191,
     "LCD",
 },
 {
     0x1b3d, 0x0192,
     "LCD",
 },
 {
     0x1b3d, 0x0193,
     "LCD",
 },
 {
     0x1b3d, 0x0194,
     "LCD",
 },
 {
     0x1b3d, 0x0195,
     "LCD",
 },
 {
     0x1b3d, 0x0196,
     "LCD",
 },
 {
     0x1b3d, 0x0197,
     "LCD",
 },
 {
     0x1b3d, 0x0198,
     "LCD",
 },
 {
     0x1b3d, 0x0199,
     "LCD",
 },
 {
     0x1b3d, 0x019a,
     "LCD",
 },
 {
     0x1b3d, 0x019b,
     "LCD",
 },
 {
     0x1b3d, 0x019c,
     "LCD",
 },
 {
     0x1b3d, 0x019d,
     "LCD",
 },
 {
     0x1b3d, 0x019e,
     "LCD",
 },
 {
     0x1b3d, 0x019f,
     "LCD",
 },
 {
     0x1b3d, 0x01a0,
     "LCD",
 },
 {
     0x1b3d, 0x01a1,
     "LCD",
 },
 {
     0x1b3d, 0x01a2,
     "LCD",
 },
 {
     0x1b3d, 0x01a3,
     "LCD",
 },
 {
     0x1b3d, 0x01a4,
     "LCD",
 },
 {
     0x1b3d, 0x01a5,
     "LCD",
 },
 {
     0x1b3d, 0x01a6,
     "LCD",
 },
 {
     0x1b3d, 0x01a7,
     "LCD",
 },
 {
     0x1b3d, 0x01a8,
     "LCD",
 },
 {
     0x1b3d, 0x01a9,
     "LCD",
 },
 {
     0x1b3d, 0x01aa,
     "LCD",
 },
 {
     0x1b3d, 0x01ab,
     "LCD",
 },
 {
     0x1b3d, 0x01ac,
     "LCD",
 },
 {
     0x1b3d, 0x01ad,
     "LCD",
 },
 {
     0x1b3d, 0x01ae,
     "LCD",
 },
 {
     0x1b3d, 0x01af,
     "LCD",
 },
 {
     0x1b3d, 0x01b0,
     "LCD",
 },
 {
     0x1b3d, 0x01b1,
     "LCD",
 },
 {
     0x1b3d, 0x01b2,
     "LCD",
 },
 {
     0x1b3d, 0x01b3,
     "LCD",
 },
 {
     0x1b3d, 0x01b4,
     "LCD",
 },
 {
     0x1b3d, 0x01b5,
     "LCD",
 },
 {
     0x1b3d, 0x01b6,
     "LCD",
 },
 {
     0x1b3d, 0x01b7,
     "LCD",
 },
 {
     0x1b3d, 0x01b8,
     "LCD",
 },
 {
     0x1b3d, 0x01b9,
     "LCD",
 },
 {
     0x1b3d, 0x01ba,
     "LCD",
 },
 {
     0x1b3d, 0x01bb,
     "LCD",
 },
 {
     0x1b3d, 0x01bc,
     "LCD",
 },
 {
     0x1b3d, 0x01bd,
     "LCD",
 },
 {
     0x1b3d, 0x01be,
     "LCD",
 },
 {
     0x1b3d, 0x01bf,
     "LCD",
 },
 {
     0x1b3d, 0x01c0,
     "LCD",
 },
 {
     0x1b3d, 0x01c1,
     "LCD",
 },
 {
     0x1b3d, 0x01c2,
     "LCD",
 },
 {
     0x1b3d, 0x01c3,
     "LCD",
 },
 {
     0x1b3d, 0x01c4,
     "LCD",
 },
 {
     0x1b3d, 0x01c5,
     "LCD",
 },
 {
     0x1b3d, 0x01c6,
     "LCD",
 },
 {
     0x1b3d, 0x01c7,
     "LCD",
 },
 {
     0x1b3d, 0x01c8,
     "LCD",
 },
 {
     0x1b3d, 0x01c9,
     "LCD",
 },
 {
     0x1b3d, 0x01ca,
     "LCD",
 },
 {
     0x1b3d, 0x01cb,
     "LCD",
 },
 {
     0x1b3d, 0x01cc,
     "LCD",
 },
 {
     0x1b3d, 0x01cd,
     "LCD",
 },
 {
     0x1b3d, 0x01ce,
     "LCD",
 },
 {
     0x1b3d, 0x01cf,
     "LCD",
 },
 {
     0x1b3d, 0x01d0,
     "LCD",
 },
 {
     0x1b3d, 0x01d1,
     "LCD",
 },
 {
     0x1b3d, 0x01d2,
     "LCD",
 },
 {
     0x1b3d, 0x01d3,
     "LCD",
 },
 {
     0x1b3d, 0x01d4,
     "LCD",
 },
 {
     0x1b3d, 0x01d5,
     "LCD",
 },
 {
     0x1b3d, 0x01d6,
     "LCD",
 },
 {
     0x1b3d, 0x01d7,
     "LCD",
 },
 {
     0x1b3d, 0x01d8,
     "LCD",
 },
 {
     0x1b3d, 0x01d9,
     "LCD",
 },
 {
     0x1b3d, 0x01da,
     "LCD",
 },
 {
     0x1b3d, 0x01db,
     "LCD",
 },
 {
     0x1b3d, 0x01dc,
     "LCD",
 },
 {
     0x1b3d, 0x01dd,
     "LCD",
 },
 {
     0x1b3d, 0x01de,
     "LCD",
 },
 {
     0x1b3d, 0x01df,
     "LCD",
 },
 {
     0x1b3d, 0x01e0,
     "LCD",
 },
 {
     0x1b3d, 0x01e1,
     "LCD",
 },
 {
     0x1b3d, 0x01e2,
     "LCD",
 },
 {
     0x1b3d, 0x01e3,
     "LCD",
 },
 {
     0x1b3d, 0x01e4,
     "LCD",
 },
 {
     0x1b3d, 0x01e5,
     "LCD",
 },
 {
     0x1b3d, 0x01e6,
     "LCD",
 },
 {
     0x1b3d, 0x01e7,
     "LCD",
 },
 {
     0x1b3d, 0x01e8,
     "LCD",
 },
 {
     0x1b3d, 0x01e9,
     "LCD",
 },
 {
     0x1b3d, 0x01ea,
     "LCD",
 },
 {
     0x1b3d, 0x01eb,
     "LCD",
 },
 {
     0x1b3d, 0x01ec,
     "LCD",
 },
 {
     0x1b3d, 0x01ed,
     "LCD",
 },
 {
     0x1b3d, 0x01ee,
     "LCD",
 },
 {
     0x1b3d, 0x01ef,
     "LCD",
 },
 {
     0x1b3d, 0x01f0,
     "LCD",
 },
 {
     0x1b3d, 0x01f1,
     "LCD",
 },
 {
     0x1b3d, 0x01f2,
     "LCD",
 },
 {
     0x1b3d, 0x01f3,
     "LCD",
 },
 {
     0x1b3d, 0x01f4,
     "LCD",
 },
 {
     0x1b3d, 0x01f5,
     "LCD",
 },
 {
     0x1b3d, 0x01f6,
     "LCD",
 },
 {
     0x1b3d, 0x01f7,
     "LCD",
 },
 {
     0x1b3d, 0x01f8,
     "LCD",
 },
 {
     0x1b3d, 0x01f9,
     "LCD",
 },
 {
     0x1b3d, 0x01fa,
     "LCD",
 },
 {
     0x1b3d, 0x01fb,
     "LCD",
 },
 {
     0x1b3d, 0x01fc,
     "LCD",
 },
 {
     0x1b3d, 0x01fd,
     "LCD",
 },
 {
     0x1b3d, 0x01fe,
     "LCD",
 },
 {
     0x1b3d, 0x01ff,
     "LCD",
 },
 {
     0x0711, 0x0100,
     "Hub",
 },
 {
     0x0711, 0x0200,
     "D-Link DU-H3SP BAY Hub",
 },
 {
     0x0711, 0x0210,
     "RS232",
 },
 {
     0x0711, 0x0230,
     "Sitecom RS232",
 },
 {
     0x0711, 0x0302,
     "ML-4500",
 },
 {
     0x1bc8, 0x0001,
     "MDS ISDB-T tuner",
 },
 {
     0x0e8d, 0x0002,
     "USB MSM installer",
 },
 {
     0x0e8d, 0x00a5,
     "UMTS USB modem",
 },
 {
     0x0bed, 0x1100,
     "Cashflow-SC",
 },
 {
     0x0bed, 0x1101,
     "Series 2000",
 },
 {
     0x1938, 0x0301,
     "USB 5131 DCF77 - Radio Clock",
 },
 {
     0x0411, 0x0001,
     "LUA-TX Ethernet",
 },
 {
     0x0411, 0x0005,
     "LUA-TX Ethernet",
 },
 {
     0x0411, 0x008b,
     "Nintendo Wi-Fi",
 },
 {
     0x0411, 0x0009,
     "LUA2-TX Ethernet",
 },
 {
     0x0411, 0x0012,
     "LUA-KTX Ethernet",
 },
 {
     0x0411, 0x0016,
     "WLI-USB-S11",
 },
 {
     0x0411, 0x001b,
     "MCR-SM2 SmartMedia",
 },
 {
     0x0411, 0x001c,
     "USB-IDE Bridge: DUB-PxxG",
 },
 {
     0x0411, 0x0027,
     "WLI-USB-KS11G wlan",
 },
 {
     0x0411, 0x003d,
     "LUA-U2-KTX Ethernet",
 },
 {
     0x0411, 0x0044,
     "WLI-USB-KB11 WLAN",
 },
 {
     0x0411, 0x005e,
     "WLI-U2-KG54-YB WLAN",
 },
 {
     0x0411, 0x0066,
     "WLI-U2-KG54 WLAN",
 },
 {
     0x0411, 0x0067,
     "WLI-U2-KG54-AI WLAN",
 },
 {
     0x0411, 0x006e,
     "LUA-U2-GT Ethernet",
 },
 {
     0x0411, 0x0091,
     "WLI-U2-KAMG54",
 },
 {
     0x0411, 0x0092,
     "WLI-U2-KAMG54",
 },
 {
     0x0411, 0x00b3,
     "PC-OP-RS1 RemoteStation",
 },
 {
     0x0411, 0x00d8,
     "WLI-U2-SG54HP",
 },
 {
     0x0411, 0x00d9,
     "WLI-U2-G54HP",
 },
 {
     0x0411, 0x00da,
     "WLI-U2-KG54L",
 },
 {
     0x0411, 0x00e8,
     "WLI-UC-G300N",
 },
 {
     0x0411, 0x00f4,
     "WLI-U2-SG54HG",
 },
 {
     0x0411, 0x012e,
     "WLI-UC-AG300N",
 },
 {
     0x0411, 0x0148,
     "RT2870",
 },
 {
     0x0411, 0x0150,
     "RT2870",
 },
 {
     0x0411, 0x0158,
     "WLI-UC-GNHP",
 },
 {
     0x0411, 0x015d,
     "WLI-UC-GN",
 },
 {
     0x0411, 0x016f,
     "WLI-UC-G301N",
 },
 {
     0x0411, 0x01a2,
     "WLI-UC-GNM",
 },
 {
     0x0411, 0x01ee,
     "WLI-UC-GNM2",
 },
 {
     0x1781, 0x083e,
     "MetaGeek Wi-Spy",
 },
 {
     0x1781, 0x0c30,
     "Telldus Tellstick",
 },
 {
     0x1dd5, 0x2400,
     "Wi-Spy 2.4i",
 },
 {
     0x0870, 0x0001,
     "Ricochet GS",
 },
 {
     0x0463, 0x0001,
     "UPS",
 },
 {
     0x0463, 0xffff,
     "UPS",
 },
 {
     0x1eb8, 0x1240,
     "MODACOM Mobile wimax adaptor",
 },
 {
     0x0db0, 0x1020,
     "WLAN",
 },
 {
     0x0db0, 0x1967,
     "Bluetooth",
 },
 {
     0x0db0, 0x3820,
     "RT3070",
 },
 {
     0x0db0, 0x3821,
     "RT3070",
 },
 {
     0x0db0, 0x3822,
     "RT3070",
 },
 {
     0x0db0, 0x3870,
     "RT3070",
 },
 {
     0x0db0, 0x3871,
     "RT3070",
 },
 {
     0x0db0, 0x6861,
     "RT2570",
 },
 {
     0x0db0, 0x6865,
     "RT2570",
 },
 {
     0x0db0, 0x6869,
     "RT2570",
 },
 {
     0x0db0, 0x6874,
     "RT2573",
 },
 {
     0x0db0, 0x6877,
     "RT2573",
 },
 {
     0x0db0, 0x6899,
     "RT3070",
 },
 {
     0x0db0, 0x821a,
     "RT3070",
 },
 {
     0x0db0, 0x822a,
     "RT3070",
 },
 {
     0x0db0, 0x822b,
     "RT3070",
 },
 {
     0x0db0, 0x822c,
     "RT3070",
 },
 {
     0x0db0, 0xa861,
     "RT2573",
 },
 {
     0x0db0, 0x870a,
     "RT3070",
 },
 {
     0x0db0, 0x871a,
     "RT3070",
 },
 {
     0x0db0, 0x871b,
     "RT3070",
 },
 {
     0x0db0, 0x871c,
     "RT3070",
 },
 {
     0x0db0, 0x899a,
     "RT3070",
 },
 {
     0x0db0, 0xa874,
     "RT2573",
 },
 {
     0x0db0, 0xa877,
     "AX88772A",
 },
 {
     0x0db0, 0xa970,
     "Bluetooth",
 },
 {
     0x0db0, 0xa97a,
     "Bluetooth",
 },
 {
     0x0c45, 0x1010,
     "YUREX",
 },
 {
     0x0c45, 0x62c0,
     "CAM_1",
 },
 {
     0x0c45, 0x7401,
     "TEMPer sensor",
 },
 {
     0x0c45, 0x7402,
     "TEMPerHUM sensor",
 },
 {
     0x3980, 0x0003,
     "SP128AR EtherFast",
 },
 {
     0x045e, 0x0008,
     "SideWinder Precision Pro",
 },
 {
     0x045e, 0x0009,
     "IntelliMouse",
 },
 {
     0x045e, 0x000b,
     "Natural",
 },
 {
     0x045e, 0x0014,
     "Digital Sound System 80",
 },
 {
     0x045e, 0x001a,
     "Sidewinder Precision Racing Wheel",
 },
 {
     0x045e, 0x001c,
     "Internet Keyboard Pro",
 },
 {
     0x045e, 0x0024,
     "Trackball Explorer",
 },
 {
     0x045e, 0x0025,
     "IntelliEye mouse",
 },
 {
     0x045e, 0x002b,
     "Internet Keyboard Pro",
 },
 {
     0x045e, 0x006e,
     "MN510 Wireless",
 },
 {
     0x045e, 0x0079,
     "Palm 700WX",
 },
 {
     0x045e, 0x007a,
     "10/100 Ethernet",
 },
 {
     0x045e, 0x008c,
     "Wireless Optical IntelliMouse",
 },
 {
     0x045e, 0x00b9,
     "Wireless Optical Mouse (Model 1023)",
 },
 {
     0x045e, 0x00d2,
     "Wireless Optical Mouse 3000 (Model 1049)",
 },
 {
     0x045e, 0x00e1,
     "Wireless Optical Mouse 3000 (Model 1056)",
 },
 {
     0x045e, 0x028e,
     "XBOX 360 Controller",
 },
 {
     0x045e, 0x0292,
     "XBOX 360 WLAN",
 },
 {
     0x045e, 0x0745,
     "Wireless Mobile Mouse 3500",
 },
 {
     0x045e, 0x074a,
     "Microsoft LifeCam",
 },
 {
     0x045e, 0x074f,
     "Wireless Arc Mouse (Model 1350)",
 },
 {
     0x07af, 0x0004,
     "SCSI-DB25",
 },
 {
     0x07af, 0x0005,
     "SCSI-HD50",
 },
 {
     0x07af, 0x0006,
     "CameraMate",
 },
 {
     0x07af, 0xfc01,
     "Freecom IDE",
 },
 {
     0x05da, 0x0094,
     "Phantom 336CX - C3",
 },
 {
     0x05da, 0x0099,
     "ScanMaker X6 - X6U",
 },
 {
     0x05da, 0x009a,
     "Phantom C6",
 },
 {
     0x05da, 0x00a0,
     "Phantom 336CX - C3",
 },
 {
     0x05da, 0x00a3,
     "ScanMaker V6USL",
 },
 {
     0x05da, 0x80a3,
     "ScanMaker V6USL",
 },
 {
     0x05da, 0x80ac,
     "ScanMaker V6UL",
 },
 {
     0x0763, 0x1001,
     "Midisport 2x2",
 },
 {
     0x097a, 0x0001,
     "Digital Wallet",
 },
 {
     0x0686, 0x4007,
     "Dimage S304",
 },
 {
     0x0686, 0x4009,
     "Dimage X",
 },
 {
     0x0686, 0x400b,
     "Dimage 7i",
 },
 {
     0x0686, 0x401a,
     "Dimage A1",
 },
 {
     0x03ee, 0x0000,
     "CD-R/RW Drive",
 },
 {
     0x03ee, 0x6407,
     "Mouse",
 },
 {
     0x03ee, 0x641f,
     "Bluetooth",
 },
 {
     0x03ee, 0x6901,
     "FDD",
 },
 {
     0x0df7, 0x0620,
     "MA-620 IrDA",
 },
 {
     0x1342, 0x0202,
     "EasiDock 200 Serial",
 },
 {
     0x1342, 0x0204,
     "Ethernet",
 },
 {
     0x1342, 0x0304,
     "EasiDock Ethernet",
 },
 {
     0x9710, 0x7703,
     "MCS7703 Serial",
 },
 {
     0x9710, 0x7715,
     "MCS7715 Serial Parallel",
 },
 {
     0x9710, 0x7730,
     "MCS7730 Ethernet",
 },
 {
     0x9710, 0x7810,
     "MCS7810 Serial",
 },
 {
     0x9710, 0x7820,
     "MCS7820 Serial",
 },
 {
     0x9710, 0x7830,
     "MCS7830 Ethernet",
 },
 {
     0x9710, 0x7832,
     "MCS7832 Ethernet",
 },
 {
     0x9710, 0x7840,
     "MCS7840 Serial",
 },
 {
     0x1063, 0x1555,
     "MC141555 hub controller",
 },
 {
     0x22b8, 0x2822,
     "T720c",
 },
 {
     0x22b8, 0x4902,
     "V360",
 },
 {
     0x22b8, 0x600c,
     "USBLAN",
 },
 {
     0x22b8, 0x6027,
     "USBLAN",
 },
 {
     0x07b2, 0x4100,
     "SB4100 Cable Modem",
 },
 {
     0x07b2, 0x5100,
     "SB5100 Cable Modem",
 },
 {
     0x100d, 0x9031,
     "RT2770",
 },
 {
     0x100d, 0x9032,
     "RT3070",
 },
 {
     0x110a, 0x1110,
     "UPort 1110",
 },
 {
     0x06e0, 0xf101,
     "MT5634ZBA modem",
 },
 {
     0x055f, 0x0001,
     "1200 CU",
 },
 {
     0x055f, 0x0002,
     "600 CU",
 },
 {
     0x055f, 0x0003,
     "1200",
 },
 {
     0x055f, 0x0006,
     "1200 UB",
 },
 {
     0x055f, 0x0007,
     "1200 Plus",
 },
 {
     0x055f, 0x0008,
     "1200 CU Plus",
 },
 {
     0x055f, 0x0010,
     "BearPaw 1200F",
 },
 {
     0x055f, 0x0873,
     "600",
 },
 {
     0x055f, 0xa800,
     "MDC-800",
 },
 {
     0x055f, 0xc441,
     "DV2000",
 },
 {
     0x0665, 0x5161,
     "PowerMust 800",
 },
 {
     0x08ec, 0x0010,
     "DiskOnKey",
 },
 {
     0x08ec, 0x0011,
     "DiskOnKey",
 },
 {
     0x3923, 0xc920,
     "GPIB-USB-A",
 },
 {
     0x0400, 0x1000,
     "BearPaw 1200",
 },
 {
     0x0400, 0x1001,
     "BearPaw 2400",
 },
 {
     0x0409, 0x005a,
     "hub",
 },
 {
     0x0409, 0x0249,
     "WL300NU-G",
 },
 {
     0x0409, 0x0409,
     "Repeater",
 },
 {
     0x0409, 0x55aa,
     "hub",
 },
 {
     0x0409, 0x55ab,
     "hub",
 },
 {
     0x0409, 0xbef4,
     "Picty760",
 },
 {
     0x0409, 0xefbe,
     "Picty900",
 },
 {
     0x0409, 0xf0be,
     "Picty920",
 },
 {
     0x0409, 0xf1be,
     "Picty800",
 },
 {
     0x0b62, 0x0058,
     "USB2.0 Hub",
 },
 {
     0x0aec, 0x3050,
     "6-in-1 Flash Device Controller",
 },
 {
     0x0aec, 0x3260,
     "8-in-1 Flash Device Controller",
 },
 {
     0x0aec, 0x5010,
     "Multi-format Flash Controller",
 },
 {
     0x0525, 0x1080,
     "Turbo-Connect",
 },
 {
     0x0525, 0xa140,
     "Clik! 40",
 },
 {
     0x0525, 0xa4a2,
     "EthernetGadget",
 },
 {
     0x0846, 0x1001,
     "Ethernet",
 },
 {
     0x0846, 0x1002,
     "Ethernet",
 },
 {
     0x0846, 0x1020,
     "10/100 Ethernet",
 },
 {
     0x0846, 0x1040,
     "USB 2.0 Fast Ethernet",
 },
 {
     0x0846, 0x1100,
     "M7100",
 },
 {
     0x0846, 0x4110,
     "802.11b",
 },
 {
     0x0846, 0x4230,
     "802.11b V2",
 },
 {
     0x0846, 0x4240,
     "PrismGT USB 2.0 WLAN",
 },
 {
     0x0846, 0x4260,
     "WG111v3",
 },
 {
     0x0846, 0x4300,
     "WG111U",
 },
 {
     0x0846, 0x4301,
     "WG111U",
 },
 {
     0x0846, 0x6a00,
     "WG111v2",
 },
 {
     0x0846, 0x9001,
     "WN111V2",
 },
 {
     0x0846, 0x9010,
     "WNDA3100",
 },
 {
     0x0846, 0x9018,
     "WNDA3200",
 },
 {
     0x0846, 0x9021,
     "RTL8192CU",
 },
 {
     0x0846, 0x9030,
     "WNA1100",
 },
 {
     0x0846, 0x9040,
     "WNA1000",
 },
 {
     0x0846, 0x9041,
     "WNA1000M",
 },
 {
     0x0846, 0x9043,
     "WNA1000Mv2",
 },
 {
     0x0846, 0xf001,
     "N300MA",
 },
 {
     0x0864, 0x4100,
     "MA101",
 },
 {
     0x0864, 0x4102,
     "MA101 Rev B",
 },
 {
     0x1385, 0x4250,
     "WG111T",
 },
 {
     0x1385, 0x4251,
     "WG111T",
 },
 {
     0x1385, 0x4252,
     "WG111T",
 },
 {
     0x1385, 0x5f00,
     "WPN111",
 },
 {
     0x1385, 0x5f01,
     "WPN111",
 },
 {
     0x9846, 0x9041,
     "RTL8188CU",
 },
 {
     0x4856, 0x0091,
     "RTL8192CU",
 },
 {
     0x04b0, 0x0102,
     "E990",
 },
 {
     0x04b0, 0x0103,
     "E880",
 },
 {
     0x04b0, 0x0105,
     "E885",
 },
 {
     0x2770, 0x9120,
     "Camera",
 },
 {
     0x078b, 0x1234,
     "CA-42 Serial",
 },
 {
     0x0421, 0x0610,
     "Internet Stick CS-15 (umass mode)",
 },
 {
     0x0421, 0x0612,
     "Internet Stick CS-15",
 },
 {
     0x0eda, 0x11c0,
     "Noritake COMEMO",
 },
 {
     0x0eb0, 0x9020,
     "NV-902W",
 },
 {
     0x0eb0, 0x9021,
     "RT2573",
 },
 {
     0x0eb0, 0x9071,
     "RTL8188CU",
 },
 {
     0x1410, 0x1100,
     "ExpressCard 3G",
 },
 {
     0x1410, 0x1110,
     "V620",
 },
 {
     0x1410, 0x1120,
     "V740",
 },
 {
     0x1410, 0x1130,
     "V720",
 },
 {
     0x1410, 0x1400,
     "U740",
 },
 {
     0x1410, 0x1410,
     "U740",
 },
 {
     0x1410, 0x1420,
     "U870",
 },
 {
     0x1410, 0x1430,
     "XU870",
 },
 {
     0x1410, 0x1450,
     "X950D",
 },
 {
     0x1410, 0x2100,
     "ES620 CDMA",
 },
 {
     0x1410, 0x2110,
     "U720",
 },
 {
     0x1410, 0x2420,
     "EU870D",
 },
 {
     0x1410, 0x4100,
     "U727",
 },
 {
     0x1410, 0x4400,
     "MC950D HSUPA",
 },
 {
     0x1410, 0x5010,
     "X950D",
 },
 {
     0x1410, 0x5030,
     "ZeroCD",
 },
 {
     0x1410, 0x5031,
     "MC760 CD",
 },
 {
     0x1410, 0x6000,
     "U760",
 },
 {
     0x1410, 0x6002,
     "MC760",
 },
 {
     0x09d7, 0x0100,
     "NovAtel FlexPack GPS",
 },
 {
     0x0b97, 0x7761,
     "OZ776 Hub",
 },
 {
     0x15ba, 0x0003,
     "OpenOCD JTAG",
 },
 {
     0x07b4, 0x0102,
     "C-1",
 },
 {
     0x07b4, 0x0105,
     "C-700 Ultra Zoom",
 },
 {
     0x0b39, 0x0109,
     "Ethernet",
 },
 {
     0x05a9, 0x0511,
     "OV511",
 },
 {
     0x05a9, 0xa511,
     "OV511+",
 },
 {
     0x0590, 0x0057,
     "BX50F UPS",
 },
 {
     0x0590, 0x0058,
     "BX35F UPS",
 },
 {
     0x0590, 0x0080,
     "BY35S UPS",
 },
 {
     0x07c4, 0x0103,
     "disk",
 },
 {
     0x07c4, 0xa000,
     "MDCFE-B CF",
 },
 {
     0x07c4, 0xa001,
     "Memory Stick+CF",
 },
 {
     0x07c4, 0xa003,
     "Datafab-based",
 },
 {
     0x07c4, 0xa004,
     "Datafab-based",
 },
 {
     0x07c4, 0xa005,
     "PNY/Datafab CF+SM",
 },
 {
     0x07c4, 0xa006,
     "Simple Tech/Datafab CF+SM",
 },
 {
     0x07c4, 0xa109,
     "CF + SM Combo (LC1)",
 },
 {
     0x07c4, 0xb006,
     "Datafab MD1-II PC-Card",
 },
 {
     0x55aa, 0xb012,
     "8In2",
 },
 {
     0x1557, 0x0002,
     "model 01 WiFi",
 },
 {
     0x1557, 0x0003,
     "model 01 Bluetooth",
 },
 {
     0x1557, 0x7720,
     "model 01+ Ethernet",
 },
 {
     0x1557, 0x8150,
     "model 01 Ethernet",
 },
 {
     0x1d50, 0x6086,
     "Moonbase Otago OneRNG",
 },
 {
     0x1d50, 0x60c6,
     "Altusmetrum ChaosKey 1.0",
 },
 {
     0x0fde, 0xca05,
     "OWL CM-160",
 },
 {
     0x0ea0, 0x6803,
     "Solid state disk",
 },
 {
     0x0ea0, 0x6858,
     "DKU-5 Serial",
 },
 {
     0x1b75, 0x3071,
     "RT3071",
 },
 {
     0x1b75, 0x3072,
     "RT3072",
 },
 {
     0x1555, 0x0004,
     "AC4 USB-RS485",
 },
 {
     0x0830, 0x0080,
     "USB Serial Adaptor",
 },
 {
     0x0830, 0x0001,
     "Palm m500",
 },
 {
     0x0830, 0x0002,
     "Palm m505",
 },
 {
     0x0830, 0x0003,
     "Palm m515",
 },
 {
     0x0830, 0x0020,
     "Palm i705",
 },
 {
     0x0830, 0x0031,
     "Palm Tungsten Z",
 },
 {
     0x0830, 0x0040,
     "Palm m125",
 },
 {
     0x0830, 0x0050,
     "Palm m130",
 },
 {
     0x0830, 0x0060,
     "Palm Tungsten T",
 },
 {
     0x0830, 0x0061,
     "Palm Zire 31",
 },
 {
     0x0830, 0x0070,
     "Palm Zire",
 },
 {
     0x04da, 0x0901,
     "LS-120",
 },
 {
     0x04da, 0x1b00,
     "MultiMediaCard",
 },
 {
     0x04da, 0x3900,
     "TY-TP50P6-S 50in Touch Panel",
 },
 {
     0x04da, 0x3904,
     "UB94",
 },
 {
     0x5050, 0x0100,
     "SB485 USB-485/422",
 },
 {
     0x5050, 0x0101,
     "AP485 USB-RS485",
 },
 {
     0x5050, 0x0102,
     "SB422 USB-RS422",
 },
 {
     0x5050, 0x0103,
     "SB485 USB-485/422",
 },
 {
     0x5050, 0x0104,
     "AP485 USB-RS485",
 },
 {
     0x5050, 0x0105,
     "SB422 USB-RS422",
 },
 {
     0x5050, 0x0106,
     "SB485S USB-485/422",
 },
 {
     0x5050, 0x0107,
     "SB485C USB-485/422",
 },
 {
     0x5050, 0x0200,
     "Serial",
 },
 {
     0x5050, 0x0300,
     "Serial",
 },
 {
     0x5050, 0x0301,
     "SB232 USB-RS232",
 },
 {
     0x5050, 0x0400,
     "TMU Thermometer",
 },
 {
     0x5050, 0x0500,
     "IRAmp Duplex",
 },
 {
     0x5050, 0x0700,
     "DRAK5",
 },
 {
     0x5050, 0x0800,
     "QUIDO USB 8/8",
 },
 {
     0x5050, 0x0900,
     "QUIDO USB 4/4",
 },
 {
     0x5050, 0x0A00,
     "QUIDO USB 2/2",
 },
 {
     0x5050, 0x0B00,
     "QUIDO USB 10/1",
 },
 {
     0x5050, 0x0C00,
     "QUIDO USB 30/3",
 },
 {
     0x5050, 0x0D00,
     "QUIDO USB 60(100)/3",
 },
 {
     0x5050, 0x0E00,
     "QUIDO USB 2/16",
 },
 {
     0x5050, 0x0F00,
     "QUIDO USB 3/32",
 },
 {
     0x5050, 0x1000,
     "DRAK6 USB",
 },
 {
     0x5050, 0x8000,
     "UPS-USB Stavovy",
 },
 {
     0x5050, 0x8001,
     "MU Controller",
 },
 {
     0x5050, 0x8002,
     "SimuKey",
 },
 {
     0x5050, 0x8003,
     "AD4USB",
 },
 {
     0x5050, 0x8004,
     "GOLIATH MUX",
 },
 {
     0x5050, 0x8005,
     "GOLIATH MSR",
 },
 {
     0x20b8, 0x8888,
     "RT3070",
 },
 {
     0x1d4d, 0x0002,
     "RT2870",
 },
 {
     0x1d4d, 0x000c,
     "RT3070",
 },
 {
     0x1d4d, 0x000e,
     "RT3070",
 },
 {
     0x1d4d, 0x0010,
     "RT3070",
 },
 {
     0x1d4d, 0x0011,
     "RT3072",
 },
 {
     0x0d7d, 0x0240,
     "6 in 1",
 },
 {
     0x0d7d, 0x0280,
     "3 in 1",
 },
 {
     0x0d7d, 0x0d7d,
     "Disk",
 },
 {
     0x0565, 0x0001,
     "Serial Converter",
 },
 {
     0x0565, 0x0002,
     "Ethernet",
 },
 {
     0x0565, 0x0003,
     "At-Home Ethernet",
 },
 {
     0x0565, 0x0005,
     "Ethernet",
 },
 {
     0x124a, 0x4017,
     "WL-503IA",
 },
 {
     0x124a, 0x4025,
     "GWU513",
 },
 {
     0x06c2, 0x0036,
     "2x2 Interface Kit",
 },
 {
     0x0471, 0x0101,
     "DSS 350 Digital Speaker System",
 },
 {
     0x0471, 0x0104,
     "DSS XXX Digital Speaker System",
 },
 {
     0x0471, 0x1237,
     "SNU5630NS/05",
 },
 {
     0x0471, 0x0201,
     "hub",
 },
 {
     0x0471, 0x0302,
     "PCA645VC",
 },
 {
     0x0471, 0x0303,
     "PCA646VC",
 },
 {
     0x0471, 0x0307,
     "PCVC675K Vesta",
 },
 {
     0x0471, 0x0308,
     "PCVC680K Vesta Pro",
 },
 {
     0x0471, 0x030c,
     "PCVC690K Vesta Pro Scan Camera",
 },
 {
     0x0471, 0x0310,
     "PCVC730K ToUCam Fun",
 },
 {
     0x0471, 0x0311,
     "PCVC740K ToUCam Pro PC",
 },
 {
     0x0471, 0x0312,
     "PCVC750K ToUCam Pro Scan",
 },
 {
     0x0471, 0x0471,
     "DSS 150 Digital Speaker System",
 },
 {
     0x0471, 0x066a,
     "AKTAKOM ACE-1001",
 },
 {
     0x0471, 0x1230,
     "CPWUA054",
 },
 {
     0x0471, 0x1232,
     "SNU6500",
 },
 {
     0x0471, 0x1233,
     "SNU6500",
 },
 {
     0x0471, 0x1236,
     "SNU5600",
 },
 {
     0x0471, 0x1801,
     "DIVA mp3 player",
 },
 {
     0x0471, 0x200f,
     "RT2870",
 },
 {
     0x04cc, 0x1122,
     "hub",
 },
 {
     0x05f3, 0x020b,
     "PS2 to Mac",
 },
 {
     0x05f3, 0x0233,
     "Xkeys Programmable Keyboard",
 },
 {
     0x0eaf, 0x0001,
     "CRW-600 6-in-1",
 },
 {
     0x2019, 0x1201,
     "RTL8188CUS",
 },
 {
     0x2c02, 0x14ea,
     "GW-US11H WLAN",
 },
 {
     0x2019, 0x3220,
     "GW-US11S WLAN",
 },
 {
     0x2019, 0x4902,
     "RTL8188CU",
 },
 {
     0x0053, 0x5301,
     "GW-US54ZGL",
 },
 {
     0x0053, 0x5302,
     "ZD1211B",
 },
 {
     0x2019, 0x5303,
     "GW-US54GXS WLAN",
 },
 {
     0x2019, 0x5304,
     "GW-US300",
 },
 {
     0x2019, 0xab01,
     "GW-US54HP",
 },
 {
     0x14ea, 0xab10,
     "GW-US54GZ",
 },
 {
     0x14ea, 0xab11,
     "GU-1000T",
 },
 {
     0x14ea, 0xab13,
     "GW-US54Mini",
 },
 {
     0x2019, 0xab24,
     "GW-US300MiniS",
 },
 {
     0x2019, 0xab25,
     "RT3070",
 },
 {
     0x2019, 0xab28,
     "GW-USNano",
 },
 {
     0x2019, 0xab29,
     "GW-USMicro300",
 },
 {
     0x2019, 0xab2a,
     "RTL8188CU",
 },
 {
     0x2019, 0xab2b,
     "RTL8192CU",
 },
 {
     0x2019, 0xab2e,
     "RTL8188CU",
 },
 {
     0x2019, 0xab50,
     "GW-US54Mini2",
 },
 {
     0x2019, 0xc002,
     "GW-US54SG",
 },
 {
     0x2019, 0xc007,
     "GW-US54GZL",
 },
 {
     0x2019, 0xed01,
     "GW-US54GD",
 },
 {
     0x2019, 0xed02,
     "GW-USMM",
 },
 {
     0x2019, 0xed06,
     "RT2870",
 },
 {
     0x2019, 0xed14,
     "GW-USMicroN",
 },
 {
     0x2019, 0xed16,
     "GW-USMicroN2W",
 },
 {
     0x2019, 0xed17,
     "RTL8188CU",
 },
 {
     0x047f, 0x0ca1,
     "DSP-400 Headset",
 },
 {
     0x10b5, 0x9060,
     "test board",
 },
 {
     0x10b5, 0xac70,
     "CA-42 Serial",
 },
 {
     0x085a, 0x0008,
     "Ethernet",
 },
 {
     0x085a, 0x0009,
     "Ethernet",
 },
 {
     0x095a, 0x3003,
     "Express Ethernet",
 },
 {
     0x0d3a, 0x0300,
     "PP7000 series printer",
 },
 {
     0x0d3a, 0x0400,
     "PP7000 series printer",
 },
 {
     0x3538, 0x0001,
     "Travel Flash Drive",
 },
 {
     0x0461, 0x0300,
     "G2-200",
 },
 {
     0x0461, 0x0301,
     "G2E-300",
 },
 {
     0x0461, 0x0302,
     "G2-300",
 },
 {
     0x0461, 0x0303,
     "G2E-300",
 },
 {
     0x0461, 0x0340,
     "Colorado 9600",
 },
 {
     0x0461, 0x0341,
     "Colorado 600u",
 },
 {
     0x0461, 0x0345,
     "Visioneer 6200",
 },
 {
     0x0461, 0x0360,
     "Colorado 19200",
 },
 {
     0x0461, 0x0361,
     "Colorado 1200u",
 },
 {
     0x0461, 0x0380,
     "G2-600",
 },
 {
     0x0461, 0x0381,
     "ReadyScan 636i",
 },
 {
     0x0461, 0x0382,
     "G2-600",
 },
 {
     0x0461, 0x0383,
     "G2E-600",
 },
 {
     0x0461, 0x4d01,
     "Comfort",
 },
 {
     0x0461, 0x4d02,
     "Mouse-in-a-Box",
 },
 {
     0x0461, 0x4d04,
     "Sony PCGA-UMS1",
 },
 {
     0x067b, 0x0000,
     "PL2301 Host-Host",
 },
 {
     0x067b, 0x0001,
     "PL2302 Host-Host",
 },
 {
     0x067b, 0x04bb,
     "PL2303 Serial",
 },
 {
     0x067b, 0x2303,
     "PL2303 Serial",
 },
 {
     0x067b, 0x2305,
     "Parallel printer",
 },
 {
     0x067b, 0x2307,
     "ATAPI-4 Bridge Controller",
 },
 {
     0x067b, 0x2501,
     "PL2501 Host-Host",
 },
 {
     0x067b, 0x0609,
     "PL2303 Serial",
 },
 {
     0x067b, 0xaaa0,
     "PL2303 Serial",
 },
 {
     0x067b, 0xaaa2,
     "PL2303 Serial",
 },
 {
     0x5372, 0x2303,
     "PL2303 Serial",
 },
 {
     0x0708, 0x047e,
     "USB-1284 BRIDGE",
 },
 {
     0x18e8, 0x6196,
     "RT2573",
 },
 {
     0x18e8, 0x6229,
     "RT2573",
 },
 {
     0x18e8, 0x6238,
     "RT2573",
 },
 {
     0x18e8, 0x6259,
     "RT2870",
 },
 {
     0x05c7, 0x2011,
     "Scorpion-980N",
 },
 {
     0x05c6, 0x1000,
     "MSM driver",
 },
 {
     0x05c6, 0x3196,
     "CDMA MSM modem",
 },
 {
     0x05c6, 0x6000,
     "HSDPA MSM",
 },
 {
     0x05c6, 0x6613,
     "HSDPA MSM",
 },
 {
     0x05c6, 0x9000,
     "HSDPA MSM",
 },
 {
     0x05c6, 0xf000,
     "MSM driver",
 },
 {
     0x1004, 0x6000,
     "CDMA MSM phone",
 },
 {
     0x19d2, 0x0001,
     "CDMA Technologies MSM modem",
 },
 {
     0x19d2, 0x0016,
     "ZTE MF633 USUPA USB modem",
 },
 {
     0x19d2, 0x0031,
     "ZTE MF637 HSUPA USB modem",
 },
 {
     0x19d2, 0x0063,
     "ZTE K3565-Z USB MSM modem",
 },
 {
     0x19d2, 0x0083,
     "ZTE USB MSM installer",
 },
 {
     0x19d2, 0x0091,
     "ONDA MSA110UP USB MSM modem",
 },
 {
     0x19d2, 0x0103,
     "ZTE USB MSM installer",
 },
 {
     0x19d2, 0x0117,
     "ZTE MF112 HSUPA USB modem",
 },
 {
     0x19d2, 0x1364,
     "ZTE HSUSB",
 },
 {
     0x19d2, 0x2000,
     "ZTE USB MSM installer",
 },
 {
     0x19d2, 0xfff1,
     "AC2746 CDMA USB modem",
 },
 {
     0x19d2, 0xfff5,
     "ZTE USB CDMA installer",
 },
 {
     0x19d2, 0xfffe,
     "AC8700 CDMA USB modem",
 },
 {
     0x1a32, 0x0304,
     "RT3070",
 },
 {
     0x0408, 0x1000,
     "Quanta USB MSM (umass mode)",
 },
 {
     0x0408, 0xea02,
     "Quanta Q101 HSDPA USB modem",
 },
 {
     0x057f, 0x6238,
     "USB StrikePad",
 },
 {
     0x1453, 0x4026,
     "PL2303 Serial",
 },
 {
     0x1457, 0x5118,
     "Neo1973 Debug",
 },
 {
     0x04b9, 0x1200,
     "i-Key 2000",
 },
 {
     0x148f, 0x1706,
     "RT2570",
 },
 {
     0x148f, 0x2070,
     "RT2070",
 },
 {
     0x148f, 0x2570,
     "RT2570",
 },
 {
     0x148f, 0x2573,
     "RT2573",
 },
 {
     0x148f, 0x2671,
     "RT2671",
 },
 {
     0x148f, 0x2770,
     "RT2770",
 },
 {
     0x148f, 0x2870,
     "RT2870",
 },
 {
     0x148f, 0x3070,
     "RT3070",
 },
 {
     0x148f, 0x3071,
     "RT3071",
 },
 {
     0x148f, 0x3072,
     "RT3072",
 },
 {
     0x148f, 0x3370,
     "RT3370",
 },
 {
     0x148f, 0x3572,
     "RT3572",
 },
 {
     0x148f, 0x5370,
     "RT5370",
 },
 {
     0x148f, 0x3573,
     "RT3573",
 },
 {
     0x148f, 0x5572,
     "RT5572",
 },
 {
     0x148f, 0x7601,
     "MT7601",
 },
 {
     0x148f, 0x8070,
     "RT8070",
 },
 {
     0x148f, 0x9020,
     "RT2570",
 },
 {
     0x148f, 0x9021,
     "RT2573",
 },
 {
     0x0584, 0xb000,
     "USB serial REX-USB60",
 },
 {
     0x0584, 0xb020,
     "REX-USB60F",
 },
 {
     0x0bda, 0x0179,
     "RTL8188ETV",
 },
 {
     0x0bda, 0x018a,
     "RTL8188CTV",
 },
 {
     0x0bda, 0x317f,
     "RTL8188RU",
 },
 {
     0x0bda, 0x5088,
     "RTL8188CU",
 },
 {
     0x0bda, 0x8150,
     "RTL8150",
 },
 {
     0x0bda, 0x8151,
     "RTL8151 PNA",
 },
 {
     0x0bda, 0x8152,
     "RTL8152",
 },
 {
     0x0bda, 0x8153,
     "RTL8153",
 },
 {
     0x0bda, 0x8170,
     "RTL8188CE",
 },
 {
     0x0bda, 0x8171,
     "RTL8171",
 },
 {
     0x0bda, 0x8172,
     "RTL8172",
 },
 {
     0x0bda, 0x8173,
     "RTL8173",
 },
 {
     0x0bda, 0x8174,
     "RTL8174",
 },
 {
     0x0bda, 0x8176,
     "RTL8188CU",
 },
 {
     0x0bda, 0x8177,
     "RTL8191CU",
 },
 {
     0x0bda, 0x8178,
     "RTL8192CU",
 },
 {
     0x0bda, 0x8179,
     "RTL8188EU",
 },
 {
     0x0bda, 0x817a,
     "RTL8188CU",
 },
 {
     0x0bda, 0x817b,
     "RTL8188CU",
 },
 {
     0x0bda, 0x817c,
     "RTL8192CE",
 },
 {
     0x0bda, 0x817d,
     "RTL8188RU",
 },
 {
     0x0bda, 0x817e,
     "RTL8188CE",
 },
 {
     0x0bda, 0x817f,
     "RTL8188RU",
 },
 {
     0x0bda, 0x8186,
     "RTL8192CE",
 },
 {
     0x0bda, 0x8187,
     "RTL8187",
 },
 {
     0x0bda, 0x8189,
     "RTL8187B",
 },
 {
     0x0bda, 0x818a,
     "RTL8188CUS",
 },
 {
     0x0bda, 0x818b,
     "RTL8192EU",
 },
 {
     0x0bda, 0x8191,
     "RTL8188CU",
 },
 {
     0x0bda, 0x8197,
     "RTL8187B",
 },
 {
     0x0bda, 0x8192,
     "RTL8192U",
 },
 {
     0x0bda, 0x8198,
     "RTL8187B",
 },
 {
     0x0bda, 0x819a,
     "RTL8188CU",
 },
 {
     0x0bda, 0x8712,
     "RTL8712",
 },
 {
     0x0bda, 0x8712,
     "RTL8713",
 },
 {
     0x0bda, 0x8754,
     "RTL8188CU",
 },
 {
     0x0bda, 0xc512,
     "RTL8192SU",
 },
 {
     0x045b, 0x0053,
     "RX610 RX-Stick",
 },
 {
     0x0fca, 0x0001,
     "BlackBerry",
 },
 {
     0x0fca, 0x0004,
     "RIM Mass Storage Device",
 },
 {
     0x0fca, 0x0006,
     "BlackBerry pearl",
 },
 {
     0x05ca, 0x1830,
     "VGP-VCC2 Camera",
 },
 {
     0x05ca, 0x1832,
     "VGP-VCC3 Camera",
 },
 {
     0x05ca, 0x1833,
     "VGP-VCC2 Camera",
 },
 {
     0x05ca, 0x1834,
     "VGP-VCC2 Camera",
 },
 {
     0x05ca, 0x1835,
     "VGP-VCC5 Camera",
 },
 {
     0x05ca, 0x1836,
     "VGP-VCC4 Camera",
 },
 {
     0x05ca, 0x1837,
     "VGP-VCC4 Camera",
 },
 {
     0x05ca, 0x1839,
     "VGP-VCC6 Camera",
 },
 {
     0x05ca, 0x183a,
     "VGP-VCC7 Camera",
 },
 {
     0x05ca, 0x183b,
     "VGP-VCC8 Camera",
 },
 {
     0x05ca, 0x183e,
     "VGP-VCC9 Camera",
 },
 {
     0x05ca, 0x18b2,
     "VGP-VCCX Camera",
 },
 {
     0x0582, 0x0000,
     "UA-100 Audio I/F",
 },
 {
     0x0582, 0x0002,
     "UM-4 MIDI I/F",
 },
 {
     0x0582, 0x0003,
     "SC-8850 MIDI Synth",
 },
 {
     0x0582, 0x0004,
     "U-8 Audio I/F",
 },
 {
     0x0582, 0x0005,
     "UM-2 MIDI I/F",
 },
 {
     0x0582, 0x0007,
     "SC-8820 MIDI Synth",
 },
 {
     0x0582, 0x0008,
     "PC-300 MIDI Keyboard",
 },
 {
     0x0582, 0x0009,
     "UM-1 MIDI I/F",
 },
 {
     0x0582, 0x000b,
     "SK-500 MIDI Keyboard",
 },
 {
     0x0582, 0x000c,
     "SC-D70 MIDI Synth",
 },
 {
     0x0582, 0x0014,
     "UM-880 MIDI I/F",
 },
 {
     0x0582, 0x0016,
     "SD-90 MIDI Synth",
 },
 {
     0x0582, 0x0023,
     "UM-550 MIDI I/F",
 },
 {
     0x0582, 0x0027,
     "SD-20 MIDI Synth",
 },
 {
     0x0582, 0x0029,
     "SD-80 MIDI Synth",
 },
 {
     0x0582, 0x002b,
     "UA-700 Audio I/F",
 },
 {
     0x0582, 0x012a,
     "UM-ONE MIDI I/F",
 },
 {
     0x0583, 0x2033,
     "Gamepad 203USB",
 },
 {
     0x2100, 0x9e52,
     "CT57B Radio Cable",
 },
 {
     0x0ba0, 0x800d,
     "USB-485-BL",
 },
 {
     0x079b, 0x0027,
     "Serial",
 },
 {
     0x079b, 0x004a,
     "XG-760A",
 },
 {
     0x079b, 0x0062,
     "XG-76NA",
 },
 {
     0x06a3, 0x0006,
     "Cyborg 3D Gold Joystick",
 },
 {
     0x0781, 0x0001,
     "ImageMate SDDR-05a",
 },
 {
     0x0781, 0x0002,
     "ImageMate SDDR-31",
 },
 {
     0x0781, 0x0005,
     "ImageMate SDDR-05",
 },
 {
     0x0781, 0x0100,
     "ImageMate SDDR-12",
 },
 {
     0x0781, 0x0200,
     "ImageMate SDDR-09",
 },
 {
     0x0781, 0x0810,
     "ImageMate SDDR-75",
 },
 {
     0x0663, 0x9806,
     "JY-DV9USB gamepad",
 },
 {
     0x0474, 0x0701,
     "Sanyo SCP-4900 Phone",
 },
 {
     0x055d, 0x2018,
     "WIS09ABGN Wireless LAN adapter",
 },
 {
     0x04e8, 0x2018,
     "RT2870",
 },
 {
     0x04e8, 0x6881,
     "Android",
 },
 {
     0x04e8, 0x6863,
     "Android v2",
 },
 {
     0x04e8, 0x8001,
     "I330",
 },
 {
     0x055d, 0xa000,
     "SWL-2100U",
 },
 {
     0x04e8, 0xa100,
     "AX88179",
 },
 {
     0x04ce, 0x0002,
     "SL11R-IDE",
 },
 {
     0x04ce, 0x0300,
     "Phantom 336CX - C3",
 },
 {
     0x0c52, 0x2101,
     "SeaLINK+232 (2101/2105)",
 },
 {
     0x0c52, 0x2102,
     "SeaLINK+485 (2102)",
 },
 {
     0x0c52, 0x2103,
     "SeaLINK+232I (2103)",
 },
 {
     0x0c52, 0x2104,
     "SeaLINK+485I (2104)",
 },
 {
     0x0c52, 0x9020,
     "SeaLINK+422 (2106)",
 },
 {
     0x0c52, 0x2211,
     "SeaPORT+2/232 (2201) Port 1",
 },
 {
     0x0c52, 0x2221,
     "SeaPORT+2/232 (2201) Port 2",
 },
 {
     0x0c52, 0x2212,
     "SeaPORT+2/485 (2202) Port 1",
 },
 {
     0x0c52, 0x2222,
     "SeaPORT+2/485 (2202) Port 2",
 },
 {
     0x0c52, 0x2213,
     "SeaPORT+2 (2203) Port 1",
 },
 {
     0x0c52, 0x2223,
     "SeaPORT+2 (2203) Port 2",
 },
 {
     0x0c52, 0x2411,
     "SeaPORT+4/232 (2401) Port 1",
 },
 {
     0x0c52, 0x2421,
     "SeaPORT+4/232 (2401) Port 2",
 },
 {
     0x0c52, 0x2431,
     "SeaPORT+4/232 (2401) Port 3",
 },
 {
     0x0c52, 0x2441,
     "SeaPORT+4/232 (2401) Port 4",
 },
 {
     0x0c52, 0x2412,
     "SeaPORT+4/485 (2402) Port 1",
 },
 {
     0x0c52, 0x2422,
     "SeaPORT+4/485 (2402) Port 2",
 },
 {
     0x0c52, 0x2432,
     "SeaPORT+4/485 (2402) Port 3",
 },
 {
     0x0c52, 0x2442,
     "SeaPORT+4/485 (2402) Port 4",
 },
 {
     0x0c52, 0x2413,
     "SeaPORT+4 (2403) Port 1",
 },
 {
     0x0c52, 0x2423,
     "SeaPORT+4 (2403) Port 2",
 },
 {
     0x0c52, 0x2433,
     "SeaPORT+4 (2403) Port 3",
 },
 {
     0x0c52, 0x2443,
     "SeaPORT+4 (2403) Port 4",
 },
 {
     0x0c52, 0X2811,
     "SeaLINK+8/232 (2801) Port 1",
 },
 {
     0x0c52, 0X2821,
     "SeaLINK+8/232 (2801) Port 2",
 },
 {
     0x0c52, 0X2831,
     "SeaLINK+8/232 (2801) Port 3",
 },
 {
     0x0c52, 0X2841,
     "SeaLINK+8/232 (2801) Port 4",
 },
 {
     0x0c52, 0X2851,
     "SeaLINK+8/232 (2801) Port 5",
 },
 {
     0x0c52, 0X2861,
     "SeaLINK+8/232 (2801) Port 6",
 },
 {
     0x0c52, 0X2871,
     "SeaLINK+8/232 (2801) Port 7",
 },
 {
     0x0c52, 0X2881,
     "SeaLINK+8/232 (2801) Port 8",
 },
 {
     0x0c52, 0X2812,
     "SeaLINK+8/485 (2802) Port 1",
 },
 {
     0x0c52, 0X2822,
     "SeaLINK+8/485 (2802) Port 2",
 },
 {
     0x0c52, 0X2832,
     "SeaLINK+8/485 (2802) Port 3",
 },
 {
     0x0c52, 0X2842,
     "SeaLINK+8/485 (2802) Port 4",
 },
 {
     0x0c52, 0X2852,
     "SeaLINK+8/485 (2802) Port 5",
 },
 {
     0x0c52, 0X2862,
     "SeaLINK+8/485 (2802) Port 6",
 },
 {
     0x0c52, 0X2872,
     "SeaLINK+8/485 (2802) Port 7",
 },
 {
     0x0c52, 0X2882,
     "SeaLINK+8/485 (2802) Port 8",
 },
 {
     0x0c52, 0X2813,
     "SeaLINK+8 (2803) Port 1",
 },
 {
     0x0c52, 0X2823,
     "SeaLINK+8 (2803) Port 2",
 },
 {
     0x0c52, 0X2833,
     "SeaLINK+8 (2803) Port 3",
 },
 {
     0x0c52, 0X2843,
     "SeaLINK+8 (2803) Port 4",
 },
 {
     0x0c52, 0X2853,
     "SeaLINK+8 (2803) Port 5",
 },
 {
     0x0c52, 0X2863,
     "SeaLINK+8 (2803) Port 6",
 },
 {
     0x0c52, 0X2873,
     "SeaLINK+8 (2803) Port 7",
 },
 {
     0x0c52, 0X2883,
     "SeaLINK+8 (2803) Port 8",
 },
 {
     0x1adb, 0x0001,
     "C662",
 },
 {
     0x1d6f, 0x0010,
     "RF Dongle",
 },
 {
     0x1740, 0x0605,
     "RT2870",
 },
 {
     0x1740, 0x0615,
     "RT2870",
 },
 {
     0x1740, 0x2000,
     "NUB-8301",
 },
 {
     0x1740, 0x6100,
     "NUB-862",
 },
 {
     0x1740, 0x9603,
     "RTL8192SU",
 },
 {
     0x1740, 0x9605,
     "RTL8192SU",
 },
 {
     0x1740, 0x9701,
     "RT2870",
 },
 {
     0x1740, 0x9702,
     "RT2870",
 },
 {
     0x1740, 0x9703,
     "RT3070",
 },
 {
     0x1740, 0x9705,
     "RT3071",
 },
 {
     0x1740, 0x9706,
     "RT3072",
 },
 {
     0x1740, 0x9707,
     "RT3072",
 },
 {
     0x1740, 0x9708,
     "RT3072",
 },
 {
     0x1740, 0x9709,
     "RT3072",
 },
 {
     0x1740, 0x9801,
     "RT3072",
 },
 {
     0x1166, 0x0000,
     "Root Hub",
 },
 {
     0x065e, 0x1234,
     "SN1 L1 System Controller",
 },
 {
     0x0a46, 0x0268,
     "ST268",
 },
 {
     0x0a46, 0x0269,
     "DM9620A",
 },
 {
     0x0a46, 0x1269,
     "DM9621A",
 },
 {
     0x0a46, 0x6688,
     "ZT6688",
 },
 {
     0x0a46, 0x8515,
     "ADM8515 Ethernet",
 },
 {
     0x0a46, 0x9000,
     "DM9000E",
 },
 {
     0x0a46, 0x9601,
     "DM9601",
 },
 {
     0x0a46, 0x9620,
     "DM9620",
 },
 {
     0x0a46, 0x9621,
     "DM9621",
 },
 {
     0x0a46, 0x9622,
     "DM9622",
 },
 {
     0x13d2, 0x0400,
     "Pocket Adapter",
 },
 {
     0x04dd, 0x8004,
     "SL5500",
 },
 {
     0x04dd, 0x8005,
     "A300",
 },
 {
     0x04dd, 0x8006,
     "SL5600",
 },
 {
     0x04dd, 0x8007,
     "C700",
 },
 {
     0x04dd, 0x9031,
     "C750",
 },
 {
     0x04e6, 0x0001,
     "E-USB Bridge",
 },
 {
     0x04e6, 0x0002,
     "eUSCSI Bridge",
 },
 {
     0x04e6, 0x0003,
     "ImageMate SDDR09",
 },
 {
     0x04e6, 0x0005,
     "eUSB SmartMedia / CompactFlash",
 },
 {
     0x04e6, 0x0006,
     "eUSB MultiMediaCard",
 },
 {
     0x04e6, 0x0007,
     "Sony Hifd",
 },
 {
     0x04e6, 0x0009,
     "eUSB ATA/ATAPI",
 },
 {
     0x04e6, 0x000a,
     "eUSB CompactFlash",
 },
 {
     0x04e6, 0x000b,
     "eUSCSI Bridge",
 },
 {
     0x04e6, 0x000c,
     "eUSCSI Bridge",
 },
 {
     0x04e6, 0x0101,
     "CD-RW Device",
 },
 {
     0x04e6, 0x1010,
     "SCM Micro",
 },
 {
     0x067c, 0x1001,
     "SpeedStream",
 },
 {
     0x067c, 0x1022,
     "SpeedStream 1022",
 },
 {
     0x0681, 0x001b,
     "WLL013",
 },
 {
     0x0681, 0x0034,
     "GSM module MC35",
 },
 {
     0x11f5, 0x0001,
     "SX1",
 },
 {
     0x11f5, 0x0003,
     "X65",
 },
 {
     0x11f5, 0x0004,
     "X75",
 },
 {
     0x0908, 0x01ff,
     "RUGGEDCOM",
 },
 {
     0x1199, 0x0017,
     "EM5625",
 },
 {
     0x1199, 0x0018,
     "MC5720",
 },
 {
     0x1199, 0x0019,
     "AirCard 595",
 },
 {
     0x1199, 0x0020,
     "MC5725",
 },
 {
     0x1199, 0x0021,
     "597E",
 },
 {
     0x1199, 0x0023,
     "Compass 597",
 },
 {
     0x1199, 0x0120,
     "595U",
 },
 {
     0x1199, 0x0112,
     "Aircard 580 EVDO",
 },
 {
     0x1199, 0x0218,
     "MC5720",
 },
 {
     0x1199, 0x0220,
     "MC5725",
 },
 {
     0x1199, 0x0fff,
     "Aircard Tru Installer",
 },
 {
     0x1199, 0x6802,
     "MC8755",
 },
 {
     0x1199, 0x6803,
     "MC8765",
 },
 {
     0x1199, 0x6804,
     "MC8755",
 },
 {
     0x1199, 0x6812,
     "MC8775",
 },
 {
     0x1199, 0x6813,
     "MC8755",
 },
 {
     0x1199, 0x6815,
     "MC8775",
 },
 {
     0x1199, 0x6820,
     "875",
 },
 {
     0x1199, 0x6832,
     "MC8780",
 },
 {
     0x1199, 0x6833,
     "MC8781",
 },
 {
     0x1199, 0x683c,
     "MC8790",
 },
 {
     0x1199, 0x6850,
     "880",
 },
 {
     0x1199, 0x6851,
     "881",
 },
 {
     0x1199, 0x6852,
     "880E",
 },
 {
     0x1199, 0x6853,
     "881E",
 },
 {
     0x1199, 0x6855,
     "880U",
 },
 {
     0x1199, 0x6856,
     "881U",
 },
 {
     0x1199, 0x6880,
     "885U",
 },
 {
     0x1199, 0x6890,
     "C01SW",
 },
 {
     0x1199, 0x68a3,
     "USB305",
 },
 {
     0x1199, 0x9013,
     "MC8355",
 },
 {
     0x1199, 0x9051,
     "Aircard 340U",
 },
 {
     0x1199, 0x9053,
     "Aircard 770S",
 },
 {
     0x1199, 0x9071,
     "MC7455",
 },
 {
     0x1199, 0x9079,
     "EM7455",
 },
 {
     0x066f, 0x4200,
     "IrDA",
 },
 {
     0x066f, 0x8020,
     "Datum Networks SSF-7X Multi Players",
 },
 {
     0x07cc, 0x0004,
     "DigiFilm-Combo",
 },
 {
     0x07cc, 0x0201,
     "MULTICARDREADER",
 },
 {
     0x0b39, 0x0421,
     "Serial",
 },
 {
     0x1485, 0x0001,
     "U2E",
 },
 {
     0x1485, 0x0002,
     "Psion Dacom Gold Port Ethernet",
 },
 {
     0x1ba4, 0x0002,
     "EM358x",
 },
 {
     0x10c4, 0x0f91,
     "VStabi Controller",
 },
 {
     0x10c4, 0x1101,
     "Arkham DS101 Monitor",
 },
 {
     0x10c4, 0x1601,
     "Arkham DS101 Adapter",
 },
 {
     0x10c4, 0x800a,
     "BSM7-D-USB",
 },
 {
     0x10c4, 0x803b,
     "Pololu Serial",
 },
 {
     0x10c4, 0x8043,
     "Software Bisque Paramount ME",
 },
 {
     0x10c4, 0x8044,
     "Cygnal Debug Adapter",
 },
 {
     0x10c4, 0x804e,
     "Software Bisque Paramount ME",
 },
 {
     0x10c4, 0x8053,
     "EDG1228",
 },
 {
     0x10c4, 0x8054,
     "Enfora GSM2228",
 },
 {
     0x10c4, 0x8066,
     "Argussoft ISP",
 },
 {
     0x10c4, 0x806f,
     "IMS USB-RS422",
 },
 {
     0x10c4, 0x807a,
     "Crumb128",
 },
 {
     0x10c4, 0x80c4,
     "Optris MSpro LT Thermometer",
 },
 {
     0x10c4, 0x80ca,
     "Degree Controls",
 },
 {
     0x10c4, 0x80dd,
     "Tracient RFID",
 },
 {
     0x10c4, 0x80ed,
     "Track Systems Traqmate",
 },
 {
     0x10c4, 0x80f6,
     "Suunto sports",
 },
 {
     0x10c4, 0x8115,
     "Arygon Mifare RFID reader",
 },
 {
     0x10c4, 0x813d,
     "Burnside Desktop mobile",
 },
 {
     0x10c4, 0x813f,
     "Tams Master Easy Control",
 },
 {
     0x10c4, 0x814a,
     "RIGblaster P&P",
 },
 {
     0x10c4, 0x814b,
     "RIGtalk",
 },
 {
     0x10c4, 0x8156,
     "B&G H3000 Data Cable",
 },
 {
     0x10c4, 0x815e,
     "IP-Link 1220",
 },
 {
     0x10c4, 0x815f,
     "Timewave HamLinkUSB",
 },
 {
     0x10c4, 0x818b,
     "AVIT Research USB-TTL",
 },
 {
     0x10c4, 0x819f,
     "MJS USB-TOSLINK",
 },
 {
     0x10c4, 0x81a6,
     "ThinkOptics WavIt",
 },
 {
     0x10c4, 0x81a9,
     "Multiplex RC adapter",
 },
 {
     0x10c4, 0x81ac,
     "MSD DashHawk",
 },
 {
     0x10c4, 0x81ad,
     "INSYS Modem",
 },
 {
     0x10c4, 0x81c8,
     "Lipowsky Baby-JTAG",
 },
 {
     0x10c4, 0x81e2,
     "Lipowsky Baby-LIN",
 },
 {
     0x10c4, 0x81e7,
     "Aerocomm Radio",
 },
 {
     0x10c4, 0x81e8,
     "Zephyr Bioharness",
 },
 {
     0x10c4, 0x81f2,
     "EMS C1007 HF RFID reader",
 },
 {
     0x10c4, 0x8218,
     "Lipowsky HARP-1",
 },
 {
     0x10c4, 0x822b,
     "Commander 2 EDGE(GSM) Modem",
 },
 {
     0x10c4, 0x826b,
     "Cygnal Fasttrax GPS",
 },
 {
     0x10c4, 0x8281,
     "Nanotec Plug & Drive",
 },
 {
     0x10c4, 0x8293,
     "Telegesis ETRX2USB",
 },
 {
     0x10c4, 0x82f9,
     "Procyon AVS",
 },
 {
     0x10c4, 0x8341,
     "MC35pu",
 },
 {
     0x10c4, 0x8382,
     "Cygnal",
 },
 {
     0x10c4, 0x83a8,
     "Amber Wireless AMB2560",
 },
 {
     0x10c4, 0x83d8,
     "DekTec DTA Plus VHF/UHF Booster",
 },
 {
     0x10c4, 0x8411,
     "Kyocera GPS",
 },
 {
     0x10c4, 0x8418,
     "IRZ SG-10 GSM/GPRS Modem",
 },
 {
     0x10c4, 0x846e,
     "BEI USB Sensor (VCP)",
 },
 {
     0x10c4, 0x8477,
     "Balluff RFID reader",
 },
 {
     0x10c4, 0x85ea,
     "AC-Services IBUS",
 },
 {
     0x10c4, 0x85eb,
     "AC-Services CIS-IBUS",
 },
 {
     0x10c4, 0x85f8,
     "Virtenio Preon32",
 },
 {
     0x10c4, 0x8664,
     "AC-Services CAN",
 },
 {
     0x10c4, 0x8665,
     "AC-Services OBD",
 },
 {
     0x10c4, 0x8856,
     "CEL EM357 LR",
 },
 {
     0x10c4, 0x8857,
     "CEL EM357",
 },
 {
     0x10c4, 0x88a4,
     "MMB Networks ZigBee",
 },
 {
     0x10c4, 0x88a5,
     "Planet Innovation Ingeni ZigBee",
 },
 {
     0x10c4, 0x8946,
     "Ketra N1",
 },
 {
     0x10c4, 0x8977,
     "CEL MeshWorks DevKit",
 },
 {
     0x10c4, 0x8998,
     "KCF Technologies PRN",
 },
 {
     0x10c4, 0x8a2a,
     "HubZ ZigBee/Z-Wave",
 },
 {
     0x10a6, 0xaa26,
     "DCU-11 clone",
 },
 {
     0x10c4, 0xea60,
     "CP210x Serial",
 },
 {
     0x10c4, 0xea61,
     "CP210x Serial",
 },
 {
     0x10c5, 0xea61,
     "GPRS Modem",
 },
 {
     0x10ce, 0xea6a,
     "GPRS Modem 100EU",
 },
 {
     0x10c4, 0xea70,
     "CP210x Serial",
 },
 {
     0x10c4, 0xea71,
     "Infinity GPS-MIC-1",
 },
 {
     0x10c4, 0xea80,
     "CP2110 USB HID Serial",
 },
 {
     0x10c4, 0xf001,
     "USBscope50",
 },
 {
     0x10c4, 0xf002,
     "USBwave12",
 },
 {
     0x10c4, 0xf003,
     "USBpulse100",
 },
 {
     0x10c4, 0xf004,
     "USBcount50",
 },
 {
     0x1527, 0x0200,
     "YAP Phone (no firmware)",
 },
 {
     0x1527, 0x0201,
     "YAP Phone",
 },
 {
     0x06ea, 0x0001,
     "NetComm Roadster II 56",
 },
 {
     0x6189, 0x182d,
     "LN029",
 },
 {
     0x9016, 0x182d,
     "WL-022",
 },
 {
     0x6189, 0x2068,
     "CN104",
 },
 {
     0x0df6, 0x000d,
     "WL-168 v1",
 },
 {
     0x0df6, 0x0017,
     "RT2870",
 },
 {
     0x0df6, 0x0021,
     "LN-030",
 },
 {
     0x0df6, 0x0028,
     "WL-168 v4",
 },
 {
     0x0df6, 0x002b,
     "RT2870",
 },
 {
     0x0df6, 0x002c,
     "RT2870",
 },
 {
     0x0df6, 0x002d,
     "WL-302",
 },
 {
     0x0df6, 0x0036,
     "WL-603",
 },
 {
     0x0df6, 0x0039,
     "WL-315",
 },
 {
     0x0df6, 0x003b,
     "WL-321",
 },
 {
     0x0df6, 0x003c,
     "RT3070",
 },
 {
     0x0df6, 0x003d,
     "WL-324",
 },
 {
     0x0df6, 0x003e,
     "WL-343",
 },
 {
     0x0df6, 0x003f,
     "WL-608",
 },
 {
     0x0df6, 0x0040,
     "WL-344",
 },
 {
     0x0df6, 0x0041,
     "WL-329",
 },
 {
     0x0df6, 0x0042,
     "WL-345",
 },
 {
     0x0df6, 0x0045,
     "WL-353",
 },
 {
     0x0df6, 0x0047,
     "RT3072",
 },
 {
     0x0df6, 0x0048,
     "RT3072",
 },
 {
     0x0df6, 0x004b,
     "WL-349 v1",
 },
 {
     0x0df6, 0x004d,
     "RT3072",
 },
 {
     0x0df6, 0x0050,
     "WL-349 v4",
 },
 {
     0x0df6, 0x0051,
     "RT3070",
 },
 {
     0x0df6, 0x0052,
     "RTL8188CU",
 },
 {
     0x0df6, 0x005c,
     "RTL8188CU",
 },
 {
     0x0df6, 0x005f,
     "RT3072",
 },
 {
     0x0df6, 0x0060,
     "WLA-4000",
 },
 {
     0x0df6, 0x0061,
     "RTL8192CU",
 },
 {
     0x0df6, 0x0062,
     "WLA-5000",
 },
 {
     0x0df6, 0x061c,
     "LN-028",
 },
 {
     0x0df6, 0x0070,
     "RTL8192CU",
 },
 {
     0x0df6, 0x0072,
     "LN-032",
 },
 {
     0x0df6, 0x0077,
     "WLA-2100 v2",
 },
 {
     0x0df6, 0x9071,
     "WL-113",
 },
 {
     0x0df6, 0x9075,
     "ZD1211B",
 },
 {
     0x0df6, 0x90ac,
     "WL-172",
 },
 {
     0x0df6, 0x9712,
     "WL-113 rev 2",
 },
 {
     0x0b8c, 0x2303,
     "Serial",
 },
 {
     0x08d1, 0x0001,
     "SmartLink Ethernet",
 },
 {
     0x08d1, 0x0003,
     "smartNIC 2 PnP",
 },
 {
     0x0707, 0x0100,
     "10Mbps Ethernet",
 },
 {
     0x0707, 0x0200,
     "10/100 Ethernet",
 },
 {
     0x0707, 0x0201,
     "EZ Connect Ethernet",
 },
 {
     0x0424, 0x2020,
     "Hub",
 },
 {
     0x0424, 0x2504,
     "Hub",
 },
 {
     0x0424, 0x2513,
     "Hub",
 },
 {
     0x0424, 0x9500,
     "SMSC9500",
 },
 {
     0x0424, 0x9505,
     "SMSC9505",
 },
 {
     0x0424, 0x9e00,
     "SMSC9500A",
 },
 {
     0x0424, 0x9e01,
     "SMSC9505A",
 },
 {
     0x0424, 0xec00,
     "SMSC9512/14",
 },
 {
     0x0424, 0x9900,
     "SMSC9500",
 },
 {
     0x0424, 0x9901,
     "SMSC9505",
 },
 {
     0x0424, 0x9902,
     "SMSC9500A",
 },
 {
     0x0424, 0x9903,
     "SMSC9505A",
 },
 {
     0x0424, 0x9904,
     "SMSC9512/14",
 },
 {
     0x0424, 0x9905,
     "SMSC9500A",
 },
 {
     0x0424, 0x9906,
     "SMSC9505A",
 },
 {
     0x0424, 0x9907,
     "SMSC9500",
 },
 {
     0x0424, 0x9908,
     "SMSC9500A",
 },
 {
     0x0424, 0x9909,
     "SMSC9512",
 },
 {
     0x0424, 0x9530,
     "LAN9530",
 },
 {
     0x0424, 0x9730,
     "LAN9730",
 },
 {
     0x0424, 0x9e08,
     "LAN89530",
 },
 {
     0x0d5c, 0xa001,
     "EZ Connect 11Mbps",
 },
 {
     0x0d5c, 0xa002,
     "EZ Connect 11Mbps v2",
 },
 {
     0x0707, 0xee13,
     "EZ Connect 54Mbps",
 },
 {
     0x15e8, 0x9100,
     "NUB100 Ethernet",
 },
 {
     0x15e8, 0x9110,
     "NUB110 Ethernet",
 },
 {
     0x060b, 0x2101,
     "Keyboard",
 },
 {
     0x054c, 0x0010,
     "DSC Cameras",
 },
 {
     0x054c, 0x0025,
     "Memorystick NW-MS7",
 },
 {
     0x054c, 0x002b,
     "Harddrive V2",
 },
 {
     0x054c, 0x002d,
     "Memorystick MSAC-US1",
 },
 {
     0x054c, 0x002e,
     "Handycam",
 },
 {
     0x054c, 0x0032,
     "MSC Memorystick",
 },
 {
     0x054c, 0x0038,
     "Clie v3.5",
 },
 {
     0x054c, 0x005c,
     "PlayStation2 keyboard",
 },
 {
     0x054c, 0x005d,
     "PlayStation2 keyboard hub",
 },
 {
     0x054c, 0x0061,
     "PlayStation2 mouse",
 },
 {
     0x054c, 0x0066,
     "Clie v4.0",
 },
 {
     0x054c, 0x006d,
     "Clie v4.0 Memory Stick",
 },
 {
     0x054c, 0x0095,
     "Clie s360",
 },
 {
     0x054c, 0x0099,
     "Clie v4.1 Memory Stick",
 },
 {
     0x054c, 0x009a,
     "Clie v4.1",
 },
 {
     0x054c, 0x00da,
     "Clie nx60",
 },
 {
     0x054c, 0x0169,
     "Clie tj25",
 },
 {
     0x054c, 0x0257,
     "IFU-WLM2",
 },
 {
     0x054c, 0x0279,
     "1seg TV tuner",
 },
 {
     0x0833, 0x039f,
     "KeikaiDenwa 8",
 },
 {
     0x0833, 0x012e,
     "KeikaiDenwa 8 with charger",
 },
 {
     0x15a9, 0x0004,
     "RT2573",
 },
 {
     0x15a9, 0x0006,
     "RT2870",
 },
 {
     0x15a9, 0x0010,
     "RT3070",
 },
 {
     0x15a9, 0x0012,
     "RT2870",
 },
 {
     0x0e55, 0x110b,
     "MS3303H Serial",
 },
 {
     0x114b, 0x0110,
     "UB801R",
 },
 {
     0x114b, 0x0150,
     "RTL8187",
 },
 {
     0x14b0, 0x3410,
     "ICUSB2321X/2X/4X",
 },
 {
     0x0483, 0x2016,
     "Biometric Coprocessor",
 },
 {
     0x0483, 0x7554,
     "Communicator",
 },
 {
     0x0742, 0x4001,
     "ISDN TA+USBA",
 },
 {
     0x1774, 0x1001,
     "USBRH sensor",
 },
 {
     0x07ef, 0x0001,
     "Internet Access Device",
 },
 {
     0x079c, 0x0003,
     "Mobile Adaptor",
 },
 {
     0x05db, 0x0003,
     "U-Cable type D2",
 },
 {
     0x05db, 0x0005,
     "U-Cable type P1",
 },
 {
     0x05db, 0x0009,
     "Slipper U",
 },
 {
     0x05db, 0x000a,
     "Ir-Trinity",
 },
 {
     0x05db, 0x000b,
     "U-Cable type A3",
 },
 {
     0x05db, 0x0011,
     "U-Cable type A4",
 },
 {
     0x14cd, 0x6600,
     "SuperTop IDE Bridge",
 },
 {
     0x086e, 0x1920,
     "SGC-X2UL",
 },
 {
     0x045a, 0x07da,
     "Supra Express 56K",
 },
 {
     0x045a, 0x0b4a,
     "SupraMax 2890 56K",
 },
 {
     0x045a, 0x5001,
     "Rio 600",
 },
 {
     0x045a, 0x5002,
     "Rio 800",
 },
 {
     0x045a, 0x5003,
     "Nike psa[play 120",
 },
 {
     0x1189, 0x0893,
     "EP-1427X-2 Ethernet",
 },
 {
     0x0769, 0x11f2,
     "EP-9001-G rev 2A",
 },
 {
     0x0769, 0x11f3,
     "RT2570",
 },
 {
     0x0769, 0x31f3,
     "RT2573",
 },
 {
     0x0731, 0x0528,
     "Ericsson DCU-10/11",
 },
 {
     0x177f, 0x0153,
     "LW153",
 },
 {
     0x177f, 0x0154,
     "LW154",
 },
 {
     0x177f, 0x0302,
     "LW303",
 },
 {
     0x177f, 0x0313,
     "LW313",
 },
 {
     0x5173, 0x1809,
     "ZD1211",
 },
 {
     0x0745, 0x0001,
     "Serial",
 },
 {
     0x0745, 0x1000,
     "CipherLab Barcode Scanner",
 },
 {
     0x1bbb, 0x0000,
     "Modem mode",
 },
 {
     0x1bbb, 0x0017,
     "Modem mode",
 },
 {
     0x1bbb, 0x011e,
     "Modem mode",
 },
 {
     0x1bbb, 0xf000,
     "Storage mode",
 },
 {
     0x1bbb, 0xf017,
     "Storage mode",
 },
 {
     0x0d3d, 0x0001,
     "USBPS2",
 },
 {
     0x0436, 0x0005,
     "CameraMate (DPCM_USB)",
 },
 {
     0x12ef, 0x0100,
     "Zodiac",
 },
 {
     0x04bf, 0x0115,
     "USB-PDC Adapter UPA9664",
 },
 {
     0x04bf, 0x0116,
     "USB-cdmaOne Adapter UCA1464",
 },
 {
     0x04bf, 0x0117,
     "USB-PHS Adapter UHA6400",
 },
 {
     0x04bf, 0x0118,
     "USB-PHS Adapter UPA6400",
 },
 {
     0x04bf, 0x0309,
     "Bluetooth",
 },
 {
     0x0644, 0x0000,
     "FD-05PUB",
 },
 {
     0x0b3b, 0x1601,
     "ALLNET 0193 WLAN",
 },
 {
     0x0b3b, 0x1602,
     "ZyXEL ZyAIR B200 WLAN",
 },
 {
     0x0b3b, 0x1612,
     "U-300C",
 },
 {
     0x0b3b, 0x1630,
     "QuickWLAN",
 },
 {
     0x0b3b, 0x5630,
     "ZD1211",
 },
 {
     0x0b3b, 0x6630,
     "ZD1211",
 },
 {
     0x0562, 0x0001,
     "Microphone",
 },
 {
     0x1286, 0x1fab,
     "TWL541U WLAN",
 },
 {
     0x1130, 0x0202,
     "Missile Launcher",
 },
 {
     0x1130, 0x660c,
     "TEMPer sensor",
 },
 {
     0x0ccd, 0x0077,
     "Aureon Dual USB",
 },
 {
     0x0a81, 0x0701,
     "Missile Launcher",
 },
 {
     0x1131, 0x1001,
     "KY-BT100 Bluetooth",
 },
 {
     0x128d, 0x0001,
     "175/177 USB interface",
 },
 {
     0x128d, 0x0002,
     "330 USB interface",
 },
 {
     0x128d, 0x0003,
     "435/635/735 USB interface",
 },
 {
     0x128d, 0x0004,
     "845 USB interface",
 },
 {
     0x128d, 0x0005,
     "Service adapter",
 },
 {
     0x128d, 0x0006,
     "580 USB interface",
 },
 {
     0x128d, 0x0007,
     "174 USB interface",
 },
 {
     0x128d, 0x0009,
     "556/560 USB interface",
 },
 {
     0x128d, 0x000a,
     "USB adapter",
 },
 {
     0x128d, 0xf001,
     "USB to serial converter",
 },
 {
     0x0451, 0x1446,
     "UT-USB41 hub",
 },
 {
     0x0451, 0x2046,
     "TUSB2046 hub",
 },
 {
     0x0451, 0x3410,
     "TUSB3410",
 },
 {
     0x0451, 0x5409,
     "Nex II Digital",
 },
 {
     0x0451, 0xf430,
     "MSP-FET430UIF JTAG",
 },
 {
     0x0451, 0xf432,
     "MSP-FET430UIF",
 },
 {
     0x044f, 0xa0a3,
     "Fusion Digital Gamepad",
 },
 {
     0x103e, 0x03e8,
     "QL355P power supply",
 },
 {
     0x1b91, 0x0064,
     "Serial",
 },
 {
     0x0b0c, 0x0002,
     "Argos Mini Smartcard",
 },
 {
     0x1b67, 0x0001,
     "Toradex OAK RH sensor",
 },
 {
     0x1b67, 0x0002,
     "Toradex OAK P sensor",
 },
 {
     0x1b67, 0x0003,
     "Toradex OAK LUX sensor",
 },
 {
     0x1b67, 0x0004,
     "Toradex OAK Tilt sensor",
 },
 {
     0x1b67, 0x0005,
     "Toradex OAK DIST sensor",
 },
 {
     0x1b67, 0x0006,
     "Toradex OAK MOVE sensor",
 },
 {
     0x1b67, 0x0009,
     "Toradex OAK 4-20mA sensor",
 },
 {
     0x1b67, 0x000a,
     "Toradex OAK G sensor",
 },
 {
     0x1b67, 0x000b,
     "Toradex OAK MAGR sensor",
 },
 {
     0x1b67, 0x000d,
     "Toradex OAK RELAY",
 },
 {
     0x1b67, 0x000e,
     "Toradex OAK 10V sensor",
 },
 {
     0x1b67, 0x000f,
     "Toradex OAK LN sensor",
 },
 {
     0x1b67, 0x0010,
     "Toradex OAK IO",
 },
 {
     0x1b67, 0x0015,
     "Toradex ORIENT Tilt sensor",
 },
 {
     0x0930, 0x0a07,
     "RT3070",
 },
 {
     0x0930, 0x1302,
     "HSDPA",
 },
 {
     0x2357, 0x0100,
     "RTL8192CU",
 },
 {
     0x2357, 0x0101,
     "RTL8812AU",
 },
 {
     0x2357, 0x010C,
     "RTL8188EUS",
 },
 {
     0x0a16, 0x1111,
     "ThumbDrive",
 },
 {
     0x0a16, 0x9988,
     "ThumbDrive 8MB",
 },
 {
     0x20f4, 0x624d,
     "RTL8192CU",
 },
 {
     0x20f4, 0x648b,
     "RTL8188CU",
 },
 {
     0x2478, 0x2008,
     "U209 Serial",
 },
 {
     0x090a, 0x1003,
     "USB/MP3 decoder",
 },
 {
     0x090a, 0x1100,
     "XXX 1100",
 },
 {
     0x15d9, 0x0a33,
     "Optical Mouse",
 },
 {
     0x15d9, 0x0a37,
     "Mouse",
 },
 {
     0x1241, 0x1111,
     "SM-2000",
 },
 {
     0x126f, 0xa006,
     "G240",
 },
 {
     0x1546, 0x01a4,
     "ANTARIS4 GPS",
 },
 {
     0x157e, 0x3006,
     "TEW-444UB EU",
 },
 {
     0x157e, 0x3007,
     "TEW-444UB EU",
 },
 {
     0x157e, 0x300a,
     "TEW-429UB_A",
 },
 {
     0x157e, 0x300b,
     "TEW-429UB",
 },
 {
     0x157e, 0x300d,
     "TEW-429UB C1",
 },
 {
     0x157e, 0x300e,
     "RT2870",
 },
 {
     0x157e, 0x3013,
     "TEW-645UB",
 },
 {
     0x157e, 0x3204,
     "ALL0298 v2",
 },
 {
     0x157e, 0x3205,
     "AR5523",
 },
 {
     0x157e, 0x3206,
     "AR5523",
 },
 {
     0x05d8, 0x4002,
     "1200 UB Plus",
 },
 {
     0x1606, 0x0002,
     "Astra 1236U",
 },
 {
     0x1606, 0x0010,
     "Astra 1220U",
 },
 {
     0x1606, 0x0030,
     "Astra 2000U",
 },
 {
     0x1606, 0x0130,
     "Astra 2100U",
 },
 {
     0x1606, 0x0230,
     "Astra 2200U",
 },
 {
     0x1606, 0x0060,
     "Astra 3400",
 },
 {
     0x0540, 0x0101,
     "Panache Surf ISDN",
 },
 {
     0x0105, 0x0105,
     "ZD1211B",
 },
 {
     0x0105, 0x145f,
     "NW-3100",
 },
 {
     0x1233, 0x1233,
     "ZD1211B",
 },
 {
     0x0fe6, 0x8101,
     "DM9601",
 },
 {
     0x0fe6, 0x9700,
     "RD9700",
 },
 {
     0x0dcd, 0x0001,
     "NF RIC",
 },
 {
     0x01e1, 0x9601,
     "DM9601",
 },
 {
     0x0baf, 0x00eb,
     "USR1120 WLAN",
 },
 {
     0x0baf, 0x00f1,
     "USR9000 SureConnect ADSL",
 },
 {
     0x0baf, 0x00f2,
     "USR9000 SureConnect ADSL",
 },
 {
     0x0baf, 0x00f5,
     "USR9000 SureConnect ADSL",
 },
 {
     0x0baf, 0x00f6,
     "USR9000 SureConnect ADSL",
 },
 {
     0x0baf, 0x00f7,
     "USR9000 SureConnect ADSL",
 },
 {
     0x0baf, 0x00f8,
     "USR9000 SureConnect ADSL",
 },
 {
     0x0baf, 0x00f9,
     "USR9000 SureConnect ADSL",
 },
 {
     0x0baf, 0x00fa,
     "USR9000 SureConnect ADSL",
 },
 {
     0x0baf, 0x0118,
     "USR5422 WLAN",
 },
 {
     0x0baf, 0x011b,
     "USR5421A WLAN",
 },
 {
     0x0baf, 0x0121,
     "USR5423 WLAN",
 },
 {
     0x10ab, 0x10c5,
     "MC60 Serial",
 },
 {
     0x138a, 0x0001,
     "VFS101 Fingerprint Reader",
 },
 {
     0x138a, 0x0005,
     "VFS301 Fingerprint Reader",
 },
 {
     0x138a, 0x0007,
     "VFS451 Fingerprint Reader",
 },
 {
     0x138a, 0x0008,
     "VFS300 Fingerprint Reader",
 },
 {
     0x138a, 0x0011,
     "VFS5011 Fingerprint Reader",
 },
 {
     0x138a, 0x0017,
     "VFS5011 Fingerprint Reader",
 },
 {
     0x138a, 0x0018,
     "VFS5011 Fingerprint Reader",
 },
 {
     0x138a, 0x003c,
     "VFS471 Fingerprint Reader",
 },
 {
     0x16c0, 0x09b0,
     "Lunatico Seletek",
 },
 {
     0x16c0, 0x09b1,
     "Lunatico Seletek",
 },
 {
     0x10cf, 0x5500,
     "K8055 USB Experiment interface board",
 },
 {
     0x1fe7, 0x0100,
     "VW110L",
 },
 {
     0x040d, 0x3801,
     "AR9271",
 },
 {
     0x0543, 0x00fe,
     "G773 Monitor Hub",
 },
 {
     0x0543, 0x00ff,
     "P815 Monitor Hub",
 },
 {
     0x0543, 0x0f01,
     "Airsync",
 },
 {
     0x0543, 0x4153,
     "G773 Monitor Control",
 },
 {
     0x0553, 0x0002,
     "CPiA Camera",
 },
 {
     0x04a7, 0x0211,
     "OneTouch 7600",
 },
 {
     0x04a7, 0x0221,
     "OneTouch 5300",
 },
 {
     0x04a7, 0x0224,
     "Scanport 3000",
 },
 {
     0x04a7, 0x0231,
     "OneTouch 6100",
 },
 {
     0x04a7, 0x0311,
     "OneTouch 6200",
 },
 {
     0x04a7, 0x0321,
     "OneTouch 8100",
 },
 {
     0x04a7, 0x0331,
     "OneTouch 8600",
 },
 {
     0x0636, 0x0003,
     "DSC350",
 },
 {
     0x0f88, 0x3012,
     "RT2570",
 },
 {
     0x0f88, 0x3014,
     "ZD1211B",
 },
 {
     0x0af0, 0x5000,
     "Vodafone Mobile Connect 3G",
 },
 {
     0x0af0, 0x6000,
     "GlobeTrotter 3G FUSION",
 },
 {
     0x0af0, 0x6300,
     "GlobeTrotter 3G QUAD",
 },
 {
     0x0af0, 0x6600,
     "GlobeTrotter 3G QUAD PLUS",
 },
 {
     0x0af0, 0x6701,
     "GlobeTrotter MAX 3.6/7.2",
 },
 {
     0x0af0, 0x6721,
     "GlobeTrotter 3G PLUS",
 },
 {
     0x0af0, 0x6901,
     "GlobeTrotter HSDPA Modem",
 },
 {
     0x0af0, 0x6911,
     "GlobeSurfer iCON 7.2",
 },
 {
     0x0af0, 0x6971,
     "iCON 225",
 },
 {
     0x0af0, 0x7211,
     "GlobeTrotter HSUPA 380E",
 },
 {
     0x0af0, 0xd033,
     "iCON 322",
 },
 {
     0x0af0, 0xd055,
     "iCON 505",
 },
 {
     0x1843, 0x0200,
     "USB instrument cable",
 },
 {
     0x4348, 0x5523,
     "CH341 serial/parallel",
 },
 {
     0x1a86, 0x5523,
     "CH341A serial/parallel",
 },
 {
     0x1a86, 0x7523,
     "CH340 serial/parallel",
 },
 {
     0x056a, 0x0000,
     "CT-0405-U Tablet",
 },
 {
     0x056a, 0x0010,
     "Graphire",
 },
 {
     0x056a, 0x0013,
     "Graphire3 4x5",
 },
 {
     0x056a, 0x0015,
     "Graphire4 Classic A6",
 },
 {
     0x056a, 0x0021,
     "Intuos A5",
 },
 {
     0x056a, 0x033b,
     "Intuos Draw (CTL-490)",
 },
 {
     0x1be3, 0x07a6,
     "Service Cable 750-923",
 },
 {
     0x17f4, 0xaaaa,
     "Jazz blood glucose meter",
 },
 {
     0x2405, 0x0003,
     "RIGblaster",
 },
 {
     0x16dc, 0x0010,
     "PL512 PSU",
 },
 {
     0x16dc, 0x0011,
     "RCM Remote Control",
 },
 {
     0x16dc, 0x0012,
     "MPOD PSU",
 },
 {
     0x16dc, 0x0015,
     "CML Data Logger",
 },
 {
     0x1435, 0x0326,
     "WNC-0600USB",
 },
 {
     0x1435, 0x0427,
     "PrismGT USB 2.0 WLAN",
 },
 {
     0x1435, 0x0711,
     "UR055G",
 },
 {
     0x1435, 0x0804,
     "ORiNOCO 802.11n",
 },
 {
     0x1435, 0x0826,
     "AR5523",
 },
 {
     0x1435, 0x0827,
     "AR5523",
 },
 {
     0x1435, 0x082a,
     "AR5523",
 },
 {
     0x1435, 0x0829,
     "AR5523",
 },
 {
     0x0f14, 0x0005,
     "Ximax CDC",
 },
 {
     0x0545, 0x800d,
     "Imaging Device",
 },
 {
     0x0545, 0x8080,
     "IBM PC Camera",
 },
 {
     0x0572, 0x2000,
     "PrismGT USB 2.0 WLAN",
 },
 {
     0x0572, 0x2002,
     "PrismGT USB 2.0 WLAN",
 },
 {
     0x05ad, 0x0fba,
     "PL2303 Serial",
 },
 {
     0x057b, 0x0000,
     "Flashbuster-U",
 },
 {
     0x0499, 0x1509,
     "UR22",
 },
 {
     0x0499, 0x1000,
     "UX256 MIDI I/F",
 },
 {
     0x0499, 0x1008,
     "UX96 MIDI I/F",
 },
 {
     0x0499, 0x3104,
     "RP-U200",
 },
 {
     0x0499, 0x4000,
     "NetVolante RTA54i",
 },
 {
     0x0499, 0x4001,
     "NetVolante RTW65b",
 },
 {
     0x0499, 0x4002,
     "NetVolante RTW65i",
 },
 {
     0x0499, 0x4004,
     "NetVolante RTA55i",
 },
 {
     0x094f, 0x0101,
     "U640MO-03",
 },
 {
     0x1050, 0x0010,
     "Yubikey",
 },
 {
     0x0cde, 0x0001,
     "M4Y-750",
 },
 {
     0x0cde, 0x0002,
     "XI-725/726",
 },
 {
     0x0cde, 0x0005,
     "XI-735",
 },
 {
     0x0cde, 0x0006,
     "MD40900",
 },
 {
     0x0cde, 0x0008,
     "PrismGT USB 2.0 WLAN",
 },
 {
     0x0cde, 0x0011,
     "ZD1211",
 },
 {
     0x0cde, 0x0012,
     "AR5523",
 },
 {
     0x0cde, 0x0013,
     "AR5523",
 },
 {
     0x0cde, 0x001a,
     "ZD1211B",
 },
 {
     0x0cde, 0x0022,
     "RT2870",
 },
 {
     0x0cde, 0x0023,
     "UB81",
 },
 {
     0x0cde, 0x0025,
     "RT2870",
 },
 {
     0x0cde, 0x0026,
     "UB82",
 },
 {
     0x5a57, 0x0260,
     "RT2570",
 },
 {
     0x5a57, 0x0280,
     "RT2870",
 },
 {
     0x5a57, 0x0282,
     "RT2870",
 },
 {
     0x5a57, 0x0283,
     "RT3072",
 },
 {
     0x5a57, 0x0284,
     "RT3072",
 },
 {
     0x5a57, 0x5257,
     "RT3070",
 },
 {
     0x0803, 0x9700,
     "2986L Fax Modem",
 },
 {
     0x0ace, 0x1201,
     "ZD1201",
 },
 {
     0x0ace, 0x1211,
     "ZD1211",
 },
 {
     0x0ace, 0x1215,
     "ZD1211B",
 },
 {
     0x0ace, 0x1221,
     "ZD1221",
 },
 {
     0x0ace, 0xa211,
     "ALL0298",
 },
 {
     0x0ace, 0xb215,
     "ZD1211B",
 },
 {
     0x0586, 0x1500,
     "Omni 56K Plus",
 },
 {
     0x0586, 0x2011,
     "Scorpion-980N",
 },
 {
     0x0586, 0x3401,
     "G-220",
 },
 {
     0x0586, 0x3402,
     "G-220F",
 },
 {
     0x0586, 0x3407,
     "G-200 v2",
 },
 {
     0x0586, 0x3409,
     "AG-225H",
 },
 {
     0x0586, 0x340a,
     "M-202",
 },
 {
     0x0586, 0x340c,
     "G-270S",
 },
 {
     0x0586, 0x340f,
     "G-220 v2",
 },
 {
     0x0586, 0x3410,
     "G-202",
 },
 {
     0x0586, 0x3412,
     "AG-220",
 },
 {
     0x0586, 0x3413,
     "AG-225H v2",
 },
 {
     0x0586, 0x3415,
     "RT2573",
 },
 {
     0x0586, 0x3416,
     "RT2870",
 },
 {
     0x0586, 0x3417,
     "NWD-271N",
 },
 {
     0x0586, 0x3418,
     "NWD-211AN",
 },
 {
     0x0586, 0x341a,
     "RT2870",
 },
 {
     0x0586, 0x341e,
     "NWD2105",
 },
 {
     0x0586, 0x341f,
     "RTL8192CU",
 },
 {
     0x0586, 0x343e,
     "RT3070",
 },
 {
     0x0586, 0x401a,
     "Prestige",
 },
 { 0, 0, ((void *)0) }
};
const struct usb_known_vendor usb_known_vendors[] = {
 {
     0x0053,
     "Planex Communications",
 },
 {
     0x0105,
     "Unknown vendor",
 },
 {
     0x0123,
     "eGalax",
 },
 {
     0x01e1,
     "Unknown vendor",
 },
 {
     0x02ad,
     "HUMAX",
 },
 {
     0x03da,
     "Bernd Walter Computer Technology",
 },
 {
     0x03e8,
     "AOX",
 },
 {
     0x03eb,
     "Atmel",
 },
 {
     0x03ee,
     "Mitsumi",
 },
 {
     0x03f0,
     "Hewlett Packard",
 },
 {
     0x03f3,
     "Adaptec",
 },
 {
     0x0400,
     "National Semiconductor",
 },
 {
     0x0402,
     "Acer Labs",
 },
 {
     0x0403,
     "Future Technology Devices",
 },
 {
     0x0408,
     "Quanta",
 },
 {
     0x0409,
     "NEC",
 },
 {
     0x040a,
     "Eastman Kodak",
 },
 {
     0x040d,
     "VIA",
 },
 {
     0x0411,
     "Melco",
 },
 {
     0x0413,
     "Leadtek",
 },
 {
     0x041e,
     "Creative Labs",
 },
 {
     0x0421,
     "Nokia",
 },
 {
     0x0422,
     "ADI Systems",
 },
 {
     0x0423,
     "Computer Access Technology",
 },
 {
     0x0424,
     "Standard Microsystems",
 },
 {
     0x0428,
     "Advanced Gravis Computer",
 },
 {
     0x0430,
     "Fujitsu Component",
 },
 {
     0x0436,
     "Taugagreining HF",
 },
 {
     0x0438,
     "Advanced Micro Devices",
 },
 {
     0x043d,
     "Lexmark International",
 },
 {
     0x0440,
     "NANAO",
 },
 {
     0x044e,
     "Alps Electric",
 },
 {
     0x044f,
     "Thrustmaster",
 },
 {
     0x0451,
     "Texas Instruments",
 },
 {
     0x0456,
     "Analog Devices",
 },
 {
     0x0457,
     "Silicon Integrated Systems Corp.",
 },
 {
     0x0458,
     "KYE Systems",
 },
 {
     0x045a,
     "Diamond (Supra)",
 },
 {
     0x045b,
     "Renesas",
 },
 {
     0x045e,
     "Microsoft",
 },
 {
     0x0461,
     "Primax Electronics",
 },
 {
     0x0463,
     "Eaton (MGE)",
 },
 {
     0x0464,
     "AMP",
 },
 {
     0x046a,
     "Cherry Mikroschalter",
 },
 {
     0x046b,
     "American Megatrends",
 },
 {
     0x046d,
     "Logitech",
 },
 {
     0x046e,
     "Behavior Tech. Computer",
 },
 {
     0x0471,
     "Philips",
 },
 {
     0x0474,
     "Sanyo Electric",
 },
 {
     0x0478,
     "Connectix",
 },
 {
     0x047c,
     "Dell",
 },
 {
     0x047d,
     "Kensington",
 },
 {
     0x047e,
     "Lucent",
 },
 {
     0x047f,
     "Plantronics",
 },
 {
     0x0482,
     "Kyocera",
 },
 {
     0x0483,
     "STMicroelectronics",
 },
 {
     0x0489,
     "Foxconn",
 },
 {
     0x0499,
     "YAMAHA",
 },
 {
     0x049f,
     "Compaq",
 },
 {
     0x04a4,
     "Hitachi",
 },
 {
     0x04a5,
     "Acer Peripherals",
 },
 {
     0x04a6,
     "Davicom",
 },
 {
     0x04a7,
     "Visioneer",
 },
 {
     0x04a9,
     "Canon",
 },
 {
     0x04b0,
     "Nikon",
 },
 {
     0x04b3,
     "IBM",
 },
 {
     0x04b4,
     "Cypress Semiconductor",
 },
 {
     0x04b8,
     "Seiko Epson",
 },
 {
     0x04b9,
     "Rainbow Technologies",
 },
 {
     0x04bb,
     "I/O Data",
 },
 {
     0x04bf,
     "TDK",
 },
 {
     0x04c1,
     "U.S. Robotics",
 },
 {
     0x04c2,
     "Methode Electronics Far East",
 },
 {
     0x04c3,
     "Maxi Switch",
 },
 {
     0x04c4,
     "Lockheed Martin Energy Research",
 },
 {
     0x04c5,
     "Fujitsu",
 },
 {
     0x04c6,
     "Toshiba America",
 },
 {
     0x04c7,
     "Micro Macro Technologies",
 },
 {
     0x04c8,
     "Konica",
 },
 {
     0x04ca,
     "Lite-On Technology",
 },
 {
     0x04cb,
     "Fuji Photo Film",
 },
 {
     0x04cc,
     "Philips Semiconductors",
 },
 {
     0x04cd,
     "Tatung Co. Of America",
 },
 {
     0x04ce,
     "ScanLogic",
 },
 {
     0x04cf,
     "Myson Technology",
 },
 {
     0x04d0,
     "Digi",
 },
 {
     0x04d1,
     "ITT Canon",
 },
 {
     0x04d2,
     "Altec Lansing",
 },
 {
     0x04d8,
     "Ituner",
 },
 {
     0x04d9,
     "Holtek",
 },
 {
     0x04da,
     "Panasonic (Matsushita)",
 },
 {
     0x04dd,
     "Sharp",
 },
 {
     0x04e1,
     "Iiyama",
 },
 {
     0x04e6,
     "Shuttle Technology",
 },
 {
     0x04e8,
     "Samsung Electronics",
 },
 {
     0x04ed,
     "Annabooks",
 },
 {
     0x04f1,
     "JVC",
 },
 {
     0x04f2,
     "Chicony Electronics",
 },
 {
     0x04f3,
     "Elan",
 },
 {
     0x04f9,
     "Brother Industries",
 },
 {
     0x04fa,
     "Dallas Semiconductor",
 },
 {
     0x0502,
     "Acer",
 },
 {
     0x0506,
     "3Com",
 },
 {
     0x0509,
     "Aztech Systems",
 },
 {
     0x050d,
     "Belkin Components",
 },
 {
     0x050f,
     "Kawatsu Semiconductor",
 },
 {
     0x051d,
     "American Power Conversion",
 },
 {
     0x0522,
     "Advanced Connectek USA",
 },
 {
     0x0525,
     "NetChip Technology",
 },
 {
     0x0527,
     "ALTRA",
 },
 {
     0x0528,
     "ATI Technologies",
 },
 {
     0x0529,
     "Aladdin Knowledge Systems",
 },
 {
     0x0540,
     "Universal Access",
 },
 {
     0x0543,
     "ViewSonic",
 },
 {
     0x0545,
     "Xirlink",
 },
 {
     0x0547,
     "Anchor Chips",
 },
 {
     0x054c,
     "Sony",
 },
 {
     0x0553,
     "VLSI Vision",
 },
 {
     0x0556,
     "Asahi Kasei Microsystems",
 },
 {
     0x0557,
     "ATEN International",
 },
 {
     0x055d,
     "Samsung",
 },
 {
     0x055f,
     "Mustek Systems",
 },
 {
     0x0665,
     "Mustek Systems",
 },
 {
     0x0562,
     "Telex Communications",
 },
 {
     0x0565,
     "Peracom Networks",
 },
 {
     0x0566,
     "Alcor Micro",
 },
 {
     0x056a,
     "WACOM",
 },
 {
     0x056c,
     "e-TEK Labs",
 },
 {
     0x056d,
     "EIZO",
 },
 {
     0x056e,
     "Elecom",
 },
 {
     0x0572,
     "Xyratex",
 },
 {
     0x0573,
     "Hauppauge Computer Works",
 },
 {
     0x0576,
     "BAFO/Quality Computer Accessories",
 },
 {
     0x057b,
     "Y-E Data",
 },
 {
     0x057c,
     "AVM",
 },
 {
     0x057f,
     "Quickshot",
 },
 {
     0x0582,
     "Roland",
 },
 {
     0x0583,
     "Rockfire",
 },
 {
     0x0584,
     "RATOC Systems",
 },
 {
     0x0586,
     "ZyXEL Communication",
 },
 {
     0x058f,
     "Alcor Micro",
 },
 {
     0x0590,
     "OMRON Corporation",
 },
 {
     0x059b,
     "Iomega",
 },
 {
     0x059c,
     "A-Trend Technology",
 },
 {
     0x059d,
     "Advanced Input Devices",
 },
 {
     0x059f,
     "LaCie",
 },
 {
     0x05a4,
     "Thrustmaster",
 },
 {
     0x05a6,
     "Cisco-Linksys",
 },
 {
     0x05a9,
     "OmniVision",
 },
 {
     0x05af,
     "Jing Mold",
 },
 {
     0x05ab,
     "In-System Design",
 },
 {
     0x05ac,
     "Apple Computer",
 },
 {
     0x05ad,
     "Y.C. Cable",
 },
 {
     0x05c5,
     "Digi International",
 },
 {
     0x05c6,
     "Qualcomm",
 },
 {
     0x05c7,
     "Qtronix",
 },
 {
     0x05ca,
     "Ricoh",
 },
 {
     0x05cc,
     "ELSA",
 },
 {
     0x05d1,
     "Brainboxes",
 },
 {
     0x05d8,
     "Ultima",
 },
 {
     0x05d9,
     "Axiohm Transaction Solutions",
 },
 {
     0x05da,
     "Microtek",
 },
 {
     0x05db,
     "SUN Corporation",
 },
 {
     0x05dc,
     "Lexar Media",
 },
 {
     0x05dd,
     "Addtron",
 },
 {
     0x05e0,
     "Symbol Technologies",
 },
 {
     0x05e3,
     "Genesys Logic",
 },
 {
     0x05e5,
     "Fuji Electric",
 },
 {
     0x05e6,
     "Keithley Instruments",
 },
 {
     0x05e7,
     "EIZO Nanao",
 },
 {
     0x05e9,
     "Kawasaki LSI",
 },
 {
     0x05eb,
     "FFC",
 },
 {
     0x05ef,
     "Anko Electronic",
 },
 {
     0x05f3,
     "P.I. Engineering",
 },
 {
     0x05f6,
     "AOC International",
 },
 {
     0x05fe,
     "Chic Technology",
 },
 {
     0x0600,
     "Barco Display Systems",
 },
 {
     0x0607,
     "Bridge Information",
 },
 {
     0x060b,
     "Solid Year",
 },
 {
     0x0614,
     "Bio-Rad Laboratories",
 },
 {
     0x0618,
     "Macally",
 },
 {
     0x061c,
     "Act Labs",
 },
 {
     0x0620,
     "Alaris",
 },
 {
     0x0624,
     "Apex",
 },
 {
     0x0636,
     "Vivitar",
 },
 {
     0x0637,
     "Gunze Electronics USA",
 },
 {
     0x0638,
     "Avision",
 },
 {
     0x0644,
     "TEAC",
 },
 {
     0x065e,
     "Silicon Graphics",
 },
 {
     0x0663,
     "Sanwa Supply",
 },
 {
     0x066b,
     "Linksys",
 },
 {
     0x066e,
     "Acer Semiconductor America",
 },
 {
     0x066f,
     "Sigmatel",
 },
 {
     0x0675,
     "DrayTek",
 },
 {
     0x0677,
     "Aiwa",
 },
 {
     0x0678,
     "ACARD Technology",
 },
 {
     0x067b,
     "Prolific Technology",
 },
 {
     0x067c,
     "Siemens",
 },
 {
     0x0680,
     "Avance Logic",
 },
 {
     0x0681,
     "Siemens",
 },
 {
     0x0686,
     "Minolta",
 },
 {
     0x068e,
     "CH Products",
 },
 {
     0x0693,
     "Hagiwara Sys-Com",
 },
 {
     0x0698,
     "Chuntex",
 },
 {
     0x069a,
     "Askey Computer",
 },
 {
     0x06a3,
     "Saitek",
 },
 {
     0x06b9,
     "Alcatel Telecom",
 },
 {
     0x06bd,
     "AGFA-Gevaert",
 },
 {
     0x06be,
     "Asia Microelectronic Development",
 },
 {
     0x06c2,
     "Phidgets",
 },
 {
     0x06c4,
     "Bizlink International",
 },
 {
     0x06cd,
     "Keyspan",
 },
 {
     0x06da,
     "Liebert",
 },
 {
     0x06d6,
     "Aashima Technology",
 },
 {
     0x06e0,
     "MultiTech",
 },
 {
     0x06e1,
     "ADS Technologies",
 },
 {
     0x06e4,
     "Alcatel Microelectronics",
 },
 {
     0x06ea,
     "Sirius Technologies",
 },
 {
     0x06f8,
     "Guillemot",
 },
 {
     0x06fd,
     "Boston Acoustics",
 },
 {
     0x0707,
     "Standard Microsystems",
 },
 {
     0x0708,
     "Putercom",
 },
 {
     0x0711,
     "MCT",
 },
 {
     0x0718,
     "Imation",
 },
 {
     0x071b,
     "Domain Technologies, Inc.",
 },
 {
     0x0731,
     "Susteen",
 },
 {
     0x0734,
     "Eicon Networks",
 },
 {
     0x0742,
     "Stollmann",
 },
 {
     0x0745,
     "Syntech Information",
 },
 {
     0x074e,
     "Digital Stream",
 },
 {
     0x0755,
     "Aureal Semiconductor",
 },
 {
     0x075d,
     "iDowell",
 },
 {
     0x0763,
     "Midiman",
 },
 {
     0x0764,
     "CyberPower",
 },
 {
     0x0769,
     "Surecom Technology",
 },
 {
     0x077b,
     "Linksys",
 },
 {
     0x077d,
     "Griffin Technology",
 },
 {
     0x0781,
     "SanDisk",
 },
 {
     0x0784,
     "Jenoptik",
 },
 {
     0x0789,
     "Logitec",
 },
 {
     0x078b,
     "Nokia",
 },
 {
     0x078e,
     "Brimax",
 },
 {
     0x0792,
     "Axis Communications",
 },
 {
     0x0794,
     "ABL Electronics",
 },
 {
     0x079b,
     "Sagem",
 },
 {
     0x079c,
     "Sun Communications",
 },
 {
     0x079d,
     "Alfadata Computer",
 },
 {
     0x07a2,
     "National Technical Systems",
 },
 {
     0x07a3,
     "Onnto",
 },
 {
     0x07a4,
     "Be",
 },
 {
     0x07a6,
     "ADMtek",
 },
 {
     0x07aa,
     "Corega",
 },
 {
     0x07ab,
     "Freecom",
 },
 {
     0x07af,
     "Microtech",
 },
 {
     0x07b2,
     "Motorola",
 },
 {
     0x07b4,
     "Olympus",
 },
 {
     0x07b8,
     "AboCom Systems",
 },
 {
     0x07c1,
     "Keisokugiken",
 },
 {
     0x07c4,
     "OnSpec",
 },
 {
     0x07c5,
     "APG Cash Drawer",
 },
 {
     0x07c8,
     "B.U.G.",
 },
 {
     0x07c9,
     "Allied Telesyn International",
 },
 {
     0x07ca,
     "AVerMedia Technologies",
 },
 {
     0x07cc,
     "SIIG",
 },
 {
     0x07cf,
     "CASIO",
 },
 {
     0x07d1,
     "D-Link",
 },
 {
     0x07d2,
     "Aptio Products",
 },
 {
     0x07da,
     "Arasan Chip Systems",
 },
 {
     0x07e6,
     "Allied Cable",
 },
 {
     0x07ef,
     "STSN",
 },
 {
     0x07fa,
     "Bewan",
 },
 {
     0x0803,
     "Zoom Telephonics",
 },
 {
     0x0827,
     "BroadLogic",
 },
 {
     0x082d,
     "Handspring",
 },
 {
     0x0835,
     "Action Star Enterprise",
 },
 {
     0x0830,
     "Palm Computing",
 },
 {
     0x0833,
     "SOURCENEXT",
 },
 {
     0x083a,
     "Accton Technology",
 },
 {
     0x0841,
     "Diamond",
 },
 {
     0x0846,
     "BayNETGEAR",
 },
 {
     0x0853,
     "Topre Corporation",
 },
 {
     0x0854,
     "ActiveWire",
 },
 {
     0x0856,
     "B&B Electronics",
 },
 {
     0x085a,
     "PortGear",
 },
 {
     0x0864,
     "Netgear",
 },
 {
     0x086e,
     "System Talks",
 },
 {
     0x0870,
     "Metricom",
 },
 {
     0x087c,
     "ADESSO/Kbtek America",
 },
 {
     0x087d,
     "Jaton",
 },
 {
     0x0880,
     "APT Technologies",
 },
 {
     0x0885,
     "Boca Research",
 },
 {
     0x08a8,
     "Andrea Electronics",
 },
 {
     0x08bb,
     "Burr-Brown Japan",
 },
 {
     0x08c8,
     "2Wire",
 },
 {
     0x08ca,
     "AIPTEK International",
 },
 {
     0x08d1,
     "SmartBridges",
 },
 {
     0x08dd,
     "Billionton Systems",
 },
 {
     0x08e6,
     "GEMPLUS",
 },
 {
     0x08e9,
     "Extended Systems",
 },
 {
     0x08ec,
     "M-Systems",
 },
 {
     0x08fd,
     "Digianswer",
 },
 {
     0x08ff,
     "AuthenTec",
 },
 {
     0x0908,
     "Siemens",
 },
 {
     0x0909,
     "Audio-Technica",
 },
 {
     0x090a,
     "Trumpion Microelectronics",
 },
 {
     0x0910,
     "Alation Systems",
 },
 {
     0x0915,
     "Globespan",
 },
 {
     0x0919,
     "Concord Camera",
 },
 {
     0x091e,
     "Garmin International",
 },
 {
     0x0921,
     "GoHubs",
 },
 {
     0x0929,
     "American Biometric Company",
 },
 {
     0x0930,
     "Toshiba Corp",
 },
 {
     0x093c,
     "Intrepid",
 },
 {
     0x094f,
     "Yano",
 },
 {
     0x0951,
     "Kingston Technology",
 },
 {
     0x0956,
     "BlueWater Systems",
 },
 {
     0x0957,
     "Agilent Technologies",
 },
 {
     0x0959,
     "Gude ADS",
 },
 {
     0x095a,
     "Portsmith",
 },
 {
     0x0967,
     "Acer",
 },
 {
     0x0976,
     "Adirondack Wire & Cable",
 },
 {
     0x0978,
     "Beckhoff",
 },
 {
     0x097a,
     "Minds At Work",
 },
 {
     0x09aa,
     "Intersil",
 },
 {
     0x09b3,
     "Altius Solutions",
 },
 {
     0x09c1,
     "Arris Interactive",
 },
 {
     0x09c3,
     "ACTIVCARD",
 },
 {
     0x09c4,
     "ACTiSYS",
 },
 {
     0x09d7,
     "Novatel",
 },
 {
     0x09da,
     "A-FOUR TECH",
 },
 {
     0x09dc,
     "AIMEX",
 },
 {
     0x09df,
     "Addonics Technologies",
 },
 {
     0x09e8,
     "AKAI professional M.I.",
 },
 {
     0x09f5,
     "ARESCOM",
 },
 {
     0x09f9,
     "Bay Associates",
 },
 {
     0x09fb,
     "Altera",
 },
 {
     0x0a12,
     "Cambridge Silicon Radio",
 },
 {
     0x0a16,
     "Trek Technology",
 },
 {
     0x0a17,
     "Asahi Optical",
 },
 {
     0x0a43,
     "Boca Systems",
 },
 {
     0x0a46,
     "ShanTou",
 },
 {
     0x0a47,
     "Hirose",
 },
 {
     0x0a5c,
     "Broadcom",
 },
 {
     0x0a6b,
     "GREENHOUSE",
 },
 {
     0x0a79,
     "Geocast Network Systems",
 },
 {
     0x0a81,
     "Dream Cheeky",
 },
 {
     0x0aba,
     "id Quantique",
 },
 {
     0x0acd,
     "ID TECH",
 },
 {
     0x0ace,
     "ZyDAS Technology",
 },
 {
     0x0ad2,
     "Chen-Source",
 },
 {
     0x0aec,
     "Neodio",
 },
 {
     0x0af0,
     "Option",
 },
 {
     0x0b0c,
     "Todos Data System",
 },
 {
     0x0b05,
     "ASUS",
 },
 {
     0x0b39,
     "Omnidirectional Control Technology",
 },
 {
     0x0b3b,
     "Tekram Technology",
 },
 {
     0x0b41,
     "HAL Corporation",
 },
 {
     0x0b62,
     "NEC",
 },
 {
     0x0b6f,
     "ATI",
 },
 {
     0x0b7e,
     "Kurusugawa Electronics",
 },
 {
     0x0b8c,
     "Smart Technologies",
 },
 {
     0x0b95,
     "ASIX Electronics",
 },
 {
     0x0b97,
     "O2 Micro",
 },
 {
     0x0ba0,
     "System SACOM Industry Co.,Ltd",
 },
 {
     0x0baf,
     "U.S. Robotics",
 },
 {
     0x0bb2,
     "Ambit Microsystems",
 },
 {
     0x0bb4,
     "HTC",
 },
 {
     0x0bda,
     "Realtek",
 },
 {
     0x0bed,
     "MEI",
 },
 {
     0x0bf6,
     "Addonics Technology",
 },
 {
     0x0bf8,
     "Fujitsu Siemens Computers",
 },
 {
     0x0c08,
     "Agate Technologies",
 },
 {
     0x0c0b,
     "DMI",
 },
 {
     0x0c26,
     "Icom",
 },
 {
     0x0c33,
     "GN Otometrics",
 },
 {
     0x0c45,
     "Microdia / Sonix Technology Co., Ltd.",
 },
 {
     0x0c52,
     "Sealevel System",
 },
 {
     0x0c6c,
     "JETI",
 },
 {
     0x0c76,
     "EasyDisk",
 },
 {
     0x0c7d,
     "Elektor Electronics",
 },
 {
     0x0c88,
     "Kyocera",
 },
 {
     0x0ccd,
     "TerraTec Electronic GmbH",
 },
 {
     0x0cde,
     "Z-Com",
 },
 {
     0x0cf3,
     "Atheros Communications",
 },
 {
     0x0d3a,
     "Posiflex Technologies",
 },
 {
     0x0d3d,
     "Tangtop",
 },
 {
     0x0d46,
     "Kobil Systems",
 },
 {
     0x0d5c,
     "SMC",
 },
 {
     0x0d7d,
     "Pen Drive",
 },
 {
     0x0d8c,
     "ABC",
 },
 {
     0x0d8e,
     "Conceptronic",
 },
 {
     0x0db0,
     "Micro Star International",
 },
 {
     0x0db7,
     "ELCON Systemtechnik",
 },
 {
     0x0dcd,
     "Unknown Vendor",
 },
 {
     0x0df6,
     "Sitecom Europe",
 },
 {
     0x0df7,
     "Mobile Action",
 },
 {
     0x0e0b,
     "Amigo Technology",
 },
 {
     0x0e0f,
     "VMware",
 },
 {
     0x0e55,
     "Speed Dragon Multimedia",
 },
 {
     0x0e5e,
     "CONWISE Technology",
 },
 {
     0x0e66,
     "Hawking",
 },
 {
     0x0e67,
     "Fossil",
 },
 {
     0x0e7e,
     "G.Mate",
 },
 {
     0x0e8d,
     "MediaTek Inc.",
 },
 {
     0x0ea0,
     "Ours Technology",
 },
 {
     0x0eaf,
     "Pilotech",
 },
 {
     0x0eb0,
     "Nova Tech",
 },
 {
     0x0eef,
     "eGalax",
 },
 {
     0x0eba,
     "iTegno",
 },
 {
     0x0eda,
     "Noritake itron Corp",
 },
 {
     0x0f14,
     "XIRING",
 },
 {
     0x0f3d,
     "Airprime",
 },
 {
     0x0fd8,
     "Larsen and Brusgaard",
 },
 {
     0x0fde,
     "Oregon Scientific",
 },
 {
     0x0fe6,
     "Unknown Vendor",
 },
 {
     0x0f88,
     "VTech",
 },
 {
     0x0f94,
     "Falcom Wireless Communications",
 },
 {
     0x0fca,
     "Research In Motion",
 },
 {
     0x0fcf,
     "Dynastream Innovations",
 },
 {
     0x0fe9,
     "DViCO",
 },
 {
     0x1004,
     "Qualcomm",
 },
 {
     0x100d,
     "Motorola",
 },
 {
     0x103c,
     "Hewlett Packard",
 },
 {
     0x103e,
     "Thurlby Thandar Instruments",
 },
 {
     0x1044,
     "GIGABYTE",
 },
 {
     0x1050,
     "Yubico.com",
 },
 {
     0x1063,
     "Motorola",
 },
 {
     0x1065,
     "CCYU Technology",
 },
 {
     0x106c,
     "Hyundai",
 },
 {
     0x1076,
     "GCT Semiconductor",
 },
 {
     0x10a6,
     "Silicon Labs",
 },
 {
     0x10ab,
     "USI",
 },
 {
     0x10af,
     "Liebert",
 },
 {
     0x10b5,
     "PLX",
 },
 {
     0x10bd,
     "Asante",
 },
 {
     0x10c4,
     "Silicon Labs",
 },
 {
     0x10c5,
     "Silicon Labs",
 },
 {
     0x10ce,
     "Silicon Labs",
 },
 {
     0x10cf,
     "Velleman",
 },
 {
     0x110a,
     "Moxa Technologies",
 },
 {
     0x1110,
     "Analog Devices",
 },
 {
     0x1130,
     "Ten X Technology, Inc.",
 },
 {
     0x1131,
     "Integrated System Solution Corp.",
 },
 {
     0x1145,
     "Japan Radio Company",
 },
 {
     0x114b,
     "Sphairon Access Systems",
 },
 {
     0x1163,
     "DeLorme",
 },
 {
     0x1166,
     "ServerWorks",
 },
 {
     0x1189,
     "Acer Communications & Multimedia",
 },
 {
     0x1199,
     "Sierra Wireless",
 },
 {
     0x11f5,
     "Siemens",
 },
 {
     0x11f7,
     "Alcatel",
 },
 {
     0x1209,
     "InterBiometrics",
 },
 {
     0x1233,
     "Unknown vendor",
 },
 {
     0x1241,
     "Tsunami",
 },
 {
     0x124a,
     "Pheenet",
 },
 {
     0x1267,
     "Raptor Gaming",
 },
 {
     0x126f,
     "TwinMOS",
 },
 {
     0x1286,
     "Tenda",
 },
 {
     0x128d,
     "Testo AG",
 },
 {
     0x1292,
     "Creative Labs",
 },
 {
     0x1293,
     "Belkin Components",
 },
 {
     0x129b,
     "CyberTAN Technology",
 },
 {
     0x12d1,
     "HUAWEI Technologies",
 },
 {
     0x12d8,
     "Araneus Information Systems",
 },
 {
     0x12ef,
     "Tapwave",
 },
 {
     0x12fd,
     "Aincomm",
 },
 {
     0x1342,
     "Mobility",
 },
 {
     0x1371,
     "Dick Smith Electronics",
 },
 {
     0x1385,
     "Netgear",
 },
 {
     0x138a,
     "Validity Sensors",
 },
 {
     0x13ad,
     "Baltech",
 },
 {
     0x13b1,
     "Cisco-Linksys",
 },
 {
     0x13d2,
     "Shark",
 },
 {
     0x13d3,
     "AsureWave",
 },
 {
     0x1410,
     "Novatel",
 },
 {
     0x1435,
     "Wistron NeWeb",
 },
 {
     0x1453,
     "Radio Shack",
 },
 {
     0x1457,
     "OpenMoko",
 },
 {
     0x1472,
     "Huawei 3Com",
 },
 {
     0x1482,
     "AboCom Systems",
 },
 {
     0x1485,
     "Silicom",
 },
 {
     0x148f,
     "Ralink Technology",
 },
 {
     0x14b0,
     "StarTech.com",
 },
 {
     0x14b2,
     "Conceptronic",
 },
 {
     0x14cd,
     "SuperTop",
 },
 {
     0x14ea,
     "Planex Communications",
 },
 {
     0x1527,
     "Silicon Portals",
 },
 {
     0x1546,
     "U-blox",
 },
 {
     0x1555,
     "Owen",
 },
 {
     0x1557,
     "OQO",
 },
 {
     0x157e,
     "U-MEDIA Communications",
 },
 {
     0x1582,
     "Fiberline",
 },
 {
     0x15a9,
     "SparkLAN",
 },
 {
     0x15ba,
     "Olimex",
 },
 {
     0x15c5,
     "AMIT",
 },
 {
     0x15d9,
     "Trust",
 },
 {
     0x15e8,
     "SOHOware",
 },
 {
     0x1606,
     "UMAX Data Systems",
 },
 {
     0x1608,
     "Inside Out Networks",
 },
 {
     0x1631,
     "Good Way Technology",
 },
 {
     0x1645,
     "Entrega",
 },
 {
     0x1668,
     "Actiontec Electronics",
 },
 {
     0x166a,
     "Clipsal",
 },
 {
     0x168c,
     "Atheros Communications",
 },
 {
     0x167b,
     "Cisco-Linksys",
 },
 {
     0x1690,
     "Gigaset",
 },
 {
     0x16ab,
     "Global Sun Technology",
 },
 {
     0x16c0,
     "Van Ooijen Technische Informatica",
 },
 {
     0x16d5,
     "AnyDATA Inc.",
 },
 {
     0x16d6,
     "Jablotron",
 },
 {
     0x16d8,
     "CMOTECH",
 },
 {
     0x16dc,
     "WIENER Plein & Baus",
 },
 {
     0x1726,
     "Axesstel",
 },
 {
     0x1737,
     "Linksys",
 },
 {
     0x1740,
     "Senao",
 },
 {
     0x1761,
     "ASUS",
 },
 {
     0x1774,
     "Strawberry linux Co., Ltd.",
 },
 {
     0x177f,
     "Sweex",
 },
 {
     0x1781,
     "Mecanique",
 },
 {
     0x17a8,
     "Kamstrup A/S",
 },
 {
     0x17e9,
     "DisplayLink",
 },
 {
     0x17ef,
     "Lenovo",
 },
 {
     0x17f4,
     "WaveSense",
 },
 {
     0x1843,
     "VAISALA",
 },
 {
     0x18c5,
     "AMIT",
 },
 {
     0x18e8,
     "Qcom",
 },
 {
     0x18ef,
     "ELV",
 },
 {
     0x1915,
     "Linksys",
 },
 {
     0x192f,
     "Avago",
 },
 {
     0x1938,
     "Meinberg Funkuhren",
 },
 {
     0x19d2,
     "ZTE Inc.",
 },
 {
     0x1a32,
     "Quanta",
 },
 {
     0x1a40,
     "Terminus Technology",
 },
 {
     0x1a61,
     "Abbott Labs",
 },
 {
     0x1a79,
     "Bayer Health Care",
 },
 {
     0x1a86,
     "QinHeng Electronics",
 },
 {
     0x1adb,
     "Schweitzer Engineering Laboratories",
 },
 {
     0x1ba4,
     "Silicon Labs",
 },
 {
     0x1b1c,
     "Corsair",
 },
 {
     0x1b3d,
     "Matrix Orbital",
 },
 {
     0x1b67,
     "Toradex inc.",
 },
 {
     0x1b71,
     "Fushicai",
 },
 {
     0x1b75,
     "OvisLink",
 },
 {
     0x1b91,
     "The Mobility Lab",
 },
 {
     0x1bbb,
     "TCT Mobile",
 },
 {
     0x1bc8,
     "MDS",
 },
 {
     0x1bc9,
     "Alti-2",
 },
 {
     0x1bcf,
     "Sunplus",
 },
 {
     0x1be3,
     "WAGO Kontakttechnik",
 },
 {
     0x1c9e,
     "Longcheer Technology",
 },
 {
     0x1cf1,
     "Dresden Elektronic",
 },
 {
     0x1d34,
     "Dream Link",
 },
 {
     0x1d4d,
     "Pegatron",
 },
 {
     0x1d50,
     "OpenMoko",
 },
 {
     0x1d6f,
     "Seluxit",
 },
 {
     0x1dd5,
     "MetaGeek",
 },
 {
     0x1e29,
     "Festo",
 },
 {
     0x1eb8,
     "Modacom",
 },
 {
     0x1eda,
     "AirTies",
 },
 {
     0x1fe7,
     "Vertex Wireless Co., Ltd.",
 },
 {
     0x1fb9,
     "Lake Shore",
 },
 {
     0x2001,
     "D-Link",
 },
 {
     0x2019,
     "Planex Communications",
 },
 {
     0x203d,
     "Encore",
 },
 {
     0x20b8,
     "PARA Industrial",
 },
 {
     0x20f4,
     "TRENDnet",
 },
 {
     0x2100,
     "RT Systems",
 },
 {
     0x2101,
     "D-Link",
 },
 {
     0x2109,
     "VIA Labs",
 },
 {
     0x22b8,
     "Motorola",
 },
 {
     0x2341,
     "Arduino SA",
 },
 {
     0x2357,
     "TP-Link",
 },
 {
     0x2405,
     "West Mountain Radio",
 },
 {
     0x2478,
     "Tripp-Lite",
 },
 {
     0x2626,
     "Aruba",
 },
 {
     0x2770,
     "NHJ",
 },
 {
     0x2821,
     "ASUSTeK Computer",
 },
 {
     0x2c02,
     "Planex Communications",
 },
 {
     0x3195,
     "Link Instruments",
 },
 {
     0x3334,
     "AEI",
 },
 {
     0x3538,
     "PQI",
 },
 {
     0x3579,
     "Daisy Technology",
 },
 {
     0x3923,
     "National Instruments",
 },
 {
     0x3980,
     "Micronet Communications",
 },
 {
     0x40bb,
     "I-O Data",
 },
 {
     0x4102,
     "iRiver",
 },
 {
     0x413c,
     "Dell",
 },
 {
     0x4348,
     "QinHeng Electronics",
 },
 {
     0x4766,
     "Aceeca",
 },
 {
     0x4855,
     "FeiXun Communication",
 },
 {
     0x4856,
     "NetweeN",
 },
 {
     0x5050,
     "Papouch s.r.o.",
 },
 {
     0x50c2,
     "Averatec",
 },
 {
     0x5173,
     "Sweex",
 },
 {
     0x5372,
     "Prolific Technology",
 },
 {
     0x55aa,
     "OnSpec",
 },
 {
     0x5986,
     "Acer",
 },
 {
     0x5a57,
     "Zinwell",
 },
 {
     0x6189,
     "Sitecom",
 },
 {
     0x6547,
     "Arkmicro",
 },
 {
     0x6891,
     "3Com",
 },
 {
     0x7392,
     "EDIMAX",
 },
 {
     0x8086,
     "Intel",
 },
 {
     0x8087,
     "Intel",
 },
 {
     0x8516,
     "ALLWIN Tech",
 },
 {
     0x9016,
     "Sitecom",
 },
 {
     0x9710,
     "MosChip",
 },
 {
     0x9846,
     "Netgear",
 },
 {
     0x9e88,
     "Marvell",
 },
 {
     0xa727,
     "3Com",
 },
 {
     0xcace,
     "CACE Technologies",
 },
 {
     0xcdab,
     "Compare",
 },
 {
     0xdaae,
     "DataApex",
 },
 {
     0xdeee,
     "Evolution Robotics",
 },
 {
     0xeb1a,
     "eMPIA Technology",
 },
 {
     0xf003,
     "Hewlett Packard",
 },
 { 0, ((void *)0) }
};
const char * const usbd_error_strs[] = {
 "NORMAL_COMPLETION",
 "IN_PROGRESS",
 "PENDING_REQUESTS",
 "NOT_STARTED",
 "INVAL",
 "NOMEM",
 "CANCELLED",
 "BAD_ADDRESS",
 "IN_USE",
 "NO_ADDR",
 "SET_ADDR_FAILED",
 "NO_POWER",
 "TOO_DEEP",
 "IOERROR",
 "NOT_CONFIGURED",
 "TIMEOUT",
 "SHORT_XFER",
 "STALLED",
 "INTERRUPTED",
 "XXX",
};
const char *
usbd_errstr(usbd_status err)
{
 static char buffer[5];
 if (err < USBD_ERROR_MAX)
  return (usbd_error_strs[err]);
 else {
  snprintf(buffer, sizeof(buffer), "%d", err);
  return (buffer);
 }
}
usbd_status
usbd_get_string_desc(struct usbd_device *dev, int sindex, int langid,
    usb_string_descriptor_t *sdesc, int *sizep)
{
 usb_device_request_t req;
 usbd_status err;
 int actlen;
 req.bmRequestType = (0x80 | 0x00 | 0x00);
 req.bRequest = 0x06;
 ((req.wValue)[0] = (u_int8_t)(sindex), (req.wValue)[1] = (u_int8_t)(0x03));
 ((req.wIndex)[0] = (u_int8_t)(langid), (req.wIndex)[1] = (u_int8_t)((langid) >> 8));
 ((req.wLength)[0] = (u_int8_t)(2), (req.wLength)[1] = (u_int8_t)((2) >> 8));
 err = usbd_do_request_flags(dev, &req, sdesc, 0x04,
     &actlen, 5000);
 if (err)
  return (err);
 if (actlen < 2)
  return (USBD_SHORT_XFER);
 ((req.wLength)[0] = (u_int8_t)(sdesc->bLength), (req.wLength)[1] = (u_int8_t)((sdesc->bLength) >> 8));
 err = usbd_do_request_flags(dev, &req, sdesc, 0x04,
     &actlen, 5000);
 if (err)
  return (err);
 if (actlen != sdesc->bLength) {
  ;
 }
 *sizep = actlen;
 return (USBD_NORMAL_COMPLETION);
}
char *
usbd_get_string(struct usbd_device *dev, int si, char *buf, size_t buflen)
{
 int swap = dev->quirks->uq_flags & 0x00000002;
 usb_string_descriptor_t us;
 char *s;
 int i, n;
 u_int16_t c;
 usbd_status err;
 int size;
 if (si == 0)
  return (0);
 if (dev->quirks->uq_flags & 0x00000008)
  return (0);
 if (dev->langid == (-1)) {
  err = usbd_get_string_desc(dev, 0, 0, &us,
      &size);
  if (err || size < 4)
   dev->langid = 0;
  else {
   dev->langid = ((us.bString[0])[0] | ((us.bString[0])[1] << 8));
  }
 }
 err = usbd_get_string_desc(dev, si, dev->langid, &us, &size);
 if (err)
  return (0);
 s = buf;
 n = size / 2 - 1;
 for (i = 0; i < n && i < buflen ; i++) {
  c = ((us.bString[i])[0] | ((us.bString[i])[1] << 8));
  if ((c & 0xff00) == 0)
   *s++ = c;
  else if ((c & 0x00ff) == 0 && swap)
   *s++ = c >> 8;
  else
   *s++ = '?';
 }
 if (buflen > 0)
  *s++ = 0;
 return (buf);
}
static void
usbd_trim_spaces(char *p)
{
 char *q, *e;
 if (p == ((void *)0))
  return;
 q = e = p;
 while (*q == ' ')
  q++;
 while ((*p = *q++))
  if (*p++ != ' ')
   e = p;
 *e = 0;
}
char *
usbd_get_device_string(struct usbd_device *dev, uByte index)
{
 char *buf;
 buf = malloc(127, 101, 0x0002);
 if (buf == ((void *)0))
  return (((void *)0));
 if (usbd_get_string(dev, index, buf, 127) != ((void *)0)) {
  usbd_trim_spaces(buf);
 } else {
  free(buf, 101, 127);
  buf = ((void *)0);
 }
 return (buf);
}
void
usbd_devinfo_vp(struct usbd_device *dev, char *v, size_t vl,
    char *p, size_t pl, int usedev)
{
 usb_device_descriptor_t *udd = &dev->ddesc;
 char *vendor = ((void *)0), *product = ((void *)0);
 const struct usb_known_vendor *ukv;
 const struct usb_known_product *ukp;
 if (dev == ((void *)0)) {
  v[0] = p[0] = '\0';
  return;
 }
 if (usedev) {
  vendor = usbd_get_string(dev, udd->iManufacturer, v, vl);
  usbd_trim_spaces(vendor);
  product = usbd_get_string(dev, udd->iProduct, p, pl);
  usbd_trim_spaces(product);
 } else {
  if (dev->vendor != ((void *)0))
   vendor = dev->vendor;
  if (dev->product != ((void *)0))
   product = dev->product;
 }
 if (vendor == ((void *)0) || product == ((void *)0)) {
  for (ukv = usb_known_vendors;
      ukv->vendorname != ((void *)0);
      ukv++) {
   if (ukv->vendor == ((udd->idVendor)[0] | ((udd->idVendor)[1] << 8))) {
    vendor = ukv->vendorname;
    break;
   }
  }
  if (vendor != ((void *)0)) {
   for (ukp = usb_known_products;
       ukp->productname != ((void *)0);
       ukp++) {
    if (ukp->vendor == ((udd->idVendor)[0] | ((udd->idVendor)[1] << 8)) &&
        (ukp->product == ((udd->idProduct)[0] | ((udd->idProduct)[1] << 8)))) {
     product = ukp->productname;
     break;
    }
   }
  }
 }
 if (v == vendor)
  ;
 else if (vendor != ((void *)0) && *vendor)
  strlcpy(v, vendor, vl);
 else
  snprintf(v, vl, "vendor 0x%04x", ((udd->idVendor)[0] | ((udd->idVendor)[1] << 8)));
 if (p == product)
  ;
 else if (product != ((void *)0) && *product)
  strlcpy(p, product, pl);
 else
  snprintf(p, pl, "product 0x%04x", ((udd->idProduct)[0] | ((udd->idProduct)[1] << 8)));
}
int
usbd_printBCD(char *cp, size_t len, int bcd)
{
 int l;
 l = snprintf(cp, len, "%x.%02x", bcd >> 8, bcd & 0xff);
 if (l == -1 || len == 0)
  return (0);
 if (l >= len)
  return len - 1;
 return (l);
}
void
usbd_devinfo(struct usbd_device *dev, int showclass, char *base, size_t len)
{
 usb_device_descriptor_t *udd = &dev->ddesc;
 char vendor[127];
 char product[127];
 char *cp = base;
 int bcdDevice, bcdUSB;
 usbd_devinfo_vp(dev, vendor, sizeof vendor, product, sizeof product, 0);
 snprintf(cp, len, "\"%s %s\"", vendor, product);
 cp += strlen(cp);
 if (showclass) {
  snprintf(cp, base + len - cp, ", class %d/%d",
      udd->bDeviceClass, udd->bDeviceSubClass);
  cp += strlen(cp);
 }
 bcdUSB = ((udd->bcdUSB)[0] | ((udd->bcdUSB)[1] << 8));
 bcdDevice = ((udd->bcdDevice)[0] | ((udd->bcdDevice)[1] << 8));
 snprintf(cp, base + len - cp, " rev ");
 cp += strlen(cp);
 usbd_printBCD(cp, base + len - cp, bcdUSB);
 cp += strlen(cp);
 snprintf(cp, base + len - cp, "/");
 cp += strlen(cp);
 usbd_printBCD(cp, base + len - cp, bcdDevice);
 cp += strlen(cp);
 snprintf(cp, base + len - cp, " addr %d", dev->address);
}
void
usb_delay_ms(struct usbd_bus *bus, u_int ms)
{
 static int usb_delay_wchan;
 if (bus->use_polling || cold)
  delay((ms+1) * 1000);
 else
  tsleep(&usb_delay_wchan, 16, "usbdly",
      (ms*hz+999)/1000 + 1);
}
void
usbd_delay_ms(struct usbd_device *dev, u_int ms)
{
 if (usbd_is_dying(dev))
  return;
 usb_delay_ms(dev->bus, ms);
}
usbd_status
usbd_port_disown_to_1_1(struct usbd_device *dev, int port)
{
 usb_port_status_t ps;
 usbd_status err;
 int n;
 err = usbd_set_port_feature(dev, port, 30);
 ;
 if (err)
  return (err);
 n = 10;
 do {
  usbd_delay_ms(dev, 50);
  err = usbd_get_port_status(dev, port, &ps);
  if (err) {
   ;
   return (err);
  }
  if (!(((ps.wPortStatus)[0] | ((ps.wPortStatus)[1] << 8)) & 0x0001))
   return (USBD_NORMAL_COMPLETION);
 } while ((((ps.wPortChange)[0] | ((ps.wPortChange)[1] << 8)) & 0x0010) == 0 && --n > 0);
 if (n == 0)
  return (USBD_TIMEOUT);
 return (err);
}
int
usbd_reset_port(struct usbd_device *dev, int port)
{
 usb_port_status_t ps;
 int n;
 if (usbd_set_port_feature(dev, port, 4))
  return (5);
 ;
 n = 10;
 do {
  usbd_delay_ms(dev, 50);
  if (usbd_get_port_status(dev, port, &ps)) {
   ;
   return (5);
  }
  if (!(((ps.wPortStatus)[0] | ((ps.wPortStatus)[1] << 8)) & 0x0001))
   return (0);
 } while ((((ps.wPortChange)[0] | ((ps.wPortChange)[1] << 8)) & 0x0010) == 0 && --n > 0);
 if (usbd_clear_port_feature(dev, port, 20)) {
  ;
  return (5);
 }
 if (n == 0)
  return (60);
 usbd_delay_ms(dev, 250);
 return (0);
}
usb_interface_descriptor_t *
usbd_find_idesc(usb_config_descriptor_t *cd, int ifaceidx, int altidx)
{
 char *p = (char *)cd;
 char *end = p + ((cd->wTotalLength)[0] | ((cd->wTotalLength)[1] << 8));
 usb_interface_descriptor_t *d;
 int curidx, lastidx, curaidx = 0;
 for (curidx = lastidx = -1; p < end; ) {
  d = (usb_interface_descriptor_t *)p;
  ;
  if (d->bLength == 0)
   break;
  p += d->bLength;
  if (p <= end && d->bDescriptorType == 0x04) {
   if (d->bInterfaceNumber != lastidx) {
    lastidx = d->bInterfaceNumber;
    curidx++;
    curaidx = 0;
   } else
    curaidx++;
   if (ifaceidx == curidx && altidx == curaidx)
    return (d);
  }
 }
 return (((void *)0));
}
usb_endpoint_descriptor_t *
usbd_find_edesc(usb_config_descriptor_t *cd, int ifaceidx, int altidx,
  int endptidx)
{
 char *p = (char *)cd;
 char *end = p + ((cd->wTotalLength)[0] | ((cd->wTotalLength)[1] << 8));
 usb_interface_descriptor_t *d;
 usb_endpoint_descriptor_t *e;
 int curidx;
 d = usbd_find_idesc(cd, ifaceidx, altidx);
 if (d == ((void *)0))
  return (((void *)0));
 if (endptidx >= d->bNumEndpoints)
  return (((void *)0));
 curidx = -1;
 for (p = (char *)d + d->bLength; p < end; ) {
  e = (usb_endpoint_descriptor_t *)p;
  if (e->bLength == 0)
   break;
  p += e->bLength;
  if (p <= end && e->bDescriptorType == 0x04)
   return (((void *)0));
  if (p <= end && e->bDescriptorType == 0x05) {
   curidx++;
   if (curidx == endptidx)
    return (e);
  }
 }
 return (((void *)0));
}
usbd_status
usbd_fill_iface_data(struct usbd_device *dev, int ifaceidx, int altidx)
{
 struct usbd_interface *ifc = &dev->ifaces[ifaceidx];
 usb_interface_descriptor_t *idesc;
 int nendpt;
 ;
 idesc = usbd_find_idesc(dev->cdesc, ifaceidx, altidx);
 if (idesc == ((void *)0))
  return (USBD_INVAL);
 nendpt = idesc->bNumEndpoints;
 ;
 ifc->device = dev;
 ifc->idesc = idesc;
 ifc->index = ifaceidx;
 ifc->altindex = altidx;
 ifc->endpoints = ((void *)0);
 ifc->priv = ((void *)0);
 do { ((&ifc->pipes)->lh_first) = ((void *)0); } while (0);
 if (nendpt != 0) {
  ifc->endpoints = mallocarray(nendpt, sizeof(*ifc->endpoints),
      101, 0x0002 | 0x0008);
  if (ifc->endpoints == ((void *)0))
   return (USBD_NOMEM);
 }
 if (usbd_parse_idesc(dev, ifc)) {
  free(ifc->endpoints, 101, nendpt * sizeof(*ifc->endpoints));
  ifc->endpoints = ((void *)0);
  return (USBD_INVAL);
 }
 return (USBD_NORMAL_COMPLETION);
}
int
usbd_parse_idesc(struct usbd_device *dev, struct usbd_interface *ifc)
{
 char *p, *end;
 int i;
 p = (char *)ifc->idesc + ifc->idesc->bLength;
 end = (char *)dev->cdesc + ((dev->cdesc->wTotalLength)[0] | ((dev->cdesc->wTotalLength)[1] << 8));
 for (i = 0; i < ifc->idesc->bNumEndpoints; i++) {
  for (; p < end; p += ((usb_endpoint_descriptor_t *)p)->bLength) {
   if (p + ((usb_endpoint_descriptor_t *)p)->bLength <= end && ((usb_endpoint_descriptor_t *)p)->bLength != 0 &&
       ((usb_endpoint_descriptor_t *)p)->bDescriptorType == 0x05)
    break;
   if (((usb_endpoint_descriptor_t *)p)->bLength == 0 ||
       ((usb_endpoint_descriptor_t *)p)->bDescriptorType == 0x04)
        return (-1);
  }
  if (p >= end)
   return (-1);
  if (dev->speed == 3) {
   unsigned int mps;
   switch (((((usb_endpoint_descriptor_t *)p)->bmAttributes) & 0x03)) {
   case 0x00:
    mps = 64;
    goto check;
   case 0x02:
    mps = 512;
   check:
    if (((((usb_endpoint_descriptor_t *)p)->wMaxPacketSize)[0] | ((((usb_endpoint_descriptor_t *)p)->wMaxPacketSize)[1] << 8)) != mps) {
     ((((usb_endpoint_descriptor_t *)p)->wMaxPacketSize)[0] = (u_int8_t)(mps), (((usb_endpoint_descriptor_t *)p)->wMaxPacketSize)[1] = (u_int8_t)((mps) >> 8));
     ;
    }
    break;
   default:
    break;
   }
  }
  ifc->endpoints[i].edesc = ((usb_endpoint_descriptor_t *)p);
  ifc->endpoints[i].refcnt = 0;
  ifc->endpoints[i].savedtoggle = 0;
  p += ((usb_endpoint_descriptor_t *)p)->bLength;
 }
 return (0);
}
void
usbd_free_iface_data(struct usbd_device *dev, int ifcno)
{
 struct usbd_interface *ifc = &dev->ifaces[ifcno];
 if (ifc->endpoints)
  free(ifc->endpoints, 101, 0);
}
usbd_status
usbd_set_config(struct usbd_device *dev, int conf)
{
 usb_device_request_t req;
 req.bmRequestType = (0x00 | 0x00 | 0x00);
 req.bRequest = 0x09;
 ((req.wValue)[0] = (u_int8_t)(conf), (req.wValue)[1] = (u_int8_t)((conf) >> 8));
 ((req.wIndex)[0] = (u_int8_t)(0), (req.wIndex)[1] = (u_int8_t)((0) >> 8));
 ((req.wLength)[0] = (u_int8_t)(0), (req.wLength)[1] = (u_int8_t)((0) >> 8));
 return (usbd_do_request(dev, &req, 0));
}
usbd_status
usbd_set_config_no(struct usbd_device *dev, int no, int msg)
{
 int index;
 usb_config_descriptor_t cd;
 usbd_status err;
 ;
 for (index = 0; index < dev->ddesc.bNumConfigurations; index++) {
  err = usbd_get_desc(dev, 0x02, index,
      9, &cd);
  if (err || cd.bDescriptorType != 0x02)
   return (err);
  if (cd.bConfigurationValue == no)
   return (usbd_set_config_index(dev, index, msg));
 }
 return (USBD_INVAL);
}
usbd_status
usbd_set_config_index(struct usbd_device *dev, int index, int msg)
{
 usb_status_t ds;
 usb_config_descriptor_t cd, *cdp;
 usbd_status err;
 int i, ifcidx, nifc, cdplen, selfpowered, power;
 ;
 if (dev->config != 0) {
  ;
  nifc = dev->cdesc->bNumInterface;
  for (ifcidx = 0; ifcidx < nifc; ifcidx++)
   usbd_free_iface_data(dev, ifcidx);
  free(dev->ifaces, 101, 0);
  free(dev->cdesc, 101, 0);
  dev->ifaces = ((void *)0);
  dev->cdesc = ((void *)0);
  dev->config = 0;
 }
 if (index == (-1)) {
  ;
  err = usbd_set_config(dev, 0);
  if (err)
   ;
  return (err);
 }
 err = usbd_get_desc(dev, 0x02, index,
     9, &cd);
 if (err)
  return (err);
 if (cd.bDescriptorType != 0x02)
  return (USBD_INVAL);
 cdplen = ((cd.wTotalLength)[0] | ((cd.wTotalLength)[1] << 8));
 cdp = malloc(cdplen, 101, 0x0002);
 if (cdp == ((void *)0))
  return (USBD_NOMEM);
 for (i = 0; i < 3; i++) {
  err = usbd_get_desc(dev, 0x02, index, cdplen, cdp);
  if (!err)
   break;
  usbd_delay_ms(dev, 200);
 }
 if (err)
  goto bad;
 if (cdp->bDescriptorType != 0x02) {
  ;
  err = USBD_INVAL;
  goto bad;
 }
 selfpowered = 0;
 if (!(dev->quirks->uq_flags & 0x00000020) &&
     (cdp->bmAttributes & 0x40)) {
  if (cdp->bmAttributes & 0x80) {
   if (dev->quirks->uq_flags & 0x00000200) {
    usb_hub_descriptor_t hd;
    usb_device_request_t req;
    req.bmRequestType = (0x80 | 0x20 | 0x00);
    req.bRequest = 0x06;
    ((req.wValue)[0] = (u_int8_t)(0), (req.wValue)[1] = (u_int8_t)((0) >> 8));
    ((req.wIndex)[0] = (u_int8_t)(0), (req.wIndex)[1] = (u_int8_t)((0) >> 8));
    ((req.wLength)[0] = (u_int8_t)(8), (req.wLength)[1] = (u_int8_t)((8) >> 8));
    err = usbd_do_request(dev, &req, &hd);
    if (!err &&
        (((hd.wHubCharacteristics)[0] | ((hd.wHubCharacteristics)[1] << 8)) &
         0x0001))
     selfpowered = 1;
    ;
   } else {
    err = usbd_get_device_status(dev, &ds);
    if (!err &&
        (((ds.wStatus)[0] | ((ds.wStatus)[1] << 8)) & 0x0001))
     selfpowered = 1;
    ;
   }
  } else
   selfpowered = 1;
 }
 ;
 power = cdp->bMaxPower * 2;
 if (power > dev->powersrc->power) {
  ;
  if (msg)
   printf("%s: device addr %d (config %d) exceeds power "
       "budget, %d mA > %d mA\n",
       dev->bus->bdev.dv_xname, dev->address,
       cdp->bConfigurationValue,
       power, dev->powersrc->power);
  err = USBD_NO_POWER;
  goto bad;
 }
 dev->power = power;
 dev->self_powered = selfpowered;
 ;
 err = usbd_set_config(dev, cdp->bConfigurationValue);
 if (err) {
  ;
  goto bad;
 }
 nifc = cdp->bNumInterface;
 dev->ifaces = mallocarray(nifc, sizeof(struct usbd_interface),
     101, 0x0002 | 0x0008);
 if (dev->ifaces == ((void *)0)) {
  err = USBD_NOMEM;
  goto bad;
 }
 ;
 dev->cdesc = cdp;
 dev->config = cdp->bConfigurationValue;
 for (ifcidx = 0; ifcidx < nifc; ifcidx++) {
  err = usbd_fill_iface_data(dev, ifcidx, 0);
  if (err)
   return (err);
 }
 return (USBD_NORMAL_COMPLETION);
 bad:
 free(cdp, 101, cdplen);
 return (err);
}
usbd_status
usbd_setup_pipe(struct usbd_device *dev, struct usbd_interface *iface,
    struct usbd_endpoint *ep, int ival, struct usbd_pipe **pipe)
{
 struct usbd_pipe *p;
 usbd_status err;
 ;
 p = malloc(dev->bus->pipe_size, 101, 0x0002|0x0008);
 if (p == ((void *)0))
  return (USBD_NOMEM);
 p->pipe_size = dev->bus->pipe_size;
 p->device = dev;
 p->iface = iface;
 p->endpoint = ep;
 ep->refcnt++;
 p->interval = ival;
 do { (&p->queue)->sqh_first = ((void *)0); (&p->queue)->sqh_last = &(&p->queue)->sqh_first; } while (0);
 err = dev->bus->methods->open_pipe(p);
 if (err) {
  ;
  free(p, 101, dev->bus->pipe_size);
  return (err);
 }
 *pipe = p;
 return (USBD_NORMAL_COMPLETION);
}
int
usbd_set_address(struct usbd_device *dev, int addr)
{
 usb_device_request_t req;
 req.bmRequestType = (0x00 | 0x00 | 0x00);
 req.bRequest = 0x05;
 ((req.wValue)[0] = (u_int8_t)(addr), (req.wValue)[1] = (u_int8_t)((addr) >> 8));
 ((req.wIndex)[0] = (u_int8_t)(0), (req.wIndex)[1] = (u_int8_t)((0) >> 8));
 ((req.wLength)[0] = (u_int8_t)(0), (req.wLength)[1] = (u_int8_t)((0) >> 8));
 if (usbd_do_request(dev, &req, 0))
  return (1);
 usbd_delay_ms(dev, 10);
 return (0);
}
int
usbd_getnewaddr(struct usbd_bus *bus)
{
 int addr;
 for (addr = 1; addr < 128; addr++)
  if (bus->devices[addr] == ((void *)0))
   return (addr);
 return (-1);
}
usbd_status
usbd_probe_and_attach(struct device *parent, struct usbd_device *dev, int port,
    int addr)
{
 struct usb_attach_arg uaa;
 usb_device_descriptor_t *dd = &dev->ddesc;
 int i, confi, nifaces, len;
 usbd_status err;
 struct device *dv;
 struct usbd_interface **ifaces;
 extern struct rwlock usbpalock;
 _rw_enter_write(&usbpalock );
 uaa.device = dev;
 uaa.iface = ((void *)0);
 uaa.ifaces = ((void *)0);
 uaa.nifaces = 0;
 uaa.usegeneric = 0;
 uaa.port = port;
 uaa.configno = -1;
 uaa.ifaceno = -1;
 uaa.vendor = ((dd->idVendor)[0] | ((dd->idVendor)[1] << 8));
 uaa.product = ((dd->idProduct)[0] | ((dd->idProduct)[1] << 8));
 uaa.release = ((dd->bcdDevice)[0] | ((dd->bcdDevice)[1] << 8));
 ;
 dv = config_found_sm((parent), (&uaa), (usbd_print), ((void *)0));
 if (dv) {
  dev->subdevs = mallocarray(2, sizeof dv, 101, 0x0002);
  if (dev->subdevs == ((void *)0)) {
   err = USBD_NOMEM;
   goto fail;
  }
  dev->subdevs[dev->ndevs++] = dv;
  dev->subdevs[dev->ndevs] = 0;
  err = USBD_NORMAL_COMPLETION;
  goto fail;
 }
 ;
 ;
 for (confi = 0; confi < dd->bNumConfigurations; confi++) {
  ;
  err = usbd_set_config_index(dev, confi, 1);
  if (err) {
   printf("%s: port %d, set config %d at addr %d failed\n",
       parent->dv_xname, port, confi, addr);
    goto fail;
  }
  nifaces = dev->cdesc->bNumInterface;
  uaa.configno = dev->cdesc->bConfigurationValue;
  ifaces = mallocarray(nifaces, sizeof(*ifaces), 101, 0x0002);
  if (ifaces == ((void *)0)) {
   err = USBD_NOMEM;
   goto fail;
  }
  for (i = 0; i < nifaces; i++)
   ifaces[i] = &dev->ifaces[i];
  uaa.ifaces = ifaces;
  uaa.nifaces = nifaces;
  dev->subdevs = mallocarray(nifaces + 2, sizeof(dv), 101,
      0x0002 | 0x0008);
  if (dev->subdevs == ((void *)0)) {
   free(ifaces, 101, nifaces * sizeof(*ifaces));
   err = USBD_NOMEM;
   goto fail;
  }
  len = (nifaces + 2) * sizeof(dv);
  for (i = 0; i < nifaces; i++) {
   if (usbd_iface_claimed(dev, i))
    continue;
   uaa.iface = ifaces[i];
   uaa.ifaceno = ifaces[i]->idesc->bInterfaceNumber;
   dv = config_found_sm((parent), (&uaa), (usbd_print), ((void *)0));
   if (dv != ((void *)0)) {
    dev->subdevs[dev->ndevs++] = dv;
    usbd_claim_iface(dev, i);
   }
  }
  free(ifaces, 101, nifaces * sizeof(*ifaces));
  if (dev->ndevs > 0) {
   for (i = 0; i < nifaces; i++) {
    if (!usbd_iface_claimed(dev, i))
     break;
   }
   if (i < nifaces)
    goto generic;
    else
    goto fail;
  }
  free(dev->subdevs, 101, (nifaces + 2) * sizeof(dv));
  dev->subdevs = ((void *)0);
 }
 if (dd->bNumConfigurations > 1)
  usbd_set_config_index(dev, 0, 0);
 ;
generic:
 uaa.iface = ((void *)0);
 uaa.usegeneric = 1;
 uaa.configno = dev->ndevs == 0 ? -1 :
     dev->cdesc->bConfigurationValue;
 uaa.ifaceno = -1;
 dv = config_found_sm((parent), (&uaa), (usbd_print), ((void *)0));
 if (dv != ((void *)0)) {
  if (dev->ndevs == 0) {
   dev->subdevs = mallocarray(2, sizeof dv, 101, 0x0002);
   if (dev->subdevs == ((void *)0)) {
    err = USBD_NOMEM;
    goto fail;
   }
  }
  dev->subdevs[dev->ndevs++] = dv;
  dev->subdevs[dev->ndevs] = 0;
  err = USBD_NORMAL_COMPLETION;
  goto fail;
 }
 ;
  err = USBD_NORMAL_COMPLETION;
fail:
 _rw_exit_write(&usbpalock );
 return (err);
}
usbd_status
usbd_new_device(struct device *parent, struct usbd_bus *bus, int depth,
  int speed, int port, struct usbd_port *up)
{
 struct usbd_device *dev, *adev, *hub;
 usb_device_descriptor_t *dd;
 usbd_status err;
 uint32_t mps, mps0;
 int addr, i, p;
 ;
 switch (speed) {
 case 1:
  mps0 = 8;
  break;
 case 3:
 case 2:
  mps0 = 64;
  break;
 case 4:
  mps0 = 512;
  break;
 default:
  return (USBD_INVAL);
 }
 addr = usbd_getnewaddr(bus);
 if (addr < 0) {
  printf("%s: No free USB addresses, new device ignored.\n",
      bus->bdev.dv_xname);
  return (USBD_NO_ADDR);
 }
 dev = malloc(sizeof *dev, 101, 0x0002 | 0x0008);
 if (dev == ((void *)0))
  return (USBD_NOMEM);
 dev->bus = bus;
 dev->def_ep.edesc = &dev->def_ep_desc;
 dev->def_ep_desc.bLength = 7;
 dev->def_ep_desc.bDescriptorType = 0x05;
 dev->def_ep_desc.bEndpointAddress = 0;
 dev->def_ep_desc.bmAttributes = 0x00;
 dev->def_ep_desc.bInterval = 0;
 ((dev->def_ep_desc.wMaxPacketSize)[0] = (u_int8_t)(mps0), (dev->def_ep_desc.wMaxPacketSize)[1] = (u_int8_t)((mps0) >> 8));
 dev->quirks = &usbd_no_quirk;
 dev->address = 0;
 dev->ddesc.bMaxPacketSize = 0;
 dev->depth = depth;
 dev->powersrc = up;
 dev->myhub = up->parent;
 dev->speed = speed;
 dev->langid = (-1);
 up->device = dev;
 for (adev = dev, hub = up->parent;
     hub != ((void *)0) && hub->speed != 3;
     adev = hub, hub = hub->myhub)
  ;
 if (hub) {
  for (p = 0; p < hub->hub->nports; p++) {
   if (hub->hub->ports[p].device == adev) {
    dev->myhsport = &hub->hub->ports[p];
    goto found;
   }
  }
  panic("usbd_new_device: cannot find HS port");
 found:
  ;
 } else {
  dev->myhsport = ((void *)0);
 }
 err = usbd_setup_pipe(dev, 0, &dev->def_ep, (-1),
     &dev->default_pipe);
 if (err) {
  usb_free_device(dev);
  up->device = ((void *)0);
  return (err);
 }
 dd = &dev->ddesc;
 for (i = 0; i < 3; i++) {
  err = usbd_get_desc(dev, 0x01, 0, 8, dd);
  if (!err)
   break;
  usbd_delay_ms(dev, 100+50*i);
 }
 if (err) {
  ((dev->def_ep_desc.wMaxPacketSize)[0] = (u_int8_t)(18), (dev->def_ep_desc.wMaxPacketSize)[1] = (u_int8_t)((18) >> 8));
  usbd_reset_port(up->parent, port);
  for (i = 0; i < 3; i++) {
   err = usbd_get_desc(dev, 0x01, 0,
    18, dd);
   if (!err)
    break;
   usbd_delay_ms(dev, 100+50*i);
  }
 }
 if (err) {
  ((dev->def_ep_desc.wMaxPacketSize)[0] = (u_int8_t)(8), (dev->def_ep_desc.wMaxPacketSize)[1] = (u_int8_t)((8) >> 8));
  usbd_reset_port(up->parent, port);
  usbd_delay_ms(dev, 500);
  err = usbd_get_desc(dev, 0x01, 0,
   8, dd);
 }
 if (err) {
  usb_free_device(dev);
  up->device = ((void *)0);
  return (err);
 }
 ;
 if ((dd->bDescriptorType != 0x01) ||
     (dd->bLength < 18)) {
  usb_free_device(dev);
  up->device = ((void *)0);
  return (USBD_INVAL);
 }
 mps = dd->bMaxPacketSize;
 if (speed == 4) {
  if (mps == 0xff)
   mps = 9;
  mps = (1 << mps);
 }
 if (mps != mps0) {
  if ((speed == 1) ||
      (mps != 8 && mps != 16 && mps != 32 && mps != 64)) {
   usb_free_device(dev);
   up->device = ((void *)0);
   return (USBD_INVAL);
  }
  ((dev->def_ep_desc.wMaxPacketSize)[0] = (u_int8_t)(mps), (dev->def_ep_desc.wMaxPacketSize)[1] = (u_int8_t)((mps) >> 8));
 }
 if (bus->methods->dev_setaddr != ((void *)0) &&
     bus->methods->dev_setaddr(dev, addr)) {
  usb_free_device(dev);
  up->device = ((void *)0);
  return (USBD_SET_ADDR_FAILED);
  }
 usbd_delay_ms(dev, 10);
 dev->address = addr;
 bus->devices[addr] = dev;
 err = usbd_reload_device_desc(dev);
 if (err) {
  usb_free_device(dev);
  up->device = ((void *)0);
  return (err);
 }
 if (dev->quirks->uq_flags & 0x00020000) {
  if (dev->bus->usbrev == 4) {
   ;
   usbd_port_disown_to_1_1(dev->myhub, port);
   usbd_reset_port(dev->myhub, port);
     return (USBD_NORMAL_COMPLETION);
  }
 }
 dev->power = 100;
 dev->self_powered = 0;
 ;
 dev->vendor = usbd_get_device_string(dev, dev->ddesc.iManufacturer);
 dev->product = usbd_get_device_string(dev, dev->ddesc.iProduct);
 dev->serial = usbd_get_device_string(dev, dev->ddesc.iSerialNumber);
 err = usbd_probe_and_attach(parent, dev, port, addr);
 if (err) {
  usb_free_device(dev);
  up->device = ((void *)0);
  return (err);
   }
   return (USBD_NORMAL_COMPLETION);
}
usbd_status
usbd_reload_device_desc(struct usbd_device *dev)
{
 usbd_status err;
 err = usbd_get_desc(dev, 0x01, 0,
  18, &dev->ddesc);
 if (err)
  return (err);
 dev->quirks = usbd_find_quirk(&dev->ddesc);
 return (USBD_NORMAL_COMPLETION);
}
int
usbd_print(void *aux, const char *pnp)
{
 struct usb_attach_arg *uaa = aux;
 char *devinfop;
 devinfop = malloc(1024, 127, 0x0001);
 usbd_devinfo(uaa->device, 0, devinfop, 1024);
 ;
 if (pnp) {
  if (!uaa->usegeneric) {
   free(devinfop, 127, 1024);
   return (0);
  }
  printf("%s at %s", devinfop, pnp);
 }
 if (uaa->port != 0)
  printf(" port %d", uaa->port);
 if (uaa->configno != -1)
  printf(" configuration %d", uaa->configno);
 if (uaa->ifaceno != -1)
  printf(" interface %d", uaa->ifaceno);
 if (!pnp)
  printf(" %s\n", devinfop);
 free(devinfop, 127, 1024);
 return (1);
}
void
usbd_fill_deviceinfo(struct usbd_device *dev, struct usb_device_info *di,
    int usedev)
{
 struct usbd_port *p;
 int i, err, s;
 di->udi_bus = dev->bus->usbctl->dv_unit;
 di->udi_addr = dev->address;
 usbd_devinfo_vp(dev, di->udi_vendor, sizeof(di->udi_vendor),
     di->udi_product, sizeof(di->udi_product), usedev);
 usbd_printBCD(di->udi_release, sizeof di->udi_release,
     ((dev->ddesc.bcdDevice)[0] | ((dev->ddesc.bcdDevice)[1] << 8)));
 di->udi_vendorNo = ((dev->ddesc.idVendor)[0] | ((dev->ddesc.idVendor)[1] << 8));
 di->udi_productNo = ((dev->ddesc.idProduct)[0] | ((dev->ddesc.idProduct)[1] << 8));
 di->udi_releaseNo = ((dev->ddesc.bcdDevice)[0] | ((dev->ddesc.bcdDevice)[1] << 8));
 di->udi_class = dev->ddesc.bDeviceClass;
 di->udi_subclass = dev->ddesc.bDeviceSubClass;
 di->udi_protocol = dev->ddesc.bDeviceProtocol;
 di->udi_config = dev->config;
 di->udi_power = dev->self_powered ? 0 : dev->power;
 di->udi_speed = dev->speed;
 if (dev->subdevs != ((void *)0)) {
  for (i = 0; dev->subdevs[i] && i < 4; i++) {
   strncpy(di->udi_devnames[i],
       dev->subdevs[i]->dv_xname, 16);
   di->udi_devnames[i][16 -1] = '\0';
  }
 } else
  i = 0;
 for ( ; i < 4; i++)
  di->udi_devnames[i][0] = 0;
 if (dev->hub) {
  for (i = 0;
      i < (sizeof((di->udi_ports)) / sizeof((di->udi_ports)[0])) && i < dev->hub->nports; i++) {
   p = &dev->hub->ports[i];
   if (p->device)
    err = p->device->address;
   else {
    s = ((p->status.wPortStatus)[0] | ((p->status.wPortStatus)[1] << 8));
    if (s & 0x0002)
     err = 0xff;
    else if (s & 0x0004)
     err = 0xfe;
    else if (s & 0x0100)
     err = 0xfd;
    else
     err = 0xfc;
   }
   di->udi_ports[i] = err;
  }
  di->udi_nports = dev->hub->nports;
 } else
  di->udi_nports = 0;
 __builtin_bzero((di->udi_serial), (sizeof(di->udi_serial)));
 if (!usedev && dev->serial != ((void *)0)) {
  strlcpy(di->udi_serial, dev->serial,
      sizeof(di->udi_serial));
 } else {
  usbd_get_string(dev, dev->ddesc.iSerialNumber,
      di->udi_serial, sizeof(di->udi_serial));
 }
}
usb_config_descriptor_t *
usbd_get_cdesc(struct usbd_device *dev, int index, u_int *lenp)
{
 usb_config_descriptor_t *cdesc, *tdesc, cdescr;
 u_int len;
 usbd_status err;
 if (index == (-1)) {
  tdesc = usbd_get_config_descriptor(dev);
  if (tdesc == ((void *)0))
   return (((void *)0));
  len = ((tdesc->wTotalLength)[0] | ((tdesc->wTotalLength)[1] << 8));
  if (lenp)
   *lenp = len;
  cdesc = malloc(len, 127, 0x0001);
  __builtin_memcpy((cdesc), (tdesc), (len));
  ;
 } else {
  err = usbd_get_desc(dev, 0x02, index,
      9, &cdescr);
  if (err || cdescr.bDescriptorType != 0x02)
   return (0);
  len = ((cdescr.wTotalLength)[0] | ((cdescr.wTotalLength)[1] << 8));
  ;
  if (lenp)
   *lenp = len;
  cdesc = malloc(len, 127, 0x0001);
  err = usbd_get_desc(dev, 0x02, index, len, cdesc);
  if (err) {
   free(cdesc, 127, len);
   return (0);
  }
 }
 return (cdesc);
}
void
usb_free_device(struct usbd_device *dev)
{
 int ifcidx, nifc;
 ;
 if (dev->default_pipe != ((void *)0)) {
  usbd_abort_pipe(dev->default_pipe);
  usbd_close_pipe(dev->default_pipe);
 }
 if (dev->ifaces != ((void *)0)) {
  nifc = dev->cdesc->bNumInterface;
  for (ifcidx = 0; ifcidx < nifc; ifcidx++)
   usbd_free_iface_data(dev, ifcidx);
  free(dev->ifaces, 101, 0);
 }
 if (dev->cdesc != ((void *)0))
  free(dev->cdesc, 101, 0);
 if (dev->subdevs != ((void *)0))
  free(dev->subdevs, 101, 0);
 dev->bus->devices[dev->address] = ((void *)0);
 if (dev->vendor != ((void *)0))
  free(dev->vendor, 101, 127);
 if (dev->product != ((void *)0))
  free(dev->product, 101, 127);
 if (dev->serial != ((void *)0))
  free(dev->serial, 101, 127);
 free(dev, 101, sizeof *dev);
}
int
usbd_detach(struct usbd_device *dev, struct device *parent)
{
 int i, rv = 0;
 usbd_deactivate(dev);
 if (dev->ndevs > 0) {
  for (i = 0; dev->subdevs[i] != ((void *)0); i++)
   rv |= config_detach(dev->subdevs[i], 0x01);
 }
 if (rv == 0)
  usb_free_device(dev);
 return (rv);
}
