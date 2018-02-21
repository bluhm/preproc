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
struct mutex {
 volatile void *mtx_owner;
 int mtx_wantipl;
 int mtx_oldipl;
};
void __mtx_init(struct mutex *, int);
void __mtx_enter(struct mutex *);
int __mtx_enter_try(struct mutex *);
void __mtx_leave(struct mutex *);
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
typedef short shmatt_t;
struct shmid_ds {
 struct ipc_perm shm_perm;
 int shm_segsz;
 pid_t shm_lpid;
 pid_t shm_cpid;
 shmatt_t shm_nattch;
 time_t shm_atime;
 long __shm_atimensec;
 time_t shm_dtime;
 long __shm_dtimensec;
 time_t shm_ctime;
 long __shm_ctimensec;
 void *shm_internal;
};
struct shminfo {
 int shmmax;
 int shmmin;
 int shmmni;
 int shmseg;
 int shmall;
};
struct shm_sysctl_info {
 struct shminfo shminfo;
 struct shmid_ds shmids[1];
};
extern struct shminfo shminfo;
extern struct shmid_ds **shmsegs;
struct proc;
struct vmspace;
void shminit(void);
void shmfork(struct vmspace *, struct vmspace *);
void shmexit(struct vmspace *);
int sysctl_sysvshm(int *, u_int, void *, size_t *, void *, size_t);
int shmctl1(struct proc *, int, int, caddr_t,
     int (*)(const void *, void *, size_t),
     int (*)(const void *, void *, size_t));
typedef int vm_fault_t;
typedef int vm_inherit_t;
typedef off_t voff_t;
union vm_map_object;
typedef union vm_map_object vm_map_object_t;
struct vm_map_entry;
typedef struct vm_map_entry *vm_map_entry_t;
struct vm_map;
typedef struct vm_map *vm_map_t;
struct vm_page;
typedef struct vm_page *vm_page_t;
typedef int vm_prot_t;
struct buf;
struct mount;
struct pglist;
struct vmspace;
struct pmap;
struct vm_map;
vaddr_t dvma_mapin(struct vm_map *, vaddr_t, int, int);
void dvma_mapout(vaddr_t, vaddr_t, int);
typedef int boolean_t;
struct proc;
struct pmap_statistics {
 long resident_count;
 long wired_count;
};
typedef struct pmap_statistics *pmap_statistics_t;
struct sun4u_tte {
 int64_t tag;
 int64_t data;
};
typedef struct sun4u_tte pte_t;
extern void sp_tlb_flush_pte(vaddr_t addr, int ctx);
extern void sp_tlb_flush_ctx(int ctx);
void smp_tlb_flush_pte(vaddr_t, int);
void smp_tlb_flush_ctx(int);
struct page_size_map {
 u_int64_t mask;
 u_int64_t code;
};
extern struct page_size_map page_size_map[];
struct pmap {
 struct mutex pm_mtx;
 int pm_ctx;
 int pm_refs;
 paddr_t pm_physaddr;
 int64_t *pm_segs;
 struct pmap_statistics pm_stats;
};
struct prom_map {
 u_int64_t vstart;
 u_int64_t vsize;
 u_int64_t tte;
};
typedef struct pmap *pmap_t;
extern struct pmap kernel_pmap_;
void pmap_bootstrap(u_long, u_long, u_int, u_int);
void pmap_redzone(void);
int pmap_dumpsize(void);
int pmap_dumpmmu(int (*)(dev_t, daddr_t, caddr_t, size_t), daddr_t);
int pmap_pa_exists(paddr_t);
struct proc;
void switchexit(struct proc *);
int ctx_alloc(struct pmap*);
void ctx_free(struct pmap*);
typedef struct pv_entry {
 struct pv_entry *pv_next;
 struct pmap *pv_pmap;
 vaddr_t pv_va;
} *pv_entry_t;
struct vm_page_md {
 struct mutex pvmtx;
 struct pv_entry pvent;
};

void pmap_activate(struct proc *);
void pmap_deactivate(struct proc *);
void pmap_unwire(pmap_t, vaddr_t);
boolean_t pmap_clear_modify(struct vm_page *);
boolean_t pmap_clear_reference(struct vm_page *);
void pmap_collect(pmap_t);
void pmap_copy(pmap_t, pmap_t, vaddr_t, vsize_t, vaddr_t);
void pmap_copy_page(struct vm_page *, struct vm_page *);
struct pmap *pmap_create(void);
void pmap_destroy(pmap_t);
int pmap_enter(pmap_t,
      vaddr_t, paddr_t, vm_prot_t, int);
boolean_t pmap_extract(pmap_t, vaddr_t, paddr_t *);
vaddr_t pmap_growkernel(vaddr_t);
void pmap_init(void);
void pmap_kenter_pa(vaddr_t, paddr_t, vm_prot_t);
void pmap_kremove(vaddr_t, vsize_t);
boolean_t pmap_is_modified(struct vm_page *);
boolean_t pmap_is_referenced(struct vm_page *);
void pmap_page_protect(struct vm_page *, vm_prot_t);
void pmap_protect(pmap_t, vaddr_t, vaddr_t, vm_prot_t);
void pmap_reference(pmap_t);
void pmap_remove(pmap_t, vaddr_t, vaddr_t);
void pmap_remove_holes(struct vmspace *);
void pmap_zero_page(struct vm_page *);
void pmap_virtual_space(vaddr_t *, vaddr_t *);

struct uvm_object {
 struct uvm_pagerops *pgops;
 struct uvm_objtree { struct rb_tree rbh_root; } memt;
 int uo_npages;
 int uo_refs;
};
extern struct uvm_pagerops uvm_vnodeops;
extern struct uvm_pagerops uvm_deviceops;
int uvm_pagecmp(const struct vm_page *, const struct vm_page *);
extern const struct rb_type *const uvm_objtree_RBT_TYPE; __attribute__((__unused__)) static inline void uvm_objtree_RBT_INIT(struct uvm_objtree *head) { _rb_init(&head->rbh_root); } __attribute__((__unused__)) static inline struct vm_page * uvm_objtree_RBT_INSERT(struct uvm_objtree *head, struct vm_page *elm) { return _rb_insert(uvm_objtree_RBT_TYPE, &head->rbh_root, elm); } __attribute__((__unused__)) static inline struct vm_page * uvm_objtree_RBT_REMOVE(struct uvm_objtree *head, struct vm_page *elm) { return _rb_remove(uvm_objtree_RBT_TYPE, &head->rbh_root, elm); } __attribute__((__unused__)) static inline struct vm_page * uvm_objtree_RBT_FIND(struct uvm_objtree *head, const struct vm_page *key) { return _rb_find(uvm_objtree_RBT_TYPE, &head->rbh_root, key); } __attribute__((__unused__)) static inline struct vm_page * uvm_objtree_RBT_NFIND(struct uvm_objtree *head, const struct vm_page *key) { return _rb_nfind(uvm_objtree_RBT_TYPE, &head->rbh_root, key); } __attribute__((__unused__)) static inline struct vm_page * uvm_objtree_RBT_ROOT(struct uvm_objtree *head) { return _rb_root(uvm_objtree_RBT_TYPE, &head->rbh_root); } __attribute__((__unused__)) static inline int uvm_objtree_RBT_EMPTY(struct uvm_objtree *head) { return _rb_empty(&head->rbh_root); } __attribute__((__unused__)) static inline struct vm_page * uvm_objtree_RBT_MIN(struct uvm_objtree *head) { return _rb_min(uvm_objtree_RBT_TYPE, &head->rbh_root); } __attribute__((__unused__)) static inline struct vm_page * uvm_objtree_RBT_MAX(struct uvm_objtree *head) { return _rb_max(uvm_objtree_RBT_TYPE, &head->rbh_root); } __attribute__((__unused__)) static inline struct vm_page * uvm_objtree_RBT_NEXT(struct vm_page *elm) { return _rb_next(uvm_objtree_RBT_TYPE, elm); } __attribute__((__unused__)) static inline struct vm_page * uvm_objtree_RBT_PREV(struct vm_page *elm) { return _rb_prev(uvm_objtree_RBT_TYPE, elm); } __attribute__((__unused__)) static inline struct vm_page * uvm_objtree_RBT_LEFT(struct vm_page *elm) { return _rb_left(uvm_objtree_RBT_TYPE, elm); } __attribute__((__unused__)) static inline struct vm_page * uvm_objtree_RBT_RIGHT(struct vm_page *elm) { return _rb_right(uvm_objtree_RBT_TYPE, elm); } __attribute__((__unused__)) static inline struct vm_page * uvm_objtree_RBT_PARENT(struct vm_page *elm) { return _rb_parent(uvm_objtree_RBT_TYPE, elm); } __attribute__((__unused__)) static inline void uvm_objtree_RBT_SET_LEFT(struct vm_page *elm, struct vm_page *left) { return _rb_set_left(uvm_objtree_RBT_TYPE, elm, left); } __attribute__((__unused__)) static inline void uvm_objtree_RBT_SET_RIGHT(struct vm_page *elm, struct vm_page *right) { return _rb_set_right(uvm_objtree_RBT_TYPE, elm, right); } __attribute__((__unused__)) static inline void uvm_objtree_RBT_SET_PARENT(struct vm_page *elm, struct vm_page *parent) { return _rb_set_parent(uvm_objtree_RBT_TYPE, elm, parent); } __attribute__((__unused__)) static inline void uvm_objtree_RBT_POISON(struct vm_page *elm, unsigned long poison) { return _rb_poison(uvm_objtree_RBT_TYPE, elm, poison); } __attribute__((__unused__)) static inline int uvm_objtree_RBT_CHECK(struct vm_page *elm, unsigned long poison) { return _rb_check(uvm_objtree_RBT_TYPE, elm, poison); }
void uvm_objinit(struct uvm_object *, struct uvm_pagerops *, int);
int uvm_objwire(struct uvm_object *, voff_t, voff_t, struct pglist *);
void uvm_objunwire(struct uvm_object *, voff_t, voff_t);
struct pglist { struct vm_page *tqh_first; struct vm_page **tqh_last; };
struct vm_page {
 struct { struct vm_page *tqe_next; struct vm_page **tqe_prev; } pageq;
 struct rb_entry objt;
 struct vm_anon *uanon;
 struct uvm_object *uobject;
 voff_t offset;
 u_int pg_flags;
 u_int pg_version;
 u_int wire_count;
 paddr_t phys_addr;
 psize_t fpgsz;
 struct vm_page_md mdpage;
};
struct vm_physseg {
 paddr_t start;
 paddr_t end;
 paddr_t avail_start;
 paddr_t avail_end;
 struct vm_page *pgs;
 struct vm_page *lastpg;
};
extern boolean_t vm_page_zero_enable;
extern struct vm_physseg vm_physmem[32];
extern int vm_nphysseg;
void uvm_page_init(vaddr_t *, vaddr_t *);
boolean_t uvm_page_physget(paddr_t *);
void uvm_pageactivate(struct vm_page *);
vaddr_t uvm_pageboot_alloc(vsize_t);
void uvm_pagecopy(struct vm_page *, struct vm_page *);
void uvm_pagedeactivate(struct vm_page *);
void uvm_pagefree(struct vm_page *);
void uvm_page_unbusy(struct vm_page **, int);
struct vm_page *uvm_pagelookup(struct uvm_object *, voff_t);
void uvm_pageunwire(struct vm_page *);
void uvm_pagewait(struct vm_page *, int);
void uvm_pagewake(struct vm_page *);
void uvm_pagewire(struct vm_page *);
void uvm_pagezero(struct vm_page *);
void uvm_pagealloc_pg(struct vm_page *, struct uvm_object *,
      voff_t, struct vm_anon *);
struct uvm_constraint_range;
psize_t uvm_pagecount(struct uvm_constraint_range*);
struct vm_page *PHYS_TO_VM_PAGE(paddr_t);
int vm_physseg_find(paddr_t, int *);
void uvm_map_clip_end(struct vm_map*, struct vm_map_entry*,
       vaddr_t);
void uvm_map_clip_start(struct vm_map*,
       struct vm_map_entry*, vaddr_t);
struct vm_anon {
 struct vm_page *an_page;
 int an_ref;
 int an_swslot;
};
struct vm_aref {
 int ar_pageoff;
 struct vm_amap *ar_amap;
};
struct vm_anon *uvm_analloc(void);
void uvm_anfree(struct vm_anon *);
void uvm_anwait(void);
void uvm_anon_init(void);
void uvm_anon_dropswap(struct vm_anon *);
boolean_t uvm_anon_pagein(struct vm_anon *);
union vm_map_object {
 struct uvm_object *uvm_obj;
 struct vm_map *sub_map;
};
struct vm_map_entry {
 union {
  struct rb_entry addr_entry;
  struct { struct vm_map_entry *sle_next; } addr_kentry;
 } daddrs;
 union {
  struct rb_entry rbtree;
  struct { struct vm_map_entry *tqe_next; struct vm_map_entry **tqe_prev; } tailq;
  struct { struct vm_map_entry *tqe_next; struct vm_map_entry **tqe_prev; } deadq;
 } dfree;
 vaddr_t start;
 vaddr_t end;
 vsize_t guard;
 vsize_t fspace;
 union vm_map_object object;
 voff_t offset;
 struct vm_aref aref;
 int etype;
 vm_prot_t protection;
 vm_prot_t max_protection;
 vm_inherit_t inheritance;
 int wired_count;
 int advice;
 u_int8_t flags;
 vsize_t fspace_augment;
};
struct uvm_map_deadq { struct vm_map_entry *tqh_first; struct vm_map_entry **tqh_last; };
struct uvm_map_addr { struct rb_tree rbh_root; };
extern const struct rb_type *const uvm_map_addr_RBT_TYPE; __attribute__((__unused__)) static inline void uvm_map_addr_RBT_INIT(struct uvm_map_addr *head) { _rb_init(&head->rbh_root); } __attribute__((__unused__)) static inline struct vm_map_entry * uvm_map_addr_RBT_INSERT(struct uvm_map_addr *head, struct vm_map_entry *elm) { return _rb_insert(uvm_map_addr_RBT_TYPE, &head->rbh_root, elm); } __attribute__((__unused__)) static inline struct vm_map_entry * uvm_map_addr_RBT_REMOVE(struct uvm_map_addr *head, struct vm_map_entry *elm) { return _rb_remove(uvm_map_addr_RBT_TYPE, &head->rbh_root, elm); } __attribute__((__unused__)) static inline struct vm_map_entry * uvm_map_addr_RBT_FIND(struct uvm_map_addr *head, const struct vm_map_entry *key) { return _rb_find(uvm_map_addr_RBT_TYPE, &head->rbh_root, key); } __attribute__((__unused__)) static inline struct vm_map_entry * uvm_map_addr_RBT_NFIND(struct uvm_map_addr *head, const struct vm_map_entry *key) { return _rb_nfind(uvm_map_addr_RBT_TYPE, &head->rbh_root, key); } __attribute__((__unused__)) static inline struct vm_map_entry * uvm_map_addr_RBT_ROOT(struct uvm_map_addr *head) { return _rb_root(uvm_map_addr_RBT_TYPE, &head->rbh_root); } __attribute__((__unused__)) static inline int uvm_map_addr_RBT_EMPTY(struct uvm_map_addr *head) { return _rb_empty(&head->rbh_root); } __attribute__((__unused__)) static inline struct vm_map_entry * uvm_map_addr_RBT_MIN(struct uvm_map_addr *head) { return _rb_min(uvm_map_addr_RBT_TYPE, &head->rbh_root); } __attribute__((__unused__)) static inline struct vm_map_entry * uvm_map_addr_RBT_MAX(struct uvm_map_addr *head) { return _rb_max(uvm_map_addr_RBT_TYPE, &head->rbh_root); } __attribute__((__unused__)) static inline struct vm_map_entry * uvm_map_addr_RBT_NEXT(struct vm_map_entry *elm) { return _rb_next(uvm_map_addr_RBT_TYPE, elm); } __attribute__((__unused__)) static inline struct vm_map_entry * uvm_map_addr_RBT_PREV(struct vm_map_entry *elm) { return _rb_prev(uvm_map_addr_RBT_TYPE, elm); } __attribute__((__unused__)) static inline struct vm_map_entry * uvm_map_addr_RBT_LEFT(struct vm_map_entry *elm) { return _rb_left(uvm_map_addr_RBT_TYPE, elm); } __attribute__((__unused__)) static inline struct vm_map_entry * uvm_map_addr_RBT_RIGHT(struct vm_map_entry *elm) { return _rb_right(uvm_map_addr_RBT_TYPE, elm); } __attribute__((__unused__)) static inline struct vm_map_entry * uvm_map_addr_RBT_PARENT(struct vm_map_entry *elm) { return _rb_parent(uvm_map_addr_RBT_TYPE, elm); } __attribute__((__unused__)) static inline void uvm_map_addr_RBT_SET_LEFT(struct vm_map_entry *elm, struct vm_map_entry *left) { return _rb_set_left(uvm_map_addr_RBT_TYPE, elm, left); } __attribute__((__unused__)) static inline void uvm_map_addr_RBT_SET_RIGHT(struct vm_map_entry *elm, struct vm_map_entry *right) { return _rb_set_right(uvm_map_addr_RBT_TYPE, elm, right); } __attribute__((__unused__)) static inline void uvm_map_addr_RBT_SET_PARENT(struct vm_map_entry *elm, struct vm_map_entry *parent) { return _rb_set_parent(uvm_map_addr_RBT_TYPE, elm, parent); } __attribute__((__unused__)) static inline void uvm_map_addr_RBT_POISON(struct vm_map_entry *elm, unsigned long poison) { return _rb_poison(uvm_map_addr_RBT_TYPE, elm, poison); } __attribute__((__unused__)) static inline int uvm_map_addr_RBT_CHECK(struct vm_map_entry *elm, unsigned long poison) { return _rb_check(uvm_map_addr_RBT_TYPE, elm, poison); };
struct vm_map {
 struct pmap * pmap;
 struct rwlock lock;
 struct mutex mtx;
 struct uvm_map_addr addr;
 vsize_t size;
 int ref_count;
 int flags;
 struct mutex flags_lock;
 unsigned int timestamp;
 vaddr_t min_offset;
 vaddr_t max_offset;
 vaddr_t b_start;
 vaddr_t b_end;
 vaddr_t s_start;
 vaddr_t s_end;
 struct uvm_addr_state *uaddr_exe;
 struct uvm_addr_state *uaddr_any[4];
 struct uvm_addr_state *uaddr_brk_stack;
};
struct vm_map_intrsafe {
 struct vm_map vmi_map;
 struct { struct vm_map_intrsafe *le_next; struct vm_map_intrsafe **le_prev; } vmi_list;
};
extern vaddr_t uvm_maxkaddr;
void uvm_map_deallocate(vm_map_t);
int uvm_map_clean(vm_map_t, vaddr_t, vaddr_t, int);
vm_map_t uvm_map_create(pmap_t, vaddr_t, vaddr_t, int);
int uvm_map_extract(struct vm_map*, vaddr_t, vsize_t, vaddr_t*,
      int);
vaddr_t uvm_map_pie(vaddr_t);
vaddr_t uvm_map_hint(struct vmspace *, vm_prot_t, vaddr_t, vaddr_t);
int uvm_map_inherit(vm_map_t, vaddr_t, vaddr_t, vm_inherit_t);
int uvm_map_advice(vm_map_t, vaddr_t, vaddr_t, int);
void uvm_map_init(void);
boolean_t uvm_map_lookup_entry(vm_map_t, vaddr_t, vm_map_entry_t *);
int uvm_map_replace(vm_map_t, vaddr_t, vaddr_t,
      vm_map_entry_t, int);
int uvm_map_reserve(vm_map_t, vsize_t, vaddr_t, vsize_t,
      vaddr_t *);
void uvm_map_setup(vm_map_t, vaddr_t, vaddr_t, int);
int uvm_map_submap(vm_map_t, vaddr_t, vaddr_t, vm_map_t);
void uvm_unmap(vm_map_t, vaddr_t, vaddr_t);
void uvm_map_set_uaddr(struct vm_map*, struct uvm_addr_state**,
      struct uvm_addr_state*);
int uvm_map_mquery(struct vm_map*, vaddr_t*, vsize_t, voff_t, int);
void uvm_unmap_detach(struct uvm_map_deadq*, int);
void uvm_unmap_remove(struct vm_map*, vaddr_t, vaddr_t,
      struct uvm_map_deadq*, boolean_t, boolean_t);
struct kinfo_vmentry;
int uvm_map_fill_vmmap(struct vm_map *, struct kinfo_vmentry *,
      size_t *);
boolean_t vm_map_lock_try_ln(struct vm_map*, char*, int);
void vm_map_lock_ln(struct vm_map*, char*, int);
void vm_map_lock_read_ln(struct vm_map*, char*, int);
void vm_map_unlock_ln(struct vm_map*, char*, int);
void vm_map_unlock_read_ln(struct vm_map*, char*, int);
void vm_map_downgrade_ln(struct vm_map*, char*, int);
void vm_map_upgrade_ln(struct vm_map*, char*, int);
void vm_map_busy_ln(struct vm_map*, char*, int);
void vm_map_unbusy_ln(struct vm_map*, char*, int);
struct uvm_faultinfo {
 vm_map_t orig_map;
 vaddr_t orig_rvaddr;
 vsize_t orig_size;
 vm_map_t map;
 unsigned int mapv;
 vm_map_entry_t entry;
 vsize_t size;
};
void uvmfault_init(void);
boolean_t uvmfault_lookup(struct uvm_faultinfo *, boolean_t);
boolean_t uvmfault_relock(struct uvm_faultinfo *);
void uvmfault_unlockall(struct uvm_faultinfo *, struct vm_amap *,
      struct uvm_object *, struct vm_anon *);
int uvmfault_anonget(struct uvm_faultinfo *, struct vm_amap *,
      struct vm_anon *);
int uvm_fault_wire(vm_map_t, vaddr_t, vaddr_t, vm_prot_t);
void uvm_fault_unwire(vm_map_t, vaddr_t, vaddr_t);
void uvm_fault_unwire_locked(vm_map_t, vaddr_t, vaddr_t);
struct uvm_pagerops {
 void (*pgo_init)(void);
 void (*pgo_reference)(struct uvm_object *);
 void (*pgo_detach)(struct uvm_object *);
 int (*pgo_fault)(struct uvm_faultinfo *, vaddr_t,
     vm_page_t *, int, int, vm_fault_t,
     vm_prot_t, int);
 boolean_t (*pgo_flush)(struct uvm_object *, voff_t,
     voff_t, int);
 int (*pgo_get)(struct uvm_object *, voff_t,
     vm_page_t *, int *, int, vm_prot_t, int, int);
 int (*pgo_put)(struct uvm_object *, vm_page_t *,
     int, boolean_t);
 void (*pgo_cluster)(struct uvm_object *, voff_t,
     voff_t *, voff_t *);
 struct vm_page ** (*pgo_mk_pcluster)(struct uvm_object *,
     struct vm_page **, int *, struct vm_page *,
     int, voff_t, voff_t);
};
void uvm_pager_dropcluster(struct uvm_object *, struct vm_page *,
      struct vm_page **, int *, int);
void uvm_pager_init(void);
int uvm_pager_put(struct uvm_object *, struct vm_page *,
      struct vm_page ***, int *, int, voff_t, voff_t);
vaddr_t uvm_pagermapin(struct vm_page **, int, int);
void uvm_pagermapout(vaddr_t, int);
struct vm_page **uvm_mk_pcluster(struct uvm_object *, struct vm_page **,
      int *, struct vm_page *, int, voff_t, voff_t);
struct vmspace {
 struct vm_map vm_map;
 int vm_refcnt;
 caddr_t vm_shm;
 segsz_t vm_rssize;
 segsz_t vm_swrss;
 segsz_t vm_tsize;
 segsz_t vm_dsize;
 segsz_t vm_dused;
 segsz_t vm_ssize;
 caddr_t vm_taddr;
 caddr_t vm_daddr;
 caddr_t vm_maxsaddr;
 caddr_t vm_minsaddr;
};
struct uvm_constraint_range {
 paddr_t ucr_low;
 paddr_t ucr_high;
};
extern struct uvmexp uvmexp;
extern struct uvm_constraint_range isa_constraint;
extern struct uvm_constraint_range dma_constraint;
extern struct uvm_constraint_range no_constraint;
extern struct uvm_constraint_range *uvm_md_constraints[];
extern struct pool *uvm_aiobuf_pool;
extern struct vm_map *exec_map;
extern struct vm_map *kernel_map;
extern struct vm_map *kmem_map;
extern struct vm_map *phys_map;
extern vaddr_t vm_min_kernel_address;
void vmapbuf(struct buf *, vsize_t);
void vunmapbuf(struct buf *, vsize_t);
struct uvm_object *uao_create(vsize_t, int);
void uao_detach(struct uvm_object *);
void uao_detach_locked(struct uvm_object *);
void uao_reference(struct uvm_object *);
void uao_reference_locked(struct uvm_object *);
int uvm_fault(vm_map_t, vaddr_t, vm_fault_t, vm_prot_t);
vaddr_t uvm_uarea_alloc(void);
void uvm_uarea_free(struct proc *);
void uvm_exit(struct process *);
void uvm_init_limits(struct proc *);
boolean_t uvm_kernacc(caddr_t, size_t, int);
int uvm_vslock(struct proc *, caddr_t, size_t,
       vm_prot_t);
void uvm_vsunlock(struct proc *, caddr_t, size_t);
int uvm_vslock_device(struct proc *, void *, size_t,
       vm_prot_t, void **);
void uvm_vsunlock_device(struct proc *, void *, size_t,
       void *);
void uvm_pause(void);
void uvm_init(void);
int uvm_io(vm_map_t, struct uio *, int);
vaddr_t uvm_km_alloc1(vm_map_t, vsize_t, vsize_t, boolean_t);
void uvm_km_free(vm_map_t, vaddr_t, vsize_t);
void uvm_km_free_wakeup(vm_map_t, vaddr_t, vsize_t);
vaddr_t uvm_km_kmemalloc_pla(struct vm_map *,
       struct uvm_object *, vsize_t, vsize_t, int,
       paddr_t, paddr_t, paddr_t, paddr_t, int);
vaddr_t uvm_km_valloc(vm_map_t, vsize_t);
vaddr_t uvm_km_valloc_try(vm_map_t, vsize_t);
vaddr_t uvm_km_valloc_wait(vm_map_t, vsize_t);
vaddr_t uvm_km_valloc_align(struct vm_map *, vsize_t,
       vsize_t, int);
vaddr_t uvm_km_valloc_prefer_wait(vm_map_t, vsize_t, voff_t);
struct vm_map *uvm_km_suballoc(vm_map_t, vaddr_t *, vaddr_t *,
       vsize_t, int, boolean_t, vm_map_t);
struct kmem_va_mode {
 struct vm_map **kv_map;
 vsize_t kv_align;
 char kv_wait;
 char kv_singlepage;
};
struct kmem_pa_mode {
 struct uvm_constraint_range *kp_constraint;
 struct uvm_object **kp_object;
 paddr_t kp_align;
 paddr_t kp_boundary;
 int kp_maxseg;
 char kp_nomem;
 char kp_zero;
 char kp_pageable;
};
struct kmem_dyn_mode {
 voff_t kd_prefer;
 int *kd_slowdown;
 char kd_waitok;
 char kd_trylock;
};
extern const struct kmem_va_mode kv_any;
extern const struct kmem_va_mode kv_intrsafe;
extern const struct kmem_va_mode kv_page;
extern const struct kmem_pa_mode kp_dirty;
extern const struct kmem_pa_mode kp_zero;
extern const struct kmem_pa_mode kp_dma;
extern const struct kmem_pa_mode kp_dma_contig;
extern const struct kmem_pa_mode kp_dma_zero;
extern const struct kmem_pa_mode kp_pageable;
extern const struct kmem_pa_mode kp_none;
extern const struct kmem_dyn_mode kd_waitok;
extern const struct kmem_dyn_mode kd_nowait;
extern const struct kmem_dyn_mode kd_trylock;
void *km_alloc(size_t, const struct kmem_va_mode *,
       const struct kmem_pa_mode *,
       const struct kmem_dyn_mode *);
void km_free(void *, size_t, const struct kmem_va_mode *,
       const struct kmem_pa_mode *);
int uvm_map(vm_map_t, vaddr_t *, vsize_t,
       struct uvm_object *, voff_t, vsize_t, unsigned int);
int uvm_mapanon(vm_map_t, vaddr_t *, vsize_t, vsize_t, unsigned int);
int uvm_map_pageable(vm_map_t, vaddr_t,
       vaddr_t, boolean_t, int);
int uvm_map_pageable_all(vm_map_t, int, vsize_t);
boolean_t uvm_map_checkprot(vm_map_t, vaddr_t,
       vaddr_t, vm_prot_t);
int uvm_map_protect(vm_map_t, vaddr_t,
       vaddr_t, vm_prot_t, boolean_t);
struct vmspace *uvmspace_alloc(vaddr_t, vaddr_t,
       boolean_t, boolean_t);
void uvmspace_init(struct vmspace *, struct pmap *,
       vaddr_t, vaddr_t, boolean_t, boolean_t);
void uvmspace_exec(struct proc *, vaddr_t, vaddr_t);
struct vmspace *uvmspace_fork(struct process *);
void uvmspace_free(struct vmspace *);
struct vmspace *uvmspace_share(struct process *);
int uvm_share(vm_map_t, vaddr_t, vm_prot_t,
       vm_map_t, vaddr_t, vsize_t);
void uvm_meter(void);
int uvm_sysctl(int *, u_int, void *, size_t *,
       void *, size_t, struct proc *);
struct vm_page *uvm_pagealloc(struct uvm_object *,
       voff_t, struct vm_anon *, int);
vaddr_t uvm_pagealloc_contig(vaddr_t, vaddr_t,
       vaddr_t, vaddr_t);
int uvm_pagealloc_multi(struct uvm_object *, voff_t,
           vsize_t, int);
void uvm_pagerealloc(struct vm_page *,
       struct uvm_object *, voff_t);
int uvm_pagerealloc_multi(struct uvm_object *, voff_t,
       vsize_t, int, struct uvm_constraint_range *);
void uvm_page_physload(paddr_t, paddr_t, paddr_t,
       paddr_t, int);
void uvm_setpagesize(void);
void uvm_shutdown(void);
void uvm_aio_biodone(struct buf *);
void uvm_aio_aiodone(struct buf *);
void uvm_pageout(void *);
void uvm_aiodone_daemon(void *);
void uvm_wait(const char *);
int uvm_pglistalloc(psize_t, paddr_t, paddr_t,
       paddr_t, paddr_t, struct pglist *, int, int);
void uvm_pglistfree(struct pglist *);
void uvm_pmr_use_inc(paddr_t, paddr_t);
void uvm_swap_init(void);
typedef int uvm_coredump_setup_cb(int _nsegment, void *_cookie);
typedef int uvm_coredump_walk_cb(vaddr_t _start, vaddr_t _realend,
       vaddr_t _end, vm_prot_t _prot, int _nsegment,
       void *_cookie);
int uvm_coredump_walkmap(struct proc *_p,
       uvm_coredump_setup_cb *_setup,
       uvm_coredump_walk_cb *_walk, void *_cookie);
void uvm_grow(struct proc *, vaddr_t);
void uvm_deallocate(vm_map_t, vaddr_t, vsize_t);
struct uvm_object *uvn_attach(struct vnode *, vm_prot_t);
void uvm_pagezero_thread(void *);
void kmeminit_nkmempages(void);
void kmeminit(void);
extern u_int nkmempages;
struct process;
struct kinfo_vmentry;
int fill_vmmap(struct process *, struct kinfo_vmentry *,
       size_t *);
struct vm_amap;
void amap_populate(struct vm_aref *, vaddr_t);
int amap_add(struct vm_aref *, vaddr_t, struct vm_anon *,
      boolean_t);
struct vm_amap *amap_alloc(vaddr_t, int, int);
void amap_copy(vm_map_t, vm_map_entry_t, int, boolean_t, vaddr_t,
      vaddr_t);
void amap_cow_now(vm_map_t, vm_map_entry_t);
void amap_free(struct vm_amap *);
void amap_init(void);
struct vm_anon *amap_lookup(struct vm_aref *, vaddr_t);
void amap_lookups(struct vm_aref *, vaddr_t, struct vm_anon **, int);
void amap_ref(struct vm_amap *, vaddr_t, vsize_t, int);
void amap_splitref(struct vm_aref *, struct vm_aref *, vaddr_t);
void amap_unadd(struct vm_aref *, vaddr_t);
void amap_unref(struct vm_amap *, vaddr_t, vsize_t, int);
void amap_wipeout(struct vm_amap *);
boolean_t amap_swap_off(int, int);
struct vm_amap_chunk {
 struct { struct vm_amap_chunk *tqe_next; struct vm_amap_chunk **tqe_prev; } ac_list;
 int ac_baseslot;
 uint16_t ac_usedmap;
 uint16_t ac_nslot;
 struct vm_anon *ac_anon[];
};
struct vm_amap {
 int am_ref;
 int am_flags;
 int am_nslot;
 int am_nused;
 int *am_ppref;
 struct { struct vm_amap *le_next; struct vm_amap **le_prev; } am_list;
 union {
  struct {
   struct vm_amap_chunk **amn_buckets;
   struct { struct vm_amap_chunk *tqh_first; struct vm_amap_chunk **tqh_last; } amn_chunks;
   int amn_ncused;
   int amn_hashshift;
  } ami_normal;
  struct vm_amap_chunk ami_small;
 } am_impl;
};
void amap_pp_adjref(struct vm_amap *, int, vsize_t, int);
void amap_pp_establish(struct vm_amap *);
void amap_wiperange(struct vm_amap *, int, int);
void uao_init(void);
int uao_set_swslot(struct uvm_object *, int, int);
int uao_dropswap(struct uvm_object *, int);
int uao_swap_off(int, int);
int uao_shrink(struct uvm_object *, int);
int uao_grow(struct uvm_object *, int);
extern struct uvm_pagerops aobj_pager;
void uvm_swapout_threads(void);
struct vm_page *uvm_atopg(vaddr_t);
void uvm_km_init(vaddr_t, vaddr_t, vaddr_t);
void uvm_km_page_init(void);
void uvm_km_page_lateinit(void);
void uvm_km_pgremove(struct uvm_object *, vaddr_t, vaddr_t);
void uvm_km_pgremove_intrsafe(vaddr_t, vaddr_t);
struct uvm_km_free_page {
 struct uvm_km_free_page *next;
};
struct uvm_km_pages {
 struct mutex mtx;
 int lowat;
 int hiwat;
 int free;
 vaddr_t page[(4 * (2048))];
 struct uvm_km_free_page *freelist;
 int freelistlen;
 struct proc *km_proc;
};
extern struct uvm_km_pages uvm_km_pages;
int uvm_swap_get(struct vm_page *, int, int);
int uvm_swap_put(int, struct vm_page **, int, int);
int uvm_swap_alloc(int *, boolean_t);
void uvm_swap_free(int, int);
void uvm_swap_markbad(int, int);
void uvm_swap_freepages(struct vm_page **, int);
void uvm_swap_initcrypt_all(void);
void uvm_swap_finicrypt_all(void);
struct uvm_pmr_addr { struct rb_tree rbh_root; };
struct uvm_pmr_size { struct rb_tree rbh_root; };
struct uvm_pmemrange {
 struct uvm_pmr_addr addr;
 struct uvm_pmr_size size[2];
 struct { struct vm_page *tqh_first; struct vm_page **tqh_last; } single[2];
 paddr_t low;
 paddr_t high;
 int use;
 psize_t nsegs;
 struct { struct uvm_pmemrange *tqe_next; struct uvm_pmemrange **tqe_prev; } pmr_use;
 struct rb_entry pmr_addr;
};
struct uvm_pmalloc {
 struct { struct uvm_pmalloc *tqe_next; struct uvm_pmalloc **tqe_prev; } pmq;
 struct uvm_constraint_range pm_constraint;
 psize_t pm_size;
 int pm_flags;
};
struct uvm_pmemrange_addr { struct rb_tree rbh_root; };
struct uvm_pmemrange_use { struct uvm_pmemrange *tqh_first; struct uvm_pmemrange **tqh_last; };
struct uvm_pmr_control {
 struct uvm_pmemrange_addr addr;
 struct uvm_pmemrange_use use;
 struct { struct uvm_pmalloc *tqh_first; struct uvm_pmalloc **tqh_last; } allocs;
};
void uvm_pmr_freepages(struct vm_page *, psize_t);
void uvm_pmr_freepageq(struct pglist *);
int uvm_pmr_getpages(psize_t, paddr_t, paddr_t, paddr_t, paddr_t,
     int, int, struct pglist *);
void uvm_pmr_init(void);
int uvm_wait_pla(paddr_t, paddr_t, paddr_t, int);
void uvm_wakeup_pla(paddr_t, psize_t);
int uvm_pmr_isfree(struct vm_page *pg);
int uvm_pmr_addr_cmp(const struct vm_page *, const struct vm_page *);
int uvm_pmr_size_cmp(const struct vm_page *, const struct vm_page *);
extern const struct rb_type *const uvm_pmr_addr_RBT_TYPE; __attribute__((__unused__)) static inline void uvm_pmr_addr_RBT_INIT(struct uvm_pmr_addr *head) { _rb_init(&head->rbh_root); } __attribute__((__unused__)) static inline struct vm_page * uvm_pmr_addr_RBT_INSERT(struct uvm_pmr_addr *head, struct vm_page *elm) { return _rb_insert(uvm_pmr_addr_RBT_TYPE, &head->rbh_root, elm); } __attribute__((__unused__)) static inline struct vm_page * uvm_pmr_addr_RBT_REMOVE(struct uvm_pmr_addr *head, struct vm_page *elm) { return _rb_remove(uvm_pmr_addr_RBT_TYPE, &head->rbh_root, elm); } __attribute__((__unused__)) static inline struct vm_page * uvm_pmr_addr_RBT_FIND(struct uvm_pmr_addr *head, const struct vm_page *key) { return _rb_find(uvm_pmr_addr_RBT_TYPE, &head->rbh_root, key); } __attribute__((__unused__)) static inline struct vm_page * uvm_pmr_addr_RBT_NFIND(struct uvm_pmr_addr *head, const struct vm_page *key) { return _rb_nfind(uvm_pmr_addr_RBT_TYPE, &head->rbh_root, key); } __attribute__((__unused__)) static inline struct vm_page * uvm_pmr_addr_RBT_ROOT(struct uvm_pmr_addr *head) { return _rb_root(uvm_pmr_addr_RBT_TYPE, &head->rbh_root); } __attribute__((__unused__)) static inline int uvm_pmr_addr_RBT_EMPTY(struct uvm_pmr_addr *head) { return _rb_empty(&head->rbh_root); } __attribute__((__unused__)) static inline struct vm_page * uvm_pmr_addr_RBT_MIN(struct uvm_pmr_addr *head) { return _rb_min(uvm_pmr_addr_RBT_TYPE, &head->rbh_root); } __attribute__((__unused__)) static inline struct vm_page * uvm_pmr_addr_RBT_MAX(struct uvm_pmr_addr *head) { return _rb_max(uvm_pmr_addr_RBT_TYPE, &head->rbh_root); } __attribute__((__unused__)) static inline struct vm_page * uvm_pmr_addr_RBT_NEXT(struct vm_page *elm) { return _rb_next(uvm_pmr_addr_RBT_TYPE, elm); } __attribute__((__unused__)) static inline struct vm_page * uvm_pmr_addr_RBT_PREV(struct vm_page *elm) { return _rb_prev(uvm_pmr_addr_RBT_TYPE, elm); } __attribute__((__unused__)) static inline struct vm_page * uvm_pmr_addr_RBT_LEFT(struct vm_page *elm) { return _rb_left(uvm_pmr_addr_RBT_TYPE, elm); } __attribute__((__unused__)) static inline struct vm_page * uvm_pmr_addr_RBT_RIGHT(struct vm_page *elm) { return _rb_right(uvm_pmr_addr_RBT_TYPE, elm); } __attribute__((__unused__)) static inline struct vm_page * uvm_pmr_addr_RBT_PARENT(struct vm_page *elm) { return _rb_parent(uvm_pmr_addr_RBT_TYPE, elm); } __attribute__((__unused__)) static inline void uvm_pmr_addr_RBT_SET_LEFT(struct vm_page *elm, struct vm_page *left) { return _rb_set_left(uvm_pmr_addr_RBT_TYPE, elm, left); } __attribute__((__unused__)) static inline void uvm_pmr_addr_RBT_SET_RIGHT(struct vm_page *elm, struct vm_page *right) { return _rb_set_right(uvm_pmr_addr_RBT_TYPE, elm, right); } __attribute__((__unused__)) static inline void uvm_pmr_addr_RBT_SET_PARENT(struct vm_page *elm, struct vm_page *parent) { return _rb_set_parent(uvm_pmr_addr_RBT_TYPE, elm, parent); } __attribute__((__unused__)) static inline void uvm_pmr_addr_RBT_POISON(struct vm_page *elm, unsigned long poison) { return _rb_poison(uvm_pmr_addr_RBT_TYPE, elm, poison); } __attribute__((__unused__)) static inline int uvm_pmr_addr_RBT_CHECK(struct vm_page *elm, unsigned long poison) { return _rb_check(uvm_pmr_addr_RBT_TYPE, elm, poison); };
extern const struct rb_type *const uvm_pmr_size_RBT_TYPE; __attribute__((__unused__)) static inline void uvm_pmr_size_RBT_INIT(struct uvm_pmr_size *head) { _rb_init(&head->rbh_root); } __attribute__((__unused__)) static inline struct vm_page * uvm_pmr_size_RBT_INSERT(struct uvm_pmr_size *head, struct vm_page *elm) { return _rb_insert(uvm_pmr_size_RBT_TYPE, &head->rbh_root, elm); } __attribute__((__unused__)) static inline struct vm_page * uvm_pmr_size_RBT_REMOVE(struct uvm_pmr_size *head, struct vm_page *elm) { return _rb_remove(uvm_pmr_size_RBT_TYPE, &head->rbh_root, elm); } __attribute__((__unused__)) static inline struct vm_page * uvm_pmr_size_RBT_FIND(struct uvm_pmr_size *head, const struct vm_page *key) { return _rb_find(uvm_pmr_size_RBT_TYPE, &head->rbh_root, key); } __attribute__((__unused__)) static inline struct vm_page * uvm_pmr_size_RBT_NFIND(struct uvm_pmr_size *head, const struct vm_page *key) { return _rb_nfind(uvm_pmr_size_RBT_TYPE, &head->rbh_root, key); } __attribute__((__unused__)) static inline struct vm_page * uvm_pmr_size_RBT_ROOT(struct uvm_pmr_size *head) { return _rb_root(uvm_pmr_size_RBT_TYPE, &head->rbh_root); } __attribute__((__unused__)) static inline int uvm_pmr_size_RBT_EMPTY(struct uvm_pmr_size *head) { return _rb_empty(&head->rbh_root); } __attribute__((__unused__)) static inline struct vm_page * uvm_pmr_size_RBT_MIN(struct uvm_pmr_size *head) { return _rb_min(uvm_pmr_size_RBT_TYPE, &head->rbh_root); } __attribute__((__unused__)) static inline struct vm_page * uvm_pmr_size_RBT_MAX(struct uvm_pmr_size *head) { return _rb_max(uvm_pmr_size_RBT_TYPE, &head->rbh_root); } __attribute__((__unused__)) static inline struct vm_page * uvm_pmr_size_RBT_NEXT(struct vm_page *elm) { return _rb_next(uvm_pmr_size_RBT_TYPE, elm); } __attribute__((__unused__)) static inline struct vm_page * uvm_pmr_size_RBT_PREV(struct vm_page *elm) { return _rb_prev(uvm_pmr_size_RBT_TYPE, elm); } __attribute__((__unused__)) static inline struct vm_page * uvm_pmr_size_RBT_LEFT(struct vm_page *elm) { return _rb_left(uvm_pmr_size_RBT_TYPE, elm); } __attribute__((__unused__)) static inline struct vm_page * uvm_pmr_size_RBT_RIGHT(struct vm_page *elm) { return _rb_right(uvm_pmr_size_RBT_TYPE, elm); } __attribute__((__unused__)) static inline struct vm_page * uvm_pmr_size_RBT_PARENT(struct vm_page *elm) { return _rb_parent(uvm_pmr_size_RBT_TYPE, elm); } __attribute__((__unused__)) static inline void uvm_pmr_size_RBT_SET_LEFT(struct vm_page *elm, struct vm_page *left) { return _rb_set_left(uvm_pmr_size_RBT_TYPE, elm, left); } __attribute__((__unused__)) static inline void uvm_pmr_size_RBT_SET_RIGHT(struct vm_page *elm, struct vm_page *right) { return _rb_set_right(uvm_pmr_size_RBT_TYPE, elm, right); } __attribute__((__unused__)) static inline void uvm_pmr_size_RBT_SET_PARENT(struct vm_page *elm, struct vm_page *parent) { return _rb_set_parent(uvm_pmr_size_RBT_TYPE, elm, parent); } __attribute__((__unused__)) static inline void uvm_pmr_size_RBT_POISON(struct vm_page *elm, unsigned long poison) { return _rb_poison(uvm_pmr_size_RBT_TYPE, elm, poison); } __attribute__((__unused__)) static inline int uvm_pmr_size_RBT_CHECK(struct vm_page *elm, unsigned long poison) { return _rb_check(uvm_pmr_size_RBT_TYPE, elm, poison); };
extern const struct rb_type *const uvm_pmemrange_addr_RBT_TYPE; __attribute__((__unused__)) static inline void uvm_pmemrange_addr_RBT_INIT(struct uvm_pmemrange_addr *head) { _rb_init(&head->rbh_root); } __attribute__((__unused__)) static inline struct uvm_pmemrange * uvm_pmemrange_addr_RBT_INSERT(struct uvm_pmemrange_addr *head, struct uvm_pmemrange *elm) { return _rb_insert(uvm_pmemrange_addr_RBT_TYPE, &head->rbh_root, elm); } __attribute__((__unused__)) static inline struct uvm_pmemrange * uvm_pmemrange_addr_RBT_REMOVE(struct uvm_pmemrange_addr *head, struct uvm_pmemrange *elm) { return _rb_remove(uvm_pmemrange_addr_RBT_TYPE, &head->rbh_root, elm); } __attribute__((__unused__)) static inline struct uvm_pmemrange * uvm_pmemrange_addr_RBT_FIND(struct uvm_pmemrange_addr *head, const struct uvm_pmemrange *key) { return _rb_find(uvm_pmemrange_addr_RBT_TYPE, &head->rbh_root, key); } __attribute__((__unused__)) static inline struct uvm_pmemrange * uvm_pmemrange_addr_RBT_NFIND(struct uvm_pmemrange_addr *head, const struct uvm_pmemrange *key) { return _rb_nfind(uvm_pmemrange_addr_RBT_TYPE, &head->rbh_root, key); } __attribute__((__unused__)) static inline struct uvm_pmemrange * uvm_pmemrange_addr_RBT_ROOT(struct uvm_pmemrange_addr *head) { return _rb_root(uvm_pmemrange_addr_RBT_TYPE, &head->rbh_root); } __attribute__((__unused__)) static inline int uvm_pmemrange_addr_RBT_EMPTY(struct uvm_pmemrange_addr *head) { return _rb_empty(&head->rbh_root); } __attribute__((__unused__)) static inline struct uvm_pmemrange * uvm_pmemrange_addr_RBT_MIN(struct uvm_pmemrange_addr *head) { return _rb_min(uvm_pmemrange_addr_RBT_TYPE, &head->rbh_root); } __attribute__((__unused__)) static inline struct uvm_pmemrange * uvm_pmemrange_addr_RBT_MAX(struct uvm_pmemrange_addr *head) { return _rb_max(uvm_pmemrange_addr_RBT_TYPE, &head->rbh_root); } __attribute__((__unused__)) static inline struct uvm_pmemrange * uvm_pmemrange_addr_RBT_NEXT(struct uvm_pmemrange *elm) { return _rb_next(uvm_pmemrange_addr_RBT_TYPE, elm); } __attribute__((__unused__)) static inline struct uvm_pmemrange * uvm_pmemrange_addr_RBT_PREV(struct uvm_pmemrange *elm) { return _rb_prev(uvm_pmemrange_addr_RBT_TYPE, elm); } __attribute__((__unused__)) static inline struct uvm_pmemrange * uvm_pmemrange_addr_RBT_LEFT(struct uvm_pmemrange *elm) { return _rb_left(uvm_pmemrange_addr_RBT_TYPE, elm); } __attribute__((__unused__)) static inline struct uvm_pmemrange * uvm_pmemrange_addr_RBT_RIGHT(struct uvm_pmemrange *elm) { return _rb_right(uvm_pmemrange_addr_RBT_TYPE, elm); } __attribute__((__unused__)) static inline struct uvm_pmemrange * uvm_pmemrange_addr_RBT_PARENT(struct uvm_pmemrange *elm) { return _rb_parent(uvm_pmemrange_addr_RBT_TYPE, elm); } __attribute__((__unused__)) static inline void uvm_pmemrange_addr_RBT_SET_LEFT(struct uvm_pmemrange *elm, struct uvm_pmemrange *left) { return _rb_set_left(uvm_pmemrange_addr_RBT_TYPE, elm, left); } __attribute__((__unused__)) static inline void uvm_pmemrange_addr_RBT_SET_RIGHT(struct uvm_pmemrange *elm, struct uvm_pmemrange *right) { return _rb_set_right(uvm_pmemrange_addr_RBT_TYPE, elm, right); } __attribute__((__unused__)) static inline void uvm_pmemrange_addr_RBT_SET_PARENT(struct uvm_pmemrange *elm, struct uvm_pmemrange *parent) { return _rb_set_parent(uvm_pmemrange_addr_RBT_TYPE, elm, parent); } __attribute__((__unused__)) static inline void uvm_pmemrange_addr_RBT_POISON(struct uvm_pmemrange *elm, unsigned long poison) { return _rb_poison(uvm_pmemrange_addr_RBT_TYPE, elm, poison); } __attribute__((__unused__)) static inline int uvm_pmemrange_addr_RBT_CHECK(struct uvm_pmemrange *elm, unsigned long poison) { return _rb_check(uvm_pmemrange_addr_RBT_TYPE, elm, poison); };
struct vm_page *uvm_pmr_insert_addr(struct uvm_pmemrange *,
       struct vm_page *, int);
void uvm_pmr_insert_size(struct uvm_pmemrange *,
       struct vm_page *);
struct vm_page *uvm_pmr_insert(struct uvm_pmemrange *,
       struct vm_page *, int);
void uvm_pmr_remove_addr(struct uvm_pmemrange *,
       struct vm_page *);
void uvm_pmr_remove_size(struct uvm_pmemrange *,
       struct vm_page *);
void uvm_pmr_remove(struct uvm_pmemrange *,
       struct vm_page *);
struct vm_page *uvm_pmr_extract_range(struct uvm_pmemrange *,
       struct vm_page *, paddr_t, paddr_t,
       struct pglist *);
struct uvm {
 struct pglist page_active;
 struct pglist page_inactive_swp;
 struct pglist page_inactive_obj;
 struct mutex pageqlock;
 struct mutex fpageqlock;
 boolean_t page_init_done;
 struct uvm_pmr_control pmr_control;
 int pagedaemon;
 struct proc *pagedaemon_proc;
 int aiodoned;
 struct proc *aiodoned_proc;
 struct mutex aiodoned_lock;
 struct { struct vm_map_entry *slh_first; } kentry_free;
 struct { struct buf *tqh_first; struct buf **tqh_last; } aio_done;
 struct uvm_object *kernel_object;
};
extern struct uvm uvm;
struct vm_map_entry *uvm_map_entrybyaddr(struct uvm_map_addr *, vaddr_t);
int uvm_map_isavail(struct vm_map *,
       struct uvm_addr_state *,
       struct vm_map_entry **, struct vm_map_entry**,
       vaddr_t, vsize_t);
struct uvm_addr_state *uvm_map_uaddr(struct vm_map *, vaddr_t);
struct uvm_addr_state *uvm_map_uaddr_e(struct vm_map *, struct vm_map_entry *);
void uvm_map_printit(vm_map_t, boolean_t,
     int (*)(const char *, ...));
void uvm_object_printit(struct uvm_object *, boolean_t,
     int (*)(const char *, ...));
void uvm_page_printit(struct vm_page *, boolean_t,
     int (*)(const char *, ...));
void uvmexp_print(int (*)(const char *, ...));
struct uvm_addr_state {
 vaddr_t uaddr_minaddr;
 vaddr_t uaddr_maxaddr;
 const struct uvm_addr_functions *uaddr_functions;
};
struct uvm_addr_functions {
 int (*uaddr_select)(struct vm_map *map,
     struct uvm_addr_state *uaddr,
     struct vm_map_entry **entry_out, vaddr_t *addr_out,
     vsize_t sz, vaddr_t align, vaddr_t offset,
     vm_prot_t prot, vaddr_t hint);
 void (*uaddr_free_insert)(struct vm_map *map,
     struct uvm_addr_state *uaddr_state,
     struct vm_map_entry *entry);
 void (*uaddr_free_remove)(struct vm_map *map,
     struct uvm_addr_state *uaddr_state,
     struct vm_map_entry *entry);
 void (*uaddr_destroy)(struct uvm_addr_state *uaddr_state);
 void (*uaddr_print)(struct uvm_addr_state *uaddr_state, boolean_t full,
     int (*pr)(const char *, ...));
 const char* uaddr_name;
};
void uvm_addr_init(void);
void uvm_addr_destroy(struct uvm_addr_state *);
vaddr_t uvm_addr_align(vaddr_t, vaddr_t, vaddr_t);
vaddr_t uvm_addr_align_back(vaddr_t, vaddr_t, vaddr_t);
int uvm_addr_linsearch(struct vm_map *,
       struct uvm_addr_state *, struct vm_map_entry **,
       vaddr_t *addr_out, vaddr_t, vsize_t,
       vaddr_t, vaddr_t, int, vaddr_t, vaddr_t,
       vsize_t, vsize_t);
int uvm_addr_invoke(struct vm_map *,
       struct uvm_addr_state *, struct vm_map_entry **,
       struct vm_map_entry **, vaddr_t*,
       vsize_t, vaddr_t, vaddr_t, vm_prot_t, vaddr_t);
struct uvm_addr_state *uaddr_rnd_create(vaddr_t, vaddr_t);
struct uvm_addr_state *uaddr_bestfit_create(vaddr_t, vaddr_t);
struct uvm_addr_state *uaddr_pivot_create(vaddr_t, vaddr_t);
struct uvm_addr_state *uaddr_stack_brk_create(vaddr_t, vaddr_t);
int uvm_addr_fitspace(vaddr_t *, vaddr_t *,
       vaddr_t, vaddr_t, vsize_t, vaddr_t, vaddr_t,
       vsize_t, vsize_t);
void uvm_addr_print(struct uvm_addr_state *, const char *,
       boolean_t, int (*pr)(const char *, ...));
struct uaddr_free_rbtree { struct rb_tree rbh_root; };
extern const struct rb_type *const uaddr_free_rbtree_RBT_TYPE; __attribute__((__unused__)) static inline void uaddr_free_rbtree_RBT_INIT(struct uaddr_free_rbtree *head) { _rb_init(&head->rbh_root); } __attribute__((__unused__)) static inline struct vm_map_entry * uaddr_free_rbtree_RBT_INSERT(struct uaddr_free_rbtree *head, struct vm_map_entry *elm) { return _rb_insert(uaddr_free_rbtree_RBT_TYPE, &head->rbh_root, elm); } __attribute__((__unused__)) static inline struct vm_map_entry * uaddr_free_rbtree_RBT_REMOVE(struct uaddr_free_rbtree *head, struct vm_map_entry *elm) { return _rb_remove(uaddr_free_rbtree_RBT_TYPE, &head->rbh_root, elm); } __attribute__((__unused__)) static inline struct vm_map_entry * uaddr_free_rbtree_RBT_FIND(struct uaddr_free_rbtree *head, const struct vm_map_entry *key) { return _rb_find(uaddr_free_rbtree_RBT_TYPE, &head->rbh_root, key); } __attribute__((__unused__)) static inline struct vm_map_entry * uaddr_free_rbtree_RBT_NFIND(struct uaddr_free_rbtree *head, const struct vm_map_entry *key) { return _rb_nfind(uaddr_free_rbtree_RBT_TYPE, &head->rbh_root, key); } __attribute__((__unused__)) static inline struct vm_map_entry * uaddr_free_rbtree_RBT_ROOT(struct uaddr_free_rbtree *head) { return _rb_root(uaddr_free_rbtree_RBT_TYPE, &head->rbh_root); } __attribute__((__unused__)) static inline int uaddr_free_rbtree_RBT_EMPTY(struct uaddr_free_rbtree *head) { return _rb_empty(&head->rbh_root); } __attribute__((__unused__)) static inline struct vm_map_entry * uaddr_free_rbtree_RBT_MIN(struct uaddr_free_rbtree *head) { return _rb_min(uaddr_free_rbtree_RBT_TYPE, &head->rbh_root); } __attribute__((__unused__)) static inline struct vm_map_entry * uaddr_free_rbtree_RBT_MAX(struct uaddr_free_rbtree *head) { return _rb_max(uaddr_free_rbtree_RBT_TYPE, &head->rbh_root); } __attribute__((__unused__)) static inline struct vm_map_entry * uaddr_free_rbtree_RBT_NEXT(struct vm_map_entry *elm) { return _rb_next(uaddr_free_rbtree_RBT_TYPE, elm); } __attribute__((__unused__)) static inline struct vm_map_entry * uaddr_free_rbtree_RBT_PREV(struct vm_map_entry *elm) { return _rb_prev(uaddr_free_rbtree_RBT_TYPE, elm); } __attribute__((__unused__)) static inline struct vm_map_entry * uaddr_free_rbtree_RBT_LEFT(struct vm_map_entry *elm) { return _rb_left(uaddr_free_rbtree_RBT_TYPE, elm); } __attribute__((__unused__)) static inline struct vm_map_entry * uaddr_free_rbtree_RBT_RIGHT(struct vm_map_entry *elm) { return _rb_right(uaddr_free_rbtree_RBT_TYPE, elm); } __attribute__((__unused__)) static inline struct vm_map_entry * uaddr_free_rbtree_RBT_PARENT(struct vm_map_entry *elm) { return _rb_parent(uaddr_free_rbtree_RBT_TYPE, elm); } __attribute__((__unused__)) static inline void uaddr_free_rbtree_RBT_SET_LEFT(struct vm_map_entry *elm, struct vm_map_entry *left) { return _rb_set_left(uaddr_free_rbtree_RBT_TYPE, elm, left); } __attribute__((__unused__)) static inline void uaddr_free_rbtree_RBT_SET_RIGHT(struct vm_map_entry *elm, struct vm_map_entry *right) { return _rb_set_right(uaddr_free_rbtree_RBT_TYPE, elm, right); } __attribute__((__unused__)) static inline void uaddr_free_rbtree_RBT_SET_PARENT(struct vm_map_entry *elm, struct vm_map_entry *parent) { return _rb_set_parent(uaddr_free_rbtree_RBT_TYPE, elm, parent); } __attribute__((__unused__)) static inline void uaddr_free_rbtree_RBT_POISON(struct vm_map_entry *elm, unsigned long poison) { return _rb_poison(uaddr_free_rbtree_RBT_TYPE, elm, poison); } __attribute__((__unused__)) static inline int uaddr_free_rbtree_RBT_CHECK(struct vm_map_entry *elm, unsigned long poison) { return _rb_check(uaddr_free_rbtree_RBT_TYPE, elm, poison); };
extern struct uvm_addr_state uaddr_kbootstrap;
vsize_t uvmspace_dused(struct vm_map*, vaddr_t, vaddr_t);
int uvm_mapent_isjoinable(struct vm_map*,
       struct vm_map_entry*, struct vm_map_entry*);
struct vm_map_entry *uvm_mapent_merge(struct vm_map*, struct vm_map_entry*,
       struct vm_map_entry*, struct uvm_map_deadq*);
struct vm_map_entry *uvm_mapent_tryjoin(struct vm_map*,
       struct vm_map_entry*, struct uvm_map_deadq*);
struct vm_map_entry *uvm_map_mkentry(struct vm_map*, struct vm_map_entry*,
       struct vm_map_entry*, vaddr_t, vsize_t, int,
       struct uvm_map_deadq*, struct vm_map_entry*);
struct vm_map_entry *uvm_mapent_alloc(struct vm_map*, int);
void uvm_mapent_free(struct vm_map_entry*);
void uvm_unmap_kill_entry(struct vm_map*,
       struct vm_map_entry*);
void uvm_unmap_detach_intrsafe(struct uvm_map_deadq *);
void uvm_mapent_mkfree(struct vm_map*,
       struct vm_map_entry*, struct vm_map_entry**,
       struct uvm_map_deadq*, boolean_t);
void uvm_map_pageable_pgon(struct vm_map*,
       struct vm_map_entry*, struct vm_map_entry*,
       vaddr_t, vaddr_t);
int uvm_map_pageable_wire(struct vm_map*,
       struct vm_map_entry*, struct vm_map_entry*,
       vaddr_t, vaddr_t, int);
void uvm_map_setup_entries(struct vm_map*);
void uvm_map_setup_md(struct vm_map*);
void uvm_map_teardown(struct vm_map*);
void uvm_map_vmspace_update(struct vm_map*,
       struct uvm_map_deadq*, int);
void uvm_map_kmem_grow(struct vm_map*,
       struct uvm_map_deadq*, vsize_t, int);
void uvm_map_freelist_update_clear(struct vm_map*,
       struct uvm_map_deadq*);
void uvm_map_freelist_update_refill(struct vm_map *, int);
void uvm_map_freelist_update(struct vm_map*,
       struct uvm_map_deadq*, vaddr_t, vaddr_t,
       vaddr_t, vaddr_t, int);
struct vm_map_entry *uvm_map_fix_space(struct vm_map*, struct vm_map_entry*,
       vaddr_t, vaddr_t, int);
int uvm_map_sel_limits(vaddr_t*, vaddr_t*, vsize_t, int,
       struct vm_map_entry*, vaddr_t, vaddr_t, vaddr_t,
       int);
int uvm_map_findspace(struct vm_map*,
       struct vm_map_entry**, struct vm_map_entry**,
       vaddr_t*, vsize_t, vaddr_t, vaddr_t, vm_prot_t,
       vaddr_t);
vsize_t uvm_map_addr_augment_get(struct vm_map_entry*);
void uvm_map_addr_augment(struct vm_map_entry*);
static __inline void uvm_mapent_copy(struct vm_map_entry*,
       struct vm_map_entry*);
static inline int uvm_mapentry_addrcmp(const struct vm_map_entry*,
       const struct vm_map_entry*);
void uvm_mapent_free_insert(struct vm_map*,
       struct uvm_addr_state*, struct vm_map_entry*);
void uvm_mapent_free_remove(struct vm_map*,
       struct uvm_addr_state*, struct vm_map_entry*);
void uvm_mapent_addr_insert(struct vm_map*,
       struct vm_map_entry*);
void uvm_mapent_addr_remove(struct vm_map*,
       struct vm_map_entry*);
void uvm_map_splitentry(struct vm_map*,
       struct vm_map_entry*, struct vm_map_entry*,
       vaddr_t);
vsize_t uvm_map_boundary(struct vm_map*, vaddr_t, vaddr_t);
int uvm_mapent_bias(struct vm_map*, struct vm_map_entry*);
struct vm_map_entry *uvm_mapent_clone(struct vm_map*, vaddr_t, vsize_t,
       vsize_t, vm_prot_t, vm_prot_t,
       struct vm_map_entry*, struct uvm_map_deadq*, int,
       int);
struct vm_map_entry *uvm_mapent_share(struct vm_map*, vaddr_t, vsize_t,
       vsize_t, vm_prot_t, vm_prot_t, struct vm_map*,
       struct vm_map_entry*, struct uvm_map_deadq*);
struct vm_map_entry *uvm_mapent_forkshared(struct vmspace*, struct vm_map*,
       struct vm_map*, struct vm_map_entry*,
       struct uvm_map_deadq*);
struct vm_map_entry *uvm_mapent_forkcopy(struct vmspace*, struct vm_map*,
       struct vm_map*, struct vm_map_entry*,
       struct uvm_map_deadq*);
struct vm_map_entry *uvm_mapent_forkzero(struct vmspace*, struct vm_map*,
       struct vm_map*, struct vm_map_entry*,
       struct uvm_map_deadq*);
static struct mutex uvm_kmapent_mtx;
static struct timeval uvm_kmapent_last_warn_time;
static struct timeval uvm_kmapent_warn_rate = { 10, 0 };
const char vmmapbsy[] = "vmmapbsy";
struct pool uvm_vmspace_pool;
struct pool uvm_map_entry_pool;
struct pool uvm_map_entry_kmem_pool;
vaddr_t uvm_maxkaddr;
static inline int
uvm_mapentry_addrcmp(const struct vm_map_entry *e1,
    const struct vm_map_entry *e2)
{
 return e1->start < e2->start ? -1 : e1->start > e2->start;
}
static __inline void
uvm_mapent_copy(struct vm_map_entry *src, struct vm_map_entry *dst)
{
 caddr_t csrc, cdst;
 size_t sz;
 csrc = (caddr_t)src;
 cdst = (caddr_t)dst;
 csrc += __builtin_offsetof(struct vm_map_entry, start);
 cdst += __builtin_offsetof(struct vm_map_entry, start);
 sz = __builtin_offsetof(struct vm_map_entry, flags) -
     __builtin_offsetof(struct vm_map_entry, start);
 __builtin_memcpy((cdst), (csrc), (sz));
}
void
uvm_mapent_free_insert(struct vm_map *map, struct uvm_addr_state *uaddr,
    struct vm_map_entry *entry)
{
 const struct uvm_addr_functions *fun;
 ((void)0);
 (((entry->etype & 0x80) == 0) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../uvm/uvm_map.c", 391, "(entry->etype & UVM_ET_FREEMAPPED) == 0"));
 do { if ((map)->ref_count > 0) { if (((map)->flags & 0x02) == 0) rw_assert_wrlock(&(map)->lock); else do { if ((&(map)->mtx)->mtx_owner != (__curcpu->ci_self)) panic("mutex %p not held in %s", (&(map)->mtx), __func__); } while (0); } } while (0);
 if (uaddr != ((void *)0)) {
  fun = uaddr->uaddr_functions;
  ((void)0);
  if (fun->uaddr_free_insert != ((void *)0))
   (*fun->uaddr_free_insert)(map, uaddr, entry);
  entry->etype |= 0x80;
 }
 uvm_map_addr_augment(entry);
}
void
uvm_mapent_free_remove(struct vm_map *map, struct uvm_addr_state *uaddr,
    struct vm_map_entry *entry)
{
 const struct uvm_addr_functions *fun;
 (((entry->etype & 0x80) != 0 || uaddr == ((void *)0)) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../uvm/uvm_map.c", 417, "(entry->etype & UVM_ET_FREEMAPPED) != 0 || uaddr == NULL"));
 ((uvm_map_uaddr_e(map, entry) == uaddr) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../uvm/uvm_map.c", 418, "uvm_map_uaddr_e(map, entry) == uaddr"));
 do { if ((map)->ref_count > 0) { if (((map)->flags & 0x02) == 0) rw_assert_wrlock(&(map)->lock); else do { if ((&(map)->mtx)->mtx_owner != (__curcpu->ci_self)) panic("mutex %p not held in %s", (&(map)->mtx), __func__); } while (0); } } while (0);
 if (uaddr != ((void *)0)) {
  fun = uaddr->uaddr_functions;
  if (fun->uaddr_free_remove != ((void *)0))
   (*fun->uaddr_free_remove)(map, uaddr, entry);
  entry->etype &= ~0x80;
 }
}
void
uvm_mapent_addr_insert(struct vm_map *map, struct vm_map_entry *entry)
{
 struct vm_map_entry *res;
 if (!uvm_map_addr_RBT_CHECK(entry, ((unsigned long)0xdeadd0d0)))
  panic("uvm_mapent_addr_insert: entry still in addr list");
 ((void)0);
 ((void)0);
 do { if ((map)->ref_count > 0) { if (((map)->flags & 0x02) == 0) rw_assert_wrlock(&(map)->lock); else do { if ((&(map)->mtx)->mtx_owner != (__curcpu->ci_self)) panic("mutex %p not held in %s", (&(map)->mtx), __func__); } while (0); } } while (0);
 res = uvm_map_addr_RBT_INSERT(&map->addr, entry);
 if (res != ((void *)0)) {
  panic("uvm_mapent_addr_insert: map %p entry %p "
      "(0x%lx-0x%lx G=0x%lx F=0x%lx) insert collision "
      "with entry %p (0x%lx-0x%lx G=0x%lx F=0x%lx)",
      map, entry,
      entry->start, entry->end, entry->guard, entry->fspace,
      res, res->start, res->end, res->guard, res->fspace);
 }
}
void
uvm_mapent_addr_remove(struct vm_map *map, struct vm_map_entry *entry)
{
 struct vm_map_entry *res;
 do { if ((map)->ref_count > 0) { if (((map)->flags & 0x02) == 0) rw_assert_wrlock(&(map)->lock); else do { if ((&(map)->mtx)->mtx_owner != (__curcpu->ci_self)) panic("mutex %p not held in %s", (&(map)->mtx), __func__); } while (0); } } while (0);
 res = uvm_map_addr_RBT_REMOVE(&map->addr, entry);
 if (res != entry)
  panic("uvm_mapent_addr_remove");
 uvm_map_addr_RBT_POISON(entry, ((unsigned long)0xdeadd0d0));
}
vsize_t
uvmspace_dused(struct vm_map *map, vaddr_t min, vaddr_t max)
{
 struct vmspace *vm;
 vsize_t sz;
 vaddr_t lmax;
 vaddr_t stack_begin, stack_end;
 ((map->flags & 0x40) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../uvm/uvm_map.c", 491, "map->flags & VM_MAP_ISVMSPACE"));
 vm = (struct vmspace *)map;
 stack_begin = ((((vaddr_t)vm->vm_maxsaddr)<((vaddr_t)vm->vm_minsaddr))?((vaddr_t)vm->vm_maxsaddr):((vaddr_t)vm->vm_minsaddr));
 stack_end = ((((vaddr_t)vm->vm_maxsaddr)>((vaddr_t)vm->vm_minsaddr))?((vaddr_t)vm->vm_maxsaddr):((vaddr_t)vm->vm_minsaddr));
 sz = 0;
 while (min != max) {
  lmax = max;
  if (min < stack_begin && lmax > stack_begin)
   lmax = stack_begin;
  else if (min < stack_end && lmax > stack_end)
   lmax = stack_end;
  if (min >= stack_begin && min < stack_end) {
  } else
   sz += lmax - min;
  min = lmax;
 }
 return sz >> 13;
}
struct vm_map_entry*
uvm_map_entrybyaddr(struct uvm_map_addr *atree, vaddr_t addr)
{
 struct vm_map_entry *iter;
 iter = uvm_map_addr_RBT_ROOT(atree);
 while (iter != ((void *)0)) {
  if (iter->start > addr)
   iter = uvm_map_addr_RBT_LEFT(iter);
  else if (((iter)->end + (iter)->guard + (iter)->fspace) <= addr)
   iter = uvm_map_addr_RBT_RIGHT(iter);
  else
   return iter;
 }
 return ((void *)0);
}
static __inline void
dead_entry_push(struct uvm_map_deadq *deadq, struct vm_map_entry *entry)
{
 do { (entry)->dfree.deadq.tqe_next = ((void *)0); (entry)->dfree.deadq.tqe_prev = (deadq)->tqh_last; *(deadq)->tqh_last = (entry); (deadq)->tqh_last = &(entry)->dfree.deadq.tqe_next; } while (0);
}
int
uvm_map_sel_limits(vaddr_t *min, vaddr_t *max, vsize_t sz, int guardpg,
    struct vm_map_entry *sel, vaddr_t align,
    vaddr_t pmap_align, vaddr_t pmap_off, int bias)
{
 vaddr_t sel_min, sel_max;
 vaddr_t pmap_min, pmap_max;
 int bad;
 sel_min = ((sel)->end + (sel)->guard);
 sel_max = ((sel)->end + (sel)->guard + (sel)->fspace) - sz - (guardpg ? (1 << 13) : 0);
 if (align > (1 << 13) &&
     !(pmap_align > align && (pmap_off & (align - 1)) == 0)) {
  sel_min = ((((sel_min)+((align)-1))/(align))*(align));
  sel_max &= ~(align - 1);
  if (sel_min > sel_max)
   return 12;
  if (sel_max - sel_min > ((vaddr_t)32 * 1024)) {
   if (bias > 0) {
    sel_min = sel_max - ((vaddr_t)32 * 1024);
    sel_min = ((((sel_min)+((align)-1))/(align))*(align));
   } else if (bias < 0) {
    sel_max = sel_min + ((vaddr_t)32 * 1024);
    sel_max &= ~(align - 1);
   }
  }
 } else if (pmap_align != 0) {
  pmap_max = sel_max & ~(pmap_align - 1);
  pmap_min = sel_min;
  if (pmap_max < sel_min)
   return 12;
  if (bias > 0 && pmap_max - pmap_min > ((vaddr_t)32 * 1024))
   pmap_min = pmap_max - ((vaddr_t)32 * 1024);
  pmap_min &= ~(pmap_align - 1);
  if (pmap_min < sel_min)
   pmap_min += pmap_align;
  if (pmap_min > pmap_max)
   return 12;
  if (bias < 0 && pmap_max - pmap_min > ((vaddr_t)32 * 1024)) {
   pmap_max = (pmap_min + ((vaddr_t)32 * 1024)) &
       ~(pmap_align - 1);
  }
  if (pmap_min > pmap_max)
   return 12;
  pmap_max |= pmap_off;
  if (pmap_max > sel_max)
   pmap_max -= pmap_align;
  pmap_min |= pmap_off;
  if (pmap_min < sel_min)
   pmap_min += pmap_align;
  if (pmap_min > pmap_max) {
   if (pmap_min < sel_max)
    pmap_max = pmap_min;
   else if (pmap_max > sel_min)
    pmap_min = pmap_max;
   else
    return 12;
  }
  ((void)0);
  sel_min = pmap_min;
  sel_max = pmap_max;
 } else if (bias > 0 && sel_max - sel_min > ((vaddr_t)32 * 1024))
  sel_min = sel_max - ((vaddr_t)32 * 1024);
 else if (bias < 0 && sel_max - sel_min > ((vaddr_t)32 * 1024))
  sel_max = sel_min + ((vaddr_t)32 * 1024);
 if (sel_min > sel_max)
  return 12;
 bad = 0;
 if (sel_min < ((sel)->end + (sel)->guard)) {
  printf("sel_min: 0x%lx, but should be at least 0x%lx\n",
      sel_min, ((sel)->end + (sel)->guard));
  bad++;
 }
 if (sel_max > ((sel)->end + (sel)->guard + (sel)->fspace) - sz - (guardpg ? (1 << 13) : 0)) {
  printf("sel_max: 0x%lx, but should be at most 0x%lx\n",
      sel_max,
      ((sel)->end + (sel)->guard + (sel)->fspace) - sz - (guardpg ? (1 << 13) : 0));
  bad++;
 }
 if (align != 0 && (sel_min & (align - 1)) != 0) {
  printf("sel_min: 0x%lx, not aligned to 0x%lx\n",
      sel_min, align);
  bad++;
 }
 if (align != 0 && (sel_max & (align - 1)) != 0) {
  printf("sel_max: 0x%lx, not aligned to 0x%lx\n",
      sel_max, align);
  bad++;
 }
 if (pmap_align != 0 && align == 0 &&
     (sel_min & (pmap_align - 1)) != pmap_off) {
  printf("sel_min: 0x%lx, aligned to 0x%lx, expected 0x%lx\n",
      sel_min, sel_min & (pmap_align - 1), pmap_off);
  bad++;
 }
 if (pmap_align != 0 && align == 0 &&
     (sel_max & (pmap_align - 1)) != pmap_off) {
  printf("sel_max: 0x%lx, aligned to 0x%lx, expected 0x%lx\n",
      sel_max, sel_max & (pmap_align - 1), pmap_off);
  bad++;
 }
 if (bad) {
  panic("uvm_map_sel_limits(sz = %lu, guardpg = %c, "
      "align = 0x%lx, pmap_align = 0x%lx, pmap_off = 0x%lx, "
      "bias = %d, "
      "FREE_START(sel) = 0x%lx, FREE_END(sel) = 0x%lx)",
      sz, (guardpg ? 'T' : 'F'), align, pmap_align, pmap_off,
      bias, ((sel)->end + (sel)->guard), ((sel)->end + (sel)->guard + (sel)->fspace));
 }
 *min = sel_min;
 *max = sel_max;
 return 0;
}
int
uvm_map_isavail(struct vm_map *map, struct uvm_addr_state *uaddr,
    struct vm_map_entry **start_ptr, struct vm_map_entry **end_ptr,
    vaddr_t addr, vsize_t sz)
{
 struct uvm_addr_state *free;
 struct uvm_map_addr *atree;
 struct vm_map_entry *i, *i_end;
 if (addr + sz < addr)
  return 0;
 if ((map->flags & 0x40) == 0) {
  if (addr + sz > uvm_maxkaddr)
   return 0;
 }
 atree = &map->addr;
 ((void)0);
 if (*start_ptr == ((void *)0)) {
  *start_ptr = uvm_map_entrybyaddr(atree, addr);
  if (*start_ptr == ((void *)0))
   return 0;
 } else
  ((*start_ptr == uvm_map_entrybyaddr(atree, addr)) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../uvm/uvm_map.c", 796, "*start_ptr == uvm_map_entrybyaddr(atree, addr)"));
 if (*end_ptr == ((void *)0)) {
  if (((*start_ptr)->end + (*start_ptr)->guard + (*start_ptr)->fspace) >= addr + sz)
   *end_ptr = *start_ptr;
  else {
   *end_ptr = uvm_map_entrybyaddr(atree, addr + sz - 1);
   if (*end_ptr == ((void *)0))
    return 0;
  }
 } else
  ((*end_ptr == uvm_map_entrybyaddr(atree, addr + sz - 1)) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../uvm/uvm_map.c", 806, "*end_ptr == uvm_map_entrybyaddr(atree, addr + sz - 1)"));
 ((void)0);
 ((void)0);
 i = *start_ptr;
 i_end = uvm_map_addr_RBT_NEXT(*end_ptr);
 for (; i != i_end;
     i = uvm_map_addr_RBT_NEXT(i)) {
  if (i->start != i->end && i->end > addr)
   return 0;
  if (uaddr != ((void *)0)) {
   free = uvm_map_uaddr_e(map, i);
   if (uaddr != free && free != ((void *)0) &&
       (free == map->uaddr_exe ||
        free == map->uaddr_brk_stack))
    return 0;
  }
 }
 return -1;
}
int
uvm_map_findspace(struct vm_map *map, struct vm_map_entry**first,
    struct vm_map_entry**last, vaddr_t *addr, vsize_t sz,
    vaddr_t pmap_align, vaddr_t pmap_offset, vm_prot_t prot, vaddr_t hint)
{
 struct uvm_addr_state *uaddr;
 int i;
 for (i = 0; i < (sizeof((map->uaddr_any)) / sizeof((map->uaddr_any)[0])); i++) {
  uaddr = map->uaddr_any[i];
  if (uvm_addr_invoke(map, uaddr, first, last,
      addr, sz, pmap_align, pmap_offset, prot, hint) == 0)
   return 0;
 }
 uaddr = map->uaddr_brk_stack;
 if (uvm_addr_invoke(map, uaddr, first, last,
     addr, sz, pmap_align, pmap_offset, prot, hint) == 0)
  return 0;
 return 12;
}
vsize_t
uvm_map_addr_augment_get(struct vm_map_entry *entry)
{
 vsize_t augment;
 struct vm_map_entry *left, *right;
 augment = entry->fspace;
 if ((left = uvm_map_addr_RBT_LEFT(entry)) != ((void *)0))
  augment = (((augment)>(left->fspace_augment))?(augment):(left->fspace_augment));
 if ((right = uvm_map_addr_RBT_RIGHT(entry)) != ((void *)0))
  augment = (((augment)>(right->fspace_augment))?(augment):(right->fspace_augment));
 return augment;
}
void
uvm_map_addr_augment(struct vm_map_entry *entry)
{
 vsize_t augment;
 while (entry != ((void *)0)) {
  augment = uvm_map_addr_augment_get(entry);
  if (entry->fspace_augment == augment)
   return;
  entry->fspace_augment = augment;
  entry = uvm_map_addr_RBT_PARENT(entry);
 }
}
int
uvm_mapanon(struct vm_map *map, vaddr_t *addr, vsize_t sz,
    vsize_t align, unsigned int flags)
{
 struct vm_map_entry *first, *last, *entry, *new;
 struct uvm_map_deadq dead;
 vm_prot_t prot;
 vm_prot_t maxprot;
 vm_inherit_t inherit;
 int advice;
 int error;
 vaddr_t pmap_align, pmap_offset;
 vaddr_t hint;
 (((map->flags & 0x40) == 0x40) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../uvm/uvm_map.c", 943, "(map->flags & VM_MAP_ISVMSPACE) == VM_MAP_ISVMSPACE"));
 ((map != kernel_map) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../uvm/uvm_map.c", 944, "map != kernel_map"));
 (((map->flags & 0x0200000) == 0) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../uvm/uvm_map.c", 945, "(map->flags & UVM_FLAG_HOLE) == 0"));
 (((map->flags & 0x02) == 0) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../uvm/uvm_map.c", 947, "(map->flags & VM_MAP_INTRSAFE) == 0"));
 do { if (splassert_ctl > 0) { splassert_check(0, __func__); } } while (0);
 pmap_align = (((align)>((1 << 13)))?(align):((1 << 13)));
 pmap_offset = 0;
 prot = ((flags) & (0x01 | 0x02 | 0x04));
 maxprot = (((flags) >> 8) & (0x01 | 0x02 | 0x04));
 advice = (((flags) >> 12) & 0x7);
 inherit = (((flags) >> 4) & 0x3);
 error = 0;
 hint = ((*addr) & ~((1 << 13) - 1));
 do { (&dead)->tqh_first = ((void *)0); (&dead)->tqh_last = &(&dead)->tqh_first; } while (0);
 (((sz & (vaddr_t)((1 << 13) - 1)) == 0) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../uvm/uvm_map.c", 968, "(sz & (vaddr_t)PAGE_MASK) == 0"));
 (((align & (align - 1)) == 0) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../uvm/uvm_map.c", 969, "(align & (align - 1)) == 0"));
 if ((prot & maxprot) != prot)
  return 13;
 new = uvm_mapent_alloc(map, flags);
 if (new == ((void *)0))
  return(12);
 if (flags & 0x0100000) {
  if (vm_map_lock_try_ln(map, "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../uvm/uvm_map.c", 985) == 0) {
   error = 14;
   goto out;
  }
 } else
  vm_map_lock_ln(map, "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../uvm/uvm_map.c", 990);
 first = last = ((void *)0);
 if (flags & 0x0010000) {
  (((*addr & ((1 << 13) - 1)) == 0) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../uvm/uvm_map.c", 1000, "(*addr & PAGE_MASK) == 0"));
  if (flags & 0x1000000)
   uvm_unmap_remove(map, *addr, *addr + sz, &dead, 0, 1);
  if (!uvm_map_isavail(map, ((void *)0), &first, &last, *addr, sz)) {
   error = 12;
   goto unlock;
  }
 } else if (*addr != 0 && (*addr & ((1 << 13) - 1)) == 0 &&
     (align == 0 || (*addr & (align - 1)) == 0) &&
     uvm_map_isavail(map, ((void *)0), &first, &last, *addr, sz)) {
 } else if ((prot & 0x04) != 0 && map->uaddr_exe != ((void *)0)) {
  error = uvm_addr_invoke(map, map->uaddr_exe, &first, &last,
      addr, sz, pmap_align, pmap_offset, prot, hint);
  if (error != 0)
   goto unlock;
 } else {
  uvm_map_vmspace_update(map, &dead, flags);
  error = uvm_map_findspace(map, &first, &last, addr, sz,
      pmap_align, pmap_offset, prot, hint);
  if (error != 0)
   goto unlock;
 }
 if (*addr + sz < *addr) {
  error = 12;
  goto unlock;
 }
 if (flags & 0x0400000) {
  error = 0;
  goto unlock;
 }
 entry = uvm_map_mkentry(map, first, last, *addr, sz, flags, &dead,
     new);
 if (entry == ((void *)0)) {
  error = 12;
  goto unlock;
 }
 new = ((void *)0);
 ((void)0);
 entry->object.uvm_obj = ((void *)0);
 entry->offset = 0;
 entry->protection = prot;
 entry->max_protection = maxprot;
 entry->inheritance = inherit;
 entry->wired_count = 0;
 entry->advice = advice;
 if (flags & 0x0080000) {
  entry->etype |= 0x04;
  if ((flags & 0x0020000) == 0)
   entry->etype |= 0x08;
 }
 if (flags & 0x0020000) {
  _kernel_lock("/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../uvm/uvm_map.c", 1073);
  entry->aref.ar_pageoff = 0;
  entry->aref.ar_amap = amap_alloc(sz, 0x0001, 0);
  _kernel_unlock();
 }
 map->size += sz;
 ((struct vmspace *)map)->vm_dused += uvmspace_dused(map, *addr, *addr + sz);
unlock:
 vm_map_unlock_ln(map, "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../uvm/uvm_map.c", 1084);
 uvm_unmap_detach(&dead, 0);
out:
 if (new)
  uvm_mapent_free(new);
 return error;
}
int
uvm_map(struct vm_map *map, vaddr_t *addr, vsize_t sz,
    struct uvm_object *uobj, voff_t uoffset,
    vsize_t align, unsigned int flags)
{
 struct vm_map_entry *first, *last, *entry, *new;
 struct uvm_map_deadq dead;
 vm_prot_t prot;
 vm_prot_t maxprot;
 vm_inherit_t inherit;
 int advice;
 int error;
 vaddr_t pmap_align, pmap_offset;
 vaddr_t hint;
 if ((map->flags & 0x02) == 0)
  do { if (splassert_ctl > 0) { splassert_check(0, __func__); } } while (0);
 else
  do { if (splassert_ctl > 0) { splassert_check(7, __func__); } } while (0);
 if (uoffset == ((voff_t) -1)) {
  pmap_align = (((align)>((1 << 13)))?(align):((1 << 13)));
  pmap_offset = 0;
 } else {
  pmap_align = (((((1<<14)))>((1 << 13)))?(((1<<14))):((1 << 13)));
  pmap_offset = ((uoffset) & (1<<13));
  if (align == 0 ||
      (align <= pmap_align && (pmap_offset & (align - 1)) == 0)) {
  } else {
   pmap_align = align;
   pmap_offset = 0;
  }
 }
 prot = ((flags) & (0x01 | 0x02 | 0x04));
 maxprot = (((flags) >> 8) & (0x01 | 0x02 | 0x04));
 advice = (((flags) >> 12) & 0x7);
 inherit = (((flags) >> 4) & 0x3);
 error = 0;
 hint = ((*addr) & ~((1 << 13) - 1));
 do { (&dead)->tqh_first = ((void *)0); (&dead)->tqh_last = &(&dead)->tqh_first; } while (0);
 (((sz & (vaddr_t)((1 << 13) - 1)) == 0) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../uvm/uvm_map.c", 1170, "(sz & (vaddr_t)PAGE_MASK) == 0"));
 (((align & (align - 1)) == 0) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../uvm/uvm_map.c", 1171, "(align & (align - 1)) == 0"));
 if (flags & 0x0200000) {
  ((uobj == ((void *)0) && (flags & 0x0010000) && (flags & (0x0020000 | 0x0080000)) == 0) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../uvm/uvm_map.c", 1176, "uobj == NULL && (flags & UVM_FLAG_FIXED) && (flags & (UVM_FLAG_OVERLAY | UVM_FLAG_COPYONW)) == 0"));
 }
 if (!(map->flags & 0x40) && !(flags & 0x0010000))
  hint = 0;
 if ((prot & maxprot) != prot)
  return 13;
 if (map == kernel_map &&
     (prot & (0x02 | 0x04)) == (0x02 | 0x04))
  panic("uvm_map: kernel map W^X violation requested");
 new = uvm_mapent_alloc(map, flags);
 if (new == ((void *)0))
  return(12);
 if (flags & 0x0100000) {
  if (vm_map_lock_try_ln(map, "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../uvm/uvm_map.c", 1201) == 0) {
   error = 14;
   goto out;
  }
 } else {
  vm_map_lock_ln(map, "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../uvm/uvm_map.c", 1206);
 }
 first = last = ((void *)0);
 if (flags & 0x0010000) {
  (((*addr & ((1 << 13) - 1)) == 0) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../uvm/uvm_map.c", 1217, "(*addr & PAGE_MASK) == 0"));
  if ((map->flags & 0x40) == 0 &&
      uvm_maxkaddr < (*addr + sz)) {
   uvm_map_kmem_grow(map, &dead,
       *addr + sz - uvm_maxkaddr, flags);
  }
  if (flags & 0x1000000)
   uvm_unmap_remove(map, *addr, *addr + sz, &dead, 0, 1);
  if (!uvm_map_isavail(map, ((void *)0), &first, &last, *addr, sz)) {
   error = 12;
   goto unlock;
  }
 } else if (*addr != 0 && (*addr & ((1 << 13) - 1)) == 0 &&
     (map->flags & 0x40) == 0x40 &&
     (align == 0 || (*addr & (align - 1)) == 0) &&
     uvm_map_isavail(map, ((void *)0), &first, &last, *addr, sz)) {
 } else if ((prot & 0x04) != 0 && map->uaddr_exe != ((void *)0)) {
  error = uvm_addr_invoke(map, map->uaddr_exe, &first, &last,
      addr, sz, pmap_align, pmap_offset, prot, hint);
  if (error != 0 && (map->flags & 0x40) == 0) {
   uvm_map_kmem_grow(map, &dead, sz, flags);
   error = uvm_addr_invoke(map, map->uaddr_exe,
       &first, &last, addr, sz,
       pmap_align, pmap_offset, prot, hint);
  }
  if (error != 0)
   goto unlock;
 } else {
  if (map->flags & 0x40)
   uvm_map_vmspace_update(map, &dead, flags);
  error = uvm_map_findspace(map, &first, &last, addr, sz,
      pmap_align, pmap_offset, prot, hint);
  if (error != 0 && (map->flags & 0x40) == 0) {
   uvm_map_kmem_grow(map, &dead, sz, flags);
   error = uvm_map_findspace(map, &first, &last, addr, sz,
       pmap_align, pmap_offset, prot, hint);
  }
  if (error != 0)
   goto unlock;
 }
 if (*addr + sz < *addr) {
  error = 12;
  goto unlock;
 }
 (((map->flags & 0x40) == 0x40 || uvm_maxkaddr >= *addr + sz) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../uvm/uvm_map.c", 1289, "(map->flags & VM_MAP_ISVMSPACE) == VM_MAP_ISVMSPACE || uvm_maxkaddr >= *addr + sz"));
 if (flags & 0x0400000) {
  error = 0;
  goto unlock;
 }
 if (uobj == ((void *)0))
  uoffset = 0;
 else if (uoffset == ((voff_t) -1)) {
  ((((uobj)->uo_refs == (-2))) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../uvm/uvm_map.c", 1300, "UVM_OBJ_IS_KERN_OBJECT(uobj)"));
  uoffset = *addr - ((kernel_map)->min_offset);
 }
 entry = uvm_map_mkentry(map, first, last, *addr, sz, flags, &dead,
     new);
 if (entry == ((void *)0)) {
  error = 12;
  goto unlock;
 }
 new = ((void *)0);
 ((void)0);
 entry->object.uvm_obj = uobj;
 entry->offset = uoffset;
 entry->protection = prot;
 entry->max_protection = maxprot;
 entry->inheritance = inherit;
 entry->wired_count = 0;
 entry->advice = advice;
 if (uobj)
  entry->etype |= 0x01;
 else if (flags & 0x0200000)
  entry->etype |= 0x10;
 if (flags & 0x0800000)
  entry->etype |= 0x20;
 if (flags & 0x0080000) {
  entry->etype |= 0x04;
  if ((flags & 0x0020000) == 0)
   entry->etype |= 0x08;
 }
 if (flags & 0x0020000) {
  entry->aref.ar_pageoff = 0;
  entry->aref.ar_amap = amap_alloc(sz, 0x0001, 0);
 }
 if (!(flags & 0x0200000)) {
  map->size += sz;
  if ((map->flags & 0x40) && uobj == ((void *)0)) {
   ((struct vmspace *)map)->vm_dused +=
       uvmspace_dused(map, *addr, *addr + sz);
  }
 }
 if ((flags & 0x0040000) == 0 &&
     (map->flags & 0x40) == 0)
  uvm_mapent_tryjoin(map, entry, &dead);
unlock:
 vm_map_unlock_ln(map, "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../uvm/uvm_map.c", 1360);
 if (map->flags & 0x02)
  uvm_unmap_detach_intrsafe(&dead);
 else
  uvm_unmap_detach(&dead, 0);
out:
 if (new)
  uvm_mapent_free(new);
 return error;
}
int
uvm_mapent_isjoinable(struct vm_map *map, struct vm_map_entry *e1,
    struct vm_map_entry *e2)
{
 ((void)0);
 if (e1->etype != e2->etype || e1->end != e2->start)
  return 0;
 if ((((e1)->etype & 0x02) != 0))
  return 0;
 if (((e1)->wired_count != 0) || ((e2)->wired_count != 0))
  return 0;
 if (e1->protection != e2->protection ||
     e1->max_protection != e2->max_protection ||
     e1->inheritance != e2->inheritance ||
     e1->advice != e2->advice)
  return 0;
 if ((((e1)->etype & 0x01) != 0)) {
  if (e1->object.uvm_obj != e2->object.uvm_obj)
   return 0;
  if (e1->offset + (e1->end - e1->start) != e2->offset)
   return 0;
 }
 if (e1->aref.ar_amap && ((e1->aref.ar_amap)->am_ref) != 1)
  return 0;
 if (e2->aref.ar_amap && ((e2->aref.ar_amap)->am_ref) != 1)
  return 0;
 return 1;
}
struct vm_map_entry*
uvm_mapent_merge(struct vm_map *map, struct vm_map_entry *e1,
    struct vm_map_entry *e2, struct uvm_map_deadq *dead)
{
 struct uvm_addr_state *free;
 ((e1->aref.ar_amap == ((void *)0)) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../uvm/uvm_map.c", 1450, "e1->aref.ar_amap == NULL"));
 free = uvm_map_uaddr_e(map, e1);
 uvm_mapent_free_remove(map, free, e1);
 free = uvm_map_uaddr_e(map, e2);
 uvm_mapent_free_remove(map, free, e2);
 uvm_mapent_addr_remove(map, e2);
 e1->end = e2->end;
 e1->guard = e2->guard;
 e1->fspace = e2->fspace;
 uvm_mapent_free_insert(map, free, e1);
 dead_entry_push((dead), (e2));
 return e1;
}
struct vm_map_entry*
uvm_mapent_tryjoin(struct vm_map *map, struct vm_map_entry *entry,
    struct uvm_map_deadq *dead)
{
 struct vm_map_entry *other;
 struct vm_map_entry *merged;
 other = uvm_map_addr_RBT_PREV(entry);
 if (other && uvm_mapent_isjoinable(map, other, entry)) {
  merged = uvm_mapent_merge(map, other, entry, dead);
  if (merged)
   entry = merged;
 }
 other = uvm_map_addr_RBT_NEXT(entry);
 if (other && entry->aref.ar_amap == ((void *)0) &&
     other->aref.ar_amap == ((void *)0) &&
     uvm_mapent_isjoinable(map, entry, other)) {
  merged = uvm_mapent_merge(map, entry, other, dead);
  if (merged)
   entry = merged;
 }
 return entry;
}
void
uvm_unmap_detach(struct uvm_map_deadq *deadq, int flags)
{
 struct vm_map_entry *entry;
 int waitok = flags & 0x0001;
 if ((((deadq)->tqh_first) == ((void *)0)))
  return;
 _kernel_lock("/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../uvm/uvm_map.c", 1524);
 while ((entry = ((deadq)->tqh_first)) != ((void *)0)) {
  if (waitok)
   uvm_pause();
  if (entry->aref.ar_amap)
   amap_unref(entry->aref.ar_amap,
       entry->aref.ar_pageoff,
       ((entry->end - entry->start) >> 13),
       flags & 0x2);
  if ((((entry)->etype & 0x02) != 0)) {
   uvm_map_deallocate(entry->object.sub_map);
  } else if ((((entry)->etype & 0x01) != 0) &&
      entry->object.uvm_obj->pgops->pgo_detach) {
   entry->object.uvm_obj->pgops->pgo_detach(
       entry->object.uvm_obj);
  }
  do { if (((entry)->dfree.deadq.tqe_next) != ((void *)0)) (entry)->dfree.deadq.tqe_next->dfree.deadq.tqe_prev = (entry)->dfree.deadq.tqe_prev; else (deadq)->tqh_last = (entry)->dfree.deadq.tqe_prev; *(entry)->dfree.deadq.tqe_prev = (entry)->dfree.deadq.tqe_next; ((entry)->dfree.deadq.tqe_prev) = ((void *)-1); ((entry)->dfree.deadq.tqe_next) = ((void *)-1); } while (0);
  uvm_mapent_free(entry);
 }
 _kernel_unlock();
}
void
uvm_unmap_detach_intrsafe(struct uvm_map_deadq *deadq)
{
 struct vm_map_entry *entry;
 while ((entry = ((deadq)->tqh_first)) != ((void *)0)) {
  ((entry->aref.ar_amap == ((void *)0)) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../uvm/uvm_map.c", 1558, "entry->aref.ar_amap == NULL"));
  ((!(((entry)->etype & 0x02) != 0)) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../uvm/uvm_map.c", 1559, "!UVM_ET_ISSUBMAP(entry)"));
  ((!(((entry)->etype & 0x01) != 0)) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../uvm/uvm_map.c", 1560, "!UVM_ET_ISOBJ(entry)"));
  do { if (((entry)->dfree.deadq.tqe_next) != ((void *)0)) (entry)->dfree.deadq.tqe_next->dfree.deadq.tqe_prev = (entry)->dfree.deadq.tqe_prev; else (deadq)->tqh_last = (entry)->dfree.deadq.tqe_prev; *(entry)->dfree.deadq.tqe_prev = (entry)->dfree.deadq.tqe_next; ((entry)->dfree.deadq.tqe_prev) = ((void *)-1); ((entry)->dfree.deadq.tqe_next) = ((void *)-1); } while (0);
  uvm_mapent_free(entry);
 }
}
struct vm_map_entry*
uvm_map_mkentry(struct vm_map *map, struct vm_map_entry *first,
    struct vm_map_entry *last, vaddr_t addr, vsize_t sz, int flags,
    struct uvm_map_deadq *dead, struct vm_map_entry *new)
{
 struct vm_map_entry *entry, *prev;
 struct uvm_addr_state *free;
 vaddr_t min, max;
 ((void)0);
 ((void)0);
 ((void)0);
 ((void)0);
 ((void)0);
 ((void)0);
 ((void)0);
 ((void)0);
 ((void)0);
 do {} while (0);
 min = addr + sz;
 max = ((last)->end + (last)->guard + (last)->fspace);
 if (new == ((void *)0))
  entry = uvm_mapent_alloc(map, flags);
 else
  entry = new;
 if (entry == ((void *)0))
  return ((void *)0);
 entry->offset = 0;
 entry->etype = 0;
 entry->wired_count = 0;
 entry->aref.ar_pageoff = 0;
 entry->aref.ar_amap = ((void *)0);
 entry->start = addr;
 entry->end = min;
 entry->guard = 0;
 entry->fspace = 0;
 free = uvm_map_uaddr_e(map, first);
 uvm_mapent_free_remove(map, free, first);
 first->guard = 0;
 first->fspace = 0;
 for (; first != last; last = prev) {
  prev = uvm_map_addr_RBT_PREV(last);
  ((void)0);
  free = uvm_map_uaddr_e(map, last);
  uvm_mapent_free_remove(map, free, last);
  uvm_mapent_addr_remove(map, last);
  dead_entry_push((dead), (last));
 }
 if (first->start == addr) {
  uvm_mapent_addr_remove(map, first);
  dead_entry_push((dead), (first));
 } else {
  uvm_map_fix_space(map, first, ((first)->end + (first)->guard),
      addr, flags);
 }
 uvm_mapent_addr_insert(map, entry);
 uvm_map_fix_space(map, entry, min, max, flags);
 do {} while (0);
 return entry;
}
struct vm_map_entry *
uvm_mapent_alloc(struct vm_map *map, int flags)
{
 struct vm_map_entry *me, *ne;
 int pool_flags;
 int i;
 pool_flags = 0x0001;
 if (flags & 0x0100000)
  pool_flags = 0x0002;
 if (map->flags & 0x02 || cold) {
  __mtx_enter(&uvm_kmapent_mtx );
  if ((((&uvm.kentry_free)->slh_first) == ((void *)0))) {
   ne = km_alloc((1 << 13), &kv_page, &kp_dirty,
       &kd_nowait);
   if (ne == ((void *)0))
    panic("uvm_mapent_alloc: cannot allocate map "
        "entry");
   for (i = 0; i < (1 << 13) / sizeof(*ne); i++) {
    do { (&ne[i])->daddrs.addr_kentry.sle_next = (&uvm.kentry_free)->slh_first; (&uvm.kentry_free)->slh_first = (&ne[i]); } while (0);
   }
   if (ratecheck(&uvm_kmapent_last_warn_time,
       &uvm_kmapent_warn_rate))
    printf("uvm_mapent_alloc: out of static "
        "map entries\n");
  }
  me = ((&uvm.kentry_free)->slh_first);
  do { (&uvm.kentry_free)->slh_first = (&uvm.kentry_free)->slh_first->daddrs.addr_kentry.sle_next; } while (0);
  uvmexp.kmapent++;
  __mtx_leave(&uvm_kmapent_mtx );
  me->flags = 0x01;
 } else if (map == kernel_map) {
  do { if (splassert_ctl > 0) { splassert_check(0, __func__); } } while (0);
  me = pool_get(&uvm_map_entry_kmem_pool, pool_flags);
  if (me == ((void *)0))
   goto out;
  me->flags = 0x02;
 } else {
  do { if (splassert_ctl > 0) { splassert_check(0, __func__); } } while (0);
  me = pool_get(&uvm_map_entry_pool, pool_flags);
  if (me == ((void *)0))
   goto out;
  me->flags = 0;
 }
 if (me != ((void *)0)) {
  uvm_map_addr_RBT_POISON(me, ((unsigned long)0xdeadd0d0));
 }
out:
 return(me);
}
void
uvm_mapent_free(struct vm_map_entry *me)
{
 if (me->flags & 0x01) {
  __mtx_enter(&uvm_kmapent_mtx );
  do { (me)->daddrs.addr_kentry.sle_next = (&uvm.kentry_free)->slh_first; (&uvm.kentry_free)->slh_first = (me); } while (0);
  uvmexp.kmapent--;
  __mtx_leave(&uvm_kmapent_mtx );
 } else if (me->flags & 0x02) {
  do { if (splassert_ctl > 0) { splassert_check(0, __func__); } } while (0);
  pool_put(&uvm_map_entry_kmem_pool, me);
 } else {
  do { if (splassert_ctl > 0) { splassert_check(0, __func__); } } while (0);
  pool_put(&uvm_map_entry_pool, me);
 }
}
boolean_t
uvm_map_lookup_entry(struct vm_map *map, vaddr_t address,
    struct vm_map_entry **entry)
{
 *entry = uvm_map_entrybyaddr(&map->addr, address);
 return *entry != ((void *)0) && !(((*entry)->etype & 0x10) != 0) &&
     (*entry)->start <= address && (*entry)->end > address;
}
vaddr_t
uvm_map_pie(vaddr_t align)
{
 vaddr_t addr, space, min;
 align = (((align)>((1 << 13)))?(align):((1 << 13)));
 min = ((1 << 13) + align - 1) & ~(align - 1);
 if (align >= 0x10000000000 || min >= 0x10000000000)
  return (align);
 space = (0x10000000000 - min) / align;
 space = (((space)<((u_int32_t)-1))?(space):((u_int32_t)-1));
 addr = (vaddr_t)arc4random_uniform((u_int32_t)space) * align;
 addr += min;
 return (addr);
}
void
uvm_unmap(struct vm_map *map, vaddr_t start, vaddr_t end)
{
 struct uvm_map_deadq dead;
 (((start & (vaddr_t)((1 << 13) - 1)) == 0 && (end & (vaddr_t)((1 << 13) - 1)) == 0) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../uvm/uvm_map.c", 1792, "(start & (vaddr_t)PAGE_MASK) == 0 && (end & (vaddr_t)PAGE_MASK) == 0"));
 do { (&dead)->tqh_first = ((void *)0); (&dead)->tqh_last = &(&dead)->tqh_first; } while (0);
 vm_map_lock_ln(map, "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../uvm/uvm_map.c", 1794);
 uvm_unmap_remove(map, start, end, &dead, 0, 1);
 vm_map_unlock_ln(map, "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../uvm/uvm_map.c", 1796);
 if (map->flags & 0x02)
  uvm_unmap_detach_intrsafe(&dead);
 else
  uvm_unmap_detach(&dead, 0);
}
void
uvm_mapent_mkfree(struct vm_map *map, struct vm_map_entry *entry,
    struct vm_map_entry **prev_ptr, struct uvm_map_deadq *dead,
    boolean_t markfree)
{
 struct uvm_addr_state *free;
 struct vm_map_entry *prev;
 vaddr_t addr;
 vaddr_t end;
 prev = *prev_ptr;
 if (prev == entry)
  *prev_ptr = prev = ((void *)0);
 if (prev == ((void *)0) ||
     ((prev)->end + (prev)->guard + (prev)->fspace) != entry->start)
  prev = uvm_map_addr_RBT_PREV(entry);
 if (prev == ((void *)0) && entry->start == entry->end && markfree) {
  *prev_ptr = entry;
  return;
 }
 addr = entry->start;
 end = ((entry)->end + (entry)->guard + (entry)->fspace);
 free = uvm_map_uaddr_e(map, entry);
 uvm_mapent_free_remove(map, free, entry);
 uvm_mapent_addr_remove(map, entry);
 dead_entry_push((dead), (entry));
 if (markfree) {
  if (prev) {
   free = uvm_map_uaddr_e(map, prev);
   uvm_mapent_free_remove(map, free, prev);
  }
  *prev_ptr = uvm_map_fix_space(map, prev, addr, end, 0);
 }
}
void
uvm_unmap_kill_entry(struct vm_map *map, struct vm_map_entry *entry)
{
 if (((entry)->wired_count != 0)) {
  _kernel_lock("/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../uvm/uvm_map.c", 1859);
  entry->wired_count = 0;
  uvm_fault_unwire_locked(map, entry->start, entry->end);
  _kernel_unlock();
 }
 if ((((entry)->etype & 0x10) != 0)) {
 } else if (map->flags & 0x02) {
  ((((map)->pmap) == (&kernel_pmap_)) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../uvm/uvm_map.c", 1869, "vm_map_pmap(map) == pmap_kernel()"));
  uvm_km_pgremove_intrsafe(entry->start, entry->end);
  pmap_kremove(entry->start, entry->end - entry->start);
 } else if ((((entry)->etype & 0x01) != 0) &&
     ((entry->object.uvm_obj)->uo_refs == (-2))) {
  ((((map)->pmap) == (&kernel_pmap_)) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../uvm/uvm_map.c", 1874, "vm_map_pmap(map) == pmap_kernel()"));
  pmap_remove((&kernel_pmap_), entry->start, entry->end);
  uvm_km_pgremove(entry->object.uvm_obj,
      entry->start - ((kernel_map)->min_offset),
      entry->end - ((kernel_map)->min_offset));
  entry->etype &= ~0x01;
  entry->object.uvm_obj = ((void *)0);
 } else {
  pmap_remove(map->pmap, entry->start, entry->end);
 }
}
void
uvm_unmap_remove(struct vm_map *map, vaddr_t start, vaddr_t end,
    struct uvm_map_deadq *dead, boolean_t remove_holes,
    boolean_t markfree)
{
 struct vm_map_entry *prev_hint, *next, *entry;
 start = (((start)>(map->min_offset))?(start):(map->min_offset));
 end = (((end)<(map->max_offset))?(end):(map->max_offset));
 if (start >= end)
  return;
 if ((map->flags & 0x02) == 0)
  do { if (splassert_ctl > 0) { splassert_check(0, __func__); } } while (0);
 else
  do { if (splassert_ctl > 0) { splassert_check(7, __func__); } } while (0);
 entry = uvm_map_entrybyaddr(&map->addr, start);
 ((void)0);
 if (entry->end <= start && markfree)
  entry = uvm_map_addr_RBT_NEXT(entry);
 else
  do { (((entry)->end + (entry)->fspace > (start)) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../uvm/uvm_map.c", 1956, "(entry)->end + (entry)->fspace > (start)")); if ((entry)->start < (start)) uvm_map_clip_start((map), (entry), (start)); } while (0);
 prev_hint = ((void *)0);
 for (; entry != ((void *)0) && entry->start < end; entry = next) {
  ((void)0);
  if (entry->end > end || !markfree)
   do { (((entry)->start < (end)) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../uvm/uvm_map.c", 1966, "(entry)->start < (end)")); if ((entry)->end > (end)) uvm_map_clip_end((map), (entry), (end)); } while (0);
  ((void)0);
  next = uvm_map_addr_RBT_NEXT(entry);
  if ((((entry)->etype & 0x10) != 0)) {
   if (!remove_holes) {
    prev_hint = entry;
    continue;
   }
  }
  uvm_unmap_kill_entry(map, entry);
  if ((map->flags & 0x40) &&
      entry->object.uvm_obj == ((void *)0) &&
      !(((entry)->etype & 0x10) != 0)) {
   ((struct vmspace *)map)->vm_dused -=
       uvmspace_dused(map, entry->start, entry->end);
  }
  if (!(((entry)->etype & 0x10) != 0))
   map->size -= entry->end - entry->start;
  uvm_mapent_mkfree(map, entry, &prev_hint, dead, markfree);
 }
 ;
}
void
uvm_map_pageable_pgon(struct vm_map *map, struct vm_map_entry *first,
    struct vm_map_entry *end, vaddr_t start_addr, vaddr_t end_addr)
{
 struct vm_map_entry *iter;
 for (iter = first; iter != end;
     iter = uvm_map_addr_RBT_NEXT(iter)) {
  ((void)0);
  if (!((iter)->wired_count != 0) || (((iter)->etype & 0x10) != 0))
   continue;
  iter->wired_count = 0;
  uvm_fault_unwire_locked(map, iter->start, iter->end);
 }
}
int
uvm_map_pageable_wire(struct vm_map *map, struct vm_map_entry *first,
    struct vm_map_entry *end, vaddr_t start_addr, vaddr_t end_addr,
    int lockflags)
{
 struct vm_map_entry *iter;
 unsigned int timestamp_save;
 int error;
 for (iter = first; iter != end;
     iter = uvm_map_addr_RBT_NEXT(iter)) {
  ((void)0);
  if ((((iter)->etype & 0x10) != 0) || iter->start == iter->end ||
      iter->protection == 0x00)
   continue;
  if (!((iter)->wired_count != 0) && !(((iter)->etype & 0x02) != 0) &&
      (((iter)->etype & 0x08) != 0) &&
      ((iter->protection & 0x02) ||
      iter->object.uvm_obj == ((void *)0))) {
   amap_copy(map, iter, 0x0001, 1,
       iter->start, iter->end);
  }
  iter->wired_count++;
 }
 timestamp_save = map->timestamp;
 vm_map_busy_ln(map, "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../uvm/uvm_map.c", 2099);
 vm_map_downgrade_ln(map, "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../uvm/uvm_map.c", 2100);
 error = 0;
 for (iter = first; error == 0 && iter != end;
     iter = uvm_map_addr_RBT_NEXT(iter)) {
  if ((((iter)->etype & 0x10) != 0) || iter->start == iter->end ||
      iter->protection == 0x00)
   continue;
  error = uvm_fault_wire(map, iter->start, iter->end,
      iter->protection);
 }
 if (error) {
  vm_map_upgrade_ln(map, "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../uvm/uvm_map.c", 2119);
  vm_map_unbusy_ln(map, "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../uvm/uvm_map.c", 2120);
  if (timestamp_save != map->timestamp)
   panic("uvm_map_pageable_wire: stale map");
  for (; first != iter;
      first = uvm_map_addr_RBT_NEXT(first)) {
   if ((((first)->etype & 0x10) != 0) ||
       first->start == first->end ||
       first->protection == 0x00)
    continue;
   first->wired_count--;
   if (!((first)->wired_count != 0)) {
    uvm_fault_unwire_locked(map,
        iter->start, iter->end);
   }
  }
  for (; iter != end;
      iter = uvm_map_addr_RBT_NEXT(iter)) {
   if ((((iter)->etype & 0x10) != 0) || iter->start == iter->end ||
       iter->protection == 0x00)
    continue;
   iter->wired_count--;
  }
  if ((lockflags & 0x00000002) == 0)
   vm_map_unlock_ln(map, "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../uvm/uvm_map.c", 2155);
  return error;
 }
 if ((lockflags & 0x00000002) == 0) {
  vm_map_unbusy_ln(map, "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../uvm/uvm_map.c", 2161);
  vm_map_unlock_read_ln(map, "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../uvm/uvm_map.c", 2162);
 } else {
  vm_map_upgrade_ln(map, "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../uvm/uvm_map.c", 2164);
  vm_map_unbusy_ln(map, "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../uvm/uvm_map.c", 2165);
  if (timestamp_save != map->timestamp)
   panic("uvm_map_pageable_wire: stale map");
 }
 return 0;
}
int
uvm_map_pageable(struct vm_map *map, vaddr_t start, vaddr_t end,
    boolean_t new_pageable, int lockflags)
{
 struct vm_map_entry *first, *last, *tmp;
 int error;
 start = ((start) & ~((1 << 13) - 1));
 end = (((end) + ((1 << 13) - 1)) & ~((1 << 13) - 1));
 if (start > end)
  return 22;
 if (start == end)
  return 0;
 if (start < map->min_offset)
  return 14;
 if (end > map->max_offset)
  return 22;
 ((map->flags & 0x01) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../uvm/uvm_map.c", 2203, "map->flags & VM_MAP_PAGEABLE"));
 if ((lockflags & 0x00000001) == 0)
  vm_map_lock_ln(map, "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../uvm/uvm_map.c", 2205);
 first = uvm_map_entrybyaddr(&map->addr, start);
 if (first->end <= start || (((first)->etype & 0x10) != 0)) {
  error = 14;
  goto out;
 }
 for (last = first; last != ((void *)0) && last->start < end;
     last = uvm_map_addr_RBT_NEXT(last)) {
  if ((((last)->etype & 0x10) != 0) ||
      (last->end < end && ((last)->end + (last)->guard + (last)->fspace) != last->end)) {
   error = 22;
   goto out;
  }
 }
 if (last == ((void *)0)) {
  last = uvm_map_addr_RBT_MAX(&map->addr);
  if (last->end < end) {
   error = 22;
   goto out;
  }
 } else {
  ((last != first) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../uvm/uvm_map.c", 2249, "last != first"));
  last = uvm_map_addr_RBT_PREV(last);
 }
 if (new_pageable) {
  if (((first)->wired_count != 0))
   do { (((first)->end + (first)->fspace > (start)) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../uvm/uvm_map.c", 2260, "(first)->end + (first)->fspace > (start)")); if ((first)->start < (start)) uvm_map_clip_start((map), (first), (start)); } while (0);
  if (((last)->wired_count != 0)) {
   do { (((last)->start < (end)) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../uvm/uvm_map.c", 2267, "(last)->start < (end)")); if ((last)->end > (end)) uvm_map_clip_end((map), (last), (end)); } while (0);
   tmp = uvm_map_addr_RBT_NEXT(last);
  } else
   tmp = last;
  uvm_map_pageable_pgon(map, first, tmp, start, end);
  error = 0;
out:
  if ((lockflags & 0x00000002) == 0)
   vm_map_unlock_ln(map, "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../uvm/uvm_map.c", 2277);
  return error;
 } else {
  if (!((first)->wired_count != 0))
   do { (((first)->end + (first)->fspace > (start)) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../uvm/uvm_map.c", 2285, "(first)->end + (first)->fspace > (start)")); if ((first)->start < (start)) uvm_map_clip_start((map), (first), (start)); } while (0);
  if (!((last)->wired_count != 0)) {
   do { (((last)->start < (end)) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../uvm/uvm_map.c", 2292, "(last)->start < (end)")); if ((last)->end > (end)) uvm_map_clip_end((map), (last), (end)); } while (0);
   tmp = uvm_map_addr_RBT_NEXT(last);
  } else
   tmp = last;
  return uvm_map_pageable_wire(map, first, tmp, start, end,
      lockflags);
 }
}
int
uvm_map_pageable_all(struct vm_map *map, int flags, vsize_t limit)
{
 vsize_t size;
 struct vm_map_entry *iter;
 ((map->flags & 0x01) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../uvm/uvm_map.c", 2315, "map->flags & VM_MAP_PAGEABLE"));
 vm_map_lock_ln(map, "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../uvm/uvm_map.c", 2316);
 if (flags == 0) {
  uvm_map_pageable_pgon(map, uvm_map_addr_RBT_MIN(&map->addr),
      ((void *)0), map->min_offset, map->max_offset);
  do { __mtx_enter(&(map)->flags_lock ); (map)->flags = ((map)->flags | (0)) & ~(0x04); __mtx_leave(&(map)->flags_lock ); } while (0);
  vm_map_unlock_ln(map, "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../uvm/uvm_map.c", 2323);
  return 0;
 }
 if (flags & 0x02)
  do { __mtx_enter(&(map)->flags_lock ); (map)->flags = ((map)->flags | (0x04)) & ~(0); __mtx_leave(&(map)->flags_lock ); } while (0);
 if (!(flags & 0x01)) {
  vm_map_unlock_ln(map, "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../uvm/uvm_map.c", 2330);
  return 0;
 }
 size = 0;
 for ((iter) = uvm_map_addr_RBT_MIN((&map->addr)); (iter) != ((void *)0); (iter) = uvm_map_addr_RBT_NEXT((iter))) {
  if (((iter)->wired_count != 0) || (((iter)->etype & 0x10) != 0))
   continue;
  size += iter->end - iter->start;
 }
 if (((size) >> 13) + uvmexp.wired > uvmexp.wiredmax) {
  vm_map_unlock_ln(map, "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../uvm/uvm_map.c", 2347);
  return 12;
 }
 return uvm_map_pageable_wire(map, uvm_map_addr_RBT_MIN(&map->addr),
     ((void *)0), map->min_offset, map->max_offset, 0);
}
void
uvm_map_setup(struct vm_map *map, vaddr_t min, vaddr_t max, int flags)
{
 int i;
 (((min & (vaddr_t)((1 << 13) - 1)) == 0) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../uvm/uvm_map.c", 2377, "(min & (vaddr_t)PAGE_MASK) == 0"));
 (((max & (vaddr_t)((1 << 13) - 1)) == 0 || (max & (vaddr_t)((1 << 13) - 1)) == (vaddr_t)((1 << 13) - 1)) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../uvm/uvm_map.c", 2379, "(max & (vaddr_t)PAGE_MASK) == 0 || (max & (vaddr_t)PAGE_MASK) == (vaddr_t)PAGE_MASK"));
 if (max & (vaddr_t)((1 << 13) - 1)) {
  max += 1;
  if (max == 0)
   max -= (1 << 13);
 }
 uvm_map_addr_RBT_INIT(&map->addr);
 map->uaddr_exe = ((void *)0);
 for (i = 0; i < (sizeof((map->uaddr_any)) / sizeof((map->uaddr_any)[0])); ++i)
  map->uaddr_any[i] = ((void *)0);
 map->uaddr_brk_stack = ((void *)0);
 map->size = 0;
 map->ref_count = 0;
 map->min_offset = min;
 map->max_offset = max;
 map->b_start = map->b_end = 0;
 map->s_start = map->s_end = 0;
 map->flags = flags;
 map->timestamp = 0;
 _rw_init_flags(&map->lock, "vmmaplk", 0x01, ((void *)0));
 do { (void)(((void *)0)); (void)(0); __mtx_init((&map->mtx), ((((7)) > 0 && ((7)) < 12) ? 12 : ((7)))); } while (0);
 do { (void)(((void *)0)); (void)(0); __mtx_init((&map->flags_lock), ((((7)) > 0 && ((7)) < 12) ? 12 : ((7)))); } while (0);
 if (flags & 0x40)
  uvm_map_setup_md(map);
 else
  map->uaddr_any[3] = &uaddr_kbootstrap;
 uvm_map_setup_entries(map);
 do {} while (0);
 map->ref_count = 1;
}
void
uvm_map_teardown(struct vm_map *map)
{
 struct uvm_map_deadq dead_entries;
 struct vm_map_entry *entry, *tmp;
 int i;
 ((_kernel_lock_held()) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../uvm/uvm_map.c", 2444, "_kernel_lock_held()"));
 _kernel_unlock();
 ((!_kernel_lock_held()) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../uvm/uvm_map.c", 2446, "!_kernel_lock_held()"));
 (((map->flags & 0x02) == 0) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../uvm/uvm_map.c", 2448, "(map->flags & VM_MAP_INTRSAFE) == 0"));
 uvm_addr_destroy(map->uaddr_exe);
 map->uaddr_exe = ((void *)0);
 for (i = 0; i < (sizeof((map->uaddr_any)) / sizeof((map->uaddr_any)[0])); i++) {
  uvm_addr_destroy(map->uaddr_any[i]);
  map->uaddr_any[i] = ((void *)0);
 }
 uvm_addr_destroy(map->uaddr_brk_stack);
 map->uaddr_brk_stack = ((void *)0);
 do { (&dead_entries)->tqh_first = ((void *)0); (&dead_entries)->tqh_last = &(&dead_entries)->tqh_first; } while (0);
 if ((entry = uvm_map_addr_RBT_ROOT(&map->addr)) != ((void *)0))
  dead_entry_push((&dead_entries), (entry));
 while (entry != ((void *)0)) {
  do { if ((__curcpu->ci_self)->ci_schedstate.spc_schedflags & 0x0002) yield(); } while (0);
  uvm_unmap_kill_entry(map, entry);
  if ((tmp = uvm_map_addr_RBT_LEFT(entry)) != ((void *)0))
   dead_entry_push((&dead_entries), (tmp));
  if ((tmp = uvm_map_addr_RBT_RIGHT(entry)) != ((void *)0))
   dead_entry_push((&dead_entries), (tmp));
  entry = ((entry)->dfree.deadq.tqe_next);
 }
 uvm_unmap_detach(&dead_entries, 0x0001);
 _kernel_lock("/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../uvm/uvm_map.c", 2501);
 pmap_destroy(map->pmap);
 map->pmap = ((void *)0);
}
void
uvm_map_setup_entries(struct vm_map *map)
{
 ((void)0);
 uvm_map_fix_space(map, ((void *)0), map->min_offset, map->max_offset, 0);
}
void
uvm_map_splitentry(struct vm_map *map, struct vm_map_entry *orig,
    struct vm_map_entry *next, vaddr_t split)
{
 struct uvm_addr_state *free, *free_before;
 vsize_t adj;
 if ((split & ((1 << 13) - 1)) != 0) {
  panic("uvm_map_splitentry: split address 0x%lx "
      "not on page boundary!", split);
 }
 ((void)0);
 do {} while (0);
 ((orig->start < split && ((orig)->end + (orig)->guard + (orig)->fspace) > split) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../uvm/uvm_map.c", 2540, "orig->start < split && VMMAP_FREE_END(orig) > split"));
 free = uvm_map_uaddr_e(map, orig);
 uvm_mapent_free_remove(map, free, orig);
 adj = split - orig->start;
 uvm_mapent_copy(orig, next);
 if (split >= orig->end) {
  next->etype = 0;
  next->offset = 0;
  next->wired_count = 0;
  next->start = next->end = split;
  next->guard = 0;
  next->fspace = ((orig)->end + (orig)->guard + (orig)->fspace) - split;
  next->aref.ar_amap = ((void *)0);
  next->aref.ar_pageoff = 0;
  orig->guard = (((orig->guard)<(split - orig->end))?(orig->guard):(split - orig->end));
  orig->fspace = split - ((orig)->end + (orig)->guard);
 } else {
  orig->fspace = 0;
  orig->guard = 0;
  orig->end = next->start = split;
  if (next->aref.ar_amap) {
   _kernel_lock("/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../uvm/uvm_map.c", 2573);
   amap_splitref(&orig->aref, &next->aref, adj);
   _kernel_unlock();
  }
  if ((((orig)->etype & 0x02) != 0)) {
   do { map->ref_count++; } while (0);
   next->offset += adj;
  } else if ((((orig)->etype & 0x01) != 0)) {
   if (next->object.uvm_obj->pgops &&
       next->object.uvm_obj->pgops->pgo_reference) {
    _kernel_lock("/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../uvm/uvm_map.c", 2583);
    next->object.uvm_obj->pgops->pgo_reference(
        next->object.uvm_obj);
    _kernel_unlock();
   }
   next->offset += adj;
  }
 }
 if (orig->fspace > 0)
  free_before = free;
 else
  free_before = uvm_map_uaddr_e(map, orig);
 uvm_mapent_free_insert(map, free_before, orig);
 uvm_mapent_addr_insert(map, next);
 uvm_mapent_free_insert(map, free, next);
 do {} while (0);
}
void
uvm_map_init(void)
{
 static struct vm_map_entry kernel_map_entry[1024];
 int lcv;
 do { (void)(((void *)0)); (void)(0); __mtx_init((&uvm_kmapent_mtx), ((((7)) > 0 && ((7)) < 12) ? 12 : ((7)))); } while (0);
 { ((&uvm.kentry_free)->slh_first) = ((void *)0); };
 for (lcv = 0 ; lcv < 1024 ; lcv++) {
  do { (&kernel_map_entry[lcv])->daddrs.addr_kentry.sle_next = (&uvm.kentry_free)->slh_first; (&uvm.kentry_free)->slh_first = (&kernel_map_entry[lcv]); } while (0);
 }
 pool_init(&uvm_vmspace_pool, sizeof(struct vmspace), 0,
     0, 0x0001, "vmsppl", ((void *)0));
 pool_init(&uvm_map_entry_pool, sizeof(struct vm_map_entry), 0,
     7, 0x0001, "vmmpepl", ((void *)0));
 pool_init(&uvm_map_entry_kmem_pool, sizeof(struct vm_map_entry), 0,
     7, 0, "vmmpekpl", ((void *)0));
 pool_sethiwat(&uvm_map_entry_pool, 8192);
 uvm_addr_init();
}
void
uvm_map_printit(struct vm_map *map, boolean_t full,
    int (*pr)(const char *, ...))
{
 struct vmspace *vm;
 struct vm_map_entry *entry;
 struct uvm_addr_state *free;
 int in_free, i;
 char buf[8];
 (*pr)("MAP %p: [0x%lx->0x%lx]\n", map, map->min_offset,map->max_offset);
 (*pr)("\tbrk() allocate range: 0x%lx-0x%lx\n",
     map->b_start, map->b_end);
 (*pr)("\tstack allocate range: 0x%lx-0x%lx\n",
     map->s_start, map->s_end);
 (*pr)("\tsz=%u, ref=%d, version=%u, flags=0x%x\n",
     map->size, map->ref_count, map->timestamp,
     map->flags);
 (*pr)("\tpmap=%p(resident=%d)\n", map->pmap,
     ((map->pmap)->pm_stats.resident_count));
 if (map->flags & 0x40) {
  vm = (struct vmspace *)map;
  (*pr)("\tvm_refcnt=%d vm_shm=%p vm_rssize=%u vm_swrss=%u\n",
      vm->vm_refcnt, vm->vm_shm, vm->vm_rssize, vm->vm_swrss);
  (*pr)("\tvm_tsize=%u vm_dsize=%u\n",
      vm->vm_tsize, vm->vm_dsize);
  (*pr)("\tvm_taddr=%p vm_daddr=%p\n",
      vm->vm_taddr, vm->vm_daddr);
  (*pr)("\tvm_maxsaddr=%p vm_minsaddr=%p\n",
      vm->vm_maxsaddr, vm->vm_minsaddr);
 }
 if (!full)
  goto print_uaddr;
 for ((entry) = uvm_map_addr_RBT_MIN((&map->addr)); (entry) != ((void *)0); (entry) = uvm_map_addr_RBT_NEXT((entry))) {
  (*pr)(" - %p: 0x%lx->0x%lx: obj=%p/0x%llx, amap=%p/%d\n",
      entry, entry->start, entry->end, entry->object.uvm_obj,
      (long long)entry->offset, entry->aref.ar_amap,
      entry->aref.ar_pageoff);
  (*pr)("\tsubmap=%c, cow=%c, nc=%c, prot(max)=%d/%d, inh=%d, "
      "wc=%d, adv=%d\n",
      (entry->etype & 0x02) ? 'T' : 'F',
      (entry->etype & 0x04) ? 'T' : 'F',
      (entry->etype & 0x08) ? 'T' : 'F',
      entry->protection, entry->max_protection,
      entry->inheritance, entry->wired_count, entry->advice);
  free = uvm_map_uaddr_e(map, entry);
  in_free = (free != ((void *)0));
  (*pr)("\thole=%c, free=%c, guard=0x%lx, "
      "free=0x%lx-0x%lx\n",
      (entry->etype & 0x10) ? 'T' : 'F',
      in_free ? 'T' : 'F',
      entry->guard,
      ((entry)->end + (entry)->guard), ((entry)->end + (entry)->guard + (entry)->fspace));
  (*pr)("\tfspace_augment=%lu\n", entry->fspace_augment);
  (*pr)("\tfreemapped=%c, uaddr=%p\n",
      (entry->etype & 0x80) ? 'T' : 'F', free);
  if (free) {
   (*pr)("\t\t(0x%lx-0x%lx %s)\n",
       free->uaddr_minaddr, free->uaddr_maxaddr,
       free->uaddr_functions->uaddr_name);
  }
 }
print_uaddr:
 uvm_addr_print(map->uaddr_exe, "exe", full, pr);
 for (i = 0; i < (sizeof((map->uaddr_any)) / sizeof((map->uaddr_any)[0])); i++) {
  snprintf(&buf[0], sizeof(buf), "any[%d]", i);
  uvm_addr_print(map->uaddr_any[i], &buf[0], full, pr);
 }
 uvm_addr_print(map->uaddr_brk_stack, "brk/stack", full, pr);
}
void
uvm_object_printit(uobj, full, pr)
 struct uvm_object *uobj;
 boolean_t full;
 int (*pr)(const char *, ...);
{
 struct vm_page *pg;
 int cnt = 0;
 (*pr)("OBJECT %p: pgops=%p, npages=%d, ",
     uobj, uobj->pgops, uobj->uo_npages);
 if (((uobj)->uo_refs == (-2)))
  (*pr)("refs=<SYSTEM>\n");
 else
  (*pr)("refs=%d\n", uobj->uo_refs);
 if (!full) {
  return;
 }
 (*pr)("  PAGES <pg,offset>:\n  ");
 for ((pg) = uvm_objtree_RBT_MIN((&uobj->memt)); (pg) != ((void *)0); (pg) = uvm_objtree_RBT_NEXT((pg))) {
  (*pr)("<%p,0x%llx> ", pg, (long long)pg->offset);
  if ((cnt % 3) == 2) {
   (*pr)("\n  ");
  }
  cnt++;
 }
 if ((cnt % 3) != 2) {
  (*pr)("\n");
 }
}
static const char page_flagbits[] =
 "\20\1BUSY\2WANTED\3TABLED\4CLEAN\5CLEANCHK\6RELEASED\7FAKE\10RDONLY"
 "\11ZERO\12DEV\15PAGER1\21FREE\22INACTIVE\23ACTIVE\25ANON\26AOBJ"
 "\27ENCRYPT\31PMAP0\32PMAP1\33PMAP2\34PMAP3\35PMAP4\36PMAP5";
void
uvm_page_printit(pg, full, pr)
 struct vm_page *pg;
 boolean_t full;
 int (*pr)(const char *, ...);
{
 struct vm_page *tpg;
 struct uvm_object *uobj;
 struct pglist *pgl;
 (*pr)("PAGE %p:\n", pg);
 (*pr)("  flags=%b, vers=%d, wire_count=%d, pa=0x%llx\n",
     pg->pg_flags, page_flagbits, pg->pg_version, pg->wire_count,
     (long long)pg->phys_addr);
 (*pr)("  uobject=%p, uanon=%p, offset=0x%llx\n",
     pg->uobject, pg->uanon, (long long)pg->offset);
 (*pr)("  [page ownership tracking disabled]");
 (*pr)("\tvm_page_md %p\n", &pg->mdpage);
 if (!full)
  return;
 if ((pg->pg_flags & 0x00010000) == 0) {
  if (pg->pg_flags & 0x00100000) {
   if (pg->uanon == ((void *)0) || pg->uanon->an_page != pg)
       (*pr)("  >>> ANON DOES NOT POINT HERE <<< (%p)\n",
    (pg->uanon) ? pg->uanon->an_page : ((void *)0));
   else
    (*pr)("  anon backpointer is OK\n");
  } else {
   uobj = pg->uobject;
   if (uobj) {
    (*pr)("  checking object list\n");
    for ((tpg) = uvm_objtree_RBT_MIN((&uobj->memt)); (tpg) != ((void *)0); (tpg) = uvm_objtree_RBT_NEXT((tpg))) {
     if (tpg == pg) {
      break;
     }
    }
    if (tpg)
     (*pr)("  page found on object list\n");
    else
     (*pr)("  >>> PAGE NOT FOUND "
         "ON OBJECT LIST! <<<\n");
   }
  }
 }
 if (pg->pg_flags & 0x00010000) {
  if (uvm_pmr_isfree(pg))
   (*pr)("  page found in uvm_pmemrange\n");
  else
   (*pr)("  >>> page not found in uvm_pmemrange <<<\n");
  pgl = ((void *)0);
 } else if (pg->pg_flags & 0x00020000) {
  pgl = (pg->pg_flags & (0x00100000|0x00200000)) ?
      &uvm.page_inactive_swp : &uvm.page_inactive_obj;
 } else if (pg->pg_flags & 0x00040000) {
  pgl = &uvm.page_active;
  } else {
  pgl = ((void *)0);
 }
 if (pgl) {
  (*pr)("  checking pageq list\n");
  for((tpg) = ((pgl)->tqh_first); (tpg) != ((void *)0); (tpg) = ((tpg)->pageq.tqe_next)) {
   if (tpg == pg) {
    break;
   }
  }
  if (tpg)
   (*pr)("  page found on pageq list\n");
  else
   (*pr)("  >>> PAGE NOT FOUND ON PAGEQ LIST! <<<\n");
 }
}
int
uvm_map_protect(struct vm_map *map, vaddr_t start, vaddr_t end,
    vm_prot_t new_prot, boolean_t set_max)
{
 struct vm_map_entry *first, *iter;
 vm_prot_t old_prot;
 vm_prot_t mask;
 int error;
 if (start > end)
  return 22;
 start = (((start)>(map->min_offset))?(start):(map->min_offset));
 end = (((end)<(map->max_offset))?(end):(map->max_offset));
 if (start >= end)
  return 0;
 error = 0;
 vm_map_lock_ln(map, "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../uvm/uvm_map.c", 3044);
 first = uvm_map_entrybyaddr(&map->addr, start);
 ((void)0);
 if (first->end < start)
  first = uvm_map_addr_RBT_NEXT(first);
 for (iter = first; iter != ((void *)0) && iter->start < end;
     iter = uvm_map_addr_RBT_NEXT(iter)) {
  if (iter->start == iter->end || (((iter)->etype & 0x10) != 0))
   continue;
  if ((((iter)->etype & 0x02) != 0)) {
   error = 22;
   goto out;
  }
  if ((new_prot & iter->max_protection) != new_prot) {
   error = 13;
   goto out;
  }
  if (map == kernel_map &&
      (new_prot & (0x02 | 0x04)) == (0x02 | 0x04))
   panic("uvm_map_protect: kernel map W^X violation requested");
 }
 for (iter = first; iter != ((void *)0) && iter->start < end;
     iter = uvm_map_addr_RBT_NEXT(iter)) {
  if (iter->start == iter->end || (((iter)->etype & 0x10) != 0))
   continue;
  old_prot = iter->protection;
  if (set_max) {
   if (old_prot == (new_prot & old_prot) &&
       iter->max_protection == new_prot)
    continue;
  } else {
   if (old_prot == new_prot)
    continue;
  }
  do { (((iter)->end + (iter)->fspace > (start)) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../uvm/uvm_map.c", 3097, "(iter)->end + (iter)->fspace > (start)")); if ((iter)->start < (start)) uvm_map_clip_start((map), (iter), (start)); } while (0);
  do { (((iter)->start < (end)) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../uvm/uvm_map.c", 3098, "(iter)->start < (end)")); if ((iter)->end > (end)) uvm_map_clip_end((map), (iter), (end)); } while (0);
  if (set_max) {
   iter->max_protection = new_prot;
   iter->protection &= new_prot;
  } else
   iter->protection = new_prot;
  if (iter->protection != old_prot) {
   mask = (((iter)->etype & 0x04) != 0) ?
       ~0x02 : (0x01 | 0x02 | 0x04);
   if ((iter->protection & mask) == 0x00 &&
       ((iter)->wired_count != 0)) {
    iter->wired_count = 0;
   }
   pmap_protect(map->pmap, iter->start, iter->end,
       iter->protection & mask);
  }
  if ((map->flags & 0x04) != 0 &&
      ((iter)->wired_count != 0) == 0 &&
      old_prot == 0x00 &&
      new_prot != 0x00) {
   if (uvm_map_pageable(map, iter->start, iter->end,
       0, 0x00000001 | 0x00000002) != 0) {
    error = 12;
   }
  }
 }
 ;
out:
 vm_map_unlock_ln(map, "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../uvm/uvm_map.c", 3166);
 return error;
}
struct vmspace *
uvmspace_alloc(vaddr_t min, vaddr_t max, boolean_t pageable,
    boolean_t remove_holes)
{
 struct vmspace *vm;
 vm = pool_get(&uvm_vmspace_pool, 0x0001 | 0x0008);
 uvmspace_init(vm, ((void *)0), min, max, pageable, remove_holes);
 return (vm);
}
void
uvmspace_init(struct vmspace *vm, struct pmap *pmap, vaddr_t min, vaddr_t max,
    boolean_t pageable, boolean_t remove_holes)
{
 ((pmap == ((void *)0) || pmap == (&kernel_pmap_)) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../uvm/uvm_map.c", 3198, "pmap == NULL || pmap == pmap_kernel()"));
 if (pmap)
  pmap_reference(pmap);
 else
  pmap = pmap_create();
 vm->vm_map.pmap = pmap;
 uvm_map_setup(&vm->vm_map, min, max,
     (pageable ? 0x01 : 0) | 0x40);
 vm->vm_refcnt = 1;
 if (remove_holes)
  pmap_remove_holes(vm);
}
struct vmspace *
uvmspace_share(struct process *pr)
{
 struct vmspace *vm = pr->ps_vmspace;
 vm->vm_refcnt++;
 return vm;
}
void
uvmspace_exec(struct proc *p, vaddr_t start, vaddr_t end)
{
 struct process *pr = p->p_p;
 struct vmspace *nvm, *ovm = pr->ps_vmspace;
 struct vm_map *map = &ovm->vm_map;
 struct uvm_map_deadq dead_entries;
 (((start & (vaddr_t)((1 << 13) - 1)) == 0) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../uvm/uvm_map.c", 3245, "(start & (vaddr_t)PAGE_MASK) == 0"));
 (((end & (vaddr_t)((1 << 13) - 1)) == 0 || (end & (vaddr_t)((1 << 13) - 1)) == (vaddr_t)((1 << 13) - 1)) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../uvm/uvm_map.c", 3247, "(end & (vaddr_t)PAGE_MASK) == 0 || (end & (vaddr_t)PAGE_MASK) == (vaddr_t)PAGE_MASK"));
 pmap_unuse_final(p);
 do { (&dead_entries)->tqh_first = ((void *)0); (&dead_entries)->tqh_last = &(&dead_entries)->tqh_first; } while (0);
 if (ovm->vm_refcnt == 1) {
  if (ovm->vm_shm)
   shmexit(ovm);
  vm_map_lock_ln(map, "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../uvm/uvm_map.c", 3272);
  do { __mtx_enter(&(map)->flags_lock ); (map)->flags = ((map)->flags | (0)) & ~(0x04); __mtx_leave(&(map)->flags_lock ); } while (0);
  uvm_unmap_remove(map, map->min_offset, map->max_offset,
      &dead_entries, 1, 0);
  ((void)0);
  __builtin_memset((&ovm->vm_rssize), (0), ((caddr_t) (ovm + 1) - (caddr_t) &ovm->vm_rssize));
  if (end & (vaddr_t)((1 << 13) - 1)) {
   end += 1;
   if (end == 0)
    end -= (1 << 13);
  }
  map->min_offset = start;
  map->max_offset = end;
  uvm_map_setup_entries(map);
  vm_map_unlock_ln(map, "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../uvm/uvm_map.c", 3305);
  pmap_remove_holes(ovm);
 } else {
  nvm = uvmspace_alloc(start, end,
      (map->flags & 0x01) ? 1 : 0, 1);
  pmap_deactivate(p);
  p->p_vmspace = pr->ps_vmspace = nvm;
  pmap_activate(p);
  uvmspace_free(ovm);
 }
 uvm_unmap_detach(&dead_entries, 0);
}
void
uvmspace_free(struct vmspace *vm)
{
 if (--vm->vm_refcnt == 0) {
  if (vm->vm_shm != ((void *)0))
   shmexit(vm);
  uvm_map_teardown(&vm->vm_map);
  pool_put(&uvm_vmspace_pool, vm);
 }
}
int
uvm_share(struct vm_map *dstmap, vaddr_t dstaddr, vm_prot_t prot,
    struct vm_map *srcmap, vaddr_t srcaddr, vsize_t sz)
{
 int ret = 0;
 vaddr_t unmap_end;
 vaddr_t dstva;
 vsize_t off, len, n = sz;
 struct vm_map_entry *first = ((void *)0), *last = ((void *)0);
 struct vm_map_entry *src_entry, *psrc_entry = ((void *)0);
 struct uvm_map_deadq dead;
 if (srcaddr >= srcmap->max_offset || sz > srcmap->max_offset - srcaddr)
  return 22;
 do { (&dead)->tqh_first = ((void *)0); (&dead)->tqh_last = &(&dead)->tqh_first; } while (0);
 vm_map_lock_ln(dstmap, "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../uvm/uvm_map.c", 3385);
 vm_map_lock_read_ln(srcmap, "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../uvm/uvm_map.c", 3386);
 if (!uvm_map_isavail(dstmap, ((void *)0), &first, &last, dstaddr, sz)) {
  ret = 12;
  goto exit_unlock;
 }
 if (!uvm_map_lookup_entry(srcmap, srcaddr, &src_entry)) {
  ret = 22;
  goto exit_unlock;
 }
 unmap_end = dstaddr;
 for (; src_entry != ((void *)0);
     psrc_entry = src_entry,
     src_entry = uvm_map_addr_RBT_NEXT(src_entry)) {
  if (psrc_entry != ((void *)0) && psrc_entry->end != src_entry->start)
   break;
  if (src_entry->start >= srcaddr + sz)
   break;
  if ((((src_entry)->etype & 0x02) != 0))
   panic("uvm_share: encountered a submap (illegal)");
  if (!(((src_entry)->etype & 0x04) != 0) &&
      (((src_entry)->etype & 0x08) != 0))
   panic("uvm_share: non-copy_on_write map entries "
       "marked needs_copy (illegal)");
  dstva = dstaddr;
  if (src_entry->start > srcaddr) {
   dstva += src_entry->start - srcaddr;
   off = 0;
  } else
   off = srcaddr - src_entry->start;
  if (n < src_entry->end - src_entry->start)
   len = n;
  else
   len = src_entry->end - src_entry->start;
  n -= len;
  if (uvm_mapent_share(dstmap, dstva, len, off, prot, prot,
      srcmap, src_entry, &dead) == ((void *)0))
   break;
  unmap_end = dstva + len;
  if (n == 0)
   goto exit_unlock;
 }
 ret = 22;
 uvm_unmap_remove(dstmap, dstaddr, unmap_end, &dead, 0, 1);
exit_unlock:
 vm_map_unlock_read_ln(srcmap, "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../uvm/uvm_map.c", 3440);
 vm_map_unlock_ln(dstmap, "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../uvm/uvm_map.c", 3441);
 uvm_unmap_detach(&dead, 0);
 return ret;
}
struct vm_map_entry *
uvm_mapent_clone(struct vm_map *dstmap, vaddr_t dstaddr, vsize_t dstlen,
    vsize_t off, vm_prot_t prot, vm_prot_t maxprot,
    struct vm_map_entry *old_entry, struct uvm_map_deadq *dead,
    int mapent_flags, int amap_share_flags)
{
 struct vm_map_entry *new_entry, *first, *last;
 ((void)0);
 first = last = ((void *)0);
 if (!uvm_map_isavail(dstmap, ((void *)0), &first, &last, dstaddr, dstlen)) {
  panic("uvmspace_fork: no space in map for "
      "entry in empty map");
 }
 new_entry = uvm_map_mkentry(dstmap, first, last,
     dstaddr, dstlen, mapent_flags, dead, ((void *)0));
 if (new_entry == ((void *)0))
  return ((void *)0);
 new_entry->object = old_entry->object;
 new_entry->offset = old_entry->offset;
 new_entry->aref = old_entry->aref;
 new_entry->etype |= old_entry->etype & ~0x80;
 new_entry->protection = prot;
 new_entry->max_protection = maxprot;
 new_entry->inheritance = old_entry->inheritance;
 new_entry->advice = old_entry->advice;
 if (new_entry->aref.ar_amap) {
  new_entry->aref.ar_pageoff += off >> 13;
  amap_ref(new_entry->aref.ar_amap, new_entry->aref.ar_pageoff,
      (new_entry->end - new_entry->start) >> 13,
      amap_share_flags);
 }
 if ((((new_entry)->etype & 0x01) != 0) &&
     new_entry->object.uvm_obj->pgops->pgo_reference) {
  new_entry->offset += off;
  new_entry->object.uvm_obj->pgops->pgo_reference
      (new_entry->object.uvm_obj);
 }
 return new_entry;
}
struct vm_map_entry *
uvm_mapent_share(struct vm_map *dstmap, vaddr_t dstaddr, vsize_t dstlen,
    vsize_t off, vm_prot_t prot, vm_prot_t maxprot, struct vm_map *old_map,
    struct vm_map_entry *old_entry, struct uvm_map_deadq *dead)
{
 if ((((old_entry)->etype & 0x08) != 0)) {
  amap_copy(old_map, old_entry, 0x0001, 0,
      0, 0);
 }
 return uvm_mapent_clone(dstmap, dstaddr, dstlen, off,
     prot, maxprot, old_entry, dead, 0, 0x1);
}
struct vm_map_entry *
uvm_mapent_forkshared(struct vmspace *new_vm, struct vm_map *new_map,
    struct vm_map *old_map,
    struct vm_map_entry *old_entry, struct uvm_map_deadq *dead)
{
 struct vm_map_entry *new_entry;
 new_entry = uvm_mapent_share(new_map, old_entry->start,
     old_entry->end - old_entry->start, 0, old_entry->protection,
     old_entry->max_protection, old_map, old_entry, dead);
 if (!(((new_entry)->etype & 0x10) != 0))
  pmap_copy(new_map->pmap, old_map->pmap, new_entry->start,
      (new_entry->end - new_entry->start), new_entry->start);
 return (new_entry);
}
struct vm_map_entry *
uvm_mapent_forkcopy(struct vmspace *new_vm, struct vm_map *new_map,
    struct vm_map *old_map,
    struct vm_map_entry *old_entry, struct uvm_map_deadq *dead)
{
 struct vm_map_entry *new_entry;
 boolean_t protect_child;
 new_entry = uvm_mapent_clone(new_map, old_entry->start,
     old_entry->end - old_entry->start, 0, old_entry->protection,
     old_entry->max_protection, old_entry, dead, 0, 0);
 new_entry->etype |=
     (0x04|0x08);
 if (old_entry->aref.ar_amap != ((void *)0) &&
     ((((old_entry->aref.ar_amap)->am_flags) &
     0x1) != 0 ||
     ((old_entry)->wired_count != 0))) {
  amap_copy(new_map, new_entry, 0x0001, 0,
      0, 0);
 }
 if (((old_entry)->wired_count != 0)) {
  if (old_entry->aref.ar_amap)
   amap_cow_now(new_map, new_entry);
 } else {
  if (old_entry->aref.ar_amap) {
   if (!(((old_entry)->etype & 0x08) != 0)) {
    if (old_entry->max_protection & 0x02) {
     pmap_protect(old_map->pmap,
         old_entry->start,
         old_entry->end,
         old_entry->protection &
         ~0x02);
     ;
    }
    old_entry->etype |= 0x08;
   }
     protect_child = 0;
  } else {
   if (old_entry->max_protection & 0x02)
    protect_child = 1;
   else
    protect_child = 0;
  }
  if (!(((new_entry)->etype & 0x10) != 0))
   pmap_copy(new_map->pmap, old_map->pmap,
       new_entry->start,
       (old_entry->end - old_entry->start),
       old_entry->start);
  if (protect_child) {
   pmap_protect(new_map->pmap, new_entry->start,
       new_entry->end,
       new_entry->protection &
       ~0x02);
  }
 }
 return (new_entry);
}
struct vm_map_entry *
uvm_mapent_forkzero(struct vmspace *new_vm, struct vm_map *new_map,
    struct vm_map *old_map,
    struct vm_map_entry *old_entry, struct uvm_map_deadq *dead)
{
 struct vm_map_entry *new_entry;
 new_entry = uvm_mapent_clone(new_map, old_entry->start,
     old_entry->end - old_entry->start, 0, old_entry->protection,
     old_entry->max_protection, old_entry, dead, 0, 0);
 new_entry->etype |=
     (0x04|0x08);
 if (new_entry->aref.ar_amap) {
  amap_unref(new_entry->aref.ar_amap, new_entry->aref.ar_pageoff,
      ((new_entry->end - new_entry->start) >> 13), 0);
  new_entry->aref.ar_amap = ((void *)0);
  new_entry->aref.ar_pageoff = 0;
 }
 if ((((new_entry)->etype & 0x01) != 0)) {
  if (new_entry->object.uvm_obj->pgops->pgo_detach)
   new_entry->object.uvm_obj->pgops->pgo_detach(
       new_entry->object.uvm_obj);
  new_entry->object.uvm_obj = ((void *)0);
  new_entry->etype &= ~0x01;
 }
 return (new_entry);
}
struct vmspace *
uvmspace_fork(struct process *pr)
{
 struct vmspace *vm1 = pr->ps_vmspace;
 struct vmspace *vm2;
 struct vm_map *old_map = &vm1->vm_map;
 struct vm_map *new_map;
 struct vm_map_entry *old_entry, *new_entry;
 struct uvm_map_deadq dead;
 vm_map_lock_ln(old_map, "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../uvm/uvm_map.c", 3754);
 vm2 = uvmspace_alloc(old_map->min_offset, old_map->max_offset,
     (old_map->flags & 0x01) ? 1 : 0, 0);
 __builtin_memcpy((&vm2->vm_rssize), (&vm1->vm_rssize), ((caddr_t) (vm1 + 1) - (caddr_t) &vm1->vm_rssize));
 vm2->vm_dused = 0;
 new_map = &vm2->vm_map;
 vm_map_lock_ln(new_map, "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../uvm/uvm_map.c", 3762);
 do { (&dead)->tqh_first = ((void *)0); (&dead)->tqh_last = &(&dead)->tqh_first; } while (0);
 for ((old_entry) = uvm_map_addr_RBT_MIN((&old_map->addr)); (old_entry) != ((void *)0); (old_entry) = uvm_map_addr_RBT_NEXT((old_entry))) {
  if (old_entry->start == old_entry->end)
   continue;
  if ((((old_entry)->etype & 0x02) != 0)) {
   panic("fork: encountered a submap during fork "
       "(illegal)");
  }
  if (!(((old_entry)->etype & 0x04) != 0) &&
      (((old_entry)->etype & 0x08) != 0)) {
   panic("fork: non-copy_on_write map entry marked "
       "needs_copy (illegal)");
  }
  switch (old_entry->inheritance) {
  case 0:
   new_entry = uvm_mapent_forkshared(vm2, new_map,
       old_map, old_entry, &dead);
   break;
  case 1:
   new_entry = uvm_mapent_forkcopy(vm2, new_map,
       old_map, old_entry, &dead);
   break;
  case 3:
   new_entry = uvm_mapent_forkzero(vm2, new_map,
       old_map, old_entry, &dead);
   break;
  default:
   continue;
  }
  if (!(((new_entry)->etype & 0x10) != 0))
   new_map->size += new_entry->end - new_entry->start;
  if (!(((new_entry)->etype & 0x01) != 0) && !(((new_entry)->etype & 0x10) != 0)) {
   vm2->vm_dused += uvmspace_dused(
       new_map, new_entry->start, new_entry->end);
  }
 }
 vm_map_unlock_ln(old_map, "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../uvm/uvm_map.c", 3809);
 vm_map_unlock_ln(new_map, "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../uvm/uvm_map.c", 3810);
 uvm_unmap_detach(&dead, 0);
 if (vm1->vm_shm)
  shmfork(vm1, vm2);
 return vm2;
}
vaddr_t
uvm_map_hint(struct vmspace *vm, vm_prot_t prot, vaddr_t minaddr,
    vaddr_t maxaddr)
{
 vaddr_t addr;
 vaddr_t spacing;
 spacing = (((((4UL * 1024 * 1024 * 1024))<((8L*1024*1024*1024)))?((4UL * 1024 * 1024 * 1024)):((8L*1024*1024*1024))) - 1);
 addr = (vaddr_t)vm->vm_daddr;
 if (vm->vm_dused < spacing >> 13)
  addr += (8L*1024*1024*1024);
 if (addr < maxaddr) {
  while (spacing > maxaddr - addr)
   spacing >>= 1;
 }
 addr += arc4random() & spacing;
 return ((((addr) + ((1 << 13) - 1)) & ~((1 << 13) - 1)));
}
int
uvm_map_submap(struct vm_map *map, vaddr_t start, vaddr_t end,
    struct vm_map *submap)
{
 struct vm_map_entry *entry;
 int result;
 if (start > map->max_offset || end > map->max_offset ||
     start < map->min_offset || end < map->min_offset)
  return 22;
 vm_map_lock_ln(map, "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../uvm/uvm_map.c", 3899);
 if (uvm_map_lookup_entry(map, start, &entry)) {
  do { (((entry)->end + (entry)->fspace > (start)) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../uvm/uvm_map.c", 3902, "(entry)->end + (entry)->fspace > (start)")); if ((entry)->start < (start)) uvm_map_clip_start((map), (entry), (start)); } while (0);
  do { (((entry)->start < (end)) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../uvm/uvm_map.c", 3903, "(entry)->start < (end)")); if ((entry)->end > (end)) uvm_map_clip_end((map), (entry), (end)); } while (0);
 } else
  entry = ((void *)0);
 if (entry != ((void *)0) &&
     entry->start == start && entry->end == end &&
     entry->object.uvm_obj == ((void *)0) && entry->aref.ar_amap == ((void *)0) &&
     !(((entry)->etype & 0x04) != 0) && !(((entry)->etype & 0x08) != 0)) {
  entry->etype |= 0x02;
  entry->object.sub_map = submap;
  entry->offset = 0;
  do { map->ref_count++; } while (0);
  result = 0;
 } else
  result = 22;
 vm_map_unlock_ln(map, "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../uvm/uvm_map.c", 3919);
 return(result);
}
boolean_t
uvm_map_checkprot(struct vm_map *map, vaddr_t start, vaddr_t end,
    vm_prot_t protection)
{
 struct vm_map_entry *entry;
 if (start < map->min_offset || end > map->max_offset || start > end)
  return 0;
 if (start == end)
  return 1;
 for (entry = uvm_map_entrybyaddr(&map->addr, start);
     entry != ((void *)0) && entry->start < end;
     entry = uvm_map_addr_RBT_NEXT(entry)) {
  if ((((entry)->etype & 0x10) != 0) ||
      (entry->end < end && entry->end != ((entry)->end + (entry)->guard + (entry)->fspace)))
   return 0;
  if ((entry->protection & protection) != protection)
   return 0;
 }
 return 1;
}
vm_map_t
uvm_map_create(pmap_t pmap, vaddr_t min, vaddr_t max, int flags)
{
 vm_map_t map;
 map = malloc(sizeof *map, 30, 0x0001);
 map->pmap = pmap;
 uvm_map_setup(map, min, max, flags);
 return (map);
}
void
uvm_map_deallocate(vm_map_t map)
{
 int c;
 struct uvm_map_deadq dead;
 c = --map->ref_count;
 if (c > 0) {
  return;
 }
 do { (&dead)->tqh_first = ((void *)0); (&dead)->tqh_last = &(&dead)->tqh_first; } while (0);
 do {} while (0);
 uvm_unmap_remove(map, map->min_offset, map->max_offset, &dead,
     1, 0);
 pmap_destroy(map->pmap);
 ((uvm_map_addr_RBT_EMPTY(&map->addr)) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../uvm/uvm_map.c", 3999, "RBT_EMPTY(uvm_map_addr, &map->addr)"));
 free(map, 30, sizeof *map);
 uvm_unmap_detach(&dead, 0);
}
int
uvm_map_inherit(struct vm_map *map, vaddr_t start, vaddr_t end,
    vm_inherit_t new_inheritance)
{
 struct vm_map_entry *entry;
 switch (new_inheritance) {
 case 2:
 case 1:
 case 0:
 case 3:
  break;
 default:
  return (22);
 }
 if (start > end)
  return 22;
 start = (((start)>(map->min_offset))?(start):(map->min_offset));
 end = (((end)<(map->max_offset))?(end):(map->max_offset));
 if (start >= end)
  return 0;
 vm_map_lock_ln(map, "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../uvm/uvm_map.c", 4035);
 entry = uvm_map_entrybyaddr(&map->addr, start);
 if (entry->end > start)
  do { (((entry)->end + (entry)->fspace > (start)) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../uvm/uvm_map.c", 4039, "(entry)->end + (entry)->fspace > (start)")); if ((entry)->start < (start)) uvm_map_clip_start((map), (entry), (start)); } while (0);
 else
  entry = uvm_map_addr_RBT_NEXT(entry);
 while (entry != ((void *)0) && entry->start < end) {
  do { (((entry)->start < (end)) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../uvm/uvm_map.c", 4044, "(entry)->start < (end)")); if ((entry)->end > (end)) uvm_map_clip_end((map), (entry), (end)); } while (0);
  entry->inheritance = new_inheritance;
  entry = uvm_map_addr_RBT_NEXT(entry);
 }
 vm_map_unlock_ln(map, "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../uvm/uvm_map.c", 4049);
 return (0);
}
int
uvm_map_advice(struct vm_map *map, vaddr_t start, vaddr_t end, int new_advice)
{
 struct vm_map_entry *entry;
 switch (new_advice) {
 case 0:
 case 1:
 case 2:
  break;
 default:
  return (22);
 }
 if (start > end)
  return 22;
 start = (((start)>(map->min_offset))?(start):(map->min_offset));
 end = (((end)<(map->max_offset))?(end):(map->max_offset));
 if (start >= end)
  return 0;
 vm_map_lock_ln(map, "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../uvm/uvm_map.c", 4079);
 entry = uvm_map_entrybyaddr(&map->addr, start);
 if (entry != ((void *)0) && entry->end > start)
  do { (((entry)->end + (entry)->fspace > (start)) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../uvm/uvm_map.c", 4083, "(entry)->end + (entry)->fspace > (start)")); if ((entry)->start < (start)) uvm_map_clip_start((map), (entry), (start)); } while (0);
 else if (entry!= ((void *)0))
  entry = uvm_map_addr_RBT_NEXT(entry);
 while (entry != ((void *)0) && entry->start < end) {
  do { (((entry)->start < (end)) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../uvm/uvm_map.c", 4091, "(entry)->start < (end)")); if ((entry)->end > (end)) uvm_map_clip_end((map), (entry), (end)); } while (0);
  entry->advice = new_advice;
  entry = uvm_map_addr_RBT_NEXT(entry);
 }
 vm_map_unlock_ln(map, "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../uvm/uvm_map.c", 4096);
 return (0);
}
int
uvm_map_extract(struct vm_map *srcmap, vaddr_t start, vsize_t len,
    vaddr_t *dstaddrp, int flags)
{
 struct uvm_map_deadq dead;
 struct vm_map_entry *first, *entry, *newentry, *tmp1, *tmp2;
 vaddr_t dstaddr;
 vaddr_t end;
 vaddr_t cp_start;
 vsize_t cp_len, cp_off;
 int error;
 do { (&dead)->tqh_first = ((void *)0); (&dead)->tqh_last = &(&dead)->tqh_first; } while (0);
 end = start + len;
 if ((start & (vaddr_t)((1 << 13) - 1)) != 0 ||
     (end & (vaddr_t)((1 << 13) - 1)) != 0 || end < start)
  return 22;
 if (start < srcmap->min_offset || end > srcmap->max_offset)
  return 22;
 if (len == 0)
  return 0;
 vm_map_lock_ln(srcmap, "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../uvm/uvm_map.c", 4143);
 first = uvm_map_entrybyaddr(&srcmap->addr, start);
 for (entry = first; entry != ((void *)0) && entry->end < end;
     entry = uvm_map_addr_RBT_NEXT(entry)) {
  if (((entry)->end + (entry)->guard + (entry)->fspace) != entry->end ||
      (((entry)->etype & 0x10) != 0)) {
   error = 22;
   goto fail;
  }
 }
 if (entry == ((void *)0) || (((entry)->etype & 0x10) != 0)) {
  error = 22;
  goto fail;
 }
 for (entry = first; entry != ((void *)0) && entry->start < end;
     entry = uvm_map_addr_RBT_NEXT(entry)) {
  if ((((entry)->etype & 0x08) != 0))
   amap_copy(srcmap, entry, 0x0002, 1, start, end);
  if ((((entry)->etype & 0x08) != 0)) {
   error = 12;
   goto fail;
  }
 }
 vm_map_lock_ln(kernel_map, "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../uvm/uvm_map.c", 4179);
 if (uvm_map_findspace(kernel_map, &tmp1, &tmp2, &dstaddr, len,
     ((((1 << 13))>(((1<<14))))?((1 << 13)):(((1<<14)))), ((start) & (1<<13)),
     0x00, 0) != 0) {
  error = 12;
  goto fail2;
 }
 *dstaddrp = dstaddr;
 for (entry = first; entry != ((void *)0) && entry->start < end;
     entry = uvm_map_addr_RBT_NEXT(entry)) {
  ((void)0);
  if ((((entry)->etype & 0x10) != 0))
   continue;
  cp_start = entry->start;
  if (cp_start < start) {
   cp_off = start - cp_start;
   cp_start = start;
  } else
   cp_off = 0;
  cp_len = (((entry->end)<(end))?(entry->end):(end)) - cp_start;
  newentry = uvm_mapent_clone(kernel_map,
      cp_start - start + dstaddr, cp_len, cp_off,
      entry->protection, entry->max_protection,
      entry, &dead, flags, 0x1 | 0x2);
  if (newentry == ((void *)0)) {
   error = 12;
   goto fail2_unmap;
  }
  kernel_map->size += cp_len;
  if (flags & 0x8)
   newentry->protection = newentry->max_protection;
  pmap_copy(kernel_map->pmap, srcmap->pmap,
      cp_start - start + dstaddr, cp_len, cp_start);
 }
 ;
 error = 0;
fail2_unmap:
 if (error) {
  uvm_unmap_remove(kernel_map, dstaddr, dstaddr + len, &dead,
      0, 1);
 }
fail2:
 vm_map_unlock_ln(kernel_map, "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../uvm/uvm_map.c", 4241);
fail:
 vm_map_unlock_ln(srcmap, "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../uvm/uvm_map.c", 4244);
 uvm_unmap_detach(&dead, 0);
 return error;
}
int
uvm_map_clean(struct vm_map *map, vaddr_t start, vaddr_t end, int flags)
{
 struct vm_map_entry *first, *entry;
 struct vm_amap *amap;
 struct vm_anon *anon;
 struct vm_page *pg;
 struct uvm_object *uobj;
 vaddr_t cp_start, cp_end;
 int refs;
 int error;
 boolean_t rv;
 (((flags & (0x008|0x004)) != (0x008|0x004)) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../uvm/uvm_map.c", 4281, "(flags & (PGO_FREE|PGO_DEACTIVATE)) != (PGO_FREE|PGO_DEACTIVATE)"));
 if (start > end || start < map->min_offset || end > map->max_offset)
  return 22;
 vm_map_lock_read_ln(map, "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../uvm/uvm_map.c", 4286);
 first = uvm_map_entrybyaddr(&map->addr, start);
 for (entry = first; entry != ((void *)0) && entry->start < end;
     entry = uvm_map_addr_RBT_NEXT(entry)) {
  if ((((entry)->etype & 0x02) != 0)) {
   vm_map_unlock_read_ln(map, "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../uvm/uvm_map.c", 4293);
   return 22;
  }
  if ((((entry)->etype & 0x02) != 0) ||
      (((entry)->etype & 0x10) != 0) ||
      (entry->end < end &&
      ((entry)->end + (entry)->guard + (entry)->fspace) != entry->end)) {
   vm_map_unlock_read_ln(map, "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../uvm/uvm_map.c", 4300);
   return 14;
  }
 }
 error = 0;
 for (entry = first; entry != ((void *)0) && entry->start < end;
     entry = uvm_map_addr_RBT_NEXT(entry)) {
  amap = entry->aref.ar_amap;
  if ((((entry)->etype & 0x01) != 0))
   uobj = entry->object.uvm_obj;
  else
   uobj = ((void *)0);
  if (amap == ((void *)0) || (flags & (0x004|0x008)) == 0)
   goto flush_object;
  cp_start = (((entry->start)>(start))?(entry->start):(start));
  cp_end = (((entry->end)<(end))?(entry->end):(end));
  for (; cp_start != cp_end; cp_start += (1 << 13)) {
   anon = amap_lookup(&entry->aref,
       cp_start - entry->start);
   if (anon == ((void *)0))
    continue;
   pg = anon->an_page;
   if (pg == ((void *)0)) {
    continue;
   }
   ((pg->pg_flags & 0x00100000) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../uvm/uvm_map.c", 4335, "pg->pg_flags & PQ_ANON"));
   switch (flags & (0x001|0x008|0x004)) {
   case 0x001|0x008:
   case 0x001|0x004:
   case 0x004:
deactivate_it:
    if (pg->wire_count != 0)
     break;
    __mtx_enter(&uvm.pageqlock );
    ((pg->uanon == anon) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../uvm/uvm_map.c", 4354, "pg->uanon == anon"));
    pmap_page_protect(pg, 0x00);
    uvm_pagedeactivate(pg);
    __mtx_leave(&uvm.pageqlock );
    break;
   case 0x008:
    if (((amap)->am_ref) > 1)
     goto deactivate_it;
    if (pg->wire_count != 0) {
     break;
    }
    amap_unadd(&entry->aref,
        cp_start - entry->start);
    refs = --anon->an_ref;
    if (refs == 0)
     uvm_anfree(anon);
    break;
   default:
    panic("uvm_map_clean: weird flags");
   }
  }
flush_object:
  cp_start = (((entry->start)>(start))?(entry->start):(start));
  cp_end = (((entry->end)<(end))?(entry->end):(end));
  if (uobj != ((void *)0) &&
      ((flags & 0x008) == 0 ||
       ((entry->max_protection & 0x02) != 0 &&
        (entry->etype & 0x04) == 0))) {
   rv = uobj->pgops->pgo_flush(uobj,
       cp_start - entry->start + entry->offset,
       cp_end - entry->start + entry->offset, flags);
   if (rv == 0)
    error = 14;
  }
 }
 vm_map_unlock_read_ln(map, "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../uvm/uvm_map.c", 4411);
 return error;
}
void
uvm_map_clip_end(struct vm_map *map, struct vm_map_entry *entry, vaddr_t addr)
{
 struct vm_map_entry *tmp;
 ((entry->start < addr && ((entry)->end + (entry)->guard + (entry)->fspace) > addr) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../uvm/uvm_map.c", 4423, "entry->start < addr && VMMAP_FREE_END(entry) > addr"));
 tmp = uvm_mapent_alloc(map, 0);
 uvm_map_splitentry(map, entry, tmp, addr);
}
void
uvm_map_clip_start(struct vm_map *map, struct vm_map_entry *entry, vaddr_t addr)
{
 struct vm_map_entry *tmp;
 struct uvm_addr_state *free;
 free = uvm_map_uaddr_e(map, entry);
 uvm_mapent_free_remove(map, free, entry);
 uvm_mapent_addr_remove(map, entry);
 ((entry->start < addr && ((entry)->end + (entry)->guard + (entry)->fspace) > addr) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../uvm/uvm_map.c", 4451, "entry->start < addr && VMMAP_FREE_END(entry) > addr"));
 tmp = uvm_mapent_alloc(map, 0);
 uvm_mapent_copy(entry, tmp);
 uvm_mapent_addr_insert(map, tmp);
 uvm_mapent_free_insert(map, free, tmp);
 uvm_map_splitentry(map, tmp, entry, addr);
}
static __inline vaddr_t uvm_map_boundfix(vaddr_t, vaddr_t, vaddr_t);
static __inline vaddr_t
uvm_map_boundfix(vaddr_t min, vaddr_t max, vaddr_t bound)
{
 return (min < bound && max > bound) ? bound : max;
}
struct uvm_addr_state*
uvm_map_uaddr(struct vm_map *map, vaddr_t addr)
{
 struct uvm_addr_state *uaddr;
 int i;
 if (addr < (1 << 13))
  return ((void *)0);
 if ((map->flags & 0x40) == 0) {
  if (addr >= uvm_maxkaddr)
   return ((void *)0);
 }
 if (map->uaddr_exe != ((void *)0) && addr >= map->uaddr_exe->uaddr_minaddr &&
     addr < map->uaddr_exe->uaddr_maxaddr)
  return map->uaddr_exe;
 if ((addr >= map->b_start && addr < map->b_end) ||
     (addr >= map->s_start && addr < map->s_end)) {
  if (map->uaddr_brk_stack != ((void *)0) &&
      addr >= map->uaddr_brk_stack->uaddr_minaddr &&
      addr < map->uaddr_brk_stack->uaddr_maxaddr) {
   return map->uaddr_brk_stack;
  } else
   return ((void *)0);
 }
 for (i = 0; i < (sizeof((map->uaddr_any)) / sizeof((map->uaddr_any)[0])); i++) {
  uaddr = map->uaddr_any[i];
  if (uaddr == ((void *)0))
   continue;
  if (uaddr->uaddr_functions->uaddr_free_insert == ((void *)0))
   continue;
  if (addr >= uaddr->uaddr_minaddr &&
      addr < uaddr->uaddr_maxaddr)
   return uaddr;
 }
 return ((void *)0);
}
struct uvm_addr_state*
uvm_map_uaddr_e(struct vm_map *map, struct vm_map_entry *entry)
{
 return uvm_map_uaddr(map, ((entry)->end + (entry)->guard));
}
vsize_t
uvm_map_boundary(struct vm_map *map, vaddr_t min, vaddr_t max)
{
 struct uvm_addr_state *uaddr;
 int i;
 max = uvm_map_boundfix(min, max, (1 << 13));
 if ((map->flags & 0x40) == 0)
  max = uvm_map_boundfix(min, max, uvm_maxkaddr);
 if (map->uaddr_exe != ((void *)0)) {
  max = uvm_map_boundfix(min, max, map->uaddr_exe->uaddr_minaddr);
  max = uvm_map_boundfix(min, max, map->uaddr_exe->uaddr_maxaddr);
 }
 if (map->uaddr_brk_stack != ((void *)0)) {
  max = uvm_map_boundfix(min, max,
      map->uaddr_brk_stack->uaddr_minaddr);
  max = uvm_map_boundfix(min, max,
      map->uaddr_brk_stack->uaddr_maxaddr);
 }
 for (i = 0; i < (sizeof((map->uaddr_any)) / sizeof((map->uaddr_any)[0])); i++) {
  uaddr = map->uaddr_any[i];
  if (uaddr != ((void *)0)) {
   max = uvm_map_boundfix(min, max, uaddr->uaddr_minaddr);
   max = uvm_map_boundfix(min, max, uaddr->uaddr_maxaddr);
  }
 }
 max = uvm_map_boundfix(min, max, map->s_start);
 max = uvm_map_boundfix(min, max, map->s_end);
 max = uvm_map_boundfix(min, max, map->b_start);
 max = uvm_map_boundfix(min, max, map->b_end);
 return max;
}
void
uvm_map_vmspace_update(struct vm_map *map,
    struct uvm_map_deadq *dead, int flags)
{
 struct vmspace *vm;
 vaddr_t b_start, b_end, s_start, s_end;
 ((map->flags & 0x40) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../uvm/uvm_map.c", 4606, "map->flags & VM_MAP_ISVMSPACE"));
 ((__builtin_offsetof(struct vmspace, vm_map) == 0) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../uvm/uvm_map.c", 4607, "offsetof(struct vmspace, vm_map) == 0"));
 vm = (struct vmspace *)map;
 b_start = (vaddr_t)vm->vm_daddr;
 b_end = b_start + (8L*1024*1024*1024);
 s_start = ((((vaddr_t)vm->vm_maxsaddr)<((vaddr_t)vm->vm_minsaddr))?((vaddr_t)vm->vm_maxsaddr):((vaddr_t)vm->vm_minsaddr));
 s_end = ((((vaddr_t)vm->vm_maxsaddr)>((vaddr_t)vm->vm_minsaddr))?((vaddr_t)vm->vm_maxsaddr):((vaddr_t)vm->vm_minsaddr));
 if ((b_start & (vaddr_t)((1 << 13) - 1)) != 0 ||
     (b_end & (vaddr_t)((1 << 13) - 1)) != 0 ||
     (s_start & (vaddr_t)((1 << 13) - 1)) != 0 ||
     (s_end & (vaddr_t)((1 << 13) - 1)) != 0) {
  panic("uvm_map_vmspace_update: vmspace %p invalid bounds: "
      "b=0x%lx-0x%lx s=0x%lx-0x%lx",
      vm, b_start, b_end, s_start, s_end);
 }
 if (__builtin_expect(((map->b_start == b_start && map->b_end == b_end && map->s_start == s_start && map->s_end == s_end) != 0), 1))
  return;
 uvm_map_freelist_update(map, dead, b_start, b_end,
     s_start, s_end, flags);
}
void
uvm_map_kmem_grow(struct vm_map *map, struct uvm_map_deadq *dead,
    vsize_t alloc_sz, int flags)
{
 vsize_t sz;
 vaddr_t end;
 struct vm_map_entry *entry;
 (((map->flags & 0x40) == 0) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../uvm/uvm_map.c", 4653, "(map->flags & VM_MAP_ISVMSPACE) == 0"));
 uvm_map_freelist_update_clear(map, dead);
 if (map->flags & 0x20)
  alloc_sz += (1 << 13);
 sz = (((4 * alloc_sz)>((256 * (vaddr_t)(1 << 13))))?(4 * alloc_sz):((256 * (vaddr_t)(1 << 13))));
 end = (((uvm_maxkaddr)>(map->min_offset))?(uvm_maxkaddr):(map->min_offset));
 entry = uvm_map_entrybyaddr(&map->addr, end);
 while (entry && entry->fspace < alloc_sz)
  entry = uvm_map_addr_RBT_NEXT(entry);
 if (entry) {
  end = (((((entry)->end + (entry)->guard))>(end))?(((entry)->end + (entry)->guard)):(end));
  end += (((sz)<(map->max_offset - end))?(sz):(map->max_offset - end));
 } else
  end = map->max_offset;
 uvm_maxkaddr = pmap_growkernel(end);
 uvm_map_freelist_update_refill(map, flags);
}
void
uvm_map_freelist_update_clear(struct vm_map *map, struct uvm_map_deadq *dead)
{
 struct uvm_addr_state *free;
 struct vm_map_entry *entry, *prev, *next;
 prev = ((void *)0);
 for (entry = uvm_map_addr_RBT_MIN(&map->addr); entry != ((void *)0);
     entry = next) {
  next = uvm_map_addr_RBT_NEXT(entry);
  free = uvm_map_uaddr_e(map, entry);
  uvm_mapent_free_remove(map, free, entry);
  if (prev != ((void *)0) && entry->start == entry->end) {
   prev->fspace += ((entry)->end + (entry)->guard + (entry)->fspace) - entry->end;
   uvm_mapent_addr_remove(map, entry);
   dead_entry_push((dead), (entry));
  } else
   prev = entry;
 }
}
void
uvm_map_freelist_update_refill(struct vm_map *map, int flags)
{
 struct vm_map_entry *entry;
 vaddr_t min, max;
 for ((entry) = uvm_map_addr_RBT_MIN((&map->addr)); (entry) != ((void *)0); (entry) = uvm_map_addr_RBT_NEXT((entry))) {
  min = ((entry)->end + (entry)->guard);
  max = ((entry)->end + (entry)->guard + (entry)->fspace);
  entry->fspace = 0;
  entry = uvm_map_fix_space(map, entry, min, max, flags);
 }
 do {} while (0);
}
void
uvm_map_freelist_update(struct vm_map *map, struct uvm_map_deadq *dead,
    vaddr_t b_start, vaddr_t b_end, vaddr_t s_start, vaddr_t s_end, int flags)
{
 ((void)0);
 uvm_map_freelist_update_clear(map, dead);
 map->b_start = b_start;
 map->b_end = b_end;
 map->s_start = s_start;
 map->s_end = s_end;
 uvm_map_freelist_update_refill(map, flags);
}
void
uvm_map_set_uaddr(struct vm_map *map, struct uvm_addr_state **which,
    struct uvm_addr_state *newval)
{
 struct uvm_map_deadq dead;
 ((which != ((void *)0)) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../uvm/uvm_map.c", 4776, "which != NULL"));
 (((void*)map <= (void*)(which) && (void*)(which) < (void*)(map + 1)) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../uvm/uvm_map.c", 4778, "(void*)map <= (void*)(which) && (void*)(which) < (void*)(map + 1)"));
 vm_map_lock_ln(map, "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../uvm/uvm_map.c", 4780);
 do { (&dead)->tqh_first = ((void *)0); (&dead)->tqh_last = &(&dead)->tqh_first; } while (0);
 uvm_map_freelist_update_clear(map, &dead);
 uvm_addr_destroy(*which);
 *which = newval;
 uvm_map_freelist_update_refill(map, 0);
 vm_map_unlock_ln(map, "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../uvm/uvm_map.c", 4788);
 uvm_unmap_detach(&dead, 0);
}
struct vm_map_entry*
uvm_map_fix_space(struct vm_map *map, struct vm_map_entry *entry,
    vaddr_t min, vaddr_t max, int flags)
{
 struct uvm_addr_state *free, *entfree;
 vaddr_t lmax;
 ((entry == ((void *)0) || (entry->etype & 0x80) == 0) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../uvm/uvm_map.c", 4804, "entry == NULL || (entry->etype & UVM_ET_FREEMAPPED) == 0"));
 ((void)0);
 ((void)0);
 entfree = (entry == ((void *)0) ? ((void *)0) :
     uvm_map_uaddr_e(map, entry));
 while (min != max) {
  if ((map->flags & 0x20) && entry != ((void *)0) &&
      ((entry)->end + (entry)->guard + (entry)->fspace) == entry->end &&
      entry->start != entry->end) {
   if (max - min == 2 * (1 << 13)) {
    entry->guard = 2 * (1 << 13);
    min = max;
   } else {
    entry->guard = (1 << 13);
    min += (1 << 13);
   }
   continue;
  }
  if (entry != ((void *)0) && entry->fspace == 0 &&
      entry->guard > (1 << 13)) {
   entry->guard = (1 << 13);
   min = ((entry)->end + (entry)->guard);
  }
  lmax = uvm_map_boundary(map, min, max);
  free = uvm_map_uaddr(map, min);
  if (entry != ((void *)0) && free == entfree &&
      !((map->flags & 0x40) == 0 &&
      min == uvm_maxkaddr)) {
   ((void)0);
   entry->fspace += lmax - min;
  } else {
   if (entry != ((void *)0))
    uvm_mapent_free_insert(map, entfree, entry);
   entry = uvm_mapent_alloc(map, flags);
   ((void)0);
   entry->end = entry->start = min;
   entry->guard = 0;
   entry->fspace = lmax - min;
   entry->object.uvm_obj = ((void *)0);
   entry->offset = 0;
   entry->etype = 0;
   entry->protection = entry->max_protection = 0;
   entry->inheritance = 0;
   entry->wired_count = 0;
   entry->advice = 0;
   entry->aref.ar_pageoff = 0;
   entry->aref.ar_amap = ((void *)0);
   uvm_mapent_addr_insert(map, entry);
   entfree = free;
  }
  min = lmax;
 }
 if (entry != ((void *)0))
  uvm_mapent_free_insert(map, entfree, entry);
 return entry;
}
int
uvm_map_mquery(struct vm_map *map, vaddr_t *addr_p, vsize_t sz, voff_t offset,
    int flags)
{
 struct vm_map_entry *entry, *last;
 vaddr_t addr;
 vaddr_t tmp, pmap_align, pmap_offset;
 int error;
 addr = *addr_p;
 vm_map_lock_read_ln(map, "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../uvm/uvm_map.c", 4920);
 if (offset != ((voff_t) -1)) {
  pmap_align = ((((1 << 13))>(((1<<14))))?((1 << 13)):(((1<<14))));
  pmap_offset = ((offset) & (1<<13));
 } else {
  pmap_align = (1 << 13);
  pmap_offset = 0;
 }
 if (!(flags & 0x0010000) && offset != ((voff_t) -1)) {
    tmp = (addr & ~(pmap_align - 1)) | pmap_offset;
  if (tmp < addr)
   tmp += pmap_align;
  addr = tmp;
 }
 entry = uvm_map_entrybyaddr(&map->addr, addr);
 last = ((void *)0);
 if (uvm_map_isavail(map, ((void *)0), &entry, &last, addr, sz)) {
  error = 0;
  goto out;
 }
 if (flags & 0x0010000) {
  error = 22;
  goto out;
 }
 error = 12;
 if (entry == ((void *)0)) {
  if (addr >= map->max_offset)
   goto out;
  else
   entry = uvm_map_addr_RBT_MIN(&map->addr);
 } else if (((entry)->end + (entry)->guard) <= addr) {
  entry = uvm_map_addr_RBT_NEXT(entry);
 }
 for (; entry != ((void *)0);
     entry = uvm_map_addr_RBT_NEXT(entry)) {
  if (entry->fspace == 0)
   continue;
  addr = ((entry)->end + (entry)->guard);
restart:
  tmp = (addr & ~(pmap_align - 1)) | pmap_offset;
  if (tmp < addr)
   tmp += pmap_align;
  addr = tmp;
  if (addr >= ((entry)->end + (entry)->guard + (entry)->fspace))
   continue;
  if (addr + sz > map->b_start && addr < map->b_end) {
   if (((entry)->end + (entry)->guard + (entry)->fspace) > map->b_end) {
    addr = map->b_end;
    goto restart;
   } else
    continue;
  }
  if (addr + sz > map->s_start && addr < map->s_end) {
   if (((entry)->end + (entry)->guard + (entry)->fspace) > map->s_end) {
    addr = map->s_end;
    goto restart;
   } else
    continue;
  }
  last = ((void *)0);
  if (uvm_map_isavail(map, ((void *)0), &entry, &last, addr, sz)) {
   error = 0;
   goto out;
  }
 }
out:
 vm_map_unlock_read_ln(map, "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../uvm/uvm_map.c", 5015);
 if (error == 0)
  *addr_p = addr;
 return error;
}
int
uvm_mapent_bias(struct vm_map *map, struct vm_map_entry *entry)
{
 vaddr_t start, end;
 start = ((entry)->end + (entry)->guard);
 end = ((entry)->end + (entry)->guard + (entry)->fspace);
 if (end >= map->b_start && start < map->b_end)
  return 1;
 if (end >= map->s_start && start < map->s_end) {
  return -1;
 }
 return 0;
}
boolean_t
vm_map_lock_try_ln(struct vm_map *map, char *file, int line)
{
 boolean_t rv;
 if (map->flags & 0x02) {
  rv = __mtx_enter_try(&map->mtx );
 } else {
  __mtx_enter(&map->flags_lock );
  if (map->flags & 0x08) {
   __mtx_leave(&map->flags_lock );
   return (0);
  }
  __mtx_leave(&map->flags_lock );
  rv = (_rw_enter(&map->lock, 0x0001UL|0x0040UL )
      == 0);
  if (rv) {
   __mtx_enter(&map->flags_lock );
   if (map->flags & 0x08) {
    _rw_exit(&map->lock );
    rv = 0;
   }
   __mtx_leave(&map->flags_lock );
  }
 }
 if (rv) {
  map->timestamp++;
  do {} while (0);
  do {} while (0);
  do {} while (0);
 }
 return (rv);
}
void
vm_map_lock_ln(struct vm_map *map, char *file, int line)
{
 if ((map->flags & 0x02) == 0) {
  do {
   __mtx_enter(&map->flags_lock );
tryagain:
   while (map->flags & 0x08) {
    map->flags |= 0x10;
    msleep(&map->flags, &map->flags_lock,
        4, vmmapbsy, 0);
   }
   __mtx_leave(&map->flags_lock );
  } while (_rw_enter(&map->lock, 0x0001UL|0x0020UL
      ) != 0);
  __mtx_enter(&map->flags_lock );
  if (map->flags & 0x08) {
   _rw_exit(&map->lock );
   goto tryagain;
  }
  __mtx_leave(&map->flags_lock );
 } else {
  __mtx_enter(&map->mtx );
 }
 map->timestamp++;
 do {} while (0);
 do {} while (0);
 do {} while (0);
}
void
vm_map_lock_read_ln(struct vm_map *map, char *file, int line)
{
 if ((map->flags & 0x02) == 0)
  _rw_enter_read(&map->lock );
 else
  __mtx_enter(&map->mtx );
 do {} while (0);
 do {} while (0);
 do {} while (0);
}
void
vm_map_unlock_ln(struct vm_map *map, char *file, int line)
{
 do {} while (0);
 do {} while (0);
 do {} while (0);
 if ((map->flags & 0x02) == 0)
  _rw_exit(&map->lock );
 else
  __mtx_leave(&map->mtx );
}
void
vm_map_unlock_read_ln(struct vm_map *map, char *file, int line)
{
               do {} while (0);
               do {} while (0);
 do {} while (0);
 if ((map->flags & 0x02) == 0)
  _rw_exit_read(&map->lock );
 else
  __mtx_leave(&map->mtx );
}
void
vm_map_downgrade_ln(struct vm_map *map, char *file, int line)
{
 do {} while (0);
 do {} while (0);
 do {} while (0);
 do {} while (0);
 (((map->flags & 0x02) == 0) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../uvm/uvm_map.c", 5166, "(map->flags & VM_MAP_INTRSAFE) == 0"));
 if ((map->flags & 0x02) == 0)
  _rw_enter(&map->lock, 0x0004UL );
}
void
vm_map_upgrade_ln(struct vm_map *map, char *file, int line)
{
               do {} while (0);
               do {} while (0);
 do {} while (0);
 (((map->flags & 0x02) == 0) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../uvm/uvm_map.c", 5177, "(map->flags & VM_MAP_INTRSAFE) == 0"));
 if ((map->flags & 0x02) == 0) {
  _rw_exit_read(&map->lock );
  _rw_enter_write(&map->lock );
 }
 do {} while (0);
 do {} while (0);
}
void
vm_map_busy_ln(struct vm_map *map, char *file, int line)
{
 (((map->flags & 0x02) == 0) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../uvm/uvm_map.c", 5189, "(map->flags & VM_MAP_INTRSAFE) == 0"));
 __mtx_enter(&map->flags_lock );
 map->flags |= 0x08;
 __mtx_leave(&map->flags_lock );
}
void
vm_map_unbusy_ln(struct vm_map *map, char *file, int line)
{
 int oflags;
 (((map->flags & 0x02) == 0) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../uvm/uvm_map.c", 5200, "(map->flags & VM_MAP_INTRSAFE) == 0"));
 __mtx_enter(&map->flags_lock );
 oflags = map->flags;
 map->flags &= ~(0x08|0x10);
 __mtx_leave(&map->flags_lock );
 if (oflags & 0x10)
  wakeup(&map->flags);
}
int
uvm_map_fill_vmmap(struct vm_map *map, struct kinfo_vmentry *kve,
    size_t *lenp)
{
 struct vm_map_entry *entry;
 vaddr_t start;
 int cnt, maxcnt, error = 0;
 ((*lenp > 0) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../uvm/uvm_map.c", 5218, "*lenp > 0"));
 (((*lenp % sizeof(*kve)) == 0) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../uvm/uvm_map.c", 5219, "(*lenp % sizeof(*kve)) == 0"));
 cnt = 0;
 maxcnt = *lenp / sizeof(*kve);
 ((maxcnt > 0) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../uvm/uvm_map.c", 5222, "maxcnt > 0"));
 start = (vaddr_t)kve[0].kve_start;
 vm_map_lock_ln(map, "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../uvm/uvm_map.c", 5231);
 for ((entry) = uvm_map_addr_RBT_MIN((&map->addr)); (entry) != ((void *)0); (entry) = uvm_map_addr_RBT_NEXT((entry))) {
  if (cnt == maxcnt) {
   error = 12;
   break;
  }
  if (start != 0 && entry->start < start)
   continue;
  kve->kve_start = entry->start;
  kve->kve_end = entry->end;
  kve->kve_guard = entry->guard;
  kve->kve_fspace = entry->fspace;
  kve->kve_fspace_augment = entry->fspace_augment;
  kve->kve_offset = entry->offset;
  kve->kve_wired_count = entry->wired_count;
  kve->kve_etype = entry->etype;
  kve->kve_protection = entry->protection;
  kve->kve_max_protection = entry->max_protection;
  kve->kve_advice = entry->advice;
  kve->kve_inheritance = entry->inheritance;
  kve->kve_flags = entry->flags;
  kve++;
  cnt++;
 }
 vm_map_unlock_ln(map, "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../uvm/uvm_map.c", 5255);
 ((cnt <= maxcnt) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../uvm/uvm_map.c", 5257, "cnt <= maxcnt"));
 *lenp = sizeof(*kve) * cnt;
 return error;
}
static void uvm_map_addr_RBT_AUGMENT(void *ptr) { struct vm_map_entry *p = ptr; return uvm_map_addr_augment(p); } static int uvm_map_addr_RBT_COMPARE(const void *lptr, const void *rptr) { const struct vm_map_entry *l = lptr, *r = rptr; return uvm_mapentry_addrcmp(l, r); } static const struct rb_type uvm_map_addr_RBT_INFO = { uvm_map_addr_RBT_COMPARE, uvm_map_addr_RBT_AUGMENT, __builtin_offsetof(struct vm_map_entry, daddrs.addr_entry), }; const struct rb_type *const uvm_map_addr_RBT_TYPE = &uvm_map_addr_RBT_INFO;
void
uvm_map_setup_md(struct vm_map *map)
{
 vaddr_t min, max;
 min = map->min_offset;
 max = map->max_offset;
 if (min < (1 << 13))
  min = (1 << 13);
 map->uaddr_any[0] = uaddr_rnd_create(min, max);
 map->uaddr_brk_stack = uaddr_stack_brk_create(min, max);
}
