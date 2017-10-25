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
struct plimit {
 struct rlimit pl_rlimit[9];
 int p_refcnt;
};
void addupc_intr(struct proc *, u_long);
void addupc_task(struct proc *, u_long, u_int);
void tuagg_unlocked(struct process *, struct proc *);
void tuagg(struct process *, struct proc *);
struct tusage;
void calctsru(struct tusage *, struct timespec *, struct timespec *,
     struct timespec *);
void calcru(struct tusage *, struct timeval *, struct timeval *,
     struct timeval *);
struct plimit *limcopy(struct plimit *);
void limfree(struct plimit *);
void ruadd(struct rusage *, struct rusage *);
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
 vaddr_t ps_stackgap;
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
struct ktr_header {
 uint ktr_type;
 pid_t ktr_pid;
 pid_t ktr_tid;
 struct timespec ktr_time;
 char ktr_comm[16 +1];
 size_t ktr_len;
};
struct ktr_syscall {
 int ktr_code;
 int ktr_argsize;
};
struct ktr_sysret {
 int ktr_code;
 int ktr_error;
};
struct ktr_genio {
 int ktr_fd;
 enum uio_rw ktr_rw;
};
struct ktr_psig {
 int signo;
 sig_t action;
 int mask;
 int code;
 siginfo_t si;
};
struct sockaddr;
struct stat;
struct ktr_user {
 char ktr_id[20];
};
struct ktr_pledge {
 int error;
 int syscall;
 uint64_t code;
};
void ktrgenio(struct proc *, int, enum uio_rw, struct iovec *, ssize_t);
void ktrnamei(struct proc *, char *);
void ktrpsig(struct proc *, int, sig_t, int, int, siginfo_t *);
void ktrsyscall(struct proc *, register_t, size_t, register_t []);
void ktrsysret(struct proc *, register_t, int, const register_t [2]);
int ktruser(struct proc *, const char *, const void *, size_t);
void ktrexec(struct proc *, int, const char *, ssize_t);
void ktrpledge(struct proc *, int, uint64_t, int);
void ktrcleartrace(struct process *);
void ktrsettrace(struct process *, int, struct vnode *, struct ucred *);
void ktrstruct(struct proc *, const char *, const void *, size_t);
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
struct sigacts {
 sig_t ps_sigact[33];
 sigset_t ps_catchmask[33];
 sigset_t ps_sigonstack;
 sigset_t ps_sigintr;
 sigset_t ps_sigreset;
 sigset_t ps_siginfo;
 sigset_t ps_sigignore;
 sigset_t ps_sigcatch;
 int ps_flags;
 int ps_refcnt;
};
enum signal_type { SPROCESS, STHREAD, SPROPAGATED };
int coredump(struct proc *p);
void execsigs(struct proc *p);
void gsignal(int pgid, int sig);
void csignal(pid_t pgid, int signum, uid_t uid, uid_t euid);
int issignal(struct proc *p);
void pgsignal(struct pgrp *pgrp, int sig, int checkctty);
void postsig(int sig);
void psignal(struct proc *p, int sig);
void ptsignal(struct proc *p, int sig, enum signal_type type);
void siginit(struct process *);
void trapsignal(struct proc *p, int sig, u_long code, int type,
     union sigval val);
void sigexit(struct proc *, int);
int sigonstack(size_t);
void setsigvec(struct proc *, int, struct sigaction *);
int killpg1(struct proc *, int, int, int);
void signal_init(void);
struct sigacts *sigactsinit(struct process *);
struct sigacts *sigactsshare(struct process *);
void sigstkinit(struct sigaltstack *);
void sigactsunshare(struct process *);
void sigactsfree(struct process *);
void sendsig(sig_t action, int sig, int returnmask, u_long code,
     int type, union sigval val);
int pledge_syscall(struct proc *, int, uint64_t *);
int pledge_fail(struct proc *, int, uint64_t);
struct mbuf;
struct nameidata;
int pledge_namei(struct proc *, struct nameidata *, char *);
int pledge_sendfd(struct proc *p, struct file *);
int pledge_recvfd(struct proc *p, struct file *);
int pledge_sysctl(struct proc *p, int namelen, int *name, void *new);
int pledge_chown(struct proc *p, uid_t, gid_t);
int pledge_adjtime(struct proc *p, const void *v);
int pledge_sendit(struct proc *p, const void *to);
int pledge_sockopt(struct proc *p, int set, int level, int optname);
int pledge_socket(struct proc *p, int domain, int state);
int pledge_ioctl(struct proc *p, long com, struct file *);
int pledge_ioctl_drm(struct proc *p, long com, dev_t device);
int pledge_ioctl_vmm(struct proc *p, long com);
int pledge_flock(struct proc *p);
int pledge_fcntl(struct proc *p, int cmd);
int pledge_swapctl(struct proc *p);
int pledge_kill(struct proc *p, pid_t pid);
int pledge_protexec(struct proc *p, int prot);
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
struct timecounter;
typedef u_int timecounter_get_t(struct timecounter *);
typedef void timecounter_pps_t(struct timecounter *);
struct timecounter {
 timecounter_get_t *tc_get_timecount;
 timecounter_pps_t *tc_poll_pps;
 u_int tc_counter_mask;
 u_int64_t tc_frequency;
 char *tc_name;
 int tc_quality;
 void *tc_priv;
 struct timecounter *tc_next;
 int64_t tc_freq_adj;
};
extern struct timecounter *timecounter;
u_int64_t tc_getfrequency(void);
void tc_init(struct timecounter *tc);
void tc_setclock(struct timespec *ts);
void tc_setrealtimeclock(struct timespec *ts);
void tc_ticktock(void);
void inittimecounter(void);
int sysctl_tc(int *, u_int, void *, size_t *, void *, size_t);
int tc_adjfreq(int64_t *, int64_t *);
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
struct nfs_args3 {
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
void vfs_unmountall(void);
extern struct mntlist { struct mount *tqh_first; struct mount **tqh_last; } mountlist;
struct mount *getvfs(fsid_t *);
int vfs_export(struct mount *, struct netexport *, struct export_args *);
struct netcred *vfs_export_lookup(struct mount *, struct netexport *,
     struct mbuf *);
int vfs_allocate_syncvnode(struct mount *);
int speedup_syncer(void);
int vfs_syncwait(int);
void vfs_shutdown(void);
int dounmount(struct mount *, int, struct proc *);
void vfsinit(void);
int vfs_register(struct vfsconf *);
int vfs_unregister(struct vfsconf *);
struct sys_exit_args {
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } rval;
};
struct sys_read_args {
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } fd;
 union { register_t pad; struct { void * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (void *)) ? 0 : sizeof (register_t) - sizeof (void *)]; void * datum; } be; } buf;
 union { register_t pad; struct { size_t datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (size_t)) ? 0 : sizeof (register_t) - sizeof (size_t)]; size_t datum; } be; } nbyte;
};
struct sys_write_args {
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } fd;
 union { register_t pad; struct { const void * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (const void *)) ? 0 : sizeof (register_t) - sizeof (const void *)]; const void * datum; } be; } buf;
 union { register_t pad; struct { size_t datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (size_t)) ? 0 : sizeof (register_t) - sizeof (size_t)]; size_t datum; } be; } nbyte;
};
struct sys_open_args {
 union { register_t pad; struct { const char * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (const char *)) ? 0 : sizeof (register_t) - sizeof (const char *)]; const char * datum; } be; } path;
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } flags;
 union { register_t pad; struct { mode_t datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (mode_t)) ? 0 : sizeof (register_t) - sizeof (mode_t)]; mode_t datum; } be; } mode;
};
struct sys_close_args {
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } fd;
};
struct sys_getentropy_args {
 union { register_t pad; struct { void * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (void *)) ? 0 : sizeof (register_t) - sizeof (void *)]; void * datum; } be; } buf;
 union { register_t pad; struct { size_t datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (size_t)) ? 0 : sizeof (register_t) - sizeof (size_t)]; size_t datum; } be; } nbyte;
};
struct sys___tfork_args {
 union { register_t pad; struct { const struct __tfork * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (const struct __tfork *)) ? 0 : sizeof (register_t) - sizeof (const struct __tfork *)]; const struct __tfork * datum; } be; } param;
 union { register_t pad; struct { size_t datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (size_t)) ? 0 : sizeof (register_t) - sizeof (size_t)]; size_t datum; } be; } psize;
};
struct sys_link_args {
 union { register_t pad; struct { const char * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (const char *)) ? 0 : sizeof (register_t) - sizeof (const char *)]; const char * datum; } be; } path;
 union { register_t pad; struct { const char * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (const char *)) ? 0 : sizeof (register_t) - sizeof (const char *)]; const char * datum; } be; } link;
};
struct sys_unlink_args {
 union { register_t pad; struct { const char * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (const char *)) ? 0 : sizeof (register_t) - sizeof (const char *)]; const char * datum; } be; } path;
};
struct sys_wait4_args {
 union { register_t pad; struct { pid_t datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (pid_t)) ? 0 : sizeof (register_t) - sizeof (pid_t)]; pid_t datum; } be; } pid;
 union { register_t pad; struct { int * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int *)) ? 0 : sizeof (register_t) - sizeof (int *)]; int * datum; } be; } status;
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } options;
 union { register_t pad; struct { struct rusage * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (struct rusage *)) ? 0 : sizeof (register_t) - sizeof (struct rusage *)]; struct rusage * datum; } be; } rusage;
};
struct sys_chdir_args {
 union { register_t pad; struct { const char * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (const char *)) ? 0 : sizeof (register_t) - sizeof (const char *)]; const char * datum; } be; } path;
};
struct sys_fchdir_args {
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } fd;
};
struct sys_mknod_args {
 union { register_t pad; struct { const char * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (const char *)) ? 0 : sizeof (register_t) - sizeof (const char *)]; const char * datum; } be; } path;
 union { register_t pad; struct { mode_t datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (mode_t)) ? 0 : sizeof (register_t) - sizeof (mode_t)]; mode_t datum; } be; } mode;
 union { register_t pad; struct { dev_t datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (dev_t)) ? 0 : sizeof (register_t) - sizeof (dev_t)]; dev_t datum; } be; } dev;
};
struct sys_chmod_args {
 union { register_t pad; struct { const char * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (const char *)) ? 0 : sizeof (register_t) - sizeof (const char *)]; const char * datum; } be; } path;
 union { register_t pad; struct { mode_t datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (mode_t)) ? 0 : sizeof (register_t) - sizeof (mode_t)]; mode_t datum; } be; } mode;
};
struct sys_chown_args {
 union { register_t pad; struct { const char * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (const char *)) ? 0 : sizeof (register_t) - sizeof (const char *)]; const char * datum; } be; } path;
 union { register_t pad; struct { uid_t datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (uid_t)) ? 0 : sizeof (register_t) - sizeof (uid_t)]; uid_t datum; } be; } uid;
 union { register_t pad; struct { gid_t datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (gid_t)) ? 0 : sizeof (register_t) - sizeof (gid_t)]; gid_t datum; } be; } gid;
};
struct sys_obreak_args {
 union { register_t pad; struct { char * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (char *)) ? 0 : sizeof (register_t) - sizeof (char *)]; char * datum; } be; } nsize;
};
struct sys_getrusage_args {
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } who;
 union { register_t pad; struct { struct rusage * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (struct rusage *)) ? 0 : sizeof (register_t) - sizeof (struct rusage *)]; struct rusage * datum; } be; } rusage;
};
struct sys_mount_args {
 union { register_t pad; struct { const char * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (const char *)) ? 0 : sizeof (register_t) - sizeof (const char *)]; const char * datum; } be; } type;
 union { register_t pad; struct { const char * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (const char *)) ? 0 : sizeof (register_t) - sizeof (const char *)]; const char * datum; } be; } path;
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } flags;
 union { register_t pad; struct { void * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (void *)) ? 0 : sizeof (register_t) - sizeof (void *)]; void * datum; } be; } data;
};
struct sys_unmount_args {
 union { register_t pad; struct { const char * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (const char *)) ? 0 : sizeof (register_t) - sizeof (const char *)]; const char * datum; } be; } path;
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } flags;
};
struct sys_setuid_args {
 union { register_t pad; struct { uid_t datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (uid_t)) ? 0 : sizeof (register_t) - sizeof (uid_t)]; uid_t datum; } be; } uid;
};
struct sys_ptrace_args {
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } req;
 union { register_t pad; struct { pid_t datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (pid_t)) ? 0 : sizeof (register_t) - sizeof (pid_t)]; pid_t datum; } be; } pid;
 union { register_t pad; struct { caddr_t datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (caddr_t)) ? 0 : sizeof (register_t) - sizeof (caddr_t)]; caddr_t datum; } be; } addr;
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } data;
};
struct sys_recvmsg_args {
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } s;
 union { register_t pad; struct { struct msghdr * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (struct msghdr *)) ? 0 : sizeof (register_t) - sizeof (struct msghdr *)]; struct msghdr * datum; } be; } msg;
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } flags;
};
struct sys_sendmsg_args {
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } s;
 union { register_t pad; struct { const struct msghdr * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (const struct msghdr *)) ? 0 : sizeof (register_t) - sizeof (const struct msghdr *)]; const struct msghdr * datum; } be; } msg;
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } flags;
};
struct sys_recvfrom_args {
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } s;
 union { register_t pad; struct { void * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (void *)) ? 0 : sizeof (register_t) - sizeof (void *)]; void * datum; } be; } buf;
 union { register_t pad; struct { size_t datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (size_t)) ? 0 : sizeof (register_t) - sizeof (size_t)]; size_t datum; } be; } len;
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } flags;
 union { register_t pad; struct { struct sockaddr * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (struct sockaddr *)) ? 0 : sizeof (register_t) - sizeof (struct sockaddr *)]; struct sockaddr * datum; } be; } from;
 union { register_t pad; struct { socklen_t * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (socklen_t *)) ? 0 : sizeof (register_t) - sizeof (socklen_t *)]; socklen_t * datum; } be; } fromlenaddr;
};
struct sys_accept_args {
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } s;
 union { register_t pad; struct { struct sockaddr * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (struct sockaddr *)) ? 0 : sizeof (register_t) - sizeof (struct sockaddr *)]; struct sockaddr * datum; } be; } name;
 union { register_t pad; struct { socklen_t * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (socklen_t *)) ? 0 : sizeof (register_t) - sizeof (socklen_t *)]; socklen_t * datum; } be; } anamelen;
};
struct sys_getpeername_args {
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } fdes;
 union { register_t pad; struct { struct sockaddr * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (struct sockaddr *)) ? 0 : sizeof (register_t) - sizeof (struct sockaddr *)]; struct sockaddr * datum; } be; } asa;
 union { register_t pad; struct { socklen_t * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (socklen_t *)) ? 0 : sizeof (register_t) - sizeof (socklen_t *)]; socklen_t * datum; } be; } alen;
};
struct sys_getsockname_args {
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } fdes;
 union { register_t pad; struct { struct sockaddr * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (struct sockaddr *)) ? 0 : sizeof (register_t) - sizeof (struct sockaddr *)]; struct sockaddr * datum; } be; } asa;
 union { register_t pad; struct { socklen_t * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (socklen_t *)) ? 0 : sizeof (register_t) - sizeof (socklen_t *)]; socklen_t * datum; } be; } alen;
};
struct sys_access_args {
 union { register_t pad; struct { const char * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (const char *)) ? 0 : sizeof (register_t) - sizeof (const char *)]; const char * datum; } be; } path;
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } amode;
};
struct sys_chflags_args {
 union { register_t pad; struct { const char * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (const char *)) ? 0 : sizeof (register_t) - sizeof (const char *)]; const char * datum; } be; } path;
 union { register_t pad; struct { u_int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (u_int)) ? 0 : sizeof (register_t) - sizeof (u_int)]; u_int datum; } be; } flags;
};
struct sys_fchflags_args {
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } fd;
 union { register_t pad; struct { u_int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (u_int)) ? 0 : sizeof (register_t) - sizeof (u_int)]; u_int datum; } be; } flags;
};
struct sys_stat_args {
 union { register_t pad; struct { const char * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (const char *)) ? 0 : sizeof (register_t) - sizeof (const char *)]; const char * datum; } be; } path;
 union { register_t pad; struct { struct stat * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (struct stat *)) ? 0 : sizeof (register_t) - sizeof (struct stat *)]; struct stat * datum; } be; } ub;
};
struct sys_lstat_args {
 union { register_t pad; struct { const char * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (const char *)) ? 0 : sizeof (register_t) - sizeof (const char *)]; const char * datum; } be; } path;
 union { register_t pad; struct { struct stat * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (struct stat *)) ? 0 : sizeof (register_t) - sizeof (struct stat *)]; struct stat * datum; } be; } ub;
};
struct sys_dup_args {
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } fd;
};
struct sys_fstatat_args {
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } fd;
 union { register_t pad; struct { const char * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (const char *)) ? 0 : sizeof (register_t) - sizeof (const char *)]; const char * datum; } be; } path;
 union { register_t pad; struct { struct stat * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (struct stat *)) ? 0 : sizeof (register_t) - sizeof (struct stat *)]; struct stat * datum; } be; } buf;
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } flag;
};
struct sys_profil_args {
 union { register_t pad; struct { caddr_t datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (caddr_t)) ? 0 : sizeof (register_t) - sizeof (caddr_t)]; caddr_t datum; } be; } samples;
 union { register_t pad; struct { size_t datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (size_t)) ? 0 : sizeof (register_t) - sizeof (size_t)]; size_t datum; } be; } size;
 union { register_t pad; struct { u_long datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (u_long)) ? 0 : sizeof (register_t) - sizeof (u_long)]; u_long datum; } be; } offset;
 union { register_t pad; struct { u_int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (u_int)) ? 0 : sizeof (register_t) - sizeof (u_int)]; u_int datum; } be; } scale;
};
struct sys_ktrace_args {
 union { register_t pad; struct { const char * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (const char *)) ? 0 : sizeof (register_t) - sizeof (const char *)]; const char * datum; } be; } fname;
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } ops;
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } facs;
 union { register_t pad; struct { pid_t datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (pid_t)) ? 0 : sizeof (register_t) - sizeof (pid_t)]; pid_t datum; } be; } pid;
};
struct sys_sigaction_args {
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } signum;
 union { register_t pad; struct { const struct sigaction * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (const struct sigaction *)) ? 0 : sizeof (register_t) - sizeof (const struct sigaction *)]; const struct sigaction * datum; } be; } nsa;
 union { register_t pad; struct { struct sigaction * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (struct sigaction *)) ? 0 : sizeof (register_t) - sizeof (struct sigaction *)]; struct sigaction * datum; } be; } osa;
};
struct sys_sigprocmask_args {
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } how;
 union { register_t pad; struct { sigset_t datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (sigset_t)) ? 0 : sizeof (register_t) - sizeof (sigset_t)]; sigset_t datum; } be; } mask;
};
struct sys_setlogin_args {
 union { register_t pad; struct { const char * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (const char *)) ? 0 : sizeof (register_t) - sizeof (const char *)]; const char * datum; } be; } namebuf;
};
struct sys_acct_args {
 union { register_t pad; struct { const char * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (const char *)) ? 0 : sizeof (register_t) - sizeof (const char *)]; const char * datum; } be; } path;
};
struct sys_fstat_args {
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } fd;
 union { register_t pad; struct { struct stat * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (struct stat *)) ? 0 : sizeof (register_t) - sizeof (struct stat *)]; struct stat * datum; } be; } sb;
};
struct sys_ioctl_args {
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } fd;
 union { register_t pad; struct { u_long datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (u_long)) ? 0 : sizeof (register_t) - sizeof (u_long)]; u_long datum; } be; } com;
 union { register_t pad; struct { void * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (void *)) ? 0 : sizeof (register_t) - sizeof (void *)]; void * datum; } be; } data;
};
struct sys_reboot_args {
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } opt;
};
struct sys_revoke_args {
 union { register_t pad; struct { const char * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (const char *)) ? 0 : sizeof (register_t) - sizeof (const char *)]; const char * datum; } be; } path;
};
struct sys_symlink_args {
 union { register_t pad; struct { const char * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (const char *)) ? 0 : sizeof (register_t) - sizeof (const char *)]; const char * datum; } be; } path;
 union { register_t pad; struct { const char * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (const char *)) ? 0 : sizeof (register_t) - sizeof (const char *)]; const char * datum; } be; } link;
};
struct sys_readlink_args {
 union { register_t pad; struct { const char * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (const char *)) ? 0 : sizeof (register_t) - sizeof (const char *)]; const char * datum; } be; } path;
 union { register_t pad; struct { char * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (char *)) ? 0 : sizeof (register_t) - sizeof (char *)]; char * datum; } be; } buf;
 union { register_t pad; struct { size_t datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (size_t)) ? 0 : sizeof (register_t) - sizeof (size_t)]; size_t datum; } be; } count;
};
struct sys_execve_args {
 union { register_t pad; struct { const char * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (const char *)) ? 0 : sizeof (register_t) - sizeof (const char *)]; const char * datum; } be; } path;
 union { register_t pad; struct { char *const * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (char *const *)) ? 0 : sizeof (register_t) - sizeof (char *const *)]; char *const * datum; } be; } argp;
 union { register_t pad; struct { char *const * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (char *const *)) ? 0 : sizeof (register_t) - sizeof (char *const *)]; char *const * datum; } be; } envp;
};
struct sys_umask_args {
 union { register_t pad; struct { mode_t datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (mode_t)) ? 0 : sizeof (register_t) - sizeof (mode_t)]; mode_t datum; } be; } newmask;
};
struct sys_chroot_args {
 union { register_t pad; struct { const char * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (const char *)) ? 0 : sizeof (register_t) - sizeof (const char *)]; const char * datum; } be; } path;
};
struct sys_getfsstat_args {
 union { register_t pad; struct { struct statfs * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (struct statfs *)) ? 0 : sizeof (register_t) - sizeof (struct statfs *)]; struct statfs * datum; } be; } buf;
 union { register_t pad; struct { size_t datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (size_t)) ? 0 : sizeof (register_t) - sizeof (size_t)]; size_t datum; } be; } bufsize;
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } flags;
};
struct sys_statfs_args {
 union { register_t pad; struct { const char * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (const char *)) ? 0 : sizeof (register_t) - sizeof (const char *)]; const char * datum; } be; } path;
 union { register_t pad; struct { struct statfs * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (struct statfs *)) ? 0 : sizeof (register_t) - sizeof (struct statfs *)]; struct statfs * datum; } be; } buf;
};
struct sys_fstatfs_args {
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } fd;
 union { register_t pad; struct { struct statfs * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (struct statfs *)) ? 0 : sizeof (register_t) - sizeof (struct statfs *)]; struct statfs * datum; } be; } buf;
};
struct sys_fhstatfs_args {
 union { register_t pad; struct { const fhandle_t * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (const fhandle_t *)) ? 0 : sizeof (register_t) - sizeof (const fhandle_t *)]; const fhandle_t * datum; } be; } fhp;
 union { register_t pad; struct { struct statfs * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (struct statfs *)) ? 0 : sizeof (register_t) - sizeof (struct statfs *)]; struct statfs * datum; } be; } buf;
};
struct sys_gettimeofday_args {
 union { register_t pad; struct { struct timeval * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (struct timeval *)) ? 0 : sizeof (register_t) - sizeof (struct timeval *)]; struct timeval * datum; } be; } tp;
 union { register_t pad; struct { struct timezone * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (struct timezone *)) ? 0 : sizeof (register_t) - sizeof (struct timezone *)]; struct timezone * datum; } be; } tzp;
};
struct sys_settimeofday_args {
 union { register_t pad; struct { const struct timeval * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (const struct timeval *)) ? 0 : sizeof (register_t) - sizeof (const struct timeval *)]; const struct timeval * datum; } be; } tv;
 union { register_t pad; struct { const struct timezone * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (const struct timezone *)) ? 0 : sizeof (register_t) - sizeof (const struct timezone *)]; const struct timezone * datum; } be; } tzp;
};
struct sys_setitimer_args {
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } which;
 union { register_t pad; struct { const struct itimerval * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (const struct itimerval *)) ? 0 : sizeof (register_t) - sizeof (const struct itimerval *)]; const struct itimerval * datum; } be; } itv;
 union { register_t pad; struct { struct itimerval * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (struct itimerval *)) ? 0 : sizeof (register_t) - sizeof (struct itimerval *)]; struct itimerval * datum; } be; } oitv;
};
struct sys_getitimer_args {
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } which;
 union { register_t pad; struct { struct itimerval * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (struct itimerval *)) ? 0 : sizeof (register_t) - sizeof (struct itimerval *)]; struct itimerval * datum; } be; } itv;
};
struct sys_select_args {
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } nd;
 union { register_t pad; struct { fd_set * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (fd_set *)) ? 0 : sizeof (register_t) - sizeof (fd_set *)]; fd_set * datum; } be; } in;
 union { register_t pad; struct { fd_set * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (fd_set *)) ? 0 : sizeof (register_t) - sizeof (fd_set *)]; fd_set * datum; } be; } ou;
 union { register_t pad; struct { fd_set * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (fd_set *)) ? 0 : sizeof (register_t) - sizeof (fd_set *)]; fd_set * datum; } be; } ex;
 union { register_t pad; struct { struct timeval * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (struct timeval *)) ? 0 : sizeof (register_t) - sizeof (struct timeval *)]; struct timeval * datum; } be; } tv;
};
struct sys_kevent_args {
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } fd;
 union { register_t pad; struct { const struct kevent * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (const struct kevent *)) ? 0 : sizeof (register_t) - sizeof (const struct kevent *)]; const struct kevent * datum; } be; } changelist;
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } nchanges;
 union { register_t pad; struct { struct kevent * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (struct kevent *)) ? 0 : sizeof (register_t) - sizeof (struct kevent *)]; struct kevent * datum; } be; } eventlist;
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } nevents;
 union { register_t pad; struct { const struct timespec * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (const struct timespec *)) ? 0 : sizeof (register_t) - sizeof (const struct timespec *)]; const struct timespec * datum; } be; } timeout;
};
struct sys_munmap_args {
 union { register_t pad; struct { void * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (void *)) ? 0 : sizeof (register_t) - sizeof (void *)]; void * datum; } be; } addr;
 union { register_t pad; struct { size_t datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (size_t)) ? 0 : sizeof (register_t) - sizeof (size_t)]; size_t datum; } be; } len;
};
struct sys_mprotect_args {
 union { register_t pad; struct { void * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (void *)) ? 0 : sizeof (register_t) - sizeof (void *)]; void * datum; } be; } addr;
 union { register_t pad; struct { size_t datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (size_t)) ? 0 : sizeof (register_t) - sizeof (size_t)]; size_t datum; } be; } len;
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } prot;
};
struct sys_madvise_args {
 union { register_t pad; struct { void * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (void *)) ? 0 : sizeof (register_t) - sizeof (void *)]; void * datum; } be; } addr;
 union { register_t pad; struct { size_t datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (size_t)) ? 0 : sizeof (register_t) - sizeof (size_t)]; size_t datum; } be; } len;
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } behav;
};
struct sys_utimes_args {
 union { register_t pad; struct { const char * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (const char *)) ? 0 : sizeof (register_t) - sizeof (const char *)]; const char * datum; } be; } path;
 union { register_t pad; struct { const struct timeval * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (const struct timeval *)) ? 0 : sizeof (register_t) - sizeof (const struct timeval *)]; const struct timeval * datum; } be; } tptr;
};
struct sys_futimes_args {
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } fd;
 union { register_t pad; struct { const struct timeval * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (const struct timeval *)) ? 0 : sizeof (register_t) - sizeof (const struct timeval *)]; const struct timeval * datum; } be; } tptr;
};
struct sys_mincore_args {
 union { register_t pad; struct { void * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (void *)) ? 0 : sizeof (register_t) - sizeof (void *)]; void * datum; } be; } addr;
 union { register_t pad; struct { size_t datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (size_t)) ? 0 : sizeof (register_t) - sizeof (size_t)]; size_t datum; } be; } len;
 union { register_t pad; struct { char * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (char *)) ? 0 : sizeof (register_t) - sizeof (char *)]; char * datum; } be; } vec;
};
struct sys_getgroups_args {
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } gidsetsize;
 union { register_t pad; struct { gid_t * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (gid_t *)) ? 0 : sizeof (register_t) - sizeof (gid_t *)]; gid_t * datum; } be; } gidset;
};
struct sys_setgroups_args {
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } gidsetsize;
 union { register_t pad; struct { const gid_t * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (const gid_t *)) ? 0 : sizeof (register_t) - sizeof (const gid_t *)]; const gid_t * datum; } be; } gidset;
};
struct sys_setpgid_args {
 union { register_t pad; struct { pid_t datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (pid_t)) ? 0 : sizeof (register_t) - sizeof (pid_t)]; pid_t datum; } be; } pid;
 union { register_t pad; struct { pid_t datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (pid_t)) ? 0 : sizeof (register_t) - sizeof (pid_t)]; pid_t datum; } be; } pgid;
};
struct sys_futex_args {
 union { register_t pad; struct { uint32_t * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (uint32_t *)) ? 0 : sizeof (register_t) - sizeof (uint32_t *)]; uint32_t * datum; } be; } f;
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } op;
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } val;
 union { register_t pad; struct { const struct timespec * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (const struct timespec *)) ? 0 : sizeof (register_t) - sizeof (const struct timespec *)]; const struct timespec * datum; } be; } timeout;
 union { register_t pad; struct { uint32_t * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (uint32_t *)) ? 0 : sizeof (register_t) - sizeof (uint32_t *)]; uint32_t * datum; } be; } g;
};
struct sys_utimensat_args {
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } fd;
 union { register_t pad; struct { const char * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (const char *)) ? 0 : sizeof (register_t) - sizeof (const char *)]; const char * datum; } be; } path;
 union { register_t pad; struct { const struct timespec * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (const struct timespec *)) ? 0 : sizeof (register_t) - sizeof (const struct timespec *)]; const struct timespec * datum; } be; } times;
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } flag;
};
struct sys_futimens_args {
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } fd;
 union { register_t pad; struct { const struct timespec * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (const struct timespec *)) ? 0 : sizeof (register_t) - sizeof (const struct timespec *)]; const struct timespec * datum; } be; } times;
};
struct sys_kbind_args {
 union { register_t pad; struct { const struct __kbind * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (const struct __kbind *)) ? 0 : sizeof (register_t) - sizeof (const struct __kbind *)]; const struct __kbind * datum; } be; } param;
 union { register_t pad; struct { size_t datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (size_t)) ? 0 : sizeof (register_t) - sizeof (size_t)]; size_t datum; } be; } psize;
 union { register_t pad; struct { int64_t datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int64_t)) ? 0 : sizeof (register_t) - sizeof (int64_t)]; int64_t datum; } be; } proc_cookie;
};
struct sys_clock_gettime_args {
 union { register_t pad; struct { clockid_t datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (clockid_t)) ? 0 : sizeof (register_t) - sizeof (clockid_t)]; clockid_t datum; } be; } clock_id;
 union { register_t pad; struct { struct timespec * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (struct timespec *)) ? 0 : sizeof (register_t) - sizeof (struct timespec *)]; struct timespec * datum; } be; } tp;
};
struct sys_clock_settime_args {
 union { register_t pad; struct { clockid_t datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (clockid_t)) ? 0 : sizeof (register_t) - sizeof (clockid_t)]; clockid_t datum; } be; } clock_id;
 union { register_t pad; struct { const struct timespec * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (const struct timespec *)) ? 0 : sizeof (register_t) - sizeof (const struct timespec *)]; const struct timespec * datum; } be; } tp;
};
struct sys_clock_getres_args {
 union { register_t pad; struct { clockid_t datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (clockid_t)) ? 0 : sizeof (register_t) - sizeof (clockid_t)]; clockid_t datum; } be; } clock_id;
 union { register_t pad; struct { struct timespec * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (struct timespec *)) ? 0 : sizeof (register_t) - sizeof (struct timespec *)]; struct timespec * datum; } be; } tp;
};
struct sys_dup2_args {
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } from;
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } to;
};
struct sys_nanosleep_args {
 union { register_t pad; struct { const struct timespec * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (const struct timespec *)) ? 0 : sizeof (register_t) - sizeof (const struct timespec *)]; const struct timespec * datum; } be; } rqtp;
 union { register_t pad; struct { struct timespec * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (struct timespec *)) ? 0 : sizeof (register_t) - sizeof (struct timespec *)]; struct timespec * datum; } be; } rmtp;
};
struct sys_fcntl_args {
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } fd;
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } cmd;
 union { register_t pad; struct { void * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (void *)) ? 0 : sizeof (register_t) - sizeof (void *)]; void * datum; } be; } arg;
};
struct sys_accept4_args {
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } s;
 union { register_t pad; struct { struct sockaddr * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (struct sockaddr *)) ? 0 : sizeof (register_t) - sizeof (struct sockaddr *)]; struct sockaddr * datum; } be; } name;
 union { register_t pad; struct { socklen_t * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (socklen_t *)) ? 0 : sizeof (register_t) - sizeof (socklen_t *)]; socklen_t * datum; } be; } anamelen;
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } flags;
};
struct sys___thrsleep_args {
 union { register_t pad; struct { const volatile void * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (const volatile void *)) ? 0 : sizeof (register_t) - sizeof (const volatile void *)]; const volatile void * datum; } be; } ident;
 union { register_t pad; struct { clockid_t datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (clockid_t)) ? 0 : sizeof (register_t) - sizeof (clockid_t)]; clockid_t datum; } be; } clock_id;
 union { register_t pad; struct { const struct timespec * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (const struct timespec *)) ? 0 : sizeof (register_t) - sizeof (const struct timespec *)]; const struct timespec * datum; } be; } tp;
 union { register_t pad; struct { void * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (void *)) ? 0 : sizeof (register_t) - sizeof (void *)]; void * datum; } be; } lock;
 union { register_t pad; struct { const int * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (const int *)) ? 0 : sizeof (register_t) - sizeof (const int *)]; const int * datum; } be; } abort;
};
struct sys_fsync_args {
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } fd;
};
struct sys_setpriority_args {
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } which;
 union { register_t pad; struct { id_t datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (id_t)) ? 0 : sizeof (register_t) - sizeof (id_t)]; id_t datum; } be; } who;
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } prio;
};
struct sys_socket_args {
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } domain;
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } type;
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } protocol;
};
struct sys_connect_args {
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } s;
 union { register_t pad; struct { const struct sockaddr * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (const struct sockaddr *)) ? 0 : sizeof (register_t) - sizeof (const struct sockaddr *)]; const struct sockaddr * datum; } be; } name;
 union { register_t pad; struct { socklen_t datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (socklen_t)) ? 0 : sizeof (register_t) - sizeof (socklen_t)]; socklen_t datum; } be; } namelen;
};
struct sys_getdents_args {
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } fd;
 union { register_t pad; struct { void * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (void *)) ? 0 : sizeof (register_t) - sizeof (void *)]; void * datum; } be; } buf;
 union { register_t pad; struct { size_t datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (size_t)) ? 0 : sizeof (register_t) - sizeof (size_t)]; size_t datum; } be; } buflen;
};
struct sys_getpriority_args {
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } which;
 union { register_t pad; struct { id_t datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (id_t)) ? 0 : sizeof (register_t) - sizeof (id_t)]; id_t datum; } be; } who;
};
struct sys_pipe2_args {
 union { register_t pad; struct { int * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int *)) ? 0 : sizeof (register_t) - sizeof (int *)]; int * datum; } be; } fdp;
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } flags;
};
struct sys_dup3_args {
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } from;
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } to;
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } flags;
};
struct sys_sigreturn_args {
 union { register_t pad; struct { struct sigcontext * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (struct sigcontext *)) ? 0 : sizeof (register_t) - sizeof (struct sigcontext *)]; struct sigcontext * datum; } be; } sigcntxp;
};
struct sys_bind_args {
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } s;
 union { register_t pad; struct { const struct sockaddr * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (const struct sockaddr *)) ? 0 : sizeof (register_t) - sizeof (const struct sockaddr *)]; const struct sockaddr * datum; } be; } name;
 union { register_t pad; struct { socklen_t datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (socklen_t)) ? 0 : sizeof (register_t) - sizeof (socklen_t)]; socklen_t datum; } be; } namelen;
};
struct sys_setsockopt_args {
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } s;
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } level;
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } name;
 union { register_t pad; struct { const void * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (const void *)) ? 0 : sizeof (register_t) - sizeof (const void *)]; const void * datum; } be; } val;
 union { register_t pad; struct { socklen_t datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (socklen_t)) ? 0 : sizeof (register_t) - sizeof (socklen_t)]; socklen_t datum; } be; } valsize;
};
struct sys_listen_args {
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } s;
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } backlog;
};
struct sys_chflagsat_args {
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } fd;
 union { register_t pad; struct { const char * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (const char *)) ? 0 : sizeof (register_t) - sizeof (const char *)]; const char * datum; } be; } path;
 union { register_t pad; struct { u_int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (u_int)) ? 0 : sizeof (register_t) - sizeof (u_int)]; u_int datum; } be; } flags;
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } atflags;
};
struct sys_pledge_args {
 union { register_t pad; struct { const char * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (const char *)) ? 0 : sizeof (register_t) - sizeof (const char *)]; const char * datum; } be; } request;
 union { register_t pad; struct { const char ** datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (const char **)) ? 0 : sizeof (register_t) - sizeof (const char **)]; const char ** datum; } be; } paths;
};
struct sys_ppoll_args {
 union { register_t pad; struct { struct pollfd * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (struct pollfd *)) ? 0 : sizeof (register_t) - sizeof (struct pollfd *)]; struct pollfd * datum; } be; } fds;
 union { register_t pad; struct { u_int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (u_int)) ? 0 : sizeof (register_t) - sizeof (u_int)]; u_int datum; } be; } nfds;
 union { register_t pad; struct { const struct timespec * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (const struct timespec *)) ? 0 : sizeof (register_t) - sizeof (const struct timespec *)]; const struct timespec * datum; } be; } ts;
 union { register_t pad; struct { const sigset_t * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (const sigset_t *)) ? 0 : sizeof (register_t) - sizeof (const sigset_t *)]; const sigset_t * datum; } be; } mask;
};
struct sys_pselect_args {
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } nd;
 union { register_t pad; struct { fd_set * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (fd_set *)) ? 0 : sizeof (register_t) - sizeof (fd_set *)]; fd_set * datum; } be; } in;
 union { register_t pad; struct { fd_set * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (fd_set *)) ? 0 : sizeof (register_t) - sizeof (fd_set *)]; fd_set * datum; } be; } ou;
 union { register_t pad; struct { fd_set * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (fd_set *)) ? 0 : sizeof (register_t) - sizeof (fd_set *)]; fd_set * datum; } be; } ex;
 union { register_t pad; struct { const struct timespec * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (const struct timespec *)) ? 0 : sizeof (register_t) - sizeof (const struct timespec *)]; const struct timespec * datum; } be; } ts;
 union { register_t pad; struct { const sigset_t * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (const sigset_t *)) ? 0 : sizeof (register_t) - sizeof (const sigset_t *)]; const sigset_t * datum; } be; } mask;
};
struct sys_sigsuspend_args {
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } mask;
};
struct sys_sendsyslog_args {
 union { register_t pad; struct { const char * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (const char *)) ? 0 : sizeof (register_t) - sizeof (const char *)]; const char * datum; } be; } buf;
 union { register_t pad; struct { size_t datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (size_t)) ? 0 : sizeof (register_t) - sizeof (size_t)]; size_t datum; } be; } nbyte;
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } flags;
};
struct sys_fktrace_args {
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } fd;
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } ops;
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } facs;
 union { register_t pad; struct { pid_t datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (pid_t)) ? 0 : sizeof (register_t) - sizeof (pid_t)]; pid_t datum; } be; } pid;
};
struct sys_getsockopt_args {
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } s;
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } level;
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } name;
 union { register_t pad; struct { void * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (void *)) ? 0 : sizeof (register_t) - sizeof (void *)]; void * datum; } be; } val;
 union { register_t pad; struct { socklen_t * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (socklen_t *)) ? 0 : sizeof (register_t) - sizeof (socklen_t *)]; socklen_t * datum; } be; } avalsize;
};
struct sys_thrkill_args {
 union { register_t pad; struct { pid_t datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (pid_t)) ? 0 : sizeof (register_t) - sizeof (pid_t)]; pid_t datum; } be; } tid;
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } signum;
 union { register_t pad; struct { void * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (void *)) ? 0 : sizeof (register_t) - sizeof (void *)]; void * datum; } be; } tcb;
};
struct sys_readv_args {
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } fd;
 union { register_t pad; struct { const struct iovec * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (const struct iovec *)) ? 0 : sizeof (register_t) - sizeof (const struct iovec *)]; const struct iovec * datum; } be; } iovp;
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } iovcnt;
};
struct sys_writev_args {
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } fd;
 union { register_t pad; struct { const struct iovec * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (const struct iovec *)) ? 0 : sizeof (register_t) - sizeof (const struct iovec *)]; const struct iovec * datum; } be; } iovp;
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } iovcnt;
};
struct sys_kill_args {
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } pid;
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } signum;
};
struct sys_fchown_args {
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } fd;
 union { register_t pad; struct { uid_t datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (uid_t)) ? 0 : sizeof (register_t) - sizeof (uid_t)]; uid_t datum; } be; } uid;
 union { register_t pad; struct { gid_t datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (gid_t)) ? 0 : sizeof (register_t) - sizeof (gid_t)]; gid_t datum; } be; } gid;
};
struct sys_fchmod_args {
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } fd;
 union { register_t pad; struct { mode_t datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (mode_t)) ? 0 : sizeof (register_t) - sizeof (mode_t)]; mode_t datum; } be; } mode;
};
struct sys_setreuid_args {
 union { register_t pad; struct { uid_t datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (uid_t)) ? 0 : sizeof (register_t) - sizeof (uid_t)]; uid_t datum; } be; } ruid;
 union { register_t pad; struct { uid_t datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (uid_t)) ? 0 : sizeof (register_t) - sizeof (uid_t)]; uid_t datum; } be; } euid;
};
struct sys_setregid_args {
 union { register_t pad; struct { gid_t datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (gid_t)) ? 0 : sizeof (register_t) - sizeof (gid_t)]; gid_t datum; } be; } rgid;
 union { register_t pad; struct { gid_t datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (gid_t)) ? 0 : sizeof (register_t) - sizeof (gid_t)]; gid_t datum; } be; } egid;
};
struct sys_rename_args {
 union { register_t pad; struct { const char * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (const char *)) ? 0 : sizeof (register_t) - sizeof (const char *)]; const char * datum; } be; } from;
 union { register_t pad; struct { const char * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (const char *)) ? 0 : sizeof (register_t) - sizeof (const char *)]; const char * datum; } be; } to;
};
struct sys_flock_args {
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } fd;
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } how;
};
struct sys_mkfifo_args {
 union { register_t pad; struct { const char * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (const char *)) ? 0 : sizeof (register_t) - sizeof (const char *)]; const char * datum; } be; } path;
 union { register_t pad; struct { mode_t datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (mode_t)) ? 0 : sizeof (register_t) - sizeof (mode_t)]; mode_t datum; } be; } mode;
};
struct sys_sendto_args {
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } s;
 union { register_t pad; struct { const void * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (const void *)) ? 0 : sizeof (register_t) - sizeof (const void *)]; const void * datum; } be; } buf;
 union { register_t pad; struct { size_t datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (size_t)) ? 0 : sizeof (register_t) - sizeof (size_t)]; size_t datum; } be; } len;
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } flags;
 union { register_t pad; struct { const struct sockaddr * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (const struct sockaddr *)) ? 0 : sizeof (register_t) - sizeof (const struct sockaddr *)]; const struct sockaddr * datum; } be; } to;
 union { register_t pad; struct { socklen_t datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (socklen_t)) ? 0 : sizeof (register_t) - sizeof (socklen_t)]; socklen_t datum; } be; } tolen;
};
struct sys_shutdown_args {
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } s;
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } how;
};
struct sys_socketpair_args {
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } domain;
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } type;
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } protocol;
 union { register_t pad; struct { int * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int *)) ? 0 : sizeof (register_t) - sizeof (int *)]; int * datum; } be; } rsv;
};
struct sys_mkdir_args {
 union { register_t pad; struct { const char * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (const char *)) ? 0 : sizeof (register_t) - sizeof (const char *)]; const char * datum; } be; } path;
 union { register_t pad; struct { mode_t datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (mode_t)) ? 0 : sizeof (register_t) - sizeof (mode_t)]; mode_t datum; } be; } mode;
};
struct sys_rmdir_args {
 union { register_t pad; struct { const char * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (const char *)) ? 0 : sizeof (register_t) - sizeof (const char *)]; const char * datum; } be; } path;
};
struct sys_adjtime_args {
 union { register_t pad; struct { const struct timeval * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (const struct timeval *)) ? 0 : sizeof (register_t) - sizeof (const struct timeval *)]; const struct timeval * datum; } be; } delta;
 union { register_t pad; struct { struct timeval * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (struct timeval *)) ? 0 : sizeof (register_t) - sizeof (struct timeval *)]; struct timeval * datum; } be; } olddelta;
};
struct sys_getlogin_r_args {
 union { register_t pad; struct { char * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (char *)) ? 0 : sizeof (register_t) - sizeof (char *)]; char * datum; } be; } namebuf;
 union { register_t pad; struct { u_int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (u_int)) ? 0 : sizeof (register_t) - sizeof (u_int)]; u_int datum; } be; } namelen;
};
struct sys_quotactl_args {
 union { register_t pad; struct { const char * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (const char *)) ? 0 : sizeof (register_t) - sizeof (const char *)]; const char * datum; } be; } path;
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } cmd;
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } uid;
 union { register_t pad; struct { char * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (char *)) ? 0 : sizeof (register_t) - sizeof (char *)]; char * datum; } be; } arg;
};
struct sys_nfssvc_args {
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } flag;
 union { register_t pad; struct { void * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (void *)) ? 0 : sizeof (register_t) - sizeof (void *)]; void * datum; } be; } argp;
};
struct sys_getfh_args {
 union { register_t pad; struct { const char * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (const char *)) ? 0 : sizeof (register_t) - sizeof (const char *)]; const char * datum; } be; } fname;
 union { register_t pad; struct { fhandle_t * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (fhandle_t *)) ? 0 : sizeof (register_t) - sizeof (fhandle_t *)]; fhandle_t * datum; } be; } fhp;
};
struct sys_sysarch_args {
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } op;
 union { register_t pad; struct { void * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (void *)) ? 0 : sizeof (register_t) - sizeof (void *)]; void * datum; } be; } parms;
};
struct sys_pread_args {
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } fd;
 union { register_t pad; struct { void * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (void *)) ? 0 : sizeof (register_t) - sizeof (void *)]; void * datum; } be; } buf;
 union { register_t pad; struct { size_t datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (size_t)) ? 0 : sizeof (register_t) - sizeof (size_t)]; size_t datum; } be; } nbyte;
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } pad;
 union { register_t pad; struct { off_t datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (off_t)) ? 0 : sizeof (register_t) - sizeof (off_t)]; off_t datum; } be; } offset;
};
struct sys_pwrite_args {
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } fd;
 union { register_t pad; struct { const void * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (const void *)) ? 0 : sizeof (register_t) - sizeof (const void *)]; const void * datum; } be; } buf;
 union { register_t pad; struct { size_t datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (size_t)) ? 0 : sizeof (register_t) - sizeof (size_t)]; size_t datum; } be; } nbyte;
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } pad;
 union { register_t pad; struct { off_t datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (off_t)) ? 0 : sizeof (register_t) - sizeof (off_t)]; off_t datum; } be; } offset;
};
struct sys_setgid_args {
 union { register_t pad; struct { gid_t datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (gid_t)) ? 0 : sizeof (register_t) - sizeof (gid_t)]; gid_t datum; } be; } gid;
};
struct sys_setegid_args {
 union { register_t pad; struct { gid_t datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (gid_t)) ? 0 : sizeof (register_t) - sizeof (gid_t)]; gid_t datum; } be; } egid;
};
struct sys_seteuid_args {
 union { register_t pad; struct { uid_t datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (uid_t)) ? 0 : sizeof (register_t) - sizeof (uid_t)]; uid_t datum; } be; } euid;
};
struct sys_pathconf_args {
 union { register_t pad; struct { const char * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (const char *)) ? 0 : sizeof (register_t) - sizeof (const char *)]; const char * datum; } be; } path;
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } name;
};
struct sys_fpathconf_args {
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } fd;
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } name;
};
struct sys_swapctl_args {
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } cmd;
 union { register_t pad; struct { const void * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (const void *)) ? 0 : sizeof (register_t) - sizeof (const void *)]; const void * datum; } be; } arg;
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } misc;
};
struct sys_getrlimit_args {
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } which;
 union { register_t pad; struct { struct rlimit * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (struct rlimit *)) ? 0 : sizeof (register_t) - sizeof (struct rlimit *)]; struct rlimit * datum; } be; } rlp;
};
struct sys_setrlimit_args {
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } which;
 union { register_t pad; struct { const struct rlimit * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (const struct rlimit *)) ? 0 : sizeof (register_t) - sizeof (const struct rlimit *)]; const struct rlimit * datum; } be; } rlp;
};
struct sys_mmap_args {
 union { register_t pad; struct { void * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (void *)) ? 0 : sizeof (register_t) - sizeof (void *)]; void * datum; } be; } addr;
 union { register_t pad; struct { size_t datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (size_t)) ? 0 : sizeof (register_t) - sizeof (size_t)]; size_t datum; } be; } len;
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } prot;
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } flags;
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } fd;
 union { register_t pad; struct { long datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (long)) ? 0 : sizeof (register_t) - sizeof (long)]; long datum; } be; } pad;
 union { register_t pad; struct { off_t datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (off_t)) ? 0 : sizeof (register_t) - sizeof (off_t)]; off_t datum; } be; } pos;
};
struct sys_lseek_args {
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } fd;
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } pad;
 union { register_t pad; struct { off_t datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (off_t)) ? 0 : sizeof (register_t) - sizeof (off_t)]; off_t datum; } be; } offset;
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } whence;
};
struct sys_truncate_args {
 union { register_t pad; struct { const char * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (const char *)) ? 0 : sizeof (register_t) - sizeof (const char *)]; const char * datum; } be; } path;
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } pad;
 union { register_t pad; struct { off_t datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (off_t)) ? 0 : sizeof (register_t) - sizeof (off_t)]; off_t datum; } be; } length;
};
struct sys_ftruncate_args {
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } fd;
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } pad;
 union { register_t pad; struct { off_t datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (off_t)) ? 0 : sizeof (register_t) - sizeof (off_t)]; off_t datum; } be; } length;
};
struct sys_sysctl_args {
 union { register_t pad; struct { const int * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (const int *)) ? 0 : sizeof (register_t) - sizeof (const int *)]; const int * datum; } be; } name;
 union { register_t pad; struct { u_int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (u_int)) ? 0 : sizeof (register_t) - sizeof (u_int)]; u_int datum; } be; } namelen;
 union { register_t pad; struct { void * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (void *)) ? 0 : sizeof (register_t) - sizeof (void *)]; void * datum; } be; } old;
 union { register_t pad; struct { size_t * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (size_t *)) ? 0 : sizeof (register_t) - sizeof (size_t *)]; size_t * datum; } be; } oldlenp;
 union { register_t pad; struct { void * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (void *)) ? 0 : sizeof (register_t) - sizeof (void *)]; void * datum; } be; } new;
 union { register_t pad; struct { size_t datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (size_t)) ? 0 : sizeof (register_t) - sizeof (size_t)]; size_t datum; } be; } newlen;
};
struct sys_mlock_args {
 union { register_t pad; struct { const void * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (const void *)) ? 0 : sizeof (register_t) - sizeof (const void *)]; const void * datum; } be; } addr;
 union { register_t pad; struct { size_t datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (size_t)) ? 0 : sizeof (register_t) - sizeof (size_t)]; size_t datum; } be; } len;
};
struct sys_munlock_args {
 union { register_t pad; struct { const void * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (const void *)) ? 0 : sizeof (register_t) - sizeof (const void *)]; const void * datum; } be; } addr;
 union { register_t pad; struct { size_t datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (size_t)) ? 0 : sizeof (register_t) - sizeof (size_t)]; size_t datum; } be; } len;
};
struct sys_getpgid_args {
 union { register_t pad; struct { pid_t datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (pid_t)) ? 0 : sizeof (register_t) - sizeof (pid_t)]; pid_t datum; } be; } pid;
};
struct sys_utrace_args {
 union { register_t pad; struct { const char * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (const char *)) ? 0 : sizeof (register_t) - sizeof (const char *)]; const char * datum; } be; } label;
 union { register_t pad; struct { const void * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (const void *)) ? 0 : sizeof (register_t) - sizeof (const void *)]; const void * datum; } be; } addr;
 union { register_t pad; struct { size_t datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (size_t)) ? 0 : sizeof (register_t) - sizeof (size_t)]; size_t datum; } be; } len;
};
struct sys_semget_args {
 union { register_t pad; struct { key_t datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (key_t)) ? 0 : sizeof (register_t) - sizeof (key_t)]; key_t datum; } be; } key;
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } nsems;
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } semflg;
};
struct sys_msgget_args {
 union { register_t pad; struct { key_t datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (key_t)) ? 0 : sizeof (register_t) - sizeof (key_t)]; key_t datum; } be; } key;
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } msgflg;
};
struct sys_msgsnd_args {
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } msqid;
 union { register_t pad; struct { const void * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (const void *)) ? 0 : sizeof (register_t) - sizeof (const void *)]; const void * datum; } be; } msgp;
 union { register_t pad; struct { size_t datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (size_t)) ? 0 : sizeof (register_t) - sizeof (size_t)]; size_t datum; } be; } msgsz;
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } msgflg;
};
struct sys_msgrcv_args {
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } msqid;
 union { register_t pad; struct { void * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (void *)) ? 0 : sizeof (register_t) - sizeof (void *)]; void * datum; } be; } msgp;
 union { register_t pad; struct { size_t datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (size_t)) ? 0 : sizeof (register_t) - sizeof (size_t)]; size_t datum; } be; } msgsz;
 union { register_t pad; struct { long datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (long)) ? 0 : sizeof (register_t) - sizeof (long)]; long datum; } be; } msgtyp;
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } msgflg;
};
struct sys_shmat_args {
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } shmid;
 union { register_t pad; struct { const void * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (const void *)) ? 0 : sizeof (register_t) - sizeof (const void *)]; const void * datum; } be; } shmaddr;
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } shmflg;
};
struct sys_shmdt_args {
 union { register_t pad; struct { const void * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (const void *)) ? 0 : sizeof (register_t) - sizeof (const void *)]; const void * datum; } be; } shmaddr;
};
struct sys_minherit_args {
 union { register_t pad; struct { void * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (void *)) ? 0 : sizeof (register_t) - sizeof (void *)]; void * datum; } be; } addr;
 union { register_t pad; struct { size_t datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (size_t)) ? 0 : sizeof (register_t) - sizeof (size_t)]; size_t datum; } be; } len;
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } inherit;
};
struct sys_poll_args {
 union { register_t pad; struct { struct pollfd * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (struct pollfd *)) ? 0 : sizeof (register_t) - sizeof (struct pollfd *)]; struct pollfd * datum; } be; } fds;
 union { register_t pad; struct { u_int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (u_int)) ? 0 : sizeof (register_t) - sizeof (u_int)]; u_int datum; } be; } nfds;
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } timeout;
};
struct sys_lchown_args {
 union { register_t pad; struct { const char * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (const char *)) ? 0 : sizeof (register_t) - sizeof (const char *)]; const char * datum; } be; } path;
 union { register_t pad; struct { uid_t datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (uid_t)) ? 0 : sizeof (register_t) - sizeof (uid_t)]; uid_t datum; } be; } uid;
 union { register_t pad; struct { gid_t datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (gid_t)) ? 0 : sizeof (register_t) - sizeof (gid_t)]; gid_t datum; } be; } gid;
};
struct sys_getsid_args {
 union { register_t pad; struct { pid_t datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (pid_t)) ? 0 : sizeof (register_t) - sizeof (pid_t)]; pid_t datum; } be; } pid;
};
struct sys_msync_args {
 union { register_t pad; struct { void * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (void *)) ? 0 : sizeof (register_t) - sizeof (void *)]; void * datum; } be; } addr;
 union { register_t pad; struct { size_t datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (size_t)) ? 0 : sizeof (register_t) - sizeof (size_t)]; size_t datum; } be; } len;
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } flags;
};
struct sys_pipe_args {
 union { register_t pad; struct { int * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int *)) ? 0 : sizeof (register_t) - sizeof (int *)]; int * datum; } be; } fdp;
};
struct sys_fhopen_args {
 union { register_t pad; struct { const fhandle_t * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (const fhandle_t *)) ? 0 : sizeof (register_t) - sizeof (const fhandle_t *)]; const fhandle_t * datum; } be; } fhp;
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } flags;
};
struct sys_preadv_args {
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } fd;
 union { register_t pad; struct { const struct iovec * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (const struct iovec *)) ? 0 : sizeof (register_t) - sizeof (const struct iovec *)]; const struct iovec * datum; } be; } iovp;
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } iovcnt;
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } pad;
 union { register_t pad; struct { off_t datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (off_t)) ? 0 : sizeof (register_t) - sizeof (off_t)]; off_t datum; } be; } offset;
};
struct sys_pwritev_args {
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } fd;
 union { register_t pad; struct { const struct iovec * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (const struct iovec *)) ? 0 : sizeof (register_t) - sizeof (const struct iovec *)]; const struct iovec * datum; } be; } iovp;
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } iovcnt;
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } pad;
 union { register_t pad; struct { off_t datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (off_t)) ? 0 : sizeof (register_t) - sizeof (off_t)]; off_t datum; } be; } offset;
};
struct sys_mlockall_args {
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } flags;
};
struct sys_getresuid_args {
 union { register_t pad; struct { uid_t * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (uid_t *)) ? 0 : sizeof (register_t) - sizeof (uid_t *)]; uid_t * datum; } be; } ruid;
 union { register_t pad; struct { uid_t * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (uid_t *)) ? 0 : sizeof (register_t) - sizeof (uid_t *)]; uid_t * datum; } be; } euid;
 union { register_t pad; struct { uid_t * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (uid_t *)) ? 0 : sizeof (register_t) - sizeof (uid_t *)]; uid_t * datum; } be; } suid;
};
struct sys_setresuid_args {
 union { register_t pad; struct { uid_t datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (uid_t)) ? 0 : sizeof (register_t) - sizeof (uid_t)]; uid_t datum; } be; } ruid;
 union { register_t pad; struct { uid_t datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (uid_t)) ? 0 : sizeof (register_t) - sizeof (uid_t)]; uid_t datum; } be; } euid;
 union { register_t pad; struct { uid_t datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (uid_t)) ? 0 : sizeof (register_t) - sizeof (uid_t)]; uid_t datum; } be; } suid;
};
struct sys_getresgid_args {
 union { register_t pad; struct { gid_t * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (gid_t *)) ? 0 : sizeof (register_t) - sizeof (gid_t *)]; gid_t * datum; } be; } rgid;
 union { register_t pad; struct { gid_t * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (gid_t *)) ? 0 : sizeof (register_t) - sizeof (gid_t *)]; gid_t * datum; } be; } egid;
 union { register_t pad; struct { gid_t * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (gid_t *)) ? 0 : sizeof (register_t) - sizeof (gid_t *)]; gid_t * datum; } be; } sgid;
};
struct sys_setresgid_args {
 union { register_t pad; struct { gid_t datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (gid_t)) ? 0 : sizeof (register_t) - sizeof (gid_t)]; gid_t datum; } be; } rgid;
 union { register_t pad; struct { gid_t datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (gid_t)) ? 0 : sizeof (register_t) - sizeof (gid_t)]; gid_t datum; } be; } egid;
 union { register_t pad; struct { gid_t datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (gid_t)) ? 0 : sizeof (register_t) - sizeof (gid_t)]; gid_t datum; } be; } sgid;
};
struct sys_mquery_args {
 union { register_t pad; struct { void * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (void *)) ? 0 : sizeof (register_t) - sizeof (void *)]; void * datum; } be; } addr;
 union { register_t pad; struct { size_t datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (size_t)) ? 0 : sizeof (register_t) - sizeof (size_t)]; size_t datum; } be; } len;
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } prot;
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } flags;
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } fd;
 union { register_t pad; struct { long datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (long)) ? 0 : sizeof (register_t) - sizeof (long)]; long datum; } be; } pad;
 union { register_t pad; struct { off_t datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (off_t)) ? 0 : sizeof (register_t) - sizeof (off_t)]; off_t datum; } be; } pos;
};
struct sys_closefrom_args {
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } fd;
};
struct sys_sigaltstack_args {
 union { register_t pad; struct { const struct sigaltstack * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (const struct sigaltstack *)) ? 0 : sizeof (register_t) - sizeof (const struct sigaltstack *)]; const struct sigaltstack * datum; } be; } nss;
 union { register_t pad; struct { struct sigaltstack * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (struct sigaltstack *)) ? 0 : sizeof (register_t) - sizeof (struct sigaltstack *)]; struct sigaltstack * datum; } be; } oss;
};
struct sys_shmget_args {
 union { register_t pad; struct { key_t datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (key_t)) ? 0 : sizeof (register_t) - sizeof (key_t)]; key_t datum; } be; } key;
 union { register_t pad; struct { size_t datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (size_t)) ? 0 : sizeof (register_t) - sizeof (size_t)]; size_t datum; } be; } size;
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } shmflg;
};
struct sys_semop_args {
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } semid;
 union { register_t pad; struct { struct sembuf * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (struct sembuf *)) ? 0 : sizeof (register_t) - sizeof (struct sembuf *)]; struct sembuf * datum; } be; } sops;
 union { register_t pad; struct { size_t datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (size_t)) ? 0 : sizeof (register_t) - sizeof (size_t)]; size_t datum; } be; } nsops;
};
struct sys_fhstat_args {
 union { register_t pad; struct { const fhandle_t * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (const fhandle_t *)) ? 0 : sizeof (register_t) - sizeof (const fhandle_t *)]; const fhandle_t * datum; } be; } fhp;
 union { register_t pad; struct { struct stat * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (struct stat *)) ? 0 : sizeof (register_t) - sizeof (struct stat *)]; struct stat * datum; } be; } sb;
};
struct sys___semctl_args {
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } semid;
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } semnum;
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } cmd;
 union { register_t pad; struct { union semun * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (union semun *)) ? 0 : sizeof (register_t) - sizeof (union semun *)]; union semun * datum; } be; } arg;
};
struct sys_shmctl_args {
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } shmid;
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } cmd;
 union { register_t pad; struct { struct shmid_ds * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (struct shmid_ds *)) ? 0 : sizeof (register_t) - sizeof (struct shmid_ds *)]; struct shmid_ds * datum; } be; } buf;
};
struct sys_msgctl_args {
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } msqid;
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } cmd;
 union { register_t pad; struct { struct msqid_ds * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (struct msqid_ds *)) ? 0 : sizeof (register_t) - sizeof (struct msqid_ds *)]; struct msqid_ds * datum; } be; } buf;
};
struct sys___thrwakeup_args {
 union { register_t pad; struct { const volatile void * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (const volatile void *)) ? 0 : sizeof (register_t) - sizeof (const volatile void *)]; const volatile void * datum; } be; } ident;
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } n;
};
struct sys___threxit_args {
 union { register_t pad; struct { pid_t * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (pid_t *)) ? 0 : sizeof (register_t) - sizeof (pid_t *)]; pid_t * datum; } be; } notdead;
};
struct sys___thrsigdivert_args {
 union { register_t pad; struct { sigset_t datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (sigset_t)) ? 0 : sizeof (register_t) - sizeof (sigset_t)]; sigset_t datum; } be; } sigmask;
 union { register_t pad; struct { siginfo_t * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (siginfo_t *)) ? 0 : sizeof (register_t) - sizeof (siginfo_t *)]; siginfo_t * datum; } be; } info;
 union { register_t pad; struct { const struct timespec * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (const struct timespec *)) ? 0 : sizeof (register_t) - sizeof (const struct timespec *)]; const struct timespec * datum; } be; } timeout;
};
struct sys___getcwd_args {
 union { register_t pad; struct { char * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (char *)) ? 0 : sizeof (register_t) - sizeof (char *)]; char * datum; } be; } buf;
 union { register_t pad; struct { size_t datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (size_t)) ? 0 : sizeof (register_t) - sizeof (size_t)]; size_t datum; } be; } len;
};
struct sys_adjfreq_args {
 union { register_t pad; struct { const int64_t * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (const int64_t *)) ? 0 : sizeof (register_t) - sizeof (const int64_t *)]; const int64_t * datum; } be; } freq;
 union { register_t pad; struct { int64_t * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int64_t *)) ? 0 : sizeof (register_t) - sizeof (int64_t *)]; int64_t * datum; } be; } oldfreq;
};
struct sys_setrtable_args {
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } rtableid;
};
struct sys_faccessat_args {
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } fd;
 union { register_t pad; struct { const char * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (const char *)) ? 0 : sizeof (register_t) - sizeof (const char *)]; const char * datum; } be; } path;
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } amode;
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } flag;
};
struct sys_fchmodat_args {
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } fd;
 union { register_t pad; struct { const char * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (const char *)) ? 0 : sizeof (register_t) - sizeof (const char *)]; const char * datum; } be; } path;
 union { register_t pad; struct { mode_t datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (mode_t)) ? 0 : sizeof (register_t) - sizeof (mode_t)]; mode_t datum; } be; } mode;
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } flag;
};
struct sys_fchownat_args {
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } fd;
 union { register_t pad; struct { const char * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (const char *)) ? 0 : sizeof (register_t) - sizeof (const char *)]; const char * datum; } be; } path;
 union { register_t pad; struct { uid_t datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (uid_t)) ? 0 : sizeof (register_t) - sizeof (uid_t)]; uid_t datum; } be; } uid;
 union { register_t pad; struct { gid_t datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (gid_t)) ? 0 : sizeof (register_t) - sizeof (gid_t)]; gid_t datum; } be; } gid;
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } flag;
};
struct sys_linkat_args {
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } fd1;
 union { register_t pad; struct { const char * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (const char *)) ? 0 : sizeof (register_t) - sizeof (const char *)]; const char * datum; } be; } path1;
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } fd2;
 union { register_t pad; struct { const char * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (const char *)) ? 0 : sizeof (register_t) - sizeof (const char *)]; const char * datum; } be; } path2;
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } flag;
};
struct sys_mkdirat_args {
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } fd;
 union { register_t pad; struct { const char * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (const char *)) ? 0 : sizeof (register_t) - sizeof (const char *)]; const char * datum; } be; } path;
 union { register_t pad; struct { mode_t datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (mode_t)) ? 0 : sizeof (register_t) - sizeof (mode_t)]; mode_t datum; } be; } mode;
};
struct sys_mkfifoat_args {
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } fd;
 union { register_t pad; struct { const char * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (const char *)) ? 0 : sizeof (register_t) - sizeof (const char *)]; const char * datum; } be; } path;
 union { register_t pad; struct { mode_t datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (mode_t)) ? 0 : sizeof (register_t) - sizeof (mode_t)]; mode_t datum; } be; } mode;
};
struct sys_mknodat_args {
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } fd;
 union { register_t pad; struct { const char * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (const char *)) ? 0 : sizeof (register_t) - sizeof (const char *)]; const char * datum; } be; } path;
 union { register_t pad; struct { mode_t datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (mode_t)) ? 0 : sizeof (register_t) - sizeof (mode_t)]; mode_t datum; } be; } mode;
 union { register_t pad; struct { dev_t datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (dev_t)) ? 0 : sizeof (register_t) - sizeof (dev_t)]; dev_t datum; } be; } dev;
};
struct sys_openat_args {
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } fd;
 union { register_t pad; struct { const char * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (const char *)) ? 0 : sizeof (register_t) - sizeof (const char *)]; const char * datum; } be; } path;
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } flags;
 union { register_t pad; struct { mode_t datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (mode_t)) ? 0 : sizeof (register_t) - sizeof (mode_t)]; mode_t datum; } be; } mode;
};
struct sys_readlinkat_args {
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } fd;
 union { register_t pad; struct { const char * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (const char *)) ? 0 : sizeof (register_t) - sizeof (const char *)]; const char * datum; } be; } path;
 union { register_t pad; struct { char * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (char *)) ? 0 : sizeof (register_t) - sizeof (char *)]; char * datum; } be; } buf;
 union { register_t pad; struct { size_t datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (size_t)) ? 0 : sizeof (register_t) - sizeof (size_t)]; size_t datum; } be; } count;
};
struct sys_renameat_args {
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } fromfd;
 union { register_t pad; struct { const char * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (const char *)) ? 0 : sizeof (register_t) - sizeof (const char *)]; const char * datum; } be; } from;
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } tofd;
 union { register_t pad; struct { const char * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (const char *)) ? 0 : sizeof (register_t) - sizeof (const char *)]; const char * datum; } be; } to;
};
struct sys_symlinkat_args {
 union { register_t pad; struct { const char * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (const char *)) ? 0 : sizeof (register_t) - sizeof (const char *)]; const char * datum; } be; } path;
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } fd;
 union { register_t pad; struct { const char * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (const char *)) ? 0 : sizeof (register_t) - sizeof (const char *)]; const char * datum; } be; } link;
};
struct sys_unlinkat_args {
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } fd;
 union { register_t pad; struct { const char * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (const char *)) ? 0 : sizeof (register_t) - sizeof (const char *)]; const char * datum; } be; } path;
 union { register_t pad; struct { int datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (int)) ? 0 : sizeof (register_t) - sizeof (int)]; int datum; } be; } flag;
};
struct sys___set_tcb_args {
 union { register_t pad; struct { void * datum; } le; struct { int8_t pad[ (sizeof (register_t) < sizeof (void *)) ? 0 : sizeof (register_t) - sizeof (void *)]; void * datum; } be; } tcb;
};
int sys_exit(struct proc *, void *, register_t *);
int sys_fork(struct proc *, void *, register_t *);
int sys_read(struct proc *, void *, register_t *);
int sys_write(struct proc *, void *, register_t *);
int sys_open(struct proc *, void *, register_t *);
int sys_close(struct proc *, void *, register_t *);
int sys_getentropy(struct proc *, void *, register_t *);
int sys___tfork(struct proc *, void *, register_t *);
int sys_link(struct proc *, void *, register_t *);
int sys_unlink(struct proc *, void *, register_t *);
int sys_wait4(struct proc *, void *, register_t *);
int sys_chdir(struct proc *, void *, register_t *);
int sys_fchdir(struct proc *, void *, register_t *);
int sys_mknod(struct proc *, void *, register_t *);
int sys_chmod(struct proc *, void *, register_t *);
int sys_chown(struct proc *, void *, register_t *);
int sys_obreak(struct proc *, void *, register_t *);
int sys_getdtablecount(struct proc *, void *, register_t *);
int sys_getrusage(struct proc *, void *, register_t *);
int sys_getpid(struct proc *, void *, register_t *);
int sys_mount(struct proc *, void *, register_t *);
int sys_unmount(struct proc *, void *, register_t *);
int sys_setuid(struct proc *, void *, register_t *);
int sys_getuid(struct proc *, void *, register_t *);
int sys_geteuid(struct proc *, void *, register_t *);
int sys_ptrace(struct proc *, void *, register_t *);
int sys_recvmsg(struct proc *, void *, register_t *);
int sys_sendmsg(struct proc *, void *, register_t *);
int sys_recvfrom(struct proc *, void *, register_t *);
int sys_accept(struct proc *, void *, register_t *);
int sys_getpeername(struct proc *, void *, register_t *);
int sys_getsockname(struct proc *, void *, register_t *);
int sys_access(struct proc *, void *, register_t *);
int sys_chflags(struct proc *, void *, register_t *);
int sys_fchflags(struct proc *, void *, register_t *);
int sys_sync(struct proc *, void *, register_t *);
int sys_stat(struct proc *, void *, register_t *);
int sys_getppid(struct proc *, void *, register_t *);
int sys_lstat(struct proc *, void *, register_t *);
int sys_dup(struct proc *, void *, register_t *);
int sys_fstatat(struct proc *, void *, register_t *);
int sys_getegid(struct proc *, void *, register_t *);
int sys_profil(struct proc *, void *, register_t *);
int sys_ktrace(struct proc *, void *, register_t *);
int sys_sigaction(struct proc *, void *, register_t *);
int sys_getgid(struct proc *, void *, register_t *);
int sys_sigprocmask(struct proc *, void *, register_t *);
int sys_setlogin(struct proc *, void *, register_t *);
int sys_acct(struct proc *, void *, register_t *);
int sys_sigpending(struct proc *, void *, register_t *);
int sys_fstat(struct proc *, void *, register_t *);
int sys_ioctl(struct proc *, void *, register_t *);
int sys_reboot(struct proc *, void *, register_t *);
int sys_revoke(struct proc *, void *, register_t *);
int sys_symlink(struct proc *, void *, register_t *);
int sys_readlink(struct proc *, void *, register_t *);
int sys_execve(struct proc *, void *, register_t *);
int sys_umask(struct proc *, void *, register_t *);
int sys_chroot(struct proc *, void *, register_t *);
int sys_getfsstat(struct proc *, void *, register_t *);
int sys_statfs(struct proc *, void *, register_t *);
int sys_fstatfs(struct proc *, void *, register_t *);
int sys_fhstatfs(struct proc *, void *, register_t *);
int sys_vfork(struct proc *, void *, register_t *);
int sys_gettimeofday(struct proc *, void *, register_t *);
int sys_settimeofday(struct proc *, void *, register_t *);
int sys_setitimer(struct proc *, void *, register_t *);
int sys_getitimer(struct proc *, void *, register_t *);
int sys_select(struct proc *, void *, register_t *);
int sys_kevent(struct proc *, void *, register_t *);
int sys_munmap(struct proc *, void *, register_t *);
int sys_mprotect(struct proc *, void *, register_t *);
int sys_madvise(struct proc *, void *, register_t *);
int sys_utimes(struct proc *, void *, register_t *);
int sys_futimes(struct proc *, void *, register_t *);
int sys_mincore(struct proc *, void *, register_t *);
int sys_getgroups(struct proc *, void *, register_t *);
int sys_setgroups(struct proc *, void *, register_t *);
int sys_getpgrp(struct proc *, void *, register_t *);
int sys_setpgid(struct proc *, void *, register_t *);
int sys_futex(struct proc *, void *, register_t *);
int sys_utimensat(struct proc *, void *, register_t *);
int sys_futimens(struct proc *, void *, register_t *);
int sys_kbind(struct proc *, void *, register_t *);
int sys_clock_gettime(struct proc *, void *, register_t *);
int sys_clock_settime(struct proc *, void *, register_t *);
int sys_clock_getres(struct proc *, void *, register_t *);
int sys_dup2(struct proc *, void *, register_t *);
int sys_nanosleep(struct proc *, void *, register_t *);
int sys_fcntl(struct proc *, void *, register_t *);
int sys_accept4(struct proc *, void *, register_t *);
int sys___thrsleep(struct proc *, void *, register_t *);
int sys_fsync(struct proc *, void *, register_t *);
int sys_setpriority(struct proc *, void *, register_t *);
int sys_socket(struct proc *, void *, register_t *);
int sys_connect(struct proc *, void *, register_t *);
int sys_getdents(struct proc *, void *, register_t *);
int sys_getpriority(struct proc *, void *, register_t *);
int sys_pipe2(struct proc *, void *, register_t *);
int sys_dup3(struct proc *, void *, register_t *);
int sys_sigreturn(struct proc *, void *, register_t *);
int sys_bind(struct proc *, void *, register_t *);
int sys_setsockopt(struct proc *, void *, register_t *);
int sys_listen(struct proc *, void *, register_t *);
int sys_chflagsat(struct proc *, void *, register_t *);
int sys_pledge(struct proc *, void *, register_t *);
int sys_ppoll(struct proc *, void *, register_t *);
int sys_pselect(struct proc *, void *, register_t *);
int sys_sigsuspend(struct proc *, void *, register_t *);
int sys_sendsyslog(struct proc *, void *, register_t *);
int sys_fktrace(struct proc *, void *, register_t *);
int sys_getsockopt(struct proc *, void *, register_t *);
int sys_thrkill(struct proc *, void *, register_t *);
int sys_readv(struct proc *, void *, register_t *);
int sys_writev(struct proc *, void *, register_t *);
int sys_kill(struct proc *, void *, register_t *);
int sys_fchown(struct proc *, void *, register_t *);
int sys_fchmod(struct proc *, void *, register_t *);
int sys_setreuid(struct proc *, void *, register_t *);
int sys_setregid(struct proc *, void *, register_t *);
int sys_rename(struct proc *, void *, register_t *);
int sys_flock(struct proc *, void *, register_t *);
int sys_mkfifo(struct proc *, void *, register_t *);
int sys_sendto(struct proc *, void *, register_t *);
int sys_shutdown(struct proc *, void *, register_t *);
int sys_socketpair(struct proc *, void *, register_t *);
int sys_mkdir(struct proc *, void *, register_t *);
int sys_rmdir(struct proc *, void *, register_t *);
int sys_adjtime(struct proc *, void *, register_t *);
int sys_getlogin_r(struct proc *, void *, register_t *);
int sys_setsid(struct proc *, void *, register_t *);
int sys_quotactl(struct proc *, void *, register_t *);
int sys_nfssvc(struct proc *, void *, register_t *);
int sys_getfh(struct proc *, void *, register_t *);
int sys_sysarch(struct proc *, void *, register_t *);
int sys_pread(struct proc *, void *, register_t *);
int sys_pwrite(struct proc *, void *, register_t *);
int sys_setgid(struct proc *, void *, register_t *);
int sys_setegid(struct proc *, void *, register_t *);
int sys_seteuid(struct proc *, void *, register_t *);
int sys_pathconf(struct proc *, void *, register_t *);
int sys_fpathconf(struct proc *, void *, register_t *);
int sys_swapctl(struct proc *, void *, register_t *);
int sys_getrlimit(struct proc *, void *, register_t *);
int sys_setrlimit(struct proc *, void *, register_t *);
int sys_mmap(struct proc *, void *, register_t *);
int sys_lseek(struct proc *, void *, register_t *);
int sys_truncate(struct proc *, void *, register_t *);
int sys_ftruncate(struct proc *, void *, register_t *);
int sys_sysctl(struct proc *, void *, register_t *);
int sys_mlock(struct proc *, void *, register_t *);
int sys_munlock(struct proc *, void *, register_t *);
int sys_getpgid(struct proc *, void *, register_t *);
int sys_utrace(struct proc *, void *, register_t *);
int sys_semget(struct proc *, void *, register_t *);
int sys_msgget(struct proc *, void *, register_t *);
int sys_msgsnd(struct proc *, void *, register_t *);
int sys_msgrcv(struct proc *, void *, register_t *);
int sys_shmat(struct proc *, void *, register_t *);
int sys_shmdt(struct proc *, void *, register_t *);
int sys_minherit(struct proc *, void *, register_t *);
int sys_poll(struct proc *, void *, register_t *);
int sys_issetugid(struct proc *, void *, register_t *);
int sys_lchown(struct proc *, void *, register_t *);
int sys_getsid(struct proc *, void *, register_t *);
int sys_msync(struct proc *, void *, register_t *);
int sys_pipe(struct proc *, void *, register_t *);
int sys_fhopen(struct proc *, void *, register_t *);
int sys_preadv(struct proc *, void *, register_t *);
int sys_pwritev(struct proc *, void *, register_t *);
int sys_kqueue(struct proc *, void *, register_t *);
int sys_mlockall(struct proc *, void *, register_t *);
int sys_munlockall(struct proc *, void *, register_t *);
int sys_getresuid(struct proc *, void *, register_t *);
int sys_setresuid(struct proc *, void *, register_t *);
int sys_getresgid(struct proc *, void *, register_t *);
int sys_setresgid(struct proc *, void *, register_t *);
int sys_mquery(struct proc *, void *, register_t *);
int sys_closefrom(struct proc *, void *, register_t *);
int sys_sigaltstack(struct proc *, void *, register_t *);
int sys_shmget(struct proc *, void *, register_t *);
int sys_semop(struct proc *, void *, register_t *);
int sys_fhstat(struct proc *, void *, register_t *);
int sys___semctl(struct proc *, void *, register_t *);
int sys_shmctl(struct proc *, void *, register_t *);
int sys_msgctl(struct proc *, void *, register_t *);
int sys_sched_yield(struct proc *, void *, register_t *);
int sys_getthrid(struct proc *, void *, register_t *);
int sys___thrwakeup(struct proc *, void *, register_t *);
int sys___threxit(struct proc *, void *, register_t *);
int sys___thrsigdivert(struct proc *, void *, register_t *);
int sys___getcwd(struct proc *, void *, register_t *);
int sys_adjfreq(struct proc *, void *, register_t *);
int sys_setrtable(struct proc *, void *, register_t *);
int sys_getrtable(struct proc *, void *, register_t *);
int sys_faccessat(struct proc *, void *, register_t *);
int sys_fchmodat(struct proc *, void *, register_t *);
int sys_fchownat(struct proc *, void *, register_t *);
int sys_linkat(struct proc *, void *, register_t *);
int sys_mkdirat(struct proc *, void *, register_t *);
int sys_mkfifoat(struct proc *, void *, register_t *);
int sys_mknodat(struct proc *, void *, register_t *);
int sys_openat(struct proc *, void *, register_t *);
int sys_readlinkat(struct proc *, void *, register_t *);
int sys_renameat(struct proc *, void *, register_t *);
int sys_symlinkat(struct proc *, void *, register_t *);
int sys_unlinkat(struct proc *, void *, register_t *);
int sys___set_tcb(struct proc *, void *, register_t *);
int sys___get_tcb(struct proc *, void *, register_t *);
int64_t adjtimedelta;
int
settime(struct timespec *ts)
{
 struct timespec now;
 adjtimedelta = 0;
 if (ts->tv_sec > 0xffffffffU - 365*24*60*60) {
  printf("denied attempt to set clock forward to %lld\n",
      (long long)ts->tv_sec);
  return (1);
 }
 nanotime(&now);
 if (securelevel > 1 && (((ts)->tv_sec == (&now)->tv_sec) ? ((ts)->tv_nsec < (&now)->tv_nsec) : ((ts)->tv_sec < (&now)->tv_sec))) {
  printf("denied attempt to set clock back %lld seconds\n",
      (long long)now.tv_sec - ts->tv_sec);
  return (1);
 }
 tc_setrealtimeclock(ts);
 resettodr();
 return (0);
}
int
clock_gettime(struct proc *p, clockid_t clock_id, struct timespec *tp)
{
 struct bintime bt;
 struct proc *q;
 switch (clock_id) {
 case 0:
  nanotime(tp);
  break;
 case 5:
  binuptime(&bt);
  bintime_sub(&bt, &naptime);
  bintime2timespec(&bt, tp);
  break;
 case 3:
  nanouptime(tp);
  break;
 case 2:
  nanouptime(tp);
  do { (tp)->tv_sec = (tp)->tv_sec - (&(__curcpu->ci_self)->ci_schedstate.spc_runtime)->tv_sec; (tp)->tv_nsec = (tp)->tv_nsec - (&(__curcpu->ci_self)->ci_schedstate.spc_runtime)->tv_nsec; if ((tp)->tv_nsec < 0) { (tp)->tv_sec--; (tp)->tv_nsec += 1000000000L; } } while (0);
  do { (tp)->tv_sec = (tp)->tv_sec + (&p->p_p->ps_tu.tu_runtime)->tv_sec; (tp)->tv_nsec = (tp)->tv_nsec + (&p->p_p->ps_tu.tu_runtime)->tv_nsec; if ((tp)->tv_nsec >= 1000000000L) { (tp)->tv_sec++; (tp)->tv_nsec -= 1000000000L; } } while (0);
  do { (tp)->tv_sec = (tp)->tv_sec + (&p->p_rtime)->tv_sec; (tp)->tv_nsec = (tp)->tv_nsec + (&p->p_rtime)->tv_nsec; if ((tp)->tv_nsec >= 1000000000L) { (tp)->tv_sec++; (tp)->tv_nsec -= 1000000000L; } } while (0);
  break;
 case 4:
  nanouptime(tp);
  do { (tp)->tv_sec = (tp)->tv_sec - (&(__curcpu->ci_self)->ci_schedstate.spc_runtime)->tv_sec; (tp)->tv_nsec = (tp)->tv_nsec - (&(__curcpu->ci_self)->ci_schedstate.spc_runtime)->tv_nsec; if ((tp)->tv_nsec < 0) { (tp)->tv_sec--; (tp)->tv_nsec += 1000000000L; } } while (0);
  do { (tp)->tv_sec = (tp)->tv_sec + (&p->p_tu.tu_runtime)->tv_sec; (tp)->tv_nsec = (tp)->tv_nsec + (&p->p_tu.tu_runtime)->tv_nsec; if ((tp)->tv_nsec >= 1000000000L) { (tp)->tv_sec++; (tp)->tv_nsec -= 1000000000L; } } while (0);
  do { (tp)->tv_sec = (tp)->tv_sec + (&p->p_rtime)->tv_sec; (tp)->tv_nsec = (tp)->tv_nsec + (&p->p_rtime)->tv_nsec; if ((tp)->tv_nsec >= 1000000000L) { (tp)->tv_sec++; (tp)->tv_nsec -= 1000000000L; } } while (0);
  break;
 default:
  if (((clock_id) & 0xfff) == 4) {
   q = tfind((((clock_id) >> 12) & 0xfffff) - 100000);
   if (q == ((void *)0) || q->p_p != p->p_p)
    return (3);
   *tp = q->p_tu.tu_runtime;
  } else
   return (22);
 }
 return (0);
}
int
sys_clock_gettime(struct proc *p, void *v, register_t *retval)
{
 struct sys_clock_gettime_args *uap = v;
 struct timespec ats;
 int error;
 __builtin_memset((&ats), (0), (sizeof(ats)));
 if ((error = clock_gettime(p, ((uap)->clock_id.be.datum), &ats)) != 0)
  return (error);
 error = copyout(&ats, ((uap)->tp.be.datum), sizeof(ats));
 if (error == 0 && ((p)->p_p->ps_traceflag & (1<<(8)) && ((p)->p_flag & 0x00000001) == 0)) {
  _kernel_lock("/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../kern/kern_time.c", 171);
  ktrstruct((p), "abstimespec", (&ats), sizeof(struct timespec));
  _kernel_unlock();
 }
 return (error);
}
int
sys_clock_settime(struct proc *p, void *v, register_t *retval)
{
 struct sys_clock_settime_args *uap = v;
 struct timespec ats;
 clockid_t clock_id;
 int error;
 if ((error = suser(p, 0)) != 0)
  return (error);
 if ((error = copyin(((uap)->tp.be.datum), &ats, sizeof(ats))) != 0)
  return (error);
 clock_id = ((uap)->clock_id.be.datum);
 switch (clock_id) {
 case 0:
  if ((error = settime(&ats)) != 0)
   return (error);
  break;
 default:
  return (22);
 }
 return (0);
}
int
sys_clock_getres(struct proc *p, void *v, register_t *retval)
{
 struct sys_clock_getres_args *uap = v;
 clockid_t clock_id;
 struct timespec ts;
 struct proc *q;
 int error = 0;
 __builtin_memset((&ts), (0), (sizeof(ts)));
 clock_id = ((uap)->clock_id.be.datum);
 switch (clock_id) {
 case 0:
 case 3:
 case 5:
 case 2:
 case 4:
  ts.tv_sec = 0;
  ts.tv_nsec = 1000000000 / hz;
  break;
 default:
  if (((clock_id) & 0xfff) == 4) {
   q = tfind((((clock_id) >> 12) & 0xfffff) - 100000);
   if (q == ((void *)0) || q->p_p != p->p_p)
    return (3);
   ts.tv_sec = 0;
   ts.tv_nsec = 1000000000 / hz;
  } else
   return (22);
 }
 if (((uap)->tp.be.datum)) {
  error = copyout(&ts, ((uap)->tp.be.datum), sizeof (ts));
  if (error == 0 && ((p)->p_p->ps_traceflag & (1<<(8)) && ((p)->p_flag & 0x00000001) == 0)) {
   _kernel_lock("/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../kern/kern_time.c", 248);
   ktrstruct((p), "reltimespec", (&ts), sizeof(struct timespec));
   _kernel_unlock();
  }
 }
 return error;
}
int
sys_nanosleep(struct proc *p, void *v, register_t *retval)
{
 static int nanowait;
 struct sys_nanosleep_args *uap = v;
 struct timespec rqt, rmt;
 struct timespec sts, ets;
 struct timespec *rmtp;
 struct timeval tv;
 int error, error1;
 rmtp = ((uap)->rmtp.be.datum);
 error = copyin(((uap)->rqtp.be.datum), &rqt, sizeof(struct timespec));
 if (error)
  return (error);
        if (((p)->p_p->ps_traceflag & (1<<(8)) && ((p)->p_flag & 0x00000001) == 0)) {
  _kernel_lock("/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../kern/kern_time.c", 278);
  ktrstruct((p), "reltimespec", (&rqt), sizeof(struct timespec));
  _kernel_unlock();
 }
 { (&tv)->tv_sec = (&rqt)->tv_sec; (&tv)->tv_usec = (&rqt)->tv_nsec / 1000; };
 if (itimerfix(&tv))
  return (22);
 if (rmtp)
  getnanouptime(&sts);
 error = tsleep(&nanowait, 32 | 0x100, "nanosleep",
     (((1)>(tvtohz(&tv)))?(1):(tvtohz(&tv))));
 if (error == -1)
  error = 4;
 if (error == 35)
  error = 0;
 if (rmtp) {
  getnanouptime(&ets);
  __builtin_memset((&rmt), (0), (sizeof(rmt)));
  do { (&sts)->tv_sec = (&ets)->tv_sec - (&sts)->tv_sec; (&sts)->tv_nsec = (&ets)->tv_nsec - (&sts)->tv_nsec; if ((&sts)->tv_nsec < 0) { (&sts)->tv_sec--; (&sts)->tv_nsec += 1000000000L; } } while (0);
  do { (&rmt)->tv_sec = (&rqt)->tv_sec - (&sts)->tv_sec; (&rmt)->tv_nsec = (&rqt)->tv_nsec - (&sts)->tv_nsec; if ((&rmt)->tv_nsec < 0) { (&rmt)->tv_sec--; (&rmt)->tv_nsec += 1000000000L; } } while (0);
  if (rmt.tv_sec < 0)
   (&rmt)->tv_sec = (&rmt)->tv_nsec = 0;
  error1 = copyout(&rmt, rmtp, sizeof(rmt));
  if (error1 != 0)
   error = error1;
  if (error1 == 0 && ((p)->p_p->ps_traceflag & (1<<(8)) && ((p)->p_flag & 0x00000001) == 0)) {
   _kernel_lock("/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../kern/kern_time.c", 313);
   ktrstruct((p), "reltimespec", (&rmt), sizeof(struct timespec));
   _kernel_unlock();
  }
 }
 return error;
}
int
sys_gettimeofday(struct proc *p, void *v, register_t *retval)
{
 struct sys_gettimeofday_args *uap = v;
 struct timeval atv;
 struct timeval *tp;
 struct timezone *tzp;
 int error = 0;
 tp = ((uap)->tp.be.datum);
 tzp = ((uap)->tzp.be.datum);
 if (tp) {
  __builtin_memset((&atv), (0), (sizeof(atv)));
  microtime(&atv);
  if ((error = copyout(&atv, tp, sizeof (atv))))
   return (error);
  if (((p)->p_p->ps_traceflag & (1<<(8)) && ((p)->p_flag & 0x00000001) == 0)) {
   _kernel_lock("/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../kern/kern_time.c", 345);
   ktrstruct((p), "abstimeval", (&atv), sizeof(struct timeval));
   _kernel_unlock();
  }
 }
 if (tzp)
  error = copyout(&tz, tzp, sizeof (tz));
 return (error);
}
int
sys_settimeofday(struct proc *p, void *v, register_t *retval)
{
 struct sys_settimeofday_args *uap = v;
 struct timezone atz;
 struct timeval atv;
 const struct timeval *tv;
 const struct timezone *tzp;
 int error;
 tv = ((uap)->tv.be.datum);
 tzp = ((uap)->tzp.be.datum);
 if ((error = suser(p, 0)))
  return (error);
 if (tv && (error = copyin(tv, &atv, sizeof(atv))))
  return (error);
 if (tzp && (error = copyin(tzp, &atz, sizeof(atz))))
  return (error);
 if (tv) {
  struct timespec ts;
  { (&ts)->tv_sec = (&atv)->tv_sec; (&ts)->tv_nsec = (&atv)->tv_usec * 1000; };
  if ((error = settime(&ts)) != 0)
   return (error);
 }
 if (tzp)
  tz = atz;
 return (0);
}
int
sys_adjfreq(struct proc *p, void *v, register_t *retval)
{
 struct sys_adjfreq_args *uap = v;
 int error;
 int64_t f;
 const int64_t *freq = ((uap)->freq.be.datum);
 int64_t *oldfreq = ((uap)->oldfreq.be.datum);
 if (oldfreq) {
  if ((error = tc_adjfreq(&f, ((void *)0))))
   return (error);
  if ((error = copyout(&f, oldfreq, sizeof(f))))
   return (error);
 }
 if (freq) {
  if ((error = suser(p, 0)))
   return (error);
  if ((error = copyin(freq, &f, sizeof(f))))
   return (error);
  if ((error = tc_adjfreq(((void *)0), &f)))
   return (error);
 }
 return (0);
}
int
sys_adjtime(struct proc *p, void *v, register_t *retval)
{
 struct sys_adjtime_args *uap = v;
 const struct timeval *delta = ((uap)->delta.be.datum);
 struct timeval *olddelta = ((uap)->olddelta.be.datum);
 struct timeval atv;
 int error;
 error = pledge_adjtime(p, delta);
 if (error)
  return error;
 if (olddelta) {
  __builtin_memset((&atv), (0), (sizeof(atv)));
  atv.tv_sec = adjtimedelta / 1000000;
  atv.tv_usec = adjtimedelta % 1000000;
  if (atv.tv_usec < 0) {
   atv.tv_usec += 1000000;
   atv.tv_sec--;
  }
  if ((error = copyout(&atv, olddelta, sizeof(struct timeval))))
   return (error);
 }
 if (delta) {
  if ((error = suser(p, 0)))
   return (error);
  if ((error = copyin(delta, &atv, sizeof(struct timeval))))
   return (error);
  adjtimedelta = (int64_t)atv.tv_sec * 1000000 + atv.tv_usec;
 }
 return (0);
}
struct mutex itimer_mtx = { ((void *)0), ((((10)) > 0 && ((10)) < 12) ? 12 : ((10))), 0 };
int
sys_getitimer(struct proc *p, void *v, register_t *retval)
{
 struct sys_getitimer_args *uap = v;
 struct itimerval aitv;
 int which;
 which = ((uap)->which.be.datum);
 if (which < 0 || which > 2)
  return (22);
 __builtin_memset((&aitv), (0), (sizeof(aitv)));
 __mtx_enter(&itimer_mtx );
 aitv.it_interval.tv_sec = p->p_p->ps_timer[which].it_interval.tv_sec;
 aitv.it_interval.tv_usec = p->p_p->ps_timer[which].it_interval.tv_usec;
 aitv.it_value.tv_sec = p->p_p->ps_timer[which].it_value.tv_sec;
 aitv.it_value.tv_usec = p->p_p->ps_timer[which].it_value.tv_usec;
 __mtx_leave(&itimer_mtx );
 if (which == 0) {
  struct timeval now;
  getmicrouptime(&now);
  if (((&aitv.it_value)->tv_sec || (&aitv.it_value)->tv_usec)) {
   if ((((&aitv.it_value)->tv_sec == (&now)->tv_sec) ? ((&aitv.it_value)->tv_usec < (&now)->tv_usec) : ((&aitv.it_value)->tv_sec < (&now)->tv_sec)))
    (&aitv.it_value)->tv_sec = (&aitv.it_value)->tv_usec = 0;
   else
    do { (&aitv.it_value)->tv_sec = (&aitv.it_value)->tv_sec - (&now)->tv_sec; (&aitv.it_value)->tv_usec = (&aitv.it_value)->tv_usec - (&now)->tv_usec; if ((&aitv.it_value)->tv_usec < 0) { (&aitv.it_value)->tv_sec--; (&aitv.it_value)->tv_usec += 1000000; } } while (0);
  }
 }
 return (copyout(&aitv, ((uap)->itv.be.datum), sizeof (struct itimerval)));
}
int
sys_setitimer(struct proc *p, void *v, register_t *retval)
{
 struct sys_setitimer_args *uap = v;
 struct sys_getitimer_args getargs;
 struct itimerval aitv;
 const struct itimerval *itvp;
 struct itimerval *oitv;
 struct process *pr = p->p_p;
 int error;
 int timo;
 int which;
 which = ((uap)->which.be.datum);
 oitv = ((uap)->oitv.be.datum);
 if (which < 0 || which > 2)
  return (22);
 itvp = ((uap)->itv.be.datum);
 if (itvp && (error = copyin((void *)itvp, (void *)&aitv,
     sizeof(struct itimerval))))
  return (error);
 if (oitv != ((void *)0)) {
  ((&getargs)->which.be.datum) = which;
  ((&getargs)->itv.be.datum) = oitv;
  if ((error = sys_getitimer(p, &getargs, retval)))
   return (error);
 }
 if (itvp == 0)
  return (0);
 if (itimerfix(&aitv.it_value) || itimerfix(&aitv.it_interval))
  return (22);
 if (which == 0) {
  struct timeval ctv;
  timeout_del(&pr->ps_realit_to);
  getmicrouptime(&ctv);
  if (((&aitv.it_value)->tv_sec || (&aitv.it_value)->tv_usec)) {
   timo = tvtohz(&aitv.it_value);
   timeout_add(&pr->ps_realit_to, timo);
   do { (&aitv.it_value)->tv_sec = (&aitv.it_value)->tv_sec + (&ctv)->tv_sec; (&aitv.it_value)->tv_usec = (&aitv.it_value)->tv_usec + (&ctv)->tv_usec; if ((&aitv.it_value)->tv_usec >= 1000000) { (&aitv.it_value)->tv_sec++; (&aitv.it_value)->tv_usec -= 1000000; } } while (0);
  }
  pr->ps_timer[0] = aitv;
 } else {
  itimerround(&aitv.it_interval);
  __mtx_enter(&itimer_mtx );
  pr->ps_timer[which] = aitv;
  __mtx_leave(&itimer_mtx );
 }
 return (0);
}
void
realitexpire(void *arg)
{
 struct process *pr = arg;
 struct itimerval *tp = &pr->ps_timer[0];
 ptsignal((pr)->ps_mainproc, (14), SPROCESS);
 if (!((&tp->it_interval)->tv_sec || (&tp->it_interval)->tv_usec)) {
  (&tp->it_value)->tv_sec = (&tp->it_value)->tv_usec = 0;
  return;
 }
 for (;;) {
  struct timeval ctv, ntv;
  int timo;
  do { (&tp->it_value)->tv_sec = (&tp->it_value)->tv_sec + (&tp->it_interval)->tv_sec; (&tp->it_value)->tv_usec = (&tp->it_value)->tv_usec + (&tp->it_interval)->tv_usec; if ((&tp->it_value)->tv_usec >= 1000000) { (&tp->it_value)->tv_sec++; (&tp->it_value)->tv_usec -= 1000000; } } while (0);
  getmicrouptime(&ctv);
  if ((((&tp->it_value)->tv_sec == (&ctv)->tv_sec) ? ((&tp->it_value)->tv_usec > (&ctv)->tv_usec) : ((&tp->it_value)->tv_sec > (&ctv)->tv_sec))) {
   ntv = tp->it_value;
   do { (&ntv)->tv_sec = (&ntv)->tv_sec - (&ctv)->tv_sec; (&ntv)->tv_usec = (&ntv)->tv_usec - (&ctv)->tv_usec; if ((&ntv)->tv_usec < 0) { (&ntv)->tv_sec--; (&ntv)->tv_usec += 1000000; } } while (0);
   timo = tvtohz(&ntv) - 1;
   if (timo <= 0)
    timo = 1;
   if ((pr->ps_flags & 0x00000008) == 0)
    timeout_add(&pr->ps_realit_to, timo);
   return;
  }
 }
}
int
timespecfix(struct timespec *ts)
{
 if (ts->tv_sec < 0 ||
     ts->tv_nsec < 0 || ts->tv_nsec >= 1000000000)
  return (22);
 if (ts->tv_sec > 100000000)
  ts->tv_sec = 100000000;
 return (0);
}
int
itimerfix(struct timeval *tv)
{
 if (tv->tv_sec < 0 || tv->tv_sec > 100000000 ||
     tv->tv_usec < 0 || tv->tv_usec >= 1000000)
  return (22);
 if (tv->tv_sec == 0 && tv->tv_usec != 0 && tv->tv_usec < tick)
  tv->tv_usec = tick;
 return (0);
}
void
itimerround(struct timeval *tv)
{
 if (tv->tv_sec == 0 && tv->tv_usec != 0 && tv->tv_usec < tick)
  tv->tv_usec = tick;
}
int
itimerdecr(struct itimerval *itp, int usec)
{
 __mtx_enter(&itimer_mtx );
 if (itp->it_value.tv_usec < usec) {
  if (itp->it_value.tv_sec == 0) {
   usec -= itp->it_value.tv_usec;
   goto expire;
  }
  itp->it_value.tv_usec += 1000000;
  itp->it_value.tv_sec--;
 }
 itp->it_value.tv_usec -= usec;
 usec = 0;
 if (((&itp->it_value)->tv_sec || (&itp->it_value)->tv_usec)) {
  __mtx_leave(&itimer_mtx );
  return (1);
 }
expire:
 if (((&itp->it_interval)->tv_sec || (&itp->it_interval)->tv_usec)) {
  itp->it_value = itp->it_interval;
  itp->it_value.tv_usec -= usec;
  if (itp->it_value.tv_usec < 0) {
   itp->it_value.tv_usec += 1000000;
   itp->it_value.tv_sec--;
  }
 } else
  itp->it_value.tv_usec = 0;
 __mtx_leave(&itimer_mtx );
 return (0);
}
int
ratecheck(struct timeval *lasttime, const struct timeval *mininterval)
{
 struct timeval tv, delta;
 int rv = 0;
 getmicrouptime(&tv);
 do { (&delta)->tv_sec = (&tv)->tv_sec - (lasttime)->tv_sec; (&delta)->tv_usec = (&tv)->tv_usec - (lasttime)->tv_usec; if ((&delta)->tv_usec < 0) { (&delta)->tv_sec--; (&delta)->tv_usec += 1000000; } } while (0);
 if ((((&delta)->tv_sec == (mininterval)->tv_sec) ? ((&delta)->tv_usec >= (mininterval)->tv_usec) : ((&delta)->tv_sec >= (mininterval)->tv_sec)) ||
     (lasttime->tv_sec == 0 && lasttime->tv_usec == 0)) {
  *lasttime = tv;
  rv = 1;
 }
 return (rv);
}
int
ppsratecheck(struct timeval *lasttime, int *curpps, int maxpps)
{
 struct timeval tv, delta;
 int rv;
 microuptime(&tv);
 do { (&delta)->tv_sec = (&tv)->tv_sec - (lasttime)->tv_sec; (&delta)->tv_usec = (&tv)->tv_usec - (lasttime)->tv_usec; if ((&delta)->tv_usec < 0) { (&delta)->tv_sec--; (&delta)->tv_usec += 1000000; } } while (0);
 if (maxpps == 0)
  rv = 0;
 else if ((lasttime->tv_sec == 0 && lasttime->tv_usec == 0) ||
     delta.tv_sec >= 1) {
  *lasttime = tv;
  *curpps = 0;
  rv = 1;
 } else if (maxpps < 0)
  rv = 1;
 else if (*curpps < maxpps)
  rv = 1;
 else
  rv = 0;
 if (*curpps + 1 > *curpps)
  *curpps = *curpps + 1;
 return (rv);
}
void periodic_resettodr(void *);
void perform_resettodr(void *);
struct timeout resettodr_to = { { ((void *)0), ((void *)0) }, (periodic_resettodr), (((void *)0)), 0, 4 };
struct task resettodr_task = {{ ((void *)0), ((void *)0) }, (perform_resettodr), (((void *)0)), 0 };
void
periodic_resettodr(void *arg __attribute__((__unused__)))
{
 task_add(systq, &resettodr_task);
}
void
perform_resettodr(void *arg __attribute__((__unused__)))
{
 resettodr();
 timeout_add_sec(&resettodr_to, 1800);
}
void
start_periodic_resettodr(void)
{
 timeout_add_sec(&resettodr_to, 1800);
}
void
stop_periodic_resettodr(void)
{
 timeout_del(&resettodr_to);
 task_del(systq, &resettodr_task);
}
