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
struct protosw *pffindproto(int, int, int);
struct protosw *pffindtype(int, int);
void pfctlinput(int, struct sockaddr *);
extern u_char ip_protox[];
extern struct protosw inetsw[];
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
typedef u_int16_t pci_vendor_id_t;
typedef u_int16_t pci_product_id_t;
typedef u_int8_t pci_class_t;
typedef u_int8_t pci_subclass_t;
typedef u_int8_t pci_interface_t;
typedef u_int8_t pci_revision_t;
typedef u_int8_t pci_intr_pin_t;
typedef u_int8_t pci_intr_line_t;
struct pci_vpd_smallres {
 uint8_t vpdres_byte0;
} __attribute__((__packed__));
struct pci_vpd_largeres {
 uint8_t vpdres_byte0;
 uint8_t vpdres_len_lsb;
 uint8_t vpdres_len_msb;
} __attribute__((__packed__));
struct pci_vpd {
 uint8_t vpd_key0;
 uint8_t vpd_key1;
 uint8_t vpd_len;
} __attribute__((__packed__));
struct extent_region {
 struct { struct extent_region *le_next; struct extent_region **le_prev; } er_link;
 u_long er_start;
 u_long er_end;
 int er_flags;
};
struct extent {
 char *ex_name;
 struct { struct extent_region *lh_first; } ex_regions;
 u_long ex_start;
 u_long ex_end;
 int ex_mtype;
 int ex_flags;
 struct { struct extent *le_next; struct extent **le_prev; } ex_link;
};
struct extent_fixed {
 struct extent fex_extent;
 struct { struct extent_region *lh_first; } fex_freelist;
 caddr_t fex_storage;
 size_t fex_storagesize;
};
void extent_print_all(void);
struct extent *extent_create(char *, u_long, u_long, int,
     caddr_t, size_t, int);
void extent_destroy(struct extent *);
int extent_alloc_subregion(struct extent *, u_long, u_long,
     u_long, u_long, u_long, u_long, int, u_long *);
int extent_alloc_subregion_with_descr(struct extent *, u_long, u_long,
     u_long, u_long, u_long, u_long, int, struct extent_region *,
     u_long *);
int extent_alloc_region(struct extent *, u_long, u_long, int);
int extent_free(struct extent *, u_long, u_long, int);
void extent_print(struct extent *);
typedef u_int32_t pcireg_t;
struct pcibus_attach_args;
struct pci_softc;
struct pci_attach_args;
typedef struct sparc_pci_chipset *pci_chipset_tag_t;
typedef u_int pci_intr_handle_t;
typedef u_int64_t pcitag_t;
struct sparc_pci_chipset {
 void *cookie;
 bus_space_tag_t bustag;
 bus_space_handle_t bushandle;
 int rootnode;
 int busnode[256];
 int (*conf_size)(pci_chipset_tag_t, pcitag_t);
 pcireg_t (*conf_read)(pci_chipset_tag_t, pcitag_t, int);
 void (*conf_write)(pci_chipset_tag_t, pcitag_t, int, pcireg_t);
 int (*intr_map)(struct pci_attach_args *, pci_intr_handle_t *);
};
void pci_attach_hook(struct device *, struct device *,
         struct pcibus_attach_args *);
int pci_bus_maxdevs(pci_chipset_tag_t, int);
pcitag_t pci_make_tag(pci_chipset_tag_t, int, int, int);
void pci_decompose_tag(pci_chipset_tag_t, pcitag_t, int *, int *,
      int *);
int pci_conf_size(pci_chipset_tag_t, pcitag_t);
pcireg_t pci_conf_read(pci_chipset_tag_t, pcitag_t, int);
void pci_conf_write(pci_chipset_tag_t, pcitag_t, int,
        pcireg_t);
int pci_intr_map(struct pci_attach_args *, pci_intr_handle_t *);
int pci_intr_map_msi(struct pci_attach_args *, pci_intr_handle_t *);
int pci_intr_line(pci_chipset_tag_t, pci_intr_handle_t);
const char *pci_intr_string(pci_chipset_tag_t, pci_intr_handle_t);
void *pci_intr_establish(pci_chipset_tag_t, pci_intr_handle_t,
     int, int (*)(void *), void *, const char *);
void pci_intr_disestablish(pci_chipset_tag_t, void *);
void pci_msi_enable(pci_chipset_tag_t, pcitag_t, bus_addr_t, int);
int sparc64_pci_enumerate_bus(struct pci_softc *,
      int (*match)(struct pci_attach_args *),
      struct pci_attach_args *);
struct pcibus_attach_args {
 char *pba_busname;
 bus_space_tag_t pba_iot;
 bus_space_tag_t pba_memt;
 bus_dma_tag_t pba_dmat;
 pci_chipset_tag_t pba_pc;
 int pba_flags;
 struct extent *pba_ioex;
 struct extent *pba_memex;
 struct extent *pba_pmemex;
 struct extent *pba_busex;
 int pba_domain;
 int pba_bus;
 pcitag_t *pba_bridgetag;
 pci_intr_handle_t *pba_bridgeih;
 u_int pba_intrswiz;
 pcitag_t pba_intrtag;
};
struct pci_attach_args {
 bus_space_tag_t pa_iot;
 bus_space_tag_t pa_memt;
 bus_dma_tag_t pa_dmat;
 pci_chipset_tag_t pa_pc;
 int pa_flags;
 struct extent *pa_ioex;
 struct extent *pa_memex;
 struct extent *pa_pmemex;
 struct extent *pa_busex;
 u_int pa_domain;
 u_int pa_bus;
 u_int pa_device;
 u_int pa_function;
 pcitag_t pa_tag;
 pcireg_t pa_id, pa_class;
 pcitag_t *pa_bridgetag;
 pci_intr_handle_t *pa_bridgeih;
 u_int pa_intrswiz;
 pcitag_t pa_intrtag;
 pci_intr_pin_t pa_intrpin;
 pci_intr_line_t pa_intrline;
 pci_intr_pin_t pa_rawintrpin;
};
struct pci_quirkdata {
 pci_vendor_id_t vendor;
 pci_product_id_t product;
 int quirks;
};
struct pci_softc {
 struct device sc_dev;
 bus_space_tag_t sc_iot, sc_memt;
 bus_dma_tag_t sc_dmat;
 pci_chipset_tag_t sc_pc;
 int sc_flags;
 struct extent *sc_ioex;
 struct extent *sc_memex;
 struct extent *sc_pmemex;
 struct extent *sc_busex;
 struct { struct pci_dev *lh_first; } sc_devs;
 int sc_domain, sc_bus, sc_maxndevs;
 pcitag_t *sc_bridgetag;
 pci_intr_handle_t *sc_bridgeih;
 u_int sc_intrswiz;
 pcitag_t sc_intrtag;
};
extern int pci_ndomains;
extern int pci_dopm;
int pci_mapreg_probe(pci_chipset_tag_t, pcitag_t, int, pcireg_t *);
pcireg_t pci_mapreg_type(pci_chipset_tag_t, pcitag_t, int);
int pci_mapreg_info(pci_chipset_tag_t, pcitag_t, int, pcireg_t,
     bus_addr_t *, bus_size_t *, int *);
int pci_mapreg_map(struct pci_attach_args *, int, pcireg_t, int,
     bus_space_tag_t *, bus_space_handle_t *, bus_addr_t *,
     bus_size_t *, bus_size_t);
int pci_io_find(pci_chipset_tag_t, pcitag_t, int, bus_addr_t *,
     bus_size_t *);
int pci_mem_find(pci_chipset_tag_t, pcitag_t, int, bus_addr_t *,
     bus_size_t *, int *);
int pci_get_capability(pci_chipset_tag_t, pcitag_t, int,
     int *, pcireg_t *);
int pci_get_ht_capability(pci_chipset_tag_t, pcitag_t, int,
     int *, pcireg_t *);
struct pci_matchid {
 pci_vendor_id_t pm_vid;
 pci_product_id_t pm_pid;
};
int pci_matchbyid(struct pci_attach_args *, const struct pci_matchid *, int);
int pci_get_powerstate(pci_chipset_tag_t, pcitag_t);
int pci_set_powerstate(pci_chipset_tag_t, pcitag_t, int);
void pci_disable_legacy_vga(struct device *);
int pci_vpd_read(pci_chipset_tag_t, pcitag_t, int, int, pcireg_t *);
int pci_vpd_write(pci_chipset_tag_t, pcitag_t, int, int, pcireg_t *);
const char *pci_findvendor(pcireg_t);
const char *pci_findproduct(pcireg_t);
int pci_find_device(struct pci_attach_args *pa,
     int (*match)(struct pci_attach_args *));
int pci_probe_device(struct pci_softc *, pcitag_t tag,
     int (*)(struct pci_attach_args *), struct pci_attach_args *);
int pci_detach_devices(struct pci_softc *, int);
void pci_devinfo(pcireg_t, pcireg_t, int, char *, size_t);
const struct pci_quirkdata *
 pci_lookup_quirkdata(pci_vendor_id_t, pci_product_id_t);
void pciagp_set_pchb(struct pci_attach_args *);
typedef struct {
    u_int32_t d_status;
    u_int32_t d_flag : 10, d_length2 : 11, d_length1 : 11;
    u_int32_t d_addr1;
    u_int32_t d_addr2;
} tulip_desc_t;
typedef struct {
    u_int8_t sh_idbuf[18];
    u_int8_t sh_version;
    u_int8_t sh_adapter_count;
    u_int8_t sh_ieee802_address[6];
} tulip_srom_header_t;
typedef struct {
    u_int8_t sai_device;
    u_int8_t sai_leaf_offset_lowbyte;
    u_int8_t sai_leaf_offset_highbyte;
} tulip_srom_adapter_info_t;
typedef enum {
    TULIP_SROM_CONNTYPE_10BASET =0x0000,
    TULIP_SROM_CONNTYPE_BNC =0x0001,
    TULIP_SROM_CONNTYPE_AUI =0x0002,
    TULIP_SROM_CONNTYPE_100BASETX =0x0003,
    TULIP_SROM_CONNTYPE_100BASET4 =0x0006,
    TULIP_SROM_CONNTYPE_100BASEFX =0x0007,
    TULIP_SROM_CONNTYPE_MII_10BASET =0x0009,
    TULIP_SROM_CONNTYPE_MII_100BASETX =0x000D,
    TULIP_SROM_CONNTYPE_MII_100BASET4 =0x000F,
    TULIP_SROM_CONNTYPE_MII_100BASEFX =0x0010,
    TULIP_SROM_CONNTYPE_10BASET_NWAY =0x0100,
    TULIP_SROM_CONNTYPE_10BASET_FD =0x0204,
    TULIP_SROM_CONNTYPE_MII_10BASET_FD =0x020A,
    TULIP_SROM_CONNTYPE_100BASETX_FD =0x020E,
    TULIP_SROM_CONNTYPE_MII_100BASETX_FD =0x0211,
    TULIP_SROM_CONNTYPE_10BASET_NOLINKPASS =0x0400,
    TULIP_SROM_CONNTYPE_AUTOSENSE =0x0800,
    TULIP_SROM_CONNTYPE_AUTOSENSE_POWERUP =0x8800,
    TULIP_SROM_CONNTYPE_AUTOSENSE_NWAY =0x9000,
    TULIP_SROM_CONNTYPE_NOT_USED =0xFFFF
} tulip_srom_connection_t;
typedef enum {
    TULIP_SROM_MEDIA_10BASET =0x0000,
    TULIP_SROM_MEDIA_BNC =0x0001,
    TULIP_SROM_MEDIA_AUI =0x0002,
    TULIP_SROM_MEDIA_100BASETX =0x0003,
    TULIP_SROM_MEDIA_10BASET_FD =0x0004,
    TULIP_SROM_MEDIA_100BASETX_FD =0x0005,
    TULIP_SROM_MEDIA_100BASET4 =0x0006,
    TULIP_SROM_MEDIA_100BASEFX =0x0007,
    TULIP_SROM_MEDIA_100BASEFX_FD =0x0008
} tulip_srom_media_t;
typedef struct {
    bus_size_t csr_busmode;
    bus_size_t csr_txpoll;
    bus_size_t csr_rxpoll;
    bus_size_t csr_rxlist;
    bus_size_t csr_txlist;
    bus_size_t csr_status;
    bus_size_t csr_command;
    bus_size_t csr_intr;
    bus_size_t csr_missed_frames;
    bus_size_t csr_9;
    bus_size_t csr_10;
    bus_size_t csr_11;
    bus_size_t csr_12;
    bus_size_t csr_13;
    bus_size_t csr_14;
    bus_size_t csr_15;
} tulip_regfile_t;
typedef struct {
    tulip_desc_t *ri_first;
    tulip_desc_t *ri_last;
    tulip_desc_t *ri_nextin;
    tulip_desc_t *ri_nextout;
    int ri_max;
    int ri_free;
} tulip_ringinfo_t;
typedef struct _tulip_softc_t tulip_softc_t;
typedef enum {
    TULIP_21040, TULIP_DE425,
    TULIP_21041,
    TULIP_21140, TULIP_21140A, TULIP_21142,
    TULIP_21143,
    TULIP_CHIPID_UNKNOWN
} tulip_chipid_t;
typedef enum {
    TULIP_MEDIA_UNKNOWN,
    TULIP_MEDIA_10BASET,
    TULIP_MEDIA_10BASET_FD,
    TULIP_MEDIA_BNC,
    TULIP_MEDIA_AUI,
    TULIP_MEDIA_EXTSIA,
    TULIP_MEDIA_AUIBNC,
    TULIP_MEDIA_100BASETX,
    TULIP_MEDIA_100BASETX_FD,
    TULIP_MEDIA_100BASET4,
    TULIP_MEDIA_100BASEFX,
    TULIP_MEDIA_100BASEFX_FD,
    TULIP_MEDIA_MAX
} tulip_media_t;
typedef struct {
    enum {
 TULIP_MEDIAINFO_NONE,
 TULIP_MEDIAINFO_SIA,
 TULIP_MEDIAINFO_GPR,
 TULIP_MEDIAINFO_MII,
 TULIP_MEDIAINFO_RESET,
 TULIP_MEDIAINFO_SYM
    } mi_type;
    union {
 struct {
     u_int16_t sia_connectivity;
     u_int16_t sia_tx_rx;
     u_int16_t sia_general;
     u_int32_t sia_gp_control;
     u_int32_t sia_gp_data;
 } un_sia;
 struct {
     u_int32_t gpr_cmdmode;
     u_int32_t gpr_gpcontrol;
     u_int32_t gpr_gpdata;
     u_int8_t gpr_actmask;
     u_int8_t gpr_actdata;
     u_int8_t gpr_default : 1;
 } un_gpr;
 struct {
     u_int32_t mii_mediamask;
     u_int16_t mii_capabilities;
     u_int16_t mii_advertisement;
     u_int16_t mii_full_duplex;
     u_int16_t mii_tx_threshold;
     u_int16_t mii_interrupt;
     u_int8_t mii_phyaddr;
     u_int8_t mii_gpr_length;
     u_int8_t mii_gpr_offset;
     u_int8_t mii_reset_length;
     u_int8_t mii_reset_offset;
     u_int32_t mii_phyid;
 } un_mii;
    } mi_un;
} tulip_media_info_t;
typedef enum {
    TULIP_21040_GENERIC,
    TULIP_21140_ISV,
    TULIP_21142_ISV,
    TULIP_21143_ISV,
    TULIP_21140_DEC_EB,
    TULIP_21140_MII,
    TULIP_21140_DEC_DE500,
    TULIP_21140_SMC_9332,
    TULIP_21140_COGENT_EM100,
    TULIP_21140_ZNYX_ZX34X,
    TULIP_21140_ASANTE,
    TULIP_21140_EN1207,
    TULIP_21041_GENERIC
} tulip_board_t;
typedef enum {
    TULIP_MEDIAPOLL_TIMER,
    TULIP_MEDIAPOLL_FASTTIMER,
    TULIP_MEDIAPOLL_LINKFAIL,
    TULIP_MEDIAPOLL_LINKPASS,
    TULIP_MEDIAPOLL_START,
    TULIP_MEDIAPOLL_TXPROBE_OK,
    TULIP_MEDIAPOLL_TXPROBE_FAILED,
    TULIP_MEDIAPOLL_MAX
} tulip_mediapoll_event_t;
typedef enum {
    TULIP_LINK_DOWN,
    TULIP_LINK_UP,
    TULIP_LINK_UNKNOWN
} tulip_link_status_t;
typedef struct {
    tulip_board_t bd_type;
    void (*bd_media_probe)(tulip_softc_t * const sc);
    void (*bd_media_select)(tulip_softc_t * const sc);
    void (*bd_media_poll)(tulip_softc_t * const sc, tulip_mediapoll_event_t event);
    void (*bd_media_preset)(tulip_softc_t * const sc);
} tulip_boardsw_t;
typedef enum {
    PHY_MODE_10T,
    PHY_MODE_100TX,
    PHY_MODE_100T4,
    PHY_MODE_FULLDUPLEX,
    PHY_MODE_MAX
} tulip_phy_mode_t;
typedef struct {
    u_int16_t pm_regno;
    u_int16_t pm_mask;
    u_int16_t pm_value;
} tulip_phy_modedata_t;
typedef struct {
    u_int32_t attr_id;
    u_int16_t attr_flags;
    tulip_phy_modedata_t attr_modes[PHY_MODE_MAX];
} tulip_phy_attr_t;
typedef enum {
    TULIP_PROBE_INACTIVE,
    TULIP_PROBE_PHYRESET,
    TULIP_PROBE_PHYAUTONEG,
    TULIP_PROBE_GPRTEST,
    TULIP_PROBE_MEDIATEST,
    TULIP_PROBE_FAILED
} tulip_probe_state_t;
typedef struct {
    u_int32_t dot3StatsSingleCollisionFrames;
    u_int32_t dot3StatsMultipleCollisionFrames;
    u_int32_t dot3StatsSQETestErrors;
    u_int32_t dot3StatsDeferredTransmissions;
    u_int32_t dot3StatsLateCollisions;
    u_int32_t dot3StatsExcessiveCollisions;
    u_int32_t dot3StatsCarrierSenseErrors;
    u_int32_t dot3StatsInternalMacTransmitErrors;
    u_int32_t dot3StatsInternalTransmitUnderflows;
    u_int32_t dot3StatsInternalTransmitBabbles;
    u_int32_t dot3StatsMissedFrames;
    u_int32_t dot3StatsAlignmentErrors;
    u_int32_t dot3StatsFCSErrors;
    u_int32_t dot3StatsFrameTooLongs;
    u_int32_t dot3StatsInternalMacReceiveErrors;
} tulip_dot3_stats_t;
struct _tulip_softc_t {
    struct device tulip_dev;
    void *tulip_ih;
    void *tulip_ats;
    bus_space_tag_t tulip_bustag;
    bus_space_handle_t tulip_bushandle;
    pci_chipset_tag_t tulip_pc;
    u_int8_t tulip_enaddr[6];
    struct ifmedia tulip_ifmedia;
    bus_dma_tag_t tulip_dmatag;
    bus_dmamap_t tulip_setupmap;
    bus_dmamap_t tulip_txdescmap;
    bus_dmamap_t tulip_free_txmaps[32];
    unsigned tulip_num_free_txmaps;
    bus_dmamap_t tulip_rxdescmap;
    bus_dmamap_t tulip_free_rxmaps[48];
    unsigned tulip_num_free_rxmaps;
    struct arpcom tulip_ac;
    struct timeout tulip_stmo;
    tulip_regfile_t tulip_csrs;
    u_int32_t tulip_flags;
    u_int32_t tulip_features;
    u_int32_t tulip_intrmask;
    u_int32_t tulip_cmdmode;
    u_int32_t tulip_last_system_error : 3;
    u_int32_t tulip_txtimer;
    u_int32_t tulip_system_errors;
    u_int32_t tulip_statusbits;
    tulip_media_info_t *tulip_mediums[TULIP_MEDIA_MAX];
    tulip_media_t tulip_media;
    u_int32_t tulip_abilities;
    u_int8_t tulip_revinfo;
    u_int8_t tulip_phyaddr;
    u_int8_t tulip_gpinit;
    u_int8_t tulip_gpdata;
    struct {
 u_int8_t probe_count;
 int32_t probe_timeout;
 tulip_probe_state_t probe_state;
 tulip_media_t probe_media;
 u_int32_t probe_mediamask;
 u_int32_t probe_passes;
 u_int32_t probe_txprobes;
    } tulip_probe;
    tulip_chipid_t tulip_chipid;
    const tulip_boardsw_t *tulip_boardsw;
    tulip_softc_t *tulip_slaves;
    struct mbuf_list tulip_txq;
    struct mbuf_list tulip_rxq;
    tulip_dot3_stats_t tulip_dot3stats;
    tulip_ringinfo_t tulip_rxinfo;
    tulip_ringinfo_t tulip_txinfo;
    tulip_media_info_t tulip_mediainfo[10];
    tulip_desc_t *tulip_setupbuf;
    u_int32_t tulip_setupdata[192 / sizeof(u_int32_t)];
    char tulip_boardid[16];
    u_int8_t tulip_rombuf[128];
    struct device *tulip_pci_busno;
    u_int8_t tulip_pci_devno;
    u_int8_t tulip_connidx;
    tulip_srom_connection_t tulip_conntype;
    tulip_desc_t *tulip_rxdescs;
    tulip_desc_t *tulip_txdescs;
};
static const char * const tulip_chipdescs[] = {
    "21040",
    ((void *)0),
    "21041",
    "21140",
    "21140A",
    "21142",
    "21143",
    "82C168",
};
static const uint64_t tulip_media_to_ifmedia[] = {
    0x0000000000000100ULL | 2ULL,
    0x0000000000000100ULL | 3,
    0x0000000000000100ULL | 3 | 0x0000010000000000ULL,
    0x0000000000000100ULL | 4,
    0x0000000000000100ULL | 5,
    0x0000000000000100ULL | 1ULL,
    0x0000000000000100ULL | 5,
    0x0000000000000100ULL | 6,
    0x0000000000000100ULL | 6 | 0x0000010000000000ULL,
    0x0000000000000100ULL | 8,
    0x0000000000000100ULL | 7,
    0x0000000000000100ULL | 7 | 0x0000010000000000ULL,
};
static const struct {
    tulip_srom_connection_t sc_type;
    tulip_media_t sc_media;
    u_int32_t sc_attrs;
} tulip_srom_conninfo[] = {
    { TULIP_SROM_CONNTYPE_10BASET, TULIP_MEDIA_10BASET },
    { TULIP_SROM_CONNTYPE_BNC, TULIP_MEDIA_BNC },
    { TULIP_SROM_CONNTYPE_AUI, TULIP_MEDIA_AUI },
    { TULIP_SROM_CONNTYPE_100BASETX, TULIP_MEDIA_100BASETX },
    { TULIP_SROM_CONNTYPE_100BASET4, TULIP_MEDIA_100BASET4 },
    { TULIP_SROM_CONNTYPE_100BASEFX, TULIP_MEDIA_100BASEFX },
    { TULIP_SROM_CONNTYPE_MII_10BASET, TULIP_MEDIA_10BASET,
  0x0100 },
    { TULIP_SROM_CONNTYPE_MII_100BASETX, TULIP_MEDIA_100BASETX,
  0x0100 },
    { TULIP_SROM_CONNTYPE_MII_100BASET4, TULIP_MEDIA_100BASET4,
  0x0100 },
    { TULIP_SROM_CONNTYPE_MII_100BASEFX, TULIP_MEDIA_100BASEFX,
  0x0100 },
    { TULIP_SROM_CONNTYPE_10BASET_NWAY, TULIP_MEDIA_10BASET,
  0x0200 },
    { TULIP_SROM_CONNTYPE_10BASET_FD, TULIP_MEDIA_10BASET_FD },
    { TULIP_SROM_CONNTYPE_MII_10BASET_FD, TULIP_MEDIA_10BASET_FD,
  0x0100 },
    { TULIP_SROM_CONNTYPE_100BASETX_FD, TULIP_MEDIA_100BASETX_FD },
    { TULIP_SROM_CONNTYPE_MII_100BASETX_FD, TULIP_MEDIA_100BASETX_FD,
  0x0100 },
    { TULIP_SROM_CONNTYPE_10BASET_NOLINKPASS, TULIP_MEDIA_10BASET,
  0x1000 },
    { TULIP_SROM_CONNTYPE_AUTOSENSE, TULIP_MEDIA_UNKNOWN,
  0x0400 },
    { TULIP_SROM_CONNTYPE_AUTOSENSE_POWERUP, TULIP_MEDIA_UNKNOWN,
  0x0400|0x0800 },
    { TULIP_SROM_CONNTYPE_AUTOSENSE_NWAY, TULIP_MEDIA_UNKNOWN,
  0x0400|0x0200 },
    { TULIP_SROM_CONNTYPE_NOT_USED, TULIP_MEDIA_UNKNOWN }
};
static const struct {
    tulip_media_t sm_type;
    tulip_srom_media_t sm_srom_type;
} tulip_srom_mediums[] = {
    { TULIP_MEDIA_100BASEFX_FD, TULIP_SROM_MEDIA_100BASEFX_FD },
    { TULIP_MEDIA_100BASEFX, TULIP_SROM_MEDIA_100BASEFX },
    { TULIP_MEDIA_100BASET4, TULIP_SROM_MEDIA_100BASET4 },
    { TULIP_MEDIA_100BASETX_FD, TULIP_SROM_MEDIA_100BASETX_FD },
    { TULIP_MEDIA_100BASETX, TULIP_SROM_MEDIA_100BASETX },
    { TULIP_MEDIA_10BASET_FD, TULIP_SROM_MEDIA_10BASET_FD },
    { TULIP_MEDIA_AUI, TULIP_SROM_MEDIA_AUI },
    { TULIP_MEDIA_BNC, TULIP_SROM_MEDIA_BNC },
    { TULIP_MEDIA_10BASET, TULIP_SROM_MEDIA_10BASET },
    { TULIP_MEDIA_UNKNOWN }
};
extern struct cfattach de_ca;
extern struct cfdriver de_cd;
int tulip_probe(struct device *parent, void *match, void *aux);
void tulip_attach(struct device * const parent, struct device * const self, void * const aux);
struct cfattach de_ca = {
 sizeof(tulip_softc_t), tulip_probe, tulip_attach
};
struct cfdriver de_cd = {
 ((void *)0), "de", DV_IFNET
};
void tulip_timeout_callback(void *arg);
void tulip_timeout(tulip_softc_t * const sc);
int tulip_txprobe(tulip_softc_t * const sc);
void tulip_media_set(tulip_softc_t * const sc, tulip_media_t media);
void tulip_linkup(tulip_softc_t * const sc, tulip_media_t media);
void tulip_media_print(tulip_softc_t * const sc);
tulip_link_status_t tulip_media_link_monitor(tulip_softc_t * const sc);
void tulip_media_poll(tulip_softc_t * const sc, tulip_mediapoll_event_t event);
void tulip_media_select(tulip_softc_t * const sc);
void tulip_21040_mediainfo_init(tulip_softc_t * const sc, tulip_media_t media);
void tulip_21040_media_probe(tulip_softc_t * const sc);
void tulip_21040_10baset_only_media_probe(tulip_softc_t * const sc);
void tulip_21040_10baset_only_media_select(tulip_softc_t * const sc);
void tulip_21040_auibnc_only_media_probe(tulip_softc_t * const sc);
void tulip_21040_auibnc_only_media_select(tulip_softc_t * const sc);
void tulip_21041_mediainfo_init(tulip_softc_t * const sc);
void tulip_21041_media_probe(tulip_softc_t * const sc);
void tulip_21041_media_poll(tulip_softc_t * const sc, const tulip_mediapoll_event_t event);
tulip_media_t tulip_mii_phy_readspecific(tulip_softc_t * const sc);
unsigned tulip_mii_get_phyaddr(tulip_softc_t * const sc, unsigned offset);
int tulip_mii_map_abilities(tulip_softc_t * const sc, unsigned abilities);
void tulip_mii_autonegotiate(tulip_softc_t * const sc, const unsigned phyaddr);
void tulip_2114x_media_preset(tulip_softc_t * const sc);
void tulip_null_media_poll(tulip_softc_t * const sc, tulip_mediapoll_event_t event);
void tulip_21140_mediainit(tulip_softc_t * const sc, tulip_media_info_t * const mip,
    tulip_media_t const media, unsigned gpdata, unsigned cmdmode);
void tulip_21140_evalboard_media_probe(tulip_softc_t * const sc);
void tulip_21140_accton_media_probe(tulip_softc_t * const sc);
void tulip_21140_smc9332_media_probe(tulip_softc_t * const sc);
void tulip_21140_cogent_em100_media_probe(tulip_softc_t * const sc);
void tulip_21140_znyx_zx34x_media_probe(tulip_softc_t * const sc);
void tulip_2114x_media_probe(tulip_softc_t * const sc);
void tulip_delay_300ns(tulip_softc_t * const sc);
void tulip_srom_idle(tulip_softc_t * const sc);
void tulip_srom_read(tulip_softc_t * const sc);
void tulip_mii_writebits(tulip_softc_t * const sc, unsigned data, unsigned bits);
void tulip_mii_turnaround(tulip_softc_t * const sc, unsigned cmd);
unsigned tulip_mii_readbits(tulip_softc_t * const sc);
unsigned tulip_mii_readreg(tulip_softc_t * const sc, unsigned devaddr, unsigned regno);
void tulip_mii_writereg(tulip_softc_t * const sc, unsigned devaddr, unsigned regno,
    unsigned data);
void tulip_identify_dec_nic(tulip_softc_t * const sc);
void tulip_identify_znyx_nic(tulip_softc_t * const sc);
void tulip_identify_smc_nic(tulip_softc_t * const sc);
void tulip_identify_cogent_nic(tulip_softc_t * const sc);
void tulip_identify_accton_nic(tulip_softc_t * const sc);
void tulip_identify_asante_nic(tulip_softc_t * const sc);
void tulip_identify_compex_nic(tulip_softc_t * const sc);
int tulip_srom_decode(tulip_softc_t * const sc);
int tulip_read_macaddr(tulip_softc_t * const sc);
void tulip_ifmedia_add(tulip_softc_t * const sc);
int tulip_ifmedia_change(struct ifnet * const ifp);
void tulip_ifmedia_status(struct ifnet * const ifp, struct ifmediareq *req);
void tulip_addr_filter(tulip_softc_t * const sc);
void tulip_reset(tulip_softc_t * const sc);
void tulip_init(tulip_softc_t * const sc);
void tulip_rx_intr(tulip_softc_t * const sc);
int tulip_tx_intr(tulip_softc_t * const sc);
void tulip_print_abnormal_interrupt(tulip_softc_t * const sc, u_int32_t csr);
void tulip_intr_handler(tulip_softc_t * const sc, int *progress_p);
int tulip_intr_shared(void *arg);
int tulip_intr_normal(void *arg);
struct mbuf *tulip_mbuf_compress(struct mbuf *m);
struct mbuf *tulip_txput(tulip_softc_t * const sc, struct mbuf *m, int);
void tulip_txput_setup(tulip_softc_t * const sc);
int tulip_ifioctl(struct ifnet * ifp, u_long cmd, caddr_t data);
void tulip_ifstart(struct ifnet *ifp);
void tulip_ifwatchdog(struct ifnet *ifp);
int tulip_busdma_allocmem(tulip_softc_t * const sc, size_t size,
    bus_dmamap_t *map_p, tulip_desc_t **desc_p);
int tulip_busdma_init(tulip_softc_t * const sc);
void tulip_initcsrs(tulip_softc_t * const sc, bus_addr_t csr_base, size_t csr_size);
void tulip_initring(tulip_softc_t * const sc, tulip_ringinfo_t * const ri,
    tulip_desc_t *descs, int ndescs);
bus_dmamap_t tulip_alloc_rxmap(tulip_softc_t *);
void tulip_free_rxmap(tulip_softc_t *, bus_dmamap_t);
bus_dmamap_t tulip_alloc_txmap(tulip_softc_t *);
void tulip_free_txmap(tulip_softc_t *, bus_dmamap_t);
void
tulip_timeout_callback(void *arg)
{
    tulip_softc_t * const sc = arg;
    int s;
    s = _splraise(6);
   
    sc->tulip_flags &= ~0x00400000;
    sc->tulip_probe.probe_timeout -= 1000 / 10;
    (sc->tulip_boardsw->bd_media_poll)(sc, TULIP_MEDIAPOLL_TIMER);
    do { } while (0);
    _splx(s);
}
void
tulip_timeout(tulip_softc_t * const sc)
{
    if (sc->tulip_flags & 0x00400000)
 return;
    sc->tulip_flags |= 0x00400000;
    timeout_add(&sc->tulip_stmo, (hz + 10 / 2) / 10);
}
int
tulip_txprobe(tulip_softc_t * const sc)
{
    struct mbuf *m;
    m = m_gethdr((0x0002), (1));
    if (m == ((void *)0))
 return (0);
    __builtin_bcopy((sc->tulip_ac.ac_enaddr), (((struct ether_header *)((m)->m_hdr.mh_data))->ether_dhost), (6));
    __builtin_bcopy((sc->tulip_ac.ac_enaddr), (((struct ether_header *)((m)->m_hdr.mh_data))->ether_shost), (6));
    ((struct ether_header *)((m)->m_hdr.mh_data))->ether_type = ((__uint16_t)(3));
    ((unsigned char *)((m)->m_hdr.mh_data))[14] = 0;
    ((unsigned char *)((m)->m_hdr.mh_data))[15] = 0;
    ((unsigned char *)((m)->m_hdr.mh_data))[16] = 0xE3;
    m->m_hdr.mh_len = m->M_dat.MH.MH_pkthdr.len = sizeof(struct ether_header) + 3;
    sc->tulip_cmdmode |= 0x00002000L;
    sc->tulip_intrmask |= 0x00000001L;
    sc->tulip_flags |= 0x00000020;
    bus_space_write_4((sc)->tulip_bustag, (sc)->tulip_bushandle, (sc)->tulip_csrs.csr_command, (sc->tulip_cmdmode));
    bus_space_write_4((sc)->tulip_bustag, (sc)->tulip_bushandle, (sc)->tulip_csrs.csr_intr, (sc->tulip_intrmask));
    if ((m = tulip_txput(sc, m, 1)) != ((void *)0))
 m_freem(m);
    sc->tulip_probe.probe_txprobes++;
    return (1);
}
void
tulip_media_set(tulip_softc_t * const sc, tulip_media_t media)
{
    const tulip_media_info_t *mi = sc->tulip_mediums[media];
    if (mi == ((void *)0))
 return;
    if (mi->mi_type == TULIP_MEDIAINFO_SIA || (sc->tulip_features & 0x00000010))
 bus_space_write_4((sc)->tulip_bustag, (sc)->tulip_bushandle, (sc)->tulip_csrs.csr_13, (0x00000000L));
    if (sc->tulip_flags & 0x00001000) {
 sc->tulip_cmdmode |= 0x00000200L;
 bus_space_write_4((sc)->tulip_bustag, (sc)->tulip_bushandle, (sc)->tulip_csrs.csr_command, (sc->tulip_cmdmode & ~(0x00000002L|0x00002000L)));
    }
    sc->tulip_flags &= ~0x00000100;
    if (mi->mi_type == TULIP_MEDIAINFO_SIA) {
 bus_space_write_4((sc)->tulip_bustag, (sc)->tulip_bushandle, (sc)->tulip_csrs.csr_14, (mi->mi_un.un_sia.sia_tx_rx));
 if (sc->tulip_features & 0x00000040) {
     bus_space_write_4((sc)->tulip_bustag, (sc)->tulip_bushandle, (sc)->tulip_csrs.csr_15, (mi->mi_un.un_sia.sia_gp_control|mi->mi_un.un_sia.sia_general|0));
     delay(50);
     bus_space_write_4((sc)->tulip_bustag, (sc)->tulip_bushandle, (sc)->tulip_csrs.csr_15, (mi->mi_un.un_sia.sia_gp_data|mi->mi_un.un_sia.sia_general|0));
 } else
     bus_space_write_4((sc)->tulip_bustag, (sc)->tulip_bushandle, (sc)->tulip_csrs.csr_15, (mi->mi_un.un_sia.sia_general|0));
 bus_space_write_4((sc)->tulip_bustag, (sc)->tulip_bushandle, (sc)->tulip_csrs.csr_13, (mi->mi_un.un_sia.sia_connectivity));
    } else if (mi->mi_type == TULIP_MEDIAINFO_GPR) {
 if (((mi->mi_un.un_gpr.gpr_cmdmode ^ bus_space_read_4((sc)->tulip_bustag, (sc)->tulip_bushandle, (sc)->tulip_csrs.csr_command)) & (0x00040000L|0x00800000L|0x01000000L|0x00400000L)) != 0) {
     sc->tulip_cmdmode &= ~(0x00040000L|0x00800000L|0x01000000L|0x00400000L);
     sc->tulip_cmdmode |= mi->mi_un.un_gpr.gpr_cmdmode;
     tulip_reset(sc);
 }
 bus_space_write_4((sc)->tulip_bustag, (sc)->tulip_bushandle, (sc)->tulip_csrs.csr_12, (0x00000100L|sc->tulip_gpinit));
 delay(10);
 bus_space_write_4((sc)->tulip_bustag, (sc)->tulip_bushandle, (sc)->tulip_csrs.csr_12, ((u_int8_t) mi->mi_un.un_gpr.gpr_gpdata));
    } else if (mi->mi_type == TULIP_MEDIAINFO_SYM) {
 if (((mi->mi_un.un_gpr.gpr_cmdmode ^ bus_space_read_4((sc)->tulip_bustag, (sc)->tulip_bushandle, (sc)->tulip_csrs.csr_command)) & (0x00040000L|0x00800000L|0x01000000L|0x00400000L)) != 0) {
     sc->tulip_cmdmode &= ~(0x00040000L|0x00800000L|0x01000000L|0x00400000L);
     sc->tulip_cmdmode |= mi->mi_un.un_gpr.gpr_cmdmode;
     tulip_reset(sc);
 }
 bus_space_write_4((sc)->tulip_bustag, (sc)->tulip_bushandle, (sc)->tulip_csrs.csr_15, (mi->mi_un.un_gpr.gpr_gpcontrol));
 bus_space_write_4((sc)->tulip_bustag, (sc)->tulip_bushandle, (sc)->tulip_csrs.csr_15, (mi->mi_un.un_gpr.gpr_gpdata));
    } else if (mi->mi_type == TULIP_MEDIAINFO_MII
        && sc->tulip_probe.probe_state != TULIP_PROBE_INACTIVE) {
 int idx;
 if (sc->tulip_features & 0x00000040) {
     const u_int8_t *dp;
     dp = &sc->tulip_rombuf[mi->mi_un.un_mii.mii_reset_offset];
     for (idx = 0; idx < mi->mi_un.un_mii.mii_reset_length; idx++, dp += 2) {
  delay(10);
  bus_space_write_4((sc)->tulip_bustag, (sc)->tulip_bushandle, (sc)->tulip_csrs.csr_15, ((dp[0] + 256 * dp[1]) << 16));
     }
     sc->tulip_phyaddr = mi->mi_un.un_mii.mii_phyaddr;
     dp = &sc->tulip_rombuf[mi->mi_un.un_mii.mii_gpr_offset];
     for (idx = 0; idx < mi->mi_un.un_mii.mii_gpr_length; idx++, dp += 2) {
  delay(10);
  bus_space_write_4((sc)->tulip_bustag, (sc)->tulip_bushandle, (sc)->tulip_csrs.csr_15, ((dp[0] + 256 * dp[1]) << 16));
     }
 } else {
     for (idx = 0; idx < mi->mi_un.un_mii.mii_reset_length; idx++) {
  delay(10);
  bus_space_write_4((sc)->tulip_bustag, (sc)->tulip_bushandle, (sc)->tulip_csrs.csr_12, (sc->tulip_rombuf[mi->mi_un.un_mii.mii_reset_offset + idx]));
     }
     sc->tulip_phyaddr = mi->mi_un.un_mii.mii_phyaddr;
     for (idx = 0; idx < mi->mi_un.un_mii.mii_gpr_length; idx++) {
  delay(10);
  bus_space_write_4((sc)->tulip_bustag, (sc)->tulip_bushandle, (sc)->tulip_csrs.csr_12, (sc->tulip_rombuf[mi->mi_un.un_mii.mii_gpr_offset + idx]));
     }
 }
 if (sc->tulip_features & 0x00000010) {
     bus_space_write_4((sc)->tulip_bustag, (sc)->tulip_bushandle, (sc)->tulip_csrs.csr_15, (1));
     bus_space_write_4((sc)->tulip_bustag, (sc)->tulip_bushandle, (sc)->tulip_csrs.csr_14, (0));
     bus_space_write_4((sc)->tulip_bustag, (sc)->tulip_bushandle, (sc)->tulip_csrs.csr_12, (0));
 }
 if (sc->tulip_flags & 0x01000000)
     tulip_mii_autonegotiate(sc, sc->tulip_phyaddr);
 else if ((sc->tulip_flags & 0x02000000) == 0) {
     u_int32_t data = tulip_mii_readreg(sc, sc->tulip_phyaddr, 0);
     data &= ~(0x2000|0x0100|0x1000);
     sc->tulip_flags &= ~0x02000000;
     if (((1L << ((int)(media))) & ((1L << ((int)TULIP_MEDIA_10BASET_FD)) |(1L << ((int)TULIP_MEDIA_100BASETX_FD)) |(1L << ((int)TULIP_MEDIA_100BASEFX_FD)))))
  data |= 0x0100;
     if (((media) >= TULIP_MEDIA_100BASETX))
  data |= 0x2000;
     tulip_mii_writereg(sc, sc->tulip_phyaddr, 0, data);
 }
    }
}
void
tulip_linkup(tulip_softc_t * const sc, tulip_media_t media)
{
    if ((sc->tulip_flags & 0x00040000) == 0)
 sc->tulip_flags |= 0x00020000;
    sc->tulip_flags |= 0x00040000;
    ifq_clr_oactive(&sc->tulip_ac.ac_if.if_snd);
    if (sc->tulip_media != media) {
 sc->tulip_media = media;
 sc->tulip_flags |= 0x00000010;
 if (((1L << ((int)(sc->tulip_media))) & ((1L << ((int)TULIP_MEDIA_10BASET_FD)) |(1L << ((int)TULIP_MEDIA_100BASETX_FD)) |(1L << ((int)TULIP_MEDIA_100BASEFX_FD)))))
     sc->tulip_flags |= 0x00001000;
 else if (sc->tulip_chipid != TULIP_21041 || (sc->tulip_flags & 0x02000000) == 0)
     sc->tulip_flags &= ~0x00001000;
    }
    sc->tulip_probe.probe_timeout = 3000;
    sc->tulip_probe.probe_state = TULIP_PROBE_INACTIVE;
    sc->tulip_flags &= ~(0x00000020|0x01000000);
    if (sc->tulip_flags & 0x00000200)
 tulip_media_set(sc, sc->tulip_media);
    else if (sc->tulip_probe.probe_media != sc->tulip_media) {
 tulip_reset(sc);
    }
    tulip_init(sc);
}
void
tulip_media_print(tulip_softc_t * const sc)
{
    if ((sc->tulip_flags & 0x00040000) == 0)
 return;
    if (sc->tulip_flags & 0x00000010) {
 sc->tulip_flags &= ~(0x00000010|0x00020000);
    } else if (sc->tulip_flags & 0x00020000) {
 sc->tulip_flags &= ~0x00020000;
    }
}
tulip_link_status_t
tulip_media_link_monitor(tulip_softc_t * const sc)
{
    const tulip_media_info_t * const mi = sc->tulip_mediums[sc->tulip_media];
    tulip_link_status_t linkup = TULIP_LINK_DOWN;
    if (mi == ((void *)0)) {
 return (TULIP_LINK_UNKNOWN);
    }
    if ((sc->tulip_flags & (0x00000100|0x00040000)) == (0x00000100|0x00040000)) {
 sc->tulip_flags &= ~0x00000100;
 sc->tulip_probe.probe_timeout = 3000;
 return (TULIP_LINK_UP);
    }
    sc->tulip_flags &= ~0x00000100;
    if (mi->mi_type == TULIP_MEDIAINFO_MII) {
 u_int32_t status;
 status = tulip_mii_readreg(sc, sc->tulip_phyaddr, 1)
  | tulip_mii_readreg(sc, sc->tulip_phyaddr, 1);
 if (status & 0x0020) {
     u_int32_t abilities = tulip_mii_readreg(sc, sc->tulip_phyaddr, 5);
     abilities = (abilities << 6) & status;
     if (abilities != sc->tulip_abilities) {
  if (tulip_mii_map_abilities(sc, abilities)) {
      tulip_linkup(sc, sc->tulip_probe.probe_media);
      return (TULIP_LINK_UP);
  }
  sc->tulip_probe.probe_state = TULIP_PROBE_INACTIVE;
  if (sc->tulip_flags & 0x02000000)
      return (TULIP_LINK_DOWN);
     }
 }
 if ((status & (0x0004|0x0010)) == 0x0004)
     linkup = TULIP_LINK_UP;
    } else if (mi->mi_type == TULIP_MEDIAINFO_GPR) {
 if (mi->mi_un.un_gpr.gpr_actmask == 0)
     return (TULIP_LINK_UNKNOWN);
 if ((bus_space_read_4((sc)->tulip_bustag, (sc)->tulip_bushandle, (sc)->tulip_csrs.csr_12) & mi->mi_un.un_gpr.gpr_actmask) == mi->mi_un.un_gpr.gpr_actdata)
     linkup = TULIP_LINK_UP;
    } else if (mi->mi_type == TULIP_MEDIAINFO_SIA) {
 if (!(((1L << ((int)(sc->tulip_media))) & ((1L << ((int)TULIP_MEDIA_BNC )) |(1L << ((int)TULIP_MEDIA_AUI )) |(1L << ((int)TULIP_MEDIA_AUIBNC )) |(1L << ((int)TULIP_MEDIA_EXTSIA )))) == 0))
     return (TULIP_LINK_UNKNOWN);
 if ((bus_space_read_4((sc)->tulip_bustag, (sc)->tulip_bushandle, (sc)->tulip_csrs.csr_12) & 0x00000004L) == 0)
     linkup = TULIP_LINK_UP;
    } else if (mi->mi_type == TULIP_MEDIAINFO_SYM)
 return (TULIP_LINK_UNKNOWN);
    if (sc->tulip_flags & 0x00040000) {
 if (linkup == TULIP_LINK_UP)
     sc->tulip_probe.probe_timeout = 3000;
 if (sc->tulip_probe.probe_timeout > 0)
     return (TULIP_LINK_UP);
 sc->tulip_flags &= ~0x00040000;
    }
    return (TULIP_LINK_DOWN);
}
void
tulip_media_poll(tulip_softc_t * const sc, tulip_mediapoll_event_t event)
{
    if (sc->tulip_probe.probe_state == TULIP_PROBE_INACTIVE
     && event == TULIP_MEDIAPOLL_TIMER) {
 switch (tulip_media_link_monitor(sc)) {
     case TULIP_LINK_DOWN: {
  event = TULIP_MEDIAPOLL_LINKFAIL;
  break;
     }
     case TULIP_LINK_UP: {
  tulip_timeout(sc);
  return;
     }
     case TULIP_LINK_UNKNOWN: {
  return;
     }
 }
    }
    if (event == TULIP_MEDIAPOLL_LINKFAIL) {
 if (sc->tulip_probe.probe_state == TULIP_PROBE_INACTIVE) {
     if (((((sc)->tulip_ifmedia.ifm_media) & 0x00000000000000ffULL) == 0ULL)) {
  sc->tulip_media = TULIP_MEDIA_UNKNOWN;
  if (sc->tulip_ac.ac_if.if_flags & 0x1)
      tulip_reset(sc);
     }
     return;
 }
    }
    if (event == TULIP_MEDIAPOLL_START) {
 ifq_set_oactive(&sc->tulip_ac.ac_if.if_snd);
 if (sc->tulip_probe.probe_state != TULIP_PROBE_INACTIVE)
     return;
 sc->tulip_probe.probe_mediamask = 0;
 sc->tulip_probe.probe_passes = 0;
 sc->tulip_cmdmode &= ~(0x00000002L|0x00000200L);
 sc->tulip_flags |= 0x01000000|0x08000000;
 sc->tulip_flags &= ~(0x02000000|0x00000010|0x00020000);
 sc->tulip_probe.probe_media = tulip_srom_conninfo[sc->tulip_connidx].sc_media;
 if (sc->tulip_probe.probe_media != TULIP_MEDIA_UNKNOWN) {
     tulip_linkup(sc, sc->tulip_probe.probe_media);
     tulip_timeout(sc);
     return;
 }
 if (sc->tulip_features & 0x00000001) {
     sc->tulip_probe.probe_state = TULIP_PROBE_GPRTEST;
     sc->tulip_probe.probe_timeout = 2000;
 } else {
     sc->tulip_probe.probe_media = TULIP_MEDIA_MAX;
     sc->tulip_probe.probe_timeout = 0;
     sc->tulip_probe.probe_state = TULIP_PROBE_MEDIATEST;
 }
    }
    if (event == TULIP_MEDIAPOLL_TXPROBE_FAILED
     && sc->tulip_probe.probe_state != TULIP_PROBE_MEDIATEST) {
 sc->tulip_flags &= ~0x00000020;
 return;
    }
    if (event == TULIP_MEDIAPOLL_TXPROBE_OK || event == TULIP_MEDIAPOLL_LINKPASS) {
 if (event == TULIP_MEDIAPOLL_LINKPASS) {
     sc->tulip_probe.probe_media = TULIP_MEDIA_10BASET;
 }
 tulip_linkup(sc, sc->tulip_probe.probe_media);
 tulip_timeout(sc);
 return;
    }
    if (sc->tulip_probe.probe_state == TULIP_PROBE_GPRTEST) {
 sc->tulip_probe.probe_state = TULIP_PROBE_MEDIATEST;
 sc->tulip_probe.probe_media = TULIP_MEDIA_MAX;
 sc->tulip_probe.probe_timeout = 0;
 tulip_timeout(sc);
 return;
    }
    if (sc->tulip_probe.probe_state != TULIP_PROBE_MEDIATEST
    && (sc->tulip_features & 0x00000008)) {
 tulip_media_t old_media = sc->tulip_probe.probe_media;
 tulip_mii_autonegotiate(sc, sc->tulip_phyaddr);
 switch (sc->tulip_probe.probe_state) {
     case TULIP_PROBE_FAILED:
     case TULIP_PROBE_MEDIATEST: {
  sc->tulip_probe.probe_mediamask |= sc->tulip_mediums[sc->tulip_probe.probe_media]->mi_un.un_mii.mii_mediamask;
  sc->tulip_probe.probe_timeout = 0;
  break;
     }
     case TULIP_PROBE_PHYAUTONEG: {
  return;
     }
     case TULIP_PROBE_INACTIVE: {
  sc->tulip_probe.probe_timeout = 0;
  if (sc->tulip_probe.probe_mediamask & (1L << ((int)(sc->tulip_probe.probe_media)))) {
      sc->tulip_probe.probe_media = old_media;
      break;
  }
  tulip_linkup(sc, sc->tulip_probe.probe_media);
  tulip_timeout(sc);
  return;
     }
     default: {
  printf("tulip_media_poll: botch at line %d\n", 724);
  break;
     }
 }
    }
    if (event == TULIP_MEDIAPOLL_TXPROBE_FAILED) {
 sc->tulip_flags &= ~0x00000020;
 return;
    }
    if ( sc->tulip_probe.probe_timeout <= 0) {
 do {
     sc->tulip_probe.probe_media -= 1;
     if (sc->tulip_probe.probe_media == TULIP_MEDIA_UNKNOWN) {
  if (++sc->tulip_probe.probe_passes == 3) {
      if ((sc->tulip_ac.ac_if.if_flags & 0x1) == 0) {
   sc->tulip_ac.ac_if.if_flags &= ~0x40;
   sc->tulip_probe.probe_state = TULIP_PROBE_INACTIVE;
   return;
      }
  }
  sc->tulip_flags ^= 0x01000000;
  sc->tulip_probe.probe_mediamask = 0;
  sc->tulip_probe.probe_media = TULIP_MEDIA_MAX - 1;
     }
 } while (sc->tulip_mediums[sc->tulip_probe.probe_media] == ((void *)0)
   || (sc->tulip_probe.probe_mediamask & (1L << ((int)(sc->tulip_probe.probe_media))))
   || ((1L << ((int)(sc->tulip_probe.probe_media))) & ((1L << ((int)TULIP_MEDIA_10BASET_FD)) |(1L << ((int)TULIP_MEDIA_100BASETX_FD)) |(1L << ((int)TULIP_MEDIA_100BASEFX_FD)))));
 sc->tulip_probe.probe_timeout = (((1L << ((int)(sc->tulip_probe.probe_media))) & ((1L << ((int)TULIP_MEDIA_BNC )) |(1L << ((int)TULIP_MEDIA_AUI )) |(1L << ((int)TULIP_MEDIA_AUIBNC )) |(1L << ((int)TULIP_MEDIA_EXTSIA )))) == 0) ? 2500 : 1000;
 sc->tulip_probe.probe_state = TULIP_PROBE_MEDIATEST;
 sc->tulip_probe.probe_txprobes = 0;
 tulip_reset(sc);
 tulip_media_set(sc, sc->tulip_probe.probe_media);
 sc->tulip_flags &= ~0x00000020;
    }
    tulip_timeout(sc);
    switch (sc->tulip_mediums[sc->tulip_probe.probe_media]->mi_type) {
 case TULIP_MEDIAINFO_MII: {
     if (sc->tulip_probe.probe_media != tulip_mii_phy_readspecific(sc))
  return;
     break;
 }
 case TULIP_MEDIAINFO_SIA: {
     if ((((1L << ((int)(sc->tulip_probe.probe_media))) & ((1L << ((int)TULIP_MEDIA_BNC )) |(1L << ((int)TULIP_MEDIA_AUI )) |(1L << ((int)TULIP_MEDIA_AUIBNC )) |(1L << ((int)TULIP_MEDIA_EXTSIA )))) == 0)) {
  if (bus_space_read_4((sc)->tulip_bustag, (sc)->tulip_bushandle, (sc)->tulip_csrs.csr_12) & 0x00000004L)
      return;
  tulip_linkup(sc, sc->tulip_probe.probe_media);
  return;
     }
     break;
 }
 case TULIP_MEDIAINFO_RESET:
 case TULIP_MEDIAINFO_SYM:
 case TULIP_MEDIAINFO_NONE:
 case TULIP_MEDIAINFO_GPR: {
     break;
 }
    }
    tulip_txprobe(sc);
}
void
tulip_media_select(tulip_softc_t * const sc)
{
    if (sc->tulip_features & 0x00000001) {
 bus_space_write_4((sc)->tulip_bustag, (sc)->tulip_bushandle, (sc)->tulip_csrs.csr_12, (0x00000100L|sc->tulip_gpinit));
 delay(10);
 bus_space_write_4((sc)->tulip_bustag, (sc)->tulip_bushandle, (sc)->tulip_csrs.csr_12, (sc->tulip_gpdata));
    }
    if (sc->tulip_features & 0x00004000)
 return;
    if (sc->tulip_media == TULIP_MEDIA_UNKNOWN) {
 bus_space_write_4((sc)->tulip_bustag, (sc)->tulip_bushandle, (sc)->tulip_csrs.csr_intr, (sc->tulip_intrmask));
 (*sc->tulip_boardsw->bd_media_poll)(sc, TULIP_MEDIAPOLL_START);
    } else
 tulip_media_set(sc, sc->tulip_media);
}
void
tulip_21040_mediainfo_init(tulip_softc_t * const sc, tulip_media_t media)
{
    sc->tulip_cmdmode |= 0x00020000L|0x0000C000L
 |0x00000020L;
    sc->tulip_ac.ac_if.if_data.ifi_baudrate = 10000000;
    if (media == TULIP_MEDIA_10BASET || media == TULIP_MEDIA_UNKNOWN) {
 do { (&sc->tulip_mediainfo[0])->mi_type = TULIP_MEDIAINFO_SIA; sc->tulip_mediums[TULIP_MEDIA_10BASET] = (&sc->tulip_mediainfo[0]); (&sc->tulip_mediainfo[0])->mi_un.un_sia.sia_connectivity = 0x0000EF01L; (&sc->tulip_mediainfo[0])->mi_un.un_sia.sia_tx_rx = 0x0000FFFFL; (&sc->tulip_mediainfo[0])->mi_un.un_sia.sia_general = 0x00000000L; } while (0);
 do { (&sc->tulip_mediainfo[1])->mi_type = TULIP_MEDIAINFO_SIA; sc->tulip_mediums[TULIP_MEDIA_10BASET_FD] = (&sc->tulip_mediainfo[1]); (&sc->tulip_mediainfo[1])->mi_un.un_sia.sia_connectivity = 0x0000EF01L; (&sc->tulip_mediainfo[1])->mi_un.un_sia.sia_tx_rx = 0x0000FFFDL; (&sc->tulip_mediainfo[1])->mi_un.un_sia.sia_general = 0x00000000L; } while (0);
 sc->tulip_intrmask |= 0x00000010L|0x00001000L;
    }
    if (media == TULIP_MEDIA_AUIBNC || media == TULIP_MEDIA_UNKNOWN)
 do { (&sc->tulip_mediainfo[2])->mi_type = TULIP_MEDIAINFO_SIA; sc->tulip_mediums[TULIP_MEDIA_AUIBNC] = (&sc->tulip_mediainfo[2]); (&sc->tulip_mediainfo[2])->mi_un.un_sia.sia_connectivity = 0x0000EF09L; (&sc->tulip_mediainfo[2])->mi_un.un_sia.sia_tx_rx = 0x00000705L; (&sc->tulip_mediainfo[2])->mi_un.un_sia.sia_general = 0x00000006L; } while (0);
    if (media == TULIP_MEDIA_UNKNOWN)
 do { (&sc->tulip_mediainfo[3])->mi_type = TULIP_MEDIAINFO_SIA; sc->tulip_mediums[TULIP_MEDIA_EXTSIA] = (&sc->tulip_mediainfo[3]); (&sc->tulip_mediainfo[3])->mi_un.un_sia.sia_connectivity = 0x00003041L; (&sc->tulip_mediainfo[3])->mi_un.un_sia.sia_tx_rx = 0x00000000L; (&sc->tulip_mediainfo[3])->mi_un.un_sia.sia_general = 0x00000006L; } while (0);
}
void
tulip_21040_media_probe(tulip_softc_t * const sc)
{
    tulip_21040_mediainfo_init(sc, TULIP_MEDIA_UNKNOWN);
}
void
tulip_21040_10baset_only_media_probe(tulip_softc_t * const sc)
{
    tulip_21040_mediainfo_init(sc, TULIP_MEDIA_10BASET);
    tulip_media_set(sc, TULIP_MEDIA_10BASET);
    sc->tulip_media = TULIP_MEDIA_10BASET;
}
void
tulip_21040_10baset_only_media_select(tulip_softc_t * const sc)
{
    sc->tulip_flags |= 0x00040000;
    if (sc->tulip_media == TULIP_MEDIA_10BASET_FD) {
 sc->tulip_cmdmode |= 0x00000200L;
 sc->tulip_flags &= ~0x00000800;
    } else {
 sc->tulip_cmdmode &= ~0x00000200L;
 sc->tulip_flags |= 0x00000800;
    }
    tulip_media_set(sc, sc->tulip_media);
}
void
tulip_21040_auibnc_only_media_probe(tulip_softc_t * const sc)
{
    tulip_21040_mediainfo_init(sc, TULIP_MEDIA_AUIBNC);
    sc->tulip_flags |= 0x00000800|0x00040000;
    tulip_media_set(sc, TULIP_MEDIA_AUIBNC);
    sc->tulip_media = TULIP_MEDIA_AUIBNC;
}
void
tulip_21040_auibnc_only_media_select(tulip_softc_t * const sc)
{
    tulip_media_set(sc, TULIP_MEDIA_AUIBNC);
    sc->tulip_cmdmode &= ~0x00000200L;
}
static const tulip_boardsw_t tulip_21040_boardsw = {
    TULIP_21040_GENERIC,
    tulip_21040_media_probe,
    tulip_media_select,
    tulip_media_poll,
};
static const tulip_boardsw_t tulip_21040_10baset_only_boardsw = {
    TULIP_21040_GENERIC,
    tulip_21040_10baset_only_media_probe,
    tulip_21040_10baset_only_media_select,
    ((void *)0),
};
static const tulip_boardsw_t tulip_21040_auibnc_only_boardsw = {
    TULIP_21040_GENERIC,
    tulip_21040_auibnc_only_media_probe,
    tulip_21040_auibnc_only_media_select,
    ((void *)0),
};
void
tulip_21041_mediainfo_init(tulip_softc_t * const sc)
{
    tulip_media_info_t * const mi = sc->tulip_mediainfo;
    do { (&mi[0])->mi_type = TULIP_MEDIAINFO_SIA; sc->tulip_mediums[TULIP_MEDIA_10BASET] = (&mi[0]); (&mi[0])->mi_un.un_sia.sia_connectivity = 0x0000EF01L; (&mi[0])->mi_un.un_sia.sia_tx_rx = 0x0000FF3FL; (&mi[0])->mi_un.un_sia.sia_general = 0x00000000L; } while (0);
    do { (&mi[1])->mi_type = TULIP_MEDIAINFO_SIA; sc->tulip_mediums[TULIP_MEDIA_10BASET_FD] = (&mi[1]); (&mi[1])->mi_un.un_sia.sia_connectivity = 0x0000EF01L; (&mi[1])->mi_un.un_sia.sia_tx_rx = 0x0000FF3DL; (&mi[1])->mi_un.un_sia.sia_general = 0x00000000L; } while (0);
    do { (&mi[2])->mi_type = TULIP_MEDIAINFO_SIA; sc->tulip_mediums[TULIP_MEDIA_AUI] = (&mi[2]); (&mi[2])->mi_un.un_sia.sia_connectivity = 0x0000EF09L; (&mi[2])->mi_un.un_sia.sia_tx_rx = 0x0000F73DL; (&mi[2])->mi_un.un_sia.sia_general = 0x0000000EL; } while (0);
    do { (&mi[3])->mi_type = TULIP_MEDIAINFO_SIA; sc->tulip_mediums[TULIP_MEDIA_BNC] = (&mi[3]); (&mi[3])->mi_un.un_sia.sia_connectivity = 0x0000EF09L; (&mi[3])->mi_un.un_sia.sia_tx_rx = 0x0000F73DL; (&mi[3])->mi_un.un_sia.sia_general = 0x00000006L; } while (0);
}
void
tulip_21041_media_probe(tulip_softc_t * const sc)
{
    sc->tulip_ac.ac_if.if_data.ifi_baudrate = 10000000;
    sc->tulip_cmdmode |= 0x00020000L|0x00040000L
 |0x0000C000L|0x00000020L;
    sc->tulip_intrmask |= 0x00000010L|0x00001000L;
    tulip_21041_mediainfo_init(sc);
}
void
tulip_21041_media_poll(tulip_softc_t * const sc, const tulip_mediapoll_event_t event)
{
    u_int32_t sia_status;
    if (event == TULIP_MEDIAPOLL_LINKFAIL) {
 if (sc->tulip_probe.probe_state != TULIP_PROBE_INACTIVE
  || !((((sc)->tulip_ifmedia.ifm_media) & 0x00000000000000ffULL) == 0ULL))
     return;
 sc->tulip_media = TULIP_MEDIA_UNKNOWN;
 tulip_reset(sc);
 return;
    }
    if (event == TULIP_MEDIAPOLL_START) {
 ifq_set_oactive(&sc->tulip_ac.ac_if.if_snd);
 sc->tulip_cmdmode &= ~(0x00000200L|0x00000002L);
 bus_space_write_4((sc)->tulip_bustag, (sc)->tulip_bushandle, (sc)->tulip_csrs.csr_command, (sc->tulip_cmdmode));
 sc->tulip_probe.probe_state = TULIP_PROBE_MEDIATEST;
 sc->tulip_probe.probe_media = TULIP_MEDIA_10BASET;
 sc->tulip_probe.probe_timeout = 2500;
 tulip_media_set(sc, TULIP_MEDIA_10BASET);
 tulip_timeout(sc);
 return;
    }
    if (sc->tulip_probe.probe_state == TULIP_PROBE_INACTIVE)
 return;
    if (event == TULIP_MEDIAPOLL_TXPROBE_OK) {
 tulip_linkup(sc, sc->tulip_probe.probe_media);
 return;
    }
    sia_status = bus_space_read_4((sc)->tulip_bustag, (sc)->tulip_bushandle, (sc)->tulip_csrs.csr_12);
    bus_space_write_4((sc)->tulip_bustag, (sc)->tulip_bushandle, (sc)->tulip_csrs.csr_12, (sia_status));
    if ((sia_status & 0x00000004L) == 0) {
 if (sc->tulip_revinfo >= 0x20) {
     if (sia_status & (0x1000 << (16 - 6)))
  sc->tulip_probe.probe_media = TULIP_MEDIA_10BASET_FD;
 }
 tulip_linkup(sc, sc->tulip_probe.probe_media);
 return;
    }
    if (sc->tulip_probe.probe_media == TULIP_MEDIA_10BASET) {
 if (event != TULIP_MEDIAPOLL_TIMER)
     return;
 if (sc->tulip_probe.probe_timeout > 0
  && (sia_status & 0x00000200L) == 0) {
     tulip_timeout(sc);
     return;
 }
 sc->tulip_probe.probe_timeout = 300;
 sc->tulip_flags |= 0x00000080;
 if (sia_status & 0x00000200L)
     sc->tulip_probe.probe_media = TULIP_MEDIA_BNC;
 else
     sc->tulip_probe.probe_media = TULIP_MEDIA_AUI;
 tulip_media_set(sc, sc->tulip_probe.probe_media);
 tulip_timeout(sc);
 return;
    }
    if (event == TULIP_MEDIAPOLL_TXPROBE_FAILED)
 sc->tulip_flags &= ~0x00000020;
    if (event == TULIP_MEDIAPOLL_TIMER) {
 if (sc->tulip_flags & 0x00000100) {
     tulip_linkup(sc, sc->tulip_probe.probe_media);
     return;
 }
 if ((sc->tulip_flags & 0x00000020) == 0
  && ((sc->tulip_flags & 0x00000080) == 0
      || (sia_status & 0x00000100L))) {
     sc->tulip_probe.probe_timeout = 300;
     tulip_txprobe(sc);
     tulip_timeout(sc);
     return;
 }
 if (sc->tulip_probe.probe_timeout <= 0) {
     if (sc->tulip_flags & 0x00000080) {
  sc->tulip_flags &= ~0x00000080;
  sc->tulip_probe.probe_timeout = 300;
     } else {
  if ((sc->tulip_ac.ac_if.if_flags & 0x1) == 0) {
      sc->tulip_ac.ac_if.if_flags &= ~0x40;
      sc->tulip_probe.probe_state = TULIP_PROBE_INACTIVE;
      return;
  }
     }
 }
    }
    sc->tulip_probe.probe_timeout = 300;
    if (sc->tulip_probe.probe_media == TULIP_MEDIA_AUI)
 sc->tulip_probe.probe_media = TULIP_MEDIA_BNC;
    else
 sc->tulip_probe.probe_media = TULIP_MEDIA_AUI;
    tulip_media_set(sc, sc->tulip_probe.probe_media);
    sc->tulip_flags &= ~0x00000020;
    tulip_timeout(sc);
}
static const tulip_boardsw_t tulip_21041_boardsw = {
    TULIP_21041_GENERIC,
    tulip_21041_media_probe,
    tulip_media_select,
    tulip_21041_media_poll
};
static const tulip_phy_attr_t tulip_mii_phy_attrlist[] = {
    { 0x20005c00, 0,
      {
 { 0x19, 0x0040, 0x0040 },
 { 0x19, 0x0040, 0x0000 },
      },
    },
    { 0x0281F400, 0,
      {
 { 0x12, 0x0010, 0x0000 },
 { 0 },
 { 0x12, 0x0010, 0x0010 },
 { 0x12, 0x0008, 0x0008 },
      },
    },
    { 0x0281F400, 3,
      {
 { 0x12, 0x0080, 0x0000 },
 { 0x12, 0x0080, 0x0080 },
 { 0 },
 { 0x12, 0x0040, 0x0040 },
      },
    },
    { 0x0281F400, 0,
      {
 { 0x11, 0x8000, 0x0000 },
 { 0x11, 0x8000, 0x8000 },
 { 0 },
 { 0x11, 0x4000, 0x4000 },
      },
    },
    { 0x78100000, 0,
      {
 { 0x14, 0x0800, 0x0000 },
 { 0x14, 0x0800, 0x0800 },
 { 0 },
 { 0x14, 0x1000, 0x1000 },
      },
    },
    { 0 }
};
tulip_media_t
tulip_mii_phy_readspecific(tulip_softc_t * const sc)
{
    const tulip_phy_attr_t *attr;
    u_int16_t data;
    u_int32_t id;
    unsigned idx = 0;
    static const tulip_media_t table[] = {
 TULIP_MEDIA_UNKNOWN,
 TULIP_MEDIA_10BASET,
 TULIP_MEDIA_100BASETX,
 TULIP_MEDIA_100BASET4,
 TULIP_MEDIA_UNKNOWN,
 TULIP_MEDIA_10BASET_FD,
 TULIP_MEDIA_100BASETX_FD,
 TULIP_MEDIA_UNKNOWN
    };
    data = tulip_mii_readreg(sc, sc->tulip_phyaddr, 1)
     | tulip_mii_readreg(sc, sc->tulip_phyaddr, 1);
    if ((data & (0x0004|0x0001)) != (0x0004|0x0001))
 return (TULIP_MEDIA_UNKNOWN);
    id = (tulip_mii_readreg(sc, sc->tulip_phyaddr, 2) << 16) |
 tulip_mii_readreg(sc, sc->tulip_phyaddr, 3);
    for (attr = tulip_mii_phy_attrlist;; attr++) {
 if (attr->attr_id == 0)
     return (TULIP_MEDIA_UNKNOWN);
 if ((id & ~0x0F) == attr->attr_id)
     break;
    }
    if (attr->attr_modes[PHY_MODE_100TX].pm_regno) {
 const tulip_phy_modedata_t * const pm = &attr->attr_modes[PHY_MODE_100TX];
 data = tulip_mii_readreg(sc, sc->tulip_phyaddr, pm->pm_regno);
 if ((data & pm->pm_mask) == pm->pm_value)
     idx = 2;
    }
    if (idx == 0 && attr->attr_modes[PHY_MODE_100T4].pm_regno) {
 const tulip_phy_modedata_t * const pm = &attr->attr_modes[PHY_MODE_100T4];
 data = tulip_mii_readreg(sc, sc->tulip_phyaddr, pm->pm_regno);
 if ((data & pm->pm_mask) == pm->pm_value)
     idx = 3;
    }
    if (idx == 0 && attr->attr_modes[PHY_MODE_10T].pm_regno) {
 const tulip_phy_modedata_t * const pm = &attr->attr_modes[PHY_MODE_10T];
 data = tulip_mii_readreg(sc, sc->tulip_phyaddr, pm->pm_regno);
 if ((data & pm->pm_mask) == pm->pm_value)
     idx = 1;
    }
    if (idx != 0 && attr->attr_modes[PHY_MODE_FULLDUPLEX].pm_regno) {
 const tulip_phy_modedata_t * const pm = &attr->attr_modes[PHY_MODE_FULLDUPLEX];
 data = tulip_mii_readreg(sc, sc->tulip_phyaddr, pm->pm_regno);
 idx += ((data & pm->pm_mask) == pm->pm_value ? 4 : 0);
    }
    return (table[idx]);
}
unsigned
tulip_mii_get_phyaddr(tulip_softc_t * const sc, unsigned offset)
{
    unsigned phyaddr;
    for (phyaddr = 1; phyaddr < 32; phyaddr++) {
 unsigned status = tulip_mii_readreg(sc, phyaddr, 1);
 if (status == 0 || status == 0xFFFF || status < 0x0800)
     continue;
 if (offset == 0)
     return (phyaddr);
 offset--;
    }
    if (offset == 0) {
 unsigned status = tulip_mii_readreg(sc, 0, 1);
 if (status == 0 || status == 0xFFFF || status < 0x0800)
     return (32);
 return (0);
    }
    return (32);
}
int
tulip_mii_map_abilities(tulip_softc_t * const sc, unsigned abilities)
{
    sc->tulip_abilities = abilities;
    if (abilities & 0x4000)
 sc->tulip_probe.probe_media = TULIP_MEDIA_100BASETX_FD;
    else if (abilities & 0x8000)
 sc->tulip_probe.probe_media = TULIP_MEDIA_100BASET4;
    else if (abilities & 0x2000)
 sc->tulip_probe.probe_media = TULIP_MEDIA_100BASETX;
    else if (abilities & 0x1000)
 sc->tulip_probe.probe_media = TULIP_MEDIA_10BASET_FD;
    else if (abilities & 0x0800)
 sc->tulip_probe.probe_media = TULIP_MEDIA_10BASET;
    else {
 sc->tulip_probe.probe_state = TULIP_PROBE_MEDIATEST;
 return (0);
    }
    sc->tulip_probe.probe_state = TULIP_PROBE_INACTIVE;
    return (1);
}
void
tulip_mii_autonegotiate(tulip_softc_t * const sc, const unsigned phyaddr)
{
    switch (sc->tulip_probe.probe_state) {
        case TULIP_PROBE_MEDIATEST:
        case TULIP_PROBE_INACTIVE: {
     sc->tulip_flags |= 0x02000000;
     tulip_mii_writereg(sc, phyaddr, 0, 0x8000);
     sc->tulip_probe.probe_timeout = 3000;
     sc->tulip_intrmask |= 0x00008000L|0x00010000L;
     sc->tulip_probe.probe_state = TULIP_PROBE_PHYRESET;
 }
        case TULIP_PROBE_PHYRESET: {
     u_int32_t status;
     u_int32_t data = tulip_mii_readreg(sc, phyaddr, 0);
     if (data & 0x8000) {
  if (sc->tulip_probe.probe_timeout > 0) {
      tulip_timeout(sc);
      return;
  }
  sc->tulip_flags &= ~0x00000020;
  sc->tulip_probe.probe_state = TULIP_PROBE_FAILED;
  sc->tulip_ac.ac_if.if_flags &= ~0x40;
  return;
     }
     status = tulip_mii_readreg(sc, phyaddr, 1)
      | tulip_mii_readreg(sc, phyaddr, 1);
     if ((status & 0x0008) == 0) {
  sc->tulip_flags &= ~0x02000000;
  sc->tulip_probe.probe_state = TULIP_PROBE_MEDIATEST;
  return;
     }
     if (tulip_mii_readreg(sc, phyaddr, 4) != ((status >> 6) | 0x01))
  tulip_mii_writereg(sc, phyaddr, 4, (status >> 6) | 0x01);
     tulip_mii_writereg(sc, phyaddr, 0, data|0x0200|0x1000);
     data = tulip_mii_readreg(sc, phyaddr, 0);
     sc->tulip_probe.probe_state = TULIP_PROBE_PHYAUTONEG;
     sc->tulip_probe.probe_timeout = 3000;
 }
        case TULIP_PROBE_PHYAUTONEG: {
     u_int32_t status = tulip_mii_readreg(sc, phyaddr, 1)
       | tulip_mii_readreg(sc, phyaddr, 1);
     u_int32_t data;
     if ((status & 0x0020) == 0) {
  if (sc->tulip_probe.probe_timeout > 0) {
      tulip_timeout(sc);
      return;
  }
  sc->tulip_flags &= ~0x02000000;
  sc->tulip_probe.probe_state = TULIP_PROBE_MEDIATEST;
  return;
     }
     data = tulip_mii_readreg(sc, phyaddr, 5)
  | tulip_mii_readreg(sc, phyaddr, 5);
     data = (data << 6) & status;
     if (!tulip_mii_map_abilities(sc, data))
  sc->tulip_flags &= ~0x02000000;
     return;
 }
 default: {
     printf("tulip_media_poll: botch at line %d\n", 1347);
     break;
 }
    }
}
void
tulip_2114x_media_preset(tulip_softc_t * const sc)
{
    const tulip_media_info_t *mi = ((void *)0);
    tulip_media_t media = sc->tulip_media;
    if (sc->tulip_probe.probe_state == TULIP_PROBE_INACTIVE)
 media = sc->tulip_media;
    else
 media = sc->tulip_probe.probe_media;
    sc->tulip_cmdmode &= ~(0x00040000L|0x00080000L
  |0x00000200L|0x00400000L);
    sc->tulip_flags &= ~(0x00000800|0x00001000);
    if (media != TULIP_MEDIA_UNKNOWN && media != TULIP_MEDIA_MAX) {
     mi = sc->tulip_mediums[media];
     if (mi->mi_type == TULIP_MEDIAINFO_MII)
  sc->tulip_cmdmode |= 0x00040000L;
     else if (mi->mi_type == TULIP_MEDIAINFO_GPR
         || mi->mi_type == TULIP_MEDIAINFO_SYM) {
  sc->tulip_cmdmode &= ~(0x00040000L|0x00800000L|0x01000000L|0x00400000L);
  sc->tulip_cmdmode |= mi->mi_un.un_gpr.gpr_cmdmode;
     } else if (mi->mi_type == TULIP_MEDIAINFO_SIA)
  bus_space_write_4((sc)->tulip_bustag, (sc)->tulip_bushandle, (sc)->tulip_csrs.csr_13, (0x00000000L));
    }
    switch (media) {
 case TULIP_MEDIA_BNC:
 case TULIP_MEDIA_AUI:
 case TULIP_MEDIA_10BASET: {
     sc->tulip_cmdmode |= 0x00400000L;
     sc->tulip_ac.ac_if.if_data.ifi_baudrate = 10000000;
     sc->tulip_flags |= 0x00000800;
     break;
 }
 case TULIP_MEDIA_10BASET_FD: {
     sc->tulip_flags |= 0x00001000;
     sc->tulip_cmdmode |= 0x00400000L|0x00000200L;
     sc->tulip_ac.ac_if.if_data.ifi_baudrate = 10000000;
     break;
 }
 case TULIP_MEDIA_100BASEFX:
 case TULIP_MEDIA_100BASET4:
 case TULIP_MEDIA_100BASETX: {
     sc->tulip_cmdmode |= 0x00040000L;
     sc->tulip_ac.ac_if.if_data.ifi_baudrate = 100000000;
     if (mi->mi_type == TULIP_MEDIAINFO_SYM
      || mi->mi_type == TULIP_MEDIAINFO_MII) {
  sc->tulip_cmdmode |= 0x00080000L;
     }
     break;
 }
 case TULIP_MEDIA_100BASEFX_FD:
 case TULIP_MEDIA_100BASETX_FD: {
     sc->tulip_flags |= 0x00001000;
     sc->tulip_cmdmode |= 0x00040000L|0x00000200L;
     sc->tulip_ac.ac_if.if_data.ifi_baudrate = 100000000;
     if (mi->mi_type == TULIP_MEDIAINFO_SYM
      || mi->mi_type == TULIP_MEDIAINFO_MII) {
  sc->tulip_cmdmode |= 0x00080000L;
     }
     break;
 }
 default: {
     break;
 }
    }
    bus_space_write_4((sc)->tulip_bustag, (sc)->tulip_bushandle, (sc)->tulip_csrs.csr_command, (sc->tulip_cmdmode));
}
void
tulip_null_media_poll(tulip_softc_t * const sc, tulip_mediapoll_event_t event)
{
    printf("%s%d" ": botch(media_poll) at line %d\n",
    sc->tulip_dev.dv_cfdata->cf_driver->cd_name, sc->tulip_dev.dv_unit, 1450);
}
void
tulip_21140_mediainit(tulip_softc_t * const sc, tulip_media_info_t * const mip,
    tulip_media_t const media, unsigned gpdata, unsigned cmdmode)
{
    sc->tulip_mediums[media] = mip;
    mip->mi_type = TULIP_MEDIAINFO_GPR;
    mip->mi_un.un_gpr.gpr_cmdmode = cmdmode;
    mip->mi_un.un_gpr.gpr_gpdata = gpdata;
}
void
tulip_21140_evalboard_media_probe(tulip_softc_t * const sc)
{
    tulip_media_info_t *mip = sc->tulip_mediainfo;
    sc->tulip_gpinit = 0x0000001F;
    sc->tulip_gpdata = 0x0000000B;
    bus_space_write_4((sc)->tulip_bustag, (sc)->tulip_bushandle, (sc)->tulip_csrs.csr_12, (0x0000001F));
    bus_space_write_4((sc)->tulip_bustag, (sc)->tulip_bushandle, (sc)->tulip_csrs.csr_12, (0x0000000B));
    bus_space_write_4((sc)->tulip_bustag, (sc)->tulip_bushandle, (sc)->tulip_csrs.csr_command, (bus_space_read_4((sc)->tulip_bustag, (sc)->tulip_bushandle, (sc)->tulip_csrs.csr_command) | 0x00040000L | 0x00800000L | 0x01000000L | 0x02000000L));
    bus_space_write_4((sc)->tulip_bustag, (sc)->tulip_bushandle, (sc)->tulip_csrs.csr_command, (bus_space_read_4((sc)->tulip_bustag, (sc)->tulip_bushandle, (sc)->tulip_csrs.csr_command) & ~0x00400000L));
    delay(1000000);
    if ((bus_space_read_4((sc)->tulip_bustag, (sc)->tulip_bushandle, (sc)->tulip_csrs.csr_12) & 0x00000040) != 0)
 sc->tulip_media = TULIP_MEDIA_10BASET;
    else
 sc->tulip_media = TULIP_MEDIA_100BASETX;
    tulip_21140_mediainit(sc, mip++, TULIP_MEDIA_10BASET,
     0x0000000B,
     0x00400000L);
    tulip_21140_mediainit(sc, mip++, TULIP_MEDIA_10BASET_FD,
     0x0000000B,
     0x00400000L|0x00000200L);
    tulip_21140_mediainit(sc, mip++, TULIP_MEDIA_100BASETX,
     0x0000000B,
     0x00040000L|0x00800000L
         |0x01000000L);
    tulip_21140_mediainit(sc, mip++, TULIP_MEDIA_100BASETX_FD,
     0x0000000B,
     0x00040000L|0x00800000L
         |0x01000000L|0x00000200L);
}
static const tulip_boardsw_t tulip_21140_eb_boardsw = {
    TULIP_21140_DEC_EB,
    tulip_21140_evalboard_media_probe,
    tulip_media_select,
    tulip_null_media_poll,
    tulip_2114x_media_preset,
};
void
tulip_21140_accton_media_probe(tulip_softc_t * const sc)
{
    tulip_media_info_t *mip = sc->tulip_mediainfo;
    unsigned gpdata;
    sc->tulip_gpinit = 0x0000001F;
    sc->tulip_gpdata = 0x0000000B;
    bus_space_write_4((sc)->tulip_bustag, (sc)->tulip_bushandle, (sc)->tulip_csrs.csr_12, (0x0000001F));
    bus_space_write_4((sc)->tulip_bustag, (sc)->tulip_bushandle, (sc)->tulip_csrs.csr_12, (0x0000000B));
    bus_space_write_4((sc)->tulip_bustag, (sc)->tulip_bushandle, (sc)->tulip_csrs.csr_command, (bus_space_read_4((sc)->tulip_bustag, (sc)->tulip_bushandle, (sc)->tulip_csrs.csr_command) | 0x00040000L | 0x00800000L | 0x01000000L | 0x02000000L));
    bus_space_write_4((sc)->tulip_bustag, (sc)->tulip_bushandle, (sc)->tulip_csrs.csr_command, (bus_space_read_4((sc)->tulip_bustag, (sc)->tulip_bushandle, (sc)->tulip_csrs.csr_command) & ~0x00400000L));
    delay(1000000);
    gpdata = bus_space_read_4((sc)->tulip_bustag, (sc)->tulip_bushandle, (sc)->tulip_csrs.csr_12);
    if ((gpdata & 0x9E00000B) == 0)
 sc->tulip_media = TULIP_MEDIA_10BASET;
    else {
 if ((gpdata & 0x0000011B) == 0)
  sc->tulip_media = TULIP_MEDIA_BNC;
        else
  sc->tulip_media = TULIP_MEDIA_100BASETX;
    }
    tulip_21140_mediainit(sc, mip++, TULIP_MEDIA_BNC,
     0x0000011B,
     0x00400000L);
    tulip_21140_mediainit(sc, mip++, TULIP_MEDIA_10BASET,
     0x9E00000B,
     0x00400000L);
    tulip_21140_mediainit(sc, mip++, TULIP_MEDIA_10BASET_FD,
     0x9E00000B,
     0x00400000L|0x00000200L);
    tulip_21140_mediainit(sc, mip++, TULIP_MEDIA_100BASETX,
     0x6D00031B,
     0x00040000L|0x00800000L
         |0x01000000L);
    tulip_21140_mediainit(sc, mip++, TULIP_MEDIA_100BASETX_FD,
     0x6D00031B,
     0x00040000L|0x00800000L
         |0x01000000L|0x00000200L);
}
static const tulip_boardsw_t tulip_21140_accton_boardsw = {
    TULIP_21140_EN1207,
    tulip_21140_accton_media_probe,
    tulip_media_select,
    tulip_null_media_poll,
    tulip_2114x_media_preset,
};
void
tulip_21140_smc9332_media_probe(tulip_softc_t * const sc)
{
    tulip_media_info_t *mip = sc->tulip_mediainfo;
    int idx, cnt = 0;
    bus_space_write_4((sc)->tulip_bustag, (sc)->tulip_bushandle, (sc)->tulip_csrs.csr_command, (0x00040000L|0x02000000L));
    bus_space_write_4((sc)->tulip_bustag, (sc)->tulip_bushandle, (sc)->tulip_csrs.csr_busmode, (0x00000001L));
    delay(10);
    bus_space_write_4((sc)->tulip_bustag, (sc)->tulip_bushandle, (sc)->tulip_csrs.csr_command, (0x00040000L | 0x00800000L | 0x01000000L | 0x02000000L));
    sc->tulip_gpinit = 0x0000003F;
    sc->tulip_gpdata = 0x00000009;
    bus_space_write_4((sc)->tulip_bustag, (sc)->tulip_bushandle, (sc)->tulip_csrs.csr_12, (0x0000003F|0x00000100L));
    bus_space_write_4((sc)->tulip_bustag, (sc)->tulip_bushandle, (sc)->tulip_csrs.csr_12, (0x00000009));
    delay(200000);
    for (idx = 1000; idx > 0; idx--) {
 u_int32_t csr = bus_space_read_4((sc)->tulip_bustag, (sc)->tulip_bushandle, (sc)->tulip_csrs.csr_12);
 if ((csr & (0x00000080|0x00000040)) == (0x00000080|0x00000040)) {
     if (++cnt > 100)
  break;
 } else if ((csr & 0x00000080) == 0)
     break;
 else
     cnt = 0;
 delay(1000);
    }
    sc->tulip_media = cnt > 100 ? TULIP_MEDIA_100BASETX : TULIP_MEDIA_10BASET;
    tulip_21140_mediainit(sc, mip++, TULIP_MEDIA_100BASETX,
     0x00000009,
     0x00040000L|0x00800000L
         |0x01000000L);
    tulip_21140_mediainit(sc, mip++, TULIP_MEDIA_100BASETX_FD,
     0x00000009,
     0x00040000L|0x00800000L
         |0x01000000L|0x00000200L);
    tulip_21140_mediainit(sc, mip++, TULIP_MEDIA_10BASET,
     0x00000009,
     0x00400000L);
    tulip_21140_mediainit(sc, mip++, TULIP_MEDIA_10BASET_FD,
     0x00000009,
     0x00400000L|0x00000200L);
}
static const tulip_boardsw_t tulip_21140_smc9332_boardsw = {
    TULIP_21140_SMC_9332,
    tulip_21140_smc9332_media_probe,
    tulip_media_select,
    tulip_null_media_poll,
    tulip_2114x_media_preset,
};
void
tulip_21140_cogent_em100_media_probe(tulip_softc_t * const sc)
{
    tulip_media_info_t *mip = sc->tulip_mediainfo;
    u_int32_t cmdmode = bus_space_read_4((sc)->tulip_bustag, (sc)->tulip_bushandle, (sc)->tulip_csrs.csr_command);
    sc->tulip_gpinit = 0x0000003F;
    sc->tulip_gpdata = 0x00000009;
    bus_space_write_4((sc)->tulip_bustag, (sc)->tulip_bushandle, (sc)->tulip_csrs.csr_12, (0x0000003F));
    bus_space_write_4((sc)->tulip_bustag, (sc)->tulip_bushandle, (sc)->tulip_csrs.csr_12, (0x00000009));
    cmdmode = 0x00040000L|0x00800000L|0x02000000L;
    cmdmode &= ~(0x00400000L|0x01000000L);
    if (sc->tulip_rombuf[32] == 0x15) {
 bus_space_write_4((sc)->tulip_bustag, (sc)->tulip_bushandle, (sc)->tulip_csrs.csr_command, (cmdmode));
 sc->tulip_media = TULIP_MEDIA_100BASEFX;
 tulip_21140_mediainit(sc, mip++, TULIP_MEDIA_100BASEFX,
     0x00000009,
     0x00040000L|0x00800000L);
 tulip_21140_mediainit(sc, mip++, TULIP_MEDIA_100BASEFX_FD,
     0x00000009,
     0x00040000L|0x00800000L
         |0x00000200L);
    } else {
 bus_space_write_4((sc)->tulip_bustag, (sc)->tulip_bushandle, (sc)->tulip_csrs.csr_command, (cmdmode|0x01000000L));
 sc->tulip_media = TULIP_MEDIA_100BASETX;
 tulip_21140_mediainit(sc, mip++, TULIP_MEDIA_100BASETX,
     0x00000009,
     0x00040000L|0x00800000L
         |0x01000000L);
 tulip_21140_mediainit(sc, mip++, TULIP_MEDIA_100BASETX_FD,
     0x00000009,
     0x00040000L|0x00800000L
         |0x01000000L|0x00000200L);
    }
}
static const tulip_boardsw_t tulip_21140_cogent_em100_boardsw = {
    TULIP_21140_COGENT_EM100,
    tulip_21140_cogent_em100_media_probe,
    tulip_media_select,
    tulip_null_media_poll,
    tulip_2114x_media_preset
};
void
tulip_21140_znyx_zx34x_media_probe(tulip_softc_t * const sc)
{
    tulip_media_info_t *mip = sc->tulip_mediainfo;
    int cnt10 = 0, cnt100 = 0, idx;
    sc->tulip_gpinit = 0x0000001F;
    sc->tulip_gpdata = 0x00000009;
    bus_space_write_4((sc)->tulip_bustag, (sc)->tulip_bushandle, (sc)->tulip_csrs.csr_12, (0x0000001F));
    bus_space_write_4((sc)->tulip_bustag, (sc)->tulip_bushandle, (sc)->tulip_csrs.csr_12, (0x00000009));
    bus_space_write_4((sc)->tulip_bustag, (sc)->tulip_bushandle, (sc)->tulip_csrs.csr_command, (bus_space_read_4((sc)->tulip_bustag, (sc)->tulip_bushandle, (sc)->tulip_csrs.csr_command) | 0x00040000L | 0x00800000L | 0x01000000L | 0x02000000L));
    bus_space_write_4((sc)->tulip_bustag, (sc)->tulip_bushandle, (sc)->tulip_csrs.csr_command, (bus_space_read_4((sc)->tulip_bustag, (sc)->tulip_bushandle, (sc)->tulip_csrs.csr_command) & ~0x00400000L));
    delay(200000);
    for (idx = 1000; idx > 0; idx--) {
 u_int32_t csr = bus_space_read_4((sc)->tulip_bustag, (sc)->tulip_bushandle, (sc)->tulip_csrs.csr_12);
 if ((csr & (0x00000080|0x00000040|0x00000020)) == (0x00000080|0x00000040|0x00000020)) {
     if (++cnt100 > 100)
  break;
 } else if ((csr & 0x00000080) == 0) {
     if (++cnt10 > 100)
  break;
 } else {
     cnt10 = 0;
     cnt100 = 0;
 }
 delay(1000);
    }
    sc->tulip_media = cnt100 > 100 ? TULIP_MEDIA_100BASETX : TULIP_MEDIA_10BASET;
    tulip_21140_mediainit(sc, mip++, TULIP_MEDIA_10BASET,
     0x00000009,
     0x00400000L);
    tulip_21140_mediainit(sc, mip++, TULIP_MEDIA_10BASET_FD,
     0x00000009,
     0x00400000L|0x00000200L);
    tulip_21140_mediainit(sc, mip++, TULIP_MEDIA_100BASETX,
     0x00000009,
     0x00040000L|0x00800000L
         |0x01000000L);
    tulip_21140_mediainit(sc, mip++, TULIP_MEDIA_100BASETX_FD,
     0x00000009,
     0x00040000L|0x00800000L
         |0x01000000L|0x00000200L);
}
static const tulip_boardsw_t tulip_21140_znyx_zx34x_boardsw = {
    TULIP_21140_ZNYX_ZX34X,
    tulip_21140_znyx_zx34x_media_probe,
    tulip_media_select,
    tulip_null_media_poll,
    tulip_2114x_media_preset,
};
void
tulip_2114x_media_probe(tulip_softc_t * const sc)
{
    sc->tulip_cmdmode |= 0x02000000L
 |0x00000020L|0x00000000L;
}
static const tulip_boardsw_t tulip_2114x_isv_boardsw = {
    TULIP_21140_ISV,
    tulip_2114x_media_probe,
    tulip_media_select,
    tulip_media_poll,
    tulip_2114x_media_preset,
};
void
tulip_delay_300ns(tulip_softc_t * const sc)
{
    int idx;
    for (idx = (300 / 33) + 1; idx > 0; idx--)
 (void) bus_space_read_4((sc)->tulip_bustag, (sc)->tulip_bushandle, (sc)->tulip_csrs.csr_busmode);
}
void
tulip_srom_idle(tulip_softc_t * const sc)
{
    unsigned bit, csr;
    csr = 0x0800 ; do { bus_space_write_4((sc)->tulip_bustag, (sc)->tulip_bushandle, (sc)->tulip_csrs.csr_9, (csr)); tulip_delay_300ns(sc); } while (0);
    csr = 0x0800 | 0x4000; do { bus_space_write_4((sc)->tulip_bustag, (sc)->tulip_bushandle, (sc)->tulip_csrs.csr_9, (csr)); tulip_delay_300ns(sc); } while (0);
    csr ^= 0x0001; do { bus_space_write_4((sc)->tulip_bustag, (sc)->tulip_bushandle, (sc)->tulip_csrs.csr_9, (csr)); tulip_delay_300ns(sc); } while (0);
    csr ^= 0x0002; do { bus_space_write_4((sc)->tulip_bustag, (sc)->tulip_bushandle, (sc)->tulip_csrs.csr_9, (csr)); tulip_delay_300ns(sc); } while (0);
    for (bit = 3 + 6 + 16; bit > 0; bit--) {
        csr ^= 0x0002; do { bus_space_write_4((sc)->tulip_bustag, (sc)->tulip_bushandle, (sc)->tulip_csrs.csr_9, (csr)); tulip_delay_300ns(sc); } while (0);
        csr ^= 0x0002; do { bus_space_write_4((sc)->tulip_bustag, (sc)->tulip_bushandle, (sc)->tulip_csrs.csr_9, (csr)); tulip_delay_300ns(sc); } while (0);
    }
    csr ^= 0x0002; do { bus_space_write_4((sc)->tulip_bustag, (sc)->tulip_bushandle, (sc)->tulip_csrs.csr_9, (csr)); tulip_delay_300ns(sc); } while (0);
    csr ^= 0x0001; do { bus_space_write_4((sc)->tulip_bustag, (sc)->tulip_bushandle, (sc)->tulip_csrs.csr_9, (csr)); tulip_delay_300ns(sc); } while (0);
    csr = 0; do { bus_space_write_4((sc)->tulip_bustag, (sc)->tulip_bushandle, (sc)->tulip_csrs.csr_9, (csr)); tulip_delay_300ns(sc); } while (0);
}
void
tulip_srom_read(tulip_softc_t * const sc)
{
    unsigned idx;
    const unsigned bitwidth = 6;
    const unsigned cmdmask = (6 << bitwidth);
    const unsigned msb = 1 << (bitwidth + 3 - 1);
    unsigned lastidx = (1 << bitwidth) - 1;
    tulip_srom_idle(sc);
    for (idx = 0; idx <= lastidx; idx++) {
        unsigned lastbit, data, bits, bit, csr;
 csr = 0x0800 ; do { bus_space_write_4((sc)->tulip_bustag, (sc)->tulip_bushandle, (sc)->tulip_csrs.csr_9, (csr)); tulip_delay_300ns(sc); } while (0);
        csr = 0x0800 | 0x4000; do { bus_space_write_4((sc)->tulip_bustag, (sc)->tulip_bushandle, (sc)->tulip_csrs.csr_9, (csr)); tulip_delay_300ns(sc); } while (0);
        csr ^= 0x0001; do { bus_space_write_4((sc)->tulip_bustag, (sc)->tulip_bushandle, (sc)->tulip_csrs.csr_9, (csr)); tulip_delay_300ns(sc); } while (0);
        csr ^= 0x0002; do { bus_space_write_4((sc)->tulip_bustag, (sc)->tulip_bushandle, (sc)->tulip_csrs.csr_9, (csr)); tulip_delay_300ns(sc); } while (0);
        lastbit = 0;
        for (bits = idx|cmdmask, bit = bitwidth + 3; bit > 0; bit--, bits <<= 1) {
            const unsigned thisbit = bits & msb;
            csr ^= 0x0002; do { bus_space_write_4((sc)->tulip_bustag, (sc)->tulip_bushandle, (sc)->tulip_csrs.csr_9, (csr)); tulip_delay_300ns(sc); } while (0);
            if (thisbit != lastbit) {
                csr ^= 0x0004; do { bus_space_write_4((sc)->tulip_bustag, (sc)->tulip_bushandle, (sc)->tulip_csrs.csr_9, (csr)); tulip_delay_300ns(sc); } while (0);
            } else {
  do { bus_space_write_4((sc)->tulip_bustag, (sc)->tulip_bushandle, (sc)->tulip_csrs.csr_9, (csr)); tulip_delay_300ns(sc); } while (0);
            }
            csr ^= 0x0002; do { bus_space_write_4((sc)->tulip_bustag, (sc)->tulip_bushandle, (sc)->tulip_csrs.csr_9, (csr)); tulip_delay_300ns(sc); } while (0);
            lastbit = thisbit;
        }
        csr ^= 0x0002; do { bus_space_write_4((sc)->tulip_bustag, (sc)->tulip_bushandle, (sc)->tulip_csrs.csr_9, (csr)); tulip_delay_300ns(sc); } while (0);
        for (data = 0, bits = 0; bits < 16; bits++) {
            data <<= 1;
            csr ^= 0x0002; do { bus_space_write_4((sc)->tulip_bustag, (sc)->tulip_bushandle, (sc)->tulip_csrs.csr_9, (csr)); tulip_delay_300ns(sc); } while (0);
            data |= bus_space_read_4((sc)->tulip_bustag, (sc)->tulip_bushandle, (sc)->tulip_csrs.csr_9) & 0x0008 ? 1 : 0;
            csr ^= 0x0002; do { bus_space_write_4((sc)->tulip_bustag, (sc)->tulip_bushandle, (sc)->tulip_csrs.csr_9, (csr)); tulip_delay_300ns(sc); } while (0);
        }
 sc->tulip_rombuf[idx*2] = data & 0xFF;
 sc->tulip_rombuf[idx*2+1] = data >> 8;
 csr = 0x0800 | 0x4000; do { bus_space_write_4((sc)->tulip_bustag, (sc)->tulip_bushandle, (sc)->tulip_csrs.csr_9, (csr)); tulip_delay_300ns(sc); } while (0);
 csr = 0; do { bus_space_write_4((sc)->tulip_bustag, (sc)->tulip_bushandle, (sc)->tulip_csrs.csr_9, (csr)); tulip_delay_300ns(sc); } while (0);
    }
    tulip_srom_idle(sc);
}
void
tulip_mii_writebits(tulip_softc_t * const sc, unsigned data, unsigned bits)
{
    unsigned msb = 1 << (bits - 1);
    unsigned csr = bus_space_read_4((sc)->tulip_bustag, (sc)->tulip_bushandle, (sc)->tulip_csrs.csr_9) & (0x00040000|0x00020000|0x00010000);
    unsigned lastbit = (csr & 0x00020000) ? msb : 0;
    csr |= 0x00000000; do { bus_space_write_4((sc)->tulip_bustag, (sc)->tulip_bushandle, (sc)->tulip_csrs.csr_9, (csr)); tulip_delay_300ns(sc); } while (0);
    for (; bits > 0; bits--, data <<= 1) {
 const unsigned thisbit = data & msb;
 if (thisbit != lastbit)
     csr ^= 0x00020000; do { bus_space_write_4((sc)->tulip_bustag, (sc)->tulip_bushandle, (sc)->tulip_csrs.csr_9, (csr)); tulip_delay_300ns(sc); } while (0);
 csr ^= 0x00010000; do { bus_space_write_4((sc)->tulip_bustag, (sc)->tulip_bushandle, (sc)->tulip_csrs.csr_9, (csr)); tulip_delay_300ns(sc); } while (0);
 lastbit = thisbit;
 csr ^= 0x00010000; do { bus_space_write_4((sc)->tulip_bustag, (sc)->tulip_bushandle, (sc)->tulip_csrs.csr_9, (csr)); tulip_delay_300ns(sc); } while (0);
    }
}
void
tulip_mii_turnaround(tulip_softc_t * const sc, unsigned cmd)
{
    unsigned csr = bus_space_read_4((sc)->tulip_bustag, (sc)->tulip_bushandle, (sc)->tulip_csrs.csr_9) & (0x00040000|0x00020000|0x00010000);
    if (cmd == 0xF5) {
 csr |= 0x00020000; do { bus_space_write_4((sc)->tulip_bustag, (sc)->tulip_bushandle, (sc)->tulip_csrs.csr_9, (csr)); tulip_delay_300ns(sc); } while (0);
 csr ^= 0x00010000; do { bus_space_write_4((sc)->tulip_bustag, (sc)->tulip_bushandle, (sc)->tulip_csrs.csr_9, (csr)); tulip_delay_300ns(sc); } while (0);
 csr ^= 0x00010000; do { bus_space_write_4((sc)->tulip_bustag, (sc)->tulip_bushandle, (sc)->tulip_csrs.csr_9, (csr)); tulip_delay_300ns(sc); } while (0);
 csr ^= 0x00020000; do { bus_space_write_4((sc)->tulip_bustag, (sc)->tulip_bushandle, (sc)->tulip_csrs.csr_9, (csr)); tulip_delay_300ns(sc); } while (0);
    } else
 csr |= 0x00040000; do { bus_space_write_4((sc)->tulip_bustag, (sc)->tulip_bushandle, (sc)->tulip_csrs.csr_9, (csr)); tulip_delay_300ns(sc); } while (0);
    csr ^= 0x00010000; do { bus_space_write_4((sc)->tulip_bustag, (sc)->tulip_bushandle, (sc)->tulip_csrs.csr_9, (csr)); tulip_delay_300ns(sc); } while (0);
    csr ^= 0x00010000; do { bus_space_write_4((sc)->tulip_bustag, (sc)->tulip_bushandle, (sc)->tulip_csrs.csr_9, (csr)); tulip_delay_300ns(sc); } while (0);
}
unsigned
tulip_mii_readbits(tulip_softc_t * const sc)
{
    unsigned data;
    unsigned csr = bus_space_read_4((sc)->tulip_bustag, (sc)->tulip_bushandle, (sc)->tulip_csrs.csr_9) & (0x00040000|0x00020000|0x00010000);
    int idx;
    for (idx = 0, data = 0; idx < 16; idx++) {
 data <<= 1;
 csr ^= 0x00010000; do { bus_space_write_4((sc)->tulip_bustag, (sc)->tulip_bushandle, (sc)->tulip_csrs.csr_9, (csr)); tulip_delay_300ns(sc); } while (0);
 if (bus_space_read_4((sc)->tulip_bustag, (sc)->tulip_bushandle, (sc)->tulip_csrs.csr_9) & 0x00080000)
     data |= 1;
 csr ^= 0x00010000; do { bus_space_write_4((sc)->tulip_bustag, (sc)->tulip_bushandle, (sc)->tulip_csrs.csr_9, (csr)); tulip_delay_300ns(sc); } while (0);
    }
    csr ^= 0x00040000; do { bus_space_write_4((sc)->tulip_bustag, (sc)->tulip_bushandle, (sc)->tulip_csrs.csr_9, (csr)); tulip_delay_300ns(sc); } while (0);
    return (data);
}
unsigned
tulip_mii_readreg(tulip_softc_t * const sc, unsigned devaddr, unsigned regno)
{
    unsigned csr = bus_space_read_4((sc)->tulip_bustag, (sc)->tulip_bushandle, (sc)->tulip_csrs.csr_9) & (0x00040000|0x00020000|0x00010000);
    unsigned data;
    csr &= ~(0x00040000|0x00010000); do { bus_space_write_4((sc)->tulip_bustag, (sc)->tulip_bushandle, (sc)->tulip_csrs.csr_9, (csr)); tulip_delay_300ns(sc); } while (0);
    tulip_mii_writebits(sc, (~0), 32);
    tulip_mii_writebits(sc, 0xF6, 8);
    tulip_mii_writebits(sc, devaddr, 5);
    tulip_mii_writebits(sc, regno, 5);
    tulip_mii_turnaround(sc, 0xF6);
    data = tulip_mii_readbits(sc);
    return (data);
}
void
tulip_mii_writereg(tulip_softc_t * const sc, unsigned devaddr,
    unsigned regno, unsigned data)
{
    unsigned csr;
    csr = bus_space_read_4((sc)->tulip_bustag, (sc)->tulip_bushandle, (sc)->tulip_csrs.csr_9) & (0x00040000|0x00020000|0x00010000);
    csr &= ~(0x00040000|0x00010000); do { bus_space_write_4((sc)->tulip_bustag, (sc)->tulip_bushandle, (sc)->tulip_csrs.csr_9, (csr)); tulip_delay_300ns(sc); } while (0);
    tulip_mii_writebits(sc, (~0), 32);
    tulip_mii_writebits(sc, 0xF5, 8);
    tulip_mii_writebits(sc, devaddr, 5);
    tulip_mii_writebits(sc, regno, 5);
    tulip_mii_turnaround(sc, 0xF5);
    tulip_mii_writebits(sc, data, 16);
}
void
tulip_identify_dec_nic(tulip_softc_t * const sc)
{
    strlcpy(sc->tulip_boardid, "DEC ", sizeof(sc->tulip_boardid));
    if (sc->tulip_chipid <= TULIP_DE425)
 return;
    if (__builtin_bcmp((sc->tulip_rombuf + 29), ("DE500"), (5)) == 0
 || __builtin_bcmp((sc->tulip_rombuf + 29), ("DE450"), (5)) == 0) {
 __builtin_bcopy((sc->tulip_rombuf + 29), (&sc->tulip_boardid[4]), (8));
 sc->tulip_boardid[4 +8] = ' ';
    }
}
void
tulip_identify_znyx_nic(tulip_softc_t * const sc)
{
    unsigned id = 0;
    strlcpy(sc->tulip_boardid, "ZNYX ZX3XX ", sizeof(sc->tulip_boardid));
    if (sc->tulip_chipid == TULIP_21140 || sc->tulip_chipid == TULIP_21140A) {
 unsigned znyx_ptr;
 sc->tulip_boardid[8] = '4';
 znyx_ptr = sc->tulip_rombuf[124] + 256 * sc->tulip_rombuf[125];
 if (znyx_ptr < 26 || znyx_ptr > 116) {
     sc->tulip_boardsw = &tulip_21140_znyx_zx34x_boardsw;
     return;
 }
 if (sc->tulip_rombuf[znyx_ptr] == 0x4A
  && sc->tulip_rombuf[znyx_ptr + 1] == 0x52
  && sc->tulip_rombuf[znyx_ptr + 2] == 0x01) {
     id = sc->tulip_rombuf[znyx_ptr + 5] + 256 * sc->tulip_rombuf[znyx_ptr + 4];
     if ((id >> 8) == (0x0901 >> 8)) {
  sc->tulip_boardid[9] = '2';
  if (id == 0x0921) {
      sc->tulip_boardid[10] = 'B';
      sc->tulip_boardid[11] = ' ';
  }
  sc->tulip_boardsw = &tulip_21140_znyx_zx34x_boardsw;
     } else if (id == 0x0A01) {
  sc->tulip_boardid[10] = '4';
  sc->tulip_boardsw = &tulip_21140_znyx_zx34x_boardsw;
     } else if (id == 0x0C01) {
  sc->tulip_boardid[9] = (sc->tulip_rombuf[19] > 1) ? '8' : '5';
     } else if (id == 0x0E01) {
  sc->tulip_boardid[9] = '6';
     } else if (id == 0x0B01) {
  sc->tulip_boardid[8] = '5';
  sc->tulip_boardid[9] = '1';
     }
 }
 if (id == 0) {
     sc->tulip_boardsw = &tulip_21140_znyx_zx34x_boardsw;
 }
 return;
    }
    sc->tulip_boardid[8] = '1';
    if (sc->tulip_chipid == TULIP_21041) {
 sc->tulip_boardid[10] = '1';
 return;
    }
    if (sc->tulip_rombuf[32] == 0x4A && sc->tulip_rombuf[33] == 0x52) {
 id = sc->tulip_rombuf[37] + 256 * sc->tulip_rombuf[36];
 if (id == 0x0622) {
     sc->tulip_boardid[9] = '2';
     sc->tulip_boardid[10] = 'T';
     sc->tulip_boardid[11] = ' ';
     sc->tulip_boardsw = &tulip_21040_10baset_only_boardsw;
 } else if (id == 0x0701) {
     sc->tulip_boardid[9] = '4';
     sc->tulip_boardsw = &tulip_21040_10baset_only_boardsw;
     sc->tulip_features |= 0x00001000|0x00000200;
 } else if (id == 0x0711) {
     sc->tulip_boardid[9] = '4';
     sc->tulip_boardsw = &tulip_21040_10baset_only_boardsw;
     sc->tulip_features |= 0x00000200;
 } else if (id == 0x0801) {
     sc->tulip_boardid[9] = '5';
     sc->tulip_features |= 0x00001000|0x00000200;
 } else if (id == 0x0811) {
     sc->tulip_boardid[9] = '5';
     sc->tulip_features |= 0x00000200;
 } else
     id = 0;
    }
    if (id == 0) {
 if ((sc->tulip_ac.ac_enaddr[3] & ~3) == 0xF0 && (sc->tulip_ac.ac_enaddr[5] & 3) == 0) {
     sc->tulip_boardid[9] = '4';
     sc->tulip_boardsw = &tulip_21040_10baset_only_boardsw;
     sc->tulip_features |= 0x00001000|0x00000200;
 } else if ((sc->tulip_ac.ac_enaddr[3] & ~3) == 0xF4 && (sc->tulip_ac.ac_enaddr[5] & 1) == 0) {
     sc->tulip_boardid[9] = '5';
     sc->tulip_boardsw = &tulip_21040_boardsw;
     sc->tulip_features |= 0x00001000|0x00000200;
 } else if ((sc->tulip_ac.ac_enaddr[3] & ~3) == 0xEC) {
     sc->tulip_boardid[9] = '2';
     sc->tulip_boardsw = &tulip_21040_boardsw;
 }
    }
}
void
tulip_identify_smc_nic(tulip_softc_t * const sc)
{
    u_int32_t id1, id2, ei;
    int auibnc = 0, utp = 0;
    char *cp;
    strlcpy(sc->tulip_boardid, "SMC ", sizeof(sc->tulip_boardid));
    if (sc->tulip_chipid == TULIP_21041)
 return;
    if (sc->tulip_chipid != TULIP_21040) {
 if (sc->tulip_boardsw != &tulip_2114x_isv_boardsw) {
     strlcat(sc->tulip_boardid, "9332DST ", sizeof(sc->tulip_boardid));
     sc->tulip_boardsw = &tulip_21140_smc9332_boardsw;
 } else if (sc->tulip_features & (0x00000200|0x00000400))
     strlcat(sc->tulip_boardid, "9334BDT ", sizeof(sc->tulip_boardid));
 else
     strlcat(sc->tulip_boardid, "9332BDT ", sizeof(sc->tulip_boardid));
 return;
    }
    id1 = sc->tulip_rombuf[0x60] | (sc->tulip_rombuf[0x61] << 8);
    id2 = sc->tulip_rombuf[0x62] | (sc->tulip_rombuf[0x63] << 8);
    ei = sc->tulip_rombuf[0x66] | (sc->tulip_rombuf[0x67] << 8);
    strlcat(sc->tulip_boardid, "8432", sizeof(sc->tulip_boardid));
    cp = &sc->tulip_boardid[8];
    if ((id1 & 1) == 0)
 *cp++ = 'B', auibnc = 1;
    if ((id1 & 0xFF) > 0x32)
 *cp++ = 'T', utp = 1;
    if ((id1 & 0x4000) == 0)
 *cp++ = 'A', auibnc = 1;
    if (id2 == 0x15) {
 sc->tulip_boardid[7] = '4';
 *cp++ = '-';
 *cp++ = 'C';
 *cp++ = 'H';
 *cp++ = (ei ? '2' : '1');
    }
    *cp++ = ' ';
    *cp = '\0';
    if (utp && !auibnc)
 sc->tulip_boardsw = &tulip_21040_10baset_only_boardsw;
    else if (!utp && auibnc)
 sc->tulip_boardsw = &tulip_21040_auibnc_only_boardsw;
}
void
tulip_identify_cogent_nic(tulip_softc_t * const sc)
{
    strlcpy(sc->tulip_boardid, "Cogent ", sizeof(sc->tulip_boardid));
    if (sc->tulip_chipid == TULIP_21140 || sc->tulip_chipid == TULIP_21140A) {
 if (sc->tulip_rombuf[32] == 0x12) {
     strlcat(sc->tulip_boardid, "EM100TX ", sizeof(sc->tulip_boardid));
     sc->tulip_boardsw = &tulip_21140_cogent_em100_boardsw;
 } else if (sc->tulip_rombuf[32] == 0x15) {
     strlcat(sc->tulip_boardid, "EM100FX ", sizeof(sc->tulip_boardid));
     sc->tulip_boardsw = &tulip_21140_cogent_em100_boardsw;
 }
 if (*(u_int32_t *) sc->tulip_rombuf == 0x24001109U
  && (sc->tulip_features & 0x00000200)) {
     strlcat(sc->tulip_boardid, "EM440TX ", sizeof(sc->tulip_boardid));
     sc->tulip_features |= 0x00001000;
 }
    } else if (sc->tulip_chipid == TULIP_21040)
 sc->tulip_features |= 0x00001000|0x00000200;
}
void
tulip_identify_accton_nic(tulip_softc_t * const sc)
{
    strlcpy(sc->tulip_boardid, "ACCTON ", sizeof(sc->tulip_boardid));
    switch (sc->tulip_chipid) {
 case TULIP_21140A:
     strlcat(sc->tulip_boardid, "EN1207 ", sizeof(sc->tulip_boardid));
     if (sc->tulip_boardsw != &tulip_2114x_isv_boardsw)
  sc->tulip_boardsw = &tulip_21140_accton_boardsw;
     break;
 case TULIP_21140:
     strlcat(sc->tulip_boardid, "EN1207TX ", sizeof(sc->tulip_boardid));
     if (sc->tulip_boardsw != &tulip_2114x_isv_boardsw)
  sc->tulip_boardsw = &tulip_21140_eb_boardsw;
            break;
        case TULIP_21040:
     strlcat(sc->tulip_boardid, "EN1203 ", sizeof(sc->tulip_boardid));
            sc->tulip_boardsw = &tulip_21040_boardsw;
            break;
        case TULIP_21041:
     strlcat(sc->tulip_boardid, "EN1203 ", sizeof(sc->tulip_boardid));
            sc->tulip_boardsw = &tulip_21041_boardsw;
            break;
 default:
            sc->tulip_boardsw = &tulip_2114x_isv_boardsw;
            break;
    }
}
void
tulip_identify_asante_nic(tulip_softc_t * const sc)
{
    strlcpy(sc->tulip_boardid, "Asante ", sizeof(sc->tulip_boardid));
    if ((sc->tulip_chipid == TULIP_21140 || sc->tulip_chipid == TULIP_21140A)
     && sc->tulip_boardsw != &tulip_2114x_isv_boardsw) {
 tulip_media_info_t *mi = sc->tulip_mediainfo;
 int idx;
 sc->tulip_gpinit = 0x000000bf;
 sc->tulip_gpdata = 0;
 bus_space_write_4((sc)->tulip_bustag, (sc)->tulip_bushandle, (sc)->tulip_csrs.csr_12, (0x000000bf|0x00000100L));
 bus_space_write_4((sc)->tulip_bustag, (sc)->tulip_bushandle, (sc)->tulip_csrs.csr_12, (0x00000008));
 delay(100);
 bus_space_write_4((sc)->tulip_bustag, (sc)->tulip_bushandle, (sc)->tulip_csrs.csr_12, (0));
 mi->mi_type = TULIP_MEDIAINFO_MII;
 mi->mi_un.un_mii.mii_gpr_length = 0;
 mi->mi_un.un_mii.mii_gpr_offset = 0;
 mi->mi_un.un_mii.mii_reset_length = 0;
 mi->mi_un.un_mii.mii_reset_offset = 0;
 mi->mi_un.un_mii.mii_phyaddr = 32;
 for (idx = 20; idx > 0 && mi->mi_un.un_mii.mii_phyaddr == 32; idx--) {
     delay(10000);
     mi->mi_un.un_mii.mii_phyaddr = tulip_mii_get_phyaddr(sc, 0);
 }
 if (mi->mi_un.un_mii.mii_phyaddr == 32) {
     return;
 }
 sc->tulip_features |= 0x00000008;
 mi->mi_un.un_mii.mii_capabilities = 0x0800|0x1000|0x2000|0x4000;
 mi->mi_un.un_mii.mii_advertisement = 0x0800|0x1000|0x2000|0x4000;
 mi->mi_un.un_mii.mii_full_duplex = 0x1000|0x4000;
 mi->mi_un.un_mii.mii_tx_threshold = 0x0800|0x1000;
 do { if ((sc)->tulip_mediums[TULIP_MEDIA_100BASETX_FD] == ((void *)0) && ((mi)->mi_un.un_mii.mii_capabilities & 0x4000)) { (sc)->tulip_mediums[TULIP_MEDIA_100BASETX_FD] = (mi); (mi)->mi_un.un_mii.mii_mediamask |= (1L << ((int)(TULIP_MEDIA_100BASETX_FD))); } } while (0);
 do { if ((sc)->tulip_mediums[TULIP_MEDIA_100BASETX] == ((void *)0) && ((mi)->mi_un.un_mii.mii_capabilities & 0x2000)) { (sc)->tulip_mediums[TULIP_MEDIA_100BASETX] = (mi); (mi)->mi_un.un_mii.mii_mediamask |= (1L << ((int)(TULIP_MEDIA_100BASETX))); } } while (0);
 do { if ((sc)->tulip_mediums[TULIP_MEDIA_100BASET4] == ((void *)0) && ((mi)->mi_un.un_mii.mii_capabilities & 0x8000)) { (sc)->tulip_mediums[TULIP_MEDIA_100BASET4] = (mi); (mi)->mi_un.un_mii.mii_mediamask |= (1L << ((int)(TULIP_MEDIA_100BASET4))); } } while (0);
 do { if ((sc)->tulip_mediums[TULIP_MEDIA_10BASET_FD] == ((void *)0) && ((mi)->mi_un.un_mii.mii_capabilities & 0x1000)) { (sc)->tulip_mediums[TULIP_MEDIA_10BASET_FD] = (mi); (mi)->mi_un.un_mii.mii_mediamask |= (1L << ((int)(TULIP_MEDIA_10BASET_FD))); } } while (0);
 do { if ((sc)->tulip_mediums[TULIP_MEDIA_10BASET] == ((void *)0) && ((mi)->mi_un.un_mii.mii_capabilities & 0x0800)) { (sc)->tulip_mediums[TULIP_MEDIA_10BASET] = (mi); (mi)->mi_un.un_mii.mii_mediamask |= (1L << ((int)(TULIP_MEDIA_10BASET))); } } while (0);
 mi->mi_un.un_mii.mii_phyid = (tulip_mii_readreg(sc, mi->mi_un.un_mii.mii_phyaddr, 2) << 16) |
     tulip_mii_readreg(sc, mi->mi_un.un_mii.mii_phyaddr, 3);
 sc->tulip_boardsw = &tulip_2114x_isv_boardsw;
    }
}
void
tulip_identify_compex_nic(tulip_softc_t * const sc)
{
    strlcpy(sc->tulip_boardid, "COMPEX ", sizeof(sc->tulip_boardid));
    if (sc->tulip_chipid == TULIP_21140A) {
 int root_unit;
 tulip_softc_t *root_sc = ((void *)0);
 strlcat(sc->tulip_boardid, "400TX/PCI ", sizeof(sc->tulip_boardid));
 sc->tulip_features |= 0x00001000;
 for (root_unit = sc->tulip_dev.dv_unit - 1; root_unit >= 0; root_unit--) {
     root_sc = ((tulip_softc_t *) de_cd.cd_devs[root_unit]);
     if (root_sc == ((void *)0)
  || !(root_sc->tulip_features & 0x00000800))
  break;
     root_sc = ((void *)0);
 }
 if (root_sc != ((void *)0)
     && root_sc->tulip_chipid == sc->tulip_chipid
     && root_sc->tulip_pci_busno == sc->tulip_pci_busno) {
     sc->tulip_features |= 0x00000800;
     sc->tulip_slaves = root_sc->tulip_slaves;
     root_sc->tulip_slaves = sc;
 } else if(sc->tulip_features & 0x00000800)
     printf("\nCannot find master device for de%d interrupts", sc->tulip_dev.dv_unit);
    } else
 strlcat(sc->tulip_boardid, "unknown ", sizeof(sc->tulip_boardid));
}
int
tulip_srom_decode(tulip_softc_t * const sc)
{
    unsigned idx1, idx2, idx3;
    const tulip_srom_header_t *shp = (tulip_srom_header_t *) &sc->tulip_rombuf[0];
    const tulip_srom_adapter_info_t *saip = (tulip_srom_adapter_info_t *) (shp + 1);
    tulip_srom_media_t srom_media;
    tulip_media_info_t *mi = sc->tulip_mediainfo;
    const u_int8_t *dp;
    u_int32_t leaf_offset, blocks, data;
    for (idx1 = 0; idx1 < shp->sh_adapter_count; idx1++, saip++) {
 if (shp->sh_adapter_count == 1)
     break;
 if (saip->sai_device == sc->tulip_pci_devno)
     break;
    }
    if (idx1 == shp->sh_adapter_count)
 return (0);
    __builtin_bcopy(((caddr_t) shp->sh_ieee802_address), ((caddr_t) sc->tulip_ac.ac_enaddr), (6));
    sc->tulip_ac.ac_enaddr[5] += idx1;
    leaf_offset = saip->sai_leaf_offset_lowbyte
 + saip->sai_leaf_offset_highbyte * 256;
    dp = sc->tulip_rombuf + leaf_offset;
    sc->tulip_conntype = (tulip_srom_connection_t) (dp[0] + dp[1] * 256); dp += 2;
    for (idx2 = 0;; idx2++) {
 if (tulip_srom_conninfo[idx2].sc_type == sc->tulip_conntype
         || tulip_srom_conninfo[idx2].sc_type == TULIP_SROM_CONNTYPE_NOT_USED)
     break;
    }
    sc->tulip_connidx = idx2;
    if (sc->tulip_chipid == TULIP_21041) {
 blocks = *dp++;
 for (idx2 = 0; idx2 < blocks; idx2++) {
     tulip_media_t media;
     data = *dp++;
     srom_media = (tulip_srom_media_t) (data & 0x3F);
     for (idx3 = 0; tulip_srom_mediums[idx3].sm_type != TULIP_MEDIA_UNKNOWN; idx3++) {
  if (tulip_srom_mediums[idx3].sm_srom_type == srom_media)
      break;
     }
     media = tulip_srom_mediums[idx3].sm_type;
     if (media != TULIP_MEDIA_UNKNOWN) {
  if (data & 0x40) {
      mi->mi_type = TULIP_MEDIAINFO_SIA;
      sc->tulip_mediums[media] = mi;
      mi->mi_un.un_sia.sia_connectivity = dp[0] + dp[1] * 256;
      mi->mi_un.un_sia.sia_tx_rx = dp[2] + dp[3] * 256;
      mi->mi_un.un_sia.sia_general = dp[4] + dp[5] * 256;
      mi++;
  } else {
      switch (media) {
   case TULIP_MEDIA_BNC: {
       do { (mi)->mi_type = TULIP_MEDIAINFO_SIA; sc->tulip_mediums[TULIP_MEDIA_BNC] = (mi); (mi)->mi_un.un_sia.sia_connectivity = 0x0000EF09L; (mi)->mi_un.un_sia.sia_tx_rx = 0x0000F73DL; (mi)->mi_un.un_sia.sia_general = 0x00000006L; } while (0);
       mi++;
       break;
   }
   case TULIP_MEDIA_AUI: {
       do { (mi)->mi_type = TULIP_MEDIAINFO_SIA; sc->tulip_mediums[TULIP_MEDIA_AUI] = (mi); (mi)->mi_un.un_sia.sia_connectivity = 0x0000EF09L; (mi)->mi_un.un_sia.sia_tx_rx = 0x0000F73DL; (mi)->mi_un.un_sia.sia_general = 0x0000000EL; } while (0);
       mi++;
       break;
   }
   case TULIP_MEDIA_10BASET: {
       do { (mi)->mi_type = TULIP_MEDIAINFO_SIA; sc->tulip_mediums[TULIP_MEDIA_10BASET] = (mi); (mi)->mi_un.un_sia.sia_connectivity = 0x0000EF01L; (mi)->mi_un.un_sia.sia_tx_rx = 0x0000FF3FL; (mi)->mi_un.un_sia.sia_general = 0x00000000L; } while (0);
       mi++;
       break;
   }
   case TULIP_MEDIA_10BASET_FD: {
       do { (mi)->mi_type = TULIP_MEDIAINFO_SIA; sc->tulip_mediums[TULIP_MEDIA_10BASET_FD] = (mi); (mi)->mi_un.un_sia.sia_connectivity = 0x0000EF01L; (mi)->mi_un.un_sia.sia_tx_rx = 0x0000FF3DL; (mi)->mi_un.un_sia.sia_general = 0x00000000L; } while (0);
       mi++;
       break;
   }
   default: {
       break;
   }
      }
  }
     }
     if (data & 0x40)
  dp += 6;
 }
    } else {
 unsigned length, type;
 tulip_media_t gp_media = TULIP_MEDIA_UNKNOWN;
 if (sc->tulip_features & 0x00000001)
     sc->tulip_gpinit = *dp++;
 blocks = *dp++;
 for (idx2 = 0; idx2 < blocks; idx2++) {
     const u_int8_t *ep;
     if ((*dp & 0x80) == 0) {
  length = 4;
  type = 0;
     } else {
  length = (*dp++ & 0x7f) - 1;
  type = *dp++ & 0x3f;
     }
     ep = dp + length;
     switch (type & 0x3f) {
  case 0: {
      tulip_media_t media;
      srom_media = (tulip_srom_media_t)(dp[0] & 0x3f);
      for (idx3 = 0; tulip_srom_mediums[idx3].sm_type != TULIP_MEDIA_UNKNOWN; idx3++) {
   if (tulip_srom_mediums[idx3].sm_srom_type == srom_media)
       break;
      }
      media = tulip_srom_mediums[idx3].sm_type;
      if (media == TULIP_MEDIA_UNKNOWN)
   break;
      mi->mi_type = TULIP_MEDIAINFO_GPR;
      sc->tulip_mediums[media] = mi;
      mi->mi_un.un_gpr.gpr_gpdata = dp[1];
      if (media > gp_media && !((1L << ((int)(media))) & ((1L << ((int)TULIP_MEDIA_10BASET_FD)) |(1L << ((int)TULIP_MEDIA_100BASETX_FD)) |(1L << ((int)TULIP_MEDIA_100BASEFX_FD))))) {
   sc->tulip_gpdata = mi->mi_un.un_gpr.gpr_gpdata;
   gp_media = media;
      }
      data = dp[2] + dp[3] * 256;
      mi->mi_un.un_gpr.gpr_cmdmode = (((data) & 0x0071) << 18);
      if (data & 0x8000)
   mi->mi_un.un_gpr.gpr_actmask = 0;
      else {
   mi->mi_un.un_gpr.gpr_actmask = (1 << (((data) & 0x0E) >> 1));
   mi->mi_un.un_gpr.gpr_actdata = (data & 0x0080) ? 0 : mi->mi_un.un_gpr.gpr_actmask;
      }
      mi++;
      break;
  }
  case 1: {
      const unsigned phyno = *dp++;
      mi->mi_type = TULIP_MEDIAINFO_MII;
      mi->mi_un.un_mii.mii_gpr_length = *dp++;
      mi->mi_un.un_mii.mii_gpr_offset = dp - sc->tulip_rombuf;
      dp += mi->mi_un.un_mii.mii_gpr_length;
      mi->mi_un.un_mii.mii_reset_length = *dp++;
      mi->mi_un.un_mii.mii_reset_offset = dp - sc->tulip_rombuf;
      dp += mi->mi_un.un_mii.mii_reset_length;
      bus_space_write_4((sc)->tulip_bustag, (sc)->tulip_bushandle, (sc)->tulip_csrs.csr_12, (sc->tulip_gpinit|0x00000100L));
      for (idx3 = 0; idx3 < mi->mi_un.un_mii.mii_reset_length; idx3++) {
   delay(10);
   bus_space_write_4((sc)->tulip_bustag, (sc)->tulip_bushandle, (sc)->tulip_csrs.csr_12, (sc->tulip_rombuf[mi->mi_un.un_mii.mii_reset_offset + idx3]));
      }
      sc->tulip_phyaddr = mi->mi_un.un_mii.mii_phyaddr;
      for (idx3 = 0; idx3 < mi->mi_un.un_mii.mii_gpr_length; idx3++) {
   delay(10);
   bus_space_write_4((sc)->tulip_bustag, (sc)->tulip_bushandle, (sc)->tulip_csrs.csr_12, (sc->tulip_rombuf[mi->mi_un.un_mii.mii_gpr_offset + idx3]));
      }
      if (mi->mi_un.un_mii.mii_reset_length == 0 && mi->mi_un.un_mii.mii_gpr_length == 0)
   bus_space_write_4((sc)->tulip_bustag, (sc)->tulip_bushandle, (sc)->tulip_csrs.csr_12, (0));
      mi->mi_un.un_mii.mii_phyaddr = 32;
      for (idx3 = 20; idx3 > 0 && mi->mi_un.un_mii.mii_phyaddr == 32; idx3--) {
   delay(10000);
   mi->mi_un.un_mii.mii_phyaddr = tulip_mii_get_phyaddr(sc, phyno);
      }
      if (mi->mi_un.un_mii.mii_phyaddr == 32) {
   break;
      }
      sc->tulip_features |= 0x00000008;
      mi->mi_un.un_mii.mii_capabilities = dp[0] + dp[1] * 256; dp += 2;
      mi->mi_un.un_mii.mii_advertisement = dp[0] + dp[1] * 256; dp += 2;
      mi->mi_un.un_mii.mii_full_duplex = dp[0] + dp[1] * 256; dp += 2;
      mi->mi_un.un_mii.mii_tx_threshold = dp[0] + dp[1] * 256; dp += 2;
      do { if ((sc)->tulip_mediums[TULIP_MEDIA_100BASETX_FD] == ((void *)0) && ((mi)->mi_un.un_mii.mii_capabilities & 0x4000)) { (sc)->tulip_mediums[TULIP_MEDIA_100BASETX_FD] = (mi); (mi)->mi_un.un_mii.mii_mediamask |= (1L << ((int)(TULIP_MEDIA_100BASETX_FD))); } } while (0);
      do { if ((sc)->tulip_mediums[TULIP_MEDIA_100BASETX] == ((void *)0) && ((mi)->mi_un.un_mii.mii_capabilities & 0x2000)) { (sc)->tulip_mediums[TULIP_MEDIA_100BASETX] = (mi); (mi)->mi_un.un_mii.mii_mediamask |= (1L << ((int)(TULIP_MEDIA_100BASETX))); } } while (0);
      do { if ((sc)->tulip_mediums[TULIP_MEDIA_100BASET4] == ((void *)0) && ((mi)->mi_un.un_mii.mii_capabilities & 0x8000)) { (sc)->tulip_mediums[TULIP_MEDIA_100BASET4] = (mi); (mi)->mi_un.un_mii.mii_mediamask |= (1L << ((int)(TULIP_MEDIA_100BASET4))); } } while (0);
      do { if ((sc)->tulip_mediums[TULIP_MEDIA_10BASET_FD] == ((void *)0) && ((mi)->mi_un.un_mii.mii_capabilities & 0x1000)) { (sc)->tulip_mediums[TULIP_MEDIA_10BASET_FD] = (mi); (mi)->mi_un.un_mii.mii_mediamask |= (1L << ((int)(TULIP_MEDIA_10BASET_FD))); } } while (0);
      do { if ((sc)->tulip_mediums[TULIP_MEDIA_10BASET] == ((void *)0) && ((mi)->mi_un.un_mii.mii_capabilities & 0x0800)) { (sc)->tulip_mediums[TULIP_MEDIA_10BASET] = (mi); (mi)->mi_un.un_mii.mii_mediamask |= (1L << ((int)(TULIP_MEDIA_10BASET))); } } while (0);
      mi->mi_un.un_mii.mii_phyid = (tulip_mii_readreg(sc, mi->mi_un.un_mii.mii_phyaddr, 2) << 16) |
   tulip_mii_readreg(sc, mi->mi_un.un_mii.mii_phyaddr, 3);
      mi++;
      break;
  }
  case 2: {
      tulip_media_t media;
      srom_media = (tulip_srom_media_t)(dp[0] & 0x3f);
      for (idx3 = 0; tulip_srom_mediums[idx3].sm_type != TULIP_MEDIA_UNKNOWN; idx3++) {
   if (tulip_srom_mediums[idx3].sm_srom_type == srom_media)
       break;
      }
      media = tulip_srom_mediums[idx3].sm_type;
      if (media == TULIP_MEDIA_UNKNOWN)
   break;
      mi->mi_type = TULIP_MEDIAINFO_SIA;
      sc->tulip_mediums[media] = mi;
      if (dp[0] & 0x40) {
   mi->mi_un.un_sia.sia_connectivity = dp[1] + dp[2] * 256;
   mi->mi_un.un_sia.sia_tx_rx = dp[3] + dp[4] * 256;
   mi->mi_un.un_sia.sia_general = dp[5] + dp[6] * 256;
   dp += 6;
      } else {
   switch (media) {
       case TULIP_MEDIA_BNC: {
    do { (mi)->mi_type = TULIP_MEDIAINFO_SIA; sc->tulip_mediums[TULIP_MEDIA_BNC] = (mi); (mi)->mi_un.un_sia.sia_connectivity = 0x00000009L; (mi)->mi_un.un_sia.sia_tx_rx = 0x00000705L; (mi)->mi_un.un_sia.sia_general = 0x00000006L; } while (0);
    break;
       }
       case TULIP_MEDIA_AUI: {
    do { (mi)->mi_type = TULIP_MEDIAINFO_SIA; sc->tulip_mediums[TULIP_MEDIA_AUI] = (mi); (mi)->mi_un.un_sia.sia_connectivity = 0x00000009L; (mi)->mi_un.un_sia.sia_tx_rx = 0x00000705L; (mi)->mi_un.un_sia.sia_general = 0x0000000EL; } while (0);
    break;
       }
       case TULIP_MEDIA_10BASET: {
    do { (mi)->mi_type = TULIP_MEDIAINFO_SIA; sc->tulip_mediums[TULIP_MEDIA_10BASET] = (mi); (mi)->mi_un.un_sia.sia_connectivity = 0x00000001L; (mi)->mi_un.un_sia.sia_tx_rx = 0x00007F3FL; (mi)->mi_un.un_sia.sia_general = 0x00000008L; } while (0);
    sc->tulip_intrmask |= 0x00000010L|0x00001000L;
    break;
       }
       case TULIP_MEDIA_10BASET_FD: {
    do { (mi)->mi_type = TULIP_MEDIAINFO_SIA; sc->tulip_mediums[TULIP_MEDIA_10BASET_FD] = (mi); (mi)->mi_un.un_sia.sia_connectivity = 0x00000001L; (mi)->mi_un.un_sia.sia_tx_rx = 0x00007F3DL; (mi)->mi_un.un_sia.sia_general = 0x00000008L; } while (0);
    sc->tulip_intrmask |= 0x00000010L|0x00001000L;
    break;
       }
       default: {
    goto bad_media;
       }
   }
      }
      mi->mi_un.un_sia.sia_gp_control = (dp[1] + dp[2] * 256) << 16;
      mi->mi_un.un_sia.sia_gp_data = (dp[3] + dp[4] * 256) << 16;
      mi++;
    bad_media:
      break;
  }
  case 3: {
      const unsigned phyno = *dp++;
      const u_int8_t *dp0;
      mi->mi_type = TULIP_MEDIAINFO_MII;
      mi->mi_un.un_mii.mii_gpr_length = *dp++;
      mi->mi_un.un_mii.mii_gpr_offset = dp - sc->tulip_rombuf;
      dp += 2 * mi->mi_un.un_mii.mii_gpr_length;
      mi->mi_un.un_mii.mii_reset_length = *dp++;
      mi->mi_un.un_mii.mii_reset_offset = dp - sc->tulip_rombuf;
      dp += 2 * mi->mi_un.un_mii.mii_reset_length;
      dp0 = &sc->tulip_rombuf[mi->mi_un.un_mii.mii_reset_offset];
      for (idx3 = 0; idx3 < mi->mi_un.un_mii.mii_reset_length; idx3++, dp0 += 2) {
   delay(10);
   bus_space_write_4((sc)->tulip_bustag, (sc)->tulip_bushandle, (sc)->tulip_csrs.csr_15, ((dp0[0] + 256 * dp0[1]) << 16));
      }
      sc->tulip_phyaddr = mi->mi_un.un_mii.mii_phyaddr;
      dp0 = &sc->tulip_rombuf[mi->mi_un.un_mii.mii_gpr_offset];
      for (idx3 = 0; idx3 < mi->mi_un.un_mii.mii_gpr_length; idx3++, dp0 += 2) {
   delay(10);
   bus_space_write_4((sc)->tulip_bustag, (sc)->tulip_bushandle, (sc)->tulip_csrs.csr_15, ((dp0[0] + 256 * dp0[1]) << 16));
      }
      if (mi->mi_un.un_mii.mii_reset_length == 0 && mi->mi_un.un_mii.mii_gpr_length == 0)
   bus_space_write_4((sc)->tulip_bustag, (sc)->tulip_bushandle, (sc)->tulip_csrs.csr_15, (0));
      mi->mi_un.un_mii.mii_phyaddr = 32;
      for (idx3 = 20; idx3 > 0 && mi->mi_un.un_mii.mii_phyaddr == 32; idx3--) {
   delay(10000);
   mi->mi_un.un_mii.mii_phyaddr = tulip_mii_get_phyaddr(sc, phyno);
      }
      if (mi->mi_un.un_mii.mii_phyaddr == 32) {
   break;
      }
      sc->tulip_features |= 0x00000008;
      mi->mi_un.un_mii.mii_capabilities = dp[0] + dp[1] * 256; dp += 2;
      mi->mi_un.un_mii.mii_advertisement = dp[0] + dp[1] * 256; dp += 2;
      mi->mi_un.un_mii.mii_full_duplex = dp[0] + dp[1] * 256; dp += 2;
      mi->mi_un.un_mii.mii_tx_threshold = dp[0] + dp[1] * 256; dp += 2;
      mi->mi_un.un_mii.mii_interrupt = dp[0] + dp[1] * 256; dp += 2;
      do { if ((sc)->tulip_mediums[TULIP_MEDIA_100BASETX_FD] == ((void *)0) && ((mi)->mi_un.un_mii.mii_capabilities & 0x4000)) { (sc)->tulip_mediums[TULIP_MEDIA_100BASETX_FD] = (mi); (mi)->mi_un.un_mii.mii_mediamask |= (1L << ((int)(TULIP_MEDIA_100BASETX_FD))); } } while (0);
      do { if ((sc)->tulip_mediums[TULIP_MEDIA_100BASETX] == ((void *)0) && ((mi)->mi_un.un_mii.mii_capabilities & 0x2000)) { (sc)->tulip_mediums[TULIP_MEDIA_100BASETX] = (mi); (mi)->mi_un.un_mii.mii_mediamask |= (1L << ((int)(TULIP_MEDIA_100BASETX))); } } while (0);
      do { if ((sc)->tulip_mediums[TULIP_MEDIA_100BASET4] == ((void *)0) && ((mi)->mi_un.un_mii.mii_capabilities & 0x8000)) { (sc)->tulip_mediums[TULIP_MEDIA_100BASET4] = (mi); (mi)->mi_un.un_mii.mii_mediamask |= (1L << ((int)(TULIP_MEDIA_100BASET4))); } } while (0);
      do { if ((sc)->tulip_mediums[TULIP_MEDIA_10BASET_FD] == ((void *)0) && ((mi)->mi_un.un_mii.mii_capabilities & 0x1000)) { (sc)->tulip_mediums[TULIP_MEDIA_10BASET_FD] = (mi); (mi)->mi_un.un_mii.mii_mediamask |= (1L << ((int)(TULIP_MEDIA_10BASET_FD))); } } while (0);
      do { if ((sc)->tulip_mediums[TULIP_MEDIA_10BASET] == ((void *)0) && ((mi)->mi_un.un_mii.mii_capabilities & 0x0800)) { (sc)->tulip_mediums[TULIP_MEDIA_10BASET] = (mi); (mi)->mi_un.un_mii.mii_mediamask |= (1L << ((int)(TULIP_MEDIA_10BASET))); } } while (0);
      mi->mi_un.un_mii.mii_phyid = (tulip_mii_readreg(sc, mi->mi_un.un_mii.mii_phyaddr, 2) << 16) |
   tulip_mii_readreg(sc, mi->mi_un.un_mii.mii_phyaddr, 3);
      mi++;
      break;
  }
  case 4: {
      tulip_media_t media;
      srom_media = (tulip_srom_media_t) dp[0];
      for (idx3 = 0; tulip_srom_mediums[idx3].sm_type != TULIP_MEDIA_UNKNOWN; idx3++) {
   if (tulip_srom_mediums[idx3].sm_srom_type == srom_media)
       break;
      }
      media = tulip_srom_mediums[idx3].sm_type;
      if (media == TULIP_MEDIA_UNKNOWN)
   break;
      mi->mi_type = TULIP_MEDIAINFO_SYM;
      sc->tulip_mediums[media] = mi;
      mi->mi_un.un_gpr.gpr_gpcontrol = (dp[1] + dp[2] * 256) << 16;
      mi->mi_un.un_gpr.gpr_gpdata = (dp[3] + dp[4] * 256) << 16;
      data = dp[5] + dp[6] * 256;
      mi->mi_un.un_gpr.gpr_cmdmode = (((data) & 0x0071) << 18);
      if (data & 0x8000)
   mi->mi_un.un_gpr.gpr_actmask = 0;
      else {
   mi->mi_un.un_gpr.gpr_default = (data & 0x4000) != 0;
   mi->mi_un.un_gpr.gpr_actmask = (1 << (((data) & 0x0E) >> 1));
   mi->mi_un.un_gpr.gpr_actdata = (data & 0x0080) ? 0 : mi->mi_un.un_gpr.gpr_actmask;
      }
      if ((((1L << ((int)(media))) & ((1L << ((int)TULIP_MEDIA_BNC )) |(1L << ((int)TULIP_MEDIA_AUI )) |(1L << ((int)TULIP_MEDIA_AUIBNC )) |(1L << ((int)TULIP_MEDIA_EXTSIA )))) == 0))
   sc->tulip_intrmask |= 0x00000010L|0x00001000L;
      mi++;
      break;
  }
  default: {
  }
     }
     dp = ep;
 }
    }
    return (mi - sc->tulip_mediainfo);
}
static const struct {
    void (*vendor_identify_nic)(tulip_softc_t * const sc);
    unsigned char vendor_oui[3];
} tulip_vendors[] = {
    { tulip_identify_dec_nic, { 0x08, 0x00, 0x2B } },
    { tulip_identify_dec_nic, { 0x00, 0x00, 0xF8 } },
    { tulip_identify_smc_nic, { 0x00, 0x00, 0xC0 } },
    { tulip_identify_smc_nic, { 0x00, 0xE0, 0x29 } },
    { tulip_identify_znyx_nic, { 0x00, 0xC0, 0x95 } },
    { tulip_identify_cogent_nic, { 0x00, 0x00, 0x92 } },
    { tulip_identify_cogent_nic, { 0x00, 0x00, 0xD1 } },
    { tulip_identify_asante_nic, { 0x00, 0x00, 0x94 } },
    { tulip_identify_accton_nic, { 0x00, 0x00, 0xE8 } },
    { tulip_identify_compex_nic, { 0x00, 0x80, 0x48 } },
    { ((void *)0) }
};
int
tulip_read_macaddr(tulip_softc_t * const sc)
{
    unsigned cksum, rom_cksum, idx;
    u_int32_t csr;
    unsigned char tmpbuf[8];
    static const u_char testpat[] = { 0xFF, 0, 0x55, 0xAA, 0xFF, 0, 0x55, 0xAA };
    sc->tulip_connidx = ((sizeof((tulip_srom_conninfo)) / sizeof((tulip_srom_conninfo)[0])) - 1);
    if (sc->tulip_chipid == TULIP_21040) {
 bus_space_write_4((sc)->tulip_bustag, (sc)->tulip_bushandle, (sc)->tulip_csrs.csr_9, (1));
 for (idx = 0; idx < sizeof(sc->tulip_rombuf); idx++) {
     int cnt = 0;
     while (((csr = bus_space_read_4((sc)->tulip_bustag, (sc)->tulip_bushandle, (sc)->tulip_csrs.csr_9)) & 0x80000000L) && cnt < 10000)
  cnt++;
     sc->tulip_rombuf[idx] = csr & 0xFF;
 }
 sc->tulip_boardsw = &tulip_21040_boardsw;
    } else {
 if (sc->tulip_chipid == TULIP_21041) {
     sc->tulip_boardsw = &tulip_21041_boardsw;
 } else {
     sc->tulip_boardsw = &tulip_21140_eb_boardsw;
 }
 tulip_srom_read(sc);
 if (( ((ether_crc32_le(sc->tulip_rombuf, 126) & 0xFFFFU) ^ 0xFFFFU) == ((sc->tulip_rombuf)[126] | ((sc->tulip_rombuf)[127] << 8)))) {
     sc->tulip_features |= 0x00000100|0x00020000;
 } else if (sc->tulip_rombuf[126] == 0xff && sc->tulip_rombuf[127] == 0xFF) {
     for (idx = 0; idx < 18; idx++) {
  if (sc->tulip_rombuf[idx] != 0)
      break;
     }
     if (idx == 18 && sc->tulip_rombuf[18] == 1 && sc->tulip_rombuf[19] != 0)
  sc->tulip_features |= 0x00000100;
 } else if (sc->tulip_chipid >= TULIP_21142) {
     sc->tulip_features |= 0x00000100;
     sc->tulip_boardsw = &tulip_2114x_isv_boardsw;
 }
 if ((sc->tulip_features & 0x00000100) && tulip_srom_decode(sc)) {
     if (sc->tulip_chipid != TULIP_21041)
  sc->tulip_boardsw = &tulip_2114x_isv_boardsw;
     if (sc->tulip_rombuf[19] > 1)
  sc->tulip_features |= 0x00000200;
     if (sc->tulip_boardsw == ((void *)0))
  return (-6);
     goto check_oui;
 }
    }
    if (__builtin_bcmp((&sc->tulip_rombuf[0]), (&sc->tulip_rombuf[16]), (8)) != 0) {
 for (idx = 8; idx < 32; idx++) {
     if (sc->tulip_rombuf[idx] != 0xFF)
  return (-4);
 }
 if ((sc->tulip_rombuf[0] & 3) != 0)
     return (-4);
 if (sc->tulip_rombuf[0] == 0 && sc->tulip_rombuf[1] == 0
  && sc->tulip_rombuf[2] == 0)
     return (-4);
 __builtin_bcopy((sc->tulip_rombuf), (sc->tulip_ac.ac_enaddr), (6));
 sc->tulip_features |= 0x00002000;
 goto check_oui;
    } else {
 for (idx = 0; idx < sizeof(sc->tulip_rombuf); idx++) {
     if (sc->tulip_rombuf[idx] != 0 && sc->tulip_rombuf[idx] != 0xFF)
  break;
 }
 if (idx == sizeof(sc->tulip_rombuf)) {
     int root_unit;
     tulip_softc_t *root_sc = ((void *)0);
     for (root_unit = sc->tulip_dev.dv_unit - 1; root_unit >= 0; root_unit--) {
  root_sc = ((tulip_softc_t *) de_cd.cd_devs[root_unit]);
  if (root_sc == ((void *)0) || (root_sc->tulip_features & (0x00002000|0x00000400)) == 0x00002000)
      break;
  root_sc = ((void *)0);
     }
     if (root_sc != ((void *)0) && (root_sc->tulip_features & 0x00000200)
      && root_sc->tulip_chipid == sc->tulip_chipid
      && root_sc->tulip_pci_busno == sc->tulip_pci_busno) {
  sc->tulip_features |= 0x00000400;
  sc->tulip_boardsw = root_sc->tulip_boardsw;
  strlcpy(sc->tulip_boardid, root_sc->tulip_boardid,
      sizeof(sc->tulip_boardid));
  if (sc->tulip_boardsw->bd_type == TULIP_21140_ISV) {
      __builtin_bcopy((root_sc->tulip_rombuf), (sc->tulip_rombuf), (sizeof(sc->tulip_rombuf)));
      if (!tulip_srom_decode(sc))
   return (-5);
  } else {
      __builtin_bcopy((root_sc->tulip_ac.ac_enaddr), (sc->tulip_ac.ac_enaddr), (6));
      sc->tulip_ac.ac_enaddr[5] += sc->tulip_dev.dv_unit - root_sc->tulip_dev.dv_unit;
  }
  if (root_sc->tulip_features & 0x00001000) {
      sc->tulip_slaves = root_sc->tulip_slaves;
      root_sc->tulip_slaves = sc;
      sc->tulip_features |= 0x00000800;
  }
  return (0);
     }
 }
    }
    if (__builtin_bcmp((&sc->tulip_rombuf[24]), (testpat), (8)) != 0)
 return (-3);
    tmpbuf[0] = sc->tulip_rombuf[15]; tmpbuf[1] = sc->tulip_rombuf[14];
    tmpbuf[2] = sc->tulip_rombuf[13]; tmpbuf[3] = sc->tulip_rombuf[12];
    tmpbuf[4] = sc->tulip_rombuf[11]; tmpbuf[5] = sc->tulip_rombuf[10];
    tmpbuf[6] = sc->tulip_rombuf[9]; tmpbuf[7] = sc->tulip_rombuf[8];
    if (__builtin_bcmp((&sc->tulip_rombuf[0]), (tmpbuf), (8)) != 0)
 return (-2);
    __builtin_bcopy((sc->tulip_rombuf), (sc->tulip_ac.ac_enaddr), (6));
    cksum = *(u_int16_t *) &sc->tulip_ac.ac_enaddr[0];
    cksum *= 2;
    if (cksum > 65535) cksum -= 65535;
    cksum += *(u_int16_t *) &sc->tulip_ac.ac_enaddr[2];
    if (cksum > 65535) cksum -= 65535;
    cksum *= 2;
    if (cksum > 65535) cksum -= 65535;
    cksum += *(u_int16_t *) &sc->tulip_ac.ac_enaddr[4];
    if (cksum >= 65535) cksum -= 65535;
    rom_cksum = *(u_int16_t *) &sc->tulip_rombuf[6];
    if (cksum != rom_cksum)
 return (-1);
  check_oui:
    for (idx = 0; tulip_vendors[idx].vendor_identify_nic != ((void *)0); idx++) {
 if (__builtin_bcmp(((caddr_t) sc->tulip_ac.ac_enaddr), ((caddr_t) tulip_vendors[idx].vendor_oui), (3)) == 0) {
     (*tulip_vendors[idx].vendor_identify_nic)(sc);
     break;
 }
    }
    sc->tulip_features |= 0x00002000;
    return (0);
}
void
tulip_ifmedia_add(tulip_softc_t * const sc)
{
    tulip_media_t media;
    int medias = 0;
    for (media = TULIP_MEDIA_UNKNOWN; media < TULIP_MEDIA_MAX; media++) {
 if (sc->tulip_mediums[media] != ((void *)0)) {
     ifmedia_add(&sc->tulip_ifmedia, tulip_media_to_ifmedia[media],
   0, 0);
     medias++;
 }
    }
    if (medias == 0) {
 sc->tulip_features |= 0x00004000;
 ifmedia_add(&sc->tulip_ifmedia, 0x0000000000000100ULL | 2ULL, 0, 0);
 ifmedia_set(&sc->tulip_ifmedia, 0x0000000000000100ULL | 2ULL);
    } else if (sc->tulip_media == TULIP_MEDIA_UNKNOWN) {
 ifmedia_add(&sc->tulip_ifmedia, 0x0000000000000100ULL | 0ULL, 0, 0);
 ifmedia_set(&sc->tulip_ifmedia, 0x0000000000000100ULL | 0ULL);
    } else {
 ifmedia_set(&sc->tulip_ifmedia, tulip_media_to_ifmedia[sc->tulip_media]);
 sc->tulip_flags |= 0x00000010;
 tulip_linkup(sc, sc->tulip_media);
    }
}
int
tulip_ifmedia_change(struct ifnet * const ifp)
{
    tulip_softc_t * const sc = ((tulip_softc_t *)((ifp)->if_softc));
    sc->tulip_flags |= 0x00000400;
    sc->tulip_probe.probe_state = TULIP_PROBE_INACTIVE;
    sc->tulip_media = TULIP_MEDIA_UNKNOWN;
    if (((sc->tulip_ifmedia.ifm_media) & 0x00000000000000ffULL) != 0ULL) {
 tulip_media_t media;
 for (media = TULIP_MEDIA_UNKNOWN; media < TULIP_MEDIA_MAX; media++) {
     if (sc->tulip_mediums[media] != ((void *)0)
  && sc->tulip_ifmedia.ifm_media == tulip_media_to_ifmedia[media]) {
  sc->tulip_flags |= 0x00000010;
  sc->tulip_flags &= ~0x02000000;
  tulip_linkup(sc, media);
  return (0);
     }
 }
    }
    sc->tulip_flags &= ~(0x00000020|0x00000080);
    tulip_reset(sc);
    tulip_init(sc);
    return (0);
}
void
tulip_ifmedia_status(struct ifnet * const ifp, struct ifmediareq *req)
{
    tulip_softc_t *sc = ((tulip_softc_t *)((ifp)->if_softc));
    if (sc->tulip_media == TULIP_MEDIA_UNKNOWN)
 return;
    req->ifm_status = 0x0000000000000001ULL;
    if (sc->tulip_flags & 0x00040000)
 req->ifm_status |= 0x0000000000000002ULL;
    req->ifm_active = tulip_media_to_ifmedia[sc->tulip_media];
}
bus_dmamap_t
tulip_alloc_rxmap(tulip_softc_t *sc)
{
 return (sc->tulip_free_rxmaps[--sc->tulip_num_free_rxmaps]);
}
void
tulip_free_rxmap(tulip_softc_t *sc, bus_dmamap_t map)
{
 sc->tulip_free_rxmaps[sc->tulip_num_free_rxmaps++] = map;
}
bus_dmamap_t
tulip_alloc_txmap(tulip_softc_t *sc)
{
 return (sc->tulip_free_txmaps[--sc->tulip_num_free_txmaps]);
}
void
tulip_free_txmap(tulip_softc_t *sc, bus_dmamap_t map)
{
 sc->tulip_free_txmaps[sc->tulip_num_free_txmaps++] = map;
}
void
tulip_addr_filter(tulip_softc_t * const sc)
{
    struct arpcom *ac = &sc->tulip_ac;
    struct ether_multistep step;
    struct ether_multi *enm;
    sc->tulip_flags &= ~(0x00000002|0x00000004|0x00000040);
    sc->tulip_flags |= 0x00000001|0x00004000;
    sc->tulip_cmdmode &= ~0x00000002L;
    sc->tulip_intrmask &= ~0x00000100L;
    sc->tulip_ac.ac_if.if_flags &= ~0x200;
    if (sc->tulip_ac.ac_multicnt > 14) {
 u_int32_t *sp = sc->tulip_setupdata;
 unsigned hash;
 if (sc->tulip_features & 0x00000080)
     sc->tulip_flags |= 0x00000004;
 else
     sc->tulip_flags |= 0x00000002;
 __builtin_bzero((sc->tulip_setupdata), (sizeof(sc->tulip_setupdata)));
 if (ac->ac_multirangecnt > 0) {
     sc->tulip_flags |= 0x00000040;
     sc->tulip_flags &= ~(0x00000004|0x00000002);
 } else {
     do { (step).e_enm = ((&(ac)->ac_multiaddrs)->lh_first); do { if ((((enm)) = ((step)).e_enm) != ((void *)0)) ((step)).e_enm = ((((enm)))->enm_list.le_next); } while ( 0); } while ( 0);
     while (enm != ((void *)0)) {
      hash = (ether_crc32_le(enm->enm_addrlo, 6) & 0x1FF);
      sp[hash >> 4] |= __extension__({ __uint32_t __swap32gen_x = (1 << (hash & 0xF)); (__uint32_t)((__swap32gen_x & 0xff) << 24 | (__swap32gen_x & 0xff00) << 8 | (__swap32gen_x & 0xff0000) >> 8 | (__swap32gen_x & 0xff000000) >> 24); });
  do { if (((enm) = (step).e_enm) != ((void *)0)) (step).e_enm = (((enm))->enm_list.le_next); } while ( 0);
     }
 }
 if ((sc->tulip_flags & 0x00000040) == 0) {
     hash = (ether_crc32_le(etherbroadcastaddr, 6) & 0x1FF);
     sp[hash >> 4] |= __extension__({ __uint32_t __swap32gen_x = (1 << (hash & 0xF)); (__uint32_t)((__swap32gen_x & 0xff) << 24 | (__swap32gen_x & 0xff00) << 8 | (__swap32gen_x & 0xff0000) >> 8 | (__swap32gen_x & 0xff000000) >> 24); });
     if (sc->tulip_flags & 0x00000004) {
  hash = (ether_crc32_le(sc->tulip_ac.ac_enaddr, 6) & 0x1FF);
  sp[hash >> 4] |= __extension__({ __uint32_t __swap32gen_x = (1 << (hash & 0xF)); (__uint32_t)((__swap32gen_x & 0xff) << 24 | (__swap32gen_x & 0xff00) << 8 | (__swap32gen_x & 0xff0000) >> 8 | (__swap32gen_x & 0xff000000) >> 24); });
     } else {
  sp[39] = ((u_int16_t *) sc->tulip_ac.ac_enaddr)[0] << 16;
  sp[40] = ((u_int16_t *) sc->tulip_ac.ac_enaddr)[1] << 16;
  sp[41] = ((u_int16_t *) sc->tulip_ac.ac_enaddr)[2] << 16;
     }
 }
    }
    if ((sc->tulip_flags & (0x00000002|0x00000004)) == 0) {
 u_int32_t *sp = sc->tulip_setupdata;
 int idx = 0;
 if (ac->ac_multirangecnt > 0)
  sc->tulip_flags |= 0x00000040;
 if ((sc->tulip_flags & 0x00000040) == 0) {
     do { (step).e_enm = ((&(ac)->ac_multiaddrs)->lh_first); do { if ((((enm)) = ((step)).e_enm) != ((void *)0)) ((step)).e_enm = ((((enm)))->enm_list.le_next); } while ( 0); } while ( 0);
     for (; enm != ((void *)0); idx++) {
      *sp++ = ((u_int16_t *) enm->enm_addrlo)[0] << 16;
      *sp++ = ((u_int16_t *) enm->enm_addrlo)[1] << 16;
      *sp++ = ((u_int16_t *) enm->enm_addrlo)[2] << 16;
  do { if (((enm) = (step).e_enm) != ((void *)0)) (step).e_enm = (((enm))->enm_list.le_next); } while ( 0);
     }
     idx++;
     *sp++ = 0xFFFF << 16;
     *sp++ = 0xFFFF << 16;
     *sp++ = 0xFFFF << 16;
 }
 for (; idx < 16; idx++) {
     *sp++ = ((u_int16_t *) sc->tulip_ac.ac_enaddr)[0] << 16;
     *sp++ = ((u_int16_t *) sc->tulip_ac.ac_enaddr)[1] << 16;
     *sp++ = ((u_int16_t *) sc->tulip_ac.ac_enaddr)[2] << 16;
 }
    }
    if (sc->tulip_flags & 0x00000040)
 sc->tulip_ac.ac_if.if_flags |= 0x200;
}
void
tulip_reset(tulip_softc_t * const sc)
{
    tulip_ringinfo_t *ri;
    tulip_desc_t *di;
    u_int32_t inreset = (sc->tulip_flags & 0x00000200);
    if ((sc->tulip_flags & 0x10000000) == 0
     && sc->tulip_boardsw->bd_media_preset != ((void *)0))
 (*sc->tulip_boardsw->bd_media_preset)(sc);
    bus_space_write_4((sc)->tulip_bustag, (sc)->tulip_bushandle, (sc)->tulip_csrs.csr_busmode, (0x00000001L));
    delay(10);
    if (!inreset) {
 sc->tulip_flags |= 0x00000200;
 sc->tulip_flags &= ~(0x00000400|0x00080000);
 ifq_clr_oactive(&sc->tulip_ac.ac_if.if_snd);
    }
    bus_space_write_4((sc)->tulip_bustag, (sc)->tulip_bushandle, (sc)->tulip_csrs.csr_txlist, (sc->tulip_txdescmap->dm_segs[0].ds_addr));
    bus_space_write_4((sc)->tulip_bustag, (sc)->tulip_bushandle, (sc)->tulip_csrs.csr_rxlist, (sc->tulip_rxdescmap->dm_segs[0].ds_addr));
    bus_space_write_4((sc)->tulip_bustag, (sc)->tulip_bushandle, (sc)->tulip_csrs.csr_busmode, ((1 << (3 + 8)) |0x00004000L |0x00200000L |(4321 != 1234 ? 0x00100000L : 0)));
    sc->tulip_txtimer = 0;
    for (;;) {
 bus_dmamap_t map;
 struct mbuf *m;
 m = ml_dequeue(&sc->tulip_txq);
 if (m == ((void *)0))
     break;
 map = ((bus_dmamap_t) (m)->M_dat.MH.MH_pkthdr.ph_cookie + 0);
 bus_dmamap_unload(sc->tulip_dmatag, map);
 tulip_free_txmap(sc, map);
 m_freem(m);
    }
    ri = &sc->tulip_txinfo;
    ri->ri_nextin = ri->ri_nextout = ri->ri_first;
    ri->ri_free = ri->ri_max;
    for (di = ri->ri_first; di < ri->ri_last; di++)
 di->d_status = 0;
    bus_dmamap_sync(sc->tulip_dmatag, sc->tulip_txdescmap,
      0, sc->tulip_txdescmap->dm_mapsize,
      0x01|0x04);
    ri = &sc->tulip_rxinfo;
    ri->ri_nextin = ri->ri_nextout = ri->ri_first;
    ri->ri_free = ri->ri_max;
    for (di = ri->ri_first; di < ri->ri_last; di++) {
 di->d_status = 0;
 di->d_length1 = 0; di->d_addr1 = 0;
 di->d_length2 = 0; di->d_addr2 = 0;
    }
    bus_dmamap_sync(sc->tulip_dmatag, sc->tulip_rxdescmap,
      0, sc->tulip_rxdescmap->dm_mapsize,
      0x01|0x04);
    for (;;) {
 bus_dmamap_t map;
 struct mbuf *m;
 m = ml_dequeue(&sc->tulip_rxq);
 if (m == ((void *)0))
     break;
 map = ((bus_dmamap_t) (m)->M_dat.MH.MH_pkthdr.ph_cookie + 0);
 bus_dmamap_unload(sc->tulip_dmatag, map);
 tulip_free_rxmap(sc, map);
 m_freem(m);
    }
    if (inreset)
 return;
    sc->tulip_intrmask |= 0x00010000L|0x00000040L|0x00000001L
 |0x00008000L|0x00002000L|0x00000002L
 |0x00000020L|0x00000008L
 |0x00000100L;
    if ((sc->tulip_flags & 0x10000000) == 0)
 (*sc->tulip_boardsw->bd_media_select)(sc);
    tulip_media_print(sc);
    if (sc->tulip_features & 0x00000020)
 bus_space_write_4((sc)->tulip_bustag, (sc)->tulip_bushandle, (sc)->tulip_csrs.csr_12, (bus_space_read_4((sc)->tulip_bustag, (sc)->tulip_bushandle, (sc)->tulip_csrs.csr_12)));
    sc->tulip_flags &= ~(0x00000008|0x00000001|0x00000200
    |0x00000100);
    tulip_addr_filter(sc);
}
void
tulip_init(tulip_softc_t * const sc)
{
    if (sc->tulip_ac.ac_if.if_flags & 0x1) {
 if ((sc->tulip_ac.ac_if.if_flags & 0x40) == 0) {
     tulip_reset(sc);
 }
 sc->tulip_ac.ac_if.if_flags |= 0x40;
 if (sc->tulip_ac.ac_if.if_flags & 0x100) {
     sc->tulip_flags |= 0x20000000;
     sc->tulip_cmdmode |= 0x00000040L;
     sc->tulip_intrmask |= 0x00000001L;
 } else {
     sc->tulip_flags &= ~0x20000000;
     sc->tulip_cmdmode &= ~0x00000040L;
     if (sc->tulip_flags & 0x00000040)
  sc->tulip_cmdmode |= 0x00000080L;
     else
  sc->tulip_cmdmode &= ~0x00000080L;
 }
 sc->tulip_cmdmode |= 0x00002000L;
 if ((sc->tulip_flags & (0x00000020|0x00000001)) == 0) {
     tulip_rx_intr(sc);
     sc->tulip_cmdmode |= 0x00000002L;
     sc->tulip_intrmask |= 0x00000100L;
 } else {
     ifq_set_oactive(&sc->tulip_ac.ac_if.if_snd);
     sc->tulip_cmdmode &= ~0x00000002L;
     sc->tulip_intrmask &= ~0x00000100L;
 }
 bus_space_write_4((sc)->tulip_bustag, (sc)->tulip_bushandle, (sc)->tulip_csrs.csr_intr, (sc->tulip_intrmask));
 bus_space_write_4((sc)->tulip_bustag, (sc)->tulip_bushandle, (sc)->tulip_csrs.csr_command, (sc->tulip_cmdmode));
 if ((sc->tulip_flags & (0x00000001|0x00000020)) == 0x00000001)
     tulip_txput_setup(sc);
    } else {
 sc->tulip_ac.ac_if.if_flags &= ~0x40;
 tulip_reset(sc);
    }
}
void
tulip_rx_intr(tulip_softc_t * const sc)
{
   
    tulip_ringinfo_t * const ri = &sc->tulip_rxinfo;
    struct ifnet * const ifp = &sc->tulip_ac.ac_if;
    struct mbuf_list ml = { ((void *)0), ((void *)0), 0 };
    int fillok = 1;
    for (;;) {

 tulip_desc_t *eop = ri->ri_nextin;
 int total_len = 0, last_offset = 0;
 struct mbuf *ms = ((void *)0), *me = ((void *)0);
 int accept = 0;
 bus_dmamap_t map;
 int error;
 if (fillok && ((&sc->tulip_rxq)->ml_len) < 32)
     goto queue_mbuf;
 if (eop == ri->ri_nextout)
     break;
 bus_dmamap_sync((sc)->tulip_dmatag, (sc)->tulip_rxdescmap, (caddr_t) eop - (caddr_t) (sc)->tulip_rxdescs, (sizeof(*eop)), 0x02|0x08);
 if ((((volatile tulip_desc_t *) eop)->d_status & (0x80000000|0x00000200|0x00000100)) == (0x00000200|0x00000100)) {
     if (((&sc->tulip_rxq)->ml_len == 0))
  panic("%s: tulip_rxq empty", sc->tulip_ac.ac_if.if_xname);
     ms = ml_dequeue(&sc->tulip_rxq);
     me = ms;
 } else {
     if (((volatile tulip_desc_t *) eop)->d_status & 0x80000000)
  break;
     while ((((volatile tulip_desc_t *) eop)->d_status & 0x00000100) == 0) {
  if (++eop == ri->ri_last)
      eop = ri->ri_first;
  bus_dmamap_sync((sc)->tulip_dmatag, (sc)->tulip_rxdescmap, (caddr_t) eop - (caddr_t) (sc)->tulip_rxdescs, (sizeof(*eop)), 0x02|0x08);
  if (eop == ri->ri_nextout || ((((volatile tulip_desc_t *) eop)->d_status & 0x80000000))) {
      do { } while (0);
      goto out;
  }
  total_len++;
     }
     ms = ml_dequeue(&sc->tulip_rxq);
     for (me = ms; total_len > 0; total_len--) {
  map = ((bus_dmamap_t) (me)->M_dat.MH.MH_pkthdr.ph_cookie + 0);
  bus_dmamap_sync((sc)->tulip_dmatag, (map), 0, (map)->dm_mapsize, 0x02|0x08);
  bus_dmamap_unload(sc->tulip_dmatag, map);
  tulip_free_rxmap(sc, map);
  me->m_hdr.mh_len = (((1 << 11) < 2048 ? (1 << 11) : 2048) - 16);
  last_offset += (((1 << 11) < 2048 ? (1 << 11) : 2048) - 16);
  me->m_hdr.mh_next = ml_dequeue(&sc->tulip_rxq);
  me = me->m_hdr.mh_next;
     }
 }
 total_len = ((eop->d_status >> 16) & 0x7FFF) - 4;
 if ((sc->tulip_flags & 0x04000000) == 0
  && ((eop->d_status & 0x00008000) == 0)) {
     me->m_hdr.mh_len = total_len - last_offset;
     map = ((bus_dmamap_t) (me)->M_dat.MH.MH_pkthdr.ph_cookie + 0);
     bus_dmamap_sync(sc->tulip_dmatag, map, 0, me->m_hdr.mh_len,
       0x02|0x08);
     bus_dmamap_unload(sc->tulip_dmatag, map);
     tulip_free_rxmap(sc, map);
     sc->tulip_flags |= 0x00000100;
     accept = 1;
 } else {
     ifp->if_data.ifi_ierrors++;
     if (eop->d_status & (0x00004000|0x00000001|0x00000010))
  sc->tulip_dot3stats.dot3StatsInternalMacReceiveErrors++;
     else {
     }
     map = ((bus_dmamap_t) (me)->M_dat.MH.MH_pkthdr.ph_cookie + 0);
     bus_dmamap_unload(sc->tulip_dmatag, map);
     tulip_free_rxmap(sc, map);
 }
 if (++eop == ri->ri_last)
     eop = ri->ri_first;
 ri->ri_nextin = eop;
      queue_mbuf:
 if (accept || ms == ((void *)0)) {
     struct mbuf *m0;
     m0 = m_gethdr((0x0002), (1));
     if (m0 != ((void *)0)) {
  if (!accept || total_len >= (((256 - sizeof(struct m_hdr)) - sizeof(struct pkthdr)) - 2)) {
      (void) m_clget((m0), (0x0002), (1 << 11));
      if ((m0->m_hdr.mh_flags & 0x0001) == 0) {
   m_freem(m0);
   m0 = ((void *)0);
      }
  }
     }
     if (accept
  && m0 != ((void *)0)
  ) {
  m0->m_hdr.mh_data += 2;
  m_copydata(ms, 0, total_len, ((caddr_t)((m0)->m_hdr.mh_data)));
  m0->m_hdr.mh_len = m0->M_dat.MH.MH_pkthdr.len = total_len;
  ml_enqueue(&ml, m0);
  m0 = ms;
     }
     ms = m0;
 }
 if (ms == ((void *)0)) {
     fillok = 0;
     sc->tulip_flags |= 0x00080000;
     do { } while (0);
     continue;
 }
 do {
     tulip_desc_t * const nextout = ri->ri_nextout;
     if (sc->tulip_num_free_rxmaps > 0) {
  map = tulip_alloc_rxmap(sc);
     } else {
  m_freem(ms);
  sc->tulip_flags |= 0x00080000;
  break;
     }
     ((void) ((ms)->M_dat.MH.MH_pkthdr.ph_cookie = (void *)(map)));
     error = bus_dmamap_load(sc->tulip_dmatag, map, ((void *)((ms)->m_hdr.mh_data)),
        (((1 << 11) < 2048 ? (1 << 11) : 2048) - 16), ((void *)0), 0x0001);
     if (error) {
  printf("%s%d" ": unable to load rx map, "
         "error = %d\n", sc->tulip_dev.dv_cfdata->cf_driver->cd_name, sc->tulip_dev.dv_unit, error);
  panic("tulip_rx_intr");
     }
     nextout->d_addr1 = map->dm_segs[0].ds_addr;
     nextout->d_length1 = map->dm_segs[0].ds_len;
     if (map->dm_nsegs == 2) {
  nextout->d_addr2 = map->dm_segs[1].ds_addr;
  nextout->d_length2 = map->dm_segs[1].ds_len;
     } else {
  nextout->d_addr2 = 0;
  nextout->d_length2 = 0;
     }
     bus_dmamap_sync((sc)->tulip_dmatag, (sc)->tulip_rxdescmap, (caddr_t) nextout - (caddr_t) (sc)->tulip_rxdescs, (sizeof(*nextout)), 0x02|0x08);
     nextout->d_status = 0x80000000;
     bus_dmamap_sync((sc)->tulip_dmatag, (sc)->tulip_rxdescmap, (caddr_t) nextout - (caddr_t) (sc)->tulip_rxdescs, (sizeof(u_int32_t)), 0x02|0x08);
     if (++ri->ri_nextout == ri->ri_last)
  ri->ri_nextout = ri->ri_first;
     me = ms->m_hdr.mh_next;
     ms->m_hdr.mh_next = ((void *)0);
     ml_enqueue(&sc->tulip_rxq, ms);
 } while ((ms = me) != ((void *)0));
 if (((&sc->tulip_rxq)->ml_len) >= 32)
     sc->tulip_flags &= ~0x00080000;
 do { } while (0);
    }
out:
    if_input(ifp, &ml);
    do { } while (0);
}
int
tulip_tx_intr(tulip_softc_t * const sc)
{
   
    tulip_ringinfo_t * const ri = &sc->tulip_txinfo;
    struct mbuf *m;
    int xmits = 0;
    int descs = 0;
    while (ri->ri_free < ri->ri_max) {
 u_int32_t d_flag;
 bus_dmamap_sync((sc)->tulip_dmatag, (sc)->tulip_txdescmap, (caddr_t) ri->ri_nextin - (caddr_t) (sc)->tulip_txdescs, (sizeof(*ri->ri_nextin)), 0x02|0x08);
 if (((volatile tulip_desc_t *) ri->ri_nextin)->d_status & 0x80000000)
     break;
 ri->ri_free++;
 descs++;
 d_flag = ri->ri_nextin->d_flag;
 if (d_flag & 0x0100) {
     if (d_flag & 0x0020) {
  bus_dmamap_sync((sc)->tulip_dmatag, (sc->tulip_setupmap), 0, (sc->tulip_setupmap)->dm_mapsize, 0x02|0x08);
  sc->tulip_flags &= ~(0x00000008|0x40000000);
  if (ri->ri_nextin->d_flag & 0x0040)
      sc->tulip_flags |= 0x40000000;
  if ((sc->tulip_flags & (0x00000001|0x00000020)) == 0) {
      tulip_rx_intr(sc);
      sc->tulip_cmdmode |= 0x00000002L;
      sc->tulip_intrmask |= 0x00000100L;
      bus_space_write_4((sc)->tulip_bustag, (sc)->tulip_bushandle, (sc)->tulip_csrs.csr_status, (0x00000100L));
      bus_space_write_4((sc)->tulip_bustag, (sc)->tulip_bushandle, (sc)->tulip_csrs.csr_intr, (sc->tulip_intrmask));
      bus_space_write_4((sc)->tulip_bustag, (sc)->tulip_bushandle, (sc)->tulip_csrs.csr_command, (sc->tulip_cmdmode));
  }
     } else {
  const u_int32_t d_status = ri->ri_nextin->d_status;
  m = ml_dequeue(&sc->tulip_txq);
  if (m != ((void *)0)) {
      bus_dmamap_t map = ((bus_dmamap_t) (m)->M_dat.MH.MH_pkthdr.ph_cookie + 0);
      bus_dmamap_sync((sc)->tulip_dmatag, (map), 0, (map)->dm_mapsize, 0x02|0x08);
      tulip_free_txmap(sc, map);
      if (sc->tulip_ac.ac_if.if_bpf != ((void *)0))
   bpf_mtap(sc->tulip_ac.ac_if.if_bpf, m, (1<<1));
      m_freem(m);
  }
  if (sc->tulip_flags & 0x00000020) {
      tulip_mediapoll_event_t event = TULIP_MEDIAPOLL_TXPROBE_OK;
      if (d_status & (0x00000400|0x00000100)) {
   event = TULIP_MEDIAPOLL_TXPROBE_FAILED;
      }
      (*sc->tulip_boardsw->bd_media_poll)(sc, event);
      break;
  } else {
      xmits++;
      if (d_status & 0x00008000) {
   sc->tulip_ac.ac_if.if_data.ifi_oerrors++;
   if (d_status & 0x00000100)
       sc->tulip_dot3stats.dot3StatsExcessiveCollisions++;
   if (d_status & 0x00000200)
       sc->tulip_dot3stats.dot3StatsLateCollisions++;
   if (d_status & (0x00000400|0x00000800))
       sc->tulip_dot3stats.dot3StatsCarrierSenseErrors++;
   if (d_status & (0x00000002|0x00004000))
       sc->tulip_dot3stats.dot3StatsInternalMacTransmitErrors++;
   if (d_status & 0x00000002)
       sc->tulip_dot3stats.dot3StatsInternalTransmitUnderflows++;
   if (d_status & 0x00004000)
       sc->tulip_dot3stats.dot3StatsInternalTransmitBabbles++;
      } else {
   u_int32_t collisions =
       (d_status & 0x00000078)
    >> 0x00000003;
   sc->tulip_ac.ac_if.if_data.ifi_collisions += collisions;
   if (collisions == 1)
       sc->tulip_dot3stats.dot3StatsSingleCollisionFrames++;
   else if (collisions > 1)
       sc->tulip_dot3stats.dot3StatsMultipleCollisionFrames++;
   else if (d_status & 0x00000001)
       sc->tulip_dot3stats.dot3StatsDeferredTransmissions++;
   if (d_status & 0x00000080 & sc->tulip_flags)
       sc->tulip_dot3stats.dot3StatsSQETestErrors++;
      }
  }
     }
 }
 if (++ri->ri_nextin == ri->ri_last)
     ri->ri_nextin = ri->ri_first;
 if ((sc->tulip_flags & 0x00000020) == 0)
     ifq_clr_oactive(&sc->tulip_ac.ac_if.if_snd);
    }
    if (ri->ri_free == ri->ri_max || (sc->tulip_flags & 0x00000020))
 sc->tulip_txtimer = 0;
    else if (xmits > 0)
 sc->tulip_txtimer = 4;
    do { } while (0);
    return (descs);
}
void
tulip_print_abnormal_interrupt(tulip_softc_t * const sc, u_int32_t csr)
{
}
void
tulip_intr_handler(tulip_softc_t * const sc, int *progress_p)
{
   
    u_int32_t csr;
    while ((csr = bus_space_read_4((sc)->tulip_bustag, (sc)->tulip_bushandle, (sc)->tulip_csrs.csr_status)) & sc->tulip_intrmask) {
 *progress_p = 1;
 bus_space_write_4((sc)->tulip_bustag, (sc)->tulip_bushandle, (sc)->tulip_csrs.csr_status, (csr));
 if (csr & 0x00002000L) {
     sc->tulip_last_system_error = (csr & 0x03800000L) >> 23;
     if (sc->tulip_flags & 0x00100000)
  sc->tulip_flags |= 0x00200000;
     else {
     }
     sc->tulip_flags |= 0x00000400;
     sc->tulip_system_errors++;
     break;
 }
 if (csr & (0x00000010L|0x00001000L) & sc->tulip_intrmask) {
     if (sc->tulip_boardsw->bd_media_poll != ((void *)0)) {
  (*sc->tulip_boardsw->bd_media_poll)(sc, csr & 0x00001000L
          ? TULIP_MEDIAPOLL_LINKFAIL
          : TULIP_MEDIAPOLL_LINKPASS);
  csr &= ~0x00008000L;
     }
     tulip_media_print(sc);
 }
 if (csr & (0x00000040L|0x00000080L)) {
     u_int32_t misses = bus_space_read_4((sc)->tulip_bustag, (sc)->tulip_bushandle, (sc)->tulip_csrs.csr_missed_frames);
     if (csr & 0x00000080L)
  sc->tulip_dot3stats.dot3StatsMissedFrames += misses & 0xFFFF;
    if ((misses & 0x0FFE0000) && (sc->tulip_features & 0x00000002)) {
  sc->tulip_dot3stats.dot3StatsInternalMacReceiveErrors++;
  bus_space_write_4((sc)->tulip_bustag, (sc)->tulip_bushandle, (sc)->tulip_csrs.csr_command, (sc->tulip_cmdmode & ~0x00000002L));
  while ((bus_space_read_4((sc)->tulip_bustag, (sc)->tulip_bushandle, (sc)->tulip_csrs.csr_status) & 0x00000100L) == 0)
      ;
  bus_space_write_4((sc)->tulip_bustag, (sc)->tulip_bushandle, (sc)->tulip_csrs.csr_status, (0x00000100L));
  sc->tulip_flags |= 0x04000000;
     }
     tulip_rx_intr(sc);
     if (sc->tulip_flags & 0x04000000) {
  sc->tulip_flags &= ~0x04000000;
  bus_space_write_4((sc)->tulip_bustag, (sc)->tulip_bushandle, (sc)->tulip_csrs.csr_command, (sc->tulip_cmdmode));
     }
 }
 if (csr & 0x00008000L) {
     u_int32_t tmp = csr & sc->tulip_intrmask
  & ~(0x00010000L|0x00008000L);
     if (csr & 0x00000020L) {
  if ((sc->tulip_cmdmode & 0x0000C000L) != 0x0000C000L) {
      sc->tulip_cmdmode += 0x00004000L;
      sc->tulip_flags |= 0x00008000;
  } else if (sc->tulip_features & 0x00008000) {
      sc->tulip_cmdmode |= 0x00200000L;
      sc->tulip_flags |= 0x00008000;
  }
     }
     if (sc->tulip_flags & 0x00100000)
  sc->tulip_statusbits |= tmp;
     else {
  tulip_print_abnormal_interrupt(sc, tmp);
  sc->tulip_flags |= 0x00100000;
     }
     bus_space_write_4((sc)->tulip_bustag, (sc)->tulip_bushandle, (sc)->tulip_csrs.csr_command, (sc->tulip_cmdmode));
 }
 if (sc->tulip_flags & (0x00004000|0x00000020|0x00000008|0x20000000)) {
     tulip_tx_intr(sc);
     if ((sc->tulip_flags & 0x00000020) == 0)
  tulip_ifstart(&sc->tulip_ac.ac_if);
 }
    }
    if (sc->tulip_flags & 0x00000400) {
 tulip_reset(sc);
 tulip_init(sc);
    }
    do { } while (0);
}
int
tulip_intr_shared(void *arg)
{
    tulip_softc_t * sc = arg;
    int progress = 0;
    for (; sc != ((void *)0); sc = sc->tulip_slaves) {
 tulip_intr_handler(sc, &progress);
    }
    return (progress);
}
int
tulip_intr_normal(void *arg)
{
    tulip_softc_t * sc = (tulip_softc_t *) arg;
    int progress = 0;
    tulip_intr_handler(sc, &progress);
    return (progress);
}
struct mbuf *
tulip_mbuf_compress(struct mbuf *m)
{
    struct mbuf *m0;
    m0 = m_gethdr((0x0002), (1));
    if (m0 != ((void *)0)) {
 if (m->M_dat.MH.MH_pkthdr.len > ((256 - sizeof(struct m_hdr)) - sizeof(struct pkthdr))) {
     (void) m_clget((m0), (0x0002), (1 << 11));
     if ((m0->m_hdr.mh_flags & 0x0001) == 0) {
  m_freem(m);
  m_freem(m0);
  return (((void *)0));
     }
 }
 m_copydata(m, 0, m->M_dat.MH.MH_pkthdr.len, ((caddr_t)((m0)->m_hdr.mh_data)));
 m0->M_dat.MH.MH_pkthdr.len = m0->m_hdr.mh_len = m->M_dat.MH.MH_pkthdr.len;
    }
    m_freem(m);
    return (m0);
}
struct mbuf *
tulip_txput(tulip_softc_t * const sc, struct mbuf *m, int notonqueue)
{
   
    tulip_ringinfo_t * const ri = &sc->tulip_txinfo;
    tulip_desc_t *eop, *nextout;
    int segcnt, freedescs;
    u_int32_t d_status;
    bus_dmamap_t map;
    struct ifnet *ifp = &sc->tulip_ac.ac_if;
    d_status = 0;
    eop = nextout = ri->ri_nextout;
    segcnt = 0;
    freedescs = ri->ri_free;
    if (sc->tulip_num_free_txmaps == 0) {
 freedescs += tulip_tx_intr(sc);
    }
    if (sc->tulip_num_free_txmaps > 0)
 map = tulip_alloc_txmap(sc);
    else {
 sc->tulip_flags |= 0x00004000;
 goto finish;
    }
    switch (bus_dmamap_load_mbuf(sc->tulip_dmatag, map, m, 0x0001)) {
    case 0:
 break;
    case 27:
 if (m_defrag(m, 0x0002) == 0 &&
   bus_dmamap_load_mbuf(sc->tulip_dmatag, map, m, 0x0001) == 0)
     break;
    default:
 tulip_free_txmap(sc, map);
        goto finish;
    }
    if ((freedescs -= (map->dm_nsegs + 1) / 2) <= 0
     && (freedescs += tulip_tx_intr(sc)) <= 0) {
 sc->tulip_flags |= 0x00004000;
 bus_dmamap_unload(sc->tulip_dmatag, map);
 tulip_free_txmap(sc, map);
 goto finish;
    }
    for (; map->dm_nsegs - segcnt > 1; segcnt += 2) {
 eop = nextout;
 eop->d_flag &= 0x0008|0x0004;
 eop->d_status = d_status;
 eop->d_addr1 = map->dm_segs[segcnt].ds_addr;
 eop->d_length1 = map->dm_segs[segcnt].ds_len;
 eop->d_addr2 = map->dm_segs[segcnt+1].ds_addr;
 eop->d_length2 = map->dm_segs[segcnt+1].ds_len;
 d_status = 0x80000000;
 if (++nextout == ri->ri_last)
     nextout = ri->ri_first;
    }
    if (segcnt < map->dm_nsegs) {
 eop = nextout;
 eop->d_flag &= 0x0008|0x0004;
 eop->d_status = d_status;
 eop->d_addr1 = map->dm_segs[segcnt].ds_addr;
 eop->d_length1 = map->dm_segs[segcnt].ds_len;
 eop->d_addr2 = 0;
 eop->d_length2 = 0;
 if (++nextout == ri->ri_last)
     nextout = ri->ri_first;
    }
    bus_dmamap_sync((sc)->tulip_dmatag, (map), 0, (map)->dm_mapsize, 0x01|0x04);
    if (!notonqueue)
 ifq_deq_commit(&ifp->if_snd, m);
    ((void) ((m)->M_dat.MH.MH_pkthdr.ph_cookie = (void *)(map)));
    map = ((void *)0);
    ml_enqueue(&sc->tulip_txq, m);
    m = ((void *)0);
    nextout->d_status = 0;
    bus_dmamap_sync((sc)->tulip_dmatag, (sc)->tulip_txdescmap, (caddr_t) nextout - (caddr_t) (sc)->tulip_txdescs, (sizeof(u_int32_t)), 0x01|0x04);
    eop->d_flag |= 0x0100|0x0200;
    ri->ri_nextout->d_flag |= 0x0080;
    if (eop < ri->ri_nextout) {
 bus_dmamap_sync((sc)->tulip_dmatag, (sc)->tulip_txdescmap, (caddr_t) ri->ri_nextout - (caddr_t) (sc)->tulip_txdescs, ((caddr_t) ri->ri_last - (caddr_t) ri->ri_nextout), 0x01|0x04);
 bus_dmamap_sync((sc)->tulip_dmatag, (sc)->tulip_txdescmap, (caddr_t) ri->ri_first - (caddr_t) (sc)->tulip_txdescs, ((caddr_t) (eop + 1) - (caddr_t) ri->ri_first), 0x01|0x04);
    } else {
 bus_dmamap_sync((sc)->tulip_dmatag, (sc)->tulip_txdescmap, (caddr_t) ri->ri_nextout - (caddr_t) (sc)->tulip_txdescs, ((caddr_t) (eop + 1) - (caddr_t) ri->ri_nextout), 0x01|0x04);
    }
    ri->ri_nextout->d_status = 0x80000000;
    bus_dmamap_sync((sc)->tulip_dmatag, (sc)->tulip_txdescmap, (caddr_t) ri->ri_nextout - (caddr_t) (sc)->tulip_txdescs, (sizeof(u_int32_t)), 0x01|0x04);
    ri->ri_nextout = nextout;
    ri->ri_free = freedescs;
    do { } while (0);
    if (sc->tulip_flags & 0x00000020) {
 bus_space_write_4((sc)->tulip_bustag, (sc)->tulip_bushandle, (sc)->tulip_csrs.csr_txpoll, (1));
 ifq_set_oactive(&sc->tulip_ac.ac_if.if_snd);
 do { } while (0);
 return (((void *)0));
    }
    sc->tulip_flags &= ~0x00004000;
    if (sc->tulip_txtimer == 0)
 sc->tulip_txtimer = 4;
  finish:
    if (sc->tulip_flags & (0x00004000|0x00000008)) {
 ifq_set_oactive(&sc->tulip_ac.ac_if.if_snd);
 if ((sc->tulip_intrmask & 0x00000001L) == 0) {
     sc->tulip_intrmask |= 0x00000001L;
     bus_space_write_4((sc)->tulip_bustag, (sc)->tulip_bushandle, (sc)->tulip_csrs.csr_intr, (sc->tulip_intrmask));
 }
    } else if ((sc->tulip_flags & 0x20000000) == 0) {
 if (sc->tulip_intrmask & 0x00000001L) {
     sc->tulip_intrmask &= ~0x00000001L;
     bus_space_write_4((sc)->tulip_bustag, (sc)->tulip_bushandle, (sc)->tulip_csrs.csr_intr, (sc->tulip_intrmask));
 }
    }
    bus_space_write_4((sc)->tulip_bustag, (sc)->tulip_bushandle, (sc)->tulip_csrs.csr_txpoll, (1));
    do { } while (0);
    return (m);
}
void
tulip_txput_setup(tulip_softc_t * const sc)
{
    tulip_ringinfo_t * const ri = &sc->tulip_txinfo;
    tulip_desc_t *nextout;
    if (ri->ri_free < 2)
 tulip_tx_intr(sc);
    if ((sc->tulip_flags & 0x00000008) || ri->ri_free == 1) {
 sc->tulip_flags |= 0x00004000;
 return;
    }
    __builtin_bcopy((sc->tulip_setupdata), (sc->tulip_setupbuf), (sizeof(sc->tulip_setupdata)));
    sc->tulip_flags ^= 0x00000001|0x00000008;
    ri->ri_free--;
    nextout = ri->ri_nextout;
    nextout->d_flag &= 0x0008|0x0004;
    nextout->d_flag |= 0x0080|0x0100
 |0x0020|0x0200;
    if (sc->tulip_flags & 0x00000002)
 nextout->d_flag |= 0x0001;
    else if (sc->tulip_flags & 0x00000004)
 nextout->d_flag |= 0x0001|0x0040;
    nextout->d_length2 = 0;
    nextout->d_addr2 = 0;
    nextout->d_length1 = sc->tulip_setupmap->dm_segs[0].ds_len;
    nextout->d_addr1 = sc->tulip_setupmap->dm_segs[0].ds_addr;
    if (sc->tulip_setupmap->dm_nsegs == 2) {
 nextout->d_length2 = sc->tulip_setupmap->dm_segs[1].ds_len;
 nextout->d_addr2 = sc->tulip_setupmap->dm_segs[1].ds_addr;
    }
    bus_dmamap_sync((sc)->tulip_dmatag, (sc->tulip_setupmap), 0, (sc->tulip_setupmap)->dm_mapsize, 0x01|0x04);
    bus_dmamap_sync((sc)->tulip_dmatag, (sc)->tulip_txdescmap, (caddr_t) nextout - (caddr_t) (sc)->tulip_txdescs, (sizeof(*nextout)), 0x01|0x04);
    if (++ri->ri_nextout == ri->ri_last)
 ri->ri_nextout = ri->ri_first;
    ri->ri_nextout->d_status = 0;
    bus_dmamap_sync((sc)->tulip_dmatag, (sc)->tulip_txdescmap, (caddr_t) ri->ri_nextout - (caddr_t) (sc)->tulip_txdescs, (sizeof(u_int32_t)), 0x01|0x04);
    nextout->d_status = 0x80000000;
    bus_dmamap_sync((sc)->tulip_dmatag, (sc)->tulip_txdescmap, (caddr_t) nextout - (caddr_t) (sc)->tulip_txdescs, (sizeof(u_int32_t)), 0x01|0x04);
    bus_space_write_4((sc)->tulip_bustag, (sc)->tulip_bushandle, (sc)->tulip_csrs.csr_txpoll, (1));
    if ((sc->tulip_intrmask & 0x00000001L) == 0) {
 sc->tulip_intrmask |= 0x00000001L;
 bus_space_write_4((sc)->tulip_bustag, (sc)->tulip_bushandle, (sc)->tulip_csrs.csr_intr, (sc->tulip_intrmask));
    }
}
int
tulip_ifioctl(struct ifnet * ifp, u_long cmd, caddr_t data)
{
   
    tulip_softc_t * const sc = ((tulip_softc_t *)((ifp)->if_softc));
    struct ifreq *ifr = (struct ifreq *) data;
    int s;
    int error = 0;
    s = _splraise(6);
    switch (cmd) {
    case ((unsigned long)0x80000000 | ((sizeof(struct ifreq) & 0x1fff) << 16) | ((('i')) << 8) | ((12))): {
 ifp->if_flags |= 0x1;
 tulip_init(sc);
 break;
    }
    case ((unsigned long)0x80000000 | ((sizeof(struct ifreq) & 0x1fff) << 16) | ((('i')) << 8) | ((16))): {
 tulip_init(sc);
 break;
    }
    case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct ifreq) & 0x1fff) << 16) | ((('i')) << 8) | ((55))):
    case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct ifmediareq) & 0x1fff) << 16) | ((('i')) << 8) | ((56))): {
 error = ifmedia_ioctl(ifp, ifr, &sc->tulip_ifmedia, cmd);
 break;
    }
    default:
 error = ether_ioctl(ifp, &sc->tulip_ac, cmd, data);
    }
    if (error == 52) {
 if (ifp->if_flags & 0x40) {
  tulip_addr_filter(sc);
  tulip_init(sc);
 }
 error = 0;
    }
    _splx(s);
    do { } while (0);
    return (error);
}
void
tulip_ifstart(struct ifnet * const ifp)
{
   
    tulip_softc_t * const sc = ((tulip_softc_t *)((ifp)->if_softc));
    struct mbuf *m, *m0;
    if (sc->tulip_ac.ac_if.if_flags & 0x40) {
 if ((sc->tulip_flags & (0x00000001|0x00000020)) == 0x00000001)
     tulip_txput_setup(sc);
        for (;;) {
     m = ifq_deq_begin(&sc->tulip_ac.ac_if.if_snd);
     if (m == ((void *)0))
  break;
            m0 = tulip_txput(sc, m, 0);
            if (m0 != ((void *)0)) {
  ((m == m0) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../dev/pci/if_de.c", 4157, "m == m0"));
                ifq_deq_rollback(&sc->tulip_ac.ac_if.if_snd, m);
  break;
     }
 }
    }
    do { } while (0);
}
void
tulip_ifwatchdog(struct ifnet *ifp)
{
   
    tulip_softc_t * const sc = ((tulip_softc_t *)((ifp)->if_softc));
    sc->tulip_ac.ac_if.if_timer = 1;
    if (sc->tulip_flags & (0x00200000|0x00080000|0x00100000)) {
 if (sc->tulip_flags & 0x00080000)
     tulip_rx_intr(sc);
 if (sc->tulip_statusbits) {
     tulip_print_abnormal_interrupt(sc, sc->tulip_statusbits);
     sc->tulip_statusbits = 0;
 }
 sc->tulip_flags &= ~(0x00100000|0x00200000);
    }
    if (sc->tulip_txtimer)
 tulip_tx_intr(sc);
    if (sc->tulip_txtimer && --sc->tulip_txtimer == 0) {
 printf("%s%d" ": transmission timeout\n", sc->tulip_dev.dv_cfdata->cf_driver->cd_name, sc->tulip_dev.dv_unit);
 if (((((sc)->tulip_ifmedia.ifm_media) & 0x00000000000000ffULL) == 0ULL)) {
     sc->tulip_media = TULIP_MEDIA_UNKNOWN;
     sc->tulip_probe.probe_state = TULIP_PROBE_INACTIVE;
     sc->tulip_flags &= ~(0x00000080|0x00040000);
 }
 tulip_reset(sc);
 tulip_init(sc);
    }
    do { } while (0);
    do { } while (0);
    do { } while (0);
    do { } while (0);
    do { } while (0);
    do { } while (0);
    do { } while (0);
    do { } while (0);
    do { } while (0);
    do { } while (0);
    do { } while (0);
    do { } while (0);
    do { } while (0);
    do { } while (0);
    do { } while (0);
    do { } while (0);
    do { } while (0);
    do { } while (0);
    do { } while (0);
    do { } while (0);
    do { } while (0);
}
int
tulip_busdma_allocmem(tulip_softc_t * const sc, size_t size,
    bus_dmamap_t *map_p, tulip_desc_t **desc_p)
{
    bus_dma_segment_t segs[1];
    int nsegs, error;
    error = bus_dmamem_alloc(sc->tulip_dmatag, size, 1, (1 << 13),
        segs, sizeof(segs)/sizeof(segs[0]),
        &nsegs, 0x0001);
    if (error == 0) {
 void *desc;
 error = bus_dmamem_map(sc->tulip_dmatag, segs, nsegs, size,
          (void *) &desc, 0x0001|0x0004);
 if (error == 0) {
     bus_dmamap_t map;
     error = bus_dmamap_create(sc->tulip_dmatag, size, 1, size, 0,
          0x0001, &map);
     if (error == 0) {
  error = bus_dmamap_load(sc->tulip_dmatag, map, desc,
     size, ((void *)0), 0x0001);
  if (error)
      bus_dmamap_destroy(sc->tulip_dmatag, map);
  else
      *map_p = map;
     }
     if (error)
  bus_dmamem_unmap(sc->tulip_dmatag, desc, size);
 }
 if (error)
     bus_dmamem_free(sc->tulip_dmatag, segs, nsegs);
 else
     *desc_p = desc;
    }
    return (error);
}
int
tulip_busdma_init(tulip_softc_t * const sc)
{
    int error = 0;
    error = tulip_busdma_allocmem(sc, sizeof(sc->tulip_setupdata),
      &sc->tulip_setupmap, &sc->tulip_setupbuf);
    if (error == 0) {
 error = tulip_busdma_allocmem(sc, sizeof(tulip_desc_t) * 32,
          &sc->tulip_txdescmap,
          &sc->tulip_txdescs);
    }
    if (error == 0) {
 while (error == 0 && sc->tulip_num_free_txmaps < 32) {
     bus_dmamap_t map;
     if ((error = bus_dmamap_create((sc)->tulip_dmatag, 2032, 30, 2032, 0, 0x0001, (&map))) == 0)
  tulip_free_txmap(sc, map);
 }
 if (error) {
     while (sc->tulip_num_free_txmaps > 0)
  bus_dmamap_destroy(sc->tulip_dmatag, tulip_alloc_txmap(sc));
 }
    }
    if (error == 0) {
 error = tulip_busdma_allocmem(sc, sizeof(tulip_desc_t) * 48,
          &sc->tulip_rxdescmap,
          &sc->tulip_rxdescs);
    }
    if (error == 0) {
 while (error == 0 && sc->tulip_num_free_rxmaps < 48) {
     bus_dmamap_t map;
     if ((error = bus_dmamap_create((sc)->tulip_dmatag, (((1 << 11) < 2048 ? (1 << 11) : 2048) - 16), 2, 2032, 0, 0x0001|0x0002, (&map))) == 0)
  tulip_free_rxmap(sc, map);
 }
 if (error) {
     while (sc->tulip_num_free_rxmaps > 0)
  bus_dmamap_destroy(sc->tulip_dmatag, tulip_alloc_rxmap(sc));
 }
    }
    return (error);
}
void
tulip_initcsrs(tulip_softc_t * const sc, bus_addr_t csr_base, size_t csr_size)
{
    sc->tulip_csrs.csr_busmode = csr_base + 0 * csr_size;
    sc->tulip_csrs.csr_txpoll = csr_base + 1 * csr_size;
    sc->tulip_csrs.csr_rxpoll = csr_base + 2 * csr_size;
    sc->tulip_csrs.csr_rxlist = csr_base + 3 * csr_size;
    sc->tulip_csrs.csr_txlist = csr_base + 4 * csr_size;
    sc->tulip_csrs.csr_status = csr_base + 5 * csr_size;
    sc->tulip_csrs.csr_command = csr_base + 6 * csr_size;
    sc->tulip_csrs.csr_intr = csr_base + 7 * csr_size;
    sc->tulip_csrs.csr_missed_frames = csr_base + 8 * csr_size;
    sc->tulip_csrs.csr_9 = csr_base + 9 * csr_size;
    sc->tulip_csrs.csr_10 = csr_base + 10 * csr_size;
    sc->tulip_csrs.csr_11 = csr_base + 11 * csr_size;
    sc->tulip_csrs.csr_12 = csr_base + 12 * csr_size;
    sc->tulip_csrs.csr_13 = csr_base + 13 * csr_size;
    sc->tulip_csrs.csr_14 = csr_base + 14 * csr_size;
    sc->tulip_csrs.csr_15 = csr_base + 15 * csr_size;
}
void
tulip_initring(tulip_softc_t * const sc, tulip_ringinfo_t * const ri,
    tulip_desc_t *descs, int ndescs)
{
    ri->ri_max = ndescs;
    ri->ri_first = descs;
    ri->ri_last = ri->ri_first + ri->ri_max;
    __builtin_bzero(((caddr_t) ri->ri_first), (sizeof(ri->ri_first[0]) * ri->ri_max));
    ri->ri_last[-1].d_flag = 0x0008;
}
int
tulip_probe(struct device *parent, void *match, void *aux)
{
    struct pci_attach_args *pa = (struct pci_attach_args *) aux;
    if (((pa->pa_id) & 0xFFFF) != 0x1011)
 return (0);
    if ((((pa->pa_id) >> 16) & 0xFFFF) == 0x0002
     || (((pa->pa_id) >> 16) & 0xFFFF) == 0x0014
     || (((pa->pa_id) >> 16) & 0xFFFF) == 0x0009
     || (((pa->pa_id) >> 16) & 0xFFFF) == 0x0019)
 return (2);
    return (0);
}
void
tulip_attach(struct device * const parent, struct device * const self, void * const aux)
{
    tulip_softc_t * const sc = (tulip_softc_t *) self;
    struct pci_attach_args * const pa = (struct pci_attach_args *) aux;
    struct ifnet * const ifp = &sc->tulip_ac.ac_if;
    const int unit = sc->tulip_dev.dv_unit;
    int retval, idx;
    u_int32_t revinfo, cfdainfo, id;
    unsigned csroffset = 0;
    unsigned csrsize = 8;
    bus_addr_t csr_base;
    tulip_chipid_t chipid = TULIP_CHIPID_UNKNOWN;
    if (unit >= 32) {
 printf(": not configured; limit of %d reached or exceeded\n",
        32);
 return;
    }
    ml_init(&sc->tulip_txq);
    ml_init(&sc->tulip_rxq);
    revinfo = pci_conf_read(pa->pa_pc, pa->pa_tag, (0x08)) & 0xFF;
    id = pci_conf_read(pa->pa_pc, pa->pa_tag, (0x00));
    cfdainfo = pci_conf_read(pa->pa_pc, pa->pa_tag, (0x40));
    if (((id) & 0xFFFF) == 0x1011) {
 if ((((id) >> 16) & 0xFFFF) == 0x0002)
  chipid = TULIP_21040;
 else if ((((id) >> 16) & 0xFFFF) == 0x0014)
  chipid = TULIP_21041;
 else if ((((id) >> 16) & 0xFFFF) == 0x0009)
  chipid = (revinfo >= 0x20) ? TULIP_21140A : TULIP_21140;
 else if ((((id) >> 16) & 0xFFFF) == 0x0019)
  chipid = (revinfo >= 0x20) ? TULIP_21143 : TULIP_21142;
    }
    if (chipid == TULIP_CHIPID_UNKNOWN)
 return;
    if ((chipid == TULIP_21040 || chipid == TULIP_DE425) && revinfo < 0x20) {
 printf(": not configured; 21040 pass 2.0 required (%d.%d found)\n",
        revinfo >> 4, revinfo & 0x0f);
 return;
    } else if (chipid == TULIP_21140 && revinfo < 0x11) {
 printf(": not configured; 21140 pass 1.1 required (%d.%d found)\n",
        revinfo >> 4, revinfo & 0x0f);
 return;
    }
    do { (sc)->tulip_pci_busno = parent; (sc)->tulip_pci_devno = pa->pa_device; } while (0);
    sc->tulip_chipid = chipid;
    sc->tulip_flags |= 0x10000000;
    if (chipid == TULIP_21140 || chipid == TULIP_21140A)
 sc->tulip_features |= 0x00000001|0x00008000;
    if (chipid == TULIP_21140A && revinfo <= 0x22)
 sc->tulip_features |= 0x00000002;
    if (chipid == TULIP_21140)
 sc->tulip_features |= 0x00000080;
    if (chipid != TULIP_21040 && chipid != TULIP_DE425 && chipid != TULIP_21140)
 sc->tulip_features |= 0x00000004;
    if (chipid == TULIP_21041 || chipid == TULIP_21142 || chipid == TULIP_21143) {
 sc->tulip_features |= 0x00000020;
 if (chipid != TULIP_21041 || revinfo >= 0x20)
     sc->tulip_features |= 0x00000010;
 if (chipid != TULIP_21041)
     sc->tulip_features |= 0x00000040|0x00000002|0x00008000;
 if (chipid != TULIP_21041 && revinfo >= 0x20)
     sc->tulip_features |= 0x00010000;
    }
    if (sc->tulip_features & 0x00000004
     && (cfdainfo & (0x80000000L|0x40000000L))) {
 cfdainfo &= ~(0x80000000L|0x40000000L);
 pci_conf_write(pa->pa_pc, pa->pa_tag, (0x40), (cfdainfo));
 delay(11*1000);
    }
    if (sc->tulip_features & 0x00008000)
     sc->tulip_cmdmode |= 0x00200000L;
    __builtin_bcopy((self->dv_xname), (sc->tulip_ac.ac_if.if_xname), (16));
    sc->tulip_ac.ac_if.if_softc = sc;
    sc->tulip_pc = pa->pa_pc;
    sc->tulip_dmatag = pa->pa_dmat;
    sc->tulip_revinfo = revinfo;
    timeout_set(&sc->tulip_stmo, tulip_timeout_callback, sc);
    csr_base = 0;
    {
 bus_space_tag_t iot, memt;
 bus_space_handle_t ioh, memh;
 int ioh_valid, memh_valid;
     ioh_valid = (pci_mapreg_map(pa, 0x10, 0x00000001, 0,
   &iot, &ioh, ((void *)0), ((void *)0), 0) == 0);
     memh_valid = (pci_mapreg_map(pa, 0x14,
    0x00000000 | 0x00000000, 0,
    &memt, &memh, ((void *)0), ((void *)0), 0) == 0);
 if (memh_valid) {
     sc->tulip_bustag = memt;
     sc->tulip_bushandle = memh;
 } else if (ioh_valid) {
     sc->tulip_bustag = iot;
     sc->tulip_bushandle = ioh;
 } else {
    printf(": unable to map device registers\n");
           return;
 }
    }
    tulip_initcsrs(sc, csr_base + csroffset, csrsize);
    if ((retval = tulip_busdma_init(sc)) != 0) {
 printf(": error initing bus_dma: %d\n", retval);
 return;
    }
    tulip_initring(sc, &sc->tulip_rxinfo, sc->tulip_rxdescs, 48);
    tulip_initring(sc, &sc->tulip_txinfo, sc->tulip_txdescs, 32);
    bus_space_write_4((sc)->tulip_bustag, (sc)->tulip_bushandle, (sc)->tulip_csrs.csr_busmode, (0x00000001L));
    delay(100);
    if ((retval = tulip_read_macaddr(sc)) < 0) {
 printf(", %s%s pass %d.%d", sc->tulip_boardid,
      tulip_chipdescs[sc->tulip_chipid],
       (sc->tulip_revinfo & 0xF0) >> 4, sc->tulip_revinfo & 0x0F);
 printf(": can't read ENET ROM (why=%d) (", retval);
 for (idx = 0; idx < 32; idx++)
     printf("%02x", sc->tulip_rombuf[idx]);
 printf(", address unknown\n");
    } else {
 int (*intr_rtn)(void *) = tulip_intr_normal;
 if (sc->tulip_features & 0x00001000)
     intr_rtn = tulip_intr_shared;
 if ((sc->tulip_features & 0x00000800) == 0) {
     pci_intr_handle_t intrhandle;
     const char *intrstr;
     if (pci_intr_map(pa, &intrhandle)) {
  printf(": couldn't map interrupt\n");
  return;
     }
     intrstr = pci_intr_string(pa->pa_pc, intrhandle);
     sc->tulip_ih = pci_intr_establish(pa->pa_pc, intrhandle, 6,
           intr_rtn, sc, self->dv_xname);
     if (sc->tulip_ih == ((void *)0)) {
  printf(": couldn't establish interrupt");
  if (intrstr != ((void *)0))
      printf(" at %s", intrstr);
  printf("\n");
  return;
     }
     printf(", %s%s pass %d.%d%s: %s, address %s\n",
     sc->tulip_boardid,
     tulip_chipdescs[sc->tulip_chipid],
     (sc->tulip_revinfo & 0xF0) >> 4,
   sc->tulip_revinfo & 0x0F,
   (sc->tulip_features & (0x00000100|0x00020000))
   == 0x00000100 ? " (invalid EESPROM checksum)" : "",
     intrstr, ether_sprintf(sc->tulip_ac.ac_enaddr));
 }
 ifp->if_flags = 0x2|0x800|0x8000;
 ifp->if_ioctl = tulip_ifioctl;
 ifp->if_start = tulip_ifstart;
 ifp->if_watchdog = tulip_ifwatchdog;
 ifp->if_timer = 1;
 (*sc->tulip_boardsw->bd_media_probe)(sc);
 ifmedia_init(&sc->tulip_ifmedia, 0,
     tulip_ifmedia_change, tulip_ifmedia_status);
 sc->tulip_flags &= ~0x10000000;
 tulip_ifmedia_add(sc);
 tulip_reset(sc);
 if_attach(ifp);
 ether_ifattach(ifp);
    }
}
