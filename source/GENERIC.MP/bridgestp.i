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
struct llc {
 u_int8_t llc_dsap;
 u_int8_t llc_ssap;
 union {
     struct {
  u_int8_t control;
  u_int8_t format_id;
  u_int8_t class;
  u_int8_t window_x2;
     } type_u;
     struct {
  u_int8_t num_snd_x2;
  u_int8_t num_rcv_x2;
     } type_i;
     struct {
  u_int8_t control;
  u_int8_t num_rcv_x2;
     } type_s;
     struct {
  u_int8_t control;
  struct frmrinfo {
   u_int8_t rej_pdu_0;
   u_int8_t rej_pdu_1;
   u_int8_t frmr_control;
   u_int8_t frmr_control_ext;
   u_int8_t frmr_cause;
  } frmrinfo;
     } type_frmr;
     struct {
  u_int8_t control;
  u_int8_t org_code[3];
  u_int16_t ether_type;
     } type_snap;
     struct {
  u_int8_t control;
  u_int8_t control_ext;
     } type_raw;
 } llc_un;
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
void task_set(struct task *, void (*)(void *), void *);
int task_add(struct taskq *, struct task *);
int task_del(struct taskq *, struct task *);
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
extern int netisr;
extern struct task if_input_task_locked;
void arpintr(void);
void ipintr(void);
void ip6intr(void);
void pppintr(void);
void bridgeintr(void);
void pppoeintr(void);
void switchintr(void);
void pfsyncintr(void);
void pipexintr(void);
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
struct ip {
 u_int ip_v:4,
    ip_hl:4;
 u_int8_t ip_tos;
 u_int16_t ip_len;
 u_int16_t ip_id;
 u_int16_t ip_off;
 u_int8_t ip_ttl;
 u_int8_t ip_p;
 u_int16_t ip_sum;
 struct in_addr ip_src, ip_dst;
};
struct ip_timestamp {
 u_int8_t ipt_code;
 u_int8_t ipt_len;
 u_int8_t ipt_ptr;
 u_int ipt_oflw:4,
   ipt_flg:4;
 union ipt_timestamp {
   u_int32_t ipt_time[1];
   struct ipt_ta {
   struct in_addr ipt_addr;
   u_int32_t ipt_time;
   } ipt_ta[1];
 } ipt_timestamp;
};
struct ippseudo {
 struct in_addr ippseudo_src;
 struct in_addr ippseudo_dst;
 u_int8_t ippseudo_pad;
 u_int8_t ippseudo_p;
 u_int16_t ippseudo_len;
};
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
struct radix_node {
 struct radix_mask *rn_mklist;
 struct radix_node *rn_p;
 short rn_b;
 char rn_bmask;
 u_char rn_flags;
 union {
  struct {
   caddr_t rn_Key;
   caddr_t rn_Mask;
   struct radix_node *rn_Dupedkey;
  } rn_leaf;
  struct {
   int rn_Off;
   struct radix_node *rn_L;
   struct radix_node *rn_R;
  } rn_node;
 } rn_u;
};
struct radix_mask {
 short rm_b;
 char rm_unused;
 u_char rm_flags;
 struct radix_mask *rm_mklist;
 union {
  caddr_t rmu_mask;
  struct radix_node *rmu_leaf;
 } rm_rmu;
 int rm_refs;
};
struct radix_node_head {
 struct radix_node *rnh_treetop;
 int rnh_addrsize;
 int rnh_pktsize;
 struct radix_node rnh_nodes[3];
 u_int rnh_rtableid;
};
void rn_init(unsigned int);
int rn_inithead(void **, int);
int rn_walktree(struct radix_node_head *,
     int (*)(struct radix_node *, void *, u_int), void *);
struct radix_node *rn_addroute(void *, void *, struct radix_node_head *,
       struct radix_node [2], u_int8_t);
struct radix_node *rn_delete(void *, void *, struct radix_node_head *,
       struct radix_node *);
struct radix_node *rn_lookup(void *, void *, struct radix_node_head *);
struct radix_node *rn_match(void *, struct radix_node_head *);
struct rt_kmetrics {
 u_int64_t rmx_pksent;
 int64_t rmx_expire;
 u_int rmx_locks;
 u_int rmx_mtu;
};
struct rt_metrics {
 u_int64_t rmx_pksent;
 int64_t rmx_expire;
 u_int rmx_locks;
 u_int rmx_mtu;
 u_int rmx_refcnt;
 u_int rmx_hopcount;
 u_int rmx_recvpipe;
 u_int rmx_sendpipe;
 u_int rmx_ssthresh;
 u_int rmx_rtt;
 u_int rmx_rttvar;
 u_int rmx_pad;
};
struct art_root {
 struct srp ar_root;
 struct rwlock ar_lock;
 uint8_t ar_bits[32];
 uint8_t ar_nlvl;
 uint8_t ar_alen;
 uint8_t ar_off;
 unsigned int ar_rtableid;
};
struct rtentry;
struct art_node {
 union {
     struct srpl an__rtlist;
     struct art_node *an__gc;
 } an_pointer;
 uint8_t an_plen;
};
void art_init(void);
struct art_root *art_alloc(unsigned int, unsigned int, unsigned int);
struct art_node *art_insert(struct art_root *, struct art_node *, void *,
       int);
struct art_node *art_delete(struct art_root *, struct art_node *, void *,
       int);
struct art_node *art_match(struct art_root *, void *, struct srp_ref *);
struct art_node *art_lookup(struct art_root *, void *, int,
       struct srp_ref *);
int art_walk(struct art_root *,
       int (*)(struct art_node *, void *), void *);
struct art_node *art_get(void *, uint8_t);
void art_put(struct art_node *);
int rtable_satoplen(sa_family_t, struct sockaddr *);
void rtable_init(void);
int rtable_exists(unsigned int);
int rtable_add(unsigned int);
unsigned int rtable_l2(unsigned int);
unsigned int rtable_loindex(unsigned int);
void rtable_l2set(unsigned int, unsigned int, unsigned int);
struct rtentry *rtable_lookup(unsigned int, struct sockaddr *,
       struct sockaddr *, struct sockaddr *, uint8_t);
struct rtentry *rtable_match(unsigned int, struct sockaddr *, uint32_t *);
struct rtentry *rtable_iterate(struct rtentry *);
int rtable_insert(unsigned int, struct sockaddr *,
       struct sockaddr *, struct sockaddr *, uint8_t,
       struct rtentry *);
int rtable_delete(unsigned int, struct sockaddr *,
       struct sockaddr *, struct rtentry *);
int rtable_walk(unsigned int, sa_family_t,
       int (*)(struct rtentry *, void *, unsigned int), void *);
int rtable_mpath_capable(unsigned int, sa_family_t);
struct rtentry *rtable_mpath_match(unsigned int, struct rtentry *,
       struct sockaddr *, uint8_t);
int rtable_mpath_reprio(unsigned int, struct sockaddr *,
       struct sockaddr *, uint8_t, struct rtentry *);
struct rtentry {
 struct sockaddr *rt_dest;
 struct { struct srp se_next; } rt_next;
 struct sockaddr *rt_gateway;
 struct ifaddr *rt_ifa;
 caddr_t rt_llinfo;
 union {
  struct rtentry *_nh;
  unsigned int _ref;
 } RT_gw;
 struct rtentry *rt_parent;
 struct { struct rttimer *lh_first; } rt_timer;
 struct rt_kmetrics rt_rmx;
 unsigned int rt_ifidx;
 unsigned int rt_flags;
 int rt_refcnt;
 int rt_plen;
 uint16_t rt_labelid;
 uint8_t rt_priority;
};
struct rtstat {
 u_int32_t rts_badredirect;
 u_int32_t rts_dynamic;
 u_int32_t rts_newgateway;
 u_int32_t rts_unreach;
 u_int32_t rts_wildcard;
};
struct rt_tableinfo {
 u_short rti_tableid;
 u_short rti_domainid;
};
struct rt_msghdr {
 u_short rtm_msglen;
 u_char rtm_version;
 u_char rtm_type;
 u_short rtm_hdrlen;
 u_short rtm_index;
 u_short rtm_tableid;
 u_char rtm_priority;
 u_char rtm_mpls;
 int rtm_addrs;
 int rtm_flags;
 int rtm_fmask;
 pid_t rtm_pid;
 int rtm_seq;
 int rtm_errno;
 u_int rtm_inits;
 struct rt_metrics rtm_rmx;
};
struct sockaddr_rtlabel {
 u_int8_t sr_len;
 sa_family_t sr_family;
 char sr_label[32];
};
struct sockaddr_rtdns {
 u_int8_t sr_len;
 sa_family_t sr_family;
 char sr_dns[128];
};
struct sockaddr_rtstatic {
 u_int8_t sr_len;
 sa_family_t sr_family;
 char sr_static[128];
};
struct sockaddr_rtsearch {
 u_int8_t sr_len;
 sa_family_t sr_family;
 char sr_search[128];
};
struct route {
 struct rtentry *ro_rt;
 u_long ro_tableid;
 struct sockaddr ro_dst;
};
struct rt_addrinfo {
 int rti_addrs;
 struct sockaddr *rti_info[15];
 int rti_flags;
 struct ifaddr *rti_ifa;
 struct rt_msghdr *rti_rtm;
 u_char rti_mpls;
};
struct cpumem {
 void *mem;
};
struct cpumem_iter {
 unsigned int cpu;
} ;
struct counters_ref {
 uint64_t g;
 uint64_t *c;
};
struct pool;
struct cpumem *cpumem_get(struct pool *);
void cpumem_put(struct pool *, struct cpumem *);
struct cpumem *cpumem_malloc(size_t, int);
struct cpumem *cpumem_malloc_ncpus(struct cpumem *, size_t, int);
void cpumem_free(struct cpumem *, int, size_t);
void *cpumem_first(struct cpumem_iter *, struct cpumem *);
void *cpumem_next(struct cpumem_iter *, struct cpumem *);
static inline void *
cpumem_enter(struct cpumem *cm)
{
 return (cm[(__curcpu->ci_number)].mem);
}
static inline void
cpumem_leave(struct cpumem *cm, void *mem)
{
}
struct cpumem *counters_alloc(unsigned int);
struct cpumem *counters_alloc_ncpus(struct cpumem *, unsigned int);
void counters_free(struct cpumem *, unsigned int);
void counters_read(struct cpumem *, uint64_t *, unsigned int);
void counters_zero(struct cpumem *, unsigned int);
static inline uint64_t *
counters_enter(struct counters_ref *ref, struct cpumem *cm)
{
 ref->c = cpumem_enter(cm);
 ref->g = ++(*ref->c);
 __asm volatile("membar " "#StoreStore" ::: "memory");
 return (ref->c + 1);
}
static inline void
counters_leave(struct counters_ref *ref, struct cpumem *cm)
{
 __asm volatile("membar " "#StoreStore" ::: "memory");
 (*ref->c) = ++ref->g;
 cpumem_leave(cm, ref->c);
}
static inline void
counters_inc(struct cpumem *cm, unsigned int c)
{
 struct counters_ref ref;
 uint64_t *counters;
 counters = counters_enter(&ref, cm);
 counters[c]++;
 counters_leave(&ref, cm);
}
static inline void
counters_add(struct cpumem *cm, unsigned int c, uint64_t v)
{
 struct counters_ref ref;
 uint64_t *counters;
 counters = counters_enter(&ref, cm);
 counters[c] += v;
 counters_leave(&ref, cm);
}
static inline void
counters_pkt(struct cpumem *cm, unsigned int c, unsigned int b, uint64_t v)
{
 struct counters_ref ref;
 uint64_t *counters;
 counters = counters_enter(&ref, cm);
 counters[c]++;
 counters[b] += v;
 counters_leave(&ref, cm);
}
enum rtstat_counters {
 rts_badredirect,
 rts_dynamic,
 rts_newgateway,
 rts_unreach,
 rts_wildcard,
 rts_ncounters
};
static inline void
rtstat_inc(enum rtstat_counters c)
{
 extern struct cpumem *rtcounters;
 counters_inc(rtcounters, c);
}
struct rttimer {
 struct { struct rttimer *tqe_next; struct rttimer **tqe_prev; } rtt_next;
 struct { struct rttimer *le_next; struct rttimer **le_prev; } rtt_link;
 struct rttimer_queue *rtt_queue;
 struct rtentry *rtt_rt;
 void (*rtt_func)(struct rtentry *,
       struct rttimer *);
 time_t rtt_time;
 u_int rtt_tableid;
};
struct rttimer_queue {
 long rtq_timeout;
 unsigned long rtq_count;
 struct { struct rttimer *tqh_first; struct rttimer **tqh_last; } rtq_head;
 struct { struct rttimer_queue *le_next; struct rttimer_queue **le_prev; } rtq_link;
};
const char *rtlabel_id2name(u_int16_t);
u_int16_t rtlabel_name2id(char *);
struct sockaddr *rtlabel_id2sa(u_int16_t, struct sockaddr_rtlabel *);
void rtlabel_unref(u_int16_t);
extern struct rtstat rtstat;
struct mbuf;
struct socket;
struct ifnet;
struct sockaddr_in6;
struct bfd_config;
void route_init(void);
void rtm_ifchg(struct ifnet *);
void rtm_ifannounce(struct ifnet *, int);
void rtm_bfd(struct bfd_config *);
void rt_maskedcopy(struct sockaddr *,
     struct sockaddr *, struct sockaddr *);
struct sockaddr *rt_plen2mask(struct rtentry *, struct sockaddr_in6 *);
void rtm_send(struct rtentry *, int, int, unsigned int);
void rtm_addr(struct rtentry *, int, struct ifaddr *);
void rtm_miss(int, struct rt_addrinfo *, int, uint8_t, u_int, int, u_int);
int rt_setgate(struct rtentry *, struct sockaddr *, u_int);
struct rtentry *rt_getll(struct rtentry *);
int rt_timer_add(struct rtentry *,
               void(*)(struct rtentry *, struct rttimer *),
        struct rttimer_queue *, u_int);
void rt_timer_remove_all(struct rtentry *);
struct rttimer_queue *rt_timer_queue_create(u_int);
void rt_timer_queue_change(struct rttimer_queue *, long);
void rt_timer_queue_destroy(struct rttimer_queue *);
unsigned long rt_timer_queue_count(struct rttimer_queue *);
void rt_timer_timer(void *);
int rtisvalid(struct rtentry *);
int rt_hash(struct rtentry *, struct sockaddr *, uint32_t *);
struct rtentry *rtalloc_mpath(struct sockaddr *, uint32_t *, u_int);
struct rtentry *rtalloc(struct sockaddr *, int, unsigned int);
void rtref(struct rtentry *);
void rtfree(struct rtentry *);
int rt_ifa_add(struct ifaddr *, int, struct sockaddr *);
int rt_ifa_del(struct ifaddr *, int, struct sockaddr *);
void rt_ifa_purge(struct ifaddr *);
int rt_ifa_addlocal(struct ifaddr *);
int rt_ifa_dellocal(struct ifaddr *);
void rtredirect(struct sockaddr *, struct sockaddr *, struct sockaddr *, struct rtentry **, unsigned int);
int rtrequest(int, struct rt_addrinfo *, u_int8_t, struct rtentry **,
      u_int);
int rtrequest_delete(struct rt_addrinfo *, u_int8_t, struct ifnet *,
      struct rtentry **, u_int);
void rt_if_track(struct ifnet *);
int rt_if_linkstate_change(struct rtentry *, void *, u_int);
int rtdeletemsg(struct rtentry *, struct ifnet *, u_int);
struct ip;
struct ip6_hdr;
struct mbuf_list;
typedef struct refcnt pf_refcnt_t;
enum { PF_INOUT, PF_IN, PF_OUT, PF_FWD };
enum { PF_PASS, PF_DROP, PF_SCRUB, PF_NOSCRUB, PF_NAT, PF_NONAT,
   PF_BINAT, PF_NOBINAT, PF_RDR, PF_NORDR, PF_SYNPROXY_DROP, PF_DEFER,
   PF_MATCH, PF_DIVERT, PF_RT, PF_AFRT };
enum { PF_TRANS_RULESET, PF_TRANS_ALTQ, PF_TRANS_TABLE };
enum { PF_OP_NONE, PF_OP_IRG, PF_OP_EQ, PF_OP_NE, PF_OP_LT,
   PF_OP_LE, PF_OP_GT, PF_OP_GE, PF_OP_XRG, PF_OP_RRG };
enum { PF_CHANGE_NONE, PF_CHANGE_ADD_HEAD, PF_CHANGE_ADD_TAIL,
   PF_CHANGE_ADD_BEFORE, PF_CHANGE_ADD_AFTER,
   PF_CHANGE_REMOVE, PF_CHANGE_GET_TICKET };
enum { PF_GET_NONE, PF_GET_CLR_CNTR };
enum { PF_SK_WIRE, PF_SK_STACK, PF_SK_BOTH };
enum { PF_PEER_SRC, PF_PEER_DST, PF_PEER_BOTH };
enum { PFTM_TCP_FIRST_PACKET, PFTM_TCP_OPENING, PFTM_TCP_ESTABLISHED,
   PFTM_TCP_CLOSING, PFTM_TCP_FIN_WAIT, PFTM_TCP_CLOSED,
   PFTM_UDP_FIRST_PACKET, PFTM_UDP_SINGLE, PFTM_UDP_MULTIPLE,
   PFTM_ICMP_FIRST_PACKET, PFTM_ICMP_ERROR_REPLY,
   PFTM_OTHER_FIRST_PACKET, PFTM_OTHER_SINGLE,
   PFTM_OTHER_MULTIPLE, PFTM_FRAG, PFTM_INTERVAL,
   PFTM_ADAPTIVE_START, PFTM_ADAPTIVE_END, PFTM_SRC_NODE,
   PFTM_TS_DIFF, PFTM_MAX, PFTM_PURGE, PFTM_UNLINKED };
enum { PF_NOPFROUTE, PF_ROUTETO, PF_DUPTO, PF_REPLYTO };
enum { PF_LIMIT_STATES, PF_LIMIT_SRC_NODES, PF_LIMIT_FRAGS,
   PF_LIMIT_TABLES, PF_LIMIT_TABLE_ENTRIES, PF_LIMIT_MAX };
enum { PF_POOL_NONE, PF_POOL_BITMASK, PF_POOL_RANDOM,
   PF_POOL_SRCHASH, PF_POOL_ROUNDROBIN, PF_POOL_LEASTSTATES };
enum { PF_ADDR_ADDRMASK, PF_ADDR_NOROUTE, PF_ADDR_DYNIFTL,
   PF_ADDR_TABLE, PF_ADDR_RTLABEL, PF_ADDR_URPFFAILED,
   PF_ADDR_RANGE, PF_ADDR_NONE };
struct pf_addr {
 union {
  struct in_addr v4;
  struct in6_addr v6;
  u_int8_t addr8[16];
  u_int16_t addr16[8];
  u_int32_t addr32[4];
 } pfa;
};
struct pf_addr_wrap {
 union {
  struct {
   struct pf_addr addr;
   struct pf_addr mask;
  } a;
  char ifname[16];
  char tblname[32];
  char rtlabelname[32];
  u_int32_t rtlabel;
 } v;
 union {
  struct pfi_dynaddr *dyn;
  struct pfr_ktable *tbl;
  int dyncnt;
  int tblcnt;
 } p;
 u_int8_t type;
 u_int8_t iflags;
};
struct pfi_dynaddr {
 struct { struct pfi_dynaddr *tqe_next; struct pfi_dynaddr **tqe_prev; } entry;
 struct pf_addr pfid_addr4;
 struct pf_addr pfid_mask4;
 struct pf_addr pfid_addr6;
 struct pf_addr pfid_mask6;
 struct pfr_ktable *pfid_kt;
 struct pfi_kif *pfid_kif;
 void *pfid_hook_cookie;
 int pfid_net;
 int pfid_acnt4;
 int pfid_acnt6;
 sa_family_t pfid_af;
 u_int8_t pfid_iflags;
};
struct pf_rule_uid {
 uid_t uid[2];
 u_int8_t op;
};
struct pf_rule_gid {
 uid_t gid[2];
 u_int8_t op;
};
struct pf_rule_addr {
 struct pf_addr_wrap addr;
 u_int16_t port[2];
 u_int8_t neg;
 u_int8_t port_op;
 u_int16_t weight;
};
struct pf_poolhashkey {
 union {
  u_int8_t key8[16];
  u_int16_t key16[8];
  u_int32_t key32[4];
 } pfk;
};
struct pf_pool {
 struct pf_addr_wrap addr;
 struct pf_poolhashkey key;
 struct pf_addr counter;
 char ifname[16];
 struct pfi_kif *kif;
 int tblidx;
 u_int64_t states;
 int curweight;
 u_int16_t weight;
 u_int16_t proxy_port[2];
 u_int8_t port_op;
 u_int8_t opts;
};
typedef u_int32_t pf_osfp_t;
struct pf_osfp_entry {
 struct { struct pf_osfp_entry *sle_next; } fp_entry;
 pf_osfp_t fp_os;
 int fp_enflags;
 u_char fp_class_nm[32];
 u_char fp_version_nm[32];
 u_char fp_subtype_nm[32];
};
typedef u_int64_t pf_tcpopts_t;
struct pf_os_fingerprint {
 struct pf_osfp_enlist { struct pf_osfp_entry *slh_first; } fp_oses;
 pf_tcpopts_t fp_tcpopts;
 u_int16_t fp_wsize;
 u_int16_t fp_psize;
 u_int16_t fp_mss;
 u_int16_t fp_flags;
 u_int8_t fp_optcnt;
 u_int8_t fp_wscale;
 u_int8_t fp_ttl;
 struct { struct pf_os_fingerprint *sle_next; } fp_next;
};
struct pf_osfp_ioctl {
 struct pf_osfp_entry fp_os;
 pf_tcpopts_t fp_tcpopts;
 u_int16_t fp_wsize;
 u_int16_t fp_psize;
 u_int16_t fp_mss;
 u_int16_t fp_flags;
 u_int8_t fp_optcnt;
 u_int8_t fp_wscale;
 u_int8_t fp_ttl;
 int fp_getnum;
};
struct pf_rule_actions {
 int rtableid;
 u_int16_t qid;
 u_int16_t pqid;
 u_int16_t max_mss;
 u_int16_t flags;
 u_int8_t log;
 u_int8_t set_tos;
 u_int8_t min_ttl;
 u_int8_t set_prio[2];
 u_int8_t pad[3];
};
union pf_rule_ptr {
 struct pf_rule *ptr;
 u_int32_t nr;
};
struct pf_rule {
 struct pf_rule_addr src;
 struct pf_rule_addr dst;
 union pf_rule_ptr skip[9];
 char label[64];
 char ifname[16];
 char rcv_ifname[16];
 char qname[64];
 char pqname[64];
 char tagname[64];
 char match_tagname[64];
 char overload_tblname[32];
 struct { struct pf_rule *tqe_next; struct pf_rule **tqe_prev; } entries;
 struct pf_pool nat;
 struct pf_pool rdr;
 struct pf_pool route;
 u_int64_t evaluations;
 u_int64_t packets[2];
 u_int64_t bytes[2];
 struct pfi_kif *kif;
 struct pfi_kif *rcv_kif;
 struct pf_anchor *anchor;
 struct pfr_ktable *overload_tbl;
 pf_osfp_t os_fingerprint;
 int rtableid;
 int onrdomain;
 u_int32_t timeout[PFTM_MAX];
 u_int32_t states_cur;
 u_int32_t states_tot;
 u_int32_t max_states;
 u_int32_t src_nodes;
 u_int32_t max_src_nodes;
 u_int32_t max_src_states;
 u_int32_t max_src_conn;
 struct {
  u_int32_t limit;
  u_int32_t seconds;
 } max_src_conn_rate;
 u_int32_t qid;
 u_int32_t pqid;
 u_int32_t rt_listid;
 u_int32_t nr;
 u_int32_t prob;
 uid_t cuid;
 pid_t cpid;
 u_int16_t return_icmp;
 u_int16_t return_icmp6;
 u_int16_t max_mss;
 u_int16_t tag;
 u_int16_t match_tag;
 u_int16_t scrub_flags;
 struct pf_rule_uid uid;
 struct pf_rule_gid gid;
 u_int32_t rule_flag;
 u_int8_t action;
 u_int8_t direction;
 u_int8_t log;
 u_int8_t logif;
 u_int8_t quick;
 u_int8_t ifnot;
 u_int8_t match_tag_not;
 u_int8_t keep_state;
 sa_family_t af;
 u_int8_t proto;
 u_int8_t type;
 u_int8_t code;
 u_int8_t flags;
 u_int8_t flagset;
 u_int8_t min_ttl;
 u_int8_t allow_opts;
 u_int8_t rt;
 u_int8_t return_ttl;
 u_int8_t tos;
 u_int8_t set_tos;
 u_int8_t anchor_relative;
 u_int8_t anchor_wildcard;
 u_int8_t flush;
 u_int8_t prio;
 u_int8_t set_prio[2];
 sa_family_t naf;
 u_int8_t rcvifnot;
 u_int8_t pad[2];
 struct {
  struct pf_addr addr;
  u_int16_t port;
 } divert, divert_packet;
 struct { struct pf_rule *sle_next; } gcle;
 struct pf_ruleset *ruleset;
 time_t exptime;
};
struct pf_threshold {
 u_int32_t limit;
 u_int32_t seconds;
 u_int32_t count;
 u_int32_t last;
};
struct pf_rule_item {
 struct { struct pf_rule_item *sle_next; } entry;
 struct pf_rule *r;
};
struct pf_rule_slist { struct pf_rule_item *slh_first; };
enum pf_sn_types { PF_SN_NONE, PF_SN_NAT, PF_SN_RDR, PF_SN_ROUTE, PF_SN_MAX };
struct pf_src_node {
 struct { struct pf_src_node *rbe_left; struct pf_src_node *rbe_right; struct pf_src_node *rbe_parent; int rbe_color; } entry;
 struct pf_addr addr;
 struct pf_addr raddr;
 union pf_rule_ptr rule;
 struct pfi_kif *kif;
 u_int64_t bytes[2];
 u_int64_t packets[2];
 u_int32_t states;
 u_int32_t conn;
 struct pf_threshold conn_rate;
 int32_t creation;
 int32_t expire;
 sa_family_t af;
 sa_family_t naf;
 u_int8_t type;
};
struct pf_sn_item {
 struct { struct pf_sn_item *sle_next; } next;
 struct pf_src_node *sn;
};
struct pf_sn_head { struct pf_sn_item *slh_first; };
struct pf_state_scrub {
 struct timeval pfss_last;
 u_int32_t pfss_tsecr;
 u_int32_t pfss_tsval;
 u_int32_t pfss_tsval0;
 u_int16_t pfss_flags;
 u_int8_t pfss_ttl;
 u_int8_t pad;
 u_int32_t pfss_ts_mod;
};
struct pf_state_host {
 struct pf_addr addr;
 u_int16_t port;
 u_int16_t pad;
};
struct pf_state_peer {
 struct pf_state_scrub *scrub;
 u_int32_t seqlo;
 u_int32_t seqhi;
 u_int32_t seqdiff;
 u_int16_t max_win;
 u_int16_t mss;
 u_int8_t state;
 u_int8_t wscale;
 u_int8_t tcp_est;
 u_int8_t pad[1];
};
struct pf_state_queue { struct pf_state *tqh_first; struct pf_state **tqh_last; };
struct pf_state_key_cmp {
 struct pf_addr addr[2];
 u_int16_t port[2];
 u_int16_t rdomain;
 sa_family_t af;
 u_int8_t proto;
};
struct pf_state_item {
 struct { struct pf_state_item *tqe_next; struct pf_state_item **tqe_prev; } entry;
 struct pf_state *s;
};
struct pf_statelisthead { struct pf_state_item *tqh_first; struct pf_state_item **tqh_last; };
struct pf_state_key {
 struct pf_addr addr[2];
 u_int16_t port[2];
 u_int16_t rdomain;
 sa_family_t af;
 u_int8_t proto;
 struct { struct pf_state_key *rbe_left; struct pf_state_key *rbe_right; struct pf_state_key *rbe_parent; int rbe_color; } entry;
 struct pf_statelisthead states;
 struct pf_state_key *reverse;
 struct inpcb *inp;
 pf_refcnt_t refcnt;
 u_int8_t removed;
};
struct pf_state_cmp {
 u_int64_t id;
 u_int32_t creatorid;
 u_int8_t direction;
 u_int8_t pad[3];
};
struct pf_state {
 u_int64_t id;
 u_int32_t creatorid;
 u_int8_t direction;
 u_int8_t pad[3];
 struct { struct pf_state *tqe_next; struct pf_state **tqe_prev; } sync_list;
 struct { struct pf_state *tqe_next; struct pf_state **tqe_prev; } entry_list;
 struct { struct pf_state *rbe_left; struct pf_state *rbe_right; struct pf_state *rbe_parent; int rbe_color; } entry_id;
 struct pf_state_peer src;
 struct pf_state_peer dst;
 struct pf_rule_slist match_rules;
 union pf_rule_ptr rule;
 union pf_rule_ptr anchor;
 union pf_rule_ptr natrule;
 struct pf_addr rt_addr;
 struct pf_sn_head src_nodes;
 struct pf_state_key *key[2];
 struct pfi_kif *kif;
 struct pfi_kif *rt_kif;
 u_int64_t packets[2];
 u_int64_t bytes[2];
 int32_t creation;
 int32_t expire;
 int32_t pfsync_time;
 u_int16_t qid;
 u_int16_t pqid;
 u_int16_t tag;
 u_int16_t state_flags;
 u_int8_t log;
 u_int8_t timeout;
 u_int8_t sync_state;
 u_int8_t sync_updates;
 int rtableid[2];
 u_int8_t min_ttl;
 u_int8_t set_tos;
 u_int8_t set_prio[2];
 u_int16_t max_mss;
 u_int16_t if_index_in;
 u_int16_t if_index_out;
 u_int8_t pad2[2];
};
struct pfsync_state_scrub {
 u_int16_t pfss_flags;
 u_int8_t pfss_ttl;
 u_int8_t scrub_flag;
 u_int32_t pfss_ts_mod;
} __attribute__((__packed__));
struct pfsync_state_peer {
 struct pfsync_state_scrub scrub;
 u_int32_t seqlo;
 u_int32_t seqhi;
 u_int32_t seqdiff;
 u_int16_t max_win;
 u_int16_t mss;
 u_int8_t state;
 u_int8_t wscale;
 u_int8_t pad[6];
} __attribute__((__packed__));
struct pfsync_state_key {
 struct pf_addr addr[2];
 u_int16_t port[2];
 u_int16_t rdomain;
 sa_family_t af;
 u_int8_t pad;
};
struct pfsync_state {
 u_int64_t id;
 char ifname[16];
 struct pfsync_state_key key[2];
 struct pfsync_state_peer src;
 struct pfsync_state_peer dst;
 struct pf_addr rt_addr;
 u_int32_t rule;
 u_int32_t anchor;
 u_int32_t nat_rule;
 u_int32_t creation;
 u_int32_t expire;
 u_int32_t packets[2][2];
 u_int32_t bytes[2][2];
 u_int32_t creatorid;
 int32_t rtableid[2];
 u_int16_t max_mss;
 sa_family_t af;
 u_int8_t proto;
 u_int8_t direction;
 u_int8_t log;
 u_int8_t pad0;
 u_int8_t timeout;
 u_int8_t sync_flags;
 u_int8_t updates;
 u_int8_t min_ttl;
 u_int8_t set_tos;
 u_int16_t state_flags;
 u_int8_t set_prio[2];
} __attribute__((__packed__));
struct pf_rulequeue { struct pf_rule *tqh_first; struct pf_rule **tqh_last; };
struct pf_anchor;
struct pf_ruleset {
 struct {
  struct pf_rulequeue queues[2];
  struct {
   struct pf_rulequeue *ptr;
   struct pf_rule **ptr_array;
   u_int32_t rcount;
   u_int32_t ticket;
   int open;
  } active, inactive;
 } rules;
 struct pf_anchor *anchor;
 u_int32_t tticket;
 int tables;
 int topen;
};
struct pf_anchor_global { struct pf_anchor *rbh_root; };
struct pf_anchor_node { struct pf_anchor *rbh_root; };
struct pf_anchor {
 struct { struct pf_anchor *rbe_left; struct pf_anchor *rbe_right; struct pf_anchor *rbe_parent; int rbe_color; } entry_global;
 struct { struct pf_anchor *rbe_left; struct pf_anchor *rbe_right; struct pf_anchor *rbe_parent; int rbe_color; } entry_node;
 struct pf_anchor *parent;
 struct pf_anchor_node children;
 char name[64];
 char path[1024];
 struct pf_ruleset ruleset;
 int refcnt;
 int match;
};
 void pf_anchor_global_RB_INSERT_COLOR(struct pf_anchor_global *, struct pf_anchor *); void pf_anchor_global_RB_REMOVE_COLOR(struct pf_anchor_global *, struct pf_anchor *, struct pf_anchor *); struct pf_anchor *pf_anchor_global_RB_REMOVE(struct pf_anchor_global *, struct pf_anchor *); struct pf_anchor *pf_anchor_global_RB_INSERT(struct pf_anchor_global *, struct pf_anchor *); struct pf_anchor *pf_anchor_global_RB_FIND(struct pf_anchor_global *, struct pf_anchor *); struct pf_anchor *pf_anchor_global_RB_NFIND(struct pf_anchor_global *, struct pf_anchor *); struct pf_anchor *pf_anchor_global_RB_NEXT(struct pf_anchor *); struct pf_anchor *pf_anchor_global_RB_PREV(struct pf_anchor *); struct pf_anchor *pf_anchor_global_RB_MINMAX(struct pf_anchor_global *, int);
 void pf_anchor_node_RB_INSERT_COLOR(struct pf_anchor_node *, struct pf_anchor *); void pf_anchor_node_RB_REMOVE_COLOR(struct pf_anchor_node *, struct pf_anchor *, struct pf_anchor *); struct pf_anchor *pf_anchor_node_RB_REMOVE(struct pf_anchor_node *, struct pf_anchor *); struct pf_anchor *pf_anchor_node_RB_INSERT(struct pf_anchor_node *, struct pf_anchor *); struct pf_anchor *pf_anchor_node_RB_FIND(struct pf_anchor_node *, struct pf_anchor *); struct pf_anchor *pf_anchor_node_RB_NFIND(struct pf_anchor_node *, struct pf_anchor *); struct pf_anchor *pf_anchor_node_RB_NEXT(struct pf_anchor *); struct pf_anchor *pf_anchor_node_RB_PREV(struct pf_anchor *); struct pf_anchor *pf_anchor_node_RB_MINMAX(struct pf_anchor_node *, int);
struct pfr_table {
 char pfrt_anchor[1024];
 char pfrt_name[32];
 u_int32_t pfrt_flags;
 u_int8_t pfrt_fback;
};
enum { PFR_FB_NONE, PFR_FB_MATCH, PFR_FB_ADDED, PFR_FB_DELETED,
 PFR_FB_CHANGED, PFR_FB_CLEARED, PFR_FB_DUPLICATE,
 PFR_FB_NOTMATCH, PFR_FB_CONFLICT, PFR_FB_NOCOUNT, PFR_FB_MAX };
struct pfr_addr {
 union {
  struct in_addr _pfra_ip4addr;
  struct in6_addr _pfra_ip6addr;
 } pfra_u;
 char pfra_ifname[16];
 u_int32_t pfra_states;
 u_int16_t pfra_weight;
 u_int8_t pfra_af;
 u_int8_t pfra_net;
 u_int8_t pfra_not;
 u_int8_t pfra_fback;
 u_int8_t pfra_type;
 u_int8_t pad[7];
};
enum { PFR_DIR_IN, PFR_DIR_OUT, PFR_DIR_MAX };
enum { PFR_OP_BLOCK, PFR_OP_MATCH, PFR_OP_PASS, PFR_OP_ADDR_MAX,
    PFR_OP_TABLE_MAX };
struct pfr_astats {
 struct pfr_addr pfras_a;
 u_int64_t pfras_packets[PFR_DIR_MAX][PFR_OP_ADDR_MAX];
 u_int64_t pfras_bytes[PFR_DIR_MAX][PFR_OP_ADDR_MAX];
 time_t pfras_tzero;
};
enum { PFR_REFCNT_RULE, PFR_REFCNT_ANCHOR, PFR_REFCNT_MAX };
struct pfr_tstats {
 struct pfr_table pfrts_t;
 u_int64_t pfrts_packets[PFR_DIR_MAX][PFR_OP_TABLE_MAX];
 u_int64_t pfrts_bytes[PFR_DIR_MAX][PFR_OP_TABLE_MAX];
 u_int64_t pfrts_match;
 u_int64_t pfrts_nomatch;
 time_t pfrts_tzero;
 int pfrts_cnt;
 int pfrts_refcnt[PFR_REFCNT_MAX];
};
struct pfr_kcounters {
 u_int64_t pfrkc_packets[PFR_DIR_MAX][PFR_OP_ADDR_MAX];
 u_int64_t pfrkc_bytes[PFR_DIR_MAX][PFR_OP_ADDR_MAX];
 u_int64_t states;
};
union pfsockaddr_union {
 struct sockaddr sa;
 struct sockaddr_in sin;
 struct sockaddr_in6 sin6;
};
struct pfr_kentryworkq { struct pfr_kentry *slh_first; };
struct _pfr_kentry {
 struct radix_node _pfrke_node[2];
 union pfsockaddr_union _pfrke_sa;
 struct { struct pfr_kentry *sle_next; } _pfrke_workq;
 struct pfr_kcounters *_pfrke_counters;
 time_t _pfrke_tzero;
 u_int8_t _pfrke_af;
 u_int8_t _pfrke_net;
 u_int8_t _pfrke_flags;
 u_int8_t _pfrke_type;
};
enum { PFRKE_PLAIN, PFRKE_ROUTE, PFRKE_COST, PFRKE_MAX };
struct pfr_kentry {
 union {
  struct _pfr_kentry _ke;
 } u;
};
struct pfr_kentry_route {
 union {
  struct _pfr_kentry _ke;
 } u;
 struct pfi_kif *kif;
};
struct pfr_kentry_cost {
 union {
  struct _pfr_kentry _ke;
 } u;
 struct pfi_kif *kif;
 u_int16_t weight;
};
struct pfr_kentry_all {
 union {
  struct _pfr_kentry _ke;
  struct pfr_kentry_route kr;
  struct pfr_kentry_cost kc;
 } u;
};
struct pfr_ktableworkq { struct pfr_ktable *slh_first; };
struct pfr_ktablehead { struct pfr_ktable *rbh_root; };
struct pfr_ktable {
 struct pfr_tstats pfrkt_ts;
 struct { struct pfr_ktable *rbe_left; struct pfr_ktable *rbe_right; struct pfr_ktable *rbe_parent; int rbe_color; } pfrkt_tree;
 struct { struct pfr_ktable *sle_next; } pfrkt_workq;
 struct radix_node_head *pfrkt_ip4;
 struct radix_node_head *pfrkt_ip6;
 struct pfr_ktable *pfrkt_shadow;
 struct pfr_ktable *pfrkt_root;
 struct pf_ruleset *pfrkt_rs;
 long pfrkt_larg;
 int pfrkt_nflags;
 u_int64_t pfrkt_refcntcost;
 u_int16_t pfrkt_gcdweight;
 u_int16_t pfrkt_maxweight;
};
struct pf_state_tree { struct pf_state_key *rbh_root; };
 void pf_state_tree_RB_INSERT_COLOR(struct pf_state_tree *, struct pf_state_key *); void pf_state_tree_RB_REMOVE_COLOR(struct pf_state_tree *, struct pf_state_key *, struct pf_state_key *); struct pf_state_key *pf_state_tree_RB_REMOVE(struct pf_state_tree *, struct pf_state_key *); struct pf_state_key *pf_state_tree_RB_INSERT(struct pf_state_tree *, struct pf_state_key *); struct pf_state_key *pf_state_tree_RB_FIND(struct pf_state_tree *, struct pf_state_key *); struct pf_state_key *pf_state_tree_RB_NFIND(struct pf_state_tree *, struct pf_state_key *); struct pf_state_key *pf_state_tree_RB_NEXT(struct pf_state_key *); struct pf_state_key *pf_state_tree_RB_PREV(struct pf_state_key *); struct pf_state_key *pf_state_tree_RB_MINMAX(struct pf_state_tree *, int);
struct pf_state_tree_ext_gwy { struct pf_state_key *rbh_root; };
 void pf_state_tree_ext_gwy_RB_INSERT_COLOR(struct pf_state_tree_ext_gwy *, struct pf_state_key *); void pf_state_tree_ext_gwy_RB_REMOVE_COLOR(struct pf_state_tree_ext_gwy *, struct pf_state_key *, struct pf_state_key *); struct pf_state_key *pf_state_tree_ext_gwy_RB_REMOVE(struct pf_state_tree_ext_gwy *, struct pf_state_key *); struct pf_state_key *pf_state_tree_ext_gwy_RB_INSERT(struct pf_state_tree_ext_gwy *, struct pf_state_key *); struct pf_state_key *pf_state_tree_ext_gwy_RB_FIND(struct pf_state_tree_ext_gwy *, struct pf_state_key *); struct pf_state_key *pf_state_tree_ext_gwy_RB_NFIND(struct pf_state_tree_ext_gwy *, struct pf_state_key *); struct pf_state_key *pf_state_tree_ext_gwy_RB_NEXT(struct pf_state_key *); struct pf_state_key *pf_state_tree_ext_gwy_RB_PREV(struct pf_state_key *); struct pf_state_key *pf_state_tree_ext_gwy_RB_MINMAX(struct pf_state_tree_ext_gwy *, int);
struct pfi_ifhead { struct pfi_kif *rbh_root; };
extern struct pf_state_tree pf_statetbl;
struct pfi_kif_cmp {
 char pfik_name[16];
};
struct ifnet;
struct ifg_group;
struct pfi_kif {
 char pfik_name[16];
 struct { struct pfi_kif *rbe_left; struct pfi_kif *rbe_right; struct pfi_kif *rbe_parent; int rbe_color; } pfik_tree;
 u_int64_t pfik_packets[2][2][2];
 u_int64_t pfik_bytes[2][2][2];
 time_t pfik_tzero;
 int pfik_flags;
 int pfik_flags_new;
 void *pfik_ah_cookie;
 struct ifnet *pfik_ifp;
 struct ifg_group *pfik_group;
 int pfik_states;
 int pfik_rules;
 int pfik_routes;
 struct { struct pfi_dynaddr *tqh_first; struct pfi_dynaddr **tqh_last; } pfik_dynaddrs;
};
enum pfi_kif_refs {
 PFI_KIF_REF_NONE,
 PFI_KIF_REF_STATE,
 PFI_KIF_REF_RULE,
 PFI_KIF_REF_ROUTE
};
struct pf_status {
 u_int64_t counters[17];
 u_int64_t lcounters[7];
 u_int64_t fcounters[3];
 u_int64_t scounters[3];
 u_int64_t pcounters[2][2][3];
 u_int64_t bcounters[2][2];
 u_int64_t stateid;
 time_t since;
 u_int32_t running;
 u_int32_t states;
 u_int32_t states_halfopen;
 u_int32_t src_nodes;
 u_int32_t debug;
 u_int32_t hostid;
 u_int32_t reass;
 char ifname[16];
 u_int8_t pf_chksum[16];
};
struct pf_queue_bwspec {
 u_int absolute;
 u_int percent;
};
struct pf_queue_scspec {
 struct pf_queue_bwspec m1;
 struct pf_queue_bwspec m2;
 u_int d;
};
struct pf_queue_fqspec {
 u_int flows;
 u_int quantum;
 u_int target;
 u_int interval;
};
struct pf_queuespec {
 struct { struct pf_queuespec *tqe_next; struct pf_queuespec **tqe_prev; } entries;
 char qname[64];
 char parent[64];
 char ifname[16];
 struct pf_queue_scspec realtime;
 struct pf_queue_scspec linkshare;
 struct pf_queue_scspec upperlimit;
 struct pf_queue_fqspec flowqueue;
 struct pfi_kif *kif;
 u_int flags;
 u_int qlimit;
 u_int32_t qid;
 u_int32_t parent_qid;
};
struct priq_opts {
 int flags;
};
struct hfsc_opts {
 u_int rtsc_m1;
 u_int rtsc_d;
 u_int rtsc_m2;
 u_int lssc_m1;
 u_int lssc_d;
 u_int lssc_m2;
 u_int ulsc_m1;
 u_int ulsc_d;
 u_int ulsc_m2;
 int flags;
};
struct pfq_ops {
 void * (*pfq_alloc)(struct ifnet *);
 int (*pfq_addqueue)(void *, struct pf_queuespec *);
 void (*pfq_free)(void *);
 int (*pfq_qstats)(struct pf_queuespec *, void *, int *);
 unsigned int (*pfq_qlength)(void *);
 struct mbuf * (*pfq_enqueue)(void *, struct mbuf *);
 struct mbuf * (*pfq_deq_begin)(void *, void **, struct mbuf_list *);
 void (*pfq_deq_commit)(void *, struct mbuf *, void *);
 void (*pfq_purge)(void *, struct mbuf_list *);
};
struct pf_tagname {
 struct { struct pf_tagname *tqe_next; struct pf_tagname **tqe_prev; } entries;
 char name[64];
 u_int16_t tag;
 int ref;
};
struct pf_divert {
 struct pf_addr addr;
 u_int16_t port;
 u_int16_t rdomain;
};
struct pfioc_rule {
 u_int32_t action;
 u_int32_t ticket;
 u_int32_t nr;
 char anchor[1024];
 char anchor_call[1024];
 struct pf_rule rule;
};
struct pfioc_natlook {
 struct pf_addr saddr;
 struct pf_addr daddr;
 struct pf_addr rsaddr;
 struct pf_addr rdaddr;
 u_int16_t rdomain;
 u_int16_t rrdomain;
 u_int16_t sport;
 u_int16_t dport;
 u_int16_t rsport;
 u_int16_t rdport;
 sa_family_t af;
 u_int8_t proto;
 u_int8_t direction;
};
struct pfioc_state {
 struct pfsync_state state;
};
struct pfioc_src_node_kill {
 sa_family_t psnk_af;
 struct pf_rule_addr psnk_src;
 struct pf_rule_addr psnk_dst;
 u_int psnk_killed;
};
struct pfioc_state_kill {
 struct pf_state_cmp psk_pfcmp;
 sa_family_t psk_af;
 int psk_proto;
 struct pf_rule_addr psk_src;
 struct pf_rule_addr psk_dst;
 char psk_ifname[16];
 char psk_label[64];
 u_int psk_killed;
 u_int16_t psk_rdomain;
};
struct pfioc_states {
 int ps_len;
 union {
  caddr_t psu_buf;
  struct pfsync_state *psu_states;
 } ps_u;
};
struct pfioc_src_nodes {
 int psn_len;
 union {
  caddr_t psu_buf;
  struct pf_src_node *psu_src_nodes;
 } psn_u;
};
struct pfioc_tm {
 int timeout;
 int seconds;
};
struct pfioc_limit {
 int index;
 unsigned limit;
};
struct pfioc_ruleset {
 u_int32_t nr;
 char path[1024];
 char name[64];
};
struct pfioc_trans {
 int size;
 int esize;
 struct pfioc_trans_e {
  int type;
  char anchor[1024];
  u_int32_t ticket;
 } *array;
};
struct pfioc_queue {
 u_int32_t ticket;
 u_int nr;
 struct pf_queuespec queue;
};
struct pfioc_qstats {
 u_int32_t ticket;
 u_int32_t nr;
 struct pf_queuespec queue;
 void *buf;
 int nbytes;
};
struct pfioc_table {
 struct pfr_table pfrio_table;
 void *pfrio_buffer;
 int pfrio_esize;
 int pfrio_size;
 int pfrio_size2;
 int pfrio_nadd;
 int pfrio_ndel;
 int pfrio_nchange;
 int pfrio_flags;
 u_int32_t pfrio_ticket;
};
struct pfioc_iface {
 char pfiio_name[16];
 void *pfiio_buffer;
 int pfiio_esize;
 int pfiio_size;
 int pfiio_nzero;
 int pfiio_flags;
};
struct pf_pdesc;
struct pf_src_tree { struct pf_src_node *rbh_root; };
 void pf_src_tree_RB_INSERT_COLOR(struct pf_src_tree *, struct pf_src_node *); void pf_src_tree_RB_REMOVE_COLOR(struct pf_src_tree *, struct pf_src_node *, struct pf_src_node *); struct pf_src_node *pf_src_tree_RB_REMOVE(struct pf_src_tree *, struct pf_src_node *); struct pf_src_node *pf_src_tree_RB_INSERT(struct pf_src_tree *, struct pf_src_node *); struct pf_src_node *pf_src_tree_RB_FIND(struct pf_src_tree *, struct pf_src_node *); struct pf_src_node *pf_src_tree_RB_NFIND(struct pf_src_tree *, struct pf_src_node *); struct pf_src_node *pf_src_tree_RB_NEXT(struct pf_src_node *); struct pf_src_node *pf_src_tree_RB_PREV(struct pf_src_node *); struct pf_src_node *pf_src_tree_RB_MINMAX(struct pf_src_tree *, int);;
extern struct pf_src_tree tree_src_tracking;
struct pf_state_tree_id { struct pf_state *rbh_root; };
 void pf_state_tree_id_RB_INSERT_COLOR(struct pf_state_tree_id *, struct pf_state *); void pf_state_tree_id_RB_REMOVE_COLOR(struct pf_state_tree_id *, struct pf_state *, struct pf_state *); struct pf_state *pf_state_tree_id_RB_REMOVE(struct pf_state_tree_id *, struct pf_state *); struct pf_state *pf_state_tree_id_RB_INSERT(struct pf_state_tree_id *, struct pf_state *); struct pf_state *pf_state_tree_id_RB_FIND(struct pf_state_tree_id *, struct pf_state *); struct pf_state *pf_state_tree_id_RB_NFIND(struct pf_state_tree_id *, struct pf_state *); struct pf_state *pf_state_tree_id_RB_NEXT(struct pf_state *); struct pf_state *pf_state_tree_id_RB_PREV(struct pf_state *); struct pf_state *pf_state_tree_id_RB_MINMAX(struct pf_state_tree_id *, int);;
extern struct pf_state_tree_id tree_id;
extern struct pf_state_queue state_list;
struct pf_queuehead { struct pf_queuespec *tqh_first; struct pf_queuespec **tqh_last; };
extern struct pf_queuehead pf_queues[2];
extern struct pf_queuehead *pf_queues_active, *pf_queues_inactive;
extern u_int32_t ticket_pabuf;
extern struct pool pf_src_tree_pl, pf_sn_item_pl, pf_rule_pl;
extern struct pool pf_state_pl, pf_state_key_pl, pf_state_item_pl,
        pf_rule_item_pl, pf_queue_pl;
extern struct pool pf_state_scrub_pl;
extern struct ifnet *sync_ifp;
extern struct pf_rule pf_default_rule;
extern int pf_tbladdr_setup(struct pf_ruleset *,
        struct pf_addr_wrap *);
extern void pf_tbladdr_remove(struct pf_addr_wrap *);
extern void pf_tbladdr_copyout(struct pf_addr_wrap *);
extern void pf_calc_skip_steps(struct pf_rulequeue *);
extern void pf_purge_expired_src_nodes();
extern void pf_purge_expired_states(u_int32_t);
extern void pf_purge_expired_rules();
extern void pf_remove_state(struct pf_state *);
extern void pf_remove_divert_state(struct pf_state_key *);
extern void pf_free_state(struct pf_state *);
extern int pf_state_insert(struct pfi_kif *,
        struct pf_state_key **,
        struct pf_state_key **,
        struct pf_state *);
int pf_insert_src_node(struct pf_src_node **,
        struct pf_rule *, enum pf_sn_types,
        sa_family_t, struct pf_addr *,
        struct pf_addr *);
void pf_remove_src_node(struct pf_src_node *);
struct pf_src_node *pf_get_src_node(struct pf_state *,
        enum pf_sn_types);
void pf_src_tree_remove_state(struct pf_state *);
void pf_state_rm_src_node(struct pf_state *,
        struct pf_src_node *);
extern struct pf_state *pf_find_state_byid(struct pf_state_cmp *);
extern struct pf_state *pf_find_state_all(struct pf_state_key_cmp *,
        u_int, int *);
extern void pf_state_export(struct pfsync_state *,
        struct pf_state *);
extern void pf_print_state(struct pf_state *);
extern void pf_print_flags(u_int8_t);
extern void pf_addrcpy(struct pf_addr *, struct pf_addr *,
        sa_family_t);
void pf_rm_rule(struct pf_rulequeue *,
        struct pf_rule *);
void pf_purge_rule(struct pf_rule *);
struct pf_divert *pf_find_divert(struct mbuf *);
int pf_setup_pdesc(struct pf_pdesc *, sa_family_t,
        int, struct pfi_kif *, struct mbuf *,
        u_short *);
int pf_test(sa_family_t, int, struct ifnet *, struct mbuf **);
void pf_poolmask(struct pf_addr *, struct pf_addr*,
     struct pf_addr *, struct pf_addr *, sa_family_t);
void pf_addr_inc(struct pf_addr *, sa_family_t);
void *pf_pull_hdr(struct mbuf *, int, void *, int, u_short *, u_short *,
     sa_family_t);
int pf_patch_8(struct pf_pdesc *, u_int8_t *, u_int8_t, _Bool);
int pf_patch_16(struct pf_pdesc *, u_int16_t *, u_int16_t);
int pf_patch_16_unaligned(struct pf_pdesc *, void *, u_int16_t, _Bool);
int pf_patch_32(struct pf_pdesc *, u_int32_t *, u_int32_t);
int pf_patch_32_unaligned(struct pf_pdesc *, void *, u_int32_t, _Bool);
int pflog_packet(struct pf_pdesc *, u_int8_t, struct pf_rule *,
     struct pf_rule *, struct pf_ruleset *, struct pf_rule *);
void pf_send_deferred_syn(struct pf_state *);
int pf_match_addr(u_int8_t, struct pf_addr *, struct pf_addr *,
     struct pf_addr *, sa_family_t);
int pf_match_addr_range(struct pf_addr *, struct pf_addr *,
     struct pf_addr *, sa_family_t);
int pf_match(u_int8_t, u_int32_t, u_int32_t, u_int32_t);
int pf_match_port(u_int8_t, u_int16_t, u_int16_t, u_int16_t);
int pf_match_uid(u_int8_t, uid_t, uid_t, uid_t);
int pf_match_gid(u_int8_t, gid_t, gid_t, gid_t);
int pf_refragment6(struct mbuf **, struct m_tag *mtag,
     struct sockaddr_in6 *, struct ifnet *, struct rtentry *);
void pf_normalize_init(void);
int pf_normalize_ip(struct pf_pdesc *, u_short *);
int pf_normalize_ip6(struct pf_pdesc *, u_short *);
int pf_normalize_tcp(struct pf_pdesc *);
void pf_normalize_tcp_cleanup(struct pf_state *);
int pf_normalize_tcp_init(struct pf_pdesc *, struct pf_state_peer *);
int pf_normalize_tcp_stateful(struct pf_pdesc *, u_short *,
     struct pf_state *, struct pf_state_peer *, struct pf_state_peer *,
     int *);
int pf_normalize_mss(struct pf_pdesc *, u_int16_t);
void pf_scrub(struct mbuf *, u_int16_t, sa_family_t, u_int8_t, u_int8_t);
int32_t pf_state_expires(const struct pf_state *);
void pf_purge_expired_fragments(void);
int pf_routable(struct pf_addr *addr, sa_family_t af, struct pfi_kif *,
     int);
int pf_rtlabel_match(struct pf_addr *, sa_family_t, struct pf_addr_wrap *,
     int);
int pf_socket_lookup(struct pf_pdesc *);
struct pf_state_key *pf_alloc_state_key(int);
int pf_ouraddr(struct mbuf *);
void pf_pkt_addr_changed(struct mbuf *);
struct inpcb *pf_inp_lookup(struct mbuf *);
void pf_inp_link(struct mbuf *, struct inpcb *);
void pf_inp_unlink(struct inpcb *);
int pf_state_key_attach(struct pf_state_key *, struct pf_state *, int);
int pf_translate(struct pf_pdesc *, struct pf_addr *, u_int16_t,
     struct pf_addr *, u_int16_t, u_int16_t, int);
int pf_translate_af(struct pf_pdesc *);
void pf_route(struct pf_pdesc *, struct pf_rule *, struct pf_state *);
void pf_route6(struct pf_pdesc *, struct pf_rule *, struct pf_state *);
void pfr_initialize(void);
int pfr_match_addr(struct pfr_ktable *, struct pf_addr *, sa_family_t);
void pfr_update_stats(struct pfr_ktable *, struct pf_addr *,
     struct pf_pdesc *, int, int);
int pfr_pool_get(struct pf_pool *, struct pf_addr **,
     struct pf_addr **, sa_family_t);
int pfr_states_increase(struct pfr_ktable *, struct pf_addr *, int);
int pfr_states_decrease(struct pfr_ktable *, struct pf_addr *, int);
struct pfr_kentry *
 pfr_kentry_byaddr(struct pfr_ktable *, struct pf_addr *, sa_family_t,
     int);
void pfr_dynaddr_update(struct pfr_ktable *, struct pfi_dynaddr *);
struct pfr_ktable *
 pfr_attach_table(struct pf_ruleset *, char *, int);
void pfr_detach_table(struct pfr_ktable *);
int pfr_clr_tables(struct pfr_table *, int *, int);
int pfr_add_tables(struct pfr_table *, int, int *, int);
int pfr_del_tables(struct pfr_table *, int, int *, int);
int pfr_get_tables(struct pfr_table *, struct pfr_table *, int *, int);
int pfr_get_tstats(struct pfr_table *, struct pfr_tstats *, int *, int);
int pfr_clr_tstats(struct pfr_table *, int, int *, int);
int pfr_set_tflags(struct pfr_table *, int, int, int, int *, int *, int);
int pfr_clr_addrs(struct pfr_table *, int *, int);
int pfr_insert_kentry(struct pfr_ktable *, struct pfr_addr *, time_t);
int pfr_add_addrs(struct pfr_table *, struct pfr_addr *, int, int *,
     int);
int pfr_del_addrs(struct pfr_table *, struct pfr_addr *, int, int *,
     int);
int pfr_set_addrs(struct pfr_table *, struct pfr_addr *, int, int *,
     int *, int *, int *, int, u_int32_t);
int pfr_get_addrs(struct pfr_table *, struct pfr_addr *, int *, int);
int pfr_get_astats(struct pfr_table *, struct pfr_astats *, int *, int);
int pfr_clr_astats(struct pfr_table *, struct pfr_addr *, int, int *,
     int);
int pfr_tst_addrs(struct pfr_table *, struct pfr_addr *, int, int *,
     int);
int pfr_ina_begin(struct pfr_table *, u_int32_t *, int *, int);
int pfr_ina_rollback(struct pfr_table *, u_int32_t, int *, int);
int pfr_ina_commit(struct pfr_table *, u_int32_t, int *, int *, int);
int pfr_ina_define(struct pfr_table *, struct pfr_addr *, int, int *,
     int *, u_int32_t, int);
extern struct pfi_kif *pfi_all;
void pfi_initialize(void);
struct pfi_kif *pfi_kif_find(const char *);
struct pfi_kif *pfi_kif_get(const char *);
void pfi_kif_ref(struct pfi_kif *, enum pfi_kif_refs);
void pfi_kif_unref(struct pfi_kif *, enum pfi_kif_refs);
int pfi_kif_match(struct pfi_kif *, struct pfi_kif *);
void pfi_attach_ifnet(struct ifnet *);
void pfi_detach_ifnet(struct ifnet *);
void pfi_attach_ifgroup(struct ifg_group *);
void pfi_detach_ifgroup(struct ifg_group *);
void pfi_group_change(const char *);
int pfi_match_addr(struct pfi_dynaddr *, struct pf_addr *,
      sa_family_t);
int pfi_dynaddr_setup(struct pf_addr_wrap *, sa_family_t);
void pfi_dynaddr_remove(struct pf_addr_wrap *);
void pfi_dynaddr_copyout(struct pf_addr_wrap *);
void pfi_update_status(const char *, struct pf_status *);
int pfi_get_ifaces(const char *, struct pfi_kif *, int *);
int pfi_set_flags(const char *, int);
int pfi_clear_flags(const char *, int);
void pfi_xcommit(void);
int pf_match_tag(struct mbuf *, struct pf_rule *, int *);
u_int16_t pf_tagname2tag(char *, int);
void pf_tag2tagname(u_int16_t, char *);
void pf_tag_ref(u_int16_t);
void pf_tag_unref(u_int16_t);
void pf_tag_packet(struct mbuf *, int, int);
int pf_addr_compare(struct pf_addr *, struct pf_addr *,
      sa_family_t);
const struct pfq_ops
  *pf_queue_manager(struct pf_queuespec *);
extern struct pf_status pf_status;
extern struct pool pf_frent_pl, pf_frag_pl;
struct pf_pool_limit {
 void *pp;
 unsigned limit;
 unsigned limit_new;
};
extern struct pf_pool_limit pf_pool_limits[PF_LIMIT_MAX];
extern struct pf_anchor_global pf_anchors;
extern struct pf_anchor pf_main_anchor;
struct tcphdr;
void pf_init_ruleset(struct pf_ruleset *);
int pf_anchor_setup(struct pf_rule *,
       const struct pf_ruleset *, const char *);
int pf_anchor_copyout(const struct pf_ruleset *,
       const struct pf_rule *, struct pfioc_rule *);
void pf_anchor_remove(struct pf_rule *);
void pf_remove_if_empty_ruleset(struct pf_ruleset *);
struct pf_anchor *pf_find_anchor(const char *);
struct pf_ruleset *pf_find_ruleset(const char *);
struct pf_ruleset *pf_get_leaf_ruleset(char *, char **);
struct pf_anchor *pf_create_anchor(struct pf_anchor *, const char *);
struct pf_ruleset *pf_find_or_create_ruleset(const char *);
void pf_rs_initialize(void);
int pf_anchor_copyout(const struct pf_ruleset *,
       const struct pf_rule *, struct pfioc_rule *);
void pf_anchor_remove(struct pf_rule *);
int pf_osfp_add(struct pf_osfp_ioctl *);
struct pf_osfp_enlist *
 pf_osfp_fingerprint(struct pf_pdesc *);
struct pf_osfp_enlist *
 pf_osfp_fingerprint_hdr(const struct ip *, const struct ip6_hdr *,
     const struct tcphdr *);
void pf_osfp_flush(void);
int pf_osfp_get(struct pf_osfp_ioctl *);
void pf_osfp_initialize(void);
int pf_osfp_match(struct pf_osfp_enlist *, pf_osfp_t);
struct pf_os_fingerprint *
 pf_osfp_validate(void);
void pf_print_host(struct pf_addr *, u_int16_t,
       sa_family_t);
int pf_get_transaddr(struct pf_rule *, struct pf_pdesc *,
       struct pf_src_node **, struct pf_rule **);
int pf_map_addr(sa_family_t, struct pf_rule *,
       struct pf_addr *, struct pf_addr *,
       struct pf_addr *, struct pf_src_node **,
       struct pf_pool *, enum pf_sn_types);
int pf_postprocess_addr(struct pf_state *);
struct pf_state_key *pf_state_key_ref(struct pf_state_key *);
void pf_state_key_unref(struct pf_state_key *);
int pf_state_key_isvalid(struct pf_state_key *);
void pf_pkt_unlink_state_key(struct mbuf *);
void pf_pkt_state_key_ref(struct mbuf *);
u_int8_t pf_get_wscale(struct pf_pdesc *);
u_int16_t pf_get_mss(struct pf_pdesc *);
struct mbuf * pf_build_tcp(const struct pf_rule *, sa_family_t,
       const struct pf_addr *, const struct pf_addr *,
       u_int16_t, u_int16_t, u_int32_t, u_int32_t,
       u_int8_t, u_int16_t, u_int16_t, u_int8_t, int,
       u_int16_t, u_int, u_int);
void pf_send_tcp(const struct pf_rule *, sa_family_t,
       const struct pf_addr *, const struct pf_addr *,
       u_int16_t, u_int16_t, u_int32_t, u_int32_t,
       u_int8_t, u_int16_t, u_int16_t, u_int8_t, int,
       u_int16_t, u_int);
struct ifbreq {
 char ifbr_name[16];
 char ifbr_ifsname[16];
 u_int32_t ifbr_ifsflags;
 u_int32_t ifbr_portno;
 u_int8_t ifbr_state;
 u_int8_t ifbr_priority;
 u_int32_t ifbr_path_cost;
 u_int32_t ifbr_stpflags;
 u_int8_t ifbr_proto;
 u_int8_t ifbr_role;
 u_int32_t ifbr_fwd_trans;
 u_int64_t ifbr_desg_bridge;
 u_int32_t ifbr_desg_port;
 u_int64_t ifbr_root_bridge;
 u_int32_t ifbr_root_cost;
 u_int32_t ifbr_root_port;
};
struct ifbifconf {
 char ifbic_name[16];
 u_int32_t ifbic_len;
 union {
  caddr_t ifbicu_buf;
  struct ifbreq *ifbicu_req;
 } ifbic_ifbicu;
};
struct ifbareq {
 char ifba_name[16];
 char ifba_ifsname[16];
 u_int8_t ifba_age;
 u_int8_t ifba_flags;
 struct ether_addr ifba_dst;
 struct sockaddr_storage ifba_dstsa;
};
struct ifbaconf {
 char ifbac_name[16];
 u_int32_t ifbac_len;
 union {
  caddr_t ifbacu_buf;
  struct ifbareq *ifbacu_req;
 } ifbac_ifbacu;
};
struct ifbrparam {
 char ifbrp_name[16];
 union {
  u_int32_t ifbrpu_csize;
  int ifbrpu_ctime;
  u_int16_t ifbrpu_prio;
  u_int8_t ifbrpu_hellotime;
  u_int8_t ifbrpu_fwddelay;
  u_int8_t ifbrpu_maxage;
  u_int8_t ifbrpu_proto;
  u_int8_t ifbrpu_txhc;
  u_int64_t ifbrpu_datapath;
  u_int32_t ifbrpu_maxgroup;
 } ifbrp_ifbrpu;
};
struct ifbropreq {
 char ifbop_name[16];
 u_int8_t ifbop_holdcount;
 u_int8_t ifbop_maxage;
 u_int8_t ifbop_hellotime;
 u_int8_t ifbop_fwddelay;
 u_int8_t ifbop_protocol;
 u_int16_t ifbop_priority;
 u_int64_t ifbop_root_bridge;
 u_int16_t ifbop_root_port;
 u_int32_t ifbop_root_path_cost;
 u_int64_t ifbop_desg_bridge;
 struct timeval ifbop_last_tc_time;
};
struct ifbrlreq {
 char ifbr_name[16];
 char ifbr_ifsname[16];
 u_int8_t ifbr_action;
 u_int8_t ifbr_flags;
 struct ether_addr ifbr_src;
 struct ether_addr ifbr_dst;
 char ifbr_tagname[64];
};
struct ifbrlconf {
 char ifbrl_name[16];
 char ifbrl_ifsname[16];
 u_int32_t ifbrl_len;
 union {
  caddr_t ifbrlu_buf;
  struct ifbrlreq *ifbrlu_req;
 } ifbrl_ifbrlu;
};
struct brl_head { struct brl_node *sqh_first; struct brl_node **sqh_last; };
struct brl_node {
 struct { struct brl_node *sqe_next; } brl_next;
 struct ether_addr brl_src;
 struct ether_addr brl_dst;
 u_int16_t brl_tag;
 u_int8_t brl_action;
 u_int8_t brl_flags;
};
struct bstp_timer {
 u_int16_t active;
 u_int16_t value;
 u_int32_t latched;
};
struct bstp_pri_vector {
 u_int64_t pv_root_id;
 u_int32_t pv_cost;
 u_int64_t pv_dbridge_id;
 u_int16_t pv_dport_id;
 u_int16_t pv_port_id;
};
struct bstp_config_unit {
 struct bstp_pri_vector cu_pv;
 u_int16_t cu_message_age;
 u_int16_t cu_max_age;
 u_int16_t cu_forward_delay;
 u_int16_t cu_hello_time;
 u_int8_t cu_message_type;
 u_int8_t cu_topology_change_ack;
 u_int8_t cu_topology_change;
 u_int8_t cu_proposal;
 u_int8_t cu_agree;
 u_int8_t cu_learning;
 u_int8_t cu_forwarding;
 u_int8_t cu_role;
};
struct bstp_tcn_unit {
 u_int8_t tu_message_type;
};
struct bstp_port {
 struct { struct bstp_port *le_next; struct bstp_port **le_prev; } bp_next;
 struct ifnet *bp_ifp;
 struct bstp_state *bp_bs;
 void *bp_lhcookie;
 u_int8_t bp_active;
 u_int8_t bp_protover;
 u_int32_t bp_flags;
 u_int32_t bp_path_cost;
 u_int16_t bp_port_msg_age;
 u_int16_t bp_port_max_age;
 u_int16_t bp_port_fdelay;
 u_int16_t bp_port_htime;
 u_int16_t bp_desg_msg_age;
 u_int16_t bp_desg_max_age;
 u_int16_t bp_desg_fdelay;
 u_int16_t bp_desg_htime;
 struct bstp_timer bp_edge_delay_timer;
 struct bstp_timer bp_forward_delay_timer;
 struct bstp_timer bp_hello_timer;
 struct bstp_timer bp_message_age_timer;
 struct bstp_timer bp_migrate_delay_timer;
 struct bstp_timer bp_recent_backup_timer;
 struct bstp_timer bp_recent_root_timer;
 struct bstp_timer bp_tc_timer;
 struct bstp_config_unit bp_msg_cu;
 struct bstp_pri_vector bp_desg_pv;
 struct bstp_pri_vector bp_port_pv;
 u_int16_t bp_port_id;
 u_int8_t bp_state;
 u_int8_t bp_tcstate;
 u_int8_t bp_role;
 u_int8_t bp_infois;
 u_int8_t bp_tc_ack;
 u_int8_t bp_tc_prop;
 u_int8_t bp_fdbflush;
 u_int8_t bp_priority;
 u_int8_t bp_ptp_link;
 u_int8_t bp_agree;
 u_int8_t bp_agreed;
 u_int8_t bp_sync;
 u_int8_t bp_synced;
 u_int8_t bp_proposing;
 u_int8_t bp_proposed;
 u_int8_t bp_operedge;
 u_int8_t bp_reroot;
 u_int8_t bp_rcvdtc;
 u_int8_t bp_rcvdtca;
 u_int8_t bp_rcvdtcn;
 u_int32_t bp_forward_transitions;
 u_int8_t bp_txcount;
};
struct bstp_state {
 struct ifnet *bs_ifp;
 struct bstp_pri_vector bs_bridge_pv;
 struct bstp_pri_vector bs_root_pv;
 struct bstp_port *bs_root_port;
 u_int8_t bs_protover;
 u_int16_t bs_migration_delay;
 u_int16_t bs_edge_delay;
 u_int16_t bs_bridge_max_age;
 u_int16_t bs_bridge_fdelay;
 u_int16_t bs_bridge_htime;
 u_int16_t bs_root_msg_age;
 u_int16_t bs_root_max_age;
 u_int16_t bs_root_fdelay;
 u_int16_t bs_root_htime;
 u_int16_t bs_hold_time;
 u_int16_t bs_bridge_priority;
 u_int8_t bs_txholdcount;
 u_int8_t bs_allsynced;
 struct timeout bs_bstptimeout;
 struct bstp_timer bs_link_timer;
 struct timeval bs_last_tc_time;
 struct { struct bstp_port *lh_first; } bs_bplist;
};
struct bridge_iflist {
 struct { struct bridge_iflist *tqe_next; struct bridge_iflist **tqe_prev; } next;
 struct bridge_softc *bridge_sc;
 struct bstp_port *bif_stp;
 struct brl_head bif_brlin;
 struct brl_head bif_brlout;
 struct ifnet *ifp;
 u_int32_t bif_flags;
 void *bif_dhcookie;
};
union brsockaddr_union {
 struct sockaddr sa;
 struct sockaddr_in sin;
 struct sockaddr_in6 sin6;
};
struct bridge_tunneltag {
 union brsockaddr_union brtag_peer;
 union brsockaddr_union brtag_local;
 u_int32_t brtag_id;
};
struct bridge_rtnode {
 struct { struct bridge_rtnode *le_next; struct bridge_rtnode **le_prev; } brt_next;
 struct ifnet *brt_if;
 u_int8_t brt_flags;
 u_int8_t brt_age;
 struct ether_addr brt_addr;
 struct bridge_tunneltag brt_tunnel;
};
struct bridge_softc {
 struct ifnet sc_if;
 u_int32_t sc_brtmax;
 u_int32_t sc_brtcnt;
 int sc_brttimeout;
 u_int64_t sc_hashkey[2];
 struct timeout sc_brtimeout;
 struct bstp_state *sc_stp;
 struct { struct bridge_iflist *tqh_first; struct bridge_iflist **tqh_last; } sc_iflist;
 struct { struct bridge_iflist *tqh_first; struct bridge_iflist **tqh_last; } sc_spanlist;
 struct { struct bridge_rtnode *lh_first; } sc_rts[1024];
};
extern const u_int8_t bstp_etheraddr[];
struct llc;
int bridge_output(struct ifnet *, struct mbuf *, struct sockaddr *,
    struct rtentry *);
void bridge_update(struct ifnet *, struct ether_addr *, int);
void bridge_rtdelete(struct bridge_softc *, struct ifnet *, int);
void bridge_rtagenode(struct ifnet *, int);
struct bridge_tunneltag *bridge_tunnel(struct mbuf *);
struct bridge_tunneltag *bridge_tunneltag(struct mbuf *);
void bridge_tunneluntag(struct mbuf *);
void bridge_copyaddr(struct sockaddr *, struct sockaddr *);
void bridge_copytag(struct bridge_tunneltag *, struct bridge_tunneltag *);
struct bstp_state *bstp_create(struct ifnet *);
void bstp_destroy(struct bstp_state *);
void bstp_initialization(struct bstp_state *);
void bstp_stop(struct bstp_state *);
int bstp_ioctl(struct ifnet *, u_long, caddr_t);
struct bstp_port *bstp_add(struct bstp_state *, struct ifnet *);
void bstp_delete(struct bstp_port *);
struct mbuf *bstp_input(struct bstp_state *, struct bstp_port *,
    struct ether_header *, struct mbuf *);
void bstp_ifstate(void *);
u_int8_t bstp_getstate(struct bstp_state *, struct bstp_port *);
void bstp_ifsflags(struct bstp_port *, u_int);
void bridge_send_icmp_err(struct bridge_softc *, struct ifnet *,
    struct ether_header *, struct mbuf *, int, struct llc *, int, int, int);
int bridgectl_ioctl(struct ifnet *, u_long, caddr_t);
struct ifnet *bridge_rtupdate(struct bridge_softc *,
    struct ether_addr *, struct ifnet *ifp, int, u_int8_t, struct mbuf *);
struct bridge_rtnode *bridge_rtlookup(struct bridge_softc *,
    struct ether_addr *);
void bridge_rtflush(struct bridge_softc *, int);
void bridge_rtage(void *);
u_int8_t bridge_filterrule(struct brl_head *, struct ether_header *,
    struct mbuf *);
void bridge_flushrule(struct bridge_iflist *);
struct mbuf *bridge_ip(struct bridge_softc *, int, struct ifnet *,
    struct ether_header *, struct mbuf *);
void bridge_fragment(struct bridge_softc *, struct ifnet *,
    struct ether_header *, struct mbuf *);
int bridge_ifenqueue(struct bridge_softc *, struct ifnet *, struct mbuf *);
struct bstp_cbpdu {
 u_int8_t cbu_dsap;
 u_int8_t cbu_ssap;
 u_int8_t cbu_ctl;
 u_int16_t cbu_protoid;
 u_int8_t cbu_protover;
 u_int8_t cbu_bpdutype;
 u_int8_t cbu_flags;
 u_int16_t cbu_rootpri;
 u_int8_t cbu_rootaddr[6];
 u_int32_t cbu_rootpathcost;
 u_int16_t cbu_bridgepri;
 u_int8_t cbu_bridgeaddr[6];
 u_int16_t cbu_portid;
 u_int16_t cbu_messageage;
 u_int16_t cbu_maxage;
 u_int16_t cbu_hellotime;
 u_int16_t cbu_forwarddelay;
 u_int8_t cbu_versionlen;
} __attribute__((__packed__));
struct bstp_tbpdu {
 u_int8_t tbu_dsap;
 u_int8_t tbu_ssap;
 u_int8_t tbu_ctl;
 u_int16_t tbu_protoid;
 u_int8_t tbu_protover;
 u_int8_t tbu_bpdutype;
} __attribute__((__packed__));
const u_int8_t bstp_etheraddr[] = { 0x01, 0x80, 0xc2, 0x00, 0x00, 0x00 };
void bstp_transmit(struct bstp_state *, struct bstp_port *);
void bstp_transmit_bpdu(struct bstp_state *, struct bstp_port *);
void bstp_transmit_tcn(struct bstp_state *, struct bstp_port *);
void bstp_decode_bpdu(struct bstp_port *, struct bstp_cbpdu *,
     struct bstp_config_unit *);
void bstp_send_bpdu(struct bstp_state *, struct bstp_port *,
     struct bstp_cbpdu *);
int bstp_pdu_flags(struct bstp_port *);
void bstp_received_stp(struct bstp_state *, struct bstp_port *,
     struct mbuf **, struct bstp_tbpdu *);
void bstp_received_rstp(struct bstp_state *, struct bstp_port *,
     struct mbuf **, struct bstp_tbpdu *);
void bstp_received_tcn(struct bstp_state *, struct bstp_port *,
     struct bstp_tcn_unit *);
void bstp_received_bpdu(struct bstp_state *, struct bstp_port *,
     struct bstp_config_unit *);
int bstp_pdu_rcvtype(struct bstp_port *, struct bstp_config_unit *);
int bstp_pdu_bettersame(struct bstp_port *, int);
int bstp_info_cmp(struct bstp_pri_vector *,
     struct bstp_pri_vector *);
int bstp_info_superior(struct bstp_pri_vector *,
     struct bstp_pri_vector *);
void bstp_assign_roles(struct bstp_state *);
void bstp_update_roles(struct bstp_state *, struct bstp_port *);
void bstp_update_state(struct bstp_state *, struct bstp_port *);
void bstp_update_tc(struct bstp_port *);
void bstp_update_info(struct bstp_port *);
void bstp_set_other_tcprop(struct bstp_port *);
void bstp_set_all_reroot(struct bstp_state *);
void bstp_set_all_sync(struct bstp_state *);
void bstp_set_port_state(struct bstp_port *, int);
void bstp_set_port_role(struct bstp_port *, int);
void bstp_set_port_proto(struct bstp_port *, int);
void bstp_set_port_tc(struct bstp_port *, int);
void bstp_set_timer_tc(struct bstp_port *);
void bstp_set_timer_msgage(struct bstp_port *);
int bstp_rerooted(struct bstp_state *, struct bstp_port *);
u_int32_t bstp_calc_path_cost(struct bstp_port *);
void bstp_notify_rtage(struct bstp_port *, int);
void bstp_ifupdstatus(struct bstp_state *, struct bstp_port *);
void bstp_enable_port(struct bstp_state *, struct bstp_port *);
void bstp_disable_port(struct bstp_state *, struct bstp_port *);
void bstp_tick(void *);
void bstp_timer_start(struct bstp_timer *, u_int16_t);
void bstp_timer_stop(struct bstp_timer *);
void bstp_timer_latch(struct bstp_timer *);
int bstp_timer_expired(struct bstp_timer *);
void bstp_hello_timer_expiry(struct bstp_state *,
      struct bstp_port *);
void bstp_message_age_expiry(struct bstp_state *,
      struct bstp_port *);
void bstp_migrate_delay_expiry(struct bstp_state *,
      struct bstp_port *);
void bstp_edge_delay_expiry(struct bstp_state *,
      struct bstp_port *);
int bstp_addr_cmp(const u_int8_t *, const u_int8_t *);
int bstp_same_bridgeid(u_int64_t, u_int64_t);
void
bstp_transmit(struct bstp_state *bs, struct bstp_port *bp)
{
 if ((bs->bs_ifp->if_flags & 0x40) == 0 || bp == ((void *)0))
  return;
 if (bp->bp_hello_timer.active == 0) {
  bstp_hello_timer_expiry(bs, bp);
  return;
 }
 if (bp->bp_txcount > bs->bs_txholdcount)
  return;
 if (bp->bp_protover == 0x02) {
  bstp_transmit_bpdu(bs, bp);
  bp->bp_tc_ack = 0;
 } else {
  switch (bp->bp_role) {
  case 2:
   bstp_transmit_bpdu(bs, bp);
   bp->bp_tc_ack = 0;
   break;
  case 1:
   bstp_transmit_tcn(bs, bp);
   break;
  }
 }
 bstp_timer_start(&bp->bp_hello_timer, bp->bp_desg_htime);
 bp->bp_flags &= ~0x0002;
}
void
bstp_transmit_bpdu(struct bstp_state *bs, struct bstp_port *bp)
{
 struct bstp_cbpdu bpdu;
 bpdu.cbu_rootpri = ((__uint16_t)(bp->bp_desg_pv.pv_root_id >> 48));
 do { bpdu.cbu_rootaddr[0] = bp->bp_desg_pv.pv_root_id >> 40; bpdu.cbu_rootaddr[1] = bp->bp_desg_pv.pv_root_id >> 32; bpdu.cbu_rootaddr[2] = bp->bp_desg_pv.pv_root_id >> 24; bpdu.cbu_rootaddr[3] = bp->bp_desg_pv.pv_root_id >> 16; bpdu.cbu_rootaddr[4] = bp->bp_desg_pv.pv_root_id >> 8; bpdu.cbu_rootaddr[5] = bp->bp_desg_pv.pv_root_id >> 0; } while (0);
 bpdu.cbu_rootpathcost = ((__uint32_t)(bp->bp_desg_pv.pv_cost));
 bpdu.cbu_bridgepri = ((__uint16_t)(bp->bp_desg_pv.pv_dbridge_id >> 48));
 do { bpdu.cbu_bridgeaddr[0] = bp->bp_desg_pv.pv_dbridge_id >> 40; bpdu.cbu_bridgeaddr[1] = bp->bp_desg_pv.pv_dbridge_id >> 32; bpdu.cbu_bridgeaddr[2] = bp->bp_desg_pv.pv_dbridge_id >> 24; bpdu.cbu_bridgeaddr[3] = bp->bp_desg_pv.pv_dbridge_id >> 16; bpdu.cbu_bridgeaddr[4] = bp->bp_desg_pv.pv_dbridge_id >> 8; bpdu.cbu_bridgeaddr[5] = bp->bp_desg_pv.pv_dbridge_id >> 0; } while (0);
 bpdu.cbu_portid = ((__uint16_t)(bp->bp_port_id));
 bpdu.cbu_messageage = ((__uint16_t)(bp->bp_desg_msg_age));
 bpdu.cbu_maxage = ((__uint16_t)(bp->bp_desg_max_age));
 bpdu.cbu_hellotime = ((__uint16_t)(bp->bp_desg_htime));
 bpdu.cbu_forwarddelay = ((__uint16_t)(bp->bp_desg_fdelay));
 bpdu.cbu_flags = bstp_pdu_flags(bp);
 switch (bp->bp_protover) {
 case 0x00:
  bpdu.cbu_bpdutype = 0x00;
  break;
 case 0x02:
  bpdu.cbu_bpdutype = 0x02;
  break;
 }
 bstp_send_bpdu(bs, bp, &bpdu);
}
void
bstp_transmit_tcn(struct bstp_state *bs, struct bstp_port *bp)
{
 struct bstp_tbpdu bpdu;
 struct ifnet *ifp = bp->bp_ifp;
 struct ether_header *eh;
 struct mbuf *m;
 if (ifp == ((void *)0) || (ifp->if_flags & 0x40) == 0)
  return;
 m = m_gethdr((0x0002), (1));
 if (m == ((void *)0))
  return;
 m->M_dat.MH.MH_pkthdr.ph_ifidx = ifp->if_index;
 m->M_dat.MH.MH_pkthdr.len = sizeof(*eh) + sizeof(bpdu);
 m->M_dat.MH.MH_pkthdr.pf.prio = 6;
 m->m_hdr.mh_len = m->M_dat.MH.MH_pkthdr.len;
 eh = ((struct ether_header *)((m)->m_hdr.mh_data));
 __builtin_bcopy((((caddr_t)((ifp->if_sadl)->sdl_data + (ifp->if_sadl)->sdl_nlen))), (eh->ether_shost), (6));
 __builtin_bcopy((bstp_etheraddr), (eh->ether_dhost), (6));
 eh->ether_type = ((__uint16_t)(sizeof(bpdu)));
 bpdu.tbu_ssap = bpdu.tbu_dsap = 0x42;
 bpdu.tbu_ctl = 0x3;
 bpdu.tbu_protoid = 0;
 bpdu.tbu_protover = 0;
 bpdu.tbu_bpdutype = 0x80;
 __builtin_bcopy((&bpdu), (((caddr_t)((m)->m_hdr.mh_data)) + sizeof(*eh)), (sizeof(bpdu)));
 bp->bp_txcount++;
 if_enqueue(ifp, m);
}
void
bstp_decode_bpdu(struct bstp_port *bp, struct bstp_cbpdu *cpdu,
    struct bstp_config_unit *cu)
{
 int flags;
 cu->cu_pv.pv_root_id =
     (((u_int64_t)((__uint16_t)(cpdu->cbu_rootpri))) << 48) |
     (((u_int64_t)cpdu->cbu_rootaddr[0]) << 40) |
     (((u_int64_t)cpdu->cbu_rootaddr[1]) << 32) |
     (((u_int64_t)cpdu->cbu_rootaddr[2]) << 24) |
     (((u_int64_t)cpdu->cbu_rootaddr[3]) << 16) |
     (((u_int64_t)cpdu->cbu_rootaddr[4]) << 8) |
     (((u_int64_t)cpdu->cbu_rootaddr[5]) << 0);
 cu->cu_pv.pv_dbridge_id =
     (((u_int64_t)((__uint16_t)(cpdu->cbu_bridgepri))) << 48) |
     (((u_int64_t)cpdu->cbu_bridgeaddr[0]) << 40) |
     (((u_int64_t)cpdu->cbu_bridgeaddr[1]) << 32) |
     (((u_int64_t)cpdu->cbu_bridgeaddr[2]) << 24) |
     (((u_int64_t)cpdu->cbu_bridgeaddr[3]) << 16) |
     (((u_int64_t)cpdu->cbu_bridgeaddr[4]) << 8) |
     (((u_int64_t)cpdu->cbu_bridgeaddr[5]) << 0);
 cu->cu_pv.pv_cost = ((__uint32_t)(cpdu->cbu_rootpathcost));
 cu->cu_message_age = ((__uint16_t)(cpdu->cbu_messageage));
 cu->cu_max_age = ((__uint16_t)(cpdu->cbu_maxage));
 cu->cu_hello_time = ((__uint16_t)(cpdu->cbu_hellotime));
 cu->cu_forward_delay = ((__uint16_t)(cpdu->cbu_forwarddelay));
 cu->cu_pv.pv_dport_id = ((__uint16_t)(cpdu->cbu_portid));
 cu->cu_pv.pv_port_id = bp->bp_port_id;
 cu->cu_message_type = cpdu->cbu_bpdutype;
 flags = cpdu->cbu_flags;
 switch (cpdu->cbu_protover) {
 case 0x00:
  flags &= 0x81;
  cu->cu_role = 2;
  break;
 case 0x02:
  flags &= 0x7f;
  break;
 }
 cu->cu_topology_change_ack =
  (flags & 0x80) ? 1 : 0;
 cu->cu_proposal =
  (flags & 0x02) ? 1 : 0;
 cu->cu_agree =
  (flags & 0x40) ? 1 : 0;
 cu->cu_learning =
  (flags & 0x10) ? 1 : 0;
 cu->cu_forwarding =
  (flags & 0x20) ? 1 : 0;
 cu->cu_topology_change =
  (flags & 0x01) ? 1 : 0;
 switch ((flags & 0x0c) >> 2) {
 case 0x02:
  cu->cu_role = 1;
  break;
 case 0x01:
  cu->cu_role = 3;
  break;
 case 0x03:
  cu->cu_role = 2;
  break;
 }
}
void
bstp_send_bpdu(struct bstp_state *bs, struct bstp_port *bp,
    struct bstp_cbpdu *bpdu)
{
 struct ifnet *ifp = bp->bp_ifp;
 struct mbuf *m;
 struct ether_header *eh;
 int s;
 s = _splraise(6);
 if (ifp == ((void *)0) || (ifp->if_flags & 0x40) == 0)
  goto done;
 m = m_gethdr((0x0002), (1));
 if (m == ((void *)0))
  goto done;
 eh = ((struct ether_header *)((m)->m_hdr.mh_data));
 bpdu->cbu_ssap = bpdu->cbu_dsap = 0x42;
 bpdu->cbu_ctl = 0x3;
 bpdu->cbu_protoid = ((__uint16_t)(0x00));
 __builtin_memcpy((eh->ether_shost), (((caddr_t)((ifp->if_sadl)->sdl_data + (ifp->if_sadl)->sdl_nlen))), (6));
 __builtin_memcpy((eh->ether_dhost), (bstp_etheraddr), (6));
 switch (bpdu->cbu_bpdutype) {
 case 0x00:
  bpdu->cbu_protover = 0x00;
  m->M_dat.MH.MH_pkthdr.len = sizeof(*eh) + (3 + 35);
  eh->ether_type = ((__uint16_t)((3 + 35)));
  __builtin_memcpy((((caddr_t)((m)->m_hdr.mh_data)) + sizeof(*eh)), (bpdu), ((3 + 35)));
  break;
 case 0x02:
  bpdu->cbu_protover = 0x02;
  bpdu->cbu_versionlen = ((__uint16_t)(0));
  m->M_dat.MH.MH_pkthdr.len = sizeof(*eh) + (3 + 36);
  eh->ether_type = ((__uint16_t)((3 + 36)));
  __builtin_memcpy((((caddr_t)((m)->m_hdr.mh_data)) + sizeof(*eh)), (bpdu), ((3 + 36)));
  break;
 default:
  panic("not implemented");
 }
 m->M_dat.MH.MH_pkthdr.ph_ifidx = ifp->if_index;
 m->m_hdr.mh_len = m->M_dat.MH.MH_pkthdr.len;
 m->M_dat.MH.MH_pkthdr.pf.prio = 6;
 bp->bp_txcount++;
 if_enqueue(ifp, m);
 done:
 _splx(s);
}
int
bstp_pdu_flags(struct bstp_port *bp)
{
 int flags = 0;
 if (bp->bp_proposing && bp->bp_state != 3)
  flags |= 0x02;
 if (bp->bp_agree)
  flags |= 0x40;
 if (bp->bp_tc_timer.active)
  flags |= 0x01;
 if (bp->bp_tc_ack)
  flags |= 0x80;
 switch (bp->bp_state) {
 case 2:
  flags |= 0x10;
  break;
 case 3:
  flags |= (0x10 | 0x20);
  break;
 }
 switch (bp->bp_role) {
 case 1:
  flags |= (0x02 << 2);
  break;
 case 3:
 case 4:
  flags |= (0x01 << 2);
  break;
 case 2:
  flags |= (0x03 << 2);
  break;
 }
 switch (bp->bp_protover) {
 case 0x00:
  flags &= 0x81;
  break;
 case 0x02:
  flags &= 0x7f;
  break;
 }
 return (flags);
}
struct mbuf *
bstp_input(struct bstp_state *bs, struct bstp_port *bp,
    struct ether_header *eh, struct mbuf *m)
{
 struct bstp_tbpdu tpdu;
 u_int16_t len;
 if (bs == ((void *)0) || bp == ((void *)0) || bp->bp_active == 0)
  return (m);
 len = ((__uint16_t)(eh->ether_type));
 if (len < sizeof(tpdu))
  goto out;
 m_adj(m, ((6 * 2) + 2));
 if (m->M_dat.MH.MH_pkthdr.len > len)
  m_adj(m, len - m->M_dat.MH.MH_pkthdr.len);
 if ((m = m_pullup(m, sizeof(tpdu))) == ((void *)0))
  goto out;
 __builtin_bcopy((((struct tpdu *)((m)->m_hdr.mh_data))), (&tpdu), (sizeof(tpdu)));
 if (tpdu.tbu_dsap != 0x42 ||
     tpdu.tbu_ssap != 0x42 ||
     tpdu.tbu_ctl != 0x3)
  goto out;
 if (tpdu.tbu_protoid != 0x00)
  goto out;
 if (tpdu.tbu_protover > 0x02)
  tpdu.tbu_protover = 0x02;
 if (tpdu.tbu_protover != bp->bp_protover) {
  if (bp->bp_flags & 0x0001)
   bstp_set_port_proto(bp, tpdu.tbu_protover);
  else
   goto out;
 }
 bp->bp_operedge = 0;
 bstp_timer_start(&bp->bp_edge_delay_timer,
     (3 * 256));
 switch (tpdu.tbu_protover) {
 case 0x00:
  bstp_received_stp(bs, bp, &m, &tpdu);
  break;
 case 0x02:
  bstp_received_rstp(bs, bp, &m, &tpdu);
  break;
 }
 out:
 m_freem(m);
 return (((void *)0));
}
void
bstp_received_stp(struct bstp_state *bs, struct bstp_port *bp,
    struct mbuf **mp, struct bstp_tbpdu *tpdu)
{
 struct bstp_cbpdu cpdu;
 struct bstp_config_unit *cu = &bp->bp_msg_cu;
 struct bstp_tcn_unit tu;
 switch (tpdu->tbu_bpdutype) {
 case 0x80:
  tu.tu_message_type = tpdu->tbu_bpdutype;
  bstp_received_tcn(bs, bp, &tu);
  break;
 case 0x00:
  if ((*mp)->m_hdr.mh_len < (3 + 35) &&
      (*mp = m_pullup(*mp, (3 + 35))) == ((void *)0))
   return;
  __builtin_memcpy((&cpdu), (((caddr_t)((*mp)->m_hdr.mh_data))), ((3 + 35)));
  bstp_decode_bpdu(bp, &cpdu, cu);
  bstp_received_bpdu(bs, bp, cu);
  break;
 }
}
void
bstp_received_rstp(struct bstp_state *bs, struct bstp_port *bp,
    struct mbuf **mp, struct bstp_tbpdu *tpdu)
{
 struct bstp_cbpdu cpdu;
 struct bstp_config_unit *cu = &bp->bp_msg_cu;
 if (tpdu->tbu_bpdutype != 0x02)
  return;
 if ((*mp)->m_hdr.mh_len < (3 + 36) &&
     (*mp = m_pullup(*mp, (3 + 36))) == ((void *)0))
  return;
 __builtin_memcpy((&cpdu), (((caddr_t)((*mp)->m_hdr.mh_data))), ((3 + 36)));
 bstp_decode_bpdu(bp, &cpdu, cu);
 bstp_received_bpdu(bs, bp, cu);
}
void
bstp_received_tcn(struct bstp_state *bs, struct bstp_port *bp,
    struct bstp_tcn_unit *tcn)
{
 bp->bp_rcvdtcn = 1;
 bstp_update_tc(bp);
}
void
bstp_received_bpdu(struct bstp_state *bs, struct bstp_port *bp,
    struct bstp_config_unit *cu)
{
 int type;
 switch (bp->bp_infois) {
 case 4:
 case 3:
  return;
 }
 type = bstp_pdu_rcvtype(bp, cu);
 switch (type) {
 case 1:
  bs->bs_allsynced = 0;
  bp->bp_agreed = 0;
  bp->bp_proposing = 0;
  if (cu->cu_proposal && cu->cu_forwarding == 0)
   bp->bp_proposed = 1;
  if (cu->cu_topology_change)
   bp->bp_rcvdtc = 1;
  if (cu->cu_topology_change_ack)
   bp->bp_rcvdtca = 1;
  if (bp->bp_agree &&
      !bstp_pdu_bettersame(bp, 1))
   bp->bp_agree = 0;
  bp->bp_port_pv = cu->cu_pv;
  bp->bp_port_msg_age = cu->cu_message_age;
  bp->bp_port_max_age = cu->cu_max_age;
  bp->bp_port_fdelay = cu->cu_forward_delay;
  bp->bp_port_htime =
      (cu->cu_hello_time > (1 * 256) ?
       cu->cu_hello_time : (1 * 256));
  bstp_set_timer_msgage(bp);
  bp->bp_infois = 1;
  bstp_assign_roles(bs);
  break;
 case 2:
  if (cu->cu_proposal && cu->cu_forwarding == 0)
   bp->bp_proposed = 1;
  if (cu->cu_topology_change)
   bp->bp_rcvdtc = 1;
  if (cu->cu_topology_change_ack)
   bp->bp_rcvdtca = 1;
  bstp_set_timer_msgage(bp);
  break;
 case 3:
  if (cu->cu_learning) {
   bp->bp_agreed = 1;
   bp->bp_proposing = 0;
  }
  break;
 case 4:
  if (cu->cu_agree && bp->bp_ptp_link) {
   bp->bp_agreed = 1;
   bp->bp_proposing = 0;
  } else
   bp->bp_agreed = 0;
  if (cu->cu_topology_change)
   bp->bp_rcvdtc = 1;
  if (cu->cu_topology_change_ack)
   bp->bp_rcvdtca = 1;
  break;
 case 5:
  return;
 }
 bstp_update_state(bs, bp);
}
int
bstp_pdu_rcvtype(struct bstp_port *bp, struct bstp_config_unit *cu)
{
 int type;
 type = 5;
 switch (cu->cu_role) {
 case 2:
  if (bstp_info_superior(&bp->bp_port_pv, &cu->cu_pv))
   type = 1;
  else if (bstp_info_cmp(&bp->bp_port_pv, &cu->cu_pv) ==
      0) {
   if (bp->bp_port_msg_age != cu->cu_message_age ||
       bp->bp_port_max_age != cu->cu_max_age ||
       bp->bp_port_fdelay != cu->cu_forward_delay ||
       bp->bp_port_htime != cu->cu_hello_time)
    type = 1;
   else
    type = 2;
  } else
   type = 3;
  break;
 case 1:
 case 3:
 case 4:
  if (bstp_info_cmp(&bp->bp_port_pv, &cu->cu_pv) <= 0)
   type = 4;
  break;
 }
 return (type);
}
int
bstp_pdu_bettersame(struct bstp_port *bp, int newinfo)
{
 if (newinfo == 1 &&
     bp->bp_infois == 1 &&
     bstp_info_cmp(&bp->bp_port_pv, &bp->bp_msg_cu.cu_pv) >= 0)
  return (1);
 if (newinfo == 2 &&
     bp->bp_infois == 2 &&
     bstp_info_cmp(&bp->bp_port_pv, &bp->bp_desg_pv) >= 0)
  return (1);
 return (0);
}
int
bstp_info_cmp(struct bstp_pri_vector *pv,
    struct bstp_pri_vector *cpv)
{
 if (cpv->pv_root_id < pv->pv_root_id)
  return (1);
 if (cpv->pv_root_id > pv->pv_root_id)
  return (-1);
 if (cpv->pv_cost < pv->pv_cost)
  return (1);
 if (cpv->pv_cost > pv->pv_cost)
  return (-1);
 if (cpv->pv_dbridge_id < pv->pv_dbridge_id)
  return (1);
 if (cpv->pv_dbridge_id > pv->pv_dbridge_id)
  return (-1);
 if (cpv->pv_dport_id < pv->pv_dport_id)
  return (1);
 if (cpv->pv_dport_id > pv->pv_dport_id)
  return (-1);
 return (0);
}
int
bstp_info_superior(struct bstp_pri_vector *pv,
    struct bstp_pri_vector *cpv)
{
 if (bstp_info_cmp(pv, cpv) == 1 ||
     (bstp_same_bridgeid(pv->pv_dbridge_id, cpv->pv_dbridge_id) &&
     (cpv->pv_dport_id & 0xfff) == (pv->pv_dport_id & 0xfff)))
  return (1);
 return (0);
}
void
bstp_assign_roles(struct bstp_state *bs)
{
 struct bstp_port *bp, *rbp = ((void *)0);
 struct bstp_pri_vector pv;
 bs->bs_root_pv = bs->bs_bridge_pv;
 bs->bs_root_msg_age = 0;
 bs->bs_root_max_age = bs->bs_bridge_max_age;
 bs->bs_root_fdelay = bs->bs_bridge_fdelay;
 bs->bs_root_htime = bs->bs_bridge_htime;
 bs->bs_root_port = ((void *)0);
 for((bp) = ((&bs->bs_bplist)->lh_first); (bp)!= ((void *)0); (bp) = ((bp)->bp_next.le_next)) {
  if (bp->bp_infois != 1)
   continue;
  pv = bp->bp_port_pv;
  pv.pv_cost += bp->bp_path_cost;
  if (bstp_same_bridgeid(pv.pv_dbridge_id,
      bs->bs_bridge_pv.pv_dbridge_id) == 0 &&
      bstp_info_cmp(&bs->bs_root_pv, &pv) == 1) {
   bs->bs_root_pv = pv;
   bs->bs_root_msg_age = bp->bp_port_msg_age +
       (1 * 256);
   bs->bs_root_max_age = bp->bp_port_max_age;
   bs->bs_root_fdelay = bp->bp_port_fdelay;
   bs->bs_root_htime = bp->bp_port_htime;
   rbp = bp;
  }
 }
 for((bp) = ((&bs->bs_bplist)->lh_first); (bp)!= ((void *)0); (bp) = ((bp)->bp_next.le_next)) {
  bp->bp_desg_pv.pv_root_id = bs->bs_root_pv.pv_root_id;
  bp->bp_desg_pv.pv_cost = bs->bs_root_pv.pv_cost;
  bp->bp_desg_pv.pv_dbridge_id = bs->bs_bridge_pv.pv_dbridge_id;
  bp->bp_desg_pv.pv_dport_id = bp->bp_port_id;
  bp->bp_desg_pv.pv_port_id = bp->bp_port_id;
  bp->bp_desg_msg_age = bs->bs_root_msg_age;
  bp->bp_desg_max_age = bs->bs_root_max_age;
  bp->bp_desg_fdelay = bs->bs_root_fdelay;
  bp->bp_desg_htime = bs->bs_bridge_htime;
  switch (bp->bp_infois) {
  case 4:
   bstp_set_port_role(bp, 0);
   break;
  case 3:
   bstp_set_port_role(bp, 2);
   bstp_update_info(bp);
   break;
  case 2:
   bstp_set_port_role(bp, 2);
   if (bstp_info_cmp(&bp->bp_port_pv,
       &bp->bp_desg_pv) != 0 ||
       (rbp != ((void *)0) &&
       (bp->bp_port_msg_age != rbp->bp_port_msg_age ||
       bp->bp_port_max_age != rbp->bp_port_max_age ||
       bp->bp_port_fdelay != rbp->bp_port_fdelay ||
       bp->bp_port_htime != rbp->bp_port_htime)))
    bstp_update_info(bp);
   break;
  case 1:
   if (bp == rbp) {
    bstp_set_port_role(bp, 1);
    bs->bs_root_port = bp;
   } else if (bstp_info_cmp(&bp->bp_port_pv,
        &bp->bp_desg_pv) == 1) {
    bstp_set_port_role(bp, 2);
    bstp_update_info(bp);
   } else {
    if (bstp_same_bridgeid(
        bp->bp_port_pv.pv_dbridge_id,
        bs->bs_bridge_pv.pv_dbridge_id)) {
     bstp_set_port_role(bp,
         4);
    } else {
     bstp_set_port_role(bp,
         3);
    }
   }
   break;
  }
 }
}
void
bstp_update_state(struct bstp_state *bs, struct bstp_port *bp)
{
 struct bstp_port *bp2;
 int synced;
 if (!bs->bs_allsynced) {
  synced = 1;
  for((bp2) = ((&bs->bs_bplist)->lh_first); (bp2)!= ((void *)0); (bp2) = ((bp2)->bp_next.le_next)) {
   if (!(bp2->bp_synced ||
        bp2->bp_role == 1)) {
    synced = 0;
    break;
   }
  }
  bs->bs_allsynced = synced;
 }
 bstp_update_roles(bs, bp);
 bstp_update_tc(bp);
}
void
bstp_update_roles(struct bstp_state *bs, struct bstp_port *bp)
{
 switch (bp->bp_role) {
 case 0:
  if (bp->bp_sync || !bp->bp_synced || bp->bp_reroot) {
   bp->bp_sync = 0;
   bp->bp_synced = 1;
   bp->bp_reroot = 0;
  }
  break;
 case 3:
 case 4:
  if ((bs->bs_allsynced && !bp->bp_agree) ||
      (bp->bp_proposed && bp->bp_agree)) {
   bp->bp_proposed = 0;
   bp->bp_agree = 1;
   bp->bp_flags |= 0x0002;
   ;
  }
  if (bp->bp_proposed && !bp->bp_agree) {
   bstp_set_all_sync(bs);
   bp->bp_proposed = 0;
   ;
  }
  if (bp->bp_sync || !bp->bp_synced || bp->bp_reroot) {
   bp->bp_sync = 0;
   bp->bp_synced = 1;
   bp->bp_reroot = 0;
   ;
  }
  break;
 case 1:
  if (bp->bp_state != 3 && !bp->bp_reroot) {
   bstp_set_all_reroot(bs);
   ;
  }
  if ((bs->bs_allsynced && !bp->bp_agree) ||
      (bp->bp_proposed && bp->bp_agree)) {
   bp->bp_proposed = 0;
   bp->bp_sync = 0;
   bp->bp_agree = 1;
   bp->bp_flags |= 0x0002;
   ;
  }
  if (bp->bp_proposed && !bp->bp_agree) {
   bstp_set_all_sync(bs);
   bp->bp_proposed = 0;
   ;
  }
  if (bp->bp_state != 3 &&
      (bp->bp_forward_delay_timer.active == 0 ||
      (bstp_rerooted(bs, bp) &&
      bp->bp_recent_backup_timer.active == 0 &&
      bp->bp_protover == 0x02))) {
   switch (bp->bp_state) {
   case 5:
    bstp_set_port_state(bp, 2);
    break;
   case 2:
    bstp_set_port_state(bp,
        3);
    break;
   }
  }
  if (bp->bp_state == 3 && bp->bp_reroot) {
   bp->bp_reroot = 0;
   ;
  }
  break;
 case 2:
  if (bp->bp_recent_root_timer.active == 0 && bp->bp_reroot) {
   bp->bp_reroot = 0;
   ;
  }
  if ((bp->bp_state == 5 &&
      !bp->bp_synced) || (bp->bp_agreed && !bp->bp_synced) ||
      (bp->bp_operedge && !bp->bp_synced) ||
      (bp->bp_sync && bp->bp_synced)) {
   bstp_timer_stop(&bp->bp_recent_root_timer);
   bp->bp_synced = 1;
   bp->bp_sync = 0;
   ;
  }
  if (bp->bp_state != 3 &&
      !bp->bp_agreed && !bp->bp_proposing &&
      !bp->bp_operedge) {
   bp->bp_proposing = 1;
   bp->bp_flags |= 0x0002;
   bstp_timer_start(&bp->bp_edge_delay_timer,
       (bp->bp_ptp_link ? (3 * 256) :
        bp->bp_desg_max_age));
   ;
  }
  if (bp->bp_state != 3 &&
      (bp->bp_forward_delay_timer.active == 0 || bp->bp_agreed ||
      bp->bp_operedge) &&
      (bp->bp_recent_root_timer.active == 0 || !bp->bp_reroot) &&
      !bp->bp_sync) {
   if (bp->bp_agreed)
    ;
   if (bp->bp_agreed || bp->bp_operedge ||
       bp->bp_state == 2) {
    bstp_set_port_state(bp,
        3);
    bp->bp_agreed = bp->bp_protover;
   } else if (bp->bp_state == 5)
    bstp_set_port_state(bp, 2);
  }
  if (((bp->bp_sync && !bp->bp_synced) ||
      (bp->bp_reroot && bp->bp_recent_root_timer.active) ||
      (bp->bp_flags & 0x0004)) && !bp->bp_operedge &&
      bp->bp_state != 5) {
   bstp_set_port_state(bp, 5);
   bp->bp_flags &= ~0x0004;
   bstp_timer_start(&bp->bp_forward_delay_timer,
       bp->bp_protover == 0x02 ?
       bp->bp_desg_htime : bp->bp_desg_fdelay);
   ;
  }
  break;
 }
 if (bp->bp_flags & 0x0002)
  bstp_transmit(bs, bp);
}
void
bstp_update_tc(struct bstp_port *bp)
{
 switch (bp->bp_tcstate) {
 case 1:
  if ((bp->bp_role != 2 &&
      bp->bp_role != 1) || bp->bp_operedge)
   bstp_set_port_tc(bp, 4);
  if (bp->bp_rcvdtcn)
   bstp_set_port_tc(bp, 8);
  if (bp->bp_rcvdtc)
   bstp_set_port_tc(bp, 7);
  if (bp->bp_tc_prop && !bp->bp_operedge)
   bstp_set_port_tc(bp, 5);
  if (bp->bp_rcvdtca)
   bstp_set_port_tc(bp, 6);
  break;
 case 3:
  if ((bp->bp_state == 2 ||
      bp->bp_state == 3) &&
      bp->bp_fdbflush == 0)
   bstp_set_port_tc(bp, 4);
  break;
 case 4:
  if (bp->bp_rcvdtc || bp->bp_rcvdtcn || bp->bp_rcvdtca ||
      bp->bp_tc_prop)
   bstp_set_port_tc(bp, 4);
  else if (bp->bp_role != 2 &&
    bp->bp_role != 1 &&
    bp->bp_state == 5)
   bstp_set_port_tc(bp, 3);
  if ((bp->bp_role == 2 ||
      bp->bp_role == 1) &&
      bp->bp_state == 3 &&
      !bp->bp_operedge)
   bstp_set_port_tc(bp, 2);
  break;
 case 2:
 case 8:
 case 7:
 case 5:
 case 6:
  ;
  break;
 }
}
void
bstp_update_info(struct bstp_port *bp)
{
 struct bstp_state *bs = bp->bp_bs;
 bp->bp_proposing = 0;
 bp->bp_proposed = 0;
 if (bp->bp_agreed && !bstp_pdu_bettersame(bp, 2))
  bp->bp_agreed = 0;
 if (bp->bp_synced && !bp->bp_agreed) {
  bp->bp_synced = 0;
  bs->bs_allsynced = 0;
 }
 bp->bp_port_pv = bp->bp_desg_pv;
 bp->bp_port_msg_age = bp->bp_desg_msg_age;
 bp->bp_port_max_age = bp->bp_desg_max_age;
 bp->bp_port_fdelay = bp->bp_desg_fdelay;
 bp->bp_port_htime = bp->bp_desg_htime;
 bp->bp_infois = 2;
 bp->bp_flags |= 0x0002;
}
void
bstp_set_other_tcprop(struct bstp_port *bp)
{
 struct bstp_state *bs = bp->bp_bs;
 struct bstp_port *bp2;
 for((bp2) = ((&bs->bs_bplist)->lh_first); (bp2)!= ((void *)0); (bp2) = ((bp2)->bp_next.le_next)) {
  if (bp2 == bp)
   continue;
  bp2->bp_tc_prop = 1;
 }
}
void
bstp_set_all_reroot(struct bstp_state *bs)
{
 struct bstp_port *bp;
 for((bp) = ((&bs->bs_bplist)->lh_first); (bp)!= ((void *)0); (bp) = ((bp)->bp_next.le_next))
  bp->bp_reroot = 1;
}
void
bstp_set_all_sync(struct bstp_state *bs)
{
 struct bstp_port *bp;
 for((bp) = ((&bs->bs_bplist)->lh_first); (bp)!= ((void *)0); (bp) = ((bp)->bp_next.le_next)) {
  bp->bp_sync = 1;
  bp->bp_synced = 0;
 }
 bs->bs_allsynced = 0;
}
void
bstp_set_port_state(struct bstp_port *bp, int state)
{
 if (bp->bp_state == state)
  return;
 bp->bp_state = state;
 switch (bp->bp_state) {
 case 5:
  ;
  break;
 case 2:
  ;
  bstp_timer_start(&bp->bp_forward_delay_timer,
      bp->bp_protover == 0x02 ?
      bp->bp_desg_htime : bp->bp_desg_fdelay);
  break;
 case 3:
  ;
  bstp_timer_stop(&bp->bp_forward_delay_timer);
  bp->bp_forward_transitions++;
  break;
 }
}
void
bstp_set_port_role(struct bstp_port *bp, int role)
{
 struct bstp_state *bs = bp->bp_bs;
 if (bp->bp_role == role)
  return;
 switch (bp->bp_role) {
 case 0:
  bstp_timer_start(&bp->bp_forward_delay_timer,
      bp->bp_desg_max_age);
  break;
 case 4:
  bstp_timer_start(&bp->bp_recent_backup_timer,
      bp->bp_desg_htime * 2);
 case 3:
  bstp_timer_start(&bp->bp_forward_delay_timer,
      bp->bp_desg_fdelay);
  bp->bp_sync = 0;
  bp->bp_synced = 1;
  bp->bp_reroot = 0;
  break;
 case 1:
  bstp_timer_start(&bp->bp_recent_root_timer,
      (15 * 256));
  break;
 }
 bp->bp_role = role;
 bp->bp_proposing = 0;
 bs->bs_allsynced = 0;
 switch (bp->bp_role) {
 case 0:
 case 3:
 case 4:
  ;
  bstp_set_port_state(bp, 5);
  bstp_timer_stop(&bp->bp_recent_root_timer);
  bstp_timer_latch(&bp->bp_forward_delay_timer);
  bp->bp_sync = 0;
  bp->bp_synced = 1;
  bp->bp_reroot = 0;
  break;
 case 1:
  ;
  bstp_set_port_state(bp, 5);
  bstp_timer_latch(&bp->bp_recent_root_timer);
  bp->bp_proposing = 0;
  break;
 case 2:
  ;
  bstp_timer_start(&bp->bp_hello_timer,
      bp->bp_desg_htime);
  bp->bp_agree = 0;
  break;
 }
 bstp_update_tc(bp);
}
void
bstp_set_port_proto(struct bstp_port *bp, int proto)
{
 struct bstp_state *bs = bp->bp_bs;
 switch (proto) {
 case 0x00:
  bstp_timer_stop(&bp->bp_migrate_delay_timer);
  bp->bp_operedge = 0;
  break;
 case 0x02:
  bstp_timer_start(&bp->bp_migrate_delay_timer,
      bs->bs_migration_delay);
  break;
 default:
  ;
  return;
 }
 bp->bp_protover = proto;
 bp->bp_flags &= ~0x0001;
}
void
bstp_set_port_tc(struct bstp_port *bp, int state)
{
 struct bstp_state *bs = bp->bp_bs;
 bp->bp_tcstate = state;
 switch (bp->bp_tcstate) {
 case 1:
  ;
  break;
 case 3:
  bstp_timer_stop(&bp->bp_tc_timer);
  bp->bp_fdbflush = 1;
  bstp_notify_rtage(bp, 0);
  bp->bp_tc_ack = 0;
  ;
  break;
 case 4:
  bp->bp_rcvdtc = 0;
  bp->bp_rcvdtcn = 0;
  bp->bp_rcvdtca = 0;
  bp->bp_tc_prop = 0;
  ;
  break;
 case 2:
  bstp_set_timer_tc(bp);
  bstp_set_other_tcprop(bp);
  bp->bp_flags |= 0x0002;
  bstp_transmit(bs, bp);
  getmicrotime(&bs->bs_last_tc_time);
  ;
  bp->bp_tcstate = 1;
  break;
 case 8:
  bstp_set_timer_tc(bp);
  ;
 case 7:
  bp->bp_rcvdtc = 0;
  bp->bp_rcvdtcn = 0;
  if (bp->bp_role == 2)
   bp->bp_tc_ack = 1;
  bstp_set_other_tcprop(bp);
  ;
  bp->bp_tcstate = 1;
  break;
 case 5:
  bp->bp_fdbflush = 1;
  bstp_notify_rtage(bp, 0);
  bp->bp_tc_prop = 0;
  bstp_set_timer_tc(bp);
  ;
  bp->bp_tcstate = 1;
  break;
 case 6:
  bstp_timer_stop(&bp->bp_tc_timer);
  bp->bp_rcvdtca = 0;
  ;
  bp->bp_tcstate = 1;
  break;
 }
}
void
bstp_set_timer_tc(struct bstp_port *bp)
{
 struct bstp_state *bs = bp->bp_bs;
 if (bp->bp_tc_timer.active)
  return;
 switch (bp->bp_protover) {
 case 0x02:
  bstp_timer_start(&bp->bp_tc_timer,
      bp->bp_desg_htime + (1 * 256));
  bp->bp_flags |= 0x0002;
  break;
 case 0x00:
  bstp_timer_start(&bp->bp_tc_timer,
      bs->bs_root_max_age + bs->bs_root_fdelay);
  break;
 }
}
void
bstp_set_timer_msgage(struct bstp_port *bp)
{
 if (bp->bp_port_msg_age + (1 * 256) <=
     bp->bp_port_max_age) {
  bstp_timer_start(&bp->bp_message_age_timer,
      bp->bp_port_htime * 3);
 } else
  bstp_timer_start(&bp->bp_message_age_timer, 0);
}
int
bstp_rerooted(struct bstp_state *bs, struct bstp_port *bp)
{
 struct bstp_port *bp2;
 int rr_set = 0;
 for((bp2) = ((&bs->bs_bplist)->lh_first); (bp2)!= ((void *)0); (bp2) = ((bp2)->bp_next.le_next)) {
  if (bp2 == bp)
   continue;
  if (bp2->bp_recent_root_timer.active) {
   rr_set = 1;
   break;
  }
 }
 return (!rr_set);
}
u_int32_t
bstp_calc_path_cost(struct bstp_port *bp)
{
 struct ifnet *ifp = bp->bp_ifp;
 u_int32_t path_cost;
 if (bp->bp_flags & 0x0008)
  return bp->bp_path_cost;
 if (ifp->if_data.ifi_baudrate < 1000)
  return (55);
 path_cost = 20000000000ULL / (ifp->if_data.ifi_baudrate / 1000);
 if (path_cost > 200000000)
  path_cost = 200000000;
 if (bp->bp_protover == 0x00 && path_cost > 65535)
  path_cost = 65535;
 return (path_cost);
}
void
bstp_notify_rtage(struct bstp_port *bp, int pending)
{
 int age = 0;
 do { int _s = rw_status(&netlock); if (_s != 0x0001UL && _s != 0x0002UL) splassert_fail(0x0002UL, _s, __func__); } while (0);
 switch (bp->bp_protover) {
 case 0x00:
  age = bp->bp_desg_fdelay / (1 * 256);
  break;
 case 0x02:
  age = 0;
  break;
 }
 if (bp->bp_active == 1)
  bridge_rtagenode(bp->bp_ifp, age);
 bp->bp_fdbflush = 0;
}
void
bstp_ifstate(void *arg)
{
 struct ifnet *ifp = (struct ifnet *)arg;
 struct bridge_iflist *p;
 struct bstp_port *bp;
 struct bstp_state *bs;
 int s;
 if (ifp->if_data.ifi_type == 0xd1)
  return;
 s = _splraise(6);
 if ((p = (struct bridge_iflist *)ifp->if_bridgeport) == ((void *)0))
  goto done;
 if ((p->bif_flags & 0x0008) == 0)
  goto done;
 if ((bp = p->bif_stp) == ((void *)0))
  goto done;
 if ((bs = bp->bp_bs) == ((void *)0))
  goto done;
 bstp_ifupdstatus(bs, bp);
 bstp_update_state(bs, bp);
 done:
 _splx(s);
}
void
bstp_ifupdstatus(struct bstp_state *bs, struct bstp_port *bp)
{
 struct ifnet *ifp = bp->bp_ifp;
 if (ifp == ((void *)0))
  return;
 bp->bp_path_cost = bstp_calc_path_cost(bp);
 if ((ifp->if_flags & 0x1) &&
     ifp->if_data.ifi_link_state != 2) {
  if (bp->bp_flags & 0x0020) {
   bp->bp_ptp_link = ifp->if_data.ifi_link_state ==
       6 ? 1 : 0;
  }
  if (bp->bp_infois == 4)
   bstp_enable_port(bs, bp);
 } else {
  if (bp->bp_infois != 4)
   bstp_disable_port(bs, bp);
 }
}
void
bstp_enable_port(struct bstp_state *bs, struct bstp_port *bp)
{
 bp->bp_infois = 3;
 bstp_assign_roles(bs);
}
void
bstp_disable_port(struct bstp_state *bs, struct bstp_port *bp)
{
 bp->bp_infois = 4;
 bstp_set_port_state(bp, 5);
 bstp_assign_roles(bs);
}
void
bstp_tick(void *arg)
{
 struct bstp_state *bs = (struct bstp_state *)arg;
 struct bstp_port *bp;
 int s;
 s = _splraise(6);
 if ((bs->bs_ifp->if_flags & 0x40) == 0) {
  _splx(s);
  return;
 }
 if (bstp_timer_expired(&bs->bs_link_timer)) {
  for((bp) = ((&bs->bs_bplist)->lh_first); (bp)!= ((void *)0); (bp) = ((bp)->bp_next.le_next))
   bstp_ifupdstatus(bs, bp);
  bstp_timer_start(&bs->bs_link_timer, ((1 * 256) * 15));
 }
 for((bp) = ((&bs->bs_bplist)->lh_first); (bp)!= ((void *)0); (bp) = ((bp)->bp_next.le_next)) {
  bstp_timer_expired(&bp->bp_tc_timer);
  bstp_timer_expired(&bp->bp_recent_root_timer);
  bstp_timer_expired(&bp->bp_forward_delay_timer);
  bstp_timer_expired(&bp->bp_recent_backup_timer);
  if (bstp_timer_expired(&bp->bp_hello_timer))
   bstp_hello_timer_expiry(bs, bp);
  if (bstp_timer_expired(&bp->bp_message_age_timer))
   bstp_message_age_expiry(bs, bp);
  if (bstp_timer_expired(&bp->bp_migrate_delay_timer))
   bstp_migrate_delay_expiry(bs, bp);
  if (bstp_timer_expired(&bp->bp_edge_delay_timer))
   bstp_edge_delay_expiry(bs, bp);
  bstp_update_state(bs, bp);
  if (bp->bp_txcount > 0)
   bp->bp_txcount--;
 }
 if (bs->bs_ifp->if_flags & 0x40)
  timeout_add_sec(&bs->bs_bstptimeout, 1);
 _splx(s);
}
void
bstp_timer_start(struct bstp_timer *t, u_int16_t v)
{
 t->value = v;
 t->active = 1;
 t->latched = 0;
}
void
bstp_timer_stop(struct bstp_timer *t)
{
 t->value = 0;
 t->active = 0;
 t->latched = 0;
}
void
bstp_timer_latch(struct bstp_timer *t)
{
 t->latched = 1;
 t->active = 1;
}
int
bstp_timer_expired(struct bstp_timer *t)
{
 if (t->active == 0 || t->latched)
  return (0);
 t->value -= (1 * 256);
 if (t->value <= 0) {
  bstp_timer_stop(t);
  return (1);
 }
 return (0);
}
void
bstp_hello_timer_expiry(struct bstp_state *bs, struct bstp_port *bp)
{
 if ((bp->bp_flags & 0x0002) ||
     bp->bp_role == 2 ||
     (bp->bp_role == 1 &&
      bp->bp_tc_timer.active == 1)) {
  bstp_timer_start(&bp->bp_hello_timer, bp->bp_desg_htime);
  bp->bp_flags |= 0x0002;
  bstp_transmit(bs, bp);
 }
}
void
bstp_message_age_expiry(struct bstp_state *bs, struct bstp_port *bp)
{
 if (bp->bp_infois == 1) {
  bp->bp_infois = 3;
  bstp_assign_roles(bs);
  ;
 }
}
void
bstp_migrate_delay_expiry(struct bstp_state *bs, struct bstp_port *bp)
{
 bp->bp_flags |= 0x0001;
}
void
bstp_edge_delay_expiry(struct bstp_state *bs, struct bstp_port *bp)
{
 if ((bp->bp_flags & 0x0010) &&
     bp->bp_protover == 0x02 && bp->bp_proposing &&
     bp->bp_role == 2)
  bp->bp_operedge = 1;
}
int
bstp_addr_cmp(const u_int8_t *a, const u_int8_t *b)
{
 int i, d;
 for (i = 0, d = 0; i < 6 && d == 0; i++) {
  d = ((int)a[i]) - ((int)b[i]);
 }
 return (d);
}
int
bstp_same_bridgeid(u_int64_t id1, u_int64_t id2)
{
 u_char addr1[6];
 u_char addr2[6];
 do { addr1[0] = id1 >> 40; addr1[1] = id1 >> 32; addr1[2] = id1 >> 24; addr1[3] = id1 >> 16; addr1[4] = id1 >> 8; addr1[5] = id1 >> 0; } while (0);
 do { addr2[0] = id2 >> 40; addr2[1] = id2 >> 32; addr2[2] = id2 >> 24; addr2[3] = id2 >> 16; addr2[4] = id2 >> 8; addr2[5] = id2 >> 0; } while (0);
 if (bstp_addr_cmp(addr1, addr2) == 0)
  return (1);
 return (0);
}
void
bstp_initialization(struct bstp_state *bs)
{
 struct bstp_port *bp;
 struct ifnet *mif = ((void *)0);
 u_char *e_addr;
 if ((((&bs->bs_bplist)->lh_first) == ((void *)0))) {
  bstp_stop(bs);
  return;
 }
 for((bp) = ((&bs->bs_bplist)->lh_first); (bp)!= ((void *)0); (bp) = ((bp)->bp_next.le_next)) {
  if (mif == ((void *)0)) {
   mif = bp->bp_ifp;
   continue;
  }
  if (bstp_addr_cmp(((caddr_t)((bp->bp_ifp->if_sadl)->sdl_data + (bp->bp_ifp->if_sadl)->sdl_nlen)),
      ((caddr_t)((mif->if_sadl)->sdl_data + (mif->if_sadl)->sdl_nlen))) < 0) {
   mif = bp->bp_ifp;
   continue;
  }
 }
 e_addr = ((caddr_t)((mif->if_sadl)->sdl_data + (mif->if_sadl)->sdl_nlen));
 bs->bs_bridge_pv.pv_dbridge_id =
     (((u_int64_t)bs->bs_bridge_priority) << 48) |
     (((u_int64_t)e_addr[0]) << 40) |
     (((u_int64_t)e_addr[1]) << 32) |
     (((u_int64_t)e_addr[2]) << 24) |
     (((u_int64_t)e_addr[3]) << 16) |
     (((u_int64_t)e_addr[4]) << 8) |
     (((u_int64_t)e_addr[5]));
 bs->bs_bridge_pv.pv_root_id = bs->bs_bridge_pv.pv_dbridge_id;
 bs->bs_bridge_pv.pv_cost = 0;
 bs->bs_bridge_pv.pv_dport_id = 0;
 bs->bs_bridge_pv.pv_port_id = 0;
 if (!((&bs->bs_bstptimeout)->to_flags & 4))
  timeout_set(&bs->bs_bstptimeout, bstp_tick, bs);
 if (bs->bs_ifp->if_flags & 0x40 &&
     !((&bs->bs_bstptimeout)->to_flags & 2))
  timeout_add_sec(&bs->bs_bstptimeout, 1);
 for((bp) = ((&bs->bs_bplist)->lh_first); (bp)!= ((void *)0); (bp) = ((bp)->bp_next.le_next)) {
  bp->bp_port_id = (bp->bp_priority << 8) |
      (bp->bp_ifp->if_index & 0xfff);
  bstp_ifupdstatus(bs, bp);
 }
 bstp_assign_roles(bs);
 bstp_timer_start(&bs->bs_link_timer, ((1 * 256) * 15));
}
struct bstp_state *
bstp_create(struct ifnet *ifp)
{
 struct bstp_state *bs;
 int s;
 s = _splraise(6);
 bs = malloc(sizeof(*bs), 2, 0x0001|0x0008);
 do { ((&bs->bs_bplist)->lh_first) = ((void *)0); } while (0);
 bs->bs_ifp = ifp;
 bs->bs_bridge_max_age = (20 * 256);
 bs->bs_bridge_htime = (2 * 256);
 bs->bs_bridge_fdelay = (15 * 256);
 bs->bs_bridge_priority = 0x8000;
 bs->bs_hold_time = (1 * 256);
 bs->bs_migration_delay = (3 * 256);
 bs->bs_txholdcount = 6;
 bs->bs_protover = 0x02;
 getmicrotime(&bs->bs_last_tc_time);
 _splx(s);
 return (bs);
}
void
bstp_destroy(struct bstp_state *bs)
{
 if (bs == ((void *)0))
  return;
 if (!(((&bs->bs_bplist)->lh_first) == ((void *)0)))
  panic("bstp still active");
 free(bs, 2, sizeof *bs);
}
void
bstp_stop(struct bstp_state *bs)
{
 struct bstp_port *bp;
 for((bp) = ((&bs->bs_bplist)->lh_first); (bp)!= ((void *)0); (bp) = ((bp)->bp_next.le_next))
  bstp_set_port_state(bp, 5);
 if (((&bs->bs_bstptimeout)->to_flags & 4))
  timeout_del(&bs->bs_bstptimeout);
}
struct bstp_port *
bstp_add(struct bstp_state *bs, struct ifnet *ifp)
{
 struct bstp_port *bp;
 switch (ifp->if_data.ifi_type) {
 case 0x06:
  break;
 default:
  return (((void *)0));
 }
 bp = malloc(sizeof(*bp), 2, 0x0002|0x0008);
 if (bp == ((void *)0))
  return (((void *)0));
 bp->bp_ifp = ifp;
 bp->bp_bs = bs;
 bp->bp_priority = 0x80;
 bp->bp_txcount = 0;
 bp->bp_infois = 4;
 bp->bp_flags = 0x0010 | 0x0020;
 bstp_set_port_state(bp, 5);
 bstp_set_port_proto(bp, bs->bs_protover);
 bstp_set_port_role(bp, 0);
 bstp_set_port_tc(bp, 3);
 bp->bp_path_cost = bstp_calc_path_cost(bp);
 do { if (((bp)->bp_next.le_next = (&bs->bs_bplist)->lh_first) != ((void *)0)) (&bs->bs_bplist)->lh_first->bp_next.le_prev = &(bp)->bp_next.le_next; (&bs->bs_bplist)->lh_first = (bp); (bp)->bp_next.le_prev = &(&bs->bs_bplist)->lh_first; } while (0);
 bp->bp_active = 1;
 bp->bp_flags |= 0x0002;
 bstp_initialization(bs);
 bstp_update_roles(bs, bp);
 if (ifp->if_linkstatehooks != ((void *)0))
  bp->bp_lhcookie = hook_establish(ifp->if_linkstatehooks, 1,
      bstp_ifstate, ifp);
 return (bp);
}
void
bstp_delete(struct bstp_port *bp)
{
 struct bstp_state *bs = bp->bp_bs;
 struct ifnet *ifp = bp->bp_ifp;
 if (!bp->bp_active)
  panic("not a bstp member");
 if (ifp != ((void *)0) && ifp->if_linkstatehooks != ((void *)0))
  hook_disestablish(ifp->if_linkstatehooks, bp->bp_lhcookie);
 do { if ((bp)->bp_next.le_next != ((void *)0)) (bp)->bp_next.le_next->bp_next.le_prev = (bp)->bp_next.le_prev; *(bp)->bp_next.le_prev = (bp)->bp_next.le_next; ((bp)->bp_next.le_prev) = ((void *)-1); ((bp)->bp_next.le_next) = ((void *)-1); } while (0);
 free(bp, 2, sizeof *bp);
 bstp_initialization(bs);
}
u_int8_t
bstp_getstate(struct bstp_state *bs, struct bstp_port *bp)
{
 u_int8_t state = bp->bp_state;
 if (bs->bs_protover != 0x00)
  return (state);
 if (bp->bp_role == 0)
  state = 0;
 else if (bp->bp_role == 3 ||
     bp->bp_role == 4)
  state = 4;
 else if (state == 5)
  state = 1;
 return (state);
}
void
bstp_ifsflags(struct bstp_port *bp, u_int flags)
{
 struct bstp_state *bs;
 if ((flags & 0x0008) == 0)
  return;
 bs = bp->bp_bs;
 if (flags & 0x0020) {
  if ((bp->bp_flags & 0x0010) == 0) {
   bp->bp_flags |= 0x0010;
   if (bp->bp_edge_delay_timer.active == 0)
    bstp_edge_delay_expiry(bs, bp);
  }
 } else
  bp->bp_flags &= ~0x0010;
 if (flags & 0x0010)
  bp->bp_operedge = 1;
 else
  bp->bp_operedge = 0;
 if (flags & 0x0080) {
  if ((bp->bp_flags & 0x0020) == 0) {
   bp->bp_flags |= 0x0020;
   bstp_ifupdstatus(bs, bp);
  }
 } else
  bp->bp_flags &= ~0x0020;
 if (flags & 0x0040)
  bp->bp_ptp_link = 1;
 else
  bp->bp_ptp_link = 0;
}
int
bstp_ioctl(struct ifnet *ifp, u_long cmd, caddr_t data)
{
 struct bridge_softc *sc = (struct bridge_softc *)ifp->if_softc;
 struct bstp_state *bs = sc->sc_stp;
 struct ifbrparam *ifbp = (struct ifbrparam *)data;
 struct ifbreq *ifbr = (struct ifbreq *)data;
 struct bridge_iflist *p;
 struct ifnet *ifs;
 struct bstp_port *bp;
 int r = 0, err = 0, val;
 switch (cmd) {
 case ((unsigned long)0x80000000 | ((sizeof(struct ifbreq) & 0x1fff) << 16) | ((('i')) << 8) | ((84))):
 case ((unsigned long)0x80000000 | ((sizeof(struct ifbreq) & 0x1fff) << 16) | ((('i')) << 8) | ((85))):
  ifs = ifunit(ifbr->ifbr_ifsname);
  if (ifs == ((void *)0)) {
   err = 2;
   break;
  }
  p = (struct bridge_iflist *)ifs->if_bridgeport;
  if (p == ((void *)0) || p->bridge_sc != sc) {
   err = 3;
   break;
  }
  if ((p->bif_flags & 0x0008) == 0) {
   err = 22;
   break;
  }
  bp = p->bif_stp;
  break;
 default:
  break;
 }
 if (err)
  return (err);
 switch (cmd) {
 case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct ifbrparam) & 0x1fff) << 16) | ((('i')) << 8) | ((80))):
  ifbp->ifbrp_ifbrpu.ifbrpu_prio = bs->bs_bridge_priority;
  break;
 case ((unsigned long)0x80000000 | ((sizeof(struct ifbrparam) & 0x1fff) << 16) | ((('i')) << 8) | ((80))):
  val = ifbp->ifbrp_ifbrpu.ifbrpu_prio;
  if (val < 0 || val > 61440) {
   err = 22;
   break;
  }
  val -= val % 4096;
  bs->bs_bridge_priority = val;
  r = 1;
  break;
 case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct ifbrparam) & 0x1fff) << 16) | ((('i')) << 8) | ((83))):
  ifbp->ifbrp_ifbrpu.ifbrpu_maxage = bs->bs_bridge_max_age >> 8;
  break;
 case ((unsigned long)0x80000000 | ((sizeof(struct ifbrparam) & 0x1fff) << 16) | ((('i')) << 8) | ((83))):
  val = ifbp->ifbrp_ifbrpu.ifbrpu_maxage;
  val *= (1 * 256);
  if (val < (6 * 256) || val > (40 * 256)) {
   err = 22;
   break;
  }
  bs->bs_bridge_max_age = val;
  r = 1;
  break;
 case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct ifbrparam) & 0x1fff) << 16) | ((('i')) << 8) | ((81))):
  ifbp->ifbrp_ifbrpu.ifbrpu_hellotime = bs->bs_bridge_htime >> 8;
  break;
 case ((unsigned long)0x80000000 | ((sizeof(struct ifbrparam) & 0x1fff) << 16) | ((('i')) << 8) | ((81))):
  val = ifbp->ifbrp_ifbrpu.ifbrpu_hellotime;
  val *= (1 * 256);
  if (bs->bs_protover != 0x00) {
   err = 1;
   break;
  }
  if (val < (1 * 256) || val > (2 * 256)) {
   err = 22;
   break;
  }
  bs->bs_bridge_htime = val;
  r = 1;
  break;
 case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct ifbrparam) & 0x1fff) << 16) | ((('i')) << 8) | ((82))):
  ifbp->ifbrp_ifbrpu.ifbrpu_fwddelay = bs->bs_bridge_fdelay >> 8;
  break;
 case ((unsigned long)0x80000000 | ((sizeof(struct ifbrparam) & 0x1fff) << 16) | ((('i')) << 8) | ((82))):
  val = ifbp->ifbrp_ifbrpu.ifbrpu_fwddelay;
  val *= (1 * 256);
  if (val < (4 * 256) ||
      val > (30 * 256)) {
   err = 22;
   break;
  }
  bs->bs_bridge_fdelay = val;
  r = 1;
  break;
 case ((unsigned long)0x80000000 | ((sizeof(struct ifbrparam) & 0x1fff) << 16) | ((('i')) << 8) | ((89))):
  val = ifbp->ifbrp_ifbrpu.ifbrpu_txhc;
  if (val < 1 || val > 10) {
   err = 22;
   break;
  }
  bs->bs_txholdcount = val;
  for((bp) = ((&bs->bs_bplist)->lh_first); (bp)!= ((void *)0); (bp) = ((bp)->bp_next.le_next))
   bp->bp_txcount = 0;
  break;
 case ((unsigned long)0x80000000 | ((sizeof(struct ifbreq) & 0x1fff) << 16) | ((('i')) << 8) | ((84))):
  val = ifbr->ifbr_priority;
  if (val < 0 || val > 240)
   return (22);
  val -= val % 16;
  bp->bp_priority = val;
  r = 1;
  break;
 case ((unsigned long)0x80000000 | ((sizeof(struct ifbreq) & 0x1fff) << 16) | ((('i')) << 8) | ((85))):
  val = ifbr->ifbr_path_cost;
  if (val > 200000000) {
   err = 22;
   break;
  }
  if (val == 0) {
   bp->bp_flags &= ~0x0008;
   bp->bp_path_cost = bstp_calc_path_cost(bp);
  } else {
   bp->bp_path_cost = val;
   bp->bp_flags |= 0x0008;
  }
  r = 1;
  break;
 case ((unsigned long)0x80000000 | ((sizeof(struct ifbrparam) & 0x1fff) << 16) | ((('i')) << 8) | ((90))):
  val = ifbp->ifbrp_ifbrpu.ifbrpu_proto;
  switch (val) {
  case 0x00:
  case 0x02:
   bs->bs_protover = val;
   bs->bs_bridge_htime = (2 * 256);
   for((bp) = ((&bs->bs_bplist)->lh_first); (bp)!= ((void *)0); (bp) = ((bp)->bp_next.le_next)) {
    bp->bp_infois = 4;
    bp->bp_txcount = 0;
    bstp_set_port_proto(bp, bs->bs_protover);
    bstp_set_port_role(bp, 0);
    bstp_set_port_tc(bp, 3);
    bstp_timer_stop(&bp->bp_recent_backup_timer);
   }
   r = 1;
   break;
  default:
   err = 22;
  }
  break;
 default:
  break;
 }
 if (r)
  bstp_initialization(bs);
 return (err);
}
