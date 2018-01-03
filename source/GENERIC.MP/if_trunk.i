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
typedef struct _SIPHASH_CTX {
 uint64_t v[4];
 uint8_t buf[8];
 uint32_t bytes;
} SIPHASH_CTX;
typedef struct {
 uint64_t k0;
 uint64_t k1;
} SIPHASH_KEY;
void SipHash_Init(SIPHASH_CTX *, const SIPHASH_KEY *);
void SipHash_Update(SIPHASH_CTX *, int, int, const void *, size_t)
      __attribute__ ((__bounded__ (__buffer__, 4, 5) ));
uint64_t SipHash_End(SIPHASH_CTX *, int, int);
void SipHash_Final(void *, SIPHASH_CTX *, int, int)
      __attribute__ ((__bounded__ (__minbytes__, 1, 8) ));
uint64_t SipHash(const SIPHASH_KEY *, int, int, const void *, size_t)
      __attribute__ ((__bounded__ (__buffer__, 4, 5) ));
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
struct ifnet;
struct ifq_ops;
struct ifqueue {
 struct ifnet *ifq_if;
 struct taskq *ifq_softnet;
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
 struct task ifq_bundle;
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
void ifq_start(struct ifqueue *);
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
 uint32_t if_hardmtu;
 char if_description[64];
 u_short if_rtlabelid;
 uint8_t if_priority;
 uint8_t if_llprio;
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
struct vlanreq {
 char vlr_parent[16];
 u_short vlr_tag;
};
struct vlan_mc_entry {
 struct { struct vlan_mc_entry *le_next; struct vlan_mc_entry **le_prev; } mc_entries;
 union {
  struct ether_multi *mcu_enm;
 } mc_u;
 struct sockaddr_storage mc_addr;
};
struct ifvlan {
 struct arpcom ifv_ac;
 unsigned int ifv_ifp0;
 struct ifv_linkmib {
  u_int16_t ifvm_proto;
  u_int16_t ifvm_tag;
  u_int16_t ifvm_prio;
  u_int16_t ifvm_type;
 } ifv_mib;
 struct __vlan_mchead { struct vlan_mc_entry *lh_first; } vlan_mc_listhead;
 struct { struct srp se_next; } ifv_list;
 int ifv_flags;
 struct refcnt ifv_refcnt;
 void *lh_cookie;
 void *dh_cookie;
 struct ifih *ifv_ifih;
};
struct mbuf *vlan_inject(struct mbuf *, uint16_t, uint16_t);
enum trunk_proto {
 TRUNK_PROTO_NONE = 0,
 TRUNK_PROTO_ROUNDROBIN = 1,
 TRUNK_PROTO_FAILOVER = 2,
 TRUNK_PROTO_LOADBALANCE = 3,
 TRUNK_PROTO_BROADCAST = 4,
 TRUNK_PROTO_LACP = 5,
 TRUNK_PROTO_MAX = 6
};
struct trunk_protos {
 const char *tpr_name;
 enum trunk_proto tpr_proto;
};
struct lacp_opreq {
 u_int16_t actor_prio;
 u_int8_t actor_mac[6];
 u_int16_t actor_key;
 u_int16_t actor_portprio;
 u_int16_t actor_portno;
 u_int8_t actor_state;
 u_int16_t partner_prio;
 u_int8_t partner_mac[6];
 u_int16_t partner_key;
 u_int16_t partner_portprio;
 u_int16_t partner_portno;
 u_int8_t partner_state;
};
struct trunk_reqport {
 char rp_ifname[16];
 char rp_portname[16];
 u_int32_t rp_prio;
 u_int32_t rp_flags;
 union {
  struct lacp_opreq rpsc_lacp;
 } rp_psc;
};
struct trunk_reqall {
 char ra_ifname[16];
 u_int ra_proto;
 size_t ra_size;
 struct trunk_reqport *ra_port;
 int ra_ports;
 union {
  struct lacp_opreq rpsc_lacp;
 } ra_psc;
};
struct trunk_softc;
struct trunk_port {
 struct ifnet *tp_if;
 struct trunk_softc *tp_trunk;
 u_int8_t tp_lladdr[6];
 caddr_t tp_psc;
 u_char tp_iftype;
 u_int32_t tp_prio;
 u_int32_t tp_flags;
 void *lh_cookie;
 void *dh_cookie;
 int (*tp_ioctl)(struct ifnet *, u_long, caddr_t);
 int (*tp_output)(struct ifnet *, struct mbuf *, struct sockaddr *,
      struct rtentry *);
 struct { struct trunk_port *sle_next; } tp_entries;
};
struct trunk_mc {
 union {
  struct ether_multi *mcu_enm;
 } mc_u;
 struct sockaddr_storage mc_addr;
 struct { struct trunk_mc *sle_next; } mc_entries;
};
struct trunk_ifreq {
 union {
  struct ifreq ifreq;
  struct {
   char ifr_name[16];
   struct sockaddr_storage ifr_ss;
  } ifreq_storage;
 } ifreq;
};
struct trunk_softc {
 struct arpcom tr_ac;
 int tr_unit;
 enum trunk_proto tr_proto;
 u_int tr_count;
 struct trunk_port *tr_primary;
 struct ifmedia tr_media;
 caddr_t tr_psc;
 struct __tplhd { struct trunk_port *slh_first; } tr_ports;
 struct { struct trunk_softc *sle_next; } tr_entries;
 struct __mclhd { struct trunk_mc *slh_first; } tr_mc_head;
 int (*tr_detach)(struct trunk_softc *);
 int (*tr_start)(struct trunk_softc *, struct mbuf *);
 int (*tr_input)(struct trunk_softc *, struct trunk_port *,
      struct mbuf *);
 int (*tr_port_create)(struct trunk_port *);
 void (*tr_port_destroy)(struct trunk_port *);
 void (*tr_linkstate)(struct trunk_port *);
 void (*tr_init)(struct trunk_softc *);
 void (*tr_stop)(struct trunk_softc *);
 void (*tr_req)(struct trunk_softc *, caddr_t);
 void (*tr_portreq)(struct trunk_port *, caddr_t);
};
struct trunk_lb {
 SIPHASH_KEY lb_key;
 struct trunk_port *lb_ports[32];
};
int trunk_enqueue(struct ifnet *, struct mbuf *);
u_int32_t trunk_hashmbuf(struct mbuf *, SIPHASH_KEY *);
struct slowprothdr {
 u_int8_t sph_subtype;
 u_int8_t sph_version;
} __attribute__((__packed__));
struct tlvhdr {
 u_int8_t tlv_type;
 u_int8_t tlv_length;
} __attribute__((__packed__));
struct tlv_template {
 u_int8_t tmpl_type;
 u_int8_t tmpl_length;
};
struct lacp_systemid {
 u_int16_t lsi_prio;
 u_int8_t lsi_mac[6];
} __attribute__((__packed__));
struct lacp_portid {
 u_int16_t lpi_prio;
 u_int16_t lpi_portno;
} __attribute__((__packed__));
struct lacp_peerinfo {
 struct lacp_systemid lip_systemid;
 u_int16_t lip_key;
 struct lacp_portid lip_portid;
 u_int8_t lip_state;
 u_int8_t lip_resv[3];
} __attribute__((__packed__));
struct lacp_collectorinfo {
 u_int16_t lci_maxdelay;
 u_int8_t lci_resv[12];
} __attribute__((__packed__));
struct lacpdu {
 struct ether_header ldu_eh;
 struct slowprothdr ldu_sph;
 struct tlvhdr ldu_tlv_actor;
 struct lacp_peerinfo ldu_actor;
 struct tlvhdr ldu_tlv_partner;
 struct lacp_peerinfo ldu_partner;
 struct tlvhdr ldu_tlv_collector;
 struct lacp_collectorinfo ldu_collector;
 struct tlvhdr ldu_tlv_term;
 u_int8_t ldu_resv[50];
} __attribute__((__packed__));
struct lacp_markerinfo {
 u_int16_t mi_rq_port;
 u_int8_t mi_rq_system[6];
 u_int32_t mi_rq_xid;
 u_int8_t mi_pad[2];
} __attribute__((__packed__));
struct markerdu {
 struct ether_header mdu_eh;
 struct slowprothdr mdu_sph;
 struct tlvhdr mdu_tlv;
 struct lacp_markerinfo mdu_info;
 struct tlvhdr mdu_tlv_term;
 u_int8_t mdu_resv[90];
} __attribute__((__packed__));
enum lacp_selected {
 LACP_UNSELECTED,
 LACP_STANDBY,
 LACP_SELECTED,
};
enum lacp_mux_state {
 LACP_MUX_DETACHED,
 LACP_MUX_WAITING,
 LACP_MUX_ATTACHED,
 LACP_MUX_COLLECTING,
 LACP_MUX_DISTRIBUTING,
};
struct lacp_portmap {
 int pm_count;
 struct lacp_port *pm_map[32];
};
struct lacp_port {
 struct { struct lacp_port *tqe_next; struct lacp_port **tqe_prev; } lp_dist_q;
 struct { struct lacp_port *le_next; struct lacp_port **le_prev; } lp_next;
 struct lacp_softc *lp_lsc;
 struct trunk_port *lp_trunk;
 struct ifnet *lp_ifp;
 struct lacp_peerinfo lp_partner;
 struct lacp_peerinfo lp_actor;
 struct lacp_markerinfo lp_marker;
 struct timeval lp_last_lacpdu;
 int lp_lacpdu_sent;
 enum lacp_mux_state lp_mux_state;
 enum lacp_selected lp_selected;
 int lp_flags;
 u_int lp_media;
 int lp_timer[3];
 struct mbuf_queue lp_mq;
 struct lacp_aggregator *lp_aggregator;
};
struct lacp_aggregator {
 struct { struct lacp_aggregator *tqe_next; struct lacp_aggregator **tqe_prev; } la_q;
 int la_refcnt;
 int la_nports;
 struct { struct lacp_port *tqh_first; struct lacp_port **tqh_last; } la_ports;
 struct lacp_peerinfo la_partner;
 struct lacp_peerinfo la_actor;
 int la_pending;
};
struct lacp_softc {
 struct trunk_softc *lsc_softc;
 struct lacp_aggregator *lsc_active_aggregator;
 struct { struct lacp_aggregator *tqh_first; struct lacp_aggregator **tqh_last; } lsc_aggregators;
 int lsc_suppress_distributing;
 struct timeout lsc_transit_callout;
 struct timeout lsc_callout;
 struct { struct lacp_port *lh_first; } lsc_ports;
 struct lacp_portmap lsc_pmap[2];
 volatile u_int lsc_activemap;
 SIPHASH_KEY lsc_hashkey;
 struct task lsc_input;
};
int lacp_input(struct trunk_port *, struct mbuf *);
struct trunk_port *lacp_select_tx_port(struct trunk_softc *, struct mbuf *);
int lacp_attach(struct trunk_softc *);
int lacp_detach(struct trunk_softc *);
void lacp_init(struct trunk_softc *);
void lacp_stop(struct trunk_softc *);
int lacp_port_create(struct trunk_port *);
void lacp_port_destroy(struct trunk_port *);
void lacp_linkstate(struct trunk_port *);
void lacp_req(struct trunk_softc *, caddr_t);
void lacp_portreq(struct trunk_port *, caddr_t);
u_int lacp_port_status(struct trunk_port *);
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
struct __trhead { struct trunk_softc *slh_first; } trunk_list;
void trunkattach(int);
int trunk_clone_create(struct if_clone *, int);
int trunk_clone_destroy(struct ifnet *);
void trunk_lladdr(struct arpcom *, u_int8_t *);
int trunk_capabilities(struct trunk_softc *);
void trunk_port_lladdr(struct trunk_port *, u_int8_t *);
int trunk_port_create(struct trunk_softc *, struct ifnet *);
int trunk_port_destroy(struct trunk_port *);
void trunk_port_state(void *);
void trunk_port_ifdetach(void *);
int trunk_port_ioctl(struct ifnet *, u_long, caddr_t);
int trunk_port_output(struct ifnet *, struct mbuf *, struct sockaddr *,
     struct rtentry *);
struct trunk_port *trunk_port_get(struct trunk_softc *, struct ifnet *);
int trunk_port_checkstacking(struct trunk_softc *);
void trunk_port2req(struct trunk_port *, struct trunk_reqport *);
int trunk_ioctl(struct ifnet *, u_long, caddr_t);
int trunk_ether_addmulti(struct trunk_softc *, struct ifreq *);
int trunk_ether_delmulti(struct trunk_softc *, struct ifreq *);
void trunk_ether_purgemulti(struct trunk_softc *);
int trunk_ether_cmdmulti(struct trunk_port *, u_long);
int trunk_ioctl_allports(struct trunk_softc *, u_long, caddr_t);
int trunk_input(struct ifnet *, struct mbuf *, void *);
void trunk_start(struct ifnet *);
void trunk_init(struct ifnet *);
void trunk_stop(struct ifnet *);
int trunk_media_change(struct ifnet *);
void trunk_media_status(struct ifnet *, struct ifmediareq *);
struct trunk_port *trunk_link_active(struct trunk_softc *,
     struct trunk_port *);
const void *trunk_gethdr(struct mbuf *, u_int, u_int, void *);
struct if_clone trunk_cloner =
    { { 0 }, "trunk", sizeof("trunk") - 1, trunk_clone_create, trunk_clone_destroy };
int trunk_rr_attach(struct trunk_softc *);
int trunk_rr_detach(struct trunk_softc *);
void trunk_rr_port_destroy(struct trunk_port *);
int trunk_rr_start(struct trunk_softc *, struct mbuf *);
int trunk_rr_input(struct trunk_softc *, struct trunk_port *,
     struct mbuf *);
int trunk_fail_attach(struct trunk_softc *);
int trunk_fail_detach(struct trunk_softc *);
int trunk_fail_port_create(struct trunk_port *);
void trunk_fail_port_destroy(struct trunk_port *);
int trunk_fail_start(struct trunk_softc *, struct mbuf *);
int trunk_fail_input(struct trunk_softc *, struct trunk_port *,
     struct mbuf *);
void trunk_fail_linkstate(struct trunk_port *);
int trunk_lb_attach(struct trunk_softc *);
int trunk_lb_detach(struct trunk_softc *);
int trunk_lb_port_create(struct trunk_port *);
void trunk_lb_port_destroy(struct trunk_port *);
int trunk_lb_start(struct trunk_softc *, struct mbuf *);
int trunk_lb_input(struct trunk_softc *, struct trunk_port *,
     struct mbuf *);
int trunk_lb_porttable(struct trunk_softc *, struct trunk_port *);
int trunk_bcast_attach(struct trunk_softc *);
int trunk_bcast_detach(struct trunk_softc *);
int trunk_bcast_start(struct trunk_softc *, struct mbuf *);
int trunk_bcast_input(struct trunk_softc *, struct trunk_port *,
     struct mbuf *);
int trunk_lacp_attach(struct trunk_softc *);
int trunk_lacp_detach(struct trunk_softc *);
int trunk_lacp_start(struct trunk_softc *, struct mbuf *);
int trunk_lacp_input(struct trunk_softc *, struct trunk_port *,
     struct mbuf *);
static const struct {
 enum trunk_proto ti_proto;
 int (*ti_attach)(struct trunk_softc *);
} trunk_protos[] = {
 { TRUNK_PROTO_ROUNDROBIN, trunk_rr_attach },
 { TRUNK_PROTO_FAILOVER, trunk_fail_attach },
 { TRUNK_PROTO_LOADBALANCE, trunk_lb_attach },
 { TRUNK_PROTO_BROADCAST, trunk_bcast_attach },
 { TRUNK_PROTO_LACP, trunk_lacp_attach },
 { TRUNK_PROTO_NONE, ((void *)0) }
};
void
trunkattach(int count)
{
 { ((&trunk_list)->slh_first) = ((void *)0); };
 if_clone_attach(&trunk_cloner);
}
int
trunk_clone_create(struct if_clone *ifc, int unit)
{
 struct trunk_softc *tr;
 struct ifnet *ifp;
 int i, error = 0;
 if ((tr = malloc(sizeof *tr, 2, 0x0002|0x0008)) == ((void *)0))
  return (12);
 tr->tr_unit = unit;
 tr->tr_proto = TRUNK_PROTO_NONE;
 for (i = 0; trunk_protos[i].ti_proto != TRUNK_PROTO_NONE; i++) {
  if (trunk_protos[i].ti_proto == TRUNK_PROTO_ROUNDROBIN) {
   tr->tr_proto = trunk_protos[i].ti_proto;
   if ((error = trunk_protos[i].ti_attach(tr)) != 0) {
    free(tr, 2, sizeof *tr);
    return (error);
   }
   break;
  }
 }
 { ((&tr->tr_ports)->slh_first) = ((void *)0); };
 ifmedia_init(&tr->tr_media, 0, trunk_media_change,
     trunk_media_status);
 ifmedia_add(&tr->tr_media, 0x0000000000000100ULL | 0ULL, 0, ((void *)0));
 ifmedia_set(&tr->tr_media, 0x0000000000000100ULL | 0ULL);
 ifp = &tr->tr_ac.ac_if;
 ifp->if_softc = tr;
 ifp->if_start = trunk_start;
 ifp->if_ioctl = trunk_ioctl;
 ifp->if_flags = 0x800 | 0x2 | 0x8000;
 ifp->if_data.ifi_capabilities = trunk_capabilities(tr);
 ((&ifp->if_snd)->ifq_maxlen = (1));
 snprintf(ifp->if_xname, sizeof(ifp->if_xname), "%s%d",
     ifc->ifc_name, unit);
 if_attach(ifp);
 ether_ifattach(ifp);
 do { (tr)->tr_entries.sle_next = (&trunk_list)->slh_first; (&trunk_list)->slh_first = (tr); } while (0);
 return (0);
}
int
trunk_clone_destroy(struct ifnet *ifp)
{
 struct trunk_softc *tr = (struct trunk_softc *)ifp->if_softc;
 struct trunk_port *tp;
 int error;
 trunk_ether_purgemulti(tr);
 do { _rw_enter_write(&netlock ); } while (0);
 while ((tp = ((&tr->tr_ports)->slh_first)) != ((void *)0)) {
  if ((error = trunk_port_destroy(tp)) != 0) {
   do { _rw_exit_write(&netlock ); } while (0);
   return (error);
  }
 }
 do { _rw_exit_write(&netlock ); } while (0);
 ifmedia_delete_instance(&tr->tr_media, ((uint64_t) -1));
 ether_ifdetach(ifp);
 if_detach(ifp);
 do { if ((&trunk_list)->slh_first == (tr)) { do { ((&trunk_list))->slh_first = ((&trunk_list))->slh_first->tr_entries.sle_next; } while (0); } else { struct trunk_softc *curelm = (&trunk_list)->slh_first; while (curelm->tr_entries.sle_next != (tr)) curelm = curelm->tr_entries.sle_next; curelm->tr_entries.sle_next = curelm->tr_entries.sle_next->tr_entries.sle_next; } ((tr)->tr_entries.sle_next) = ((void *)-1); } while (0);
 free(tr, 2, sizeof *tr);
 return (0);
}
void
trunk_lladdr(struct arpcom *ac, u_int8_t *lladdr)
{
 struct ifnet *ifp = &ac->ac_if;
 struct sockaddr_dl *sdl;
 sdl = ifp->if_sadl;
 sdl->sdl_type = 0x06;
 sdl->sdl_alen = 6;
 __builtin_bcopy((lladdr), (((caddr_t)((sdl)->sdl_data + (sdl)->sdl_nlen))), (6));
 __builtin_bcopy((lladdr), (ac->ac_enaddr), (6));
}
int
trunk_capabilities(struct trunk_softc *tr)
{
 struct trunk_port *tp;
 int cap = ~0, priv;
 priv = tr->tr_ac.ac_if.if_data.ifi_capabilities & 0xffff0000;
 for((tp) = ((&tr->tr_ports)->slh_first); (tp) != ((void *)0); (tp) = ((tp)->tp_entries.sle_next))
  cap &= tp->tp_if->if_data.ifi_capabilities;
 if (tr->tr_ac.ac_if.if_flags & 0x4) {
  printf("%s: capabilities 0x%08x\n",
      tr->tr_ac.ac_if.if_xname, cap == ~0 ? priv : (cap | priv));
 }
 return (cap == ~0 ? priv : (cap | priv));
}
void
trunk_port_lladdr(struct trunk_port *tp, u_int8_t *lladdr)
{
 struct ifnet *ifp = tp->tp_if;
 trunk_lladdr((struct arpcom *)ifp, lladdr);
 ifnewlladdr(ifp);
}
int
trunk_port_create(struct trunk_softc *tr, struct ifnet *ifp)
{
 struct trunk_softc *tr_ptr;
 struct trunk_port *tp;
 int error = 0;
 if (tr->tr_count >= 32)
  return (28);
 if (trunk_port_get(((void *)0), ifp) != ((void *)0))
  return (16);
 if (ifp->if_data.ifi_type != 0x06)
  return (43);
 if ((((&tr->tr_ports)->slh_first) == ((void *)0))) {
  if (tr->tr_ac.ac_if.if_flags & 0x4)
   printf("%s: first port, setting trunk mtu %u\n",
       tr->tr_ac.ac_if.if_xname, ifp->if_data.ifi_mtu);
  tr->tr_ac.ac_if.if_data.ifi_mtu = ifp->if_data.ifi_mtu;
  tr->tr_ac.ac_if.if_hardmtu = ifp->if_data.ifi_mtu;
 } else if (tr->tr_ac.ac_if.if_data.ifi_mtu != ifp->if_data.ifi_mtu) {
  printf("%s: adding %s failed, MTU %u != %u\n", tr->tr_ac.ac_if.if_xname,
      ifp->if_xname, ifp->if_data.ifi_mtu, tr->tr_ac.ac_if.if_data.ifi_mtu);
  return (22);
 }
 if ((error = ifpromisc(ifp, 1)) != 0)
  return (error);
 if ((tp = malloc(sizeof *tp, 2, 0x0002|0x0008)) == ((void *)0))
  return (12);
 for((tr_ptr) = ((&trunk_list)->slh_first); (tr_ptr) != ((void *)0); (tr_ptr) = ((tr_ptr)->tr_entries.sle_next)) {
  if (ifp == &tr_ptr->tr_ac.ac_if) {
   tp->tp_flags |= 0x00000002;
   if (trunk_port_checkstacking(tr_ptr) >=
       4) {
    free(tp, 2, sizeof *tp);
    return (7);
   }
  }
 }
 tp->tp_iftype = ifp->if_data.ifi_type;
 ifp->if_data.ifi_type = 0xa1;
 tp->tp_ioctl = ifp->if_ioctl;
 ifp->if_ioctl = trunk_port_ioctl;
 tp->tp_output = ifp->if_output;
 ifp->if_output = trunk_port_output;
 tp->tp_if = ifp;
 tp->tp_trunk = tr;
 __builtin_bcopy((((struct arpcom *)ifp)->ac_enaddr), (tp->tp_lladdr), (6));
 if ((((&tr->tr_ports)->slh_first) == ((void *)0))) {
  tr->tr_primary = tp;
  tp->tp_flags |= 0x00000001;
  trunk_lladdr(&tr->tr_ac, tp->tp_lladdr);
 }
 do { (tp)->tp_entries.sle_next = (&tr->tr_ports)->slh_first; (&tr->tr_ports)->slh_first = (tp); } while (0);
 tr->tr_count++;
 trunk_port_lladdr(tp,
     ((struct arpcom *)(tr->tr_primary->tp_if))->ac_enaddr);
 tr->tr_ac.ac_if.if_data.ifi_capabilities = trunk_capabilities(tr);
 trunk_ether_cmdmulti(tp, ((unsigned long)0x80000000 | ((sizeof(struct ifreq) & 0x1fff) << 16) | ((('i')) << 8) | ((49))));
 tp->lh_cookie = hook_establish(ifp->if_linkstatehooks, 1,
     trunk_port_state, tp);
 tp->dh_cookie = hook_establish(ifp->if_detachhooks, 0,
     trunk_port_ifdetach, tp);
 if (tr->tr_port_create != ((void *)0))
  error = (*tr->tr_port_create)(tp);
 if_ih_insert(ifp, trunk_input, tp);
 return (error);
}
int
trunk_port_checkstacking(struct trunk_softc *tr)
{
 struct trunk_softc *tr_ptr;
 struct trunk_port *tp;
 int m = 0;
 for((tp) = ((&tr->tr_ports)->slh_first); (tp) != ((void *)0); (tp) = ((tp)->tp_entries.sle_next)) {
  if (tp->tp_flags & 0x00000002) {
   tr_ptr = (struct trunk_softc *)tp->tp_if->if_softc;
   m = (((m)>(trunk_port_checkstacking(tr_ptr)))?(m):(trunk_port_checkstacking(tr_ptr)));
  }
 }
 return (m + 1);
}
int
trunk_port_destroy(struct trunk_port *tp)
{
 struct trunk_softc *tr = (struct trunk_softc *)tp->tp_trunk;
 struct trunk_port *tp_ptr;
 struct ifnet *ifp = tp->tp_if;
 if_ih_remove(ifp, trunk_input, tp);
 trunk_ether_cmdmulti(tp, ((unsigned long)0x80000000 | ((sizeof(struct ifreq) & 0x1fff) << 16) | ((('i')) << 8) | ((50))));
 if (ifp->if_flags & 0x1)
  if_down(ifp);
 ifpromisc(ifp, 0);
 if (tr->tr_port_destroy != ((void *)0))
  (*tr->tr_port_destroy)(tp);
 ifp->if_data.ifi_type = tp->tp_iftype;
 ifp->if_ioctl = tp->tp_ioctl;
 ifp->if_output = tp->tp_output;
 hook_disestablish(ifp->if_linkstatehooks, tp->lh_cookie);
 hook_disestablish(ifp->if_detachhooks, tp->dh_cookie);
 do { if ((&tr->tr_ports)->slh_first == (tp)) { do { ((&tr->tr_ports))->slh_first = ((&tr->tr_ports))->slh_first->tp_entries.sle_next; } while (0); } else { struct trunk_port *curelm = (&tr->tr_ports)->slh_first; while (curelm->tp_entries.sle_next != (tp)) curelm = curelm->tp_entries.sle_next; curelm->tp_entries.sle_next = curelm->tp_entries.sle_next->tp_entries.sle_next; } ((tp)->tp_entries.sle_next) = ((void *)-1); } while (0);
 tr->tr_count--;
 if (tp == tr->tr_primary) {
  u_int8_t lladdr[6];
  if ((tp_ptr = ((&tr->tr_ports)->slh_first)) == ((void *)0)) {
   __builtin_bzero((&lladdr), (6));
  } else {
   __builtin_bcopy((((struct arpcom *)tp_ptr->tp_if)->ac_enaddr), (lladdr), (6));
   tp_ptr->tp_flags = 0x00000001;
  }
  trunk_lladdr(&tr->tr_ac, lladdr);
  tr->tr_primary = tp_ptr;
  for((tp_ptr) = ((&tr->tr_ports)->slh_first); (tp_ptr) != ((void *)0); (tp_ptr) = ((tp_ptr)->tp_entries.sle_next))
   trunk_port_lladdr(tp_ptr, lladdr);
 }
 trunk_port_lladdr(tp, tp->tp_lladdr);
 free(tp, 2, sizeof *tp);
 tr->tr_ac.ac_if.if_data.ifi_capabilities = trunk_capabilities(tr);
 return (0);
}
int
trunk_port_ioctl(struct ifnet *ifp, u_long cmd, caddr_t data)
{
 struct trunk_reqport *rp = (struct trunk_reqport *)data;
 struct trunk_softc *tr;
 struct trunk_port *tp = ((void *)0);
 int error = 0;
 if (ifp->if_data.ifi_type != 0xa1 ||
     (tp = trunk_port_get(((void *)0), ifp)) == ((void *)0) ||
     (tr = (struct trunk_softc *)tp->tp_trunk) == ((void *)0)) {
  error = 22;
  goto fallback;
 }
 switch (cmd) {
 case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct trunk_reqport) & 0x1fff) << 16) | ((('i')) << 8) | ((140))):
  if (rp->rp_portname[0] == '\0' ||
      ifunit(rp->rp_portname) != ifp) {
   error = 22;
   break;
  }
  if ((tp = trunk_port_get(rp->rp_flags & 0x80000000 ?
      ((void *)0) : tr, ifp)) == ((void *)0)) {
   error = 2;
   break;
  }
  trunk_port2req(tp, rp);
  break;
 case ((unsigned long)0x80000000 | ((sizeof(struct ifreq) & 0x1fff) << 16) | ((('i')) << 8) | ((127))):
  error = 22;
  break;
 default:
  error = 25;
  goto fallback;
 }
 return (error);
 fallback:
 if (tp != ((void *)0))
  error = (*tp->tp_ioctl)(ifp, cmd, data);
 return (error);
}
int
trunk_port_output(struct ifnet *ifp, struct mbuf *m, struct sockaddr *dst,
    struct rtentry *rt)
{
 if (ifp->if_data.ifi_type == 0xa1 &&
     (m_tag_find(m, 0x0100, ((void *)0)) == ((void *)0))) {
  m_freem(m);
  return (16);
 }
 return (ether_output(ifp, m, dst, rt));
}
void
trunk_port_ifdetach(void *arg)
{
 struct trunk_port *tp = (struct trunk_port *)arg;
 trunk_port_destroy(tp);
}
struct trunk_port *
trunk_port_get(struct trunk_softc *tr, struct ifnet *ifp)
{
 struct trunk_port *tp;
 struct trunk_softc *tr_ptr;
 if (tr != ((void *)0)) {
  for((tp) = ((&tr->tr_ports)->slh_first); (tp) != ((void *)0); (tp) = ((tp)->tp_entries.sle_next)) {
   if (tp->tp_if == ifp)
    return (tp);
  }
 } else {
  for((tr_ptr) = ((&trunk_list)->slh_first); (tr_ptr) != ((void *)0); (tr_ptr) = ((tr_ptr)->tr_entries.sle_next)) {
   for((tp) = ((&tr_ptr->tr_ports)->slh_first); (tp) != ((void *)0); (tp) = ((tp)->tp_entries.sle_next)) {
    if (tp->tp_if == ifp)
     return (tp);
   }
  }
 }
 return (((void *)0));
}
void
trunk_port2req(struct trunk_port *tp, struct trunk_reqport *rp)
{
 struct trunk_softc *tr = (struct trunk_softc *)tp->tp_trunk;
 strlcpy(rp->rp_ifname, tr->tr_ac.ac_if.if_xname, sizeof(rp->rp_ifname));
 strlcpy(rp->rp_portname, tp->tp_if->if_xname, sizeof(rp->rp_portname));
 rp->rp_prio = tp->tp_prio;
 if (tr->tr_portreq != ((void *)0))
  (*tr->tr_portreq)(tp, (caddr_t)&rp->rp_psc);
 switch (tr->tr_proto) {
 case TRUNK_PROTO_FAILOVER:
  rp->rp_flags = tp->tp_flags;
  if (tp == trunk_link_active(tr, tr->tr_primary))
   rp->rp_flags |= 0x00000004;
  break;
 case TRUNK_PROTO_ROUNDROBIN:
 case TRUNK_PROTO_LOADBALANCE:
 case TRUNK_PROTO_BROADCAST:
  rp->rp_flags = tp->tp_flags;
  if (( (((tp)->tp_if->if_data.ifi_link_state) >= 4 || ((tp)->tp_if->if_data.ifi_link_state) == 0) && (tp)->tp_if->if_flags & 0x1))
   rp->rp_flags |= 0x00000004;
  break;
 case TRUNK_PROTO_LACP:
  rp->rp_flags = lacp_port_status(tp);
  break;
 default:
  break;
 }
}
int
trunk_ioctl(struct ifnet *ifp, u_long cmd, caddr_t data)
{
 struct trunk_softc *tr = (struct trunk_softc *)ifp->if_softc;
 struct trunk_reqall *ra = (struct trunk_reqall *)data;
 struct trunk_reqport *rp = (struct trunk_reqport *)data, rpbuf;
 struct ifreq *ifr = (struct ifreq *)data;
 struct trunk_port *tp;
 struct ifnet *tpif;
 int i, error = 0;
 __builtin_bzero((&rpbuf), (sizeof(rpbuf)));
 switch (cmd) {
 case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct trunk_reqall) & 0x1fff) << 16) | ((('i')) << 8) | ((143))):
  ra->ra_proto = tr->tr_proto;
  if (tr->tr_req != ((void *)0))
   (*tr->tr_req)(tr, (caddr_t)&ra->ra_psc);
  ra->ra_ports = i = 0;
  tp = ((&tr->tr_ports)->slh_first);
  while (tp && ra->ra_size >=
      i + sizeof(struct trunk_reqport)) {
   trunk_port2req(tp, &rpbuf);
   error = copyout(&rpbuf, (caddr_t)ra->ra_port + i,
       sizeof(struct trunk_reqport));
   if (error)
    break;
   i += sizeof(struct trunk_reqport);
   ra->ra_ports++;
   tp = ((tp)->tp_entries.sle_next);
  }
  break;
 case ((unsigned long)0x80000000 | ((sizeof(struct trunk_reqall) & 0x1fff) << 16) | ((('i')) << 8) | ((144))):
  if ((error = suser((__curcpu->ci_self)->ci_curproc, 0)) != 0) {
   error = 1;
   break;
  }
  if (ra->ra_proto >= TRUNK_PROTO_MAX) {
   error = 43;
   break;
  }
  for((tp) = ((&tr->tr_ports)->slh_first); (tp) != ((void *)0); (tp) = ((tp)->tp_entries.sle_next))
   if_ih_remove(tp->tp_if, trunk_input, tp);
  if (tr->tr_proto != TRUNK_PROTO_NONE)
   error = tr->tr_detach(tr);
  if (error != 0)
   break;
  for (i = 0; i < (sizeof((trunk_protos)) / sizeof((trunk_protos)[0])); i++) {
   if (trunk_protos[i].ti_proto == ra->ra_proto) {
    if (tr->tr_ac.ac_if.if_flags & 0x4)
     printf("%s: using proto %u\n",
         tr->tr_ac.ac_if.if_xname,
         trunk_protos[i].ti_proto);
    tr->tr_proto = trunk_protos[i].ti_proto;
    if (tr->tr_proto != TRUNK_PROTO_NONE)
     error = trunk_protos[i].ti_attach(tr);
    for((tp) = ((&tr->tr_ports)->slh_first); (tp) != ((void *)0); (tp) = ((tp)->tp_entries.sle_next))
     if_ih_insert(tp->tp_if,
         trunk_input, tp);
    tr->tr_ac.ac_if.if_data.ifi_capabilities = trunk_capabilities(tr);
    goto out;
   }
  }
  error = 43;
  break;
 case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct trunk_reqport) & 0x1fff) << 16) | ((('i')) << 8) | ((140))):
  if (rp->rp_portname[0] == '\0' ||
      (tpif = ifunit(rp->rp_portname)) == ((void *)0)) {
   error = 22;
   break;
  }
  if ((tp = trunk_port_get(rp->rp_flags & 0x80000000 ?
      ((void *)0) : tr, tpif)) == ((void *)0)) {
   error = 2;
   break;
  }
  trunk_port2req(tp, rp);
  break;
 case ((unsigned long)0x80000000 | ((sizeof(struct trunk_reqport) & 0x1fff) << 16) | ((('i')) << 8) | ((141))):
  if ((error = suser((__curcpu->ci_self)->ci_curproc, 0)) != 0) {
   error = 1;
   break;
  }
  if (rp->rp_portname[0] == '\0' ||
      (tpif = ifunit(rp->rp_portname)) == ((void *)0)) {
   error = 22;
   break;
  }
  error = trunk_port_create(tr, tpif);
  break;
 case ((unsigned long)0x80000000 | ((sizeof(struct trunk_reqport) & 0x1fff) << 16) | ((('i')) << 8) | ((142))):
  if ((error = suser((__curcpu->ci_self)->ci_curproc, 0)) != 0) {
   error = 1;
   break;
  }
  if (rp->rp_portname[0] == '\0' ||
      (tpif = ifunit(rp->rp_portname)) == ((void *)0)) {
   error = 22;
   break;
  }
  if ((tp = trunk_port_get(rp->rp_flags & 0x80000000 ?
      ((void *)0) : tr, tpif)) == ((void *)0)) {
   error = 2;
   break;
  }
  error = trunk_port_destroy(tp);
  break;
 case ((unsigned long)0x80000000 | ((sizeof(struct ifreq) & 0x1fff) << 16) | ((('i')) << 8) | ((12))):
  ifp->if_flags |= 0x1;
 case ((unsigned long)0x80000000 | ((sizeof(struct ifreq) & 0x1fff) << 16) | ((('i')) << 8) | ((16))):
  error = 52;
  break;
 case ((unsigned long)0x80000000 | ((sizeof(struct ifreq) & 0x1fff) << 16) | ((('i')) << 8) | ((49))):
  error = trunk_ether_addmulti(tr, ifr);
  break;
 case ((unsigned long)0x80000000 | ((sizeof(struct ifreq) & 0x1fff) << 16) | ((('i')) << 8) | ((50))):
  error = trunk_ether_delmulti(tr, ifr);
  break;
 case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct ifreq) & 0x1fff) << 16) | ((('i')) << 8) | ((55))):
 case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct ifmediareq) & 0x1fff) << 16) | ((('i')) << 8) | ((56))):
  error = ifmedia_ioctl(ifp, ifr, &tr->tr_media, cmd);
  break;
 case ((unsigned long)0x80000000 | ((sizeof(struct ifreq) & 0x1fff) << 16) | ((('i')) << 8) | ((31))):
  for((tp) = ((&tr->tr_ports)->slh_first); (tp) != ((void *)0); (tp) = ((tp)->tp_entries.sle_next))
   trunk_port_lladdr(tp, ifr->ifr_ifru.ifru_addr.sa_data);
  error = 52;
  break;
 default:
  error = ether_ioctl(ifp, &tr->tr_ac, cmd, data);
 }
 if (error == 52) {
  if (ifp->if_flags & 0x1) {
   if ((ifp->if_flags & 0x40) == 0)
    trunk_init(ifp);
  } else {
   if (ifp->if_flags & 0x40)
    trunk_stop(ifp);
  }
  error = 0;
 }
 out:
 return (error);
}
int
trunk_ether_addmulti(struct trunk_softc *tr, struct ifreq *ifr)
{
 struct trunk_mc *mc;
 u_int8_t addrlo[6], addrhi[6];
 int error;
 if ((error = ether_addmulti(ifr, &tr->tr_ac)) != 52)
  return (error);
 if ((mc = malloc(sizeof(*mc), 2, 0x0002)) == ((void *)0)) {
  error = 12;
  goto failed;
 }
 ether_multiaddr(&ifr->ifr_ifru.ifru_addr, addrlo, addrhi);
 do { for ((mc->mc_u.mcu_enm) = ((&(&tr->tr_ac)->ac_multiaddrs)->lh_first); (mc->mc_u.mcu_enm) != ((void *)0) && (__builtin_memcmp(((mc->mc_u.mcu_enm)->enm_addrlo), ((addrlo)), (6)) != 0 || __builtin_memcmp(((mc->mc_u.mcu_enm)->enm_addrhi), ((addrhi)), (6)) != 0); (mc->mc_u.mcu_enm) = (((mc->mc_u.mcu_enm))->enm_list.le_next)); } while ( 0);
 __builtin_bcopy((&ifr->ifr_ifru.ifru_addr), (&mc->mc_addr), (ifr->ifr_ifru.ifru_addr.sa_len));
 do { (mc)->mc_entries.sle_next = (&tr->tr_mc_head)->slh_first; (&tr->tr_mc_head)->slh_first = (mc); } while (0);
 if ((error = trunk_ioctl_allports(tr, ((unsigned long)0x80000000 | ((sizeof(struct ifreq) & 0x1fff) << 16) | ((('i')) << 8) | ((49))),
     (caddr_t)ifr)) != 0) {
  trunk_ether_delmulti(tr, ifr);
  return (error);
 }
 return (error);
 failed:
 ether_delmulti(ifr, &tr->tr_ac);
 return (error);
}
int
trunk_ether_delmulti(struct trunk_softc *tr, struct ifreq *ifr)
{
 struct ether_multi *enm;
 struct trunk_mc *mc;
 u_int8_t addrlo[6], addrhi[6];
 int error;
 if ((error = ether_multiaddr(&ifr->ifr_ifru.ifru_addr, addrlo, addrhi)) != 0)
  return (error);
 do { for ((enm) = ((&(&tr->tr_ac)->ac_multiaddrs)->lh_first); (enm) != ((void *)0) && (__builtin_memcmp(((enm)->enm_addrlo), ((addrlo)), (6)) != 0 || __builtin_memcmp(((enm)->enm_addrhi), ((addrhi)), (6)) != 0); (enm) = (((enm))->enm_list.le_next)); } while ( 0);
 if (enm == ((void *)0))
  return (22);
 for((mc) = ((&tr->tr_mc_head)->slh_first); (mc) != ((void *)0); (mc) = ((mc)->mc_entries.sle_next))
  if (mc->mc_u.mcu_enm == enm)
   break;
 if (mc == ((void *)0))
  return (22);
 if ((error = ether_delmulti(ifr, &tr->tr_ac)) != 52)
  return (error);
 error = trunk_ioctl_allports(tr, ((unsigned long)0x80000000 | ((sizeof(struct ifreq) & 0x1fff) << 16) | ((('i')) << 8) | ((50))), (caddr_t)ifr);
 if (error == 0) {
  do { if ((&tr->tr_mc_head)->slh_first == (mc)) { do { ((&tr->tr_mc_head))->slh_first = ((&tr->tr_mc_head))->slh_first->mc_entries.sle_next; } while (0); } else { struct trunk_mc *curelm = (&tr->tr_mc_head)->slh_first; while (curelm->mc_entries.sle_next != (mc)) curelm = curelm->mc_entries.sle_next; curelm->mc_entries.sle_next = curelm->mc_entries.sle_next->mc_entries.sle_next; } ((mc)->mc_entries.sle_next) = ((void *)-1); } while (0);
  free(mc, 2, sizeof(*mc));
 } else {
  if (tr->tr_ac.ac_if.if_flags & 0x4) {
   printf("%s: failed to remove multicast address "
       "on all ports (%d)\n", tr->tr_ac.ac_if.if_xname, error);
  }
  (void)ether_addmulti(ifr, &tr->tr_ac);
 }
 return (0);
}
void
trunk_ether_purgemulti(struct trunk_softc *tr)
{
 struct trunk_mc *mc;
 struct trunk_ifreq ifs;
 struct ifreq *ifr = &ifs.ifreq.ifreq;
 while ((mc = ((&tr->tr_mc_head)->slh_first)) != ((void *)0)) {
  __builtin_bcopy((&mc->mc_addr), (&ifr->ifr_ifru.ifru_addr), (mc->mc_addr.ss_len));
  trunk_ioctl_allports(tr, ((unsigned long)0x80000000 | ((sizeof(struct ifreq) & 0x1fff) << 16) | ((('i')) << 8) | ((50))), (caddr_t)ifr);
  do { if ((&tr->tr_mc_head)->slh_first == (mc)) { do { ((&tr->tr_mc_head))->slh_first = ((&tr->tr_mc_head))->slh_first->mc_entries.sle_next; } while (0); } else { struct trunk_mc *curelm = (&tr->tr_mc_head)->slh_first; while (curelm->mc_entries.sle_next != (mc)) curelm = curelm->mc_entries.sle_next; curelm->mc_entries.sle_next = curelm->mc_entries.sle_next->mc_entries.sle_next; } ((mc)->mc_entries.sle_next) = ((void *)-1); } while (0);
  free(mc, 2, sizeof(*mc));
 }
}
int
trunk_ether_cmdmulti(struct trunk_port *tp, u_long cmd)
{
 struct trunk_softc *tr = (struct trunk_softc *)tp->tp_trunk;
 struct trunk_mc *mc;
 struct trunk_ifreq ifs;
 struct ifreq *ifr = &ifs.ifreq.ifreq;
 int ret, error = 0;
 __builtin_bcopy((tp->tp_if->if_xname), (ifr->ifr_name), (16));
 for((mc) = ((&tr->tr_mc_head)->slh_first); (mc) != ((void *)0); (mc) = ((mc)->mc_entries.sle_next)) {
  __builtin_bcopy((&mc->mc_addr), (&ifr->ifr_ifru.ifru_addr), (mc->mc_addr.ss_len));
  if ((ret = tp->tp_ioctl(tp->tp_if, cmd, (caddr_t)ifr)) != 0) {
   if (tr->tr_ac.ac_if.if_flags & 0x4) {
    printf("%s: ioctl %lu failed on %s: %d\n",
        tr->tr_ac.ac_if.if_xname, cmd, tp->tp_if->if_xname, ret);
   }
   error = ret;
  }
 }
 return (error);
}
int
trunk_ioctl_allports(struct trunk_softc *tr, u_long cmd, caddr_t data)
{
 struct ifreq *ifr = (struct ifreq *)data;
 struct trunk_port *tp;
 int ret, error = 0;
 for((tp) = ((&tr->tr_ports)->slh_first); (tp) != ((void *)0); (tp) = ((tp)->tp_entries.sle_next)) {
  __builtin_bcopy((tp->tp_if->if_xname), (ifr->ifr_name), (16));
  if ((ret = tp->tp_ioctl(tp->tp_if, cmd, data)) != 0) {
   if (tr->tr_ac.ac_if.if_flags & 0x4) {
    printf("%s: ioctl %lu failed on %s: %d\n",
        tr->tr_ac.ac_if.if_xname, cmd, tp->tp_if->if_xname, ret);
   }
   error = ret;
  }
 }
 return (error);
}
void
trunk_start(struct ifnet *ifp)
{
 struct trunk_softc *tr = (struct trunk_softc *)ifp->if_softc;
 struct mbuf *m;
 int error;
 for (;;) {
  do { (m) = ifq_dequeue(&ifp->if_snd); } while ( 0);
  if (m == ((void *)0))
   break;
  if (ifp->if_bpf)
   bpf_mtap_ether(ifp->if_bpf, m, (1<<1));
  if (tr->tr_proto != TRUNK_PROTO_NONE && tr->tr_count) {
   error = (*tr->tr_start)(tr, m);
   if (error != 0)
    ifp->if_data.ifi_oerrors++;
  } else {
   m_freem(m);
   if (tr->tr_proto != TRUNK_PROTO_NONE)
    ifp->if_data.ifi_oerrors++;
  }
 }
}
u_int32_t
trunk_hashmbuf(struct mbuf *m, SIPHASH_KEY *key)
{
 u_int16_t etype, ether_vtag;
 u_int32_t p = 0;
 u_int16_t *vlan, vlanbuf[2];
 int off;
 struct ether_header *eh;
 struct ip *ip, ipbuf;
 u_int32_t flow;
 struct ip6_hdr *ip6, ip6buf;
 SIPHASH_CTX ctx;
 if (m->M_dat.MH.MH_pkthdr.ph_flowid & 0x8000)
  return (m->M_dat.MH.MH_pkthdr.ph_flowid & 0x7fff);
 SipHash_Init((&ctx), (key));
 off = sizeof(*eh);
 if (m->m_hdr.mh_len < off)
  goto done;
 eh = ((struct ether_header *)((m)->m_hdr.mh_data));
 etype = ((__uint16_t)(eh->ether_type));
 SipHash_Update((&ctx), 2, 4, (&eh->ether_shost), (6));
 SipHash_Update((&ctx), 2, 4, (&eh->ether_dhost), (6));
 if (m->m_hdr.mh_flags & 0x0020) {
  ether_vtag = ((m->M_dat.MH.MH_pkthdr.ether_vtag) & 0xFFF);
  SipHash_Update((&ctx), 2, 4, (&ether_vtag), (sizeof(ether_vtag)));
 } else if (etype == 0x8100) {
  if ((vlan = (u_int16_t *)
      trunk_gethdr(m, off, 4, &vlanbuf)) == ((void *)0))
   return (p);
  ether_vtag = ((*vlan) & 0xFFF);
  SipHash_Update((&ctx), 2, 4, (&ether_vtag), (sizeof(ether_vtag)));
  etype = ((__uint16_t)(vlan[1]));
  off += 4;
 }
 switch (etype) {
 case 0x0800:
  if ((ip = (struct ip *)
      trunk_gethdr(m, off, sizeof(*ip), &ipbuf)) == ((void *)0))
   return (p);
  SipHash_Update((&ctx), 2, 4, (&ip->ip_src), (sizeof(struct in_addr)));
  SipHash_Update((&ctx), 2, 4, (&ip->ip_dst), (sizeof(struct in_addr)));
  break;
 case 0x86DD:
  if ((ip6 = (struct ip6_hdr *)
      trunk_gethdr(m, off, sizeof(*ip6), &ip6buf)) == ((void *)0))
   return (p);
  SipHash_Update((&ctx), 2, 4, (&ip6->ip6_src), (sizeof(struct in6_addr)));
  SipHash_Update((&ctx), 2, 4, (&ip6->ip6_dst), (sizeof(struct in6_addr)));
  flow = ip6->ip6_ctlun.ip6_un1.ip6_un1_flow & 0x000fffff;
  SipHash_Update((&ctx), 2, 4, (&flow), (sizeof(flow)));
  break;
 }
done:
 return SipHash_End((&ctx), 2, 4);
}
void
trunk_init(struct ifnet *ifp)
{
 struct trunk_softc *tr = (struct trunk_softc *)ifp->if_softc;
 ifp->if_flags |= 0x40;
 if (tr->tr_init != ((void *)0))
  (*tr->tr_init)(tr);
}
void
trunk_stop(struct ifnet *ifp)
{
 struct trunk_softc *tr = (struct trunk_softc *)ifp->if_softc;
 ifp->if_flags &= ~0x40;
 if (tr->tr_stop != ((void *)0))
  (*tr->tr_stop)(tr);
}
int
trunk_input(struct ifnet *ifp, struct mbuf *m, void *cookie)
{
 struct trunk_softc *tr;
 struct trunk_port *tp;
 struct ifnet *trifp = ((void *)0);
 struct ether_header *eh;
 struct mbuf_list ml = { ((void *)0), ((void *)0), 0 };
 eh = ((struct ether_header *)((m)->m_hdr.mh_data));
 if ((*(eh->ether_dhost) & 0x01))
  ifp->if_data.ifi_imcasts++;
 if (ifp->if_data.ifi_type != 0xa1)
  goto bad;
 tp = (struct trunk_port *)cookie;
 if ((tr = (struct trunk_softc *)tp->tp_trunk) == ((void *)0))
  goto bad;
 trifp = &tr->tr_ac.ac_if;
 if (tr->tr_proto == TRUNK_PROTO_NONE)
  goto bad;
 if ((*tr->tr_input)(tr, tp, m)) {
  return (1);
 }
 if ((trifp->if_flags & (0x1|0x40)) != (0x1|0x40))
  goto bad;
 if (!(*(eh->ether_dhost) & 0x01) &&
     (ifp->if_flags & 0x100) &&
     (trifp->if_flags & 0x100) == 0) {
  if (__builtin_bcmp((&tr->tr_ac.ac_enaddr), (eh->ether_dhost), (6))) {
   m_freem(m);
   return (1);
  }
 }
 ml_enqueue(&ml, m);
 if_input(trifp, &ml);
 return (1);
 bad:
 if (trifp != ((void *)0))
  trifp->if_data.ifi_ierrors++;
 m_freem(m);
 return (1);
}
int
trunk_media_change(struct ifnet *ifp)
{
 struct trunk_softc *tr = (struct trunk_softc *)ifp->if_softc;
 if (tr->tr_ac.ac_if.if_flags & 0x4)
  printf("%s\n", __func__);
 return (0);
}
void
trunk_media_status(struct ifnet *ifp, struct ifmediareq *imr)
{
 struct trunk_softc *tr = (struct trunk_softc *)ifp->if_softc;
 struct trunk_port *tp;
 imr->ifm_status = 0x0000000000000001ULL;
 imr->ifm_active = 0x0000000000000100ULL | 0ULL;
 for((tp) = ((&tr->tr_ports)->slh_first); (tp) != ((void *)0); (tp) = ((tp)->tp_entries.sle_next)) {
  if (( (((tp)->tp_if->if_data.ifi_link_state) >= 4 || ((tp)->tp_if->if_data.ifi_link_state) == 0) && (tp)->tp_if->if_flags & 0x1))
   imr->ifm_status |= 0x0000000000000002ULL;
 }
}
void
trunk_port_state(void *arg)
{
 struct trunk_port *tp = (struct trunk_port *)arg;
 struct trunk_softc *tr = ((void *)0);
 if (tp != ((void *)0))
  tr = (struct trunk_softc *)tp->tp_trunk;
 if (tr == ((void *)0))
  return;
 if (tr->tr_linkstate != ((void *)0))
  (*tr->tr_linkstate)(tp);
 trunk_link_active(tr, tp);
}
struct trunk_port *
trunk_link_active(struct trunk_softc *tr, struct trunk_port *tp)
{
 struct trunk_port *tp_next, *rval = ((void *)0);
 int new_link = 2;
 if (tp == ((void *)0))
  goto search;
 if (( (((tp)->tp_if->if_data.ifi_link_state) >= 4 || ((tp)->tp_if->if_data.ifi_link_state) == 0) && (tp)->tp_if->if_flags & 0x1)) {
  rval = tp;
  goto found;
 }
 if ((tp_next = ((tp)->tp_entries.sle_next)) != ((void *)0) &&
     ( (((tp_next)->tp_if->if_data.ifi_link_state) >= 4 || ((tp_next)->tp_if->if_data.ifi_link_state) == 0) && (tp_next)->tp_if->if_flags & 0x1)) {
  rval = tp_next;
  goto found;
 }
 search:
 for((tp_next) = ((&tr->tr_ports)->slh_first); (tp_next) != ((void *)0); (tp_next) = ((tp_next)->tp_entries.sle_next)) {
  if (( (((tp_next)->tp_if->if_data.ifi_link_state) >= 4 || ((tp_next)->tp_if->if_data.ifi_link_state) == 0) && (tp_next)->tp_if->if_flags & 0x1)) {
   rval = tp_next;
   goto found;
  }
 }
 found:
 if (rval != ((void *)0)) {
  if ((tr->tr_ac.ac_if.if_data.ifi_capabilities & 0x00010000) &&
      (tr->tr_count > 1))
   new_link = 6;
  else
   new_link = rval->tp_if->if_data.ifi_link_state;
 }
 if (tr->tr_ac.ac_if.if_data.ifi_link_state != new_link) {
  tr->tr_ac.ac_if.if_data.ifi_link_state = new_link;
  if_link_state_change(&tr->tr_ac.ac_if);
 }
 return (rval);
}
const void *
trunk_gethdr(struct mbuf *m, u_int off, u_int len, void *buf)
{
 if (m->M_dat.MH.MH_pkthdr.len < (off + len))
  return (((void *)0));
 else if (m->m_hdr.mh_len < (off + len)) {
  m_copydata(m, off, len, buf);
  return (buf);
 }
 return (((caddr_t)((m)->m_hdr.mh_data)) + off);
}
int
trunk_rr_attach(struct trunk_softc *tr)
{
 struct trunk_port *tp;
 tr->tr_detach = trunk_rr_detach;
 tr->tr_start = trunk_rr_start;
 tr->tr_input = trunk_rr_input;
 tr->tr_init = ((void *)0);
 tr->tr_stop = ((void *)0);
 tr->tr_linkstate = ((void *)0);
 tr->tr_port_create = ((void *)0);
 tr->tr_port_destroy = trunk_rr_port_destroy;
 tr->tr_ac.ac_if.if_data.ifi_capabilities = 0x00010000;
 tr->tr_req = ((void *)0);
 tr->tr_portreq = ((void *)0);
 tp = ((&tr->tr_ports)->slh_first);
 tr->tr_psc = (caddr_t)tp;
 return (0);
}
int
trunk_rr_detach(struct trunk_softc *tr)
{
 tr->tr_psc = ((void *)0);
 return (0);
}
void
trunk_rr_port_destroy(struct trunk_port *tp)
{
 struct trunk_softc *tr = (struct trunk_softc *)tp->tp_trunk;
 if (tp == (struct trunk_port *)tr->tr_psc)
  tr->tr_psc = ((void *)0);
}
int
trunk_rr_start(struct trunk_softc *tr, struct mbuf *m)
{
 struct trunk_port *tp = (struct trunk_port *)tr->tr_psc, *tp_next;
 int error = 0;
 if (tp == ((void *)0) && (tp = trunk_link_active(tr, ((void *)0))) == ((void *)0)) {
  m_freem(m);
  return (2);
 }
 if ((error = if_enqueue(tp->tp_if, m)) != 0)
  return (error);
 tp_next = trunk_link_active(tr, ((tp)->tp_entries.sle_next));
 tr->tr_psc = (caddr_t)tp_next;
 return (0);
}
int
trunk_rr_input(struct trunk_softc *tr, struct trunk_port *tp, struct mbuf *m)
{
 return (0);
}
int
trunk_fail_attach(struct trunk_softc *tr)
{
 tr->tr_detach = trunk_fail_detach;
 tr->tr_start = trunk_fail_start;
 tr->tr_input = trunk_fail_input;
 tr->tr_init = ((void *)0);
 tr->tr_stop = ((void *)0);
 tr->tr_port_create = trunk_fail_port_create;
 tr->tr_port_destroy = trunk_fail_port_destroy;
 tr->tr_linkstate = trunk_fail_linkstate;
 tr->tr_req = ((void *)0);
 tr->tr_portreq = ((void *)0);
 tr->tr_psc = (caddr_t)trunk_link_active(tr, tr->tr_primary);
 return (0);
}
int
trunk_fail_detach(struct trunk_softc *tr)
{
 tr->tr_psc = ((void *)0);
 return (0);
}
int
trunk_fail_port_create(struct trunk_port *tp)
{
 struct trunk_softc *tr = (struct trunk_softc *)tp->tp_trunk;
 tr->tr_psc = (caddr_t)trunk_link_active(tr, tr->tr_primary);
 return (0);
}
void
trunk_fail_port_destroy(struct trunk_port *tp)
{
 struct trunk_softc *tr = (struct trunk_softc *)tp->tp_trunk;
 struct trunk_port *tp_next;
 if ((caddr_t)tp == tr->tr_psc) {
  tp_next = trunk_link_active(tr, ((tp)->tp_entries.sle_next));
  if (tp_next == tp)
   tr->tr_psc = ((void *)0);
  else
   tr->tr_psc = (caddr_t)tp_next;
 } else {
  tr->tr_psc = (caddr_t)trunk_link_active(tr, tr->tr_primary);
 }
}
int
trunk_fail_start(struct trunk_softc *tr, struct mbuf *m)
{
 struct trunk_port *tp = (struct trunk_port *)tr->tr_psc;
 if (tp == ((void *)0)) {
  m_freem(m);
  return (2);
 }
 return (if_enqueue(tp->tp_if, m));
}
int
trunk_fail_input(struct trunk_softc *tr, struct trunk_port *tp, struct mbuf *m)
{
 if ((caddr_t)tp == tr->tr_psc)
  return (0);
 m_freem(m);
 return (-1);
}
void
trunk_fail_linkstate(struct trunk_port *tp)
{
 struct trunk_softc *tr = (struct trunk_softc *)tp->tp_trunk;
 tr->tr_psc = (caddr_t)trunk_link_active(tr, tr->tr_primary);
}
int
trunk_lb_attach(struct trunk_softc *tr)
{
 struct trunk_lb *lb;
 if ((lb = malloc(sizeof(*lb), 2, 0x0002|0x0008)) == ((void *)0))
  return (12);
 tr->tr_detach = trunk_lb_detach;
 tr->tr_start = trunk_lb_start;
 tr->tr_input = trunk_lb_input;
 tr->tr_port_create = trunk_lb_port_create;
 tr->tr_port_destroy = trunk_lb_port_destroy;
 tr->tr_linkstate = ((void *)0);
 tr->tr_ac.ac_if.if_data.ifi_capabilities = 0x00010000;
 tr->tr_req = ((void *)0);
 tr->tr_portreq = ((void *)0);
 tr->tr_init = ((void *)0);
 tr->tr_stop = ((void *)0);
 arc4random_buf(&lb->lb_key, sizeof(lb->lb_key));
 tr->tr_psc = (caddr_t)lb;
 return (0);
}
int
trunk_lb_detach(struct trunk_softc *tr)
{
 struct trunk_lb *lb = (struct trunk_lb *)tr->tr_psc;
 free(lb, 2, sizeof *lb);
 return (0);
}
int
trunk_lb_porttable(struct trunk_softc *tr, struct trunk_port *tp)
{
 struct trunk_lb *lb = (struct trunk_lb *)tr->tr_psc;
 struct trunk_port *tp_next;
 int i = 0;
 __builtin_bzero((&lb->lb_ports), (sizeof(lb->lb_ports)));
 for((tp_next) = ((&tr->tr_ports)->slh_first); (tp_next) != ((void *)0); (tp_next) = ((tp_next)->tp_entries.sle_next)) {
  if (tp_next == tp)
   continue;
  if (i >= 32)
   return (22);
  if (tr->tr_ac.ac_if.if_flags & 0x4)
   printf("%s: port %s at index %d\n",
       tr->tr_ac.ac_if.if_xname, tp_next->tp_if->if_xname, i);
  lb->lb_ports[i++] = tp_next;
 }
 return (0);
}
int
trunk_lb_port_create(struct trunk_port *tp)
{
 struct trunk_softc *tr = (struct trunk_softc *)tp->tp_trunk;
 return (trunk_lb_porttable(tr, ((void *)0)));
}
void
trunk_lb_port_destroy(struct trunk_port *tp)
{
 struct trunk_softc *tr = (struct trunk_softc *)tp->tp_trunk;
 trunk_lb_porttable(tr, tp);
}
int
trunk_lb_start(struct trunk_softc *tr, struct mbuf *m)
{
 struct trunk_lb *lb = (struct trunk_lb *)tr->tr_psc;
 struct trunk_port *tp = ((void *)0);
 u_int32_t p = 0;
 p = trunk_hashmbuf(m, &lb->lb_key);
 p %= tr->tr_count;
 tp = lb->lb_ports[p];
 if ((tp = trunk_link_active(tr, tp)) == ((void *)0)) {
  m_freem(m);
  return (2);
 }
 return (if_enqueue(tp->tp_if, m));
}
int
trunk_lb_input(struct trunk_softc *tr, struct trunk_port *tp, struct mbuf *m)
{
 return (0);
}
int
trunk_bcast_attach(struct trunk_softc *tr)
{
 tr->tr_detach = trunk_bcast_detach;
 tr->tr_start = trunk_bcast_start;
 tr->tr_input = trunk_bcast_input;
 tr->tr_init = ((void *)0);
 tr->tr_stop = ((void *)0);
 tr->tr_port_create = ((void *)0);
 tr->tr_port_destroy = ((void *)0);
 tr->tr_linkstate = ((void *)0);
 tr->tr_req = ((void *)0);
 tr->tr_portreq = ((void *)0);
 return (0);
}
int
trunk_bcast_detach(struct trunk_softc *tr)
{
 return (0);
}
int
trunk_bcast_start(struct trunk_softc *tr, struct mbuf *m0)
{
 int active_ports = 0;
 int errors = 0;
 struct trunk_port *tp, *last = ((void *)0);
 struct mbuf *m;
 for((tp) = ((&tr->tr_ports)->slh_first); (tp) != ((void *)0); (tp) = ((tp)->tp_entries.sle_next)) {
  if (!( (((tp)->tp_if->if_data.ifi_link_state) >= 4 || ((tp)->tp_if->if_data.ifi_link_state) == 0) && (tp)->tp_if->if_flags & 0x1))
   continue;
  active_ports++;
  if (last != ((void *)0)) {
   m = m_copym(m0, 0, 1000000000, 0x0002);
   if (m == ((void *)0)) {
    errors++;
    break;
   }
   if (if_enqueue(last->tp_if, m) != 0)
    errors++;
  }
  last = tp;
 }
 if (last == ((void *)0)) {
  m_freem(m0);
  return (2);
 }
 if (if_enqueue(last->tp_if, m0) != 0)
  errors++;
 if (errors == active_ports)
  return (55);
 return (0);
}
int
trunk_bcast_input(struct trunk_softc *tr, struct trunk_port *tp, struct mbuf *m)
{
 return (0);
}
int
trunk_lacp_attach(struct trunk_softc *tr)
{
 struct trunk_port *tp;
 int error;
 tr->tr_detach = trunk_lacp_detach;
 tr->tr_port_create = lacp_port_create;
 tr->tr_port_destroy = lacp_port_destroy;
 tr->tr_linkstate = lacp_linkstate;
 tr->tr_start = trunk_lacp_start;
 tr->tr_input = trunk_lacp_input;
 tr->tr_init = lacp_init;
 tr->tr_stop = lacp_stop;
 tr->tr_req = lacp_req;
 tr->tr_portreq = lacp_portreq;
 error = lacp_attach(tr);
 if (error)
  return (error);
 for((tp) = ((&tr->tr_ports)->slh_first); (tp) != ((void *)0); (tp) = ((tp)->tp_entries.sle_next))
  lacp_port_create(tp);
 return (error);
}
int
trunk_lacp_detach(struct trunk_softc *tr)
{
 struct trunk_port *tp;
 int error;
 for((tp) = ((&tr->tr_ports)->slh_first); (tp) != ((void *)0); (tp) = ((tp)->tp_entries.sle_next))
  lacp_port_destroy(tp);
 error = lacp_detach(tr);
 return (error);
}
int
trunk_lacp_start(struct trunk_softc *tr, struct mbuf *m)
{
 struct trunk_port *tp;
 tp = lacp_select_tx_port(tr, m);
 if (tp == ((void *)0)) {
  m_freem(m);
  return (16);
 }
 return (if_enqueue(tp->tp_if, m));
}
int
trunk_lacp_input(struct trunk_softc *tr, struct trunk_port *tp, struct mbuf *m)
{
 return (lacp_input(tp, m));
}
