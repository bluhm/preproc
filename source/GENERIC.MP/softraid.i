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
struct mutex {
 volatile void *mtx_owner;
 int mtx_wantipl;
 int mtx_oldipl;
};
void __mtx_init(struct mutex *, int);
void __mtx_enter(struct mutex *);
int __mtx_enter_try(struct mutex *);
void __mtx_leave(struct mutex *);
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
struct flock {
 off_t l_start;
 off_t l_len;
 pid_t l_pid;
 short l_type;
 short l_whence;
};
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
struct buf;
struct proc;
struct tty;
struct uio;
struct vnode;
struct knote;
struct bdevsw {
 int (*d_open)(dev_t dev, int oflags, int devtype,
         struct proc *p);
 int (*d_close)(dev_t dev, int fflag, int devtype,
         struct proc *p);
 void (*d_strategy)(struct buf *bp);
 int (*d_ioctl)(dev_t dev, u_long cmd, caddr_t data,
         int fflag, struct proc *p);
 int (*d_dump)(dev_t dev, daddr_t blkno, caddr_t va,
        size_t size);
 daddr_t (*d_psize)(dev_t dev);
 u_int d_type;
};
extern struct bdevsw bdevsw[];
struct cdevsw {
 int (*d_open)(dev_t dev, int oflags, int devtype,
         struct proc *p);
 int (*d_close)(dev_t dev, int fflag, int devtype,
         struct proc *);
 int (*d_read)(dev_t dev, struct uio *uio, int ioflag);
 int (*d_write)(dev_t dev, struct uio *uio, int ioflag);
 int (*d_ioctl)(dev_t dev, u_long cmd, caddr_t data,
         int fflag, struct proc *p);
 int (*d_stop)(struct tty *tp, int rw);
 struct tty *
  (*d_tty)(dev_t dev);
 int (*d_poll)(dev_t dev, int events, struct proc *p);
 paddr_t (*d_mmap)(dev_t, off_t, int);
 u_int d_type;
 u_int d_flags;
 int (*d_kqfilter)(dev_t dev, struct knote *kn);
};
extern struct cdevsw cdevsw[];
struct linesw {
 int (*l_open)(dev_t dev, struct tty *tp, struct proc *p);
 int (*l_close)(struct tty *tp, int flags, struct proc *p);
 int (*l_read)(struct tty *tp, struct uio *uio,
         int flag);
 int (*l_write)(struct tty *tp, struct uio *uio,
         int flag);
 int (*l_ioctl)(struct tty *tp, u_long cmd, caddr_t data,
         int flag, struct proc *p);
 int (*l_rint)(int c, struct tty *tp);
 int (*l_start)(struct tty *tp);
 int (*l_modem)(struct tty *tp, int flag);
};
extern struct linesw linesw[];
struct swdevt {
 dev_t sw_dev;
 int sw_flags;
};
extern struct swdevt swdevt[];
extern int chrtoblktbl[];
extern int nchrtoblktbl;
struct bdevsw *bdevsw_lookup(dev_t);
struct cdevsw *cdevsw_lookup(dev_t);
dev_t chrtoblk(dev_t);
dev_t blktochr(dev_t);
int iskmemdev(dev_t);
int iszerodev(dev_t);
dev_t getnulldev(void);
int filedescopen(dev_t, int, int, struct proc *); int filedescclose(dev_t, int, int, struct proc *); int filedescread(dev_t, struct uio *, int); int filedescwrite(dev_t, struct uio *, int); int filedescioctl(dev_t, u_long, caddr_t, int, struct proc *); int filedescstop(struct tty *, int); struct tty *filedesctty(dev_t); int filedescpoll(dev_t, int, struct proc *); paddr_t filedescmmap(dev_t, off_t, int); int filedesckqfilter(dev_t, struct knote *);
int logopen(dev_t, int, int, struct proc *); int logclose(dev_t, int, int, struct proc *); int logread(dev_t, struct uio *, int); int logwrite(dev_t, struct uio *, int); int logioctl(dev_t, u_long, caddr_t, int, struct proc *); int logstop(struct tty *, int); struct tty *logtty(dev_t); int logpoll(dev_t, int, struct proc *); paddr_t logmmap(dev_t, off_t, int); int logkqfilter(dev_t, struct knote *);
int ptsopen(dev_t, int, int, struct proc *); int ptsclose(dev_t, int, int, struct proc *); int ptsread(dev_t, struct uio *, int); int ptswrite(dev_t, struct uio *, int); int ptyioctl(dev_t, u_long, caddr_t, int, struct proc *); int ptsstop(struct tty *, int); struct tty *ptytty(dev_t); int ptspoll(dev_t, int, struct proc *); paddr_t ptsmmap(dev_t, off_t, int); int ptskqfilter(dev_t, struct knote *);
int ptcopen(dev_t, int, int, struct proc *); int ptcclose(dev_t, int, int, struct proc *); int ptcread(dev_t, struct uio *, int); int ptcwrite(dev_t, struct uio *, int); int ptyioctl(dev_t, u_long, caddr_t, int, struct proc *); int ptcstop(struct tty *, int); struct tty *ptytty(dev_t); int ptcpoll(dev_t, int, struct proc *); paddr_t ptcmmap(dev_t, off_t, int); int ptckqfilter(dev_t, struct knote *);
int ptmopen(dev_t, int, int, struct proc *); int ptmclose(dev_t, int, int, struct proc *); int ptmread(dev_t, struct uio *, int); int ptmwrite(dev_t, struct uio *, int); int ptmioctl(dev_t, u_long, caddr_t, int, struct proc *); int ptmstop(struct tty *, int); struct tty *ptmtty(dev_t); int ptmpoll(dev_t, int, struct proc *); paddr_t ptmmmap(dev_t, off_t, int); int ptmkqfilter(dev_t, struct knote *);
int cttyopen(dev_t, int, int, struct proc *); int cttyclose(dev_t, int, int, struct proc *); int cttyread(dev_t, struct uio *, int); int cttywrite(dev_t, struct uio *, int); int cttyioctl(dev_t, u_long, caddr_t, int, struct proc *); int cttystop(struct tty *, int); struct tty *cttytty(dev_t); int cttypoll(dev_t, int, struct proc *); paddr_t cttymmap(dev_t, off_t, int); int cttykqfilter(dev_t, struct knote *);
int audioopen(dev_t, int, int, struct proc *); int audioclose(dev_t, int, int, struct proc *); int audioread(dev_t, struct uio *, int); int audiowrite(dev_t, struct uio *, int); int audioioctl(dev_t, u_long, caddr_t, int, struct proc *); int audiostop(struct tty *, int); struct tty *audiotty(dev_t); int audiopoll(dev_t, int, struct proc *); paddr_t audiommap(dev_t, off_t, int); int audiokqfilter(dev_t, struct knote *);
int drmopen(dev_t, int, int, struct proc *); int drmclose(dev_t, int, int, struct proc *); int drmread(dev_t, struct uio *, int); int drmwrite(dev_t, struct uio *, int); int drmioctl(dev_t, u_long, caddr_t, int, struct proc *); int drmstop(struct tty *, int); struct tty *drmtty(dev_t); int drmpoll(dev_t, int, struct proc *); paddr_t drmmmap(dev_t, off_t, int); int drmkqfilter(dev_t, struct knote *);
int midiopen(dev_t, int, int, struct proc *); int midiclose(dev_t, int, int, struct proc *); int midiread(dev_t, struct uio *, int); int midiwrite(dev_t, struct uio *, int); int midiioctl(dev_t, u_long, caddr_t, int, struct proc *); int midistop(struct tty *, int); struct tty *miditty(dev_t); int midipoll(dev_t, int, struct proc *); paddr_t midimmap(dev_t, off_t, int); int midikqfilter(dev_t, struct knote *);
int radioopen(dev_t, int, int, struct proc *); int radioclose(dev_t, int, int, struct proc *); int radioread(dev_t, struct uio *, int); int radiowrite(dev_t, struct uio *, int); int radioioctl(dev_t, u_long, caddr_t, int, struct proc *); int radiostop(struct tty *, int); struct tty *radiotty(dev_t); int radiopoll(dev_t, int, struct proc *); paddr_t radiommap(dev_t, off_t, int); int radiokqfilter(dev_t, struct knote *);
int videoopen(dev_t, int, int, struct proc *); int videoclose(dev_t, int, int, struct proc *); int videoread(dev_t, struct uio *, int); int videowrite(dev_t, struct uio *, int); int videoioctl(dev_t, u_long, caddr_t, int, struct proc *); int videostop(struct tty *, int); struct tty *videotty(dev_t); int videopoll(dev_t, int, struct proc *); paddr_t videommap(dev_t, off_t, int); int videokqfilter(dev_t, struct knote *);
int cnopen(dev_t, int, int, struct proc *); int cnclose(dev_t, int, int, struct proc *); int cnread(dev_t, struct uio *, int); int cnwrite(dev_t, struct uio *, int); int cnioctl(dev_t, u_long, caddr_t, int, struct proc *); int cnstop(struct tty *, int); struct tty *cntty(dev_t); int cnpoll(dev_t, int, struct proc *); paddr_t cnmmap(dev_t, off_t, int); int cnkqfilter(dev_t, struct knote *);
int swopen(dev_t, int, int, struct proc *); int swclose(dev_t, int, int, struct proc *); void swstrategy(struct buf *); int swioctl(dev_t, u_long, caddr_t, int, struct proc *); int swdump(dev_t, daddr_t, caddr_t, size_t); daddr_t swsize(dev_t);
int vndopen(dev_t, int, int, struct proc *); int vndclose(dev_t, int, int, struct proc *); void vndstrategy(struct buf *); int vndioctl(dev_t, u_long, caddr_t, int, struct proc *); int vnddump(dev_t, daddr_t, caddr_t, size_t); daddr_t vndsize(dev_t);
int vndopen(dev_t, int, int, struct proc *); int vndclose(dev_t, int, int, struct proc *); int vndread(dev_t, struct uio *, int); int vndwrite(dev_t, struct uio *, int); int vndioctl(dev_t, u_long, caddr_t, int, struct proc *); int vndstop(struct tty *, int); struct tty *vndtty(dev_t); int vndpoll(dev_t, int, struct proc *); paddr_t vndmmap(dev_t, off_t, int); int vndkqfilter(dev_t, struct knote *);
int chopen(dev_t, int, int, struct proc *); int chclose(dev_t, int, int, struct proc *); int chread(dev_t, struct uio *, int); int chwrite(dev_t, struct uio *, int); int chioctl(dev_t, u_long, caddr_t, int, struct proc *); int chstop(struct tty *, int); struct tty *chtty(dev_t); int chpoll(dev_t, int, struct proc *); paddr_t chmmap(dev_t, off_t, int); int chkqfilter(dev_t, struct knote *);
int sdopen(dev_t, int, int, struct proc *); int sdclose(dev_t, int, int, struct proc *); void sdstrategy(struct buf *); int sdioctl(dev_t, u_long, caddr_t, int, struct proc *); int sddump(dev_t, daddr_t, caddr_t, size_t); daddr_t sdsize(dev_t);
int sdopen(dev_t, int, int, struct proc *); int sdclose(dev_t, int, int, struct proc *); int sdread(dev_t, struct uio *, int); int sdwrite(dev_t, struct uio *, int); int sdioctl(dev_t, u_long, caddr_t, int, struct proc *); int sdstop(struct tty *, int); struct tty *sdtty(dev_t); int sdpoll(dev_t, int, struct proc *); paddr_t sdmmap(dev_t, off_t, int); int sdkqfilter(dev_t, struct knote *);
int sesopen(dev_t, int, int, struct proc *); int sesclose(dev_t, int, int, struct proc *); int sesread(dev_t, struct uio *, int); int seswrite(dev_t, struct uio *, int); int sesioctl(dev_t, u_long, caddr_t, int, struct proc *); int sesstop(struct tty *, int); struct tty *sestty(dev_t); int sespoll(dev_t, int, struct proc *); paddr_t sesmmap(dev_t, off_t, int); int seskqfilter(dev_t, struct knote *);
int stopen(dev_t, int, int, struct proc *); int stclose(dev_t, int, int, struct proc *); int stread(dev_t, struct uio *, int); int stwrite(dev_t, struct uio *, int); int stioctl(dev_t, u_long, caddr_t, int, struct proc *); int ststop(struct tty *, int); struct tty *sttty(dev_t); int stpoll(dev_t, int, struct proc *); paddr_t stmmap(dev_t, off_t, int); int stkqfilter(dev_t, struct knote *);
int cdopen(dev_t, int, int, struct proc *); int cdclose(dev_t, int, int, struct proc *); void cdstrategy(struct buf *); int cdioctl(dev_t, u_long, caddr_t, int, struct proc *); int cddump(dev_t, daddr_t, caddr_t, size_t); daddr_t cdsize(dev_t);
int cdopen(dev_t, int, int, struct proc *); int cdclose(dev_t, int, int, struct proc *); int cdread(dev_t, struct uio *, int); int cdwrite(dev_t, struct uio *, int); int cdioctl(dev_t, u_long, caddr_t, int, struct proc *); int cdstop(struct tty *, int); struct tty *cdtty(dev_t); int cdpoll(dev_t, int, struct proc *); paddr_t cdmmap(dev_t, off_t, int); int cdkqfilter(dev_t, struct knote *);
int rdopen(dev_t, int, int, struct proc *); int rdclose(dev_t, int, int, struct proc *); void rdstrategy(struct buf *); int rdioctl(dev_t, u_long, caddr_t, int, struct proc *); int rddump(dev_t, daddr_t, caddr_t, size_t); daddr_t rdsize(dev_t);
int rdopen(dev_t, int, int, struct proc *); int rdclose(dev_t, int, int, struct proc *); int rdread(dev_t, struct uio *, int); int rdwrite(dev_t, struct uio *, int); int rdioctl(dev_t, u_long, caddr_t, int, struct proc *); int rdstop(struct tty *, int); struct tty *rdtty(dev_t); int rdpoll(dev_t, int, struct proc *); paddr_t rdmmap(dev_t, off_t, int); int rdkqfilter(dev_t, struct knote *);
int ukopen(dev_t, int, int, struct proc *); int ukclose(dev_t, int, int, struct proc *); void ukstrategy(struct buf *); int ukioctl(dev_t, u_long, caddr_t, int, struct proc *); int ukdump(dev_t, daddr_t, caddr_t, size_t); daddr_t uksize(dev_t);
int ukopen(dev_t, int, int, struct proc *); int ukclose(dev_t, int, int, struct proc *); int ukread(dev_t, struct uio *, int); int ukwrite(dev_t, struct uio *, int); int ukioctl(dev_t, u_long, caddr_t, int, struct proc *); int ukstop(struct tty *, int); struct tty *uktty(dev_t); int ukpoll(dev_t, int, struct proc *); paddr_t ukmmap(dev_t, off_t, int); int ukkqfilter(dev_t, struct knote *);
int diskmapopen(dev_t, int, int, struct proc *); int diskmapclose(dev_t, int, int, struct proc *); int diskmapread(dev_t, struct uio *, int); int diskmapwrite(dev_t, struct uio *, int); int diskmapioctl(dev_t, u_long, caddr_t, int, struct proc *); int diskmapstop(struct tty *, int); struct tty *diskmaptty(dev_t); int diskmappoll(dev_t, int, struct proc *); paddr_t diskmapmmap(dev_t, off_t, int); int diskmapkqfilter(dev_t, struct knote *);
int bpfopen(dev_t, int, int, struct proc *); int bpfclose(dev_t, int, int, struct proc *); int bpfread(dev_t, struct uio *, int); int bpfwrite(dev_t, struct uio *, int); int bpfioctl(dev_t, u_long, caddr_t, int, struct proc *); int bpfstop(struct tty *, int); struct tty *bpftty(dev_t); int bpfpoll(dev_t, int, struct proc *); paddr_t bpfmmap(dev_t, off_t, int); int bpfkqfilter(dev_t, struct knote *);
int pfopen(dev_t, int, int, struct proc *); int pfclose(dev_t, int, int, struct proc *); int pfread(dev_t, struct uio *, int); int pfwrite(dev_t, struct uio *, int); int pfioctl(dev_t, u_long, caddr_t, int, struct proc *); int pfstop(struct tty *, int); struct tty *pftty(dev_t); int pfpoll(dev_t, int, struct proc *); paddr_t pfmmap(dev_t, off_t, int); int pfkqfilter(dev_t, struct knote *);
int tunopen(dev_t, int, int, struct proc *); int tunclose(dev_t, int, int, struct proc *); int tunread(dev_t, struct uio *, int); int tunwrite(dev_t, struct uio *, int); int tunioctl(dev_t, u_long, caddr_t, int, struct proc *); int tunstop(struct tty *, int); struct tty *tuntty(dev_t); int tunpoll(dev_t, int, struct proc *); paddr_t tunmmap(dev_t, off_t, int); int tunkqfilter(dev_t, struct knote *);
int tapopen(dev_t, int, int, struct proc *); int tapclose(dev_t, int, int, struct proc *); int tapread(dev_t, struct uio *, int); int tapwrite(dev_t, struct uio *, int); int tapioctl(dev_t, u_long, caddr_t, int, struct proc *); int tapstop(struct tty *, int); struct tty *taptty(dev_t); int tappoll(dev_t, int, struct proc *); paddr_t tapmmap(dev_t, off_t, int); int tapkqfilter(dev_t, struct knote *);
int switchopen(dev_t, int, int, struct proc *); int switchclose(dev_t, int, int, struct proc *); int switchread(dev_t, struct uio *, int); int switchwrite(dev_t, struct uio *, int); int switchioctl(dev_t, u_long, caddr_t, int, struct proc *); int switchstop(struct tty *, int); struct tty *switchtty(dev_t); int switchpoll(dev_t, int, struct proc *); paddr_t switchmmap(dev_t, off_t, int); int switchkqfilter(dev_t, struct knote *);
int pppxopen(dev_t, int, int, struct proc *); int pppxclose(dev_t, int, int, struct proc *); int pppxread(dev_t, struct uio *, int); int pppxwrite(dev_t, struct uio *, int); int pppxioctl(dev_t, u_long, caddr_t, int, struct proc *); int pppxstop(struct tty *, int); struct tty *pppxtty(dev_t); int pppxpoll(dev_t, int, struct proc *); paddr_t pppxmmap(dev_t, off_t, int); int pppxkqfilter(dev_t, struct knote *);
int randomopen(dev_t, int, int, struct proc *); int randomclose(dev_t, int, int, struct proc *); int randomread(dev_t, struct uio *, int); int randomwrite(dev_t, struct uio *, int); int randomioctl(dev_t, u_long, caddr_t, int, struct proc *); int randomstop(struct tty *, int); struct tty *randomtty(dev_t); int randompoll(dev_t, int, struct proc *); paddr_t randommmap(dev_t, off_t, int); int randomkqfilter(dev_t, struct knote *);
int wsdisplayopen(dev_t, int, int, struct proc *); int wsdisplayclose(dev_t, int, int, struct proc *); int wsdisplayread(dev_t, struct uio *, int); int wsdisplaywrite(dev_t, struct uio *, int); int wsdisplayioctl(dev_t, u_long, caddr_t, int, struct proc *); int wsdisplaystop(struct tty *, int); struct tty *wsdisplaytty(dev_t); int wsdisplaypoll(dev_t, int, struct proc *); paddr_t wsdisplaymmap(dev_t, off_t, int); int wsdisplaykqfilter(dev_t, struct knote *);
int wskbdopen(dev_t, int, int, struct proc *); int wskbdclose(dev_t, int, int, struct proc *); int wskbdread(dev_t, struct uio *, int); int wskbdwrite(dev_t, struct uio *, int); int wskbdioctl(dev_t, u_long, caddr_t, int, struct proc *); int wskbdstop(struct tty *, int); struct tty *wskbdtty(dev_t); int wskbdpoll(dev_t, int, struct proc *); paddr_t wskbdmmap(dev_t, off_t, int); int wskbdkqfilter(dev_t, struct knote *);
int wsmouseopen(dev_t, int, int, struct proc *); int wsmouseclose(dev_t, int, int, struct proc *); int wsmouseread(dev_t, struct uio *, int); int wsmousewrite(dev_t, struct uio *, int); int wsmouseioctl(dev_t, u_long, caddr_t, int, struct proc *); int wsmousestop(struct tty *, int); struct tty *wsmousetty(dev_t); int wsmousepoll(dev_t, int, struct proc *); paddr_t wsmousemmap(dev_t, off_t, int); int wsmousekqfilter(dev_t, struct knote *);
int wsmuxopen(dev_t, int, int, struct proc *); int wsmuxclose(dev_t, int, int, struct proc *); int wsmuxread(dev_t, struct uio *, int); int wsmuxwrite(dev_t, struct uio *, int); int wsmuxioctl(dev_t, u_long, caddr_t, int, struct proc *); int wsmuxstop(struct tty *, int); struct tty *wsmuxtty(dev_t); int wsmuxpoll(dev_t, int, struct proc *); paddr_t wsmuxmmap(dev_t, off_t, int); int wsmuxkqfilter(dev_t, struct knote *);
int ksymsopen(dev_t, int, int, struct proc *); int ksymsclose(dev_t, int, int, struct proc *); int ksymsread(dev_t, struct uio *, int); int ksymswrite(dev_t, struct uio *, int); int ksymsioctl(dev_t, u_long, caddr_t, int, struct proc *); int ksymsstop(struct tty *, int); struct tty *ksymstty(dev_t); int ksymspoll(dev_t, int, struct proc *); paddr_t ksymsmmap(dev_t, off_t, int); int ksymskqfilter(dev_t, struct knote *);
int bioopen(dev_t, int, int, struct proc *); int bioclose(dev_t, int, int, struct proc *); int bioread(dev_t, struct uio *, int); int biowrite(dev_t, struct uio *, int); int bioioctl(dev_t, u_long, caddr_t, int, struct proc *); int biostop(struct tty *, int); struct tty *biotty(dev_t); int biopoll(dev_t, int, struct proc *); paddr_t biommap(dev_t, off_t, int); int biokqfilter(dev_t, struct knote *);
int vscsiopen(dev_t, int, int, struct proc *); int vscsiclose(dev_t, int, int, struct proc *); int vscsiread(dev_t, struct uio *, int); int vscsiwrite(dev_t, struct uio *, int); int vscsiioctl(dev_t, u_long, caddr_t, int, struct proc *); int vscsistop(struct tty *, int); struct tty *vscsitty(dev_t); int vscsipoll(dev_t, int, struct proc *); paddr_t vscsimmap(dev_t, off_t, int); int vscsikqfilter(dev_t, struct knote *);
int gpropen(dev_t, int, int, struct proc *); int gprclose(dev_t, int, int, struct proc *); int gprread(dev_t, struct uio *, int); int gprwrite(dev_t, struct uio *, int); int gprioctl(dev_t, u_long, caddr_t, int, struct proc *); int gprstop(struct tty *, int); struct tty *gprtty(dev_t); int gprpoll(dev_t, int, struct proc *); paddr_t gprmmap(dev_t, off_t, int); int gprkqfilter(dev_t, struct knote *);
int bktropen(dev_t, int, int, struct proc *); int bktrclose(dev_t, int, int, struct proc *); int bktrread(dev_t, struct uio *, int); int bktrwrite(dev_t, struct uio *, int); int bktrioctl(dev_t, u_long, caddr_t, int, struct proc *); int bktrstop(struct tty *, int); struct tty *bktrtty(dev_t); int bktrpoll(dev_t, int, struct proc *); paddr_t bktrmmap(dev_t, off_t, int); int bktrkqfilter(dev_t, struct knote *);
int usbopen(dev_t, int, int, struct proc *); int usbclose(dev_t, int, int, struct proc *); int usbread(dev_t, struct uio *, int); int usbwrite(dev_t, struct uio *, int); int usbioctl(dev_t, u_long, caddr_t, int, struct proc *); int usbstop(struct tty *, int); struct tty *usbtty(dev_t); int usbpoll(dev_t, int, struct proc *); paddr_t usbmmap(dev_t, off_t, int); int usbkqfilter(dev_t, struct knote *);
int ugenopen(dev_t, int, int, struct proc *); int ugenclose(dev_t, int, int, struct proc *); int ugenread(dev_t, struct uio *, int); int ugenwrite(dev_t, struct uio *, int); int ugenioctl(dev_t, u_long, caddr_t, int, struct proc *); int ugenstop(struct tty *, int); struct tty *ugentty(dev_t); int ugenpoll(dev_t, int, struct proc *); paddr_t ugenmmap(dev_t, off_t, int); int ugenkqfilter(dev_t, struct knote *);
int uhidopen(dev_t, int, int, struct proc *); int uhidclose(dev_t, int, int, struct proc *); int uhidread(dev_t, struct uio *, int); int uhidwrite(dev_t, struct uio *, int); int uhidioctl(dev_t, u_long, caddr_t, int, struct proc *); int uhidstop(struct tty *, int); struct tty *uhidtty(dev_t); int uhidpoll(dev_t, int, struct proc *); paddr_t uhidmmap(dev_t, off_t, int); int uhidkqfilter(dev_t, struct knote *);
int ucomopen(dev_t, int, int, struct proc *); int ucomclose(dev_t, int, int, struct proc *); int ucomread(dev_t, struct uio *, int); int ucomwrite(dev_t, struct uio *, int); int ucomioctl(dev_t, u_long, caddr_t, int, struct proc *); int ucomstop(struct tty *, int); struct tty *ucomtty(dev_t); int ucompoll(dev_t, int, struct proc *); paddr_t ucommmap(dev_t, off_t, int); int ucomkqfilter(dev_t, struct knote *);
int ulptopen(dev_t, int, int, struct proc *); int ulptclose(dev_t, int, int, struct proc *); int ulptread(dev_t, struct uio *, int); int ulptwrite(dev_t, struct uio *, int); int ulptioctl(dev_t, u_long, caddr_t, int, struct proc *); int ulptstop(struct tty *, int); struct tty *ulpttty(dev_t); int ulptpoll(dev_t, int, struct proc *); paddr_t ulptmmap(dev_t, off_t, int); int ulptkqfilter(dev_t, struct knote *);
int urioopen(dev_t, int, int, struct proc *); int urioclose(dev_t, int, int, struct proc *); int urioread(dev_t, struct uio *, int); int uriowrite(dev_t, struct uio *, int); int urioioctl(dev_t, u_long, caddr_t, int, struct proc *); int uriostop(struct tty *, int); struct tty *uriotty(dev_t); int uriopoll(dev_t, int, struct proc *); paddr_t uriommap(dev_t, off_t, int); int uriokqfilter(dev_t, struct knote *);
int hotplugopen(dev_t, int, int, struct proc *); int hotplugclose(dev_t, int, int, struct proc *); int hotplugread(dev_t, struct uio *, int); int hotplugwrite(dev_t, struct uio *, int); int hotplugioctl(dev_t, u_long, caddr_t, int, struct proc *); int hotplugstop(struct tty *, int); struct tty *hotplugtty(dev_t); int hotplugpoll(dev_t, int, struct proc *); paddr_t hotplugmmap(dev_t, off_t, int); int hotplugkqfilter(dev_t, struct knote *);
int gpioopen(dev_t, int, int, struct proc *); int gpioclose(dev_t, int, int, struct proc *); int gpioread(dev_t, struct uio *, int); int gpiowrite(dev_t, struct uio *, int); int gpioioctl(dev_t, u_long, caddr_t, int, struct proc *); int gpiostop(struct tty *, int); struct tty *gpiotty(dev_t); int gpiopoll(dev_t, int, struct proc *); paddr_t gpiommap(dev_t, off_t, int); int gpiokqfilter(dev_t, struct knote *);
int amdmsropen(dev_t, int, int, struct proc *); int amdmsrclose(dev_t, int, int, struct proc *); int amdmsrread(dev_t, struct uio *, int); int amdmsrwrite(dev_t, struct uio *, int); int amdmsrioctl(dev_t, u_long, caddr_t, int, struct proc *); int amdmsrstop(struct tty *, int); struct tty *amdmsrtty(dev_t); int amdmsrpoll(dev_t, int, struct proc *); paddr_t amdmsrmmap(dev_t, off_t, int); int amdmsrkqfilter(dev_t, struct knote *);
int fuseopen(dev_t, int, int, struct proc *); int fuseclose(dev_t, int, int, struct proc *); int fuseread(dev_t, struct uio *, int); int fusewrite(dev_t, struct uio *, int); int fuseioctl(dev_t, u_long, caddr_t, int, struct proc *); int fusestop(struct tty *, int); struct tty *fusetty(dev_t); int fusepoll(dev_t, int, struct proc *); paddr_t fusemmap(dev_t, off_t, int); int fusekqfilter(dev_t, struct knote *);
int pvbusopen(dev_t, int, int, struct proc *); int pvbusclose(dev_t, int, int, struct proc *); int pvbusread(dev_t, struct uio *, int); int pvbuswrite(dev_t, struct uio *, int); int pvbusioctl(dev_t, u_long, caddr_t, int, struct proc *); int pvbusstop(struct tty *, int); struct tty *pvbustty(dev_t); int pvbuspoll(dev_t, int, struct proc *); paddr_t pvbusmmap(dev_t, off_t, int); int pvbuskqfilter(dev_t, struct knote *);
int ipmiopen(dev_t, int, int, struct proc *); int ipmiclose(dev_t, int, int, struct proc *); int ipmiread(dev_t, struct uio *, int); int ipmiwrite(dev_t, struct uio *, int); int ipmiioctl(dev_t, u_long, caddr_t, int, struct proc *); int ipmistop(struct tty *, int); struct tty *ipmitty(dev_t); int ipmipoll(dev_t, int, struct proc *); paddr_t ipmimmap(dev_t, off_t, int); int ipmikqfilter(dev_t, struct knote *);
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
struct mdproc {
 struct trapframe64 *md_tf;
 struct fpstate64 *md_fpstate;
 volatile int md_astpending;
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
int kthread_create(void (*)(void *), void *, struct proc **,
     const char *);
void kthread_create_deferred(void (*)(void *), void *);
void kthread_run_deferred_queue(void);
void kthread_exit(int) __attribute__((__noreturn__));
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
typedef __int_least8_t int_least8_t;
typedef __uint_least8_t uint_least8_t;
typedef __int_least16_t int_least16_t;
typedef __uint_least16_t uint_least16_t;
typedef __int_least32_t int_least32_t;
typedef __uint_least32_t uint_least32_t;
typedef __int_least64_t int_least64_t;
typedef __uint_least64_t uint_least64_t;
typedef __int_fast8_t int_fast8_t;
typedef __uint_fast8_t uint_fast8_t;
typedef __int_fast16_t int_fast16_t;
typedef __uint_fast16_t uint_fast16_t;
typedef __int_fast32_t int_fast32_t;
typedef __uint_fast32_t uint_fast32_t;
typedef __int_fast64_t int_fast64_t;
typedef __uint_fast64_t uint_fast64_t;
typedef __intptr_t intptr_t;
typedef __uintptr_t uintptr_t;
typedef __intmax_t intmax_t;
typedef __uintmax_t uintmax_t;
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
struct scsi_format_unit {
 u_int8_t opcode;
 u_int8_t flags;
 u_int8_t vendor_specific;
 u_int8_t interleave[2];
 u_int8_t control;
};
struct scsi_format_unit_defect_list_header {
 u_int8_t reserved;
 u_int8_t flags;
 u_int8_t defect_lst_len[2];
};
struct scsi_initialization_pattern_descriptor {
 u_int8_t ip_modifier;
 u_int8_t pattern_type;
 u_int8_t pattern_length[2];
};
struct scsi_defect_descriptor_bf {
 u_int8_t block_address[4];
};
struct scsi_defect_descriptor_bfif {
 u_int8_t cylinder[2];
 u_int8_t head;
 u_int8_t bytes_from_index[2];
};
struct scsi_defect_descriptor_psf {
 u_int8_t cylinder[2];
 u_int8_t head;
 u_int8_t sector[2];
};
struct scsi_reassign_blocks {
 u_int8_t opcode;
 u_int8_t byte2;
 u_int8_t unused[3];
 u_int8_t control;
};
struct scsi_rezero_unit {
 u_int8_t opcode;
 u_int8_t byte2;
 u_int8_t reserved[3];
 u_int8_t control;
};
struct scsi_rw {
 u_int8_t opcode;
 u_int8_t addr[3];
 u_int8_t length;
 u_int8_t control;
};
struct scsi_rw_big {
 u_int8_t opcode;
 u_int8_t byte2;
 u_int8_t addr[4];
 u_int8_t reserved;
 u_int8_t length[2];
 u_int8_t control;
};
struct scsi_rw_12 {
 u_int8_t opcode;
 u_int8_t byte2;
 u_int8_t addr[4];
 u_int8_t length[4];
 u_int8_t reserved;
 u_int8_t control;
};
struct scsi_rw_16 {
 u_int8_t opcode;
 u_int8_t byte2;
 u_int8_t addr[8];
 u_int8_t length[4];
 u_int8_t reserved;
 u_int8_t control;
};
struct scsi_write_same_10 {
 u_int8_t opcode;
 u_int8_t flags;
 u_int8_t lba[4];
 u_int8_t group_number;
 u_int8_t length[2];
 u_int8_t control;
};
struct scsi_write_same_16 {
 u_int8_t opcode;
 u_int8_t flags;
 u_int8_t lba[8];
 u_int8_t length[4];
 u_int8_t group_number;
 u_int8_t control;
};
struct scsi_unmap {
 u_int8_t opcode;
 u_int8_t anchor;
 u_int8_t _reserved[4];
 u_int8_t group_number;
 u_int8_t list_len[2];
 u_int8_t control;
};
struct scsi_unmap_data {
 u_int8_t data_length[2];
 u_int8_t desc_length[2];
 u_int8_t _reserved[4];
};
struct scsi_unmap_desc {
 u_int8_t logical_addr[8];
 u_int8_t logical_blocks[4];
 u_int8_t _reserved[4];
};
struct scsi_read_capacity {
 u_int8_t opcode;
 u_int8_t byte2;
 u_int8_t addr[4];
 u_int8_t unused[3];
 u_int8_t control;
};
struct scsi_read_capacity_16 {
 u_int8_t opcode;
 u_int8_t byte2;
 u_int8_t addr[8];
 u_int8_t length[4];
 u_int8_t reserved;
 u_int8_t control;
};
struct scsi_start_stop {
 u_int8_t opcode;
 u_int8_t byte2;
 u_int8_t unused[2];
 u_int8_t how;
 u_int8_t control;
};
struct scsi_synchronize_cache {
 u_int8_t opcode;
 u_int8_t flags;
 u_int8_t addr[4];
 u_int8_t reserved;
 u_int8_t length[2];
 u_int8_t control;
};
struct scsi_read_cap_data {
 u_int8_t addr[4];
 u_int8_t length[4];
};
struct scsi_read_cap_data_16 {
 u_int8_t addr[8];
 u_int8_t length[4];
 u_int8_t p_type_prot;
 u_int8_t logical_per_phys;
 u_int8_t lowest_aligned[2];
 u_int8_t reserved[16];
};
struct scsi_reassign_blocks_data {
 u_int8_t reserved[2];
 u_int8_t length[2];
 struct {
  u_int8_t dlbaddr[4];
 } defect_descriptor[1];
};
struct page_disk_format {
 u_int8_t pg_code;
 u_int8_t pg_length;
 u_int8_t trk_z[2];
 u_int8_t alt_sec[2];
 u_int8_t alt_trk_z[2];
 u_int8_t alt_trk_v[2];
 u_int8_t ph_sec_t[2];
 u_int8_t bytes_s[2];
 u_int8_t interleave[2];
 u_int8_t trk_skew[2];
 u_int8_t cyl_skew[2];
 u_int8_t flags;
 u_int8_t reserved1;
 u_int8_t reserved2;
 u_int8_t reserved3;
};
struct page_rigid_geometry {
 u_int8_t pg_code;
 u_int8_t pg_length;
 u_int8_t ncyl[3];
 u_int8_t nheads;
 u_int8_t st_cyl_wp[3];
 u_int8_t st_cyl_rwc[3];
 u_int8_t driv_step[2];
 u_int8_t land_zone[3];
 u_int8_t sp_sync_ctl;
 u_int8_t rot_offset;
 u_int8_t reserved1;
 u_int8_t rpm[2];
 u_int8_t reserved2;
 u_int8_t reserved3;
};
struct page_flex_geometry {
 u_int8_t pg_code;
 u_int8_t pg_length;
 u_int8_t xfr_rate[2];
 u_int8_t nheads;
 u_int8_t ph_sec_tr;
 u_int8_t bytes_s[2];
 u_int8_t ncyl[2];
 u_int8_t st_cyl_wp[2];
 u_int8_t st_cyl_rwc[2];
 u_int8_t driv_step[2];
 u_int8_t driv_step_w;
 u_int8_t head_settle[2];
 u_int8_t motor_on;
 u_int8_t motor_off;
 u_int8_t flags;
 u_int8_t step_p_cyl;
 u_int8_t write_pre;
 u_int8_t head_load;
 u_int8_t head_unload;
 u_int8_t pin_34_2;
 u_int8_t pin_4_1;
 u_int8_t rpm[2];
 u_int8_t reserved1;
 u_int8_t reserved2;
};
struct page_reduced_geometry {
 u_int8_t pg_code;
 u_int8_t pg_length;
 u_int8_t wcd;
 u_int8_t bytes_s[2];
 u_int8_t sectors[5];
 u_int8_t pow_perf;
 u_int8_t flags;
 u_int8_t reserved;
};
struct page_caching_mode {
 u_int8_t pg_code;
 u_int8_t pg_length;
 u_int8_t flags;
 u_int8_t priority;
 u_int8_t dis_prefetch_tl[2];
 u_int8_t min_prefetch[2];
 u_int8_t max_prefetch[2];
 u_int8_t max_prefetch_ceil[2];
};
struct scsi_vpd_disk_limits {
 struct scsi_vpd_hdr hdr;
 u_int8_t _reserved1[1];
 u_int8_t max_comp_wr_len;
 u_int8_t optimal_xfer_granularity[2];
 u_int8_t max_xfer_len[4];
 u_int8_t optimal_xfer[4];
 u_int8_t max_xd_prefetch_len[4];
 u_int8_t max_unmap_lba_count[4];
 u_int8_t max_unmap_desc_count[4];
 u_int8_t optimal_unmap_granularity[4];
 u_int8_t unmap_granularity_align[4];
 u_int8_t _reserved2[28];
};
struct scsi_vpd_disk_info {
 struct scsi_vpd_hdr hdr;
 u_int8_t rpm[2];
 u_int8_t _reserved1[1];
 u_int8_t form_factor;
 u_int8_t _reserved2[56];
};
struct scsi_vpd_disk_thin {
 struct scsi_vpd_hdr hdr;
 u_int8_t threshold_exponent;
 u_int8_t flags;
 u_int8_t _reserved1[2];
};
struct sr_crypto_genkdf {
 u_int32_t len;
 u_int32_t type;
};
struct sr_crypto_pbkdf {
 struct sr_crypto_genkdf generic;
 u_int32_t rounds;
 u_int8_t salt[128];
};
struct sr_crypto_kdfinfo {
 u_int32_t len;
 u_int32_t flags;
 u_int8_t maskkey[32];
 union {
  struct sr_crypto_genkdf generic;
  struct sr_crypto_pbkdf pbkdf;
 } _kdfhint;
};
struct sr_crypto_kdfpair {
 struct sr_crypto_kdfinfo *kdfinfo1;
 u_int32_t kdfsize1;
 struct sr_crypto_kdfinfo *kdfinfo2;
 u_int32_t kdfsize2;
};
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

struct sr_uuid {
 u_int8_t sui_id[16];
} __attribute__((__packed__));
struct sr_disk {
 dev_t sdk_devno;
 struct { struct sr_disk *sle_next; } sdk_link;
};
struct sr_disk_head { struct sr_disk *slh_first; };
struct sr_metadata {
 struct sr_meta_invariant {
  u_int64_t ssd_magic;
  u_int32_t ssd_version;
  u_int32_t ssd_vol_flags;
  struct sr_uuid ssd_uuid;
  u_int32_t ssd_chunk_no;
  u_int32_t ssd_chunk_id;
  u_int32_t ssd_opt_no;
  u_int32_t ssd_secsize;
  u_int32_t ssd_volid;
  u_int32_t ssd_level;
  int64_t ssd_size;
  char ssd_vendor[8];
  char ssd_product[16];
  char ssd_revision[4];
  u_int32_t ssd_strip_size;
 } _sdd_invariant;
 u_int8_t ssd_checksum[16];
 char ssd_devname[32];
 u_int32_t ssd_meta_flags;
 u_int32_t ssd_data_blkno;
 u_int64_t ssd_ondisk;
 int64_t ssd_rebuild;
} __attribute__((__packed__));
struct sr_meta_chunk {
 struct sr_meta_chunk_invariant {
  u_int32_t scm_volid;
  u_int32_t scm_chunk_id;
  char scm_devname[32];
  int64_t scm_size;
  int64_t scm_coerced_size;
  struct sr_uuid scm_uuid;
 } _scm_invariant;
 u_int8_t scm_checksum[16];
 u_int32_t scm_status;
} __attribute__((__packed__));
struct sr_crypto_chk_hmac_sha1 {
 u_int8_t sch_mac[20];
} __attribute__((__packed__));
struct sr_meta_opt_hdr {
 u_int32_t som_type;
 u_int32_t som_length;
 u_int8_t som_checksum[16];
} __attribute__((__packed__));
struct sr_meta_crypto {
 struct sr_meta_opt_hdr scm_hdr;
 u_int32_t scm_alg;
 u_int32_t scm_flags;
 u_int32_t scm_mask_alg;
 u_int32_t scm_pad1;
 u_int8_t scm_reserved[64];
 u_int8_t scm_key[32][(512 >> 3)];
 u_int8_t scm_kdfhint[256];
 u_int32_t scm_check_alg;
 u_int32_t scm_pad2;
 union {
  struct sr_crypto_chk_hmac_sha1 chk_hmac_sha1;
  u_int8_t chk_reserved2[64];
 } _scm_chk;
} __attribute__((__packed__));
struct sr_meta_boot {
 struct sr_meta_opt_hdr sbm_hdr;
 u_int32_t sbm_bootblk_size;
 u_int32_t sbm_bootldr_size;
 u_char sbm_root_duid[8];
 u_char sbm_boot_duid[16][8];
} __attribute__((__packed__));
struct sr_meta_keydisk {
 struct sr_meta_opt_hdr skm_hdr;
 u_int8_t skm_maskkey[32];
} __attribute__((__packed__));
struct sr_meta_opt_item {
 struct sr_meta_opt_hdr *omi_som;
 struct { struct sr_meta_opt_item *sle_next; } omi_link;
};
struct sr_meta_opt_head { struct sr_meta_opt_item *slh_first; };
struct sr_boot_chunk {
 struct sr_metadata *sbc_metadata;
 dev_t sbc_mm;
 u_int32_t sbc_chunk_id;
 u_int32_t sbc_state;
 u_int32_t sbc_disk;
 int sbc_part;
 u_int64_t sbc_ondisk;
 void *sbc_diskinfo;
 struct { struct sr_boot_chunk *sle_next; } sbc_link;
};
struct sr_boot_chunk_head { struct sr_boot_chunk *slh_first; };
struct sr_boot_volume {
 struct sr_uuid sbv_uuid;
 u_int32_t sbv_level;
 u_int32_t sbv_volid;
 u_int32_t sbv_chunk_no;
 u_int32_t sbv_flags;
 u_int32_t sbv_state;
 int64_t sbv_size;
 u_int32_t sbv_secsize;
 u_int32_t sbv_data_blkno;
 u_int64_t sbv_ondisk;
 u_int32_t sbv_chunks_found;
 u_int32_t sbv_unit;
 char sbv_part;
 void *sbv_diskinfo;
 u_int8_t *sbv_keys;
 u_int8_t *sbv_maskkey;
 struct sr_boot_chunk_head sbv_chunks;
 struct sr_meta_opt_head sbv_meta_opt;
 struct { struct sr_boot_volume *sle_next; } sbv_link;
};
struct sr_boot_volume_head { struct sr_boot_volume *slh_first; };
struct bio_msg {
 int bm_type;
 char bm_msg[128];
};
struct bio_status {
 char bs_controller[16];
 int bs_status;
 int bs_msg_count;
 struct bio_msg bs_msgs[5];
};
struct bio {
 void *bio_cookie;
 struct bio_status bio_status;
};
struct bio_locate {
 struct bio bl_bio;
 char *bl_name;
};
struct bioc_inq {
 struct bio bi_bio;
 char bi_dev[16];
 int bi_novol;
 int bi_nodisk;
};
struct bioc_disk {
 struct bio bd_bio;
 u_int16_t bd_channel;
 u_int16_t bd_target;
 u_int16_t bd_lun;
 u_int16_t bd_other_id;
 int bd_volid;
 int bd_diskid;
 int bd_status;
 uint64_t bd_size;
 char bd_vendor[32];
 char bd_serial[32];
 char bd_procdev[16];
 struct {
  int bdp_percent;
  int bdp_seconds;
 } bd_patrol;
};
struct bioc_vol {
 struct bio bv_bio;
 int bv_volid;
 int16_t bv_percent;
 u_int16_t bv_seconds;
 int bv_status;
 uint64_t bv_size;
 int bv_level;
 int bv_nodisk;
 int bv_cache;
 char bv_dev[16];
 char bv_vendor[32];
};
struct bioc_alarm {
 struct bio ba_bio;
 int ba_opcode;
 int ba_status;
};
struct bioc_blink {
 struct bio bb_bio;
 u_int16_t bb_channel;
 u_int16_t bb_target;
 int bb_status;
};
struct bioc_setstate {
 struct bio bs_bio;
 u_int16_t bs_channel;
 u_int16_t bs_target;
 u_int16_t bs_lun;
 u_int16_t bs_other_id_type;
 int bs_other_id;
 int bs_status;
 int bs_volid;
};
struct bioc_createraid {
 struct bio bc_bio;
 void *bc_dev_list;
 u_int16_t bc_dev_list_len;
 int32_t bc_key_disk;
 u_int16_t bc_level;
 u_int32_t bc_flags;
 u_int32_t bc_opaque_size;
 u_int32_t bc_opaque_flags;
 u_int32_t bc_opaque_status;
 void *bc_opaque;
};
struct bioc_deleteraid {
 struct bio bd_bio;
 u_int32_t bd_flags;
 char bd_dev[16];
};
struct bioc_discipline {
 struct bio bd_bio;
 char bd_dev[16];
 u_int32_t bd_cmd;
 u_int32_t bd_size;
 void *bd_data;
};
struct bioc_installboot {
 struct bio bb_bio;
 char bb_dev[16];
 void *bb_bootblk;
 void *bb_bootldr;
 u_int32_t bb_bootblk_size;
 u_int32_t bb_bootldr_size;
};
struct bioc_patrol {
 struct bio bp_bio;
 int bp_opcode;
 int bp_mode;
 int bp_status;
 int bp_autoival;
 int bp_autonext;
 int bp_autonow;
};
int bio_register(struct device *, int (*)(struct device *, u_long,
     caddr_t));
void bio_unregister(struct device *);
void bio_status_init(struct bio_status *, struct device *);
void bio_status(struct bio_status *, int, int, const char *, va_list *);
void bio_info(struct bio_status *, int, const char *, ...);
void bio_warn(struct bio_status *, int, const char *, ...);
void bio_error(struct bio_status *, int, const char *, ...);
extern struct sr_uuid sr_bootuuid;
extern u_int8_t sr_bootkey[32];
struct sr_softc;
struct sr_ccb {
 struct buf ccb_buf;
 struct sr_workunit *ccb_wu;
 struct sr_discipline *ccb_dis;
 int ccb_target;
 int ccb_state;
 int ccb_flags;
 void *ccb_opaque;
 struct { struct sr_ccb *tqe_next; struct sr_ccb **tqe_prev; } ccb_link;
};
struct sr_ccb_list { struct sr_ccb *tqh_first; struct sr_ccb **tqh_last; };
struct sr_workunit {
 struct scsi_xfer *swu_xs;
 struct sr_discipline *swu_dis;
 int swu_state;
 int swu_flags;
 daddr_t swu_blk_start;
 daddr_t swu_blk_end;
 u_int32_t swu_io_count;
 u_int32_t swu_ios_complete;
 u_int32_t swu_ios_failed;
 u_int32_t swu_ios_succeeded;
 struct sr_workunit *swu_collider;
 struct sr_ccb_list swu_ccb;
 struct task swu_task;
 int swu_cb_active;
 struct { struct sr_workunit *tqe_next; struct sr_workunit **tqe_prev; } swu_link;
 struct { struct sr_workunit *tqe_next; struct sr_workunit **tqe_prev; } swu_next;
};
struct sr_wu_list { struct sr_workunit *tqh_first; struct sr_workunit **tqh_last; };
struct sr_raid0 {
 int32_t sr0_strip_bits;
};
struct sr_raid1 {
 u_int32_t sr1_counter;
};
struct sr_raid5 {
 int32_t sr5_strip_bits;
};
struct sr_raid6 {
 int32_t sr6_strip_bits;
};
struct sr_crypto_wu_head { struct sr_crypto_wu *tqh_first; struct sr_crypto_wu **tqh_last; };
struct sr_crypto {
 struct sr_meta_crypto *scr_meta;
 struct sr_chunk *key_disk;
 int scr_alg;
 int scr_klen;
 u_int8_t scr_key[32][(512 >> 3)];
 u_int8_t scr_maskkey[32];
 u_int64_t scr_sid[32];
};
struct sr_concat {
};
struct sr_chunk {
 struct sr_meta_chunk src_meta;
 dev_t src_dev_mm;
 struct vnode *src_vn;
 int src_meta_ondisk;
 char src_devname[32];
 u_char src_duid[8];
 int64_t src_size;
 u_int32_t src_secsize;
 struct { struct sr_chunk *sle_next; } src_link;
};
struct sr_chunk_head { struct sr_chunk *slh_first; };
struct sr_volume {
 struct sr_chunk_head sv_chunk_list;
 struct sr_chunk **sv_chunks;
 int64_t sv_chunk_minsz;
 int64_t sv_chunk_maxsz;
 struct ksensor sv_sensor;
 int sv_sensor_attached;
};
struct sr_discipline {
 struct sr_softc *sd_sc;
 u_int8_t sd_type;
 char sd_name[10];
 u_int16_t sd_target;
 u_int32_t sd_capabilities;
 union {
     struct sr_raid0 mdd_raid0;
     struct sr_raid1 mdd_raid1;
     struct sr_raid5 mdd_raid5;
     struct sr_raid6 mdd_raid6;
     struct sr_concat mdd_concat;
     struct sr_crypto mdd_crypto;
 } sd_dis_specific;
 struct taskq *sd_taskq;
 struct sr_metadata *sd_meta;
 void *sd_meta_foreign;
 u_int32_t sd_meta_flags;
 int sd_meta_type;
 struct sr_meta_opt_head sd_meta_opt;
 int sd_sync;
 int sd_must_flush;
 int sd_deleted;
 struct device *sd_scsibus_dev;
 struct sr_volume sd_vol;
 int sd_vol_status;
 struct sr_ccb *sd_ccb;
 struct sr_ccb_list sd_ccb_freeq;
 u_int32_t sd_max_ccb_per_wu;
 struct sr_wu_list sd_wu;
 u_int32_t sd_max_wu;
 int sd_reb_active;
 int sd_reb_abort;
 int sd_ready;
 struct sr_wu_list sd_wu_freeq;
 struct sr_wu_list sd_wu_pendq;
 struct sr_wu_list sd_wu_defq;
 struct mutex sd_wu_mtx;
 struct scsi_iopool sd_iopool;
 int sd_wu_pending;
 u_int64_t sd_wu_collisions;
 int (*sd_create)(struct sr_discipline *,
        struct bioc_createraid *, int, int64_t);
 int (*sd_assemble)(struct sr_discipline *,
        struct bioc_createraid *, int, void *);
 int (*sd_alloc_resources)(struct sr_discipline *);
 void (*sd_free_resources)(struct sr_discipline *);
 int (*sd_ioctl_handler)(struct sr_discipline *,
        struct bioc_discipline *);
 int (*sd_start_discipline)(struct sr_discipline *);
 void (*sd_set_chunk_state)(struct sr_discipline *,
        int, int);
 void (*sd_set_vol_state)(struct sr_discipline *);
 int (*sd_openings)(struct sr_discipline *);
 int (*sd_meta_opt_handler)(struct sr_discipline *,
        struct sr_meta_opt_hdr *);
 void (*sd_rebuild)(struct sr_discipline *);
 struct scsi_sense_data sd_scsi_sense;
 int (*sd_scsi_rw)(struct sr_workunit *);
 void (*sd_scsi_intr)(struct buf *);
 int (*sd_scsi_wu_done)(struct sr_workunit *);
 void (*sd_scsi_done)(struct sr_workunit *);
 int (*sd_scsi_sync)(struct sr_workunit *);
 int (*sd_scsi_tur)(struct sr_workunit *);
 int (*sd_scsi_start_stop)(struct sr_workunit *);
 int (*sd_scsi_inquiry)(struct sr_workunit *);
 int (*sd_scsi_read_cap)(struct sr_workunit *);
 int (*sd_scsi_req_sense)(struct sr_workunit *);
 struct proc *sd_background_proc;
 struct task sd_meta_save_task;
 struct task sd_hotspare_rebuild_task;
 struct { struct sr_discipline *tqe_next; struct sr_discipline **tqe_prev; } sd_link;
};
struct sr_discipline_list { struct sr_discipline *tqh_first; struct sr_discipline **tqh_last; };
struct sr_softc {
 struct device sc_dev;
 struct rwlock sc_lock;
 struct bio_status sc_status;
 struct sr_chunk_head sc_hotspare_list;
 struct rwlock sc_hs_lock;
 int sc_hotspare_no;
 struct ksensordev sc_sensordev;
 struct sensor_task *sc_sensor_task;
 struct scsi_link sc_link;
 struct scsibus_softc *sc_scsibus;
 struct sr_discipline *sc_targets[256];
 struct sr_discipline_list sc_dis_list;
};
void sr_hotplug_register(struct sr_discipline *, void *);
void sr_hotplug_unregister(struct sr_discipline *, void *);
void sr_hotspare_rebuild_callback(void *);
int sr_ccb_alloc(struct sr_discipline *);
void sr_ccb_free(struct sr_discipline *);
struct sr_ccb *sr_ccb_get(struct sr_discipline *);
void sr_ccb_put(struct sr_ccb *);
struct sr_ccb *sr_ccb_rw(struct sr_discipline *, int, daddr_t,
       long, u_int8_t *, int, int);
void sr_ccb_done(struct sr_ccb *);
int sr_wu_alloc(struct sr_discipline *, int);
void sr_wu_free(struct sr_discipline *);
void *sr_wu_get(void *);
void sr_wu_put(void *, void *);
void sr_wu_init(struct sr_discipline *,
       struct sr_workunit *);
void sr_wu_enqueue_ccb(struct sr_workunit *,
       struct sr_ccb *);
void sr_wu_release_ccbs(struct sr_workunit *);
void sr_wu_done(struct sr_workunit *);
void sr_info(struct sr_softc *, const char *, ...);
void sr_warn(struct sr_softc *, const char *, ...);
void sr_error(struct sr_softc *, const char *, ...);
int32_t sr_validate_stripsize(u_int32_t);
int sr_meta_read(struct sr_discipline *);
int sr_meta_native_read(struct sr_discipline *, dev_t,
       struct sr_metadata *, void *);
int sr_meta_validate(struct sr_discipline *, dev_t,
       struct sr_metadata *, void *);
void sr_meta_save_callback(void *);
int sr_meta_save(struct sr_discipline *, u_int32_t);
void sr_meta_getdevname(struct sr_softc *, dev_t, char *,
       int);
void sr_meta_opt_load(struct sr_softc *,
       struct sr_metadata *, struct sr_meta_opt_head *);
void *sr_block_get(struct sr_discipline *, long);
void sr_block_put(struct sr_discipline *, void *, int);
void sr_checksum(struct sr_softc *, void *, void *,
       u_int32_t);
int sr_validate_io(struct sr_workunit *, daddr_t *,
       char *);
void sr_schedule_wu(struct sr_workunit *);
void sr_scsi_done(struct sr_discipline *,
       struct scsi_xfer *);
struct sr_workunit *sr_scsi_wu_get(struct sr_discipline *, int);
void sr_scsi_wu_put(struct sr_discipline *,
       struct sr_workunit *);
int sr_chunk_in_use(struct sr_softc *, dev_t);
int sr_rebuild_percent(struct sr_discipline *);
int sr_raid_inquiry(struct sr_workunit *);
int sr_raid_read_cap(struct sr_workunit *);
int sr_raid_tur(struct sr_workunit *);
int sr_raid_request_sense( struct sr_workunit *);
int sr_raid_start_stop(struct sr_workunit *);
int sr_raid_sync(struct sr_workunit *);
void sr_raid_intr(struct buf *);
void sr_raid_startwu(struct sr_workunit *);
void sr_raid_recreate_wu(struct sr_workunit *);
void sr_raid0_discipline_init(struct sr_discipline *);
void sr_raid1_discipline_init(struct sr_discipline *);
void sr_raid5_discipline_init(struct sr_discipline *);
void sr_raid6_discipline_init(struct sr_discipline *);
void sr_crypto_discipline_init(struct sr_discipline *);
void sr_concat_discipline_init(struct sr_discipline *);
int sr_crypto_get_kdf(struct bioc_createraid *,
       struct sr_discipline *);
int sr_crypto_create_keys(struct sr_discipline *);
struct sr_chunk * sr_crypto_create_key_disk(struct sr_discipline *, dev_t);
struct sr_chunk * sr_crypto_read_key_disk(struct sr_discipline *, dev_t);
int sr_hibernate_io(dev_t dev, daddr_t blkno, vaddr_t addr,
       size_t size, int op, void *page);
struct sr_softc *softraid0;
struct sr_uuid sr_bootuuid;
u_int8_t sr_bootkey[32];
int sr_match(struct device *, void *, void *);
void sr_attach(struct device *, struct device *, void *);
int sr_detach(struct device *, int);
void sr_map_root(void);
struct cfattach softraid_ca = {
 sizeof(struct sr_softc), sr_match, sr_attach, sr_detach,
};
struct cfdriver softraid_cd = {
 ((void *)0), "softraid", DV_DULL
};
void sr_scsi_cmd(struct scsi_xfer *);
void sr_minphys(struct buf *, struct scsi_link *);
int sr_scsi_probe(struct scsi_link *);
void sr_copy_internal_data(struct scsi_xfer *,
       void *, size_t);
int sr_scsi_ioctl(struct scsi_link *, u_long,
       caddr_t, int);
int sr_bio_ioctl(struct device *, u_long, caddr_t);
int sr_bio_handler(struct sr_softc *,
       struct sr_discipline *, u_long, struct bio *);
int sr_ioctl_inq(struct sr_softc *, struct bioc_inq *);
int sr_ioctl_vol(struct sr_softc *, struct bioc_vol *);
int sr_ioctl_disk(struct sr_softc *, struct bioc_disk *);
int sr_ioctl_setstate(struct sr_softc *,
       struct bioc_setstate *);
int sr_ioctl_createraid(struct sr_softc *,
       struct bioc_createraid *, int, void *);
int sr_ioctl_deleteraid(struct sr_softc *,
       struct sr_discipline *, struct bioc_deleteraid *);
int sr_ioctl_discipline(struct sr_softc *,
       struct sr_discipline *, struct bioc_discipline *);
int sr_ioctl_installboot(struct sr_softc *,
       struct sr_discipline *, struct bioc_installboot *);
void sr_chunks_unwind(struct sr_softc *,
       struct sr_chunk_head *);
void sr_discipline_free(struct sr_discipline *);
void sr_discipline_shutdown(struct sr_discipline *, int, int);
int sr_discipline_init(struct sr_discipline *, int);
int sr_alloc_resources(struct sr_discipline *);
void sr_free_resources(struct sr_discipline *);
void sr_set_chunk_state(struct sr_discipline *, int, int);
void sr_set_vol_state(struct sr_discipline *);
void sr_shutdown(int);
void sr_uuid_generate(struct sr_uuid *);
char *sr_uuid_format(struct sr_uuid *);
void sr_uuid_print(struct sr_uuid *, int);
void sr_checksum_print(u_int8_t *);
int sr_boot_assembly(struct sr_softc *);
int sr_already_assembled(struct sr_discipline *);
int sr_hotspare(struct sr_softc *, dev_t);
void sr_hotspare_rebuild(struct sr_discipline *);
int sr_rebuild_init(struct sr_discipline *, dev_t, int);
void sr_rebuild_start(void *);
void sr_rebuild_thread(void *);
void sr_rebuild(struct sr_discipline *);
void sr_roam_chunks(struct sr_discipline *);
int sr_chunk_in_use(struct sr_softc *, dev_t);
int sr_rw(struct sr_softc *, dev_t, char *, size_t,
       daddr_t, long);
void sr_wu_done_callback(void *);
void sr_sensors_refresh(void *);
int sr_sensors_create(struct sr_discipline *);
void sr_sensors_delete(struct sr_discipline *);
int sr_meta_probe(struct sr_discipline *, dev_t *, int);
int sr_meta_attach(struct sr_discipline *, int, int);
int sr_meta_rw(struct sr_discipline *, dev_t, void *, long);
int sr_meta_clear(struct sr_discipline *);
void sr_meta_init(struct sr_discipline *, int, int);
void sr_meta_init_complete(struct sr_discipline *);
void sr_meta_opt_handler(struct sr_discipline *,
       struct sr_meta_opt_hdr *);
void sr_disk_attach(struct disk *, int);
struct sr_hotplug_list {
 void (*sh_hotplug)(struct sr_discipline *,
        struct disk *, int);
 struct sr_discipline *sh_sd;
 struct { struct sr_hotplug_list *sle_next; } shl_link;
};
struct sr_hotplug_list_head { struct sr_hotplug_list *slh_first; };
struct sr_hotplug_list_head sr_hotplug_callbacks;
extern void (*softraid_disk_attach)(struct disk *, int);
struct scsi_adapter sr_switch = {
 sr_scsi_cmd, sr_minphys, sr_scsi_probe, ((void *)0), sr_scsi_ioctl
};
int sr_meta_native_bootprobe(struct sr_softc *, dev_t,
       struct sr_boot_chunk_head *);
int sr_meta_native_probe(struct sr_softc *,
      struct sr_chunk *);
int sr_meta_native_attach(struct sr_discipline *, int);
int sr_meta_native_write(struct sr_discipline *, dev_t,
       struct sr_metadata *,void *);
struct sr_meta_driver {
 daddr_t smd_offset;
 u_int32_t smd_size;
 int (*smd_probe)(struct sr_softc *,
       struct sr_chunk *);
 int (*smd_attach)(struct sr_discipline *, int);
 int (*smd_detach)(struct sr_discipline *);
 int (*smd_read)(struct sr_discipline *, dev_t,
        struct sr_metadata *, void *);
 int (*smd_write)(struct sr_discipline *, dev_t,
        struct sr_metadata *, void *);
 int (*smd_validate)(struct sr_discipline *,
        struct sr_metadata *, void *);
} smd[] = {
 { 16, 64 * (1 << 9),
   sr_meta_native_probe, sr_meta_native_attach, ((void *)0),
   sr_meta_native_read, sr_meta_native_write, ((void *)0) },
 { 0, 0, ((void *)0), ((void *)0), ((void *)0), ((void *)0) }
};
int
sr_meta_attach(struct sr_discipline *sd, int chunk_no, int force)
{
 struct sr_softc *sc = sd->sd_sc;
 struct sr_chunk_head *cl;
 struct sr_chunk *ch_entry, *chunk1, *chunk2;
 int rv = 1, i = 0;
 ;
 sd->sd_meta = malloc(64 * (1 << 9), 2,
     0x0008 | 0x0002);
 if (!sd->sd_meta) {
  sr_error(sc, "could not allocate memory for metadata");
  goto bad;
 }
 if (sd->sd_meta_type != 0) {
  sd->sd_meta_foreign = malloc(smd[sd->sd_meta_type].smd_size,
      2, 0x0008 | 0x0002);
  if (!sd->sd_meta_foreign) {
   sr_error(sc, "could not allocate memory for foreign "
       "metadata");
   goto bad;
  }
 }
 cl = &sd->sd_vol.sv_chunk_list;
 sd->sd_vol.sv_chunks = mallocarray(chunk_no, sizeof(struct sr_chunk *),
     2, 0x0001 | 0x0008);
 i = 0;
 for((ch_entry) = ((cl)->slh_first); (ch_entry) != ((void *)0); (ch_entry) = ((ch_entry)->src_link.sle_next))
  sd->sd_vol.sv_chunks[i++] = ch_entry;
 if (smd[sd->sd_meta_type].smd_attach(sd, force))
  goto bad;
 { ((cl)->slh_first) = ((void *)0); };
 for (i = 0; i < chunk_no; i++) {
  ch_entry = sd->sd_vol.sv_chunks[i];
  chunk2 = ((void *)0);
  for((chunk1) = ((cl)->slh_first); (chunk1) != ((void *)0); (chunk1) = ((chunk1)->src_link.sle_next)) {
   if (chunk1->src_meta._scm_invariant.scm_chunk_id >
       ch_entry->src_meta._scm_invariant.scm_chunk_id)
    break;
   chunk2 = chunk1;
  }
  if (chunk2 == ((void *)0))
   do { (ch_entry)->src_link.sle_next = (cl)->slh_first; (cl)->slh_first = (ch_entry); } while (0);
  else
   do { (ch_entry)->src_link.sle_next = (chunk2)->src_link.sle_next; (chunk2)->src_link.sle_next = (ch_entry); } while (0);
 }
 i = 0;
 for((ch_entry) = ((cl)->slh_first); (ch_entry) != ((void *)0); (ch_entry) = ((ch_entry)->src_link.sle_next))
  sd->sd_vol.sv_chunks[i++] = ch_entry;
 rv = 0;
bad:
 return (rv);
}
int
sr_meta_probe(struct sr_discipline *sd, dev_t *dt, int no_chunk)
{
 struct sr_softc *sc = sd->sd_sc;
 struct vnode *vn;
 struct sr_chunk *ch_entry, *ch_prev = ((void *)0);
 struct sr_chunk_head *cl;
 char devname[32];
 int i, d, type, found, prevf, error;
 dev_t dev;
 ;
 if (no_chunk == 0)
  goto unwind;
 cl = &sd->sd_vol.sv_chunk_list;
 for (d = 0, prevf = -1; d < no_chunk; d++) {
  ch_entry = malloc(sizeof(struct sr_chunk), 2,
      0x0001 | 0x0008);
  if (ch_prev)
   do { (ch_entry)->src_link.sle_next = (ch_prev)->src_link.sle_next; (ch_prev)->src_link.sle_next = (ch_entry); } while (0);
  else
   do { (ch_entry)->src_link.sle_next = (cl)->slh_first; (cl)->slh_first = (ch_entry); } while (0);
  ch_prev = ch_entry;
  dev = dt[d];
  ch_entry->src_dev_mm = dev;
  if (dev == (dev_t)(-1)) {
   ch_entry->src_meta.scm_status = 0x01;
   continue;
  } else {
   sr_meta_getdevname(sc, dev, devname, sizeof(devname));
   if (bdevvp(dev, &vn)) {
    sr_error(sc, "sr_meta_probe: cannot allocate "
        "vnode");
    goto unwind;
   }
   error = VOP_OPEN(vn, 0x0001 | 0x0002, ((struct ucred *)-1), (__curcpu->ci_self)->ci_curproc);
   if (error) {
    ;
    vput(vn);
    goto unwind;
   }
   strlcpy(ch_entry->src_devname, devname,
       sizeof(ch_entry->src_devname));
   ch_entry->src_vn = vn;
  }
  for (i = 0, found = -1; smd[i].smd_probe; i++) {
   type = smd[i].smd_probe(sc, ch_entry);
   if (type == -1)
    continue;
   else {
    found = type;
    break;
   }
  }
  if (found == -1)
   goto unwind;
  if (prevf == -1)
   prevf = found;
  if (prevf != found) {
   ;
   goto unwind;
  }
 }
 return (prevf);
unwind:
 return (-1);
}
void
sr_meta_getdevname(struct sr_softc *sc, dev_t dev, char *buf, int size)
{
 int maj, unit, part;
 char *name;
 ;
 if (!buf)
  return;
 maj = ((int32_t)(((u_int32_t)(dev) >> 8) & 0xff));
 part = (((int32_t)((dev) & 0xff) | (((dev) & 0xffff0000) >> 8)) % 16);
 unit = (((int32_t)((dev) & 0xff) | (((dev) & 0xffff0000) >> 8)) / 16);
 name = findblkname(maj);
 if (name == ((void *)0))
  return;
 snprintf(buf, size, "%s%d%c", name, unit, part + 'a');
}
int
sr_rw(struct sr_softc *sc, dev_t dev, char *buf, size_t size, daddr_t blkno,
    long flags)
{
 struct vnode *vp;
 struct buf b;
 size_t bufsize, dma_bufsize;
 int rv = 1;
 char *dma_buf;
 ;
 dma_bufsize = (size > (64 * 1024)) ? (64 * 1024) : size;
 dma_buf = dma_alloc(dma_bufsize, 0x0001);
 if (bdevvp(dev, &vp)) {
  printf("%s: sr_rw: failed to allocate vnode\n", ((sc)->sc_dev.dv_xname));
  goto done;
 }
 while (size > 0) {
  ;
  bufsize = (size > (64 * 1024)) ? (64 * 1024) : size;
  if (flags == 0x00000000)
   __builtin_memcpy((dma_buf), (buf), (bufsize));
  __builtin_bzero((&b), (sizeof(b)));
  b.b_flags = flags | 0x00002000;
  b.b_proc = (__curcpu->ci_self)->ci_curproc;
  b.b_dev = dev;
  b.b_iodone = ((void *)0);
  b.b_error = 0;
  b.b_blkno = blkno;
  b.b_data = dma_buf;
  b.b_bcount = bufsize;
  b.b_bufsize = bufsize;
  b.b_resid = bufsize;
  b.b_vp = vp;
  if ((b.b_flags & 0x00008000) == 0)
   vp->v_numoutput++;
  do { ((&b.b_dep)->lh_first) = ((void *)0); } while (0);
  VOP_STRATEGY(&b);
  biowait(&b);
  if (b.b_flags & 0x00000400) {
   printf("%s: I/O error %d on dev 0x%x at block %llu\n",
       ((sc)->sc_dev.dv_xname), b.b_error, dev, b.b_blkno);
   goto done;
  }
  if (flags == 0x00008000)
   __builtin_memcpy((buf), (dma_buf), (bufsize));
  size -= bufsize;
  buf += bufsize;
  blkno += (((bufsize) + (((1 << 9)) - 1)) / ((1 << 9)));
 }
 rv = 0;
done:
 if (vp)
  vput(vp);
 dma_free(dma_buf, dma_bufsize);
 return (rv);
}
int
sr_meta_rw(struct sr_discipline *sd, dev_t dev, void *md, long flags)
{
 int rv = 1;
 ;
 if (md == ((void *)0)) {
  printf("%s: sr_meta_rw: invalid metadata pointer\n",
      ((sd->sd_sc)->sc_dev.dv_xname));
  goto done;
 }
 rv = sr_rw(sd->sd_sc, dev, md, 64 * (1 << 9),
     16, flags);
done:
 return (rv);
}
int
sr_meta_clear(struct sr_discipline *sd)
{
 struct sr_softc *sc = sd->sd_sc;
 struct sr_chunk_head *cl = &sd->sd_vol.sv_chunk_list;
 struct sr_chunk *ch_entry;
 void *m;
 int rv = 1;
 ;
 if (sd->sd_meta_type != 0) {
  sr_error(sc, "cannot clear foreign metadata");
  goto done;
 }
 m = malloc(64 * (1 << 9), 2, 0x0001 | 0x0008);
 for((ch_entry) = ((cl)->slh_first); (ch_entry) != ((void *)0); (ch_entry) = ((ch_entry)->src_link.sle_next)) {
  if (sr_meta_native_write(sd, ch_entry->src_dev_mm, m, ((void *)0))) {
   ;
   rv++;
   continue;
  }
  __builtin_bzero((&ch_entry->src_meta), (sizeof(ch_entry->src_meta)));
 }
 __builtin_bzero((sd->sd_meta), (64 * (1 << 9)));
 free(m, 2, 64 * (1 << 9));
 rv = 0;
done:
 return (rv);
}
void
sr_meta_init(struct sr_discipline *sd, int level, int no_chunk)
{
 struct sr_softc *sc = sd->sd_sc;
 struct sr_metadata *sm = sd->sd_meta;
 struct sr_chunk_head *cl = &sd->sd_vol.sv_chunk_list;
 struct sr_meta_chunk *scm;
 struct sr_chunk *chunk;
 int cid = 0;
 u_int64_t max_chunk_sz = 0, min_chunk_sz = 0;
 u_int32_t secsize = (1 << 9);
 ;
 if (!sm)
  return;
 sm->_sdd_invariant.ssd_magic = 0x4d4152436372616dLLU;
 sm->_sdd_invariant.ssd_version = 6;
 sm->_sdd_invariant.ssd_vol_flags = sd->sd_meta_flags;
 sm->_sdd_invariant.ssd_volid = 0;
 sm->_sdd_invariant.ssd_chunk_no = no_chunk;
 sm->_sdd_invariant.ssd_level = level;
 sm->ssd_data_blkno = (16 + (64 + (320 + 128)));
 sm->ssd_ondisk = 0;
 sr_uuid_generate(&sm->_sdd_invariant.ssd_uuid);
 for((chunk) = ((cl)->slh_first); (chunk) != ((void *)0); (chunk) = ((chunk)->src_link.sle_next)) {
  scm = &chunk->src_meta;
  scm->_scm_invariant.scm_size = chunk->src_size;
  scm->_scm_invariant.scm_chunk_id = cid++;
  scm->scm_status = 0x00;
  scm->_scm_invariant.scm_volid = 0;
  strlcpy(scm->_scm_invariant.scm_devname, chunk->src_devname,
      sizeof(scm->_scm_invariant.scm_devname));
  __builtin_memcpy((&scm->_scm_invariant.scm_uuid), (&sm->_sdd_invariant.ssd_uuid), (sizeof(scm->_scm_invariant.scm_uuid)));
  sr_checksum(sc, scm, &scm->scm_checksum,
      sizeof(scm->scm_checksum));
  if (min_chunk_sz == 0)
   min_chunk_sz = scm->_scm_invariant.scm_size;
  if (chunk->src_secsize > secsize)
   secsize = chunk->src_secsize;
  min_chunk_sz = (((min_chunk_sz)<(scm->_scm_invariant.scm_size))?(min_chunk_sz):(scm->_scm_invariant.scm_size));
  max_chunk_sz = (((max_chunk_sz)>(scm->_scm_invariant.scm_size))?(max_chunk_sz):(scm->_scm_invariant.scm_size));
 }
 sm->_sdd_invariant.ssd_secsize = secsize;
 for((chunk) = ((cl)->slh_first); (chunk) != ((void *)0); (chunk) = ((chunk)->src_link.sle_next))
  chunk->src_meta._scm_invariant.scm_coerced_size = min_chunk_sz;
 sd->sd_vol.sv_chunk_minsz = min_chunk_sz;
 sd->sd_vol.sv_chunk_maxsz = max_chunk_sz;
}
void
sr_meta_init_complete(struct sr_discipline *sd)
{
 struct sr_metadata *sm = sd->sd_meta;
 ;
 strlcpy(sm->_sdd_invariant.ssd_vendor, "OPENBSD", sizeof(sm->_sdd_invariant.ssd_vendor));
 snprintf(sm->_sdd_invariant.ssd_product, sizeof(sm->_sdd_invariant.ssd_product),
     "SR %s", sd->sd_name);
 snprintf(sm->_sdd_invariant.ssd_revision, sizeof(sm->_sdd_invariant.ssd_revision),
     "%03d", sm->_sdd_invariant.ssd_version);
}
void
sr_meta_opt_handler(struct sr_discipline *sd, struct sr_meta_opt_hdr *om)
{
 if (om->som_type != 0x02)
  panic("unknown optional metadata type");
}
void
sr_meta_save_callback(void *xsd)
{
 struct sr_discipline *sd = xsd;
 int s;
 s = _splraise(5);
 if (sr_meta_save(sd, 0x1))
  printf("%s: save metadata failed\n", ((sd->sd_sc)->sc_dev.dv_xname));
 sd->sd_must_flush = 0;
 _splx(s);
}
int
sr_meta_save(struct sr_discipline *sd, u_int32_t flags)
{
 struct sr_softc *sc = sd->sd_sc;
 struct sr_metadata *sm = sd->sd_meta, *m;
 struct sr_meta_driver *s;
 struct sr_chunk *src;
 struct sr_meta_chunk *cm;
 struct sr_workunit wu;
 struct sr_meta_opt_hdr *omh;
 struct sr_meta_opt_item *omi;
 int i;
 ;
 if (!sm) {
  printf("%s: no in memory copy of metadata\n", ((sc)->sc_dev.dv_xname));
  goto bad;
 }
 s = &smd[sd->sd_meta_type];
 m = malloc(64 * (1 << 9), 2, 0x0008 | 0x0002);
 if (!m) {
  printf("%s: could not allocate metadata scratch area\n",
      ((sc)->sc_dev.dv_xname));
  goto bad;
 }
restart:
 sm->ssd_ondisk++;
 sm->ssd_meta_flags = flags;
 __builtin_memcpy((m), (sm), (sizeof(*m)));
 cm = (struct sr_meta_chunk *)(m + 1);
 for (i = 0; i < sm->_sdd_invariant.ssd_chunk_no; i++) {
  src = sd->sd_vol.sv_chunks[i];
  __builtin_memcpy((cm), (&src->src_meta), (sizeof(*cm)));
  cm++;
 }
 omh = (struct sr_meta_opt_hdr *)(cm);
 for((omi) = ((&sd->sd_meta_opt)->slh_first); (omi) != ((void *)0); (omi) = ((omi)->omi_link.sle_next)) {
  ;
  __builtin_bzero((&omi->omi_som->som_checksum), (16));
  sr_checksum(sc, omi->omi_som, &omi->omi_som->som_checksum,
      omi->omi_som->som_length);
  __builtin_memcpy((omh), (omi->omi_som), (omi->omi_som->som_length));
  omh = (struct sr_meta_opt_hdr *)((u_int8_t *)omh +
      omi->omi_som->som_length);
 }
 for (i = 0; i < sm->_sdd_invariant.ssd_chunk_no; i++) {
  src = sd->sd_vol.sv_chunks[i];
  if (src->src_meta.scm_status == 0x01)
   continue;
  m->_sdd_invariant.ssd_chunk_id = i;
  sr_checksum(sc, m, &m->ssd_checksum,
      sizeof(struct sr_meta_invariant));
  if (s->smd_write(sd, src->src_dev_mm, m, ((void *)0) )) {
   printf("%s: could not write metadata to %s\n",
       ((sc)->sc_dev.dv_xname), src->src_devname);
   src->src_meta.scm_status = 0x01;
   goto restart;
  }
 }
 if (sd->sd_scsi_sync) {
  __builtin_bzero((&wu), (sizeof(wu)));
  wu.swu_flags |= (1<<6);
  wu.swu_dis = sd;
  sd->sd_scsi_sync(&wu);
 }
 free(m, 2, 64 * (1 << 9));
 return (0);
bad:
 return (1);
}
int
sr_meta_read(struct sr_discipline *sd)
{
 struct sr_softc *sc = sd->sd_sc;
 struct sr_chunk_head *cl = &sd->sd_vol.sv_chunk_list;
 struct sr_metadata *sm;
 struct sr_chunk *ch_entry;
 struct sr_meta_chunk *cp;
 struct sr_meta_driver *s;
 void *fm = ((void *)0);
 int no_disk = 0, got_meta = 0;
 ;
 sm = malloc(64 * (1 << 9), 2, 0x0001 | 0x0008);
 s = &smd[sd->sd_meta_type];
 if (sd->sd_meta_type != 0)
  fm = malloc(s->smd_size, 2, 0x0001 | 0x0008);
 cp = (struct sr_meta_chunk *)(sm + 1);
 for((ch_entry) = ((cl)->slh_first); (ch_entry) != ((void *)0); (ch_entry) = ((ch_entry)->src_link.sle_next)) {
  if (ch_entry->src_meta.scm_status == 0x01) {
   ;
   cp++;
   continue;
  } else if (s->smd_read(sd, ch_entry->src_dev_mm, sm, fm)) {
   ch_entry->src_meta.scm_status = 0x01;
   cp++;
   ;
   continue;
  }
  if (sm->_sdd_invariant.ssd_magic != 0x4d4152436372616dLLU) {
   ;
   continue;
  }
  if (sr_meta_validate(sd, ch_entry->src_dev_mm, sm, fm)) {
   ;
   no_disk = -1;
   goto done;
  }
  if (got_meta == 0) {
   sr_meta_opt_load(sc, sm, &sd->sd_meta_opt);
   __builtin_memcpy((sd->sd_meta), (sm), (sizeof(*sd->sd_meta)));
   got_meta = 1;
  }
  __builtin_memcpy((&ch_entry->src_meta), (cp), (sizeof(ch_entry->src_meta)));
  no_disk++;
  cp++;
 }
 free(sm, 2, 64 * (1 << 9));
 free(fm, 2, s->smd_size);
done:
 ;
 return (no_disk);
}
void
sr_meta_opt_load(struct sr_softc *sc, struct sr_metadata *sm,
    struct sr_meta_opt_head *som)
{
 struct sr_meta_opt_hdr *omh;
 struct sr_meta_opt_item *omi;
 u_int8_t checksum[16];
 int i;
 omh = (struct sr_meta_opt_hdr *)((u_int8_t *)(sm + 1) +
     sizeof(struct sr_meta_chunk) * sm->_sdd_invariant.ssd_chunk_no);
 for (i = 0; i < sm->_sdd_invariant.ssd_opt_no; i++) {
  omi = malloc(sizeof(struct sr_meta_opt_item), 2,
      0x0001 | 0x0008);
  do { (omi)->omi_link.sle_next = (som)->slh_first; (som)->slh_first = (omi); } while (0);
  if (omh->som_length == 0) {
   ;
   sr_checksum(sc, (void *)omh, &checksum,
       2480 - 16);
   if (__builtin_bcmp((&checksum), ((void *)omh + (2480 - 16)), (sizeof(checksum))))
    panic("%s: invalid optional metadata "
        "checksum", ((sc)->sc_dev.dv_xname));
   switch (omh->som_type) {
   case 0x01:
    omh->som_length = sizeof(struct sr_meta_crypto);
    break;
   case 0x02:
    omh->som_length = sizeof(struct sr_meta_boot);
    break;
   case 0x03:
    omh->som_length =
        sizeof(struct sr_meta_keydisk);
    break;
   default:
    panic("unknown old optional metadata "
        "type %u\n", omh->som_type);
   }
   omi->omi_som = malloc(omh->som_length, 2,
       0x0001 | 0x0008);
   __builtin_memcpy(((u_int8_t *)omi->omi_som + sizeof(*omi->omi_som)), ((u_int8_t *)omh + 8), (omh->som_length - sizeof(*omi->omi_som)));
   omi->omi_som->som_type = omh->som_type;
   omi->omi_som->som_length = omh->som_length;
   omh = (struct sr_meta_opt_hdr *)((void *)omh +
       2480);
  } else {
   ;
   omi->omi_som = malloc(omh->som_length, 2,
       0x0001 | 0x0008);
   __builtin_memcpy((omi->omi_som), (omh), (omh->som_length));
   __builtin_memcpy((&checksum), (&omi->omi_som->som_checksum), (16));
   __builtin_bzero((&omi->omi_som->som_checksum), (16));
   sr_checksum(sc, omi->omi_som,
       &omi->omi_som->som_checksum, omh->som_length);
   if (__builtin_bcmp((&checksum), (&omi->omi_som->som_checksum), (sizeof(checksum))))
    panic("%s: invalid optional metadata checksum",
        ((sc)->sc_dev.dv_xname));
   omh = (struct sr_meta_opt_hdr *)((void *)omh +
       omh->som_length);
  }
 }
}
int
sr_meta_validate(struct sr_discipline *sd, dev_t dev, struct sr_metadata *sm,
    void *fm)
{
 struct sr_softc *sc = sd->sd_sc;
 struct sr_meta_driver *s;
 u_int8_t checksum[16];
 char devname[32];
 int rv = 1;
 ;
 sr_meta_getdevname(sc, dev, devname, sizeof(devname));
 s = &smd[sd->sd_meta_type];
 if (sd->sd_meta_type != 0)
  if (s->smd_validate(sd, sm, fm)) {
   sr_error(sc, "invalid foreign metadata");
   goto done;
  }
 if (sm->_sdd_invariant.ssd_magic != 0x4d4152436372616dLLU) {
  sr_error(sc, "not valid softraid metadata");
  goto done;
 }
 sr_checksum(sc, sm, &checksum, sizeof(struct sr_meta_invariant));
 if (__builtin_bcmp((&checksum), (&sm->ssd_checksum), (sizeof(checksum)))) {
  sr_error(sc, "invalid metadata checksum");
  goto done;
 }
 if (sm->_sdd_invariant.ssd_version == 3) {
  if (sm->ssd_data_blkno == 0)
   sm->ssd_data_blkno = (16 + 64);
  sm->_sdd_invariant.ssd_secsize = (1 << 9);
 } else if (sm->_sdd_invariant.ssd_version == 4) {
  if (sm->ssd_data_blkno == 0)
   sm->ssd_data_blkno = (16 + (64 + (320 + 128)));
  sm->_sdd_invariant.ssd_secsize = (1 << 9);
 } else if (sm->_sdd_invariant.ssd_version == 5) {
  sm->_sdd_invariant.ssd_secsize = (1 << 9);
 } else if (sm->_sdd_invariant.ssd_version == 6) {
 } else {
  sr_error(sc, "cannot read metadata version %u on %s, "
      "expected version %u or earlier",
      sm->_sdd_invariant.ssd_version, devname, 6);
  goto done;
 }
 sm->_sdd_invariant.ssd_version = 6;
 snprintf(sm->_sdd_invariant.ssd_revision, sizeof(sm->_sdd_invariant.ssd_revision),
     "%03d", 6);
 ;
 rv = 0;
done:
 return (rv);
}
int
sr_meta_native_bootprobe(struct sr_softc *sc, dev_t devno,
    struct sr_boot_chunk_head *bch)
{
 struct vnode *vn;
 struct disklabel label;
 struct sr_metadata *md = ((void *)0);
 struct sr_discipline *fake_sd = ((void *)0);
 struct sr_boot_chunk *bc;
 char devname[32];
 dev_t chrdev, rawdev;
 int error, i;
 int rv = (0);
 ;
 chrdev = blktochr(devno);
 rawdev = (((dev_t)(((((((int32_t)(((u_int32_t)(chrdev) >> 8) & 0xff)))) & 0xff) << 8) | (((((((((int32_t)((devno) & 0xff) | (((devno) & 0xffff0000) >> 8)) / 16))) * 16) + ((2)))) & 0xff) | ((((((((((int32_t)((devno) & 0xff) | (((devno) & 0xffff0000) >> 8)) / 16))) * 16) + ((2)))) & 0xffff00) << 8))));
 if (cdevvp(rawdev, &vn)) {
  sr_error(sc, "sr_meta_native_bootprobe: cannot allocate vnode");
  goto done;
 }
 error = VOP_OPEN(vn, 0x0001, ((struct ucred *)-1), (__curcpu->ci_self)->ci_curproc);
 if (error) {
  ;
  vput(vn);
  goto done;
 }
 error = VOP_IOCTL(vn, ((unsigned long)0x40000000 | ((sizeof(struct disklabel) & 0x1fff) << 16) | ((('d')) << 8) | ((101))), (caddr_t)&label, 0x0001, ((struct ucred *)-1),
     (__curcpu->ci_self)->ci_curproc);
 if (error) {
  ;
  VOP_CLOSE(vn, 0x0001, ((struct ucred *)-1), (__curcpu->ci_self)->ci_curproc);
  vput(vn);
  goto done;
 }
 error = VOP_CLOSE(vn, 0x0001, ((struct ucred *)-1), (__curcpu->ci_self)->ci_curproc);
 if (error) {
  ;
  vput(vn);
  goto done;
 }
 vput(vn);
 md = malloc(64 * (1 << 9), 2, 0x0008 | 0x0002);
 if (md == ((void *)0)) {
  sr_error(sc, "not enough memory for metadata buffer");
  goto done;
 }
 fake_sd = malloc(sizeof(struct sr_discipline), 2,
     0x0008 | 0x0002);
 if (fake_sd == ((void *)0)) {
  sr_error(sc, "not enough memory for fake discipline");
  goto done;
 }
 fake_sd->sd_sc = sc;
 fake_sd->sd_meta_type = 0;
 for (i = 0; i < 16; i++) {
  if (label.d_partitions[i].p_fstype != 19)
   continue;
  rawdev = (((dev_t)(((((((int32_t)(((u_int32_t)(devno) >> 8) & 0xff)))) & 0xff) << 8) | (((((((((int32_t)((devno) & 0xff) | (((devno) & 0xffff0000) >> 8)) / 16))) * 16) + ((i)))) & 0xff) | ((((((((((int32_t)((devno) & 0xff) | (((devno) & 0xffff0000) >> 8)) / 16))) * 16) + ((i)))) & 0xffff00) << 8))));
  if (bdevvp(rawdev, &vn)) {
   sr_error(sc, "sr_meta_native_bootprobe: cannot "
       "allocate vnode for partition");
   goto done;
  }
  error = VOP_OPEN(vn, 0x0001, ((struct ucred *)-1), (__curcpu->ci_self)->ci_curproc);
  if (error) {
   ;
   vput(vn);
   continue;
  }
  if (sr_meta_native_read(fake_sd, rawdev, md, ((void *)0))) {
   sr_error(sc, "native bootprobe could not read native "
       "metadata");
   VOP_CLOSE(vn, 0x0001, ((struct ucred *)-1), (__curcpu->ci_self)->ci_curproc);
   vput(vn);
   continue;
  }
  if (md->_sdd_invariant.ssd_magic != 0x4d4152436372616dLLU) {
   VOP_CLOSE(vn, 0x0001, ((struct ucred *)-1), (__curcpu->ci_self)->ci_curproc);
   vput(vn);
   continue;
  }
  sr_meta_getdevname(sc, rawdev, devname, sizeof(devname));
  if (sr_meta_validate(fake_sd, rawdev, md, ((void *)0)) == 0) {
   bc = malloc(sizeof(struct sr_boot_chunk),
       2, 0x0001 | 0x0008);
   bc->sbc_metadata = malloc(sizeof(struct sr_metadata),
       2, 0x0001 | 0x0008);
   __builtin_memcpy((bc->sbc_metadata), (md), (sizeof(struct sr_metadata)));
   bc->sbc_mm = rawdev;
   do { (bc)->sbc_link.sle_next = (bch)->slh_first; (bch)->slh_first = (bc); } while (0);
   rv = (1);
  }
  VOP_CLOSE(vn, 0x0001, ((struct ucred *)-1), (__curcpu->ci_self)->ci_curproc);
  vput(vn);
 }
done:
 free(fake_sd, 2, sizeof(struct sr_discipline));
 free(md, 2, 64 * (1 << 9));
 return (rv);
}
int
sr_boot_assembly(struct sr_softc *sc)
{
 struct sr_boot_volume_head bvh;
 struct sr_boot_chunk_head bch, kdh;
 struct sr_boot_volume *bv, *bv1, *bv2;
 struct sr_boot_chunk *bc, *bcnext, *bc1, *bc2;
 struct sr_disk_head sdklist;
 struct sr_disk *sdk;
 struct disk *dk;
 struct bioc_createraid bcr;
 struct sr_meta_chunk *hm;
 struct sr_chunk_head *cl;
 struct sr_chunk *hotspare, *chunk, *last;
 u_int64_t *ondisk = ((void *)0);
 dev_t *devs = ((void *)0);
 void *data;
 char devname[32];
 int rv = 0, i;
 ;
 { ((&sdklist)->slh_first) = ((void *)0); };
 { ((&bvh)->slh_first) = ((void *)0); };
 { ((&bch)->slh_first) = ((void *)0); };
 { ((&kdh)->slh_first) = ((void *)0); };
 dk = ((&disklist)->tqh_first);
 while (dk != ((void *)0)) {
  for((sdk) = ((&sdklist)->slh_first); (sdk) != ((void *)0); (sdk) = ((sdk)->sdk_link.sle_next))
   if (sdk->sdk_devno == dk->dk_devno)
    break;
  if (sdk != ((void *)0) || dk->dk_devno == (dev_t)(-1)) {
   dk = ((dk)->dk_link.tqe_next);
   continue;
  }
  sdk = malloc(sizeof(struct sr_disk), 2,
      0x0002 | 0x0008);
  if (sdk == ((void *)0))
   goto unwind;
  sdk->sdk_devno = dk->dk_devno;
  do { (sdk)->sdk_link.sle_next = (&sdklist)->slh_first; (&sdklist)->slh_first = (sdk); } while (0);
  if (strncmp(dk->dk_name, "sd", 2) &&
      strncmp(dk->dk_name, "wd", 2)) {
   dk = ((dk)->dk_link.tqe_next);
   continue;
  }
  _rw_enter_write(&sc->sc_lock );
  bio_status_init(&sc->sc_status, &sc->sc_dev);
  sr_meta_native_bootprobe(sc, dk->dk_devno, &bch);
  _rw_exit_write(&sc->sc_lock );
  dk = ((&disklist)->tqh_first);
 }
 for (bc = ((&bch)->slh_first); bc != ((void *)0); bc = bcnext) {
  bcnext = ((bc)->sbc_link.sle_next);
  do { if ((&bch)->slh_first == (bc)) { do { ((&bch))->slh_first = ((&bch))->slh_first->sbc_link.sle_next; } while (0); } else { struct sr_boot_chunk *curelm = (&bch)->slh_first; while (curelm->sbc_link.sle_next != (bc)) curelm = curelm->sbc_link.sle_next; curelm->sbc_link.sle_next = curelm->sbc_link.sle_next->sbc_link.sle_next; } ((bc)->sbc_link.sle_next) = ((void *)-1); } while (0);
  bc->sbc_chunk_id = bc->sbc_metadata->_sdd_invariant.ssd_chunk_id;
  if (bc->sbc_metadata->_sdd_invariant.ssd_level == 0xfffffffe) {
   do { (bc)->sbc_link.sle_next = (&kdh)->slh_first; (&kdh)->slh_first = (bc); } while (0);
   continue;
  }
  for((bv) = ((&bvh)->slh_first); (bv) != ((void *)0); (bv) = ((bv)->sbv_link.sle_next)) {
   if (__builtin_bcmp((&bc->sbc_metadata->_sdd_invariant.ssd_uuid), (&bv->sbv_uuid), (sizeof(bc->sbc_metadata->_sdd_invariant.ssd_uuid))) == 0)
    break;
  }
  if (bv == ((void *)0)) {
   bv = malloc(sizeof(struct sr_boot_volume),
       2, 0x0002 | 0x0008);
   if (bv == ((void *)0)) {
    printf("%s: failed to allocate boot volume\n",
        ((sc)->sc_dev.dv_xname));
    goto unwind;
   }
   bv->sbv_level = bc->sbc_metadata->_sdd_invariant.ssd_level;
   bv->sbv_volid = bc->sbc_metadata->_sdd_invariant.ssd_volid;
   bv->sbv_chunk_no = bc->sbc_metadata->_sdd_invariant.ssd_chunk_no;
   bv->sbv_flags = bc->sbc_metadata->_sdd_invariant.ssd_vol_flags;
   __builtin_memcpy((&bv->sbv_uuid), (&bc->sbc_metadata->_sdd_invariant.ssd_uuid), (sizeof(bc->sbc_metadata->_sdd_invariant.ssd_uuid)));
   { ((&bv->sbv_chunks)->slh_first) = ((void *)0); };
   bv2 = ((void *)0);
   for((bv1) = ((&bvh)->slh_first); (bv1) != ((void *)0); (bv1) = ((bv1)->sbv_link.sle_next)) {
    if (bv1->sbv_volid > bv->sbv_volid)
     break;
    bv2 = bv1;
   }
   if (bv2 == ((void *)0)) {
    ;
    do { (bv)->sbv_link.sle_next = (&bvh)->slh_first; (&bvh)->slh_first = (bv); } while (0);
   } else {
    ;
    do { (bv)->sbv_link.sle_next = (bv2)->sbv_link.sle_next; (bv2)->sbv_link.sle_next = (bv); } while (0);
   }
  }
  bc2 = ((void *)0);
  for((bc1) = ((&bv->sbv_chunks)->slh_first); (bc1) != ((void *)0); (bc1) = ((bc1)->sbc_link.sle_next)) {
   if (bc1->sbc_chunk_id > bc->sbc_chunk_id)
    break;
   bc2 = bc1;
  }
  if (bc2 == ((void *)0)) {
   ;
   do { (bc)->sbc_link.sle_next = (&bv->sbv_chunks)->slh_first; (&bv->sbv_chunks)->slh_first = (bc); } while (0);
  } else {
   ;
   do { (bc)->sbc_link.sle_next = (bc2)->sbc_link.sle_next; (bc2)->sbc_link.sle_next = (bc); } while (0);
  }
  bv->sbv_chunks_found++;
 }
 devs = mallocarray(1024, sizeof(dev_t), 2,
     0x0002);
 if (devs == ((void *)0)) {
  printf("%s: failed to allocate device array\n", ((sc)->sc_dev.dv_xname));
  goto unwind;
 }
 ondisk = mallocarray(1024, sizeof(u_int64_t), 2,
     0x0002);
 if (ondisk == ((void *)0)) {
  printf("%s: failed to allocate ondisk array\n", ((sc)->sc_dev.dv_xname));
  goto unwind;
 }
 for((bv) = ((&bvh)->slh_first); (bv) != ((void *)0); (bv) = ((bv)->sbv_link.sle_next)) {
  if (bv->sbv_level != 0xffffffff ||
      bv->sbv_chunk_no != 1)
   continue;
  hotspare = malloc(sizeof(struct sr_chunk), 2,
      0x0002 | 0x0008);
  if (hotspare == ((void *)0)) {
   printf("%s: failed to allocate hotspare\n",
       ((sc)->sc_dev.dv_xname));
   goto unwind;
  }
  bc = ((&bv->sbv_chunks)->slh_first);
  sr_meta_getdevname(sc, bc->sbc_mm, devname, sizeof(devname));
  hotspare->src_dev_mm = bc->sbc_mm;
  strlcpy(hotspare->src_devname, devname,
      sizeof(hotspare->src_devname));
  hotspare->src_size = bc->sbc_metadata->_sdd_invariant.ssd_size;
  hm = &hotspare->src_meta;
  hm->_scm_invariant.scm_volid = 0xffffffff;
  hm->_scm_invariant.scm_chunk_id = 0;
  hm->_scm_invariant.scm_size = bc->sbc_metadata->_sdd_invariant.ssd_size;
  hm->_scm_invariant.scm_coerced_size = bc->sbc_metadata->_sdd_invariant.ssd_size;
  strlcpy(hm->_scm_invariant.scm_devname, devname,
      sizeof(hm->_scm_invariant.scm_devname));
  __builtin_memcpy((&hm->_scm_invariant.scm_uuid), (&bc->sbc_metadata->_sdd_invariant.ssd_uuid), (sizeof(struct sr_uuid)));
  sr_checksum(sc, hm, &hm->scm_checksum,
      sizeof(struct sr_meta_chunk_invariant));
  hm->scm_status = 0x04;
  _rw_enter_write(&sc->sc_hs_lock );
  cl = &sc->sc_hotspare_list;
  if ((((cl)->slh_first) == ((void *)0)))
   do { (hotspare)->src_link.sle_next = (cl)->slh_first; (cl)->slh_first = (hotspare); } while (0);
  else {
   for((chunk) = ((cl)->slh_first); (chunk) != ((void *)0); (chunk) = ((chunk)->src_link.sle_next))
    last = chunk;
   do { (hotspare)->src_link.sle_next = (last)->src_link.sle_next; (last)->src_link.sle_next = (hotspare); } while (0);
  }
  sc->sc_hotspare_no++;
  _rw_exit_write(&sc->sc_hs_lock );
 }
 for((bv) = ((&bvh)->slh_first); (bv) != ((void *)0); (bv) = ((bv)->sbv_link.sle_next)) {
  __builtin_bzero((&bcr), (sizeof(bcr)));
  data = ((void *)0);
  if (bv->sbv_level == 0xffffffff &&
      bv->sbv_chunk_no == 1)
   continue;
  if (__builtin_bcmp((&sr_bootuuid), (&bv->sbv_uuid), (sizeof(sr_bootuuid))) != 0)
   if (bv->sbv_flags & 0x04)
    continue;
  bcr.bc_key_disk = (dev_t)(-1);
  if (bv->sbv_level == 'C') {
   for((bc) = ((&kdh)->slh_first); (bc) != ((void *)0); (bc) = ((bc)->sbc_link.sle_next)) {
    if (__builtin_bcmp((&bc->sbc_metadata->_sdd_invariant.ssd_uuid), (&bv->sbv_uuid), (sizeof(bc->sbc_metadata->_sdd_invariant.ssd_uuid)))
        == 0)
     bcr.bc_key_disk = bc->sbc_mm;
   }
  }
  for (i = 0; i < 1024; i++) {
   devs[i] = (dev_t)(-1);
   ondisk[i] = 0;
  }
  for((bc) = ((&bv->sbv_chunks)->slh_first); (bc) != ((void *)0); (bc) = ((bc)->sbc_link.sle_next)) {
   if (devs[bc->sbc_chunk_id] != (dev_t)(-1)) {
    bv->sbv_chunks_found--;
    sr_meta_getdevname(sc, bc->sbc_mm, devname,
        sizeof(devname));
    printf("%s: found duplicate chunk %u for "
        "volume %u on device %s\n", ((sc)->sc_dev.dv_xname),
        bc->sbc_chunk_id, bv->sbv_volid, devname);
   }
   if (devs[bc->sbc_chunk_id] == (dev_t)(-1) ||
       bc->sbc_metadata->ssd_ondisk >
       ondisk[bc->sbc_chunk_id]) {
    devs[bc->sbc_chunk_id] = bc->sbc_mm;
    ondisk[bc->sbc_chunk_id] =
        bc->sbc_metadata->ssd_ondisk;
    ;
   }
  }
  if (bv->sbv_chunk_no != bv->sbv_chunks_found) {
   printf("%s: not all chunks were provided; "
       "attempting to bring volume %d online\n",
       ((sc)->sc_dev.dv_xname), bv->sbv_volid);
  }
  bcr.bc_level = bv->sbv_level;
  bcr.bc_dev_list_len = bv->sbv_chunk_no * sizeof(dev_t);
  bcr.bc_dev_list = devs;
  bcr.bc_flags = 0x02 |
      (bv->sbv_flags & 0x04);
  if (bv->sbv_level == 'C' &&
      __builtin_bcmp((&sr_bootuuid), (&bv->sbv_uuid), (sizeof(sr_bootuuid))) == 0)
   data = sr_bootkey;
  _rw_enter_write(&sc->sc_lock );
  bio_status_init(&sc->sc_status, &sc->sc_dev);
  sr_ioctl_createraid(sc, &bcr, 0, data);
  _rw_exit_write(&sc->sc_lock );
  rv++;
 }
unwind:
 for (bv1 = ((&bvh)->slh_first); bv1 != ((void *)0); bv1 = bv2) {
  bv2 = ((bv1)->sbv_link.sle_next);
  for (bc1 = ((&bv1->sbv_chunks)->slh_first); bc1 != ((void *)0);
      bc1 = bc2) {
   bc2 = ((bc1)->sbc_link.sle_next);
   free(bc1->sbc_metadata, 2, 0);
   free(bc1, 2, 0);
  }
  free(bv1, 2, 0);
 }
 for (bc1 = ((&kdh)->slh_first); bc1 != ((void *)0); bc1 = bc2) {
  bc2 = ((bc1)->sbc_link.sle_next);
  free(bc1->sbc_metadata, 2, 0);
  free(bc1, 2, 0);
 }
 for (bc1 = ((&bch)->slh_first); bc1 != ((void *)0); bc1 = bc2) {
  bc2 = ((bc1)->sbc_link.sle_next);
  free(bc1->sbc_metadata, 2, 0);
  free(bc1, 2, 0);
 }
 while (!(((&sdklist)->slh_first) == ((void *)0))) {
  sdk = ((&sdklist)->slh_first);
  do { (&sdklist)->slh_first = (&sdklist)->slh_first->sdk_link.sle_next; } while (0);
  free(sdk, 2, 0);
 }
 free(devs, 2, 1024 * sizeof(dev_t));
 free(ondisk, 2, 1024 * sizeof(u_int64_t));
 return (rv);
}
void
sr_map_root(void)
{
 struct sr_softc *sc = softraid0;
 struct sr_discipline *sd;
 struct sr_meta_opt_item *omi;
 struct sr_meta_boot *sbm;
 u_char duid[8];
 int i;
 ;
 if (sc == ((void *)0))
  return;
 __builtin_bzero((duid), (sizeof(duid)));
 if (__builtin_bcmp((rootduid), (duid), (sizeof(duid))) == 0) {
  ;
  return;
 }
 for((sd) = ((&sc->sc_dis_list)->tqh_first); (sd) != ((void *)0); (sd) = ((sd)->sd_link.tqe_next)) {
  for((omi) = ((&sd->sd_meta_opt)->slh_first); (omi) != ((void *)0); (omi) = ((omi)->omi_link.sle_next)) {
   if (omi->omi_som->som_type != 0x02)
    continue;
   sbm = (struct sr_meta_boot *)omi->omi_som;
   for (i = 0; i < 16; i++) {
    if (__builtin_bcmp((rootduid), (sbm->sbm_boot_duid[i]), (sizeof(rootduid))) == 0) {
     __builtin_memcpy((rootduid), (sbm->sbm_root_duid), (sizeof(rootduid)));
     ;
     return;
    }
   }
  }
 }
}
int
sr_meta_native_probe(struct sr_softc *sc, struct sr_chunk *ch_entry)
{
 struct disklabel label;
 char *devname;
 int error, part;
 u_int64_t size;
 ;
 devname = ch_entry->src_devname;
 part = (((int32_t)((ch_entry->src_dev_mm) & 0xff) | (((ch_entry->src_dev_mm) & 0xffff0000) >> 8)) % 16);
 error = VOP_IOCTL(ch_entry->src_vn, ((unsigned long)0x40000000 | ((sizeof(struct disklabel) & 0x1fff) << 16) | ((('d')) << 8) | ((101))), (caddr_t)&label, 0x0001,
     ((struct ucred *)-1), (__curcpu->ci_self)->ci_curproc);
 if (error) {
  ;
  goto unwind;
 }
 __builtin_memcpy((ch_entry->src_duid), (label.d_uid), (sizeof(ch_entry->src_duid)));
 if (label.d_partitions[part].p_fstype != 19) {
  ;
  goto unwind;
 }
 size = (((((u_int64_t)(&label.d_partitions[part])->p_sizeh << 32) + (&label.d_partitions[part])->p_size)) * ((&label)->d_secsize / (1 << 9)));
 if (size <= (16 + (64 + (320 + 128)))) {
  ;
  goto unwind;
 }
 size -= (16 + (64 + (320 + 128)));
 if (size > 0x7fffffffffffffffLL) {
  ;
  goto unwind;
 }
 ch_entry->src_size = size;
 ch_entry->src_secsize = label.d_secsize;
 ;
 return (0);
unwind:
 ;
 return (-1);
}
int
sr_meta_native_attach(struct sr_discipline *sd, int force)
{
 struct sr_softc *sc = sd->sd_sc;
 struct sr_chunk_head *cl = &sd->sd_vol.sv_chunk_list;
 struct sr_metadata *md = ((void *)0);
 struct sr_chunk *ch_entry, *ch_next;
 struct sr_uuid uuid;
 u_int64_t version = 0;
 int sr, not_sr, rv = 1, d, expected = -1, old_meta = 0;
 ;
 md = malloc(64 * (1 << 9), 2, 0x0008 | 0x0002);
 if (md == ((void *)0)) {
  sr_error(sc, "not enough memory for metadata buffer");
  goto bad;
 }
 __builtin_bzero((&uuid), (sizeof uuid));
 sr = not_sr = d = 0;
 for((ch_entry) = ((cl)->slh_first); (ch_entry) != ((void *)0); (ch_entry) = ((ch_entry)->src_link.sle_next)) {
  if (ch_entry->src_dev_mm == (dev_t)(-1))
   continue;
  if (sr_meta_native_read(sd, ch_entry->src_dev_mm, md, ((void *)0))) {
   sr_error(sc, "could not read native metadata");
   goto bad;
  }
  if (md->_sdd_invariant.ssd_magic == 0x4d4152436372616dLLU) {
   sr++;
   ch_entry->src_meta._scm_invariant.scm_chunk_id =
       md->_sdd_invariant.ssd_chunk_id;
   if (d == 0) {
    __builtin_memcpy((&uuid), (&md->_sdd_invariant.ssd_uuid), (sizeof uuid));
    expected = md->_sdd_invariant.ssd_chunk_no;
    version = md->ssd_ondisk;
    d++;
    continue;
   } else if (__builtin_bcmp((&md->_sdd_invariant.ssd_uuid), (&uuid), (sizeof uuid))) {
    sr_error(sc, "not part of the same volume");
    goto bad;
   }
   if (md->ssd_ondisk != version) {
    old_meta++;
    version = (((md->ssd_ondisk)>(version))?(md->ssd_ondisk):(version));
   }
  } else
   not_sr++;
 }
 if (sr && not_sr && !force) {
  sr_error(sc, "not all chunks are of the native metadata "
      "format");
  goto bad;
 }
 if (old_meta) {
  d = 0;
  for (ch_entry = ((cl)->slh_first); ch_entry != ((void *)0);
      ch_entry = ch_next, d++) {
   ch_next = ((ch_entry)->src_link.sle_next);
   if (ch_entry->src_dev_mm == (dev_t)(-1))
    panic("src_dev_mm == NODEV");
   if (sr_meta_native_read(sd, ch_entry->src_dev_mm, md,
       ((void *)0)))
    sr_warn(sc, "could not read native metadata");
   if (md->ssd_ondisk != version)
    sd->sd_vol.sv_chunks[d]->src_meta.scm_status =
        0x01;
  }
 }
 if (expected != sr && !force && expected != -1) {
  ;
 }
 rv = 0;
bad:
 free(md, 2, 64 * (1 << 9));
 return (rv);
}
int
sr_meta_native_read(struct sr_discipline *sd, dev_t dev,
    struct sr_metadata *md, void *fm)
{
 ;
 return (sr_meta_rw(sd, dev, md, 0x00008000));
}
int
sr_meta_native_write(struct sr_discipline *sd, dev_t dev,
    struct sr_metadata *md, void *fm)
{
 ;
 return (sr_meta_rw(sd, dev, md, 0x00000000));
}
void
sr_hotplug_register(struct sr_discipline *sd, void *func)
{
 struct sr_hotplug_list *mhe;
 ;
 for((mhe) = ((&sr_hotplug_callbacks)->slh_first); (mhe) != ((void *)0); (mhe) = ((mhe)->shl_link.sle_next))
  if (mhe->sh_hotplug == func)
   return;
 mhe = malloc(sizeof(struct sr_hotplug_list), 2,
     0x0001 | 0x0008);
 mhe->sh_hotplug = func;
 mhe->sh_sd = sd;
 do { (mhe)->shl_link.sle_next = (&sr_hotplug_callbacks)->slh_first; (&sr_hotplug_callbacks)->slh_first = (mhe); } while (0);
}
void
sr_hotplug_unregister(struct sr_discipline *sd, void *func)
{
 struct sr_hotplug_list *mhe;
 ;
 for((mhe) = ((&sr_hotplug_callbacks)->slh_first); (mhe) != ((void *)0); (mhe) = ((mhe)->shl_link.sle_next)) {
  if (mhe->sh_hotplug == func)
   break;
 }
 if (mhe != ((void *)0)) {
  do { if ((&sr_hotplug_callbacks)->slh_first == (mhe)) { do { ((&sr_hotplug_callbacks))->slh_first = ((&sr_hotplug_callbacks))->slh_first->shl_link.sle_next; } while (0); } else { struct sr_hotplug_list *curelm = (&sr_hotplug_callbacks)->slh_first; while (curelm->shl_link.sle_next != (mhe)) curelm = curelm->shl_link.sle_next; curelm->shl_link.sle_next = curelm->shl_link.sle_next->shl_link.sle_next; } ((mhe)->shl_link.sle_next) = ((void *)-1); } while (0);
  free(mhe, 2, 0);
 }
}
void
sr_disk_attach(struct disk *diskp, int action)
{
 struct sr_hotplug_list *mhe;
 for((mhe) = ((&sr_hotplug_callbacks)->slh_first); (mhe) != ((void *)0); (mhe) = ((mhe)->shl_link.sle_next))
  if (mhe->sh_sd->sd_ready)
   mhe->sh_hotplug(mhe->sh_sd, diskp, action);
}
int
sr_match(struct device *parent, void *match, void *aux)
{
 return (1);
}
void
sr_attach(struct device *parent, struct device *self, void *aux)
{
 struct sr_softc *sc = (void *)self;
 struct scsibus_attach_args saa;
 ;
 if (softraid0 == ((void *)0))
  softraid0 = sc;
 _rw_init_flags(&sc->sc_lock, "sr_lock", 0, ((void *)0));
 _rw_init_flags(&sc->sc_hs_lock, "sr_hs_lock", 0, ((void *)0));
 { ((&sr_hotplug_callbacks)->slh_first) = ((void *)0); };
 do { (&sc->sc_dis_list)->tqh_first = ((void *)0); (&sc->sc_dis_list)->tqh_last = &(&sc->sc_dis_list)->tqh_first; } while (0);
 { ((&sc->sc_hotspare_list)->slh_first) = ((void *)0); };
 if (bio_register(&sc->sc_dev, sr_bio_ioctl) != 0)
  printf("%s: controller registration failed", ((sc)->sc_dev.dv_xname));
 strlcpy(sc->sc_sensordev.xname, ((sc)->sc_dev.dv_xname),
     sizeof(sc->sc_sensordev.xname));
 sensordev_install(&sc->sc_sensordev);
 printf("\n");
 sc->sc_link.adapter_softc = sc;
 sc->sc_link.adapter = &sr_switch;
 sc->sc_link.adapter_target = 256;
 sc->sc_link.adapter_buswidth = 256;
 sc->sc_link.luns = 1;
 __builtin_bzero((&saa), (sizeof(saa)));
 saa.saa_sc_link = &sc->sc_link;
 sc->sc_scsibus = (struct scsibus_softc *)config_found_sm((&sc->sc_dev), (&saa), (scsiprint), ((void *)0));
 softraid_disk_attach = sr_disk_attach;
 sr_boot_assembly(sc);
 explicit_bzero(sr_bootkey, sizeof(sr_bootkey));
}
int
sr_detach(struct device *self, int flags)
{
 struct sr_softc *sc = (void *)self;
 int rv;
 ;
 softraid_disk_attach = ((void *)0);
 sr_shutdown(0);
 if (sc->sc_sensor_task != ((void *)0))
  sensor_task_unregister(sc->sc_sensor_task);
 sensordev_deinstall(&sc->sc_sensordev);
 if (sc->sc_scsibus != ((void *)0)) {
  rv = config_detach((struct device *)sc->sc_scsibus, flags);
  if (rv != 0)
   return (rv);
  sc->sc_scsibus = ((void *)0);
 }
 return (0);
}
void
sr_info(struct sr_softc *sc, const char *fmt, ...)
{
 va_list ap;
 rw_assert_wrlock(&sc->sc_lock);
 __builtin_va_start((ap), fmt);
 bio_status(&sc->sc_status, 0, 1, fmt, &ap);
 __builtin_va_end((ap));
}
void
sr_warn(struct sr_softc *sc, const char *fmt, ...)
{
 va_list ap;
 rw_assert_wrlock(&sc->sc_lock);
 __builtin_va_start((ap), fmt);
 bio_status(&sc->sc_status, 1, 2, fmt, &ap);
 __builtin_va_end((ap));
}
void
sr_error(struct sr_softc *sc, const char *fmt, ...)
{
 va_list ap;
 rw_assert_wrlock(&sc->sc_lock);
 __builtin_va_start((ap), fmt);
 bio_status(&sc->sc_status, 1, 3, fmt, &ap);
 __builtin_va_end((ap));
}
void
sr_minphys(struct buf *bp, struct scsi_link *sl)
{
 ;
 if (bp->b_bcount > (64 * 1024))
  bp->b_bcount = (64 * 1024);
 minphys(bp);
}
void
sr_copy_internal_data(struct scsi_xfer *xs, void *v, size_t size)
{
 size_t copy_cnt;
 ;
 if (xs->datalen) {
  copy_cnt = (((size)<(xs->datalen))?(size):(xs->datalen));
  __builtin_memcpy((xs->data), (v), (copy_cnt));
 }
}
int
sr_ccb_alloc(struct sr_discipline *sd)
{
 struct sr_ccb *ccb;
 int i;
 if (!sd)
  return (1);
 ;
 if (sd->sd_ccb)
  return (1);
 sd->sd_ccb = mallocarray(sd->sd_max_wu,
     sd->sd_max_ccb_per_wu * sizeof(struct sr_ccb),
     2, 0x0001 | 0x0008);
 do { (&sd->sd_ccb_freeq)->tqh_first = ((void *)0); (&sd->sd_ccb_freeq)->tqh_last = &(&sd->sd_ccb_freeq)->tqh_first; } while (0);
 for (i = 0; i < sd->sd_max_wu * sd->sd_max_ccb_per_wu; i++) {
  ccb = &sd->sd_ccb[i];
  ccb->ccb_dis = sd;
  sr_ccb_put(ccb);
 }
 ;
 return (0);
}
void
sr_ccb_free(struct sr_discipline *sd)
{
 struct sr_ccb *ccb;
 if (!sd)
  return;
 ;
 while ((ccb = ((&sd->sd_ccb_freeq)->tqh_first)) != ((void *)0))
  do { if (((ccb)->ccb_link.tqe_next) != ((void *)0)) (ccb)->ccb_link.tqe_next->ccb_link.tqe_prev = (ccb)->ccb_link.tqe_prev; else (&sd->sd_ccb_freeq)->tqh_last = (ccb)->ccb_link.tqe_prev; *(ccb)->ccb_link.tqe_prev = (ccb)->ccb_link.tqe_next; ((ccb)->ccb_link.tqe_prev) = ((void *)-1); ((ccb)->ccb_link.tqe_next) = ((void *)-1); } while (0);
 free(sd->sd_ccb, 2, 0);
}
struct sr_ccb *
sr_ccb_get(struct sr_discipline *sd)
{
 struct sr_ccb *ccb;
 int s;
 s = _splraise(5);
 ccb = ((&sd->sd_ccb_freeq)->tqh_first);
 if (ccb) {
  do { if (((ccb)->ccb_link.tqe_next) != ((void *)0)) (ccb)->ccb_link.tqe_next->ccb_link.tqe_prev = (ccb)->ccb_link.tqe_prev; else (&sd->sd_ccb_freeq)->tqh_last = (ccb)->ccb_link.tqe_prev; *(ccb)->ccb_link.tqe_prev = (ccb)->ccb_link.tqe_next; ((ccb)->ccb_link.tqe_prev) = ((void *)-1); ((ccb)->ccb_link.tqe_next) = ((void *)-1); } while (0);
  ccb->ccb_state = 1;
 }
 _splx(s);
 ;
 return (ccb);
}
void
sr_ccb_put(struct sr_ccb *ccb)
{
 struct sr_discipline *sd = ccb->ccb_dis;
 int s;
 ;
 s = _splraise(5);
 ccb->ccb_wu = ((void *)0);
 ccb->ccb_state = 0;
 ccb->ccb_target = -1;
 ccb->ccb_opaque = ((void *)0);
 do { (ccb)->ccb_link.tqe_next = ((void *)0); (ccb)->ccb_link.tqe_prev = (&sd->sd_ccb_freeq)->tqh_last; *(&sd->sd_ccb_freeq)->tqh_last = (ccb); (&sd->sd_ccb_freeq)->tqh_last = &(ccb)->ccb_link.tqe_next; } while (0);
 _splx(s);
}
struct sr_ccb *
sr_ccb_rw(struct sr_discipline *sd, int chunk, daddr_t blkno,
    long len, u_int8_t *data, int xsflags, int ccbflags)
{
 struct sr_chunk *sc = sd->sd_vol.sv_chunks[chunk];
 struct sr_ccb *ccb = ((void *)0);
 ccb = sr_ccb_get(sd);
 if (ccb == ((void *)0))
  goto out;
 ccb->ccb_flags = ccbflags;
 ccb->ccb_target = chunk;
 ccb->ccb_buf.b_flags = 0x00002000 | 0x00000040;
 if (((xsflags) & (0x00800)))
  ccb->ccb_buf.b_flags |= 0x00008000;
 else
  ccb->ccb_buf.b_flags |= 0x00000000;
 ccb->ccb_buf.b_blkno = blkno + sd->sd_meta->ssd_data_blkno;
 ccb->ccb_buf.b_bcount = len;
 ccb->ccb_buf.b_bufsize = len;
 ccb->ccb_buf.b_resid = len;
 ccb->ccb_buf.b_data = data;
 ccb->ccb_buf.b_error = 0;
 ccb->ccb_buf.b_iodone = sd->sd_scsi_intr;
 ccb->ccb_buf.b_proc = (__curcpu->ci_self)->ci_curproc;
 ccb->ccb_buf.b_dev = sc->src_dev_mm;
 ccb->ccb_buf.b_vp = sc->src_vn;
 ccb->ccb_buf.b_bq = ((void *)0);
 if (!((ccb->ccb_buf.b_flags) & (0x00008000)))
  ccb->ccb_buf.b_vp->v_numoutput++;
 do { ((&ccb->ccb_buf.b_dep)->lh_first) = ((void *)0); } while (0);
 ;
out:
 return ccb;
}
void
sr_ccb_done(struct sr_ccb *ccb)
{
 struct sr_workunit *wu = ccb->ccb_wu;
 struct sr_discipline *sd = wu->swu_dis;
 struct sr_softc *sc = sd->sd_sc;
 ;
 do { if (splassert_ctl > 0) { splassert_check(5, __func__); } } while (0);
 if (ccb->ccb_target == -1)
  panic("%s: invalid target on wu: %p", ((sc)->sc_dev.dv_xname), wu);
 if (ccb->ccb_buf.b_flags & 0x00000400) {
  ;
  if (((sd->sd_capabilities) & (0x00000010)))
   sd->sd_set_chunk_state(sd, ccb->ccb_target,
       0x01);
  else
   printf("%s: %s: i/o error %d @ %s block %lld\n",
       ((sc)->sc_dev.dv_xname), sd->sd_meta->ssd_devname,
       ccb->ccb_buf.b_error, sd->sd_name,
       (long long)ccb->ccb_buf.b_blkno);
  ccb->ccb_state = 3;
  wu->swu_ios_failed++;
 } else {
  ccb->ccb_state = 2;
  wu->swu_ios_succeeded++;
 }
 wu->swu_ios_complete++;
}
int
sr_wu_alloc(struct sr_discipline *sd, int wu_size)
{
 struct sr_workunit *wu;
 int i, no_wu;
 ;
 no_wu = sd->sd_max_wu;
 sd->sd_wu_pending = no_wu;
 do { (void)(((void *)0)); (void)(0); __mtx_init((&sd->sd_wu_mtx), ((((5)) > 0 && ((5)) < 12) ? 12 : ((5)))); } while (0);
 do { (&sd->sd_wu)->tqh_first = ((void *)0); (&sd->sd_wu)->tqh_last = &(&sd->sd_wu)->tqh_first; } while (0);
 do { (&sd->sd_wu_freeq)->tqh_first = ((void *)0); (&sd->sd_wu_freeq)->tqh_last = &(&sd->sd_wu_freeq)->tqh_first; } while (0);
 do { (&sd->sd_wu_pendq)->tqh_first = ((void *)0); (&sd->sd_wu_pendq)->tqh_last = &(&sd->sd_wu_pendq)->tqh_first; } while (0);
 do { (&sd->sd_wu_defq)->tqh_first = ((void *)0); (&sd->sd_wu_defq)->tqh_last = &(&sd->sd_wu_defq)->tqh_first; } while (0);
 for (i = 0; i < no_wu; i++) {
  wu = malloc(wu_size, 2, 0x0001 | 0x0008);
  do { (wu)->swu_next.tqe_next = ((void *)0); (wu)->swu_next.tqe_prev = (&sd->sd_wu)->tqh_last; *(&sd->sd_wu)->tqh_last = (wu); (&sd->sd_wu)->tqh_last = &(wu)->swu_next.tqe_next; } while (0);
  do { (&wu->swu_ccb)->tqh_first = ((void *)0); (&wu->swu_ccb)->tqh_last = &(&wu->swu_ccb)->tqh_first; } while (0);
  wu->swu_dis = sd;
  task_set(&wu->swu_task, sr_wu_done_callback, wu);
  sr_wu_put(sd, wu);
 }
 return (0);
}
void
sr_wu_free(struct sr_discipline *sd)
{
 struct sr_workunit *wu;
 ;
 while ((wu = ((&sd->sd_wu_freeq)->tqh_first)) != ((void *)0))
  do { if (((wu)->swu_link.tqe_next) != ((void *)0)) (wu)->swu_link.tqe_next->swu_link.tqe_prev = (wu)->swu_link.tqe_prev; else (&sd->sd_wu_freeq)->tqh_last = (wu)->swu_link.tqe_prev; *(wu)->swu_link.tqe_prev = (wu)->swu_link.tqe_next; ((wu)->swu_link.tqe_prev) = ((void *)-1); ((wu)->swu_link.tqe_next) = ((void *)-1); } while (0);
 while ((wu = ((&sd->sd_wu_pendq)->tqh_first)) != ((void *)0))
  do { if (((wu)->swu_link.tqe_next) != ((void *)0)) (wu)->swu_link.tqe_next->swu_link.tqe_prev = (wu)->swu_link.tqe_prev; else (&sd->sd_wu_pendq)->tqh_last = (wu)->swu_link.tqe_prev; *(wu)->swu_link.tqe_prev = (wu)->swu_link.tqe_next; ((wu)->swu_link.tqe_prev) = ((void *)-1); ((wu)->swu_link.tqe_next) = ((void *)-1); } while (0);
 while ((wu = ((&sd->sd_wu_defq)->tqh_first)) != ((void *)0))
  do { if (((wu)->swu_link.tqe_next) != ((void *)0)) (wu)->swu_link.tqe_next->swu_link.tqe_prev = (wu)->swu_link.tqe_prev; else (&sd->sd_wu_defq)->tqh_last = (wu)->swu_link.tqe_prev; *(wu)->swu_link.tqe_prev = (wu)->swu_link.tqe_next; ((wu)->swu_link.tqe_prev) = ((void *)-1); ((wu)->swu_link.tqe_next) = ((void *)-1); } while (0);
 while ((wu = ((&sd->sd_wu)->tqh_first)) != ((void *)0)) {
  do { if (((wu)->swu_next.tqe_next) != ((void *)0)) (wu)->swu_next.tqe_next->swu_next.tqe_prev = (wu)->swu_next.tqe_prev; else (&sd->sd_wu)->tqh_last = (wu)->swu_next.tqe_prev; *(wu)->swu_next.tqe_prev = (wu)->swu_next.tqe_next; ((wu)->swu_next.tqe_prev) = ((void *)-1); ((wu)->swu_next.tqe_next) = ((void *)-1); } while (0);
  free(wu, 2, 0);
 }
}
void *
sr_wu_get(void *xsd)
{
 struct sr_discipline *sd = (struct sr_discipline *)xsd;
 struct sr_workunit *wu;
 __mtx_enter(&sd->sd_wu_mtx );
 wu = ((&sd->sd_wu_freeq)->tqh_first);
 if (wu) {
  do { if (((wu)->swu_link.tqe_next) != ((void *)0)) (wu)->swu_link.tqe_next->swu_link.tqe_prev = (wu)->swu_link.tqe_prev; else (&sd->sd_wu_freeq)->tqh_last = (wu)->swu_link.tqe_prev; *(wu)->swu_link.tqe_prev = (wu)->swu_link.tqe_next; ((wu)->swu_link.tqe_prev) = ((void *)-1); ((wu)->swu_link.tqe_next) = ((void *)-1); } while (0);
  sd->sd_wu_pending++;
 }
 __mtx_leave(&sd->sd_wu_mtx );
 ;
 return (wu);
}
void
sr_wu_put(void *xsd, void *xwu)
{
 struct sr_discipline *sd = (struct sr_discipline *)xsd;
 struct sr_workunit *wu = (struct sr_workunit *)xwu;
 ;
 sr_wu_release_ccbs(wu);
 sr_wu_init(sd, wu);
 __mtx_enter(&sd->sd_wu_mtx );
 do { (wu)->swu_link.tqe_next = ((void *)0); (wu)->swu_link.tqe_prev = (&sd->sd_wu_freeq)->tqh_last; *(&sd->sd_wu_freeq)->tqh_last = (wu); (&sd->sd_wu_freeq)->tqh_last = &(wu)->swu_link.tqe_next; } while (0);
 sd->sd_wu_pending--;
 __mtx_leave(&sd->sd_wu_mtx );
}
void
sr_wu_init(struct sr_discipline *sd, struct sr_workunit *wu)
{
 int s;
 s = _splraise(5);
 if (wu->swu_cb_active == 1)
  panic("%s: sr_wu_init got active wu", ((sd->sd_sc)->sc_dev.dv_xname));
 _splx(s);
 wu->swu_xs = ((void *)0);
 wu->swu_state = 0;
 wu->swu_flags = 0;
 wu->swu_blk_start = 0;
 wu->swu_blk_end = 0;
 wu->swu_collider = ((void *)0);
}
void
sr_wu_enqueue_ccb(struct sr_workunit *wu, struct sr_ccb *ccb)
{
 struct sr_discipline *sd = wu->swu_dis;
 int s;
 s = _splraise(5);
 if (wu->swu_cb_active == 1)
  panic("%s: sr_wu_enqueue_ccb got active wu",
      ((sd->sd_sc)->sc_dev.dv_xname));
 ccb->ccb_wu = wu;
 wu->swu_io_count++;
 do { (ccb)->ccb_link.tqe_next = ((void *)0); (ccb)->ccb_link.tqe_prev = (&wu->swu_ccb)->tqh_last; *(&wu->swu_ccb)->tqh_last = (ccb); (&wu->swu_ccb)->tqh_last = &(ccb)->ccb_link.tqe_next; } while (0);
 _splx(s);
}
void
sr_wu_release_ccbs(struct sr_workunit *wu)
{
 struct sr_ccb *ccb;
 while ((ccb = ((&wu->swu_ccb)->tqh_first)) != ((void *)0)) {
  do { if (((ccb)->ccb_link.tqe_next) != ((void *)0)) (ccb)->ccb_link.tqe_next->ccb_link.tqe_prev = (ccb)->ccb_link.tqe_prev; else (&wu->swu_ccb)->tqh_last = (ccb)->ccb_link.tqe_prev; *(ccb)->ccb_link.tqe_prev = (ccb)->ccb_link.tqe_next; ((ccb)->ccb_link.tqe_prev) = ((void *)-1); ((ccb)->ccb_link.tqe_next) = ((void *)-1); } while (0);
  sr_ccb_put(ccb);
 }
 wu->swu_io_count = 0;
 wu->swu_ios_complete = 0;
 wu->swu_ios_failed = 0;
 wu->swu_ios_succeeded = 0;
}
void
sr_wu_done(struct sr_workunit *wu)
{
 struct sr_discipline *sd = wu->swu_dis;
 ;
 if (wu->swu_ios_complete < wu->swu_io_count)
  return;
 task_add(sd->sd_taskq, &wu->swu_task);
}
void
sr_wu_done_callback(void *xwu)
{
 struct sr_workunit *wu = xwu;
 struct sr_discipline *sd = wu->swu_dis;
 struct scsi_xfer *xs = wu->swu_xs;
 struct sr_workunit *wup;
 int s;
 ((xs != ((void *)0) || (wu->swu_flags & ((1<<5)|(1<<0)))) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../dev/softraid.c", 2260, "xs != NULL || (wu->swu_flags & (SR_WUF_DISCIPLINE|SR_WUF_REBUILD))"));
 s = _splraise(5);
 if (xs != ((void *)0)) {
  if (wu->swu_ios_failed)
   xs->error = 2;
  else
   xs->error = 0;
 }
 if (sd->sd_scsi_wu_done) {
  if (sd->sd_scsi_wu_done(wu) == 7)
   goto done;
 }
 for((wup) = ((&sd->sd_wu_pendq)->tqh_first); (wup) != ((void *)0); (wup) = ((wup)->swu_link.tqe_next))
  if (wup == wu)
   break;
 if (wup == ((void *)0))
  panic("%s: wu %p not on pending queue",
      ((sd->sd_sc)->sc_dev.dv_xname), wu);
 do { if (((wu)->swu_link.tqe_next) != ((void *)0)) (wu)->swu_link.tqe_next->swu_link.tqe_prev = (wu)->swu_link.tqe_prev; else (&sd->sd_wu_pendq)->tqh_last = (wu)->swu_link.tqe_prev; *(wu)->swu_link.tqe_prev = (wu)->swu_link.tqe_next; ((wu)->swu_link.tqe_prev) = ((void *)-1); ((wu)->swu_link.tqe_next) = ((void *)-1); } while (0);
 if (wu->swu_collider) {
  if (wu->swu_ios_failed)
   sr_raid_recreate_wu(wu->swu_collider);
  sr_raid_startwu(wu->swu_collider);
 }
 if (wu->swu_flags & (1<<0))
  wu->swu_flags |= (1<<1);
 if (wu->swu_flags & (1<<4))
  wakeup(wu);
 if (sd->sd_scsi_done)
  sd->sd_scsi_done(wu);
 else if (wu->swu_flags & (1<<5))
  sr_scsi_wu_put(sd, wu);
 else if (!(wu->swu_flags & (1<<0)))
  sr_scsi_done(sd, xs);
done:
 _splx(s);
}
struct sr_workunit *
sr_scsi_wu_get(struct sr_discipline *sd, int flags)
{
 return scsi_io_get(&sd->sd_iopool, flags);
}
void
sr_scsi_wu_put(struct sr_discipline *sd, struct sr_workunit *wu)
{
 scsi_io_put(&sd->sd_iopool, wu);
 if (sd->sd_sync && sd->sd_wu_pending == 0)
  wakeup(sd);
}
void
sr_scsi_done(struct sr_discipline *sd, struct scsi_xfer *xs)
{
 ;
 if (xs->error == 0)
  xs->resid = 0;
 scsi_done(xs);
 if (sd->sd_sync && sd->sd_wu_pending == 0)
  wakeup(sd);
}
void
sr_scsi_cmd(struct scsi_xfer *xs)
{
 struct scsi_link *link = xs->sc_link;
 struct sr_softc *sc = link->adapter_softc;
 struct sr_workunit *wu = xs->io;
 struct sr_discipline *sd;
 ;
 sd = sc->sc_targets[link->target];
 if (sd == ((void *)0))
  panic("%s: sr_scsi_cmd NULL discipline", ((sc)->sc_dev.dv_xname));
 if (sd->sd_deleted) {
  printf("%s: %s device is being deleted, failing io\n",
      ((sc)->sc_dev.dv_xname), sd->sd_meta->ssd_devname);
  goto stuffup;
 }
 sr_wu_release_ccbs(wu);
 sr_wu_init(sd, wu);
 wu->swu_state = 1;
 wu->swu_xs = xs;
 switch (xs->cmd->opcode) {
 case 0x08:
 case 0x28:
 case 0x88:
 case 0x0a:
 case 0x2a:
 case 0x8a:
  ;
  if (sd->sd_scsi_rw(wu))
   goto stuffup;
  break;
 case 0x35:
  ;
  if (sd->sd_scsi_sync(wu))
   goto stuffup;
  goto complete;
 case 0x00:
  ;
  if (sd->sd_scsi_tur(wu))
   goto stuffup;
  goto complete;
 case 0x1b:
  ;
  if (sd->sd_scsi_start_stop(wu))
   goto stuffup;
  goto complete;
 case 0x12:
  ;
  if (sd->sd_scsi_inquiry(wu))
   goto stuffup;
  goto complete;
 case 0x25:
 case 0x9e:
  ;
  if (sd->sd_scsi_read_cap(wu))
   goto stuffup;
  goto complete;
 case 0x03:
  ;
  if (sd->sd_scsi_req_sense(wu))
   goto stuffup;
  goto complete;
 default:
  ;
  goto stuffup;
 }
 return;
stuffup:
 if (sd->sd_scsi_sense.error_code) {
  xs->error = 1;
  __builtin_memcpy((&xs->sense), (&sd->sd_scsi_sense), (sizeof(xs->sense)));
  __builtin_bzero((&sd->sd_scsi_sense), (sizeof(sd->sd_scsi_sense)));
 } else {
  xs->error = 2;
 }
complete:
 sr_scsi_done(sd, xs);
}
int
sr_scsi_probe(struct scsi_link *link)
{
 struct sr_softc *sc = link->adapter_softc;
 struct sr_discipline *sd;
 ((link->target < 256 && link->lun == 0) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../dev/softraid.c", 2450, "link->target < SR_MAX_LD && link->lun == 0"));
 sd = sc->sc_targets[link->target];
 if (sd == ((void *)0))
  return (19);
 link->pool = &sd->sd_iopool;
 if (sd->sd_openings)
  link->openings = sd->sd_openings(sd);
 else
  link->openings = sd->sd_max_wu;
 return (0);
}
int
sr_scsi_ioctl(struct scsi_link *link, u_long cmd, caddr_t addr, int flag)
{
 struct sr_softc *sc = link->adapter_softc;
 struct sr_discipline *sd;
 sd = sc->sc_targets[link->target];
 if (sd == ((void *)0))
  return (19);
 ;
 if ((((cmd) >> 8) & 0xff) == 'B')
  return (sr_bio_handler(sc, sd, cmd, (struct bio *)addr));
 switch (cmd) {
 case ((unsigned long)0x40000000 | ((sizeof(struct dk_cache) & 0x1fff) << 16) | ((('d')) << 8) | ((117))):
 case ((unsigned long)0x80000000 | ((sizeof(struct dk_cache) & 0x1fff) << 16) | ((('d')) << 8) | ((118))):
  return (45);
 default:
  return (25);
 }
}
int
sr_bio_ioctl(struct device *dev, u_long cmd, caddr_t addr)
{
 struct sr_softc *sc = (struct sr_softc *) dev;
 ;
 return sr_bio_handler(sc, ((void *)0), cmd, (struct bio *)addr);
}
int
sr_bio_handler(struct sr_softc *sc, struct sr_discipline *sd, u_long cmd,
    struct bio *bio)
{
 int rv = 0;
 ;
 _rw_enter_write(&sc->sc_lock );
 bio_status_init(&sc->sc_status, &sc->sc_dev);
 switch (cmd) {
 case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct bioc_inq) & 0x1fff) << 16) | ((('B')) << 8) | ((32))):
  ;
  rv = sr_ioctl_inq(sc, (struct bioc_inq *)bio);
  break;
 case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct bioc_vol) & 0x1fff) << 16) | ((('B')) << 8) | ((34))):
  ;
  rv = sr_ioctl_vol(sc, (struct bioc_vol *)bio);
  break;
 case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct bioc_disk) & 0x1fff) << 16) | ((('B')) << 8) | ((33))):
  ;
  rv = sr_ioctl_disk(sc, (struct bioc_disk *)bio);
  break;
 case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct bioc_alarm) & 0x1fff) << 16) | ((('B')) << 8) | ((35))):
  ;
  break;
 case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct bioc_blink) & 0x1fff) << 16) | ((('B')) << 8) | ((36))):
  ;
  break;
 case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct bioc_setstate) & 0x1fff) << 16) | ((('B')) << 8) | ((37))):
  ;
  rv = sr_ioctl_setstate(sc, (struct bioc_setstate *)bio);
  break;
 case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct bioc_createraid) & 0x1fff) << 16) | ((('B')) << 8) | ((38))):
  ;
  rv = sr_ioctl_createraid(sc, (struct bioc_createraid *)bio,
      1, ((void *)0));
  break;
 case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct bioc_deleteraid) & 0x1fff) << 16) | ((('B')) << 8) | ((39))):
  ;
  rv = sr_ioctl_deleteraid(sc, sd, (struct bioc_deleteraid *)bio);
  break;
 case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct bioc_discipline) & 0x1fff) << 16) | ((('B')) << 8) | ((40))):
  ;
  rv = sr_ioctl_discipline(sc, sd, (struct bioc_discipline *)bio);
  break;
 case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct bioc_installboot) & 0x1fff) << 16) | ((('B')) << 8) | ((41))):
  ;
  rv = sr_ioctl_installboot(sc, sd,
      (struct bioc_installboot *)bio);
  break;
 default:
  ;
  rv = 25;
 }
 sc->sc_status.bs_status = (rv ? 2 : 1);
 if (sc->sc_status.bs_msg_count > 0)
  rv = 0;
 __builtin_memcpy((&bio->bio_status), (&sc->sc_status), (sizeof(struct bio_status)));
 _rw_exit_write(&sc->sc_lock );
 return (rv);
}
int
sr_ioctl_inq(struct sr_softc *sc, struct bioc_inq *bi)
{
 struct sr_discipline *sd;
 int vol = 0, disk = 0;
 for((sd) = ((&sc->sc_dis_list)->tqh_first); (sd) != ((void *)0); (sd) = ((sd)->sd_link.tqe_next)) {
  vol++;
  disk += sd->sd_meta->_sdd_invariant.ssd_chunk_no;
 }
 strlcpy(bi->bi_dev, sc->sc_dev.dv_xname, sizeof(bi->bi_dev));
 bi->bi_novol = vol + sc->sc_hotspare_no;
 bi->bi_nodisk = disk + sc->sc_hotspare_no;
 return (0);
}
int
sr_ioctl_vol(struct sr_softc *sc, struct bioc_vol *bv)
{
 int vol = -1, rv = 22;
 struct sr_discipline *sd;
 struct sr_chunk *hotspare;
 for((sd) = ((&sc->sc_dis_list)->tqh_first); (sd) != ((void *)0); (sd) = ((sd)->sd_link.tqe_next)) {
  vol++;
  if (vol != bv->bv_volid)
   continue;
  bv->bv_status = sd->sd_vol_status;
  bv->bv_size = sd->sd_meta->_sdd_invariant.ssd_size << 9;
  bv->bv_level = sd->sd_meta->_sdd_invariant.ssd_level;
  bv->bv_nodisk = sd->sd_meta->_sdd_invariant.ssd_chunk_no;
  if (sd->sd_meta->_sdd_invariant.ssd_level == 'C' &&
      sd->sd_dis_specific.mdd_crypto.key_disk != ((void *)0))
   bv->bv_nodisk++;
  if (bv->bv_status == 0x05)
   bv->bv_percent = sr_rebuild_percent(sd);
  strlcpy(bv->bv_dev, sd->sd_meta->ssd_devname,
      sizeof(bv->bv_dev));
  strlcpy(bv->bv_vendor, sd->sd_meta->_sdd_invariant.ssd_vendor,
      sizeof(bv->bv_vendor));
  rv = 0;
  goto done;
 }
 for((hotspare) = ((&sc->sc_hotspare_list)->slh_first); (hotspare) != ((void *)0); (hotspare) = ((hotspare)->src_link.sle_next)) {
  vol++;
  if (vol != bv->bv_volid)
   continue;
  bv->bv_status = 0x00;
  bv->bv_size = hotspare->src_meta._scm_invariant.scm_size << 9;
  bv->bv_level = -1;
  bv->bv_nodisk = 1;
  strlcpy(bv->bv_dev, hotspare->src_meta._scm_invariant.scm_devname,
      sizeof(bv->bv_dev));
  strlcpy(bv->bv_vendor, hotspare->src_meta._scm_invariant.scm_devname,
      sizeof(bv->bv_vendor));
  rv = 0;
  goto done;
 }
done:
 return (rv);
}
int
sr_ioctl_disk(struct sr_softc *sc, struct bioc_disk *bd)
{
 struct sr_discipline *sd;
 struct sr_chunk *src, *hotspare;
 int vol = -1, rv = 22;
 if (bd->bd_diskid < 0)
  goto done;
 for((sd) = ((&sc->sc_dis_list)->tqh_first); (sd) != ((void *)0); (sd) = ((sd)->sd_link.tqe_next)) {
  vol++;
  if (vol != bd->bd_volid)
   continue;
  if (bd->bd_diskid < sd->sd_meta->_sdd_invariant.ssd_chunk_no)
   src = sd->sd_vol.sv_chunks[bd->bd_diskid];
  else if (bd->bd_diskid == sd->sd_meta->_sdd_invariant.ssd_chunk_no &&
      sd->sd_meta->_sdd_invariant.ssd_level == 'C' &&
      sd->sd_dis_specific.mdd_crypto.key_disk != ((void *)0))
   src = sd->sd_dis_specific.mdd_crypto.key_disk;
  else
   break;
  bd->bd_status = src->src_meta.scm_status;
  bd->bd_size = src->src_meta._scm_invariant.scm_size << 9;
  bd->bd_channel = vol;
  bd->bd_target = bd->bd_diskid;
  strlcpy(bd->bd_vendor, src->src_meta._scm_invariant.scm_devname,
      sizeof(bd->bd_vendor));
  rv = 0;
  goto done;
 }
 for((hotspare) = ((&sc->sc_hotspare_list)->slh_first); (hotspare) != ((void *)0); (hotspare) = ((hotspare)->src_link.sle_next)) {
  vol++;
  if (vol != bd->bd_volid)
   continue;
  if (bd->bd_diskid != 0)
   break;
  bd->bd_status = hotspare->src_meta.scm_status;
  bd->bd_size = hotspare->src_meta._scm_invariant.scm_size << 9;
  bd->bd_channel = vol;
  bd->bd_target = bd->bd_diskid;
  strlcpy(bd->bd_vendor, hotspare->src_meta._scm_invariant.scm_devname,
      sizeof(bd->bd_vendor));
  rv = 0;
  goto done;
 }
done:
 return (rv);
}
int
sr_ioctl_setstate(struct sr_softc *sc, struct bioc_setstate *bs)
{
 int rv = 22;
 int vol = -1, found, c;
 struct sr_discipline *sd;
 struct sr_chunk *ch_entry;
 struct sr_chunk_head *cl;
 if (bs->bs_other_id_type == 0x00)
  goto done;
 if (bs->bs_status == 0x02) {
  rv = sr_hotspare(sc, (dev_t)bs->bs_other_id);
  goto done;
 }
 for((sd) = ((&sc->sc_dis_list)->tqh_first); (sd) != ((void *)0); (sd) = ((sd)->sd_link.tqe_next)) {
  vol++;
  if (vol == bs->bs_volid)
   break;
 }
 if (sd == ((void *)0))
  goto done;
 switch (bs->bs_status) {
 case 0x01:
  found = c = 0;
  cl = &sd->sd_vol.sv_chunk_list;
  for((ch_entry) = ((cl)->slh_first); (ch_entry) != ((void *)0); (ch_entry) = ((ch_entry)->src_link.sle_next)) {
   if (ch_entry->src_dev_mm == bs->bs_other_id) {
    found = 1;
    break;
   }
   c++;
  }
  if (found == 0) {
   sr_error(sc, "chunk not part of array");
   goto done;
  }
  sd->sd_set_chunk_state(sd, c, 0x01);
  if (sr_meta_save(sd, 0x1)) {
   sr_error(sc, "could not save metadata for %s",
       sd->sd_meta->ssd_devname);
   goto done;
  }
  rv = 0;
  break;
 case 0x06:
  break;
 case 0x03:
  rv = sr_rebuild_init(sd, (dev_t)bs->bs_other_id, 0);
  break;
 default:
  sr_error(sc, "unsupported state request %d", bs->bs_status);
 }
done:
 return (rv);
}
int
sr_chunk_in_use(struct sr_softc *sc, dev_t dev)
{
 struct sr_discipline *sd;
 struct sr_chunk *chunk;
 int i;
 ;
 if (dev == (dev_t)(-1))
  return 0xff;
 for((sd) = ((&sc->sc_dis_list)->tqh_first); (sd) != ((void *)0); (sd) = ((sd)->sd_link.tqe_next)) {
  for (i = 0; i < sd->sd_meta->_sdd_invariant.ssd_chunk_no; i++) {
   chunk = sd->sd_vol.sv_chunks[i];
   if (chunk->src_dev_mm == dev)
    return chunk->src_meta.scm_status;
  }
 }
 for((chunk) = ((&sc->sc_hotspare_list)->slh_first); (chunk) != ((void *)0); (chunk) = ((chunk)->src_link.sle_next))
  if (chunk->src_dev_mm == dev)
   return chunk->src_meta.scm_status;
 return 0xff;
}
int
sr_hotspare(struct sr_softc *sc, dev_t dev)
{
 struct sr_discipline *sd = ((void *)0);
 struct sr_metadata *sm = ((void *)0);
 struct sr_meta_chunk *hm;
 struct sr_chunk_head *cl;
 struct sr_chunk *chunk, *last, *hotspare = ((void *)0);
 struct sr_uuid uuid;
 struct disklabel label;
 struct vnode *vn;
 u_int64_t size;
 char devname[32];
 int rv = 22;
 int c, part, open = 0;
 sr_meta_getdevname(sc, dev, devname, sizeof(devname));
 c = sr_chunk_in_use(sc, dev);
 if (c != 0xff && c != 0x01) {
  if (c == 0x04)
   sr_error(sc, "%s is already a hotspare", devname);
  else
   sr_error(sc, "%s is already in use", devname);
  goto done;
 }
 if (bdevvp(dev, &vn)) {
  sr_error(sc, "sr_hotspare: cannot allocate vnode");
  goto done;
 }
 if (VOP_OPEN(vn, 0x0001 | 0x0002, ((struct ucred *)-1), (__curcpu->ci_self)->ci_curproc)) {
  ;
  vput(vn);
  goto fail;
 }
 open = 1;
 part = (((int32_t)((dev) & 0xff) | (((dev) & 0xffff0000) >> 8)) % 16);
 if (VOP_IOCTL(vn, ((unsigned long)0x40000000 | ((sizeof(struct disklabel) & 0x1fff) << 16) | ((('d')) << 8) | ((101))), (caddr_t)&label, 0x0001,
     ((struct ucred *)-1), (__curcpu->ci_self)->ci_curproc)) {
  ;
  VOP_CLOSE(vn, 0x0001 | 0x0002, ((struct ucred *)-1), (__curcpu->ci_self)->ci_curproc);
  vput(vn);
  goto fail;
 }
 if (label.d_partitions[part].p_fstype != 19) {
  sr_error(sc, "%s partition not of type RAID (%d)",
      devname, label.d_partitions[part].p_fstype);
  goto fail;
 }
 size = (((((u_int64_t)(&label.d_partitions[part])->p_sizeh << 32) + (&label.d_partitions[part])->p_size)) * ((&label)->d_secsize / (1 << 9)));
 if (size <= (16 + (64 + (320 + 128)))) {
  ;
  goto fail;
 }
 size -= (16 + (64 + (320 + 128)));
 if (size > 0x7fffffffffffffffLL) {
  ;
  goto fail;
 }
 sr_uuid_generate(&uuid);
 hotspare = malloc(sizeof(struct sr_chunk), 2, 0x0001 | 0x0008);
 hotspare->src_dev_mm = dev;
 hotspare->src_vn = vn;
 strlcpy(hotspare->src_devname, devname, sizeof(hm->_scm_invariant.scm_devname));
 hotspare->src_size = size;
 hm = &hotspare->src_meta;
 hm->_scm_invariant.scm_volid = 0xffffffff;
 hm->_scm_invariant.scm_chunk_id = 0;
 hm->_scm_invariant.scm_size = size;
 hm->_scm_invariant.scm_coerced_size = size;
 strlcpy(hm->_scm_invariant.scm_devname, devname, sizeof(hm->_scm_invariant.scm_devname));
 __builtin_memcpy((&hm->_scm_invariant.scm_uuid), (&uuid), (sizeof(struct sr_uuid)));
 sr_checksum(sc, hm, &hm->scm_checksum,
     sizeof(struct sr_meta_chunk_invariant));
 hm->scm_status = 0x04;
 sm = malloc(sizeof(struct sr_metadata), 2, 0x0001 | 0x0008);
 sm->_sdd_invariant.ssd_magic = 0x4d4152436372616dLLU;
 sm->_sdd_invariant.ssd_version = 6;
 sm->ssd_ondisk = 0;
 sm->_sdd_invariant.ssd_vol_flags = 0;
 __builtin_memcpy((&sm->_sdd_invariant.ssd_uuid), (&uuid), (sizeof(struct sr_uuid)));
 sm->_sdd_invariant.ssd_chunk_no = 1;
 sm->_sdd_invariant.ssd_volid = 0xffffffff;
 sm->_sdd_invariant.ssd_level = 0xffffffff;
 sm->_sdd_invariant.ssd_size = size;
 sm->_sdd_invariant.ssd_secsize = label.d_secsize;
 strlcpy(sm->_sdd_invariant.ssd_vendor, "OPENBSD", sizeof(sm->_sdd_invariant.ssd_vendor));
 snprintf(sm->_sdd_invariant.ssd_product, sizeof(sm->_sdd_invariant.ssd_product),
     "SR %s", "HOTSPARE");
 snprintf(sm->_sdd_invariant.ssd_revision, sizeof(sm->_sdd_invariant.ssd_revision),
     "%03d", 6);
 sd = malloc(sizeof(struct sr_discipline), 2, 0x0001 | 0x0008);
 sd->sd_sc = sc;
 sd->sd_meta = sm;
 sd->sd_meta_type = 0;
 sd->sd_vol_status = 0x00;
 strlcpy(sd->sd_name, "HOTSPARE", sizeof(sd->sd_name));
 { ((&sd->sd_meta_opt)->slh_first) = ((void *)0); };
 sd->sd_vol.sv_chunks = malloc(sizeof(struct sr_chunk *), 2,
     0x0001 | 0x0008);
 sd->sd_vol.sv_chunks[0] = hotspare;
 { ((&sd->sd_vol.sv_chunk_list)->slh_first) = ((void *)0); };
 do { (hotspare)->src_link.sle_next = (&sd->sd_vol.sv_chunk_list)->slh_first; (&sd->sd_vol.sv_chunk_list)->slh_first = (hotspare); } while (0);
 if (sr_meta_save(sd, 0x1)) {
  sr_error(sc, "could not save metadata to %s", devname);
  goto fail;
 }
 _rw_enter_write(&sc->sc_hs_lock );
 cl = &sc->sc_hotspare_list;
 if ((((cl)->slh_first) == ((void *)0)))
  do { (hotspare)->src_link.sle_next = (cl)->slh_first; (cl)->slh_first = (hotspare); } while (0);
 else {
  for((chunk) = ((cl)->slh_first); (chunk) != ((void *)0); (chunk) = ((chunk)->src_link.sle_next))
   last = chunk;
  do { (hotspare)->src_link.sle_next = (last)->src_link.sle_next; (last)->src_link.sle_next = (hotspare); } while (0);
 }
 sc->sc_hotspare_no++;
 _rw_exit_write(&sc->sc_hs_lock );
 rv = 0;
 goto done;
fail:
 free(hotspare, 2, 0);
done:
 if (sd)
  free(sd->sd_vol.sv_chunks, 2, 0);
 free(sd, 2, 0);
 free(sm, 2, 0);
 if (open) {
  VOP_CLOSE(vn, 0x0001 | 0x0002, ((struct ucred *)-1), (__curcpu->ci_self)->ci_curproc);
  vput(vn);
 }
 return (rv);
}
void
sr_hotspare_rebuild_callback(void *xsd)
{
 struct sr_discipline *sd = xsd;
 sr_hotspare_rebuild(sd);
}
void
sr_hotspare_rebuild(struct sr_discipline *sd)
{
 struct sr_softc *sc = sd->sd_sc;
 struct sr_chunk_head *cl;
 struct sr_chunk *hotspare, *chunk = ((void *)0);
 struct sr_workunit *wu;
 struct sr_ccb *ccb;
 int i, s, cid, busy;
 for (cid = 0; cid < sd->sd_meta->_sdd_invariant.ssd_chunk_no; cid++) {
  if (sd->sd_vol.sv_chunks[cid]->src_meta.scm_status ==
      0x01) {
   chunk = sd->sd_vol.sv_chunks[cid];
   break;
  }
 }
 if (chunk == ((void *)0)) {
  printf("%s: no offline chunk found on %s!\n",
      ((sc)->sc_dev.dv_xname), sd->sd_meta->ssd_devname);
  return;
 }
 _rw_enter_write(&sc->sc_hs_lock );
 cl = &sc->sc_hotspare_list;
 for((hotspare) = ((cl)->slh_first); (hotspare) != ((void *)0); (hotspare) = ((hotspare)->src_link.sle_next))
  if (hotspare->src_size >= chunk->src_size &&
      hotspare->src_secsize <= sd->sd_meta->_sdd_invariant.ssd_secsize)
   break;
 if (hotspare != ((void *)0)) {
  printf("%s: %s volume degraded, will attempt to "
      "rebuild on hotspare %s\n", ((sc)->sc_dev.dv_xname),
      sd->sd_meta->ssd_devname, hotspare->src_devname);
  i = 0;
  do {
   busy = 0;
   s = _splraise(5);
   for((wu) = ((&sd->sd_wu_pendq)->tqh_first); (wu) != ((void *)0); (wu) = ((wu)->swu_link.tqe_next)) {
    for((ccb) = ((&wu->swu_ccb)->tqh_first); (ccb) != ((void *)0); (ccb) = ((ccb)->ccb_link.tqe_next)) {
     if (ccb->ccb_target == cid)
      busy = 1;
    }
   }
   for((wu) = ((&sd->sd_wu_defq)->tqh_first); (wu) != ((void *)0); (wu) = ((wu)->swu_link.tqe_next)) {
    for((ccb) = ((&wu->swu_ccb)->tqh_first); (ccb) != ((void *)0); (ccb) = ((ccb)->ccb_link.tqe_next)) {
     if (ccb->ccb_target == cid)
      busy = 1;
    }
   }
   _splx(s);
   if (busy) {
    tsleep(sd, 16, "sr_hotspare", hz);
    i++;
   }
  } while (busy && i < 120);
  ;
  if (busy) {
   printf("%s: pending I/O failed to complete on "
       "failed chunk %s, hotspare rebuild aborted...\n",
       ((sc)->sc_dev.dv_xname), chunk->src_devname);
   goto done;
  }
  s = _splraise(5);
  _rw_enter_write(&sc->sc_lock );
  bio_status_init(&sc->sc_status, &sc->sc_dev);
  if (sr_rebuild_init(sd, hotspare->src_dev_mm, 1) == 0) {
   sc->sc_hotspare_no--;
   do { if ((cl)->slh_first == (hotspare)) { do { ((cl))->slh_first = ((cl))->slh_first->src_link.sle_next; } while (0); } else { struct sr_chunk *curelm = (cl)->slh_first; while (curelm->src_link.sle_next != (hotspare)) curelm = curelm->src_link.sle_next; curelm->src_link.sle_next = curelm->src_link.sle_next->src_link.sle_next; } ((hotspare)->src_link.sle_next) = ((void *)-1); } while (0);
   free(hotspare, 2, 0);
  }
  _rw_exit_write(&sc->sc_lock );
  _splx(s);
 }
done:
 _rw_exit_write(&sc->sc_hs_lock );
}
int
sr_rebuild_init(struct sr_discipline *sd, dev_t dev, int hotspare)
{
 struct sr_softc *sc = sd->sd_sc;
 struct sr_chunk *chunk = ((void *)0);
 struct sr_meta_chunk *meta;
 struct disklabel label;
 struct vnode *vn;
 u_int64_t size;
 int64_t csize;
 char devname[32];
 int rv = 22, open = 0;
 int cid, i, part, status;
 if (!(sd->sd_capabilities & 0x00000004)) {
  sr_error(sc, "discipline does not support rebuild");
  goto done;
 }
 if (sd->sd_vol_status == 0x05) {
  sr_error(sc, "rebuild already in progress");
  goto done;
 }
 if (sd->sd_vol_status != 0x02) {
  sr_error(sc, "volume not degraded");
  goto done;
 }
 for (cid = 0; cid < sd->sd_meta->_sdd_invariant.ssd_chunk_no; cid++) {
  if (sd->sd_vol.sv_chunks[cid]->src_meta.scm_status ==
      0x01) {
   chunk = sd->sd_vol.sv_chunks[cid];
   break;
  }
 }
 if (chunk == ((void *)0)) {
  sr_error(sc, "no offline chunks available to rebuild");
  goto done;
 }
 csize = 0;
 for (i = 0; i < sd->sd_meta->_sdd_invariant.ssd_chunk_no; i++) {
  if (sd->sd_vol.sv_chunks[i]->src_meta.scm_status ==
      0x00) {
   meta = &sd->sd_vol.sv_chunks[i]->src_meta;
   csize = meta->_scm_invariant.scm_coerced_size;
   break;
  }
 }
 if (csize == 0) {
  sr_error(sc, "no online chunks available for rebuild");
  goto done;
 }
 sr_meta_getdevname(sc, dev, devname, sizeof(devname));
 if (bdevvp(dev, &vn)) {
  printf("%s: sr_rebuild_init: can't allocate vnode\n",
      ((sc)->sc_dev.dv_xname));
  goto done;
 }
 if (VOP_OPEN(vn, 0x0001 | 0x0002, ((struct ucred *)-1), (__curcpu->ci_self)->ci_curproc)) {
  ;
  vput(vn);
  goto done;
 }
 open = 1;
 part = (((int32_t)((dev) & 0xff) | (((dev) & 0xffff0000) >> 8)) % 16);
 if (VOP_IOCTL(vn, ((unsigned long)0x40000000 | ((sizeof(struct disklabel) & 0x1fff) << 16) | ((('d')) << 8) | ((101))), (caddr_t)&label, 0x0001,
     ((struct ucred *)-1), (__curcpu->ci_self)->ci_curproc)) {
  ;
  goto done;
 }
 if (label.d_partitions[part].p_fstype != 19) {
  sr_error(sc, "%s partition not of type RAID (%d)",
      devname, label.d_partitions[part].p_fstype);
  goto done;
 }
 size = (((((u_int64_t)(&label.d_partitions[part])->p_sizeh << 32) + (&label.d_partitions[part])->p_size)) * ((&label)->d_secsize / (1 << 9)));
 if (size <= sd->sd_meta->ssd_data_blkno) {
  sr_error(sc, "%s: %s partition too small", ((sc)->sc_dev.dv_xname),
      devname);
  goto done;
 }
 size -= sd->sd_meta->ssd_data_blkno;
 if (size > 0x7fffffffffffffffLL) {
  sr_error(sc, "%s: %s partition too large", ((sc)->sc_dev.dv_xname),
      devname);
  goto done;
 }
 if (size < csize) {
  sr_error(sc, "%s partition too small, at least %lld bytes "
      "required", devname, (long long)(csize << 9));
  goto done;
 } else if (size > csize)
  sr_warn(sc, "%s partition too large, wasting %lld bytes",
      devname, (long long)((size - csize) << 9));
 if (label.d_secsize > sd->sd_meta->_sdd_invariant.ssd_secsize) {
  sr_error(sc, "%s sector size too large, <= %u bytes "
      "required", devname, sd->sd_meta->_sdd_invariant.ssd_secsize);
  goto done;
 }
 status = sr_chunk_in_use(sc, dev);
 if (status != 0xff && status != 0x01 &&
     !(hotspare && status == 0x04)) {
  sr_error(sc, "%s is already in use", devname);
  goto done;
 }
 sd->sd_meta->ssd_rebuild = 0;
 open = 0;
 __builtin_memcpy((chunk->src_duid), (label.d_uid), (sizeof(chunk->src_duid)));
 chunk->src_dev_mm = dev;
 chunk->src_vn = vn;
 meta = &chunk->src_meta;
 meta->_scm_invariant.scm_volid = sd->sd_meta->_sdd_invariant.ssd_volid;
 meta->_scm_invariant.scm_chunk_id = cid;
 strlcpy(meta->_scm_invariant.scm_devname, devname,
     sizeof(meta->_scm_invariant.scm_devname));
 meta->_scm_invariant.scm_size = size;
 meta->_scm_invariant.scm_coerced_size = csize;
 __builtin_memcpy((&meta->_scm_invariant.scm_uuid), (&sd->sd_meta->_sdd_invariant.ssd_uuid), (sizeof(meta->_scm_invariant.scm_uuid)));
 sr_checksum(sc, meta, &meta->scm_checksum,
     sizeof(struct sr_meta_chunk_invariant));
 sd->sd_set_chunk_state(sd, cid, 0x03);
 if (sr_meta_save(sd, 0x1)) {
  sr_error(sc, "could not save metadata to %s", devname);
  open = 1;
  goto done;
 }
 sr_warn(sc, "rebuild of %s started on %s",
     sd->sd_meta->ssd_devname, devname);
 sd->sd_reb_abort = 0;
 kthread_create_deferred(sr_rebuild_start, sd);
 rv = 0;
done:
 if (open) {
  VOP_CLOSE(vn, 0x0001 | 0x0002, ((struct ucred *)-1), (__curcpu->ci_self)->ci_curproc);
  vput(vn);
 }
 return (rv);
}
int
sr_rebuild_percent(struct sr_discipline *sd)
{
 daddr_t rb, sz;
 sz = sd->sd_meta->_sdd_invariant.ssd_size;
 rb = sd->sd_meta->ssd_rebuild;
 if (rb > 0)
  return (100 - ((sz * 100 - rb * 100) / sz) - 1);
 return (0);
}
void
sr_roam_chunks(struct sr_discipline *sd)
{
 struct sr_softc *sc = sd->sd_sc;
 struct sr_chunk *chunk;
 struct sr_meta_chunk *meta;
 int roamed = 0;
 for((chunk) = ((&sd->sd_vol.sv_chunk_list)->slh_first); (chunk) != ((void *)0); (chunk) = ((chunk)->src_link.sle_next)) {
  meta = &chunk->src_meta;
  if (strncmp(meta->_scm_invariant.scm_devname, chunk->src_devname,
      sizeof(meta->_scm_invariant.scm_devname))) {
   printf("%s: roaming device %s -> %s\n", ((sc)->sc_dev.dv_xname),
       meta->_scm_invariant.scm_devname, chunk->src_devname);
   strlcpy(meta->_scm_invariant.scm_devname, chunk->src_devname,
       sizeof(meta->_scm_invariant.scm_devname));
   roamed++;
  }
 }
 if (roamed)
  sr_meta_save(sd, 0x1);
}
int
sr_ioctl_createraid(struct sr_softc *sc, struct bioc_createraid *bc,
    int user, void *data)
{
 struct sr_meta_opt_item *omi;
 struct sr_chunk_head *cl;
 struct sr_discipline *sd = ((void *)0);
 struct sr_chunk *ch_entry;
 struct scsi_link *link;
 struct device *dev;
 char *uuid, devname[32];
 dev_t *dt = ((void *)0);
 int i, no_chunk, rv = 22, target, vol;
 int no_meta;
 ;
 if (bc->bc_dev_list_len > 1024)
  goto unwind;
 dt = malloc(bc->bc_dev_list_len, 2, 0x0001 | 0x0008);
 if (user) {
  if (copyin(bc->bc_dev_list, dt, bc->bc_dev_list_len) != 0)
   goto unwind;
 } else
  __builtin_memcpy((dt), (bc->bc_dev_list), (bc->bc_dev_list_len));
 sd = malloc(sizeof(struct sr_discipline), 2, 0x0001 | 0x0008);
 sd->sd_sc = sc;
 { ((&sd->sd_meta_opt)->slh_first) = ((void *)0); };
 sd->sd_taskq = taskq_create("srdis", 1, 5, 0);
 if (sd->sd_taskq == ((void *)0)) {
  sr_error(sc, "could not create discipline taskq");
  goto unwind;
 }
 if (sr_discipline_init(sd, bc->bc_level)) {
  sr_error(sc, "could not initialize discipline");
  goto unwind;
 }
 no_chunk = bc->bc_dev_list_len / sizeof(dev_t);
 cl = &sd->sd_vol.sv_chunk_list;
 { ((cl)->slh_first) = ((void *)0); };
 for (i = 0; i < no_chunk; i++) {
  if (sr_chunk_in_use(sc, dt[i]) != 0xff) {
   sr_meta_getdevname(sc, dt[i], devname, sizeof(devname));
   sr_error(sc, "chunk %s already in use", devname);
   goto unwind;
  }
 }
 sd->sd_meta_type = sr_meta_probe(sd, dt, no_chunk);
 if (sd->sd_meta_type == -1) {
  sr_error(sc, "invalid metadata format");
  goto unwind;
 }
 if (sr_meta_attach(sd, no_chunk, bc->bc_flags & 0x01))
  goto unwind;
 if (bc->bc_flags & 0x01) {
  if (sr_meta_read(sd))
   if (sr_already_assembled(sd)) {
    uuid = sr_uuid_format(
        &sd->sd_meta->_sdd_invariant.ssd_uuid);
    sr_error(sc, "disk %s is currently in use; "
        "cannot force create", uuid);
    free(uuid, 2, 0);
    goto unwind;
   }
  if (sr_meta_clear(sd)) {
   sr_error(sc, "failed to clear metadata");
   goto unwind;
  }
 }
 no_meta = sr_meta_read(sd);
 if (no_meta == -1) {
  sr_error(sc, "one of the chunks has corrupt metadata; "
      "aborting assembly");
  goto unwind;
 } else if (no_meta == 0) {
  sr_meta_init(sd, bc->bc_level, no_chunk);
  sd->sd_vol_status = 0x00;
  sd->sd_meta_flags = bc->bc_flags & 0x04;
  if (sd->sd_create) {
   if ((i = sd->sd_create(sd, bc, no_chunk,
       sd->sd_vol.sv_chunk_minsz))) {
    rv = i;
    goto unwind;
   }
  }
  sr_meta_init_complete(sd);
  ;
  if ((sd->sd_capabilities & 0x00000008) == 0 &&
      sd->sd_vol.sv_chunk_minsz != sd->sd_vol.sv_chunk_maxsz)
   sr_warn(sc, "chunk sizes are not equal; up to %llu "
       "blocks wasted per chunk",
       sd->sd_vol.sv_chunk_maxsz -
       sd->sd_vol.sv_chunk_minsz);
 } else {
  if (sd->sd_meta->_sdd_invariant.ssd_chunk_no != no_chunk) {
   sr_error(sc, "volume chunk count does not match metadata "
       "chunk count");
   goto unwind;
  }
  if (sd->sd_meta->_sdd_invariant.ssd_level != bc->bc_level) {
   sr_error(sc, "volume level does not match metadata "
       "level");
   goto unwind;
  }
  if (sr_already_assembled(sd)) {
   uuid = sr_uuid_format(&sd->sd_meta->_sdd_invariant.ssd_uuid);
   sr_error(sc, "disk %s already assembled", uuid);
   free(uuid, 2, 0);
   goto unwind;
  }
  if (user == 0 && sd->sd_meta_flags & 0x04) {
   ;
   goto unwind;
  }
  if (no_meta != no_chunk)
   sr_warn(sc, "trying to bring up %s degraded",
       sd->sd_meta->ssd_devname);
  if (sd->sd_meta->ssd_meta_flags & 0x1)
   sr_warn(sc, "%s was not shutdown properly",
       sd->sd_meta->ssd_devname);
  for((omi) = ((&sd->sd_meta_opt)->slh_first); (omi) != ((void *)0); (omi) = ((omi)->omi_link.sle_next))
   if (sd->sd_meta_opt_handler == ((void *)0) ||
       sd->sd_meta_opt_handler(sd, omi->omi_som) != 0)
    sr_meta_opt_handler(sd, omi->omi_som);
  if (sd->sd_assemble) {
   if ((i = sd->sd_assemble(sd, bc, no_chunk, data))) {
    rv = i;
    goto unwind;
   }
  }
  ;
 }
 do { (sd)->sd_link.tqe_next = ((void *)0); (sd)->sd_link.tqe_prev = (&sc->sc_dis_list)->tqh_last; *(&sc->sc_dis_list)->tqh_last = (sd); (&sc->sc_dis_list)->tqh_last = &(sd)->sd_link.tqe_next; } while (0);
 if ((rv = sd->sd_alloc_resources(sd)))
  goto unwind;
 if ((sd->sd_capabilities & 0x00000002) &&
     (bc->bc_flags & 0x04) !=
     (sd->sd_meta->_sdd_invariant.ssd_vol_flags & 0x04)) {
  sd->sd_meta->_sdd_invariant.ssd_vol_flags &= ~0x04;
  sd->sd_meta->_sdd_invariant.ssd_vol_flags |=
      bc->bc_flags & 0x04;
 }
 if (sd->sd_capabilities & 0x00000001) {
  sd->sd_set_vol_state(sd);
  if (sd->sd_vol_status == 0x01) {
   sr_error(sc, "%s is offline, will not be brought "
       "online", sd->sd_meta->ssd_devname);
   goto unwind;
  }
  scsi_iopool_init(&sd->sd_iopool, sd, sr_wu_get, sr_wu_put);
  rv = 6;
  for (target = 1; target < 256; target++)
   if (sc->sc_targets[target] == ((void *)0))
    break;
  if (target == 256) {
   sr_error(sc, "no free target for %s",
       sd->sd_meta->ssd_devname);
   goto unwind;
  }
  __builtin_bzero((&sd->sd_scsi_sense), (sizeof(sd->sd_scsi_sense)));
  sd->sd_target = target;
  sc->sc_targets[target] = sd;
  if (scsi_probe_lun(sc->sc_scsibus, target, 0) != 0) {
   sr_error(sc, "scsi_probe_lun failed");
   sc->sc_targets[target] = ((void *)0);
   sd->sd_target = 0;
   goto unwind;
  }
  link = scsi_get_link(sc->sc_scsibus, target, 0);
  if (link == ((void *)0))
   goto unwind;
  dev = link->device_softc;
  ;
  for (i = 0, vol = -1; i <= sd->sd_target; i++)
   if (sc->sc_targets[i])
    vol++;
  rv = 0;
  if (sd->sd_meta->ssd_devname[0] != '\0' &&
      strncmp(sd->sd_meta->ssd_devname, dev->dv_xname,
      sizeof(dev->dv_xname)))
   sr_warn(sc, "volume %s is roaming, it used to be %s, "
       "updating metadata", dev->dv_xname,
       sd->sd_meta->ssd_devname);
  sd->sd_meta->_sdd_invariant.ssd_volid = vol;
  strlcpy(sd->sd_meta->ssd_devname, dev->dv_xname,
      sizeof(sd->sd_meta->ssd_devname));
  sr_info(sc, "%s volume attached as %s",
      sd->sd_name, sd->sd_meta->ssd_devname);
  sr_roam_chunks(sd);
  if (sr_sensors_create(sd))
   sr_warn(sc, "unable to create sensor for %s",
       dev->dv_xname);
 } else {
  ch_entry = ((cl)->slh_first);
  strlcpy(sd->sd_meta->ssd_devname, ch_entry->src_devname,
      sizeof(sd->sd_meta->ssd_devname));
  if (sd->sd_start_discipline(sd))
   goto unwind;
 }
 rv = sr_meta_save(sd, 0x1);
 if (sd->sd_vol_status == 0x05)
  kthread_create_deferred(sr_rebuild_start, sd);
 sd->sd_ready = 1;
 free(dt, 2, bc->bc_dev_list_len);
 return (rv);
unwind:
 free(dt, 2, bc->bc_dev_list_len);
 sr_discipline_shutdown(sd, 0, 0);
 if (rv == 35)
  rv = 0;
 return (rv);
}
int
sr_ioctl_deleteraid(struct sr_softc *sc, struct sr_discipline *sd,
    struct bioc_deleteraid *bd)
{
 int rv = 1;
 ;
 if (sd == ((void *)0)) {
  for((sd) = ((&sc->sc_dis_list)->tqh_first); (sd) != ((void *)0); (sd) = ((sd)->sd_link.tqe_next)) {
   if (!strncmp(sd->sd_meta->ssd_devname, bd->bd_dev,
       sizeof(sd->sd_meta->ssd_devname)))
    break;
  }
  if (sd == ((void *)0)) {
   sr_error(sc, "volume %s not found", bd->bd_dev);
   goto bad;
  }
 }
 sd->sd_deleted = 1;
 sd->sd_meta->_sdd_invariant.ssd_vol_flags = 0x04;
 sr_discipline_shutdown(sd, 1, 0);
 rv = 0;
bad:
 return (rv);
}
int
sr_ioctl_discipline(struct sr_softc *sc, struct sr_discipline *sd,
    struct bioc_discipline *bd)
{
 int rv = 1;
 ;
 if (sd == ((void *)0)) {
  for((sd) = ((&sc->sc_dis_list)->tqh_first); (sd) != ((void *)0); (sd) = ((sd)->sd_link.tqe_next)) {
   if (!strncmp(sd->sd_meta->ssd_devname, bd->bd_dev,
       sizeof(sd->sd_meta->ssd_devname)))
    break;
  }
  if (sd == ((void *)0)) {
   sr_error(sc, "volume %s not found", bd->bd_dev);
   goto bad;
  }
 }
 if (sd->sd_ioctl_handler)
  rv = sd->sd_ioctl_handler(sd, bd);
bad:
 return (rv);
}
int
sr_ioctl_installboot(struct sr_softc *sc, struct sr_discipline *sd,
    struct bioc_installboot *bb)
{
 void *bootblk = ((void *)0), *bootldr = ((void *)0);
 struct sr_chunk *chunk;
 struct sr_meta_opt_item *omi;
 struct sr_meta_boot *sbm;
 struct disk *dk;
 u_int32_t bbs, bls, secsize;
 u_char duid[8];
 int rv = 22;
 int i;
 ;
 if (sd == ((void *)0)) {
  for((sd) = ((&sc->sc_dis_list)->tqh_first); (sd) != ((void *)0); (sd) = ((sd)->sd_link.tqe_next)) {
   if (!strncmp(sd->sd_meta->ssd_devname, bb->bb_dev,
       sizeof(sd->sd_meta->ssd_devname)))
    break;
  }
  if (sd == ((void *)0)) {
   sr_error(sc, "volume %s not found", bb->bb_dev);
   goto done;
  }
 }
 __builtin_bzero((duid), (sizeof(duid)));
 for((dk) = ((&disklist)->tqh_first); (dk) != ((void *)0); (dk) = ((dk)->dk_link.tqe_next))
  if (!strncmp(dk->dk_name, bb->bb_dev, sizeof(bb->bb_dev)))
   break;
 if (dk == ((void *)0) || dk->dk_label == ((void *)0) ||
     (dk->dk_flags & 0x0008) == 0 ||
     __builtin_bcmp((dk->dk_label->d_uid), (&duid), (sizeof(duid))) == 0) {
  sr_error(sc, "failed to get DUID for softraid volume");
  goto done;
 }
 __builtin_memcpy((duid), (dk->dk_label->d_uid), (sizeof(duid)));
 if (sd->sd_meta->ssd_data_blkno < ((16 + 64) + (320 + 128))) {
  sr_error(sc, "insufficient boot storage");
  goto done;
 }
 if (bb->bb_bootblk_size > 128 * (1 << 9))
  goto done;
 if (bb->bb_bootldr_size > 320 * (1 << 9))
  goto done;
 secsize = sd->sd_meta->_sdd_invariant.ssd_secsize;
 bbs = (((bb->bb_bootblk_size) + ((secsize) - 1)) / (secsize)) * secsize;
 bootblk = malloc(bbs, 2, 0x0001 | 0x0008);
 if (copyin(bb->bb_bootblk, bootblk, bb->bb_bootblk_size) != 0)
  goto done;
 bls = (((bb->bb_bootldr_size) + ((secsize) - 1)) / (secsize)) * secsize;
 bootldr = malloc(bls, 2, 0x0001 | 0x0008);
 if (copyin(bb->bb_bootldr, bootldr, bb->bb_bootldr_size) != 0)
  goto done;
 for((omi) = ((&sd->sd_meta_opt)->slh_first); (omi) != ((void *)0); (omi) = ((omi)->omi_link.sle_next))
  if (omi->omi_som->som_type == 0x02)
   break;
 if (omi == ((void *)0)) {
  omi = malloc(sizeof(struct sr_meta_opt_item), 2,
      0x0001 | 0x0008);
  omi->omi_som = malloc(sizeof(struct sr_meta_crypto), 2,
      0x0001 | 0x0008);
  omi->omi_som->som_type = 0x02;
  omi->omi_som->som_length = sizeof(struct sr_meta_boot);
  do { (omi)->omi_link.sle_next = (&sd->sd_meta_opt)->slh_first; (&sd->sd_meta_opt)->slh_first = (omi); } while (0);
  sd->sd_meta->_sdd_invariant.ssd_opt_no++;
 }
 sbm = (struct sr_meta_boot *)omi->omi_som;
 __builtin_memcpy((sbm->sbm_root_duid), (duid), (sizeof(sbm->sbm_root_duid)));
 __builtin_bzero((&sbm->sbm_boot_duid), (sizeof(sbm->sbm_boot_duid)));
 sbm->sbm_bootblk_size = bbs;
 sbm->sbm_bootldr_size = bls;
 ;
 for (i = 0; i < sd->sd_meta->_sdd_invariant.ssd_chunk_no; i++) {
  chunk = sd->sd_vol.sv_chunks[i];
  if (chunk->src_meta.scm_status != 0x00 &&
      chunk->src_meta.scm_status != 0x03)
   continue;
  if (i < 16)
   __builtin_memcpy((&sbm->sbm_boot_duid[i]), (chunk->src_duid), (sizeof(sbm->sbm_boot_duid[i])));
  ;
  if (sr_rw(sc, chunk->src_dev_mm, bootblk, bbs,
      ((16 + 64) + 320), 0x00000000)) {
   sr_error(sc, "failed to write boot block", ((sc)->sc_dev.dv_xname));
   goto done;
  }
  ;
  if (sr_rw(sc, chunk->src_dev_mm, bootldr, bls,
      (16 + 64), 0x00000000)) {
   sr_error(sc, "failed to write boot loader");
   goto done;
  }
 }
 sd->sd_meta->_sdd_invariant.ssd_vol_flags |= 0x08;
 if (sr_meta_save(sd, 0x1)) {
  sr_error(sc, "could not save metadata to %s", ((sc)->sc_dev.dv_xname));
  goto done;
 }
 rv = 0;
done:
 free(bootblk, 2, 0);
 free(bootldr, 2, 0);
 return (rv);
}
void
sr_chunks_unwind(struct sr_softc *sc, struct sr_chunk_head *cl)
{
 struct sr_chunk *ch_entry, *ch_next;
 ;
 if (!cl)
  return;
 for (ch_entry = ((cl)->slh_first); ch_entry != ((void *)0); ch_entry = ch_next) {
  ch_next = ((ch_entry)->src_link.sle_next);
  ;
  if (ch_entry->src_vn) {
   vn_lock(ch_entry->src_vn, 0x0001UL |
       0x2000UL, (__curcpu->ci_self)->ci_curproc);
   VOP_CLOSE(ch_entry->src_vn, 0x0001 | 0x0002, ((struct ucred *)-1),
       (__curcpu->ci_self)->ci_curproc);
   vput(ch_entry->src_vn);
  }
  free(ch_entry, 2, 0);
 }
 { ((cl)->slh_first) = ((void *)0); };
}
void
sr_discipline_free(struct sr_discipline *sd)
{
 struct sr_softc *sc;
 struct sr_discipline *sdtmp1;
 struct sr_meta_opt_head *som;
 struct sr_meta_opt_item *omi, *omi_next;
 if (!sd)
  return;
 sc = sd->sd_sc;
 ;
 if (sd->sd_free_resources)
  sd->sd_free_resources(sd);
 free(sd->sd_vol.sv_chunks, 2, 0);
 free(sd->sd_meta, 2, 0);
 free(sd->sd_meta_foreign, 2, 0);
 som = &sd->sd_meta_opt;
 for (omi = ((som)->slh_first); omi != ((void *)0); omi = omi_next) {
  omi_next = ((omi)->omi_link.sle_next);
  free(omi->omi_som, 2, 0);
  free(omi, 2, 0);
 }
 if (sd->sd_target != 0) {
  ((sc->sc_targets[sd->sd_target] == sd) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../dev/softraid.c", 3884, "sc->sc_targets[sd->sd_target] == sd"));
  sc->sc_targets[sd->sd_target] = ((void *)0);
 }
 for((sdtmp1) = ((&sc->sc_dis_list)->tqh_first); (sdtmp1) != ((void *)0); (sdtmp1) = ((sdtmp1)->sd_link.tqe_next)) {
  if (sdtmp1 == sd)
   break;
 }
 if (sdtmp1 != ((void *)0))
  do { if (((sd)->sd_link.tqe_next) != ((void *)0)) (sd)->sd_link.tqe_next->sd_link.tqe_prev = (sd)->sd_link.tqe_prev; else (&sc->sc_dis_list)->tqh_last = (sd)->sd_link.tqe_prev; *(sd)->sd_link.tqe_prev = (sd)->sd_link.tqe_next; ((sd)->sd_link.tqe_prev) = ((void *)-1); ((sd)->sd_link.tqe_next) = ((void *)-1); } while (0);
 explicit_bzero(sd, sizeof *sd);
 free(sd, 2, 0);
}
void
sr_discipline_shutdown(struct sr_discipline *sd, int meta_save, int dying)
{
 struct sr_softc *sc;
 int s;
 if (!sd)
  return;
 sc = sd->sd_sc;
 ;
 if (sd->sd_reb_active) {
  sd->sd_reb_abort = 1;
  while (sd->sd_reb_active)
   tsleep(sd, 32, "sr_shutdown", 1);
 }
 if (meta_save)
  sr_meta_save(sd, 0);
 s = _splraise(5);
 sd->sd_ready = 0;
 wakeup(sd);
 while (sd->sd_sync || sd->sd_must_flush)
  if (tsleep(&sd->sd_sync, 127, "sr_down", 60 * hz) ==
      35)
   break;
 sr_sensors_delete(sd);
 if (sd->sd_target != 0)
  scsi_detach_lun(sc->sc_scsibus, sd->sd_target, 0,
      dying ? 0 : 0x01);
 sr_chunks_unwind(sc, &sd->sd_vol.sv_chunk_list);
 if (sd->sd_taskq)
  taskq_destroy(sd->sd_taskq);
 sr_discipline_free(sd);
 _splx(s);
}
int
sr_discipline_init(struct sr_discipline *sd, int level)
{
 int rv = 1;
 sd->sd_alloc_resources = sr_alloc_resources;
 sd->sd_assemble = ((void *)0);
 sd->sd_create = ((void *)0);
 sd->sd_free_resources = sr_free_resources;
 sd->sd_ioctl_handler = ((void *)0);
 sd->sd_openings = ((void *)0);
 sd->sd_meta_opt_handler = ((void *)0);
 sd->sd_rebuild = sr_rebuild;
 sd->sd_scsi_inquiry = sr_raid_inquiry;
 sd->sd_scsi_read_cap = sr_raid_read_cap;
 sd->sd_scsi_tur = sr_raid_tur;
 sd->sd_scsi_req_sense = sr_raid_request_sense;
 sd->sd_scsi_start_stop = sr_raid_start_stop;
 sd->sd_scsi_sync = sr_raid_sync;
 sd->sd_scsi_rw = ((void *)0);
 sd->sd_scsi_intr = sr_raid_intr;
 sd->sd_scsi_wu_done = ((void *)0);
 sd->sd_scsi_done = ((void *)0);
 sd->sd_set_chunk_state = sr_set_chunk_state;
 sd->sd_set_vol_state = sr_set_vol_state;
 sd->sd_start_discipline = ((void *)0);
 task_set(&sd->sd_meta_save_task, sr_meta_save_callback, sd);
 task_set(&sd->sd_hotspare_rebuild_task, sr_hotspare_rebuild_callback,
     sd);
 switch (level) {
 case 0:
  sr_raid0_discipline_init(sd);
  break;
 case 1:
  sr_raid1_discipline_init(sd);
  break;
 case 5:
  sr_raid5_discipline_init(sd);
  break;
 case 6:
  sr_raid6_discipline_init(sd);
  break;
 case 'C':
  sr_crypto_discipline_init(sd);
  break;
 case 'c':
  sr_concat_discipline_init(sd);
  break;
 default:
  goto bad;
 }
 rv = 0;
bad:
 return (rv);
}
int
sr_raid_inquiry(struct sr_workunit *wu)
{
 struct sr_discipline *sd = wu->swu_dis;
 struct scsi_xfer *xs = wu->swu_xs;
 struct scsi_inquiry *cdb = (struct scsi_inquiry *)xs->cmd;
 struct scsi_inquiry_data inq;
 ;
 if (xs->cmdlen != sizeof(*cdb))
  return (22);
 if (((cdb->flags) & (0x01)))
  return (45);
 __builtin_bzero((&inq), (sizeof(inq)));
 inq.device = 0;
 inq.dev_qual2 = 0;
 inq.version = 2;
 inq.response_format = 2;
 inq.additional_length = 32;
 inq.flags |= 0x02;
 strlcpy(inq.vendor, sd->sd_meta->_sdd_invariant.ssd_vendor,
     sizeof(inq.vendor));
 strlcpy(inq.product, sd->sd_meta->_sdd_invariant.ssd_product,
     sizeof(inq.product));
 strlcpy(inq.revision, sd->sd_meta->_sdd_invariant.ssd_revision,
     sizeof(inq.revision));
 sr_copy_internal_data(xs, &inq, sizeof(inq));
 return (0);
}
int
sr_raid_read_cap(struct sr_workunit *wu)
{
 struct sr_discipline *sd = wu->swu_dis;
 struct scsi_xfer *xs = wu->swu_xs;
 struct scsi_read_cap_data rcd;
 struct scsi_read_cap_data_16 rcd16;
 u_int64_t addr;
 int rv = 1;
 u_int32_t secsize;
 ;
 secsize = sd->sd_meta->_sdd_invariant.ssd_secsize;
 addr = ((sd->sd_meta->_sdd_invariant.ssd_size * (1 << 9)) / secsize) - 1;
 if (xs->cmd->opcode == 0x25) {
  __builtin_bzero((&rcd), (sizeof(rcd)));
  if (addr > 0xffffffffllu)
   _lto4b(0xffffffff, rcd.addr);
  else
   _lto4b(addr, rcd.addr);
  _lto4b(secsize, rcd.length);
  sr_copy_internal_data(xs, &rcd, sizeof(rcd));
  rv = 0;
 } else if (xs->cmd->opcode == 0x9e) {
  __builtin_bzero((&rcd16), (sizeof(rcd16)));
  _lto8b(addr, rcd16.addr);
  _lto4b(secsize, rcd16.length);
  sr_copy_internal_data(xs, &rcd16, sizeof(rcd16));
  rv = 0;
 }
 return (rv);
}
int
sr_raid_tur(struct sr_workunit *wu)
{
 struct sr_discipline *sd = wu->swu_dis;
 ;
 if (sd->sd_vol_status == 0x01) {
  sd->sd_scsi_sense.error_code = 0x70;
  sd->sd_scsi_sense.flags = 0x02;
  sd->sd_scsi_sense.add_sense_code = 0x04;
  sd->sd_scsi_sense.add_sense_code_qual = 0x11;
  sd->sd_scsi_sense.extra_len = 4;
  return (1);
 } else if (sd->sd_vol_status == 0xff) {
  sd->sd_scsi_sense.error_code = 0x70;
  sd->sd_scsi_sense.flags = 0x04;
  sd->sd_scsi_sense.add_sense_code = 0x05;
  sd->sd_scsi_sense.add_sense_code_qual = 0x00;
  sd->sd_scsi_sense.extra_len = 4;
  return (1);
 }
 return (0);
}
int
sr_raid_request_sense(struct sr_workunit *wu)
{
 struct sr_discipline *sd = wu->swu_dis;
 struct scsi_xfer *xs = wu->swu_xs;
 ;
 __builtin_memcpy((&xs->sense), (&sd->sd_scsi_sense), (sizeof(xs->sense)));
 __builtin_bzero((&sd->sd_scsi_sense), (sizeof(sd->sd_scsi_sense)));
 return (0);
}
int
sr_raid_start_stop(struct sr_workunit *wu)
{
 struct scsi_xfer *xs = wu->swu_xs;
 struct scsi_start_stop *ss = (struct scsi_start_stop *)xs->cmd;
 ;
 if (!ss)
  return (1);
 return (0);
}
int
sr_raid_sync(struct sr_workunit *wu)
{
 struct sr_discipline *sd = wu->swu_dis;
 int s, rv = 0, ios;
 ;
 ios = (wu->swu_flags & (1<<6)) ? 0 : 1;
 s = _splraise(5);
 sd->sd_sync = 1;
 while (sd->sd_wu_pending > ios) {
  if (tsleep(sd, 16, "sr_sync", 15 * hz) == 35) {
   ;
   rv = 1;
   break;
  }
 }
 sd->sd_sync = 0;
 _splx(s);
 wakeup(&sd->sd_sync);
 return (rv);
}
void
sr_raid_intr(struct buf *bp)
{
 struct sr_ccb *ccb = (struct sr_ccb *)bp;
 struct sr_workunit *wu = ccb->ccb_wu;
 int s;
 ;
 s = _splraise(5);
 sr_ccb_done(ccb);
 sr_wu_done(wu);
 _splx(s);
}
void
sr_schedule_wu(struct sr_workunit *wu)
{
 struct sr_discipline *sd = wu->swu_dis;
 struct sr_workunit *wup;
 int s;
 ;
 ((wu->swu_io_count > 0) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../dev/softraid.c", 4205, "wu->swu_io_count > 0"));
 s = _splraise(5);
 if (wu->swu_state == 9)
  goto queued;
 if (wu->swu_state == 8)
  goto queued;
 if (wu->swu_state == 7)
  goto start;
 if (wu->swu_state != 1)
  panic("sr_schedule_wu: work unit not in progress (state %i)\n",
      wu->swu_state);
 for((wup) = (*(((struct sr_wu_list *)((&sd->sd_wu_pendq)->tqh_last))->tqh_last)); (wup) != ((void *)0); (wup) = (*(((struct sr_wu_list *)((wup)->swu_link.tqe_prev))->tqh_last))) {
  if (wu->swu_blk_end < wup->swu_blk_start ||
      wup->swu_blk_end < wu->swu_blk_start)
   continue;
  ;
  wu->swu_state = 5;
  while (wup->swu_collider)
   wup = wup->swu_collider;
  wup->swu_collider = wu;
  do { (wu)->swu_link.tqe_next = ((void *)0); (wu)->swu_link.tqe_prev = (&sd->sd_wu_defq)->tqh_last; *(&sd->sd_wu_defq)->tqh_last = (wu); (&sd->sd_wu_defq)->tqh_last = &(wu)->swu_link.tqe_next; } while (0);
  sd->sd_wu_collisions++;
  goto queued;
 }
start:
 sr_raid_startwu(wu);
queued:
 _splx(s);
}
void
sr_raid_startwu(struct sr_workunit *wu)
{
 struct sr_discipline *sd = wu->swu_dis;
 struct sr_ccb *ccb;
 ;
 do { if (splassert_ctl > 0) { splassert_check(5, __func__); } } while (0);
 if (wu->swu_state == 5) {
  do { if (((wu)->swu_link.tqe_next) != ((void *)0)) (wu)->swu_link.tqe_next->swu_link.tqe_prev = (wu)->swu_link.tqe_prev; else (&sd->sd_wu_defq)->tqh_last = (wu)->swu_link.tqe_prev; *(wu)->swu_link.tqe_prev = (wu)->swu_link.tqe_next; ((wu)->swu_link.tqe_prev) = ((void *)-1); ((wu)->swu_link.tqe_next) = ((void *)-1); } while (0);
  wu->swu_state = 1;
 }
 if (wu->swu_state != 7)
  do { (wu)->swu_link.tqe_next = ((void *)0); (wu)->swu_link.tqe_prev = (&sd->sd_wu_pendq)->tqh_last; *(&sd->sd_wu_pendq)->tqh_last = (wu); (&sd->sd_wu_pendq)->tqh_last = &(wu)->swu_link.tqe_next; } while (0);
 if (wu->swu_cb_active == 1)
  panic("%s: sr_startwu_callback", ((sd->sd_sc)->sc_dev.dv_xname));
 wu->swu_cb_active = 1;
 for((ccb) = ((&wu->swu_ccb)->tqh_first); (ccb) != ((void *)0); (ccb) = ((ccb)->ccb_link.tqe_next))
  VOP_STRATEGY(&ccb->ccb_buf);
 wu->swu_cb_active = 0;
}
void
sr_raid_recreate_wu(struct sr_workunit *wu)
{
 struct sr_discipline *sd = wu->swu_dis;
 struct sr_workunit *wup = wu;
 do {
  sr_wu_release_ccbs(wup);
  wup->swu_state = 8;
  if (sd->sd_scsi_rw(wup))
   panic("could not requeue I/O");
  wup = wup->swu_collider;
 } while (wup);
}
int
sr_alloc_resources(struct sr_discipline *sd)
{
 if (sr_wu_alloc(sd, sizeof(struct sr_workunit))) {
  sr_error(sd->sd_sc, "unable to allocate work units");
  return (12);
 }
 if (sr_ccb_alloc(sd)) {
  sr_error(sd->sd_sc, "unable to allocate ccbs");
  return (12);
 }
 return (0);
}
void
sr_free_resources(struct sr_discipline *sd)
{
 sr_wu_free(sd);
 sr_ccb_free(sd);
}
void
sr_set_chunk_state(struct sr_discipline *sd, int c, int new_state)
{
 int old_state, s;
 ;
 s = _splraise(5);
 old_state = sd->sd_vol.sv_chunks[c]->src_meta.scm_status;
 if (old_state == new_state)
  goto done;
 switch (old_state) {
 case 0x00:
  if (new_state == 0x01)
   break;
  else
   goto die;
  break;
 case 0x01:
  goto die;
 default:
die:
  _splx(s);
  panic("%s: %s: %s: invalid chunk state transition "
      "%d -> %d", ((sd->sd_sc)->sc_dev.dv_xname),
      sd->sd_meta->ssd_devname,
      sd->sd_vol.sv_chunks[c]->src_meta._scm_invariant.scm_devname,
      old_state, new_state);
 }
 sd->sd_vol.sv_chunks[c]->src_meta.scm_status = new_state;
 sd->sd_set_vol_state(sd);
 sd->sd_must_flush = 1;
 task_add(systq, &sd->sd_meta_save_task);
done:
 _splx(s);
}
void
sr_set_vol_state(struct sr_discipline *sd)
{
 int states[7];
 int new_state, i, nd;
 int old_state = sd->sd_vol_status;
 u_int32_t s;
 ;
 nd = sd->sd_meta->_sdd_invariant.ssd_chunk_no;
 for (i = 0; i < 7; i++)
  states[i] = 0;
 for (i = 0; i < nd; i++) {
  s = sd->sd_vol.sv_chunks[i]->src_meta.scm_status;
  if (s >= 7)
   panic("%s: %s: %s: invalid chunk state",
       ((sd->sd_sc)->sc_dev.dv_xname),
       sd->sd_meta->ssd_devname,
       sd->sd_vol.sv_chunks[i]->src_meta._scm_invariant.scm_devname);
  states[s]++;
 }
 if (states[0x00] == nd)
  new_state = 0x00;
 else
  new_state = 0x01;
 ;
 switch (old_state) {
 case 0x00:
  if (new_state == 0x01 || new_state == 0x00)
   break;
  else
   goto die;
  break;
 case 0x01:
  goto die;
 default:
die:
  panic("%s: %s: invalid volume state transition "
      "%d -> %d", ((sd->sd_sc)->sc_dev.dv_xname),
      sd->sd_meta->ssd_devname,
      old_state, new_state);
 }
 sd->sd_vol_status = new_state;
}
void *
sr_block_get(struct sr_discipline *sd, long length)
{
 return dma_alloc(length, 0x0002 | 0x0008);
}
void
sr_block_put(struct sr_discipline *sd, void *ptr, int length)
{
 dma_free(ptr, length);
}
void
sr_checksum_print(u_int8_t *md5)
{
 int i;
 for (i = 0; i < 16; i++)
  printf("%02x", md5[i]);
}
void
sr_checksum(struct sr_softc *sc, void *src, void *md5, u_int32_t len)
{
 MD5_CTX ctx;
 ;
 MD5Init(&ctx);
 MD5Update(&ctx, src, len);
 MD5Final(md5, &ctx);
}
void
sr_uuid_generate(struct sr_uuid *uuid)
{
 arc4random_buf(uuid->sui_id, sizeof(uuid->sui_id));
 uuid->sui_id[6] &= 0x0f;
 uuid->sui_id[6] |= 0x40;
 uuid->sui_id[8] &= 0x3f;
 uuid->sui_id[8] |= 0x80;
}
char *
sr_uuid_format(struct sr_uuid *uuid)
{
 char *uuidstr;
 uuidstr = malloc(37, 2, 0x0001);
 snprintf(uuidstr, 37,
     "%02x%02x%02x%02x-%02x%02x-%02x%02x-%02x%02x-"
     "%02x%02x%02x%02x%02x%02x",
     uuid->sui_id[0], uuid->sui_id[1],
     uuid->sui_id[2], uuid->sui_id[3],
     uuid->sui_id[4], uuid->sui_id[5],
     uuid->sui_id[6], uuid->sui_id[7],
     uuid->sui_id[8], uuid->sui_id[9],
     uuid->sui_id[10], uuid->sui_id[11],
     uuid->sui_id[12], uuid->sui_id[13],
     uuid->sui_id[14], uuid->sui_id[15]);
 return uuidstr;
}
void
sr_uuid_print(struct sr_uuid *uuid, int cr)
{
 char *uuidstr;
 uuidstr = sr_uuid_format(uuid);
 printf("%s%s", uuidstr, (cr ? "\n" : ""));
 free(uuidstr, 2, 37);
}
int
sr_already_assembled(struct sr_discipline *sd)
{
 struct sr_softc *sc = sd->sd_sc;
 struct sr_discipline *sdtmp;
 for((sdtmp) = ((&sc->sc_dis_list)->tqh_first); (sdtmp) != ((void *)0); (sdtmp) = ((sdtmp)->sd_link.tqe_next)) {
  if (!__builtin_bcmp((&sd->sd_meta->_sdd_invariant.ssd_uuid), (&sdtmp->sd_meta->_sdd_invariant.ssd_uuid), (sizeof(sd->sd_meta->_sdd_invariant.ssd_uuid))))
   return (1);
 }
 return (0);
}
int32_t
sr_validate_stripsize(u_int32_t b)
{
 int s = 0;
 if (b % (1 << 9))
  return (-1);
 while ((b & 1) == 0) {
  b >>= 1;
  s++;
 }
 b >>= 1;
 if (b)
  return(-1);
 return (s);
}
void
sr_shutdown(int dying)
{
 struct sr_softc *sc = softraid0;
 struct sr_discipline *sd;
 ;
 config_suspend((struct device *)sc, 6);
 while ((sd = (*(((struct sr_discipline_list *)((&sc->sc_dis_list)->tqh_last))->tqh_last))) != ((void *)0))
  sr_discipline_shutdown(sd, 1, dying);
}
int
sr_validate_io(struct sr_workunit *wu, daddr_t *blkno, char *func)
{
 struct sr_discipline *sd = wu->swu_dis;
 struct scsi_xfer *xs = wu->swu_xs;
 int rv = 1;
 ;
 if (sd->sd_meta->ssd_data_blkno == 0)
  panic("invalid data blkno");
 if (sd->sd_vol_status == 0x01) {
  ;
  goto bad;
 }
 if (xs->datalen == 0) {
  printf("%s: %s: illegal block count for %s\n",
      ((sd->sd_sc)->sc_dev.dv_xname), func, sd->sd_meta->ssd_devname);
  goto bad;
 }
 if (xs->cmdlen == 10)
  *blkno = _4btol(((struct scsi_rw_big *)xs->cmd)->addr);
 else if (xs->cmdlen == 16)
  *blkno = _8btol(((struct scsi_rw_16 *)xs->cmd)->addr);
 else if (xs->cmdlen == 6)
  *blkno = _3btol(((struct scsi_rw *)xs->cmd)->addr);
 else {
  printf("%s: %s: illegal cmdlen for %s\n",
      ((sd->sd_sc)->sc_dev.dv_xname), func, sd->sd_meta->ssd_devname);
  goto bad;
 }
 *blkno *= (sd->sd_meta->_sdd_invariant.ssd_secsize / (1 << 9));
 wu->swu_blk_start = *blkno;
 wu->swu_blk_end = *blkno + (xs->datalen >> 9) - 1;
 if (wu->swu_blk_end > sd->sd_meta->_sdd_invariant.ssd_size) {
  ;
  sd->sd_scsi_sense.error_code = 0x70 |
      0x80;
  sd->sd_scsi_sense.flags = 0x05;
  sd->sd_scsi_sense.add_sense_code = 0x21;
  sd->sd_scsi_sense.add_sense_code_qual = 0x00;
  sd->sd_scsi_sense.extra_len = 4;
  goto bad;
 }
 rv = 0;
bad:
 return (rv);
}
void
sr_rebuild_start(void *arg)
{
 struct sr_discipline *sd = arg;
 struct sr_softc *sc = sd->sd_sc;
 ;
 if (kthread_create(sr_rebuild_thread, sd, &sd->sd_background_proc,
     ((sc)->sc_dev.dv_xname)) != 0)
  printf("%s: unable to start background operation\n",
      ((sc)->sc_dev.dv_xname));
}
void
sr_rebuild_thread(void *arg)
{
 struct sr_discipline *sd = arg;
 ;
 sd->sd_reb_active = 1;
 sd->sd_rebuild(sd);
 sd->sd_reb_active = 0;
 kthread_exit(0);
}
void
sr_rebuild(struct sr_discipline *sd)
{
 struct sr_softc *sc = sd->sd_sc;
 u_int64_t sz, whole_blk, partial_blk, blk, restart;
 daddr_t lba;
 struct sr_workunit *wu_r, *wu_w;
 struct scsi_xfer xs_r, xs_w;
 struct scsi_rw_16 *cr, *cw;
 int c, s, slept, percent = 0, old_percent = -1;
 u_int8_t *buf;
 whole_blk = sd->sd_meta->_sdd_invariant.ssd_size / 128;
 partial_blk = sd->sd_meta->_sdd_invariant.ssd_size % 128;
 restart = sd->sd_meta->ssd_rebuild / 128;
 if (restart > whole_blk) {
  printf("%s: bogus rebuild restart offset, starting from 0\n",
      ((sc)->sc_dev.dv_xname));
  restart = 0;
 }
 if (restart) {
  percent = sr_rebuild_percent(sd);
  printf("%s: resuming rebuild on %s at %d%%\n",
      ((sc)->sc_dev.dv_xname), sd->sd_meta->ssd_devname, percent);
 }
 buf = dma_alloc(128 << 9, 0x0001);
 for (blk = restart; blk <= whole_blk; blk++) {
  lba = blk * 128;
  sz = 128;
  if (blk == whole_blk) {
   if (partial_blk == 0)
    break;
   sz = partial_blk;
  }
  wu_r = sr_scsi_wu_get(sd, 0);
  wu_w = sr_scsi_wu_get(sd, 0);
  ;
  __builtin_bzero((&xs_r), (sizeof xs_r));
  xs_r.error = 0;
  xs_r.flags = 0x00800;
  xs_r.datalen = sz << 9;
  xs_r.data = buf;
  xs_r.cmdlen = sizeof(*cr);
  xs_r.cmd = &xs_r.cmdstore;
  cr = (struct scsi_rw_16 *)xs_r.cmd;
  cr->opcode = 0x88;
  _lto4b(sz, cr->length);
  _lto8b(lba, cr->addr);
  wu_r->swu_state = 9;
  wu_r->swu_flags |= (1<<0);
  wu_r->swu_xs = &xs_r;
  if (sd->sd_scsi_rw(wu_r)) {
   printf("%s: could not create read io\n",
       ((sc)->sc_dev.dv_xname));
   goto fail;
  }
  __builtin_bzero((&xs_w), (sizeof xs_w));
  xs_w.error = 0;
  xs_w.flags = 0x01000;
  xs_w.datalen = sz << 9;
  xs_w.data = buf;
  xs_w.cmdlen = sizeof(*cw);
  xs_w.cmd = &xs_w.cmdstore;
  cw = (struct scsi_rw_16 *)xs_w.cmd;
  cw->opcode = 0x8a;
  _lto4b(sz, cw->length);
  _lto8b(lba, cw->addr);
  wu_w->swu_state = 9;
  wu_w->swu_flags |= (1<<0) | (1<<4);
  wu_w->swu_xs = &xs_w;
  if (sd->sd_scsi_rw(wu_w)) {
   printf("%s: could not create write io\n",
       ((sc)->sc_dev.dv_xname));
   goto fail;
  }
  wu_w->swu_state = 5;
  wu_r->swu_collider = wu_w;
  s = _splraise(5);
  do { (wu_w)->swu_link.tqe_next = ((void *)0); (wu_w)->swu_link.tqe_prev = (&sd->sd_wu_defq)->tqh_last; *(&sd->sd_wu_defq)->tqh_last = (wu_w); (&sd->sd_wu_defq)->tqh_last = &(wu_w)->swu_link.tqe_next; } while (0);
  _splx(s);
  ;
  wu_r->swu_state = 1;
  sr_schedule_wu(wu_r);
  slept = 0;
  while ((wu_w->swu_flags & (1<<1)) == 0) {
   tsleep(wu_w, 16, "sr_rebuild", 0);
   slept = 1;
  }
  if (slept == 0)
   tsleep(sc, 32, "sr_yield", 1);
  sr_scsi_wu_put(sd, wu_r);
  sr_scsi_wu_put(sd, wu_w);
  sd->sd_meta->ssd_rebuild = lba;
  percent = sr_rebuild_percent(sd);
  if (percent != old_percent && blk != whole_blk) {
   if (sr_meta_save(sd, 0x1))
    printf("%s: could not save metadata to %s\n",
        ((sc)->sc_dev.dv_xname), sd->sd_meta->ssd_devname);
   old_percent = percent;
  }
  if (sd->sd_reb_abort)
   goto abort;
 }
 sd->sd_meta->ssd_rebuild = 0;
 for (c = 0; c < sd->sd_meta->_sdd_invariant.ssd_chunk_no; c++) {
  if (sd->sd_vol.sv_chunks[c]->src_meta.scm_status ==
      0x03) {
   sd->sd_set_chunk_state(sd, c, 0x00);
   break;
  }
 }
abort:
 if (sr_meta_save(sd, 0x1))
  printf("%s: could not save metadata to %s\n",
      ((sc)->sc_dev.dv_xname), sd->sd_meta->ssd_devname);
fail:
 dma_free(buf, 128 << 9);
}
int
sr_sensors_create(struct sr_discipline *sd)
{
 struct sr_softc *sc = sd->sd_sc;
 int rv = 1;
 ;
 sd->sd_vol.sv_sensor.type = SENSOR_DRIVE;
 sd->sd_vol.sv_sensor.status = SENSOR_S_UNKNOWN;
 strlcpy(sd->sd_vol.sv_sensor.desc, sd->sd_meta->ssd_devname,
     sizeof(sd->sd_vol.sv_sensor.desc));
 sensor_attach(&sc->sc_sensordev, &sd->sd_vol.sv_sensor);
 sd->sd_vol.sv_sensor_attached = 1;
 if (sc->sc_sensor_task == ((void *)0)) {
  sc->sc_sensor_task = sensor_task_register(sc,
      sr_sensors_refresh, 10);
  if (sc->sc_sensor_task == ((void *)0))
   goto bad;
 }
 rv = 0;
bad:
 return (rv);
}
void
sr_sensors_delete(struct sr_discipline *sd)
{
 ;
 if (sd->sd_vol.sv_sensor_attached)
  sensor_detach(&sd->sd_sc->sc_sensordev, &sd->sd_vol.sv_sensor);
}
void
sr_sensors_refresh(void *arg)
{
 struct sr_softc *sc = arg;
 struct sr_volume *sv;
 struct sr_discipline *sd;
 ;
 for((sd) = ((&sc->sc_dis_list)->tqh_first); (sd) != ((void *)0); (sd) = ((sd)->sd_link.tqe_next)) {
  sv = &sd->sd_vol;
  switch(sd->sd_vol_status) {
  case 0x01:
   sv->sv_sensor.value = 9;
   sv->sv_sensor.status = SENSOR_S_CRIT;
   break;
  case 0x02:
   sv->sv_sensor.value = 10;
   sv->sv_sensor.status = SENSOR_S_WARN;
   break;
  case 0x05:
   sv->sv_sensor.value = 7;
   sv->sv_sensor.status = SENSOR_S_WARN;
   break;
  case 0x04:
  case 0x00:
   sv->sv_sensor.value = 4;
   sv->sv_sensor.status = SENSOR_S_OK;
   break;
  default:
   sv->sv_sensor.value = 0;
   sv->sv_sensor.status = SENSOR_S_UNKNOWN;
  }
 }
}
