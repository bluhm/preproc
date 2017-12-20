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
struct nameidata {
 const char *ni_dirp;
 int ni_dirfd;
 enum uio_seg ni_segflg;
 struct vnode *ni_startdir;
 struct vnode *ni_rootdir;
 uint64_t ni_pledge;
 struct vnode *ni_vp;
 struct vnode *ni_dvp;
 size_t ni_pathlen;
 char *ni_next;
 u_long ni_loopcnt;
 struct componentname {
  u_long cn_nameiop;
  u_long cn_flags;
  struct proc *cn_proc;
  struct ucred *cn_cred;
  char *cn_pnbuf;
  char *cn_nameptr;
  long cn_namelen;
  long cn_consume;
 } ni_cnd;
};
void ndinitat(struct nameidata *ndp, u_long op, u_long flags,
    enum uio_seg segflg, int dirfd, const char *namep, struct proc *p);
struct namecache {
 struct { struct namecache *tqe_next; struct namecache **tqe_prev; } nc_lru;
 struct { struct namecache *tqe_next; struct namecache **tqe_prev; } nc_neg;
 struct rb_entry n_rbcache;
 struct { struct namecache *tqe_next; struct namecache **tqe_prev; } nc_me;
 struct vnode *nc_dvp;
 u_long nc_dvpid;
 struct vnode *nc_vp;
 u_long nc_vpid;
 char nc_nlen;
 char nc_name[31];
};
struct namecache_rb_cache;
int namei(struct nameidata *ndp);
int vfs_lookup(struct nameidata *ndp);
int vfs_relookup(struct vnode *dvp, struct vnode **vpp,
        struct componentname *cnp);
void cache_tree_init(struct namecache_rb_cache *);
void cache_purge(struct vnode *);
int cache_lookup(struct vnode *, struct vnode **, struct componentname *);
void cache_enter(struct vnode *, struct vnode *, struct componentname *);
int cache_revlookup(struct vnode *, struct vnode **, char **, char *);
void nchinit(void);
struct mount;
void cache_purgevfs(struct mount *);
extern struct pool namei_pool;
struct nchstats {
 u_int64_t ncs_goodhits;
 u_int64_t ncs_neghits;
 u_int64_t ncs_badhits;
 u_int64_t ncs_falsehits;
 u_int64_t ncs_miss;
 u_int64_t ncs_long;
 u_int64_t ncs_pass2;
 u_int64_t ncs_2passes;
 u_int64_t ncs_revhits;
 u_int64_t ncs_revmiss;
 u_int64_t ncs_dothits;
 u_int64_t ncs_dotdothits;
};
struct mdproc {
 struct trapframe64 *md_tf;
 struct fpstate64 *md_fpstate;
 volatile int md_astpending;
};
struct kevent {
 __uintptr_t ident;
 short filter;
 u_short flags;
 u_int fflags;
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
int enterpgrp(struct process *, pid_t, struct pgrp *, struct session *);
void fixjobc(struct process *, struct pgrp *, int);
int inferior(struct process *, struct process *);
void leavepgrp(struct process *);
void preempt(void);
void pgdelete(struct pgrp *);
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
 struct proc *a_p;
};
int VOP_LOCK(struct vnode *, int, struct proc *);
struct vop_unlock_args {
 struct vnode *a_vp;
 struct proc *a_p;
};
int VOP_UNLOCK(struct vnode *, struct proc *);
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
int vn_lock(struct vnode *, int, struct proc *);
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
typedef struct { int32_t val[2]; } fsid_t;
struct fid {
 u_short fid_len;
 u_short fid_reserved;
 char fid_data[16];
};
struct export_args {
 int ex_flags;
 uid_t ex_root;
 struct xucred ex_anon;
 struct sockaddr *ex_addr;
 int ex_addrlen;
 struct sockaddr *ex_mask;
 int ex_masklen;
};
struct ufs_args {
 char *fspec;
 struct export_args export_info;
};
struct mfs_args {
 char *fspec;
 struct export_args export_info;
 caddr_t base;
 u_long size;
};
struct iso_args {
 char *fspec;
 struct export_args export_info;
 int flags;
 int sess;
};
struct nfs_args {
 int version;
 struct sockaddr *addr;
 int addrlen;
 int sotype;
 int proto;
 u_char *fh;
 int fhsize;
 int flags;
 int wsize;
 int rsize;
 int readdirsize;
 int timeo;
 int retrans;
 int maxgrouplist;
 int readahead;
 int leaseterm;
 int deadthresh;
 char *hostname;
 int acregmin;
 int acregmax;
 int acdirmin;
 int acdirmax;
};
struct msdosfs_args {
 char *fspec;
 struct export_args export_info;
 uid_t uid;
 gid_t gid;
 mode_t mask;
 int flags;
};
struct ntfs_args {
 char *fspec;
 struct export_args export_info;
 uid_t uid;
 gid_t gid;
 mode_t mode;
 u_long flag;
};
struct udf_args {
 char *fspec;
 u_int32_t lastblock;
};
struct tmpfs_args {
 int ta_version;
 ino_t ta_nodes_max;
 off_t ta_size_max;
 uid_t ta_root_uid;
 gid_t ta_root_gid;
 mode_t ta_root_mode;
};
struct fusefs_args {
 char *name;
 int fd;
 int max_read;
};
union mount_info {
 struct ufs_args ufs_args;
 struct mfs_args mfs_args;
 struct nfs_args nfs_args;
 struct iso_args iso_args;
 struct msdosfs_args msdosfs_args;
 struct ntfs_args ntfs_args;
 struct tmpfs_args tmpfs_args;
 char __align[160];
};
struct statfs {
 u_int32_t f_flags;
 u_int32_t f_bsize;
 u_int32_t f_iosize;
 u_int64_t f_blocks;
 u_int64_t f_bfree;
 int64_t f_bavail;
 u_int64_t f_files;
 u_int64_t f_ffree;
 int64_t f_favail;
 u_int64_t f_syncwrites;
 u_int64_t f_syncreads;
 u_int64_t f_asyncwrites;
 u_int64_t f_asyncreads;
 fsid_t f_fsid;
 u_int32_t f_namemax;
 uid_t f_owner;
 u_int64_t f_ctime;
 char f_fstypename[16];
 char f_mntonname[90];
 char f_mntfromname[90];
 char f_mntfromspec[90];
 union mount_info mount_info;
};
struct vnodelst { struct vnode *lh_first; };
struct mount {
 struct { struct mount *tqe_next; struct mount **tqe_prev; } mnt_list;
 struct { struct mount *sle_next; } mnt_dounmount;
 const struct vfsops *mnt_op;
 struct vfsconf *mnt_vfc;
 struct vnode *mnt_vnodecovered;
 struct vnode *mnt_syncer;
 struct vnodelst mnt_vnodelist;
 struct rwlock mnt_lock;
 int mnt_flag;
 struct statfs mnt_stat;
 void *mnt_data;
};
struct fhandle {
 fsid_t fh_fsid;
 struct fid fh_fid;
};
typedef struct fhandle fhandle_t;
struct vfsconf {
 const struct vfsops *vfc_vfsops;
 char vfc_name[16];
 int vfc_typenum;
 int vfc_refcount;
 int vfc_flags;
 struct vfsconf *vfc_next;
 size_t vfc_datasize;
};
struct bcachestats {
 int64_t numbufs;
 int64_t numbufpages;
 int64_t numdirtypages;
 int64_t numcleanpages;
 int64_t pendingwrites;
 int64_t pendingreads;
 int64_t numwrites;
 int64_t numreads;
 int64_t cachehits;
 int64_t busymapped;
 int64_t dmapages;
 int64_t highpages;
 int64_t delwribufs;
 int64_t kvaslots;
 int64_t kvaslots_avail;
 int64_t highflips;
 int64_t highflops;
 int64_t dmaflips;
};
extern struct bcachestats bcstats;
extern long buflowpages, bufhighpages, bufbackpages;
extern int bufcachepercent;
extern void bufadjust(int);
struct uvm_constraint_range;
extern int bufbackoff(struct uvm_constraint_range*, long);
struct nameidata;
struct mbuf;
extern int maxvfsconf;
extern struct vfsconf *vfsconf;
struct vfsops {
 int (*vfs_mount)(struct mount *mp, const char *path,
        void *data,
        struct nameidata *ndp, struct proc *p);
 int (*vfs_start)(struct mount *mp, int flags,
        struct proc *p);
 int (*vfs_unmount)(struct mount *mp, int mntflags,
        struct proc *p);
 int (*vfs_root)(struct mount *mp, struct vnode **vpp);
 int (*vfs_quotactl)(struct mount *mp, int cmds, uid_t uid,
        caddr_t arg, struct proc *p);
 int (*vfs_statfs)(struct mount *mp, struct statfs *sbp,
        struct proc *p);
 int (*vfs_sync)(struct mount *mp, int waitfor,
        struct ucred *cred, struct proc *p);
 int (*vfs_vget)(struct mount *mp, ino_t ino,
        struct vnode **vpp);
 int (*vfs_fhtovp)(struct mount *mp, struct fid *fhp,
         struct vnode **vpp);
 int (*vfs_vptofh)(struct vnode *vp, struct fid *fhp);
 int (*vfs_init)(struct vfsconf *);
 int (*vfs_sysctl)(int *, u_int, void *, size_t *, void *,
         size_t, struct proc *);
 int (*vfs_checkexp)(struct mount *mp, struct mbuf *nam,
        int *extflagsp, struct ucred **credanonp);
};
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
struct netcred {
 struct radix_node netc_rnodes[2];
 int netc_exflags;
 struct ucred netc_anon;
};
struct netexport {
 struct netcred ne_defexported;
 struct radix_node_head *ne_rtable_inet;
};
int vfs_busy(struct mount *, int);
int vfs_isbusy(struct mount *);
int vfs_mount_foreach_vnode(struct mount *, int (*func)(struct vnode *,
        void *), void *);
void vfs_getnewfsid(struct mount *);
struct mount *vfs_getvfs(fsid_t *);
int vfs_mountedon(struct vnode *);
int vfs_rootmountalloc(char *, char *, struct mount **);
void vfs_unbusy(struct mount *);
extern struct mntlist { struct mount *tqh_first; struct mount **tqh_last; } mountlist;
struct mount *getvfs(fsid_t *);
int vfs_export(struct mount *, struct netexport *, struct export_args *);
struct netcred *vfs_export_lookup(struct mount *, struct netexport *,
     struct mbuf *);
int vfs_allocate_syncvnode(struct mount *);
int speedup_syncer(void);
int vfs_syncwait(struct proc *, int);
void vfs_shutdown(struct proc *);
int dounmount(struct mount *, int, struct proc *);
void vfsinit(void);
int vfs_register(struct vfsconf *);
int vfs_unregister(struct vfsconf *);
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
struct buf;
struct disklabel;
struct diskstats {
 char ds_name[16];
 int ds_busy;
 u_int64_t ds_rxfer;
 u_int64_t ds_wxfer;
 u_int64_t ds_seek;
 u_int64_t ds_rbytes;
 u_int64_t ds_wbytes;
 struct timeval ds_attachtime;
 struct timeval ds_timestamp;
 struct timeval ds_time;
};
struct disk {
 struct { struct disk *tqe_next; struct disk **tqe_prev; } dk_link;
 struct rwlock dk_lock;
 struct mutex dk_mtx;
 char *dk_name;
 struct device *dk_device;
 dev_t dk_devno;
 int dk_flags;
 int dk_busy;
 u_int64_t dk_rxfer;
 u_int64_t dk_wxfer;
 u_int64_t dk_seek;
 u_int64_t dk_rbytes;
 u_int64_t dk_wbytes;
 struct timeval dk_attachtime;
 struct timeval dk_timestamp;
 struct timeval dk_time;
 int dk_bopenmask;
 int dk_copenmask;
 int dk_openmask;
 int dk_state;
 int dk_blkshift;
 int dk_byteshift;
 struct disklabel *dk_label;
};
struct disklist_head { struct disk *tqh_first; struct disk **tqh_last; };
extern struct disklist_head disklist;
extern int disk_count;
extern int disk_change;
void disk_init(void);
int disk_construct(struct disk *);
void disk_attach(struct device *, struct disk *);
void disk_detach(struct disk *);
int disk_openpart(struct disk *, int, int, int);
void disk_closepart(struct disk *, int, int);
void disk_gone(int (*)(dev_t, int, int, struct proc *), int);
void disk_busy(struct disk *);
void disk_unbusy(struct disk *, long, daddr_t, int);
int disk_lock(struct disk *);
void disk_lock_nointr(struct disk *);
void disk_unlock(struct disk *);
struct device *disk_lookup(struct cfdriver *, int);
char *disk_readlabel(struct disklabel *, dev_t, char *, size_t);
int disk_map(char *, char *, int, int);
int duid_iszero(u_char *);
const char *duid_format(u_char *);
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
struct flock {
 off_t l_start;
 off_t l_len;
 pid_t l_pid;
 short l_type;
 short l_whence;
};
struct proc;
struct uio;
struct knote;
struct stat;
struct file;
struct ucred;
struct fileops {
 int (*fo_read)(struct file *, off_t *, struct uio *,
      struct ucred *);
 int (*fo_write)(struct file *, off_t *, struct uio *,
      struct ucred *);
 int (*fo_ioctl)(struct file *, u_long, caddr_t,
      struct proc *);
 int (*fo_poll)(struct file *, int, struct proc *);
 int (*fo_kqfilter)(struct file *, struct knote *);
 int (*fo_stat)(struct file *, struct stat *, struct proc *);
 int (*fo_close)(struct file *, struct proc *);
};
struct file {
 struct { struct file *le_next; struct file **le_prev; } f_list;
 short f_flag;
 short f_type;
 long f_count;
 struct ucred *f_cred;
 struct fileops *f_ops;
 off_t f_offset;
 void *f_data;
 int f_iflags;
 u_int64_t f_rxfer;
 u_int64_t f_wxfer;
 u_int64_t f_seek;
 u_int64_t f_rbytes;
 u_int64_t f_wbytes;
};
int fdrop(struct file *, struct proc *);
struct filelist { struct file *lh_first; };
extern struct filelist filehead;
extern int maxfiles;
extern int numfiles;
extern struct fileops vnops;
struct uuid {
 uint32_t time_low;
 uint16_t time_mid;
 uint16_t time_hi_and_version;
 uint8_t clock_seq_hi_and_reserved;
 uint8_t clock_seq_low;
 uint8_t node[6];
};
int uuid_snprintf(char *, size_t, const struct uuid *);
int uuid_printf(const struct uuid *);
void uuid_dec_be(const void *, struct uuid *);
void uuid_dec_le(const void *, struct uuid *);
void uuid_enc_be(void *, const struct uuid *);
void uuid_enc_le(void *, const struct uuid *);
struct disklabel {
 u_int32_t d_magic;
 u_int16_t d_type;
 u_int16_t d_subtype;
 char d_typename[16];
 char d_packname[16];
 u_int32_t d_secsize;
 u_int32_t d_nsectors;
 u_int32_t d_ntracks;
 u_int32_t d_ncylinders;
 u_int32_t d_secpercyl;
 u_int32_t d_secperunit;
 u_char d_uid[8];
 u_int32_t d_acylinders;
 u_int16_t d_bstarth;
 u_int16_t d_bendh;
 u_int32_t d_bstart;
 u_int32_t d_bend;
 u_int32_t d_flags;
 u_int32_t d_drivedata[5];
 u_int16_t d_secperunith;
 u_int16_t d_version;
 u_int32_t d_spare[4];
 u_int32_t d_magic2;
 u_int16_t d_checksum;
 u_int16_t d_npartitions;
 u_int32_t d_bbsize;
 u_int32_t d_sbsize;
 struct partition {
  u_int32_t p_size;
  u_int32_t p_offset;
  u_int16_t p_offseth;
  u_int16_t p_sizeh;
  u_int8_t p_fstype;
  u_int8_t p_fragblock;
  u_int16_t p_cpg;
 } d_partitions[16];
};
struct __partitionv0 {
 u_int32_t p_size;
 u_int32_t p_offset;
 u_int32_t p_fsize;
 u_int8_t p_fstype;
 u_int8_t p_frag;
 union {
  u_int16_t cpg;
  u_int16_t sgs;
 } __partitionv0_u1;
};
struct partinfo {
 struct disklabel *disklab;
 struct partition *part;
};
struct gpt_header {
 u_int64_t gh_sig;
 u_int32_t gh_rev;
 u_int32_t gh_size;
 u_int32_t gh_csum;
 u_int32_t gh_rsvd;
 u_int64_t gh_lba_self;
 u_int64_t gh_lba_alt;
 u_int64_t gh_lba_start;
 u_int64_t gh_lba_end;
 struct uuid gh_guid;
 u_int64_t gh_part_lba;
 u_int32_t gh_part_num;
 u_int32_t gh_part_size;
 u_int32_t gh_part_csum;
};
struct gpt_partition {
 struct uuid gp_type;
 struct uuid gp_guid;
 u_int64_t gp_lba_start;
 u_int64_t gp_lba_end;
 u_int64_t gp_attrs;
 u_int16_t gp_name[36];
};
struct dos_partition {
 u_int8_t dp_flag;
 u_int8_t dp_shd;
 u_int8_t dp_ssect;
 u_int8_t dp_scyl;
 u_int8_t dp_typ;
 u_int8_t dp_ehd;
 u_int8_t dp_esect;
 u_int8_t dp_ecyl;
 u_int32_t dp_start;
 u_int32_t dp_size;
};
struct dos_mbr {
 u_int8_t dmbr_boot[446];
 struct dos_partition dmbr_parts[4];
 u_int16_t dmbr_sign;
} __attribute__((__packed__));
void diskerr(struct buf *, char *, char *, int, int, struct disklabel *);
u_int dkcksum(struct disklabel *);
int initdisklabel(struct disklabel *);
int checkdisklabel(void *, struct disklabel *, u_int64_t, u_int64_t);
int setdisklabel(struct disklabel *, struct disklabel *, u_int);
int readdisklabel(dev_t, void (*)(struct buf *), struct disklabel *, int);
int writedisklabel(dev_t, void (*)(struct buf *), struct disklabel *);
int bounds_check_with_label(struct buf *, struct disklabel *);
int readdisksector(struct buf *, void (*)(struct buf *),
     struct disklabel *, u_int64_t);
int readdoslabel(struct buf *, void (*)(struct buf *),
     struct disklabel *, daddr_t *, int);
int iso_disklabelspoof(dev_t dev, void (*strat)(struct buf *),
 struct disklabel *lp);
int udf_disklabelspoof(dev_t dev, void (*strat)(struct buf *),
 struct disklabel *lp);
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
struct dk_inquiry {
 char vendor[64];
 char product[128];
 char revision[64];
 char serial[64];
};
struct dk_cache {
 unsigned int wrcache;
 unsigned int rdcache;
};
struct dk_diskmap {
 char *device;
 int fd;
 int flags;
};
struct specinfo {
 struct vnode **si_hashchain;
 struct vnode *si_specnext;
 struct mount *si_mountpoint;
 dev_t si_rdev;
 struct lockf *si_lockf;
 daddr_t si_lastr;
 union {
  struct vnode *ci_parent;
  u_int8_t *ci_bitmap;
 } si_ci;
};
struct cloneinfo {
 struct vnode *ci_vp;
 void *ci_data;
};
extern struct vnode *speclisth[64];
int spec_badop(void *);
int spec_getattr(void *);
int spec_setattr(void *);
int spec_access(void *);
int spec_open(void *);
int spec_close(void *);
int spec_read(void *);
int spec_write(void *);
int spec_ioctl(void *);
int spec_poll(void *);
int spec_kqfilter(void *);
int spec_fsync(void *);
int spec_inactive(void *);
int spec_strategy(void *);
int spec_print(void *);
int spec_pathconf(void *);
int spec_advlock(void *);
struct dqblk {
 u_int32_t dqb_bhardlimit;
 u_int32_t dqb_bsoftlimit;
 u_int32_t dqb_curblocks;
 u_int32_t dqb_ihardlimit;
 u_int32_t dqb_isoftlimit;
 u_int32_t dqb_curinodes;
 u_int32_t dqb_btime;
 u_int32_t dqb_itime;
};
enum ufs_quota_flags {
 UFS_QUOTA_NOUID = 0x1,
 UFS_QUOTA_NOGID = 0x2,
 UFS_QUOTA_FORCE = 0x1000
};
struct dquot;
struct inode;
struct mount;
struct proc;
struct ucred;
struct ufsmount;
struct vnode;

int ufs_quota_alloc_blocks2(struct inode *, daddr_t, struct ucred *, enum ufs_quota_flags);
int ufs_quota_free_blocks2(struct inode *, daddr_t, struct ucred *, enum ufs_quota_flags);
int ufs_quota_alloc_inode2(struct inode *, struct ucred *, enum ufs_quota_flags);
int ufs_quota_free_inode2(struct inode *, struct ucred *, enum ufs_quota_flags);
int ufs_quota_delete(struct inode *);
int getinoquota(struct inode *);
int quotaoff(struct proc *, struct mount *, int);
int qsync(struct mount *mp);
int ufs_quotactl(struct mount *, int, uid_t, caddr_t, struct proc *);
void ufs_quota_init(void);

struct buf;
struct inode;
struct nameidata;
struct timeval;
struct ucred;
struct uio;
struct vnode;
struct netexport;
struct ufsmount {
 struct mount *um_mountp;
 dev_t um_dev;
 struct vnode *um_devvp;
 u_long um_fstype;
 union {
  struct fs *fs;
  struct m_ext2fs *e2fs;
 } ufsmount_u;
 struct vnode *um_quotas[2];
 struct ucred *um_cred[2];
 u_long um_nindir;
 u_long um_bptrtodb;
 u_long um_seqinc;
 time_t um_btime[2];
 time_t um_itime[2];
 char um_qflags[2];
 struct netexport um_export;
 u_int64_t um_savedmaxfilesize;
 u_int um_maxsymlinklen;
};
typedef u_int32_t ufsino_t;
struct ufs1_dinode {
 u_int16_t di_mode;
 int16_t di_nlink;
 union {
  u_int16_t oldids[2];
  u_int32_t inumber;
 } di_u;
 u_int64_t di_size;
 int32_t di_atime;
 int32_t di_atimensec;
 int32_t di_mtime;
 int32_t di_mtimensec;
 int32_t di_ctime;
 int32_t di_ctimensec;
 int32_t di_db[12];
 int32_t di_ib[3];
 u_int32_t di_flags;
 int32_t di_blocks;
 int32_t di_gen;
 u_int32_t di_uid;
 u_int32_t di_gid;
 int32_t di_spare[2];
};
struct ufs2_dinode {
 u_int16_t di_mode;
 int16_t di_nlink;
 u_int32_t di_uid;
 u_int32_t di_gid;
 u_int32_t di_blksize;
 u_int64_t di_size;
 u_int64_t di_blocks;
 int64_t di_atime;
 int64_t di_mtime;
 int64_t di_ctime;
 int64_t di_birthtime;
 int32_t di_mtimensec;
 int32_t di_atimensec;
 int32_t di_ctimensec;
 int32_t di_birthnsec;
 int32_t di_gen;
 u_int32_t di_kernflags;
 u_int32_t di_flags;
 int32_t di_extsize;
 int64_t di_extb[2];
 int64_t di_db[12];
 int64_t di_ib[3];
 int64_t di_spare[3];
};
struct direct {
 u_int32_t d_ino;
 u_int16_t d_reclen;
 u_int8_t d_type;
 u_int8_t d_namlen;
 char d_name[255 + 1];
};
struct dirtemplate {
 u_int32_t dot_ino;
 int16_t dot_reclen;
 u_int8_t dot_type;
 u_int8_t dot_namlen;
 char dot_name[4];
 u_int32_t dotdot_ino;
 int16_t dotdot_reclen;
 u_int8_t dotdot_type;
 u_int8_t dotdot_namlen;
 char dotdot_name[4];
};
struct odirtemplate {
 u_int32_t dot_ino;
 int16_t dot_reclen;
 u_int16_t dot_namlen;
 char dot_name[4];
 u_int32_t dotdot_ino;
 int16_t dotdot_reclen;
 u_int16_t dotdot_namlen;
 char dotdot_name[4];
};
struct stat {
 mode_t st_mode;
 dev_t st_dev;
 ino_t st_ino;
 nlink_t st_nlink;
 uid_t st_uid;
 gid_t st_gid;
 dev_t st_rdev;
 struct timespec st_atim;
 struct timespec st_mtim;
 struct timespec st_ctim;
 off_t st_size;
 blkcnt_t st_blocks;
 blksize_t st_blksize;
 u_int32_t st_flags;
 u_int32_t st_gen;
 struct timespec __st_birthtim;
};
struct ext2fs_dinode {
 u_int16_t e2di_mode;
 u_int16_t e2di_uid_low;
 u_int32_t e2di_size;
 u_int32_t e2di_atime;
 u_int32_t e2di_ctime;
 u_int32_t e2di_mtime;
 u_int32_t e2di_dtime;
 u_int16_t e2di_gid_low;
 u_int16_t e2di_nlink;
 u_int32_t e2di_nblock;
 u_int32_t e2di_flags;
 u_int32_t e2di_version_lo;
 u_int32_t e2di_blocks[12 +3];
 u_int32_t e2di_gen;
 u_int32_t e2di_facl;
 u_int32_t e2di_size_hi;
 u_int32_t e2di_faddr;
 u_int16_t e2di_nblock_hi;
 u_int16_t e2di_facl_hi;
 u_int16_t e2di_uid_high;
 u_int16_t e2di_gid_high;
 u_int16_t e2di_chksum_lo;
 u_int16_t e2di__reserved;
 u_int16_t e2di_isize;
 u_int16_t e2di_chksum_hi;
 u_int32_t e2di_x_ctime;
 u_int32_t e2di_x_mtime;
 u_int32_t e2di_x_atime;
 u_int32_t e2di_crtime;
 u_int32_t e2di_x_crtime;
 u_int32_t e2di_version_hi;
};
struct m_ext2fs;
void e2fs_i_bswap(struct m_ext2fs *, struct ext2fs_dinode *, struct ext2fs_dinode *);
struct ext4_extent {
 uint32_t e_blk;
 uint16_t e_len;
 uint16_t e_start_hi;
 uint32_t e_start_lo;
};
struct ext4_extent_index {
 uint32_t ei_blk;
 uint32_t ei_leaf_lo;
 uint16_t ei_leaf_hi;
 uint16_t ei_unused;
};
struct ext4_extent_header {
 uint16_t eh_magic;
 uint16_t eh_ecount;
 uint16_t eh_max;
 uint16_t eh_depth;
 uint32_t eh_gen;
};
struct ext4_extent_cache {
 daddr_t ec_start;
 uint32_t ec_blk;
 uint32_t ec_len;
 uint32_t ec_type;
};
struct ext4_extent_path {
 uint16_t ep_depth;
 struct buf *ep_bp;
 struct ext4_extent *ep_ext;
 struct ext4_extent_index *ep_index;
 struct ext4_extent_header *ep_header;
};
struct inode;
struct m_ext2fs;
int ext4_ext_in_cache(struct inode *, daddr_t, struct ext4_extent *);
void ext4_ext_put_cache(struct inode *, struct ext4_extent *, int);
struct ext4_extent_path *ext4_ext_find_extent(struct m_ext2fs *fs,
    struct inode *, daddr_t, struct ext4_extent_path *);
struct ext2fs_inode_ext {
 u_int32_t ext2fs_last_lblk;
 u_int32_t ext2fs_last_blk;
 u_int32_t ext2fs_effective_uid;
 u_int32_t ext2fs_effective_gid;
 struct ext4_extent_cache ext2fs_extent_cache;
};
struct inode {
 struct { struct inode *le_next; struct inode **le_prev; } i_hash;
 struct vnode *i_vnode;
 struct ufsmount *i_ump;
 u_int32_t i_flag;
 dev_t i_dev;
 ufsino_t i_number;
 int i_effnlink;
 union {
  struct fs *fs;
  struct m_ext2fs *e2fs;
 } inode_u;
 struct cluster_info i_ci;
 struct dquot *i_dquot[2];
 u_quad_t i_modrev;
 struct lockf *i_lockf;
 struct rrwlock i_lock;
 int32_t i_count;
 int32_t i_endoff;
 int32_t i_diroff;
 int32_t i_offset;
 ufsino_t i_ino;
 u_int32_t i_reclen;
 union {
  struct ext2fs_inode_ext e2fs;
  struct dirhash *dirhash;
 } inode_ext;
 union {
  struct ufs1_dinode *ffs1_din;
  struct ufs2_dinode *ffs2_din;
  struct ext2fs_dinode *e2fs_din;
 } dinode_u;
 struct inode_vtbl *i_vtbl;
};
struct inode_vtbl {
 int (* iv_truncate)(struct inode *, off_t, int,
     struct ucred *);
 int (* iv_update)(struct inode *, int waitfor);
 int (* iv_inode_alloc)(struct inode *, mode_t mode,
     struct ucred *, struct vnode **);
 int (* iv_inode_free)(struct inode *, ufsino_t ino, mode_t mode);
 int (* iv_buf_alloc)(struct inode *, off_t, int, struct ucred *,
     int, struct buf **);
 int (* iv_bufatoff)(struct inode *, off_t offset, char **res,
     struct buf **bpp);
};
struct indir {
 daddr_t in_lbn;
 int in_off;
 int in_exists;
};
struct ufid {
 u_int16_t ufid_len;
 u_int16_t ufid_pad;
 ufsino_t ufid_ino;
 int32_t ufid_gen;
};
struct buf;
struct componentname;
struct direct;
struct disklabel;
struct dquot;
struct fid;
struct flock;
struct indir;
struct inode;
struct mbuf;
struct mount;
struct nameidata;
struct proc;
struct ucred;
struct ufs_args;
struct ufsmount;
struct uio;
struct vattr;
struct vfsconf;
struct vnode;
int ufs_access(void *);
int ufs_advlock(void *);
int ufs_bmap(void *);
int ufs_close(void *);
int ufs_create(void *);
int ufs_getattr(void *);
int ufs_inactive(void *);
int ufs_ioctl(void *);
int ufs_islocked(void *);
int ufs_link(void *);
int ufs_lock(void *);
int ufs_lookup(void *);
int ufs_mkdir(void *);
int ufs_mknod(void *);
int ufs_mmap(void *);
int ufs_open(void *);
int ufs_pathconf(void *);
int ufs_print(void *);
int ufs_readdir(void *);
int ufs_readlink(void *);
int ufs_remove(void *);
int ufs_rename(void *);
int ufs_rmdir(void *);
int ufs_poll(void *);
int ufs_kqfilter(void *);
int ufs_setattr(void *);
int ufs_strategy(void *);
int ufs_symlink(void *);
int ufs_unlock(void *);
int ufsspec_close(void *);
int ufsspec_read(void *);
int ufsspec_write(void *);
int ufsfifo_read(void *);
int ufsfifo_write(void *);
int ufsfifo_close(void *);
int ufs_bmaparray(struct vnode *, daddr_t, daddr_t *, struct indir *,
         int *, int *);
int ufs_getlbns(struct vnode *, daddr_t, struct indir *, int *);
void ufs_ihashinit(void);
struct vnode *ufs_ihashlookup(dev_t, ufsino_t);
struct vnode *ufs_ihashget(dev_t, ufsino_t);
int ufs_ihashins(struct inode *);
void ufs_ihashrem(struct inode *);
int ufs_init(struct vfsconf *);
int ufs_reclaim(struct vnode *, struct proc *);
void ufs_dirbad(struct inode *, int32_t, char *);
int ufs_dirbadentry(struct vnode *, struct direct *, int);
void ufs_makedirentry(struct inode *, struct componentname *,
      struct direct *);
int ufs_direnter(struct vnode *, struct vnode *, struct direct *,
        struct componentname *, struct buf *);
int ufs_dirremove(struct vnode *, struct inode *, int, int);
int ufs_dirrewrite(struct inode *, struct inode *,
          ufsino_t, int, int);
int ufs_dirempty(struct inode *, ufsino_t, struct ucred *);
int ufs_checkpath(struct inode *, struct inode *, struct ucred *);
int ufs_start(struct mount *, int, struct proc *);
int ufs_root(struct mount *, struct vnode **);
int ufs_quotactl(struct mount *, int, uid_t, caddr_t, struct proc *);
int ufs_fhtovp(struct mount *, struct ufid *, struct vnode **);
int ufs_check_export(struct mount *, struct mbuf *, int *,
  struct ucred **);
void ufs_itimes(struct vnode *);
int ufs_makeinode(int, struct vnode *, struct vnode **,
    struct componentname *);
int softdep_setup_directory_add(struct buf *, struct inode *, off_t,
          long, struct buf *, int);
void softdep_change_directoryentry_offset(struct inode *, caddr_t,
          caddr_t, caddr_t, int);
void softdep_setup_remove(struct buf *,struct inode *, struct inode *,
          int);
void softdep_setup_directory_change(struct buf *, struct inode *,
          struct inode *, long, int);
void softdep_change_linkcnt(struct inode *, int);
int softdep_slowdown(struct vnode *);
struct ext2fs {
 u_int32_t e2fs_icount;
 u_int32_t e2fs_bcount;
 u_int32_t e2fs_rbcount;
 u_int32_t e2fs_fbcount;
 u_int32_t e2fs_ficount;
 u_int32_t e2fs_first_dblock;
 u_int32_t e2fs_log_bsize;
 u_int32_t e2fs_log_fsize;
 u_int32_t e2fs_bpg;
 u_int32_t e2fs_fpg;
 u_int32_t e2fs_ipg;
 u_int32_t e2fs_mtime;
 u_int32_t e2fs_wtime;
 u_int16_t e2fs_mnt_count;
 u_int16_t e2fs_max_mnt_count;
 u_int16_t e2fs_magic;
 u_int16_t e2fs_state;
 u_int16_t e2fs_beh;
 u_int16_t e2fs_minrev;
 u_int32_t e2fs_lastfsck;
 u_int32_t e2fs_fsckintv;
 u_int32_t e2fs_creator;
 u_int32_t e2fs_rev;
 u_int16_t e2fs_ruid;
 u_int16_t e2fs_rgid;
 u_int32_t e2fs_first_ino;
 u_int16_t e2fs_inode_size;
 u_int16_t e2fs_block_group_nr;
 u_int32_t e2fs_features_compat;
 u_int32_t e2fs_features_incompat;
 u_int32_t e2fs_features_rocompat;
 u_int8_t e2fs_uuid[16];
 char e2fs_vname[16];
 char e2fs_fsmnt[64];
 u_int32_t e2fs_algo;
 u_int8_t e2fs_prealloc;
 u_int8_t e2fs_dir_prealloc;
 u_int16_t e2fs_reserved_ngdb;
 u_int8_t e2fs_journal_uuid[16];
 u_int32_t e2fs_journal_ino;
 u_int32_t e2fs_journal_dev;
 u_int32_t e2fs_last_orphan;
 u_int32_t e2fs_hash_seed[4];
 u_int8_t e2fs_def_hash_version;
 u_int8_t e2fs_journal_backup_type;
 u_int16_t e2fs_gdesc_size;
 u_int32_t e2fs_default_mount_opts;
 u_int32_t e2fs_first_meta_bg;
 u_int32_t e2fs_mkfs_time;
 u_int32_t e2fs_journal_backup[17];
 u_int32_t reserved2[172];
};
struct m_ext2fs {
 struct ext2fs e2fs;
 u_char e2fs_fsmnt[512];
 int8_t e2fs_ronly;
 int8_t e2fs_fmod;
 int32_t e2fs_fsize;
 int32_t e2fs_bsize;
 int32_t e2fs_bshift;
 int32_t e2fs_bmask;
 int64_t e2fs_qbmask;
 int32_t e2fs_fsbtodb;
 int32_t e2fs_ncg;
 int32_t e2fs_ngdb;
 int32_t e2fs_ipb;
 int32_t e2fs_itpg;
 off_t e2fs_maxfilesize;
 struct ext2_gd *e2fs_gd;
};
static inline int
e2fs_overflow(struct m_ext2fs *fs, off_t lower, off_t value)
{
 return (value < lower || value > fs->e2fs_maxfilesize);
}
struct ext2_gd {
 u_int32_t ext2bgd_b_bitmap;
 u_int32_t ext2bgd_i_bitmap;
 u_int32_t ext2bgd_i_tables;
 u_int16_t ext2bgd_nbfree;
 u_int16_t ext2bgd_nifree;
 u_int16_t ext2bgd_ndirs;
 u_int16_t reserved;
 u_int32_t reserved2[3];
};
static __inline__ int cg_has_sb(int) __attribute__((__unused__));
static __inline int
cg_has_sb(i)
 int i;
{
 int a3 ,a5 , a7;
 if (i == 0 || i == 1)
  return 1;
 for (a3 = 3, a5 = 5, a7 = 7;
     a3 <= i || a5 <= i || a7 <= i;
     a3 *= 3, a5 *= 5, a7 *= 7)
  if (i == a3 || i == a5 || i == a7)
   return 1;
 return 0;
}
void e2fs_sb_bswap(struct ext2fs *, struct ext2fs *);
void e2fs_cg_bswap(struct ext2_gd *, struct ext2_gd *, int);
struct buf;
struct fid;
struct m_ext2fs;
struct inode;
struct mount;
struct nameidata;
struct proc;
struct statfs;
struct timeval;
struct ucred;
struct ufsmount;
struct uio;
struct vnode;
struct vfsconf;
struct mbuf;
struct componentname;
extern struct pool ext2fs_inode_pool;
extern struct pool ext2fs_dinode_pool;

int ext2fs_alloc(struct inode *, u_int32_t, u_int32_t , struct ucred *,
     u_int32_t *);
int ext2fs_inode_alloc(struct inode *, mode_t mode, struct ucred *,
     struct vnode **);
daddr_t ext2fs_blkpref(struct inode *, u_int32_t, int, u_int32_t *);
void ext2fs_blkfree(struct inode *, u_int32_t);
void ext2fs_inode_free(struct inode *, ufsino_t, mode_t);
int ext2fs_buf_alloc(struct inode *, u_int32_t, int, struct ucred *,
     struct buf **, int);
int ext2fs_bmap(void *);
u_int64_t ext2fs_size(struct inode *);
int ext2fs_init(struct vfsconf *);
int ext2fs_setsize(struct inode *, u_int64_t);
int ext2fs_update(struct inode *ip, int waitfor);
int ext2fs_truncate(struct inode *, off_t, int, struct ucred *);
int ext2fs_inactive(void *);
int ext2fs_readdir(void *);
int ext2fs_lookup(void *);
int ext2fs_direnter(struct inode *, struct vnode *, struct componentname *);
int ext2fs_dirremove(struct vnode *, struct componentname *);
int ext2fs_dirrewrite(struct inode *, struct inode *, struct componentname *);
int ext2fs_dirempty(struct inode *, ufsino_t, struct ucred *);
int ext2fs_checkpath(struct inode *, struct inode *, struct ucred *);
int ext2fs_bufatoff(struct inode *, off_t, char **, struct buf **);
int ext2fs_vinit(struct mount *, struct vnode **);
void ext2fs_checkoverlap(struct buf *, struct inode *);
int ext2fs_mountroot(void);
int ext2fs_mount(struct mount *, const char *, void *, struct nameidata *,
     struct proc *);
int ext2fs_reload(struct mount *, struct ucred *, struct proc *);
int ext2fs_mountfs(struct vnode *, struct mount *, struct proc *);
int ext2fs_unmount(struct mount *, int, struct proc *);
int ext2fs_flushfiles(struct mount *, int, struct proc *);
int ext2fs_statfs(struct mount *, struct statfs *, struct proc *);
int ext2fs_sync(struct mount *, int, struct ucred *, struct proc *);
int ext2fs_vget(struct mount *, ino_t, struct vnode **);
int ext2fs_fhtovp(struct mount *, struct fid *, struct vnode **);
int ext2fs_vptofh(struct vnode *, struct fid *);
int ext2fs_sbupdate(struct ufsmount *, int);
int ext2fs_cgupdate(struct ufsmount *, int);
int ext2fs_sysctl(int *, u_int, void *, size_t *, void *, size_t,
     struct proc *);
int ext2fs_read(void *);
int ext2fs_write(void *);
int ext2fs_create(void *);
int ext2fs_mknod(void *);
int ext2fs_open(void *);
int ext2fs_access(void *);
int ext2fs_getattr(void *);
int ext2fs_setattr(void *);
int ext2fs_remove(void *);
int ext2fs_link(void *);
int ext2fs_rename(void *);
int ext2fs_mkdir(void *);
int ext2fs_rmdir(void *);
int ext2fs_symlink(void *);
int ext2fs_readlink(void *);
int ext2fs_pathconf(void *);
int ext2fs_advlock(void *);
int ext2fs_makeinode(int, struct vnode *, struct vnode **,
     struct componentname *cnp);
int ext2fs_fsync(void *);
int ext2fs_reclaim(void *);
int ext2fsfifo_reclaim(void *);

extern struct vops ext2fs_vops;
extern struct vops ext2fs_specvops;
extern struct vops ext2fs_fifovops;
extern struct lock ufs_hashlock;
int ext2fs_sbupdate(struct ufsmount *, int);
static int e2fs_sbcheck(struct ext2fs *, int);
const struct vfsops ext2fs_vfsops = {
 ext2fs_mount,
 ufs_start,
 ext2fs_unmount,
 ufs_root,
 ufs_quotactl,
 ext2fs_statfs,
 ext2fs_sync,
 ext2fs_vget,
 ext2fs_fhtovp,
 ext2fs_vptofh,
 ext2fs_init,
 ext2fs_sysctl,
 ufs_check_export
};
struct pool ext2fs_inode_pool;
struct pool ext2fs_dinode_pool;
extern u_long ext2gennumber;
int
ext2fs_init(struct vfsconf *vfsp)
{
 pool_init(&ext2fs_inode_pool, sizeof(struct inode), 0,
     0, 0x0001, "ext2inopl", ((void *)0));
 pool_init(&ext2fs_dinode_pool, sizeof(struct ext2fs_dinode), 0,
     0, 0x0001, "ext2dinopl", ((void *)0));
 return (ufs_init(vfsp));
}
int
ext2fs_mountroot(void)
{
 struct m_ext2fs *fs;
        struct mount *mp;
 struct proc *p = (__curcpu->ci_self)->ci_curproc;
 struct ufsmount *ump;
 int error;
 if (bdevvp(swapdev, &swapdev_vp) || bdevvp(rootdev, &rootvp))
  panic("ext2fs_mountroot: can't setup bdevvp's");
 if ((error = vfs_rootmountalloc("ext2fs", "root_device", &mp)) != 0) {
  vrele(rootvp);
  return (error);
 }
 if ((error = ext2fs_mountfs(rootvp, mp, p)) != 0) {
  mp->mnt_vfc->vfc_refcount--;
  vfs_unbusy(mp);
  free(mp, 20, sizeof *mp);
  vrele(rootvp);
  return (error);
 }
 do { (mp)->mnt_list.tqe_next = ((void *)0); (mp)->mnt_list.tqe_prev = (&mountlist)->tqh_last; *(&mountlist)->tqh_last = (mp); (&mountlist)->tqh_last = &(mp)->mnt_list.tqe_next; } while (0);
 ump = ((struct ufsmount *)((mp)->mnt_data));
 fs = ump->ufsmount_u.e2fs;
 __builtin_memset((fs->e2fs_fsmnt), (0), (sizeof(fs->e2fs_fsmnt)));
 strlcpy(fs->e2fs_fsmnt, mp->mnt_stat.f_mntonname, sizeof(fs->e2fs_fsmnt));
 if (fs->e2fs.e2fs_rev > 0) {
  __builtin_memset((fs->e2fs.e2fs_fsmnt), (0), (sizeof(fs->e2fs.e2fs_fsmnt)));
  strlcpy(fs->e2fs.e2fs_fsmnt, mp->mnt_stat.f_mntonname,
      sizeof(fs->e2fs.e2fs_fsmnt));
 }
 (void)ext2fs_statfs(mp, &mp->mnt_stat, p);
 vfs_unbusy(mp);
 inittodr(fs->e2fs.e2fs_wtime);
 return (0);
}
int
ext2fs_mount(struct mount *mp, const char *path, void *data,
    struct nameidata *ndp, struct proc *p)
{
 struct vnode *devvp;
 struct ufs_args *args = data;
 struct ufsmount *ump = ((void *)0);
 struct m_ext2fs *fs;
 char fname[90];
 char fspec[90];
 int error, flags;
 if (mp->mnt_flag & 0x00010000) {
  ump = ((struct ufsmount *)((mp)->mnt_data));
  fs = ump->ufsmount_u.e2fs;
  if (fs->e2fs_ronly == 0 && (mp->mnt_flag & 0x00000001)) {
   flags = 0x0004;
   if (mp->mnt_flag & 0x00080000)
    flags |= 0x0002;
   error = ext2fs_flushfiles(mp, flags, p);
   if (error == 0 &&
       ext2fs_cgupdate(ump, 1) == 0 &&
       (fs->e2fs.e2fs_state & 0x02) == 0) {
    fs->e2fs.e2fs_state = 0x01;
    (void)ext2fs_sbupdate(ump, 1);
   }
   if (error)
    return (error);
   fs->e2fs_ronly = 1;
  }
  if (mp->mnt_flag & 0x00040000) {
   error = ext2fs_reload(mp, ndp->ni_cnd.cn_cred, p);
   if (error)
    return (error);
  }
  if (fs->e2fs_ronly && (mp->mnt_flag & 0x02000000)) {
   fs->e2fs_ronly = 0;
   if (fs->e2fs.e2fs_state == 0x01)
    fs->e2fs.e2fs_state = 0;
   else
    fs->e2fs.e2fs_state = 0x02;
   fs->e2fs_fmod = 1;
  }
  if (args && args->fspec == ((void *)0)) {
   return (vfs_export(mp, &ump->um_export,
       &args->export_info));
  }
  if (args == ((void *)0))
   goto success;
 }
 error = copyinstr(args->fspec, fspec, sizeof(fspec), ((void *)0));
 if (error)
  goto error;
 if (disk_map(fspec, fname, 90, 0x2) == -1)
  __builtin_memcpy((fname), (fspec), (sizeof(fname)));
 ndinitat(ndp, 0, 0x0040, UIO_SYSSPACE, -100, fname, p);
 if ((error = namei(ndp)) != 0)
  goto error;
 devvp = ndp->ni_vp;
 if (devvp->v_type != VBLK) {
  error = 15;
  goto error_devvp;
 }
 if (((int32_t)(((u_int32_t)(devvp->v_un.vu_specinfo->si_rdev) >> 8) & 0xff)) >= nblkdev) {
  error = 6;
  goto error_devvp;
 }
 if ((mp->mnt_flag & 0x00010000) == 0)
  error = ext2fs_mountfs(devvp, mp, p);
 else {
  if (devvp != ump->um_devvp)
   error = 22;
  else
   vrele(devvp);
 }
 if (error)
  goto error_devvp;
 ump = ((struct ufsmount *)((mp)->mnt_data));
 fs = ump->ufsmount_u.e2fs;
 __builtin_memset((fs->e2fs_fsmnt), (0), (sizeof(fs->e2fs_fsmnt)));
 strlcpy(fs->e2fs_fsmnt, path, sizeof(fs->e2fs_fsmnt));
 if (fs->e2fs.e2fs_rev > 0) {
  __builtin_memset((fs->e2fs.e2fs_fsmnt), (0), (sizeof(fs->e2fs.e2fs_fsmnt)));
  strlcpy(fs->e2fs.e2fs_fsmnt, mp->mnt_stat.f_mntonname,
      sizeof(fs->e2fs.e2fs_fsmnt));
 }
 __builtin_memcpy((mp->mnt_stat.f_mntonname), (fs->e2fs_fsmnt), (90));
 __builtin_memset((mp->mnt_stat.f_mntfromname), (0), (90));
 strlcpy(mp->mnt_stat.f_mntfromname, fname, 90);
 __builtin_memset((mp->mnt_stat.f_mntfromspec), (0), (90));
 strlcpy(mp->mnt_stat.f_mntfromspec, fspec, 90);
 __builtin_memcpy((&mp->mnt_stat.mount_info.ufs_args), (args), (sizeof(*args)));
 if (fs->e2fs_fmod != 0) {
  fs->e2fs_fmod = 0;
  if (fs->e2fs.e2fs_state == 0)
   fs->e2fs.e2fs_wtime = time_second;
  else
   printf("%s: file system not clean; please fsck(8)\n",
       mp->mnt_stat.f_mntfromname);
  ext2fs_cgupdate(ump, 1);
 }
 goto success;
error_devvp:
 vrele(devvp);
error:
success:
 return (error);
}
int ext2fs_reload_vnode(struct vnode *, void *args);
struct ext2fs_reload_args {
 struct m_ext2fs *fs;
 struct proc *p;
 struct ucred *cred;
 struct vnode *devvp;
};
int
ext2fs_reload_vnode(struct vnode *vp, void *args)
{
 struct ext2fs_reload_args *era = args;
 struct buf *bp;
 struct inode *ip;
 int error;
 caddr_t cp;
 if (vp->v_usecount == 0) {
  vgonel(vp, era->p);
  return (0);
 }
 if (vget(vp, 0x0001UL, era->p))
  return (0);
 if (vinvalbuf(vp, 0, era->cred, era->p, 0, 0))
  panic("ext2fs_reload: dirty2");
 ip = ((struct inode *)(vp)->v_data);
 error = bread(era->devvp,
     ((((era->fs)->e2fs_gd[(((ip->i_number) - 1) / (era->fs)->e2fs.e2fs_ipg)].ext2bgd_i_tables + (((ip->i_number)-1) % (era->fs)->e2fs.e2fs_ipg)/(era->fs)->e2fs_ipb)) << (era->fs)->e2fs_fsbtodb),
     (int)era->fs->e2fs_bsize, &bp);
 if (error) {
  vput(vp);
  return (error);
 }
 cp = (caddr_t)bp->b_data +
     ((((ip->i_number)-1) % (era->fs)->e2fs_ipb) * ((era->fs)->e2fs.e2fs_rev > 0 ? (era->fs)->e2fs.e2fs_inode_size : 128));
 e2fs_i_bswap((era->fs), ((struct ext2fs_dinode *)cp), (ip->dinode_u.e2fs_din));
 brelse(bp);
 vput(vp);
 return (0);
}
static off_t
ext2fs_maxfilesize(struct m_ext2fs *fs)
{
 _Bool huge = fs->e2fs.e2fs_features_rocompat & 0x0008;
 off_t b = fs->e2fs_bsize / 4;
 off_t physically, logically;
 physically = ((huge ? ((1ULL << 48) - 1) : 0xffffffffU) << 9);
 logically = (12ULL + b + b*b + b*b*b) * fs->e2fs_bsize;
 return (((logically)<(physically))?(logically):(physically));
}
static int
e2fs_sbfill(struct vnode *devvp, struct m_ext2fs *fs)
{
 struct buf *bp = ((void *)0);
 int i, error;
 fs->e2fs_ncg = (((fs->e2fs.e2fs_bcount - fs->e2fs.e2fs_first_dblock) + ((fs->e2fs.e2fs_bpg) - 1)) / (fs->e2fs.e2fs_bpg));
 fs->e2fs_fsbtodb = fs->e2fs.e2fs_log_bsize + 1;
 fs->e2fs_bsize = 1024 << fs->e2fs.e2fs_log_bsize;
 fs->e2fs_bshift = 10 + fs->e2fs.e2fs_log_bsize;
 fs->e2fs_fsize = 1024 << fs->e2fs.e2fs_log_fsize;
 fs->e2fs_qbmask = fs->e2fs_bsize - 1;
 fs->e2fs_bmask = ~fs->e2fs_qbmask;
 fs->e2fs_ipb = fs->e2fs_bsize / ((fs)->e2fs.e2fs_rev > 0 ? (fs)->e2fs.e2fs_inode_size : 128);
 fs->e2fs_itpg = fs->e2fs.e2fs_ipg / fs->e2fs_ipb;
 fs->e2fs_ngdb = (((fs->e2fs_ncg) + ((fs->e2fs_bsize / sizeof(struct ext2_gd)) - 1)) / (fs->e2fs_bsize / sizeof(struct ext2_gd)));
 fs->e2fs_gd = mallocarray(fs->e2fs_ngdb, fs->e2fs_bsize,
     28, 0x0001);
 for (i = 0; i < fs->e2fs_ngdb; ++i) {
  daddr_t dblk = ((fs->e2fs_bsize > 1024) ? 0 : 1) + i + 1;
  size_t gdesc = i * fs->e2fs_bsize / sizeof(struct ext2_gd);
  struct ext2_gd *gd;
  error = bread(devvp, ((dblk) << (fs)->e2fs_fsbtodb), fs->e2fs_bsize, &bp);
  if (error) {
   size_t gdescs_space = fs->e2fs_ngdb * fs->e2fs_bsize;
   free(fs->e2fs_gd, 28, gdescs_space);
   fs->e2fs_gd = ((void *)0);
   brelse(bp);
   return (error);
  }
  gd = (struct ext2_gd *) bp->b_data;
  e2fs_cg_bswap((gd), (fs->e2fs_gd + gdesc), (fs->e2fs_bsize));;
  brelse(bp);
  bp = ((void *)0);
 }
 if ((fs->e2fs.e2fs_features_rocompat & 0x0002) == 0 ||
     (fs->e2fs.e2fs_rev == 0))
  fs->e2fs_maxfilesize = 0x7fffffff;
 else
  fs->e2fs_maxfilesize = ext2fs_maxfilesize(fs);
 if (fs->e2fs.e2fs_features_incompat & 0x0040)
  fs->e2fs_maxfilesize *= 4;
 return (0);
}
int
ext2fs_reload(struct mount *mountp, struct ucred *cred, struct proc *p)
{
 struct vnode *devvp;
 struct buf *bp;
 struct m_ext2fs *fs;
 struct ext2fs *newfs;
 int error;
 struct ext2fs_reload_args era;
 if ((mountp->mnt_flag & 0x00000001) == 0)
  return (22);
 devvp = ((struct ufsmount *)((mountp)->mnt_data))->um_devvp;
 if (vinvalbuf(devvp, 0, cred, p, 0, 0))
  panic("ext2fs_reload: dirty1");
 error = bread(devvp, (daddr_t)(((off_t)(((off_t)(0)) + 1024)) / (1 << 9)), 1024, &bp);
 if (error) {
  brelse(bp);
  return (error);
 }
 newfs = (struct ext2fs *)bp->b_data;
 error = e2fs_sbcheck(newfs, (mountp->mnt_flag & 0x00000001));
 if (error) {
  brelse(bp);
  return (error);
 }
 fs = ((struct ufsmount *)((mountp)->mnt_data))->ufsmount_u.e2fs;
 e2fs_sb_bswap((newfs), (&fs->e2fs));
 if ((error = e2fs_sbfill(devvp, fs)) != 0)
  return (error);
 era.p = p;
 era.cred = cred;
 era.fs = fs;
 era.devvp = devvp;
 error = vfs_mount_foreach_vnode(mountp, ext2fs_reload_vnode, &era);
 return (error);
}
int
ext2fs_mountfs(struct vnode *devvp, struct mount *mp, struct proc *p)
{
 struct ufsmount *ump;
 struct buf *bp;
 struct ext2fs *fs;
 dev_t dev;
 int error, ronly;
 struct ucred *cred;
 dev = devvp->v_un.vu_specinfo->si_rdev;
 cred = p ? p->p_ucred : ((struct ucred *)-1);
 if ((error = vfs_mountedon(devvp)) != 0)
  return (error);
 if (vcount(devvp) > 1 && devvp != rootvp)
  return (16);
 if ((error = vinvalbuf(devvp, 0x0001, cred, p, 0, 0)) != 0)
  return (error);
 ronly = (mp->mnt_flag & 0x00000001) != 0;
 error = VOP_OPEN(devvp, ronly ? 0x0001 : 0x0001|0x0002, ((struct ucred *)-2), p);
 if (error)
  return (error);
 bp = ((void *)0);
 ump = ((void *)0);
 error = bread(devvp, (daddr_t)(((off_t)(((off_t)(0)) + 1024)) / (1 << 9)), 1024, &bp);
 if (error)
  goto out;
 fs = (struct ext2fs *)bp->b_data;
 error = e2fs_sbcheck(fs, ronly);
 if (error)
  goto out;
 ump = malloc(sizeof *ump, 28, 0x0001 | 0x0008);
 ump->ufsmount_u.e2fs = malloc(sizeof(struct m_ext2fs), 28,
     0x0001 | 0x0008);
 e2fs_sb_bswap((fs), (&ump->ufsmount_u.e2fs->e2fs));
 if ((error = e2fs_sbfill(devvp, ump->ufsmount_u.e2fs)) != 0)
  goto out;
 brelse(bp);
 bp = ((void *)0);
 fs = &ump->ufsmount_u.e2fs->e2fs;
 ump->ufsmount_u.e2fs->e2fs_ronly = ronly;
 ump->um_fstype = 3;
 if (ronly == 0) {
  if (fs->e2fs_state == 0x01)
   fs->e2fs_state = 0;
  else
   fs->e2fs_state = 0x02;
  ump->ufsmount_u.e2fs->e2fs_fmod = 1;
 }
 mp->mnt_data = ump;
 mp->mnt_stat.f_fsid.val[0] = (long)dev;
 mp->mnt_stat.f_fsid.val[1] = mp->mnt_vfc->vfc_typenum;
 mp->mnt_stat.f_namemax = 255;
 mp->mnt_flag |= 0x00001000;
 ump->um_mountp = mp;
 ump->um_dev = dev;
 ump->um_devvp = devvp;
 ump->um_nindir = ((ump->ufsmount_u.e2fs)->e2fs_bsize / sizeof(u_int32_t));
 ump->um_bptrtodb = ump->ufsmount_u.e2fs->e2fs_fsbtodb;
 ump->um_seqinc = 1;
 ump->um_maxsymlinklen = ((12 +3) * sizeof (u_int32_t));
 devvp->v_un.vu_specinfo->si_mountpoint = mp;
 return (0);
out:
 if (devvp->v_un.vu_specinfo)
  devvp->v_un.vu_specinfo->si_mountpoint = ((void *)0);
 if (bp)
  brelse(bp);
 vn_lock(devvp, 0x0001UL | 0x2000UL, p);
 (void)VOP_CLOSE(devvp, ronly ? 0x0001 : 0x0001|0x0002, cred, p);
 VOP_UNLOCK(devvp, p);
 if (ump) {
  free(ump->ufsmount_u.e2fs, 28, sizeof *ump->ufsmount_u.e2fs);
  free(ump, 28, sizeof *ump);
  mp->mnt_data = ((void *)0);
 }
 return (error);
}
int
ext2fs_unmount(struct mount *mp, int mntflags, struct proc *p)
{
 struct ufsmount *ump;
 struct m_ext2fs *fs;
 int error, flags;
 size_t gdescs_space;
 flags = 0;
 if (mntflags & 0x00080000)
  flags |= 0x0002;
 if ((error = ext2fs_flushfiles(mp, flags, p)) != 0)
  return (error);
 ump = ((struct ufsmount *)((mp)->mnt_data));
 fs = ump->ufsmount_u.e2fs;
 gdescs_space = fs->e2fs_ngdb * fs->e2fs_bsize;
 if (!fs->e2fs_ronly && ext2fs_cgupdate(ump, 1) == 0 &&
     (fs->e2fs.e2fs_state & 0x02) == 0) {
  fs->e2fs.e2fs_state = 0x01;
  (void) ext2fs_sbupdate(ump, 1);
 }
 if (ump->um_devvp->v_type != VBAD)
  ump->um_devvp->v_un.vu_specinfo->si_mountpoint = ((void *)0);
 vn_lock(ump->um_devvp, 0x0001UL | 0x2000UL, p);
 (void)VOP_CLOSE(ump->um_devvp, fs->e2fs_ronly ? 0x0001 : 0x0001|0x0002,
     ((struct ucred *)-1), p);
 vput(ump->um_devvp);
 free(fs->e2fs_gd, 28, gdescs_space);
 free(fs, 28, sizeof *fs);
 free(ump, 28, sizeof *ump);
 mp->mnt_data = ((void *)0);
 mp->mnt_flag &= ~0x00001000;
 return (0);
}
int
ext2fs_flushfiles(struct mount *mp, int flags, struct proc *p)
{
 struct ufsmount *ump;
 int error;
 ump = ((struct ufsmount *)((mp)->mnt_data));
 if ((error = vflush(mp, ((void *)0), flags)) != 0)
  return (error);
 vn_lock(ump->um_devvp, 0x0001UL | 0x2000UL, p);
 error = VOP_FSYNC(ump->um_devvp, p->p_ucred, 1, p);
 VOP_UNLOCK(ump->um_devvp, p);
 return (error);
}
int
ext2fs_statfs(struct mount *mp, struct statfs *sbp, struct proc *p)
{
 struct ufsmount *ump;
 struct m_ext2fs *fs;
 u_int32_t overhead, overhead_per_group;
 int i, ngroups;
 ump = ((struct ufsmount *)((mp)->mnt_data));
 fs = ump->ufsmount_u.e2fs;
 if (fs->e2fs.e2fs_magic != 0xef53)
  panic("ext2fs_statfs");
 overhead_per_group = 1 + 1 +
     fs->e2fs_itpg;
 overhead = fs->e2fs.e2fs_first_dblock +
     fs->e2fs_ncg * overhead_per_group;
 if (fs->e2fs.e2fs_rev > 0 &&
     fs->e2fs.e2fs_features_rocompat & 0x0001) {
  for (i = 0, ngroups = 0; i < fs->e2fs_ncg; i++) {
   if (cg_has_sb(i))
    ngroups++;
  }
 } else {
  ngroups = fs->e2fs_ncg;
 }
 overhead += ngroups * (1 + fs->e2fs_ngdb);
 sbp->f_bsize = fs->e2fs_bsize;
 sbp->f_iosize = fs->e2fs_bsize;
 sbp->f_blocks = fs->e2fs.e2fs_bcount - overhead;
 sbp->f_bfree = fs->e2fs.e2fs_fbcount;
 sbp->f_bavail = sbp->f_bfree - fs->e2fs.e2fs_rbcount;
 sbp->f_files = fs->e2fs.e2fs_icount;
 sbp->f_favail = sbp->f_ffree = fs->e2fs.e2fs_ficount;
 copy_statfs_info(sbp, mp);
 return (0);
}
int ext2fs_sync_vnode(struct vnode *vp, void *);
struct ext2fs_sync_args {
 int allerror;
 int waitfor;
 struct proc *p;
 struct ucred *cred;
};
int
ext2fs_sync_vnode(struct vnode *vp, void *args)
{
 struct ext2fs_sync_args *esa = args;
 struct inode *ip;
 int error;
 ip = ((struct inode *)(vp)->v_data);
 if (vp->v_type == VNON ||
     ((ip->i_flag & (0x0001 | 0x0002 | 0x0008 | 0x0004)) == 0 &&
     (((&vp->v_dirtyblkhd)->lh_first) == ((void *)0))) ||
     esa->waitfor == 3) {
  return (0);
 }
 if (vget(vp, 0x0001UL | 0x0040UL, esa->p))
  return (0);
 if ((error = VOP_FSYNC(vp, esa->cred, esa->waitfor, esa->p)) != 0)
  esa->allerror = error;
 vput(vp);
 return (0);
}
int
ext2fs_sync(struct mount *mp, int waitfor, struct ucred *cred, struct proc *p)
{
 struct ufsmount *ump = ((struct ufsmount *)((mp)->mnt_data));
 struct m_ext2fs *fs;
 int error, allerror = 0;
 struct ext2fs_sync_args esa;
 fs = ump->ufsmount_u.e2fs;
 if (fs->e2fs_ronly != 0) {
  printf("fs = %s\n", fs->e2fs_fsmnt);
  panic("update: rofs mod");
 }
 esa.p = p;
 esa.cred = cred;
 esa.allerror = 0;
 esa.waitfor = waitfor;
 vfs_mount_foreach_vnode(mp, ext2fs_sync_vnode, &esa);
 if (esa.allerror != 0)
  allerror = esa.allerror;
 if (waitfor != 3) {
  vn_lock(ump->um_devvp, 0x0001UL | 0x2000UL, p);
  if ((error = VOP_FSYNC(ump->um_devvp, cred, waitfor, p)) != 0)
   allerror = error;
  VOP_UNLOCK(ump->um_devvp, p);
 }
 if (fs->e2fs_fmod != 0) {
  fs->e2fs_fmod = 0;
  fs->e2fs.e2fs_wtime = time_second;
  if ((error = ext2fs_cgupdate(ump, waitfor)))
   allerror = error;
 }
 return (allerror);
}
int
ext2fs_vget(struct mount *mp, ino_t ino, struct vnode **vpp)
{
 struct m_ext2fs *fs;
 struct inode *ip;
 struct ext2fs_dinode *dp;
 struct ufsmount *ump;
 struct buf *bp;
 struct vnode *vp;
 dev_t dev;
 int error;
 if (ino > (ufsino_t)-1)
  panic("ext2fs_vget: alien ino_t %llu",
      (unsigned long long)ino);
 ump = ((struct ufsmount *)((mp)->mnt_data));
 dev = ump->um_dev;
 retry:
 if ((*vpp = ufs_ihashget(dev, ino)) != ((void *)0))
  return (0);
 if ((error = getnewvnode(VT_EXT2FS, mp, &ext2fs_vops, &vp)) != 0) {
  *vpp = ((void *)0);
  return (error);
 }
 ip = pool_get(&ext2fs_inode_pool, 0x0001|0x0008);
 _rrw_init_flags(&ip->i_lock, "inode", 0, ((void *)0));
 vp->v_data = ip;
 ip->i_vnode = vp;
 ip->i_ump = ump;
 ip->inode_u.e2fs = fs = ump->ufsmount_u.e2fs;
 ip->i_dev = dev;
 ip->i_number = ino;
 ip->inode_ext.e2fs.ext2fs_last_lblk = 0;
 ip->inode_ext.e2fs.ext2fs_last_blk = 0;
 error = ufs_ihashins(ip);
 if (error) {
  vrele(vp);
  if (error == 17)
   goto retry;
  return (error);
 }
 error = bread(ump->um_devvp, ((((fs)->e2fs_gd[(((ino) - 1) / (fs)->e2fs.e2fs_ipg)].ext2bgd_i_tables + (((ino)-1) % (fs)->e2fs.e2fs_ipg)/(fs)->e2fs_ipb)) << (fs)->e2fs_fsbtodb),
     (int)fs->e2fs_bsize, &bp);
 if (error) {
  vput(vp);
  brelse(bp);
  *vpp = ((void *)0);
  return (error);
 }
 dp = (struct ext2fs_dinode *) ((char *)bp->b_data
     + ((fs)->e2fs.e2fs_rev > 0 ? (fs)->e2fs.e2fs_inode_size : 128) * (((ino)-1) % (fs)->e2fs_ipb));
 ip->dinode_u.e2fs_din = pool_get(&ext2fs_dinode_pool, 0x0001);
 e2fs_i_bswap((fs), (dp), (ip->dinode_u.e2fs_din));
 brelse(bp);
 ip->i_effnlink = ip->dinode_u.e2fs_din->e2di_nlink;
 ip->inode_ext.e2fs.ext2fs_effective_uid = ip->dinode_u.e2fs_din->e2di_uid_low | (ip->dinode_u.e2fs_din->e2di_uid_high << 16);
 ip->inode_ext.e2fs.ext2fs_effective_gid = ip->dinode_u.e2fs_din->e2di_gid_low | (ip->dinode_u.e2fs_din->e2di_gid_high << 16);
 if (ip->dinode_u.e2fs_din->e2di_dtime != 0) {
  ip->dinode_u.e2fs_din->e2di_mode = ip->dinode_u.e2fs_din->e2di_nblock = 0;
  (void)ext2fs_setsize(ip, 0);
 }
 error = ext2fs_vinit(mp, &vp);
 if (error) {
  vput(vp);
  *vpp = ((void *)0);
  return (error);
 }
 vref(ip->i_ump->um_devvp);
 if (ip->dinode_u.e2fs_din->e2di_gen == 0) {
  if (++ext2gennumber < (u_long)time_second)
   ext2gennumber = time_second;
  ip->dinode_u.e2fs_din->e2di_gen = ext2gennumber;
  if ((vp->v_mount->mnt_flag & 0x00000001) == 0)
   ip->i_flag |= 0x0008;
 }
 *vpp = vp;
 return (0);
}
int
ext2fs_fhtovp(struct mount *mp, struct fid *fhp, struct vnode **vpp)
{
 struct inode *ip;
 struct vnode *nvp;
 int error;
 struct ufid *ufhp;
 struct m_ext2fs *fs;
 ufhp = (struct ufid *)fhp;
 fs = ((struct ufsmount *)((mp)->mnt_data))->ufsmount_u.e2fs;
 if ((ufhp->ufid_ino < ((ufsino_t)11) && ufhp->ufid_ino != ((ufsino_t)2)) ||
     ufhp->ufid_ino > fs->e2fs_ncg * fs->e2fs.e2fs_ipg)
  return (70);
 if ((error = (*(mp)->mnt_op->vfs_vget)(mp, ufhp->ufid_ino, &nvp)) != 0) {
  *vpp = ((struct vnode *)((void *)0));
  return (error);
 }
 ip = ((struct inode *)(nvp)->v_data);
 if (ip->dinode_u.e2fs_din->e2di_mode == 0 || ip->dinode_u.e2fs_din->e2di_dtime != 0 ||
     ip->dinode_u.e2fs_din->e2di_gen != ufhp->ufid_gen) {
  vput(nvp);
  *vpp = ((struct vnode *)((void *)0));
  return (70);
 }
 *vpp = nvp;
 return (0);
}
int
ext2fs_vptofh(struct vnode *vp, struct fid *fhp)
{
 struct inode *ip;
 struct ufid *ufhp;
 ip = ((struct inode *)(vp)->v_data);
 ufhp = (struct ufid *)fhp;
 ufhp->ufid_len = sizeof(struct ufid);
 ufhp->ufid_ino = ip->i_number;
 ufhp->ufid_gen = ip->dinode_u.e2fs_din->e2di_gen;
 return (0);
}
int
ext2fs_sysctl(int *name, u_int namelen, void *oldp, size_t *oldlenp,
    void *newp, size_t newlen, struct proc *p)
{
 return (45);
}
int
ext2fs_sbupdate(struct ufsmount *mp, int waitfor)
{
 struct m_ext2fs *fs = mp->ufsmount_u.e2fs;
 struct buf *bp;
 int error = 0;
 bp = getblk(mp->um_devvp, ((daddr_t)(((daddr_t)(0)) + 1024 / (1 << 9))), 1024, 0, 0);
 e2fs_sb_bswap((&fs->e2fs), ((struct ext2fs *) bp->b_data));
 if (waitfor == 1)
  error = bwrite(bp);
 else
  bawrite(bp);
 fs->e2fs_fmod = 0;
 return (error);
}
int
ext2fs_cgupdate(struct ufsmount *mp, int waitfor)
{
 struct m_ext2fs *fs = mp->ufsmount_u.e2fs;
 struct buf *bp;
 int i, error = 0, allerror = 0;
 allerror = ext2fs_sbupdate(mp, waitfor);
 for (i = 0; i < fs->e2fs_ngdb; i++) {
  bp = getblk(mp->um_devvp, ((((fs->e2fs_bsize>1024)?0:1)+i+1) << (fs)->e2fs_fsbtodb),
      fs->e2fs_bsize, 0, 0);
  e2fs_cg_bswap((&fs->e2fs_gd[i* fs->e2fs_bsize / sizeof(struct ext2_gd)]), ((struct ext2_gd*)bp->b_data), (fs->e2fs_bsize));;
  if (waitfor == 1)
   error = bwrite(bp);
  else
   bawrite(bp);
 }
 if (!allerror && error)
  allerror = error;
 return (allerror);
}
static int
e2fs_sbcheck(struct ext2fs *fs, int ronly)
{
 u_int32_t tmp;
 tmp = __extension__({ __uint16_t __swap16gen_x = (fs->e2fs_magic); (__uint16_t)((__swap16gen_x & 0xff) << 8 | (__swap16gen_x & 0xff00) >> 8); });
 if (tmp != 0xef53) {
  printf("ext2fs: wrong magic number 0x%x\n", tmp);
  return (5);
 }
 tmp = __extension__({ __uint32_t __swap32gen_x = (fs->e2fs_log_bsize); (__uint32_t)((__swap32gen_x & 0xff) << 24 | (__swap32gen_x & 0xff00) << 8 | (__swap32gen_x & 0xff0000) >> 8 | (__swap32gen_x & 0xff000000) >> 24); });
 if (tmp > 2) {
  tmp += 10;
  printf("ext2fs: wrong log2(block size) %d\n", tmp);
  return (5);
 }
 if (fs->e2fs_bpg == 0) {
  printf("ext2fs: zero blocks per group\n");
  return (5);
 }
 tmp = __extension__({ __uint32_t __swap32gen_x = (fs->e2fs_rev); (__uint32_t)((__swap32gen_x & 0xff) << 24 | (__swap32gen_x & 0xff00) << 8 | (__swap32gen_x & 0xff0000) >> 8 | (__swap32gen_x & 0xff000000) >> 24); });
 if (tmp > 1) {
  printf("ext2fs: wrong revision number 0x%x\n", tmp);
  return (5);
 }
 else if (tmp == 0)
  return (0);
 tmp = __extension__({ __uint32_t __swap32gen_x = (fs->e2fs_first_ino); (__uint32_t)((__swap32gen_x & 0xff) << 24 | (__swap32gen_x & 0xff00) << 8 | (__swap32gen_x & 0xff0000) >> 8 | (__swap32gen_x & 0xff000000) >> 24); });
 if (tmp != ((ufsino_t)11)) {
  printf("ext2fs: first inode at 0x%x\n", tmp);
  return (22);
 }
 tmp = __extension__({ __uint32_t __swap32gen_x = (fs->e2fs_features_incompat); (__uint32_t)((__swap32gen_x & 0xff) << 24 | (__swap32gen_x & 0xff00) << 8 | (__swap32gen_x & 0xff0000) >> 8 | (__swap32gen_x & 0xff000000) >> 24); });
 if (tmp & ~((0x0002) | (0x0040 | 0x0200 | 0x0010 | 0x0004))) {
  printf("ext2fs: unsupported incompat features 0x%x\n", tmp);
  return (22);
 }
 if (!ronly && (tmp & (0x0040 | 0x0200 | 0x0010 | 0x0004))) {
  printf("ext4fs: only read-only support right now\n");
  return (30);
 }
 if (tmp & 0x0004) {
  printf("ext2fs: your file system says it needs recovery\n");
  if (!ronly)
   return (30);
 }
 tmp = __extension__({ __uint32_t __swap32gen_x = (fs->e2fs_features_rocompat); (__uint32_t)((__swap32gen_x & 0xff) << 24 | (__swap32gen_x & 0xff00) << 8 | (__swap32gen_x & 0xff0000) >> 8 | (__swap32gen_x & 0xff000000) >> 24); });
 if (!ronly && (tmp & ~(0x0001 | 0x0002))) {
  printf("ext2fs: unsupported R/O compat features 0x%x\n", tmp);
  return (30);
 }
 return (0);
}
