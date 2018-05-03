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
struct sigacts {
 sig_t ps_sigact[33];
 sigset_t ps_catchmask[33];
 sigset_t ps_sigonstack;
 sigset_t ps_sigintr;
 sigset_t ps_sigreset;
 sigset_t ps_siginfo;
 sigset_t ps_sigignore;
 sigset_t ps_sigcatch;
 int ps_flags;
 int ps_refcnt;
};
enum signal_type { SPROCESS, STHREAD, SPROPAGATED };
int coredump(struct proc *p);
void execsigs(struct proc *p);
void gsignal(int pgid, int sig);
void csignal(pid_t pgid, int signum, uid_t uid, uid_t euid);
int issignal(struct proc *p);
void pgsignal(struct pgrp *pgrp, int sig, int checkctty);
void psignal(struct proc *p, int sig);
void ptsignal(struct proc *p, int sig, enum signal_type type);
void siginit(struct process *);
void trapsignal(struct proc *p, int sig, u_long code, int type,
     union sigval val);
void sigexit(struct proc *, int);
int sigonstack(size_t);
void setsigvec(struct proc *, int, struct sigaction *);
int killpg1(struct proc *, int, int, int);
void signal_init(void);
struct sigacts *sigactsinit(struct process *);
struct sigacts *sigactsshare(struct process *);
void sigstkinit(struct sigaltstack *);
void sigactsunshare(struct process *);
void sigactsfree(struct process *);
void sendsig(sig_t action, int sig, int returnmask, u_long code,
     int type, union sigval val);
struct flock {
 off_t l_start;
 off_t l_len;
 pid_t l_pid;
 short l_type;
 short l_whence;
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

enum vtype { VNON, VREG, VDIR, VBLK, VCHR, VLNK, VSOCK, VFIFO, VBAD };
enum vtagtype {
 VT_NON, VT_UFS, VT_NFS, VT_MFS, VT_MSDOSFS,
 VT_PORTAL, VT_PROCFS, VT_AFS, VT_ISOFS, VT_ADOSFS,
 VT_EXT2FS, VT_VFS, VT_NTFS, VT_UDF, VT_FUSEFS, VT_TMPFS,
};
struct buflists { struct buf *lh_first; };
struct buf_rb_bufs { struct rb_tree rbh_root; };
struct namecache;
struct namecache_rb_cache { struct rb_tree rbh_root; };
struct uvm_vnode;
struct vnode {
 struct uvm_vnode *v_uvm;
 struct vops *v_op;
 enum vtype v_type;
 enum vtagtype v_tag;
 u_int v_flag;
 u_int v_usecount;
 u_int v_writecount;
 u_int v_bioflag;
 u_int v_holdcnt;
 u_int v_id;
 u_int v_inflight;
 struct mount *v_mount;
 struct { struct vnode *tqe_next; struct vnode **tqe_prev; } v_freelist;
 struct { struct vnode *le_next; struct vnode **le_prev; } v_mntvnodes;
 struct buf_rb_bufs v_bufs_tree;
 struct buflists v_cleanblkhd;
 struct buflists v_dirtyblkhd;
 u_int v_numoutput;
 struct { struct vnode *le_next; struct vnode **le_prev; } v_synclist;
 union {
  struct mount *vu_mountedhere;
  struct socket *vu_socket;
  struct specinfo *vu_specinfo;
  struct fifoinfo *vu_fifoinfo;
 } v_un;
 struct namecache_rb_cache v_nc_tree;
 struct { struct namecache *tqh_first; struct namecache **tqh_last; } v_cache_dst;
 void *v_data;
 struct selinfo v_selectinfo;
};
struct vattr {
 enum vtype va_type;
 mode_t va_mode;
 nlink_t va_nlink;
 uid_t va_uid;
 gid_t va_gid;
 long va_fsid;
 u_quad_t va_fileid;
 u_quad_t va_size;
 long va_blocksize;
 struct timespec va_atime;
 struct timespec va_mtime;
 struct timespec va_ctime;
 u_long va_gen;
 u_long va_flags;
 dev_t va_rdev;
 u_quad_t va_bytes;
 u_quad_t va_filerev;
 u_int va_vaflags;
 long va_spare;
};
extern const struct rb_type *const buf_rb_bufs_RBT_TYPE; __attribute__((__unused__)) static inline void buf_rb_bufs_RBT_INIT(struct buf_rb_bufs *head) { _rb_init(&head->rbh_root); } __attribute__((__unused__)) static inline struct buf * buf_rb_bufs_RBT_INSERT(struct buf_rb_bufs *head, struct buf *elm) { return _rb_insert(buf_rb_bufs_RBT_TYPE, &head->rbh_root, elm); } __attribute__((__unused__)) static inline struct buf * buf_rb_bufs_RBT_REMOVE(struct buf_rb_bufs *head, struct buf *elm) { return _rb_remove(buf_rb_bufs_RBT_TYPE, &head->rbh_root, elm); } __attribute__((__unused__)) static inline struct buf * buf_rb_bufs_RBT_FIND(struct buf_rb_bufs *head, const struct buf *key) { return _rb_find(buf_rb_bufs_RBT_TYPE, &head->rbh_root, key); } __attribute__((__unused__)) static inline struct buf * buf_rb_bufs_RBT_NFIND(struct buf_rb_bufs *head, const struct buf *key) { return _rb_nfind(buf_rb_bufs_RBT_TYPE, &head->rbh_root, key); } __attribute__((__unused__)) static inline struct buf * buf_rb_bufs_RBT_ROOT(struct buf_rb_bufs *head) { return _rb_root(buf_rb_bufs_RBT_TYPE, &head->rbh_root); } __attribute__((__unused__)) static inline int buf_rb_bufs_RBT_EMPTY(struct buf_rb_bufs *head) { return _rb_empty(&head->rbh_root); } __attribute__((__unused__)) static inline struct buf * buf_rb_bufs_RBT_MIN(struct buf_rb_bufs *head) { return _rb_min(buf_rb_bufs_RBT_TYPE, &head->rbh_root); } __attribute__((__unused__)) static inline struct buf * buf_rb_bufs_RBT_MAX(struct buf_rb_bufs *head) { return _rb_max(buf_rb_bufs_RBT_TYPE, &head->rbh_root); } __attribute__((__unused__)) static inline struct buf * buf_rb_bufs_RBT_NEXT(struct buf *elm) { return _rb_next(buf_rb_bufs_RBT_TYPE, elm); } __attribute__((__unused__)) static inline struct buf * buf_rb_bufs_RBT_PREV(struct buf *elm) { return _rb_prev(buf_rb_bufs_RBT_TYPE, elm); } __attribute__((__unused__)) static inline struct buf * buf_rb_bufs_RBT_LEFT(struct buf *elm) { return _rb_left(buf_rb_bufs_RBT_TYPE, elm); } __attribute__((__unused__)) static inline struct buf * buf_rb_bufs_RBT_RIGHT(struct buf *elm) { return _rb_right(buf_rb_bufs_RBT_TYPE, elm); } __attribute__((__unused__)) static inline struct buf * buf_rb_bufs_RBT_PARENT(struct buf *elm) { return _rb_parent(buf_rb_bufs_RBT_TYPE, elm); } __attribute__((__unused__)) static inline void buf_rb_bufs_RBT_SET_LEFT(struct buf *elm, struct buf *left) { return _rb_set_left(buf_rb_bufs_RBT_TYPE, elm, left); } __attribute__((__unused__)) static inline void buf_rb_bufs_RBT_SET_RIGHT(struct buf *elm, struct buf *right) { return _rb_set_right(buf_rb_bufs_RBT_TYPE, elm, right); } __attribute__((__unused__)) static inline void buf_rb_bufs_RBT_SET_PARENT(struct buf *elm, struct buf *parent) { return _rb_set_parent(buf_rb_bufs_RBT_TYPE, elm, parent); } __attribute__((__unused__)) static inline void buf_rb_bufs_RBT_POISON(struct buf *elm, unsigned long poison) { return _rb_poison(buf_rb_bufs_RBT_TYPE, elm, poison); } __attribute__((__unused__)) static inline int buf_rb_bufs_RBT_CHECK(struct buf *elm, unsigned long poison) { return _rb_check(buf_rb_bufs_RBT_TYPE, elm, poison); };
extern enum vtype iftovt_tab[];
extern int vttoif_tab[];
struct freelst { struct vnode *tqh_first; struct vnode **tqh_last; };
extern struct freelst vnode_hold_list;
extern struct freelst vnode_free_list;
extern struct vnode *rootvnode;
extern int initialvnodes;
extern int maxvnodes;
extern int syncdelay;
extern int rushjob;
extern void vhold(struct vnode *);
extern void vdrop(struct vnode *);
struct vops {
 int (*vop_lock)(void *);
 int (*vop_unlock)(void *);
 int (*vop_islocked)(void *);
 int (*vop_abortop)(void *);
 int (*vop_access)(void *);
 int (*vop_advlock)(void *);
 int (*vop_bmap)(void *);
 int (*vop_bwrite)(void *);
 int (*vop_close)(void *);
 int (*vop_create)(void *);
 int (*vop_fsync)(void *);
 int (*vop_getattr)(void *);
 int (*vop_inactive)(void *);
 int (*vop_ioctl)(void *);
 int (*vop_link)(void *);
 int (*vop_lookup)(void *);
 int (*vop_mknod)(void *);
 int (*vop_open)(void *);
 int (*vop_pathconf)(void *);
 int (*vop_poll)(void *);
 int (*vop_print)(void *);
 int (*vop_read)(void *);
 int (*vop_readdir)(void *);
 int (*vop_readlink)(void *);
 int (*vop_reclaim)(void *);
 int (*vop_remove)(void *);
 int (*vop_rename)(void *);
 int (*vop_revoke)(void *);
 int (*vop_mkdir)(void *);
 int (*vop_rmdir)(void *);
 int (*vop_setattr)(void *);
 int (*vop_strategy)(void *);
 int (*vop_symlink)(void *);
 int (*vop_write)(void *);
 int (*vop_kqfilter)(void *);
};
extern struct vops dead_vops;
extern struct vops spec_vops;
struct vop_generic_args {
 void *a_garbage;
};
struct vop_islocked_args {
 struct vnode *a_vp;
};
int VOP_ISLOCKED(struct vnode *);
struct vop_lookup_args {
 struct vnode *a_dvp;
 struct vnode **a_vpp;
 struct componentname *a_cnp;
};
int VOP_LOOKUP(struct vnode *, struct vnode **, struct componentname *);
struct vop_create_args {
 struct vnode *a_dvp;
 struct vnode **a_vpp;
 struct componentname *a_cnp;
 struct vattr *a_vap;
};
int VOP_CREATE(struct vnode *, struct vnode **, struct componentname *,
    struct vattr *);
struct vop_mknod_args {
 struct vnode *a_dvp;
 struct vnode **a_vpp;
 struct componentname *a_cnp;
 struct vattr *a_vap;
};
int VOP_MKNOD(struct vnode *, struct vnode **, struct componentname *,
    struct vattr *);
struct vop_open_args {
 struct vnode *a_vp;
 int a_mode;
 struct ucred *a_cred;
 struct proc *a_p;
};
int VOP_OPEN(struct vnode *, int, struct ucred *, struct proc *);
struct vop_close_args {
 struct vnode *a_vp;
 int a_fflag;
 struct ucred *a_cred;
 struct proc *a_p;
};
int VOP_CLOSE(struct vnode *, int, struct ucred *, struct proc *);
struct vop_access_args {
 struct vnode *a_vp;
 int a_mode;
 struct ucred *a_cred;
 struct proc *a_p;
};
int VOP_ACCESS(struct vnode *, int, struct ucred *, struct proc *);
struct vop_getattr_args {
 struct vnode *a_vp;
 struct vattr *a_vap;
 struct ucred *a_cred;
 struct proc *a_p;
};
int VOP_GETATTR(struct vnode *, struct vattr *, struct ucred *, struct proc *);
struct vop_setattr_args {
 struct vnode *a_vp;
 struct vattr *a_vap;
 struct ucred *a_cred;
 struct proc *a_p;
};
int VOP_SETATTR(struct vnode *, struct vattr *, struct ucred *, struct proc *);
struct vop_read_args {
 struct vnode *a_vp;
 struct uio *a_uio;
 int a_ioflag;
 struct ucred *a_cred;
};
int VOP_READ(struct vnode *, struct uio *, int, struct ucred *);
struct vop_write_args {
 struct vnode *a_vp;
 struct uio *a_uio;
 int a_ioflag;
 struct ucred *a_cred;
};
int VOP_WRITE(struct vnode *, struct uio *, int, struct ucred *);
struct vop_ioctl_args {
 struct vnode *a_vp;
 u_long a_command;
 void *a_data;
 int a_fflag;
 struct ucred *a_cred;
 struct proc *a_p;
};
int VOP_IOCTL(struct vnode *, u_long, void *, int, struct ucred *,
    struct proc *);
struct vop_poll_args {
 struct vnode *a_vp;
 int a_fflag;
 int a_events;
 struct proc *a_p;
};
int VOP_POLL(struct vnode *, int, int, struct proc *);
struct vop_kqfilter_args {
 struct vnode *a_vp;
 struct knote *a_kn;
};
int VOP_KQFILTER(struct vnode *, struct knote *);
struct vop_revoke_args {
 struct vnode *a_vp;
 int a_flags;
};
int VOP_REVOKE(struct vnode *, int);
struct vop_fsync_args {
 struct vnode *a_vp;
 struct ucred *a_cred;
 int a_waitfor;
 struct proc *a_p;
};
int VOP_FSYNC(struct vnode *, struct ucred *, int, struct proc *);
struct vop_remove_args {
 struct vnode *a_dvp;
 struct vnode *a_vp;
 struct componentname *a_cnp;
};
int VOP_REMOVE(struct vnode *, struct vnode *, struct componentname *);
struct vop_link_args {
 struct vnode *a_dvp;
 struct vnode *a_vp;
 struct componentname *a_cnp;
};
int VOP_LINK(struct vnode *, struct vnode *, struct componentname *);
struct vop_rename_args {
 struct vnode *a_fdvp;
 struct vnode *a_fvp;
 struct componentname *a_fcnp;
 struct vnode *a_tdvp;
 struct vnode *a_tvp;
 struct componentname *a_tcnp;
};
int VOP_RENAME(struct vnode *, struct vnode *, struct componentname *,
    struct vnode *, struct vnode *, struct componentname *);
struct vop_mkdir_args {
 struct vnode *a_dvp;
 struct vnode **a_vpp;
 struct componentname *a_cnp;
 struct vattr *a_vap;
};
int VOP_MKDIR(struct vnode *, struct vnode **, struct componentname *,
    struct vattr *);
struct vop_rmdir_args {
 struct vnode *a_dvp;
 struct vnode *a_vp;
 struct componentname *a_cnp;
};
int VOP_RMDIR(struct vnode *, struct vnode *, struct componentname *);
struct vop_symlink_args {
 struct vnode *a_dvp;
 struct vnode **a_vpp;
 struct componentname *a_cnp;
 struct vattr *a_vap;
 char *a_target;
};
int VOP_SYMLINK(struct vnode *, struct vnode **, struct componentname *,
    struct vattr *, char *);
struct vop_readdir_args {
 struct vnode *a_vp;
 struct uio *a_uio;
 struct ucred *a_cred;
 int *a_eofflag;
};
int VOP_READDIR(struct vnode *, struct uio *, struct ucred *, int *);
struct vop_readlink_args {
 struct vnode *a_vp;
 struct uio *a_uio;
 struct ucred *a_cred;
};
int VOP_READLINK(struct vnode *, struct uio *, struct ucred *);
struct vop_abortop_args {
 struct vnode *a_dvp;
 struct componentname *a_cnp;
};
int VOP_ABORTOP(struct vnode *, struct componentname *);
struct vop_inactive_args {
 struct vnode *a_vp;
 struct proc *a_p;
};
int VOP_INACTIVE(struct vnode *, struct proc *);
struct vop_reclaim_args {
 struct vnode *a_vp;
 struct proc *a_p;
};
int VOP_RECLAIM(struct vnode *, struct proc *);
struct vop_lock_args {
 struct vnode *a_vp;
 int a_flags;
};
int VOP_LOCK(struct vnode *, int);
struct vop_unlock_args {
 struct vnode *a_vp;
};
int VOP_UNLOCK(struct vnode *);
struct vop_bmap_args {
 struct vnode *a_vp;
 daddr_t a_bn;
 struct vnode **a_vpp;
 daddr_t *a_bnp;
 int *a_runp;
};
int VOP_BMAP(struct vnode *, daddr_t, struct vnode **, daddr_t *, int *);
struct vop_print_args {
 struct vnode *a_vp;
};
int VOP_PRINT(struct vnode *);
struct vop_pathconf_args {
 struct vnode *a_vp;
 int a_name;
 register_t *a_retval;
};
int VOP_PATHCONF(struct vnode *, int, register_t *);
struct vop_advlock_args {
 struct vnode *a_vp;
 void *a_id;
 int a_op;
 struct flock *a_fl;
 int a_flags;
};
int VOP_ADVLOCK(struct vnode *, void *, int, struct flock *, int);
struct vop_strategy_args {
 struct buf *a_bp;
};
int VOP_STRATEGY(struct buf *);
struct vop_bwrite_args {
 struct buf *a_bp;
};
int VOP_BWRITE(struct buf *);
struct file;
struct filedesc;
struct mount;
struct nameidata;
struct proc;
struct stat;
struct statfs;
struct ucred;
struct uio;
struct vattr;
struct vnode;
int bdevvp(dev_t, struct vnode **);
int cdevvp(dev_t, struct vnode **);
struct vnode *checkalias(struct vnode *, dev_t, struct mount *);
int getnewvnode(enum vtagtype, struct mount *, struct vops *,
     struct vnode **);
int vaccess(enum vtype, mode_t, uid_t, gid_t, mode_t, struct ucred *);
void vattr_null(struct vattr *);
void vdevgone(int, int, int, enum vtype);
int vcount(struct vnode *);
int vfinddev(dev_t, enum vtype, struct vnode **);
void vflushbuf(struct vnode *, int);
int vflush(struct mount *, struct vnode *, int);
int vget(struct vnode *, int, struct proc *);
void vgone(struct vnode *);
void vgonel(struct vnode *, struct proc *);
int vinvalbuf(struct vnode *, int, struct ucred *, struct proc *,
     int, int);
void vntblinit(void);
int vwaitforio(struct vnode *, int, char *, int);
void vwakeup(struct vnode *);
void vput(struct vnode *);
int vrecycle(struct vnode *, struct proc *);
int vrele(struct vnode *);
void vref(struct vnode *);
void vprint(char *, struct vnode *);
void copy_statfs_info(struct statfs *, const struct mount *);
int vfs_getcwd_scandir(struct vnode **, struct vnode **, char **, char *,
    struct proc *);
int vfs_getcwd_common(struct vnode *, struct vnode *, char **, char *, int,
    int, struct proc *);
int vfs_getcwd_getcache(struct vnode **, struct vnode **, char **, char *);
int vop_generic_abortop(void *);
int vop_generic_bmap(void *);
int vop_generic_bwrite(void *);
int vop_generic_islocked(void *);
int vop_generic_lock(void *);
int vop_generic_unlock(void *);
int vop_generic_revoke(void *);
int vop_generic_kqfilter(void *);
int vop_generic_lookup(void *);
int vn_isunder(struct vnode *, struct vnode *, struct proc *);
int vn_close(struct vnode *, int, struct ucred *, struct proc *);
int vn_open(struct nameidata *, int, int);
int vn_rdwr(enum uio_rw, struct vnode *, caddr_t, int, off_t,
     enum uio_seg, int, struct ucred *, size_t *, struct proc *);
int vn_stat(struct vnode *, struct stat *, struct proc *);
int vn_statfile(struct file *, struct stat *, struct proc *);
int vn_lock(struct vnode *, int);
int vn_writechk(struct vnode *);
int vn_fsizechk(struct vnode *, struct uio *, int, ssize_t *);
int vn_ioctl(struct file *, u_long, caddr_t, struct proc *);
void vn_marktext(struct vnode *);
void sched_sync(struct proc *);
void vn_initialize_syncerd(void);
void vn_syncer_add_to_worklist(struct vnode *, int);
int vn_isdisk(struct vnode *, int *);
int softdep_fsync(struct vnode *);
int getvnode(struct proc *, int, struct file **);
void uvm_vnp_setsize(struct vnode *, off_t);
void uvm_vnp_sync(struct mount *);
void uvm_vnp_terminate(struct vnode *);
int uvm_vnp_uncache(struct vnode *);
typedef struct pollfd {
 int fd;
 short events;
 short revents;
} pollfd_t;
typedef unsigned int nfds_t;
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
struct device;
struct wsdisplay_emulops {
 int (*cursor)(void *c, int on, int row, int col);
 int (*mapchar)(void *, int, unsigned int *);
 int (*putchar)(void *c, int row, int col, u_int uc, long attr);
 int (*copycols)(void *c, int row, int srccol, int dstcol,
      int ncols);
 int (*erasecols)(void *c, int row, int startcol, int ncols, long);
 int (*copyrows)(void *c, int srcrow, int dstrow, int nrows);
 int (*eraserows)(void *c, int row, int nrows, long attr);
 int (*alloc_attr)(void *c, int fg, int bg, int flags, long *attrp);
 void (*unpack_attr)(void *c, long attr, int *fg, int *bg, int *ul);
};
struct wsscreen_descr {
 char name[16];
 int ncols, nrows;
 const struct wsdisplay_emulops *textops;
 int fontwidth, fontheight;
 int capabilities;
};
struct wsdisplay_charcell {
 u_int uc;
 long attr;
};
struct wsdisplay_font;
struct wsdisplay_accessops {
 int (*ioctl)(void *v, u_long cmd, caddr_t data, int flag,
      struct proc *p);
 paddr_t (*mmap)(void *v, off_t off, int prot);
 int (*alloc_screen)(void *, const struct wsscreen_descr *,
         void **, int *, int *, long *);
 void (*free_screen)(void *, void *);
 int (*show_screen)(void *, void *, int,
          void (*) (void *, int, int), void *);
 int (*load_font)(void *, void *, struct wsdisplay_font *);
 int (*list_font)(void *, struct wsdisplay_font *);
 void (*scrollback)(void *, void *, int);
 int (*getchar)(void *, int, int, struct wsdisplay_charcell *);
 void (*burn_screen)(void *, u_int, u_int);
 void (*pollc)(void *, int);
 void (*enter_ddb)(void *, void *);
};
struct wsscreen_list {
 int nscreens;
 const struct wsscreen_descr **screens;
};
struct wsemuldisplaydev_attach_args {
 int console;
 const struct wsscreen_list *scrdata;
 const struct wsdisplay_accessops *accessops;
 void *accesscookie;
 u_int defaultscreens;
};
struct wscons_syncops {
 int (*detach)(void *, int, void (*)(void *, int, int), void *);
 int (*attach)(void *, int, void (*)(void *, int, int), void *);
 int (*check)(void *);
 void (*destroy)(void *);
};
void wsdisplay_cnattach(const struct wsscreen_descr *, void *,
    int, int, long);
int wsemuldisplaydevprint(void *, const char *);
int wsemuldisplaydevsubmatch(struct device *, void *, void *);
void wsdisplay_cnputc(dev_t dev, int i);
struct wsdisplay_softc;
struct wsscreen;
int wsscreen_attach_sync(struct wsscreen *,
         const struct wscons_syncops *, void *);
int wsscreen_detach_sync(struct wsscreen *);
int wsscreen_lookup_sync(struct wsscreen *,
         const struct wscons_syncops *, void **);
int wsdisplay_maxscreenidx(struct wsdisplay_softc *);
int wsdisplay_screenstate(struct wsdisplay_softc *, int);
int wsdisplay_getactivescreen(struct wsdisplay_softc *);
int wsscreen_switchwait(struct wsdisplay_softc *, int);
int wsdisplay_internal_ioctl(struct wsdisplay_softc *sc,
      struct wsscreen *,
      u_long cmd, caddr_t data,
      int flag, struct proc *p);
int wsdisplay_usl_ioctl1(struct wsdisplay_softc *,
        u_long, caddr_t, int, struct proc *);
int wsdisplay_usl_ioctl2(struct wsdisplay_softc *, struct wsscreen *,
        u_long, caddr_t, int, struct proc *);
int wsdisplay_cfg_ioctl(struct wsdisplay_softc *sc,
        u_long cmd, caddr_t data,
        int flag, struct proc *p);
void wsdisplay_switchtoconsole(void);
void wsdisplay_enter_ddb(void);
void wsdisplay_suspend(void);
void wsdisplay_resume(void);
const struct wsscreen_descr *
    wsdisplay_screentype_pick(const struct wsscreen_list *, const char *);
void wsdisplay_burn(void *v, u_int flags);
void wsscrollback(void *v, int op);
struct device;
struct wsdisplay_emulops;
enum wsemul_resetops {
 WSEMUL_RESET,
 WSEMUL_SYNCFONT,
 WSEMUL_CLEARSCREEN,
 WSEMUL_CLEARCURSOR
};
struct wsemul_ops {
 char name[16];
 void *(*cnattach)(const struct wsscreen_descr *, void *,
      int, int, long);
 void *(*attach)(int, const struct wsscreen_descr *, void *,
    int, int, void *, long);
 u_int (*output)(void *, const u_char *, u_int, int);
 int (*translate)(void *, kbd_t, keysym_t, const u_char **);
 void (*detach)(void *, u_int *, u_int *);
 void (*reset)(void *, enum wsemul_resetops);
};
struct wsemul_inputstate {
 u_int32_t inchar;
 u_int mbleft;
};
extern const struct wsemul_ops wsemul_dumb_ops;
extern const struct wsemul_ops wsemul_sun_ops;
extern const struct wsemul_ops wsemul_vt100_ops;
const struct wsemul_ops *wsemul_pick(const char *);
const char *wsemul_getname(int);
void wsdisplay_emulbell(void *v);
void wsdisplay_emulinput(void *v, const u_char *, u_int);
int wsemul_getchar(const u_char **, u_int *, struct wsemul_inputstate *,
     int);
int wsemul_utf8_translate(u_int32_t, kbd_t, u_char *, int);
struct wsemul_abortstate {
 enum {
  ABORT_OK,
  ABORT_FAILED_CURSOR,
  ABORT_FAILED_JUMP_SCROLL,
  ABORT_FAILED_OTHER
 } state;
 int skip;
 int done;
 int lines;
};
static inline void
wsemul_resume_abort(struct wsemul_abortstate *was)
{
 was->state = ABORT_OK;
 was->done = 0;
}
static inline void
wsemul_abort_cursor(struct wsemul_abortstate *was)
{
 was->state = ABORT_FAILED_CURSOR;
}
static inline void
wsemul_abort_jump_scroll(struct wsemul_abortstate *was, int lines)
{
 was->state = ABORT_FAILED_JUMP_SCROLL;
 was->skip = was->done;
 was->lines = lines;
}
static inline void
wsemul_abort_other(struct wsemul_abortstate *was)
{
 was->state = ABORT_FAILED_OTHER;
 was->skip = was->done;
}
static inline void
wsemul_reset_abortstate(struct wsemul_abortstate *was)
{
 was->state = ABORT_OK;
 was->skip = 0;
}
struct wsevsrc;
void wsdisplay_set_console_kbd(struct wsevsrc *);
void wsdisplay_kbdinput(struct device *v, kbd_t, keysym_t *, int);
void wsdisplay_rawkbdinput(struct device *v, u_char *, int);
int wsdisplay_switch(struct device *, int, int);
enum wsdisplay_resetops {
 WSDISPLAY_RESETEMUL,
 WSDISPLAY_RESETCLOSE
};
void wsdisplay_reset(struct device *, enum wsdisplay_resetops);
void wsdisplay_kbdholdscreen(struct device *v, int);
void wsdisplay_set_cons_kbd(int (*get)(dev_t),
          void (*poll)(dev_t, int),
          void (*bell)(dev_t, u_int, u_int, u_int));
void wsdisplay_unset_cons_kbd(void);
int wsdisplay_set_kbd(struct device *, struct wsevsrc *);
struct wsdisplay_param;
int wsdisplay_param(struct device*, u_long, struct wsdisplay_param*);
struct wsevsrc *wskbd_set_console_display(struct device *, struct wsevsrc *);
int wskbd_set_display(struct device *, struct device *);
int wskbd_pickfree(void);
struct consdev {
 void (*cn_probe)(struct consdev *);
 void (*cn_init)(struct consdev *);
 int (*cn_getc)(dev_t);
 void (*cn_putc)(dev_t, int);
 void (*cn_pollc)(dev_t, int);
 void (*cn_bell)(dev_t, u_int, u_int, u_int);
 dev_t cn_dev;
 u_int cn_pri;
};
extern struct consdev constab[];
extern struct consdev *cn_tab;
extern struct tty *constty;
extern struct vnode *cn_devvp;
struct knote;
void cninit(void);
int cnopen(dev_t, int, int, struct proc *);
int cnclose(dev_t, int, int, struct proc *);
int cnread(dev_t, struct uio *, int);
int cnwrite(dev_t, struct uio *, int);
int cnioctl(dev_t, u_long, caddr_t, int, struct proc *);
int cnpoll(dev_t, int, struct proc *);
int cnkqfilter(dev_t, struct knote *);
int cngetc(void);
void cnputc(int);
void cnpollc(int);
void cnbell(u_int, u_int, u_int);
void cnrint(void);
void nullcnpollc(dev_t, int);
struct wseventvar {
 u_int get;
 volatile u_int put;
 struct selinfo sel;
 struct process *io;
 int wanted;
 int async;
 struct wscons_event *q;
};
void wsevent_init(struct wseventvar *);
void wsevent_fini(struct wseventvar *);
int wsevent_read(struct wseventvar *, struct uio *, int);
int wsevent_poll(struct wseventvar *, int, struct proc *);
int wsevent_kqfilter(struct wseventvar *, struct knote *);
struct wsevsrc {
 struct device me_dv;
 const struct wssrcops *me_ops;
 struct wseventvar me_evar;
 struct wseventvar *me_evp;
 struct device *me_dispdv;
 struct wsmux_softc *me_parent;
 struct { struct wsevsrc *tqe_next; struct wsevsrc **tqe_prev; } me_next;
};
struct wssrcops {
 int type;
 int (*dopen)(struct wsevsrc *, struct wseventvar *);
 int (*dclose)(struct wsevsrc *);
 int (*dioctl)(struct device *, u_long, caddr_t, int, struct proc *);
 int (*ddispioctl)(struct device *, u_long, caddr_t, int, struct proc *);
 int (*dsetdisplay)(struct device *, struct device *);
};
struct wsmux_softc {
 struct wsevsrc sc_base;
 struct proc *sc_p;
 struct { struct wsevsrc *tqh_first; struct wsevsrc **tqh_last; } sc_cld;
 u_int32_t sc_kbd_layout;
 int sc_rawkbd;
};
struct wsmux_softc *wsmux_getmux(int);
struct wsmux_softc *wsmux_create(const char *, int);
int wsmux_attach_sc(struct wsmux_softc *, struct wsevsrc *);
void wsmux_detach_sc(struct wsevsrc *);
int wsmux_set_display(struct wsmux_softc *, struct device *);
uint32_t wsmux_get_layout(struct wsmux_softc *);
void wsmux_set_layout(struct wsmux_softc *, uint32_t);
int wskbd_add_mux(int, struct wsmux_softc *);
int wsmouse_add_mux(int, struct wsmux_softc *);
int wsmoused(struct wsdisplay_softc *, caddr_t, int, struct proc *);
void motion_event(struct wsscreen *, u_int, int);
void button_event(struct wsscreen *, int, int);
int ctrl_event(struct wsdisplay_softc *, u_int, int, struct proc *);
void mouse_moverel(struct wsscreen *, int, int);
void inverse_char(struct wsscreen *, u_int);
void inverse_region(struct wsscreen *, u_int, u_int);
u_int skip_spc_right(struct wsscreen *, int);
u_int skip_spc_left(struct wsscreen *);
u_int skip_char_right(struct wsscreen *, u_int);
u_int skip_char_left(struct wsscreen *, u_int);
u_int class_cmp(struct wsscreen *, u_int, u_int);
void mouse_copy_start(struct wsscreen *);
void mouse_copy_word(struct wsscreen *);
void mouse_copy_line(struct wsscreen *);
void mouse_copy_end(struct wsscreen *);
void mouse_copy_extend(struct wsscreen *);
void mouse_copy_extend_char(struct wsscreen *);
void mouse_copy_extend_word(struct wsscreen *);
void mouse_copy_extend_line(struct wsscreen *);
void mouse_copy_extend_after(struct wsscreen *);
void mouse_hide(struct wsscreen *);
void remove_selection(struct wsscreen *);
void mouse_copy_selection(struct wsscreen *);
void mouse_paste(struct wsscreen *);
void mouse_zaxis(struct wsscreen *, int);
void allocate_copybuffer(struct wsdisplay_softc *);
void mouse_remove(struct wsscreen *);
struct wsscreen_internal {
 const struct wsdisplay_emulops *emulops;
 void *emulcookie;
 const struct wsscreen_descr *scrdata;
 const struct wsemul_ops *wsemul;
 void *wsemulcookie;
};
struct wsscreen {
 struct wsscreen_internal *scr_dconf;
 struct tty *scr_tty;
 int scr_hold_screen;
 int scr_flags;
 int scr_rawkbd;
 struct wsdisplay_softc *sc;
 u_int mouse;
 u_int cursor;
 u_int cpy_start;
 u_int cpy_end;
 u_int orig_start;
 u_int orig_end;
 u_int mouse_flags;
};
struct wsscreen *wsscreen_attach(struct wsdisplay_softc *, int, const char *,
     const struct wsscreen_descr *, void *, int, int, long);
void wsscreen_detach(struct wsscreen *);
int wsdisplay_addscreen(struct wsdisplay_softc *, int, const char *,
     const char *);
int wsdisplay_getscreen(struct wsdisplay_softc *,
     struct wsdisplay_addscreendata *);
void wsdisplay_resume_device(struct device *);
void wsdisplay_suspend_device(struct device *);
void wsdisplay_addscreen_print(struct wsdisplay_softc *, int, int);
void wsdisplay_closescreen(struct wsdisplay_softc *, struct wsscreen *);
int wsdisplay_delscreen(struct wsdisplay_softc *, int, int);
void wsdisplay_burner_setup(struct wsdisplay_softc *, struct wsscreen *);
void wsdisplay_burner(void *v);
struct wsdisplay_softc {
 struct device sc_dv;
 const struct wsdisplay_accessops *sc_accessops;
 void *sc_accesscookie;
 const struct wsscreen_list *sc_scrdata;
 struct wsscreen *sc_scr[12];
 int sc_focusidx;
 struct wsscreen *sc_focus;
 struct timeout sc_burner;
 int sc_burnoutintvl;
 int sc_burninintvl;
 int sc_burnout;
 int sc_burnman;
 int sc_burnflags;
 int sc_isconsole;
 int sc_flags;
 int sc_screenwanted, sc_oldscreen;
 int sc_resumescreen;
 struct wsevsrc *sc_input;
 int sc_rawkbd;
 char *sc_copybuffer;
 u_int sc_copybuffer_size;
};
extern struct cfdriver wsdisplay_cd;
int wsdisplay_emul_match(struct device *, void *, void *);
void wsdisplay_emul_attach(struct device *, struct device *, void *);
int wsdisplay_emul_detach(struct device *, int);
int wsdisplay_activate(struct device *, int);
struct cfdriver wsdisplay_cd = {
 ((void *)0), "wsdisplay", DV_TTY
};
struct cfattach wsdisplay_emul_ca = {
 sizeof(struct wsdisplay_softc), wsdisplay_emul_match,
 wsdisplay_emul_attach, wsdisplay_emul_detach, wsdisplay_activate
};
void wsdisplaystart(struct tty *);
int wsdisplayparam(struct tty *, struct termios *);
void wsdisplay_common_attach(struct wsdisplay_softc *sc,
     int console, int mux, const struct wsscreen_list *,
     const struct wsdisplay_accessops *accessops,
     void *accesscookie, u_int defaultscreens);
int wsdisplay_common_detach(struct wsdisplay_softc *, int);
void wsdisplay_kbdholdscr(struct wsscreen *, int);
int wsdisplay_update_rawkbd(struct wsdisplay_softc *, struct wsscreen *);
int wsdisplay_console_initted;
struct wsdisplay_softc *wsdisplay_console_device;
struct wsscreen_internal wsdisplay_console_conf;
int wsdisplay_getc_dummy(dev_t);
void wsdisplay_pollc(dev_t, int);
int wsdisplay_cons_pollmode;
void (*wsdisplay_cons_kbd_pollc)(dev_t, int);
struct consdev wsdisplay_cons = {
 ((void *)0), ((void *)0), wsdisplay_getc_dummy, wsdisplay_cnputc,
     wsdisplay_pollc, ((void *)0), (dev_t)(-1), 1
};
int wsdisplay_defaultscreens = 1;
int wsdisplay_switch1(void *, int, int);
int wsdisplay_switch2(void *, int, int);
int wsdisplay_switch3(void *, int, int);
int wsdisplay_clearonclose;
struct wsscreen *
wsscreen_attach(struct wsdisplay_softc *sc, int console, const char *emul,
    const struct wsscreen_descr *type, void *cookie, int ccol, int crow,
    long defattr)
{
 struct wsscreen_internal *dconf;
 struct wsscreen *scr;
 scr = malloc(sizeof(*scr), 2, 0x0008 | 0x0002);
 if (!scr)
  return (((void *)0));
 if (console) {
  dconf = &wsdisplay_console_conf;
  (void)(*dconf->wsemul->attach)(1, 0, 0, 0, 0, scr, 0);
 } else {
  dconf = malloc(sizeof(*dconf), 2, 0x0002);
  if (dconf == ((void *)0))
   goto fail;
  dconf->emulops = type->textops;
  dconf->emulcookie = cookie;
  if (dconf->emulops == ((void *)0) ||
      (dconf->wsemul = wsemul_pick(emul)) == ((void *)0))
   goto fail;
  dconf->wsemulcookie = (*dconf->wsemul->attach)(0, type, cookie,
      ccol, crow, scr, defattr);
  if (dconf->wsemulcookie == ((void *)0))
   goto fail;
  dconf->scrdata = type;
 }
 scr->scr_dconf = dconf;
 scr->scr_tty = ttymalloc(0);
 scr->sc = sc;
 return (scr);
fail:
 if (dconf != ((void *)0))
  free(dconf, 2, sizeof(*dconf));
 free(scr, 2, sizeof(*scr));
 return (((void *)0));
}
void
wsscreen_detach(struct wsscreen *scr)
{
 int ccol, crow;
 if (((scr)->scr_tty != ((void *)0))) {
  timeout_del(&scr->scr_tty->t_rstrt_to);
  ttyfree(scr->scr_tty);
 }
 (*scr->scr_dconf->wsemul->detach)(scr->scr_dconf->wsemulcookie,
     &ccol, &crow);
 free(scr->scr_dconf, 2, sizeof(*scr->scr_dconf));
 free(scr, 2, sizeof(*scr));
}
const struct wsscreen_descr *
wsdisplay_screentype_pick(const struct wsscreen_list *scrdata, const char *name)
{
 int i;
 const struct wsscreen_descr *scr;
 ((scrdata->nscreens > 0) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../dev/wscons/wsdisplay.c", 327, "scrdata->nscreens > 0"));
 if (name == ((void *)0) || *name == '\0')
  return (scrdata->screens[0]);
 for (i = 0; i < scrdata->nscreens; i++) {
  scr = scrdata->screens[i];
  if (!strncmp(name, scr->name, 16))
   return (scr);
 }
 return (0);
}
void
wsdisplay_addscreen_print(struct wsdisplay_softc *sc, int idx, int count)
{
 printf("%s: screen %d", sc->sc_dv.dv_xname, idx);
 if (count > 1)
  printf("-%d", idx + (count-1));
 printf(" added (%s, %s emulation)\n",
     sc->sc_scr[idx]->scr_dconf->scrdata->name,
     sc->sc_scr[idx]->scr_dconf->wsemul->name);
}
int
wsdisplay_addscreen(struct wsdisplay_softc *sc, int idx,
    const char *screentype, const char *emul)
{
 const struct wsscreen_descr *scrdesc;
 int error;
 void *cookie;
 int ccol, crow;
 long defattr;
 struct wsscreen *scr;
 int s;
 if (idx < 0 || idx >= 12)
  return (22);
 if (sc->sc_scr[idx] != ((void *)0))
  return (16);
 scrdesc = wsdisplay_screentype_pick(sc->sc_scrdata, screentype);
 if (!scrdesc)
  return (6);
 error = (*sc->sc_accessops->alloc_screen)(sc->sc_accesscookie,
     scrdesc, &cookie, &ccol, &crow, &defattr);
 if (error)
  return (error);
 scr = wsscreen_attach(sc, 0, emul, scrdesc,
     cookie, ccol, crow, defattr);
 if (scr == ((void *)0)) {
  (*sc->sc_accessops->free_screen)(sc->sc_accesscookie, cookie);
  return (6);
 }
 sc->sc_scr[idx] = scr;
 s = _splraise(6);
 if (!sc->sc_focus) {
  (*sc->sc_accessops->show_screen)(sc->sc_accesscookie,
      scr->scr_dconf->emulcookie, 0, 0, 0);
  sc->sc_focusidx = idx;
  sc->sc_focus = scr;
 }
 _splx(s);
 allocate_copybuffer(sc);
 return (0);
}
int
wsdisplay_getscreen(struct wsdisplay_softc *sc,
    struct wsdisplay_addscreendata *sd)
{
 struct wsscreen *scr;
 if (sd->idx < 0 && sc->sc_focus)
  sd->idx = sc->sc_focusidx;
 if (sd->idx < 0 || sd->idx >= 12)
  return (22);
 scr = sc->sc_scr[sd->idx];
 if (scr == ((void *)0))
  return (6);
 strncpy(sd->screentype, scr->scr_dconf->scrdata->name,
     16);
 strncpy(sd->emul, scr->scr_dconf->wsemul->name, 16);
 return (0);
}
void
wsdisplay_closescreen(struct wsdisplay_softc *sc, struct wsscreen *scr)
{
 int maj, mn, idx;
 if (((scr)->scr_tty != ((void *)0))) {
  struct tty *tp = scr->scr_tty;
  (*linesw[tp->t_line].l_modem)(tp, 0);
 }
 for (maj = 0; maj < nchrdev; maj++)
  if (cdevsw[maj].d_open == wsdisplayopen)
   break;
 for (idx = 0; idx < 12; idx++)
  if (scr == sc->sc_scr[idx])
   break;
 if (idx == 12)
  panic("wsdisplay_forceclose: bad screen");
 mn = (((sc->sc_dv.dv_unit) << 8) | (idx));
 vdevgone(maj, mn, mn, VCHR);
}
int
wsdisplay_delscreen(struct wsdisplay_softc *sc, int idx, int flags)
{
 struct wsscreen *scr;
 int s;
 void *cookie;
 if (idx < 0 || idx >= 12)
  return (22);
 if ((scr = sc->sc_scr[idx]) == ((void *)0))
  return (6);
 if (scr->scr_dconf == &wsdisplay_console_conf ||
     ((scr->scr_flags & 1) && !(flags & 0x01)))
  return (16);
 wsdisplay_closescreen(sc, scr);
 s = _splraise(6);
 if (sc->sc_focus == scr) {
  sc->sc_focus = ((void *)0);
  wsdisplay_update_rawkbd(sc, 0);
 }
 sc->sc_scr[idx] = ((void *)0);
 _splx(s);
 if (scr->scr_flags & 2)
  wakeup(scr);
 cookie = scr->scr_dconf->emulcookie;
 wsscreen_detach(scr);
 (*sc->sc_accessops->free_screen)(sc->sc_accesscookie, cookie);
 if ((flags & 0x02) == 0)
  printf("%s: screen %d deleted\n", sc->sc_dv.dv_xname, idx);
 return (0);
}
int
wsdisplay_emul_match(struct device *parent, void *match, void *aux)
{
 struct cfdata *cf = match;
 struct wsemuldisplaydev_attach_args *ap = aux;
 if (cf->cf_loc[0] != -1) {
  if (cf->cf_loc[0] != 0 && ap->console != 0)
   return (10);
  else
   return (0);
 }
 return (1);
}
void
wsdisplay_emul_attach(struct device *parent, struct device *self, void *aux)
{
 struct wsdisplay_softc *sc = (struct wsdisplay_softc *)self;
 struct wsemuldisplaydev_attach_args *ap = aux;
 wsdisplay_common_attach(sc, ap->console,
     sc->sc_dv.dv_cfdata->cf_loc[1], ap->scrdata,
     ap->accessops, ap->accesscookie, ap->defaultscreens);
 if (ap->console && cn_tab == &wsdisplay_cons) {
  int maj;
  for (maj = 0; maj < nchrdev; maj++)
   if (cdevsw[maj].d_open == wsdisplayopen)
    break;
  cn_tab->cn_dev = ((dev_t)((((maj) & 0xff) << 8) | (((((self->dv_unit) << 8) | (0))) & 0xff) | ((((((self->dv_unit) << 8) | (0))) & 0xffff00) << 8)));
 }
}
int
wsdisplay_emul_detach(struct device *self, int flags)
{
 struct wsdisplay_softc *sc = (struct wsdisplay_softc *)self;
 return (wsdisplay_common_detach(sc, flags));
}
int
wsdisplay_activate(struct device *self, int act)
{
 int ret = 0;
 switch (act) {
 case 6:
  wsdisplay_switchtoconsole();
  break;
 }
 return (ret);
}
int
wsdisplay_common_detach(struct wsdisplay_softc *sc, int flags)
{
 int i;
 int rc;
 if (sc->sc_isconsole)
  return (16);
 for (i = 0; i < 12; i++)
  if (sc->sc_scr[i] != ((void *)0)) {
   if ((rc = wsdisplay_delscreen(sc, i,
       0x02 | (flags & 0x01 ?
        0x01 : 0))) != 0)
    return (rc);
  }
 timeout_del(&sc->sc_burner);
 if (sc->sc_input != ((void *)0)) {
  if (sc->sc_input->me_dispdv == &sc->sc_dv) {
   if ((rc = wsmux_set_display((struct wsmux_softc *)
          sc->sc_input, ((void *)0))) != 0)
    return (rc);
  }
 }
 return (0);
}
int
wsemuldisplaydevprint(void *aux, const char *pnp)
{
 if (pnp)
  printf("wsdisplay at %s", pnp);
 return (1);
}
int
wsemuldisplaydevsubmatch(struct device *parent, void *match, void *aux)
{
 extern struct cfdriver wsdisplay_cd;
 struct cfdata *cf = match;
 if (cf->cf_driver == &wsdisplay_cd)
  return ((*cf->cf_attach->ca_match)(parent, match, aux));
 return (0);
}
void
wsdisplay_common_attach(struct wsdisplay_softc *sc, int console, int kbdmux,
    const struct wsscreen_list *scrdata,
    const struct wsdisplay_accessops *accessops, void *accesscookie,
    u_int defaultscreens)
{
 int i, start = 0;
 struct wsevsrc *kme;
 struct wsmux_softc *mux;
 if (kbdmux >= 0)
  mux = wsmux_getmux(kbdmux);
 else
  mux = wsmux_create("dmux", sc->sc_dv.dv_unit);
 if (mux == ((void *)0))
  panic("wsdisplay_common_attach: no memory");
 sc->sc_input = &mux->sc_base;
 if (kbdmux >= 0)
  printf(" mux %d", kbdmux);
 sc->sc_isconsole = console;
 sc->sc_resumescreen = -1;
 if (console) {
  ((wsdisplay_console_initted) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../dev/wscons/wsdisplay.c", 701, "wsdisplay_console_initted"));
  ((wsdisplay_console_device == ((void *)0)) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../dev/wscons/wsdisplay.c", 702, "wsdisplay_console_device == NULL"));
  sc->sc_scr[0] = wsscreen_attach(sc, 1, 0, 0, 0, 0, 0, 0);
  if (sc->sc_scr[0] == ((void *)0))
   return;
  wsdisplay_console_device = sc;
  printf(": console (%s, %s emulation)",
         wsdisplay_console_conf.scrdata->name,
         wsdisplay_console_conf.wsemul->name);
  kme = wskbd_set_console_display(&sc->sc_dv, sc->sc_input);
  if (kme != ((void *)0))
   printf(", using %s", kme->me_dv.dv_xname);
  sc->sc_focusidx = 0;
  sc->sc_focus = sc->sc_scr[0];
  start = 1;
 }
 printf("\n");
 if (mux->sc_base.me_dispdv == ((void *)0))
  wsmux_set_display(mux, &sc->sc_dv);
 sc->sc_accessops = accessops;
 sc->sc_accesscookie = accesscookie;
 sc->sc_scrdata = scrdata;
 if (defaultscreens == 0)
  defaultscreens = wsdisplay_defaultscreens;
 for (i = start; i < defaultscreens; i++) {
  if (wsdisplay_addscreen(sc, i, 0, 0))
   break;
 }
 if (i > start)
  wsdisplay_addscreen_print(sc, start, i-start);
 sc->sc_burnoutintvl = (hz * 0) / 1000;
 sc->sc_burninintvl = (hz * 250) / 1000;
 sc->sc_burnflags = 0x0008 | 0x0002 |
     0x0004;
 timeout_set(&sc->sc_burner, wsdisplay_burner, sc);
 sc->sc_burnout = sc->sc_burnoutintvl;
 wsdisplay_burn(sc, sc->sc_burnflags);
}
void
wsdisplay_cnattach(const struct wsscreen_descr *type, void *cookie, int ccol,
    int crow, long defattr)
{
 const struct wsemul_ops *wsemul;
 const struct wsdisplay_emulops *emulops;
 ((type->nrows > 0) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../dev/wscons/wsdisplay.c", 792, "type->nrows > 0"));
 ((type->ncols > 0) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../dev/wscons/wsdisplay.c", 793, "type->ncols > 0"));
 ((crow < type->nrows) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../dev/wscons/wsdisplay.c", 794, "crow < type->nrows"));
 ((ccol < type->ncols) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../dev/wscons/wsdisplay.c", 795, "ccol < type->ncols"));
 wsdisplay_console_conf.emulops = emulops = type->textops;
 wsdisplay_console_conf.emulcookie = cookie;
 wsdisplay_console_conf.scrdata = type;
 if (emulops->cursor == ((void *)0) ||
     emulops->copycols == ((void *)0) || emulops->copyrows == ((void *)0) ||
     emulops->erasecols == ((void *)0) || emulops->eraserows == ((void *)0))
  wsemul = wsemul_pick("dumb");
 else
  wsemul = wsemul_pick("");
 wsdisplay_console_conf.wsemul = wsemul;
 wsdisplay_console_conf.wsemulcookie =
     (*wsemul->cnattach)(type, cookie, ccol, crow, defattr);
 if (!wsdisplay_console_initted)
  cn_tab = &wsdisplay_cons;
 wsdisplay_console_initted = 1;
}
int
wsdisplayopen(dev_t dev, int flag, int mode, struct proc *p)
{
 struct wsdisplay_softc *sc;
 struct tty *tp;
 int unit, newopen, error;
 struct wsscreen *scr;
 unit = (((int32_t)((dev) & 0xff) | (((dev) & 0xffff0000) >> 8)) >> 8);
 if (unit >= wsdisplay_cd.cd_ndevs ||
     (sc = wsdisplay_cd.cd_devs[unit]) == ((void *)0))
  return (6);
 if (((((int32_t)((dev) & 0xff) | (((dev) & 0xffff0000) >> 8)) & 0xff) == 255))
  return (0);
 if ((((int32_t)((dev) & 0xff) | (((dev) & 0xffff0000) >> 8)) & 0xff) >= 12)
  return (6);
 if ((scr = sc->sc_scr[(((int32_t)((dev) & 0xff) | (((dev) & 0xffff0000) >> 8)) & 0xff)]) == ((void *)0))
  return (6);
 if (((scr)->scr_tty != ((void *)0))) {
  tp = scr->scr_tty;
  tp->t_oproc = wsdisplaystart;
  tp->t_param = wsdisplayparam;
  tp->t_dev = dev;
  newopen = (tp->t_state & 0x00020) == 0;
  if (newopen) {
   ttychars(tp);
   tp->t_termios.c_iflag = (0x00000002 | 0x00000100 | 0x00002000 | 0x00000200 | 0x00000800);
   tp->t_termios.c_oflag = (0x00000001 | 0x00000002 | 0x00000004);
   tp->t_termios.c_cflag = (0x00000800 | 0x00000300 | 0x00004000);
   tp->t_termios.c_lflag = (0x00000008 | 0x00000100 | 0x00000080 | 0x00000400 | 0x00000002|0x00000001|0x00000040);
   tp->t_termios.c_ispeed = tp->t_termios.c_ospeed = (9600);
   wsdisplayparam(tp, &tp->t_termios);
   ttsetwater(tp);
  } else if ((tp->t_state & 0x00400) != 0 &&
      suser(p) != 0)
   return (16);
  tp->t_state |= 0x00008;
  error = ((*linesw[tp->t_line].l_open)(dev, tp, p));
  if (error)
   return (error);
  if (newopen) {
   tp->t_winsize.ws_row = scr->scr_dconf->scrdata->nrows;
   tp->t_winsize.ws_col = scr->scr_dconf->scrdata->ncols;
  }
 }
 scr->scr_flags |= 1;
 return (0);
}
int
wsdisplayclose(dev_t dev, int flag, int mode, struct proc *p)
{
 struct wsdisplay_softc *sc;
 struct tty *tp;
 int unit;
 struct wsscreen *scr;
 unit = (((int32_t)((dev) & 0xff) | (((dev) & 0xffff0000) >> 8)) >> 8);
 sc = wsdisplay_cd.cd_devs[unit];
 if (((((int32_t)((dev) & 0xff) | (((dev) & 0xffff0000) >> 8)) & 0xff) == 255))
  return (0);
 if ((scr = sc->sc_scr[(((int32_t)((dev) & 0xff) | (((dev) & 0xffff0000) >> 8)) & 0xff)]) == ((void *)0))
  return (6);
 if (((scr)->scr_tty != ((void *)0))) {
  if (scr->scr_hold_screen) {
   int s;
   s = _splraise(6);
   wsdisplay_kbdholdscr(scr, 0);
   _splx(s);
  }
  tp = scr->scr_tty;
  (*linesw[tp->t_line].l_close)(tp, flag, p);
  ttyclose(tp);
 }
 scr->scr_flags &= ~4;
 (*scr->scr_dconf->wsemul->reset)(scr->scr_dconf->wsemulcookie,
      WSEMUL_RESET);
 if (wsdisplay_clearonclose)
  (*scr->scr_dconf->wsemul->reset)
   (scr->scr_dconf->wsemulcookie, WSEMUL_CLEARSCREEN);
 if (scr->scr_rawkbd) {
  int kbmode = 0;
  (void) wsdisplay_internal_ioctl(sc, scr, ((unsigned long)0x80000000 | ((sizeof(int) & 0x1fff) << 16) | ((('W')) << 8) | ((19))),
      (caddr_t)&kbmode, 0x0002, p);
 }
 scr->scr_flags &= ~1;
 if (sc->sc_copybuffer != ((void *)0))
  explicit_bzero(sc->sc_copybuffer, sc->sc_copybuffer_size);
 ((sc->sc_flags) &= ~(0x02));
 return (0);
}
int
wsdisplayread(dev_t dev, struct uio *uio, int flag)
{
 struct wsdisplay_softc *sc;
 struct tty *tp;
 int unit;
 struct wsscreen *scr;
 unit = (((int32_t)((dev) & 0xff) | (((dev) & 0xffff0000) >> 8)) >> 8);
 sc = wsdisplay_cd.cd_devs[unit];
 if (((((int32_t)((dev) & 0xff) | (((dev) & 0xffff0000) >> 8)) & 0xff) == 255))
  return (0);
 if ((scr = sc->sc_scr[(((int32_t)((dev) & 0xff) | (((dev) & 0xffff0000) >> 8)) & 0xff)]) == ((void *)0))
  return (6);
 if (!((scr)->scr_tty != ((void *)0)))
  return (19);
 tp = scr->scr_tty;
 return ((*linesw[tp->t_line].l_read)(tp, uio, flag));
}
int
wsdisplaywrite(dev_t dev, struct uio *uio, int flag)
{
 struct wsdisplay_softc *sc;
 struct tty *tp;
 int unit;
 struct wsscreen *scr;
 unit = (((int32_t)((dev) & 0xff) | (((dev) & 0xffff0000) >> 8)) >> 8);
 sc = wsdisplay_cd.cd_devs[unit];
 if (((((int32_t)((dev) & 0xff) | (((dev) & 0xffff0000) >> 8)) & 0xff) == 255))
  return (0);
 if ((scr = sc->sc_scr[(((int32_t)((dev) & 0xff) | (((dev) & 0xffff0000) >> 8)) & 0xff)]) == ((void *)0))
  return (6);
 if (!((scr)->scr_tty != ((void *)0)))
  return (19);
 tp = scr->scr_tty;
 return ((*linesw[tp->t_line].l_write)(tp, uio, flag));
}
struct tty *
wsdisplaytty(dev_t dev)
{
 struct wsdisplay_softc *sc;
 int unit;
 struct wsscreen *scr;
 unit = (((int32_t)((dev) & 0xff) | (((dev) & 0xffff0000) >> 8)) >> 8);
 sc = wsdisplay_cd.cd_devs[unit];
 if (((((int32_t)((dev) & 0xff) | (((dev) & 0xffff0000) >> 8)) & 0xff) == 255))
  panic("wsdisplaytty() on ctl device");
 if ((scr = sc->sc_scr[(((int32_t)((dev) & 0xff) | (((dev) & 0xffff0000) >> 8)) & 0xff)]) == ((void *)0))
  return (((void *)0));
 return (scr->scr_tty);
}
int
wsdisplayioctl(dev_t dev, u_long cmd, caddr_t data, int flag, struct proc *p)
{
 struct wsdisplay_softc *sc;
 struct tty *tp;
 int unit, error;
 struct wsscreen *scr;
 unit = (((int32_t)((dev) & 0xff) | (((dev) & 0xffff0000) >> 8)) >> 8);
 sc = wsdisplay_cd.cd_devs[unit];
 if (((((int32_t)((dev) & 0xff) | (((dev) & 0xffff0000) >> 8)) & 0xff) == 255)) {
         if (cmd != ((unsigned long)0x40000000 | ((sizeof(u_int) & 0x1fff) << 16) | ((('W')) << 8) | ((64))))
   return (wsdisplay_cfg_ioctl(sc, cmd, data, flag, p));
  dev = ((dev_t)((((((int32_t)(((u_int32_t)(dev) >> 8) & 0xff))) & 0xff) << 8) | (((((unit) << 8) | (0))) & 0xff) | ((((((unit) << 8) | (0))) & 0xffff00) << 8)));
 }
 if ((((int32_t)((dev) & 0xff) | (((dev) & 0xffff0000) >> 8)) & 0xff) >= 12)
  return (19);
 if ((scr = sc->sc_scr[(((int32_t)((dev) & 0xff) | (((dev) & 0xffff0000) >> 8)) & 0xff)]) == ((void *)0))
  return (6);
 if (((scr)->scr_tty != ((void *)0))) {
  tp = scr->scr_tty;
  error = (*linesw[tp->t_line].l_ioctl)(tp, cmd, data, flag, p);
  if (error >= 0)
   return (error);
  error = ttioctl(tp, cmd, data, flag, p);
  if (error >= 0)
   return (error);
 }
 error = wsdisplay_internal_ioctl(sc, scr, cmd, data, flag, p);
 return (error != -1 ? error : 25);
}
int
wsdisplay_param(struct device *dev, u_long cmd, struct wsdisplay_param *dp)
{
 struct wsdisplay_softc *sc = (struct wsdisplay_softc *)dev;
 return ((*sc->sc_accessops->ioctl)(sc->sc_accesscookie, cmd,
     (caddr_t)dp, 0, ((void *)0)));
}
int
wsdisplay_internal_ioctl(struct wsdisplay_softc *sc, struct wsscreen *scr,
    u_long cmd, caddr_t data, int flag, struct proc *p)
{
 int error;
 struct wsevsrc *inp;
 switch (cmd) {
 case ((unsigned long)0x80000000 | ((sizeof(int) & 0x1fff) << 16) | ((('W')) << 8) | ((19))):
  if ((flag & 0x0002) == 0)
   return (13);
  scr->scr_rawkbd = (*(int *)data == 1);
  return (wsdisplay_update_rawkbd(sc, scr));
 case ((unsigned long)0x40000000 | ((sizeof(int) & 0x1fff) << 16) | ((('W')) << 8) | ((20))):
  *(int *)data = (scr->scr_rawkbd ?
    1 : 0);
  return (0);
 }
 inp = sc->sc_input;
 if (inp != ((void *)0)) {
  error = ((inp)->me_ops->ddispioctl(&(inp)->me_dv, cmd, (caddr_t)data, flag, p));
  if (error >= 0)
   return (error);
 }
 switch (cmd) {
 case ((unsigned long)0x80000000 | ((sizeof(u_int) & 0x1fff) << 16) | ((('W')) << 8) | ((76))):
 case ((unsigned long)0x80000000 | ((sizeof(struct wsdisplay_font) & 0x1fff) << 16) | ((('W')) << 8) | ((80))):
 case ((unsigned long)0x80000000 | ((sizeof(u_int) & 0x1fff) << 16) | ((('W')) << 8) | ((69))):
 case ((unsigned long)0x80000000 | ((sizeof(struct wsdisplay_burner) & 0x1fff) << 16) | ((('W')) << 8) | ((81))):
 case ((unsigned long)0x80000000 | ((sizeof(u_int) & 0x1fff) << 16) | ((('W')) << 8) | ((86))):
  if ((flag & 0x0002) == 0)
   return (13);
 }
 switch (cmd) {
 case ((unsigned long)0x40000000 | ((sizeof(u_int) & 0x1fff) << 16) | ((('W')) << 8) | ((75))):
  if (scr->scr_flags & 4) {
   if (scr->scr_flags & 8)
    *(u_int *)data = 2;
   else
    *(u_int *)data = 1;
  } else
   *(u_int *)data = 0;
  return (0);
 case ((unsigned long)0x80000000 | ((sizeof(u_int) & 0x1fff) << 16) | ((('W')) << 8) | ((76))):
  if ((*(int *)data) != 0 &&
      (*(int *)data) != 1 &&
      (*(int *)data) != 2)
   return (22);
  scr->scr_flags &= ~4;
  if ((*(int *)data) == 1 ||
      (*(int *)data) == 2) {
   scr->scr_flags |= 4 |
       (((*(int *)data) == 2) ? 8 : 0);
   (*scr->scr_dconf->wsemul->reset)
       (scr->scr_dconf->wsemulcookie, WSEMUL_CLEARCURSOR);
  }
  wsdisplay_burner_setup(sc, scr);
  (void)(*sc->sc_accessops->ioctl)(sc->sc_accesscookie, cmd, data,
      flag, p);
  return (0);
 case ((unsigned long)0x80000000 | ((sizeof(struct wsdisplay_font) & 0x1fff) << 16) | ((('W')) << 8) | ((80))):
  if (!sc->sc_accessops->load_font)
   return (22);
  ((struct wsdisplay_font *)data)->data = ((void *)0);
  error = (*sc->sc_accessops->load_font)(sc->sc_accesscookie,
      scr->scr_dconf->emulcookie, ((struct wsdisplay_font *)data));
  if (!error)
   (*scr->scr_dconf->wsemul->reset)
       (scr->scr_dconf->wsemulcookie, WSEMUL_SYNCFONT);
  return (error);
 case ((unsigned long)0x40000000 | ((sizeof(u_int) & 0x1fff) << 16) | ((('W')) << 8) | ((68))):
  *(u_int *)data = !sc->sc_burnman;
  break;
 case ((unsigned long)0x80000000 | ((sizeof(u_int) & 0x1fff) << 16) | ((('W')) << 8) | ((69))):
  if (*(u_int *)data != 0 &&
      *(u_int *)data != 1)
   return (22);
  if (sc->sc_accessops->burn_screen == ((void *)0))
   return (45);
  (*sc->sc_accessops->burn_screen)(sc->sc_accesscookie,
       *(u_int *)data, sc->sc_burnflags);
  sc->sc_burnman = *(u_int *)data == 0;
  break;
 case ((unsigned long)0x40000000 | ((sizeof(struct wsdisplay_burner) & 0x1fff) << 16) | ((('W')) << 8) | ((82))):
  ((struct wsdisplay_burner *)data)->on = sc->sc_burninintvl * 1000 / hz;
  ((struct wsdisplay_burner *)data)->off = sc->sc_burnoutintvl * 1000 / hz;
  ((struct wsdisplay_burner *)data)->flags = sc->sc_burnflags;
  return (0);
 case ((unsigned long)0x80000000 | ((sizeof(struct wsdisplay_burner) & 0x1fff) << 16) | ((('W')) << 8) | ((81))):
     {
  struct wsscreen *active;
  if (((struct wsdisplay_burner *)data)->flags & ~(0x0001 | 0x0002 |
      0x0004 | 0x0008))
   return 22;
  error = 0;
  sc->sc_burnflags = ((struct wsdisplay_burner *)data)->flags;
  if ((sc->sc_burnflags & (0x0008 |
      0x0002 | 0x0004)) == 0) {
   if (sc->sc_burnout)
    timeout_del(&sc->sc_burner);
  }
  active = sc->sc_focus;
  if (active == ((void *)0))
   active = scr;
  if (((struct wsdisplay_burner *)data)->on) {
   sc->sc_burninintvl = hz * ((struct wsdisplay_burner *)data)->on / 1000;
   if (sc->sc_burnman) {
    sc->sc_burnout = sc->sc_burninintvl;
    if ((active->scr_flags & 4) == 0)
     wsdisplay_burn(sc, sc->sc_burnflags);
   }
  }
  if (((struct wsdisplay_burner *)data)->off) {
   sc->sc_burnoutintvl = hz * ((struct wsdisplay_burner *)data)->off / 1000;
   if (!sc->sc_burnman) {
    sc->sc_burnout = sc->sc_burnoutintvl;
    if ((active->scr_flags & 4) == 0)
     wsdisplay_burn(sc, sc->sc_burnflags);
   }
  }
  return (error);
     }
 case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct wsdisplay_addscreendata) & 0x1fff) << 16) | ((('W')) << 8) | ((85))):
  return (wsdisplay_getscreen(sc,
      (struct wsdisplay_addscreendata *)data));
 case ((unsigned long)0x80000000 | ((sizeof(u_int) & 0x1fff) << 16) | ((('W')) << 8) | ((86))):
  return (wsdisplay_switch((void *)sc, *(int *)data, 1));
 case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct wsdisplay_screentype) & 0x1fff) << 16) | ((('W')) << 8) | ((93))):
  if (((struct wsdisplay_screentype *)data)->idx >= sc->sc_scrdata->nscreens)
   return(22);
  ((struct wsdisplay_screentype *)data)->nidx = sc->sc_scrdata->nscreens;
  strncpy(((struct wsdisplay_screentype *)data)->name, sc->sc_scrdata->screens[((struct wsdisplay_screentype *)data)->idx]->name,
   16);
  ((struct wsdisplay_screentype *)data)->ncols = sc->sc_scrdata->screens[((struct wsdisplay_screentype *)data)->idx]->ncols;
  ((struct wsdisplay_screentype *)data)->nrows = sc->sc_scrdata->screens[((struct wsdisplay_screentype *)data)->idx]->nrows;
  ((struct wsdisplay_screentype *)data)->fontwidth = sc->sc_scrdata->screens[((struct wsdisplay_screentype *)data)->idx]->fontwidth;
  ((struct wsdisplay_screentype *)data)->fontheight = sc->sc_scrdata->screens[((struct wsdisplay_screentype *)data)->idx]->fontheight;
  return (0);
 case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct wsdisplay_emultype) & 0x1fff) << 16) | ((('W')) << 8) | ((94))):
  if (wsemul_getname(((struct wsdisplay_emultype *)data)->idx) == ((void *)0))
   return(22);
  strncpy(((struct wsdisplay_emultype *)data)->name, wsemul_getname(((struct wsdisplay_emultype *)data)->idx), 16);
  return (0);
        }
 return ((*sc->sc_accessops->ioctl)(sc->sc_accesscookie, cmd, data,
     flag, p));
}
int
wsdisplay_cfg_ioctl(struct wsdisplay_softc *sc, u_long cmd, caddr_t data,
    int flag, struct proc *p)
{
 int error;
 void *buf;
 size_t fontsz;
 struct wsevsrc *inp;
 switch (cmd) {
 case ((unsigned long)0x80000000 | ((sizeof(struct wscons_event) & 0x1fff) << 16) | ((('W')) << 8) | ((88))):
  error = wsmoused(sc, data, flag, p);
  return (error);
 case ((unsigned long)0x80000000 | ((sizeof(struct wsdisplay_addscreendata) & 0x1fff) << 16) | ((('W')) << 8) | ((83))):
  if ((error = wsdisplay_addscreen(sc, ((struct wsdisplay_addscreendata *)data)->idx,
      ((struct wsdisplay_addscreendata *)data)->screentype, ((struct wsdisplay_addscreendata *)data)->emul)) == 0)
   wsdisplay_addscreen_print(sc, ((struct wsdisplay_addscreendata *)data)->idx, 0);
  return (error);
 case ((unsigned long)0x80000000 | ((sizeof(struct wsdisplay_delscreendata) & 0x1fff) << 16) | ((('W')) << 8) | ((84))):
  return (wsdisplay_delscreen(sc, ((struct wsdisplay_delscreendata *)data)->idx, ((struct wsdisplay_delscreendata *)data)->flags));
 case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct wsdisplay_addscreendata) & 0x1fff) << 16) | ((('W')) << 8) | ((85))):
  return (wsdisplay_getscreen(sc,
      (struct wsdisplay_addscreendata *)data));
 case ((unsigned long)0x80000000 | ((sizeof(u_int) & 0x1fff) << 16) | ((('W')) << 8) | ((86))):
  return (wsdisplay_switch((void *)sc, *(int *)data, 1));
 case ((unsigned long)0x80000000 | ((sizeof(struct wsdisplay_font) & 0x1fff) << 16) | ((('W')) << 8) | ((77))):
  if (!sc->sc_accessops->load_font)
   return (22);
  if (((struct wsdisplay_font *)data)->fontheight > 64 || ((struct wsdisplay_font *)data)->stride > 8)
   return (22);
  if (((struct wsdisplay_font *)data)->numchars > 65536)
   return (22);
  fontsz = ((struct wsdisplay_font *)data)->fontheight * ((struct wsdisplay_font *)data)->stride * ((struct wsdisplay_font *)data)->numchars;
  if (fontsz > (512*1024))
   return (22);
  buf = malloc(fontsz, 2, 0x0001);
  error = copyin(((struct wsdisplay_font *)data)->data, buf, fontsz);
  if (error) {
   free(buf, 2, fontsz);
   return (error);
  }
  ((struct wsdisplay_font *)data)->data = buf;
  error =
    (*sc->sc_accessops->load_font)(sc->sc_accesscookie, 0, ((struct wsdisplay_font *)data));
  if (error)
   free(buf, 2, fontsz);
  return (error);
 case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct wsdisplay_font) & 0x1fff) << 16) | ((('W')) << 8) | ((78))):
  if (!sc->sc_accessops->list_font)
   return (22);
  error =
    (*sc->sc_accessops->list_font)(sc->sc_accesscookie, ((struct wsdisplay_font *)data));
  return (error);
 case ((unsigned long)0x80000000 | ((sizeof(struct wsdisplay_font) & 0x1fff) << 16) | ((('W')) << 8) | ((79))):
  return (22);
 case ((unsigned long)0x80000000 | ((sizeof(struct wsmux_device) & 0x1fff) << 16) | ((('W')) << 8) | ((97))):
  if (((struct wsmux_device *)data)->idx == -1 && ((struct wsmux_device *)data)->type == 2)
   ((struct wsmux_device *)data)->idx = wskbd_pickfree();
 case ((unsigned long)0x80000000 | ((sizeof(struct wscons_event) & 0x1fff) << 16) | ((('W')) << 8) | ((96))):
 case ((unsigned long)0x80000000 | ((sizeof(struct wsmux_device) & 0x1fff) << 16) | ((('W')) << 8) | ((98))):
 case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct wsmux_device_list) & 0x1fff) << 16) | ((('W')) << 8) | ((99))):
  inp = sc->sc_input;
  if (inp == ((void *)0))
   return (6);
  return (((inp)->me_ops->dioctl(&(inp)->me_dv, cmd, (caddr_t)data, flag, p)));
 }
 return (22);
}
paddr_t
wsdisplaymmap(dev_t dev, off_t offset, int prot)
{
 struct wsdisplay_softc *sc = wsdisplay_cd.cd_devs[(((int32_t)((dev) & 0xff) | (((dev) & 0xffff0000) >> 8)) >> 8)];
 struct wsscreen *scr;
 if (((((int32_t)((dev) & 0xff) | (((dev) & 0xffff0000) >> 8)) & 0xff) == 255))
  return (-1);
 if ((scr = sc->sc_scr[(((int32_t)((dev) & 0xff) | (((dev) & 0xffff0000) >> 8)) & 0xff)]) == ((void *)0))
  return (-1);
 if (!(scr->scr_flags & 4))
  return (-1);
 return ((*sc->sc_accessops->mmap)(sc->sc_accesscookie, offset, prot));
}
int
wsdisplaypoll(dev_t dev, int events, struct proc *p)
{
 struct wsdisplay_softc *sc = wsdisplay_cd.cd_devs[(((int32_t)((dev) & 0xff) | (((dev) & 0xffff0000) >> 8)) >> 8)];
 struct wsscreen *scr;
 if (((((int32_t)((dev) & 0xff) | (((dev) & 0xffff0000) >> 8)) & 0xff) == 255))
  return (0);
 if ((scr = sc->sc_scr[(((int32_t)((dev) & 0xff) | (((dev) & 0xffff0000) >> 8)) & 0xff)]) == ((void *)0))
  return (0x0008);
 if (!((scr)->scr_tty != ((void *)0)))
  return (0x0008);
 return (ttpoll(dev, events, p));
}
int
wsdisplaykqfilter(dev_t dev, struct knote *kn)
{
 struct wsdisplay_softc *sc = wsdisplay_cd.cd_devs[(((int32_t)((dev) & 0xff) | (((dev) & 0xffff0000) >> 8)) >> 8)];
 struct wsscreen *scr;
 if (((((int32_t)((dev) & 0xff) | (((dev) & 0xffff0000) >> 8)) & 0xff) == 255))
  return (6);
 if ((scr = sc->sc_scr[(((int32_t)((dev) & 0xff) | (((dev) & 0xffff0000) >> 8)) & 0xff)]) == ((void *)0))
  return (6);
 if (!((scr)->scr_tty != ((void *)0)))
  return (6);
 return (ttkqfilter(dev, kn));
}
void
wsdisplaystart(struct tty *tp)
{
 struct wsdisplay_softc *sc;
 struct wsscreen *scr;
 int s, n, done, unit;
 u_char *buf;
 unit = (((int32_t)((tp->t_dev) & 0xff) | (((tp->t_dev) & 0xffff0000) >> 8)) >> 8);
 if (unit >= wsdisplay_cd.cd_ndevs ||
     (sc = wsdisplay_cd.cd_devs[unit]) == ((void *)0))
  return;
 s = _splraise(6);
 if (tp->t_state & (0x00080 | 0x00004 | 0x00100)) {
  _splx(s);
  return;
 }
 if (tp->t_outq.c_cc == 0 && tp->t_wsel.si_seltid == 0)
  goto low;
 if ((scr = sc->sc_scr[(((int32_t)((tp->t_dev) & 0xff) | (((tp->t_dev) & 0xffff0000) >> 8)) & 0xff)]) == ((void *)0)) {
  _splx(s);
  return;
 }
 if (scr->scr_hold_screen) {
  tp->t_state |= 0x00080;
  _splx(s);
  return;
 }
 tp->t_state |= 0x00004;
 _splx(s);
 n = ndqb(&tp->t_outq, 0);
 buf = tp->t_outq.c_cf;
 if (!(scr->scr_flags & 4)) {
  wsdisplay_burn(sc, 0x0008);
  if (scr == sc->sc_focus)
   mouse_remove(scr);
  done = (*scr->scr_dconf->wsemul->output)
      (scr->scr_dconf->wsemulcookie, buf, n, 0);
 } else
  done = n;
 ndflush(&tp->t_outq, done);
 if (done == n) {
  if ((n = ndqb(&tp->t_outq, 0)) > 0) {
   buf = tp->t_outq.c_cf;
   if (!(scr->scr_flags & 4)) {
    done = (*scr->scr_dconf->wsemul->output)
        (scr->scr_dconf->wsemulcookie, buf, n, 0);
   } else
    done = n;
   ndflush(&tp->t_outq, done);
  }
 }
 s = _splraise(6);
 tp->t_state &= ~0x00004;
 if (tp->t_outq.c_cc) {
  tp->t_state |= 0x00080;
  timeout_add(&tp->t_rstrt_to, (hz > 128) ? (hz / 128) : 1);
 }
low:
 ttwakeupwr(tp);
 _splx(s);
}
int
wsdisplaystop(struct tty *tp, int flag)
{
 int s;
 s = _splraise(6);
 if (((tp->t_state) & (0x00004)))
  if (!((tp->t_state) & (0x00100)))
   ((tp->t_state) |= (0x00010));
 _splx(s);
 return (0);
}
int
wsdisplayparam(struct tty *tp, struct termios *t)
{
 tp->t_termios.c_ispeed = t->c_ispeed;
 tp->t_termios.c_ospeed = t->c_ospeed;
 tp->t_termios.c_cflag = t->c_cflag;
 return (0);
}
void
wsdisplay_emulbell(void *v)
{
 struct wsscreen *scr = v;
 if (scr == ((void *)0))
  return;
 if (scr->scr_flags & 4)
  return;
 (void) wsdisplay_internal_ioctl(scr->sc, scr, ((unsigned long)0x20000000 | ((0 & 0x1fff) << 16) | ((('W')) << 8) | ((1))), ((void *)0),
     0x0002, ((void *)0));
}
void
wsdisplay_kbdinput(struct device *dev, kbd_t layout, keysym_t *ks, int num)
{
 struct wsdisplay_softc *sc = (struct wsdisplay_softc *)dev;
 struct wsscreen *scr;
 const u_char *dp;
 int count;
 struct tty *tp;
 scr = sc->sc_focus;
 if (!scr || !((scr)->scr_tty != ((void *)0)))
  return;
 tp = scr->scr_tty;
 for (; num > 0; num--) {
  count = (*scr->scr_dconf->wsemul->translate)
      (scr->scr_dconf->wsemulcookie, layout, *ks++, &dp);
  while (count-- > 0)
   (*linesw[tp->t_line].l_rint)(*dp++, tp);
 }
}
void
wsdisplay_rawkbdinput(struct device *dev, u_char *buf, int num)
{
 struct wsdisplay_softc *sc = (struct wsdisplay_softc *)dev;
 struct wsscreen *scr;
 struct tty *tp;
 scr = sc->sc_focus;
 if (!scr || !((scr)->scr_tty != ((void *)0)))
  return;
 tp = scr->scr_tty;
 while (num-- > 0)
  (*linesw[tp->t_line].l_rint)(*buf++, tp);
}
int
wsdisplay_update_rawkbd(struct wsdisplay_softc *sc, struct wsscreen *scr)
{
 int s, raw, data, error;
 struct wsevsrc *inp;
 s = _splraise(6);
 raw = (scr ? scr->scr_rawkbd : 0);
 if (scr != sc->sc_focus || sc->sc_rawkbd == raw) {
  _splx(s);
  return (0);
 }
 data = raw ? 1 : 0;
 inp = sc->sc_input;
 if (inp == ((void *)0)) {
  _splx(s);
  return (6);
 }
 error = ((inp)->me_ops->ddispioctl(&(inp)->me_dv, ((unsigned long)0x80000000 | ((sizeof(int) & 0x1fff) << 16) | ((('W')) << 8) | ((19))), (caddr_t)&data, 0x0002, 0));
 if (!error)
  sc->sc_rawkbd = raw;
 _splx(s);
 return (error);
}
int
wsdisplay_switch3(void *arg, int error, int waitok)
{
 struct wsdisplay_softc *sc = arg;
 int no;
 struct wsscreen *scr;
 no = sc->sc_screenwanted;
 scr = sc->sc_scr[no];
 ((sc->sc_flags) &= ~(0x01));
 if (!error)
  wsdisplay_burner_setup(sc, scr);
 if (!error && (scr->scr_flags & 2))
  wakeup(scr);
 return (error);
}
int
wsdisplay_switch2(void *arg, int error, int waitok)
{
 struct wsdisplay_softc *sc = arg;
 int no;
 struct wsscreen *scr;
 if (!((sc->sc_flags) & (0x01))) {
  printf("wsdisplay_switch2: not switching\n");
  return (22);
 }
 no = sc->sc_screenwanted;
 if (no < 0 || no >= 12)
  panic("wsdisplay_switch2: invalid screen %d", no);
 scr = sc->sc_scr[no];
 if (!scr) {
  printf("wsdisplay_switch2: screen %d disappeared\n", no);
  error = 6;
 }
 if (error) {
  if (sc->sc_oldscreen == -1) {
   printf("wsdisplay_switch2: giving up\n");
   sc->sc_focus = ((void *)0);
   ((sc->sc_flags) &= ~(0x01));
   return (error);
  }
  sc->sc_screenwanted = sc->sc_oldscreen;
  sc->sc_oldscreen = -1;
  return (wsdisplay_switch1(arg, 0, waitok));
 }
 sc->sc_focusidx = no;
 sc->sc_focus = scr;
 (void) wsdisplay_update_rawkbd(sc, scr);
 return (wsdisplay_switch3(sc, error, waitok));
}
int
wsdisplay_switch1(void *arg, int error, int waitok)
{
 struct wsdisplay_softc *sc = arg;
 int no;
 struct wsscreen *scr;
 if (!((sc->sc_flags) & (0x01))) {
  printf("wsdisplay_switch1: not switching\n");
  return (22);
 }
 no = sc->sc_screenwanted;
 if (no == -1) {
  ((sc->sc_flags) &= ~(0x01));
  if (!error) {
   sc->sc_focus = ((void *)0);
  }
  wakeup(sc);
  return (error);
 }
 if (no < 0 || no >= 12)
  panic("wsdisplay_switch1: invalid screen %d", no);
 scr = sc->sc_scr[no];
 if (!scr) {
  printf("wsdisplay_switch1: screen %d disappeared\n", no);
  error = 6;
 }
 if (error) {
  ((sc->sc_flags) &= ~(0x01));
  return (error);
 }
 error = (*sc->sc_accessops->show_screen)(sc->sc_accesscookie,
     scr->scr_dconf->emulcookie, waitok,
     sc->sc_isconsole && wsdisplay_cons_pollmode ? 0 : ((void (*)(void *, int, int))wsdisplay_switch2), sc);
 if (error == 35) {
  return (0);
 }
 return (wsdisplay_switch2(sc, error, waitok));
}
int
wsdisplay_switch(struct device *dev, int no, int waitok)
{
 struct wsdisplay_softc *sc = (struct wsdisplay_softc *)dev;
 int s, res = 0;
 struct wsscreen *scr;
 if (no != -1) {
  if (no < 0 || no >= 12)
   return (22);
  if (sc->sc_scr[no] == ((void *)0))
   return (6);
 }
 s = _splraise(6);
 while (sc->sc_resumescreen != -1 && res == 0)
  res = tsleep(&sc->sc_resumescreen, 0x100, "wsrestore", 0);
 if (res) {
  _splx(s);
  return (res);
 }
 if ((sc->sc_focus && no == sc->sc_focusidx) ||
     (sc->sc_focus == ((void *)0) && no == -1)) {
  _splx(s);
  return (0);
 }
 if (((sc->sc_flags) & (0x01))) {
  _splx(s);
  return (16);
 }
 ((sc->sc_flags) |= (0x01));
 sc->sc_screenwanted = no;
 _splx(s);
 scr = sc->sc_focus;
 if (!scr) {
  sc->sc_oldscreen = -1;
  return (wsdisplay_switch1(sc, 0, waitok));
 } else
  sc->sc_oldscreen = sc->sc_focusidx;
 mouse_remove(scr);
 return (wsdisplay_switch1(sc, res, waitok));
}
void
wsdisplay_reset(struct device *dev, enum wsdisplay_resetops op)
{
 struct wsdisplay_softc *sc = (struct wsdisplay_softc *)dev;
 struct wsscreen *scr;
 scr = sc->sc_focus;
 if (!scr)
  return;
 switch (op) {
 case WSDISPLAY_RESETEMUL:
  (*scr->scr_dconf->wsemul->reset)(scr->scr_dconf->wsemulcookie,
      WSEMUL_RESET);
  break;
 case WSDISPLAY_RESETCLOSE:
  wsdisplay_closescreen(sc, scr);
  break;
 }
}
int
wsdisplay_maxscreenidx(struct wsdisplay_softc *sc)
{
 return (12 - 1);
}
int
wsdisplay_screenstate(struct wsdisplay_softc *sc, int idx)
{
 if (idx < 0 || idx >= 12)
  return (22);
 if (!sc->sc_scr[idx])
  return (6);
 return ((sc->sc_scr[idx]->scr_flags & 1) ? 16 : 0);
}
int
wsdisplay_getactivescreen(struct wsdisplay_softc *sc)
{
 return (sc->sc_focus ? sc->sc_focusidx : -1);
}
int
wsscreen_switchwait(struct wsdisplay_softc *sc, int no)
{
 struct wsscreen *scr;
 int s, res = 0;
 if (no == -1) {
  s = _splraise(6);
  while (sc->sc_focus && res == 0) {
   res = tsleep(sc, 0x100, "wswait", 0);
  }
  _splx(s);
  return (res);
 }
 if (no < 0 || no >= 12)
  return (6);
 scr = sc->sc_scr[no];
 if (!scr)
  return (6);
 s = _splraise(6);
 if (scr != sc->sc_focus) {
  scr->scr_flags |= 2;
  res = tsleep(scr, 0x100, "wswait2", 0);
  if (scr != sc->sc_scr[no])
   res = 6;
  else
   scr->scr_flags &= ~2;
 }
 _splx(s);
 return (res);
}
void
wsdisplay_kbdholdscr(struct wsscreen *scr, int hold)
{
 if (hold)
  scr->scr_hold_screen = 1;
 else {
  scr->scr_hold_screen = 0;
  timeout_add(&scr->scr_tty->t_rstrt_to, 0);
 }
}
void
wsdisplay_kbdholdscreen(struct device *dev, int hold)
{
 struct wsdisplay_softc *sc = (struct wsdisplay_softc *)dev;
 struct wsscreen *scr;
 scr = sc->sc_focus;
 if (scr != ((void *)0) && ((scr)->scr_tty != ((void *)0)))
  wsdisplay_kbdholdscr(scr, hold);
}
void
wsdisplay_set_console_kbd(struct wsevsrc *src)
{
 if (wsdisplay_console_device == ((void *)0)) {
  src->me_dispdv = ((void *)0);
  return;
 }
 if (wsmux_attach_sc((struct wsmux_softc *)
       wsdisplay_console_device->sc_input, src)) {
  src->me_dispdv = ((void *)0);
  return;
 }
 src->me_dispdv = &wsdisplay_console_device->sc_dv;
}
void
wsdisplay_cnputc(dev_t dev, int i)
{
 struct wsscreen_internal *dc;
 char c = i;
 if (!wsdisplay_console_initted)
  return;
 if (wsdisplay_console_device != ((void *)0) &&
     (wsdisplay_console_device->sc_scr[0] != ((void *)0)) &&
     (wsdisplay_console_device->sc_scr[0]->scr_flags & 4))
  return;
 dc = &wsdisplay_console_conf;
 (void)(*dc->wsemul->output)(dc->wsemulcookie, &c, 1, 1);
}
int
wsdisplay_getc_dummy(dev_t dev)
{
 return (0);
}
void
wsdisplay_pollc(dev_t dev, int on)
{
 wsdisplay_cons_pollmode = on;
 if (wsdisplay_console_device != ((void *)0) &&
     wsdisplay_console_device->sc_accessops->pollc != ((void *)0))
  (*wsdisplay_console_device->sc_accessops->pollc)
      (wsdisplay_console_device->sc_accesscookie, on);
 if (wsdisplay_cons_kbd_pollc)
  (*wsdisplay_cons_kbd_pollc)(dev, on);
}
void
wsdisplay_set_cons_kbd(int (*get)(dev_t), void (*poll)(dev_t, int),
    void (*bell)(dev_t, u_int, u_int, u_int))
{
 wsdisplay_cons.cn_getc = get;
 wsdisplay_cons.cn_bell = bell;
 wsdisplay_cons_kbd_pollc = poll;
}
void
wsdisplay_unset_cons_kbd(void)
{
 wsdisplay_cons.cn_getc = wsdisplay_getc_dummy;
 wsdisplay_cons.cn_bell = ((void *)0);
 wsdisplay_cons_kbd_pollc = ((void *)0);
}
void
wsdisplay_switchtoconsole(void)
{
 struct wsdisplay_softc *sc;
 struct wsscreen *scr;
 if (wsdisplay_console_device != ((void *)0) && cn_tab == &wsdisplay_cons) {
  sc = wsdisplay_console_device;
  if ((scr = sc->sc_scr[0]) == ((void *)0))
   return;
  (*sc->sc_accessops->show_screen)(sc->sc_accesscookie,
      scr->scr_dconf->emulcookie, 0, ((void *)0), ((void *)0));
 }
}
void
wsdisplay_enter_ddb(void)
{
 struct wsdisplay_softc *sc;
 struct wsscreen *scr;
 if (wsdisplay_console_device != ((void *)0) && cn_tab == &wsdisplay_cons) {
  sc = wsdisplay_console_device;
  if ((scr = sc->sc_scr[0]) == ((void *)0))
   return;
  if (sc->sc_accessops->enter_ddb) {
   (*sc->sc_accessops->enter_ddb)(sc->sc_accesscookie,
       scr->scr_dconf->emulcookie);
  } else {
   (*sc->sc_accessops->show_screen)(sc->sc_accesscookie,
       scr->scr_dconf->emulcookie, 0, ((void *)0), ((void *)0));
  }
 }
}
void
wsdisplay_suspend(void)
{
 int i;
 for (i = 0; i < wsdisplay_cd.cd_ndevs; i++)
  if (wsdisplay_cd.cd_devs[i] != ((void *)0))
   wsdisplay_suspend_device(wsdisplay_cd.cd_devs[i]);
}
void
wsdisplay_suspend_device(struct device *dev)
{
 struct wsdisplay_softc *sc = (struct wsdisplay_softc *)dev;
 struct wsscreen *scr;
 int active, idx, ret = 0, s;
 if ((active = wsdisplay_getactivescreen(sc)) == -1)
  return;
 scr = sc->sc_scr[active];
retry:
 idx = 12;
 if (scr->scr_flags & 4 &&
     (scr->scr_flags & 8) == 0) {
  for (idx = 0; idx < 12; idx++) {
   if (sc->sc_scr[idx] == ((void *)0) || sc->sc_scr[idx] == scr)
    continue;
   if ((sc->sc_scr[idx]->scr_flags & 4) == 0)
    break;
  }
 }
 if (idx == 12)
  return;
 ret = wsdisplay_switch((struct device *)sc, idx, 1);
 if (ret == 16) {
  goto retry;
 } else if (ret)
  return;
 s = _splraise(6);
 sc->sc_resumescreen = active;
 _splx(s);
 (void)wsscreen_switchwait(sc, idx);
}
void
wsdisplay_resume(void)
{
 int i;
 for (i = 0; i < wsdisplay_cd.cd_ndevs; i++)
  if (wsdisplay_cd.cd_devs[i] != ((void *)0))
   wsdisplay_resume_device(wsdisplay_cd.cd_devs[i]);
}
void
wsdisplay_resume_device(struct device *dev)
{
 struct wsdisplay_softc *sc = (struct wsdisplay_softc *)dev;
 int idx, s;
 if (sc->sc_resumescreen != -1) {
  s = _splraise(6);
  idx = sc->sc_resumescreen;
  sc->sc_resumescreen = -1;
  wakeup(&sc->sc_resumescreen);
  _splx(s);
  (void)wsdisplay_switch((struct device *)sc, idx, 1);
 }
}
void
wsscrollback(void *arg, int op)
{
 struct wsdisplay_softc *sc = arg;
 int lines;
 if (sc->sc_focus == ((void *)0))
  return;
 if (op == 2)
  lines = 0;
 else {
  lines = sc->sc_focus->scr_dconf->scrdata->nrows - 1;
  if (op == 0)
   lines = -lines;
 }
 if (sc->sc_accessops->scrollback) {
  (*sc->sc_accessops->scrollback)(sc->sc_accesscookie,
      sc->sc_focus->scr_dconf->emulcookie, lines);
 }
}
void
wsdisplay_burner_setup(struct wsdisplay_softc *sc, struct wsscreen *scr)
{
 if (scr->scr_flags & 4) {
  if (sc->sc_burnman)
   wsdisplay_burner(sc);
  if (sc->sc_burnout) {
   timeout_del(&sc->sc_burner);
   sc->sc_burnout = 0;
  }
 } else {
  if (!sc->sc_burnman) {
   sc->sc_burnout = sc->sc_burnoutintvl;
   wsdisplay_burn(sc, sc->sc_burnflags);
  }
 }
}
void
wsdisplay_burn(void *v, u_int flags)
{
 struct wsdisplay_softc *sc = v;
 if ((flags & sc->sc_burnflags & (0x0008 |
     0x0002 | 0x0004)) &&
     sc->sc_accessops->burn_screen) {
  if (sc->sc_burnout)
   timeout_add(&sc->sc_burner, sc->sc_burnout);
  if (sc->sc_burnman)
   sc->sc_burnout = 0;
 }
}
void
wsdisplay_burner(void *v)
{
 struct wsdisplay_softc *sc = v;
 int s;
 if (sc->sc_accessops->burn_screen) {
  (*sc->sc_accessops->burn_screen)(sc->sc_accesscookie,
      sc->sc_burnman, sc->sc_burnflags);
  s = _splraise(6);
  if (sc->sc_burnman) {
   sc->sc_burnout = sc->sc_burnoutintvl;
   timeout_add(&sc->sc_burner, sc->sc_burnout);
  } else
   sc->sc_burnout = sc->sc_burninintvl;
  sc->sc_burnman = !sc->sc_burnman;
  _splx(s);
 }
}
int
wsmoused(struct wsdisplay_softc *sc, caddr_t data, int flag, struct proc *p)
{
 struct wscons_event mouse_event = *(struct wscons_event *)data;
 if ((((mouse_event.type) == 6) || ((mouse_event.type) == 7) || ((mouse_event.type) == 10) || ((mouse_event.type) == 16))) {
  if (sc->sc_focus != ((void *)0))
   motion_event(sc->sc_focus, mouse_event.type,
       mouse_event.value);
  return 0;
 }
 if ((((mouse_event.type) == 4) || ((mouse_event.type) == 5))) {
  if (sc->sc_focus != ((void *)0)) {
   if (mouse_event.type ==
       5) {
    button_event(sc->sc_focus,
        mouse_event.value,
        mouse_event.time.tv_sec);
   } else
    button_event(sc->sc_focus,
        mouse_event.value, 0);
  }
  return (0);
 }
 if (((mouse_event.type == 12) || (mouse_event.type == 13))) {
  return ctrl_event(sc, mouse_event.type,
      mouse_event.value, p);
 }
 return -1;
}
void
motion_event(struct wsscreen *scr, u_int type, int value)
{
 switch (type) {
 case 6:
  mouse_moverel(scr, value, 0);
  break;
 case 7:
  mouse_moverel(scr, 0, -value);
  break;
 case 10:
  mouse_zaxis(scr, value);
  break;
 default:
  break;
 }
}
void
button_event(struct wsscreen *scr, int button, int clicks)
{
 switch (button) {
 case 0:
  switch (clicks % 4) {
  case 0:
   mouse_copy_end(scr);
   mouse_copy_selection(scr);
   break;
  case 1:
   mouse_copy_start(scr);
   mouse_copy_selection(scr);
   break;
  case 2:
   mouse_copy_word(scr);
   mouse_copy_selection(scr);
   break;
  case 3:
   mouse_copy_line(scr);
   mouse_copy_selection(scr);
   break;
  }
  break;
 case 1:
  if (clicks != 0)
   mouse_paste(scr);
  break;
 case 2:
  if (clicks != 0)
   mouse_copy_extend_after(scr);
  break;
 default:
  break;
 }
}
int
ctrl_event(struct wsdisplay_softc *sc, u_int type, int value, struct proc *p)
{
 struct wsscreen *scr;
 int i;
 switch (type) {
 case 13:
  ((sc->sc_flags) &= ~(0x02));
  return (0);
 case 12:
  if (!sc->sc_accessops->getchar)
   return (1);
  allocate_copybuffer(sc);
  ((sc->sc_flags) &= ~(0x02));
  for (i = 0 ; i < 1 ; i++)
   if ((scr = sc->sc_scr[i]) != ((void *)0)) {
    scr->mouse =
        ((((scr)->scr_dconf)->scrdata->ncols) * (((scr)->scr_dconf)->scrdata->nrows)) / 2;
    scr->cursor = scr->mouse;
    scr->cpy_start = 0;
    scr->cpy_end = 0;
    scr->orig_start = 0;
    scr->orig_end = 0;
    scr->mouse_flags = 0;
   }
  return (0);
 default:
  return 0;
 }
}
void
mouse_moverel(struct wsscreen *scr, int dx, int dy)
{
 struct wsscreen_internal *dconf = scr->scr_dconf;
 u_int old_mouse = scr->mouse;
 int mouse_col = scr->mouse % ((dconf)->scrdata->ncols);
 int mouse_row = scr->mouse / ((dconf)->scrdata->ncols);
 if (mouse_col + dx >= (((dconf)->scrdata->ncols) - 1))
  mouse_col = (((dconf)->scrdata->ncols) - 1);
 else {
  if (mouse_col + dx <= 0)
   mouse_col = 0;
  else
   mouse_col += dx;
 }
 if (mouse_row + dy >= (((dconf)->scrdata->nrows) - 1))
  mouse_row = (((dconf)->scrdata->nrows) - 1);
 else {
  if (mouse_row + dy <= 0)
   mouse_row = 0;
  else
   mouse_row += dy;
 }
 scr->mouse = mouse_row * ((dconf)->scrdata->ncols) + mouse_col;
 if (old_mouse != scr->mouse) {
  if (((scr->mouse_flags) & (0x04))) {
   mouse_copy_extend(scr);
  } else {
   inverse_char(scr, scr->mouse);
   if (((scr->mouse_flags) & (0x01)))
    inverse_char(scr, old_mouse);
   else
    ((scr->mouse_flags) |= (0x01));
  }
 }
}
void
inverse_char(struct wsscreen *scr, u_int pos)
{
 struct wsscreen_internal *dconf = scr->scr_dconf;
 struct wsdisplay_charcell cell;
 int fg, bg, ul;
 int flags;
 int tmp;
 long attr;
 ((*(scr)->sc->sc_accessops->getchar) ((scr)->sc->sc_accesscookie, (pos) / (((scr)->scr_dconf)->scrdata->ncols), (pos) % (((scr)->scr_dconf)->scrdata->ncols), &cell));
 (*dconf->emulops->unpack_attr)(dconf->emulcookie, cell.attr, &fg,
     &bg, &ul);
 flags = 0;
 if (dconf->scrdata->capabilities & 1) {
  flags |= 16;
  tmp = fg;
  fg = bg;
  bg = tmp;
 } else if (dconf->scrdata->capabilities & 2) {
  flags |= 1;
 }
 if ((*dconf->emulops->alloc_attr)(dconf->emulcookie, fg, bg, flags |
     (ul ? 8 : 0), &attr) == 0) {
  cell.attr = attr;
  ((*(dconf)->emulops->putchar) ((dconf)->emulcookie, ((pos) / ((dconf)->scrdata->ncols)), ((pos) % ((dconf)->scrdata->ncols)), (cell.uc), (cell.attr)));
 }
}
void
inverse_region(struct wsscreen *scr, u_int start, u_int end)
{
 struct wsscreen_internal *dconf = scr->scr_dconf;
 u_int current_pos;
 u_int abs_end;
 abs_end = ((dconf)->scrdata->ncols) * ((dconf)->scrdata->nrows);
 if (end > abs_end)
  return;
 current_pos = start;
 while (current_pos <= end)
  inverse_char(scr, current_pos++);
}
u_int
skip_spc_right(struct wsscreen *scr, int border)
{
 struct wsscreen_internal *dconf = scr->scr_dconf;
 struct wsdisplay_charcell cell;
 u_int current = scr->cpy_end;
 u_int mouse_col = scr->cpy_end % ((dconf)->scrdata->ncols);
 u_int limit = current + (((dconf)->scrdata->ncols) - mouse_col - 1);
 u_int res = 0;
 while (((*(scr)->sc->sc_accessops->getchar) ((scr)->sc->sc_accesscookie, (current) / (((scr)->scr_dconf)->scrdata->ncols), (current) % (((scr)->scr_dconf)->scrdata->ncols), &cell)) == 0 && cell.uc == ' ' &&
     current <= limit) {
  current++;
  res++;
 }
 if (border == 1) {
  if (current > limit)
   return (res - 1);
  else
   return (0);
 } else {
  if (res != 0)
   return (res - 1);
  else
   return (res);
 }
}
u_int
skip_spc_left(struct wsscreen *scr)
{
 struct wsscreen_internal *dconf = scr->scr_dconf;
 struct wsdisplay_charcell cell;
 u_int current = scr->cpy_start;
 u_int mouse_col = scr->mouse % ((dconf)->scrdata->ncols);
 u_int limit = current - mouse_col;
 u_int res = 0;
 while (((*(scr)->sc->sc_accessops->getchar) ((scr)->sc->sc_accesscookie, (current) / (((scr)->scr_dconf)->scrdata->ncols), (current) % (((scr)->scr_dconf)->scrdata->ncols), &cell)) == 0 && cell.uc == ' ' &&
     current >= limit) {
  current--;
  res++;
 }
 if (res != 0)
  res--;
 return (res);
}
static const int charClass[256] = {
    32, 1, 1, 1, 1, 1, 1, 1,
     1, 32, 1, 1, 1, 1, 1, 1,
     1, 1, 1, 1, 1, 1, 1, 1,
     1, 1, 1, 1, 1, 1, 1, 1,
    32, 33, 34, 35, 36, 37, 38, 39,
    40, 41, 42, 43, 44, 45, 46, 47,
    48, 48, 48, 48, 48, 48, 48, 48,
    48, 48, 58, 59, 60, 61, 62, 63,
    64, 48, 48, 48, 48, 48, 48, 48,
    48, 48, 48, 48, 48, 48, 48, 48,
    48, 48, 48, 48, 48, 48, 48, 48,
    48, 48, 48, 91, 92, 93, 94, 48,
    96, 48, 48, 48, 48, 48, 48, 48,
    48, 48, 48, 48, 48, 48, 48, 48,
    48, 48, 48, 48, 48, 48, 48, 48,
    48, 48, 48, 123, 124, 125, 126, 1,
     1, 1, 1, 1, 1, 1, 1, 1,
     1, 1, 1, 1, 1, 1, 1, 1,
     1, 1, 1, 1, 1, 1, 1, 1,
     1, 1, 1, 1, 1, 1, 1, 1,
   160, 161, 162, 163, 164, 165, 166, 167,
   168, 169, 170, 171, 172, 173, 174, 175,
   176, 177, 178, 179, 180, 181, 182, 183,
   184, 185, 186, 187, 188, 189, 190, 191,
    48, 48, 48, 48, 48, 48, 48, 48,
    48, 48, 48, 48, 48, 48, 48, 48,
    48, 48, 48, 48, 48, 48, 48, 216,
    48, 48, 48, 48, 48, 48, 48, 48,
    48, 48, 48, 48, 48, 48, 48, 48,
    48, 48, 48, 48, 48, 48, 48, 48,
    48, 48, 48, 48, 48, 48, 48, 248,
    48, 48, 48, 48, 48, 48, 48, 48
};
u_int
skip_char_right(struct wsscreen *scr, u_int offset)
{
 struct wsscreen_internal *dconf = scr->scr_dconf;
 struct wsdisplay_charcell cell;
 u_int current = offset;
 u_int limit = current +
     (((dconf)->scrdata->ncols) - (scr->mouse % ((dconf)->scrdata->ncols)) - 1);
 u_int class;
 u_int res = 0;
 ((*(scr)->sc->sc_accessops->getchar) ((scr)->sc->sc_accesscookie, (current) / (((scr)->scr_dconf)->scrdata->ncols), (current) % (((scr)->scr_dconf)->scrdata->ncols), &cell));
 class = charClass[cell.uc & 0xff];
 while (((*(scr)->sc->sc_accessops->getchar) ((scr)->sc->sc_accesscookie, (current) / (((scr)->scr_dconf)->scrdata->ncols), (current) % (((scr)->scr_dconf)->scrdata->ncols), &cell)) == 0 &&
     charClass[cell.uc & 0xff] == class && current <= limit) {
  current++;
  res++;
 }
 if (res != 0)
  res--;
 return (res);
}
u_int
skip_char_left(struct wsscreen *scr, u_int offset)
{
 struct wsscreen_internal *dconf = scr->scr_dconf;
 struct wsdisplay_charcell cell;
 u_int current = offset;
 u_int limit = current - (scr->mouse % ((dconf)->scrdata->ncols));
 u_int class;
 u_int res = 0;
 ((*(scr)->sc->sc_accessops->getchar) ((scr)->sc->sc_accesscookie, (current) / (((scr)->scr_dconf)->scrdata->ncols), (current) % (((scr)->scr_dconf)->scrdata->ncols), &cell));
 class = charClass[cell.uc & 0xff];
 while (((*(scr)->sc->sc_accessops->getchar) ((scr)->sc->sc_accesscookie, (current) / (((scr)->scr_dconf)->scrdata->ncols), (current) % (((scr)->scr_dconf)->scrdata->ncols), &cell)) == 0 &&
     charClass[cell.uc & 0xff] == class && current >= limit) {
  current--;
  res++;
 }
 if (res != 0)
  res--;
 return (res);
}
u_int
class_cmp(struct wsscreen *scr, u_int first, u_int second)
{
 struct wsdisplay_charcell cell;
 u_int first_class;
 u_int second_class;
 if (((*(scr)->sc->sc_accessops->getchar) ((scr)->sc->sc_accesscookie, (first) / (((scr)->scr_dconf)->scrdata->ncols), (first) % (((scr)->scr_dconf)->scrdata->ncols), &cell)) != 0)
  return (1);
 first_class = charClass[cell.uc & 0xff];
 if (((*(scr)->sc->sc_accessops->getchar) ((scr)->sc->sc_accesscookie, (second) / (((scr)->scr_dconf)->scrdata->ncols), (second) % (((scr)->scr_dconf)->scrdata->ncols), &cell)) != 0)
  return (1);
 second_class = charClass[cell.uc & 0xff];
 if (first_class != second_class)
  return (1);
 else
  return (0);
}
void
mouse_copy_start(struct wsscreen *scr)
{
 u_int right;
 ((scr->sc->sc_flags) |= (0x02));
 if (((scr->mouse_flags) & (0x02)))
  remove_selection(scr);
 if (!((scr->mouse_flags) & (0x01)))
  inverse_char(scr, scr->mouse);
 scr->cpy_start = scr->cpy_end = scr->mouse;
 scr->orig_start = scr->cpy_start;
 scr->orig_end = scr->cpy_end;
 scr->cursor = scr->cpy_end + 1;
 right = skip_spc_right(scr, 1);
 if (right)
  ((scr->mouse_flags) |= (0x10));
 ((scr->mouse_flags) |= (0x04 | 0x02 | 0x20));
 ((scr->mouse_flags) &= ~(0x40 | 0x80));
 ((scr->mouse_flags) &= ~(0x01));
}
void
mouse_copy_word(struct wsscreen *scr)
{
 struct wsdisplay_charcell cell;
 u_int right;
 u_int left;
 if (((scr->mouse_flags) & (0x02)))
  remove_selection(scr);
 if (((scr->mouse_flags) & (0x01)))
  inverse_char(scr, scr->mouse);
 scr->cpy_start = scr->cpy_end = scr->mouse;
 if (((*(scr)->sc->sc_accessops->getchar) ((scr)->sc->sc_accesscookie, (scr->mouse) / (((scr)->scr_dconf)->scrdata->ncols), (scr->mouse) % (((scr)->scr_dconf)->scrdata->ncols), &cell)) == 0 &&
     ((cell.uc) != ' ')) {
  right = skip_char_right(scr, scr->cpy_end);
  left = skip_char_left(scr, scr->cpy_start);
 } else {
  right = skip_spc_right(scr, 0);
  left = skip_spc_left(scr);
 }
 scr->cpy_start -= left;
 scr->cpy_end += right;
 scr->orig_start = scr->cpy_start;
 scr->orig_end = scr->cpy_end;
 scr->cursor = scr->cpy_end + 1;
 inverse_region(scr, scr->cpy_start, scr->cpy_end);
 ((scr->mouse_flags) |= (0x04 | 0x02 | 0x40));
 ((scr->mouse_flags) &= ~(0x20 | 0x80));
 ((scr->mouse_flags) &= ~(0x10 | 0x01));
}
void
mouse_copy_line(struct wsscreen *scr)
{
 struct wsscreen_internal *dconf = scr->scr_dconf;
 u_int row = scr->mouse / ((dconf)->scrdata->ncols);
 if (((scr->mouse_flags) & (0x02)))
  remove_selection(scr);
 if (((scr->mouse_flags) & (0x01)))
  inverse_char(scr, scr->mouse);
 scr->cpy_start = row * ((dconf)->scrdata->ncols);
 scr->cpy_end = scr->cpy_start + (((dconf)->scrdata->ncols) - 1);
 scr->orig_start = scr->cpy_start;
 scr->orig_end = scr->cpy_end;
 scr->cursor = scr->cpy_end + 1;
 inverse_region(scr, scr->cpy_start, scr->cpy_end);
 ((scr->mouse_flags) |= (0x04 | 0x02 | 0x80));
 ((scr->mouse_flags) &= ~(0x20 | 0x40));
 ((scr->mouse_flags) &= ~(0x10 | 0x01));
}
void
mouse_copy_end(struct wsscreen *scr)
{
 ((scr->mouse_flags) &= ~(0x04));
 if (((scr->mouse_flags) & (0x40)) ||
     ((scr->mouse_flags) & (0x80))) {
  if (scr->cursor != scr->cpy_end + 1)
   inverse_char(scr, scr->cursor);
  scr->cursor = scr->cpy_end + 1;
 }
}
void
mouse_copy_extend(struct wsscreen *scr)
{
 if (((scr->mouse_flags) & (0x20)))
  mouse_copy_extend_char(scr);
 if (((scr->mouse_flags) & (0x40)))
  mouse_copy_extend_word(scr);
 if (((scr->mouse_flags) & (0x80)))
  mouse_copy_extend_line(scr);
}
void
mouse_copy_extend_char(struct wsscreen *scr)
{
 u_int right;
 if (!((scr->mouse_flags) & (0x08))) {
  if (((scr->mouse_flags) & (0x10))) {
   right = skip_spc_right(scr, 1);
   if (scr->mouse > scr->orig_start) {
    inverse_char(scr, scr->cpy_start);
    scr->cpy_start += (right + 1);
    scr->cpy_end = scr->cpy_start;
    scr->orig_start = scr->cpy_start;
    inverse_char(scr, scr->cpy_start);
   } else {
    inverse_char(scr, scr->cpy_start);
    scr->orig_start += (right + 1);
    scr->cpy_start = scr->orig_start - 1;
    scr->cpy_end = scr->orig_start - 1;
    inverse_char(scr, scr->cpy_start);
   }
   ((scr->mouse_flags) &= ~(0x10));
  }
  if (scr->mouse < scr->orig_start &&
      scr->cpy_end >= scr->orig_start) {
   remove_selection(scr);
   scr->cpy_end = scr->orig_start - 1;
   scr->cpy_start = scr->orig_start;
  }
  if (scr->cpy_start < scr->orig_start &&
      scr->mouse >= scr->orig_start) {
   remove_selection(scr);
   scr->cpy_start = scr->orig_start;
   scr->cpy_end = scr->orig_start - 1;
  }
  ((scr->mouse_flags) |= (0x04 | 0x02));
 }
 if (scr->mouse >= scr->orig_start) {
  if (scr->mouse > scr->cpy_end) {
   inverse_region(scr, scr->cpy_end + 1, scr->mouse);
  } else {
   inverse_region(scr, scr->mouse + 1, scr->cpy_end);
  }
  scr->cpy_end = scr->mouse;
 } else {
  if (scr->mouse < scr->cpy_start) {
   inverse_region(scr, scr->mouse, scr->cpy_start - 1);
  } else {
   inverse_region(scr, scr->cpy_start, scr->mouse - 1);
  }
  scr->cpy_start = scr->mouse;
 }
}
void
mouse_copy_extend_word(struct wsscreen *scr)
{
 u_int old_cpy_end;
 u_int old_cpy_start;
 if (!((scr->mouse_flags) & (0x08))) {
  if (scr->cursor != scr->cpy_end + 1)
   inverse_char(scr, scr->cursor);
  if (scr->mouse < scr->orig_start &&
      scr->cpy_end >= scr->orig_start) {
   inverse_region(scr, scr->orig_end + 1, scr->cpy_end);
   scr->cpy_end = scr->orig_end;
  }
  if (scr->mouse > scr->orig_end &&
      scr->cpy_start <= scr->orig_start) {
   inverse_region(scr, scr->cpy_start,
       scr->orig_start - 1);
   scr->cpy_start = scr->orig_start;
  }
 }
 if (scr->mouse >= scr->orig_start) {
  if (scr->mouse > scr->cpy_end) {
   old_cpy_end = scr->cpy_end;
   scr->cpy_end = scr->mouse +
       skip_char_right(scr, scr->mouse);
   inverse_region(scr, old_cpy_end + 1, scr->cpy_end);
  } else {
   if (class_cmp(scr, scr->mouse, scr->mouse + 1)) {
    old_cpy_end = scr->cpy_end;
    scr->cpy_end = scr->mouse;
    inverse_region(scr, scr->cpy_end + 1,
        old_cpy_end);
   } else {
    old_cpy_end = scr->cpy_end;
    scr->cpy_end = scr->mouse +
        skip_char_right(scr, scr->mouse);
    if (scr->cpy_end != old_cpy_end) {
     inverse_region(scr, scr->cpy_end + 1,
         old_cpy_end);
    }
   }
  }
 } else {
  if (scr->mouse < scr->cpy_start) {
   old_cpy_start = scr->cpy_start;
   scr->cpy_start = scr->mouse -
       skip_char_left(scr, scr->mouse);
   inverse_region(scr, scr->cpy_start, old_cpy_start - 1);
  } else {
   if (class_cmp(scr, scr->mouse - 1, scr->mouse)) {
    old_cpy_start = scr->cpy_start;
    scr->cpy_start = scr->mouse;
    inverse_region(scr, old_cpy_start,
        scr->cpy_start - 1);
   } else {
    old_cpy_start = scr->cpy_start;
    scr->cpy_start = scr->mouse -
        skip_char_left(scr, scr->mouse);
    if (scr->cpy_start != old_cpy_start) {
     inverse_region(scr, old_cpy_start,
         scr->cpy_start - 1);
    }
   }
  }
 }
 if (!((scr->mouse_flags) & (0x08))) {
  scr->cursor = scr->mouse;
  inverse_char(scr, scr->cursor);
 }
}
void
mouse_copy_extend_line(struct wsscreen *scr)
{
 struct wsscreen_internal *dconf = scr->scr_dconf;
 u_int old_row;
 u_int new_row;
 u_int old_cpy_start;
 u_int old_cpy_end;
 if (!((scr->mouse_flags) & (0x08))) {
  if (scr->cursor != scr->cpy_end + 1)
   inverse_char(scr, scr->cursor);
  if (scr->mouse < scr->orig_start &&
      scr->cpy_end >= scr->orig_start) {
   inverse_region(scr, scr->orig_end + 1, scr->cpy_end);
   scr->cpy_end = scr->orig_end;
  }
  if (scr->mouse > scr->orig_end &&
      scr->cpy_start <= scr->orig_start) {
   inverse_region(scr, scr->cpy_start,
       scr->orig_start - 1);
   scr->cpy_start = scr->orig_start;
  }
 }
 if (scr->mouse >= scr->orig_start) {
  if (scr->cursor == scr->cpy_end + 1)
   scr->cursor = scr->cpy_end;
  old_row = scr->cursor / ((dconf)->scrdata->ncols);
  new_row = scr->mouse / ((dconf)->scrdata->ncols);
  old_cpy_end = scr->cpy_end;
  scr->cpy_end = new_row * ((dconf)->scrdata->ncols) + (((dconf)->scrdata->ncols) - 1);
  if (new_row > old_row)
   inverse_region(scr, old_cpy_end + 1, scr->cpy_end);
  else if (new_row < old_row)
   inverse_region(scr, scr->cpy_end + 1, old_cpy_end);
 } else {
  old_row = scr->cursor / ((dconf)->scrdata->ncols);
  new_row = scr->mouse / ((dconf)->scrdata->ncols);
  old_cpy_start = scr->cpy_start;
  scr->cpy_start = new_row * ((dconf)->scrdata->ncols);
  if (new_row < old_row)
   inverse_region(scr, scr->cpy_start, old_cpy_start - 1);
  else if (new_row > old_row)
   inverse_region(scr, old_cpy_start, scr->cpy_start - 1);
 }
 if (!((scr->mouse_flags) & (0x08))) {
  scr->cursor = scr->mouse;
  inverse_char(scr, scr->cursor);
 }
}
void
mouse_copy_extend_after(struct wsscreen *scr)
{
 u_int start_dist;
 u_int end_dist;
 if (((scr->mouse_flags) & (0x02))) {
  ((scr->mouse_flags) |= (0x08));
  mouse_hide(scr);
  if (scr->cpy_start > scr->mouse)
   start_dist = scr->cpy_start - scr->mouse;
  else
   start_dist = scr->mouse - scr->cpy_start;
  if (scr->mouse > scr->cpy_end)
   end_dist = scr->mouse - scr->cpy_end;
  else
   end_dist = scr->cpy_end - scr->mouse;
  if (start_dist < end_dist) {
   scr->orig_start = scr->mouse + 1;
   scr->cursor = scr->cpy_start;
  } else {
   scr->orig_start = scr->mouse;
   scr->cursor = scr->cpy_end;
  }
  if (((scr->mouse_flags) & (0x20)))
   mouse_copy_extend_char(scr);
  if (((scr->mouse_flags) & (0x40)))
   mouse_copy_extend_word(scr);
  if (((scr->mouse_flags) & (0x80)))
   mouse_copy_extend_line(scr);
  mouse_copy_selection(scr);
 }
}
void
mouse_hide(struct wsscreen *scr)
{
 if (((scr->mouse_flags) & (0x01))) {
  inverse_char(scr, scr->mouse);
  ((scr->mouse_flags) &= ~(0x01));
 }
}
void
remove_selection(struct wsscreen *scr)
{
 if (((scr->mouse_flags) & (0x08))) {
  ((scr->mouse_flags) &= ~(0x08));
 }
 inverse_region(scr, scr->cpy_start, scr->cpy_end);
 ((scr->mouse_flags) &= ~(0x04 | 0x02));
}
void
mouse_copy_selection(struct wsscreen *scr)
{
 struct wsscreen_internal *dconf = scr->scr_dconf;
 struct wsdisplay_charcell cell;
 u_int current = 0;
 u_int blank = current;
 u_int buf_end = (((dconf)->scrdata->ncols) + 1) * ((dconf)->scrdata->nrows);
 u_int sel_cur;
 u_int sel_end;
 sel_cur = scr->cpy_start;
 sel_end = scr->cpy_end;
 while (sel_cur <= sel_end && current < buf_end - 1) {
  if (((*(scr)->sc->sc_accessops->getchar) ((scr)->sc->sc_accesscookie, (sel_cur) / (((scr)->scr_dconf)->scrdata->ncols), (sel_cur) % (((scr)->scr_dconf)->scrdata->ncols), &cell)) != 0)
   break;
  scr->sc->sc_copybuffer[current] = cell.uc;
  if (!((cell.uc) == ' '))
   blank = current + 1;
  current++;
  if (sel_cur % ((dconf)->scrdata->ncols) == (((dconf)->scrdata->ncols) - 1)) {
   scr->sc->sc_copybuffer[blank] = '\r';
   current = ++blank;
  }
  sel_cur++;
 }
 scr->sc->sc_copybuffer[current] = '\0';
}
void
mouse_paste(struct wsscreen *scr)
{
 char *current = scr->sc->sc_copybuffer;
 struct tty *tp;
 u_int len;
 if (((scr->sc->sc_flags) & (0x02))) {
  if (!((scr)->scr_tty != ((void *)0)))
   return;
  tp = scr->scr_tty;
  for (len = strlen(scr->sc->sc_copybuffer); len != 0; len--)
   (*linesw[tp->t_line].l_rint)(*current++, tp);
 }
}
void
mouse_zaxis(struct wsscreen *scr, int z)
{
 if (z < 0)
  wsscrollback(scr->sc, 0);
 else
  wsscrollback(scr->sc, 1);
}
void
allocate_copybuffer(struct wsdisplay_softc *sc)
{
 int nscreens = sc->sc_scrdata->nscreens;
 int i, s;
 const struct wsscreen_descr **screens_list = sc->sc_scrdata->screens;
 const struct wsscreen_descr *current;
 u_int size = sc->sc_copybuffer_size;
 s = _splraise(6);
 for (i = 0; i < nscreens; i++) {
  current = *screens_list;
  if ((current->ncols + 1) * current->nrows > size)
   size = (current->ncols + 1) * current->nrows;
  screens_list++;
 }
 if (size != sc->sc_copybuffer_size && sc->sc_copybuffer_size != 0) {
  __builtin_bzero((sc->sc_copybuffer), (sc->sc_copybuffer_size));
  free(sc->sc_copybuffer, 2, sc->sc_copybuffer_size);
 }
 if ((sc->sc_copybuffer = (char *)malloc(size, 2, 0x0002)) ==
     ((void *)0)) {
  printf("%s: couldn't allocate copy buffer\n",
      sc->sc_dv.dv_xname);
  size = 0;
 }
 sc->sc_copybuffer_size = size;
 _splx(s);
}
void
mouse_remove(struct wsscreen *scr)
{
 if (((scr->mouse_flags) & (0x02)))
  remove_selection(scr);
 mouse_hide(scr);
}
