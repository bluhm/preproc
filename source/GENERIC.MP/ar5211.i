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
extern u_char inet6ctlerrmap[];
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

extern int inetctlerrmap[];
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
struct rtentry;
struct timeout;
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
  caddr_t carp_s;
  struct ifnet *carp_d;
 } if_carp_ptr;
 unsigned int if_index;
 short if_timer;
 unsigned short if_flags;
 int if_xflags;
 struct if_data if_data;
 u_int32_t if_hardmtu;
 char if_description[64];
 u_short if_rtlabelid;
 u_int8_t if_priority;
 u_int8_t if_llprio;
 struct timeout *if_slowtimo;
 struct task *if_watchdogtask;
 struct task *if_linkstatetask;
 struct mbuf_queue if_inputqueue;
 struct task *if_inputtask;
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
int if_input_local(struct ifnet *, struct mbuf *, sa_family_t);
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
struct ieee80211_frame {
 u_int8_t i_fc[2];
 u_int8_t i_dur[2];
 u_int8_t i_addr1[6];
 u_int8_t i_addr2[6];
 u_int8_t i_addr3[6];
 u_int8_t i_seq[2];
} __attribute__((__packed__));
struct ieee80211_qosframe {
 u_int8_t i_fc[2];
 u_int8_t i_dur[2];
 u_int8_t i_addr1[6];
 u_int8_t i_addr2[6];
 u_int8_t i_addr3[6];
 u_int8_t i_seq[2];
 u_int8_t i_qos[2];
} __attribute__((__packed__));
struct ieee80211_htframe {
 u_int8_t i_fc[2];
 u_int8_t i_dur[2];
 u_int8_t i_addr1[6];
 u_int8_t i_addr2[6];
 u_int8_t i_addr3[6];
 u_int8_t i_seq[2];
 u_int8_t i_qos[2];
 u_int8_t i_ht[4];
} __attribute__((__packed__));
struct ieee80211_frame_addr4 {
 u_int8_t i_fc[2];
 u_int8_t i_dur[2];
 u_int8_t i_addr1[6];
 u_int8_t i_addr2[6];
 u_int8_t i_addr3[6];
 u_int8_t i_seq[2];
 u_int8_t i_addr4[6];
} __attribute__((__packed__));
struct ieee80211_qosframe_addr4 {
 u_int8_t i_fc[2];
 u_int8_t i_dur[2];
 u_int8_t i_addr1[6];
 u_int8_t i_addr2[6];
 u_int8_t i_addr3[6];
 u_int8_t i_seq[2];
 u_int8_t i_addr4[6];
 u_int8_t i_qos[2];
} __attribute__((__packed__));
struct ieee80211_htframe_addr4 {
 u_int8_t i_fc[2];
 u_int8_t i_dur[2];
 u_int8_t i_addr1[6];
 u_int8_t i_addr2[6];
 u_int8_t i_addr3[6];
 u_int8_t i_seq[2];
 u_int8_t i_addr4[6];
 u_int8_t i_qos[2];
 u_int8_t i_ht[4];
} __attribute__((__packed__));
struct ieee80211_frame_min {
 u_int8_t i_fc[2];
 u_int8_t i_dur[2];
 u_int8_t i_addr1[6];
 u_int8_t i_addr2[6];
} __attribute__((__packed__));
struct ieee80211_frame_rts {
 u_int8_t i_fc[2];
 u_int8_t i_dur[2];
 u_int8_t i_ra[6];
 u_int8_t i_ta[6];
} __attribute__((__packed__));
struct ieee80211_frame_cts {
 u_int8_t i_fc[2];
 u_int8_t i_dur[2];
 u_int8_t i_ra[6];
} __attribute__((__packed__));
struct ieee80211_frame_ack {
 u_int8_t i_fc[2];
 u_int8_t i_dur[2];
 u_int8_t i_ra[6];
} __attribute__((__packed__));
struct ieee80211_frame_pspoll {
 u_int8_t i_fc[2];
 u_int8_t i_aid[2];
 u_int8_t i_bssid[6];
 u_int8_t i_ta[6];
} __attribute__((__packed__));
struct ieee80211_frame_cfend {
 u_int8_t i_fc[2];
 u_int8_t i_dur[2];
 u_int8_t i_ra[6];
 u_int8_t i_bssid[6];
} __attribute__((__packed__));
static __inline int
ieee80211_has_seq(const struct ieee80211_frame *wh)
{
 return (wh->i_fc[0] & 0x0c) !=
     0x04;
}
static __inline int
ieee80211_has_addr4(const struct ieee80211_frame *wh)
{
 return (wh->i_fc[1] & 0x03) ==
     0x03;
}
static __inline int
ieee80211_has_qos(const struct ieee80211_frame *wh)
{
 return (wh->i_fc[0] &
     (0x0c | 0x80)) ==
     (0x08 | 0x80);
}
static __inline int
ieee80211_has_htc(const struct ieee80211_frame *wh)
{
 return (wh->i_fc[1] & 0x80) &&
     (ieee80211_has_qos(wh) ||
      (wh->i_fc[0] & 0x0c) ==
      0x00);
}
static __inline u_int16_t
ieee80211_get_qos(const struct ieee80211_frame *wh)
{
 const u_int8_t *frm;
 if (ieee80211_has_addr4(wh))
  frm = ((const struct ieee80211_qosframe_addr4 *)wh)->i_qos;
 else
  frm = ((const struct ieee80211_qosframe *)wh)->i_qos;
 return __extension__({ __uint16_t __swap16gen_x = (*(const u_int16_t *)frm); (__uint16_t)((__swap16gen_x & 0xff) << 8 | (__swap16gen_x & 0xff00) >> 8); });
}
enum {
 IEEE80211_ELEMID_SSID = 0,
 IEEE80211_ELEMID_RATES = 1,
 IEEE80211_ELEMID_FHPARMS = 2,
 IEEE80211_ELEMID_DSPARMS = 3,
 IEEE80211_ELEMID_CFPARMS = 4,
 IEEE80211_ELEMID_TIM = 5,
 IEEE80211_ELEMID_IBSSPARMS = 6,
 IEEE80211_ELEMID_COUNTRY = 7,
 IEEE80211_ELEMID_HOPPING_PARMS = 8,
 IEEE80211_ELEMID_HOPPING_PATTERN = 9,
 IEEE80211_ELEMID_REQUEST = 10,
 IEEE80211_ELEMID_QBSS_LOAD = 11,
 IEEE80211_ELEMID_EDCAPARMS = 12,
 IEEE80211_ELEMID_TSPEC = 13,
 IEEE80211_ELEMID_TCLASS = 14,
 IEEE80211_ELEMID_SCHEDULE = 15,
 IEEE80211_ELEMID_CHALLENGE = 16,
 IEEE80211_ELEMID_POWER_CONSTRAINT = 32,
 IEEE80211_ELEMID_POWER_CAP = 33,
 IEEE80211_ELEMID_TPC_REQUEST = 34,
 IEEE80211_ELEMID_TPC_REPORT = 35,
 IEEE80211_ELEMID_SUPP_CHNLS = 35,
 IEEE80211_ELEMID_CSA = 37,
 IEEE80211_ELEMID_MEASUREMENT_REQUEST = 38,
 IEEE80211_ELEMID_MEASUREMENT_REPORT = 39,
 IEEE80211_ELEMID_QUIET = 40,
 IEEE80211_ELEMID_IBSS_DFS = 41,
 IEEE80211_ELEMID_ERP = 42,
 IEEE80211_ELEMID_TS_DELAY = 43,
 IEEE80211_ELEMID_TCLAS = 44,
 IEEE80211_ELEMID_HTCAPS = 45,
 IEEE80211_ELEMID_QOS_CAP = 46,
 IEEE80211_ELEMID_RSN = 48,
 IEEE80211_ELEMID_XRATES = 50,
 IEEE80211_ELEMID_AP_CHNL_REPORT = 51,
 IEEE80211_ELEMID_NBR_REPORT = 52,
 IEEE80211_ELEMID_RCPI = 53,
 IEEE80211_ELEMID_MDE = 54,
 IEEE80211_ELEMID_FTE = 55,
 IEEE80211_ELEMID_TIE = 56,
 IEEE80211_ELEMID_RDE = 57,
 IEEE80211_ELEMID_DSE = 58,
 IEEE80211_ELEMID_SUPP_OPCLASS = 59,
 IEEE80211_ELEMID_XCSA = 60,
 IEEE80211_ELEMID_HTOP = 61,
 IEEE80211_ELEMID_SECONDARY_CHANL_OFFSET = 62,
 IEEE80211_ELEMID_AVG_ACCESS_DELAY = 63,
 IEEE80211_ELEMID_ANTENNA = 64,
 IEEE80211_ELEMID_RSNI = 65,
 IEEE80211_ELEMID_MEASUREMENT_PILOT_TX = 66,
 IEEE80211_ELEMID_AVAIL_CAPACITY = 67,
 IEEE80211_ELEMID_AC_ACCESS_DELAY = 68,
 IEEE80211_ELEMID_TIME_ADVERT = 69,
 IEEE80211_ELEMID_RM = 70,
 IEEE80211_ELEMID_MULTI_BSSID = 71,
 IEEE80211_ELEMID_20_40_CBW_COEX = 72,
 IEEE80211_ELEMID_20_40_CBW_INTOLERANT = 73,
 IEEE80211_ELEMID_SCAN_PARAM_OVERLAP = 74,
 IEEE80211_ELEMID_RIC = 75,
 IEEE80211_ELEMID_MMIE = 76,
 IEEE80211_ELEMID_EVENT_REQUEST = 78,
 IEEE80211_ELEMID_EVENT_REPORT = 79,
 IEEE80211_ELEMID_DIAG_REQUEST = 80,
 IEEE80211_ELEMID_DIAG_REPORT = 81,
 IEEE80211_ELEMID_LOCATION_PARMS = 82,
 IEEE80211_ELEMID_NONTX_BSSID = 83,
 IEEE80211_ELEMID_SSID_LIST = 84,
 IEEE80211_ELEMID_MULTI_BSSID_IDX = 85,
 IEEE80211_ELEMID_FMS_DESC = 86,
 IEEE80211_ELEMID_FMS_REQUEST = 87,
 IEEE80211_ELEMID_FMS_RESPONSE = 88,
 IEEE80211_ELEMID_QOS_TRAFFIC_CAP = 89,
 IEEE80211_ELEMID_MAX_IDLE_PERIOD = 90,
 IEEE80211_ELEMID_TFS_REQUEST = 91,
 IEEE80211_ELEMID_TFS_RESPONSE = 92,
 IEEE80211_ELEMID_WNM_SLEEP = 93,
 IEEE80211_ELEMID_TIM_BCAST_REQUEST = 94,
 IEEE80211_ELEMID_TIM_BCAST_RESPONSE = 95,
 IEEE80211_ELEMID_INTERFERENCE_REPORT = 96,
 IEEE80211_ELEMID_CHNL_USAGE = 97,
 IEEE80211_ELEMID_TIME_ZONE = 98,
 IEEE80211_ELEMID_DMS_REQUEST = 99,
 IEEE80211_ELEMID_DMS_RESPONSE = 100,
 IEEE80211_ELEMID_LINK_ID = 101,
 IEEE80211_ELEMID_WAKE_SCHED = 102,
 IEEE80211_ELEMID_CHNL_SWITCH_TIMING = 104,
 IEEE80211_ELEMID_PTI_CTRL = 105,
 IEEE80211_ELEMID_TPU_BUF_STATUS = 106,
 IEEE80211_ELEMID_INTERWORKING = 107,
 IEEE80211_ELEMID_ADVERT_PROTOCOL = 108,
 IEEE80211_ELEMID_EXPEDITED_BW_REQUEST = 109,
 IEEE80211_ELEMID_QOS_MAP_SET = 110,
 IEEE80211_ELEMID_ROAMING_CONSORTIUM = 111,
 IEEE80211_ELEMID_EMERGENCY_ALERT_ID = 112,
 IEEE80211_ELEMID_MESHCONF = 113,
 IEEE80211_ELEMID_MESHID = 114,
 IEEE80211_ELEMID_MESHLINK = 115,
 IEEE80211_ELEMID_MESHCNGST = 116,
 IEEE80211_ELEMID_MESHPEER = 117,
 IEEE80211_ELEMID_MESHCSA = 118,
 IEEE80211_ELEMID_MESHAWAKEW = 119,
 IEEE80211_ELEMID_MESHBEACONT = 120,
 IEEE80211_ELEMID_MCCAOP_SETUP_REQUEST = 121,
 IEEE80211_ELEMID_MCCAOP_SETUP_REPLY = 122,
 IEEE80211_ELEMID_MCCAOP_ADVERT = 123,
 IEEE80211_ELEMID_MCCAOP_TEARDOWN = 124,
 IEEE80211_ELEMID_MESHGANN = 125,
 IEEE80211_ELEMID_MESHRANN = 126,
 IEEE80211_ELEMID_XCAPS = 127,
 IEEE80211_ELEMID_MESHPREQ = 130,
 IEEE80211_ELEMID_MESHPREP = 131,
 IEEE80211_ELEMID_MESHPERR = 132,
 IEEE80211_ELEMID_MESHPXU = 137,
 IEEE80211_ELEMID_MESHPXUC = 138,
 IEEE80211_ELEMID_AUTH_MESH_PEERING_XCHG = 139,
 IEEE80211_ELEMID_MIC = 140,
 IEEE80211_ELEMID_DEST_URI = 141,
 IEEE80211_ELEMID_U_APSD_COEX = 142,
 IEEE80211_ELEMID_MCCAOP_ADVERT_OVIEW = 174,
 IEEE80211_ELEMID_VENDOR = 221
};
enum {
 IEEE80211_CATEG_SPECTRUM = 0,
 IEEE80211_CATEG_QOS = 1,
 IEEE80211_CATEG_DLS = 2,
 IEEE80211_CATEG_BA = 3,
 IEEE80211_CATEG_PUB = 4,
 IEEE80211_CATEG_RADIO_MSRMNT = 5,
 IEEE80211_CATEG_FAST_BSS_TRANS = 6,
 IEEE80211_CATEG_HT = 7,
 IEEE80211_CATEG_SA_QUERY = 8,
 IEEE80211_CATEG_PROT_DUAL_PUBLIC_ACTION = 9,
 IEEE80211_CATEG_WNM = 10,
 IEEE80211_CATEG_UNPROT_WNM = 11,
 IEEE80211_CATEG_TDLS = 12,
 IEEE80211_CATEG_MESH = 13,
 IEEE80211_CATEG_MULTIHOP = 14,
 IEEE80211_CATEG_SELF_PROT = 15,
 IEEE80211_CATEG_PROT_VENDOR = 126,
 IEEE80211_CATEG_VENDOR = 127
};
enum ieee80211_edca_ac {
 EDCA_AC_BK = 1,
 EDCA_AC_BE = 0,
 EDCA_AC_VI = 2,
 EDCA_AC_VO = 3
};
enum {
 IEEE80211_AUTH_OPEN_REQUEST = 1,
 IEEE80211_AUTH_OPEN_RESPONSE = 2
};
enum {
 IEEE80211_AUTH_SHARED_REQUEST = 1,
 IEEE80211_AUTH_SHARED_CHALLENGE = 2,
 IEEE80211_AUTH_SHARED_RESPONSE = 3,
 IEEE80211_AUTH_SHARED_PASS = 4
};
enum {
 IEEE80211_REASON_UNSPECIFIED = 1,
 IEEE80211_REASON_AUTH_EXPIRE = 2,
 IEEE80211_REASON_AUTH_LEAVE = 3,
 IEEE80211_REASON_ASSOC_EXPIRE = 4,
 IEEE80211_REASON_ASSOC_TOOMANY = 5,
 IEEE80211_REASON_NOT_AUTHED = 6,
 IEEE80211_REASON_NOT_ASSOCED = 7,
 IEEE80211_REASON_ASSOC_LEAVE = 8,
 IEEE80211_REASON_ASSOC_NOT_AUTHED = 9,
 IEEE80211_REASON_RSN_REQUIRED = 11,
 IEEE80211_REASON_RSN_INCONSISTENT = 12,
 IEEE80211_REASON_IE_INVALID = 13,
 IEEE80211_REASON_MIC_FAILURE = 14,
 IEEE80211_REASON_4WAY_TIMEOUT = 15,
 IEEE80211_REASON_GROUP_TIMEOUT = 16,
 IEEE80211_REASON_RSN_DIFFERENT_IE = 17,
 IEEE80211_REASON_BAD_GROUP_CIPHER = 18,
 IEEE80211_REASON_BAD_PAIRWISE_CIPHER = 19,
 IEEE80211_REASON_BAD_AKMP = 20,
 IEEE80211_REASON_RSN_IE_VER_UNSUP = 21,
 IEEE80211_REASON_RSN_IE_BAD_CAP = 22,
 IEEE80211_REASON_CIPHER_REJ_POLICY = 24,
 IEEE80211_REASON_SETUP_REQUIRED = 38,
 IEEE80211_REASON_TIMEOUT = 39
};
enum {
 IEEE80211_STATUS_SUCCESS = 0,
 IEEE80211_STATUS_UNSPECIFIED = 1,
 IEEE80211_STATUS_CAPINFO = 10,
 IEEE80211_STATUS_NOT_ASSOCED = 11,
 IEEE80211_STATUS_OTHER = 12,
 IEEE80211_STATUS_ALG = 13,
 IEEE80211_STATUS_SEQUENCE = 14,
 IEEE80211_STATUS_CHALLENGE = 15,
 IEEE80211_STATUS_TIMEOUT = 16,
 IEEE80211_STATUS_TOOMANY = 17,
 IEEE80211_STATUS_BASIC_RATE = 18,
 IEEE80211_STATUS_SP_REQUIRED = 19,
 IEEE80211_STATUS_PBCC_REQUIRED = 20,
 IEEE80211_STATUS_CA_REQUIRED = 21,
 IEEE80211_STATUS_TOO_MANY_STATIONS = 22,
 IEEE80211_STATUS_RATES = 23,
 IEEE80211_STATUS_SHORTSLOT_REQUIRED = 25,
 IEEE80211_STATUS_DSSSOFDM_REQUIRED = 26,
 IEEE80211_STATUS_TRY_AGAIN_LATER = 30,
 IEEE80211_STATUS_MFP_POLICY = 31,
 IEEE80211_STATUS_REFUSED = 37,
 IEEE80211_STATUS_INVALID_PARAM = 38,
 IEEE80211_STATUS_IE_INVALID = 40,
 IEEE80211_STATUS_BAD_GROUP_CIPHER = 41,
 IEEE80211_STATUS_BAD_PAIRWISE_CIPHER = 42,
 IEEE80211_STATUS_BAD_AKMP = 43,
 IEEE80211_STATUS_RSN_IE_VER_UNSUP = 44,
 IEEE80211_STATUS_CIPHER_REJ_POLICY = 46
};
struct ieee80211_eapol_key {
 u_int8_t version;
 u_int8_t type;
 u_int8_t len[2];
 u_int8_t desc;
 u_int8_t info[2];
 u_int8_t keylen[2];
 u_int8_t replaycnt[8];
 u_int8_t nonce[32];
 u_int8_t iv[16];
 u_int8_t rsc[8];
 u_int8_t reserved[8];
 u_int8_t mic[16];
 u_int8_t paylen[2];
} __attribute__((__packed__));
struct ieee80211_ptk {
 u_int8_t kck[16];
 u_int8_t kek[16];
 u_int8_t tk[32];
} __attribute__((__packed__));
enum {
 IEEE80211_KDE_GTK = 1,
 IEEE80211_KDE_MACADDR = 3,
 IEEE80211_KDE_PMKID = 4,
 IEEE80211_KDE_SMK = 5,
 IEEE80211_KDE_NONCE = 6,
 IEEE80211_KDE_LIFETIME = 7,
 IEEE80211_KDE_ERROR = 8,
 IEEE80211_KDE_IGTK = 9
};
enum ieee80211_htprot {
 IEEE80211_HTPROT_NONE = 0,
 IEEE80211_HTPROT_NONMEMBER,
 IEEE80211_HTPROT_20MHZ,
 IEEE80211_HTPROT_NONHT_MIXED
};
enum ieee80211_cipher {
 IEEE80211_CIPHER_NONE = 0x00000000,
 IEEE80211_CIPHER_USEGROUP = 0x00000001,
 IEEE80211_CIPHER_WEP40 = 0x00000002,
 IEEE80211_CIPHER_TKIP = 0x00000004,
 IEEE80211_CIPHER_CCMP = 0x00000008,
 IEEE80211_CIPHER_WEP104 = 0x00000010,
 IEEE80211_CIPHER_BIP = 0x00000020
};
enum ieee80211_akm {
 IEEE80211_AKM_NONE = 0x00000000,
 IEEE80211_AKM_8021X = 0x00000001,
 IEEE80211_AKM_PSK = 0x00000002,
 IEEE80211_AKM_SHA256_8021X = 0x00000004,
 IEEE80211_AKM_SHA256_PSK = 0x00000008
};
static __inline int
ieee80211_is_8021x_akm(enum ieee80211_akm akm)
{
 return akm == IEEE80211_AKM_8021X ||
     akm == IEEE80211_AKM_SHA256_8021X;
}
static __inline int
ieee80211_is_sha256_akm(enum ieee80211_akm akm)
{
 return akm == IEEE80211_AKM_SHA256_8021X ||
     akm == IEEE80211_AKM_SHA256_PSK;
}
struct ieee80211_key {
 u_int8_t k_id;
 enum ieee80211_cipher k_cipher;
 u_int k_flags;
 u_int k_len;
 u_int64_t k_rsc[16];
 u_int64_t k_mgmt_rsc;
 u_int64_t k_tsc;
 u_int8_t k_key[32];
 void *k_priv;
};
struct ieee80211_pmk {
 enum ieee80211_akm pmk_akm;
 u_int32_t pmk_lifetime;
 u_int8_t pmk_pmkid[16];
 u_int8_t pmk_macaddr[6];
 u_int8_t pmk_key[32];
 struct { struct ieee80211_pmk *tqe_next; struct ieee80211_pmk **tqe_prev; } pmk_next;
};
struct ieee80211com;
struct ieee80211_node;
void ieee80211_crypto_attach(struct ifnet *);
void ieee80211_crypto_detach(struct ifnet *);
void ieee80211_crypto_clear_groupkeys(struct ieee80211com *);
struct ieee80211_key *ieee80211_get_txkey(struct ieee80211com *,
     const struct ieee80211_frame *, struct ieee80211_node *);
struct ieee80211_key *ieee80211_get_rxkey(struct ieee80211com *,
     struct mbuf *, struct ieee80211_node *);
struct mbuf *ieee80211_encrypt(struct ieee80211com *, struct mbuf *,
     struct ieee80211_key *);
struct mbuf *ieee80211_decrypt(struct ieee80211com *, struct mbuf *,
     struct ieee80211_node *);
int ieee80211_set_key(struct ieee80211com *, struct ieee80211_node *,
     struct ieee80211_key *);
void ieee80211_delete_key(struct ieee80211com *, struct ieee80211_node *,
     struct ieee80211_key *);
void ieee80211_eapol_key_mic(struct ieee80211_eapol_key *,
     const u_int8_t *);
int ieee80211_eapol_key_check_mic(struct ieee80211_eapol_key *,
     const u_int8_t *);
void ieee80211_eapol_key_encrypt(struct ieee80211com *,
     struct ieee80211_eapol_key *, const u_int8_t *);
int ieee80211_eapol_key_decrypt(struct ieee80211_eapol_key *,
     const u_int8_t *);
struct ieee80211_pmk *ieee80211_pmksa_add(struct ieee80211com *,
     enum ieee80211_akm, const u_int8_t *, const u_int8_t *, u_int32_t);
struct ieee80211_pmk *ieee80211_pmksa_find(struct ieee80211com *,
     struct ieee80211_node *, const u_int8_t *);
void ieee80211_derive_ptk(enum ieee80211_akm, const u_int8_t *,
     const u_int8_t *, const u_int8_t *, const u_int8_t *,
     const u_int8_t *, struct ieee80211_ptk *);
int ieee80211_cipher_keylen(enum ieee80211_cipher);
int ieee80211_wep_set_key(struct ieee80211com *, struct ieee80211_key *);
void ieee80211_wep_delete_key(struct ieee80211com *,
     struct ieee80211_key *);
struct mbuf *ieee80211_wep_encrypt(struct ieee80211com *, struct mbuf *,
     struct ieee80211_key *);
struct mbuf *ieee80211_wep_decrypt(struct ieee80211com *, struct mbuf *,
     struct ieee80211_key *);
int ieee80211_tkip_set_key(struct ieee80211com *, struct ieee80211_key *);
void ieee80211_tkip_delete_key(struct ieee80211com *,
     struct ieee80211_key *);
struct mbuf *ieee80211_tkip_encrypt(struct ieee80211com *,
     struct mbuf *, struct ieee80211_key *);
struct mbuf *ieee80211_tkip_decrypt(struct ieee80211com *,
     struct mbuf *, struct ieee80211_key *);
void ieee80211_tkip_mic(struct mbuf *, int, const u_int8_t *,
     u_int8_t[8]);
void ieee80211_michael_mic_failure(struct ieee80211com *, u_int64_t);
void ieee80211_michael_mic_failure_timeout(void *);
int ieee80211_ccmp_set_key(struct ieee80211com *, struct ieee80211_key *);
void ieee80211_ccmp_delete_key(struct ieee80211com *,
     struct ieee80211_key *);
struct mbuf *ieee80211_ccmp_encrypt(struct ieee80211com *, struct mbuf *,
     struct ieee80211_key *);
struct mbuf *ieee80211_ccmp_decrypt(struct ieee80211com *, struct mbuf *,
     struct ieee80211_key *);
int ieee80211_bip_set_key(struct ieee80211com *, struct ieee80211_key *);
void ieee80211_bip_delete_key(struct ieee80211com *,
     struct ieee80211_key *);
struct mbuf *ieee80211_bip_encap(struct ieee80211com *, struct mbuf *,
     struct ieee80211_key *);
struct mbuf *ieee80211_bip_decap(struct ieee80211com *, struct mbuf *,
     struct ieee80211_key *);
struct ieee80211_stats {
 u_int32_t is_rx_badversion;
 u_int32_t is_rx_tooshort;
 u_int32_t is_rx_wrongbss;
 u_int32_t is_rx_dup;
 u_int32_t is_rx_wrongdir;
 u_int32_t is_rx_mcastecho;
 u_int32_t is_rx_notassoc;
 u_int32_t is_rx_nowep;
 u_int32_t is_rx_unencrypted;
 u_int32_t is_rx_wepfail;
 u_int32_t is_rx_decap;
 u_int32_t is_rx_mgtdiscard;
 u_int32_t is_rx_ctl;
 u_int32_t is_rx_rstoobig;
 u_int32_t is_rx_elem_missing;
 u_int32_t is_rx_elem_toobig;
 u_int32_t is_rx_elem_toosmall;
 u_int32_t is_rx_badchan;
 u_int32_t is_rx_chanmismatch;
 u_int32_t is_rx_nodealloc;
 u_int32_t is_rx_ssidmismatch;
 u_int32_t is_rx_auth_unsupported;
 u_int32_t is_rx_auth_fail;
 u_int32_t is_rx_assoc_bss;
 u_int32_t is_rx_assoc_notauth;
 u_int32_t is_rx_assoc_capmismatch;
 u_int32_t is_rx_assoc_norate;
 u_int32_t is_rx_deauth;
 u_int32_t is_rx_disassoc;
 u_int32_t is_rx_badsubtype;
 u_int32_t is_rx_nombuf;
 u_int32_t is_rx_decryptcrc;
 u_int32_t is_rx_ahdemo_mgt;
 u_int32_t is_rx_bad_auth;
 u_int32_t is_tx_nombuf;
 u_int32_t is_tx_nonode;
 u_int32_t is_tx_unknownmgt;
 u_int32_t is_scan_active;
 u_int32_t is_scan_passive;
 u_int32_t is_node_timeout;
 u_int32_t is_crypto_nomem;
 u_int32_t is_rx_assoc_badrsnie;
 u_int32_t is_rx_unauth;
 u_int32_t is_tx_noauth;
 u_int32_t is_rx_eapol_key;
 u_int32_t is_rx_eapol_replay;
 u_int32_t is_rx_eapol_badmic;
 u_int32_t is_rx_remmicfail;
 u_int32_t is_rx_locmicfail;
 u_int32_t is_tkip_replays;
 u_int32_t is_tkip_icv_errs;
 u_int32_t is_ccmp_replays;
 u_int32_t is_ccmp_dec_errs;
 u_int32_t is_cmac_replays;
 u_int32_t is_cmac_icv_errs;
 u_int32_t is_pbac_errs;
 u_int32_t is_ht_nego_no_mandatory_mcs;
 u_int32_t is_ht_nego_no_basic_mcs;
 u_int32_t is_ht_nego_bad_crypto;
 u_int32_t is_ht_prot_change;
 u_int32_t is_ht_rx_ba_agreements;
 u_int32_t is_ht_tx_ba_agreements;
 u_int32_t is_ht_rx_frame_below_ba_winstart;
 u_int32_t is_ht_rx_frame_above_ba_winend;
 u_int32_t is_ht_rx_ba_window_slide;
 u_int32_t is_ht_rx_ba_window_jump;
 u_int32_t is_ht_rx_ba_no_buf;
 u_int32_t is_ht_rx_ba_frame_lost;
 u_int32_t is_ht_rx_ba_window_gap_timeout;
 u_int32_t is_ht_rx_ba_timeout;
 u_int32_t is_ht_tx_ba_timeout;
};
struct ieee80211_nwid {
 u_int8_t i_len;
 u_int8_t i_nwid[32];
};
struct ieee80211_nwkey {
 char i_name[16];
 int i_wepon;
 int i_defkid;
 struct {
  int i_keylen;
  u_int8_t *i_keydat;
 } i_key[4];
};
struct ieee80211_power {
 char i_name[16];
 int i_enabled;
 int i_maxsleep;
};
struct ieee80211chanreq {
 char i_name[16];
 u_int16_t i_channel;
};
struct ieee80211_chanreq_all {
 char i_name[16];
 struct ieee80211_channel *i_chans;
};
struct ieee80211_bssid {
 char i_name[16];
 u_int8_t i_bssid[6];
};
struct ieee80211_txpower {
 char i_name[16];
 int i_mode;
 int16_t i_val;
};
struct ieee80211_wpapsk {
 char i_name[16];
 int i_enabled;
 u_int8_t i_psk[32];
};
struct ieee80211_wpaparams {
 char i_name[16];
 int i_enabled;
 u_int i_protos;
 u_int i_akms;
 u_int i_ciphers;
 u_int i_groupcipher;
};
struct ieee80211_keyavail {
 char i_name[16];
 u_int8_t i_macaddr[6];
 u_int8_t i_key[32];
 u_int32_t i_lifetime;
};
struct ieee80211_keyrun {
 char i_name[16];
 u_int8_t i_macaddr[6];
};
struct ieee80211_nodereq {
 char nr_ifname[16];
 u_int8_t nr_macaddr[6];
 u_int8_t nr_bssid[6];
 u_int8_t nr_nwid_len;
 u_int8_t nr_nwid[32];
 u_int16_t nr_channel;
 u_int16_t nr_chan_flags;
 u_int8_t nr_nrates;
 u_int8_t nr_rates[15];
 int8_t nr_rssi;
 int8_t nr_max_rssi;
 u_int8_t nr_tstamp[8];
 u_int16_t nr_intval;
 u_int16_t nr_capinfo;
 u_int8_t nr_erp;
 u_int8_t nr_pwrsave;
 u_int16_t nr_associd;
 u_int16_t nr_txseq;
 u_int16_t nr_rxseq;
 u_int32_t nr_fails;
 u_int32_t nr_inact;
 u_int8_t nr_txrate;
 u_int16_t nr_state;
 u_int nr_rsnprotos;
 u_int nr_rsnciphers;
 u_int nr_rsnakms;
 u_int8_t nr_flags;
 uint16_t nr_htcaps;
 uint8_t nr_rxmcs[(((80) + ((8) - 1)) / (8))];
 uint16_t nr_max_rxrate;
 uint8_t nr_tx_mcs_set;
 uint8_t nr_txmcs;
};
struct ieee80211_nodereq_all {
 char na_ifname[16];
 int na_nodes;
 size_t na_size;
 struct ieee80211_nodereq *na_node;
 u_int8_t na_flags;
};
struct ieee80211_flags {
 const char *f_name;
 u_int f_flag;
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
struct ieee80211_rateset {
 u_int8_t rs_nrates;
 u_int8_t rs_rates[15];
};
extern const struct ieee80211_rateset ieee80211_std_rateset_11a;
extern const struct ieee80211_rateset ieee80211_std_rateset_11b;
extern const struct ieee80211_rateset ieee80211_std_rateset_11g;
enum ieee80211_node_state {
 IEEE80211_STA_CACHE,
 IEEE80211_STA_BSS,
 IEEE80211_STA_AUTH,
 IEEE80211_STA_ASSOC,
 IEEE80211_STA_COLLECT
};
enum ieee80211_node_psstate {
 IEEE80211_PS_AWAKE,
 IEEE80211_PS_DOZE
};
enum {
 RSNA_INITIALIZE,
 RSNA_AUTHENTICATION,
 RSNA_AUTHENTICATION_2,
 RSNA_INITPMK,
 RSNA_INITPSK,
 RSNA_PTKSTART,
 RSNA_PTKCALCNEGOTIATING,
 RSNA_PTKCALCNEGOTIATING_2,
 RSNA_PTKINITNEGOTIATING,
 RSNA_PTKINITDONE,
 RSNA_DISCONNECT,
 RSNA_DISCONNECTED
};
enum {
 RSNA_IDLE,
 RSNA_REKEYNEGOTIATING,
 RSNA_REKEYESTABLISHED,
 RSNA_KEYERROR
};
enum {
 RSNA_SUPP_INITIALIZE,
 RSNA_SUPP_PTKSTART,
 RSNA_SUPP_PTKNEGOTIATING,
 RNSA_SUPP_PTKDONE
};
struct ieee80211_rxinfo {
 u_int32_t rxi_flags;
 u_int32_t rxi_tstamp;
 int rxi_rssi;
};
struct ieee80211_tx_ba {
 struct ieee80211_node *ba_ni;
 struct timeout ba_to;
 int ba_timeout_val;
 int ba_state;
 u_int16_t ba_params;
 u_int16_t ba_winstart;
 u_int16_t ba_winend;
 u_int16_t ba_winsize;
 u_int8_t ba_token;
};
struct ieee80211_rx_ba {
 struct ieee80211_node *ba_ni;
 struct {
  struct mbuf *m;
  struct ieee80211_rxinfo rxi;
 } *ba_buf;
 struct timeout ba_to;
 int ba_timeout_val;
 int ba_state;
 u_int16_t ba_params;
 u_int16_t ba_winstart;
 u_int16_t ba_winend;
 u_int16_t ba_winsize;
 u_int16_t ba_head;
 struct timeout ba_gap_to;
 int ba_winmiss;
 uint16_t ba_missedsn;
 uint8_t ba_token;
};
struct ieee80211_node {
 struct rb_entry ni_node;
 struct ieee80211com *ni_ic;
 u_int ni_refcnt;
 u_int ni_scangen;
 u_int32_t ni_rstamp;
 u_int8_t ni_rssi;
 u_int8_t ni_macaddr[6];
 u_int8_t ni_bssid[6];
 u_int8_t ni_tstamp[8];
 u_int16_t ni_intval;
 u_int16_t ni_capinfo;
 u_int8_t ni_esslen;
 u_int8_t ni_essid[32];
 struct ieee80211_rateset ni_rates;
 u_int8_t *ni_country;
 struct ieee80211_channel *ni_chan;
 u_int8_t ni_erp;
 u_int8_t ni_dtimcount;
 u_int8_t ni_dtimperiod;
 u_int8_t ni_pwrsave;
 struct mbuf_queue ni_savedq;
 struct timeout ni_eapol_to;
 u_int ni_rsn_state;
 u_int ni_rsn_supp_state;
 u_int ni_rsn_gstate;
 u_int ni_rsn_retries;
 u_int ni_supported_rsnprotos;
 u_int ni_rsnprotos;
 u_int ni_supported_rsnakms;
 u_int ni_rsnakms;
 u_int ni_rsnciphers;
 enum ieee80211_cipher ni_rsngroupcipher;
 enum ieee80211_cipher ni_rsngroupmgmtcipher;
 u_int16_t ni_rsncaps;
 enum ieee80211_cipher ni_rsncipher;
 u_int8_t ni_nonce[32];
 u_int8_t ni_pmk[32];
 u_int8_t ni_pmkid[16];
 u_int64_t ni_replaycnt;
 u_int8_t ni_replaycnt_ok;
 u_int64_t ni_reqreplaycnt;
 u_int8_t ni_reqreplaycnt_ok;
 u_int8_t *ni_rsnie;
 struct ieee80211_key ni_pairwise_key;
 struct ieee80211_ptk ni_ptk;
 u_int8_t ni_key_count;
 int ni_port_valid;
 u_int16_t ni_sa_query_trid;
 struct timeout ni_sa_query_to;
 int ni_sa_query_count;
 uint16_t ni_htcaps;
 uint8_t ni_ampdu_param;
 uint8_t ni_rxmcs[(((80) + ((8) - 1)) / (8))];
 uint16_t ni_max_rxrate;
 uint8_t ni_tx_mcs_set;
 uint16_t ni_htxcaps;
 uint32_t ni_txbfcaps;
 uint8_t ni_aselcaps;
 uint8_t ni_primary_chan;
 uint8_t ni_htop0;
 uint16_t ni_htop1;
 uint16_t ni_htop2;
 uint8_t ni_basic_mcs[(((128) + ((8) - 1)) / (8))];
 struct ieee80211_tx_ba ni_tx_ba[16];
 struct ieee80211_rx_ba ni_rx_ba[16];
 int ni_txmcs;
 u_int16_t ni_associd;
 u_int16_t ni_txseq;
 u_int16_t ni_rxseq;
 u_int16_t ni_qos_txseqs[16];
 u_int16_t ni_qos_rxseqs[16];
 int ni_fails;
 int ni_inact;
 int ni_txrate;
 int ni_state;
 u_int16_t ni_flags;
};
struct ieee80211_tree { struct rb_tree rbh_root; };
static __inline void
ieee80211_node_incref(struct ieee80211_node *ni)
{
 int s;
 s = _splraise(6);
 ni->ni_refcnt++;
 _splx(s);
}
static __inline u_int
ieee80211_node_decref(struct ieee80211_node *ni)
{
 u_int refcnt;
 int s;
 s = _splraise(6);
 refcnt = --ni->ni_refcnt;
 _splx(s);
 return refcnt;
}
static __inline struct ieee80211_node *
ieee80211_ref_node(struct ieee80211_node *ni)
{
 ieee80211_node_incref(ni);
 return ni;
}
static __inline void
ieee80211_unref_node(struct ieee80211_node **ni)
{
 ieee80211_node_decref(*ni);
 *ni = ((void *)0);
}
struct ieee80211com;
extern void ieee80211_node_attach(struct ifnet *);
extern void ieee80211_node_lateattach(struct ifnet *);
extern void ieee80211_node_detach(struct ifnet *);
extern void ieee80211_begin_scan(struct ifnet *);
extern void ieee80211_next_scan(struct ifnet *);
extern void ieee80211_end_scan(struct ifnet *);
extern void ieee80211_reset_scan(struct ifnet *);
extern struct ieee80211_node *ieee80211_alloc_node(struct ieee80211com *,
  const u_int8_t *);
extern struct ieee80211_node *ieee80211_dup_bss(struct ieee80211com *,
  const u_int8_t *);
extern struct ieee80211_node *ieee80211_find_node(struct ieee80211com *,
  const u_int8_t *);
extern struct ieee80211_node *ieee80211_find_rxnode(struct ieee80211com *,
  const struct ieee80211_frame *);
extern struct ieee80211_node *ieee80211_find_txnode(struct ieee80211com *,
  const u_int8_t *);
extern struct ieee80211_node *
  ieee80211_find_node_for_beacon(struct ieee80211com *,
  const u_int8_t *, const struct ieee80211_channel *,
  const char *, u_int8_t);
extern void ieee80211_release_node(struct ieee80211com *,
  struct ieee80211_node *);
extern void ieee80211_free_allnodes(struct ieee80211com *);
typedef void ieee80211_iter_func(void *, struct ieee80211_node *);
extern void ieee80211_iterate_nodes(struct ieee80211com *ic,
  ieee80211_iter_func *, void *);
extern void ieee80211_clean_cached(struct ieee80211com *ic);
extern void ieee80211_clean_nodes(struct ieee80211com *, int);
void ieee80211_setup_htcaps(struct ieee80211_node *, const uint8_t *,
    uint8_t);
void ieee80211_clear_htcaps(struct ieee80211_node *);
int ieee80211_setup_htop(struct ieee80211_node *, const uint8_t *,
    uint8_t);
extern int ieee80211_setup_rates(struct ieee80211com *,
     struct ieee80211_node *, const u_int8_t *, const u_int8_t *, int);
extern int ieee80211_iserp_sta(const struct ieee80211_node *);
extern void ieee80211_count_longslotsta(void *, struct ieee80211_node *);
extern void ieee80211_count_nonerpsta(void *, struct ieee80211_node *);
extern void ieee80211_count_pssta(void *, struct ieee80211_node *);
extern void ieee80211_count_rekeysta(void *, struct ieee80211_node *);
extern void ieee80211_node_join(struct ieee80211com *,
  struct ieee80211_node *, int);
extern void ieee80211_node_leave(struct ieee80211com *,
  struct ieee80211_node *);
extern int ieee80211_match_bss(struct ieee80211com *,
  struct ieee80211_node *);
extern void ieee80211_create_ibss(struct ieee80211com* ,
  struct ieee80211_channel *);
extern void ieee80211_notify_dtim(struct ieee80211com *);
extern void ieee80211_set_tim(struct ieee80211com *, int, int);
extern int ieee80211_node_cmp(const struct ieee80211_node *,
  const struct ieee80211_node *);
extern const struct rb_type *const ieee80211_tree_RBT_TYPE; __attribute__((__unused__)) static inline void ieee80211_tree_RBT_INIT(struct ieee80211_tree *head) { _rb_init(&head->rbh_root); } __attribute__((__unused__)) static inline struct ieee80211_node * ieee80211_tree_RBT_INSERT(struct ieee80211_tree *head, struct ieee80211_node *elm) { return _rb_insert(ieee80211_tree_RBT_TYPE, &head->rbh_root, elm); } __attribute__((__unused__)) static inline struct ieee80211_node * ieee80211_tree_RBT_REMOVE(struct ieee80211_tree *head, struct ieee80211_node *elm) { return _rb_remove(ieee80211_tree_RBT_TYPE, &head->rbh_root, elm); } __attribute__((__unused__)) static inline struct ieee80211_node * ieee80211_tree_RBT_FIND(struct ieee80211_tree *head, const struct ieee80211_node *key) { return _rb_find(ieee80211_tree_RBT_TYPE, &head->rbh_root, key); } __attribute__((__unused__)) static inline struct ieee80211_node * ieee80211_tree_RBT_NFIND(struct ieee80211_tree *head, const struct ieee80211_node *key) { return _rb_nfind(ieee80211_tree_RBT_TYPE, &head->rbh_root, key); } __attribute__((__unused__)) static inline struct ieee80211_node * ieee80211_tree_RBT_ROOT(struct ieee80211_tree *head) { return _rb_root(ieee80211_tree_RBT_TYPE, &head->rbh_root); } __attribute__((__unused__)) static inline int ieee80211_tree_RBT_EMPTY(struct ieee80211_tree *head) { return _rb_empty(&head->rbh_root); } __attribute__((__unused__)) static inline struct ieee80211_node * ieee80211_tree_RBT_MIN(struct ieee80211_tree *head) { return _rb_min(ieee80211_tree_RBT_TYPE, &head->rbh_root); } __attribute__((__unused__)) static inline struct ieee80211_node * ieee80211_tree_RBT_MAX(struct ieee80211_tree *head) { return _rb_max(ieee80211_tree_RBT_TYPE, &head->rbh_root); } __attribute__((__unused__)) static inline struct ieee80211_node * ieee80211_tree_RBT_NEXT(struct ieee80211_node *elm) { return _rb_next(ieee80211_tree_RBT_TYPE, elm); } __attribute__((__unused__)) static inline struct ieee80211_node * ieee80211_tree_RBT_PREV(struct ieee80211_node *elm) { return _rb_prev(ieee80211_tree_RBT_TYPE, elm); } __attribute__((__unused__)) static inline struct ieee80211_node * ieee80211_tree_RBT_LEFT(struct ieee80211_node *elm) { return _rb_left(ieee80211_tree_RBT_TYPE, elm); } __attribute__((__unused__)) static inline struct ieee80211_node * ieee80211_tree_RBT_RIGHT(struct ieee80211_node *elm) { return _rb_right(ieee80211_tree_RBT_TYPE, elm); } __attribute__((__unused__)) static inline struct ieee80211_node * ieee80211_tree_RBT_PARENT(struct ieee80211_node *elm) { return _rb_parent(ieee80211_tree_RBT_TYPE, elm); } __attribute__((__unused__)) static inline void ieee80211_tree_RBT_SET_LEFT(struct ieee80211_node *elm, struct ieee80211_node *left) { return _rb_set_left(ieee80211_tree_RBT_TYPE, elm, left); } __attribute__((__unused__)) static inline void ieee80211_tree_RBT_SET_RIGHT(struct ieee80211_node *elm, struct ieee80211_node *right) { return _rb_set_right(ieee80211_tree_RBT_TYPE, elm, right); } __attribute__((__unused__)) static inline void ieee80211_tree_RBT_SET_PARENT(struct ieee80211_node *elm, struct ieee80211_node *parent) { return _rb_set_parent(ieee80211_tree_RBT_TYPE, elm, parent); } __attribute__((__unused__)) static inline void ieee80211_tree_RBT_POISON(struct ieee80211_node *elm, unsigned long poison) { return _rb_poison(ieee80211_tree_RBT_TYPE, elm, poison); } __attribute__((__unused__)) static inline int ieee80211_tree_RBT_CHECK(struct ieee80211_node *elm, unsigned long poison) { return _rb_check(ieee80211_tree_RBT_TYPE, elm, poison); };
enum ieee80211_state {
 IEEE80211_S_INIT = 0,
 IEEE80211_S_SCAN = 1,
 IEEE80211_S_AUTH = 2,
 IEEE80211_S_ASSOC = 3,
 IEEE80211_S_RUN = 4
};
extern const char * const ieee80211_mgt_subtype_name[];
extern const char * const ieee80211_state_name[(IEEE80211_S_RUN+1)];
extern const char * const ieee80211_phymode_name[];
extern void ieee80211_proto_attach(struct ifnet *);
extern void ieee80211_proto_detach(struct ifnet *);
struct ieee80211_node;
struct ieee80211_rxinfo;
struct ieee80211_rsnparams;
extern void ieee80211_set_link_state(struct ieee80211com *, int);
extern u_int ieee80211_get_hdrlen(const struct ieee80211_frame *);
extern int ieee80211_classify(struct ieee80211com *, struct mbuf *);
extern void ieee80211_input(struct ifnet *, struct mbuf *,
  struct ieee80211_node *, struct ieee80211_rxinfo *);
extern int ieee80211_output(struct ifnet *, struct mbuf *, struct sockaddr *,
  struct rtentry *);
extern void ieee80211_recv_mgmt(struct ieee80211com *, struct mbuf *,
  struct ieee80211_node *, struct ieee80211_rxinfo *, int);
extern int ieee80211_send_mgmt(struct ieee80211com *, struct ieee80211_node *,
  int, int, int);
extern void ieee80211_eapol_key_input(struct ieee80211com *, struct mbuf *,
  struct ieee80211_node *);
extern struct mbuf *ieee80211_encap(struct ifnet *, struct mbuf *,
  struct ieee80211_node **);
extern struct mbuf *ieee80211_get_rts(struct ieee80211com *,
  const struct ieee80211_frame *, u_int16_t);
extern struct mbuf *ieee80211_get_cts_to_self(struct ieee80211com *,
  u_int16_t);
extern struct mbuf *ieee80211_beacon_alloc(struct ieee80211com *,
  struct ieee80211_node *);
extern int ieee80211_save_ie(const u_int8_t *, u_int8_t **);
extern void ieee80211_eapol_timeout(void *);
extern int ieee80211_send_4way_msg1(struct ieee80211com *,
  struct ieee80211_node *);
extern int ieee80211_send_4way_msg2(struct ieee80211com *,
  struct ieee80211_node *, const u_int8_t *,
  const struct ieee80211_ptk *);
extern int ieee80211_send_4way_msg3(struct ieee80211com *,
  struct ieee80211_node *);
extern int ieee80211_send_4way_msg4(struct ieee80211com *,
  struct ieee80211_node *);
extern int ieee80211_send_group_msg1(struct ieee80211com *,
  struct ieee80211_node *);
extern int ieee80211_send_group_msg2(struct ieee80211com *,
  struct ieee80211_node *, const struct ieee80211_key *);
extern int ieee80211_send_eapol_key_req(struct ieee80211com *,
  struct ieee80211_node *, u_int16_t, u_int64_t);
extern int ieee80211_pwrsave(struct ieee80211com *, struct mbuf *,
  struct ieee80211_node *);
extern enum ieee80211_edca_ac ieee80211_up_to_ac(struct ieee80211com *, int);
extern u_int8_t *ieee80211_add_capinfo(u_int8_t *, struct ieee80211com *,
  const struct ieee80211_node *);
extern u_int8_t *ieee80211_add_ssid(u_int8_t *, const u_int8_t *, u_int);
extern u_int8_t *ieee80211_add_rates(u_int8_t *,
  const struct ieee80211_rateset *);
extern u_int8_t *ieee80211_add_fh_params(u_int8_t *, struct ieee80211com *,
  const struct ieee80211_node *);
extern u_int8_t *ieee80211_add_ds_params(u_int8_t *, struct ieee80211com *,
  const struct ieee80211_node *);
extern u_int8_t *ieee80211_add_tim(u_int8_t *, struct ieee80211com *);
extern u_int8_t *ieee80211_add_ibss_params(u_int8_t *,
  const struct ieee80211_node *);
extern u_int8_t *ieee80211_add_edca_params(u_int8_t *, struct ieee80211com *);
extern u_int8_t *ieee80211_add_erp(u_int8_t *, struct ieee80211com *);
extern u_int8_t *ieee80211_add_qos_capability(u_int8_t *,
  struct ieee80211com *);
extern u_int8_t *ieee80211_add_rsn(u_int8_t *, struct ieee80211com *,
  const struct ieee80211_node *);
extern u_int8_t *ieee80211_add_wpa(u_int8_t *, struct ieee80211com *,
  const struct ieee80211_node *);
extern u_int8_t *ieee80211_add_xrates(u_int8_t *,
  const struct ieee80211_rateset *);
extern u_int8_t *ieee80211_add_htcaps(u_int8_t *, struct ieee80211com *);
extern u_int8_t *ieee80211_add_htop(u_int8_t *, struct ieee80211com *);
extern u_int8_t *ieee80211_add_tie(u_int8_t *, u_int8_t, u_int32_t);
extern int ieee80211_parse_rsn(struct ieee80211com *, const u_int8_t *,
  struct ieee80211_rsnparams *);
extern int ieee80211_parse_wpa(struct ieee80211com *, const u_int8_t *,
  struct ieee80211_rsnparams *);
extern void ieee80211_print_essid(const u_int8_t *, int);
extern int ieee80211_ibss_merge(struct ieee80211com *,
  struct ieee80211_node *, u_int64_t);
extern void ieee80211_reset_erp(struct ieee80211com *);
extern void ieee80211_set_shortslottime(struct ieee80211com *, int);
extern void ieee80211_auth_open(struct ieee80211com *,
     const struct ieee80211_frame *, struct ieee80211_node *,
     struct ieee80211_rxinfo *rs, u_int16_t, u_int16_t);
extern void ieee80211_gtk_rekey_timeout(void *);
extern int ieee80211_keyrun(struct ieee80211com *, u_int8_t *);
extern void ieee80211_setkeys(struct ieee80211com *);
extern void ieee80211_setkeysdone(struct ieee80211com *);
extern void ieee80211_sa_query_timeout(void *);
extern void ieee80211_sa_query_request(struct ieee80211com *,
     struct ieee80211_node *);
extern void ieee80211_ht_negotiate(struct ieee80211com *,
    struct ieee80211_node *);
extern void ieee80211_tx_ba_timeout(void *);
extern void ieee80211_rx_ba_timeout(void *);
extern int ieee80211_addba_request(struct ieee80211com *,
     struct ieee80211_node *, u_int16_t, u_int8_t);
extern void ieee80211_delba_request(struct ieee80211com *,
     struct ieee80211_node *, u_int16_t, u_int8_t, u_int8_t);
extern void ieee80211_addba_req_accept(struct ieee80211com *,
     struct ieee80211_node *, uint8_t);
extern void ieee80211_addba_req_refuse(struct ieee80211com *,
     struct ieee80211_node *, uint8_t);
enum ieee80211_phytype {
 IEEE80211_T_DS,
 IEEE80211_T_OFDM,
 IEEE80211_T_XR
};
enum ieee80211_phymode {
 IEEE80211_MODE_AUTO = 0,
 IEEE80211_MODE_11A = 1,
 IEEE80211_MODE_11B = 2,
 IEEE80211_MODE_11G = 3,
 IEEE80211_MODE_11N = 4,
};
enum ieee80211_opmode {
 IEEE80211_M_STA = 1,
 IEEE80211_M_IBSS = 0,
 IEEE80211_M_AHDEMO = 3,
 IEEE80211_M_HOSTAP = 6,
 IEEE80211_M_MONITOR = 8
};
enum ieee80211_protmode {
 IEEE80211_PROT_NONE = 0,
 IEEE80211_PROT_CTSONLY = 1,
 IEEE80211_PROT_RTSCTS = 2
};
struct ieee80211_channel {
 u_int16_t ic_freq;
 u_int16_t ic_flags;
};
struct ieee80211_edca_ac_params {
 u_int8_t ac_ecwmin;
 u_int8_t ac_ecwmax;
 u_int8_t ac_aifsn;
 u_int16_t ac_txoplimit;
 u_int8_t ac_acm;
};
extern const struct ieee80211_edca_ac_params
     ieee80211_edca_table[(IEEE80211_MODE_11N+1)][4];
extern const struct ieee80211_edca_ac_params
     ieee80211_qap_edca_table[(IEEE80211_MODE_11N+1)][4];
struct ieee80211_defrag {
 struct timeout df_to;
 struct mbuf *df_m;
 u_int16_t df_seq;
 u_int8_t df_frag;
};
struct ieee80211com {
 struct arpcom ic_ac;
 struct { struct ieee80211com *le_next; struct ieee80211com **le_prev; } ic_list;
 void (*ic_recv_mgmt)(struct ieee80211com *,
        struct mbuf *, struct ieee80211_node *,
        struct ieee80211_rxinfo *, int);
 int (*ic_send_mgmt)(struct ieee80211com *,
        struct ieee80211_node *, int, int, int);
 int (*ic_newstate)(struct ieee80211com *,
        enum ieee80211_state, int);
 void (*ic_newassoc)(struct ieee80211com *,
        struct ieee80211_node *, int);
 void (*ic_node_leave)(struct ieee80211com *,
        struct ieee80211_node *);
 void (*ic_updateslot)(struct ieee80211com *);
 void (*ic_updateedca)(struct ieee80211com *);
 void (*ic_set_tim)(struct ieee80211com *, int, int);
 int (*ic_set_key)(struct ieee80211com *,
        struct ieee80211_node *,
        struct ieee80211_key *);
 void (*ic_delete_key)(struct ieee80211com *,
        struct ieee80211_node *,
        struct ieee80211_key *);
 int (*ic_ampdu_tx_start)(struct ieee80211com *,
        struct ieee80211_node *, u_int8_t);
 void (*ic_ampdu_tx_stop)(struct ieee80211com *,
        struct ieee80211_node *, u_int8_t);
 int (*ic_ampdu_rx_start)(struct ieee80211com *,
        struct ieee80211_node *, u_int8_t);
 void (*ic_ampdu_rx_stop)(struct ieee80211com *,
        struct ieee80211_node *, u_int8_t);
 void (*ic_update_htprot)(struct ieee80211com *,
     struct ieee80211_node *);
 u_int8_t ic_myaddr[6];
 struct ieee80211_rateset ic_sup_rates[(IEEE80211_MODE_11N+1)];
 struct ieee80211_channel ic_channels[255 +1];
 u_char ic_chan_avail[(((255) + ((8) - 1)) / (8))];
 u_char ic_chan_active[(((255) + ((8) - 1)) / (8))];
 u_char ic_chan_scan[(((255) + ((8) - 1)) / (8))];
 struct mbuf_queue ic_mgtq;
 struct mbuf_queue ic_pwrsaveq;
 u_int ic_scan_lock;
 u_int8_t ic_scan_count;
 u_int32_t ic_flags;
 u_int32_t ic_caps;
 u_int16_t ic_modecaps;
 u_int16_t ic_curmode;
 enum ieee80211_phytype ic_phytype;
 enum ieee80211_opmode ic_opmode;
 enum ieee80211_state ic_state;
 u_int32_t *ic_aid_bitmap;
 u_int16_t ic_max_aid;
 enum ieee80211_protmode ic_protmode;
 struct ifmedia ic_media;
 caddr_t ic_rawbpf;
 struct ieee80211_node *ic_bss;
 struct ieee80211_channel *ic_ibss_chan;
 int ic_fixed_rate;
 u_int16_t ic_rtsthreshold;
 u_int16_t ic_fragthreshold;
 u_int ic_scangen;
 struct ieee80211_node *(*ic_node_alloc)(struct ieee80211com *);
 void (*ic_node_free)(struct ieee80211com *,
     struct ieee80211_node *);
 void (*ic_node_copy)(struct ieee80211com *,
     struct ieee80211_node *,
     const struct ieee80211_node *);
 u_int8_t (*ic_node_getrssi)(struct ieee80211com *,
     const struct ieee80211_node *);
 u_int8_t ic_max_rssi;
 struct ieee80211_tree ic_tree;
 int ic_nnodes;
 int ic_max_nnodes;
 u_int16_t ic_lintval;
 int16_t ic_txpower;
 int ic_bmissthres;
 int ic_mgt_timer;
 struct timeout ic_inact_timeout;
 struct timeout ic_node_cache_timeout;
 int ic_des_esslen;
 u_int8_t ic_des_essid[32];
 struct ieee80211_channel *ic_des_chan;
 u_int8_t ic_des_bssid[6];
 struct ieee80211_key ic_nw_keys[6];
 int ic_def_txkey;
 int ic_igtk_kid;
 u_int32_t ic_iv;
 struct ieee80211_stats ic_stats;
 struct timeval ic_last_merge_print;
 struct ieee80211_edca_ac_params ic_edca_ac[4];
 u_int ic_edca_updtcount;
 u_int16_t ic_tid_noack;
 u_int8_t ic_globalcnt[32];
 u_int8_t ic_nonce[32];
 u_int8_t ic_psk[32];
 struct timeout ic_rsn_timeout;
 int ic_tkip_micfail;
 u_int64_t ic_tkip_micfail_last_tsc;
 struct timeout ic_tkip_micfail_timeout;
 struct { struct ieee80211_pmk *tqh_first; struct ieee80211_pmk **tqh_last; } ic_pmksa;
 u_int ic_rsnprotos;
 u_int ic_rsnakms;
 u_int ic_rsnciphers;
 enum ieee80211_cipher ic_rsngroupcipher;
 enum ieee80211_cipher ic_rsngroupmgmtcipher;
 struct ieee80211_defrag ic_defrag[3];
 int ic_defrag_cur;
 u_int8_t *ic_tim_bitmap;
 u_int ic_tim_len;
 u_int ic_tim_mcast_pending;
 u_int ic_dtim_period;
 u_int ic_dtim_count;
 u_int32_t ic_txbfcaps;
 u_int16_t ic_htcaps;
 u_int8_t ic_ampdu_params;
 u_int8_t ic_sup_mcs[(((80) + ((8) - 1)) / (8))];
 u_int16_t ic_max_rxrate;
 u_int8_t ic_tx_mcs_set;
 u_int16_t ic_htxcaps;
 u_int8_t ic_aselcaps;
 u_int8_t ic_dialog_token;
 int ic_fixed_mcs;
};
struct ieee80211com_head { struct ieee80211com *lh_first; };
extern struct ieee80211com_head ieee80211com_head;
void ieee80211_ifattach(struct ifnet *);
void ieee80211_ifdetach(struct ifnet *);
void ieee80211_channel_init(struct ifnet *);
void ieee80211_media_init(struct ifnet *, ifm_change_cb_t, ifm_stat_cb_t);
int ieee80211_media_change(struct ifnet *);
void ieee80211_media_status(struct ifnet *, struct ifmediareq *);
int ieee80211_ioctl(struct ifnet *, u_long, caddr_t);
int ieee80211_get_rate(struct ieee80211com *);
void ieee80211_watchdog(struct ifnet *);
int ieee80211_fix_rate(struct ieee80211com *, struct ieee80211_node *, int);
uint64_t ieee80211_rate2media(struct ieee80211com *, int,
      enum ieee80211_phymode);
int ieee80211_media2rate(uint64_t);
uint64_t ieee80211_mcs2media(struct ieee80211com *, int,
      enum ieee80211_phymode);
int ieee80211_media2mcs(uint64_t);
u_int8_t ieee80211_rate2plcp(u_int8_t, enum ieee80211_phymode);
u_int8_t ieee80211_plcp2rate(u_int8_t, enum ieee80211_phymode);
u_int ieee80211_mhz2ieee(u_int, u_int);
u_int ieee80211_chan2ieee(struct ieee80211com *,
  const struct ieee80211_channel *);
u_int ieee80211_ieee2mhz(u_int, u_int);
int ieee80211_min_basic_rate(struct ieee80211com *);
int ieee80211_max_basic_rate(struct ieee80211com *);
int ieee80211_setmode(struct ieee80211com *, enum ieee80211_phymode);
enum ieee80211_phymode ieee80211_next_mode(struct ifnet *);
enum ieee80211_phymode ieee80211_chan2mode(struct ieee80211com *,
  const struct ieee80211_channel *);
void ieee80211_disable_wep(struct ieee80211com *);
void ieee80211_disable_rsn(struct ieee80211com *);
extern int ieee80211_cache_size;
struct ieee80211_radiotap_header {
 u_int8_t it_version;
 u_int8_t it_pad;
 u_int16_t it_len;
 u_int32_t it_present;
} __attribute__((__packed__));
enum ieee80211_radiotap_type {
 IEEE80211_RADIOTAP_TSFT = 0,
 IEEE80211_RADIOTAP_FLAGS = 1,
 IEEE80211_RADIOTAP_RATE = 2,
 IEEE80211_RADIOTAP_CHANNEL = 3,
 IEEE80211_RADIOTAP_FHSS = 4,
 IEEE80211_RADIOTAP_DBM_ANTSIGNAL = 5,
 IEEE80211_RADIOTAP_DBM_ANTNOISE = 6,
 IEEE80211_RADIOTAP_LOCK_QUALITY = 7,
 IEEE80211_RADIOTAP_TX_ATTENUATION = 8,
 IEEE80211_RADIOTAP_DB_TX_ATTENUATION = 9,
 IEEE80211_RADIOTAP_DBM_TX_POWER = 10,
 IEEE80211_RADIOTAP_ANTENNA = 11,
 IEEE80211_RADIOTAP_DB_ANTSIGNAL = 12,
 IEEE80211_RADIOTAP_DB_ANTNOISE = 13,
 IEEE80211_RADIOTAP_FCS = 14,
 IEEE80211_RADIOTAP_HWQUEUE = 15,
 IEEE80211_RADIOTAP_RSSI = 16,
 IEEE80211_RADIOTAP_EXT = 31
};
typedef u_int32_t ieee80211_regdomain_t;
enum ieee80211_regdomain {
 DMN_DEFAULT = 0x00,
 DMN_NULL_WORLD = 0x03,
 DMN_NULL_ETSIB = 0x07,
 DMN_NULL_ETSIC = 0x08,
 DMN_FCC1_FCCA = 0x10,
 DMN_FCC1_WORLD = 0x11,
 DMN_FCC2_FCCA = 0x20,
 DMN_FCC2_WORLD = 0x21,
 DMN_FCC2_ETSIC = 0x22,
 DMN_FRANCE_NULL = 0x31,
 DMN_FCC3_FCCA = 0x3A,
 DMN_ETSI1_WORLD = 0x37,
 DMN_ETSI3_ETSIA = 0x32,
 DMN_ETSI2_WORLD = 0x35,
 DMN_ETSI3_WORLD = 0x36,
 DMN_ETSI4_WORLD = 0x30,
 DMN_ETSI4_ETSIC = 0x38,
 DMN_ETSI5_WORLD = 0x39,
 DMN_ETSI6_WORLD = 0x34,
 DMN_ETSI_NULL = 0x33,
 DMN_MKK1_MKKA = 0x40,
 DMN_MKK1_MKKB = 0x41,
 DMN_APL4_WORLD = 0x42,
 DMN_MKK2_MKKA = 0x43,
 DMN_APL_NULL = 0x44,
 DMN_APL2_WORLD = 0x45,
 DMN_APL2_APLC = 0x46,
 DMN_APL3_WORLD = 0x47,
 DMN_MKK1_FCCA = 0x48,
 DMN_APL2_APLD = 0x49,
 DMN_MKK1_MKKA1 = 0x4A,
 DMN_MKK1_MKKA2 = 0x4B,
 DMN_APL1_WORLD = 0x52,
 DMN_APL1_FCCA = 0x53,
 DMN_APL1_APLA = 0x54,
 DMN_APL1_ETSIC = 0x55,
 DMN_APL2_ETSIC = 0x56,
 DMN_APL5_WORLD = 0x58,
 DMN_WOR0_WORLD = 0x60,
 DMN_WOR1_WORLD = 0x61,
 DMN_WOR2_WORLD = 0x62,
 DMN_WOR3_WORLD = 0x63,
 DMN_WOR4_WORLD = 0x64,
 DMN_WOR5_ETSIC = 0x65,
 DMN_WOR01_WORLD = 0x66,
 DMN_WOR02_WORLD = 0x67,
 DMN_EU1_WORLD = 0x68,
 DMN_WOR9_WORLD = 0x69,
 DMN_WORA_WORLD = 0x6A,
 DMN_APL1 = 0xf0000001,
 DMN_APL2 = 0xf0000002,
 DMN_APL3 = 0xf0000004,
 DMN_APL4 = 0xf0000008,
 DMN_APL5 = 0xf0000010,
 DMN_ETSI1 = 0xf0000020,
 DMN_ETSI2 = 0xf0000040,
 DMN_ETSI3 = 0xf0000080,
 DMN_ETSI4 = 0xf0000100,
 DMN_ETSI5 = 0xf0000200,
 DMN_ETSI6 = 0xf0000400,
 DMN_ETSIA = 0xf0000800,
 DMN_ETSIB = 0xf0001000,
 DMN_ETSIC = 0xf0002000,
 DMN_FCC1 = 0xf0004000,
 DMN_FCC2 = 0xf0008000,
 DMN_FCC3 = 0xf0010000,
 DMN_FCCA = 0xf0020000,
 DMN_APLD = 0xf0040000,
 DMN_MKK1 = 0xf0080000,
 DMN_MKK2 = 0xf0100000,
 DMN_MKKA = 0xf0200000,
 DMN_NULL = 0xf0400000,
 DMN_WORLD = 0xf0800000,
 DMN_DEBUG = 0xf1000000
};
struct ieee80211_regdomainname {
 u_int32_t rn_domain;
 const char *rn_name;
};
struct ieee80211_regdomainmap {
 u_int16_t rm_domain;
 u_int32_t rm_domain_5ghz;
 u_int32_t rm_domain_2ghz;
};
enum ieee80211_countrycode {
 CTRY_DEFAULT = 0,
 CTRY_ALBANIA = 8,
 CTRY_ALGERIA = 12,
 CTRY_ARGENTINA = 32,
 CTRY_ARMENIA = 51,
 CTRY_AUSTRALIA = 36,
 CTRY_AUSTRIA = 40,
 CTRY_AZERBAIJAN = 31,
 CTRY_BAHRAIN = 48,
 CTRY_BELARUS = 112,
 CTRY_BELGIUM = 56,
 CTRY_BELIZE = 84,
 CTRY_BOLIVIA = 68,
 CTRY_BRAZIL = 76,
 CTRY_BRUNEI_DARUSSALAM = 96,
 CTRY_BULGARIA = 100,
 CTRY_CANADA = 124,
 CTRY_CHILE = 152,
 CTRY_CHINA = 156,
 CTRY_COLOMBIA = 170,
 CTRY_COSTA_RICA = 188,
 CTRY_CROATIA = 191,
 CTRY_CYPRUS = 196,
 CTRY_CZECH = 203,
 CTRY_DENMARK = 208,
 CTRY_DOMINICAN_REPUBLIC = 214,
 CTRY_ECUADOR = 218,
 CTRY_EGYPT = 818,
 CTRY_EL_SALVADOR = 222,
 CTRY_ESTONIA = 233,
 CTRY_FAEROE_ISLANDS = 234,
 CTRY_FINLAND = 246,
 CTRY_FRANCE = 250,
 CTRY_FRANCE2 = 255,
 CTRY_GEORGIA = 268,
 CTRY_GERMANY = 276,
 CTRY_GREECE = 300,
 CTRY_GUATEMALA = 320,
 CTRY_HONDURAS = 340,
 CTRY_HONG_KONG = 344,
 CTRY_HUNGARY = 348,
 CTRY_ICELAND = 352,
 CTRY_INDIA = 356,
 CTRY_INDONESIA = 360,
 CTRY_IRAN = 364,
 CTRY_IRAQ = 368,
 CTRY_IRELAND = 372,
 CTRY_ISRAEL = 376,
 CTRY_ITALY = 380,
 CTRY_JAMAICA = 388,
 CTRY_JAPAN = 392,
 CTRY_JAPAN1 = 393,
 CTRY_JAPAN2 = 394,
 CTRY_JAPAN3 = 395,
 CTRY_JAPAN4 = 396,
 CTRY_JAPAN5 = 397,
 CTRY_JORDAN = 400,
 CTRY_KAZAKHSTAN = 398,
 CTRY_KENYA = 404,
 CTRY_KOREA_NORTH = 408,
 CTRY_KOREA_ROC = 410,
 CTRY_KOREA_ROC2 = 411,
 CTRY_KUWAIT = 414,
 CTRY_LATVIA = 428,
 CTRY_LEBANON = 422,
 CTRY_LIBYA = 434,
 CTRY_LIECHTENSTEIN = 438,
 CTRY_LITHUANIA = 440,
 CTRY_LUXEMBOURG = 442,
 CTRY_MACAU = 446,
 CTRY_MACEDONIA = 807,
 CTRY_MALAYSIA = 458,
 CTRY_MEXICO = 484,
 CTRY_MONACO = 492,
 CTRY_MOROCCO = 504,
 CTRY_NETHERLANDS = 528,
 CTRY_NEW_ZEALAND = 554,
 CTRY_NICARAGUA = 558,
 CTRY_NORWAY = 578,
 CTRY_OMAN = 512,
 CTRY_PAKISTAN = 586,
 CTRY_PANAMA = 591,
 CTRY_PARAGUAY = 600,
 CTRY_PERU = 604,
 CTRY_PHILIPPINES = 608,
 CTRY_POLAND = 616,
 CTRY_PORTUGAL = 620,
 CTRY_PUERTO_RICO = 630,
 CTRY_QATAR = 634,
 CTRY_ROMANIA = 642,
 CTRY_RUSSIA = 643,
 CTRY_SAUDI_ARABIA = 682,
 CTRY_SINGAPORE = 702,
 CTRY_SLOVAKIA = 703,
 CTRY_SLOVENIA = 705,
 CTRY_SOUTH_AFRICA = 710,
 CTRY_SPAIN = 724,
 CTRY_SRI_LANKA = 728,
 CTRY_SWEDEN = 752,
 CTRY_SWITZERLAND = 756,
 CTRY_SYRIA = 760,
 CTRY_TAIWAN = 158,
 CTRY_THAILAND = 764,
 CTRY_TRINIDAD_Y_TOBAGO = 780,
 CTRY_TUNISIA = 788,
 CTRY_TURKEY = 792,
 CTRY_UAE = 784,
 CTRY_UKRAINE = 804,
 CTRY_UNITED_KINGDOM = 826,
 CTRY_UNITED_STATES = 840,
 CTRY_URUGUAY = 858,
 CTRY_UZBEKISTAN = 860,
 CTRY_VENEZUELA = 862,
 CTRY_VIET_NAM = 704,
 CTRY_YEMEN = 887,
 CTRY_ZIMBABWE = 716,
};
struct ieee80211_countryname {
 u_int16_t cn_code;
 const char *cn_name;
 u_int32_t cn_domain;
};
enum ieee80211_ctl {
 CTL_11A = 0x00,
 CTL_11B = 0x01,
 CTL_11G = 0x02,
 CTL_TURBO = 0x03,
 CTL_TURBO_G = 0x04,
 CTL_FCC = 0x10,
 CTL_ETSI = 0x30,
 CTL_MKK = 0x40,
 CTL_NONE = 0xff
};
struct ieee80211_regchannel {
 u_int16_t rc_channel;
 u_int32_t rc_domain;
 u_int32_t rc_mode;
};

extern u_int16_t ieee80211_name2countrycode(const char *);
extern u_int32_t ieee80211_name2regdomain(const char *);
extern const char *ieee80211_countrycode2name(u_int16_t);
extern const char *ieee80211_regdomain2name(u_int32_t);
extern u_int32_t ieee80211_regdomain2flag(u_int16_t, u_int16_t);
extern u_int32_t ieee80211_countrycode2regdomain(u_int16_t);

enum ar5k_version {
 AR5K_AR5210 = 0,
 AR5K_AR5211 = 1,
 AR5K_AR5212 = 2,
};
enum ar5k_radio {
 AR5K_AR5110 = 0,
 AR5K_AR5111 = 1,
 AR5K_AR5112 = 2,
 AR5K_AR2413 = 3,
 AR5K_AR5413 = 4,
 AR5K_AR2425 = 5
};
typedef enum {
 AH_FALSE = 0,
 AH_TRUE,
} HAL_BOOL;
typedef enum {
 HAL_MODE_11A = 0x001,
 HAL_MODE_TURBO = 0x002,
 HAL_MODE_11B = 0x004,
 HAL_MODE_PUREG = 0x008,
 HAL_MODE_11G = 0x010,
 HAL_MODE_108G = 0x020,
 HAL_MODE_XR = 0x040,
 HAL_MODE_ALL = 0xfff
} HAL_MODE;
typedef enum {
 HAL_ANT_VARIABLE = 0,
 HAL_ANT_FIXED_A = 1,
 HAL_ANT_FIXED_B = 2,
 HAL_ANT_MAX = 3,
} HAL_ANT_SETTING;
typedef enum ieee80211_opmode HAL_OPMODE;
typedef int HAL_STATUS;
typedef enum {
 HAL_TX_QUEUE_INACTIVE = 0,
 HAL_TX_QUEUE_DATA,
 HAL_TX_QUEUE_BEACON,
 HAL_TX_QUEUE_CAB,
 HAL_TX_QUEUE_PSPOLL,
} HAL_TX_QUEUE;
typedef enum {
 HAL_TX_QUEUE_ID_DATA_MIN = 0,
 HAL_TX_QUEUE_ID_DATA_MAX = 6,
 HAL_TX_QUEUE_ID_PSPOLL = 7,
 HAL_TX_QUEUE_ID_BEACON = 8,
 HAL_TX_QUEUE_ID_CAB = 9,
} HAL_TX_QUEUE_ID;
typedef enum {
 HAL_WME_AC_BK = 0,
 HAL_WME_AC_BE = 1,
 HAL_WME_AC_VI = 2,
 HAL_WME_AC_VO = 3,
 HAL_WME_UPSD = 4,
} HAL_TX_QUEUE_SUBTYPE;
typedef struct {
 u_int32_t tqi_ver;
 HAL_TX_QUEUE tqi_type;
 HAL_TX_QUEUE_SUBTYPE tqi_subtype;
 u_int16_t tqi_flags;
 u_int32_t tqi_priority;
 u_int32_t tqi_aifs;
 int32_t tqi_cw_min;
 int32_t tqi_cw_max;
 u_int32_t tqi_cbr_period;
 u_int32_t tqi_cbr_overflow_limit;
 u_int32_t tqi_burst_time;
 u_int32_t tqi_ready_time;
} HAL_TXQ_INFO;
typedef enum {
 HAL_PKT_TYPE_NORMAL = 0,
 HAL_PKT_TYPE_ATIM = 1,
 HAL_PKT_TYPE_PSPOLL = 2,
 HAL_PKT_TYPE_BEACON = 3,
 HAL_PKT_TYPE_PROBE_RESP = 4,
 HAL_PKT_TYPE_PIFS = 5,
} HAL_PKT_TYPE;
typedef struct {
 u_int32_t ackrcv_bad;
 u_int32_t rts_bad;
 u_int32_t rts_good;
 u_int32_t fcs_bad;
 u_int32_t beacons;
} HAL_MIB_STATS;
typedef struct {
 u_int32_t bs_next_beacon;
 u_int32_t bs_next_dtim;
 u_int32_t bs_interval;
 u_int8_t bs_dtim_period;
 u_int8_t bs_cfp_period;
 u_int16_t bs_cfp_max_duration;
 u_int16_t bs_cfp_du_remain;
 u_int16_t bs_tim_offset;
 u_int16_t bs_sleep_duration;
 u_int16_t bs_bmiss_threshold;
} HAL_BEACON_STATE;
typedef enum {
 HAL_PM_UNDEFINED = 0,
 HAL_PM_AUTO,
 HAL_PM_AWAKE,
 HAL_PM_FULL_SLEEP,
 HAL_PM_NETWORK_SLEEP,
} HAL_POWER_MODE;
typedef enum {
 HAL_CIPHER_WEP = 0,
 HAL_CIPHER_AES_CCM,
 HAL_CIPHER_CKIP,
} HAL_CIPHER;
typedef struct {
 int wk_len;
 u_int8_t wk_key[16];
} HAL_KEYVAL;
typedef struct {
 u_int8_t valid;
 u_int8_t phy;
 u_int16_t rateKbps;
 u_int8_t rateCode;
 u_int8_t shortPreamble;
 u_int8_t dot11Rate;
 u_int8_t controlRate;
} HAL_RATE;
typedef struct {
 u_int16_t rateCount;
 u_int8_t rateCodeToIndex[32];
 HAL_RATE info[32];
} HAL_RATE_TABLE;
typedef enum {
 HAL_RFGAIN_INACTIVE = 0,
 HAL_RFGAIN_READ_REQUESTED,
 HAL_RFGAIN_NEED_CHANGE,
} HAL_RFGAIN;
typedef struct {
 u_int16_t channel;
 u_int16_t channelFlags;
} HAL_CHANNEL;
typedef enum {
 HAL_CHIP_5GHZ = 0x0100,
 HAL_CHIP_2GHZ = 0x0080
} HAL_CHIP;
struct ar5k_athchan_2ghz {
 u_int32_t a2_flags;
 u_int16_t a2_athchan;
};
typedef enum ieee80211_countrycode HAL_CTRY_CODE;
typedef u_int32_t HAL_INT;
typedef enum ieee80211_state HAL_LED_STATE;
struct ar5k_gain_opt_step {
 int16_t gos_param[7];
 int32_t gos_gain;
};
struct ar5k_gain_opt {
 u_int32_t go_default;
 u_int32_t go_steps_count;
 const struct ar5k_gain_opt_step go_step[10];
};
struct ar5k_gain {
 u_int32_t g_step_idx;
 u_int32_t g_current;
 u_int32_t g_target;
 u_int32_t g_low;
 u_int32_t g_high;
 u_int32_t g_f_corr;
 u_int32_t g_active;
 const struct ar5k_gain_opt_step *g_step;
};
struct ar5k_eeprom_info {
 u_int16_t ee_magic;
 u_int16_t ee_protect;
 u_int16_t ee_regdomain;
 u_int16_t ee_version;
 u_int16_t ee_header;
 u_int16_t ee_ant_gain;
 u_int16_t ee_misc0;
 u_int16_t ee_misc1;
 u_int16_t ee_cck_ofdm_gain_delta;
 u_int16_t ee_cck_ofdm_power_delta;
 u_int16_t ee_scaled_cck_delta;
 u_int16_t ee_tx_clip;
 u_int16_t ee_pwd_84;
 u_int16_t ee_pwd_90;
 u_int16_t ee_gain_select;
 u_int16_t ee_i_cal[3];
 u_int16_t ee_q_cal[3];
 u_int16_t ee_fixed_bias[3];
 u_int16_t ee_xr_power[3];
 u_int16_t ee_switch_settling[3];
 u_int16_t ee_ant_tx_rx[3];
 u_int16_t ee_ant_control[3][11];
 u_int16_t ee_ob[3][4];
 u_int16_t ee_db[3][4];
 u_int16_t ee_tx_end2xlna_enable[3];
 u_int16_t ee_tx_end2xpa_disable[3];
 u_int16_t ee_tx_frm2xpa_enable[3];
 u_int16_t ee_thr_62[3];
 u_int16_t ee_xlna_gain[3];
 u_int16_t ee_xpd[3];
 u_int16_t ee_x_gain[3];
 u_int16_t ee_i_gain[3];
 u_int16_t ee_margin_tx_rx[3];
 u_int16_t ee_false_detect[3];
 u_int16_t ee_cal_pier[3][3];
 u_int16_t ee_channel[3][10];
 u_int16_t ee_ctls;
 u_int16_t ee_ctl[32];
 int16_t ee_noise_floor_thr[3];
 int8_t ee_adc_desired_size[3];
 int8_t ee_pga_desired_size[3];
};
typedef struct {
 u_int16_t cap_mode;
 struct {
  u_int16_t range_2ghz_min;
  u_int16_t range_2ghz_max;
  u_int16_t range_5ghz_min;
  u_int16_t range_5ghz_max;
 } cap_range;
 struct {
  ieee80211_regdomain_t reg_current;
  ieee80211_regdomain_t reg_hw;
 } cap_regdomain;
 struct ar5k_eeprom_info cap_eeprom;
 struct {
  u_int8_t q_tx_num;
 } cap_queues;
} ar5k_capabilities_t;
struct ath_tx_status {
 u_int16_t ts_seqnum;
 u_int16_t ts_tstamp;
 u_int8_t ts_status;
 u_int8_t ts_rate;
 int8_t ts_rssi;
 u_int8_t ts_shortretry;
 u_int8_t ts_longretry;
 u_int8_t ts_virtcol;
 u_int8_t ts_antenna;
};
struct ath_rx_status {
 u_int16_t rs_datalen;
 u_int16_t rs_tstamp;
 u_int8_t rs_status;
 u_int8_t rs_phyerr;
 int8_t rs_rssi;
 u_int8_t rs_keyix;
 u_int8_t rs_rate;
 u_int8_t rs_antenna;
 u_int8_t rs_more;
};
struct ath_desc {
 u_int32_t ds_link;
 u_int32_t ds_data;
 u_int32_t ds_ctl0;
 u_int32_t ds_ctl1;
 u_int32_t ds_hw[4];
 union {
  struct ath_rx_status rx;
  struct ath_tx_status tx;
 } ds_us;
} __attribute__((__packed__));
struct ath_hal {
 u_int32_t ah_magic;
 u_int32_t ah_abi;
 u_int16_t ah_device;
 u_int16_t ah_sub_vendor;
 void *ah_sc;
 bus_space_tag_t ah_st;
 bus_space_handle_t ah_sh;
 HAL_INT ah_imr;
 HAL_OPMODE ah_op_mode;
 HAL_POWER_MODE ah_power_mode;
 HAL_CHANNEL ah_current_channel;
 HAL_BOOL ah_calibration;
 HAL_BOOL ah_running;
 HAL_BOOL ah_single_chip;
 HAL_BOOL ah_pci_express;
 HAL_RFGAIN ah_rf_gain;
 int ah_chanoff;
 HAL_RATE_TABLE ah_rt_11a;
 HAL_RATE_TABLE ah_rt_11b;
 HAL_RATE_TABLE ah_rt_11g;
 HAL_RATE_TABLE ah_rt_xr;
 u_int32_t ah_mac_srev;
 u_int16_t ah_mac_version;
 u_int16_t ah_mac_revision;
 u_int16_t ah_phy_revision;
 u_int16_t ah_radio_5ghz_revision;
 u_int16_t ah_radio_2ghz_revision;
 enum ar5k_version ah_version;
 enum ar5k_radio ah_radio;
 u_int32_t ah_phy;
 u_int32_t ah_phy_spending;
 HAL_BOOL ah_5ghz;
 HAL_BOOL ah_2ghz;
 u_int32_t ah_atim_window;
 u_int32_t ah_aifs;
 u_int32_t ah_cw_min;
 u_int32_t ah_cw_max;
 HAL_BOOL ah_software_retry;
 u_int32_t ah_limit_tx_retries;
 u_int32_t ah_antenna[3][HAL_ANT_MAX];
 HAL_BOOL ah_ant_diversity;
 u_int8_t ah_sta_id[6];
 u_int8_t ah_bssid[6];
 u_int32_t ah_gpio[10];
 int ah_gpio_npins;
 ar5k_capabilities_t ah_capabilities;
 HAL_TXQ_INFO ah_txq[10];
 u_int32_t ah_txq_interrupts;
 u_int32_t *ah_rf_banks;
 size_t ah_rf_banks_size;
 struct ar5k_gain ah_gain;
 u_int32_t ah_offset[8];
 struct {
  u_int16_t txp_pcdac[64];
  u_int16_t txp_rates[32];
  int16_t txp_min, txp_max;
  HAL_BOOL txp_tpc;
  int16_t txp_ofdm;
 } ah_txpower;
 struct {
  HAL_BOOL r_enabled;
  int r_last_alert;
  HAL_CHANNEL r_last_channel;
 } ah_radar;
 const HAL_RATE_TABLE *(* ah_get_rate_table)(struct ath_hal *, u_int mode); void (* ah_detach)(struct ath_hal *); HAL_BOOL (* ah_reset)(struct ath_hal *, HAL_OPMODE, HAL_CHANNEL *, HAL_BOOL change_channel, HAL_STATUS *status); void (* ah_set_opmode)(struct ath_hal *); HAL_BOOL (* ah_calibrate)(struct ath_hal*, HAL_CHANNEL *); HAL_BOOL (* ah_update_tx_triglevel)(struct ath_hal*, HAL_BOOL level); int (* ah_setup_tx_queue)(struct ath_hal *, HAL_TX_QUEUE, const HAL_TXQ_INFO *); HAL_BOOL (* ah_setup_tx_queueprops)(struct ath_hal *, int queue, const HAL_TXQ_INFO *); HAL_BOOL (* ah_release_tx_queue)(struct ath_hal *, u_int queue); HAL_BOOL (* ah_reset_tx_queue)(struct ath_hal *, u_int queue); u_int32_t (* ah_get_tx_buf)(struct ath_hal *, u_int queue); HAL_BOOL (* ah_put_tx_buf)(struct ath_hal *, u_int, u_int32_t phys_addr); HAL_BOOL (* ah_tx_start)(struct ath_hal *, u_int queue); HAL_BOOL (* ah_stop_tx_dma)(struct ath_hal *, u_int queue); HAL_BOOL (* ah_setup_tx_desc)(struct ath_hal *, struct ath_desc *, u_int packet_length, u_int header_length, HAL_PKT_TYPE type, u_int txPower, u_int tx_rate0, u_int tx_tries0, u_int key_index, u_int antenna_mode, u_int flags, u_int rtscts_rate, u_int rtscts_duration); HAL_BOOL (* ah_setup_xtx_desc)(struct ath_hal *, struct ath_desc *, u_int tx_rate1, u_int tx_tries1, u_int tx_rate2, u_int tx_tries2, u_int tx_rate3, u_int tx_tries3); HAL_BOOL (* ah_fill_tx_desc)(struct ath_hal *, struct ath_desc *, u_int segLen, HAL_BOOL firstSeg, HAL_BOOL lastSeg); HAL_STATUS (* ah_proc_tx_desc)(struct ath_hal *, struct ath_desc *); HAL_BOOL (* ah_has_veol)(struct ath_hal *); u_int32_t (* ah_get_rx_buf)(struct ath_hal*); void (* ah_put_rx_buf)(struct ath_hal*, u_int32_t rxdp); void (* ah_start_rx)(struct ath_hal*); HAL_BOOL (* ah_stop_rx_dma)(struct ath_hal*); void (* ah_start_rx_pcu)(struct ath_hal*); void (* ah_stop_pcu_recv)(struct ath_hal*); void (* ah_set_mcast_filter)(struct ath_hal*, u_int32_t filter0, u_int32_t filter1); HAL_BOOL (* ah_set_mcast_filterindex)(struct ath_hal*, u_int32_t index); HAL_BOOL (* ah_clear_mcast_filter_idx)(struct ath_hal*, u_int32_t index); u_int32_t (* ah_get_rx_filter)(struct ath_hal*); void (* ah_set_rx_filter)(struct ath_hal*, u_int32_t); HAL_BOOL (* ah_setup_rx_desc)(struct ath_hal *, struct ath_desc *, u_int32_t size, u_int flags); HAL_STATUS (* ah_proc_rx_desc)(struct ath_hal *, struct ath_desc *, u_int32_t phyAddr, struct ath_desc *next); void (* ah_set_rx_signal)(struct ath_hal *); void (* ah_dump_state)(struct ath_hal *); HAL_BOOL (* ah_get_diag_state)(struct ath_hal *, int, void **, u_int *); void (* ah_get_lladdr)(struct ath_hal *, u_int8_t *); HAL_BOOL (* ah_set_lladdr)(struct ath_hal *, const u_int8_t*); HAL_BOOL (* ah_set_regdomain)(struct ath_hal*, u_int16_t, HAL_STATUS *); void (* ah_set_ledstate)(struct ath_hal*, HAL_LED_STATE); void (* ah_set_associd)(struct ath_hal*, const u_int8_t *bssid, u_int16_t assocId, u_int16_t timOffset); HAL_BOOL (* ah_set_gpio_output)(struct ath_hal *, u_int32_t gpio); HAL_BOOL (* ah_set_gpio_input)(struct ath_hal *, u_int32_t gpio); u_int32_t (* ah_get_gpio)(struct ath_hal *, u_int32_t gpio); HAL_BOOL (* ah_set_gpio)(struct ath_hal *, u_int32_t gpio, u_int32_t val); void (* ah_set_gpio_intr)(struct ath_hal*, u_int, u_int32_t); u_int32_t (* ah_get_tsf32)(struct ath_hal*); u_int64_t (* ah_get_tsf64)(struct ath_hal*); void (* ah_reset_tsf)(struct ath_hal*); u_int16_t (* ah_get_regdomain)(struct ath_hal*); HAL_BOOL (* ah_detect_card_present)(struct ath_hal*); void (* ah_update_mib_counters)(struct ath_hal*, HAL_MIB_STATS*); HAL_BOOL (* ah_is_cipher_supported)(struct ath_hal*, HAL_CIPHER); HAL_RFGAIN (* ah_get_rf_gain)(struct ath_hal*); HAL_BOOL (* ah_set_slot_time)(struct ath_hal*, u_int); u_int (* ah_get_slot_time)(struct ath_hal*); HAL_BOOL (* ah_set_ack_timeout)(struct ath_hal *, u_int); u_int (* ah_get_ack_timeout)(struct ath_hal*); HAL_BOOL (* ah_set_cts_timeout)(struct ath_hal*, u_int); u_int (* ah_get_cts_timeout)(struct ath_hal*); u_int32_t (* ah_get_keycache_size)(struct ath_hal*); HAL_BOOL (* ah_reset_key)(struct ath_hal*, u_int16_t); HAL_BOOL (* ah_is_key_valid)(struct ath_hal *, u_int16_t); HAL_BOOL (* ah_set_key)(struct ath_hal*, u_int16_t, const HAL_KEYVAL *, const u_int8_t *, int); HAL_BOOL (* ah_set_key_lladdr)(struct ath_hal*, u_int16_t, const u_int8_t *); HAL_BOOL (* ah_softcrypto)(struct ath_hal *, HAL_BOOL); HAL_BOOL (* ah_set_power)(struct ath_hal*, HAL_POWER_MODE mode, HAL_BOOL set_chip, u_int16_t sleep_duration); HAL_POWER_MODE (* ah_get_power_mode)(struct ath_hal*); HAL_BOOL (* ah_query_pspoll_support)(struct ath_hal*); HAL_BOOL (* ah_init_pspoll)(struct ath_hal*); HAL_BOOL (* ah_enable_pspoll)(struct ath_hal *, u_int8_t *, u_int16_t); HAL_BOOL (* ah_disable_pspoll)(struct ath_hal *); void (* ah_init_beacon)(struct ath_hal *, u_int32_t nexttbtt, u_int32_t intval); void (* ah_set_beacon_timers)(struct ath_hal *, const HAL_BEACON_STATE *, u_int32_t tsf, u_int32_t dtimCount, u_int32_t cfpCcount); void (* ah_reset_beacon)(struct ath_hal *); HAL_BOOL (* ah_wait_for_beacon)(struct ath_hal *, bus_addr_t); HAL_BOOL (* ah_is_intr_pending)(struct ath_hal *); HAL_BOOL (* ah_get_isr)(struct ath_hal *, u_int32_t *); u_int32_t (* ah_get_intr)(struct ath_hal *); HAL_INT (* ah_set_intr)(struct ath_hal *, HAL_INT); HAL_BOOL (* ah_get_capabilities)(struct ath_hal *); void (* ah_radar_alert)(struct ath_hal *, HAL_BOOL enable); HAL_BOOL (* ah_eeprom_is_busy)(struct ath_hal *); int (* ah_eeprom_read)(struct ath_hal *, u_int32_t offset, u_int16_t *data); int (* ah_eeprom_write)(struct ath_hal *, u_int32_t offset, u_int16_t data); HAL_BOOL (* ah_get_tx_queueprops)(struct ath_hal *, int, HAL_TXQ_INFO *); u_int32_t (* ah_num_tx_pending)(struct ath_hal *, u_int); HAL_BOOL (* ah_phy_disable)(struct ath_hal *); HAL_BOOL (* ah_set_txpower_limit)(struct ath_hal *, u_int); void (* ah_set_def_antenna)(struct ath_hal *, u_int); u_int (* ah_get_def_antenna)(struct ath_hal *); HAL_BOOL (* ah_set_bssid_mask)(struct ath_hal *, const u_int8_t*);;
};
enum ar5k_srev_type {
 AR5K_VERSION_VER,
 AR5K_VERSION_REV,
 AR5K_VERSION_RAD,
 AR5K_VERSION_DEV,
};
struct ar5k_srev_name {
 const char *sr_name;
 enum ar5k_srev_type sr_type;
 u_int sr_val;
};
typedef struct ath_hal * (ar5k_attach_t)
 (u_int16_t, void *, bus_space_tag_t, bus_space_handle_t, HAL_STATUS *);
typedef HAL_BOOL (ar5k_rfgain_t)
 (struct ath_hal *, HAL_CHANNEL *, u_int);
struct ar5k_ini {
 u_int16_t ini_register;
 u_int32_t ini_value;
 enum {
  AR5K_INI_WRITE = 0,
  AR5K_INI_READ = 1,
 } ini_mode;
};
struct ar5k_mode {
 u_int16_t mode_register;
 u_int32_t mode_value[5];
};
struct ar5k_ini_rf {
 u_int8_t rf_bank;
 u_int16_t rf_register;
 u_int32_t rf_value[5];
};
struct ar5k_ini_rfgain {
 u_int16_t rfg_register;
 u_int32_t rfg_value[2];
};

const char *ath_hal_probe(u_int16_t, u_int16_t);
struct ath_hal *ath_hal_attach(u_int16_t, void *, bus_space_tag_t,
    bus_space_handle_t, u_int, HAL_STATUS *);
u_int16_t ath_hal_computetxtime(struct ath_hal *,
    const HAL_RATE_TABLE *, u_int32_t, u_int16_t, HAL_BOOL);
HAL_BOOL ath_hal_init_channels(struct ath_hal *, HAL_CHANNEL *,
    u_int, u_int *, u_int16_t, HAL_BOOL, HAL_BOOL);
const char *ar5k_printver(enum ar5k_srev_type, u_int32_t);
void ar5k_radar_alert(struct ath_hal *);
ieee80211_regdomain_t ar5k_regdomain_to_ieee(u_int16_t);
u_int16_t ar5k_regdomain_from_ieee(ieee80211_regdomain_t);
u_int16_t ar5k_get_regdomain(struct ath_hal *);
u_int32_t ar5k_bitswap(u_int32_t, u_int);
u_int ar5k_clocktoh(u_int);
u_int ar5k_htoclock(u_int);
void ar5k_rt_copy(HAL_RATE_TABLE *, const HAL_RATE_TABLE *);
HAL_BOOL ar5k_register_timeout(struct ath_hal *, u_int32_t,
    u_int32_t, u_int32_t, HAL_BOOL);
int ar5k_eeprom_init(struct ath_hal *);
int ar5k_eeprom_read_mac(struct ath_hal *, u_int8_t *);
HAL_BOOL ar5k_eeprom_regulation_domain(struct ath_hal *,
    HAL_BOOL, ieee80211_regdomain_t *);
HAL_BOOL ar5k_channel(struct ath_hal *, HAL_CHANNEL *);
HAL_BOOL ar5k_rfregs(struct ath_hal *, HAL_CHANNEL *, u_int);
u_int32_t ar5k_rfregs_gainf_corr(struct ath_hal *);
HAL_BOOL ar5k_rfregs_gain_readback(struct ath_hal *);
int32_t ar5k_rfregs_gain_adjust(struct ath_hal *);
HAL_BOOL ar5k_rfgain(struct ath_hal *, u_int);
void ar5k_txpower_table(struct ath_hal *, HAL_CHANNEL *,
    int16_t);
void ar5k_write_ini(struct ath_hal *,
       const struct ar5k_ini *, size_t, HAL_BOOL);
void ar5k_write_mode(struct ath_hal *,
       const struct ar5k_mode *, size_t, u_int);

typedef enum {
 AR5K_AR5211_DMASIZE_4B = 0,
 AR5K_AR5211_DMASIZE_8B = 1,
 AR5K_AR5211_DMASIZE_16B = 2,
 AR5K_AR5211_DMASIZE_32B = 3,
 AR5K_AR5211_DMASIZE_64B = 4,
 AR5K_AR5211_DMASIZE_128B = 5,
 AR5K_AR5211_DMASIZE_256B = 6,
 AR5K_AR5211_DMASIZE_512B = 7
} ar5k_ar5211_dmasize_t;
struct ar5k_ar5211_rx_desc {
 u_int32_t rx_control_0;
 u_int32_t rx_control_1;
} __attribute__((__packed__));
struct ar5k_ar5211_rx_status {
 u_int32_t rx_status_0;
 u_int32_t rx_status_1;
} __attribute__((__packed__));
struct ar5k_ar5211_tx_desc {
 u_int32_t tx_control_0;
 u_int32_t tx_control_1;
} __attribute__((__packed__));
struct ar5k_ar5211_tx_status {
 u_int32_t tx_status_0;
 u_int32_t tx_status_1;
} __attribute__((__packed__));
extern ar5k_attach_t ar5k_ar5211_attach;
struct ar5k_ar5211_ini_mode {
 u_int16_t mode_register;
 u_int32_t mode_value[4];
};
struct ar5k_ar5211_ini_rf {
 u_int16_t rf_register;
 u_int32_t rf_value[2];
};
HAL_BOOL ar5k_ar5211_nic_reset(struct ath_hal *, u_int32_t);
HAL_BOOL ar5k_ar5211_nic_wakeup(struct ath_hal *, u_int16_t);
u_int16_t ar5k_ar5211_radio_revision(struct ath_hal *, HAL_CHIP);
void ar5k_ar5211_fill(struct ath_hal *);
HAL_BOOL ar5k_ar5211_rfregs(struct ath_hal *, HAL_CHANNEL *, u_int,
    u_int);
static const struct ar5k_ini ar5211_ini[] =
    { { 0x000c, 0x00000000 }, { 0x0028, 0x84849c9c }, { 0x002c, 0x7c7c7c7c }, { 0x0034, 0x00000005 }, { 0x0040, 0x00000000 }, { 0x0044, 0x00000008 }, { 0x0048, 0x00000008 }, { 0x004c, 0x00000010 }, { 0x0050, 0x00000000 }, { 0x0054, 0x0000001f }, { 0x0800, 0x00000000 }, { 0x0804, 0x00000000 }, { 0x0808, 0x00000000 }, { 0x080c, 0x00000000 }, { 0x0810, 0x00000000 }, { 0x0814, 0x00000000 }, { 0x0818, 0x00000000 }, { 0x081c, 0x00000000 }, { 0x0820, 0x00000000 }, { 0x0824, 0x00000000 }, { 0x1230, 0x00000000 }, { 0x8004, 0x00000000 }, { 0x8008, 0x00000000 }, { 0x800c, 0x00000000 }, { 0x8018, 0x00000000 }, { 0x8024, 0x00000000 }, { 0x8028, 0x00000030 }, { 0x802c, 0x0007ffff }, { 0x8030, 0x01ffffff }, { 0x8034, 0x00000031 }, { 0x8038, 0x00000000 }, { 0x803c, 0x00000000 }, { 0x8040, 0x00000000 }, { 0x8044, 0x00000002 }, { 0x8048, 0x00000000 }, { 0x8054, 0x00000000 }, { 0x8058, 0x00000000 }, { 0x9808, 0x00000000 }, { 0x980c, 0x2d849093 }, { 0x9810, 0x7d32e000 }, { 0x9814, 0x00000f6b }, { 0x981c, 0x00000000 }, { 0x982c, 0x00026ffe }, { 0x9830, 0x00000000 }, { 0x983c, 0x00020100 }, { 0x9840, 0x206a017a }, { 0x984c, 0x1284613c }, { 0x9854, 0x00000859 }, { 0x9868, 0x409a4190 }, { 0x986c, 0x050cb081 }, { 0x9870, 0x0000000f }, { 0x9874, 0x00000080 }, { 0x9878, 0x0000000c }, { 0x9900, 0x00000000 }, { 0x9904, 0x00000000 }, { 0x9908, 0x00000000 }, { 0x990c, 0x00800000 }, { 0x9910, 0x00000001 }, { 0x991c, 0x0000092a }, { 0x9920, 0x00000000 }, { 0x9924, 0x00058a05 }, { 0x9928, 0x00000001 }, { 0x992c, 0x00000000 }, { 0x9930, 0x00000000 }, { 0x9934, 0x00000000 }, { 0x9938, 0x00000000 }, { 0x993c, 0x0000003f }, { 0x9940, 0x00000004 }, { 0x9948, 0x00000000 }, { 0x994c, 0x00000000 }, { 0x9950, 0x00000000 }, { 0x9954, 0x5d50f14c }, { 0x9958, 0x00000018 }, { 0x995c, 0x004b6a8e }, { 0xa184, 0x06ff05ff }, { 0xa188, 0x07ff07ff }, { 0xa18c, 0x08ff08ff }, { 0xa190, 0x09ff09ff }, { 0xa194, 0x0aff0aff }, { 0xa198, 0x0bff0bff }, { 0xa19c, 0x0cff0cff }, { 0xa1a0, 0x0dff0dff }, { 0xa1a4, 0x0fff0eff }, { 0xa1a8, 0x12ff12ff }, { 0xa1ac, 0x14ff13ff }, { 0xa1b0, 0x16ff15ff }, { 0xa1b4, 0x19ff17ff }, { 0xa1b8, 0x1bff1aff }, { 0xa1bc, 0x1eff1dff }, { 0xa1c0, 0x23ff20ff }, { 0xa1c4, 0x27ff25ff }, { 0xa1c8, 0x2cff29ff }, { 0xa1cc, 0x31ff2fff }, { 0xa1d0, 0x37ff34ff }, { 0xa1d4, 0x3aff3aff }, { 0xa1d8, 0x3aff3aff }, { 0xa1dc, 0x3aff3aff }, { 0xa1e0, 0x3aff3aff }, { 0xa1e4, 0x3aff3aff }, { 0xa1e8, 0x3aff3aff }, { 0xa1ec, 0x3aff3aff }, { 0xa1f0, 0x3aff3aff }, { 0xa1f4, 0x3aff3aff }, { 0xa1f8, 0x3aff3aff }, { 0xa1fc, 0x3aff3aff }, { 0x9b00, 0x00000000 }, { 0x9b04, 0x00000020 }, { 0x9b08, 0x00000010 }, { 0x9b0c, 0x00000030 }, { 0x9b10, 0x00000008 }, { 0x9b14, 0x00000028 }, { 0x9b18, 0x00000004 }, { 0x9b1c, 0x00000024 }, { 0x9b20, 0x00000014 }, { 0x9b24, 0x00000034 }, { 0x9b28, 0x0000000c }, { 0x9b2c, 0x0000002c }, { 0x9b30, 0x00000002 }, { 0x9b34, 0x00000022 }, { 0x9b38, 0x00000012 }, { 0x9b3c, 0x00000032 }, { 0x9b40, 0x0000000a }, { 0x9b44, 0x0000002a }, { 0x9b48, 0x00000006 }, { 0x9b4c, 0x00000026 }, { 0x9b50, 0x00000016 }, { 0x9b54, 0x00000036 }, { 0x9b58, 0x0000000e }, { 0x9b5c, 0x0000002e }, { 0x9b60, 0x00000001 }, { 0x9b64, 0x00000021 }, { 0x9b68, 0x00000011 }, { 0x9b6c, 0x00000031 }, { 0x9b70, 0x00000009 }, { 0x9b74, 0x00000029 }, { 0x9b78, 0x00000005 }, { 0x9b7c, 0x00000025 }, { 0x9b80, 0x00000015 }, { 0x9b84, 0x00000035 }, { 0x9b88, 0x0000000d }, { 0x9b8c, 0x0000002d }, { 0x9b90, 0x00000003 }, { 0x9b94, 0x00000023 }, { 0x9b98, 0x00000013 }, { 0x9b9c, 0x00000033 }, { 0x9ba0, 0x0000000b }, { 0x9ba4, 0x0000002b }, { 0x9ba8, 0x0000002b }, { 0x9bac, 0x0000002b }, { 0x9bb0, 0x0000002b }, { 0x9bb4, 0x0000002b }, { 0x9bb8, 0x0000002b }, { 0x9bbc, 0x0000002b }, { 0x9bc0, 0x0000002b }, { 0x9bc4, 0x0000002b }, { 0x9bc8, 0x0000002b }, { 0x9bcc, 0x0000002b }, { 0x9bd0, 0x0000002b }, { 0x9bd4, 0x0000002b }, { 0x9bd8, 0x0000002b }, { 0x9bdc, 0x0000002b }, { 0x9be0, 0x0000002b }, { 0x9be4, 0x0000002b }, { 0x9be8, 0x0000002b }, { 0x9bec, 0x0000002b }, { 0x9bf0, 0x0000002b }, { 0x9bf4, 0x0000002b }, { 0x9bf8, 0x00000002 }, { 0x9bfc, 0x00000016 }, { 0x98d4, 0x00000020 }, { 0x98d8, 0x00601068 }, };
static const struct ar5k_ar5211_ini_mode ar5211_mode[] =
    { { 0x0030, { 0x00000017, 0x00000017, 0x00000017, 0x00000017 } }, { 0x1040, { 0x002ffc0f, 0x002ffc0f, 0x002ffc1f, 0x002ffc0f } }, { 0x1044, { 0x002ffc0f, 0x002ffc0f, 0x002ffc1f, 0x002ffc0f } }, { 0x1048, { 0x002ffc0f, 0x002ffc0f, 0x002ffc1f, 0x002ffc0f } }, { 0x104c, { 0x002ffc0f, 0x002ffc0f, 0x002ffc1f, 0x002ffc0f } }, { 0x1050, { 0x002ffc0f, 0x002ffc0f, 0x002ffc1f, 0x002ffc0f } }, { 0x1054, { 0x002ffc0f, 0x002ffc0f, 0x002ffc1f, 0x002ffc0f } }, { 0x1058, { 0x002ffc0f, 0x002ffc0f, 0x002ffc1f, 0x002ffc0f } }, { 0x105c, { 0x002ffc0f, 0x002ffc0f, 0x002ffc1f, 0x002ffc0f } }, { 0x1060, { 0x002ffc0f, 0x002ffc0f, 0x002ffc1f, 0x002ffc0f } }, { 0x1064, { 0x002ffc0f, 0x002ffc0f, 0x002ffc1f, 0x002ffc0f } }, { 0x1070, { 0x00000168, 0x000001e0, 0x000001b8, 0x00000168 } }, { 0x1030, { 0x00000230, 0x000001e0, 0x000000b0, 0x00000230 } }, { 0x10b0, { 0x00000d98, 0x00001180, 0x00001f48, 0x00000d98 } }, { 0x10f0, { 0x0000a0e0, 0x00014068, 0x00005880, 0x0000a0e0 } }, { 0x8014, { 0x04000400, 0x08000800, 0x20003000, 0x04000400 } }, { 0x801c, { 0x0e8d8fa7, 0x0e8d8fcf, 0x01608f95, 0x0e8d8fa7 } }, { 0x9804, { 0x00000000, 0x00000003, 0x00000000, 0x00000000 } }, { 0x9820, { 0x02020200, 0x02020200, 0x02010200, 0x02020200 } }, { 0x9824, { 0x00000e0e, 0x00000e0e, 0x00000707, 0x00000e0e } }, { 0x9828, { 0x0a020001, 0x0a020001, 0x05010000, 0x0a020001 } }, { 0x9834, { 0x00000e0e, 0x00000e0e, 0x00000e0e, 0x00000e0e } }, { 0x9838, { 0x00000007, 0x00000007, 0x0000000b, 0x0000000b } }, { 0x9844, { 0x1372169c, 0x137216a5, 0x137216a8, 0x1372169c } }, { 0x9848, { 0x0018ba67, 0x0018ba67, 0x0018ba69, 0x0018ba69 } }, { 0x9850, { 0x0c28b4e0, 0x0c28b4e0, 0x0c28b4e0, 0x0c28b4e0 } }, { 0x9858, { 0x7e800d2e, 0x7e800d2e, 0x7ec00d2e, 0x7e800d2e } }, { 0x985c, { 0x31375d5e, 0x31375d5e, 0x313a5d5e, 0x31375d5e } }, { 0x9860, { 0x0000bd10, 0x0000bd10, 0x0000bd38, 0x0000bd10 } }, { 0x9864, { 0x0001ce00, 0x0001ce00, 0x0001ce00, 0x0001ce00 } }, { 0x9914, { 0x00002710, 0x00002710, 0x0000157c, 0x00002710 } }, { 0x9918, { 0x00000190, 0x00000190, 0x00000084, 0x00000190 } }, { 0x9944, { 0x6fe01020, 0x6fe01020, 0x6fe00920, 0x6fe01020 } }, { 0xa180, { 0x05ff14ff, 0x05ff14ff, 0x05ff14ff, 0x05ff19ff } }, { 0x98d4, { 0x00000010, 0x00000014, 0x00000010, 0x00000010 } }, };
static const struct ar5k_ar5211_ini_rf ar5211_rf[] =
    { { 0x0000a204, { 0x00000000, 0x00000000 } }, { 0x0000a208, { 0x503e4646, 0x503e4646 } }, { 0x0000a20c, { 0x6480416c, 0x6480416c } }, { 0x0000a210, { 0x0199a003, 0x0199a003 } }, { 0x0000a214, { 0x044cd610, 0x044cd610 } }, { 0x0000a218, { 0x13800040, 0x13800040 } }, { 0x0000a21c, { 0x1be00060, 0x1be00060 } }, { 0x0000a220, { 0x0c53800a, 0x0c53800a } }, { 0x0000a224, { 0x0014df3b, 0x0014df3b } }, { 0x0000a228, { 0x000001b5, 0x000001b5 } }, { 0x0000a22c, { 0x00000020, 0x00000020 } }, { 0x0000989c, { 0x00000000, 0x00000000 } }, { 0x0000989c, { 0x00000000, 0x00000000 } }, { 0x0000989c, { 0x00000000, 0x00000000 } }, { 0x0000989c, { 0x00000000, 0x00000000 } }, { 0x0000989c, { 0x00000000, 0x00000000 } }, { 0x0000989c, { 0x00000000, 0x00000000 } }, { 0x0000989c, { 0x00000000, 0x00000000 } }, { 0x0000989c, { 0x00000000, 0x00000000 } }, { 0x0000989c, { 0x00000000, 0x00000000 } }, { 0x0000989c, { 0x00000000, 0x00000000 } }, { 0x0000989c, { 0x00000000, 0x00000000 } }, { 0x0000989c, { 0x00380000, 0x00380000 } }, { 0x0000989c, { 0x00000000, 0x00000000 } }, { 0x0000989c, { 0x00000000, 0x00000000 } }, { 0x0000989c, { 0x00000000, 0x00000000 } }, { 0x0000989c, { 0x000400f9, 0x000400f9 } }, { 0x000098d4, { 0x00000000, 0x00000004 } }, { 0x0000989c, { 0x00000000, 0x00000000 } }, { 0x0000989c, { 0x00000000, 0x00000000 } }, { 0x0000989c, { 0x00000000, 0x00000000 } }, { 0x0000989c, { 0x00000000, 0x00000000 } }, { 0x0000989c, { 0x00000000, 0x00000000 } }, { 0x0000989c, { 0x10000000, 0x10000000 } }, { 0x0000989c, { 0x04000000, 0x04000000 } }, { 0x0000989c, { 0x00000000, 0x00000000 } }, { 0x0000989c, { 0x00000000, 0x00000000 } }, { 0x0000989c, { 0x00000000, 0x00000000 } }, { 0x0000989c, { 0x00000000, 0x0a000000 } }, { 0x0000989c, { 0x00380080, 0x02380080 } }, { 0x0000989c, { 0x00020006, 0x00000006 } }, { 0x0000989c, { 0x00000092, 0x00000092 } }, { 0x0000989c, { 0x000000a0, 0x000000a0 } }, { 0x0000989c, { 0x00040007, 0x00040007 } }, { 0x000098d4, { 0x0000001a, 0x0000001a } }, { 0x0000989c, { 0x00000048, 0x00000048 } }, { 0x0000989c, { 0x00000010, 0x00000010 } }, { 0x0000989c, { 0x00000008, 0x00000008 } }, { 0x0000989c, { 0x0000000f, 0x0000000f } }, { 0x0000989c, { 0x000000f2, 0x00000062 } }, { 0x0000989c, { 0x0000904f, 0x0000904c } }, { 0x0000989c, { 0x0000125a, 0x0000129a } }, { 0x000098cc, { 0x0000000e, 0x0000000f } }, };
extern const HAL_RATE_TABLE *( ar5k_ar5211_get_rate_table)(struct ath_hal *, u_int mode); extern void ( ar5k_ar5211_detach)(struct ath_hal *); extern HAL_BOOL ( ar5k_ar5211_reset)(struct ath_hal *, HAL_OPMODE, HAL_CHANNEL *, HAL_BOOL change_channel, HAL_STATUS *status); extern void ( ar5k_ar5211_set_opmode)(struct ath_hal *); extern HAL_BOOL ( ar5k_ar5211_calibrate)(struct ath_hal*, HAL_CHANNEL *); extern HAL_BOOL ( ar5k_ar5211_update_tx_triglevel)(struct ath_hal*, HAL_BOOL level); extern int ( ar5k_ar5211_setup_tx_queue)(struct ath_hal *, HAL_TX_QUEUE, const HAL_TXQ_INFO *); extern HAL_BOOL ( ar5k_ar5211_setup_tx_queueprops)(struct ath_hal *, int queue, const HAL_TXQ_INFO *); extern HAL_BOOL ( ar5k_ar5211_release_tx_queue)(struct ath_hal *, u_int queue); extern HAL_BOOL ( ar5k_ar5211_reset_tx_queue)(struct ath_hal *, u_int queue); extern u_int32_t ( ar5k_ar5211_get_tx_buf)(struct ath_hal *, u_int queue); extern HAL_BOOL ( ar5k_ar5211_put_tx_buf)(struct ath_hal *, u_int, u_int32_t phys_addr); extern HAL_BOOL ( ar5k_ar5211_tx_start)(struct ath_hal *, u_int queue); extern HAL_BOOL ( ar5k_ar5211_stop_tx_dma)(struct ath_hal *, u_int queue); extern HAL_BOOL ( ar5k_ar5211_setup_tx_desc)(struct ath_hal *, struct ath_desc *, u_int packet_length, u_int header_length, HAL_PKT_TYPE type, u_int txPower, u_int tx_rate0, u_int tx_tries0, u_int key_index, u_int antenna_mode, u_int flags, u_int rtscts_rate, u_int rtscts_duration); extern HAL_BOOL ( ar5k_ar5211_setup_xtx_desc)(struct ath_hal *, struct ath_desc *, u_int tx_rate1, u_int tx_tries1, u_int tx_rate2, u_int tx_tries2, u_int tx_rate3, u_int tx_tries3); extern HAL_BOOL ( ar5k_ar5211_fill_tx_desc)(struct ath_hal *, struct ath_desc *, u_int segLen, HAL_BOOL firstSeg, HAL_BOOL lastSeg); extern HAL_STATUS ( ar5k_ar5211_proc_tx_desc)(struct ath_hal *, struct ath_desc *); extern HAL_BOOL ( ar5k_ar5211_has_veol)(struct ath_hal *); extern u_int32_t ( ar5k_ar5211_get_rx_buf)(struct ath_hal*); extern void ( ar5k_ar5211_put_rx_buf)(struct ath_hal*, u_int32_t rxdp); extern void ( ar5k_ar5211_start_rx)(struct ath_hal*); extern HAL_BOOL ( ar5k_ar5211_stop_rx_dma)(struct ath_hal*); extern void ( ar5k_ar5211_start_rx_pcu)(struct ath_hal*); extern void ( ar5k_ar5211_stop_pcu_recv)(struct ath_hal*); extern void ( ar5k_ar5211_set_mcast_filter)(struct ath_hal*, u_int32_t filter0, u_int32_t filter1); extern HAL_BOOL ( ar5k_ar5211_set_mcast_filterindex)(struct ath_hal*, u_int32_t index); extern HAL_BOOL ( ar5k_ar5211_clear_mcast_filter_idx)(struct ath_hal*, u_int32_t index); extern u_int32_t ( ar5k_ar5211_get_rx_filter)(struct ath_hal*); extern void ( ar5k_ar5211_set_rx_filter)(struct ath_hal*, u_int32_t); extern HAL_BOOL ( ar5k_ar5211_setup_rx_desc)(struct ath_hal *, struct ath_desc *, u_int32_t size, u_int flags); extern HAL_STATUS ( ar5k_ar5211_proc_rx_desc)(struct ath_hal *, struct ath_desc *, u_int32_t phyAddr, struct ath_desc *next); extern void ( ar5k_ar5211_set_rx_signal)(struct ath_hal *); extern void ( ar5k_ar5211_dump_state)(struct ath_hal *); extern HAL_BOOL ( ar5k_ar5211_get_diag_state)(struct ath_hal *, int, void **, u_int *); extern void ( ar5k_ar5211_get_lladdr)(struct ath_hal *, u_int8_t *); extern HAL_BOOL ( ar5k_ar5211_set_lladdr)(struct ath_hal *, const u_int8_t*); extern HAL_BOOL ( ar5k_ar5211_set_regdomain)(struct ath_hal*, u_int16_t, HAL_STATUS *); extern void ( ar5k_ar5211_set_ledstate)(struct ath_hal*, HAL_LED_STATE); extern void ( ar5k_ar5211_set_associd)(struct ath_hal*, const u_int8_t *bssid, u_int16_t assocId, u_int16_t timOffset); extern HAL_BOOL ( ar5k_ar5211_set_gpio_output)(struct ath_hal *, u_int32_t gpio); extern HAL_BOOL ( ar5k_ar5211_set_gpio_input)(struct ath_hal *, u_int32_t gpio); extern u_int32_t ( ar5k_ar5211_get_gpio)(struct ath_hal *, u_int32_t gpio); extern HAL_BOOL ( ar5k_ar5211_set_gpio)(struct ath_hal *, u_int32_t gpio, u_int32_t val); extern void ( ar5k_ar5211_set_gpio_intr)(struct ath_hal*, u_int, u_int32_t); extern u_int32_t ( ar5k_ar5211_get_tsf32)(struct ath_hal*); extern u_int64_t ( ar5k_ar5211_get_tsf64)(struct ath_hal*); extern void ( ar5k_ar5211_reset_tsf)(struct ath_hal*); extern u_int16_t ( ar5k_ar5211_get_regdomain)(struct ath_hal*); extern HAL_BOOL ( ar5k_ar5211_detect_card_present)(struct ath_hal*); extern void ( ar5k_ar5211_update_mib_counters)(struct ath_hal*, HAL_MIB_STATS*); extern HAL_BOOL ( ar5k_ar5211_is_cipher_supported)(struct ath_hal*, HAL_CIPHER); extern HAL_RFGAIN ( ar5k_ar5211_get_rf_gain)(struct ath_hal*); extern HAL_BOOL ( ar5k_ar5211_set_slot_time)(struct ath_hal*, u_int); extern u_int ( ar5k_ar5211_get_slot_time)(struct ath_hal*); extern HAL_BOOL ( ar5k_ar5211_set_ack_timeout)(struct ath_hal *, u_int); extern u_int ( ar5k_ar5211_get_ack_timeout)(struct ath_hal*); extern HAL_BOOL ( ar5k_ar5211_set_cts_timeout)(struct ath_hal*, u_int); extern u_int ( ar5k_ar5211_get_cts_timeout)(struct ath_hal*); extern u_int32_t ( ar5k_ar5211_get_keycache_size)(struct ath_hal*); extern HAL_BOOL ( ar5k_ar5211_reset_key)(struct ath_hal*, u_int16_t); extern HAL_BOOL ( ar5k_ar5211_is_key_valid)(struct ath_hal *, u_int16_t); extern HAL_BOOL ( ar5k_ar5211_set_key)(struct ath_hal*, u_int16_t, const HAL_KEYVAL *, const u_int8_t *, int); extern HAL_BOOL ( ar5k_ar5211_set_key_lladdr)(struct ath_hal*, u_int16_t, const u_int8_t *); extern HAL_BOOL ( ar5k_ar5211_softcrypto)(struct ath_hal *, HAL_BOOL); extern HAL_BOOL ( ar5k_ar5211_set_power)(struct ath_hal*, HAL_POWER_MODE mode, HAL_BOOL set_chip, u_int16_t sleep_duration); extern HAL_POWER_MODE ( ar5k_ar5211_get_power_mode)(struct ath_hal*); extern HAL_BOOL ( ar5k_ar5211_query_pspoll_support)(struct ath_hal*); extern HAL_BOOL ( ar5k_ar5211_init_pspoll)(struct ath_hal*); extern HAL_BOOL ( ar5k_ar5211_enable_pspoll)(struct ath_hal *, u_int8_t *, u_int16_t); extern HAL_BOOL ( ar5k_ar5211_disable_pspoll)(struct ath_hal *); extern void ( ar5k_ar5211_init_beacon)(struct ath_hal *, u_int32_t nexttbtt, u_int32_t intval); extern void ( ar5k_ar5211_set_beacon_timers)(struct ath_hal *, const HAL_BEACON_STATE *, u_int32_t tsf, u_int32_t dtimCount, u_int32_t cfpCcount); extern void ( ar5k_ar5211_reset_beacon)(struct ath_hal *); extern HAL_BOOL ( ar5k_ar5211_wait_for_beacon)(struct ath_hal *, bus_addr_t); extern HAL_BOOL ( ar5k_ar5211_is_intr_pending)(struct ath_hal *); extern HAL_BOOL ( ar5k_ar5211_get_isr)(struct ath_hal *, u_int32_t *); extern u_int32_t ( ar5k_ar5211_get_intr)(struct ath_hal *); extern HAL_INT ( ar5k_ar5211_set_intr)(struct ath_hal *, HAL_INT); extern HAL_BOOL ( ar5k_ar5211_get_capabilities)(struct ath_hal *); extern void ( ar5k_ar5211_radar_alert)(struct ath_hal *, HAL_BOOL enable); extern HAL_BOOL ( ar5k_ar5211_eeprom_is_busy)(struct ath_hal *); extern int ( ar5k_ar5211_eeprom_read)(struct ath_hal *, u_int32_t offset, u_int16_t *data); extern int ( ar5k_ar5211_eeprom_write)(struct ath_hal *, u_int32_t offset, u_int16_t data); extern HAL_BOOL ( ar5k_ar5211_get_tx_queueprops)(struct ath_hal *, int, HAL_TXQ_INFO *); extern u_int32_t ( ar5k_ar5211_num_tx_pending)(struct ath_hal *, u_int); extern HAL_BOOL ( ar5k_ar5211_phy_disable)(struct ath_hal *); extern HAL_BOOL ( ar5k_ar5211_set_txpower_limit)(struct ath_hal *, u_int); extern void ( ar5k_ar5211_set_def_antenna)(struct ath_hal *, u_int); extern u_int ( ar5k_ar5211_get_def_antenna)(struct ath_hal *); extern HAL_BOOL ( ar5k_ar5211_set_bssid_mask)(struct ath_hal *, const u_int8_t*);;
void
ar5k_ar5211_fill(struct ath_hal *hal)
{
 hal->ah_magic = 0x0000145b;
 (hal)->ah_get_rate_table = ar5k_ar5211_get_rate_table;
 (hal)->ah_detach = ar5k_ar5211_detach;
 (hal)->ah_reset = ar5k_ar5211_reset;
 (hal)->ah_set_opmode = ar5k_ar5211_set_opmode;
 (hal)->ah_calibrate = ar5k_ar5211_calibrate;
 (hal)->ah_update_tx_triglevel = ar5k_ar5211_update_tx_triglevel;
 (hal)->ah_setup_tx_queue = ar5k_ar5211_setup_tx_queue;
 (hal)->ah_setup_tx_queueprops = ar5k_ar5211_setup_tx_queueprops;
 (hal)->ah_release_tx_queue = ar5k_ar5211_release_tx_queue;
 (hal)->ah_reset_tx_queue = ar5k_ar5211_reset_tx_queue;
 (hal)->ah_get_tx_buf = ar5k_ar5211_get_tx_buf;
 (hal)->ah_put_tx_buf = ar5k_ar5211_put_tx_buf;
 (hal)->ah_tx_start = ar5k_ar5211_tx_start;
 (hal)->ah_stop_tx_dma = ar5k_ar5211_stop_tx_dma;
 (hal)->ah_setup_tx_desc = ar5k_ar5211_setup_tx_desc;
 (hal)->ah_setup_xtx_desc = ar5k_ar5211_setup_xtx_desc;
 (hal)->ah_fill_tx_desc = ar5k_ar5211_fill_tx_desc;
 (hal)->ah_proc_tx_desc = ar5k_ar5211_proc_tx_desc;
 (hal)->ah_has_veol = ar5k_ar5211_has_veol;
 (hal)->ah_get_rx_buf = ar5k_ar5211_get_rx_buf;
 (hal)->ah_put_rx_buf = ar5k_ar5211_put_rx_buf;
 (hal)->ah_start_rx = ar5k_ar5211_start_rx;
 (hal)->ah_stop_rx_dma = ar5k_ar5211_stop_rx_dma;
 (hal)->ah_start_rx_pcu = ar5k_ar5211_start_rx_pcu;
 (hal)->ah_stop_pcu_recv = ar5k_ar5211_stop_pcu_recv;
 (hal)->ah_set_mcast_filter = ar5k_ar5211_set_mcast_filter;
 (hal)->ah_set_mcast_filterindex = ar5k_ar5211_set_mcast_filterindex;
 (hal)->ah_clear_mcast_filter_idx = ar5k_ar5211_clear_mcast_filter_idx;
 (hal)->ah_get_rx_filter = ar5k_ar5211_get_rx_filter;
 (hal)->ah_set_rx_filter = ar5k_ar5211_set_rx_filter;
 (hal)->ah_setup_rx_desc = ar5k_ar5211_setup_rx_desc;
 (hal)->ah_proc_rx_desc = ar5k_ar5211_proc_rx_desc;
 (hal)->ah_set_rx_signal = ar5k_ar5211_set_rx_signal;
 (hal)->ah_dump_state = ar5k_ar5211_dump_state;
 (hal)->ah_get_diag_state = ar5k_ar5211_get_diag_state;
 (hal)->ah_get_lladdr = ar5k_ar5211_get_lladdr;
 (hal)->ah_set_lladdr = ar5k_ar5211_set_lladdr;
 (hal)->ah_set_regdomain = ar5k_ar5211_set_regdomain;
 (hal)->ah_set_ledstate = ar5k_ar5211_set_ledstate;
 (hal)->ah_set_associd = ar5k_ar5211_set_associd;
 (hal)->ah_set_gpio_input = ar5k_ar5211_set_gpio_input;
 (hal)->ah_set_gpio_output = ar5k_ar5211_set_gpio_output;
 (hal)->ah_get_gpio = ar5k_ar5211_get_gpio;
 (hal)->ah_set_gpio = ar5k_ar5211_set_gpio;
 (hal)->ah_set_gpio_intr = ar5k_ar5211_set_gpio_intr;
 (hal)->ah_get_tsf32 = ar5k_ar5211_get_tsf32;
 (hal)->ah_get_tsf64 = ar5k_ar5211_get_tsf64;
 (hal)->ah_reset_tsf = ar5k_ar5211_reset_tsf;
 (hal)->ah_get_regdomain = ar5k_ar5211_get_regdomain;
 (hal)->ah_detect_card_present = ar5k_ar5211_detect_card_present;
 (hal)->ah_update_mib_counters = ar5k_ar5211_update_mib_counters;
 (hal)->ah_get_rf_gain = ar5k_ar5211_get_rf_gain;
 (hal)->ah_set_slot_time = ar5k_ar5211_set_slot_time;
 (hal)->ah_get_slot_time = ar5k_ar5211_get_slot_time;
 (hal)->ah_set_ack_timeout = ar5k_ar5211_set_ack_timeout;
 (hal)->ah_get_ack_timeout = ar5k_ar5211_get_ack_timeout;
 (hal)->ah_set_cts_timeout = ar5k_ar5211_set_cts_timeout;
 (hal)->ah_get_cts_timeout = ar5k_ar5211_get_cts_timeout;
 (hal)->ah_is_cipher_supported = ar5k_ar5211_is_cipher_supported;
 (hal)->ah_get_keycache_size = ar5k_ar5211_get_keycache_size;
 (hal)->ah_reset_key = ar5k_ar5211_reset_key;
 (hal)->ah_is_key_valid = ar5k_ar5211_is_key_valid;
 (hal)->ah_set_key = ar5k_ar5211_set_key;
 (hal)->ah_set_key_lladdr = ar5k_ar5211_set_key_lladdr;
 (hal)->ah_softcrypto = ar5k_ar5211_softcrypto;
 (hal)->ah_set_power = ar5k_ar5211_set_power;
 (hal)->ah_get_power_mode = ar5k_ar5211_get_power_mode;
 (hal)->ah_query_pspoll_support = ar5k_ar5211_query_pspoll_support;
 (hal)->ah_init_pspoll = ar5k_ar5211_init_pspoll;
 (hal)->ah_enable_pspoll = ar5k_ar5211_enable_pspoll;
 (hal)->ah_disable_pspoll = ar5k_ar5211_disable_pspoll;
 (hal)->ah_init_beacon = ar5k_ar5211_init_beacon;
 (hal)->ah_set_beacon_timers = ar5k_ar5211_set_beacon_timers;
 (hal)->ah_reset_beacon = ar5k_ar5211_reset_beacon;
 (hal)->ah_wait_for_beacon = ar5k_ar5211_wait_for_beacon;
 (hal)->ah_is_intr_pending = ar5k_ar5211_is_intr_pending;
 (hal)->ah_get_isr = ar5k_ar5211_get_isr;
 (hal)->ah_get_intr = ar5k_ar5211_get_intr;
 (hal)->ah_set_intr = ar5k_ar5211_set_intr;
 (hal)->ah_get_capabilities = ar5k_ar5211_get_capabilities;
 (hal)->ah_radar_alert = ar5k_ar5211_radar_alert;
 (hal)->ah_eeprom_is_busy = ar5k_ar5211_eeprom_is_busy;
 (hal)->ah_eeprom_read = ar5k_ar5211_eeprom_read;
 (hal)->ah_eeprom_write = ar5k_ar5211_eeprom_write;
 (hal)->ah_get_tx_queueprops = ar5k_ar5211_get_tx_queueprops;
 (hal)->ah_num_tx_pending = ar5k_ar5211_num_tx_pending;
 (hal)->ah_phy_disable = ar5k_ar5211_phy_disable;
 (hal)->ah_set_txpower_limit = ar5k_ar5211_set_txpower_limit;
 (hal)->ah_set_def_antenna = ar5k_ar5211_set_def_antenna;
 (hal)->ah_get_def_antenna = ar5k_ar5211_get_def_antenna;
 (hal)->ah_set_bssid_mask = ar5k_ar5211_set_bssid_mask;
}
struct ath_hal *
ar5k_ar5211_attach(u_int16_t device, void *sc, bus_space_tag_t st,
    bus_space_handle_t sh, int *status)
{
 struct ath_hal *hal = (struct ath_hal*) sc;
 u_int8_t mac[6];
 u_int32_t srev;
 ar5k_ar5211_fill(hal);
 if (ar5k_ar5211_nic_wakeup(hal, ( 0x0080 | 0x0400 )) != AH_TRUE)
  return (((void *)0));
 srev = bus_space_read_4(hal->ah_st, hal->ah_sh, (0x4020));
 hal->ah_mac_srev = srev;
 hal->ah_mac_version = (((uint32_t)(srev) & (0x000000ff)) >> 4);
 hal->ah_mac_revision = (((uint32_t)(srev) & (0x0000000f)) >> 0);
 hal->ah_phy_revision = bus_space_read_4(hal->ah_st, hal->ah_sh, (0x9818)) &
     0x00ffffffff;
 hal->ah_radio_5ghz_revision =
     ar5k_ar5211_radio_revision(hal, HAL_CHIP_5GHZ);
 hal->ah_radio_2ghz_revision = 0;
 hal->ah_version = AR5K_AR5211;
 hal->ah_radio = AR5K_AR5111;
 hal->ah_phy = (0x9800 + ((0) << 2));
 __builtin_bcopy((etherbroadcastaddr), (mac), (6));
 ar5k_ar5211_set_associd(hal, mac, 0, 0);
 ar5k_ar5211_get_lladdr(hal, mac);
 ar5k_ar5211_set_opmode(hal);
 return (hal);
}
HAL_BOOL
ar5k_ar5211_nic_reset(struct ath_hal *hal, u_int32_t val)
{
 HAL_BOOL ret = AH_FALSE;
 u_int32_t mask = val ? val : ~0;
 bus_space_read_4(hal->ah_st, hal->ah_sh, (0x000c));
 bus_space_write_4(hal->ah_st, hal->ah_sh, (0x4000), (val));
 delay(15);
 val &=
     0x00000001 | 0x00000002;
 mask &=
     0x00000001 | 0x00000002;
 ret = ar5k_register_timeout(hal, 0x4000, mask, val, AH_FALSE);
 if ((val & 0x00000001) == 0)
  bus_space_write_4(hal->ah_st, hal->ah_sh, (0x0014), (( 0x00000001 | 0x00000004 )));
 return (ret);
}
HAL_BOOL
ar5k_ar5211_nic_wakeup(struct ath_hal *hal, u_int16_t flags)
{
 u_int32_t turbo, mode, clock;
 turbo = 0;
 mode = 0;
 clock = 0;
 if (flags & 0x0080) {
  mode |= 2;
  clock |= 0x19;
 } else if (flags & 0x0100) {
  mode |= 0;
  clock |= 0x18;
 } else {
  printf("%s: " "invalid radio frequency mode\n", __func__);
  return (AH_FALSE);
 }
 if ((flags & 0x0020) ||
     (flags & 0x0400)) {
  mode |= 1;
 } else if (flags & 0x0040) {
  mode |= 0;
 } else {
  printf("%s: " "invalid radio frequency mode\n", __func__);
  return (AH_FALSE);
 }
 if (ar5k_ar5211_nic_reset(hal,
  ( 0x00000001 | 0x00000002 | 0x00000010 ) | 0x00000010) == AH_FALSE) {
  printf("%s: " "failed to reset the AR5211 + PCI chipset\n", __func__);
  return (AH_FALSE);
 }
 if (ar5k_ar5211_set_power(hal,
  HAL_PM_AWAKE, AH_TRUE, 0) == AH_FALSE) {
  printf("%s: " "failed to resume the AR5211 (again)\n", __func__);
  return (AH_FALSE);
 }
 if (ar5k_ar5211_nic_reset(hal, 0) == AH_FALSE) {
  printf("%s: " "failed to warm reset the AR5211\n", __func__);
  return (AH_FALSE);
 }
 bus_space_write_4(hal->ah_st, hal->ah_sh, (0x987c), (clock));
 delay(300);
 bus_space_write_4(hal->ah_st, hal->ah_sh, (0xa200), (mode));
 bus_space_write_4(hal->ah_st, hal->ah_sh, (0x9804), (turbo));
 return (AH_TRUE);
}
u_int16_t
ar5k_ar5211_radio_revision(struct ath_hal *hal, HAL_CHIP chip)
{
 int i;
 u_int32_t srev;
 u_int16_t ret;
 switch (chip) {
 case HAL_CHIP_2GHZ:
  bus_space_write_4(hal->ah_st, hal->ah_sh, ((0x9800 + ((0) << 2))), (0x00004007));
  break;
 case HAL_CHIP_5GHZ:
  bus_space_write_4(hal->ah_st, hal->ah_sh, ((0x9800 + ((0) << 2))), (0x00000007));
  break;
 default:
  return (0);
 }
 delay(2000);
 bus_space_write_4(hal->ah_st, hal->ah_sh, ((0x9800 + ((0x34) << 2))), (0x00001c16));
 for (i = 0; i < 8; i++)
  bus_space_write_4(hal->ah_st, hal->ah_sh, ((0x9800 + ((0x20) << 2))), (0x00010000));
 srev = (bus_space_read_4(hal->ah_st, hal->ah_sh, ((0x9800 + ((0x100) << 2)))) >> 24) & 0xff;
 ret = ar5k_bitswap(((srev & 0xf0) >> 4) | ((srev & 0x0f) << 4), 8);
 bus_space_write_4(hal->ah_st, hal->ah_sh, ((0x9800 + ((0) << 2))), (0x00000007));
 return (ret);
}
const HAL_RATE_TABLE *
ar5k_ar5211_get_rate_table(struct ath_hal *hal, u_int mode)
{
 switch (mode) {
 case HAL_MODE_11A:
  return (&hal->ah_rt_11a);
 case HAL_MODE_11B:
  return (&hal->ah_rt_11b);
 case HAL_MODE_11G:
 case HAL_MODE_PUREG:
  return (&hal->ah_rt_11g);
 default:
  return (((void *)0));
 }
 return (((void *)0));
}
void
ar5k_ar5211_detach(struct ath_hal *hal)
{
 free(hal, 2, 0);
}
HAL_BOOL
ar5k_ar5211_phy_disable(struct ath_hal *hal)
{
 bus_space_write_4(hal->ah_st, hal->ah_sh, (0x981c), (0x00000002));
 return (AH_TRUE);
}
HAL_BOOL
ar5k_ar5211_reset(struct ath_hal *hal, HAL_OPMODE op_mode, HAL_CHANNEL *channel,
    HAL_BOOL change_channel, HAL_STATUS *status)
{
 struct ar5k_eeprom_info *ee = &hal->ah_capabilities.cap_eeprom;
 u_int8_t mac[6];
 u_int32_t data, s_seq, s_ant, s_led[3];
 u_int i, mode, freq, ee_mode, ant[2];
 *status = 0;
 if (change_channel == AH_TRUE) {
  s_seq = bus_space_read_4(hal->ah_st, hal->ah_sh, ((((0) << 2) + 0x1140)));
  s_ant = bus_space_read_4(hal->ah_st, hal->ah_sh, (0x8058));
 } else {
  s_seq = 0;
  s_ant = 1;
 }
 s_led[0] = bus_space_read_4(hal->ah_st, hal->ah_sh, (0x4010)) &
     (0x00000060 | 0x000e0000 | 0x00700000 | 0x00800000);
 s_led[1] = bus_space_read_4(hal->ah_st, hal->ah_sh, (0x4014));
 s_led[2] = bus_space_read_4(hal->ah_st, hal->ah_sh, (0x4018));
 if (ar5k_ar5211_nic_wakeup(hal, channel->channelFlags) == AH_FALSE)
  return (AH_FALSE);
 hal->ah_op_mode = op_mode;
 switch (channel->channelFlags & ((0x0100 | 0x0040) | (0x0080 | 0x0020) | (0x0080 | 0x0400) | (0x0080 | 0x0040) | ((0x0100 | 0x0040) | 0x1000))) {
 case (0x0100 | 0x0040):
  mode = 0;
  freq = 0;
  ee_mode = 0;
  break;
 case (0x0080 | 0x0020):
  mode = 2;
  freq = 1;
  ee_mode = 1;
  break;
 case (0x0080 | 0x0400):
 case (0x0080 | 0x0040):
  mode = 3;
  freq = 1;
  ee_mode = 2;
  break;
 default:
  printf("%s: " "invalid channel: %d\n", __func__, channel->channel);
  return (AH_FALSE);
 }
 bus_space_write_4(hal->ah_st, hal->ah_sh, ((0x9800 + ((0) << 2))), (0x00000007));
 if (ar5k_ar5211_rfregs(hal, channel, freq, ee_mode) == AH_FALSE)
  return (AH_FALSE);
 for (i = 0; i < (sizeof((ar5211_mode)) / sizeof((ar5211_mode)[0])); i++) {
  if (i % 64) delay(1);;
  bus_space_write_4(hal->ah_st, hal->ah_sh, ((u_int32_t)ar5211_mode[i].mode_register), (ar5211_mode[i].mode_value[mode]));
 }
 for (i = 0; i < (sizeof((ar5211_ini)) / sizeof((ar5211_ini)[0])); i++) {
  if (change_channel == AH_TRUE &&
      ar5211_ini[i].ini_register >= 0x8000 &&
      ar5211_ini[i].ini_register <= 0x8fff)
   continue;
  if (i % 64) delay(1);;
  bus_space_write_4(hal->ah_st, hal->ah_sh, ((u_int32_t)ar5211_ini[i].ini_register), (ar5211_ini[i].ini_value));
 }
 if (ar5k_rfgain(hal, freq) == AH_FALSE)
  return (AH_FALSE);
 delay(1000);
 if (hal->ah_radio == AR5K_AR5111) {
  if (channel->channelFlags & (0x0080 | 0x0020))
   bus_space_write_4(hal->ah_st, hal->ah_sh, (0x0030), (bus_space_read_4(hal->ah_st, hal->ah_sh, (0x0030)) | (0x00000008)));
  else
   bus_space_write_4(hal->ah_st, hal->ah_sh, (0x0030), (bus_space_read_4(hal->ah_st, hal->ah_sh, (0x0030)) &~ (0x00000008)));
 }
 bus_space_write_4(hal->ah_st, hal->ah_sh, ((0x9800 + ((0x44) << 2))), ((bus_space_read_4(hal->ah_st, hal->ah_sh, ((0x9800 + ((0x44) << 2)))) & (0xfffffc06)) | (hal->ah_antenna[ee_mode][0])));
 if (freq == 1)
  ant[0] = ant[1] = HAL_ANT_FIXED_B;
 else
  ant[0] = ant[1] = HAL_ANT_FIXED_A;
 bus_space_write_4(hal->ah_st, hal->ah_sh, (0x9960), (hal->ah_antenna[ee_mode][ant[0]]));
 bus_space_write_4(hal->ah_st, hal->ah_sh, (0x9964), (hal->ah_antenna[ee_mode][ant[1]]));
 bus_space_write_4(hal->ah_st, hal->ah_sh, (0x9944), ((bus_space_read_4(hal->ah_st, hal->ah_sh, (0x9944)) &~ (0x00000038)) | (((ee->ee_tx_clip) << 3) & (0x00000038))));
 bus_space_write_4(hal->ah_st, hal->ah_sh, ((0x9800 + ((0x5a) << 2))), ((((ee->ee_noise_floor_thr[ee_mode]) & 0x000001ff) | (1 << 9))));
 bus_space_write_4(hal->ah_st, hal->ah_sh, ((0x9800 + ((0x11) << 2))), ((bus_space_read_4(hal->ah_st, hal->ah_sh, ((0x9800 + ((0x11) << 2)))) & (0xffffc07f)) | ((ee->ee_switch_settling[ee_mode] << 7) & 0x3f80)));
 bus_space_write_4(hal->ah_st, hal->ah_sh, ((0x9800 + ((0x12) << 2))), ((bus_space_read_4(hal->ah_st, hal->ah_sh, ((0x9800 + ((0x12) << 2)))) & (0xfffc0fff)) | ((ee->ee_ant_tx_rx[ee_mode] << 12) & 0x3f000)));
 bus_space_write_4(hal->ah_st, hal->ah_sh, ((0x9800 + ((0x14) << 2))), ((bus_space_read_4(hal->ah_st, hal->ah_sh, ((0x9800 + ((0x14) << 2)))) & (0xffff0000)) | ((ee->ee_adc_desired_size[ee_mode] & 0x00ff) | ((ee->ee_pga_desired_size[ee_mode] << 8) & 0xff00))));
 bus_space_write_4(hal->ah_st, hal->ah_sh, ((0x9800 + ((0x0d) << 2))), ((ee->ee_tx_end2xpa_disable[ee_mode] << 24) | (ee->ee_tx_end2xpa_disable[ee_mode] << 16) | (ee->ee_tx_frm2xpa_enable[ee_mode] << 8) | (ee->ee_tx_frm2xpa_enable[ee_mode])));
 bus_space_write_4(hal->ah_st, hal->ah_sh, ((0x9800 + ((0x0a) << 2))), ((bus_space_read_4(hal->ah_st, hal->ah_sh, ((0x9800 + ((0x0a) << 2)))) & (0xffff00ff)) | (ee->ee_tx_end2xlna_enable[ee_mode] << 8)));
 bus_space_write_4(hal->ah_st, hal->ah_sh, ((0x9800 + ((0x19) << 2))), ((bus_space_read_4(hal->ah_st, hal->ah_sh, ((0x9800 + ((0x19) << 2)))) & (0xfff80fff)) | ((ee->ee_thr_62[ee_mode] << 12) & 0x7f000)));
 bus_space_write_4(hal->ah_st, hal->ah_sh, ((0x9800 + ((0x49) << 2))), ((bus_space_read_4(hal->ah_st, hal->ah_sh, ((0x9800 + ((0x49) << 2)))) & (0xffffff01)) | (4)));
 bus_space_write_4(hal->ah_st, hal->ah_sh, (0x9920), (bus_space_read_4(hal->ah_st, hal->ah_sh, (0x9920)) | (0x00000800 | (ee->ee_i_cal[ee_mode] << 5) | ee->ee_q_cal[ee_mode])));
 bus_space_write_4(hal->ah_st, hal->ah_sh, ((((0) << 2) + 0x1140)), (s_seq));
 bus_space_write_4(hal->ah_st, hal->ah_sh, (0x8058), (s_ant));
 bus_space_write_4(hal->ah_st, hal->ah_sh, (0x4010), (bus_space_read_4(hal->ah_st, hal->ah_sh, (0x4010)) | (s_led[0])));
 bus_space_write_4(hal->ah_st, hal->ah_sh, (0x4014), (s_led[1]));
 bus_space_write_4(hal->ah_st, hal->ah_sh, (0x4018), (s_led[2]));
 __builtin_bcopy((etherbroadcastaddr), (mac), (6));
 ar5k_ar5211_set_associd(hal, mac, 0, 0);
 ar5k_ar5211_set_opmode(hal);
 bus_space_write_4(hal->ah_st, hal->ah_sh, (0x0080), (0xffffffff));
 bus_space_write_4(hal->ah_st, hal->ah_sh, (0x8018), (1792));
 bus_space_write_4(hal->ah_st, hal->ah_sh, (0x0030), ((bus_space_read_4(hal->ah_st, hal->ah_sh, (0x0030)) &~ (0x00000007)) | (((AR5K_AR5211_DMASIZE_512B | 0x00000100) << 0) & (0x00000007))));
 bus_space_write_4(hal->ah_st, hal->ah_sh, (0x0034), ((bus_space_read_4(hal->ah_st, hal->ah_sh, (0x0034)) &~ (0x00000007)) | (((AR5K_AR5211_DMASIZE_512B) << 0) & (0x00000007))));
 if (ar5k_channel(hal, channel) == AH_FALSE)
  return (AH_FALSE);
 bus_space_write_4(hal->ah_st, hal->ah_sh, (0x981c), (0x00000001));
 data = bus_space_read_4(hal->ah_st, hal->ah_sh, (0x9914)) &
     0x00003fff;
 data = (channel->channelFlags & 0x0020) ?
     ((data << 2) / 22) : (data / 10);
 delay(100 + data);
 bus_space_write_4(hal->ah_st, hal->ah_sh, (0x9860), (bus_space_read_4(hal->ah_st, hal->ah_sh, (0x9860)) | (0x00000002 | 0x00000001)));
 if (channel->channelFlags & (0x0080 | 0x0020)) {
  hal->ah_calibration = AH_FALSE;
 } else {
  hal->ah_calibration = AH_TRUE;
  bus_space_write_4(hal->ah_st, hal->ah_sh, (0x9920), ((bus_space_read_4(hal->ah_st, hal->ah_sh, (0x9920)) &~ (0x0000f000)) | (((15) << 12) & (0x0000f000))));
  bus_space_write_4(hal->ah_st, hal->ah_sh, (0x9920), (bus_space_read_4(hal->ah_st, hal->ah_sh, (0x9920)) | (0x00010000)));
 }
 for (i = 0; i < hal->ah_capabilities.cap_queues.q_tx_num; i++) {
  bus_space_write_4(hal->ah_st, hal->ah_sh, ((((i) << 2) + 0x1000)), ((1 << i)));
  if (ar5k_ar5211_reset_tx_queue(hal, i) == AH_FALSE) {
   printf("%s: " "failed to reset TX queue #%d\n", __func__, i);
   return (AH_FALSE);
  }
 }
 ar5k_ar5211_set_intr(hal, 0x00000001 | 0x00000040 | 0x40000000);
 if ((((hal->ah_capabilities.cap_eeprom.ee_header) >> 14) & 0x1)) {
  ar5k_ar5211_set_gpio_input(hal, 0);
  if ((hal->ah_gpio[0] = ar5k_ar5211_get_gpio(hal, 0)) == 0)
   ar5k_ar5211_set_gpio_intr(hal, 0, 1);
  else
   ar5k_ar5211_set_gpio_intr(hal, 0, 0);
 }
 bus_space_write_4(hal->ah_st, hal->ah_sh, (0x8020), (bus_space_read_4(hal->ah_st, hal->ah_sh, (0x8020)) &~ (0x00800000 | 0x01000000)));
 return (AH_TRUE);
}
void
ar5k_ar5211_set_def_antenna(struct ath_hal *hal, u_int ant)
{
 bus_space_write_4(hal->ah_st, hal->ah_sh, (0x8058), (ant));
}
u_int
ar5k_ar5211_get_def_antenna(struct ath_hal *hal)
{
 return bus_space_read_4(hal->ah_st, hal->ah_sh, (0x8058));
}
void
ar5k_ar5211_set_opmode(struct ath_hal *hal)
{
 u_int32_t pcu_reg, low_id, high_id;
 pcu_reg = 0;
 switch (hal->ah_op_mode) {
 case IEEE80211_M_IBSS:
  pcu_reg |= 0x00020000 |
      0x00400000;
  break;
 case IEEE80211_M_HOSTAP:
  pcu_reg |= 0x00010000 |
      0x00800000;
  break;
 case IEEE80211_M_STA:
 case IEEE80211_M_MONITOR:
  pcu_reg |= 0x00200000;
  break;
 default:
  return;
 }
 low_id = ( (hal->ah_sta_id)[0] | (hal->ah_sta_id)[1] << 8 | (hal->ah_sta_id)[2] << 16 | (hal->ah_sta_id)[3] << 24 );
 high_id = ((hal->ah_sta_id)[4] | (hal->ah_sta_id)[5] << 8);
 bus_space_write_4(hal->ah_st, hal->ah_sh, (0x8000), (low_id));
 bus_space_write_4(hal->ah_st, hal->ah_sh, (0x8004), (pcu_reg | high_id));
 return;
}
HAL_BOOL
ar5k_ar5211_calibrate(struct ath_hal *hal, HAL_CHANNEL *channel)
{
 u_int32_t i_pwr, q_pwr;
 int32_t iq_corr, i_coff, i_coffd, q_coff, q_coffd;
 if (hal->ah_calibration == AH_FALSE ||
     bus_space_read_4(hal->ah_st, hal->ah_sh, (0x9920)) & 0x00010000)
  goto done;
 hal->ah_calibration = AH_FALSE;
 iq_corr = bus_space_read_4(hal->ah_st, hal->ah_sh, (0x9c18));
 i_pwr = bus_space_read_4(hal->ah_st, hal->ah_sh, (0x9c10));
 q_pwr = bus_space_read_4(hal->ah_st, hal->ah_sh, (0x9c14));
 i_coffd = ((i_pwr >> 1) + (q_pwr >> 1)) >> 7;
 q_coffd = q_pwr >> 6;
 if (i_coffd == 0 || q_coffd == 0)
  goto done;
 i_coff = ((-iq_corr) / i_coffd) & 0x3f;
 q_coff = (((int32_t)i_pwr / q_coffd) - 64) & 0x1f;
 bus_space_write_4(hal->ah_st, hal->ah_sh, (0x9920), (bus_space_read_4(hal->ah_st, hal->ah_sh, (0x9920)) | (0x00000800 | ((u_int32_t)q_coff) | ((u_int32_t)i_coff << 5))));
 done:
 bus_space_write_4(hal->ah_st, hal->ah_sh, (0x9860), (bus_space_read_4(hal->ah_st, hal->ah_sh, (0x9860)) | (0x00000002)));
 return (AH_TRUE);
}
HAL_BOOL
ar5k_ar5211_update_tx_triglevel(struct ath_hal *hal, HAL_BOOL increase)
{
 u_int32_t trigger_level, imr;
 HAL_BOOL status = AH_FALSE;
 imr = ar5k_ar5211_set_intr(hal, hal->ah_imr & ~0x80000000);
 trigger_level = (((uint32_t)(bus_space_read_4(hal->ah_st, hal->ah_sh, (0x0030))) & (0x000003f0)) >> 4);
 if (increase == AH_FALSE) {
  if (--trigger_level < 1)
   goto done;
 } else
  trigger_level +=
      (((((2300 + 4 + (3 + 1 + 4)) / 64) + 1) - trigger_level) / 2);
 bus_space_write_4(hal->ah_st, hal->ah_sh, (0x0030), ((bus_space_read_4(hal->ah_st, hal->ah_sh, (0x0030)) &~ (0x000003f0)) | (((trigger_level) << 4) & (0x000003f0))));
 status = AH_TRUE;
 done:
 ar5k_ar5211_set_intr(hal, imr);
 return (status);
}
int
ar5k_ar5211_setup_tx_queue(struct ath_hal *hal, HAL_TX_QUEUE queue_type,
    const HAL_TXQ_INFO *queue_info)
{
 u_int queue;
 if (queue_type == HAL_TX_QUEUE_DATA) {
  for (queue = HAL_TX_QUEUE_ID_DATA_MIN;
       hal->ah_txq[queue].tqi_type != HAL_TX_QUEUE_INACTIVE;
       queue++)
   if (queue > HAL_TX_QUEUE_ID_DATA_MAX)
    return (-1);
 } else if (queue_type == HAL_TX_QUEUE_PSPOLL) {
  queue = HAL_TX_QUEUE_ID_PSPOLL;
 } else if (queue_type == HAL_TX_QUEUE_BEACON) {
  queue = HAL_TX_QUEUE_ID_BEACON;
 } else if (queue_type == HAL_TX_QUEUE_CAB) {
  queue = HAL_TX_QUEUE_ID_CAB;
 } else
  return (-1);
 __builtin_bzero((&hal->ah_txq[queue]), (sizeof(HAL_TXQ_INFO)));
 hal->ah_txq[queue].tqi_type = queue_type;
 if (queue_info != ((void *)0)) {
  if (ar5k_ar5211_setup_tx_queueprops(hal, queue, queue_info)
      != AH_TRUE)
   return (-1);
 }
 do { hal->ah_txq_interrupts |= 1 << queue; } while (0);
 return (queue);
}
HAL_BOOL
ar5k_ar5211_setup_tx_queueprops(struct ath_hal *hal, int queue,
    const HAL_TXQ_INFO *queue_info)
{
 do { if (queue >= hal->ah_capabilities.cap_queues.q_tx_num) return (AH_FALSE); } while (0);
 if (hal->ah_txq[queue].tqi_type == HAL_TX_QUEUE_INACTIVE)
  return (AH_FALSE);
 __builtin_bcopy((queue_info), (&hal->ah_txq[queue]), (sizeof(HAL_TXQ_INFO)));
 if (queue_info->tqi_type == HAL_TX_QUEUE_DATA &&
     (queue_info->tqi_subtype >= HAL_WME_AC_VI) &&
     (queue_info->tqi_subtype <= HAL_WME_UPSD))
  hal->ah_txq[queue].tqi_flags |=
      0x0040;
 return (AH_TRUE);
}
HAL_BOOL
ar5k_ar5211_get_tx_queueprops(struct ath_hal *hal, int queue,
    HAL_TXQ_INFO *queue_info)
{
 do { if (queue >= hal->ah_capabilities.cap_queues.q_tx_num) return (AH_FALSE); } while (0);
 __builtin_bcopy((&hal->ah_txq[queue]), (queue_info), (sizeof(HAL_TXQ_INFO)));
 return (AH_TRUE);
}
HAL_BOOL
ar5k_ar5211_release_tx_queue(struct ath_hal *hal, u_int queue)
{
 do { if (queue >= hal->ah_capabilities.cap_queues.q_tx_num) return (AH_FALSE); } while (0);
 hal->ah_txq[queue].tqi_type = HAL_TX_QUEUE_INACTIVE;
 do { hal->ah_txq_interrupts &= ~(1 << queue); } while (0);
 return (AH_FALSE);
}
HAL_BOOL
ar5k_ar5211_reset_tx_queue(struct ath_hal *hal, u_int queue)
{
 u_int32_t cw_min, cw_max, retry_lg, retry_sh;
 struct ieee80211_channel *channel = (struct ieee80211_channel*)
     &hal->ah_current_channel;
 HAL_TXQ_INFO *tq;
 do { if (queue >= hal->ah_capabilities.cap_queues.q_tx_num) return (AH_FALSE); } while (0);
 tq = &hal->ah_txq[queue];
 if (tq->tqi_type == HAL_TX_QUEUE_INACTIVE)
  return (AH_TRUE);
 if ((((channel)->ic_flags & (0x0080 | 0x0020)) == (0x0080 | 0x0020))) {
  hal->ah_cw_min = 31;
  cw_max = hal->ah_cw_max = 1023;
  hal->ah_aifs = 2;
 } else {
  hal->ah_cw_min = 15;
  cw_max = hal->ah_cw_max = 1023;
  hal->ah_aifs = 2;
 }
 if (hal->ah_software_retry == AH_TRUE) {
  retry_lg = hal->ah_limit_tx_retries;
  retry_sh = retry_lg =
      retry_lg > 0x0000000f ?
      0x0000000f : retry_lg;
 } else {
  retry_lg = 10;
  retry_sh = 10;
 }
 bus_space_write_4(hal->ah_st, hal->ah_sh, ((((queue) << 2) + 0x1080)), ((((uint32_t)(32) << 14) & (0x000fc000)) | (((uint32_t)(32) << 8) & (0x00003f00)) | (((uint32_t)(retry_lg) << 4) & (0x000000f0)) | (((uint32_t)(retry_sh) << 0) & (0x0000000f))));
 cw_min = 1;
 while (cw_min < hal->ah_cw_min)
  cw_min = (cw_min << 1) | 1;
 cw_min = tq->tqi_cw_min < 0 ?
     (cw_min >> (-tq->tqi_cw_min)) :
     ((cw_min << tq->tqi_cw_min) + (1 << tq->tqi_cw_min) - 1);
 cw_max = tq->tqi_cw_max < 0 ?
     (cw_max >> (-tq->tqi_cw_max)) :
     ((cw_max << tq->tqi_cw_max) + (1 << tq->tqi_cw_max) - 1);
 bus_space_write_4(hal->ah_st, hal->ah_sh, ((((queue) << 2) + 0x1040)), ((((uint32_t)(cw_min) << 0) & (0x000003ff)) | (((uint32_t)(cw_max) << 10) & (0x000ffc00)) | (((uint32_t)(hal->ah_aifs + tq->tqi_aifs) << 20) & (0x0ff00000))));
 bus_space_write_4(hal->ah_st, hal->ah_sh, ((((queue) << 2) + 0x09c0)), (0x00000800));
 if (tq->tqi_cbr_period) {
  bus_space_write_4(hal->ah_st, hal->ah_sh, ((((queue) << 2) + 0x08c0)), ((((uint32_t)(tq->tqi_cbr_period) << 0) & (0x00ffffff)) | (((uint32_t)(tq->tqi_cbr_overflow_limit) << 24) & (0xff000000))));
  bus_space_write_4(hal->ah_st, hal->ah_sh, ((((queue) << 2) + 0x09c0)), (bus_space_read_4(hal->ah_st, hal->ah_sh, ((((queue) << 2) + 0x09c0))) | (1)));
  if (tq->tqi_cbr_overflow_limit)
   bus_space_write_4(hal->ah_st, hal->ah_sh, ((((queue) << 2) + 0x09c0)), (bus_space_read_4(hal->ah_st, hal->ah_sh, ((((queue) << 2) + 0x09c0))) | (0x00000100)));
 }
 if (tq->tqi_ready_time) {
  bus_space_write_4(hal->ah_st, hal->ah_sh, ((((queue) << 2) + 0x0900)), ((((uint32_t)(tq->tqi_ready_time) << 0) & (0x00ffffff)) | 0x01000000));
 }
 if (tq->tqi_burst_time) {
  bus_space_write_4(hal->ah_st, hal->ah_sh, ((((queue) << 2) + 0x10c0)), ((((uint32_t)(tq->tqi_burst_time) << 0) & (0x000fffff)) | 0x00100000));
  if (tq->tqi_flags & 0x0010) {
   bus_space_write_4(hal->ah_st, hal->ah_sh, ((((queue) << 2) + 0x09c0)), (bus_space_read_4(hal->ah_st, hal->ah_sh, ((((queue) << 2) + 0x09c0))) | (0x00000200)));
  }
 }
 if (tq->tqi_flags & 0x0004) {
  bus_space_write_4(hal->ah_st, hal->ah_sh, ((((queue) << 2) + 0x1100)), (0x00200000));
 }
 if (tq->tqi_flags & 0x0020) {
  bus_space_write_4(hal->ah_st, hal->ah_sh, ((((queue) << 2) + 0x1100)), (0x00000200));
 }
 switch (tq->tqi_type) {
 case HAL_TX_QUEUE_BEACON:
  bus_space_write_4(hal->ah_st, hal->ah_sh, ((((queue) << 2) + 0x09c0)), (bus_space_read_4(hal->ah_st, hal->ah_sh, ((((queue) << 2) + 0x09c0))) | (2 | 0x00000040 | 0x00000080)));
  bus_space_write_4(hal->ah_st, hal->ah_sh, ((((queue) << 2) + 0x1100)), (bus_space_read_4(hal->ah_st, hal->ah_sh, ((((queue) << 2) + 0x1100))) | ((2 << 2) | 0x00200000 | 0x00010000)));
  bus_space_write_4(hal->ah_st, hal->ah_sh, ((((queue) << 2) + 0x0900)), (((100 - (10 - 2) - 0) * 1024) | 0x01000000));
  break;
 case HAL_TX_QUEUE_CAB:
  bus_space_write_4(hal->ah_st, hal->ah_sh, ((((queue) << 2) + 0x09c0)), (bus_space_read_4(hal->ah_st, hal->ah_sh, ((((queue) << 2) + 0x09c0))) | (2 | 0x00000020 | 0x00000040)));
  bus_space_write_4(hal->ah_st, hal->ah_sh, ((((queue) << 2) + 0x1100)), (bus_space_read_4(hal->ah_st, hal->ah_sh, ((((queue) << 2) + 0x1100))) | ((2 << 2))));
  break;
 case HAL_TX_QUEUE_PSPOLL:
  bus_space_write_4(hal->ah_st, hal->ah_sh, ((((queue) << 2) + 0x09c0)), (bus_space_read_4(hal->ah_st, hal->ah_sh, ((((queue) << 2) + 0x09c0))) | (0x00000020)));
  break;
 case HAL_TX_QUEUE_DATA:
 default:
  break;
 }
 bus_space_write_4(hal->ah_st, hal->ah_sh, (0x00a4), ((((uint32_t)(hal->ah_txq_interrupts) << 0) & (0x000003ff)) | (((uint32_t)(hal->ah_txq_interrupts) << 16) & (0x03ff0000))));
 bus_space_write_4(hal->ah_st, hal->ah_sh, (0x00a8), ((((uint32_t)(hal->ah_txq_interrupts) << 0) & (0x000003ff))));
 bus_space_write_4(hal->ah_st, hal->ah_sh, (0x00ac), ((((uint32_t)(hal->ah_txq_interrupts) << 0) & (0x000003ff))));
 return (AH_TRUE);
}
u_int32_t
ar5k_ar5211_get_tx_buf(struct ath_hal *hal, u_int queue)
{
 do { if (queue >= hal->ah_capabilities.cap_queues.q_tx_num) return (AH_FALSE); } while (0);
 return (bus_space_read_4(hal->ah_st, hal->ah_sh, ((((queue) << 2) + 0x0800))));
}
HAL_BOOL
ar5k_ar5211_put_tx_buf(struct ath_hal *hal, u_int queue, u_int32_t phys_addr)
{
 do { if (queue >= hal->ah_capabilities.cap_queues.q_tx_num) return (AH_FALSE); } while (0);
 if ((bus_space_read_4(hal->ah_st, hal->ah_sh, (0x0840)) & (1 << queue)))
  return (AH_FALSE);
 bus_space_write_4(hal->ah_st, hal->ah_sh, ((((queue) << 2) + 0x0800)), (phys_addr));
 return (AH_TRUE);
}
u_int32_t
ar5k_ar5211_num_tx_pending(struct ath_hal *hal, u_int queue)
{
 do { if (queue >= hal->ah_capabilities.cap_queues.q_tx_num) return (AH_FALSE); } while (0);
 return ((((queue) << 2) + 0x0a00) & 0x00000003);
}
HAL_BOOL
ar5k_ar5211_tx_start(struct ath_hal *hal, u_int queue)
{
 do { if (queue >= hal->ah_capabilities.cap_queues.q_tx_num) return (AH_FALSE); } while (0);
 if ((bus_space_read_4(hal->ah_st, hal->ah_sh, (0x0880)) & (1 << queue)))
  return (AH_FALSE);
 bus_space_write_4(hal->ah_st, hal->ah_sh, (0x0840), ((1 << queue)));
 return (AH_TRUE);
}
HAL_BOOL
ar5k_ar5211_stop_tx_dma(struct ath_hal *hal, u_int queue)
{
 int i = 100, pending;
 do { if (queue >= hal->ah_capabilities.cap_queues.q_tx_num) return (AH_FALSE); } while (0);
 bus_space_write_4(hal->ah_st, hal->ah_sh, (0x0880), ((1 << queue)));
 do {
  pending = bus_space_read_4(hal->ah_st, hal->ah_sh, ((((queue) << 2) + 0x0a00))) &
       0x00000003;
  delay(100);
 } while (--i && pending);
 bus_space_write_4(hal->ah_st, hal->ah_sh, (0x0880), (0));
 return (AH_TRUE);
}
HAL_BOOL
ar5k_ar5211_setup_tx_desc(struct ath_hal *hal, struct ath_desc *desc,
    u_int packet_length, u_int header_length, HAL_PKT_TYPE type, u_int tx_power,
    u_int tx_rate0, u_int tx_tries0, u_int key_index, u_int antenna_mode,
    u_int flags, u_int rtscts_rate, u_int rtscts_duration)
{
 struct ar5k_ar5211_tx_desc *tx_desc;
 tx_desc = (struct ar5k_ar5211_tx_desc*)&desc->ds_ctl0;
 if (tx_tries0 == 0)
  return (AH_FALSE);
 if ((tx_desc->tx_control_0 = (packet_length &
     0x00000fff)) != packet_length)
  return (AH_FALSE);
 tx_desc->tx_control_0 |=
     (((uint32_t)(tx_rate0) << 18) & (0x003c0000)) |
     (((uint32_t)(antenna_mode) << 25) & (0x1e000000));
 tx_desc->tx_control_1 =
     (((uint32_t)(type) << 20) & (0x00700000));
 if (flags & 0x0001) tx_desc->tx_control_0 |= 0x01000000;
 if (flags & 0x0020) tx_desc->tx_control_0 |= 0x00800000;
 if (flags & 0x0010) tx_desc->tx_control_0 |= 0x20000000;
 if (flags & 0x0004) tx_desc->tx_control_0 |= 0x00400000;
 if (flags & 0x0002) tx_desc->tx_control_1 |= 0x00800000;
 if (key_index != ((u_int32_t) - 1)) {
  tx_desc->tx_control_0 |=
      0x40000000;
  tx_desc->tx_control_1 |=
      (((uint32_t)(key_index) << 13) & (0x000fe000));
 }
 return (AH_TRUE);
}
HAL_BOOL
ar5k_ar5211_fill_tx_desc(struct ath_hal *hal, struct ath_desc *desc,
    u_int segment_length, HAL_BOOL first_segment, HAL_BOOL last_segment)
{
 struct ar5k_ar5211_tx_desc *tx_desc;
 tx_desc = (struct ar5k_ar5211_tx_desc*)&desc->ds_ctl0;
 __builtin_bzero((desc->ds_hw), (sizeof(desc->ds_hw)));
 if (segment_length & ~0x00000fff)
  return (AH_FALSE);
 tx_desc->tx_control_1 =
     segment_length;
 if (first_segment != AH_TRUE)
  tx_desc->tx_control_0 &= ~0x00000fff;
 if (last_segment != AH_TRUE)
  tx_desc->tx_control_1 |= 0x00001000;
 return (AH_TRUE);
}
HAL_BOOL
ar5k_ar5211_setup_xtx_desc(struct ath_hal *hal, struct ath_desc *desc,
    u_int tx_rate1, u_int tx_tries1, u_int tx_rate2, u_int tx_tries2,
    u_int tx_rate3, u_int tx_tries3)
{
 return (AH_FALSE);
}
HAL_STATUS
ar5k_ar5211_proc_tx_desc(struct ath_hal *hal, struct ath_desc *desc)
{
 struct ar5k_ar5211_tx_status *tx_status;
 struct ar5k_ar5211_tx_desc *tx_desc;
 tx_desc = (struct ar5k_ar5211_tx_desc*)&desc->ds_ctl0;
 tx_status = (struct ar5k_ar5211_tx_status*)&desc->ds_hw[0];
 if ((tx_status->tx_status_1 & 0x00000001) == 0)
  return (36);
 desc->ds_us.tx.ts_tstamp =
     (((uint32_t)(tx_status->tx_status_0) & (0xffff0000)) >> 16);
 desc->ds_us.tx.ts_shortretry =
     (((uint32_t)(tx_status->tx_status_0) & (0x000000f0)) >> 4);
 desc->ds_us.tx.ts_longretry =
     (((uint32_t)(tx_status->tx_status_0) & (0x00000f00)) >> 8);
 desc->ds_us.tx.ts_seqnum =
     (((uint32_t)(tx_status->tx_status_1) & (0x00001ffe)) >> 1);
 desc->ds_us.tx.ts_rssi =
     (((uint32_t)(tx_status->tx_status_1) & (0x001fe000)) >> 13);
 desc->ds_us.tx.ts_antenna = 1;
 desc->ds_us.tx.ts_status = 0;
 desc->ds_us.tx.ts_rate =
     (((uint32_t)(tx_desc->tx_control_0) & (0x003c0000)) >> 18);
 if ((tx_status->tx_status_0 &
     0x00000001) == 0) {
  if (tx_status->tx_status_0 &
      0x00000002)
   desc->ds_us.tx.ts_status |= 0x01;
  if (tx_status->tx_status_0 &
      0x00000004)
   desc->ds_us.tx.ts_status |= 0x04;
  if (tx_status->tx_status_0 &
      0x00000008)
   desc->ds_us.tx.ts_status |= 0x02;
 }
 return (0);
}
HAL_BOOL
ar5k_ar5211_has_veol(struct ath_hal *hal)
{
 return (AH_TRUE);
}
u_int32_t
ar5k_ar5211_get_rx_buf(struct ath_hal *hal)
{
 return (bus_space_read_4(hal->ah_st, hal->ah_sh, (0x000c)));
}
void
ar5k_ar5211_put_rx_buf(struct ath_hal *hal, u_int32_t phys_addr)
{
 bus_space_write_4(hal->ah_st, hal->ah_sh, (0x000c), (phys_addr));
}
void
ar5k_ar5211_start_rx(struct ath_hal *hal)
{
 bus_space_write_4(hal->ah_st, hal->ah_sh, (0x0008), (0x00000004));
}
HAL_BOOL
ar5k_ar5211_stop_rx_dma(struct ath_hal *hal)
{
 int i;
 bus_space_write_4(hal->ah_st, hal->ah_sh, (0x0008), (0x00000020));
 for (i = 2000;
      i > 0 && (bus_space_read_4(hal->ah_st, hal->ah_sh, (0x0008)) & 0x00000004) != 0;
      i--)
  delay(10);
 return (i > 0 ? AH_TRUE : AH_FALSE);
}
void
ar5k_ar5211_start_rx_pcu(struct ath_hal *hal)
{
 bus_space_write_4(hal->ah_st, hal->ah_sh, (0x8048), (bus_space_read_4(hal->ah_st, hal->ah_sh, (0x8048)) &~ (0x00000020)));
}
void
ar5k_ar5211_stop_pcu_recv(struct ath_hal *hal)
{
 bus_space_write_4(hal->ah_st, hal->ah_sh, (0x8048), (bus_space_read_4(hal->ah_st, hal->ah_sh, (0x8048)) | (0x00000020)));
}
void
ar5k_ar5211_set_mcast_filter(struct ath_hal *hal, u_int32_t filter0,
    u_int32_t filter1)
{
 bus_space_write_4(hal->ah_st, hal->ah_sh, (0x8040), (filter0));
 bus_space_write_4(hal->ah_st, hal->ah_sh, (0x8044), (filter1));
}
HAL_BOOL
ar5k_ar5211_set_mcast_filterindex(struct ath_hal *hal, u_int32_t index)
{
 if (index >= 64) {
     return (AH_FALSE);
 } else if (index >= 32) {
     bus_space_write_4(hal->ah_st, hal->ah_sh, (0x8044), (bus_space_read_4(hal->ah_st, hal->ah_sh, (0x8044)) | ((1 << (index - 32)))));
 } else {
     bus_space_write_4(hal->ah_st, hal->ah_sh, (0x8040), (bus_space_read_4(hal->ah_st, hal->ah_sh, (0x8040)) | ((1 << index))));
 }
 return (AH_TRUE);
}
HAL_BOOL
ar5k_ar5211_clear_mcast_filter_idx(struct ath_hal *hal, u_int32_t index)
{
 if (index >= 64) {
     return (AH_FALSE);
 } else if (index >= 32) {
     bus_space_write_4(hal->ah_st, hal->ah_sh, (0x8044), (bus_space_read_4(hal->ah_st, hal->ah_sh, (0x8044)) &~ ((1 << (index - 32)))));
 } else {
     bus_space_write_4(hal->ah_st, hal->ah_sh, (0x8040), (bus_space_read_4(hal->ah_st, hal->ah_sh, (0x8040)) &~ ((1 << index))));
 }
 return (AH_TRUE);
}
u_int32_t
ar5k_ar5211_get_rx_filter(struct ath_hal *hal)
{
 return (bus_space_read_4(hal->ah_st, hal->ah_sh, (0x803c)));
}
void
ar5k_ar5211_set_rx_filter(struct ath_hal *hal, u_int32_t filter)
{
 bus_space_write_4(hal->ah_st, hal->ah_sh, (0x803c), (filter));
}
HAL_BOOL
ar5k_ar5211_setup_rx_desc(struct ath_hal *hal, struct ath_desc *desc,
    u_int32_t size, u_int flags)
{
 struct ar5k_ar5211_rx_desc *rx_desc;
 rx_desc = (struct ar5k_ar5211_rx_desc*)&desc->ds_ctl0;
 if ((rx_desc->rx_control_1 = (size &
     0x00000fff)) != size)
  return (AH_FALSE);
 if (flags & 0x0020)
  rx_desc->rx_control_1 |= 0x00002000;
 return (AH_TRUE);
}
HAL_STATUS
ar5k_ar5211_proc_rx_desc(struct ath_hal *hal, struct ath_desc *desc,
    u_int32_t phys_addr, struct ath_desc *next)
{
 struct ar5k_ar5211_rx_status *rx_status;
 rx_status = (struct ar5k_ar5211_rx_status*)&desc->ds_hw[0];
 if ((rx_status->rx_status_1 & 0x00000001) == 0)
  return (36);
 desc->ds_us.rx.rs_datalen = rx_status->rx_status_0 &
     0x00000fff;
 desc->ds_us.rx.rs_rssi =
     (((uint32_t)(rx_status->rx_status_0) & (0x07f80000)) >> 19);
 desc->ds_us.rx.rs_rate =
     (((uint32_t)(rx_status->rx_status_0) & (0x00078000)) >> 15);
 desc->ds_us.rx.rs_antenna = rx_status->rx_status_0 &
     0x38000000;
 desc->ds_us.rx.rs_more = rx_status->rx_status_0 &
     0x00001000;
 desc->ds_us.rx.rs_tstamp =
     (((uint32_t)(rx_status->rx_status_1) & (0x0fff8000)) >> 15);
 desc->ds_us.rx.rs_status = 0;
 if (rx_status->rx_status_1 &
     0x00000100) {
  desc->ds_us.rx.rs_keyix =
      (((uint32_t)(rx_status->rx_status_1) & (0x00007e00)) >> 9);
 } else {
  desc->ds_us.rx.rs_keyix = ((u_int8_t) - 1);
 }
 if ((rx_status->rx_status_1 &
     0x00000002) == 0) {
  if (rx_status->rx_status_1 &
      0x00000004)
   desc->ds_us.rx.rs_status |= 0x01;
  if (rx_status->rx_status_1 &
      0x000000e0) {
   desc->ds_us.rx.rs_status |= 0x02;
   desc->ds_us.rx.rs_phyerr =
       (((uint32_t)(rx_status->rx_status_1) & (0x000000e0)) >> 5);
  }
  if (rx_status->rx_status_1 &
      0x00000010)
   desc->ds_us.rx.rs_status |= 0x08;
 }
 return (0);
}
void
ar5k_ar5211_set_rx_signal(struct ath_hal *hal)
{
}
void
ar5k_ar5211_dump_state(struct ath_hal *hal)
{
}
HAL_BOOL
ar5k_ar5211_get_diag_state(struct ath_hal *hal, int id, void **device,
    u_int *size)
{
 return (AH_FALSE);
}
void
ar5k_ar5211_get_lladdr(struct ath_hal *hal, u_int8_t *mac)
{
 __builtin_bcopy((hal->ah_sta_id), (mac), (6));
}
HAL_BOOL
ar5k_ar5211_set_lladdr(struct ath_hal *hal, const u_int8_t *mac)
{
 u_int32_t low_id, high_id;
 __builtin_bcopy((mac), (hal->ah_sta_id), (6));
 low_id = ( (mac)[0] | (mac)[1] << 8 | (mac)[2] << 16 | (mac)[3] << 24 );
 high_id = 0x0000ffff & ((mac)[4] | (mac)[5] << 8);
 bus_space_write_4(hal->ah_st, hal->ah_sh, (0x8000), (low_id));
 bus_space_write_4(hal->ah_st, hal->ah_sh, (0x8004), (high_id));
 return (AH_TRUE);
}
HAL_BOOL
ar5k_ar5211_set_regdomain(struct ath_hal *hal, u_int16_t regdomain,
    HAL_STATUS *status)
{
 ieee80211_regdomain_t ieee_regdomain;
 ieee_regdomain = ar5k_regdomain_to_ieee(regdomain);
 if (ar5k_eeprom_regulation_domain(hal, AH_TRUE,
  &ieee_regdomain) == AH_TRUE) {
  *status = 0;
  return (AH_TRUE);
 }
 *status = 5;
 return (AH_FALSE);
}
void
ar5k_ar5211_set_ledstate(struct ath_hal *hal, HAL_LED_STATE state)
{
 u_int32_t led;
 bus_space_write_4(hal->ah_st, hal->ah_sh, (0x4010), (bus_space_read_4(hal->ah_st, hal->ah_sh, (0x4010)) &~ (0x000e0000 | 0x00000060)));
 switch (state) {
 case IEEE80211_S_SCAN:
 case IEEE80211_S_AUTH:
  led = 0x00000000 |
      0x00000020;
  break;
 case IEEE80211_S_INIT:
  led = 0x00000000 |
      0x00000000;
  break;
 case IEEE80211_S_ASSOC:
 case IEEE80211_S_RUN:
  led = 0x00000000 |
      0x00000040;
  break;
 default:
  led = 0x00020000 |
      0x00000000;
  break;
 }
 bus_space_write_4(hal->ah_st, hal->ah_sh, (0x4010), (bus_space_read_4(hal->ah_st, hal->ah_sh, (0x4010)) | (led)));
}
void
ar5k_ar5211_set_associd(struct ath_hal *hal, const u_int8_t *bssid,
    u_int16_t assoc_id, u_int16_t tim_offset)
{
 u_int32_t low_id, high_id;
 low_id = ( (bssid)[0] | (bssid)[1] << 8 | (bssid)[2] << 16 | (bssid)[3] << 24 );
 high_id = ((bssid)[4] | (bssid)[5] << 8);
 bus_space_write_4(hal->ah_st, hal->ah_sh, (0x8008), (low_id));
 bus_space_write_4(hal->ah_st, hal->ah_sh, (0x800c), (high_id | ((assoc_id & 0x3fff) << 16)));
 __builtin_bcopy((bssid), (hal->ah_bssid), (6));
 if (assoc_id == 0) {
  ar5k_ar5211_disable_pspoll(hal);
  return;
 }
 bus_space_write_4(hal->ah_st, hal->ah_sh, (0x8020), ((bus_space_read_4(hal->ah_st, hal->ah_sh, (0x8020)) & ~0x007f0000) | (((tim_offset ? tim_offset + 4 : 0) << 16) & 0x007f0000)));
 ar5k_ar5211_enable_pspoll(hal, ((void *)0), 0);
}
HAL_BOOL
ar5k_ar5211_set_bssid_mask(struct ath_hal *hal, const u_int8_t* mask)
{
 return (AH_FALSE);
}
HAL_BOOL
ar5k_ar5211_set_gpio_output(struct ath_hal *hal, u_int32_t gpio)
{
 if (gpio > 6)
  return (AH_FALSE);
 bus_space_write_4(hal->ah_st, hal->ah_sh, (0x4014), ((bus_space_read_4(hal->ah_st, hal->ah_sh, (0x4014)) &~ (3 << ((gpio) * 2))) | (3 << ((gpio) * 2))));
 return (AH_TRUE);
}
HAL_BOOL
ar5k_ar5211_set_gpio_input(struct ath_hal *hal, u_int32_t gpio)
{
 if (gpio > 6)
  return (AH_FALSE);
 bus_space_write_4(hal->ah_st, hal->ah_sh, (0x4014), ((bus_space_read_4(hal->ah_st, hal->ah_sh, (0x4014)) &~ (3 << ((gpio) * 2))) | (0 << ((gpio) * 2))));
 return (AH_TRUE);
}
u_int32_t
ar5k_ar5211_get_gpio(struct ath_hal *hal, u_int32_t gpio)
{
 if (gpio > 6)
  return (0xffffffff);
 return (((bus_space_read_4(hal->ah_st, hal->ah_sh, (0x401c)) &
     0x0000002f) >> gpio) & 0x1);
}
HAL_BOOL
ar5k_ar5211_set_gpio(struct ath_hal *hal, u_int32_t gpio, u_int32_t val)
{
 u_int32_t data;
 if (gpio > 6)
  return (0xffffffff);
 data = bus_space_read_4(hal->ah_st, hal->ah_sh, (0x4018));
 data &= ~(1 << gpio);
 data |= (val&1) << gpio;
 bus_space_write_4(hal->ah_st, hal->ah_sh, (0x4018), (data));
 return (AH_TRUE);
}
void
ar5k_ar5211_set_gpio_intr(struct ath_hal *hal, u_int gpio,
    u_int32_t interrupt_level)
{
 u_int32_t data;
 if (gpio > 6)
  return;
 data = (bus_space_read_4(hal->ah_st, hal->ah_sh, (0x4014)) &
     ~(((gpio) << 12) | 0x00010000 |
     0x00008000 | (3 << ((gpio) * 2)))) |
     (((gpio) << 12) | 0x00008000);
 bus_space_write_4(hal->ah_st, hal->ah_sh, (0x4014), (interrupt_level ? data : (data | 0x00010000)));
 hal->ah_imr |= 0x01000000;
 bus_space_write_4(hal->ah_st, hal->ah_sh, (0x00a0), (bus_space_read_4(hal->ah_st, hal->ah_sh, (0x00a0)) | (0x01000000)));
}
u_int32_t
ar5k_ar5211_get_tsf32(struct ath_hal *hal)
{
 return (bus_space_read_4(hal->ah_st, hal->ah_sh, (0x804c)));
}
u_int64_t
ar5k_ar5211_get_tsf64(struct ath_hal *hal)
{
 u_int64_t tsf = bus_space_read_4(hal->ah_st, hal->ah_sh, (0x8050));
 return (bus_space_read_4(hal->ah_st, hal->ah_sh, (0x804c)) | (tsf << 32));
}
void
ar5k_ar5211_reset_tsf(struct ath_hal *hal)
{
 bus_space_write_4(hal->ah_st, hal->ah_sh, (0x8020), (bus_space_read_4(hal->ah_st, hal->ah_sh, (0x8020)) | (0x01000000)));
}
u_int16_t
ar5k_ar5211_get_regdomain(struct ath_hal *hal)
{
 return (ar5k_get_regdomain(hal));
}
HAL_BOOL
ar5k_ar5211_detect_card_present(struct ath_hal *hal)
{
 u_int16_t magic;
 if (ar5k_ar5211_eeprom_read(hal, 0x003d, &magic) != 0)
  return (AH_FALSE);
 return (magic == 0x5aa5 ? AH_TRUE : AH_FALSE);
}
void
ar5k_ar5211_update_mib_counters(struct ath_hal *hal, HAL_MIB_STATS *statistics)
{
 statistics->ackrcv_bad += bus_space_read_4(hal->ah_st, hal->ah_sh, (0x8090));
 statistics->rts_bad += bus_space_read_4(hal->ah_st, hal->ah_sh, (0x808c));
 statistics->rts_good += bus_space_read_4(hal->ah_st, hal->ah_sh, (0x8088));
 statistics->fcs_bad += bus_space_read_4(hal->ah_st, hal->ah_sh, (0x8094));
 statistics->beacons += bus_space_read_4(hal->ah_st, hal->ah_sh, (0x8098));
}
HAL_RFGAIN
ar5k_ar5211_get_rf_gain(struct ath_hal *hal)
{
 return (HAL_RFGAIN_INACTIVE);
}
HAL_BOOL
ar5k_ar5211_set_slot_time(struct ath_hal *hal, u_int slot_time)
{
 if (slot_time < 396 || slot_time > 0xffff)
  return (AH_FALSE);
 bus_space_write_4(hal->ah_st, hal->ah_sh, (0x1070), (slot_time));
 return (AH_TRUE);
}
u_int
ar5k_ar5211_get_slot_time(struct ath_hal *hal)
{
 return (bus_space_read_4(hal->ah_st, hal->ah_sh, (0x1070)) & 0xffff);
}
HAL_BOOL
ar5k_ar5211_set_ack_timeout(struct ath_hal *hal, u_int timeout)
{
 if (ar5k_clocktoh((((uint32_t)(0xffffffff) & (0x00001fff)) >> 0))
     <= timeout)
  return (AH_FALSE);
 bus_space_write_4(hal->ah_st, hal->ah_sh, (0x8014), ((bus_space_read_4(hal->ah_st, hal->ah_sh, (0x8014)) &~ (0x00001fff)) | (((ar5k_htoclock(timeout)) << 0) & (0x00001fff))));
 return (AH_TRUE);
}
u_int
ar5k_ar5211_get_ack_timeout(struct ath_hal *hal)
{
 return (ar5k_clocktoh((((uint32_t)(bus_space_read_4(hal->ah_st, hal->ah_sh, (0x8014))) & (0x00001fff)) >> 0)));
}
HAL_BOOL
ar5k_ar5211_set_cts_timeout(struct ath_hal *hal, u_int timeout)
{
 if (ar5k_clocktoh((((uint32_t)(0xffffffff) & (0x1fff0000)) >> 16))
     <= timeout)
  return (AH_FALSE);
 bus_space_write_4(hal->ah_st, hal->ah_sh, (0x8014), ((bus_space_read_4(hal->ah_st, hal->ah_sh, (0x8014)) &~ (0x1fff0000)) | (((ar5k_htoclock(timeout)) << 16) & (0x1fff0000))));
 return (AH_TRUE);
}
u_int
ar5k_ar5211_get_cts_timeout(struct ath_hal *hal)
{
 return (ar5k_clocktoh((((uint32_t)(bus_space_read_4(hal->ah_st, hal->ah_sh, (0x8014))) & (0x1fff0000)) >> 16)));
}
HAL_BOOL
ar5k_ar5211_is_cipher_supported(struct ath_hal *hal, HAL_CIPHER cipher)
{
 if (cipher == HAL_CIPHER_WEP)
  return (AH_TRUE);
 return (AH_FALSE);
}
u_int32_t
ar5k_ar5211_get_keycache_size(struct ath_hal *hal)
{
 return (8);
}
HAL_BOOL
ar5k_ar5211_reset_key(struct ath_hal *hal, u_int16_t entry)
{
 int i;
 do { if (entry >= 128) return (AH_FALSE); } while (0);
 for (i = 0; i < 8; i++)
  bus_space_write_4(hal->ah_st, hal->ah_sh, (((0x8800 + ((entry) * 32)) + (i << 2))), (0));
 bus_space_write_4(hal->ah_st, hal->ah_sh, (((0x8800 + ((entry) * 32)) + (5 << 2))), (0x00000007));
 return (AH_FALSE);
}
HAL_BOOL
ar5k_ar5211_is_key_valid(struct ath_hal *hal, u_int16_t entry)
{
 do { if (entry >= 128) return (AH_FALSE); } while (0);
 if (bus_space_read_4(hal->ah_st, hal->ah_sh, (((0x8800 + ((entry) * 32)) + (7 << 2)))) &
     0x00008000)
  return (AH_TRUE);
 return (AH_FALSE);
}
HAL_BOOL
ar5k_ar5211_set_key(struct ath_hal *hal, u_int16_t entry,
    const HAL_KEYVAL *keyval, const u_int8_t *mac, int xor_notused)
{
 int i;
 u_int32_t key_v[8 - 2];
 do { if (entry >= 128) return (AH_FALSE); } while (0);
 __builtin_bzero((&key_v), (sizeof(key_v)));
 switch (keyval->wk_len) {
 case 5:
  __builtin_bcopy((keyval->wk_key), (&key_v[0]), (4));
  __builtin_bcopy((keyval->wk_key + 4), (&key_v[1]), (1));
  key_v[5] = 0x00000000;
  break;
 case 13:
  __builtin_bcopy((keyval->wk_key), (&key_v[0]), (4));
  __builtin_bcopy((keyval->wk_key + 4), (&key_v[1]), (2));
  __builtin_bcopy((keyval->wk_key + 6), (&key_v[2]), (4));
  __builtin_bcopy((keyval->wk_key + 10), (&key_v[3]), (2));
  __builtin_bcopy((keyval->wk_key + 12), (&key_v[4]), (1));
  key_v[5] = 0x00000001;
  break;
 case 16:
  __builtin_bcopy((keyval->wk_key), (&key_v[0]), (4));
  __builtin_bcopy((keyval->wk_key + 4), (&key_v[1]), (2));
  __builtin_bcopy((keyval->wk_key + 6), (&key_v[2]), (4));
  __builtin_bcopy((keyval->wk_key + 10), (&key_v[3]), (2));
  __builtin_bcopy((keyval->wk_key + 12), (&key_v[4]), (4));
  key_v[5] = 0x00000003;
  break;
 default:
  return (AH_FALSE);
 }
 for (i = 0; i < (sizeof((key_v)) / sizeof((key_v)[0])); i++)
  bus_space_write_4(hal->ah_st, hal->ah_sh, (((0x8800 + ((entry) * 32)) + (i << 2))), (key_v[i]));
 return (ar5k_ar5211_set_key_lladdr(hal, entry, mac));
}
HAL_BOOL
ar5k_ar5211_set_key_lladdr(struct ath_hal *hal, u_int16_t entry,
    const u_int8_t *mac)
{
 u_int32_t low_id, high_id;
 const u_int8_t *mac_v;
 do { if (entry >= 128) return (AH_FALSE); } while (0);
 mac_v = mac == ((void *)0) ? etherbroadcastaddr : mac;
 low_id = ( (mac_v)[0] | (mac_v)[1] << 8 | (mac_v)[2] << 16 | (mac_v)[3] << 24 );
 high_id = ((mac_v)[4] | (mac_v)[5] << 8) | 0x00008000;
 bus_space_write_4(hal->ah_st, hal->ah_sh, (((0x8800 + ((entry) * 32)) + (6 << 2))), (low_id));
 bus_space_write_4(hal->ah_st, hal->ah_sh, (((0x8800 + ((entry) * 32)) + (7 << 2))), (high_id));
 return (AH_TRUE);
}
HAL_BOOL
ar5k_ar5211_softcrypto(struct ath_hal *hal, HAL_BOOL enable)
{
 u_int32_t bits;
 int i;
 bits = 0x00000008 | 0x00000010;
 if (enable == AH_TRUE) {
  bus_space_write_4(hal->ah_st, hal->ah_sh, (0x8048), (bus_space_read_4(hal->ah_st, hal->ah_sh, (0x8048)) | (bits)));
 } else {
  bus_space_write_4(hal->ah_st, hal->ah_sh, (0x8048), (bus_space_read_4(hal->ah_st, hal->ah_sh, (0x8048)) &~ (bits)));
 }
 for (i = 0; i < 128; i++)
  ar5k_ar5211_reset_key(hal, i);
 return (AH_TRUE);
}
HAL_BOOL
ar5k_ar5211_set_power(struct ath_hal *hal, HAL_POWER_MODE mode,
    HAL_BOOL set_chip, u_int16_t sleep_duration)
{
 u_int32_t staid;
 int i;
 staid = bus_space_read_4(hal->ah_st, hal->ah_sh, (0x8004));
 switch (mode) {
 case HAL_PM_AUTO:
  staid &= ~0x00200000;
 case HAL_PM_NETWORK_SLEEP:
  if (set_chip == AH_TRUE) {
   bus_space_write_4(hal->ah_st, hal->ah_sh, (0x4004), (0x00030000 | sleep_duration));
  }
  staid |= 0x00040000;
  break;
 case HAL_PM_FULL_SLEEP:
  if (set_chip == AH_TRUE) {
   bus_space_write_4(hal->ah_st, hal->ah_sh, (0x4004), (0x00010000));
  }
  staid |= 0x00040000;
  break;
 case HAL_PM_AWAKE:
  if (set_chip == AH_FALSE)
   goto commit;
  bus_space_write_4(hal->ah_st, hal->ah_sh, (0x4004), (0x00000000));
  for (i = 5000; i > 0; i--) {
   if ((bus_space_read_4(hal->ah_st, hal->ah_sh, (0x4010)) &
       0x00010000) == 0)
    break;
   delay(200);
   bus_space_write_4(hal->ah_st, hal->ah_sh, (0x4004), (0x00000000));
  }
  if (i <= 0)
   return (AH_FALSE);
  staid &= ~0x00040000;
  break;
 default:
  return (AH_FALSE);
 }
 commit:
 hal->ah_power_mode = mode;
 bus_space_write_4(hal->ah_st, hal->ah_sh, (0x8004), (staid));
 return (AH_TRUE);
}
HAL_POWER_MODE
ar5k_ar5211_get_power_mode(struct ath_hal *hal)
{
 return (hal->ah_power_mode);
}
HAL_BOOL
ar5k_ar5211_query_pspoll_support(struct ath_hal *hal)
{
 return (AH_FALSE);
}
HAL_BOOL
ar5k_ar5211_init_pspoll(struct ath_hal *hal)
{
 return (AH_FALSE);
}
HAL_BOOL
ar5k_ar5211_enable_pspoll(struct ath_hal *hal, u_int8_t *bssid,
    u_int16_t assoc_id)
{
 return (AH_FALSE);
}
HAL_BOOL
ar5k_ar5211_disable_pspoll(struct ath_hal *hal)
{
 return (AH_FALSE);
}
void
ar5k_ar5211_init_beacon(struct ath_hal *hal, u_int32_t next_beacon,
    u_int32_t interval)
{
 u_int32_t timer1, timer2, timer3;
 switch (hal->ah_op_mode) {
 case IEEE80211_M_STA:
  timer1 = 0x0000ffff;
  timer2 = 0x0007ffff;
  break;
 default:
  timer1 = (next_beacon - 2) <<
      0x00000003;
  timer2 = (next_beacon - 10) <<
      0x00000003;
 }
 timer3 = next_beacon +
     (hal->ah_atim_window ? hal->ah_atim_window : 1);
 bus_space_write_4(hal->ah_st, hal->ah_sh, (0x8028), (next_beacon));
 bus_space_write_4(hal->ah_st, hal->ah_sh, (0x802c), (timer1));
 bus_space_write_4(hal->ah_st, hal->ah_sh, (0x8030), (timer2));
 bus_space_write_4(hal->ah_st, hal->ah_sh, (0x8034), (timer3));
 bus_space_write_4(hal->ah_st, hal->ah_sh, (0x8020), (interval & (0x0000ffff | 0x01000000 | 0x00800000)));
}
void
ar5k_ar5211_set_beacon_timers(struct ath_hal *hal,
    const HAL_BEACON_STATE *state, u_int32_t tsf, u_int32_t dtim_count,
    u_int32_t cfp_count)
{
 u_int32_t cfp_period, next_cfp;
 if (state->bs_interval < 1)
  return;
 if (state->bs_cfp_period > 0) {
  cfp_period = state->bs_cfp_period * state->bs_dtim_period *
      state->bs_interval;
  next_cfp = (cfp_count * state->bs_dtim_period + dtim_count) *
      state->bs_interval;
  bus_space_write_4(hal->ah_st, hal->ah_sh, (0x8004), (bus_space_read_4(hal->ah_st, hal->ah_sh, (0x8004)) &~ (0x00200000 | 0x00100000)));
  bus_space_write_4(hal->ah_st, hal->ah_sh, (0x8024), (cfp_period));
  bus_space_write_4(hal->ah_st, hal->ah_sh, (0x8038), (state->bs_cfp_max_duration));
  bus_space_write_4(hal->ah_st, hal->ah_sh, (0x8030), ((tsf + (next_cfp == 0 ? cfp_period : next_cfp)) << 3));
 } else {
  bus_space_write_4(hal->ah_st, hal->ah_sh, (0x8004), (bus_space_read_4(hal->ah_st, hal->ah_sh, (0x8004)) &~ (0x00200000 | 0x00100000)));
 }
 bus_space_write_4(hal->ah_st, hal->ah_sh, (0x8028), (state->bs_next_beacon));
 bus_space_write_4(hal->ah_st, hal->ah_sh, (0x8020), ((bus_space_read_4(hal->ah_st, hal->ah_sh, (0x8020)) &~ (0x0000ffff | 0x007f0000)) | (((uint32_t)(state->bs_tim_offset ? state->bs_tim_offset + 4 : 0) << 16) & (0x007f0000)) | (((uint32_t)(state->bs_interval) << 0) & (0x0000ffff))));
 if ((0x0000ff00 >> 8) <
     state->bs_bmiss_threshold)
  return;
 bus_space_write_4(hal->ah_st, hal->ah_sh, (0x000000ff), ((bus_space_read_4(hal->ah_st, hal->ah_sh, (0x000000ff)) &~ (0x0000ff00)) | (((state->bs_bmiss_threshold) << 8) & (0x0000ff00))));
 bus_space_write_4(hal->ah_st, hal->ah_sh, (0x4004), ((bus_space_read_4(hal->ah_st, hal->ah_sh, (0x4004)) &~ (0x0000ffff)) | ((((state->bs_sleep_duration - 3) << 3) << 0) & (0x0000ffff))));
}
void
ar5k_ar5211_reset_beacon(struct ath_hal *hal)
{
 bus_space_write_4(hal->ah_st, hal->ah_sh, (0x8028), (0));
 bus_space_write_4(hal->ah_st, hal->ah_sh, (0x8004), (bus_space_read_4(hal->ah_st, hal->ah_sh, (0x8004)) &~ (0x00200000 | 0x00100000)));
 bus_space_write_4(hal->ah_st, hal->ah_sh, (0x8020), (0x0000ffff));
}
HAL_BOOL
ar5k_ar5211_wait_for_beacon(struct ath_hal *hal, bus_addr_t phys_addr)
{
 HAL_BOOL ret;
 ret = ar5k_register_timeout(hal,
     (((HAL_TX_QUEUE_ID_BEACON) << 2) + 0x0a00),
     0x00000003, 0, AH_FALSE);
 if ((bus_space_read_4(hal->ah_st, hal->ah_sh, (0x0840)) & (1 << HAL_TX_QUEUE_ID_BEACON)))
  return (AH_FALSE);
 return (ret);
}
HAL_BOOL
ar5k_ar5211_is_intr_pending(struct ath_hal *hal)
{
 return (bus_space_read_4(hal->ah_st, hal->ah_sh, (0x4008)) == 0 ? AH_FALSE : AH_TRUE);
}
HAL_BOOL
ar5k_ar5211_get_isr(struct ath_hal *hal, u_int32_t *interrupt_mask)
{
 u_int32_t data;
 data = bus_space_read_4(hal->ah_st, hal->ah_sh, (0x00c0));
 *interrupt_mask = (data & ( 0x00000008 | 0x00000002 | 0x00000010 | 0x00000020 | 0x00000800 | 0x00000080 | 0x00001000 | 0x00004000 | 0x00008000 | 0x00010000 | 0x00040000 | 0x01000000 )) & hal->ah_imr;
 if (data == 0xffffffff)
  return (AH_FALSE);
 if (data & (0x00000001 | 0x00000004))
  *interrupt_mask |= 0x00000001;
 if (data & (0x00000040 | 0x00000100))
  *interrupt_mask |= 0x00000040;
 if (data & (0x00080000))
  *interrupt_mask |= 0x40000000;
 if (((*interrupt_mask) & 0x00004000) &&
     hal->ah_radar.r_enabled == AH_TRUE)
  ar5k_radar_alert(hal);
 return (AH_TRUE);
}
u_int32_t
ar5k_ar5211_get_intr(struct ath_hal *hal)
{
 return (hal->ah_imr);
}
HAL_INT
ar5k_ar5211_set_intr(struct ath_hal *hal, HAL_INT new_mask)
{
 HAL_INT old_mask, int_mask;
 bus_space_write_4(hal->ah_st, hal->ah_sh, (0x0024), (0x00000000));
 old_mask = hal->ah_imr;
 int_mask = new_mask & ( 0x00000008 | 0x00000002 | 0x00000010 | 0x00000020 | 0x00000800 | 0x00000080 | 0x00001000 | 0x00004000 | 0x00008000 | 0x00010000 | 0x00040000 | 0x01000000 );
 if (new_mask & 0x00000001)
  int_mask |=
      0x00000001 |
      0x00000004 |
      0x00000020 |
      0x00000002;
 if (new_mask & 0x00000040)
  int_mask |=
      0x00000040 |
      0x00000100 |
      0x00000080 |
      0x00000800;
 if (new_mask & 0x40000000) {
  int_mask |= 0x00080000;
  bus_space_write_4(hal->ah_st, hal->ah_sh, (0x00ac), (bus_space_read_4(hal->ah_st, hal->ah_sh, (0x00ac)) | (0x00100000 | 0x00200000 | 0x00400000)));
 }
 bus_space_write_4(hal->ah_st, hal->ah_sh, (0x00a0), (int_mask));
 hal->ah_imr = new_mask;
 bus_space_write_4(hal->ah_st, hal->ah_sh, (0x0024), (0x00000001));
 return (old_mask);
}
HAL_BOOL
ar5k_ar5211_get_capabilities(struct ath_hal *hal)
{
 u_int16_t ee_header;
 u_int a, b, g;
 ee_header = hal->ah_capabilities.cap_eeprom.ee_header;
 a = (((ee_header) >> 0) & 0x1);
 b = (((ee_header) >> 1) & 0x1);
 g = (((ee_header) >> 2) & 0x1);
 if (!a && !b && !g)
  b = 1;
 if (a) {
  hal->ah_capabilities.cap_range.range_5ghz_min = 5005;
  hal->ah_capabilities.cap_range.range_5ghz_max = 6100;
  hal->ah_capabilities.cap_mode = HAL_MODE_11A | HAL_MODE_TURBO;
 }
 if (b || g) {
  hal->ah_capabilities.cap_range.range_2ghz_min = 2412;
  hal->ah_capabilities.cap_range.range_2ghz_max = 2732;
  if (b)
   hal->ah_capabilities.cap_mode |= HAL_MODE_11B;
 }
 hal->ah_gpio_npins = 6;
 hal->ah_capabilities.cap_queues.q_tx_num = 10;
 return (AH_TRUE);
}
void
ar5k_ar5211_radar_alert(struct ath_hal *hal, HAL_BOOL enable)
{
 bus_space_write_4(hal->ah_st, hal->ah_sh, (0x0024), (0x00000000));
 if (enable == AH_TRUE) {
  bus_space_write_4(hal->ah_st, hal->ah_sh, (0x9954), (0x00000001));
  bus_space_write_4(hal->ah_st, hal->ah_sh, (0x00a0), (bus_space_read_4(hal->ah_st, hal->ah_sh, (0x00a0)) | (0x00004000)));
 } else {
  bus_space_write_4(hal->ah_st, hal->ah_sh, (0x9954), (0x00000000));
  bus_space_write_4(hal->ah_st, hal->ah_sh, (0x00a0), (bus_space_read_4(hal->ah_st, hal->ah_sh, (0x00a0)) &~ (0x00004000)));
 }
 bus_space_write_4(hal->ah_st, hal->ah_sh, (0x0024), (0x00000001));
}
HAL_BOOL
ar5k_ar5211_eeprom_is_busy(struct ath_hal *hal)
{
 return (bus_space_read_4(hal->ah_st, hal->ah_sh, (0x0014)) & 0x00000200 ?
     AH_TRUE : AH_FALSE);
}
int
ar5k_ar5211_eeprom_read(struct ath_hal *hal, u_int32_t offset, u_int16_t *data)
{
 u_int32_t status, i;
 bus_space_write_4(hal->ah_st, hal->ah_sh, (0x6000), ((u_int8_t)offset));
 bus_space_write_4(hal->ah_st, hal->ah_sh, (0x6008), (bus_space_read_4(hal->ah_st, hal->ah_sh, (0x6008)) | (0x00000001)));
 for (i = 20000; i > 0; i--) {
  status = bus_space_read_4(hal->ah_st, hal->ah_sh, (0x600c));
  if (status & 0x00000002) {
   if (status & 0x00000001)
    return (5);
   *data = (u_int16_t)
       (bus_space_read_4(hal->ah_st, hal->ah_sh, (0x6004)) & 0xffff);
   return (0);
  }
  delay(15);
 }
 return (60);
}
int
ar5k_ar5211_eeprom_write(struct ath_hal *hal, u_int32_t offset, u_int16_t data)
{
 u_int32_t status, timeout;
 bus_space_write_4(hal->ah_st, hal->ah_sh, (0x6008), (bus_space_read_4(hal->ah_st, hal->ah_sh, (0x6008)) | (0x00000004)));
 bus_space_write_4(hal->ah_st, hal->ah_sh, (0x6008), (bus_space_read_4(hal->ah_st, hal->ah_sh, (0x6008)) | (0x00000002)));
 bus_space_write_4(hal->ah_st, hal->ah_sh, (0x6000), ((u_int8_t)offset - 1));
 for (timeout = 10000; timeout > 0; timeout--) {
  delay(1);
  status = bus_space_read_4(hal->ah_st, hal->ah_sh, (0x600c));
  if (status & 0x00000008) {
   if (status & 0x00000004)
    return (5);
   return (0);
  }
 }
 return (60);
}
HAL_BOOL
ar5k_ar5211_rfregs(struct ath_hal *hal, HAL_CHANNEL *channel, u_int freq,
    u_int ee_mode)
{
 struct ar5k_eeprom_info *ee = &hal->ah_capabilities.cap_eeprom;
 struct ar5k_ar5211_ini_rf rf[(sizeof((ar5211_rf)) / sizeof((ar5211_rf)[0]))];
 u_int32_t ob, db, xpds, xpdp, x_gain;
 u_int i;
 int obdb;
 __builtin_bcopy((ar5211_rf), (rf), (sizeof(rf)));
 obdb = 0;
 if (freq == 1 &&
     hal->ah_capabilities.cap_eeprom.ee_version >= 0x3001) {
  ob = ar5k_bitswap(ee->ee_ob[ee_mode][0], 3);
  db = ar5k_bitswap(ee->ee_db[ee_mode][0], 3);
  rf[25].rf_value[freq] =
      ((ob << 6) & 0xc0) | (rf[25].rf_value[freq] & ~0xc0);
  rf[26].rf_value[freq] =
      (((ob >> 2) & 0x1) | ((db << 1) & 0xe)) |
      (rf[26].rf_value[freq] & ~0xf);
 }
 if (freq == 0) {
  obdb = channel->channel >= 5725 ? 3 :
      (channel->channel >= 5500 ? 2 :
   (channel->channel >= 5260 ? 1 :
       (channel->channel > 4000 ? 0 : -1)));
 }
 if (obdb < 0)
  return (AH_FALSE);
 ob = ee->ee_ob[ee_mode][obdb];
 db = ee->ee_db[ee_mode][obdb];
 x_gain = ee->ee_x_gain[ee_mode];
 xpds = ee->ee_xpd[ee_mode];
 xpdp = !xpds;
 rf[11].rf_value[freq] = (rf[11].rf_value[freq] & ~0xc0) |
  (((ar5k_bitswap(x_gain, 4) << 7) | (xpdp << 6)) & 0xc0);
 rf[12].rf_value[freq] = (rf[12].rf_value[freq] & ~0x7) |
  ((ar5k_bitswap(x_gain, 4) >> 1) & 0x7);
 rf[12].rf_value[freq] = (rf[12].rf_value[freq] & ~0x80) |
  ((ar5k_bitswap(ob, 3) << 7) & 0x80);
 rf[13].rf_value[freq] = (rf[13].rf_value[freq] & ~0x3) |
  ((ar5k_bitswap(ob, 3) >> 1) & 0x3);
 rf[13].rf_value[freq] = (rf[13].rf_value[freq] & ~0x1c) |
  ((ar5k_bitswap(db, 3) << 2) & 0x1c);
 rf[17].rf_value[freq] = (rf[17].rf_value[freq] & ~0x8) |
  ((xpds << 3) & 0x8);
 for (i = 0; i < (sizeof((rf)) / sizeof((rf)[0])); i++) {
  if (i % 64) delay(1);;
  bus_space_write_4(hal->ah_st, hal->ah_sh, ((u_int32_t)rf[i].rf_register), (rf[i].rf_value[freq]));
 }
 hal->ah_rf_gain = HAL_RFGAIN_INACTIVE;
 return (AH_TRUE);
}
HAL_BOOL
ar5k_ar5211_set_txpower_limit(struct ath_hal *hal, u_int power)
{
 return (AH_FALSE);
}
