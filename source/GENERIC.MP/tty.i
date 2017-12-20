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
typedef unsigned int tcflag_t;
typedef unsigned char cc_t;
typedef unsigned int speed_t;
struct termios {
 tcflag_t c_iflag;
 tcflag_t c_oflag;
 tcflag_t c_cflag;
 tcflag_t c_lflag;
 cc_t c_cc[20];
 int c_ispeed;
 int c_ospeed;
};
cc_t ttydefchars[20] = {
 ('d'&037), ((unsigned char)'\377'), ((unsigned char)'\377'), 0177, ('w'&037), ('u'&037), ('r'&037),
 (0377), ('c'&037), 034, ('z'&037), ('y'&037), ('q'&037), ('s'&037), ('v'&037),
 ('o'&037), 1, 0, ((unsigned char)'\377'), (0377)
};
struct ptmget {
 int cfd;
 int sfd;
 char cn[16];
 char sn[16];
};
struct clist {
 int c_cc;
 int c_cn;
 u_char *c_cf;
 u_char *c_cl;
 u_char *c_cs;
 u_char *c_ce;
 u_char *c_cq;
};
struct tty {
 struct { struct tty *tqe_next; struct tty **tqe_prev; } tty_link;
 struct clist t_rawq;
 long t_rawcc;
 struct clist t_canq;
 long t_cancc;
 struct clist t_outq;
 long t_outcc;
 int t_qlen;
 u_char t_line;
 dev_t t_dev;
 int t_state;
 int t_flags;
 struct pgrp *t_pgrp;
 struct session *t_session;
 struct selinfo t_rsel;
 struct selinfo t_wsel;
 struct termios t_termios;
 struct winsize t_winsize;
 void (*t_oproc)(struct tty *);
 int (*t_param)(struct tty *, struct termios *);
 int (*t_hwiflow)(struct tty *tp, int flag);
 void *t_sc;
 short t_column;
 short t_rocount, t_rocol;
 short t_hiwat;
 short t_lowat;
 short t_gen;
 struct timeout t_rstrt_to;
 struct timeval t_tv;
};
struct itty {
 dev_t t_dev;
 int t_rawq_c_cc;
 int t_canq_c_cc;
 int t_outq_c_cc;
 short t_hiwat;
 short t_lowat;
 short t_column;
 int t_state;
 struct session *t_session;
 pid_t t_pgrp_pg_id;
 u_char t_line;
};
struct speedtab {
 int sp_speed;
 int sp_code;
};
struct ttylist_head { struct tty *tqh_first; struct tty **tqh_last; };
extern int tty_count;
extern struct ttychars ttydefaults;
extern char ttyin[], ttyout[], ttopen[], ttclos[], ttybg[], ttybuf[];
extern int64_t tk_cancc, tk_nin, tk_nout, tk_rawcc;
int sysctl_tty(int *, u_int, void *, size_t *, void *, size_t);
int sysctl_pty(int *, u_int, void *, size_t *, void *, size_t);
int b_to_q(u_char *cp, int cc, struct clist *q);
void catq(struct clist *from, struct clist *to);
void clist_init(void);
int getc(struct clist *q);
void ndflush(struct clist *q, int cc);
int ndqb(struct clist *q, int flag);
u_char *nextc(struct clist *q, u_char *cp, int *c);
int putc(int c, struct clist *q);
int q_to_b(struct clist *q, u_char *cp, int cc);
int unputc(struct clist *q);
int nullmodem(struct tty *tp, int flag);
int tputchar(int c, struct tty *tp);
int ttioctl(struct tty *tp, u_long com, caddr_t data, int flag,
     struct proc *p);
int ttread(struct tty *tp, struct uio *uio, int flag);
void ttrstrt(void *tp);
int ttpoll(dev_t device, int events, struct proc *p);
int ttkqfilter(dev_t dev, struct knote *kn);
void ttsetwater(struct tty *tp);
int ttspeedtab(int speed, const struct speedtab *table);
int ttstart(struct tty *tp);
void ttwakeupwr(struct tty *tp);
void ttwakeup(struct tty *tp);
int ttwrite(struct tty *tp, struct uio *uio, int flag);
void ttychars(struct tty *tp);
int ttycheckoutq(struct tty *tp, int wait);
int ttyclose(struct tty *tp);
void ttyflush(struct tty *tp, int rw);
void ttyinfo(struct tty *tp);
int ttyinput(int c, struct tty *tp);
int ttylclose(struct tty *tp, int flag, struct proc *p);
int ttymodem(struct tty *tp, int flag);
int ttyopen(dev_t device, struct tty *tp, struct proc *p);
int ttyoutput(int c, struct tty *tp);
void ttypend(struct tty *tp);
void ttyretype(struct tty *tp);
void ttyrub(int c, struct tty *tp);
int ttysleep(struct tty *tp,
     void *chan, int pri, char *wmesg, int timeout);
int ttywait(struct tty *tp);
int ttywflush(struct tty *tp);
void ttytstamp(struct tty *tp, int octs, int ncts, int odcd, int ndcd);
void tty_init(void);
struct tty *ttymalloc(int);
void ttyfree(struct tty *);
u_char *firstc(struct clist *clp, int *c);
int cttyopen(dev_t, int, int, struct proc *);
int cttyread(dev_t, struct uio *, int);
int cttywrite(dev_t, struct uio *, int);
int cttyioctl(dev_t, u_long, caddr_t, int, struct proc *);
int cttypoll(dev_t, int, struct proc *);
void clalloc(struct clist *, int, int);
void clfree(struct clist *);
int nullioctl(struct tty *, u_long, caddr_t, int, struct proc *);
int pppopen(dev_t dev, struct tty *, struct proc *);
int pppclose(struct tty *, int, struct proc *);
int ppptioctl(struct tty *, u_long, caddr_t, int, struct proc *);
int pppinput(int c, struct tty *);
int pppstart(struct tty *);
int pppread(struct tty *, struct uio *, int);
int pppwrite(struct tty *, struct uio *, int);
int nmeaopen(dev_t, struct tty *, struct proc *);
int nmeaclose(struct tty *, int, struct proc *);
int nmeainput(int, struct tty *);
int mstsopen(dev_t, struct tty *, struct proc *);
int mstsclose(struct tty *, int, struct proc *);
int mstsinput(int, struct tty *);
int endrunopen(dev_t, struct tty *, struct proc *);
int endrunclose(struct tty *, int, struct proc *);
int endruninput(int, struct tty *);
struct flock {
 off_t l_start;
 off_t l_len;
 pid_t l_pid;
 short l_type;
 short l_whence;
};
struct proc;
struct uio;
struct knote;
struct stat;
struct file;
struct ucred;
struct fileops {
 int (*fo_read)(struct file *, off_t *, struct uio *,
      struct ucred *);
 int (*fo_write)(struct file *, off_t *, struct uio *,
      struct ucred *);
 int (*fo_ioctl)(struct file *, u_long, caddr_t,
      struct proc *);
 int (*fo_poll)(struct file *, int, struct proc *);
 int (*fo_kqfilter)(struct file *, struct knote *);
 int (*fo_stat)(struct file *, struct stat *, struct proc *);
 int (*fo_close)(struct file *, struct proc *);
};
struct file {
 struct { struct file *le_next; struct file **le_prev; } f_list;
 short f_flag;
 short f_type;
 long f_count;
 struct ucred *f_cred;
 struct fileops *f_ops;
 off_t f_offset;
 void *f_data;
 int f_iflags;
 u_int64_t f_rxfer;
 u_int64_t f_wxfer;
 u_int64_t f_seek;
 u_int64_t f_rbytes;
 u_int64_t f_wbytes;
};
int fdrop(struct file *, struct proc *);
struct filelist { struct file *lh_first; };
extern struct filelist filehead;
extern int maxfiles;
extern int numfiles;
extern struct fileops vnops;
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
struct msgbuf {
 long msg_magic;
 long msg_bufx;
 long msg_bufr;
 long msg_bufs;
 long msg_bufl;
 long msg_bufd;
 char msg_bufc[1];
};
extern struct msgbuf *msgbufp;
extern struct msgbuf *consbufp;
void initmsgbuf(caddr_t buf, size_t bufsize);
void initconsbuf(void);
void msgbuf_putchar(struct msgbuf *, const char c);
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
struct ctlname {
 char *ctl_name;
 int ctl_type;
};
struct kinfo_proc {
 u_int64_t p_forw;
 u_int64_t p_back;
 u_int64_t p_paddr;
 u_int64_t p_addr;
 u_int64_t p_fd;
 u_int64_t p_stats;
 u_int64_t p_limit;
 u_int64_t p_vmspace;
 u_int64_t p_sigacts;
 u_int64_t p_sess;
 u_int64_t p_tsess;
 u_int64_t p_ru;
 int32_t p_eflag;
 int32_t p_exitsig;
 int32_t p_flag;
 int32_t p_pid;
 int32_t p_ppid;
 int32_t p_sid;
 int32_t p__pgid;
 int32_t p_tpgid;
 u_int32_t p_uid;
 u_int32_t p_ruid;
 u_int32_t p_gid;
 u_int32_t p_rgid;
 u_int32_t p_groups[16];
 int16_t p_ngroups;
 int16_t p_jobc;
 u_int32_t p_tdev;
 u_int32_t p_estcpu;
 u_int32_t p_rtime_sec;
 u_int32_t p_rtime_usec;
 int32_t p_cpticks;
 u_int32_t p_pctcpu;
 u_int32_t p_swtime;
 u_int32_t p_slptime;
 int32_t p_schedflags;
 u_int64_t p_uticks;
 u_int64_t p_sticks;
 u_int64_t p_iticks;
 u_int64_t p_tracep;
 int32_t p_traceflag;
 int32_t p_holdcnt;
 int32_t p_siglist;
 u_int32_t p_sigmask;
 u_int32_t p_sigignore;
 u_int32_t p_sigcatch;
 int8_t p_stat;
 u_int8_t p_priority;
 u_int8_t p_usrpri;
 u_int8_t p_nice;
 u_int16_t p_xstat;
 u_int16_t p_acflag;
 char p_comm[24];
 char p_wmesg[8];
 u_int64_t p_wchan;
 char p_login[32];
 int32_t p_vm_rssize;
 int32_t p_vm_tsize;
 int32_t p_vm_dsize;
 int32_t p_vm_ssize;
 int64_t p_uvalid;
 u_int64_t p_ustart_sec;
 u_int32_t p_ustart_usec;
 u_int32_t p_uutime_sec;
 u_int32_t p_uutime_usec;
 u_int32_t p_ustime_sec;
 u_int32_t p_ustime_usec;
 u_int64_t p_uru_maxrss;
 u_int64_t p_uru_ixrss;
 u_int64_t p_uru_idrss;
 u_int64_t p_uru_isrss;
 u_int64_t p_uru_minflt;
 u_int64_t p_uru_majflt;
 u_int64_t p_uru_nswap;
 u_int64_t p_uru_inblock;
 u_int64_t p_uru_oublock;
 u_int64_t p_uru_msgsnd;
 u_int64_t p_uru_msgrcv;
 u_int64_t p_uru_nsignals;
 u_int64_t p_uru_nvcsw;
 u_int64_t p_uru_nivcsw;
 u_int32_t p_uctime_sec;
 u_int32_t p_uctime_usec;
 int32_t p_psflags;
 int32_t p_spare;
 u_int32_t p_svuid;
 u_int32_t p_svgid;
 char p_emul[8];
 u_int64_t p_rlim_rss_cur;
 u_int64_t p_cpuid;
 u_int64_t p_vm_map_size;
 int32_t p_tid;
 u_int32_t p_rtableid;
};
struct kinfo_vmentry {
 u_long kve_start;
 u_long kve_end;
 u_long kve_guard;
 u_long kve_fspace;
 u_long kve_fspace_augment;
 u_int64_t kve_offset;
 int kve_wired_count;
 int kve_etype;
 int kve_protection;
 int kve_max_protection;
 int kve_advice;
 int kve_inheritance;
 u_int8_t kve_flags;
};
struct kinfo_file {
 uint64_t f_fileaddr;
 uint32_t f_flag;
 uint32_t f_iflags;
 uint32_t f_type;
 uint32_t f_count;
 uint32_t f_msgcount;
 uint32_t f_usecount;
 uint64_t f_ucred;
 uint32_t f_uid;
 uint32_t f_gid;
 uint64_t f_ops;
 uint64_t f_offset;
 uint64_t f_data;
 uint64_t f_rxfer;
 uint64_t f_rwfer;
 uint64_t f_seek;
 uint64_t f_rbytes;
 uint64_t f_wbytes;
 uint64_t v_un;
 uint32_t v_type;
 uint32_t v_tag;
 uint32_t v_flag;
 uint32_t va_rdev;
 uint64_t v_data;
 uint64_t v_mount;
 uint64_t va_fileid;
 uint64_t va_size;
 uint32_t va_mode;
 uint32_t va_fsid;
 char f_mntonname[96];
 uint32_t so_type;
 uint32_t so_state;
 uint64_t so_pcb;
 uint32_t so_protocol;
 uint32_t so_family;
 uint64_t inp_ppcb;
 uint32_t inp_lport;
 uint32_t inp_laddru[4];
 uint32_t inp_fport;
 uint32_t inp_faddru[4];
 uint64_t unp_conn;
 uint64_t pipe_peer;
 uint32_t pipe_state;
 uint32_t kq_count;
 uint32_t kq_state;
 uint32_t __unused1;
 uint32_t p_pid;
 int32_t fd_fd;
 uint32_t fd_ofileflags;
 uint32_t p_uid;
 uint32_t p_gid;
 uint32_t p_tid;
 char p_comm[24];
 uint32_t inp_rtableid;
 uint64_t so_splice;
 int64_t so_splicelen;
 uint64_t so_rcv_cc;
 uint64_t so_snd_cc;
 uint64_t unp_refs;
 uint64_t unp_nextref;
 uint64_t unp_addr;
 char unp_path[104];
 uint32_t inp_proto;
 uint32_t t_state;
 uint64_t t_rcv_wnd;
 uint64_t t_snd_wnd;
 uint64_t t_snd_cwnd;
 uint32_t va_nlink;
};
typedef int (sysctlfn)(int *, u_int, void *, size_t *, void *, size_t, struct proc *);
int sysctl_int(void *, size_t *, void *, size_t, int *);
int sysctl_int_lower(void *, size_t *, void *, size_t, int *);
int sysctl_rdint(void *, size_t *, void *, int);
int sysctl_int_arr(int **, int *, u_int, void *, size_t *, void *, size_t);
int sysctl_quad(void *, size_t *, void *, size_t, int64_t *);
int sysctl_rdquad(void *, size_t *, void *, int64_t);
int sysctl_string(void *, size_t *, void *, size_t, char *, size_t);
int sysctl_tstring(void *, size_t *, void *, size_t, char *, size_t);
int sysctl__string(void *, size_t *, void *, size_t, char *, size_t, int);
int sysctl_rdstring(void *, size_t *, void *, const char *);
int sysctl_rdstruct(void *, size_t *, void *, const void *, size_t);
int sysctl_struct(void *, size_t *, void *, size_t, void *, size_t);
int sysctl_file(int *, u_int, char *, size_t *, struct proc *);
int sysctl_doproc(int *, u_int, char *, size_t *);
struct mbuf_queue;
int sysctl_mq(int *, u_int, void *, size_t *, void *, size_t,
    struct mbuf_queue *);
struct rtentry;
struct walkarg;
int sysctl_dumpentry(struct rtentry *, void *, unsigned int);
int sysctl_rtable(int *, u_int, void *, size_t *, void *, size_t);
int sysctl_clockrate(char *, size_t *, void *);
int sysctl_vnode(char *, size_t *, struct proc *);
int sysctl_dopool(int *, u_int, char *, size_t *);
int kern_sysctl(int *, u_int, void *, size_t *, void *, size_t,
       struct proc *);
int hw_sysctl(int *, u_int, void *, size_t *, void *, size_t,
     struct proc *);
int vm_sysctl(int *, u_int, void *, size_t *, void *, size_t,
     struct proc *);
int fs_sysctl(int *, u_int, void *, size_t *, void *, size_t,
     struct proc *);
int fs_posix_sysctl(int *, u_int, void *, size_t *, void *, size_t,
    struct proc *);
int net_sysctl(int *, u_int, void *, size_t *, void *, size_t,
      struct proc *);
int cpu_sysctl(int *, u_int, void *, size_t *, void *, size_t,
      struct proc *);
int vfs_sysctl(int *, u_int, void *, size_t *, void *, size_t,
      struct proc *);
int sysctl_sysvipc(int *, u_int, void *, size_t *);
int sysctl_wdog(int *, u_int, void *, size_t *, void *, size_t);
extern int (*cpu_cpuspeed)(int *);
extern void (*cpu_setperf)(int);
int bpf_sysctl(int *, u_int, void *, size_t *, void *, size_t);
int pflow_sysctl(int *, u_int, void *, size_t *, void *, size_t);
int pipex_sysctl(int *, u_int, void *, size_t *, void *, size_t);
int mpls_sysctl(int *, u_int, void *, size_t *, void *, size_t);
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
typedef struct pollfd {
 int fd;
 short events;
 short revents;
} pollfd_t;
typedef unsigned int nfds_t;
struct __tfork {
 void *tf_tcb;
 pid_t *tf_tid;
 void *tf_stack;
};
struct __kbind {
 void *kb_addr;
 size_t kb_size;
};
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
struct nameidata {
 const char *ni_dirp;
 int ni_dirfd;
 enum uio_seg ni_segflg;
 struct vnode *ni_startdir;
 struct vnode *ni_rootdir;
 uint64_t ni_pledge;
 struct vnode *ni_vp;
 struct vnode *ni_dvp;
 size_t ni_pathlen;
 char *ni_next;
 u_long ni_loopcnt;
 struct componentname {
  u_long cn_nameiop;
  u_long cn_flags;
  struct proc *cn_proc;
  struct ucred *cn_cred;
  char *cn_pnbuf;
  char *cn_nameptr;
  long cn_namelen;
  long cn_consume;
 } ni_cnd;
};
void ndinitat(struct nameidata *ndp, u_long op, u_long flags,
    enum uio_seg segflg, int dirfd, const char *namep, struct proc *p);
struct namecache {
 struct { struct namecache *tqe_next; struct namecache **tqe_prev; } nc_lru;
 struct { struct namecache *tqe_next; struct namecache **tqe_prev; } nc_neg;
 struct rb_entry n_rbcache;
 struct { struct namecache *tqe_next; struct namecache **tqe_prev; } nc_me;
 struct vnode *nc_dvp;
 u_long nc_dvpid;
 struct vnode *nc_vp;
 u_long nc_vpid;
 char nc_nlen;
 char nc_name[31];
};
struct namecache_rb_cache;
int namei(struct nameidata *ndp);
int vfs_lookup(struct nameidata *ndp);
int vfs_relookup(struct vnode *dvp, struct vnode **vpp,
        struct componentname *cnp);
void cache_tree_init(struct namecache_rb_cache *);
void cache_purge(struct vnode *);
int cache_lookup(struct vnode *, struct vnode **, struct componentname *);
void cache_enter(struct vnode *, struct vnode *, struct componentname *);
int cache_revlookup(struct vnode *, struct vnode **, char **, char *);
void nchinit(void);
struct mount;
void cache_purgevfs(struct mount *);
extern struct pool namei_pool;
struct nchstats {
 u_int64_t ncs_goodhits;
 u_int64_t ncs_neghits;
 u_int64_t ncs_badhits;
 u_int64_t ncs_falsehits;
 u_int64_t ncs_miss;
 u_int64_t ncs_long;
 u_int64_t ncs_pass2;
 u_int64_t ncs_2passes;
 u_int64_t ncs_revhits;
 u_int64_t ncs_revmiss;
 u_int64_t ncs_dothits;
 u_int64_t ncs_dotdothits;
};
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
struct consdev {
 void (*cn_probe)(struct consdev *);
 void (*cn_init)(struct consdev *);
 int (*cn_getc)(dev_t);
 void (*cn_putc)(dev_t, int);
 void (*cn_pollc)(dev_t, int);
 void (*cn_bell)(dev_t, u_int, u_int, u_int);
 dev_t cn_dev;
 u_int cn_pri;
};
extern struct consdev constab[];
extern struct consdev *cn_tab;
extern struct tty *constty;
extern struct vnode *cn_devvp;
struct knote;
void cninit(void);
int cnopen(dev_t, int, int, struct proc *);
int cnclose(dev_t, int, int, struct proc *);
int cnread(dev_t, struct uio *, int);
int cnwrite(dev_t, struct uio *, int);
int cnioctl(dev_t, u_long, caddr_t, int, struct proc *);
int cnpoll(dev_t, int, struct proc *);
int cnkqfilter(dev_t, struct knote *);
int cngetc(void);
void cnputc(int);
void cnpollc(int);
void cnbell(u_int, u_int, u_int);
void cnrint(void);
void nullcnpollc(dev_t, int);
void random_start(void);
void enqueue_randomness(unsigned int, unsigned int);
void suspend_randomness(void);
void resume_randomness(char *, size_t);
static int ttnread(struct tty *);
static void ttyblock(struct tty *);
void ttyunblock(struct tty *);
static void ttyecho(int, struct tty *);
static void ttyrubo(struct tty *, int);
void ttkqflush(struct klist *klist);
int filt_ttyread(struct knote *kn, long hint);
void filt_ttyrdetach(struct knote *kn);
int filt_ttywrite(struct knote *kn, long hint);
void filt_ttywdetach(struct knote *kn);
void ttystats_init(struct itty **, size_t *);
char ttclos[] = "ttycls";
char ttopen[] = "ttyopn";
char ttybg[] = "ttybg";
char ttyin[] = "ttyin";
char ttyout[] = "ttyout";
u_char const char_type[] = {
 0x00|1, 0x80|1, 0x80|1, 0x00|1, 0x80|1, 0x00|1, 0x00|1, 0x80|1,
 0x80|2, 0x00|4, 0x00|3, 0x80|1, 0x00|5, 0x80|6, 0x80|1, 0x00|1,
 0x80|1, 0x00|1, 0x00|1, 0x80|1, 0x00|1, 0x80|1, 0x80|1, 0x00|1,
 0x00|1, 0x80|1, 0x80|1, 0x00|1, 0x80|1, 0x00|1, 0x00|1, 0x80|1,
 0x80|0, 0x00|0, 0x00|0, 0x80|0, 0x00|0, 0x80|0, 0x80|0, 0x00|0,
 0x00|0, 0x80|0, 0x80|0, 0x00|0, 0x80|0, 0x00|0, 0x00|0, 0x80|0,
 0x00|0 | 0x40, 0x80|0 | 0x40, 0x80|0 | 0x40, 0x00|0 | 0x40, 0x80|0 | 0x40, 0x00|0 | 0x40, 0x00|0 | 0x40, 0x80|0 | 0x40,
 0x80|0 | 0x40, 0x00|0 | 0x40, 0x00|0, 0x80|0, 0x00|0, 0x80|0, 0x80|0, 0x00|0,
 0x80|0, 0x00|0 | 0x40, 0x00|0 | 0x40, 0x80|0 | 0x40, 0x00|0 | 0x40, 0x80|0 | 0x40, 0x80|0 | 0x40, 0x00|0 | 0x40,
 0x00|0 | 0x40, 0x80|0 | 0x40, 0x80|0 | 0x40, 0x00|0 | 0x40, 0x80|0 | 0x40, 0x00|0 | 0x40, 0x00|0 | 0x40, 0x80|0 | 0x40,
 0x00|0 | 0x40, 0x80|0 | 0x40, 0x80|0 | 0x40, 0x00|0 | 0x40, 0x80|0 | 0x40, 0x00|0 | 0x40, 0x00|0 | 0x40, 0x80|0 | 0x40,
 0x80|0 | 0x40, 0x00|0 | 0x40, 0x00|0 | 0x40, 0x80|0, 0x00|0, 0x80|0, 0x80|0, 0x80|0 | 0x40,
 0x00|0, 0x80|0 | 0x40, 0x80|0 | 0x40, 0x00|0 | 0x40, 0x80|0 | 0x40, 0x00|0 | 0x40, 0x00|0 | 0x40, 0x80|0 | 0x40,
 0x80|0 | 0x40, 0x00|0 | 0x40, 0x00|0 | 0x40, 0x80|0 | 0x40, 0x00|0 | 0x40, 0x80|0 | 0x40, 0x80|0 | 0x40, 0x00|0 | 0x40,
 0x80|0 | 0x40, 0x00|0 | 0x40, 0x00|0 | 0x40, 0x80|0 | 0x40, 0x00|0 | 0x40, 0x80|0 | 0x40, 0x80|0 | 0x40, 0x00|0 | 0x40,
 0x00|0 | 0x40, 0x80|0 | 0x40, 0x80|0 | 0x40, 0x00|0, 0x80|0, 0x00|0, 0x00|0, 0x80|1,
 0 | 0x40, 0 | 0x40, 0 | 0x40, 0 | 0x40, 0 | 0x40, 0 | 0x40, 0 | 0x40, 0 | 0x40,
 0 | 0x40, 0 | 0x40, 0 | 0x40, 0 | 0x40, 0 | 0x40, 0 | 0x40, 0 | 0x40, 0 | 0x40,
 0 | 0x40, 0 | 0x40, 0 | 0x40, 0 | 0x40, 0 | 0x40, 0 | 0x40, 0 | 0x40, 0 | 0x40,
 0 | 0x40, 0 | 0x40, 0 | 0x40, 0 | 0x40, 0 | 0x40, 0 | 0x40, 0 | 0x40, 0 | 0x40,
 0 | 0x40, 0 | 0x40, 0 | 0x40, 0 | 0x40, 0 | 0x40, 0 | 0x40, 0 | 0x40, 0 | 0x40,
 0 | 0x40, 0 | 0x40, 0 | 0x40, 0 | 0x40, 0 | 0x40, 0 | 0x40, 0 | 0x40, 0 | 0x40,
 0 | 0x40, 0 | 0x40, 0 | 0x40, 0 | 0x40, 0 | 0x40, 0 | 0x40, 0 | 0x40, 0 | 0x40,
 0 | 0x40, 0 | 0x40, 0 | 0x40, 0 | 0x40, 0 | 0x40, 0 | 0x40, 0 | 0x40, 0 | 0x40,
 0 | 0x40, 0 | 0x40, 0 | 0x40, 0 | 0x40, 0 | 0x40, 0 | 0x40, 0 | 0x40, 0 | 0x40,
 0 | 0x40, 0 | 0x40, 0 | 0x40, 0 | 0x40, 0 | 0x40, 0 | 0x40, 0 | 0x40, 0 | 0x40,
 0 | 0x40, 0 | 0x40, 0 | 0x40, 0 | 0x40, 0 | 0x40, 0 | 0x40, 0 | 0x40, 0 | 0x40,
 0 | 0x40, 0 | 0x40, 0 | 0x40, 0 | 0x40, 0 | 0x40, 0 | 0x40, 0 | 0x40, 0 | 0x40,
 0 | 0x40, 0 | 0x40, 0 | 0x40, 0 | 0x40, 0 | 0x40, 0 | 0x40, 0 | 0x40, 0 | 0x40,
 0 | 0x40, 0 | 0x40, 0 | 0x40, 0 | 0x40, 0 | 0x40, 0 | 0x40, 0 | 0x40, 0 | 0x40,
 0 | 0x40, 0 | 0x40, 0 | 0x40, 0 | 0x40, 0 | 0x40, 0 | 0x40, 0 | 0x40, 0 | 0x40,
 0 | 0x40, 0 | 0x40, 0 | 0x40, 0 | 0x40, 0 | 0x40, 0 | 0x40, 0 | 0x40, 0 | 0x40,
};
struct ttylist_head ttylist;
int tty_count;
int64_t tk_cancc, tk_nin, tk_nout, tk_rawcc;
int
ttyopen(dev_t device, struct tty *tp, struct proc *p)
{
 int s;
 s = _splraise(6);
 tp->t_dev = device;
 if (!((tp->t_state) & (0x00020))) {
  ((tp->t_state) |= (0x00020));
  __builtin_memset((&tp->t_winsize), (0), (sizeof(tp->t_winsize)));
  tp->t_column = 0;
 }
 ((tp->t_state) &= ~(0x00200));
 _splx(s);
 return (0);
}
int
ttyclose(struct tty *tp)
{
 if (constty == tp)
  constty = ((void *)0);
 ttyflush(tp, 0x0001 | 0x0002);
 tp->t_gen++;
 tp->t_pgrp = ((void *)0);
 if (tp->t_session)
  do { if (--(tp->t_session)->s_count == 0) { timeout_del(&(tp->t_session)->s_verauthto); pool_put(&session_pool, (tp->t_session)); } } while ( 0);
 tp->t_session = ((void *)0);
 tp->t_state = 0;
 return (0);
}
int
ttyinput(int c, struct tty *tp)
{
 int iflag, lflag;
 u_char *cc;
 int i, error;
 int s;
 enqueue_randomness(3, (int)(tp->t_dev << 8 | c));
 if (!((tp->t_termios.c_cflag) & (0x00000800)))
  return (0);
 lflag = tp->t_termios.c_lflag;
 s = _splraise(6);
 if (((lflag) & (0x20000000)))
  ttypend(tp);
 _splx(s);
 if (((lflag) & (0x00000100))) {
  ++tk_cancc;
  ++tp->t_cancc;
 } else {
  ++tk_rawcc;
  ++tp->t_rawcc;
 }
 ++tk_nin;
 cc = tp->t_termios.c_cc;
 iflag = tp->t_termios.c_iflag;
 if ((error = (((c) & (0xff000000)))) != 0) {
  ((c) &= ~(0xff000000));
  if (((error) & (0x01000000)) && !c) {
   if (((iflag) & (0x00000001)))
    return (0);
   ttyflush(tp, 0x0001 | 0x0002);
   if (((iflag) & (0x00000002))) {
       pgsignal(tp->t_pgrp, 2, 1);
       goto endcase;
   }
   else if (((iflag) & (0x00000008)))
    goto parmrk;
  } else if ((((error) & (0x02000000)) && ((iflag) & (0x00000010))) ||
      ((error) & (0x01000000))) {
   if (((iflag) & (0x00000004)))
    goto endcase;
   else if (((iflag) & (0x00000008))) {
parmrk: (void)putc(0377 | 0x00000100, &tp->t_rawq);
    if (((iflag) & (0x00000020)) || c != 0377)
     (void)putc(0 | 0x00000100, &tp->t_rawq);
    (void)putc(c | 0x00000100, &tp->t_rawq);
    goto endcase;
   } else
    c = 0;
  }
 }
 if (c == 0377 && !((iflag) & (0x00000020)) && ((iflag) & (0x00000008)))
  goto parmrk;
 if (((iflag) & (0x00000400)) || ((tp->t_termios.c_cflag) & ((0x00100000|0x00010000))))
  ttyblock(tp);
 if (!((tp->t_state) & (0x08000)) && ((iflag) & (0x00000020)))
  ((c) &= ~(0x80));
 if (!((lflag) & (0x00000800))) {
  if (((tp->t_state) & (0x04000))) {
   ((c) |= (0x00000100));
   ((tp->t_state) &= ~(0x04000));
  }
  if (((lflag) & (0x00000400))) {
   if ((c == cc[14] ? cc[14] != (0377) : 0)) {
    if (((lflag) & (0x00000008))) {
     if (((lflag) & (0x00000002))) {
      (void)ttyoutput('^', tp);
      (void)ttyoutput('\b', tp);
     } else
      ttyecho(c, tp);
    }
    ((tp->t_state) |= (0x04000));
    goto endcase;
   }
   if ((c == cc[15] ? cc[15] != (0377) : 0)) {
    if (((lflag) & (0x00800000)))
     ((tp->t_termios.c_lflag) &= ~(0x00800000));
    else {
     ttyflush(tp, 0x0002);
     ttyecho(c, tp);
     if (tp->t_rawq.c_cc + tp->t_canq.c_cc)
      ttyretype(tp);
     ((tp->t_termios.c_lflag) |= (0x00800000));
    }
    goto startoutput;
   }
  }
  if (((lflag) & (0x00000080))) {
   if ((c == cc[8] ? cc[8] != (0377) : 0) || (c == cc[9] ? cc[9] != (0377) : 0)) {
    if (!((lflag) & (0x80000000)))
     ttyflush(tp, 0x0001 | 0x0002);
    ttyecho(c, tp);
    pgsignal(tp->t_pgrp,
        (c == cc[8] ? cc[8] != (0377) : 0) ? 2 : 3, 1);
    goto endcase;
   }
   if ((c == cc[10] ? cc[10] != (0377) : 0)) {
    if (!((lflag) & (0x80000000)))
     ttyflush(tp, 0x0001);
    ttyecho(c, tp);
    pgsignal(tp->t_pgrp, 18, 1);
    goto endcase;
   }
  }
  if (((iflag) & (0x00000200))) {
   if ((c == cc[13] ? cc[13] != (0377) : 0)) {
    if (!((tp->t_state) & (0x00100))) {
     ((tp->t_state) |= (0x00100));
     (*cdevsw[((int32_t)(((u_int32_t)(tp->t_dev) >> 8) & 0xff))].d_stop)(tp,
        0);
     return (0);
    }
    if (!(c == cc[12] ? cc[12] != (0377) : 0))
     return (0);
    goto endcase;
   }
   if ((c == cc[12] ? cc[12] != (0377) : 0))
    goto restartoutput;
  }
  if (c == '\r') {
   if (((iflag) & (0x00000080)))
    goto endcase;
   else if (((iflag) & (0x00000100)))
    c = '\n';
  } else if (c == '\n' && ((iflag) & (0x00000040)))
   c = '\r';
 }
 if (!((tp->t_termios.c_lflag) & (0x00000800)) && ((lflag) & (0x00000100))) {
  if (((lflag) & (0x01000000)) && ((iflag) & (0x00001000))) {
   if (((tp->t_state) & (0x00800))) {
    ((tp->t_state) &= ~(0x00800));
    switch (c) {
    case '\'':
     c = '`';
     break;
    case '!':
     c = '|';
     break;
    case '^':
     c = '~';
     break;
    case '(':
     c = '{';
     break;
    case ')':
     c = '}';
     break;
    }
   }
   else if (c == '\\') {
    ((tp->t_state) |= (0x00800));
    goto endcase;
   }
   else if (((c) >= 'A' && (c) <= 'Z'))
    c = ((c) - 'A' + 'a');
  }
  else if (((iflag) & (0x00001000)) && ((c) >= 'A' && (c) <= 'Z'))
   c = ((c) - 'A' + 'a');
  if ((c == cc[3] ? cc[3] != (0377) : 0)) {
   if (tp->t_rawq.c_cc)
    ttyrub(unputc(&tp->t_rawq), tp);
   goto endcase;
  }
  if ((c == cc[5] ? cc[5] != (0377) : 0)) {
   if (((lflag) & (0x00000001)) &&
       tp->t_rawq.c_cc == tp->t_rocount &&
       !((lflag) & (0x00000020)))
    while (tp->t_rawq.c_cc)
     ttyrub(unputc(&tp->t_rawq), tp);
   else {
    ttyecho(c, tp);
    if (((lflag) & (0x00000004)) ||
        ((lflag) & (0x00000001)))
     ttyecho('\n', tp);
    { if ((&tp->t_rawq)->c_cc) ndflush(&tp->t_rawq, (&tp->t_rawq)->c_cc); };
    tp->t_rocount = 0;
   }
   ((tp->t_state) &= ~((0x00800 | 0x01000 | 0x02000 | 0x04000 | 0x08000)));
   goto endcase;
  }
  if ((c == cc[4] ? cc[4] != (0377) : 0) && ((lflag) & (0x00000400))) {
   int alt = ((lflag) & (0x00000200));
   int ctype;
   while ((c = unputc(&tp->t_rawq)) == ' ' || c == '\t')
    ttyrub(c, tp);
   if (c == -1)
    goto endcase;
   ttyrub(c, tp);
   c = unputc(&tp->t_rawq);
   if (c == -1)
    goto endcase;
   if (c == ' ' || c == '\t') {
    (void)putc(c, &tp->t_rawq);
    goto endcase;
   }
   ctype = (char_type[(c) & 0x000000ff] & 0x40);
   do {
    ttyrub(c, tp);
    c = unputc(&tp->t_rawq);
    if (c == -1)
     goto endcase;
   } while (c != ' ' && c != '\t' &&
       (alt == 0 || (char_type[(c) & 0x000000ff] & 0x40) == ctype));
   (void)putc(c, &tp->t_rawq);
   goto endcase;
  }
  if ((c == cc[6] ? cc[6] != (0377) : 0) && ((lflag) & (0x00000400))) {
   ttyretype(tp);
   goto endcase;
  }
  if ((c == cc[18] ? cc[18] != (0377) : 0) && ((lflag) & (0x00000400))) {
   if (((lflag) & (0x00000080)))
    pgsignal(tp->t_pgrp, 29, 1);
   if (!((lflag) & (0x02000000)))
    ttyinfo(tp);
   goto endcase;
  }
 }
 if (tp->t_rawq.c_cc + tp->t_canq.c_cc >= (tp)->t_qlen) {
  if (((iflag) & (0x00002000))) {
   if (tp->t_outq.c_cc < tp->t_hiwat)
    (void)ttyoutput(('g'&037), tp);
  } else
   ttyflush(tp, 0x0001 | 0x0002);
  goto endcase;
 }
 if (putc(c, &tp->t_rawq) >= 0) {
  if (!((lflag) & (0x00000100))) {
   ttwakeup(tp);
   ttyecho(c, tp);
   goto endcase;
  }
  if (((c) == '\n' || (((c) == cc[0] || (c) == cc[1] || ((c) == cc[2] && (lflag & 0x00000400))) && (c) != (0377)))) {
   tp->t_rocount = 0;
   catq(&tp->t_rawq, &tp->t_canq);
   ttwakeup(tp);
  } else if (tp->t_rocount++ == 0)
   tp->t_rocol = tp->t_column;
  if (((tp->t_state) & (0x02000))) {
   ((tp->t_state) &= ~(0x02000));
   (void)ttyoutput('/', tp);
  }
  i = tp->t_column;
  ttyecho(c, tp);
  if ((c == cc[0] ? cc[0] != (0377) : 0) && ((lflag) & (0x00000008))) {
   i = min(2, tp->t_column - i);
   while (i > 0) {
    (void)ttyoutput('\b', tp);
    i--;
   }
  }
 }
endcase:
 if (((tp->t_state) & (0x00100)) &&
     !((iflag) & (0x00000800)) && cc[12] != cc[13])
  return (0);
restartoutput:
 ((tp->t_termios.c_lflag) &= ~(0x00800000));
 ((tp->t_state) &= ~(0x00100));
startoutput:
 return (ttstart(tp));
}
int
ttyoutput(int c, struct tty *tp)
{
 long oflag;
 int col, notout, s, c2;
 oflag = tp->t_termios.c_oflag;
 if (!((oflag) & (0x00000001))) {
  tk_nout++;
  tp->t_outcc++;
  if (!((tp->t_termios.c_lflag) & (0x00800000)) && putc(c, &tp->t_outq))
   return (c);
  return (-1);
 }
 ((c) &= ~(~0x000000ff));
 if (c == '\t' &&
     ((oflag) & (0x00000004)) && !((tp->t_termios.c_lflag) & (0x00000800))) {
  c = 8 - (tp->t_column & 7);
  if (((tp->t_termios.c_lflag) & (0x00800000))) {
   notout = 0;
  } else {
   s = _splraise(6);
   notout = b_to_q("        ", c, &tp->t_outq);
   c -= notout;
   tk_nout += c;
   tp->t_outcc += c;
   _splx(s);
  }
  tp->t_column += c;
  return (notout ? '\t' : -1);
 }
 if (c == ('d'&037) && ((oflag) & (0x00000008)))
  return (-1);
 if (c == '\n' && ((tp->t_termios.c_oflag) & (0x00000002))) {
  tk_nout++;
  tp->t_outcc++;
  if (!((tp->t_termios.c_lflag) & (0x00800000)) && putc('\r', &tp->t_outq))
   return (c);
  tp->t_column = 0;
 }
 else if (c == '\r' && ((tp->t_termios.c_oflag) & (0x00000010)))
  c = '\n';
 if (((tp->t_termios.c_oflag) & (0x00000020)) && ((c) >= 'a' && (c) <= 'z'))
  c = ((c) - 'a' + 'A');
 else if (((tp->t_termios.c_oflag) & (0x00000020)) && ((tp->t_termios.c_lflag) & (0x01000000))) {
  c2 = c;
  switch (c) {
  case '`':
   c2 = '\'';
   break;
  case '|':
   c2 = '!';
   break;
  case '~':
   c2 = '^';
   break;
  case '{':
   c2 = '(';
   break;
  case '}':
   c2 = ')';
   break;
  }
  if (c == '\\' || ((c) >= 'A' && (c) <= 'Z') || c != c2) {
   tk_nout++;
   tp->t_outcc++;
   if (putc('\\', &tp->t_outq))
    return (c);
   c = c2;
  }
 }
 if (((tp->t_termios.c_oflag) & (0x00000040)) && c == '\r' && tp->t_column == 0)
  return (-1);
 tk_nout++;
 tp->t_outcc++;
 if (!((tp->t_termios.c_lflag) & (0x00800000)) && putc(c, &tp->t_outq))
  return (c);
 col = tp->t_column;
 switch ((char_type[c] & 0x3f)) {
 case 2:
  if (col > 0)
   --col;
  break;
 case 1:
  break;
 case 3:
  if (((tp->t_termios.c_oflag) & (0x00000080)) || ((tp->t_termios.c_oflag) & (0x00000010)))
   col = 0;
  break;
 case 6:
  col = 0;
  break;
 case 0:
  ++col;
  break;
 case 4:
  col = (col + 8) & ~7;
  break;
 }
 tp->t_column = col;
 return (-1);
}
int
ttioctl(struct tty *tp, u_long cmd, caddr_t data, int flag, struct proc *p)
{
 extern int nlinesw;
 struct process *pr = p->p_p;
 int s, error;
 switch (cmd) {
 case ((unsigned long)0x80000000 | ((sizeof(int) & 0x1fff) << 16) | ((('t')) << 8) | ((16))):
 case ((unsigned long)0x20000000 | ((0 & 0x1fff) << 16) | ((('t')) << 8) | ((94))):
 case ((unsigned long)0x20000000 | ((0 & 0x1fff) << 16) | ((('t')) << 8) | ((123))):
 case ((unsigned long)0x20000000 | ((0 & 0x1fff) << 16) | ((('t')) << 8) | ((122))):
 case ((unsigned long)0x80000000 | ((sizeof(struct termios) & 0x1fff) << 16) | ((('t')) << 8) | ((20))):
 case ((unsigned long)0x80000000 | ((sizeof(int) & 0x1fff) << 16) | ((('t')) << 8) | ((27))):
 case ((unsigned long)0x80000000 | ((sizeof(struct termios) & 0x1fff) << 16) | ((('t')) << 8) | ((22))):
 case ((unsigned long)0x80000000 | ((sizeof(struct termios) & 0x1fff) << 16) | ((('t')) << 8) | ((21))):
 case ((unsigned long)0x80000000 | ((sizeof(int) & 0x1fff) << 16) | ((('t')) << 8) | ((118))):
 case ((unsigned long)0x20000000 | ((0 & 0x1fff) << 16) | ((('t')) << 8) | ((101))):
 case ((unsigned long)0x80000000 | ((sizeof(struct winsize) & 0x1fff) << 16) | ((('t')) << 8) | ((103))):
  while (((((pr))->ps_pgrp->pg_session == ((tp))->t_session && ((pr))->ps_flags & 0x00000001) && (pr)->ps_pgrp != (tp)->t_pgrp) &&
      (pr->ps_flags & 0x00000040) == 0 &&
      (pr->ps_sigacts->ps_sigignore & (1U << ((22)-1))) == 0 &&
      (p->p_sigmask & (1U << ((22)-1))) == 0) {
   if (pr->ps_pgrp->pg_jobc == 0)
    return (5);
   pgsignal(pr->ps_pgrp, 22, 1);
   error = ttysleep(tp, &lbolt, 26 | 0x100,
       ttybg, 0);
   if (error)
    return (error);
  }
  break;
 }
 switch (cmd) {
 case ((unsigned long)0x80000000 | ((sizeof(int) & 0x1fff) << 16) | ((('f')) << 8) | ((125))):
  s = _splraise(6);
  if (*(int *)data)
   ((tp->t_state) |= (0x00002));
  else
   ((tp->t_state) &= ~(0x00002));
  _splx(s);
  break;
 case ((unsigned long)0x80000000 | ((sizeof(int) & 0x1fff) << 16) | ((('f')) << 8) | ((126))):
  break;
 case ((unsigned long)0x40000000 | ((sizeof(int) & 0x1fff) << 16) | ((('f')) << 8) | ((127))):
  s = _splraise(6);
  *(int *)data = ttnread(tp);
  _splx(s);
  break;
 case ((unsigned long)0x20000000 | ((0 & 0x1fff) << 16) | ((('t')) << 8) | ((13))):
  s = _splraise(6);
  ((tp->t_state) |= (0x00400));
  _splx(s);
  break;
 case ((unsigned long)0x80000000 | ((sizeof(int) & 0x1fff) << 16) | ((('t')) << 8) | ((16))): {
  int flags = *(int *)data;
  if (flags == 0)
   flags = 0x0001 | 0x0002;
  else
   flags &= 0x0001 | 0x0002;
  ttyflush(tp, flags);
  break;
 }
 case ((unsigned long)0x80000000 | ((sizeof(int) & 0x1fff) << 16) | ((('t')) << 8) | ((98))): {
  if (*(int *)data) {
   struct nameidata nid;
   if (constty != ((void *)0) && constty != tp &&
       ((constty->t_state) & (0x00008 | 0x00020)) ==
       (0x00008 | 0x00020))
    return (16);
   ndinitat(&nid, 0, 0x0040, UIO_SYSSPACE, -100, "/dev/console", p);
   nid.ni_pledge = 0x0000000000000001ULL | 0x0000000000000002ULL;
   error = namei(&nid);
   if (error)
    return (error);
   vn_lock(nid.ni_vp, 0x0001UL | 0x2000UL, p);
   error = VOP_ACCESS(nid.ni_vp, 00400, p->p_ucred, p);
   VOP_UNLOCK(nid.ni_vp, p);
   vrele(nid.ni_vp);
   if (error)
    return (error);
   constty = tp;
  } else if (tp == constty)
   constty = ((void *)0);
  break;
 }
 case ((unsigned long)0x20000000 | ((0 & 0x1fff) << 16) | ((('t')) << 8) | ((94))):
  if ((error = ttywait(tp)) != 0)
   return (error);
  break;
 case ((unsigned long)0x40000000 | ((sizeof(struct termios) & 0x1fff) << 16) | ((('t')) << 8) | ((19))): {
  struct termios *t = (struct termios *)data;
  __builtin_memcpy((t), (&tp->t_termios), (sizeof(struct termios)));
  break;
 }
 case ((unsigned long)0x40000000 | ((sizeof(int) & 0x1fff) << 16) | ((('t')) << 8) | ((26))):
  *(int *)data = tp->t_line;
  break;
 case ((unsigned long)0x40000000 | ((sizeof(struct winsize) & 0x1fff) << 16) | ((('t')) << 8) | ((104))):
  *(struct winsize *)data = tp->t_winsize;
  break;
 case ((unsigned long)0x40000000 | ((sizeof(struct timeval) & 0x1fff) << 16) | ((('t')) << 8) | ((91))):
  s = _splraise(6);
  *(struct timeval *)data = tp->t_tv;
  _splx(s);
  break;
 case ((unsigned long)0x40000000 | ((sizeof(int) & 0x1fff) << 16) | ((('t')) << 8) | ((119))):
  if (!((pr)->ps_pgrp->pg_session == (tp)->t_session && (pr)->ps_flags & 0x00000001) && suser(p, 0))
   return (25);
  *(int *)data = tp->t_pgrp ? tp->t_pgrp->pg_id : (99999 +1);
  break;
 case ((unsigned long)0x40000000 | ((sizeof(int) & 0x1fff) << 16) | ((('t')) << 8) | ((99))):
  if (!((pr)->ps_pgrp->pg_session == (tp)->t_session && (pr)->ps_flags & 0x00000001))
   return (25);
  *(int *)data = tp->t_session->s_leader->ps_pid;
  break;
 case ((unsigned long)0x20000000 | ((0 & 0x1fff) << 16) | ((('t')) << 8) | ((14))):
  s = _splraise(6);
  ((tp->t_state) &= ~(0x00400));
  _splx(s);
  break;
 case ((unsigned long)0x40000000 | ((sizeof(int) & 0x1fff) << 16) | ((('t')) << 8) | ((115))):
  *(int *)data = tp->t_outq.c_cc;
  break;
 case ((unsigned long)0x80000000 | ((sizeof(struct termios) & 0x1fff) << 16) | ((('t')) << 8) | ((20))):
 case ((unsigned long)0x80000000 | ((sizeof(struct termios) & 0x1fff) << 16) | ((('t')) << 8) | ((21))):
 case ((unsigned long)0x80000000 | ((sizeof(struct termios) & 0x1fff) << 16) | ((('t')) << 8) | ((22))): {
  struct termios *t = (struct termios *)data;
  s = _splraise(6);
  if (cmd == ((unsigned long)0x80000000 | ((sizeof(struct termios) & 0x1fff) << 16) | ((('t')) << 8) | ((21))) || cmd == ((unsigned long)0x80000000 | ((sizeof(struct termios) & 0x1fff) << 16) | ((('t')) << 8) | ((22)))) {
   if ((error = ttywait(tp)) != 0) {
    _splx(s);
    return (error);
   }
   if (cmd == ((unsigned long)0x80000000 | ((sizeof(struct termios) & 0x1fff) << 16) | ((('t')) << 8) | ((22))))
    ttyflush(tp, 0x0001);
  }
  if (!((t->c_cflag) & (0x00000001))) {
   if (t->c_ispeed < 0 || t->c_ospeed < 0) {
    _splx(s);
    return (22);
   }
   if (tp->t_param && (error = (*tp->t_param)(tp, t))) {
    _splx(s);
    return (error);
   } else {
    if (!((tp->t_state) & (0x00008)) &&
        ((tp->t_termios.c_cflag) & (0x00008000)) &&
        !((t->c_cflag) & (0x00008000))) {
     ((tp->t_state) &= ~(0x00020));
     ((tp->t_state) |= (0x00200));
     ttwakeup(tp);
    }
    tp->t_termios.c_cflag = t->c_cflag;
    tp->t_termios.c_ispeed = t->c_ispeed;
    tp->t_termios.c_ospeed = t->c_ospeed;
    if (t->c_ospeed == 0 && tp->t_session &&
        tp->t_session->s_leader)
     ptsignal((tp->t_session->s_leader)->ps_mainproc, (1), SPROCESS);
   }
   ttsetwater(tp);
  }
  if (cmd != ((unsigned long)0x80000000 | ((sizeof(struct termios) & 0x1fff) << 16) | ((('t')) << 8) | ((22)))) {
   if (((t->c_lflag) & (0x00000100)) !=
       ((tp->t_termios.c_lflag) & (0x00000100))) {
    if (((t->c_lflag) & (0x00000100))) {
     ((tp->t_termios.c_lflag) |= (0x20000000));
     ttwakeup(tp);
    } else {
     struct clist tq;
     catq(&tp->t_rawq, &tp->t_canq);
     tq = tp->t_rawq;
     tp->t_rawq = tp->t_canq;
     tp->t_canq = tq;
     ((tp->t_termios.c_lflag) &= ~(0x20000000));
    }
   }
  }
  tp->t_termios.c_iflag = t->c_iflag;
  tp->t_termios.c_oflag = t->c_oflag;
  if (((tp->t_termios.c_lflag) & (0x00000800)))
   ((t->c_lflag) |= (0x00000800));
  else
   ((t->c_lflag) &= ~(0x00000800));
  tp->t_termios.c_lflag = t->c_lflag | ((tp->t_termios.c_lflag) & (0x20000000));
  __builtin_memcpy((tp->t_termios.c_cc), (t->c_cc), (sizeof(t->c_cc)));
  _splx(s);
  break;
 }
 case ((unsigned long)0x80000000 | ((sizeof(int) & 0x1fff) << 16) | ((('t')) << 8) | ((27))): {
  int t = *(int *)data;
  dev_t device = tp->t_dev;
  if ((u_int)t >= nlinesw)
   return (6);
  if (t != tp->t_line) {
   s = _splraise(6);
   (*linesw[tp->t_line].l_close)(tp, flag, p);
   error = (*linesw[t].l_open)(device, tp, p);
   if (error) {
    (*linesw[tp->t_line].l_open)(device, tp, p);
    _splx(s);
    return (error);
   }
   tp->t_line = t;
   _splx(s);
  }
  break;
 }
 case ((unsigned long)0x20000000 | ((0 & 0x1fff) << 16) | ((('t')) << 8) | ((110))):
  s = _splraise(6);
  if (((tp->t_state) & (0x00100)) ||
      ((tp->t_termios.c_lflag) & (0x00800000))) {
   ((tp->t_termios.c_lflag) &= ~(0x00800000));
   ((tp->t_state) &= ~(0x00100));
   ttstart(tp);
  }
  _splx(s);
  break;
 case ((unsigned long)0x80000000 | ((sizeof(char) & 0x1fff) << 16) | ((('t')) << 8) | ((114))):
  return (5);
  break;
 case ((unsigned long)0x20000000 | ((0 & 0x1fff) << 16) | ((('t')) << 8) | ((111))):
  s = _splraise(6);
  if (!((tp->t_state) & (0x00100))) {
   ((tp->t_state) |= (0x00100));
   (*cdevsw[((int32_t)(((u_int32_t)(tp->t_dev) >> 8) & 0xff))].d_stop)(tp, 0);
  }
  _splx(s);
  break;
 case ((unsigned long)0x20000000 | ((0 & 0x1fff) << 16) | ((('t')) << 8) | ((97))):
  if (!((pr)->ps_pgrp->pg_session->s_leader == (pr)) ||
      ((pr->ps_pgrp->pg_session->s_ttyvp || tp->t_session) &&
       (tp->t_session != pr->ps_pgrp->pg_session)))
   return (1);
  if (tp->t_session)
   do { if (--(tp->t_session)->s_count == 0) { timeout_del(&(tp->t_session)->s_verauthto); pool_put(&session_pool, (tp->t_session)); } } while ( 0);
  ((pr->ps_pgrp->pg_session)->s_count++);
  tp->t_session = pr->ps_pgrp->pg_session;
  tp->t_pgrp = pr->ps_pgrp;
  pr->ps_pgrp->pg_session->s_ttyp = tp;
  atomic_setbits_int(&pr->ps_flags, 0x00000001);
  break;
 case ((unsigned long)0x80000000 | ((sizeof(int) & 0x1fff) << 16) | ((('t')) << 8) | ((118))): {
  struct pgrp *pgrp = pgfind(*(int *)data);
  if (!((pr)->ps_pgrp->pg_session == (tp)->t_session && (pr)->ps_flags & 0x00000001))
   return (25);
  else if (pgrp == ((void *)0))
   return (22);
  else if (pgrp->pg_session != pr->ps_pgrp->pg_session)
   return (1);
  tp->t_pgrp = pgrp;
  break;
 }
 case ((unsigned long)0x20000000 | ((0 & 0x1fff) << 16) | ((('t')) << 8) | ((101))):
  ttyinfo(tp);
  break;
 case ((unsigned long)0x80000000 | ((sizeof(struct winsize) & 0x1fff) << 16) | ((('t')) << 8) | ((103))):
  if (__builtin_bcmp(((caddr_t)&tp->t_winsize), (data), (sizeof (struct winsize)))) {
   tp->t_winsize = *(struct winsize *)data;
   pgsignal(tp->t_pgrp, 28, 1);
  }
  break;
 case ((unsigned long)0x80000000 | ((sizeof(struct tstamps) & 0x1fff) << 16) | ((('t')) << 8) | ((90))): {
  struct tstamps *ts = (struct tstamps *)data;
  s = _splraise(6);
  ((tp->t_flags) &= ~(0x10000));
  ((tp->t_flags) &= ~(0x40000));
  ((tp->t_flags) &= ~(0x20000));
  ((tp->t_flags) &= ~(0x80000));
  if (((ts->ts_set) & (0100)))
   ((tp->t_flags) |= (0x10000));
  if (((ts->ts_set) & (0040)))
   ((tp->t_flags) |= (0x40000));
  if (((ts->ts_clr) & (0100)))
   ((tp->t_flags) |= (0x20000));
  if (((ts->ts_clr) & (0040)))
   ((tp->t_flags) |= (0x80000));
  _splx(s);
  break;
 }
 default:
  return (-1);
 }
 return (0);
}
int
ttpoll(dev_t device, int events, struct proc *p)
{
 struct tty *tp;
 int revents, s;
 tp = (*cdevsw[((int32_t)(((u_int32_t)(device) >> 8) & 0xff))].d_tty)(device);
 revents = 0;
 s = _splraise(6);
 if (events & (0x0001 | 0x0040)) {
  if (ttnread(tp) > 0 || (!((tp->t_termios.c_cflag) & (0x00008000)) &&
      !((tp->t_state) & (0x00008))))
   revents |= events & (0x0001 | 0x0040);
 }
 if (!((tp->t_termios.c_cflag) & (0x00008000)) && !((tp->t_state) & (0x00008))) {
  revents |= 0x0010;
 } else if (events & (0x0004 | 0x0004)) {
  if (tp->t_outq.c_cc <= tp->t_lowat)
   revents |= events & (0x0004 | 0x0004);
 }
 if (revents == 0) {
  if (events & (0x0001 | 0x0040))
   selrecord(p, &tp->t_rsel);
  if (events & (0x0004 | 0x0004))
   selrecord(p, &tp->t_wsel);
 }
 _splx(s);
 return (revents);
}
struct filterops ttyread_filtops =
 { 1, ((void *)0), filt_ttyrdetach, filt_ttyread };
struct filterops ttywrite_filtops =
 { 1, ((void *)0), filt_ttywdetach, filt_ttywrite };
int
ttkqfilter(dev_t dev, struct knote *kn)
{
 struct tty *tp = (*cdevsw[((int32_t)(((u_int32_t)(dev) >> 8) & 0xff))].d_tty)(dev);
 struct klist *klist;
 int s;
 switch (kn->kn_kevent.filter) {
 case (-1):
  klist = &tp->t_rsel.si_note;
  kn->kn_fop = &ttyread_filtops;
  break;
 case (-2):
  klist = &tp->t_wsel.si_note;
  kn->kn_fop = &ttywrite_filtops;
  break;
 default:
  return (22);
 }
 kn->kn_hook = (caddr_t)((u_long)dev);
 s = _splraise(6);
 do { (kn)->kn_selnext.sle_next = (klist)->slh_first; (klist)->slh_first = (kn); } while (0);
 _splx(s);
 return (0);
}
void
ttkqflush(struct klist *klist)
{
 struct knote *kn, *kn1;
 for ((kn) = ((klist)->slh_first); (kn) && ((kn1) = ((kn)->kn_selnext.sle_next), 1); (kn) = (kn1)) {
  do { if ((klist)->slh_first == (kn)) { do { ((klist))->slh_first = ((klist))->slh_first->kn_selnext.sle_next; } while (0); } else { struct knote *curelm = (klist)->slh_first; while (curelm->kn_selnext.sle_next != (kn)) curelm = curelm->kn_selnext.sle_next; curelm->kn_selnext.sle_next = curelm->kn_selnext.sle_next->kn_selnext.sle_next; } ((kn)->kn_selnext.sle_next) = ((void *)-1); } while (0);
  kn->kn_hook = (caddr_t)((u_long)(dev_t)(-1));
  kn->kn_kevent.flags |= 0x8000;
  knote_activate(kn);
 }
}
void
filt_ttyrdetach(struct knote *kn)
{
 dev_t dev = (dev_t)((u_long)kn->kn_hook);
 struct tty *tp;
 int s;
 if (dev == (dev_t)(-1))
  return;
 tp = (*cdevsw[((int32_t)(((u_int32_t)(dev) >> 8) & 0xff))].d_tty)(dev);
 s = _splraise(6);
 do { if ((&tp->t_rsel.si_note)->slh_first == (kn)) { do { ((&tp->t_rsel.si_note))->slh_first = ((&tp->t_rsel.si_note))->slh_first->kn_selnext.sle_next; } while (0); } else { struct knote *curelm = (&tp->t_rsel.si_note)->slh_first; while (curelm->kn_selnext.sle_next != (kn)) curelm = curelm->kn_selnext.sle_next; curelm->kn_selnext.sle_next = curelm->kn_selnext.sle_next->kn_selnext.sle_next; } ((kn)->kn_selnext.sle_next) = ((void *)-1); } while (0);
 _splx(s);
}
int
filt_ttyread(struct knote *kn, long hint)
{
 dev_t dev = (dev_t)((u_long)kn->kn_hook);
 struct tty *tp;
 int s;
 if (dev == (dev_t)(-1)) {
  kn->kn_kevent.flags |= 0x8000;
  return (1);
 }
 tp = (*cdevsw[((int32_t)(((u_int32_t)(dev) >> 8) & 0xff))].d_tty)(dev);
 s = _splraise(6);
 kn->kn_kevent.data = ttnread(tp);
 _splx(s);
 if (!((tp->t_termios.c_cflag) & (0x00008000)) && !((tp->t_state) & (0x00008))) {
  kn->kn_kevent.flags |= 0x8000;
  return (1);
 }
 return (kn->kn_kevent.data > 0);
}
void
filt_ttywdetach(struct knote *kn)
{
 dev_t dev = (dev_t)((u_long)kn->kn_hook);
 struct tty *tp;
 int s;
 if (dev == (dev_t)(-1))
  return;
 tp = (*cdevsw[((int32_t)(((u_int32_t)(dev) >> 8) & 0xff))].d_tty)(dev);
 s = _splraise(6);
 do { if ((&tp->t_wsel.si_note)->slh_first == (kn)) { do { ((&tp->t_wsel.si_note))->slh_first = ((&tp->t_wsel.si_note))->slh_first->kn_selnext.sle_next; } while (0); } else { struct knote *curelm = (&tp->t_wsel.si_note)->slh_first; while (curelm->kn_selnext.sle_next != (kn)) curelm = curelm->kn_selnext.sle_next; curelm->kn_selnext.sle_next = curelm->kn_selnext.sle_next->kn_selnext.sle_next; } ((kn)->kn_selnext.sle_next) = ((void *)-1); } while (0);
 _splx(s);
}
int
filt_ttywrite(struct knote *kn, long hint)
{
 dev_t dev = (dev_t)((u_long)kn->kn_hook);
 struct tty *tp;
 int canwrite, s;
 if (dev == (dev_t)(-1)) {
  kn->kn_kevent.flags |= 0x8000;
  return (1);
 }
 tp = (*cdevsw[((int32_t)(((u_int32_t)(dev) >> 8) & 0xff))].d_tty)(dev);
 s = _splraise(6);
 kn->kn_kevent.data = tp->t_outq.c_cn - tp->t_outq.c_cc;
 canwrite = (tp->t_outq.c_cc <= tp->t_lowat);
 _splx(s);
 return (canwrite);
}
static int
ttnread(struct tty *tp)
{
 int nread;
 do { if (splassert_ctl > 0) { splassert_check(6, __func__); } } while (0);
 if (((tp->t_termios.c_lflag) & (0x20000000)))
  ttypend(tp);
 nread = tp->t_canq.c_cc;
 if (!((tp->t_termios.c_lflag) & (0x00000100))) {
  nread += tp->t_rawq.c_cc;
  if (nread < tp->t_termios.c_cc[16] && !tp->t_termios.c_cc[17])
   nread = 0;
 }
 return (nread);
}
int
ttywait(struct tty *tp)
{
 int error, s;
 error = 0;
 s = _splraise(6);
 while ((tp->t_outq.c_cc || ((tp->t_state) & (0x00004))) &&
     (((tp->t_state) & (0x00008)) || ((tp->t_termios.c_cflag) & (0x00008000))) &&
     tp->t_oproc) {
  (*tp->t_oproc)(tp);
  if ((tp->t_outq.c_cc || ((tp->t_state) & (0x00004))) &&
      (((tp->t_state) & (0x00008)) || ((tp->t_termios.c_cflag) & (0x00008000)))
      && tp->t_oproc) {
   ((tp->t_state) |= (0x00001));
   error = ttysleep(tp, &tp->t_outq, 26 | 0x100, ttyout, 0);
   if (error)
    break;
  } else
   break;
 }
 _splx(s);
 return (error);
}
int
ttywflush(struct tty *tp)
{
 int error;
 if ((error = ttywait(tp)) == 0)
  ttyflush(tp, 0x0001);
 return (error);
}
void
ttyflush(struct tty *tp, int rw)
{
 int s;
 s = _splraise(6);
 if (rw & 0x0001) {
  { if ((&tp->t_canq)->c_cc) ndflush(&tp->t_canq, (&tp->t_canq)->c_cc); };
  { if ((&tp->t_rawq)->c_cc) ndflush(&tp->t_rawq, (&tp->t_rawq)->c_cc); };
  tp->t_rocount = 0;
  tp->t_rocol = 0;
  ((tp->t_state) &= ~((0x00800 | 0x01000 | 0x02000 | 0x04000 | 0x08000)));
  ttyunblock(tp);
  ttwakeup(tp);
 }
 if (rw & 0x0002) {
  ((tp->t_state) &= ~(0x00100));
  (*cdevsw[((int32_t)(((u_int32_t)(tp->t_dev) >> 8) & 0xff))].d_stop)(tp, rw);
  { if ((&tp->t_outq)->c_cc) ndflush(&tp->t_outq, (&tp->t_outq)->c_cc); };
  wakeup((caddr_t)&tp->t_outq);
  selwakeup(&tp->t_wsel);
 }
 _splx(s);
}
void
ttychars(struct tty *tp)
{
 __builtin_memcpy((tp->t_termios.c_cc), (ttydefchars), (sizeof(ttydefchars)));
}
static void
ttyblock(struct tty *tp)
{
 int total;
 total = tp->t_rawq.c_cc + tp->t_canq.c_cc;
 if (tp->t_rawq.c_cc > (tp)->t_qlen) {
  ttyflush(tp, 0x0001 | 0x0002);
  ((tp->t_state) &= ~(0x00040));
 }
 if ((total >= (tp)->t_qlen / 2 &&
      !((tp->t_state) & (0x00040)) &&
      !((tp->t_termios.c_lflag) & (0x00000100))) || tp->t_canq.c_cc > 0) {
  if (((tp->t_termios.c_iflag) & (0x00000400)) &&
      tp->t_termios.c_cc[13] != (0377) &&
      putc(tp->t_termios.c_cc[13], &tp->t_outq) == 0) {
   ((tp->t_state) |= (0x00040));
   ttstart(tp);
  }
  if (((tp->t_termios.c_cflag) & ((0x00100000|0x00010000))) && tp->t_hwiflow &&
      (*tp->t_hwiflow)(tp, 1) != 0)
   ((tp->t_state) |= (0x00040));
 }
}
void
ttrstrt(void *tp_arg)
{
 struct tty *tp;
 int s;
 if (tp_arg == ((void *)0))
  panic("ttrstrt");
 tp = tp_arg;
 s = _splraise(6);
 ((tp->t_state) &= ~(0x00080));
 ttstart(tp);
 _splx(s);
}
int
ttstart(struct tty *tp)
{
 if (tp->t_oproc != ((void *)0))
  (*tp->t_oproc)(tp);
 return (0);
}
int
ttylclose(struct tty *tp, int flag, struct proc *p)
{
 if (flag & 0x0004)
  ttyflush(tp, 0x0001 | 0x0002);
 else
  ttywflush(tp);
 return (0);
}
int
ttymodem(struct tty *tp, int flag)
{
 if (!((tp->t_state) & (0x00200)) && ((tp->t_termios.c_cflag) & (0x00100000))) {
  if (flag) {
   ((tp->t_state) &= ~(0x00100));
   ttstart(tp);
  } else if (!((tp->t_state) & (0x00100))) {
   ((tp->t_state) |= (0x00100));
   (*cdevsw[((int32_t)(((u_int32_t)(tp->t_dev) >> 8) & 0xff))].d_stop)(tp, 0);
  }
 } else if (flag == 0) {
  ((tp->t_state) &= ~(0x00008));
  if (((tp->t_state) & (0x00020)) &&
      !((tp->t_termios.c_cflag) & (0x00008000))) {
   if (tp->t_session && tp->t_session->s_leader)
    ptsignal((tp->t_session->s_leader)->ps_mainproc, (1), SPROCESS);
   ttyflush(tp, 0x0001 | 0x0002);
   return (0);
  }
 } else {
  ((tp->t_state) |= (0x00008));
  ttwakeup(tp);
 }
 return (1);
}
int
nullmodem(struct tty *tp, int flag)
{
 if (flag)
  ((tp->t_state) |= (0x00008));
 else {
  ((tp->t_state) &= ~(0x00008));
  if (((tp->t_state) & (0x00020)) &&
      !((tp->t_termios.c_cflag) & (0x00008000))) {
   if (tp->t_session && tp->t_session->s_leader)
    ptsignal((tp->t_session->s_leader)->ps_mainproc, (1), SPROCESS);
   ttyflush(tp, 0x0001 | 0x0002);
   return (0);
  }
 }
 return (1);
}
void
ttypend(struct tty *tp)
{
 struct clist tq;
 int c;
 do { if (splassert_ctl > 0) { splassert_check(6, __func__); } } while (0);
 ((tp->t_termios.c_lflag) &= ~(0x20000000));
 ((tp->t_state) |= (0x08000));
 tq = tp->t_rawq;
 tp->t_rawq.c_cc = 0;
 tp->t_rawq.c_cf = tp->t_rawq.c_cl = 0;
 while ((c = getc(&tq)) >= 0)
  ttyinput(c, tp);
 ((tp->t_state) &= ~(0x08000));
}
void ttvtimeout(void *);
void
ttvtimeout(void *arg)
{
 struct tty *tp = (struct tty *)arg;
 wakeup(&tp->t_rawq);
}
int
ttread(struct tty *tp, struct uio *uio, int flag)
{
 struct timeout *stime = ((void *)0);
 struct proc *p = (__curcpu->ci_self)->ci_curproc;
 struct process *pr = p->p_p;
 int s, first, error = 0;
 u_char *cc = tp->t_termios.c_cc;
 struct clist *qp;
 int last_cc = 0;
 long lflag;
 int c;
loop: lflag = tp->t_termios.c_lflag;
 s = _splraise(6);
 if (((lflag) & (0x20000000)))
  ttypend(tp);
 _splx(s);
 if (((((pr))->ps_pgrp->pg_session == ((tp))->t_session && ((pr))->ps_flags & 0x00000001) && (pr)->ps_pgrp != (tp)->t_pgrp)) {
  if ((pr->ps_sigacts->ps_sigignore & (1U << ((21)-1))) ||
     (p->p_sigmask & (1U << ((21)-1))) ||
      pr->ps_flags & 0x00000040 || pr->ps_pgrp->pg_jobc == 0) {
   error = 5;
   goto out;
  }
  pgsignal(pr->ps_pgrp, 21, 1);
  error = ttysleep(tp, &lbolt, 25 | 0x100, ttybg, 0);
  if (error)
   goto out;
  goto loop;
 }
 s = _splraise(6);
 if (!((lflag) & (0x00000100))) {
  int m = cc[16];
  long t;
  t = cc[17] * hz / 10;
  qp = &tp->t_rawq;
  if (t == 0) {
   if (qp->c_cc < m)
    goto sleep;
   goto read;
  }
  if (m > 0) {
   if (qp->c_cc <= 0)
    goto sleep;
   if (qp->c_cc >= m)
    goto read;
   if (stime == ((void *)0)) {
alloc_timer:
    stime = malloc(sizeof(*stime), 127, 0x0001);
    timeout_set(stime, ttvtimeout, tp);
    timeout_add(stime, t);
   } else if (qp->c_cc > last_cc) {
    timeout_add(stime, t);
   }
  } else {
   if (qp->c_cc > 0)
    goto read;
   if (stime == ((void *)0)) {
    goto alloc_timer;
   }
  }
  last_cc = qp->c_cc;
  if (stime && !((stime)->to_flags & 8)) {
   goto sleep;
  }
 } else if ((qp = &tp->t_canq)->c_cc <= 0) {
  int carrier;
sleep:
  carrier = ((tp->t_state) & (0x00008)) ||
      ((tp->t_termios.c_cflag) & (0x00008000));
  if (!carrier && ((tp->t_state) & (0x00020))) {
   _splx(s);
   error = 0;
   goto out;
  }
  if (flag & 0x10) {
   _splx(s);
   error = 35;
   goto out;
  }
  error = ttysleep(tp, &tp->t_rawq, 25 | 0x100,
      carrier ? ttyin : ttopen, 0);
  _splx(s);
  if (stime && ((stime)->to_flags & 8))
   error = 35;
  if (cc[16] == 0 && error == 35) {
   error = 0;
   goto out;
  }
  if (error && error != 35)
   goto out;
  error = 0;
  goto loop;
 }
read:
 _splx(s);
 first = 1;
 while ((c = getc(qp)) >= 0) {
  if ((c == cc[11] ? cc[11] != (0377) : 0) &&
      ((lflag) & (0x00000400 | 0x00000080)) == (0x00000400 | 0x00000080)) {
   pgsignal(tp->t_pgrp, 18, 1);
   if (first) {
    error = ttysleep(tp, &lbolt, 25 | 0x100,
        ttybg, 0);
    if (error)
     break;
    goto loop;
   }
   break;
  }
  if ((c == cc[0] ? cc[0] != (0377) : 0) && ((lflag) & (0x00000100)))
   break;
   error = ureadc(c, uio);
  if (error)
   break;
   if (uio->uio_resid == 0)
   break;
  if (((lflag) & (0x00000100)) && ((c) == '\n' || (((c) == cc[0] || (c) == cc[1] || ((c) == cc[2] && (lflag & 0x00000400))) && (c) != (0377))))
   break;
  first = 0;
 }
 s = _splraise(6);
 if (tp->t_rawq.c_cc < (tp)->t_qlen/5)
  ttyunblock(tp);
 _splx(s);
out:
 if (stime) {
  timeout_del(stime);
  free(stime, 127, sizeof(*stime));
 }
 return (error);
}
void
ttyunblock(struct tty *tp)
{
 u_char *cc = tp->t_termios.c_cc;
 do { if (splassert_ctl > 0) { splassert_check(6, __func__); } } while (0);
 if (((tp->t_state) & (0x00040))) {
  if (((tp->t_termios.c_iflag) & (0x00000400)) &&
      cc[12] != (0377) &&
      putc(cc[12], &tp->t_outq) == 0) {
   ((tp->t_state) &= ~(0x00040));
   ttstart(tp);
  }
  if (((tp->t_termios.c_cflag) & ((0x00100000|0x00010000))) && tp->t_hwiflow &&
      (*tp->t_hwiflow)(tp, 0) != 0)
   ((tp->t_state) &= ~(0x00040));
 }
}
int
ttycheckoutq(struct tty *tp, int wait)
{
 int hiwat, s, oldsig;
 hiwat = tp->t_hiwat;
 s = _splraise(6);
 oldsig = wait ? (__curcpu->ci_self)->ci_curproc->p_siglist : 0;
 if (tp->t_outq.c_cc > hiwat + 200)
  while (tp->t_outq.c_cc > hiwat) {
   ttstart(tp);
   if (wait == 0 || (__curcpu->ci_self)->ci_curproc->p_siglist != oldsig) {
    _splx(s);
    return (0);
   }
   ((tp->t_state) |= (0x00001));
   tsleep(&tp->t_outq, 22 - 1, "ttckoutq", hz);
  }
 _splx(s);
 return (1);
}
int
ttwrite(struct tty *tp, struct uio *uio, int flag)
{
 u_char *cp = ((void *)0);
 int cc, ce, obufcc = 0;
 struct proc *p;
 struct process *pr;
 int i, hiwat, error, s;
 size_t cnt;
 u_char obuf[512];
 hiwat = tp->t_hiwat;
 cnt = uio->uio_resid;
 error = 0;
 cc = 0;
loop:
 s = _splraise(6);
 if (!((tp->t_state) & (0x00008)) &&
     !((tp->t_termios.c_cflag) & (0x00008000))) {
  if (((tp->t_state) & (0x00020))) {
   _splx(s);
   error = 5;
   goto done;
  } else if (flag & 0x10) {
   _splx(s);
   error = 35;
   goto out;
  } else {
   error = ttysleep(tp,
       &tp->t_rawq, 25 | 0x100, ttopen, 0);
   _splx(s);
   if (error)
    goto out;
   goto loop;
  }
 }
 _splx(s);
 p = (__curcpu->ci_self)->ci_curproc;
 pr = p->p_p;
 if (((((pr))->ps_pgrp->pg_session == ((tp))->t_session && ((pr))->ps_flags & 0x00000001) && (pr)->ps_pgrp != (tp)->t_pgrp) &&
     ((tp->t_termios.c_lflag) & (0x00400000)) && (pr->ps_flags & 0x00000040) == 0 &&
     (pr->ps_sigacts->ps_sigignore & (1U << ((22)-1))) == 0 &&
     (p->p_sigmask & (1U << ((22)-1))) == 0) {
  if (pr->ps_pgrp->pg_jobc == 0) {
   error = 5;
   goto out;
  }
  pgsignal(pr->ps_pgrp, 22, 1);
  error = ttysleep(tp, &lbolt, 25 | 0x100, ttybg, 0);
  if (error)
   goto out;
  goto loop;
 }
 while (uio->uio_resid > 0 || cc > 0) {
  if (((tp->t_termios.c_lflag) & (0x00800000))) {
   uio->uio_resid = 0;
   goto done;
  }
  if (tp->t_outq.c_cc > hiwat)
   goto ovhiwat;
  if (cc == 0) {
   cc = (((uio->uio_resid)<(512))?(uio->uio_resid):(512));
   cp = obuf;
   error = uiomove(cp, cc, uio);
   if (error) {
    cc = 0;
    break;
   }
   if (cc > obufcc)
    obufcc = cc;
   if (consbufp && cn_tab &&
       cn_tab->cn_dev == tp->t_dev && tp->t_gen == 0) {
    int i;
    for (i = 0; i < cc; i++) {
     char c = cp[i];
     if (c != '\0' && c != '\r' && c != 0177)
      msgbuf_putchar(consbufp, c);
    }
   }
  }
  while (cc > 0) {
   if (!((tp->t_termios.c_oflag) & (0x00000001)))
    ce = cc;
   else {
    ce = cc - scanc((u_int)cc, cp, char_type,
        0x3f);
    if (ce == 0) {
     tp->t_rocount = 0;
     if (ttyoutput(*cp, tp) >= 0) {
      goto ovhiwat;
     }
     cp++;
     cc--;
     if (((tp->t_termios.c_lflag) & (0x00800000)) ||
         tp->t_outq.c_cc > hiwat)
      goto ovhiwat;
     continue;
    }
   }
   tp->t_rocount = 0;
   i = b_to_q(cp, ce, &tp->t_outq);
   ce -= i;
   tp->t_column += ce;
   cp += ce, cc -= ce, tk_nout += ce;
   tp->t_outcc += ce;
   if (i > 0) {
    goto ovhiwat;
   }
   if (((tp->t_termios.c_lflag) & (0x00800000)) ||
       tp->t_outq.c_cc > hiwat)
    break;
  }
  ttstart(tp);
 }
out:
 uio->uio_resid += cc;
done:
 if (obufcc)
  explicit_bzero(obuf, obufcc);
 return (error);
ovhiwat:
 ttstart(tp);
 s = _splraise(6);
 if (tp->t_outq.c_cc <= hiwat) {
  _splx(s);
  goto loop;
 }
 if (flag & 0x10) {
  _splx(s);
  uio->uio_resid += cc;
  if (obufcc)
   explicit_bzero(obuf, obufcc);
  return (uio->uio_resid == cnt ? 35 : 0);
 }
 ((tp->t_state) |= (0x00001));
 error = ttysleep(tp, &tp->t_outq, 26 | 0x100, ttyout, 0);
 _splx(s);
 if (error)
  goto out;
 goto loop;
}
void
ttyrub(int c, struct tty *tp)
{
 u_char *cp;
 int savecol;
 int tabc, s;
 if (!((tp->t_termios.c_lflag) & (0x00000008)) || ((tp->t_termios.c_lflag) & (0x00000800)))
  return;
 ((tp->t_termios.c_lflag) &= ~(0x00800000));
 if (((tp->t_termios.c_lflag) & (0x00000002))) {
  if (tp->t_rocount == 0) {
   ttyretype(tp);
   return;
  }
  if (c == ('\t' | 0x00000100) || c == ('\n' | 0x00000100))
   ttyrubo(tp, 2);
  else {
   ((c) &= ~(~0x000000ff));
   switch ((char_type[c] & 0x3f)) {
   case 0:
    ttyrubo(tp, 1);
    break;
   case 2:
   case 1:
   case 3:
   case 6:
   case 5:
    if (((tp->t_termios.c_lflag) & (0x00000040)))
     ttyrubo(tp, 2);
    break;
   case 4:
    if (tp->t_rocount < tp->t_rawq.c_cc) {
     ttyretype(tp);
     return;
    }
    s = _splraise(6);
    savecol = tp->t_column;
    ((tp->t_state) |= (0x01000));
    ((tp->t_termios.c_lflag) |= (0x00800000));
    tp->t_column = tp->t_rocol;
    for (cp = firstc(&tp->t_rawq, &tabc); cp;
        cp = nextc(&tp->t_rawq, cp, &tabc))
     ttyecho(tabc, tp);
    ((tp->t_termios.c_lflag) &= ~(0x00800000));
    ((tp->t_state) &= ~(0x01000));
    _splx(s);
    savecol -= tp->t_column;
    tp->t_column += savecol;
    if (savecol > 8)
     savecol = 8;
    while (--savecol >= 0)
     (void)ttyoutput('\b', tp);
    break;
   default:
    (void)printf("ttyrub: would panic c = %d, val = %d\n", c, (char_type[c] & 0x3f));
   }
  }
 } else if (((tp->t_termios.c_lflag) & (0x00000020))) {
  if (!((tp->t_state) & (0x02000))) {
   ((tp->t_state) |= (0x02000));
   (void)ttyoutput('\\', tp);
  }
  ttyecho(c, tp);
 } else
  ttyecho(tp->t_termios.c_cc[3], tp);
 --tp->t_rocount;
}
static void
ttyrubo(struct tty *tp, int cnt)
{
 while (cnt-- > 0) {
  (void)ttyoutput('\b', tp);
  (void)ttyoutput(' ', tp);
  (void)ttyoutput('\b', tp);
 }
}
void
ttyretype(struct tty *tp)
{
 u_char *cp;
 int s, c;
 if (tp->t_termios.c_cc[6] != (0377))
  ttyecho(tp->t_termios.c_cc[6], tp);
 (void)ttyoutput('\n', tp);
 s = _splraise(6);
 for (cp = firstc(&tp->t_canq, &c); cp; cp = nextc(&tp->t_canq, cp, &c))
  ttyecho(c, tp);
 for (cp = firstc(&tp->t_rawq, &c); cp; cp = nextc(&tp->t_rawq, cp, &c))
  ttyecho(c, tp);
 ((tp->t_state) &= ~(0x02000));
 _splx(s);
 tp->t_rocount = tp->t_rawq.c_cc;
 tp->t_rocol = 0;
}
static void
ttyecho(int c, struct tty *tp)
{
 if (!((tp->t_state) & (0x01000)))
  ((tp->t_termios.c_lflag) &= ~(0x00800000));
 if ((!((tp->t_termios.c_lflag) & (0x00000008)) &&
     (!((tp->t_termios.c_lflag) & (0x00000010)) || c != '\n')) ||
     ((tp->t_termios.c_lflag) & (0x00000800)))
  return;
 if (((((tp->t_termios.c_lflag) & (0x00000040)) &&
      (((c) & (0x000000ff)) <= 037 && c != '\t' && c != '\n')) ||
     ((c) & (0x000000ff)) == 0177)) {
  (void)ttyoutput('^', tp);
  ((c) &= ~(~0x000000ff));
  if (c == 0177)
   c = '?';
  else
   c += 'A' - 1;
 }
 (void)ttyoutput(c, tp);
}
void
ttwakeupwr(struct tty *tp)
{
 if (tp->t_outq.c_cc <= tp->t_lowat) {
  if (((tp->t_state) & (0x00001))) {
   ((tp->t_state) &= ~(0x00001));
   wakeup(&tp->t_outq);
  }
  selwakeup(&tp->t_wsel);
 }
}
void
ttwakeup(struct tty *tp)
{
 selwakeup(&tp->t_rsel);
 if (((tp->t_state) & (0x00002)))
  pgsignal(tp->t_pgrp, 23, 1);
 wakeup((caddr_t)&tp->t_rawq);
}
int
ttspeedtab(int speed, const struct speedtab *table)
{
 for ( ; table->sp_speed != -1; table++)
  if (table->sp_speed == speed)
   return (table->sp_code);
 return (-1);
}
void
ttsetwater(struct tty *tp)
{
 int cps, x;
 cps = tp->t_termios.c_ospeed / 10;
 tp->t_lowat = x = ((cps / 2) > 256 ? 256 : ((cps / 2) < 32) ? 32 : (cps / 2));
 x += cps;
 tp->t_hiwat = ((x) > tp->t_outq.c_cn - 200 ? tp->t_outq.c_cn - 200 : ((x) < 100) ? 100 : (x));
}
static int
process_sum(struct process *pr, fixpt_t *estcpup)
{
 struct proc *p;
 fixpt_t estcpu;
 int ret;
 ret = 0;
 estcpu = 0;
 for((p) = ((&pr->ps_threads)->tqh_first); (p) != ((void *)0); (p) = ((p)->p_thr_link.tqe_next)) {
  if (p->p_stat == 2 || p->p_stat == 7)
   ret = 1;
  estcpu += p->p_pctcpu;
 }
 *estcpup = estcpu;
 return (ret);
}
void
ttyinfo(struct tty *tp)
{
 struct process *pr, *pickpr;
 struct proc *p, *pick;
 struct timespec utime, stime;
 int tmp;
 if (ttycheckoutq(tp,0) == 0)
  return;
 tmp = (averunnable.ldavg[0] * 100 + (1<<11) / 2) >> 11;
 ttyprintf(tp, "load: %d.%02d ", tmp / 100, tmp % 100);
 if (tp->t_session == ((void *)0))
  ttyprintf(tp, "not a controlling terminal\n");
 else if (tp->t_pgrp == ((void *)0))
  ttyprintf(tp, "no foreground process group\n");
 else if ((pr = ((&tp->t_pgrp->pg_members)->lh_first)) == ((void *)0))
empty: ttyprintf(tp, "empty foreground process group\n");
 else {
  const char *state;
  fixpt_t pctcpu, pctcpu2;
  int run, run2;
  int calc_pctcpu;
  long rss;
  pickpr = pr;
  run = process_sum(pickpr, &pctcpu);
  while ((pr = ((pr)->ps_pglist.le_next)) != ((void *)0)) {
   run2 = process_sum(pr, &pctcpu2);
   if (run) {
    if (run2 && pctcpu2 >= pctcpu)
     goto update_pickpr;
    continue;
   }
   if (run2 || pctcpu2 > pctcpu)
    goto update_pickpr;
   if (pctcpu2 < pctcpu || (pr->ps_flags & 0x00040000))
    continue;
update_pickpr:
   pickpr = pr;
   run = run2;
   pctcpu = pctcpu2;
  }
  calc_pctcpu = (pctcpu * 10000 + (1<<11) / 2) >> 11;
  rss = (pickpr->ps_flags & (0x00020000 | 0x00040000)) ? 0 :
      ((((pickpr->ps_vmspace)->vm_map.pmap)->pm_stats.resident_count));
  calctsru(&pickpr->ps_tu, &utime, &stime, ((void *)0));
  utime.tv_nsec += 5000000;
  if (utime.tv_nsec >= 1000000000) {
   utime.tv_sec += 1;
   utime.tv_nsec -= 1000000000;
  }
  stime.tv_nsec += 5000000;
  if (stime.tv_nsec >= 1000000000) {
   stime.tv_sec += 1;
   stime.tv_nsec -= 1000000000;
  }
  pick = p = ((&pickpr->ps_threads)->tqh_first);
  if (p == ((void *)0))
   goto empty;
  run = p->p_stat == 2 || p->p_stat == 7;
  pctcpu = p->p_pctcpu;
  while ((p = ((p)->p_thr_link.tqe_next)) != ((void *)0)) {
   run2 = p->p_stat == 2 || p->p_stat == 7;
   pctcpu2 = p->p_pctcpu;
   if (run) {
    if (run2 && pctcpu2 >= pctcpu)
     goto update_pick;
    continue;
   }
   if (run2 || pctcpu2 > pctcpu)
    goto update_pick;
   if (pctcpu2 < pctcpu || p->p_flag & 0x00002000)
    continue;
update_pick:
   pick = p;
   run = run2;
   pctcpu = p->p_pctcpu;
  }
  state = pick->p_stat == 7 ? "running" :
          pick->p_stat == 2 ? "runnable" :
          pick->p_wmesg ? pick->p_wmesg : "iowait";
  ttyprintf(tp,
      " cmd: %s %d [%s] %lld.%02ldu %lld.%02lds %d%% %ldk\n",
      pickpr->ps_comm, pickpr->ps_pid, state,
      (long long)utime.tv_sec, utime.tv_nsec / 10000000,
      (long long)stime.tv_sec, stime.tv_nsec / 10000000,
      calc_pctcpu / 100, rss);
 }
 tp->t_rocount = 0;
}
int
tputchar(int c, struct tty *tp)
{
 int s;
 s = _splraise(6);
 if (((tp->t_state) & (0x00020)) == 0 ||
     !(((tp->t_state) & (0x00008)) || ((tp->t_termios.c_cflag) & (0x00008000)))) {
  _splx(s);
  return (-1);
 }
 if (c == '\n')
  (void)ttyoutput('\r', tp);
 (void)ttyoutput(c, tp);
 ttstart(tp);
 _splx(s);
 return (0);
}
int
ttysleep(struct tty *tp, void *chan, int pri, char *wmesg, int timo)
{
 int error;
 short gen;
 gen = tp->t_gen;
 if ((error = tsleep(chan, pri, wmesg, timo)) != 0)
  return (error);
 return (tp->t_gen == gen ? 0 : -1);
}
void
tty_init(void)
{
 do { (&ttylist)->tqh_first = ((void *)0); (&ttylist)->tqh_last = &(&ttylist)->tqh_first; } while (0);
 tty_count = 0;
}
struct tty *
ttymalloc(int baud)
{
 struct tty *tp;
 tp = malloc(sizeof(struct tty), 62, 0x0001|0x0008);
 if (baud == 0)
  baud = 115200;
 if (baud <= 9600)
  tp->t_qlen = 1024;
 else if (baud <= 115200)
  tp->t_qlen = 4096;
 else
  tp->t_qlen = 8192;
 clalloc(&tp->t_rawq, tp->t_qlen, 1);
 clalloc(&tp->t_canq, tp->t_qlen, 1);
 clalloc(&tp->t_outq, tp->t_qlen, 0);
 do { (tp)->tty_link.tqe_next = ((void *)0); (tp)->tty_link.tqe_prev = (&ttylist)->tqh_last; *(&ttylist)->tqh_last = (tp); (&ttylist)->tqh_last = &(tp)->tty_link.tqe_next; } while (0);
 ++tty_count;
 timeout_set(&tp->t_rstrt_to, ttrstrt, tp);
 return(tp);
}
void
ttyfree(struct tty *tp)
{
 --tty_count;
 if (tty_count < 0)
  panic("ttyfree: tty_count < 0");
 do { if (((tp)->tty_link.tqe_next) != ((void *)0)) (tp)->tty_link.tqe_next->tty_link.tqe_prev = (tp)->tty_link.tqe_prev; else (&ttylist)->tqh_last = (tp)->tty_link.tqe_prev; *(tp)->tty_link.tqe_prev = (tp)->tty_link.tqe_next; ((tp)->tty_link.tqe_prev) = ((void *)-1); ((tp)->tty_link.tqe_next) = ((void *)-1); } while (0);
 ttkqflush(&tp->t_rsel.si_note);
 ttkqflush(&tp->t_wsel.si_note);
 clfree(&tp->t_rawq);
 clfree(&tp->t_canq);
 clfree(&tp->t_outq);
 free(tp, 62, sizeof(*tp));
}
void
ttystats_init(struct itty **ttystats, size_t *ttystatssiz)
{
 struct itty *itp;
 struct tty *tp;
 *ttystatssiz = tty_count * sizeof(struct itty);
 *ttystats = mallocarray(tty_count, sizeof(struct itty),
     11, 0x0001|0x0008);
 for (tp = ((&ttylist)->tqh_first), itp = *ttystats; tp;
     tp = ((tp)->tty_link.tqe_next), itp++) {
  itp->t_dev = tp->t_dev;
  itp->t_rawq_c_cc = tp->t_rawq.c_cc;
  itp->t_canq_c_cc = tp->t_canq.c_cc;
  itp->t_outq_c_cc = tp->t_outq.c_cc;
  itp->t_hiwat = tp->t_hiwat;
  itp->t_lowat = tp->t_lowat;
  itp->t_column = tp->t_column;
  itp->t_state = tp->t_state;
  itp->t_session = tp->t_session;
  if (tp->t_pgrp)
   itp->t_pgrp_pg_id = tp->t_pgrp->pg_id;
  else
   itp->t_pgrp_pg_id = 0;
  itp->t_line = tp->t_line;
 }
}
int
sysctl_tty(int *name, u_int namelen, void *oldp, size_t *oldlenp, void *newp,
    size_t newlen)
{
 int err;
 if (namelen != 1)
  return (20);
 switch (name[0]) {
 case 1:
  return (sysctl_rdquad(oldp, oldlenp, newp, tk_nin));
 case 2:
  return (sysctl_rdquad(oldp, oldlenp, newp, tk_nout));
 case 3:
  return (sysctl_rdquad(oldp, oldlenp, newp, tk_rawcc));
 case 4:
  return (sysctl_rdquad(oldp, oldlenp, newp, tk_cancc));
 case 5:
     {
  struct itty *ttystats;
  size_t ttystatssiz;
  ttystats_init(&ttystats, &ttystatssiz);
  err = sysctl_rdstruct(oldp, oldlenp, newp, ttystats,
      tty_count * sizeof(struct itty));
  free(ttystats, 11, ttystatssiz);
  return (err);
     }
 default:
  return (sysctl_pty(name, namelen, oldp, oldlenp, newp, newlen));
 }
}
void
ttytstamp(struct tty *tp, int octs, int ncts, int odcd, int ndcd)
{
 int doit = 0;
 if (ncts ^ octs)
  doit |= ncts ? ((tp->t_flags) & (0x40000)) :
      ((tp->t_flags) & (0x80000));
 if (ndcd ^ odcd)
  doit |= ndcd ? ((tp->t_flags) & (0x10000)) :
      ((tp->t_flags) & (0x20000));
 if (doit)
  microtime(&tp->t_tv);
}
