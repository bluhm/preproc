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
struct ataparams {
    u_int16_t atap_config;
    u_int16_t atap_cylinders;
    u_int16_t __reserved1;
    u_int16_t atap_heads;
    u_int16_t __retired1[2];
    u_int16_t atap_sectors;
    u_int16_t __retired2[3];
    u_int8_t atap_serial[20];
    u_int16_t __retired3[2];
    u_int16_t __obsolete1;
    u_int8_t atap_revision[8];
    u_int8_t atap_model[40];
    u_int16_t atap_multi;
    u_int16_t __reserved2;
    u_int16_t atap_capabilities1;
    u_int16_t atap_capabilities2;
    u_int8_t atap_oldpiotiming;
    u_int8_t __junk2;
    u_int8_t atap_olddmatiming;
    u_int8_t __junk3;
    u_int16_t atap_extensions;
    u_int16_t atap_curcylinders;
    u_int16_t atap_curheads;
    u_int16_t atap_cursectors;
    u_int16_t atap_curcapacity[2];
    u_int16_t atap_curmulti;
    u_int16_t atap_capacity[2];
    u_int16_t __retired4;
    u_int8_t atap_dmamode_act;
    u_int8_t atap_dmamode_supp;
    u_int8_t __junk4;
    u_int8_t atap_piomode_supp;
    u_int16_t atap_dmatiming_mimi;
    u_int16_t atap_dmatiming_recom;
    u_int16_t atap_piotiming;
    u_int16_t atap_piotiming_iordy;
    u_int16_t __reserved3[2];
    u_int16_t atap_pkt_br;
    u_int16_t atap_pkt_bsyclr;
    u_int16_t __reserved4[2];
    u_int16_t atap_queuedepth;
    u_int16_t atap_sata_caps;
    u_int16_t atap_sata_reserved;
    u_int16_t atap_sata_features_supp;
    u_int16_t atap_sata_features_en;
    u_int16_t atap_ata_major;
    u_int16_t atap_ata_minor;
    u_int16_t atap_cmd_set1;
    u_int16_t atap_cmd_set2;
    u_int16_t atap_cmd_ext;
    u_int16_t atap_cmd1_en;
    u_int16_t atap_cmd2_en;
    u_int16_t atap_cmd_def;
    u_int8_t atap_udmamode_act;
    u_int8_t atap_udmamode_supp;
    u_int16_t atap_seu_time;
    u_int16_t atap_eseu_time;
    u_int16_t atap_apm_val;
    u_int16_t atap_mpasswd_rev;
    u_int16_t atap_hwreset_res;
    u_int8_t atap_acoustic_def;
    u_int8_t atap_acoustic_val;
    u_int16_t __reserved6[5];
    u_int16_t atap_max_lba[4];
    u_int16_t __reserved7[23];
    u_int16_t atap_rmsn_supp;
    u_int16_t atap_sec_st;
    u_int16_t __reserved8[31];
    u_int16_t atap_cfa_power;
    u_int16_t __reserved9[15];
    u_int8_t atap_media_serial[60];
    u_int16_t __reserved10[49];
    u_int8_t atap_checksum;
    u_int8_t atap_signature;
};
struct ata_drive_datas {
 u_int8_t drive;
 int8_t ata_vers;
 u_int16_t drive_flags;
 u_int8_t PIO_mode;
 u_int8_t DMA_mode;
 u_int8_t UDMA_mode;
 u_int8_t PIO_cap;
 u_int8_t DMA_cap;
 u_int8_t UDMA_cap;
 u_int8_t state;
 u_int8_t atapi_cap;
 u_int8_t n_resets;
 u_int8_t n_dmaerrs;
 u_int32_t n_xfers;
 char drive_name[31];
 int cf_flags;
 void *chnl_softc;
 struct ataparams id;
};
struct ata_atapi_attach {
    u_int8_t aa_type;
    u_int8_t aa_channel;
    u_int8_t aa_openings;
    struct ata_drive_datas *aa_drv_data;
    void *aa_bus_private;
};
struct wdc_command {
    u_int8_t r_command;
    u_int8_t r_head;
    u_int16_t r_cyl;
    u_int8_t r_sector;
    u_int8_t r_count;
    u_int8_t r_features;
    u_int8_t r_st_bmask;
    u_int8_t r_st_pmask;
    u_int8_t r_error;
    volatile u_int16_t flags;
    int timeout;
    void *data;
    int bcount;
    void (*callback)(void *);
    void *callback_arg;
};
extern int at_poll;
int wdc_exec_command(struct ata_drive_datas *, struct wdc_command*);
void wdc_probe_caps(struct ata_drive_datas*, struct ataparams *);
void wdc_print_caps(struct ata_drive_datas*);
int wdc_downgrade_mode(struct ata_drive_datas*);
void wdc_reset_channel(struct ata_drive_datas *, int);
int wdc_ata_addref(struct ata_drive_datas *);
void wdc_ata_delref(struct ata_drive_datas *);
void wdc_ata_kill_pending(struct ata_drive_datas *);
int ata_get_params(struct ata_drive_datas*, u_int8_t,
 struct ataparams *);
int ata_set_mode(struct ata_drive_datas*, u_int8_t, u_int8_t);
void ata_dmaerr(struct ata_drive_datas *);
void ata_perror(struct ata_drive_datas *, int, char *, size_t);
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
struct channel_queue {
 struct xferhead { struct wdc_xfer *tqh_first; struct wdc_xfer **tqh_last; } sc_xfer;
};
struct channel_softc_vtbl;
struct channel_softc {
 struct channel_softc_vtbl *_vtbl;
 int channel;
 struct wdc_softc *wdc;
 bus_space_tag_t cmd_iot;
 bus_space_handle_t cmd_ioh;
 bus_size_t cmd_iosz;
 bus_space_tag_t ctl_iot;
 bus_space_handle_t ctl_ioh;
 bus_size_t ctl_iosz;
 bus_space_tag_t data32iot;
 bus_space_handle_t data32ioh;
 int ch_flags;
 u_int8_t ch_status;
 u_int8_t ch_prev_log_status;
 u_int8_t ch_log_idx;
 u_int8_t ch_error;
 struct ata_drive_datas ch_drive[2];
 struct channel_queue *ch_queue;
 struct timeout ch_timo;
 int dying;
};
enum wdc_regs {
 wdr_error = 16 | 1,
 wdr_features = 32 | 1,
 wdr_seccnt = 2,
 wdr_ireason = 2,
 wdr_sector = 3,
 wdr_lba_lo = 3,
 wdr_cyl_lo = 4,
 wdr_lba_mi = 4,
 wdr_cyl_hi = 5,
 wdr_lba_hi = 5,
 wdr_sdh = 6,
 wdr_status = 16 | 7,
 wdr_command = 32 | 7,
 wdr_altsts = 16 | 8,
 wdr_ctlr = 32 | 8
};
struct channel_softc_vtbl {
 u_int8_t (*read_reg)(struct channel_softc *, enum wdc_regs reg64);
 void (*write_reg)(struct channel_softc *, enum wdc_regs reg64,
     u_int8_t var);
 void (*lba48_write_reg)(struct channel_softc *, enum wdc_regs reg64,
     u_int16_t var);
 void (*read_raw_multi_2)(struct channel_softc *,
     void *data, unsigned int nbytes);
 void (*write_raw_multi_2)(struct channel_softc *,
     void *data, unsigned int nbytes);
 void (*read_raw_multi_4)(struct channel_softc *,
     void *data, unsigned int nbytes);
 void (*write_raw_multi_4)(struct channel_softc *,
     void *data, unsigned int nbytes);
};
struct wdc_softc {
 struct device sc_dev;
 int cap;
 u_int8_t PIO_cap;
 u_int8_t DMA_cap;
 u_int8_t UDMA_cap;
 int nchannels;
 struct channel_softc **channels;
 u_int16_t quirks;
 void *dma_arg;
 int (*dma_init)(void *, int, int, void *, size_t,
                 int);
 void (*dma_start)(void *, int, int);
 int (*dma_finish)(void *, int, int, int);
 int dma_status;
 void (*set_modes)(struct channel_softc *);
 void (*irqack)(struct channel_softc *);
 void (*reset)(struct channel_softc *);
 void (*drv_probe)(struct channel_softc *);
};
struct atapi_return_args;
struct wdc_xfer {
 volatile u_int c_flags;
 struct channel_softc *chp;
 u_int8_t drive;
 void *cmd;
 void *databuf;
 int c_bcount;
 int c_skip;
 struct { struct wdc_xfer *tqe_next; struct wdc_xfer **tqe_prev; } c_xferchain;
 struct { struct wdc_xfer *le_next; struct wdc_xfer **le_prev; } free_list;
 void (*c_start)(struct channel_softc *, struct wdc_xfer *);
 int (*c_intr)(struct channel_softc *, struct wdc_xfer *, int);
        void (*c_kill_xfer)(struct channel_softc *, struct wdc_xfer *);
 volatile int endticks;
 struct timeout atapi_poll_to;
 void (*next)(struct channel_softc *, struct wdc_xfer *, int,
    struct atapi_return_args *);
 void (*c_done)(struct channel_softc *, struct wdc_xfer *, int,
    struct atapi_return_args *);
 int transfer_len;
};
int wdcprobe(struct channel_softc *);
void wdcattach(struct channel_softc *);
int wdcdetach(struct channel_softc *, int);
int wdcintr(void *);
struct channel_queue *wdc_alloc_queue(void);
void wdc_free_queue(struct channel_queue *);
void wdc_exec_xfer(struct channel_softc *, struct wdc_xfer *);
struct wdc_xfer *wdc_get_xfer(int);
void wdc_scrub_xfer(struct wdc_xfer *);
void wdc_free_xfer(struct channel_softc *, struct wdc_xfer *);
void wdcstart(struct channel_softc *);
int wdcreset(struct channel_softc *, int);
int wdc_wait_for_status(struct channel_softc *, int, int, int);
int wdc_dmawait(struct channel_softc *, struct wdc_xfer *, int);
void wdcbit_bucket(struct channel_softc *, int);
void wdccommand(struct channel_softc *, u_int8_t, u_int8_t, u_int16_t,
 u_int8_t, u_int8_t, u_int8_t, u_int8_t);
void wdccommandext(struct channel_softc *, u_int8_t, u_int8_t, u_int64_t,
 u_int16_t);
void wdccommandshort(struct channel_softc *, int, int);
void wdctimeout(void *arg);
void wdc_do_reset(struct channel_softc *);
int wdc_addref(struct channel_softc *);
void wdc_delref(struct channel_softc *);
void wdc_disable_intr(struct channel_softc *);
void wdc_enable_intr(struct channel_softc *);
int wdc_select_drive(struct channel_softc *, int, int);
void wdc_set_drive(struct channel_softc *, int drive);
void wdc_output_bytes(struct ata_drive_datas *drvp, void *, unsigned int);
void wdc_input_bytes(struct ata_drive_datas *drvp, void *, unsigned int);
void wdc_print_current_modes(struct channel_softc *);
int wdc_ioctl(struct ata_drive_datas *, u_long, caddr_t, int, struct proc *);
u_int8_t wdc_default_read_reg(struct channel_softc *,
  enum wdc_regs);
void wdc_default_write_reg(struct channel_softc *,
  enum wdc_regs, u_int8_t);
void wdc_default_lba48_write_reg(struct channel_softc *,
  enum wdc_regs, u_int16_t);
void wdc_default_read_raw_multi_2(struct channel_softc *,
  void *, unsigned int);
void wdc_default_write_raw_multi_2(struct channel_softc *,
  void *, unsigned int);
void wdc_default_read_raw_multi_4(struct channel_softc *,
  void *, unsigned int);
void wdc_default_write_raw_multi_4(struct channel_softc *,
  void *, unsigned int);
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
struct idedma_table {
 u_int32_t base_addr;
 u_int32_t byte_count;
};
struct pciide_softc {
 struct wdc_softc sc_wdcdev;
 pci_chipset_tag_t sc_pc;
 pcitag_t sc_tag;
 void *sc_pci_ih;
 int sc_dma_ok;
 bus_space_tag_t sc_dma_iot;
 bus_space_handle_t sc_dma_ioh;
 bus_size_t sc_dma_iosz;
 bus_dma_tag_t sc_dmat;
 bus_size_t sc_dma_maxsegsz;
 bus_size_t sc_dma_boundary;
 pcireg_t sc_save[6];
 pcireg_t sc_save2[6];
 const struct pciide_product_desc *sc_pp;
 void (*chip_unmap)(struct pciide_softc *, int);
 int sc_rev;
 struct channel_softc *wdc_chanarray[4];
 struct pciide_channel {
  struct channel_softc wdc_channel;
  const char *name;
  int hw_ok;
  int compat;
  int dma_in_progress;
  void *ih;
  bus_space_handle_t ctl_baseioh;
  struct pciide_dma_maps {
   bus_dmamap_t dmamap_table;
   struct idedma_table *dma_table;
   bus_dmamap_t dmamap_xfer;
   int dma_flags;
  } dma_maps[2];
  uint8_t idedma_cmd;
 } pciide_channels[4];
 void *sc_cookie;
 size_t sc_cookielen;
 u_int8_t (*sc_dmacmd_read)(struct pciide_softc *, int);
 void (*sc_dmacmd_write)(struct pciide_softc *, int, u_int8_t);
 u_int8_t (*sc_dmactl_read)(struct pciide_softc *, int);
 void (*sc_dmactl_write)(struct pciide_softc *, int, u_int8_t);
 void (*sc_dmatbl_write)(struct pciide_softc *, int, u_int32_t);
};
int pciide_mapregs_compat( struct pci_attach_args *,
     struct pciide_channel *, int, bus_size_t *, bus_size_t *);
int pciide_mapregs_native(struct pci_attach_args *,
     struct pciide_channel *, bus_size_t *, bus_size_t *,
     int (*pci_intr)(void *));
void pciide_mapreg_dma(struct pciide_softc *,
     struct pci_attach_args *);
int pciide_chansetup(struct pciide_softc *, int, pcireg_t);
void pciide_mapchan(struct pci_attach_args *,
     struct pciide_channel *, pcireg_t, bus_size_t *, bus_size_t *,
     int (*pci_intr)(void *));
int pciide_chan_candisable(struct pciide_channel *);
void pciide_map_compat_intr( struct pci_attach_args *,
     struct pciide_channel *, int, int);
void pciide_unmap_compat_intr( struct pci_attach_args *,
     struct pciide_channel *, int, int);
int pciide_compat_intr(void *);
int pciide_pci_intr(void *);
int pciide_intr_flag(struct pciide_channel *);
u_int8_t pciide_dmacmd_read(struct pciide_softc *, int);
void pciide_dmacmd_write(struct pciide_softc *, int, u_int8_t);
u_int8_t pciide_dmactl_read(struct pciide_softc *, int);
void pciide_dmactl_write(struct pciide_softc *, int, u_int8_t);
void pciide_dmatbl_write(struct pciide_softc *, int, u_int32_t);
void pciide_channel_dma_setup(struct pciide_channel *);
int pciide_dma_table_setup(struct pciide_softc *, int, int);
int pciide_dma_init(void *, int, int, void *, size_t, int);
void pciide_dma_start(void *, int, int);
int pciide_dma_finish(void *, int, int, int);
void pciide_irqack(struct channel_softc *);
void pciide_print_modes(struct pciide_channel *);
void pciide_print_channels(int, pcireg_t);
void default_chip_unmap(struct pciide_softc *, int);
void pciide_unmapreg_dma(struct pciide_softc *);
void pciide_chanfree(struct pciide_softc *, int);
void pciide_unmap_chan(struct pciide_softc *, struct pciide_channel *, int);
int pciide_unmapregs_compat(struct pciide_softc *,
      struct pciide_channel *);
int pciide_unmapregs_native(struct pciide_softc *,
      struct pciide_channel *);
int pciide_dma_table_free(struct pciide_softc *, int, int);
void pciide_channel_dma_free(struct pciide_channel *);
static int8_t piix_isp_pio[] = {0x00, 0x00, 0x01, 0x02, 0x02};
static int8_t piix_rtc_pio[] = {0x00, 0x00, 0x00, 0x01, 0x03};
static int8_t piix_isp_dma[] = {0x00, 0x02, 0x02};
static int8_t piix_rtc_dma[] = {0x00, 0x02, 0x03};
static int8_t piix4_sct_udma[] = {0x00, 0x01, 0x02, 0x01, 0x02, 0x01};
static const int8_t amd756_pio_set[] = {0x0a, 0x0a, 0x0a, 0x02, 0x02};
static const int8_t amd756_pio_rec[] = {0x08, 0x08, 0x08, 0x02, 0x00};
static const int8_t amd756_udma_tim[] =
    {0x02, 0x01, 0x00, 0x04, 0x05, 0x06, 0x07};
static int8_t apollo_udma133_tim[] = {0x07, 0x07, 0x06, 0x04, 0x02, 0x01, 0x00};
static int8_t apollo_udma100_tim[] = {0x07, 0x07, 0x04, 0x02, 0x01, 0x00};
static int8_t apollo_udma66_tim[] = {0x03, 0x03, 0x02, 0x01, 0x00};
static int8_t apollo_udma33_tim[] = {0x03, 0x02, 0x00};
static int8_t apollo_pio_set[] = {0x0a, 0x0a, 0x0a, 0x02, 0x02};
static int8_t apollo_pio_rec[] = {0x08, 0x08, 0x08, 0x02, 0x00};
static int8_t cmd0646_9_tim_udma[] = {0x03, 0x02, 0x01, 0x02, 0x01, 0x00};
static int8_t cmd0643_9_data_tim_pio[] = {0xA9, 0x57, 0x44, 0x32, 0x3F};
static int8_t cmd0643_9_data_tim_dma[] = {0x87, 0x32, 0x3F};
static const struct {
 bus_addr_t ba5_IDEDMA_CMD;
 bus_addr_t ba5_IDEDMA_CTL;
 bus_addr_t ba5_IDEDMA_TBL;
 bus_addr_t ba5_IDEDMA_CMD2;
 bus_addr_t ba5_IDEDMA_CTL2;
 bus_addr_t ba5_IDE_TF0;
 bus_addr_t ba5_IDE_TF1;
 bus_addr_t ba5_IDE_TF2;
 bus_addr_t ba5_IDE_TF3;
 bus_addr_t ba5_IDE_TF4;
 bus_addr_t ba5_IDE_TF5;
 bus_addr_t ba5_IDE_TF6;
 bus_addr_t ba5_IDE_TF7;
 bus_addr_t ba5_IDE_TF8;
 bus_addr_t ba5_IDE_RAD;
 bus_addr_t ba5_IDE_TF9;
 bus_addr_t ba5_IDE_TF10;
 bus_addr_t ba5_IDE_TF11;
 bus_addr_t ba5_IDE_TF12;
 bus_addr_t ba5_IDE_TF13;
 bus_addr_t ba5_IDE_TF14;
 bus_addr_t ba5_IDE_TF15;
 bus_addr_t ba5_IDE_TF16;
 bus_addr_t ba5_IDE_TF17;
 bus_addr_t ba5_IDE_TF18;
 bus_addr_t ba5_IDE_TF19;
 bus_addr_t ba5_IDE_RABC;
 bus_addr_t ba5_IDE_CMD_STS;
 bus_addr_t ba5_IDE_CFG_STS;
 bus_addr_t ba5_IDE_DTM;
 bus_addr_t ba5_SControl;
 bus_addr_t ba5_SStatus;
 bus_addr_t ba5_SError;
 bus_addr_t ba5_SActive;
 bus_addr_t ba5_SMisc;
 bus_addr_t ba5_PHY_CONFIG;
 bus_addr_t ba5_SIEN;
 bus_addr_t ba5_SFISCfg;
} satalink_ba5_regmap[] = {
 {
  .ba5_IDEDMA_CMD = 0x000,
  .ba5_IDEDMA_CTL = 0x002,
  .ba5_IDEDMA_TBL = 0x004,
  .ba5_IDEDMA_CMD2 = 0x010,
  .ba5_IDEDMA_CTL2 = 0x012,
  .ba5_IDE_TF0 = 0x080,
  .ba5_IDE_TF1 = 0x081,
  .ba5_IDE_TF2 = 0x082,
  .ba5_IDE_TF3 = 0x083,
  .ba5_IDE_TF4 = 0x084,
  .ba5_IDE_TF5 = 0x085,
  .ba5_IDE_TF6 = 0x086,
  .ba5_IDE_TF7 = 0x087,
  .ba5_IDE_TF8 = 0x08a,
  .ba5_IDE_RAD = 0x08c,
  .ba5_IDE_TF9 = 0x091,
  .ba5_IDE_TF10 = 0x092,
  .ba5_IDE_TF11 = 0x093,
  .ba5_IDE_TF12 = 0x094,
  .ba5_IDE_TF13 = 0x095,
  .ba5_IDE_TF14 = 0x096,
  .ba5_IDE_TF15 = 0x097,
  .ba5_IDE_TF16 = 0x098,
  .ba5_IDE_TF17 = 0x099,
  .ba5_IDE_TF18 = 0x09a,
  .ba5_IDE_TF19 = 0x09b,
  .ba5_IDE_RABC = 0x09c,
  .ba5_IDE_CMD_STS = 0x0a0,
  .ba5_IDE_CFG_STS = 0x0a1,
  .ba5_IDE_DTM = 0x0b4,
  .ba5_SControl = 0x100,
  .ba5_SStatus = 0x104,
  .ba5_SError = 0x108,
  .ba5_SActive = 0x10c,
  .ba5_SMisc = 0x140,
  .ba5_PHY_CONFIG = 0x144,
  .ba5_SIEN = 0x148,
  .ba5_SFISCfg = 0x14c,
 },
 {
  .ba5_IDEDMA_CMD = 0x008,
  .ba5_IDEDMA_CTL = 0x00a,
  .ba5_IDEDMA_TBL = 0x00c,
  .ba5_IDEDMA_CMD2 = 0x018,
  .ba5_IDEDMA_CTL2 = 0x01a,
  .ba5_IDE_TF0 = 0x0c0,
  .ba5_IDE_TF1 = 0x0c1,
  .ba5_IDE_TF2 = 0x0c2,
  .ba5_IDE_TF3 = 0x0c3,
  .ba5_IDE_TF4 = 0x0c4,
  .ba5_IDE_TF5 = 0x0c5,
  .ba5_IDE_TF6 = 0x0c6,
  .ba5_IDE_TF7 = 0x0c7,
  .ba5_IDE_TF8 = 0x0ca,
  .ba5_IDE_RAD = 0x0cc,
  .ba5_IDE_TF9 = 0x0d1,
  .ba5_IDE_TF10 = 0x0d2,
  .ba5_IDE_TF11 = 0x0d3,
  .ba5_IDE_TF12 = 0x0d4,
  .ba5_IDE_TF13 = 0x0d5,
  .ba5_IDE_TF14 = 0x0d6,
  .ba5_IDE_TF15 = 0x0d7,
  .ba5_IDE_TF16 = 0x0d8,
  .ba5_IDE_TF17 = 0x0d9,
  .ba5_IDE_TF18 = 0x0da,
  .ba5_IDE_TF19 = 0x0db,
  .ba5_IDE_RABC = 0x0dc,
  .ba5_IDE_CMD_STS = 0x0e0,
  .ba5_IDE_CFG_STS = 0x0e1,
  .ba5_IDE_DTM = 0x0f4,
  .ba5_SControl = 0x180,
  .ba5_SStatus = 0x184,
  .ba5_SError = 0x188,
  .ba5_SActive = 0x18c,
  .ba5_SMisc = 0x1c0,
  .ba5_PHY_CONFIG = 0x1c4,
  .ba5_SIEN = 0x1c8,
  .ba5_SFISCfg = 0x1cc,
 },
 {
  .ba5_IDEDMA_CMD = 0x200,
  .ba5_IDEDMA_CTL = 0x202,
  .ba5_IDEDMA_TBL = 0x204,
  .ba5_IDEDMA_CMD2 = 0x210,
  .ba5_IDEDMA_CTL2 = 0x212,
  .ba5_IDE_TF0 = 0x280,
  .ba5_IDE_TF1 = 0x281,
  .ba5_IDE_TF2 = 0x282,
  .ba5_IDE_TF3 = 0x283,
  .ba5_IDE_TF4 = 0x284,
  .ba5_IDE_TF5 = 0x285,
  .ba5_IDE_TF6 = 0x286,
  .ba5_IDE_TF7 = 0x287,
  .ba5_IDE_TF8 = 0x28a,
  .ba5_IDE_RAD = 0x28c,
  .ba5_IDE_TF9 = 0x291,
  .ba5_IDE_TF10 = 0x292,
  .ba5_IDE_TF11 = 0x293,
  .ba5_IDE_TF12 = 0x294,
  .ba5_IDE_TF13 = 0x295,
  .ba5_IDE_TF14 = 0x296,
  .ba5_IDE_TF15 = 0x297,
  .ba5_IDE_TF16 = 0x298,
  .ba5_IDE_TF17 = 0x299,
  .ba5_IDE_TF18 = 0x29a,
  .ba5_IDE_TF19 = 0x29b,
  .ba5_IDE_RABC = 0x29c,
  .ba5_IDE_CMD_STS = 0x2a0,
  .ba5_IDE_CFG_STS = 0x2a1,
  .ba5_IDE_DTM = 0x2b4,
  .ba5_SControl = 0x300,
  .ba5_SStatus = 0x304,
  .ba5_SError = 0x308,
  .ba5_SActive = 0x30c,
  .ba5_SMisc = 0x340,
  .ba5_PHY_CONFIG = 0x344,
  .ba5_SIEN = 0x348,
  .ba5_SFISCfg = 0x34c,
 },
 {
  .ba5_IDEDMA_CMD = 0x208,
  .ba5_IDEDMA_CTL = 0x20a,
  .ba5_IDEDMA_TBL = 0x20c,
  .ba5_IDEDMA_CMD2 = 0x218,
  .ba5_IDEDMA_CTL2 = 0x21a,
  .ba5_IDE_TF0 = 0x2c0,
  .ba5_IDE_TF1 = 0x2c1,
  .ba5_IDE_TF2 = 0x2c2,
  .ba5_IDE_TF3 = 0x2c3,
  .ba5_IDE_TF4 = 0x2c4,
  .ba5_IDE_TF5 = 0x2c5,
  .ba5_IDE_TF6 = 0x2c6,
  .ba5_IDE_TF7 = 0x2c7,
  .ba5_IDE_TF8 = 0x2ca,
  .ba5_IDE_RAD = 0x2cc,
  .ba5_IDE_TF9 = 0x2d1,
  .ba5_IDE_TF10 = 0x2d2,
  .ba5_IDE_TF11 = 0x2d3,
  .ba5_IDE_TF12 = 0x2d4,
  .ba5_IDE_TF13 = 0x2d5,
  .ba5_IDE_TF14 = 0x2d6,
  .ba5_IDE_TF15 = 0x2d7,
  .ba5_IDE_TF16 = 0x2d8,
  .ba5_IDE_TF17 = 0x2d9,
  .ba5_IDE_TF18 = 0x2da,
  .ba5_IDE_TF19 = 0x2db,
  .ba5_IDE_RABC = 0x2dc,
  .ba5_IDE_CMD_STS = 0x2e0,
  .ba5_IDE_CFG_STS = 0x2e1,
  .ba5_IDE_DTM = 0x2f4,
  .ba5_SControl = 0x380,
  .ba5_SStatus = 0x384,
  .ba5_SError = 0x388,
  .ba5_SActive = 0x38c,
  .ba5_SMisc = 0x3c0,
  .ba5_PHY_CONFIG = 0x3c4,
  .ba5_SIEN = 0x3c8,
  .ba5_SFISCfg = 0x3cc,
 },
};
struct pciide_satalink {
 bus_space_tag_t ba5_st;
 bus_space_handle_t ba5_sh;
 int ba5_en;
 struct {
  bus_space_tag_t cmd_iot;
  bus_space_handle_t cmd_baseioh;
  bus_space_handle_t cmd_iohs[8 +2];
  bus_space_tag_t ctl_iot;
  bus_space_handle_t ctl_ioh;
  bus_space_handle_t dma_iohs[8];
 } regs[4];
};
static uint32_t
ba5_read_4_ind(struct pciide_softc *sc, pcireg_t reg64)
{
 uint32_t rv;
 int s;
 s = _splraise(5);
 pci_conf_write(sc->sc_pc, sc->sc_tag, 0xc0, reg64);
 rv = pci_conf_read(sc->sc_pc, sc->sc_tag, 0xc4);
 _splx(s);
 return (rv);
}
static uint32_t
ba5_read_4(struct pciide_softc *sc, bus_size_t reg64)
{
 struct pciide_satalink *sl = sc->sc_cookie;
 if (__builtin_expect(((sl->ba5_en != 0) != 0), 1))
  return (bus_space_read_4(sl->ba5_st, sl->ba5_sh, reg64));
 return (ba5_read_4_ind(sc, reg64));
}
static void
ba5_write_4_ind(struct pciide_softc *sc, pcireg_t reg64, uint32_t val)
{
 int s;
 s = _splraise(5);
 pci_conf_write(sc->sc_pc, sc->sc_tag, 0xc0, reg64);
 pci_conf_write(sc->sc_pc, sc->sc_tag, 0xc4, val);
 _splx(s);
}
static void
ba5_write_4(struct pciide_softc *sc, bus_size_t reg64, uint32_t val)
{
 struct pciide_satalink *sl = sc->sc_cookie;
 if (__builtin_expect(((sl->ba5_en != 0) != 0), 1))
  bus_space_write_4(sl->ba5_st, sl->ba5_sh, reg64, val);
 else
  ba5_write_4_ind(sc, reg64, val);
}
u_int8_t sii3114_read_reg(struct channel_softc *, enum wdc_regs);
void sii3114_write_reg(struct channel_softc *, enum wdc_regs, u_int8_t);
struct channel_softc_vtbl wdc_sii3114_vtbl = {
 sii3114_read_reg,
 sii3114_write_reg,
 wdc_default_lba48_write_reg,
 wdc_default_read_raw_multi_2,
 wdc_default_write_raw_multi_2,
 wdc_default_read_raw_multi_4,
 wdc_default_write_raw_multi_4
};
static int8_t cy_pio_pulse[] = {9, 4, 3, 2, 2};
static int8_t cy_pio_rec[] = {9, 7, 4, 2, 0};
struct pciide_cy {
 const struct cy82c693_handle *cy_handle;
 int cy_compatchan;
};
struct pciide_sis {
 u_int8_t sis_type;
};
static const u_int8_t sis_pio_act[] =
    {12, 6, 4, 3, 3};
static const u_int8_t sis_pio_rec[] =
    {11, 7, 4, 3, 1};
static const u_int8_t sis_udma66_tim[] =
    {15, 13, 11, 10, 9, 8};
static const u_int8_t sis_udma100new_tim[] =
    {0x8b, 0x87, 0x85, 0x84, 0x82, 0x81};
static const u_int8_t sis_udma133old_tim[] =
    {0x8f, 0x8a, 0x87, 0x85, 0x83, 0x82, 0x81};
static const u_int32_t sis_pio133new_tim[] =
    {0x28269008, 0x0c266008, 0x4263008, 0x0c0a3008, 0x05093008};
static const u_int32_t sis_dma133new_tim[] =
    {0x22196008, 0x0c0a3008, 0x05093008};
static const u_int32_t sis_udma133new_tim[] =
    {0x9f4, 0x64a, 0x474, 0x254, 0x234, 0x224, 0x214};
static int8_t acer_udma[] = {0x4, 0x3, 0x2, 0x1, 0x0, 0x7};
static int8_t acer_pio[] = {0x0c, 0x58, 0x44, 0x33, 0x31};
static int8_t pdc2xx_pa[] = {0x9, 0x5, 0x3, 0x2, 0x1};
static int8_t pdc2xx_pb[] = {0x13, 0xc, 0x8, 0x6, 0x4};
static int8_t pdc2xx_dma_mb[] = {0x3, 0x3, 0x3};
static int8_t pdc2xx_dma_mc[] = {0x5, 0x4, 0x3};
static int8_t pdc2xx_udma_mb[] = {0x3, 0x2, 0x1, 0x2, 0x1, 0x1};
static int8_t pdc2xx_udma_mc[] = {0x3, 0x2, 0x1, 0x2, 0x1, 0x1};
struct pciide_pdcsata {
 bus_space_tag_t ba5_st;
 bus_space_handle_t ba5_sh;
 struct {
  bus_space_tag_t cmd_iot;
  bus_space_handle_t cmd_iohs[8 +2];
  bus_space_tag_t ctl_iot;
  bus_space_handle_t ctl_ioh;
  bus_space_handle_t dma_iohs[8];
 } regs[4];
};
u_int8_t pdc203xx_read_reg(struct channel_softc *, enum wdc_regs);
void pdc203xx_write_reg(struct channel_softc *, enum wdc_regs, u_int8_t);
struct channel_softc_vtbl wdc_pdc203xx_vtbl = {
 pdc203xx_read_reg,
 pdc203xx_write_reg,
 wdc_default_lba48_write_reg,
 wdc_default_read_raw_multi_2,
 wdc_default_write_raw_multi_2,
 wdc_default_read_raw_multi_4,
 wdc_default_write_raw_multi_4
};
const static u_int8_t opti_tim_cp[2][8] = {
 {5, 4, 3, 2, 2, 7, 2, 2},
 {4, 3, 2, 2, 1, 5, 2, 1}
};
const static u_int8_t opti_tim_rt[2][8] = {
 {9, 4, 0, 0, 0, 6, 0, 0},
 {6, 2, 0, 0, 0, 4, 0, 0}
};
const static u_int8_t opti_tim_as[2][8] = {
 {2, 1, 1, 1, 0, 0, 0, 0},
 {1, 1, 0, 0, 0, 0, 0, 0}
};
const static u_int8_t opti_tim_em[8] = {
 0, 0, 0, 1, 2, 0, 1 ,2
};
static u_int32_t hpt366_pio[] =
 {0x00d0a7aa, 0x00c8a753, 0x00c8a742, 0x00c8a731};
static u_int32_t hpt366_dma[] =
 {0x20c8a797, 0x20c8a742, 0x20c8a731};
static u_int32_t hpt366_udma[] =
 {0x10c8a731, 0x10cba731, 0x10caa731, 0x10cfa731, 0x10c9a731};
static u_int32_t hpt370_pio[] =
 {0x06914e8a, 0x06914e65, 0x06514e33, 0x06514e22, 0x06514e21};
static u_int32_t hpt370_dma[] =
 {0x26514e97, 0x26514e33, 0x26514e21};
static u_int32_t hpt370_udma[] =
 {0x16514e31, 0x164d4e31, 0x16494e31, 0x166d4e31, 0x16454e31,
  0x16454e31};
static u_int32_t hpt372_pio[] =
 {0x0d029d5e, 0x0d029d26, 0x0c829ca6, 0x0c829c84, 0x0c829c62};
static u_int32_t hpt372_dma[] =
 {0x2c82922e, 0x2c829266, 0x2c829262};
static u_int32_t hpt372_udma[] =
 {0x1c82dc62, 0x1c9adc62, 0x1c91dc62, 0x1c8edc62, 0x1c8ddc62,
  0x1c6ddc62, 0x1c81dc62};
static u_int32_t hpt374_pio[] =
 {0x0ac1f48a, 0x0ac1f465, 0x0a81f454, 0x0a81f443, 0x0a81f442};
static u_int32_t hpt374_dma[] =
 {0x228082ea, 0x22808254, 0x22808242};
static u_int32_t hpt374_udma[] =
 {0x121882ea, 0x12148254, 0x120c8242, 0x128c8242, 0x12ac8242,
  0x12848242, 0x12808242};
static const u_int8_t acard_act_udma[] = {0x3, 0x3, 0x3, 0x3, 0x3, 0x3, 0x3};
static const u_int8_t acard_rec_udma[] = {0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1};
static const u_int8_t acard_act_dma[] = {0x0, 0x3, 0x3};
static const u_int8_t acard_rec_dma[] = {0xa, 0x3, 0x1};
static const u_int8_t acard_act_pio[] = {0x0, 0x0, 0x0, 0x3, 0x3};
static const u_int8_t acard_rec_pio[] = {0x0, 0xa, 0x8, 0x3, 0x1};
static const u_int8_t acard_udma_conf[] = {0x1, 0x2, 0x3, 0x4, 0x5, 0x6, 0x7};
static u_int8_t natsemi_pio_pulse[] = { 7, 12, 13, 14, 14 };
static u_int8_t natsemi_dma_pulse[] = { 7, 10, 10 };
static u_int8_t natsemi_pio_recover[] = { 6, 8, 11, 13, 15 };
static u_int8_t natsemi_dma_recover[] = { 6, 8, 9 };
const static u_int32_t scx200_pio33[2][5] = {
    { 0x00009172, 0x00012171, 0x00020080, 0x00032010, 0x00040010 },
    { 0x9172d132, 0x21717121, 0x00803020, 0x20102010, 0x00100010 }};
const static u_int32_t scx200_pio66[2][5] = {
    { 0x0000f8e4, 0x000153f3, 0x000213f1, 0x00034231, 0x00041131 },
    { 0xf8e4f8e4, 0x53f3f353, 0x13f18141, 0x42314231, 0x11311131 }};
const static u_int32_t scx200_dma33[] = { 0x00077771, 0x00012121, 0x00002020 };
const static u_int32_t scx200_dma66[] = { 0x000ffff3, 0x00035352, 0x00015151 };
const static u_int32_t scx200_udma33[] = { 0x00921250, 0x00911140, 0x00911030 };
const static u_int32_t scx200_udma66[] = { 0x009436a1, 0x00933481, 0x00923261 };
static u_int8_t nforce_pio[] = { 0xa8, 0x65, 0x42, 0x22, 0x20 };
static u_int8_t nforce_udma[] = { 0x02, 0x01, 0x00, 0x04, 0x05, 0x06, 0x07 };
static const uint8_t ixp_pio_timings[] = {
 0x5d, 0x47, 0x34, 0x22, 0x20
};
static const uint8_t ixp_mdma_timings[] = {
 0x77, 0x21, 0x20
};
struct pciide_svwsata {
 bus_space_tag_t ba5_st;
 bus_space_handle_t ba5_sh;
};
u_int8_t svwsata_read_reg(struct channel_softc *, enum wdc_regs);
void svwsata_write_reg(struct channel_softc *, enum wdc_regs, u_int8_t);
void svwsata_lba48_write_reg(struct channel_softc *, enum wdc_regs, u_int16_t);
struct channel_softc_vtbl wdc_svwsata_vtbl = {
 svwsata_read_reg,
 svwsata_write_reg,
 svwsata_lba48_write_reg,
 wdc_default_read_raw_multi_2,
 wdc_default_write_raw_multi_2,
 wdc_default_read_raw_multi_4,
 wdc_default_write_raw_multi_4
};
const uint8_t rdcide_setup[] = {0, 0, 1, 2, 2};
const uint8_t rdcide_hold[] = {0, 0, 0, 1, 3};
const uint8_t rdcide_udmatim[] = {0, 1, 2, 1, 2, 1};
const uint32_t rdcide_udmaclk[] =
    {0x0000, 0x0000, 0x0000, 0x0001, 0x0001, 0x1000};
struct cy82c693_handle {
 bus_space_tag_t cyhc_iot;
 bus_space_handle_t cyhc_ioh;
};
const struct cy82c693_handle *cy82c693_init(bus_space_tag_t);
u_int8_t cy82c693_read(const struct cy82c693_handle *, int);
void cy82c693_write(const struct cy82c693_handle *, int, u_int8_t);
int pciide_skip_ata;
int pciide_skip_atapi;
u_int8_t pciide_pci_read(pci_chipset_tag_t, pcitag_t,
     int);
void pciide_pci_write(pci_chipset_tag_t, pcitag_t,
     int, u_int8_t);
u_int8_t
pciide_pci_read(pci_chipset_tag_t pc, pcitag_t pa, int reg64)
{
 return (pci_conf_read(pc, pa, (reg64 & ~0x03)) >>
     ((reg64 & 0x03) * 8) & 0xff);
}
void
pciide_pci_write(pci_chipset_tag_t pc, pcitag_t pa, int reg64, u_int8_t val)
{
 pcireg_t pcival;
 pcival = pci_conf_read(pc, pa, (reg64 & ~0x03));
 pcival &= ~(0xff << ((reg64 & 0x03) * 8));
 pcival |= (val << ((reg64 & 0x03) * 8));
 pci_conf_write(pc, pa, (reg64 & ~0x03), pcival);
}
void default_chip_map(struct pciide_softc *, struct pci_attach_args *);
void sata_chip_map(struct pciide_softc *, struct pci_attach_args *);
void sata_setup_channel(struct channel_softc *);
void piix_chip_map(struct pciide_softc *, struct pci_attach_args *);
void piixsata_chip_map(struct pciide_softc *, struct pci_attach_args *);
void piix_setup_channel(struct channel_softc *);
void piix3_4_setup_channel(struct channel_softc *);
void piix_timing_debug(struct pciide_softc *);
u_int32_t piix_setup_idetim_timings(u_int8_t, u_int8_t, u_int8_t);
u_int32_t piix_setup_idetim_drvs(struct ata_drive_datas *);
u_int32_t piix_setup_sidetim_timings(u_int8_t, u_int8_t, u_int8_t);
void amd756_chip_map(struct pciide_softc *, struct pci_attach_args *);
void amd756_setup_channel(struct channel_softc *);
void apollo_chip_map(struct pciide_softc *, struct pci_attach_args *);
void apollo_setup_channel(struct channel_softc *);
void cmd_chip_map(struct pciide_softc *, struct pci_attach_args *);
void cmd0643_9_chip_map(struct pciide_softc *, struct pci_attach_args *);
void cmd0643_9_setup_channel(struct channel_softc *);
void cmd680_chip_map(struct pciide_softc *, struct pci_attach_args *);
void cmd680_setup_channel(struct channel_softc *);
void cmd680_channel_map(struct pci_attach_args *, struct pciide_softc *, int);
void cmd_channel_map(struct pci_attach_args *,
   struct pciide_softc *, int);
int cmd_pci_intr(void *);
void cmd646_9_irqack(struct channel_softc *);
void sii_fixup_cacheline(struct pciide_softc *, struct pci_attach_args *);
void sii3112_chip_map(struct pciide_softc *, struct pci_attach_args *);
void sii3112_setup_channel(struct channel_softc *);
void sii3112_drv_probe(struct channel_softc *);
void sii3114_chip_map(struct pciide_softc *, struct pci_attach_args *);
void sii3114_mapreg_dma(struct pciide_softc *, struct pci_attach_args *);
int sii3114_chansetup(struct pciide_softc *, int);
void sii3114_mapchan(struct pciide_channel *);
u_int8_t sii3114_dmacmd_read(struct pciide_softc *, int);
void sii3114_dmacmd_write(struct pciide_softc *, int, u_int8_t);
u_int8_t sii3114_dmactl_read(struct pciide_softc *, int);
void sii3114_dmactl_write(struct pciide_softc *, int, u_int8_t);
void sii3114_dmatbl_write(struct pciide_softc *, int, u_int32_t);
void cy693_chip_map(struct pciide_softc *, struct pci_attach_args *);
void cy693_setup_channel(struct channel_softc *);
void sis_chip_map(struct pciide_softc *, struct pci_attach_args *);
void sis_setup_channel(struct channel_softc *);
void sis96x_setup_channel(struct channel_softc *);
int sis_hostbr_match(struct pci_attach_args *);
int sis_south_match(struct pci_attach_args *);
void natsemi_chip_map(struct pciide_softc *, struct pci_attach_args *);
void natsemi_setup_channel(struct channel_softc *);
int natsemi_pci_intr(void *);
void natsemi_irqack(struct channel_softc *);
void ns_scx200_chip_map(struct pciide_softc *, struct pci_attach_args *);
void ns_scx200_setup_channel(struct channel_softc *);
void acer_chip_map(struct pciide_softc *, struct pci_attach_args *);
void acer_setup_channel(struct channel_softc *);
int acer_pci_intr(void *);
int acer_dma_init(void *, int, int, void *, size_t, int);
void pdc202xx_chip_map(struct pciide_softc *, struct pci_attach_args *);
void pdc202xx_setup_channel(struct channel_softc *);
void pdc20268_setup_channel(struct channel_softc *);
int pdc202xx_pci_intr(void *);
int pdc20265_pci_intr(void *);
void pdc20262_dma_start(void *, int, int);
int pdc20262_dma_finish(void *, int, int, int);
u_int8_t pdc268_config_read(struct channel_softc *, int);
void pdcsata_chip_map(struct pciide_softc *, struct pci_attach_args *);
void pdc203xx_setup_channel(struct channel_softc *);
int pdc203xx_pci_intr(void *);
void pdc203xx_irqack(struct channel_softc *);
void pdc203xx_dma_start(void *,int ,int);
int pdc203xx_dma_finish(void *, int, int, int);
int pdc205xx_pci_intr(void *);
void pdc205xx_do_reset(struct channel_softc *);
void pdc205xx_drv_probe(struct channel_softc *);
void opti_chip_map(struct pciide_softc *, struct pci_attach_args *);
void opti_setup_channel(struct channel_softc *);
void hpt_chip_map(struct pciide_softc *, struct pci_attach_args *);
void hpt_setup_channel(struct channel_softc *);
int hpt_pci_intr(void *);
void acard_chip_map(struct pciide_softc *, struct pci_attach_args *);
void acard_setup_channel(struct channel_softc *);
void serverworks_chip_map(struct pciide_softc *, struct pci_attach_args *);
void serverworks_setup_channel(struct channel_softc *);
int serverworks_pci_intr(void *);
void svwsata_chip_map(struct pciide_softc *, struct pci_attach_args *);
void svwsata_mapreg_dma(struct pciide_softc *, struct pci_attach_args *);
void svwsata_mapchan(struct pciide_channel *);
u_int8_t svwsata_dmacmd_read(struct pciide_softc *, int);
void svwsata_dmacmd_write(struct pciide_softc *, int, u_int8_t);
u_int8_t svwsata_dmactl_read(struct pciide_softc *, int);
void svwsata_dmactl_write(struct pciide_softc *, int, u_int8_t);
void svwsata_dmatbl_write(struct pciide_softc *, int, u_int32_t);
void svwsata_drv_probe(struct channel_softc *);
void nforce_chip_map(struct pciide_softc *, struct pci_attach_args *);
void nforce_setup_channel(struct channel_softc *);
int nforce_pci_intr(void *);
void artisea_chip_map(struct pciide_softc *, struct pci_attach_args *);
void ite_chip_map(struct pciide_softc *, struct pci_attach_args *);
void ite_setup_channel(struct channel_softc *);
void ixp_chip_map(struct pciide_softc *, struct pci_attach_args *);
void ixp_setup_channel(struct channel_softc *);
void jmicron_chip_map(struct pciide_softc *, struct pci_attach_args *);
void jmicron_setup_channel(struct channel_softc *);
void phison_chip_map(struct pciide_softc *, struct pci_attach_args *);
void phison_setup_channel(struct channel_softc *);
void sch_chip_map(struct pciide_softc *, struct pci_attach_args *);
void sch_setup_channel(struct channel_softc *);
void rdc_chip_map(struct pciide_softc *, struct pci_attach_args *);
void rdc_setup_channel(struct channel_softc *);
struct pciide_product_desc {
 u_int32_t ide_product;
 u_short ide_flags;
 void (*chip_map)(struct pciide_softc *, struct pci_attach_args *);
};
const struct pciide_product_desc default_product_desc = {
 0,
 0,
 default_chip_map
};
const struct pciide_product_desc pciide_intel_products[] = {
 { 0x3200,
   0,
   artisea_chip_map
 },
 { 0x1222,
   0,
   default_chip_map
 },
 { 0x1230,
   0,
   piix_chip_map
 },
 { 0x122e,
   0,
   piix_chip_map
 },
 { 0x7601,
   0,
   piix_chip_map
 },
 { 0x7010,
   0,
   piix_chip_map
 },
 { 0x7111,
   0,
   piix_chip_map
 },
 { 0x1234,
   0,
   piix_chip_map
 },
 { 0x7199,
   0,
   piix_chip_map
 },
 { 0x84ca,
   0,
   piix_chip_map
 },
 { 0x2411,
   0,
   piix_chip_map
 },
 { 0x2421,
   0,
   piix_chip_map
 },
 { 0x244a,
   0,
   piix_chip_map
 },
 { 0x244b,
   0,
   piix_chip_map
 },
 { 0x248a,
   0,
   piix_chip_map
 },
 { 0x248b,
   0,
   piix_chip_map
 },
 { 0x24cb,
   0,
   piix_chip_map
 },
 { 0x24c1,
   0,
   piix_chip_map
 },
 { 0x24ca,
   0,
   piix_chip_map
 },
 { 0x24db,
   0,
   piix_chip_map
 },
 { 0x24d1,
   0,
   piixsata_chip_map
 },
 { 0x24df,
   0,
   piixsata_chip_map
 },
 { 0x25a2,
   0,
   piix_chip_map
 },
 { 0x25a3,
   0,
   piixsata_chip_map
 },
 { 0x25b0,
   0,
   piixsata_chip_map
 },
 { 0x269e,
   0,
   piix_chip_map
 },
 { 0x266f,
   0,
   piix_chip_map
 },
 { 0x2653,
   0,
   piixsata_chip_map
 },
 { 0x2651,
   0,
   piixsata_chip_map
 },
 { 0x2652,
   0,
   piixsata_chip_map
 },
 { 0x27df,
   0,
   piix_chip_map
 },
 { 0x27c0,
   0,
   piixsata_chip_map
 },
 { 0x27c1,
   0,
   piixsata_chip_map
 },
 { 0x27c3,
   0,
   piixsata_chip_map
 },
 { 0x27c4,
   0,
   piixsata_chip_map
 },
 { 0x27c5,
   0,
   piixsata_chip_map
 },
 { 0x27c6,
   0,
   piixsata_chip_map
 },
 { 0x2820,
   0,
   piixsata_chip_map
 },
 { 0x2821,
   0,
   piixsata_chip_map
 },
 { 0x2822,
   0,
   piixsata_chip_map
 },
 { 0x2824,
   0,
   piixsata_chip_map
 },
 { 0x2825,
   0,
   piixsata_chip_map
 },
 { 0x2828,
   0,
   piixsata_chip_map
 },
 { 0x2829,
   0,
   piixsata_chip_map
 },
 { 0x282a,
   0,
   piixsata_chip_map
 },
 { 0x2850,
   0,
   piix_chip_map
 },
 { 0x2920,
   0,
   piixsata_chip_map
 },
 { 0x2921,
   0,
   piixsata_chip_map
 },
 { 0x2926,
   0,
   piixsata_chip_map
 },
 { 0x2928,
   0,
   piixsata_chip_map
 },
 { 0x292d,
   0,
   piixsata_chip_map
 },
 { 0x292e,
   0,
   piixsata_chip_map
 },
 { 0x3a00,
   0,
   piixsata_chip_map
 },
 { 0x3a06,
   0,
   piixsata_chip_map
 },
 { 0x3a20,
   0,
   piixsata_chip_map
 },
 { 0x3a26,
   0,
   piixsata_chip_map
 },
 { 0x2680,
   0,
   piixsata_chip_map
 },
 { 0x3b20,
   0,
   piixsata_chip_map
 },
 { 0x3b21,
   0,
   piixsata_chip_map
 },
 { 0x3b26,
   0,
   piixsata_chip_map
 },
 { 0x3b28,
   0,
   piixsata_chip_map
 },
 { 0x3b2d,
   0,
   piixsata_chip_map
 },
 { 0x3b2e,
   0,
   piixsata_chip_map
 },
 { 0x1d00,
   0,
   piixsata_chip_map
 },
 { 0x8d00,
   0,
   piixsata_chip_map
 },
 { 0x8d08,
   0,
   piixsata_chip_map
 },
 { 0x8d60,
   0,
   piixsata_chip_map
 },
 { 0x1c00,
   0,
   piixsata_chip_map
 },
 { 0x1c01,
   0,
   piixsata_chip_map
 },
 { 0x1c08,
   0,
   piixsata_chip_map
 },
 { 0x1c09,
   0,
   piixsata_chip_map
 },
 { 0x1e00,
   0,
   piixsata_chip_map
 },
 { 0x1e01,
   0,
   piixsata_chip_map
 },
 { 0x1e08,
   0,
   piixsata_chip_map
 },
 { 0x1e09,
   0,
   piixsata_chip_map
 },
 { 0x8c00,
   0,
   piixsata_chip_map
 },
 { 0x8c01,
   0,
   piixsata_chip_map
 },
 { 0x8c08,
   0,
   piixsata_chip_map
 },
 { 0x8c09,
   0,
   piixsata_chip_map
 },
 { 0x9c00,
   0,
   piixsata_chip_map
 },
 { 0x9c01,
   0,
   piixsata_chip_map
 },
 { 0x9c08,
   0,
   piixsata_chip_map
 },
 { 0x9c09,
   0,
   piixsata_chip_map
 },
 { 0x8c80,
   0,
   piixsata_chip_map
 },
 { 0x8c88,
   0,
   piixsata_chip_map
 },
 { 0x1f20,
   0,
   piixsata_chip_map
 },
 { 0x1f21,
   0,
   piixsata_chip_map
 },
 { 0x1f30,
   0,
   piixsata_chip_map
 },
 { 0x1f31,
   0,
   piixsata_chip_map
 },
 { 0x0f20,
   0,
   piixsata_chip_map
 },
 { 0x0f21,
   0,
   piixsata_chip_map
 },
 { 0x5028,
   0,
   piixsata_chip_map
 },
 { 0x2326,
   0,
   piixsata_chip_map
 },
 { 0x23a6,
   0,
   piixsata_chip_map
 },
 { 0x811a,
   0,
   sch_chip_map
 }
};
const struct pciide_product_desc pciide_amd_products[] = {
 { 0x7409,
   0,
   amd756_chip_map
 },
 { 0x7411,
   0,
   amd756_chip_map
 },
 { 0x7441,
   0,
   amd756_chip_map
 },
 { 0x7469,
   0,
   amd756_chip_map
 },
 { 0x209a,
   0,
   amd756_chip_map
 },
 { 0x780c,
   0,
   ixp_chip_map
 }
};
const struct pciide_product_desc pciide_cmd_products[] = {
 { 0x0640,
   0,
   cmd_chip_map
 },
 { 0x0643,
   0,
   cmd0643_9_chip_map
 },
 { 0x0646,
   0,
   cmd0643_9_chip_map
 },
 { 0x0648,
   0,
   cmd0643_9_chip_map
 },
 { 0x0649,
   0,
   cmd0643_9_chip_map
 },
 { 0x0680,
   0x0001,
   cmd680_chip_map
 },
 { 0x3112,
   0,
   sii3112_chip_map
 },
 { 0x3512,
   0,
   sii3112_chip_map
 },
 { 0x0240,
   0,
   sii3112_chip_map
 },
 { 0x3114,
   0,
   sii3114_chip_map
 }
};
const struct pciide_product_desc pciide_via_products[] = {
 { 0x1571,
   0,
   apollo_chip_map
 },
 { 0x0571,
   0,
   apollo_chip_map
 },
 { 0x3164,
   0x0001,
   apollo_chip_map
 },
 { 0x0415,
   0x0001,
   apollo_chip_map
 },
 { 0x5324,
   0,
   apollo_chip_map
 },
 { 0x0581,
   0,
   apollo_chip_map
 },
 { 0xc409,
   0,
   apollo_chip_map
 },
 { 0x9001,
   0,
   apollo_chip_map
 },
 { 0x3149,
   0,
   sata_chip_map
 },
 { 0x3249,
   0,
   sata_chip_map
 },
 { 0x0591,
   0,
   sata_chip_map
 },
 { 0x5337,
   0,
   sata_chip_map
 },
 { 0x5372,
   0,
   sata_chip_map
 },
 { 0x3349,
   0,
   sata_chip_map
 }
};
const struct pciide_product_desc pciide_cypress_products[] = {
 { 0xc693,
   0x0002,
   cy693_chip_map
 }
};
const struct pciide_product_desc pciide_sis_products[] = {
 { 0x5513,
   0,
   sis_chip_map
 },
 { 0x0180,
   0,
   sata_chip_map
 },
 { 0x0181,
   0,
   sata_chip_map
 },
 { 0x0182,
   0,
   sata_chip_map
 },
 { 0x1183,
   0,
   sata_chip_map
 }
};
const struct pciide_product_desc pciide_natsemi_products[] = {
 { 0x0002,
   0,
   natsemi_chip_map
 },
 { 0x0502,
   0,
   ns_scx200_chip_map
 }
};
const struct pciide_product_desc pciide_acer_products[] = {
 { 0x5229,
   0,
   acer_chip_map
 }
};
const struct pciide_product_desc pciide_triones_products[] = {
 { 0x0004,
   0x0001,
   hpt_chip_map,
 },
 { 0x0005,
   0x0001,
   hpt_chip_map
 },
 { 0x0006,
   0x0001,
   hpt_chip_map
 },
 { 0x0007,
   0x0001,
   hpt_chip_map
 },
 { 0x0008,
   0x0001,
   hpt_chip_map
 }
};
const struct pciide_product_desc pciide_promise_products[] = {
 { 0x4d33,
   0x0001,
   pdc202xx_chip_map,
 },
 { 0x4d38,
   0x0001,
   pdc202xx_chip_map,
 },
 { 0x0d30,
   0x0001,
   pdc202xx_chip_map,
 },
 { 0x4d30,
   0x0001,
   pdc202xx_chip_map,
 },
 { 0x4d68,
   0x0001,
   pdc202xx_chip_map,
 },
 { 0x6268,
   0x0001,
   pdc202xx_chip_map,
 },
 { 0x4d69,
   0x0001,
   pdc202xx_chip_map,
 },
 { 0x6269,
   0x0001,
   pdc202xx_chip_map,
 },
 { 0x1275,
   0x0001,
   pdc202xx_chip_map,
 },
 { 0x5275,
   0x0001,
   pdc202xx_chip_map,
 },
 { 0x7275,
   0x0001,
   pdc202xx_chip_map,
 },
 { 0x3318,
   0x0001,
   pdcsata_chip_map,
 },
 { 0x3319,
   0x0001,
   pdcsata_chip_map,
 },
 { 0x3371,
   0x0001,
   pdcsata_chip_map,
 },
 { 0x3375,
   0x0001,
   pdcsata_chip_map,
 },
 { 0x3376,
   0x0001,
   pdcsata_chip_map,
 },
 { 0x3377,
   0x0001,
   pdcsata_chip_map,
 },
 { 0x3373,
   0x0001,
   pdcsata_chip_map,
 },
 { 0x3372,
   0x0001,
   pdcsata_chip_map,
 },
 { 0x3d18,
   0x0001,
   pdcsata_chip_map,
 },
 { 0x3519,
   0x0001,
   pdcsata_chip_map,
 },
 { 0x3d17,
   0x0001,
   pdcsata_chip_map,
 },
 { 0x3515,
   0x0001,
   pdcsata_chip_map,
 },
 { 0x3577,
   0x0001,
   pdcsata_chip_map,
 },
 { 0x3571,
   0x0001,
   pdcsata_chip_map,
 },
 { 0x3d75,
   0x0001,
   pdcsata_chip_map,
 },
 { 0x3574,
   0x0001,
   pdcsata_chip_map,
 },
 { 0x3570,
   0x0001,
   pdcsata_chip_map,
 },
 { 0x3d73,
   0x0001,
   pdcsata_chip_map,
 }
};
const struct pciide_product_desc pciide_acard_products[] = {
 { 0x0005,
   0x0001,
   acard_chip_map,
 },
 { 0x0006,
   0x0001,
   acard_chip_map,
 },
 { 0x0007,
   0x0001,
   acard_chip_map,
 },
 { 0x0008,
   0x0001,
   acard_chip_map,
 },
 { 0x0009,
   0x0001,
   acard_chip_map,
 }
};
const struct pciide_product_desc pciide_serverworks_products[] = {
 { 0x0211,
   0,
   serverworks_chip_map,
 },
 { 0x0212,
   0,
   serverworks_chip_map,
 },
 { 0x0217,
   0,
   serverworks_chip_map,
 },
 { 0x0213,
   0,
   serverworks_chip_map,
 },
 { 0x0214,
   0,
   serverworks_chip_map,
 },
 { 0x0240,
   0,
   svwsata_chip_map,
 },
 { 0x0241,
   0,
   svwsata_chip_map,
 },
 { 0x0242,
   0,
   svwsata_chip_map,
 },
 { 0x024a,
   0,
   svwsata_chip_map,
 },
 { 0x024b,
   0,
   svwsata_chip_map,
 }
};
const struct pciide_product_desc pciide_nvidia_products[] = {
 { 0x01bc,
   0,
   nforce_chip_map
 },
 { 0x0065,
   0,
   nforce_chip_map
 },
 { 0x0085,
   0,
   nforce_chip_map
 },
 { 0x00d5,
   0,
   nforce_chip_map
 },
 { 0x00e5,
   0,
   nforce_chip_map
 },
 { 0x0053,
   0,
   nforce_chip_map
 },
 { 0x0035,
   0,
   nforce_chip_map
 },
 { 0x0265,
   0,
   nforce_chip_map
 },
 { 0x036e,
   0,
   nforce_chip_map
 },
 { 0x03ec,
   0,
   nforce_chip_map
 },
 { 0x0448,
   0,
   nforce_chip_map
 },
 { 0x0560,
   0,
   nforce_chip_map
 },
 { 0x056c,
   0,
   nforce_chip_map
 },
 { 0x0759,
   0,
   nforce_chip_map
 },
 { 0x008e,
   0,
   sata_chip_map
 },
 { 0x00e3,
   0,
   sata_chip_map
 },
 { 0x00ee,
   0,
   sata_chip_map
 },
 { 0x0054,
   0,
   sata_chip_map
 },
 { 0x0055,
   0,
   sata_chip_map
 },
 { 0x0036,
   0,
   sata_chip_map
 },
 { 0x003e,
   0,
   sata_chip_map
 },
 { 0x0266,
   0,
   sata_chip_map
 },
 { 0x0267,
   0,
   sata_chip_map
 },
 { 0x037e,
   0,
   sata_chip_map
 },
 { 0x037f,
   0,
   sata_chip_map
 },
 { 0x03e7,
   0,
   sata_chip_map
 },
 { 0x03f6,
   0,
   sata_chip_map
 },
 { 0x03f7,
   0,
   sata_chip_map
 },
 { 0x045c,
   0,
   sata_chip_map
 },
 { 0x045d,
   0,
   sata_chip_map
 },
 { 0x045e,
   0,
   sata_chip_map
 },
 { 0x045f,
   0,
   sata_chip_map
 },
 { 0x0550,
   0,
   sata_chip_map
 },
 { 0x0551,
   0,
   sata_chip_map
 },
 { 0x0552,
   0,
   sata_chip_map
 },
 { 0x0553,
   0,
   sata_chip_map
 },
 { 0x0ad0,
   0,
   sata_chip_map
 },
 { 0x0ab4,
   0,
   sata_chip_map
 },
 { 0x0ab5,
   0,
   sata_chip_map
 },
 { 0x0ab6,
   0,
   sata_chip_map
 },
 { 0x0ab7,
   0,
   sata_chip_map
 },
 { 0x0d84,
   0,
   sata_chip_map
 },
 { 0x0d85,
   0,
   sata_chip_map
 },
 { 0x0d86,
   0,
   sata_chip_map
 },
 { 0x0d87,
   0,
   sata_chip_map
 }
};
const struct pciide_product_desc pciide_ite_products[] = {
 { 0x8211,
   0x0001,
   ite_chip_map
 },
 { 0x8212,
   0x0001,
   ite_chip_map
 }
};
const struct pciide_product_desc pciide_ati_products[] = {
 { 0x4349,
   0,
   ixp_chip_map
 },
 { 0x4369,
   0,
   ixp_chip_map
 },
 { 0x4376,
   0,
   ixp_chip_map
 },
 { 0x438c,
   0,
   ixp_chip_map
 },
 { 0x439c,
   0,
   ixp_chip_map
 },
 { 0x436e,
   0,
   sii3112_chip_map
 },
 { 0x4379,
   0,
   sii3112_chip_map
 },
 { 0x437a,
   0,
   sii3112_chip_map
 }
};
const struct pciide_product_desc pciide_jmicron_products[] = {
 { 0x2361,
   0,
   jmicron_chip_map
 },
 { 0x2363,
   0,
   jmicron_chip_map
 },
 { 0x2365,
   0,
   jmicron_chip_map
 },
 { 0x2366,
   0,
   jmicron_chip_map
 },
 { 0x2368,
   0,
   jmicron_chip_map
 }
};
const struct pciide_product_desc pciide_phison_products[] = {
 { 0x5000,
   0,
   phison_chip_map
 },
};
const struct pciide_product_desc pciide_rdc_products[] = {
 { 0x1012,
   0,
   rdc_chip_map
 },
};
struct pciide_vendor_desc {
 u_int32_t ide_vendor;
 const struct pciide_product_desc *ide_products;
 int ide_nproducts;
};
const struct pciide_vendor_desc pciide_vendors[] = {
 { 0x8086, pciide_intel_products,
   (sizeof((pciide_intel_products)) / sizeof((pciide_intel_products)[0])) },
 { 0x1022, pciide_amd_products,
   (sizeof((pciide_amd_products)) / sizeof((pciide_amd_products)[0])) },
 { 0x1095, pciide_cmd_products,
   (sizeof((pciide_cmd_products)) / sizeof((pciide_cmd_products)[0])) },
 { 0x1106, pciide_via_products,
   (sizeof((pciide_via_products)) / sizeof((pciide_via_products)[0])) },
 { 0x1080, pciide_cypress_products,
   (sizeof((pciide_cypress_products)) / sizeof((pciide_cypress_products)[0])) },
 { 0x1039, pciide_sis_products,
   (sizeof((pciide_sis_products)) / sizeof((pciide_sis_products)[0])) },
 { 0x100b, pciide_natsemi_products,
   (sizeof((pciide_natsemi_products)) / sizeof((pciide_natsemi_products)[0])) },
 { 0x10b9, pciide_acer_products,
   (sizeof((pciide_acer_products)) / sizeof((pciide_acer_products)[0])) },
 { 0x1103, pciide_triones_products,
   (sizeof((pciide_triones_products)) / sizeof((pciide_triones_products)[0])) },
 { 0x1191, pciide_acard_products,
   (sizeof((pciide_acard_products)) / sizeof((pciide_acard_products)[0])) },
 { 0x1166, pciide_serverworks_products,
   (sizeof((pciide_serverworks_products)) / sizeof((pciide_serverworks_products)[0])) },
 { 0x105a, pciide_promise_products,
   (sizeof((pciide_promise_products)) / sizeof((pciide_promise_products)[0])) },
 { 0x10de, pciide_nvidia_products,
   (sizeof((pciide_nvidia_products)) / sizeof((pciide_nvidia_products)[0])) },
 { 0x1283, pciide_ite_products,
   (sizeof((pciide_ite_products)) / sizeof((pciide_ite_products)[0])) },
 { 0x1002, pciide_ati_products,
   (sizeof((pciide_ati_products)) / sizeof((pciide_ati_products)[0])) },
 { 0x197b, pciide_jmicron_products,
   (sizeof((pciide_jmicron_products)) / sizeof((pciide_jmicron_products)[0])) },
 { 0x1987, pciide_phison_products,
   (sizeof((pciide_phison_products)) / sizeof((pciide_phison_products)[0])) },
 { 0x17f3, pciide_rdc_products,
   (sizeof((pciide_rdc_products)) / sizeof((pciide_rdc_products)[0])) }
};
int pciide_match(struct device *, void *, void *);
void pciide_attach(struct device *, struct device *, void *);
int pciide_detach(struct device *, int);
int pciide_activate(struct device *, int);
struct cfattach pciide_pci_ca = {
 sizeof(struct pciide_softc), pciide_match, pciide_attach,
 pciide_detach, pciide_activate
};
struct cfattach pciide_jmb_ca = {
 sizeof(struct pciide_softc), pciide_match, pciide_attach,
 pciide_detach, pciide_activate
};
struct cfdriver pciide_cd = {
 ((void *)0), "pciide", DV_DULL
};
const struct pciide_product_desc *pciide_lookup_product(u_int32_t);
const struct pciide_product_desc *
pciide_lookup_product(u_int32_t id)
{
 const struct pciide_product_desc *pp;
 const struct pciide_vendor_desc *vp;
 int i;
 for (i = 0, vp = pciide_vendors; i < (sizeof((pciide_vendors)) / sizeof((pciide_vendors)[0])); vp++, i++)
  if ((((id) >> 0) & 0xffff) == vp->ide_vendor)
   break;
 if (i == (sizeof((pciide_vendors)) / sizeof((pciide_vendors)[0])))
  return (((void *)0));
 for (pp = vp->ide_products, i = 0; i < vp->ide_nproducts; pp++, i++)
  if ((((id) >> 16) & 0xffff) == pp->ide_product)
   break;
 if (i == vp->ide_nproducts)
  return (((void *)0));
 return (pp);
}
int
pciide_match(struct device *parent, void *match, void *aux)
{
 struct pci_attach_args *pa = aux;
 const struct pciide_product_desc *pp;
 if ((((pa->pa_id) >> 0) & 0xffff) == 0x1042 &&
     (((pa->pa_id) >> 16) & 0xffff) == 0x1000)
  return (0);
 pp = pciide_lookup_product(pa->pa_id);
 if (pp && (pp->ide_flags & 0x0001))
  return (1);
 if ((((pa->pa_class) >> 24) & 0xff) == 0x01) {
  switch ((((pa->pa_class) >> 16) & 0xff)) {
  case 0x01:
   return (1);
  case 0x06:
  case 0x04:
  case 0x80:
   if (pp)
    return (1);
   else
    return (0);
   break;
  }
 }
 return (0);
}
void
pciide_attach(struct device *parent, struct device *self, void *aux)
{
 struct pciide_softc *sc = (struct pciide_softc *)self;
 struct pci_attach_args *pa = aux;
 sc->sc_pp = pciide_lookup_product(pa->pa_id);
 if (sc->sc_pp == ((void *)0))
  sc->sc_pp = &default_product_desc;
 sc->sc_rev = (((pa->pa_class) >> 0) & 0xff);
 sc->sc_pc = pa->pa_pc;
 sc->sc_tag = pa->pa_tag;
 sc->sc_dma_maxsegsz = 0x00010000;
 sc->sc_dma_boundary = 0x00010000;
 sc->sc_dmacmd_read = pciide_dmacmd_read;
 sc->sc_dmacmd_write = pciide_dmacmd_write;
 sc->sc_dmactl_read = pciide_dmactl_read;
 sc->sc_dmactl_write = pciide_dmactl_write;
 sc->sc_dmatbl_write = pciide_dmatbl_write;
 ;
 if (pciide_skip_ata)
  sc->sc_wdcdev.quirks |= 0x0002;
 if (pciide_skip_atapi)
  sc->sc_wdcdev.quirks |= 0x0004;
 sc->sc_pp->chip_map(sc, pa);
 ;
}
int
pciide_detach(struct device *self, int flags)
{
 struct pciide_softc *sc = (struct pciide_softc *)self;
 if (sc->chip_unmap == ((void *)0))
  panic("unmap not yet implemented for this chipset");
 else
  sc->chip_unmap(sc, flags);
 return 0;
}
int
pciide_activate(struct device *self, int act)
{
 int rv = 0;
 struct pciide_softc *sc = (struct pciide_softc *)self;
 int i;
 switch (act) {
 case 3:
  rv = config_activate_children(self, act);
  for (i = 0; i < (sizeof((sc->sc_save)) / sizeof((sc->sc_save)[0])); i++)
   sc->sc_save[i] = pci_conf_read(sc->sc_pc,
       sc->sc_tag, 0x28 + 0x18 + (i * 4));
  if (sc->sc_pp->chip_map == sch_chip_map) {
   sc->sc_save2[0] = pci_conf_read(sc->sc_pc,
       sc->sc_tag, 0x80);
   sc->sc_save2[1] = pci_conf_read(sc->sc_pc,
       sc->sc_tag, 0x84);
  } else if (sc->sc_pp->chip_map == piixsata_chip_map) {
   sc->sc_save2[0] = pciide_pci_read(sc->sc_pc,
       sc->sc_tag, 0x90);
   sc->sc_save2[1] = pciide_pci_read(sc->sc_pc,
       sc->sc_tag, 0x09);
   sc->sc_save2[2] = pciide_pci_read(sc->sc_pc,
       sc->sc_tag, 0x92);
  } else if (sc->sc_pp->chip_map == sii3112_chip_map) {
   sc->sc_save2[0] = pci_conf_read(sc->sc_pc,
       sc->sc_tag, 0x88);
   sc->sc_save2[1] = pci_conf_read(sc->sc_pc,
       sc->sc_tag, 0x40);
  } else if (sc->sc_pp->chip_map == ite_chip_map) {
   sc->sc_save2[0] = pci_conf_read(sc->sc_pc,
       sc->sc_tag, ((0) ? 0x58 : 0x54));
  } else if (sc->sc_pp->chip_map == nforce_chip_map) {
   sc->sc_save2[0] = pci_conf_read(sc->sc_pc,
       sc->sc_tag, 0x58);
   sc->sc_save2[1] = pci_conf_read(sc->sc_pc,
       sc->sc_tag, 0x5c);
   sc->sc_save2[2] = pci_conf_read(sc->sc_pc,
       sc->sc_tag, 0x60);
  }
  break;
 case 4:
  for (i = 0; i < (sizeof((sc->sc_save)) / sizeof((sc->sc_save)[0])); i++)
   pci_conf_write(sc->sc_pc, sc->sc_tag,
       0x28 + 0x18 + (i * 4),
       sc->sc_save[i]);
  if (sc->sc_pp->chip_map == default_chip_map ||
      sc->sc_pp->chip_map == sata_chip_map ||
      sc->sc_pp->chip_map == piix_chip_map ||
      sc->sc_pp->chip_map == amd756_chip_map ||
      sc->sc_pp->chip_map == phison_chip_map ||
      sc->sc_pp->chip_map == rdc_chip_map ||
      sc->sc_pp->chip_map == ixp_chip_map ||
      sc->sc_pp->chip_map == acard_chip_map ||
      sc->sc_pp->chip_map == apollo_chip_map ||
      sc->sc_pp->chip_map == sis_chip_map) {
  } else if (sc->sc_pp->chip_map == sch_chip_map) {
   pci_conf_write(sc->sc_pc, sc->sc_tag,
       0x80, sc->sc_save2[0]);
   pci_conf_write(sc->sc_pc, sc->sc_tag,
       0x84, sc->sc_save2[1]);
  } else if (sc->sc_pp->chip_map == piixsata_chip_map) {
   pciide_pci_write(sc->sc_pc, sc->sc_tag,
       0x90, sc->sc_save2[0]);
   pciide_pci_write(sc->sc_pc, sc->sc_tag,
       0x09, sc->sc_save2[1]);
   pciide_pci_write(sc->sc_pc, sc->sc_tag,
       0x92, sc->sc_save2[2]);
  } else if (sc->sc_pp->chip_map == sii3112_chip_map) {
   pci_conf_write(sc->sc_pc, sc->sc_tag,
       0x88, sc->sc_save2[0]);
   delay(50 * 1000);
   pci_conf_write(sc->sc_pc, sc->sc_tag,
       0x40, sc->sc_save2[1]);
   delay(50 * 1000);
  } else if (sc->sc_pp->chip_map == ite_chip_map) {
   pci_conf_write(sc->sc_pc, sc->sc_tag,
       ((0) ? 0x58 : 0x54), sc->sc_save2[0]);
  } else if (sc->sc_pp->chip_map == nforce_chip_map) {
   pci_conf_write(sc->sc_pc, sc->sc_tag,
       0x58, sc->sc_save2[0]);
   pci_conf_write(sc->sc_pc, sc->sc_tag,
       0x5c, sc->sc_save2[1]);
   pci_conf_write(sc->sc_pc, sc->sc_tag,
       0x60, sc->sc_save2[2]);
  } else {
   printf("%s: restore for unknown chip map %x\n",
       sc->sc_wdcdev.sc_dev.dv_xname,
       sc->sc_pp->ide_product);
  }
  rv = config_activate_children(self, act);
  break;
 default:
  rv = config_activate_children(self, act);
  break;
 }
 return (rv);
}
int
pciide_mapregs_compat(struct pci_attach_args *pa, struct pciide_channel *cp,
    int compatchan, bus_size_t *cmdsizep, bus_size_t *ctlsizep)
{
 struct pciide_softc *sc = (struct pciide_softc *)cp->wdc_channel.wdc;
 struct channel_softc *wdc_cp = &cp->wdc_channel;
 pcireg_t csr;
 cp->compat = 1;
 *cmdsizep = 8;
 *ctlsizep = 1;
 csr = pci_conf_read(sc->sc_pc, sc->sc_tag, 0x04);
 pci_conf_write(sc->sc_pc, sc->sc_tag, 0x04,
     csr | 0x00000001 | 0x00000004);
 wdc_cp->cmd_iot = pa->pa_iot;
 if (bus_space_map(wdc_cp->cmd_iot, ((compatchan) == 0 ? 0x1f0 : 0x170),
     8, 0, &wdc_cp->cmd_ioh) != 0) {
  printf("%s: couldn't map %s cmd regs\n",
      sc->sc_wdcdev.sc_dev.dv_xname, cp->name);
  return (0);
 }
 wdc_cp->ctl_iot = pa->pa_iot;
 if (bus_space_map(wdc_cp->ctl_iot, ((compatchan) == 0 ? 0x3f6 : 0x376),
     1, 0, &wdc_cp->ctl_ioh) != 0) {
  printf("%s: couldn't map %s ctl regs\n",
      sc->sc_wdcdev.sc_dev.dv_xname, cp->name);
  bus_space_unmap(wdc_cp->cmd_iot, wdc_cp->cmd_ioh,
      8);
  return (0);
 }
 wdc_cp->cmd_iosz = *cmdsizep;
 wdc_cp->ctl_iosz = *ctlsizep;
 return (1);
}
int
pciide_unmapregs_compat(struct pciide_softc *sc, struct pciide_channel *cp)
{
 struct channel_softc *wdc_cp = &cp->wdc_channel;
 bus_space_unmap(wdc_cp->cmd_iot, wdc_cp->cmd_ioh, wdc_cp->cmd_iosz);
 bus_space_unmap(wdc_cp->ctl_iot, wdc_cp->cmd_ioh, wdc_cp->ctl_iosz);
 if (sc->sc_pci_ih != ((void *)0)) {
  do { } while (0);
  sc->sc_pci_ih = ((void *)0);
 }
 return (0);
}
int
pciide_mapregs_native(struct pci_attach_args *pa, struct pciide_channel *cp,
    bus_size_t *cmdsizep, bus_size_t *ctlsizep, int (*pci_intr)(void *))
{
 struct pciide_softc *sc = (struct pciide_softc *)cp->wdc_channel.wdc;
 struct channel_softc *wdc_cp = &cp->wdc_channel;
 const char *intrstr;
 pci_intr_handle_t intrhandle;
 pcireg_t maptype;
 cp->compat = 0;
 if (sc->sc_pci_ih == ((void *)0)) {
  if (pci_intr_map(pa, &intrhandle) != 0) {
   printf("%s: couldn't map native-PCI interrupt\n",
       sc->sc_wdcdev.sc_dev.dv_xname);
   return (0);
  }
  intrstr = pci_intr_string(pa->pa_pc, intrhandle);
  sc->sc_pci_ih = pci_intr_establish(pa->pa_pc,
      intrhandle, 5, pci_intr, sc,
      sc->sc_wdcdev.sc_dev.dv_xname);
  if (sc->sc_pci_ih != ((void *)0)) {
   printf("%s: using %s for native-PCI interrupt\n",
       sc->sc_wdcdev.sc_dev.dv_xname,
       intrstr ? intrstr : "unknown interrupt");
  } else {
   printf("%s: couldn't establish native-PCI interrupt",
       sc->sc_wdcdev.sc_dev.dv_xname);
   if (intrstr != ((void *)0))
    printf(" at %s", intrstr);
   printf("\n");
   return (0);
  }
 }
 cp->ih = sc->sc_pci_ih;
 sc->sc_pc = pa->pa_pc;
 maptype = pci_mapreg_type(pa->pa_pc, pa->pa_tag,
     (0x10 + (8 * (wdc_cp->channel))));
 ;
 if (pci_mapreg_map(pa, (0x10 + (8 * (wdc_cp->channel))),
     maptype, 0,
     &wdc_cp->cmd_iot, &wdc_cp->cmd_ioh, ((void *)0), cmdsizep, 0) != 0) {
  printf("%s: couldn't map %s cmd regs\n",
      sc->sc_wdcdev.sc_dev.dv_xname, cp->name);
  return (0);
 }
 maptype = pci_mapreg_type(pa->pa_pc, pa->pa_tag,
     (0x14 + (8 * (wdc_cp->channel))));
 ;
 if (pci_mapreg_map(pa, (0x14 + (8 * (wdc_cp->channel))),
     maptype, 0,
     &wdc_cp->ctl_iot, &cp->ctl_baseioh, ((void *)0), ctlsizep, 0) != 0) {
  printf("%s: couldn't map %s ctl regs\n",
      sc->sc_wdcdev.sc_dev.dv_xname, cp->name);
  bus_space_unmap(wdc_cp->cmd_iot, wdc_cp->cmd_ioh, *cmdsizep);
  return (0);
 }
 if (bus_space_subregion(wdc_cp->ctl_iot, cp->ctl_baseioh, 2, 1,
     &wdc_cp->ctl_ioh) != 0) {
  printf("%s: unable to subregion %s ctl regs\n",
      sc->sc_wdcdev.sc_dev.dv_xname, cp->name);
  bus_space_unmap(wdc_cp->cmd_iot, wdc_cp->cmd_ioh, *cmdsizep);
  bus_space_unmap(wdc_cp->cmd_iot, cp->ctl_baseioh, *ctlsizep);
  return (0);
 }
 wdc_cp->cmd_iosz = *cmdsizep;
 wdc_cp->ctl_iosz = *ctlsizep;
 return (1);
}
int
pciide_unmapregs_native(struct pciide_softc *sc, struct pciide_channel *cp)
{
 struct channel_softc *wdc_cp = &cp->wdc_channel;
 bus_space_unmap(wdc_cp->cmd_iot, wdc_cp->cmd_ioh, wdc_cp->cmd_iosz);
 bus_space_unmap(wdc_cp->ctl_iot, cp->ctl_baseioh, wdc_cp->ctl_iosz);
 if (sc->sc_pci_ih != ((void *)0)) {
  pci_intr_disestablish(sc->sc_pc, sc->sc_pci_ih);
  sc->sc_pci_ih = ((void *)0);
 }
 return (0);
}
void
pciide_mapreg_dma(struct pciide_softc *sc, struct pci_attach_args *pa)
{
 pcireg_t maptype;
 bus_addr_t addr;
 maptype = pci_mapreg_type(pa->pa_pc, pa->pa_tag,
     0x20);
 switch (maptype) {
 case 0x00000001:
  sc->sc_dma_ok = (pci_mapreg_info(pa->pa_pc, pa->pa_tag,
      0x20, 0x00000001,
      &addr, ((void *)0), ((void *)0)) == 0);
  if (sc->sc_dma_ok == 0) {
   printf(", unused (couldn't query registers)");
   break;
  }
  if ((sc->sc_pp->ide_flags & 0x0002)
      && addr >= 0x10000) {
   sc->sc_dma_ok = 0;
   printf(", unused (registers at unsafe address %#lx)", addr);
   break;
  }
 case 0x00000000:
  sc->sc_dma_ok = (pci_mapreg_map(pa,
      0x20, maptype, 0,
      &sc->sc_dma_iot, &sc->sc_dma_ioh, ((void *)0), &sc->sc_dma_iosz,
      0) == 0);
  sc->sc_dmat = pa->pa_dmat;
  if (sc->sc_dma_ok == 0) {
   printf(", unused (couldn't map registers)");
  } else {
   sc->sc_wdcdev.dma_arg = sc;
   sc->sc_wdcdev.dma_init = pciide_dma_init;
   sc->sc_wdcdev.dma_start = pciide_dma_start;
   sc->sc_wdcdev.dma_finish = pciide_dma_finish;
  }
  break;
 default:
  sc->sc_dma_ok = 0;
  printf(", (unsupported maptype 0x%x)", maptype);
  break;
 }
}
void
pciide_unmapreg_dma(struct pciide_softc *sc)
{
 bus_space_unmap(sc->sc_dma_iot, sc->sc_dma_ioh, sc->sc_dma_iosz);
}
int
pciide_intr_flag(struct pciide_channel *cp)
{
 struct pciide_softc *sc = (struct pciide_softc *)cp->wdc_channel.wdc;
 int chan = cp->wdc_channel.channel;
 if (cp->dma_in_progress) {
  int retry = 10;
  int status;
  for (retry = 10; retry > 0; retry--) {
   status = (sc)->sc_dmactl_read((sc), (chan));
   if (status & 0x04) {
    break;
   }
   delay(5);
  }
  if (retry == 0)
   return (0);
  return (1);
 }
 return (-1);
}
int
pciide_compat_intr(void *arg)
{
 struct pciide_channel *cp = arg;
 if (pciide_intr_flag(cp) == 0)
  return (0);
 if (cp->compat == 0)
  panic("pciide compat intr called for non-compat chan %p", cp);
 return (wdcintr(&cp->wdc_channel));
}
int
pciide_pci_intr(void *arg)
{
 struct pciide_softc *sc = arg;
 struct pciide_channel *cp;
 struct channel_softc *wdc_cp;
 int i, rv, crv;
 rv = 0;
 for (i = 0; i < sc->sc_wdcdev.nchannels; i++) {
  cp = &sc->pciide_channels[i];
  wdc_cp = &cp->wdc_channel;
  if (cp->compat)
   continue;
  if (cp->hw_ok == 0)
   continue;
  if (pciide_intr_flag(cp) == 0)
   continue;
  crv = wdcintr(wdc_cp);
  if (crv == 0)
   ;
  else if (crv == 1)
   rv = 1;
  else if (rv == 0)
   rv = crv;
 }
 return (rv);
}
u_int8_t
pciide_dmacmd_read(struct pciide_softc *sc, int chan)
{
 return (bus_space_read_1(sc->sc_dma_iot, sc->sc_dma_ioh,
     (0x00 + 0x08 * (chan))));
}
void
pciide_dmacmd_write(struct pciide_softc *sc, int chan, u_int8_t val)
{
 bus_space_write_1(sc->sc_dma_iot, sc->sc_dma_ioh,
     (0x00 + 0x08 * (chan)), val);
}
u_int8_t
pciide_dmactl_read(struct pciide_softc *sc, int chan)
{
 return (bus_space_read_1(sc->sc_dma_iot, sc->sc_dma_ioh,
     (0x02 + 0x08 * (chan))));
}
void
pciide_dmactl_write(struct pciide_softc *sc, int chan, u_int8_t val)
{
 bus_space_write_1(sc->sc_dma_iot, sc->sc_dma_ioh,
     (0x02 + 0x08 * (chan)), val);
}
void
pciide_dmatbl_write(struct pciide_softc *sc, int chan, u_int32_t val)
{
 bus_space_write_4(sc->sc_dma_iot, sc->sc_dma_ioh,
     (0x04 + 0x08 * (chan)), val);
}
void
pciide_channel_dma_setup(struct pciide_channel *cp)
{
 int drive;
 struct pciide_softc *sc = (struct pciide_softc *)cp->wdc_channel.wdc;
 struct ata_drive_datas *drvp;
 for (drive = 0; drive < 2; drive++) {
  drvp = &cp->wdc_channel.ch_drive[drive];
  if ((drvp->drive_flags & (0x0001|0x0002|0x0004)) == 0)
   continue;
  if (((drvp->drive_flags & 0x0010) == 0 &&
      (drvp->drive_flags & 0x0020) == 0) ||
      sc->sc_dma_ok == 0) {
   drvp->drive_flags &= ~(0x0010 | 0x0020);
   continue;
  }
  if (pciide_dma_table_setup(sc, cp->wdc_channel.channel, drive)
      != 0) {
   drvp->drive_flags &= ~(0x0010 | 0x0020);
   continue;
  }
 }
}
int
pciide_dma_table_setup(struct pciide_softc *sc, int channel, int drive)
{
 bus_dma_segment_t seg;
 int error, rseg;
 const bus_size_t dma_table_size =
     sizeof(struct idedma_table) * ((64 * 1024)/(1 << 13) + 1);
 struct pciide_dma_maps *dma_maps =
     &sc->pciide_channels[channel].dma_maps[drive];
 if (dma_maps->dma_table)
  return (0);
 if ((error = bus_dmamem_alloc(sc->sc_dmat, dma_table_size,
     0x00010000, 0x00010000, &seg, 1, &rseg,
     0x0001)) != 0) {
  printf("%s:%d: unable to allocate table DMA for "
      "drive %d, error=%d\n", sc->sc_wdcdev.sc_dev.dv_xname,
      channel, drive, error);
  return (error);
 }
 if ((error = bus_dmamem_map(sc->sc_dmat, &seg, rseg,
     dma_table_size,
     (caddr_t *)&dma_maps->dma_table,
     0x0001|0x0004)) != 0) {
  printf("%s:%d: unable to map table DMA for"
      "drive %d, error=%d\n", sc->sc_wdcdev.sc_dev.dv_xname,
      channel, drive, error);
  return (error);
 }
 ;
 if ((error = bus_dmamap_create(sc->sc_dmat, dma_table_size,
     1, dma_table_size, 0x00010000, 0x0001,
     &dma_maps->dmamap_table)) != 0) {
  printf("%s:%d: unable to create table DMA map for "
      "drive %d, error=%d\n", sc->sc_wdcdev.sc_dev.dv_xname,
      channel, drive, error);
  return (error);
 }
 if ((error = bus_dmamap_load(sc->sc_dmat,
     dma_maps->dmamap_table,
     dma_maps->dma_table,
     dma_table_size, ((void *)0), 0x0001)) != 0) {
  printf("%s:%d: unable to load table DMA map for "
      "drive %d, error=%d\n", sc->sc_wdcdev.sc_dev.dv_xname,
      channel, drive, error);
  return (error);
 }
 ;
 if ((error = bus_dmamap_create(sc->sc_dmat, 0x00010000,
     ((64 * 1024)/(1 << 13) + 1), sc->sc_dma_maxsegsz, sc->sc_dma_boundary,
     0x0001 | 0x0002,
     &dma_maps->dmamap_xfer)) != 0) {
  printf("%s:%d: unable to create xfer DMA map for "
      "drive %d, error=%d\n", sc->sc_wdcdev.sc_dev.dv_xname,
      channel, drive, error);
  return (error);
 }
 return (0);
}
int
pciide_dma_init(void *v, int channel, int drive, void *databuf,
    size_t datalen, int flags)
{
 struct pciide_softc *sc = v;
 int error, seg;
 struct pciide_channel *cp = &sc->pciide_channels[channel];
 struct pciide_dma_maps *dma_maps =
     &sc->pciide_channels[channel].dma_maps[drive];
 error = bus_dmamap_load(sc->sc_dmat,
     dma_maps->dmamap_xfer,
     databuf, datalen, ((void *)0), 0x0001|0x0100);
 if (error) {
  printf("%s:%d: unable to load xfer DMA map for "
      "drive %d, error=%d\n", sc->sc_wdcdev.sc_dev.dv_xname,
      channel, drive, error);
  return (error);
 }
 bus_dmamap_sync(sc->sc_dmat, dma_maps->dmamap_xfer, 0,
     dma_maps->dmamap_xfer->dm_mapsize,
     (flags & 0x01) ?
     0x01 : 0x04);
 for (seg = 0; seg < dma_maps->dmamap_xfer->dm_nsegs; seg++) {
  {
  u_long phys = dma_maps->dmamap_xfer->dm_segs[seg].ds_addr;
  u_long len = dma_maps->dmamap_xfer->dm_segs[seg].ds_len;
  if ((phys & ~0x0000FFFF) !=
      ((phys + len - 1) & ~0x0000FFFF)) {
   printf("pciide_dma: segment %d physical addr 0x%lx"
       " len 0x%lx not properly aligned\n",
       seg, phys, len);
   panic("pciide_dma: buf align");
  }
  }
  dma_maps->dma_table[seg].base_addr =
      __extension__({ __uint32_t __swap32gen_x = (dma_maps->dmamap_xfer->dm_segs[seg].ds_addr); (__uint32_t)((__swap32gen_x & 0xff) << 24 | (__swap32gen_x & 0xff00) << 8 | (__swap32gen_x & 0xff0000) >> 8 | (__swap32gen_x & 0xff000000) >> 24); });
  dma_maps->dma_table[seg].byte_count =
      __extension__({ __uint32_t __swap32gen_x = (dma_maps->dmamap_xfer->dm_segs[seg].ds_len & 0x0000FFFF); (__uint32_t)((__swap32gen_x & 0xff) << 24 | (__swap32gen_x & 0xff00) << 8 | (__swap32gen_x & 0xff0000) >> 8 | (__swap32gen_x & 0xff000000) >> 24); });
  ;
 }
 dma_maps->dma_table[dma_maps->dmamap_xfer->dm_nsegs -1].byte_count |=
     __extension__({ __uint32_t __swap32gen_x = (0x80000000); (__uint32_t)((__swap32gen_x & 0xff) << 24 | (__swap32gen_x & 0xff00) << 8 | (__swap32gen_x & 0xff0000) >> 8 | (__swap32gen_x & 0xff000000) >> 24); });
 bus_dmamap_sync(sc->sc_dmat, dma_maps->dmamap_table, 0,
     dma_maps->dmamap_table->dm_mapsize,
     0x04);
 if (dma_maps->dmamap_table->dm_segs[0].ds_addr & ~0xfffffffc) {
  printf("pciide_dma_init: addr 0x%lx not properly aligned\n",
      dma_maps->dmamap_table->dm_segs[0].ds_addr);
  panic("pciide_dma_init: table align");
 }
 (sc)->sc_dmactl_write((sc), (channel), ((sc)->sc_dmactl_read((sc), (channel))));
 (sc)->sc_dmatbl_write((sc), (channel), (dma_maps->dmamap_table->dm_segs[0].ds_addr));
 (sc)->sc_dmacmd_write((sc), (channel), (((flags & 0x01) ? 0x08 : 0) | cp->idedma_cmd));
 dma_maps->dma_flags = flags;
 return (0);
}
void
pciide_dma_start(void *v, int channel, int drive)
{
 struct pciide_softc *sc = v;
 ;
 (sc)->sc_dmacmd_write((sc), (channel), ((sc)->sc_dmacmd_read((sc), (channel)) | 0x01));
 sc->pciide_channels[channel].dma_in_progress = 1;
}
int
pciide_dma_finish(void *v, int channel, int drive, int force)
{
 struct pciide_softc *sc = v;
 struct pciide_channel *cp = &sc->pciide_channels[channel];
 u_int8_t status;
 int error = 0;
 struct pciide_dma_maps *dma_maps =
     &sc->pciide_channels[channel].dma_maps[drive];
 status = (sc)->sc_dmactl_read((sc), (channel));
 ;
 if (status == 0xff)
  return (status);
 if (force == 0 && (status & 0x04) == 0) {
  error = 0x01;
  goto done;
 }
 (sc)->sc_dmacmd_write((sc), (channel), (((dma_maps->dma_flags & 0x01) ? 0x00 : 0x08) | cp->idedma_cmd));
 bus_dmamap_sync(sc->sc_dmat, dma_maps->dmamap_xfer, 0,
     dma_maps->dmamap_xfer->dm_mapsize,
     (dma_maps->dma_flags & 0x01) ?
     0x02 : 0x08);
 bus_dmamap_unload(sc->sc_dmat, dma_maps->dmamap_xfer);
 (sc)->sc_dmactl_write((sc), (channel), (status));
 if ((status & 0x02) != 0) {
  printf("%s:%d:%d: bus-master DMA error: status=0x%x\n",
      sc->sc_wdcdev.sc_dev.dv_xname, channel, drive, status);
  error |= 0x02;
 }
 if ((status & 0x04) == 0) {
  printf("%s:%d:%d: bus-master DMA error: missing interrupt, "
      "status=0x%x\n", sc->sc_wdcdev.sc_dev.dv_xname, channel,
      drive, status);
  error |= 0x01;
 }
 if ((status & 0x01) != 0) {
  error |= 0x04;
 }
done:
 sc->pciide_channels[channel].dma_in_progress = 0;
 return (error);
}
void
pciide_irqack(struct channel_softc *chp)
{
 struct pciide_channel *cp = (struct pciide_channel *)chp;
 struct pciide_softc *sc = (struct pciide_softc *)cp->wdc_channel.wdc;
 int chan = chp->channel;
 (sc)->sc_dmactl_write((sc), (chan), ((sc)->sc_dmactl_read((sc), (chan))));
}
int
pciide_chansetup(struct pciide_softc *sc, int channel, pcireg_t interface)
{
 struct pciide_channel *cp = &sc->pciide_channels[channel];
 sc->wdc_chanarray[channel] = &cp->wdc_channel;
 cp->name = ((channel) == 0 ? "channel 0" : "channel 1");
 cp->wdc_channel.channel = channel;
 cp->wdc_channel.wdc = &sc->sc_wdcdev;
 cp->wdc_channel.ch_queue = wdc_alloc_queue();
 if (cp->wdc_channel.ch_queue == ((void *)0)) {
  printf("%s: %s "
      "cannot allocate channel queue",
      sc->sc_wdcdev.sc_dev.dv_xname, cp->name);
  return (0);
 }
 cp->hw_ok = 1;
 return (1);
}
void
pciide_chanfree(struct pciide_softc *sc, int channel)
{
 struct pciide_channel *cp = &sc->pciide_channels[channel];
 if (cp->wdc_channel.ch_queue)
  wdc_free_queue(cp->wdc_channel.ch_queue);
}
void
pciide_mapchan(struct pci_attach_args *pa, struct pciide_channel *cp,
    pcireg_t interface, bus_size_t *cmdsizep, bus_size_t *ctlsizep,
    int (*pci_intr)(void *))
{
 struct channel_softc *wdc_cp = &cp->wdc_channel;
 if (interface & (0x01 << (2 * (wdc_cp->channel))))
  cp->hw_ok = pciide_mapregs_native(pa, cp, cmdsizep, ctlsizep,
      pci_intr);
 else
  cp->hw_ok = pciide_mapregs_compat(pa, cp,
      wdc_cp->channel, cmdsizep, ctlsizep);
 if (cp->hw_ok == 0)
  return;
 wdc_cp->data32iot = wdc_cp->cmd_iot;
 wdc_cp->data32ioh = wdc_cp->cmd_ioh;
 wdcattach(wdc_cp);
}
void
pciide_unmap_chan(struct pciide_softc *sc, struct pciide_channel *cp, int flags)
{
 struct channel_softc *wdc_cp = &cp->wdc_channel;
 wdcdetach(wdc_cp, flags);
 if (cp->compat != 0)
  pciide_unmapregs_compat(sc, cp);
 else
  pciide_unmapregs_native(sc, cp);
}
int
pciide_chan_candisable(struct pciide_channel *cp)
{
 struct pciide_softc *sc = (struct pciide_softc *)cp->wdc_channel.wdc;
 struct channel_softc *wdc_cp = &cp->wdc_channel;
 if ((wdc_cp->ch_drive[0].drive_flags & (0x0001|0x0002|0x0004)) == 0 &&
     (wdc_cp->ch_drive[1].drive_flags & (0x0001|0x0002|0x0004)) == 0) {
  printf("%s: %s disabled (no drives)\n",
      sc->sc_wdcdev.sc_dev.dv_xname, cp->name);
  cp->hw_ok = 0;
  return (1);
 }
 return (0);
}
void
pciide_map_compat_intr(struct pci_attach_args *pa, struct pciide_channel *cp,
    int compatchan, int interface)
{
 struct pciide_softc *sc = (struct pciide_softc *)cp->wdc_channel.wdc;
 struct channel_softc *wdc_cp = &cp->wdc_channel;
 if ((interface & (0x01 << (2 * (wdc_cp->channel)))) != 0)
  return;
 cp->compat = 1;
 cp->ih = (((void *)0));
 if (cp->ih == ((void *)0)) {
  printf("%s: no compatibility interrupt for use by %s\n",
      sc->sc_wdcdev.sc_dev.dv_xname, cp->name);
  cp->hw_ok = 0;
 }
}
void
pciide_unmap_compat_intr(struct pci_attach_args *pa, struct pciide_channel *cp,
    int compatchan, int interface)
{
 struct channel_softc *wdc_cp = &cp->wdc_channel;
 if ((interface & (0x01 << (2 * (wdc_cp->channel)))) != 0)
  return;
 do { } while (0);
}
void
pciide_print_channels(int nchannels, pcireg_t interface)
{
 int i;
 for (i = 0; i < nchannels; i++) {
  printf(", %s %s to %s", ((i) == 0 ? "channel 0" : "channel 1"),
      (interface & (0x02 << (2 * (i)))) ?
      "configured" : "wired",
      (interface & (0x01 << (2 * (i)))) ? "native-PCI" :
      "compatibility");
 }
 printf("\n");
}
void
pciide_print_modes(struct pciide_channel *cp)
{
 wdc_print_current_modes(&cp->wdc_channel);
}
void
default_chip_map(struct pciide_softc *sc, struct pci_attach_args *pa)
{
 struct pciide_channel *cp;
 pcireg_t interface = (((pa->pa_class) >> 8) & 0xff);
 pcireg_t csr;
 int channel, drive;
 struct ata_drive_datas *drvp;
 u_int8_t idedma_ctl;
 bus_size_t cmdsize, ctlsize;
 char *failreason;
 if (interface & 0x80) {
  printf(": DMA");
  if (sc->sc_pp == &default_product_desc &&
      (sc->sc_wdcdev.sc_dev.dv_cfdata->cf_flags &
      0x01) == 0) {
   printf(" (unsupported)");
   sc->sc_dma_ok = 0;
  } else {
   pciide_mapreg_dma(sc, pa);
   if (sc->sc_dma_ok != 0)
    printf(", (partial support)");
  }
 } else {
  printf(": no DMA");
  sc->sc_dma_ok = 0;
 }
 if (sc->sc_dma_ok) {
  sc->sc_wdcdev.cap |= 0x0008 | 0x0400;
  sc->sc_wdcdev.irqack = pciide_irqack;
 }
 sc->sc_wdcdev.PIO_cap = 0;
 sc->sc_wdcdev.DMA_cap = 0;
 sc->sc_wdcdev.channels = sc->wdc_chanarray;
 sc->sc_wdcdev.nchannels = 2;
 sc->sc_wdcdev.cap |= 0x0001;
 pciide_print_channels(sc->sc_wdcdev.nchannels, interface);
 for (channel = 0; channel < sc->sc_wdcdev.nchannels; channel++) {
  cp = &sc->pciide_channels[channel];
  if (pciide_chansetup(sc, channel, interface) == 0)
   continue;
  if (interface & (0x01 << (2 * (channel)))) {
   cp->hw_ok = pciide_mapregs_native(pa, cp, &cmdsize,
       &ctlsize, pciide_pci_intr);
  } else {
   cp->hw_ok = pciide_mapregs_compat(pa, cp,
       channel, &cmdsize, &ctlsize);
  }
  if (cp->hw_ok == 0)
   continue;
  failreason = ((void *)0);
  pciide_map_compat_intr(pa, cp, channel, interface);
  if (cp->hw_ok == 0)
   continue;
  if (!wdcprobe(&cp->wdc_channel)) {
   failreason = "not responding; disabled or no drives?";
   goto next;
  }
  csr = pci_conf_read(sc->sc_pc, sc->sc_tag,
        0x04);
  pci_conf_write(sc->sc_pc, sc->sc_tag, 0x04,
      csr & ~0x00000001);
  if (wdcprobe(&cp->wdc_channel))
   failreason = "other hardware responding at addresses";
  pci_conf_write(sc->sc_pc, sc->sc_tag,
      0x04, csr);
next:
  if (failreason) {
   printf("%s: %s ignored (%s)\n",
       sc->sc_wdcdev.sc_dev.dv_xname, cp->name,
       failreason);
   cp->hw_ok = 0;
   pciide_unmap_compat_intr(pa, cp, channel, interface);
   bus_space_unmap(cp->wdc_channel.cmd_iot,
       cp->wdc_channel.cmd_ioh, cmdsize);
   if (interface & (0x01 << (2 * (channel))))
    bus_space_unmap(cp->wdc_channel.ctl_iot,
        cp->ctl_baseioh, ctlsize);
   else
    bus_space_unmap(cp->wdc_channel.ctl_iot,
        cp->wdc_channel.ctl_ioh, ctlsize);
  }
  if (cp->hw_ok) {
   cp->wdc_channel.data32iot = cp->wdc_channel.cmd_iot;
   cp->wdc_channel.data32ioh = cp->wdc_channel.cmd_ioh;
   wdcattach(&cp->wdc_channel);
  }
 }
 if (sc->sc_dma_ok == 0)
  return;
 for (channel = 0; channel < sc->sc_wdcdev.nchannels; channel++) {
  idedma_ctl = 0;
  cp = &sc->pciide_channels[channel];
  for (drive = 0; drive < 2; drive++) {
   drvp = &cp->wdc_channel.ch_drive[drive];
   if ((drvp->drive_flags & (0x0001|0x0002|0x0004)) == 0)
    continue;
   if ((drvp->drive_flags & 0x0010) == 0)
    continue;
   if (pciide_dma_table_setup(sc, channel, drive) != 0) {
    printf("%s:%d:%d: cannot allocate DMA maps, "
        "using PIO transfers\n",
        sc->sc_wdcdev.sc_dev.dv_xname,
        channel, drive);
    drvp->drive_flags &= ~0x0010;
   }
   printf("%s:%d:%d: using DMA data transfers\n",
       sc->sc_wdcdev.sc_dev.dv_xname,
       channel, drive);
   idedma_ctl |= (0x20 << (drive));
  }
  if (idedma_ctl != 0) {
   (sc)->sc_dmactl_write((sc), (channel), (idedma_ctl));
  }
 }
}
void
default_chip_unmap(struct pciide_softc *sc, int flags)
{
 struct pciide_channel *cp;
 int channel;
 for (channel = 0; channel < sc->sc_wdcdev.nchannels; channel++) {
  cp = &sc->pciide_channels[channel];
  pciide_unmap_chan(sc, cp, flags);
  pciide_chanfree(sc, channel);
 }
 pciide_unmapreg_dma(sc);
 if (sc->sc_cookie)
  free(sc->sc_cookie, 2, sc->sc_cookielen);
}
void
sata_chip_map(struct pciide_softc *sc, struct pci_attach_args *pa)
{
 struct pciide_channel *cp;
 pcireg_t interface = (((pa->pa_class) >> 8) & 0xff);
 int channel;
 bus_size_t cmdsize, ctlsize;
 if (interface == 0) {
  ;
  interface = 0x80 |
      (0x01 << (2 * (0))) | (0x01 << (2 * (1)));
 }
 printf(": DMA");
 pciide_mapreg_dma(sc, pa);
 printf("\n");
 if (sc->sc_dma_ok) {
  sc->sc_wdcdev.cap |= 0x0010 |
      0x0008 | 0x0400;
  sc->sc_wdcdev.irqack = pciide_irqack;
 }
 sc->sc_wdcdev.PIO_cap = 4;
 sc->sc_wdcdev.DMA_cap = 2;
 sc->sc_wdcdev.UDMA_cap = 6;
 sc->sc_wdcdev.channels = sc->wdc_chanarray;
 sc->sc_wdcdev.nchannels = 2;
 sc->sc_wdcdev.cap |= 0x0001 | 0x0002 |
     0x0004 | 0x2000;
 sc->sc_wdcdev.set_modes = sata_setup_channel;
 sc->chip_unmap = default_chip_unmap;
 for (channel = 0; channel < sc->sc_wdcdev.nchannels; channel++) {
  cp = &sc->pciide_channels[channel];
  if (pciide_chansetup(sc, channel, interface) == 0)
   continue;
  pciide_mapchan(pa, cp, interface, &cmdsize, &ctlsize,
      pciide_pci_intr);
  sata_setup_channel(&cp->wdc_channel);
 }
}
void
sata_setup_channel(struct channel_softc *chp)
{
 struct ata_drive_datas *drvp;
 int drive;
 u_int32_t idedma_ctl;
 struct pciide_channel *cp = (struct pciide_channel *)chp;
 struct pciide_softc *sc = (struct pciide_softc *)cp->wdc_channel.wdc;
 pciide_channel_dma_setup(cp);
 idedma_ctl = 0;
 for (drive = 0; drive < 2; drive++) {
  drvp = &chp->ch_drive[drive];
  if ((drvp->drive_flags & (0x0001|0x0002|0x0004)) == 0)
   continue;
  if (drvp->drive_flags & 0x0020) {
   drvp->drive_flags &= ~0x0010;
   idedma_ctl |= (0x20 << (drive));
  } else if (drvp->drive_flags & 0x0010) {
   idedma_ctl |= (0x20 << (drive));
  }
 }
 if (idedma_ctl != 0) {
  (sc)->sc_dmactl_write((sc), (chp->channel), (idedma_ctl));
 }
 pciide_print_modes(cp);
}
void
piix_timing_debug(struct pciide_softc *sc)
{
 ;
 if (sc->sc_pp->ide_product != 0x1230 &&
     sc->sc_pp->ide_product != 0x122e) {
  ;
  if (sc->sc_wdcdev.cap & 0x0010) {
   ;
  }
  if (sc->sc_pp->ide_product == 0x25a2 ||
      sc->sc_pp->ide_product == 0x269e ||
      sc->sc_pp->ide_product == 0x2411 ||
      sc->sc_pp->ide_product == 0x2421 ||
      sc->sc_pp->ide_product == 0x244a ||
      sc->sc_pp->ide_product == 0x244b ||
      sc->sc_pp->ide_product == 0x248a ||
      sc->sc_pp->ide_product == 0x248b ||
      sc->sc_pp->ide_product == 0x24cb ||
      sc->sc_pp->ide_product == 0x24c1 ||
      sc->sc_pp->ide_product == 0x24ca ||
      sc->sc_pp->ide_product == 0x24db ||
      sc->sc_pp->ide_product == 0x266f ||
      sc->sc_pp->ide_product == 0x27df ||
      sc->sc_pp->ide_product == 0x2850 ||
      sc->sc_pp->ide_product == 0x7601) {
   ;
  }
 }
 ;
}
void
piix_chip_map(struct pciide_softc *sc, struct pci_attach_args *pa)
{
 struct pciide_channel *cp;
 int channel;
 u_int32_t idetim;
 bus_size_t cmdsize, ctlsize;
 pcireg_t interface = (((pa->pa_class) >> 8) & 0xff);
 printf(": DMA");
 pciide_mapreg_dma(sc, pa);
 sc->sc_wdcdev.cap |= 0x0001 | 0x0002 |
     0x0004;
 if (sc->sc_dma_ok) {
  sc->sc_wdcdev.cap |= 0x0008 | 0x0400;
  sc->sc_wdcdev.irqack = pciide_irqack;
  switch (sc->sc_pp->ide_product) {
  case 0x25a2:
  case 0x269e:
  case 0x7111:
  case 0x7601:
  case 0x7199:
  case 0x84ca:
  case 0x2411:
  case 0x2421:
  case 0x244a:
  case 0x244b:
  case 0x248a:
  case 0x248b:
  case 0x24cb:
  case 0x24c1:
  case 0x24ca:
  case 0x24db:
  case 0x266f:
  case 0x27df:
  case 0x2850:
   sc->sc_wdcdev.cap |= 0x0010;
   break;
  }
 }
 sc->sc_wdcdev.PIO_cap = 4;
 sc->sc_wdcdev.DMA_cap = 2;
 switch (sc->sc_pp->ide_product) {
 case 0x2411:
 case 0x7601:
  sc->sc_wdcdev.UDMA_cap = 4;
  break;
 case 0x25a2:
 case 0x269e:
 case 0x244a:
 case 0x244b:
 case 0x248a:
 case 0x248b:
 case 0x24cb:
 case 0x24c1:
 case 0x24ca:
 case 0x24db:
 case 0x266f:
 case 0x27df:
 case 0x2850:
  sc->sc_wdcdev.UDMA_cap = 5;
  break;
 default:
  sc->sc_wdcdev.UDMA_cap = 2;
  break;
 }
 if (sc->sc_pp->ide_product == 0x1230 ||
     sc->sc_pp->ide_product == 0x122e) {
  sc->sc_wdcdev.set_modes = piix_setup_channel;
 } else {
  sc->sc_wdcdev.set_modes = piix3_4_setup_channel;
 }
 sc->sc_wdcdev.channels = sc->wdc_chanarray;
 sc->sc_wdcdev.nchannels = 2;
 pciide_print_channels(sc->sc_wdcdev.nchannels, interface);
 piix_timing_debug(sc);
 for (channel = 0; channel < sc->sc_wdcdev.nchannels; channel++) {
  cp = &sc->pciide_channels[channel];
  if (pciide_chansetup(sc, channel, interface) == 0)
   continue;
  idetim = pci_conf_read(sc->sc_pc, sc->sc_tag, 0x40);
  if (((((idetim) >> (16 * (channel))) & 0x0000FFFF) &
      0x8000) == 0) {
   printf("%s: %s ignored (disabled)\n",
       sc->sc_wdcdev.sc_dev.dv_xname, cp->name);
   cp->hw_ok = 0;
   continue;
  }
  pciide_map_compat_intr(pa, cp, channel, interface);
  if (cp->hw_ok == 0)
   continue;
  pciide_mapchan(pa, cp, interface, &cmdsize, &ctlsize,
      pciide_pci_intr);
  if (cp->hw_ok == 0)
   goto next;
  if (pciide_chan_candisable(cp)) {
   idetim = ((idetim) & ~((0x8000) << (16 * (channel))));
   pci_conf_write(sc->sc_pc, sc->sc_tag, 0x40,
       idetim);
  }
  if (cp->hw_ok == 0)
   goto next;
  sc->sc_wdcdev.set_modes(&cp->wdc_channel);
next:
  if (cp->hw_ok == 0)
   pciide_unmap_compat_intr(pa, cp, channel, interface);
 }
 piix_timing_debug(sc);
}
void
piixsata_chip_map(struct pciide_softc *sc, struct pci_attach_args *pa)
{
 struct pciide_channel *cp;
 pcireg_t interface = (((pa->pa_class) >> 8) & 0xff);
 int channel;
 bus_size_t cmdsize, ctlsize;
 u_int8_t reg64, ich = 0;
 printf(": DMA");
 pciide_mapreg_dma(sc, pa);
 if (sc->sc_dma_ok) {
  sc->sc_wdcdev.cap |= 0x0010 |
      0x0008 | 0x0400;
  sc->sc_wdcdev.irqack = pciide_irqack;
  sc->sc_wdcdev.DMA_cap = 2;
  sc->sc_wdcdev.UDMA_cap = 6;
 }
 sc->sc_wdcdev.PIO_cap = 4;
 sc->sc_wdcdev.channels = sc->wdc_chanarray;
 sc->sc_wdcdev.nchannels = 2;
 sc->sc_wdcdev.cap |= 0x0001 | 0x0002 |
     0x0004 | 0x2000;
 sc->sc_wdcdev.set_modes = sata_setup_channel;
 switch(sc->sc_pp->ide_product) {
 case 0x25a3:
 case 0x25b0:
 case 0x24d1:
 case 0x24df:
  ich = 5;
  break;
 case 0x2651:
 case 0x2652:
 case 0x2653:
  ich = 6;
  break;
 default:
  ich = 7;
  break;
 }
 if (ich == 5) {
  reg64 = pciide_pci_read(sc->sc_pc, sc->sc_tag, 0x90);
  if ((reg64 & 0x04) == 0) {
   reg64 = pciide_pci_read(pa->pa_pc, pa->pa_tag,
       0x09);
   reg64 |= 0x01 |
       0x04;
   pciide_pci_write(pa->pa_pc, pa->pa_tag,
       0x09, reg64);
   interface |= (0x01 << (2 * (0))) |
       (0x01 << (2 * (1)));
  }
 } else {
  reg64 = pciide_pci_read(sc->sc_pc, sc->sc_tag, 0x90) &
      0x03;
  if (reg64 != 0x01 &&
      reg64 != 0x02) {
   reg64 = pciide_pci_read(pa->pa_pc, pa->pa_tag,
       0x09);
   reg64 |= 0x01 |
       0x04;
   pciide_pci_write(pa->pa_pc, pa->pa_tag,
       0x09, reg64);
   interface |= (0x01 << (2 * (0))) |
       (0x01 << (2 * (1)));
   if (ich >= 7) {
    reg64 = pciide_pci_read(sc->sc_pc, sc->sc_tag,
        0x90) & ~0xc0;
    pciide_pci_write(pa->pa_pc, pa->pa_tag,
        0x90, reg64);
   }
  }
 }
 pciide_print_channels(sc->sc_wdcdev.nchannels, interface);
 for (channel = 0; channel < sc->sc_wdcdev.nchannels; channel++) {
  cp = &sc->pciide_channels[channel];
  if (pciide_chansetup(sc, channel, interface) == 0)
   continue;
  pciide_map_compat_intr(pa, cp, channel, interface);
  if (cp->hw_ok == 0)
   continue;
  pciide_mapchan(pa, cp, interface, &cmdsize, &ctlsize,
      pciide_pci_intr);
  if (cp->hw_ok != 0)
   sc->sc_wdcdev.set_modes(&cp->wdc_channel);
  if (cp->hw_ok == 0)
   pciide_unmap_compat_intr(pa, cp, channel, interface);
 }
}
void
piix_setup_channel(struct channel_softc *chp)
{
 u_int8_t mode[2], drive;
 u_int32_t oidetim, idetim, idedma_ctl;
 struct pciide_channel *cp = (struct pciide_channel *)chp;
 struct pciide_softc *sc = (struct pciide_softc *)cp->wdc_channel.wdc;
 struct ata_drive_datas *drvp = cp->wdc_channel.ch_drive;
 oidetim = pci_conf_read(sc->sc_pc, sc->sc_tag, 0x40);
 idetim = ((oidetim) & ~((0xffff) << (16 * (chp->channel))));
 idedma_ctl = 0;
 idetim = ((idetim) | ((0x8000) << (16 * (chp->channel))));
 pciide_channel_dma_setup(cp);
 if ((drvp[0].drive_flags & 0x0010) &&
     (drvp[1].drive_flags & 0x0010)) {
  mode[0] = mode[1] =
      min(drvp[0].DMA_mode, drvp[1].DMA_mode);
      drvp[0].DMA_mode = mode[0];
      drvp[1].DMA_mode = mode[1];
  goto ok;
 }
 if (drvp[0].drive_flags & 0x0010) {
  mode[0] = drvp[0].DMA_mode;
  mode[1] = drvp[1].PIO_mode;
  if (piix_isp_pio[mode[1]] != piix_isp_dma[mode[0]] ||
      piix_rtc_pio[mode[1]] != piix_rtc_dma[mode[0]])
   mode[1] = drvp[1].PIO_mode = 0;
  goto ok;
 }
 if (drvp[1].drive_flags & 0x0010) {
  mode[1] = drvp[1].DMA_mode;
  mode[0] = drvp[0].PIO_mode;
  if (piix_isp_pio[mode[0]] != piix_isp_dma[mode[1]] ||
      piix_rtc_pio[mode[0]] != piix_rtc_dma[mode[1]])
   mode[0] = drvp[0].PIO_mode = 0;
  goto ok;
 }
 if (drvp[0].PIO_mode < 2) {
  mode[0] = drvp[0].PIO_mode = 0;
  mode[1] = drvp[1].PIO_mode;
 } else if (drvp[1].PIO_mode < 2) {
  mode[1] = drvp[1].PIO_mode = 0;
  mode[0] = drvp[0].PIO_mode;
 } else {
  mode[0] = mode[1] =
      min(drvp[1].PIO_mode, drvp[0].PIO_mode);
  drvp[0].PIO_mode = mode[0];
  drvp[1].PIO_mode = mode[1];
 }
ok:
 for (drive = 0; drive < 2; drive++) {
  if (drvp[drive].drive_flags & 0x0010) {
   idetim |= piix_setup_idetim_timings(
       mode[drive], 1, chp->channel);
   goto end;
  }
 }
 if (mode[0] >= 2)
  idetim |= piix_setup_idetim_timings(
      mode[0], 0, chp->channel);
 else
  idetim |= piix_setup_idetim_timings(
      mode[1], 0, chp->channel);
end:
 for (drive = 0; drive < 2; drive++) {
  if ((drvp[drive].drive_flags & (0x0001|0x0002|0x0004)) == 0)
   continue;
  idetim |= piix_setup_idetim_drvs(&drvp[drive]);
  if (drvp[drive].drive_flags & 0x0010)
   idedma_ctl |= (0x20 << (drive));
 }
 if (idedma_ctl != 0) {
  bus_space_write_1(sc->sc_dma_iot, sc->sc_dma_ioh,
      (0x02 + 0x08 * (chp->channel)),
      idedma_ctl);
 }
 pci_conf_write(sc->sc_pc, sc->sc_tag, 0x40, idetim);
 pciide_print_modes(cp);
}
void
piix3_4_setup_channel(struct channel_softc *chp)
{
 struct ata_drive_datas *drvp;
 u_int32_t oidetim, idetim, sidetim, udmareg, ideconf, idedma_ctl;
 struct pciide_channel *cp = (struct pciide_channel *)chp;
 struct pciide_softc *sc = (struct pciide_softc *)cp->wdc_channel.wdc;
 int drive;
 int channel = chp->channel;
 oidetim = pci_conf_read(sc->sc_pc, sc->sc_tag, 0x40);
 sidetim = pci_conf_read(sc->sc_pc, sc->sc_tag, 0x44);
 udmareg = pci_conf_read(sc->sc_pc, sc->sc_tag, 0x48);
 ideconf = pci_conf_read(sc->sc_pc, sc->sc_tag, 0x54);
 idetim = ((oidetim) & ~((0xffff) << (16 * (channel))));
 sidetim &= ~((0x0c << ((channel) * 4)) |
     (0x03 << ((channel) * 4)));
 idedma_ctl = 0;
 if (((((oidetim) >> (16 * (channel))) & 0x0000FFFF) & 0x8000) == 0)
  return;
 idetim = ((idetim) | ((0x8000) << (16 * (channel))));
 pciide_channel_dma_setup(cp);
 for (drive = 0; drive < 2; drive++) {
  udmareg &= ~((0x01 << ((channel) * 2 + (drive))) |
      (((0x3) << ((channel * 8) + (drive * 4))) << 16));
  drvp = &chp->ch_drive[drive];
  if ((drvp->drive_flags & (0x0001|0x0002|0x0004)) == 0)
   continue;
  if (((drvp->drive_flags & 0x0010) == 0 &&
      (drvp->drive_flags & 0x0020) == 0))
   goto pio;
  if (sc->sc_pp->ide_product == 0x25a2 ||
      sc->sc_pp->ide_product == 0x269e ||
      sc->sc_pp->ide_product == 0x2411 ||
      sc->sc_pp->ide_product == 0x2421 ||
      sc->sc_pp->ide_product == 0x244a ||
      sc->sc_pp->ide_product == 0x244b ||
      sc->sc_pp->ide_product == 0x248a ||
      sc->sc_pp->ide_product == 0x248b ||
      sc->sc_pp->ide_product == 0x24cb ||
      sc->sc_pp->ide_product == 0x24c1 ||
      sc->sc_pp->ide_product == 0x24ca ||
      sc->sc_pp->ide_product == 0x24db ||
      sc->sc_pp->ide_product == 0x266f ||
      sc->sc_pp->ide_product == 0x27df ||
      sc->sc_pp->ide_product == 0x2850 ||
      sc->sc_pp->ide_product == 0x7601) {
   ideconf |= 0x0400;
  }
  if (sc->sc_pp->ide_product == 0x25a2 ||
      sc->sc_pp->ide_product == 0x269e ||
      sc->sc_pp->ide_product == 0x244a ||
      sc->sc_pp->ide_product == 0x244b||
      sc->sc_pp->ide_product == 0x248a||
      sc->sc_pp->ide_product == 0x248b ||
      sc->sc_pp->ide_product == 0x24cb ||
      sc->sc_pp->ide_product == 0x24c1 ||
      sc->sc_pp->ide_product == 0x24ca ||
      sc->sc_pp->ide_product == 0x24db ||
      sc->sc_pp->ide_product == 0x266f ||
      sc->sc_pp->ide_product == 0x27df ||
      sc->sc_pp->ide_product == 0x2850) {
   if (drvp->UDMA_mode > 2 &&
       (ideconf & (0x0010 << ((channel) * 2 + (drive)))) == 0)
    drvp->UDMA_mode = 2;
   if (drvp->UDMA_mode > 4) {
    ideconf |= (0x1000 << ((channel) * 2 + (drive)));
   } else {
    ideconf &= ~(0x1000 << ((channel) * 2 + (drive)));
    if (drvp->UDMA_mode > 2) {
     ideconf |= (0x0001 << ((channel) * 2 + (drive)));
    } else {
     ideconf &= ~(0x0001 << ((channel) * 2 + (drive)));
    }
   }
  }
  if (sc->sc_pp->ide_product == 0x2411 ||
      sc->sc_pp->ide_product == 0x7601) {
   if (drvp->UDMA_mode > 2 &&
       (ideconf & (0x0010 << ((channel) * 2 + (drive)))) == 0)
    drvp->UDMA_mode = 2;
   if (drvp->UDMA_mode > 2)
    ideconf |= (0x0001 << ((channel) * 2 + (drive)));
   else
    ideconf &= ~(0x0001 << ((channel) * 2 + (drive)));
  }
  if ((chp->wdc->cap & 0x0010) &&
      (drvp->drive_flags & 0x0020)) {
   drvp->drive_flags &= ~0x0010;
   udmareg |= (0x01 << ((channel) * 2 + (drive)));
   udmareg |= (((piix4_sct_udma[drvp->UDMA_mode]) << ((channel * 8) + (drive * 4))) << 16);
  } else {
   drvp->drive_flags &= ~0x0020;
   if (drive == 0) {
    idetim |= piix_setup_idetim_timings(
        drvp->DMA_mode, 1, channel);
   } else {
    sidetim |= piix_setup_sidetim_timings(
     drvp->DMA_mode, 1, channel);
    idetim = ((idetim) | ((0x4000) << (16 * (channel))));
   }
  }
  idedma_ctl |= (0x20 << (drive));
pio:
  idetim |= piix_setup_idetim_drvs(drvp);
  if (drive == 0) {
   idetim |= piix_setup_idetim_timings(
       drvp->PIO_mode, 0, channel);
  } else {
   sidetim |= piix_setup_sidetim_timings(
    drvp->PIO_mode, 0, channel);
   idetim = ((idetim) | ((0x4000) << (16 * (channel))));
  }
 }
 if (idedma_ctl != 0) {
  bus_space_write_1(sc->sc_dma_iot, sc->sc_dma_ioh,
      (0x02 + 0x08 * (channel)),
      idedma_ctl);
 }
 pci_conf_write(sc->sc_pc, sc->sc_tag, 0x40, idetim);
 pci_conf_write(sc->sc_pc, sc->sc_tag, 0x44, sidetim);
 pci_conf_write(sc->sc_pc, sc->sc_tag, 0x48, udmareg);
 pci_conf_write(sc->sc_pc, sc->sc_tag, 0x54, ideconf);
 pciide_print_modes(cp);
}
u_int32_t
piix_setup_idetim_timings(u_int8_t mode, u_int8_t dma, u_int8_t channel)
{
 if (dma)
  return (((0) | ((((piix_isp_dma[mode]) << 12) | ((piix_rtc_dma[mode]) << 8)) << (16 * (channel)))));
 else
  return (((0) | ((((piix_isp_pio[mode]) << 12) | ((piix_rtc_pio[mode]) << 8)) << (16 * (channel)))));
}
u_int32_t
piix_setup_idetim_drvs(struct ata_drive_datas *drvp)
{
 u_int32_t ret = 0;
 struct channel_softc *chp = drvp->chnl_softc;
 u_int8_t channel = chp->channel;
 u_int8_t drive = drvp->drive;
 if (drvp->drive_flags & 0x0010) {
  if ((drvp->drive_flags & 0x0010) &&
      drvp->DMA_mode == 0) {
   drvp->PIO_mode = 0;
   return (ret);
  }
  ret = ((ret) | (((0x0001 << (4 * (drive)))) << (16 * (channel))));
  if ((piix_isp_pio[drvp->PIO_mode] !=
      piix_isp_dma[drvp->DMA_mode]) ||
      (piix_rtc_pio[drvp->PIO_mode] !=
      piix_rtc_dma[drvp->DMA_mode]))
   drvp->PIO_mode = 0;
  if (drvp->PIO_mode <= 2) {
   ret = ((ret) | (((0x0008 << (4 * (drive)))) << (16 * (channel))));
   return (ret);
  }
 }
 if (drvp->PIO_mode < 2)
  return (ret);
 ret = ((ret) | (((0x0001 << (4 * (drive)))) << (16 * (channel))));
 if (drvp->PIO_mode >= 3) {
  ret = ((ret) | (((0x0002 << (4 * (drive)))) << (16 * (channel))));
  ret = ((ret) | (((0x0004 << (4 * (drive)))) << (16 * (channel))));
 }
 return (ret);
}
u_int32_t
piix_setup_sidetim_timings(u_int8_t mode, u_int8_t dma, u_int8_t channel)
{
 if (dma)
  return ((piix_isp_dma[mode] << (2 + ((channel) * 4))) |
      (piix_rtc_dma[mode] << (0 + ((channel) * 4))));
 else
  return ((piix_isp_pio[mode] << (2 + ((channel) * 4))) |
      (piix_rtc_pio[mode] << (0 + ((channel) * 4))));
}
void
amd756_chip_map(struct pciide_softc *sc, struct pci_attach_args *pa)
{
 struct pciide_channel *cp;
 pcireg_t interface = (((pa->pa_class) >> 8) & 0xff);
 int channel;
 pcireg_t chanenable;
 bus_size_t cmdsize, ctlsize;
 printf(": DMA");
 pciide_mapreg_dma(sc, pa);
 sc->sc_wdcdev.cap = 0x0001 | 0x0002 |
     0x0004;
 if (sc->sc_dma_ok) {
  sc->sc_wdcdev.cap |= 0x0008 | 0x0010;
  sc->sc_wdcdev.cap |= 0x0400;
  sc->sc_wdcdev.irqack = pciide_irqack;
 }
 sc->sc_wdcdev.PIO_cap = 4;
 sc->sc_wdcdev.DMA_cap = 2;
 switch (sc->sc_pp->ide_product) {
 case 0x7469:
  sc->sc_wdcdev.UDMA_cap = 6;
  break;
 case 0x7411:
 case 0x7441:
  sc->sc_wdcdev.UDMA_cap = 5;
  break;
 default:
  sc->sc_wdcdev.UDMA_cap = 4;
  break;
 }
 sc->sc_wdcdev.set_modes = amd756_setup_channel;
 sc->sc_wdcdev.channels = sc->wdc_chanarray;
 sc->sc_wdcdev.nchannels = 2;
 chanenable = pci_conf_read(sc->sc_pc, sc->sc_tag, 0x40);
 pciide_print_channels(sc->sc_wdcdev.nchannels, interface);
 for (channel = 0; channel < sc->sc_wdcdev.nchannels; channel++) {
  cp = &sc->pciide_channels[channel];
  if (pciide_chansetup(sc, channel, interface) == 0)
   continue;
  if ((chanenable & (0x01 << (1 - (channel)))) == 0) {
   printf("%s: %s ignored (disabled)\n",
       sc->sc_wdcdev.sc_dev.dv_xname, cp->name);
   cp->hw_ok = 0;
   continue;
  }
  pciide_map_compat_intr(pa, cp, channel, interface);
  if (cp->hw_ok == 0)
   continue;
  pciide_mapchan(pa, cp, interface, &cmdsize, &ctlsize,
      pciide_pci_intr);
  if (pciide_chan_candisable(cp)) {
   chanenable &= ~(0x01 << (1 - (channel)));
  }
  if (cp->hw_ok == 0) {
   pciide_unmap_compat_intr(pa, cp, channel, interface);
   continue;
  }
  amd756_setup_channel(&cp->wdc_channel);
 }
 pci_conf_write(sc->sc_pc, sc->sc_tag, 0x40,
     chanenable);
 return;
}
void
amd756_setup_channel(struct channel_softc *chp)
{
 u_int32_t udmatim_reg, datatim_reg;
 u_int8_t idedma_ctl;
 int mode, drive;
 struct ata_drive_datas *drvp;
 struct pciide_channel *cp = (struct pciide_channel *)chp;
 struct pciide_softc *sc = (struct pciide_softc *)cp->wdc_channel.wdc;
 pcireg_t chanenable;
 int product = sc->sc_pp->ide_product;
 int rev = sc->sc_rev;
 idedma_ctl = 0;
 datatim_reg = pci_conf_read(sc->sc_pc, sc->sc_tag, 0x48);
 udmatim_reg = pci_conf_read(sc->sc_pc, sc->sc_tag, 0x50);
 datatim_reg &= ~(0xffff << ((1 - (chp->channel)) << 4));
 udmatim_reg &= ~(0xffff << ((1 - (chp->channel)) << 4));
 chanenable = pci_conf_read(sc->sc_pc, sc->sc_tag,
     0x40);
 pciide_channel_dma_setup(cp);
 for (drive = 0; drive < 2; drive++) {
  drvp = &chp->ch_drive[drive];
  if ((drvp->drive_flags & (0x0001|0x0002|0x0004)) == 0)
   continue;
  if (((drvp->drive_flags & 0x0010) == 0 &&
      (drvp->drive_flags & 0x0020) == 0)) {
   mode = drvp->PIO_mode;
   goto pio;
  }
  if ((chp->wdc->cap & 0x0010) &&
      (drvp->drive_flags & 0x0020)) {
   drvp->drive_flags &= ~0x0010;
   if ((chanenable & (0x00010000 << ((chp->channel) * 2 + (drive)))) == 0 && drvp->UDMA_mode > 2) {
    ;
    drvp->UDMA_mode = 2;
   }
   udmatim_reg |= (0x40 << (((1 - (chp->channel)) << 4) + ((1 - (drive)) << 3))) |
       (0x80 << (((1 - (chp->channel)) << 4) + ((1 - (drive)) << 3))) |
       (((amd756_udma_tim[drvp->UDMA_mode]) & 0x7) << (((1 - (chp->channel)) << 4) + ((1 - (drive)) << 3)));
   mode = drvp->PIO_mode;
  } else {
   drvp->drive_flags &= ~0x0020;
   if (((product) == 0x7409 && (rev) <= 3)) {
    printf("%s:%d:%d: multi-word DMA disabled due "
        "to chip revision\n",
        sc->sc_wdcdev.sc_dev.dv_xname,
        chp->channel, drive);
    mode = drvp->PIO_mode;
    drvp->drive_flags &= ~0x0010;
    goto pio;
   }
   if (drvp->PIO_mode <= (drvp->DMA_mode +2))
    mode = drvp->PIO_mode;
   else
    mode = drvp->DMA_mode + 2;
  }
  idedma_ctl |= (0x20 << (drive));
pio:
  if (mode <= 2) {
   drvp->DMA_mode = 0;
   drvp->PIO_mode = 0;
   mode = 0;
  } else {
   drvp->PIO_mode = mode;
   drvp->DMA_mode = mode - 2;
  }
  datatim_reg |=
      (((amd756_pio_set[mode]) & 0xf) << (((1 - (chp->channel)) << 4) + ((1 - (drive)) << 3) + 4)) |
      (((amd756_pio_rec[mode]) & 0xf) << (((1 - (chp->channel)) << 4) + ((1 - (drive)) << 3)));
 }
 if (idedma_ctl != 0) {
  bus_space_write_1(sc->sc_dma_iot, sc->sc_dma_ioh,
      (0x02 + 0x08 * (chp->channel)),
      idedma_ctl);
 }
 pciide_print_modes(cp);
 pci_conf_write(sc->sc_pc, sc->sc_tag, 0x48, datatim_reg);
 pci_conf_write(sc->sc_pc, sc->sc_tag, 0x50, udmatim_reg);
}
void
apollo_chip_map(struct pciide_softc *sc, struct pci_attach_args *pa)
{
 struct pciide_channel *cp;
 pcireg_t interface;
 int no_ideconf = 0, channel;
 u_int32_t ideconf;
 bus_size_t cmdsize, ctlsize;
 pcitag_t tag;
 pcireg_t id, class;
 if ((((pa->pa_class) >> 16) & 0xff) == 0x01) {
  interface = (((pa->pa_class) >> 8) & 0xff);
 } else {
  interface = 0x80 |
      (0x01 << (2 * (0))) | (0x01 << (2 * (1)));
 }
 switch ((((pa->pa_id) >> 16) & 0xffff)) {
 case 0x3164:
 case 0x0415:
  no_ideconf = 1;
 case 0x5324:
 case 0x0581:
 case 0xc409:
 case 0x9001:
  printf(": ATA133");
  sc->sc_wdcdev.UDMA_cap = 6;
  break;
 default:
  tag = pci_make_tag(pa->pa_pc, pa->pa_bus, pa->pa_device, 0);
  id = pci_conf_read(sc->sc_pc, tag, 0x00);
  class = pci_conf_read(sc->sc_pc, tag, 0x08);
  if ((((class) >> 24) & 0xff) != 0x06 &&
      pa->pa_device == 15) {
   tag = pci_make_tag(pa->pa_pc, pa->pa_bus, 17, 0);
   id = pci_conf_read(sc->sc_pc, tag, 0x00);
   class = pci_conf_read(sc->sc_pc, tag, 0x08);
  }
  switch ((((id) >> 16) & 0xffff)) {
  case 0x0586:
   if ((((class) >> 0) & 0xff) >= 0x02) {
    printf(": ATA33");
    sc->sc_wdcdev.UDMA_cap = 2;
   } else {
    printf(": DMA");
    sc->sc_wdcdev.UDMA_cap = 0;
   }
   break;
  case 0x0596:
   if ((((class) >> 0) & 0xff) >= 0x12) {
    printf(": ATA66");
    sc->sc_wdcdev.UDMA_cap = 4;
   } else {
    printf(": ATA33");
    sc->sc_wdcdev.UDMA_cap = 2;
   }
   break;
  case 0x0686:
   if ((((class) >> 0) & 0xff) >= 0x40) {
    printf(": ATA100");
    sc->sc_wdcdev.UDMA_cap = 5;
   } else {
    printf(": ATA66");
    sc->sc_wdcdev.UDMA_cap = 4;
   }
   break;
  case 0x8231:
  case 0x3074:
   printf(": ATA100");
   sc->sc_wdcdev.UDMA_cap = 5;
   break;
  case 0x3147:
  case 0x3177:
  case 0x3227:
   printf(": ATA133");
   sc->sc_wdcdev.UDMA_cap = 6;
   break;
  default:
   printf(": DMA");
   sc->sc_wdcdev.UDMA_cap = 0;
   break;
  }
  break;
 }
 pciide_mapreg_dma(sc, pa);
 sc->sc_wdcdev.cap |= 0x0001 | 0x0002 |
     0x0004;
 if (sc->sc_dma_ok) {
  sc->sc_wdcdev.cap |= 0x0008 | 0x0400;
  sc->sc_wdcdev.irqack = pciide_irqack;
  if (sc->sc_wdcdev.UDMA_cap > 0)
   sc->sc_wdcdev.cap |= 0x0010;
 }
 sc->sc_wdcdev.PIO_cap = 4;
 sc->sc_wdcdev.DMA_cap = 2;
 sc->sc_wdcdev.set_modes = apollo_setup_channel;
 sc->sc_wdcdev.channels = sc->wdc_chanarray;
 sc->sc_wdcdev.nchannels = 2;
 pciide_print_channels(sc->sc_wdcdev.nchannels, interface);
 ;
 for (channel = 0; channel < sc->sc_wdcdev.nchannels; channel++) {
  cp = &sc->pciide_channels[channel];
  if (pciide_chansetup(sc, channel, interface) == 0)
   continue;
  if (no_ideconf == 0) {
   ideconf = pci_conf_read(sc->sc_pc, sc->sc_tag,
       0x40);
   if ((ideconf & (0x00000001 << (1 - (channel)))) == 0) {
    printf("%s: %s ignored (disabled)\n",
        sc->sc_wdcdev.sc_dev.dv_xname, cp->name);
    cp->hw_ok = 0;
    continue;
   }
  }
  pciide_map_compat_intr(pa, cp, channel, interface);
  if (cp->hw_ok == 0)
   continue;
  pciide_mapchan(pa, cp, interface, &cmdsize, &ctlsize,
      pciide_pci_intr);
  if (cp->hw_ok == 0) {
   goto next;
  }
  if (pciide_chan_candisable(cp)) {
   if (no_ideconf == 0) {
    ideconf &= ~(0x00000001 << (1 - (channel)));
    pci_conf_write(sc->sc_pc, sc->sc_tag,
        0x40, ideconf);
   }
  }
  if (cp->hw_ok == 0)
   goto next;
  apollo_setup_channel(&sc->pciide_channels[channel].wdc_channel);
next:
  if (cp->hw_ok == 0)
   pciide_unmap_compat_intr(pa, cp, channel, interface);
 }
 ;
}
void
apollo_setup_channel(struct channel_softc *chp)
{
 u_int32_t udmatim_reg, datatim_reg;
 u_int8_t idedma_ctl;
 int mode, drive;
 struct ata_drive_datas *drvp;
 struct pciide_channel *cp = (struct pciide_channel *)chp;
 struct pciide_softc *sc = (struct pciide_softc *)cp->wdc_channel.wdc;
 idedma_ctl = 0;
 datatim_reg = pci_conf_read(sc->sc_pc, sc->sc_tag, 0x48);
 udmatim_reg = pci_conf_read(sc->sc_pc, sc->sc_tag, 0x50);
 datatim_reg &= ~(0xffff << ((1 - (chp->channel)) << 4));
 udmatim_reg &= ~(0xffff << ((1 - (chp->channel)) << 4));
 pciide_channel_dma_setup(cp);
 if ((chp->ch_drive[0].drive_flags & 0x0020) &&
     (chp->ch_drive[1].drive_flags & 0x0020)) {
  if (chp->ch_drive[0].UDMA_mode > 2 &&
      chp->ch_drive[1].UDMA_mode <= 2) {
   chp->ch_drive[0].UDMA_mode = 2;
  } else if (chp->ch_drive[1].UDMA_mode > 2 &&
      chp->ch_drive[0].UDMA_mode <= 2) {
   chp->ch_drive[1].UDMA_mode = 2;
  }
 }
 for (drive = 0; drive < 2; drive++) {
  drvp = &chp->ch_drive[drive];
  if ((drvp->drive_flags & (0x0001|0x0002|0x0004)) == 0)
   continue;
  if (((drvp->drive_flags & 0x0010) == 0 &&
      (drvp->drive_flags & 0x0020) == 0)) {
   mode = drvp->PIO_mode;
   goto pio;
  }
  if ((chp->wdc->cap & 0x0010) &&
      (drvp->drive_flags & 0x0020)) {
   drvp->drive_flags &= ~0x0010;
   udmatim_reg |= (0x40 << (((1 - (chp->channel)) << 4) + ((1 - (drive)) << 3))) |
       (0x80 << (((1 - (chp->channel)) << 4) + ((1 - (drive)) << 3)));
   if (sc->sc_wdcdev.UDMA_cap == 6) {
    udmatim_reg |= (((apollo_udma133_tim[drvp->UDMA_mode]) & 0xf) << (((1 - (chp->channel)) << 4) + ((1 - (drive)) << 3)));
   } else if (sc->sc_wdcdev.UDMA_cap == 5) {
    udmatim_reg |= (((apollo_udma100_tim[drvp->UDMA_mode]) & 0xf) << (((1 - (chp->channel)) << 4) + ((1 - (drive)) << 3)));
   } else if (sc->sc_wdcdev.UDMA_cap == 4) {
    udmatim_reg |= (0x08 << ((1 - (chp->channel)) << 4));
    udmatim_reg |= (((apollo_udma66_tim[drvp->UDMA_mode]) & 0xf) << (((1 - (chp->channel)) << 4) + ((1 - (drive)) << 3)));
   } else {
    udmatim_reg |= (((apollo_udma33_tim[drvp->UDMA_mode]) & 0xf) << (((1 - (chp->channel)) << 4) + ((1 - (drive)) << 3)));
   }
   mode = drvp->PIO_mode;
  } else {
   drvp->drive_flags &= ~0x0020;
   if (drvp->PIO_mode <= (drvp->DMA_mode +2))
    mode = drvp->PIO_mode;
   else
    mode = drvp->DMA_mode + 2;
  }
  idedma_ctl |= (0x20 << (drive));
pio:
  if (mode <= 2) {
   drvp->DMA_mode = 0;
   drvp->PIO_mode = 0;
   mode = 0;
  } else {
   drvp->PIO_mode = mode;
   drvp->DMA_mode = mode - 2;
  }
  datatim_reg |=
      (((apollo_pio_set[mode]) & 0xf) << (((1 - (chp->channel)) << 4) + ((1 - (drive)) << 3) + 4)) |
      (((apollo_pio_rec[mode]) & 0xf) << (((1 - (chp->channel)) << 4) + ((1 - (drive)) << 3)));
 }
 if (idedma_ctl != 0) {
  bus_space_write_1(sc->sc_dma_iot, sc->sc_dma_ioh,
      (0x02 + 0x08 * (chp->channel)),
      idedma_ctl);
 }
 pciide_print_modes(cp);
 pci_conf_write(sc->sc_pc, sc->sc_tag, 0x48, datatim_reg);
 pci_conf_write(sc->sc_pc, sc->sc_tag, 0x50, udmatim_reg);
}
void
cmd_channel_map(struct pci_attach_args *pa, struct pciide_softc *sc,
    int channel)
{
 struct pciide_channel *cp = &sc->pciide_channels[channel];
 bus_size_t cmdsize, ctlsize;
 u_int8_t ctrl = pciide_pci_read(sc->sc_pc, sc->sc_tag, 0x51);
 pcireg_t interface;
 int one_channel;
 if ((((pa->pa_class) >> 16) & 0xff) != 0x01) {
  interface = (0x02 << (2 * (0))) |
      (0x02 << (2 * (1)));
  if (pciide_pci_read(pa->pa_pc, pa->pa_tag, 0x50) &
      0x40)
   interface |= (0x01 << (2 * (0))) |
       (0x01 << (2 * (1)));
 } else {
  interface = (((pa->pa_class) >> 8) & 0xff);
 }
 sc->wdc_chanarray[channel] = &cp->wdc_channel;
 cp->name = ((channel) == 0 ? "channel 0" : "channel 1");
 cp->wdc_channel.channel = channel;
 cp->wdc_channel.wdc = &sc->sc_wdcdev;
 switch (sc->sc_pp->ide_product) {
 case 0x0649:
  one_channel = 0;
  break;
 default:
  one_channel = 1;
  break;
 }
 if (channel > 0 && one_channel) {
  cp->wdc_channel.ch_queue =
      sc->pciide_channels[0].wdc_channel.ch_queue;
 } else {
  cp->wdc_channel.ch_queue = wdc_alloc_queue();
 }
 if (cp->wdc_channel.ch_queue == ((void *)0)) {
  printf(
      "%s: %s cannot allocate channel queue",
      sc->sc_wdcdev.sc_dev.dv_xname, cp->name);
  return;
 }
 if (channel != 0 && (ctrl & 0x08) == 0) {
  printf("%s: %s ignored (disabled)\n",
      sc->sc_wdcdev.sc_dev.dv_xname, cp->name);
  cp->hw_ok = 0;
  return;
 }
 cp->hw_ok = 1;
 pciide_map_compat_intr(pa, cp, channel, interface);
 if (cp->hw_ok == 0)
  return;
 pciide_mapchan(pa, cp, interface, &cmdsize, &ctlsize, cmd_pci_intr);
 if (cp->hw_ok == 0) {
  pciide_unmap_compat_intr(pa, cp, channel, interface);
  return;
 }
 if (pciide_chan_candisable(cp)) {
  if (channel == 1) {
   ctrl &= ~0x08;
   pciide_pci_write(pa->pa_pc, pa->pa_tag,
       0x51, ctrl);
   pciide_unmap_compat_intr(pa, cp, channel, interface);
  }
 }
}
int
cmd_pci_intr(void *arg)
{
 struct pciide_softc *sc = arg;
 struct pciide_channel *cp;
 struct channel_softc *wdc_cp;
 int i, rv, crv;
 u_int32_t priirq, secirq;
 rv = 0;
 priirq = pciide_pci_read(sc->sc_pc, sc->sc_tag, 0x50);
 secirq = pciide_pci_read(sc->sc_pc, sc->sc_tag, 0x57);
 for (i = 0; i < sc->sc_wdcdev.nchannels; i++) {
  cp = &sc->pciide_channels[i];
  wdc_cp = &cp->wdc_channel;
  if (cp->compat)
   continue;
  if ((i == 0 && (priirq & 0x04)) ||
      (i == 1 && (secirq & 0x10))) {
   crv = wdcintr(wdc_cp);
   if (crv == 0) {
   } else
    rv = 1;
  }
 }
 return (rv);
}
void
cmd_chip_map(struct pciide_softc *sc, struct pci_attach_args *pa)
{
 int channel;
 pcireg_t interface = (((pa->pa_class) >> 8) & 0xff);
 printf(": no DMA");
 sc->sc_dma_ok = 0;
 sc->sc_wdcdev.channels = sc->wdc_chanarray;
 sc->sc_wdcdev.nchannels = 2;
 sc->sc_wdcdev.cap = 0x0001;
 pciide_print_channels(sc->sc_wdcdev.nchannels, interface);
 for (channel = 0; channel < sc->sc_wdcdev.nchannels; channel++) {
  cmd_channel_map(pa, sc, channel);
 }
}
void
cmd0643_9_chip_map(struct pciide_softc *sc, struct pci_attach_args *pa)
{
 struct pciide_channel *cp;
 int channel;
 int rev = sc->sc_rev;
 pcireg_t interface;
 if ((((pa->pa_class) >> 16) & 0xff) != 0x01) {
  interface = (0x02 << (2 * (0))) |
      (0x02 << (2 * (1)));
  if (pciide_pci_read(pa->pa_pc, pa->pa_tag, 0x50) &
      0x40)
   interface |= (0x01 << (2 * (0))) |
       (0x01 << (2 * (1)));
 } else {
  interface = (((pa->pa_class) >> 8) & 0xff);
 }
 printf(": DMA");
 pciide_mapreg_dma(sc, pa);
 sc->sc_wdcdev.cap = 0x0001 | 0x0002 |
     0x0004;
 if (sc->sc_dma_ok) {
  sc->sc_wdcdev.cap |= 0x0008 | 0x0400;
  switch (sc->sc_pp->ide_product) {
  case 0x0649:
   sc->sc_wdcdev.cap |= 0x0010;
   sc->sc_wdcdev.UDMA_cap = 5;
   sc->sc_wdcdev.irqack = cmd646_9_irqack;
   break;
  case 0x0648:
   sc->sc_wdcdev.cap |= 0x0010;
   sc->sc_wdcdev.UDMA_cap = 4;
   sc->sc_wdcdev.irqack = cmd646_9_irqack;
   break;
  case 0x0646:
   if (rev >= 0x05) {
    sc->sc_wdcdev.cap |= 0x0010;
    sc->sc_wdcdev.UDMA_cap = 2;
   } else if (rev >= 0x03) {
    pciide_pci_write(sc->sc_pc, sc->sc_tag,
        (0x73 + (8 * (0))), 0);
    pciide_pci_write(sc->sc_pc, sc->sc_tag,
        (0x73 + (8 * (1))), 0);
   }
   sc->sc_wdcdev.irqack = cmd646_9_irqack;
   break;
  default:
   sc->sc_wdcdev.irqack = pciide_irqack;
  }
 }
 sc->sc_wdcdev.channels = sc->wdc_chanarray;
 sc->sc_wdcdev.nchannels = 2;
 sc->sc_wdcdev.PIO_cap = 4;
 sc->sc_wdcdev.DMA_cap = 2;
 sc->sc_wdcdev.set_modes = cmd0643_9_setup_channel;
 pciide_print_channels(sc->sc_wdcdev.nchannels, interface);
 ;
 for (channel = 0; channel < sc->sc_wdcdev.nchannels; channel++) {
  cp = &sc->pciide_channels[channel];
  cmd_channel_map(pa, sc, channel);
  if (cp->hw_ok == 0)
   continue;
  cmd0643_9_setup_channel(&cp->wdc_channel);
 }
 pciide_pci_write(sc->sc_pc, sc->sc_tag, 0x71, 0x01);
 ;
}
void
cmd0643_9_setup_channel(struct channel_softc *chp)
{
 struct ata_drive_datas *drvp;
 u_int8_t tim;
 u_int32_t idedma_ctl, udma_reg;
 int drive;
 struct pciide_channel *cp = (struct pciide_channel *)chp;
 struct pciide_softc *sc = (struct pciide_softc *)cp->wdc_channel.wdc;
 idedma_ctl = 0;
 pciide_channel_dma_setup(cp);
 for (drive = 0; drive < 2; drive++) {
  drvp = &chp->ch_drive[drive];
  if ((drvp->drive_flags & (0x0001|0x0002|0x0004)) == 0)
   continue;
  tim = cmd0643_9_data_tim_pio[drvp->PIO_mode];
  if (drvp->drive_flags & (0x0010 | 0x0020)) {
   if (drvp->drive_flags & 0x0020) {
    drvp->drive_flags &= ~0x0010;
    udma_reg = pciide_pci_read(sc->sc_pc,
        sc->sc_tag, (0x73 + (8 * (chp->channel))));
    if (drvp->UDMA_mode > 2 &&
        (pciide_pci_read(sc->sc_pc, sc->sc_tag,
        0x79) &
        (0x01 << (chp->channel))) == 0) {
     ;
     drvp->UDMA_mode = 2;
    }
    if (drvp->UDMA_mode > 2)
     udma_reg &= ~(0x04 << (drive));
    else if (sc->sc_wdcdev.UDMA_cap > 2)
     udma_reg |= (0x04 << (drive));
    udma_reg |= (0x01 << (drive));
    udma_reg &= ~(0x3 <<
        (4 + ((drive) * 2)));
    udma_reg |=
        (cmd0646_9_tim_udma[drvp->UDMA_mode] <<
        (4 + ((drive) * 2)));
    pciide_pci_write(sc->sc_pc, sc->sc_tag,
        (0x73 + (8 * (chp->channel))), udma_reg);
   } else {
    if (sc->sc_wdcdev.cap & 0x0010) {
     udma_reg = pciide_pci_read(sc->sc_pc,
         sc->sc_tag,
         (0x73 + (8 * (chp->channel))));
     udma_reg &= ~(0x01 << (drive));
     pciide_pci_write(sc->sc_pc, sc->sc_tag,
         (0x73 + (8 * (chp->channel))),
         udma_reg);
    }
    if (drvp->PIO_mode >= 3 &&
        (drvp->DMA_mode + 2) > drvp->PIO_mode) {
     drvp->DMA_mode = drvp->PIO_mode - 2;
    }
    tim = cmd0643_9_data_tim_dma[drvp->DMA_mode];
   }
   idedma_ctl |= (0x20 << (drive));
  }
  pciide_pci_write(sc->sc_pc, sc->sc_tag,
      (((chp->channel) == 0) ? ((drive) == 0) ? 0x54: 0x56 : ((drive) == 0) ? 0x58 : 0x5b), tim);
 }
 if (idedma_ctl != 0) {
  bus_space_write_1(sc->sc_dma_iot, sc->sc_dma_ioh,
      (0x02 + 0x08 * (chp->channel)),
      idedma_ctl);
 }
 pciide_print_modes(cp);
 wdcreset(chp, 0x00);
}
void
cmd646_9_irqack(struct channel_softc *chp)
{
 u_int32_t priirq, secirq;
 struct pciide_channel *cp = (struct pciide_channel *)chp;
 struct pciide_softc *sc = (struct pciide_softc *)cp->wdc_channel.wdc;
 if (chp->channel == 0) {
  priirq = pciide_pci_read(sc->sc_pc, sc->sc_tag, 0x50);
  pciide_pci_write(sc->sc_pc, sc->sc_tag, 0x50, priirq);
 } else {
  secirq = pciide_pci_read(sc->sc_pc, sc->sc_tag, 0x57);
  pciide_pci_write(sc->sc_pc, sc->sc_tag, 0x57, secirq);
 }
 pciide_irqack(chp);
}
void
cmd680_chip_map(struct pciide_softc *sc, struct pci_attach_args *pa)
{
 struct pciide_channel *cp;
 int channel;
 printf("\n%s: bus-master DMA support present",
     sc->sc_wdcdev.sc_dev.dv_xname);
 pciide_mapreg_dma(sc, pa);
 printf("\n");
 sc->sc_wdcdev.cap = 0x0001 | 0x0002 |
     0x0004;
 if (sc->sc_dma_ok) {
  sc->sc_wdcdev.cap |= 0x0008 | 0x0400;
  sc->sc_wdcdev.cap |= 0x0010;
  sc->sc_wdcdev.UDMA_cap = 6;
  sc->sc_wdcdev.irqack = pciide_irqack;
 }
 sc->sc_wdcdev.channels = sc->wdc_chanarray;
 sc->sc_wdcdev.nchannels = 2;
 sc->sc_wdcdev.PIO_cap = 4;
 sc->sc_wdcdev.DMA_cap = 2;
 sc->sc_wdcdev.set_modes = cmd680_setup_channel;
 pciide_pci_write(sc->sc_pc, sc->sc_tag, 0x80, 0x00);
 pciide_pci_write(sc->sc_pc, sc->sc_tag, 0x84, 0x00);
 pciide_pci_write(sc->sc_pc, sc->sc_tag, 0x8a,
     pciide_pci_read(sc->sc_pc, sc->sc_tag, 0x8a) | 0x01);
 for (channel = 0; channel < sc->sc_wdcdev.nchannels; channel++) {
  cp = &sc->pciide_channels[channel];
  cmd680_channel_map(pa, sc, channel);
  if (cp->hw_ok == 0)
   continue;
  cmd680_setup_channel(&cp->wdc_channel);
 }
}
void
cmd680_channel_map(struct pci_attach_args *pa, struct pciide_softc *sc,
    int channel)
{
 struct pciide_channel *cp = &sc->pciide_channels[channel];
 bus_size_t cmdsize, ctlsize;
 int interface, i, reg64;
 static const u_int8_t init_val[] =
     { 0x8a, 0x32, 0x8a, 0x32, 0x8a, 0x32,
       0x92, 0x43, 0x92, 0x43, 0x09, 0x40, 0x09, 0x40 };
 if ((((pa->pa_class) >> 16) & 0xff) != 0x01) {
  interface = (0x02 << (2 * (0))) |
      (0x02 << (2 * (1)));
  interface |= (0x01 << (2 * (0))) |
      (0x01 << (2 * (1)));
 } else {
  interface = (((pa->pa_class) >> 8) & 0xff);
 }
 sc->wdc_chanarray[channel] = &cp->wdc_channel;
 cp->name = ((channel) == 0 ? "channel 0" : "channel 1");
 cp->wdc_channel.channel = channel;
 cp->wdc_channel.wdc = &sc->sc_wdcdev;
 cp->wdc_channel.ch_queue = wdc_alloc_queue();
 if (cp->wdc_channel.ch_queue == ((void *)0)) {
  printf("%s %s: "
      "cannot allocate channel queue",
      sc->sc_wdcdev.sc_dev.dv_xname, cp->name);
      return;
 }
 reg64 = 0xa2 + channel * 16;
 for (i = 0; i < sizeof(init_val); i++)
  pciide_pci_write(sc->sc_pc, sc->sc_tag, reg64 + i, init_val[i]);
 printf("%s: %s %s to %s mode\n",
     sc->sc_wdcdev.sc_dev.dv_xname, cp->name,
     (interface & (0x02 << (2 * (channel)))) ?
     "configured" : "wired",
     (interface & (0x01 << (2 * (channel)))) ?
     "native-PCI" : "compatibility");
 pciide_mapchan(pa, cp, interface, &cmdsize, &ctlsize, pciide_pci_intr);
 if (cp->hw_ok == 0)
  return;
 pciide_map_compat_intr(pa, cp, channel, interface);
}
void
cmd680_setup_channel(struct channel_softc *chp)
{
 struct ata_drive_datas *drvp;
 u_int8_t mode, off, scsc;
 u_int16_t val;
 u_int32_t idedma_ctl;
 int drive;
 struct pciide_channel *cp = (struct pciide_channel *)chp;
 struct pciide_softc *sc = (struct pciide_softc *)cp->wdc_channel.wdc;
 pci_chipset_tag_t pc = sc->sc_pc;
 pcitag_t pa = sc->sc_tag;
 static const u_int8_t udma2_tbl[] =
     { 0x0f, 0x0b, 0x07, 0x06, 0x03, 0x02, 0x01 };
 static const u_int8_t udma_tbl[] =
     { 0x0c, 0x07, 0x05, 0x04, 0x02, 0x01, 0x00 };
 static const u_int16_t dma_tbl[] =
     { 0x2208, 0x10c2, 0x10c1 };
 static const u_int16_t pio_tbl[] =
     { 0x328a, 0x2283, 0x1104, 0x10c3, 0x10c1 };
 idedma_ctl = 0;
 pciide_channel_dma_setup(cp);
 mode = pciide_pci_read(pc, pa, 0x80 + chp->channel * 4);
 for (drive = 0; drive < 2; drive++) {
  drvp = &chp->ch_drive[drive];
  if ((drvp->drive_flags & (0x0001|0x0002|0x0004)) == 0)
   continue;
  mode &= ~(0x03 << (drive * 4));
  if (drvp->drive_flags & 0x0020) {
   drvp->drive_flags &= ~0x0010;
   off = 0xa0 + chp->channel * 16;
   if (drvp->UDMA_mode > 2 &&
       (pciide_pci_read(pc, pa, off) & 0x01) == 0)
    drvp->UDMA_mode = 2;
   scsc = pciide_pci_read(pc, pa, 0x8a);
   if (drvp->UDMA_mode == 6 && (scsc & 0x30) == 0) {
    pciide_pci_write(pc, pa, 0x8a, scsc | 0x01);
    scsc = pciide_pci_read(pc, pa, 0x8a);
    if ((scsc & 0x30) == 0)
     drvp->UDMA_mode = 5;
   }
   mode |= 0x03 << (drive * 4);
   off = 0xac + chp->channel * 16 + drive * 2;
   val = pciide_pci_read(pc, pa, off) & ~0x3f;
   if (scsc & 0x30)
    val |= udma2_tbl[drvp->UDMA_mode];
   else
    val |= udma_tbl[drvp->UDMA_mode];
   pciide_pci_write(pc, pa, off, val);
   idedma_ctl |= (0x20 << (drive));
  } else if (drvp->drive_flags & 0x0010) {
   mode |= 0x02 << (drive * 4);
   off = 0xa8 + chp->channel * 16 + drive * 2;
   val = dma_tbl[drvp->DMA_mode];
   pciide_pci_write(pc, pa, off, val & 0xff);
   pciide_pci_write(pc, pa, off, val >> 8);
   idedma_ctl |= (0x20 << (drive));
  } else {
   mode |= 0x01 << (drive * 4);
   off = 0xa4 + chp->channel * 16 + drive * 2;
   val = pio_tbl[drvp->PIO_mode];
   pciide_pci_write(pc, pa, off, val & 0xff);
   pciide_pci_write(pc, pa, off, val >> 8);
  }
 }
 pciide_pci_write(pc, pa, 0x80 + chp->channel * 4, mode);
 if (idedma_ctl != 0) {
  bus_space_write_1(sc->sc_dma_iot, sc->sc_dma_ioh,
      (0x02 + 0x08 * (chp->channel)),
      idedma_ctl);
 }
 pciide_print_modes(cp);
}
void
sii_fixup_cacheline(struct pciide_softc *sc, struct pci_attach_args *pa)
{
 pcireg_t cls, reg40, reg44;
 cls = pci_conf_read(pa->pa_pc, pa->pa_tag, 0x0c);
 cls = (cls >> 0) & 0xff;
 cls *= 4;
 if (cls > 224) {
  cls = pci_conf_read(pa->pa_pc, pa->pa_tag, 0x0c);
  cls &= ~(0xff << 0);
  cls |= ((224/4) << 0);
  pci_conf_write(pa->pa_pc, pa->pa_tag, 0x0c, cls);
  cls = 224;
 }
 if (cls < 32)
  cls = 32;
 cls = (cls + 31) / 32;
 reg40 = ba5_read_4(sc, 0x40);
 reg44 = ba5_read_4(sc, 0x44);
 if ((reg40 & 0x7) < cls)
  ba5_write_4(sc, 0x40, (reg40 & ~0x07) | cls);
 if ((reg44 & 0x7) < cls)
  ba5_write_4(sc, 0x44, (reg44 & ~0x07) | cls);
}
void
sii3112_chip_map(struct pciide_softc *sc, struct pci_attach_args *pa)
{
 struct pciide_channel *cp;
 bus_size_t cmdsize, ctlsize;
 pcireg_t interface, scs_cmd, cfgctl;
 int channel;
 struct pciide_satalink *sl;
 sc->sc_cookielen = sizeof(*sl);
 sc->sc_cookie = malloc(sc->sc_cookielen, 2, 0x0002 | 0x0008);
 sl = sc->sc_cookie;
 sc->chip_unmap = default_chip_unmap;
 scs_cmd = pci_conf_read(pa->pa_pc, pa->pa_tag, 0x88);
 pci_conf_write(pa->pa_pc, pa->pa_tag, 0x88,
         scs_cmd | ((1U << 0) | (1U << 1) | (1U << 4) | (1U << 5) | (1U << 6) | (1U << 7)));
 delay(50 * 1000);
 pci_conf_write(pa->pa_pc, pa->pa_tag, 0x88,
         scs_cmd & (1U << 16));
 delay(50 * 1000);
 if (scs_cmd & (1U << 16)) {
  if (pci_mapreg_map(pa, 0x10 + 0x14,
       0x00000000 |
       0x00000000, 0,
       &sl->ba5_st, &sl->ba5_sh,
       ((void *)0), ((void *)0), 0) != 0)
   printf(": unable to map BA5 register space\n");
  else
   sl->ba5_en = 1;
 } else {
  cfgctl = pci_conf_read(pa->pa_pc, pa->pa_tag,
           0x40);
  pci_conf_write(pa->pa_pc, pa->pa_tag, 0x40,
          cfgctl | (1U << 1));
 }
 printf(": DMA");
 pciide_mapreg_dma(sc, pa);
 printf("\n");
 if (sc->sc_rev <= 0x01) {
  sc->sc_dma_maxsegsz = 8192;
  sc->sc_dma_boundary = 8192;
 }
 sii_fixup_cacheline(sc, pa);
 sc->sc_wdcdev.cap |= 0x0001 | 0x0002;
 sc->sc_wdcdev.PIO_cap = 4;
 if (sc->sc_dma_ok) {
  sc->sc_wdcdev.cap |= 0x0008 | 0x0010;
  sc->sc_wdcdev.cap |= 0x0400;
  sc->sc_wdcdev.irqack = pciide_irqack;
  sc->sc_wdcdev.DMA_cap = 2;
  sc->sc_wdcdev.UDMA_cap = 6;
 }
 sc->sc_wdcdev.set_modes = sii3112_setup_channel;
 sc->sc_wdcdev.drv_probe = sii3112_drv_probe;
 sc->sc_wdcdev.channels = sc->wdc_chanarray;
 sc->sc_wdcdev.nchannels = 2;
 if ((((pa->pa_class) >> 16) & 0xff) == 0x01) {
  interface = (((pa->pa_class) >> 8) & 0xff);
 } else {
  interface = 0x80 |
      (0x01 << (2 * (0))) | (0x01 << (2 * (1)));
 }
 for (channel = 0; channel < sc->sc_wdcdev.nchannels; channel++) {
  cp = &sc->pciide_channels[channel];
  if (pciide_chansetup(sc, channel, interface) == 0)
   continue;
  pciide_mapchan(pa, cp, interface, &cmdsize, &ctlsize,
      pciide_pci_intr);
  if (cp->hw_ok == 0)
   continue;
  sc->sc_wdcdev.set_modes(&cp->wdc_channel);
 }
}
void
sii3112_setup_channel(struct channel_softc *chp)
{
 struct ata_drive_datas *drvp;
 int drive;
 u_int32_t idedma_ctl, dtm;
 struct pciide_channel *cp = (struct pciide_channel *)chp;
 struct pciide_softc *sc = (struct pciide_softc *)cp->wdc_channel.wdc;
 pciide_channel_dma_setup(cp);
 idedma_ctl = 0;
 dtm = 0;
 for (drive = 0; drive < 2; drive++) {
  drvp = &chp->ch_drive[drive];
  if ((drvp->drive_flags & (0x0001|0x0002|0x0004)) == 0)
   continue;
  if (drvp->drive_flags & 0x0020) {
   drvp->drive_flags &= ~0x0010;
   idedma_ctl |= (0x20 << (drive));
   dtm |= 0x00000002;
  } else if (drvp->drive_flags & 0x0010) {
   idedma_ctl |= (0x20 << (drive));
   dtm |= 0x00000002;
  } else {
   dtm |= 0x00000000;
  }
 }
 if (idedma_ctl != 0) {
  (sc)->sc_dmactl_write((sc), (chp->channel), (idedma_ctl));
 }
 ba5_write_4((sc), satalink_ba5_regmap[(chp->channel)].ba5_IDE_DTM, (dtm));
 pciide_print_modes(cp);
}
void
sii3112_drv_probe(struct channel_softc *chp)
{
 struct pciide_channel *cp = (struct pciide_channel *)chp;
 struct pciide_softc *sc = (struct pciide_softc *)cp->wdc_channel.wdc;
 uint32_t scontrol, sstatus;
 uint8_t scnt, sn, cl, ch;
 int s;
 scontrol = (0x1 << 0) | (0x0 << 4);
 scontrol |= (0x3 << 8);
 ba5_write_4((sc), satalink_ba5_regmap[(chp->channel)].ba5_SControl, (scontrol));
 delay(50 * 1000);
 scontrol &= ~(0x1 << 0);
 ba5_write_4((sc), satalink_ba5_regmap[(chp->channel)].ba5_SControl, (scontrol));
 delay(50 * 1000);
 sstatus = ba5_read_4((sc), satalink_ba5_regmap[(chp->channel)].ba5_SStatus);
 switch (sstatus & (0xf << 0)) {
 case (0x0 << 0):
  break;
 case (0x1 << 0):
  printf("%s: port %d: device connected, but "
      "communication not established\n",
      sc->sc_wdcdev.sc_dev.dv_xname, chp->channel);
  break;
 case (0x4 << 0):
  printf("%s: port %d: PHY offline\n",
      sc->sc_wdcdev.sc_dev.dv_xname, chp->channel);
  break;
 case (0x3 << 0):
  if (chp->_vtbl != ((void *)0))
   ((chp)->_vtbl->write_reg)(chp, wdr_sdh, 0xa0 | (0 << 4));
  else
   bus_space_write_1(chp->cmd_iot, chp->cmd_ioh,
       wdr_sdh & 7, 0xa0 | (0 << 4));
  delay(10);
  if (chp->_vtbl != ((void *)0)) {
   scnt = ((chp)->_vtbl->read_reg)(chp, wdr_seccnt);
   sn = ((chp)->_vtbl->read_reg)(chp, wdr_sector);
   cl = ((chp)->_vtbl->read_reg)(chp, wdr_cyl_lo);
   ch = ((chp)->_vtbl->read_reg)(chp, wdr_cyl_hi);
  } else {
   scnt = bus_space_read_1(chp->cmd_iot,
       chp->cmd_ioh, wdr_seccnt & 7);
   sn = bus_space_read_1(chp->cmd_iot,
       chp->cmd_ioh, wdr_sector & 7);
   cl = bus_space_read_1(chp->cmd_iot,
       chp->cmd_ioh, wdr_cyl_lo & 7);
   ch = bus_space_read_1(chp->cmd_iot,
       chp->cmd_ioh, wdr_cyl_hi & 7);
  }
  s = _splraise(5);
  if (cl == 0x14 && ch == 0xeb)
   chp->ch_drive[0].drive_flags |= 0x0002;
  else
   chp->ch_drive[0].drive_flags |= 0x0001;
  _splx(s);
  printf("%s: port %d",
      sc->sc_wdcdev.sc_dev.dv_xname, chp->channel);
  switch ((sstatus & (0xf << 4)) >> 4) {
  case 1:
   printf(": 1.5Gb/s");
   break;
  case 2:
   printf(": 3.0Gb/s");
   break;
  }
  printf("\n");
  break;
 default:
  printf("%s: port %d: unknown SStatus: 0x%08x\n",
      sc->sc_wdcdev.sc_dev.dv_xname, chp->channel, sstatus);
 }
}
void
sii3114_chip_map(struct pciide_softc *sc, struct pci_attach_args *pa)
{
 struct pciide_channel *cp;
 pcireg_t scs_cmd;
 pci_intr_handle_t intrhandle;
 const char *intrstr;
 int channel;
 struct pciide_satalink *sl;
 sc->sc_cookielen = sizeof(*sl);
 sc->sc_cookie = malloc(sc->sc_cookielen, 2, 0x0002 | 0x0008);
 sl = sc->sc_cookie;
 scs_cmd = pci_conf_read(pa->pa_pc, pa->pa_tag, 0x88);
 pci_conf_write(pa->pa_pc, pa->pa_tag, 0x88,
         scs_cmd | ((1U << 0) | (1U << 1) | (1U << 4) | (1U << 5) | (1U << 8) | (1U << 9) | (1U << 6) | (1U << 7) | (1U << 10) | (1U << 11)));
 delay(50 * 1000);
 pci_conf_write(pa->pa_pc, pa->pa_tag, 0x88,
         scs_cmd & (1U << 16));
 delay(50 * 1000);
 if (pci_mapreg_map(pa, 0x10 + 0x14,
      0x00000000 |
      0x00000000, 0,
      &sl->ba5_st, &sl->ba5_sh,
      ((void *)0), ((void *)0), 0) != 0) {
  printf(": unable to map BA5 register space\n");
  return;
 }
 sl->ba5_en = 1;
 ba5_write_4((sc), satalink_ba5_regmap[(2)].ba5_IDEDMA_CMD, ((1U << 1)));
 printf(": DMA");
 sii3114_mapreg_dma(sc, pa);
 printf("\n");
 sii_fixup_cacheline(sc, pa);
 sc->sc_wdcdev.cap |= 0x0001 | 0x0002;
 sc->sc_wdcdev.PIO_cap = 4;
 if (sc->sc_dma_ok) {
  sc->sc_wdcdev.cap |= 0x0008 | 0x0010;
  sc->sc_wdcdev.cap |= 0x0400;
  sc->sc_wdcdev.irqack = pciide_irqack;
  sc->sc_wdcdev.DMA_cap = 2;
  sc->sc_wdcdev.UDMA_cap = 6;
 }
 sc->sc_wdcdev.set_modes = sii3112_setup_channel;
 sc->sc_wdcdev.drv_probe = sii3112_drv_probe;
 sc->sc_wdcdev.channels = sc->wdc_chanarray;
 sc->sc_wdcdev.nchannels = 4;
 if (pci_intr_map(pa, &intrhandle) != 0) {
  printf("%s: couldn't map native-PCI interrupt\n",
      sc->sc_wdcdev.sc_dev.dv_xname);
  return;
 }
 intrstr = pci_intr_string(pa->pa_pc, intrhandle);
 sc->sc_pci_ih = pci_intr_establish(pa->pa_pc, intrhandle, 5,
        pciide_pci_intr, sc,
        sc->sc_wdcdev.sc_dev.dv_xname);
 if (sc->sc_pci_ih != ((void *)0)) {
  printf("%s: using %s for native-PCI interrupt\n",
      sc->sc_wdcdev.sc_dev.dv_xname,
      intrstr ? intrstr : "unknown interrupt");
 } else {
  printf("%s: couldn't establish native-PCI interrupt",
      sc->sc_wdcdev.sc_dev.dv_xname);
  if (intrstr != ((void *)0))
   printf(" at %s", intrstr);
  printf("\n");
  return;
 }
 for (channel = 0; channel < sc->sc_wdcdev.nchannels; channel++) {
  cp = &sc->pciide_channels[channel];
  if (sii3114_chansetup(sc, channel) == 0)
   continue;
  sii3114_mapchan(cp);
  if (cp->hw_ok == 0)
   continue;
  sc->sc_wdcdev.set_modes(&cp->wdc_channel);
 }
}
void
sii3114_mapreg_dma(struct pciide_softc *sc, struct pci_attach_args *pa)
{
 int chan, reg64;
 bus_size_t size;
 struct pciide_satalink *sl = sc->sc_cookie;
 sc->sc_wdcdev.dma_arg = sc;
 sc->sc_wdcdev.dma_init = pciide_dma_init;
 sc->sc_wdcdev.dma_start = pciide_dma_start;
 sc->sc_wdcdev.dma_finish = pciide_dma_finish;
 sc->sc_dma_iot = sl->ba5_st;
 for (chan = 0; chan < 4; chan++) {
  for (reg64 = 0; reg64 < 8; reg64++) {
   size = 4;
   if (size > (0x08 - reg64))
    size = 0x08 - reg64;
   if (bus_space_subregion(sl->ba5_st,
       sl->ba5_sh,
       satalink_ba5_regmap[chan].ba5_IDEDMA_CMD + reg64,
       size, &sl->regs[chan].dma_iohs[reg64]) != 0) {
    sc->sc_dma_ok = 0;
    printf(": can't subregion offset "
        "%lu size %lu",
        (u_long) satalink_ba5_regmap[
      chan].ba5_IDEDMA_CMD + reg64,
        (u_long) size);
    return;
   }
  }
 }
 sc->sc_dmacmd_read = sii3114_dmacmd_read;
 sc->sc_dmacmd_write = sii3114_dmacmd_write;
 sc->sc_dmactl_read = sii3114_dmactl_read;
 sc->sc_dmactl_write = sii3114_dmactl_write;
 sc->sc_dmatbl_write = sii3114_dmatbl_write;
 sc->sc_dmat = pa->pa_dmat;
 sc->sc_dma_ok = 1;
}
int
sii3114_chansetup(struct pciide_softc *sc, int channel)
{
 static const char *channel_names[] = {
  "port 0",
  "port 1",
  "port 2",
  "port 3",
 };
 struct pciide_channel *cp = &sc->pciide_channels[channel];
 sc->wdc_chanarray[channel] = &cp->wdc_channel;
 if (channel == 2)
  cp->idedma_cmd = (1U << 1);
 cp->name = channel_names[channel];
 cp->wdc_channel.channel = channel;
 cp->wdc_channel.wdc = &sc->sc_wdcdev;
 cp->wdc_channel.ch_queue = wdc_alloc_queue();
 if (cp->wdc_channel.ch_queue == ((void *)0)) {
  printf("%s %s channel: "
      "cannot allocate channel queue",
      sc->sc_wdcdev.sc_dev.dv_xname, cp->name);
  return (0);
 }
 return (1);
}
void
sii3114_mapchan(struct pciide_channel *cp)
{
 struct channel_softc *wdc_cp = &cp->wdc_channel;
 struct pciide_softc *sc = (struct pciide_softc *)cp->wdc_channel.wdc;
 struct pciide_satalink *sl = sc->sc_cookie;
 int chan = wdc_cp->channel;
 int i;
 cp->hw_ok = 0;
 cp->compat = 0;
 cp->ih = sc->sc_pci_ih;
 sl->regs[chan].cmd_iot = sl->ba5_st;
 if (bus_space_subregion(sl->ba5_st, sl->ba5_sh,
   satalink_ba5_regmap[chan].ba5_IDE_TF0,
   9, &sl->regs[chan].cmd_baseioh) != 0) {
  printf("%s: couldn't subregion %s cmd base\n",
      sc->sc_wdcdev.sc_dev.dv_xname, cp->name);
  return;
 }
 sl->regs[chan].ctl_iot = sl->ba5_st;
 if (bus_space_subregion(sl->ba5_st, sl->ba5_sh,
   satalink_ba5_regmap[chan].ba5_IDE_TF8,
   1, &cp->ctl_baseioh) != 0) {
  printf("%s: couldn't subregion %s ctl base\n",
      sc->sc_wdcdev.sc_dev.dv_xname, cp->name);
  return;
 }
 sl->regs[chan].ctl_ioh = cp->ctl_baseioh;
 for (i = 0; i < 8; i++) {
  if (bus_space_subregion(sl->regs[chan].cmd_iot,
      sl->regs[chan].cmd_baseioh,
      i, i == 0 ? 4 : 1,
      &sl->regs[chan].cmd_iohs[i]) != 0) {
   printf("%s: couldn't subregion %s channel "
       "cmd regs\n",
       sc->sc_wdcdev.sc_dev.dv_xname, cp->name);
   return;
  }
 }
 sl->regs[chan].cmd_iohs[wdr_status & 7] =
     sl->regs[chan].cmd_iohs[wdr_command & 7];
 sl->regs[chan].cmd_iohs[wdr_features & 7] =
     sl->regs[chan].cmd_iohs[wdr_error & 7];
 wdc_cp->data32iot = wdc_cp->cmd_iot = sl->regs[chan].cmd_iot;
 wdc_cp->data32ioh = wdc_cp->cmd_ioh = sl->regs[chan].cmd_iohs[0];
 wdc_cp->_vtbl = &wdc_sii3114_vtbl;
 wdcattach(wdc_cp);
 cp->hw_ok = 1;
}
u_int8_t
sii3114_read_reg(struct channel_softc *chp, enum wdc_regs reg64)
{
 struct pciide_channel *cp = (struct pciide_channel *)chp;
 struct pciide_softc *sc = (struct pciide_softc *)cp->wdc_channel.wdc;
 struct pciide_satalink *sl = sc->sc_cookie;
 if (reg64 & 8)
  return (bus_space_read_1(sl->regs[chp->channel].ctl_iot,
      sl->regs[chp->channel].ctl_ioh, reg64 & 7));
 else
  return (bus_space_read_1(sl->regs[chp->channel].cmd_iot,
      sl->regs[chp->channel].cmd_iohs[reg64 & 7], 0));
}
void
sii3114_write_reg(struct channel_softc *chp, enum wdc_regs reg64, u_int8_t val)
{
 struct pciide_channel *cp = (struct pciide_channel *)chp;
 struct pciide_softc *sc = (struct pciide_softc *)cp->wdc_channel.wdc;
 struct pciide_satalink *sl = sc->sc_cookie;
 if (reg64 & 8)
  bus_space_write_1(sl->regs[chp->channel].ctl_iot,
      sl->regs[chp->channel].ctl_ioh, reg64 & 7, val);
 else
  bus_space_write_1(sl->regs[chp->channel].cmd_iot,
      sl->regs[chp->channel].cmd_iohs[reg64 & 7],
      0, val);
}
u_int8_t
sii3114_dmacmd_read(struct pciide_softc *sc, int chan)
{
 struct pciide_satalink *sl = sc->sc_cookie;
 return (bus_space_read_1(sc->sc_dma_iot,
     sl->regs[chan].dma_iohs[(0x00 + 0x08 * (0))], 0));
}
void
sii3114_dmacmd_write(struct pciide_softc *sc, int chan, u_int8_t val)
{
 struct pciide_satalink *sl = sc->sc_cookie;
 bus_space_write_1(sc->sc_dma_iot,
     sl->regs[chan].dma_iohs[(0x00 + 0x08 * (0))], 0, val);
}
u_int8_t
sii3114_dmactl_read(struct pciide_softc *sc, int chan)
{
 struct pciide_satalink *sl = sc->sc_cookie;
 return (bus_space_read_1(sc->sc_dma_iot,
     sl->regs[chan].dma_iohs[(0x02 + 0x08 * (0))], 0));
}
void
sii3114_dmactl_write(struct pciide_softc *sc, int chan, u_int8_t val)
{
 struct pciide_satalink *sl = sc->sc_cookie;
 bus_space_write_1(sc->sc_dma_iot,
     sl->regs[chan].dma_iohs[(0x02 + 0x08 * (0))], 0, val);
}
void
sii3114_dmatbl_write(struct pciide_softc *sc, int chan, u_int32_t val)
{
 struct pciide_satalink *sl = sc->sc_cookie;
 bus_space_write_4(sc->sc_dma_iot,
     sl->regs[chan].dma_iohs[(0x04 + 0x08 * (0))], 0, val);
}
void
cy693_chip_map(struct pciide_softc *sc, struct pci_attach_args *pa)
{
 struct pciide_channel *cp;
 pcireg_t interface = (((pa->pa_class) >> 8) & 0xff);
 bus_size_t cmdsize, ctlsize;
 struct pciide_cy *cy;
 sc->sc_cookielen = sizeof(*cy);
 sc->sc_cookie = malloc(sc->sc_cookielen, 2, 0x0002 | 0x0008);
 cy = sc->sc_cookie;
 if (pa->pa_function == 1) {
  cy->cy_compatchan = 0;
 } else if (pa->pa_function == 2) {
  cy->cy_compatchan = 1;
 } else {
  printf(": unexpected PCI function %d\n", pa->pa_function);
  return;
 }
 if (interface & 0x80) {
  printf(": DMA");
  pciide_mapreg_dma(sc, pa);
 } else {
  printf(": no DMA");
  sc->sc_dma_ok = 0;
 }
 cy->cy_handle = cy82c693_init(pa->pa_iot);
 if (cy->cy_handle == ((void *)0)) {
  printf(", (unable to map ctl registers)");
  sc->sc_dma_ok = 0;
 }
 sc->sc_wdcdev.cap = 0x0001 | 0x0002 |
     0x0004;
 if (sc->sc_dma_ok) {
  sc->sc_wdcdev.cap |= 0x0008 | 0x0400;
  sc->sc_wdcdev.irqack = pciide_irqack;
 }
 sc->sc_wdcdev.PIO_cap = 4;
 sc->sc_wdcdev.DMA_cap = 2;
 sc->sc_wdcdev.set_modes = cy693_setup_channel;
 sc->sc_wdcdev.channels = sc->wdc_chanarray;
 sc->sc_wdcdev.nchannels = 1;
 cp = &sc->pciide_channels[0];
 sc->wdc_chanarray[0] = &cp->wdc_channel;
 cp->name = ((0) == 0 ? "channel 0" : "channel 1");
 cp->wdc_channel.channel = 0;
 cp->wdc_channel.wdc = &sc->sc_wdcdev;
 cp->wdc_channel.ch_queue = wdc_alloc_queue();
 if (cp->wdc_channel.ch_queue == ((void *)0)) {
  printf(": cannot allocate channel queue\n");
  return;
 }
 printf(", %s %s to ", ((0) == 0 ? "channel 0" : "channel 1"),
     (interface & (0x02 << (2 * (0)))) ?
     "configured" : "wired");
 if (interface & (0x01 << (2 * (0)))) {
  printf("native-PCI\n");
  cp->hw_ok = pciide_mapregs_native(pa, cp, &cmdsize, &ctlsize,
      pciide_pci_intr);
 } else {
  printf("compatibility\n");
  cp->hw_ok = pciide_mapregs_compat(pa, cp, cy->cy_compatchan,
      &cmdsize, &ctlsize);
 }
 cp->wdc_channel.data32iot = cp->wdc_channel.cmd_iot;
 cp->wdc_channel.data32ioh = cp->wdc_channel.cmd_ioh;
 pciide_map_compat_intr(pa, cp, cy->cy_compatchan, interface);
 if (cp->hw_ok == 0)
  return;
 wdcattach(&cp->wdc_channel);
 if (pciide_chan_candisable(cp)) {
  pci_conf_write(sc->sc_pc, sc->sc_tag,
      0x04, 0);
 }
 if (cp->hw_ok == 0) {
  pciide_unmap_compat_intr(pa, cp, cy->cy_compatchan,
      interface);
  return;
 }
 ;
 cy693_setup_channel(&cp->wdc_channel);
 ;
}
void
cy693_setup_channel(struct channel_softc *chp)
{
 struct ata_drive_datas *drvp;
 int drive;
 u_int32_t cy_cmd_ctrl;
 u_int32_t idedma_ctl;
 struct pciide_channel *cp = (struct pciide_channel *)chp;
 struct pciide_softc *sc = (struct pciide_softc *)cp->wdc_channel.wdc;
 int dma_mode = -1;
 struct pciide_cy *cy = sc->sc_cookie;
 cy_cmd_ctrl = idedma_ctl = 0;
 pciide_channel_dma_setup(cp);
 for (drive = 0; drive < 2; drive++) {
  drvp = &chp->ch_drive[drive];
  if ((drvp->drive_flags & (0x0001|0x0002|0x0004)) == 0)
   continue;
  if (drvp->drive_flags & 0x0010) {
   idedma_ctl |= (0x20 << (drive));
   if (dma_mode == -1 || dma_mode > drvp->DMA_mode)
    dma_mode = drvp->DMA_mode;
  }
  cy_cmd_ctrl |= (cy_pio_pulse[drvp->PIO_mode] <<
      (12 + 16 * (drive)));
  cy_cmd_ctrl |= (cy_pio_rec[drvp->PIO_mode] <<
      (8 + 16 * (drive)));
  cy_cmd_ctrl |= (cy_pio_pulse[drvp->PIO_mode] <<
      (4 + 16 * (drive)));
  cy_cmd_ctrl |= (cy_pio_rec[drvp->PIO_mode] <<
      (0 + 16 * (drive)));
 }
 pci_conf_write(sc->sc_pc, sc->sc_tag, 0x4c, cy_cmd_ctrl);
 chp->ch_drive[0].DMA_mode = dma_mode;
 chp->ch_drive[1].DMA_mode = dma_mode;
 if (dma_mode == -1)
  dma_mode = 0;
 if (cy->cy_handle != ((void *)0)) {
  cy82c693_write(cy->cy_handle,
      (cy->cy_compatchan == 0) ?
      0x30 : 0x31, dma_mode);
 }
 pciide_print_modes(cp);
 if (idedma_ctl != 0) {
  bus_space_write_1(sc->sc_dma_iot, sc->sc_dma_ioh,
      (0x02 + 0x08 * (chp->channel)), idedma_ctl);
 }
}
static struct sis_hostbr_type {
 u_int16_t id;
 u_int8_t rev;
 u_int8_t udma_mode;
 char *name;
 u_int8_t type;
} sis_hostbr_type[] = {
 {0x0530, 0x00, 4, "530", 1},
 {0x0540, 0x00, 4, "540", 1},
 {0x0550, 0x00, 4, "550", 1},
 {0x0620, 0x00, 4, "620", 1},
 {0x0630, 0x00, 4, "630", 1},
 {0x0630, 0x30, 5, "630S", 3},
 {0x0633, 0x00, 5, "633", 3},
 {0x0635, 0x00, 5, "635", 3},
 {0x0640, 0x00, 4, "640", 6},
 {0x0645, 0x00, 6, "645", 6},
 {0x0646, 0x00, 6, "645DX", 6},
 {0x0648, 0x00, 6, "648", 6},
 {0x0650, 0x00, 6, "650", 6},
 {0x0651, 0x00, 6, "651", 6},
 {0x0652, 0x00, 6, "652", 6},
 {0x0655, 0x00, 6, "655", 6},
 {0x0658, 0x00, 6, "658", 6},
 {0x0661, 0x00, 6, "661", 6},
 {0x0730, 0x00, 5, "730", 2},
 {0x0733, 0x00, 5, "733", 3},
 {0x0735, 0x00, 5, "735", 3},
 {0x0740, 0x00, 5, "740", 6},
 {0x0741, 0x00, 6, "741", 6},
 {0x0745, 0x00, 5, "745", 3},
 {0x0746, 0x00, 6, "746", 6},
 {0x0748, 0x00, 6, "748", 6},
 {0x0750, 0x00, 6, "750", 6},
 {0x0751, 0x00, 6, "751", 6},
 {0x0752, 0x00, 6, "752", 6},
 {0x0755, 0x00, 6, "755", 6},
 {0x0760, 0x00, 6, "760", 6},
 {0x0962, 0x00, 6, "962", 5},
 {0x0963, 0x00, 6, "963", 5},
 {0x0964, 0x00, 6, "964", 5},
 {0x0965, 0x00, 6, "965", 5},
 {0x0966, 0x00, 6, "966", 5},
 {0x0968, 0x00, 6, "968", 5}
};
static struct sis_hostbr_type *sis_hostbr_type_match;
int
sis_hostbr_match(struct pci_attach_args *pa)
{
 int i;
 if ((((pa->pa_id) >> 0) & 0xffff) != 0x1039)
  return (0);
 sis_hostbr_type_match = ((void *)0);
 for (i = 0;
     i < sizeof(sis_hostbr_type) / sizeof(sis_hostbr_type[0]);
     i++) {
  if ((((pa->pa_id) >> 16) & 0xffff) == sis_hostbr_type[i].id &&
      (((pa->pa_class) >> 0) & 0xff) >= sis_hostbr_type[i].rev)
   sis_hostbr_type_match = &sis_hostbr_type[i];
 }
 return (sis_hostbr_type_match != ((void *)0));
}
int
sis_south_match(struct pci_attach_args *pa)
{
 return((((pa->pa_id) >> 0) & 0xffff) == 0x1039 &&
     (((pa->pa_id) >> 16) & 0xffff) == 0x0008 &&
     (((pa->pa_class) >> 0) & 0xff) >= 0x10);
}
void
sis_chip_map(struct pciide_softc *sc, struct pci_attach_args *pa)
{
 struct pciide_channel *cp;
 int channel;
 u_int8_t sis_ctr0 = pciide_pci_read(sc->sc_pc, sc->sc_tag, 0x4a);
 pcireg_t interface = (((pa->pa_class) >> 8) & 0xff);
 int rev = sc->sc_rev;
 bus_size_t cmdsize, ctlsize;
 struct pciide_sis *sis;
 sc->sc_cookielen = sizeof(*sis);
 sc->sc_cookie = malloc(sc->sc_cookielen, 2, 0x0002 | 0x0008);
 sis = sc->sc_cookie;
 pci_find_device(((void *)0), sis_hostbr_match);
 if (sis_hostbr_type_match) {
  if (sis_hostbr_type_match->type == 6) {
   pciide_pci_write(sc->sc_pc, sc->sc_tag, 0x57,
       pciide_pci_read(sc->sc_pc, sc->sc_tag,
       0x57) & 0x7f);
   if (sc->sc_pp->ide_product == 0x5518) {
    sis->sis_type = 5;
    sc->sc_wdcdev.UDMA_cap =
        sis_hostbr_type_match->udma_mode;
   } else {
    if (pci_find_device(((void *)0), sis_south_match)) {
     sis->sis_type = 4;
     sc->sc_wdcdev.UDMA_cap =
         sis_hostbr_type_match->udma_mode;
    } else {
     sis->sis_type = 3;
     sc->sc_wdcdev.UDMA_cap =
         sis_hostbr_type_match->udma_mode;
    }
   }
  } else {
   sis->sis_type = sis_hostbr_type_match->type;
   sc->sc_wdcdev.UDMA_cap =
       sis_hostbr_type_match->udma_mode;
  }
  printf(": %s", sis_hostbr_type_match->name);
 } else {
  printf(": 5597/5598");
  if (rev >= 0xd0) {
   sc->sc_wdcdev.UDMA_cap = 2;
   sis->sis_type = 1;
  } else {
   sc->sc_wdcdev.UDMA_cap = 0;
   sis->sis_type = 0;
  }
 }
 printf(": DMA");
 pciide_mapreg_dma(sc, pa);
 sc->sc_wdcdev.cap = 0x0001 | 0x0002 |
     0x0004;
 if (sc->sc_dma_ok) {
  sc->sc_wdcdev.cap |= 0x0008 | 0x0400;
  sc->sc_wdcdev.irqack = pciide_irqack;
  if (sis->sis_type >= 1)
   sc->sc_wdcdev.cap |= 0x0010;
 }
 sc->sc_wdcdev.PIO_cap = 4;
 sc->sc_wdcdev.DMA_cap = 2;
 sc->sc_wdcdev.channels = sc->wdc_chanarray;
 sc->sc_wdcdev.nchannels = 2;
 switch (sis->sis_type) {
 case 0:
 case 1:
 case 2:
  sc->sc_wdcdev.set_modes = sis_setup_channel;
  pciide_pci_write(sc->sc_pc, sc->sc_tag, 0x52,
      pciide_pci_read(sc->sc_pc, sc->sc_tag, 0x52) |
      0x08 | 0x01 | 0x04);
  break;
 case 3:
 case 4:
  sc->sc_wdcdev.set_modes = sis_setup_channel;
  pciide_pci_write(sc->sc_pc, sc->sc_tag, 0x49,
      pciide_pci_read(sc->sc_pc, sc->sc_tag, 0x49) | 0x01);
  break;
 case 5:
  sc->sc_wdcdev.set_modes = sis96x_setup_channel;
  pciide_pci_write(sc->sc_pc, sc->sc_tag, 0x50,
      pciide_pci_read(sc->sc_pc, sc->sc_tag, 0x50) & 0xf7);
  pciide_pci_write(sc->sc_pc, sc->sc_tag, 0x52,
      pciide_pci_read(sc->sc_pc, sc->sc_tag, 0x52) & 0xf7);
  break;
 }
 pciide_print_channels(sc->sc_wdcdev.nchannels, interface);
 for (channel = 0; channel < sc->sc_wdcdev.nchannels; channel++) {
  cp = &sc->pciide_channels[channel];
  if (pciide_chansetup(sc, channel, interface) == 0)
   continue;
  if ((channel == 0 && (sis_ctr0 & 0x02) == 0) ||
      (channel == 1 && (sis_ctr0 & 0x04) == 0)) {
   printf("%s: %s ignored (disabled)\n",
       sc->sc_wdcdev.sc_dev.dv_xname, cp->name);
   cp->hw_ok = 0;
   continue;
  }
  pciide_map_compat_intr(pa, cp, channel, interface);
  if (cp->hw_ok == 0)
   continue;
  pciide_mapchan(pa, cp, interface, &cmdsize, &ctlsize,
      pciide_pci_intr);
  if (cp->hw_ok == 0) {
   pciide_unmap_compat_intr(pa, cp, channel, interface);
   continue;
  }
  if (pciide_chan_candisable(cp)) {
   if (channel == 0)
    sis_ctr0 &= ~0x02;
   else
    sis_ctr0 &= ~0x04;
   pciide_pci_write(sc->sc_pc, sc->sc_tag, 0x4a,
       sis_ctr0);
  }
  if (cp->hw_ok == 0) {
   pciide_unmap_compat_intr(pa, cp, channel, interface);
   continue;
  }
  sc->sc_wdcdev.set_modes(&cp->wdc_channel);
 }
}
void
sis96x_setup_channel(struct channel_softc *chp)
{
 struct ata_drive_datas *drvp;
 int drive;
 u_int32_t sis_tim;
 u_int32_t idedma_ctl;
 int regtim;
 struct pciide_channel *cp = (struct pciide_channel *)chp;
 struct pciide_softc *sc = (struct pciide_softc *)cp->wdc_channel.wdc;
 sis_tim = 0;
 idedma_ctl = 0;
 pciide_channel_dma_setup(cp);
 for (drive = 0; drive < 2; drive++) {
  regtim = ((((pciide_pci_read(sc->sc_pc, sc->sc_tag, 0x57)) & 0x40) ? 0x70 : 0x40) + ((chp->channel) << 3) + ((drive) << 2));
  drvp = &chp->ch_drive[drive];
  if ((drvp->drive_flags & (0x0001|0x0002|0x0004)) == 0)
   continue;
  if (drvp->drive_flags & 0x0020) {
   drvp->drive_flags &= ~0x0010;
   if (pciide_pci_read(sc->sc_pc, sc->sc_tag,
       (0x51 + (chp->channel) * 2)) & 0x80) {
    if (drvp->UDMA_mode > 2)
     drvp->UDMA_mode = 2;
   }
   sis_tim |= sis_udma133new_tim[drvp->UDMA_mode];
   sis_tim |= sis_pio133new_tim[drvp->PIO_mode];
   idedma_ctl |= (0x20 << (drive));
  } else if (drvp->drive_flags & 0x0010) {
   if (drvp->PIO_mode > (drvp->DMA_mode + 2))
    drvp->PIO_mode = drvp->DMA_mode + 2;
   if (drvp->DMA_mode + 2 > (drvp->PIO_mode))
    drvp->DMA_mode = (drvp->PIO_mode > 2) ?
        drvp->PIO_mode - 2 : 0;
   sis_tim |= sis_dma133new_tim[drvp->DMA_mode];
   idedma_ctl |= (0x20 << (drive));
  } else {
   sis_tim |= sis_pio133new_tim[drvp->PIO_mode];
  }
  ;
  pci_conf_write(sc->sc_pc, sc->sc_tag, regtim, sis_tim);
 }
 if (idedma_ctl != 0) {
  bus_space_write_1(sc->sc_dma_iot, sc->sc_dma_ioh,
      (0x02 + 0x08 * (chp->channel)), idedma_ctl);
 }
 pciide_print_modes(cp);
}
void
sis_setup_channel(struct channel_softc *chp)
{
 struct ata_drive_datas *drvp;
 int drive;
 u_int32_t sis_tim;
 u_int32_t idedma_ctl;
 struct pciide_channel *cp = (struct pciide_channel *)chp;
 struct pciide_softc *sc = (struct pciide_softc *)cp->wdc_channel.wdc;
 struct pciide_sis *sis = sc->sc_cookie;
 ;
 sis_tim = 0;
 idedma_ctl = 0;
 pciide_channel_dma_setup(cp);
 for (drive = 0; drive < 2; drive++) {
  drvp = &chp->ch_drive[drive];
  if ((drvp->drive_flags & (0x0001|0x0002|0x0004)) == 0)
   continue;
  if ((drvp->drive_flags & 0x0010) == 0 &&
      (drvp->drive_flags & 0x0020) == 0)
   goto pio;
  if (drvp->drive_flags & 0x0020) {
   drvp->drive_flags &= ~0x0010;
   if (pciide_pci_read(sc->sc_pc, sc->sc_tag,
       0x48) & (0x10 << (chp->channel))) {
    if (drvp->UDMA_mode > 2)
     drvp->UDMA_mode = 2;
   }
   switch (sis->sis_type) {
   case 1:
   case 2:
    sis_tim |= sis_udma66_tim[drvp->UDMA_mode] <<
        (12 + 16 * (drive));
    break;
   case 3:
    sis_tim |=
        sis_udma100new_tim[drvp->UDMA_mode] <<
        (8 + 16 * (drive));
    break;
   case 4:
    sis_tim |=
        sis_udma133old_tim[drvp->UDMA_mode] <<
        (8 + 16 * (drive));
    break;
   default:
    printf("unknown SiS IDE type %d\n",
        sis->sis_type);
   }
  } else {
   if (drvp->PIO_mode > (drvp->DMA_mode + 2))
    drvp->PIO_mode = drvp->DMA_mode + 2;
   if (drvp->DMA_mode + 2 > (drvp->PIO_mode))
    drvp->DMA_mode = (drvp->PIO_mode > 2) ?
        drvp->PIO_mode - 2 : 0;
   if (drvp->DMA_mode == 0)
    drvp->PIO_mode = 0;
  }
  idedma_ctl |= (0x20 << (drive));
pio: switch (sis->sis_type) {
  case 0:
  case 1:
  case 2:
   sis_tim |= sis_pio_act[drvp->PIO_mode] <<
       (8 + 16 * (drive));
   sis_tim |= sis_pio_rec[drvp->PIO_mode] <<
       (16 * (drive));
   break;
  case 3:
  case 4:
   sis_tim |= sis_pio_act[drvp->PIO_mode] <<
       (4 + 16 * (drive));
   sis_tim |= sis_pio_rec[drvp->PIO_mode] <<
       (16 * (drive));
   break;
  default:
   printf("unknown SiS IDE type %d\n",
       sis->sis_type);
  }
 }
 ;
 pci_conf_write(sc->sc_pc, sc->sc_tag, (0x40 + (chp->channel * 4)), sis_tim);
 if (idedma_ctl != 0) {
  bus_space_write_1(sc->sc_dma_iot, sc->sc_dma_ioh,
      (0x02 + 0x08 * (chp->channel)), idedma_ctl);
 }
 pciide_print_modes(cp);
}
void
natsemi_chip_map(struct pciide_softc *sc, struct pci_attach_args *pa)
{
 struct pciide_channel *cp;
 int channel;
 pcireg_t interface, ctl;
 bus_size_t cmdsize, ctlsize;
 printf(": DMA");
 pciide_mapreg_dma(sc, pa);
 sc->sc_wdcdev.cap = 0x0001;
 if (sc->sc_dma_ok) {
  sc->sc_wdcdev.cap |= 0x0008 | 0x0400;
  sc->sc_wdcdev.irqack = natsemi_irqack;
 }
 pciide_pci_write(sc->sc_pc, sc->sc_tag, 0x54, 0xb7);
 pciide_pci_write(sc->sc_pc, sc->sc_tag, 0x41,
     pciide_pci_read(sc->sc_pc, sc->sc_tag, 0x41) |
     (0x01 << (0)) | (0x01 << (1)));
 sc->sc_wdcdev.PIO_cap = 4;
 sc->sc_wdcdev.DMA_cap = 2;
 sc->sc_wdcdev.set_modes = natsemi_setup_channel;
 sc->sc_wdcdev.channels = sc->wdc_chanarray;
 sc->sc_wdcdev.nchannels = 2;
 interface = (((pci_conf_read(sc->sc_pc, sc->sc_tag, 0x08)) >> 8) & 0xff);
 interface &= ~0x40;
 pciide_print_channels(sc->sc_wdcdev.nchannels, interface);
 ctl = pciide_pci_read(sc->sc_pc, sc->sc_tag, 0x40);
 if (interface & ((0x01 << (2 * (0))) | (0x01 << (2 * (1)))))
  ctl &= ~0x40;
 else
  ctl |= 0x40;
 pciide_pci_write(sc->sc_pc, sc->sc_tag, 0x40, ctl);
 for (channel = 0; channel < sc->sc_wdcdev.nchannels; channel++) {
  cp = &sc->pciide_channels[channel];
  if (pciide_chansetup(sc, channel, interface) == 0)
   continue;
  pciide_map_compat_intr(pa, cp, channel, interface);
  if (cp->hw_ok == 0)
   continue;
  pciide_mapchan(pa, cp, interface, &cmdsize, &ctlsize,
      natsemi_pci_intr);
  if (cp->hw_ok == 0) {
   pciide_unmap_compat_intr(pa, cp, channel, interface);
   continue;
  }
  natsemi_setup_channel(&cp->wdc_channel);
 }
}
void
natsemi_setup_channel(struct channel_softc *chp)
{
 struct ata_drive_datas *drvp;
 int drive, ndrives = 0;
 u_int32_t idedma_ctl = 0;
 struct pciide_channel *cp = (struct pciide_channel *)chp;
 struct pciide_softc *sc = (struct pciide_softc *)cp->wdc_channel.wdc;
 u_int8_t tim;
 pciide_channel_dma_setup(cp);
 for (drive = 0; drive < 2; drive++) {
  drvp = &chp->ch_drive[drive];
  if ((drvp->drive_flags & (0x0001|0x0002|0x0004)) == 0)
   continue;
  ndrives++;
  if ((drvp->drive_flags & 0x0010) == 0) {
   tim = natsemi_pio_pulse[drvp->PIO_mode] |
       (natsemi_pio_recover[drvp->PIO_mode] << 4);
  } else {
   if (drvp->PIO_mode >= 3 &&
       (drvp->DMA_mode + 2) > drvp->PIO_mode) {
    drvp->DMA_mode = drvp->PIO_mode - 2;
   }
   idedma_ctl |= (0x20 << (drive));
   tim = natsemi_dma_pulse[drvp->DMA_mode] |
       (natsemi_dma_recover[drvp->DMA_mode] << 4);
  }
  pciide_pci_write(sc->sc_pc, sc->sc_tag,
      (0x44 + (chp->channel * 8) + (drive * 4) + 0), tim);
  pciide_pci_write(sc->sc_pc, sc->sc_tag,
      (0x44 + (chp->channel * 8) + (drive * 4) + 1), tim);
 }
 if (idedma_ctl != 0) {
  bus_space_write_1(sc->sc_dma_iot, sc->sc_dma_ioh,
      (0x02 + 0x08 * (chp->channel)), idedma_ctl);
 }
 if (ndrives > 0) {
  pciide_pci_write(sc->sc_pc, sc->sc_tag, 0x41,
      pciide_pci_read(sc->sc_pc, sc->sc_tag, 0x41) &
      ~((0x01 << (chp->channel))));
 }
 pciide_print_modes(cp);
 bus_space_write_1(sc->sc_dma_iot, sc->sc_dma_ioh,
     (0x02 + 0x08 * (chp->channel)),
     bus_space_read_1(sc->sc_dma_iot, sc->sc_dma_ioh,
  (0x02 + 0x08 * (chp->channel))));
}
void
natsemi_irqack(struct channel_softc *chp)
{
 struct pciide_channel *cp = (struct pciide_channel *)chp;
 struct pciide_softc *sc = (struct pciide_softc *)cp->wdc_channel.wdc;
 u_int8_t clr;
 clr = bus_space_read_1(sc->sc_dma_iot, sc->sc_dma_ioh,
     (0x00 + 0x08 * (chp->channel)));
 clr |= bus_space_read_1(sc->sc_dma_iot, sc->sc_dma_ioh,
     (0x02 + 0x08 * (chp->channel))) &
     (0x02 | 0x04);
 bus_space_write_1(sc->sc_dma_iot, sc->sc_dma_ioh,
     (0x00 + 0x08 * (chp->channel)), clr);
}
int
natsemi_pci_intr(void *arg)
{
 struct pciide_softc *sc = arg;
 struct pciide_channel *cp;
 struct channel_softc *wdc_cp;
 int i, rv, crv;
 u_int8_t msk;
 rv = 0;
 msk = pciide_pci_read(sc->sc_pc, sc->sc_tag, 0x41);
 for (i = 0; i < sc->sc_wdcdev.nchannels; i++) {
  cp = &sc->pciide_channels[i];
  wdc_cp = &cp->wdc_channel;
  if (cp->compat)
   continue;
  if (msk & (0x01 << (i)))
   continue;
  if (pciide_intr_flag(cp) == 0)
   continue;
  crv = wdcintr(wdc_cp);
  if (crv == 0)
   ;
  else if (crv == 1)
   rv = 1;
  else if (rv == 0)
   rv = crv;
 }
 return (rv);
}
void
ns_scx200_chip_map(struct pciide_softc *sc, struct pci_attach_args *pa)
{
 struct pciide_channel *cp;
 int channel;
 pcireg_t interface = (((pa->pa_class) >> 8) & 0xff);
 bus_size_t cmdsize, ctlsize;
 printf(": DMA");
 pciide_mapreg_dma(sc, pa);
 sc->sc_wdcdev.cap = 0x0001 | 0x0002 |
     0x0004;
 if (sc->sc_dma_ok) {
  sc->sc_wdcdev.cap |= 0x0008 | 0x0010;
  sc->sc_wdcdev.cap |= 0x0400;
  sc->sc_wdcdev.irqack = pciide_irqack;
 }
 sc->sc_wdcdev.PIO_cap = 4;
 sc->sc_wdcdev.DMA_cap = 2;
 sc->sc_wdcdev.UDMA_cap = 2;
 sc->sc_wdcdev.set_modes = ns_scx200_setup_channel;
 sc->sc_wdcdev.channels = sc->wdc_chanarray;
 sc->sc_wdcdev.nchannels = 2;
 if (sc->sc_pp->ide_product == 0x0502) {
  sc->sc_dma_maxsegsz = 0x00010000 - (1 << 13);
  sc->sc_dma_boundary = 0x00010000 - (1 << 13);
 }
 sc->sc_wdcdev.quirks = 0x0001;
 pciide_print_channels(sc->sc_wdcdev.nchannels, interface);
 for (channel = 0; channel < sc->sc_wdcdev.nchannels; channel++) {
  cp = &sc->pciide_channels[channel];
  if (pciide_chansetup(sc, channel, interface) == 0)
   continue;
  pciide_map_compat_intr(pa, cp, channel, interface);
  if (cp->hw_ok == 0)
   continue;
  pciide_mapchan(pa, cp, interface, &cmdsize, &ctlsize,
      pciide_pci_intr);
  if (cp->hw_ok == 0) {
   pciide_unmap_compat_intr(pa, cp, channel, interface);
   continue;
  }
  sc->sc_wdcdev.set_modes(&cp->wdc_channel);
 }
}
void
ns_scx200_setup_channel(struct channel_softc *chp)
{
 struct ata_drive_datas *drvp;
 int drive, mode;
 u_int32_t idedma_ctl;
 struct pciide_channel *cp = (struct pciide_channel*)chp;
 struct pciide_softc *sc = (struct pciide_softc *)cp->wdc_channel.wdc;
 int channel = chp->channel;
 int pioformat;
 pcireg_t piotim, dmatim;
 pciide_channel_dma_setup(cp);
 idedma_ctl = 0;
 pioformat = (pci_conf_read(sc->sc_pc, sc->sc_tag,
     (0x44 + 16 * (0) + 8 * (0))) >> 31) & 0x01;
 ;
 for (drive = 0; drive < 2; drive++) {
  drvp = &chp->ch_drive[drive];
  if ((drvp->drive_flags & (0x0001|0x0002|0x0004)) == 0)
   continue;
  piotim = pci_conf_read(sc->sc_pc, sc->sc_tag,
      (0x40 + 16 * (channel) + 8 * (drive)));
  dmatim = pci_conf_read(sc->sc_pc, sc->sc_tag,
      (0x44 + 16 * (channel) + 8 * (drive)));
  ;
  if ((chp->wdc->cap & 0x0010) != 0 &&
      (drvp->drive_flags & 0x0020) != 0) {
   drvp->drive_flags &= ~0x0010;
   idedma_ctl |= (0x20 << (drive));
   dmatim = scx200_udma33[drvp->UDMA_mode];
   mode = drvp->PIO_mode;
  } else if ((chp->wdc->cap & 0x0008) != 0 &&
      (drvp->drive_flags & 0x0010) != 0) {
   drvp->drive_flags &= ~0x0020;
   idedma_ctl |= (0x20 << (drive));
   dmatim = scx200_dma33[drvp->DMA_mode];
   if (drvp->PIO_mode <= (drvp->DMA_mode + 2))
    mode = drvp->PIO_mode;
   else
    mode = drvp->DMA_mode + 2;
  } else {
   mode = drvp->PIO_mode;
  }
  drvp->PIO_mode = mode;
  if (mode < 2)
   drvp->DMA_mode = 0;
  else
   drvp->DMA_mode = mode - 2;
  piotim = scx200_pio33[pioformat][drvp->PIO_mode];
  ;
  pci_conf_write(sc->sc_pc, sc->sc_tag,
      (0x40 + 16 * (channel) + 8 * (drive)), piotim);
  pci_conf_write(sc->sc_pc, sc->sc_tag,
      (0x44 + 16 * (channel) + 8 * (drive)), dmatim);
 }
 if (idedma_ctl != 0) {
  bus_space_write_1(sc->sc_dma_iot, sc->sc_dma_ioh,
      (0x02 + 0x08 * (channel)), idedma_ctl);
 }
 pciide_print_modes(cp);
}
void
acer_chip_map(struct pciide_softc *sc, struct pci_attach_args *pa)
{
 struct pciide_channel *cp;
 int channel;
 pcireg_t cr, interface;
 bus_size_t cmdsize, ctlsize;
 int rev = sc->sc_rev;
 printf(": DMA");
 pciide_mapreg_dma(sc, pa);
 sc->sc_wdcdev.cap = 0x0001 | 0x0002 |
     0x0004;
 if (sc->sc_dma_ok) {
  sc->sc_wdcdev.cap |= 0x0008;
  if (rev >= 0x20) {
   sc->sc_wdcdev.cap |= 0x0010;
   if (rev >= 0xC4)
    sc->sc_wdcdev.UDMA_cap = 5;
   else if (rev >= 0xC2)
    sc->sc_wdcdev.UDMA_cap = 4;
   else
    sc->sc_wdcdev.UDMA_cap = 2;
  }
  sc->sc_wdcdev.cap |= 0x0400;
  sc->sc_wdcdev.irqack = pciide_irqack;
  if (rev <= 0xC4)
   sc->sc_wdcdev.dma_init = acer_dma_init;
 }
 sc->sc_wdcdev.PIO_cap = 4;
 sc->sc_wdcdev.DMA_cap = 2;
 sc->sc_wdcdev.set_modes = acer_setup_channel;
 sc->sc_wdcdev.channels = sc->wdc_chanarray;
 sc->sc_wdcdev.nchannels = 2;
 pciide_pci_write(sc->sc_pc, sc->sc_tag, 0x53,
     (pciide_pci_read(sc->sc_pc, sc->sc_tag, 0x53) |
  0x01) & ~0x02);
 pciide_pci_write(sc->sc_pc, sc->sc_tag, 0x50,
     pciide_pci_read(sc->sc_pc, sc->sc_tag, 0x50) | 0x02);
 pciide_pci_write(sc->sc_pc, sc->sc_tag, 0x43,
     pciide_pci_read(sc->sc_pc, sc->sc_tag, 0x43) &
     ~(0x40|(0x20 >> (0))|(0x20 >> (1))));
 pciide_pci_write(sc->sc_pc, sc->sc_tag, 0x4d,
     pciide_pci_read(sc->sc_pc, sc->sc_tag, 0x4d) &
     ~0x80);
 cr = pci_conf_read(sc->sc_pc, sc->sc_tag, 0x08);
 cr |= (0x40 << 8);
 pci_conf_write(sc->sc_pc, sc->sc_tag, 0x08, cr);
 interface = (((pci_conf_read(sc->sc_pc, sc->sc_tag, 0x08)) >> 8) & 0xff);
 pciide_print_channels(sc->sc_wdcdev.nchannels, interface);
 if (rev >= 0xC2)
  pciide_pci_write(sc->sc_pc, sc->sc_tag, 0x4b,
      pciide_pci_read(sc->sc_pc, sc->sc_tag, 0x4b)
      | 0x08);
 for (channel = 0; channel < sc->sc_wdcdev.nchannels; channel++) {
  cp = &sc->pciide_channels[channel];
  if (pciide_chansetup(sc, channel, interface) == 0)
   continue;
  if ((interface & (0x20 >> (channel))) == 0) {
   printf("%s: %s ignored (disabled)\n",
       sc->sc_wdcdev.sc_dev.dv_xname, cp->name);
   cp->hw_ok = 0;
   continue;
  }
  pciide_map_compat_intr(pa, cp, channel, interface);
  if (cp->hw_ok == 0)
   continue;
  pciide_mapchan(pa, cp, interface, &cmdsize, &ctlsize,
      (rev >= 0xC2) ? pciide_pci_intr : acer_pci_intr);
  if (cp->hw_ok == 0) {
   pciide_unmap_compat_intr(pa, cp, channel, interface);
   continue;
  }
  if (pciide_chan_candisable(cp)) {
   cr &= ~((0x20 >> (channel)) << 8);
   pci_conf_write(sc->sc_pc, sc->sc_tag,
       0x08, cr);
  }
  if (cp->hw_ok == 0) {
   pciide_unmap_compat_intr(pa, cp, channel, interface);
   continue;
  }
  acer_setup_channel(&cp->wdc_channel);
 }
}
void
acer_setup_channel(struct channel_softc *chp)
{
 struct ata_drive_datas *drvp;
 int drive;
 u_int32_t acer_fifo_udma;
 u_int32_t idedma_ctl;
 struct pciide_channel *cp = (struct pciide_channel *)chp;
 struct pciide_softc *sc = (struct pciide_softc *)cp->wdc_channel.wdc;
 idedma_ctl = 0;
 acer_fifo_udma = pci_conf_read(sc->sc_pc, sc->sc_tag, 0x54);
 ;
 pciide_channel_dma_setup(cp);
 if ((chp->ch_drive[0].drive_flags | chp->ch_drive[1].drive_flags) &
     0x0020) {
  if (pciide_pci_read(sc->sc_pc, sc->sc_tag, 0x4a) &
      (0x1 << (chp->channel))) {
   ;
   if (chp->ch_drive[0].UDMA_mode > 2)
    chp->ch_drive[0].UDMA_mode = 2;
   if (chp->ch_drive[1].UDMA_mode > 2)
    chp->ch_drive[1].UDMA_mode = 2;
  }
 }
 for (drive = 0; drive < 2; drive++) {
  drvp = &chp->ch_drive[drive];
  if ((drvp->drive_flags & (0x0001|0x0002|0x0004)) == 0)
   continue;
  ;
  acer_fifo_udma &= ~((((0x3) & 0x3) << (2 + (drive) * 4 + (chp->channel) * 8)) |
      (0x8 << (16 + (drive) * 4 + (chp->channel) * 8)) |
      (((0x7) & 0x7) << (16 + (drive) * 4 + (chp->channel) * 8)));
  if ((drvp->drive_flags & 0x0010) == 0 &&
      (drvp->drive_flags & 0x0020) == 0) {
   acer_fifo_udma |=
       (((0x1) & 0x3) << (2 + (drive) * 4 + (chp->channel) * 8));
   goto pio;
  }
  acer_fifo_udma |= (((0x2) & 0x3) << (2 + (drive) * 4 + (chp->channel) * 8));
  if (drvp->drive_flags & 0x0020) {
   drvp->drive_flags &= ~0x0010;
   acer_fifo_udma |= (0x8 << (16 + (drive) * 4 + (chp->channel) * 8));
   acer_fifo_udma |=
       (((acer_udma[drvp->UDMA_mode]) & 0x7) << (16 + (drive) * 4 + (chp->channel) * 8));
   if (drvp->UDMA_mode >= 3) {
    pciide_pci_write(sc->sc_pc, sc->sc_tag,
        0x4b,
        pciide_pci_read(sc->sc_pc, sc->sc_tag,
        0x4b) | 0x01);
   }
  } else {
   if (drvp->PIO_mode > (drvp->DMA_mode + 2))
    drvp->PIO_mode = drvp->DMA_mode + 2;
   if (drvp->DMA_mode + 2 > (drvp->PIO_mode))
    drvp->DMA_mode = (drvp->PIO_mode > 2) ?
        drvp->PIO_mode - 2 : 0;
   if (drvp->DMA_mode == 0)
    drvp->PIO_mode = 0;
  }
  idedma_ctl |= (0x20 << (drive));
pio: pciide_pci_write(sc->sc_pc, sc->sc_tag,
      (0x5a + (drive) + (chp->channel) * 4),
      acer_pio[drvp->PIO_mode]);
 }
 ;
 pci_conf_write(sc->sc_pc, sc->sc_tag, 0x54, acer_fifo_udma);
 if (idedma_ctl != 0) {
  bus_space_write_1(sc->sc_dma_iot, sc->sc_dma_ioh,
      (0x02 + 0x08 * (chp->channel)), idedma_ctl);
 }
 pciide_print_modes(cp);
}
int
acer_pci_intr(void *arg)
{
 struct pciide_softc *sc = arg;
 struct pciide_channel *cp;
 struct channel_softc *wdc_cp;
 int i, rv, crv;
 u_int32_t chids;
 rv = 0;
 chids = pciide_pci_read(sc->sc_pc, sc->sc_tag, 0x75);
 for (i = 0; i < sc->sc_wdcdev.nchannels; i++) {
  cp = &sc->pciide_channels[i];
  wdc_cp = &cp->wdc_channel;
  if (cp->compat)
   continue;
  if (chids & ((0x1) << (i))) {
   crv = wdcintr(wdc_cp);
   if (crv == 0)
    printf("%s:%d: bogus intr\n",
        sc->sc_wdcdev.sc_dev.dv_xname, i);
   else
    rv = 1;
  }
 }
 return (rv);
}
int
acer_dma_init(void *v, int channel, int drive, void *databuf,
    size_t datalen, int flags)
{
 if (flags & 0x04)
  return (22);
 return (pciide_dma_init(v, channel, drive, databuf, datalen, flags));
}
void
hpt_chip_map(struct pciide_softc *sc, struct pci_attach_args *pa)
{
 struct pciide_channel *cp;
 int i, compatchan, revision;
 pcireg_t interface;
 bus_size_t cmdsize, ctlsize;
 revision = sc->sc_rev;
 if ((((pa->pa_class) >> 16) & 0xff) == 0x01) {
  interface = (((pa->pa_class) >> 8) & 0xff);
 } else {
  interface = 0x80 |
      (0x01 << (2 * (0)));
  if ((sc->sc_pp->ide_product == 0x0004 &&
     (revision == 0x03 || revision == 0x04 ||
      revision == 0x05)) ||
      sc->sc_pp->ide_product == 0x0005 ||
      sc->sc_pp->ide_product == 0x0006 ||
      sc->sc_pp->ide_product == 0x0007 ||
      sc->sc_pp->ide_product == 0x0008)
   interface |= (0x01 << (2 * (1)));
 }
 printf(": DMA");
 pciide_mapreg_dma(sc, pa);
 printf("\n");
 sc->sc_wdcdev.cap = 0x0001 | 0x0002 |
     0x0004;
 if (sc->sc_dma_ok) {
  sc->sc_wdcdev.cap |= 0x0008 | 0x0010;
  sc->sc_wdcdev.cap |= 0x0400;
  sc->sc_wdcdev.irqack = pciide_irqack;
 }
 sc->sc_wdcdev.PIO_cap = 4;
 sc->sc_wdcdev.DMA_cap = 2;
 sc->sc_wdcdev.set_modes = hpt_setup_channel;
 sc->sc_wdcdev.channels = sc->wdc_chanarray;
 if (sc->sc_pp->ide_product == 0x0004 &&
     revision == 0x01) {
  sc->sc_wdcdev.UDMA_cap = 4;
  if (pa->pa_function == 0) {
   compatchan = 0;
  } else if (pa->pa_function == 1) {
   compatchan = 1;
  } else {
   printf("%s: unexpected PCI function %d\n",
       sc->sc_wdcdev.sc_dev.dv_xname, pa->pa_function);
   return;
  }
  sc->sc_wdcdev.nchannels = 1;
 } else {
  sc->sc_wdcdev.nchannels = 2;
  if (sc->sc_pp->ide_product == 0x0005 ||
      sc->sc_pp->ide_product == 0x0006 ||
      sc->sc_pp->ide_product == 0x0007 ||
      sc->sc_pp->ide_product == 0x0008)
   sc->sc_wdcdev.UDMA_cap = 6;
  else if (sc->sc_pp->ide_product == 0x0004) {
   if (revision == 0x05)
    sc->sc_wdcdev.UDMA_cap = 6;
   else
    sc->sc_wdcdev.UDMA_cap = 5;
  }
 }
 for (i = 0; i < sc->sc_wdcdev.nchannels; i++) {
  cp = &sc->pciide_channels[i];
  compatchan = 0;
  if (sc->sc_wdcdev.nchannels > 1) {
   compatchan = i;
   if((pciide_pci_read(sc->sc_pc, sc->sc_tag,
       (0x50 + ((i) * 4))) & 0x04) == 0) {
    printf("%s: %s ignored (disabled)\n",
        sc->sc_wdcdev.sc_dev.dv_xname, cp->name);
    cp->hw_ok = 0;
    continue;
   }
  }
  if (pciide_chansetup(sc, i, interface) == 0)
   continue;
  if (interface & (0x01 << (2 * (i)))) {
   cp->hw_ok = pciide_mapregs_native(pa, cp, &cmdsize,
       &ctlsize, hpt_pci_intr);
  } else {
   cp->hw_ok = pciide_mapregs_compat(pa, cp, compatchan,
       &cmdsize, &ctlsize);
  }
  if (cp->hw_ok == 0)
   return;
  cp->wdc_channel.data32iot = cp->wdc_channel.cmd_iot;
  cp->wdc_channel.data32ioh = cp->wdc_channel.cmd_ioh;
  wdcattach(&cp->wdc_channel);
  hpt_setup_channel(&cp->wdc_channel);
 }
 if ((sc->sc_pp->ide_product == 0x0004 &&
     (revision == 0x03 || revision == 0x04 ||
     revision == 0x05)) ||
     sc->sc_pp->ide_product == 0x0005 ||
     sc->sc_pp->ide_product == 0x0006 ||
     sc->sc_pp->ide_product == 0x0007 ||
     sc->sc_pp->ide_product == 0x0008) {
  pciide_pci_write(sc->sc_pc, sc->sc_tag, (0x51 + ((0) * 4)),
      pciide_pci_read(sc->sc_pc, sc->sc_tag, (0x51 + ((0) * 4))) &
      ~(0x02 | 0x01));
  pciide_pci_write(sc->sc_pc, sc->sc_tag, (0x51 + ((1) * 4)),
  pciide_pci_read(sc->sc_pc, sc->sc_tag, (0x51 + ((1) * 4))) &
  ~(0x02 | 0x01));
  pciide_pci_write(sc->sc_pc, sc->sc_tag, 0x5a,
      pciide_pci_read(sc->sc_pc, sc->sc_tag, 0x5a) &
      ~0x10);
 }
 if (sc->sc_pp->ide_product == 0x0005 ||
     sc->sc_pp->ide_product == 0x0006 ||
     sc->sc_pp->ide_product == 0x0007 ||
     sc->sc_pp->ide_product == 0x0008 ||
     (sc->sc_pp->ide_product == 0x0004 &&
     revision == 0x05))
  pciide_pci_write(sc->sc_pc, sc->sc_tag, 0x5b,
      (pciide_pci_read(sc->sc_pc, sc->sc_tag, 0x5b) &
       0x01) | 0x20);
 return;
}
void
hpt_setup_channel(struct channel_softc *chp)
{
 struct ata_drive_datas *drvp;
 int drive;
 int cable;
 u_int32_t before, after;
 u_int32_t idedma_ctl;
 struct pciide_channel *cp = (struct pciide_channel *)chp;
 struct pciide_softc *sc = (struct pciide_softc *)cp->wdc_channel.wdc;
 int revision = sc->sc_rev;
 u_int32_t *tim_pio, *tim_dma, *tim_udma;
 cable = pciide_pci_read(sc->sc_pc, sc->sc_tag, 0x5a);
 pciide_channel_dma_setup(cp);
 idedma_ctl = 0;
 switch (sc->sc_pp->ide_product) {
 case 0x0004:
  if (revision == 0x03 ||
      revision == 0x04) {
   tim_pio = hpt370_pio;
   tim_dma = hpt370_dma;
   tim_udma = hpt370_udma;
  } else if (revision == 0x05) {
   tim_pio = hpt372_pio;
   tim_dma = hpt372_dma;
   tim_udma = hpt372_udma;
  } else {
   tim_pio = hpt366_pio;
   tim_dma = hpt366_dma;
   tim_udma = hpt366_udma;
  }
  break;
 case 0x0005:
 case 0x0006:
 case 0x0007:
  tim_pio = hpt372_pio;
  tim_dma = hpt372_dma;
  tim_udma = hpt372_udma;
  break;
 case 0x0008:
  tim_pio = hpt374_pio;
  tim_dma = hpt374_dma;
  tim_udma = hpt374_udma;
  break;
 default:
  printf("%s: no known timing values\n",
      sc->sc_wdcdev.sc_dev.dv_xname);
  goto end;
 }
 for (drive = 0; drive < 2; drive++) {
  drvp = &chp->ch_drive[drive];
  if ((drvp->drive_flags & (0x0001|0x0002|0x0004)) == 0)
   continue;
  before = pci_conf_read(sc->sc_pc, sc->sc_tag,
           (0x40 + ((drive) * 4) + ((chp->channel) * 8)));
  if (drvp->drive_flags & 0x0020) {
   drvp->drive_flags &= ~0x0010;
   if ((cable & (0x01 << (1 - (chp->channel)))) != 0 &&
       drvp->UDMA_mode > 2) {
    ;
    drvp->UDMA_mode = 2;
   }
   after = tim_udma[drvp->UDMA_mode];
   idedma_ctl |= (0x20 << (drive));
  } else if (drvp->drive_flags & 0x0010) {
   if (drvp->PIO_mode >= 3 &&
       (drvp->DMA_mode + 2) > drvp->PIO_mode) {
    drvp->DMA_mode = drvp->PIO_mode - 2;
   }
   after = tim_dma[drvp->DMA_mode];
   idedma_ctl |= (0x20 << (drive));
  } else {
   after = tim_pio[drvp->PIO_mode];
  }
  pci_conf_write(sc->sc_pc, sc->sc_tag,
      (0x40 + ((drive) * 4) + ((chp->channel) * 8)), after);
  ;
 }
end:
 if (idedma_ctl != 0) {
  bus_space_write_1(sc->sc_dma_iot, sc->sc_dma_ioh,
      (0x02 + 0x08 * (chp->channel)), idedma_ctl);
 }
 pciide_print_modes(cp);
}
int
hpt_pci_intr(void *arg)
{
 struct pciide_softc *sc = arg;
 struct pciide_channel *cp;
 struct channel_softc *wdc_cp;
 int rv = 0;
 int dmastat, i, crv;
 for (i = 0; i < sc->sc_wdcdev.nchannels; i++) {
  dmastat = bus_space_read_1(sc->sc_dma_iot, sc->sc_dma_ioh,
      (0x02 + 0x08 * (i)));
  if((dmastat & (0x01 | 0x04)) !=
      0x04)
      continue;
  cp = &sc->pciide_channels[i];
  wdc_cp = &cp->wdc_channel;
  crv = wdcintr(wdc_cp);
  if (crv == 0) {
   printf("%s:%d: bogus intr\n",
       sc->sc_wdcdev.sc_dev.dv_xname, i);
   bus_space_write_1(sc->sc_dma_iot, sc->sc_dma_ioh,
       (0x02 + 0x08 * (i)), dmastat);
  } else
   rv = 1;
 }
 return (rv);
}
u_int8_t
pdc268_config_read(struct channel_softc *chp, int index)
{
 struct pciide_channel *cp = (struct pciide_channel *)chp;
 struct pciide_softc *sc = (struct pciide_softc *)cp->wdc_channel.wdc;
 int channel = chp->channel;
 bus_space_write_1(sc->sc_dma_iot, sc->sc_dma_ioh,
     (0x01 + 0x08 * (channel)), index);
 return (bus_space_read_1(sc->sc_dma_iot, sc->sc_dma_ioh,
     (0x03 + 0x08 * (channel))));
}
void
pdc202xx_chip_map(struct pciide_softc *sc, struct pci_attach_args *pa)
{
 struct pciide_channel *cp;
 int channel;
 pcireg_t interface, st, mode;
 bus_size_t cmdsize, ctlsize;
 if (!((sc)->sc_pp->ide_product == 0x4d68 || (sc)->sc_pp->ide_product == 0x6268 || (sc)->sc_pp->ide_product == 0x4d69 || (sc)->sc_pp->ide_product == 0x6269 || (sc)->sc_pp->ide_product == 0x1275 || (sc)->sc_pp->ide_product == 0x5275 || (sc)->sc_pp->ide_product == 0x7275)) {
  st = pci_conf_read(sc->sc_pc, sc->sc_tag, 0x50);
  ;
 }
 if (!((sc)->sc_pp->ide_product == 0x4d68 || (sc)->sc_pp->ide_product == 0x6268 || (sc)->sc_pp->ide_product == 0x4d69 || (sc)->sc_pp->ide_product == 0x6269 || (sc)->sc_pp->ide_product == 0x1275 || (sc)->sc_pp->ide_product == 0x5275 || (sc)->sc_pp->ide_product == 0x7275))
  st &= ~0x0001;
 interface = (0x02 << (2 * (0))) | (0x02 << (2 * (1)));
 if (((sc)->sc_pp->ide_product == 0x4d68 || (sc)->sc_pp->ide_product == 0x6268 || (sc)->sc_pp->ide_product == 0x4d69 || (sc)->sc_pp->ide_product == 0x6269 || (sc)->sc_pp->ide_product == 0x1275 || (sc)->sc_pp->ide_product == 0x5275 || (sc)->sc_pp->ide_product == 0x7275) || (st & 0x0080))
  interface |= (0x01 << (2 * (0))) | (0x01 << (2 * (1)));
 printf(": DMA");
 pciide_mapreg_dma(sc, pa);
 sc->sc_wdcdev.cap = 0x0001 | 0x0002 |
     0x0004;
 if (sc->sc_pp->ide_product == 0x4d33 ||
     ((sc)->sc_pp->ide_product == 0x4d38 || (sc)->sc_pp->ide_product == 0x0d30 || (sc)->sc_pp->ide_product == 0x4d30))
  sc->sc_wdcdev.cap |= 0x1000;
 if (sc->sc_dma_ok) {
  sc->sc_wdcdev.cap |= 0x0008 | 0x0010;
  sc->sc_wdcdev.cap |= 0x0400;
  sc->sc_wdcdev.irqack = pciide_irqack;
 }
 sc->sc_wdcdev.PIO_cap = 4;
 sc->sc_wdcdev.DMA_cap = 2;
 if (((sc)->sc_pp->ide_product == 0x4d69 || (sc)->sc_pp->ide_product == 0x6269 || (sc)->sc_pp->ide_product == 0x1275 || (sc)->sc_pp->ide_product == 0x5275 || (sc)->sc_pp->ide_product == 0x7275))
  sc->sc_wdcdev.UDMA_cap = 6;
 else if (((sc)->sc_pp->ide_product == 0x0d30 || (sc)->sc_pp->ide_product == 0x4d30 || (sc)->sc_pp->ide_product == 0x4d68 || (sc)->sc_pp->ide_product == 0x6268 || (sc)->sc_pp->ide_product == 0x4d69 || (sc)->sc_pp->ide_product == 0x6269 || (sc)->sc_pp->ide_product == 0x1275 || (sc)->sc_pp->ide_product == 0x5275 || (sc)->sc_pp->ide_product == 0x7275))
  sc->sc_wdcdev.UDMA_cap = 5;
 else if (((sc)->sc_pp->ide_product == 0x4d38 || (sc)->sc_pp->ide_product == 0x0d30 || (sc)->sc_pp->ide_product == 0x4d30))
  sc->sc_wdcdev.UDMA_cap = 4;
 else
  sc->sc_wdcdev.UDMA_cap = 2;
 sc->sc_wdcdev.set_modes = ((sc)->sc_pp->ide_product == 0x4d68 || (sc)->sc_pp->ide_product == 0x6268 || (sc)->sc_pp->ide_product == 0x4d69 || (sc)->sc_pp->ide_product == 0x6269 || (sc)->sc_pp->ide_product == 0x1275 || (sc)->sc_pp->ide_product == 0x5275 || (sc)->sc_pp->ide_product == 0x7275) ?
     pdc20268_setup_channel : pdc202xx_setup_channel;
 sc->sc_wdcdev.channels = sc->wdc_chanarray;
 sc->sc_wdcdev.nchannels = 2;
 if (((sc)->sc_pp->ide_product == 0x4d38 || (sc)->sc_pp->ide_product == 0x0d30 || (sc)->sc_pp->ide_product == 0x4d30)) {
  sc->sc_wdcdev.dma_start = pdc20262_dma_start;
  sc->sc_wdcdev.dma_finish = pdc20262_dma_finish;
 }
 pciide_print_channels(sc->sc_wdcdev.nchannels, interface);
 if (!((sc)->sc_pp->ide_product == 0x4d68 || (sc)->sc_pp->ide_product == 0x6268 || (sc)->sc_pp->ide_product == 0x4d69 || (sc)->sc_pp->ide_product == 0x6269 || (sc)->sc_pp->ide_product == 0x1275 || (sc)->sc_pp->ide_product == 0x5275 || (sc)->sc_pp->ide_product == 0x7275)) {
  mode = 0;
  mode = (((mode) & 0xfffffff0) | ((pdc2xx_pa[0]) & 0xf));
  mode = (((mode) & 0xffffe0ff) | (((pdc2xx_pb[0]) & 0x1f) << 8));
  mode = (((mode) & 0xffff1fff) | (((pdc2xx_dma_mb[0]) & 0x7) << 13));
  mode = (((mode) & 0xfff0ffff) | (((pdc2xx_dma_mc[0]) & 0xf) << 16));
  for (channel = 0;
       channel < sc->sc_wdcdev.nchannels;
       channel++) {
   ;
   pci_conf_write(sc->sc_pc, sc->sc_tag,
       (0x60 + 4 * (0) + 8 * (channel)), mode | 0x00400000);
   ;
   pci_conf_write(sc->sc_pc, sc->sc_tag,
       (0x60 + 4 * (1) + 8 * (channel)), mode);
  }
  mode = 0x01000000;
  if (((sc)->sc_pp->ide_product == 0x4d38 || (sc)->sc_pp->ide_product == 0x0d30 || (sc)->sc_pp->ide_product == 0x4d30)) {
   mode = (((mode) & 0xffffff00) | ((0x20) & 0xff));
  } else {
   mode = (((mode) & 0xffffff00) | ((0x1) & 0xff));
  }
  mode = (((mode) & 0xfff0ffff) | (((0x3) & 0xf) << 16));
  mode = (((mode) & 0xff0fffff) | (((0x1) & 0xf) << 20));
  ;
  bus_space_write_4(sc->sc_dma_iot, sc->sc_dma_ioh,
      0x1c, mode);
  mode =
      bus_space_read_1(sc->sc_dma_iot, sc->sc_dma_ioh, 0x1a);
  ;
  bus_space_write_1(sc->sc_dma_iot, sc->sc_dma_ioh, 0x1a,
      mode | 0x1);
  mode =
      bus_space_read_1(sc->sc_dma_iot, sc->sc_dma_ioh, 0x1b);
  ;
  bus_space_write_1(sc->sc_dma_iot, sc->sc_dma_ioh, 0x1b,
      mode | 0x1);
 }
 for (channel = 0; channel < sc->sc_wdcdev.nchannels; channel++) {
  cp = &sc->pciide_channels[channel];
  if (pciide_chansetup(sc, channel, interface) == 0)
   continue;
  if (!((sc)->sc_pp->ide_product == 0x4d68 || (sc)->sc_pp->ide_product == 0x6268 || (sc)->sc_pp->ide_product == 0x4d69 || (sc)->sc_pp->ide_product == 0x6269 || (sc)->sc_pp->ide_product == 0x1275 || (sc)->sc_pp->ide_product == 0x5275 || (sc)->sc_pp->ide_product == 0x7275) && (st & (((sc)->sc_pp->ide_product == 0x4d38 || (sc)->sc_pp->ide_product == 0x0d30 || (sc)->sc_pp->ide_product == 0x4d30) ?
      (0x1000 << (channel)):(0x0002 << (channel)))) == 0) {
   printf("%s: %s ignored (disabled)\n",
       sc->sc_wdcdev.sc_dev.dv_xname, cp->name);
   cp->hw_ok = 0;
   continue;
  }
  pciide_map_compat_intr(pa, cp, channel, interface);
  if (cp->hw_ok == 0)
   continue;
  if (((sc)->sc_pp->ide_product == 0x0d30 || (sc)->sc_pp->ide_product == 0x4d30 || (sc)->sc_pp->ide_product == 0x4d68 || (sc)->sc_pp->ide_product == 0x6268 || (sc)->sc_pp->ide_product == 0x4d69 || (sc)->sc_pp->ide_product == 0x6269 || (sc)->sc_pp->ide_product == 0x1275 || (sc)->sc_pp->ide_product == 0x5275 || (sc)->sc_pp->ide_product == 0x7275))
   pciide_mapchan(pa, cp, interface, &cmdsize, &ctlsize,
       pdc20265_pci_intr);
  else
   pciide_mapchan(pa, cp, interface, &cmdsize, &ctlsize,
       pdc202xx_pci_intr);
  if (cp->hw_ok == 0) {
   pciide_unmap_compat_intr(pa, cp, channel, interface);
   continue;
  }
  if (!((sc)->sc_pp->ide_product == 0x4d68 || (sc)->sc_pp->ide_product == 0x6268 || (sc)->sc_pp->ide_product == 0x4d69 || (sc)->sc_pp->ide_product == 0x6269 || (sc)->sc_pp->ide_product == 0x1275 || (sc)->sc_pp->ide_product == 0x5275 || (sc)->sc_pp->ide_product == 0x7275) && pciide_chan_candisable(cp)) {
   st &= ~(((sc)->sc_pp->ide_product == 0x4d38 || (sc)->sc_pp->ide_product == 0x0d30 || (sc)->sc_pp->ide_product == 0x4d30) ?
       (0x1000 << (channel)):(0x0002 << (channel)));
   pciide_unmap_compat_intr(pa, cp, channel, interface);
  }
  if (((sc)->sc_pp->ide_product == 0x4d68 || (sc)->sc_pp->ide_product == 0x6268 || (sc)->sc_pp->ide_product == 0x4d69 || (sc)->sc_pp->ide_product == 0x6269 || (sc)->sc_pp->ide_product == 0x1275 || (sc)->sc_pp->ide_product == 0x5275 || (sc)->sc_pp->ide_product == 0x7275))
   pdc20268_setup_channel(&cp->wdc_channel);
  else
   pdc202xx_setup_channel(&cp->wdc_channel);
 }
 if (!((sc)->sc_pp->ide_product == 0x4d68 || (sc)->sc_pp->ide_product == 0x6268 || (sc)->sc_pp->ide_product == 0x4d69 || (sc)->sc_pp->ide_product == 0x6269 || (sc)->sc_pp->ide_product == 0x1275 || (sc)->sc_pp->ide_product == 0x5275 || (sc)->sc_pp->ide_product == 0x7275)) {
  ;
  pci_conf_write(sc->sc_pc, sc->sc_tag, 0x50, st);
 }
 return;
}
void
pdc202xx_setup_channel(struct channel_softc *chp)
{
 struct ata_drive_datas *drvp;
 int drive;
 pcireg_t mode, st;
 u_int32_t idedma_ctl, scr, atapi;
 struct pciide_channel *cp = (struct pciide_channel *)chp;
 struct pciide_softc *sc = (struct pciide_softc *)cp->wdc_channel.wdc;
 int channel = chp->channel;
 pciide_channel_dma_setup(cp);
 idedma_ctl = 0;
 ;
 if (((sc)->sc_pp->ide_product == 0x4d38 || (sc)->sc_pp->ide_product == 0x0d30 || (sc)->sc_pp->ide_product == 0x4d30)) {
  scr = bus_space_read_1(sc->sc_dma_iot, sc->sc_dma_ioh,
      0x11);
  st = pci_conf_read(sc->sc_pc, sc->sc_tag, 0x50);
  if ((st & (0x0400 << (channel))) != 0 &&
      ((chp->ch_drive[0].drive_flags & 0x0020 &&
      chp->ch_drive[0].UDMA_mode > 2) ||
      (chp->ch_drive[1].drive_flags & 0x0020 &&
      chp->ch_drive[1].UDMA_mode > 2))) {
   ;
   if (chp->ch_drive[0].UDMA_mode > 2)
    chp->ch_drive[0].UDMA_mode = 2;
   if (chp->ch_drive[1].UDMA_mode > 2)
    chp->ch_drive[1].UDMA_mode = 2;
  }
  if ((chp->ch_drive[0].drive_flags & 0x0020 &&
      chp->ch_drive[0].UDMA_mode <= 2) ||
      (chp->ch_drive[1].drive_flags & 0x0020 &&
      chp->ch_drive[1].UDMA_mode <= 2)) {
   if (chp->ch_drive[0].UDMA_mode > 2)
    chp->ch_drive[0].UDMA_mode = 2;
   if (chp->ch_drive[1].UDMA_mode > 2)
    chp->ch_drive[1].UDMA_mode = 2;
  }
  if ((chp->ch_drive[0].drive_flags & 0x0020 &&
      chp->ch_drive[0].UDMA_mode > 2) ||
      (chp->ch_drive[1].drive_flags & 0x0020 &&
      chp->ch_drive[1].UDMA_mode > 2))
   scr |= (0x2 << ((channel) *2));
  else
   scr &= ~(0x2 << ((channel) *2));
  bus_space_write_1(sc->sc_dma_iot, sc->sc_dma_ioh,
      0x11, scr);
  ;
  if (chp->ch_drive[0].drive_flags & 0x0002 ||
      chp->ch_drive[1].drive_flags & 0x0002) {
   if (((chp->ch_drive[0].drive_flags & 0x0020) &&
       !(chp->ch_drive[1].drive_flags & 0x0020) &&
       (chp->ch_drive[1].drive_flags & 0x0010)) ||
       ((chp->ch_drive[1].drive_flags & 0x0020) &&
       !(chp->ch_drive[0].drive_flags & 0x0020) &&
       (chp->ch_drive[0].drive_flags & 0x0010)))
    atapi = 0;
   else
    atapi = 0x00004000;
   bus_space_write_4(sc->sc_dma_iot, sc->sc_dma_ioh,
       (0x20 + (4 * (channel))), atapi);
  }
 }
 for (drive = 0; drive < 2; drive++) {
  drvp = &chp->ch_drive[drive];
  if ((drvp->drive_flags & (0x0001|0x0002|0x0004)) == 0)
   continue;
  mode = 0;
  if (drvp->drive_flags & 0x0020) {
   drvp->drive_flags &= ~0x0010;
   mode = (((mode) & 0xffff1fff) | (((pdc2xx_udma_mb[drvp->UDMA_mode]) & 0x7) << 13));
   mode = (((mode) & 0xfff0ffff) | (((pdc2xx_udma_mc[drvp->UDMA_mode]) & 0xf) << 16));
   idedma_ctl |= (0x20 << (drive));
  } else if (drvp->drive_flags & 0x0010) {
   mode = (((mode) & 0xffff1fff) | (((pdc2xx_dma_mb[drvp->DMA_mode]) & 0x7) << 13));
   mode = (((mode) & 0xfff0ffff) | (((pdc2xx_dma_mc[drvp->DMA_mode]) & 0xf) << 16));
   idedma_ctl |= (0x20 << (drive));
  } else {
   mode = (((mode) & 0xffff1fff) | (((pdc2xx_dma_mb[0]) & 0x7) << 13));
   mode = (((mode) & 0xfff0ffff) | (((pdc2xx_dma_mc[0]) & 0xf) << 16));
  }
  mode = (((mode) & 0xfffffff0) | ((pdc2xx_pa[drvp->PIO_mode]) & 0xf));
  mode = (((mode) & 0xffffe0ff) | (((pdc2xx_pb[drvp->PIO_mode]) & 0x1f) << 8));
  if (drvp->drive_flags & 0x0001)
   mode |= 0x00000010;
  mode |= 0x00000080 | 0x00000040;
  if (drvp->PIO_mode >= 3) {
   mode |= 0x00000020;
   if (drive == 0)
    mode |= 0x00400000;
  }
  ;
      pci_conf_write(sc->sc_pc, sc->sc_tag,
      (0x60 + 4 * (drive) + 8 * (chp->channel)), mode);
 }
 if (idedma_ctl != 0) {
  bus_space_write_1(sc->sc_dma_iot, sc->sc_dma_ioh,
      (0x02 + 0x08 * (channel)), idedma_ctl);
 }
 pciide_print_modes(cp);
}
void
pdc20268_setup_channel(struct channel_softc *chp)
{
 struct ata_drive_datas *drvp;
 int drive, cable;
 u_int32_t idedma_ctl;
 struct pciide_channel *cp = (struct pciide_channel *)chp;
 struct pciide_softc *sc = (struct pciide_softc *)cp->wdc_channel.wdc;
 int channel = chp->channel;
 cable = pdc268_config_read(chp, 0x0b) & 0x04;
 pciide_channel_dma_setup(cp);
 idedma_ctl = 0;
 for (drive = 0; drive < 2; drive++) {
  drvp = &chp->ch_drive[drive];
  if ((drvp->drive_flags & (0x0001|0x0002|0x0004)) == 0)
   continue;
  if (drvp->drive_flags & 0x0020) {
   drvp->drive_flags &= ~0x0010;
   idedma_ctl |= (0x20 << (drive));
   if (cable && drvp->UDMA_mode > 2) {
    ;
    drvp->UDMA_mode = 2;
   }
  } else if (drvp->drive_flags & 0x0010) {
   idedma_ctl |= (0x20 << (drive));
  }
 }
 if (idedma_ctl != 0) {
  bus_space_write_1(sc->sc_dma_iot, sc->sc_dma_ioh,
      (0x02 + 0x08 * (channel)), idedma_ctl);
 }
 pciide_print_modes(cp);
}
int
pdc202xx_pci_intr(void *arg)
{
 struct pciide_softc *sc = arg;
 struct pciide_channel *cp;
 struct channel_softc *wdc_cp;
 int i, rv, crv;
 u_int32_t scr;
 rv = 0;
 scr = bus_space_read_4(sc->sc_dma_iot, sc->sc_dma_ioh, 0x1c);
 for (i = 0; i < sc->sc_wdcdev.nchannels; i++) {
  cp = &sc->pciide_channels[i];
  wdc_cp = &cp->wdc_channel;
  if (cp->compat)
   continue;
  if (scr & (0x00000400 << (4 * i))) {
   crv = wdcintr(wdc_cp);
   if (crv == 0)
    printf("%s:%d: bogus intr (reg 0x%x)\n",
        sc->sc_wdcdev.sc_dev.dv_xname, i, scr);
   else
    rv = 1;
  }
 }
 return (rv);
}
int
pdc20265_pci_intr(void *arg)
{
 struct pciide_softc *sc = arg;
 struct pciide_channel *cp;
 struct channel_softc *wdc_cp;
 int i, rv, crv;
 u_int32_t dmastat;
 rv = 0;
 for (i = 0; i < sc->sc_wdcdev.nchannels; i++) {
  cp = &sc->pciide_channels[i];
  wdc_cp = &cp->wdc_channel;
  if (cp->compat)
   continue;
  if (cp->hw_ok && ((sc)->sc_pp->ide_product == 0x4d68 || (sc)->sc_pp->ide_product == 0x6268 || (sc)->sc_pp->ide_product == 0x4d69 || (sc)->sc_pp->ide_product == 0x6269 || (sc)->sc_pp->ide_product == 0x1275 || (sc)->sc_pp->ide_product == 0x5275 || (sc)->sc_pp->ide_product == 0x7275)) {
   if ((pdc268_config_read(wdc_cp,
       0x0b) & 0x20) == 0)
    continue;
  }
  dmastat = bus_space_read_1(sc->sc_dma_iot,
      sc->sc_dma_ioh, (0x02 + 0x08 * (i)));
  if ((dmastat & 0x04) == 0)
   continue;
  crv = wdcintr(wdc_cp);
  if (crv == 0)
   printf("%s:%d: bogus intr\n",
       sc->sc_wdcdev.sc_dev.dv_xname, i);
  else
   rv = 1;
 }
 return (rv);
}
void
pdc20262_dma_start(void *v, int channel, int drive)
{
 struct pciide_softc *sc = v;
 struct pciide_dma_maps *dma_maps =
     &sc->pciide_channels[channel].dma_maps[drive];
 u_int8_t clock;
 u_int32_t count;
 if (dma_maps->dma_flags & 0x04) {
  clock = bus_space_read_1(sc->sc_dma_iot, sc->sc_dma_ioh,
      0x11);
  bus_space_write_1(sc->sc_dma_iot, sc->sc_dma_ioh,
      0x11, clock | (0x2 << ((channel) *2)));
  count = dma_maps->dmamap_xfer->dm_mapsize >> 1;
  count |= dma_maps->dma_flags & 0x01 ?
      0x05000000 : 0x06000000;
  bus_space_write_4(sc->sc_dma_iot, sc->sc_dma_ioh,
      (0x20 + (4 * (channel))), count);
 }
 pciide_dma_start(v, channel, drive);
}
int
pdc20262_dma_finish(void *v, int channel, int drive, int force)
{
 struct pciide_softc *sc = v;
 struct pciide_dma_maps *dma_maps =
     &sc->pciide_channels[channel].dma_maps[drive];
  u_int8_t clock;
 if (dma_maps->dma_flags & 0x04) {
  clock = bus_space_read_1(sc->sc_dma_iot, sc->sc_dma_ioh,
      0x11);
  bus_space_write_1(sc->sc_dma_iot, sc->sc_dma_ioh,
      0x11, clock & ~(0x2 << ((channel) *2)));
  bus_space_write_4(sc->sc_dma_iot, sc->sc_dma_ioh,
      (0x20 + (4 * (channel))), 0);
 }
 return (pciide_dma_finish(v, channel, drive, force));
}
void
pdcsata_chip_map(struct pciide_softc *sc, struct pci_attach_args *pa)
{
 struct pciide_channel *cp;
 struct channel_softc *wdc_cp;
 struct pciide_pdcsata *ps;
 int channel, i;
 bus_size_t dmasize;
 pci_intr_handle_t intrhandle;
 const char *intrstr;
 sc->sc_cookielen = sizeof(*ps);
 sc->sc_cookie = malloc(sc->sc_cookielen, 2, 0x0002 | 0x0008);
 ps = sc->sc_cookie;
 if (pci_intr_map(pa, &intrhandle) != 0) {
  printf(": couldn't map interrupt\n");
  return;
 }
 intrstr = pci_intr_string(pa->pa_pc, intrhandle);
 switch (sc->sc_pp->ide_product) {
 case 0x3318:
 case 0x3319:
 case 0x3371:
 case 0x3375:
 case 0x3376:
 case 0x3377:
 case 0x3373:
 case 0x3372:
 default:
  sc->sc_pci_ih = pci_intr_establish(pa->pa_pc,
          intrhandle, 5, pdc203xx_pci_intr, sc,
          sc->sc_wdcdev.sc_dev.dv_xname);
  break;
 case 0x3d18:
 case 0x3519:
 case 0x3d17:
 case 0x3515:
 case 0x3577:
 case 0x3571:
 case 0x3d75:
 case 0x3574:
 case 0x3570:
 case 0x3d73:
  sc->sc_pci_ih = pci_intr_establish(pa->pa_pc,
          intrhandle, 5, pdc205xx_pci_intr, sc,
          sc->sc_wdcdev.sc_dev.dv_xname);
  break;
 }
 if (sc->sc_pci_ih == ((void *)0)) {
  printf(": couldn't establish native-PCI interrupt");
  if (intrstr != ((void *)0))
   printf(" at %s", intrstr);
  printf("\n");
  return;
 }
 sc->sc_dma_ok = (pci_mapreg_map(pa, 0x20,
     0x00000000, 0, &sc->sc_dma_iot,
     &sc->sc_dma_ioh, ((void *)0), &dmasize, 0) == 0);
 if (!sc->sc_dma_ok) {
  printf(": couldn't map bus-master DMA registers\n");
  pci_intr_disestablish(pa->pa_pc, sc->sc_pci_ih);
  return;
 }
 sc->sc_dmat = pa->pa_dmat;
 if (pci_mapreg_map(pa, 0x1c,
     0x00000000, 0, &ps->ba5_st,
     &ps->ba5_sh, ((void *)0), ((void *)0), 0) != 0) {
  printf(": couldn't map IDE registers\n");
  bus_space_unmap(sc->sc_dma_iot, sc->sc_dma_ioh, dmasize);
  pci_intr_disestablish(pa->pa_pc, sc->sc_pci_ih);
  return;
 }
 printf(": DMA\n");
 sc->sc_wdcdev.cap = 0x0001;
 sc->sc_wdcdev.cap |= 0x0008 | 0x0010;
 sc->sc_wdcdev.cap |= 0x0400;
 sc->sc_wdcdev.irqack = pdc203xx_irqack;
 sc->sc_wdcdev.PIO_cap = 4;
 sc->sc_wdcdev.DMA_cap = 2;
 sc->sc_wdcdev.UDMA_cap = 6;
 sc->sc_wdcdev.set_modes = pdc203xx_setup_channel;
 sc->sc_wdcdev.channels = sc->wdc_chanarray;
 switch (sc->sc_pp->ide_product) {
 case 0x3318:
 case 0x3319:
 case 0x3371:
 case 0x3375:
 case 0x3376:
 case 0x3377:
 case 0x3373:
 case 0x3372:
 default:
  bus_space_write_4(ps->ba5_st, ps->ba5_sh, 0x06c, 0x00ff0033);
  sc->sc_wdcdev.nchannels =
      (bus_space_read_4(ps->ba5_st, ps->ba5_sh, 0x48) & 0x02) ?
      4 : 3;
  break;
 case 0x3d18:
 case 0x3519:
 case 0x3d17:
 case 0x3515:
 case 0x3577:
 case 0x3571:
  bus_space_write_4(ps->ba5_st, ps->ba5_sh, 0x60, 0x00ff00ff);
  sc->sc_wdcdev.nchannels = 4;
  sc->sc_wdcdev.reset = pdc205xx_do_reset;
  sc->sc_wdcdev.drv_probe = pdc205xx_drv_probe;
  break;
 case 0x3d75:
 case 0x3574:
 case 0x3570:
 case 0x3d73:
  bus_space_write_4(ps->ba5_st, ps->ba5_sh, 0x60, 0x00ff00ff);
  sc->sc_wdcdev.nchannels = 3;
  sc->sc_wdcdev.reset = pdc205xx_do_reset;
  sc->sc_wdcdev.drv_probe = pdc205xx_drv_probe;
  break;
 }
 sc->sc_wdcdev.dma_arg = sc;
 sc->sc_wdcdev.dma_init = pciide_dma_init;
 sc->sc_wdcdev.dma_start = pdc203xx_dma_start;
 sc->sc_wdcdev.dma_finish = pdc203xx_dma_finish;
 for (channel = 0; channel < sc->sc_wdcdev.nchannels;
      channel++) {
  cp = &sc->pciide_channels[channel];
  sc->wdc_chanarray[channel] = &cp->wdc_channel;
  cp->ih = sc->sc_pci_ih;
  cp->name = ((void *)0);
  cp->wdc_channel.channel = channel;
  cp->wdc_channel.wdc = &sc->sc_wdcdev;
  cp->wdc_channel.ch_queue = wdc_alloc_queue();
  if (cp->wdc_channel.ch_queue == ((void *)0)) {
   printf("%s: channel %d: "
       "cannot allocate channel queue\n",
   sc->sc_wdcdev.sc_dev.dv_xname, channel);
   continue;
  }
  wdc_cp = &cp->wdc_channel;
  ps->regs[channel].ctl_iot = ps->ba5_st;
  ps->regs[channel].cmd_iot = ps->ba5_st;
  if (bus_space_subregion(ps->ba5_st, ps->ba5_sh,
      0x0238 + (channel << 7), 1,
      &ps->regs[channel].ctl_ioh) != 0) {
   printf("%s: couldn't map channel %d ctl regs\n",
       sc->sc_wdcdev.sc_dev.dv_xname,
       channel);
   continue;
  }
  for (i = 0; i < 8; i++) {
   if (bus_space_subregion(ps->ba5_st, ps->ba5_sh,
       0x0200 + (i << 2) + (channel << 7), i == 0 ? 4 : 1,
       &ps->regs[channel].cmd_iohs[i]) != 0) {
    printf("%s: couldn't map channel %d cmd "
        "regs\n",
        sc->sc_wdcdev.sc_dev.dv_xname,
        channel);
    goto loop_end;
   }
  }
  ps->regs[channel].cmd_iohs[wdr_status & 7] =
      ps->regs[channel].cmd_iohs[wdr_command & 7];
  ps->regs[channel].cmd_iohs[wdr_features & 7] =
      ps->regs[channel].cmd_iohs[wdr_error & 7];
  wdc_cp->data32iot = wdc_cp->cmd_iot =
      ps->regs[channel].cmd_iot;
  wdc_cp->data32ioh = wdc_cp->cmd_ioh =
      ps->regs[channel].cmd_iohs[0];
  wdc_cp->_vtbl = &wdc_pdc203xx_vtbl;
  if (bus_space_subregion(ps->ba5_st, ps->ba5_sh,
      0x260 + (channel << 7), 1,
      &ps->regs[channel].dma_iohs[(0x00 + 0x08 * (0))]) != 0) {
   printf("%s channel %d: can't subregion DMA "
       "registers\n",
       sc->sc_wdcdev.sc_dev.dv_xname, channel);
   continue;
  }
  if (bus_space_subregion(ps->ba5_st, ps->ba5_sh,
      0x244 + (channel << 7), 4,
      &ps->regs[channel].dma_iohs[(0x04 + 0x08 * (0))]) != 0) {
   printf("%s channel %d: can't subregion DMA "
       "registers\n",
       sc->sc_wdcdev.sc_dev.dv_xname, channel);
   continue;
  }
  wdcattach(wdc_cp);
  bus_space_write_4(sc->sc_dma_iot,
      ps->regs[channel].dma_iohs[(0x00 + 0x08 * (0))], 0,
      (bus_space_read_4(sc->sc_dma_iot,
   ps->regs[channel].dma_iohs[(0x00 + 0x08 * (0))],
   0) & ~0x00003f9f) | (channel + 1));
  bus_space_write_4(ps->ba5_st, ps->ba5_sh,
      (channel + 1) << 2, 0x00000001);
  pdc203xx_setup_channel(&cp->wdc_channel);
loop_end: ;
 }
 printf("%s: using %s for native-PCI interrupt\n",
     sc->sc_wdcdev.sc_dev.dv_xname,
     intrstr ? intrstr : "unknown interrupt");
}
void
pdc203xx_setup_channel(struct channel_softc *chp)
{
 struct ata_drive_datas *drvp;
 struct pciide_channel *cp = (struct pciide_channel *)chp;
 int drive, s;
 pciide_channel_dma_setup(cp);
 for (drive = 0; drive < 2; drive++) {
  drvp = &chp->ch_drive[drive];
  if ((drvp->drive_flags & (0x0001|0x0002|0x0004)) == 0)
   continue;
  if (drvp->drive_flags & 0x0020) {
   s = _splraise(5);
   drvp->drive_flags &= ~0x0010;
   _splx(s);
  }
 }
 pciide_print_modes(cp);
}
int
pdc203xx_pci_intr(void *arg)
{
 struct pciide_softc *sc = arg;
 struct pciide_channel *cp;
 struct channel_softc *wdc_cp;
 struct pciide_pdcsata *ps = sc->sc_cookie;
 int i, rv, crv;
 u_int32_t scr;
 rv = 0;
 scr = bus_space_read_4(ps->ba5_st, ps->ba5_sh, 0x00040);
 for (i = 0; i < sc->sc_wdcdev.nchannels; i++) {
  cp = &sc->pciide_channels[i];
  wdc_cp = &cp->wdc_channel;
  if (scr & (1 << (i + 1))) {
   crv = wdcintr(wdc_cp);
   if (crv == 0) {
    printf("%s:%d: bogus intr (reg 0x%x)\n",
        sc->sc_wdcdev.sc_dev.dv_xname,
        i, scr);
   } else
    rv = 1;
  }
 }
 return (rv);
}
int
pdc205xx_pci_intr(void *arg)
{
 struct pciide_softc *sc = arg;
 struct pciide_channel *cp;
 struct channel_softc *wdc_cp;
 struct pciide_pdcsata *ps = sc->sc_cookie;
 int i, rv, crv;
 u_int32_t scr, status;
 rv = 0;
 scr = bus_space_read_4(ps->ba5_st, ps->ba5_sh, 0x40);
 bus_space_write_4(ps->ba5_st, ps->ba5_sh, 0x40, scr & 0x0000ffff);
 status = bus_space_read_4(ps->ba5_st, ps->ba5_sh, 0x60);
 bus_space_write_4(ps->ba5_st, ps->ba5_sh, 0x60, status & 0x000000ff);
 for (i = 0; i < sc->sc_wdcdev.nchannels; i++) {
  cp = &sc->pciide_channels[i];
  wdc_cp = &cp->wdc_channel;
  if (scr & (1 << (i + 1))) {
   crv = wdcintr(wdc_cp);
   if (crv == 0) {
    printf("%s:%d: bogus intr (reg 0x%x)\n",
        sc->sc_wdcdev.sc_dev.dv_xname,
        i, scr);
   } else
    rv = 1;
  }
 }
 return rv;
}
void
pdc203xx_irqack(struct channel_softc *chp)
{
 struct pciide_channel *cp = (struct pciide_channel *)chp;
 struct pciide_softc *sc = (struct pciide_softc *)cp->wdc_channel.wdc;
 struct pciide_pdcsata *ps = sc->sc_cookie;
 int chan = chp->channel;
 bus_space_write_4(sc->sc_dma_iot,
     ps->regs[chan].dma_iohs[(0x00 + 0x08 * (0))], 0,
     (bus_space_read_4(sc->sc_dma_iot,
  ps->regs[chan].dma_iohs[(0x00 + 0x08 * (0))],
  0) & ~0x00003f9f) | (chan + 1));
 bus_space_write_4(ps->ba5_st, ps->ba5_sh,
     (chan + 1) << 2, 0x00000001);
}
void
pdc203xx_dma_start(void *v, int channel, int drive)
{
 struct pciide_softc *sc = v;
 struct pciide_channel *cp = &sc->pciide_channels[channel];
 struct pciide_dma_maps *dma_maps = &cp->dma_maps[drive];
 struct pciide_pdcsata *ps = sc->sc_cookie;
 bus_space_write_4(sc->sc_dma_iot,
     ps->regs[channel].dma_iohs[(0x04 + 0x08 * (0))], 0,
     dma_maps->dmamap_table->dm_segs[0].ds_addr);
 bus_space_write_4(sc->sc_dma_iot,
     ps->regs[channel].dma_iohs[(0x00 + 0x08 * (0))], 0,
     (bus_space_read_4(sc->sc_dma_iot,
     ps->regs[channel].dma_iohs[(0x00 + 0x08 * (0))],
     0) & ~0xc0) | ((dma_maps->dma_flags & 0x01) ? 0x80 : 0xc0));
}
int
pdc203xx_dma_finish(void *v, int channel, int drive, int force)
{
 struct pciide_softc *sc = v;
 struct pciide_channel *cp = &sc->pciide_channels[channel];
 struct pciide_dma_maps *dma_maps = &cp->dma_maps[drive];
 struct pciide_pdcsata *ps = sc->sc_cookie;
 bus_space_write_4(sc->sc_dma_iot,
     ps->regs[channel].dma_iohs[(0x00 + 0x08 * (0))], 0,
     (bus_space_read_4(sc->sc_dma_iot,
     ps->regs[channel].dma_iohs[(0x00 + 0x08 * (0))],
     0) & ~0x80));
 bus_dmamap_sync(sc->sc_dmat, dma_maps->dmamap_xfer, 0,
     dma_maps->dmamap_xfer->dm_mapsize,
     (dma_maps->dma_flags & 0x01) ?
     0x02 : 0x08);
 bus_dmamap_unload(sc->sc_dmat, dma_maps->dmamap_xfer);
 return (0);
}
u_int8_t
pdc203xx_read_reg(struct channel_softc *chp, enum wdc_regs reg64)
{
 struct pciide_channel *cp = (struct pciide_channel *)chp;
 struct pciide_softc *sc = (struct pciide_softc *)cp->wdc_channel.wdc;
 struct pciide_pdcsata *ps = sc->sc_cookie;
 u_int8_t val;
 if (reg64 & 8) {
  return (bus_space_read_1(ps->regs[chp->channel].ctl_iot,
      ps->regs[chp->channel].ctl_ioh, reg64 & 7));
 } else {
  val = bus_space_read_1(ps->regs[chp->channel].cmd_iot,
      ps->regs[chp->channel].cmd_iohs[reg64 & 7], 0);
  return (val);
 }
}
void
pdc203xx_write_reg(struct channel_softc *chp, enum wdc_regs reg64, u_int8_t val)
{
 struct pciide_channel *cp = (struct pciide_channel *)chp;
 struct pciide_softc *sc = (struct pciide_softc *)cp->wdc_channel.wdc;
 struct pciide_pdcsata *ps = sc->sc_cookie;
 if (reg64 & 8)
  bus_space_write_1(ps->regs[chp->channel].ctl_iot,
      ps->regs[chp->channel].ctl_ioh, reg64 & 7, val);
 else
  bus_space_write_1(ps->regs[chp->channel].cmd_iot,
      ps->regs[chp->channel].cmd_iohs[reg64 & 7],
      0, val);
}
void
pdc205xx_do_reset(struct channel_softc *chp)
{
 struct pciide_channel *cp = (struct pciide_channel *)chp;
 struct pciide_softc *sc = (struct pciide_softc *)cp->wdc_channel.wdc;
 struct pciide_pdcsata *ps = sc->sc_cookie;
 u_int32_t scontrol;
 wdc_do_reset(chp);
 scontrol = (0x1 << 0) | (0x0 << 4) | (0x3 << 8);
 bus_space_write_4((ps)->ba5_st, (ps)->ba5_sh, ((0x408)+((chp->channel)<<8)), scontrol);
 delay(50*1000);
 scontrol &= ~(0x1 << 0);
 bus_space_write_4((ps)->ba5_st, (ps)->ba5_sh, ((0x408)+((chp->channel)<<8)), scontrol);
 delay(50*1000);
}
void
pdc205xx_drv_probe(struct channel_softc *chp)
{
 struct pciide_channel *cp = (struct pciide_channel *)chp;
 struct pciide_softc *sc = (struct pciide_softc *)cp->wdc_channel.wdc;
 struct pciide_pdcsata *ps = sc->sc_cookie;
 bus_space_handle_t *iohs;
 u_int32_t scontrol, sstatus;
 u_int16_t scnt, sn, cl, ch;
 int s;
 bus_space_write_4((ps)->ba5_st, (ps)->ba5_sh, ((0x408)+((chp->channel)<<8)), 0);
 delay(50*1000);
 scontrol = (0x1 << 0) | (0x0 << 4) | (0x3 << 8);
 bus_space_write_4((ps)->ba5_st, (ps)->ba5_sh, ((0x408)+((chp->channel)<<8)), scontrol);
 delay(50*1000);
 scontrol &= ~(0x1 << 0);
 bus_space_write_4((ps)->ba5_st, (ps)->ba5_sh, ((0x408)+((chp->channel)<<8)), scontrol);
 delay(50*1000);
 sstatus = bus_space_read_4((ps)->ba5_st, (ps)->ba5_sh, ((0x400)+((chp->channel)<<8)));
 switch (sstatus & (0xf << 0)) {
 case (0x0 << 0):
  break;
 case (0x1 << 0):
  printf("%s: port %d: device connected, but "
      "communication not established\n",
      sc->sc_wdcdev.sc_dev.dv_xname, chp->channel);
  break;
 case (0x4 << 0):
  printf("%s: port %d: PHY offline\n",
      sc->sc_wdcdev.sc_dev.dv_xname, chp->channel);
  break;
 case (0x3 << 0):
  iohs = ps->regs[chp->channel].cmd_iohs;
  bus_space_write_1(chp->cmd_iot, iohs[wdr_sdh], 0,
      0xa0);
  delay(10);
  scnt = bus_space_read_2(chp->cmd_iot, iohs[wdr_seccnt], 0);
  sn = bus_space_read_2(chp->cmd_iot, iohs[wdr_sector], 0);
  cl = bus_space_read_2(chp->cmd_iot, iohs[wdr_cyl_lo], 0);
  ch = bus_space_read_2(chp->cmd_iot, iohs[wdr_cyl_hi], 0);
  s = _splraise(5);
  if (cl == 0x14 && ch == 0xeb)
   chp->ch_drive[0].drive_flags |= 0x0002;
  else
   chp->ch_drive[0].drive_flags |= 0x0001;
  _splx(s);
  break;
 default:
  printf("%s: port %d: unknown SStatus: 0x%08x\n",
      sc->sc_wdcdev.sc_dev.dv_xname, chp->channel, sstatus);
 }
}
void
serverworks_chip_map(struct pciide_softc *sc, struct pci_attach_args *pa)
{
 struct pciide_channel *cp;
 pcireg_t interface = (((pa->pa_class) >> 8) & 0xff);
 pcitag_t pcib_tag;
 int channel;
 bus_size_t cmdsize, ctlsize;
 printf(": DMA");
 pciide_mapreg_dma(sc, pa);
 printf("\n");
 sc->sc_wdcdev.cap = 0x0001 | 0x0002 |
     0x0004;
 if (sc->sc_dma_ok) {
  sc->sc_wdcdev.cap |= 0x0008 | 0x0010;
  sc->sc_wdcdev.cap |= 0x0400;
  sc->sc_wdcdev.irqack = pciide_irqack;
 }
 sc->sc_wdcdev.PIO_cap = 4;
 sc->sc_wdcdev.DMA_cap = 2;
 switch (sc->sc_pp->ide_product) {
 case 0x0211:
  sc->sc_wdcdev.UDMA_cap = 2;
  break;
 case 0x0212:
  if (sc->sc_rev < 0x92)
   sc->sc_wdcdev.UDMA_cap = 4;
  else
   sc->sc_wdcdev.UDMA_cap = 5;
  break;
 case 0x0217:
  sc->sc_wdcdev.UDMA_cap = 4;
  break;
 case 0x0213:
 case 0x0214:
  sc->sc_wdcdev.UDMA_cap = 5;
  break;
 }
 sc->sc_wdcdev.set_modes = serverworks_setup_channel;
 sc->sc_wdcdev.channels = sc->wdc_chanarray;
 sc->sc_wdcdev.nchannels =
     (sc->sc_pp->ide_product == 0x0217 ? 1 : 2);
 for (channel = 0; channel < sc->sc_wdcdev.nchannels; channel++) {
  cp = &sc->pciide_channels[channel];
  if (pciide_chansetup(sc, channel, interface) == 0)
   continue;
  pciide_mapchan(pa, cp, interface, &cmdsize, &ctlsize,
      serverworks_pci_intr);
  if (cp->hw_ok == 0)
   return;
  pciide_map_compat_intr(pa, cp, channel, interface);
  if (cp->hw_ok == 0)
   return;
  serverworks_setup_channel(&cp->wdc_channel);
 }
 pcib_tag = pci_make_tag(pa->pa_pc, pa->pa_bus, pa->pa_device, 0);
 pci_conf_write(pa->pa_pc, pcib_tag, 0x64,
     (pci_conf_read(pa->pa_pc, pcib_tag, 0x64) & ~0x2000) | 0x4000);
}
void
serverworks_setup_channel(struct channel_softc *chp)
{
 struct ata_drive_datas *drvp;
 struct pciide_channel *cp = (struct pciide_channel *)chp;
 struct pciide_softc *sc = (struct pciide_softc *)cp->wdc_channel.wdc;
 int channel = chp->channel;
 int drive, unit;
 u_int32_t pio_time, dma_time, pio_mode, udma_mode;
 u_int32_t idedma_ctl;
 static const u_int8_t pio_modes[5] = {0x5d, 0x47, 0x34, 0x22, 0x20};
 static const u_int8_t dma_modes[3] = {0x77, 0x21, 0x20};
 pciide_channel_dma_setup(cp);
 pio_time = pci_conf_read(sc->sc_pc, sc->sc_tag, 0x40);
 dma_time = pci_conf_read(sc->sc_pc, sc->sc_tag, 0x44);
 pio_mode = pci_conf_read(sc->sc_pc, sc->sc_tag, 0x48);
 udma_mode = pci_conf_read(sc->sc_pc, sc->sc_tag, 0x54);
 pio_time &= ~(0xffff << (16 * channel));
 dma_time &= ~(0xffff << (16 * channel));
 pio_mode &= ~(0xff << (8 * channel + 16));
 udma_mode &= ~(0xff << (8 * channel + 16));
 udma_mode &= ~(3 << (2 * channel));
 idedma_ctl = 0;
 for (drive = 0; drive < 2; drive++) {
  drvp = &chp->ch_drive[drive];
  if ((drvp->drive_flags & (0x0001|0x0002|0x0004)) == 0)
   continue;
  unit = drive + 2 * channel;
  pio_time |= pio_modes[drvp->PIO_mode] << (8 * (unit^1));
  pio_mode |= drvp->PIO_mode << (4 * unit + 16);
  if ((chp->wdc->cap & 0x0010) &&
      (drvp->drive_flags & 0x0020)) {
   if (sc->sc_rev <= 0x92 && drvp->UDMA_mode > 2 &&
       ((((pci_conf_read(sc->sc_pc, sc->sc_tag, 0x2c)) >> 16) & 0xffff) &
       (1 << (14 + channel))) == 0) {
    ;
    drvp->UDMA_mode = 2;
   }
   dma_time |= dma_modes[drvp->DMA_mode] << (8 * (unit^1));
   udma_mode |= drvp->UDMA_mode << (4 * unit + 16);
   udma_mode |= 1 << unit;
   idedma_ctl |= (0x20 << (drive));
  } else if ((chp->wdc->cap & 0x0008) &&
      (drvp->drive_flags & 0x0010)) {
   drvp->drive_flags &= ~0x0020;
   dma_time |= dma_modes[drvp->DMA_mode] << (8 * (unit^1));
   idedma_ctl |= (0x20 << (drive));
  } else {
   drvp->drive_flags &= ~(0x0020 | 0x0010);
  }
 }
 pci_conf_write(sc->sc_pc, sc->sc_tag, 0x40, pio_time);
 pci_conf_write(sc->sc_pc, sc->sc_tag, 0x44, dma_time);
 if (sc->sc_pp->ide_product != 0x0211)
  pci_conf_write(sc->sc_pc, sc->sc_tag, 0x48, pio_mode);
 pci_conf_write(sc->sc_pc, sc->sc_tag, 0x54, udma_mode);
 if (idedma_ctl != 0) {
  bus_space_write_1(sc->sc_dma_iot, sc->sc_dma_ioh,
      (0x02 + 0x08 * (channel)), idedma_ctl);
 }
 pciide_print_modes(cp);
}
int
serverworks_pci_intr(void *arg)
{
 struct pciide_softc *sc = arg;
 struct pciide_channel *cp;
 struct channel_softc *wdc_cp;
 int rv = 0;
 int dmastat, i, crv;
 for (i = 0; i < sc->sc_wdcdev.nchannels; i++) {
  dmastat = bus_space_read_1(sc->sc_dma_iot, sc->sc_dma_ioh,
      (0x02 + 0x08 * (i)));
  if ((dmastat & (0x01 | 0x04)) !=
      0x04)
   continue;
  cp = &sc->pciide_channels[i];
  wdc_cp = &cp->wdc_channel;
  crv = wdcintr(wdc_cp);
  if (crv == 0) {
   printf("%s:%d: bogus intr\n",
       sc->sc_wdcdev.sc_dev.dv_xname, i);
   bus_space_write_1(sc->sc_dma_iot, sc->sc_dma_ioh,
       (0x02 + 0x08 * (i)), dmastat);
  } else
   rv = 1;
 }
 return (rv);
}
void
svwsata_chip_map(struct pciide_softc *sc, struct pci_attach_args *pa)
{
 struct pciide_channel *cp;
 pci_intr_handle_t intrhandle;
 const char *intrstr;
 int channel;
 struct pciide_svwsata *ss;
 sc->sc_cookielen = sizeof(*ss);
 sc->sc_cookie = malloc(sc->sc_cookielen, 2, 0x0002 | 0x0008);
 ss = sc->sc_cookie;
 if (pci_conf_read(sc->sc_pc, sc->sc_tag,
     0x10 + 0x14) == 0) {
  printf("\n");
  return;
 }
 if (pci_mapreg_map(pa, 0x10 + 0x14,
     0x00000000 | 0x00000000, 0,
     &ss->ba5_st, &ss->ba5_sh, ((void *)0), ((void *)0), 0) != 0) {
  printf(": unable to map BA5 register space\n");
  return;
 }
 printf(": DMA");
 svwsata_mapreg_dma(sc, pa);
 printf("\n");
 if (sc->sc_dma_ok) {
  sc->sc_wdcdev.cap |= 0x0010 |
      0x0008 | 0x0400;
  sc->sc_wdcdev.irqack = pciide_irqack;
 }
 sc->sc_wdcdev.PIO_cap = 4;
 sc->sc_wdcdev.DMA_cap = 2;
 sc->sc_wdcdev.UDMA_cap = 6;
 sc->sc_wdcdev.channels = sc->wdc_chanarray;
 sc->sc_wdcdev.nchannels = 4;
 sc->sc_wdcdev.cap |= 0x0001 | 0x0002 |
     0x0004 | 0x2000;
 sc->sc_wdcdev.set_modes = sata_setup_channel;
 sc->sc_wdcdev.drv_probe = svwsata_drv_probe;
 if(pci_intr_map(pa, &intrhandle) != 0) {
  printf("%s: couldn't map native-PCI interrupt\n",
      sc->sc_wdcdev.sc_dev.dv_xname);
  return;
 }
 intrstr = pci_intr_string(pa->pa_pc, intrhandle);
 sc->sc_pci_ih = pci_intr_establish(pa->pa_pc, intrhandle, 5,
     pciide_pci_intr, sc, sc->sc_wdcdev.sc_dev.dv_xname);
 if (sc->sc_pci_ih != ((void *)0)) {
  printf("%s: using %s for native-PCI interrupt\n",
      sc->sc_wdcdev.sc_dev.dv_xname,
      intrstr ? intrstr : "unknown interrupt");
 } else {
  printf("%s: couldn't establish native-PCI interrupt",
      sc->sc_wdcdev.sc_dev.dv_xname);
  if (intrstr != ((void *)0))
   printf(" at %s", intrstr);
  printf("\n");
  return;
 }
 switch (sc->sc_pp->ide_product) {
 case 0x0240:
  bus_space_write_4(ss->ba5_st, ss->ba5_sh, 0x80,
      bus_space_read_4(ss->ba5_st, ss->ba5_sh, 0x80)
      & ~0x00040000);
  bus_space_write_4(ss->ba5_st, ss->ba5_sh,
      0x88, 0);
  break;
 }
 for (channel = 0; channel < sc->sc_wdcdev.nchannels; channel++) {
  cp = &sc->pciide_channels[channel];
  if (pciide_chansetup(sc, channel, 0) == 0)
   continue;
  svwsata_mapchan(cp);
  sata_setup_channel(&cp->wdc_channel);
 }
}
void
svwsata_mapreg_dma(struct pciide_softc *sc, struct pci_attach_args *pa)
{
 struct pciide_svwsata *ss = sc->sc_cookie;
 sc->sc_wdcdev.dma_arg = sc;
 sc->sc_wdcdev.dma_init = pciide_dma_init;
 sc->sc_wdcdev.dma_start = pciide_dma_start;
 sc->sc_wdcdev.dma_finish = pciide_dma_finish;
 sc->sc_dma_iot = ss->ba5_st;
 sc->sc_dma_ioh = ss->ba5_sh;
 sc->sc_dmacmd_read = svwsata_dmacmd_read;
 sc->sc_dmacmd_write = svwsata_dmacmd_write;
 sc->sc_dmactl_read = svwsata_dmactl_read;
 sc->sc_dmactl_write = svwsata_dmactl_write;
 sc->sc_dmatbl_write = svwsata_dmatbl_write;
 sc->sc_dmat = pa->pa_dmat;
 sc->sc_dma_ok = 1;
}
u_int8_t
svwsata_dmacmd_read(struct pciide_softc *sc, int chan)
{
 return (bus_space_read_1(sc->sc_dma_iot, sc->sc_dma_ioh,
     (chan << 8) + 0x30 + (0x00 + 0x08 * (0))));
}
void
svwsata_dmacmd_write(struct pciide_softc *sc, int chan, u_int8_t val)
{
 bus_space_write_1(sc->sc_dma_iot, sc->sc_dma_ioh,
     (chan << 8) + 0x30 + (0x00 + 0x08 * (0)), val);
}
u_int8_t
svwsata_dmactl_read(struct pciide_softc *sc, int chan)
{
 return (bus_space_read_1(sc->sc_dma_iot, sc->sc_dma_ioh,
     (chan << 8) + 0x30 + (0x02 + 0x08 * (0))));
}
void
svwsata_dmactl_write(struct pciide_softc *sc, int chan, u_int8_t val)
{
 bus_space_write_1(sc->sc_dma_iot, sc->sc_dma_ioh,
     (chan << 8) + 0x30 + (0x02 + 0x08 * (0)), val);
}
void
svwsata_dmatbl_write(struct pciide_softc *sc, int chan, u_int32_t val)
{
 bus_space_write_4(sc->sc_dma_iot, sc->sc_dma_ioh,
     (chan << 8) + 0x30 + (0x04 + 0x08 * (0)), val);
}
void
svwsata_mapchan(struct pciide_channel *cp)
{
 struct pciide_softc *sc = (struct pciide_softc *)cp->wdc_channel.wdc;
 struct channel_softc *wdc_cp = &cp->wdc_channel;
 struct pciide_svwsata *ss = sc->sc_cookie;
 cp->compat = 0;
 cp->ih = sc->sc_pci_ih;
 if (bus_space_subregion(ss->ba5_st, ss->ba5_sh,
  (wdc_cp->channel << 8) + 0x00,
  0x20 - 0x00, &wdc_cp->cmd_ioh) != 0) {
  printf("%s: couldn't map %s cmd regs\n",
         sc->sc_wdcdev.sc_dev.dv_xname, cp->name);
  return;
 }
 if (bus_space_subregion(ss->ba5_st, ss->ba5_sh,
  (wdc_cp->channel << 8) + 0x20, 4,
  &wdc_cp->ctl_ioh) != 0) {
  printf("%s: couldn't map %s ctl regs\n",
         sc->sc_wdcdev.sc_dev.dv_xname, cp->name);
  return;
 }
 wdc_cp->cmd_iot = wdc_cp->ctl_iot = ss->ba5_st;
 wdc_cp->_vtbl = &wdc_svwsata_vtbl;
 wdc_cp->ch_flags |= 0x80;
 wdcattach(wdc_cp);
}
void
svwsata_drv_probe(struct channel_softc *chp)
{
 struct pciide_channel *cp = (struct pciide_channel *)chp;
 struct pciide_softc *sc = (struct pciide_softc *)cp->wdc_channel.wdc;
 struct pciide_svwsata *ss = sc->sc_cookie;
 int channel = chp->channel;
 uint32_t scontrol, sstatus;
 uint8_t scnt, sn, cl, ch;
 int s;
 scontrol = (0x1 << 0) | (0x0 << 4);
 scontrol |= (0x3 << 8);
 bus_space_write_4(ss->ba5_st, ss->ba5_sh,
     (channel << 8) + 0x48, scontrol);
 delay(50 * 1000);
 scontrol &= ~(0x1 << 0);
 bus_space_write_4(ss->ba5_st, ss->ba5_sh,
     (channel << 8) + 0x48, scontrol);
 delay(100 * 1000);
 sstatus = bus_space_read_4(ss->ba5_st, ss->ba5_sh,
     (channel << 8) + 0x40);
 switch (sstatus & (0xf << 0)) {
 case (0x0 << 0):
  break;
 case (0x1 << 0):
  printf("%s: port %d: device connected, but "
      "communication not established\n",
      sc->sc_wdcdev.sc_dev.dv_xname, chp->channel);
  break;
 case (0x4 << 0):
  printf("%s: port %d: PHY offline\n",
      sc->sc_wdcdev.sc_dev.dv_xname, chp->channel);
  break;
 case (0x3 << 0):
  if (chp->_vtbl != ((void *)0))
   ((chp)->_vtbl->write_reg)(chp, wdr_sdh, 0xa0 | (0 << 4));
  else
   bus_space_write_1(chp->cmd_iot, chp->cmd_ioh,
       wdr_sdh & 7, 0xa0 | (0 << 4));
  delay(10);
  if (chp->_vtbl != ((void *)0)) {
   scnt = ((chp)->_vtbl->read_reg)(chp, wdr_seccnt);
   sn = ((chp)->_vtbl->read_reg)(chp, wdr_sector);
   cl = ((chp)->_vtbl->read_reg)(chp, wdr_cyl_lo);
   ch = ((chp)->_vtbl->read_reg)(chp, wdr_cyl_hi);
  } else {
   scnt = bus_space_read_1(chp->cmd_iot,
       chp->cmd_ioh, wdr_seccnt & 7);
   sn = bus_space_read_1(chp->cmd_iot,
       chp->cmd_ioh, wdr_sector & 7);
   cl = bus_space_read_1(chp->cmd_iot,
       chp->cmd_ioh, wdr_cyl_lo & 7);
   ch = bus_space_read_1(chp->cmd_iot,
       chp->cmd_ioh, wdr_cyl_hi & 7);
  }
  s = _splraise(5);
  if (cl == 0x14 && ch == 0xeb)
   chp->ch_drive[0].drive_flags |= 0x0002;
  else
   chp->ch_drive[0].drive_flags |= 0x0001;
  _splx(s);
  printf("%s: port %d",
      sc->sc_wdcdev.sc_dev.dv_xname, chp->channel);
  switch ((sstatus & (0xf << 4)) >> 4) {
  case 1:
   printf(": 1.5Gb/s");
   break;
  case 2:
   printf(": 3.0Gb/s");
   break;
  }
  printf("\n");
  break;
 default:
  printf("%s: port %d: unknown SStatus: 0x%08x\n",
      sc->sc_wdcdev.sc_dev.dv_xname, chp->channel, sstatus);
 }
}
u_int8_t
svwsata_read_reg(struct channel_softc *chp, enum wdc_regs reg64)
{
 if (reg64 & 8) {
  return (bus_space_read_4(chp->ctl_iot, chp->ctl_ioh,
      (reg64 & 7) << 2));
 } else {
  return (bus_space_read_4(chp->cmd_iot, chp->cmd_ioh,
      (reg64 & 7) << 2));
 }
}
void
svwsata_write_reg(struct channel_softc *chp, enum wdc_regs reg64, u_int8_t val)
{
 if (reg64 & 8) {
  bus_space_write_4(chp->ctl_iot, chp->ctl_ioh,
      (reg64 & 7) << 2, val);
 } else {
  bus_space_write_4(chp->cmd_iot, chp->cmd_ioh,
      (reg64 & 7) << 2, val);
 }
}
void
svwsata_lba48_write_reg(struct channel_softc *chp, enum wdc_regs reg64, u_int16_t val)
{
 if (reg64 & 8) {
  bus_space_write_4(chp->ctl_iot, chp->ctl_ioh,
      (reg64 & 7) << 2, val);
 } else {
  bus_space_write_4(chp->cmd_iot, chp->cmd_ioh,
      (reg64 & 7) << 2, val);
 }
}
void
acard_chip_map(struct pciide_softc *sc, struct pci_attach_args *pa)
{
 struct pciide_channel *cp;
 int i;
 pcireg_t interface;
 bus_size_t cmdsize, ctlsize;
 if ((((pa->pa_class) >> 16) & 0xff) == 0x01) {
  interface = (((pa->pa_class) >> 8) & 0xff);
 } else {
  interface = 0x80 |
      (0x01 << (2 * (0))) | (0x01 << (2 * (1)));
 }
 printf(": DMA");
 pciide_mapreg_dma(sc, pa);
 printf("\n");
 sc->sc_wdcdev.cap = 0x0001 | 0x0002 |
     0x0004;
 if (sc->sc_dma_ok) {
  sc->sc_wdcdev.cap |= 0x0008 | 0x0010;
  sc->sc_wdcdev.cap |= 0x0400;
  sc->sc_wdcdev.irqack = pciide_irqack;
 }
 sc->sc_wdcdev.PIO_cap = 4;
 sc->sc_wdcdev.DMA_cap = 2;
 switch (sc->sc_pp->ide_product) {
 case 0x0005:
  sc->sc_wdcdev.UDMA_cap = 2;
  break;
 case 0x0006:
 case 0x0007:
  sc->sc_wdcdev.UDMA_cap = 4;
  break;
 case 0x0008:
 case 0x0009:
  sc->sc_wdcdev.UDMA_cap = 6;
  break;
 }
 sc->sc_wdcdev.set_modes = acard_setup_channel;
 sc->sc_wdcdev.channels = sc->wdc_chanarray;
 sc->sc_wdcdev.nchannels = 2;
 for (i = 0; i < sc->sc_wdcdev.nchannels; i++) {
  cp = &sc->pciide_channels[i];
  if (pciide_chansetup(sc, i, interface) == 0)
   continue;
  if (interface & (0x01 << (2 * (i)))) {
   cp->hw_ok = pciide_mapregs_native(pa, cp, &cmdsize,
       &ctlsize, pciide_pci_intr);
  } else {
   cp->hw_ok = pciide_mapregs_compat(pa, cp, i,
       &cmdsize, &ctlsize);
  }
  if (cp->hw_ok == 0)
   return;
  cp->wdc_channel.data32iot = cp->wdc_channel.cmd_iot;
  cp->wdc_channel.data32ioh = cp->wdc_channel.cmd_ioh;
  wdcattach(&cp->wdc_channel);
  acard_setup_channel(&cp->wdc_channel);
 }
 if (!((sc)->sc_pp->ide_product == 0x0005)) {
  u_int32_t reg64;
  reg64 = pci_conf_read(sc->sc_pc, sc->sc_tag, 0x48);
  reg64 &= ~0x00010000;
  pci_conf_write(sc->sc_pc, sc->sc_tag, 0x48, reg64);
 }
}
void
acard_setup_channel(struct channel_softc *chp)
{
 struct ata_drive_datas *drvp;
 struct pciide_channel *cp = (struct pciide_channel *)chp;
 struct pciide_softc *sc = (struct pciide_softc *)cp->wdc_channel.wdc;
 int channel = chp->channel;
 int drive;
 u_int32_t idetime, udma_mode;
 u_int32_t idedma_ctl;
 pciide_channel_dma_setup(cp);
 if (((sc)->sc_pp->ide_product == 0x0005)) {
  idetime = 0;
  udma_mode = pci_conf_read(sc->sc_pc, sc->sc_tag, 0x54);
  udma_mode &= ~(0xf << ((channel) * 4));
 } else {
  idetime = pci_conf_read(sc->sc_pc, sc->sc_tag, 0x40);
  idetime &= ~(0xffff << ((channel) * 16));
  udma_mode = pci_conf_read(sc->sc_pc, sc->sc_tag, 0x44);
  udma_mode &= ~(0xff << ((channel) * 8));
 }
 idedma_ctl = 0;
 for (drive = 0; drive < 2; drive++) {
  drvp = &chp->ch_drive[drive];
  if ((drvp->drive_flags & (0x0001|0x0002|0x0004)) == 0)
   continue;
  if ((chp->wdc->cap & 0x0010) &&
      (drvp->drive_flags & 0x0020)) {
   if (((sc)->sc_pp->ide_product == 0x0005)) {
    idetime |= (((((acard_act_udma[drvp->UDMA_mode]) & 0xf) << 8) | ((acard_rec_udma[drvp->UDMA_mode]) & 0xf)) << ((drive) * 16));
    udma_mode |= (((acard_udma_conf[drvp->UDMA_mode]) & 0x3) << ((channel) * 4 + (drive) * 2));
   } else {
    idetime |= (((((acard_act_udma[drvp->UDMA_mode]) & 0xf) << 4) | ((acard_rec_udma[drvp->UDMA_mode]) & 0xf)) << ((channel) * 16 + (drive) * 8));
    udma_mode |= (((acard_udma_conf[drvp->UDMA_mode]) & 0xf) << ((channel) * 8 + (drive) * 4));
   }
   idedma_ctl |= (0x20 << (drive));
  } else if ((chp->wdc->cap & 0x0008) &&
      (drvp->drive_flags & 0x0010)) {
   drvp->drive_flags &= ~0x0020;
   if (((sc)->sc_pp->ide_product == 0x0005)) {
    idetime |= (((((acard_act_dma[drvp->DMA_mode]) & 0xf) << 8) | ((acard_rec_dma[drvp->DMA_mode]) & 0xf)) << ((drive) * 16));
   } else {
    idetime |= (((((acard_act_dma[drvp->DMA_mode]) & 0xf) << 4) | ((acard_rec_dma[drvp->DMA_mode]) & 0xf)) << ((channel) * 16 + (drive) * 8));
   }
   idedma_ctl |= (0x20 << (drive));
  } else {
   drvp->drive_flags &= ~(0x0020 | 0x0010);
   if (((sc)->sc_pp->ide_product == 0x0005)) {
    idetime |= (((((acard_act_pio[drvp->PIO_mode]) & 0xf) << 8) | ((acard_rec_pio[drvp->PIO_mode]) & 0xf)) << ((drive) * 16));
   } else {
    idetime |= (((((acard_act_pio[drvp->PIO_mode]) & 0xf) << 4) | ((acard_rec_pio[drvp->PIO_mode]) & 0xf)) << ((channel) * 16 + (drive) * 8));
   }
  pci_conf_write(sc->sc_pc, sc->sc_tag, 0x48,
      pci_conf_read(sc->sc_pc, sc->sc_tag, 0x48)
      | (0x00020000 << (channel)));
  }
 }
 if (idedma_ctl != 0) {
  bus_space_write_1(sc->sc_dma_iot, sc->sc_dma_ioh,
      (0x02 + 0x08 * (channel)), idedma_ctl);
 }
 pciide_print_modes(cp);
 if (((sc)->sc_pp->ide_product == 0x0005)) {
  pci_conf_write(sc->sc_pc, sc->sc_tag,
      (0x40 + (channel) * 4), idetime);
  pci_conf_write(sc->sc_pc, sc->sc_tag, 0x54, udma_mode);
 } else {
  pci_conf_write(sc->sc_pc, sc->sc_tag, 0x40, idetime);
  pci_conf_write(sc->sc_pc, sc->sc_tag, 0x44, udma_mode);
 }
}
void
nforce_chip_map(struct pciide_softc *sc, struct pci_attach_args *pa)
{
 struct pciide_channel *cp;
 int channel;
 pcireg_t interface = (((pa->pa_class) >> 8) & 0xff);
 bus_size_t cmdsize, ctlsize;
 u_int32_t conf;
 conf = pci_conf_read(sc->sc_pc, sc->sc_tag, 0x50);
 ;
 printf(": DMA");
 pciide_mapreg_dma(sc, pa);
 sc->sc_wdcdev.cap = 0x0001 | 0x0002 |
     0x0004;
 if (sc->sc_dma_ok) {
  sc->sc_wdcdev.cap |= 0x0008 | 0x0010;
  sc->sc_wdcdev.cap |= 0x0400;
  sc->sc_wdcdev.irqack = pciide_irqack;
 }
 sc->sc_wdcdev.PIO_cap = 4;
 sc->sc_wdcdev.DMA_cap = 2;
 switch (sc->sc_pp->ide_product) {
 case 0x01bc:
  sc->sc_wdcdev.UDMA_cap = 5;
  break;
 default:
  sc->sc_wdcdev.UDMA_cap = 6;
 }
 sc->sc_wdcdev.set_modes = nforce_setup_channel;
 sc->sc_wdcdev.channels = sc->wdc_chanarray;
 sc->sc_wdcdev.nchannels = 2;
 pciide_print_channels(sc->sc_wdcdev.nchannels, interface);
 for (channel = 0; channel < sc->sc_wdcdev.nchannels; channel++) {
  cp = &sc->pciide_channels[channel];
  if (pciide_chansetup(sc, channel, interface) == 0)
   continue;
  if ((conf & (0x00000001 << (1 - (channel)))) == 0) {
   printf("%s: %s ignored (disabled)\n",
       sc->sc_wdcdev.sc_dev.dv_xname, cp->name);
   cp->hw_ok = 0;
   continue;
  }
  pciide_map_compat_intr(pa, cp, channel, interface);
  if (cp->hw_ok == 0)
   continue;
  pciide_mapchan(pa, cp, interface, &cmdsize, &ctlsize,
      nforce_pci_intr);
  if (cp->hw_ok == 0) {
   pciide_unmap_compat_intr(pa, cp, channel, interface);
   continue;
  }
  if (pciide_chan_candisable(cp)) {
   conf &= ~(0x00000001 << (1 - (channel)));
   pciide_unmap_compat_intr(pa, cp, channel, interface);
   continue;
  }
  sc->sc_wdcdev.set_modes(&cp->wdc_channel);
 }
 ;
 pci_conf_write(sc->sc_pc, sc->sc_tag, 0x50, conf);
}
void
nforce_setup_channel(struct channel_softc *chp)
{
 struct ata_drive_datas *drvp;
 int drive, mode;
 u_int32_t idedma_ctl;
 struct pciide_channel *cp = (struct pciide_channel *)chp;
 struct pciide_softc *sc = (struct pciide_softc *)cp->wdc_channel.wdc;
 int channel = chp->channel;
 u_int32_t conf, piodmatim, piotim, udmatim;
 conf = pci_conf_read(sc->sc_pc, sc->sc_tag, 0x50);
 piodmatim = pci_conf_read(sc->sc_pc, sc->sc_tag, 0x58);
 piotim = pci_conf_read(sc->sc_pc, sc->sc_tag, 0x5c);
 udmatim = pci_conf_read(sc->sc_pc, sc->sc_tag, 0x60);
 ;
 pciide_channel_dma_setup(cp);
 idedma_ctl = 0;
 piodmatim &= ~(0xffff << ((1 - (channel)) * 16));
 udmatim &= ~(0xffff << ((1 - (channel)) * 16));
 for (drive = 0; drive < 2; drive++) {
  drvp = &chp->ch_drive[drive];
  if ((drvp->drive_flags & (0x0001|0x0002|0x0004)) == 0)
   continue;
  if ((chp->wdc->cap & 0x0010) != 0 &&
      (drvp->drive_flags & 0x0020) != 0) {
   drvp->drive_flags &= ~0x0010;
   udmatim |= ((nforce_udma[drvp->UDMA_mode]) << ((3 - ((channel) * 2 + (drive))) * 8)) |
       (0x40 << ((3 - ((channel) * 2 + (drive))) * 8)) |
       (0x80 << ((3 - ((channel) * 2 + (drive))) * 8));
   mode = drvp->PIO_mode;
  } else if ((chp->wdc->cap & 0x0008) != 0 &&
      (drvp->drive_flags & 0x0010) != 0) {
   drvp->drive_flags &= ~0x0020;
   if (drvp->PIO_mode <= (drvp->DMA_mode + 2))
    mode = drvp->PIO_mode;
   else
    mode = drvp->DMA_mode + 2;
  } else {
   mode = drvp->PIO_mode;
   goto pio;
  }
  idedma_ctl |= (0x20 << (drive));
pio:
  if (mode <= 2) {
   drvp->DMA_mode = 0;
   drvp->PIO_mode = 0;
   mode = 0;
  } else {
   drvp->PIO_mode = mode;
   drvp->DMA_mode = mode - 2;
  }
  piodmatim |= ((nforce_pio[mode]) << ((3 - ((channel) * 2 + (drive))) * 8));
 }
 if (idedma_ctl != 0) {
  bus_space_write_1(sc->sc_dma_iot, sc->sc_dma_ioh,
      (0x02 + 0x08 * (channel)), idedma_ctl);
 }
 ;
 pci_conf_write(sc->sc_pc, sc->sc_tag, 0x58, piodmatim);
 pci_conf_write(sc->sc_pc, sc->sc_tag, 0x60, udmatim);
 pciide_print_modes(cp);
}
int
nforce_pci_intr(void *arg)
{
 struct pciide_softc *sc = arg;
 struct pciide_channel *cp;
 struct channel_softc *wdc_cp;
 int i, rv, crv;
 u_int32_t dmastat;
 rv = 0;
 for (i = 0; i < sc->sc_wdcdev.nchannels; i++) {
  cp = &sc->pciide_channels[i];
  wdc_cp = &cp->wdc_channel;
  if (cp->compat)
   continue;
  dmastat = bus_space_read_1(sc->sc_dma_iot, sc->sc_dma_ioh,
      (0x02 + 0x08 * (i)));
  if ((dmastat & 0x04) == 0)
   continue;
  crv = wdcintr(wdc_cp);
  if (crv == 0)
   printf("%s:%d: bogus intr\n",
       sc->sc_wdcdev.sc_dev.dv_xname, i);
  else
   rv = 1;
 }
 return (rv);
}
void
artisea_chip_map(struct pciide_softc *sc, struct pci_attach_args *pa)
{
 struct pciide_channel *cp;
 bus_size_t cmdsize, ctlsize;
 pcireg_t interface;
 int channel;
 printf(": DMA");
  pciide_mapreg_dma(sc, pa);
 printf("\n");
 sc->sc_wdcdev.cap |= 0x0001 | 0x0002 |
     0x0004 | 0x2000;
 sc->sc_wdcdev.PIO_cap = 4;
 if (sc->sc_dma_ok) {
  sc->sc_wdcdev.cap |= 0x0008 | 0x0010;
  sc->sc_wdcdev.cap |= 0x0400;
  sc->sc_wdcdev.irqack = pciide_irqack;
  sc->sc_wdcdev.DMA_cap = 2;
  sc->sc_wdcdev.UDMA_cap = 6;
 }
 sc->sc_wdcdev.set_modes = sata_setup_channel;
 sc->sc_wdcdev.channels = sc->wdc_chanarray;
 sc->sc_wdcdev.nchannels = 2;
 interface = (((pa->pa_class) >> 8) & 0xff);
 for (channel = 0; channel < sc->sc_wdcdev.nchannels; channel++) {
  cp = &sc->pciide_channels[channel];
  if (pciide_chansetup(sc, channel, interface) == 0)
   continue;
  pciide_mapchan(pa, cp, interface, &cmdsize, &ctlsize,
      pciide_pci_intr);
  if (cp->hw_ok == 0)
   continue;
  pciide_map_compat_intr(pa, cp, channel, interface);
  sata_setup_channel(&cp->wdc_channel);
 }
}
void
ite_chip_map(struct pciide_softc *sc, struct pci_attach_args *pa)
{
 struct pciide_channel *cp;
 int channel;
 pcireg_t interface;
 bus_size_t cmdsize, ctlsize;
 pcireg_t cfg, modectl;
 interface = 0x80 |
     (0x01 << (2 * (0))) | (0x01 << (2 * (1)));
 cfg = pci_conf_read(sc->sc_pc, sc->sc_tag, 0x40);
 modectl = pci_conf_read(sc->sc_pc, sc->sc_tag, 0x50);
 ;
 printf(": DMA");
 pciide_mapreg_dma(sc, pa);
 sc->sc_wdcdev.cap = 0x0001 | 0x0002 |
     0x0004;
 if (sc->sc_dma_ok) {
  sc->sc_wdcdev.cap |= 0x0008 | 0x0010;
  sc->sc_wdcdev.cap |= 0x0400;
  sc->sc_wdcdev.irqack = pciide_irqack;
 }
 sc->sc_wdcdev.PIO_cap = 4;
 sc->sc_wdcdev.DMA_cap = 2;
 sc->sc_wdcdev.UDMA_cap = 6;
 sc->sc_wdcdev.set_modes = ite_setup_channel;
 sc->sc_wdcdev.channels = sc->wdc_chanarray;
 sc->sc_wdcdev.nchannels = 2;
 pciide_print_channels(sc->sc_wdcdev.nchannels, interface);
 modectl &= ~0x0100;
 modectl &= ~0x0001;
 pci_conf_write(sc->sc_pc, sc->sc_tag, 0x50, modectl);
 for (channel = 0; channel < sc->sc_wdcdev.nchannels; channel++) {
  cp = &sc->pciide_channels[channel];
  if (pciide_chansetup(sc, channel, interface) == 0)
   continue;
  pciide_mapchan(pa, cp, interface, &cmdsize, &ctlsize,
      pciide_pci_intr);
  sc->sc_wdcdev.set_modes(&cp->wdc_channel);
 }
 cfg = pci_conf_read(sc->sc_pc, sc->sc_tag, 0x40);
 modectl = pci_conf_read(sc->sc_pc, sc->sc_tag, 0x50);
 ;
}
void
ite_setup_channel(struct channel_softc *chp)
{
 struct ata_drive_datas *drvp;
 int drive, mode;
 u_int32_t idedma_ctl;
 struct pciide_channel *cp = (struct pciide_channel *)chp;
 struct pciide_softc *sc = (struct pciide_softc *)cp->wdc_channel.wdc;
 int channel = chp->channel;
 pcireg_t cfg, modectl;
 pcireg_t tim;
 cfg = pci_conf_read(sc->sc_pc, sc->sc_tag, 0x40);
 modectl = pci_conf_read(sc->sc_pc, sc->sc_tag, 0x50);
 tim = pci_conf_read(sc->sc_pc, sc->sc_tag, ((channel) ? 0x58 : 0x54));
 ;
 pciide_channel_dma_setup(cp);
 idedma_ctl = 0;
 for (drive = 0; drive < 2; drive++) {
  drvp = &chp->ch_drive[drive];
  if ((drvp->drive_flags & (0x0001|0x0002|0x0004)) == 0)
   continue;
  if ((chp->wdc->cap & 0x0010) != 0 &&
      (drvp->drive_flags & 0x0020) != 0) {
   drvp->drive_flags &= ~0x0010;
   modectl &= ~(0x0008 << ((channel) * 2 + (drive)));
   if (drvp->UDMA_mode >= 5)
    tim |= (0x00800000 << (drive) * 8);
   else
    tim &= ~(0x00800000 << (drive) * 8);
   mode = drvp->PIO_mode;
  } else if ((chp->wdc->cap & 0x0008) != 0 &&
      (drvp->drive_flags & 0x0010) != 0) {
   drvp->drive_flags &= ~0x0020;
   modectl |= (0x0008 << ((channel) * 2 + (drive)));
   if (drvp->PIO_mode <= (drvp->DMA_mode + 2))
    mode = drvp->PIO_mode;
   else
    mode = drvp->DMA_mode + 2;
  } else {
   mode = drvp->PIO_mode;
   goto pio;
  }
  idedma_ctl |= (0x20 << (drive));
pio:
  if (mode <= 2) {
   drvp->DMA_mode = 0;
   drvp->PIO_mode = 0;
   mode = 0;
  } else {
   drvp->PIO_mode = mode;
   drvp->DMA_mode = mode - 2;
  }
  if (drvp->PIO_mode >= 3)
   cfg |= (0x0001 << (channel));
 }
 ;
 pci_conf_write(sc->sc_pc, sc->sc_tag, 0x40, cfg);
 pci_conf_write(sc->sc_pc, sc->sc_tag, 0x50, modectl);
 pci_conf_write(sc->sc_pc, sc->sc_tag, ((channel) ? 0x58 : 0x54), tim);
 if (idedma_ctl != 0) {
  bus_space_write_1(sc->sc_dma_iot, sc->sc_dma_ioh,
      (0x02 + 0x08 * (channel)), idedma_ctl);
 }
 pciide_print_modes(cp);
}
void
ixp_chip_map(struct pciide_softc *sc, struct pci_attach_args *pa)
{
 struct pciide_channel *cp;
 int channel;
 pcireg_t interface = (((pa->pa_class) >> 8) & 0xff);
 bus_size_t cmdsize, ctlsize;
 printf(": DMA");
 pciide_mapreg_dma(sc, pa);
 sc->sc_wdcdev.cap = 0x0001 | 0x0002 |
     0x0004;
 if (sc->sc_dma_ok) {
  sc->sc_wdcdev.cap |= 0x0008 | 0x0010;
  sc->sc_wdcdev.cap |= 0x0400;
  sc->sc_wdcdev.irqack = pciide_irqack;
 }
 sc->sc_wdcdev.PIO_cap = 4;
 sc->sc_wdcdev.DMA_cap = 2;
 sc->sc_wdcdev.UDMA_cap = 6;
 sc->sc_wdcdev.set_modes = ixp_setup_channel;
 sc->sc_wdcdev.channels = sc->wdc_chanarray;
 sc->sc_wdcdev.nchannels = 2;
 pciide_print_channels(sc->sc_wdcdev.nchannels, interface);
 for (channel = 0; channel < sc->sc_wdcdev.nchannels; channel++) {
  cp = &sc->pciide_channels[channel];
  if (pciide_chansetup(sc, channel, interface) == 0)
   continue;
  pciide_map_compat_intr(pa, cp, channel, interface);
  if (cp->hw_ok == 0)
   continue;
  pciide_mapchan(pa, cp, interface, &cmdsize, &ctlsize,
      pciide_pci_intr);
  if (cp->hw_ok == 0) {
   pciide_unmap_compat_intr(pa, cp, channel, interface);
   continue;
  }
  sc->sc_wdcdev.set_modes(&cp->wdc_channel);
 }
}
void
ixp_setup_channel(struct channel_softc *chp)
{
 struct ata_drive_datas *drvp;
 int drive, mode;
 u_int32_t idedma_ctl;
 struct pciide_channel *cp = (struct pciide_channel*)chp;
 struct pciide_softc *sc = (struct pciide_softc *)cp->wdc_channel.wdc;
 int channel = chp->channel;
 pcireg_t udma, mdma_timing, pio, pio_timing;
 pio_timing = pci_conf_read(sc->sc_pc, sc->sc_tag, 0x40);
 pio = pci_conf_read(sc->sc_pc, sc->sc_tag, 0x48);
 mdma_timing = pci_conf_read(sc->sc_pc, sc->sc_tag, 0x44);
 udma = pci_conf_read(sc->sc_pc, sc->sc_tag, 0x54);
 pciide_channel_dma_setup(cp);
 idedma_ctl = 0;
 for (drive = 0; drive < 2; drive++) {
  drvp = &chp->ch_drive[drive];
  if ((drvp->drive_flags & (0x0001|0x0002|0x0004)) == 0)
   continue;
  if ((chp->wdc->cap & 0x0010) != 0 &&
      (drvp->drive_flags & 0x0020) != 0) {
   idedma_ctl |= (0x20 << (drive));
   do { (udma) |= (1 << (2 * (chp->channel) + (drive))); } while (0);
   do { int __ixpshift = 16 + 8*(chp->channel) + 4*(drive); (udma) &= ~(0x7 << __ixpshift); (udma) |= (((drvp->UDMA_mode) & 0x7) << __ixpshift); } while (0);
   mode = drvp->PIO_mode;
  } else if ((chp->wdc->cap & 0x0008) != 0 &&
      (drvp->drive_flags & 0x0010) != 0) {
   drvp->drive_flags &= ~0x0020;
   idedma_ctl |= (0x20 << (drive));
   do { (udma) &= ~(1 << (2 * (chp->channel) + (drive))); } while (0);
   do { int __ixpshift = 16*(chp->channel) + 8*(drive); (mdma_timing) &= ~(0xff << __ixpshift); (mdma_timing) |= ((ixp_mdma_timings[drvp->DMA_mode]) & 0xff) << __ixpshift; } while (0);
   if (drvp->PIO_mode <= (drvp->DMA_mode + 2))
    mode = drvp->PIO_mode;
   else
    mode = drvp->DMA_mode + 2;
  } else {
   mode = drvp->PIO_mode;
  }
  drvp->PIO_mode = mode;
  if (mode < 2)
   drvp->DMA_mode = 0;
  else
   drvp->DMA_mode = mode - 2;
  if (drvp->PIO_mode == 1)
   drvp->PIO_mode = 0;
  do { int __ixpshift = 16 + 8*(chp->channel) + 4*(drive); (pio) &= ~(0x7 << __ixpshift); (pio) |= (((drvp->PIO_mode) & 0x7) << __ixpshift); } while (0);
  do { int __ixpshift = 16*(chp->channel) + 8*(drive); (pio_timing) &= ~(0xff << __ixpshift); (pio_timing) |= ((ixp_pio_timings[drvp->PIO_mode]) & 0xff) << __ixpshift; } while (0);
 }
 pci_conf_write(sc->sc_pc, sc->sc_tag, 0x54, udma);
 pci_conf_write(sc->sc_pc, sc->sc_tag, 0x44, mdma_timing);
 pci_conf_write(sc->sc_pc, sc->sc_tag, 0x48, pio);
 pci_conf_write(sc->sc_pc, sc->sc_tag, 0x40, pio_timing);
 if (idedma_ctl != 0) {
  bus_space_write_1(sc->sc_dma_iot, sc->sc_dma_ioh,
      (0x02 + 0x08 * (channel)), idedma_ctl);
 }
 pciide_print_modes(cp);
}
void
jmicron_chip_map(struct pciide_softc *sc, struct pci_attach_args *pa)
{
 struct pciide_channel *cp;
 int channel;
 pcireg_t interface = (((pa->pa_class) >> 8) & 0xff);
 bus_size_t cmdsize, ctlsize;
 u_int32_t conf;
 conf = pci_conf_read(sc->sc_pc, sc->sc_tag, 0x40);
 ;
 printf(": DMA");
 pciide_mapreg_dma(sc, pa);
 sc->sc_wdcdev.cap = 0x0001 | 0x0002 |
     0x0004;
 if (sc->sc_dma_ok) {
  sc->sc_wdcdev.cap |= 0x0008 | 0x0010;
  sc->sc_wdcdev.cap |= 0x0400;
  sc->sc_wdcdev.irqack = pciide_irqack;
 }
 sc->sc_wdcdev.PIO_cap = 4;
 sc->sc_wdcdev.DMA_cap = 2;
 sc->sc_wdcdev.UDMA_cap = 6;
 sc->sc_wdcdev.set_modes = jmicron_setup_channel;
 sc->sc_wdcdev.channels = sc->wdc_chanarray;
 sc->sc_wdcdev.nchannels = 2;
 pciide_print_channels(sc->sc_wdcdev.nchannels, interface);
 for (channel = 0; channel < sc->sc_wdcdev.nchannels; channel++) {
  cp = &sc->pciide_channels[channel];
  if (pciide_chansetup(sc, channel, interface) == 0)
   continue;
  pciide_map_compat_intr(pa, cp, channel, interface);
  if (cp->hw_ok == 0)
   continue;
  pciide_mapchan(pa, cp, interface, &cmdsize, &ctlsize,
      pciide_pci_intr);
  if (cp->hw_ok == 0) {
   pciide_unmap_compat_intr(pa, cp, channel, interface);
   continue;
  }
  if (pciide_chan_candisable(cp)) {
   conf &= ~((channel == 1) ? 4 : 0);
   pciide_unmap_compat_intr(pa, cp, channel, interface);
   continue;
  }
  sc->sc_wdcdev.set_modes(&cp->wdc_channel);
 }
 ;
 pci_conf_write(sc->sc_pc, sc->sc_tag, 0x40, conf);
}
void
jmicron_setup_channel(struct channel_softc *chp)
{
 struct ata_drive_datas *drvp;
 int drive, mode;
 u_int32_t idedma_ctl;
 struct pciide_channel *cp = (struct pciide_channel *)chp;
 struct pciide_softc *sc = (struct pciide_softc *)cp->wdc_channel.wdc;
 int channel = chp->channel;
 u_int32_t conf;
 conf = pci_conf_read(sc->sc_pc, sc->sc_tag, 0x40);
 pciide_channel_dma_setup(cp);
 idedma_ctl = 0;
 for (drive = 0; drive < 2; drive++) {
  drvp = &chp->ch_drive[drive];
  if ((drvp->drive_flags & (0x0001|0x0002|0x0004)) == 0)
   continue;
  if ((chp->wdc->cap & 0x0010) != 0 &&
      (drvp->drive_flags & 0x0020) != 0) {
   drvp->drive_flags &= ~0x0010;
   if ((conf & (1 << 3)) &&
       (drvp->UDMA_mode > 2))
    drvp->UDMA_mode = 2;
   mode = drvp->PIO_mode;
  } else if ((chp->wdc->cap & 0x0008) != 0 &&
      (drvp->drive_flags & 0x0010) != 0) {
   drvp->drive_flags &= ~0x0020;
   if (drvp->PIO_mode <= (drvp->DMA_mode + 2))
    mode = drvp->PIO_mode;
   else
    mode = drvp->DMA_mode + 2;
  } else {
   mode = drvp->PIO_mode;
   goto pio;
  }
  idedma_ctl |= (0x20 << (drive));
pio:
  if (mode <= 2) {
   drvp->DMA_mode = 0;
   drvp->PIO_mode = 0;
  } else {
   drvp->PIO_mode = mode;
   drvp->DMA_mode = mode - 2;
  }
 }
 if (idedma_ctl != 0) {
  bus_space_write_1(sc->sc_dma_iot, sc->sc_dma_ioh,
      (0x02 + 0x08 * (channel)), idedma_ctl);
 }
 pciide_print_modes(cp);
}
void
phison_chip_map(struct pciide_softc *sc, struct pci_attach_args *pa)
{
 struct pciide_channel *cp;
 int channel;
 pcireg_t interface = (((pa->pa_class) >> 8) & 0xff);
 bus_size_t cmdsize, ctlsize;
 sc->chip_unmap = default_chip_unmap;
 printf(": DMA");
 pciide_mapreg_dma(sc, pa);
 sc->sc_wdcdev.cap = 0x0001 | 0x0002 |
     0x0004;
 if (sc->sc_dma_ok) {
  sc->sc_wdcdev.cap |= 0x0008 | 0x0010;
  sc->sc_wdcdev.cap |= 0x0400;
  sc->sc_wdcdev.irqack = pciide_irqack;
 }
 sc->sc_wdcdev.PIO_cap = 4;
 sc->sc_wdcdev.DMA_cap = 2;
 sc->sc_wdcdev.UDMA_cap = 5;
 sc->sc_wdcdev.set_modes = phison_setup_channel;
 sc->sc_wdcdev.channels = sc->wdc_chanarray;
 sc->sc_wdcdev.nchannels = 1;
 pciide_print_channels(sc->sc_wdcdev.nchannels, interface);
 for (channel = 0; channel < sc->sc_wdcdev.nchannels; channel++) {
  cp = &sc->pciide_channels[channel];
  if (pciide_chansetup(sc, channel, interface) == 0)
   continue;
  pciide_map_compat_intr(pa, cp, channel, interface);
  if (cp->hw_ok == 0)
   continue;
  pciide_mapchan(pa, cp, interface, &cmdsize, &ctlsize,
      pciide_pci_intr);
  if (cp->hw_ok == 0) {
   pciide_unmap_compat_intr(pa, cp, channel, interface);
   continue;
  }
  sc->sc_wdcdev.set_modes(&cp->wdc_channel);
 }
}
void
phison_setup_channel(struct channel_softc *chp)
{
 struct ata_drive_datas *drvp;
 int drive, mode;
 u_int32_t idedma_ctl;
 struct pciide_channel *cp = (struct pciide_channel *)chp;
 struct pciide_softc *sc = (struct pciide_softc *)cp->wdc_channel.wdc;
 int channel = chp->channel;
 pciide_channel_dma_setup(cp);
 idedma_ctl = 0;
 for (drive = 0; drive < 2; drive++) {
  drvp = &chp->ch_drive[drive];
  if ((drvp->drive_flags & (0x0001|0x0002|0x0004)) == 0)
   continue;
  if ((chp->wdc->cap & 0x0010) != 0 &&
      (drvp->drive_flags & 0x0020) != 0) {
   drvp->drive_flags &= ~0x0010;
   mode = drvp->PIO_mode;
  } else if ((chp->wdc->cap & 0x0008) != 0 &&
      (drvp->drive_flags & 0x0010) != 0) {
   drvp->drive_flags &= ~0x0020;
   if (drvp->PIO_mode <= (drvp->DMA_mode + 2))
    mode = drvp->PIO_mode;
   else
    mode = drvp->DMA_mode + 2;
  } else {
   mode = drvp->PIO_mode;
   goto pio;
  }
  idedma_ctl |= (0x20 << (drive));
pio:
  if (mode <= 2) {
   drvp->DMA_mode = 0;
   drvp->PIO_mode = 0;
  } else {
   drvp->PIO_mode = mode;
   drvp->DMA_mode = mode - 2;
  }
 }
 if (idedma_ctl != 0) {
  bus_space_write_1(sc->sc_dma_iot, sc->sc_dma_ioh,
      (0x02 + 0x08 * (channel)), idedma_ctl);
 }
 pciide_print_modes(cp);
}
void
sch_chip_map(struct pciide_softc *sc, struct pci_attach_args *pa)
{
 struct pciide_channel *cp;
 int channel;
 pcireg_t interface = (((pa->pa_class) >> 8) & 0xff);
 bus_size_t cmdsize, ctlsize;
 printf(": DMA");
 pciide_mapreg_dma(sc, pa);
 sc->sc_wdcdev.cap = 0x0001 | 0x0002 |
     0x0004;
 if (sc->sc_dma_ok) {
  sc->sc_wdcdev.cap |= 0x0008 | 0x0010;
  sc->sc_wdcdev.cap |= 0x0400;
  sc->sc_wdcdev.irqack = pciide_irqack;
 }
 sc->sc_wdcdev.PIO_cap = 4;
 sc->sc_wdcdev.DMA_cap = 2;
 sc->sc_wdcdev.UDMA_cap = 5;
 sc->sc_wdcdev.set_modes = sch_setup_channel;
 sc->sc_wdcdev.channels = sc->wdc_chanarray;
 sc->sc_wdcdev.nchannels = 1;
 pciide_print_channels(sc->sc_wdcdev.nchannels, interface);
 for (channel = 0; channel < sc->sc_wdcdev.nchannels; channel++) {
  cp = &sc->pciide_channels[channel];
  if (pciide_chansetup(sc, channel, interface) == 0)
   continue;
  pciide_map_compat_intr(pa, cp, channel, interface);
  if (cp->hw_ok == 0)
   continue;
  pciide_mapchan(pa, cp, interface, &cmdsize, &ctlsize,
      pciide_pci_intr);
  if (cp->hw_ok == 0) {
   pciide_unmap_compat_intr(pa, cp, channel, interface);
   continue;
  }
  sc->sc_wdcdev.set_modes(&cp->wdc_channel);
 }
}
void
sch_setup_channel(struct channel_softc *chp)
{
 struct ata_drive_datas *drvp;
 int drive, mode;
 u_int32_t tim, timaddr;
 struct pciide_channel *cp = (struct pciide_channel *)chp;
 struct pciide_softc *sc = (struct pciide_softc *)cp->wdc_channel.wdc;
 pciide_channel_dma_setup(cp);
 for (drive = 0; drive < 2; drive++) {
  drvp = &chp->ch_drive[drive];
  if ((drvp->drive_flags & (0x0001|0x0002|0x0004)) == 0)
   continue;
  timaddr = (drive == 0) ? 0x80 : 0x84;
  tim = pci_conf_read(sc->sc_pc, sc->sc_tag, timaddr);
  tim &= ~(0x70000 | 0x00300 | 0x00007);
  if ((chp->wdc->cap & 0x0010) != 0 &&
      (drvp->drive_flags & 0x0020) != 0) {
   drvp->drive_flags &= ~0x0010;
   mode = drvp->PIO_mode;
   tim |= (drvp->UDMA_mode << 16) | (1U << 31);
  } else if ((chp->wdc->cap & 0x0008) != 0 &&
      (drvp->drive_flags & 0x0010) != 0) {
   drvp->drive_flags &= ~0x0020;
   tim &= ~(1U << 31);
   if (drvp->PIO_mode <= (drvp->DMA_mode + 2))
    mode = drvp->PIO_mode;
   else
    mode = drvp->DMA_mode + 2;
  } else {
   mode = drvp->PIO_mode;
   goto pio;
  }
pio:
  if (mode <= 2) {
   drvp->DMA_mode = 0;
   drvp->PIO_mode = 0;
  } else {
   drvp->PIO_mode = mode;
   drvp->DMA_mode = mode - 2;
  }
  tim |= (drvp->DMA_mode << 8) | (drvp->PIO_mode);
  pci_conf_write(sc->sc_pc, sc->sc_tag, timaddr, tim);
 }
 pciide_print_modes(cp);
}
void
rdc_chip_map(struct pciide_softc *sc, struct pci_attach_args *pa)
{
 struct pciide_channel *cp;
 int channel;
 u_int32_t patr;
 pcireg_t interface = (((pa->pa_class) >> 8) & 0xff);
 bus_size_t cmdsize, ctlsize;
 printf(": DMA");
 pciide_mapreg_dma(sc, pa);
 sc->sc_wdcdev.cap |= 0x0001 | 0x0002;
 if (sc->sc_dma_ok) {
  sc->sc_wdcdev.cap |= 0x0010 |
   0x0008 | 0x0400;
  sc->sc_wdcdev.irqack = pciide_irqack;
  sc->sc_wdcdev.dma_init = pciide_dma_init;
 }
 sc->sc_wdcdev.PIO_cap = 4;
 sc->sc_wdcdev.DMA_cap = 2;
 sc->sc_wdcdev.UDMA_cap = 5;
 sc->sc_wdcdev.set_modes = rdc_setup_channel;
 sc->sc_wdcdev.channels = sc->wdc_chanarray;
 sc->sc_wdcdev.nchannels = 2;
 pciide_print_channels(sc->sc_wdcdev.nchannels, interface);
 ;
 for (channel = 0; channel < sc->sc_wdcdev.nchannels; channel++) {
  cp = &sc->pciide_channels[channel];
  if (pciide_chansetup(sc, channel, interface) == 0)
   continue;
  patr = pci_conf_read(sc->sc_pc, sc->sc_tag, 0x40);
  if ((patr & (0x8000 << ((channel) * 16))) == 0) {
   printf("%s: %s ignored (disabled)\n",
          sc->sc_wdcdev.sc_dev.dv_xname, cp->name);
   cp->hw_ok = 0;
   continue;
  }
  pciide_map_compat_intr(pa, cp, channel, interface);
  if (cp->hw_ok == 0)
   continue;
  pciide_mapchan(pa, cp, interface, &cmdsize, &ctlsize,
          pciide_pci_intr);
  if (cp->hw_ok == 0)
   goto next;
  if (pciide_chan_candisable(cp)) {
   patr &= ~(0x8000 << ((channel) * 16));
   pci_conf_write(sc->sc_pc, sc->sc_tag, 0x40,
           patr);
  }
  if (cp->hw_ok == 0)
   goto next;
  sc->sc_wdcdev.set_modes(&cp->wdc_channel);
next:
  if (cp->hw_ok == 0)
   pciide_unmap_compat_intr(pa, cp, channel, interface);
 }
 ;
}
void
rdc_setup_channel(struct channel_softc *chp)
{
 u_int8_t drive;
 u_int32_t patr, psd1atr, udccr, iiocr;
 struct pciide_channel *cp = (struct pciide_channel *)chp;
 struct pciide_softc *sc = (struct pciide_softc *)cp->wdc_channel.wdc;
 struct ata_drive_datas *drvp;
 patr = pci_conf_read(sc->sc_pc, sc->sc_tag, 0x40);
 psd1atr = pci_conf_read(sc->sc_pc, sc->sc_tag, 0x44);
 udccr = pci_conf_read(sc->sc_pc, sc->sc_tag, 0x48);
 iiocr = pci_conf_read(sc->sc_pc, sc->sc_tag, 0x54);
 pciide_channel_dma_setup(cp);
 patr = patr & ((0x8000 << ((0) * 16)) | (0x8000 << ((1) * 16)));
 psd1atr &= ~(0x0c << (chp->channel * 4));
 psd1atr &= ~(0x03 << (chp->channel * 4));
 for (drive = 0; drive < 2; drive++) {
  udccr &= ~((1 << (drive)) << (chp->channel * 2));
  udccr &= ~((0x3 << ((drive) * 4)) << (chp->channel * 8));
  iiocr &= ~((0x1001 << drive) << (chp->channel * 2));
 }
 for (drive = 0; drive < 2; drive++) {
  drvp = &cp->wdc_channel.ch_drive[drive];
  if ((drvp->drive_flags & (0x0001|0x0002|0x0004)) == 0)
   continue;
  if (drvp->drive_flags & 0x0002)
   patr |= ((0x0004 << (drive * 4)) << ((chp->channel) * 16));
  if (drive == 0) {
   patr |= (((rdcide_setup[drvp->PIO_mode]) << 12) << ((chp->channel) * 16));
   patr |= (((rdcide_hold[drvp->PIO_mode]) << 8) << ((chp->channel) * 16));
  } else {
   patr |= (0x4000 << ((chp->channel) * 16));
   psd1atr |= (((rdcide_setup[drvp->PIO_mode]) << 2) << (chp->channel * 4));
   psd1atr |= (((rdcide_hold[drvp->PIO_mode]) << 0) << (chp->channel * 4));
  }
  if (drvp->PIO_mode > 0) {
   patr |= ((0x0001 << (drive * 4)) << ((chp->channel) * 16));
   patr |= ((0x0002 << (drive * 4)) << ((chp->channel) * 16));
  }
  if (drvp->drive_flags & 0x0010)
   patr |= ((0x0008 << (drive * 4)) << ((chp->channel) * 16));
  if ((drvp->drive_flags & 0x0020) == 0)
   continue;
  if ((iiocr & ((0x10 << (drive)) << (chp->channel * 2))) == 0
      && drvp->UDMA_mode > 2)
   drvp->UDMA_mode = 2;
  udccr |= ((1 << (drive)) << (chp->channel * 2));
  udccr |= (((rdcide_udmatim[drvp->UDMA_mode]) << ((drive) * 4)) << (chp->channel * 8));
  iiocr |= (((rdcide_udmaclk[drvp->UDMA_mode]) << drive) << (chp->channel * 2));
 }
 pci_conf_write(sc->sc_pc, sc->sc_tag, 0x40, patr);
 pci_conf_write(sc->sc_pc, sc->sc_tag, 0x44, psd1atr);
 pci_conf_write(sc->sc_pc, sc->sc_tag, 0x48, udccr);
 pci_conf_write(sc->sc_pc, sc->sc_tag, 0x54, iiocr);
}
