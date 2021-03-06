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
struct mbuf;
struct sockaddr;
struct socket;
struct domain;
struct proc;
struct protosw {
 short pr_type;
 struct domain *pr_domain;
 short pr_protocol;
 short pr_flags;
 int (*pr_input)(struct mbuf **, int *, int, int);
 int (*pr_output)(struct mbuf *, struct socket *, struct sockaddr *,
      struct mbuf *);
 void (*pr_ctlinput)(int, struct sockaddr *, u_int, void *);
 int (*pr_ctloutput)(int, struct socket *, int, int, struct mbuf *);
 int (*pr_usrreq)(struct socket *, int, struct mbuf *,
      struct mbuf *, struct mbuf *, struct proc *);
 int (*pr_attach)(struct socket *, int);
 int (*pr_detach)(struct socket *);
 void (*pr_init)(void);
 void (*pr_fasttimo)(void);
 void (*pr_slowtimo)(void);
 int (*pr_sysctl)(int *, u_int, void *, size_t *, void *, size_t);
};
struct sockaddr;
const struct protosw *pffindproto(int, int, int);
const struct protosw *pffindtype(int, int);
void pfctlinput(int, struct sockaddr *);
extern u_char ip_protox[];
extern const struct protosw inetsw[];
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
struct ifnet;
typedef int (*ifm_change_cb_t)(struct ifnet *);
typedef void (*ifm_stat_cb_t)(struct ifnet *, struct ifmediareq *);
struct ifmedia_entry {
 struct { struct ifmedia_entry *tqe_next; struct ifmedia_entry **tqe_prev; } ifm_list;
 uint64_t ifm_media;
 u_int ifm_data;
 void *ifm_aux;
};
struct ifmedia {
 uint64_t ifm_mask;
 uint64_t ifm_media;
 struct ifmedia_entry *ifm_cur;
 struct { struct ifmedia_entry *tqh_first; struct ifmedia_entry **tqh_last; } ifm_list;
 ifm_change_cb_t ifm_change;
 ifm_stat_cb_t ifm_status;
};
void ifmedia_init(struct ifmedia *, uint64_t, ifm_change_cb_t,
      ifm_stat_cb_t);
void ifmedia_add(struct ifmedia *, uint64_t, int, void *);
void ifmedia_list_add(struct ifmedia *, struct ifmedia_entry *,
     int);
void ifmedia_set(struct ifmedia *, uint64_t);
int ifmedia_ioctl(struct ifnet *, struct ifreq *, struct ifmedia *,
     u_long);
struct ifmedia_entry *ifmedia_match(struct ifmedia *, uint64_t, uint64_t);
void ifmedia_delete_instance(struct ifmedia *, uint64_t);
uint64_t ifmedia_baudrate(uint64_t);
struct ifmedia_description {
 uint64_t ifmt_word;
 const char *ifmt_string;
};
struct ifmedia_baudrate {
 uint64_t ifmb_word;
 uint64_t ifmb_baudrate;
};
struct ifmedia_status_description {
 uint64_t ifms_type;
 uint64_t ifms_valid;
 uint64_t ifms_bit;
 const char *ifms_string[2];
};
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
struct mii_softc;
typedef int (*mii_readreg_t)(struct device *, int, int);
typedef void (*mii_writereg_t)(struct device *, int, int, int);
typedef void (*mii_statchg_t)(struct device *);
struct mii_data {
 struct ifmedia mii_media;
 struct ifnet *mii_ifp;
 int mii_flags;
 struct mii_listhead { struct mii_softc *lh_first; } mii_phys;
 uint64_t mii_instance;
 uint64_t mii_media_status;
 uint64_t mii_media_active;
 mii_readreg_t mii_readreg;
 mii_writereg_t mii_writereg;
 mii_statchg_t mii_statchg;
};
typedef struct mii_data mii_data_t;
struct mii_phy_funcs {
 int (*pf_service)(struct mii_softc *, struct mii_data *, int);
 void (*pf_status)(struct mii_softc *);
 void (*pf_reset)(struct mii_softc *);
};
struct mii_softc {
 struct device mii_dev;
 struct { struct mii_softc *le_next; struct mii_softc **le_prev; } mii_list;
 int mii_phy;
 int mii_oui;
 int mii_model;
 int mii_rev;
 int mii_offset;
 uint64_t mii_inst;
 const struct mii_phy_funcs *mii_funcs;
 struct mii_data *mii_pdata;
 int mii_flags;
 int mii_capabilities;
 int mii_extcapabilities;
 int mii_ticks;
 int mii_anegticks;
 struct timeout mii_phy_timo;
 uint64_t mii_media_active;
 uint64_t mii_media_status;
};
typedef struct mii_softc mii_softc_t;
struct mii_attach_args {
 struct mii_data *mii_data;
 int mii_phyno;
 int mii_id1;
 int mii_id2;
 int mii_capmask;
 int mii_flags;
};
typedef struct mii_attach_args mii_attach_args_t;
struct mii_phydesc {
 u_int32_t mpd_oui;
 u_int32_t mpd_model;
 const char *mpd_name;
};
struct mii_media {
 int mm_bmcr;
 int mm_anar;
 int mm_gtcr;
};
void mii_attach(struct device *, struct mii_data *, int, int,
     int, int);
void mii_detach(struct mii_data *, int, int);
int mii_mediachg(struct mii_data *);
void mii_tick(struct mii_data *);
void mii_pollstat(struct mii_data *);
void mii_down(struct mii_data *);
int mii_anar(uint64_t);
int mii_phy_detach(struct device *, int);
const struct mii_phydesc *mii_phy_match(const struct mii_attach_args *,
     const struct mii_phydesc *);
void mii_phy_add_media(struct mii_softc *);
void mii_phy_delete_media(struct mii_softc *);
void mii_phy_setmedia(struct mii_softc *);
int mii_phy_auto(struct mii_softc *, int);
void mii_phy_auto_timeout(void *);
void mii_phy_reset(struct mii_softc *);
void mii_phy_down(struct mii_softc *);
int mii_phy_tick(struct mii_softc *);
void mii_phy_status(struct mii_softc *);
void mii_phy_update(struct mii_softc *, int);
int mii_phy_statusmsg(struct mii_softc *);
uint64_t mii_phy_flowstatus(struct mii_softc *);
void ukphy_status(struct mii_softc *);
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
struct xl_frag {
 u_int32_t xl_addr;
 u_int32_t xl_len;
};
struct xl_list {
 u_int32_t xl_next;
 u_int32_t xl_status;
 struct xl_frag xl_frag[63];
};
struct xl_list_onefrag {
 u_int32_t xl_next;
 u_int32_t xl_status;
 struct xl_frag xl_frag;
};
struct xl_list_data {
 struct xl_list_onefrag xl_rx_list[32];
 struct xl_list xl_tx_list[32];
 unsigned char xl_pad[60];
};
struct xl_chain {
 struct xl_list *xl_ptr;
 struct mbuf *xl_mbuf;
 struct xl_chain *xl_next;
 struct xl_chain *xl_prev;
 u_int32_t xl_phys;
 bus_dmamap_t map;
};
struct xl_chain_onefrag {
 struct xl_list_onefrag *xl_ptr;
 struct mbuf *xl_mbuf;
 struct xl_chain_onefrag *xl_next;
 bus_dmamap_t map;
};
struct xl_chain_data {
 struct xl_chain_onefrag xl_rx_chain[32];
 struct xl_chain xl_tx_chain[32];
 struct xl_chain_onefrag *xl_rx_cons;
 struct xl_chain_onefrag *xl_rx_prod;
 struct if_rxring xl_rx_ring;
 struct xl_chain *xl_tx_head;
 struct xl_chain *xl_tx_tail;
 struct xl_chain *xl_tx_free;
 int xl_tx_prod;
 int xl_tx_cons;
 int xl_tx_cnt;
};
struct xl_type {
 u_int16_t xl_vid;
 u_int16_t xl_did;
 char *xl_name;
};
struct xl_mii_frame {
 u_int8_t mii_stdelim;
 u_int8_t mii_opcode;
 u_int8_t mii_phyaddr;
 u_int8_t mii_regaddr;
 u_int8_t mii_turnaround;
 u_int16_t mii_data;
};
struct xl_softc {
 struct device sc_dev;
 void * xl_intrhand;
 struct timeout xl_stsup_tmo;
 struct arpcom sc_arpcom;
 struct ifmedia ifmedia;
 mii_data_t sc_mii;
 bus_space_handle_t xl_bhandle;
 bus_space_tag_t xl_btag;
 bus_space_handle_t xl_funch;
 bus_space_tag_t xl_funct;
 struct xl_type *xl_info;
 u_int8_t xl_hasmii;
 u_int8_t xl_type;
 u_int32_t xl_xcvr;
 u_int16_t xl_media;
 u_int16_t xl_caps;
 u_int8_t xl_stats_no_timeout;
 u_int16_t xl_tx_thresh;
 struct xl_list_data *xl_ldata;
 struct xl_chain_data xl_cdata;
 int xl_flags;
 void (*intr_ack)(struct xl_softc *);
 bus_dma_tag_t sc_dmat;
 bus_dmamap_t sc_listmap;
 bus_dma_segment_t sc_listseg[1];
 int sc_listnseg;
 caddr_t sc_listkva;
 bus_dmamap_t sc_rx_sparemap;
 bus_dmamap_t sc_tx_sparemap;
 void (*wol_power)(void *);
 void *wol_power_arg;
};
struct xl_stats {
 u_int8_t xl_carrier_lost;
 u_int8_t xl_sqe_errs;
 u_int8_t xl_tx_multi_collision;
 u_int8_t xl_tx_single_collision;
 u_int8_t xl_tx_late_collision;
 u_int8_t xl_rx_overrun;
 u_int8_t xl_tx_frames_ok;
 u_int8_t xl_rx_frames_ok;
 u_int8_t xl_tx_deferred;
 u_int8_t xl_upper_frames_ok;
 u_int16_t xl_rx_bytes_ok;
 u_int16_t xl_tx_bytes_ok;
 u_int16_t status;
};
extern int xl_intr(void *);
extern void xl_attach(struct xl_softc *);
extern int xl_detach(struct xl_softc *);
void xl_init(void *);
void xl_stop(struct xl_softc *);
void xl_reset(struct xl_softc *);
int xl_activate(struct device *, int);
int xl_newbuf(struct xl_softc *, struct xl_chain_onefrag *);
void xl_stats_update(void *);
int xl_encap(struct xl_softc *, struct xl_chain *,
    struct mbuf * );
void xl_rxeof(struct xl_softc *);
void xl_txeof(struct xl_softc *);
void xl_txeof_90xB(struct xl_softc *);
void xl_txeoc(struct xl_softc *);
int xl_intr(void *);
void xl_start(struct ifnet *);
void xl_start_90xB(struct ifnet *);
int xl_ioctl(struct ifnet *, u_long, caddr_t);
void xl_freetxrx(struct xl_softc *);
void xl_watchdog(struct ifnet *);
int xl_ifmedia_upd(struct ifnet *);
void xl_ifmedia_sts(struct ifnet *, struct ifmediareq *);
int xl_eeprom_wait(struct xl_softc *);
int xl_read_eeprom(struct xl_softc *, caddr_t, int, int, int);
void xl_mii_sync(struct xl_softc *);
void xl_mii_send(struct xl_softc *, u_int32_t, int);
int xl_mii_readreg(struct xl_softc *, struct xl_mii_frame *);
int xl_mii_writereg(struct xl_softc *, struct xl_mii_frame *);
void xl_setcfg(struct xl_softc *);
void xl_setmode(struct xl_softc *, uint64_t);
void xl_iff(struct xl_softc *);
void xl_iff_90x(struct xl_softc *);
void xl_iff_905b(struct xl_softc *);
int xl_list_rx_init(struct xl_softc *);
void xl_fill_rx_ring(struct xl_softc *);
int xl_list_tx_init(struct xl_softc *);
int xl_list_tx_init_90xB(struct xl_softc *);
void xl_wait(struct xl_softc *);
void xl_mediacheck(struct xl_softc *);
void xl_choose_xcvr(struct xl_softc *, int);
int xl_miibus_readreg(struct device *, int, int);
void xl_miibus_writereg(struct device *, int, int, int);
void xl_miibus_statchg(struct device *);
int xl_wol(struct ifnet *, int);
void xl_wol_power(struct xl_softc *);
int
xl_activate(struct device *self, int act)
{
 struct xl_softc *sc = (struct xl_softc *)self;
 struct ifnet *ifp = &sc->sc_arpcom.ac_if;
 int rv = 0;
 switch (act) {
 case 3:
  if (ifp->if_flags & 0x40)
   xl_stop(sc);
  rv = config_activate_children(self, act);
  break;
 case 4:
  if (ifp->if_flags & 0x1)
   xl_init(sc);
  break;
 case 6:
  rv = config_activate_children(self, act);
  xl_wol_power(sc);
  break;
 default:
  rv = config_activate_children(self, act);
  break;
 }
 return (rv);
}
void
xl_wait(struct xl_softc *sc)
{
 int i;
 for (i = 0; i < 2000; i++) {
  if (!(bus_space_read_2(sc->xl_btag, sc->xl_bhandle, 0x0E) & 0x1000))
   break;
 }
 if (i == 2000)
  printf("%s: command never completed!\n", sc->sc_dev.dv_xname);
}
void
xl_mii_sync(struct xl_softc *sc)
{
 int i;
 bus_space_write_2(sc->xl_btag, sc->xl_bhandle, 0x0E, 0x0800 | 4);
 bus_space_write_2(sc->xl_btag, sc->xl_bhandle, 0x08, bus_space_read_2(sc->xl_btag, sc->xl_bhandle, 0x08) | (0x04|0x02));
 for (i = 0; i < 32; i++) {
  bus_space_write_2(sc->xl_btag, sc->xl_bhandle, 0x08, bus_space_read_2(sc->xl_btag, sc->xl_bhandle, 0x08) | (0x01));
  bus_space_write_2(sc->xl_btag, sc->xl_bhandle, 0x08, bus_space_read_2(sc->xl_btag, sc->xl_bhandle, 0x08) | (0x02));
  bus_space_write_2(sc->xl_btag, sc->xl_bhandle, 0x08, bus_space_read_2(sc->xl_btag, sc->xl_bhandle, 0x08) | (0x02));
  bus_space_write_2(sc->xl_btag, sc->xl_bhandle, 0x08, bus_space_read_2(sc->xl_btag, sc->xl_bhandle, 0x08) & ~(0x01));
  bus_space_write_2(sc->xl_btag, sc->xl_bhandle, 0x08, bus_space_read_2(sc->xl_btag, sc->xl_bhandle, 0x08) | (0x02));
  bus_space_write_2(sc->xl_btag, sc->xl_bhandle, 0x08, bus_space_read_2(sc->xl_btag, sc->xl_bhandle, 0x08) | (0x02));
 }
}
void
xl_mii_send(struct xl_softc *sc, u_int32_t bits, int cnt)
{
 int i;
 bus_space_write_2(sc->xl_btag, sc->xl_bhandle, 0x0E, 0x0800 | 4);
 bus_space_write_2(sc->xl_btag, sc->xl_bhandle, 0x08, bus_space_read_2(sc->xl_btag, sc->xl_bhandle, 0x08) & ~(0x01));
 for (i = (0x1 << (cnt - 1)); i; i >>= 1) {
                if (bits & i) {
   bus_space_write_2(sc->xl_btag, sc->xl_bhandle, 0x08, bus_space_read_2(sc->xl_btag, sc->xl_bhandle, 0x08) | (0x02));
                } else {
   bus_space_write_2(sc->xl_btag, sc->xl_bhandle, 0x08, bus_space_read_2(sc->xl_btag, sc->xl_bhandle, 0x08) & ~(0x02));
                }
  bus_space_write_2(sc->xl_btag, sc->xl_bhandle, 0x08, bus_space_read_2(sc->xl_btag, sc->xl_bhandle, 0x08) & ~(0x01));
  bus_space_write_2(sc->xl_btag, sc->xl_bhandle, 0x08, bus_space_read_2(sc->xl_btag, sc->xl_bhandle, 0x08) | (0x01));
 }
}
int
xl_mii_readreg(struct xl_softc *sc, struct xl_mii_frame *frame)
{
 int i, ack, s;
 s = _splraise(6);
 frame->mii_stdelim = 0x01;
 frame->mii_opcode = 0x02;
 frame->mii_turnaround = 0;
 frame->mii_data = 0;
 bus_space_write_2(sc->xl_btag, sc->xl_bhandle, 0x0E, 0x0800 | 4);
 bus_space_write_2(sc->xl_btag, sc->xl_bhandle, 0x08, 0);
 bus_space_write_2(sc->xl_btag, sc->xl_bhandle, 0x08, bus_space_read_2(sc->xl_btag, sc->xl_bhandle, 0x08) | (0x04));
 xl_mii_sync(sc);
 xl_mii_send(sc, frame->mii_stdelim, 2);
 xl_mii_send(sc, frame->mii_opcode, 2);
 xl_mii_send(sc, frame->mii_phyaddr, 5);
 xl_mii_send(sc, frame->mii_regaddr, 5);
 bus_space_write_2(sc->xl_btag, sc->xl_bhandle, 0x08, bus_space_read_2(sc->xl_btag, sc->xl_bhandle, 0x08) & ~((0x01|0x02)));
 bus_space_write_2(sc->xl_btag, sc->xl_bhandle, 0x08, bus_space_read_2(sc->xl_btag, sc->xl_bhandle, 0x08) | (0x01));
 bus_space_write_2(sc->xl_btag, sc->xl_bhandle, 0x08, bus_space_read_2(sc->xl_btag, sc->xl_bhandle, 0x08) & ~(0x04));
 bus_space_write_2(sc->xl_btag, sc->xl_bhandle, 0x08, bus_space_read_2(sc->xl_btag, sc->xl_bhandle, 0x08) & ~(0x01));
 ack = bus_space_read_2(sc->xl_btag, sc->xl_bhandle, 0x08) & 0x02;
 bus_space_write_2(sc->xl_btag, sc->xl_bhandle, 0x08, bus_space_read_2(sc->xl_btag, sc->xl_bhandle, 0x08) | (0x01));
 if (ack) {
  for(i = 0; i < 16; i++) {
   bus_space_write_2(sc->xl_btag, sc->xl_bhandle, 0x08, bus_space_read_2(sc->xl_btag, sc->xl_bhandle, 0x08) & ~(0x01));
   bus_space_write_2(sc->xl_btag, sc->xl_bhandle, 0x08, bus_space_read_2(sc->xl_btag, sc->xl_bhandle, 0x08) | (0x01));
  }
  goto fail;
 }
 for (i = 0x8000; i; i >>= 1) {
  bus_space_write_2(sc->xl_btag, sc->xl_bhandle, 0x08, bus_space_read_2(sc->xl_btag, sc->xl_bhandle, 0x08) & ~(0x01));
  if (!ack) {
   if (bus_space_read_2(sc->xl_btag, sc->xl_bhandle, 0x08) & 0x02)
    frame->mii_data |= i;
  }
  bus_space_write_2(sc->xl_btag, sc->xl_bhandle, 0x08, bus_space_read_2(sc->xl_btag, sc->xl_bhandle, 0x08) | (0x01));
 }
fail:
 bus_space_write_2(sc->xl_btag, sc->xl_bhandle, 0x08, bus_space_read_2(sc->xl_btag, sc->xl_bhandle, 0x08) & ~(0x01));
 bus_space_write_2(sc->xl_btag, sc->xl_bhandle, 0x08, bus_space_read_2(sc->xl_btag, sc->xl_bhandle, 0x08) | (0x01));
 _splx(s);
 if (ack)
  return (1);
 return (0);
}
int
xl_mii_writereg(struct xl_softc *sc, struct xl_mii_frame *frame)
{
 int s;
 s = _splraise(6);
 frame->mii_stdelim = 0x01;
 frame->mii_opcode = 0x01;
 frame->mii_turnaround = 0x02;
 bus_space_write_2(sc->xl_btag, sc->xl_bhandle, 0x0E, 0x0800 | 4);
 bus_space_write_2(sc->xl_btag, sc->xl_bhandle, 0x08, bus_space_read_2(sc->xl_btag, sc->xl_bhandle, 0x08) | (0x04));
 xl_mii_sync(sc);
 xl_mii_send(sc, frame->mii_stdelim, 2);
 xl_mii_send(sc, frame->mii_opcode, 2);
 xl_mii_send(sc, frame->mii_phyaddr, 5);
 xl_mii_send(sc, frame->mii_regaddr, 5);
 xl_mii_send(sc, frame->mii_turnaround, 2);
 xl_mii_send(sc, frame->mii_data, 16);
 bus_space_write_2(sc->xl_btag, sc->xl_bhandle, 0x08, bus_space_read_2(sc->xl_btag, sc->xl_bhandle, 0x08) | (0x01));
 bus_space_write_2(sc->xl_btag, sc->xl_bhandle, 0x08, bus_space_read_2(sc->xl_btag, sc->xl_bhandle, 0x08) & ~(0x01));
 bus_space_write_2(sc->xl_btag, sc->xl_bhandle, 0x08, bus_space_read_2(sc->xl_btag, sc->xl_bhandle, 0x08) & ~(0x04));
 _splx(s);
 return (0);
}
int
xl_miibus_readreg(struct device *self, int phy, int reg64)
{
 struct xl_softc *sc = (struct xl_softc *)self;
 struct xl_mii_frame frame;
 if (!(sc->xl_flags & 0x0002) && phy != 24)
  return (0);
 __builtin_bzero((&frame), (sizeof(frame)));
 frame.mii_phyaddr = phy;
 frame.mii_regaddr = reg64;
 xl_mii_readreg(sc, &frame);
 return (frame.mii_data);
}
void
xl_miibus_writereg(struct device *self, int phy, int reg64, int data)
{
 struct xl_softc *sc = (struct xl_softc *)self;
 struct xl_mii_frame frame;
 if (!(sc->xl_flags & 0x0002) && phy != 24)
  return;
 __builtin_bzero((&frame), (sizeof(frame)));
 frame.mii_phyaddr = phy;
 frame.mii_regaddr = reg64;
 frame.mii_data = data;
 xl_mii_writereg(sc, &frame);
}
void
xl_miibus_statchg(struct device *self)
{
 struct xl_softc *sc = (struct xl_softc *)self;
 xl_setcfg(sc);
 bus_space_write_2(sc->xl_btag, sc->xl_bhandle, 0x0E, 0x0800 | 3);
 if ((sc->sc_mii.mii_media_active & 0x00ffff0000000000ULL) == 0x0000010000000000ULL)
  bus_space_write_1(sc->xl_btag, sc->xl_bhandle, 0x06, 0x0020);
 else
  bus_space_write_1(sc->xl_btag, sc->xl_bhandle, 0x06, (bus_space_read_1(sc->xl_btag, sc->xl_bhandle, 0x06) & ~0x0020));
}
int
xl_eeprom_wait(struct xl_softc *sc)
{
 int i;
 for (i = 0; i < 100; i++) {
  if (bus_space_read_2(sc->xl_btag, sc->xl_bhandle, 0x0A) & 0x8000)
   delay(162);
  else
   break;
 }
 if (i == 100) {
  printf("%s: eeprom failed to come ready\n", sc->sc_dev.dv_xname);
  return (1);
 }
 return (0);
}
int
xl_read_eeprom(struct xl_softc *sc, caddr_t dest, int off, int cnt, int swap)
{
 int err = 0, i;
 u_int16_t word = 0, *ptr;
 bus_space_write_2(sc->xl_btag, sc->xl_bhandle, 0x0E, 0x0800 | 0);
 if (xl_eeprom_wait(sc))
  return (1);
 if (sc->xl_flags & 0x0004)
  off += 0x30;
 for (i = 0; i < cnt; i++) {
  if (sc->xl_flags & 0x0010)
   bus_space_write_2(sc->xl_btag, sc->xl_bhandle, 0x0A, 0x0200 | ((off + i) & 0x003F));
  else
   bus_space_write_2(sc->xl_btag, sc->xl_bhandle, 0x0A, 0x0080 | ((((off + i) << 2) & 0x7F00) | ((off + i) & 0x003F)));
  err = xl_eeprom_wait(sc);
  if (err)
   break;
  word = bus_space_read_2(sc->xl_btag, sc->xl_bhandle, 0x0C);
  ptr = (u_int16_t *)(dest + (i * 2));
  if (swap)
   *ptr = ((__uint16_t)(word));
  else
   *ptr = word;
 }
 return (err ? 1 : 0);
}
void
xl_iff(struct xl_softc *sc)
{
 if (sc->xl_type == 1)
  xl_iff_905b(sc);
 else
  xl_iff_90x(sc);
}
void
xl_iff_90x(struct xl_softc *sc)
{
 struct ifnet *ifp = &sc->sc_arpcom.ac_if;
 struct arpcom *ac = &sc->sc_arpcom;
 u_int8_t rxfilt;
 bus_space_write_2(sc->xl_btag, sc->xl_bhandle, 0x0E, 0x0800 | 5);
 rxfilt = bus_space_read_1(sc->xl_btag, sc->xl_bhandle, 0x08);
 rxfilt &= ~(0x08 | 0x02 |
     0x04 | 0x01);
 ifp->if_flags &= ~0x200;
 rxfilt |= 0x04 | 0x01;
 if (ifp->if_flags & 0x100 || ac->ac_multicnt > 0) {
  ifp->if_flags |= 0x200;
  if (ifp->if_flags & 0x100)
   rxfilt |= 0x08;
  else
   rxfilt |= 0x02;
 }
 bus_space_write_2(sc->xl_btag, sc->xl_bhandle, 0x0E, 0x8000 | rxfilt);
 bus_space_write_2(sc->xl_btag, sc->xl_bhandle, 0x0E, 0x0800 | 7);
}
void
xl_iff_905b(struct xl_softc *sc)
{
 struct ifnet *ifp = &sc->sc_arpcom.ac_if;
 struct arpcom *ac = &sc->sc_arpcom;
 int h = 0, i;
 struct ether_multi *enm;
 struct ether_multistep step;
 u_int8_t rxfilt;
 bus_space_write_2(sc->xl_btag, sc->xl_bhandle, 0x0E, 0x0800 | 5);
 rxfilt = bus_space_read_1(sc->xl_btag, sc->xl_bhandle, 0x08);
 rxfilt &= ~(0x08 | 0x02 |
     0x04 | 0x01 |
     0x10);
 ifp->if_flags &= ~0x200;
 rxfilt |= 0x04 | 0x01;
 if (ifp->if_flags & 0x100 || ac->ac_multirangecnt > 0) {
  ifp->if_flags |= 0x200;
  if (ifp->if_flags & 0x100)
   rxfilt |= 0x08;
  else
   rxfilt |= 0x02;
 } else {
  rxfilt |= 0x10;
  for (i = 0; i < 256; i++)
   bus_space_write_2(sc->xl_btag, sc->xl_bhandle, 0x0E, 0xC800|i);
  do { (step).e_enm = ((&(ac)->ac_multiaddrs)->lh_first); do { if ((((enm)) = ((step)).e_enm) != ((void *)0)) ((step)).e_enm = ((((enm)))->enm_list.le_next); } while ( 0); } while ( 0);
  while (enm != ((void *)0)) {
   h = ether_crc32_be(enm->enm_addrlo, 6) &
       0x000000FF;
   bus_space_write_2(sc->xl_btag, sc->xl_bhandle, 0x0E, 0xC800 | 0x0400 | h);
   do { if (((enm) = (step).e_enm) != ((void *)0)) (step).e_enm = (((enm))->enm_list.le_next); } while ( 0);
  }
 }
 bus_space_write_2(sc->xl_btag, sc->xl_bhandle, 0x0E, 0x8000 | rxfilt);
 bus_space_write_2(sc->xl_btag, sc->xl_bhandle, 0x0E, 0x0800 | 7);
}
void
xl_setcfg(struct xl_softc *sc)
{
 u_int32_t icfg;
 bus_space_write_2(sc->xl_btag, sc->xl_bhandle, 0x0E, 0x0800 | 3);
 icfg = bus_space_read_4(sc->xl_btag, sc->xl_bhandle, 0x00);
 icfg &= ~0x00F00000;
 if (sc->xl_media & 0x0040 ||
  sc->xl_media & 0x0001)
  icfg |= (0x06 << 20);
 if (sc->xl_media & 0x0002)
  icfg |= (0x08 << 20);
 bus_space_write_4(sc->xl_btag, sc->xl_bhandle, 0x00, icfg);
 bus_space_write_2(sc->xl_btag, sc->xl_bhandle, 0x0E, 0xB800);
}
void
xl_setmode(struct xl_softc *sc, uint64_t media)
{
 struct ifnet *ifp = &sc->sc_arpcom.ac_if;
 u_int32_t icfg;
 u_int16_t mediastat;
 bus_space_write_2(sc->xl_btag, sc->xl_bhandle, 0x0E, 0x0800 | 4);
 mediastat = bus_space_read_2(sc->xl_btag, sc->xl_bhandle, 0x0A);
 bus_space_write_2(sc->xl_btag, sc->xl_bhandle, 0x0E, 0x0800 | 3);
 icfg = bus_space_read_4(sc->xl_btag, sc->xl_bhandle, 0x00);
 if (sc->xl_media & 0x0008) {
  if (((media) & 0x00000000000000ffULL) == 3) {
   ifp->if_data.ifi_baudrate = ((((10) * 1000ULL) * 1000ULL));
   sc->xl_xcvr = 0x00;
   icfg &= ~0x00F00000;
   icfg |= (0x00 << 20);
   mediastat |= 0x0080|
     0x0040;
   mediastat &= ~0x0008;
  }
 }
 if (sc->xl_media & 0x0004) {
  if (((media) & 0x00000000000000ffULL) == 7) {
   ifp->if_data.ifi_baudrate = ((((100) * 1000ULL) * 1000ULL));
   sc->xl_xcvr = 0x05;
   icfg &= ~0x00F00000;
   icfg |= (0x05 << 20);
   mediastat |= 0x0080;
   mediastat &= ~0x0008;
  }
 }
 if (sc->xl_media & (0x0020|0x0100)) {
  if (((media) & 0x00000000000000ffULL) == 5) {
   ifp->if_data.ifi_baudrate = ((((10) * 1000ULL) * 1000ULL));
   sc->xl_xcvr = 0x01;
   icfg &= ~0x00F00000;
   icfg |= (0x01 << 20);
   mediastat &= ~(0x0080|
     0x0040);
   mediastat |= ~0x0008;
  }
  if (((media) & 0x00000000000000ffULL) == 13) {
   ifp->if_data.ifi_baudrate = ((((10) * 1000ULL) * 1000ULL));
   sc->xl_xcvr = 0x01;
   icfg &= ~0x00F00000;
   icfg |= (0x01 << 20);
   mediastat &= ~(0x0080|
     0x0040);
   mediastat |= ~0x0008;
  }
 }
 if (sc->xl_media & 0x0010) {
  if (((media) & 0x00000000000000ffULL) == 4) {
   ifp->if_data.ifi_baudrate = ((((10) * 1000ULL) * 1000ULL));
   sc->xl_xcvr = 0x03;
   icfg &= ~0x00F00000;
   icfg |= (0x03 << 20);
   mediastat &= ~(0x0080|
     0x0040|
     0x0008);
  }
 }
 if ((media & 0x00ffff0000000000ULL) == 0x0000010000000000ULL ||
   ((media) & 0x00000000000000ffULL) == 7) {
  bus_space_write_2(sc->xl_btag, sc->xl_bhandle, 0x0E, 0x0800 | 3);
  bus_space_write_1(sc->xl_btag, sc->xl_bhandle, 0x06, 0x0020);
 } else {
  bus_space_write_2(sc->xl_btag, sc->xl_bhandle, 0x0E, 0x0800 | 3);
  bus_space_write_1(sc->xl_btag, sc->xl_bhandle, 0x06, (bus_space_read_1(sc->xl_btag, sc->xl_bhandle, 0x06) & ~0x0020));
 }
 if (((media) & 0x00000000000000ffULL) == 4)
  bus_space_write_2(sc->xl_btag, sc->xl_bhandle, 0x0E, 0x1000);
 else
  bus_space_write_2(sc->xl_btag, sc->xl_bhandle, 0x0E, 0xB800);
 bus_space_write_4(sc->xl_btag, sc->xl_bhandle, 0x00, icfg);
 bus_space_write_2(sc->xl_btag, sc->xl_bhandle, 0x0E, 0x0800 | 4);
 bus_space_write_2(sc->xl_btag, sc->xl_bhandle, 0x0A, mediastat);
 delay(800);
 bus_space_write_2(sc->xl_btag, sc->xl_bhandle, 0x0E, 0x0800 | 7);
}
void
xl_reset(struct xl_softc *sc)
{
 int i;
 bus_space_write_2(sc->xl_btag, sc->xl_bhandle, 0x0E, 0x0800 | 0);
 bus_space_write_2(sc->xl_btag, sc->xl_bhandle, 0x0E, 0x0000 | ((sc->xl_flags & 0x0008) ? 0x0010:0));
 delay(100000);
 for (i = 0; i < 2000; i++) {
  delay(10);
  if (!(bus_space_read_2(sc->xl_btag, sc->xl_bhandle, 0x0E) & 0x1000))
   break;
 }
 if (i == 2000)
  printf("%s: reset didn't complete\n", sc->sc_dev.dv_xname);
 bus_space_write_2(sc->xl_btag, sc->xl_bhandle, 0x0E, 0x2800);
 delay(100000);
 xl_wait(sc);
 bus_space_write_2(sc->xl_btag, sc->xl_bhandle, 0x0E, 0x5800);
 xl_wait(sc);
 if (sc->xl_flags & 0x0020 ||
     sc->xl_flags & 0x0040) {
  bus_space_write_2(sc->xl_btag, sc->xl_bhandle, 0x0E, 0x0800 | 2);
  bus_space_write_2(sc->xl_btag, sc->xl_bhandle, 0x0C, bus_space_read_2(sc->xl_btag, sc->xl_bhandle, 0x0C) | ((sc->xl_flags & 0x0020)?0x0010:0) | ((sc->xl_flags & 0x0040)?0x4000:0));
 }
 delay(100000);
}
void
xl_mediacheck(struct xl_softc *sc)
{
 if (sc->xl_media & (0x01FF & ~0x0100)) {
  if (sc->xl_xcvr <= 0x08)
   return;
  else {
   printf("%s: bogus xcvr value "
   "in EEPROM (%x)\n", sc->sc_dev.dv_xname, sc->xl_xcvr);
   printf("%s: choosing new default based "
    "on card type\n", sc->sc_dev.dv_xname);
  }
 } else {
  if (sc->xl_type == 1 &&
      sc->xl_media & 0x0100)
   return;
  printf("%s: WARNING: no media options bits set in "
   "the media options register!!\n", sc->sc_dev.dv_xname);
  printf("%s: this could be a manufacturing defect in "
   "your adapter or system\n", sc->sc_dev.dv_xname);
  printf("%s: attempting to guess media type; you "
   "should probably consult your vendor\n", sc->sc_dev.dv_xname);
 }
 xl_choose_xcvr(sc, 1);
}
void
xl_choose_xcvr(struct xl_softc *sc, int verbose)
{
 u_int16_t devid;
 xl_read_eeprom(sc, (caddr_t)&devid, 0x03, 1, 0);
 switch(devid) {
 case 0x9000:
 case 0x9004:
  sc->xl_media = 0x0008;
  sc->xl_xcvr = 0x00;
  if (verbose)
   printf("%s: guessing 10BaseT transceiver\n",
       sc->sc_dev.dv_xname);
  break;
 case 0x9001:
 case 0x9005:
  sc->xl_media = 0x0008|0x0010|0x0020;
  sc->xl_xcvr = 0x00;
  if (verbose)
   printf("%s: guessing COMBO (AUI/BNC/TP)\n",
       sc->sc_dev.dv_xname);
  break;
 case 0x9006:
  sc->xl_media = 0x0008|0x0010;
  sc->xl_xcvr = 0x00;
  if (verbose)
   printf("%s: guessing TPC (BNC/TP)\n", sc->sc_dev.dv_xname);
  break;
 case 0x900A:
  sc->xl_media = 0x0100;
  sc->xl_xcvr = 0x01;
  if (verbose)
   printf("%s: guessing 10baseFL\n", sc->sc_dev.dv_xname);
  break;
 case 0x9050:
 case 0x5055:
 case 0x6055:
 case 0x6056:
 case 0x5057:
 case 0x5157:
 case 0x5257:
 case 0x6560:
 case 0x6562:
 case 0x6564:
 case 0x9201:
  sc->xl_media = 0x0040;
  sc->xl_xcvr = 0x06;
  if (verbose)
   printf("%s: guessing MII\n", sc->sc_dev.dv_xname);
  break;
 case 0x9051:
 case 0x9056:
  sc->xl_media = 0x0001;
  sc->xl_xcvr = 0x06;
  if (verbose)
   printf("%s: guessing 100BaseT4/MII\n", sc->sc_dev.dv_xname);
  break;
 case 0x9055:
 case 0x9800:
 case 0x9805:
 case 0x7646:
 case 0x9200:
 case 0x4500:
  sc->xl_media = 0x0002;
  sc->xl_xcvr = 0x08;
  if (verbose)
   printf("%s: guessing 10/100 internal\n",
       sc->sc_dev.dv_xname);
  break;
 case 0x9058:
  sc->xl_media = 0x0002|0x0010|0x0020;
  sc->xl_xcvr = 0x08;
  if (verbose)
   printf("%s: guessing 10/100 plus BNC/AUI\n",
       sc->sc_dev.dv_xname);
  break;
 default:
  printf("%s: unknown device ID: %x -- "
   "defaulting to 10baseT\n", sc->sc_dev.dv_xname, devid);
  sc->xl_media = 0x0008;
  break;
 }
}
int
xl_list_tx_init(struct xl_softc *sc)
{
 struct xl_chain_data *cd;
 struct xl_list_data *ld;
 int i;
 cd = &sc->xl_cdata;
 ld = sc->xl_ldata;
 for (i = 0; i < 32; i++) {
  cd->xl_tx_chain[i].xl_ptr = &ld->xl_tx_list[i];
  if (i == (32 - 1))
   cd->xl_tx_chain[i].xl_next = ((void *)0);
  else
   cd->xl_tx_chain[i].xl_next = &cd->xl_tx_chain[i + 1];
 }
 cd->xl_tx_free = &cd->xl_tx_chain[0];
 cd->xl_tx_tail = cd->xl_tx_head = ((void *)0);
 return (0);
}
int
xl_list_tx_init_90xB(struct xl_softc *sc)
{
 struct xl_chain_data *cd;
 struct xl_list_data *ld;
 int i, next, prev;
 cd = &sc->xl_cdata;
 ld = sc->xl_ldata;
 for (i = 0; i < 32; i++) {
  if (i == (32 - 1))
   next = 0;
  else
   next = i + 1;
  if (i == 0)
   prev = 32 - 1;
  else
   prev = i - 1;
  cd->xl_tx_chain[i].xl_ptr = &ld->xl_tx_list[i];
  cd->xl_tx_chain[i].xl_phys =
      sc->sc_listmap->dm_segs[0].ds_addr +
      __builtin_offsetof(struct xl_list_data, xl_tx_list[i]);
  cd->xl_tx_chain[i].xl_next = &cd->xl_tx_chain[next];
  cd->xl_tx_chain[i].xl_prev = &cd->xl_tx_chain[prev];
 }
 __builtin_bzero((ld->xl_tx_list), (sizeof(struct xl_list) * 32));
 ld->xl_tx_list[0].xl_status = (__uint32_t)(__builtin_constant_p(0x20000000) ? (__uint32_t)(((__uint32_t)(0x20000000) & 0xff) << 24 | ((__uint32_t)(0x20000000) & 0xff00) << 8 | ((__uint32_t)(0x20000000) & 0xff0000) >> 8 | ((__uint32_t)(0x20000000) & 0xff000000) >> 24) : __swap32md(0x20000000));
 cd->xl_tx_prod = 1;
 cd->xl_tx_cons = 1;
 cd->xl_tx_cnt = 0;
 return (0);
}
int
xl_list_rx_init(struct xl_softc *sc)
{
 struct xl_chain_data *cd;
 struct xl_list_data *ld;
 int i, n;
 bus_addr_t next;
 cd = &sc->xl_cdata;
 ld = sc->xl_ldata;
 for (i = 0; i < 32; i++) {
  cd->xl_rx_chain[i].xl_ptr =
   (struct xl_list_onefrag *)&ld->xl_rx_list[i];
  if (i == (32 - 1))
   n = 0;
  else
   n = i + 1;
  cd->xl_rx_chain[i].xl_next = &cd->xl_rx_chain[n];
  next = sc->sc_listmap->dm_segs[0].ds_addr +
         __builtin_offsetof(struct xl_list_data, xl_rx_list[n]);
  ld->xl_rx_list[i].xl_next = (__uint32_t)(__builtin_constant_p(next) ? (__uint32_t)(((__uint32_t)(next) & 0xff) << 24 | ((__uint32_t)(next) & 0xff00) << 8 | ((__uint32_t)(next) & 0xff0000) >> 8 | ((__uint32_t)(next) & 0xff000000) >> 24) : __swap32md(next));
 }
 cd->xl_rx_prod = cd->xl_rx_cons = &cd->xl_rx_chain[0];
 if_rxr_init(&cd->xl_rx_ring, 2, 32 - 1);
 xl_fill_rx_ring(sc);
 return (0);
}
void
xl_fill_rx_ring(struct xl_softc *sc)
{
 struct xl_chain_data *cd;
 u_int slots;
 cd = &sc->xl_cdata;
 for (slots = if_rxr_get(&cd->xl_rx_ring, 32);
      slots > 0; slots--) {
  if (xl_newbuf(sc, cd->xl_rx_prod) == 55)
   break;
  cd->xl_rx_prod = cd->xl_rx_prod->xl_next;
 }
 do { (&cd->xl_rx_ring)->rxr_alive -= (slots); } while (0);
}
int
xl_newbuf(struct xl_softc *sc, struct xl_chain_onefrag *c)
{
 struct mbuf *m_new = ((void *)0);
 bus_dmamap_t map;
 m_new = m_clget((((void *)0)), (0x0002), ((1 << 11)));
 if (!m_new)
  return (55);
 m_new->m_hdr.mh_len = m_new->M_dat.MH.MH_pkthdr.len = (1 << 11);
 if (bus_dmamap_load(sc->sc_dmat, sc->sc_rx_sparemap,
     ((caddr_t)((m_new)->m_hdr.mh_data)), (1 << 11), ((void *)0), 0x0001) != 0) {
  m_freem(m_new);
  return (55);
 }
 if (c->map->dm_nsegs != 0) {
  bus_dmamap_sync(sc->sc_dmat, c->map,
      0, c->map->dm_mapsize, 0x02);
  bus_dmamap_unload(sc->sc_dmat, c->map);
 }
 map = c->map;
 c->map = sc->sc_rx_sparemap;
 sc->sc_rx_sparemap = map;
 m_adj(m_new, 2);
 bus_dmamap_sync(sc->sc_dmat, c->map, 0, c->map->dm_mapsize,
     0x01);
 c->xl_mbuf = m_new;
 c->xl_ptr->xl_frag.xl_addr =
     (__uint32_t)(__builtin_constant_p(c->map->dm_segs[0].ds_addr + 2) ? (__uint32_t)(((__uint32_t)(c->map->dm_segs[0].ds_addr + 2) & 0xff) << 24 | ((__uint32_t)(c->map->dm_segs[0].ds_addr + 2) & 0xff00) << 8 | ((__uint32_t)(c->map->dm_segs[0].ds_addr + 2) & 0xff0000) >> 8 | ((__uint32_t)(c->map->dm_segs[0].ds_addr + 2) & 0xff000000) >> 24) : __swap32md(c->map->dm_segs[0].ds_addr + 2));
 c->xl_ptr->xl_frag.xl_len =
     (__uint32_t)(__builtin_constant_p(c->map->dm_segs[0].ds_len | 0x80000000) ? (__uint32_t)(((__uint32_t)(c->map->dm_segs[0].ds_len | 0x80000000) & 0xff) << 24 | ((__uint32_t)(c->map->dm_segs[0].ds_len | 0x80000000) & 0xff00) << 8 | ((__uint32_t)(c->map->dm_segs[0].ds_len | 0x80000000) & 0xff0000) >> 8 | ((__uint32_t)(c->map->dm_segs[0].ds_len | 0x80000000) & 0xff000000) >> 24) : __swap32md(c->map->dm_segs[0].ds_len | 0x80000000));
 c->xl_ptr->xl_status = (__uint32_t)(__builtin_constant_p(0) ? (__uint32_t)(((__uint32_t)(0) & 0xff) << 24 | ((__uint32_t)(0) & 0xff00) << 8 | ((__uint32_t)(0) & 0xff0000) >> 8 | ((__uint32_t)(0) & 0xff000000) >> 24) : __swap32md(0));
 bus_dmamap_sync(sc->sc_dmat, sc->sc_listmap,
     ((caddr_t)c->xl_ptr - sc->sc_listkva), sizeof(struct xl_list),
     0x01 | 0x04);
 return (0);
}
void
xl_rxeof(struct xl_softc *sc)
{
 struct mbuf_list ml = { ((void *)0), ((void *)0), 0 };
        struct mbuf *m;
        struct ifnet *ifp;
 struct xl_chain_onefrag *cur_rx;
 int total_len = 0;
 u_int32_t rxstat;
 u_int16_t sumflags = 0;
 ifp = &sc->sc_arpcom.ac_if;
again:
 while (((&sc->xl_cdata.xl_rx_ring)->rxr_alive) > 0) {
  cur_rx = sc->xl_cdata.xl_rx_cons;
  bus_dmamap_sync(sc->sc_dmat, sc->sc_listmap,
      ((caddr_t)cur_rx->xl_ptr - sc->sc_listkva),
      sizeof(struct xl_list),
      0x02 | 0x08);
  if ((rxstat = (__uint32_t)(__builtin_constant_p(sc->xl_cdata.xl_rx_cons->xl_ptr->xl_status) ? (__uint32_t)(((__uint32_t)(sc->xl_cdata.xl_rx_cons->xl_ptr->xl_status) & 0xff) << 24 | ((__uint32_t)(sc->xl_cdata.xl_rx_cons->xl_ptr->xl_status) & 0xff00) << 8 | ((__uint32_t)(sc->xl_cdata.xl_rx_cons->xl_ptr->xl_status) & 0xff0000) >> 8 | ((__uint32_t)(sc->xl_cdata.xl_rx_cons->xl_ptr->xl_status) & 0xff000000) >> 24) : __swap32md(sc->xl_cdata.xl_rx_cons->xl_ptr->xl_status))) == 0)
   break;
  m = cur_rx->xl_mbuf;
  cur_rx->xl_mbuf = ((void *)0);
  sc->xl_cdata.xl_rx_cons = cur_rx->xl_next;
  do { (&sc->xl_cdata.xl_rx_ring)->rxr_alive -= (1); } while (0);
  total_len = rxstat & 0x00001FFF;
  if (total_len > (1518 + 4))
   rxstat |= (0x00004000|0x00100000);
  if (rxstat & 0x00004000) {
   ifp->if_data.ifi_ierrors++;
   cur_rx->xl_ptr->xl_status = (__uint32_t)(__builtin_constant_p(0) ? (__uint32_t)(((__uint32_t)(0) & 0xff) << 24 | ((__uint32_t)(0) & 0xff00) << 8 | ((__uint32_t)(0) & 0xff0000) >> 8 | ((__uint32_t)(0) & 0xff000000) >> 24) : __swap32md(0));
   m_freem(m);
   continue;
  }
  if (!(rxstat & 0x00008000)) {
   printf("%s: bad receive status -- "
       "packet dropped\n", sc->sc_dev.dv_xname);
   ifp->if_data.ifi_ierrors++;
   cur_rx->xl_ptr->xl_status = (__uint32_t)(__builtin_constant_p(0) ? (__uint32_t)(((__uint32_t)(0) & 0xff) << 24 | ((__uint32_t)(0) & 0xff00) << 8 | ((__uint32_t)(0) & 0xff0000) >> 8 | ((__uint32_t)(0) & 0xff000000) >> 24) : __swap32md(0));
   m_freem(m);
   continue;
  }
  m->M_dat.MH.MH_pkthdr.len = m->m_hdr.mh_len = total_len;
  if (sc->xl_type == 1) {
   if (!(rxstat & 0x02000000) &&
       (rxstat & 0x20000000))
    sumflags |= 0x0008;
   if (!(rxstat & 0x04000000) &&
       (rxstat & 0x40000000))
    sumflags |= 0x0020;
   if (!(rxstat & 0x08000000) &&
       (rxstat & 0x80000000))
    sumflags |= 0x0080;
   m->M_dat.MH.MH_pkthdr.csum_flags = sumflags;
  }
  ml_enqueue(&ml, m);
 }
 xl_fill_rx_ring(sc);
 if (bus_space_read_4(sc->xl_btag, sc->xl_bhandle, 0x38) == 0 ||
  bus_space_read_4(sc->xl_btag, sc->xl_bhandle, 0x30) & 0x00002000) {
  bus_space_write_2(sc->xl_btag, sc->xl_bhandle, 0x0E, 0x3000);
  xl_wait(sc);
  bus_space_write_2(sc->xl_btag, sc->xl_bhandle, 0x0E, 0x3001);
  xl_fill_rx_ring(sc);
  goto again;
 }
 if_input(ifp, &ml);
}
void
xl_txeof(struct xl_softc *sc)
{
 struct xl_chain *cur_tx;
 struct ifnet *ifp;
 ifp = &sc->sc_arpcom.ac_if;
 while (sc->xl_cdata.xl_tx_head != ((void *)0)) {
  cur_tx = sc->xl_cdata.xl_tx_head;
  bus_dmamap_sync(sc->sc_dmat, sc->sc_listmap,
      ((caddr_t)cur_tx->xl_ptr - sc->sc_listkva),
      sizeof(struct xl_list),
      0x02 | 0x08);
  if (bus_space_read_4(sc->xl_btag, sc->xl_bhandle, 0x24))
   break;
  sc->xl_cdata.xl_tx_head = cur_tx->xl_next;
  if (cur_tx->map->dm_nsegs != 0) {
   bus_dmamap_t map = cur_tx->map;
   bus_dmamap_sync(sc->sc_dmat, map, 0, map->dm_mapsize,
       0x08);
   bus_dmamap_unload(sc->sc_dmat, map);
  }
  if (cur_tx->xl_mbuf != ((void *)0)) {
   m_freem(cur_tx->xl_mbuf);
   cur_tx->xl_mbuf = ((void *)0);
  }
  cur_tx->xl_next = sc->xl_cdata.xl_tx_free;
  sc->xl_cdata.xl_tx_free = cur_tx;
 }
 if (sc->xl_cdata.xl_tx_head == ((void *)0)) {
  ifq_clr_oactive(&ifp->if_snd);
  ifp->if_timer = 0;
  sc->xl_cdata.xl_tx_tail = ((void *)0);
 } else {
  if (bus_space_read_4(sc->xl_btag, sc->xl_bhandle, 0x20) & 0x00000004 ||
   !bus_space_read_4(sc->xl_btag, sc->xl_bhandle, 0x24)) {
   bus_space_write_4(sc->xl_btag, sc->xl_bhandle, 0x24, sc->sc_listmap->dm_segs[0].ds_addr + ((caddr_t)sc->xl_cdata.xl_tx_head->xl_ptr - sc->sc_listkva));
   bus_space_write_2(sc->xl_btag, sc->xl_bhandle, 0x0E, 0x3003);
  }
 }
}
void
xl_txeof_90xB(struct xl_softc *sc)
{
 struct xl_chain *cur_tx = ((void *)0);
 struct ifnet *ifp;
 int idx;
 ifp = &sc->sc_arpcom.ac_if;
 idx = sc->xl_cdata.xl_tx_cons;
 while (idx != sc->xl_cdata.xl_tx_prod) {
  cur_tx = &sc->xl_cdata.xl_tx_chain[idx];
  if ((cur_tx->xl_ptr->xl_status &
      (__uint32_t)(__builtin_constant_p(0x00010000) ? (__uint32_t)(((__uint32_t)(0x00010000) & 0xff) << 24 | ((__uint32_t)(0x00010000) & 0xff00) << 8 | ((__uint32_t)(0x00010000) & 0xff0000) >> 8 | ((__uint32_t)(0x00010000) & 0xff000000) >> 24) : __swap32md(0x00010000))) == 0)
   break;
  if (cur_tx->xl_mbuf != ((void *)0)) {
   m_freem(cur_tx->xl_mbuf);
   cur_tx->xl_mbuf = ((void *)0);
  }
  if (cur_tx->map->dm_nsegs != 0) {
   bus_dmamap_sync(sc->sc_dmat, cur_tx->map,
       0, cur_tx->map->dm_mapsize, 0x08);
   bus_dmamap_unload(sc->sc_dmat, cur_tx->map);
  }
  sc->xl_cdata.xl_tx_cnt--;
  (idx) = (idx + 1) % (32);
 }
 sc->xl_cdata.xl_tx_cons = idx;
 if (cur_tx != ((void *)0))
  ifq_clr_oactive(&ifp->if_snd);
 if (sc->xl_cdata.xl_tx_cnt == 0)
  ifp->if_timer = 0;
}
void
xl_txeoc(struct xl_softc *sc)
{
 u_int8_t txstat;
 while ((txstat = bus_space_read_1(sc->xl_btag, sc->xl_bhandle, 0x1B))) {
  if (txstat & 0x10 ||
   txstat & 0x20 ||
   txstat & 0x02) {
   if (txstat != 0x90) {
    printf("%s: transmission error: %x\n",
        sc->sc_dev.dv_xname, txstat);
   }
   bus_space_write_2(sc->xl_btag, sc->xl_bhandle, 0x0E, 0x5800);
   xl_wait(sc);
   if (sc->xl_type == 1) {
    if (sc->xl_cdata.xl_tx_cnt) {
     int i;
     struct xl_chain *c;
     i = sc->xl_cdata.xl_tx_cons;
     c = &sc->xl_cdata.xl_tx_chain[i];
     bus_space_write_4(sc->xl_btag, sc->xl_bhandle, 0x24, c->xl_phys);
     bus_space_write_1(sc->xl_btag, sc->xl_bhandle, 0x2D, 64);
    }
   } else {
    if (sc->xl_cdata.xl_tx_head != ((void *)0))
     bus_space_write_4(sc->xl_btag, sc->xl_bhandle, 0x24, sc->sc_listmap->dm_segs[0].ds_addr + ((caddr_t)sc->xl_cdata.xl_tx_head->xl_ptr - sc->sc_listkva));
   }
   bus_space_write_1(sc->xl_btag, sc->xl_bhandle, 0x2F, 1540 >> 8);
   if (txstat & 0x10 &&
       sc->xl_tx_thresh < 1540) {
    sc->xl_tx_thresh += 60;
   }
   bus_space_write_2(sc->xl_btag, sc->xl_bhandle, 0x0E, 0x9800|sc->xl_tx_thresh);
   if (sc->xl_type == 1) {
    bus_space_write_2(sc->xl_btag, sc->xl_bhandle, 0x0E, 0xC000|(1540 >> 4));
   }
   bus_space_write_2(sc->xl_btag, sc->xl_bhandle, 0x0E, 0x4800);
   bus_space_write_2(sc->xl_btag, sc->xl_bhandle, 0x0E, 0x3003);
  } else {
   bus_space_write_2(sc->xl_btag, sc->xl_bhandle, 0x0E, 0x4800);
   bus_space_write_2(sc->xl_btag, sc->xl_bhandle, 0x0E, 0x3003);
  }
  bus_space_write_1(sc->xl_btag, sc->xl_bhandle, 0x1B, 0x01);
 }
}
int
xl_intr(void *arg)
{
 struct xl_softc *sc;
 struct ifnet *ifp;
 u_int16_t status;
 int claimed = 0;
 sc = arg;
 ifp = &sc->sc_arpcom.ac_if;
 while ((status = bus_space_read_2(sc->xl_btag, sc->xl_bhandle, 0x0E)) & (0x0400|0x0080|0x0002| 0x0200|0x0004|0x0001) && status != 0xFFFF) {
  claimed = 1;
  bus_space_write_2(sc->xl_btag, sc->xl_bhandle, 0x0E, 0x6800|(status & (0x0400|0x0080|0x0002| 0x0200|0x0004|0x0001)));
  if (sc->intr_ack)
   (*sc->intr_ack)(sc);
  if (!(ifp->if_flags & 0x40))
   return (claimed);
  if (status & 0x0400)
   xl_rxeof(sc);
  if (status & 0x0200) {
   if (sc->xl_type == 1)
    xl_txeof_90xB(sc);
   else
    xl_txeof(sc);
  }
  if (status & 0x0004) {
   ifp->if_data.ifi_oerrors++;
   xl_txeoc(sc);
  }
  if (status & 0x0002)
   xl_init(sc);
  if (status & 0x0080) {
   sc->xl_stats_no_timeout = 1;
   xl_stats_update(sc);
   sc->xl_stats_no_timeout = 0;
  }
 }
 if (!(((&ifp->if_snd)->ifq_len) == 0))
  (*ifp->if_start)(ifp);
 return (claimed);
}
void
xl_stats_update(void *xsc)
{
 struct xl_softc *sc;
 struct ifnet *ifp;
 struct xl_stats xl_stats;
 u_int8_t *p;
 int i;
 struct mii_data *mii = ((void *)0);
 __builtin_bzero((&xl_stats), (sizeof(struct xl_stats)));
 sc = xsc;
 ifp = &sc->sc_arpcom.ac_if;
 if (sc->xl_hasmii)
  mii = &sc->sc_mii;
 p = (u_int8_t *)&xl_stats;
 bus_space_write_2(sc->xl_btag, sc->xl_bhandle, 0x0E, 0x0800 | 6);
 for (i = 0; i < 16; i++)
  *p++ = bus_space_read_1(sc->xl_btag, sc->xl_bhandle, 0x00 + i);
 ifp->if_data.ifi_ierrors += xl_stats.xl_rx_overrun;
 ifp->if_data.ifi_collisions += xl_stats.xl_tx_multi_collision +
    xl_stats.xl_tx_single_collision +
    xl_stats.xl_tx_late_collision;
 bus_space_write_2(sc->xl_btag, sc->xl_bhandle, 0x0E, 0x0800 | 4);
 bus_space_read_1(sc->xl_btag, sc->xl_bhandle, 0x0C);
 if (mii != ((void *)0) && (!sc->xl_stats_no_timeout))
  mii_tick(mii);
 bus_space_write_2(sc->xl_btag, sc->xl_bhandle, 0x0E, 0x0800 | 7);
 if (!sc->xl_stats_no_timeout)
  timeout_add_sec(&sc->xl_stsup_tmo, 1);
}
int
xl_encap(struct xl_softc *sc, struct xl_chain *c, struct mbuf *m_head)
{
 int error, frag, total_len;
 u_int32_t status;
 bus_dmamap_t map;
 map = sc->sc_tx_sparemap;
reload:
 error = bus_dmamap_load_mbuf(sc->sc_dmat, map,
     m_head, 0x0001);
 if (error && error != 27) {
  m_freem(m_head);
  return (1);
 }
 for (frag = 0, total_len = 0; frag < map->dm_nsegs; frag++) {
  if (frag == 63)
   break;
  total_len += map->dm_segs[frag].ds_len;
  c->xl_ptr->xl_frag[frag].xl_addr =
      (__uint32_t)(__builtin_constant_p(map->dm_segs[frag].ds_addr) ? (__uint32_t)(((__uint32_t)(map->dm_segs[frag].ds_addr) & 0xff) << 24 | ((__uint32_t)(map->dm_segs[frag].ds_addr) & 0xff00) << 8 | ((__uint32_t)(map->dm_segs[frag].ds_addr) & 0xff0000) >> 8 | ((__uint32_t)(map->dm_segs[frag].ds_addr) & 0xff000000) >> 24) : __swap32md(map->dm_segs[frag].ds_addr));
  c->xl_ptr->xl_frag[frag].xl_len =
      (__uint32_t)(__builtin_constant_p(map->dm_segs[frag].ds_len) ? (__uint32_t)(((__uint32_t)(map->dm_segs[frag].ds_len) & 0xff) << 24 | ((__uint32_t)(map->dm_segs[frag].ds_len) & 0xff00) << 8 | ((__uint32_t)(map->dm_segs[frag].ds_len) & 0xff0000) >> 8 | ((__uint32_t)(map->dm_segs[frag].ds_len) & 0xff000000) >> 24) : __swap32md(map->dm_segs[frag].ds_len));
 }
 if (error) {
  struct mbuf *m_new = ((void *)0);
  m_new = m_gethdr((0x0002), (1));
  if (m_new == ((void *)0)) {
   m_freem(m_head);
   return (1);
  }
  if (m_head->M_dat.MH.MH_pkthdr.len > ((256 - sizeof(struct m_hdr)) - sizeof(struct pkthdr))) {
   (void) m_clget((m_new), (0x0002), (1 << 11));
   if (!(m_new->m_hdr.mh_flags & 0x0001)) {
    m_freem(m_new);
    m_freem(m_head);
    return (1);
   }
  }
  m_copydata(m_head, 0, m_head->M_dat.MH.MH_pkthdr.len,
      ((caddr_t)((m_new)->m_hdr.mh_data)));
  m_new->M_dat.MH.MH_pkthdr.len = m_new->m_hdr.mh_len = m_head->M_dat.MH.MH_pkthdr.len;
  m_freem(m_head);
  m_head = m_new;
  goto reload;
 }
 bus_dmamap_sync(sc->sc_dmat, map, 0, map->dm_mapsize,
     0x04);
 if (c->map->dm_nsegs != 0) {
  bus_dmamap_sync(sc->sc_dmat, c->map,
      0, c->map->dm_mapsize, 0x08);
  bus_dmamap_unload(sc->sc_dmat, c->map);
 }
 c->xl_mbuf = m_head;
 sc->sc_tx_sparemap = c->map;
 c->map = map;
 c->xl_ptr->xl_frag[frag - 1].xl_len |= (__uint32_t)(__builtin_constant_p(0x80000000) ? (__uint32_t)(((__uint32_t)(0x80000000) & 0xff) << 24 | ((__uint32_t)(0x80000000) & 0xff00) << 8 | ((__uint32_t)(0x80000000) & 0xff0000) >> 8 | ((__uint32_t)(0x80000000) & 0xff000000) >> 24) : __swap32md(0x80000000));
 c->xl_ptr->xl_status = (__uint32_t)(__builtin_constant_p(total_len) ? (__uint32_t)(((__uint32_t)(total_len) & 0xff) << 24 | ((__uint32_t)(total_len) & 0xff00) << 8 | ((__uint32_t)(total_len) & 0xff0000) >> 8 | ((__uint32_t)(total_len) & 0xff000000) >> 24) : __swap32md(total_len));
 c->xl_ptr->xl_next = 0;
 if (sc->xl_type == 1) {
  status = 0x10000000;
  c->xl_ptr->xl_status = (__uint32_t)(__builtin_constant_p(status) ? (__uint32_t)(((__uint32_t)(status) & 0xff) << 24 | ((__uint32_t)(status) & 0xff00) << 8 | ((__uint32_t)(status) & 0xff0000) >> 8 | ((__uint32_t)(status) & 0xff000000) >> 24) : __swap32md(status));
 }
 bus_dmamap_sync(sc->sc_dmat, sc->sc_listmap,
     __builtin_offsetof(struct xl_list_data, xl_tx_list[0]),
     sizeof(struct xl_list) * 32,
     0x01 | 0x04);
 return (0);
}
void
xl_start(struct ifnet *ifp)
{
 struct xl_softc *sc;
 struct mbuf *m_head = ((void *)0);
 struct xl_chain *prev = ((void *)0), *cur_tx = ((void *)0), *start_tx;
 struct xl_chain *prev_tx;
 int error;
 sc = ifp->if_softc;
 if (sc->xl_cdata.xl_tx_free == ((void *)0)) {
  xl_txeoc(sc);
  xl_txeof(sc);
  if (sc->xl_cdata.xl_tx_free == ((void *)0)) {
   ifq_set_oactive(&ifp->if_snd);
   return;
  }
 }
 start_tx = sc->xl_cdata.xl_tx_free;
 while (sc->xl_cdata.xl_tx_free != ((void *)0)) {
  do { (m_head) = ifq_dequeue(&ifp->if_snd); } while ( 0);
  if (m_head == ((void *)0))
   break;
  prev_tx = cur_tx;
  cur_tx = sc->xl_cdata.xl_tx_free;
  error = xl_encap(sc, cur_tx, m_head);
  if (error) {
   cur_tx = prev_tx;
   continue;
  }
  sc->xl_cdata.xl_tx_free = cur_tx->xl_next;
  cur_tx->xl_next = ((void *)0);
  if (prev != ((void *)0)) {
   prev->xl_next = cur_tx;
   prev->xl_ptr->xl_next =
       sc->sc_listmap->dm_segs[0].ds_addr +
       ((caddr_t)cur_tx->xl_ptr - sc->sc_listkva);
  }
  prev = cur_tx;
  if (ifp->if_bpf)
   bpf_mtap(ifp->if_bpf, cur_tx->xl_mbuf,
       (1<<1));
 }
 if (cur_tx == ((void *)0))
  return;
 cur_tx->xl_ptr->xl_status |= (__uint32_t)(__builtin_constant_p(0x80000000) ? (__uint32_t)(((__uint32_t)(0x80000000) & 0xff) << 24 | ((__uint32_t)(0x80000000) & 0xff00) << 8 | ((__uint32_t)(0x80000000) & 0xff0000) >> 8 | ((__uint32_t)(0x80000000) & 0xff000000) >> 24) : __swap32md(0x80000000));
 bus_space_write_2(sc->xl_btag, sc->xl_bhandle, 0x0E, 0x3002);
 xl_wait(sc);
 if (sc->xl_cdata.xl_tx_head != ((void *)0)) {
  sc->xl_cdata.xl_tx_tail->xl_next = start_tx;
  sc->xl_cdata.xl_tx_tail->xl_ptr->xl_next =
      sc->sc_listmap->dm_segs[0].ds_addr +
      ((caddr_t)start_tx->xl_ptr - sc->sc_listkva);
  sc->xl_cdata.xl_tx_tail->xl_ptr->xl_status &=
      (__uint32_t)(__builtin_constant_p(~0x80000000) ? (__uint32_t)(((__uint32_t)(~0x80000000) & 0xff) << 24 | ((__uint32_t)(~0x80000000) & 0xff00) << 8 | ((__uint32_t)(~0x80000000) & 0xff0000) >> 8 | ((__uint32_t)(~0x80000000) & 0xff000000) >> 24) : __swap32md(~0x80000000));
  sc->xl_cdata.xl_tx_tail = cur_tx;
 } else {
  sc->xl_cdata.xl_tx_head = start_tx;
  sc->xl_cdata.xl_tx_tail = cur_tx;
 }
 if (!bus_space_read_4(sc->xl_btag, sc->xl_bhandle, 0x24))
  bus_space_write_4(sc->xl_btag, sc->xl_bhandle, 0x24, sc->sc_listmap->dm_segs[0].ds_addr + ((caddr_t)start_tx->xl_ptr - sc->sc_listkva));
 bus_space_write_2(sc->xl_btag, sc->xl_bhandle, 0x0E, 0x3003);
 bus_space_write_2(sc->xl_btag, sc->xl_bhandle, 0x0E, 0x0800 | 7);
 ifp->if_timer = 5;
 xl_rxeof(sc);
}
void
xl_start_90xB(struct ifnet *ifp)
{
 struct xl_softc *sc;
 struct mbuf *m_head = ((void *)0);
 struct xl_chain *prev = ((void *)0), *cur_tx = ((void *)0), *start_tx;
 struct xl_chain *prev_tx;
 int error, idx;
 sc = ifp->if_softc;
 if (ifq_is_oactive(&ifp->if_snd))
  return;
 idx = sc->xl_cdata.xl_tx_prod;
 start_tx = &sc->xl_cdata.xl_tx_chain[idx];
 while (sc->xl_cdata.xl_tx_chain[idx].xl_mbuf == ((void *)0)) {
  if ((32 - sc->xl_cdata.xl_tx_cnt) < 3) {
   ifq_set_oactive(&ifp->if_snd);
   break;
  }
  do { (m_head) = ifq_dequeue(&ifp->if_snd); } while ( 0);
  if (m_head == ((void *)0))
   break;
  prev_tx = cur_tx;
  cur_tx = &sc->xl_cdata.xl_tx_chain[idx];
  error = xl_encap(sc, cur_tx, m_head);
  if (error) {
   cur_tx = prev_tx;
   continue;
  }
  if (prev != ((void *)0))
   prev->xl_ptr->xl_next = (__uint32_t)(__builtin_constant_p(cur_tx->xl_phys) ? (__uint32_t)(((__uint32_t)(cur_tx->xl_phys) & 0xff) << 24 | ((__uint32_t)(cur_tx->xl_phys) & 0xff00) << 8 | ((__uint32_t)(cur_tx->xl_phys) & 0xff0000) >> 8 | ((__uint32_t)(cur_tx->xl_phys) & 0xff000000) >> 24) : __swap32md(cur_tx->xl_phys));
  prev = cur_tx;
  if (ifp->if_bpf)
   bpf_mtap(ifp->if_bpf, cur_tx->xl_mbuf,
       (1<<1));
  (idx) = (idx + 1) % (32);
  sc->xl_cdata.xl_tx_cnt++;
 }
 if (cur_tx == ((void *)0))
  return;
 cur_tx->xl_ptr->xl_status |= (__uint32_t)(__builtin_constant_p(0x80000000) ? (__uint32_t)(((__uint32_t)(0x80000000) & 0xff) << 24 | ((__uint32_t)(0x80000000) & 0xff00) << 8 | ((__uint32_t)(0x80000000) & 0xff0000) >> 8 | ((__uint32_t)(0x80000000) & 0xff000000) >> 24) : __swap32md(0x80000000));
 sc->xl_cdata.xl_tx_prod = idx;
 start_tx->xl_prev->xl_ptr->xl_next = (__uint32_t)(__builtin_constant_p(start_tx->xl_phys) ? (__uint32_t)(((__uint32_t)(start_tx->xl_phys) & 0xff) << 24 | ((__uint32_t)(start_tx->xl_phys) & 0xff00) << 8 | ((__uint32_t)(start_tx->xl_phys) & 0xff0000) >> 8 | ((__uint32_t)(start_tx->xl_phys) & 0xff000000) >> 24) : __swap32md(start_tx->xl_phys));
 ifp->if_timer = 5;
}
void
xl_init(void *xsc)
{
 struct xl_softc *sc = xsc;
 struct ifnet *ifp = &sc->sc_arpcom.ac_if;
 int s, i;
 struct mii_data *mii = ((void *)0);
 s = _splraise(6);
 xl_stop(sc);
 xl_reset(sc);
 if (sc->xl_hasmii)
  mii = &sc->sc_mii;
 if (mii == ((void *)0)) {
  bus_space_write_2(sc->xl_btag, sc->xl_bhandle, 0x0E, 0x2800);
  xl_wait(sc);
 }
 bus_space_write_2(sc->xl_btag, sc->xl_bhandle, 0x0E, 0x5800);
 xl_wait(sc);
 delay(10000);
 bus_space_write_2(sc->xl_btag, sc->xl_bhandle, 0x0E, 0x0800 | 2);
 for (i = 0; i < 6; i++) {
  bus_space_write_1(sc->xl_btag, sc->xl_bhandle, 0x00 + i, sc->sc_arpcom.ac_enaddr[i]);
 }
 for (i = 0; i < 3; i++)
  bus_space_write_2(sc->xl_btag, sc->xl_bhandle, 0x06 + (i * 2), 0);
 if (xl_list_rx_init(sc) == 55) {
  printf("%s: initialization failed: no "
   "memory for rx buffers\n", sc->sc_dev.dv_xname);
  xl_stop(sc);
  _splx(s);
  return;
 }
 if (sc->xl_type == 1)
  xl_list_tx_init_90xB(sc);
 else
  xl_list_tx_init(sc);
 bus_space_write_1(sc->xl_btag, sc->xl_bhandle, 0x2F, 1540 >> 8);
 bus_space_write_2(sc->xl_btag, sc->xl_bhandle, 0x0E, 0x9800|sc->xl_tx_thresh);
 if (sc->xl_type == 1) {
  bus_space_write_2(sc->xl_btag, sc->xl_bhandle, 0x0E, 0xC000|(1540 >> 4));
 }
 xl_iff(sc);
 bus_space_write_2(sc->xl_btag, sc->xl_bhandle, 0x0E, 0x3000);
 xl_wait(sc);
 bus_space_write_4(sc->xl_btag, sc->xl_bhandle, 0x38, sc->sc_listmap->dm_segs[0].ds_addr + __builtin_offsetof(struct xl_list_data, xl_rx_list[0]));
 bus_space_write_2(sc->xl_btag, sc->xl_bhandle, 0x0E, 0x3001);
 xl_wait(sc);
 if (sc->xl_type == 1) {
  bus_space_write_1(sc->xl_btag, sc->xl_bhandle, 0x2D, 64);
  bus_space_write_2(sc->xl_btag, sc->xl_bhandle, 0x0E, 0x3002);
  xl_wait(sc);
  bus_space_write_4(sc->xl_btag, sc->xl_bhandle, 0x24, sc->sc_listmap->dm_segs[0].ds_addr + __builtin_offsetof(struct xl_list_data, xl_tx_list[0]));
  bus_space_write_2(sc->xl_btag, sc->xl_bhandle, 0x0E, 0x3003);
  xl_wait(sc);
 }
 bus_space_write_2(sc->xl_btag, sc->xl_bhandle, 0x0E, 0x0800 | 3);
 if (sc->xl_xcvr == 0x03)
  bus_space_write_2(sc->xl_btag, sc->xl_bhandle, 0x0E, 0x1000);
 else
  bus_space_write_2(sc->xl_btag, sc->xl_bhandle, 0x0E, 0xB800);
 if (sc->xl_type == 1)
  bus_space_write_2(sc->xl_btag, sc->xl_bhandle, 0x04, 1540);
 else {
  u_int8_t macctl;
  macctl = bus_space_read_1(sc->xl_btag, sc->xl_bhandle, 0x06);
  macctl |= 0x0040;
  bus_space_write_1(sc->xl_btag, sc->xl_bhandle, 0x06, macctl);
 }
 bus_space_write_2(sc->xl_btag, sc->xl_bhandle, 0x0E, 0xB000);
 sc->xl_stats_no_timeout = 1;
 xl_stats_update(sc);
 sc->xl_stats_no_timeout = 0;
 bus_space_write_2(sc->xl_btag, sc->xl_bhandle, 0x0E, 0x0800 | 4);
 bus_space_write_2(sc->xl_btag, sc->xl_bhandle, 0x06, 0x0040);
 bus_space_write_2(sc->xl_btag, sc->xl_bhandle, 0x0E, 0xA800);
 bus_space_write_2(sc->xl_btag, sc->xl_bhandle, 0x0E, 0x6800|0xFF);
 bus_space_write_2(sc->xl_btag, sc->xl_bhandle, 0x0E, 0x7800|(0x0400|0x0080|0x0002| 0x0200|0x0004|0x0001));
 bus_space_write_2(sc->xl_btag, sc->xl_bhandle, 0x0E, 0x7000|(0x0400|0x0080|0x0002| 0x0200|0x0004|0x0001));
 if (sc->intr_ack)
  (*sc->intr_ack)(sc);
 bus_space_write_2(sc->xl_btag, sc->xl_bhandle, 0x0E, 0x8800|(1540 >>2));
 bus_space_write_4(sc->xl_btag, sc->xl_bhandle, 0x20, 0x00000020);
 bus_space_write_2(sc->xl_btag, sc->xl_bhandle, 0x0E, 0x4800);
 xl_wait(sc);
 bus_space_write_2(sc->xl_btag, sc->xl_bhandle, 0x0E, 0x2000);
 xl_wait(sc);
 if (mii != ((void *)0))
  mii_mediachg(mii);
 bus_space_write_2(sc->xl_btag, sc->xl_bhandle, 0x0E, 0x0800 | 7);
 ifp->if_flags |= 0x40;
 ifq_clr_oactive(&ifp->if_snd);
 _splx(s);
 timeout_add_sec(&sc->xl_stsup_tmo, 1);
}
int
xl_ifmedia_upd(struct ifnet *ifp)
{
 struct xl_softc *sc;
 struct ifmedia *ifm = ((void *)0);
 struct mii_data *mii = ((void *)0);
 sc = ifp->if_softc;
 if (sc->xl_hasmii)
  mii = &sc->sc_mii;
 if (mii == ((void *)0))
  ifm = &sc->ifmedia;
 else
  ifm = &mii->mii_media;
 switch(((ifm->ifm_media) & 0x00000000000000ffULL)) {
 case 7:
 case 13:
 case 4:
 case 5:
  xl_setmode(sc, ifm->ifm_media);
  return (0);
  break;
 default:
  break;
 }
 if (sc->xl_media & 0x0040 || sc->xl_media & 0x0002
  || sc->xl_media & 0x0001) {
  xl_init(sc);
 } else {
  xl_setmode(sc, ifm->ifm_media);
 }
 return (0);
}
void
xl_ifmedia_sts(struct ifnet *ifp, struct ifmediareq *ifmr)
{
 struct xl_softc *sc;
 u_int32_t icfg;
 u_int16_t status = 0;
 struct mii_data *mii = ((void *)0);
 sc = ifp->if_softc;
 if (sc->xl_hasmii != 0)
  mii = &sc->sc_mii;
 bus_space_write_2(sc->xl_btag, sc->xl_bhandle, 0x0E, 0x0800 | 4);
 status = bus_space_read_2(sc->xl_btag, sc->xl_bhandle, 0x0A);
 bus_space_write_2(sc->xl_btag, sc->xl_bhandle, 0x0E, 0x0800 | 3);
 icfg = bus_space_read_4(sc->xl_btag, sc->xl_bhandle, 0x00) & 0x00F00000;
 icfg >>= 20;
 ifmr->ifm_active = 0x0000000000000100ULL;
 ifmr->ifm_status = 0x0000000000000001ULL;
 if ((status & 0x0020) == 0)
  ifmr->ifm_status |= 0x0000000000000002ULL;
 switch(icfg) {
 case 0x00:
  ifmr->ifm_active = 0x0000000000000100ULL|3;
  if (bus_space_read_1(sc->xl_btag, sc->xl_bhandle, 0x06) & 0x0020)
   ifmr->ifm_active |= 0x0000010000000000ULL;
  else
   ifmr->ifm_active |= 0x0000020000000000ULL;
  break;
 case 0x01:
  if (sc->xl_type == 1 &&
      sc->xl_media == 0x0100) {
   ifmr->ifm_active = 0x0000000000000100ULL|13;
   if (bus_space_read_1(sc->xl_btag, sc->xl_bhandle, 0x06) & 0x0020)
    ifmr->ifm_active |= 0x0000010000000000ULL;
   else
    ifmr->ifm_active |= 0x0000020000000000ULL;
  } else
   ifmr->ifm_active = 0x0000000000000100ULL|5;
  break;
 case 0x03:
  ifmr->ifm_active = 0x0000000000000100ULL|4;
  break;
 case 0x04:
 case 0x08:
 case 0x06:
  if (mii != ((void *)0)) {
   mii_pollstat(mii);
   ifmr->ifm_active = mii->mii_media_active;
   ifmr->ifm_status = mii->mii_media_status;
  }
  break;
 case 0x05:
  ifmr->ifm_active = 0x0000000000000100ULL|7;
  break;
 default:
  printf("%s: unknown XCVR type: %d\n", sc->sc_dev.dv_xname, icfg);
  break;
 }
}
int
xl_ioctl(struct ifnet *ifp, u_long command, caddr_t data)
{
 struct xl_softc *sc = ifp->if_softc;
 struct ifreq *ifr = (struct ifreq *)data;
 int s, error = 0;
 struct mii_data *mii = ((void *)0);
 s = _splraise(6);
 switch(command) {
 case ((unsigned long)0x80000000 | ((sizeof(struct ifreq) & 0x1fff) << 16) | ((('i')) << 8) | ((12))):
  ifp->if_flags |= 0x1;
  if (!(ifp->if_flags & 0x40))
   xl_init(sc);
  break;
 case ((unsigned long)0x80000000 | ((sizeof(struct ifreq) & 0x1fff) << 16) | ((('i')) << 8) | ((16))):
  if (ifp->if_flags & 0x1) {
   if (ifp->if_flags & 0x40)
    error = 52;
   else
    xl_init(sc);
  } else {
   if (ifp->if_flags & 0x40)
    xl_stop(sc);
  }
  break;
 case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct ifmediareq) & 0x1fff) << 16) | ((('i')) << 8) | ((56))):
 case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct ifreq) & 0x1fff) << 16) | ((('i')) << 8) | ((55))):
  if (sc->xl_hasmii != 0)
   mii = &sc->sc_mii;
  if (mii == ((void *)0))
   error = ifmedia_ioctl(ifp, ifr,
       &sc->ifmedia, command);
  else
   error = ifmedia_ioctl(ifp, ifr,
       &mii->mii_media, command);
  break;
 case ((unsigned long)0x80000000 | ((sizeof(struct ifreq) & 0x1fff) << 16) | ((('i')) << 8) | ((170))):
  error = if_rxr_ioctl((struct if_rxrinfo *)ifr->ifr_ifru.ifru_data,
      ((void *)0), (1 << 11), &sc->xl_cdata.xl_rx_ring);
  break;
 default:
  error = ether_ioctl(ifp, &sc->sc_arpcom, command, data);
 }
 if (error == 52) {
  if (ifp->if_flags & 0x40)
   xl_iff(sc);
  error = 0;
 }
 _splx(s);
 return (error);
}
void
xl_watchdog(struct ifnet *ifp)
{
 struct xl_softc *sc;
 u_int16_t status = 0;
 sc = ifp->if_softc;
 ifp->if_data.ifi_oerrors++;
 bus_space_write_2(sc->xl_btag, sc->xl_bhandle, 0x0E, 0x0800 | 4);
 status = bus_space_read_2(sc->xl_btag, sc->xl_bhandle, 0x0A);
 printf("%s: watchdog timeout\n", sc->sc_dev.dv_xname);
 if (status & 0x0020)
  printf("%s: no carrier - transceiver cable problem?\n",
        sc->sc_dev.dv_xname);
 xl_txeoc(sc);
 xl_txeof(sc);
 xl_rxeof(sc);
 xl_init(sc);
 if (!(((&ifp->if_snd)->ifq_len) == 0))
  (*ifp->if_start)(ifp);
}
void
xl_freetxrx(struct xl_softc *sc)
{
 bus_dmamap_t map;
 int i;
 for (i = 0; i < 32; i++) {
  if (sc->xl_cdata.xl_rx_chain[i].map->dm_nsegs != 0) {
   map = sc->xl_cdata.xl_rx_chain[i].map;
   bus_dmamap_sync(sc->sc_dmat, map, 0, map->dm_mapsize,
       0x02);
   bus_dmamap_unload(sc->sc_dmat, map);
  }
  if (sc->xl_cdata.xl_rx_chain[i].xl_mbuf != ((void *)0)) {
   m_freem(sc->xl_cdata.xl_rx_chain[i].xl_mbuf);
   sc->xl_cdata.xl_rx_chain[i].xl_mbuf = ((void *)0);
  }
 }
 __builtin_bzero((&sc->xl_ldata->xl_rx_list), (sizeof(sc->xl_ldata->xl_rx_list)));
 for (i = 0; i < 32; i++) {
  if (sc->xl_cdata.xl_tx_chain[i].map->dm_nsegs != 0) {
   map = sc->xl_cdata.xl_tx_chain[i].map;
   bus_dmamap_sync(sc->sc_dmat, map, 0, map->dm_mapsize,
       0x08);
   bus_dmamap_unload(sc->sc_dmat, map);
  }
  if (sc->xl_cdata.xl_tx_chain[i].xl_mbuf != ((void *)0)) {
   m_freem(sc->xl_cdata.xl_tx_chain[i].xl_mbuf);
   sc->xl_cdata.xl_tx_chain[i].xl_mbuf = ((void *)0);
  }
 }
 __builtin_bzero((&sc->xl_ldata->xl_tx_list), (sizeof(sc->xl_ldata->xl_tx_list)));
}
void
xl_stop(struct xl_softc *sc)
{
 struct ifnet *ifp;
 timeout_del(&sc->xl_stsup_tmo);
 ifp = &sc->sc_arpcom.ac_if;
 ifp->if_flags &= ~0x40;
 ifq_clr_oactive(&ifp->if_snd);
 ifp->if_timer = 0;
 bus_space_write_2(sc->xl_btag, sc->xl_bhandle, 0x0E, 0x1800);
 bus_space_write_2(sc->xl_btag, sc->xl_bhandle, 0x0E, 0xB000);
 bus_space_write_2(sc->xl_btag, sc->xl_bhandle, 0x0E, 0x7000);
 bus_space_write_2(sc->xl_btag, sc->xl_bhandle, 0x0E, 0x4000);
 xl_wait(sc);
 bus_space_write_2(sc->xl_btag, sc->xl_bhandle, 0x0E, 0x5000);
 bus_space_write_2(sc->xl_btag, sc->xl_bhandle, 0x0E, 0xB800);
 delay(800);
 bus_space_write_2(sc->xl_btag, sc->xl_bhandle, 0x0E, 0x6800|0x0001);
 bus_space_write_2(sc->xl_btag, sc->xl_bhandle, 0x0E, 0x7800|0);
 bus_space_write_2(sc->xl_btag, sc->xl_bhandle, 0x0E, 0x7000|0);
 if (sc->intr_ack)
  (*sc->intr_ack)(sc);
 xl_freetxrx(sc);
}
void
xl_wol_power(struct xl_softc *sc)
{
 if ((sc->xl_flags & 0x0400) && sc->wol_power) {
  bus_space_write_2(sc->xl_btag, sc->xl_bhandle, 0x0E, 0x2000);
  sc->wol_power(sc->wol_power_arg);
 }
}
void
xl_attach(struct xl_softc *sc)
{
 u_int8_t enaddr[6];
 u_int16_t xcvr[2];
 struct ifnet *ifp = &sc->sc_arpcom.ac_if;
 int i;
 uint64_t media = 0x0000000000000100ULL|6|0x0000010000000000ULL;
 struct ifmedia *ifm;
 i = _splraise(6);
 xl_reset(sc);
 _splx(i);
 if (xl_read_eeprom(sc, (caddr_t)&enaddr, 0x0A, 3, 1)) {
  printf("\n%s: failed to read station address\n",
      sc->sc_dev.dv_xname);
  return;
 }
 __builtin_memcpy((&sc->sc_arpcom.ac_enaddr), (enaddr), (6));
 if (bus_dmamem_alloc(sc->sc_dmat, sizeof(struct xl_list_data),
     (1 << 13), 0, sc->sc_listseg, 1, &sc->sc_listnseg,
     0x0001 | 0x0800) != 0) {
  printf(": can't alloc list mem\n");
  return;
 }
 if (bus_dmamem_map(sc->sc_dmat, sc->sc_listseg, sc->sc_listnseg,
     sizeof(struct xl_list_data), &sc->sc_listkva,
     0x0001) != 0) {
  printf(": can't map list mem\n");
  return;
 }
 if (bus_dmamap_create(sc->sc_dmat, sizeof(struct xl_list_data), 1,
     sizeof(struct xl_list_data), 0, 0x0001,
     &sc->sc_listmap) != 0) {
  printf(": can't alloc list map\n");
  return;
 }
 if (bus_dmamap_load(sc->sc_dmat, sc->sc_listmap, sc->sc_listkva,
     sizeof(struct xl_list_data), ((void *)0), 0x0001) != 0) {
  printf(": can't load list map\n");
  return;
 }
 sc->xl_ldata = (struct xl_list_data *)sc->sc_listkva;
 for (i = 0; i < 32; i++) {
  if (bus_dmamap_create(sc->sc_dmat, (1 << 11), 1, (1 << 11),
      0, 0x0001,
      &sc->xl_cdata.xl_rx_chain[i].map) != 0) {
   printf(": can't create rx map\n");
   return;
  }
 }
 if (bus_dmamap_create(sc->sc_dmat, (1 << 11), 1, (1 << 11), 0,
     0x0001, &sc->sc_rx_sparemap) != 0) {
  printf(": can't create rx spare map\n");
  return;
 }
 for (i = 0; i < 32; i++) {
  if (bus_dmamap_create(sc->sc_dmat, (1 << 11),
      32 - 3, (1 << 11), 0, 0x0001,
      &sc->xl_cdata.xl_tx_chain[i].map) != 0) {
   printf(": can't create tx map\n");
   return;
  }
 }
 if (bus_dmamap_create(sc->sc_dmat, (1 << 11), 32 - 3,
     (1 << 11), 0, 0x0001, &sc->sc_tx_sparemap) != 0) {
  printf(": can't create tx spare map\n");
  return;
 }
 printf(", address %s\n", ether_sprintf(sc->sc_arpcom.ac_enaddr));
 if (sc->xl_flags & (0x0020|0x0040)) {
  u_int16_t n;
  bus_space_write_2(sc->xl_btag, sc->xl_bhandle, 0x0E, 0x0800 | 2);
  n = bus_space_read_2(sc->xl_btag, sc->xl_bhandle, 12);
  if (sc->xl_flags & 0x0020)
   n |= 0x0010;
  if (sc->xl_flags & 0x0040)
   n |= 0x4000;
  bus_space_write_2(sc->xl_btag, sc->xl_bhandle, 12, n);
 }
 xl_read_eeprom(sc, (caddr_t)&sc->xl_caps, 0x10, 1, 0);
 if (sc->xl_caps & 0x0200 ||
     !(sc->xl_caps & 0x0004))
  sc->xl_type = 1;
 else
  sc->xl_type = 2;
 sc->xl_tx_thresh = 60;
 timeout_set(&sc->xl_stsup_tmo, xl_stats_update, sc);
 ifp->if_softc = sc;
 ifp->if_flags = 0x2 | 0x800 | 0x8000;
 ifp->if_ioctl = xl_ioctl;
 if (sc->xl_type == 1)
  ifp->if_start = xl_start_90xB;
 else
  ifp->if_start = xl_start;
 ifp->if_watchdog = xl_watchdog;
 ifp->if_data.ifi_baudrate = 10000000;
 ((&ifp->if_snd)->ifq_maxlen = (32 - 1));
 __builtin_memcpy((ifp->if_xname), (sc->sc_dev.dv_xname), (16));
 ifp->if_data.ifi_capabilities = 0x00000010;
 bus_space_write_2(sc->xl_btag, sc->xl_bhandle, 0x0E, 0x0800 | 3);
 sc->xl_media = bus_space_read_2(sc->xl_btag, sc->xl_bhandle, 0x08);
 xl_read_eeprom(sc, (char *)&xcvr, 0x12, 2, 0);
 sc->xl_xcvr = xcvr[0] | xcvr[1] << 16;
 sc->xl_xcvr &= 0x00F00000;
 sc->xl_xcvr >>= 20;
 xl_mediacheck(sc);
 if (sc->xl_media & 0x0040 || sc->xl_media & 0x0002
     || sc->xl_media & 0x0001) {
  ifmedia_init(&sc->sc_mii.mii_media, 0,
      xl_ifmedia_upd, xl_ifmedia_sts);
  sc->xl_hasmii = 1;
  sc->sc_mii.mii_ifp = ifp;
  sc->sc_mii.mii_readreg = xl_miibus_readreg;
  sc->sc_mii.mii_writereg = xl_miibus_writereg;
  sc->sc_mii.mii_statchg = xl_miibus_statchg;
  xl_setcfg(sc);
  mii_attach((struct device *)sc, &sc->sc_mii, 0xffffffff,
      -1, -1, 0);
  if (((&sc->sc_mii.mii_phys)->lh_first) == ((void *)0)) {
   ifmedia_add(&sc->sc_mii.mii_media, 0x0000000000000100ULL|2ULL,
       0, ((void *)0));
   ifmedia_set(&sc->sc_mii.mii_media, 0x0000000000000100ULL|2ULL);
  }
  else {
   ifmedia_set(&sc->sc_mii.mii_media, 0x0000000000000100ULL|0ULL);
  }
  ifm = &sc->sc_mii.mii_media;
 }
 else {
  ifmedia_init(&sc->ifmedia, 0, xl_ifmedia_upd, xl_ifmedia_sts);
  sc->xl_hasmii = 0;
  ifm = &sc->ifmedia;
 }
 if (sc->xl_xcvr == 0x08)
  xl_choose_xcvr(sc, 0);
 if (sc->xl_media & 0x0008) {
  ifmedia_add(ifm, 0x0000000000000100ULL|3, 0, ((void *)0));
  ifmedia_add(ifm, 0x0000000000000100ULL|3|0x0000020000000000ULL, 0, ((void *)0));
  if (sc->xl_caps & 0x0002)
   ifmedia_add(ifm, 0x0000000000000100ULL|3|0x0000010000000000ULL, 0, ((void *)0));
 }
 if (sc->xl_media & (0x0020|0x0100)) {
  if (sc->xl_type == 1 &&
      sc->xl_media == 0x0100) {
   ifmedia_add(ifm, 0x0000000000000100ULL|13, 0, ((void *)0));
   ifmedia_add(ifm, 0x0000000000000100ULL|13|0x0000020000000000ULL,
       0, ((void *)0));
   if (sc->xl_caps & 0x0002)
    ifmedia_add(ifm,
        0x0000000000000100ULL|13|0x0000010000000000ULL, 0, ((void *)0));
  } else {
   ifmedia_add(ifm, 0x0000000000000100ULL|5, 0, ((void *)0));
  }
 }
 if (sc->xl_media & 0x0010) {
  ifmedia_add(ifm, 0x0000000000000100ULL|4, 0, ((void *)0));
 }
 if (sc->xl_media & 0x0004) {
  ifp->if_data.ifi_baudrate = 100000000;
  ifmedia_add(ifm, 0x0000000000000100ULL|7, 0, ((void *)0));
 }
 switch(sc->xl_xcvr) {
 case 0x00:
  media = 0x0000000000000100ULL|3;
  xl_setmode(sc, media);
  break;
 case 0x01:
  if (sc->xl_type == 1 &&
      sc->xl_media == 0x0100) {
   media = 0x0000000000000100ULL|13;
   xl_setmode(sc, media);
  } else {
   media = 0x0000000000000100ULL|5;
   xl_setmode(sc, media);
  }
  break;
 case 0x03:
  media = 0x0000000000000100ULL|4;
  xl_setmode(sc, media);
  break;
 case 0x08:
 case 0x04:
 case 0x06:
  break;
 case 0x05:
  media = 0x0000000000000100ULL|7;
  xl_setmode(sc, media);
  break;
 default:
  printf("%s: unknown XCVR type: %d\n", sc->sc_dev.dv_xname,
       sc->xl_xcvr);
  media = 0x0000000000000100ULL | 3;
  break;
 }
 if (sc->xl_hasmii == 0)
  ifmedia_set(&sc->ifmedia, media);
 if (sc->xl_flags & 0x0080) {
  bus_space_write_2(sc->xl_btag, sc->xl_bhandle, 0x0E, 0x0800 | 0);
  bus_space_write_2(sc->xl_btag, sc->xl_bhandle, 0x00, 0x0900);
 }
 if ((sc->xl_caps & 0x2000) != 0) {
  ifp->if_data.ifi_capabilities |= 0x00008000;
  ifp->if_wol = xl_wol;
  xl_wol(ifp, 0);
 }
 if_attach(ifp);
 ether_ifattach(ifp);
}
int
xl_detach(struct xl_softc *sc)
{
 struct ifnet *ifp = &sc->sc_arpcom.ac_if;
 extern void xl_freetxrx(struct xl_softc *);
 timeout_del(&sc->xl_stsup_tmo);
 xl_freetxrx(sc);
 if (sc->xl_hasmii)
  mii_detach(&sc->sc_mii, -1, -1);
 ifmedia_delete_instance(&sc->sc_mii.mii_media, ((uint64_t) -1));
 ether_ifdetach(ifp);
 if_detach(ifp);
 return (0);
}
int
xl_wol(struct ifnet *ifp, int enable)
{
 struct xl_softc *sc = ifp->if_softc;
 bus_space_write_2(sc->xl_btag, sc->xl_bhandle, 0x0E, 0x0800 | 7);
 if (enable) {
  if (!(ifp->if_flags & 0x40))
   xl_init(sc);
  bus_space_write_2(sc->xl_btag, sc->xl_bhandle, 0x0C, 0x0002);
  sc->xl_flags |= 0x0400;
 } else {
  bus_space_write_2(sc->xl_btag, sc->xl_bhandle, 0x0C, 0);
  sc->xl_flags &= ~0x0400;
 }
 return (0);
}
struct cfdriver xl_cd = {
 0, "xl", DV_IFNET
};
