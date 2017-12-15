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
struct mutex {
 volatile void *mtx_owner;
 int mtx_wantipl;
 int mtx_oldipl;
};
void __mtx_init(struct mutex *, int);
void __mtx_enter(struct mutex *);
int __mtx_enter_try(struct mutex *);
void __mtx_leave(struct mutex *);
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
struct scsi_generic {
 u_int8_t opcode;
 u_int8_t bytes[15];
};
struct scsi_test_unit_ready {
 u_int8_t opcode;
 u_int8_t byte2;
 u_int8_t unused[3];
 u_int8_t control;
};
struct scsi_send_diag {
 u_int8_t opcode;
 u_int8_t byte2;
 u_int8_t unused[1];
 u_int8_t paramlen[2];
 u_int8_t control;
};
struct scsi_sense {
 u_int8_t opcode;
 u_int8_t byte2;
 u_int8_t unused[2];
 u_int8_t length;
 u_int8_t control;
};
struct scsi_inquiry {
 u_int8_t opcode;
 u_int8_t flags;
 u_int8_t pagecode;
 u_int8_t length[2];
 u_int8_t control;
};
struct scsi_mode_sense {
 u_int8_t opcode;
 u_int8_t byte2;
 u_int8_t page;
 u_int8_t unused;
 u_int8_t length;
 u_int8_t control;
};
struct scsi_mode_sense_big {
 u_int8_t opcode;
 u_int8_t byte2;
 u_int8_t page;
 u_int8_t unused[4];
 u_int8_t length[2];
 u_int8_t control;
};
struct scsi_mode_select {
 u_int8_t opcode;
 u_int8_t byte2;
 u_int8_t unused[2];
 u_int8_t length;
 u_int8_t control;
};
struct scsi_mode_select_big {
 u_int8_t opcode;
 u_int8_t byte2;
 u_int8_t unused[5];
 u_int8_t length[2];
 u_int8_t control;
};
struct scsi_reserve {
 u_int8_t opcode;
 u_int8_t byte2;
 u_int8_t unused[2];
 u_int8_t length;
 u_int8_t control;
};
struct scsi_release {
 u_int8_t opcode;
 u_int8_t byte2;
 u_int8_t unused[2];
 u_int8_t length;
 u_int8_t control;
};
struct scsi_prevent {
 u_int8_t opcode;
 u_int8_t byte2;
 u_int8_t unused[2];
 u_int8_t how;
 u_int8_t control;
};
struct scsi_report_luns {
 u_int8_t opcode;
 u_int8_t unused;
 u_int8_t selectreport;
 u_int8_t unused2[3];
 u_int8_t length[4];
 u_int8_t unused4;
 u_int8_t control;
};
struct scsi_inquiry_data {
 u_int8_t device;
 u_int8_t dev_qual2;
 u_int8_t version;
 u_int8_t response_format;
 u_int8_t additional_length;
 u_int8_t unused[2];
 u_int8_t flags;
 char vendor[8];
 char product[16];
 char revision[4];
 u_int8_t extra[20];
 u_int8_t flags2;
 u_int8_t reserved;
};
struct scsi_vpd_hdr {
 u_int8_t device;
 u_int8_t page_code;
 u_int8_t page_length[2];
};
struct scsi_vpd_serial {
 struct scsi_vpd_hdr hdr;
 char serial[32];
};
struct scsi_vpd_devid_hdr {
 u_int8_t pi_code;
 u_int8_t flags;
 u_int8_t reserved;
 u_int8_t len;
};
struct scsi_vpd_ata {
 struct scsi_vpd_hdr hdr;
 u_int8_t _reserved1[4];
 u_int8_t sat_vendor[8];
 u_int8_t sat_product[16];
 u_int8_t sat_revision[4];
 u_int8_t device_signature[20];
 u_int8_t command_code;
 u_int8_t _reserved2[3];
 u_int8_t identify[512];
};
struct scsi_sense_data_unextended {
       u_int8_t error_code;
       u_int8_t block[3];
};
struct scsi_sense_data {
       u_int8_t error_code;
       u_int8_t segment;
       u_int8_t flags;
       u_int8_t info[4];
       u_int8_t extra_len;
       u_int8_t cmd_spec_info[4];
       u_int8_t add_sense_code;
       u_int8_t add_sense_code_qual;
       u_int8_t fru;
       u_int8_t sense_key_spec_1;
       u_int8_t sense_key_spec_2;
       u_int8_t sense_key_spec_3;
};
struct scsi_blk_desc {
 u_int8_t density;
 u_int8_t nblocks[3];
 u_int8_t reserved;
 u_int8_t blklen[3];
};
struct scsi_direct_blk_desc {
 u_int8_t nblocks[4];
 u_int8_t density;
 u_int8_t blklen[3];
};
struct scsi_blk_desc_big {
 u_int8_t nblocks[8];
 u_int8_t density;
 u_int8_t reserved[3];
 u_int8_t blklen[4];
};
struct scsi_mode_header {
 u_int8_t data_length;
 u_int8_t medium_type;
 u_int8_t dev_spec;
 u_int8_t blk_desc_len;
};
struct scsi_mode_header_big {
 u_int8_t data_length[2];
 u_int8_t medium_type;
 u_int8_t dev_spec;
 u_int8_t reserved;
 u_int8_t reserved2;
 u_int8_t blk_desc_len[2];
};
union scsi_mode_sense_buf {
 struct scsi_mode_header hdr;
 struct scsi_mode_header_big hdr_big;
 u_char buf[254];
} __attribute__((__packed__));
struct scsi_report_luns_data {
 u_int8_t length[4];
 u_int8_t reserved[4];
 struct {
  u_int8_t lundata[8];
 } luns[256];
};
struct scsi_ata_passthru_12 {
 u_int8_t opcode;
 u_int8_t count_proto;
 u_int8_t flags;
 u_int8_t features;
 u_int8_t sector_count;
 u_int8_t lba_low;
 u_int8_t lba_mid;
 u_int8_t lba_high;
 u_int8_t device;
 u_int8_t command;
 u_int8_t _reserved;
 u_int8_t control;
};
struct scsi_ata_passthru_16 {
 u_int8_t opcode;
 u_int8_t count_proto;
 u_int8_t flags;
 u_int8_t features[2];
 u_int8_t sector_count[2];
 u_int8_t lba_low[2];
 u_int8_t lba_mid[2];
 u_int8_t lba_high[2];
 u_int8_t device;
 u_int8_t command;
 u_int8_t control;
};
struct scsi_status_iu_header {
       u_int8_t reserved[2];
       u_int8_t flags;
       u_int8_t status;
       u_int8_t sense_length[4];
       u_int8_t pkt_failures_length[4];
 u_int8_t data[1];
};
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
extern u_int32_t scsidebug_buses, scsidebug_targets, scsidebug_luns;
extern int scsidebug_level;
static __inline void _lto2b(u_int32_t val, u_int8_t *bytes);
static __inline void _lto3b(u_int32_t val, u_int8_t *bytes);
static __inline void _lto4b(u_int32_t val, u_int8_t *bytes);
static __inline void _lto8b(u_int64_t val, u_int8_t *bytes);
static __inline u_int32_t _2btol(u_int8_t *bytes);
static __inline u_int32_t _3btol(u_int8_t *bytes);
static __inline u_int32_t _4btol(u_int8_t *bytes);
static __inline u_int64_t _5btol(u_int8_t *bytes);
static __inline u_int64_t _8btol(u_int8_t *bytes);
static __inline void
_lto2b(u_int32_t val, u_int8_t *bytes)
{
 bytes[0] = (val >> 8) & 0xff;
 bytes[1] = val & 0xff;
}
static __inline void
_lto3b(u_int32_t val, u_int8_t *bytes)
{
 bytes[0] = (val >> 16) & 0xff;
 bytes[1] = (val >> 8) & 0xff;
 bytes[2] = val & 0xff;
}
static __inline void
_lto4b(u_int32_t val, u_int8_t *bytes)
{
 bytes[0] = (val >> 24) & 0xff;
 bytes[1] = (val >> 16) & 0xff;
 bytes[2] = (val >> 8) & 0xff;
 bytes[3] = val & 0xff;
}
static __inline void
_lto8b(u_int64_t val, u_int8_t *bytes)
{
 bytes[0] = (val >> 56) & 0xff;
 bytes[1] = (val >> 48) & 0xff;
 bytes[2] = (val >> 40) & 0xff;
 bytes[3] = (val >> 32) & 0xff;
 bytes[4] = (val >> 24) & 0xff;
 bytes[5] = (val >> 16) & 0xff;
 bytes[6] = (val >> 8) & 0xff;
 bytes[7] = val & 0xff;
}
static __inline u_int32_t
_2btol(u_int8_t *bytes)
{
 u_int32_t rv;
 rv = (bytes[0] << 8) | bytes[1];
 return (rv);
}
static __inline u_int32_t
_3btol(u_int8_t *bytes)
{
 u_int32_t rv;
 rv = (bytes[0] << 16) | (bytes[1] << 8) | bytes[2];
 return (rv);
}
static __inline u_int32_t
_4btol(u_int8_t *bytes)
{
 u_int32_t rv;
 rv = (bytes[0] << 24) | (bytes[1] << 16) |
     (bytes[2] << 8) | bytes[3];
 return (rv);
}
static __inline u_int64_t
_5btol(u_int8_t *bytes)
{
 u_int64_t rv;
 rv = ((u_int64_t)bytes[0] << 32) |
      ((u_int64_t)bytes[1] << 24) |
      ((u_int64_t)bytes[2] << 16) |
      ((u_int64_t)bytes[3] << 8) |
      (u_int64_t)bytes[4];
 return (rv);
}
static __inline u_int64_t
_8btol(u_int8_t *bytes)
{
 u_int64_t rv;
 rv = (((u_int64_t)bytes[0]) << 56) |
     (((u_int64_t)bytes[1]) << 48) |
     (((u_int64_t)bytes[2]) << 40) |
     (((u_int64_t)bytes[3]) << 32) |
     (((u_int64_t)bytes[4]) << 24) |
     (((u_int64_t)bytes[5]) << 16) |
     (((u_int64_t)bytes[6]) << 8) |
     ((u_int64_t)bytes[7]);
 return (rv);
}
struct devid {
 u_int8_t d_type;
 u_int8_t d_flags;
 u_int8_t d_refcount;
 u_int8_t d_len;
};
struct devid * devid_alloc(u_int8_t, u_int8_t, u_int8_t, u_int8_t *);
struct devid * devid_copy(struct devid *);
void devid_free(struct devid *);
struct scsi_xfer;
struct scsi_link;
struct scsibus_softc;
extern int scsi_autoconf;
struct scsi_adapter {
 void (*scsi_cmd)(struct scsi_xfer *);
 void (*scsi_minphys)(struct buf *, struct scsi_link *);
 int (*dev_probe)(struct scsi_link *);
 void (*dev_free)(struct scsi_link *);
 int (*ioctl)(struct scsi_link *, u_long, caddr_t, int);
};
struct scsi_iopool;
struct scsi_iohandler {
 struct { struct scsi_iohandler *tqe_next; struct scsi_iohandler **tqe_prev; } q_entry;
 u_int q_state;
 struct scsi_iopool *pool;
 void (*handler)(void *, void *);
 void *cookie;
};
struct scsi_runq { struct scsi_iohandler *tqh_first; struct scsi_iohandler **tqh_last; };
struct scsi_iopool {
 void *iocookie;
 void *(*io_get)(void *);
 void (*io_put)(void *, void *);
 struct scsi_runq queue;
 u_int running;
 struct mutex mtx;
};
struct scsi_xshandler {
 struct scsi_iohandler ioh;
 struct scsi_link *link;
 void (*handler)(struct scsi_xfer *);
};
struct scsi_link {
 struct { struct scsi_link *sle_next; } bus_list;
 u_int state;
 u_int8_t scsibus;
 u_int8_t luns;
 u_int16_t target;
 u_int16_t lun;
 u_int16_t openings;
 u_int64_t port_wwn;
 u_int64_t node_wwn;
 u_int16_t adapter_target;
 u_int16_t adapter_buswidth;
 u_int16_t flags;
 u_int16_t quirks;
 int (*interpret_sense)(struct scsi_xfer *);
 void *device_softc;
 struct scsi_adapter *adapter;
 void *adapter_softc;
 struct scsibus_softc *bus;
 struct scsi_inquiry_data inqdata;
 struct devid *id;
 struct scsi_runq queue;
 u_int running;
 u_short pending;
 struct scsi_iopool *pool;
};
int scsiprint(void *, const char *);
struct scsi_inquiry_pattern {
 u_int8_t type;
 int removable;
 char *vendor;
 char *product;
 char *revision;
};
struct scsibus_attach_args {
 struct scsi_link *saa_sc_link;
};
struct scsibus_softc {
 struct device sc_dev;
 struct scsi_link *adapter_link;
 struct { struct scsi_link *slh_first; } sc_link_list;
 u_int16_t sc_buswidth;
};
struct scsi_attach_args {
 struct scsi_link *sa_sc_link;
 struct scsi_inquiry_data *sa_inqbuf;
};
struct scsi_xfer {
 struct { struct scsi_xfer *sqe_next; } xfer_list;
 int flags;
 struct scsi_link *sc_link;
 int retries;
 int timeout;
 struct scsi_generic *cmd;
 int cmdlen;
 u_char *data;
 int datalen;
 size_t resid;
 int error;
 struct buf *bp;
 struct scsi_sense_data sense;
 u_int8_t status;
 struct scsi_generic cmdstore;
 struct timeout stimeout;
 void *cookie;
 void (*done)(struct scsi_xfer *);
 void *io;
};
struct scsi_xfer_list { struct scsi_xfer *sqh_first; struct scsi_xfer **sqh_last; };
const void *scsi_inqmatch(struct scsi_inquiry_data *, const void *, int,
     int, int *);
void scsi_init(void);
int scsi_test_unit_ready(struct scsi_link *, int, int);
int scsi_inquire(struct scsi_link *, struct scsi_inquiry_data *, int);
int scsi_inquire_vpd(struct scsi_link *, void *, u_int, u_int8_t, int);
void scsi_init_inquiry(struct scsi_xfer *, u_int8_t, u_int8_t,
     void *, size_t);
int scsi_prevent(struct scsi_link *, int, int);
int scsi_start(struct scsi_link *, int, int);
int scsi_mode_sense(struct scsi_link *, int, int, struct scsi_mode_header *,
     size_t, int, int);
int scsi_mode_sense_big(struct scsi_link *, int, int,
     struct scsi_mode_header_big *, size_t, int, int);
void * scsi_mode_sense_page(struct scsi_mode_header *, int);
void * scsi_mode_sense_big_page(struct scsi_mode_header_big *, int);
int scsi_do_mode_sense(struct scsi_link *, int,
     union scsi_mode_sense_buf *, void **, u_int32_t *, u_int64_t *,
     u_int32_t *, int, int, int *);
int scsi_mode_select(struct scsi_link *, int, struct scsi_mode_header *,
     int, int);
int scsi_mode_select_big(struct scsi_link *, int,
     struct scsi_mode_header_big *, int, int);
void scsi_done(struct scsi_xfer *);
int scsi_do_ioctl(struct scsi_link *, u_long, caddr_t, int);
void sc_print_addr(struct scsi_link *);
int scsi_report_luns(struct scsi_link *, int,
     struct scsi_report_luns_data *, u_int32_t, int, int);
void scsi_minphys(struct buf *, struct scsi_link *);
int scsi_interpret_sense(struct scsi_xfer *);
void scsi_xs_show(struct scsi_xfer *);
void scsi_print_sense(struct scsi_xfer *);
void scsi_show_mem(u_char *, int);
void scsi_strvis(u_char *, u_char *, int);
int scsi_delay(struct scsi_xfer *, int);
int scsi_probe(struct scsibus_softc *, int, int);
int scsi_probe_bus(struct scsibus_softc *);
int scsi_probe_target(struct scsibus_softc *, int);
int scsi_probe_lun(struct scsibus_softc *, int, int);
int scsi_detach(struct scsibus_softc *, int, int, int);
int scsi_detach_bus(struct scsibus_softc *, int);
int scsi_detach_target(struct scsibus_softc *, int, int);
int scsi_detach_lun(struct scsibus_softc *, int, int, int);
int scsi_req_probe(struct scsibus_softc *, int, int);
int scsi_req_detach(struct scsibus_softc *, int, int, int);
int scsi_activate(struct scsibus_softc *, int, int, int);
struct scsi_link * scsi_get_link(struct scsibus_softc *, int, int);
void scsi_add_link(struct scsibus_softc *,
       struct scsi_link *);
void scsi_remove_link(struct scsibus_softc *,
       struct scsi_link *);
extern const u_int8_t version_to_spc[];
struct scsi_xfer * scsi_xs_get(struct scsi_link *, int);
void scsi_xs_exec(struct scsi_xfer *);
int scsi_xs_sync(struct scsi_xfer *);
void scsi_xs_put(struct scsi_xfer *);
void scsi_iopool_init(struct scsi_iopool *, void *,
     void *(*)(void *), void (*)(void *, void *));
void scsi_iopool_run(struct scsi_iopool *);
void scsi_iopool_destroy(struct scsi_iopool *);
void scsi_link_shutdown(struct scsi_link *);
void * scsi_io_get(struct scsi_iopool *, int);
void scsi_io_put(struct scsi_iopool *, void *);
void * scsi_default_get(void *);
void scsi_default_put(void *, void *);
void scsi_ioh_set(struct scsi_iohandler *, struct scsi_iopool *,
     void (*)(void *, void *), void *);
int scsi_ioh_add(struct scsi_iohandler *);
int scsi_ioh_del(struct scsi_iohandler *);
void scsi_xsh_set(struct scsi_xshandler *, struct scsi_link *,
     void (*)(struct scsi_xfer *));
int scsi_xsh_add(struct scsi_xshandler *);
int scsi_xsh_del(struct scsi_xshandler *);
int scsi_pending_start(struct mutex *, u_int *);
int scsi_pending_finish(struct mutex *, u_int *);
void scsi_cmd_rw_decode(struct scsi_generic *, u_int64_t *, u_int32_t *);
struct ncr53c9x_ecb {
 struct { struct ncr53c9x_ecb *tqe_next; struct ncr53c9x_ecb **tqe_prev; } chain;
 struct scsi_xfer *xs;
 int flags;
 int timeout;
 struct timeout to;
 struct {
  u_char msg[3];
  struct scsi_generic cmd;
 } cmd;
 char *daddr;
 int clen;
 int dleft;
 u_char stat;
 u_char tag[2];
 u_char pad[1];
};
struct ncr53c9x_linfo {
 int64_t lun;
 struct { struct ncr53c9x_linfo *le_next; struct ncr53c9x_linfo **le_prev; } link;
 time_t last_used;
 unsigned char used;
 unsigned char avail;
 unsigned char busy;
 struct ncr53c9x_ecb *untagged;
 struct ncr53c9x_ecb *queued[256];
};
struct ncr53c9x_tinfo {
 int cmds;
 int dconns;
 int touts;
 int perrs;
 int senses;
 u_char flags;
 u_char period;
 u_char offset;
 u_char cfg3;
 u_char nextag;
 u_char width;
 struct lun_list { struct ncr53c9x_linfo *lh_first; } luns;
 struct ncr53c9x_linfo *lun[8];
};
extern int ncr53c9x_debug;
struct ncr53c9x_softc;
struct ncr53c9x_glue {
 u_char (*gl_read_reg)(struct ncr53c9x_softc *, int);
 void (*gl_write_reg)(struct ncr53c9x_softc *, int, u_char);
 int (*gl_dma_isintr)(struct ncr53c9x_softc *);
 void (*gl_dma_reset)(struct ncr53c9x_softc *);
 int (*gl_dma_intr)(struct ncr53c9x_softc *);
 int (*gl_dma_setup)(struct ncr53c9x_softc *,
      caddr_t *, size_t *, int, size_t *);
 void (*gl_dma_go)(struct ncr53c9x_softc *);
 void (*gl_dma_stop)(struct ncr53c9x_softc *);
 int (*gl_dma_isactive)(struct ncr53c9x_softc *);
 void (*gl_clear_latched_intr)(struct ncr53c9x_softc *);
};
struct ncr53c9x_softc {
 struct device sc_dev;
 struct scsi_link sc_link;
 struct ncr53c9x_glue *sc_glue;
 int sc_ntarg;
 int sc_cfflags;
 u_char sc_cfg1;
 u_char sc_cfg2;
 u_char sc_cfg3;
 u_char sc_cfg3_fscsi;
 u_char sc_cfg4;
 u_char sc_cfg5;
 u_char sc_ccf;
 u_char sc_timeout;
 u_char sc_espintr;
 u_char sc_espstat;
 u_char sc_espstep;
 u_char sc_espstat2;
 u_char sc_espfflags;
 struct ecb_list { struct ncr53c9x_ecb *tqh_first; struct ncr53c9x_ecb **tqh_last; } ready_list;
 struct ncr53c9x_ecb *sc_nexus;
 struct ncr53c9x_tinfo sc_tinfo[16];
 caddr_t sc_dp;
 ssize_t sc_dleft;
 int sc_phase;
 int sc_prevphase;
 u_char sc_state;
 u_char sc_flags;
 u_char sc_selid;
 u_char sc_lastcmd;
 u_short sc_msgify;
 u_short sc_msgout;
 u_short sc_msgpriq;
 u_short sc_msgoutq;
 u_char *sc_omess;
 caddr_t sc_omp;
 size_t sc_omlen;
 u_char *sc_imess;
 caddr_t sc_imp;
 size_t sc_imlen;
 caddr_t sc_cmdp;
 size_t sc_cmdlen;
 int sc_freq;
 int sc_id;
 int sc_rev;
 int sc_features;
 int sc_minsync;
 int sc_maxxfer;
};
void ncr53c9x_attach(struct ncr53c9x_softc *);
void ncr53c9x_reset(struct ncr53c9x_softc *);
int ncr53c9x_intr(void *);
void ncr53c9x_init(struct ncr53c9x_softc *, int);
int ncr53c9x_debug = 0;
           void ncr53c9x_readregs(struct ncr53c9x_softc *);
           void ncr53c9x_select(struct ncr53c9x_softc *,
         struct ncr53c9x_ecb *);
           int ncr53c9x_reselect(struct ncr53c9x_softc *, int, int, int);
           void ncr53c9x_scsi_reset(struct ncr53c9x_softc *);
           int ncr53c9x_poll(struct ncr53c9x_softc *,
         struct scsi_xfer *, int);
           void ncr53c9x_sched(struct ncr53c9x_softc *);
           void ncr53c9x_done(struct ncr53c9x_softc *,
         struct ncr53c9x_ecb *);
           void ncr53c9x_msgin(struct ncr53c9x_softc *);
           void ncr53c9x_msgout(struct ncr53c9x_softc *);
           void ncr53c9x_timeout(void *arg);
           void ncr53c9x_abort(struct ncr53c9x_softc *,
         struct ncr53c9x_ecb *);
           void ncr53c9x_dequeue(struct ncr53c9x_softc *,
         struct ncr53c9x_ecb *);
void ncr53c9x_sense(struct ncr53c9x_softc *,
         struct ncr53c9x_ecb *);
void ncr53c9x_free_ecb(void *, void *);
void *ncr53c9x_get_ecb(void *);
static inline int ncr53c9x_stp2cpb(struct ncr53c9x_softc *, int);
static inline void ncr53c9x_setsync(struct ncr53c9x_softc *,
         struct ncr53c9x_tinfo *);
static struct ncr53c9x_linfo *ncr53c9x_lunsearch(struct ncr53c9x_tinfo *,
    int64_t lun);
static void ncr53c9x_wrfifo(struct ncr53c9x_softc *, u_char *, int);
static int ncr53c9x_rdfifo(struct ncr53c9x_softc *, int);
static int ecb_pool_initialized = 0;
static struct scsi_iopool ecb_iopool;
static struct pool ecb_pool;
struct cfdriver esp_cd = {
 ((void *)0), "esp", DV_DULL
};
void ncr53c9x_scsi_cmd(struct scsi_xfer *);
int ncr53c9x_scsi_probe(struct scsi_link *);
void ncr53c9x_scsi_free(struct scsi_link *);
struct scsi_adapter ncr53c9x_adapter = {
 ncr53c9x_scsi_cmd,
 scsi_minphys,
 ncr53c9x_scsi_probe,
 ncr53c9x_scsi_free,
 ((void *)0)
};
const char *ncr53c9x_variant_names[] = {
 "ESP100",
 "ESP100A",
 "ESP200",
 "NCR53C94",
 "NCR53C96",
 "ESP406",
 "FAS408",
 "FAS216",
 "AM53C974",
 "FAS366/HME",
};
static struct ncr53c9x_linfo *
ncr53c9x_lunsearch(ti, lun)
 struct ncr53c9x_tinfo *ti;
 int64_t lun;
{
 struct ncr53c9x_linfo *li;
 for((li) = ((&ti->luns)->lh_first); (li)!= ((void *)0); (li) = ((li)->link.le_next))
     if (li->lun == lun)
      return (li);
 return (((void *)0));
}
void
ncr53c9x_attach(sc)
 struct ncr53c9x_softc *sc;
{
 struct scsibus_attach_args saa;
 if (sc->sc_omess == ((void *)0))
  sc->sc_omess = malloc(8, 2, 0x0002);
 if (sc->sc_imess == ((void *)0))
  sc->sc_imess = malloc(8 +1, 2, 0x0002);
 if (sc->sc_omess == ((void *)0) || sc->sc_imess == ((void *)0)) {
  printf("out of memory\n");
  return;
 }
 if (sc->sc_rev >= 10) {
  printf("\n%s: unknown variant %d, devices not attached\n",
      sc->sc_dev.dv_xname, sc->sc_rev);
  return;
 }
 printf(": %s, %dMHz\n", ncr53c9x_variant_names[sc->sc_rev],
     sc->sc_freq);
 sc->sc_ccf = (((sc->sc_freq + 4) / 5));
 if (sc->sc_ccf == 1)
  sc->sc_ccf = 2;
 sc->sc_timeout = ((250 * 1000) * sc->sc_freq) / (8192 * sc->sc_ccf);
 sc->sc_ccf &= 7;
 switch (sc->sc_rev) {
 case 9:
  sc->sc_ntarg = 16;
  break;
 default:
  sc->sc_ntarg = 8;
  break;
 }
 sc->sc_cfflags = sc->sc_dev.dv_cfdata->cf_flags;
 sc->sc_state = 0;
 ncr53c9x_init(sc, 1);
 sc->sc_link.adapter_softc = sc;
 sc->sc_link.adapter_target = sc->sc_id;
 sc->sc_link.adapter = &ncr53c9x_adapter;
 sc->sc_link.openings = 2;
 sc->sc_link.adapter_buswidth = sc->sc_ntarg;
 sc->sc_link.pool = &ecb_iopool;
 __builtin_bzero((&saa), (sizeof(saa)));
 saa.saa_sc_link = &sc->sc_link;
 config_found_sm((&sc->sc_dev), (&saa), (scsiprint), ((void *)0));
}
void
ncr53c9x_reset(sc)
 struct ncr53c9x_softc *sc;
{
 (*(sc)->sc_glue->gl_dma_reset)((sc));
 do { if (ncr53c9x_debug & 0x100) printf("<cmd:0x%x %d>", (unsigned)0x02, 303); sc->sc_lastcmd = 0x02; (*(sc)->sc_glue->gl_write_reg)((sc), (0x03), (0x02)); } while (0);
 do { if (ncr53c9x_debug & 0x100) printf("<cmd:0x%x %d>", (unsigned)0x00, 304); sc->sc_lastcmd = 0x00; (*(sc)->sc_glue->gl_write_reg)((sc), (0x03), (0x00)); } while (0);
 delay(500);
 switch (sc->sc_rev) {
 case 5:
 case 6:
  (*(sc)->sc_glue->gl_write_reg)((sc), (0x0d), (sc->sc_cfg5 | 0x04));
  (*(sc)->sc_glue->gl_write_reg)((sc), (0x0d), (sc->sc_cfg4));
 case 8:
 case 7:
 case 3:
 case 4:
 case 2:
  sc->sc_features |= 0x01;
  (*(sc)->sc_glue->gl_write_reg)((sc), (0x0c), (sc->sc_cfg3));
 case 1:
  sc->sc_features |= 0x08;
  (*(sc)->sc_glue->gl_write_reg)((sc), (0x0b), (sc->sc_cfg2));
 case 0:
  (*(sc)->sc_glue->gl_write_reg)((sc), (0x08), (sc->sc_cfg1));
  (*(sc)->sc_glue->gl_write_reg)((sc), (0x09), (sc->sc_ccf));
  (*(sc)->sc_glue->gl_write_reg)((sc), (0x07), (0));
  (*(sc)->sc_glue->gl_write_reg)((sc), (0x05), (sc->sc_timeout));
  break;
 case 9:
  sc->sc_features |=
      0x08 | 0x01 | 0x02;
  sc->sc_cfg3 = 0x01 | 0x80;
  sc->sc_cfg3_fscsi = 0x02;
  (*(sc)->sc_glue->gl_write_reg)((sc), (0x0c), (sc->sc_cfg3));
  sc->sc_cfg2 = 0;
  (*(sc)->sc_glue->gl_write_reg)((sc), (0x0b), (sc->sc_cfg2));
  (*(sc)->sc_glue->gl_write_reg)((sc), (0x08), (sc->sc_cfg1));
  (*(sc)->sc_glue->gl_write_reg)((sc), (0x09), (sc->sc_ccf));
  (*(sc)->sc_glue->gl_write_reg)((sc), (0x07), (0));
  (*(sc)->sc_glue->gl_write_reg)((sc), (0x05), (sc->sc_timeout));
  break;
 default:
  printf("%s: unknown revision code, assuming ESP100\n",
      sc->sc_dev.dv_xname);
  (*(sc)->sc_glue->gl_write_reg)((sc), (0x08), (sc->sc_cfg1));
  (*(sc)->sc_glue->gl_write_reg)((sc), (0x09), (sc->sc_ccf));
  (*(sc)->sc_glue->gl_write_reg)((sc), (0x07), (0));
  (*(sc)->sc_glue->gl_write_reg)((sc), (0x05), (sc->sc_timeout));
 }
 if (sc->sc_rev == 8)
  (*(sc)->sc_glue->gl_write_reg)((sc), (0x0d), (sc->sc_cfg4));
}
void
ncr53c9x_scsi_reset(sc)
 struct ncr53c9x_softc *sc;
{
 (*sc->sc_glue->gl_dma_stop)(sc);
 printf("%s: resetting SCSI bus\n", sc->sc_dev.dv_xname);
 do { if (ncr53c9x_debug & 0x100) printf("<cmd:0x%x %d>", (unsigned)0x03, 375); sc->sc_lastcmd = 0x03; (*(sc)->sc_glue->gl_write_reg)((sc), (0x03), (0x03)); } while (0);
}
void
ncr53c9x_init(sc, doreset)
 struct ncr53c9x_softc *sc;
 int doreset;
{
 struct ncr53c9x_ecb *ecb;
 struct ncr53c9x_linfo *li;
 int r, i;
 do {if (ncr53c9x_debug & 0x10) printf ("[NCR_INIT(%d) %d] ", doreset, sc->sc_state);} while (0);
 if (!ecb_pool_initialized) {
  pool_init(&ecb_pool, sizeof(struct ncr53c9x_ecb), 0, 5,
      0, "ncr53c9x_ecb", ((void *)0));
  scsi_iopool_init(&ecb_iopool, ((void *)0),
      ncr53c9x_get_ecb, ncr53c9x_free_ecb);
  ecb_pool_initialized = 1;
 }
 if (sc->sc_state == 0) {
  do { (&sc->ready_list)->tqh_first = ((void *)0); (&sc->ready_list)->tqh_last = &(&sc->ready_list)->tqh_first; } while (0);
  sc->sc_nexus = ((void *)0);
  __builtin_bzero((sc->sc_tinfo), (sizeof(sc->sc_tinfo)));
  for (r = 0; r < sc->sc_ntarg; r++) {
   do { ((&sc->sc_tinfo[r].luns)->lh_first) = ((void *)0); } while (0);
  }
 } else {
  sc->sc_state = 8;
  sc->sc_msgify = 0;
  if ((ecb = sc->sc_nexus) != ((void *)0)) {
   ecb->xs->error = 4;
   ncr53c9x_done(sc, ecb);
  }
  for (r = 0; r < sc->sc_ntarg; r++) {
   for((li) = ((&sc->sc_tinfo[r].luns)->lh_first); (li)!= ((void *)0); (li) = ((li)->link.le_next)) {
    if ((ecb = li->untagged)) {
     li->untagged = ((void *)0);
     li->busy = 0;
     ecb->xs->error = 4;
     ncr53c9x_done(sc, ecb);
    }
    for (i = 0; i < 256; i++)
     if ((ecb = li->queued[i])) {
      li->queued[i] = ((void *)0);
      ecb->xs->error = 4;
      ncr53c9x_done(sc, ecb);
     }
    li->used = 0;
   }
  }
 }
 ncr53c9x_reset(sc);
 sc->sc_phase = sc->sc_prevphase = 0x101;
 for (r = 0; r < sc->sc_ntarg; r++) {
  struct ncr53c9x_tinfo *ti = &sc->sc_tinfo[r];
                ti->flags = ((!(sc->sc_cfflags & (1 << (r + 16))) &&
      sc->sc_minsync) ? 0 : 0x10) |
      ((sc->sc_cfflags & (1 << r)) ? 0x20 : 0) |
      0x01;
  ti->period = sc->sc_minsync;
  ti->offset = 0;
  ti->cfg3 = 0;
 }
 if (doreset) {
  sc->sc_state = 9;
  do { if (ncr53c9x_debug & 0x100) printf("<cmd:0x%x %d>", (unsigned)0x03, 467); sc->sc_lastcmd = 0x03; (*(sc)->sc_glue->gl_write_reg)((sc), (0x03), (0x03)); } while (0);
  switch (sc->sc_rev) {
  case 3:
   delay(600000);
   break;
  case 4:
   delay(100000);
   break;
  }
 } else {
  sc->sc_state = 1;
  ncr53c9x_sched(sc);
 }
}
__inline__ void
ncr53c9x_readregs(sc)
 struct ncr53c9x_softc *sc;
{
 sc->sc_espstat = (*(sc)->sc_glue->gl_read_reg)((sc), (0x04));
 sc->sc_espstep = (*(sc)->sc_glue->gl_read_reg)((sc), (0x06)) & 0x07;
 if (sc->sc_rev == 9)
  sc->sc_espstat2 = (*(sc)->sc_glue->gl_read_reg)((sc), (0x09));
 sc->sc_espintr = (*(sc)->sc_glue->gl_read_reg)((sc), (0x05));
 if (sc->sc_glue->gl_clear_latched_intr != ((void *)0))
  (*sc->sc_glue->gl_clear_latched_intr)(sc);
 sc->sc_phase = (sc->sc_espintr & 0x20)
   ? 0x100
   : sc->sc_espstat & 0x07;
 do {if (ncr53c9x_debug & 0x08) printf ("regs[intr=%02x,stat=%02x,step=%02x,stat2=%02x] ", sc->sc_espintr, sc->sc_espstat, sc->sc_espstep, sc->sc_espstat2);} while (0);
}
static inline int
ncr53c9x_stp2cpb(sc, period)
 struct ncr53c9x_softc *sc;
 int period;
{
 int v;
 v = (sc->sc_freq * period) / 250;
 if (((250 * (v)) / (sc)->sc_freq) < period)
  v++;
 return (v);
}
static inline void
ncr53c9x_setsync(sc, ti)
 struct ncr53c9x_softc *sc;
 struct ncr53c9x_tinfo *ti;
{
 u_char syncoff, synctp;
 u_char cfg3 = sc->sc_cfg3 | ti->cfg3;
 if (ti->flags & 0x08) {
  syncoff = ti->offset;
  synctp = ncr53c9x_stp2cpb(sc, ti->period);
  if (sc->sc_features & 0x02) {
   if (ti->period <= 50)
    cfg3 |= (sc->sc_rev == 8) ?
        0x10 : 0x02;
  }
  if (sc->sc_rev == 8 &&
      (cfg3 & 0x10) == 0)
   synctp--;
 } else {
  syncoff = 0;
  synctp = 0;
 }
 if (sc->sc_features & 0x01)
  (*(sc)->sc_glue->gl_write_reg)((sc), (0x0c), (cfg3));
 (*(sc)->sc_glue->gl_write_reg)((sc), (0x07), (syncoff));
 (*(sc)->sc_glue->gl_write_reg)((sc), (0x06), (synctp));
}
void
ncr53c9x_select(sc, ecb)
 struct ncr53c9x_softc *sc;
 struct ncr53c9x_ecb *ecb;
{
 struct scsi_link *sc_link = ecb->xs->sc_link;
 int target = sc_link->target;
 int lun = sc_link->lun;
 struct ncr53c9x_tinfo *ti = &sc->sc_tinfo[target];
 int tiflags = ti->flags;
 u_char *cmd;
 int clen;
 int selatn3, selatns;
 size_t dmasize;
 do {if (ncr53c9x_debug & 0x10) printf ("[ncr53c9x_select(t%d,l%d,cmd:%x,tag%x,%x)] ", target, lun, ecb->cmd.cmd.opcode, ecb->tag[0], ecb->tag[1]);} while (0);
 sc->sc_state = 2;
 if ((ecb->xs->flags & 0x00002) == 0) {
  int timeout = ecb->timeout;
  if (timeout > 1000000)
   timeout = (timeout / 1000) * hz;
  else
   timeout = (timeout * hz) / 1000;
  timeout_add(&ecb->to, timeout);
 }
 if (sc->sc_rev == 9) {
  do { if (ncr53c9x_debug & 0x100) printf("<cmd:0x%x %d>", (unsigned)0x01, 636); sc->sc_lastcmd = 0x01; (*(sc)->sc_glue->gl_write_reg)((sc), (0x03), (0x01)); } while (0);
  (*(sc)->sc_glue->gl_write_reg)((sc), (0x04), (target | 0x10));
 } else {
  (*(sc)->sc_glue->gl_write_reg)((sc), (0x04), (target));
 }
 ncr53c9x_setsync(sc, ti);
 if ((ecb->flags & 0x04) != 0) {
  if (sc->sc_features & 0x04) {
   dmasize = clen = ecb->clen;
   sc->sc_cmdlen = clen;
   sc->sc_cmdp = (caddr_t)&ecb->cmd.cmd;
   (*(sc)->sc_glue->gl_dma_setup)((sc), (&sc->sc_cmdp), (&sc->sc_cmdlen), (0), (&dmasize));
   do { (*((sc))->sc_glue->gl_write_reg)(((sc)), (0x00), ((dmasize))); (*((sc))->sc_glue->gl_write_reg)(((sc)), (0x01), ((dmasize) >> 8)); if ((sc->sc_cfg2 & 0x40) || (sc->sc_rev == 9)) { (*((sc))->sc_glue->gl_write_reg)(((sc)), (0x0e), ((dmasize) >> 16)); } if (sc->sc_rev == 9) { (*(sc)->sc_glue->gl_write_reg)((sc), (0xf), (0)); } } while (0);
   if (sc->sc_rev != 9)
    do { if (ncr53c9x_debug & 0x100) printf("<cmd:0x%x %d>", (unsigned)0x00|0x80, 661); sc->sc_lastcmd = 0x00|0x80; (*(sc)->sc_glue->gl_write_reg)((sc), (0x03), (0x00|0x80)); } while (0);
   do { if (ncr53c9x_debug & 0x100) printf("<cmd:0x%x %d>", (unsigned)0x41 | 0x80, 664); sc->sc_lastcmd = 0x41 | 0x80; (*(sc)->sc_glue->gl_write_reg)((sc), (0x03), (0x41 | 0x80)); } while (0);
   (*(sc)->sc_glue->gl_dma_go)((sc));
  } else {
   ncr53c9x_wrfifo(sc, (u_char *)&ecb->cmd.cmd, ecb->clen);
   sc->sc_cmdlen = 0;
   do { if (ncr53c9x_debug & 0x100) printf("<cmd:0x%x %d>", (unsigned)0x41, 669); sc->sc_lastcmd = 0x41; (*(sc)->sc_glue->gl_write_reg)((sc), (0x03), (0x41)); } while (0);
  }
  return;
 }
 selatn3 = selatns = 0;
 if (ecb->tag[0] != 0) {
  if (sc->sc_features & 0x08)
   selatn3 = 1;
  else
   selatns = 1;
 }
 if (ti->flags & 0x02) {
  selatn3 = 0;
  selatns = 1;
 }
 cmd = (u_char *)&ecb->cmd.cmd;
 if (selatn3) {
  clen = ecb->clen + 3;
  cmd -= 3;
  cmd[0] = (((1) ? 0xc0 : 0x80) | (lun));
  cmd[1] = ecb->tag[0];
  cmd[2] = ecb->tag[1];
 } else {
  clen = ecb->clen + 1;
  cmd -= 1;
  cmd[0] = ((((tiflags & 0x20) == 0) ? 0xc0 : 0x80) | (lun));
 }
 if ((sc->sc_features & 0x04) && !selatns) {
  dmasize = clen;
  sc->sc_cmdlen = clen;
  sc->sc_cmdp = cmd;
  (*(sc)->sc_glue->gl_dma_setup)((sc), (&sc->sc_cmdp), (&sc->sc_cmdlen), (0), (&dmasize));
  do { (*((sc))->sc_glue->gl_write_reg)(((sc)), (0x00), ((dmasize))); (*((sc))->sc_glue->gl_write_reg)(((sc)), (0x01), ((dmasize) >> 8)); if ((sc->sc_cfg2 & 0x40) || (sc->sc_rev == 9)) { (*((sc))->sc_glue->gl_write_reg)(((sc)), (0x0e), ((dmasize) >> 16)); } if (sc->sc_rev == 9) { (*(sc)->sc_glue->gl_write_reg)((sc), (0xf), (0)); } } while (0);
   do { if (ncr53c9x_debug & 0x100) printf("<cmd:0x%x %d>", (unsigned)0x00|0x80, 719); sc->sc_lastcmd = 0x00|0x80; (*(sc)->sc_glue->gl_write_reg)((sc), (0x03), (0x00|0x80)); } while (0);
  if (selatn3) {
   sc->sc_msgout = 0x0100;
   sc->sc_flags |= 0x40;
   do { if (ncr53c9x_debug & 0x100) printf("<cmd:0x%x %d>", (unsigned)0x46 | 0x80, 725); sc->sc_lastcmd = 0x46 | 0x80; (*(sc)->sc_glue->gl_write_reg)((sc), (0x03), (0x46 | 0x80)); } while (0);
  } else
   do { if (ncr53c9x_debug & 0x100) printf("<cmd:0x%x %d>", (unsigned)0x42 | 0x80, 727); sc->sc_lastcmd = 0x42 | 0x80; (*(sc)->sc_glue->gl_write_reg)((sc), (0x03), (0x42 | 0x80)); } while (0);
  (*(sc)->sc_glue->gl_dma_go)((sc));
  return;
 }
 sc->sc_cmdlen = 0;
 ncr53c9x_wrfifo(sc, cmd, clen);
 if (selatns) {
  do {if (ncr53c9x_debug & 0x08) printf ("SELATNS \n");} while (0);
  do { if (ncr53c9x_debug & 0x100) printf("<cmd:0x%x %d>", (unsigned)0x43, 745); sc->sc_lastcmd = 0x43; (*(sc)->sc_glue->gl_write_reg)((sc), (0x03), (0x43)); } while (0);
 } else if (selatn3) {
  sc->sc_msgout = 0x0100;
  sc->sc_flags |= 0x40;
  do { if (ncr53c9x_debug & 0x100) printf("<cmd:0x%x %d>", (unsigned)0x46, 749); sc->sc_lastcmd = 0x46; (*(sc)->sc_glue->gl_write_reg)((sc), (0x03), (0x46)); } while (0);
 } else
  do { if (ncr53c9x_debug & 0x100) printf("<cmd:0x%x %d>", (unsigned)0x42, 751); sc->sc_lastcmd = 0x42; (*(sc)->sc_glue->gl_write_reg)((sc), (0x03), (0x42)); } while (0);
}
void *
ncr53c9x_get_ecb(void *null)
{
 struct ncr53c9x_ecb *ecb;
 ecb = pool_get(&ecb_pool, 0x0002|0x0008);
 if (ecb == ((void *)0))
  return (((void *)0));
 timeout_set(&ecb->to, ncr53c9x_timeout, ecb);
 ecb->flags |= 0x01;
 return (ecb);
}
void
ncr53c9x_free_ecb(void *null, void *ecb)
{
 pool_put(&ecb_pool, ecb);
}
int
ncr53c9x_scsi_probe(struct scsi_link *sc_link)
{
 struct ncr53c9x_softc *sc = sc_link->adapter_softc;
 struct ncr53c9x_tinfo *ti = &sc->sc_tinfo[sc_link->target];
 struct ncr53c9x_linfo *li;
 int64_t lun = sc_link->lun;
 int s;
 li = malloc(sizeof(*li), 2, 0x0001 | 0x0008);
 if (li == ((void *)0))
  return (12);
 li->last_used = time_second;
 li->lun = lun;
 s = _splraise(5);
 do { if (((li)->link.le_next = (&ti->luns)->lh_first) != ((void *)0)) (&ti->luns)->lh_first->link.le_prev = &(li)->link.le_next; (&ti->luns)->lh_first = (li); (li)->link.le_prev = &(&ti->luns)->lh_first; } while (0);
 if (lun < 8)
  ti->lun[lun] = li;
 _splx(s);
 return (0);
}
void
ncr53c9x_scsi_free(struct scsi_link *sc_link)
{
 struct ncr53c9x_softc *sc = sc_link->adapter_softc;
 struct ncr53c9x_tinfo *ti = &sc->sc_tinfo[sc_link->target];
 struct ncr53c9x_linfo *li;
 int64_t lun = sc_link->lun;
 int s;
 s = _splraise(5);
 li = ((((lun) < 8) && (((ti)->lun[(lun)]) != ((void *)0))) ? ((ti)->lun[(lun)]) : ncr53c9x_lunsearch((ti), (int64_t)(lun)));
 do { if ((li)->link.le_next != ((void *)0)) (li)->link.le_next->link.le_prev = (li)->link.le_prev; *(li)->link.le_prev = (li)->link.le_next; ((li)->link.le_prev) = ((void *)-1); ((li)->link.le_next) = ((void *)-1); } while (0);
 if (lun < 8)
  ti->lun[lun] = ((void *)0);
 _splx(s);
 free(li, 2, 0);
}
void
ncr53c9x_scsi_cmd(xs)
 struct scsi_xfer *xs;
{
 struct scsi_link *sc_link = xs->sc_link;
 struct ncr53c9x_softc *sc = sc_link->adapter_softc;
 struct ncr53c9x_ecb *ecb;
 struct ncr53c9x_tinfo *ti;
 struct ncr53c9x_linfo *li;
 int64_t lun = sc_link->lun;
 int s, flags;
 do {if (ncr53c9x_debug & 0x10) printf ("[ncr53c9x_scsi_cmd] ");} while (0);
 do {if (ncr53c9x_debug & 0x04) printf ("[0x%x, %d]->%d ", (int)xs->cmd->opcode, xs->cmdlen, sc_link->target);} while (0);
 if (xs->cmdlen > 12) {
  __builtin_memset((&xs->sense), (0), (sizeof(xs->sense)));
  xs->sense.error_code = 0x80 | 0x70;
  xs->sense.flags = 0x05;
  xs->sense.add_sense_code = 0x20;
  xs->error = 1;
  scsi_done(xs);
  return;
 }
 flags = xs->flags;
 ti = &sc->sc_tinfo[sc_link->target];
 li = ((((lun) < 8) && (((ti)->lun[(lun)]) != ((void *)0))) ? ((ti)->lun[(lun)]) : ncr53c9x_lunsearch((ti), (int64_t)(lun)));
 ecb = xs->io;
 ecb->xs = xs;
 ecb->timeout = xs->timeout;
 if (flags & 0x00200) {
  ecb->flags |= 0x80;
  ecb->clen = 0;
  ecb->dleft = 0;
 } else {
  __builtin_bcopy((xs->cmd), (&ecb->cmd.cmd), (xs->cmdlen));
  ecb->clen = xs->cmdlen;
  ecb->daddr = xs->data;
  ecb->dleft = xs->datalen;
 }
 ecb->stat = 0;
 s = _splraise(5);
 do { (ecb)->chain.tqe_next = ((void *)0); (ecb)->chain.tqe_prev = (&sc->ready_list)->tqh_last; *(&sc->ready_list)->tqh_last = (ecb); (&sc->ready_list)->tqh_last = &(ecb)->chain.tqe_next; } while (0);
 ecb->flags |= 0x02;
 if (sc->sc_state == 1)
  ncr53c9x_sched(sc);
 _splx(s);
 if ((flags & 0x00002) == 0)
  return;
 if (ncr53c9x_poll(sc, xs, ecb->timeout)) {
  ncr53c9x_timeout(ecb);
  if (ncr53c9x_poll(sc, xs, ecb->timeout))
   ncr53c9x_timeout(ecb);
 }
}
int
ncr53c9x_poll(sc, xs, count)
 struct ncr53c9x_softc *sc;
 struct scsi_xfer *xs;
 int count;
{
 int s;
 do {if (ncr53c9x_debug & 0x10) printf ("[ncr53c9x_poll] ");} while (0);
 while (count) {
  if ((*(sc)->sc_glue->gl_dma_isintr)((sc))) {
   s = _splraise(5);
   ncr53c9x_intr(sc);
   _splx(s);
  }
  if ((xs->flags & 0x00008) != 0)
   return (0);
  s = _splraise(5);
  if (sc->sc_state == 1) {
   do {if (ncr53c9x_debug & 0x10) printf ("[ncr53c9x_poll: rescheduling] ");} while (0);
   ncr53c9x_sched(sc);
  }
  _splx(s);
  delay(1000);
  count--;
 }
 return (1);
}
void
ncr53c9x_sched(sc)
 struct ncr53c9x_softc *sc;
{
 struct ncr53c9x_ecb *ecb;
 struct scsi_link *sc_link;
 struct ncr53c9x_tinfo *ti;
 int lun;
 struct ncr53c9x_linfo *li;
 int s, tag;
 do {if (ncr53c9x_debug & 0x10) printf ("[ncr53c9x_sched] ");} while (0);
 if (sc->sc_state != 1)
  panic("ncr53c9x_sched: not IDLE (state=%d)", sc->sc_state);
 for((ecb) = ((&sc->ready_list)->tqh_first); (ecb) != ((void *)0); (ecb) = ((ecb)->chain.tqe_next)) {
  sc_link = ecb->xs->sc_link;
  ti = &sc->sc_tinfo[sc_link->target];
  lun = sc_link->lun;
  if ((ti->flags & (0x20)) != 0)
   tag = 0;
  else if ((ti->flags & 0x40) == 0)
   tag = 0;
  else if ((ecb->flags & 0x04) != 0)
   tag = 0;
  else
   tag = 0x20;
  s = _splraise(5);
  li = ((((lun) < 8) && (((ti)->lun[(lun)]) != ((void *)0))) ? ((ti)->lun[(lun)]) : ncr53c9x_lunsearch((ti), (int64_t)(lun)));
  if (!li) {
   if ((li = malloc(sizeof(*li), 2,
       0x0002 | 0x0008)) == ((void *)0)) {
    _splx(s);
    continue;
   }
   li->lun = lun;
   do { if (((li)->link.le_next = (&ti->luns)->lh_first) != ((void *)0)) (&ti->luns)->lh_first->link.le_prev = &(li)->link.le_next; (&ti->luns)->lh_first = (li); (li)->link.le_prev = &(&ti->luns)->lh_first; } while (0);
   if (lun < 8)
    ti->lun[lun] = li;
  }
  li->last_used = time_second;
  if (!tag) {
   if (!li->untagged)
    li->untagged = ecb;
  }
  if (li->untagged) {
   tag = 0;
   if ((li->busy != 1) && !li->used) {
    ecb = li->untagged;
    sc_link = ecb->xs->sc_link;
   }
   else {
    _splx(s);
    continue;
   }
  }
  ecb->tag[0] = tag;
  if (tag) {
   int i;
   if (li->used == 255) {
    _splx(s);
    continue;
   }
   for (i=li->avail; i<256; i++) {
    if (li->queued[i] == ((void *)0))
     break;
   }
   if (i == 256) {
    for (i = 0; i<256; i++) {
     if (li->queued[i] == ((void *)0))
      break;
    }
   }
   if (i == 256)
    panic("ncr53c9x_sched: tag alloc failure");
   li->avail = i+1;
   li->used++;
   li->queued[i] = ecb;
   ecb->tag[1] = i;
  }
  _splx(s);
  if (li->untagged && (li->busy != 1)) {
   li->busy = 1;
   do { if (((ecb)->chain.tqe_next) != ((void *)0)) (ecb)->chain.tqe_next->chain.tqe_prev = (ecb)->chain.tqe_prev; else (&sc->ready_list)->tqh_last = (ecb)->chain.tqe_prev; *(ecb)->chain.tqe_prev = (ecb)->chain.tqe_next; ((ecb)->chain.tqe_prev) = ((void *)-1); ((ecb)->chain.tqe_next) = ((void *)-1); } while (0);
   ecb->flags &= ~0x02;
   sc->sc_nexus = ecb;
   ncr53c9x_select(sc, ecb);
   break;
  }
  if (!li->untagged && tag) {
   do { if (((ecb)->chain.tqe_next) != ((void *)0)) (ecb)->chain.tqe_next->chain.tqe_prev = (ecb)->chain.tqe_prev; else (&sc->ready_list)->tqh_last = (ecb)->chain.tqe_prev; *(ecb)->chain.tqe_prev = (ecb)->chain.tqe_next; ((ecb)->chain.tqe_prev) = ((void *)-1); ((ecb)->chain.tqe_next) = ((void *)-1); } while (0);
   ecb->flags &= ~0x02;
   sc->sc_nexus = ecb;
   ncr53c9x_select(sc, ecb);
   break;
  } else
   do {if (ncr53c9x_debug & 0x08) printf ("%d:%d busy\n", sc_link->target, sc_link->lun);} while (0);
 }
}
void
ncr53c9x_sense(sc, ecb)
 struct ncr53c9x_softc *sc;
 struct ncr53c9x_ecb *ecb;
{
 struct scsi_xfer *xs = ecb->xs;
 struct scsi_link *sc_link = xs->sc_link;
 struct ncr53c9x_tinfo *ti = &sc->sc_tinfo[sc_link->target];
 struct scsi_sense *ss = (void *)&ecb->cmd.cmd;
 struct ncr53c9x_linfo *li;
 int lun = sc_link->lun;
 do {if (ncr53c9x_debug & 0x08) printf ("requesting sense ");} while (0);
 __builtin_bzero((ss), (sizeof(*ss)));
 ss->opcode = 0x03;
 ss->byte2 = sc_link->lun << 5;
 ss->length = sizeof(struct scsi_sense_data);
 ecb->clen = sizeof(*ss);
 ecb->daddr = (char *)&xs->sense;
 ecb->dleft = sizeof(struct scsi_sense_data);
 ecb->flags |= 0x04;
 ecb->timeout = 1000;
 ti->senses++;
 li = ((((lun) < 8) && (((ti)->lun[(lun)]) != ((void *)0))) ? ((ti)->lun[(lun)]) : ncr53c9x_lunsearch((ti), (int64_t)(lun)));
 if (li->busy) li->busy = 0;
 ncr53c9x_dequeue(sc, ecb);
 li->untagged = ecb;
 li->busy = 2;
 if (ecb == sc->sc_nexus) {
  ncr53c9x_select(sc, ecb);
 } else {
  do { if (((ecb)->chain.tqe_next = (&sc->ready_list)->tqh_first) != ((void *)0)) (&sc->ready_list)->tqh_first->chain.tqe_prev = &(ecb)->chain.tqe_next; else (&sc->ready_list)->tqh_last = &(ecb)->chain.tqe_next; (&sc->ready_list)->tqh_first = (ecb); (ecb)->chain.tqe_prev = &(&sc->ready_list)->tqh_first; } while (0);
  ecb->flags |= 0x02;
  if (sc->sc_state == 1)
   ncr53c9x_sched(sc);
 }
}
void
ncr53c9x_done(sc, ecb)
 struct ncr53c9x_softc *sc;
 struct ncr53c9x_ecb *ecb;
{
 struct scsi_xfer *xs = ecb->xs;
 struct scsi_link *sc_link = xs->sc_link;
 struct ncr53c9x_tinfo *ti = &sc->sc_tinfo[sc_link->target];
 int lun = sc_link->lun;
 struct ncr53c9x_linfo *li = ((((lun) < 8) && (((ti)->lun[(lun)]) != ((void *)0))) ? ((ti)->lun[(lun)]) : ncr53c9x_lunsearch((ti), (int64_t)(lun)));
 do {if (ncr53c9x_debug & 0x10) printf ("[ncr53c9x_done(error:%x)] ", xs->error);} while (0);
 timeout_del(&ecb->to);
 if (ecb->stat == 0x28) {
  sc_link->openings = li->used - 1;
  printf("\n%s: QFULL -- throttling to %d commands\n",
      sc->sc_dev.dv_xname, sc_link->openings);
 }
 if (xs->error == 0) {
  xs->status = ecb->stat;
  if ((ecb->flags & 0x40) != 0) {
   xs->error = 4;
  } else if ((ecb->flags & 0x04) != 0) {
   xs->error = 1;
  } else if ((ecb->stat & 0x3e) == 0x02) {
   xs->resid = ecb->dleft;
   ncr53c9x_sense(sc, ecb);
   return;
  } else {
   xs->resid = ecb->dleft;
  }
 }
 if (ncr53c9x_debug & 0x08) {
  if (xs->resid != 0)
   printf("resid=%lu ", (unsigned long)xs->resid);
  if (xs->error == 1)
   printf("sense=0x%02x\n", xs->sense.error_code);
  else
   printf("error=%d\n", xs->error);
 }
 ncr53c9x_dequeue(sc, ecb);
 if (ecb == sc->sc_nexus) {
  sc->sc_nexus = ((void *)0);
  if (sc->sc_state != 8) {
   sc->sc_state = 1;
   ncr53c9x_sched(sc);
  }
 }
 ti->cmds++;
 scsi_done(xs);
}
void
ncr53c9x_dequeue(sc, ecb)
 struct ncr53c9x_softc *sc;
 struct ncr53c9x_ecb *ecb;
{
 struct ncr53c9x_tinfo *ti =
     &sc->sc_tinfo[ecb->xs->sc_link->target];
 struct ncr53c9x_linfo *li;
 int64_t lun = ecb->xs->sc_link->lun;
 li = ((((lun) < 8) && (((ti)->lun[(lun)]) != ((void *)0))) ? ((ti)->lun[(lun)]) : ncr53c9x_lunsearch((ti), (int64_t)(lun)));
 if ((!li) || (li->lun != lun))
  panic("ncr53c9x_dequeue: lun %llx for ecb %p does not exist",
      (long long)lun, ecb);
 if (li->untagged == ecb) {
  li->busy = 0;
  li->untagged = ((void *)0);
 }
 if (ecb->tag[0] && li->queued[ecb->tag[1]]) {
  if (li->queued[ecb->tag[1]] && (li->queued[ecb->tag[1]] != ecb))
   panic("ncr53c9x_dequeue: slot %d for lun %llx has %p "
       "instead of ecb %p", ecb->tag[1],
       (long long)lun,
       li->queued[ecb->tag[1]], ecb);
  li->queued[ecb->tag[1]] = ((void *)0);
  li->used --;
 }
 if (ecb->flags & 0x02) {
  ecb->flags &= ~0x02;
  do { if (((ecb)->chain.tqe_next) != ((void *)0)) (ecb)->chain.tqe_next->chain.tqe_prev = (ecb)->chain.tqe_prev; else (&sc->ready_list)->tqh_last = (ecb)->chain.tqe_prev; *(ecb)->chain.tqe_prev = (ecb)->chain.tqe_next; ((ecb)->chain.tqe_prev) = ((void *)-1); ((ecb)->chain.tqe_next) = ((void *)-1); } while (0);
 }
 }
static void
ncr53c9x_flushfifo(struct ncr53c9x_softc *sc)
{
 do {if (ncr53c9x_debug & 0x08) printf ("[flushfifo] ");} while (0);
 do { if (ncr53c9x_debug & 0x100) printf("<cmd:0x%x %d>", (unsigned)0x01, 1259); sc->sc_lastcmd = 0x01; (*(sc)->sc_glue->gl_write_reg)((sc), (0x03), (0x01)); } while (0);
 if (sc->sc_phase == (0x02) ||
     sc->sc_phase == (0x04|0x02))
  delay(2);
}
static int
ncr53c9x_rdfifo(struct ncr53c9x_softc *sc, int how)
{
 int i, n;
 u_char *buf;
 switch(how) {
 case 0:
  buf = sc->sc_imess;
  sc->sc_imlen = 0;
  break;
 case 1:
  buf = sc->sc_imess + sc->sc_imlen;
  break;
 default:
  panic("ncr53c9x_rdfifo: bad flag");
  break;
 }
 n = (*(sc)->sc_glue->gl_read_reg)((sc), (0x07)) & 0x1f;
 if (sc->sc_rev == 9) {
  n *= 2;
  for (i = 0; i < n; i++)
   buf[i] = (*(sc)->sc_glue->gl_read_reg)((sc), (0x02));
  if (sc->sc_espstat2 & 0x20) {
   (*(sc)->sc_glue->gl_write_reg)((sc), (0x02), (0));
   buf[i++] = (*(sc)->sc_glue->gl_read_reg)((sc), (0x02));
   (*(sc)->sc_glue->gl_read_reg)((sc), (0x02));
   ncr53c9x_flushfifo(sc);
  }
 } else {
  for (i = 0; i < n; i++)
   buf[i] = (*(sc)->sc_glue->gl_read_reg)((sc), (0x02));
 }
 sc->sc_imlen += i;
 {
  int j;
  do {if (ncr53c9x_debug & 0x10) printf ("\n[rdfifo %s (%d):", (how == 0) ? "start" : "cont", (int)sc->sc_imlen);} while (0);
  if (ncr53c9x_debug & 0x10) {
   for (j = 0; j < sc->sc_imlen; j++)
    printf(" %02x", sc->sc_imess[j]);
   printf("]\n");
  }
 }
 return sc->sc_imlen;
}
static void
ncr53c9x_wrfifo(struct ncr53c9x_softc *sc, u_char *p, int len)
{
 int i;
 do {if (ncr53c9x_debug & 0x08) printf ("[wrfifo(%d):", len);} while (0);
 if (ncr53c9x_debug & 0x10) {
  for (i = 0; i < len; i++)
   printf(" %02x", p[i]);
  printf("]\n");
 }
 for (i = 0; i < len; i++) {
  (*(sc)->sc_glue->gl_write_reg)((sc), (0x02), (p[i]));
  if (sc->sc_rev == 9)
   (*(sc)->sc_glue->gl_write_reg)((sc), (0x02), (0));
 }
}
int
ncr53c9x_reselect(sc, message, tagtype, tagid)
 struct ncr53c9x_softc *sc;
 int message;
 int tagtype;
 int tagid;
{
 u_char selid, target, lun;
 struct ncr53c9x_ecb *ecb = ((void *)0);
 struct ncr53c9x_tinfo *ti;
 struct ncr53c9x_linfo *li;
 if (sc->sc_rev == 9) {
  target = sc->sc_selid;
 } else {
  selid = sc->sc_selid & ~(1 << sc->sc_id);
  if (selid & (selid - 1)) {
   printf("%s: reselect with invalid selid %02x;"
       " sending DEVICE RESET\n", sc->sc_dev.dv_xname, selid);
   goto reset;
  }
  target = ffs(selid) - 1;
 }
 lun = message & 0x07;
 ti = &sc->sc_tinfo[target];
 li = ((((lun) < 8) && (((ti)->lun[(lun)]) != ((void *)0))) ? ((ti)->lun[(lun)]) : ncr53c9x_lunsearch((ti), (int64_t)(lun)));
 if (li != ((void *)0)) {
  if (li->untagged != ((void *)0) && li->busy)
   ecb = li->untagged;
  else if (tagtype != 0x20) {
   sc->sc_state = 4;
   return (0);
  } else if (tagtype) ecb = li->queued[tagid];
 }
 if (ecb == ((void *)0)) {
  printf("%s: reselect from target %d lun %d tag %x:%x with no nexus;"
      " sending ABORT\n", sc->sc_dev.dv_xname, target, lun, tagtype, tagid);
  goto abort;
 }
 sc->sc_state = 5;
 sc->sc_nexus = ecb;
 ncr53c9x_setsync(sc, ti);
 if (ecb->flags & 0x80)
  do { do {if (ncr53c9x_debug & 0x08) printf ("ncr53c9x_sched_msgout %x %d ", 0x0001, 1419);} while (0); do { if (ncr53c9x_debug & 0x100) printf("<cmd:0x%x %d>", (unsigned)0x1a, 1419); sc->sc_lastcmd = 0x1a; (*(sc)->sc_glue->gl_write_reg)((sc), (0x03), (0x1a)); } while (0); sc->sc_flags |= 0x40; sc->sc_msgpriq |= (0x0001); } while (0);
 else if (ecb->flags & 0x40)
  do { do {if (ncr53c9x_debug & 0x08) printf ("ncr53c9x_sched_msgout %x %d ", 0x0020, 1421);} while (0); do { if (ncr53c9x_debug & 0x100) printf("<cmd:0x%x %d>", (unsigned)0x1a, 1421); sc->sc_lastcmd = 0x1a; (*(sc)->sc_glue->gl_write_reg)((sc), (0x03), (0x1a)); } while (0); sc->sc_flags |= 0x40; sc->sc_msgpriq |= (0x0020); } while (0);
 sc->sc_dp = ecb->daddr;
 sc->sc_dleft = ecb->dleft;
 return (0);
reset:
 do { do {if (ncr53c9x_debug & 0x08) printf ("ncr53c9x_sched_msgout %x %d ", 0x0001, 1430);} while (0); do { if (ncr53c9x_debug & 0x100) printf("<cmd:0x%x %d>", (unsigned)0x1a, 1430); sc->sc_lastcmd = 0x1a; (*(sc)->sc_glue->gl_write_reg)((sc), (0x03), (0x1a)); } while (0); sc->sc_flags |= 0x40; sc->sc_msgpriq |= (0x0001); } while (0);
 return (1);
abort:
 do { do {if (ncr53c9x_debug & 0x08) printf ("ncr53c9x_sched_msgout %x %d ", 0x0020, 1434);} while (0); do { if (ncr53c9x_debug & 0x100) printf("<cmd:0x%x %d>", (unsigned)0x1a, 1434); sc->sc_lastcmd = 0x1a; (*(sc)->sc_glue->gl_write_reg)((sc), (0x03), (0x1a)); } while (0); sc->sc_flags |= 0x40; sc->sc_msgpriq |= (0x0020); } while (0);
 return (1);
}
static inline int
__verify_msg_format(u_char *p, int len)
{
 if (len == 1 && (((p[0]) != 0x01 && (p[0]) < 0x20) || (p[0]) >= 0x80))
  return 1;
 if (len == 2 && (((p[0]) & 0xf0) == 0x20))
  return 1;
 if (len >= 3 && ((p[0]) == 0x01) &&
     len == p[1] + 2)
  return 1;
 return 0;
}
void
ncr53c9x_msgin(sc)
 struct ncr53c9x_softc *sc;
{
 do {if (ncr53c9x_debug & 0x10) printf ("[ncr53c9x_msgin(curmsglen:%ld)] ", (long)sc->sc_imlen);} while (0);
 if (sc->sc_imlen == 0) {
  printf("%s: msgin: no msg byte available\n", sc->sc_dev.dv_xname);
  return;
 }
 if (sc->sc_prevphase != (0x04|0x02|0x01) && sc->sc_state != 3) {
  printf("%s: phase change, dropping message, prev %d, state %d\n",
      sc->sc_dev.dv_xname, sc->sc_prevphase, sc->sc_state);
  sc->sc_flags &= ~0x01;
  sc->sc_imlen = 0;
 }
 do {if (ncr53c9x_debug & 0x10) printf ("<msgbyte:0x%02x>", sc->sc_imess[0]);} while (0);
 if ((sc->sc_flags & 0x01)) {
  do { if (ncr53c9x_debug & 0x100) printf("<cmd:0x%x %d>", (unsigned)0x12, 1491); sc->sc_lastcmd = 0x12; (*(sc)->sc_glue->gl_write_reg)((sc), (0x03), (0x12)); } while (0);
  printf("<dropping msg byte %x>",
   sc->sc_imess[sc->sc_imlen]);
  return;
 }
 if (sc->sc_imlen >= 8) {
  do { do {if (ncr53c9x_debug & 0x08) printf ("ncr53c9x_sched_msgout %x %d ", 0x0008, 1498);} while (0); do { if (ncr53c9x_debug & 0x100) printf("<cmd:0x%x %d>", (unsigned)0x1a, 1498); sc->sc_lastcmd = 0x1a; (*(sc)->sc_glue->gl_write_reg)((sc), (0x03), (0x1a)); } while (0); sc->sc_flags |= 0x40; sc->sc_msgpriq |= (0x0008); } while (0);
  sc->sc_flags |= 0x01;
 } else {
  u_char *pb;
  int plen;
  switch (sc->sc_state) {
  case 3:
   pb = sc->sc_imess + 1;
   plen = sc->sc_imlen - 1;
   break;
  default:
   pb = sc->sc_imess;
   plen = sc->sc_imlen;
   break;
  }
  if (__verify_msg_format(pb, plen))
   goto gotit;
 }
 do { if (ncr53c9x_debug & 0x100) printf("<cmd:0x%x %d>", (unsigned)0x12, 1524); sc->sc_lastcmd = 0x12; (*(sc)->sc_glue->gl_write_reg)((sc), (0x03), (0x12)); } while (0);
 return;
gotit:
 do {if (ncr53c9x_debug & 0x200) printf ("gotmsg(%x) state %d", sc->sc_imess[0], sc->sc_state);}while (0);
 sc->sc_imlen = 0;
 switch (sc->sc_state) {
  struct ncr53c9x_ecb *ecb;
  struct ncr53c9x_tinfo *ti;
  struct ncr53c9x_linfo *li;
  int lun;
 case 5:
  ecb = sc->sc_nexus;
  ti = &sc->sc_tinfo[ecb->xs->sc_link->target];
  switch (sc->sc_imess[0]) {
  case 0x00:
   do {if (ncr53c9x_debug & 0x200) printf ("cmdcomplete ");}while (0);
   if (sc->sc_dleft < 0) {
    sc_print_addr(ecb->xs->sc_link);
    printf("got %ld extra bytes\n",
        -(long)sc->sc_dleft);
    sc->sc_dleft = 0;
   }
   ecb->dleft = (ecb->flags & 0x100)
    ? 0
    : sc->sc_dleft;
   if ((ecb->flags & 0x04) == 0)
    ecb->xs->resid = ecb->dleft;
   sc->sc_state = 7;
   break;
  case 0x07:
   do {if (ncr53c9x_debug & 0x200) printf ("msg reject (msgout=%x) ", sc->sc_msgout);}while (0);
   switch (sc->sc_msgout) {
   case 0x0100:
    printf("%s: tagged queuing rejected: target %d\n",
        sc->sc_dev.dv_xname, ecb->xs->sc_link->target);
    do {if (ncr53c9x_debug & 0x200) printf ("(rejected sent tag)");}while (0);
    do { if (ncr53c9x_debug & 0x100) printf("<cmd:0x%x %d>", (unsigned)0x01, 1578); sc->sc_lastcmd = 0x01; (*(sc)->sc_glue->gl_write_reg)((sc), (0x03), (0x01)); } while (0);
    delay(1);
    ti->flags &= ~0x40;
    lun = ecb->xs->sc_link->lun;
    li = ((((lun) < 8) && (((ti)->lun[(lun)]) != ((void *)0))) ? ((ti)->lun[(lun)]) : ncr53c9x_lunsearch((ti), (int64_t)(lun)));
    if (ecb->tag[0] &&
        li->queued[ecb->tag[1]] != ((void *)0)) {
     li->queued[ecb->tag[1]] = ((void *)0);
     li->used--;
    }
    ecb->tag[0] = ecb->tag[1] = 0;
    li->untagged = ecb;
    li->busy = 1;
    break;
   case 0x0080:
    printf("%s: sync transfer rejected: target %d\n",
        sc->sc_dev.dv_xname, ecb->xs->sc_link->target);
    sc->sc_flags &= ~0x08;
    ti->flags &= ~(0x02 | 0x08);
    ncr53c9x_setsync(sc, ti);
    break;
   case 0x0040:
    printf("%s: wide transfer rejected: target %d\n",
        sc->sc_dev.dv_xname, ecb->xs->sc_link->target);
    ti->flags &= ~0x80;
    ti->width = 0;
    break;
   case 0x0004:
    goto abort;
   }
   break;
  case 0x08:
   do {if (ncr53c9x_debug & 0x200) printf ("noop ");}while (0);
   break;
  case 0x21:
  case 0x20:
  case 0x22:
   do {if (ncr53c9x_debug & 0x200) printf ("TAG %x:%x", sc->sc_imess[0], sc->sc_imess[1]);}while (0);
   break;
  case 0x04:
   do {if (ncr53c9x_debug & 0x200) printf ("disconnect ");}while (0);
   ti->dconns++;
   sc->sc_state = 6;
   if (sc->sc_dleft == 0)
    ecb->flags |= 0x100;
   break;
  case 0x02:
   do {if (ncr53c9x_debug & 0x200) printf ("save datapointer ");}while (0);
   ecb->daddr = sc->sc_dp;
   ecb->dleft = sc->sc_dleft;
   break;
  case 0x03:
   do {if (ncr53c9x_debug & 0x200) printf ("restore datapointer ");}while (0);
   sc->sc_dp = ecb->daddr;
   sc->sc_dleft = ecb->dleft;
   break;
  case 0x01:
   do {if (ncr53c9x_debug & 0x200) printf ("extended(%x) ", sc->sc_imess[2]);}while (0);
   switch (sc->sc_imess[2]) {
   case 0x01:
    do {if (ncr53c9x_debug & 0x200) printf ("SDTR period %d, offset %d ", sc->sc_imess[3], sc->sc_imess[4]);}while (0);
    if (sc->sc_imess[1] != 3)
     goto reject;
    ti->period = sc->sc_imess[3];
    ti->offset = sc->sc_imess[4];
    ti->flags &= ~0x02;
    if (sc->sc_minsync == 0 ||
        ti->offset == 0 ||
        ti->period > 124) {
     sc_print_addr(ecb->xs->sc_link);
     printf("async mode\n");
     if ((sc->sc_flags&0x08)
         == 0) {
      ti->offset = 0;
      ti->flags &= ~0x08;
      do { do {if (ncr53c9x_debug & 0x08) printf ("ncr53c9x_sched_msgout %x %d ", 0x0080, 1677);} while (0); do { if (ncr53c9x_debug & 0x100) printf("<cmd:0x%x %d>", (unsigned)0x1a, 1677); sc->sc_lastcmd = 0x1a; (*(sc)->sc_glue->gl_write_reg)((sc), (0x03), (0x1a)); } while (0); sc->sc_flags |= 0x40; sc->sc_msgpriq |= (0x0080); } while (0);
     } else {
      ti->flags &= ~0x08;
     }
    } else {
     int r, s;
     int p;
     p = ncr53c9x_stp2cpb(sc, ti->period);
     ti->period = ((250 * (p)) / (sc)->sc_freq);
     sc_print_addr(ecb->xs->sc_link);
     r = 250/ti->period;
     s = (100*250)/ti->period - 100*r;
     printf("max sync rate %d.%02dMB/s\n",
      r, s);
     if ((sc->sc_flags&0x08) == 0) {
      if (ti->period <
          sc->sc_minsync)
       ti->period =
           sc->sc_minsync;
      if (ti->offset > 15)
       ti->offset = 15;
      ti->flags &= ~0x08;
      do { do {if (ncr53c9x_debug & 0x08) printf ("ncr53c9x_sched_msgout %x %d ", 0x0080, 1709);} while (0); do { if (ncr53c9x_debug & 0x100) printf("<cmd:0x%x %d>", (unsigned)0x1a, 1709); sc->sc_lastcmd = 0x1a; (*(sc)->sc_glue->gl_write_reg)((sc), (0x03), (0x1a)); } while (0); sc->sc_flags |= 0x40; sc->sc_msgpriq |= (0x0080); } while (0);
     } else {
      ti->flags |= 0x08;
     }
    }
    sc->sc_flags &= ~0x08;
    ncr53c9x_setsync(sc, ti);
    break;
   case 0x03:
    printf("%s: wide mode %d\n",
        sc->sc_dev.dv_xname, sc->sc_imess[3]);
    if (sc->sc_imess[3] == 1) {
     ti->cfg3 |= 0x40;
     ncr53c9x_setsync(sc, ti);
    } else
     ti->width = 0;
    ti->flags &= ~0x80;
    break;
   default:
    sc_print_addr(ecb->xs->sc_link);
    printf("unrecognized MESSAGE EXTENDED;"
        " sending REJECT\n");
    goto reject;
   }
   break;
  default:
   do {if (ncr53c9x_debug & 0x200) printf ("ident ");}while (0);
   sc_print_addr(ecb->xs->sc_link);
   printf("unrecognized MESSAGE; sending REJECT\n");
  reject:
   do { do {if (ncr53c9x_debug & 0x08) printf ("ncr53c9x_sched_msgout %x %d ", 0x0008, 1742);} while (0); do { if (ncr53c9x_debug & 0x100) printf("<cmd:0x%x %d>", (unsigned)0x1a, 1742); sc->sc_lastcmd = 0x1a; (*(sc)->sc_glue->gl_write_reg)((sc), (0x03), (0x1a)); } while (0); sc->sc_flags |= 0x40; sc->sc_msgpriq |= (0x0008); } while (0);
   break;
  }
  break;
 case 4:
  if ((sc->sc_imess[0] != 0x20) ||
      (sc->sc_msgify == 0)) {
   printf("%s: TAG reselect without IDENTIFY;"
       " MSG %x;"
       " sending DEVICE RESET\n",
       sc->sc_dev.dv_xname,
       sc->sc_imess[0]);
   goto reset;
  }
  (void) ncr53c9x_reselect(sc, sc->sc_msgify,
      sc->sc_imess[0], sc->sc_imess[1]);
  break;
 case 3:
  if (((sc->sc_imess[1]) & 0x80)) {
   sc->sc_msgify = sc->sc_imess[1];
  } else {
   printf("%s: reselect without IDENTIFY;"
       " MSG %x;"
       " sending DEVICE RESET\n",
       sc->sc_dev.dv_xname,
       sc->sc_imess[1]);
   goto reset;
  }
  (void) ncr53c9x_reselect(sc, sc->sc_msgify, 0, 0);
  break;
 default:
  printf("%s: unexpected MESSAGE IN; sending DEVICE RESET\n",
      sc->sc_dev.dv_xname);
 reset:
  do { do {if (ncr53c9x_debug & 0x08) printf ("ncr53c9x_sched_msgout %x %d ", 0x0001, 1782);} while (0); do { if (ncr53c9x_debug & 0x100) printf("<cmd:0x%x %d>", (unsigned)0x1a, 1782); sc->sc_lastcmd = 0x1a; (*(sc)->sc_glue->gl_write_reg)((sc), (0x03), (0x1a)); } while (0); sc->sc_flags |= 0x40; sc->sc_msgpriq |= (0x0001); } while (0);
  break;
 abort:
  do { do {if (ncr53c9x_debug & 0x08) printf ("ncr53c9x_sched_msgout %x %d ", 0x0020, 1786);} while (0); do { if (ncr53c9x_debug & 0x100) printf("<cmd:0x%x %d>", (unsigned)0x1a, 1786); sc->sc_lastcmd = 0x1a; (*(sc)->sc_glue->gl_write_reg)((sc), (0x03), (0x1a)); } while (0); sc->sc_flags |= 0x40; sc->sc_msgpriq |= (0x0020); } while (0);
  break;
 }
 if (sc->sc_msgpriq)
  do { if (ncr53c9x_debug & 0x100) printf("<cmd:0x%x %d>", (unsigned)0x1a, 1792); sc->sc_lastcmd = 0x1a; (*(sc)->sc_glue->gl_write_reg)((sc), (0x03), (0x1a)); } while (0);
 do { if (ncr53c9x_debug & 0x100) printf("<cmd:0x%x %d>", (unsigned)0x12, 1795); sc->sc_lastcmd = 0x12; (*(sc)->sc_glue->gl_write_reg)((sc), (0x03), (0x12)); } while (0);
 sc->sc_flags &= ~0x01;
 sc->sc_imlen = 0;
}
void
ncr53c9x_msgout(sc)
 struct ncr53c9x_softc *sc;
{
 struct ncr53c9x_tinfo *ti;
 struct ncr53c9x_ecb *ecb;
 size_t size;
 do {if (ncr53c9x_debug & 0x10) printf ("[ncr53c9x_msgout(priq:%x, prevphase:%x)]", sc->sc_msgpriq, sc->sc_prevphase);} while (0);
 if (sc->sc_flags & 0x40) {
  if (sc->sc_prevphase != (0x04|0x02)) {
  new:
   do { if (ncr53c9x_debug & 0x100) printf("<cmd:0x%x %d>", (unsigned)0x01, 1827); sc->sc_lastcmd = 0x01; (*(sc)->sc_glue->gl_write_reg)((sc), (0x03), (0x01)); } while (0);
   sc->sc_msgoutq = 0;
   sc->sc_omlen = 0;
  }
 } else {
  if (sc->sc_prevphase == (0x04|0x02)) {
   do { do {if (ncr53c9x_debug & 0x08) printf ("ncr53c9x_sched_msgout %x %d ", sc->sc_msgoutq, 1834);} while (0); do { if (ncr53c9x_debug & 0x100) printf("<cmd:0x%x %d>", (unsigned)0x1a, 1834); sc->sc_lastcmd = 0x1a; (*(sc)->sc_glue->gl_write_reg)((sc), (0x03), (0x1a)); } while (0); sc->sc_flags |= 0x40; sc->sc_msgpriq |= (sc->sc_msgoutq); } while (0);
   goto new;
  } else {
   printf("%s at line %d: unexpected MESSAGE OUT phase\n",
       sc->sc_dev.dv_xname, 1838);
  }
 }
 if (sc->sc_omlen == 0) {
  sc->sc_msgout = sc->sc_msgpriq & -sc->sc_msgpriq;
  sc->sc_msgoutq |= sc->sc_msgout;
  sc->sc_msgpriq &= ~sc->sc_msgout;
  sc->sc_omlen = 1;
  switch (sc->sc_msgout) {
  case 0x0080:
   ecb = sc->sc_nexus;
   ti = &sc->sc_tinfo[ecb->xs->sc_link->target];
   sc->sc_omess[0] = 0x01;
   sc->sc_omess[1] = 3;
   sc->sc_omess[2] = 0x01;
   sc->sc_omess[3] = ti->period;
   sc->sc_omess[4] = ti->offset;
   sc->sc_omlen = 5;
   if ((sc->sc_flags & 0x08) == 0) {
    ti->flags |= 0x08;
    ncr53c9x_setsync(sc, ti);
   }
   break;
  case 0x0040:
   ecb = sc->sc_nexus;
   ti = &sc->sc_tinfo[ecb->xs->sc_link->target];
   sc->sc_omess[0] = 0x01;
   sc->sc_omess[1] = 2;
   sc->sc_omess[2] = 0x03;
   sc->sc_omess[3] = ti->width;
   sc->sc_omlen = 4;
   break;
  case 0x0010:
   if (sc->sc_state != 5) {
    printf("%s at line %d: no nexus\n",
        sc->sc_dev.dv_xname, 1875);
   }
   ecb = sc->sc_nexus;
   sc->sc_omess[0] =
       (((0) ? 0xc0 : 0x80) | (ecb->xs->sc_link->lun));
   break;
  case 0x0100:
   if (sc->sc_state != 5) {
    printf("%s at line %d: no nexus\n",
        sc->sc_dev.dv_xname, 1884);
   }
   ecb = sc->sc_nexus;
   sc->sc_omess[0] = ecb->tag[0];
   sc->sc_omess[1] = ecb->tag[1];
   sc->sc_omlen = 2;
   break;
  case 0x0001:
   sc->sc_flags |= 0x02;
   sc->sc_omess[0] = 0x0c;
   ecb = sc->sc_nexus;
   ti = &sc->sc_tinfo[ecb->xs->sc_link->target];
   ti->flags &= ~0x08;
   if ((ti->flags & 0x10) == 0)
    ti->flags |= 0x02;
   break;
  case 0x0002:
   sc->sc_omess[0] = 0x09;
   break;
  case 0x0020:
   sc->sc_flags |= 0x02;
   sc->sc_omess[0] = 0x06;
   break;
  case 0x0004:
   sc->sc_omess[0] = 0x05;
   break;
  case 0x0008:
   sc->sc_omess[0] = 0x07;
   break;
  default:
   sc->sc_flags &= ~0x40;
   sc->sc_omess[0] = 0x08;
   break;
  }
  sc->sc_omp = sc->sc_omess;
 }
 if (sc->sc_rev == 9) {
  ncr53c9x_flushfifo(sc);
  ncr53c9x_wrfifo(sc, sc->sc_omp, sc->sc_omlen);
  sc->sc_cmdlen = 0;
  do { if (ncr53c9x_debug & 0x100) printf("<cmd:0x%x %d>", (unsigned)0x10, 1950); sc->sc_lastcmd = 0x10; (*(sc)->sc_glue->gl_write_reg)((sc), (0x03), (0x10)); } while (0);
 } else {
  size = min(sc->sc_omlen, sc->sc_maxxfer);
  (*(sc)->sc_glue->gl_dma_setup)((sc), (&sc->sc_omp), (&sc->sc_omlen), (0), (&size));
  do { (*((sc))->sc_glue->gl_write_reg)(((sc)), (0x00), ((size))); (*((sc))->sc_glue->gl_write_reg)(((sc)), (0x01), ((size) >> 8)); if ((sc->sc_cfg2 & 0x40) || (sc->sc_rev == 9)) { (*((sc))->sc_glue->gl_write_reg)(((sc)), (0x0e), ((size) >> 16)); } if (sc->sc_rev == 9) { (*(sc)->sc_glue->gl_write_reg)((sc), (0xf), (0)); } } while (0);
  do { if (ncr53c9x_debug & 0x100) printf("<cmd:0x%x %d>", (unsigned)0x00|0x80, 1959); sc->sc_lastcmd = 0x00|0x80; (*(sc)->sc_glue->gl_write_reg)((sc), (0x03), (0x00|0x80)); } while (0);
  do { if (ncr53c9x_debug & 0x100) printf("<cmd:0x%x %d>", (unsigned)0x10|0x80, 1960); sc->sc_lastcmd = 0x10|0x80; (*(sc)->sc_glue->gl_write_reg)((sc), (0x03), (0x10|0x80)); } while (0);
  (*(sc)->sc_glue->gl_dma_go)((sc));
 }
}
int sdebug = 0;
int
ncr53c9x_intr(arg)
 void *arg;
{
 struct ncr53c9x_softc *sc = arg;
 struct ncr53c9x_ecb *ecb;
 struct scsi_link *sc_link;
 struct ncr53c9x_tinfo *ti;
 size_t size;
 int nfifo;
 do {if (ncr53c9x_debug & 0x10) printf ("[ncr53c9x_intr: state %d] ", sc->sc_state);} while (0);
 if (!(*(sc)->sc_glue->gl_dma_isintr)((sc)))
  return (0);
again:
 ncr53c9x_readregs(sc);
 if (sc->sc_espintr & 0x80) {
  if ((*(sc)->sc_glue->gl_read_reg)((sc), (0x07)) & 0x1f) {
   do { if (ncr53c9x_debug & 0x100) printf("<cmd:0x%x %d>", (unsigned)0x01, 2015); sc->sc_lastcmd = 0x01; (*(sc)->sc_glue->gl_write_reg)((sc), (0x03), (0x01)); } while (0);
   delay(1);
  }
  if (sc->sc_state != 9) {
   printf("%s: SCSI bus reset\n",
    sc->sc_dev.dv_xname);
   ncr53c9x_init(sc, 0);
   return (1);
  }
  if (sc->sc_nexus)
   panic("%s: nexus in reset state",
        sc->sc_dev.dv_xname);
  goto sched;
 }
 ecb = sc->sc_nexus;
 if (sc->sc_espintr & (0x80|0x40) ||
     sc->sc_espstat & 0x40) {
  if (sc->sc_espstat & 0x40) {
   if ((*(sc)->sc_glue->gl_read_reg)((sc), (0x07)) & 0x1f) {
    do { if (ncr53c9x_debug & 0x100) printf("<cmd:0x%x %d>", (unsigned)0x01, 2045); sc->sc_lastcmd = 0x01; (*(sc)->sc_glue->gl_write_reg)((sc), (0x03), (0x01)); } while (0);
    delay(1);
   }
   if (sc->sc_state == 5 ||
       sc->sc_state == 2) {
    ecb->xs->error = 4;
    ncr53c9x_done(sc, ecb);
   }
   return (1);
  }
  if (sc->sc_espintr & 0x40) {
   if (sc->sc_flags & 0x80) {
    sc->sc_flags &= ~0x80;
    return (1);
   }
   printf("%s: illegal command: 0x%x "
       "(state %d, phase %x, prevphase %x)\n",
    sc->sc_dev.dv_xname, sc->sc_lastcmd,
    sc->sc_state, sc->sc_phase,
    sc->sc_prevphase);
   if ((*(sc)->sc_glue->gl_read_reg)((sc), (0x07)) & 0x1f) {
    do { if (ncr53c9x_debug & 0x100) printf("<cmd:0x%x %d>", (unsigned)0x01, 2078); sc->sc_lastcmd = 0x01; (*(sc)->sc_glue->gl_write_reg)((sc), (0x03), (0x01)); } while (0);
    delay(1);
   }
   ncr53c9x_init(sc, 1);
   return (1);
  }
 }
 sc->sc_flags &= ~0x80;
 if ((*(sc)->sc_glue->gl_dma_isactive)((sc))) {
  int r = (*(sc)->sc_glue->gl_dma_intr)((sc));
  if (r == -1) {
   printf("%s: DMA error; resetting\n",
    sc->sc_dev.dv_xname);
   ncr53c9x_init(sc, 1);
   return (1);
  }
  if ((*(sc)->sc_glue->gl_dma_isactive)((sc)))
   return (1);
  if ((sc->sc_espstat & 0x10) == 0) {
   if (sc->sc_state == 2)
            ;
   else if (sc->sc_prevphase == (0x04|0x02)){
    if (sc->sc_phase != (0x04|0x02|0x01))
        printf("%s: !TC on MSG OUT"
           " [intr %x, stat %x, step %d]"
           " prevphase %x, resid %lx\n",
     sc->sc_dev.dv_xname,
     sc->sc_espintr,
     sc->sc_espstat,
     sc->sc_espstep,
     sc->sc_prevphase,
     (u_long)sc->sc_omlen);
   } else if (sc->sc_dleft == 0) {
    printf("%s: !TC on DATA XFER"
           " [intr %x, stat %x, step %d]"
           " prevphase %x, resid %x\n",
     sc->sc_dev.dv_xname,
     sc->sc_espintr,
     sc->sc_espstat,
     sc->sc_espstep,
     sc->sc_prevphase,
     ecb?ecb->dleft:-1);
   }
  }
 }
 if (sc->sc_espstat & 0x20) {
  printf("%s: SCSI bus parity error\n", sc->sc_dev.dv_xname);
  if (sc->sc_prevphase == (0x04|0x02|0x01))
   do { do {if (ncr53c9x_debug & 0x08) printf ("ncr53c9x_sched_msgout %x %d ", 0x0002, 2161);} while (0); do { if (ncr53c9x_debug & 0x100) printf("<cmd:0x%x %d>", (unsigned)0x1a, 2161); sc->sc_lastcmd = 0x1a; (*(sc)->sc_glue->gl_write_reg)((sc), (0x03), (0x1a)); } while (0); sc->sc_flags |= 0x40; sc->sc_msgpriq |= (0x0002); } while (0);
  else
   do { do {if (ncr53c9x_debug & 0x08) printf ("ncr53c9x_sched_msgout %x %d ", 0x0004, 2163);} while (0); do { if (ncr53c9x_debug & 0x100) printf("<cmd:0x%x %d>", (unsigned)0x1a, 2163); sc->sc_lastcmd = 0x1a; (*(sc)->sc_glue->gl_write_reg)((sc), (0x03), (0x1a)); } while (0); sc->sc_flags |= 0x40; sc->sc_msgpriq |= (0x0004); } while (0);
 }
 if (sc->sc_espintr & 0x20) {
  sc->sc_msgify = 0;
  do {if (ncr53c9x_debug & 0x08) printf ("<DISC [intr %x, stat %x, step %d]>", sc->sc_espintr,sc->sc_espstat,sc->sc_espstep);} while (0);
  if ((*(sc)->sc_glue->gl_read_reg)((sc), (0x07)) & 0x1f) {
   do { if (ncr53c9x_debug & 0x100) printf("<cmd:0x%x %d>", (unsigned)0x01, 2171); sc->sc_lastcmd = 0x01; (*(sc)->sc_glue->gl_write_reg)((sc), (0x03), (0x01)); } while (0);
  }
  do { if (ncr53c9x_debug & 0x100) printf("<cmd:0x%x %d>", (unsigned)0x44, 2178); sc->sc_lastcmd = 0x44; (*(sc)->sc_glue->gl_write_reg)((sc), (0x03), (0x44)); } while (0);
  switch (sc->sc_state) {
  case 3:
   goto sched;
  case 2:
   ecb->xs->error = 3;
   goto finish;
  case 5:
   if ((sc->sc_flags & 0x08)) {
    if (ecb)
     sc_print_addr(ecb->xs->sc_link);
    printf("sync nego not completed!\n");
    ti = &sc->sc_tinfo[ecb->xs->sc_link->target];
    sc->sc_flags &= ~0x08;
    ti->flags &= ~(0x02 | 0x08);
   }
   if ((sc->sc_flags & 0x02) == 0) {
    printf("%s: unexpected disconnect; ",
        sc->sc_dev.dv_xname);
    if (ecb->flags & 0x04) {
     printf("resetting\n");
     goto reset;
    }
    printf("sending REQUEST SENSE\n");
    timeout_del(&ecb->to);
    ncr53c9x_sense(sc, ecb);
    goto out;
   }
   ecb->xs->error = 4;
   goto finish;
  case 6:
   sc->sc_nexus = ((void *)0);
   goto sched;
  case 7:
   goto finish;
  }
 }
 switch (sc->sc_state) {
 case 9:
  printf("%s: waiting for SCSI Bus Reset to happen\n",
   sc->sc_dev.dv_xname);
  return (1);
 case 3:
  if (sc->sc_phase != (0x04|0x02|0x01)) {
   printf("%s: target didn't identify\n",
    sc->sc_dev.dv_xname);
   ncr53c9x_init(sc, 1);
   return (1);
  }
printf("<<RESELECT CONT'd>>");
  break;
 case 4:
  ecb = sc->sc_nexus;
  if (sc->sc_phase != (0x04|0x02|0x01)) {
   int i = ((*(sc)->sc_glue->gl_read_reg)((sc), (0x07))
       & 0x1f);
   printf("%s: target didn't send tag: %d bytes in fifo\n",
       sc->sc_dev.dv_xname, i);
   while (i-- > 0)
    printf("[%d] ", (*(sc)->sc_glue->gl_read_reg)((sc), (0x02)));
   ncr53c9x_init(sc, 1);
   return (1);
  } else
   goto msgin;
  break;
 case 1:
 case 2:
  ecb = sc->sc_nexus;
  if (sc->sc_espintr & 0x04) {
   sc->sc_msgpriq = sc->sc_msgout = sc->sc_msgoutq = 0;
   sc->sc_flags = 0;
   if (sc->sc_state == 2) {
    do {if (ncr53c9x_debug & 0x08) printf ("backoff selector ");} while (0);
    timeout_del(&ecb->to);
    ncr53c9x_dequeue(sc, ecb);
    do { if (((ecb)->chain.tqe_next = (&sc->ready_list)->tqh_first) != ((void *)0)) (&sc->ready_list)->tqh_first->chain.tqe_prev = &(ecb)->chain.tqe_next; else (&sc->ready_list)->tqh_last = &(ecb)->chain.tqe_next; (&sc->ready_list)->tqh_first = (ecb); (ecb)->chain.tqe_prev = &(&sc->ready_list)->tqh_first; } while (0);
    ecb->flags |= 0x02;
    ecb = sc->sc_nexus = ((void *)0);
   }
   sc->sc_state = 3;
   if (sc->sc_phase != (0x04|0x02|0x01)) {
    printf("%s: target didn't identify\n",
     sc->sc_dev.dv_xname);
    ncr53c9x_init(sc, 1);
    return (1);
   }
   nfifo = ncr53c9x_rdfifo(sc, 0);
   if (nfifo < 2 ||
       (nfifo > 2 &&
        sc->sc_rev != 0)) {
    printf("%s: RESELECT: "
        "%d bytes in FIFO! "
        "[intr %x, stat %x, step %d, prevphase %x]\n",
     sc->sc_dev.dv_xname,
     nfifo,
     sc->sc_espintr,
     sc->sc_espstat,
     sc->sc_espstep,
     sc->sc_prevphase);
    ncr53c9x_init(sc, 1);
    return (1);
   }
   sc->sc_selid = sc->sc_imess[0];
   do {if (ncr53c9x_debug & 0x08) printf ("selid=%2x ", sc->sc_selid);} while (0);
   ncr53c9x_msgin(sc);
   if (nfifo != 2) {
    sc->sc_flags |= 0x80;
    do { if (ncr53c9x_debug & 0x100) printf("<cmd:0x%x %d>", (unsigned)0x01, 2353); sc->sc_lastcmd = 0x01; (*(sc)->sc_glue->gl_write_reg)((sc), (0x03), (0x01)); } while (0);
   } else if (sc->sc_features & 0x04 &&
       sc->sc_rev == 0) {
    sc->sc_flags |= 0x80;
   }
   if (sc->sc_state != 5 &&
       sc->sc_state != 4) {
    printf("%s: identify failed, state %d, intr %02x\n",
     sc->sc_dev.dv_xname, sc->sc_state,
        sc->sc_espintr);
    ncr53c9x_init(sc, 1);
    return (1);
   }
   goto shortcut;
  }
  if ((sc->sc_espintr & (0x08|0x10)) == (0x08|0x10)) {
   ecb = sc->sc_nexus;
   if (!ecb)
    panic("ncr53c9x: no nexus");
   sc_link = ecb->xs->sc_link;
   ti = &sc->sc_tinfo[sc_link->target];
   switch (sc->sc_espstep) {
   case 0:
    do { if (ncr53c9x_debug & 0x100) printf("<cmd:0x%x %d>", (unsigned)0x1b, 2395); sc->sc_lastcmd = 0x1b; (*(sc)->sc_glue->gl_write_reg)((sc), (0x03), (0x1b)); } while (0);
    break;
   case 1:
    if ((ti->flags & 0x02) == 0 &&
        ecb->tag[0] == 0) {
     printf("%s: step 1 & !NEG\n",
      sc->sc_dev.dv_xname);
     goto reset;
    }
    if (sc->sc_phase != (0x04|0x02)) {
     printf("%s: !MSGOUT\n",
      sc->sc_dev.dv_xname);
     goto reset;
    }
    if (ti->flags & 0x80) {
     do { do {if (ncr53c9x_debug & 0x08) printf ("ncr53c9x_sched_msgout %x %d ", 0x0040, 2410);} while (0); do { if (ncr53c9x_debug & 0x100) printf("<cmd:0x%x %d>", (unsigned)0x1a, 2410); sc->sc_lastcmd = 0x1a; (*(sc)->sc_glue->gl_write_reg)((sc), (0x03), (0x1a)); } while (0); sc->sc_flags |= 0x40; sc->sc_msgpriq |= (0x0040); } while (0);
    }
    if (ti->flags & 0x02) {
     ti->period = sc->sc_minsync;
     ti->offset = 15;
     sc->sc_flags |= 0x08;
     if (ecb->tag[0])
      do { do {if (ncr53c9x_debug & 0x08) printf ("ncr53c9x_sched_msgout %x %d ", 0x0100|0x0080, 2418);} while (0); do { if (ncr53c9x_debug & 0x100) printf("<cmd:0x%x %d>", (unsigned)0x1a, 2418); sc->sc_lastcmd = 0x1a; (*(sc)->sc_glue->gl_write_reg)((sc), (0x03), (0x1a)); } while (0); sc->sc_flags |= 0x40; sc->sc_msgpriq |= (0x0100|0x0080); } while (0);
     else
      do { do {if (ncr53c9x_debug & 0x08) printf ("ncr53c9x_sched_msgout %x %d ", 0x0080, 2420);} while (0); do { if (ncr53c9x_debug & 0x100) printf("<cmd:0x%x %d>", (unsigned)0x1a, 2420); sc->sc_lastcmd = 0x1a; (*(sc)->sc_glue->gl_write_reg)((sc), (0x03), (0x1a)); } while (0); sc->sc_flags |= 0x40; sc->sc_msgpriq |= (0x0080); } while (0);
    } else {
     do { do {if (ncr53c9x_debug & 0x08) printf ("ncr53c9x_sched_msgout %x %d ", 0x0100, 2423);} while (0); do { if (ncr53c9x_debug & 0x100) printf("<cmd:0x%x %d>", (unsigned)0x1a, 2423); sc->sc_lastcmd = 0x1a; (*(sc)->sc_glue->gl_write_reg)((sc), (0x03), (0x1a)); } while (0); sc->sc_flags |= 0x40; sc->sc_msgpriq |= (0x0100); } while (0);
    }
    sc->sc_prevphase = (0x04|0x02);
    break;
   case 3:
    if (sc->sc_features & 0x04) {
     if (sc->sc_cmdlen == 0)
      break;
    } else if (((*(sc)->sc_glue->gl_read_reg)((sc), (0x07))
         & 0x1f) == 0) {
     break;
    }
    printf("(%s:%d:%d): selection failed;"
     " %d left in FIFO "
     "[intr %x, stat %x, step %d]\n",
     sc->sc_dev.dv_xname,
     sc_link->target,
     sc_link->lun,
     (*(sc)->sc_glue->gl_read_reg)((sc), (0x07))
      & 0x1f,
     sc->sc_espintr, sc->sc_espstat,
     sc->sc_espstep);
    do { if (ncr53c9x_debug & 0x100) printf("<cmd:0x%x %d>", (unsigned)0x01, 2455); sc->sc_lastcmd = 0x01; (*(sc)->sc_glue->gl_write_reg)((sc), (0x03), (0x01)); } while (0);
    do { do {if (ncr53c9x_debug & 0x08) printf ("ncr53c9x_sched_msgout %x %d ", 0x0020, 2456);} while (0); do { if (ncr53c9x_debug & 0x100) printf("<cmd:0x%x %d>", (unsigned)0x1a, 2456); sc->sc_lastcmd = 0x1a; (*(sc)->sc_glue->gl_write_reg)((sc), (0x03), (0x1a)); } while (0); sc->sc_flags |= 0x40; sc->sc_msgpriq |= (0x0020); } while (0);
    return (1);
   case 2:
    do { if (ncr53c9x_debug & 0x100) printf("<cmd:0x%x %d>", (unsigned)0x01, 2460); sc->sc_lastcmd = 0x01; (*(sc)->sc_glue->gl_write_reg)((sc), (0x03), (0x01)); } while (0);
    break;
   case 4:
    if (sc->sc_features & 0x04 &&
        sc->sc_cmdlen != 0)
     printf("(%s:%d:%d): select; "
            "%lu left in DMA buffer "
     "[intr %x, stat %x, step %d]\n",
      sc->sc_dev.dv_xname,
      sc_link->target,
      sc_link->lun,
      (u_long)sc->sc_cmdlen,
      sc->sc_espintr,
      sc->sc_espstat,
      sc->sc_espstep);
    break;
   }
   sc->sc_prevphase = 0x101;
   sc->sc_dp = ecb->daddr;
   sc->sc_dleft = ecb->dleft;
   sc->sc_state = 5;
   break;
  } else {
   printf("%s: unexpected status after select"
    ": [intr %x, stat %x, step %x]\n",
    sc->sc_dev.dv_xname,
    sc->sc_espintr, sc->sc_espstat,
    sc->sc_espstep);
   do { if (ncr53c9x_debug & 0x100) printf("<cmd:0x%x %d>", (unsigned)0x01, 2493); sc->sc_lastcmd = 0x01; (*(sc)->sc_glue->gl_write_reg)((sc), (0x03), (0x01)); } while (0);
   delay(1);
   goto reset;
  }
  if (sc->sc_state == 1) {
   printf("%s: stray interrupt\n",
       sc->sc_dev.dv_xname);
    return (0);
  }
  break;
 case 5:
  if (sc->sc_flags & 0x10) {
   u_char msg;
   sc->sc_flags &= ~0x10;
   if (!(sc->sc_espintr & (0x08|0x10))) {
    printf("%s: ICCS: "
          ": [intr %x, stat %x, step %x]\n",
     sc->sc_dev.dv_xname,
     sc->sc_espintr, sc->sc_espstat,
     sc->sc_espstep);
   }
   ncr53c9x_rdfifo(sc, 0);
   if (sc->sc_imlen < 2)
    printf("%s: can't get status, only %d bytes\n",
        sc->sc_dev.dv_xname, (int)sc->sc_imlen);
   ecb->stat = sc->sc_imess[sc->sc_imlen - 2];
   msg = sc->sc_imess[sc->sc_imlen - 1];
   do {if (ncr53c9x_debug & 0x40) printf ("<stat:(%x,%x)>", ecb->stat, msg);}while (0);
   if (msg == 0x00) {
    ecb->dleft = (ecb->flags & 0x100)
     ? 0
     : sc->sc_dleft;
    if ((ecb->flags & 0x04) == 0)
     ecb->xs->resid = ecb->dleft;
    sc->sc_state = 7;
   } else
    printf("%s: STATUS_PHASE: msg %d\n",
     sc->sc_dev.dv_xname, msg);
   sc->sc_imlen = 0;
   do { if (ncr53c9x_debug & 0x100) printf("<cmd:0x%x %d>", (unsigned)0x12, 2536); sc->sc_lastcmd = 0x12; (*(sc)->sc_glue->gl_write_reg)((sc), (0x03), (0x12)); } while (0);
   goto shortcut;
  }
  break;
 default:
  printf("%s: invalid state: %d\n",
        sc->sc_dev.dv_xname,
        sc->sc_state);
  ncr53c9x_scsi_reset(sc);
  goto out;
  break;
 }
 if (sc->sc_state != 5 || ecb == ((void *)0)) {
  panic("ncr53c9x no nexus");
 }
 switch (sc->sc_phase) {
 case (0x04|0x02):
  do {if (ncr53c9x_debug & 0x40) printf ("MESSAGE_OUT_PHASE ");}while (0);
  ncr53c9x_msgout(sc);
  sc->sc_prevphase = (0x04|0x02);
  break;
 case (0x04|0x02|0x01):
msgin:
  do {if (ncr53c9x_debug & 0x40) printf ("MESSAGE_IN_PHASE ");}while (0);
  if (sc->sc_espintr & 0x10) {
   if ((sc->sc_rev != 9) ||
       !(sc->sc_espstat2 & 0x80)) {
    do { if (ncr53c9x_debug & 0x100) printf("<cmd:0x%x %d>", (unsigned)0x01, 2570); sc->sc_lastcmd = 0x01; (*(sc)->sc_glue->gl_write_reg)((sc), (0x03), (0x01)); } while (0);
   }
   sc->sc_flags |= 0x20;
   do { if (ncr53c9x_debug & 0x100) printf("<cmd:0x%x %d>", (unsigned)0x10, 2573); sc->sc_lastcmd = 0x10; (*(sc)->sc_glue->gl_write_reg)((sc), (0x03), (0x10)); } while (0);
  } else if (sc->sc_espintr & 0x08) {
   if ((sc->sc_flags & 0x20) == 0) {
    printf("%s: MSGIN: unexpected FC bit: "
     "[intr %x, stat %x, step %x]\n",
    sc->sc_dev.dv_xname,
    sc->sc_espintr, sc->sc_espstat,
    sc->sc_espstep);
   }
   sc->sc_flags &= ~0x20;
   ncr53c9x_rdfifo(sc,
       (sc->sc_prevphase == sc->sc_phase) ?
       1 : 0);
   ncr53c9x_msgin(sc);
  } else {
   printf("%s: MSGIN: weird bits: "
    "[intr %x, stat %x, step %x]\n",
    sc->sc_dev.dv_xname,
    sc->sc_espintr, sc->sc_espstat,
    sc->sc_espstep);
  }
  sc->sc_prevphase = (0x04|0x02|0x01);
  goto shortcut;
  break;
 case (0x02):
  do {if (ncr53c9x_debug & 0x40) printf ("COMMAND_PHASE 0x%02x (%d) ", ecb->cmd.cmd.opcode, ecb->clen);}while (0);
  if ((*(sc)->sc_glue->gl_read_reg)((sc), (0x07)) & 0x1f) {
   do { if (ncr53c9x_debug & 0x100) printf("<cmd:0x%x %d>", (unsigned)0x01, 2609); sc->sc_lastcmd = 0x01; (*(sc)->sc_glue->gl_write_reg)((sc), (0x03), (0x01)); } while (0);
  }
  if (sc->sc_features & 0x04) {
   size = ecb->clen;
   sc->sc_cmdlen = size;
   sc->sc_cmdp = (caddr_t)&ecb->cmd.cmd;
   (*(sc)->sc_glue->gl_dma_setup)((sc), (&sc->sc_cmdp), (&sc->sc_cmdlen), (0), (&size));
   do { (*((sc))->sc_glue->gl_write_reg)(((sc)), (0x00), ((size))); (*((sc))->sc_glue->gl_write_reg)(((sc)), (0x01), ((size) >> 8)); if ((sc->sc_cfg2 & 0x40) || (sc->sc_rev == 9)) { (*((sc))->sc_glue->gl_write_reg)(((sc)), (0x0e), ((size) >> 16)); } if (sc->sc_rev == 9) { (*(sc)->sc_glue->gl_write_reg)((sc), (0xf), (0)); } } while (0);
   do { if (ncr53c9x_debug & 0x100) printf("<cmd:0x%x %d>", (unsigned)0x00|0x80, 2623); sc->sc_lastcmd = 0x00|0x80; (*(sc)->sc_glue->gl_write_reg)((sc), (0x03), (0x00|0x80)); } while (0);
   do { if (ncr53c9x_debug & 0x100) printf("<cmd:0x%x %d>", (unsigned)0x10 | 0x80, 2626); sc->sc_lastcmd = 0x10 | 0x80; (*(sc)->sc_glue->gl_write_reg)((sc), (0x03), (0x10 | 0x80)); } while (0);
   (*(sc)->sc_glue->gl_dma_go)((sc));
  } else {
   ncr53c9x_wrfifo(sc, (u_char *)&ecb->cmd.cmd, ecb->clen);
   sc->sc_cmdlen = 0;
   do { if (ncr53c9x_debug & 0x100) printf("<cmd:0x%x %d>", (unsigned)0x10, 2631); sc->sc_lastcmd = 0x10; (*(sc)->sc_glue->gl_write_reg)((sc), (0x03), (0x10)); } while (0);
  }
  sc->sc_prevphase = (0x02);
  break;
 case (0):
  do {if (ncr53c9x_debug & 0x40) printf ("DATA_OUT_PHASE [%ld] ",(long)sc->sc_dleft);}while (0);
  do { if (ncr53c9x_debug & 0x100) printf("<cmd:0x%x %d>", (unsigned)0x01, 2637); sc->sc_lastcmd = 0x01; (*(sc)->sc_glue->gl_write_reg)((sc), (0x03), (0x01)); } while (0);
  size = min(sc->sc_dleft, sc->sc_maxxfer);
  (*(sc)->sc_glue->gl_dma_setup)((sc), (&sc->sc_dp), (&sc->sc_dleft), (0), (&size));
  sc->sc_prevphase = (0);
  goto setup_xfer;
 case (0x01):
  do {if (ncr53c9x_debug & 0x40) printf ("DATA_IN_PHASE ");}while (0);
  if (sc->sc_rev == 0)
   do { if (ncr53c9x_debug & 0x100) printf("<cmd:0x%x %d>", (unsigned)0x01, 2646); sc->sc_lastcmd = 0x01; (*(sc)->sc_glue->gl_write_reg)((sc), (0x03), (0x01)); } while (0);
  size = min(sc->sc_dleft, sc->sc_maxxfer);
  (*(sc)->sc_glue->gl_dma_setup)((sc), (&sc->sc_dp), (&sc->sc_dleft), (1), (&size));
  sc->sc_prevphase = (0x01);
 setup_xfer:
  ecb->flags &= ~0x100;
  do { (*((sc))->sc_glue->gl_write_reg)(((sc)), (0x00), ((size))); (*((sc))->sc_glue->gl_write_reg)(((sc)), (0x01), ((size) >> 8)); if ((sc->sc_cfg2 & 0x40) || (sc->sc_rev == 9)) { (*((sc))->sc_glue->gl_write_reg)(((sc)), (0x0e), ((size) >> 16)); } if (sc->sc_rev == 9) { (*(sc)->sc_glue->gl_write_reg)((sc), (0xf), (0)); } } while (0);
  do { if (ncr53c9x_debug & 0x100) printf("<cmd:0x%x %d>", (unsigned)0x00|0x80, 2659); sc->sc_lastcmd = 0x00|0x80; (*(sc)->sc_glue->gl_write_reg)((sc), (0x03), (0x00|0x80)); } while (0);
  do { if (ncr53c9x_debug & 0x100) printf("<cmd:0x%x %d>", (unsigned)(size==0?0x18:0x10)|0x80, 2669); sc->sc_lastcmd = (size==0?0x18:0x10)|0x80; (*(sc)->sc_glue->gl_write_reg)((sc), (0x03), ((size==0?0x18:0x10)|0x80)); } while (0);
  (*(sc)->sc_glue->gl_dma_go)((sc));
  return (1);
 case (0x02|0x01):
  do {if (ncr53c9x_debug & 0x40) printf ("STATUS_PHASE ");}while (0);
  sc->sc_flags |= 0x10;
  do { if (ncr53c9x_debug & 0x100) printf("<cmd:0x%x %d>", (unsigned)0x11, 2675); sc->sc_lastcmd = 0x11; (*(sc)->sc_glue->gl_write_reg)((sc), (0x03), (0x11)); } while (0);
  sc->sc_prevphase = (0x02|0x01);
  goto shortcut;
  break;
 case 0x101:
  break;
 default:
  printf("%s: unexpected bus phase; resetting\n",
      sc->sc_dev.dv_xname);
  goto reset;
 }
out:
 return (1);
reset:
 ncr53c9x_init(sc, 1);
 goto out;
finish:
 ncr53c9x_done(sc, ecb);
 goto out;
sched:
 sc->sc_state = 1;
 ncr53c9x_sched(sc);
 goto out;
shortcut:
 {
  struct timeval wait, cur;
  microtime(&wait);
  wait.tv_usec += 50/sc->sc_freq;
  if (wait.tv_usec > 1000000) {
   wait.tv_sec++;
   wait.tv_usec -= 1000000;
  }
  do {
   if ((*(sc)->sc_glue->gl_dma_isintr)((sc)))
    goto again;
   microtime(&cur);
  } while ((((&cur)->tv_sec == (&wait)->tv_sec) ? ((&cur)->tv_usec <= (&wait)->tv_usec) : ((&cur)->tv_sec <= (&wait)->tv_sec)));
 }
 goto out;
}
void
ncr53c9x_abort(sc, ecb)
 struct ncr53c9x_softc *sc;
 struct ncr53c9x_ecb *ecb;
{
 ecb->timeout = 2000;
 ecb->flags |= 0x40;
 if (ecb == sc->sc_nexus) {
  int timeout = ecb->timeout;
  if (sc->sc_state == 5)
   do { do {if (ncr53c9x_debug & 0x08) printf ("ncr53c9x_sched_msgout %x %d ", 0x0020, 2749);} while (0); do { if (ncr53c9x_debug & 0x100) printf("<cmd:0x%x %d>", (unsigned)0x1a, 2749); sc->sc_lastcmd = 0x1a; (*(sc)->sc_glue->gl_write_reg)((sc), (0x03), (0x1a)); } while (0); sc->sc_flags |= 0x40; sc->sc_msgpriq |= (0x0020); } while (0);
  if (timeout > 1000000)
   timeout = (timeout / 1000) * hz;
  else
   timeout = (timeout * hz) / 1000;
  timeout_add(&ecb->to, timeout);
 } else {
  if (sc->sc_state == 1)
   ncr53c9x_sched(sc);
 }
}
void
ncr53c9x_timeout(arg)
 void *arg;
{
 struct ncr53c9x_ecb *ecb = arg;
 struct scsi_xfer *xs = ecb->xs;
 struct scsi_link *sc_link = xs->sc_link;
 struct ncr53c9x_softc *sc = sc_link->adapter_softc;
 struct ncr53c9x_tinfo *ti = &sc->sc_tinfo[sc_link->target];
 int s;
 sc_print_addr(sc_link);
 printf("timed out [ecb %p (flags 0x%x, dleft %x, stat %x)], "
        "<state %d, nexus %p, phase(l %x, c %x, p %x), resid %lx, "
        "msg(q %x,o %x) %s>",
  ecb, ecb->flags, ecb->dleft, ecb->stat,
  sc->sc_state, sc->sc_nexus,
  (*(sc)->sc_glue->gl_read_reg)((sc), (0x04)),
  sc->sc_phase, sc->sc_prevphase,
  (long)sc->sc_dleft, sc->sc_msgpriq, sc->sc_msgout,
  (*(sc)->sc_glue->gl_dma_isactive)((sc)) ? "DMA active" : "");
 s = _splraise(5);
 if (ecb->flags & 0x40) {
  printf(" AGAIN\n");
  ncr53c9x_init(sc, 1);
 } else {
  printf("\n");
  xs->error = 4;
  ncr53c9x_abort(sc, ecb);
  if (ecb == sc->sc_nexus &&
      (ti->flags & 0x08) != 0 &&
      (sc->sc_phase & (0x04|0x02)) == 0) {
   sc_print_addr(sc_link);
   printf("sync negotiation disabled\n");
   sc->sc_cfflags |= (1 << (sc_link->target + 16));
  }
 }
 _splx(s);
}
