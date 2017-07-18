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
struct audio_swpar {
 unsigned int sig;
 unsigned int le;
 unsigned int bits;
 unsigned int bps;
 unsigned int msb;
 unsigned int rate;
 unsigned int pchan;
 unsigned int rchan;
 unsigned int nblks;
 unsigned int round;
 unsigned int _spare[6];
};
struct audio_status {
 int mode;
 int pause;
 int active;
 int _spare[5];
};
typedef struct audio_device {
 char name[16];
 char version[16];
 char config[16];
} audio_device_t;
struct audio_pos {
 unsigned int play_pos;
 unsigned int play_xrun;
 unsigned int rec_pos;
 unsigned int rec_xrun;
};
typedef struct mixer_level {
 int num_channels;
 u_char level[8];
} mixer_level_t;
typedef struct audio_mixer_name {
 char name[16];
 int msg_id;
} audio_mixer_name_t;
typedef struct mixer_devinfo {
 int index;
 audio_mixer_name_t label;
 int type;
 int mixer_class;
 int next, prev;
 union {
  struct audio_mixer_enum {
   int num_mem;
   struct {
    audio_mixer_name_t label;
    int ord;
   } member[32];
  } e;
  struct audio_mixer_set {
   int num_mem;
   struct {
    audio_mixer_name_t label;
    int mask;
   } member[32];
  } s;
  struct audio_mixer_value {
   audio_mixer_name_t units;
   int num_channels;
   int delta;
  } v;
 } un;
} mixer_devinfo_t;
typedef struct mixer_ctrl {
 int dev;
 int type;
 union {
  int ord;
  int mask;
  mixer_level_t value;
 } un;
} mixer_ctrl_t;
struct mutex {
 volatile void *mtx_owner;
 int mtx_wantipl;
 int mtx_oldipl;
};
void __mtx_init(struct mutex *, int);
void __mtx_enter(struct mutex *);
int __mtx_enter_try(struct mutex *);
void __mtx_leave(struct mutex *);
struct mixer_devinfo;
struct mixer_ctrl;
struct audio_params {
 u_long sample_rate;
 u_int encoding;
 u_int precision;
 u_int bps;
 u_int msb;
 u_int channels;
};
struct audio_hw_if {
 int (*open)(void *, int);
 void (*close)(void *);
 int (*set_params)(void *, int, int, struct audio_params *,
      struct audio_params *);
 int (*round_blocksize)(void *, int);
 int (*commit_settings)(void *);
 int (*init_output)(void *, void *, int);
 int (*init_input)(void *, void *, int);
 int (*start_output)(void *, void *, int, void (*)(void *), void *);
 int (*start_input)(void *, void *, int, void (*)(void *), void *);
 int (*halt_output)(void *);
 int (*halt_input)(void *);
 int (*speaker_ctl)(void *, int);
 int (*setfd)(void *, int);
 int (*set_port)(void *, struct mixer_ctrl *);
 int (*get_port)(void *, struct mixer_ctrl *);
 int (*query_devinfo)(void *, struct mixer_devinfo *);
 void *(*allocm)(void *, int, size_t, int, int);
 void (*freem)(void *, void *, int);
 size_t (*round_buffersize)(void *, int, size_t);
 int (*get_props)(void *);
 int (*trigger_output)(void *, void *, void *, int,
      void (*)(void *), void *, struct audio_params *);
 int (*trigger_input)(void *, void *, void *, int,
      void (*)(void *), void *, struct audio_params *);
};
struct audio_attach_args {
 int type;
 void *hwif;
 void *hdl;
};
struct device *audio_attach_mi(struct audio_hw_if *, void *, struct device *);
int audioprint(void *, const char *);
extern struct mutex audio_lock;
struct midi_info {
 char *name;
 int props;
};
struct midi_hw_if {
 int (*open)(void *, int,
   void (*)(void *, int),
   void (*)(void *),
   void *);
 void (*close)(void *);
 int (*output)(void *, int);
 void (*flush)(void *);
 void (*getinfo)(void *, struct midi_info *);
 int (*ioctl)(void *, u_long, caddr_t, int, struct proc *);
};
struct device *midi_attach_mi(struct midi_hw_if *, void *, struct device *);
struct cmpci_dmanode {
 bus_dma_tag_t cd_tag;
 int cd_nsegs;
 bus_dma_segment_t cd_segs[1];
 bus_dmamap_t cd_map;
 caddr_t cd_addr;
 size_t cd_size;
 struct cmpci_dmanode *cd_next;
};
typedef struct cmpci_dmanode *cmpci_dmapool_t;
struct cmpci_channel {
 void (*intr)(void *);
 void *intr_arg;
 int md_divide;
 int bps;
 int blksize;
 int nblocks;
 int swpos;
};
struct cmpci_softc {
 struct device sc_dev;
 uint32_t sc_id;
 uint32_t sc_class;
 uint32_t sc_capable;
 bus_space_tag_t sc_iot;
 bus_space_handle_t sc_ioh;
 bus_space_handle_t sc_mpu_ioh;
 struct device *sc_mpudev;
 pci_intr_handle_t *sc_ih;
 bus_dma_tag_t sc_dmat;
 cmpci_dmapool_t sc_dmap;
 struct cmpci_channel sc_ch0, sc_ch1;
 uint32_t sc_play_channel;
 uint32_t sc_reg_misc;
 uint32_t sc_version;
 uint8_t sc_gain[28][2];
 uint16_t sc_in_mask;
};
uint8_t cmpci_mixerreg_read(struct cmpci_softc *, uint8_t);
void cmpci_mixerreg_write(struct cmpci_softc *, uint8_t, uint8_t);
void cmpci_reg_partial_write_1(struct cmpci_softc *, int, int,
          unsigned, unsigned);
void cmpci_reg_partial_write_4(struct cmpci_softc *, int, int,
          uint32_t, uint32_t);
void cmpci_reg_set_1(struct cmpci_softc *, int, uint8_t);
void cmpci_reg_clear_1(struct cmpci_softc *, int, uint8_t);
void cmpci_reg_set_4(struct cmpci_softc *, int, uint32_t);
void cmpci_reg_clear_4(struct cmpci_softc *, int, uint32_t);
void cmpci_reg_set_reg_misc(struct cmpci_softc *, uint32_t);
void cmpci_reg_clear_reg_misc(struct cmpci_softc *, uint32_t);
int cmpci_rate_to_index(int);
int cmpci_index_to_rate(int);
int cmpci_index_to_divider(int);
int cmpci_adjust(int, int);
void cmpci_set_mixer_gain(struct cmpci_softc *, int);
void cmpci_set_out_ports(struct cmpci_softc *);
int cmpci_set_in_ports(struct cmpci_softc *);
int cmpci_resume(struct cmpci_softc *);
int cmpci_match(struct device *, void *, void *);
void cmpci_attach(struct device *, struct device *, void *);
int cmpci_activate(struct device *, int);
struct cfdriver cmpci_cd = {
 ((void *)0), "cmpci", DV_DULL
};
struct cfattach cmpci_ca = {
 sizeof (struct cmpci_softc), cmpci_match, cmpci_attach, ((void *)0),
 cmpci_activate
};
int cmpci_intr(void *);
int cmpci_alloc_dmamem(struct cmpci_softc *,
       size_t, int,
       int, caddr_t *);
int cmpci_free_dmamem(struct cmpci_softc *, caddr_t,
      int);
struct cmpci_dmanode * cmpci_find_dmamem(struct cmpci_softc *,
           caddr_t);
int cmpci_open(void *, int);
void cmpci_close(void *);
int cmpci_set_params(void *, int, int,
     struct audio_params *,
     struct audio_params *);
int cmpci_round_blocksize(void *, int);
int cmpci_halt_output(void *);
int cmpci_halt_input(void *);
int cmpci_set_port(void *, mixer_ctrl_t *);
int cmpci_get_port(void *, mixer_ctrl_t *);
int cmpci_query_devinfo(void *, mixer_devinfo_t *);
void *cmpci_malloc(void *, int, size_t, int, int);
void cmpci_free(void *, void *, int);
size_t cmpci_round_buffersize(void *, int, size_t);
int cmpci_get_props(void *);
int cmpci_trigger_output(void *, void *, void *, int,
         void (*)(void *), void *,
         struct audio_params *);
int cmpci_trigger_input(void *, void *, void *, int,
        void (*)(void *), void *,
        struct audio_params *);
struct audio_hw_if cmpci_hw_if = {
 cmpci_open,
 cmpci_close,
 cmpci_set_params,
 cmpci_round_blocksize,
 ((void *)0),
 ((void *)0),
 ((void *)0),
 ((void *)0),
 ((void *)0),
 cmpci_halt_output,
 cmpci_halt_input,
 ((void *)0),
 ((void *)0),
 cmpci_set_port,
 cmpci_get_port,
 cmpci_query_devinfo,
 cmpci_malloc,
 cmpci_free,
 cmpci_round_buffersize,
 cmpci_get_props,
 cmpci_trigger_output,
 cmpci_trigger_input
};
uint8_t
cmpci_mixerreg_read(struct cmpci_softc *sc, uint8_t no)
{
 uint8_t ret;
 bus_space_write_1(sc->sc_iot, sc->sc_ioh, 0x23, no);
 delay(10);
 ret = bus_space_read_1(sc->sc_iot, sc->sc_ioh, 0x22);
 delay(10);
 return ret;
}
void
cmpci_mixerreg_write(struct cmpci_softc *sc, uint8_t no, uint8_t val)
{
 bus_space_write_1(sc->sc_iot, sc->sc_ioh, 0x23, no);
 delay(10);
 bus_space_write_1(sc->sc_iot, sc->sc_ioh, 0x22, val);
 delay(10);
}
void
cmpci_reg_partial_write_1(struct cmpci_softc *sc, int no, int shift,
    unsigned mask, unsigned val)
{
 bus_space_write_1(sc->sc_iot, sc->sc_ioh, no,
     (val<<shift) |
     (bus_space_read_1(sc->sc_iot, sc->sc_ioh, no) & ~(mask<<shift)));
 delay(10);
}
void
cmpci_reg_partial_write_4(struct cmpci_softc *sc, int no, int shift,
    uint32_t mask, uint32_t val)
{
 bus_space_write_4(sc->sc_iot, sc->sc_ioh, no,
     (val<<shift) |
     (bus_space_read_4(sc->sc_iot, sc->sc_ioh, no) & ~(mask<<shift)));
 delay(10);
}
void
cmpci_reg_set_1(struct cmpci_softc *sc, int no, uint8_t mask)
{
 bus_space_write_1(sc->sc_iot, sc->sc_ioh, no,
     (bus_space_read_1(sc->sc_iot, sc->sc_ioh, no) | mask));
 delay(10);
}
void
cmpci_reg_clear_1(struct cmpci_softc *sc, int no, uint8_t mask)
{
 bus_space_write_1(sc->sc_iot, sc->sc_ioh, no,
     (bus_space_read_1(sc->sc_iot, sc->sc_ioh, no) & ~mask));
 delay(10);
}
void
cmpci_reg_set_4(struct cmpci_softc *sc, int no, uint32_t mask)
{
 ((void)0);
 bus_space_write_4(sc->sc_iot, sc->sc_ioh, no,
     (bus_space_read_4(sc->sc_iot, sc->sc_ioh, no) | mask));
 delay(10);
}
void
cmpci_reg_clear_4(struct cmpci_softc *sc, int no, uint32_t mask)
{
 ((void)0);
 bus_space_write_4(sc->sc_iot, sc->sc_ioh, no,
     (bus_space_read_4(sc->sc_iot, sc->sc_ioh, no) & ~mask));
 delay(10);
}
void
cmpci_reg_set_reg_misc(struct cmpci_softc *sc, uint32_t mask)
{
 sc->sc_reg_misc |= mask;
 bus_space_write_4(sc->sc_iot, sc->sc_ioh, 0x18,
     sc->sc_reg_misc);
 delay(10);
}
void
cmpci_reg_clear_reg_misc(struct cmpci_softc *sc, uint32_t mask)
{
 sc->sc_reg_misc &= ~mask;
 bus_space_write_4(sc->sc_iot, sc->sc_ioh, 0x18,
     sc->sc_reg_misc);
 delay(10);
}
static const struct {
 int rate;
 int divider;
} cmpci_rate_table[8] = {
 { 5512, 0 },
 { 8000, 4 },
 { 11025, 1 },
 { 16000, 5 },
 { 22050, 2 },
 { 32000, 6 },
 { 44100, 3 },
 { 48000, 7 }
};
int
cmpci_rate_to_index(int rate)
{
 int i;
 for (i = 0; i < 8 - 1; i++)
  if (rate <=
      (cmpci_rate_table[i].rate + cmpci_rate_table[i+1].rate) / 2)
   return i;
 return i;
}
int
cmpci_index_to_rate(int index)
{
 return cmpci_rate_table[index].rate;
}
int
cmpci_index_to_divider(int index)
{
 return cmpci_rate_table[index].divider;
}
const struct pci_matchid cmpci_devices[] = {
 { 0x13f6, 0x0100 },
 { 0x13f6, 0x0101 },
 { 0x13f6, 0x0111 },
 { 0x13f6, 0x0112 }
};
int
cmpci_match(struct device *parent, void *match, void *aux)
{
 return (pci_matchbyid((struct pci_attach_args *)aux, cmpci_devices,
     (sizeof((cmpci_devices)) / sizeof((cmpci_devices)[0]))));
}
void
cmpci_attach(struct device *parent, struct device *self, void *aux)
{
 struct cmpci_softc *sc = (struct cmpci_softc *)self;
 struct pci_attach_args *pa = (struct pci_attach_args *)aux;
 struct audio_attach_args aa;
 pci_intr_handle_t ih;
 char const *intrstr;
 int i, v, d;
 sc->sc_id = pa->pa_id;
 sc->sc_class = pa->pa_class;
 switch ((((sc->sc_id) >> 16) & 0xffff)) {
 case 0x0100:
 case 0x0101:
  sc->sc_capable = (0x00000001 | 0x00000002 | 0x00000004 | 0x00000008);
  break;
 case 0x0111:
 case 0x0112:
  sc->sc_capable = ((0x00000001 | 0x00000002 | 0x00000004 | 0x00000008) | 0x00000010 | 0x00000020 | 0x00000040 | 0x00000080 | 0x00000100 | 0x00000200 | 0x00000400 | 0x00000800 | 0x00001000 | 0x00002000 );
  break;
 }
 if (pci_mapreg_map(pa, (0x10), 0x00000001, 0,
      &sc->sc_iot, &sc->sc_ioh, ((void *)0), ((void *)0), 0)) {
  printf(": can't map i/o space\n");
  return;
 }
 if (pci_intr_map(pa, &ih)) {
  printf(": can't map interrupt\n");
  return;
 }
 intrstr = pci_intr_string(pa->pa_pc, ih);
 sc->sc_ih = pci_intr_establish(pa->pa_pc, ih, 8 | 0x100,
     cmpci_intr, sc, sc->sc_dev.dv_xname);
 if (sc->sc_ih == ((void *)0)) {
  printf(": can't establish interrupt");
  if (intrstr != ((void *)0))
   printf(" at %s", intrstr);
  printf("\n");
  return;
 }
 printf(": %s\n", intrstr);
 sc->sc_dmat = pa->pa_dmat;
 audio_attach_mi(&cmpci_hw_if, sc, &sc->sc_dev);
 aa.type = 2;
 aa.hwif = ((void *)0);
 aa.hdl = ((void *)0);
 (void)config_found_sm((&sc->sc_dev), (&aa), (audioprint), ((void *)0));
 aa.type = 3;
 aa.hwif = ((void *)0);
 aa.hdl = ((void *)0);
 if (bus_space_subregion(sc->sc_iot, sc->sc_ioh,
     0x40, 0x10, &sc->sc_mpu_ioh) == 0)
  sc->sc_mpudev = config_found_sm((&sc->sc_dev), (&aa), (audioprint), ((void *)0));
 sc->sc_reg_misc = bus_space_read_4(sc->sc_iot, sc->sc_ioh,
     0x18) & ~0x01000000;
 d = bus_space_read_4(sc->sc_iot, sc->sc_ioh, 0x0c) &
     0xff000000;
 if (d) {
  if (d & 0x20000000) {
   sc->sc_version = 68;
   sc->sc_capable |= 0x00004000 | 0x00008000 |
       0x00010000;
  } else if (d & 0x08000000) {
   sc->sc_version = 55;
   sc->sc_capable |= 0x00004000 | 0x00008000;
  } else if (d & 0x04000000) {
   sc->sc_version = 39;
   sc->sc_capable |= 0x00004000 |
       ((d & 0x01000000) ? 0x00008000 : 0);
  } else {
   sc->sc_version = 0;
  }
 } else {
  d = bus_space_read_4(sc->sc_iot, sc->sc_ioh,
      0x08) & 0x1f000000;
  if (d)
   sc->sc_version = 37;
  else
   sc->sc_version = 33;
 }
 cmpci_mixerreg_write(sc, 0x00, 0);
 cmpci_mixerreg_write(sc, 0x3D, 0);
 cmpci_mixerreg_write(sc, 0x3E, 0);
 cmpci_mixerreg_write(sc, 0x3C,
     (0x04|0x02)|0x01|(0x10|0x08));
 for (i = 0; i < 28; i++) {
  switch(i) {
  case 23:
   v = 128;
   break;
  case 1:
  case 0:
   v = 192;
   break;
  case 13:
   v = 128;
   break;
  case 8:
  case 11:
  case 9:
  case 10:
   v = 1;
   break;
  case 2:
  case 3:
  case 4:
  case 5:
  case 15:
  case 12:
  case 14:
  case 16:
  case 17:
  case 18:
  case 19:
  case 20:
  case 21:
  case 22:
  case 24:
  case 25:
  case 26:
  case 27:
  default:
   v = 0;
   break;
  }
  sc->sc_gain[i][0] = sc->sc_gain[i][1] = v;
  cmpci_set_mixer_gain(sc, i);
 }
 sc->sc_play_channel = 0;
}
int
cmpci_activate(struct device *self, int act)
{
 struct cmpci_softc *sc = (struct cmpci_softc *)self;
 int rv = 0;
 switch (act) {
 case 4:
  cmpci_resume(sc);
  rv = config_activate_children(self, act);
  break;
 default:
  rv = config_activate_children(self, act);
  break;
 }
 return (rv);
}
int
cmpci_resume(struct cmpci_softc *sc)
{
 int i;
 cmpci_mixerreg_write(sc, 0x00, 0);
 for (i = 0; i < 28; i++)
  cmpci_set_mixer_gain(sc, i);
 return 0;
}
int
cmpci_intr(void *handle)
{
 struct cmpci_softc *sc = handle;
 struct cmpci_channel *chan;
 uint32_t intrstat;
 uint16_t hwpos;
 __mtx_enter(&audio_lock);
 intrstat = bus_space_read_4(sc->sc_iot, sc->sc_ioh,
     0x10);
 if (!(intrstat & 0x80000000)) {
  __mtx_leave(&audio_lock);
  return 0;
 }
 delay(10);
 if (intrstat & 0x00000001)
  cmpci_reg_clear_4(sc, 0x0c,
     0x00010000);
 if (intrstat & 0x00000002)
  cmpci_reg_clear_4(sc, 0x0c,
      0x00020000);
 if (intrstat & 0x00000001) {
  chan = &sc->sc_ch0;
  if (chan->intr != ((void *)0)) {
   hwpos = bus_space_read_2(sc->sc_iot, sc->sc_ioh,
       0x84);
   hwpos = hwpos * chan->bps / chan->blksize;
   hwpos = chan->nblocks - hwpos - 1;
   while (chan->swpos != hwpos) {
    (*chan->intr)(chan->intr_arg);
    chan->swpos++;
    if (chan->swpos >= chan->nblocks)
     chan->swpos = 0;
    if (chan->swpos != hwpos) {
     ;
    }
   }
  }
 }
 if (intrstat & 0x00000002) {
  chan = &sc->sc_ch1;
  if (chan->intr != ((void *)0)) {
   hwpos = bus_space_read_2(sc->sc_iot, sc->sc_ioh,
       0x8C);
   hwpos = hwpos * chan->bps / chan->blksize;
   hwpos = chan->nblocks - hwpos - 1;
   while (chan->swpos != hwpos) {
    (*chan->intr)(chan->intr_arg);
    chan->swpos++;
    if (chan->swpos >= chan->nblocks)
     chan->swpos = 0;
    if (chan->swpos != hwpos) {
     ;
    }
   }
  }
 }
 if (intrstat & 0x00000001)
  cmpci_reg_set_4(sc, 0x0c,
      0x00010000);
 if (intrstat & 0x00000002)
  cmpci_reg_set_4(sc, 0x0c,
      0x00020000);
 __mtx_leave(&audio_lock);
 return 1;
}
int
cmpci_open(void *handle, int flags)
{
 return 0;
}
void
cmpci_close(void *handle)
{
}
int
cmpci_set_params(void *handle, int setmode, int usemode,
    struct audio_params *play, struct audio_params *rec)
{
 int i;
 struct cmpci_softc *sc = handle;
 for (i = 0; i < 2; i++) {
  int md_format;
  int md_divide;
  int md_index;
  int mode;
  struct audio_params *p;
  switch (i) {
  case 0:
   mode = 0x01;
   p = play;
   break;
  case 1:
   mode = 0x02;
   p = rec;
   break;
  default:
   return 22;
  }
  if (!(setmode & mode))
   continue;
  if (setmode & 0x02) {
   if (p->channels > 2)
    p->channels = 2;
   sc->sc_play_channel = 0;
   cmpci_reg_clear_reg_misc(sc, 0x00800000);
   cmpci_reg_clear_reg_misc(sc, 0x00400000);
  } else {
   sc->sc_play_channel = 1;
   cmpci_reg_set_reg_misc(sc, 0x00800000);
   cmpci_reg_set_reg_misc(sc, 0x00400000);
  }
  cmpci_reg_clear_4(sc, 0x14,
      0x80000000);
  if (sc->sc_capable & 0x00004000)
   cmpci_reg_clear_4(sc, 0x08,
       0x20000000);
  if (sc->sc_capable & 0x00008000) {
   cmpci_reg_clear_4(sc, 0x08,
       0x80000000);
   cmpci_reg_clear_4(sc, 0x14,
           0x00008000);
   cmpci_reg_clear_reg_misc(sc, 0x00000080);
  }
  if (sc->sc_capable & 0x00010000)
   cmpci_reg_clear_4(sc, 0x90,
       0x00200000);
  switch (p->channels) {
  case 1:
   md_format = 0x00000000;
   break;
  case 2:
   md_format = 0x00000001;
   break;
  case 4:
   if (mode & 0x01) {
    if (sc->sc_capable & 0x00004000) {
     cmpci_reg_clear_reg_misc(sc,
         0x04000000);
     cmpci_reg_set_4(sc,
         0x08,
         0x20000000);
     cmpci_reg_set_4(sc,
         0x14,
         0x80000000);
    } else
     p->channels = 2;
   }
   md_format = 0x00000001;
   break;
  case 6:
   if (mode & 0x01) {
    if (sc->sc_capable & 0x00008000) {
     cmpci_reg_clear_reg_misc(sc,
         0x04000000);
     cmpci_reg_set_4(sc,
         0x08,
         0x80000000);
     cmpci_reg_set_4(sc,
         0x14,
         0x00008000);
     cmpci_reg_set_reg_misc(sc,
         0x00000080);
     cmpci_reg_set_4(sc,
         0x14,
         0x80000000);
    } else
     p->channels = 2;
   }
   md_format = 0x00000001;
   break;
  case 8:
   if (mode & 0x01) {
    if (sc->sc_capable & 0x00010000) {
     cmpci_reg_clear_reg_misc(sc,
         0x04000000);
     cmpci_reg_set_4(sc,
         0x08,
         0x80000000);
     cmpci_reg_set_4(sc,
         0x14,
         0x00008000);
     cmpci_reg_set_reg_misc(sc,
         0x00000080);
     cmpci_reg_set_4(sc,
         0x90,
         0x00200000);
     cmpci_reg_set_4(sc,
         0x14,
         0x80000000);
    } else
     p->channels = 2;
   }
   md_format = 0x00000001;
   break;
  default:
   return (22);
  }
  if (p->precision >= 16) {
   p->precision = 16;
   p->encoding = 6;
   md_format |= 0x00000002;
  } else {
   p->precision = 8;
   p->encoding = 8;
   md_format |= 0x00000000;
  }
  p->bps = (p->precision) <= 8 ? 1 : ((p->precision) <= 16 ? 2 : 4);
  p->msb = 1;
  if (mode & 0x01) {
   if (sc->sc_play_channel == 1) {
    cmpci_reg_partial_write_4(sc,
       0x08,
       2,
       0x00000003, md_format);
   } else {
    cmpci_reg_partial_write_4(sc,
       0x08,
       0,
       0x00000003, md_format);
   }
  } else {
   cmpci_reg_partial_write_4(sc,
      0x08,
      2,
      0x00000003, md_format);
  }
  md_index = cmpci_rate_to_index(p->sample_rate);
  md_divide = cmpci_index_to_divider(md_index);
  p->sample_rate = cmpci_index_to_rate(md_index);
  ;
  if (mode & 0x01) {
   if (sc->sc_play_channel == 1) {
    cmpci_reg_partial_write_4(sc,
        0x04, 13,
        0x00000007, md_divide);
    sc->sc_ch1.md_divide = md_divide;
   } else {
    cmpci_reg_partial_write_4(sc,
        0x04, 10,
        0x00000007, md_divide);
    sc->sc_ch0.md_divide = md_divide;
   }
  } else {
   cmpci_reg_partial_write_4(sc,
       0x04, 13,
       0x00000007, md_divide);
   sc->sc_ch1.md_divide = md_divide;
  }
 }
 return 0;
}
int
cmpci_round_blocksize(void *handle, int block)
{
 return ((block + 3) & -4);
}
int
cmpci_halt_output(void *handle)
{
 struct cmpci_softc *sc = handle;
 uint32_t reg_intr, reg_enable, reg_reset;
 __mtx_enter(&audio_lock);
 if (sc->sc_play_channel == 1) {
  sc->sc_ch1.intr = ((void *)0);
  reg_intr = 0x00020000;
  reg_enable = 0x00020000;
  reg_reset = 0x00080000;
 } else {
  sc->sc_ch0.intr = ((void *)0);
  reg_intr = 0x00010000;
  reg_enable = 0x00010000;
  reg_reset = 0x00040000;
 }
 cmpci_reg_clear_4(sc, 0x0c, reg_intr);
 cmpci_reg_clear_4(sc, 0x00, reg_enable);
 cmpci_reg_set_4(sc, 0x00, reg_reset);
 delay(10);
 cmpci_reg_clear_4(sc, 0x00, reg_reset);
 __mtx_leave(&audio_lock);
 return 0;
}
int
cmpci_halt_input(void *handle)
{
 struct cmpci_softc *sc = handle;
 __mtx_enter(&audio_lock);
 sc->sc_ch1.intr = ((void *)0);
 cmpci_reg_clear_4(sc, 0x0c, 0x00020000);
 cmpci_reg_clear_4(sc, 0x00, 0x00020000);
 cmpci_reg_set_4(sc, 0x00, 0x00080000);
 delay(10);
 cmpci_reg_clear_4(sc, 0x00, 0x00080000);
 __mtx_leave(&audio_lock);
 return 0;
}
int
cmpci_query_devinfo(void *handle, mixer_devinfo_t *dip)
{
 static const char *const mixer_port_names[] = {
  "dac", "fmsynth", "cd", "line", "aux",
  "mic"
 };
 static const char *const mixer_classes[] = {
  "inputs", "outputs", "record", "playback",
  "spdif"
 };
 struct cmpci_softc *sc = handle;
 int i;
 dip->prev = dip->next = -1;
 switch (dip->index) {
 case 28:
 case 29:
 case 30:
 case 31:
 case 32:
  dip->type = 0;
  dip->mixer_class = dip->index;
  strlcpy(dip->label.name,
      mixer_classes[dip->index - 28],
      sizeof dip->label.name);
  return 0;
 case 4:
  dip->un.v.delta = 1 << (8 - 4);
  goto vol1;
 case 0:
 case 1:
 case 2:
 case 3:
 case 5:
  dip->un.v.delta = 1 << (8 - 5);
 vol1: dip->mixer_class = 28;
  dip->next = dip->index + 6;
  strlcpy(dip->label.name, mixer_port_names[dip->index],
      sizeof dip->label.name);
  dip->un.v.num_channels = (dip->index == 5 ? 1 : 2);
 vol:
  dip->type = 3;
  strlcpy(dip->un.v.units.name, "volume",
      sizeof dip->un.v.units.name);
  return 0;
 case 11:
  dip->next = 12;
 case 6:
 case 7:
 case 8:
 case 9:
 case 10:
  dip->prev = dip->index - 6;
  dip->mixer_class = 28;
  strlcpy(dip->label.name, "mute", sizeof dip->label.name);
  goto on_off;
 on_off:
  dip->type = 1;
  dip->un.e.num_mem = 2;
  strlcpy(dip->un.e.member[0].label.name, "off",
      sizeof dip->un.e.member[0].label.name);
  dip->un.e.member[0].ord = 0;
  strlcpy(dip->un.e.member[1].label.name, "on",
      sizeof dip->un.e.member[1].label.name);
  dip->un.e.member[1].ord = 1;
  return 0;
 case 12:
  dip->mixer_class = 28;
  dip->prev = 11;
  strlcpy(dip->label.name, "preamp", sizeof dip->label.name);
  goto on_off;
 case 13:
  dip->mixer_class = 28;
  strlcpy(dip->label.name, "spkr", sizeof dip->label.name);
  dip->un.v.num_channels = 1;
  dip->un.v.delta = 1 << (8 - 2);
  goto vol;
 case 14:
  dip->mixer_class = 30;
  strlcpy(dip->label.name, "source", sizeof dip->label.name);
  dip->type = 2;
  dip->un.s.num_mem = 7;
  strlcpy(dip->un.s.member[0].label.name, "mic",
      sizeof dip->un.s.member[0].label.name);
  dip->un.s.member[0].mask = 0x01;
  strlcpy(dip->un.s.member[1].label.name, "cd",
      sizeof dip->un.s.member[1].label.name);
  dip->un.s.member[1].mask = 0x02;
  strlcpy(dip->un.s.member[2].label.name, "line",
      sizeof dip->un.s.member[2].label.name);
  dip->un.s.member[2].mask = 0x08;
  strlcpy(dip->un.s.member[3].label.name, "aux",
      sizeof dip->un.s.member[3].label.name);
  dip->un.s.member[3].mask = (1 << 8);
  strlcpy(dip->un.s.member[4].label.name, "wave",
      sizeof dip->un.s.member[4].label.name);
  dip->un.s.member[4].mask = (1 << 9);
  strlcpy(dip->un.s.member[5].label.name, "fmsynth",
      sizeof dip->un.s.member[5].label.name);
  dip->un.s.member[5].mask = 0x20;
  strlcpy(dip->un.s.member[6].label.name, "spdif",
      sizeof dip->un.s.member[6].label.name);
  dip->un.s.member[6].mask = (1 << 10);
  return 0;
 case 15:
  dip->mixer_class = 30;
  strlcpy(dip->label.name, "mic", sizeof dip->label.name);
  dip->un.v.num_channels = 1;
  dip->un.v.delta = 1 << (8 - 3);
  goto vol;
 case 16:
  dip->mixer_class = 31;
  dip->type = 1;
  strlcpy(dip->label.name, "mode", sizeof dip->label.name);
  dip->un.e.num_mem = 2;
  strlcpy(dip->un.e.member[0].label.name, "dac",
      sizeof dip->un.e.member[0].label.name);
  dip->un.e.member[0].ord = 0;
  strlcpy(dip->un.e.member[1].label.name, "spdif",
      sizeof dip->un.e.member[1].label.name);
  dip->un.e.member[1].ord = 1;
  return 0;
 case 17:
  dip->mixer_class = 32;
  dip->type = 1;
  dip->next = 18;
  strlcpy(dip->label.name, "input", sizeof dip->label.name);
  i = 0;
  strlcpy(dip->un.e.member[i].label.name, "spdin1",
      sizeof dip->un.e.member[i].label.name);
  dip->un.e.member[i++].ord = 0;
  if ((sc->sc_capable & 0x00002000)) {
   strlcpy(dip->un.e.member[i].label.name, "spdin2",
       sizeof dip->un.e.member[i].label.name);
   dip->un.e.member[i++].ord = 0x01;
  }
  strlcpy(dip->un.e.member[i].label.name, "spdout",
      sizeof dip->un.e.member[i].label.name);
  dip->un.e.member[i++].ord = (0x01|0x02);
  dip->un.e.num_mem = i;
  return 0;
 case 18:
  dip->mixer_class = 32;
  dip->prev = 17;
  strlcpy(dip->label.name, "phase", sizeof dip->label.name);
  dip->type = 1;
  dip->un.e.num_mem = 2;
  strlcpy(dip->un.e.member[0].label.name, "positive",
      sizeof dip->un.e.member[0].label.name);
  dip->un.e.member[0].ord = 0;
  strlcpy(dip->un.e.member[1].label.name, "negative",
      sizeof dip->un.e.member[1].label.name);
  dip->un.e.member[1].ord = 1;
  return 0;
 case 19:
  dip->mixer_class = 32;
  dip->next = 20;
  strlcpy(dip->label.name, "output", sizeof dip->label.name);
  dip->type = 1;
  dip->un.e.num_mem = 2;
  strlcpy(dip->un.e.member[0].label.name, "playback",
      sizeof dip->un.e.member[0].label.name);
  dip->un.e.member[0].ord = 0;
  strlcpy(dip->un.e.member[1].label.name, "spdin",
      sizeof dip->un.e.member[1].label.name);
  dip->un.e.member[1].ord = 1;
  return 0;
 case 20:
  dip->mixer_class = 32;
  dip->prev = 19;
  dip->next = 21;
  strlcpy(dip->label.name, "playback", sizeof dip->label.name);
  dip->type = 1;
  dip->un.e.num_mem = 2;
  strlcpy(dip->un.e.member[0].label.name, "wave",
      sizeof dip->un.e.member[0].label.name);
  dip->un.e.member[0].ord = 0;
  strlcpy(dip->un.e.member[1].label.name, "legacy",
      sizeof dip->un.e.member[1].label.name);
  dip->un.e.member[1].ord = 1;
  return 0;
 case 21:
  dip->mixer_class = 32;
  dip->prev = 20;
  strlcpy(dip->label.name, "voltage", sizeof dip->label.name);
  dip->type = 1;
  dip->un.e.num_mem = 2;
  strlcpy(dip->un.e.member[0].label.name, "5V",
      sizeof dip->un.e.member[0].label.name);
  dip->un.e.member[0].ord = 0;
  strlcpy(dip->un.e.member[1].label.name, "0.5V",
      sizeof dip->un.e.member[1].label.name);
  dip->un.e.member[1].ord = 1;
  return 0;
 case 22:
  dip->mixer_class = 32;
  strlcpy(dip->label.name, "monitor", sizeof dip->label.name);
  dip->type = 1;
  dip->un.e.num_mem = 3;
  strlcpy(dip->un.e.member[0].label.name, "off",
      sizeof dip->un.e.member[0].label.name);
  dip->un.e.member[0].ord = 0;
  strlcpy(dip->un.e.member[1].label.name, "spdin",
      sizeof dip->un.e.member[1].label.name);
  dip->un.e.member[1].ord = 0x01;
  strlcpy(dip->un.e.member[2].label.name, "spdout",
      sizeof dip->un.e.member[2].label.name);
  dip->un.e.member[2].ord = (0x01 | 0x02);
  return 0;
 case 23:
  dip->mixer_class = 29;
  strlcpy(dip->label.name, "master", sizeof dip->label.name);
  dip->un.v.num_channels = 2;
  dip->un.v.delta = 1 << (8 - 5);
  goto vol;
 case 24:
  dip->mixer_class = 29;
  dip->next = 25;
  strlcpy(dip->label.name, "rear", sizeof dip->label.name);
  goto on_off;
 case 25:
  dip->mixer_class = 29;
  dip->prev = 24;
  dip->next = 26;
  strlcpy(dip->label.name, "individual", sizeof dip->label.name);
  goto on_off;
 case 26:
  dip->mixer_class = 29;
  dip->prev = 25;
  strlcpy(dip->label.name, "reverse", sizeof dip->label.name);
  goto on_off;
 case 27:
  dip->mixer_class = 29;
  strlcpy(dip->label.name, "surround", sizeof dip->label.name);
  goto on_off;
 }
 return 6;
}
int
cmpci_alloc_dmamem(struct cmpci_softc *sc, size_t size, int type, int flags,
    caddr_t *r_addr)
{
 int error = 0;
 struct cmpci_dmanode *n;
 int w;
 n = malloc(sizeof(struct cmpci_dmanode), type, flags);
 if (n == ((void *)0)) {
  error = 12;
  goto quit;
 }
 w = (flags & 0x0002) ? 0x0001 : 0x0000;
 n->cd_tag = sc->sc_dmat;
 n->cd_size = size;
 error = bus_dmamem_alloc(n->cd_tag, n->cd_size,
     0x4, 0x0, n->cd_segs,
     (sizeof((n->cd_segs)) / sizeof((n->cd_segs)[0])), &n->cd_nsegs, w);
 if (error)
  goto mfree;
 error = bus_dmamem_map(n->cd_tag, n->cd_segs, n->cd_nsegs, n->cd_size,
     &n->cd_addr, w | 0x0004);
 if (error)
  goto dmafree;
 error = bus_dmamap_create(n->cd_tag, n->cd_size, 1, n->cd_size, 0,
     w, &n->cd_map);
 if (error)
  goto unmap;
 error = bus_dmamap_load(n->cd_tag, n->cd_map, n->cd_addr, n->cd_size,
     ((void *)0), w);
 if (error)
  goto destroy;
 n->cd_next = sc->sc_dmap;
 sc->sc_dmap = n;
 *r_addr = ((void *)(n)->cd_addr);
 return 0;
 destroy:
 bus_dmamap_destroy(n->cd_tag, n->cd_map);
 unmap:
 bus_dmamem_unmap(n->cd_tag, n->cd_addr, n->cd_size);
 dmafree:
 bus_dmamem_free(n->cd_tag,
   n->cd_segs, (sizeof((n->cd_segs)) / sizeof((n->cd_segs)[0])));
 mfree:
 free(n, type, 0);
 quit:
 return error;
}
int
cmpci_free_dmamem(struct cmpci_softc *sc, caddr_t addr, int type)
{
 struct cmpci_dmanode **nnp;
 for (nnp = &sc->sc_dmap; *nnp; nnp = &(*nnp)->cd_next) {
  if ((*nnp)->cd_addr == addr) {
   struct cmpci_dmanode *n = *nnp;
   bus_dmamap_unload(n->cd_tag, n->cd_map);
   bus_dmamap_destroy(n->cd_tag, n->cd_map);
   bus_dmamem_unmap(n->cd_tag, n->cd_addr, n->cd_size);
   bus_dmamem_free(n->cd_tag, n->cd_segs,
       (sizeof((n->cd_segs)) / sizeof((n->cd_segs)[0])));
   free(n, type, 0);
   return 0;
  }
 }
 return -1;
}
struct cmpci_dmanode *
cmpci_find_dmamem(struct cmpci_softc *sc, caddr_t addr)
{
 struct cmpci_dmanode *p;
 for (p = sc->sc_dmap; p; p = p->cd_next) {
  if (((void *)(p)->cd_addr) == (void *)addr)
   break;
 }
 return p;
}
void *
cmpci_malloc(void *handle, int direction, size_t size, int type,
    int flags)
{
 caddr_t addr;
 if (cmpci_alloc_dmamem(handle, size, type, flags, &addr))
  return ((void *)0);
 return addr;
}
void
cmpci_free(void *handle, void *addr, int type)
{
 cmpci_free_dmamem(handle, addr, type);
}
int
cmpci_adjust(int val, int mask)
{
 val += (256 - mask) >> 1;
 if (val >= 256)
  val = 256 -1;
 return val & mask;
}
void
cmpci_set_mixer_gain(struct cmpci_softc *sc, int port)
{
 int src;
 int bits, mask;
 switch (port) {
 case 5:
  cmpci_mixerreg_write(sc, 0x3A,
      cmpci_adjust((sc->sc_gain[port][0]), 0xf8));
  return;
 case 23:
  src = 0x30;
  break;
 case 3:
  src = 0x38;
  break;
 case 4:
  bus_space_write_1(sc->sc_iot, sc->sc_ioh, 0x26,
      (cmpci_adjust((sc->sc_gain[port][0]), 0xc0) >> 4 | cmpci_adjust((sc->sc_gain[port][1]), 0xc0)));
  return;
 case 15:
  cmpci_reg_partial_write_1(sc, 0x25,
      0x01, 0x07,
      (cmpci_adjust((sc->sc_gain[port][0]), 0xe0) >> 5));
  return;
 case 0:
  src = 0x32;
  break;
 case 1:
  src = 0x34;
  break;
 case 2:
  src = 0x36;
  break;
 case 13:
  cmpci_mixerreg_write(sc, 0x3B,
      cmpci_adjust((sc->sc_gain[port][0]), 0xc0));
  return;
 case 12:
  if (sc->sc_gain[port][0])
   cmpci_reg_clear_1(sc, 0x25,
       0x01);
  else
   cmpci_reg_set_1(sc, 0x25,
       0x01);
  return;
 case 6:
  if (sc->sc_gain[port][0])
   cmpci_reg_set_1(sc, 0x24,
       0x40);
  else
   cmpci_reg_clear_1(sc, 0x24,
       0x40);
  return;
 case 7:
  if (sc->sc_gain[port][0])
   cmpci_reg_set_1(sc, 0x24,
       0x80);
  else
   cmpci_reg_clear_1(sc, 0x24,
       0x80);
  return;
 case 10:
  if (sc->sc_gain[port][0])
   cmpci_reg_clear_1(sc, 0x25,
       0x20|0x10);
  else
   cmpci_reg_set_1(sc, 0x25,
       0x20|0x10);
  return;
 case 8:
  mask = (0x04|0x02);
  goto sbmute;
 case 11:
  mask = 0x01;
  goto sbmute;
 case 9:
  mask = (0x10|0x08);
 sbmute:
  bits = cmpci_mixerreg_read(sc, 0x3C);
  if (sc->sc_gain[port][0])
   bits = bits & ~mask;
  else
   bits = bits | mask;
  cmpci_mixerreg_write(sc, 0x3C, bits);
  return;
 case 17:
 case 22:
 case 16:
 case 19:
 case 20:
  cmpci_set_out_ports(sc);
  return;
 case 21:
  if ((sc->sc_capable & 0x00000040)) {
   if (sc->sc_gain[21][0]
       == 0)
    cmpci_reg_clear_reg_misc(sc, 0x02000000);
   else
    cmpci_reg_set_reg_misc(sc, 0x02000000);
  }
  return;
 case 27:
  if ((sc->sc_capable & 0x00000100)) {
   if (sc->sc_gain[27][0])
    cmpci_reg_set_1(sc, 0x24,
      0x02);
   else
    cmpci_reg_clear_1(sc, 0x24,
        0x02);
  }
  return;
 case 24:
  if ((sc->sc_capable & 0x00000200)) {
   if (sc->sc_gain[24][0])
    cmpci_reg_set_reg_misc(sc, 0x04000000);
   else
    cmpci_reg_clear_reg_misc(sc, 0x04000000);
  }
  return;
 case 25:
  if ((sc->sc_capable & 0x00000400)) {
   if (sc->sc_gain[24][0])
    cmpci_reg_set_1(sc, 0x24,
      0x20);
   else
    cmpci_reg_clear_1(sc, 0x24,
        0x20);
  }
  return;
 case 26:
  if ((sc->sc_capable & 0x00000800)) {
   if (sc->sc_gain[26][0])
    cmpci_reg_set_1(sc, 0x24,
      0x10);
   else
    cmpci_reg_clear_1(sc, 0x24,
        0x10);
  }
  return;
 case 18:
  if ((sc->sc_capable & 0x00001000)) {
   if (sc->sc_gain[18][0]
       == 0)
    cmpci_reg_clear_1(sc, 0x08,
        0x80);
   else
    cmpci_reg_set_1(sc, 0x08,
      0x80);
  }
  return;
 default:
  return;
 }
 cmpci_mixerreg_write(sc, src,
     cmpci_adjust((sc->sc_gain[port][0]), 0xf8));
 cmpci_mixerreg_write(sc, ((src)+1),
     cmpci_adjust((sc->sc_gain[port][1]), 0xf8));
}
void
cmpci_set_out_ports(struct cmpci_softc *sc)
{
 struct cmpci_channel *chan;
 u_int8_t v;
 int enspdout = 0;
 if (!(sc->sc_capable & 0x00000004))
  return;
 if (sc->sc_gain[19][0] == 0) {
  cmpci_reg_clear_4(sc, 0x04, 0x00000080);
 } else {
  cmpci_reg_set_4(sc, 0x04, 0x00000080);
 }
 v = sc->sc_gain[17][0];
 if (v & 0x01)
  cmpci_reg_set_reg_misc(sc, 0x00000100);
 else
  cmpci_reg_clear_reg_misc(sc, 0x00000100);
 if (v & 0x02)
  cmpci_reg_set_reg_misc(sc, 0x00100000);
 else
  cmpci_reg_clear_reg_misc(sc, 0x00100000);
 if (sc->sc_play_channel == 1)
  chan = &sc->sc_ch1;
 else
  chan = &sc->sc_ch0;
 cmpci_reg_clear_4(sc, 0x08, 0x00100000);
 cmpci_reg_clear_reg_misc(sc, 0x00040000);
 cmpci_reg_clear_reg_misc(sc, 0x00200000);
 cmpci_reg_clear_4(sc, 0x08, 0x00020000);
 if ((sc->sc_capable & 0x00000002) &&
     sc->sc_gain[16][0]
  == 1 &&
     (chan->md_divide == 3 ||
  ((sc->sc_capable & 0x00000080) &&
      chan->md_divide == 7))) {
  if (sc->sc_play_channel == 0)
   cmpci_reg_set_4(sc, 0x04,
       0x00000100);
  else
   cmpci_reg_set_4(sc, 0x04,
       0x00000200);
  enspdout = 1;
  if (chan->md_divide == 7)
   cmpci_reg_set_reg_misc(sc,
    0x00008000 | 0x01000000);
  else
   cmpci_reg_clear_reg_misc(sc,
    0x00008000 | 0x01000000);
  cmpci_reg_clear_4(sc, 0x08,
      0x00000040);
 } else {
  if (sc->sc_play_channel == 0)
   cmpci_reg_clear_4(sc, 0x04,
       0x00000100);
  else
   cmpci_reg_clear_4(sc, 0x04,
       0x00000200);
  if ((sc->sc_capable & 0x00000080))
   cmpci_reg_clear_reg_misc(sc,
    0x00008000 | 0x01000000);
 }
 if ((sc->sc_capable & 0x00000008)) {
  if (sc->sc_gain[20][0]
      == 0)
   cmpci_reg_clear_4(sc, 0x14,
     0x00200000);
  else {
   cmpci_reg_set_4(sc, 0x14,
     0x00200000);
   enspdout = 1;
  }
 }
 if ((sc->sc_capable & 0x00000020) && enspdout)
  cmpci_reg_set_4(sc, 0x14,
    0x00800000);
 else
  cmpci_reg_clear_4(sc, 0x14,
    0x00800000);
 if ((sc->sc_capable & 0x00000010)) {
  v = sc->sc_gain[22][0];
  if (!(v & 0x01))
   cmpci_reg_clear_1(sc, 0x24,
     0x01);
  if (v & 0x02)
   cmpci_reg_set_4(sc, 0x04,
     0x00000040);
  else
   cmpci_reg_clear_4(sc, 0x04,
     0x00000040);
  if (v & 0x01)
   cmpci_reg_set_1(sc, 0x24,
     0x01);
 }
}
int
cmpci_set_in_ports(struct cmpci_softc *sc)
{
 int mask;
 int bitsl, bitsr;
 mask = sc->sc_in_mask;
 bitsr = mask & (0x02 | 0x08 |
     0x20);
 bitsl = ((bitsr) << 1);
 if (mask & 0x01) {
  bitsl |= 0x01;
  bitsr |= 0x01;
 }
 cmpci_mixerreg_write(sc, 0x3D, bitsl);
 cmpci_mixerreg_write(sc, 0x3E, bitsr);
 if (mask & (1 << 8))
  cmpci_reg_set_1(sc, 0x25,
      0x80 | 0x40);
 else
  cmpci_reg_clear_1(sc, 0x25,
      0x80 | 0x40);
 if (mask & (1 << 9))
  cmpci_reg_set_1(sc, 0x24,
      0x08 | 0x04);
 else
  cmpci_reg_clear_1(sc, 0x24,
      0x08 | 0x04);
 if ((sc->sc_capable & 0x00000001) &&
     (sc->sc_ch1.md_divide == 3 ||
  ((sc->sc_capable & 0x00000080) &&
      sc->sc_ch1.md_divide == 7 ))) {
  if (mask & (1 << 10)) {
   cmpci_reg_set_4(sc,
     0x04,
     0x00000200);
  } else {
   cmpci_reg_clear_4(sc,
     0x04,
     0x00000200);
  }
 }
 return 0;
}
int
cmpci_set_port(void *handle, mixer_ctrl_t *cp)
{
 struct cmpci_softc *sc = handle;
 int lgain, rgain;
 switch (cp->dev) {
 case 5:
 case 13:
 case 15:
  if (cp->un.value.num_channels != 1)
   return 22;
 case 0:
 case 1:
 case 2:
 case 3:
 case 4:
 case 23:
  if (cp->type != 3)
   return 22;
  switch (cp->un.value.num_channels) {
  case 1:
   lgain = rgain =
       cp->un.value.level[0];
   break;
  case 2:
   lgain = cp->un.value.level[0];
   rgain = cp->un.value.level[1];
   break;
  default:
   return 22;
  }
  sc->sc_gain[cp->dev][0] = lgain;
  sc->sc_gain[cp->dev][1] = rgain;
  cmpci_set_mixer_gain(sc, cp->dev);
  break;
 case 14:
  if (cp->type != 2)
   return 22;
  if (cp->un.mask & ~(0x01 |
      0x02 | 0x08 |
      (1 << 8) | (1 << 9) |
      0x20 | (1 << 10)))
   return 22;
  if (cp->un.mask & (1 << 10))
   cp->un.mask = (1 << 10);
  sc->sc_in_mask = cp->un.mask;
  return cmpci_set_in_ports(sc);
 case 6:
 case 7:
 case 8:
 case 9:
 case 10:
 case 11:
 case 12:
 case 16:
 case 18:
 case 19:
 case 20:
 case 21:
 case 24:
 case 25:
 case 26:
 case 27:
  if (cp->type != 1)
   return 22;
  sc->sc_gain[cp->dev][0] = cp->un.ord != 0;
  cmpci_set_mixer_gain(sc, cp->dev);
  break;
 case 17:
  switch (cp->un.ord) {
  case 0:
  case 0x01:
  case (0x01|0x02):
   break;
  default:
   return 22;
  }
  goto xenum;
 case 22:
  switch (cp->un.ord) {
  case 0:
  case 0x01:
  case (0x01 | 0x02):
   break;
  default:
   return 22;
  }
 xenum:
  if (cp->type != 1)
   return 22;
  sc->sc_gain[cp->dev][0] = cp->un.ord;
  cmpci_set_mixer_gain(sc, cp->dev);
  break;
 default:
     return 22;
 }
 return 0;
}
int
cmpci_get_port(void *handle, mixer_ctrl_t *cp)
{
 struct cmpci_softc *sc = handle;
 switch (cp->dev) {
 case 5:
 case 13:
 case 15:
  if (cp->un.value.num_channels != 1)
   return 22;
 case 0:
 case 1:
 case 2:
 case 3:
 case 4:
 case 23:
  switch (cp->un.value.num_channels) {
  case 1:
   cp->un.value.level[0] =
    sc->sc_gain[cp->dev][0];
   break;
  case 2:
   cp->un.value.level[0] =
    sc->sc_gain[cp->dev][0];
   cp->un.value.level[1] =
    sc->sc_gain[cp->dev][1];
   break;
  default:
   return 22;
  }
  break;
 case 14:
  cp->un.mask = sc->sc_in_mask;
  break;
 case 6:
 case 7:
 case 8:
 case 9:
 case 10:
 case 11:
 case 12:
 case 16:
 case 17:
 case 18:
 case 19:
 case 20:
 case 21:
 case 22:
 case 24:
 case 25:
 case 26:
 case 27:
  cp->un.ord = sc->sc_gain[cp->dev][0];
  break;
 default:
  return 22;
 }
 return 0;
}
size_t
cmpci_round_buffersize(void *handle, int direction, size_t bufsize)
{
 if (bufsize > 0x10000)
  bufsize = 0x10000;
 return bufsize;
}
int
cmpci_get_props(void *handle)
{
 return 0x02 | 0x04 | 0x01;
}
int
cmpci_trigger_output(void *handle, void *start, void *end, int blksize,
    void (*intr)(void *), void *arg, struct audio_params *param)
{
 struct cmpci_softc *sc = handle;
 struct cmpci_dmanode *p;
 struct cmpci_channel *chan;
 uint32_t reg_dma_base, reg_dma_bytes, reg_dma_samples, reg_dir,
     reg_intr_enable, reg_enable;
 uint32_t length;
 size_t buffer_size = (caddr_t)end - (caddr_t)start;
 cmpci_set_out_ports(sc);
 if (sc->sc_play_channel == 1) {
  chan = &sc->sc_ch1;
  reg_dma_base = 0x88;
  reg_dma_bytes = 0x8C;
  reg_dma_samples = 0x8E;
  reg_dir = 0x00000002;
  reg_intr_enable = 0x00020000;
  reg_enable = 0x00020000;
 } else {
  chan = &sc->sc_ch0;
  reg_dma_base = 0x80;
  reg_dma_bytes = 0x84;
  reg_dma_samples = 0x86;
  reg_dir = 0x00000001;
  reg_intr_enable = 0x00010000;
  reg_enable = 0x00010000;
 }
 chan->bps = (param->channels > 1 ? 2 : 1) * param->bps;
 if (!chan->bps)
  return 22;
 chan->intr = intr;
 chan->intr_arg = arg;
 chan->blksize = blksize;
 chan->nblocks = buffer_size / chan->blksize;
 chan->swpos = 0;
 if (!(p = cmpci_find_dmamem(sc, start)))
  return 22;
 bus_space_write_4(sc->sc_iot, sc->sc_ioh, reg_dma_base,
     ((p)->cd_map->dm_segs[0].ds_addr));
 delay(10);
 length = (buffer_size + 1) / chan->bps - 1;
 bus_space_write_2(sc->sc_iot, sc->sc_ioh, reg_dma_bytes, length);
 delay(10);
 length = (chan->blksize + chan->bps - 1) / chan->bps - 1;
 bus_space_write_2(sc->sc_iot, sc->sc_ioh, reg_dma_samples, length);
 delay(10);
 __mtx_enter(&audio_lock);
 cmpci_reg_clear_4(sc, 0x00, reg_dir);
 cmpci_reg_set_4(sc, 0x0c, reg_intr_enable);
 cmpci_reg_set_4(sc, 0x00, reg_enable);
 __mtx_leave(&audio_lock);
 return 0;
}
int
cmpci_trigger_input(void *handle, void *start, void *end, int blksize,
    void (*intr)(void *), void *arg, struct audio_params *param)
{
 struct cmpci_softc *sc = handle;
 struct cmpci_dmanode *p;
 struct cmpci_channel *chan = &sc->sc_ch1;
 size_t buffer_size = (caddr_t)end - (caddr_t)start;
 cmpci_set_in_ports(sc);
 chan->bps = param->channels * param->bps;
 if (!chan->bps)
  return 22;
 chan->intr = intr;
 chan->intr_arg = arg;
 chan->blksize = blksize;
 chan->nblocks = buffer_size / chan->blksize;
 chan->swpos = 0;
 if (!(p = cmpci_find_dmamem(sc, start)))
  return 22;
 bus_space_write_4(sc->sc_iot, sc->sc_ioh, 0x88,
     ((p)->cd_map->dm_segs[0].ds_addr));
 delay(10);
 bus_space_write_2(sc->sc_iot, sc->sc_ioh, 0x8C,
     (buffer_size + 1) / chan->bps - 1);
 delay(10);
 bus_space_write_2(sc->sc_iot, sc->sc_ioh, 0x8E,
     (chan->blksize + chan->bps - 1) / chan->bps - 1);
 delay(10);
 __mtx_enter(&audio_lock);
 cmpci_reg_set_4(sc, 0x00, 0x00000002);
 cmpci_reg_set_4(sc, 0x0c, 0x00020000);
 cmpci_reg_set_4(sc, 0x00, 0x00020000);
 __mtx_leave(&audio_lock);
 return 0;
}
