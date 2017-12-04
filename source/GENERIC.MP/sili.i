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
struct atascsi;
struct scsi_link;
struct ata_identify {
 u_int16_t config;
 u_int16_t ncyls;
 u_int16_t reserved1;
 u_int16_t nheads;
 u_int16_t track_size;
 u_int16_t sector_size;
 u_int16_t nsectors;
 u_int16_t reserved2[3];
 u_int8_t serial[20];
 u_int16_t buffer_type;
 u_int16_t buffer_size;
 u_int16_t ecc;
 u_int8_t firmware[8];
 u_int8_t model[40];
 u_int16_t multi;
 u_int16_t dwcap;
 u_int16_t cap;
 u_int16_t reserved3;
 u_int16_t piomode;
 u_int16_t dmamode;
 u_int16_t validinfo;
 u_int16_t curcyls;
 u_int16_t curheads;
 u_int16_t cursectrk;
 u_int16_t curseccp[2];
 u_int16_t mult2;
 u_int16_t addrsec[2];
 u_int16_t worddma;
 u_int16_t dworddma;
 u_int16_t advpiomode;
 u_int16_t minmwdma;
 u_int16_t recmwdma;
 u_int16_t minpio;
 u_int16_t minpioflow;
 u_int16_t add_support;
 u_int16_t reserved4;
 u_int16_t typtime[2];
 u_int16_t reserved5[2];
 u_int16_t qdepth;
 u_int16_t satacap;
 u_int16_t reserved6;
 u_int16_t satafsup;
 u_int16_t satafen;
 u_int16_t majver;
 u_int16_t minver;
 u_int16_t cmdset82;
 u_int16_t cmdset83;
 u_int16_t cmdset84;
 u_int16_t features85;
 u_int16_t features86;
 u_int16_t features87;
 u_int16_t ultradma;
 u_int16_t erasetime;
 u_int16_t erasetimex;
 u_int16_t apm;
 u_int16_t masterpw;
 u_int16_t hwreset;
 u_int16_t acoustic;
 u_int16_t stream_min;
 u_int16_t stream_xfer_d;
 u_int16_t stream_lat;
 u_int16_t streamperf[2];
 u_int16_t addrsecxt[4];
 u_int16_t stream_xfer_p;
 u_int16_t padding1;
 u_int16_t p2l_sect;
 u_int16_t seek_delay;
 u_int16_t naa_ieee_oui;
 u_int16_t ieee_oui_uid;
 u_int16_t uid_mid;
 u_int16_t uid_low;
 u_int16_t resv_wwn[4];
 u_int16_t incits;
 u_int16_t words_lsec[2];
 u_int16_t cmdset119;
 u_int16_t features120;
 u_int16_t padding2[6];
 u_int16_t rmsn;
 u_int16_t securestatus;
 u_int16_t vendor[31];
 u_int16_t padding3[8];
 u_int16_t form;
 u_int16_t data_set_mgmt;
 u_int16_t padding4[6];
 u_int16_t curmedser[30];
 u_int16_t sctsupport;
 u_int16_t rpm;
 u_int16_t padding5[1];
 u_int16_t logical_align;
 u_int16_t padding6[45];
 u_int16_t integrity;
} __attribute__((__packed__));
struct ata_fis_h2d {
 u_int8_t type;
 u_int8_t flags;
 u_int8_t command;
 u_int8_t features;
 u_int8_t lba_low;
 u_int8_t lba_mid;
 u_int8_t lba_high;
 u_int8_t device;
 u_int8_t lba_low_exp;
 u_int8_t lba_mid_exp;
 u_int8_t lba_high_exp;
 u_int8_t features_exp;
 u_int8_t sector_count;
 u_int8_t sector_count_exp;
 u_int8_t reserved0;
 u_int8_t control;
 u_int8_t reserved1;
 u_int8_t reserved2;
 u_int8_t reserved3;
 u_int8_t reserved4;
} __attribute__((__packed__));
struct ata_fis_d2h {
 u_int8_t type;
 u_int8_t flags;
 u_int8_t status;
 u_int8_t error;
 u_int8_t lba_low;
 u_int8_t lba_mid;
 u_int8_t lba_high;
 u_int8_t device;
 u_int8_t lba_low_exp;
 u_int8_t lba_mid_exp;
 u_int8_t lba_high_exp;
 u_int8_t reserved0;
 u_int8_t sector_count;
 u_int8_t sector_count_exp;
 u_int8_t reserved1;
 u_int8_t reserved2;
 u_int8_t reserved3;
 u_int8_t reserved4;
 u_int8_t reserved5;
 u_int8_t reserved6;
} __attribute__((__packed__));
struct ata_log_page_10h {
 struct ata_fis_d2h err_regs;
 u_int8_t reserved[256 - sizeof(struct ata_fis_d2h)];
 u_int8_t vendor_specific[255];
 u_int8_t checksum;
} __attribute__((__packed__));
struct ata_xfer {
 struct ata_fis_h2d *fis;
 struct ata_fis_d2h rfis;
 u_int8_t *packetcmd;
 u_int8_t tag;
 void *data;
 size_t datalen;
 size_t resid;
 void (*complete)(struct ata_xfer *);
 struct task task;
 struct timeout stimeout;
 u_int timeout;
 int flags;
 volatile int state;
 void *atascsi_private;
 int pmp_port;
};
struct atascsi_methods {
 int (*ata_probe)(void *, int, int);
 void (*ata_free)(void *, int, int);
 struct ata_xfer * (*ata_get_xfer)(void *, int);
 void (*ata_put_xfer)(struct ata_xfer *);
 void (*ata_cmd)(struct ata_xfer *);
};
struct atascsi_attach_args {
 void *aaa_cookie;
 struct atascsi_methods *aaa_methods;
 void (*aaa_minphys)(struct buf *,
        struct scsi_link *);
 int aaa_nports;
 int aaa_ncmds;
 int aaa_capability;
};
struct atascsi *atascsi_attach(struct device *, struct atascsi_attach_args *);
int atascsi_detach(struct atascsi *, int);
int atascsi_probe_dev(struct atascsi *, int, int);
int atascsi_detach_dev(struct atascsi *, int, int, int);
void ata_complete(struct ata_xfer *);
struct sili_sge {
 u_int32_t addr_lo;
 u_int32_t addr_hi;
 u_int32_t data_count;
 u_int32_t flags;
} __attribute__((__packed__));
struct sili_sgt {
 struct sili_sge sgl[4];
} __attribute__((__packed__));
struct sili_prb {
 u_int16_t control;
 u_int16_t reserved1;
 u_int32_t reserved2;
 u_int8_t fis[20];
 u_int32_t reserved3[9];
} __attribute__((__packed__));
struct sili_prb_ata {
 u_int16_t control;
 u_int16_t protocol_override;
 u_int32_t rx_count;
 u_int8_t fis[20];
 u_int32_t reserved;
 struct sili_sge sgl[2];
} __attribute__((__packed__));
struct sili_prb_packet {
 u_int16_t control;
 u_int16_t protocol_override;
 u_int32_t rx_count;
 u_int8_t fis[20];
 u_int32_t reserved;
 u_int8_t cdb[16];
 struct sili_sge sgl[1];
} __attribute__((__packed__));
struct sili_prb_softreset {
 u_int16_t control;
 u_int16_t reserved1;
 u_int32_t reserved2;
 u_int8_t fis[20];
 u_int32_t reserved3[9];
} __attribute__((__packed__));
struct sili_port;
struct sili_softc {
 struct device sc_dev;
 bus_dma_tag_t sc_dmat;
 bus_space_tag_t sc_iot_global;
 bus_space_handle_t sc_ioh_global;
 bus_size_t sc_ios_global;
 bus_space_tag_t sc_iot_port;
 bus_space_handle_t sc_ioh_port;
 bus_size_t sc_ios_port;
 u_int sc_nports;
 struct sili_port *sc_ports;
 struct atascsi *sc_atascsi;
};
int sili_attach(struct sili_softc *);
int sili_detach(struct sili_softc *, int);
void sili_resume(struct sili_softc *);
int sili_intr(void *);
int sili_error_pmp_ports = 0;
int sili_error_test_inv_p = 500;
int sili_error_restart_type = (1<<2);
struct cfdriver sili_cd = {
 ((void *)0), "sili", DV_DULL
};
struct sili_dmamem {
 bus_dmamap_t sdm_map;
 bus_dma_segment_t sdm_seg;
 size_t sdm_size;
 caddr_t sdm_kva;
};
struct sili_dmamem *sili_dmamem_alloc(struct sili_softc *, bus_size_t,
       bus_size_t);
void sili_dmamem_free(struct sili_softc *,
       struct sili_dmamem *);
struct sili_ccb;
struct sili_port {
 struct sili_softc *sp_sc;
 bus_space_handle_t sp_ioh;
 struct sili_ccb *sp_ccbs;
 struct sili_dmamem *sp_cmds;
 struct sili_dmamem *sp_scratch;
 struct { struct sili_ccb *tqh_first; struct sili_ccb **tqh_last; } sp_free_ccbs;
 struct mutex sp_free_ccb_mtx;
 volatile u_int32_t sp_active;
 struct { struct sili_ccb *tqh_first; struct sili_ccb **tqh_last; } sp_active_ccbs;
 struct { struct sili_ccb *tqh_first; struct sili_ccb **tqh_last; } sp_deferred_ccbs;
 int sp_port;
 int sp_pmp_ports;
 int sp_active_pmp_ports;
 int sp_pmp_error_recovery;
 volatile u_int32_t sp_err_active;
 volatile u_int32_t sp_err_cmds;
};
int sili_ports_alloc(struct sili_softc *);
void sili_ports_free(struct sili_softc *);
struct sili_ccb {
 struct ata_xfer ccb_xa;
 void *ccb_cmd;
 u_int64_t ccb_cmd_dva;
 bus_dmamap_t ccb_dmamap;
 struct sili_port *ccb_port;
 struct { struct sili_ccb *tqe_next; struct sili_ccb **tqe_prev; } ccb_entry;
};
int sili_ccb_alloc(struct sili_port *);
void sili_ccb_free(struct sili_port *);
struct sili_ccb *sili_get_ccb(struct sili_port *);
void sili_put_ccb(struct sili_ccb *);
u_int32_t sili_read(struct sili_softc *, bus_size_t);
void sili_write(struct sili_softc *, bus_size_t, u_int32_t);
u_int32_t sili_pread(struct sili_port *, bus_size_t);
void sili_pwrite(struct sili_port *, bus_size_t, u_int32_t);
int sili_pwait_eq(struct sili_port *, bus_size_t,
       u_int32_t, u_int32_t, int);
int sili_pwait_ne(struct sili_port *, bus_size_t,
       u_int32_t, u_int32_t, int);
void sili_post_direct(struct sili_port *, u_int,
       void *, size_t buflen);
void sili_post_indirect(struct sili_port *,
       struct sili_ccb *);
void sili_pread_fis(struct sili_port *, u_int,
       struct ata_fis_d2h *);
u_int32_t sili_signature(struct sili_port *, u_int);
u_int32_t sili_port_softreset(struct sili_port *sp);
int sili_load(struct sili_ccb *, struct sili_sge *, int);
void sili_unload(struct sili_ccb *);
int sili_poll(struct sili_ccb *, int, void (*)(void *));
void sili_start(struct sili_port *, struct sili_ccb *);
int sili_read_ncq_error(struct sili_port *, int *, int);
int sili_pmp_port_start_error_recovery(struct sili_port *,
       int);
void sili_pmp_port_do_error_recovery(struct sili_port *,
       int, u_int32_t *);
void sili_port_clear_commands(struct sili_port *sp);
int sili_pmp_read(struct sili_port *, int, int,
       u_int32_t *);
int sili_pmp_write(struct sili_port *, int, int, u_int32_t);
int sili_pmp_phy_status(struct sili_port *, int,
       u_int32_t *);
int sili_pmp_identify(struct sili_port *, int *);
u_int32_t sili_port_intr(struct sili_port *, int);
int sili_ata_probe(void *, int, int);
void sili_ata_free(void *, int, int);
struct ata_xfer *sili_ata_get_xfer(void *, int);
void sili_ata_put_xfer(struct ata_xfer *);
void sili_ata_cmd(struct ata_xfer *);
int sili_pmp_portreset(struct sili_softc *, int, int);
int sili_pmp_softreset(struct sili_softc *, int, int);
struct atascsi_methods sili_atascsi_methods = {
 sili_ata_probe,
 sili_ata_free,
 sili_ata_get_xfer,
 sili_ata_put_xfer,
 sili_ata_cmd
};
void sili_ata_cmd_done(struct sili_ccb *, int);
void sili_ata_cmd_timeout(void *);
void sili_dummy_done(struct ata_xfer *);
void sili_pmp_op_timeout(void *);
int
sili_attach(struct sili_softc *sc)
{
 struct atascsi_attach_args aaa;
 printf("\n");
 if (sili_ports_alloc(sc) != 0) {
  return (1);
 }
 sili_write(sc, 0x40, (1<<31));
 sili_write(sc, 0x40, 0x0);
 __builtin_bzero((&aaa), (sizeof(aaa)));
 aaa.aaa_cookie = sc;
 aaa.aaa_methods = &sili_atascsi_methods;
 aaa.aaa_minphys = ((void *)0);
 aaa.aaa_nports = sc->sc_nports;
 aaa.aaa_ncmds = 31;
 aaa.aaa_capability = (1 << 0) | (1 << 2);
 sc->sc_atascsi = atascsi_attach(&sc->sc_dev, &aaa);
 return (0);
}
int
sili_detach(struct sili_softc *sc, int flags)
{
 int rv;
 if (sc->sc_atascsi != ((void *)0)) {
  rv = atascsi_detach(sc->sc_atascsi, flags);
  if (rv != 0)
   return (rv);
 }
 if (sc->sc_ports != ((void *)0))
  sili_ports_free(sc);
 return (0);
}
void
sili_resume(struct sili_softc *sc)
{
 int i, j;
 sili_write(sc, 0x40, (1<<31));
 sili_write(sc, 0x40, 0x0);
 for (i = 0; i < sc->sc_nports; i++) {
  if (sili_ata_probe(sc, i, 0) == 3) {
   struct sili_port *sp = &sc->sc_ports[i];
   for (j = 0; j < sp->sp_pmp_ports; j++) {
    sili_ata_probe(sc, i, j);
   }
  }
 }
}
int
sili_pmp_port_start_error_recovery(struct sili_port *sp, int err_port)
{
 struct sili_ccb *ccb;
 sp->sp_pmp_error_recovery |= (1 << err_port);
 sp->sp_err_active = 0;
 for((ccb) = ((&sp->sp_active_ccbs)->tqh_first); (ccb) != ((void *)0); (ccb) = ((ccb)->ccb_entry.tqe_next)) {
  int bit = (1 << ccb->ccb_xa.pmp_port);
  if ((sp->sp_pmp_error_recovery & bit) == 0) {
   ;
   sp->sp_err_active |= (1 << ccb->ccb_xa.tag);
  }
 }
 if (sp->sp_err_active == 0) {
  ;
  sp->sp_pmp_error_recovery = 0;
  return (0);
 }
 sili_pwrite(sp, 0x1000, (1<<6));
 ;
 return (1);
}
void
sili_port_clear_commands(struct sili_port *sp)
{
 int port;
 ;
 sili_pwrite(sp, 0x1004, (1<<6));
 delay(10000);
 for (port = 0; port < 16; port++) {
  sili_pwrite(sp, (0xF80 + (port * 8)), 0);
  sili_pwrite(sp, (0xF80 + 4 + (port * 8)), 0);
 }
}
void
sili_pmp_port_do_error_recovery(struct sili_port *sp, int slot,
    u_int32_t *need_restart)
{
 if (sp->sp_pmp_error_recovery == 0) {
  return;
 }
 if (sp->sp_err_active != 0) {
  ;
  *need_restart = 0;
  return;
 }
 sili_port_clear_commands(sp);
 *need_restart = (1<<2);
 ;
}
u_int32_t
sili_port_intr(struct sili_port *sp, int timeout_slot)
{
 u_int32_t is, pss_saved, pss_masked;
 u_int32_t processed = 0, need_restart = 0;
 u_int32_t err_port = 0;
 int slot;
 struct sili_ccb *ccb;
 is = sili_pread(sp, 0x1008);
 pss_saved = sili_pread(sp, 0x1800);
 pss_saved &= 0x7fffffff;
 if (is & (1<<1)) {
  int err_slot, err_code;
  u_int32_t sactive = 0;
  sili_pwrite(sp, 0x1008, (1<<1));
  err_slot = (((sili_pread(sp, 0x1000))>>16) & 0x1f);
  err_code = sili_pread(sp, 0x1024);
  ccb = &sp->sp_ccbs[err_slot];
  switch (err_code) {
  case 1:
  case 3:
   sili_pread_fis(sp, err_slot, &ccb->ccb_xa.rfis);
   err_port = ccb->ccb_xa.pmp_port;
   break;
  case 2:
   if (sp->sp_pmp_ports > 0) {
    err_port = (sili_pread(sp, 0x1e04)
        >> 5) &
        0x0F;
    ;
    sactive = sili_pread(sp,
        (0xF80 + 4 + (err_port * 8)));
    ;
    if (sactive == 0)
     break;
   } else {
    sactive = sili_pread(sp, 0x1f0c);
    if (sactive == 0)
     break;
   }
   if (!sili_read_ncq_error(sp, &err_slot, err_port)) {
    ;
    ccb = &sp->sp_ccbs[err_slot];
    break;
   }
   ;
  default:
   if (err_code != 2) {
    err_port = (sili_pread(sp, 0x1e04)
        >> 5) &
        0x0F;
   }
   printf("%s.%d: fatal error (%d), aborting active slots "
       "(%08x) and resetting device.\n", (((sp)->sp_sc)->sc_dev.dv_xname),
       err_port, err_code, pss_saved);
   while (pss_saved) {
    slot = ffs(pss_saved) - 1;
    pss_saved &= ~(1 << slot);
    ccb = &sp->sp_ccbs[slot];
    ((ccb->ccb_xa.state == 5) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../dev/ic/sili.c", 502, "ccb->ccb_xa.state == ATA_S_ONCHIP"));
    ccb->ccb_xa.state = 3;
   }
   need_restart = (1<<1);
   goto fatal;
  }
  ;
  pss_saved &= ~(1 << err_slot);
  sp->sp_err_cmds |= (1 << err_slot);
  ((ccb->ccb_xa.state == 5) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../dev/ic/sili.c", 518, "ccb->ccb_xa.state == ATA_S_ONCHIP"));
  ccb->ccb_xa.state = 3;
  need_restart = (1<<2);
 }
fatal:
 if (timeout_slot >= 0 && (pss_saved & (1 << timeout_slot))) {
  ;
  pss_saved &= ~(1 << timeout_slot);
  ccb = &sp->sp_ccbs[timeout_slot];
  ((ccb->ccb_xa.state == 5) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../dev/ic/sili.c", 534, "ccb->ccb_xa.state == ATA_S_ONCHIP"));
  ccb->ccb_xa.state = 4;
  need_restart = (1<<2);
  err_port = ccb->ccb_xa.pmp_port;
  sp->sp_err_cmds |= (1 << timeout_slot);
  sili_port_clear_commands(sp);
 }
 pss_masked = ~pss_saved & sp->sp_active;
 while (pss_masked) {
  slot = ffs(pss_masked) - 1;
  ccb = &sp->sp_ccbs[slot];
  pss_masked &= ~(1 << slot);
  if (ccb->ccb_xa.state == 5 &&
      ccb->ccb_xa.flags & (1<<8)) {
   sili_pread_fis(sp, slot, &ccb->ccb_xa.rfis);
  }
  ;
  sili_ata_cmd_done(ccb, need_restart);
  processed |= 1 << slot;
  sili_pmp_port_do_error_recovery(sp, slot, &need_restart);
 }
 if (need_restart) {
  if (sp->sp_pmp_error_recovery) {
   if (sp->sp_err_active != 0) {
    ;
    return (processed);
   }
  } else if (timeout_slot < 0 && sp->sp_pmp_ports > 0) {
   ;
   if (sili_pmp_port_start_error_recovery(sp, err_port)) {
    ;
    return (processed);
   }
  } else if (sp->sp_pmp_ports > 0) {
   ;
  } else {
   ;
  }
  sili_pwrite(sp, 0x1000, need_restart);
  if (!sili_pwait_eq(sp, 0x1000, need_restart, 0, 5000)) {
   printf("%s: port reset bit didn't clear after error\n",
       (((sp)->sp_sc)->sc_dev.dv_xname));
  }
  if (!sili_pwait_eq(sp, 0x1000, (1<<31),
      (1<<31), 1000)) {
   printf("%s: couldn't restart port after error\n",
       (((sp)->sp_sc)->sc_dev.dv_xname));
  }
  sili_pwrite(sp, 0x1004, (1<<6));
  pss_masked = pss_saved & ~(sp->sp_err_cmds);
  ;
  for((ccb) = ((&sp->sp_active_ccbs)->tqh_first); (ccb) != ((void *)0); (ccb) = ((ccb)->ccb_entry.tqe_next)) {
   if (!(pss_masked & (1 << ccb->ccb_xa.tag))) {
    panic("sili_intr: slot %d not active in "
        "pss_masked: %08x, state %02x",
        ccb->ccb_xa.tag, pss_masked,
        ccb->ccb_xa.state);
   }
   pss_masked &= ~(1 << ccb->ccb_xa.tag);
  }
  if (pss_masked != 0) {
   printf("%s: mask excluding active slots: %x\n",
       (((sp)->sp_sc)->sc_dev.dv_xname), pss_masked);
  }
  ((pss_masked == 0) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../dev/ic/sili.c", 638, "pss_masked == 0"));
  if (timeout_slot >= 0 && sp->sp_pmp_ports > 0 &&
      err_port != 15) {
   ;
   sili_pmp_portreset(sp->sp_sc, sp->sp_port, err_port);
   delay(2000000);
  }
  if (need_restart == (1<<1) &&
      sp->sp_pmp_ports > 0) {
   int port_type;
   int i;
   port_type = sili_port_softreset(sp);
   if (port_type != 3) {
    printf("%s: expected to find a port multiplier,"
        " got %d\n", (((sp)->sp_sc)->sc_dev.dv_xname), port_type);
   }
   for (i = 0; i < sp->sp_pmp_ports; i++) {
    struct sili_softc *sc = sp->sp_sc;
    if ((sp->sp_active_pmp_ports & (1 << i)) == 0)
     continue;
    if (sili_pmp_portreset(sc, sp->sp_port, i)) {
     printf("%s.%d: failed to portreset "
         "after error\n", (((sp)->sp_sc)->sc_dev.dv_xname), i);
    }
   }
  }
  for((ccb) = ((&sp->sp_active_ccbs)->tqh_first); (ccb) != ((void *)0); (ccb) = ((ccb)->ccb_entry.tqe_next)) {
   ;
   ((ccb->ccb_xa.state == 5) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../dev/ic/sili.c", 690, "ccb->ccb_xa.state == ATA_S_ONCHIP"));
   sili_post_indirect(sp, ccb);
  }
  sp->sp_err_cmds = 0;
  sp->sp_pmp_error_recovery = 0;
  while ((ccb = ((&sp->sp_deferred_ccbs)->tqh_first)) != ((void *)0)) {
   do { if (((ccb)->ccb_entry.tqe_next) != ((void *)0)) (ccb)->ccb_entry.tqe_next->ccb_entry.tqe_prev = (ccb)->ccb_entry.tqe_prev; else (&sp->sp_deferred_ccbs)->tqh_last = (ccb)->ccb_entry.tqe_prev; *(ccb)->ccb_entry.tqe_prev = (ccb)->ccb_entry.tqe_next; ((ccb)->ccb_entry.tqe_prev) = ((void *)-1); ((ccb)->ccb_entry.tqe_next) = ((void *)-1); } while (0);
   ;
   ((ccb->ccb_xa.state == 2 || ccb->ccb_xa.state == 3 || ccb->ccb_xa.state == 4) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../dev/ic/sili.c", 709, "ccb->ccb_xa.state == ATA_S_COMPLETE || ccb->ccb_xa.state == ATA_S_ERROR || ccb->ccb_xa.state == ATA_S_TIMEOUT"));
   ata_complete(&ccb->ccb_xa);
  }
 }
 return (processed);
}
int
sili_intr(void *arg)
{
 struct sili_softc *sc = arg;
 u_int32_t is;
 int port;
 is = sili_read(sc, 0x44);
 if (is == 0 || is == 0xffffffff)
  return (0);
 sili_write(sc, 0x44, is);
 ;
 while (is & 0x0f) {
  port = ffs(is) - 1;
  sili_port_intr(&sc->sc_ports[port], -1);
  is &= ~(1 << port);
 }
 return (1);
}
int
sili_ports_alloc(struct sili_softc *sc)
{
 struct sili_port *sp;
 int i;
 sc->sc_ports = mallocarray(sc->sc_nports, sizeof(struct sili_port),
     2, 0x0001 | 0x0008);
 for (i = 0; i < sc->sc_nports; i++) {
  sp = &sc->sc_ports[i];
  sp->sp_sc = sc;
  sp->sp_port = i;
  if (bus_space_subregion(sc->sc_iot_port, sc->sc_ioh_port,
      ((i) * 0x2000), 0x2000, &sp->sp_ioh) != 0) {
   printf("%s: unable to create register window "
       "for port %d\n", ((sc)->sc_dev.dv_xname), i);
   goto freeports;
  }
 }
 return (0);
freeports:
 free(sp, 2, sc->sc_nports * sizeof(struct sili_port));
 sc->sc_ports = ((void *)0);
 return (1);
}
void
sili_ports_free(struct sili_softc *sc)
{
 struct sili_port *sp;
 int i;
 for (i = 0; i < sc->sc_nports; i++) {
  sp = &sc->sc_ports[i];
  if (sp->sp_ccbs != ((void *)0))
   sili_ccb_free(sp);
 }
 free(sc->sc_ports, 2, sc->sc_nports * sizeof(struct sili_port));
 sc->sc_ports = ((void *)0);
}
int
sili_ccb_alloc(struct sili_port *sp)
{
 struct sili_softc *sc = sp->sp_sc;
 struct sili_ccb *ccb;
 struct sili_prb *prb;
 int i;
 do { (&sp->sp_free_ccbs)->tqh_first = ((void *)0); (&sp->sp_free_ccbs)->tqh_last = &(&sp->sp_free_ccbs)->tqh_first; } while (0);
 do { (void)(((void *)0)); (void)(0); __mtx_init((&sp->sp_free_ccb_mtx), ((((5)) > 0 && ((5)) < 12) ? 12 : ((5)))); } while (0);
 do { (&sp->sp_active_ccbs)->tqh_first = ((void *)0); (&sp->sp_active_ccbs)->tqh_last = &(&sp->sp_active_ccbs)->tqh_first; } while (0);
 do { (&sp->sp_deferred_ccbs)->tqh_first = ((void *)0); (&sp->sp_deferred_ccbs)->tqh_last = &(&sp->sp_deferred_ccbs)->tqh_first; } while (0);
 sp->sp_ccbs = mallocarray(31, sizeof(struct sili_ccb),
     2, 0x0001);
 sp->sp_cmds = sili_dmamem_alloc(sc, 512 * 31,
     8);
 if (sp->sp_cmds == ((void *)0))
  goto free_ccbs;
 sp->sp_scratch = sili_dmamem_alloc(sc, 512, (1 << 13));
 if (sp->sp_scratch == ((void *)0))
  goto free_cmds;
 __builtin_bzero((sp->sp_ccbs), (sizeof(struct sili_ccb) * 31));
 for (i = 0; i < 31; i++) {
  ccb = &sp->sp_ccbs[i];
  ccb->ccb_port = sp;
  ccb->ccb_cmd = ((sp->sp_cmds)->sdm_kva) + i * 512;
  ccb->ccb_cmd_dva = ((sp->sp_cmds)->sdm_map->dm_segs[0].ds_addr) + i * 512;
  if (bus_dmamap_create(sc->sc_dmat, (64 * 1024), 22,
      (64 * 1024), 0, 0x0000 | 0x0002,
      &ccb->ccb_dmamap) != 0)
   goto free_scratch;
  prb = ccb->ccb_cmd;
  ccb->ccb_xa.fis = (struct ata_fis_h2d *)&prb->fis;
  ccb->ccb_xa.packetcmd = ((struct sili_prb_packet *)prb)->cdb;
  ccb->ccb_xa.tag = i;
  ccb->ccb_xa.state = 2;
  sili_put_ccb(ccb);
 }
 return (0);
free_scratch:
 sili_dmamem_free(sc, sp->sp_scratch);
free_cmds:
 sili_dmamem_free(sc, sp->sp_cmds);
free_ccbs:
 sili_ccb_free(sp);
 return (1);
}
void
sili_ccb_free(struct sili_port *sp)
{
 struct sili_softc *sc = sp->sp_sc;
 struct sili_ccb *ccb;
 while ((ccb = sili_get_ccb(sp)) != ((void *)0))
  bus_dmamap_destroy(sc->sc_dmat, ccb->ccb_dmamap);
 free(sp->sp_ccbs, 2, 0);
 sp->sp_ccbs = ((void *)0);
}
struct sili_ccb *
sili_get_ccb(struct sili_port *sp)
{
 struct sili_ccb *ccb;
 if (sp->sp_pmp_error_recovery != 0) {
  return (((void *)0));
 }
 __mtx_enter(&sp->sp_free_ccb_mtx );
 ccb = ((&sp->sp_free_ccbs)->tqh_first);
 if (ccb != ((void *)0)) {
  ((ccb->ccb_xa.state == 6) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../dev/ic/sili.c", 877, "ccb->ccb_xa.state == ATA_S_PUT"));
  do { if (((ccb)->ccb_entry.tqe_next) != ((void *)0)) (ccb)->ccb_entry.tqe_next->ccb_entry.tqe_prev = (ccb)->ccb_entry.tqe_prev; else (&sp->sp_free_ccbs)->tqh_last = (ccb)->ccb_entry.tqe_prev; *(ccb)->ccb_entry.tqe_prev = (ccb)->ccb_entry.tqe_next; ((ccb)->ccb_entry.tqe_prev) = ((void *)-1); ((ccb)->ccb_entry.tqe_next) = ((void *)-1); } while (0);
  ccb->ccb_xa.state = 0;
 }
 __mtx_leave(&sp->sp_free_ccb_mtx );
 return (ccb);
}
void
sili_put_ccb(struct sili_ccb *ccb)
{
 struct sili_port *sp = ccb->ccb_port;
 if (ccb->ccb_xa.state != 2 &&
     ccb->ccb_xa.state != 4 &&
     ccb->ccb_xa.state != 3) {
  printf("%s: invalid ata_xfer state %02x in sili_put_ccb, "
      "slot %d\n", (((sp)->sp_sc)->sc_dev.dv_xname), ccb->ccb_xa.state,
      ccb->ccb_xa.tag);
 }
 ccb->ccb_xa.state = 6;
 __mtx_enter(&sp->sp_free_ccb_mtx );
 do { (ccb)->ccb_entry.tqe_next = ((void *)0); (ccb)->ccb_entry.tqe_prev = (&sp->sp_free_ccbs)->tqh_last; *(&sp->sp_free_ccbs)->tqh_last = (ccb); (&sp->sp_free_ccbs)->tqh_last = &(ccb)->ccb_entry.tqe_next; } while (0);
 __mtx_leave(&sp->sp_free_ccb_mtx );
}
struct sili_dmamem *
sili_dmamem_alloc(struct sili_softc *sc, bus_size_t size, bus_size_t align)
{
 struct sili_dmamem *sdm;
 int nsegs;
 sdm = malloc(sizeof(*sdm), 2, 0x0001 | 0x0008);
 sdm->sdm_size = size;
 if (bus_dmamap_create(sc->sc_dmat, size, 1, size, 0,
     0x0000 | 0x0002, &sdm->sdm_map) != 0)
  goto sdmfree;
 if (bus_dmamem_alloc(sc->sc_dmat, size, align, 0, &sdm->sdm_seg,
     1, &nsegs, 0x0001 | 0x0800) != 0)
  goto destroy;
 if (bus_dmamem_map(sc->sc_dmat, &sdm->sdm_seg, nsegs, size,
     &sdm->sdm_kva, 0x0001) != 0)
  goto free;
 if (bus_dmamap_load(sc->sc_dmat, sdm->sdm_map, sdm->sdm_kva, size,
     ((void *)0), 0x0001) != 0)
  goto unmap;
 return (sdm);
unmap:
 bus_dmamem_unmap(sc->sc_dmat, sdm->sdm_kva, size);
free:
 bus_dmamem_free(sc->sc_dmat, &sdm->sdm_seg, 1);
destroy:
 bus_dmamap_destroy(sc->sc_dmat, sdm->sdm_map);
sdmfree:
 free(sdm, 2, sizeof *sdm);
 return (((void *)0));
}
void
sili_dmamem_free(struct sili_softc *sc, struct sili_dmamem *sdm)
{
 bus_dmamap_unload(sc->sc_dmat, sdm->sdm_map);
 bus_dmamem_unmap(sc->sc_dmat, sdm->sdm_kva, sdm->sdm_size);
 bus_dmamem_free(sc->sc_dmat, &sdm->sdm_seg, 1);
 bus_dmamap_destroy(sc->sc_dmat, sdm->sdm_map);
 free(sdm, 2, sizeof *sdm);
}
u_int32_t
sili_read(struct sili_softc *sc, bus_size_t r)
{
 u_int32_t rv;
 bus_space_barrier(sc->sc_iot_global, sc->sc_ioh_global, r, 4,
     0x01);
 rv = bus_space_read_4(sc->sc_iot_global, sc->sc_ioh_global, r);
 return (rv);
}
void
sili_write(struct sili_softc *sc, bus_size_t r, u_int32_t v)
{
 bus_space_write_4(sc->sc_iot_global, sc->sc_ioh_global, r, v);
 bus_space_barrier(sc->sc_iot_global, sc->sc_ioh_global, r, 4,
     0x02);
}
u_int32_t
sili_pread(struct sili_port *sp, bus_size_t r)
{
 u_int32_t rv;
 bus_space_barrier(sp->sp_sc->sc_iot_port, sp->sp_ioh, r, 4,
     0x01);
 rv = bus_space_read_4(sp->sp_sc->sc_iot_port, sp->sp_ioh, r);
 return (rv);
}
void
sili_pwrite(struct sili_port *sp, bus_size_t r, u_int32_t v)
{
 bus_space_write_4(sp->sp_sc->sc_iot_port, sp->sp_ioh, r, v);
 bus_space_barrier(sp->sp_sc->sc_iot_port, sp->sp_ioh, r, 4,
     0x02);
}
int
sili_pwait_eq(struct sili_port *sp, bus_size_t r, u_int32_t mask,
    u_int32_t value, int timeout)
{
 while ((sili_pread(sp, r) & mask) != value) {
  if (timeout == 0)
   return (0);
  delay(1000);
  timeout--;
 }
 return (1);
}
int
sili_pwait_ne(struct sili_port *sp, bus_size_t r, u_int32_t mask,
    u_int32_t value, int timeout)
{
 while ((sili_pread(sp, r) & mask) == value) {
  if (timeout == 0)
   return (0);
  delay(1000);
  timeout--;
 }
 return (1);
}
void
sili_post_direct(struct sili_port *sp, u_int slot, void *buf, size_t buflen)
{
 bus_size_t r = (0x0000 + (slot) * 0x80);
 if (buflen != 64 && buflen != 128)
  panic("sili_pcopy: buflen of %lu is not 64 or 128", buflen);
 bus_space_write_raw_region_4(sp->sp_sc->sc_iot_port, sp->sp_ioh, r,
     buf, buflen);
 bus_space_barrier(sp->sp_sc->sc_iot_port, sp->sp_ioh, r, buflen,
     0x02);
 sili_pwrite(sp, 0x1020, slot);
}
void
sili_pread_fis(struct sili_port *sp, u_int slot, struct ata_fis_d2h *fis)
{
 bus_size_t r = (0x0000 + (slot) * 0x80) + 8;
 bus_space_barrier(sp->sp_sc->sc_iot_port, sp->sp_ioh, r,
     sizeof(struct ata_fis_d2h), 0x01);
 bus_space_read_raw_region_4(sp->sp_sc->sc_iot_port, sp->sp_ioh, r,
     fis, sizeof(struct ata_fis_d2h));
}
void
sili_post_indirect(struct sili_port *sp, struct sili_ccb *ccb)
{
 sili_pwrite(sp, (0x1c00 + ((ccb->ccb_xa.tag) * 0x8)),
     (u_int32_t)ccb->ccb_cmd_dva);
 sili_pwrite(sp, (0x1c00 + ((ccb->ccb_xa.tag) * 0x8) + 0x4),
     (u_int32_t)(ccb->ccb_cmd_dva >> 32));
}
u_int32_t
sili_signature(struct sili_port *sp, u_int slot)
{
 u_int32_t sig_hi, sig_lo;
 sig_hi = sili_pread(sp, ((0x0000 + (slot) * 0x80) + 0x0c));
 sig_hi <<= 8;
 sig_lo = sili_pread(sp, ((0x0000 + (slot) * 0x80) + 0x14));
 sig_lo &= 0xff;
 return (sig_hi | sig_lo);
}
void
sili_dummy_done(struct ata_xfer *xa)
{
}
int
sili_pmp_portreset(struct sili_softc *sc, int port, int pmp_port)
{
 struct sili_port *sp;
 u_int32_t data;
 int loop;
 sp = &sc->sc_ports[port];
 ;
 if (sili_pmp_write(sp, pmp_port, 1, -1))
  goto err;
 if (sili_pmp_write(sp, pmp_port, 2,
     0x300))
  goto err;
 delay(10000);
 data = 0x300 | 0x1 |
     0x00;
 if (sili_pmp_write(sp, pmp_port, 2, data))
  goto err;
 delay(100000);
 if (sili_pmp_phy_status(sp, pmp_port, &data)) {
  printf("%s: cannot clear phy status for PMP probe\n",
   (((sp)->sp_sc)->sc_dev.dv_xname));
  goto err;
 }
 sili_pmp_write(sp, pmp_port, 1, -1);
 data = 0x300 | 0x0;
 if (sili_pmp_write(sp, pmp_port, 2, data))
  goto err;
 delay(100000);
 for (loop = 3; loop; loop--) {
  if (sili_pmp_read(sp, pmp_port, 0, &data))
   goto err;
  if (data & 0xf)
   break;
  delay(100000);
 }
 if (loop == 0) {
  ;
  goto err;
 }
 for (loop = 30; loop; loop--) {
  if (sili_pmp_read(sp, pmp_port, 0, &data))
   goto err;
  if ((data & 0xf) == 0x3)
   break;
  delay(10000);
 }
 if (loop == 0) {
  printf("%s.%d: device may be powered down\n", (((sp)->sp_sc)->sc_dev.dv_xname),
      pmp_port);
  goto err;
 }
 ;
 sili_pmp_write(sp, pmp_port, 1, -1);
 return (0);
err:
 ;
 sili_pmp_write(sp, pmp_port, 1, -1);
 return (1);
}
void
sili_pmp_op_timeout(void *cookie)
{
 struct sili_ccb *ccb = cookie;
 struct sili_port *sp = ccb->ccb_port;
 int s;
 switch (ccb->ccb_xa.state) {
 case 1:
  do { if (((ccb)->ccb_entry.tqe_next) != ((void *)0)) (ccb)->ccb_entry.tqe_next->ccb_entry.tqe_prev = (ccb)->ccb_entry.tqe_prev; else (&sp->sp_active_ccbs)->tqh_last = (ccb)->ccb_entry.tqe_prev; *(ccb)->ccb_entry.tqe_prev = (ccb)->ccb_entry.tqe_next; ((ccb)->ccb_entry.tqe_prev) = ((void *)-1); ((ccb)->ccb_entry.tqe_next) = ((void *)-1); } while (0);
  ccb->ccb_xa.state = 4;
  break;
 case 5:
  ((sp->sp_active == (1 << ccb->ccb_xa.tag)) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../dev/ic/sili.c", 1176, "sp->sp_active == (1 << ccb->ccb_xa.tag)"));
  s = _splraise(5);
  sili_port_intr(sp, ccb->ccb_xa.tag);
  _splx(s);
  break;
 case 3:
  break;
 default:
  panic("%s: sili_pmp_op_timeout: ccb in bad state %d",
        (((sp)->sp_sc)->sc_dev.dv_xname), ccb->ccb_xa.state);
 }
}
int
sili_pmp_softreset(struct sili_softc *sc, int port, int pmp_port)
{
 struct sili_ccb *ccb;
 struct sili_prb *prb;
 struct sili_port *sp;
 struct ata_fis_h2d *fis;
 u_int32_t data;
 u_int32_t signature;
 sp = &sc->sc_ports[port];
 ccb = sili_get_ccb(sp);
 if (ccb == ((void *)0)) {
  printf("%s: sili_pmp_softreset NULL ccb!\n", (((sp)->sp_sc)->sc_dev.dv_xname));
  return (-1);
 }
 ccb->ccb_xa.flags = (1<<3) | (1<<8);
 ccb->ccb_xa.complete = sili_dummy_done;
 ccb->ccb_xa.pmp_port = pmp_port;
 prb = ccb->ccb_cmd;
 __builtin_bzero((prb), (sizeof(*prb)));
 fis = (struct ata_fis_h2d *)&prb->fis;
 fis->flags = pmp_port;
 prb->control = (1<<7);
 ccb->ccb_xa.state = 1;
 if (sili_poll(ccb, 8000, sili_pmp_op_timeout) != 0) {
  ;
  sili_put_ccb(ccb);
  return (-1);
 }
 signature = ccb->ccb_xa.rfis.sector_count |
     (ccb->ccb_xa.rfis.lba_low << 8) |
     (ccb->ccb_xa.rfis.lba_mid << 16) |
     (ccb->ccb_xa.rfis.lba_high << 24);
 ;
 sili_put_ccb(ccb);
 if (sili_pmp_phy_status(sp, pmp_port, &data)) {
  printf("%s.%d: cannot clear phy status after softreset\n",
         (((sp)->sp_sc)->sc_dev.dv_xname), pmp_port);
 }
 sili_pmp_write(sp, pmp_port, 1, -1);
 switch (signature) {
 case 0x00000101:
  return (1);
 case 0xeb140101:
  return (2);
 case 0x96690101:
  return (0);
 default:
  return (0);
 }
}
u_int32_t
sili_port_softreset(struct sili_port *sp)
{
 struct sili_prb_softreset sreset;
 u_int32_t signature;
 __builtin_bzero((&sreset), (sizeof(sreset)));
 sreset.control = __extension__({ __uint16_t __swap16gen_x = ((1<<7) | (1<<6)); (__uint16_t)((__swap16gen_x & 0xff) << 8 | (__swap16gen_x & 0xff00) >> 8); });
 sreset.fis[1] = 0x0f;
 sili_post_direct(sp, 0, &sreset, sizeof(sreset));
 if (!sili_pwait_eq(sp, 0x1800, (1 << 0), 0, 1000)) {
  ;
  return (0);
 }
 signature = sili_signature(sp, 0);
 ;
 switch (signature) {
 case 0x00000101:
  return (1);
 case 0xeb140101:
  return (2);
 case 0x96690101:
  return (3);
 default:
  return (0);
 }
}
int
sili_ata_probe(void *xsc, int port, int lun)
{
 struct sili_softc *sc = xsc;
 struct sili_port *sp = &sc->sc_ports[port];
 int port_type;
 if (lun != 0) {
  int i;
  int rc;
  int pmp_port = lun - 1;
  if (lun > sp->sp_pmp_ports)
   return (0);
  for (i = 0; i < 2; i++) {
   if (sili_pmp_portreset(sc, port, pmp_port)) {
    continue;
   }
   if (i != 0) {
    delay(5000000);
   }
   rc = sili_pmp_softreset(sc, port, pmp_port);
   switch (rc) {
   case -1:
    break;
   case 1:
   case 2:
    sp->sp_active_pmp_ports |= (1 << pmp_port);
   default:
    return (rc);
   }
  }
  ;
  return (0);
 }
 sili_pwrite(sp, 0x1000, (1<<0));
 delay(10000);
 sili_pwrite(sp, 0x1004, (1<<0));
 sili_pwrite(sp, 0x1000, (1<<2));
 if (!sili_pwait_eq(sp, 0x1000, (1<<31),
     (1<<31), 1000)) {
  printf("%s: couldn't initialize port\n", (((sp)->sp_sc)->sc_dev.dv_xname));
  return (0);
 }
 sili_pwrite(sp, 0x1004, (1<<10));
 if (!sili_pwait_eq(sp, 0x1f04, 0x00f,
     0x003, 2000)) {
  ;
  return (0);
 }
 ;
 port_type = sili_port_softreset(sp);
 if (port_type == 0)
  return (port_type);
 if (sili_ccb_alloc(sp) != 0)
  return (0);
 if (port_type == 3) {
  int i;
  sili_pwrite(sp, 0x1000, (1<<13));
  if (sili_pmp_identify(sp, &sp->sp_pmp_ports)) {
   return (0);
  }
  for (i = 0; i < sp->sp_pmp_ports; i++) {
   sili_pmp_portreset(sp->sp_sc, sp->sp_port, i);
  }
 }
 sili_write(sc, 0x40, sili_read(sc, 0x40) | 1 << port);
 sili_pwrite(sp, 0x1010, (1<<1) |
     (1<<0));
 return (port_type);
}
void
sili_ata_free(void *xsc, int port, int lun)
{
 struct sili_softc *sc = xsc;
 struct sili_port *sp = &sc->sc_ports[port];
 if (lun == 0) {
  if (sp->sp_ccbs != ((void *)0))
   sili_ccb_free(sp);
 }
}
void
sili_ata_cmd(struct ata_xfer *xa)
{
 struct sili_ccb *ccb = (struct sili_ccb *)xa;
 struct sili_port *sp = ccb->ccb_port;
 struct sili_softc *sc = sp->sp_sc;
 struct sili_prb_ata *ata;
 struct sili_prb_packet *atapi;
 struct sili_sge *sgl;
 int sgllen;
 int s;
 ((xa->state == 0 || xa->state == 4) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../dev/ic/sili.c", 1424, "xa->state == ATA_S_SETUP || xa->state == ATA_S_TIMEOUT"));
 if (xa->flags & (1<<5)) {
  atapi = ccb->ccb_cmd;
  if (xa->flags & (1<<1))
   atapi->control = __extension__({ __uint16_t __swap16gen_x = ((1<<5)); (__uint16_t)((__swap16gen_x & 0xff) << 8 | (__swap16gen_x & 0xff00) >> 8); });
  else
   atapi->control = __extension__({ __uint16_t __swap16gen_x = ((1<<4)); (__uint16_t)((__swap16gen_x & 0xff) << 8 | (__swap16gen_x & 0xff00) >> 8); });
  sgl = atapi->sgl;
  sgllen = (sizeof((atapi->sgl)) / sizeof((atapi->sgl)[0]));
 } else {
  ata = ccb->ccb_cmd;
  ata->control = 0;
  sgl = ata->sgl;
  sgllen = (sizeof((ata->sgl)) / sizeof((ata->sgl)[0]));
 }
 if (sili_load(ccb, sgl, sgllen) != 0)
  goto failcmd;
 bus_dmamap_sync(sc->sc_dmat, ((sp->sp_cmds)->sdm_map),
     xa->tag * 512, 512, 0x04);
 timeout_set(&xa->stimeout, sili_ata_cmd_timeout, ccb);
 xa->state = 1;
 if (xa->flags & (1<<3))
  sili_poll(ccb, xa->timeout, sili_ata_cmd_timeout);
 else {
  s = _splraise(5);
  timeout_add_msec(&xa->stimeout, xa->timeout);
  sili_start(sp, ccb);
  _splx(s);
 }
 return;
failcmd:
 s = _splraise(5);
 xa->state = 3;
 ata_complete(xa);
 _splx(s);
}
void
sili_ata_cmd_done(struct sili_ccb *ccb, int defer_completion)
{
 struct sili_port *sp = ccb->ccb_port;
 struct sili_softc *sc = sp->sp_sc;
 struct ata_xfer *xa = &ccb->ccb_xa;
 do { if (splassert_ctl > 0) { splassert_check(5, __func__); } } while (0);
 timeout_del(&xa->stimeout);
 bus_dmamap_sync(sc->sc_dmat, ((sp->sp_cmds)->sdm_map),
     xa->tag * 512, 512, 0x08);
 sili_unload(ccb);
 do { if (((ccb)->ccb_entry.tqe_next) != ((void *)0)) (ccb)->ccb_entry.tqe_next->ccb_entry.tqe_prev = (ccb)->ccb_entry.tqe_prev; else (&sp->sp_active_ccbs)->tqh_last = (ccb)->ccb_entry.tqe_prev; *(ccb)->ccb_entry.tqe_prev = (ccb)->ccb_entry.tqe_next; ((ccb)->ccb_entry.tqe_prev) = ((void *)-1); ((ccb)->ccb_entry.tqe_next) = ((void *)-1); } while (0);
 sp->sp_active &= ~(1 << xa->tag);
 if (sp->sp_err_active & (1 << xa->tag)) {
  sp->sp_err_active &= ~(1 << xa->tag);
  ;
 }
 if (xa->state == 5)
  xa->state = 2;
 else if (xa->state != 3 && xa->state != 4)
  printf("%s: invalid ata_xfer state %02x in sili_ata_cmd_done, "
      "slot %d\n", (((sp)->sp_sc)->sc_dev.dv_xname), xa->state, xa->tag);
 if (defer_completion)
  do { (ccb)->ccb_entry.tqe_next = ((void *)0); (ccb)->ccb_entry.tqe_prev = (&sp->sp_deferred_ccbs)->tqh_last; *(&sp->sp_deferred_ccbs)->tqh_last = (ccb); (&sp->sp_deferred_ccbs)->tqh_last = &(ccb)->ccb_entry.tqe_next; } while (0);
 else if (xa->state == 2)
  ata_complete(xa);
 else
  printf("%s: completion not deferred, but xa->state is %02x?\n",
      (((sp)->sp_sc)->sc_dev.dv_xname), xa->state);
}
void
sili_ata_cmd_timeout(void *xccb)
{
 struct sili_ccb *ccb = xccb;
 struct sili_port *sp = ccb->ccb_port;
 int s;
 s = _splraise(5);
 sili_port_intr(sp, ccb->ccb_xa.tag);
 _splx(s);
}
int
sili_load(struct sili_ccb *ccb, struct sili_sge *sgl, int sgllen)
{
 struct sili_port *sp = ccb->ccb_port;
 struct sili_softc *sc = sp->sp_sc;
 struct ata_xfer *xa = &ccb->ccb_xa;
 struct sili_sge *nsge = sgl, *ce = ((void *)0);
 bus_dmamap_t dmap = ccb->ccb_dmamap;
 u_int64_t addr;
 int error;
 int i;
 if (xa->datalen == 0)
  return (0);
 error = bus_dmamap_load(sc->sc_dmat, dmap, xa->data, xa->datalen, ((void *)0),
     (xa->flags & (1<<2)) ? 0x0001 : 0x0000);
 if (error != 0) {
  printf("%s: error %d loading dmamap\n", (((sp)->sp_sc)->sc_dev.dv_xname), error);
  return (1);
 }
 if (dmap->dm_nsegs > sgllen)
  ce = &sgl[sgllen - 1];
 for (i = 0; i < dmap->dm_nsegs; i++) {
  if (nsge == ce) {
   nsge++;
   addr = ccb->ccb_cmd_dva;
   addr += ((u_int8_t *)nsge - (u_int8_t *)ccb->ccb_cmd);
   ce->addr_lo = __extension__({ __uint32_t __swap32gen_x = ((u_int32_t)addr); (__uint32_t)((__swap32gen_x & 0xff) << 24 | (__swap32gen_x & 0xff00) << 8 | (__swap32gen_x & 0xff0000) >> 8 | (__swap32gen_x & 0xff000000) >> 24); });
   ce->addr_hi = __extension__({ __uint32_t __swap32gen_x = ((u_int32_t)(addr >> 32)); (__uint32_t)((__swap32gen_x & 0xff) << 24 | (__swap32gen_x & 0xff00) << 8 | (__swap32gen_x & 0xff0000) >> 8 | (__swap32gen_x & 0xff000000) >> 24); });
   ce->flags = __extension__({ __uint32_t __swap32gen_x = ((1<<30)); (__uint32_t)((__swap32gen_x & 0xff) << 24 | (__swap32gen_x & 0xff00) << 8 | (__swap32gen_x & 0xff0000) >> 8 | (__swap32gen_x & 0xff000000) >> 24); });
   if ((dmap->dm_nsegs - i) > 4)
    ce += 4;
   else
    ce = ((void *)0);
  }
  sgl = nsge;
  addr = dmap->dm_segs[i].ds_addr;
  sgl->addr_lo = __extension__({ __uint32_t __swap32gen_x = ((u_int32_t)addr); (__uint32_t)((__swap32gen_x & 0xff) << 24 | (__swap32gen_x & 0xff00) << 8 | (__swap32gen_x & 0xff0000) >> 8 | (__swap32gen_x & 0xff000000) >> 24); });
  sgl->addr_hi = __extension__({ __uint32_t __swap32gen_x = ((u_int32_t)(addr >> 32)); (__uint32_t)((__swap32gen_x & 0xff) << 24 | (__swap32gen_x & 0xff00) << 8 | (__swap32gen_x & 0xff0000) >> 8 | (__swap32gen_x & 0xff000000) >> 24); });
  sgl->data_count = __extension__({ __uint32_t __swap32gen_x = (dmap->dm_segs[i].ds_len); (__uint32_t)((__swap32gen_x & 0xff) << 24 | (__swap32gen_x & 0xff00) << 8 | (__swap32gen_x & 0xff0000) >> 8 | (__swap32gen_x & 0xff000000) >> 24); });
  sgl->flags = 0;
  nsge++;
 }
 sgl->flags |= __extension__({ __uint32_t __swap32gen_x = ((1<<31)); (__uint32_t)((__swap32gen_x & 0xff) << 24 | (__swap32gen_x & 0xff00) << 8 | (__swap32gen_x & 0xff0000) >> 8 | (__swap32gen_x & 0xff000000) >> 24); });
 bus_dmamap_sync(sc->sc_dmat, dmap, 0, dmap->dm_mapsize,
     (xa->flags & (1<<0)) ? 0x01 :
     0x04);
 return (0);
}
void
sili_unload(struct sili_ccb *ccb)
{
 struct sili_port *sp = ccb->ccb_port;
 struct sili_softc *sc = sp->sp_sc;
 struct ata_xfer *xa = &ccb->ccb_xa;
 bus_dmamap_t dmap = ccb->ccb_dmamap;
 if (xa->datalen == 0)
  return;
 bus_dmamap_sync(sc->sc_dmat, dmap, 0, dmap->dm_mapsize,
     (xa->flags & (1<<0)) ? 0x02 :
     0x08);
 bus_dmamap_unload(sc->sc_dmat, dmap);
 if (xa->flags & (1<<0))
  xa->resid = xa->datalen - sili_pread(sp,
      ((0x0000 + (xa->tag) * 0x80) + 0x04));
 else
  xa->resid = 0;
}
int
sili_poll(struct sili_ccb *ccb, int timeout, void (*timeout_fn)(void *))
{
 struct sili_port *sp = ccb->ccb_port;
 int s;
 s = _splraise(5);
 sili_start(sp, ccb);
 do {
  if (sili_port_intr(sp, -1) & (1 << ccb->ccb_xa.tag)) {
   _splx(s);
   return (ccb->ccb_xa.state != 2);
  }
  delay(1000);
 } while (--timeout > 0);
 if (timeout_fn != ((void *)0))
  timeout_fn(ccb);
 _splx(s);
 return (1);
}
void
sili_start(struct sili_port *sp, struct sili_ccb *ccb)
{
 int slot = ccb->ccb_xa.tag;
 do { if (splassert_ctl > 0) { splassert_check(5, __func__); } } while (0);
 ((ccb->ccb_xa.state == 1) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../dev/ic/sili.c", 1643, "ccb->ccb_xa.state == ATA_S_PENDING"));
 ((sp->sp_pmp_error_recovery == 0) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../dev/ic/sili.c", 1644, "sp->sp_pmp_error_recovery == 0"));
 do { (ccb)->ccb_entry.tqe_next = ((void *)0); (ccb)->ccb_entry.tqe_prev = (&sp->sp_active_ccbs)->tqh_last; *(&sp->sp_active_ccbs)->tqh_last = (ccb); (&sp->sp_active_ccbs)->tqh_last = &(ccb)->ccb_entry.tqe_next; } while (0);
 sp->sp_active |= 1 << slot;
 ccb->ccb_xa.state = 5;
 sili_post_indirect(sp, ccb);
}
int
sili_read_ncq_error(struct sili_port *sp, int *err_slotp, int pmp_port)
{
 struct sili_softc *sc = sp->sp_sc;
 struct sili_prb_ata read_10h;
 u_int64_t addr;
 struct ata_fis_h2d *fis;
 struct ata_log_page_10h *log;
 struct sili_ccb *ccb;
 int rc;
 sili_pwrite(sp, 0x1000, (1<<2));
 if (!sili_pwait_eq(sp, 0x1000, (1<<31),
     (1<<31), 1000)) {
  printf("%s: couldn't ready port during log page read\n",
      (((sp)->sp_sc)->sc_dev.dv_xname));
  return (1);
 }
 __builtin_bzero((&read_10h), (sizeof(read_10h)));
 read_10h.control = __extension__({ __uint16_t __swap16gen_x = ((1<<6)); (__uint16_t)((__swap16gen_x & 0xff) << 8 | (__swap16gen_x & 0xff00) >> 8); });
 addr = ((sp->sp_scratch)->sdm_map->dm_segs[0].ds_addr);
 read_10h.sgl[0].addr_lo = __extension__({ __uint32_t __swap32gen_x = ((u_int32_t)addr); (__uint32_t)((__swap32gen_x & 0xff) << 24 | (__swap32gen_x & 0xff00) << 8 | (__swap32gen_x & 0xff0000) >> 8 | (__swap32gen_x & 0xff000000) >> 24); });
 read_10h.sgl[0].addr_hi = __extension__({ __uint32_t __swap32gen_x = ((u_int32_t)(addr >> 32)); (__uint32_t)((__swap32gen_x & 0xff) << 24 | (__swap32gen_x & 0xff00) << 8 | (__swap32gen_x & 0xff0000) >> 8 | (__swap32gen_x & 0xff000000) >> 24); });
 read_10h.sgl[0].data_count = __extension__({ __uint32_t __swap32gen_x = (512); (__uint32_t)((__swap32gen_x & 0xff) << 24 | (__swap32gen_x & 0xff00) << 8 | (__swap32gen_x & 0xff0000) >> 8 | (__swap32gen_x & 0xff000000) >> 24); });
 read_10h.sgl[0].flags = __extension__({ __uint32_t __swap32gen_x = ((1<<31)); (__uint32_t)((__swap32gen_x & 0xff) << 24 | (__swap32gen_x & 0xff00) << 8 | (__swap32gen_x & 0xff0000) >> 8 | (__swap32gen_x & 0xff000000) >> 24); });
 fis = (struct ata_fis_h2d *)read_10h.fis;
 fis->type = 0x27;
 fis->flags = (1<<7) | pmp_port;
 fis->command = 0x2f;
 fis->lba_low = 0x10;
 fis->sector_count = 1;
 fis->sector_count_exp = 0;
 fis->lba_mid = 0;
 fis->lba_mid_exp = 0;
 fis->device = 0;
 bus_dmamap_sync(sc->sc_dmat, ((sp->sp_scratch)->sdm_map), 0,
     512, 0x01);
 sili_post_direct(sp, 0, &read_10h, sizeof(read_10h));
 rc = sili_pwait_eq(sp, 0x1800, (1 << 0), 0, 1000);
 bus_dmamap_sync(sc->sc_dmat, ((sp->sp_scratch)->sdm_map), 0,
     512, 0x02);
 if (!rc) {
  ;
  return (1);
 }
 log = (struct ata_log_page_10h *)((sp->sp_scratch)->sdm_kva);
 if (((log->err_regs.type) & (0x80))) {
  printf("%s: read NCQ error page, but not an NCQ error?\n",
      (((sp)->sp_sc)->sc_dev.dv_xname));
  return (1);
 }
 *err_slotp = log->err_regs.type & 0x1f;
 ccb = &sp->sp_ccbs[*err_slotp];
 __builtin_memcpy((&ccb->ccb_xa.rfis), (&log->err_regs), (sizeof(struct ata_fis_d2h)));
 ccb->ccb_xa.rfis.type = 0x34;
 ccb->ccb_xa.rfis.flags = 0;
 return (0);
}
struct ata_xfer *
sili_ata_get_xfer(void *xsc, int port)
{
 struct sili_softc *sc = xsc;
 struct sili_port *sp = &sc->sc_ports[port];
 struct sili_ccb *ccb;
 ccb = sili_get_ccb(sp);
 if (ccb == ((void *)0)) {
  printf("%s: sili_ata_get_xfer NULL ccb!\n", (((sp)->sp_sc)->sc_dev.dv_xname));
  return (((void *)0));
 }
 __builtin_bzero((ccb->ccb_cmd), (512));
 return ((struct ata_xfer *)ccb);
}
void
sili_ata_put_xfer(struct ata_xfer *xa)
{
 struct sili_ccb *ccb = (struct sili_ccb *)xa;
 sili_put_ccb(ccb);
}
int
sili_pmp_read(struct sili_port *sp, int target, int which, u_int32_t *datap)
{
 struct sili_ccb *ccb;
 struct sili_prb *prb;
 struct ata_fis_h2d *fis;
 int error;
 ccb = sili_get_ccb(sp);
 if (ccb == ((void *)0)) {
  printf("%s: sili_pmp_read NULL ccb!\n", (((sp)->sp_sc)->sc_dev.dv_xname));
  return (1);
 }
 ccb->ccb_xa.flags = (1<<3) | (1<<8);
 ccb->ccb_xa.complete = sili_dummy_done;
 ccb->ccb_xa.pmp_port = 0x0f;
 ccb->ccb_xa.state = 1;
 prb = ccb->ccb_cmd;
 __builtin_bzero((prb), (sizeof(*prb)));
 fis = (struct ata_fis_h2d *)&prb->fis;
 fis->type = 0x27;
 fis->flags = (1<<7) | 0x0f;
 fis->command = 0xe4;
 fis->features = which;
 fis->device = target | 0x40;
 fis->control = 0x08;
 if (sili_poll(ccb, 1000, sili_pmp_op_timeout) != 0) {
  printf("sili_pmp_read(%d, %d) failed\n", target, which);
  error = 1;
 } else {
  *datap = ccb->ccb_xa.rfis.sector_count |
      (ccb->ccb_xa.rfis.lba_low << 8) |
      (ccb->ccb_xa.rfis.lba_mid << 16) |
      (ccb->ccb_xa.rfis.lba_high << 24);
  error = 0;
 }
 sili_put_ccb(ccb);
 return (error);
}
int
sili_pmp_write(struct sili_port *sp, int target, int which, u_int32_t data)
{
 struct sili_ccb *ccb;
 struct sili_prb *prb;
 struct ata_fis_h2d *fis;
 int error;
 ccb = sili_get_ccb(sp);
 if (ccb == ((void *)0)) {
  printf("%s: sili_pmp_write NULL ccb!\n", (((sp)->sp_sc)->sc_dev.dv_xname));
  return (1);
 }
 ccb->ccb_xa.complete = sili_dummy_done;
 ccb->ccb_xa.flags = (1<<3);
 ccb->ccb_xa.pmp_port = 0x0f;
 ccb->ccb_xa.state = 1;
 prb = ccb->ccb_cmd;
 __builtin_bzero((prb), (sizeof(*prb)));
 fis = (struct ata_fis_h2d *)&prb->fis;
 fis->type = 0x27;
 fis->flags = (1<<7) | 0x0f;
 fis->command = 0xe8;
 fis->features = which;
 fis->device = target | 0x40;
 fis->sector_count = (u_int8_t)data;
 fis->lba_low = (u_int8_t)(data >> 8);
 fis->lba_mid = (u_int8_t)(data >> 16);
 fis->lba_high = (u_int8_t)(data >> 24);
 fis->control = 0x08;
 error = sili_poll(ccb, 1000, sili_pmp_op_timeout);
 sili_put_ccb(ccb);
 return (error);
}
int
sili_pmp_phy_status(struct sili_port *sp, int target, u_int32_t *datap)
{
 int error;
 error = sili_pmp_read(sp, target, 0, datap);
 if (error == 0)
  error = sili_pmp_write(sp, target, 1, -1);
 if (error)
  *datap = 0;
 return (error);
}
int
sili_pmp_identify(struct sili_port *sp, int *ret_nports)
{
 u_int32_t chipid;
 u_int32_t rev;
 u_int32_t nports;
 u_int32_t features;
 u_int32_t enabled;
 if (sili_pmp_read(sp, 15, 0, &chipid) ||
     sili_pmp_read(sp, 15, 1, &rev) ||
     sili_pmp_read(sp, 15, 2, &nports) ||
     sili_pmp_read(sp, 15, 64, &features) ||
     sili_pmp_read(sp, 15, 96, &enabled)) {
  printf("%s: port multiplier identification failed\n",
      (((sp)->sp_sc)->sc_dev.dv_xname));
  return (1);
 }
 nports &= 0x0F;
 if (chipid == 0x37261095) {
  nports--;
 }
 printf("%s: port multiplier found: chip=%08x rev=0x%b nports=%d, "
     "features: 0x%b, enabled: 0x%b\n", (((sp)->sp_sc)->sc_dev.dv_xname), chipid, rev,
     "\20" "\003PM1.1" "\002PM1.0", nports, features, "\20" "\004AsyncNotify" "\003DynamicSSC" "\002PMREQ" "\001BIST", enabled,
     "\20" "\004AsyncNotify" "\003DynamicSSC" "\002PMREQ" "\001BIST");
 *ret_nports = nports;
 return (0);
}
