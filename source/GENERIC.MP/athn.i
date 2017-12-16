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
typedef __int_least8_t int_least8_t;
typedef __uint_least8_t uint_least8_t;
typedef __int_least16_t int_least16_t;
typedef __uint_least16_t uint_least16_t;
typedef __int_least32_t int_least32_t;
typedef __uint_least32_t uint_least32_t;
typedef __int_least64_t int_least64_t;
typedef __uint_least64_t uint_least64_t;
typedef __int_fast8_t int_fast8_t;
typedef __uint_fast8_t uint_fast8_t;
typedef __int_fast16_t int_fast16_t;
typedef __uint_fast16_t uint_fast16_t;
typedef __int_fast32_t int_fast32_t;
typedef __uint_fast32_t uint_fast32_t;
typedef __int_fast64_t int_fast64_t;
typedef __uint_fast64_t uint_fast64_t;
typedef __intptr_t intptr_t;
typedef __uintptr_t uintptr_t;
typedef __intmax_t intmax_t;
typedef __uintmax_t uintmax_t;
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
void bpfattach(caddr_t *, struct ifnet *, u_int, u_int);
void bpfdetach(struct ifnet *);
void bpfilterattach(int);
u_int bpf_mfilter(const struct bpf_insn *, const struct mbuf *, u_int);
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
struct sockaddr_dl {
 u_char sdl_len;
 u_char sdl_family;
 u_int16_t sdl_index;
 u_char sdl_type;
 u_char sdl_nlen;
 u_char sdl_alen;
 u_char sdl_slen;
 char sdl_data[24];
};
static inline struct sockaddr_dl *
satosdl(struct sockaddr *sa)
{
 return ((struct sockaddr_dl *)(sa));
}
static inline struct sockaddr *
sdltosa(struct sockaddr_dl *sdl)
{
 return ((struct sockaddr *)(sdl));
}
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
 void (*ni_unref_cb)(struct ieee80211com *,
     struct ieee80211_node *);
 void * ni_unref_arg;
 size_t ni_unref_arg_size;
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
 int (*ic_bgscan_start)(struct ieee80211com *);
 struct timeout ic_bgscan_timeout;
 uint32_t ic_bgscan_fail;
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
 u_int32_t ic_xflags;
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
 int (*ic_node_checkrssi)(struct ieee80211com *,
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
struct ieee80211_amrr {
 u_int amrr_min_success_threshold;
 u_int amrr_max_success_threshold;
};
struct ieee80211_amrr_node {
 u_int amn_success;
 u_int amn_recovery;
 u_int amn_success_threshold;
 u_int amn_txcnt;
 u_int amn_retrycnt;
};
void ieee80211_amrr_node_init(const struct ieee80211_amrr *,
     struct ieee80211_amrr_node *);
void ieee80211_amrr_choose(struct ieee80211_amrr *, struct ieee80211_node *,
     struct ieee80211_amrr_node *);
struct ieee80211_mira_goodput_stats {
 uint64_t measured;
 uint64_t average;
 uint64_t average_agg;
 uint64_t stddeviation;
 uint64_t loss;
 uint32_t nprobes;
 uint32_t nprobe_bytes;
 int probe_interval;
 int probe_timeout_triggered;
};
struct ieee80211_mira_node {
 uint32_t frames;
 uint32_t retries;
 uint32_t txfail;
 uint32_t ampdu_size;
 uint32_t agglen;
 uint32_t valid_rates;
 uint32_t candidate_rates;
 uint32_t probed_rates;
 struct timeout probe_to[2];
 int probe_timer_expired[2];
 int probing;
 int best_mcs;
 struct ieee80211_mira_goodput_stats g[32];
};
void ieee80211_mira_node_init(struct ieee80211_mira_node *);
void ieee80211_mira_choose(struct ieee80211_mira_node *,
     struct ieee80211com *, struct ieee80211_node *);
void ieee80211_mira_cancel_timeouts(struct ieee80211_mira_node *);
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
struct athn_rx_radiotap_header {
 struct ieee80211_radiotap_header wr_ihdr;
 uint64_t wr_tsft;
 uint8_t wr_flags;
 uint8_t wr_rate;
 uint16_t wr_chan_freq;
 uint16_t wr_chan_flags;
 int8_t wr_dbm_antsignal;
 uint8_t wr_antenna;
} __attribute__((__packed__));
struct athn_tx_radiotap_header {
 struct ieee80211_radiotap_header wt_ihdr;
 uint8_t wt_flags;
 uint8_t wt_rate;
 uint16_t wt_chan_freq;
 uint16_t wt_chan_flags;
 uint8_t wt_hwqueue;
} __attribute__((__packed__));
struct athn_tx_buf {
 struct { struct athn_tx_buf *sqe_next; } bf_list;
 void *bf_descs;
 bus_dmamap_t bf_map;
 bus_addr_t bf_daddr;
 struct mbuf *bf_m;
 struct ieee80211_node *bf_ni;
 int bf_txflags;
};
struct athn_txq {
 struct { struct athn_tx_buf *sqh_first; struct athn_tx_buf **sqh_last; } head;
 void *lastds;
 struct athn_tx_buf *wait;
 int queued;
};
struct athn_rx_buf {
 struct { struct athn_rx_buf *sqe_next; } bf_list;
 void *bf_desc;
 bus_dmamap_t bf_map;
 struct mbuf *bf_m;
 bus_addr_t bf_daddr;
};
struct athn_rxq {
 struct athn_rx_buf *bf;
 void *descs;
 void *lastds;
 bus_dmamap_t map;
 bus_dma_segment_t seg;
 int count;
 struct { struct athn_rx_buf *sqh_first; struct athn_rx_buf **sqh_last; } head;
};
static const struct athn_rate {
 uint16_t rate;
 uint8_t hwrate;
 uint8_t rspridx;
 enum ieee80211_phytype phy;
} athn_rates[] = {
 { 2, 0x1b, 0, IEEE80211_T_DS },
 { 4, 0x1a, 1, IEEE80211_T_DS },
 { 11, 0x19, 1, IEEE80211_T_DS },
 { 22, 0x18, 1, IEEE80211_T_DS },
 { 12, 0x0b, 4, IEEE80211_T_OFDM },
 { 18, 0x0f, 4, IEEE80211_T_OFDM },
 { 24, 0x0a, 6, IEEE80211_T_OFDM },
 { 36, 0x0e, 6, IEEE80211_T_OFDM },
 { 48, 0x09, 8, IEEE80211_T_OFDM },
 { 72, 0x0d, 8, IEEE80211_T_OFDM },
 { 96, 0x08, 8, IEEE80211_T_OFDM },
 { 108, 0x0c, 8, IEEE80211_T_OFDM },
 { 13, 0x80, 4, IEEE80211_T_OFDM },
 { 26, 0x81, 6, IEEE80211_T_OFDM },
 { 39, 0x82, 6, IEEE80211_T_OFDM },
 { 52, 0x83, 8, IEEE80211_T_OFDM },
 { 78, 0x84, 8, IEEE80211_T_OFDM },
 { 104, 0x85, 8, IEEE80211_T_OFDM },
 { 117, 0x86, 8, IEEE80211_T_OFDM },
 { 130, 0x87, 8, IEEE80211_T_OFDM },
 { 26, 0x88, 4, IEEE80211_T_OFDM },
 { 52, 0x89, 6, IEEE80211_T_OFDM },
 { 78, 0x8a, 8, IEEE80211_T_OFDM },
 { 104, 0x8b, 8, IEEE80211_T_OFDM },
 { 156, 0x8c, 8, IEEE80211_T_OFDM },
 { 208, 0x8d, 8, IEEE80211_T_OFDM },
 { 234, 0x8e, 8, IEEE80211_T_OFDM },
 { 260, 0x8f, 8, IEEE80211_T_OFDM }
};
struct athn_series {
 uint16_t dur;
 uint8_t hwrate;
};
struct athn_pier {
 uint8_t fbin;
 const uint8_t *pwr[4];
 const uint8_t *vpd[4];
};
struct athn_ini {
 int nregs;
 const uint16_t *regs;
 const uint32_t *vals_5g20;
 const uint32_t *vals_5g40;
 const uint32_t *vals_2g40;
 const uint32_t *vals_2g20;
 int ncmregs;
 const uint16_t *cmregs;
 const uint32_t *cmvals;
 int nfastregs;
 const uint16_t *fastregs;
 const uint32_t *fastvals_5g20;
 const uint32_t *fastvals_5g40;
};
struct athn_gain {
 int nregs;
 const uint16_t *regs;
 const uint32_t *vals_5g;
 const uint32_t *vals_2g;
};
struct athn_addac {
 int nvals;
 const uint32_t *vals;
};
struct athn_serdes {
 int nvals;
 const uint32_t *regs;
 const uint32_t *vals;
};
static const uint8_t athn_ac2qid[4] = {
 0,
 2,
 3,
 4
};
static const uint8_t athn_5ghz_chans[] = {
 36, 40, 44, 48,
 52, 56, 60, 64,
 100, 104, 108, 112, 116, 120, 124, 128, 132, 136, 140,
 149, 153, 157, 161, 165
};
static const uint16_t ar_mcs_ndbps[][2] = {
 { 26, 54 },
 { 52, 108 },
 { 78, 162 },
 { 104, 216 },
 { 156, 324 },
 { 208, 432 },
 { 234, 486 },
 { 260, 540 },
 { 26, 108 },
 { 52, 216 },
 { 78, 324 },
 { 104, 432 },
 { 156, 648 },
 { 208, 864 },
 { 234, 972 },
 { 260, 1080 }
};
struct athn_node {
 struct ieee80211_node ni;
 struct ieee80211_amrr_node amn;
 struct ieee80211_mira_node mn;
 uint8_t ridx[(15 + (15 + 1))];
 uint8_t fallback[(15 + (15 + 1))];
 uint8_t sta_index;
};
struct athn_ani {
 uint8_t noise_immunity_level;
 uint8_t spur_immunity_level;
 uint8_t firstep_level;
 uint8_t ofdm_weak_signal;
 uint8_t cck_weak_signal;
 uint32_t listen_time;
 uint32_t ofdm_trig_high;
 uint32_t ofdm_trig_low;
 int32_t cck_trig_high;
 int32_t cck_trig_low;
 uint32_t ofdm_phy_err_base;
 uint32_t cck_phy_err_base;
 uint32_t ofdm_phy_err_count;
 uint32_t cck_phy_err_count;
 uint32_t cyccnt;
 uint32_t txfcnt;
 uint32_t rxfcnt;
};
struct athn_iq_cal {
 uint32_t pwr_meas_i;
 uint32_t pwr_meas_q;
 int32_t iq_corr_meas;
};
struct athn_adc_cal {
 uint32_t pwr_meas_odd_i;
 uint32_t pwr_meas_even_i;
 uint32_t pwr_meas_odd_q;
 uint32_t pwr_meas_even_q;
};
struct athn_calib {
 int nsamples;
 struct athn_iq_cal iq[3];
 struct athn_adc_cal adc_gain[3];
 struct athn_adc_cal adc_dc_offset[3];
};
struct athn_softc;
struct athn_ops {
 uint32_t (*read)(struct athn_softc *, uint32_t);
 void (*write)(struct athn_softc *, uint32_t, uint32_t);
 void (*write_barrier)(struct athn_softc *);
 void (*setup)(struct athn_softc *);
 void (*set_txpower)(struct athn_softc *, struct ieee80211_channel *,
      struct ieee80211_channel *);
 void (*spur_mitigate)(struct athn_softc *,
      struct ieee80211_channel *, struct ieee80211_channel *);
 const struct ar_spur_chan *
  (*get_spur_chans)(struct athn_softc *, int);
 void (*init_from_rom)(struct athn_softc *,
      struct ieee80211_channel *, struct ieee80211_channel *);
 int (*set_synth)(struct athn_softc *, struct ieee80211_channel *,
      struct ieee80211_channel *);
 int (*read_rom_data)(struct athn_softc *, uint32_t, void *, int);
 const uint8_t *
  (*get_rom_template)(struct athn_softc *, uint8_t);
 void (*swap_rom)(struct athn_softc *);
 void (*olpc_init)(struct athn_softc *);
 void (*olpc_temp_compensation)(struct athn_softc *);
 int (*gpio_read)(struct athn_softc *, int);
 void (*gpio_write)(struct athn_softc *, int, int);
 void (*gpio_config_input)(struct athn_softc *, int);
 void (*gpio_config_output)(struct athn_softc *, int, int);
 void (*rfsilent_init)(struct athn_softc *);
 int (*dma_alloc)(struct athn_softc *);
 void (*dma_free)(struct athn_softc *);
 void (*rx_enable)(struct athn_softc *);
 int (*intr)(struct athn_softc *);
 int (*tx)(struct athn_softc *, struct mbuf *,
      struct ieee80211_node *, int);
 void (*set_rf_mode)(struct athn_softc *,
      struct ieee80211_channel *);
 int (*rf_bus_request)(struct athn_softc *);
 void (*rf_bus_release)(struct athn_softc *);
 void (*set_phy)(struct athn_softc *, struct ieee80211_channel *,
      struct ieee80211_channel *);
 void (*set_delta_slope)(struct athn_softc *,
      struct ieee80211_channel *, struct ieee80211_channel *);
 void (*enable_antenna_diversity)(struct athn_softc *);
 void (*init_baseband)(struct athn_softc *);
 void (*disable_phy)(struct athn_softc *);
 void (*set_rxchains)(struct athn_softc *);
 void (*noisefloor_calib)(struct athn_softc *);
 void (*do_calib)(struct athn_softc *);
 void (*next_calib)(struct athn_softc *);
 void (*hw_init)(struct athn_softc *, struct ieee80211_channel *,
      struct ieee80211_channel *);
 void (*get_paprd_masks)(struct athn_softc *sc,
      struct ieee80211_channel *, uint32_t *, uint32_t *);
 void (*set_noise_immunity_level)(struct athn_softc *, int);
 void (*enable_ofdm_weak_signal)(struct athn_softc *);
 void (*disable_ofdm_weak_signal)(struct athn_softc *);
 void (*set_cck_weak_signal)(struct athn_softc *, int);
 void (*set_firstep_level)(struct athn_softc *, int);
 void (*set_spur_immunity_level)(struct athn_softc *, int);
};
struct athn_softc {
 struct device sc_dev;
 struct ieee80211com sc_ic;
 int (*sc_enable)(struct athn_softc *);
 void (*sc_disable)(struct athn_softc *);
 void (*sc_power)(struct athn_softc *, int);
 void (*sc_disable_aspm)(struct athn_softc *);
 void (*sc_enable_extsynch)(
         struct athn_softc *);
 int (*sc_newstate)(struct ieee80211com *,
         enum ieee80211_state, int);
 bus_dma_tag_t sc_dmat;
 struct timeout scan_to;
 struct timeout calib_to;
 struct ieee80211_amrr amrr;
 u_int flags;
 uint8_t ngpiopins;
 int led_pin;
 int rfsilent_pin;
 int led_state;
 uint32_t isync;
 uint32_t imask;
 uint16_t mac_ver;
 uint8_t mac_rev;
 uint8_t rf_rev;
 uint16_t eep_rev;
 uint8_t txchainmask;
 uint8_t rxchainmask;
 uint8_t ntxchains;
 uint8_t nrxchains;
 uint8_t sup_calib_mask;
 uint8_t cur_calib_mask;
 struct ieee80211_channel *curchan;
 struct ieee80211_channel *curchanext;
 int8_t tx_gain_tbl[22];
 int8_t pdadc;
 int8_t tcomp;
 int olpc_ticks;
 uint16_t gain1[3];
 uint32_t txgain[32];
 int16_t pa_in[3]
          [24];
 int16_t angle[3]
          [24];
 int32_t trainpow;
 uint8_t paprd_curchain;
 uint32_t rwbuf[64];
 int kc_entries;
 void *eep;
 const void *eep_def;
 uint32_t eep_base;
 uint32_t eep_size;
 struct athn_rxq rxq[2];
 struct athn_txq txq[31];
 void *descs;
 bus_dmamap_t map;
 bus_dma_segment_t seg;
 struct { struct athn_tx_buf *sqh_first; struct athn_tx_buf **sqh_last; } txbufs;
 struct athn_tx_buf *bcnbuf;
 struct athn_tx_buf txpool[64];
 bus_dmamap_t txsmap;
 bus_dma_segment_t txsseg;
 void *txsring;
 int txscur;
 int sc_if_flags;
 int sc_tx_timer;
 const struct athn_ini *ini;
 const struct athn_gain *rx_gain;
 const struct athn_gain *tx_gain;
 const struct athn_addac *addac;
 const struct athn_serdes *serdes;
 uint32_t workaround;
 uint32_t obs_off;
 uint32_t gpio_input_en_off;
 struct athn_ops ops;
 int fixed_ridx;
 int16_t cca_min_2g;
 int16_t cca_max_2g;
 int16_t cca_min_5g;
 int16_t cca_max_5g;
 int16_t def_nf;
 struct {
  int16_t nf[3];
  int16_t nf_ext[3];
 } nf_hist[5];
 int nf_hist_cur;
 int16_t nf_priv[3];
 int16_t nf_ext_priv[3];
 int pa_calib_ticks;
 struct athn_calib calib;
 struct athn_ani ani;
 caddr_t sc_drvbpf;
 union {
  struct athn_rx_radiotap_header th;
  uint8_t pad[64];
 } sc_rxtapu;
 int sc_rxtap_len;
 union {
  struct athn_tx_radiotap_header th;
  uint8_t pad[64];
 } sc_txtapu;
 int sc_txtap_len;
};
extern int athn_attach(struct athn_softc *);
extern void athn_detach(struct athn_softc *);
extern void athn_suspend(struct athn_softc *);
extern void athn_wakeup(struct athn_softc *);
extern int athn_intr(void *);
void athn_radiotap_attach(struct athn_softc *);
void athn_get_chanlist(struct athn_softc *);
const char * athn_get_mac_name(struct athn_softc *);
const char * athn_get_rf_name(struct athn_softc *);
void athn_led_init(struct athn_softc *);
void athn_set_led(struct athn_softc *, int);
void athn_btcoex_init(struct athn_softc *);
void athn_btcoex_enable(struct athn_softc *);
void athn_btcoex_disable(struct athn_softc *);
void athn_set_rxfilter(struct athn_softc *, uint32_t);
void athn_get_chipid(struct athn_softc *);
int athn_reset_power_on(struct athn_softc *);
int athn_reset(struct athn_softc *, int);
void athn_init_pll(struct athn_softc *,
      const struct ieee80211_channel *);
int athn_set_power_awake(struct athn_softc *);
void athn_set_power_sleep(struct athn_softc *);
void athn_write_serdes(struct athn_softc *,
      const struct athn_serdes *);
void athn_config_pcie(struct athn_softc *);
void athn_config_nonpcie(struct athn_softc *);
int athn_set_chan(struct athn_softc *, struct ieee80211_channel *,
      struct ieee80211_channel *);
int athn_switch_chan(struct athn_softc *,
      struct ieee80211_channel *, struct ieee80211_channel *);
void athn_get_delta_slope(uint32_t, uint32_t *, uint32_t *);
void athn_reset_key(struct athn_softc *, int);
int athn_set_key(struct ieee80211com *, struct ieee80211_node *,
      struct ieee80211_key *);
void athn_delete_key(struct ieee80211com *, struct ieee80211_node *,
      struct ieee80211_key *);
void athn_iter_calib(void *, struct ieee80211_node *);
void athn_calib_to(void *);
int athn_init_calib(struct athn_softc *,
      struct ieee80211_channel *, struct ieee80211_channel *);
uint8_t athn_chan2fbin(struct ieee80211_channel *);
int athn_interpolate(int, int, int, int, int);
void athn_get_pier_ival(uint8_t, const uint8_t *, int, int *,
      int *);
void athn_init_dma(struct athn_softc *);
void athn_rx_start(struct athn_softc *);
void athn_inc_tx_trigger_level(struct athn_softc *);
int athn_stop_rx_dma(struct athn_softc *);
int athn_rx_abort(struct athn_softc *);
void athn_tx_reclaim(struct athn_softc *, int);
int athn_tx_pending(struct athn_softc *, int);
void athn_stop_tx_dma(struct athn_softc *, int);
int athn_txtime(struct athn_softc *, int, int, u_int);
void athn_set_sta_timers(struct athn_softc *);
void athn_set_hostap_timers(struct athn_softc *);
void athn_set_opmode(struct athn_softc *);
void athn_set_bss(struct athn_softc *, struct ieee80211_node *);
void athn_enable_interrupts(struct athn_softc *);
void athn_disable_interrupts(struct athn_softc *);
void athn_init_qos(struct athn_softc *);
int athn_hw_reset(struct athn_softc *, struct ieee80211_channel *,
      struct ieee80211_channel *, int);
struct ieee80211_node *athn_node_alloc(struct ieee80211com *);
void athn_newassoc(struct ieee80211com *, struct ieee80211_node *,
      int);
void athn_node_leave(struct ieee80211com *, struct ieee80211_node *);
int athn_media_change(struct ifnet *);
void athn_next_scan(void *);
void athn_iter_mira_delete(void *, struct ieee80211_node *);
void athn_delete_mira_nodes(struct athn_softc *);
int athn_newstate(struct ieee80211com *, enum ieee80211_state,
      int);
void athn_updateedca(struct ieee80211com *);
int athn_clock_rate(struct athn_softc *);
void athn_updateslot(struct ieee80211com *);
void athn_start(struct ifnet *);
void athn_watchdog(struct ifnet *);
void athn_set_multi(struct athn_softc *);
int athn_ioctl(struct ifnet *, u_long, caddr_t);
int athn_init(struct ifnet *);
void athn_stop(struct ifnet *, int);
void athn_init_tx_queues(struct athn_softc *);
int32_t athn_ani_get_rssi(struct athn_softc *);
void athn_ani_ofdm_err_trigger(struct athn_softc *);
void athn_ani_cck_err_trigger(struct athn_softc *);
void athn_ani_lower_immunity(struct athn_softc *);
void athn_ani_restart(struct athn_softc *);
void athn_ani_monitor(struct athn_softc *);
int ar5416_attach(struct athn_softc *);
int ar9280_attach(struct athn_softc *);
int ar9285_attach(struct athn_softc *);
int ar9287_attach(struct athn_softc *);
int ar9380_attach(struct athn_softc *);
int ar5416_init_calib(struct athn_softc *,
      struct ieee80211_channel *, struct ieee80211_channel *);
int ar9285_init_calib(struct athn_softc *,
      struct ieee80211_channel *, struct ieee80211_channel *);
int ar9003_init_calib(struct athn_softc *);
void ar9285_pa_calib(struct athn_softc *);
void ar9271_pa_calib(struct athn_softc *);
void ar9287_1_3_enable_async_fifo(struct athn_softc *);
void ar9287_1_3_setup_async_fifo(struct athn_softc *);
void ar9003_reset_txsring(struct athn_softc *);
struct cfdriver athn_cd = {
 ((void *)0), "athn", DV_IFNET
};
int
athn_attach(struct athn_softc *sc)
{
 struct ieee80211com *ic = &sc->sc_ic;
 struct ifnet *ifp = &ic->ic_ac.ac_if;
 int error;
 athn_get_chipid(sc);
 if ((error = athn_reset_power_on(sc)) != 0) {
  printf("%s: could not reset chip\n", sc->sc_dev.dv_xname);
  return (error);
 }
 if ((error = athn_set_power_awake(sc)) != 0) {
  printf("%s: could not wakeup chip\n", sc->sc_dev.dv_xname);
  return (error);
 }
 if (((sc)->mac_ver == 0x00d || (sc)->mac_ver == 0x00c) || ((sc)->mac_ver == 0x040))
  error = ar5416_attach(sc);
 else if (((sc)->mac_ver == 0x080))
  error = ar9280_attach(sc);
 else if (((sc)->mac_ver == 0x0c0))
  error = ar9285_attach(sc);
 else if (((sc)->mac_ver == 0x140))
  error = ar9285_attach(sc);
 else if (((sc)->mac_ver == 0x180))
  error = ar9287_attach(sc);
 else if (((sc)->mac_ver == 0x1c0) || ((sc)->mac_ver == 0x240))
  error = ar9380_attach(sc);
 else
  error = 91;
 if (error != 0) {
  printf("%s: could not attach chip\n", sc->sc_dev.dv_xname);
  return (error);
 }
 athn_set_power_sleep(sc);
 if (!(sc->flags & (1 << 1))) {
  error = sc->ops.dma_alloc(sc);
  if (error != 0) {
   printf("%s: could not allocate DMA resources\n",
       sc->sc_dev.dv_xname);
   return (error);
  }
  sc->bcnbuf = ((&sc->txbufs)->sqh_first);
  do { if (((&sc->txbufs)->sqh_first = (&sc->txbufs)->sqh_first->bf_list.sqe_next) == ((void *)0)) (&sc->txbufs)->sqh_last = &(&sc->txbufs)->sqh_first; } while (0);
 }
 if (sc->flags & (1 << 5)) {
  ;
 }
 ;
 ic->ic_max_nnodes = (sc->kc_entries / 2) - 4;
 if (ic->ic_max_nnodes > 100)
  ic->ic_max_nnodes = 100;
 ;
 ;
 sc->ntxchains =
     ((sc->txchainmask >> 2) & 1) +
     ((sc->txchainmask >> 1) & 1) +
     ((sc->txchainmask >> 0) & 1);
 sc->nrxchains =
     ((sc->rxchainmask >> 2) & 1) +
     ((sc->rxchainmask >> 1) & 1) +
     ((sc->rxchainmask >> 0) & 1);
 if (((sc)->mac_ver >= 0x080)) {
  printf("%s: %s rev %d (%dT%dR), ROM rev %d, address %s\n",
      sc->sc_dev.dv_xname, athn_get_mac_name(sc), sc->mac_rev,
      sc->ntxchains, sc->nrxchains, sc->eep_rev,
      ether_sprintf(ic->ic_myaddr));
 } else {
  printf("%s: MAC %s rev %d, RF %s (%dT%dR), ROM rev %d, "
      "address %s\n",
      sc->sc_dev.dv_xname, athn_get_mac_name(sc), sc->mac_rev,
      athn_get_rf_name(sc), sc->ntxchains, sc->nrxchains,
      sc->eep_rev, ether_sprintf(ic->ic_myaddr));
 }
 timeout_set(&sc->scan_to, athn_next_scan, sc);
 timeout_set(&sc->calib_to, athn_calib_to, sc);
 sc->amrr.amrr_min_success_threshold = 1;
 sc->amrr.amrr_max_success_threshold = 15;
 ic->ic_phytype = IEEE80211_T_OFDM;
 ic->ic_opmode = IEEE80211_M_STA;
 ic->ic_state = IEEE80211_S_INIT;
 ic->ic_caps =
     0x00000001 |
     0x00001000 |
     0x00000008 |
     0x00000020 |
     0x00000200 |
     0x00000080 |
     0x00000100 |
     0x00000004;
 if (sc->flags & (1 << 11)) {
  int i, ntxstreams, nrxstreams;
  ic->ic_htcaps = (3 <<
      2);
  ic->ic_htxcaps = 0;
  ntxstreams = sc->ntxchains;
  nrxstreams = sc->nrxchains;
  if (!((sc)->mac_ver >= 0x1c0)) {
   ntxstreams = (((ntxstreams)<(2))?(ntxstreams):(2));
   nrxstreams = (((nrxstreams)<(2))?(nrxstreams):(2));
  }
  for (i = 0; i < nrxstreams; i++)
   ic->ic_sup_mcs[i] = 0xff;
  ic->ic_tx_mcs_set |= 0x01;
  if (ntxstreams != nrxstreams) {
   ic->ic_tx_mcs_set |= 0x02;
   ic->ic_tx_mcs_set |= (ntxstreams - 1) << 2;
  }
 }
 if (sc->flags & (1 << 10)) {
  ic->ic_sup_rates[IEEE80211_MODE_11B] =
      ieee80211_std_rateset_11b;
  ic->ic_sup_rates[IEEE80211_MODE_11G] =
      ieee80211_std_rateset_11g;
 }
 if (sc->flags & (1 << 9)) {
  ic->ic_sup_rates[IEEE80211_MODE_11A] =
      ieee80211_std_rateset_11a;
 }
 athn_get_chanlist(sc);
 ic->ic_ibss_chan = &ic->ic_channels[0];
 ifp->if_softc = sc;
 ifp->if_flags = 0x2 | 0x800 | 0x8000;
 ifp->if_ioctl = athn_ioctl;
 ifp->if_start = athn_start;
 ifp->if_watchdog = athn_watchdog;
 __builtin_memcpy((ifp->if_xname), (sc->sc_dev.dv_xname), (16));
 if_attach(ifp);
 ieee80211_ifattach(ifp);
 ic->ic_node_alloc = athn_node_alloc;
 ic->ic_node_leave = athn_node_leave;
 ic->ic_newassoc = athn_newassoc;
 ic->ic_updateslot = athn_updateslot;
 ic->ic_updateedca = athn_updateedca;
 sc->sc_newstate = ic->ic_newstate;
 ic->ic_newstate = athn_newstate;
 ieee80211_media_init(ifp, athn_media_change, ieee80211_media_status);
 athn_radiotap_attach(sc);
 return (0);
}
void
athn_detach(struct athn_softc *sc)
{
 struct ifnet *ifp = &sc->sc_ic.ic_ac.ac_if;
 struct ieee80211com *ic = &sc->sc_ic;
 int qid;
 timeout_del(&sc->scan_to);
 timeout_del(&sc->calib_to);
 if (ic->ic_flags & 0x02000000)
  athn_delete_mira_nodes(sc);
 if (!(sc->flags & (1 << 1))) {
  for (qid = 0; qid < 8; qid++)
   athn_tx_reclaim(sc, qid);
  sc->ops.dma_free(sc);
 }
 if (sc->eep != ((void *)0))
  free(sc->eep, 2, 0);
 ieee80211_ifdetach(ifp);
 if_detach(ifp);
}
void
athn_radiotap_attach(struct athn_softc *sc)
{
 bpfattach(&sc->sc_drvbpf, &sc->sc_ic.ic_ac.ac_if, 127,
     sizeof(struct ieee80211_frame) + 64);
 sc->sc_rxtap_len = sizeof(sc->sc_rxtapu);
 sc->sc_rxtapu.th.wr_ihdr.it_len = __extension__({ __uint16_t __swap16gen_x = (sc->sc_rxtap_len); (__uint16_t)((__swap16gen_x & 0xff) << 8 | (__swap16gen_x & 0xff00) >> 8); });
 sc->sc_rxtapu.th.wr_ihdr.it_present = __extension__({ __uint32_t __swap32gen_x = ((1 << IEEE80211_RADIOTAP_TSFT | 1 << IEEE80211_RADIOTAP_FLAGS | 1 << IEEE80211_RADIOTAP_RATE | 1 << IEEE80211_RADIOTAP_CHANNEL | 1 << IEEE80211_RADIOTAP_DBM_ANTSIGNAL | 1 << IEEE80211_RADIOTAP_ANTENNA)); (__uint32_t)((__swap32gen_x & 0xff) << 24 | (__swap32gen_x & 0xff00) << 8 | (__swap32gen_x & 0xff0000) >> 8 | (__swap32gen_x & 0xff000000) >> 24); });
 sc->sc_txtap_len = sizeof(sc->sc_txtapu);
 sc->sc_txtapu.th.wt_ihdr.it_len = __extension__({ __uint16_t __swap16gen_x = (sc->sc_txtap_len); (__uint16_t)((__swap16gen_x & 0xff) << 8 | (__swap16gen_x & 0xff00) >> 8); });
 sc->sc_txtapu.th.wt_ihdr.it_present = __extension__({ __uint32_t __swap32gen_x = ((1 << IEEE80211_RADIOTAP_FLAGS | 1 << IEEE80211_RADIOTAP_RATE | 1 << IEEE80211_RADIOTAP_CHANNEL | 1 << IEEE80211_RADIOTAP_HWQUEUE)); (__uint32_t)((__swap32gen_x & 0xff) << 24 | (__swap32gen_x & 0xff00) << 8 | (__swap32gen_x & 0xff0000) >> 8 | (__swap32gen_x & 0xff000000) >> 24); });
}
void
athn_get_chanlist(struct athn_softc *sc)
{
 struct ieee80211com *ic = &sc->sc_ic;
 uint8_t chan;
 int i;
 if (sc->flags & (1 << 10)) {
  for (i = 1; i <= 14; i++) {
   chan = i;
   ic->ic_channels[chan].ic_freq =
       ieee80211_ieee2mhz(chan, 0x0080);
   ic->ic_channels[chan].ic_flags =
       0x0020 | 0x0040 |
       0x0400 | 0x0080;
   if (sc->flags & (1 << 11))
    ic->ic_channels[chan].ic_flags |=
        0x2000;
  }
 }
 if (sc->flags & (1 << 9)) {
  for (i = 0; i < (sizeof((athn_5ghz_chans)) / sizeof((athn_5ghz_chans)[0])); i++) {
   chan = athn_5ghz_chans[i];
   ic->ic_channels[chan].ic_freq =
       ieee80211_ieee2mhz(chan, 0x0100);
   ic->ic_channels[chan].ic_flags = (0x0100 | 0x0040);
   if (sc->flags & (1 << 11))
    ic->ic_channels[chan].ic_flags |=
        0x2000;
  }
 }
}
void
athn_rx_start(struct athn_softc *sc)
{
 struct ieee80211com *ic = &sc->sc_ic;
 uint32_t rfilt;
 sc->ops.rx_enable(sc);
 rfilt = 0x00000001 | 0x00000004 | 0x00000002;
 rfilt |= 0x00000400;
 rfilt |= 0x00000010;
 if (ic->ic_opmode != IEEE80211_M_STA) {
  rfilt |= 0x00000080;
  if (ic->ic_opmode == IEEE80211_M_MONITOR)
   rfilt |= 0x00000020;
  if (((sc)->mac_ver >= 0x080) &&
      ic->ic_opmode == IEEE80211_M_HOSTAP)
   rfilt |= 0x00004000;
 }
 athn_set_rxfilter(sc, rfilt);
 (sc)->ops.write((sc), (0x80e0), (0xffffffff));
 (sc)->ops.write((sc), (0x80e4), (0xffff));
 athn_set_opmode(sc);
 (sc)->ops.write((sc), (0x8040), (0xffffffff));
 (sc)->ops.write((sc), (0x8044), (0xffffffff));
 (sc)->ops.write((sc), (0x8124), (0));
 (sc)->ops.write((sc), (0x8128), (0));
 (sc)->ops.write((sc), (0x0040), (0));
 (sc)->ops.write((sc), (0x8130), (0x00020000));
 (sc)->ops.write((sc), (0x8138), (0x02000000));
 (sc)->ops.write((sc), (0x812c), (0));
 (sc)->ops.write((sc), (0x8134), (0));
 (sc)->ops.write((sc), (0x8048), ((sc)->ops.read((sc), (0x8048)) | (0x00000008 | 0x00000010)));
 (sc)->ops.write((sc), (0x8048), ((sc)->ops.read((sc), (0x8048)) & ~(0x00000020 | 0x02000000)));
 (sc)->ops.write_barrier((sc));
}
void
athn_set_rxfilter(struct athn_softc *sc, uint32_t rfilt)
{
 (sc)->ops.write((sc), (0x803c), (rfilt));
 (sc)->ops.write((sc), (0x810c), (0));
 (sc)->ops.write((sc), (0x0034), ((sc)->ops.read((sc), (0x0034)) & ~(0x00000010)));
 (sc)->ops.write_barrier((sc));
}
int
athn_intr(void *xsc)
{
 struct athn_softc *sc = xsc;
 struct ifnet *ifp = &sc->sc_ic.ic_ac.ac_if;
 if ((ifp->if_flags & (0x1 | 0x40)) !=
     (0x1 | 0x40))
  return (0);
 return (sc->ops.intr(sc));
}
void
athn_get_chipid(struct athn_softc *sc)
{
 uint32_t reg64;
 reg64 = (sc)->ops.read((sc), (0x4020));
 if ((((uint32_t)(reg64) & 0x000000ff) >> 0) == 0xff) {
  sc->mac_ver = (((uint32_t)(reg64) & 0xfffc0000) >> 12);
  sc->mac_rev = (((uint32_t)(reg64) & 0x00000f00) >> 8);
  if (!(reg64 & 0x00002000))
   sc->flags |= (1 << 0);
 } else {
  sc->mac_ver = (((uint32_t)(reg64) & 0x000000f0) >> 4);
  sc->mac_rev = (((uint32_t)(reg64) & 0x00000007) >> 0);
  if (sc->mac_ver == 0x00c)
   sc->flags |= (1 << 0);
 }
}
const char *
athn_get_mac_name(struct athn_softc *sc)
{
 switch (sc->mac_ver) {
 case 0x00d:
  return ("AR5416");
 case 0x00c:
  return ("AR5418");
 case 0x040:
  return ("AR9160");
 case 0x080:
  return ("AR9280");
 case 0x0c0:
  return ("AR9285");
 case 0x140:
  return ("AR9271");
 case 0x180:
  return ("AR9287");
 case 0x1c0:
  return ("AR9380");
 case 0x240:
  return ("AR9485");
 }
 return ("unknown");
}
const char *
athn_get_rf_name(struct athn_softc *sc)
{
 ((!((sc)->mac_ver >= 0x080)) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../dev/ic/athn.c", 600, "!AR_SINGLE_CHIP(sc)"));
 switch (sc->rf_rev) {
 case 0xc0:
  return ("AR5133");
 case 0xd0:
  return ("AR2133");
 case 0xe0:
  return ("AR5122");
 case 0xf0:
  return ("AR2122");
 }
 return ("unknown");
}
int
athn_reset_power_on(struct athn_softc *sc)
{
 int ntries;
 (sc)->ops.write((sc), (0x704c), (0x00000001 | 0x00000002));
 if (!((sc)->mac_ver >= 0x1c0)) {
  (sc)->ops.write((sc), (0x4000), (0x00000001));
 }
 (sc)->ops.write((sc), (0x7040), (0));
 (sc)->ops.write_barrier((sc));
 delay(2);
 if (!((sc)->mac_ver >= 0x1c0))
  (sc)->ops.write((sc), (0x4000), (0));
 (sc)->ops.write((sc), (0x7040), (1));
 for (ntries = 0; ntries < 1000; ntries++) {
  if (((sc)->ops.read((sc), (0x7044)) & 0x0000000f) ==
      0x00000002)
   break;
  delay(10);
 }
 if (ntries == 1000) {
  ;
  return (60);
 }
 return (athn_reset(sc, 0));
}
int
athn_reset(struct athn_softc *sc, int cold)
{
 int ntries;
 (sc)->ops.write((sc), (0x704c), (0x00000001 | 0x00000002));
 if ((sc)->ops.read((sc), (0x4028)) &
     (0x00002000 | 0x00001000)) {
  (sc)->ops.write((sc), (0x402c), (0));
  (sc)->ops.write((sc), (0x4000), (0x00000100 | (!((sc)->mac_ver >= 0x1c0) ? 0x00000001 : 0)));
 } else if (!((sc)->mac_ver >= 0x1c0))
  (sc)->ops.write((sc), (0x4000), (0x00000001));
 (sc)->ops.write((sc), (0x7000), (0x00000001 | (cold ? 0x00000002 : 0)));
 (sc)->ops.write_barrier((sc));
 delay(50);
 (sc)->ops.write((sc), (0x7000), (0));
 for (ntries = 0; ntries < 1000; ntries++) {
  if (!((sc)->ops.read((sc), (0x7000)) &
        (0x00000001 | 0x00000002)))
   break;
  delay(10);
 }
 if (ntries == 1000) {
  ;
  return (60);
 }
 (sc)->ops.write((sc), (0x4000), (0));
 (sc)->ops.write_barrier((sc));
 return (0);
}
int
athn_set_power_awake(struct athn_softc *sc)
{
 int ntries, error;
 if (((sc)->ops.read((sc), (0x7044)) & 0x0000000f) ==
     0x00000001) {
  if ((error = athn_reset_power_on(sc)) != 0)
   return (error);
  if (!((sc)->mac_ver >= 0x1c0))
   athn_init_pll(sc, ((void *)0));
 }
 (sc)->ops.write((sc), (0x704c), ((sc)->ops.read((sc), (0x704c)) | (0x00000001)));
 (sc)->ops.write_barrier((sc));
 delay(50);
 for (ntries = 0; ntries < 4000; ntries++) {
  if (((sc)->ops.read((sc), (0x7044)) & 0x0000000f) ==
      0x00000002)
   break;
  delay(50);
  (sc)->ops.write((sc), (0x704c), ((sc)->ops.read((sc), (0x704c)) | (0x00000001)));
 }
 if (ntries == 4000) {
  ;
  return (60);
 }
 (sc)->ops.write((sc), (0x8004), ((sc)->ops.read((sc), (0x8004)) & ~(0x00040000)));
 (sc)->ops.write_barrier((sc));
 return (0);
}
void
athn_set_power_sleep(struct athn_softc *sc)
{
 (sc)->ops.write((sc), (0x8004), ((sc)->ops.read((sc), (0x8004)) | (0x00040000)));
 (sc)->ops.write((sc), (0x704c), ((sc)->ops.read((sc), (0x704c)) & ~(0x00000001)));
 if (!((sc)->mac_ver >= 0x1c0))
  (sc)->ops.write((sc), (0x4000), (0x00000001 | 0x00000100));
 if (!((sc)->mac_ver == 0x00d || (sc)->mac_ver == 0x00c) && !((sc)->mac_ver == 0x140))
  (sc)->ops.write((sc), (0x7040), ((sc)->ops.read((sc), (0x7040)) & ~(0x00000001)));
 (sc)->ops.write_barrier((sc));
}
void
athn_init_pll(struct athn_softc *sc, const struct ieee80211_channel *c)
{
 uint32_t pll;
 if (((sc)->mac_ver >= 0x1c0)) {
  if (((sc)->mac_ver == 0x240))
   (sc)->ops.write((sc), (0x703c), (0x886666));
  pll = (((uint32_t)(0x5) << 10) & 0x00003c00);
  pll |= (((uint32_t)(0x2c) << 0) & 0x000003ff);
 } else if (((sc)->mac_ver >= 0x080)) {
  pll = (((uint32_t)(0x05) << 10) & 0x00003c00);
  if (c != ((void *)0) && (((c)->ic_flags & 0x0100) != 0)) {
   if (sc->flags & (1 << 4))
    pll = 0x142c;
   else if ((((sc)->mac_ver == 0x080) && (sc)->mac_rev >= 1))
     pll = 0x2850;
   else
    pll |= (((uint32_t)(0x28) << 0) & 0x000003ff);
  } else
   pll |= (((uint32_t)(0x2c) << 0) & 0x000003ff);
 } else if (((sc)->mac_ver >= 0x040)) {
  pll = (((uint32_t)(0x05) << 10) & 0x00003c00);
  if (c != ((void *)0) && (((c)->ic_flags & 0x0100) != 0))
   pll |= (((uint32_t)(0x50) << 0) & 0x000003ff);
  else
   pll |= (((uint32_t)(0x58) << 0) & 0x000003ff);
 } else {
  pll = 0x000000c0 | 0x00000020;
  if (c != ((void *)0) && (((c)->ic_flags & 0x0100) != 0))
   pll |= (((uint32_t)(0x0a) << 0) & 0x0000001f);
  else
   pll |= (((uint32_t)(0x0b) << 0) & 0x0000001f);
 }
 ;
 (sc)->ops.write((sc), (0x7014), (pll));
 if (((sc)->mac_ver == 0x140)) {
  (sc)->ops.write_barrier((sc));
  delay(500);
  (sc)->ops.write((sc), (0x50050), (0x304));
 }
 (sc)->ops.write_barrier((sc));
 delay(100);
 (sc)->ops.write((sc), (0x7048), (0x00000002));
 (sc)->ops.write_barrier((sc));
}
void
athn_write_serdes(struct athn_softc *sc, const struct athn_serdes *serdes)
{
 int i;
 for (i = 0; i < serdes->nvals; i++)
  (sc)->ops.write((sc), (serdes->regs[i]), (serdes->vals[i]));
 (sc)->ops.write_barrier((sc));
}
void
athn_config_pcie(struct athn_softc *sc)
{
 athn_write_serdes(sc, sc->serdes);
 delay(1000);
 (sc)->ops.write((sc), (0x4014), ((sc)->ops.read((sc), (0x4014)) | (0x00080000)));
 (sc)->ops.write((sc), (0x4004), (sc->workaround));
 (sc)->ops.write_barrier((sc));
}
static const uint32_t ar_nonpcie_serdes_regs[] = {
 0x4040,
 0x4040,
 0x4040,
 0x4040,
 0x4040,
 0x4040,
 0x4040,
 0x4040,
 0x4040,
 0x4044,
};
static const uint32_t ar_nonpcie_serdes_vals[] = {
 0x9248fc00,
 0x24924924,
 0x28000029,
 0x57160824,
 0x25980579,
 0x00000000,
 0x1aaabe40,
 0xbe105554,
 0x000e1007,
 0x00000000
};
static const struct athn_serdes ar_nonpcie_serdes = {
 (sizeof((ar_nonpcie_serdes_vals)) / sizeof((ar_nonpcie_serdes_vals)[0])),
 ar_nonpcie_serdes_regs,
 ar_nonpcie_serdes_vals
};
void
athn_config_nonpcie(struct athn_softc *sc)
{
 athn_write_serdes(sc, &ar_nonpcie_serdes);
}
int
athn_set_chan(struct athn_softc *sc, struct ieee80211_channel *c,
    struct ieee80211_channel *extc)
{
 struct athn_ops *ops = &sc->ops;
 int error, qid;
 for (qid = 0; qid < 8; qid++)
  if (athn_tx_pending(sc, qid))
   return (16);
 if ((error = ops->rf_bus_request(sc)) != 0)
  return (error);
 ops->set_phy(sc, c, extc);
 if ((error = ops->set_synth(sc, c, extc)) != 0)
  return (error);
 sc->curchan = c;
 sc->curchanext = extc;
 ops->set_txpower(sc, c, extc);
 ops->rf_bus_release(sc);
 if (sc->sc_ic.ic_curmode != IEEE80211_MODE_11B)
  ops->set_delta_slope(sc, c, extc);
 ops->spur_mitigate(sc, c, extc);
 return (0);
}
int
athn_switch_chan(struct athn_softc *sc, struct ieee80211_channel *c,
    struct ieee80211_channel *extc)
{
 int error, qid;
 athn_disable_interrupts(sc);
 for (qid = 0; qid < 8; qid++)
  athn_stop_tx_dma(sc, qid);
 for (qid = 0; qid < 8; qid++)
  athn_tx_reclaim(sc, qid);
 (sc)->ops.write((sc), (0x8048), ((sc)->ops.read((sc), (0x8048)) | (0x00000020 | 0x02000000)));
 (sc)->ops.write((sc), (0x0040), (0x00000002));
 (sc)->ops.write((sc), (0x0040), (0x00000004));
 (sc)->ops.write((sc), (0x8124), (0));
 (sc)->ops.write((sc), (0x8128), (0));
 athn_set_rxfilter(sc, 0);
 error = athn_stop_rx_dma(sc);
 if (error != 0)
  goto reset;
  goto reset;
 if (c->ic_flags != sc->curchan->ic_flags ||
     ((extc != ((void *)0)) ^ (sc->curchanext != ((void *)0)))) {
  ;
  goto reset;
 }
 error = athn_set_power_awake(sc);
 if (error != 0)
  goto reset;
 error = athn_set_chan(sc, c, extc);
 if (error != 0) {
 reset:
  ;
  error = athn_hw_reset(sc, c, extc, 0);
  if (error != 0)
   return (error);
 }
 athn_rx_start(sc);
 athn_enable_interrupts(sc);
 return (0);
}
void
athn_get_delta_slope(uint32_t coeff, uint32_t *exponent, uint32_t *mantissa)
{
 uint32_t exp, man;
 for (exp = 31; exp > 0; exp--)
  if (coeff & (1 << exp))
   break;
 exp = 14 - (exp - 24);
 man = coeff + (1 << (24 - exp - 1));
 *mantissa = man >> (24 - exp);
 *exponent = exp - 16;
}
void
athn_reset_key(struct athn_softc *sc, int entry)
{
 (sc)->ops.write((sc), (((0x8800 + (entry) * 32) + 0)), (0));
 (sc)->ops.write((sc), (((0x8800 + (entry) * 32) + 4)), (0));
 (sc)->ops.write((sc), (((0x8800 + (entry) * 32) + 8)), (0));
 (sc)->ops.write((sc), (((0x8800 + (entry) * 32) + 12)), (0));
 (sc)->ops.write((sc), (((0x8800 + (entry) * 32) + 16)), (0));
 (sc)->ops.write((sc), (((0x8800 + (entry) * 32) + 20)), (7));
 (sc)->ops.write((sc), (((0x8800 + (entry) * 32) + 24)), (0));
 (sc)->ops.write((sc), (((0x8800 + (entry) * 32) + 28)), (0));
 (sc)->ops.write_barrier((sc));
}
int
athn_set_key(struct ieee80211com *ic, struct ieee80211_node *ni,
    struct ieee80211_key *k)
{
 struct athn_softc *sc = ic->ic_ac.ac_if.if_softc;
 const uint8_t *txmic, *rxmic, *key, *addr;
 uintptr_t entry, micentry;
 uint32_t type, lo, hi;
 switch (k->k_cipher) {
 case IEEE80211_CIPHER_WEP40:
  type = 0;
  break;
 case IEEE80211_CIPHER_WEP104:
  type = 1;
  break;
 case IEEE80211_CIPHER_TKIP:
  type = 4;
  break;
 case IEEE80211_CIPHER_CCMP:
  type = 6;
  break;
 default:
  return (ieee80211_set_key(ic, ni, k));
 }
 if (!(k->k_flags & 0x00000001))
  entry = 4 + ((ni->ni_associd) &~ 0xc000);
 else
  entry = k->k_id;
 k->k_priv = (void *)entry;
 key = k->k_key;
 if (type == 4) {
  if (ic->ic_opmode == IEEE80211_M_HOSTAP) {
   txmic = &key[16];
   rxmic = &key[24];
  } else
  {
   rxmic = &key[16];
   txmic = &key[24];
  }
  micentry = entry + 64;
  (sc)->ops.write((sc), (((0x8800 + (micentry) * 32) + 0)), (((&rxmic[0])[0] | (&rxmic[0])[1] << 8 | (&rxmic[0])[2] << 16 | (&rxmic[0])[3] << 24)));
  (sc)->ops.write((sc), (((0x8800 + (micentry) * 32) + 4)), (((&txmic[2])[0] | (&txmic[2])[1] << 8)));
  (sc)->ops.write((sc), (((0x8800 + (micentry) * 32) + 8)), (((&rxmic[4])[0] | (&rxmic[4])[1] << 8 | (&rxmic[4])[2] << 16 | (&rxmic[4])[3] << 24)));
  (sc)->ops.write((sc), (((0x8800 + (micentry) * 32) + 12)), (((&txmic[0])[0] | (&txmic[0])[1] << 8)));
  (sc)->ops.write((sc), (((0x8800 + (micentry) * 32) + 16)), (((&txmic[4])[0] | (&txmic[4])[1] << 8 | (&txmic[4])[2] << 16 | (&txmic[4])[3] << 24)));
  (sc)->ops.write((sc), (((0x8800 + (micentry) * 32) + 20)), (7));
 }
 (sc)->ops.write((sc), (((0x8800 + (entry) * 32) + 0)), (((&key[ 0])[0] | (&key[ 0])[1] << 8 | (&key[ 0])[2] << 16 | (&key[ 0])[3] << 24)));
 (sc)->ops.write((sc), (((0x8800 + (entry) * 32) + 4)), (((&key[ 4])[0] | (&key[ 4])[1] << 8)));
 (sc)->ops.write((sc), (((0x8800 + (entry) * 32) + 8)), (((&key[ 6])[0] | (&key[ 6])[1] << 8 | (&key[ 6])[2] << 16 | (&key[ 6])[3] << 24)));
 (sc)->ops.write((sc), (((0x8800 + (entry) * 32) + 12)), (((&key[10])[0] | (&key[10])[1] << 8)));
 (sc)->ops.write((sc), (((0x8800 + (entry) * 32) + 16)), (((&key[12])[0] | (&key[12])[1] << 8 | (&key[12])[2] << 16 | (&key[12])[3] << 24)));
 (sc)->ops.write((sc), (((0x8800 + (entry) * 32) + 20)), (type));
 if (!(k->k_flags & 0x00000001)) {
  addr = ni->ni_macaddr;
  lo = ((&addr[0])[0] | (&addr[0])[1] << 8 | (&addr[0])[2] << 16 | (&addr[0])[3] << 24);
  hi = ((&addr[4])[0] | (&addr[4])[1] << 8);
  lo = lo >> 1 | hi << 31;
  hi = hi >> 1;
 } else
  lo = hi = 0;
 (sc)->ops.write((sc), (((0x8800 + (entry) * 32) + 24)), (lo));
 (sc)->ops.write((sc), (((0x8800 + (entry) * 32) + 28)), (hi | 0x00008000));
 (sc)->ops.write_barrier((sc));
 return (0);
}
void
athn_delete_key(struct ieee80211com *ic, struct ieee80211_node *ni,
    struct ieee80211_key *k)
{
 struct athn_softc *sc = ic->ic_ac.ac_if.if_softc;
 uintptr_t entry;
 switch (k->k_cipher) {
 case IEEE80211_CIPHER_WEP40:
 case IEEE80211_CIPHER_WEP104:
 case IEEE80211_CIPHER_CCMP:
  entry = (uintptr_t)k->k_priv;
  athn_reset_key(sc, entry);
  break;
 case IEEE80211_CIPHER_TKIP:
  entry = (uintptr_t)k->k_priv;
  athn_reset_key(sc, entry);
  athn_reset_key(sc, entry + 64);
  break;
 default:
  ieee80211_delete_key(ic, ni, k);
 }
}
void
athn_led_init(struct athn_softc *sc)
{
 struct athn_ops *ops = &sc->ops;
 ops->gpio_config_output(sc, sc->led_pin, 0);
 athn_set_led(sc, 0);
}
void
athn_set_led(struct athn_softc *sc, int on)
{
 struct athn_ops *ops = &sc->ops;
 sc->led_state = on;
 ops->gpio_write(sc, sc->led_pin, !sc->led_state);
}
void
athn_iter_calib(void *arg, struct ieee80211_node *ni)
{
 struct athn_softc *sc = arg;
 struct athn_node *an = (struct athn_node *)ni;
 if ((ni->ni_flags & 0x0400) == 0)
  ieee80211_amrr_choose(&sc->amrr, ni, &an->amn);
}
void
athn_calib_to(void *arg)
{
 extern int ticks;
 struct athn_softc *sc = arg;
 struct athn_ops *ops = &sc->ops;
 struct ieee80211com *ic = &sc->sc_ic;
 int s;
 s = _splraise(6);
 if (((sc)->mac_ver > 0x0c0 || (((sc)->mac_ver == 0x0c0) && (sc)->mac_rev >= 1)) &&
     !((sc)->mac_ver >= 0x1c0) &&
     (ticks - (sc->pa_calib_ticks + 240 * hz)) >= 0) {
  sc->pa_calib_ticks = ticks;
  if (((sc)->mac_ver == 0x140))
   ar9271_pa_calib(sc);
  else
   ar9285_pa_calib(sc);
 }
 if ((sc->flags & (1 << 2)) &&
     ticks >= sc->olpc_ticks + 30 * hz) {
  sc->olpc_ticks = ticks;
  ops->olpc_temp_compensation(sc);
 }
 if (ic->ic_fixed_rate == -1) {
  if (ic->ic_opmode == IEEE80211_M_STA)
   athn_iter_calib(sc, ic->ic_bss);
  else
   ieee80211_iterate_nodes(ic, athn_iter_calib, sc);
 }
 timeout_add_msec(&sc->calib_to, 500);
 _splx(s);
}
int
athn_init_calib(struct athn_softc *sc, struct ieee80211_channel *c,
    struct ieee80211_channel *extc)
{
 struct athn_ops *ops = &sc->ops;
 int error;
 if (((sc)->mac_ver >= 0x1c0))
  error = ar9003_init_calib(sc);
 else if (((sc)->mac_ver >= 0x0c0))
  error = ar9285_init_calib(sc, c, extc);
 else
  error = ar5416_init_calib(sc, c, extc);
 if (error != 0)
  return (error);
 if (!((sc)->mac_ver >= 0x1c0)) {
  if (((sc)->mac_ver > 0x0c0 || (((sc)->mac_ver == 0x0c0) && (sc)->mac_rev >= 1))) {
   extern int ticks;
   sc->pa_calib_ticks = ticks;
   if (((sc)->mac_ver == 0x140))
    ar9271_pa_calib(sc);
   else
    ar9285_pa_calib(sc);
  }
  ops->noisefloor_calib(sc);
 }
 if (((sc)->mac_ver >= 0x040)) {
  sc->sup_calib_mask = (1 << 0);
  if (((sc)->mac_ver >= 0x1c0)) {
   sc->sup_calib_mask |= (1 << 3);
  } else if ((((c)->ic_flags & 0x0100) != 0) || extc != ((void *)0)) {
   if (!((sc)->mac_ver == 0x180)) {
    sc->sup_calib_mask |= (1 << 1);
   }
   sc->sup_calib_mask |= (1 << 2);
  }
 }
 return (0);
}
int32_t
athn_ani_get_rssi(struct athn_softc *sc)
{
 return (0);
}
void
athn_ani_ofdm_err_trigger(struct athn_softc *sc)
{
 struct athn_ani *ani = &sc->ani;
 struct athn_ops *ops = &sc->ops;
 int32_t rssi;
 if (ani->noise_immunity_level < 4) {
  ani->noise_immunity_level++;
  ops->set_noise_immunity_level(sc, ani->noise_immunity_level);
  return;
 }
 if (ani->spur_immunity_level < 7) {
  ani->spur_immunity_level++;
  ops->set_spur_immunity_level(sc, ani->spur_immunity_level);
  return;
 }
 if (sc->sc_ic.ic_opmode == IEEE80211_M_HOSTAP) {
  if (ani->firstep_level < 2) {
   ani->firstep_level++;
   ops->set_firstep_level(sc, ani->firstep_level);
  }
  return;
 }
 rssi = athn_ani_get_rssi(sc);
 if (rssi > 40) {
  if (ani->ofdm_weak_signal) {
   ani->ofdm_weak_signal = 0;
   ops->disable_ofdm_weak_signal(sc);
   ani->spur_immunity_level = 0;
   ops->set_spur_immunity_level(sc, 0);
  } else if (ani->firstep_level < 2) {
   ani->firstep_level++;
   ops->set_firstep_level(sc, ani->firstep_level);
  }
 } else if (rssi > 7) {
  if (!ani->ofdm_weak_signal) {
   ani->ofdm_weak_signal = 1;
   ops->enable_ofdm_weak_signal(sc);
  }
  if (ani->firstep_level < 2) {
   ani->firstep_level++;
   ops->set_firstep_level(sc, ani->firstep_level);
  }
 } else if ((((sc->sc_ic.ic_bss->ni_chan)->ic_flags & 0x0080) != 0)) {
  if (ani->ofdm_weak_signal) {
   ani->ofdm_weak_signal = 0;
   ops->disable_ofdm_weak_signal(sc);
  }
  if (ani->firstep_level > 0) {
   ani->firstep_level = 0;
   ops->set_firstep_level(sc, 0);
  }
 }
}
void
athn_ani_cck_err_trigger(struct athn_softc *sc)
{
 struct athn_ani *ani = &sc->ani;
 struct athn_ops *ops = &sc->ops;
 int32_t rssi;
 if (ani->noise_immunity_level < 4) {
  ani->noise_immunity_level++;
  ops->set_noise_immunity_level(sc, ani->noise_immunity_level);
  return;
 }
 if (sc->sc_ic.ic_opmode == IEEE80211_M_HOSTAP) {
  if (ani->firstep_level < 2) {
   ani->firstep_level++;
   ops->set_firstep_level(sc, ani->firstep_level);
  }
  return;
 }
 rssi = athn_ani_get_rssi(sc);
 if (rssi > 7) {
  if (ani->firstep_level < 2) {
   ani->firstep_level++;
   ops->set_firstep_level(sc, ani->firstep_level);
  }
 } else if ((((sc->sc_ic.ic_bss->ni_chan)->ic_flags & 0x0080) != 0)) {
  if (ani->firstep_level > 0) {
   ani->firstep_level = 0;
   ops->set_firstep_level(sc, 0);
  }
 }
}
void
athn_ani_lower_immunity(struct athn_softc *sc)
{
 struct athn_ani *ani = &sc->ani;
 struct athn_ops *ops = &sc->ops;
 int32_t rssi;
 if (sc->sc_ic.ic_opmode == IEEE80211_M_HOSTAP) {
  if (ani->firstep_level > 0) {
   ani->firstep_level--;
   ops->set_firstep_level(sc, ani->firstep_level);
  }
  return;
 }
 rssi = athn_ani_get_rssi(sc);
 if (rssi > 40) {
 } else if (rssi > 7) {
  if (!ani->ofdm_weak_signal) {
   ani->ofdm_weak_signal = 1;
   ops->enable_ofdm_weak_signal(sc);
   return;
  }
  if (ani->firstep_level > 0) {
   ani->firstep_level--;
   ops->set_firstep_level(sc, ani->firstep_level);
   return;
  }
 } else {
  if (ani->firstep_level > 0) {
   ani->firstep_level--;
   ops->set_firstep_level(sc, ani->firstep_level);
   return;
  }
 }
 if (ani->spur_immunity_level > 0) {
  ani->spur_immunity_level--;
  ops->set_spur_immunity_level(sc, ani->spur_immunity_level);
 } else if (ani->noise_immunity_level > 0) {
  ani->noise_immunity_level--;
  ops->set_noise_immunity_level(sc, ani->noise_immunity_level);
 }
}
void
athn_ani_restart(struct athn_softc *sc)
{
 struct athn_ani *ani = &sc->ani;
 (sc)->ops.write((sc), (0x812c), (0));
 (sc)->ops.write((sc), (0x8134), (0));
 (sc)->ops.write((sc), (0x8130), (0x00020000));
 (sc)->ops.write((sc), (0x8138), (0x02000000));
 (sc)->ops.write_barrier((sc));
 ani->listen_time = 0;
 ani->ofdm_phy_err_count = 0;
 ani->cck_phy_err_count = 0;
}
void
athn_ani_monitor(struct athn_softc *sc)
{
 struct athn_ani *ani = &sc->ani;
 uint32_t cyccnt, txfcnt, rxfcnt, phy1, phy2;
 int32_t cycdelta, txfdelta, rxfdelta;
 int32_t listen_time;
 txfcnt = (sc)->ops.read((sc), (0x80ec));
 rxfcnt = (sc)->ops.read((sc), (0x80f0));
 cyccnt = (sc)->ops.read((sc), (0x80f8));
 if (ani->cyccnt != 0 && ani->cyccnt <= cyccnt) {
  cycdelta = cyccnt - ani->cyccnt;
  txfdelta = txfcnt - ani->txfcnt;
  rxfdelta = rxfcnt - ani->rxfcnt;
  listen_time = (cycdelta - txfdelta - rxfdelta) /
      (athn_clock_rate(sc) * 1000);
 } else
  listen_time = 0;
 ani->cyccnt = cyccnt;
 ani->txfcnt = txfcnt;
 ani->rxfcnt = rxfcnt;
 if (listen_time < 0) {
  athn_ani_restart(sc);
  return;
 }
 ani->listen_time += listen_time;
 phy1 = (sc)->ops.read((sc), (0x812c));
 phy2 = (sc)->ops.read((sc), (0x8134));
 if (phy1 < ani->ofdm_phy_err_base) {
  (sc)->ops.write((sc), (0x812c), (ani->ofdm_phy_err_base));
  (sc)->ops.write((sc), (0x8130), (0x00020000));
 }
 if (phy2 < ani->cck_phy_err_base) {
  (sc)->ops.write((sc), (0x8134), (ani->cck_phy_err_base));
  (sc)->ops.write((sc), (0x8138), (0x02000000));
 }
 if (phy1 < ani->ofdm_phy_err_base || phy2 < ani->cck_phy_err_base) {
  (sc)->ops.write_barrier((sc));
  return;
 }
 ani->ofdm_phy_err_count = phy1 - ani->ofdm_phy_err_base;
 ani->cck_phy_err_count = phy2 - ani->cck_phy_err_base;
 if (ani->listen_time > 5 * 100) {
  if (ani->ofdm_phy_err_count <=
      ani->listen_time * ani->ofdm_trig_low / 1000 &&
      ani->cck_phy_err_count <=
      ani->listen_time * ani->cck_trig_low / 1000)
   athn_ani_lower_immunity(sc);
  athn_ani_restart(sc);
 } else if (ani->listen_time > 100) {
  if (ani->ofdm_phy_err_count >
      ani->listen_time * ani->ofdm_trig_high / 1000) {
   athn_ani_ofdm_err_trigger(sc);
   athn_ani_restart(sc);
  } else if (ani->cck_phy_err_count >
      ani->listen_time * ani->cck_trig_high / 1000) {
   athn_ani_cck_err_trigger(sc);
   athn_ani_restart(sc);
  }
 }
}
uint8_t
athn_chan2fbin(struct ieee80211_channel *c)
{
 if ((((c)->ic_flags & 0x0080) != 0))
  return (c->ic_freq - 2300);
 else
  return ((c->ic_freq - 4800) / 5);
}
int
athn_interpolate(int x, int x1, int y1, int x2, int y2)
{
 if (x1 == x2)
  return (y1);
 return (y1 + ((x - x1) * (y2 - y1)) / (x2 - x1));
}
void
athn_get_pier_ival(uint8_t fbin, const uint8_t *pierfreq, int npiers,
    int *lo, int *hi)
{
 int i;
 for (i = 0; i < npiers; i++)
  if (pierfreq[i] == 0xff ||
      pierfreq[i] > fbin)
   break;
 *hi = i;
 *lo = *hi - 1;
 if (*lo == -1)
  *lo = *hi;
 else if (*hi == npiers || pierfreq[*hi] == 0xff)
  *hi = *lo;
}
void
athn_init_dma(struct athn_softc *sc)
{
 uint32_t reg64;
 if (!((sc)->mac_ver >= 0x1c0)) {
  (sc)->ops.write((sc), (0x4024), ((sc)->ops.read((sc), (0x4024)) | (0x00000004)));
 }
 reg64 = (sc)->ops.read((sc), (0x0030));
 reg64 = (((reg64) & ~0x00000007) | (((uint32_t)(5) << 0) & 0x00000007));
 if (((sc)->mac_ver == 0x0c0) || ((sc)->mac_ver == 0x140))
  reg64 = (((reg64) & ~0x000003f0) | (((uint32_t)((256 / 64)) << 4) & 0x000003f0));
 else if (!((sc)->mac_ver >= 0x1c0))
  reg64 = (((reg64) & ~0x000003f0) | (((uint32_t)((512 / 64)) << 4) & 0x000003f0));
 (sc)->ops.write((sc), (0x0030), (reg64));
 reg64 = (sc)->ops.read((sc), (0x0034));
 reg64 = (((reg64) & ~0x00000007) | (((uint32_t)(5) << 0) & 0x00000007));
 (sc)->ops.write((sc), (0x0034), (reg64));
 (sc)->ops.write((sc), (0x8114), (512));
 if (((sc)->mac_ver == 0x0c0)) {
  (sc)->ops.write((sc), (0x8340), ((1792 / 2)));
 } else if (!((sc)->mac_ver == 0x140)) {
  (sc)->ops.write((sc), (0x8340), (1792));
 }
 (sc)->ops.write_barrier((sc));
 if (((sc)->mac_ver >= 0x1c0))
  ar9003_reset_txsring(sc);
}
void
athn_inc_tx_trigger_level(struct athn_softc *sc)
{
 uint32_t reg64, ftrig;
 reg64 = (sc)->ops.read((sc), (0x0030));
 ftrig = (((uint32_t)(reg64) & 0x000003f0) >> 4);
 if (ftrig == ((((sc)->mac_ver == 0x0c0) || ((sc)->mac_ver == 0x140)) ? 0x1f : 0x3f))
  return;
 reg64 = (((reg64) & ~0x000003f0) | (((uint32_t)(ftrig + 1) << 4) & 0x000003f0));
 (sc)->ops.write((sc), (0x0030), (reg64));
 (sc)->ops.write_barrier((sc));
}
int
athn_stop_rx_dma(struct athn_softc *sc)
{
 int ntries;
 (sc)->ops.write((sc), (0x0008), (0x00000020));
 for (ntries = 0; ntries < 100; ntries++) {
  if (!((sc)->ops.read((sc), (0x0008)) & (((sc)->mac_ver > 0x1c0 || (((sc)->mac_ver == 0x1c0) && (sc)->mac_rev >= 2)) ? 0x000c : 0x0004)))
   return (0);
  delay(100);
 }
 ;
 return (60);
}
int
athn_rx_abort(struct athn_softc *sc)
{
 int ntries;
 (sc)->ops.write((sc), (0x8048), ((sc)->ops.read((sc), (0x8048)) | (0x00000020 | 0x02000000)));
 for (ntries = 0; ntries < 1000; ntries++) {
  if ((((uint32_t)((sc)->ops.read((sc), (0x806c))) & 0x01f00000) >> 20) == 0)
   return (0);
  delay(10);
 }
 ;
 (sc)->ops.write((sc), (0x8048), ((sc)->ops.read((sc), (0x8048)) & ~(0x00000020 | 0x02000000)));
 (sc)->ops.write_barrier((sc));
 return (60);
}
void
athn_tx_reclaim(struct athn_softc *sc, int qid)
{
 struct athn_txq *txq = &sc->txq[qid];
 struct athn_tx_buf *bf;
 while ((bf = ((&txq->head)->sqh_first)) != ((void *)0)) {
  do { if (((&txq->head)->sqh_first = (&txq->head)->sqh_first->bf_list.sqe_next) == ((void *)0)) (&txq->head)->sqh_last = &(&txq->head)->sqh_first; } while (0);
  bus_dmamap_sync(sc->sc_dmat, bf->bf_map, 0,
      bf->bf_map->dm_mapsize, 0x08);
  bus_dmamap_unload(sc->sc_dmat, bf->bf_map);
  m_freem(bf->bf_m);
  bf->bf_m = ((void *)0);
  bf->bf_ni = ((void *)0);
  do { (bf)->bf_list.sqe_next = ((void *)0); *(&sc->txbufs)->sqh_last = (bf); (&sc->txbufs)->sqh_last = &(bf)->bf_list.sqe_next; } while (0);
 }
}
int
athn_tx_pending(struct athn_softc *sc, int qid)
{
 return ((((uint32_t)((sc)->ops.read((sc), ((0x0a00 + (qid) * 4)))) & 0x00000003) >> 0) != 0 ||
     ((sc)->ops.read((sc), (0x0840)) & (1 << qid)) != 0);
}
void
athn_stop_tx_dma(struct athn_softc *sc, int qid)
{
 uint32_t tsflo;
 int ntries, i;
 (sc)->ops.write((sc), (0x0880), (1 << qid));
 for (ntries = 0; ntries < 40; ntries++) {
  if (!athn_tx_pending(sc, qid))
   break;
  delay(100);
 }
 if (ntries == 40) {
  for (i = 0; i < 2; i++) {
   tsflo = (sc)->ops.read((sc), (0x804c)) / 1024;
   (sc)->ops.write((sc), (0x8100), ((((uint32_t)(10) << 16) & 0xffff0000)));
   (sc)->ops.write((sc), ((0x8200 + (14) * 4)), (100));
   (sc)->ops.write((sc), ((0x8200 + (6) * 4)), (tsflo));
   (sc)->ops.write((sc), (0x8240), ((sc)->ops.read((sc), (0x8240)) | (0x00000040)));
   if ((sc)->ops.read((sc), (0x804c)) / 1024 == tsflo)
    break;
  }
  (sc)->ops.write((sc), (0x8048), ((sc)->ops.read((sc), (0x8048)) | (0x00400000)));
  (sc)->ops.write_barrier((sc));
  delay(200);
  (sc)->ops.write((sc), (0x8240), ((sc)->ops.read((sc), (0x8240)) & ~(0x00000040)));
  (sc)->ops.write_barrier((sc));
  for (ntries = 0; ntries < 40; ntries++) {
   if (!athn_tx_pending(sc, qid))
    break;
   delay(100);
  }
  (sc)->ops.write((sc), (0x8048), ((sc)->ops.read((sc), (0x8048)) & ~(0x00400000)));
 }
 (sc)->ops.write((sc), (0x0880), (0));
 (sc)->ops.write_barrier((sc));
}
int
athn_txtime(struct athn_softc *sc, int len, int ridx, u_int flags)
{
 struct ieee80211com *ic = &sc->sc_ic;
 int txtime;
 if (athn_rates[ridx].hwrate & 0x80) {
  txtime = 8 + 8 + 4 + 4 + 4 * 4 + 8
      + 4 * ((8 * len + 16 + 6) / (athn_rates[ridx].rate * 2));
  if ((((ic->ic_bss->ni_chan)->ic_flags & 0x0080) != 0))
   txtime += 6;
 } else if (athn_rates[ridx].phy == IEEE80211_T_OFDM) {
  txtime = (((8 + 4 * len + 3) + (athn_rates[ridx].rate) - 1) / (athn_rates[ridx].rate));
  txtime = 16 + 4 + 4 * txtime + 16;
 } else {
  txtime = (((16 * len) + (athn_rates[ridx].rate) - 1) / (athn_rates[ridx].rate));
  if (ridx != 0 && (flags & 0x00040000))
   txtime += 72 + 24;
  else
   txtime += 144 + 48;
  txtime += 10;
 }
 return (txtime);
}
void
athn_init_tx_queues(struct athn_softc *sc)
{
 int qid;
 for (qid = 0; qid < 8; qid++) {
  do { (&sc->txq[qid].head)->sqh_first = ((void *)0); (&sc->txq[qid].head)->sqh_last = &(&sc->txq[qid].head)->sqh_first; } while (0);
  sc->txq[qid].lastds = ((void *)0);
  sc->txq[qid].wait = ((void *)0);
  sc->txq[qid].queued = 0;
  (sc)->ops.write((sc), ((0x1080 + (qid) * 4)), ((((uint32_t)(32) << 8) & 0x00003f00) | (((uint32_t)(32) << 14) & 0x000fc000) | (((uint32_t)(10) << 0) & 0x0000000f)));
  (sc)->ops.write((sc), ((0x09c0 + (qid) * 4)), (0x00000800));
  (sc)->ops.write((sc), ((0x1100 + (qid) * 4)), ((((uint32_t)(2) << 0) & 0x0000003f) | 0x00001000 | 0x00000100));
 }
 (sc)->ops.write((sc), ((0x09c0 + (7) * 4)), ((sc)->ops.read((sc), ((0x09c0 + (7) * 4))) | (2 | 0x00000080 | 0x00000020)));
 (sc)->ops.write((sc), ((0x1100 + (7) * 4)), ((sc)->ops.read((sc), ((0x1100 + (7) * 4))) | ((((uint32_t)(2) << 17) & 0x00060000) | 0x00010000 | 0x00200000)));
 (sc)->ops.write((sc), ((0x1040 + (7) * 4)), ((((uint32_t)(0) << 0) & 0x000003ff) | (((uint32_t)(0) << 10) & 0x000ffc00) | (((uint32_t)(1) << 20) & 0x0ff00000)));
 (sc)->ops.write((sc), ((0x09c0 + (6) * 4)), ((sc)->ops.read((sc), ((0x09c0 + (6) * 4))) | (2 | 0x00000020 | 0x00000040)));
 (sc)->ops.write((sc), ((0x1100 + (6) * 4)), ((sc)->ops.read((sc), ((0x1100 + (6) * 4))) | ((((uint32_t)(2) << 17) & 0x00060000))));
 (sc)->ops.write((sc), ((0x09c0 + (1) * 4)), ((sc)->ops.read((sc), ((0x09c0 + (1) * 4))) | (0x00000020)));
 (sc)->ops.write((sc), ((0x1100 + (5) * 4)), ((sc)->ops.read((sc), ((0x1100 + (5) * 4))) | (0x00200000)));
 if (((sc)->mac_ver >= 0x1c0)) {
  (sc)->ops.write((sc), (0x0a44), (0x00000001));
 }
 (sc)->ops.write((sc), (0x00a4), (0x00ff0000));
 (sc)->ops.write((sc), (0x00a8), (0x00df0000));
 (sc)->ops.write_barrier((sc));
}
void
athn_set_sta_timers(struct athn_softc *sc)
{
 struct ieee80211com *ic = &sc->sc_ic;
 uint32_t tsfhi, tsflo, tsftu, reg64;
 uint32_t intval, next_tbtt, next_dtim;
 int dtim_period, dtim_count, rem_dtim_count;
 tsfhi = (sc)->ops.read((sc), (0x8050));
 tsflo = (sc)->ops.read((sc), (0x804c));
 tsftu = ((tsfhi) << 22 | (tsflo) >> 10) + 2;
 intval = ic->ic_bss->ni_intval;
 next_tbtt = ((((tsftu)+((intval)-1))/(intval))*(intval));
  dtim_period = 1;
  dtim_count = 0;
 rem_dtim_count = 0;
 next_dtim = next_tbtt + rem_dtim_count * intval;
 (sc)->ops.write((sc), ((0x8200 + (0) * 4)), (next_tbtt * 1024));
 (sc)->ops.write((sc), ((0x8200 + (8) * 4)), (intval * 1024));
 (sc)->ops.write((sc), ((0x8200 + (9) * 4)), (intval * 1024));
 reg64 = (sc)->ops.read((sc), (0x8018));
 reg64 = (((reg64) & ~0x0000ff00) | (((uint32_t)(10) << 8) & 0x0000ff00));
 (sc)->ops.write((sc), (0x8018), (reg64));
 (sc)->ops.write((sc), ((0x8200 + (5) * 4)), ((next_dtim - 3) * 1024));
 (sc)->ops.write((sc), ((0x8200 + (4) * 4)), ((next_tbtt - 3) * 1024));
 (sc)->ops.write((sc), (0x80d4), ((((uint32_t)(10 * 8) << 21) & 0xffe00000) | 0x00080000));
 (sc)->ops.write((sc), (0x80d8), ((((uint32_t)(1) << 21) & 0xffe00000)));
 (sc)->ops.write((sc), ((0x8200 + (12) * 4)), (intval * 1024));
 (sc)->ops.write((sc), ((0x8200 + (13) * 4)), (dtim_period * intval * 1024));
 (sc)->ops.write((sc), (0x8240), ((sc)->ops.read((sc), (0x8240)) | (0x00000001 | 0x00000010 | 0x00000020)));
 (sc)->ops.write((sc), (0x813c), (0x4240));
 (sc)->ops.write_barrier((sc));
}
void
athn_set_hostap_timers(struct athn_softc *sc)
{
 struct ieee80211com *ic = &sc->sc_ic;
 uint32_t intval, next_tbtt;
 intval = ic->ic_bss->ni_intval;
 next_tbtt = intval;
 (sc)->ops.write((sc), ((0x8200 + (0) * 4)), (next_tbtt * 1024));
 (sc)->ops.write((sc), ((0x8200 + (1) * 4)), ((next_tbtt - 2) * 1024));
 (sc)->ops.write((sc), ((0x8200 + (2) * 4)), ((next_tbtt - 10) * 1024));
 (sc)->ops.write((sc), ((0x8200 + (8) * 4)), (intval * 1024));
 (sc)->ops.write((sc), ((0x8200 + (9) * 4)), (intval * 1024));
 (sc)->ops.write((sc), ((0x8200 + (10) * 4)), (intval * 1024));
 (sc)->ops.write((sc), ((0x8200 + (15) * 4)), (intval * 1024));
 (sc)->ops.write((sc), (0x8240), (0x00000001 | 0x00000002 | 0x00000004));
 (sc)->ops.write_barrier((sc));
}
void
athn_set_opmode(struct athn_softc *sc)
{
 uint32_t reg64;
 switch (sc->sc_ic.ic_opmode) {
 case IEEE80211_M_HOSTAP:
  reg64 = (sc)->ops.read((sc), (0x8004));
  reg64 &= ~0x00020000;
  reg64 |= 0x00010000 | 0x10000000;
  (sc)->ops.write((sc), (0x8004), (reg64));
  (sc)->ops.write((sc), (0x0014), ((sc)->ops.read((sc), (0x0014)) & ~(0x00000020)));
  break;
 case IEEE80211_M_IBSS:
 case IEEE80211_M_AHDEMO:
  reg64 = (sc)->ops.read((sc), (0x8004));
  reg64 &= ~0x00010000;
  reg64 |= 0x00020000 | 0x10000000;
  (sc)->ops.write((sc), (0x8004), (reg64));
  (sc)->ops.write((sc), (0x0014), ((sc)->ops.read((sc), (0x0014)) | (0x00000020)));
  break;
 default:
  reg64 = (sc)->ops.read((sc), (0x8004));
  reg64 &= ~(0x00020000 | 0x00010000);
  reg64 |= 0x10000000;
  (sc)->ops.write((sc), (0x8004), (reg64));
  break;
 }
 (sc)->ops.write_barrier((sc));
}
void
athn_set_bss(struct athn_softc *sc, struct ieee80211_node *ni)
{
 const uint8_t *bssid = ni->ni_bssid;
 (sc)->ops.write((sc), (0x8008), (((&bssid[0])[0] | (&bssid[0])[1] << 8 | (&bssid[0])[2] << 16 | (&bssid[0])[3] << 24)));
 (sc)->ops.write((sc), (0x800c), (((&bssid[4])[0] | (&bssid[4])[1] << 8) | (((uint32_t)(((ni->ni_associd) &~ 0xc000)) << 16) & 0x07ff0000)));
 (sc)->ops.write_barrier((sc));
}
void
athn_enable_interrupts(struct athn_softc *sc)
{
 uint32_t mask2;
 athn_disable_interrupts(sc);
 (sc)->ops.write((sc), (0x00a0), (sc->imask));
 mask2 = (sc)->ops.read((sc), (0x00ac));
 mask2 &= ~(0x01000000 | 0x20000000 | 0x04000000 |
     0x02000000 | 0x10000000 | 0x40000000);
 mask2 |= 0x00800000 | 0x00400000;
 (sc)->ops.write((sc), (0x00ac), (mask2));
 (sc)->ops.write((sc), (0x00b8), ((sc)->ops.read((sc), (0x00b8)) & ~(0x00000010)));
 (sc)->ops.write((sc), (0x0024), (0x00000001));
 (sc)->ops.write((sc), (0x403c), (0x00000002));
 (sc)->ops.write((sc), (0x4030), (0x00000002));
 (sc)->ops.write((sc), (0x402c), (sc->isync));
 (sc)->ops.write((sc), (0x4034), (sc->isync));
 (sc)->ops.write_barrier((sc));
}
void
athn_disable_interrupts(struct athn_softc *sc)
{
 (sc)->ops.write((sc), (0x0024), (0));
 (void)(sc)->ops.read((sc), (0x0024));
 (sc)->ops.write((sc), (0x403c), (0));
 (void)(sc)->ops.read((sc), (0x403c));
 (sc)->ops.write((sc), (0x402c), (0));
 (void)(sc)->ops.read((sc), (0x402c));
 (sc)->ops.write((sc), (0x00a0), (0));
 (sc)->ops.write((sc), (0x00ac), ((sc)->ops.read((sc), (0x00ac)) & ~(0x01000000 | 0x20000000 | 0x04000000 | 0x02000000 | 0x10000000 | 0x40000000 | 0x00800000 | 0x00400000)));
 (sc)->ops.write((sc), (0x00b8), ((sc)->ops.read((sc), (0x00b8)) & ~(0x00000010)));
 (sc)->ops.write_barrier((sc));
}
void
athn_init_qos(struct athn_softc *sc)
{
 (sc)->ops.write((sc), (0x8118), (0x100aa));
 (sc)->ops.write((sc), (0x811c), (0x3210));
 (sc)->ops.write((sc), (0x8108), ((((uint32_t)(2) << 0) & 0x0000000f) | (((uint32_t)(5) << 4) & 0x0000007f) | (((uint32_t)(0) << 7) & 0x00000180)));
 (sc)->ops.write((sc), (0x81ec), (0x000000ff));
 (sc)->ops.write((sc), (0x81f0), (0xffffffff));
 (sc)->ops.write((sc), (0x81f4), (0xffffffff));
 (sc)->ops.write((sc), (0x81f8), (0xffffffff));
 (sc)->ops.write((sc), (0x81fc), (0xffffffff));
 (sc)->ops.write_barrier((sc));
}
int
athn_hw_reset(struct athn_softc *sc, struct ieee80211_channel *c,
    struct ieee80211_channel *extc, int init)
{
 struct ieee80211com *ic = &sc->sc_ic;
 struct athn_ops *ops = &sc->ops;
 uint32_t reg64, def_ant, sta_id1, cfg_led, tsflo, tsfhi;
 int i, error;
 if ((error = athn_set_power_awake(sc)) != 0) {
  printf("%s: could not wakeup chip\n", sc->sc_dev.dv_xname);
  return (error);
 }
 if ((def_ant = (sc)->ops.read((sc), (0x8058))) == 0)
  def_ant = 1;
 sta_id1 = (sc)->ops.read((sc), (0x8004)) & 0x02000000;
 cfg_led = (sc)->ops.read((sc), (0x1f04)) & (0x00000c00 |
     0x00000380 | 0x00000070 |
     0x00000008);
 ops->disable_phy(sc);
 if (init && ((sc)->mac_ver == 0x140)) {
  (sc)->ops.write((sc), (0x050044), (0x00000020));
  delay(50);
 }
 if (((sc)->mac_ver == 0x080) && (sc->flags & (1 << 2))) {
  tsfhi = (sc)->ops.read((sc), (0x8050));
  tsflo = (sc)->ops.read((sc), (0x804c));
  error = athn_reset_power_on(sc);
 } else
  error = athn_reset(sc, 0);
 if (error != 0) {
  printf("%s: could not reset chip (error=%d)\n",
      sc->sc_dev.dv_xname, error);
  return (error);
 }
 if ((error = athn_set_power_awake(sc)) != 0) {
  printf("%s: could not wakeup chip\n", sc->sc_dev.dv_xname);
  return (error);
 }
 athn_init_pll(sc, c);
 ops->set_rf_mode(sc, c);
 if (sc->flags & (1 << 5)) {
  reg64 = ops->gpio_read(sc, sc->rfsilent_pin);
  if (sc->flags & (1 << 6))
   reg64 = !reg64;
  if (!reg64) {
   printf("%s: radio is disabled by hardware switch\n",
       sc->sc_dev.dv_xname);
   return (1);
  }
 }
 if (init && ((sc)->mac_ver == 0x140)) {
  (sc)->ops.write((sc), (0x050044), (0x00004000));
  delay(50);
 }
 if (((sc)->mac_ver == 0x080) && (sc->flags & (1 << 2))) {
  (sc)->ops.write((sc), (0x804c), (tsflo));
  (sc)->ops.write((sc), (0x8050), (tsfhi));
 }
 if (((sc)->mac_ver >= 0x080))
  (sc)->ops.write((sc), (sc->gpio_input_en_off), ((sc)->ops.read((sc), (sc->gpio_input_en_off)) | (0x00020000)));
 if (((sc)->mac_ver > 0x180 || (((sc)->mac_ver == 0x180) && (sc)->mac_rev >= 3)) && !((sc)->mac_ver >= 0x1c0))
  ar9287_1_3_enable_async_fifo(sc);
 ops->hw_init(sc, c, extc);
 if (((sc)->mac_ver > 0x080 || (((sc)->mac_ver == 0x080) && (sc)->mac_rev >= 1))) {
  reg64 = (sc)->ops.read((sc), (0x8060));
  reg64 = (((reg64) & ~0x00ff0000) | (((uint32_t)(0xff) << 16) & 0x00ff0000));
  reg64 = (((reg64) & ~0xff000000) | (((uint32_t)(~(0x08 | 0x10 | 0x20)) << 24) & 0xff000000));
  (sc)->ops.write((sc), (0x8060), (reg64));
 } else if (((sc)->mac_ver >= 0x040)) {
  (sc)->ops.write((sc), (0x8344), ((sc)->ops.read((sc), (0x8344)) & ~(0x00000002)));
  (sc)->ops.write((sc), (0x8344), ((sc)->ops.read((sc), (0x8344)) | (0x00000004)));
 }
 if (ic->ic_curmode != IEEE80211_MODE_11B)
  ops->set_delta_slope(sc, c, extc);
 ops->spur_mitigate(sc, c, extc);
 ops->init_from_rom(sc, c, extc);
 (sc)->ops.write((sc), (0x8000), (((&ic->ic_myaddr[0])[0] | (&ic->ic_myaddr[0])[1] << 8 | (&ic->ic_myaddr[0])[2] << 16 | (&ic->ic_myaddr[0])[3] << 24)));
 (sc)->ops.write((sc), (0x8004), (((&ic->ic_myaddr[4])[0] | (&ic->ic_myaddr[4])[1] << 8) | sta_id1 | 0x00800000 | 0x08000000));
 athn_set_opmode(sc);
 (sc)->ops.write((sc), (0x80e0), (0xffffffff));
 (sc)->ops.write((sc), (0x80e4), (0xffff));
 (sc)->ops.write((sc), (0x8058), (def_ant));
 (sc)->ops.write((sc), (0x8008), (0));
 (sc)->ops.write((sc), (0x800c), (0));
 (sc)->ops.write((sc), (0x0080), (0xffffffff));
 (sc)->ops.write((sc), (0x8018), ((((uint32_t)(7) << 8) & 0x0000ff00)));
 if ((error = ops->set_synth(sc, c, extc)) != 0) {
  printf("%s: could not set channel\n", sc->sc_dev.dv_xname);
  return (error);
 }
 sc->curchan = c;
 sc->curchanext = extc;
 for (i = 0; i < 10; i++)
  (sc)->ops.write((sc), ((0x1000 + (i) * 4)), (1 << i));
 athn_init_tx_queues(sc);
 sc->imask =
     0x00000080 | 0x00000400 |
     0x00000004 | 0x00000010 | 0x00000020 |
     0x01000000 | 0x80000000 |
     0x10000000 | 0x00800000;
 if (((sc)->mac_ver >= 0x1c0))
  sc->imask |= 0x00000004 | 0x00000001;
 if (0 && ic->ic_opmode == IEEE80211_M_HOSTAP)
  sc->imask |= 0x00001000;
 (sc)->ops.write((sc), (0x00a0), (sc->imask));
 (sc)->ops.write((sc), (0x00ac), ((sc)->ops.read((sc), (0x00ac)) | (0x00800000)));
 (sc)->ops.write((sc), (0x4028), (0xffffffff));
 sc->isync = (0x00000020 | 0x00000040 | 0x00000100 | 0x00000200 | 0x00000400 | 0x00000800 | 0x00001000 | 0x00002000 | 0x00020000);
 if (sc->flags & (1 << 5))
  sc->isync |= (1 << (18 + (sc->rfsilent_pin)));
 (sc)->ops.write((sc), (0x402c), (sc->isync));
 (sc)->ops.write((sc), (0x4034), (0));
 if (((sc)->mac_ver >= 0x1c0)) {
  (sc)->ops.write((sc), (0x40d4), (0));
  (sc)->ops.write((sc), (0x40c8), (0));
  (sc)->ops.write((sc), (0x40c4), (0));
  (sc)->ops.write((sc), (0x40cc), (0));
 }
 athn_init_qos(sc);
 (sc)->ops.write((sc), (0x8120), ((sc)->ops.read((sc), (0x8120)) | (0x00000004)));
 if (((sc)->mac_ver > 0x180 || (((sc)->mac_ver == 0x180) && (sc)->mac_rev >= 3)) && !((sc)->mac_ver >= 0x1c0))
  ar9287_1_3_setup_async_fifo(sc);
 (sc)->ops.write((sc), (0x8004), ((sc)->ops.read((sc), (0x8004)) | (0x20000000)));
 athn_init_dma(sc);
 (sc)->ops.write((sc), (sc->obs_off), (8));
 (sc)->ops.write((sc), (0x002c), ((((uint32_t)(2000) << 16) & 0xffff0000) | (((uint32_t)(500) << 0) & 0x0000ffff)));
 ops->init_baseband(sc);
 if ((error = athn_init_calib(sc, c, extc)) != 0) {
  printf("%s: could not initialize calibration\n",
      sc->sc_dev.dv_xname);
  return (error);
 }
 ops->set_rxchains(sc);
 (sc)->ops.write((sc), (0x1f04), (cfg_led | 3));
 if (sc->flags & (1 << 1)) {
  if (((sc)->mac_ver == 0x140))
   (sc)->ops.write((sc), (0x0014), (0x00000008 | 0x00000002));
  else
   (sc)->ops.write((sc), (0x0014), (0x00000001 | 0x00000004));
 }
 else {
  (sc)->ops.write((sc), (0x0014), (0x00000001 | 0x00000004));
 }
 (sc)->ops.write_barrier((sc));
 return (0);
}
struct ieee80211_node *
athn_node_alloc(struct ieee80211com *ic)
{
 struct athn_node *an;
 an = malloc(sizeof(struct athn_node), 2, 0x0002 | 0x0008);
 if (an && (ic->ic_flags & 0x02000000))
  ieee80211_mira_node_init(&an->mn);
 return (struct ieee80211_node *)an;
}
void
athn_newassoc(struct ieee80211com *ic, struct ieee80211_node *ni, int isnew)
{
 struct athn_softc *sc = ic->ic_ac.ac_if.if_softc;
 struct athn_node *an = (void *)ni;
 struct ieee80211_rateset *rs = &ni->ni_rates;
 uint8_t rate;
 int ridx, i, j;
 if ((ni->ni_flags & 0x0400) == 0)
  ieee80211_amrr_node_init(&sc->amrr, &an->amn);
 else if (ic->ic_opmode == IEEE80211_M_STA)
  ieee80211_mira_node_init(&an->mn);
 ni->ni_txrate = 0;
 for (i = 0; i < rs->rs_nrates; i++) {
  rate = rs->rs_rates[i] & 0x7f;
  for (ridx = 0; ridx <= 27; ridx++)
   if (athn_rates[ridx].rate == rate)
    break;
  an->ridx[i] = ridx;
  ;
  an->fallback[i] = i;
  for (j = i - 1; j >= 0; j--) {
   if (athn_rates[an->ridx[j]].phy ==
       athn_rates[an->ridx[i]].phy) {
    an->fallback[i] = j;
    break;
   }
  }
  ;
 }
 ni->ni_txmcs = 0;
 for (i = 0; i <= 15; i++) {
  ridx = 15 + i;
  an->ridx[ridx] = 12 + i;
  ;
  if (i == 0 || i == 8) {
   if ((((ni->ni_chan)->ic_flags & 0x0100) != 0))
    an->fallback[ridx] = 4;
   else
    an->fallback[ridx] = 0;
  } else {
   an->fallback[ridx] = 15 + i;
   for (j = i - 1; j >= 0; j--) {
    if (!((ni->ni_rxmcs)[(j)>>3] & (1<<((j)&(8 -1)))))
     continue;
    an->fallback[ridx] = 15 + j;
    break;
   }
  }
  ;
 }
}
void
athn_node_leave(struct ieee80211com *ic, struct ieee80211_node *ni)
{
 struct athn_node *an = (void *)ni;
 if (ic->ic_flags & 0x02000000)
  ieee80211_mira_cancel_timeouts(&an->mn);
}
int
athn_media_change(struct ifnet *ifp)
{
 struct athn_softc *sc = ifp->if_softc;
 struct ieee80211com *ic = &sc->sc_ic;
 uint8_t rate, ridx;
 int error;
 error = ieee80211_media_change(ifp);
 if (error != 52)
  return (error);
 if (ic->ic_fixed_rate != -1) {
  rate = ic->ic_sup_rates[ic->ic_curmode].
      rs_rates[ic->ic_fixed_rate] & 0x7f;
  for (ridx = 0; ridx <= 27; ridx++)
   if (athn_rates[ridx].rate == rate)
    break;
  sc->fixed_ridx = ridx;
 }
 if ((ifp->if_flags & (0x1 | 0x40)) ==
     (0x1 | 0x40)) {
  athn_stop(ifp, 0);
  error = athn_init(ifp);
 }
 return (error);
}
void
athn_next_scan(void *arg)
{
 struct athn_softc *sc = arg;
 struct ieee80211com *ic = &sc->sc_ic;
 int s;
 s = _splraise(6);
 if (ic->ic_state == IEEE80211_S_SCAN)
  ieee80211_next_scan(&ic->ic_ac.ac_if);
 _splx(s);
}
void
athn_iter_mira_delete(void *arg, struct ieee80211_node *ni)
{
 struct athn_node *an = (struct athn_node *)ni;
 ieee80211_mira_cancel_timeouts(&an->mn);
}
void
athn_delete_mira_nodes(struct athn_softc *sc)
{
 struct ieee80211com *ic = &sc->sc_ic;
 if (ic->ic_opmode == IEEE80211_M_STA) {
  struct athn_node *an = (struct athn_node *)ic->ic_bss;
  ieee80211_mira_cancel_timeouts(&an->mn);
 } else
  ieee80211_iterate_nodes(ic, athn_iter_mira_delete, sc);
}
int
athn_newstate(struct ieee80211com *ic, enum ieee80211_state nstate, int arg)
{
 struct ifnet *ifp = &ic->ic_ac.ac_if;
 struct athn_softc *sc = ifp->if_softc;
 uint32_t reg64;
 int error;
 timeout_del(&sc->calib_to);
 if ((ic->ic_flags & 0x02000000) &&
     ic->ic_state == IEEE80211_S_RUN && nstate != IEEE80211_S_RUN)
  athn_delete_mira_nodes(sc);
 switch (nstate) {
 case IEEE80211_S_INIT:
  athn_set_led(sc, 0);
  break;
 case IEEE80211_S_SCAN:
  athn_set_led(sc, !sc->led_state);
  error = athn_switch_chan(sc, ic->ic_bss->ni_chan, ((void *)0));
  if (error != 0)
   return (error);
  timeout_add_msec(&sc->scan_to, 200);
  break;
 case IEEE80211_S_AUTH:
  athn_set_led(sc, 0);
  error = athn_switch_chan(sc, ic->ic_bss->ni_chan, ((void *)0));
  if (error != 0)
   return (error);
  break;
 case IEEE80211_S_ASSOC:
  break;
 case IEEE80211_S_RUN:
  athn_set_led(sc, 1);
  if (ic->ic_opmode == IEEE80211_M_MONITOR)
   break;
  athn_newassoc(ic, ic->ic_bss, 1);
  athn_set_bss(sc, ic->ic_bss);
  athn_disable_interrupts(sc);
  if (ic->ic_opmode == IEEE80211_M_HOSTAP) {
   athn_set_hostap_timers(sc);
   sc->imask |= 0x00010000;
  } else
  {
   athn_set_sta_timers(sc);
   sc->imask |= 0x00040000;
   reg64 = (sc)->ops.read((sc), (0x803c));
   reg64 = (reg64 & ~0x00000010) |
       0x00000200;
   (sc)->ops.write((sc), (0x803c), (reg64));
   (sc)->ops.write_barrier((sc));
  }
  athn_enable_interrupts(sc);
  if (sc->sup_calib_mask != 0) {
   __builtin_memset((&sc->calib), (0), (sizeof(sc->calib)));
   sc->cur_calib_mask = sc->sup_calib_mask;
  }
  timeout_add_msec(&sc->calib_to, 500);
  break;
 }
 return (sc->sc_newstate(ic, nstate, arg));
}
void
athn_updateedca(struct ieee80211com *ic)
{
 struct athn_softc *sc = ic->ic_ac.ac_if.if_softc;
 const struct ieee80211_edca_ac_params *ac;
 int aci, qid;
 for (aci = 0; aci < 4; aci++) {
  ac = &ic->ic_edca_ac[aci];
  qid = athn_ac2qid[aci];
  (sc)->ops.write((sc), ((0x1040 + (qid) * 4)), ((((uint32_t)(((1 << (ac->ac_ecwmin)) - 1)) << 0) & 0x000003ff) | (((uint32_t)(((1 << (ac->ac_ecwmax)) - 1)) << 10) & 0x000ffc00) | (((uint32_t)(ac->ac_aifsn) << 20) & 0x0ff00000)));
  if (ac->ac_txoplimit != 0) {
   (sc)->ops.write((sc), ((0x10c0 + (qid) * 4)), ((((uint32_t)(((ac->ac_txoplimit) * 32)) << 0) & 0x000fffff) | 0x00100000));
  } else
   (sc)->ops.write((sc), ((0x10c0 + (qid) * 4)), (0));
 }
 (sc)->ops.write_barrier((sc));
}
int
athn_clock_rate(struct athn_softc *sc)
{
 struct ieee80211com *ic = &sc->sc_ic;
 int clockrate;
 if (ic->ic_bss->ni_chan != ((struct ieee80211_channel *) ((void *)0)) &&
     (((ic->ic_bss->ni_chan)->ic_flags & 0x0100) != 0)) {
  if (sc->flags & (1 << 4))
   clockrate = 44;
  else
   clockrate = 40;
 } else if (ic->ic_curmode == IEEE80211_MODE_11B) {
  clockrate = 22;
 } else
  clockrate = 44;
 if (sc->curchanext != ((void *)0))
  clockrate *= 2;
 return (clockrate);
}
void
athn_updateslot(struct ieee80211com *ic)
{
 struct athn_softc *sc = ic->ic_ac.ac_if.if_softc;
 int slot;
 slot = (ic->ic_flags & 0x00020000) ?
     9 : 20;
 (sc)->ops.write((sc), (0x1070), (slot * athn_clock_rate(sc)));
 (sc)->ops.write_barrier((sc));
}
void
athn_start(struct ifnet *ifp)
{
 struct athn_softc *sc = ifp->if_softc;
 struct ieee80211com *ic = &sc->sc_ic;
 struct ieee80211_node *ni;
 struct mbuf *m;
 if (!(ifp->if_flags & 0x40) || ifq_is_oactive(&ifp->if_snd))
  return;
 for (;;) {
  if ((((&sc->txbufs)->sqh_first) == ((void *)0))) {
   ifq_set_oactive(&ifp->if_snd);
   break;
  }
  m = mq_dequeue(&ic->ic_mgtq);
  if (m != ((void *)0)) {
   ni = m->M_dat.MH.MH_pkthdr.ph_cookie;
   goto sendit;
  }
  if (ic->ic_state != IEEE80211_S_RUN)
   break;
  m = mq_dequeue(&ic->ic_pwrsaveq);
  if (m != ((void *)0)) {
   ni = m->M_dat.MH.MH_pkthdr.ph_cookie;
   goto sendit;
  }
  if (ic->ic_state != IEEE80211_S_RUN)
   break;
  do { (m) = ifq_dequeue(&ifp->if_snd); } while ( 0);
  if (m == ((void *)0))
   break;
  if (ifp->if_bpf != ((void *)0))
   bpf_mtap(ifp->if_bpf, m, (1<<1));
  if ((m = ieee80211_encap(ifp, m, &ni)) == ((void *)0))
   continue;
 sendit:
  if (ic->ic_rawbpf != ((void *)0))
   bpf_mtap(ic->ic_rawbpf, m, (1<<1));
  if (sc->ops.tx(sc, m, ni, 0) != 0) {
   ieee80211_release_node(ic, ni);
   ifp->if_data.ifi_oerrors++;
   continue;
  }
  sc->sc_tx_timer = 5;
  ifp->if_timer = 1;
 }
}
void
athn_watchdog(struct ifnet *ifp)
{
 struct athn_softc *sc = ifp->if_softc;
 ifp->if_timer = 0;
 if (sc->sc_tx_timer > 0) {
  if (--sc->sc_tx_timer == 0) {
   printf("%s: device timeout\n", sc->sc_dev.dv_xname);
   athn_stop(ifp, 1);
   (void)athn_init(ifp);
   ifp->if_data.ifi_oerrors++;
   return;
  }
  ifp->if_timer = 1;
 }
 ieee80211_watchdog(ifp);
}
void
athn_set_multi(struct athn_softc *sc)
{
 struct arpcom *ac = &sc->sc_ic.ic_ac;
 struct ifnet *ifp = &ac->ac_if;
 struct ether_multi *enm;
 struct ether_multistep step;
 const uint8_t *addr;
 uint32_t val, lo, hi;
 uint8_t bit;
 if (ac->ac_multirangecnt > 0)
  ifp->if_flags |= 0x200;
 if ((ifp->if_flags & (0x200 | 0x100)) != 0) {
  lo = hi = 0xffffffff;
  goto done;
 }
 lo = hi = 0;
 do { (step).e_enm = ((&(ac)->ac_multiaddrs)->lh_first); do { if ((((enm)) = ((step)).e_enm) != ((void *)0)) ((step)).e_enm = ((((enm)))->enm_list.le_next); } while ( 0); } while ( 0);
 while (enm != ((void *)0)) {
  addr = enm->enm_addrlo;
  val = addr[0] | addr[1] << 8 | addr[2] << 16;
  bit = (val >> 18) ^ (val >> 12) ^ (val >> 6) ^ val;
  val = addr[3] | addr[4] << 8 | addr[5] << 16;
  bit ^= (val >> 18) ^ (val >> 12) ^ (val >> 6) ^ val;
  bit &= 0x3f;
  if (bit < 32)
   lo |= 1 << bit;
  else
   hi |= 1 << (bit - 32);
  do { if (((enm) = (step).e_enm) != ((void *)0)) (step).e_enm = (((enm))->enm_list.le_next); } while ( 0);
 }
 done:
 (sc)->ops.write((sc), (0x8040), (lo));
 (sc)->ops.write((sc), (0x8044), (hi));
 (sc)->ops.write_barrier((sc));
}
int
athn_ioctl(struct ifnet *ifp, u_long cmd, caddr_t data)
{
 struct athn_softc *sc = ifp->if_softc;
 struct ieee80211com *ic = &sc->sc_ic;
 struct ifreq *ifr;
 int s, error = 0;
 s = _splraise(6);
 switch (cmd) {
 case ((unsigned long)0x80000000 | ((sizeof(struct ifreq) & 0x1fff) << 16) | ((('i')) << 8) | ((12))):
  ifp->if_flags |= 0x1;
 case ((unsigned long)0x80000000 | ((sizeof(struct ifreq) & 0x1fff) << 16) | ((('i')) << 8) | ((16))):
  if (ifp->if_flags & 0x1) {
   if ((ifp->if_flags & 0x40) &&
       ((ifp->if_flags ^ sc->sc_if_flags) &
        (0x200 | 0x100)) != 0) {
    athn_set_multi(sc);
   } else if (!(ifp->if_flags & 0x40))
    error = athn_init(ifp);
  } else {
   if (ifp->if_flags & 0x40)
    athn_stop(ifp, 1);
  }
  sc->sc_if_flags = ifp->if_flags;
  break;
 case ((unsigned long)0x80000000 | ((sizeof(struct ifreq) & 0x1fff) << 16) | ((('i')) << 8) | ((49))):
 case ((unsigned long)0x80000000 | ((sizeof(struct ifreq) & 0x1fff) << 16) | ((('i')) << 8) | ((50))):
  ifr = (struct ifreq *)data;
  error = (cmd == ((unsigned long)0x80000000 | ((sizeof(struct ifreq) & 0x1fff) << 16) | ((('i')) << 8) | ((49)))) ?
      ether_addmulti(ifr, &ic->ic_ac) :
      ether_delmulti(ifr, &ic->ic_ac);
  if (error == 52) {
   athn_set_multi(sc);
   error = 0;
  }
  break;
 case ((unsigned long)0x80000000 | ((sizeof(struct ieee80211chanreq) & 0x1fff) << 16) | ((('i')) << 8) | ((238))):
  error = ieee80211_ioctl(ifp, cmd, data);
  if (error == 52 &&
      ic->ic_opmode == IEEE80211_M_MONITOR) {
   if ((ifp->if_flags & (0x1 | 0x40)) ==
       (0x1 | 0x40))
    athn_switch_chan(sc, ic->ic_ibss_chan, ((void *)0));
   error = 0;
  }
  break;
 default:
  error = ieee80211_ioctl(ifp, cmd, data);
 }
 if (error == 52) {
  error = 0;
  if ((ifp->if_flags & (0x1 | 0x40)) ==
      (0x1 | 0x40)) {
   athn_stop(ifp, 0);
   error = athn_init(ifp);
  }
 }
 _splx(s);
 return (error);
}
int
athn_init(struct ifnet *ifp)
{
 struct athn_softc *sc = ifp->if_softc;
 struct athn_ops *ops = &sc->ops;
 struct ieee80211com *ic = &sc->sc_ic;
 struct ieee80211_channel *c, *extc;
 int i, error;
 c = ic->ic_bss->ni_chan = ic->ic_ibss_chan;
 extc = ((void *)0);
 __builtin_memcpy((ic->ic_myaddr), (((caddr_t)((ifp->if_sadl)->sdl_data + (ifp->if_sadl)->sdl_nlen))), (6));
 if (sc->sc_enable != ((void *)0)) {
  if ((error = sc->sc_enable(sc)) != 0) {
   printf("%s: could not enable device\n",
       sc->sc_dev.dv_xname);
   goto fail;
  }
  if ((error = athn_reset_power_on(sc)) != 0) {
   printf("%s: could not power on device\n",
       sc->sc_dev.dv_xname);
   goto fail;
  }
 }
 if (!(sc->flags & (1 << 0)))
  athn_config_nonpcie(sc);
 else
  athn_config_pcie(sc);
 for (i = 0; i < sc->kc_entries; i++)
  athn_reset_key(sc, i);
 ops->enable_antenna_diversity(sc);
 athn_led_init(sc);
 if (sc->flags & (1 << 5))
  ops->rfsilent_init(sc);
 if ((error = athn_hw_reset(sc, c, extc, 1)) != 0) {
  printf("%s: unable to reset hardware; reset status %d\n",
      sc->sc_dev.dv_xname, error);
  goto fail;
 }
 athn_rx_start(sc);
 athn_enable_interrupts(sc);
 ifq_clr_oactive(&ifp->if_snd);
 ifp->if_flags |= 0x40;
 if (ic->ic_opmode == IEEE80211_M_MONITOR)
  (((ic)->ic_newstate)((ic), (IEEE80211_S_RUN), (-1)));
 else
  (((ic)->ic_newstate)((ic), (IEEE80211_S_SCAN), (-1)));
 return (0);
 fail:
 athn_stop(ifp, 1);
 return (error);
}
void
athn_stop(struct ifnet *ifp, int disable)
{
 struct athn_softc *sc = ifp->if_softc;
 struct ieee80211com *ic = &sc->sc_ic;
 int qid;
 ifp->if_timer = sc->sc_tx_timer = 0;
 ifp->if_flags &= ~0x40;
 ifq_clr_oactive(&ifp->if_snd);
 timeout_del(&sc->scan_to);
 ic->ic_scan_lock = 0x0;
 (((ic)->ic_newstate)((ic), (IEEE80211_S_INIT), (-1)));
 athn_disable_interrupts(sc);
 (sc)->ops.write((sc), (0x4028), (0xffffffff));
 (sc)->ops.write((sc), (0x4034), (0));
 for (qid = 0; qid < 8; qid++)
  athn_stop_tx_dma(sc, qid);
 for (qid = 0; qid < 8; qid++)
  athn_tx_reclaim(sc, qid);
 (sc)->ops.write((sc), (0x8048), ((sc)->ops.read((sc), (0x8048)) | (0x00000020 | 0x02000000)));
 (sc)->ops.write((sc), (0x0040), (0x00000002));
 (sc)->ops.write((sc), (0x0040), (0x00000004));
 (sc)->ops.write((sc), (0x8124), (0));
 (sc)->ops.write((sc), (0x8128), (0));
 (sc)->ops.write_barrier((sc));
 athn_set_rxfilter(sc, 0);
 athn_stop_rx_dma(sc);
 athn_reset(sc, 0);
 athn_init_pll(sc, ((void *)0));
 athn_set_power_awake(sc);
 athn_reset(sc, 1);
 athn_init_pll(sc, ((void *)0));
 athn_set_power_sleep(sc);
 if (disable && sc->sc_disable != ((void *)0))
  sc->sc_disable(sc);
}
void
athn_suspend(struct athn_softc *sc)
{
 struct ifnet *ifp = &sc->sc_ic.ic_ac.ac_if;
 if (ifp->if_flags & 0x40)
  athn_stop(ifp, 1);
}
void
athn_wakeup(struct athn_softc *sc)
{
 struct ifnet *ifp = &sc->sc_ic.ic_ac.ac_if;
 if (ifp->if_flags & 0x1)
  athn_init(ifp);
}
