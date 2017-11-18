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
struct ip6_hdr {
 union {
  struct ip6_hdrctl {
   u_int32_t ip6_un1_flow;
   u_int16_t ip6_un1_plen;
   u_int8_t ip6_un1_nxt;
   u_int8_t ip6_un1_hlim;
  } ip6_un1;
  u_int8_t ip6_un2_vfc;
 } ip6_ctlun;
 struct in6_addr ip6_src;
 struct in6_addr ip6_dst;
} __attribute__((__packed__));
struct ip6_hdr_pseudo {
 struct in6_addr ip6ph_src;
 struct in6_addr ip6ph_dst;
 u_int32_t ip6ph_len;
 u_int8_t ip6ph_zero[3];
 u_int8_t ip6ph_nxt;
} __attribute__((__packed__));
struct ip6_ext {
 u_int8_t ip6e_nxt;
 u_int8_t ip6e_len;
} __attribute__((__packed__));
struct ip6_hbh {
 u_int8_t ip6h_nxt;
 u_int8_t ip6h_len;
} __attribute__((__packed__));
struct ip6_dest {
 u_int8_t ip6d_nxt;
 u_int8_t ip6d_len;
} __attribute__((__packed__));
struct ip6_opt {
 u_int8_t ip6o_type;
 u_int8_t ip6o_len;
} __attribute__((__packed__));
struct ip6_opt_jumbo {
 u_int8_t ip6oj_type;
 u_int8_t ip6oj_len;
 u_int8_t ip6oj_jumbo_len[4];
} __attribute__((__packed__));
struct ip6_opt_nsap {
 u_int8_t ip6on_type;
 u_int8_t ip6on_len;
 u_int8_t ip6on_src_nsap_len;
 u_int8_t ip6on_dst_nsap_len;
} __attribute__((__packed__));
struct ip6_opt_tunnel {
 u_int8_t ip6ot_type;
 u_int8_t ip6ot_len;
 u_int8_t ip6ot_encap_limit;
} __attribute__((__packed__));
struct ip6_opt_router {
 u_int8_t ip6or_type;
 u_int8_t ip6or_len;
 u_int8_t ip6or_value[2];
} __attribute__((__packed__));
struct ip6_rthdr {
 u_int8_t ip6r_nxt;
 u_int8_t ip6r_len;
 u_int8_t ip6r_type;
 u_int8_t ip6r_segleft;
} __attribute__((__packed__));
struct ip6_rthdr0 {
 u_int8_t ip6r0_nxt;
 u_int8_t ip6r0_len;
 u_int8_t ip6r0_type;
 u_int8_t ip6r0_segleft;
 u_int32_t ip6r0_reserved;
} __attribute__((__packed__));
struct ip6_frag {
 u_int8_t ip6f_nxt;
 u_int8_t ip6f_reserved;
 u_int16_t ip6f_offlg;
 u_int32_t ip6f_ident;
} __attribute__((__packed__));
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
struct oce_pa {
 uint64_t addr;
} __attribute__((__packed__));
struct oce_sge {
 uint64_t addr;
 uint32_t length;
} __attribute__((__packed__));
struct mbx_hdr {
 uint8_t opcode;
 uint8_t subsys;
 uint8_t port;
 uint8_t domain;
 uint32_t timeout;
 uint32_t length;
 uint8_t version;
 uint8_t _rsvd[3];
} __attribute__((__packed__));
struct oce_mbx {
 uint32_t flags;
 uint32_t payload_length;
 uint32_t tag[2];
 uint32_t _rsvd;
 union {
  struct oce_sge sgl[19];
  uint8_t data[(59 * 4)];
 } pld;
} __attribute__((__packed__));
struct oce_mq_cqe {
 union {
  struct {
   uint32_t extended_status:16;
   uint32_t completion_status:16;
   uint32_t mq_tag[2];
   uint32_t valid:1;
   uint32_t async_event:1;
   uint32_t hpi_buffer_cmpl:1;
   uint32_t completed:1;
   uint32_t consumed:1;
   uint32_t rsvd0:3;
   uint32_t async_type:8;
   uint32_t event_type:8;
   uint32_t rsvd1:8;
  } s;
  uint32_t dw[4];
 } u0;
} __attribute__((__packed__));
enum MBX_COMPLETION_STATUS {
 MBX_CQE_STATUS_SUCCESS = 0x00,
 MBX_CQE_STATUS_INSUFFICIENT_PRIVILEDGES = 0x01,
 MBX_CQE_STATUS_INVALID_PARAMETER = 0x02,
 MBX_CQE_STATUS_INSUFFICIENT_RESOURCES = 0x03,
 MBX_CQE_STATUS_QUEUE_FLUSHING = 0x04,
 MBX_CQE_STATUS_DMA_FAILED = 0x05
};
struct oce_async_cqe_link_state {
 union {
  struct {
   uint8_t speed;
   uint8_t duplex;
   uint8_t link_status;
   uint8_t phy_port;
   uint16_t qos_link_speed;
   uint8_t rsvd0;
   uint8_t fault;
   uint32_t event_tag;
   uint32_t valid:1;
   uint32_t async_event:1;
   uint32_t rsvd2:6;
   uint32_t event_type:8;
   uint32_t event_code:8;
   uint32_t rsvd1:8;
  } s;
  uint32_t dw[4];
 } u0;
} __attribute__((__packed__));
struct oce_async_event_grp5_pvid_state {
 uint8_t enabled;
 uint8_t rsvd0;
 uint16_t tag;
 uint32_t event_tag;
 uint32_t rsvd1;
 uint32_t code;
} __attribute__((__packed__));
union oce_mq_ext_ctx {
 uint32_t dw[6];
 struct {
  uint32_t dw4rsvd1:16;
  uint32_t num_pages:16;
  uint32_t async_evt_bitmap;
  uint32_t cq_id:10;
  uint32_t dw5rsvd2:2;
  uint32_t ring_size:4;
  uint32_t dw5rsvd1:16;
  uint32_t valid:1;
  uint32_t dw6rsvd1:31;
  uint32_t dw7rsvd1:21;
  uint32_t async_cq_id:10;
  uint32_t async_cq_valid:1;
  uint32_t dw8rsvd1;
 } v0;
} __attribute__((__packed__));
struct oce_bmbx {
 struct oce_mbx mbx;
 struct oce_mq_cqe cqe;
} __attribute__((__packed__));
enum SUBSYS_CODES {
 SUBSYS_RSVD = 0,
 SUBSYS_COMMON = 1,
 SUBSYS_COMMON_ISCSI = 2,
 SUBSYS_NIC = 3,
 SUBSYS_TOE = 4,
 SUBSYS_PXE_UNDI = 5,
 SUBSYS_ISCSI_INI = 6,
 SUBSYS_ISCSI_TGT = 7,
 SUBSYS_MILI_PTL = 8,
 SUBSYS_MILI_TMD = 9,
 SUBSYS_RDMA = 10,
 SUBSYS_LOWLEVEL = 11,
 SUBSYS_LRO = 13,
 SUBSYS_DCBX = 15,
 SUBSYS_DIAG = 16,
 SUBSYS_VENDOR = 17
};
enum COMMON_SUBSYS_OPCODES {
 OPCODE_COMMON_QUERY_IFACE_MAC = 1,
 OPCODE_COMMON_SET_IFACE_MAC = 2,
 OPCODE_COMMON_SET_IFACE_MULTICAST = 3,
 OPCODE_COMMON_CONFIG_IFACE_VLAN = 4,
 OPCODE_COMMON_QUERY_LINK_CONFIG = 5,
 OPCODE_COMMON_READ_FLASHROM = 6,
 OPCODE_COMMON_WRITE_FLASHROM = 7,
 OPCODE_COMMON_QUERY_MAX_MBX_BUFFER_SIZE = 8,
 OPCODE_COMMON_CREATE_CQ = 12,
 OPCODE_COMMON_CREATE_EQ = 13,
 OPCODE_COMMON_CREATE_MQ = 21,
 OPCODE_COMMON_GET_QOS = 27,
 OPCODE_COMMON_SET_QOS = 28,
 OPCODE_COMMON_READ_EPROM = 30,
 OPCODE_COMMON_GET_CNTL_ATTRIBUTES = 32,
 OPCODE_COMMON_NOP = 33,
 OPCODE_COMMON_SET_IFACE_RX_FILTER = 34,
 OPCODE_COMMON_GET_FW_VERSION = 35,
 OPCODE_COMMON_SET_FLOW_CONTROL = 36,
 OPCODE_COMMON_GET_FLOW_CONTROL = 37,
 OPCODE_COMMON_SET_FRAME_SIZE = 39,
 OPCODE_COMMON_MODIFY_EQ_DELAY = 41,
 OPCODE_COMMON_CREATE_IFACE = 50,
 OPCODE_COMMON_DESTROY_IFACE = 51,
 OPCODE_COMMON_MODIFY_MSI_MESSAGES = 52,
 OPCODE_COMMON_DESTROY_MQ = 53,
 OPCODE_COMMON_DESTROY_CQ = 54,
 OPCODE_COMMON_DESTROY_EQ = 55,
 OPCODE_COMMON_UPLOAD_TCP = 56,
 OPCODE_COMMON_SET_NTWK_LINK_SPEED = 57,
 OPCODE_COMMON_QUERY_FIRMWARE_CONFIG = 58,
 OPCODE_COMMON_ADD_IFACE_MAC = 59,
 OPCODE_COMMON_DEL_IFACE_MAC = 60,
 OPCODE_COMMON_FUNCTION_RESET = 61,
 OPCODE_COMMON_SET_PHYSICAL_LINK_CONFIG = 62,
 OPCODE_COMMON_GET_BOOT_CONFIG = 66,
 OPCPDE_COMMON_SET_BOOT_CONFIG = 67,
 OPCODE_COMMON_SET_BEACON_CONFIG = 69,
 OPCODE_COMMON_GET_BEACON_CONFIG = 70,
 OPCODE_COMMON_GET_PHYSICAL_LINK_CONFIG = 71,
 OPCODE_COMMON_GET_OEM_ATTRIBUTES = 76,
 OPCODE_COMMON_GET_PORT_NAME = 77,
 OPCODE_COMMON_GET_CONFIG_SIGNATURE = 78,
 OPCODE_COMMON_SET_CONFIG_SIGNATURE = 79,
 OPCODE_COMMON_SET_LOGICAL_LINK_CONFIG = 80,
 OPCODE_COMMON_GET_BE_CONFIGURATION_RESOURCES = 81,
 OPCODE_COMMON_SET_BE_CONFIGURATION_RESOURCES = 82,
 OPCODE_COMMON_GET_RESET_NEEDED = 84,
 OPCODE_COMMON_GET_SERIAL_NUMBER = 85,
 OPCODE_COMMON_GET_NCSI_CONFIG = 86,
 OPCODE_COMMON_SET_NCSI_CONFIG = 87,
 OPCODE_COMMON_CREATE_MQ_EXT = 90,
 OPCODE_COMMON_SET_FUNCTION_PRIVILEGES = 100,
 OPCODE_COMMON_SET_VF_PORT_TYPE = 101,
 OPCODE_COMMON_GET_PHY_CONFIG = 102,
 OPCODE_COMMON_SET_FUNCTIONAL_CAPS = 103,
 OPCODE_COMMON_GET_ADAPTER_ID = 110,
 OPCODE_COMMON_GET_UPGRADE_FEATURES = 111,
 OPCODE_COMMON_GET_INSTALLED_FEATURES = 112,
 OPCODE_COMMON_GET_AVAIL_PERSONALITIES = 113,
 OPCODE_COMMON_GET_CONFIG_PERSONALITIES = 114,
 OPCODE_COMMON_SEND_ACTIVATION = 115,
 OPCODE_COMMON_RESET_LICENSES = 116,
 OPCODE_COMMON_GET_CNTL_ADDL_ATTRIBUTES = 121,
 OPCODE_COMMON_QUERY_TCB = 144,
 OPCODE_COMMON_ADD_IFACE_QUEUE_FILTER = 145,
 OPCODE_COMMON_DEL_IFACE_QUEUE_FILTER = 146,
 OPCODE_COMMON_GET_IFACE_MAC_LIST = 147,
 OPCODE_COMMON_SET_IFACE_MAC_LIST = 148,
 OPCODE_COMMON_MODIFY_CQ = 149,
 OPCODE_COMMON_GET_IFACE_VLAN_LIST = 150,
 OPCODE_COMMON_SET_IFACE_VLAN_LIST = 151,
 OPCODE_COMMON_GET_HSW_CONFIG = 152,
 OPCODE_COMMON_SET_HSW_CONFIG = 153,
 OPCODE_COMMON_GET_RESOURCE_EXTENT_INFO = 154,
 OPCODE_COMMON_GET_ALLOCATED_RESOURCE_EXTENTS = 155,
 OPCODE_COMMON_ALLOC_RESOURCE_EXTENTS = 156,
 OPCODE_COMMON_DEALLOC_RESOURCE_EXTENTS = 157,
 OPCODE_COMMON_SET_DIAG_REGISTERS = 158,
 OPCODE_COMMON_GET_FUNCTION_CONFIG = 160,
 OPCODE_COMMON_GET_PROFILE_CAPACITIES = 161,
 OPCODE_COMMON_GET_MR_PROFILE_CAPACITIES = 162,
 OPCODE_COMMON_SET_MR_PROFILE_CAPACITIES = 163,
 OPCODE_COMMON_GET_PROFILE_CONFIG = 164,
 OPCODE_COMMON_SET_PROFILE_CONFIG = 165,
 OPCODE_COMMON_GET_PROFILE_LIST = 166,
 OPCODE_COMMON_GET_ACTIVE_PROFILE = 167,
 OPCODE_COMMON_SET_ACTIVE_PROFILE = 168,
 OPCODE_COMMON_GET_FUNCTION_PRIVILEGES = 170,
 OPCODE_COMMON_READ_OBJECT = 171,
 OPCODE_COMMON_WRITE_OBJECT = 172
};
struct mbx_query_common_link_config {
 struct mbx_hdr hdr;
 union {
  struct {
   uint32_t rsvd0;
  } req;
  struct {
   uint8_t physical_port;
   uint8_t mac_duplex;
   uint8_t mac_speed;
   uint8_t mac_fault;
   uint8_t mgmt_mac_duplex;
   uint8_t mgmt_mac_speed;
   uint16_t qos_link_speed;
   uint32_t logical_link_status;
  } rsp;
 } params;
} __attribute__((__packed__));
struct mbx_set_common_link_speed {
 struct mbx_hdr hdr;
 union {
  struct {
   uint8_t rsvd0;
   uint8_t mac_speed;
   uint8_t virtual_port;
   uint8_t physical_port;
  } req;
  struct {
   uint32_t rsvd0;
  } rsp;
  uint32_t dw;
 } params;
} __attribute__((__packed__));
struct mac_address_format {
 uint16_t size_of_struct;
 uint8_t mac_addr[6];
} __attribute__((__packed__));
struct mbx_query_common_iface_mac {
 struct mbx_hdr hdr;
 union {
  struct {
   uint16_t if_id;
   uint8_t permanent;
   uint8_t type;
  } req;
  struct {
   struct mac_address_format mac;
  } rsp;
 } params;
} __attribute__((__packed__));
struct mbx_set_common_iface_mac {
 struct mbx_hdr hdr;
 union {
  struct {
   uint16_t if_id;
   uint8_t invalidate;
   uint8_t type;
   struct mac_address_format mac;
  } req;
  struct {
   uint32_t rsvd0;
  } rsp;
  uint32_t dw[2];
 } params;
} __attribute__((__packed__));
struct mbx_set_common_iface_multicast {
 struct mbx_hdr hdr;
 union {
  struct {
   uint16_t num_mac;
   uint8_t promiscuous;
   uint8_t if_id;
   struct {
    uint8_t byte[6];
   } mac[32];
  } req;
  struct {
   uint32_t rsvd0;
  } rsp;
  uint32_t dw[49];
 } params;
} __attribute__((__packed__));
struct qinq_vlan {
 uint16_t inner;
 uint16_t outer;
} __attribute__((__packed__));
struct normal_vlan {
 uint16_t vtag;
} __attribute__((__packed__));
struct ntwk_if_vlan_tag {
 union {
  struct normal_vlan normal;
  struct qinq_vlan qinq;
 } u0;
} __attribute__((__packed__));
struct mbx_create_common_iface {
 struct mbx_hdr hdr;
 union {
  struct {
   uint32_t version;
   uint32_t cap_flags;
   uint32_t enable_flags;
   uint8_t mac_addr[6];
   uint8_t rsvd0;
   uint8_t mac_invalid;
   struct ntwk_if_vlan_tag vlan_tag;
  } req;
  struct {
   uint32_t if_id;
   uint32_t pmac_id;
  } rsp;
  uint32_t dw[4];
 } params;
} __attribute__((__packed__));
struct mbx_destroy_common_iface {
 struct mbx_hdr hdr;
 union {
  struct {
   uint32_t if_id;
  } req;
  struct {
   uint32_t rsvd0;
  } rsp;
  uint32_t dw;
 } params;
} __attribute__((__packed__));
struct oce_eqe {
 uint32_t evnt;
} __attribute__((__packed__));
struct oce_eq_ctx {
 uint32_t dw4rsvd1:16;
 uint32_t num_pages:16;
 uint32_t size:1;
 uint32_t dw5rsvd2:1;
 uint32_t valid:1;
 uint32_t dw5rsvd1:29;
 uint32_t armed:1;
 uint32_t dw6rsvd2:2;
 uint32_t count:3;
 uint32_t dw6rsvd1:26;
 uint32_t dw7rsvd2:9;
 uint32_t delay_mult:10;
 uint32_t dw7rsvd1:13;
 uint32_t dw8rsvd1;
} __attribute__((__packed__));
struct mbx_create_common_eq {
 struct mbx_hdr hdr;
 union {
  struct {
   struct oce_eq_ctx ctx;
   struct oce_pa pages[8];
  } req;
  struct {
   uint16_t eq_id;
   uint16_t rsvd0;
  } rsp;
 } params;
} __attribute__((__packed__));
struct mbx_destroy_common_eq {
 struct mbx_hdr hdr;
 union {
  struct {
   uint16_t rsvd0;
   uint16_t id;
  } req;
  struct {
   uint32_t rsvd0;
  } rsp;
 } params;
} __attribute__((__packed__));
union oce_cq_ctx {
 uint32_t dw[5];
 struct {
  uint32_t dw4rsvd1:16;
  uint32_t num_pages:16;
  uint32_t eventable:1;
  uint32_t dw5rsvd3:1;
  uint32_t valid:1;
  uint32_t count:2;
  uint32_t dw5rsvd2:12;
  uint32_t nodelay:1;
  uint32_t coalesce_wm:2;
  uint32_t dw5rsvd1:12;
  uint32_t armed:1;
  uint32_t dw6rsvd2:1;
  uint32_t eq_id:8;
  uint32_t dw6rsvd1:22;
  uint32_t dw7rsvd1;
  uint32_t dw8rsvd1;
 } v0;
 struct {
  uint32_t dw4rsvd1:8;
  uint32_t page_size:8;
  uint32_t num_pages:16;
  uint32_t eventable:1;
  uint32_t dw5rsvd3:1;
  uint32_t valid:1;
  uint32_t count:2;
  uint32_t dw5rsvd2:11;
  uint32_t autovalid:1;
  uint32_t nodelay:1;
  uint32_t coalesce_wm:2;
  uint32_t dw5rsvd1:12;
  uint32_t armed:1;
  uint32_t dw6rsvd1:15;
  uint32_t eq_id:16;
  uint32_t dw7rsvd1:16;
  uint32_t cqe_count:16;
  uint32_t dw8rsvd1;
 } v2;
} __attribute__((__packed__));
struct mbx_create_common_cq {
 struct mbx_hdr hdr;
 union {
  struct {
   union oce_cq_ctx cq_ctx;
   struct oce_pa pages[4];
  } req;
  struct {
   uint16_t cq_id;
   uint16_t rsvd0;
  } rsp;
 } params;
} __attribute__((__packed__));
struct mbx_destroy_common_cq {
 struct mbx_hdr hdr;
 union {
  struct {
   uint16_t rsvd0;
   uint16_t id;
  } req;
  struct {
   uint32_t rsvd0;
  } rsp;
 } params;
} __attribute__((__packed__));
union oce_mq_ctx {
 uint32_t dw[5];
 struct {
  uint32_t dw4rsvd1:16;
  uint32_t num_pages:16;
  uint32_t cq_id:10;
  uint32_t dw5rsvd2:2;
  uint32_t ring_size:4;
  uint32_t dw5rsvd1:16;
  uint32_t valid:1;
  uint32_t dw6rsvd1:31;
  uint32_t dw7rsvd1:21;
  uint32_t async_cq_id:10;
  uint32_t async_cq_valid:1;
  uint32_t dw8rsvd1;
 } v0;
} __attribute__((__packed__));
struct mbx_create_common_mq {
 struct mbx_hdr hdr;
 union {
  struct {
   union oce_mq_ctx context;
   struct oce_pa pages[8];
  } req;
  struct {
   uint32_t mq_id:16;
   uint32_t rsvd0:16;
  } rsp;
 } params;
} __attribute__((__packed__));
struct mbx_create_common_mq_ex {
 struct mbx_hdr hdr;
 union {
  struct {
   union oce_mq_ext_ctx context;
   struct oce_pa pages[8];
  } req;
  struct {
   uint32_t mq_id:16;
   uint32_t rsvd0:16;
  } rsp;
 } params;
} __attribute__((__packed__));
struct mbx_destroy_common_mq {
 struct mbx_hdr hdr;
 union {
  struct {
   uint16_t rsvd0;
   uint16_t id;
  } req;
  struct {
   uint32_t rsvd0;
  } rsp;
 } params;
} __attribute__((__packed__));
struct mbx_get_common_fw_version {
 struct mbx_hdr hdr;
 union {
  struct {
   uint32_t rsvd0;
  } req;
  struct {
   uint8_t fw_ver_str[32];
   uint8_t fw_on_flash_ver_str[32];
  } rsp;
 } params;
} __attribute__((__packed__));
struct mbx_common_cev_modify_msi_messages {
 struct mbx_hdr hdr;
 union {
  struct {
   uint32_t num_msi_msgs;
  } req;
  struct {
   uint32_t rsvd0;
  } rsp;
 } params;
} __attribute__((__packed__));
struct mbx_common_get_set_flow_control {
 struct mbx_hdr hdr;
 uint16_t tx_flow_control;
 uint16_t rx_flow_control;
} __attribute__((__packed__));
struct oce_phy_info {
 uint16_t phy_type;
 uint16_t interface_type;
 uint32_t misc_params;
 uint16_t ext_phy_details;
 uint16_t rsvd;
 uint16_t auto_speeds_supported;
 uint16_t fixed_speeds_supported;
 uint32_t future_use[2];
} __attribute__((__packed__));
struct mbx_common_phy_info {
 struct mbx_hdr hdr;
 union {
  struct {
   uint32_t rsvd0[4];
  } req;
  struct {
   struct oce_phy_info phy_info;
  } rsp;
 } params;
} __attribute__((__packed__));
struct mbx_lancer_common_write_object {
 union {
  struct {
   struct mbx_hdr hdr;
   uint32_t write_length: 24;
   uint32_t rsvd: 7;
   uint32_t eof: 1;
   uint32_t write_offset;
   uint8_t object_name[104];
   uint32_t descriptor_count;
   uint32_t buffer_length;
   uint32_t address_lower;
   uint32_t address_upper;
  } req;
  struct {
   uint8_t opcode;
   uint8_t subsystem;
   uint8_t rsvd1[2];
   uint8_t status;
   uint8_t additional_status;
   uint8_t rsvd2[2];
   uint32_t response_length;
   uint32_t actual_response_length;
   uint32_t actual_write_length;
  } rsp;
 } params;
} __attribute__((__packed__));
struct mbx_common_query_fw_config {
 struct mbx_hdr hdr;
 union {
  struct {
   uint32_t rsvd0[30];
  } req;
  struct {
   uint32_t config_number;
   uint32_t asic_revision;
   uint32_t port_id;
   uint32_t function_mode;
   struct {
    uint32_t ulp_mode;
    uint32_t nic_wqid_base;
    uint32_t nic_wq_tot;
    uint32_t toe_wqid_base;
    uint32_t toe_wq_tot;
    uint32_t toe_rqid_base;
    uint32_t toe_rqid_tot;
    uint32_t toe_defrqid_base;
    uint32_t toe_defrqid_count;
    uint32_t lro_rqid_base;
    uint32_t lro_rqid_tot;
    uint32_t iscsi_icd_base;
    uint32_t iscsi_icd_count;
   } ulp[2];
   uint32_t function_caps;
   uint32_t cqid_base;
   uint32_t cqid_tot;
   uint32_t eqid_base;
   uint32_t eqid_tot;
  } rsp;
 } params;
} __attribute__((__packed__));
enum CQFW_CONFIG_NUMBER {
 FCN_NIC_ISCSI_Initiator = 0x0,
 FCN_ISCSI_Target = 0x3,
 FCN_FCoE = 0x7,
 FCN_ISCSI_Initiator_Target = 0x9,
 FCN_NIC_RDMA_TOE = 0xA,
 FCN_NIC_RDMA_FCoE = 0xB,
 FCN_NIC_RDMA_iSCSI = 0xC,
 FCN_NIC_iSCSI_FCoE = 0xD
};
enum CQFW_FUNCTION_CAPABILITIES {
 FNC_UNCLASSIFIED_STATS = 0x1,
 FNC_RSS = 0x2,
 FNC_PROMISCUOUS = 0x4,
 FNC_LEGACY_MODE = 0x8,
 FNC_HDS = 0x4000,
 FNC_VMQ = 0x10000,
 FNC_NETQ = 0x20000,
 FNC_QGROUPS = 0x40000,
 FNC_LRO = 0x100000,
 FNC_VLAN_OFFLOAD = 0x800000
};
enum CQFW_ULP_MODES_SUPPORTED {
 ULP_TOE_MODE = 0x1,
 ULP_NIC_MODE = 0x2,
 ULP_RDMA_MODE = 0x4,
 ULP_ISCSI_INI_MODE = 0x10,
 ULP_ISCSI_TGT_MODE = 0x20,
 ULP_FCOE_INI_MODE = 0x40,
 ULP_FCOE_TGT_MODE = 0x80,
 ULP_DAL_MODE = 0x100,
 ULP_LRO_MODE = 0x200
};
enum CQFW_FUNCTION_MODES_SUPPORTED {
 FNM_TOE_MODE = 0x1,
 FNM_NIC_MODE = 0x2,
 FNM_RDMA_MODE = 0x4,
 FNM_VM_MODE = 0x8,
 FNM_ISCSI_INI_MODE = 0x10,
 FNM_ISCSI_TGT_MODE = 0x20,
 FNM_FCOE_INI_MODE = 0x40,
 FNM_FCOE_TGT_MODE = 0x80,
 FNM_DAL_MODE = 0x100,
 FNM_LRO_MODE = 0x200,
 FNM_FLEX10_MODE = 0x400,
 FNM_NCSI_MODE = 0x800,
 FNM_IPV6_MODE = 0x1000,
 FNM_BE2_COMPAT_MODE = 0x2000,
 FNM_INVALID_MODE = 0x8000,
 FNM_BE3_COMPAT_MODE = 0x10000,
 FNM_VNIC_MODE = 0x20000,
 FNM_VNTAG_MODE = 0x40000,
 FNM_UMC_MODE = 0x1000000,
 FNM_UMC_DEF_EN = 0x100000,
 FNM_ONE_GB_EN = 0x200000,
 FNM_VNIC_DEF_VALID = 0x400000,
 FNM_VNIC_DEF_EN = 0x800000
};
struct mbx_common_config_vlan {
 struct mbx_hdr hdr;
 union {
  struct {
   uint8_t num_vlans;
   uint8_t untagged;
   uint8_t promisc;
   uint8_t if_id;
   union {
    struct normal_vlan normal_vlans[64];
    struct qinq_vlan qinq_vlans[32];
   } tags;
  } req;
  struct {
   uint32_t rsvd;
  } rsp;
 } params;
} __attribute__((__packed__));
struct iface_rx_filter_ctx {
 uint32_t global_flags_mask;
 uint32_t global_flags;
 uint32_t iface_flags_mask;
 uint32_t iface_flags;
 uint32_t if_id;
 uint32_t num_mcast;
 struct mbx_mcast_addr {
  uint8_t byte[6];
 } mac[64];
} __attribute__((__packed__));
struct mbx_set_common_iface_rx_filter {
 struct mbx_hdr hdr;
 union {
  struct iface_rx_filter_ctx req;
  struct iface_rx_filter_ctx rsp;
 } params;
} __attribute__((__packed__));
struct mbx_modify_common_eq_delay {
 struct mbx_hdr hdr;
 union {
  struct {
   uint32_t num_eq;
   struct {
    uint32_t eq_id;
    uint32_t phase;
    uint32_t dm;
   } delay[8];
  } req;
  struct {
   uint32_t rsvd0;
  } rsp;
 } params;
} __attribute__((__packed__));
struct mbx_add_common_iface_mac {
 struct mbx_hdr hdr;
 union {
  struct {
   uint32_t if_id;
   uint8_t mac_address[6];
   uint8_t rsvd0[2];
  } req;
  struct {
   uint32_t pmac_id;
  } rsp;
 } params;
} __attribute__((__packed__));
struct mbx_del_common_iface_mac {
 struct mbx_hdr hdr;
 union {
  struct {
   uint32_t if_id;
   uint32_t pmac_id;
  } req;
  struct {
   uint32_t rsvd0;
  } rsp;
 } params;
} __attribute__((__packed__));
struct mbx_query_common_max_mbx_buffer_size {
 struct mbx_hdr hdr;
 struct {
  uint32_t max_ioctl_bufsz;
 } rsp;
} __attribute__((__packed__));
struct ioctl_common_function_reset {
 struct mbx_hdr hdr;
} __attribute__((__packed__));
struct mbx_common_func_link_cfg {
 struct mbx_hdr hdr;
 union {
  struct {
   uint32_t enable;
  } req;
  struct {
   uint32_t rsvd0;
  } rsp;
 } params;
} __attribute__((__packed__));
struct mbx_common_set_function_cap {
 struct mbx_hdr hdr;
 union {
  struct {
   uint32_t valid_capability_flags;
   uint32_t capability_flags;
   uint8_t sbz[212];
  } req;
  struct {
   uint32_t valid_capability_flags;
   uint32_t capability_flags;
   uint8_t sbz[212];
  } rsp;
 } params;
} __attribute__((__packed__));
struct mbx_lowlevel_test_loopback_mode {
 struct mbx_hdr hdr;
 union {
  struct {
   uint32_t loopback_type;
   uint32_t num_pkts;
   uint64_t pattern;
   uint32_t src_port;
   uint32_t dest_port;
   uint32_t pkt_size;
  }req;
  struct {
   uint32_t status;
   uint32_t num_txfer;
   uint32_t num_rx;
   uint32_t miscomp_off;
   uint32_t ticks_compl;
  }rsp;
 } params;
} __attribute__((__packed__));
struct mbx_lowlevel_set_loopback_mode {
 struct mbx_hdr hdr;
 union {
  struct {
   uint8_t src_port;
   uint8_t dest_port;
   uint8_t loopback_type;
   uint8_t loopback_state;
  } req;
  struct {
   uint8_t rsvd0[4];
  } rsp;
 } params;
} __attribute__((__packed__));
enum LOWLEVEL_SUBSYS_OPCODES {
 OPCODE_LOWLEVEL_TEST_LOOPBACK = 18,
 OPCODE_LOWLEVEL_SET_LOOPBACK_MODE = 19,
 OPCODE_LOWLEVEL_GET_LOOPBACK_MODE = 20
};
enum LLDP_SUBSYS_OPCODES {
 OPCODE_LLDP_GET_CFG = 1,
 OPCODE_LLDP_SET_CFG = 2,
 OPCODE_LLDP_GET_STATS = 3
};
enum DCBX_SUBSYS_OPCODES {
 OPCODE_DCBX_GET_CFG = 1,
 OPCODE_DCBX_SET_CFG = 2,
 OPCODE_DCBX_GET_MIB_INFO = 3,
 OPCODE_DCBX_GET_DCBX_MODE = 4,
 OPCODE_DCBX_SET_MODE = 5
};
enum DMTF_SUBSYS_OPCODES {
 OPCODE_DMTF_EXEC_CLP_CMD = 1
};
enum DIAG_SUBSYS_OPCODES {
 OPCODE_DIAG_RUN_DMA_TEST = 1,
 OPCODE_DIAG_RUN_MDIO_TEST = 2,
 OPCODE_DIAG_RUN_NLB_TEST = 3,
 OPCODE_DIAG_RUN_ARM_TIMER_TEST = 4,
 OPCODE_DIAG_GET_MAC = 5
};
enum VENDOR_SUBSYS_OPCODES {
 OPCODE_VENDOR_SLI = 1
};
enum MGMT_STATUS_SUCCESS {
 MGMT_SUCCESS = 0,
 MGMT_FAILED = 1,
 MGMT_ILLEGAL_REQUEST = 2,
 MGMT_ILLEGAL_FIELD = 3,
 MGMT_INSUFFICIENT_BUFFER = 4,
 MGMT_UNAUTHORIZED_REQUEST = 5,
 MGMT_INVALID_ISNS_ADDRESS = 10,
 MGMT_INVALID_IPADDR = 11,
 MGMT_INVALID_GATEWAY = 12,
 MGMT_INVALID_SUBNETMASK = 13,
 MGMT_INVALID_TARGET_IPADDR = 16,
 MGMT_TGTTBL_FULL = 20,
 MGMT_FLASHROM_SAVE_FAILED = 23,
 MGMT_IOCTLHANDLE_ALLOC_FAILED = 27,
 MGMT_INVALID_SESSION = 31,
 MGMT_INVALID_CONNECTION = 32,
 MGMT_BTL_PATH_EXCEEDS_OSM_LIMIT = 33,
 MGMT_BTL_TGTID_EXCEEDS_OSM_LIMIT = 34,
 MGMT_BTL_PATH_TGTID_OCCUPIED = 35,
 MGMT_BTL_NO_FREE_SLOT_PATH = 36,
 MGMT_BTL_NO_FREE_SLOT_TGTID = 37,
 MGMT_POLL_IOCTL_TIMEOUT = 40,
 MGMT_ERROR_ACITISCSI = 41,
 MGMT_BUFFER_SIZE_EXCEED_OSM_OR_OS_LIMIT = 43,
 MGMT_REBOOT_REQUIRED = 44,
 MGMT_INSUFFICIENT_TIMEOUT = 45,
 MGMT_IPADDR_NOT_SET = 46,
 MGMT_IPADDR_DUP_DETECTED = 47,
 MGMT_CANT_REMOVE_LAST_CONNECTION = 48,
 MGMT_TARGET_BUSY = 49,
 MGMT_TGT_ERR_LISTEN_SOCKET = 50,
 MGMT_TGT_ERR_BIND_SOCKET = 51,
 MGMT_TGT_ERR_NO_SOCKET = 52,
 MGMT_TGT_ERR_ISNS_COMM_FAILED = 55,
 MGMT_CANNOT_DELETE_BOOT_TARGET = 56,
 MGMT_TGT_PORTAL_MODE_IN_LISTEN = 57,
 MGMT_FCF_IN_USE = 58 ,
 MGMT_NO_CQE = 59,
 MGMT_TARGET_NOT_FOUND = 65,
 MGMT_NOT_SUPPORTED = 66,
 MGMT_NO_FCF_RECORDS = 67,
 MGMT_FEATURE_NOT_SUPPORTED = 68,
 MGMT_VPD_FUNCTION_OUT_OF_RANGE = 69,
 MGMT_VPD_FUNCTION_TYPE_INCORRECT = 70,
 MGMT_INVALID_NON_EMBEDDED_WRB = 71,
 MGMT_OOR = 100,
 MGMT_INVALID_PD = 101,
 MGMT_STATUS_PD_INUSE = 102,
 MGMT_INVALID_CQ = 103,
 MGMT_INVALID_QP = 104,
 MGMT_INVALID_STAG = 105,
 MGMT_ORD_EXCEEDS = 106,
 MGMT_IRD_EXCEEDS = 107,
 MGMT_SENDQ_WQE_EXCEEDS = 108,
 MGMT_RECVQ_RQE_EXCEEDS = 109,
 MGMT_SGE_SEND_EXCEEDS = 110,
 MGMT_SGE_WRITE_EXCEEDS = 111,
 MGMT_SGE_RECV_EXCEEDS = 112,
 MGMT_INVALID_STATE_CHANGE = 113,
 MGMT_MW_BOUND = 114,
 MGMT_INVALID_VA = 115,
 MGMT_INVALID_LENGTH = 116,
 MGMT_INVALID_FBO = 117,
 MGMT_INVALID_ACC_RIGHTS = 118,
 MGMT_INVALID_PBE_SIZE = 119,
 MGMT_INVALID_PBL_ENTRY = 120,
 MGMT_INVALID_PBL_OFFSET = 121,
 MGMT_ADDR_NON_EXIST = 122,
 MGMT_INVALID_VLANID = 123,
 MGMT_INVALID_MTU = 124,
 MGMT_INVALID_BACKLOG = 125,
 MGMT_CONNECTION_INPROGRESS = 126,
 MGMT_INVALID_RQE_SIZE = 127,
 MGMT_INVALID_RQE_ENTRY = 128
};
enum MGMT_ADDI_STATUS {
 MGMT_ADDI_NO_STATUS = 0,
 MGMT_ADDI_INVALID_IPTYPE = 1,
 MGMT_ADDI_TARGET_HANDLE_NOT_FOUND = 9,
 MGMT_ADDI_SESSION_HANDLE_NOT_FOUND = 10,
 MGMT_ADDI_CONNECTION_HANDLE_NOT_FOUND = 11,
 MGMT_ADDI_ACTIVE_SESSIONS_PRESENT = 16,
 MGMT_ADDI_SESSION_ALREADY_OPENED = 17,
 MGMT_ADDI_SESSION_ALREADY_CLOSED = 18,
 MGMT_ADDI_DEST_HOST_UNREACHABLE = 19,
 MGMT_ADDI_LOGIN_IN_PROGRESS = 20,
 MGMT_ADDI_TCP_CONNECT_FAILED = 21,
 MGMT_ADDI_INSUFFICIENT_RESOURCES = 22,
 MGMT_ADDI_LINK_DOWN = 23,
 MGMT_ADDI_DHCP_ERROR = 24,
 MGMT_ADDI_CONNECTION_OFFLOADED = 25,
 MGMT_ADDI_CONNECTION_NOT_OFFLOADED = 26,
 MGMT_ADDI_CONNECTION_UPLOAD_IN_PROGRESS = 27,
 MGMT_ADDI_REQUEST_REJECTED = 28,
 MGMT_ADDI_INVALID_SUBSYSTEM = 29,
 MGMT_ADDI_INVALID_OPCODE = 30,
 MGMT_ADDI_INVALID_MAXCONNECTION_PARAM = 31,
 MGMT_ADDI_INVALID_KEY = 32,
 MGMT_ADDI_INVALID_DOMAIN = 35,
 MGMT_ADDI_LOGIN_INITIATOR_ERROR = 43,
 MGMT_ADDI_LOGIN_AUTHENTICATION_ERROR = 44,
 MGMT_ADDI_LOGIN_AUTHORIZATION_ERROR = 45,
 MGMT_ADDI_LOGIN_NOT_FOUND = 46,
 MGMT_ADDI_LOGIN_TARGET_REMOVED = 47,
 MGMT_ADDI_LOGIN_UNSUPPORTED_VERSION = 48,
 MGMT_ADDI_LOGIN_TOO_MANY_CONNECTIONS = 49,
 MGMT_ADDI_LOGIN_MISSING_PARAMETER = 50,
 MGMT_ADDI_LOGIN_NO_SESSION_SPANNING = 51,
 MGMT_ADDI_LOGIN_SESSION_TYPE_NOT_SUPPORTED = 52,
 MGMT_ADDI_LOGIN_SESSION_DOES_NOT_EXIST = 53,
 MGMT_ADDI_LOGIN_INVALID_DURING_LOGIN = 54,
 MGMT_ADDI_LOGIN_TARGET_ERROR = 55,
 MGMT_ADDI_LOGIN_SERVICE_UNAVAILABLE = 56,
 MGMT_ADDI_LOGIN_OUT_OF_RESOURCES = 57,
 MGMT_ADDI_SAME_CHAP_SECRET = 58,
 MGMT_ADDI_INVALID_SECRET_LENGTH = 59,
 MGMT_ADDI_DUPLICATE_ENTRY = 60,
 MGMT_ADDI_SETTINGS_MODIFIED_REBOOT_REQD = 63,
 MGMT_ADDI_INVALID_EXTENDED_TIMEOUT = 64,
 MGMT_ADDI_INVALID_INTERFACE_HANDLE = 65,
 MGMT_ADDI_ERR_VLAN_ON_DEF_INTERFACE = 66,
 MGMT_ADDI_INTERFACE_DOES_NOT_EXIST = 67,
 MGMT_ADDI_INTERFACE_ALREADY_EXISTS = 68,
 MGMT_ADDI_INVALID_VLAN_RANGE = 69,
 MGMT_ADDI_ERR_SET_VLAN = 70,
 MGMT_ADDI_ERR_DEL_VLAN = 71,
 MGMT_ADDI_CANNOT_DEL_DEF_INTERFACE = 72,
 MGMT_ADDI_DHCP_REQ_ALREADY_PENDING = 73,
 MGMT_ADDI_TOO_MANY_INTERFACES = 74,
 MGMT_ADDI_INVALID_REQUEST = 75
};
enum NIC_SUBSYS_OPCODES {
 OPCODE_NIC_CONFIG_RSS = 1,
 OPCODE_NIC_CONFIG_ACPI = 2,
 OPCODE_NIC_CONFIG_PROMISCUOUS = 3,
 OPCODE_NIC_GET_STATS = 4,
 OPCODE_NIC_CREATE_WQ = 7,
 OPCODE_NIC_CREATE_RQ = 8,
 OPCODE_NIC_DELETE_WQ = 9,
 OPCODE_NIC_DELETE_RQ = 10,
 OPCODE_NIC_CONFIG_ACPI_WOL_MAGIC = 12,
 OPCODE_NIC_GET_NETWORK_STATS = 13,
 OPCODE_NIC_CREATE_HDS_RQ = 16,
 OPCODE_NIC_DELETE_HDS_RQ = 17,
 OPCODE_NIC_GET_PPORT_STATS = 18,
 OPCODE_NIC_GET_VPORT_STATS = 19,
 OPCODE_NIC_GET_QUEUE_STATS = 20
};
struct oce_nic_hdr_wqe {
 union {
  struct {
   uint32_t rsvd0;
   uint32_t last_seg_udp_len:14;
   uint32_t rsvd1:18;
   uint32_t lso_mss:14;
   uint32_t num_wqe:5;
   uint32_t rsvd4:2;
   uint32_t vlan:1;
   uint32_t lso:1;
   uint32_t tcpcs:1;
   uint32_t udpcs:1;
   uint32_t ipcs:1;
   uint32_t rsvd3:1;
   uint32_t rsvd2:1;
   uint32_t forward:1;
   uint32_t crc:1;
   uint32_t event:1;
   uint32_t complete:1;
   uint32_t vlan_tag:16;
   uint32_t total_length:16;
  } s;
  uint32_t dw[4];
 } u0;
} __attribute__((__packed__));
struct oce_nic_frag_wqe {
 union {
  struct {
   uint32_t frag_pa_hi;
   uint32_t frag_pa_lo;
   uint32_t rsvd0;
   uint32_t frag_len;
  } s;
  uint32_t dw[4];
 } u0;
} __attribute__((__packed__));
struct oce_nic_tx_cqe {
 union {
  struct {
   uint32_t status:4;
   uint32_t rsvd0:8;
   uint32_t port:2;
   uint32_t ct:2;
   uint32_t wqe_index:16;
   uint32_t rsvd1:5;
   uint32_t cast_enc:2;
   uint32_t lso:1;
   uint32_t nwh_bytes:8;
   uint32_t user_bytes:16;
   uint32_t rsvd2;
   uint32_t valid:1;
   uint32_t rsvd3:4;
   uint32_t wq_id:11;
   uint32_t num_pkts:16;
  } s;
  uint32_t dw[4];
 } u0;
} __attribute__((__packed__));
struct oce_nic_rqe {
 union {
  struct {
   uint32_t frag_pa_hi;
   uint32_t frag_pa_lo;
  } s;
  uint32_t dw[2];
 } u0;
} __attribute__((__packed__));
struct oce_nic_rx_cqe {
 union {
  struct {
   uint32_t ip_options:1;
   uint32_t port:1;
   uint32_t pkt_size:14;
   uint32_t vlan_tag:16;
   uint32_t num_fragments:3;
   uint32_t switched:1;
   uint32_t ct:2;
   uint32_t frag_index:10;
   uint32_t rsvd0:1;
   uint32_t vlan_tag_present:1;
   uint32_t mac_dst:6;
   uint32_t ip_ver:1;
   uint32_t l4_cksum_pass:1;
   uint32_t ip_cksum_pass:1;
   uint32_t udpframe:1;
   uint32_t tcpframe:1;
   uint32_t ipframe:1;
   uint32_t rss_hp:1;
   uint32_t error:1;
   uint32_t valid:1;
   uint32_t hds_type:2;
   uint32_t lro_pkt:1;
   uint32_t rsvd4:1;
   uint32_t hds_hdr_size:12;
   uint32_t hds_hdr_frag_index:10;
   uint32_t rss_bank:1;
   uint32_t qnq:1;
   uint32_t pkt_type:2;
   uint32_t rss_flush:1;
   uint32_t rss_hash_value;
  } s;
  uint32_t dw[4];
 } u0;
} __attribute__((__packed__));
struct oce_nic_rx_cqe_v1 {
 union {
  struct {
   uint32_t ip_options:1;
   uint32_t vlan_tag_present:1;
   uint32_t pkt_size:14;
   uint32_t vlan_tag:16;
   uint32_t num_fragments:3;
   uint32_t switched:1;
   uint32_t ct:2;
   uint32_t frag_index:10;
   uint32_t rsvd0:1;
   uint32_t mac_dst:7;
   uint32_t ip_ver:1;
   uint32_t l4_cksum_pass:1;
   uint32_t ip_cksum_pass:1;
   uint32_t udpframe:1;
   uint32_t tcpframe:1;
   uint32_t ipframe:1;
   uint32_t rss_hp:1;
   uint32_t error:1;
   uint32_t valid:1;
   uint32_t rsvd4:13;
   uint32_t hds_hdr_size:2;
   uint32_t hds_hdr_frag_index:8;
   uint32_t vlantag:1;
   uint32_t port:2;
   uint32_t rss_bank:1;
   uint32_t qnq:1;
   uint32_t pkt_type:2;
   uint32_t rss_flush:1;
   uint32_t rss_hash_value;
  } s;
  uint32_t dw[4];
 } u0;
} __attribute__((__packed__));
struct mbx_config_nic_promiscuous {
 struct mbx_hdr hdr;
 union {
  struct {
   uint16_t rsvd0;
   uint8_t port1_promisc;
   uint8_t port0_promisc;
  } req;
  struct {
   uint32_t rsvd0;
  } rsp;
 } params;
} __attribute__((__packed__));
union oce_wq_ctx {
  uint32_t dw[17];
  struct {
   uint32_t dw4rsvd2:8;
   uint32_t nic_wq_type:8;
   uint32_t dw4rsvd1:8;
   uint32_t num_pages:8;
   uint32_t dw5rsvd2:12;
   uint32_t wq_size:4;
   uint32_t dw5rsvd1:16;
   uint32_t valid:1;
   uint32_t dw6rsvd1:31;
   uint32_t dw7rsvd1:16;
   uint32_t cq_id:16;
   uint32_t dw8_20rsvd1[13];
  } v0;
  struct {
   uint32_t dw4rsvd2:8;
   uint32_t nic_wq_type:8;
   uint32_t dw4rsvd1:8;
   uint32_t num_pages:8;
   uint32_t dw5rsvd2:12;
   uint32_t wq_size:4;
   uint32_t iface_id:16;
   uint32_t valid:1;
   uint32_t dw6rsvd1:31;
   uint32_t dw7rsvd1:16;
   uint32_t cq_id:16;
   uint32_t dw8_20rsvd1[13];
  } v1;
} __attribute__((__packed__));
struct mbx_create_nic_wq {
 struct mbx_hdr hdr;
 union {
  struct {
   uint8_t num_pages;
   uint8_t ulp_num;
   uint16_t nic_wq_type;
   uint16_t if_id;
   uint8_t wq_size;
   uint8_t rsvd1;
   uint32_t rsvd2;
   uint16_t cq_id;
   uint16_t rsvd3;
   uint32_t rsvd4[13];
   struct oce_pa pages[8];
  } req;
  struct {
   uint16_t wq_id;
   uint16_t rid;
   uint32_t db_offset;
   uint8_t tc_id;
   uint8_t rsvd0[3];
  } rsp;
 } params;
} __attribute__((__packed__));
struct mbx_delete_nic_wq {
 struct mbx_hdr hdr;
 union {
  struct {
   uint16_t rsvd0;
   uint16_t wq_id;
  } req;
  struct {
   uint32_t rsvd0;
  } rsp;
 } params;
} __attribute__((__packed__));
struct mbx_create_nic_rq {
 struct mbx_hdr hdr;
 union {
  struct {
   uint16_t cq_id;
   uint8_t frag_size;
   uint8_t num_pages;
   struct oce_pa pages[2];
   uint32_t if_id;
   uint16_t max_frame_size;
   uint16_t page_size;
   uint32_t is_rss_queue;
  } req;
  struct {
   uint16_t rq_id;
   uint8_t rss_cpuid;
   uint8_t rsvd0;
  } rsp;
 } params;
} __attribute__((__packed__));
struct mbx_delete_nic_rq {
 struct mbx_hdr hdr;
 union {
  struct {
   uint16_t bypass_flush;
   uint16_t rq_id;
  } req;
  struct {
   uint32_t rsvd0;
  } rsp;
 } params;
} __attribute__((__packed__));
struct oce_port_rxf_stats_v0 {
 uint32_t rx_bytes_lsd;
 uint32_t rx_bytes_msd;
 uint32_t rx_total_frames;
 uint32_t rx_unicast_frames;
 uint32_t rx_multicast_frames;
 uint32_t rx_broadcast_frames;
 uint32_t rx_crc_errors;
 uint32_t rx_alignment_symbol_errors;
 uint32_t rx_pause_frames;
 uint32_t rx_control_frames;
 uint32_t rx_in_range_errors;
 uint32_t rx_out_range_errors;
 uint32_t rx_frame_too_long;
 uint32_t rx_address_match_errors;
 uint32_t rx_vlan_mismatch;
 uint32_t rx_dropped_too_small;
 uint32_t rx_dropped_too_short;
 uint32_t rx_dropped_header_too_small;
 uint32_t rx_dropped_tcp_length;
 uint32_t rx_dropped_runt;
 uint32_t rx_64_byte_packets;
 uint32_t rx_65_127_byte_packets;
 uint32_t rx_128_256_byte_packets;
 uint32_t rx_256_511_byte_packets;
 uint32_t rx_512_1023_byte_packets;
 uint32_t rx_1024_1518_byte_packets;
 uint32_t rx_1519_2047_byte_packets;
 uint32_t rx_2048_4095_byte_packets;
 uint32_t rx_4096_8191_byte_packets;
 uint32_t rx_8192_9216_byte_packets;
 uint32_t rx_ip_checksum_errs;
 uint32_t rx_tcp_checksum_errs;
 uint32_t rx_udp_checksum_errs;
 uint32_t rx_non_rss_packets;
 uint32_t rx_ipv4_packets;
 uint32_t rx_ipv6_packets;
 uint32_t rx_ipv4_bytes_lsd;
 uint32_t rx_ipv4_bytes_msd;
 uint32_t rx_ipv6_bytes_lsd;
 uint32_t rx_ipv6_bytes_msd;
 uint32_t rx_chute1_packets;
 uint32_t rx_chute2_packets;
 uint32_t rx_chute3_packets;
 uint32_t rx_management_packets;
 uint32_t rx_switched_unicast_packets;
 uint32_t rx_switched_multicast_packets;
 uint32_t rx_switched_broadcast_packets;
 uint32_t tx_bytes_lsd;
 uint32_t tx_bytes_msd;
 uint32_t tx_unicastframes;
 uint32_t tx_multicastframes;
 uint32_t tx_broadcastframes;
 uint32_t tx_pauseframes;
 uint32_t tx_controlframes;
 uint32_t tx_64_byte_packets;
 uint32_t tx_65_127_byte_packets;
 uint32_t tx_128_256_byte_packets;
 uint32_t tx_256_511_byte_packets;
 uint32_t tx_512_1023_byte_packets;
 uint32_t tx_1024_1518_byte_packets;
 uint32_t tx_1519_2047_byte_packets;
 uint32_t tx_2048_4095_byte_packets;
 uint32_t tx_4096_8191_byte_packets;
 uint32_t tx_8192_9216_byte_packets;
 uint32_t rxpp_fifo_overflow_drop;
 uint32_t rx_input_fifo_overflow_drop;
} __attribute__((__packed__));
struct oce_rxf_stats_v0 {
 struct oce_port_rxf_stats_v0 port[2];
 uint32_t rx_drops_no_pbuf;
 uint32_t rx_drops_no_txpb;
 uint32_t rx_drops_no_erx_descr;
 uint32_t rx_drops_no_tpre_descr;
 uint32_t management_rx_port_packets;
 uint32_t management_rx_port_bytes;
 uint32_t management_rx_port_pause_frames;
 uint32_t management_rx_port_errors;
 uint32_t management_tx_port_packets;
 uint32_t management_tx_port_bytes;
 uint32_t management_tx_port_pause;
 uint32_t management_rx_port_rxfifo_overflow;
 uint32_t rx_drops_too_many_frags;
 uint32_t rx_drops_invalid_ring;
 uint32_t forwarded_packets;
 uint32_t rx_drops_mtu;
 uint32_t rsvd0[7];
 uint32_t port0_jabber_events;
 uint32_t port1_jabber_events;
 uint32_t rsvd1[6];
} __attribute__((__packed__));
struct oce_port_rxf_stats_v1 {
 uint32_t rsvd0[12];
 uint32_t rx_crc_errors;
 uint32_t rx_alignment_symbol_errors;
 uint32_t rx_pause_frames;
 uint32_t rx_priority_pause_frames;
 uint32_t rx_control_frames;
 uint32_t rx_in_range_errors;
 uint32_t rx_out_range_errors;
 uint32_t rx_frame_too_long;
 uint32_t rx_address_match_errors;
 uint32_t rx_dropped_too_small;
 uint32_t rx_dropped_too_short;
 uint32_t rx_dropped_header_too_small;
 uint32_t rx_dropped_tcp_length;
 uint32_t rx_dropped_runt;
 uint32_t rsvd1[10];
 uint32_t rx_ip_checksum_errs;
 uint32_t rx_tcp_checksum_errs;
 uint32_t rx_udp_checksum_errs;
 uint32_t rsvd2[7];
 uint32_t rx_switched_unicast_packets;
 uint32_t rx_switched_multicast_packets;
 uint32_t rx_switched_broadcast_packets;
 uint32_t rsvd3[3];
 uint32_t tx_pauseframes;
 uint32_t tx_priority_pauseframes;
 uint32_t tx_controlframes;
 uint32_t rsvd4[10];
 uint32_t rxpp_fifo_overflow_drop;
 uint32_t rx_input_fifo_overflow_drop;
 uint32_t pmem_fifo_overflow_drop;
 uint32_t jabber_events;
 uint32_t rsvd5[3];
} __attribute__((__packed__));
struct oce_rxf_stats_v1 {
 struct oce_port_rxf_stats_v1 port[4];
 uint32_t rsvd0[2];
 uint32_t rx_drops_no_pbuf;
 uint32_t rx_drops_no_txpb;
 uint32_t rx_drops_no_erx_descr;
 uint32_t rx_drops_no_tpre_descr;
 uint32_t rsvd1[6];
 uint32_t rx_drops_too_many_frags;
 uint32_t rx_drops_invalid_ring;
 uint32_t forwarded_packets;
 uint32_t rx_drops_mtu;
 uint32_t rsvd2[14];
} __attribute__((__packed__));
struct oce_erx_stats_v1 {
 uint32_t rx_drops_no_fragments[68];
 uint32_t rsvd[4];
} __attribute__((__packed__));
struct oce_erx_stats_v0 {
 uint32_t rx_drops_no_fragments[44];
 uint32_t rsvd[4];
} __attribute__((__packed__));
struct oce_pmem_stats {
 uint32_t eth_red_drops;
 uint32_t rsvd[5];
} __attribute__((__packed__));
struct oce_hw_stats_v1 {
 struct oce_rxf_stats_v1 rxf;
 uint32_t rsvd0[48];
 struct oce_erx_stats_v1 erx;
 struct oce_pmem_stats pmem;
 uint32_t rsvd1[18];
} __attribute__((__packed__));
struct oce_hw_stats_v0 {
 struct oce_rxf_stats_v0 rxf;
 uint32_t rsvd[48];
 struct oce_erx_stats_v0 erx;
 struct oce_pmem_stats pmem;
} __attribute__((__packed__));
struct mbx_get_nic_stats_v0 {
 struct mbx_hdr hdr;
 union {
  struct {
   uint32_t rsvd0;
  } req;
  union {
   struct oce_hw_stats_v0 stats;
  } rsp;
 } params;
} __attribute__((__packed__));
struct mbx_get_nic_stats {
 struct mbx_hdr hdr;
 union {
  struct {
   uint32_t rsvd0;
  } req;
  struct {
   struct oce_hw_stats_v1 stats;
  } rsp;
 } params;
} __attribute__((__packed__));
struct oce_pport_stats {
 uint64_t tx_pkts;
 uint64_t tx_unicast_pkts;
 uint64_t tx_multicast_pkts;
 uint64_t tx_broadcast_pkts;
 uint64_t tx_bytes;
 uint64_t tx_unicast_bytes;
 uint64_t tx_multicast_bytes;
 uint64_t tx_broadcast_bytes;
 uint64_t tx_discards;
 uint64_t tx_errors;
 uint64_t tx_pause_frames;
 uint64_t tx_pause_on_frames;
 uint64_t tx_pause_off_frames;
 uint64_t tx_internal_mac_errors;
 uint64_t tx_control_frames;
 uint64_t tx_pkts_64_bytes;
 uint64_t tx_pkts_65_to_127_bytes;
 uint64_t tx_pkts_128_to_255_bytes;
 uint64_t tx_pkts_256_to_511_bytes;
 uint64_t tx_pkts_512_to_1023_bytes;
 uint64_t tx_pkts_1024_to_1518_bytes;
 uint64_t tx_pkts_1519_to_2047_bytes;
 uint64_t tx_pkts_2048_to_4095_bytes;
 uint64_t tx_pkts_4096_to_8191_bytes;
 uint64_t tx_pkts_8192_to_9216_bytes;
 uint64_t tx_lso_pkts;
 uint64_t rx_pkts;
 uint64_t rx_unicast_pkts;
 uint64_t rx_multicast_pkts;
 uint64_t rx_broadcast_pkts;
 uint64_t rx_bytes;
 uint64_t rx_unicast_bytes;
 uint64_t rx_multicast_bytes;
 uint64_t rx_broadcast_bytes;
 uint32_t rx_unknown_protos;
 uint32_t reserved_word69;
 uint64_t rx_discards;
 uint64_t rx_errors;
 uint64_t rx_crc_errors;
 uint64_t rx_alignment_errors;
 uint64_t rx_symbol_errors;
 uint64_t rx_pause_frames;
 uint64_t rx_pause_on_frames;
 uint64_t rx_pause_off_frames;
 uint64_t rx_frames_too_long;
 uint64_t rx_internal_mac_errors;
 uint32_t rx_undersize_pkts;
 uint32_t rx_oversize_pkts;
 uint32_t rx_fragment_pkts;
 uint32_t rx_jabbers;
 uint64_t rx_control_frames;
 uint64_t rx_control_frames_unknown_opcode;
 uint32_t rx_in_range_errors;
 uint32_t rx_out_of_range_errors;
 uint32_t rx_address_match_errors;
 uint32_t rx_vlan_mismatch_errors;
 uint32_t rx_dropped_too_small;
 uint32_t rx_dropped_too_short;
 uint32_t rx_dropped_header_too_small;
 uint32_t rx_dropped_invalid_tcp_length;
 uint32_t rx_dropped_runt;
 uint32_t rx_ip_checksum_errors;
 uint32_t rx_tcp_checksum_errors;
 uint32_t rx_udp_checksum_errors;
 uint32_t rx_non_rss_pkts;
 uint64_t reserved_word111;
 uint64_t rx_ipv4_pkts;
 uint64_t rx_ipv6_pkts;
 uint64_t rx_ipv4_bytes;
 uint64_t rx_ipv6_bytes;
 uint64_t rx_nic_pkts;
 uint64_t rx_tcp_pkts;
 uint64_t rx_iscsi_pkts;
 uint64_t rx_management_pkts;
 uint64_t rx_switched_unicast_pkts;
 uint64_t rx_switched_multicast_pkts;
 uint64_t rx_switched_broadcast_pkts;
 uint64_t num_forwards;
 uint32_t rx_fifo_overflow;
 uint32_t rx_input_fifo_overflow;
 uint64_t rx_drops_too_many_frags;
 uint32_t rx_drops_invalid_queue;
 uint32_t reserved_word141;
 uint64_t rx_drops_mtu;
 uint64_t rx_pkts_64_bytes;
 uint64_t rx_pkts_65_to_127_bytes;
 uint64_t rx_pkts_128_to_255_bytes;
 uint64_t rx_pkts_256_to_511_bytes;
 uint64_t rx_pkts_512_to_1023_bytes;
 uint64_t rx_pkts_1024_to_1518_bytes;
 uint64_t rx_pkts_1519_to_2047_bytes;
 uint64_t rx_pkts_2048_to_4095_bytes;
 uint64_t rx_pkts_4096_to_8191_bytes;
 uint64_t rx_pkts_8192_to_9216_bytes;
} __attribute__((__packed__));
struct mbx_get_pport_stats {
 struct mbx_hdr hdr;
 union {
  struct {
   uint32_t reset_stats:8;
   uint32_t rsvd0:8;
   uint32_t port_number:16;
  } req;
  union {
   struct oce_pport_stats pps;
   uint32_t pport_stats[164 - 4 + 1];
  } rsp;
 } params;
} __attribute__((__packed__));
struct oce_vport_stats {
 uint64_t tx_pkts;
 uint64_t tx_unicast_pkts;
 uint64_t tx_multicast_pkts;
 uint64_t tx_broadcast_pkts;
 uint64_t tx_bytes;
 uint64_t tx_unicast_bytes;
 uint64_t tx_multicast_bytes;
 uint64_t tx_broadcast_bytes;
 uint64_t tx_discards;
 uint64_t tx_errors;
 uint64_t tx_pkts_64_bytes;
 uint64_t tx_pkts_65_to_127_bytes;
 uint64_t tx_pkts_128_to_255_bytes;
 uint64_t tx_pkts_256_to_511_bytes;
 uint64_t tx_pkts_512_to_1023_bytes;
 uint64_t tx_pkts_1024_to_1518_bytes;
 uint64_t tx_pkts_1519_to_9699_bytes;
 uint64_t tx_pkts_over_9699_bytes;
 uint64_t rx_pkts;
 uint64_t rx_unicast_pkts;
 uint64_t rx_multicast_pkts;
 uint64_t rx_broadcast_pkts;
 uint64_t rx_bytes;
 uint64_t rx_unicast_bytes;
 uint64_t rx_multicast_bytes;
 uint64_t rx_broadcast_bytes;
 uint64_t rx_discards;
 uint64_t rx_errors;
 uint64_t rx_pkts_64_bytes;
 uint64_t rx_pkts_65_to_127_bytes;
 uint64_t rx_pkts_128_to_255_bytes;
 uint64_t rx_pkts_256_to_511_bytes;
 uint64_t rx_pkts_512_to_1023_bytes;
 uint64_t rx_pkts_1024_to_1518_bytes;
 uint64_t rx_pkts_1519_to_9699_bytes;
 uint64_t rx_pkts_gt_9699_bytes;
} __attribute__((__packed__));
struct mbx_get_vport_stats {
 struct mbx_hdr hdr;
 union {
  struct {
   uint32_t reset_stats:8;
   uint32_t rsvd0:8;
   uint32_t vport_number:16;
  } req;
  union {
   struct oce_vport_stats vps;
   uint32_t vport_stats[75 - 4 + 1];
  } rsp;
 } params;
} __attribute__((__packed__));
enum RSS_ENABLE_FLAGS {
 RSS_ENABLE_NONE = 0x0,
 RSS_ENABLE_IPV4 = 0x1,
 RSS_ENABLE_TCP_IPV4 = 0x2,
 RSS_ENABLE_IPV6 = 0x4,
 RSS_ENABLE_TCP_IPV6 = 0x8
};
struct mbx_config_nic_rss {
 struct mbx_hdr hdr;
 union {
  struct {
   uint32_t if_id;
   uint16_t cpu_tbl_sz_log2;
   uint16_t enable_rss;
   uint32_t hash[10];
   uint8_t cputable[128];
   uint8_t rsvd[3];
   uint8_t flush;
  } req;
  struct {
   uint8_t rsvd[3];
   uint8_t rss_bank;
  } rsp;
 } params;
} __attribute__((__packed__));
static inline int
ilog2(unsigned int v)
{
 int r = 0;
 while (v >>= 1)
  r++;
 return (r);
}
struct oce_pkt {
 struct mbuf * mbuf;
 bus_dmamap_t map;
 int nsegs;
 struct { struct oce_pkt *sqe_next; } entry;
};
struct oce_pkt_list { struct oce_pkt *sqh_first; struct oce_pkt **sqh_last; };
struct oce_dma_mem {
 bus_dma_tag_t tag;
 bus_dmamap_t map;
 bus_dma_segment_t segs;
 int nsegs;
 bus_size_t size;
 caddr_t vaddr;
 bus_addr_t paddr;
};
struct oce_ring {
 int index;
 int nitems;
 int nused;
 int isize;
 struct oce_dma_mem dma;
};
struct oce_softc;
enum cq_len {
 CQ_LEN_256 = 256,
 CQ_LEN_512 = 512,
 CQ_LEN_1024 = 1024
};
enum eq_len {
 EQ_LEN_256 = 256,
 EQ_LEN_512 = 512,
 EQ_LEN_1024 = 1024,
 EQ_LEN_2048 = 2048,
 EQ_LEN_4096 = 4096
};
enum eqe_size {
 EQE_SIZE_4 = 4,
 EQE_SIZE_16 = 16
};
enum qtype {
 QTYPE_EQ,
 QTYPE_MQ,
 QTYPE_WQ,
 QTYPE_RQ,
 QTYPE_CQ,
 QTYPE_RSS
};
struct oce_eq {
 struct oce_softc * sc;
 struct oce_ring * ring;
 enum qtype type;
 int id;
 struct oce_cq * cq[8];
 int cq_valid;
 int nitems;
 int isize;
 int delay;
};
struct oce_cq {
 struct oce_softc * sc;
 struct oce_ring * ring;
 enum qtype type;
 int id;
 struct oce_eq * eq;
 void (*cq_intr)(void *);
 void * cb_arg;
 int nitems;
 int nodelay;
 int eventable;
 int ncoalesce;
};
struct oce_mq {
 struct oce_softc * sc;
 struct oce_ring * ring;
 enum qtype type;
 int id;
 struct oce_cq * cq;
 int nitems;
};
struct oce_wq {
 struct oce_softc * sc;
 struct oce_ring * ring;
 enum qtype type;
 int id;
 struct oce_cq * cq;
 struct oce_pkt_list pkt_list;
 struct oce_pkt_list pkt_free;
 int nitems;
};
struct oce_rq {
 struct oce_softc * sc;
 struct oce_ring * ring;
 enum qtype type;
 int id;
 struct oce_cq * cq;
 struct if_rxring rxring;
 struct oce_pkt_list pkt_list;
 struct oce_pkt_list pkt_free;
 uint32_t rss_cpuid;
 int nitems;
 int fragsize;
 int mtu;
 int rss;
};
struct oce_softc {
 struct device sc_dev;
 uint sc_flags;
 bus_dma_tag_t sc_dmat;
 bus_space_tag_t sc_cfg_iot;
 bus_space_handle_t sc_cfg_ioh;
 bus_size_t sc_cfg_size;
 bus_space_tag_t sc_csr_iot;
 bus_space_handle_t sc_csr_ioh;
 bus_size_t sc_csr_size;
 bus_space_tag_t sc_db_iot;
 bus_space_handle_t sc_db_ioh;
 bus_size_t sc_db_size;
 void * sc_ih;
 struct arpcom sc_ac;
 struct ifmedia sc_media;
 ushort sc_link_up;
 ushort sc_link_speed;
 uint64_t sc_fc;
 struct oce_dma_mem sc_mbx;
 struct oce_dma_mem sc_pld;
 uint sc_port;
 uint sc_fmode;
 struct oce_wq * sc_wq[8];
 struct oce_rq * sc_rq[4 + 1];
 struct oce_cq * sc_cq[4 + 1 + 8 + 1];
 struct oce_eq * sc_eq[32];
 struct oce_mq * sc_mq;
 ushort sc_neq;
 ushort sc_ncq;
 ushort sc_nrq;
 ushort sc_nwq;
 ushort sc_nintr;
 ushort sc_tx_ring_size;
 ushort sc_rx_ring_size;
 ushort sc_rss_enable;
 uint32_t sc_if_id;
 uint32_t sc_pmac_id;
 char sc_macaddr[6];
 uint32_t sc_pvid;
 uint64_t sc_rx_errors;
 uint64_t sc_tx_errors;
 struct timeout sc_tick;
 struct timeout sc_rxrefill;
 void * sc_statcmd;
};
int oce_match(struct device *, void *, void *);
void oce_attach(struct device *, struct device *, void *);
int oce_pci_alloc(struct oce_softc *, struct pci_attach_args *);
void oce_attachhook(struct device *);
void oce_attach_ifp(struct oce_softc *);
int oce_ioctl(struct ifnet *, u_long, caddr_t);
int oce_rxrinfo(struct oce_softc *, struct if_rxrinfo *);
void oce_iff(struct oce_softc *);
void oce_link_status(struct oce_softc *);
void oce_media_status(struct ifnet *, struct ifmediareq *);
int oce_media_change(struct ifnet *);
void oce_tick(void *);
void oce_init(void *);
void oce_stop(struct oce_softc *);
void oce_watchdog(struct ifnet *);
void oce_start(struct ifnet *);
int oce_encap(struct oce_softc *, struct mbuf **, int wqidx);
int oce_intr(void *);
void oce_intr_wq(void *);
void oce_txeof(struct oce_wq *);
void oce_intr_rq(void *);
void oce_rxeof(struct oce_rq *, struct oce_nic_rx_cqe *);
void oce_rxeoc(struct oce_rq *, struct oce_nic_rx_cqe *);
int oce_vtp_valid(struct oce_softc *, struct oce_nic_rx_cqe *);
int oce_port_valid(struct oce_softc *, struct oce_nic_rx_cqe *);
int oce_get_buf(struct oce_rq *);
int oce_alloc_rx_bufs(struct oce_rq *);
void oce_refill_rx(void *);
void oce_free_posted_rxbuf(struct oce_rq *);
void oce_intr_mq(void *);
void oce_link_event(struct oce_softc *,
     struct oce_async_cqe_link_state *);
int oce_init_queues(struct oce_softc *);
void oce_release_queues(struct oce_softc *);
struct oce_wq *oce_create_wq(struct oce_softc *, struct oce_eq *);
void oce_drain_wq(struct oce_wq *);
void oce_destroy_wq(struct oce_wq *);
struct oce_rq *
 oce_create_rq(struct oce_softc *, struct oce_eq *, int rss);
void oce_drain_rq(struct oce_rq *);
void oce_destroy_rq(struct oce_rq *);
struct oce_eq *
 oce_create_eq(struct oce_softc *);
static inline void
 oce_arm_eq(struct oce_eq *, int neqe, int rearm, int clearint);
void oce_drain_eq(struct oce_eq *);
void oce_destroy_eq(struct oce_eq *);
struct oce_mq *
 oce_create_mq(struct oce_softc *, struct oce_eq *);
void oce_drain_mq(struct oce_mq *);
void oce_destroy_mq(struct oce_mq *);
struct oce_cq *
 oce_create_cq(struct oce_softc *, struct oce_eq *, int nitems,
     int isize, int eventable, int nodelay, int ncoalesce);
static inline void
 oce_arm_cq(struct oce_cq *, int ncqe, int rearm);
void oce_destroy_cq(struct oce_cq *);
int oce_dma_alloc(struct oce_softc *, bus_size_t, struct oce_dma_mem *);
void oce_dma_free(struct oce_softc *, struct oce_dma_mem *);
struct oce_ring *
 oce_create_ring(struct oce_softc *, int nitems, int isize, int maxseg);
void oce_destroy_ring(struct oce_softc *, struct oce_ring *);
int oce_load_ring(struct oce_softc *, struct oce_ring *,
     struct oce_pa *, int max_segs);
static inline void *
 oce_ring_get(struct oce_ring *);
static inline void *
 oce_ring_first(struct oce_ring *);
static inline void *
 oce_ring_next(struct oce_ring *);
struct oce_pkt *
 oce_pkt_alloc(struct oce_softc *, size_t size, int nsegs,
     int maxsegsz);
void oce_pkt_free(struct oce_softc *, struct oce_pkt *);
static inline struct oce_pkt *
 oce_pkt_get(struct oce_pkt_list *);
static inline void
 oce_pkt_put(struct oce_pkt_list *, struct oce_pkt *);
int oce_init_fw(struct oce_softc *);
int oce_mbox_init(struct oce_softc *);
int oce_mbox_dispatch(struct oce_softc *);
int oce_cmd(struct oce_softc *, int subsys, int opcode, int version,
     void *payload, int length);
void oce_first_mcc(struct oce_softc *);
int oce_get_fw_config(struct oce_softc *);
int oce_check_native_mode(struct oce_softc *);
int oce_create_iface(struct oce_softc *, uint8_t *macaddr);
int oce_config_vlan(struct oce_softc *, struct normal_vlan *vtags,
     int nvtags, int untagged, int promisc);
int oce_set_flow_control(struct oce_softc *, uint64_t);
int oce_config_rss(struct oce_softc *, int enable);
int oce_update_mcast(struct oce_softc *, uint8_t multi[][6],
     int naddr);
int oce_set_promisc(struct oce_softc *, int enable);
int oce_get_link_status(struct oce_softc *);
void oce_macaddr_set(struct oce_softc *);
int oce_macaddr_get(struct oce_softc *, uint8_t *macaddr);
int oce_macaddr_add(struct oce_softc *, uint8_t *macaddr, uint32_t *pmac);
int oce_macaddr_del(struct oce_softc *, uint32_t pmac);
int oce_new_rq(struct oce_softc *, struct oce_rq *);
int oce_new_wq(struct oce_softc *, struct oce_wq *);
int oce_new_mq(struct oce_softc *, struct oce_mq *);
int oce_new_eq(struct oce_softc *, struct oce_eq *);
int oce_new_cq(struct oce_softc *, struct oce_cq *);
int oce_init_stats(struct oce_softc *);
int oce_update_stats(struct oce_softc *);
int oce_stats_be2(struct oce_softc *, uint64_t *, uint64_t *);
int oce_stats_be3(struct oce_softc *, uint64_t *, uint64_t *);
int oce_stats_xe(struct oce_softc *, uint64_t *, uint64_t *);
struct pool *oce_pkt_pool;
struct cfdriver oce_cd = {
 ((void *)0), "oce", DV_IFNET
};
struct cfattach oce_ca = {
 sizeof(struct oce_softc), oce_match, oce_attach, ((void *)0), ((void *)0)
};
const struct pci_matchid oce_devices[] = {
 { 0x19a2, 0x0211 },
 { 0x19a2, 0x0221 },
 { 0x19a2, 0x0700 },
 { 0x19a2, 0x0710 },
 { 0x10df, 0xe220 },
};
int
oce_match(struct device *parent, void *match, void *aux)
{
 return (pci_matchbyid(aux, oce_devices, (sizeof((oce_devices)) / sizeof((oce_devices)[0]))));
}
void
oce_attach(struct device *parent, struct device *self, void *aux)
{
 struct pci_attach_args *pa = (struct pci_attach_args *)aux;
 struct oce_softc *sc = (struct oce_softc *)self;
 const char *intrstr = ((void *)0);
 pci_intr_handle_t ih;
 switch ((((pa->pa_id) >> 16) & 0xffff)) {
 case 0x0211:
 case 0x0700:
  ((sc->sc_flags) |= (0x00000001));
  break;
 case 0x0221:
 case 0x0710:
  ((sc->sc_flags) |= (0x00000002));
  break;
 case 0xe220:
  ((sc->sc_flags) |= (0x00000008));
  break;
 }
 sc->sc_dmat = pa->pa_dmat;
 if (oce_pci_alloc(sc, pa))
  return;
 sc->sc_tx_ring_size = 512;
 sc->sc_rx_ring_size = 1024;
 if (oce_dma_alloc(sc, sizeof(struct oce_bmbx), &sc->sc_mbx)) {
  printf(": failed to allocate mailbox memory\n");
  return;
 }
 if (oce_dma_alloc(sc, 65536, &sc->sc_pld)) {
  printf(": failed to allocate payload memory\n");
  goto fail_1;
 }
 if (oce_init_fw(sc))
  goto fail_2;
 if (oce_mbox_init(sc)) {
  printf(": failed to initialize mailbox\n");
  goto fail_2;
 }
 if (oce_get_fw_config(sc)) {
  printf(": failed to get firmware configuration\n");
  goto fail_2;
 }
 if (((sc->sc_flags) & (0x00000002))) {
  if (oce_check_native_mode(sc))
   goto fail_2;
 }
 if (oce_macaddr_get(sc, sc->sc_macaddr)) {
  printf(": failed to fetch MAC address\n");
  goto fail_2;
 }
 __builtin_memcpy((sc->sc_ac.ac_enaddr), (sc->sc_macaddr), (6));
 if (oce_pkt_pool == ((void *)0)) {
  oce_pkt_pool = malloc(sizeof(struct pool), 2, 0x0002);
  if (oce_pkt_pool == ((void *)0)) {
   printf(": unable to allocate descriptor pool\n");
   goto fail_2;
  }
  pool_init(oce_pkt_pool, sizeof(struct oce_pkt), 0, 6,
      0, "ocepkts", ((void *)0));
 }
 sc->sc_nintr = 1;
 if (pci_intr_map_msi(pa, &ih) != 0 &&
     pci_intr_map(pa, &ih) != 0) {
  printf(": couldn't map interrupt\n");
  goto fail_2;
 }
 intrstr = pci_intr_string(pa->pa_pc, ih);
 sc->sc_ih = pci_intr_establish(pa->pa_pc, ih, 6, oce_intr, sc,
     sc->sc_dev.dv_xname);
 if (sc->sc_ih == ((void *)0)) {
  printf(": couldn't establish interrupt\n");
  if (intrstr != ((void *)0))
   printf(" at %s", intrstr);
  printf("\n");
  goto fail_2;
 }
 printf(": %s", intrstr);
 if (oce_init_stats(sc))
  goto fail_3;
 if (oce_init_queues(sc))
  goto fail_3;
 oce_attach_ifp(sc);
 timeout_set(&sc->sc_tick, oce_tick, sc);
 timeout_set(&sc->sc_rxrefill, oce_refill_rx, sc);
 config_mountroot(self, oce_attachhook);
 printf(", address %s\n", ether_sprintf(sc->sc_ac.ac_enaddr));
 return;
fail_3:
 pci_intr_disestablish(pa->pa_pc, sc->sc_ih);
fail_2:
 oce_dma_free(sc, &sc->sc_pld);
fail_1:
 oce_dma_free(sc, &sc->sc_mbx);
}
int
oce_pci_alloc(struct oce_softc *sc, struct pci_attach_args *pa)
{
 pcireg_t memtype, reg64;
 if (((sc->sc_flags) & (0x00000001)))
  reg64 = 0x14;
 else
  reg64 = 0x10;
 memtype = pci_mapreg_type(pa->pa_pc, pa->pa_tag, reg64);
 if (pci_mapreg_map(pa, reg64, memtype, 0, &sc->sc_cfg_iot,
     &sc->sc_cfg_ioh, ((void *)0), &sc->sc_cfg_size,
     (((sc)->sc_flags) & (0x00000001 | 0x00000002)) ? 0 : 32768)) {
  printf(": can't find cfg mem space\n");
  return (6);
 }
 reg64 = pci_conf_read(pa->pa_pc, pa->pa_tag, 0x58);
 if ((((reg64) >> 29) & 0x7) != 6) {
  printf(": invalid signature\n");
  goto fail_1;
 }
 if ((((reg64) >> 4) & 0xf) != 4) {
  printf(": unsupported SLI revision\n");
  goto fail_1;
 }
 if ((((reg64) >> 12) & 0xf) == 1)
  ((sc->sc_flags) |= (0x00002000));
 if ((((reg64) >> 16) & 0xff) == 1)
  ((sc->sc_flags) |= (0x00001000));
 if ((((sc)->sc_flags) & (0x00000001 | 0x00000002))) {
  reg64 = 0x18;
  memtype = pci_mapreg_type(pa->pa_pc, pa->pa_tag, reg64);
  if (pci_mapreg_map(pa, reg64, memtype, 0, &sc->sc_csr_iot,
      &sc->sc_csr_ioh, ((void *)0), &sc->sc_csr_size, 0)) {
   printf(": can't find csr mem space\n");
   goto fail_1;
  }
  reg64 = 0x20;
  memtype = pci_mapreg_type(pa->pa_pc, pa->pa_tag, reg64);
  if (pci_mapreg_map(pa, reg64, memtype, 0, &sc->sc_db_iot,
      &sc->sc_db_ioh, ((void *)0), &sc->sc_db_size, 0)) {
   printf(": can't find csr mem space\n");
   goto fail_2;
  }
 } else {
  sc->sc_csr_iot = sc->sc_db_iot = sc->sc_cfg_iot;
  sc->sc_csr_ioh = sc->sc_db_ioh = sc->sc_cfg_ioh;
 }
 return (0);
fail_2:
 bus_space_unmap(sc->sc_csr_iot, sc->sc_csr_ioh, sc->sc_csr_size);
fail_1:
 bus_space_unmap(sc->sc_cfg_iot, sc->sc_cfg_ioh, sc->sc_cfg_size);
 return (6);
}
static inline uint32_t
oce_read_cfg(struct oce_softc *sc, bus_size_t off)
{
 bus_space_barrier(sc->sc_cfg_iot, sc->sc_cfg_ioh, off, 4,
     0x01);
 return (bus_space_read_4(sc->sc_cfg_iot, sc->sc_cfg_ioh, off));
}
static inline uint32_t
oce_read_csr(struct oce_softc *sc, bus_size_t off)
{
 bus_space_barrier(sc->sc_csr_iot, sc->sc_csr_ioh, off, 4,
     0x01);
 return (bus_space_read_4(sc->sc_csr_iot, sc->sc_csr_ioh, off));
}
static inline uint32_t
oce_read_db(struct oce_softc *sc, bus_size_t off)
{
 bus_space_barrier(sc->sc_db_iot, sc->sc_db_ioh, off, 4,
     0x01);
 return (bus_space_read_4(sc->sc_db_iot, sc->sc_db_ioh, off));
}
static inline void
oce_write_cfg(struct oce_softc *sc, bus_size_t off, uint32_t val)
{
 bus_space_write_4(sc->sc_cfg_iot, sc->sc_cfg_ioh, off, val);
 bus_space_barrier(sc->sc_cfg_iot, sc->sc_cfg_ioh, off, 4,
     0x02);
}
static inline void
oce_write_csr(struct oce_softc *sc, bus_size_t off, uint32_t val)
{
 bus_space_write_4(sc->sc_csr_iot, sc->sc_csr_ioh, off, val);
 bus_space_barrier(sc->sc_csr_iot, sc->sc_csr_ioh, off, 4,
     0x02);
}
static inline void
oce_write_db(struct oce_softc *sc, bus_size_t off, uint32_t val)
{
 bus_space_write_4(sc->sc_db_iot, sc->sc_db_ioh, off, val);
 bus_space_barrier(sc->sc_db_iot, sc->sc_db_ioh, off, 4,
     0x02);
}
static inline void
oce_intr_enable(struct oce_softc *sc)
{
 uint32_t reg64;
 reg64 = oce_read_cfg(sc, 0xfc);
 oce_write_cfg(sc, 0xfc, reg64 | (1<<29));
}
static inline void
oce_intr_disable(struct oce_softc *sc)
{
 uint32_t reg64;
 reg64 = oce_read_cfg(sc, 0xfc);
 oce_write_cfg(sc, 0xfc, reg64 & ~(1<<29));
}
void
oce_attachhook(struct device *self)
{
 struct oce_softc *sc = (struct oce_softc *)self;
 oce_get_link_status(sc);
 oce_arm_cq(sc->sc_mq->cq, 0, 1);
 oce_intr_enable(sc);
 oce_arm_eq(sc->sc_eq[0], 0, 1, 0);
 oce_first_mcc(sc);
}
void
oce_attach_ifp(struct oce_softc *sc)
{
 struct ifnet *ifp = &sc->sc_ac.ac_if;
 ifmedia_init(&sc->sc_media, 0xff00000000000000ULL, oce_media_change,
     oce_media_status);
 ifmedia_add(&sc->sc_media, 0x0000000000000100ULL | 0ULL, 0, ((void *)0));
 ifmedia_set(&sc->sc_media, 0x0000000000000100ULL | 0ULL);
 strlcpy(ifp->if_xname, sc->sc_dev.dv_xname, 16);
 ifp->if_flags = 0x2 | 0x800 | 0x8000;
 ifp->if_ioctl = oce_ioctl;
 ifp->if_start = oce_start;
 ifp->if_watchdog = oce_watchdog;
 ifp->if_hardmtu = 9000;
 ifp->if_softc = sc;
 ((&ifp->if_snd)->ifq_maxlen = (sc->sc_tx_ring_size - 1));
 ifp->if_data.ifi_capabilities = 0x00000010 | 0x00000001 |
     0x00000002 | 0x00000004;
 ifp->if_data.ifi_capabilities |= 0x00000020;
 if_attach(ifp);
 ether_ifattach(ifp);
}
int
oce_ioctl(struct ifnet *ifp, u_long command, caddr_t data)
{
 struct oce_softc *sc = ifp->if_softc;
 struct ifreq *ifr = (struct ifreq *)data;
 int s, error = 0;
 s = _splraise(6);
 switch (command) {
 case ((unsigned long)0x80000000 | ((sizeof(struct ifreq) & 0x1fff) << 16) | ((('i')) << 8) | ((12))):
  ifp->if_flags |= 0x1;
  if (!(ifp->if_flags & 0x40))
   oce_init(sc);
  break;
 case ((unsigned long)0x80000000 | ((sizeof(struct ifreq) & 0x1fff) << 16) | ((('i')) << 8) | ((16))):
  if (ifp->if_flags & 0x1) {
   if (ifp->if_flags & 0x40)
    error = 52;
   else
    oce_init(sc);
  } else {
   if (ifp->if_flags & 0x40)
    oce_stop(sc);
  }
  break;
 case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct ifmediareq) & 0x1fff) << 16) | ((('i')) << 8) | ((56))):
 case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct ifreq) & 0x1fff) << 16) | ((('i')) << 8) | ((55))):
  error = ifmedia_ioctl(ifp, ifr, &sc->sc_media, command);
  break;
 case ((unsigned long)0x80000000 | ((sizeof(struct ifreq) & 0x1fff) << 16) | ((('i')) << 8) | ((170))):
  error = oce_rxrinfo(sc, (struct if_rxrinfo *)ifr->ifr_ifru.ifru_data);
  break;
 default:
  error = ether_ioctl(ifp, &sc->sc_ac, command, data);
  break;
 }
 if (error == 52) {
  if (ifp->if_flags & 0x40)
   oce_iff(sc);
  error = 0;
 }
 _splx(s);
 return (error);
}
int
oce_rxrinfo(struct oce_softc *sc, struct if_rxrinfo *ifri)
{
 struct if_rxring_info *ifr, ifr1;
 struct oce_rq *rq;
 int error, i;
 u_int n = 0;
 if (sc->sc_nrq > 1) {
  if ((ifr = mallocarray(sc->sc_nrq, sizeof(*ifr), 2,
      0x0001 | 0x0008)) == ((void *)0))
   return (12);
 } else
  ifr = &ifr1;
 for (i = 0, rq = sc->sc_rq[0]; i < sc->sc_nrq; i++, rq = sc->sc_rq[i]) {
  ifr[n].ifr_size = (1 << 11);
  snprintf(ifr[n].ifr_name, sizeof(ifr[n].ifr_name), "/%d", i);
  ifr[n].ifr_info = rq->rxring;
  n++;
 }
 error = if_rxr_info_ioctl(ifri, sc->sc_nrq, ifr);
 if (sc->sc_nrq > 1)
  free(ifr, 2, sc->sc_nrq * sizeof(*ifr));
 return (error);
}
void
oce_iff(struct oce_softc *sc)
{
 uint8_t multi[32][6];
 struct arpcom *ac = &sc->sc_ac;
 struct ifnet *ifp = &ac->ac_if;
 struct ether_multi *enm;
 struct ether_multistep step;
 int naddr = 0, promisc = 0;
 ifp->if_flags &= ~0x200;
 if (ifp->if_flags & 0x100 || ac->ac_multirangecnt > 0 ||
     ac->ac_multicnt >= 32) {
  ifp->if_flags |= 0x200;
  promisc = 1;
 } else {
  do { (step).e_enm = ((&(&sc->sc_ac)->ac_multiaddrs)->lh_first); do { if ((((enm)) = ((step)).e_enm) != ((void *)0)) ((step)).e_enm = ((((enm)))->enm_list.le_next); } while ( 0); } while ( 0);
  while (enm != ((void *)0)) {
   __builtin_memcpy((multi[naddr++]), (enm->enm_addrlo), (6));
   do { if (((enm) = (step).e_enm) != ((void *)0)) (step).e_enm = (((enm))->enm_list.le_next); } while ( 0);
  }
  oce_update_mcast(sc, multi, naddr);
 }
 oce_set_promisc(sc, promisc);
}
void
oce_link_status(struct oce_softc *sc)
{
 struct ifnet *ifp = &sc->sc_ac.ac_if;
 int link_state = 2;
 ifp->if_data.ifi_baudrate = 0;
 if (sc->sc_link_up) {
  link_state = 6;
  switch (sc->sc_link_speed) {
  case 1:
   ifp->if_data.ifi_baudrate = ((((10) * 1000ULL) * 1000ULL));
   break;
  case 2:
   ifp->if_data.ifi_baudrate = ((((100) * 1000ULL) * 1000ULL));
   break;
  case 3:
   ifp->if_data.ifi_baudrate = ((((((1) * 1000ULL) * 1000ULL) * 1000ULL)));
   break;
  case 4:
   ifp->if_data.ifi_baudrate = ((((((10) * 1000ULL) * 1000ULL) * 1000ULL)));
   break;
  }
 }
 if (ifp->if_data.ifi_link_state != link_state) {
  ifp->if_data.ifi_link_state = link_state;
  if_link_state_change(ifp);
 }
}
void
oce_media_status(struct ifnet *ifp, struct ifmediareq *ifmr)
{
 struct oce_softc *sc = ifp->if_softc;
 ifmr->ifm_status = 0x0000000000000001ULL;
 ifmr->ifm_active = 0x0000000000000100ULL;
 if (oce_get_link_status(sc) == 0)
  oce_link_status(sc);
 if (!sc->sc_link_up) {
  ifmr->ifm_active |= 2ULL;
  return;
 }
 ifmr->ifm_status |= 0x0000000000000002ULL;
 switch (sc->sc_link_speed) {
 case 1:
  ifmr->ifm_active |= 3 | 0x0000010000000000ULL;
  break;
 case 2:
  ifmr->ifm_active |= 6 | 0x0000010000000000ULL;
  break;
 case 3:
  ifmr->ifm_active |= 16 | 0x0000010000000000ULL;
  break;
 case 4:
  ifmr->ifm_active |= 19 | 0x0000010000000000ULL;
  break;
 }
 if (sc->sc_fc & 0x0000000000020000ULL)
  ifmr->ifm_active |= 0x0000040000000000ULL | 0x0000000000020000ULL;
 if (sc->sc_fc & 0x0000000000040000ULL)
  ifmr->ifm_active |= 0x0000040000000000ULL | 0x0000000000040000ULL;
}
int
oce_media_change(struct ifnet *ifp)
{
 return (0);
}
void
oce_tick(void *arg)
{
 struct oce_softc *sc = arg;
 int s;
 s = _splraise(6);
 if (oce_update_stats(sc) == 0)
  timeout_add_sec(&sc->sc_tick, 1);
 _splx(s);
}
void
oce_init(void *arg)
{
 struct oce_softc *sc = arg;
 struct ifnet *ifp = &sc->sc_ac.ac_if;
 struct oce_eq *eq;
 struct oce_rq *rq;
 struct oce_wq *wq;
 int i;
 oce_stop(sc);
 delay(10);
 oce_macaddr_set(sc);
 oce_iff(sc);
 if (oce_config_vlan(sc, ((void *)0), 0, 1, 1))
  goto error;
 if (oce_set_flow_control(sc, 0x0000000000020000ULL | 0x0000000000040000ULL))
  goto error;
 for (i = 0, rq = sc->sc_rq[0]; i < sc->sc_nrq; i++, rq = sc->sc_rq[i]) {
  rq->mtu = ifp->if_hardmtu + ((6 * 2) + 2) + 4 +
      4;
  if (oce_new_rq(sc, rq)) {
   printf("%s: failed to create rq\n",
       sc->sc_dev.dv_xname);
   goto error;
  }
  rq->ring->index = 0;
  if_rxr_init(&rq->rxring, 8, rq->nitems);
  if (!oce_alloc_rx_bufs(rq)) {
   printf("%s: failed to allocate rx buffers\n",
       sc->sc_dev.dv_xname);
   goto error;
  }
 }
 for (i = 0, rq = sc->sc_rq[0]; i < sc->sc_nrq; i++, rq = sc->sc_rq[i])
  oce_arm_cq(rq->cq, 0, 1);
 for (i = 0, wq = sc->sc_wq[0]; i < sc->sc_nwq; i++, wq = sc->sc_wq[i])
  oce_arm_cq(wq->cq, 0, 1);
 oce_arm_cq(sc->sc_mq->cq, 0, 1);
 for (i = 0, eq = sc->sc_eq[0]; i < sc->sc_neq; i++, eq = sc->sc_eq[i])
  oce_arm_eq(eq, 0, 1, 0);
 if (oce_get_link_status(sc) == 0)
  oce_link_status(sc);
 ifp->if_flags |= 0x40;
 ifq_clr_oactive(&ifp->if_snd);
 timeout_add_sec(&sc->sc_tick, 1);
 oce_intr_enable(sc);
 return;
error:
 oce_stop(sc);
}
void
oce_stop(struct oce_softc *sc)
{
 struct mbx_delete_nic_rq cmd;
 struct ifnet *ifp = &sc->sc_ac.ac_if;
 struct oce_rq *rq;
 struct oce_wq *wq;
 struct oce_eq *eq;
 int i;
 timeout_del(&sc->sc_tick);
 timeout_del(&sc->sc_rxrefill);
 ifp->if_flags &= ~0x40;
 ifq_clr_oactive(&ifp->if_snd);
 oce_intr_disable(sc);
 for (i = 0, eq = sc->sc_eq[0]; i < sc->sc_neq; i++, eq = sc->sc_eq[i])
  oce_drain_eq(eq);
 for (i = 0, rq = sc->sc_rq[0]; i < sc->sc_nrq; i++, rq = sc->sc_rq[i]) {
  __builtin_memset((&cmd), (0), (sizeof(cmd)));
  cmd.params.req.rq_id = __extension__({ __uint16_t __swap16gen_x = (rq->id); (__uint16_t)((__swap16gen_x & 0xff) << 8 | (__swap16gen_x & 0xff00) >> 8); });
  oce_cmd(sc, SUBSYS_NIC, OPCODE_NIC_DELETE_RQ,
      0x0000, &cmd, sizeof(cmd));
  delay(1000);
  oce_drain_rq(rq);
  oce_free_posted_rxbuf(rq);
 }
 for (i = 0, wq = sc->sc_wq[0]; i < sc->sc_nwq; i++, wq = sc->sc_wq[i])
  oce_drain_wq(wq);
}
void
oce_watchdog(struct ifnet *ifp)
{
 printf("%s: watchdog timeout -- resetting\n", ifp->if_xname);
 oce_init(ifp->if_softc);
 ifp->if_data.ifi_oerrors++;
}
void
oce_start(struct ifnet *ifp)
{
 struct oce_softc *sc = ifp->if_softc;
 struct mbuf *m;
 int pkts = 0;
 if (!(ifp->if_flags & 0x40) || ifq_is_oactive(&ifp->if_snd))
  return;
 for (;;) {
  do { (m) = ifq_dequeue(&ifp->if_snd); } while ( 0);
  if (m == ((void *)0))
   break;
  if (oce_encap(sc, &m, 0)) {
   ifq_set_oactive(&ifp->if_snd);
   break;
  }
  if (ifp->if_bpf)
   bpf_mtap_ether(ifp->if_bpf, m, (1<<1));
  pkts++;
 }
 if (pkts)
  ifp->if_timer = 5;
}
int
oce_encap(struct oce_softc *sc, struct mbuf **mpp, int wqidx)
{
 struct mbuf *m = *mpp;
 struct oce_wq *wq = sc->sc_wq[wqidx];
 struct oce_pkt *pkt = ((void *)0);
 struct oce_nic_hdr_wqe *nhe;
 struct oce_nic_frag_wqe *nfe;
 int i, nwqe, err;
 if ((pkt = oce_pkt_get(&wq->pkt_free)) == ((void *)0))
  goto error;
 err = bus_dmamap_load_mbuf(sc->sc_dmat, pkt->map, m, 0x0001);
 if (err == 27) {
  if (m_defrag(m, 0x0002) ||
      bus_dmamap_load_mbuf(sc->sc_dmat, pkt->map, m,
   0x0001))
   goto error;
  *mpp = m;
 } else if (err != 0)
  goto error;
 pkt->nsegs = pkt->map->dm_nsegs;
 nwqe = pkt->nsegs + 1;
 if ((((sc)->sc_flags) & (0x00000001 | 0x00000002))) {
  if (nwqe & 1)
   nwqe++;
 }
 if (nwqe >= wq->ring->nitems - wq->ring->nused) {
  bus_dmamap_unload(sc->sc_dmat, pkt->map);
  goto error;
 }
 bus_dmamap_sync(sc->sc_dmat, pkt->map, 0, pkt->map->dm_mapsize,
     0x04);
 pkt->mbuf = m;
 nhe = oce_ring_get(wq->ring);
 __builtin_memset((nhe), (0), (sizeof(*nhe)));
 nhe->u0.s.complete = 1;
 nhe->u0.s.event = 1;
 nhe->u0.s.crc = 1;
 nhe->u0.s.forward = 0;
 nhe->u0.s.ipcs = (m->M_dat.MH.MH_pkthdr.csum_flags & 0x0001) ? 1 : 0;
 nhe->u0.s.udpcs = (m->M_dat.MH.MH_pkthdr.csum_flags & 0x0004) ? 1 : 0;
 nhe->u0.s.tcpcs = (m->M_dat.MH.MH_pkthdr.csum_flags & 0x0002) ? 1 : 0;
 nhe->u0.s.num_wqe = nwqe;
 nhe->u0.s.total_length = m->M_dat.MH.MH_pkthdr.len;
 if (m->m_hdr.mh_flags & 0x0020) {
  nhe->u0.s.vlan = 1;
  nhe->u0.s.vlan_tag = m->M_dat.MH.MH_pkthdr.ether_vtag;
 }
 bus_dmamap_sync((&wq->ring->dma)->tag, (&wq->ring->dma)->map, 0, (&wq->ring->dma)->map->dm_mapsize, 0x01 | 0x04);
 wq->ring->nused++;
 for (i = 0; i < pkt->nsegs; i++) {
  nfe = oce_ring_get(wq->ring);
  __builtin_memset((nfe), (0), (sizeof(*nfe)));
  nfe->u0.s.frag_pa_hi = ((uint32_t)((uint64_t)(pkt->map->dm_segs[i].ds_addr) >> 32));
  nfe->u0.s.frag_pa_lo = ((uint32_t)((uint64_t)(pkt->map->dm_segs[i].ds_addr) & 0xffffffff));
  nfe->u0.s.frag_len = pkt->map->dm_segs[i].ds_len;
  wq->ring->nused++;
 }
 if (nwqe > (pkt->nsegs + 1)) {
  nfe = oce_ring_get(wq->ring);
  __builtin_memset((nfe), (0), (sizeof(*nfe)));
  wq->ring->nused++;
  pkt->nsegs++;
 }
 oce_pkt_put(&wq->pkt_list, pkt);
 bus_dmamap_sync((&wq->ring->dma)->tag, (&wq->ring->dma)->map, 0, (&wq->ring->dma)->map->dm_mapsize, 0x02 | 0x08);
 oce_write_db(sc, 0x0060, wq->id | (nwqe << 16));
 return (0);
error:
 if (pkt)
  oce_pkt_put(&wq->pkt_free, pkt);
 m_freem(*mpp);
 *mpp = ((void *)0);
 return (1);
}
int
oce_intr(void *arg)
{
 struct oce_softc *sc = arg;
 struct oce_eq *eq = sc->sc_eq[0];
 struct oce_eqe *eqe;
 struct oce_cq *cq = ((void *)0);
 int i, neqe = 0;
 bus_dmamap_sync((&eq->ring->dma)->tag, (&eq->ring->dma)->map, 0, (&eq->ring->dma)->map->dm_mapsize, 0x02);
 for ((eqe) = oce_ring_first(eq->ring); eqe->evnt != 0; (eqe) = oce_ring_next(eq->ring)) {
  eqe->evnt = 0;
  neqe++;
 }
 if (!neqe) {
  oce_arm_eq(eq, 0, 1, 0);
  return (0);
 }
 bus_dmamap_sync((&eq->ring->dma)->tag, (&eq->ring->dma)->map, 0, (&eq->ring->dma)->map->dm_mapsize, 0x04);
 oce_arm_eq(eq, neqe, 0, 1);
 for (i = 0; i < eq->cq_valid; i++) {
  cq = eq->cq[i];
  (*cq->cq_intr)(cq->cb_arg);
  oce_arm_cq(cq, 0, 1);
 }
 oce_arm_eq(eq, 0, 1, 0);
 return (1);
}
void
oce_intr_wq(void *arg)
{
 struct oce_wq *wq = (struct oce_wq *)arg;
 struct oce_cq *cq = wq->cq;
 struct oce_nic_tx_cqe *cqe;
 struct oce_softc *sc = wq->sc;
 struct ifnet *ifp = &sc->sc_ac.ac_if;
 int ncqe = 0;
 bus_dmamap_sync((&cq->ring->dma)->tag, (&cq->ring->dma)->map, 0, (&cq->ring->dma)->map->dm_mapsize, 0x02);
 for ((cqe) = oce_ring_first(cq->ring); ((cqe)->u0.dw[3]); (cqe) = oce_ring_next(cq->ring)) {
  oce_txeof(wq);
  ((cqe)->u0.dw[3] = 0);
  ncqe++;
 }
 bus_dmamap_sync((&cq->ring->dma)->tag, (&cq->ring->dma)->map, 0, (&cq->ring->dma)->map->dm_mapsize, 0x04);
 if (ifq_is_oactive(&ifp->if_snd)) {
  if (wq->ring->nused < (wq->ring->nitems / 2)) {
   ifq_clr_oactive(&ifp->if_snd);
   oce_start(ifp);
  }
 }
 if (wq->ring->nused == 0)
  ifp->if_timer = 0;
 if (ncqe)
  oce_arm_cq(cq, ncqe, 0);
}
void
oce_txeof(struct oce_wq *wq)
{
 struct oce_softc *sc = wq->sc;
 struct oce_pkt *pkt;
 struct mbuf *m;
 if ((pkt = oce_pkt_get(&wq->pkt_list)) == ((void *)0)) {
  printf("%s: missing descriptor in txeof\n",
      sc->sc_dev.dv_xname);
  return;
 }
 wq->ring->nused -= pkt->nsegs + 1;
 bus_dmamap_sync(sc->sc_dmat, pkt->map, 0, pkt->map->dm_mapsize,
     0x08);
 bus_dmamap_unload(sc->sc_dmat, pkt->map);
 m = pkt->mbuf;
 m_freem(m);
 pkt->mbuf = ((void *)0);
 oce_pkt_put(&wq->pkt_free, pkt);
}
void
oce_intr_rq(void *arg)
{
 struct oce_rq *rq = (struct oce_rq *)arg;
 struct oce_cq *cq = rq->cq;
 struct oce_softc *sc = rq->sc;
 struct oce_nic_rx_cqe *cqe;
 struct ifnet *ifp = &sc->sc_ac.ac_if;
 int maxrx, ncqe = 0;
 maxrx = (((sc)->sc_flags) & (0x00000008)) ? 8 : 64;
 bus_dmamap_sync((&cq->ring->dma)->tag, (&cq->ring->dma)->map, 0, (&cq->ring->dma)->map->dm_mapsize, 0x02);
 for ((cqe) = oce_ring_first(cq->ring); ((cqe)->u0.dw[2]) && ncqe <= maxrx; (cqe) = oce_ring_next(cq->ring)) {
  if (cqe->u0.s.error == 0) {
   if (cqe->u0.s.pkt_size == 0)
    oce_rxeoc(rq, cqe);
   else
    oce_rxeof(rq, cqe);
  } else {
   ifp->if_data.ifi_ierrors++;
   if ((((sc)->sc_flags) & (0x00000008)))
    oce_rxeoc(rq, cqe);
   else
    oce_rxeof(rq, cqe);
  }
  ((cqe)->u0.dw[2] = 0);
  ncqe++;
 }
 bus_dmamap_sync((&cq->ring->dma)->tag, (&cq->ring->dma)->map, 0, (&cq->ring->dma)->map->dm_mapsize, 0x04);
 if (ncqe) {
  oce_arm_cq(cq, ncqe, 0);
  if (!oce_alloc_rx_bufs(rq))
   timeout_add(&sc->sc_rxrefill, 1);
 }
}
void
oce_rxeof(struct oce_rq *rq, struct oce_nic_rx_cqe *cqe)
{
 struct oce_softc *sc = rq->sc;
 struct oce_pkt *pkt = ((void *)0);
 struct ifnet *ifp = &sc->sc_ac.ac_if;
 struct mbuf_list ml = { ((void *)0), ((void *)0), 0 };
 struct mbuf *m = ((void *)0), *tail = ((void *)0);
 int i, len, frag_len;
 uint16_t vtag;
 len = cqe->u0.s.pkt_size;
 if ((((sc)->sc_flags) & (0x00000001 | 0x00000002)))
  vtag = ((__uint16_t)(cqe->u0.s.vlan_tag));
 else
  vtag = cqe->u0.s.vlan_tag;
 for (i = 0; i < cqe->u0.s.num_fragments; i++) {
  if ((pkt = oce_pkt_get(&rq->pkt_list)) == ((void *)0)) {
   printf("%s: missing descriptor in rxeof\n",
       sc->sc_dev.dv_xname);
   goto exit;
  }
  bus_dmamap_sync(sc->sc_dmat, pkt->map, 0, pkt->map->dm_mapsize,
      0x02);
  bus_dmamap_unload(sc->sc_dmat, pkt->map);
  do { (&rq->rxring)->rxr_alive -= (1); } while (0);
  frag_len = (len > rq->fragsize) ? rq->fragsize : len;
  pkt->mbuf->m_hdr.mh_len = frag_len;
  if (tail != ((void *)0)) {
   pkt->mbuf->m_hdr.mh_flags &= ~0x0002;
   tail->m_hdr.mh_next = pkt->mbuf;
   tail = pkt->mbuf;
  } else {
   pkt->mbuf->M_dat.MH.MH_pkthdr.len = len;
   pkt->mbuf->M_dat.MH.MH_pkthdr.csum_flags = 0;
   if (cqe->u0.s.ip_cksum_pass) {
    if (!cqe->u0.s.ip_ver) {
     pkt->mbuf->M_dat.MH.MH_pkthdr.csum_flags =
         0x0008;
    }
   }
   if (cqe->u0.s.l4_cksum_pass) {
    pkt->mbuf->M_dat.MH.MH_pkthdr.csum_flags |=
        0x0020 | 0x0080;
   }
   m = tail = pkt->mbuf;
  }
  pkt->mbuf = ((void *)0);
  oce_pkt_put(&rq->pkt_free, pkt);
  len -= frag_len;
 }
 if (m) {
  if (!oce_port_valid(sc, cqe)) {
    m_freem(m);
    goto exit;
  }
  if (oce_vtp_valid(sc, cqe)) {
   if (sc->sc_fmode & FNM_FLEX10_MODE) {
    if (cqe->u0.s.qnq) {
     m->M_dat.MH.MH_pkthdr.ether_vtag = vtag;
     m->m_hdr.mh_flags |= 0x0020;
    }
   } else if (sc->sc_pvid != (vtag & 0x0FFF)) {
    m->M_dat.MH.MH_pkthdr.ether_vtag = vtag;
    m->m_hdr.mh_flags |= 0x0020;
   }
  }
  ml_enqueue(&ml, m);
 }
exit:
 if_input(ifp, &ml);
}
void
oce_rxeoc(struct oce_rq *rq, struct oce_nic_rx_cqe *cqe)
{
 struct oce_softc *sc = rq->sc;
 struct oce_pkt *pkt;
 int i, num_frags = cqe->u0.s.num_fragments;
 if ((((sc)->sc_flags) & (0x00000008)) && cqe->u0.s.error) {
  if (num_frags)
   num_frags--;
 }
 for (i = 0; i < num_frags; i++) {
  if ((pkt = oce_pkt_get(&rq->pkt_list)) == ((void *)0)) {
   printf("%s: missing descriptor in rxeoc\n",
       sc->sc_dev.dv_xname);
   return;
  }
  bus_dmamap_sync(sc->sc_dmat, pkt->map, 0, pkt->map->dm_mapsize,
      0x02);
  bus_dmamap_unload(sc->sc_dmat, pkt->map);
  do { (&rq->rxring)->rxr_alive -= (1); } while (0);
  m_freem(pkt->mbuf);
  oce_pkt_put(&rq->pkt_free, pkt);
 }
}
int
oce_vtp_valid(struct oce_softc *sc, struct oce_nic_rx_cqe *cqe)
{
 struct oce_nic_rx_cqe_v1 *cqe_v1;
 if ((((sc)->sc_flags) & (0x00000001 | 0x00000002)) && ((sc->sc_flags) & (0x00000100))) {
  cqe_v1 = (struct oce_nic_rx_cqe_v1 *)cqe;
  return (cqe_v1->u0.s.vlan_tag_present);
 }
 return (cqe->u0.s.vlan_tag_present);
}
int
oce_port_valid(struct oce_softc *sc, struct oce_nic_rx_cqe *cqe)
{
 struct oce_nic_rx_cqe_v1 *cqe_v1;
 if ((((sc)->sc_flags) & (0x00000001 | 0x00000002)) && ((sc->sc_flags) & (0x00000100))) {
  cqe_v1 = (struct oce_nic_rx_cqe_v1 *)cqe;
  if (sc->sc_port != cqe_v1->u0.s.port)
   return (0);
 }
 return (1);
}
int
oce_get_buf(struct oce_rq *rq)
{
 struct oce_softc *sc = rq->sc;
 struct oce_pkt *pkt;
 struct oce_nic_rqe *rqe;
 if ((pkt = oce_pkt_get(&rq->pkt_free)) == ((void *)0))
  return (0);
 pkt->mbuf = m_clget((((void *)0)), (0x0002), ((1 << 11)));
 if (pkt->mbuf == ((void *)0)) {
  oce_pkt_put(&rq->pkt_free, pkt);
  return (0);
 }
 pkt->mbuf->m_hdr.mh_len = pkt->mbuf->M_dat.MH.MH_pkthdr.len = (1 << 11);
 m_adj(pkt->mbuf, 2);
 if (bus_dmamap_load_mbuf(sc->sc_dmat, pkt->map, pkt->mbuf,
     0x0001)) {
  m_freem(pkt->mbuf);
  pkt->mbuf = ((void *)0);
  oce_pkt_put(&rq->pkt_free, pkt);
  return (0);
 }
 bus_dmamap_sync(sc->sc_dmat, pkt->map, 0, pkt->map->dm_mapsize,
     0x01);
 bus_dmamap_sync((&rq->ring->dma)->tag, (&rq->ring->dma)->map, 0, (&rq->ring->dma)->map->dm_mapsize, 0x01 | 0x04);
 rqe = oce_ring_get(rq->ring);
 rqe->u0.s.frag_pa_hi = ((uint32_t)((uint64_t)(pkt->map->dm_segs[0].ds_addr) >> 32));
 rqe->u0.s.frag_pa_lo = ((uint32_t)((uint64_t)(pkt->map->dm_segs[0].ds_addr) & 0xffffffff));
 bus_dmamap_sync((&rq->ring->dma)->tag, (&rq->ring->dma)->map, 0, (&rq->ring->dma)->map->dm_mapsize, 0x02 | 0x08);
 oce_pkt_put(&rq->pkt_list, pkt);
 return (1);
}
int
oce_alloc_rx_bufs(struct oce_rq *rq)
{
 struct oce_softc *sc = rq->sc;
 int i, nbufs = 0;
 u_int slots;
 for (slots = if_rxr_get(&rq->rxring, rq->nitems); slots > 0; slots--) {
  if (oce_get_buf(rq) == 0)
   break;
  nbufs++;
 }
 do { (&rq->rxring)->rxr_alive -= (slots); } while (0);
 if (!nbufs)
  return (0);
 for (i = nbufs / 255; i > 0; i--) {
  oce_write_db(sc, 0x0100, rq->id |
      (255 << 24));
  nbufs -= 255;
 }
 if (nbufs > 0)
  oce_write_db(sc, 0x0100, rq->id | (nbufs << 24));
 return (1);
}
void
oce_refill_rx(void *arg)
{
 struct oce_softc *sc = arg;
 struct oce_rq *rq;
 int i, s;
 s = _splraise(6);
 for (i = 0, rq = sc->sc_rq[0]; i < sc->sc_nrq; i++, rq = sc->sc_rq[i]) {
  if (!oce_alloc_rx_bufs(rq))
   timeout_add(&sc->sc_rxrefill, 5);
 }
 _splx(s);
}
void
oce_intr_mq(void *arg)
{
 struct oce_mq *mq = (struct oce_mq *)arg;
 struct oce_softc *sc = mq->sc;
 struct oce_cq *cq = mq->cq;
 struct oce_mq_cqe *cqe;
 struct oce_async_cqe_link_state *acqe;
 struct oce_async_event_grp5_pvid_state *gcqe;
 int evtype, optype, ncqe = 0;
 bus_dmamap_sync((&cq->ring->dma)->tag, (&cq->ring->dma)->map, 0, (&cq->ring->dma)->map->dm_mapsize, 0x02);
 for ((cqe) = oce_ring_first(cq->ring); ((cqe)->u0.dw[3]); (cqe) = oce_ring_next(cq->ring)) {
  if (cqe->u0.s.async_event) {
   evtype = cqe->u0.s.event_type;
   optype = cqe->u0.s.async_type;
   if (evtype == 0x1) {
    acqe = (struct oce_async_cqe_link_state *)cqe;
    oce_link_event(sc, acqe);
   } else if ((evtype == 0x5) &&
       (optype == 0x3)) {
    gcqe =
    (struct oce_async_event_grp5_pvid_state *)cqe;
    if (gcqe->enabled)
     sc->sc_pvid =
         gcqe->tag & 0x0FFF;
    else
     sc->sc_pvid = 0;
   }
  }
  ((cqe)->u0.dw[3] = 0);
  ncqe++;
 }
 bus_dmamap_sync((&cq->ring->dma)->tag, (&cq->ring->dma)->map, 0, (&cq->ring->dma)->map->dm_mapsize, 0x04);
 if (ncqe)
  oce_arm_cq(cq, ncqe, 0);
}
void
oce_link_event(struct oce_softc *sc, struct oce_async_cqe_link_state *acqe)
{
 sc->sc_link_up = ((acqe->u0.s.link_status & ~0x02) ==
     0x1);
 sc->sc_link_speed = acqe->u0.s.speed;
 oce_link_status(sc);
}
int
oce_init_queues(struct oce_softc *sc)
{
 struct oce_wq *wq;
 struct oce_rq *rq;
 int i;
 sc->sc_nrq = 1;
 sc->sc_nwq = 1;
 if (oce_create_iface(sc, sc->sc_macaddr))
  goto error;
 for (i = 0; i < sc->sc_nintr; i++) {
  sc->sc_eq[i] = oce_create_eq(sc);
  if (!sc->sc_eq[i])
   goto error;
 }
 for (i = 0, wq = sc->sc_wq[0]; i < sc->sc_nwq; i++, wq = sc->sc_wq[i]) {
  sc->sc_wq[i] = oce_create_wq(sc, sc->sc_eq[i]);
  if (!sc->sc_wq[i])
   goto error;
 }
 for (i = 0, rq = sc->sc_rq[0]; i < sc->sc_nrq; i++, rq = sc->sc_rq[i]) {
  sc->sc_rq[i] = oce_create_rq(sc, sc->sc_eq[i > 0 ? i - 1 : 0],
      i > 0 ? sc->sc_rss_enable : 0);
  if (!sc->sc_rq[i])
   goto error;
 }
 sc->sc_mq = oce_create_mq(sc, sc->sc_eq[0]);
 if (!sc->sc_mq)
  goto error;
 return (0);
error:
 oce_release_queues(sc);
 return (1);
}
void
oce_release_queues(struct oce_softc *sc)
{
 struct oce_wq *wq;
 struct oce_rq *rq;
 struct oce_eq *eq;
 int i;
 for (i = 0, rq = sc->sc_rq[0]; i < sc->sc_nrq; i++, rq = sc->sc_rq[i]) {
  if (rq)
   oce_destroy_rq(sc->sc_rq[i]);
 }
 for (i = 0, wq = sc->sc_wq[0]; i < sc->sc_nwq; i++, wq = sc->sc_wq[i]) {
  if (wq)
   oce_destroy_wq(sc->sc_wq[i]);
 }
 if (sc->sc_mq)
  oce_destroy_mq(sc->sc_mq);
 for (i = 0, eq = sc->sc_eq[0]; i < sc->sc_neq; i++, eq = sc->sc_eq[i]) {
  if (eq)
   oce_destroy_eq(sc->sc_eq[i]);
 }
}
struct oce_wq *
oce_create_wq(struct oce_softc *sc, struct oce_eq *eq)
{
 struct oce_wq *wq;
 struct oce_cq *cq;
 struct oce_pkt *pkt;
 int i;
 if (sc->sc_tx_ring_size < 256 || sc->sc_tx_ring_size > 2048)
  return (((void *)0));
 wq = malloc(sizeof(struct oce_wq), 2, 0x0002 | 0x0008);
 if (!wq)
  return (((void *)0));
 wq->ring = oce_create_ring(sc, sc->sc_tx_ring_size, 16, 8);
 if (!wq->ring) {
  free(wq, 2, 0);
  return (((void *)0));
 }
 cq = oce_create_cq(sc, eq, CQ_LEN_512, sizeof(struct oce_nic_tx_cqe),
     1, 0, 3);
 if (!cq) {
  oce_destroy_ring(sc, wq->ring);
  free(wq, 2, 0);
  return (((void *)0));
 }
 wq->id = -1;
 wq->sc = sc;
 wq->cq = cq;
 wq->nitems = sc->sc_tx_ring_size;
 do { (&wq->pkt_free)->sqh_first = ((void *)0); (&wq->pkt_free)->sqh_last = &(&wq->pkt_free)->sqh_first; } while (0);
 do { (&wq->pkt_list)->sqh_first = ((void *)0); (&wq->pkt_list)->sqh_last = &(&wq->pkt_list)->sqh_first; } while (0);
 for (i = 0; i < sc->sc_tx_ring_size / 2; i++) {
  pkt = oce_pkt_alloc(sc, 65535, 29,
      (1 << 13));
  if (pkt == ((void *)0)) {
   oce_destroy_wq(wq);
   return (((void *)0));
  }
  oce_pkt_put(&wq->pkt_free, pkt);
 }
 if (oce_new_wq(sc, wq)) {
  oce_destroy_wq(wq);
  return (((void *)0));
 }
 eq->cq[eq->cq_valid] = cq;
 eq->cq_valid++;
 cq->cb_arg = wq;
 cq->cq_intr = oce_intr_wq;
 return (wq);
}
void
oce_drain_wq(struct oce_wq *wq)
{
 struct oce_cq *cq = wq->cq;
 struct oce_nic_tx_cqe *cqe;
 int ncqe = 0;
 bus_dmamap_sync((&cq->ring->dma)->tag, (&cq->ring->dma)->map, 0, (&cq->ring->dma)->map->dm_mapsize, 0x02);
 for ((cqe) = oce_ring_first(cq->ring); ((cqe)->u0.dw[3]); (cqe) = oce_ring_next(cq->ring)) {
  ((cqe)->u0.dw[3] = 0);
  ncqe++;
 }
 bus_dmamap_sync((&cq->ring->dma)->tag, (&cq->ring->dma)->map, 0, (&cq->ring->dma)->map->dm_mapsize, 0x04);
 oce_arm_cq(cq, ncqe, 0);
}
void
oce_destroy_wq(struct oce_wq *wq)
{
 struct mbx_delete_nic_wq cmd;
 struct oce_softc *sc = wq->sc;
 struct oce_pkt *pkt;
 if (wq->id >= 0) {
  __builtin_memset((&cmd), (0), (sizeof(cmd)));
  cmd.params.req.wq_id = __extension__({ __uint16_t __swap16gen_x = (wq->id); (__uint16_t)((__swap16gen_x & 0xff) << 8 | (__swap16gen_x & 0xff00) >> 8); });
  oce_cmd(sc, SUBSYS_NIC, OPCODE_NIC_DELETE_WQ, 0x0000,
      &cmd, sizeof(cmd));
 }
 if (wq->cq != ((void *)0))
  oce_destroy_cq(wq->cq);
 if (wq->ring != ((void *)0))
  oce_destroy_ring(sc, wq->ring);
 while ((pkt = oce_pkt_get(&wq->pkt_free)) != ((void *)0))
  oce_pkt_free(sc, pkt);
 free(wq, 2, 0);
}
struct oce_rq *
oce_create_rq(struct oce_softc *sc, struct oce_eq *eq, int rss)
{
 struct oce_rq *rq;
 struct oce_cq *cq;
 struct oce_pkt *pkt;
 int i;
 if (sc->sc_rx_ring_size != 1024)
  return (((void *)0));
 rq = malloc(sizeof(struct oce_rq), 2, 0x0002 | 0x0008);
 if (!rq)
  return (((void *)0));
 rq->ring = oce_create_ring(sc, sc->sc_rx_ring_size,
     sizeof(struct oce_nic_rqe), 2);
 if (!rq->ring) {
  free(rq, 2, 0);
  return (((void *)0));
 }
 cq = oce_create_cq(sc, eq, CQ_LEN_1024, sizeof(struct oce_nic_rx_cqe),
     1, 0, 3);
 if (!cq) {
  oce_destroy_ring(sc, rq->ring);
  free(rq, 2, 0);
  return (((void *)0));
 }
 rq->id = -1;
 rq->sc = sc;
 rq->nitems = sc->sc_rx_ring_size;
 rq->fragsize = 2048;
 rq->rss = rss;
 do { (&rq->pkt_free)->sqh_first = ((void *)0); (&rq->pkt_free)->sqh_last = &(&rq->pkt_free)->sqh_first; } while (0);
 do { (&rq->pkt_list)->sqh_first = ((void *)0); (&rq->pkt_list)->sqh_last = &(&rq->pkt_list)->sqh_first; } while (0);
 for (i = 0; i < sc->sc_rx_ring_size; i++) {
  pkt = oce_pkt_alloc(sc, 2048, 1, 2048);
  if (pkt == ((void *)0)) {
   oce_destroy_rq(rq);
   return (((void *)0));
  }
  oce_pkt_put(&rq->pkt_free, pkt);
 }
 rq->cq = cq;
 eq->cq[eq->cq_valid] = cq;
 eq->cq_valid++;
 cq->cb_arg = rq;
 cq->cq_intr = oce_intr_rq;
 return (rq);
}
void
oce_drain_rq(struct oce_rq *rq)
{
 struct oce_nic_rx_cqe *cqe;
 struct oce_cq *cq = rq->cq;
 int ncqe = 0;
 bus_dmamap_sync((&cq->ring->dma)->tag, (&cq->ring->dma)->map, 0, (&cq->ring->dma)->map->dm_mapsize, 0x02);
 for ((cqe) = oce_ring_first(cq->ring); ((cqe)->u0.dw[2]); (cqe) = oce_ring_next(cq->ring)) {
  ((cqe)->u0.dw[2] = 0);
  ncqe++;
 }
 bus_dmamap_sync((&cq->ring->dma)->tag, (&cq->ring->dma)->map, 0, (&cq->ring->dma)->map->dm_mapsize, 0x04);
 oce_arm_cq(cq, ncqe, 0);
}
void
oce_destroy_rq(struct oce_rq *rq)
{
 struct mbx_delete_nic_rq cmd;
 struct oce_softc *sc = rq->sc;
 struct oce_pkt *pkt;
 if (rq->id >= 0) {
  __builtin_memset((&cmd), (0), (sizeof(cmd)));
  cmd.params.req.rq_id = __extension__({ __uint16_t __swap16gen_x = (rq->id); (__uint16_t)((__swap16gen_x & 0xff) << 8 | (__swap16gen_x & 0xff00) >> 8); });
  oce_cmd(sc, SUBSYS_NIC, OPCODE_NIC_DELETE_RQ, 0x0000,
      &cmd, sizeof(cmd));
 }
 if (rq->cq != ((void *)0))
  oce_destroy_cq(rq->cq);
 if (rq->ring != ((void *)0))
  oce_destroy_ring(sc, rq->ring);
 while ((pkt = oce_pkt_get(&rq->pkt_free)) != ((void *)0))
  oce_pkt_free(sc, pkt);
 free(rq, 2, 0);
}
struct oce_eq *
oce_create_eq(struct oce_softc *sc)
{
 struct oce_eq *eq;
 eq = malloc(sizeof(struct oce_eq), 2, 0x0002 | 0x0008);
 if (eq == ((void *)0))
  return (((void *)0));
 eq->ring = oce_create_ring(sc, EQ_LEN_1024, EQE_SIZE_4, 8);
 if (!eq->ring) {
  free(eq, 2, 0);
  return (((void *)0));
 }
 eq->id = -1;
 eq->sc = sc;
 eq->nitems = EQ_LEN_1024;
 eq->isize = EQE_SIZE_4;
 eq->delay = 80;
 if (oce_new_eq(sc, eq)) {
  oce_destroy_ring(sc, eq->ring);
  free(eq, 2, 0);
  return (((void *)0));
 }
 return (eq);
}
static inline void
oce_arm_eq(struct oce_eq *eq, int neqe, int rearm, int clearint)
{
 oce_write_db(eq->sc, 0x0120, eq->id | (1<<10) |
     (clearint << 9) | (neqe << 16) | (rearm << 29));
}
void
oce_drain_eq(struct oce_eq *eq)
{
 struct oce_eqe *eqe;
 int neqe = 0;
 bus_dmamap_sync((&eq->ring->dma)->tag, (&eq->ring->dma)->map, 0, (&eq->ring->dma)->map->dm_mapsize, 0x02);
 for ((eqe) = oce_ring_first(eq->ring); eqe->evnt != 0; (eqe) = oce_ring_next(eq->ring)) {
  eqe->evnt = 0;
  neqe++;
 }
 bus_dmamap_sync((&eq->ring->dma)->tag, (&eq->ring->dma)->map, 0, (&eq->ring->dma)->map->dm_mapsize, 0x04);
 oce_arm_eq(eq, neqe, 0, 1);
}
void
oce_destroy_eq(struct oce_eq *eq)
{
 struct mbx_destroy_common_eq cmd;
 struct oce_softc *sc = eq->sc;
 if (eq->id >= 0) {
  __builtin_memset((&cmd), (0), (sizeof(cmd)));
  cmd.params.req.id = __extension__({ __uint16_t __swap16gen_x = (eq->id); (__uint16_t)((__swap16gen_x & 0xff) << 8 | (__swap16gen_x & 0xff00) >> 8); });
  oce_cmd(sc, SUBSYS_COMMON, OPCODE_COMMON_DESTROY_EQ,
      0x0000, &cmd, sizeof(cmd));
 }
 if (eq->ring != ((void *)0))
  oce_destroy_ring(sc, eq->ring);
 free(eq, 2, 0);
}
struct oce_mq *
oce_create_mq(struct oce_softc *sc, struct oce_eq *eq)
{
 struct oce_mq *mq = ((void *)0);
 struct oce_cq *cq;
 mq = malloc(sizeof(struct oce_mq), 2, 0x0002 | 0x0008);
 if (!mq)
  return (((void *)0));
 mq->ring = oce_create_ring(sc, 128, sizeof(struct oce_mbx), 8);
 if (!mq->ring) {
  free(mq, 2, 0);
  return (((void *)0));
 }
 cq = oce_create_cq(sc, eq, CQ_LEN_256, sizeof(struct oce_mq_cqe),
     1, 0, 0);
 if (!cq) {
  oce_destroy_ring(sc, mq->ring);
  free(mq, 2, 0);
  return (((void *)0));
 }
 mq->id = -1;
 mq->sc = sc;
 mq->cq = cq;
 mq->nitems = 128;
 if (oce_new_mq(sc, mq)) {
  oce_destroy_cq(mq->cq);
  oce_destroy_ring(sc, mq->ring);
  free(mq, 2, 0);
  return (((void *)0));
 }
 eq->cq[eq->cq_valid] = cq;
 eq->cq_valid++;
 mq->cq->eq = eq;
 mq->cq->cb_arg = mq;
 mq->cq->cq_intr = oce_intr_mq;
 return (mq);
}
void
oce_drain_mq(struct oce_mq *mq)
{
 struct oce_cq *cq = mq->cq;
 struct oce_mq_cqe *cqe;
 int ncqe = 0;
 bus_dmamap_sync((&cq->ring->dma)->tag, (&cq->ring->dma)->map, 0, (&cq->ring->dma)->map->dm_mapsize, 0x02);
 for ((cqe) = oce_ring_first(cq->ring); ((cqe)->u0.dw[3]); (cqe) = oce_ring_next(cq->ring)) {
  ((cqe)->u0.dw[3] = 0);
  ncqe++;
 }
 bus_dmamap_sync((&cq->ring->dma)->tag, (&cq->ring->dma)->map, 0, (&cq->ring->dma)->map->dm_mapsize, 0x04);
 oce_arm_cq(cq, ncqe, 0);
}
void
oce_destroy_mq(struct oce_mq *mq)
{
 struct mbx_destroy_common_mq cmd;
 struct oce_softc *sc = mq->sc;
 if (mq->id >= 0) {
  __builtin_memset((&cmd), (0), (sizeof(cmd)));
  cmd.params.req.id = __extension__({ __uint16_t __swap16gen_x = (mq->id); (__uint16_t)((__swap16gen_x & 0xff) << 8 | (__swap16gen_x & 0xff00) >> 8); });
  oce_cmd(sc, SUBSYS_COMMON, OPCODE_COMMON_DESTROY_MQ,
      0x0000, &cmd, sizeof(cmd));
 }
 if (mq->ring != ((void *)0))
  oce_destroy_ring(sc, mq->ring);
 if (mq->cq != ((void *)0))
  oce_destroy_cq(mq->cq);
 free(mq, 2, 0);
}
struct oce_cq *
oce_create_cq(struct oce_softc *sc, struct oce_eq *eq, int nitems, int isize,
    int eventable, int nodelay, int ncoalesce)
{
 struct oce_cq *cq = ((void *)0);
 cq = malloc(sizeof(struct oce_cq), 2, 0x0002 | 0x0008);
 if (!cq)
  return (((void *)0));
 cq->ring = oce_create_ring(sc, nitems, isize, 4);
 if (!cq->ring) {
  free(cq, 2, 0);
  return (((void *)0));
 }
 cq->sc = sc;
 cq->eq = eq;
 cq->nitems = nitems;
 cq->nodelay = nodelay;
 cq->ncoalesce = ncoalesce;
 cq->eventable = eventable;
 if (oce_new_cq(sc, cq)) {
  oce_destroy_ring(sc, cq->ring);
  free(cq, 2, 0);
  return (((void *)0));
 }
 sc->sc_cq[sc->sc_ncq++] = cq;
 return (cq);
}
void
oce_destroy_cq(struct oce_cq *cq)
{
 struct mbx_destroy_common_cq cmd;
 struct oce_softc *sc = cq->sc;
 if (cq->id >= 0) {
  __builtin_memset((&cmd), (0), (sizeof(cmd)));
  cmd.params.req.id = __extension__({ __uint16_t __swap16gen_x = (cq->id); (__uint16_t)((__swap16gen_x & 0xff) << 8 | (__swap16gen_x & 0xff00) >> 8); });
  oce_cmd(sc, SUBSYS_COMMON, OPCODE_COMMON_DESTROY_CQ,
      0x0000, &cmd, sizeof(cmd));
 }
 if (cq->ring != ((void *)0))
  oce_destroy_ring(sc, cq->ring);
 free(cq, 2, 0);
}
static inline void
oce_arm_cq(struct oce_cq *cq, int ncqe, int rearm)
{
 oce_write_db(cq->sc, 0x0120, cq->id | (ncqe << 16) | (rearm << 29));
}
void
oce_free_posted_rxbuf(struct oce_rq *rq)
{
 struct oce_softc *sc = rq->sc;
 struct oce_pkt *pkt;
 while ((pkt = oce_pkt_get(&rq->pkt_list)) != ((void *)0)) {
  bus_dmamap_sync(sc->sc_dmat, pkt->map, 0, pkt->map->dm_mapsize,
      0x02);
  bus_dmamap_unload(sc->sc_dmat, pkt->map);
  if (pkt->mbuf != ((void *)0)) {
   m_freem(pkt->mbuf);
   pkt->mbuf = ((void *)0);
  }
  oce_pkt_put(&rq->pkt_free, pkt);
  do { (&rq->rxring)->rxr_alive -= (1); } while (0);
 }
}
int
oce_dma_alloc(struct oce_softc *sc, bus_size_t size, struct oce_dma_mem *dma)
{
 int rc;
 __builtin_memset((dma), (0), (sizeof(struct oce_dma_mem)));
 dma->tag = sc->sc_dmat;
 rc = bus_dmamap_create(dma->tag, size, 1, size, 0, 0x0001,
     &dma->map);
 if (rc != 0) {
  printf("%s: failed to allocate DMA handle",
      sc->sc_dev.dv_xname);
  goto fail_0;
 }
 rc = bus_dmamem_alloc(dma->tag, size, (1 << 13), 0, &dma->segs, 1,
     &dma->nsegs, 0x0001 | 0x0800);
 if (rc != 0) {
  printf("%s: failed to allocate DMA memory",
      sc->sc_dev.dv_xname);
  goto fail_1;
 }
 rc = bus_dmamem_map(dma->tag, &dma->segs, dma->nsegs, size,
     &dma->vaddr, 0x0001);
 if (rc != 0) {
  printf("%s: failed to map DMA memory", sc->sc_dev.dv_xname);
  goto fail_2;
 }
 rc = bus_dmamap_load(dma->tag, dma->map, dma->vaddr, size, ((void *)0),
     0x0001);
 if (rc != 0) {
  printf("%s: failed to load DMA memory", sc->sc_dev.dv_xname);
  goto fail_3;
 }
 bus_dmamap_sync(dma->tag, dma->map, 0, dma->map->dm_mapsize,
     0x01 | 0x04);
 dma->paddr = dma->map->dm_segs[0].ds_addr;
 dma->size = size;
 return (0);
fail_3:
 bus_dmamem_unmap(dma->tag, dma->vaddr, size);
fail_2:
 bus_dmamem_free(dma->tag, &dma->segs, dma->nsegs);
fail_1:
 bus_dmamap_destroy(dma->tag, dma->map);
fail_0:
 return (rc);
}
void
oce_dma_free(struct oce_softc *sc, struct oce_dma_mem *dma)
{
 if (dma->tag == ((void *)0))
  return;
 if (dma->map != ((void *)0)) {
  bus_dmamap_sync((dma)->tag, (dma)->map, 0, (dma)->map->dm_mapsize, 0x02 | 0x08);
  bus_dmamap_unload(dma->tag, dma->map);
  if (dma->vaddr != 0) {
   bus_dmamem_free(dma->tag, &dma->segs, dma->nsegs);
   dma->vaddr = 0;
  }
  bus_dmamap_destroy(dma->tag, dma->map);
  dma->map = ((void *)0);
  dma->tag = ((void *)0);
 }
}
struct oce_ring *
oce_create_ring(struct oce_softc *sc, int nitems, int isize, int maxsegs)
{
 struct oce_dma_mem *dma;
 struct oce_ring *ring;
 bus_size_t size = nitems * isize;
 int rc;
 if (size > maxsegs * (1 << 13))
  return (((void *)0));
 ring = malloc(sizeof(struct oce_ring), 2, 0x0002 | 0x0008);
 if (ring == ((void *)0))
  return (((void *)0));
 ring->isize = isize;
 ring->nitems = nitems;
 dma = &ring->dma;
 dma->tag = sc->sc_dmat;
 rc = bus_dmamap_create(dma->tag, size, maxsegs, (1 << 13), 0,
     0x0001, &dma->map);
 if (rc != 0) {
  printf("%s: failed to allocate DMA handle",
      sc->sc_dev.dv_xname);
  goto fail_0;
 }
 rc = bus_dmamem_alloc(dma->tag, size, 0, 0, &dma->segs, maxsegs,
     &dma->nsegs, 0x0001 | 0x0800);
 if (rc != 0) {
  printf("%s: failed to allocate DMA memory",
      sc->sc_dev.dv_xname);
  goto fail_1;
 }
 rc = bus_dmamem_map(dma->tag, &dma->segs, dma->nsegs, size,
     &dma->vaddr, 0x0001);
 if (rc != 0) {
  printf("%s: failed to map DMA memory", sc->sc_dev.dv_xname);
  goto fail_2;
 }
 bus_dmamap_sync(dma->tag, dma->map, 0, dma->map->dm_mapsize,
     0x01 | 0x04);
 dma->paddr = 0;
 dma->size = size;
 return (ring);
fail_2:
 bus_dmamem_free(dma->tag, &dma->segs, dma->nsegs);
fail_1:
 bus_dmamap_destroy(dma->tag, dma->map);
fail_0:
 free(ring, 2, 0);
 return (((void *)0));
}
void
oce_destroy_ring(struct oce_softc *sc, struct oce_ring *ring)
{
 oce_dma_free(sc, &ring->dma);
 free(ring, 2, 0);
}
int
oce_load_ring(struct oce_softc *sc, struct oce_ring *ring,
    struct oce_pa *pa, int maxsegs)
{
 struct oce_dma_mem *dma = &ring->dma;
 int i;
 if (bus_dmamap_load(dma->tag, dma->map, dma->vaddr,
     ring->isize * ring->nitems, ((void *)0), 0x0001)) {
  printf("%s: failed to load a ring map\n", sc->sc_dev.dv_xname);
  return (0);
 }
 if (dma->map->dm_nsegs > maxsegs) {
  printf("%s: too many segments\n", sc->sc_dev.dv_xname);
  return (0);
 }
 bus_dmamap_sync(dma->tag, dma->map, 0, dma->map->dm_mapsize,
     0x01 | 0x04);
 for (i = 0; i < dma->map->dm_nsegs; i++)
  pa[i].addr = dma->map->dm_segs[i].ds_addr;
 return (dma->map->dm_nsegs);
}
static inline void *
oce_ring_get(struct oce_ring *ring)
{
 int index = ring->index;
 if (++ring->index == ring->nitems)
  ring->index = 0;
 return ((void *)(ring->dma.vaddr + index * ring->isize));
}
static inline void *
oce_ring_first(struct oce_ring *ring)
{
 return ((void *)(ring->dma.vaddr + ring->index * ring->isize));
}
static inline void *
oce_ring_next(struct oce_ring *ring)
{
 if (++ring->index == ring->nitems)
  ring->index = 0;
 return ((void *)(ring->dma.vaddr + ring->index * ring->isize));
}
struct oce_pkt *
oce_pkt_alloc(struct oce_softc *sc, size_t size, int nsegs, int maxsegsz)
{
 struct oce_pkt *pkt;
 if ((pkt = pool_get(oce_pkt_pool, 0x0002 | 0x0008)) == ((void *)0))
  return (((void *)0));
 if (bus_dmamap_create(sc->sc_dmat, size, nsegs, maxsegsz, 0,
     0x0001 | 0x0002, &pkt->map)) {
  pool_put(oce_pkt_pool, pkt);
  return (((void *)0));
 }
 return (pkt);
}
void
oce_pkt_free(struct oce_softc *sc, struct oce_pkt *pkt)
{
 if (pkt->map) {
  bus_dmamap_unload(sc->sc_dmat, pkt->map);
  bus_dmamap_destroy(sc->sc_dmat, pkt->map);
 }
 pool_put(oce_pkt_pool, pkt);
}
static inline struct oce_pkt *
oce_pkt_get(struct oce_pkt_list *lst)
{
 struct oce_pkt *pkt;
 pkt = ((lst)->sqh_first);
 if (pkt == ((void *)0))
  return (((void *)0));
 do { if (((lst)->sqh_first = (lst)->sqh_first->entry.sqe_next) == ((void *)0)) (lst)->sqh_last = &(lst)->sqh_first; } while (0);
 return (pkt);
}
static inline void
oce_pkt_put(struct oce_pkt_list *lst, struct oce_pkt *pkt)
{
 do { (pkt)->entry.sqe_next = ((void *)0); *(lst)->sqh_last = (pkt); (lst)->sqh_last = &(pkt)->entry.sqe_next; } while (0);
}
int
oce_init_fw(struct oce_softc *sc)
{
 struct ioctl_common_function_reset cmd;
 uint32_t reg64;
 int err = 0, tmo = 60000;
 reg64 = oce_read_csr(sc, (((((sc)->sc_flags) & (0x00000001 | 0x00000002))) ? 0x0ac : 0x400));
 if ((reg64 & 0xffff) <= 0x01) {
  reg64 = (reg64 & ~0xffff) | 0x03;
  oce_write_csr(sc, (((((sc)->sc_flags) & (0x00000001 | 0x00000002))) ? 0x0ac : 0x400), reg64);
 }
 for (;;) {
  if (--tmo == 0)
   break;
  delay(1000);
  reg64 = oce_read_csr(sc, (((((sc)->sc_flags) & (0x00000001 | 0x00000002))) ? 0x0ac : 0x400));
  if (reg64 & (1<<31)) {
   printf(": POST failed: %#x\n", reg64);
   return (6);
  }
  if ((reg64 & 0xffff) == 0xc000) {
   if (((sc->sc_flags) & (0x00001000))) {
    __builtin_memset((&cmd), (0), (sizeof(cmd)));
    err = oce_cmd(sc, SUBSYS_COMMON,
        OPCODE_COMMON_FUNCTION_RESET,
        0x0000, &cmd, sizeof(cmd));
   }
   return (err);
  }
 }
 printf(": POST timed out: %#x\n", reg64);
 return (6);
}
static inline int
oce_mbox_wait(struct oce_softc *sc)
{
 int i;
 for (i = 0; i < 20000; i++) {
  if (oce_read_db(sc, 0x0160) & (1<<0))
   return (0);
  delay(100);
 }
 return (60);
}
int
oce_mbox_dispatch(struct oce_softc *sc)
{
 uint32_t pa, reg64;
 int err;
 pa = (uint32_t)((uint64_t)((&sc->sc_mbx)->paddr) >> 34);
 reg64 = (1<<1) | (pa << 2);
 if ((err = oce_mbox_wait(sc)) != 0)
  goto out;
 oce_write_db(sc, 0x0160, reg64);
 pa = (uint32_t)((uint64_t)((&sc->sc_mbx)->paddr) >> 4) & 0x3fffffff;
 reg64 = pa << 2;
 if ((err = oce_mbox_wait(sc)) != 0)
  goto out;
 oce_write_db(sc, 0x0160, reg64);
 bus_dmamap_sync((&sc->sc_mbx)->tag, (&sc->sc_mbx)->map, 0, (&sc->sc_mbx)->map->dm_mapsize, 0x08);
 if ((err = oce_mbox_wait(sc)) != 0)
  goto out;
out:
 bus_dmamap_sync((&sc->sc_mbx)->tag, (&sc->sc_mbx)->map, 0, (&sc->sc_mbx)->map->dm_mapsize, 0x01);
 return (err);
}
int
oce_mbox_init(struct oce_softc *sc)
{
 struct oce_bmbx *bmbx = ((void *)((&sc->sc_mbx)->vaddr));
 uint8_t *ptr = (uint8_t *)&bmbx->mbx;
 if (!((sc->sc_flags) & (0x00002000)))
  return (0);
 *ptr++ = 0xff;
 *ptr++ = 0x12;
 *ptr++ = 0x34;
 *ptr++ = 0xff;
 *ptr++ = 0xff;
 *ptr++ = 0x56;
 *ptr++ = 0x78;
 *ptr = 0xff;
 return (oce_mbox_dispatch(sc));
}
int
oce_cmd(struct oce_softc *sc, int subsys, int opcode, int version,
    void *payload, int length)
{
 struct oce_bmbx *bmbx = ((void *)((&sc->sc_mbx)->vaddr));
 struct oce_mbx *mbx = &bmbx->mbx;
 struct mbx_hdr *hdr;
 caddr_t epayload = ((void *)0);
 int err;
 if (length > (59 * 4))
  epayload = ((void *)((&sc->sc_pld)->vaddr));
 if (length > 65536)
  return (22);
 bus_dmamap_sync((&sc->sc_mbx)->tag, (&sc->sc_mbx)->map, 0, (&sc->sc_mbx)->map->dm_mapsize, 0x01 | 0x04);
 __builtin_memset((mbx), (0), (sizeof(struct oce_mbx)));
 mbx->payload_length = length;
 if (epayload) {
  mbx->flags = (1<<3);
  bus_dmamap_sync((&sc->sc_pld)->tag, (&sc->sc_pld)->map, 0, (&sc->sc_pld)->map->dm_mapsize, 0x01);
  __builtin_memcpy((epayload), (payload), (length));
  mbx->pld.sgl[0].addr = ((&sc->sc_pld)->paddr);
  mbx->pld.sgl[0].length = length;
  hdr = (struct mbx_hdr *)epayload;
 } else {
  mbx->flags = (1<<0);
  __builtin_memcpy((mbx->pld.data), (payload), (length));
  hdr = (struct mbx_hdr *)&mbx->pld.data;
 }
 hdr->subsys = subsys;
 hdr->opcode = opcode;
 hdr->version = version;
 hdr->length = length - sizeof(*hdr);
 if (opcode == OPCODE_COMMON_FUNCTION_RESET)
  hdr->timeout = 2 * 5;
 else
  hdr->timeout = 5;
 if (epayload)
  bus_dmamap_sync((&sc->sc_pld)->tag, (&sc->sc_pld)->map, 0, (&sc->sc_pld)->map->dm_mapsize, 0x04);
 err = oce_mbox_dispatch(sc);
 if (err == 0) {
  if (epayload) {
   bus_dmamap_sync((&sc->sc_pld)->tag, (&sc->sc_pld)->map, 0, (&sc->sc_pld)->map->dm_mapsize, 0x08);
   __builtin_memcpy((payload), (epayload), (length));
  } else
   __builtin_memcpy((payload), (&mbx->pld.data), (length));
 } else
  printf("%s: mailbox timeout, subsys %d op %d ver %d "
      "%spayload lenght %d\n", sc->sc_dev.dv_xname, subsys,
      opcode, version, epayload ? "ext " : "",
      length);
 return (err);
}
void
oce_first_mcc(struct oce_softc *sc)
{
 struct oce_mbx *mbx;
 struct oce_mq *mq = sc->sc_mq;
 struct mbx_hdr *hdr;
 struct mbx_get_common_fw_version *cmd;
 mbx = oce_ring_get(mq->ring);
 __builtin_memset((mbx), (0), (sizeof(struct oce_mbx)));
 cmd = (struct mbx_get_common_fw_version *)&mbx->pld.data;
 hdr = &cmd->hdr;
 hdr->subsys = SUBSYS_COMMON;
 hdr->opcode = OPCODE_COMMON_GET_FW_VERSION;
 hdr->version = 0x0000;
 hdr->timeout = 5;
 hdr->length = sizeof(*cmd) - sizeof(*hdr);
 mbx->flags = (1<<0);
 mbx->payload_length = sizeof(*cmd);
 bus_dmamap_sync((&mq->ring->dma)->tag, (&mq->ring->dma)->map, 0, (&mq->ring->dma)->map->dm_mapsize, 0x01 | 0x04);
 oce_write_db(sc, 0x0140, mq->id | (1 << 16));
}
int
oce_get_fw_config(struct oce_softc *sc)
{
 struct mbx_common_query_fw_config cmd;
 int err;
 __builtin_memset((&cmd), (0), (sizeof(cmd)));
 err = oce_cmd(sc, SUBSYS_COMMON, OPCODE_COMMON_QUERY_FIRMWARE_CONFIG,
     0x0000, &cmd, sizeof(cmd));
 if (err)
  return (err);
 sc->sc_port = cmd.params.rsp.port_id;
 sc->sc_fmode = cmd.params.rsp.function_mode;
 return (0);
}
int
oce_check_native_mode(struct oce_softc *sc)
{
 struct mbx_common_set_function_cap cmd;
 int err;
 __builtin_memset((&cmd), (0), (sizeof(cmd)));
 cmd.params.req.valid_capability_flags = 2 |
     4;
 cmd.params.req.capability_flags = 4;
 err = oce_cmd(sc, SUBSYS_COMMON, OPCODE_COMMON_SET_FUNCTIONAL_CAPS,
     0x0000, &cmd, sizeof(cmd));
 if (err)
  return (err);
 if (cmd.params.rsp.capability_flags & 4)
  ((sc->sc_flags) |= (0x00000100));
 return (0);
}
int
oce_create_iface(struct oce_softc *sc, uint8_t *macaddr)
{
 struct mbx_create_common_iface cmd;
 uint32_t caps, caps_en;
 int err = 0;
 caps = 0x000010 | 0x000020 |
     0x000008 | 0x000200 |
     0x000004;
 caps_en = 0x000010 | 0x000020;
 if (!(((sc)->sc_flags) & (0x00000008))) {
  caps |= 0x000800;
  caps_en |= 0x000800;
 }
 if (sc->sc_rss_enable)
  caps_en |= 0x000004;
 __builtin_memset((&cmd), (0), (sizeof(cmd)));
 cmd.params.req.version = 0;
 cmd.params.req.cap_flags = __extension__({ __uint32_t __swap32gen_x = (caps); (__uint32_t)((__swap32gen_x & 0xff) << 24 | (__swap32gen_x & 0xff00) << 8 | (__swap32gen_x & 0xff0000) >> 8 | (__swap32gen_x & 0xff000000) >> 24); });
 cmd.params.req.enable_flags = __extension__({ __uint32_t __swap32gen_x = (caps_en); (__uint32_t)((__swap32gen_x & 0xff) << 24 | (__swap32gen_x & 0xff00) << 8 | (__swap32gen_x & 0xff0000) >> 8 | (__swap32gen_x & 0xff000000) >> 24); });
 if (macaddr != ((void *)0)) {
  __builtin_memcpy((&cmd.params.req.mac_addr[0]), (macaddr), (6));
  cmd.params.req.mac_invalid = 0;
 } else
  cmd.params.req.mac_invalid = 1;
 err = oce_cmd(sc, SUBSYS_COMMON, OPCODE_COMMON_CREATE_IFACE,
     0x0000, &cmd, sizeof(cmd));
 if (err)
  return (err);
 sc->sc_if_id = __extension__({ __uint32_t __swap32gen_x = (cmd.params.rsp.if_id); (__uint32_t)((__swap32gen_x & 0xff) << 24 | (__swap32gen_x & 0xff00) << 8 | (__swap32gen_x & 0xff0000) >> 8 | (__swap32gen_x & 0xff000000) >> 24); });
 if (macaddr != ((void *)0))
  sc->sc_pmac_id = __extension__({ __uint32_t __swap32gen_x = (cmd.params.rsp.pmac_id); (__uint32_t)((__swap32gen_x & 0xff) << 24 | (__swap32gen_x & 0xff00) << 8 | (__swap32gen_x & 0xff0000) >> 8 | (__swap32gen_x & 0xff000000) >> 24); });
 return (0);
}
int
oce_config_vlan(struct oce_softc *sc, struct normal_vlan *vtags, int nvtags,
    int untagged, int promisc)
{
 struct mbx_common_config_vlan cmd;
 __builtin_memset((&cmd), (0), (sizeof(cmd)));
 cmd.params.req.if_id = sc->sc_if_id;
 cmd.params.req.promisc = promisc;
 cmd.params.req.untagged = untagged;
 cmd.params.req.num_vlans = nvtags;
 if (!promisc)
  __builtin_memcpy((cmd.params.req.tags.normal_vlans), (vtags), (nvtags * sizeof(struct normal_vlan)));
 return (oce_cmd(sc, SUBSYS_COMMON, OPCODE_COMMON_CONFIG_IFACE_VLAN,
     0x0000, &cmd, sizeof(cmd)));
}
int
oce_set_flow_control(struct oce_softc *sc, uint64_t flags)
{
 struct mbx_common_get_set_flow_control cmd;
 int err;
 __builtin_memset((&cmd), (0), (sizeof(cmd)));
 cmd.rx_flow_control = flags & 0x0000000000020000ULL ? 1 : 0;
 cmd.tx_flow_control = flags & 0x0000000000040000ULL ? 1 : 0;
 err = oce_cmd(sc, SUBSYS_COMMON, OPCODE_COMMON_SET_FLOW_CONTROL,
     0x0000, &cmd, sizeof(cmd));
 if (err)
  return (err);
 __builtin_memset((&cmd), (0), (sizeof(cmd)));
 err = oce_cmd(sc, SUBSYS_COMMON, OPCODE_COMMON_GET_FLOW_CONTROL,
     0x0000, &cmd, sizeof(cmd));
 if (err)
  return (err);
 sc->sc_fc = cmd.rx_flow_control ? 0x0000000000020000ULL : 0;
 sc->sc_fc |= cmd.tx_flow_control ? 0x0000000000040000ULL : 0;
 return (0);
}
int
oce_update_mcast(struct oce_softc *sc,
    uint8_t multi[][6], int naddr)
{
 struct mbx_set_common_iface_multicast cmd;
 __builtin_memset((&cmd), (0), (sizeof(cmd)));
 __builtin_memcpy((&cmd.params.req.mac[0]), (&multi[0]), (naddr * 6));
 cmd.params.req.num_mac = __extension__({ __uint16_t __swap16gen_x = (naddr); (__uint16_t)((__swap16gen_x & 0xff) << 8 | (__swap16gen_x & 0xff00) >> 8); });
 cmd.params.req.if_id = sc->sc_if_id;
 return (oce_cmd(sc, SUBSYS_COMMON, OPCODE_COMMON_SET_IFACE_MULTICAST,
     0x0000, &cmd, sizeof(cmd)));
}
int
oce_set_promisc(struct oce_softc *sc, int enable)
{
 struct mbx_set_common_iface_rx_filter cmd;
 struct iface_rx_filter_ctx *req;
 __builtin_memset((&cmd), (0), (sizeof(cmd)));
 req = &cmd.params.req;
 req->if_id = sc->sc_if_id;
 if (enable)
  req->iface_flags = req->iface_flags_mask =
      0x000008 | 0x000080;
 return (oce_cmd(sc, SUBSYS_COMMON, OPCODE_COMMON_SET_IFACE_RX_FILTER,
     0x0000, &cmd, sizeof(cmd)));
}
int
oce_get_link_status(struct oce_softc *sc)
{
 struct mbx_query_common_link_config cmd;
 int err;
 __builtin_memset((&cmd), (0), (sizeof(cmd)));
 err = oce_cmd(sc, SUBSYS_COMMON, OPCODE_COMMON_QUERY_LINK_CONFIG,
     0x0000, &cmd, sizeof(cmd));
 if (err)
  return (err);
 sc->sc_link_up = (__extension__({ __uint32_t __swap32gen_x = (cmd.params.rsp.logical_link_status); (__uint32_t)((__swap32gen_x & 0xff) << 24 | (__swap32gen_x & 0xff00) << 8 | (__swap32gen_x & 0xff0000) >> 8 | (__swap32gen_x & 0xff000000) >> 24); }) ==
     1);
 if (cmd.params.rsp.mac_speed < 5)
  sc->sc_link_speed = cmd.params.rsp.mac_speed;
 else
  sc->sc_link_speed = 0;
 return (0);
}
void
oce_macaddr_set(struct oce_softc *sc)
{
 uint32_t old_pmac_id = sc->sc_pmac_id;
 int status = 0;
 if (!__builtin_memcmp((sc->sc_macaddr), (sc->sc_ac.ac_enaddr), (6)))
  return;
 status = oce_macaddr_add(sc, sc->sc_ac.ac_enaddr, &sc->sc_pmac_id);
 if (!status)
  status = oce_macaddr_del(sc, old_pmac_id);
 else
  printf("%s: failed to set MAC address\n", sc->sc_dev.dv_xname);
}
int
oce_macaddr_get(struct oce_softc *sc, uint8_t *macaddr)
{
 struct mbx_query_common_iface_mac cmd;
 int err;
 __builtin_memset((&cmd), (0), (sizeof(cmd)));
 cmd.params.req.type = 0x1;
 cmd.params.req.permanent = 1;
 err = oce_cmd(sc, SUBSYS_COMMON, OPCODE_COMMON_QUERY_IFACE_MAC,
     0x0000, &cmd, sizeof(cmd));
 if (err == 0)
  __builtin_memcpy((macaddr), (&cmd.params.rsp.mac.mac_addr[0]), (6));
 return (err);
}
int
oce_macaddr_add(struct oce_softc *sc, uint8_t *enaddr, uint32_t *pmac)
{
 struct mbx_add_common_iface_mac cmd;
 int err;
 __builtin_memset((&cmd), (0), (sizeof(cmd)));
 cmd.params.req.if_id = __extension__({ __uint16_t __swap16gen_x = (sc->sc_if_id); (__uint16_t)((__swap16gen_x & 0xff) << 8 | (__swap16gen_x & 0xff00) >> 8); });
 __builtin_memcpy((cmd.params.req.mac_address), (enaddr), (6));
 err = oce_cmd(sc, SUBSYS_COMMON, OPCODE_COMMON_ADD_IFACE_MAC,
     0x0000, &cmd, sizeof(cmd));
 if (err == 0)
  *pmac = __extension__({ __uint32_t __swap32gen_x = (cmd.params.rsp.pmac_id); (__uint32_t)((__swap32gen_x & 0xff) << 24 | (__swap32gen_x & 0xff00) << 8 | (__swap32gen_x & 0xff0000) >> 8 | (__swap32gen_x & 0xff000000) >> 24); });
 return (err);
}
int
oce_macaddr_del(struct oce_softc *sc, uint32_t pmac)
{
 struct mbx_del_common_iface_mac cmd;
 __builtin_memset((&cmd), (0), (sizeof(cmd)));
 cmd.params.req.if_id = __extension__({ __uint16_t __swap16gen_x = (sc->sc_if_id); (__uint16_t)((__swap16gen_x & 0xff) << 8 | (__swap16gen_x & 0xff00) >> 8); });
 cmd.params.req.pmac_id = __extension__({ __uint32_t __swap32gen_x = (pmac); (__uint32_t)((__swap32gen_x & 0xff) << 24 | (__swap32gen_x & 0xff00) << 8 | (__swap32gen_x & 0xff0000) >> 8 | (__swap32gen_x & 0xff000000) >> 24); });
 return (oce_cmd(sc, SUBSYS_COMMON, OPCODE_COMMON_DEL_IFACE_MAC,
     0x0000, &cmd, sizeof(cmd)));
}
int
oce_new_rq(struct oce_softc *sc, struct oce_rq *rq)
{
 struct mbx_create_nic_rq cmd;
 int err, npages;
 __builtin_memset((&cmd), (0), (sizeof(cmd)));
 npages = oce_load_ring(sc, rq->ring, &cmd.params.req.pages[0],
     (sizeof((cmd.params.req.pages)) / sizeof((cmd.params.req.pages)[0])));
 if (!npages) {
  printf("%s: failed to load the rq ring\n", __func__);
  return (1);
 }
 if ((((sc)->sc_flags) & (0x00000008))) {
  cmd.params.req.frag_size = rq->fragsize / 2048;
  cmd.params.req.page_size = 1;
 } else
  cmd.params.req.frag_size = ilog2(rq->fragsize);
 cmd.params.req.num_pages = npages;
 cmd.params.req.cq_id = rq->cq->id;
 cmd.params.req.if_id = __extension__({ __uint32_t __swap32gen_x = (sc->sc_if_id); (__uint32_t)((__swap32gen_x & 0xff) << 24 | (__swap32gen_x & 0xff00) << 8 | (__swap32gen_x & 0xff0000) >> 8 | (__swap32gen_x & 0xff000000) >> 24); });
 cmd.params.req.max_frame_size = __extension__({ __uint16_t __swap16gen_x = (rq->mtu); (__uint16_t)((__swap16gen_x & 0xff) << 8 | (__swap16gen_x & 0xff00) >> 8); });
 cmd.params.req.is_rss_queue = __extension__({ __uint32_t __swap32gen_x = (rq->rss); (__uint32_t)((__swap32gen_x & 0xff) << 24 | (__swap32gen_x & 0xff00) << 8 | (__swap32gen_x & 0xff0000) >> 8 | (__swap32gen_x & 0xff000000) >> 24); });
 err = oce_cmd(sc, SUBSYS_NIC, OPCODE_NIC_CREATE_RQ,
     (((sc)->sc_flags) & (0x00000008)) ? 0x0001 : 0x0000, &cmd,
     sizeof(cmd));
 if (err)
  return (err);
 rq->id = __extension__({ __uint16_t __swap16gen_x = (cmd.params.rsp.rq_id); (__uint16_t)((__swap16gen_x & 0xff) << 8 | (__swap16gen_x & 0xff00) >> 8); });
 rq->rss_cpuid = cmd.params.rsp.rss_cpuid;
 return (0);
}
int
oce_new_wq(struct oce_softc *sc, struct oce_wq *wq)
{
 struct mbx_create_nic_wq cmd;
 int err, npages;
 __builtin_memset((&cmd), (0), (sizeof(cmd)));
 npages = oce_load_ring(sc, wq->ring, &cmd.params.req.pages[0],
     (sizeof((cmd.params.req.pages)) / sizeof((cmd.params.req.pages)[0])));
 if (!npages) {
  printf("%s: failed to load the wq ring\n", __func__);
  return (1);
 }
 if ((((sc)->sc_flags) & (0x00000008)))
  cmd.params.req.if_id = sc->sc_if_id;
 cmd.params.req.nic_wq_type = 0x02;
 cmd.params.req.num_pages = npages;
 cmd.params.req.wq_size = ilog2(wq->nitems) + 1;
 cmd.params.req.cq_id = __extension__({ __uint16_t __swap16gen_x = (wq->cq->id); (__uint16_t)((__swap16gen_x & 0xff) << 8 | (__swap16gen_x & 0xff00) >> 8); });
 cmd.params.req.ulp_num = 1;
 err = oce_cmd(sc, SUBSYS_NIC, OPCODE_NIC_CREATE_WQ,
     (((sc)->sc_flags) & (0x00000008)) ? 0x0001 : 0x0000, &cmd,
     sizeof(cmd));
 if (err)
  return (err);
 wq->id = __extension__({ __uint16_t __swap16gen_x = (cmd.params.rsp.wq_id); (__uint16_t)((__swap16gen_x & 0xff) << 8 | (__swap16gen_x & 0xff00) >> 8); });
 return (0);
}
int
oce_new_mq(struct oce_softc *sc, struct oce_mq *mq)
{
 struct mbx_create_common_mq_ex cmd;
 union oce_mq_ext_ctx *ctx;
 int err, npages;
 __builtin_memset((&cmd), (0), (sizeof(cmd)));
 npages = oce_load_ring(sc, mq->ring, &cmd.params.req.pages[0],
     (sizeof((cmd.params.req.pages)) / sizeof((cmd.params.req.pages)[0])));
 if (!npages) {
  printf("%s: failed to load the mq ring\n", __func__);
  return (-1);
 }
 ctx = &cmd.params.req.context;
 ctx->v0.num_pages = npages;
 ctx->v0.cq_id = mq->cq->id;
 ctx->v0.ring_size = ilog2(mq->nitems) + 1;
 ctx->v0.valid = 1;
 ctx->v0.async_evt_bitmap = 0xffffffff;
 err = oce_cmd(sc, SUBSYS_COMMON, OPCODE_COMMON_CREATE_MQ_EXT,
     0x0000, &cmd, sizeof(cmd));
 if (err)
  return (err);
 mq->id = __extension__({ __uint16_t __swap16gen_x = (cmd.params.rsp.mq_id); (__uint16_t)((__swap16gen_x & 0xff) << 8 | (__swap16gen_x & 0xff00) >> 8); });
 return (0);
}
int
oce_new_eq(struct oce_softc *sc, struct oce_eq *eq)
{
 struct mbx_create_common_eq cmd;
 int err, npages;
 __builtin_memset((&cmd), (0), (sizeof(cmd)));
 npages = oce_load_ring(sc, eq->ring, &cmd.params.req.pages[0],
     (sizeof((cmd.params.req.pages)) / sizeof((cmd.params.req.pages)[0])));
 if (!npages) {
  printf("%s: failed to load the eq ring\n", __func__);
  return (-1);
 }
 cmd.params.req.ctx.num_pages = __extension__({ __uint16_t __swap16gen_x = (npages); (__uint16_t)((__swap16gen_x & 0xff) << 8 | (__swap16gen_x & 0xff00) >> 8); });
 cmd.params.req.ctx.valid = 1;
 cmd.params.req.ctx.size = (eq->isize == 4) ? 0 : 1;
 cmd.params.req.ctx.count = ilog2(eq->nitems / 256);
 cmd.params.req.ctx.armed = 0;
 cmd.params.req.ctx.delay_mult = __extension__({ __uint32_t __swap32gen_x = (eq->delay); (__uint32_t)((__swap32gen_x & 0xff) << 24 | (__swap32gen_x & 0xff00) << 8 | (__swap32gen_x & 0xff0000) >> 8 | (__swap32gen_x & 0xff000000) >> 24); });
 err = oce_cmd(sc, SUBSYS_COMMON, OPCODE_COMMON_CREATE_EQ,
     0x0000, &cmd, sizeof(cmd));
 if (err)
  return (err);
 eq->id = __extension__({ __uint16_t __swap16gen_x = (cmd.params.rsp.eq_id); (__uint16_t)((__swap16gen_x & 0xff) << 8 | (__swap16gen_x & 0xff00) >> 8); });
 return (0);
}
int
oce_new_cq(struct oce_softc *sc, struct oce_cq *cq)
{
 struct mbx_create_common_cq cmd;
 union oce_cq_ctx *ctx;
 int err, npages;
 __builtin_memset((&cmd), (0), (sizeof(cmd)));
 npages = oce_load_ring(sc, cq->ring, &cmd.params.req.pages[0],
     (sizeof((cmd.params.req.pages)) / sizeof((cmd.params.req.pages)[0])));
 if (!npages) {
  printf("%s: failed to load the cq ring\n", __func__);
  return (-1);
 }
 ctx = &cmd.params.req.cq_ctx;
 if ((((sc)->sc_flags) & (0x00000008))) {
  ctx->v2.num_pages = __extension__({ __uint16_t __swap16gen_x = (npages); (__uint16_t)((__swap16gen_x & 0xff) << 8 | (__swap16gen_x & 0xff00) >> 8); });
  ctx->v2.page_size = 1;
  ctx->v2.eventable = cq->eventable;
  ctx->v2.valid = 1;
  ctx->v2.count = ilog2(cq->nitems / 256);
  ctx->v2.nodelay = cq->nodelay;
  ctx->v2.coalesce_wm = cq->ncoalesce;
  ctx->v2.armed = 0;
  ctx->v2.eq_id = cq->eq->id;
  if (ctx->v2.count == 3) {
   if (cq->nitems > (4*1024)-1)
    ctx->v2.cqe_count = (4*1024)-1;
   else
    ctx->v2.cqe_count = cq->nitems;
  }
 } else {
  ctx->v0.num_pages = __extension__({ __uint16_t __swap16gen_x = (npages); (__uint16_t)((__swap16gen_x & 0xff) << 8 | (__swap16gen_x & 0xff00) >> 8); });
  ctx->v0.eventable = cq->eventable;
  ctx->v0.valid = 1;
  ctx->v0.count = ilog2(cq->nitems / 256);
  ctx->v0.nodelay = cq->nodelay;
  ctx->v0.coalesce_wm = cq->ncoalesce;
  ctx->v0.armed = 0;
  ctx->v0.eq_id = cq->eq->id;
 }
 err = oce_cmd(sc, SUBSYS_COMMON, OPCODE_COMMON_CREATE_CQ,
     (((sc)->sc_flags) & (0x00000008)) ? 0x0002 : 0x0000, &cmd,
     sizeof(cmd));
 if (err)
  return (err);
 cq->id = __extension__({ __uint16_t __swap16gen_x = (cmd.params.rsp.cq_id); (__uint16_t)((__swap16gen_x & 0xff) << 8 | (__swap16gen_x & 0xff00) >> 8); });
 return (0);
}
int
oce_init_stats(struct oce_softc *sc)
{
 union cmd {
  struct mbx_get_nic_stats_v0 _be2;
  struct mbx_get_nic_stats _be3;
  struct mbx_get_pport_stats _xe201;
 };
 sc->sc_statcmd = malloc(sizeof(union cmd), 2, 0x0008 | 0x0002);
 if (sc->sc_statcmd == ((void *)0)) {
  printf("%s: failed to allocate statistics command block\n",
      sc->sc_dev.dv_xname);
  return (-1);
 }
 return (0);
}
int
oce_update_stats(struct oce_softc *sc)
{
 struct ifnet *ifp = &sc->sc_ac.ac_if;
 uint64_t rxe, txe;
 int err;
 if (((sc->sc_flags) & (0x00000001)))
  err = oce_stats_be2(sc, &rxe, &txe);
 else if (((sc->sc_flags) & (0x00000002)))
  err = oce_stats_be3(sc, &rxe, &txe);
 else
  err = oce_stats_xe(sc, &rxe, &txe);
 if (err)
  return (err);
 ifp->if_data.ifi_ierrors += (rxe > sc->sc_rx_errors) ?
     rxe - sc->sc_rx_errors : sc->sc_rx_errors - rxe;
 sc->sc_rx_errors = rxe;
 ifp->if_data.ifi_oerrors += (txe > sc->sc_tx_errors) ?
     txe - sc->sc_tx_errors : sc->sc_tx_errors - txe;
 sc->sc_tx_errors = txe;
 return (0);
}
int
oce_stats_be2(struct oce_softc *sc, uint64_t *rxe, uint64_t *txe)
{
 struct mbx_get_nic_stats_v0 *cmd = sc->sc_statcmd;
 struct oce_pmem_stats *ms;
 struct oce_rxf_stats_v0 *rs;
 struct oce_port_rxf_stats_v0 *ps;
 int err;
 __builtin_memset((cmd), (0), (sizeof(*cmd)));
 err = oce_cmd(sc, SUBSYS_NIC, OPCODE_NIC_GET_STATS, 0x0000,
     cmd, sizeof(*cmd));
 if (err)
  return (err);
 ms = &cmd->params.rsp.stats.pmem;
 rs = &cmd->params.rsp.stats.rxf;
 ps = &rs->port[sc->sc_port];
 *rxe = ps->rx_crc_errors + ps->rx_in_range_errors +
     ps->rx_frame_too_long + ps->rx_dropped_runt +
     ps->rx_ip_checksum_errs + ps->rx_tcp_checksum_errs +
     ps->rx_udp_checksum_errs + ps->rxpp_fifo_overflow_drop +
     ps->rx_dropped_tcp_length + ps->rx_dropped_too_small +
     ps->rx_dropped_too_short + ps->rx_out_range_errors +
     ps->rx_dropped_header_too_small + ps->rx_input_fifo_overflow_drop +
     ps->rx_alignment_symbol_errors;
 if (sc->sc_if_id)
  *rxe += rs->port1_jabber_events;
 else
  *rxe += rs->port0_jabber_events;
 *rxe += ms->eth_red_drops;
 *txe = 0;
 return (0);
}
int
oce_stats_be3(struct oce_softc *sc, uint64_t *rxe, uint64_t *txe)
{
 struct mbx_get_nic_stats *cmd = sc->sc_statcmd;
 struct oce_pmem_stats *ms;
 struct oce_rxf_stats_v1 *rs;
 struct oce_port_rxf_stats_v1 *ps;
 int err;
 __builtin_memset((cmd), (0), (sizeof(*cmd)));
 err = oce_cmd(sc, SUBSYS_NIC, OPCODE_NIC_GET_STATS, 0x0001,
     cmd, sizeof(*cmd));
 if (err)
  return (err);
 ms = &cmd->params.rsp.stats.pmem;
 rs = &cmd->params.rsp.stats.rxf;
 ps = &rs->port[sc->sc_port];
 *rxe = ps->rx_crc_errors + ps->rx_in_range_errors +
     ps->rx_frame_too_long + ps->rx_dropped_runt +
     ps->rx_ip_checksum_errs + ps->rx_tcp_checksum_errs +
     ps->rx_udp_checksum_errs + ps->rxpp_fifo_overflow_drop +
     ps->rx_dropped_tcp_length + ps->rx_dropped_too_small +
     ps->rx_dropped_too_short + ps->rx_out_range_errors +
     ps->rx_dropped_header_too_small + ps->rx_input_fifo_overflow_drop +
     ps->rx_alignment_symbol_errors + ps->jabber_events;
 *rxe += ms->eth_red_drops;
 *txe = 0;
 return (0);
}
int
oce_stats_xe(struct oce_softc *sc, uint64_t *rxe, uint64_t *txe)
{
 struct mbx_get_pport_stats *cmd = sc->sc_statcmd;
 struct oce_pport_stats *pps;
 int err;
 __builtin_memset((cmd), (0), (sizeof(*cmd)));
 cmd->params.req.reset_stats = 0;
 cmd->params.req.port_number = sc->sc_if_id;
 err = oce_cmd(sc, SUBSYS_NIC, OPCODE_NIC_GET_PPORT_STATS,
     0x0000, cmd, sizeof(*cmd));
 if (err)
  return (err);
 pps = &cmd->params.rsp.pps;
 *rxe = pps->rx_discards + pps->rx_errors + pps->rx_crc_errors +
     pps->rx_alignment_errors + pps->rx_symbol_errors +
     pps->rx_frames_too_long + pps->rx_internal_mac_errors +
     pps->rx_undersize_pkts + pps->rx_oversize_pkts + pps->rx_jabbers +
     pps->rx_control_frames_unknown_opcode + pps->rx_in_range_errors +
     pps->rx_out_of_range_errors + pps->rx_ip_checksum_errors +
     pps->rx_tcp_checksum_errors + pps->rx_udp_checksum_errors +
     pps->rx_fifo_overflow + pps->rx_input_fifo_overflow +
     pps->rx_drops_too_many_frags + pps->rx_drops_mtu;
 *txe = pps->tx_discards + pps->tx_errors + pps->tx_internal_mac_errors;
 return (0);
}
