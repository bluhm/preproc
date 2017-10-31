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
struct flock {
 off_t l_start;
 off_t l_len;
 pid_t l_pid;
 short l_type;
 short l_whence;
};
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
struct soqhead { struct socket *tqh_first; struct socket **tqh_last; };
struct socket {
 short so_type;
 short so_options;
 short so_linger;
 short so_state;
 void *so_pcb;
 struct protosw *so_proto;
 struct socket *so_head;
 struct soqhead *so_onq;
 struct soqhead so_q0;
 struct soqhead so_q;
 struct { struct socket *tqe_next; struct socket **tqe_prev; } so_qe;
 short so_q0len;
 short so_qlen;
 short so_qlimit;
 short so_timeo;
 u_short so_error;
 pid_t so_pgid;
 uid_t so_siguid;
 uid_t so_sigeuid;
 u_long so_oobmark;
 struct sosplice {
  struct socket *ssp_socket;
  struct socket *ssp_soback;
  off_t ssp_len;
  off_t ssp_max;
  struct timeval ssp_idletv;
  struct timeout ssp_idleto;
  struct task ssp_task;
 } *so_sp;
 struct sockbuf {
  u_long sb_cc;
  u_long sb_datacc;
  u_long sb_hiwat;
  u_long sb_wat;
  u_long sb_mbcnt;
  u_long sb_mbmax;
  long sb_lowat;
  struct mbuf *sb_mb;
  struct mbuf *sb_mbtail;
  struct mbuf *sb_lastrecord;
  struct selinfo sb_sel;
  int sb_flagsintr;
  short sb_flags;
  u_short sb_timeo;
 } so_rcv, so_snd;
 void (*so_upcall)(struct socket *so, caddr_t arg, int waitf);
 caddr_t so_upcallarg;
 uid_t so_euid, so_ruid;
 gid_t so_egid, so_rgid;
 pid_t so_cpid;
};
void soassertlocked(struct socket *);
static inline int
sb_notify(struct socket *so, struct sockbuf *sb)
{
 int flags = (sb->sb_flags | sb->sb_flagsintr);
 ((sb == &so->so_rcv || sb == &so->so_snd) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../sys/socketvar.h", 174, "sb == &so->so_rcv || sb == &so->so_snd"));
 soassertlocked(so);
 return ((flags & (0x04|0x08|0x10|0x20|0x80)) != 0);
}
static inline long
sbspace(struct socket *so, struct sockbuf *sb)
{
 ((sb == &so->so_rcv || sb == &so->so_snd) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../sys/socketvar.h", 188, "sb == &so->so_rcv || sb == &so->so_snd"));
 return lmin(sb->sb_hiwat - sb->sb_cc, sb->sb_mbmax - sb->sb_mbcnt);
}
static inline int
soreadable(struct socket *so)
{
 soassertlocked(so);
 if (((so)->so_sp && (so)->so_sp->ssp_socket))
  return 0;
 return (so->so_state & 0x020) || so->so_qlen || so->so_error ||
     so->so_rcv.sb_cc >= so->so_rcv.sb_lowat;
}
int sblock(struct socket *, struct sockbuf *, int);
void sbunlock(struct sockbuf *);
extern u_long sb_max;
extern struct pool socket_pool;
struct mbuf;
struct sockaddr;
struct proc;
struct msghdr;
struct stat;
struct knote;
int soo_read(struct file *fp, off_t *, struct uio *uio,
     struct ucred *cred);
int soo_write(struct file *fp, off_t *, struct uio *uio,
     struct ucred *cred);
int soo_ioctl(struct file *fp, u_long cmd, caddr_t data,
     struct proc *p);
int soo_poll(struct file *fp, int events, struct proc *p);
int soo_kqfilter(struct file *fp, struct knote *kn);
int soo_close(struct file *fp, struct proc *p);
int soo_stat(struct file *, struct stat *, struct proc *);
void sbappend(struct socket *, struct sockbuf *, struct mbuf *);
void sbappendstream(struct socket *, struct sockbuf *, struct mbuf *);
int sbappendaddr(struct socket *, struct sockbuf *, struct sockaddr *,
     struct mbuf *, struct mbuf *);
int sbappendcontrol(struct socket *, struct sockbuf *, struct mbuf *,
     struct mbuf *);
void sbappendrecord(struct socket *, struct sockbuf *, struct mbuf *);
void sbcompress(struct sockbuf *sb, struct mbuf *m, struct mbuf *n);
struct mbuf *
 sbcreatecontrol(caddr_t p, int size, int type, int level);
void sbdrop(struct socket *, struct sockbuf *, int);
void sbdroprecord(struct sockbuf *sb);
void sbflush(struct socket *, struct sockbuf *);
void sbinsertoob(struct sockbuf *sb, struct mbuf *m0);
void sbrelease(struct socket *, struct sockbuf *);
int sbcheckreserve(u_long cnt, u_long defcnt);
int sbchecklowmem(void);
int sbreserve(struct socket *, struct sockbuf *, u_long);
int sbwait(struct socket *, struct sockbuf *sb);
int sb_lock(struct sockbuf *sb);
void soinit(void);
int soabort(struct socket *so);
int soaccept(struct socket *so, struct mbuf *nam);
int sobind(struct socket *so, struct mbuf *nam, struct proc *p);
void socantrcvmore(struct socket *so);
void socantsendmore(struct socket *so);
int soclose(struct socket *so);
int soconnect(struct socket *so, struct mbuf *nam);
int soconnect2(struct socket *so1, struct socket *so2);
int socreate(int dom, struct socket **aso, int type, int proto);
int sodisconnect(struct socket *so);
void sofree(struct socket *so);
int sogetopt(struct socket *so, int level, int optname, struct mbuf *m);
void sohasoutofband(struct socket *so);
void soisconnected(struct socket *so);
void soisconnecting(struct socket *so);
void soisdisconnected(struct socket *so);
void soisdisconnecting(struct socket *so);
int solisten(struct socket *so, int backlog);
struct socket *sonewconn(struct socket *head, int connstatus);
void soqinsque(struct socket *head, struct socket *so, int q);
int soqremque(struct socket *so, int q);
int soreceive(struct socket *so, struct mbuf **paddr, struct uio *uio,
     struct mbuf **mp0, struct mbuf **controlp, int *flagsp,
     socklen_t controllen);
int soreserve(struct socket *so, u_long sndcc, u_long rcvcc);
void sorflush(struct socket *so);
int sosend(struct socket *so, struct mbuf *addr, struct uio *uio,
     struct mbuf *top, struct mbuf *control, int flags);
int sosetopt(struct socket *so, int level, int optname, struct mbuf *m);
int soshutdown(struct socket *so, int how);
void sowakeup(struct socket *so, struct sockbuf *sb);
void sorwakeup(struct socket *);
void sowwakeup(struct socket *);
int sockargs(struct mbuf **, const void *, size_t, int);
int sosleep(struct socket *, void *, int, const char *, int);
int solock(struct socket *);
void sounlock(int);
int sendit(struct proc *, int, struct msghdr *, int, register_t *);
int recvit(struct proc *, int, struct msghdr *, caddr_t,
      register_t *);
int doaccept(struct proc *, int, struct sockaddr *, socklen_t *, int,
     register_t *);
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
struct mdproc {
 struct trapframe64 *md_tf;
 struct fpstate64 *md_fpstate;
 volatile int md_astpending;
};
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
int kthread_create(void (*)(void *), void *, struct proc **,
     const char *);
void kthread_create_deferred(void (*)(void *), void *);
void kthread_run_deferred_queue(void);
void kthread_exit(int) __attribute__((__noreturn__));
struct syslog_data {
 int log_stat;
 const char *log_tag;
 int log_fac;
 int log_mask;
};
void logpri(int);
void log(int, const char *, ...)
    __attribute__((__format__(__kprintf__,2,3)));
int addlog(const char *, ...)
    __attribute__((__format__(__kprintf__,1,2)));
void logwakeup(void);
typedef int vm_fault_t;
typedef int vm_inherit_t;
typedef off_t voff_t;
union vm_map_object;
typedef union vm_map_object vm_map_object_t;
struct vm_map_entry;
typedef struct vm_map_entry *vm_map_entry_t;
struct vm_map;
typedef struct vm_map *vm_map_t;
struct vm_page;
typedef struct vm_page *vm_page_t;
typedef int vm_prot_t;
struct buf;
struct mount;
struct pglist;
struct vmspace;
struct pmap;
struct vm_map;
vaddr_t dvma_mapin(struct vm_map *, vaddr_t, int, int);
void dvma_mapout(vaddr_t, vaddr_t, int);
typedef int boolean_t;
struct proc;
struct pmap_statistics {
 long resident_count;
 long wired_count;
};
typedef struct pmap_statistics *pmap_statistics_t;
struct sun4u_tte {
 int64_t tag;
 int64_t data;
};
typedef struct sun4u_tte pte_t;
extern void sp_tlb_flush_pte(vaddr_t addr, int ctx);
extern void sp_tlb_flush_ctx(int ctx);
void smp_tlb_flush_pte(vaddr_t, int);
void smp_tlb_flush_ctx(int);
struct page_size_map {
 u_int64_t mask;
 u_int64_t code;
};
extern struct page_size_map page_size_map[];
struct pmap {
 struct mutex pm_mtx;
 int pm_ctx;
 int pm_refs;
 paddr_t pm_physaddr;
 int64_t *pm_segs;
 struct pmap_statistics pm_stats;
};
struct prom_map {
 u_int64_t vstart;
 u_int64_t vsize;
 u_int64_t tte;
};
typedef struct pmap *pmap_t;
extern struct pmap kernel_pmap_;
void pmap_bootstrap(u_long, u_long, u_int, u_int);
void pmap_redzone(void);
int pmap_dumpsize(void);
int pmap_dumpmmu(int (*)(dev_t, daddr_t, caddr_t, size_t), daddr_t);
int pmap_pa_exists(paddr_t);
struct proc;
void switchexit(struct proc *);
int ctx_alloc(struct pmap*);
void ctx_free(struct pmap*);
typedef struct pv_entry {
 struct pv_entry *pv_next;
 struct pmap *pv_pmap;
 vaddr_t pv_va;
} *pv_entry_t;
struct vm_page_md {
 struct mutex pvmtx;
 struct pv_entry pvent;
};

void pmap_activate(struct proc *);
void pmap_deactivate(struct proc *);
void pmap_unwire(pmap_t, vaddr_t);
boolean_t pmap_clear_modify(struct vm_page *);
boolean_t pmap_clear_reference(struct vm_page *);
void pmap_collect(pmap_t);
void pmap_copy(pmap_t, pmap_t, vaddr_t, vsize_t, vaddr_t);
void pmap_copy_page(struct vm_page *, struct vm_page *);
struct pmap *pmap_create(void);
void pmap_destroy(pmap_t);
int pmap_enter(pmap_t,
      vaddr_t, paddr_t, vm_prot_t, int);
boolean_t pmap_extract(pmap_t, vaddr_t, paddr_t *);
vaddr_t pmap_growkernel(vaddr_t);
void pmap_init(void);
void pmap_kenter_pa(vaddr_t, paddr_t, vm_prot_t);
void pmap_kremove(vaddr_t, vsize_t);
boolean_t pmap_is_modified(struct vm_page *);
boolean_t pmap_is_referenced(struct vm_page *);
void pmap_page_protect(struct vm_page *, vm_prot_t);
void pmap_protect(pmap_t, vaddr_t, vaddr_t, vm_prot_t);
void pmap_reference(pmap_t);
void pmap_remove(pmap_t, vaddr_t, vaddr_t);
void pmap_remove_holes(struct vmspace *);
void pmap_zero_page(struct vm_page *);
void pmap_virtual_space(vaddr_t *, vaddr_t *);

struct uvm_object {
 struct uvm_pagerops *pgops;
 struct uvm_objtree { struct rb_tree rbh_root; } memt;
 int uo_npages;
 int uo_refs;
};
extern struct uvm_pagerops uvm_vnodeops;
extern struct uvm_pagerops uvm_deviceops;
int uvm_pagecmp(const struct vm_page *, const struct vm_page *);
extern const struct rb_type *const uvm_objtree_RBT_TYPE; __attribute__((__unused__)) static inline void uvm_objtree_RBT_INIT(struct uvm_objtree *head) { _rb_init(&head->rbh_root); } __attribute__((__unused__)) static inline struct vm_page * uvm_objtree_RBT_INSERT(struct uvm_objtree *head, struct vm_page *elm) { return _rb_insert(uvm_objtree_RBT_TYPE, &head->rbh_root, elm); } __attribute__((__unused__)) static inline struct vm_page * uvm_objtree_RBT_REMOVE(struct uvm_objtree *head, struct vm_page *elm) { return _rb_remove(uvm_objtree_RBT_TYPE, &head->rbh_root, elm); } __attribute__((__unused__)) static inline struct vm_page * uvm_objtree_RBT_FIND(struct uvm_objtree *head, const struct vm_page *key) { return _rb_find(uvm_objtree_RBT_TYPE, &head->rbh_root, key); } __attribute__((__unused__)) static inline struct vm_page * uvm_objtree_RBT_NFIND(struct uvm_objtree *head, const struct vm_page *key) { return _rb_nfind(uvm_objtree_RBT_TYPE, &head->rbh_root, key); } __attribute__((__unused__)) static inline struct vm_page * uvm_objtree_RBT_ROOT(struct uvm_objtree *head) { return _rb_root(uvm_objtree_RBT_TYPE, &head->rbh_root); } __attribute__((__unused__)) static inline int uvm_objtree_RBT_EMPTY(struct uvm_objtree *head) { return _rb_empty(&head->rbh_root); } __attribute__((__unused__)) static inline struct vm_page * uvm_objtree_RBT_MIN(struct uvm_objtree *head) { return _rb_min(uvm_objtree_RBT_TYPE, &head->rbh_root); } __attribute__((__unused__)) static inline struct vm_page * uvm_objtree_RBT_MAX(struct uvm_objtree *head) { return _rb_max(uvm_objtree_RBT_TYPE, &head->rbh_root); } __attribute__((__unused__)) static inline struct vm_page * uvm_objtree_RBT_NEXT(struct vm_page *elm) { return _rb_next(uvm_objtree_RBT_TYPE, elm); } __attribute__((__unused__)) static inline struct vm_page * uvm_objtree_RBT_PREV(struct vm_page *elm) { return _rb_prev(uvm_objtree_RBT_TYPE, elm); } __attribute__((__unused__)) static inline struct vm_page * uvm_objtree_RBT_LEFT(struct vm_page *elm) { return _rb_left(uvm_objtree_RBT_TYPE, elm); } __attribute__((__unused__)) static inline struct vm_page * uvm_objtree_RBT_RIGHT(struct vm_page *elm) { return _rb_right(uvm_objtree_RBT_TYPE, elm); } __attribute__((__unused__)) static inline struct vm_page * uvm_objtree_RBT_PARENT(struct vm_page *elm) { return _rb_parent(uvm_objtree_RBT_TYPE, elm); } __attribute__((__unused__)) static inline void uvm_objtree_RBT_SET_LEFT(struct vm_page *elm, struct vm_page *left) { return _rb_set_left(uvm_objtree_RBT_TYPE, elm, left); } __attribute__((__unused__)) static inline void uvm_objtree_RBT_SET_RIGHT(struct vm_page *elm, struct vm_page *right) { return _rb_set_right(uvm_objtree_RBT_TYPE, elm, right); } __attribute__((__unused__)) static inline void uvm_objtree_RBT_SET_PARENT(struct vm_page *elm, struct vm_page *parent) { return _rb_set_parent(uvm_objtree_RBT_TYPE, elm, parent); } __attribute__((__unused__)) static inline void uvm_objtree_RBT_POISON(struct vm_page *elm, unsigned long poison) { return _rb_poison(uvm_objtree_RBT_TYPE, elm, poison); } __attribute__((__unused__)) static inline int uvm_objtree_RBT_CHECK(struct vm_page *elm, unsigned long poison) { return _rb_check(uvm_objtree_RBT_TYPE, elm, poison); }
void uvm_objinit(struct uvm_object *, struct uvm_pagerops *, int);
int uvm_objwire(struct uvm_object *, voff_t, voff_t, struct pglist *);
void uvm_objunwire(struct uvm_object *, voff_t, voff_t);
struct pglist { struct vm_page *tqh_first; struct vm_page **tqh_last; };
struct vm_page {
 struct { struct vm_page *tqe_next; struct vm_page **tqe_prev; } pageq;
 struct rb_entry objt;
 struct vm_anon *uanon;
 struct uvm_object *uobject;
 voff_t offset;
 u_int pg_flags;
 u_int pg_version;
 u_int wire_count;
 paddr_t phys_addr;
 psize_t fpgsz;
 struct vm_page_md mdpage;
};
struct vm_physseg {
 paddr_t start;
 paddr_t end;
 paddr_t avail_start;
 paddr_t avail_end;
 struct vm_page *pgs;
 struct vm_page *lastpg;
};
extern boolean_t vm_page_zero_enable;
extern struct vm_physseg vm_physmem[32];
extern int vm_nphysseg;
void uvm_page_init(vaddr_t *, vaddr_t *);
boolean_t uvm_page_physget(paddr_t *);
void uvm_pageactivate(struct vm_page *);
vaddr_t uvm_pageboot_alloc(vsize_t);
void uvm_pagecopy(struct vm_page *, struct vm_page *);
void uvm_pagedeactivate(struct vm_page *);
void uvm_pagefree(struct vm_page *);
void uvm_page_unbusy(struct vm_page **, int);
struct vm_page *uvm_pagelookup(struct uvm_object *, voff_t);
void uvm_pageunwire(struct vm_page *);
void uvm_pagewait(struct vm_page *, int);
void uvm_pagewake(struct vm_page *);
void uvm_pagewire(struct vm_page *);
void uvm_pagezero(struct vm_page *);
void uvm_pagealloc_pg(struct vm_page *, struct uvm_object *,
      voff_t, struct vm_anon *);
struct uvm_constraint_range;
psize_t uvm_pagecount(struct uvm_constraint_range*);
struct vm_page *PHYS_TO_VM_PAGE(paddr_t);
int vm_physseg_find(paddr_t, int *);
void uvm_map_clip_end(struct vm_map*, struct vm_map_entry*,
       vaddr_t);
void uvm_map_clip_start(struct vm_map*,
       struct vm_map_entry*, vaddr_t);
struct vm_anon {
 struct vm_page *an_page;
 int an_ref;
 int an_swslot;
};
struct vm_aref {
 int ar_pageoff;
 struct vm_amap *ar_amap;
};
struct vm_anon *uvm_analloc(void);
void uvm_anfree(struct vm_anon *);
void uvm_anwait(void);
void uvm_anon_init(void);
void uvm_anon_dropswap(struct vm_anon *);
boolean_t uvm_anon_pagein(struct vm_anon *);
union vm_map_object {
 struct uvm_object *uvm_obj;
 struct vm_map *sub_map;
};
struct vm_map_entry {
 union {
  struct rb_entry addr_entry;
  struct { struct vm_map_entry *sle_next; } addr_kentry;
 } daddrs;
 union {
  struct rb_entry rbtree;
  struct { struct vm_map_entry *tqe_next; struct vm_map_entry **tqe_prev; } tailq;
  struct { struct vm_map_entry *tqe_next; struct vm_map_entry **tqe_prev; } deadq;
 } dfree;
 vaddr_t start;
 vaddr_t end;
 vsize_t guard;
 vsize_t fspace;
 union vm_map_object object;
 voff_t offset;
 struct vm_aref aref;
 int etype;
 vm_prot_t protection;
 vm_prot_t max_protection;
 vm_inherit_t inheritance;
 int wired_count;
 int advice;
 u_int8_t flags;
 vsize_t fspace_augment;
};
struct uvm_map_deadq { struct vm_map_entry *tqh_first; struct vm_map_entry **tqh_last; };
struct uvm_map_addr { struct rb_tree rbh_root; };
extern const struct rb_type *const uvm_map_addr_RBT_TYPE; __attribute__((__unused__)) static inline void uvm_map_addr_RBT_INIT(struct uvm_map_addr *head) { _rb_init(&head->rbh_root); } __attribute__((__unused__)) static inline struct vm_map_entry * uvm_map_addr_RBT_INSERT(struct uvm_map_addr *head, struct vm_map_entry *elm) { return _rb_insert(uvm_map_addr_RBT_TYPE, &head->rbh_root, elm); } __attribute__((__unused__)) static inline struct vm_map_entry * uvm_map_addr_RBT_REMOVE(struct uvm_map_addr *head, struct vm_map_entry *elm) { return _rb_remove(uvm_map_addr_RBT_TYPE, &head->rbh_root, elm); } __attribute__((__unused__)) static inline struct vm_map_entry * uvm_map_addr_RBT_FIND(struct uvm_map_addr *head, const struct vm_map_entry *key) { return _rb_find(uvm_map_addr_RBT_TYPE, &head->rbh_root, key); } __attribute__((__unused__)) static inline struct vm_map_entry * uvm_map_addr_RBT_NFIND(struct uvm_map_addr *head, const struct vm_map_entry *key) { return _rb_nfind(uvm_map_addr_RBT_TYPE, &head->rbh_root, key); } __attribute__((__unused__)) static inline struct vm_map_entry * uvm_map_addr_RBT_ROOT(struct uvm_map_addr *head) { return _rb_root(uvm_map_addr_RBT_TYPE, &head->rbh_root); } __attribute__((__unused__)) static inline int uvm_map_addr_RBT_EMPTY(struct uvm_map_addr *head) { return _rb_empty(&head->rbh_root); } __attribute__((__unused__)) static inline struct vm_map_entry * uvm_map_addr_RBT_MIN(struct uvm_map_addr *head) { return _rb_min(uvm_map_addr_RBT_TYPE, &head->rbh_root); } __attribute__((__unused__)) static inline struct vm_map_entry * uvm_map_addr_RBT_MAX(struct uvm_map_addr *head) { return _rb_max(uvm_map_addr_RBT_TYPE, &head->rbh_root); } __attribute__((__unused__)) static inline struct vm_map_entry * uvm_map_addr_RBT_NEXT(struct vm_map_entry *elm) { return _rb_next(uvm_map_addr_RBT_TYPE, elm); } __attribute__((__unused__)) static inline struct vm_map_entry * uvm_map_addr_RBT_PREV(struct vm_map_entry *elm) { return _rb_prev(uvm_map_addr_RBT_TYPE, elm); } __attribute__((__unused__)) static inline struct vm_map_entry * uvm_map_addr_RBT_LEFT(struct vm_map_entry *elm) { return _rb_left(uvm_map_addr_RBT_TYPE, elm); } __attribute__((__unused__)) static inline struct vm_map_entry * uvm_map_addr_RBT_RIGHT(struct vm_map_entry *elm) { return _rb_right(uvm_map_addr_RBT_TYPE, elm); } __attribute__((__unused__)) static inline struct vm_map_entry * uvm_map_addr_RBT_PARENT(struct vm_map_entry *elm) { return _rb_parent(uvm_map_addr_RBT_TYPE, elm); } __attribute__((__unused__)) static inline void uvm_map_addr_RBT_SET_LEFT(struct vm_map_entry *elm, struct vm_map_entry *left) { return _rb_set_left(uvm_map_addr_RBT_TYPE, elm, left); } __attribute__((__unused__)) static inline void uvm_map_addr_RBT_SET_RIGHT(struct vm_map_entry *elm, struct vm_map_entry *right) { return _rb_set_right(uvm_map_addr_RBT_TYPE, elm, right); } __attribute__((__unused__)) static inline void uvm_map_addr_RBT_SET_PARENT(struct vm_map_entry *elm, struct vm_map_entry *parent) { return _rb_set_parent(uvm_map_addr_RBT_TYPE, elm, parent); } __attribute__((__unused__)) static inline void uvm_map_addr_RBT_POISON(struct vm_map_entry *elm, unsigned long poison) { return _rb_poison(uvm_map_addr_RBT_TYPE, elm, poison); } __attribute__((__unused__)) static inline int uvm_map_addr_RBT_CHECK(struct vm_map_entry *elm, unsigned long poison) { return _rb_check(uvm_map_addr_RBT_TYPE, elm, poison); };
struct vm_map {
 struct pmap * pmap;
 struct rwlock lock;
 struct mutex mtx;
 struct uvm_map_addr addr;
 vsize_t size;
 int ref_count;
 int flags;
 struct mutex flags_lock;
 unsigned int timestamp;
 vaddr_t min_offset;
 vaddr_t max_offset;
 vaddr_t b_start;
 vaddr_t b_end;
 vaddr_t s_start;
 vaddr_t s_end;
 struct uvm_addr_state *uaddr_exe;
 struct uvm_addr_state *uaddr_any[4];
 struct uvm_addr_state *uaddr_brk_stack;
};
struct vm_map_intrsafe {
 struct vm_map vmi_map;
 struct { struct vm_map_intrsafe *le_next; struct vm_map_intrsafe **le_prev; } vmi_list;
};
extern vaddr_t uvm_maxkaddr;
void uvm_map_deallocate(vm_map_t);
int uvm_map_clean(vm_map_t, vaddr_t, vaddr_t, int);
vm_map_t uvm_map_create(pmap_t, vaddr_t, vaddr_t, int);
int uvm_map_extract(struct vm_map*, vaddr_t, vsize_t, vaddr_t*,
      int);
vaddr_t uvm_map_pie(vaddr_t);
vaddr_t uvm_map_hint(struct vmspace *, vm_prot_t, vaddr_t, vaddr_t);
int uvm_map_inherit(vm_map_t, vaddr_t, vaddr_t, vm_inherit_t);
int uvm_map_advice(vm_map_t, vaddr_t, vaddr_t, int);
void uvm_map_init(void);
boolean_t uvm_map_lookup_entry(vm_map_t, vaddr_t, vm_map_entry_t *);
int uvm_map_replace(vm_map_t, vaddr_t, vaddr_t,
      vm_map_entry_t, int);
int uvm_map_reserve(vm_map_t, vsize_t, vaddr_t, vsize_t,
      vaddr_t *);
void uvm_map_setup(vm_map_t, vaddr_t, vaddr_t, int);
int uvm_map_submap(vm_map_t, vaddr_t, vaddr_t, vm_map_t);
void uvm_unmap(vm_map_t, vaddr_t, vaddr_t);
void uvm_map_set_uaddr(struct vm_map*, struct uvm_addr_state**,
      struct uvm_addr_state*);
int uvm_map_mquery(struct vm_map*, vaddr_t*, vsize_t, voff_t, int);
void uvm_unmap_detach(struct uvm_map_deadq*, int);
void uvm_unmap_remove(struct vm_map*, vaddr_t, vaddr_t,
      struct uvm_map_deadq*, boolean_t, boolean_t);
struct kinfo_vmentry;
int uvm_map_fill_vmmap(struct vm_map *, struct kinfo_vmentry *,
      size_t *);
boolean_t vm_map_lock_try_ln(struct vm_map*, char*, int);
void vm_map_lock_ln(struct vm_map*, char*, int);
void vm_map_lock_read_ln(struct vm_map*, char*, int);
void vm_map_unlock_ln(struct vm_map*, char*, int);
void vm_map_unlock_read_ln(struct vm_map*, char*, int);
void vm_map_downgrade_ln(struct vm_map*, char*, int);
void vm_map_upgrade_ln(struct vm_map*, char*, int);
void vm_map_busy_ln(struct vm_map*, char*, int);
void vm_map_unbusy_ln(struct vm_map*, char*, int);
struct uvm_faultinfo {
 vm_map_t orig_map;
 vaddr_t orig_rvaddr;
 vsize_t orig_size;
 vm_map_t map;
 unsigned int mapv;
 vm_map_entry_t entry;
 vsize_t size;
};
void uvmfault_init(void);
boolean_t uvmfault_lookup(struct uvm_faultinfo *, boolean_t);
boolean_t uvmfault_relock(struct uvm_faultinfo *);
void uvmfault_unlockall(struct uvm_faultinfo *, struct vm_amap *,
      struct uvm_object *, struct vm_anon *);
int uvmfault_anonget(struct uvm_faultinfo *, struct vm_amap *,
      struct vm_anon *);
int uvm_fault_wire(vm_map_t, vaddr_t, vaddr_t, vm_prot_t);
void uvm_fault_unwire(vm_map_t, vaddr_t, vaddr_t);
void uvm_fault_unwire_locked(vm_map_t, vaddr_t, vaddr_t);
struct uvm_pagerops {
 void (*pgo_init)(void);
 void (*pgo_reference)(struct uvm_object *);
 void (*pgo_detach)(struct uvm_object *);
 int (*pgo_fault)(struct uvm_faultinfo *, vaddr_t,
     vm_page_t *, int, int, vm_fault_t,
     vm_prot_t, int);
 boolean_t (*pgo_flush)(struct uvm_object *, voff_t,
     voff_t, int);
 int (*pgo_get)(struct uvm_object *, voff_t,
     vm_page_t *, int *, int, vm_prot_t, int, int);
 int (*pgo_put)(struct uvm_object *, vm_page_t *,
     int, boolean_t);
 void (*pgo_cluster)(struct uvm_object *, voff_t,
     voff_t *, voff_t *);
 struct vm_page ** (*pgo_mk_pcluster)(struct uvm_object *,
     struct vm_page **, int *, struct vm_page *,
     int, voff_t, voff_t);
};
void uvm_pager_dropcluster(struct uvm_object *, struct vm_page *,
      struct vm_page **, int *, int);
void uvm_pager_init(void);
int uvm_pager_put(struct uvm_object *, struct vm_page *,
      struct vm_page ***, int *, int, voff_t, voff_t);
vaddr_t uvm_pagermapin(struct vm_page **, int, int);
void uvm_pagermapout(vaddr_t, int);
struct vm_page **uvm_mk_pcluster(struct uvm_object *, struct vm_page **,
      int *, struct vm_page *, int, voff_t, voff_t);
struct vmspace {
 struct vm_map vm_map;
 int vm_refcnt;
 caddr_t vm_shm;
 segsz_t vm_rssize;
 segsz_t vm_swrss;
 segsz_t vm_tsize;
 segsz_t vm_dsize;
 segsz_t vm_dused;
 segsz_t vm_ssize;
 caddr_t vm_taddr;
 caddr_t vm_daddr;
 caddr_t vm_maxsaddr;
 caddr_t vm_minsaddr;
};
struct uvm_constraint_range {
 paddr_t ucr_low;
 paddr_t ucr_high;
};
struct uvmexp {
 int pagesize;
 int pagemask;
 int pageshift;
 int npages;
 int free;
 int active;
 int inactive;
 int paging;
 int wired;
 int zeropages;
 int reserve_pagedaemon;
 int reserve_kernel;
 int anonpages;
 int vnodepages;
 int vtextpages;
 int freemin;
 int freetarg;
 int inactarg;
 int wiredmax;
 int anonmin;
 int vtextmin;
 int vnodemin;
 int anonminpct;
 int vtextminpct;
 int vnodeminpct;
 int nswapdev;
 int swpages;
 int swpginuse;
 int swpgonly;
 int nswget;
 int nanon;
 int nanonneeded;
 int nfreeanon;
 int faults;
 int traps;
 int intrs;
 int swtch;
 int softs;
 int syscalls;
 int pageins;
 int obsolete_swapins;
 int obsolete_swapouts;
 int pgswapin;
 int pgswapout;
 int forks;
 int forks_ppwait;
 int forks_sharevm;
 int pga_zerohit;
 int pga_zeromiss;
 int zeroaborts;
 int fltnoram;
 int fltnoanon;
 int fltnoamap;
 int fltpgwait;
 int fltpgrele;
 int fltrelck;
 int fltrelckok;
 int fltanget;
 int fltanretry;
 int fltamcopy;
 int fltnamap;
 int fltnomap;
 int fltlget;
 int fltget;
 int flt_anon;
 int flt_acow;
 int flt_obj;
 int flt_prcopy;
 int flt_przero;
 int pdwoke;
 int pdrevs;
 int pdswout;
 int pdfreed;
 int pdscans;
 int pdanscan;
 int pdobscan;
 int pdreact;
 int pdbusy;
 int pdpageouts;
 int pdpending;
 int pddeact;
 int pdreanon;
 int pdrevnode;
 int pdrevtext;
 int fpswtch;
 int kmapent;
};
struct _ps_strings {
 void *val;
};
extern struct uvmexp uvmexp;
extern struct uvm_constraint_range isa_constraint;
extern struct uvm_constraint_range dma_constraint;
extern struct uvm_constraint_range no_constraint;
extern struct uvm_constraint_range *uvm_md_constraints[];
extern struct pool *uvm_aiobuf_pool;
extern struct vm_map *exec_map;
extern struct vm_map *kernel_map;
extern struct vm_map *kmem_map;
extern struct vm_map *phys_map;
extern vaddr_t vm_min_kernel_address;
void vmapbuf(struct buf *, vsize_t);
void vunmapbuf(struct buf *, vsize_t);
struct uvm_object *uao_create(vsize_t, int);
void uao_detach(struct uvm_object *);
void uao_detach_locked(struct uvm_object *);
void uao_reference(struct uvm_object *);
void uao_reference_locked(struct uvm_object *);
int uvm_fault(vm_map_t, vaddr_t, vm_fault_t, vm_prot_t);
vaddr_t uvm_uarea_alloc(void);
void uvm_uarea_free(struct proc *);
void uvm_exit(struct process *);
void uvm_init_limits(struct proc *);
boolean_t uvm_kernacc(caddr_t, size_t, int);
int uvm_vslock(struct proc *, caddr_t, size_t,
       vm_prot_t);
void uvm_vsunlock(struct proc *, caddr_t, size_t);
int uvm_vslock_device(struct proc *, void *, size_t,
       vm_prot_t, void **);
void uvm_vsunlock_device(struct proc *, void *, size_t,
       void *);
void uvm_pause(void);
void uvm_init(void);
int uvm_io(vm_map_t, struct uio *, int);
vaddr_t uvm_km_alloc1(vm_map_t, vsize_t, vsize_t, boolean_t);
void uvm_km_free(vm_map_t, vaddr_t, vsize_t);
void uvm_km_free_wakeup(vm_map_t, vaddr_t, vsize_t);
vaddr_t uvm_km_kmemalloc_pla(struct vm_map *,
       struct uvm_object *, vsize_t, vsize_t, int,
       paddr_t, paddr_t, paddr_t, paddr_t, int);
vaddr_t uvm_km_valloc(vm_map_t, vsize_t);
vaddr_t uvm_km_valloc_try(vm_map_t, vsize_t);
vaddr_t uvm_km_valloc_wait(vm_map_t, vsize_t);
vaddr_t uvm_km_valloc_align(struct vm_map *, vsize_t,
       vsize_t, int);
vaddr_t uvm_km_valloc_prefer_wait(vm_map_t, vsize_t, voff_t);
struct vm_map *uvm_km_suballoc(vm_map_t, vaddr_t *, vaddr_t *,
       vsize_t, int, boolean_t, vm_map_t);
struct kmem_va_mode {
 struct vm_map **kv_map;
 vsize_t kv_align;
 char kv_wait;
 char kv_singlepage;
};
struct kmem_pa_mode {
 struct uvm_constraint_range *kp_constraint;
 struct uvm_object **kp_object;
 paddr_t kp_align;
 paddr_t kp_boundary;
 int kp_maxseg;
 char kp_nomem;
 char kp_zero;
 char kp_pageable;
};
struct kmem_dyn_mode {
 voff_t kd_prefer;
 int *kd_slowdown;
 char kd_waitok;
 char kd_trylock;
};
extern const struct kmem_va_mode kv_any;
extern const struct kmem_va_mode kv_intrsafe;
extern const struct kmem_va_mode kv_page;
extern const struct kmem_pa_mode kp_dirty;
extern const struct kmem_pa_mode kp_zero;
extern const struct kmem_pa_mode kp_dma;
extern const struct kmem_pa_mode kp_dma_contig;
extern const struct kmem_pa_mode kp_dma_zero;
extern const struct kmem_pa_mode kp_pageable;
extern const struct kmem_pa_mode kp_none;
extern const struct kmem_dyn_mode kd_waitok;
extern const struct kmem_dyn_mode kd_nowait;
extern const struct kmem_dyn_mode kd_trylock;
void *km_alloc(size_t, const struct kmem_va_mode *,
       const struct kmem_pa_mode *,
       const struct kmem_dyn_mode *);
void km_free(void *, size_t, const struct kmem_va_mode *,
       const struct kmem_pa_mode *);
int uvm_map(vm_map_t, vaddr_t *, vsize_t,
       struct uvm_object *, voff_t, vsize_t, unsigned int);
int uvm_mapanon(vm_map_t, vaddr_t *, vsize_t, vsize_t, unsigned int);
int uvm_map_pageable(vm_map_t, vaddr_t,
       vaddr_t, boolean_t, int);
int uvm_map_pageable_all(vm_map_t, int, vsize_t);
boolean_t uvm_map_checkprot(vm_map_t, vaddr_t,
       vaddr_t, vm_prot_t);
int uvm_map_protect(vm_map_t, vaddr_t,
       vaddr_t, vm_prot_t, boolean_t);
struct vmspace *uvmspace_alloc(vaddr_t, vaddr_t,
       boolean_t, boolean_t);
void uvmspace_init(struct vmspace *, struct pmap *,
       vaddr_t, vaddr_t, boolean_t, boolean_t);
void uvmspace_exec(struct proc *, vaddr_t, vaddr_t);
struct vmspace *uvmspace_fork(struct process *);
void uvmspace_free(struct vmspace *);
struct vmspace *uvmspace_share(struct process *);
int uvm_share(vm_map_t, vaddr_t, vm_prot_t,
       vm_map_t, vaddr_t, vsize_t);
void uvm_meter(void);
int uvm_sysctl(int *, u_int, void *, size_t *,
       void *, size_t, struct proc *);
struct vm_page *uvm_pagealloc(struct uvm_object *,
       voff_t, struct vm_anon *, int);
vaddr_t uvm_pagealloc_contig(vaddr_t, vaddr_t,
       vaddr_t, vaddr_t);
int uvm_pagealloc_multi(struct uvm_object *, voff_t,
           vsize_t, int);
void uvm_pagerealloc(struct vm_page *,
       struct uvm_object *, voff_t);
int uvm_pagerealloc_multi(struct uvm_object *, voff_t,
       vsize_t, int, struct uvm_constraint_range *);
void uvm_page_physload(paddr_t, paddr_t, paddr_t,
       paddr_t, int);
void uvm_setpagesize(void);
void uvm_shutdown(void);
void uvm_aio_biodone(struct buf *);
void uvm_aio_aiodone(struct buf *);
void uvm_pageout(void *);
void uvm_aiodone_daemon(void *);
void uvm_wait(const char *);
int uvm_pglistalloc(psize_t, paddr_t, paddr_t,
       paddr_t, paddr_t, struct pglist *, int, int);
void uvm_pglistfree(struct pglist *);
void uvm_pmr_use_inc(paddr_t, paddr_t);
void uvm_swap_init(void);
typedef int uvm_coredump_setup_cb(int _nsegment, void *_cookie);
typedef int uvm_coredump_walk_cb(vaddr_t _start, vaddr_t _realend,
       vaddr_t _end, vm_prot_t _prot, int _nsegment,
       void *_cookie);
int uvm_coredump_walkmap(struct proc *_p,
       uvm_coredump_setup_cb *_setup,
       uvm_coredump_walk_cb *_walk, void *_cookie);
void uvm_grow(struct proc *, vaddr_t);
void uvm_deallocate(vm_map_t, vaddr_t, vsize_t);
struct uvm_object *uvn_attach(struct vnode *, vm_prot_t);
void uvm_pagezero_thread(void *);
void kmeminit_nkmempages(void);
void kmeminit(void);
extern u_int nkmempages;
struct process;
struct kinfo_vmentry;
int fill_vmmap(struct process *, struct kinfo_vmentry *,
       size_t *);
typedef struct MD5Context {
 u_int32_t state[4];
 u_int64_t count;
 u_int8_t buffer[64];
} MD5_CTX;

void MD5Init(MD5_CTX *);
void MD5Update(MD5_CTX *, const void *, size_t)
  __attribute__((__bounded__(__string__,2,3)));
void MD5Final(u_int8_t [16], MD5_CTX *)
  __attribute__((__bounded__(__minbytes__,1,16)));
void MD5Transform(u_int32_t [4], const u_int8_t [64])
  __attribute__((__bounded__(__minbytes__,1,4)))
  __attribute__((__bounded__(__minbytes__,2,64)));

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
int ifconf(u_long, caddr_t);
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
extern struct taskq *softnettq;
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
struct hfsc_pktcntr {
 u_int64_t packets;
 u_int64_t bytes;
};
struct hfsc_sc {
 u_int m1;
 u_int d;
 u_int m2;
};
struct hfsc_class_stats {
 struct hfsc_pktcntr xmit_cnt;
 struct hfsc_pktcntr drop_cnt;
 u_int qlength;
 u_int qlimit;
 u_int period;
 u_int class_id;
 u_int32_t class_handle;
 struct hfsc_sc rsc;
 struct hfsc_sc fsc;
 struct hfsc_sc usc;
 u_int64_t total;
 u_int64_t cumul;
 u_int64_t d;
 u_int64_t e;
 u_int64_t vt;
 u_int64_t f;
 u_int64_t initvt;
 u_int64_t vtoff;
 u_int64_t cvtmax;
 u_int64_t myf;
 u_int64_t cfmin;
 u_int64_t cvtmin;
 u_int64_t myfadj;
 u_int64_t vtadj;
 u_int64_t cur_time;
 u_int32_t machclk_freq;
 u_int vtperiod;
 u_int parentperiod;
 int nactive;
 int qtype;
};
struct ifnet;
struct ifqueue;
struct pf_queuespec;
struct hfsc_if;
extern const struct ifq_ops * const ifq_hfsc_ops;
extern const struct pfq_ops * const pfq_hfsc_ops;
void hfsc_initialize(void);
u_int64_t hfsc_microuptime(void);
struct fqcodel_pktcntr {
 uint64_t packets;
 uint64_t bytes;
};
struct fqcodel_stats {
 struct fqcodel_pktcntr xmit_cnt;
 struct fqcodel_pktcntr drop_cnt;
 uint32_t qlength;
 uint32_t qlimit;
 uint32_t flows;
 uint32_t _unused;
 uint32_t target;
 uint32_t interval;
 uint64_t delaysum;
 uint64_t delaysumsq;
};
extern const struct ifq_ops * const ifq_fqcodel_ops;
extern const struct pfq_ops * const pfq_fqcodel_ops;
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
struct ip6q {
 struct { struct ip6q *tqe_next; struct ip6q **tqe_prev; } ip6q_queue;
 struct ip6asfrag_list { struct ip6asfrag *lh_first; } ip6q_asfrag;
 struct in6_addr ip6q_src, ip6q_dst;
 int ip6q_unfrglen;
 int ip6q_nfrag;
 u_int32_t ip6q_ident;
 u_int8_t ip6q_nxt;
 u_int8_t ip6q_ttl;
};
struct ip6asfrag {
 struct { struct ip6asfrag *le_next; struct ip6asfrag **le_prev; } ip6af_list;
 struct mbuf *ip6af_m;
 int ip6af_offset;
 int ip6af_frglen;
 int ip6af_off;
 u_int32_t ip6af_flow;
 u_int16_t ip6af_mff;
};
struct ip6_moptions {
 struct { struct in6_multi_mship *lh_first; } im6o_memberships;
 unsigned short im6o_ifidx;
 u_char im6o_hlim;
 u_char im6o_loop;
};
struct ip6po_rhinfo {
 struct ip6_rthdr *ip6po_rhi_rthdr;
 struct route_in6 ip6po_rhi_route;
};
struct ip6_pktopts {
 int ip6po_hlim;
 struct in6_pktinfo *ip6po_pktinfo;
 struct ip6_hbh *ip6po_hbh;
 struct ip6_dest *ip6po_dest1;
 struct ip6po_rhinfo ip6po_rhinfo;
 struct ip6_dest *ip6po_dest2;
 int ip6po_tclass;
 int ip6po_minmtu;
 int ip6po_flags;
};
struct ip6stat {
 u_int64_t ip6s_total;
 u_int64_t ip6s_tooshort;
 u_int64_t ip6s_toosmall;
 u_int64_t ip6s_fragments;
 u_int64_t ip6s_fragdropped;
 u_int64_t ip6s_fragtimeout;
 u_int64_t ip6s_fragoverflow;
 u_int64_t ip6s_forward;
 u_int64_t ip6s_cantforward;
 u_int64_t ip6s_redirectsent;
 u_int64_t ip6s_delivered;
 u_int64_t ip6s_localout;
 u_int64_t ip6s_odropped;
 u_int64_t ip6s_reassembled;
 u_int64_t ip6s_fragmented;
 u_int64_t ip6s_ofragments;
 u_int64_t ip6s_cantfrag;
 u_int64_t ip6s_badoptions;
 u_int64_t ip6s_noroute;
 u_int64_t ip6s_badvers;
 u_int64_t ip6s_rawout;
 u_int64_t ip6s_badscope;
 u_int64_t ip6s_notmember;
 u_int64_t ip6s_nxthist[256];
 u_int64_t ip6s_m1;
 u_int64_t ip6s_m2m[32];
 u_int64_t ip6s_mext1;
 u_int64_t ip6s_mext2m;
 u_int64_t ip6s_nogif;
 u_int64_t ip6s_toomanyhdr;
 u_int64_t ip6s_sources_none;
 u_int64_t ip6s_sources_sameif[16];
 u_int64_t ip6s_sources_otherif[16];
 u_int64_t ip6s_sources_samescope[16];
 u_int64_t ip6s_sources_otherscope[16];
 u_int64_t ip6s_sources_deprecated[16];
 u_int64_t ip6s_forward_cachehit;
 u_int64_t ip6s_forward_cachemiss;
};
enum ip6stat_counters {
 ip6s_total,
 ip6s_tooshort,
 ip6s_toosmall,
 ip6s_fragments,
 ip6s_fragdropped,
 ip6s_fragtimeout,
 ip6s_fragoverflow,
 ip6s_forward,
 ip6s_cantforward,
 ip6s_redirectsent,
 ip6s_delivered,
 ip6s_localout,
 ip6s_odropped,
 ip6s_reassembled,
 ip6s_fragmented,
 ip6s_ofragments,
 ip6s_cantfrag,
 ip6s_badoptions,
 ip6s_noroute,
 ip6s_badvers,
 ip6s_rawout,
 ip6s_badscope,
 ip6s_notmember,
 ip6s_nxthist,
 ip6s_m1 = ip6s_nxthist + 256,
 ip6s_m2m,
 ip6s_mext1 = ip6s_m2m + 32,
 ip6s_mext2m,
 ip6s_nogif,
 ip6s_toomanyhdr,
 ip6s_sources_none,
 ip6s_sources_sameif,
 ip6s_sources_otherif = ip6s_sources_sameif + 16,
 ip6s_sources_samescope = ip6s_sources_otherif + 16,
 ip6s_sources_otherscope = ip6s_sources_samescope + 16,
 ip6s_sources_deprecated = ip6s_sources_otherscope + 16,
 ip6s_forward_cachehit = ip6s_sources_deprecated + 16,
 ip6s_forward_cachemiss,
 ip6s_ncounters,
};
extern struct cpumem *ip6counters;
static inline void
ip6stat_inc(enum ip6stat_counters c)
{
 counters_inc(ip6counters, c);
}
static inline void
ip6stat_add(enum ip6stat_counters c, uint64_t v)
{
 counters_add(ip6counters, c, v);
}
extern int ip6_mtudisc_timeout;
extern struct rttimer_queue *icmp6_mtudisc_timeout_q;
extern int ip6_defhlim;
extern int ip6_defmcasthlim;
extern int ip6_forwarding;
extern int ip6_mforwarding;
extern int ip6_multipath;
extern int ip6_sendredirect;
extern int ip6_use_deprecated;
extern int ip6_mcast_pmtu;
extern int ip6_neighborgcthresh;
extern int ip6_maxdynroutes;
extern struct socket *ip6_mrouter[255];
extern int ip6_sendredirects;
extern int ip6_maxfragpackets;
extern int ip6_maxfrags;
extern int ip6_log_interval;
extern time_t ip6_log_time;
extern int ip6_hdrnestlimit;
extern int ip6_dad_count;
extern int ip6_dad_pending;
extern int ip6_auto_flowlabel;
extern int ip6_auto_linklocal;
struct in6pcb;
struct inpcb;
int icmp6_ctloutput(int, struct socket *, int, int, struct mbuf *);
void ip6_init(void);
void ip6intr(void);
int ip6_input_if(struct mbuf **, int *, int, int, struct ifnet *);
void ip6_freepcbopts(struct ip6_pktopts *);
void ip6_freemoptions(struct ip6_moptions *);
int ip6_unknown_opt(u_int8_t *, struct mbuf *, int);
u_int8_t *ip6_get_prevhdr(struct mbuf *, int);
int ip6_nexthdr(struct mbuf *, int, int, int *);
int ip6_lasthdr(struct mbuf *, int, int, int *);
int ip6_mforward(struct ip6_hdr *, struct ifnet *, struct mbuf *);
int ip6_process_hopopts(struct mbuf *, u_int8_t *, int, u_int32_t *,
      u_int32_t *);
void ip6_savecontrol(struct inpcb *, struct mbuf *, struct mbuf **);
int ip6_sysctl(int *, u_int, void *, size_t *, void *, size_t);
void ip6_forward(struct mbuf *, struct rtentry *, int);
void ip6_mloopback(struct ifnet *, struct mbuf *, struct sockaddr_in6 *);
int ip6_output(struct mbuf *, struct ip6_pktopts *, struct route_in6 *, int,
     struct ip6_moptions *, struct inpcb *);
int ip6_fragment(struct mbuf *, int, u_char, u_long);
int ip6_ctloutput(int, struct socket *, int, int, struct mbuf *);
int ip6_raw_ctloutput(int, struct socket *, int, int, struct mbuf *);
void ip6_initpktopts(struct ip6_pktopts *);
int ip6_setpktopts(struct mbuf *, struct ip6_pktopts *,
     struct ip6_pktopts *, int, int);
void ip6_clearpktopts(struct ip6_pktopts *, int);
void ip6_randomid_init(void);
u_int32_t ip6_randomid(void);
void ip6_send(struct mbuf *);
int route6_input(struct mbuf **, int *, int, int);
void frag6_init(void);
int frag6_input(struct mbuf **, int *, int, int);
int frag6_deletefraghdr(struct mbuf *, int);
void frag6_slowtimo(void);
void frag6_drain(void);
void rip6_init(void);
int rip6_input(struct mbuf **, int *, int, int);
void rip6_ctlinput(int, struct sockaddr *, u_int, void *);
int rip6_ctloutput(int, struct socket *, int, int, struct mbuf *);
int rip6_output(struct mbuf *, struct socket *, struct sockaddr *,
     struct mbuf *);
int rip6_usrreq(struct socket *,
     int, struct mbuf *, struct mbuf *, struct mbuf *, struct proc *);
int rip6_attach(struct socket *, int);
int rip6_sysctl(int *, u_int, void *, size_t *, void *, size_t);
int dest6_input(struct mbuf **, int *, int, int);
int none_input(struct mbuf **, int *, int);
int in6_pcbselsrc(struct in6_addr **, struct sockaddr_in6 *,
     struct inpcb *, struct ip6_pktopts *);
int in6_selectsrc(struct in6_addr **, struct sockaddr_in6 *,
     struct ip6_moptions *, unsigned int);
struct rtentry *in6_selectroute(struct sockaddr_in6 *, struct ip6_pktopts *,
     struct route_in6 *, unsigned int rtableid);
u_int32_t ip6_randomflowlabel(void);
struct tdb;
struct tdb *
 ip6_output_ipsec_lookup(struct mbuf *, int *, struct inpcb *);
int ip6_output_ipsec_send(struct tdb *, struct mbuf *, int, int);
struct icmp6_hdr {
 u_int8_t icmp6_type;
 u_int8_t icmp6_code;
 u_int16_t icmp6_cksum;
 union {
  u_int32_t icmp6_un_data32[1];
  u_int16_t icmp6_un_data16[2];
  u_int8_t icmp6_un_data8[4];
 } icmp6_dataun;
} __attribute__((__packed__));
struct mld_hdr {
 struct icmp6_hdr mld_icmp6_hdr;
 struct in6_addr mld_addr;
} __attribute__((__packed__));
struct nd_router_solicit {
 struct icmp6_hdr nd_rs_hdr;
} __attribute__((__packed__));
struct nd_router_advert {
 struct icmp6_hdr nd_ra_hdr;
 u_int32_t nd_ra_reachable;
 u_int32_t nd_ra_retransmit;
} __attribute__((__packed__));
struct nd_neighbor_solicit {
 struct icmp6_hdr nd_ns_hdr;
 struct in6_addr nd_ns_target;
} __attribute__((__packed__));
struct nd_neighbor_advert {
 struct icmp6_hdr nd_na_hdr;
 struct in6_addr nd_na_target;
} __attribute__((__packed__));
struct nd_redirect {
 struct icmp6_hdr nd_rd_hdr;
 struct in6_addr nd_rd_target;
 struct in6_addr nd_rd_dst;
} __attribute__((__packed__));
struct nd_opt_hdr {
 u_int8_t nd_opt_type;
 u_int8_t nd_opt_len;
} __attribute__((__packed__));
struct nd_opt_prefix_info {
 u_int8_t nd_opt_pi_type;
 u_int8_t nd_opt_pi_len;
 u_int8_t nd_opt_pi_prefix_len;
 u_int8_t nd_opt_pi_flags_reserved;
 u_int32_t nd_opt_pi_valid_time;
 u_int32_t nd_opt_pi_preferred_time;
 u_int32_t nd_opt_pi_reserved2;
 struct in6_addr nd_opt_pi_prefix;
} __attribute__((__packed__));
struct nd_opt_rd_hdr {
 u_int8_t nd_opt_rh_type;
 u_int8_t nd_opt_rh_len;
 u_int16_t nd_opt_rh_reserved1;
 u_int32_t nd_opt_rh_reserved2;
} __attribute__((__packed__));
struct nd_opt_mtu {
 u_int8_t nd_opt_mtu_type;
 u_int8_t nd_opt_mtu_len;
 u_int16_t nd_opt_mtu_reserved;
 u_int32_t nd_opt_mtu_mtu;
} __attribute__((__packed__));
struct nd_opt_route_info {
 u_int8_t nd_opt_rti_type;
 u_int8_t nd_opt_rti_len;
 u_int8_t nd_opt_rti_prefixlen;
 u_int8_t nd_opt_rti_flags;
 u_int32_t nd_opt_rti_lifetime;
} __attribute__((__packed__));
struct nd_opt_rdnss {
 u_int8_t nd_opt_rdnss_type;
 u_int8_t nd_opt_rdnss_len;
 u_int16_t nd_opt_rdnss_reserved;
 u_int32_t nd_opt_rdnss_lifetime;
} __attribute__((__packed__));
struct nd_opt_dnssl {
 u_int8_t nd_opt_dnssl_type;
 u_int8_t nd_opt_dnssl_len;
 u_int16_t nd_opt_dnssl_reserved;
 u_int32_t nd_opt_dnssl_lifetime;
} __attribute__((__packed__));
struct icmp6_namelookup {
 struct icmp6_hdr icmp6_nl_hdr;
 u_int8_t icmp6_nl_nonce[8];
 int32_t icmp6_nl_ttl;
} __attribute__((__packed__));
struct icmp6_nodeinfo {
 struct icmp6_hdr icmp6_ni_hdr;
 u_int8_t icmp6_ni_nonce[8];
} __attribute__((__packed__));
struct ni_reply_fqdn {
 u_int32_t ni_fqdn_ttl;
 u_int8_t ni_fqdn_namelen;
 u_int8_t ni_fqdn_name[3];
} __attribute__((__packed__));
struct icmp6_router_renum {
 struct icmp6_hdr rr_hdr;
 u_int8_t rr_segnum;
 u_int8_t rr_flags;
 u_int16_t rr_maxdelay;
 u_int32_t rr_reserved;
} __attribute__((__packed__));
struct rr_pco_match {
 u_int8_t rpm_code;
 u_int8_t rpm_len;
 u_int8_t rpm_ordinal;
 u_int8_t rpm_matchlen;
 u_int8_t rpm_minlen;
 u_int8_t rpm_maxlen;
 u_int16_t rpm_reserved;
 struct in6_addr rpm_prefix;
} __attribute__((__packed__));
struct rr_pco_use {
 u_int8_t rpu_uselen;
 u_int8_t rpu_keeplen;
 u_int8_t rpu_ramask;
 u_int8_t rpu_raflags;
 u_int32_t rpu_vltime;
 u_int32_t rpu_pltime;
 u_int32_t rpu_flags;
 struct in6_addr rpu_prefix;
} __attribute__((__packed__));
struct rr_result {
 u_int16_t rrr_flags;
 u_int8_t rrr_ordinal;
 u_int8_t rrr_matchedlen;
 u_int32_t rrr_ifid;
 struct in6_addr rrr_prefix;
} __attribute__((__packed__));
struct icmp6_filter {
 u_int32_t icmp6_filt[8];
};
struct icmp6stat {
 u_int64_t icp6s_error;
 u_int64_t icp6s_canterror;
 u_int64_t icp6s_toofreq;
 u_int64_t icp6s_outhist[256];
 u_int64_t icp6s_badcode;
 u_int64_t icp6s_tooshort;
 u_int64_t icp6s_checksum;
 u_int64_t icp6s_badlen;
 u_int64_t icp6s_reflect;
 u_int64_t icp6s_inhist[256];
 u_int64_t icp6s_nd_toomanyopt;
 u_int64_t icp6s_odst_unreach_noroute;
 u_int64_t icp6s_odst_unreach_admin;
 u_int64_t icp6s_odst_unreach_beyondscope;
 u_int64_t icp6s_odst_unreach_addr;
 u_int64_t icp6s_odst_unreach_noport;
 u_int64_t icp6s_opacket_too_big;
 u_int64_t icp6s_otime_exceed_transit;
 u_int64_t icp6s_otime_exceed_reassembly;
 u_int64_t icp6s_oparamprob_header;
 u_int64_t icp6s_oparamprob_nextheader;
 u_int64_t icp6s_oparamprob_option;
 u_int64_t icp6s_oredirect;
 u_int64_t icp6s_ounknown;
 u_int64_t icp6s_pmtuchg;
 u_int64_t icp6s_nd_badopt;
 u_int64_t icp6s_badns;
 u_int64_t icp6s_badna;
 u_int64_t icp6s_badrs;
 u_int64_t icp6s_badra;
 u_int64_t icp6s_badredirect;
};
enum icmp6stat_counters {
 icp6s_error,
 icp6s_canterror,
 icp6s_toofreq,
 icp6s_outhist,
 icp6s_badcode = icp6s_outhist + 256,
 icp6s_tooshort,
 icp6s_checksum,
 icp6s_badlen,
 icp6s_reflect,
 icp6s_inhist,
 icp6s_nd_toomanyopt = icp6s_inhist + 256,
 icp6s_odst_unreach_noroute,
 icp6s_odst_unreach_admin,
 icp6s_odst_unreach_beyondscope,
 icp6s_odst_unreach_addr,
 icp6s_odst_unreach_noport,
 icp6s_opacket_too_big,
 icp6s_otime_exceed_transit,
 icp6s_otime_exceed_reassembly,
 icp6s_oparamprob_header,
 icp6s_oparamprob_nextheader,
 icp6s_oparamprob_option,
 icp6s_oredirect,
 icp6s_ounknown,
 icp6s_pmtuchg,
 icp6s_nd_badopt,
 icp6s_badns,
 icp6s_badna,
 icp6s_badrs,
 icp6s_badra,
 icp6s_badredirect,
 icp6s_ncounters,
};
extern struct cpumem *icmp6counters;
static inline void
icmp6stat_inc(enum icmp6stat_counters c)
{
 counters_inc(icmp6counters, c);
}
struct rtentry;
struct rttimer;
struct in6_multi;
void icmp6_init(void);
void icmp6_paramerror(struct mbuf *, int);
void icmp6_error(struct mbuf *, int, int, int);
int icmp6_input(struct mbuf **, int *, int, int);
void icmp6_fasttimo(void);
void icmp6_reflect(struct mbuf *, size_t);
void icmp6_prepare(struct mbuf *);
void icmp6_redirect_input(struct mbuf *, int);
void icmp6_redirect_output(struct mbuf *, struct rtentry *);
int icmp6_sysctl(int *, u_int, void *, size_t *, void *, size_t);
struct ip6ctlparam;
void icmp6_mtudisc_update(struct ip6ctlparam *, int);
void icmp6_mtudisc_callback_register(void (*)(struct sockaddr_in6 *, u_int));
extern int icmp6_redirtimeout;
struct m_tag;
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
union sockaddr_union {
 struct sockaddr sa;
 struct sockaddr_in sin;
 struct sockaddr_in6 sin6;
};
struct sockaddr_encap {
 u_int8_t sen_len;
 u_int8_t sen_family;
 u_int16_t sen_type;
 union {
  struct {
   u_int8_t Direction;
   struct in_addr Src;
   struct in_addr Dst;
   u_int8_t Proto;
   u_int16_t Sport;
   u_int16_t Dport;
  } Sip4;
  struct {
   u_int8_t Direction;
   struct in6_addr Src;
   struct in6_addr Dst;
   u_int8_t Proto;
   u_int16_t Sport;
   u_int16_t Dport;
  } Sip6;
  struct ipsec_policy *PolicyHead;
 } Sen;
};
struct ipsec_id {
 u_int16_t type;
 int16_t len;
};
struct ipsec_ids {
 struct rb_entry id_node_id;
 struct rb_entry id_node_flow;
 struct ipsec_id *id_local;
 struct ipsec_id *id_remote;
 u_int32_t id_flow;
 int id_refcount;
 struct timeout id_timeout;
};
struct ipsec_ids_flows { struct rb_tree rbh_root; };
struct ipsec_ids_tree { struct rb_tree rbh_root; };
struct ipsec_acquire {
 union sockaddr_union ipa_addr;
 u_int32_t ipa_seq;
 struct sockaddr_encap ipa_info;
 struct sockaddr_encap ipa_mask;
 struct timeout ipa_timeout;
 struct ipsec_policy *ipa_policy;
 struct inpcb *ipa_pcb;
 struct { struct ipsec_acquire *tqe_next; struct ipsec_acquire **tqe_prev; } ipa_ipo_next;
 struct { struct ipsec_acquire *tqe_next; struct ipsec_acquire **tqe_prev; } ipa_next;
};
struct ipsec_policy {
 struct radix_node ipo_nodes[2];
 struct sockaddr_encap ipo_addr;
 struct sockaddr_encap ipo_mask;
 union sockaddr_union ipo_src;
 union sockaddr_union ipo_dst;
 u_int64_t ipo_last_searched;
 u_int8_t ipo_flags;
 u_int8_t ipo_type;
 u_int8_t ipo_sproto;
 u_int ipo_rdomain;
 int ipo_ref_count;
 struct tdb *ipo_tdb;
 struct ipsec_ids *ipo_ids;
 struct ipo_acquires_head { struct ipsec_acquire *tqh_first; struct ipsec_acquire **tqh_last; } ipo_acquires;
 struct { struct ipsec_policy *tqe_next; struct ipsec_policy **tqe_prev; } ipo_tdb_next;
 struct { struct ipsec_policy *tqe_next; struct ipsec_policy **tqe_prev; } ipo_list;
};
struct tdb {
 struct tdb *tdb_hnext;
 struct tdb *tdb_dnext;
 struct tdb *tdb_snext;
 struct tdb *tdb_inext;
 struct tdb *tdb_onext;
 struct xformsw *tdb_xform;
 struct enc_xform *tdb_encalgxform;
 struct auth_hash *tdb_authalgxform;
 struct comp_algo *tdb_compalgxform;
 u_int32_t tdb_flags;
 struct timeout tdb_timer_tmo;
 struct timeout tdb_first_tmo;
 struct timeout tdb_stimer_tmo;
 struct timeout tdb_sfirst_tmo;
 u_int32_t tdb_seq;
 u_int32_t tdb_exp_allocations;
 u_int32_t tdb_soft_allocations;
 u_int32_t tdb_cur_allocations;
 u_int64_t tdb_exp_bytes;
 u_int64_t tdb_soft_bytes;
 u_int64_t tdb_cur_bytes;
 u_int64_t tdb_exp_timeout;
 u_int64_t tdb_soft_timeout;
 u_int64_t tdb_established;
 u_int64_t tdb_first_use;
 u_int64_t tdb_soft_first_use;
 u_int64_t tdb_exp_first_use;
 u_int64_t tdb_last_used;
 u_int64_t tdb_last_marked;
 u_int64_t tdb_cryptoid;
 u_int32_t tdb_spi;
 u_int16_t tdb_amxkeylen;
 u_int16_t tdb_emxkeylen;
 u_int16_t tdb_ivlen;
 u_int8_t tdb_sproto;
 u_int8_t tdb_wnd;
 u_int8_t tdb_satype;
 u_int8_t tdb_updates;
 union sockaddr_union tdb_dst;
 union sockaddr_union tdb_src;
 u_int8_t *tdb_amxkey;
 u_int8_t *tdb_emxkey;
 u_int64_t tdb_rpl;
 u_int32_t tdb_seen[((((2100+32)) + ((32) - 1)) / (32))];
 u_int8_t tdb_iv[4];
 struct ipsec_ids *tdb_ids;
 int tdb_ids_swapped;
 u_int32_t tdb_mtu;
 u_int64_t tdb_mtutimeout;
 u_int16_t tdb_udpencap_port;
 u_int16_t tdb_tag;
 u_int32_t tdb_tap;
 u_int tdb_rdomain;
 struct sockaddr_encap tdb_filter;
 struct sockaddr_encap tdb_filtermask;
 struct tdb_policy_head { struct ipsec_policy *tqh_first; struct ipsec_policy **tqh_last; } tdb_policy_head;
 struct { struct tdb *tqe_next; struct tdb **tqe_prev; } tdb_sync_entry;
};
struct tdb_ident {
 u_int32_t spi;
 union sockaddr_union dst;
 u_int8_t proto;
 u_int rdomain;
};
struct tdb_crypto {
 u_int32_t tc_spi;
 union sockaddr_union tc_dst;
 u_int8_t tc_proto;
 int tc_protoff;
 int tc_skip;
 u_int tc_rdomain;
};
struct ipsecinit {
 u_int8_t *ii_enckey;
 u_int8_t *ii_authkey;
 u_int16_t ii_enckeylen;
 u_int16_t ii_authkeylen;
 u_int8_t ii_encalg;
 u_int8_t ii_authalg;
 u_int8_t ii_compalg;
};
struct xformsw {
 u_short xf_type;
 u_short xf_flags;
 char *xf_name;
 int (*xf_attach)(void);
 int (*xf_init)(struct tdb *, struct xformsw *, struct ipsecinit *);
 int (*xf_zeroize)(struct tdb *);
 int (*xf_input)(struct mbuf *, struct tdb *, int, int);
 int (*xf_output)(struct mbuf *, struct tdb *, struct mbuf **,
     int, int);
};
extern int ipsec_in_use;
extern u_int64_t ipsec_last_added;
extern int ipsec_policy_pool_initialized;
extern int ipsec_keep_invalid;
extern int ipsec_require_pfs;
extern int ipsec_expire_acquire;
extern int ipsec_soft_allocations;
extern int ipsec_exp_allocations;
extern int ipsec_soft_bytes;
extern int ipsec_exp_bytes;
extern int ipsec_soft_timeout;
extern int ipsec_exp_timeout;
extern int ipsec_soft_first_use;
extern int ipsec_exp_first_use;
extern char ipsec_def_enc[];
extern char ipsec_def_auth[];
extern char ipsec_def_comp[];
extern struct enc_xform enc_xform_des;
extern struct enc_xform enc_xform_3des;
extern struct enc_xform enc_xform_blf;
extern struct enc_xform enc_xform_cast5;
extern struct auth_hash auth_hash_hmac_md5_96;
extern struct auth_hash auth_hash_hmac_sha1_96;
extern struct auth_hash auth_hash_hmac_ripemd_160_96;
extern struct comp_algo comp_algo_deflate;
extern struct ipsec_policy_head { struct ipsec_policy *tqh_first; struct ipsec_policy **tqh_last; } ipsec_policy_head;
struct radix_node_head *spd_table_add(unsigned int);
struct radix_node_head *spd_table_get(unsigned int);
int spd_table_walk(unsigned int,
    int (*walker)(struct ipsec_policy *, void *, unsigned int), void *);
uint32_t reserve_spi(u_int, u_int32_t, u_int32_t, union sockaddr_union *,
  union sockaddr_union *, u_int8_t, int *);
struct tdb *gettdb(u_int, u_int32_t, union sockaddr_union *, u_int8_t);
struct tdb *gettdbbydst(u_int, union sockaddr_union *, u_int8_t,
  struct ipsec_ids *,
  struct sockaddr_encap *, struct sockaddr_encap *);
struct tdb *gettdbbysrc(u_int, union sockaddr_union *, u_int8_t,
  struct ipsec_ids *,
  struct sockaddr_encap *, struct sockaddr_encap *);
struct tdb *gettdbbysrcdst(u_int, u_int32_t, union sockaddr_union *,
  union sockaddr_union *, u_int8_t);
void puttdb(struct tdb *);
void tdb_delete(struct tdb *);
struct tdb *tdb_alloc(u_int);
void tdb_free(struct tdb *);
int tdb_init(struct tdb *, u_int16_t, struct ipsecinit *);
void tdb_unlink(struct tdb *);
int tdb_walk(u_int, int (*)(struct tdb *, void *, int), void *);
int ipe4_attach(void);
int ipe4_init(struct tdb *, struct xformsw *, struct ipsecinit *);
int ipe4_zeroize(struct tdb *);
int ipe4_input(struct mbuf *, struct tdb *, int, int);
int ah_attach(void);
int ah_init(struct tdb *, struct xformsw *, struct ipsecinit *);
int ah_zeroize(struct tdb *);
int ah_input(struct mbuf *, struct tdb *, int, int);
int ah_output(struct mbuf *, struct tdb *, struct mbuf **, int, int);
int ah_sysctl(int *, u_int, void *, size_t *, void *, size_t);
int ah4_input(struct mbuf **, int *, int, int);
void ah4_ctlinput(int, struct sockaddr *, u_int, void *);
void udpencap_ctlinput(int, struct sockaddr *, u_int, void *);
int ah6_input(struct mbuf **, int *, int, int);
int esp_attach(void);
int esp_init(struct tdb *, struct xformsw *, struct ipsecinit *);
int esp_zeroize(struct tdb *);
int esp_input(struct mbuf *, struct tdb *, int, int);
int esp_output(struct mbuf *, struct tdb *, struct mbuf **, int, int);
int esp_sysctl(int *, u_int, void *, size_t *, void *, size_t);
int esp4_input(struct mbuf **, int *, int, int);
void esp4_ctlinput(int, struct sockaddr *, u_int, void *);
int esp6_input(struct mbuf **, int *, int, int);
int ipcomp_attach(void);
int ipcomp_init(struct tdb *, struct xformsw *, struct ipsecinit *);
int ipcomp_zeroize(struct tdb *);
int ipcomp_input(struct mbuf *, struct tdb *, int, int);
int ipcomp_output(struct mbuf *, struct tdb *, struct mbuf **, int, int);
int ipcomp_sysctl(int *, u_int, void *, size_t *, void *, size_t);
int ipcomp4_input(struct mbuf **, int *, int, int);
int ipcomp6_input(struct mbuf **, int *, int, int);
int tcp_signature_tdb_attach(void);
int tcp_signature_tdb_init(struct tdb *, struct xformsw *,
     struct ipsecinit *);
int tcp_signature_tdb_zeroize(struct tdb *);
int tcp_signature_tdb_input(struct mbuf *, struct tdb *, int, int);
int tcp_signature_tdb_output(struct mbuf *, struct tdb *, struct mbuf **,
   int, int);
int checkreplaywindow(struct tdb *, u_int32_t, u_int32_t *, int);
int ipsp_process_packet(struct mbuf *, struct tdb *, int, int);
int ipsp_process_done(struct mbuf *, struct tdb *);
struct tdb *ipsp_spd_lookup(struct mbuf *, int, int, int *, int,
     struct tdb *, struct inpcb *, u_int32_t);
struct tdb *ipsp_spd_inp(struct mbuf *, int, int, int *, int,
     struct tdb *, struct inpcb *, struct ipsec_policy *);
int ipsp_is_unspecified(union sockaddr_union);
int ipsp_aux_match(struct tdb *, struct ipsec_ids *,
     struct sockaddr_encap *, struct sockaddr_encap *);
int ipsp_ids_match(struct ipsec_ids *, struct ipsec_ids *);
struct ipsec_ids *ipsp_ids_insert(struct ipsec_ids *);
struct ipsec_ids *ipsp_ids_lookup(u_int32_t);
void ipsp_ids_free(struct ipsec_ids *);
int ipsec_common_input(struct mbuf *, int, int, int, int, int);
void ipsec_common_input_cb(struct mbuf *, struct tdb *, int, int);
int ipsec_delete_policy(struct ipsec_policy *);
ssize_t ipsec_hdrsz(struct tdb *);
void ipsec_adjust_mtu(struct mbuf *, u_int32_t);
struct ipsec_acquire *ipsec_get_acquire(u_int32_t);
int ipsec_forward_check(struct mbuf *, int, int);
int ipsec_local_check(struct mbuf *, int, int, int);
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
struct pf_state_key;
union inpaddru {
 struct in6_addr iau_addr6;
 struct {
  uint8_t pad[12];
  struct in_addr inaddr;
 } iau_a4u;
};
struct inpcb {
 struct { struct inpcb *le_next; struct inpcb **le_prev; } inp_hash;
 struct { struct inpcb *le_next; struct inpcb **le_prev; } inp_lhash;
 struct { struct inpcb *tqe_next; struct inpcb **tqe_prev; } inp_queue;
 struct inpcbtable *inp_table;
 union inpaddru inp_faddru;
 union inpaddru inp_laddru;
 u_int16_t inp_fport;
 u_int16_t inp_lport;
 struct socket *inp_socket;
 caddr_t inp_ppcb;
 union {
  struct route ru_route;
  struct route_in6 ru_route6;
 } inp_ru;
 int inp_flags;
 union {
  struct ip hu_ip;
  struct ip6_hdr hu_ipv6;
 } inp_hu;
 struct mbuf *inp_options;
 struct ip6_pktopts *inp_outputopts6;
 int inp_hops;
 union {
  struct ip_moptions *mou_mo;
  struct ip6_moptions *mou_mo6;
 } inp_mou;
 u_char inp_seclevel[4];
 u_char inp_ip_minttl;
 int inp_cksum6;
 struct icmp6_filter *inp_icmp6filt;
 struct pf_state_key *inp_pf_sk;
 u_int inp_rtableid;
 int inp_pipex;
};
struct inpcbhead { struct inpcb *lh_first; };
struct inpcbtable {
 struct inpthead { struct inpcb *tqh_first; struct inpcb **tqh_last; } inpt_queue;
 struct inpcbhead *inpt_hashtbl, *inpt_lhashtbl;
 SIPHASH_KEY inpt_key;
 u_long inpt_hash, inpt_lhash;
 int inpt_count;
};
struct baddynamicports {
 u_int32_t tcp[((((65536) + (((sizeof(u_int32_t) * 8)) - 1)) / ((sizeof(u_int32_t) * 8))))];
 u_int32_t udp[((((65536) + (((sizeof(u_int32_t) * 8)) - 1)) / ((sizeof(u_int32_t) * 8))))];
};
extern struct baddynamicports baddynamicports;
extern struct baddynamicports rootonlyports;
void in_losing(struct inpcb *);
int in_pcballoc(struct socket *, struct inpcbtable *);
int in_pcbbind(struct inpcb *, struct mbuf *, struct proc *);
int in_pcbaddrisavail(struct inpcb *, struct sockaddr_in *, int,
     struct proc *);
int in_pcbconnect(struct inpcb *, struct mbuf *);
void in_pcbdetach(struct inpcb *);
void in_pcbdisconnect(struct inpcb *);
struct inpcb *
  in_pcbhashlookup(struct inpcbtable *, struct in_addr,
          u_int, struct in_addr, u_int, u_int);
struct inpcb *
  in_pcblookup_listen(struct inpcbtable *, struct in_addr, u_int, int,
     struct mbuf *, u_int);
struct inpcb *
  in6_pcbhashlookup(struct inpcbtable *, const struct in6_addr *,
          u_int, const struct in6_addr *, u_int, u_int);
struct inpcb *
  in6_pcblookup_listen(struct inpcbtable *,
          struct in6_addr *, u_int, int, struct mbuf *,
          u_int);
int in6_pcbaddrisavail(struct inpcb *, struct sockaddr_in6 *, int,
     struct proc *);
int in6_pcbconnect(struct inpcb *, struct mbuf *);
int in6_setsockaddr(struct inpcb *, struct mbuf *);
int in6_setpeeraddr(struct inpcb *, struct mbuf *);
void in_pcbinit(struct inpcbtable *, int);
struct inpcb *
  in_pcblookup_local(struct inpcbtable *, void *, u_int, int, u_int);
void in_pcbnotifyall(struct inpcbtable *, struct sockaddr *,
     u_int, int, void (*)(struct inpcb *, int));
void in_pcbrehash(struct inpcb *);
void in_rtchange(struct inpcb *, int);
void in_setpeeraddr(struct inpcb *, struct mbuf *);
void in_setsockaddr(struct inpcb *, struct mbuf *);
int in_baddynamic(u_int16_t, u_int16_t);
int in_rootonly(u_int16_t, u_int16_t);
int in_pcbselsrc(struct in_addr **, struct sockaddr_in *, struct inpcb *);
struct rtentry *
 in_pcbrtentry(struct inpcb *);
int in6_pcbnotify(struct inpcbtable *, struct sockaddr_in6 *,
 u_int, const struct sockaddr_in6 *, u_int, u_int, int, void *,
 void (*)(struct inpcb *, int));
int in6_selecthlim(struct inpcb *);
int in_pcbpickport(u_int16_t *, void *, int, struct inpcb *, struct proc *);
struct ipovly {
 u_int8_t ih_x1[9];
 u_int8_t ih_pr;
 u_int16_t ih_len;
 struct in_addr ih_src;
 struct in_addr ih_dst;
};
struct ipstat {
 u_long ips_total;
 u_long ips_badsum;
 u_long ips_tooshort;
 u_long ips_toosmall;
 u_long ips_badhlen;
 u_long ips_badlen;
 u_long ips_fragments;
 u_long ips_fragdropped;
 u_long ips_fragtimeout;
 u_long ips_forward;
 u_long ips_cantforward;
 u_long ips_redirectsent;
 u_long ips_noproto;
 u_long ips_delivered;
 u_long ips_localout;
 u_long ips_odropped;
 u_long ips_reassembled;
 u_long ips_fragmented;
 u_long ips_ofragments;
 u_long ips_cantfrag;
 u_long ips_badoptions;
 u_long ips_noroute;
 u_long ips_badvers;
 u_long ips_rawout;
 u_long ips_badfrags;
 u_long ips_rcvmemdrop;
 u_long ips_toolong;
 u_long ips_nogif;
 u_long ips_badaddr;
 u_long ips_inswcsum;
 u_long ips_outswcsum;
 u_long ips_notmember;
};
struct ipoption {
 struct in_addr ipopt_dst;
 int8_t ipopt_list[40];
};
enum ipstat_counters {
 ips_total,
 ips_badsum,
 ips_tooshort,
 ips_toosmall,
 ips_badhlen,
 ips_badlen,
 ips_fragments,
 ips_fragdropped,
 ips_fragtimeout,
 ips_forward,
 ips_cantforward,
 ips_redirectsent,
 ips_noproto,
 ips_delivered,
 ips_localout,
 ips_odropped,
 ips_reassembled,
 ips_fragmented,
 ips_ofragments,
 ips_cantfrag,
 ips_badoptions,
 ips_noroute,
 ips_badvers,
 ips_rawout,
 ips_badfrags,
 ips_rcvmemdrop,
 ips_toolong,
 ips_nogif,
 ips_badaddr,
 ips_inswcsum,
 ips_outswcsum,
 ips_notmember,
 ips_ncounters
};
extern struct cpumem *ipcounters;
static inline void
ipstat_inc(enum ipstat_counters c)
{
 counters_inc(ipcounters, c);
}
struct ip_moptions {
 struct in_multi **imo_membership;
 unsigned short imo_ifidx;
 u_int8_t imo_ttl;
 u_int8_t imo_loop;
 u_int16_t imo_num_memberships;
 u_int16_t imo_max_memberships;
};
struct ipqehead { struct ipqent *lh_first; };
struct ipqent {
 struct { struct ipqent *le_next; struct ipqent **le_prev; } ipqe_q;
 struct ip *ipqe_ip;
 struct mbuf *ipqe_m;
 u_int8_t ipqe_mff;
};
struct ipq {
 struct { struct ipq *le_next; struct ipq **le_prev; } ipq_q;
 u_int8_t ipq_ttl;
 u_int8_t ipq_p;
 u_int16_t ipq_id;
 struct ipqehead ipq_fragq;
 struct in_addr ipq_src, ipq_dst;
};
extern struct ipstat ipstat;
extern int ip_defttl;
extern int ip_mtudisc;
extern u_int ip_mtudisc_timeout;
extern int ipport_firstauto;
extern int ipport_lastauto;
extern int ipport_hifirstauto;
extern int ipport_hilastauto;
extern int encdebug;
extern int ipforwarding;
extern int ipmforwarding;
extern int ipmultipath;
extern int la_hold_total;
extern struct rttimer_queue *ip_mtudisc_timeout_q;
extern struct pool ipqent_pool;
struct route;
struct inpcb;
int ip_ctloutput(int, struct socket *, int, int, struct mbuf *);
void ip_drain(void);
void ip_flush(void);
int ip_fragment(struct mbuf *, struct ifnet *, u_long);
void ip_freef(struct ipq *);
void ip_freemoptions(struct ip_moptions *);
int ip_getmoptions(int, struct ip_moptions *, struct mbuf *);
void ip_init(void);
struct mbuf*
  ip_insertoptions(struct mbuf *, struct mbuf *, int *);
int ip_mforward(struct mbuf *, struct ifnet *);
int ip_optcopy(struct ip *, struct ip *);
int ip_output(struct mbuf *, struct mbuf *, struct route *, int,
     struct ip_moptions *, struct inpcb *, u_int32_t);
struct mbuf *
  ip_reass(struct ipqent *, struct ipq *);
u_int16_t
  ip_randomid(void);
void ip_send(struct mbuf *);
void ip_slowtimo(void);
struct mbuf *
  ip_srcroute(struct mbuf *);
void ip_stripoptions(struct mbuf *);
int ip_sysctl(int *, u_int, void *, size_t *, void *, size_t);
void ip_savecontrol(struct inpcb *, struct mbuf **, struct ip *,
     struct mbuf *);
void ipintr(void);
int ip_input_if(struct mbuf **, int *, int, int, struct ifnet *);
int ip_deliver(struct mbuf **, int *, int, int);
void ip_forward(struct mbuf *, struct ifnet *, struct rtentry *, int);
int rip_ctloutput(int, struct socket *, int, int, struct mbuf *);
void rip_init(void);
int rip_input(struct mbuf **, int *, int, int);
int rip_output(struct mbuf *, struct socket *, struct sockaddr *,
     struct mbuf *);
int rip_usrreq(struct socket *,
     int, struct mbuf *, struct mbuf *, struct mbuf *, struct proc *);
int rip_attach(struct socket *, int);
extern struct socket *ip_mrouter[];
struct icmp_ra_addr {
 u_int32_t ira_addr;
 u_int32_t ira_preference;
};
struct icmp {
 u_int8_t icmp_type;
 u_int8_t icmp_code;
 u_int16_t icmp_cksum;
 union {
  u_int8_t ih_pptr;
  struct ih_exthdr {
   u_int8_t iex_pad;
   u_int8_t iex_length;
  } ih_exthdr;
  struct in_addr ih_gwaddr;
  struct ih_idseq {
     u_int16_t icd_id;
     u_int16_t icd_seq;
  } ih_idseq;
  int32_t ih_void;
  struct ih_pmtu {
     u_int16_t ipm_void;
     u_int16_t ipm_nextmtu;
  } ih_pmtu;
  struct ih_rtradv {
   u_int8_t irt_num_addrs;
   u_int8_t irt_wpa;
   u_int16_t irt_lifetime;
  } ih_rtradv;
 } icmp_hun;
 union {
  struct id_ts {
     u_int32_t its_otime;
     u_int32_t its_rtime;
     u_int32_t its_ttime;
  } id_ts;
  struct id_ip {
     struct ip idi_ip;
  } id_ip;
  u_int32_t id_mask;
  int8_t id_data[1];
 } icmp_dun;
};
struct icmp_ext_hdr {
 u_int8_t ieh_version;
 u_int8_t ieh_res;
 u_int16_t ieh_cksum;
};
struct icmp_ext_obj_hdr {
 u_int16_t ieo_length;
 u_int8_t ieo_cnum;
 u_int8_t ieo_ctype;
};
struct mbuf *
 icmp_do_error(struct mbuf *, int, int, u_int32_t, int);
void icmp_error(struct mbuf *, int, int, u_int32_t, int);
int icmp_input(struct mbuf **, int *, int, int);
void icmp_init(void);
int icmp_reflect(struct mbuf *, struct mbuf **, struct in_ifaddr *);
void icmp_send(struct mbuf *, struct mbuf *);
int icmp_sysctl(int *, u_int, void *, size_t *, void *, size_t);
struct rtentry *
 icmp_mtudisc_clone(struct in_addr, u_int);
void icmp_mtudisc(struct icmp *, u_int);
int icmp_do_exthdr(struct mbuf *, u_int16_t, u_int8_t, void *, size_t);
typedef u_int32_t tcp_seq;
struct tcphdr {
 u_int16_t th_sport;
 u_int16_t th_dport;
 tcp_seq th_seq;
 tcp_seq th_ack;
 u_int32_t th_off:4,
    th_x2:4;
 u_int8_t th_flags;
 u_int16_t th_win;
 u_int16_t th_sum;
 u_int16_t th_urp;
};
struct udphdr {
 u_int16_t uh_sport;
 u_int16_t uh_dport;
 u_int16_t uh_ulen;
 u_int16_t uh_sum;
};
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
extern struct rwlock pf_lock;
struct pf_pdesc {
 struct {
  int done;
  uid_t uid;
  gid_t gid;
  pid_t pid;
 } lookup;
 u_int64_t tot_len;
 struct pf_addr nsaddr;
 struct pf_addr ndaddr;
 struct pfi_kif *kif;
 struct mbuf *m;
 struct pf_addr *src;
 struct pf_addr *dst;
 u_int16_t *pcksum;
 u_int16_t *sport;
 u_int16_t *dport;
 u_int16_t osport;
 u_int16_t odport;
 u_int16_t nsport;
 u_int16_t ndport;
 u_int32_t off;
 u_int32_t hdrlen;
 u_int32_t p_len;
 u_int32_t extoff;
 u_int32_t fragoff;
 u_int32_t jumbolen;
 u_int32_t badopts;
 u_int16_t rdomain;
 u_int16_t virtual_proto;
 sa_family_t af;
 sa_family_t naf;
 u_int8_t proto;
 u_int8_t tos;
 u_int8_t ttl;
 u_int8_t dir;
 u_int8_t sidx;
 u_int8_t didx;
 u_int8_t destchg;
 u_int8_t pflog;
 union {
  struct tcphdr tcp;
  struct udphdr udp;
  struct icmp icmp;
  struct icmp6_hdr icmp6;
  struct mld_hdr mld;
  struct nd_neighbor_solicit nd_ns;
 } hdr;
};
extern struct task pf_purge_task;
extern struct timeout pf_purge_to;
extern void pf_purge_timeout(void *);
extern void pf_purge(void *);
struct pfsync_header {
 u_int8_t version;
 u_int8_t _pad;
 u_int16_t len;
 u_int8_t pfcksum[16];
} __attribute__((__packed__));
struct pfsync_subheader {
 u_int8_t action;
 u_int8_t len;
 u_int16_t count;
} __attribute__((__packed__));
struct pfsync_clr {
 char ifname[16];
 u_int32_t creatorid;
} __attribute__((__packed__));
struct pfsync_ins_ack {
 u_int64_t id;
 u_int32_t creatorid;
} __attribute__((__packed__));
struct pfsync_upd_c {
 u_int64_t id;
 struct pfsync_state_peer src;
 struct pfsync_state_peer dst;
 u_int32_t creatorid;
 u_int32_t expire;
 u_int8_t timeout;
 u_int8_t state_flags;
 u_int8_t _pad[2];
} __attribute__((__packed__));
struct pfsync_upd_req {
 u_int64_t id;
 u_int32_t creatorid;
} __attribute__((__packed__));
struct pfsync_del_c {
 u_int64_t id;
 u_int32_t creatorid;
} __attribute__((__packed__));
struct pfsync_bus {
 u_int32_t creatorid;
 u_int32_t endtime;
 u_int8_t status;
 u_int8_t _pad[3];
} __attribute__((__packed__));
struct pfsync_tdb {
 u_int32_t spi;
 union sockaddr_union dst;
 u_int64_t rpl;
 u_int64_t cur_bytes;
 u_int8_t sproto;
 u_int8_t updates;
 u_int16_t rdomain;
} __attribute__((__packed__));
struct pfsyncstats {
 u_int64_t pfsyncs_ipackets;
 u_int64_t pfsyncs_ipackets6;
 u_int64_t pfsyncs_badif;
 u_int64_t pfsyncs_badttl;
 u_int64_t pfsyncs_hdrops;
 u_int64_t pfsyncs_badver;
 u_int64_t pfsyncs_badact;
 u_int64_t pfsyncs_badlen;
 u_int64_t pfsyncs_badauth;
 u_int64_t pfsyncs_stale;
 u_int64_t pfsyncs_badval;
 u_int64_t pfsyncs_badstate;
 u_int64_t pfsyncs_opackets;
 u_int64_t pfsyncs_opackets6;
 u_int64_t pfsyncs_onomem;
 u_int64_t pfsyncs_oerrors;
};
struct pfsyncreq {
 char pfsyncr_syncdev[16];
 struct in_addr pfsyncr_syncpeer;
 int pfsyncr_maxupdates;
 int pfsyncr_defer;
};
enum pfsync_counters {
 pfsyncs_ipackets,
 pfsyncs_ipackets6,
 pfsyncs_badif,
 pfsyncs_badttl,
 pfsyncs_hdrops,
 pfsyncs_badver,
 pfsyncs_badact,
 pfsyncs_badlen,
 pfsyncs_badauth,
 pfsyncs_stale,
 pfsyncs_badval,
 pfsyncs_badstate,
 pfsyncs_opackets,
 pfsyncs_opackets6,
 pfsyncs_onomem,
 pfsyncs_oerrors,
 pfsyncs_ncounters,
};
extern struct cpumem *pfsynccounters;
static inline void
pfsyncstat_inc(enum pfsync_counters c)
{
 counters_inc(pfsynccounters, c);
}
int pfsync_input(struct mbuf **, int *, int, int);
int pfsync_sysctl(int *, u_int, void *, size_t *,
       void *, size_t);
int pfsync_state_import(struct pfsync_state *, int);
void pfsync_state_export(struct pfsync_state *,
       struct pf_state *);
void pfsync_insert_state(struct pf_state *);
void pfsync_update_state(struct pf_state *);
void pfsync_delete_state(struct pf_state *);
void pfsync_clear_states(u_int32_t, const char *);
void pfsync_update_tdb(struct tdb *, int);
void pfsync_delete_tdb(struct tdb *);
int pfsync_defer(struct pf_state *, struct mbuf *);
int pfsync_up(void);
int pfsync_state_in_use(struct pf_state *);
struct pool pf_tag_pl;
void pfattach(int);
void pf_thread_create(void *);
int pfopen(dev_t, int, int, struct proc *);
int pfclose(dev_t, int, int, struct proc *);
int pfioctl(dev_t, u_long, caddr_t, int, struct proc *);
int pf_begin_rules(u_int32_t *, const char *);
int pf_rollback_rules(u_int32_t, char *);
void pf_remove_queues(void);
int pf_commit_queues(void);
void pf_free_queues(struct pf_queuehead *);
int pf_setup_pfsync_matching(struct pf_ruleset *);
void pf_hash_rule(MD5_CTX *, struct pf_rule *);
void pf_hash_rule_addr(MD5_CTX *, struct pf_rule_addr *);
int pf_commit_rules(u_int32_t, char *);
int pf_addr_setup(struct pf_ruleset *,
       struct pf_addr_wrap *, sa_family_t);
int pf_kif_setup(char *, struct pfi_kif **);
void pf_addr_copyout(struct pf_addr_wrap *);
void pf_trans_set_commit(void);
void pf_pool_copyin(struct pf_pool *, struct pf_pool *);
int pf_rule_copyin(struct pf_rule *, struct pf_rule *,
       struct pf_ruleset *);
u_int16_t pf_qname2qid(char *, int);
void pf_qid2qname(u_int16_t, char *);
void pf_qid_unref(u_int16_t);
struct pf_rule pf_default_rule, pf_default_rule_new;
struct {
 char statusif[16];
 u_int32_t debug;
 u_int32_t hostid;
 u_int32_t reass;
 u_int32_t mask;
} pf_trans_set;
struct pf_tags { struct pf_tagname *tqh_first; struct pf_tagname **tqh_last; } pf_tags = { ((void *)0), &(pf_tags).tqh_first },
    pf_qids = { ((void *)0), &(pf_qids).tqh_first };
u_int16_t tagname2tag(struct pf_tags *, char *, int);
void tag2tagname(struct pf_tags *, u_int16_t, char *);
void tag_unref(struct pf_tags *, u_int16_t);
int pf_rtlabel_add(struct pf_addr_wrap *);
void pf_rtlabel_remove(struct pf_addr_wrap *);
void pf_rtlabel_copyout(struct pf_addr_wrap *);
void
pfattach(int num)
{
 u_int32_t *timeout = pf_default_rule.timeout;
 pool_init(&pf_rule_pl, sizeof(struct pf_rule), 0,
     2, 0, "pfrule", ((void *)0));
 pool_init(&pf_src_tree_pl, sizeof(struct pf_src_node), 0,
     2, 0, "pfsrctr", ((void *)0));
 pool_init(&pf_sn_item_pl, sizeof(struct pf_sn_item), 0,
     2, 0, "pfsnitem", ((void *)0));
 pool_init(&pf_state_pl, sizeof(struct pf_state), 0,
     2, 0, "pfstate", ((void *)0));
 pool_init(&pf_state_key_pl, sizeof(struct pf_state_key), 0,
     2, 0, "pfstkey", ((void *)0));
 pool_init(&pf_state_item_pl, sizeof(struct pf_state_item), 0,
     2, 0, "pfstitem", ((void *)0));
 pool_init(&pf_rule_item_pl, sizeof(struct pf_rule_item), 0,
     2, 0, "pfruleitem", ((void *)0));
 pool_init(&pf_queue_pl, sizeof(struct pf_queuespec), 0,
     2, 0, "pfqueue", ((void *)0));
 pool_init(&pf_tag_pl, sizeof(struct pf_tagname), 0,
     2, 0, "pftag", ((void *)0));
 hfsc_initialize();
 pfr_initialize();
 pfi_initialize();
 pf_osfp_initialize();
 pool_sethardlimit(pf_pool_limits[PF_LIMIT_STATES].pp,
     pf_pool_limits[PF_LIMIT_STATES].limit, ((void *)0), 0);
 if (physmem <= ((100*1024*1024) >> 13))
  pf_pool_limits[PF_LIMIT_TABLE_ENTRIES].limit =
      100000;
 do { (&tree_src_tracking)->rbh_root = ((void *)0); } while (0);
 do { (&pf_anchors)->rbh_root = ((void *)0); } while (0);
 pf_init_ruleset(&pf_main_anchor.ruleset);
 do { (&pf_queues[0])->tqh_first = ((void *)0); (&pf_queues[0])->tqh_last = &(&pf_queues[0])->tqh_first; } while (0);
 do { (&pf_queues[1])->tqh_first = ((void *)0); (&pf_queues[1])->tqh_last = &(&pf_queues[1])->tqh_first; } while (0);
 pf_queues_active = &pf_queues[0];
 pf_queues_inactive = &pf_queues[1];
 do { (&state_list)->tqh_first = ((void *)0); (&state_list)->tqh_last = &(&state_list)->tqh_first; } while (0);
 pf_default_rule.entries.tqe_prev = &pf_default_rule.entries.tqe_next;
 pf_default_rule.action = PF_PASS;
 pf_default_rule.nr = (u_int32_t)-1;
 pf_default_rule.rtableid = -1;
 timeout[PFTM_TCP_FIRST_PACKET] = 120;
 timeout[PFTM_TCP_OPENING] = 30;
 timeout[PFTM_TCP_ESTABLISHED] = 24*60*60;
 timeout[PFTM_TCP_CLOSING] = 15 * 60;
 timeout[PFTM_TCP_FIN_WAIT] = 45;
 timeout[PFTM_TCP_CLOSED] = 90;
 timeout[PFTM_UDP_FIRST_PACKET] = 60;
 timeout[PFTM_UDP_SINGLE] = 30;
 timeout[PFTM_UDP_MULTIPLE] = 60;
 timeout[PFTM_ICMP_FIRST_PACKET] = 20;
 timeout[PFTM_ICMP_ERROR_REPLY] = 10;
 timeout[PFTM_OTHER_FIRST_PACKET] = 60;
 timeout[PFTM_OTHER_SINGLE] = 30;
 timeout[PFTM_OTHER_MULTIPLE] = 60;
 timeout[PFTM_FRAG] = 60;
 timeout[PFTM_INTERVAL] = 10;
 timeout[PFTM_SRC_NODE] = 0;
 timeout[PFTM_TS_DIFF] = 30;
 timeout[PFTM_ADAPTIVE_START] = 6000;
 timeout[PFTM_ADAPTIVE_END] = 12000;
 pf_default_rule.src.addr.type = PF_ADDR_ADDRMASK;
 pf_default_rule.dst.addr.type = PF_ADDR_ADDRMASK;
 pf_default_rule.rdr.addr.type = PF_ADDR_NONE;
 pf_default_rule.nat.addr.type = PF_ADDR_NONE;
 pf_default_rule.route.addr.type = PF_ADDR_NONE;
 pf_normalize_init();
 __builtin_bzero((&pf_status), (sizeof(pf_status)));
 pf_status.debug = 3;
 pf_status.reass = 0x01;
 pf_status.hostid = arc4random();
}
int
pfopen(dev_t dev, int flags, int fmt, struct proc *p)
{
 if (((int32_t)((dev) & 0xff) | (((dev) & 0xffff0000) >> 8)) >= 1)
  return (6);
 return (0);
}
int
pfclose(dev_t dev, int flags, int fmt, struct proc *p)
{
 if (((int32_t)((dev) & 0xff) | (((dev) & 0xffff0000) >> 8)) >= 1)
  return (6);
 return (0);
}
void
pf_rm_rule(struct pf_rulequeue *rulequeue, struct pf_rule *rule)
{
 if (rulequeue != ((void *)0)) {
  if (rule->states_cur == 0 && rule->src_nodes == 0) {
   pf_tbladdr_remove(&rule->src.addr);
   pf_tbladdr_remove(&rule->dst.addr);
   pf_tbladdr_remove(&rule->rdr.addr);
   pf_tbladdr_remove(&rule->nat.addr);
   pf_tbladdr_remove(&rule->route.addr);
   if (rule->overload_tbl)
    pfr_detach_table(rule->overload_tbl);
  }
  do { if (((rule)->entries.tqe_next) != ((void *)0)) (rule)->entries.tqe_next->entries.tqe_prev = (rule)->entries.tqe_prev; else (rulequeue)->tqh_last = (rule)->entries.tqe_prev; *(rule)->entries.tqe_prev = (rule)->entries.tqe_next; ((rule)->entries.tqe_prev) = ((void *)-1); ((rule)->entries.tqe_next) = ((void *)-1); } while (0);
  rule->entries.tqe_prev = ((void *)0);
  rule->nr = (u_int32_t)-1;
 }
 if (rule->states_cur > 0 || rule->src_nodes > 0 ||
     rule->entries.tqe_prev != ((void *)0))
  return;
 pf_tag_unref(rule->tag);
 pf_tag_unref(rule->match_tag);
 pf_rtlabel_remove(&rule->src.addr);
 pf_rtlabel_remove(&rule->dst.addr);
 pfi_dynaddr_remove(&rule->src.addr);
 pfi_dynaddr_remove(&rule->dst.addr);
 pfi_dynaddr_remove(&rule->rdr.addr);
 pfi_dynaddr_remove(&rule->nat.addr);
 pfi_dynaddr_remove(&rule->route.addr);
 if (rulequeue == ((void *)0)) {
  pf_tbladdr_remove(&rule->src.addr);
  pf_tbladdr_remove(&rule->dst.addr);
  pf_tbladdr_remove(&rule->rdr.addr);
  pf_tbladdr_remove(&rule->nat.addr);
  pf_tbladdr_remove(&rule->route.addr);
  if (rule->overload_tbl)
   pfr_detach_table(rule->overload_tbl);
 }
 pfi_kif_unref(rule->rcv_kif, PFI_KIF_REF_RULE);
 pfi_kif_unref(rule->kif, PFI_KIF_REF_RULE);
 pfi_kif_unref(rule->rdr.kif, PFI_KIF_REF_RULE);
 pfi_kif_unref(rule->nat.kif, PFI_KIF_REF_RULE);
 pfi_kif_unref(rule->route.kif, PFI_KIF_REF_RULE);
 pf_anchor_remove(rule);
 pool_put(&pf_rule_pl, rule);
}
void
pf_purge_rule(struct pf_rule *rule)
{
 u_int32_t nr = 0;
 struct pf_ruleset *ruleset;
 (((rule != ((void *)0)) && (rule->ruleset != ((void *)0))) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../net/pf_ioctl.c", 311, "(rule != NULL) && (rule->ruleset != NULL)"));
 ruleset = rule->ruleset;
 pf_rm_rule(ruleset->rules.active.ptr, rule);
 ruleset->rules.active.rcount--;
 for((rule) = ((ruleset->rules.active.ptr)->tqh_first); (rule) != ((void *)0); (rule) = ((rule)->entries.tqe_next))
  rule->nr = nr++;
 ruleset->rules.active.ticket++;
 pf_calc_skip_steps(ruleset->rules.active.ptr);
 pf_remove_if_empty_ruleset(ruleset);
}
u_int16_t
tagname2tag(struct pf_tags *head, char *tagname, int create)
{
 struct pf_tagname *tag, *p = ((void *)0);
 u_int16_t new_tagid = 1;
 for((tag) = ((head)->tqh_first); (tag) != ((void *)0); (tag) = ((tag)->entries.tqe_next))
  if (strcmp(tagname, tag->name) == 0) {
   tag->ref++;
   return (tag->tag);
  }
 if (!create)
  return (0);
 for((p) = ((head)->tqh_first); (p) != ((void *)0); (p) = ((p)->entries.tqe_next)) {
  if (p->tag != new_tagid)
   break;
  new_tagid = p->tag + 1;
 }
 if (new_tagid > 50000)
  return (0);
 tag = pool_get(&pf_tag_pl, 0x0002 | 0x0008);
 if (tag == ((void *)0))
  return (0);
 strlcpy(tag->name, tagname, sizeof(tag->name));
 tag->tag = new_tagid;
 tag->ref++;
 if (p != ((void *)0))
  do { (tag)->entries.tqe_prev = (p)->entries.tqe_prev; (tag)->entries.tqe_next = (p); *(p)->entries.tqe_prev = (tag); (p)->entries.tqe_prev = &(tag)->entries.tqe_next; } while (0);
 else
  do { (tag)->entries.tqe_next = ((void *)0); (tag)->entries.tqe_prev = (head)->tqh_last; *(head)->tqh_last = (tag); (head)->tqh_last = &(tag)->entries.tqe_next; } while (0);
 return (tag->tag);
}
void
tag2tagname(struct pf_tags *head, u_int16_t tagid, char *p)
{
 struct pf_tagname *tag;
 for((tag) = ((head)->tqh_first); (tag) != ((void *)0); (tag) = ((tag)->entries.tqe_next))
  if (tag->tag == tagid) {
   strlcpy(p, tag->name, 64);
   return;
  }
}
void
tag_unref(struct pf_tags *head, u_int16_t tag)
{
 struct pf_tagname *p, *next;
 if (tag == 0)
  return;
 for ((p) = ((head)->tqh_first); (p) != ((void *)0) && ((next) = ((p)->entries.tqe_next), 1); (p) = (next)) {
  if (tag == p->tag) {
   if (--p->ref == 0) {
    do { if (((p)->entries.tqe_next) != ((void *)0)) (p)->entries.tqe_next->entries.tqe_prev = (p)->entries.tqe_prev; else (head)->tqh_last = (p)->entries.tqe_prev; *(p)->entries.tqe_prev = (p)->entries.tqe_next; ((p)->entries.tqe_prev) = ((void *)-1); ((p)->entries.tqe_next) = ((void *)-1); } while (0);
    pool_put(&pf_tag_pl, p);
   }
   break;
  }
 }
}
u_int16_t
pf_tagname2tag(char *tagname, int create)
{
 return (tagname2tag(&pf_tags, tagname, create));
}
void
pf_tag2tagname(u_int16_t tagid, char *p)
{
 tag2tagname(&pf_tags, tagid, p);
}
void
pf_tag_ref(u_int16_t tag)
{
 struct pf_tagname *t;
 for((t) = ((&pf_tags)->tqh_first); (t) != ((void *)0); (t) = ((t)->entries.tqe_next))
  if (t->tag == tag)
   break;
 if (t != ((void *)0))
  t->ref++;
}
void
pf_tag_unref(u_int16_t tag)
{
 tag_unref(&pf_tags, tag);
}
int
pf_rtlabel_add(struct pf_addr_wrap *a)
{
 if (a->type == PF_ADDR_RTLABEL &&
     (a->v.rtlabel = rtlabel_name2id(a->v.rtlabelname)) == 0)
  return (-1);
 return (0);
}
void
pf_rtlabel_remove(struct pf_addr_wrap *a)
{
 if (a->type == PF_ADDR_RTLABEL)
  rtlabel_unref(a->v.rtlabel);
}
void
pf_rtlabel_copyout(struct pf_addr_wrap *a)
{
 const char *name;
 if (a->type == PF_ADDR_RTLABEL && a->v.rtlabel) {
  if ((name = rtlabel_id2name(a->v.rtlabel)) == ((void *)0))
   strlcpy(a->v.rtlabelname, "?",
       sizeof(a->v.rtlabelname));
  else
   strlcpy(a->v.rtlabelname, name,
       sizeof(a->v.rtlabelname));
 }
}
u_int16_t
pf_qname2qid(char *qname, int create)
{
 return (tagname2tag(&pf_qids, qname, create));
}
void
pf_qid2qname(u_int16_t qid, char *p)
{
 tag2tagname(&pf_qids, qid, p);
}
void
pf_qid_unref(u_int16_t qid)
{
 tag_unref(&pf_qids, (u_int16_t)qid);
}
int
pf_begin_rules(u_int32_t *ticket, const char *anchor)
{
 struct pf_ruleset *rs;
 struct pf_rule *rule;
 if ((rs = pf_find_or_create_ruleset(anchor)) == ((void *)0))
  return (22);
 while ((rule = ((rs->rules.inactive.ptr)->tqh_first)) != ((void *)0)) {
  pf_rm_rule(rs->rules.inactive.ptr, rule);
  rs->rules.inactive.rcount--;
 }
 *ticket = ++rs->rules.inactive.ticket;
 rs->rules.inactive.open = 1;
 return (0);
}
int
pf_rollback_rules(u_int32_t ticket, char *anchor)
{
 struct pf_ruleset *rs;
 struct pf_rule *rule;
 rs = pf_find_ruleset(anchor);
 if (rs == ((void *)0) || !rs->rules.inactive.open ||
     rs->rules.inactive.ticket != ticket)
  return (0);
 while ((rule = ((rs->rules.inactive.ptr)->tqh_first)) != ((void *)0)) {
  pf_rm_rule(rs->rules.inactive.ptr, rule);
  rs->rules.inactive.rcount--;
 }
 rs->rules.inactive.open = 0;
 if (anchor[0])
  return (0);
 pf_free_queues(pf_queues_inactive);
 return (0);
}
void
pf_free_queues(struct pf_queuehead *where)
{
 struct pf_queuespec *q, *qtmp;
 for ((q) = ((where)->tqh_first); (q) != ((void *)0) && ((qtmp) = ((q)->entries.tqe_next), 1); (q) = (qtmp)) {
  do { if (((q)->entries.tqe_next) != ((void *)0)) (q)->entries.tqe_next->entries.tqe_prev = (q)->entries.tqe_prev; else (where)->tqh_last = (q)->entries.tqe_prev; *(q)->entries.tqe_prev = (q)->entries.tqe_next; ((q)->entries.tqe_prev) = ((void *)-1); ((q)->entries.tqe_next) = ((void *)-1); } while (0);
  pfi_kif_unref(q->kif, PFI_KIF_REF_RULE);
  pool_put(&pf_queue_pl, q);
 }
}
void
pf_remove_queues(void)
{
 struct pf_queuespec *q;
 struct ifnet *ifp;
 for((q) = ((pf_queues_active)->tqh_first); (q) != ((void *)0); (q) = ((q)->entries.tqe_next)) {
  if (q->parent_qid != 0)
   continue;
  ifp = q->kif->pfik_ifp;
  if (ifp == ((void *)0))
   continue;
  ifq_attach(&ifp->if_snd, ifq_priq_ops, ((void *)0));
 }
}
struct pf_queue_if {
 struct ifnet *ifp;
 const struct ifq_ops *ifqops;
 const struct pfq_ops *pfqops;
 void *disc;
 struct pf_queue_if *next;
};
static inline struct pf_queue_if *
pf_ifp2q(struct pf_queue_if *list, struct ifnet *ifp)
{
 struct pf_queue_if *qif = list;
 while (qif != ((void *)0)) {
  if (qif->ifp == ifp)
   return (qif);
  qif = qif->next;
 }
 return (qif);
}
int
pf_create_queues(void)
{
 struct pf_queuespec *q;
 struct ifnet *ifp;
 struct pf_queue_if *list = ((void *)0), *qif;
 int error;
 for((q) = ((pf_queues_active)->tqh_first); (q) != ((void *)0); (q) = ((q)->entries.tqe_next)) {
  if (q->parent_qid != 0)
   continue;
  ifp = q->kif->pfik_ifp;
  if (ifp == ((void *)0))
   continue;
  qif = malloc(sizeof(*qif), 127, 0x0001);
  qif->ifp = ifp;
  if (q->flags & 0x0002) {
   qif->ifqops = ifq_hfsc_ops;
   qif->pfqops = pfq_hfsc_ops;
  } else {
   qif->ifqops = ifq_fqcodel_ops;
   qif->pfqops = pfq_fqcodel_ops;
  }
  qif->disc = qif->pfqops->pfq_alloc(ifp);
  qif->next = list;
  list = qif;
 }
 for((q) = ((pf_queues_active)->tqh_first); (q) != ((void *)0); (q) = ((q)->entries.tqe_next)) {
  ifp = q->kif->pfik_ifp;
  if (ifp == ((void *)0))
   continue;
  qif = pf_ifp2q(list, ifp);
  ((qif != ((void *)0)) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../net/pf_ioctl.c", 620, "qif != NULL"));
  error = qif->pfqops->pfq_addqueue(qif->disc, q);
  if (error != 0)
   goto error;
 }
 for((q) = ((pf_queues_inactive)->tqh_first); (q) != ((void *)0); (q) = ((q)->entries.tqe_next)) {
  if (q->parent_qid != 0)
   continue;
  ifp = q->kif->pfik_ifp;
  if (ifp == ((void *)0))
   continue;
  qif = pf_ifp2q(list, ifp);
  if (qif != ((void *)0))
   continue;
  ifq_attach(&ifp->if_snd, ifq_priq_ops, ((void *)0));
 }
 while (list != ((void *)0)) {
  qif = list;
  list = qif->next;
  ifp = qif->ifp;
  ifq_attach(&ifp->if_snd, qif->ifqops, qif->disc);
  free(qif, 127, sizeof(*qif));
 }
 return (0);
error:
 while (list != ((void *)0)) {
  qif = list;
  list = qif->next;
  qif->pfqops->pfq_free(qif->disc);
  free(qif, 127, sizeof(*qif));
 }
 return (error);
}
int
pf_commit_queues(void)
{
 struct pf_queuehead *qswap;
 int error;
        qswap = pf_queues_active;
        pf_queues_active = pf_queues_inactive;
        pf_queues_inactive = qswap;
 error = pf_create_queues();
 if (error != 0) {
  pf_queues_inactive = pf_queues_active;
  pf_queues_active = qswap;
  return (error);
 }
        pf_free_queues(pf_queues_inactive);
 return (0);
}
const struct pfq_ops *
pf_queue_manager(struct pf_queuespec *q)
{
 if (q->flags & 0x0001)
  return pfq_fqcodel_ops;
 return ( ((void *)0));
}
void
pf_hash_rule_addr(MD5_CTX *ctx, struct pf_rule_addr *pfr)
{
 MD5Update(ctx, (u_int8_t *) &(pfr)->addr.type, sizeof((pfr)->addr.type));
 switch (pfr->addr.type) {
  case PF_ADDR_DYNIFTL:
   MD5Update(ctx, (u_int8_t *) &(pfr)->addr.v.ifname, sizeof((pfr)->addr.v.ifname));
   MD5Update(ctx, (u_int8_t *) &(pfr)->addr.iflags, sizeof((pfr)->addr.iflags));
   break;
  case PF_ADDR_TABLE:
   MD5Update(ctx, (u_int8_t *) &(pfr)->addr.v.tblname, sizeof((pfr)->addr.v.tblname));
   break;
  case PF_ADDR_ADDRMASK:
   MD5Update(ctx, (u_int8_t *) &(pfr)->addr.v.a.addr.pfa.addr32, sizeof((pfr)->addr.v.a.addr.pfa.addr32));
   MD5Update(ctx, (u_int8_t *) &(pfr)->addr.v.a.mask.pfa.addr32, sizeof((pfr)->addr.v.a.mask.pfa.addr32));
   break;
  case PF_ADDR_RTLABEL:
   MD5Update(ctx, (u_int8_t *) &(pfr)->addr.v.rtlabelname, sizeof((pfr)->addr.v.rtlabelname));
   break;
 }
 MD5Update(ctx, (u_int8_t *) &(pfr)->port[0], sizeof((pfr)->port[0]));
 MD5Update(ctx, (u_int8_t *) &(pfr)->port[1], sizeof((pfr)->port[1]));
 MD5Update(ctx, (u_int8_t *) &(pfr)->neg, sizeof((pfr)->neg));
 MD5Update(ctx, (u_int8_t *) &(pfr)->port_op, sizeof((pfr)->port_op));
}
void
pf_hash_rule(MD5_CTX *ctx, struct pf_rule *rule)
{
 u_int16_t x;
 u_int32_t y;
 pf_hash_rule_addr(ctx, &rule->src);
 pf_hash_rule_addr(ctx, &rule->dst);
 MD5Update(ctx, (u_int8_t *) (rule)->label, strlen((rule)->label));
 MD5Update(ctx, (u_int8_t *) (rule)->ifname, strlen((rule)->ifname));
 MD5Update(ctx, (u_int8_t *) (rule)->rcv_ifname, strlen((rule)->rcv_ifname));
 MD5Update(ctx, (u_int8_t *) (rule)->match_tagname, strlen((rule)->match_tagname));
 do { (x) = ((__uint16_t)((rule)->match_tag)); MD5Update(ctx, (u_int8_t *) &(x), sizeof(u_int16_t));} while (0);
 do { (y) = ((__uint32_t)((rule)->os_fingerprint)); MD5Update(ctx, (u_int8_t *) &(y), sizeof(u_int32_t));} while (0);
 do { (y) = ((__uint32_t)((rule)->prob)); MD5Update(ctx, (u_int8_t *) &(y), sizeof(u_int32_t));} while (0);
 do { (y) = ((__uint32_t)((rule)->uid.uid[0])); MD5Update(ctx, (u_int8_t *) &(y), sizeof(u_int32_t));} while (0);
 do { (y) = ((__uint32_t)((rule)->uid.uid[1])); MD5Update(ctx, (u_int8_t *) &(y), sizeof(u_int32_t));} while (0);
 MD5Update(ctx, (u_int8_t *) &(rule)->uid.op, sizeof((rule)->uid.op));
 do { (y) = ((__uint32_t)((rule)->gid.gid[0])); MD5Update(ctx, (u_int8_t *) &(y), sizeof(u_int32_t));} while (0);
 do { (y) = ((__uint32_t)((rule)->gid.gid[1])); MD5Update(ctx, (u_int8_t *) &(y), sizeof(u_int32_t));} while (0);
 MD5Update(ctx, (u_int8_t *) &(rule)->gid.op, sizeof((rule)->gid.op));
 do { (y) = ((__uint32_t)((rule)->rule_flag)); MD5Update(ctx, (u_int8_t *) &(y), sizeof(u_int32_t));} while (0);
 MD5Update(ctx, (u_int8_t *) &(rule)->action, sizeof((rule)->action));
 MD5Update(ctx, (u_int8_t *) &(rule)->direction, sizeof((rule)->direction));
 MD5Update(ctx, (u_int8_t *) &(rule)->af, sizeof((rule)->af));
 MD5Update(ctx, (u_int8_t *) &(rule)->quick, sizeof((rule)->quick));
 MD5Update(ctx, (u_int8_t *) &(rule)->ifnot, sizeof((rule)->ifnot));
 MD5Update(ctx, (u_int8_t *) &(rule)->rcvifnot, sizeof((rule)->rcvifnot));
 MD5Update(ctx, (u_int8_t *) &(rule)->match_tag_not, sizeof((rule)->match_tag_not));
 MD5Update(ctx, (u_int8_t *) &(rule)->keep_state, sizeof((rule)->keep_state));
 MD5Update(ctx, (u_int8_t *) &(rule)->proto, sizeof((rule)->proto));
 MD5Update(ctx, (u_int8_t *) &(rule)->type, sizeof((rule)->type));
 MD5Update(ctx, (u_int8_t *) &(rule)->code, sizeof((rule)->code));
 MD5Update(ctx, (u_int8_t *) &(rule)->flags, sizeof((rule)->flags));
 MD5Update(ctx, (u_int8_t *) &(rule)->flagset, sizeof((rule)->flagset));
 MD5Update(ctx, (u_int8_t *) &(rule)->allow_opts, sizeof((rule)->allow_opts));
 MD5Update(ctx, (u_int8_t *) &(rule)->rt, sizeof((rule)->rt));
 MD5Update(ctx, (u_int8_t *) &(rule)->tos, sizeof((rule)->tos));
}
int
pf_commit_rules(u_int32_t ticket, char *anchor)
{
 struct pf_ruleset *rs;
 struct pf_rule *rule, **old_array;
 struct pf_rulequeue *old_rules;
 int error;
 u_int32_t old_rcount;
 pf_purge_expired_rules(1);
 rs = pf_find_ruleset(anchor);
 if (rs == ((void *)0) || !rs->rules.inactive.open ||
     ticket != rs->rules.inactive.ticket)
  return (16);
 if (rs == &pf_main_anchor.ruleset) {
  error = pf_setup_pfsync_matching(rs);
  if (error != 0)
   return (error);
 }
 old_rules = rs->rules.active.ptr;
 old_rcount = rs->rules.active.rcount;
 old_array = rs->rules.active.ptr_array;
 rs->rules.active.ptr = rs->rules.inactive.ptr;
 rs->rules.active.ptr_array = rs->rules.inactive.ptr_array;
 rs->rules.active.rcount = rs->rules.inactive.rcount;
 rs->rules.inactive.ptr = old_rules;
 rs->rules.inactive.ptr_array = old_array;
 rs->rules.inactive.rcount = old_rcount;
 rs->rules.active.ticket = rs->rules.inactive.ticket;
 pf_calc_skip_steps(rs->rules.active.ptr);
 while ((rule = ((old_rules)->tqh_first)) != ((void *)0))
  pf_rm_rule(old_rules, rule);
 if (rs->rules.inactive.ptr_array)
  free(rs->rules.inactive.ptr_array, 127, 0);
 rs->rules.inactive.ptr_array = ((void *)0);
 rs->rules.inactive.rcount = 0;
 rs->rules.inactive.open = 0;
 pf_remove_if_empty_ruleset(rs);
 if (anchor[0])
  return (0);
 return (pf_commit_queues());
}
int
pf_setup_pfsync_matching(struct pf_ruleset *rs)
{
 MD5_CTX ctx;
 struct pf_rule *rule;
 u_int8_t digest[16];
 MD5Init(&ctx);
 if (rs->rules.inactive.ptr_array)
  free(rs->rules.inactive.ptr_array, 127, 0);
 rs->rules.inactive.ptr_array = ((void *)0);
 if (rs->rules.inactive.rcount) {
  rs->rules.inactive.ptr_array =
      mallocarray(rs->rules.inactive.rcount, sizeof(caddr_t),
      127, 0x0002);
  if (!rs->rules.inactive.ptr_array)
   return (12);
  for((rule) = ((rs->rules.inactive.ptr)->tqh_first); (rule) != ((void *)0); (rule) = ((rule)->entries.tqe_next)) {
   pf_hash_rule(&ctx, rule);
   (rs->rules.inactive.ptr_array)[rule->nr] = rule;
  }
 }
 MD5Final(digest, &ctx);
 __builtin_memcpy((pf_status.pf_chksum), (digest), (sizeof(pf_status.pf_chksum)));
 return (0);
}
int
pf_addr_setup(struct pf_ruleset *ruleset, struct pf_addr_wrap *addr,
    sa_family_t af)
{
 if (pfi_dynaddr_setup(addr, af) ||
     pf_tbladdr_setup(ruleset, addr) ||
     pf_rtlabel_add(addr))
  return (22);
 return (0);
}
int
pf_kif_setup(char *ifname, struct pfi_kif **kif)
{
 if (ifname[0]) {
  *kif = pfi_kif_get(ifname);
  if (*kif == ((void *)0))
   return (22);
  pfi_kif_ref(*kif, PFI_KIF_REF_RULE);
 } else
  *kif = ((void *)0);
 return (0);
}
void
pf_addr_copyout(struct pf_addr_wrap *addr)
{
 pfi_dynaddr_copyout(addr);
 pf_tbladdr_copyout(addr);
 pf_rtlabel_copyout(addr);
}
int
pfioctl(dev_t dev, u_long cmd, caddr_t addr, int flags, struct proc *p)
{
 int error = 0;
 if (securelevel > 1)
  switch (cmd) {
  case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct pfioc_rule) & 0x1fff) << 16) | ((('D')) << 8) | ((6))):
  case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct pfioc_rule) & 0x1fff) << 16) | ((('D')) << 8) | ((7))):
  case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct pfioc_state) & 0x1fff) << 16) | ((('D')) << 8) | ((19))):
  case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct pfioc_iface) & 0x1fff) << 16) | ((('D')) << 8) | ((20))):
  case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct pf_status) & 0x1fff) << 16) | ((('D')) << 8) | ((21))):
  case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct pfioc_iface) & 0x1fff) << 16) | ((('D')) << 8) | ((22))):
  case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct pfioc_natlook) & 0x1fff) << 16) | ((('D')) << 8) | ((23))):
  case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(u_int32_t) & 0x1fff) << 16) | ((('D')) << 8) | ((24))):
  case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct pfioc_states) & 0x1fff) << 16) | ((('D')) << 8) | ((25))):
  case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct pfioc_tm) & 0x1fff) << 16) | ((('D')) << 8) | ((30))):
  case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct pfioc_limit) & 0x1fff) << 16) | ((('D')) << 8) | ((39))):
  case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct pfioc_ruleset) & 0x1fff) << 16) | ((('D')) << 8) | ((58))):
  case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct pfioc_ruleset) & 0x1fff) << 16) | ((('D')) << 8) | ((59))):
  case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct pfioc_queue) & 0x1fff) << 16) | ((('D')) << 8) | ((94))):
  case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct pfioc_queue) & 0x1fff) << 16) | ((('D')) << 8) | ((95))):
  case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct pfioc_qstats) & 0x1fff) << 16) | ((('D')) << 8) | ((96))):
  case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct pfioc_table) & 0x1fff) << 16) | ((('D')) << 8) | ((63))):
  case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct pfioc_table) & 0x1fff) << 16) | ((('D')) << 8) | ((64))):
  case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct pfioc_table) & 0x1fff) << 16) | ((('D')) << 8) | ((65))):
  case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct pfioc_table) & 0x1fff) << 16) | ((('D')) << 8) | ((66))):
  case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct pfioc_table) & 0x1fff) << 16) | ((('D')) << 8) | ((67))):
  case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct pfioc_table) & 0x1fff) << 16) | ((('D')) << 8) | ((68))):
  case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct pfioc_table) & 0x1fff) << 16) | ((('D')) << 8) | ((69))):
  case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct pfioc_table) & 0x1fff) << 16) | ((('D')) << 8) | ((71))):
  case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct pfioc_table) & 0x1fff) << 16) | ((('D')) << 8) | ((72))):
  case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct pfioc_table) & 0x1fff) << 16) | ((('D')) << 8) | ((73))):
  case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct pf_osfp_ioctl) & 0x1fff) << 16) | ((('D')) << 8) | ((80))):
  case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct pfioc_src_nodes) & 0x1fff) << 16) | ((('D')) << 8) | ((84))):
  case ((unsigned long)0x20000000 | ((0 & 0x1fff) << 16) | ((('D')) << 8) | ((85))):
  case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct pfioc_iface) & 0x1fff) << 16) | ((('D')) << 8) | ((87))):
  case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct pfioc_iface) & 0x1fff) << 16) | ((('D')) << 8) | ((89))):
  case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct pfioc_iface) & 0x1fff) << 16) | ((('D')) << 8) | ((90))):
   break;
  case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct pfioc_table) & 0x1fff) << 16) | ((('D')) << 8) | ((60))):
  case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct pfioc_table) & 0x1fff) << 16) | ((('D')) << 8) | ((61))):
  case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct pfioc_table) & 0x1fff) << 16) | ((('D')) << 8) | ((62))):
  case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct pfioc_table) & 0x1fff) << 16) | ((('D')) << 8) | ((74))):
   if (((struct pfioc_table *)addr)->pfrio_flags &
       0x00000002)
    break;
   return (1);
  default:
   return (1);
  }
 if (!(flags & 0x0002))
  switch (cmd) {
  case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct pfioc_rule) & 0x1fff) << 16) | ((('D')) << 8) | ((6))):
  case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct pfioc_state) & 0x1fff) << 16) | ((('D')) << 8) | ((19))):
  case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct pf_status) & 0x1fff) << 16) | ((('D')) << 8) | ((21))):
  case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct pfioc_states) & 0x1fff) << 16) | ((('D')) << 8) | ((25))):
  case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct pfioc_tm) & 0x1fff) << 16) | ((('D')) << 8) | ((30))):
  case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct pfioc_limit) & 0x1fff) << 16) | ((('D')) << 8) | ((39))):
  case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct pfioc_ruleset) & 0x1fff) << 16) | ((('D')) << 8) | ((58))):
  case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct pfioc_ruleset) & 0x1fff) << 16) | ((('D')) << 8) | ((59))):
  case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct pfioc_queue) & 0x1fff) << 16) | ((('D')) << 8) | ((94))):
  case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct pfioc_queue) & 0x1fff) << 16) | ((('D')) << 8) | ((95))):
  case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct pfioc_qstats) & 0x1fff) << 16) | ((('D')) << 8) | ((96))):
  case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct pfioc_natlook) & 0x1fff) << 16) | ((('D')) << 8) | ((23))):
  case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct pfioc_table) & 0x1fff) << 16) | ((('D')) << 8) | ((63))):
  case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct pfioc_table) & 0x1fff) << 16) | ((('D')) << 8) | ((64))):
  case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct pfioc_table) & 0x1fff) << 16) | ((('D')) << 8) | ((70))):
  case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct pfioc_table) & 0x1fff) << 16) | ((('D')) << 8) | ((71))):
  case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct pfioc_table) & 0x1fff) << 16) | ((('D')) << 8) | ((73))):
  case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct pf_osfp_ioctl) & 0x1fff) << 16) | ((('D')) << 8) | ((80))):
  case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct pfioc_src_nodes) & 0x1fff) << 16) | ((('D')) << 8) | ((84))):
  case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct pfioc_iface) & 0x1fff) << 16) | ((('D')) << 8) | ((87))):
   break;
  case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct pfioc_table) & 0x1fff) << 16) | ((('D')) << 8) | ((60))):
  case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct pfioc_table) & 0x1fff) << 16) | ((('D')) << 8) | ((61))):
  case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct pfioc_table) & 0x1fff) << 16) | ((('D')) << 8) | ((62))):
  case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct pfioc_table) & 0x1fff) << 16) | ((('D')) << 8) | ((65))):
  case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct pfioc_table) & 0x1fff) << 16) | ((('D')) << 8) | ((66))):
  case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct pfioc_table) & 0x1fff) << 16) | ((('D')) << 8) | ((67))):
  case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct pfioc_table) & 0x1fff) << 16) | ((('D')) << 8) | ((68))):
  case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct pfioc_table) & 0x1fff) << 16) | ((('D')) << 8) | ((69))):
  case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct pfioc_table) & 0x1fff) << 16) | ((('D')) << 8) | ((74))):
   if (((struct pfioc_table *)addr)->pfrio_flags &
       0x00000002) {
    flags |= 0x0002;
    break;
   }
   return (13);
  case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct pfioc_rule) & 0x1fff) << 16) | ((('D')) << 8) | ((7))):
   if (((struct pfioc_rule *)addr)->action ==
       PF_GET_CLR_CNTR)
    return (13);
   break;
  default:
   return (13);
  }
 do { _rw_enter_write(&netlock ); } while (0);
 switch (cmd) {
 case ((unsigned long)0x20000000 | ((0 & 0x1fff) << 16) | ((('D')) << 8) | ((1))):
  (void)(0);
  if (pf_status.running)
   error = 17;
  else {
   pf_status.running = 1;
   pf_status.since = time_uptime;
   if (pf_status.stateid == 0) {
    pf_status.stateid = time_second;
    pf_status.stateid = pf_status.stateid << 32;
   }
   timeout_add(&pf_purge_to, 1 * hz);
   pf_create_queues();
   do { if (pf_status.debug >= (5)) { log(5, "pf: "); addlog("pf: started"); addlog("\n"); } } while (0);
  }
  (void)(0);
  break;
 case ((unsigned long)0x20000000 | ((0 & 0x1fff) << 16) | ((('D')) << 8) | ((2))):
  (void)(0);
  if (!pf_status.running)
   error = 2;
  else {
   pf_status.running = 0;
   pf_status.since = time_uptime;
   pf_remove_queues();
   do { if (pf_status.debug >= (5)) { log(5, "pf: "); addlog("pf: stopped"); addlog("\n"); } } while (0);
  }
  (void)(0);
  break;
 case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct pfioc_queue) & 0x1fff) << 16) | ((('D')) << 8) | ((94))): {
  struct pfioc_queue *pq = (struct pfioc_queue *)addr;
  struct pf_queuespec *qs;
  u_int32_t nr = 0;
  (void)(0);
  pq->ticket = pf_main_anchor.ruleset.rules.active.ticket;
  qs = ((pf_queues_active)->tqh_first);
  while (qs != ((void *)0)) {
   qs = ((qs)->entries.tqe_next);
   nr++;
  }
  pq->nr = nr;
  (void)(0);
  break;
 }
 case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct pfioc_queue) & 0x1fff) << 16) | ((('D')) << 8) | ((95))): {
  struct pfioc_queue *pq = (struct pfioc_queue *)addr;
  struct pf_queuespec *qs;
  u_int32_t nr = 0;
  (void)(0);
  if (pq->ticket != pf_main_anchor.ruleset.rules.active.ticket) {
   error = 16;
   (void)(0);
   break;
  }
  qs = ((pf_queues_active)->tqh_first);
  while ((qs != ((void *)0)) && (nr++ < pq->nr))
   qs = ((qs)->entries.tqe_next);
  if (qs == ((void *)0)) {
   error = 16;
   (void)(0);
   break;
  }
  __builtin_bcopy((qs), (&pq->queue), (sizeof(pq->queue)));
  (void)(0);
  break;
 }
 case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct pfioc_qstats) & 0x1fff) << 16) | ((('D')) << 8) | ((96))): {
  struct pfioc_qstats *pq = (struct pfioc_qstats *)addr;
  struct pf_queuespec *qs;
  u_int32_t nr;
  int nbytes;
  (void)(0);
  if (pq->ticket != pf_main_anchor.ruleset.rules.active.ticket) {
   error = 16;
   (void)(0);
   break;
  }
  nbytes = pq->nbytes;
  nr = 0;
  qs = ((pf_queues_active)->tqh_first);
  while ((qs != ((void *)0)) && (nr++ < pq->nr))
   qs = ((qs)->entries.tqe_next);
  if (qs == ((void *)0)) {
   error = 16;
   (void)(0);
   break;
  }
  __builtin_bcopy((qs), (&pq->queue), (sizeof(pq->queue)));
  if ((qs->flags & 0x0001) && qs->parent_qid == 0 &&
      !(qs->flags & 0x0002))
   error = pfq_fqcodel_ops->pfq_qstats(qs, pq->buf,
       &nbytes);
  else
   error = pfq_hfsc_ops->pfq_qstats(qs, pq->buf,
       &nbytes);
  if (error == 0)
   pq->nbytes = nbytes;
  (void)(0);
  break;
 }
 case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct pfioc_queue) & 0x1fff) << 16) | ((('D')) << 8) | ((93))): {
  struct pfioc_queue *q = (struct pfioc_queue *)addr;
  struct pf_queuespec *qs;
  (void)(0);
  if (q->ticket != pf_main_anchor.ruleset.rules.inactive.ticket) {
   error = 16;
   (void)(0);
   break;
  }
  qs = pool_get(&pf_queue_pl, 0x0001|0x0004|0x0008);
  if (qs == ((void *)0)) {
   error = 12;
   (void)(0);
   break;
  }
  __builtin_bcopy((&q->queue), (qs), (sizeof(*qs)));
  qs->qid = pf_qname2qid(qs->qname, 1);
  if (qs->parent[0] && (qs->parent_qid =
      pf_qname2qid(qs->parent, 0)) == 0) {
   pool_put(&pf_queue_pl, qs);
   error = 3;
   (void)(0);
   break;
  }
  qs->kif = pfi_kif_get(qs->ifname);
  if (qs->kif == ((void *)0)) {
   pool_put(&pf_queue_pl, qs);
   error = 3;
   (void)(0);
   break;
  }
  pfi_kif_ref(qs->kif, PFI_KIF_REF_RULE);
  do { (qs)->entries.tqe_next = ((void *)0); (qs)->entries.tqe_prev = (pf_queues_inactive)->tqh_last; *(pf_queues_inactive)->tqh_last = (qs); (pf_queues_inactive)->tqh_last = &(qs)->entries.tqe_next; } while (0);
  (void)(0);
  break;
 }
 case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct pfioc_rule) & 0x1fff) << 16) | ((('D')) << 8) | ((4))): {
  struct pfioc_rule *pr = (struct pfioc_rule *)addr;
  struct pf_ruleset *ruleset;
  struct pf_rule *rule, *tail;
  (void)(0);
  pr->anchor[sizeof(pr->anchor) - 1] = 0;
  ruleset = pf_find_ruleset(pr->anchor);
  if (ruleset == ((void *)0)) {
   error = 22;
   (void)(0);
   break;
  }
  if (pr->rule.return_icmp >> 8 > 40) {
   error = 22;
   (void)(0);
   break;
  }
  if (pr->ticket != ruleset->rules.inactive.ticket) {
   error = 16;
   (void)(0);
   break;
  }
  rule = pool_get(&pf_rule_pl, 0x0001|0x0004|0x0008);
  if (rule == ((void *)0)) {
   error = 12;
   (void)(0);
   break;
  }
  if ((error = pf_rule_copyin(&pr->rule, rule, ruleset))) {
   pf_rm_rule(((void *)0), rule);
   rule = ((void *)0);
   (void)(0);
   break;
  }
  rule->cuid = p->p_ucred->cr_ruid;
  rule->cpid = p->p_p->ps_pid;
  switch (rule->af) {
  case 0:
   break;
  case 2:
   break;
  case 24:
   break;
  default:
   pf_rm_rule(((void *)0), rule);
   rule = ((void *)0);
   error = 47;
   (void)(0);
   goto fail;
  }
  tail = (*(((struct pf_rulequeue *)((ruleset->rules.inactive.ptr)->tqh_last))->tqh_last));
  if (tail)
   rule->nr = tail->nr + 1;
  else
   rule->nr = 0;
  if (rule->src.addr.type == PF_ADDR_NONE ||
      rule->dst.addr.type == PF_ADDR_NONE)
   error = 22;
  if (pf_addr_setup(ruleset, &rule->src.addr, rule->af))
   error = 22;
  if (pf_addr_setup(ruleset, &rule->dst.addr, rule->af))
   error = 22;
  if (pf_addr_setup(ruleset, &rule->rdr.addr, rule->af))
   error = 22;
  if (pf_addr_setup(ruleset, &rule->nat.addr, rule->af))
   error = 22;
  if (pf_addr_setup(ruleset, &rule->route.addr, rule->af))
   error = 22;
  if (pf_anchor_setup(rule, ruleset, pr->anchor_call))
   error = 22;
  if (rule->rt && !rule->direction)
   error = 22;
  if (rule->scrub_flags & 0x0200 &&
      (rule->set_prio[0] > 8 - 1 ||
      rule->set_prio[1] > 8 - 1))
   error = 22;
  if (error) {
   pf_rm_rule(((void *)0), rule);
   (void)(0);
   break;
  }
  do { (rule)->entries.tqe_next = ((void *)0); (rule)->entries.tqe_prev = (ruleset->rules.inactive.ptr)->tqh_last; *(ruleset->rules.inactive.ptr)->tqh_last = (rule); (ruleset->rules.inactive.ptr)->tqh_last = &(rule)->entries.tqe_next; } while (0);
  rule->ruleset = ruleset;
  ruleset->rules.inactive.rcount++;
  (void)(0);
  break;
 }
 case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct pfioc_rule) & 0x1fff) << 16) | ((('D')) << 8) | ((6))): {
  struct pfioc_rule *pr = (struct pfioc_rule *)addr;
  struct pf_ruleset *ruleset;
  struct pf_rule *tail;
  (void)(0);
  pr->anchor[sizeof(pr->anchor) - 1] = 0;
  ruleset = pf_find_ruleset(pr->anchor);
  if (ruleset == ((void *)0)) {
   error = 22;
   (void)(0);
   break;
  }
  tail = (*(((struct pf_rulequeue *)((ruleset->rules.active.ptr)->tqh_last))->tqh_last));
  if (tail)
   pr->nr = tail->nr + 1;
  else
   pr->nr = 0;
  pr->ticket = ruleset->rules.active.ticket;
  (void)(0);
  break;
 }
 case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct pfioc_rule) & 0x1fff) << 16) | ((('D')) << 8) | ((7))): {
  struct pfioc_rule *pr = (struct pfioc_rule *)addr;
  struct pf_ruleset *ruleset;
  struct pf_rule *rule;
  int i;
  (void)(0);
  pr->anchor[sizeof(pr->anchor) - 1] = 0;
  ruleset = pf_find_ruleset(pr->anchor);
  if (ruleset == ((void *)0)) {
   error = 22;
   (void)(0);
   break;
  }
  if (pr->ticket != ruleset->rules.active.ticket) {
   error = 16;
   (void)(0);
   break;
  }
  rule = ((ruleset->rules.active.ptr)->tqh_first);
  while ((rule != ((void *)0)) && (rule->nr != pr->nr))
   rule = ((rule)->entries.tqe_next);
  if (rule == ((void *)0)) {
   error = 16;
   (void)(0);
   break;
  }
  __builtin_bcopy((rule), (&pr->rule), (sizeof(struct pf_rule)));
  __builtin_bzero((&pr->rule.entries), (sizeof(pr->rule.entries)));
  pr->rule.kif = ((void *)0);
  pr->rule.nat.kif = ((void *)0);
  pr->rule.rdr.kif = ((void *)0);
  pr->rule.route.kif = ((void *)0);
  pr->rule.rcv_kif = ((void *)0);
  pr->rule.anchor = ((void *)0);
  pr->rule.overload_tbl = ((void *)0);
  __builtin_bzero((&pr->rule.gcle), (sizeof(pr->rule.gcle)));
  pr->rule.ruleset = ((void *)0);
  if (pf_anchor_copyout(ruleset, rule, pr)) {
   error = 16;
   (void)(0);
   break;
  }
  pf_addr_copyout(&pr->rule.src.addr);
  pf_addr_copyout(&pr->rule.dst.addr);
  pf_addr_copyout(&pr->rule.rdr.addr);
  pf_addr_copyout(&pr->rule.nat.addr);
  pf_addr_copyout(&pr->rule.route.addr);
  for (i = 0; i < 9; ++i)
   if (rule->skip[i].ptr == ((void *)0))
    pr->rule.skip[i].nr = (u_int32_t)-1;
   else
    pr->rule.skip[i].nr =
        rule->skip[i].ptr->nr;
  if (pr->action == PF_GET_CLR_CNTR) {
   rule->evaluations = 0;
   rule->packets[0] = rule->packets[1] = 0;
   rule->bytes[0] = rule->bytes[1] = 0;
   rule->states_tot = 0;
  }
  (void)(0);
  break;
 }
 case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct pfioc_rule) & 0x1fff) << 16) | ((('D')) << 8) | ((26))): {
  struct pfioc_rule *pcr = (struct pfioc_rule *)addr;
  struct pf_ruleset *ruleset;
  struct pf_rule *oldrule = ((void *)0), *newrule = ((void *)0);
  u_int32_t nr = 0;
  if (pcr->action < PF_CHANGE_ADD_HEAD ||
      pcr->action > PF_CHANGE_GET_TICKET) {
   error = 22;
   break;
  }
  (void)(0);
  ruleset = pf_find_ruleset(pcr->anchor);
  if (ruleset == ((void *)0)) {
   error = 22;
   (void)(0);
   break;
  }
  if (pcr->action == PF_CHANGE_GET_TICKET) {
   pcr->ticket = ++ruleset->rules.active.ticket;
   (void)(0);
   break;
  } else {
   if (pcr->ticket !=
       ruleset->rules.active.ticket) {
    error = 22;
    (void)(0);
    break;
   }
   if (pcr->rule.return_icmp >> 8 > 40) {
    error = 22;
    (void)(0);
    break;
   }
  }
  if (pcr->action != PF_CHANGE_REMOVE) {
   newrule = pool_get(&pf_rule_pl,
       0x0001|0x0004|0x0008);
   if (newrule == ((void *)0)) {
    error = 12;
    (void)(0);
    break;
   }
   pf_rule_copyin(&pcr->rule, newrule, ruleset);
   newrule->cuid = p->p_ucred->cr_ruid;
   newrule->cpid = p->p_p->ps_pid;
   switch (newrule->af) {
   case 0:
    break;
   case 2:
    break;
   case 24:
    break;
   default:
    pool_put(&pf_rule_pl, newrule);
    error = 47;
    (void)(0);
    goto fail;
   }
   if (newrule->rt && !newrule->direction)
    error = 22;
   if (pf_addr_setup(ruleset, &newrule->src.addr, newrule->af))
    error = 22;
   if (pf_addr_setup(ruleset, &newrule->dst.addr, newrule->af))
    error = 22;
   if (pf_addr_setup(ruleset, &newrule->rdr.addr, newrule->af))
    error = 22;
   if (pf_addr_setup(ruleset, &newrule->nat.addr, newrule->af))
    error = 22;
   if (pf_addr_setup(ruleset, &newrule->route.addr, newrule->af))
    error = 22;
   if (pf_anchor_setup(newrule, ruleset, pcr->anchor_call))
    error = 22;
   if (error) {
    pf_rm_rule(((void *)0), newrule);
    (void)(0);
    break;
   }
  }
  if (pcr->action == PF_CHANGE_ADD_HEAD)
   oldrule = ((ruleset->rules.active.ptr)->tqh_first);
  else if (pcr->action == PF_CHANGE_ADD_TAIL)
   oldrule = (*(((struct pf_rulequeue *)((ruleset->rules.active.ptr)->tqh_last))->tqh_last));
  else {
   oldrule = ((ruleset->rules.active.ptr)->tqh_first);
   while ((oldrule != ((void *)0)) && (oldrule->nr != pcr->nr))
    oldrule = ((oldrule)->entries.tqe_next);
   if (oldrule == ((void *)0)) {
    if (newrule != ((void *)0))
     pf_rm_rule(((void *)0), newrule);
    error = 22;
    (void)(0);
    break;
   }
  }
  if (pcr->action == PF_CHANGE_REMOVE) {
   pf_rm_rule(ruleset->rules.active.ptr, oldrule);
   ruleset->rules.active.rcount--;
  } else {
   if (oldrule == ((void *)0))
    do { (newrule)->entries.tqe_next = ((void *)0); (newrule)->entries.tqe_prev = (ruleset->rules.active.ptr)->tqh_last; *(ruleset->rules.active.ptr)->tqh_last = (newrule); (ruleset->rules.active.ptr)->tqh_last = &(newrule)->entries.tqe_next; } while (0);
   else if (pcr->action == PF_CHANGE_ADD_HEAD ||
       pcr->action == PF_CHANGE_ADD_BEFORE)
    do { (newrule)->entries.tqe_prev = (oldrule)->entries.tqe_prev; (newrule)->entries.tqe_next = (oldrule); *(oldrule)->entries.tqe_prev = (newrule); (oldrule)->entries.tqe_prev = &(newrule)->entries.tqe_next; } while (0);
   else
    do { if (((newrule)->entries.tqe_next = (oldrule)->entries.tqe_next) != ((void *)0)) (newrule)->entries.tqe_next->entries.tqe_prev = &(newrule)->entries.tqe_next; else (ruleset->rules.active.ptr)->tqh_last = &(newrule)->entries.tqe_next; (oldrule)->entries.tqe_next = (newrule); (newrule)->entries.tqe_prev = &(oldrule)->entries.tqe_next; } while (0);
   ruleset->rules.active.rcount++;
  }
  nr = 0;
  for((oldrule) = ((ruleset->rules.active.ptr)->tqh_first); (oldrule) != ((void *)0); (oldrule) = ((oldrule)->entries.tqe_next))
   oldrule->nr = nr++;
  ruleset->rules.active.ticket++;
  pf_calc_skip_steps(ruleset->rules.active.ptr);
  pf_remove_if_empty_ruleset(ruleset);
  (void)(0);
  break;
 }
 case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct pfioc_state_kill) & 0x1fff) << 16) | ((('D')) << 8) | ((18))): {
  struct pf_state *s, *nexts;
  struct pfioc_state_kill *psk = (struct pfioc_state_kill *)addr;
  u_int killed = 0;
  (void)(0);
  for (s = pf_state_tree_id_RB_MINMAX(&tree_id, -1); s; s = nexts) {
   nexts = pf_state_tree_id_RB_NEXT(s);
   if (!psk->psk_ifname[0] || !strcmp(psk->psk_ifname,
       s->kif->pfik_name)) {
    ((s->state_flags) |= (0x0008));
    pf_remove_state(s);
    killed++;
   }
  }
  psk->psk_killed = killed;
  pfsync_clear_states(pf_status.hostid, psk->psk_ifname);
  (void)(0);
  break;
 }
 case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct pfioc_state_kill) & 0x1fff) << 16) | ((('D')) << 8) | ((41))): {
  struct pf_state *s, *nexts;
  struct pf_state_item *si, *sit;
  struct pf_state_key *sk, key;
  struct pf_addr *srcaddr, *dstaddr;
  u_int16_t srcport, dstport;
  struct pfioc_state_kill *psk = (struct pfioc_state_kill *)addr;
  u_int i, killed = 0;
  const int dirs[] = { PF_IN, PF_OUT };
  int sidx, didx;
  if (psk->psk_pfcmp.id) {
   if (psk->psk_pfcmp.creatorid == 0)
    psk->psk_pfcmp.creatorid = pf_status.hostid;
   (void)(0);
   if ((s = pf_find_state_byid(&psk->psk_pfcmp))) {
    pf_remove_state(s);
    psk->psk_killed = 1;
   }
   (void)(0);
   break;
  }
  if (psk->psk_af && psk->psk_proto &&
      psk->psk_src.port_op == PF_OP_EQ &&
      psk->psk_dst.port_op == PF_OP_EQ) {
   key.af = psk->psk_af;
   key.proto = psk->psk_proto;
   key.rdomain = psk->psk_rdomain;
   (void)(0);
   for (i = 0; i < (sizeof((dirs)) / sizeof((dirs)[0])); i++) {
    if (dirs[i] == PF_IN) {
     sidx = 0;
     didx = 1;
    } else {
     sidx = 1;
     didx = 0;
    }
    pf_addrcpy(&key.addr[sidx], &psk->psk_src.addr.v.a.addr, key.af);
    pf_addrcpy(&key.addr[didx], &psk->psk_dst.addr.v.a.addr, key.af);
    key.port[sidx] = psk->psk_src.port[0];
    key.port[didx] = psk->psk_dst.port[0];
    sk = pf_state_tree_RB_FIND(&pf_statetbl, &key);
    if (sk == ((void *)0))
     continue;
    for ((si) = ((&sk->states)->tqh_first); (si) != ((void *)0) && ((sit) = ((si)->entry.tqe_next), 1); (si) = (sit))
     if (((si->s->key[PF_SK_WIRE]->af ==
         si->s->key[PF_SK_STACK]->af &&
         sk == (dirs[i] == PF_IN ?
         si->s->key[PF_SK_WIRE] :
         si->s->key[PF_SK_STACK])) ||
         (si->s->key[PF_SK_WIRE]->af !=
         si->s->key[PF_SK_STACK]->af &&
         dirs[i] == PF_IN &&
         (sk == si->s->key[PF_SK_STACK] ||
         sk == si->s->key[PF_SK_WIRE]))) &&
         (!psk->psk_ifname[0] ||
         (si->s->kif != pfi_all &&
         !strcmp(psk->psk_ifname,
         si->s->kif->pfik_name)))) {
      pf_remove_state(si->s);
      killed++;
     }
   }
   if (killed)
    psk->psk_killed = killed;
   (void)(0);
   break;
  }
  (void)(0);
  for (s = pf_state_tree_id_RB_MINMAX(&tree_id, -1); s;
      s = nexts) {
   nexts = pf_state_tree_id_RB_NEXT(s);
   if (s->direction == PF_OUT) {
    sk = s->key[PF_SK_STACK];
    srcaddr = &sk->addr[1];
    dstaddr = &sk->addr[0];
    srcport = sk->port[1];
    dstport = sk->port[0];
   } else {
    sk = s->key[PF_SK_WIRE];
    srcaddr = &sk->addr[0];
    dstaddr = &sk->addr[1];
    srcport = sk->port[0];
    dstport = sk->port[1];
   }
   if ((!psk->psk_af || sk->af == psk->psk_af)
       && (!psk->psk_proto || psk->psk_proto ==
       sk->proto) && psk->psk_rdomain == sk->rdomain &&
       pf_match_addr(psk->psk_src.neg, &psk->psk_src.addr.v.a.addr, &psk->psk_src.addr.v.a.mask, srcaddr, sk->af) &&
       pf_match_addr(psk->psk_dst.neg, &psk->psk_dst.addr.v.a.addr, &psk->psk_dst.addr.v.a.mask, dstaddr, sk->af) &&
       (psk->psk_src.port_op == 0 ||
       pf_match_port(psk->psk_src.port_op,
       psk->psk_src.port[0], psk->psk_src.port[1],
       srcport)) &&
       (psk->psk_dst.port_op == 0 ||
       pf_match_port(psk->psk_dst.port_op,
       psk->psk_dst.port[0], psk->psk_dst.port[1],
       dstport)) &&
       (!psk->psk_label[0] || (s->rule.ptr->label[0] &&
       !strcmp(psk->psk_label, s->rule.ptr->label))) &&
       (!psk->psk_ifname[0] || !strcmp(psk->psk_ifname,
       s->kif->pfik_name))) {
    pf_remove_state(s);
    killed++;
   }
  }
  psk->psk_killed = killed;
  (void)(0);
  break;
 }
 case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct pfioc_state) & 0x1fff) << 16) | ((('D')) << 8) | ((37))): {
  struct pfioc_state *ps = (struct pfioc_state *)addr;
  struct pfsync_state *sp = &ps->state;
  if (sp->timeout >= PFTM_MAX) {
   error = 22;
   break;
  }
  (void)(0);
  error = pfsync_state_import(sp, 0x01);
  (void)(0);
  break;
 }
 case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct pfioc_state) & 0x1fff) << 16) | ((('D')) << 8) | ((19))): {
  struct pfioc_state *ps = (struct pfioc_state *)addr;
  struct pf_state *s;
  struct pf_state_cmp id_key;
  __builtin_bzero((&id_key), (sizeof(id_key)));
  id_key.id = ps->state.id;
  id_key.creatorid = ps->state.creatorid;
  (void)(0);
  s = pf_find_state_byid(&id_key);
  if (s == ((void *)0)) {
   error = 2;
   (void)(0);
   break;
  }
  pf_state_export(&ps->state, s);
  (void)(0);
  break;
 }
 case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct pfioc_states) & 0x1fff) << 16) | ((('D')) << 8) | ((25))): {
  struct pfioc_states *ps = (struct pfioc_states *)addr;
  struct pf_state *state;
  struct pfsync_state *p, *pstore;
  u_int32_t nr = 0;
  if (ps->ps_len == 0) {
   nr = pf_status.states;
   ps->ps_len = sizeof(struct pfsync_state) * nr;
   break;
  }
  pstore = malloc(sizeof(*pstore), 127, 0x0001);
  p = ps->ps_u.psu_states;
  (void)(0);
  state = ((&state_list)->tqh_first);
  while (state) {
   if (state->timeout != PFTM_UNLINKED) {
    if ((nr+1) * sizeof(*p) > (unsigned)ps->ps_len)
     break;
    pf_state_export(pstore, state);
    error = copyout(pstore, p, sizeof(*p));
    if (error) {
     free(pstore, 127, sizeof(*pstore));
     goto fail;
    }
    p++;
    nr++;
   }
   state = ((state)->entry_list.tqe_next);
  }
  (void)(0);
  ps->ps_len = sizeof(struct pfsync_state) * nr;
  free(pstore, 127, sizeof(*pstore));
  break;
 }
 case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct pf_status) & 0x1fff) << 16) | ((('D')) << 8) | ((21))): {
  struct pf_status *s = (struct pf_status *)addr;
  (void)(0);
  __builtin_bcopy((&pf_status), (s), (sizeof(struct pf_status)));
  pfi_update_status(s->ifname, s);
  (void)(0);
  break;
 }
 case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct pfioc_iface) & 0x1fff) << 16) | ((('D')) << 8) | ((20))): {
  struct pfioc_iface *pi = (struct pfioc_iface *)addr;
  (void)(0);
  if (pi->pfiio_name[0] == 0) {
   __builtin_bzero((pf_status.ifname), (16));
   (void)(0);
   break;
  }
  strlcpy(pf_trans_set.statusif, pi->pfiio_name, 16);
  pf_trans_set.mask |= 0x01;
  (void)(0);
  break;
 }
 case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct pfioc_iface) & 0x1fff) << 16) | ((('D')) << 8) | ((22))): {
  struct pfioc_iface *pi = (struct pfioc_iface *)addr;
  (void)(0);
  if (pi->pfiio_name[0]) {
   pfi_update_status(pi->pfiio_name, ((void *)0));
   (void)(0);
   break;
  }
  __builtin_bzero((pf_status.counters), (sizeof(pf_status.counters)));
  __builtin_bzero((pf_status.fcounters), (sizeof(pf_status.fcounters)));
  __builtin_bzero((pf_status.scounters), (sizeof(pf_status.scounters)));
  pf_status.since = time_uptime;
  (void)(0);
  break;
 }
 case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct pfioc_natlook) & 0x1fff) << 16) | ((('D')) << 8) | ((23))): {
  struct pfioc_natlook *pnl = (struct pfioc_natlook *)addr;
  struct pf_state_key *sk;
  struct pf_state *state;
  struct pf_state_key_cmp key;
  int m = 0, direction = pnl->direction;
  int sidx, didx;
  sidx = (direction == PF_IN) ? 1 : 0;
  didx = (direction == PF_IN) ? 0 : 1;
  if (!pnl->proto ||
      ((pnl->af == 2 && !(&pnl->saddr)->pfa.addr32[0]) || (pnl->af == 24 && !(&pnl->saddr)->pfa.addr32[0] && !(&pnl->saddr)->pfa.addr32[1] && !(&pnl->saddr)->pfa.addr32[2] && !(&pnl->saddr)->pfa.addr32[3] )) ||
      ((pnl->af == 2 && !(&pnl->daddr)->pfa.addr32[0]) || (pnl->af == 24 && !(&pnl->daddr)->pfa.addr32[0] && !(&pnl->daddr)->pfa.addr32[1] && !(&pnl->daddr)->pfa.addr32[2] && !(&pnl->daddr)->pfa.addr32[3] )) ||
      ((pnl->proto == 6 ||
      pnl->proto == 17) &&
      (!pnl->dport || !pnl->sport)) ||
      pnl->rdomain > 255)
   error = 22;
  else {
   key.af = pnl->af;
   key.proto = pnl->proto;
   key.rdomain = pnl->rdomain;
   pf_addrcpy(&key.addr[sidx], &pnl->saddr, pnl->af);
   key.port[sidx] = pnl->sport;
   pf_addrcpy(&key.addr[didx], &pnl->daddr, pnl->af);
   key.port[didx] = pnl->dport;
   (void)(0);
   state = pf_find_state_all(&key, direction, &m);
   if (m > 1)
    error = 7;
   else if (state != ((void *)0)) {
    sk = state->key[sidx];
    pf_addrcpy(&pnl->rsaddr, &sk->addr[sidx], sk->af);
    pnl->rsport = sk->port[sidx];
    pf_addrcpy(&pnl->rdaddr, &sk->addr[didx], sk->af);
    pnl->rdport = sk->port[didx];
    pnl->rrdomain = sk->rdomain;
   } else
    error = 2;
   (void)(0);
  }
  break;
 }
 case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct pfioc_tm) & 0x1fff) << 16) | ((('D')) << 8) | ((29))): {
  struct pfioc_tm *pt = (struct pfioc_tm *)addr;
  if (pt->timeout < 0 || pt->timeout >= PFTM_MAX ||
      pt->seconds < 0) {
   error = 22;
   goto fail;
  }
  (void)(0);
  if (pt->timeout == PFTM_INTERVAL && pt->seconds == 0)
   pt->seconds = 1;
  pf_default_rule_new.timeout[pt->timeout] = pt->seconds;
  pt->seconds = pf_default_rule.timeout[pt->timeout];
  (void)(0);
  break;
 }
 case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct pfioc_tm) & 0x1fff) << 16) | ((('D')) << 8) | ((30))): {
  struct pfioc_tm *pt = (struct pfioc_tm *)addr;
  if (pt->timeout < 0 || pt->timeout >= PFTM_MAX) {
   error = 22;
   goto fail;
  }
  (void)(0);
  pt->seconds = pf_default_rule.timeout[pt->timeout];
  (void)(0);
  break;
 }
 case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct pfioc_limit) & 0x1fff) << 16) | ((('D')) << 8) | ((39))): {
  struct pfioc_limit *pl = (struct pfioc_limit *)addr;
  if (pl->index < 0 || pl->index >= PF_LIMIT_MAX) {
   error = 22;
   goto fail;
  }
  (void)(0);
  pl->limit = pf_pool_limits[pl->index].limit;
  (void)(0);
  break;
 }
 case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct pfioc_limit) & 0x1fff) << 16) | ((('D')) << 8) | ((40))): {
  struct pfioc_limit *pl = (struct pfioc_limit *)addr;
  (void)(0);
  if (pl->index < 0 || pl->index >= PF_LIMIT_MAX ||
      pf_pool_limits[pl->index].pp == ((void *)0)) {
   error = 22;
   (void)(0);
   goto fail;
  }
  if (((struct pool *)pf_pool_limits[pl->index].pp)->pr_nout >
      pl->limit) {
   error = 16;
   (void)(0);
   goto fail;
  }
  if (pl->index == PF_LIMIT_FRAGS && pl->limit > nmbclust) {
   error = 22;
   (void)(0);
   goto fail;
  }
  pf_pool_limits[pl->index].limit_new = pl->limit;
  pl->limit = pf_pool_limits[pl->index].limit;
  (void)(0);
  break;
 }
 case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(u_int32_t) & 0x1fff) << 16) | ((('D')) << 8) | ((24))): {
  u_int32_t *level = (u_int32_t *)addr;
  (void)(0);
  pf_trans_set.debug = *level;
  pf_trans_set.mask |= 0x02;
  (void)(0);
  break;
 }
 case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct pfioc_ruleset) & 0x1fff) << 16) | ((('D')) << 8) | ((58))): {
  struct pfioc_ruleset *pr = (struct pfioc_ruleset *)addr;
  struct pf_ruleset *ruleset;
  struct pf_anchor *anchor;
  (void)(0);
  pr->path[sizeof(pr->path) - 1] = 0;
  if ((ruleset = pf_find_ruleset(pr->path)) == ((void *)0)) {
   error = 22;
   (void)(0);
   break;
  }
  pr->nr = 0;
  if (ruleset->anchor == ((void *)0)) {
   for ((anchor) = pf_anchor_global_RB_MINMAX(&pf_anchors, -1); (anchor) != ((void *)0); (anchor) = pf_anchor_global_RB_NEXT(anchor))
    if (anchor->parent == ((void *)0))
     pr->nr++;
  } else {
   for ((anchor) = pf_anchor_node_RB_MINMAX(&ruleset->anchor->children, -1); (anchor) != ((void *)0); (anchor) = pf_anchor_node_RB_NEXT(anchor))
    pr->nr++;
  }
  (void)(0);
  break;
 }
 case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct pfioc_ruleset) & 0x1fff) << 16) | ((('D')) << 8) | ((59))): {
  struct pfioc_ruleset *pr = (struct pfioc_ruleset *)addr;
  struct pf_ruleset *ruleset;
  struct pf_anchor *anchor;
  u_int32_t nr = 0;
  (void)(0);
  pr->path[sizeof(pr->path) - 1] = 0;
  if ((ruleset = pf_find_ruleset(pr->path)) == ((void *)0)) {
   error = 22;
   (void)(0);
   break;
  }
  pr->name[0] = 0;
  if (ruleset->anchor == ((void *)0)) {
   for ((anchor) = pf_anchor_global_RB_MINMAX(&pf_anchors, -1); (anchor) != ((void *)0); (anchor) = pf_anchor_global_RB_NEXT(anchor))
    if (anchor->parent == ((void *)0) && nr++ == pr->nr) {
     strlcpy(pr->name, anchor->name,
         sizeof(pr->name));
     (void)(0);
     break;
    }
  } else {
   for ((anchor) = pf_anchor_node_RB_MINMAX(&ruleset->anchor->children, -1); (anchor) != ((void *)0); (anchor) = pf_anchor_node_RB_NEXT(anchor))
    if (nr++ == pr->nr) {
     strlcpy(pr->name, anchor->name,
         sizeof(pr->name));
     (void)(0);
     break;
    }
  }
  if (!pr->name[0])
   error = 16;
  (void)(0);
  break;
 }
 case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct pfioc_table) & 0x1fff) << 16) | ((('D')) << 8) | ((60))): {
  struct pfioc_table *io = (struct pfioc_table *)addr;
  if (io->pfrio_esize != 0) {
   error = 19;
   break;
  }
  (void)(0);
  error = pfr_clr_tables(&io->pfrio_table, &io->pfrio_ndel,
      io->pfrio_flags | 0x10000000);
  (void)(0);
  break;
 }
 case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct pfioc_table) & 0x1fff) << 16) | ((('D')) << 8) | ((61))): {
  struct pfioc_table *io = (struct pfioc_table *)addr;
  if (io->pfrio_esize != sizeof(struct pfr_table)) {
   error = 19;
   break;
  }
  (void)(0);
  error = pfr_add_tables(io->pfrio_buffer, io->pfrio_size,
      &io->pfrio_nadd, io->pfrio_flags | 0x10000000);
  (void)(0);
  break;
 }
 case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct pfioc_table) & 0x1fff) << 16) | ((('D')) << 8) | ((62))): {
  struct pfioc_table *io = (struct pfioc_table *)addr;
  if (io->pfrio_esize != sizeof(struct pfr_table)) {
   error = 19;
   break;
  }
  (void)(0);
  error = pfr_del_tables(io->pfrio_buffer, io->pfrio_size,
      &io->pfrio_ndel, io->pfrio_flags | 0x10000000);
  (void)(0);
  break;
 }
 case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct pfioc_table) & 0x1fff) << 16) | ((('D')) << 8) | ((63))): {
  struct pfioc_table *io = (struct pfioc_table *)addr;
  if (io->pfrio_esize != sizeof(struct pfr_table)) {
   error = 19;
   break;
  }
  (void)(0);
  error = pfr_get_tables(&io->pfrio_table, io->pfrio_buffer,
      &io->pfrio_size, io->pfrio_flags | 0x10000000);
  (void)(0);
  break;
 }
 case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct pfioc_table) & 0x1fff) << 16) | ((('D')) << 8) | ((64))): {
  struct pfioc_table *io = (struct pfioc_table *)addr;
  if (io->pfrio_esize != sizeof(struct pfr_tstats)) {
   error = 19;
   break;
  }
  (void)(0);
  error = pfr_get_tstats(&io->pfrio_table, io->pfrio_buffer,
      &io->pfrio_size, io->pfrio_flags | 0x10000000);
  (void)(0);
  break;
 }
 case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct pfioc_table) & 0x1fff) << 16) | ((('D')) << 8) | ((65))): {
  struct pfioc_table *io = (struct pfioc_table *)addr;
  if (io->pfrio_esize != sizeof(struct pfr_table)) {
   error = 19;
   break;
  }
  (void)(0);
  error = pfr_clr_tstats(io->pfrio_buffer, io->pfrio_size,
      &io->pfrio_nadd, io->pfrio_flags | 0x10000000);
  (void)(0);
  break;
 }
 case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct pfioc_table) & 0x1fff) << 16) | ((('D')) << 8) | ((74))): {
  struct pfioc_table *io = (struct pfioc_table *)addr;
  if (io->pfrio_esize != sizeof(struct pfr_table)) {
   error = 19;
   break;
  }
  (void)(0);
  error = pfr_set_tflags(io->pfrio_buffer, io->pfrio_size,
      io->pfrio_size2, io->pfrio_nadd, &io->pfrio_nchange,
      &io->pfrio_ndel, io->pfrio_flags | 0x10000000);
  (void)(0);
  break;
 }
 case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct pfioc_table) & 0x1fff) << 16) | ((('D')) << 8) | ((66))): {
  struct pfioc_table *io = (struct pfioc_table *)addr;
  if (io->pfrio_esize != 0) {
   error = 19;
   break;
  }
  (void)(0);
  error = pfr_clr_addrs(&io->pfrio_table, &io->pfrio_ndel,
      io->pfrio_flags | 0x10000000);
  (void)(0);
  break;
 }
 case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct pfioc_table) & 0x1fff) << 16) | ((('D')) << 8) | ((67))): {
  struct pfioc_table *io = (struct pfioc_table *)addr;
  if (io->pfrio_esize != sizeof(struct pfr_addr)) {
   error = 19;
   break;
  }
  (void)(0);
  error = pfr_add_addrs(&io->pfrio_table, io->pfrio_buffer,
      io->pfrio_size, &io->pfrio_nadd, io->pfrio_flags |
      0x10000000);
  (void)(0);
  break;
 }
 case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct pfioc_table) & 0x1fff) << 16) | ((('D')) << 8) | ((68))): {
  struct pfioc_table *io = (struct pfioc_table *)addr;
  if (io->pfrio_esize != sizeof(struct pfr_addr)) {
   error = 19;
   break;
  }
  (void)(0);
  error = pfr_del_addrs(&io->pfrio_table, io->pfrio_buffer,
      io->pfrio_size, &io->pfrio_ndel, io->pfrio_flags |
      0x10000000);
  (void)(0);
  break;
 }
 case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct pfioc_table) & 0x1fff) << 16) | ((('D')) << 8) | ((69))): {
  struct pfioc_table *io = (struct pfioc_table *)addr;
  if (io->pfrio_esize != sizeof(struct pfr_addr)) {
   error = 19;
   break;
  }
  (void)(0);
  error = pfr_set_addrs(&io->pfrio_table, io->pfrio_buffer,
      io->pfrio_size, &io->pfrio_size2, &io->pfrio_nadd,
      &io->pfrio_ndel, &io->pfrio_nchange, io->pfrio_flags |
      0x10000000, 0);
  (void)(0);
  break;
 }
 case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct pfioc_table) & 0x1fff) << 16) | ((('D')) << 8) | ((70))): {
  struct pfioc_table *io = (struct pfioc_table *)addr;
  if (io->pfrio_esize != sizeof(struct pfr_addr)) {
   error = 19;
   break;
  }
  (void)(0);
  error = pfr_get_addrs(&io->pfrio_table, io->pfrio_buffer,
      &io->pfrio_size, io->pfrio_flags | 0x10000000);
  (void)(0);
  break;
 }
 case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct pfioc_table) & 0x1fff) << 16) | ((('D')) << 8) | ((71))): {
  struct pfioc_table *io = (struct pfioc_table *)addr;
  if (io->pfrio_esize != sizeof(struct pfr_astats)) {
   error = 19;
   break;
  }
  (void)(0);
  error = pfr_get_astats(&io->pfrio_table, io->pfrio_buffer,
      &io->pfrio_size, io->pfrio_flags | 0x10000000);
  (void)(0);
  break;
 }
 case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct pfioc_table) & 0x1fff) << 16) | ((('D')) << 8) | ((72))): {
  struct pfioc_table *io = (struct pfioc_table *)addr;
  if (io->pfrio_esize != sizeof(struct pfr_addr)) {
   error = 19;
   break;
  }
  (void)(0);
  error = pfr_clr_astats(&io->pfrio_table, io->pfrio_buffer,
      io->pfrio_size, &io->pfrio_nadd, io->pfrio_flags |
      0x10000000);
  (void)(0);
  break;
 }
 case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct pfioc_table) & 0x1fff) << 16) | ((('D')) << 8) | ((73))): {
  struct pfioc_table *io = (struct pfioc_table *)addr;
  if (io->pfrio_esize != sizeof(struct pfr_addr)) {
   error = 19;
   break;
  }
  (void)(0);
  error = pfr_tst_addrs(&io->pfrio_table, io->pfrio_buffer,
      io->pfrio_size, &io->pfrio_nadd, io->pfrio_flags |
      0x10000000);
  (void)(0);
  break;
 }
 case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct pfioc_table) & 0x1fff) << 16) | ((('D')) << 8) | ((77))): {
  struct pfioc_table *io = (struct pfioc_table *)addr;
  if (io->pfrio_esize != sizeof(struct pfr_addr)) {
   error = 19;
   break;
  }
  (void)(0);
  error = pfr_ina_define(&io->pfrio_table, io->pfrio_buffer,
      io->pfrio_size, &io->pfrio_nadd, &io->pfrio_size2,
      io->pfrio_ticket, io->pfrio_flags | 0x10000000);
  (void)(0);
  break;
 }
 case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct pf_osfp_ioctl) & 0x1fff) << 16) | ((('D')) << 8) | ((79))): {
  struct pf_osfp_ioctl *io = (struct pf_osfp_ioctl *)addr;
  (void)(0);
  error = pf_osfp_add(io);
  (void)(0);
  break;
 }
 case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct pf_osfp_ioctl) & 0x1fff) << 16) | ((('D')) << 8) | ((80))): {
  struct pf_osfp_ioctl *io = (struct pf_osfp_ioctl *)addr;
  (void)(0);
  error = pf_osfp_get(io);
  (void)(0);
  break;
 }
 case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct pfioc_trans) & 0x1fff) << 16) | ((('D')) << 8) | ((81))): {
  struct pfioc_trans *io = (struct pfioc_trans *)addr;
  struct pfioc_trans_e *ioe;
  struct pfr_table *table;
  int i;
  if (io->esize != sizeof(*ioe)) {
   error = 19;
   goto fail;
  }
  (void)(0);
  ioe = malloc(sizeof(*ioe), 127, 0x0001);
  table = malloc(sizeof(*table), 127, 0x0001);
  pf_default_rule_new = pf_default_rule;
  __builtin_bzero((&pf_trans_set), (sizeof(pf_trans_set)));
  for (i = 0; i < io->size; i++) {
   if (copyin(io->array+i, ioe, sizeof(*ioe))) {
    free(table, 127, sizeof(*table));
    free(ioe, 127, sizeof(*ioe));
    error = 14;
    (void)(0);
    goto fail;
   }
   if (strnlen(ioe->anchor, sizeof(ioe->anchor)) ==
       sizeof(ioe->anchor)) {
    free(table, 127, sizeof(*table));
    free(ioe, 127, sizeof(*ioe));
    error = 63;
    (void)(0);
    goto fail;
   }
   switch (ioe->type) {
   case PF_TRANS_TABLE:
    __builtin_bzero((table), (sizeof(*table)));
    strlcpy(table->pfrt_anchor, ioe->anchor,
        sizeof(table->pfrt_anchor));
    if ((error = pfr_ina_begin(table,
        &ioe->ticket, ((void *)0), 0))) {
     free(table, 127, sizeof(*table));
     free(ioe, 127, sizeof(*ioe));
     (void)(0);
     goto fail;
    }
    break;
   default:
    if ((error = pf_begin_rules(&ioe->ticket,
        ioe->anchor))) {
     free(table, 127, sizeof(*table));
     free(ioe, 127, sizeof(*ioe));
     (void)(0);
     goto fail;
    }
    break;
   }
   if (copyout(ioe, io->array+i, sizeof(io->array[i]))) {
    free(table, 127, sizeof(*table));
    free(ioe, 127, sizeof(*ioe));
    error = 14;
    (void)(0);
    goto fail;
   }
  }
  free(table, 127, sizeof(*table));
  free(ioe, 127, sizeof(*ioe));
  (void)(0);
  break;
 }
 case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct pfioc_trans) & 0x1fff) << 16) | ((('D')) << 8) | ((83))): {
  struct pfioc_trans *io = (struct pfioc_trans *)addr;
  struct pfioc_trans_e *ioe;
  struct pfr_table *table;
  int i;
  if (io->esize != sizeof(*ioe)) {
   error = 19;
   goto fail;
  }
  (void)(0);
  ioe = malloc(sizeof(*ioe), 127, 0x0001);
  table = malloc(sizeof(*table), 127, 0x0001);
  for (i = 0; i < io->size; i++) {
   if (copyin(io->array+i, ioe, sizeof(*ioe))) {
    free(table, 127, sizeof(*table));
    free(ioe, 127, sizeof(*ioe));
    error = 14;
    (void)(0);
    goto fail;
   }
   if (strnlen(ioe->anchor, sizeof(ioe->anchor)) ==
       sizeof(ioe->anchor)) {
    free(table, 127, sizeof(*table));
    free(ioe, 127, sizeof(*ioe));
    error = 63;
    (void)(0);
    goto fail;
   }
   switch (ioe->type) {
   case PF_TRANS_TABLE:
    __builtin_bzero((table), (sizeof(*table)));
    strlcpy(table->pfrt_anchor, ioe->anchor,
        sizeof(table->pfrt_anchor));
    if ((error = pfr_ina_rollback(table,
        ioe->ticket, ((void *)0), 0))) {
     free(table, 127, sizeof(*table));
     free(ioe, 127, sizeof(*ioe));
     (void)(0);
     goto fail;
    }
    break;
   default:
    if ((error = pf_rollback_rules(ioe->ticket,
        ioe->anchor))) {
     free(table, 127, sizeof(*table));
     free(ioe, 127, sizeof(*ioe));
     (void)(0);
     goto fail;
    }
    break;
   }
  }
  free(table, 127, sizeof(*table));
  free(ioe, 127, sizeof(*ioe));
  (void)(0);
  break;
 }
 case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct pfioc_trans) & 0x1fff) << 16) | ((('D')) << 8) | ((82))): {
  struct pfioc_trans *io = (struct pfioc_trans *)addr;
  struct pfioc_trans_e *ioe;
  struct pfr_table *table;
  struct pf_ruleset *rs;
  int i;
  if (io->esize != sizeof(*ioe)) {
   error = 19;
   goto fail;
  }
  (void)(0);
  ioe = malloc(sizeof(*ioe), 127, 0x0001);
  table = malloc(sizeof(*table), 127, 0x0001);
  for (i = 0; i < io->size; i++) {
   if (copyin(io->array+i, ioe, sizeof(*ioe))) {
    free(table, 127, sizeof(*table));
    free(ioe, 127, sizeof(*ioe));
    error = 14;
    (void)(0);
    goto fail;
   }
   if (strnlen(ioe->anchor, sizeof(ioe->anchor)) ==
       sizeof(ioe->anchor)) {
    free(table, 127, sizeof(*table));
    free(ioe, 127, sizeof(*ioe));
    error = 63;
    (void)(0);
    goto fail;
   }
   switch (ioe->type) {
   case PF_TRANS_TABLE:
    rs = pf_find_ruleset(ioe->anchor);
    if (rs == ((void *)0) || !rs->topen || ioe->ticket !=
         rs->tticket) {
     free(table, 127, sizeof(*table));
     free(ioe, 127, sizeof(*ioe));
     error = 16;
     (void)(0);
     goto fail;
    }
    break;
   default:
    rs = pf_find_ruleset(ioe->anchor);
    if (rs == ((void *)0) ||
        !rs->rules.inactive.open ||
        rs->rules.inactive.ticket !=
        ioe->ticket) {
     free(table, 127, sizeof(*table));
     free(ioe, 127, sizeof(*ioe));
     error = 16;
     (void)(0);
     goto fail;
    }
    break;
   }
  }
  for (i = 0; i < PF_LIMIT_MAX; i++) {
   if (((struct pool *)pf_pool_limits[i].pp)->pr_nout >
       pf_pool_limits[i].limit_new) {
    free(table, 127, sizeof(*table));
    free(ioe, 127, sizeof(*ioe));
    error = 16;
    (void)(0);
    goto fail;
   }
  }
  for (i = 0; i < io->size; i++) {
   if (copyin(io->array+i, ioe, sizeof(*ioe))) {
    free(table, 127, sizeof(*table));
    free(ioe, 127, sizeof(*ioe));
    error = 14;
    (void)(0);
    goto fail;
   }
   if (strnlen(ioe->anchor, sizeof(ioe->anchor)) ==
       sizeof(ioe->anchor)) {
    free(table, 127, sizeof(*table));
    free(ioe, 127, sizeof(*ioe));
    error = 63;
    (void)(0);
    goto fail;
   }
   switch (ioe->type) {
   case PF_TRANS_TABLE:
    __builtin_bzero((table), (sizeof(*table)));
    strlcpy(table->pfrt_anchor, ioe->anchor,
        sizeof(table->pfrt_anchor));
    if ((error = pfr_ina_commit(table, ioe->ticket,
        ((void *)0), ((void *)0), 0))) {
     free(table, 127, sizeof(*table));
     free(ioe, 127, sizeof(*ioe));
     (void)(0);
     goto fail;
    }
    break;
   default:
    if ((error = pf_commit_rules(ioe->ticket,
        ioe->anchor))) {
     free(table, 127, sizeof(*table));
     free(ioe, 127, sizeof(*ioe));
     (void)(0);
     goto fail;
    }
    break;
   }
  }
  for (i = 0; i < PF_LIMIT_MAX; i++) {
   if (pf_pool_limits[i].limit_new !=
       pf_pool_limits[i].limit &&
       pool_sethardlimit(pf_pool_limits[i].pp,
       pf_pool_limits[i].limit_new, ((void *)0), 0) != 0) {
    free(table, 127, sizeof(*table));
    free(ioe, 127, sizeof(*ioe));
    error = 16;
    (void)(0);
    goto fail;
   }
   pf_pool_limits[i].limit = pf_pool_limits[i].limit_new;
  }
  for (i = 0; i < PFTM_MAX; i++) {
   int old = pf_default_rule.timeout[i];
   pf_default_rule.timeout[i] =
       pf_default_rule_new.timeout[i];
   if (pf_default_rule.timeout[i] == PFTM_INTERVAL &&
       pf_default_rule.timeout[i] < old)
    task_add(softnettq, &pf_purge_task);
  }
  pfi_xcommit();
  pf_trans_set_commit();
  free(table, 127, sizeof(*table));
  free(ioe, 127, sizeof(*ioe));
  (void)(0);
  break;
 }
 case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct pfioc_src_nodes) & 0x1fff) << 16) | ((('D')) << 8) | ((84))): {
  struct pfioc_src_nodes *psn = (struct pfioc_src_nodes *)addr;
  struct pf_src_node *n, *p, *pstore;
  u_int32_t nr = 0;
  int space = psn->psn_len;
  (void)(0);
  if (space == 0) {
   for ((n) = pf_src_tree_RB_MINMAX(&tree_src_tracking, -1); (n) != ((void *)0); (n) = pf_src_tree_RB_NEXT(n))
    nr++;
   psn->psn_len = sizeof(struct pf_src_node) * nr;
   (void)(0);
   break;
  }
  pstore = malloc(sizeof(*pstore), 127, 0x0001);
  p = psn->psn_u.psu_src_nodes;
  for ((n) = pf_src_tree_RB_MINMAX(&tree_src_tracking, -1); (n) != ((void *)0); (n) = pf_src_tree_RB_NEXT(n)) {
   int secs = time_uptime, diff;
   if ((nr + 1) * sizeof(*p) > (unsigned)psn->psn_len)
    break;
   __builtin_bcopy((n), (pstore), (sizeof(*pstore)));
   __builtin_bzero((&pstore->entry), (sizeof(pstore->entry)));
   pstore->rule.ptr = ((void *)0);
   pstore->kif = ((void *)0);
   pstore->rule.nr = n->rule.ptr->nr;
   pstore->creation = secs - pstore->creation;
   if (pstore->expire > secs)
    pstore->expire -= secs;
   else
    pstore->expire = 0;
   diff = secs - n->conn_rate.last;
   if (diff >= n->conn_rate.seconds)
    pstore->conn_rate.count = 0;
   else
    pstore->conn_rate.count -=
        n->conn_rate.count * diff /
        n->conn_rate.seconds;
   error = copyout(pstore, p, sizeof(*p));
   if (error) {
    free(pstore, 127, sizeof(*pstore));
    (void)(0);
    goto fail;
   }
   p++;
   nr++;
  }
  psn->psn_len = sizeof(struct pf_src_node) * nr;
  free(pstore, 127, sizeof(*pstore));
  (void)(0);
  break;
 }
 case ((unsigned long)0x20000000 | ((0 & 0x1fff) << 16) | ((('D')) << 8) | ((85))): {
  struct pf_src_node *n;
  struct pf_state *state;
  (void)(0);
  for ((state) = pf_state_tree_id_RB_MINMAX(&tree_id, -1); (state) != ((void *)0); (state) = pf_state_tree_id_RB_NEXT(state))
   pf_src_tree_remove_state(state);
  for ((n) = pf_src_tree_RB_MINMAX(&tree_src_tracking, -1); (n) != ((void *)0); (n) = pf_src_tree_RB_NEXT(n))
   n->expire = 1;
  pf_purge_expired_src_nodes(1);
  (void)(0);
  break;
 }
 case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct pfioc_src_node_kill) & 0x1fff) << 16) | ((('D')) << 8) | ((91))): {
  struct pf_src_node *sn;
  struct pf_state *s;
  struct pfioc_src_node_kill *psnk =
      (struct pfioc_src_node_kill *)addr;
  u_int killed = 0;
  (void)(0);
  for ((sn) = pf_src_tree_RB_MINMAX(&tree_src_tracking, -1); (sn) != ((void *)0); (sn) = pf_src_tree_RB_NEXT(sn)) {
   if (pf_match_addr(psnk->psnk_src.neg, &psnk->psnk_src.addr.v.a.addr, &psnk->psnk_src.addr.v.a.mask, &sn->addr, sn->af) &&
       pf_match_addr(psnk->psnk_dst.neg, &psnk->psnk_dst.addr.v.a.addr, &psnk->psnk_dst.addr.v.a.mask, &sn->raddr, sn->af)) {
    if (sn->states != 0)
     for ((s) = pf_state_tree_id_RB_MINMAX(&tree_id, -1); (s) != ((void *)0); (s) = pf_state_tree_id_RB_NEXT(s))
      pf_state_rm_src_node(s, sn);
    sn->expire = 1;
    killed++;
   }
  }
  if (killed > 0)
   pf_purge_expired_src_nodes(1);
  psnk->psnk_killed = killed;
  (void)(0);
  break;
 }
 case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(u_int32_t) & 0x1fff) << 16) | ((('D')) << 8) | ((86))): {
  u_int32_t *hostid = (u_int32_t *)addr;
  (void)(0);
  if (*hostid == 0)
   pf_trans_set.hostid = arc4random();
  else
   pf_trans_set.hostid = *hostid;
  pf_trans_set.mask |= 0x04;
  (void)(0);
  break;
 }
 case ((unsigned long)0x20000000 | ((0 & 0x1fff) << 16) | ((('D')) << 8) | ((78))):
  (void)(0);
  pf_osfp_flush();
  (void)(0);
  break;
 case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct pfioc_iface) & 0x1fff) << 16) | ((('D')) << 8) | ((87))): {
  struct pfioc_iface *io = (struct pfioc_iface *)addr;
  if (io->pfiio_esize != sizeof(struct pfi_kif)) {
   error = 19;
   break;
  }
  (void)(0);
  error = pfi_get_ifaces(io->pfiio_name, io->pfiio_buffer,
      &io->pfiio_size);
  (void)(0);
  break;
 }
 case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct pfioc_iface) & 0x1fff) << 16) | ((('D')) << 8) | ((89))): {
  struct pfioc_iface *io = (struct pfioc_iface *)addr;
  (void)(0);
  error = pfi_set_flags(io->pfiio_name, io->pfiio_flags);
  (void)(0);
  break;
 }
 case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct pfioc_iface) & 0x1fff) << 16) | ((('D')) << 8) | ((90))): {
  struct pfioc_iface *io = (struct pfioc_iface *)addr;
  (void)(0);
  error = pfi_clear_flags(io->pfiio_name, io->pfiio_flags);
  (void)(0);
  break;
 }
 case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(u_int32_t) & 0x1fff) << 16) | ((('D')) << 8) | ((92))): {
  u_int32_t *reass = (u_int32_t *)addr;
  (void)(0);
  pf_trans_set.reass = *reass;
  pf_trans_set.mask |= 0x08;
  (void)(0);
  break;
 }
 default:
  error = 19;
  break;
 }
fail:
 do { _rw_exit_write(&netlock ); } while (0);
 return (error);
}
void
pf_trans_set_commit(void)
{
 if (pf_trans_set.mask & 0x01)
  strlcpy(pf_status.ifname, pf_trans_set.statusif, 16);
 if (pf_trans_set.mask & 0x02)
  pf_status.debug = pf_trans_set.debug;
 if (pf_trans_set.mask & 0x04)
  pf_status.hostid = pf_trans_set.hostid;
 if (pf_trans_set.mask & 0x08)
  pf_status.reass = pf_trans_set.reass;
}
void
pf_pool_copyin(struct pf_pool *from, struct pf_pool *to)
{
 __builtin_bcopy((from), (to), (sizeof(*to)));
 to->kif = ((void *)0);
}
int
pf_rule_copyin(struct pf_rule *from, struct pf_rule *to,
    struct pf_ruleset *ruleset)
{
 int i;
 to->src = from->src;
 to->dst = from->dst;
 strlcpy(to->label, from->label, sizeof(to->label));
 strlcpy(to->ifname, from->ifname, sizeof(to->ifname));
 strlcpy(to->rcv_ifname, from->rcv_ifname, sizeof(to->rcv_ifname));
 strlcpy(to->qname, from->qname, sizeof(to->qname));
 strlcpy(to->pqname, from->pqname, sizeof(to->pqname));
 strlcpy(to->tagname, from->tagname, sizeof(to->tagname));
 strlcpy(to->match_tagname, from->match_tagname,
     sizeof(to->match_tagname));
 strlcpy(to->overload_tblname, from->overload_tblname,
     sizeof(to->overload_tblname));
 pf_pool_copyin(&from->nat, &to->nat);
 pf_pool_copyin(&from->rdr, &to->rdr);
 pf_pool_copyin(&from->route, &to->route);
 if (pf_kif_setup(to->ifname, &to->kif))
  return (22);
 if (pf_kif_setup(to->rcv_ifname, &to->rcv_kif))
  return (22);
 if (to->overload_tblname[0]) {
  if ((to->overload_tbl = pfr_attach_table(ruleset,
      to->overload_tblname, 0)) == ((void *)0))
   return (22);
  else
   to->overload_tbl->pfrkt_ts.pfrts_t.pfrt_flags |= 0x00000004;
 }
 if (pf_kif_setup(to->rdr.ifname, &to->rdr.kif))
  return (22);
 if (pf_kif_setup(to->nat.ifname, &to->nat.kif))
  return (22);
 if (pf_kif_setup(to->route.ifname, &to->route.kif))
  return (22);
 to->os_fingerprint = from->os_fingerprint;
 to->rtableid = from->rtableid;
 if (to->rtableid >= 0 && !rtable_exists(to->rtableid))
  return (16);
 to->onrdomain = from->onrdomain;
 if (to->onrdomain >= 0 && !rtable_exists(to->onrdomain))
  return (16);
 if (to->onrdomain >= 0)
  to->onrdomain = rtable_l2(to->onrdomain);
 for (i = 0; i < PFTM_MAX; i++)
  to->timeout[i] = from->timeout[i];
 to->states_tot = from->states_tot;
 to->max_states = from->max_states;
 to->max_src_nodes = from->max_src_nodes;
 to->max_src_states = from->max_src_states;
 to->max_src_conn = from->max_src_conn;
 to->max_src_conn_rate.limit = from->max_src_conn_rate.limit;
 to->max_src_conn_rate.seconds = from->max_src_conn_rate.seconds;
 if (to->qname[0] != 0) {
  if ((to->qid = pf_qname2qid(to->qname, 0)) == 0)
   return (16);
  if (to->pqname[0] != 0) {
   if ((to->pqid = pf_qname2qid(to->pqname, 0)) == 0)
    return (16);
  } else
   to->pqid = to->qid;
 }
 to->rt_listid = from->rt_listid;
 to->prob = from->prob;
 to->return_icmp = from->return_icmp;
 to->return_icmp6 = from->return_icmp6;
 to->max_mss = from->max_mss;
 if (to->tagname[0])
  if ((to->tag = pf_tagname2tag(to->tagname, 1)) == 0)
   return (16);
 if (to->match_tagname[0])
  if ((to->match_tag = pf_tagname2tag(to->match_tagname, 1)) == 0)
   return (16);
 to->scrub_flags = from->scrub_flags;
 to->uid = from->uid;
 to->gid = from->gid;
 to->rule_flag = from->rule_flag;
 to->action = from->action;
 to->direction = from->direction;
 to->log = from->log;
 to->logif = from->logif;
 if (!to->log)
  to->logif = 0;
 to->quick = from->quick;
 to->ifnot = from->ifnot;
 to->rcvifnot = from->rcvifnot;
 to->match_tag_not = from->match_tag_not;
 to->keep_state = from->keep_state;
 to->af = from->af;
 to->naf = from->naf;
 to->proto = from->proto;
 to->type = from->type;
 to->code = from->code;
 to->flags = from->flags;
 to->flagset = from->flagset;
 to->min_ttl = from->min_ttl;
 to->allow_opts = from->allow_opts;
 to->rt = from->rt;
 to->return_ttl = from->return_ttl;
 to->tos = from->tos;
 to->set_tos = from->set_tos;
 to->anchor_relative = from->anchor_relative;
 to->anchor_wildcard = from->anchor_wildcard;
 to->flush = from->flush;
 to->divert.addr = from->divert.addr;
 to->divert.port = from->divert.port;
 to->divert_packet.addr = from->divert_packet.addr;
 to->divert_packet.port = from->divert_packet.port;
 to->prio = from->prio;
 to->set_prio[0] = from->set_prio[0];
 to->set_prio[1] = from->set_prio[1];
 return (0);
}
