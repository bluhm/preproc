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
struct mutex {
 volatile void *mtx_owner;
 int mtx_wantipl;
 int mtx_oldipl;
};
void __mtx_init(struct mutex *, int);
void __mtx_enter(struct mutex *);
int __mtx_enter_try(struct mutex *);
void __mtx_leave(struct mutex *);
enum sensor_type {
 SENSOR_TEMP,
 SENSOR_FANRPM,
 SENSOR_VOLTS_DC,
 SENSOR_VOLTS_AC,
 SENSOR_OHMS,
 SENSOR_WATTS,
 SENSOR_AMPS,
 SENSOR_WATTHOUR,
 SENSOR_AMPHOUR,
 SENSOR_INDICATOR,
 SENSOR_INTEGER,
 SENSOR_PERCENT,
 SENSOR_LUX,
 SENSOR_DRIVE,
 SENSOR_TIMEDELTA,
 SENSOR_HUMIDITY,
 SENSOR_FREQ,
 SENSOR_ANGLE,
 SENSOR_DISTANCE,
 SENSOR_PRESSURE,
 SENSOR_ACCEL,
 SENSOR_MAX_TYPES
};
enum sensor_status {
 SENSOR_S_UNSPEC,
 SENSOR_S_OK,
 SENSOR_S_WARN,
 SENSOR_S_CRIT,
 SENSOR_S_UNKNOWN
};
struct sensor {
 char desc[32];
 struct timeval tv;
 int64_t value;
 enum sensor_type type;
 enum sensor_status status;
 int numt;
 int flags;
};
struct sensordev {
 int num;
 char xname[16];
 int maxnumt[SENSOR_MAX_TYPES];
 int sensors_count;
};
struct ksensor {
 struct { struct ksensor *sle_next; } list;
 char desc[32];
 struct timeval tv;
 int64_t value;
 enum sensor_type type;
 enum sensor_status status;
 int numt;
 int flags;
};
struct ksensors_head { struct ksensor *slh_first; };
struct ksensordev {
 struct { struct ksensordev *sle_next; } list;
 int num;
 char xname[16];
 int maxnumt[SENSOR_MAX_TYPES];
 int sensors_count;
 struct ksensors_head sensors_list;
};
void sensordev_install(struct ksensordev *);
void sensordev_deinstall(struct ksensordev *);
int sensordev_get(int, struct ksensordev **);
void sensor_attach(struct ksensordev *, struct ksensor *);
void sensor_detach(struct ksensordev *, struct ksensor *);
int sensor_find(int, enum sensor_type, int, struct ksensor **);
struct sensor_task;
struct sensor_task *sensor_task_register(void *, void (*)(void *),
        unsigned int);
void sensor_task_unregister(struct sensor_task *);
void sensor_quiesce(void);
void sensor_restart(void);
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
struct qlw_nvram_target {
 u_int8_t parameter;
 u_int8_t execution_throttle;
 u_int8_t sync_period;
 u_int8_t flags;
 u_int8_t reserved[2];
} __attribute__((__packed__));
struct qlw_nvram_1040 {
 u_int8_t id[4];
 u_int8_t nvram_version;
 u_int8_t config1;
 u_int8_t reset_delay;
 u_int8_t retry_count;
 u_int8_t retry_delay;
 u_int8_t config2;
 u_int8_t tag_age_limit;
 u_int8_t flags1;
 u_int16_t selection_timeout;
 u_int16_t max_queue_depth;
 u_int8_t flags2;
 u_int8_t reserved_0[5];
 u_int8_t flags3;
 u_int8_t reserved_1[5];
 struct qlw_nvram_target target[16];
 u_int8_t reserved_2[3];
 u_int8_t checksum;
} __attribute__((__packed__));
struct qlw_nvram_bus {
 u_int8_t config1;
 u_int8_t reset_delay;
 u_int8_t retry_count;
 u_int8_t retry_delay;
 u_int8_t config2;
 u_int8_t reserved_0;
 u_int16_t selection_timeout;
 u_int16_t max_queue_depth;
 u_int8_t reserved_1[6];
 struct qlw_nvram_target target[16];
} __attribute__((__packed__));
struct qlw_nvram_1080 {
 u_int8_t id[4];
 u_int8_t nvram_version;
 u_int8_t flags1;
 u_int16_t flags2;
 u_int8_t reserved_0[8];
 u_int8_t isp_config;
 u_int8_t termination;
 u_int16_t isp_parameter;
 u_int16_t fw_features;
 u_int16_t reserved_1;
 struct qlw_nvram_bus bus[2];
 u_int8_t reserved_2[2];
 u_int16_t subsystem_vendor_id;
 u_int16_t subsystem_device_id;
 u_int8_t reserved_3;
 u_int8_t checksum;
} __attribute__((__packed__));
struct qlw_nvram {
 u_int8_t id[4];
 u_int8_t nvram_version;
 u_int8_t data[251];
};
struct qlw_iocb_hdr {
 u_int8_t entry_type;
 u_int8_t entry_count;
 u_int8_t seqno;
 u_int8_t flags;
} __attribute__((__packed__));
struct qlw_iocb_seg {
 u_int32_t seg_addr;
 u_int32_t seg_len;
} __attribute__((__packed__));
struct qlw_iocb_req0 {
 struct qlw_iocb_hdr hdr;
 u_int32_t handle;
 u_int16_t device;
 u_int16_t ccblen;
 u_int16_t flags;
 u_int16_t reserved;
 u_int16_t timeout;
 u_int16_t seg_count;
 u_int8_t cdb[12];
 struct qlw_iocb_seg segs[4];
} __attribute__((__packed__));
struct qlw_iocb_cont0 {
 struct qlw_iocb_hdr hdr;
 u_int32_t reserved;
 struct qlw_iocb_seg segs[7];
} __attribute__((__packed__));
struct qlw_iocb_status {
 struct qlw_iocb_hdr hdr;
 u_int32_t handle;
 u_int16_t scsi_status;
 u_int16_t completion;
 u_int16_t state_flags;
 u_int16_t status_flags;
 u_int16_t rsp_len;
 u_int16_t sense_len;
 u_int32_t resid;
 u_int8_t fcp_rsp[8];
 u_int8_t sense_data[32];
} __attribute__((__packed__));
struct qlw_iocb_marker {
 struct qlw_iocb_hdr hdr;
 u_int32_t handle;
 u_int16_t device;
 u_int16_t modifier;
 u_int8_t reserved2[52];
} __attribute__((__packed__));
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
struct qlw_softc;
enum qlw_isp_gen {
 QLW_GEN_ISP1000 = 1,
 QLW_GEN_ISP1040,
 QLW_GEN_ISP1080,
 QLW_GEN_ISP12160,
};
enum qlw_isp_type {
 QLW_ISP1000 = 1,
 QLW_ISP1020,
 QLW_ISP1020A,
 QLW_ISP1040,
 QLW_ISP1040A,
 QLW_ISP1040B,
 QLW_ISP1040C,
 QLW_ISP1240,
 QLW_ISP1080,
 QLW_ISP1280,
 QLW_ISP10160,
 QLW_ISP12160,
};
struct qlw_ccb {
 struct qlw_softc *ccb_sc;
 int ccb_id;
 struct scsi_xfer *ccb_xs;
 bus_dmamap_t ccb_dmamap;
 struct { struct qlw_ccb *sqe_next; } ccb_link;
};
struct qlw_ccb_list { struct qlw_ccb *sqh_first; struct qlw_ccb **sqh_last; };
struct qlw_dmamem {
 bus_dmamap_t qdm_map;
 bus_dma_segment_t qdm_seg;
 size_t qdm_size;
 caddr_t qdm_kva;
};
struct qlw_target {
 u_int16_t qt_params;
 u_int8_t qt_exec_throttle;
 u_int8_t qt_sync_period;
 u_int8_t qt_sync_offset;
};
struct qlw_softc {
 struct device sc_dev;
 int sc_flags;
 bus_space_tag_t sc_iot;
 bus_space_handle_t sc_ioh;
 bus_size_t sc_ios;
 bus_dma_tag_t sc_dmat;
 struct scsi_link sc_link[2];
 struct scsibus_softc *sc_scsibus[2];
 int sc_running;
 enum qlw_isp_type sc_isp_type;
 enum qlw_isp_gen sc_isp_gen;
 const u_int16_t *sc_firmware;
 int sc_numbusses;
 int sc_clock;
 int sc_host_cmd_ctrl;
 int sc_mbox_base;
 u_int16_t sc_mbox[8];
 int sc_mbox_pending;
 int sc_maxrequests;
 struct qlw_dmamem *sc_requests;
 int sc_maxresponses;
 struct qlw_dmamem *sc_responses;
 int sc_maxccbs;
 struct qlw_ccb *sc_ccbs;
 struct qlw_ccb_list sc_ccb_free;
 struct mutex sc_ccb_mtx;
 struct mutex sc_queue_mtx;
 struct scsi_iopool sc_iopool;
 u_int16_t sc_next_req_id;
 u_int16_t sc_last_resp_id;
 int sc_marker_required[2];
 u_int sc_update_required[2];
 struct task sc_update_task;
 struct qlw_nvram sc_nvram;
 int sc_nvram_size;
 int sc_nvram_minversion;
 u_int16_t sc_isp_config;
 u_int16_t sc_fw_features;
 u_int8_t sc_initiator[2];
 u_int8_t sc_retry_count[2];
 u_int8_t sc_retry_delay[2];
 u_int8_t sc_reset_delay[2];
 u_int8_t sc_tag_age_limit[2];
 u_int16_t sc_selection_timeout[2];
 u_int16_t sc_max_queue_depth[2];
 u_int8_t sc_async_data_setup[2];
 u_int8_t sc_req_ack_active_neg[2];
 u_int8_t sc_data_line_active_neg[2];
 struct qlw_target sc_target[2][16];
};
int qlw_attach(struct qlw_softc *);
int qlw_detach(struct qlw_softc *, int);
int qlw_intr(void *);
int qlwdebug = 0x04 | 0x02 | 0x01;
struct cfdriver qlw_cd = {
 ((void *)0),
 "qlw",
 DV_DULL
};
void qlw_scsi_cmd(struct scsi_xfer *);
int qlw_scsi_probe(struct scsi_link *);
u_int16_t qlw_read(struct qlw_softc *, bus_size_t);
void qlw_write(struct qlw_softc *, bus_size_t, u_int16_t);
void qlw_host_cmd(struct qlw_softc *sc, u_int16_t);
int qlw_mbox(struct qlw_softc *, int, int);
void qlw_mbox_putaddr(u_int16_t *, struct qlw_dmamem *);
u_int16_t qlw_read_mbox(struct qlw_softc *, int);
void qlw_write_mbox(struct qlw_softc *, int, u_int16_t);
int qlw_config_bus(struct qlw_softc *, int);
int qlw_config_target(struct qlw_softc *, int, int);
void qlw_update_bus(struct qlw_softc *, int);
void qlw_update_target(struct qlw_softc *, int, int);
void qlw_update_task(void *);
void qlw_handle_intr(struct qlw_softc *, u_int16_t, u_int16_t);
void qlw_set_ints(struct qlw_softc *, int);
int qlw_read_isr(struct qlw_softc *, u_int16_t *, u_int16_t *);
void qlw_clear_isr(struct qlw_softc *, u_int16_t);
void qlw_update(struct qlw_softc *, int);
void qlw_put_marker(struct qlw_softc *, int, void *);
void qlw_put_cmd(struct qlw_softc *, void *, struct scsi_xfer *,
      struct qlw_ccb *);
void qlw_put_cont(struct qlw_softc *, void *, struct scsi_xfer *,
      struct qlw_ccb *, int);
struct qlw_ccb *qlw_handle_resp(struct qlw_softc *, u_int16_t);
void qlw_get_header(struct qlw_softc *, struct qlw_iocb_hdr *,
      int *, int *);
void qlw_put_header(struct qlw_softc *, struct qlw_iocb_hdr *,
      int, int);
void qlw_put_data_seg(struct qlw_softc *, struct qlw_iocb_seg *,
      bus_dmamap_t, int);
int qlw_softreset(struct qlw_softc *);
void qlw_dma_burst_enable(struct qlw_softc *);
int qlw_async(struct qlw_softc *, u_int16_t);
int qlw_load_firmware_words(struct qlw_softc *, const u_int16_t *,
      u_int16_t);
int qlw_load_firmware(struct qlw_softc *);
int qlw_read_nvram(struct qlw_softc *);
void qlw_parse_nvram_1040(struct qlw_softc *, int);
void qlw_parse_nvram_1080(struct qlw_softc *, int);
void qlw_init_defaults(struct qlw_softc *, int);
struct qlw_dmamem *qlw_dmamem_alloc(struct qlw_softc *, size_t);
void qlw_dmamem_free(struct qlw_softc *, struct qlw_dmamem *);
int qlw_alloc_ccbs(struct qlw_softc *);
void qlw_free_ccbs(struct qlw_softc *);
void *qlw_get_ccb(void *);
void qlw_put_ccb(void *, void *);
void qlw_dump_iocb(struct qlw_softc *, void *, int);
void qlw_dump_iocb_segs(struct qlw_softc *, void *, int);
static inline int
qlw_xs_bus(struct qlw_softc *sc, struct scsi_xfer *xs)
{
 return ((xs->sc_link->scsibus == sc->sc_link[0].scsibus) ? 0 : 1);
}
static inline u_int16_t
qlw_swap16(struct qlw_softc *sc, u_int16_t value)
{
 if (sc->sc_isp_gen == QLW_GEN_ISP1000)
  return ((__uint16_t)(value));
 else
  return __extension__({ __uint16_t __swap16gen_x = (value); (__uint16_t)((__swap16gen_x & 0xff) << 8 | (__swap16gen_x & 0xff00) >> 8); });
}
static inline u_int32_t
qlw_swap32(struct qlw_softc *sc, u_int32_t value)
{
 if (sc->sc_isp_gen == QLW_GEN_ISP1000)
  return ((__uint32_t)(value));
 else
  return __extension__({ __uint32_t __swap32gen_x = (value); (__uint32_t)((__swap32gen_x & 0xff) << 24 | (__swap32gen_x & 0xff00) << 8 | (__swap32gen_x & 0xff0000) >> 8 | (__swap32gen_x & 0xff000000) >> 24); });
}
static inline u_int16_t
qlw_queue_read(struct qlw_softc *sc, bus_size_t offset)
{
 return qlw_read(sc, sc->sc_mbox_base + offset);
}
static inline void
qlw_queue_write(struct qlw_softc *sc, bus_size_t offset, u_int16_t value)
{
 qlw_write(sc, sc->sc_mbox_base + offset, value);
}
struct scsi_adapter qlw_switch = {
 qlw_scsi_cmd,
 scsi_minphys,
 qlw_scsi_probe,
 ((void *)0),
 ((void *)0)
};
int
qlw_attach(struct qlw_softc *sc)
{
 struct scsibus_attach_args saa;
 void (*parse_nvram)(struct qlw_softc *, int);
 int reset_delay;
 int bus;
 task_set(&sc->sc_update_task, qlw_update_task, sc);
 switch (sc->sc_isp_gen) {
 case QLW_GEN_ISP1000:
  sc->sc_nvram_size = 0;
  break;
 case QLW_GEN_ISP1040:
  sc->sc_nvram_size = 128;
  sc->sc_nvram_minversion = 2;
  parse_nvram = qlw_parse_nvram_1040;
  break;
 case QLW_GEN_ISP1080:
 case QLW_GEN_ISP12160:
  sc->sc_nvram_size = 256;
  sc->sc_nvram_minversion = 1;
  parse_nvram = qlw_parse_nvram_1080;
  break;
 default:
  printf("unknown isp type\n");
  return (6);
 }
 if (qlw_read_mbox(sc, 1) != 0x4953 ||
     qlw_read_mbox(sc, 2) != 0x5020 ||
     qlw_read_mbox(sc, 3) != 0x2020) {
  qlw_host_cmd(sc, 0x3);
 }
 qlw_host_cmd(sc, 0x2);
 if (qlw_softreset(sc) != 0) {
  printf("softreset failed\n");
  return (6);
 }
 for (bus = 0; bus < sc->sc_numbusses; bus++)
  qlw_init_defaults(sc, bus);
 if (qlw_read_nvram(sc) == 0) {
  for (bus = 0; bus < sc->sc_numbusses; bus++)
   parse_nvram(sc, bus);
 }
 if (sc->sc_firmware && qlw_load_firmware(sc)) {
  printf("firmware load failed\n");
  return (6);
 }
 sc->sc_mbox[0] = 0x0002;
 sc->sc_mbox[1] = 0x1000;
 if (qlw_mbox(sc, 0x0003, 0x0001)) {
  printf("ISP couldn't exec firmware: %x\n", sc->sc_mbox[0]);
  return (6);
 }
 delay(250000);
 sc->sc_mbox[0] = 0x0008;
 if (qlw_mbox(sc, 0x0001,
     0x004f)) {
  printf("ISP not talking after firmware exec: %x\n",
      sc->sc_mbox[0]);
  return (6);
 }
 if (sc->sc_isp_gen == QLW_GEN_ISP1000 && sc->sc_firmware) {
  sc->sc_mbox[1] = 1;
  sc->sc_mbox[2] = 37;
  sc->sc_mbox[3] = 0;
  sc->sc_mbox[6] = 0;
 }
 printf("%s: firmware rev %d.%d.%d, attrs 0x%x\n", ((sc)->sc_dev.dv_xname),
     sc->sc_mbox[1], sc->sc_mbox[2], sc->sc_mbox[3], sc->sc_mbox[6]);
 sc->sc_mbox[0] = 0x001F;
 if (qlw_mbox(sc, 0x0001, 0x0007)) {
  printf("couldn't get firmware status: %x\n", sc->sc_mbox[0]);
  return (6);
 }
 sc->sc_maxrequests = sc->sc_mbox[2];
 if (sc->sc_maxrequests > 512)
  sc->sc_maxrequests = 512;
 for (bus = 0; bus < sc->sc_numbusses; bus++) {
  if (sc->sc_max_queue_depth[bus] > sc->sc_maxrequests)
   sc->sc_max_queue_depth[bus] = sc->sc_maxrequests;
 }
 sc->sc_maxresponses = sc->sc_maxrequests / 2;
 if (sc->sc_maxresponses < 64)
  sc->sc_maxresponses = 64;
 sc->sc_maxccbs = sc->sc_maxrequests / 3;
 if (sc->sc_isp_type == QLW_ISP1040A)
  sc->sc_isp_config &= ~0x0070;
 qlw_write(sc, 0x06, sc->sc_isp_config);
 if (sc->sc_isp_config & 0x0004)
  qlw_dma_burst_enable(sc);
 sc->sc_mbox[0] = 0x004a;
 sc->sc_mbox[1] = 0;
 if (sc->sc_fw_features & 0x0002)
  sc->sc_mbox[1] |= 0x0002;
 if (sc->sc_mbox[1] != 0 && qlw_mbox(sc, 0x0003, 0x0001)) {
  printf("couldn't set firmware features: %x\n", sc->sc_mbox[0]);
  return (6);
 }
 sc->sc_mbox[0] = 0x0034;
 sc->sc_mbox[1] = sc->sc_clock;
 if (qlw_mbox(sc, 0x0003, 0x0001)) {
  printf("couldn't set clock rate: %x\n", sc->sc_mbox[0]);
  return (6);
 }
 sc->sc_mbox[0] = 0x0032;
 sc->sc_mbox[1] = sc->sc_retry_count[0];
 sc->sc_mbox[2] = sc->sc_retry_delay[0];
 sc->sc_mbox[6] = sc->sc_retry_count[1];
 sc->sc_mbox[7] = sc->sc_retry_delay[1];
 if (qlw_mbox(sc, 0x00c7, 0x0001)) {
  printf("couldn't set retry count: %x\n", sc->sc_mbox[0]);
  return (6);
 }
 sc->sc_mbox[0] = 0x0036;
 sc->sc_mbox[1] = sc->sc_async_data_setup[0];
 sc->sc_mbox[2] = sc->sc_async_data_setup[1];
 if (qlw_mbox(sc, 0x0007, 0x0001)) {
  printf("couldn't set async data setup: %x\n", sc->sc_mbox[0]);
  return (6);
 }
 sc->sc_mbox[0] = 0x0035;
 sc->sc_mbox[1] = sc->sc_req_ack_active_neg[0] << 5;
 sc->sc_mbox[1] |= sc->sc_data_line_active_neg[0] << 4;
 sc->sc_mbox[2] = sc->sc_req_ack_active_neg[1] << 5;
 sc->sc_mbox[2] |= sc->sc_data_line_active_neg[1] << 4;
 if (qlw_mbox(sc, 0x0007, 0x0001)) {
  printf("couldn't set active negation: %x\n", sc->sc_mbox[0]);
  return (6);
 }
 sc->sc_mbox[0] = 0x0033;
 sc->sc_mbox[1] = sc->sc_tag_age_limit[0];
 sc->sc_mbox[2] = sc->sc_tag_age_limit[1];
 if (qlw_mbox(sc, 0x0007, 0x0001)) {
  printf("couldn't set tag age limit: %x\n", sc->sc_mbox[0]);
  return (6);
 }
 sc->sc_mbox[0] = 0x0031;
 sc->sc_mbox[1] = sc->sc_selection_timeout[0];
 sc->sc_mbox[2] = sc->sc_selection_timeout[1];
 if (qlw_mbox(sc, 0x0007, 0x0001)) {
  printf("couldn't set selection timeout: %x\n", sc->sc_mbox[0]);
  return (6);
 }
 for (bus = 0; bus < sc->sc_numbusses; bus++) {
  if (qlw_config_bus(sc, bus))
   return (6);
 }
 if (qlw_alloc_ccbs(sc)) {
  return (12);
 }
 sc->sc_mbox[0] = 0x0010;
 sc->sc_mbox[1] = sc->sc_maxrequests;
 qlw_mbox_putaddr(sc->sc_mbox, sc->sc_requests);
 sc->sc_mbox[4] = 0;
 if (qlw_mbox(sc, 0x00df, 0x0001)) {
  printf("couldn't init request queue: %x\n", sc->sc_mbox[0]);
  goto free_ccbs;
 }
 sc->sc_mbox[0] = 0x0011;
 sc->sc_mbox[1] = sc->sc_maxresponses;
 qlw_mbox_putaddr(sc->sc_mbox, sc->sc_responses);
 sc->sc_mbox[5] = 0;
 if (qlw_mbox(sc, 0x00ef, 0x0001)) {
  printf("couldn't init response queue: %x\n", sc->sc_mbox[0]);
  goto free_ccbs;
 }
 reset_delay = 0;
 for (bus = 0; bus < sc->sc_numbusses; bus++) {
  sc->sc_mbox[0] = 0x0018;
  sc->sc_mbox[1] = sc->sc_reset_delay[bus];
  sc->sc_mbox[2] = bus;
  if (qlw_mbox(sc, 0x0007, 0x0001)) {
   printf("couldn't reset bus: %x\n", sc->sc_mbox[0]);
   goto free_ccbs;
  }
  sc->sc_marker_required[bus] = 1;
  sc->sc_update_required[bus] = 0xffff;
  if (sc->sc_reset_delay[bus] > reset_delay)
   reset_delay = sc->sc_reset_delay[bus];
 }
 delay(reset_delay * 1000000);
 for (bus = 0; bus < sc->sc_numbusses; bus++) {
  sc->sc_link[bus].adapter = &qlw_switch;
  sc->sc_link[bus].adapter_softc = sc;
  sc->sc_link[bus].adapter_target = sc->sc_initiator[bus];
  sc->sc_link[bus].adapter_buswidth = 16;
  sc->sc_link[bus].openings = sc->sc_max_queue_depth[bus];
  sc->sc_link[bus].pool = &sc->sc_iopool;
  __builtin_memset((&saa), (0), (sizeof(saa)));
  saa.saa_sc_link = &sc->sc_link[bus];
  sc->sc_scsibus[bus] = (struct scsibus_softc *)
      config_found_sm((&sc->sc_dev), (&saa), (scsiprint), ((void *)0));
  qlw_update_bus(sc, bus);
 }
 sc->sc_running = 1;
 return(0);
free_ccbs:
 qlw_free_ccbs(sc);
 return (6);
}
int
qlw_detach(struct qlw_softc *sc, int flags)
{
 return (0);
}
int
qlw_config_bus(struct qlw_softc *sc, int bus)
{
 int target, err;
 sc->sc_mbox[0] = 0x0030;
 sc->sc_mbox[1] = (bus << 7) | sc->sc_initiator[bus];
 if (qlw_mbox(sc, 0x0003, 0x0001)) {
  printf("couldn't set initiator id: %x\n", sc->sc_mbox[0]);
  return (6);
 }
 for (target = 0; target < 16; target++) {
  err = qlw_config_target(sc, bus, target);
  if (err)
   return (err);
 }
 return (0);
}
int
qlw_config_target(struct qlw_softc *sc, int bus, int target)
{
 int lun;
 sc->sc_mbox[0] = 0x0038;
 sc->sc_mbox[1] = (((bus << 7) | target) << 8);
 sc->sc_mbox[2] = sc->sc_target[bus][target].qt_params;
 sc->sc_mbox[2] &= 0xc500;
 sc->sc_mbox[2] |= 0x0080 | 0x0040;
 sc->sc_mbox[3] = 0;
 if (qlw_mbox(sc, 0x000f, 0x0001)) {
  printf("couldn't set target parameters: %x\n", sc->sc_mbox[0]);
  return (6);
 }
 for (lun = 0; lun < 8; lun++) {
  sc->sc_mbox[0] = 0x0039;
  sc->sc_mbox[1] = (((bus << 7) | target) << 8) | lun;
  sc->sc_mbox[2] = sc->sc_max_queue_depth[bus];
  sc->sc_mbox[3] = sc->sc_target[bus][target].qt_exec_throttle;
  if (qlw_mbox(sc, 0x000f, 0x0001)) {
   printf("couldn't set lun parameters: %x\n",
       sc->sc_mbox[0]);
   return (6);
  }
 }
 return (0);
}
void
qlw_update_bus(struct qlw_softc *sc, int bus)
{
 int target;
 for (target = 0; target < 16; target++)
  qlw_update_target(sc, bus, target);
}
void
qlw_update_target(struct qlw_softc *sc, int bus, int target)
{
 struct scsi_link *link;
 int lun;
 if ((sc->sc_update_required[bus] & (1 << target)) == 0)
  return;
 atomic_clearbits_int(&sc->sc_update_required[bus], (1 << target));
 link = scsi_get_link(sc->sc_scsibus[bus], target, 0);
 if (link == ((void *)0))
  return;
 sc->sc_mbox[0] = 0x0038;
 sc->sc_mbox[1] = (((bus << 7) | target) << 8);
 sc->sc_mbox[2] = sc->sc_target[bus][target].qt_params;
 sc->sc_mbox[2] |= 0x0100;
 sc->sc_mbox[2] &= ~0x0200;
 if (link->quirks & 0x0002)
  sc->sc_mbox[2] &= ~0x1000;
 if (link->quirks & 0x0004)
  sc->sc_mbox[2] &= ~0x2000;
 if (link->quirks & 0x0008)
  sc->sc_mbox[2] &= ~0x0800;
 sc->sc_mbox[3] = sc->sc_target[bus][target].qt_sync_period;
 sc->sc_mbox[3] |= (sc->sc_target[bus][target].qt_sync_offset << 8);
 if (qlw_mbox(sc, 0x000f, 0x0001)) {
  printf("couldn't set target parameters: %x\n", sc->sc_mbox[0]);
  return;
 }
 for (lun = 0; lun < 8; lun++) {
  sc->sc_mbox[0] = 0x0039;
  sc->sc_mbox[1] = (((bus << 7) | target) << 8) | lun;
  sc->sc_mbox[2] = sc->sc_max_queue_depth[bus];
  sc->sc_mbox[3] = sc->sc_target[bus][target].qt_exec_throttle;
  if (qlw_mbox(sc, 0x000f, 0x0001)) {
   printf("couldn't set lun parameters: %x\n",
       sc->sc_mbox[0]);
   return;
  }
 }
}
void
qlw_update_task(void *xsc)
{
 struct qlw_softc *sc = xsc;
 int bus;
 for (bus = 0; bus < sc->sc_numbusses; bus++)
  qlw_update_bus(sc, bus);
}
struct qlw_ccb *
qlw_handle_resp(struct qlw_softc *sc, u_int16_t id)
{
 struct qlw_ccb *ccb;
 struct qlw_iocb_hdr *hdr;
 struct qlw_iocb_status *status;
 struct scsi_xfer *xs;
 u_int32_t handle;
 int entry_type;
 int flags;
 int bus;
 ccb = ((void *)0);
 hdr = ((void *)(sc->sc_responses)->qdm_kva) + (id * 64);
 bus_dmamap_sync(sc->sc_dmat,
     ((sc->sc_responses)->qdm_map), id * 64,
     64, 0x02);
 qlw_get_header(sc, hdr, &entry_type, &flags);
 switch (entry_type) {
 case 0x03:
  status = (struct qlw_iocb_status *)hdr;
  handle = qlw_swap32(sc, status->handle);
  if (handle > sc->sc_maxccbs) {
   panic("bad completed command handle: %d (> %d)",
       handle, sc->sc_maxccbs);
  }
  ccb = &sc->sc_ccbs[handle];
  xs = ccb->ccb_xs;
  if (xs == ((void *)0)) {
   do { if ((qlwdebug & (0x02)) == (0x02)) printf("%s: got status for inactive" " ccb %d\n", ((sc)->sc_dev.dv_xname), handle); } while (0);
   qlw_dump_iocb(sc, hdr, 0x02);
   ccb = ((void *)0);
   break;
  }
  if (xs->io != ccb) {
   panic("completed command handle doesn't match xs "
       "(handle %d, ccb %p, xs->io %p)", handle, ccb,
       xs->io);
  }
  if (xs->datalen > 0) {
   bus_dmamap_sync(sc->sc_dmat, ccb->ccb_dmamap, 0,
       ccb->ccb_dmamap->dm_mapsize,
       (xs->flags & 0x00800) ? 0x02 :
       0x08);
   bus_dmamap_unload(sc->sc_dmat, ccb->ccb_dmamap);
  }
  bus = qlw_xs_bus(sc, xs);
  xs->status = qlw_swap16(sc, status->scsi_status);
  switch (qlw_swap16(sc, status->completion)) {
  case 0x0000:
   if (qlw_swap16(sc, status->scsi_status) &
       0x0200) {
    __builtin_memcpy((&xs->sense), (status->sense_data), (sizeof(xs->sense)));
    xs->error = 1;
   } else {
    xs->error = 0;
   }
   xs->resid = 0;
   break;
  case 0x0001:
   if (flags & 0x0200) {
    xs->error = 2;
   } else {
    xs->error = 3;
   }
   break;
  case 0x0002:
   do { if ((qlwdebug & (0x02)) == (0x02)) printf("%s: dma error\n", ((sc)->sc_dev.dv_xname)); } while (0);
   break;
  case 0x0004:
   do { if ((qlwdebug & (0x02)) == (0x02)) printf("%s: reset destroyed command\n", ((sc)->sc_dev.dv_xname)); } while (0);
   sc->sc_marker_required[bus] = 1;
   xs->error = 8;
   break;
  case 0x0005:
   do { if ((qlwdebug & (0x02)) == (0x02)) printf("%s: aborted\n", ((sc)->sc_dev.dv_xname)); } while (0);
   sc->sc_marker_required[bus] = 1;
   xs->error = 2;
   break;
  case 0x0006:
   do { if ((qlwdebug & (0x02)) == (0x02)) printf("%s: command timed out\n", ((sc)->sc_dev.dv_xname)); } while (0);
   xs->error = 4;
   break;
  case 0x0007:
  case 0x0015:
   xs->resid = qlw_swap32(sc, status->resid);
   xs->error = 0;
   break;
  case 0x001c:
   do { if ((qlwdebug & (0x02)) == (0x02)) printf("%s: queue full\n", ((sc)->sc_dev.dv_xname)); } while (0);
   xs->error = 5;
   break;
  case 0x001f:
   do { if ((qlwdebug & (0x02)) == (0x02)) printf("%s: wide failed\n", ((sc)->sc_dev.dv_xname)); } while (0);
   sc->sc_link->quirks |= 0x0004;
   atomic_setbits_int(&sc->sc_update_required[bus],
       1 << xs->sc_link->target);
   task_add(systq, &sc->sc_update_task);
   xs->resid = qlw_swap32(sc, status->resid);
   xs->error = 0;
   break;
  case 0x0020:
   do { if ((qlwdebug & (0x02)) == (0x02)) printf("%s: sync failed\n", ((sc)->sc_dev.dv_xname)); } while (0);
   sc->sc_link->quirks |= 0x0002;
   atomic_setbits_int(&sc->sc_update_required[bus],
       1 << xs->sc_link->target);
   task_add(systq, &sc->sc_update_task);
   xs->resid = qlw_swap32(sc, status->resid);
   xs->error = 0;
   break;
  default:
   do { if ((qlwdebug & (0x02)) == (0x02)) printf("%s: unexpected completion" " status %x\n", ((sc)->sc_dev.dv_xname), qlw_swap16(sc, status->completion)); } while (0);
   qlw_dump_iocb(sc, hdr, 0x02);
   xs->error = 2;
   break;
  }
  break;
 default:
  do { if ((qlwdebug & (0x02)) == (0x02)) printf("%s: unexpected response entry type %x\n", ((sc)->sc_dev.dv_xname), entry_type); } while (0);
  qlw_dump_iocb(sc, hdr, 0x02);
  break;
 }
 return (ccb);
}
void
qlw_handle_intr(struct qlw_softc *sc, u_int16_t isr, u_int16_t info)
{
 int i;
 u_int16_t rspin;
 struct qlw_ccb *ccb;
 switch (isr) {
 case 2:
  qlw_async(sc, info);
  qlw_clear_isr(sc, isr);
  break;
 case 3:
  qlw_clear_isr(sc, isr);
  rspin = qlw_queue_read(sc, 0x0a);
  if (rspin == sc->sc_last_resp_id) {
   if (sc->sc_mbox_pending) {
    do { if ((qlwdebug & (0x01)) == (0x01)) printf("%s: ignoring premature" " mbox int\n", ((sc)->sc_dev.dv_xname)); } while (0);
    return;
   }
   break;
  }
  if (sc->sc_responses == ((void *)0))
   break;
  do { if ((qlwdebug & (0x08)) == (0x08)) printf("%s: response queue %x=>%x\n", ((sc)->sc_dev.dv_xname), sc->sc_last_resp_id, rspin); } while (0);
  do {
   ccb = qlw_handle_resp(sc, sc->sc_last_resp_id);
   if (ccb)
    scsi_done(ccb->ccb_xs);
   sc->sc_last_resp_id++;
   sc->sc_last_resp_id %= sc->sc_maxresponses;
  } while (sc->sc_last_resp_id != rspin);
  qlw_queue_write(sc, 0x0a, rspin);
  break;
 case 1:
  if (sc->sc_mbox_pending) {
   if (info == 0x4000) {
    for (i = 1; i < (sizeof((sc->sc_mbox)) / sizeof((sc->sc_mbox)[0])); i++) {
     sc->sc_mbox[i] = qlw_read_mbox(sc, i);
    }
   } else {
    sc->sc_mbox[0] = info;
   }
   wakeup(sc->sc_mbox);
  } else {
   do { if ((qlwdebug & (0x01)) == (0x01)) printf("%s: unexpected mbox interrupt:" " %x\n", ((sc)->sc_dev.dv_xname), info); } while (0);
  }
  qlw_clear_isr(sc, isr);
  break;
 default:
  break;
 }
}
int
qlw_intr(void *xsc)
{
 struct qlw_softc *sc = xsc;
 u_int16_t isr;
 u_int16_t info;
 if (qlw_read_isr(sc, &isr, &info) == 0)
  return (0);
 qlw_handle_intr(sc, isr, info);
 return (1);
}
int
qlw_scsi_probe(struct scsi_link *link)
{
 if (link->lun >= 8)
  return (22);
 return (0);
}
void
qlw_scsi_cmd(struct scsi_xfer *xs)
{
 struct scsi_link *link = xs->sc_link;
 struct qlw_softc *sc = link->adapter_softc;
 struct qlw_ccb *ccb;
 struct qlw_iocb_req0 *iocb;
 struct qlw_ccb_list list;
 u_int16_t req, rspin;
 int offset, error, done;
 bus_dmamap_t dmap;
 int bus;
 int seg;
 if (xs->cmdlen > sizeof(iocb->cdb)) {
  do { if ((qlwdebug & (0x08)) == (0x08)) printf("%s: cdb too big (%d)\n", ((sc)->sc_dev.dv_xname), xs->cmdlen); } while (0);
  __builtin_memset((&xs->sense), (0), (sizeof(xs->sense)));
  xs->sense.error_code = 0x80 | 0x70;
  xs->sense.flags = 0x05;
  xs->sense.add_sense_code = 0x20;
  xs->error = 1;
  scsi_done(xs);
  return;
 }
 ccb = xs->io;
 dmap = ccb->ccb_dmamap;
 if (xs->datalen > 0) {
  error = bus_dmamap_load(sc->sc_dmat, dmap, xs->data,
      xs->datalen, ((void *)0), (xs->flags & 0x00001) ?
      0x0001 : 0x0000);
  if (error) {
   xs->error = 2;
   scsi_done(xs);
   return;
  }
  bus_dmamap_sync(sc->sc_dmat, dmap, 0,
      dmap->dm_mapsize,
      (xs->flags & 0x00800) ? 0x01 :
      0x04);
 }
 __mtx_enter(&sc->sc_queue_mtx );
 bus = qlw_xs_bus(sc, xs);
 if (sc->sc_marker_required[bus]) {
  req = sc->sc_next_req_id++;
  if (sc->sc_next_req_id == sc->sc_maxrequests)
   sc->sc_next_req_id = 0;
  do { if ((qlwdebug & (0x08)) == (0x08)) printf("%s: writing marker at request %d\n", ((sc)->sc_dev.dv_xname), req); } while (0);
  offset = (req * 64);
  iocb = ((void *)(sc->sc_requests)->qdm_kva) + offset;
  bus_dmamap_sync(sc->sc_dmat, ((sc->sc_requests)->qdm_map),
      offset, 64, 0x08);
  qlw_put_marker(sc, bus, iocb);
  bus_dmamap_sync(sc->sc_dmat, ((sc->sc_requests)->qdm_map),
      offset, 64, 0x04);
  qlw_queue_write(sc, 0x08, sc->sc_next_req_id);
  sc->sc_marker_required[bus] = 0;
 }
 req = sc->sc_next_req_id++;
 if (sc->sc_next_req_id == sc->sc_maxrequests)
  sc->sc_next_req_id = 0;
 offset = (req * 64);
 iocb = ((void *)(sc->sc_requests)->qdm_kva) + offset;
 bus_dmamap_sync(sc->sc_dmat, ((sc->sc_requests)->qdm_map), offset,
     64, 0x08);
 ccb->ccb_xs = xs;
 do { if ((qlwdebug & (0x08)) == (0x08)) printf("%s: writing cmd at request %d\n", ((sc)->sc_dev.dv_xname), req); } while (0);
 qlw_put_cmd(sc, iocb, xs, ccb);
 seg = 4;
 bus_dmamap_sync(sc->sc_dmat, ((sc->sc_requests)->qdm_map), offset,
     64, 0x04);
 while (seg < ccb->ccb_dmamap->dm_nsegs) {
  req = sc->sc_next_req_id++;
  if (sc->sc_next_req_id == sc->sc_maxrequests)
   sc->sc_next_req_id = 0;
  offset = (req * 64);
  iocb = ((void *)(sc->sc_requests)->qdm_kva) + offset;
  bus_dmamap_sync(sc->sc_dmat, ((sc->sc_requests)->qdm_map), offset,
      64, 0x08);
  do { if ((qlwdebug & (0x08)) == (0x08)) printf("%s: writing cont at request %d\n", ((sc)->sc_dev.dv_xname), req); } while (0);
  qlw_put_cont(sc, iocb, xs, ccb, seg);
  seg += 7;
  bus_dmamap_sync(sc->sc_dmat, ((sc->sc_requests)->qdm_map), offset,
      64, 0x04);
 }
 qlw_queue_write(sc, 0x08, sc->sc_next_req_id);
 if (!((xs->flags) & (0x00002))) {
  __mtx_leave(&sc->sc_queue_mtx );
  return;
 }
 done = 0;
 do { (&list)->sqh_first = ((void *)0); (&list)->sqh_last = &(&list)->sqh_first; } while (0);
 do {
  u_int16_t isr, info;
  delay(100);
  if (qlw_read_isr(sc, &isr, &info) == 0) {
   continue;
  }
  if (isr != 3) {
   qlw_handle_intr(sc, isr, info);
   continue;
  }
  qlw_clear_isr(sc, isr);
  rspin = qlw_queue_read(sc, 0x0a);
  while (rspin != sc->sc_last_resp_id) {
   ccb = qlw_handle_resp(sc, sc->sc_last_resp_id);
   sc->sc_last_resp_id++;
   if (sc->sc_last_resp_id == sc->sc_maxresponses)
    sc->sc_last_resp_id = 0;
   if (ccb != ((void *)0))
    do { (ccb)->ccb_link.sqe_next = ((void *)0); *(&list)->sqh_last = (ccb); (&list)->sqh_last = &(ccb)->ccb_link.sqe_next; } while (0);
   if (ccb == xs->io)
    done = 1;
  }
  qlw_queue_write(sc, 0x0a, rspin);
 } while (done == 0);
 __mtx_leave(&sc->sc_queue_mtx );
 while ((ccb = ((&list)->sqh_first)) != ((void *)0)) {
  do { if (((&list)->sqh_first = (&list)->sqh_first->ccb_link.sqe_next) == ((void *)0)) (&list)->sqh_last = &(&list)->sqh_first; } while (0);
  scsi_done(ccb->ccb_xs);
 }
}
u_int16_t
qlw_read(struct qlw_softc *sc, bus_size_t offset)
{
 u_int16_t v;
 v = bus_space_read_2(sc->sc_iot, sc->sc_ioh, offset);
 bus_space_barrier(sc->sc_iot, sc->sc_ioh, offset, 2,
     0x01 | 0x02);
 return (v);
}
void
qlw_write(struct qlw_softc *sc, bus_size_t offset, u_int16_t value)
{
 bus_space_write_2(sc->sc_iot, sc->sc_ioh, offset, value);
 bus_space_barrier(sc->sc_iot, sc->sc_ioh, offset, 2,
     0x01 | 0x02);
}
u_int16_t
qlw_read_mbox(struct qlw_softc *sc, int mbox)
{
 return (qlw_read(sc, sc->sc_mbox_base + (mbox * 2)));
}
void
qlw_write_mbox(struct qlw_softc *sc, int mbox, u_int16_t value)
{
 qlw_write(sc, sc->sc_mbox_base + (mbox * 2), value);
}
void
qlw_host_cmd(struct qlw_softc *sc, u_int16_t cmd)
{
 qlw_write(sc, sc->sc_host_cmd_ctrl, cmd << 12);
}
int
qlw_mbox(struct qlw_softc *sc, int maskin, int maskout)
{
 int i;
 int result = 0;
 int rv;
 sc->sc_mbox_pending = 1;
 for (i = 0; i < (sizeof((sc->sc_mbox)) / sizeof((sc->sc_mbox)[0])); i++) {
  if (maskin & (1 << i)) {
   qlw_write_mbox(sc, i, sc->sc_mbox[i]);
  }
 }
 qlw_host_cmd(sc, 0x5);
 if (sc->sc_running == 0) {
  for (i = 0; i < 4000 && result == 0; i++) {
   u_int16_t isr, info;
   delay(100);
   if (qlw_read_isr(sc, &isr, &info) == 0)
    continue;
   switch (isr) {
   case 1:
    result = info;
    break;
   default:
    qlw_handle_intr(sc, isr, info);
    break;
   }
  }
 } else {
  tsleep(sc->sc_mbox, 16, "qlw_mbox", 0);
  result = sc->sc_mbox[0];
 }
 switch (result) {
 case 0x4000:
  for (i = 1; i < (sizeof((sc->sc_mbox)) / sizeof((sc->sc_mbox)[0])); i++) {
   sc->sc_mbox[i] = (maskout & (1 << i)) ?
       qlw_read_mbox(sc, i) : 0;
  }
  rv = 0;
  break;
 case 0:
  do { if ((qlwdebug & (0x01)) == (0x01)) printf("%s: mbox timed out\n", ((sc)->sc_dev.dv_xname)); } while (0);
  rv = 1;
  break;
 default:
  sc->sc_mbox[0] = result;
  rv = result;
  break;
 }
 qlw_clear_isr(sc, 1);
 sc->sc_mbox_pending = 0;
 return (rv);
}
void
qlw_mbox_putaddr(u_int16_t *mbox, struct qlw_dmamem *mem)
{
 mbox[2] = (((u_int64_t)(mem)->qdm_map->dm_segs[0].ds_addr) >> 16) & 0xffff;
 mbox[3] = (((u_int64_t)(mem)->qdm_map->dm_segs[0].ds_addr) >> 0) & 0xffff;
 mbox[6] = (((u_int64_t)(mem)->qdm_map->dm_segs[0].ds_addr) >> 48) & 0xffff;
 mbox[7] = (((u_int64_t)(mem)->qdm_map->dm_segs[0].ds_addr) >> 32) & 0xffff;
}
void
qlw_set_ints(struct qlw_softc *sc, int enabled)
{
 u_int16_t v = enabled ? (0x0002 | 0x0004) : 0;
 qlw_write(sc, 0x08, v);
}
int
qlw_read_isr(struct qlw_softc *sc, u_int16_t *isr, u_int16_t *info)
{
 u_int16_t int_status;
 if (qlw_read(sc, 0x0c) & 0x0001) {
  *info = qlw_read_mbox(sc, 0);
  if (*info & 0x4000)
   *isr = 1;
  else
   *isr = 2;
 } else {
  int_status = qlw_read(sc, 0x0a);
  if ((int_status & (0x0002 | 0x0004)) == 0)
   return (0);
  *isr = 3;
 }
 return (1);
}
void
qlw_clear_isr(struct qlw_softc *sc, u_int16_t isr)
{
 qlw_host_cmd(sc, 0x7);
 switch (isr) {
 case 1:
 case 2:
  qlw_write(sc, 0x0c, 0);
  break;
 default:
  break;
 }
}
int
qlw_softreset(struct qlw_softc *sc)
{
 int i;
 qlw_set_ints(sc, 0);
 qlw_write(sc, 0x08, 0x0001);
 delay(100);
 for (i = 0; i < 1000; i++) {
  if ((qlw_read(sc, 0x08) & 0x0001) == 0)
   break;
  delay(100);
 }
 if (i == 1000) {
  do { if ((qlwdebug & (0x02)) == (0x02)) printf("%s: reset didn't clear\n", ((sc)->sc_dev.dv_xname)); } while (0);
  qlw_set_ints(sc, 0);
  return (6);
 }
 qlw_write(sc, 0x06, 0);
 qlw_host_cmd(sc, 0x1);
 delay(100);
 qlw_write(sc, 0x0c, 0);
 qlw_host_cmd(sc, 0x3);
 qlw_queue_write(sc, 0x08, 0);
 qlw_queue_write(sc, 0x08, 0);
 qlw_queue_write(sc, 0x0a, 0);
 qlw_queue_write(sc, 0x0a, 0);
 qlw_set_ints(sc, 1);
 qlw_host_cmd(sc, 0x9);
 sc->sc_mbox[0] = 0x0000;
 if (qlw_mbox(sc, 0x0001, 0x0001)) {
  do { if ((qlwdebug & (0x02)) == (0x02)) printf("%s: ISP not responding after reset\n", ((sc)->sc_dev.dv_xname)); } while (0);
  return (6);
 }
 return (0);
}
void
qlw_dma_burst_enable(struct qlw_softc *sc)
{
 if (sc->sc_isp_gen == QLW_GEN_ISP1000 ||
     sc->sc_isp_gen == QLW_GEN_ISP1040) {
  qlw_write(sc, 0x20,
      qlw_read(sc, 0x20) | 0x0002);
  qlw_write(sc, 0x40,
      qlw_read(sc, 0x40) | 0x0002);
 } else {
  qlw_host_cmd(sc, 0x2);
  qlw_write(sc, 0x06,
      qlw_read(sc, 0x06) | 0x0300);
  qlw_write(sc, 0x80,
      qlw_read(sc, 0x80) | 0x0002);
  qlw_write(sc, 0xa0,
      qlw_read(sc, 0xa0) | 0x0002);
  qlw_write(sc, 0x06,
      qlw_read(sc, 0x06) & ~0x0300);
  qlw_host_cmd(sc, 0x3);
 }
}
void
qlw_update(struct qlw_softc *sc, int task)
{
}
int
qlw_async(struct qlw_softc *sc, u_int16_t info)
{
 int bus;
 switch (info) {
 case 0x8001:
  do { if ((qlwdebug & (0x04)) == (0x04)) printf("%s: bus reset\n", ((sc)->sc_dev.dv_xname)); } while (0);
  bus = qlw_read_mbox(sc, 6);
  sc->sc_marker_required[bus] = 1;
  break;
 case 0x8020:
  break;
 case 0x8021:
  break;
 default:
  do { if ((qlwdebug & (0x02)) == (0x02)) printf("%s: unknown async %x\n", ((sc)->sc_dev.dv_xname), info); } while (0);
  break;
 }
 return (1);
}
void
qlw_dump_iocb(struct qlw_softc *sc, void *buf, int flags)
{
 u_int8_t *iocb = buf;
 int l;
 int b;
 if ((qlwdebug & flags) == 0)
  return;
 printf("%s: iocb:\n", ((sc)->sc_dev.dv_xname));
 for (l = 0; l < 4; l++) {
  for (b = 0; b < 16; b++) {
   printf(" %2.2x", iocb[(l*16)+b]);
  }
  printf("\n");
 }
}
void
qlw_dump_iocb_segs(struct qlw_softc *sc, void *segs, int n)
{
 u_int8_t *buf = segs;
 int s, b;
 if ((qlwdebug & 0x10) == 0)
  return;
 printf("%s: iocb segs:\n", ((sc)->sc_dev.dv_xname));
 for (s = 0; s < n; s++) {
  for (b = 0; b < sizeof(struct qlw_iocb_seg); b++) {
   printf(" %2.2x", buf[(s*(sizeof(struct qlw_iocb_seg)))
       + b]);
  }
  printf("\n");
 }
}
void
qlw_get_header(struct qlw_softc *sc, struct qlw_iocb_hdr *hdr,
    int *type, int *flags)
{
 if (sc->sc_isp_gen == QLW_GEN_ISP1000) {
  *type = hdr->entry_count;
  *flags = hdr->seqno;
 } else {
  *type = hdr->entry_type;
  *flags = hdr->flags;
 }
}
void
qlw_put_header(struct qlw_softc *sc, struct qlw_iocb_hdr *hdr,
    int type, int count)
{
 if (sc->sc_isp_gen == QLW_GEN_ISP1000) {
  hdr->entry_type = count;
  hdr->entry_count = type;
  hdr->seqno = 0;
  hdr->flags = 0;
 } else {
  hdr->entry_type = type;
  hdr->entry_count = count;
  hdr->seqno = 0;
  hdr->flags = 0;
 }
}
void
qlw_put_data_seg(struct qlw_softc *sc, struct qlw_iocb_seg *seg,
    bus_dmamap_t dmap, int num)
{
 seg->seg_addr = qlw_swap32(sc, dmap->dm_segs[num].ds_addr);
 seg->seg_len = qlw_swap32(sc, dmap->dm_segs[num].ds_len);
}
void
qlw_put_marker(struct qlw_softc *sc, int bus, void *buf)
{
 struct qlw_iocb_marker *marker = buf;
 qlw_put_header(sc, &marker->hdr, 0x04, 1);
 marker->device = qlw_swap16(sc, (bus << 7) << 8);
 marker->modifier = qlw_swap16(sc, 2);
 qlw_dump_iocb(sc, buf, 0x10);
}
void
qlw_put_cmd(struct qlw_softc *sc, void *buf, struct scsi_xfer *xs,
    struct qlw_ccb *ccb)
{
 struct qlw_iocb_req0 *req = buf;
 int entry_count = 1;
 u_int16_t dir;
 int seg, nsegs;
 int seg_count;
 int timeout = 0;
 int bus, target, lun;
 if (xs->datalen == 0) {
  dir = 0x0000;
  seg_count = 1;
 } else {
  dir = xs->flags & 0x00800 ? 0x0020 :
      0x0040;
  seg_count = ccb->ccb_dmamap->dm_nsegs;
  nsegs = ccb->ccb_dmamap->dm_nsegs - 4;
  while (nsegs > 0) {
   entry_count++;
   nsegs -= 7;
  }
  for (seg = 0; seg < ccb->ccb_dmamap->dm_nsegs; seg++) {
   if (seg >= 4)
    break;
   qlw_put_data_seg(sc, &req->segs[seg],
       ccb->ccb_dmamap, seg);
  }
 }
 if (sc->sc_running && (xs->sc_link->quirks & 0x0008) == 0)
  dir |= 0x0008;
 qlw_put_header(sc, &req->hdr, 0x01, entry_count);
 if (xs->timeout != 0)
  timeout = (((1)>(xs->timeout/1000))?(1):(xs->timeout/1000));
 req->flags = qlw_swap16(sc, dir);
 req->seg_count = qlw_swap16(sc, seg_count);
 req->timeout = qlw_swap16(sc, timeout);
 bus = qlw_xs_bus(sc, xs);
 target = xs->sc_link->target;
 lun = xs->sc_link->lun;
 req->device = qlw_swap16(sc, (((bus << 7) | target) << 8) | lun);
 __builtin_memcpy((req->cdb), (xs->cmd), (xs->cmdlen));
 req->ccblen = qlw_swap16(sc, xs->cmdlen);
 req->handle = qlw_swap32(sc, ccb->ccb_id);
 qlw_dump_iocb(sc, buf, 0x10);
}
void
qlw_put_cont(struct qlw_softc *sc, void *buf, struct scsi_xfer *xs,
    struct qlw_ccb *ccb, int seg0)
{
 struct qlw_iocb_cont0 *cont = buf;
 int seg;
 qlw_put_header(sc, &cont->hdr, 0x02, 1);
 for (seg = seg0; seg < ccb->ccb_dmamap->dm_nsegs; seg++) {
  if ((seg - seg0) >= 7)
   break;
  qlw_put_data_seg(sc, &cont->segs[seg - seg0],
      ccb->ccb_dmamap, seg);
 }
}
int
qlw_load_firmware_words(struct qlw_softc *sc, const u_int16_t *src,
    u_int16_t dest)
{
 u_int16_t i;
 for (i = 0; i < src[3]; i++) {
  sc->sc_mbox[0] = 0x0004;
  sc->sc_mbox[1] = i + dest;
  sc->sc_mbox[2] = src[i];
  if (qlw_mbox(sc, 0x07, 0x01)) {
   printf("firmware load failed\n");
   return (1);
  }
 }
 sc->sc_mbox[0] = 0x0007;
 sc->sc_mbox[1] = dest;
 if (qlw_mbox(sc, 0x0003, 0x0003)) {
  printf("verification of chunk at %x failed: %x\n",
      dest, sc->sc_mbox[1]);
  return (1);
 }
 return (0);
}
int
qlw_load_firmware(struct qlw_softc *sc)
{
 return qlw_load_firmware_words(sc, sc->sc_firmware, 0x1000);
}
int
qlw_read_nvram(struct qlw_softc *sc)
{
 u_int16_t data[sizeof(sc->sc_nvram) >> 1];
 u_int16_t req, cmd, val;
 u_int8_t csum;
 int i, bit;
 int reqcmd;
 int nbits;
 if (sc->sc_nvram_size == 0)
  return (1);
 if (sc->sc_nvram_size == 128) {
  reqcmd = (6 << 6);
  nbits = 8;
 } else {
  reqcmd = (6 << 8);
  nbits = 10;
 }
 qlw_write(sc, 0x0e, 0x0002);
 delay(10);
 qlw_write(sc, 0x0e, 0x0002 | 0x0001);
 delay(10);
 for (i = 0; i < (sc->sc_nvram_size >> 1); i++) {
  req = i | reqcmd;
  for (bit = nbits; bit >= 0; bit--) {
   cmd = 0x0002;
   if ((req >> bit) & 1) {
    cmd |= 0x0004;
   }
   qlw_write(sc, 0x0e, cmd);
   delay(10);
   qlw_read(sc, 0x0e);
   qlw_write(sc, 0x0e, cmd | 0x0001);
   delay(10);
   qlw_read(sc, 0x0e);
   qlw_write(sc, 0x0e, cmd);
   delay(10);
   qlw_read(sc, 0x0e);
  }
  val = 0;
  for (bit = 0; bit < 16; bit++) {
   val <<= 1;
   qlw_write(sc, 0x0e, 0x0002 |
       0x0001);
   delay(10);
   if (qlw_read(sc, 0x0e) & 0x0008)
    val |= 1;
   delay(10);
   qlw_write(sc, 0x0e, 0x0002);
   delay(10);
   qlw_read(sc, 0x0e);
  }
  qlw_write(sc, 0x0e, 0);
  delay(10);
  qlw_read(sc, 0x0e);
  data[i] = __extension__({ __uint16_t __swap16gen_x = (val); (__uint16_t)((__swap16gen_x & 0xff) << 8 | (__swap16gen_x & 0xff00) >> 8); });
 }
 csum = 0;
 for (i = 0; i < (sc->sc_nvram_size >> 1); i++) {
  csum += data[i] & 0xff;
  csum += data[i] >> 8;
 }
 __builtin_memcpy((&sc->sc_nvram), (data), (sizeof(sc->sc_nvram)));
 if (sc->sc_nvram.id[0] != 'I' || sc->sc_nvram.id[1] != 'S' ||
     sc->sc_nvram.id[2] != 'P' || sc->sc_nvram.id[3] != ' ' ||
     sc->sc_nvram.nvram_version < sc->sc_nvram_minversion ||
     (csum != 0)) {
  printf("%s: nvram corrupt\n", ((sc)->sc_dev.dv_xname));
  return (1);
 }
 return (0);
}
void
qlw_parse_nvram_1040(struct qlw_softc *sc, int bus)
{
 struct qlw_nvram_1040 *nv = (struct qlw_nvram_1040 *)&sc->sc_nvram;
 int target;
 ((bus == 0) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../dev/ic/qlw.c", 1542, "bus == 0"));
 if (!((sc->sc_flags) & (0x0001)))
  sc->sc_initiator[0] = (nv->config1 >> 4);
 sc->sc_retry_count[0] = nv->retry_count;
 sc->sc_retry_delay[0] = nv->retry_delay;
 sc->sc_reset_delay[0] = nv->reset_delay;
 sc->sc_tag_age_limit[0] = nv->tag_age_limit;
 sc->sc_selection_timeout[0] = __extension__({ __uint16_t __swap16gen_x = (nv->selection_timeout); (__uint16_t)((__swap16gen_x & 0xff) << 8 | (__swap16gen_x & 0xff00) >> 8); });
 sc->sc_max_queue_depth[0] = __extension__({ __uint16_t __swap16gen_x = (nv->max_queue_depth); (__uint16_t)((__swap16gen_x & 0xff) << 8 | (__swap16gen_x & 0xff00) >> 8); });
 sc->sc_async_data_setup[0] = (nv->config2 & 0x0f);
 sc->sc_req_ack_active_neg[0] = ((nv->config2 & 0x10) >> 4);
 sc->sc_data_line_active_neg[0] = ((nv->config2 & 0x20) >> 5);
 for (target = 0; target < 16; target++) {
  struct qlw_target *qt = &sc->sc_target[0][target];
  qt->qt_params = (nv->target[target].parameter << 8);
  qt->qt_exec_throttle = nv->target[target].execution_throttle;
  qt->qt_sync_period = nv->target[target].sync_period;
  qt->qt_sync_offset = nv->target[target].flags & 0x0f;
 }
}
void
qlw_parse_nvram_1080(struct qlw_softc *sc, int bus)
{
 struct qlw_nvram_1080 *nvram = (struct qlw_nvram_1080 *)&sc->sc_nvram;
 struct qlw_nvram_bus *nv = &nvram->bus[bus];
 int target;
 sc->sc_isp_config = nvram->isp_config;
 sc->sc_fw_features = nvram->fw_features;
 if (!((sc->sc_flags) & (0x0001)))
  sc->sc_initiator[bus] = (nv->config1 & 0x0f);
 sc->sc_retry_count[bus] = nv->retry_count;
 sc->sc_retry_delay[bus] = nv->retry_delay;
 sc->sc_reset_delay[bus] = nv->reset_delay;
 sc->sc_selection_timeout[bus] = __extension__({ __uint16_t __swap16gen_x = (nv->selection_timeout); (__uint16_t)((__swap16gen_x & 0xff) << 8 | (__swap16gen_x & 0xff00) >> 8); });
 sc->sc_max_queue_depth[bus] = __extension__({ __uint16_t __swap16gen_x = (nv->max_queue_depth); (__uint16_t)((__swap16gen_x & 0xff) << 8 | (__swap16gen_x & 0xff00) >> 8); });
 sc->sc_async_data_setup[bus] = (nv->config2 & 0x0f);
 sc->sc_req_ack_active_neg[bus] = ((nv->config2 & 0x10) >> 4);
 sc->sc_data_line_active_neg[bus] = ((nv->config2 & 0x20) >> 5);
 for (target = 0; target < 16; target++) {
  struct qlw_target *qt = &sc->sc_target[bus][target];
  qt->qt_params = (nv->target[target].parameter << 8);
  qt->qt_exec_throttle = nv->target[target].execution_throttle;
  qt->qt_sync_period = nv->target[target].sync_period;
  if (sc->sc_isp_gen == QLW_GEN_ISP12160)
   qt->qt_sync_offset = nv->target[target].flags & 0x1f;
  else
   qt->qt_sync_offset = nv->target[target].flags & 0x0f;
 }
}
void
qlw_init_defaults(struct qlw_softc *sc, int bus)
{
 int target;
 switch (sc->sc_isp_gen) {
 case QLW_GEN_ISP1000:
  break;
 case QLW_GEN_ISP1040:
  sc->sc_isp_config = 0x0004 | 0x0030;
  break;
 case QLW_GEN_ISP1080:
 case QLW_GEN_ISP12160:
  sc->sc_isp_config = 0x0004 | 0x0040;
  sc->sc_fw_features = 0x0002;
  break;
 }
 sc->sc_retry_count[bus] = 0;
 sc->sc_retry_delay[bus] = 0;
 sc->sc_reset_delay[bus] = 3;
 sc->sc_tag_age_limit[bus] = 8;
 sc->sc_selection_timeout[bus] = 250;
 sc->sc_max_queue_depth[bus] = 32;
 if (sc->sc_clock > 40)
  sc->sc_async_data_setup[bus] = 9;
 else
  sc->sc_async_data_setup[bus] = 6;
 sc->sc_req_ack_active_neg[bus] = 1;
 sc->sc_data_line_active_neg[bus] = 1;
 for (target = 0; target < 16; target++) {
  struct qlw_target *qt = &sc->sc_target[bus][target];
  qt->qt_params = 0xfd00;
  qt->qt_exec_throttle = 16;
  qt->qt_sync_period = 10;
  qt->qt_sync_offset = 12;
 }
}
struct qlw_dmamem *
qlw_dmamem_alloc(struct qlw_softc *sc, size_t size)
{
 struct qlw_dmamem *m;
 int nsegs;
 m = malloc(sizeof(*m), 2, 0x0002 | 0x0008);
 if (m == ((void *)0))
  return (((void *)0));
 m->qdm_size = size;
 if (bus_dmamap_create(sc->sc_dmat, size, 1, size, 0,
     0x0001 | 0x0002, &m->qdm_map) != 0)
  goto qdmfree;
 if (bus_dmamem_alloc(sc->sc_dmat, size, (1 << 13), 0, &m->qdm_seg, 1,
     &nsegs, 0x0001 | 0x0800) != 0)
  goto destroy;
 if (bus_dmamem_map(sc->sc_dmat, &m->qdm_seg, nsegs, size, &m->qdm_kva,
     0x0001) != 0)
  goto free;
 if (bus_dmamap_load(sc->sc_dmat, m->qdm_map, m->qdm_kva, size, ((void *)0),
     0x0001) != 0)
  goto unmap;
 return (m);
unmap:
 bus_dmamem_unmap(sc->sc_dmat, m->qdm_kva, m->qdm_size);
free:
 bus_dmamem_free(sc->sc_dmat, &m->qdm_seg, 1);
destroy:
 bus_dmamap_destroy(sc->sc_dmat, m->qdm_map);
qdmfree:
 free(m, 2, sizeof(*m));
 return (((void *)0));
}
void
qlw_dmamem_free(struct qlw_softc *sc, struct qlw_dmamem *m)
{
 bus_dmamap_unload(sc->sc_dmat, m->qdm_map);
 bus_dmamem_unmap(sc->sc_dmat, m->qdm_kva, m->qdm_size);
 bus_dmamem_free(sc->sc_dmat, &m->qdm_seg, 1);
 bus_dmamap_destroy(sc->sc_dmat, m->qdm_map);
 free(m, 2, sizeof(*m));
}
int
qlw_alloc_ccbs(struct qlw_softc *sc)
{
 struct qlw_ccb *ccb;
 u_int8_t *cmd;
 int i;
 do { (&sc->sc_ccb_free)->sqh_first = ((void *)0); (&sc->sc_ccb_free)->sqh_last = &(&sc->sc_ccb_free)->sqh_first; } while (0);
 do { (void)(((void *)0)); (void)(0); __mtx_init((&sc->sc_ccb_mtx), ((((5)) > 0 && ((5)) < 12) ? 12 : ((5)))); } while (0);
 do { (void)(((void *)0)); (void)(0); __mtx_init((&sc->sc_queue_mtx), ((((5)) > 0 && ((5)) < 12) ? 12 : ((5)))); } while (0);
 sc->sc_ccbs = mallocarray(sc->sc_maxccbs, sizeof(struct qlw_ccb),
     2, 0x0001 | 0x0004 | 0x0008);
 if (sc->sc_ccbs == ((void *)0)) {
  printf("%s: unable to allocate ccbs\n", ((sc)->sc_dev.dv_xname));
  return (1);
 }
 sc->sc_requests = qlw_dmamem_alloc(sc, sc->sc_maxrequests *
     64);
 if (sc->sc_requests == ((void *)0)) {
  printf("%s: unable to allocate ccb dmamem\n", ((sc)->sc_dev.dv_xname));
  goto free_ccbs;
 }
 sc->sc_responses = qlw_dmamem_alloc(sc, sc->sc_maxresponses *
     64);
 if (sc->sc_responses == ((void *)0)) {
  printf("%s: unable to allocate rcb dmamem\n", ((sc)->sc_dev.dv_xname));
  goto free_req;
 }
 cmd = ((void *)(sc->sc_requests)->qdm_kva);
 __builtin_memset((cmd), (0), (64 * sc->sc_maxccbs));
 for (i = 0; i < sc->sc_maxccbs; i++) {
  ccb = &sc->sc_ccbs[i];
  if (bus_dmamap_create(sc->sc_dmat, (64 * 1024),
      16, (64 * 1024), 0,
      0x0001 | 0x0002,
      &ccb->ccb_dmamap) != 0) {
   printf("%s: unable to create dma map\n", ((sc)->sc_dev.dv_xname));
   goto free_maps;
  }
  ccb->ccb_sc = sc;
  ccb->ccb_id = i;
  qlw_put_ccb(sc, ccb);
 }
 scsi_iopool_init(&sc->sc_iopool, sc, qlw_get_ccb, qlw_put_ccb);
 return (0);
free_maps:
 while ((ccb = qlw_get_ccb(sc)) != ((void *)0))
  bus_dmamap_destroy(sc->sc_dmat, ccb->ccb_dmamap);
 qlw_dmamem_free(sc, sc->sc_responses);
free_req:
 qlw_dmamem_free(sc, sc->sc_requests);
free_ccbs:
 free(sc->sc_ccbs, 2, 0);
 return (1);
}
void
qlw_free_ccbs(struct qlw_softc *sc)
{
 struct qlw_ccb *ccb;
 scsi_iopool_destroy(&sc->sc_iopool);
 while ((ccb = qlw_get_ccb(sc)) != ((void *)0))
  bus_dmamap_destroy(sc->sc_dmat, ccb->ccb_dmamap);
 qlw_dmamem_free(sc, sc->sc_responses);
 qlw_dmamem_free(sc, sc->sc_requests);
 free(sc->sc_ccbs, 2, 0);
}
void *
qlw_get_ccb(void *xsc)
{
 struct qlw_softc *sc = xsc;
 struct qlw_ccb *ccb;
 __mtx_enter(&sc->sc_ccb_mtx );
 ccb = ((&sc->sc_ccb_free)->sqh_first);
 if (ccb != ((void *)0)) {
  do { if (((&sc->sc_ccb_free)->sqh_first = (&sc->sc_ccb_free)->sqh_first->ccb_link.sqe_next) == ((void *)0)) (&sc->sc_ccb_free)->sqh_last = &(&sc->sc_ccb_free)->sqh_first; } while (0);
 }
 __mtx_leave(&sc->sc_ccb_mtx );
 return (ccb);
}
void
qlw_put_ccb(void *xsc, void *io)
{
 struct qlw_softc *sc = xsc;
 struct qlw_ccb *ccb = io;
 ccb->ccb_xs = ((void *)0);
 __mtx_enter(&sc->sc_ccb_mtx );
 do { if (((ccb)->ccb_link.sqe_next = (&sc->sc_ccb_free)->sqh_first) == ((void *)0)) (&sc->sc_ccb_free)->sqh_last = &(ccb)->ccb_link.sqe_next; (&sc->sc_ccb_free)->sqh_first = (ccb); } while (0);
 __mtx_leave(&sc->sc_ccb_mtx );
}
