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
typedef struct BlowfishContext {
 u_int32_t S[4][256];
 u_int32_t P[16 + 2];
} blf_ctx;
void Blowfish_encipher(blf_ctx *, u_int32_t *);
void Blowfish_decipher(blf_ctx *, u_int32_t *);
void Blowfish_initstate(blf_ctx *);
void Blowfish_expand0state(blf_ctx *, const u_int8_t *, u_int16_t);
void Blowfish_expandstate(blf_ctx *, const u_int8_t *, u_int16_t, const u_int8_t *, u_int16_t);
void blf_key(blf_ctx *, const u_int8_t *, u_int16_t);
void blf_enc(blf_ctx *, u_int32_t *, u_int16_t);
void blf_dec(blf_ctx *, u_int32_t *, u_int16_t);
u_int32_t Blowfish_stream2word(const u_int8_t *, u_int16_t ,
        u_int16_t *);
void blf_ecb_encrypt(blf_ctx *, u_int8_t *, u_int32_t);
void blf_ecb_decrypt(blf_ctx *, u_int8_t *, u_int32_t);
void blf_cbc_encrypt(blf_ctx *, u_int8_t *, u_int8_t *, u_int32_t);
void blf_cbc_decrypt(blf_ctx *, u_int8_t *, u_int8_t *, u_int32_t);
void
Blowfish_encipher(blf_ctx *c, u_int32_t *x)
{
 u_int32_t Xl;
 u_int32_t Xr;
 u_int32_t *s = c->S[0];
 u_int32_t *p = c->P;
 Xl = x[0];
 Xr = x[1];
 Xl ^= p[0];
 (Xr ^= ((((s)[ (((Xl)>>24)&0xFF)] + (s)[0x100 + (((Xl)>>16)&0xFF)]) ^ (s)[0x200 + (((Xl)>> 8)&0xFF)]) + (s)[0x300 + ( (Xl) &0xFF)]) ^ (p)[1]); (Xl ^= ((((s)[ (((Xr)>>24)&0xFF)] + (s)[0x100 + (((Xr)>>16)&0xFF)]) ^ (s)[0x200 + (((Xr)>> 8)&0xFF)]) + (s)[0x300 + ( (Xr) &0xFF)]) ^ (p)[2]);
 (Xr ^= ((((s)[ (((Xl)>>24)&0xFF)] + (s)[0x100 + (((Xl)>>16)&0xFF)]) ^ (s)[0x200 + (((Xl)>> 8)&0xFF)]) + (s)[0x300 + ( (Xl) &0xFF)]) ^ (p)[3]); (Xl ^= ((((s)[ (((Xr)>>24)&0xFF)] + (s)[0x100 + (((Xr)>>16)&0xFF)]) ^ (s)[0x200 + (((Xr)>> 8)&0xFF)]) + (s)[0x300 + ( (Xr) &0xFF)]) ^ (p)[4]);
 (Xr ^= ((((s)[ (((Xl)>>24)&0xFF)] + (s)[0x100 + (((Xl)>>16)&0xFF)]) ^ (s)[0x200 + (((Xl)>> 8)&0xFF)]) + (s)[0x300 + ( (Xl) &0xFF)]) ^ (p)[5]); (Xl ^= ((((s)[ (((Xr)>>24)&0xFF)] + (s)[0x100 + (((Xr)>>16)&0xFF)]) ^ (s)[0x200 + (((Xr)>> 8)&0xFF)]) + (s)[0x300 + ( (Xr) &0xFF)]) ^ (p)[6]);
 (Xr ^= ((((s)[ (((Xl)>>24)&0xFF)] + (s)[0x100 + (((Xl)>>16)&0xFF)]) ^ (s)[0x200 + (((Xl)>> 8)&0xFF)]) + (s)[0x300 + ( (Xl) &0xFF)]) ^ (p)[7]); (Xl ^= ((((s)[ (((Xr)>>24)&0xFF)] + (s)[0x100 + (((Xr)>>16)&0xFF)]) ^ (s)[0x200 + (((Xr)>> 8)&0xFF)]) + (s)[0x300 + ( (Xr) &0xFF)]) ^ (p)[8]);
 (Xr ^= ((((s)[ (((Xl)>>24)&0xFF)] + (s)[0x100 + (((Xl)>>16)&0xFF)]) ^ (s)[0x200 + (((Xl)>> 8)&0xFF)]) + (s)[0x300 + ( (Xl) &0xFF)]) ^ (p)[9]); (Xl ^= ((((s)[ (((Xr)>>24)&0xFF)] + (s)[0x100 + (((Xr)>>16)&0xFF)]) ^ (s)[0x200 + (((Xr)>> 8)&0xFF)]) + (s)[0x300 + ( (Xr) &0xFF)]) ^ (p)[10]);
 (Xr ^= ((((s)[ (((Xl)>>24)&0xFF)] + (s)[0x100 + (((Xl)>>16)&0xFF)]) ^ (s)[0x200 + (((Xl)>> 8)&0xFF)]) + (s)[0x300 + ( (Xl) &0xFF)]) ^ (p)[11]); (Xl ^= ((((s)[ (((Xr)>>24)&0xFF)] + (s)[0x100 + (((Xr)>>16)&0xFF)]) ^ (s)[0x200 + (((Xr)>> 8)&0xFF)]) + (s)[0x300 + ( (Xr) &0xFF)]) ^ (p)[12]);
 (Xr ^= ((((s)[ (((Xl)>>24)&0xFF)] + (s)[0x100 + (((Xl)>>16)&0xFF)]) ^ (s)[0x200 + (((Xl)>> 8)&0xFF)]) + (s)[0x300 + ( (Xl) &0xFF)]) ^ (p)[13]); (Xl ^= ((((s)[ (((Xr)>>24)&0xFF)] + (s)[0x100 + (((Xr)>>16)&0xFF)]) ^ (s)[0x200 + (((Xr)>> 8)&0xFF)]) + (s)[0x300 + ( (Xr) &0xFF)]) ^ (p)[14]);
 (Xr ^= ((((s)[ (((Xl)>>24)&0xFF)] + (s)[0x100 + (((Xl)>>16)&0xFF)]) ^ (s)[0x200 + (((Xl)>> 8)&0xFF)]) + (s)[0x300 + ( (Xl) &0xFF)]) ^ (p)[15]); (Xl ^= ((((s)[ (((Xr)>>24)&0xFF)] + (s)[0x100 + (((Xr)>>16)&0xFF)]) ^ (s)[0x200 + (((Xr)>> 8)&0xFF)]) + (s)[0x300 + ( (Xr) &0xFF)]) ^ (p)[16]);
 x[0] = Xr ^ p[17];
 x[1] = Xl;
}
void
Blowfish_decipher(blf_ctx *c, u_int32_t *x)
{
 u_int32_t Xl;
 u_int32_t Xr;
 u_int32_t *s = c->S[0];
 u_int32_t *p = c->P;
 Xl = x[0];
 Xr = x[1];
 Xl ^= p[17];
 (Xr ^= ((((s)[ (((Xl)>>24)&0xFF)] + (s)[0x100 + (((Xl)>>16)&0xFF)]) ^ (s)[0x200 + (((Xl)>> 8)&0xFF)]) + (s)[0x300 + ( (Xl) &0xFF)]) ^ (p)[16]); (Xl ^= ((((s)[ (((Xr)>>24)&0xFF)] + (s)[0x100 + (((Xr)>>16)&0xFF)]) ^ (s)[0x200 + (((Xr)>> 8)&0xFF)]) + (s)[0x300 + ( (Xr) &0xFF)]) ^ (p)[15]);
 (Xr ^= ((((s)[ (((Xl)>>24)&0xFF)] + (s)[0x100 + (((Xl)>>16)&0xFF)]) ^ (s)[0x200 + (((Xl)>> 8)&0xFF)]) + (s)[0x300 + ( (Xl) &0xFF)]) ^ (p)[14]); (Xl ^= ((((s)[ (((Xr)>>24)&0xFF)] + (s)[0x100 + (((Xr)>>16)&0xFF)]) ^ (s)[0x200 + (((Xr)>> 8)&0xFF)]) + (s)[0x300 + ( (Xr) &0xFF)]) ^ (p)[13]);
 (Xr ^= ((((s)[ (((Xl)>>24)&0xFF)] + (s)[0x100 + (((Xl)>>16)&0xFF)]) ^ (s)[0x200 + (((Xl)>> 8)&0xFF)]) + (s)[0x300 + ( (Xl) &0xFF)]) ^ (p)[12]); (Xl ^= ((((s)[ (((Xr)>>24)&0xFF)] + (s)[0x100 + (((Xr)>>16)&0xFF)]) ^ (s)[0x200 + (((Xr)>> 8)&0xFF)]) + (s)[0x300 + ( (Xr) &0xFF)]) ^ (p)[11]);
 (Xr ^= ((((s)[ (((Xl)>>24)&0xFF)] + (s)[0x100 + (((Xl)>>16)&0xFF)]) ^ (s)[0x200 + (((Xl)>> 8)&0xFF)]) + (s)[0x300 + ( (Xl) &0xFF)]) ^ (p)[10]); (Xl ^= ((((s)[ (((Xr)>>24)&0xFF)] + (s)[0x100 + (((Xr)>>16)&0xFF)]) ^ (s)[0x200 + (((Xr)>> 8)&0xFF)]) + (s)[0x300 + ( (Xr) &0xFF)]) ^ (p)[9]);
 (Xr ^= ((((s)[ (((Xl)>>24)&0xFF)] + (s)[0x100 + (((Xl)>>16)&0xFF)]) ^ (s)[0x200 + (((Xl)>> 8)&0xFF)]) + (s)[0x300 + ( (Xl) &0xFF)]) ^ (p)[8]); (Xl ^= ((((s)[ (((Xr)>>24)&0xFF)] + (s)[0x100 + (((Xr)>>16)&0xFF)]) ^ (s)[0x200 + (((Xr)>> 8)&0xFF)]) + (s)[0x300 + ( (Xr) &0xFF)]) ^ (p)[7]);
 (Xr ^= ((((s)[ (((Xl)>>24)&0xFF)] + (s)[0x100 + (((Xl)>>16)&0xFF)]) ^ (s)[0x200 + (((Xl)>> 8)&0xFF)]) + (s)[0x300 + ( (Xl) &0xFF)]) ^ (p)[6]); (Xl ^= ((((s)[ (((Xr)>>24)&0xFF)] + (s)[0x100 + (((Xr)>>16)&0xFF)]) ^ (s)[0x200 + (((Xr)>> 8)&0xFF)]) + (s)[0x300 + ( (Xr) &0xFF)]) ^ (p)[5]);
 (Xr ^= ((((s)[ (((Xl)>>24)&0xFF)] + (s)[0x100 + (((Xl)>>16)&0xFF)]) ^ (s)[0x200 + (((Xl)>> 8)&0xFF)]) + (s)[0x300 + ( (Xl) &0xFF)]) ^ (p)[4]); (Xl ^= ((((s)[ (((Xr)>>24)&0xFF)] + (s)[0x100 + (((Xr)>>16)&0xFF)]) ^ (s)[0x200 + (((Xr)>> 8)&0xFF)]) + (s)[0x300 + ( (Xr) &0xFF)]) ^ (p)[3]);
 (Xr ^= ((((s)[ (((Xl)>>24)&0xFF)] + (s)[0x100 + (((Xl)>>16)&0xFF)]) ^ (s)[0x200 + (((Xl)>> 8)&0xFF)]) + (s)[0x300 + ( (Xl) &0xFF)]) ^ (p)[2]); (Xl ^= ((((s)[ (((Xr)>>24)&0xFF)] + (s)[0x100 + (((Xr)>>16)&0xFF)]) ^ (s)[0x200 + (((Xr)>> 8)&0xFF)]) + (s)[0x300 + ( (Xr) &0xFF)]) ^ (p)[1]);
 x[0] = Xr ^ p[0];
 x[1] = Xl;
}
void
Blowfish_initstate(blf_ctx *c)
{
 static const blf_ctx initstate =
 { {
  {
   0xd1310ba6, 0x98dfb5ac, 0x2ffd72db, 0xd01adfb7,
   0xb8e1afed, 0x6a267e96, 0xba7c9045, 0xf12c7f99,
   0x24a19947, 0xb3916cf7, 0x0801f2e2, 0x858efc16,
   0x636920d8, 0x71574e69, 0xa458fea3, 0xf4933d7e,
   0x0d95748f, 0x728eb658, 0x718bcd58, 0x82154aee,
   0x7b54a41d, 0xc25a59b5, 0x9c30d539, 0x2af26013,
   0xc5d1b023, 0x286085f0, 0xca417918, 0xb8db38ef,
   0x8e79dcb0, 0x603a180e, 0x6c9e0e8b, 0xb01e8a3e,
   0xd71577c1, 0xbd314b27, 0x78af2fda, 0x55605c60,
   0xe65525f3, 0xaa55ab94, 0x57489862, 0x63e81440,
   0x55ca396a, 0x2aab10b6, 0xb4cc5c34, 0x1141e8ce,
   0xa15486af, 0x7c72e993, 0xb3ee1411, 0x636fbc2a,
   0x2ba9c55d, 0x741831f6, 0xce5c3e16, 0x9b87931e,
   0xafd6ba33, 0x6c24cf5c, 0x7a325381, 0x28958677,
   0x3b8f4898, 0x6b4bb9af, 0xc4bfe81b, 0x66282193,
   0x61d809cc, 0xfb21a991, 0x487cac60, 0x5dec8032,
   0xef845d5d, 0xe98575b1, 0xdc262302, 0xeb651b88,
   0x23893e81, 0xd396acc5, 0x0f6d6ff3, 0x83f44239,
   0x2e0b4482, 0xa4842004, 0x69c8f04a, 0x9e1f9b5e,
   0x21c66842, 0xf6e96c9a, 0x670c9c61, 0xabd388f0,
   0x6a51a0d2, 0xd8542f68, 0x960fa728, 0xab5133a3,
   0x6eef0b6c, 0x137a3be4, 0xba3bf050, 0x7efb2a98,
   0xa1f1651d, 0x39af0176, 0x66ca593e, 0x82430e88,
   0x8cee8619, 0x456f9fb4, 0x7d84a5c3, 0x3b8b5ebe,
   0xe06f75d8, 0x85c12073, 0x401a449f, 0x56c16aa6,
   0x4ed3aa62, 0x363f7706, 0x1bfedf72, 0x429b023d,
   0x37d0d724, 0xd00a1248, 0xdb0fead3, 0x49f1c09b,
   0x075372c9, 0x80991b7b, 0x25d479d8, 0xf6e8def7,
   0xe3fe501a, 0xb6794c3b, 0x976ce0bd, 0x04c006ba,
   0xc1a94fb6, 0x409f60c4, 0x5e5c9ec2, 0x196a2463,
   0x68fb6faf, 0x3e6c53b5, 0x1339b2eb, 0x3b52ec6f,
   0x6dfc511f, 0x9b30952c, 0xcc814544, 0xaf5ebd09,
   0xbee3d004, 0xde334afd, 0x660f2807, 0x192e4bb3,
   0xc0cba857, 0x45c8740f, 0xd20b5f39, 0xb9d3fbdb,
   0x5579c0bd, 0x1a60320a, 0xd6a100c6, 0x402c7279,
   0x679f25fe, 0xfb1fa3cc, 0x8ea5e9f8, 0xdb3222f8,
   0x3c7516df, 0xfd616b15, 0x2f501ec8, 0xad0552ab,
   0x323db5fa, 0xfd238760, 0x53317b48, 0x3e00df82,
   0x9e5c57bb, 0xca6f8ca0, 0x1a87562e, 0xdf1769db,
   0xd542a8f6, 0x287effc3, 0xac6732c6, 0x8c4f5573,
   0x695b27b0, 0xbbca58c8, 0xe1ffa35d, 0xb8f011a0,
   0x10fa3d98, 0xfd2183b8, 0x4afcb56c, 0x2dd1d35b,
   0x9a53e479, 0xb6f84565, 0xd28e49bc, 0x4bfb9790,
   0xe1ddf2da, 0xa4cb7e33, 0x62fb1341, 0xcee4c6e8,
   0xef20cada, 0x36774c01, 0xd07e9efe, 0x2bf11fb4,
   0x95dbda4d, 0xae909198, 0xeaad8e71, 0x6b93d5a0,
   0xd08ed1d0, 0xafc725e0, 0x8e3c5b2f, 0x8e7594b7,
   0x8ff6e2fb, 0xf2122b64, 0x8888b812, 0x900df01c,
   0x4fad5ea0, 0x688fc31c, 0xd1cff191, 0xb3a8c1ad,
   0x2f2f2218, 0xbe0e1777, 0xea752dfe, 0x8b021fa1,
   0xe5a0cc0f, 0xb56f74e8, 0x18acf3d6, 0xce89e299,
   0xb4a84fe0, 0xfd13e0b7, 0x7cc43b81, 0xd2ada8d9,
   0x165fa266, 0x80957705, 0x93cc7314, 0x211a1477,
   0xe6ad2065, 0x77b5fa86, 0xc75442f5, 0xfb9d35cf,
   0xebcdaf0c, 0x7b3e89a0, 0xd6411bd3, 0xae1e7e49,
   0x00250e2d, 0x2071b35e, 0x226800bb, 0x57b8e0af,
   0x2464369b, 0xf009b91e, 0x5563911d, 0x59dfa6aa,
   0x78c14389, 0xd95a537f, 0x207d5ba2, 0x02e5b9c5,
   0x83260376, 0x6295cfa9, 0x11c81968, 0x4e734a41,
   0xb3472dca, 0x7b14a94a, 0x1b510052, 0x9a532915,
   0xd60f573f, 0xbc9bc6e4, 0x2b60a476, 0x81e67400,
   0x08ba6fb5, 0x571be91f, 0xf296ec6b, 0x2a0dd915,
   0xb6636521, 0xe7b9f9b6, 0xff34052e, 0xc5855664,
  0x53b02d5d, 0xa99f8fa1, 0x08ba4799, 0x6e85076a},
  {
   0x4b7a70e9, 0xb5b32944, 0xdb75092e, 0xc4192623,
   0xad6ea6b0, 0x49a7df7d, 0x9cee60b8, 0x8fedb266,
   0xecaa8c71, 0x699a17ff, 0x5664526c, 0xc2b19ee1,
   0x193602a5, 0x75094c29, 0xa0591340, 0xe4183a3e,
   0x3f54989a, 0x5b429d65, 0x6b8fe4d6, 0x99f73fd6,
   0xa1d29c07, 0xefe830f5, 0x4d2d38e6, 0xf0255dc1,
   0x4cdd2086, 0x8470eb26, 0x6382e9c6, 0x021ecc5e,
   0x09686b3f, 0x3ebaefc9, 0x3c971814, 0x6b6a70a1,
   0x687f3584, 0x52a0e286, 0xb79c5305, 0xaa500737,
   0x3e07841c, 0x7fdeae5c, 0x8e7d44ec, 0x5716f2b8,
   0xb03ada37, 0xf0500c0d, 0xf01c1f04, 0x0200b3ff,
   0xae0cf51a, 0x3cb574b2, 0x25837a58, 0xdc0921bd,
   0xd19113f9, 0x7ca92ff6, 0x94324773, 0x22f54701,
   0x3ae5e581, 0x37c2dadc, 0xc8b57634, 0x9af3dda7,
   0xa9446146, 0x0fd0030e, 0xecc8c73e, 0xa4751e41,
   0xe238cd99, 0x3bea0e2f, 0x3280bba1, 0x183eb331,
   0x4e548b38, 0x4f6db908, 0x6f420d03, 0xf60a04bf,
   0x2cb81290, 0x24977c79, 0x5679b072, 0xbcaf89af,
   0xde9a771f, 0xd9930810, 0xb38bae12, 0xdccf3f2e,
   0x5512721f, 0x2e6b7124, 0x501adde6, 0x9f84cd87,
   0x7a584718, 0x7408da17, 0xbc9f9abc, 0xe94b7d8c,
   0xec7aec3a, 0xdb851dfa, 0x63094366, 0xc464c3d2,
   0xef1c1847, 0x3215d908, 0xdd433b37, 0x24c2ba16,
   0x12a14d43, 0x2a65c451, 0x50940002, 0x133ae4dd,
   0x71dff89e, 0x10314e55, 0x81ac77d6, 0x5f11199b,
   0x043556f1, 0xd7a3c76b, 0x3c11183b, 0x5924a509,
   0xf28fe6ed, 0x97f1fbfa, 0x9ebabf2c, 0x1e153c6e,
   0x86e34570, 0xeae96fb1, 0x860e5e0a, 0x5a3e2ab3,
   0x771fe71c, 0x4e3d06fa, 0x2965dcb9, 0x99e71d0f,
   0x803e89d6, 0x5266c825, 0x2e4cc978, 0x9c10b36a,
   0xc6150eba, 0x94e2ea78, 0xa5fc3c53, 0x1e0a2df4,
   0xf2f74ea7, 0x361d2b3d, 0x1939260f, 0x19c27960,
   0x5223a708, 0xf71312b6, 0xebadfe6e, 0xeac31f66,
   0xe3bc4595, 0xa67bc883, 0xb17f37d1, 0x018cff28,
   0xc332ddef, 0xbe6c5aa5, 0x65582185, 0x68ab9802,
   0xeecea50f, 0xdb2f953b, 0x2aef7dad, 0x5b6e2f84,
   0x1521b628, 0x29076170, 0xecdd4775, 0x619f1510,
   0x13cca830, 0xeb61bd96, 0x0334fe1e, 0xaa0363cf,
   0xb5735c90, 0x4c70a239, 0xd59e9e0b, 0xcbaade14,
   0xeecc86bc, 0x60622ca7, 0x9cab5cab, 0xb2f3846e,
   0x648b1eaf, 0x19bdf0ca, 0xa02369b9, 0x655abb50,
   0x40685a32, 0x3c2ab4b3, 0x319ee9d5, 0xc021b8f7,
   0x9b540b19, 0x875fa099, 0x95f7997e, 0x623d7da8,
   0xf837889a, 0x97e32d77, 0x11ed935f, 0x16681281,
   0x0e358829, 0xc7e61fd6, 0x96dedfa1, 0x7858ba99,
   0x57f584a5, 0x1b227263, 0x9b83c3ff, 0x1ac24696,
   0xcdb30aeb, 0x532e3054, 0x8fd948e4, 0x6dbc3128,
   0x58ebf2ef, 0x34c6ffea, 0xfe28ed61, 0xee7c3c73,
   0x5d4a14d9, 0xe864b7e3, 0x42105d14, 0x203e13e0,
   0x45eee2b6, 0xa3aaabea, 0xdb6c4f15, 0xfacb4fd0,
   0xc742f442, 0xef6abbb5, 0x654f3b1d, 0x41cd2105,
   0xd81e799e, 0x86854dc7, 0xe44b476a, 0x3d816250,
   0xcf62a1f2, 0x5b8d2646, 0xfc8883a0, 0xc1c7b6a3,
   0x7f1524c3, 0x69cb7492, 0x47848a0b, 0x5692b285,
   0x095bbf00, 0xad19489d, 0x1462b174, 0x23820e00,
   0x58428d2a, 0x0c55f5ea, 0x1dadf43e, 0x233f7061,
   0x3372f092, 0x8d937e41, 0xd65fecf1, 0x6c223bdb,
   0x7cde3759, 0xcbee7460, 0x4085f2a7, 0xce77326e,
   0xa6078084, 0x19f8509e, 0xe8efd855, 0x61d99735,
   0xa969a7aa, 0xc50c06c2, 0x5a04abfc, 0x800bcadc,
   0x9e447a2e, 0xc3453484, 0xfdd56705, 0x0e1e9ec9,
   0xdb73dbd3, 0x105588cd, 0x675fda79, 0xe3674340,
   0xc5c43465, 0x713e38d8, 0x3d28f89e, 0xf16dff20,
  0x153e21e7, 0x8fb03d4a, 0xe6e39f2b, 0xdb83adf7},
  {
   0xe93d5a68, 0x948140f7, 0xf64c261c, 0x94692934,
   0x411520f7, 0x7602d4f7, 0xbcf46b2e, 0xd4a20068,
   0xd4082471, 0x3320f46a, 0x43b7d4b7, 0x500061af,
   0x1e39f62e, 0x97244546, 0x14214f74, 0xbf8b8840,
   0x4d95fc1d, 0x96b591af, 0x70f4ddd3, 0x66a02f45,
   0xbfbc09ec, 0x03bd9785, 0x7fac6dd0, 0x31cb8504,
   0x96eb27b3, 0x55fd3941, 0xda2547e6, 0xabca0a9a,
   0x28507825, 0x530429f4, 0x0a2c86da, 0xe9b66dfb,
   0x68dc1462, 0xd7486900, 0x680ec0a4, 0x27a18dee,
   0x4f3ffea2, 0xe887ad8c, 0xb58ce006, 0x7af4d6b6,
   0xaace1e7c, 0xd3375fec, 0xce78a399, 0x406b2a42,
   0x20fe9e35, 0xd9f385b9, 0xee39d7ab, 0x3b124e8b,
   0x1dc9faf7, 0x4b6d1856, 0x26a36631, 0xeae397b2,
   0x3a6efa74, 0xdd5b4332, 0x6841e7f7, 0xca7820fb,
   0xfb0af54e, 0xd8feb397, 0x454056ac, 0xba489527,
   0x55533a3a, 0x20838d87, 0xfe6ba9b7, 0xd096954b,
   0x55a867bc, 0xa1159a58, 0xcca92963, 0x99e1db33,
   0xa62a4a56, 0x3f3125f9, 0x5ef47e1c, 0x9029317c,
   0xfdf8e802, 0x04272f70, 0x80bb155c, 0x05282ce3,
   0x95c11548, 0xe4c66d22, 0x48c1133f, 0xc70f86dc,
   0x07f9c9ee, 0x41041f0f, 0x404779a4, 0x5d886e17,
   0x325f51eb, 0xd59bc0d1, 0xf2bcc18f, 0x41113564,
   0x257b7834, 0x602a9c60, 0xdff8e8a3, 0x1f636c1b,
   0x0e12b4c2, 0x02e1329e, 0xaf664fd1, 0xcad18115,
   0x6b2395e0, 0x333e92e1, 0x3b240b62, 0xeebeb922,
   0x85b2a20e, 0xe6ba0d99, 0xde720c8c, 0x2da2f728,
   0xd0127845, 0x95b794fd, 0x647d0862, 0xe7ccf5f0,
   0x5449a36f, 0x877d48fa, 0xc39dfd27, 0xf33e8d1e,
   0x0a476341, 0x992eff74, 0x3a6f6eab, 0xf4f8fd37,
   0xa812dc60, 0xa1ebddf8, 0x991be14c, 0xdb6e6b0d,
   0xc67b5510, 0x6d672c37, 0x2765d43b, 0xdcd0e804,
   0xf1290dc7, 0xcc00ffa3, 0xb5390f92, 0x690fed0b,
   0x667b9ffb, 0xcedb7d9c, 0xa091cf0b, 0xd9155ea3,
   0xbb132f88, 0x515bad24, 0x7b9479bf, 0x763bd6eb,
   0x37392eb3, 0xcc115979, 0x8026e297, 0xf42e312d,
   0x6842ada7, 0xc66a2b3b, 0x12754ccc, 0x782ef11c,
   0x6a124237, 0xb79251e7, 0x06a1bbe6, 0x4bfb6350,
   0x1a6b1018, 0x11caedfa, 0x3d25bdd8, 0xe2e1c3c9,
   0x44421659, 0x0a121386, 0xd90cec6e, 0xd5abea2a,
   0x64af674e, 0xda86a85f, 0xbebfe988, 0x64e4c3fe,
   0x9dbc8057, 0xf0f7c086, 0x60787bf8, 0x6003604d,
   0xd1fd8346, 0xf6381fb0, 0x7745ae04, 0xd736fccc,
   0x83426b33, 0xf01eab71, 0xb0804187, 0x3c005e5f,
   0x77a057be, 0xbde8ae24, 0x55464299, 0xbf582e61,
   0x4e58f48f, 0xf2ddfda2, 0xf474ef38, 0x8789bdc2,
   0x5366f9c3, 0xc8b38e74, 0xb475f255, 0x46fcd9b9,
   0x7aeb2661, 0x8b1ddf84, 0x846a0e79, 0x915f95e2,
   0x466e598e, 0x20b45770, 0x8cd55591, 0xc902de4c,
   0xb90bace1, 0xbb8205d0, 0x11a86248, 0x7574a99e,
   0xb77f19b6, 0xe0a9dc09, 0x662d09a1, 0xc4324633,
   0xe85a1f02, 0x09f0be8c, 0x4a99a025, 0x1d6efe10,
   0x1ab93d1d, 0x0ba5a4df, 0xa186f20f, 0x2868f169,
   0xdcb7da83, 0x573906fe, 0xa1e2ce9b, 0x4fcd7f52,
   0x50115e01, 0xa70683fa, 0xa002b5c4, 0x0de6d027,
   0x9af88c27, 0x773f8641, 0xc3604c06, 0x61a806b5,
   0xf0177a28, 0xc0f586e0, 0x006058aa, 0x30dc7d62,
   0x11e69ed7, 0x2338ea63, 0x53c2dd94, 0xc2c21634,
   0xbbcbee56, 0x90bcb6de, 0xebfc7da1, 0xce591d76,
   0x6f05e409, 0x4b7c0188, 0x39720a3d, 0x7c927c24,
   0x86e3725f, 0x724d9db9, 0x1ac15bb4, 0xd39eb8fc,
   0xed545578, 0x08fca5b5, 0xd83d7cd3, 0x4dad0fc4,
   0x1e50ef5e, 0xb161e6f8, 0xa28514d9, 0x6c51133c,
   0x6fd5c7e7, 0x56e14ec4, 0x362abfce, 0xddc6c837,
  0xd79a3234, 0x92638212, 0x670efa8e, 0x406000e0},
  {
   0x3a39ce37, 0xd3faf5cf, 0xabc27737, 0x5ac52d1b,
   0x5cb0679e, 0x4fa33742, 0xd3822740, 0x99bc9bbe,
   0xd5118e9d, 0xbf0f7315, 0xd62d1c7e, 0xc700c47b,
   0xb78c1b6b, 0x21a19045, 0xb26eb1be, 0x6a366eb4,
   0x5748ab2f, 0xbc946e79, 0xc6a376d2, 0x6549c2c8,
   0x530ff8ee, 0x468dde7d, 0xd5730a1d, 0x4cd04dc6,
   0x2939bbdb, 0xa9ba4650, 0xac9526e8, 0xbe5ee304,
   0xa1fad5f0, 0x6a2d519a, 0x63ef8ce2, 0x9a86ee22,
   0xc089c2b8, 0x43242ef6, 0xa51e03aa, 0x9cf2d0a4,
   0x83c061ba, 0x9be96a4d, 0x8fe51550, 0xba645bd6,
   0x2826a2f9, 0xa73a3ae1, 0x4ba99586, 0xef5562e9,
   0xc72fefd3, 0xf752f7da, 0x3f046f69, 0x77fa0a59,
   0x80e4a915, 0x87b08601, 0x9b09e6ad, 0x3b3ee593,
   0xe990fd5a, 0x9e34d797, 0x2cf0b7d9, 0x022b8b51,
   0x96d5ac3a, 0x017da67d, 0xd1cf3ed6, 0x7c7d2d28,
   0x1f9f25cf, 0xadf2b89b, 0x5ad6b472, 0x5a88f54c,
   0xe029ac71, 0xe019a5e6, 0x47b0acfd, 0xed93fa9b,
   0xe8d3c48d, 0x283b57cc, 0xf8d56629, 0x79132e28,
   0x785f0191, 0xed756055, 0xf7960e44, 0xe3d35e8c,
   0x15056dd4, 0x88f46dba, 0x03a16125, 0x0564f0bd,
   0xc3eb9e15, 0x3c9057a2, 0x97271aec, 0xa93a072a,
   0x1b3f6d9b, 0x1e6321f5, 0xf59c66fb, 0x26dcf319,
   0x7533d928, 0xb155fdf5, 0x03563482, 0x8aba3cbb,
   0x28517711, 0xc20ad9f8, 0xabcc5167, 0xccad925f,
   0x4de81751, 0x3830dc8e, 0x379d5862, 0x9320f991,
   0xea7a90c2, 0xfb3e7bce, 0x5121ce64, 0x774fbe32,
   0xa8b6e37e, 0xc3293d46, 0x48de5369, 0x6413e680,
   0xa2ae0810, 0xdd6db224, 0x69852dfd, 0x09072166,
   0xb39a460a, 0x6445c0dd, 0x586cdecf, 0x1c20c8ae,
   0x5bbef7dd, 0x1b588d40, 0xccd2017f, 0x6bb4e3bb,
   0xdda26a7e, 0x3a59ff45, 0x3e350a44, 0xbcb4cdd5,
   0x72eacea8, 0xfa6484bb, 0x8d6612ae, 0xbf3c6f47,
   0xd29be463, 0x542f5d9e, 0xaec2771b, 0xf64e6370,
   0x740e0d8d, 0xe75b1357, 0xf8721671, 0xaf537d5d,
   0x4040cb08, 0x4eb4e2cc, 0x34d2466a, 0x0115af84,
   0xe1b00428, 0x95983a1d, 0x06b89fb4, 0xce6ea048,
   0x6f3f3b82, 0x3520ab82, 0x011a1d4b, 0x277227f8,
   0x611560b1, 0xe7933fdc, 0xbb3a792b, 0x344525bd,
   0xa08839e1, 0x51ce794b, 0x2f32c9b7, 0xa01fbac9,
   0xe01cc87e, 0xbcc7d1f6, 0xcf0111c3, 0xa1e8aac7,
   0x1a908749, 0xd44fbd9a, 0xd0dadecb, 0xd50ada38,
   0x0339c32a, 0xc6913667, 0x8df9317c, 0xe0b12b4f,
   0xf79e59b7, 0x43f5bb3a, 0xf2d519ff, 0x27d9459c,
   0xbf97222c, 0x15e6fc2a, 0x0f91fc71, 0x9b941525,
   0xfae59361, 0xceb69ceb, 0xc2a86459, 0x12baa8d1,
   0xb6c1075e, 0xe3056a0c, 0x10d25065, 0xcb03a442,
   0xe0ec6e0e, 0x1698db3b, 0x4c98a0be, 0x3278e964,
   0x9f1f9532, 0xe0d392df, 0xd3a0342b, 0x8971f21e,
   0x1b0a7441, 0x4ba3348c, 0xc5be7120, 0xc37632d8,
   0xdf359f8d, 0x9b992f2e, 0xe60b6f47, 0x0fe3f11d,
   0xe54cda54, 0x1edad891, 0xce6279cf, 0xcd3e7e6f,
   0x1618b166, 0xfd2c1d05, 0x848fd2c5, 0xf6fb2299,
   0xf523f357, 0xa6327623, 0x93a83531, 0x56cccd02,
   0xacf08162, 0x5a75ebb5, 0x6e163697, 0x88d273cc,
   0xde966292, 0x81b949d0, 0x4c50901b, 0x71c65614,
   0xe6c6c7bd, 0x327a140a, 0x45e1d006, 0xc3f27b9a,
   0xc9aa53fd, 0x62a80f00, 0xbb25bfe2, 0x35bdd2f6,
   0x71126905, 0xb2040222, 0xb6cbcf7c, 0xcd769c2b,
   0x53113ec0, 0x1640e3d3, 0x38abbd60, 0x2547adf0,
   0xba38209c, 0xf746ce76, 0x77afa1c5, 0x20756060,
   0x85cbfe4e, 0x8ae88dd8, 0x7aaaf9b0, 0x4cf9aa7e,
   0x1948c25c, 0x02fb8a8c, 0x01c36ae4, 0xd6ebe1f9,
   0x90d4f869, 0xa65cdea0, 0x3f09252d, 0xc208e69f,
  0xb74e6132, 0xce77e25b, 0x578fdfe3, 0x3ac372e6}
 },
 {
  0x243f6a88, 0x85a308d3, 0x13198a2e, 0x03707344,
  0xa4093822, 0x299f31d0, 0x082efa98, 0xec4e6c89,
  0x452821e6, 0x38d01377, 0xbe5466cf, 0x34e90c6c,
  0xc0ac29b7, 0xc97c50dd, 0x3f84d5b5, 0xb5470917,
  0x9216d5d9, 0x8979fb1b
 } };
 *c = initstate;
}
u_int32_t
Blowfish_stream2word(const u_int8_t *data, u_int16_t databytes,
    u_int16_t *current)
{
 u_int8_t i;
 u_int16_t j;
 u_int32_t temp;
 temp = 0x00000000;
 j = *current;
 for (i = 0; i < 4; i++, j++) {
  if (j >= databytes)
   j = 0;
  temp = (temp << 8) | data[j];
 }
 *current = j;
 return temp;
}
void
Blowfish_expand0state(blf_ctx *c, const u_int8_t *key, u_int16_t keybytes)
{
 u_int16_t i;
 u_int16_t j;
 u_int16_t k;
 u_int32_t temp;
 u_int32_t data[2];
 j = 0;
 for (i = 0; i < 16 + 2; i++) {
  temp = Blowfish_stream2word(key, keybytes, &j);
  c->P[i] = c->P[i] ^ temp;
 }
 j = 0;
 data[0] = 0x00000000;
 data[1] = 0x00000000;
 for (i = 0; i < 16 + 2; i += 2) {
  Blowfish_encipher(c, data);
  c->P[i] = data[0];
  c->P[i + 1] = data[1];
 }
 for (i = 0; i < 4; i++) {
  for (k = 0; k < 256; k += 2) {
   Blowfish_encipher(c, data);
   c->S[i][k] = data[0];
   c->S[i][k + 1] = data[1];
  }
 }
}
void
Blowfish_expandstate(blf_ctx *c, const u_int8_t *data, u_int16_t databytes,
    const u_int8_t *key, u_int16_t keybytes)
{
 u_int16_t i;
 u_int16_t j;
 u_int16_t k;
 u_int32_t temp;
 u_int32_t d[2];
 j = 0;
 for (i = 0; i < 16 + 2; i++) {
  temp = Blowfish_stream2word(key, keybytes, &j);
  c->P[i] = c->P[i] ^ temp;
 }
 j = 0;
 d[0] = 0x00000000;
 d[1] = 0x00000000;
 for (i = 0; i < 16 + 2; i += 2) {
  d[0] ^= Blowfish_stream2word(data, databytes, &j);
  d[1] ^= Blowfish_stream2word(data, databytes, &j);
  Blowfish_encipher(c, d);
  c->P[i] = d[0];
  c->P[i + 1] = d[1];
 }
 for (i = 0; i < 4; i++) {
  for (k = 0; k < 256; k += 2) {
   d[0]^= Blowfish_stream2word(data, databytes, &j);
   d[1] ^= Blowfish_stream2word(data, databytes, &j);
   Blowfish_encipher(c, d);
   c->S[i][k] = d[0];
   c->S[i][k + 1] = d[1];
  }
 }
}
void
blf_key(blf_ctx *c, const u_int8_t *k, u_int16_t len)
{
 Blowfish_initstate(c);
 Blowfish_expand0state(c, k, len);
}
void
blf_enc(blf_ctx *c, u_int32_t *data, u_int16_t blocks)
{
 u_int32_t *d;
 u_int16_t i;
 d = data;
 for (i = 0; i < blocks; i++) {
  Blowfish_encipher(c, d);
  d += 2;
 }
}
void
blf_dec(blf_ctx *c, u_int32_t *data, u_int16_t blocks)
{
 u_int32_t *d;
 u_int16_t i;
 d = data;
 for (i = 0; i < blocks; i++) {
  Blowfish_decipher(c, d);
  d += 2;
 }
}
void
blf_ecb_encrypt(blf_ctx *c, u_int8_t *data, u_int32_t len)
{
 u_int32_t l, r, d[2];
 u_int32_t i;
 for (i = 0; i < len; i += 8) {
  l = data[0] << 24 | data[1] << 16 | data[2] << 8 | data[3];
  r = data[4] << 24 | data[5] << 16 | data[6] << 8 | data[7];
  d[0] = l;
  d[1] = r;
  Blowfish_encipher(c, d);
  l = d[0];
  r = d[1];
  data[0] = l >> 24 & 0xff;
  data[1] = l >> 16 & 0xff;
  data[2] = l >> 8 & 0xff;
  data[3] = l & 0xff;
  data[4] = r >> 24 & 0xff;
  data[5] = r >> 16 & 0xff;
  data[6] = r >> 8 & 0xff;
  data[7] = r & 0xff;
  data += 8;
 }
}
void
blf_ecb_decrypt(blf_ctx *c, u_int8_t *data, u_int32_t len)
{
 u_int32_t l, r, d[2];
 u_int32_t i;
 for (i = 0; i < len; i += 8) {
  l = data[0] << 24 | data[1] << 16 | data[2] << 8 | data[3];
  r = data[4] << 24 | data[5] << 16 | data[6] << 8 | data[7];
  d[0] = l;
  d[1] = r;
  Blowfish_decipher(c, d);
  l = d[0];
  r = d[1];
  data[0] = l >> 24 & 0xff;
  data[1] = l >> 16 & 0xff;
  data[2] = l >> 8 & 0xff;
  data[3] = l & 0xff;
  data[4] = r >> 24 & 0xff;
  data[5] = r >> 16 & 0xff;
  data[6] = r >> 8 & 0xff;
  data[7] = r & 0xff;
  data += 8;
 }
}
void
blf_cbc_encrypt(blf_ctx *c, u_int8_t *iv, u_int8_t *data, u_int32_t len)
{
 u_int32_t l, r, d[2];
 u_int32_t i, j;
 for (i = 0; i < len; i += 8) {
  for (j = 0; j < 8; j++)
   data[j] ^= iv[j];
  l = data[0] << 24 | data[1] << 16 | data[2] << 8 | data[3];
  r = data[4] << 24 | data[5] << 16 | data[6] << 8 | data[7];
  d[0] = l;
  d[1] = r;
  Blowfish_encipher(c, d);
  l = d[0];
  r = d[1];
  data[0] = l >> 24 & 0xff;
  data[1] = l >> 16 & 0xff;
  data[2] = l >> 8 & 0xff;
  data[3] = l & 0xff;
  data[4] = r >> 24 & 0xff;
  data[5] = r >> 16 & 0xff;
  data[6] = r >> 8 & 0xff;
  data[7] = r & 0xff;
  iv = data;
  data += 8;
 }
}
void
blf_cbc_decrypt(blf_ctx *c, u_int8_t *iva, u_int8_t *data, u_int32_t len)
{
 u_int32_t l, r, d[2];
 u_int8_t *iv;
 u_int32_t i, j;
 iv = data + len - 16;
 data = data + len - 8;
 for (i = len - 8; i >= 8; i -= 8) {
  l = data[0] << 24 | data[1] << 16 | data[2] << 8 | data[3];
  r = data[4] << 24 | data[5] << 16 | data[6] << 8 | data[7];
  d[0] = l;
  d[1] = r;
  Blowfish_decipher(c, d);
  l = d[0];
  r = d[1];
  data[0] = l >> 24 & 0xff;
  data[1] = l >> 16 & 0xff;
  data[2] = l >> 8 & 0xff;
  data[3] = l & 0xff;
  data[4] = r >> 24 & 0xff;
  data[5] = r >> 16 & 0xff;
  data[6] = r >> 8 & 0xff;
  data[7] = r & 0xff;
  for (j = 0; j < 8; j++)
   data[j] ^= iv[j];
  iv -= 8;
  data -= 8;
 }
 l = data[0] << 24 | data[1] << 16 | data[2] << 8 | data[3];
 r = data[4] << 24 | data[5] << 16 | data[6] << 8 | data[7];
 d[0] = l;
 d[1] = r;
 Blowfish_decipher(c, d);
 l = d[0];
 r = d[1];
 data[0] = l >> 24 & 0xff;
 data[1] = l >> 16 & 0xff;
 data[2] = l >> 8 & 0xff;
 data[3] = l & 0xff;
 data[4] = r >> 24 & 0xff;
 data[5] = r >> 16 & 0xff;
 data[6] = r >> 8 & 0xff;
 data[7] = r & 0xff;
 for (j = 0; j < 8; j++)
  data[j] ^= iva[j];
}
