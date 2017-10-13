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
extern __inline u_int64_t sparc_rd_asi(void); extern __inline u_int64_t sparc_rd_asi() { u_int64_t r; __asm volatile("rd %%" "asi" ", %0" : "=r" (r) : : "%g0"); return (r); };
extern __inline u_int64_t sparc_rd_fprs(void); extern __inline u_int64_t sparc_rd_fprs() { u_int64_t r; __asm volatile("rd %%" "fprs" ", %0" : "=r" (r) : : "%g0"); return (r); };
extern __inline u_int64_t sparc_rd_asr22(void); extern __inline u_int64_t sparc_rd_asr22() { u_int64_t r; __asm volatile("rd %%" "asr22" ", %0" : "=r" (r) : : "%g0"); return (r); };
extern __inline u_int64_t sparc_rd_sys_tick(void); extern __inline u_int64_t sparc_rd_sys_tick() { u_int64_t r; __asm volatile("rd %%" "sys_tick" ", %0" : "=r" (r) : : "%g0"); return (r); };
extern __inline u_int64_t sparc_rd_sys_tick_cmpr(void); extern __inline u_int64_t sparc_rd_sys_tick_cmpr() { u_int64_t r; __asm volatile("rd %%" "sys_tick_cmpr" ", %0" : "=r" (r) : : "%g0"); return (r); };
extern __inline u_int64_t sparc_rdpr_tick(void); extern __inline u_int64_t sparc_rdpr_tick() { u_int64_t r; __asm volatile("rdpr %%" "tick" ", %0" : "=r" (r) : : "%g0"); return (r); };
extern __inline u_int64_t sparc_rdpr_tba(void); extern __inline u_int64_t sparc_rdpr_tba() { u_int64_t r; __asm volatile("rdpr %%" "tba" ", %0" : "=r" (r) : : "%g0"); return (r); };
extern __inline u_int64_t sparc_rdpr_pstate(void); extern __inline u_int64_t sparc_rdpr_pstate() { u_int64_t r; __asm volatile("rdpr %%" "pstate" ", %0" : "=r" (r) : : "%g0"); return (r); };
extern __inline u_int64_t sparc_rdpr_pil(void); extern __inline u_int64_t sparc_rdpr_pil() { u_int64_t r; __asm volatile("rdpr %%" "pil" ", %0" : "=r" (r) : : "%g0"); return (r); };
extern __inline u_int64_t sparc_rdpr_cwp(void); extern __inline u_int64_t sparc_rdpr_cwp() { u_int64_t r; __asm volatile("rdpr %%" "cwp" ", %0" : "=r" (r) : : "%g0"); return (r); };
extern __inline u_int64_t sparc_rdpr_cansave(void); extern __inline u_int64_t sparc_rdpr_cansave() { u_int64_t r; __asm volatile("rdpr %%" "cansave" ", %0" : "=r" (r) : : "%g0"); return (r); };
extern __inline u_int64_t sparc_rdpr_canrestore(void); extern __inline u_int64_t sparc_rdpr_canrestore() { u_int64_t r; __asm volatile("rdpr %%" "canrestore" ", %0" : "=r" (r) : : "%g0"); return (r); };
extern __inline u_int64_t sparc_rdpr_cleanwin(void); extern __inline u_int64_t sparc_rdpr_cleanwin() { u_int64_t r; __asm volatile("rdpr %%" "cleanwin" ", %0" : "=r" (r) : : "%g0"); return (r); };
extern __inline u_int64_t sparc_rdpr_otherwin(void); extern __inline u_int64_t sparc_rdpr_otherwin() { u_int64_t r; __asm volatile("rdpr %%" "otherwin" ", %0" : "=r" (r) : : "%g0"); return (r); };
extern __inline u_int64_t sparc_rdpr_wstate(void); extern __inline u_int64_t sparc_rdpr_wstate() { u_int64_t r; __asm volatile("rdpr %%" "wstate" ", %0" : "=r" (r) : : "%g0"); return (r); };
extern __inline u_int64_t sparc_rdpr_ver(void); extern __inline u_int64_t sparc_rdpr_ver() { u_int64_t r; __asm volatile("rdpr %%" "ver" ", %0" : "=r" (r) : : "%g0"); return (r); };
extern __inline u_char lduba_asi(paddr_t); extern __inline u_char lduba_asi(paddr_t va) { u_char r; __asm volatile( "lduba" " [%1] %%asi, %0" : "=r" (r) : "r" ((volatile u_char *)va) : "%g0"); return (r); } extern __inline u_char lduba_nc(paddr_t, int); extern __inline u_char lduba_nc(paddr_t va, int asi) { do { if (__builtin_constant_p(0)) __asm volatile("wr %%g0, %0, %%" "asi" : : "rI" ((asi) ^ (0)) : "%g0"); else __asm volatile("wr %0, %1, %%" "asi" : : "r" (asi), "rI" (0) : "%g0"); } while(0); return (lduba_asi(va)); };
extern __inline u_short lduha_asi(paddr_t); extern __inline u_short lduha_asi(paddr_t va) { u_short r; __asm volatile( "lduha" " [%1] %%asi, %0" : "=r" (r) : "r" ((volatile u_short *)va) : "%g0"); return (r); } extern __inline u_short lduha_nc(paddr_t, int); extern __inline u_short lduha_nc(paddr_t va, int asi) { do { if (__builtin_constant_p(0)) __asm volatile("wr %%g0, %0, %%" "asi" : : "rI" ((asi) ^ (0)) : "%g0"); else __asm volatile("wr %0, %1, %%" "asi" : : "r" (asi), "rI" (0) : "%g0"); } while(0); return (lduha_asi(va)); };
extern __inline u_int lduwa_asi(paddr_t); extern __inline u_int lduwa_asi(paddr_t va) { u_int r; __asm volatile( "lduwa" " [%1] %%asi, %0" : "=r" (r) : "r" ((volatile u_int *)va) : "%g0"); return (r); } extern __inline u_int lduwa_nc(paddr_t, int); extern __inline u_int lduwa_nc(paddr_t va, int asi) { do { if (__builtin_constant_p(0)) __asm volatile("wr %%g0, %0, %%" "asi" : : "rI" ((asi) ^ (0)) : "%g0"); else __asm volatile("wr %0, %1, %%" "asi" : : "r" (asi), "rI" (0) : "%g0"); } while(0); return (lduwa_asi(va)); };
extern __inline u_int64_t ldxa_asi(paddr_t); extern __inline u_int64_t ldxa_asi(paddr_t va) { u_int64_t r; __asm volatile( "ldxa" " [%1] %%asi, %0" : "=r" (r) : "r" ((volatile u_int64_t *)va) : "%g0"); return (r); } extern __inline u_int64_t ldxa_nc(paddr_t, int); extern __inline u_int64_t ldxa_nc(paddr_t va, int asi) { do { if (__builtin_constant_p(0)) __asm volatile("wr %%g0, %0, %%" "asi" : : "rI" ((asi) ^ (0)) : "%g0"); else __asm volatile("wr %0, %1, %%" "asi" : : "r" (asi), "rI" (0) : "%g0"); } while(0); return (ldxa_asi(va)); };
extern __inline int lda_asi(paddr_t); extern __inline int lda_asi(paddr_t va) { int r; __asm volatile( "lda" " [%1] %%asi, %0" : "=r" (r) : "r" ((volatile int *)va) : "%g0"); return (r); } extern __inline int lda_nc(paddr_t, int); extern __inline int lda_nc(paddr_t va, int asi) { do { if (__builtin_constant_p(0)) __asm volatile("wr %%g0, %0, %%" "asi" : : "rI" ((asi) ^ (0)) : "%g0"); else __asm volatile("wr %0, %1, %%" "asi" : : "r" (asi), "rI" (0) : "%g0"); } while(0); return (lda_asi(va)); };
extern __inline void stba_asi(paddr_t, u_int8_t); extern __inline void stba_asi(paddr_t va, u_int8_t val) { __asm volatile( "stba" " %0, [%1] %%asi" : : "r" (val), "r" ((volatile u_int8_t *)va) : "memory"); } extern __inline void stba_nc(paddr_t, int, u_int8_t); extern __inline void stba_nc(paddr_t va, int asi, u_int8_t val) { do { if (__builtin_constant_p(0)) __asm volatile("wr %%g0, %0, %%" "asi" : : "rI" ((asi) ^ (0)) : "%g0"); else __asm volatile("wr %0, %1, %%" "asi" : : "r" (asi), "rI" (0) : "%g0"); } while(0); stba_asi(va, val); };
extern __inline void stha_asi(paddr_t, u_int16_t); extern __inline void stha_asi(paddr_t va, u_int16_t val) { __asm volatile( "stha" " %0, [%1] %%asi" : : "r" (val), "r" ((volatile u_int16_t *)va) : "memory"); } extern __inline void stha_nc(paddr_t, int, u_int16_t); extern __inline void stha_nc(paddr_t va, int asi, u_int16_t val) { do { if (__builtin_constant_p(0)) __asm volatile("wr %%g0, %0, %%" "asi" : : "rI" ((asi) ^ (0)) : "%g0"); else __asm volatile("wr %0, %1, %%" "asi" : : "r" (asi), "rI" (0) : "%g0"); } while(0); stha_asi(va, val); };
extern __inline void stwa_asi(paddr_t, u_int32_t); extern __inline void stwa_asi(paddr_t va, u_int32_t val) { __asm volatile( "stwa" " %0, [%1] %%asi" : : "r" (val), "r" ((volatile u_int32_t *)va) : "memory"); } extern __inline void stwa_nc(paddr_t, int, u_int32_t); extern __inline void stwa_nc(paddr_t va, int asi, u_int32_t val) { do { if (__builtin_constant_p(0)) __asm volatile("wr %%g0, %0, %%" "asi" : : "rI" ((asi) ^ (0)) : "%g0"); else __asm volatile("wr %0, %1, %%" "asi" : : "r" (asi), "rI" (0) : "%g0"); } while(0); stwa_asi(va, val); };
extern __inline void stxa_asi(paddr_t, u_int64_t); extern __inline void stxa_asi(paddr_t va, u_int64_t val) { __asm volatile( "stxa" " %0, [%1] %%asi" : : "r" (val), "r" ((volatile u_int64_t *)va) : "memory"); } extern __inline void stxa_nc(paddr_t, int, u_int64_t); extern __inline void stxa_nc(paddr_t va, int asi, u_int64_t val) { do { if (__builtin_constant_p(0)) __asm volatile("wr %%g0, %0, %%" "asi" : : "rI" ((asi) ^ (0)) : "%g0"); else __asm volatile("wr %0, %1, %%" "asi" : : "r" (asi), "rI" (0) : "%g0"); } while(0); stxa_asi(va, val); };
extern __inline void sta_asi(paddr_t, u_int); extern __inline void sta_asi(paddr_t va, u_int val) { __asm volatile( "sta" " %0, [%1] %%asi" : : "r" (val), "r" ((volatile u_int *)va) : "memory"); } extern __inline void sta_nc(paddr_t, int, u_int); extern __inline void sta_nc(paddr_t va, int asi, u_int val) { do { if (__builtin_constant_p(0)) __asm volatile("wr %%g0, %0, %%" "asi" : : "rI" ((asi) ^ (0)) : "%g0"); else __asm volatile("wr %0, %1, %%" "asi" : : "r" (asi), "rI" (0) : "%g0"); } while(0); sta_asi(va, val); };
extern __inline void asi_set(int);
extern __inline
void asi_set(int asi)
{
 do { if (__builtin_constant_p(0)) __asm volatile("wr %%g0, %0, %%" "asi" : : "rI" ((asi) ^ (0)) : "%g0"); else __asm volatile("wr %0, %1, %%" "asi" : : "r" (asi), "rI" (0) : "%g0"); } while(0);
}
extern __inline u_int8_t asi_get(void);
extern __inline
u_int8_t asi_get(void)
{
 return sparc_rd_asi();
}
extern __inline void flush(void *);
extern __inline
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
extern __inline void splx(int);
void splassert_fail(int, int, const char *);
extern int splassert_ctl;
void splassert_check(int, const char *);
extern __inline u_int64_t getpstate(void);
extern __inline
u_int64_t getpstate(void)
{
 return (sparc_rdpr_pstate());
}
extern __inline void setpstate(u_int64_t);
extern __inline void setpstate(u_int64_t newpstate)
{
 do { if (__builtin_constant_p(0)) __asm volatile("wrpr %%g0, %0, %%" "pstate" : : "rI" ((newpstate) ^ (0)) : "%g0"); else __asm volatile("wrpr %0, %1, %%" "pstate" : : "r" (newpstate), "rI" (0) : "%g0"); __asm volatile("" : : : "memory"); } while(0);
}
extern __inline int getcwp(void);
extern __inline
int getcwp(void)
{
 return (sparc_rdpr_cwp());
}
extern __inline void setcwp(u_int64_t);
extern __inline void
setcwp(u_int64_t newcwp)
{
 do { if (__builtin_constant_p(0)) __asm volatile("wrpr %%g0, %0, %%" "cwp" : : "rI" ((newcwp) ^ (0)) : "%g0"); else __asm volatile("wrpr %0, %1, %%" "cwp" : : "r" (newcwp), "rI" (0) : "%g0"); __asm volatile("" : : : "memory"); } while(0);
}
extern __inline u_int64_t getver(void);
extern __inline
u_int64_t getver(void)
{
 return (sparc_rdpr_ver());
}
extern __inline u_int64_t intr_disable(void);
extern __inline u_int64_t
intr_disable(void)
{
 u_int64_t s;
 s = sparc_rdpr_pstate();
 do { if (__builtin_constant_p(0)) __asm volatile("wrpr %%g0, %0, %%" "pstate" : : "rI" ((s & ~0x002) ^ (0)) : "%g0"); else __asm volatile("wrpr %0, %1, %%" "pstate" : : "r" (s & ~0x002), "rI" (0) : "%g0"); __asm volatile("" : : : "memory"); } while(0);
 return (s);
}
extern __inline void intr_restore(u_int64_t);
extern __inline void
intr_restore(u_int64_t s)
{
 do { if (__builtin_constant_p(0)) __asm volatile("wrpr %%g0, %0, %%" "pstate" : : "rI" ((s) ^ (0)) : "%g0"); else __asm volatile("wrpr %0, %1, %%" "pstate" : : "r" (s), "rI" (0) : "%g0"); __asm volatile("" : : : "memory"); } while(0);
}
extern __inline void stxa_sync(u_int64_t, u_int64_t, u_int64_t);
extern __inline void
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
 volatile u_int mplc_ticket;
 volatile u_int mplc_depth;
};
struct __mp_lock {
 struct __mp_lock_cpu mpl_cpus[256];
 volatile u_int mpl_ticket;
 volatile u_int mpl_users;
};
void __mp_lock_init(struct __mp_lock *);
void __mp_lock(struct __mp_lock *);
void __mp_unlock(struct __mp_lock *);
int __mp_release_all(struct __mp_lock *);
int __mp_release_all_but_one(struct __mp_lock *);
void __mp_acquire_count(struct __mp_lock *, int);
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
struct mii_softc;
typedef int (*mii_readreg_t)(struct device *, int, int);
typedef void (*mii_writereg_t)(struct device *, int, int, int);
typedef void (*mii_statchg_t)(struct device *);
struct mii_data {
 struct ifmedia mii_media;
 struct ifnet *mii_ifp;
 int mii_flags;
 struct mii_listhead { struct mii_softc *lh_first; } mii_phys;
 uint64_t mii_instance;
 uint64_t mii_media_status;
 uint64_t mii_media_active;
 mii_readreg_t mii_readreg;
 mii_writereg_t mii_writereg;
 mii_statchg_t mii_statchg;
};
typedef struct mii_data mii_data_t;
struct mii_phy_funcs {
 int (*pf_service)(struct mii_softc *, struct mii_data *, int);
 void (*pf_status)(struct mii_softc *);
 void (*pf_reset)(struct mii_softc *);
};
struct mii_softc {
 struct device mii_dev;
 struct { struct mii_softc *le_next; struct mii_softc **le_prev; } mii_list;
 int mii_phy;
 int mii_oui;
 int mii_model;
 int mii_rev;
 int mii_offset;
 uint64_t mii_inst;
 const struct mii_phy_funcs *mii_funcs;
 struct mii_data *mii_pdata;
 int mii_flags;
 int mii_capabilities;
 int mii_extcapabilities;
 int mii_ticks;
 int mii_anegticks;
 struct timeout mii_phy_timo;
 uint64_t mii_media_active;
 uint64_t mii_media_status;
};
typedef struct mii_softc mii_softc_t;
struct mii_attach_args {
 struct mii_data *mii_data;
 int mii_phyno;
 int mii_id1;
 int mii_id2;
 int mii_capmask;
 int mii_flags;
};
typedef struct mii_attach_args mii_attach_args_t;
struct mii_phydesc {
 u_int32_t mpd_oui;
 u_int32_t mpd_model;
 const char *mpd_name;
};
struct mii_media {
 int mm_bmcr;
 int mm_anar;
 int mm_gtcr;
};
void mii_attach(struct device *, struct mii_data *, int, int,
     int, int);
void mii_detach(struct mii_data *, int, int);
int mii_mediachg(struct mii_data *);
void mii_tick(struct mii_data *);
void mii_pollstat(struct mii_data *);
void mii_down(struct mii_data *);
int mii_anar(uint64_t);
int mii_phy_detach(struct device *, int);
const struct mii_phydesc *mii_phy_match(const struct mii_attach_args *,
     const struct mii_phydesc *);
void mii_phy_add_media(struct mii_softc *);
void mii_phy_delete_media(struct mii_softc *);
void mii_phy_setmedia(struct mii_softc *);
int mii_phy_auto(struct mii_softc *, int);
void mii_phy_auto_timeout(void *);
void mii_phy_reset(struct mii_softc *);
void mii_phy_down(struct mii_softc *);
int mii_phy_tick(struct mii_softc *);
void mii_phy_status(struct mii_softc *);
void mii_phy_update(struct mii_softc *, int);
int mii_phy_statusmsg(struct mii_softc *);
uint64_t mii_phy_flowstatus(struct mii_softc *);
void ukphy_status(struct mii_softc *);
typedef struct {
 u_int32_t bge_addr_hi;
 u_int32_t bge_addr_lo;
} bge_hostaddr;
struct bge_rcb {
 bge_hostaddr bge_hostaddr;
 u_int32_t bge_maxlen_flags;
 u_int32_t bge_nicaddr;
};
struct bge_tx_bd {
 bge_hostaddr bge_addr;
 u_int16_t bge_len;
 u_int16_t bge_flags;
 u_int16_t bge_rsvd;
 u_int16_t bge_vlan_tag;
};
struct bge_rx_bd {
 bge_hostaddr bge_addr;
 u_int16_t bge_idx;
 u_int16_t bge_len;
 u_int16_t bge_type;
 u_int16_t bge_flags;
 u_int16_t bge_ip_csum;
 u_int16_t bge_tcp_udp_csum;
 u_int16_t bge_error_flag;
 u_int16_t bge_vlan_tag;
 u_int32_t bge_rsvd;
 u_int32_t bge_opaque;
};
struct bge_ext_rx_bd {
 bge_hostaddr bge_addr1;
 bge_hostaddr bge_addr2;
 bge_hostaddr bge_addr3;
 u_int16_t bge_len1;
 u_int16_t bge_len2;
 u_int16_t bge_len3;
 u_int16_t bge_rsvd;
 struct bge_rx_bd bge_bd;
};
struct bge_sts_idx {
 u_int16_t bge_tx_cons_idx;
 u_int16_t bge_rx_prod_idx;
};
struct bge_status_block {
 u_int32_t bge_status;
 u_int32_t bge_status_tag;
 u_int16_t bge_rx_std_cons_idx;
 u_int16_t bge_rx_jumbo_cons_idx;
 u_int16_t bge_rsvd1;
 u_int16_t bge_rx_mini_cons_idx;
 struct bge_sts_idx bge_idx[16];
};
struct bge_rx_mac_stats {
 bge_hostaddr ifHCInOctets;
 bge_hostaddr Reserved1;
 bge_hostaddr etherStatsFragments;
 bge_hostaddr ifHCInUcastPkts;
 bge_hostaddr ifHCInMulticastPkts;
 bge_hostaddr ifHCInBroadcastPkts;
 bge_hostaddr dot3StatsFCSErrors;
 bge_hostaddr dot3StatsAlignmentErrors;
 bge_hostaddr xonPauseFramesReceived;
 bge_hostaddr xoffPauseFramesReceived;
 bge_hostaddr macControlFramesReceived;
 bge_hostaddr xoffStateEntered;
 bge_hostaddr dot3StatsFramesTooLong;
 bge_hostaddr etherStatsJabbers;
 bge_hostaddr etherStatsUndersizePkts;
 bge_hostaddr inRangeLengthError;
 bge_hostaddr outRangeLengthError;
 bge_hostaddr etherStatsPkts64Octets;
 bge_hostaddr etherStatsPkts65Octetsto127Octets;
 bge_hostaddr etherStatsPkts128Octetsto255Octets;
 bge_hostaddr etherStatsPkts256Octetsto511Octets;
 bge_hostaddr etherStatsPkts512Octetsto1023Octets;
 bge_hostaddr etherStatsPkts1024Octetsto1522Octets;
 bge_hostaddr etherStatsPkts1523Octetsto2047Octets;
 bge_hostaddr etherStatsPkts2048Octetsto4095Octets;
 bge_hostaddr etherStatsPkts4096Octetsto8191Octets;
 bge_hostaddr etherStatsPkts8192Octetsto9022Octets;
};
struct bge_tx_mac_stats {
 bge_hostaddr ifHCOutOctets;
 bge_hostaddr Reserved2;
 bge_hostaddr etherStatsCollisions;
 bge_hostaddr outXonSent;
 bge_hostaddr outXoffSent;
 bge_hostaddr flowControlDone;
 bge_hostaddr dot3StatsInternalMacTransmitErrors;
 bge_hostaddr dot3StatsSingleCollisionFrames;
 bge_hostaddr dot3StatsMultipleCollisionFrames;
 bge_hostaddr dot3StatsDeferredTransmissions;
 bge_hostaddr Reserved3;
 bge_hostaddr dot3StatsExcessiveCollisions;
 bge_hostaddr dot3StatsLateCollisions;
 bge_hostaddr dot3Collided2Times;
 bge_hostaddr dot3Collided3Times;
 bge_hostaddr dot3Collided4Times;
 bge_hostaddr dot3Collided5Times;
 bge_hostaddr dot3Collided6Times;
 bge_hostaddr dot3Collided7Times;
 bge_hostaddr dot3Collided8Times;
 bge_hostaddr dot3Collided9Times;
 bge_hostaddr dot3Collided10Times;
 bge_hostaddr dot3Collided11Times;
 bge_hostaddr dot3Collided12Times;
 bge_hostaddr dot3Collided13Times;
 bge_hostaddr dot3Collided14Times;
 bge_hostaddr dot3Collided15Times;
 bge_hostaddr ifHCOutUcastPkts;
 bge_hostaddr ifHCOutMulticastPkts;
 bge_hostaddr ifHCOutBroadcastPkts;
 bge_hostaddr dot3StatsCarrierSenseErrors;
 bge_hostaddr ifOutDiscards;
 bge_hostaddr ifOutErrors;
};
struct bge_mac_stats_regs {
 u_int32_t ifHCOutOctets;
 u_int32_t Reserved0;
 u_int32_t etherStatsCollisions;
 u_int32_t outXonSent;
 u_int32_t outXoffSent;
 u_int32_t Reserved1;
 u_int32_t dot3StatsInternalMacTransmitErrors;
 u_int32_t dot3StatsSingleCollisionFrames;
 u_int32_t dot3StatsMultipleCollisionFrames;
 u_int32_t dot3StatsDeferredTransmissions;
 u_int32_t Reserved2;
 u_int32_t dot3StatsExcessiveCollisions;
 u_int32_t dot3StatsLateCollisions;
 u_int32_t Reserved3[14];
 u_int32_t ifHCOutUcastPkts;
 u_int32_t ifHCOutMulticastPkts;
 u_int32_t ifHCOutBroadcastPkts;
 u_int32_t Reserved4[2];
 u_int32_t ifHCInOctets;
 u_int32_t Reserved5;
 u_int32_t etherStatsFragments;
 u_int32_t ifHCInUcastPkts;
 u_int32_t ifHCInMulticastPkts;
 u_int32_t ifHCInBroadcastPkts;
 u_int32_t dot3StatsFCSErrors;
 u_int32_t dot3StatsAlignmentErrors;
 u_int32_t xonPauseFramesReceived;
 u_int32_t xoffPauseFramesReceived;
 u_int32_t macControlFramesReceived;
 u_int32_t xoffStateEntered;
 u_int32_t dot3StatsFramesTooLong;
 u_int32_t etherStatsJabbers;
 u_int32_t etherStatsUndersizePkts;
};
struct bge_stats {
 u_int8_t Reserved0[256];
 struct bge_rx_mac_stats rxstats;
 bge_hostaddr Unused1[37];
 struct bge_tx_mac_stats txstats;
 bge_hostaddr Unused2[31];
 bge_hostaddr COSIfHCInPkts[16];
 bge_hostaddr COSFramesDroppedDueToFilters;
 bge_hostaddr nicDmaWriteQueueFull;
 bge_hostaddr nicDmaWriteHighPriQueueFull;
 bge_hostaddr nicNoMoreRxBDs;
 bge_hostaddr ifInDiscards;
 bge_hostaddr ifInErrors;
 bge_hostaddr nicRecvThresholdHit;
 bge_hostaddr Unused3[9];
 bge_hostaddr COSIfHCOutPkts[16];
 bge_hostaddr nicDmaReadQueueFull;
 bge_hostaddr nicDmaReadHighPriQueueFull;
 bge_hostaddr nicSendDataCompQueueFull;
 bge_hostaddr nicRingSetSendProdIndex;
 bge_hostaddr nicRingStatusUpdate;
 bge_hostaddr nicInterrupts;
 bge_hostaddr nicAvoidedInterrupts;
 bge_hostaddr nicSendThresholdHit;
 u_int8_t Reserved4[320];
};
struct bge_gib {
 struct bge_stats bge_stats;
 struct bge_rcb bge_tx_rcb[16];
 struct bge_rcb bge_std_rx_rcb;
 struct bge_rcb bge_jumbo_rx_rcb;
 struct bge_rcb bge_mini_rx_rcb;
 struct bge_rcb bge_return_rcb;
};
struct bge_ring_data {
 struct bge_rx_bd bge_rx_std_ring[512];
 struct bge_ext_rx_bd bge_rx_jumbo_ring[256];
 struct bge_rx_bd bge_rx_return_ring[1024];
 struct bge_tx_bd bge_tx_ring[512];
 struct bge_status_block bge_status_block;
 struct bge_tx_desc *bge_tx_ring_nic;
 struct bge_cmd_desc *bge_cmd_ring;
 struct bge_gib bge_info;
};
struct bge_chain_data {
 struct mbuf *bge_tx_chain[512];
 struct mbuf *bge_rx_std_chain[512];
 struct mbuf *bge_rx_jumbo_chain[256];
 struct mbuf *bge_rx_mini_chain[1024];
 bus_dmamap_t bge_tx_map[512];
 bus_dmamap_t bge_rx_std_map[512];
 bus_dmamap_t bge_rx_jumbo_map[256];
};
struct bge_type {
 u_int16_t bge_vid;
 u_int16_t bge_did;
 char *bge_name;
};
struct bge_softc {
 struct device bge_dev;
 struct arpcom arpcom;
 bus_space_handle_t bge_bhandle;
 bus_space_tag_t bge_btag;
 bus_size_t bge_bsize;
 bus_space_handle_t bge_apehandle;
 bus_space_tag_t bge_apetag;
 bus_size_t bge_apesize;
 void *bge_intrhand;
 struct pci_attach_args bge_pa;
 struct mii_data bge_mii;
 struct ifmedia bge_ifmedia;
 u_int32_t bge_expcap;
 u_int32_t bge_msicap;
 u_int32_t bge_mps;
 u_int32_t bge_expmrq;
 u_int32_t bge_lasttag;
 u_int32_t bge_flags;
 u_int32_t bge_phy_flags;
 bus_dma_tag_t bge_dmatag;
 u_int32_t bge_mfw_flags;
 int bge_phy_ape_lock;
 int bge_phy_addr;
 u_int32_t bge_chipid;
 struct bge_ring_data *bge_rdata;
 struct bge_chain_data bge_cdata;
 bus_dmamap_t bge_ring_map;
 bus_dma_segment_t bge_ring_seg;
 int bge_ring_nseg;
 u_int16_t bge_tx_saved_considx;
 u_int16_t bge_rx_saved_considx;
 u_int16_t bge_ev_saved_considx;
 u_int16_t bge_return_ring_cnt;
 u_int32_t bge_tx_prodidx;
 struct if_rxring bge_std_ring;
 u_int16_t bge_std;
 int bge_rx_std_len;
 struct if_rxring bge_jumbo_ring;
 u_int16_t bge_jumbo;
 u_int32_t bge_stat_ticks;
 u_int32_t bge_rx_coal_ticks;
 u_int32_t bge_tx_coal_ticks;
 u_int32_t bge_rx_max_coal_bds;
 u_int32_t bge_tx_max_coal_bds;
 u_int32_t bge_tx_buf_ratio;
 u_int32_t bge_sts;
 uint64_t bge_flowflags;
 int bge_txcnt;
 struct timeout bge_timeout;
 struct timeout bge_rxtimeout;
 struct timeout bge_rxtimeout_jumbo;
 u_int32_t bge_rx_discards;
 u_int32_t bge_tx_discards;
 u_int32_t bge_rx_inerrors;
 u_int32_t bge_rx_overruns;
 u_int32_t bge_tx_collisions;
 bus_dmamap_t bge_txdma[512];
};
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
struct bnx_type {
 u_int16_t bnx_vid;
 u_int16_t bnx_did;
 u_int16_t bnx_svid;
 u_int16_t bnx_sdid;
 char *bnx_name;
};
struct flash_spec {
 u_int32_t strapping;
 u_int32_t config1;
 u_int32_t config2;
 u_int32_t config3;
 u_int32_t write1;
 u_int32_t flags;
 u_int32_t page_bits;
 u_int32_t page_size;
 u_int32_t addr_mask;
 u_int32_t total_size;
 u_int8_t *name;
};
struct tx_bd {
 u_int32_t tx_bd_haddr_hi;
 u_int32_t tx_bd_haddr_lo;
 u_int32_t tx_bd_mss_nbytes;
 u_int16_t tx_bd_vlan_tag;
 u_int16_t tx_bd_flags;
};
struct rx_bd {
 u_int32_t rx_bd_haddr_hi;
 u_int32_t rx_bd_haddr_lo;
 u_int32_t rx_bd_len;
 u_int32_t rx_bd_flags;
};
struct status_block {
 u_int32_t status_attn_bits;
 u_int32_t status_attn_bits_ack;
 u_int16_t status_tx_quick_consumer_index0;
 u_int16_t status_tx_quick_consumer_index1;
 u_int16_t status_tx_quick_consumer_index2;
 u_int16_t status_tx_quick_consumer_index3;
 u_int16_t status_rx_quick_consumer_index0;
 u_int16_t status_rx_quick_consumer_index1;
 u_int16_t status_rx_quick_consumer_index2;
 u_int16_t status_rx_quick_consumer_index3;
 u_int16_t status_rx_quick_consumer_index4;
 u_int16_t status_rx_quick_consumer_index5;
 u_int16_t status_rx_quick_consumer_index6;
 u_int16_t status_rx_quick_consumer_index7;
 u_int16_t status_rx_quick_consumer_index8;
 u_int16_t status_rx_quick_consumer_index9;
 u_int16_t status_rx_quick_consumer_index10;
 u_int16_t status_rx_quick_consumer_index11;
 u_int16_t status_rx_quick_consumer_index12;
 u_int16_t status_rx_quick_consumer_index13;
 u_int16_t status_rx_quick_consumer_index14;
 u_int16_t status_rx_quick_consumer_index15;
 u_int16_t status_completion_producer_index;
 u_int16_t status_cmd_consumer_index;
 u_int16_t status_idx;
 u_int16_t status_unused;
};
struct statistics_block {
 u_int32_t stat_IfHCInOctets_hi;
 u_int32_t stat_IfHCInOctets_lo;
 u_int32_t stat_IfHCInBadOctets_hi;
 u_int32_t stat_IfHCInBadOctets_lo;
 u_int32_t stat_IfHCOutOctets_hi;
 u_int32_t stat_IfHCOutOctets_lo;
 u_int32_t stat_IfHCOutBadOctets_hi;
 u_int32_t stat_IfHCOutBadOctets_lo;
 u_int32_t stat_IfHCInUcastPkts_hi;
 u_int32_t stat_IfHCInUcastPkts_lo;
 u_int32_t stat_IfHCInMulticastPkts_hi;
 u_int32_t stat_IfHCInMulticastPkts_lo;
 u_int32_t stat_IfHCInBroadcastPkts_hi;
 u_int32_t stat_IfHCInBroadcastPkts_lo;
 u_int32_t stat_IfHCOutUcastPkts_hi;
 u_int32_t stat_IfHCOutUcastPkts_lo;
 u_int32_t stat_IfHCOutMulticastPkts_hi;
 u_int32_t stat_IfHCOutMulticastPkts_lo;
 u_int32_t stat_IfHCOutBroadcastPkts_hi;
 u_int32_t stat_IfHCOutBroadcastPkts_lo;
 u_int32_t stat_emac_tx_stat_dot3statsinternalmactransmiterrors;
 u_int32_t stat_Dot3StatsCarrierSenseErrors;
 u_int32_t stat_Dot3StatsFCSErrors;
 u_int32_t stat_Dot3StatsAlignmentErrors;
 u_int32_t stat_Dot3StatsSingleCollisionFrames;
 u_int32_t stat_Dot3StatsMultipleCollisionFrames;
 u_int32_t stat_Dot3StatsDeferredTransmissions;
 u_int32_t stat_Dot3StatsExcessiveCollisions;
 u_int32_t stat_Dot3StatsLateCollisions;
 u_int32_t stat_EtherStatsCollisions;
 u_int32_t stat_EtherStatsFragments;
 u_int32_t stat_EtherStatsJabbers;
 u_int32_t stat_EtherStatsUndersizePkts;
 u_int32_t stat_EtherStatsOverrsizePkts;
 u_int32_t stat_EtherStatsPktsRx64Octets;
 u_int32_t stat_EtherStatsPktsRx65Octetsto127Octets;
 u_int32_t stat_EtherStatsPktsRx128Octetsto255Octets;
 u_int32_t stat_EtherStatsPktsRx256Octetsto511Octets;
 u_int32_t stat_EtherStatsPktsRx512Octetsto1023Octets;
 u_int32_t stat_EtherStatsPktsRx1024Octetsto1522Octets;
 u_int32_t stat_EtherStatsPktsRx1523Octetsto9022Octets;
 u_int32_t stat_EtherStatsPktsTx64Octets;
 u_int32_t stat_EtherStatsPktsTx65Octetsto127Octets;
 u_int32_t stat_EtherStatsPktsTx128Octetsto255Octets;
 u_int32_t stat_EtherStatsPktsTx256Octetsto511Octets;
 u_int32_t stat_EtherStatsPktsTx512Octetsto1023Octets;
 u_int32_t stat_EtherStatsPktsTx1024Octetsto1522Octets;
 u_int32_t stat_EtherStatsPktsTx1523Octetsto9022Octets;
 u_int32_t stat_XonPauseFramesReceived;
 u_int32_t stat_XoffPauseFramesReceived;
 u_int32_t stat_OutXonSent;
 u_int32_t stat_OutXoffSent;
 u_int32_t stat_FlowControlDone;
 u_int32_t stat_MacControlFramesReceived;
 u_int32_t stat_XoffStateEntered;
 u_int32_t stat_IfInFramesL2FilterDiscards;
 u_int32_t stat_IfInRuleCheckerDiscards;
 u_int32_t stat_IfInFTQDiscards;
 u_int32_t stat_IfInMBUFDiscards;
 u_int32_t stat_IfInRuleCheckerP4Hit;
 u_int32_t stat_CatchupInRuleCheckerDiscards;
 u_int32_t stat_CatchupInFTQDiscards;
 u_int32_t stat_CatchupInMBUFDiscards;
 u_int32_t stat_CatchupInRuleCheckerP4Hit;
 u_int32_t stat_GenStat00;
 u_int32_t stat_GenStat01;
 u_int32_t stat_GenStat02;
 u_int32_t stat_GenStat03;
 u_int32_t stat_GenStat04;
 u_int32_t stat_GenStat05;
 u_int32_t stat_GenStat06;
 u_int32_t stat_GenStat07;
 u_int32_t stat_GenStat08;
 u_int32_t stat_GenStat09;
 u_int32_t stat_GenStat10;
 u_int32_t stat_GenStat11;
 u_int32_t stat_GenStat12;
 u_int32_t stat_GenStat13;
 u_int32_t stat_GenStat14;
 u_int32_t stat_GenStat15;
};
struct l2_fhdr {
 u_int32_t l2_fhdr_status;
 u_int32_t l2_fhdr_hash;
 u_int16_t l2_fhdr_pkt_len;
 u_int16_t l2_fhdr_vlan_tag;
 u_int16_t l2_fhdr_ip_xsum;
 u_int16_t l2_fhdr_tcp_udp_xsum;
};
struct cpu_reg {
 u_int32_t mode;
 u_int32_t mode_value_halt;
 u_int32_t mode_value_sstep;
 u_int32_t state;
 u_int32_t state_value_clear;
 u_int32_t gpr0;
 u_int32_t evmask;
 u_int32_t pc;
 u_int32_t inst;
 u_int32_t bp;
 u_int32_t spad_base;
 u_int32_t mips_view_base;
};
struct fw_info {
 u_int32_t ver_major;
 u_int32_t ver_minor;
 u_int32_t ver_fix;
 u_int32_t start_addr;
 u_int32_t text_addr;
 u_int32_t text_len;
 u_int32_t text_index;
 u_int32_t *text;
 u_int32_t data_addr;
 u_int32_t data_len;
 u_int32_t data_index;
 u_int32_t *data;
 u_int32_t sbss_addr;
 u_int32_t sbss_len;
 u_int32_t sbss_index;
 u_int32_t *sbss;
 u_int32_t bss_addr;
 u_int32_t bss_len;
 u_int32_t bss_index;
 u_int32_t *bss;
 u_int32_t rodata_addr;
 u_int32_t rodata_len;
 u_int32_t rodata_index;
 u_int32_t *rodata;
};
struct bnx_pkt {
 struct { struct bnx_pkt *tqe_next; struct bnx_pkt **tqe_prev; } pkt_entry;
 bus_dmamap_t pkt_dmamap;
 struct mbuf *pkt_mbuf;
 u_int16_t pkt_end_desc;
};
struct bnx_pkt_list { struct bnx_pkt *tqh_first; struct bnx_pkt **tqh_last; };
struct bnx_softc {
 struct device bnx_dev;
 struct arpcom arpcom;
 struct pci_attach_args bnx_pa;
 pci_intr_handle_t bnx_ih;
 bus_space_tag_t bnx_btag;
 bus_space_handle_t bnx_bhandle;
 bus_size_t bnx_size;
 void *bnx_intrhand;
 u_int32_t bnx_chipid;
 u_int32_t bnx_flags;
 u_int32_t bnx_phy_flags;
 u_int32_t bnx_shared_hw_cfg;
 u_int32_t bnx_port_hw_cfg;
 uint64_t bnx_flowflags;
 u_int16_t bus_speed_mhz;
 struct flash_spec *bnx_flash_info;
 u_int32_t bnx_flash_size;
 u_int32_t bnx_shmem_base;
 char * bnx_name;
 u_int32_t bnx_fw_ver;
 u_int16_t bnx_fw_timed_out;
 u_int16_t bnx_fw_wr_seq;
 u_int16_t bnx_fw_drv_pulse_wr_seq;
 u_char eaddr[6];
 u_int16_t bnx_tx_quick_cons_trip_int;
 u_int16_t bnx_tx_quick_cons_trip;
 u_int16_t bnx_rx_quick_cons_trip_int;
 u_int16_t bnx_rx_quick_cons_trip;
 u_int16_t bnx_comp_prod_trip_int;
 u_int16_t bnx_comp_prod_trip;
 u_int16_t bnx_tx_ticks_int;
 u_int16_t bnx_tx_ticks;
 u_int16_t bnx_rx_ticks_int;
 u_int16_t bnx_rx_ticks;
 u_int16_t bnx_com_ticks_int;
 u_int16_t bnx_com_ticks;
 u_int16_t bnx_cmd_ticks_int;
 u_int16_t bnx_cmd_ticks;
 u_int32_t bnx_stats_ticks;
 int bnx_phy_addr;
 struct mii_data bnx_mii;
 u_int16_t rx_prod;
 u_int16_t rx_cons;
 u_int32_t rx_prod_bseq;
 u_int16_t tx_prod;
 u_int16_t tx_cons;
 u_int32_t tx_prod_bseq;
 int bnx_link;
 struct timeout bnx_timeout;
 struct timeout bnx_rxrefill;
 u_int32_t max_frame_size;
 int mbuf_alloc_size;
 u_int32_t rx_mode;
 bus_dma_tag_t bnx_dmatag;
 bus_dma_segment_t tx_bd_chain_seg[2];
 int tx_bd_chain_rseg[2];
 bus_dmamap_t tx_bd_chain_map[2];
 struct tx_bd *tx_bd_chain[2];
 bus_addr_t tx_bd_chain_paddr[2];
 bus_dma_segment_t rx_bd_chain_seg[2];
 int rx_bd_chain_rseg[2];
 bus_dmamap_t rx_bd_chain_map[2];
 struct rx_bd *rx_bd_chain[2];
 bus_addr_t rx_bd_chain_paddr[2];
 bus_dma_segment_t status_seg;
 int status_rseg;
 bus_dmamap_t status_map;
 struct status_block *status_block;
 bus_addr_t status_block_paddr;
 int ctx_pages;
 bus_dma_segment_t ctx_segs[4];
 int ctx_rsegs[4];
 bus_dmamap_t ctx_map[4];
 void *ctx_block[4];
 u_int16_t last_status_idx;
 u_int16_t hw_rx_cons;
 u_int16_t hw_tx_cons;
 bus_dma_segment_t stats_seg;
 int stats_rseg;
 bus_dmamap_t stats_map;
 struct statistics_block *stats_block;
 bus_addr_t stats_block_paddr;
 bus_dma_segment_t rx_mbuf_seg;
 int rx_mbuf_rseg;
 bus_dma_segment_t tx_mbuf_seg;
 int tx_mbuf_rseg;
 bus_dmamap_t tx_mbuf_map[(((1 << 13) / sizeof(struct tx_bd)) * 2)];
 struct mbuf *tx_mbuf_ptr[(((1 << 13) / sizeof(struct tx_bd)) * 2)];
 bus_dmamap_t rx_mbuf_map[(((1 << 13) / sizeof(struct rx_bd)) * 2)];
 struct mbuf *rx_mbuf_ptr[(((1 << 13) / sizeof(struct rx_bd)) * 2)];
 struct if_rxring rx_ring;
 u_int16_t max_rx_bd;
 int used_tx_bd;
 u_int16_t max_tx_bd;
 u_int64_t stat_IfHCInOctets;
 u_int64_t stat_IfHCInBadOctets;
 u_int64_t stat_IfHCOutOctets;
 u_int64_t stat_IfHCOutBadOctets;
 u_int64_t stat_IfHCInUcastPkts;
 u_int64_t stat_IfHCInMulticastPkts;
 u_int64_t stat_IfHCInBroadcastPkts;
 u_int64_t stat_IfHCOutUcastPkts;
 u_int64_t stat_IfHCOutMulticastPkts;
 u_int64_t stat_IfHCOutBroadcastPkts;
 u_int32_t stat_emac_tx_stat_dot3statsinternalmactransmiterrors;
 u_int32_t stat_Dot3StatsCarrierSenseErrors;
 u_int32_t stat_Dot3StatsFCSErrors;
 u_int32_t stat_Dot3StatsAlignmentErrors;
 u_int32_t stat_Dot3StatsSingleCollisionFrames;
 u_int32_t stat_Dot3StatsMultipleCollisionFrames;
 u_int32_t stat_Dot3StatsDeferredTransmissions;
 u_int32_t stat_Dot3StatsExcessiveCollisions;
 u_int32_t stat_Dot3StatsLateCollisions;
 u_int32_t stat_EtherStatsCollisions;
 u_int32_t stat_EtherStatsFragments;
 u_int32_t stat_EtherStatsJabbers;
 u_int32_t stat_EtherStatsUndersizePkts;
 u_int32_t stat_EtherStatsOverrsizePkts;
 u_int32_t stat_EtherStatsPktsRx64Octets;
 u_int32_t stat_EtherStatsPktsRx65Octetsto127Octets;
 u_int32_t stat_EtherStatsPktsRx128Octetsto255Octets;
 u_int32_t stat_EtherStatsPktsRx256Octetsto511Octets;
 u_int32_t stat_EtherStatsPktsRx512Octetsto1023Octets;
 u_int32_t stat_EtherStatsPktsRx1024Octetsto1522Octets;
 u_int32_t stat_EtherStatsPktsRx1523Octetsto9022Octets;
 u_int32_t stat_EtherStatsPktsTx64Octets;
 u_int32_t stat_EtherStatsPktsTx65Octetsto127Octets;
 u_int32_t stat_EtherStatsPktsTx128Octetsto255Octets;
 u_int32_t stat_EtherStatsPktsTx256Octetsto511Octets;
 u_int32_t stat_EtherStatsPktsTx512Octetsto1023Octets;
 u_int32_t stat_EtherStatsPktsTx1024Octetsto1522Octets;
 u_int32_t stat_EtherStatsPktsTx1523Octetsto9022Octets;
 u_int32_t stat_XonPauseFramesReceived;
 u_int32_t stat_XoffPauseFramesReceived;
 u_int32_t stat_OutXonSent;
 u_int32_t stat_OutXoffSent;
 u_int32_t stat_FlowControlDone;
 u_int32_t stat_MacControlFramesReceived;
 u_int32_t stat_XoffStateEntered;
 u_int32_t stat_IfInFramesL2FilterDiscards;
 u_int32_t stat_IfInRuleCheckerDiscards;
 u_int32_t stat_IfInFTQDiscards;
 u_int32_t stat_IfInMBUFDiscards;
 u_int32_t stat_IfInRuleCheckerP4Hit;
 u_int32_t stat_CatchupInRuleCheckerDiscards;
 u_int32_t stat_CatchupInFTQDiscards;
 u_int32_t stat_CatchupInMBUFDiscards;
 u_int32_t stat_CatchupInRuleCheckerP4Hit;
 u_int32_t mbuf_alloc_failed;
 u_int32_t tx_dma_map_failures;
};
struct bnx_firmware_header {
 int bnx_COM_FwReleaseMajor;
 int bnx_COM_FwReleaseMinor;
 int bnx_COM_FwReleaseFix;
 u_int32_t bnx_COM_FwStartAddr;
 u_int32_t bnx_COM_FwTextAddr;
 int bnx_COM_FwTextLen;
 u_int32_t bnx_COM_FwDataAddr;
 int bnx_COM_FwDataLen;
 u_int32_t bnx_COM_FwRodataAddr;
 int bnx_COM_FwRodataLen;
 u_int32_t bnx_COM_FwBssAddr;
 int bnx_COM_FwBssLen;
 u_int32_t bnx_COM_FwSbssAddr;
 int bnx_COM_FwSbssLen;
 int bnx_RXP_FwReleaseMajor;
 int bnx_RXP_FwReleaseMinor;
 int bnx_RXP_FwReleaseFix;
 u_int32_t bnx_RXP_FwStartAddr;
 u_int32_t bnx_RXP_FwTextAddr;
 int bnx_RXP_FwTextLen;
 u_int32_t bnx_RXP_FwDataAddr;
 int bnx_RXP_FwDataLen;
 u_int32_t bnx_RXP_FwRodataAddr;
 int bnx_RXP_FwRodataLen;
 u_int32_t bnx_RXP_FwBssAddr;
 int bnx_RXP_FwBssLen;
 u_int32_t bnx_RXP_FwSbssAddr;
 int bnx_RXP_FwSbssLen;
 int bnx_TPAT_FwReleaseMajor;
 int bnx_TPAT_FwReleaseMinor;
 int bnx_TPAT_FwReleaseFix;
 u_int32_t bnx_TPAT_FwStartAddr;
 u_int32_t bnx_TPAT_FwTextAddr;
 int bnx_TPAT_FwTextLen;
 u_int32_t bnx_TPAT_FwDataAddr;
 int bnx_TPAT_FwDataLen;
 u_int32_t bnx_TPAT_FwRodataAddr;
 int bnx_TPAT_FwRodataLen;
 u_int32_t bnx_TPAT_FwBssAddr;
 int bnx_TPAT_FwBssLen;
 u_int32_t bnx_TPAT_FwSbssAddr;
 int bnx_TPAT_FwSbssLen;
 int bnx_TXP_FwReleaseMajor;
 int bnx_TXP_FwReleaseMinor;
 int bnx_TXP_FwReleaseFix;
 u_int32_t bnx_TXP_FwStartAddr;
 u_int32_t bnx_TXP_FwTextAddr;
 int bnx_TXP_FwTextLen;
 u_int32_t bnx_TXP_FwDataAddr;
 int bnx_TXP_FwDataLen;
 u_int32_t bnx_TXP_FwRodataAddr;
 int bnx_TXP_FwRodataLen;
 u_int32_t bnx_TXP_FwBssAddr;
 int bnx_TXP_FwBssLen;
 u_int32_t bnx_TXP_FwSbssAddr;
 int bnx_TXP_FwSbssLen;
};
struct bnx_rv2p_header {
 int bnx_rv2p_proc1len;
 int bnx_rv2p_proc2len;
};
int brgphy_probe(struct device *, void *, void *);
void brgphy_attach(struct device *, struct device *, void *);
struct cfattach brgphy_ca = {
 sizeof(struct mii_softc), brgphy_probe, brgphy_attach, mii_phy_detach
};
struct cfdriver brgphy_cd = {
 ((void *)0), "brgphy", DV_DULL
};
int brgphy_service(struct mii_softc *, struct mii_data *, int);
void brgphy_copper_status(struct mii_softc *);
void brgphy_fiber_status(struct mii_softc *);
void brgphy_5708s_status(struct mii_softc *);
void brgphy_5709s_status(struct mii_softc *);
int brgphy_mii_phy_auto(struct mii_softc *);
void brgphy_loop(struct mii_softc *);
void brgphy_reset(struct mii_softc *);
void brgphy_reset_bge(struct mii_softc *);
void brgphy_reset_bnx(struct mii_softc *);
void brgphy_bcm5401_dspcode(struct mii_softc *);
void brgphy_bcm5411_dspcode(struct mii_softc *);
void brgphy_bcm5421_dspcode(struct mii_softc *);
void brgphy_bcm54k2_dspcode(struct mii_softc *);
void brgphy_adc_bug(struct mii_softc *);
void brgphy_5704_a0_bug(struct mii_softc *);
void brgphy_ber_bug(struct mii_softc *);
void brgphy_crc_bug(struct mii_softc *);
void brgphy_disable_early_dac(struct mii_softc *sc);
void brgphy_jumbo_settings(struct mii_softc *);
void brgphy_eth_wirespeed(struct mii_softc *);
const struct mii_phy_funcs brgphy_copper_funcs = {
 brgphy_service, brgphy_copper_status, brgphy_reset,
};
const struct mii_phy_funcs brgphy_fiber_funcs = {
 brgphy_service, brgphy_fiber_status, brgphy_reset,
};
const struct mii_phy_funcs brgphy_5708s_funcs = {
 brgphy_service, brgphy_5708s_status, brgphy_reset,
};
const struct mii_phy_funcs brgphy_5709s_funcs = {
 brgphy_service, brgphy_5709s_status, brgphy_reset,
};
static const struct mii_phydesc brgphys[] = {
 { 0x000818, 0x0004,
   "BCM5400 1000baseT PHY" },
 { 0x000818, 0x0005,
   "BCM5401 10/100/1000baseT PHY" },
 { 0x000818, 0x0007,
   "BCM5411 10/100/1000baseT PHY" },
 { 0x000818, 0x000e,
   "BCM5421 10/100/1000baseT PHY" },
 { 0x000818, 0x002e,
   "BCM54K2 10/100/1000baseT PHY" },
 { 0x000818, 0x000c,
   "BCM5461 10/100/1000baseT PHY" },
 { 0x000818, 0x000d,
   "BCM5462 10/100/1000baseT PHY" },
 { 0x000818, 0x000b,
   "BCM5464 10/100/1000baseT PHY" },
 { 0x000818, 0x0011,
   "BCM5701 10/100/1000baseT PHY" },
 { 0x000818, 0x0016,
   "BCM5703 10/100/1000baseT PHY" },
 { 0x000818, 0x0019,
   "BCM5704 10/100/1000baseT PHY" },
 { 0x000818, 0x001a,
   "BCM5705 10/100/1000baseT PHY" },
 { 0x000818, 0x0034,
   "BCM5714 10/100/1000baseT/SX PHY" },
 { 0x000818, 0x0018,
   "BCM5750 10/100/1000baseT PHY" },
 { 0x000818, 0x0010,
   "BCM5752 10/100/1000baseT PHY" },
 { 0x000818, 0x0035,
   "BCM5780 10/100/1000baseT/SX PHY" },
 { 0x0050ef, 0x0007,
   "BCM54XX 10/100/1000baseT PHY" },
 { 0x0050ef, 0x000a,
   "BCM5481 10/100/1000baseT PHY" },
 { 0x0050ef, 0x000b,
   "BCM5482 10/100/1000baseT PHY" },
 { 0x0050ef, 0x002d,
   "BCM5722 10/100/1000baseT PHY" },
 { 0x0050ef, 0x000c,
   "BCM5755 10/100/1000baseT PHY" },
 { 0x0050ef, 0x003d,
   "BCM5761 10/100/1000baseT PHY" },
 { 0x0050ef, 0x003a,
   "BCM5784 10/100/1000baseT PHY" },
 { 0x0050ef, 0x000e,
   "BCM5787 10/100/1000baseT PHY" },
 { 0x000818, 0x0015,
   "BCM5706 10/100/1000baseT/SX PHY" },
 { 0x000818, 0x0036,
   "BCM5708C 10/100/1000baseT PHY" },
 { 0x0050ef, 0x0015,
   "BCM5708S 1000/2500baseSX PHY" },
 { 0x0050ef, 0x003c,
   "BCM5709 10/100/1000baseT PHY" },
 { 0x0050ef, 0x003f,
   "BCM5709S 1000/2500baseSX PHY" },
 { 0x0050ef, 0x002c,
   "BCM5709CAX 10/100/1000baseT PHY" },
 { 0x00d897, 0x0020,
   "BCM5717C 10/100/1000baseT PHY" },
 { 0x00d897, 0x0022,
   "BCM5719C 10/100/1000baseT PHY" },
 { 0x00d897, 0x0036,
   "BCM5720C 10/100/1000baseT PHY" },
 { 0x00d897, 0x0024,
   "BCM57765 10/100/1000baseT PHY" },
 { 0x00d897, 0x0019,
   "BCM57780 10/100/1000baseT PHY" },
 { 0x000af7, 0x0004,
   "BCM5906 10/100baseTX PHY" },
 { 0, 0,
   ((void *)0) },
};
int
brgphy_probe(struct device *parent, void *match, void *aux)
{
 struct mii_attach_args *ma = aux;
 if (mii_phy_match(ma, brgphys) != ((void *)0))
  return (10);
 return (0);
}
void
brgphy_attach(struct device *parent, struct device *self, void *aux)
{
 struct mii_softc *sc = (struct mii_softc *)self;
 struct bge_softc *bge_sc = ((void *)0);
 struct bnx_softc *bnx_sc = ((void *)0);
 struct mii_attach_args *ma = aux;
 struct mii_data *mii = ma->mii_data;
 const struct mii_phydesc *mpd;
 char *devname;
 int fast_ether = 0;
 devname = sc->mii_dev.dv_parent->dv_cfdata->cf_driver->cd_name;
 if (strcmp(devname, "bge") == 0) {
  bge_sc = mii->mii_ifp->if_softc;
  if (bge_sc->bge_phy_flags & 0x00000002)
   fast_ether = 1;
 } else if (strcmp(devname, "bnx") == 0)
  bnx_sc = mii->mii_ifp->if_softc;
 mpd = mii_phy_match(ma, brgphys);
 printf(": %s, rev. %d\n", mpd->mpd_name, ((ma->mii_id2) & 0x000f));
 sc->mii_inst = mii->mii_instance;
 sc->mii_phy = ma->mii_phyno;
 sc->mii_oui = (((ma->mii_id1) << 6) | ((ma->mii_id2) >> 10));
 sc->mii_model = (((ma->mii_id2) & 0x03f0) >> 4);
 sc->mii_rev = ((ma->mii_id2) & 0x000f);
 sc->mii_pdata = mii;
 sc->mii_flags = ma->mii_flags;
 if (sc->mii_flags & 0x0020) {
  if (strcmp(devname, "bnx") == 0) {
   if ((((bnx_sc)->bnx_chipid) & 0xffff0000) == 0x57080000)
    sc->mii_funcs = &brgphy_5708s_funcs;
   else if ((((bnx_sc)->bnx_chipid) & 0xffff0000) == 0x57090000)
    sc->mii_funcs = &brgphy_5709s_funcs;
   else
    sc->mii_funcs = &brgphy_fiber_funcs;
  } else
   sc->mii_funcs = &brgphy_fiber_funcs;
 } else
  sc->mii_funcs = &brgphy_copper_funcs;
 if (fast_ether == 1)
  sc->mii_anegticks = 5;
 else
  sc->mii_anegticks = 10;
 sc->mii_flags |= 0x0002 | 0x0004;
 (*(sc)->mii_funcs->pf_reset)((sc));
 sc->mii_capabilities = (*(sc)->mii_pdata->mii_readreg)((sc)->mii_dev.dv_parent, (sc)->mii_phy, (0x01)) & ma->mii_capmask;
 if (sc->mii_capabilities & 0x0100)
  sc->mii_extcapabilities = (*(sc)->mii_pdata->mii_readreg)((sc)->mii_dev.dv_parent, (sc)->mii_phy, (0x0f));
 ifmedia_add(&mii->mii_media, (((0x0000000000000100ULL) | (2ULL) | (0) | ((uint64_t)(sc->mii_inst) << 56))), (0x0400), ((void *)0));
 if (sc->mii_flags & 0x0020) {
  ifmedia_add(&mii->mii_media, (((0x0000000000000100ULL) | (11) | (0x0000010000000000ULL) | ((uint64_t)(sc->mii_inst) << 56))), (0x0040 | 0x0100), ((void *)0));
  if (strcmp(devname, "bnx") == 0) {
   if (bnx_sc->bnx_phy_flags & 0x008)
    ifmedia_add(&mii->mii_media, (((0x0000000000000100ULL) | (21) | (0x0000010000000000ULL) | ((uint64_t)(sc->mii_inst) << 56))), (0), ((void *)0));
  }
 } else {
  ifmedia_add(&mii->mii_media, (((0x0000000000000100ULL) | (3) | (0) | ((uint64_t)(sc->mii_inst) << 56))), (0x0000), ((void *)0));
  ifmedia_add(&mii->mii_media, (((0x0000000000000100ULL) | (3) | (0x0000010000000000ULL) | ((uint64_t)(sc->mii_inst) << 56))), (0x0000 | 0x0100), ((void *)0));
  ifmedia_add(&mii->mii_media, (((0x0000000000000100ULL) | (6) | (0) | ((uint64_t)(sc->mii_inst) << 56))), (0x2000), ((void *)0));
  ifmedia_add(&mii->mii_media, (((0x0000000000000100ULL) | (6) | (0x0000010000000000ULL) | ((uint64_t)(sc->mii_inst) << 56))), (0x2000 | 0x0100), ((void *)0));
  if (fast_ether == 0) {
   ifmedia_add(&mii->mii_media, (((0x0000000000000100ULL) | (16) | (0) | ((uint64_t)(sc->mii_inst) << 56))), (0x0040), ((void *)0));
   ifmedia_add(&mii->mii_media, (((0x0000000000000100ULL) | (16) | (0x0000010000000000ULL) | ((uint64_t)(sc->mii_inst) << 56))), (0x0040 | 0x0100), ((void *)0));
  }
 }
 ifmedia_add(&mii->mii_media, (((0x0000000000000100ULL) | (0ULL) | (0) | ((uint64_t)(sc->mii_inst) << 56))), (0), ((void *)0));
}
int
brgphy_service(struct mii_softc *sc, struct mii_data *mii, int cmd)
{
 struct ifmedia_entry *ife = mii->mii_media.ifm_cur;
 int reg64, speed = 0, gig;
 if ((sc->mii_dev.dv_flags & 0x0001) == 0)
  return (6);
 switch (cmd) {
 case 3:
  if ((((ife->ifm_media) & 0xff00000000000000ULL) >> 56) != sc->mii_inst)
   return (0);
  break;
 case 2:
  if ((((ife->ifm_media) & 0xff00000000000000ULL) >> 56) != sc->mii_inst) {
   reg64 = (*(sc)->mii_pdata->mii_readreg)((sc)->mii_dev.dv_parent, (sc)->mii_phy, (0x00));
   (*(sc)->mii_pdata->mii_writereg)((sc)->mii_dev.dv_parent, (sc)->mii_phy, (0x00), (reg64 | 0x0400));
   return (0);
  }
  if ((mii->mii_ifp->if_flags & 0x1) == 0)
   break;
  (*(sc)->mii_funcs->pf_reset)((sc));
  switch (((ife->ifm_media) & 0x00000000000000ffULL)) {
  case 0ULL:
   (void) brgphy_mii_phy_auto(sc);
   break;
  case 21:
   speed = 0x20;
   goto setit;
  case 16:
   speed = 0x0040;
   goto setit;
  case 6:
   speed = 0x2000;
   goto setit;
  case 3:
   speed = 0x0000;
setit:
   brgphy_loop(sc);
   if ((ife->ifm_media & 0x00ffff0000000000ULL) == 0x0000010000000000ULL) {
    speed |= 0x0100;
    gig = 0x0200;
   } else {
    gig = 0x0100;
   }
   (*(sc)->mii_pdata->mii_writereg)((sc)->mii_dev.dv_parent, (sc)->mii_phy, (0x09), (0));
   (*(sc)->mii_pdata->mii_writereg)((sc)->mii_dev.dv_parent, (sc)->mii_phy, (0x04), (0x0001));
   (*(sc)->mii_pdata->mii_writereg)((sc)->mii_dev.dv_parent, (sc)->mii_phy, (0x00), (speed));
   if ((((ife->ifm_media) & 0x00000000000000ffULL) != 16) &&
       (((ife->ifm_media) & 0x00000000000000ffULL) != 11) &&
       (((ife->ifm_media) & 0x00000000000000ffULL) != 21))
    break;
   (*(sc)->mii_pdata->mii_writereg)((sc)->mii_dev.dv_parent, (sc)->mii_phy, (0x09), (gig));
   (*(sc)->mii_pdata->mii_writereg)((sc)->mii_dev.dv_parent, (sc)->mii_phy, (0x00), (speed|0x1000|0x0200));
   if (sc->mii_oui != 0x000818 ||
       sc->mii_model != 0x0011)
     break;
   if (mii->mii_media.ifm_media & 0x0000000000010000ULL)
    gig |= 0x1000|0x0800;
   (*(sc)->mii_pdata->mii_writereg)((sc)->mii_dev.dv_parent, (sc)->mii_phy, (0x09), (gig));
   break;
  default:
   return (22);
  }
  break;
 case 1:
  if ((((ife->ifm_media) & 0xff00000000000000ULL) >> 56) != sc->mii_inst)
   return (0);
  if ((mii->mii_ifp->if_flags & 0x1) == 0)
   return (0);
  if (((ife->ifm_media) & 0x00000000000000ffULL) != 0ULL)
   break;
  reg64 = (*(sc)->mii_pdata->mii_readreg)((sc)->mii_dev.dv_parent, (sc)->mii_phy, (0x01)) | (*(sc)->mii_pdata->mii_readreg)((sc)->mii_dev.dv_parent, (sc)->mii_phy, (0x01));
  if (reg64 & 0x0004) {
   sc->mii_ticks = 0;
   break;
  }
  if (++sc->mii_ticks <= sc->mii_anegticks)
   break;
  sc->mii_ticks = 0;
  brgphy_mii_phy_auto(sc);
  break;
 }
 mii_phy_status(sc);
 if (sc->mii_media_active != mii->mii_media_active ||
     sc->mii_media_status != mii->mii_media_status ||
     cmd == 2) {
  switch (sc->mii_oui) {
  case 0x001018:
   switch (sc->mii_model) {
   case 0x0004:
    brgphy_bcm5401_dspcode(sc);
    break;
   }
   break;
  case 0x000818:
   switch (sc->mii_model) {
   case 0x0005:
    if (sc->mii_rev == 1 || sc->mii_rev == 3)
     brgphy_bcm5401_dspcode(sc);
    break;
   case 0x0007:
    brgphy_bcm5411_dspcode(sc);
    break;
   }
   break;
  }
 }
 mii_phy_update(sc, cmd);
 return (0);
}
void
brgphy_copper_status(struct mii_softc *sc)
{
 struct mii_data *mii = sc->mii_pdata;
 struct ifmedia_entry *ife = mii->mii_media.ifm_cur;
 int bmcr, bmsr;
 mii->mii_media_status = 0x0000000000000001ULL;
 mii->mii_media_active = 0x0000000000000100ULL;
 bmsr = (*(sc)->mii_pdata->mii_readreg)((sc)->mii_dev.dv_parent, (sc)->mii_phy, (0x01)) | (*(sc)->mii_pdata->mii_readreg)((sc)->mii_dev.dv_parent, (sc)->mii_phy, (0x01));
 if (bmsr & 0x0004)
  mii->mii_media_status |= 0x0000000000000002ULL;
 bmcr = (*(sc)->mii_pdata->mii_readreg)((sc)->mii_dev.dv_parent, (sc)->mii_phy, (0x00));
 if (bmcr & 0x4000)
  mii->mii_media_active |= 0x0000800000000000ULL;
 if (bmcr & 0x1000) {
  int auxsts;
  if ((bmsr & 0x0020) == 0) {
   mii->mii_media_active |= 2ULL;
   return;
  }
  auxsts = (*(sc)->mii_pdata->mii_readreg)((sc)->mii_dev.dv_parent, (sc)->mii_phy, (0x19));
  switch (auxsts & 0x0700) {
  case 0x0700:
   mii->mii_media_active |= 16 | 0x0000010000000000ULL;
   break;
  case 0x0600:
   mii->mii_media_active |= 16 | 0x0000020000000000ULL;
   break;
  case 0x0500:
   mii->mii_media_active |= 6 | 0x0000010000000000ULL;
   break;
  case 0x0400:
   mii->mii_media_active |= 8 | 0x0000020000000000ULL;
   break;
  case 0x0300:
   mii->mii_media_active |= 6 | 0x0000020000000000ULL;
   break;
  case 0x0200:
   mii->mii_media_active |= 3 | 0x0000010000000000ULL;
   break;
  case 0x0100:
   mii->mii_media_active |= 3 | 0x0000020000000000ULL;
   break;
  default:
   if (sc->mii_oui == 0x000af7 &&
       sc->mii_model == 0x0004) {
    mii->mii_media_active |= (auxsts &
        0x0008) ? 6 : 3;
    mii->mii_media_active |= (auxsts &
        0x0001) ? 0x0000010000000000ULL : 0x0000020000000000ULL;
    break;
   }
   mii->mii_media_active |= 2ULL;
   return;
  }
  if (mii->mii_media_active & 0x0000010000000000ULL)
   mii->mii_media_active |= mii_phy_flowstatus(sc);
  if (((mii->mii_media_active) & 0x00000000000000ffULL) == 16) {
   if ((*(sc)->mii_pdata->mii_readreg)((sc)->mii_dev.dv_parent, (sc)->mii_phy, (0x0a)) & 0x4000)
    mii->mii_media_active |= 0x0000000000010000ULL;
  }
 } else
  mii->mii_media_active = ife->ifm_media;
}
void
brgphy_fiber_status(struct mii_softc *sc)
{
 struct mii_data *mii = sc->mii_pdata;
 struct ifmedia_entry *ife = mii->mii_media.ifm_cur;
 int bmcr, bmsr;
 mii->mii_media_status = 0x0000000000000001ULL;
 mii->mii_media_active = 0x0000000000000100ULL;
 bmsr = (*(sc)->mii_pdata->mii_readreg)((sc)->mii_dev.dv_parent, (sc)->mii_phy, (0x01)) | (*(sc)->mii_pdata->mii_readreg)((sc)->mii_dev.dv_parent, (sc)->mii_phy, (0x01));
 if (bmsr & 0x0004)
  mii->mii_media_status |= 0x0000000000000002ULL;
 bmcr = (*(sc)->mii_pdata->mii_readreg)((sc)->mii_dev.dv_parent, (sc)->mii_phy, (0x00));
 if (bmcr & 0x4000)
  mii->mii_media_active |= 0x0000800000000000ULL;
 if (bmcr & 0x1000) {
  int val;
  if ((bmsr & 0x0020) == 0) {
   mii->mii_media_active |= 2ULL;
   return;
  }
  mii->mii_media_active |= 11;
  val = (*(sc)->mii_pdata->mii_readreg)((sc)->mii_dev.dv_parent, (sc)->mii_phy, (0x04)) & (*(sc)->mii_pdata->mii_readreg)((sc)->mii_dev.dv_parent, (sc)->mii_phy, (0x05));
  if (val & 0x0020)
   mii->mii_media_active |= 0x0000010000000000ULL;
  else
   mii->mii_media_active |= 0x0000020000000000ULL;
  if (mii->mii_media_active & 0x0000010000000000ULL)
   mii->mii_media_active |= mii_phy_flowstatus(sc);
 } else
  mii->mii_media_active = ife->ifm_media;
}
void
brgphy_5708s_status(struct mii_softc *sc)
{
 struct mii_data *mii = sc->mii_pdata;
 struct ifmedia_entry *ife = mii->mii_media.ifm_cur;
 int bmcr, bmsr;
 mii->mii_media_status = 0x0000000000000001ULL;
 mii->mii_media_active = 0x0000000000000100ULL;
 bmsr = (*(sc)->mii_pdata->mii_readreg)((sc)->mii_dev.dv_parent, (sc)->mii_phy, (0x01)) | (*(sc)->mii_pdata->mii_readreg)((sc)->mii_dev.dv_parent, (sc)->mii_phy, (0x01));
 if (bmsr & 0x0004)
  mii->mii_media_status |= 0x0000000000000002ULL;
 bmcr = (*(sc)->mii_pdata->mii_readreg)((sc)->mii_dev.dv_parent, (sc)->mii_phy, (0x00));
 if (bmcr & 0x4000)
  mii->mii_media_active |= 0x0000800000000000ULL;
 if (bmcr & 0x1000) {
  int xstat;
  if ((bmsr & 0x0020) == 0) {
   mii->mii_media_active |= 2ULL;
   return;
  }
  (*(sc)->mii_pdata->mii_writereg)((sc)->mii_dev.dv_parent, (sc)->mii_phy, (0x1f), (0x0000));
  xstat = (*(sc)->mii_pdata->mii_readreg)((sc)->mii_dev.dv_parent, (sc)->mii_phy, (0x14));
  switch (xstat & 0x0018) {
  case (0x0 << 3):
   mii->mii_media_active |= 13;
   break;
  case (0x1 << 3):
   mii->mii_media_active |= 7;
   break;
  case (0x2 << 3):
   mii->mii_media_active |= 11;
   break;
  case (0x3 << 3):
   mii->mii_media_active |= 21;
   break;
  }
  if (xstat & 0x0004)
   mii->mii_media_active |= 0x0000010000000000ULL;
  else
   mii->mii_media_active |= 0x0000020000000000ULL;
  if (mii->mii_media_active & 0x0000010000000000ULL) {
   if (xstat & 0x0020)
    mii->mii_media_active |= 0x0000040000000000ULL | 0x0000000000040000ULL;
   if (xstat & 0x0040)
    mii->mii_media_active |= 0x0000040000000000ULL | 0x0000000000020000ULL;
  }
 } else
  mii->mii_media_active = ife->ifm_media;
}
void
brgphy_5709s_status(struct mii_softc *sc)
{
 struct mii_data *mii = sc->mii_pdata;
 struct ifmedia_entry *ife = mii->mii_media.ifm_cur;
 int bmcr, bmsr;
 mii->mii_media_status = 0x0000000000000001ULL;
 mii->mii_media_active = 0x0000000000000100ULL;
        bmsr = (*(sc)->mii_pdata->mii_readreg)((sc)->mii_dev.dv_parent, (sc)->mii_phy, (0x01)) | (*(sc)->mii_pdata->mii_readreg)((sc)->mii_dev.dv_parent, (sc)->mii_phy, (0x01));
        if (bmsr & 0x0004)
                mii->mii_media_status |= 0x0000000000000002ULL;
        bmcr = (*(sc)->mii_pdata->mii_readreg)((sc)->mii_dev.dv_parent, (sc)->mii_phy, (0x00));
        if (bmcr & 0x4000)
                mii->mii_media_active |= 0x0000800000000000ULL;
        if (bmcr & 0x1000) {
                int xstat;
                if ((bmsr & 0x0020) == 0) {
                        mii->mii_media_active |= 2ULL;
                        return;
                }
                (*(sc)->mii_pdata->mii_writereg)((sc)->mii_dev.dv_parent, (sc)->mii_phy, (0x1F), (0x8120));
                xstat = (*(sc)->mii_pdata->mii_readreg)((sc)->mii_dev.dv_parent, (sc)->mii_phy, (0x1B));
                (*(sc)->mii_pdata->mii_writereg)((sc)->mii_dev.dv_parent, (sc)->mii_phy, (0x1F), (0xFFE0));
                switch (xstat & 0x3F00) {
                case 0x0000:
                        mii->mii_media_active |= 13;
                        break;
                case 0x0100:
                        mii->mii_media_active |= 7;
                        break;
                case 0x0200:
                        mii->mii_media_active |= 11;
                        break;
                case 0x0300:
                        mii->mii_media_active |= 21;
                        break;
                }
                if (xstat & 0x0008)
                        mii->mii_media_active |= 0x0000010000000000ULL;
                else
                        mii->mii_media_active |= 0x0000020000000000ULL;
  if (mii->mii_media_active & 0x0000010000000000ULL)
   mii->mii_media_active |= mii_phy_flowstatus(sc);
 } else
  mii->mii_media_active = ife->ifm_media;
}
int
brgphy_mii_phy_auto(struct mii_softc *sc)
{
 int anar, ktcr = 0;
 (*(sc)->mii_funcs->pf_reset)((sc));
 if (sc->mii_flags & 0x0020) {
  anar = 0x0020 | 0x0040;
  if (sc->mii_flags & 0x0100)
   anar |= (3 << 7);
  (*(sc)->mii_pdata->mii_writereg)((sc)->mii_dev.dv_parent, (sc)->mii_phy, (0x04), (anar));
 } else {
  anar = (((sc->mii_capabilities) & (0x8000|0x4000|0x2000| 0x1000|0x0800|0x0400|0x0200)) >> 6) | 0x0001;
  if (sc->mii_flags & 0x0100)
   anar |= (2 << 10) | 0x0400;
  (*(sc)->mii_pdata->mii_writereg)((sc)->mii_dev.dv_parent, (sc)->mii_phy, (0x04), (anar));
 }
 ktcr = 0x0200 | 0x0100;
 if (sc->mii_oui == 0x000818 &&
     sc->mii_model == 0x0011)
  ktcr |= 0x1000 | 0x0800;
 (*(sc)->mii_pdata->mii_writereg)((sc)->mii_dev.dv_parent, (sc)->mii_phy, (0x09), (ktcr));
 ktcr = (*(sc)->mii_pdata->mii_readreg)((sc)->mii_dev.dv_parent, (sc)->mii_phy, (0x09));
 (*(sc)->mii_pdata->mii_writereg)((sc)->mii_dev.dv_parent, (sc)->mii_phy, (0x00), (0x1000 | 0x0200));
 (*(sc)->mii_pdata->mii_writereg)((sc)->mii_dev.dv_parent, (sc)->mii_phy, (0x1B), (0xFF00));
 return (-2);
}
void
brgphy_loop(struct mii_softc *sc)
{
 u_int32_t bmsr;
 int i;
 (*(sc)->mii_pdata->mii_writereg)((sc)->mii_dev.dv_parent, (sc)->mii_phy, (0x00), (0x4000));
 for (i = 0; i < 15000; i++) {
  bmsr = (*(sc)->mii_pdata->mii_readreg)((sc)->mii_dev.dv_parent, (sc)->mii_phy, (0x01));
  if (!(bmsr & 0x0004))
   break;
  delay(10);
 }
}
void
brgphy_reset(struct mii_softc *sc)
{
 char *devname;
 devname = sc->mii_dev.dv_parent->dv_cfdata->cf_driver->cd_name;
 mii_phy_reset(sc);
 switch (sc->mii_oui) {
 case 0x001018:
  switch (sc->mii_model) {
  case 0x0004:
   brgphy_bcm5401_dspcode(sc);
   break;
  case 0x0005:
   if (sc->mii_rev == 1 || sc->mii_rev == 3)
    brgphy_bcm5401_dspcode(sc);
   break;
  case 0x0007:
   brgphy_bcm5411_dspcode(sc);
   break;
  }
  break;
 case 0x000818:
  switch (sc->mii_model) {
  case 0x000e:
   brgphy_bcm5421_dspcode(sc);
   break;
  case 0x002e:
   brgphy_bcm54k2_dspcode(sc);
   break;
  }
  break;
 }
 if (strcmp(devname, "bge") == 0)
  brgphy_reset_bge(sc);
 else if (strcmp(devname, "bnx") == 0)
  brgphy_reset_bnx(sc);
}
void
brgphy_reset_bge(struct mii_softc *sc)
{
 struct bge_softc *bge_sc = sc->mii_pdata->mii_ifp->if_softc;
 if (sc->mii_flags & 0x0020)
  return;
 switch (sc->mii_oui) {
 case 0x00d897:
  switch (sc->mii_model) {
  case 0x0020:
  case 0x0022:
  case 0x0036:
  case 0x0024:
   return;
  }
 }
 if (bge_sc->bge_phy_flags & 0x00000008)
  brgphy_adc_bug(sc);
 if (bge_sc->bge_phy_flags & 0x00008010)
  brgphy_5704_a0_bug(sc);
 if (bge_sc->bge_phy_flags & 0x00000040)
  brgphy_ber_bug(sc);
 else if (bge_sc->bge_phy_flags & 0x00000020) {
     (*(sc)->mii_pdata->mii_writereg)((sc)->mii_dev.dv_parent, (sc)->mii_phy, (0x18), (0x0c00));
  (*(sc)->mii_pdata->mii_writereg)((sc)->mii_dev.dv_parent, (sc)->mii_phy, (0x17), (0x000a));
  if (bge_sc->bge_phy_flags & 0x00000080) {
   (*(sc)->mii_pdata->mii_writereg)((sc)->mii_dev.dv_parent, (sc)->mii_phy, (0x15), (0x110b));
   (*(sc)->mii_pdata->mii_writereg)((sc)->mii_dev.dv_parent, (sc)->mii_phy, (0x1E), (0x0010 | 0x4));
  } else
   (*(sc)->mii_pdata->mii_writereg)((sc)->mii_dev.dv_parent, (sc)->mii_phy, (0x15), (0x010b));
  (*(sc)->mii_pdata->mii_writereg)((sc)->mii_dev.dv_parent, (sc)->mii_phy, (0x18), (0x0400));
 }
 if (bge_sc->bge_phy_flags & 0x00000004)
  brgphy_crc_bug(sc);
 if (bge_sc->bge_flags & 0x00000100)
  brgphy_jumbo_settings(sc);
 if (sc->mii_oui == 0x000af7 &&
     sc->mii_model == 0x0004)
  (*(sc)->mii_pdata->mii_writereg)((sc)->mii_dev.dv_parent, (sc)->mii_phy, (0x17), (0x12));
 if (!(bge_sc->bge_phy_flags & 0x00000100))
  brgphy_eth_wirespeed(sc);
 if (bge_sc->bge_phy_flags & 0x00000001) {
  (*(sc)->mii_pdata->mii_writereg)((sc)->mii_dev.dv_parent, (sc)->mii_phy, (0x10), ((*(sc)->mii_pdata->mii_readreg)((sc)->mii_dev.dv_parent, (sc)->mii_phy, (0x10)) & ~0x0002));
 }
}
void
brgphy_reset_bnx(struct mii_softc *sc)
{
 struct bnx_softc *bnx_sc = sc->mii_pdata->mii_ifp->if_softc;
 if ((((bnx_sc)->bnx_chipid) & 0xffff0000) == 0x57080000 &&
     sc->mii_flags & 0x0020) {
  (*(sc)->mii_pdata->mii_writereg)((sc)->mii_dev.dv_parent, (sc)->mii_phy, (0x1f), (0x0002));
  (*(sc)->mii_pdata->mii_writereg)((sc)->mii_dev.dv_parent, (sc)->mii_phy, (0x10), (0x0001));
  (*(sc)->mii_pdata->mii_writereg)((sc)->mii_dev.dv_parent, (sc)->mii_phy, (0x1f), (0x0000));
  (*(sc)->mii_pdata->mii_writereg)((sc)->mii_dev.dv_parent, (sc)->mii_phy, (0x10), ((*(sc)->mii_pdata->mii_readreg)((sc)->mii_dev.dv_parent, (sc)->mii_phy, (0x10)) | 0x0010 | 0x0001));
  (*(sc)->mii_pdata->mii_writereg)((sc)->mii_dev.dv_parent, (sc)->mii_phy, (0x11), ((*(sc)->mii_pdata->mii_readreg)((sc)->mii_dev.dv_parent, (sc)->mii_phy, (0x11)) | 0x0001));
  if (bnx_sc->bnx_phy_flags & 0x008) {
   (*(sc)->mii_pdata->mii_writereg)((sc)->mii_dev.dv_parent, (sc)->mii_phy, (0x0B), ((*(sc)->mii_pdata->mii_readreg)((sc)->mii_dev.dv_parent, (sc)->mii_phy, (0x0B)) | 0x0001));
  }
  if (((((bnx_sc)->bnx_chipid) & 0xfffffff0) == 0x57080000) ||
      ((((bnx_sc)->bnx_chipid) & 0xfffffff0) == 0x57081000) ||
      ((((bnx_sc)->bnx_chipid) & 0xfffffff0) == 0x57081010)) {
   (*(sc)->mii_pdata->mii_writereg)((sc)->mii_dev.dv_parent, (sc)->mii_phy, (0x1f), (0x0005));
   (*(sc)->mii_pdata->mii_writereg)((sc)->mii_dev.dv_parent, (sc)->mii_phy, (0x15), ((*(sc)->mii_pdata->mii_readreg)((sc)->mii_dev.dv_parent, (sc)->mii_phy, (0x15)) & ~0x30));
   (*(sc)->mii_pdata->mii_writereg)((sc)->mii_dev.dv_parent, (sc)->mii_phy, (0x1f), (0x0000));
  }
  if ((bnx_sc->bnx_shared_hw_cfg & 0x40) &&
      (bnx_sc->bnx_port_hw_cfg & 0x0000ffff)) {
   (*(sc)->mii_pdata->mii_writereg)((sc)->mii_dev.dv_parent, (sc)->mii_phy, (0x1f), (0x0005));
   (*(sc)->mii_pdata->mii_writereg)((sc)->mii_dev.dv_parent, (sc)->mii_phy, (0x17), (bnx_sc->bnx_port_hw_cfg & 0x0000ffff));
       (*(sc)->mii_pdata->mii_writereg)((sc)->mii_dev.dv_parent, (sc)->mii_phy, (0x1f), (0x0000));
  }
 } else if ((((bnx_sc)->bnx_chipid) & 0xffff0000) == 0x57090000 &&
     sc->mii_flags & 0x0020) {
  (*(sc)->mii_pdata->mii_writereg)((sc)->mii_dev.dv_parent, (sc)->mii_phy, (0x1F), (0x8300));
  (*(sc)->mii_pdata->mii_writereg)((sc)->mii_dev.dv_parent, (sc)->mii_phy, (0x0010), (((*(sc)->mii_pdata->mii_readreg)((sc)->mii_dev.dv_parent, (sc)->mii_phy, (0x0010)) & ~0x0010) | 0x0001));
  if (bnx_sc->bnx_phy_flags & 0x008) {
   (*(sc)->mii_pdata->mii_writereg)((sc)->mii_dev.dv_parent, (sc)->mii_phy, (0x1F), (0x8320));
   (*(sc)->mii_pdata->mii_writereg)((sc)->mii_dev.dv_parent, (sc)->mii_phy, (0x19), ((*(sc)->mii_pdata->mii_readreg)((sc)->mii_dev.dv_parent, (sc)->mii_phy, (0x19)) | 0x0001));
  }
  (*(sc)->mii_pdata->mii_writereg)((sc)->mii_dev.dv_parent, (sc)->mii_phy, (0x1F), (0x8350));
  (*(sc)->mii_pdata->mii_writereg)((sc)->mii_dev.dv_parent, (sc)->mii_phy, (0x10), ((*(sc)->mii_pdata->mii_readreg)((sc)->mii_dev.dv_parent, (sc)->mii_phy, (0x10)) | 0x0001 | 0x0001));
  (*(sc)->mii_pdata->mii_writereg)((sc)->mii_dev.dv_parent, (sc)->mii_phy, (0x1F), (0x8370));
  (*(sc)->mii_pdata->mii_writereg)((sc)->mii_dev.dv_parent, (sc)->mii_phy, (0x12), (0x2000 | 0x4000 | 0x8000));
  (*(sc)->mii_pdata->mii_writereg)((sc)->mii_dev.dv_parent, (sc)->mii_phy, (0x1F), (0xFFE0));
 } else if ((((bnx_sc)->bnx_chipid) & 0xffff0000) == 0x57090000) {
  if ((((bnx_sc)->bnx_chipid) & 0x0000f000) == 0x00000000 ||
      (((bnx_sc)->bnx_chipid) & 0x0000f000) == 0x00001000)
   brgphy_disable_early_dac(sc);
  brgphy_jumbo_settings(sc);
  brgphy_eth_wirespeed(sc);
 } else if ((sc->mii_flags & 0x0020) == 0) {
  brgphy_ber_bug(sc);
  brgphy_jumbo_settings(sc);
  brgphy_eth_wirespeed(sc);
 }
}
void
brgphy_bcm5401_dspcode(struct mii_softc *sc)
{
 static const struct {
  int reg64;
  uint16_t val;
 } dspcode[] = {
  { 0x18, 0x0c20 },
  { 0x17, 0x0012 },
  { 0x15, 0x1804 },
  { 0x17, 0x0013 },
  { 0x15, 0x1204 },
  { 0x17, 0x8006 },
  { 0x15, 0x0132 },
  { 0x17, 0x8006 },
  { 0x15, 0x0232 },
  { 0x17, 0x201f },
  { 0x15, 0x0a20 },
  { 0, 0 },
 };
 int i;
 for (i = 0; dspcode[i].reg64 != 0; i++)
  (*(sc)->mii_pdata->mii_writereg)((sc)->mii_dev.dv_parent, (sc)->mii_phy, (dspcode[i].reg64), (dspcode[i].val));
 delay(40);
}
void
brgphy_bcm5411_dspcode(struct mii_softc *sc)
{
 static const struct {
  int reg64;
  uint16_t val;
 } dspcode[] = {
  { 0x1c, 0x8c23 },
  { 0x1c, 0x8ca3 },
  { 0x1c, 0x8c23 },
  { 0, 0 },
 };
 int i;
 for (i = 0; dspcode[i].reg64 != 0; i++)
  (*(sc)->mii_pdata->mii_writereg)((sc)->mii_dev.dv_parent, (sc)->mii_phy, (dspcode[i].reg64), (dspcode[i].val));
}
void
brgphy_bcm5421_dspcode(struct mii_softc *sc)
{
 uint16_t data;
 (*(sc)->mii_pdata->mii_writereg)((sc)->mii_dev.dv_parent, (sc)->mii_phy, (0x18), (0x1007));
 data = (*(sc)->mii_pdata->mii_readreg)((sc)->mii_dev.dv_parent, (sc)->mii_phy, (0x18));
 (*(sc)->mii_pdata->mii_writereg)((sc)->mii_dev.dv_parent, (sc)->mii_phy, (0x18), (data | 0x0400));
 (*(sc)->mii_pdata->mii_writereg)((sc)->mii_dev.dv_parent, (sc)->mii_phy, (0x18), (0x0007));
 data = (*(sc)->mii_pdata->mii_readreg)((sc)->mii_dev.dv_parent, (sc)->mii_phy, (0x18));
 (*(sc)->mii_pdata->mii_writereg)((sc)->mii_dev.dv_parent, (sc)->mii_phy, (0x18), (data | 0x0800));
 (*(sc)->mii_pdata->mii_writereg)((sc)->mii_dev.dv_parent, (sc)->mii_phy, (0x17), (0x000a));
 data = (*(sc)->mii_pdata->mii_readreg)((sc)->mii_dev.dv_parent, (sc)->mii_phy, (0x15));
 (*(sc)->mii_pdata->mii_writereg)((sc)->mii_dev.dv_parent, (sc)->mii_phy, (0x15), (data | 0x0200));
}
void
brgphy_bcm54k2_dspcode(struct mii_softc *sc)
{
 static const struct {
  int reg64;
  uint16_t val;
 } dspcode[] = {
  { 4, 0x01e1 },
  { 9, 0x0300 },
  { 0, 0 },
 };
 int i;
 for (i = 0; dspcode[i].reg64 != 0; i++)
  (*(sc)->mii_pdata->mii_writereg)((sc)->mii_dev.dv_parent, (sc)->mii_phy, (dspcode[i].reg64), (dspcode[i].val));
}
void
brgphy_adc_bug(struct mii_softc *sc)
{
 static const struct {
  int reg64;
  uint16_t val;
 } dspcode[] = {
  { 0x18, 0x0c00 },
  { 0x17, 0x201f },
  { 0x15, 0x2aaa },
  { 0x17, 0x000a },
  { 0x15, 0x0323 },
  { 0x18, 0x0400 },
  { 0, 0 },
 };
 int i;
 for (i = 0; dspcode[i].reg64 != 0; i++)
  (*(sc)->mii_pdata->mii_writereg)((sc)->mii_dev.dv_parent, (sc)->mii_phy, (dspcode[i].reg64), (dspcode[i].val));
}
void
brgphy_5704_a0_bug(struct mii_softc *sc)
{
 static const struct {
  int reg64;
  uint16_t val;
 } dspcode[] = {
  { 0x1c, 0x8d68 },
  { 0x1c, 0x8d68 },
  { 0, 0 },
 };
 int i;
 for (i = 0; dspcode[i].reg64 != 0; i++)
  (*(sc)->mii_pdata->mii_writereg)((sc)->mii_dev.dv_parent, (sc)->mii_phy, (dspcode[i].reg64), (dspcode[i].val));
}
void
brgphy_ber_bug(struct mii_softc *sc)
{
 static const struct {
  int reg64;
  uint16_t val;
 } dspcode[] = {
  { 0x18, 0x0c00 },
  { 0x17, 0x000a },
  { 0x15, 0x310b },
  { 0x17, 0x201f },
  { 0x15, 0x9506 },
  { 0x17, 0x401f },
  { 0x15, 0x14e2 },
  { 0x18, 0x0400 },
  { 0, 0 },
 };
 int i;
 for (i = 0; dspcode[i].reg64 != 0; i++)
  (*(sc)->mii_pdata->mii_writereg)((sc)->mii_dev.dv_parent, (sc)->mii_phy, (dspcode[i].reg64), (dspcode[i].val));
}
void
brgphy_crc_bug(struct mii_softc *sc)
{
 static const struct {
  int reg64;
  uint16_t val;
 } dspcode[] = {
  { 0x17, 0x0a75 },
  { 0x1c, 0x8c68 },
  { 0x1c, 0x8d68 },
  { 0x1c, 0x8c68 },
  { 0, 0 },
 };
 int i;
 for (i = 0; dspcode[i].reg64 != 0; i++)
  (*(sc)->mii_pdata->mii_writereg)((sc)->mii_dev.dv_parent, (sc)->mii_phy, (dspcode[i].reg64), (dspcode[i].val));
}
void
brgphy_disable_early_dac(struct mii_softc *sc)
{
 uint32_t val;
 (*(sc)->mii_pdata->mii_writereg)((sc)->mii_dev.dv_parent, (sc)->mii_phy, (0x17), (0x0f08));
 val = (*(sc)->mii_pdata->mii_readreg)((sc)->mii_dev.dv_parent, (sc)->mii_phy, (0x15));
 val &= ~(1 << 8);
 (*(sc)->mii_pdata->mii_writereg)((sc)->mii_dev.dv_parent, (sc)->mii_phy, (0x15), (val));
}
void
brgphy_jumbo_settings(struct mii_softc *sc)
{
 u_int32_t val;
 if (sc->mii_oui == 0x001018 &&
     sc->mii_model == 0x0005) {
  (*(sc)->mii_pdata->mii_writereg)((sc)->mii_dev.dv_parent, (sc)->mii_phy, (0x18), (0x4c20));
 } else {
  (*(sc)->mii_pdata->mii_writereg)((sc)->mii_dev.dv_parent, (sc)->mii_phy, (0x18), (0x7));
  val = (*(sc)->mii_pdata->mii_readreg)((sc)->mii_dev.dv_parent, (sc)->mii_phy, (0x18));
  (*(sc)->mii_pdata->mii_writereg)((sc)->mii_dev.dv_parent, (sc)->mii_phy, (0x18), (val | 0x4000));
 }
 val = (*(sc)->mii_pdata->mii_readreg)((sc)->mii_dev.dv_parent, (sc)->mii_phy, (0x10));
 (*(sc)->mii_pdata->mii_writereg)((sc)->mii_dev.dv_parent, (sc)->mii_phy, (0x10), (val | 0x0001));
}
void
brgphy_eth_wirespeed(struct mii_softc *sc)
{
 u_int32_t val;
 (*(sc)->mii_pdata->mii_writereg)((sc)->mii_dev.dv_parent, (sc)->mii_phy, (0x18), (0x7007));
 val = (*(sc)->mii_pdata->mii_readreg)((sc)->mii_dev.dv_parent, (sc)->mii_phy, (0x18));
 (*(sc)->mii_pdata->mii_writereg)((sc)->mii_dev.dv_parent, (sc)->mii_phy, (0x18), ((val | (1 << 15) | (1 << 4))));
}
