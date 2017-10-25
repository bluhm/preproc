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
int suser(struct proc *p, u_int flags);
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
 volatile int spc_barrier;
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
 int ci_number;
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
int __mp_lock_held(struct __mp_lock *);
extern struct __mp_lock kernel_lock;
typedef __builtin_va_list __gnuc_va_list;
typedef __gnuc_va_list va_list;
extern int securelevel;
extern const char *panicstr;
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
void arc4random_buf(void *, size_t)
  __attribute__ ((__bounded__(__buffer__,1,2)));
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
struct ahci_cmd_hdr {
 u_int16_t flags;
 u_int16_t prdtl;
 u_int32_t prdbc;
 u_int64_t ctba;
 u_int32_t reserved[4];
} __attribute__((__packed__)) __attribute__((__aligned__(8)));
struct ahci_rfis {
 u_int8_t dsfis[28];
 u_int8_t reserved1[4];
 u_int8_t psfis[24];
 u_int8_t reserved2[8];
 u_int8_t rfis[24];
 u_int8_t reserved3[4];
 u_int8_t sdbfis[4];
 u_int8_t ufis[64];
 u_int8_t reserved4[96];
} __attribute__((__packed__));
struct ahci_prdt {
 u_int64_t dba;
 u_int32_t reserved;
 u_int32_t flags;
} __attribute__((__packed__)) __attribute__((__aligned__(8)));
struct ahci_cmd_table {
 u_int8_t cfis[64];
 u_int8_t acmd[16];
 u_int8_t reserved[48];
 struct ahci_prdt prdt[24];
} __attribute__((__packed__)) __attribute__((__aligned__(128)));
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
void timeout_startup(void);
void timeout_adjust_ticks(int);
int timeout_hardclock_update(void);
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
void task_set(struct task *, void (*)(void *), void *);
int task_add(struct taskq *, struct task *);
int task_del(struct taskq *, struct task *);
struct atascsi;
struct scsi_link;
struct ata_identify {
 u_int16_t config;
 u_int16_t ncyls;
 u_int16_t reserved1;
 u_int16_t nheads;
 u_int16_t track_size;
 u_int16_t sector_size;
 u_int16_t nsectors;
 u_int16_t reserved2[3];
 u_int8_t serial[20];
 u_int16_t buffer_type;
 u_int16_t buffer_size;
 u_int16_t ecc;
 u_int8_t firmware[8];
 u_int8_t model[40];
 u_int16_t multi;
 u_int16_t dwcap;
 u_int16_t cap;
 u_int16_t reserved3;
 u_int16_t piomode;
 u_int16_t dmamode;
 u_int16_t validinfo;
 u_int16_t curcyls;
 u_int16_t curheads;
 u_int16_t cursectrk;
 u_int16_t curseccp[2];
 u_int16_t mult2;
 u_int16_t addrsec[2];
 u_int16_t worddma;
 u_int16_t dworddma;
 u_int16_t advpiomode;
 u_int16_t minmwdma;
 u_int16_t recmwdma;
 u_int16_t minpio;
 u_int16_t minpioflow;
 u_int16_t add_support;
 u_int16_t reserved4;
 u_int16_t typtime[2];
 u_int16_t reserved5[2];
 u_int16_t qdepth;
 u_int16_t satacap;
 u_int16_t reserved6;
 u_int16_t satafsup;
 u_int16_t satafen;
 u_int16_t majver;
 u_int16_t minver;
 u_int16_t cmdset82;
 u_int16_t cmdset83;
 u_int16_t cmdset84;
 u_int16_t features85;
 u_int16_t features86;
 u_int16_t features87;
 u_int16_t ultradma;
 u_int16_t erasetime;
 u_int16_t erasetimex;
 u_int16_t apm;
 u_int16_t masterpw;
 u_int16_t hwreset;
 u_int16_t acoustic;
 u_int16_t stream_min;
 u_int16_t stream_xfer_d;
 u_int16_t stream_lat;
 u_int16_t streamperf[2];
 u_int16_t addrsecxt[4];
 u_int16_t stream_xfer_p;
 u_int16_t padding1;
 u_int16_t p2l_sect;
 u_int16_t seek_delay;
 u_int16_t naa_ieee_oui;
 u_int16_t ieee_oui_uid;
 u_int16_t uid_mid;
 u_int16_t uid_low;
 u_int16_t resv_wwn[4];
 u_int16_t incits;
 u_int16_t words_lsec[2];
 u_int16_t cmdset119;
 u_int16_t features120;
 u_int16_t padding2[6];
 u_int16_t rmsn;
 u_int16_t securestatus;
 u_int16_t vendor[31];
 u_int16_t padding3[8];
 u_int16_t form;
 u_int16_t data_set_mgmt;
 u_int16_t padding4[6];
 u_int16_t curmedser[30];
 u_int16_t sctsupport;
 u_int16_t rpm;
 u_int16_t padding5[1];
 u_int16_t logical_align;
 u_int16_t padding6[45];
 u_int16_t integrity;
} __attribute__((__packed__));
struct ata_fis_h2d {
 u_int8_t type;
 u_int8_t flags;
 u_int8_t command;
 u_int8_t features;
 u_int8_t lba_low;
 u_int8_t lba_mid;
 u_int8_t lba_high;
 u_int8_t device;
 u_int8_t lba_low_exp;
 u_int8_t lba_mid_exp;
 u_int8_t lba_high_exp;
 u_int8_t features_exp;
 u_int8_t sector_count;
 u_int8_t sector_count_exp;
 u_int8_t reserved0;
 u_int8_t control;
 u_int8_t reserved1;
 u_int8_t reserved2;
 u_int8_t reserved3;
 u_int8_t reserved4;
} __attribute__((__packed__));
struct ata_fis_d2h {
 u_int8_t type;
 u_int8_t flags;
 u_int8_t status;
 u_int8_t error;
 u_int8_t lba_low;
 u_int8_t lba_mid;
 u_int8_t lba_high;
 u_int8_t device;
 u_int8_t lba_low_exp;
 u_int8_t lba_mid_exp;
 u_int8_t lba_high_exp;
 u_int8_t reserved0;
 u_int8_t sector_count;
 u_int8_t sector_count_exp;
 u_int8_t reserved1;
 u_int8_t reserved2;
 u_int8_t reserved3;
 u_int8_t reserved4;
 u_int8_t reserved5;
 u_int8_t reserved6;
} __attribute__((__packed__));
struct ata_log_page_10h {
 struct ata_fis_d2h err_regs;
 u_int8_t reserved[256 - sizeof(struct ata_fis_d2h)];
 u_int8_t vendor_specific[255];
 u_int8_t checksum;
} __attribute__((__packed__));
struct ata_xfer {
 struct ata_fis_h2d *fis;
 struct ata_fis_d2h rfis;
 u_int8_t *packetcmd;
 u_int8_t tag;
 void *data;
 size_t datalen;
 size_t resid;
 void (*complete)(struct ata_xfer *);
 struct task task;
 struct timeout stimeout;
 u_int timeout;
 int flags;
 volatile int state;
 void *atascsi_private;
 int pmp_port;
};
struct atascsi_methods {
 int (*ata_probe)(void *, int, int);
 void (*ata_free)(void *, int, int);
 struct ata_xfer * (*ata_get_xfer)(void *, int);
 void (*ata_put_xfer)(struct ata_xfer *);
 void (*ata_cmd)(struct ata_xfer *);
};
struct atascsi_attach_args {
 void *aaa_cookie;
 struct atascsi_methods *aaa_methods;
 void (*aaa_minphys)(struct buf *,
        struct scsi_link *);
 int aaa_nports;
 int aaa_ncmds;
 int aaa_capability;
};
struct atascsi *atascsi_attach(struct device *, struct atascsi_attach_args *);
int atascsi_detach(struct atascsi *, int);
int atascsi_probe_dev(struct atascsi *, int, int);
int atascsi_detach_dev(struct atascsi *, int, int, int);
void ata_complete(struct ata_xfer *);
struct ahci_dmamem {
 bus_dmamap_t adm_map;
 bus_dma_segment_t adm_seg;
 size_t adm_size;
 caddr_t adm_kva;
};
struct ahci_softc;
struct ahci_port;
struct ahci_ccb {
 struct ata_xfer ccb_xa;
 int ccb_slot;
 struct ahci_port *ccb_port;
 bus_dmamap_t ccb_dmamap;
 struct ahci_cmd_hdr *ccb_cmd_hdr;
 struct ahci_cmd_table *ccb_cmd_table;
 void (*ccb_done)(struct ahci_ccb *);
 struct { struct ahci_ccb *tqe_next; struct ahci_ccb **tqe_prev; } ccb_entry;
};
struct ahci_port {
 struct ahci_softc *ap_sc;
 bus_space_handle_t ap_ioh;
 struct ahci_rfis *ap_rfis;
 struct ahci_dmamem *ap_dmamem_rfis;
 struct ahci_dmamem *ap_dmamem_cmd_list;
 struct ahci_dmamem *ap_dmamem_cmd_table;
 volatile u_int32_t ap_active;
 volatile u_int32_t ap_active_cnt;
 volatile u_int32_t ap_sactive;
 volatile u_int32_t ap_pmp_ncq_port;
 struct ahci_ccb *ap_ccbs;
 struct { struct ahci_ccb *tqh_first; struct ahci_ccb **tqh_last; } ap_ccb_free;
 struct { struct ahci_ccb *tqh_first; struct ahci_ccb **tqh_last; } ap_ccb_pending;
 struct mutex ap_ccb_mtx;
 struct ahci_ccb *ap_ccb_err;
 u_int32_t ap_state;
 int ap_pmp_ports;
 int ap_port;
 int ap_pmp_ignore_ifs;
 int ap_err_busy;
 u_int32_t ap_err_saved_sactive;
 u_int32_t ap_err_saved_active;
 u_int32_t ap_err_saved_active_cnt;
 u_int32_t ap_saved_cmd;
 u_int8_t *ap_err_scratch;
};
struct ahci_softc {
 struct device sc_dev;
 void *sc_ih;
 bus_space_tag_t sc_iot;
 bus_space_handle_t sc_ioh;
 bus_size_t sc_ios;
 bus_dma_tag_t sc_dmat;
 int sc_flags;
 u_int sc_ncmds;
 struct ahci_port *sc_ports[32];
 struct atascsi *sc_atascsi;
 u_int32_t sc_cap;
 int (*sc_port_start)(struct ahci_port *, int);
};
int ahci_attach(struct ahci_softc *);
int ahci_detach(struct ahci_softc *, int);
int ahci_activate(struct device *, int);
int ahci_intr(void *);
struct cfdriver ahci_cd = {
 ((void *)0), "ahci", DV_DULL
};
void ahci_enable_interrupts(struct ahci_port *);
int ahci_init(struct ahci_softc *);
int ahci_port_alloc(struct ahci_softc *, u_int);
void ahci_port_detect(struct ahci_softc *, u_int);
void ahci_port_free(struct ahci_softc *, u_int);
int ahci_port_init(struct ahci_softc *, u_int);
int ahci_default_port_start(struct ahci_port *, int);
int ahci_port_stop(struct ahci_port *, int);
int ahci_port_clo(struct ahci_port *);
int ahci_port_softreset(struct ahci_port *);
void ahci_port_comreset(struct ahci_port *);
int ahci_port_portreset(struct ahci_port *, int);
void ahci_port_portreset_start(struct ahci_port *);
int ahci_port_portreset_poll(struct ahci_port *);
void ahci_port_portreset_wait(struct ahci_port *);
int ahci_port_portreset_finish(struct ahci_port *, int);
int ahci_port_signature(struct ahci_port *);
int ahci_pmp_port_softreset(struct ahci_port *, int);
int ahci_pmp_port_portreset(struct ahci_port *, int);
int ahci_pmp_port_probe(struct ahci_port *ap, int pmp_port);
int ahci_load_prdt(struct ahci_ccb *);
void ahci_load_prdt_seg(struct ahci_prdt *, u_int64_t,
       u_int32_t, u_int32_t);
void ahci_unload_prdt(struct ahci_ccb *);
int ahci_poll(struct ahci_ccb *, int, void (*)(void *));
void ahci_start(struct ahci_ccb *);
void ahci_issue_pending_ncq_commands(struct ahci_port *);
void ahci_issue_pending_commands(struct ahci_port *, int);
int ahci_intr(void *);
u_int32_t ahci_port_intr(struct ahci_port *, u_int32_t);
struct ahci_ccb *ahci_get_ccb(struct ahci_port *);
void ahci_put_ccb(struct ahci_ccb *);
struct ahci_ccb *ahci_get_err_ccb(struct ahci_port *);
void ahci_put_err_ccb(struct ahci_ccb *);
struct ahci_ccb *ahci_get_pmp_ccb(struct ahci_port *);
void ahci_put_pmp_ccb(struct ahci_ccb *);
int ahci_port_read_ncq_error(struct ahci_port *, int *, int);
struct ahci_dmamem *ahci_dmamem_alloc(struct ahci_softc *, size_t);
void ahci_dmamem_free(struct ahci_softc *,
       struct ahci_dmamem *);
u_int32_t ahci_read(struct ahci_softc *, bus_size_t);
void ahci_write(struct ahci_softc *, bus_size_t, u_int32_t);
int ahci_wait_ne(struct ahci_softc *, bus_size_t,
       u_int32_t, u_int32_t);
u_int32_t ahci_pread(struct ahci_port *, bus_size_t);
void ahci_pwrite(struct ahci_port *, bus_size_t, u_int32_t);
int ahci_pwait_eq(struct ahci_port *, bus_size_t,
       u_int32_t, u_int32_t, int);
void ahci_flush_tfd(struct ahci_port *ap);
u_int32_t ahci_active_mask(struct ahci_port *);
int ahci_port_detect_pmp(struct ahci_port *);
void ahci_pmp_probe_timeout(void *);
int ahci_pmp_read(struct ahci_port *, int, int,
       u_int32_t *);
int ahci_pmp_write(struct ahci_port *, int, int, u_int32_t);
int ahci_pmp_phy_status(struct ahci_port *, int,
       u_int32_t *);
int ahci_pmp_identify(struct ahci_port *, int *);
int ahci_ata_probe(void *, int, int);
void ahci_ata_free(void *, int, int);
struct ata_xfer * ahci_ata_get_xfer(void *, int);
void ahci_ata_put_xfer(struct ata_xfer *);
void ahci_ata_cmd(struct ata_xfer *);
struct atascsi_methods ahci_atascsi_methods = {
 ahci_ata_probe,
 ahci_ata_free,
 ahci_ata_get_xfer,
 ahci_ata_put_xfer,
 ahci_ata_cmd
};
void ahci_ata_cmd_done(struct ahci_ccb *);
void ahci_pmp_cmd_done(struct ahci_ccb *);
void ahci_ata_cmd_timeout(void *);
void ahci_empty_done(struct ahci_ccb *);
int
ahci_attach(struct ahci_softc *sc)
{
 struct atascsi_attach_args aaa;
 u_int32_t pi;
 int i, j, done;
 if (sc->sc_port_start == ((void *)0))
  sc->sc_port_start = ahci_default_port_start;
 if (ahci_init(sc) != 0) {
  goto unmap;
 }
 printf("\n");
 sc->sc_cap = ahci_read(sc, 0x000);
 sc->sc_ncmds = ((((sc->sc_cap) & 0x1f00)>>8)+1);
 pi = ahci_read(sc, 0x00c);
 ;
 sc->sc_ncmds = max(2, sc->sc_ncmds);
 for (i = 0; i < 32; i++) {
  if (!((pi) & (1 << i))) {
   continue;
  }
  if (ahci_port_alloc(sc, i) == 12)
   goto freeports;
  if (sc->sc_ports[i] != ((void *)0))
   ahci_port_portreset_start(sc->sc_ports[i]);
 }
 for (i = 0; i < 1000; i++) {
  done = 1;
  for (j = 0; j < 32; j++) {
   if (sc->sc_ports[j] == ((void *)0))
    continue;
   if (ahci_port_portreset_poll(sc->sc_ports[j]))
    done = 0;
  }
  if (done)
   break;
  delay(1000);
 }
 for (i = 0; i < 32; i++) {
  if (sc->sc_ports[i] != ((void *)0))
   ahci_port_detect(sc, i);
 }
 __builtin_memset((&aaa), (0), (sizeof(aaa)));
 aaa.aaa_cookie = sc;
 aaa.aaa_methods = &ahci_atascsi_methods;
 aaa.aaa_minphys = ((void *)0);
 aaa.aaa_nports = 32;
 aaa.aaa_ncmds = sc->sc_ncmds - 1;
 if (!(sc->sc_flags & (1<<0)) &&
     sc->sc_ncmds > 2 &&
     (sc->sc_cap & (1<<30))) {
  aaa.aaa_capability |= (1 << 0) | (1 << 2);
 }
 sc->sc_atascsi = atascsi_attach(&sc->sc_dev, &aaa);
 ahci_write(sc, 0x004, (1<<31) | (1<<1));
 return 0;
freeports:
 for (i = 0; i < 32; i++) {
  if (sc->sc_ports[i] != ((void *)0))
   ahci_port_free(sc, i);
 }
unmap:
 ahci_write(sc, 0x004, 0);
 return 1;
}
int
ahci_detach(struct ahci_softc *sc, int flags)
{
 int rv, i;
 if (sc->sc_atascsi != ((void *)0)) {
  rv = atascsi_detach(sc->sc_atascsi, flags);
  if (rv != 0)
   return (rv);
 }
 for (i = 0; i < 32; i++) {
  if (sc->sc_ports[i] != ((void *)0))
   ahci_port_free(sc, i);
 }
 return (0);
}
int
ahci_activate(struct device *self, int act)
{
 struct ahci_softc *sc = (struct ahci_softc *)self;
 int i, rv = 0;
 switch (act) {
 case 4:
  ahci_write(sc, 0x004, (1<<31));
  ahci_write(sc, 0x000, sc->sc_cap);
  for (i = 0; i < 32; i++) {
   if (sc->sc_ports[i] != ((void *)0))
    ahci_port_init(sc, i);
  }
  ahci_write(sc, 0x004, (1<<31) | (1<<1));
  rv = config_activate_children(self, act);
  break;
 case 6:
  rv = config_activate_children(self, act);
  for (i = 0; i < 32; i++) {
   if (sc->sc_ports[i] != ((void *)0))
    ahci_port_stop(sc->sc_ports[i], 1);
  }
  break;
 default:
  rv = config_activate_children(self, act);
  break;
 }
 return (rv);
}
int
ahci_init(struct ahci_softc *sc)
{
 u_int32_t reg64, cap, pi;
 const char *revision;
 ;
 cap = ahci_read(sc, 0x000);
 cap &= (1<<28);
 cap |= (1<<27);
 pi = ahci_read(sc, 0x00c);
 if ((((1<<31)) & (ahci_read(sc, 0x004)))) {
  ahci_write(sc, 0x004, (1<<0));
  if (ahci_wait_ne(sc, 0x004, (1<<0),
      (1<<0)) != 0) {
   printf(" unable to reset controller\n");
   return (1);
  }
 }
 ahci_write(sc, 0x004, (1<<31));
 ahci_write(sc, 0x000, cap);
 ahci_write(sc, 0x00c, pi);
 reg64 = ahci_read(sc, 0x010);
 switch (reg64) {
 case 0x00000905:
  revision = "0.95";
  break;
 case 0x00010000:
  revision = "1.0";
  break;
 case 0x00010100:
  revision = "1.1";
  break;
 case 0x00010200:
  revision = "1.2";
  break;
 case 0x00010300:
  revision = "1.3";
  break;
 case 0x00010301:
  revision = "1.3.1";
  break;
 default:
  printf(" unsupported AHCI revision 0x%08x\n", reg64);
  return (1);
 }
 printf(" AHCI %s", revision);
 return (0);
}
void
ahci_enable_interrupts(struct ahci_port *ap)
{
 ahci_pwrite(ap, 0x14, (1<<30) | (1<<29) |
     (1<<27) | (1<<24) | (1<<5) |
     (1<<4) |
     ((ap->ap_sc->sc_cap & (1<<29)) ? (1<<23) : 0) |
     (1<<3) | (1<<0)
     );
}
int
ahci_port_alloc(struct ahci_softc *sc, u_int port)
{
 struct ahci_port *ap;
 struct ahci_ccb *ccb;
 u_int64_t dva;
 u_int32_t cmd;
 struct ahci_cmd_hdr *hdr;
 struct ahci_cmd_table *table;
 int i, rc = 12;
 ap = malloc(sizeof(*ap), 2, 0x0002 | 0x0008);
 if (ap == ((void *)0)) {
  printf("%s: unable to allocate memory for port %d\n",
      ((sc)->sc_dev.dv_xname), port);
  goto reterr;
 }
 ap->ap_err_scratch = dma_alloc((1 << 9), 0x0002 | 0x0008);
 if (ap->ap_err_scratch == ((void *)0)) {
  printf("%s: unable to allocate DMA scratch buf for port %d\n",
      ((sc)->sc_dev.dv_xname), port);
  free(ap, 2, sizeof(*ap));
  goto reterr;
 }
 ap->ap_port = port;
 sc->sc_ports[port] = ap;
 if (bus_space_subregion(sc->sc_iot, sc->sc_ioh,
     (0x100 + ((port) * 0x80)), 0x80, &ap->ap_ioh) != 0) {
  printf("%s: unable to create register window for port %d\n",
      ((sc)->sc_dev.dv_xname), port);
  goto freeport;
 }
 ap->ap_sc = sc;
 do { (&ap->ap_ccb_free)->tqh_first = ((void *)0); (&ap->ap_ccb_free)->tqh_last = &(&ap->ap_ccb_free)->tqh_first; } while (0);
 do { (&ap->ap_ccb_pending)->tqh_first = ((void *)0); (&ap->ap_ccb_pending)->tqh_last = &(&ap->ap_ccb_pending)->tqh_first; } while (0);
 do { (void)(((void *)0)); (void)(0); __mtx_init((&ap->ap_ccb_mtx), ((((5)) > 0 && ((5)) < 12) ? 12 : ((5)))); } while (0);
 ahci_pwrite(ap, 0x14, 0);
 cmd = ahci_pread(ap, 0x18);
 if (((cmd) & (((1<<0) | (1<<15) | (1<<4) | (1<<14)))) ||
     ((ahci_pread(ap, 0x2c)) & (0xf))) {
  int r;
  r = ahci_port_stop(ap, 1);
  if (r) {
   printf("%s: unable to disable %s, ignoring port %d\n",
       ((sc)->sc_dev.dv_xname), r == 2 ? "CR" : "FR", port);
   rc = 6;
   goto freeport;
  }
  ahci_pwrite(ap, 0x2c, 0);
 }
 ap->ap_dmamem_rfis = ahci_dmamem_alloc(sc, sizeof(struct ahci_rfis));
 if (ap->ap_dmamem_rfis == ((void *)0))
  goto nomem;
 ap->ap_rfis = (struct ahci_rfis *) ((void *)(ap->ap_dmamem_rfis)->adm_kva);
 dva = ((u_int64_t)(ap->ap_dmamem_rfis)->adm_map->dm_segs[0].ds_addr);
 ahci_pwrite(ap, 0x0c, (u_int32_t)(dva >> 32));
 ahci_pwrite(ap, 0x08, (u_int32_t)dva);
 cmd = ahci_pread(ap, 0x18) & ~0xf0000000;
 cmd |= (1<<4) | (1<<2) | (1<<1);
 ahci_pwrite(ap, 0x18, cmd | 0x10000000);
 cmd = ahci_pread(ap, 0x18) & ~0xf0000000;
 if (!((cmd) & ((1<<4)))) {
  rc = 6;
  goto freeport;
 }
 ap->ap_ccbs = mallocarray(sc->sc_ncmds, sizeof(struct ahci_ccb),
     2, 0x0002 | 0x0008);
 if (ap->ap_ccbs == ((void *)0)) {
  printf("%s: unable to allocate command list for port %d\n",
      ((sc)->sc_dev.dv_xname), port);
  goto freeport;
 }
 ap->ap_dmamem_cmd_list = ahci_dmamem_alloc(sc,
     sc->sc_ncmds * sizeof(struct ahci_cmd_hdr));
 ap->ap_dmamem_cmd_table = ahci_dmamem_alloc(sc,
     sc->sc_ncmds * sizeof(struct ahci_cmd_table));
 if (ap->ap_dmamem_cmd_table == ((void *)0) || ap->ap_dmamem_cmd_list == ((void *)0)) {
nomem:
  printf("%s: unable to allocate DMA memory for port %d\n",
      ((sc)->sc_dev.dv_xname), port);
  goto freeport;
 }
 dva = ((u_int64_t)(ap->ap_dmamem_cmd_list)->adm_map->dm_segs[0].ds_addr);
 ahci_pwrite(ap, 0x04, (u_int32_t)(dva >> 32));
 ahci_pwrite(ap, 0x00, (u_int32_t)dva);
 hdr = ((void *)(ap->ap_dmamem_cmd_list)->adm_kva);
 table = ((void *)(ap->ap_dmamem_cmd_table)->adm_kva);
 for (i = 0; i < sc->sc_ncmds; i++) {
  ccb = &ap->ap_ccbs[i];
  if (bus_dmamap_create(sc->sc_dmat, (64 * 1024), 24,
      (4 * 1024 * 1024), 0, 0x0001 | 0x0002,
      &ccb->ccb_dmamap) != 0) {
   printf("%s: unable to create dmamap for port %d "
       "ccb %d\n", ((sc)->sc_dev.dv_xname), port, i);
   goto freeport;
  }
  ccb->ccb_slot = i;
  ccb->ccb_port = ap;
  ccb->ccb_cmd_hdr = &hdr[i];
  ccb->ccb_cmd_table = &table[i];
  __swapm64((&ccb->ccb_cmd_hdr->ctba), (((u_int64_t)(ap->ap_dmamem_cmd_table)->adm_map->dm_segs[0].ds_addr) + ccb->ccb_slot * sizeof(struct ahci_cmd_table)));
  ccb->ccb_xa.fis =
      (struct ata_fis_h2d *)ccb->ccb_cmd_table->cfis;
  ccb->ccb_xa.packetcmd = ccb->ccb_cmd_table->acmd;
  ccb->ccb_xa.tag = i;
  ccb->ccb_xa.state = 2;
  ahci_put_ccb(ccb);
 }
 ap->ap_ccb_err = &ap->ap_ccbs[sc->sc_ncmds - 1];
 do { if (((ap->ap_ccb_err)->ccb_entry.tqe_next) != ((void *)0)) (ap->ap_ccb_err)->ccb_entry.tqe_next->ccb_entry.tqe_prev = (ap->ap_ccb_err)->ccb_entry.tqe_prev; else (&ap->ap_ccb_free)->tqh_last = (ap->ap_ccb_err)->ccb_entry.tqe_prev; *(ap->ap_ccb_err)->ccb_entry.tqe_prev = (ap->ap_ccb_err)->ccb_entry.tqe_next; ((ap->ap_ccb_err)->ccb_entry.tqe_prev) = ((void *)-1); ((ap->ap_ccb_err)->ccb_entry.tqe_next) = ((void *)-1); } while (0);
 ap->ap_ccb_err->ccb_xa.state = 2;
 ahci_pwait_eq((ap), (0x18), (0xf0000000), 0, (1));
 rc = 0;
freeport:
 if (rc != 0)
  ahci_port_free(sc, port);
reterr:
 return (rc);
}
void
ahci_port_detect(struct ahci_softc *sc, u_int port)
{
 struct ahci_port *ap;
 const char *speed;
 int rc;
 ap = sc->sc_ports[port];
 rc = ahci_port_portreset_finish(ap, 1);
 switch (rc) {
 case 19:
  switch (ahci_pread(ap, 0x28) & 0xf) {
  case 0x1:
   printf("%s: device not communicating on port %d\n",
       ((sc)->sc_dev.dv_xname), port);
   break;
  case 0x4:
   printf("%s: PHY offline on port %d\n", ((sc)->sc_dev.dv_xname),
       port);
   break;
  default:
   ;
   break;
  }
  goto freeport;
 case 16:
  printf("%s: device on port %d didn't come ready, "
      "TFD: 0x%b\n", ((sc)->sc_dev.dv_xname), port,
      ahci_pread(ap, 0x20), "\20" "\010BSY" "\004DRQ" "\001ERR");
  rc = ahci_port_softreset(ap);
  if (rc) {
   printf("%s: unable to communicate "
       "with device on port %d\n", ((sc)->sc_dev.dv_xname), port);
   goto freeport;
  }
  break;
 default:
  break;
 }
 ;
 switch(ahci_pread(ap, 0x28) & 0xf0) {
 case 0x10:
  speed = "1.5Gb/s";
  break;
 case 0x20:
  speed = "3.0Gb/s";
  break;
 case 0x30:
  speed = "6.0Gb/s";
  break;
 default:
  speed = ((void *)0);
  break;
 }
 if (speed != ((void *)0))
  printf("%s: port %d: %s\n", (((ap)->ap_sc)->sc_dev.dv_xname), port, speed);
 if (((ap)->ap_sc->sc_port_start((ap), (0)))) {
  printf("%s: failed to start command DMA on port %d, "
      "disabling\n", ((sc)->sc_dev.dv_xname), port);
  rc = 6;
 }
 ahci_pwrite(ap, 0x10, ahci_pread(ap, 0x10));
 ahci_write(sc, 0x008, 1 << port);
 ahci_enable_interrupts(ap);
freeport:
 if (rc != 0)
  ahci_port_free(sc, port);
}
void
ahci_port_free(struct ahci_softc *sc, u_int port)
{
 struct ahci_port *ap = sc->sc_ports[port];
 struct ahci_ccb *ccb;
 if (ap->ap_sc) {
  ahci_pwrite(ap, 0x18, 0);
  ahci_pwrite(ap, 0x14, 0);
  ahci_pwrite(ap, 0x10, ahci_pread(ap, 0x10));
  ahci_write(sc, 0x008, 1 << port);
 }
 if (ap->ap_ccb_err)
  ahci_put_ccb(ap->ap_ccb_err);
 if (ap->ap_ccbs) {
  while ((ccb = ahci_get_ccb(ap)) != ((void *)0))
   bus_dmamap_destroy(sc->sc_dmat, ccb->ccb_dmamap);
  free(ap->ap_ccbs, 2, sc->sc_ncmds * sizeof(*ccb));
 }
 if (ap->ap_dmamem_cmd_list)
  ahci_dmamem_free(sc, ap->ap_dmamem_cmd_list);
 if (ap->ap_dmamem_rfis)
  ahci_dmamem_free(sc, ap->ap_dmamem_rfis);
 if (ap->ap_dmamem_cmd_table)
  ahci_dmamem_free(sc, ap->ap_dmamem_cmd_table);
 if (ap->ap_err_scratch)
  dma_free(ap->ap_err_scratch, (1 << 9));
 free(ap, 2, sizeof(*ap));
 sc->sc_ports[port] = ((void *)0);
}
int
ahci_port_init(struct ahci_softc *sc, u_int port)
{
 struct ahci_port *ap;
 u_int64_t dva;
 u_int32_t cmd;
 int rc = 12;
 ap = sc->sc_ports[port];
 ahci_pwrite(ap, 0x14, 0);
 cmd = ahci_pread(ap, 0x18);
 if (((cmd) & (((1<<0) | (1<<15) | (1<<4) | (1<<14)))) ||
     ((ahci_pread(ap, 0x2c)) & (0xf))) {
  int r;
  r = ahci_port_stop(ap, 1);
  if (r) {
   printf("%s: unable to disable %s, ignoring port %d\n",
       ((sc)->sc_dev.dv_xname), r == 2 ? "CR" : "FR", port);
   rc = 6;
   goto reterr;
  }
  ahci_pwrite(ap, 0x2c, 0);
 }
 ap->ap_rfis = (struct ahci_rfis *) ((void *)(ap->ap_dmamem_rfis)->adm_kva);
 dva = ((u_int64_t)(ap->ap_dmamem_rfis)->adm_map->dm_segs[0].ds_addr);
 ahci_pwrite(ap, 0x0c, (u_int32_t)(dva >> 32));
 ahci_pwrite(ap, 0x08, (u_int32_t)dva);
 cmd = ahci_pread(ap, 0x18) & ~0xf0000000;
 cmd |= (1<<4) | (1<<2) | (1<<1);
 ahci_pwrite(ap, 0x18, cmd | 0x10000000);
 cmd = ahci_pread(ap, 0x18) & ~0xf0000000;
 if (!((cmd) & ((1<<4)))) {
  rc = 6;
  goto reterr;
 }
 dva = ((u_int64_t)(ap->ap_dmamem_cmd_list)->adm_map->dm_segs[0].ds_addr);
 ahci_pwrite(ap, 0x04, (u_int32_t)(dva >> 32));
 ahci_pwrite(ap, 0x00, (u_int32_t)dva);
 ahci_pwait_eq((ap), (0x18), (0xf0000000), 0, (1));
 rc = ahci_port_portreset(ap, 1);
 switch (rc) {
 case 19:
  switch (ahci_pread(ap, 0x28) & 0xf) {
  case 0x1:
   printf("%s: device not communicating on port %d\n",
       ((sc)->sc_dev.dv_xname), port);
   break;
  case 0x4:
   printf("%s: PHY offline on port %d\n", ((sc)->sc_dev.dv_xname),
       port);
   break;
  default:
   ;
   break;
  }
  goto reterr;
 case 16:
  printf("%s: device on port %d didn't come ready, "
      "TFD: 0x%b\n", ((sc)->sc_dev.dv_xname), port,
      ahci_pread(ap, 0x20), "\20" "\010BSY" "\004DRQ" "\001ERR");
  rc = ahci_port_softreset(ap);
  if (rc) {
   printf("%s: unable to communicate "
       "with device on port %d\n", ((sc)->sc_dev.dv_xname), port);
   goto reterr;
  }
  break;
 default:
  break;
 }
 ;
 if (ap->ap_pmp_ports > 0) {
  int p;
  for (p = 0; p < ap->ap_pmp_ports; p++) {
   int sig;
   if (ahci_pmp_port_softreset(ap, p)) {
    printf("%s.%d: unable to probe PMP port due to"
        " softreset failure\n", (((ap)->ap_sc)->sc_dev.dv_xname), p);
    continue;
   }
   sig = ahci_port_signature(ap);
   printf("%s.%d: port signature returned %d\n",
       (((ap)->ap_sc)->sc_dev.dv_xname), p, sig);
  }
 }
 if (((ap)->ap_sc->sc_port_start((ap), (0)))) {
  printf("%s: failed to start command DMA on port %d, "
      "disabling\n", ((sc)->sc_dev.dv_xname), port);
  rc = 6;
 }
 ahci_pwrite(ap, 0x10, ahci_pread(ap, 0x10));
 ahci_write(sc, 0x008, 1 << port);
 ahci_enable_interrupts(ap);
reterr:
 return (rc);
}
int
ahci_default_port_start(struct ahci_port *ap, int fre_only)
{
 u_int32_t r;
 r = ahci_pread(ap, 0x18) & ~0xf0000000;
 r |= (1<<4);
 if (!fre_only)
  r |= (1<<0);
 ahci_pwrite(ap, 0x18, r);
 if (!fre_only &&
     ahci_pwait_eq((ap), (0x18), ((1<<15)), ((1<<15)), (1)))
  return (1);
 return (0);
}
int
ahci_port_stop(struct ahci_port *ap, int stop_fis_rx)
{
 u_int32_t r;
 r = ahci_pread(ap, 0x18) & ~0xf0000000;
 r &= ~(1<<0);
 if (stop_fis_rx)
  r &= ~(1<<4);
 ahci_pwrite(ap, 0x18, r);
 if (ahci_pwait_eq((ap), (0x18), ((1<<15)), 0, (1)))
  return (1);
 if (stop_fis_rx &&
     ahci_pwait_eq((ap), (0x18), ((1<<14)), 0, (1)))
  return (2);
 return (0);
}
int
ahci_port_clo(struct ahci_port *ap)
{
 struct ahci_softc *sc = ap->ap_sc;
 u_int32_t cmd;
 if (!((ahci_read(sc, 0x000)) & ((1<<24))))
  return (1);
 cmd = ahci_pread(ap, 0x18) & ~0xf0000000;
 if (((cmd) & ((1<<0))))
  printf("%s: CLO requested while port running\n", (((ap)->ap_sc)->sc_dev.dv_xname));
 ahci_pwrite(ap, 0x18, cmd | (1<<3));
 if (ahci_pwait_eq((ap), (0x18), ((1<<3)), 0, (1))) {
  printf("%s: CLO did not complete\n", (((ap)->ap_sc)->sc_dev.dv_xname));
  return (1);
 }
 return (0);
}
int
ahci_port_softreset(struct ahci_port *ap)
{
 struct ahci_ccb *ccb = ((void *)0);
 struct ahci_cmd_hdr *cmd_slot;
 u_int8_t *fis;
 int s, rc = 5, oldstate;
 u_int32_t cmd;
 ;
 s = _splraise(5);
 oldstate = ap->ap_state;
 ap->ap_state = 3;
 cmd = ahci_pread(ap, 0x18) & ~0xf0000000;
 if (ahci_port_stop(ap, 0)) {
  printf("%s: failed to stop port, cannot softreset\n",
      (((ap)->ap_sc)->sc_dev.dv_xname));
  goto err;
 }
 if (((ahci_pread(ap, 0x20)) & ((1<<7) | (1<<3))))
  ahci_port_clo(ap);
 ahci_pwrite(ap, 0x30, ahci_pread(ap, 0x30));
 if (((ap)->ap_sc->sc_port_start((ap), (0)))) {
  printf("%s: failed to start port, cannot softreset\n",
      (((ap)->ap_sc)->sc_dev.dv_xname));
  goto err;
 }
 if (ahci_pwait_eq((ap), (0x20), ((1<<7) | (1<<3)), 0, (1))) {
  printf("%s: CLO %s, need port reset\n", (((ap)->ap_sc)->sc_dev.dv_xname),
      ((ahci_read(ap->ap_sc, 0x000)) & ((1<<24)))
      ? "failed" : "unsupported");
  rc = 16;
  goto err;
 }
 ccb = ahci_get_err_ccb(ap);
 cmd_slot = ccb->ccb_cmd_hdr;
 __builtin_memset((ccb->ccb_cmd_table), (0), (sizeof(struct ahci_cmd_table)));
 fis = ccb->ccb_cmd_table->cfis;
 fis[0] = 0x27;
 fis[15] = 0x04;
 cmd_slot->prdtl = 0;
 __swapm16((&cmd_slot->flags), (5 | (1<<10) | (1<<8) | (1<<6)));
 ccb->ccb_xa.state = 1;
 if (ahci_poll(ccb, 1000, ((void *)0)) != 0)
  goto err;
 fis[0] = 0x27;
 fis[15] = 0;
 cmd_slot->prdtl = 0;
 __swapm16((&cmd_slot->flags), (5 | (1<<6)));
 ccb->ccb_xa.state = 1;
 if (ahci_poll(ccb, 1000, ((void *)0)) != 0)
  goto err;
 if (ahci_pwait_eq((ap), (0x20), ((1<<7) | (1<<3) | (1<<0)), 0, (1))) {
  printf("%s: device didn't come ready after reset, TFD: 0x%b\n",
      (((ap)->ap_sc)->sc_dev.dv_xname), ahci_pread(ap, 0x20),
      "\20" "\010BSY" "\004DRQ" "\001ERR");
  rc = 16;
  goto err;
 }
 rc = 0;
err:
 if (ccb != ((void *)0)) {
  if (rc != 0 && ((ap->ap_active) & (1 << ccb->ccb_slot))) {
   printf("%s: stopping the port, softreset slot %d was "
       "still active.\n", (((ap)->ap_sc)->sc_dev.dv_xname), ccb->ccb_slot);
   ahci_port_stop(ap, 0);
  }
  ccb->ccb_xa.state = 3;
  ahci_put_err_ccb(ccb);
 }
 ahci_pwrite(ap, 0x18, cmd);
 ap->ap_state = oldstate;
 _splx(s);
 return (rc);
}
int
ahci_pmp_port_softreset(struct ahci_port *ap, int pmp_port)
{
 struct ahci_ccb *ccb = ((void *)0);
 u_int32_t data;
 int count;
 int rc;
 int s;
 struct ahci_cmd_hdr *cmd_slot;
 u_int8_t *fis;
 s = _splraise(5);
 ;
 ap->ap_pmp_ignore_ifs = 1;
 count = 2;
 rc = 0;
 do {
  if (ccb != ((void *)0)) {
   ahci_put_pmp_ccb(ccb);
   ccb = ((void *)0);
  }
  if (ahci_pmp_phy_status(ap, pmp_port, &data)) {
   printf("%s.%d: unable to clear PHY status\n",
       (((ap)->ap_sc)->sc_dev.dv_xname), pmp_port);
  }
  ahci_pwrite(ap, 0x30, -1);
  ahci_pwrite(ap, 0x10, (1<<27));
  ahci_pmp_write(ap, pmp_port, 1, -1);
  ccb = ahci_get_pmp_ccb(ap);
  cmd_slot = ccb->ccb_cmd_hdr;
  __builtin_memset((ccb->ccb_cmd_table), (0), (sizeof(struct ahci_cmd_table)));
  fis = ccb->ccb_cmd_table->cfis;
  fis[0] = 0x27;
  fis[1] = pmp_port;
  fis[15] = 0x04 | 0x08;
  cmd_slot->prdtl = 0;
  __swapm16((&cmd_slot->flags), (5 | (1<<10) | (1<<8) | (pmp_port << 12)));
  ccb->ccb_xa.state = 1;
  ;
  if (ahci_poll(ccb, 1000, ahci_pmp_probe_timeout) != 0) {
   printf("%s.%d: PMP port softreset cmd failed\n",
          (((ap)->ap_sc)->sc_dev.dv_xname), pmp_port);
   rc = 16;
   if (count > 0) {
   }
   continue;
  }
  __builtin_memset((ccb->ccb_cmd_table), (0), (sizeof(struct ahci_cmd_table)));
  fis[0] = 0x27;
  fis[1] = pmp_port;
  fis[15] = 0x08;
  cmd_slot->prdtl = 0;
  __swapm16((&cmd_slot->flags), (5 | (pmp_port << 12)));
  ;
  ccb->ccb_xa.state = 1;
  if (ahci_poll(ccb, 5000, ahci_pmp_probe_timeout) != 0) {
   ;
   rc = 16;
   if (count > 0) {
   }
   continue;
  }
  fis[15] = 0;
  break;
 } while (count--);
 if (ccb != ((void *)0)) {
  ahci_put_pmp_ccb(ccb);
  ccb = ((void *)0);
 }
 ahci_pmp_write(ap, pmp_port, 1, -1);
 ahci_pwrite(ap, 0x30, -1);
 ahci_pwrite(ap, 0x10, (1<<27));
 ap->ap_pmp_ignore_ifs = 0;
 ;
 _splx(s);
 return (rc);
}
int
ahci_pmp_port_probe(struct ahci_port *ap, int pmp_port)
{
 int sig;
 ap->ap_state = 2;
 ;
 if (ahci_pmp_port_portreset(ap, pmp_port)) {
  printf("%s.%d: unable to probe PMP port; portreset failed\n",
      (((ap)->ap_sc)->sc_dev.dv_xname), pmp_port);
  ap->ap_state = 0;
  return (0);
 }
 if (ahci_pmp_port_softreset(ap, pmp_port)) {
  printf("%s.%d: unable to probe PMP port due to softreset "
      "failure\n", (((ap)->ap_sc)->sc_dev.dv_xname), pmp_port);
  ap->ap_state = 0;
  return (0);
 }
 sig = ahci_port_signature(ap);
 ;
 ap->ap_state = 0;
 return (sig);
}
void
ahci_flush_tfd(struct ahci_port *ap)
{
 u_int32_t r;
 r = ahci_pread(ap, 0x30);
 if (r & (1<<10))
  ahci_pwrite(ap, 0x30, (1<<10));
}
u_int32_t
ahci_active_mask(struct ahci_port *ap)
{
 u_int32_t mask;
 mask = ahci_pread(ap, 0x38);
 if (ap->ap_sc->sc_cap & (1<<30))
  mask |= ahci_pread(ap, 0x34);
 return mask;
}
void
ahci_pmp_probe_timeout(void *cookie)
{
 struct ahci_ccb *ccb = cookie;
 struct ahci_port *ap = ccb->ccb_port;
 u_int32_t mask;
 ;
 switch (ccb->ccb_xa.state) {
 case 1:
  do { if (((ccb)->ccb_entry.tqe_next) != ((void *)0)) (ccb)->ccb_entry.tqe_next->ccb_entry.tqe_prev = (ccb)->ccb_entry.tqe_prev; else (&ap->ap_ccb_pending)->tqh_last = (ccb)->ccb_entry.tqe_prev; *(ccb)->ccb_entry.tqe_prev = (ccb)->ccb_entry.tqe_next; ((ccb)->ccb_entry.tqe_prev) = ((void *)-1); ((ccb)->ccb_entry.tqe_next) = ((void *)-1); } while (0);
  ccb->ccb_xa.state = 4;
  break;
 case 5:
 case 3:
  ((ap->ap_active == (1 << ccb->ccb_slot) && ap->ap_sactive == 0) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../dev/ic/ahci.c", 1282, "ap->ap_active == (1 << ccb->ccb_slot) && ap->ap_sactive == 0"));
  ahci_port_stop(ap, 0);
  ((ap)->ap_sc->sc_port_start((ap), (0)));
  if (ahci_active_mask(ap) != 0) {
   ahci_port_stop(ap, 0);
   ((ap)->ap_sc->sc_port_start((ap), (0)));
   mask = ahci_active_mask(ap);
   if (mask != 0) {
    printf("%s: ahci_pmp_probe_timeout: failed to "
        "clear active cmds: %08x\n", (((ap)->ap_sc)->sc_dev.dv_xname),
        mask);
   }
  }
  ccb->ccb_xa.state = 4;
  ap->ap_active &= ~(1 << ccb->ccb_slot);
  ((ap->ap_active_cnt > 0) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../dev/ic/ahci.c", 1299, "ap->ap_active_cnt > 0"));
  --ap->ap_active_cnt;
  ;
  break;
 default:
  panic("%s: ahci_pmp_probe_timeout: ccb in bad state %d",
   (((ap)->ap_sc)->sc_dev.dv_xname), ccb->ccb_xa.state);
 }
}
int
ahci_port_signature(struct ahci_port *ap)
{
 u_int32_t sig;
 sig = ahci_pread(ap, 0x24);
 if ((sig & 0xffff0000) == (0xeb140101 & 0xffff0000))
  return (2);
 else if ((sig & 0xffff0000) == (0x96690101 &
     0xffff0000))
  return (3);
 else
  return (1);
}
int
ahci_pmp_port_portreset(struct ahci_port *ap, int pmp_port)
{
 u_int32_t cmd, data;
 int loop;
 int rc = 1;
 int s;
 s = _splraise(5);
 ;
 cmd = ahci_pread(ap, 0x18) & ~0xf0000000;
 data = 0x300;
 if (ahci_pmp_write(ap, pmp_port, 1, -1))
  goto err;
 if (ahci_pmp_write(ap, pmp_port, 2, data))
  goto err;
 delay(10000);
 data = 0x300 | 0x1;
 if ((ap->ap_sc->sc_dev.dv_cfdata->cf_flags & 0x01) != 0) {
  ;
  data |= 0x10;
 } else
  data |= 0x00;
 if (ahci_pmp_write(ap, pmp_port, 2, data))
  goto err;
 delay(100000);
 if (ahci_pmp_phy_status(ap, pmp_port, &data)) {
  printf("%s.%d: cannot clear PHY status\n", (((ap)->ap_sc)->sc_dev.dv_xname),
      pmp_port);
 }
 ahci_pmp_write(ap, pmp_port, 1, -1);
 data = 0x300 | 0x0;
 if (ahci_pmp_write(ap, pmp_port, 2, data))
  goto err;
 for (loop = 3; loop; --loop) {
  if (ahci_pmp_read(ap, pmp_port, 0, &data))
   goto err;
  if (data & 0xf)
   break;
  delay(100000);
 }
 if (loop == 0) {
  printf("%s.%d: port is unplugged\n", (((ap)->ap_sc)->sc_dev.dv_xname), pmp_port);
  goto err;
 }
 for (loop = 30; loop; --loop) {
  if (ahci_pmp_read(ap, pmp_port, 0, &data))
   goto err;
  if ((data & 0xf) == 0x3)
   break;
  delay(100000);
 }
 if (loop == 0) {
  printf("%s.%d: device is not negotiating\n", (((ap)->ap_sc)->sc_dev.dv_xname),
      pmp_port);
  goto err;
 }
 ;
 delay(100000);
 ahci_pmp_write(ap, pmp_port, 1, -1);
 ahci_pwrite(ap, 0x30, -1);
 ahci_pwrite(ap, 0x10, (1<<27));
 rc = 0;
err:
 ahci_pwrite(ap, 0x18, cmd);
 _splx(s);
 return (rc);
}
void
ahci_port_comreset(struct ahci_port *ap)
{
 u_int32_t r;
 r = 0x300 | 0x1;
 if ((ap->ap_sc->sc_dev.dv_cfdata->cf_flags & 0x01) != 0) {
  ;
  r |= 0x10;
 } else
  r |= 0x00;
 ahci_pwrite(ap, 0x2c, r);
 delay(10000);
 r &= ~0x1;
 r |= 0x0;
 ahci_pwrite(ap, 0x2c, r);
 delay(10000);
}
void
ahci_port_portreset_start(struct ahci_port *ap)
{
 int s;
 s = _splraise(5);
 ;
 ap->ap_saved_cmd = ahci_pread(ap, 0x18) & ~0xf0000000;
 ahci_port_stop(ap, 0);
 ahci_pwrite(ap, 0x2c, 0);
 delay(10000);
 ahci_port_comreset(ap);
 _splx(s);
}
int
ahci_port_portreset_poll(struct ahci_port *ap)
{
 if ((ahci_pread(ap, 0x28) & 0xf) !=
     0x3)
  return (35);
 return (0);
}
void
ahci_port_portreset_wait(struct ahci_port *ap)
{
 int i;
 for (i = 0; i < 1000; i++) {
  if (ahci_port_portreset_poll(ap) == 0)
   break;
  delay(1000);
 }
}
int
ahci_port_portreset_finish(struct ahci_port *ap, int pmp)
{
 int rc, s, retries = 0;
 s = _splraise(5);
retry:
 if (ahci_port_portreset_poll(ap)) {
  rc = 19;
  if (ahci_pread(ap, 0x28) & 0xf) {
  } else {
   goto err;
  }
 } else {
  ahci_pwrite(ap, 0x30, ahci_pread(ap, 0x30));
  if (ahci_pwait_eq((ap), (0x20), ((1<<7) | (1<<3) | (1<<0)), 0, (3))) {
   if (retries == 0) {
    retries = 1;
    ahci_port_comreset(ap);
    ahci_port_portreset_wait(ap);
    goto retry;
   }
   rc = 16;
  } else {
   rc = 0;
  }
 }
 if (pmp != 0) {
  if (ahci_port_detect_pmp(ap)) {
   pmp = 0;
   retries = 0;
   ahci_port_comreset(ap);
   ahci_port_portreset_wait(ap);
   goto retry;
  }
 }
err:
 ahci_pwrite(ap, 0x18, ap->ap_saved_cmd);
 ap->ap_saved_cmd = 0;
 _splx(s);
 return (rc);
}
int
ahci_port_portreset(struct ahci_port *ap, int pmp)
{
 ahci_port_portreset_start(ap);
 ahci_port_portreset_wait(ap);
 return (ahci_port_portreset_finish(ap, pmp));
}
int
ahci_port_detect_pmp(struct ahci_port *ap)
{
 int count, pmp_rc, rc;
 u_int32_t r, cmd;
 struct ahci_cmd_hdr *cmd_slot;
 struct ahci_ccb *ccb = ((void *)0);
 u_int8_t *fis = ((void *)0);
 if ((ap->ap_sc->sc_flags & (1<<2)) ||
     !((ahci_read(ap->ap_sc, 0x000)) & ((1<<17)))) {
  return 0;
 }
 rc = 0;
 pmp_rc = 0;
 count = 2;
 do {
  ;
  if (ccb != ((void *)0)) {
   ahci_put_pmp_ccb(ccb);
   ccb = ((void *)0);
  }
  ahci_port_stop(ap, 0);
  ap->ap_state = 1;
  cmd = ahci_pread(ap, 0x18) & ~0xf0000000;
  if ((cmd & (1<<17)) == 0) {
   cmd |= (1<<17);
   ahci_pwrite(ap, 0x18, cmd);
  }
  r = ahci_pread(ap, 0x30);
  if (r & (1<<10))
   ahci_pwrite(ap, 0x30,
       (1<<10));
  ahci_port_clo(ap);
  r = ahci_pread(ap, 0x30);
  ahci_pwrite(ap, 0x30, r);
  if (((ap)->ap_sc->sc_port_start((ap), (0)))) {
   rc = 16;
   printf("%s: failed to start port, cannot probe PMP\n",
       (((ap)->ap_sc)->sc_dev.dv_xname));
   break;
  }
  if (ahci_pwait_eq((ap), (0x20), ((1<<7) | (1<<3)), 0, (1))) {
   u_int32_t cap;
   cap = ahci_read(ap->ap_sc, 0x000);
   printf("%s: CLO %s, need port reset\n",
       (((ap)->ap_sc)->sc_dev.dv_xname),
       ((cap) & ((1<<24)))
       ? "failed" : "unsupported");
   pmp_rc = 16;
   break;
  }
  ccb = ahci_get_pmp_ccb(ap);
  cmd_slot = ccb->ccb_cmd_hdr;
  __builtin_memset((ccb->ccb_cmd_table), (0), (sizeof(struct ahci_cmd_table)));
  fis = ccb->ccb_cmd_table->cfis;
  fis[0] = 0x27;
  fis[1] = 0x0f;
  fis[15] = 0x04 | 0x08;
  cmd_slot->prdtl = 0;
  __swapm16((&cmd_slot->flags), (5 | (1<<10) | (1<<8) | 0xf000));
  ;
  ccb->ccb_xa.state = 1;
  if (ahci_poll(ccb, 1000, ahci_pmp_probe_timeout) != 0) {
   ;
   pmp_rc = 16;
   continue;
  }
  if (ahci_pwait_eq((ap), (0x20), ((1<<7) | (1<<3)), 0, (1))) {
   printf("%s: port busy after first PMP probe FIS\n",
       (((ap)->ap_sc)->sc_dev.dv_xname));
  }
  ahci_flush_tfd(ap);
  r = ahci_pread(ap, 0x30);
  ahci_pwrite(ap, 0x30, r);
  __builtin_memset((ccb->ccb_cmd_table), (0), (sizeof(struct ahci_cmd_table)));
  fis[0] = 0x27;
  fis[1] = 0x0f;
  fis[15] = 0x08;
  cmd_slot->prdtl = 0;
  __swapm16((&cmd_slot->flags), (5 | 0xf000));
  ;
  ccb->ccb_xa.state = 1;
  if (ahci_poll(ccb, 5000, ahci_pmp_probe_timeout) != 0) {
   ;
   pmp_rc = 16;
   continue;
  }
  fis[15] = 0;
  pmp_rc = 0;
 } while (--count);
 if (ccb != ((void *)0)) {
  ahci_put_pmp_ccb(ccb);
  ccb = ((void *)0);
 }
 if (ap->ap_state == 1) {
  ap->ap_state = 0;
 }
 if (pmp_rc == 0) {
  if (ahci_port_signature(ap) != 3) {
   ;
   pmp_rc = 16;
  } else {
   ;
  }
 }
 if (pmp_rc == 0) {
  if (ahci_pmp_identify(ap, &ap->ap_pmp_ports)) {
   pmp_rc = 16;
  } else {
   rc = 0;
  }
 }
 if (pmp_rc != 0) {
  ;
  ahci_port_stop(ap, 0);
  ahci_port_clo(ap);
  cmd = ahci_pread(ap, 0x18) & ~0xf0000000;
  cmd &= ~(1<<17);
  ahci_pwrite(ap, 0x18, cmd);
  ahci_pwrite(ap, 0x14, 0);
  ahci_port_stop(ap, 0);
  if (ap->ap_sc->sc_cap & (1<<29))
   ahci_pwrite(ap, 0x3c, -1);
  ahci_flush_tfd(ap);
  ahci_pwrite(ap, 0x30, -1);
  ahci_pwrite(ap, 0x10, -1);
  ahci_enable_interrupts(ap);
  rc = pmp_rc;
 }
 return (rc);
}
void
ahci_load_prdt_seg(struct ahci_prdt *prd, u_int64_t addr, u_int32_t len,
    u_int32_t flags)
{
 flags |= len - 1;
 __swapm64((&prd->dba), (addr));
 __swapm32((&prd->flags), (flags));
}
int
ahci_load_prdt(struct ahci_ccb *ccb)
{
 struct ahci_port *ap = ccb->ccb_port;
 struct ahci_softc *sc = ap->ap_sc;
 struct ata_xfer *xa = &ccb->ccb_xa;
 struct ahci_prdt *prdt = ccb->ccb_cmd_table->prdt;
 bus_dmamap_t dmap = ccb->ccb_dmamap;
 struct ahci_cmd_hdr *cmd_slot = ccb->ccb_cmd_hdr;
 int i, error;
 if (xa->datalen == 0) {
  ccb->ccb_cmd_hdr->prdtl = 0;
  return (0);
 }
 error = bus_dmamap_load(sc->sc_dmat, dmap, xa->data, xa->datalen, ((void *)0),
     (xa->flags & (1<<2)) ? 0x0001 : 0x0000);
 if (error != 0) {
  printf("%s: error %d loading dmamap\n", (((ap)->ap_sc)->sc_dev.dv_xname), error);
  return (1);
 }
 for (i = 0; i < dmap->dm_nsegs - 1; i++) {
  ahci_load_prdt_seg(&prdt[i], dmap->dm_segs[i].ds_addr,
      dmap->dm_segs[i].ds_len, 0);
 }
 ahci_load_prdt_seg(&prdt[i],
     dmap->dm_segs[i].ds_addr, dmap->dm_segs[i].ds_len,
     ((xa->flags) & ((1<<4))) ? (1<<31) : 0);
 __swapm16((&cmd_slot->prdtl), (dmap->dm_nsegs));
 bus_dmamap_sync(sc->sc_dmat, dmap, 0, dmap->dm_mapsize,
     (xa->flags & (1<<0)) ? 0x01 :
     0x04);
 return (0);
}
void
ahci_unload_prdt(struct ahci_ccb *ccb)
{
 struct ahci_port *ap = ccb->ccb_port;
 struct ahci_softc *sc = ap->ap_sc;
 struct ata_xfer *xa = &ccb->ccb_xa;
 bus_dmamap_t dmap = ccb->ccb_dmamap;
 if (xa->datalen != 0) {
  bus_dmamap_sync(sc->sc_dmat, dmap, 0, dmap->dm_mapsize,
      (xa->flags & (1<<0)) ? 0x02 :
      0x08);
  bus_dmamap_unload(sc->sc_dmat, dmap);
  if (ccb->ccb_xa.flags & (1<<6))
   xa->resid = 0;
  else
   xa->resid = xa->datalen -
       __mswap32(&ccb->ccb_cmd_hdr->prdbc);
 }
}
int
ahci_poll(struct ahci_ccb *ccb, int timeout, void (*timeout_fn)(void *))
{
 struct ahci_port *ap = ccb->ccb_port;
 int s;
 s = _splraise(5);
 ahci_start(ccb);
 do {
  if (((ahci_port_intr(ap, 0xffffffff)) & (1 << ccb->ccb_slot))) {
   _splx(s);
   return (0);
  }
  if (ccb->ccb_xa.state == 3) {
   ;
   if (timeout_fn != ((void *)0)) {
    timeout_fn(ccb);
   }
   _splx(s);
   return (1);
  }
  delay(1000);
 } while (--timeout > 0);
 if (timeout_fn != ((void *)0))
  timeout_fn(ccb);
 _splx(s);
 return (1);
}
void
ahci_start(struct ahci_ccb *ccb)
{
 struct ahci_port *ap = ccb->ccb_port;
 struct ahci_softc *sc = ap->ap_sc;
 ccb->ccb_cmd_hdr->prdbc = 0;
 bus_dmamap_sync(sc->sc_dmat, ((ap->ap_dmamem_cmd_list)->adm_map),
     ccb->ccb_slot * sizeof(struct ahci_cmd_hdr),
     sizeof(struct ahci_cmd_hdr), 0x04);
 bus_dmamap_sync(sc->sc_dmat, ((ap->ap_dmamem_cmd_table)->adm_map),
     ccb->ccb_slot * sizeof(struct ahci_cmd_table),
     sizeof(struct ahci_cmd_table), 0x04);
 bus_dmamap_sync(sc->sc_dmat, ((ap->ap_dmamem_rfis)->adm_map), 0,
     sizeof(struct ahci_rfis), 0x01);
 if (ccb->ccb_xa.flags & (1<<6)) {
  if (ap->ap_active != 0 || !(((&ap->ap_ccb_pending)->tqh_first) == ((void *)0)) ||
      (ap->ap_sactive != 0 &&
       ap->ap_pmp_ncq_port != ccb->ccb_xa.pmp_port)) {
   do { (ccb)->ccb_entry.tqe_next = ((void *)0); (ccb)->ccb_entry.tqe_prev = (&ap->ap_ccb_pending)->tqh_last; *(&ap->ap_ccb_pending)->tqh_last = (ccb); (&ap->ap_ccb_pending)->tqh_last = &(ccb)->ccb_entry.tqe_next; } while (0);
  } else {
   ((ap->ap_active_cnt == 0) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../dev/ic/ahci.c", 1890, "ap->ap_active_cnt == 0"));
   ap->ap_sactive |= (1 << ccb->ccb_slot);
   ccb->ccb_xa.state = 5;
   ahci_pwrite(ap, 0x34, 1 << ccb->ccb_slot);
   ahci_pwrite(ap, 0x38, 1 << ccb->ccb_slot);
   ap->ap_pmp_ncq_port = ccb->ccb_xa.pmp_port;
  }
 } else {
  if (ap->ap_sactive != 0 || ap->ap_active_cnt == 2)
   do { (ccb)->ccb_entry.tqe_next = ((void *)0); (ccb)->ccb_entry.tqe_prev = (&ap->ap_ccb_pending)->tqh_last; *(&ap->ap_ccb_pending)->tqh_last = (ccb); (&ap->ap_ccb_pending)->tqh_last = &(ccb)->ccb_entry.tqe_next; } while (0);
  else if (ap->ap_active_cnt < 2) {
   ap->ap_active |= 1 << ccb->ccb_slot;
   ccb->ccb_xa.state = 5;
   ahci_pwrite(ap, 0x38, 1 << ccb->ccb_slot);
   ap->ap_active_cnt++;
  }
 }
}
void
ahci_issue_pending_ncq_commands(struct ahci_port *ap)
{
 struct ahci_ccb *nextccb;
 u_int32_t sact_change = 0;
 ((ap->ap_active_cnt == 0) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../dev/ic/ahci.c", 1917, "ap->ap_active_cnt == 0"));
 nextccb = ((&ap->ap_ccb_pending)->tqh_first);
 if (nextccb == ((void *)0) || !(nextccb->ccb_xa.flags & (1<<6)))
  return;
 if (ap->ap_sactive != 0 &&
     ap->ap_pmp_ncq_port != nextccb->ccb_xa.pmp_port) {
  return;
 }
 ap->ap_pmp_ncq_port = nextccb->ccb_xa.pmp_port;
 do {
  do { if (((nextccb)->ccb_entry.tqe_next) != ((void *)0)) (nextccb)->ccb_entry.tqe_next->ccb_entry.tqe_prev = (nextccb)->ccb_entry.tqe_prev; else (&ap->ap_ccb_pending)->tqh_last = (nextccb)->ccb_entry.tqe_prev; *(nextccb)->ccb_entry.tqe_prev = (nextccb)->ccb_entry.tqe_next; ((nextccb)->ccb_entry.tqe_prev) = ((void *)-1); ((nextccb)->ccb_entry.tqe_next) = ((void *)-1); } while (0);
  sact_change |= 1 << nextccb->ccb_slot;
  nextccb->ccb_xa.state = 5;
  nextccb = ((&ap->ap_ccb_pending)->tqh_first);
 } while (nextccb && (nextccb->ccb_xa.flags & (1<<6)) &&
     (nextccb->ccb_xa.pmp_port == ap->ap_pmp_ncq_port));
 ap->ap_sactive |= sact_change;
 ahci_pwrite(ap, 0x34, sact_change);
 ahci_pwrite(ap, 0x38, sact_change);
}
void
ahci_issue_pending_commands(struct ahci_port *ap, int last_was_ncq)
{
 struct ahci_ccb *nextccb;
 nextccb = ((&ap->ap_ccb_pending)->tqh_first);
 if (nextccb && (nextccb->ccb_xa.flags & (1<<6))) {
  if (last_was_ncq) {
   ((nextccb->ccb_xa.pmp_port != ap->ap_pmp_ncq_port) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../dev/ic/ahci.c", 1955, "nextccb->ccb_xa.pmp_port != ap->ap_pmp_ncq_port"));
  } else {
   ap->ap_active_cnt--;
  }
  if (ap->ap_active == 0)
   ahci_issue_pending_ncq_commands(ap);
  else
   ((ap->ap_active_cnt == 1) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../dev/ic/ahci.c", 1968, "ap->ap_active_cnt == 1"));
 } else if (nextccb) {
  if (ap->ap_sactive != 0 || last_was_ncq)
   ((ap->ap_active_cnt == 0) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../dev/ic/ahci.c", 1971, "ap->ap_active_cnt == 0"));
  if (ap->ap_sactive != 0)
   return;
  do {
   do { if (((nextccb)->ccb_entry.tqe_next) != ((void *)0)) (nextccb)->ccb_entry.tqe_next->ccb_entry.tqe_prev = (nextccb)->ccb_entry.tqe_prev; else (&ap->ap_ccb_pending)->tqh_last = (nextccb)->ccb_entry.tqe_prev; *(nextccb)->ccb_entry.tqe_prev = (nextccb)->ccb_entry.tqe_next; ((nextccb)->ccb_entry.tqe_prev) = ((void *)-1); ((nextccb)->ccb_entry.tqe_next) = ((void *)-1); } while (0);
   ap->ap_active |= 1 << nextccb->ccb_slot;
   nextccb->ccb_xa.state = 5;
   ahci_pwrite(ap, 0x38, 1 << nextccb->ccb_slot);
   if (last_was_ncq)
    ap->ap_active_cnt++;
   if (ap->ap_active_cnt == 2)
    break;
   ((ap->ap_active_cnt == 1) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../dev/ic/ahci.c", 1988, "ap->ap_active_cnt == 1"));
   nextccb = ((&ap->ap_ccb_pending)->tqh_first);
  } while (nextccb && !(nextccb->ccb_xa.flags & (1<<6)));
 } else if (!last_was_ncq) {
  ((ap->ap_active_cnt == 1 || ap->ap_active_cnt == 2) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../dev/ic/ahci.c", 1992, "ap->ap_active_cnt == 1 || ap->ap_active_cnt == 2"));
  ap->ap_active_cnt--;
 } else {
  ((ap->ap_active_cnt == 0) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../dev/ic/ahci.c", 1997, "ap->ap_active_cnt == 0"));
 }
}
int
ahci_intr(void *arg)
{
 struct ahci_softc *sc = arg;
 u_int32_t is, ack = 0;
 int port;
 is = ahci_read(sc, 0x008);
 if (is == 0 || is == 0xffffffff)
  return (0);
 ack = is;
 while (is) {
  port = ffs(is) - 1;
  if (sc->sc_ports[port])
   ahci_port_intr(sc->sc_ports[port],
       0xffffffff);
  is &= ~(1 << port);
 }
 ahci_write(sc, 0x008, ack);
 return (1);
}
u_int32_t
ahci_port_intr(struct ahci_port *ap, u_int32_t ci_mask)
{
 struct ahci_softc *sc = ap->ap_sc;
 u_int32_t is, ci_saved, ci_masked, processed = 0;
 int slot, need_restart = 0;
 int process_error = 0;
 struct ahci_ccb *ccb;
 volatile u_int32_t *active;
 u_int32_t tmp;
 is = ahci_pread(ap, 0x10);
 if (ci_mask == 0xffffffff)
  ahci_pwrite(ap, 0x10, is);
 if (is)
  ;
 if (ap->ap_sactive) {
  ((ap->ap_active == 0) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../dev/ic/ahci.c", 2066, "ap->ap_active == 0"));
  ((ap->ap_active_cnt == 0) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../dev/ic/ahci.c", 2067, "ap->ap_active_cnt == 0"));
  ci_saved = ahci_pread(ap, 0x34);
  active = &ap->ap_sactive;
 } else {
  ci_saved = ahci_pread(ap, 0x38);
  active = &ap->ap_active;
 }
 if (is & (1<<30)) {
  process_error = 1;
 } else if (is & (1<<0)) {
  u_int32_t tfd;
  u_int32_t cmd;
  u_int32_t serr;
  tfd = ahci_pread(ap, 0x20);
  cmd = ahci_pread(ap, 0x18);
  serr = ahci_pread(ap, 0x30);
  if ((tfd & (1<<0)) &&
      (cmd & (1<<15)) == 0) {
   ;
   process_error = 1;
  } else {
   ahci_pwrite(ap, 0x10, (1<<0));
  }
 }
 if (process_error) {
  u_int32_t tfd, serr;
  int err_slot;
  tfd = ahci_pread(ap, 0x20);
  serr = ahci_pread(ap, 0x30);
  if (ap->ap_sactive == 0) {
   err_slot = (((ahci_pread(ap, 0x18)) >> 8) & 0x1f);
   if ((ci_saved & (1 << err_slot)) == 0) {
    if (ap->ap_active_cnt == 1)
     err_slot = ffs(ap->ap_active) - 1;
    else
     goto failall;
   }
   ccb = &ap->ap_ccbs[err_slot];
   __builtin_memcpy((&ccb->ccb_xa.rfis), (ap->ap_rfis->rfis), (sizeof(struct ata_fis_d2h)));
  } else
   err_slot = -1;
  ;
  ahci_port_stop(ap, 0);
  need_restart = 1;
  ahci_pwrite(ap, 0x30, serr);
  ahci_pwrite(ap, 0x10, (1<<30) |
      (1<<27));
  is = ahci_pread(ap, 0x10);
  if (((tfd) & ((1<<7) | (1<<3)))) {
   if ((ap->ap_state == 2) ||
       (ap->ap_state == 3)) {
   } else if (ap->ap_pmp_ports != 0 && err_slot != -1) {
    printf("%s: error on PMP port %d, idling "
        "device\n", (((ap)->ap_sc)->sc_dev.dv_xname),
        ccb->ccb_xa.pmp_port);
    if (ahci_pmp_port_softreset(ap,
            ccb->ccb_xa.pmp_port) == 0) {
     printf("%s: unable to softreset port "
         "%d\n", (((ap)->ap_sc)->sc_dev.dv_xname),
         ccb->ccb_xa.pmp_port);
     if (ahci_pmp_port_portreset(ap,
      ccb->ccb_xa.pmp_port)) {
      printf("%s: failed to port "
          " reset %d, giving up on "
          "it\n", (((ap)->ap_sc)->sc_dev.dv_xname),
          ccb->ccb_xa.pmp_port);
      goto fatal;
     }
    }
   } else {
    printf("%s: attempting to idle device\n",
        (((ap)->ap_sc)->sc_dev.dv_xname));
    if (ahci_port_softreset(ap)) {
     printf("%s: failed to soft reset "
         "device\n", (((ap)->ap_sc)->sc_dev.dv_xname));
     if (ahci_port_portreset(ap, 0)) {
      printf("%s: failed to port "
          "reset device, give up on "
          "it\n", (((ap)->ap_sc)->sc_dev.dv_xname));
      goto fatal;
     }
    }
   }
  } else if (ap->ap_sactive) {
   ahci_port_read_ncq_error(ap, &err_slot,
       ap->ap_pmp_ncq_port);
   if (err_slot < 0)
    goto failall;
   ;
   ccb = &ap->ap_ccbs[err_slot];
   if (ccb->ccb_xa.state != 5) {
    printf("%s: NCQ errored slot %d is idle"
        " (%08x active)\n", (((ap)->ap_sc)->sc_dev.dv_xname), err_slot,
        ci_saved);
    goto failall;
   }
  } else {
  }
  if (err_slot == -1) {
   if (ahci_port_softreset(ap) != 0 &&
       ahci_port_portreset(ap, 0) != 0) {
    printf("%s: couldn't reset after NCQ error, "
        "disabling device.\n", (((ap)->ap_sc)->sc_dev.dv_xname));
    goto fatal;
   }
   printf("%s: couldn't recover NCQ error, failing "
       "all outstanding commands.\n", (((ap)->ap_sc)->sc_dev.dv_xname));
   goto failall;
  }
  ci_saved &= ~(1 << err_slot);
  ((ccb->ccb_xa.state == 5) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../dev/ic/ahci.c", 2238, "ccb->ccb_xa.state == ATA_S_ONCHIP"));
  ccb->ccb_xa.state = 3;
  if (ap->ap_sactive == 0) {
   tmp = ci_saved;
   if (tmp) {
    slot = ffs(tmp) - 1;
    tmp &= ~(1 << slot);
    ((tmp == 0) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../dev/ic/ahci.c", 2248, "tmp == 0"));
   }
  }
 }
 if ((ap->ap_state == 1) &&
     (ap->ap_sc->sc_flags & (1<<1)) &&
     (is & (1<<23))) {
  slot = (((ahci_pread(ap, 0x18)) >> 8) & 0x1f);
  ;
  ccb = &ap->ap_ccbs[slot];
  ccb->ccb_xa.state = 3;
  ahci_pwrite(ap, 0x10, (1<<23));
  is &= ~(1<<23);
 }
 if ((is & (1<<27)) ) {
  ;
  need_restart = 1;
  ahci_pwrite(ap, 0x30, -1);
  ahci_pwrite(ap, 0x10, (1<<27));
  is &= ~(1<<27);
  goto failall;
 }
 if (is & ((1<<30) | (1<<29) | (1<<27) |
     (1<<24) | (1<<4))) {
  printf("%s: unrecoverable errors (IS: %b), disabling port.\n",
      (((ap)->ap_sc)->sc_dev.dv_xname), is, "\20" "\040CPDS" "\037TFES" "\036HBFS" "\035HBDS" "\034IFS" "\033INFS" "\031OFS" "\030IPMS" "\027PRCS" "\010DMPS" "\006DPS" "\007PCS" "\005UFS" "\004SDBS" "\003DSS" "\002PSS" "\001DHRS");
  goto fatal;
 }
 if (ap->ap_state == 4) {
fatal:
  ap->ap_state = 4;
failall:
  ahci_port_stop(ap, 1);
  ci_masked = ci_saved & *active;
  while (ci_masked) {
   slot = ffs(ci_masked) - 1;
   ccb = &ap->ap_ccbs[slot];
   ci_masked &= ~(1 << slot);
   ccb->ccb_xa.state = 3;
  }
  ci_saved &= ~*active;
  if (ap->ap_state == 4)
   need_restart = 0;
 }
 ci_masked = ~ci_saved & *active & ci_mask;
 while (ci_masked) {
  slot = ffs(ci_masked) - 1;
  ccb = &ap->ap_ccbs[slot];
  ci_masked &= ~(1 << slot);
  ;
  bus_dmamap_sync(sc->sc_dmat,
      ((ap->ap_dmamem_cmd_list)->adm_map),
      ccb->ccb_slot * sizeof(struct ahci_cmd_hdr),
      sizeof(struct ahci_cmd_hdr), 0x08);
  bus_dmamap_sync(sc->sc_dmat,
      ((ap->ap_dmamem_cmd_table)->adm_map),
      ccb->ccb_slot * sizeof(struct ahci_cmd_table),
      sizeof(struct ahci_cmd_table), 0x08);
  bus_dmamap_sync(sc->sc_dmat,
      ((ap->ap_dmamem_rfis)->adm_map), 0,
      sizeof(struct ahci_rfis), 0x02);
  *active &= ~(1 << ccb->ccb_slot);
  if (ccb->ccb_xa.state == 5 &&
      ccb->ccb_xa.flags & (1<<8)) {
   __builtin_memcpy((&ccb->ccb_xa.rfis), (ap->ap_rfis->rfis), (sizeof(struct ata_fis_d2h)));
  }
  ccb->ccb_done(ccb);
  processed |= 1 << ccb->ccb_slot;
 }
 if (need_restart) {
  ((ap)->ap_sc->sc_port_start((ap), (0)));
  if (ci_saved) {
   tmp = ci_saved;
   while (tmp) {
    slot = ffs(tmp) - 1;
    tmp &= ~(1 << slot);
    ccb = &ap->ap_ccbs[slot];
    ((ccb->ccb_xa.state == 5) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../dev/ic/ahci.c", 2374, "ccb->ccb_xa.state == ATA_S_ONCHIP"));
    (((!!(ccb->ccb_xa.flags & (1<<6))) == (!!ap->ap_sactive)) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../dev/ic/ahci.c", 2376, "(!!(ccb->ccb_xa.flags & ATA_F_NCQ)) == (!!ap->ap_sactive)"));
   }
   ;
   if (ap->ap_sactive)
    ahci_pwrite(ap, 0x34, ci_saved);
   ahci_pwrite(ap, 0x38, ci_saved);
  }
 }
 return (processed);
}
struct ahci_ccb *
ahci_get_ccb(struct ahci_port *ap)
{
 struct ahci_ccb *ccb;
 __mtx_enter(&ap->ap_ccb_mtx );
 ccb = ((&ap->ap_ccb_free)->tqh_first);
 if (ccb != ((void *)0)) {
  ((ccb->ccb_xa.state == 6) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../dev/ic/ahci.c", 2400, "ccb->ccb_xa.state == ATA_S_PUT"));
  do { if (((ccb)->ccb_entry.tqe_next) != ((void *)0)) (ccb)->ccb_entry.tqe_next->ccb_entry.tqe_prev = (ccb)->ccb_entry.tqe_prev; else (&ap->ap_ccb_free)->tqh_last = (ccb)->ccb_entry.tqe_prev; *(ccb)->ccb_entry.tqe_prev = (ccb)->ccb_entry.tqe_next; ((ccb)->ccb_entry.tqe_prev) = ((void *)-1); ((ccb)->ccb_entry.tqe_next) = ((void *)-1); } while (0);
  ccb->ccb_xa.state = 0;
 }
 __mtx_leave(&ap->ap_ccb_mtx );
 return (ccb);
}
void
ahci_put_ccb(struct ahci_ccb *ccb)
{
 struct ahci_port *ap = ccb->ccb_port;
 if (ccb->ccb_xa.state != 2 &&
     ccb->ccb_xa.state != 4 &&
     ccb->ccb_xa.state != 3) {
  printf("%s: invalid ata_xfer state %02x in ahci_put_ccb, "
      "slot %d\n", (((ccb->ccb_port)->ap_sc)->sc_dev.dv_xname), ccb->ccb_xa.state,
      ccb->ccb_slot);
 }
 ccb->ccb_xa.state = 6;
 __mtx_enter(&ap->ap_ccb_mtx );
 do { (ccb)->ccb_entry.tqe_next = ((void *)0); (ccb)->ccb_entry.tqe_prev = (&ap->ap_ccb_free)->tqh_last; *(&ap->ap_ccb_free)->tqh_last = (ccb); (&ap->ap_ccb_free)->tqh_last = &(ccb)->ccb_entry.tqe_next; } while (0);
 __mtx_leave(&ap->ap_ccb_mtx );
}
struct ahci_ccb *
ahci_get_err_ccb(struct ahci_port *ap)
{
 struct ahci_ccb *err_ccb;
 u_int32_t sact;
 do { if (splassert_ctl > 0) { splassert_check(5, __func__); } } while (0);
 sact = ahci_pread(ap, 0x34);
 if (sact != 0)
  printf("ahci_get_err_ccb but SACT %08x != 0?\n", sact);
 ((ahci_pread(ap, 0x38) == 0) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../dev/ic/ahci.c", 2442, "ahci_pread(ap, AHCI_PREG_CI) == 0"));
 ((ap->ap_err_busy == 0) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../dev/ic/ahci.c", 2445, "ap->ap_err_busy == 0"));
 ap->ap_err_busy = 1;
 ap->ap_err_saved_active = ap->ap_active;
 ap->ap_err_saved_active_cnt = ap->ap_active_cnt;
 ap->ap_err_saved_sactive = ap->ap_sactive;
 ap->ap_active = ap->ap_active_cnt = ap->ap_sactive = 0;
 err_ccb = ap->ap_ccb_err;
 err_ccb->ccb_xa.flags = 0;
 err_ccb->ccb_xa.state = 0;
 err_ccb->ccb_done = ahci_empty_done;
 return (err_ccb);
}
void
ahci_put_err_ccb(struct ahci_ccb *ccb)
{
 struct ahci_port *ap = ccb->ccb_port;
 u_int32_t sact;
 do { if (splassert_ctl > 0) { splassert_check(5, __func__); } } while (0);
 ((ap->ap_err_busy) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../dev/ic/ahci.c", 2480, "ap->ap_err_busy"));
 sact = ahci_pread(ap, 0x34);
 if (sact != 0)
  printf("ahci_port_err_ccb_restore but SACT %08x != 0?\n", sact);
 ((ahci_pread(ap, 0x38) == 0) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../dev/ic/ahci.c", 2486, "ahci_pread(ap, AHCI_PREG_CI) == 0"));
 ((ccb == ap->ap_ccb_err) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../dev/ic/ahci.c", 2490, "ccb == ap->ap_ccb_err"));
 ap->ap_sactive = ap->ap_err_saved_sactive;
 ap->ap_active_cnt = ap->ap_err_saved_active_cnt;
 ap->ap_active = ap->ap_err_saved_active;
 ap->ap_err_busy = 0;
}
struct ahci_ccb *
ahci_get_pmp_ccb(struct ahci_port *ap)
{
 struct ahci_ccb *ccb;
 u_int32_t sact;
 do { if (splassert_ctl > 0) { splassert_check(5, __func__); } } while (0);
 sact = ahci_pread(ap, 0x34);
 if (sact != 0)
  printf("ahci_get_pmp_ccb; SACT %08x != 0\n", sact);
 ((ahci_pread(ap, 0x38) == 0) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../dev/ic/ahci.c", 2520, "ahci_pread(ap, AHCI_PREG_CI) == 0"));
 ccb = &ap->ap_ccbs[1];
 ((ccb->ccb_xa.state == 6) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../dev/ic/ahci.c", 2523, "ccb->ccb_xa.state == ATA_S_PUT"));
 ccb->ccb_xa.flags = 0;
 ccb->ccb_done = ahci_pmp_cmd_done;
 __mtx_enter(&ap->ap_ccb_mtx );
 do { if (((ccb)->ccb_entry.tqe_next) != ((void *)0)) (ccb)->ccb_entry.tqe_next->ccb_entry.tqe_prev = (ccb)->ccb_entry.tqe_prev; else (&ap->ap_ccb_free)->tqh_last = (ccb)->ccb_entry.tqe_prev; *(ccb)->ccb_entry.tqe_prev = (ccb)->ccb_entry.tqe_next; ((ccb)->ccb_entry.tqe_prev) = ((void *)-1); ((ccb)->ccb_entry.tqe_next) = ((void *)-1); } while (0);
 __mtx_leave(&ap->ap_ccb_mtx );
 return ccb;
}
void
ahci_put_pmp_ccb(struct ahci_ccb *ccb)
{
 struct ahci_port *ap = ccb->ccb_port;
 u_int32_t sact;
 ((ccb == &ap->ap_ccbs[1]) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../dev/ic/ahci.c", 2541, "ccb == &ap->ap_ccbs[1]"));
 sact = ahci_pread(ap, 0x34);
 if (sact != 0)
  printf("ahci_port_err_ccb_restore but SACT %08x != 0?\n", sact);
 ((ahci_pread(ap, 0x38) == 0) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../dev/ic/ahci.c", 2547, "ahci_pread(ap, AHCI_PREG_CI) == 0"));
 ccb->ccb_xa.state = 6;
 __mtx_enter(&ap->ap_ccb_mtx );
 do { (ccb)->ccb_entry.tqe_next = ((void *)0); (ccb)->ccb_entry.tqe_prev = (&ap->ap_ccb_free)->tqh_last; *(&ap->ap_ccb_free)->tqh_last = (ccb); (&ap->ap_ccb_free)->tqh_last = &(ccb)->ccb_entry.tqe_next; } while (0);
 __mtx_leave(&ap->ap_ccb_mtx );
}
int
ahci_port_read_ncq_error(struct ahci_port *ap, int *err_slotp, int pmp_port)
{
 struct ahci_ccb *ccb;
 struct ahci_cmd_hdr *cmd_slot;
 u_int32_t cmd;
 struct ata_fis_h2d *fis;
 int rc = 5, oldstate;
 ;
 oldstate = ap->ap_state;
 ap->ap_state = 3;
 cmd = ahci_pread(ap, 0x18) & ~0xf0000000;
 (((cmd & (1<<15)) == 0) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../dev/ic/ahci.c", 2572, "(cmd & AHCI_PREG_CMD_CR) == 0"));
 ((ap)->ap_sc->sc_port_start((ap), (0)));
 ccb = ahci_get_err_ccb(ap);
 ccb->ccb_xa.flags = (1<<2) | (1<<0) | (1<<3);
 ccb->ccb_xa.data = ap->ap_err_scratch;
 ccb->ccb_xa.datalen = 512;
 cmd_slot = ccb->ccb_cmd_hdr;
 __builtin_memset((ccb->ccb_cmd_table), (0), (sizeof(struct ahci_cmd_table)));
 fis = (struct ata_fis_h2d *)ccb->ccb_cmd_table->cfis;
 fis->type = 0x27;
 fis->flags = (1<<7) | pmp_port;
 fis->command = 0x2f;
 fis->lba_low = 0x10;
 fis->sector_count = 1;
 fis->sector_count_exp = 0;
 fis->lba_mid = 0;
 fis->lba_mid_exp = 0;
 fis->device = 0;
 __swapm16((&cmd_slot->flags), (5 | (pmp_port << 12)));
 if (ahci_load_prdt(ccb) != 0) {
  rc = 12;
  goto err;
 }
 ccb->ccb_xa.state = 1;
 if (ahci_poll(ccb, 1000, ((void *)0)) != 0 ||
     ccb->ccb_xa.state == 3)
  goto err;
 rc = 0;
err:
 if (rc != 0 && ((ap->ap_active) & (1 << ccb->ccb_slot))) {
  printf("%s: log page read failed, slot %d was still active.\n",
      (((ap)->ap_sc)->sc_dev.dv_xname), ccb->ccb_slot);
  ahci_port_stop(ap, 0);
 }
 ahci_unload_prdt(ccb);
 ahci_put_err_ccb(ccb);
 if (rc == 0) {
  struct ata_log_page_10h *log;
  int err_slot;
  log = (struct ata_log_page_10h *)ap->ap_err_scratch;
  if (((log->err_regs.type) & (0x80))) {
   printf("%s: read NCQ error page, but not an NCQ "
       "error?\n", (((ap)->ap_sc)->sc_dev.dv_xname));
   rc = 3;
  } else {
   *err_slotp = err_slot = log->err_regs.type &
       0x1f;
   ccb = &ap->ap_ccbs[err_slot];
   __builtin_memcpy((&ccb->ccb_xa.rfis), (&log->err_regs), (sizeof(struct ata_fis_d2h)));
   ccb->ccb_xa.rfis.type = 0x34;
   ccb->ccb_xa.rfis.flags = 0;
  }
 }
 ahci_pwrite(ap, 0x18, cmd);
 ap->ap_state = oldstate;
 return (rc);
}
struct ahci_dmamem *
ahci_dmamem_alloc(struct ahci_softc *sc, size_t size)
{
 struct ahci_dmamem *adm;
 int nsegs;
 adm = malloc(sizeof(*adm), 2, 0x0002 | 0x0008);
 if (adm == ((void *)0))
  return (((void *)0));
 adm->adm_size = size;
 if (bus_dmamap_create(sc->sc_dmat, size, 1, size, 0,
     0x0001 | 0x0002, &adm->adm_map) != 0)
  goto admfree;
 if (bus_dmamem_alloc(sc->sc_dmat, size, (1 << 13), 0, &adm->adm_seg,
     1, &nsegs, 0x0001 | 0x0800) != 0)
  goto destroy;
 if (bus_dmamem_map(sc->sc_dmat, &adm->adm_seg, nsegs, size,
     &adm->adm_kva, 0x0001 | 0x0004) != 0)
  goto free;
 if (bus_dmamap_load(sc->sc_dmat, adm->adm_map, adm->adm_kva, size,
     ((void *)0), 0x0001) != 0)
  goto unmap;
 return (adm);
unmap:
 bus_dmamem_unmap(sc->sc_dmat, adm->adm_kva, size);
free:
 bus_dmamem_free(sc->sc_dmat, &adm->adm_seg, 1);
destroy:
 bus_dmamap_destroy(sc->sc_dmat, adm->adm_map);
admfree:
 free(adm, 2, sizeof(*adm));
 return (((void *)0));
}
void
ahci_dmamem_free(struct ahci_softc *sc, struct ahci_dmamem *adm)
{
 bus_dmamap_unload(sc->sc_dmat, adm->adm_map);
 bus_dmamem_unmap(sc->sc_dmat, adm->adm_kva, adm->adm_size);
 bus_dmamem_free(sc->sc_dmat, &adm->adm_seg, 1);
 bus_dmamap_destroy(sc->sc_dmat, adm->adm_map);
 free(adm, 2, sizeof(*adm));
}
u_int32_t
ahci_read(struct ahci_softc *sc, bus_size_t r)
{
 bus_space_barrier(sc->sc_iot, sc->sc_ioh, r, 4,
     0x01);
 return (bus_space_read_4(sc->sc_iot, sc->sc_ioh, r));
}
void
ahci_write(struct ahci_softc *sc, bus_size_t r, u_int32_t v)
{
 bus_space_write_4(sc->sc_iot, sc->sc_ioh, r, v);
 bus_space_barrier(sc->sc_iot, sc->sc_ioh, r, 4,
     0x02);
}
int
ahci_wait_ne(struct ahci_softc *sc, bus_size_t r, u_int32_t mask,
    u_int32_t target)
{
 int i;
 for (i = 0; i < 1000; i++) {
  if ((ahci_read(sc, r) & mask) != target)
   return (0);
  delay(1000);
 }
 return (1);
}
u_int32_t
ahci_pread(struct ahci_port *ap, bus_size_t r)
{
 bus_space_barrier(ap->ap_sc->sc_iot, ap->ap_ioh, r, 4,
     0x01);
 return (bus_space_read_4(ap->ap_sc->sc_iot, ap->ap_ioh, r));
}
void
ahci_pwrite(struct ahci_port *ap, bus_size_t r, u_int32_t v)
{
 bus_space_write_4(ap->ap_sc->sc_iot, ap->ap_ioh, r, v);
 bus_space_barrier(ap->ap_sc->sc_iot, ap->ap_ioh, r, 4,
     0x02);
}
int
ahci_pwait_eq(struct ahci_port *ap, bus_size_t r, u_int32_t mask,
    u_int32_t target, int n)
{
 int i;
 for (i = 0; i < n * 1000; i++) {
  if ((ahci_pread(ap, r) & mask) == target)
   return (0);
  delay(1000);
 }
 return (1);
}
int
ahci_ata_probe(void *xsc, int port, int lun)
{
 struct ahci_softc *sc = xsc;
 struct ahci_port *ap = sc->sc_ports[port];
 if (ap == ((void *)0))
  return (0);
 if (lun != 0) {
  int pmp_port = lun - 1;
  if (pmp_port >= ap->ap_pmp_ports) {
   return (0);
  }
  return (ahci_pmp_port_probe(ap, pmp_port));
 } else {
  return (ahci_port_signature(ap));
 }
}
void
ahci_ata_free(void *xsc, int port, int lun)
{
}
struct ata_xfer *
ahci_ata_get_xfer(void *aaa_cookie, int port)
{
 struct ahci_softc *sc = aaa_cookie;
 struct ahci_port *ap = sc->sc_ports[port];
 struct ahci_ccb *ccb;
 ccb = ahci_get_ccb(ap);
 if (ccb == ((void *)0)) {
  ;
  return (((void *)0));
 }
 ;
 return ((struct ata_xfer *)ccb);
}
void
ahci_ata_put_xfer(struct ata_xfer *xa)
{
 struct ahci_ccb *ccb = (struct ahci_ccb *)xa;
 ;
 ahci_put_ccb(ccb);
}
void
ahci_ata_cmd(struct ata_xfer *xa)
{
 struct ahci_ccb *ccb = (struct ahci_ccb *)xa;
 struct ahci_cmd_hdr *cmd_slot;
 int s;
 u_int16_t flags;
 if (ccb->ccb_port->ap_state == 4)
  goto failcmd;
 ccb->ccb_done = ahci_ata_cmd_done;
 cmd_slot = ccb->ccb_cmd_hdr;
 flags = 5 ;
 flags |= xa->pmp_port << 12;
 if (xa->flags & (1<<1))
  flags |= (1<<6);
 if (xa->flags & (1<<5))
  flags |= (1<<5);
 __swapm16((&cmd_slot->flags), (flags));
 if (ahci_load_prdt(ccb) != 0)
  goto failcmd;
 timeout_set(&xa->stimeout, ahci_ata_cmd_timeout, ccb);
 xa->state = 1;
 if (xa->flags & (1<<3))
  ahci_poll(ccb, xa->timeout, ahci_ata_cmd_timeout);
 else {
  s = _splraise(5);
  timeout_add_msec(&xa->stimeout, xa->timeout);
  ahci_start(ccb);
  _splx(s);
 }
 return;
failcmd:
 s = _splraise(5);
 xa->state = 3;
 ata_complete(xa);
 _splx(s);
}
void
ahci_pmp_cmd_done(struct ahci_ccb *ccb)
{
 struct ata_xfer *xa = &ccb->ccb_xa;
 if (xa->state == 5 || xa->state == 3)
  ahci_issue_pending_commands(ccb->ccb_port,
      xa->flags & (1<<6));
 xa->state = 2;
}
void
ahci_ata_cmd_done(struct ahci_ccb *ccb)
{
 struct ata_xfer *xa = &ccb->ccb_xa;
 timeout_del(&xa->stimeout);
 if (xa->state == 5 || xa->state == 3)
  ahci_issue_pending_commands(ccb->ccb_port,
      xa->flags & (1<<6));
 ahci_unload_prdt(ccb);
 if (xa->state == 5)
  xa->state = 2;
 else if (xa->state != 3 && xa->state != 4)
  printf("%s: invalid ata_xfer state %02x in ahci_ata_cmd_done, "
      "slot %d\n", (((ccb->ccb_port)->ap_sc)->sc_dev.dv_xname), xa->state,
      ccb->ccb_slot);
 if (xa->state != 4)
  ata_complete(xa);
}
void
ahci_ata_cmd_timeout(void *arg)
{
 struct ahci_ccb *ccb = arg;
 struct ata_xfer *xa = &ccb->ccb_xa;
 struct ahci_port *ap = ccb->ccb_port;
 int s, ccb_was_started, ncq_cmd;
 volatile u_int32_t *active;
 s = _splraise(5);
 ncq_cmd = (xa->flags & (1<<6));
 active = ncq_cmd ? &ap->ap_sactive : &ap->ap_active;
 if (ccb->ccb_xa.state == 1) {
  ;
  do { if (((ccb)->ccb_entry.tqe_next) != ((void *)0)) (ccb)->ccb_entry.tqe_next->ccb_entry.tqe_prev = (ccb)->ccb_entry.tqe_prev; else (&ap->ap_ccb_pending)->tqh_last = (ccb)->ccb_entry.tqe_prev; *(ccb)->ccb_entry.tqe_prev = (ccb)->ccb_entry.tqe_next; ((ccb)->ccb_entry.tqe_prev) = ((void *)-1); ((ccb)->ccb_entry.tqe_next) = ((void *)-1); } while (0);
  ccb_was_started = 0;
 } else if (ccb->ccb_xa.state == 5 && ahci_port_intr(ap,
     1 << ccb->ccb_slot)) {
  ;
  goto ret;
 } else if (ccb->ccb_xa.state != 5) {
  ;
  goto ret;
 } else if (!((ahci_pread(ap, ncq_cmd ? 0x34 : 0x38)) & (1 << ccb->ccb_slot)) && ((*active) & (1 << ccb->ccb_slot))) {
  ;
  *active &= ~(1 << ccb->ccb_slot);
  ccb->ccb_done(ccb);
  goto ret;
 } else {
  ccb_was_started = 1;
 }
 ccb->ccb_xa.state = 4;
 *active &= ~(1 << ccb->ccb_slot);
 ;
 ccb->ccb_done(ccb);
 if (ccb_was_started) {
  ;
  if (ahci_port_softreset(ap) != 0 && ahci_port_portreset(ap, 0)
      != 0) {
   printf("%s: failed to reset port during timeout "
       "handling, disabling it\n", (((ap)->ap_sc)->sc_dev.dv_xname));
   ap->ap_state = 4;
  }
  if (*active) {
   ;
   if (ncq_cmd)
    ahci_pwrite(ap, 0x34, *active);
   ahci_pwrite(ap, 0x38, *active);
  }
 }
 ;
 if (ccb_was_started)
  ahci_issue_pending_commands(ap, ncq_cmd);
 else if (ap->ap_active == 0)
  ahci_issue_pending_ncq_commands(ap);
 ;
 ata_complete(xa);
 ;
ret:
 _splx(s);
}
void
ahci_empty_done(struct ahci_ccb *ccb)
{
 if (ccb->ccb_xa.state != 3)
  ccb->ccb_xa.state = 2;
}
int
ahci_pmp_read(struct ahci_port *ap, int target, int which, u_int32_t *datap)
{
 struct ahci_ccb *ccb;
 struct ata_fis_h2d *fis;
 int error;
 ccb = ahci_get_pmp_ccb(ap);
 if (ccb == ((void *)0)) {
  printf("%s: NULL ccb!\n", (((ap)->ap_sc)->sc_dev.dv_xname));
  return (1);
 }
 ccb->ccb_xa.flags = (1<<3) | (1<<8);
 ccb->ccb_xa.pmp_port = 0x0f;
 ccb->ccb_xa.state = 1;
 __builtin_memset((ccb->ccb_cmd_table), (0), (sizeof(struct ahci_cmd_table)));
 fis = (struct ata_fis_h2d *)ccb->ccb_cmd_table->cfis;
 fis->type = 0x27;
 fis->flags = (1<<7) | 0x0f;
 fis->command = 0xe4;
 fis->features = which;
 fis->device = target | 0x40;
 fis->control = 0x08;
 if (ahci_poll(ccb, 1000, ahci_pmp_probe_timeout) != 0) {
  error = 1;
 } else {
  *datap = ccb->ccb_xa.rfis.sector_count |
      (ccb->ccb_xa.rfis.lba_low << 8) |
      (ccb->ccb_xa.rfis.lba_mid << 16) |
      (ccb->ccb_xa.rfis.lba_high << 24);
  error = 0;
 }
 ahci_put_pmp_ccb(ccb);
 return (error);
}
int
ahci_pmp_write(struct ahci_port *ap, int target, int which, u_int32_t data)
{
 struct ahci_ccb *ccb;
 struct ata_fis_h2d *fis;
 int error;
 ccb = ahci_get_pmp_ccb(ap);
 if (ccb == ((void *)0)) {
  printf("%s: NULL ccb!\n", (((ap)->ap_sc)->sc_dev.dv_xname));
  return (1);
 }
 ccb->ccb_xa.flags = (1<<3);
 ccb->ccb_xa.pmp_port = 0x0f;
 ccb->ccb_xa.state = 1;
 __builtin_memset((ccb->ccb_cmd_table), (0), (sizeof(struct ahci_cmd_table)));
 fis = (struct ata_fis_h2d *)ccb->ccb_cmd_table->cfis;
 fis->type = 0x27;
 fis->flags = (1<<7) | 0x0f;
 fis->command = 0xe8;
 fis->features = which;
 fis->device = target | 0x40;
 fis->sector_count = (u_int8_t)data;
 fis->lba_low = (u_int8_t)(data >> 8);
 fis->lba_mid = (u_int8_t)(data >> 16);
 fis->lba_high = (u_int8_t)(data >> 24);
 fis->control = 0x08;
 error = ahci_poll(ccb, 1000, ahci_pmp_probe_timeout);
 ahci_put_pmp_ccb(ccb);
 return (error);
}
int
ahci_pmp_phy_status(struct ahci_port *ap, int target, u_int32_t *datap)
{
 int error;
 error = ahci_pmp_read(ap, target, 0, datap);
 if (error == 0)
  error = ahci_pmp_write(ap, target, 1, -1);
 if (error)
  *datap = 0;
 return (error);
}
int
ahci_pmp_identify(struct ahci_port *ap, int *ret_nports)
{
 u_int32_t chipid;
 u_int32_t rev;
 u_int32_t nports;
 u_int32_t features;
 u_int32_t enabled;
 int s;
 s = _splraise(5);
 if (ahci_pmp_read(ap, 15, 0, &chipid) ||
     ahci_pmp_read(ap, 15, 1, &rev) ||
     ahci_pmp_read(ap, 15, 2, &nports) ||
     ahci_pmp_read(ap, 15, 64, &features) ||
     ahci_pmp_read(ap, 15, 96, &enabled)) {
  printf("%s: port multiplier identification failed\n",
      (((ap)->ap_sc)->sc_dev.dv_xname));
  _splx(s);
  return (1);
 }
 _splx(s);
 nports &= 0x0F;
 if (chipid == 0x37261095) {
  nports--;
 }
 printf("%s: port multiplier found: chip=%08x rev=0x%b nports=%d, "
     "features: 0x%b, enabled: 0x%b\n", (((ap)->ap_sc)->sc_dev.dv_xname), chipid, rev,
     "\20" "\003PM1.1" "\002PM1.0", nports, features, "\20" "\004AsyncNotify" "\003DynamicSSC" "\002PMREQ" "\001BIST", enabled,
     "\20" "\004AsyncNotify" "\003DynamicSSC" "\002PMREQ" "\001BIST");
 *ret_nports = nports;
 return (0);
}
