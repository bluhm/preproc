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
struct mutex {
 volatile void *mtx_owner;
 int mtx_wantipl;
 int mtx_oldipl;
};
void __mtx_init(struct mutex *, int);
void __mtx_enter(struct mutex *);
int __mtx_enter_try(struct mutex *);
void __mtx_leave(struct mutex *);
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
struct frame32 {
 int32_t fr_local[8];
 int32_t fr_arg[6];
 u_int32_t fr_fp;
 u_int32_t fr_pc;
 int32_t fr_xxx;
 int32_t fr_argd[6];
 int32_t fr_argx[1];
};
struct frame64 {
 int64_t fr_local[8];
 int64_t fr_arg[6];
 u_int64_t fr_fp;
 u_int64_t fr_pc;
 int64_t fr_argd[6];
 int64_t fr_argx[0];
};
typedef vaddr_t db_addr_t;
typedef long db_expr_t;
struct trapstate {
 int64_t tstate;
 int64_t tpc;
 int64_t tnpc;
 int64_t tt;
};
typedef struct {
 struct trapframe64 ddb_tf;
 struct frame64 ddb_fr;
 struct trapstate ddb_ts[5];
 int ddb_tl;
 struct fpstate64 ddb_fpstate;
} db_regs_t;
extern db_regs_t ddb_regs;
boolean_t db_inst_trap_return(int inst);
boolean_t db_inst_return(int inst);
boolean_t db_inst_call(int inst);
boolean_t db_inst_branch(int inst);
boolean_t db_inst_unconditional_flow_transfer(int inst);
db_addr_t db_branch_taken(int inst, db_addr_t pc, db_regs_t *regs);
void db_machine_init(void);
int db_ktrap(int, struct trapframe64 *);
int db_enter_ddb(void);
void db_startcpu(struct cpu_info *);
void db_stopcpu(struct cpu_info *);
extern struct mutex ddb_mp_mutex;
void db_register_xir(void (*)(void *, int), void *);
enum IOP { IOP_OP2, IOP_CALL, IOP_reg, IOP_mem };
enum IOP2 { IOP2_UNIMP, IOP2_BPcc, IOP2_Bicc, IOP2_BPr,
 IOP2_SETHI, IOP2_FBPfcc, IOP2_FBfcc, IOP2_CBccc };
enum IOP3_reg {
 IOP3_ADD, IOP3_AND, IOP3_OR, IOP3_XOR,
 IOP3_SUB, IOP3_ANDN, IOP3_ORN, IOP3_XNOR,
 IOP3_ADDX, IOP3_MULX, IOP3_UMUL, IOP3_SMUL,
 IOP3_SUBX, IOP3_UDIVX, IOP3_UDIV, IOP3_SDIV,
 IOP3_ADDcc, IOP3_ANDcc, IOP3_ORcc, IOP3_XORcc,
 IOP3_SUBcc, IOP3_ANDNcc, IOP3_ORNcc, IOP3_XNORcc,
 IOP3_ADDXcc, IOP3_rerr19, IOP3_UMULcc, IOP3_SMULcc,
 IOP3_SUBXcc, IOP3_rerr1d, IOP3_UDIVcc, IOP3_SDIVcc,
 IOP3_TADDcc, IOP3_TSUBcc, IOP3_TADDccTV, IOP3_TSUBccTV,
 IOP3_MULScc, IOP3_SLL, IOP3_SRL, IOP3_SRA,
 IOP3_RDASR_RDY_STBAR, IOP3_RDPSR, IOP3_RDWIM, IOP3_RDTGBR,
 IOP3_MOVcc, IOP3_SDIVX, IOP3_POPC, IOP3_MOVr,
 IOP3_WRASR_WRY, IOP3_WRPSR, IOP3_WRWIM, IOP3_WRTBR,
 IOP3_FPop1, IOP3_FPop2, IOP3_CPop1, IOP3_CPop2,
 IOP3_JMPL, IOP3_RETT, IOP3_Ticc, IOP3_FLUSH,
 IOP3_SAVE, IOP3_RESTORE, IOP3_DONE_RETRY, IOP3_rerr3f
};
enum IOP3_mem {
 IOP3_LD, IOP3_LDUB, IOP3_LDUH, IOP3_LDD,
 IOP3_ST, IOP3_STB, IOP3_STH, IOP3_STD,
 IOP3_LDSW, IOP3_LDSB, IOP3_LDSH, IOP3_LDX,
 IOP3_merr0c, IOP3_LDSTUB, IOP3_STX, IOP3_SWAP,
 IOP3_LDA, IOP3_LDUBA, IOP3_LDUHA, IOP3_LDDA,
 IOP3_STA, IOP3_STBA, IOP3_STHA, IOP3_STDA,
 IOP3_LDSWA, IOP3_LDSBA, IOP3_LDSHA, IOP3_LDXA,
 IOP3_merr1c, IOP3_LDSTUBA, IOP3_STXA, IOP3_SWAPA,
 IOP3_LDF, IOP3_LDFSR, IOP3_LDQF, IOP3_LDDF,
 IOP3_STF, IOP3_STFSR, IOP3_STQF, IOP3_STDF,
 IOP3_merr28, IOP3_merr29, IOP3_merr2a, IOP3_merr2b,
 IOP3_merr2c, IOP3_PREFETCH, IOP3_merr2e, IOP3_merr2f,
 IOP3_LFC, IOP3_LDCSR, IOP3_LDQFA, IOP3_LDDC,
 IOP3_STC, IOP3_STCSR, IOP3_STQFA, IOP3_STDC,
 IOP3_merr38, IOP3_merr39, IOP3_merr3a, IOP3_merr3b,
 IOP3_CASA, IOP3_PREFETCHA, IOP3_CASXA, IOP3_merr3f
};
union instr {
 int i_int;
 struct {
  u_int i_op:2;
  u_int :30;
 } i_any;
 struct {
  u_int :2;
  int i_disp:30;
 } i_call;
 struct {
  u_int :2;
  u_int :5;
  u_int i_op2:3;
  u_int :22;
 } i_op2;
 struct {
  u_int :2;
  u_int i_rd:5;
  u_int i_op2:3;
  u_int i_imm:22;
 } i_imm22;
 struct {
  u_int :2;
  u_int i_annul:1;
  u_int i_cond:4;
  u_int i_op2:3;
  int i_disp:22;
 } i_branch;
 struct {
  u_int :2;
  u_int i_annul:1;
  u_int i_cond:4;
  u_int i_op2:3;
  u_int i_cc:2;
  u_int i_pred:1;
  int i_disp:19;
 } i_branch_p;
 struct {
  u_int :2;
  u_int i_annul:1;
  u_int :1;
  u_int i_rcond:4;
  u_int :3;
  int i_disphi:2;
  u_int i_pred:1;
  u_int i_rs1:1;
  u_int i_displo:16;
 } i_branch_pr;
 struct {
  u_int :2;
  u_int i_rd:5;
  u_int i_op3:6;
  u_int i_rs1:5;
  u_int i_low14:14;
 } i_op3;
 struct {
  u_int :2;
  u_int i_rd:5;
  u_int i_op3:6;
  u_int i_rs1:5;
  u_int i_i:1;
  u_int i_low13:13;
 } i_loadstore;
 struct {
  u_int :2;
  u_int i_rd:5;
  u_int i_op3:6;
  u_int i_rs1:5;
  u_int i_i:1;
  int i_simm13:13;
 } i_simm13;
 struct {
  u_int :2;
  u_int i_rd:5;
  u_int i_op3:6;
  u_int i_rs1:5;
  u_int i_i:1;
  u_int i_asi:8;
  u_int i_rs2:5;
 } i_asi;
 struct {
  u_int :2;
  u_int i_rd:5;
  u_int i_op3:6;
  u_int i_rs1:5;
  u_int i_opf:9;
  u_int i_rs2:5;
 } i_opf;
 struct {
  u_int :2;
  u_int i_rd:5;
  u_int i_op3:6;
  u_int i_rs1:5;
  u_int i_low14:14;
 } i_op4;
 struct {
  u_int :2;
  u_int i_rd:5;
  u_int i_op3:6;
  u_int :1;
  u_int i_cond:4;
  u_int i_opf_cc:3;
  u_int i_opf_low:6;
  u_int i_rs2:5;
 } i_fmovcc;
 struct {
  u_int :2;
  u_int i_rd:5;
  u_int i_op3:6;
  u_int i_rs1:5;
  u_int :1;
  u_int i_rcond:3;
  u_int i_opf_low:6;
  u_int i_rs2:5;
 } i_fmovr;
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
typedef __uint8_t Elf_Byte;
typedef __uint32_t Elf32_Addr;
typedef __uint32_t Elf32_Off;
typedef __int32_t Elf32_Sword;
typedef __uint32_t Elf32_Word;
typedef __uint16_t Elf32_Half;
typedef __uint64_t Elf64_Addr;
typedef __uint64_t Elf64_Off;
typedef __int32_t Elf64_Shalf;
typedef __int32_t Elf64_Sword;
typedef __uint32_t Elf64_Word;
typedef __int64_t Elf64_Sxword;
typedef __uint64_t Elf64_Xword;
typedef __uint32_t Elf64_Half;
typedef __uint16_t Elf64_Quarter;
typedef struct elfhdr {
 unsigned char e_ident[16];
 Elf32_Half e_type;
 Elf32_Half e_machine;
 Elf32_Word e_version;
 Elf32_Addr e_entry;
 Elf32_Off e_phoff;
 Elf32_Off e_shoff;
 Elf32_Word e_flags;
 Elf32_Half e_ehsize;
 Elf32_Half e_phentsize;
 Elf32_Half e_phnum;
 Elf32_Half e_shentsize;
 Elf32_Half e_shnum;
 Elf32_Half e_shstrndx;
} Elf32_Ehdr;
typedef struct {
 unsigned char e_ident[16];
 Elf64_Quarter e_type;
 Elf64_Quarter e_machine;
 Elf64_Half e_version;
 Elf64_Addr e_entry;
 Elf64_Off e_phoff;
 Elf64_Off e_shoff;
 Elf64_Half e_flags;
 Elf64_Quarter e_ehsize;
 Elf64_Quarter e_phentsize;
 Elf64_Quarter e_phnum;
 Elf64_Quarter e_shentsize;
 Elf64_Quarter e_shnum;
 Elf64_Quarter e_shstrndx;
} Elf64_Ehdr;
typedef struct {
 Elf32_Word sh_name;
 Elf32_Word sh_type;
 Elf32_Word sh_flags;
 Elf32_Addr sh_addr;
 Elf32_Off sh_offset;
 Elf32_Word sh_size;
 Elf32_Word sh_link;
 Elf32_Word sh_info;
 Elf32_Word sh_addralign;
 Elf32_Word sh_entsize;
} Elf32_Shdr;
typedef struct {
 Elf64_Half sh_name;
 Elf64_Half sh_type;
 Elf64_Xword sh_flags;
 Elf64_Addr sh_addr;
 Elf64_Off sh_offset;
 Elf64_Xword sh_size;
 Elf64_Half sh_link;
 Elf64_Half sh_info;
 Elf64_Xword sh_addralign;
 Elf64_Xword sh_entsize;
} Elf64_Shdr;
typedef struct elf32_sym {
 Elf32_Word st_name;
 Elf32_Addr st_value;
 Elf32_Word st_size;
 unsigned char st_info;
 unsigned char st_other;
 Elf32_Half st_shndx;
} Elf32_Sym;
typedef struct {
 Elf64_Half st_name;
 Elf_Byte st_info;
 Elf_Byte st_other;
 Elf64_Quarter st_shndx;
 Elf64_Xword st_value;
 Elf64_Xword st_size;
} Elf64_Sym;
typedef struct {
 Elf32_Addr r_offset;
 Elf32_Word r_info;
} Elf32_Rel;
typedef struct {
 Elf32_Addr r_offset;
 Elf32_Word r_info;
 Elf32_Sword r_addend;
} Elf32_Rela;
typedef struct {
 Elf64_Xword r_offset;
 Elf64_Xword r_info;
} Elf64_Rel;
typedef struct {
 Elf64_Xword r_offset;
 Elf64_Xword r_info;
 Elf64_Sxword r_addend;
} Elf64_Rela;
typedef struct {
 Elf32_Word p_type;
 Elf32_Off p_offset;
 Elf32_Addr p_vaddr;
 Elf32_Addr p_paddr;
 Elf32_Word p_filesz;
 Elf32_Word p_memsz;
 Elf32_Word p_flags;
 Elf32_Word p_align;
} Elf32_Phdr;
typedef struct {
 Elf64_Half p_type;
 Elf64_Half p_flags;
 Elf64_Off p_offset;
 Elf64_Addr p_vaddr;
 Elf64_Addr p_paddr;
 Elf64_Xword p_filesz;
 Elf64_Xword p_memsz;
 Elf64_Xword p_align;
} Elf64_Phdr;
typedef struct {
 Elf32_Sword d_tag;
 union {
  Elf32_Word d_val;
  Elf32_Addr d_ptr;
 } d_un;
} Elf32_Dyn;
typedef struct {
 Elf64_Xword d_tag;
 union {
  Elf64_Addr d_ptr;
  Elf64_Xword d_val;
 } d_un;
} Elf64_Dyn;
typedef struct {
 Elf32_Word n_namesz;
 Elf32_Word n_descsz;
 Elf32_Word n_type;
} Elf32_Nhdr;
typedef struct {
 Elf64_Half n_namesz;
 Elf64_Half n_descsz;
 Elf64_Half n_type;
} Elf64_Nhdr;
typedef struct {
 Elf32_Word namesz;
 Elf32_Word descsz;
 Elf32_Word type;
} Elf32_Note;
typedef struct {
 Elf64_Half namesz;
 Elf64_Half descsz;
 Elf64_Half type;
} Elf64_Note;
struct elfcore_procinfo {
 uint32_t cpi_version;
 uint32_t cpi_cpisize;
 uint32_t cpi_signo;
 uint32_t cpi_sigcode;
 uint32_t cpi_sigpend;
 uint32_t cpi_sigmask;
 uint32_t cpi_sigignore;
 uint32_t cpi_sigcatch;
 int32_t cpi_pid;
 int32_t cpi_ppid;
 int32_t cpi_pgrp;
 int32_t cpi_sid;
 uint32_t cpi_ruid;
 uint32_t cpi_euid;
 uint32_t cpi_svuid;
 uint32_t cpi_rgid;
 uint32_t cpi_egid;
 uint32_t cpi_svgid;
 int8_t cpi_name[32];
};
typedef struct {
 Elf32_Sword au_id;
 Elf32_Word au_v;
} Aux32Info;
typedef struct {
 Elf64_Shalf au_id;
 Elf64_Xword au_v;
} Aux64Info;
enum AuxID {
 AUX_null = 0,
 AUX_ignore = 1,
 AUX_execfd = 2,
 AUX_phdr = 3,
 AUX_phent = 4,
 AUX_phnum = 5,
 AUX_pagesz = 6,
 AUX_base = 7,
 AUX_flags = 8,
 AUX_entry = 9,
 AUX_sun_uid = 2000,
 AUX_sun_ruid = 2001,
 AUX_sun_gid = 2002,
 AUX_sun_rgid = 2003
};
struct elf_args {
        u_long arg_entry;
        u_long arg_interp;
        u_long arg_phaddr;
        u_long arg_phentsize;
        u_long arg_phnum;
};
struct exec_package;
int exec_elf_makecmds(struct proc *, struct exec_package *);
typedef int db_strategy_t;
typedef void (db_forall_func_t)(Elf64_Sym *, char *, char *, int, void *);
extern unsigned int db_maxoff;
int db_eqname(char *, char *, int);
Elf64_Sym * db_symbol_by_name(char *, db_expr_t *);
Elf64_Sym * db_search_symbol(db_addr_t, db_strategy_t, db_expr_t *);
void db_symbol_values(Elf64_Sym *, char **, db_expr_t *);
void db_printsym(db_expr_t, db_strategy_t, int (*)(const char *, ...));
int db_elf_sym_init(int, void *, void *, const char *);
Elf64_Sym * db_elf_sym_search(db_addr_t, db_strategy_t, db_expr_t *);
int db_elf_line_at_pc(Elf64_Sym *, char **, int *, db_expr_t);
void db_elf_sym_forall(db_forall_func_t db_forall_func, void *);
_Bool db_dwarf_line_at_pc(const char *, size_t, uintptr_t,
    const char **, const char **, int *);
struct ctf_type;
int db_ctf_func_numargs(Elf64_Sym *);
void db_stack_trace_print(db_expr_t, int, db_expr_t, char *,
    int (*)(const char *, ...));
db_addr_t db_disasm(db_addr_t, boolean_t);
void db_kill_cmd(db_expr_t, int, db_expr_t, char *);
void db_show_all_procs(db_expr_t, int, db_expr_t, char *);
void db_show_callout(db_expr_t, int, db_expr_t, char *);
struct mount;
void vfs_buf_print(void *, int, int (*)(const char *, ...));
void vfs_vnode_print(void *, int, int (*)(const char *, ...));
void vfs_mount_print(struct mount *, int, int (*)(const char *, ...));
void db_show_all_pools(db_expr_t, int, db_expr_t, char *);
void m_print(void *, int (*)(const char *, ...));
void so_print(void *, int (*)(const char *, ...));
void db_show_all_nfsreqs(db_expr_t, int, db_expr_t, char *);
void nfs_request_print(void *, int, int (*)(const char *, ...));
void db_show_all_nfsnodes(db_expr_t, int, db_expr_t, char *);
void nfs_node_print(void *, int, int (*)(const char *, ...));
struct worklist;
void worklist_print(struct worklist *, int, int (*)(const char *, ...));
void softdep_print(struct buf *, int, int (*)(const char *, ...));
void db_machine_init(void);
void ddb_init(void);
void db_examine_cmd(db_expr_t, int, db_expr_t, char *);
void db_print_cmd(db_expr_t, int, db_expr_t, char *);
void db_search_cmd(db_expr_t, boolean_t, db_expr_t, char *);
void db_print_loc_and_inst(db_addr_t);
size_t db_strlcpy(char *, const char *, size_t);
int db_expression(db_expr_t *);
void db_hangman(db_expr_t, int, db_expr_t, char *);
int db_readline(char *, int);
void db_trap(int, int);
void db_prof_init(void);
int db_prof_enable(void);
void db_prof_disable(void);
void db_ctf_init(void);
void db_force_whitespace(void);
void db_putchar(int);
int db_print_position(void);
int db_printf(const char *, ...)
    __attribute__((__format__(__kprintf__,1,2)));
int db_vprintf(const char *, va_list)
    __attribute__((__format__(__kprintf__,1,0)));
void db_end_line(int);
char *db_format(char *, size_t, long, int, int, int);
void db_stack_dump(void);
db_expr_t db_get_value(db_addr_t, size_t, int);
void db_put_value(db_addr_t, size_t, db_expr_t);
void db_read_bytes(db_addr_t, size_t, char *);
void db_write_bytes(db_addr_t, size_t, char *);
struct db_stack_trace {
 unsigned int st_count;
 db_addr_t st_pc[19];
};
void db_print_stack_trace(struct db_stack_trace *);
void db_save_stack_trace(struct db_stack_trace *);
struct sparc_insn {
   unsigned int match;
   char *name;
   char *format;
};
char *regs[] = {
 "g0", "g1", "g2", "g3", "g4", "g5", "g6", "g7",
 "o0", "o1", "o2", "o3", "o4", "o5", "sp", "o7",
 "l0", "l1", "l2", "l3", "l4", "l5", "l6", "l7",
 "i0", "i1", "i2", "i3", "i4", "i5", "fp", "i7"
};
char *priv_regs[] = {
 "tpc", "tnpc", "tstate", "tt", "tick", "tba", "pstate", "tl",
 "pil", "cwp", "cansave", "canrestore", "cleanwin", "otherwin",
 "wstate", "fq",
 "", "", "", "", "", "", "", "",
 "", "", "", "", "", "", "", "ver"
};
char *state_regs[] = {
 "y", "", "ccr", "asi", "tick", "pc", "fprs", "asr",
 "", "", "", "", "", "", "", "",
 "pcr", "pic", "dcr", "gsr", "set_softint", "clr_softint", "softint", "tick_cmpr", "",
 "", "", "", "", "", "", "", ""
};
char *ccodes[] = {
 "fcc0", "fcc1", "fcc2", "fcc3", "icc", "", "xcc", ""
};
char *prefetch[] = {
 "n_reads", "one_read", "n_writes", "one_write", "page"
};
struct sparc_insn sparc_i[] = {
 {(((((1) & 0x3) << 30))), "call", "n"},
 {(((((0) & 0x3) << 30) | (((0) & 0x7) << 22))), "illtrap", "m"},
 {(((((0) & 0x3) << 30) | (((0x4) & 0x7) << 22))), "sethi", "Cd"},
 {(((((0) & 0x3) << 30) | (((2) & 0x7) << 22)) | (((8) & 0xf) << 25)), "ba", "a,m"},
 {(((((0) & 0x3) << 30) | (((2) & 0x7) << 22)) | (((0) & 0xf) << 25)), "bn", "a,m"},
 {(((((0) & 0x3) << 30) | (((2) & 0x7) << 22)) | (((9) & 0xf) << 25)), "bne", "a,m"},
 {(((((0) & 0x3) << 30) | (((2) & 0x7) << 22)) | (((1) & 0xf) << 25)), "be", "a,m"},
 {(((((0) & 0x3) << 30) | (((2) & 0x7) << 22)) | (((10) & 0xf) << 25)), "bg", "a,m"},
 {(((((0) & 0x3) << 30) | (((2) & 0x7) << 22)) | (((2) & 0xf) << 25)), "ble", "a,m"},
 {(((((0) & 0x3) << 30) | (((2) & 0x7) << 22)) | (((11) & 0xf) << 25)), "bge", "a,m"},
 {(((((0) & 0x3) << 30) | (((2) & 0x7) << 22)) | (((3) & 0xf) << 25)), "bl", "a,m"},
 {(((((0) & 0x3) << 30) | (((2) & 0x7) << 22)) | (((12) & 0xf) << 25)), "bgu", "a,m"},
 {(((((0) & 0x3) << 30) | (((2) & 0x7) << 22)) | (((4) & 0xf) << 25)), "bleu", "a,m"},
 {(((((0) & 0x3) << 30) | (((2) & 0x7) << 22)) | (((13) & 0xf) << 25)), "bcc", "a,m"},
 {(((((0) & 0x3) << 30) | (((2) & 0x7) << 22)) | (((5) & 0xf) << 25)), "bcs", "a,m"},
 {(((((0) & 0x3) << 30) | (((2) & 0x7) << 22)) | (((14) & 0xf) << 25)), "bpos", "a,m"},
 {(((((0) & 0x3) << 30) | (((2) & 0x7) << 22)) | (((6) & 0xf) << 25)), "bneg", "a,m"},
 {(((((0) & 0x3) << 30) | (((2) & 0x7) << 22)) | (((15) & 0xf) << 25)), "bvc", "a,m"},
 {(((((0) & 0x3) << 30) | (((2) & 0x7) << 22)) | (((7) & 0xf) << 25)), "bvs", "a,m"},
 {(((((0) & 0x3) << 30) | (((1) & 0x7) << 22)) | (((8) & 0xf) << 25)), "ba", "ap,u"},
 {(((((0) & 0x3) << 30) | (((1) & 0x7) << 22)) | (((0) & 0xf) << 25)), "bn", "ap,u"},
 {(((((0) & 0x3) << 30) | (((1) & 0x7) << 22)) | (((9) & 0xf) << 25)), "bne", "ap,u"},
 {(((((0) & 0x3) << 30) | (((1) & 0x7) << 22)) | (((1) & 0xf) << 25)), "be", "ap,u"},
 {(((((0) & 0x3) << 30) | (((1) & 0x7) << 22)) | (((10) & 0xf) << 25)), "bg", "ap,u"},
 {(((((0) & 0x3) << 30) | (((1) & 0x7) << 22)) | (((2) & 0xf) << 25)), "ble", "ap,u"},
 {(((((0) & 0x3) << 30) | (((1) & 0x7) << 22)) | (((11) & 0xf) << 25)), "bge", "ap,u"},
 {(((((0) & 0x3) << 30) | (((1) & 0x7) << 22)) | (((3) & 0xf) << 25)), "bl", "ap,u"},
 {(((((0) & 0x3) << 30) | (((1) & 0x7) << 22)) | (((12) & 0xf) << 25)), "bgu", "ap,u"},
 {(((((0) & 0x3) << 30) | (((1) & 0x7) << 22)) | (((4) & 0xf) << 25)), "bleu", "ap,u"},
 {(((((0) & 0x3) << 30) | (((1) & 0x7) << 22)) | (((13) & 0xf) << 25)), "bcc", "ap,u"},
 {(((((0) & 0x3) << 30) | (((1) & 0x7) << 22)) | (((5) & 0xf) << 25)), "bcs", "ap,u"},
 {(((((0) & 0x3) << 30) | (((1) & 0x7) << 22)) | (((14) & 0xf) << 25)), "bpos", "ap,u"},
 {(((((0) & 0x3) << 30) | (((1) & 0x7) << 22)) | (((6) & 0xf) << 25)), "bneg", "ap,u"},
 {(((((0) & 0x3) << 30) | (((1) & 0x7) << 22)) | (((15) & 0xf) << 25)), "bvc", "ap,u"},
 {(((((0) & 0x3) << 30) | (((1) & 0x7) << 22)) | (((7) & 0xf) << 25)), "bvs", "ap,u"},
 {(((((0) & 0x3) << 30) | (((3) & 0x7) << 22)) | (((1) & 0x7) << 25)), "brz", "ap,1l"},
 {(((((0) & 0x3) << 30) | (((3) & 0x7) << 22)) | (((2) & 0x7) << 25)), "brlez", "ap,1l"},
 {(((((0) & 0x3) << 30) | (((3) & 0x7) << 22)) | (((3) & 0x7) << 25)), "brlz", "ap,1l"},
 {(((((0) & 0x3) << 30) | (((3) & 0x7) << 22)) | (((5) & 0x7) << 25)), "brnz", "ap,1l"},
 {(((((0) & 0x3) << 30) | (((3) & 0x7) << 22)) | (((6) & 0x7) << 25)), "brgz", "ap,1l"},
 {(((((0) & 0x3) << 30) | (((3) & 0x7) << 22)) | (((7) & 0x7) << 25)), "brgez", "ap,1l"},
 {(((((0) & 0x3) << 30) | (((5) & 0x7) << 22)) | (((8) & 0xf) << 25)), "fba", "ap,m"},
 {(((((0) & 0x3) << 30) | (((5) & 0x7) << 22)) | (((0) & 0xf) << 25)), "fbn", "ap,m"},
 {(((((0) & 0x3) << 30) | (((5) & 0x7) << 22)) | (((7) & 0xf) << 25)), "fbu", "ap,m"},
 {(((((0) & 0x3) << 30) | (((5) & 0x7) << 22)) | (((6) & 0xf) << 25)), "fbg", "ap,m"},
 {(((((0) & 0x3) << 30) | (((5) & 0x7) << 22)) | (((5) & 0xf) << 25)), "fbug", "ap,m"},
 {(((((0) & 0x3) << 30) | (((5) & 0x7) << 22)) | (((4) & 0xf) << 25)), "fbl", "ap,m"},
 {(((((0) & 0x3) << 30) | (((5) & 0x7) << 22)) | (((3) & 0xf) << 25)), "fbul", "ap,m"},
 {(((((0) & 0x3) << 30) | (((5) & 0x7) << 22)) | (((2) & 0xf) << 25)), "fblg", "ap,m"},
 {(((((0) & 0x3) << 30) | (((5) & 0x7) << 22)) | (((1) & 0xf) << 25)), "fbne", "ap,m"},
 {(((((0) & 0x3) << 30) | (((5) & 0x7) << 22)) | (((9) & 0xf) << 25)), "fbe", "ap,m"},
 {(((((0) & 0x3) << 30) | (((5) & 0x7) << 22)) | (((10) & 0xf) << 25)), "fbue", "ap,m"},
 {(((((0) & 0x3) << 30) | (((5) & 0x7) << 22)) | (((11) & 0xf) << 25)), "fbge", "ap,m"},
 {(((((0) & 0x3) << 30) | (((5) & 0x7) << 22)) | (((12) & 0xf) << 25)), "fbuge", "ap,m"},
 {(((((0) & 0x3) << 30) | (((5) & 0x7) << 22)) | (((13) & 0xf) << 25)), "fble", "ap,m"},
 {(((((0) & 0x3) << 30) | (((5) & 0x7) << 22)) | (((14) & 0xf) << 25)), "fbule", "ap,m"},
 {(((((0) & 0x3) << 30) | (((5) & 0x7) << 22)) | (((15) & 0xf) << 25)), "fbo", "ap,m"},
 {(((((0) & 0x3) << 30) | (((6) & 0x7) << 22)) | (((8) & 0xf) << 25)), "fba", "a,m"},
 {(((((0) & 0x3) << 30) | (((6) & 0x7) << 22)) | (((0) & 0xf) << 25)), "fbn", "a,m"},
 {(((((0) & 0x3) << 30) | (((6) & 0x7) << 22)) | (((7) & 0xf) << 25)), "fbu", "a,m"},
 {(((((0) & 0x3) << 30) | (((6) & 0x7) << 22)) | (((6) & 0xf) << 25)), "fbg", "a,m"},
 {(((((0) & 0x3) << 30) | (((6) & 0x7) << 22)) | (((5) & 0xf) << 25)), "fbug", "a,m"},
 {(((((0) & 0x3) << 30) | (((6) & 0x7) << 22)) | (((4) & 0xf) << 25)), "fbl", "a,m"},
 {(((((0) & 0x3) << 30) | (((6) & 0x7) << 22)) | (((3) & 0xf) << 25)), "fbul", "a,m"},
 {(((((0) & 0x3) << 30) | (((6) & 0x7) << 22)) | (((2) & 0xf) << 25)), "fblg", "a,m"},
 {(((((0) & 0x3) << 30) | (((6) & 0x7) << 22)) | (((1) & 0xf) << 25)), "fbne", "a,m"},
 {(((((0) & 0x3) << 30) | (((6) & 0x7) << 22)) | (((9) & 0xf) << 25)), "fbe", "a,m"},
 {(((((0) & 0x3) << 30) | (((6) & 0x7) << 22)) | (((10) & 0xf) << 25)), "fbue", "a,m"},
 {(((((0) & 0x3) << 30) | (((6) & 0x7) << 22)) | (((11) & 0xf) << 25)), "fbge", "a,m"},
 {(((((0) & 0x3) << 30) | (((6) & 0x7) << 22)) | (((12) & 0xf) << 25)), "fbuge", "a,m"},
 {(((((0) & 0x3) << 30) | (((6) & 0x7) << 22)) | (((13) & 0xf) << 25)), "fble", "a,m"},
 {(((((0) & 0x3) << 30) | (((6) & 0x7) << 22)) | (((14) & 0xf) << 25)), "fbule", "a,m"},
 {(((((0) & 0x3) << 30) | (((6) & 0x7) << 22)) | (((15) & 0xf) << 25)), "fbo", "a,m"},
 {((((2) & 0x3) << 30) | (((((((0) & 3) << 4) | ((0) & 0xf))) & 0x3f) << 19) | (((0) & 0x1) << 13)), "add", "12d"},
 {((((2) & 0x3) << 30) | (((((((0) & 3) << 4) | ((0) & 0xf))) & 0x3f) << 19) | (((1) & 0x1) << 13)), "add", "1id"},
 {((((2) & 0x3) << 30) | (((((((1) & 3) << 4) | ((0) & 0xf))) & 0x3f) << 19) | (((0) & 0x1) << 13)), "addcc", "12d"},
 {((((2) & 0x3) << 30) | (((((((1) & 3) << 4) | ((0) & 0xf))) & 0x3f) << 19) | (((1) & 0x1) << 13)), "addcc", "1id"},
 {((((2) & 0x3) << 30) | (((((((2) & 3) << 4) | ((0) & 0xf))) & 0x3f) << 19) | (((0) & 0x1) << 13)), "taddcc", "12d"},
 {((((2) & 0x3) << 30) | (((((((2) & 3) << 4) | ((0) & 0xf))) & 0x3f) << 19) | (((1) & 0x1) << 13)), "taddcc", "1id"},
 {(((((2) & 0x3) << 30) | (((0x30) & 0x3f) << 19) | (((1) & 0x1) << 13)) | (((0xf) & 0x1f) << 25)), "sir", "i"},
 {((((2) & 0x3) << 30) | (((((((3) & 3) << 4) | ((0) & 0xf))) & 0x3f) << 19) | (((0) & 0x1) << 13)), "wr", "12H"},
 {((((2) & 0x3) << 30) | (((((((3) & 3) << 4) | ((0) & 0xf))) & 0x3f) << 19) | (((1) & 0x1) << 13)), "wr", "1iH"},
 {((((2) & 0x3) << 30) | (((((((0) & 3) << 4) | ((1) & 0xf))) & 0x3f) << 19) | (((0) & 0x1) << 13)), "and", "12d"},
 {((((2) & 0x3) << 30) | (((((((0) & 3) << 4) | ((1) & 0xf))) & 0x3f) << 19) | (((1) & 0x1) << 13)), "and", "1id"},
 {((((2) & 0x3) << 30) | (((((((1) & 3) << 4) | ((1) & 0xf))) & 0x3f) << 19) | (((0) & 0x1) << 13)), "andcc", "12d"},
 {((((2) & 0x3) << 30) | (((((((1) & 3) << 4) | ((1) & 0xf))) & 0x3f) << 19) | (((1) & 0x1) << 13)), "andcc", "1id"},
 {((((2) & 0x3) << 30) | (((((((2) & 3) << 4) | ((1) & 0xf))) & 0x3f) << 19) | (((0) & 0x1) << 13)), "tsubcc", "12d"},
 {((((2) & 0x3) << 30) | (((((((2) & 3) << 4) | ((1) & 0xf))) & 0x3f) << 19) | (((1) & 0x1) << 13)), "tsubcc", "1id"},
 {((((2) & 0x3) << 30) | (((((((3) & 3) << 4) | ((1) & 0xf))) & 0x3f) << 19) | (((0) & 0x1) << 13)), "saved", ""},
 {((((2) & 0x3) << 30) | (((((((3) & 3) << 4) | ((1) & 0xf))) & 0x3f) << 19) | (((0) & 0x1) << 13))|(((1) & 0x1f) << 25), "restored", ""},
 {((((2) & 0x3) << 30) | (((((((0) & 3) << 4) | ((2) & 0xf))) & 0x3f) << 19) | (((0) & 0x1) << 13)), "or", "12d"},
 {((((2) & 0x3) << 30) | (((((((0) & 3) << 4) | ((2) & 0xf))) & 0x3f) << 19) | (((1) & 0x1) << 13)), "or", "1id"},
 {((((2) & 0x3) << 30) | (((((((1) & 3) << 4) | ((2) & 0xf))) & 0x3f) << 19) | (((0) & 0x1) << 13)), "orcc", "12d"},
 {((((2) & 0x3) << 30) | (((((((1) & 3) << 4) | ((2) & 0xf))) & 0x3f) << 19) | (((1) & 0x1) << 13)), "orcc", "1id"},
 {((((2) & 0x3) << 30) | (((((((2) & 3) << 4) | ((2) & 0xf))) & 0x3f) << 19) | (((0) & 0x1) << 13)), "taddcctv", "12d"},
 {((((2) & 0x3) << 30) | (((((((2) & 3) << 4) | ((2) & 0xf))) & 0x3f) << 19) | (((1) & 0x1) << 13)), "taddcctv", "1id"},
 {((((2) & 0x3) << 30) | (((((((3) & 3) << 4) | ((2) & 0xf))) & 0x3f) << 19) | (((0) & 0x1) << 13)), "wrpr", "12G"},
 {((((2) & 0x3) << 30) | (((((((3) & 3) << 4) | ((2) & 0xf))) & 0x3f) << 19) | (((1) & 0x1) << 13)), "wrpr", "1iG"},
 {((((2) & 0x3) << 30) | (((((((0) & 3) << 4) | ((3) & 0xf))) & 0x3f) << 19) | (((0) & 0x1) << 13)), "xor", "12d"},
 {((((2) & 0x3) << 30) | (((((((0) & 3) << 4) | ((3) & 0xf))) & 0x3f) << 19) | (((1) & 0x1) << 13)), "xor", "1id"},
 {((((2) & 0x3) << 30) | (((((((1) & 3) << 4) | ((3) & 0xf))) & 0x3f) << 19) | (((0) & 0x1) << 13)), "xorcc", "12d"},
 {((((2) & 0x3) << 30) | (((((((1) & 3) << 4) | ((3) & 0xf))) & 0x3f) << 19) | (((1) & 0x1) << 13)), "xorcc", "1id"},
 {((((2) & 0x3) << 30) | (((((((2) & 3) << 4) | ((3) & 0xf))) & 0x3f) << 19) | (((0) & 0x1) << 13)), "tsubcctv", "12d"},
 {((((2) & 0x3) << 30) | (((((((2) & 3) << 4) | ((3) & 0xf))) & 0x3f) << 19) | (((1) & 0x1) << 13)), "tsubcctv", "1id"},
 {((((2) & 0x3) << 30) | (((((((3) & 3) << 4) | ((3) & 0xf))) & 0x3f) << 19) | (((0) & 0x1) << 13)), "UNDEFINED", ""},
 {((((2) & 0x3) << 30) | (((((((0) & 3) << 4) | ((4) & 0xf))) & 0x3f) << 19) | (((0) & 0x1) << 13)), "sub", "12d"},
 {((((2) & 0x3) << 30) | (((((((0) & 3) << 4) | ((4) & 0xf))) & 0x3f) << 19) | (((1) & 0x1) << 13)), "sub", "1id"},
 {((((2) & 0x3) << 30) | (((((((1) & 3) << 4) | ((4) & 0xf))) & 0x3f) << 19) | (((0) & 0x1) << 13)), "subcc", "12d"},
 {((((2) & 0x3) << 30) | (((((((1) & 3) << 4) | ((4) & 0xf))) & 0x3f) << 19) | (((1) & 0x1) << 13)), "subcc", "1id"},
 {((((2) & 0x3) << 30) | (((((((2) & 3) << 4) | ((4) & 0xf))) & 0x3f) << 19) | (((0) & 0x1) << 13)), "mulscc", "12d"},
 {((((2) & 0x3) << 30) | (((((((2) & 3) << 4) | ((4) & 0xf))) & 0x3f) << 19) | (((1) & 0x1) << 13)), "mulscc", "1id"},
 {((((2) & 0x3) << 30) | (((((((3) & 3) << 4) | ((4) & 0xf))) & 0x3f) << 19) | (((1) & 0x1) << 13)), "FPop1", ""},
 {((((2) & 0x3) << 30) | (((((((0) & 3) << 4) | ((5) & 0xf))) & 0x3f) << 19) | (((0) & 0x1) << 13)), "andn", "12d"},
 {((((2) & 0x3) << 30) | (((((((0) & 3) << 4) | ((5) & 0xf))) & 0x3f) << 19) | (((1) & 0x1) << 13)), "andn", "1id"},
 {((((2) & 0x3) << 30) | (((((((1) & 3) << 4) | ((5) & 0xf))) & 0x3f) << 19) | (((0) & 0x1) << 13)), "andncc", "12d"},
 {((((2) & 0x3) << 30) | (((((((1) & 3) << 4) | ((5) & 0xf))) & 0x3f) << 19) | (((1) & 0x1) << 13)), "andncc", "1id"},
 {((((2) & 0x3) << 30) | (((((((2) & 3) << 4) | ((5) & 0xf))) & 0x3f) << 19) | (((0) & 0x1) << 13)), "sll", "12d"},
 {((((2) & 0x3) << 30) | (((((((2) & 3) << 4) | ((5) & 0xf))) & 0x3f) << 19) | (((1) & 0x1) << 13)), "sll", "1Dd"},
 {((((2) & 0x3) << 30) | (((((((2) & 3) << 4) | ((5) & 0xf))) & 0x3f) << 19) | (((0) & 0x1) << 13))|(((1) & 0x1) << 12), "sllx", "12d"},
 {((((2) & 0x3) << 30) | (((((((2) & 3) << 4) | ((5) & 0xf))) & 0x3f) << 19) | (((1) & 0x1) << 13))|(((1) & 0x1) << 12), "sllx", "1Ed"},
 {((((2) & 0x3) << 30) | (((((((3) & 3) << 4) | ((5) & 0xf))) & 0x3f) << 19) | (((1) & 0x1) << 13)), "FPop2", ""},
 {((((2) & 0x3) << 30) | (((((((0) & 3) << 4) | ((6) & 0xf))) & 0x3f) << 19) | (((0) & 0x1) << 13)), "orn", "12d"},
 {((((2) & 0x3) << 30) | (((((((0) & 3) << 4) | ((6) & 0xf))) & 0x3f) << 19) | (((1) & 0x1) << 13)), "orn", "1id"},
 {((((2) & 0x3) << 30) | (((((((1) & 3) << 4) | ((6) & 0xf))) & 0x3f) << 19) | (((0) & 0x1) << 13)), "orncc", "12d"},
 {((((2) & 0x3) << 30) | (((((((1) & 3) << 4) | ((6) & 0xf))) & 0x3f) << 19) | (((1) & 0x1) << 13)), "orncc", "1id"},
 {((((2) & 0x3) << 30) | (((((((2) & 3) << 4) | ((6) & 0xf))) & 0x3f) << 19) | (((0) & 0x1) << 13)), "srl", "12d"},
 {((((2) & 0x3) << 30) | (((((((2) & 3) << 4) | ((6) & 0xf))) & 0x3f) << 19) | (((1) & 0x1) << 13)), "srl", "1Dd"},
 {((((2) & 0x3) << 30) | (((((((2) & 3) << 4) | ((6) & 0xf))) & 0x3f) << 19) | (((0) & 0x1) << 13))|(((1) & 0x1) << 12), "srlx", "12d"},
 {((((2) & 0x3) << 30) | (((((((2) & 3) << 4) | ((6) & 0xf))) & 0x3f) << 19) | (((1) & 0x1) << 13))|(((1) & 0x1) << 12), "srlx", "1Ed"},
 {((((2) & 0x3) << 30) | (((((((3) & 3) << 4) | ((6) & 0xf))) & 0x3f) << 19) | (((1) & 0x1) << 13)), "impdep1", ""},
 {((((2) & 0x3) << 30) | (((((((0) & 3) << 4) | ((7) & 0xf))) & 0x3f) << 19) | (((0) & 0x1) << 13)), "xorn", "12d"},
 {((((2) & 0x3) << 30) | (((((((0) & 3) << 4) | ((7) & 0xf))) & 0x3f) << 19) | (((1) & 0x1) << 13)), "xorn", "1id"},
 {((((2) & 0x3) << 30) | (((((((1) & 3) << 4) | ((7) & 0xf))) & 0x3f) << 19) | (((0) & 0x1) << 13)), "xorncc", "12d"},
 {((((2) & 0x3) << 30) | (((((((1) & 3) << 4) | ((7) & 0xf))) & 0x3f) << 19) | (((1) & 0x1) << 13)), "xorncc", "1id"},
 {((((2) & 0x3) << 30) | (((((((2) & 3) << 4) | ((7) & 0xf))) & 0x3f) << 19) | (((0) & 0x1) << 13)), "sra", "12d"},
 {((((2) & 0x3) << 30) | (((((((2) & 3) << 4) | ((7) & 0xf))) & 0x3f) << 19) | (((1) & 0x1) << 13)), "sra", "1Dd"},
 {((((2) & 0x3) << 30) | (((((((2) & 3) << 4) | ((7) & 0xf))) & 0x3f) << 19) | (((0) & 0x1) << 13))|(((1) & 0x1) << 12), "srax", "12d"},
 {((((2) & 0x3) << 30) | (((((((2) & 3) << 4) | ((7) & 0xf))) & 0x3f) << 19) | (((1) & 0x1) << 13))|(((1) & 0x1) << 12), "srax", "1Ed"},
 {((((2) & 0x3) << 30) | (((((((3) & 3) << 4) | ((7) & 0xf))) & 0x3f) << 19) | (((1) & 0x1) << 13)), "impdep2", ""},
 {((((2) & 0x3) << 30) | (((((((0) & 3) << 4) | ((8) & 0xf))) & 0x3f) << 19) | (((0) & 0x1) << 13)), "addc", "12d"},
 {((((2) & 0x3) << 30) | (((((((0) & 3) << 4) | ((8) & 0xf))) & 0x3f) << 19) | (((1) & 0x1) << 13)), "addc", "1id"},
 {((((2) & 0x3) << 30) | (((((((1) & 3) << 4) | ((8) & 0xf))) & 0x3f) << 19) | (((0) & 0x1) << 13)), "addccc", "12d"},
 {((((2) & 0x3) << 30) | (((((((1) & 3) << 4) | ((8) & 0xf))) & 0x3f) << 19) | (((1) & 0x1) << 13)), "addccc", "1id"},
 {(((((2) & 0x3) << 30) | (((0x28) & 0x3f) << 19) | (((1) & 0x1) << 13)) | (((15) & 0x1f) << 14)), "membar", "9"},
 {(((((2) & 0x3) << 30) | (((0x28) & 0x3f) << 19) | (((0) & 0x1) << 13)) | (((15) & 0x1f) << 14)), "stbar", ""},
 {((((2) & 0x3) << 30) | (((((((2) & 3) << 4) | ((8) & 0xf))) & 0x3f) << 19) | (((0) & 0x1) << 13)), "rd", "Bd"},
 {((((2) & 0x3) << 30) | (((((((3) & 3) << 4) | ((8) & 0xf))) & 0x3f) << 19) | (((0) & 0x1) << 13)), "jmpl", "pd"},
 {((((2) & 0x3) << 30) | (((((((3) & 3) << 4) | ((8) & 0xf))) & 0x3f) << 19) | (((1) & 0x1) << 13)), "jmpl", "qd"},
 {((((2) & 0x3) << 30) | (((((((0) & 3) << 4) | ((9) & 0xf))) & 0x3f) << 19) | (((0) & 0x1) << 13)), "mulx", "12d"},
 {((((2) & 0x3) << 30) | (((((((0) & 3) << 4) | ((9) & 0xf))) & 0x3f) << 19) | (((1) & 0x1) << 13)), "mulx", "1id"},
 {((((2) & 0x3) << 30) | (((((((1) & 3) << 4) | ((9) & 0xf))) & 0x3f) << 19) | (((0) & 0x1) << 13)), "UNDEFINED", ""},
 {((((2) & 0x3) << 30) | (((((((2) & 3) << 4) | ((9) & 0xf))) & 0x3f) << 19) | (((0) & 0x1) << 13)), "UNDEFINED", ""},
 {((((2) & 0x3) << 30) | (((((((3) & 3) << 4) | ((9) & 0xf))) & 0x3f) << 19) | (((0) & 0x1) << 13)), "return", "p"},
 {((((2) & 0x3) << 30) | (((((((3) & 3) << 4) | ((9) & 0xf))) & 0x3f) << 19) | (((1) & 0x1) << 13)), "return", "q"},
 {((((2) & 0x3) << 30) | (((((((0) & 3) << 4) | ((10) & 0xf))) & 0x3f) << 19) | (((0) & 0x1) << 13)), "umul", "12d"},
 {((((2) & 0x3) << 30) | (((((((0) & 3) << 4) | ((10) & 0xf))) & 0x3f) << 19) | (((1) & 0x1) << 13)), "umul", "1id"},
 {((((2) & 0x3) << 30) | (((((((1) & 3) << 4) | ((10) & 0xf))) & 0x3f) << 19) | (((0) & 0x1) << 13)), "umulcc", "12d"},
 {((((2) & 0x3) << 30) | (((((((1) & 3) << 4) | ((10) & 0xf))) & 0x3f) << 19) | (((1) & 0x1) << 13)), "umulcc", "1id"},
 {((((2) & 0x3) << 30) | (((((((2) & 3) << 4) | ((10) & 0xf))) & 0x3f) << 19) | (((0) & 0x1) << 13)), "rdpr", "Ad"},
  {(((((2) & 0x3) << 30) | (((((((3) & 3) << 4) | ((10) & 0xf))) & 0x3f) << 19) | (((0) & 0x1) << 13)) | (((0x8) & 0xf) << 25)), "ta", "12F"},
  {(((((2) & 0x3) << 30) | (((((((3) & 3) << 4) | ((10) & 0xf))) & 0x3f) << 19) | (((1) & 0x1) << 13)) | (((0x8) & 0xf) << 25)), "ta", "0F"},
  {(((((2) & 0x3) << 30) | (((((((3) & 3) << 4) | ((10) & 0xf))) & 0x3f) << 19) | (((0) & 0x1) << 13)) | (((0x0) & 0xf) << 25)), "tn", "12F"},
  {(((((2) & 0x3) << 30) | (((((((3) & 3) << 4) | ((10) & 0xf))) & 0x3f) << 19) | (((1) & 0x1) << 13)) | (((0x0) & 0xf) << 25)), "tn", "0F"},
  {(((((2) & 0x3) << 30) | (((((((3) & 3) << 4) | ((10) & 0xf))) & 0x3f) << 19) | (((0) & 0x1) << 13)) | (((0x9) & 0xf) << 25)), "tne", "12F"},
  {(((((2) & 0x3) << 30) | (((((((3) & 3) << 4) | ((10) & 0xf))) & 0x3f) << 19) | (((1) & 0x1) << 13)) | (((0x9) & 0xf) << 25)), "tne", "0F"},
  {(((((2) & 0x3) << 30) | (((((((3) & 3) << 4) | ((10) & 0xf))) & 0x3f) << 19) | (((0) & 0x1) << 13)) | (((0x1) & 0xf) << 25)), "te", "12F"},
  {(((((2) & 0x3) << 30) | (((((((3) & 3) << 4) | ((10) & 0xf))) & 0x3f) << 19) | (((1) & 0x1) << 13)) | (((0x1) & 0xf) << 25)), "te", "0F"},
  {(((((2) & 0x3) << 30) | (((((((3) & 3) << 4) | ((10) & 0xf))) & 0x3f) << 19) | (((0) & 0x1) << 13)) | (((0xa) & 0xf) << 25)), "tg", "12F"},
  {(((((2) & 0x3) << 30) | (((((((3) & 3) << 4) | ((10) & 0xf))) & 0x3f) << 19) | (((1) & 0x1) << 13)) | (((0xa) & 0xf) << 25)), "tg", "0F"},
  {(((((2) & 0x3) << 30) | (((((((3) & 3) << 4) | ((10) & 0xf))) & 0x3f) << 19) | (((0) & 0x1) << 13)) | (((0x2) & 0xf) << 25)), "tle", "12F"},
  {(((((2) & 0x3) << 30) | (((((((3) & 3) << 4) | ((10) & 0xf))) & 0x3f) << 19) | (((1) & 0x1) << 13)) | (((0x2) & 0xf) << 25)), "tle", "0F"},
  {(((((2) & 0x3) << 30) | (((((((3) & 3) << 4) | ((10) & 0xf))) & 0x3f) << 19) | (((0) & 0x1) << 13)) | (((0xb) & 0xf) << 25)), "tge", "12F"},
  {(((((2) & 0x3) << 30) | (((((((3) & 3) << 4) | ((10) & 0xf))) & 0x3f) << 19) | (((1) & 0x1) << 13)) | (((0xb) & 0xf) << 25)), "tge", "0F"},
  {(((((2) & 0x3) << 30) | (((((((3) & 3) << 4) | ((10) & 0xf))) & 0x3f) << 19) | (((0) & 0x1) << 13)) | (((0x3) & 0xf) << 25)), "tl", "12F"},
  {(((((2) & 0x3) << 30) | (((((((3) & 3) << 4) | ((10) & 0xf))) & 0x3f) << 19) | (((1) & 0x1) << 13)) | (((0x3) & 0xf) << 25)), "tl", "0F"},
  {(((((2) & 0x3) << 30) | (((((((3) & 3) << 4) | ((10) & 0xf))) & 0x3f) << 19) | (((0) & 0x1) << 13)) | (((0xc) & 0xf) << 25)), "tgu", "12F"},
  {(((((2) & 0x3) << 30) | (((((((3) & 3) << 4) | ((10) & 0xf))) & 0x3f) << 19) | (((1) & 0x1) << 13)) | (((0xc) & 0xf) << 25)), "tgu", "0F"},
  {(((((2) & 0x3) << 30) | (((((((3) & 3) << 4) | ((10) & 0xf))) & 0x3f) << 19) | (((0) & 0x1) << 13)) | (((0x4) & 0xf) << 25)), "tleu", "12F"},
  {(((((2) & 0x3) << 30) | (((((((3) & 3) << 4) | ((10) & 0xf))) & 0x3f) << 19) | (((1) & 0x1) << 13)) | (((0x4) & 0xf) << 25)), "tleu", "0F"},
  {(((((2) & 0x3) << 30) | (((((((3) & 3) << 4) | ((10) & 0xf))) & 0x3f) << 19) | (((0) & 0x1) << 13)) | (((0xd) & 0xf) << 25)), "tcc", "12F"},
  {(((((2) & 0x3) << 30) | (((((((3) & 3) << 4) | ((10) & 0xf))) & 0x3f) << 19) | (((1) & 0x1) << 13)) | (((0xd) & 0xf) << 25)), "tcc", "0F"},
  {(((((2) & 0x3) << 30) | (((((((3) & 3) << 4) | ((10) & 0xf))) & 0x3f) << 19) | (((0) & 0x1) << 13)) | (((0x5) & 0xf) << 25)), "tcs", "12F"},
  {(((((2) & 0x3) << 30) | (((((((3) & 3) << 4) | ((10) & 0xf))) & 0x3f) << 19) | (((1) & 0x1) << 13)) | (((0x5) & 0xf) << 25)), "tcs", "0F"},
  {(((((2) & 0x3) << 30) | (((((((3) & 3) << 4) | ((10) & 0xf))) & 0x3f) << 19) | (((0) & 0x1) << 13)) | (((0xe) & 0xf) << 25)), "tpos", "12F"},
  {(((((2) & 0x3) << 30) | (((((((3) & 3) << 4) | ((10) & 0xf))) & 0x3f) << 19) | (((1) & 0x1) << 13)) | (((0xe) & 0xf) << 25)), "tpos", "0F"},
  {(((((2) & 0x3) << 30) | (((((((3) & 3) << 4) | ((10) & 0xf))) & 0x3f) << 19) | (((0) & 0x1) << 13)) | (((0x6) & 0xf) << 25)), "tneg", "12F"},
  {(((((2) & 0x3) << 30) | (((((((3) & 3) << 4) | ((10) & 0xf))) & 0x3f) << 19) | (((1) & 0x1) << 13)) | (((0x6) & 0xf) << 25)), "tneg", "0F"},
  {(((((2) & 0x3) << 30) | (((((((3) & 3) << 4) | ((10) & 0xf))) & 0x3f) << 19) | (((0) & 0x1) << 13)) | (((0xf) & 0xf) << 25)), "tvc", "12F"},
  {(((((2) & 0x3) << 30) | (((((((3) & 3) << 4) | ((10) & 0xf))) & 0x3f) << 19) | (((1) & 0x1) << 13)) | (((0xf) & 0xf) << 25)), "tvc", "0F"},
  {(((((2) & 0x3) << 30) | (((((((3) & 3) << 4) | ((10) & 0xf))) & 0x3f) << 19) | (((0) & 0x1) << 13)) | (((0x7) & 0xf) << 25)), "tvs", "12F"},
  {(((((2) & 0x3) << 30) | (((((((3) & 3) << 4) | ((10) & 0xf))) & 0x3f) << 19) | (((1) & 0x1) << 13)) | (((0x7) & 0xf) << 25)), "tvs", "0F"},
 {((((2) & 0x3) << 30) | (((((((0) & 3) << 4) | ((11) & 0xf))) & 0x3f) << 19) | (((0) & 0x1) << 13)), "smul", "12d"},
 {((((2) & 0x3) << 30) | (((((((0) & 3) << 4) | ((11) & 0xf))) & 0x3f) << 19) | (((1) & 0x1) << 13)), "smul", "1id"},
 {((((2) & 0x3) << 30) | (((((((1) & 3) << 4) | ((11) & 0xf))) & 0x3f) << 19) | (((0) & 0x1) << 13)), "smulcc", "12d"},
 {((((2) & 0x3) << 30) | (((((((1) & 3) << 4) | ((11) & 0xf))) & 0x3f) << 19) | (((1) & 0x1) << 13)), "smulcc", "1id"},
 {((((2) & 0x3) << 30) | (((((((2) & 3) << 4) | ((11) & 0xf))) & 0x3f) << 19) | (((0) & 0x1) << 13)), "flushw", ""},
 {((((2) & 0x3) << 30) | (((((((3) & 3) << 4) | ((11) & 0xf))) & 0x3f) << 19) | (((0) & 0x1) << 13)), "flush", "p"},
 {((((2) & 0x3) << 30) | (((((((3) & 3) << 4) | ((11) & 0xf))) & 0x3f) << 19) | (((1) & 0x1) << 13)), "flush", "q"},
 {((((2) & 0x3) << 30) | (((((((0) & 3) << 4) | ((12) & 0xf))) & 0x3f) << 19) | (((0) & 0x1) << 13)), "subc", "12d"},
 {((((2) & 0x3) << 30) | (((((((0) & 3) << 4) | ((12) & 0xf))) & 0x3f) << 19) | (((1) & 0x1) << 13)), "subc", "1id"},
 {((((2) & 0x3) << 30) | (((((((1) & 3) << 4) | ((12) & 0xf))) & 0x3f) << 19) | (((0) & 0x1) << 13)), "subccc", "12d"},
 {((((2) & 0x3) << 30) | (((((((1) & 3) << 4) | ((12) & 0xf))) & 0x3f) << 19) | (((1) & 0x1) << 13)), "subccc", "1id"},
  {(((((2) & 0x3) << 30) | (((((((2) & 3) << 4) | ((12) & 0xf))) & 0x3f) << 19) | (((1) & 0x1) << 13)) | (((((1)<<4) & 1)|((8) & 0xf)) << 14)), "mova", "0jd"},
  {(((((2) & 0x3) << 30) | (((((((2) & 3) << 4) | ((12) & 0xf))) & 0x3f) << 19) | (((0) & 0x1) << 13)) | (((((1)<<4) & 1)|((8) & 0xf)) << 14)), "mova", "02d"},
  {(((((2) & 0x3) << 30) | (((((((2) & 3) << 4) | ((12) & 0xf))) & 0x3f) << 19) | (((1) & 0x1) << 13)) | (((((1)<<4) & 1)|((0) & 0xf)) << 14)), "movn", "0jd"},
  {(((((2) & 0x3) << 30) | (((((((2) & 3) << 4) | ((12) & 0xf))) & 0x3f) << 19) | (((0) & 0x1) << 13)) | (((((1)<<4) & 1)|((0) & 0xf)) << 14)), "movn", "02d"},
  {(((((2) & 0x3) << 30) | (((((((2) & 3) << 4) | ((12) & 0xf))) & 0x3f) << 19) | (((1) & 0x1) << 13)) | (((((1)<<4) & 1)|((9) & 0xf)) << 14)), "movne", "0jd"},
  {(((((2) & 0x3) << 30) | (((((((2) & 3) << 4) | ((12) & 0xf))) & 0x3f) << 19) | (((0) & 0x1) << 13)) | (((((1)<<4) & 1)|((9) & 0xf)) << 14)), "movne", "02d"},
  {(((((2) & 0x3) << 30) | (((((((2) & 3) << 4) | ((12) & 0xf))) & 0x3f) << 19) | (((1) & 0x1) << 13)) | (((((1)<<4) & 1)|((1) & 0xf)) << 14)), "move", "0jd"},
  {(((((2) & 0x3) << 30) | (((((((2) & 3) << 4) | ((12) & 0xf))) & 0x3f) << 19) | (((0) & 0x1) << 13)) | (((((1)<<4) & 1)|((1) & 0xf)) << 14)), "move", "02d"},
  {(((((2) & 0x3) << 30) | (((((((2) & 3) << 4) | ((12) & 0xf))) & 0x3f) << 19) | (((1) & 0x1) << 13)) | (((((1)<<4) & 1)|((10) & 0xf)) << 14)), "movg", "0jd"},
  {(((((2) & 0x3) << 30) | (((((((2) & 3) << 4) | ((12) & 0xf))) & 0x3f) << 19) | (((0) & 0x1) << 13)) | (((((1)<<4) & 1)|((10) & 0xf)) << 14)), "movg", "02d"},
  {(((((2) & 0x3) << 30) | (((((((2) & 3) << 4) | ((12) & 0xf))) & 0x3f) << 19) | (((1) & 0x1) << 13)) | (((((1)<<4) & 1)|((2) & 0xf)) << 14)), "movle", "0jd"},
  {(((((2) & 0x3) << 30) | (((((((2) & 3) << 4) | ((12) & 0xf))) & 0x3f) << 19) | (((0) & 0x1) << 13)) | (((((1)<<4) & 1)|((2) & 0xf)) << 14)), "movle", "02d"},
  {(((((2) & 0x3) << 30) | (((((((2) & 3) << 4) | ((12) & 0xf))) & 0x3f) << 19) | (((1) & 0x1) << 13)) | (((((1)<<4) & 1)|((11) & 0xf)) << 14)), "movge", "0jd"},
  {(((((2) & 0x3) << 30) | (((((((2) & 3) << 4) | ((12) & 0xf))) & 0x3f) << 19) | (((0) & 0x1) << 13)) | (((((1)<<4) & 1)|((11) & 0xf)) << 14)), "movge", "02d"},
  {(((((2) & 0x3) << 30) | (((((((2) & 3) << 4) | ((12) & 0xf))) & 0x3f) << 19) | (((1) & 0x1) << 13)) | (((((1)<<4) & 1)|((3) & 0xf)) << 14)), "movl", "0jd"},
  {(((((2) & 0x3) << 30) | (((((((2) & 3) << 4) | ((12) & 0xf))) & 0x3f) << 19) | (((0) & 0x1) << 13)) | (((((1)<<4) & 1)|((3) & 0xf)) << 14)), "movl", "02d"},
  {(((((2) & 0x3) << 30) | (((((((2) & 3) << 4) | ((12) & 0xf))) & 0x3f) << 19) | (((1) & 0x1) << 13)) | (((((1)<<4) & 1)|((12) & 0xf)) << 14)), "movgu", "0jd"},
  {(((((2) & 0x3) << 30) | (((((((2) & 3) << 4) | ((12) & 0xf))) & 0x3f) << 19) | (((0) & 0x1) << 13)) | (((((1)<<4) & 1)|((12) & 0xf)) << 14)), "movgu", "02d"},
  {(((((2) & 0x3) << 30) | (((((((2) & 3) << 4) | ((12) & 0xf))) & 0x3f) << 19) | (((1) & 0x1) << 13)) | (((((1)<<4) & 1)|((4) & 0xf)) << 14)), "movleu", "0jd"},
  {(((((2) & 0x3) << 30) | (((((((2) & 3) << 4) | ((12) & 0xf))) & 0x3f) << 19) | (((0) & 0x1) << 13)) | (((((1)<<4) & 1)|((4) & 0xf)) << 14)), "movleu", "02d"},
  {(((((2) & 0x3) << 30) | (((((((2) & 3) << 4) | ((12) & 0xf))) & 0x3f) << 19) | (((1) & 0x1) << 13)) | (((((1)<<4) & 1)|((13) & 0xf)) << 14)), "movcc", "0jd"},
  {(((((2) & 0x3) << 30) | (((((((2) & 3) << 4) | ((12) & 0xf))) & 0x3f) << 19) | (((0) & 0x1) << 13)) | (((((1)<<4) & 1)|((13) & 0xf)) << 14)), "movcc", "02d"},
  {(((((2) & 0x3) << 30) | (((((((2) & 3) << 4) | ((12) & 0xf))) & 0x3f) << 19) | (((1) & 0x1) << 13)) | (((((1)<<4) & 1)|((5) & 0xf)) << 14)), "movcs", "0jd"},
  {(((((2) & 0x3) << 30) | (((((((2) & 3) << 4) | ((12) & 0xf))) & 0x3f) << 19) | (((0) & 0x1) << 13)) | (((((1)<<4) & 1)|((5) & 0xf)) << 14)), "movcs", "02d"},
  {(((((2) & 0x3) << 30) | (((((((2) & 3) << 4) | ((12) & 0xf))) & 0x3f) << 19) | (((1) & 0x1) << 13)) | (((((1)<<4) & 1)|((14) & 0xf)) << 14)), "movpos", "0jd"},
  {(((((2) & 0x3) << 30) | (((((((2) & 3) << 4) | ((12) & 0xf))) & 0x3f) << 19) | (((0) & 0x1) << 13)) | (((((1)<<4) & 1)|((14) & 0xf)) << 14)), "movpos", "02d"},
  {(((((2) & 0x3) << 30) | (((((((2) & 3) << 4) | ((12) & 0xf))) & 0x3f) << 19) | (((1) & 0x1) << 13)) | (((((1)<<4) & 1)|((6) & 0xf)) << 14)), "movneg", "0jd"},
  {(((((2) & 0x3) << 30) | (((((((2) & 3) << 4) | ((12) & 0xf))) & 0x3f) << 19) | (((0) & 0x1) << 13)) | (((((1)<<4) & 1)|((6) & 0xf)) << 14)), "movneg", "02d"},
  {(((((2) & 0x3) << 30) | (((((((2) & 3) << 4) | ((12) & 0xf))) & 0x3f) << 19) | (((1) & 0x1) << 13)) | (((((1)<<4) & 1)|((15) & 0xf)) << 14)), "movvc", "0jd"},
  {(((((2) & 0x3) << 30) | (((((((2) & 3) << 4) | ((12) & 0xf))) & 0x3f) << 19) | (((0) & 0x1) << 13)) | (((((1)<<4) & 1)|((15) & 0xf)) << 14)), "movvc", "02d"},
  {(((((2) & 0x3) << 30) | (((((((2) & 3) << 4) | ((12) & 0xf))) & 0x3f) << 19) | (((1) & 0x1) << 13)) | (((((1)<<4) & 1)|((7) & 0xf)) << 14)), "movvs", "0jd"},
  {(((((2) & 0x3) << 30) | (((((((2) & 3) << 4) | ((12) & 0xf))) & 0x3f) << 19) | (((0) & 0x1) << 13)) | (((((1)<<4) & 1)|((7) & 0xf)) << 14)), "movvs", "02d"},
  {(((((2) & 0x3) << 30) | (((((((2) & 3) << 4) | ((12) & 0xf))) & 0x3f) << 19) | (((1) & 0x1) << 13)) | (((((0)<<4) & 1)|((8) & 0xf)) << 14)), "mova", "ojd"},
  {(((((2) & 0x3) << 30) | (((((((2) & 3) << 4) | ((12) & 0xf))) & 0x3f) << 19) | (((0) & 0x1) << 13)) | (((((0)<<4) & 1)|((8) & 0xf)) << 14)), "mova", "o2d"},
  {(((((2) & 0x3) << 30) | (((((((2) & 3) << 4) | ((12) & 0xf))) & 0x3f) << 19) | (((1) & 0x1) << 13)) | (((((0)<<4) & 1)|((0) & 0xf)) << 14)), "movn", "ojd"},
  {(((((2) & 0x3) << 30) | (((((((2) & 3) << 4) | ((12) & 0xf))) & 0x3f) << 19) | (((0) & 0x1) << 13)) | (((((0)<<4) & 1)|((0) & 0xf)) << 14)), "movn", "o2d"},
  {(((((2) & 0x3) << 30) | (((((((2) & 3) << 4) | ((12) & 0xf))) & 0x3f) << 19) | (((1) & 0x1) << 13)) | (((((0)<<4) & 1)|((7) & 0xf)) << 14)), "movu", "ojd"},
  {(((((2) & 0x3) << 30) | (((((((2) & 3) << 4) | ((12) & 0xf))) & 0x3f) << 19) | (((0) & 0x1) << 13)) | (((((0)<<4) & 1)|((7) & 0xf)) << 14)), "movu", "o2d"},
  {(((((2) & 0x3) << 30) | (((((((2) & 3) << 4) | ((12) & 0xf))) & 0x3f) << 19) | (((1) & 0x1) << 13)) | (((((0)<<4) & 1)|((6) & 0xf)) << 14)), "movg", "ojd"},
  {(((((2) & 0x3) << 30) | (((((((2) & 3) << 4) | ((12) & 0xf))) & 0x3f) << 19) | (((0) & 0x1) << 13)) | (((((0)<<4) & 1)|((6) & 0xf)) << 14)), "movg", "o2d"},
  {(((((2) & 0x3) << 30) | (((((((2) & 3) << 4) | ((12) & 0xf))) & 0x3f) << 19) | (((1) & 0x1) << 13)) | (((((0)<<4) & 1)|((5) & 0xf)) << 14)), "movug", "ojd"},
  {(((((2) & 0x3) << 30) | (((((((2) & 3) << 4) | ((12) & 0xf))) & 0x3f) << 19) | (((0) & 0x1) << 13)) | (((((0)<<4) & 1)|((5) & 0xf)) << 14)), "movug", "o2d"},
  {(((((2) & 0x3) << 30) | (((((((2) & 3) << 4) | ((12) & 0xf))) & 0x3f) << 19) | (((1) & 0x1) << 13)) | (((((0)<<4) & 1)|((4) & 0xf)) << 14)), "movl", "ojd"},
  {(((((2) & 0x3) << 30) | (((((((2) & 3) << 4) | ((12) & 0xf))) & 0x3f) << 19) | (((0) & 0x1) << 13)) | (((((0)<<4) & 1)|((4) & 0xf)) << 14)), "movl", "o2d"},
  {(((((2) & 0x3) << 30) | (((((((2) & 3) << 4) | ((12) & 0xf))) & 0x3f) << 19) | (((1) & 0x1) << 13)) | (((((0)<<4) & 1)|((3) & 0xf)) << 14)), "movul", "ojd"},
  {(((((2) & 0x3) << 30) | (((((((2) & 3) << 4) | ((12) & 0xf))) & 0x3f) << 19) | (((0) & 0x1) << 13)) | (((((0)<<4) & 1)|((3) & 0xf)) << 14)), "movul", "o2d"},
  {(((((2) & 0x3) << 30) | (((((((2) & 3) << 4) | ((12) & 0xf))) & 0x3f) << 19) | (((1) & 0x1) << 13)) | (((((0)<<4) & 1)|((2) & 0xf)) << 14)), "movlg", "ojd"},
  {(((((2) & 0x3) << 30) | (((((((2) & 3) << 4) | ((12) & 0xf))) & 0x3f) << 19) | (((0) & 0x1) << 13)) | (((((0)<<4) & 1)|((2) & 0xf)) << 14)), "movlg", "o2d"},
  {(((((2) & 0x3) << 30) | (((((((2) & 3) << 4) | ((12) & 0xf))) & 0x3f) << 19) | (((1) & 0x1) << 13)) | (((((0)<<4) & 1)|((1) & 0xf)) << 14)), "movne", "ojd"},
  {(((((2) & 0x3) << 30) | (((((((2) & 3) << 4) | ((12) & 0xf))) & 0x3f) << 19) | (((0) & 0x1) << 13)) | (((((0)<<4) & 1)|((1) & 0xf)) << 14)), "movne", "o2d"},
  {(((((2) & 0x3) << 30) | (((((((2) & 3) << 4) | ((12) & 0xf))) & 0x3f) << 19) | (((1) & 0x1) << 13)) | (((((0)<<4) & 1)|((9) & 0xf)) << 14)), "move", "ojd"},
  {(((((2) & 0x3) << 30) | (((((((2) & 3) << 4) | ((12) & 0xf))) & 0x3f) << 19) | (((0) & 0x1) << 13)) | (((((0)<<4) & 1)|((9) & 0xf)) << 14)), "move", "o2d"},
  {(((((2) & 0x3) << 30) | (((((((2) & 3) << 4) | ((12) & 0xf))) & 0x3f) << 19) | (((1) & 0x1) << 13)) | (((((0)<<4) & 1)|((10) & 0xf)) << 14)), "movue", "ojd"},
  {(((((2) & 0x3) << 30) | (((((((2) & 3) << 4) | ((12) & 0xf))) & 0x3f) << 19) | (((0) & 0x1) << 13)) | (((((0)<<4) & 1)|((10) & 0xf)) << 14)), "movue", "o2d"},
  {(((((2) & 0x3) << 30) | (((((((2) & 3) << 4) | ((12) & 0xf))) & 0x3f) << 19) | (((1) & 0x1) << 13)) | (((((0)<<4) & 1)|((11) & 0xf)) << 14)), "movge", "ojd"},
  {(((((2) & 0x3) << 30) | (((((((2) & 3) << 4) | ((12) & 0xf))) & 0x3f) << 19) | (((0) & 0x1) << 13)) | (((((0)<<4) & 1)|((11) & 0xf)) << 14)), "movge", "o2d"},
  {(((((2) & 0x3) << 30) | (((((((2) & 3) << 4) | ((12) & 0xf))) & 0x3f) << 19) | (((1) & 0x1) << 13)) | (((((0)<<4) & 1)|((12) & 0xf)) << 14)), "movuge", "ojd"},
  {(((((2) & 0x3) << 30) | (((((((2) & 3) << 4) | ((12) & 0xf))) & 0x3f) << 19) | (((0) & 0x1) << 13)) | (((((0)<<4) & 1)|((12) & 0xf)) << 14)), "movuge", "o2d"},
  {(((((2) & 0x3) << 30) | (((((((2) & 3) << 4) | ((12) & 0xf))) & 0x3f) << 19) | (((1) & 0x1) << 13)) | (((((0)<<4) & 1)|((13) & 0xf)) << 14)), "movle", "ojd"},
  {(((((2) & 0x3) << 30) | (((((((2) & 3) << 4) | ((12) & 0xf))) & 0x3f) << 19) | (((0) & 0x1) << 13)) | (((((0)<<4) & 1)|((13) & 0xf)) << 14)), "movle", "o2d"},
  {(((((2) & 0x3) << 30) | (((((((2) & 3) << 4) | ((12) & 0xf))) & 0x3f) << 19) | (((1) & 0x1) << 13)) | (((((0)<<4) & 1)|((14) & 0xf)) << 14)), "movule", "ojd"},
  {(((((2) & 0x3) << 30) | (((((((2) & 3) << 4) | ((12) & 0xf))) & 0x3f) << 19) | (((0) & 0x1) << 13)) | (((((0)<<4) & 1)|((14) & 0xf)) << 14)), "movule", "o2d"},
  {(((((2) & 0x3) << 30) | (((((((2) & 3) << 4) | ((12) & 0xf))) & 0x3f) << 19) | (((1) & 0x1) << 13)) | (((((0)<<4) & 1)|((15) & 0xf)) << 14)), "movo", "ojd"},
  {(((((2) & 0x3) << 30) | (((((((2) & 3) << 4) | ((12) & 0xf))) & 0x3f) << 19) | (((0) & 0x1) << 13)) | (((((0)<<4) & 1)|((15) & 0xf)) << 14)), "movo", "o2d"},
 {((((2) & 0x3) << 30) | (((((((3) & 3) << 4) | ((12) & 0xf))) & 0x3f) << 19) | (((0) & 0x1) << 13)), "save", "12d"},
 {((((2) & 0x3) << 30) | (((((((3) & 3) << 4) | ((12) & 0xf))) & 0x3f) << 19) | (((1) & 0x1) << 13)), "save", "1id"},
 {((((2) & 0x3) << 30) | (((((((0) & 3) << 4) | ((13) & 0xf))) & 0x3f) << 19) | (((0) & 0x1) << 13)), "udivx", "12d"},
 {((((2) & 0x3) << 30) | (((((((0) & 3) << 4) | ((13) & 0xf))) & 0x3f) << 19) | (((1) & 0x1) << 13)), "udivx", "1id"},
 {((((2) & 0x3) << 30) | (((((((1) & 3) << 4) | ((13) & 0xf))) & 0x3f) << 19) | (((0) & 0x1) << 13)), "UNDEFINED", ""},
 {((((2) & 0x3) << 30) | (((((((2) & 3) << 4) | ((13) & 0xf))) & 0x3f) << 19) | (((0) & 0x1) << 13)), "sdivx", "12d"},
 {((((2) & 0x3) << 30) | (((((((2) & 3) << 4) | ((13) & 0xf))) & 0x3f) << 19) | (((1) & 0x1) << 13)), "sdivx", "1id"},
 {((((2) & 0x3) << 30) | (((((((3) & 3) << 4) | ((13) & 0xf))) & 0x3f) << 19) | (((0) & 0x1) << 13)), "restore", "12d"},
 {((((2) & 0x3) << 30) | (((((((3) & 3) << 4) | ((13) & 0xf))) & 0x3f) << 19) | (((1) & 0x1) << 13)), "restore", "1id"},
 {((((2) & 0x3) << 30) | (((((((0) & 3) << 4) | ((14) & 0xf))) & 0x3f) << 19) | (((0) & 0x1) << 13)), "udiv", "12d"},
 {((((2) & 0x3) << 30) | (((((((0) & 3) << 4) | ((14) & 0xf))) & 0x3f) << 19) | (((1) & 0x1) << 13)), "udiv", "1id"},
 {((((2) & 0x3) << 30) | (((((((1) & 3) << 4) | ((14) & 0xf))) & 0x3f) << 19) | (((0) & 0x1) << 13)), "udivcc", "12d"},
 {((((2) & 0x3) << 30) | (((((((1) & 3) << 4) | ((14) & 0xf))) & 0x3f) << 19) | (((1) & 0x1) << 13)), "udivcc", "1id"},
 {((((2) & 0x3) << 30) | (((((((2) & 3) << 4) | ((14) & 0xf))) & 0x3f) << 19) | (((0) & 0x1) << 13)), "popc", "2d"},
 {((((2) & 0x3) << 30) | (((((((2) & 3) << 4) | ((14) & 0xf))) & 0x3f) << 19) | (((1) & 0x1) << 13)), "popc", "id"},
 {((((2) & 0x3) << 30) | (((((((3) & 3) << 4) | ((14) & 0xf))) & 0x3f) << 19) | (((0) & 0x1) << 13)), "done", ""},
 {((((2) & 0x3) << 30) | (((((((3) & 3) << 4) | ((14) & 0xf))) & 0x3f) << 19) | (((0) & 0x1) << 13))|(((1) & 0x1f) << 25), "retry", ""},
 {((((2) & 0x3) << 30) | (((((((0) & 3) << 4) | ((15) & 0xf))) & 0x3f) << 19) | (((0) & 0x1) << 13)), "sdiv", "12d"},
 {((((2) & 0x3) << 30) | (((((((0) & 3) << 4) | ((15) & 0xf))) & 0x3f) << 19) | (((1) & 0x1) << 13)), "sdiv", "1id"},
 {((((2) & 0x3) << 30) | (((((((1) & 3) << 4) | ((15) & 0xf))) & 0x3f) << 19) | (((0) & 0x1) << 13)), "sdivcc", "12d"},
 {((((2) & 0x3) << 30) | (((((((1) & 3) << 4) | ((15) & 0xf))) & 0x3f) << 19) | (((1) & 0x1) << 13)), "sdivcc", "1id"},
  {(((((2) & 0x3) << 30) | (((((((2) & 3) << 4) | ((15) & 0xf))) & 0x3f) << 19) | (((1) & 0x1) << 13)) | (((1) & 0x7) << 10)), "movrz", "1jd"},
  {(((((2) & 0x3) << 30) | (((((((2) & 3) << 4) | ((15) & 0xf))) & 0x3f) << 19) | (((0) & 0x1) << 13)) | (((1) & 0x7) << 10)), "movrz", "12d"},
  {(((((2) & 0x3) << 30) | (((((((2) & 3) << 4) | ((15) & 0xf))) & 0x3f) << 19) | (((1) & 0x1) << 13)) | (((2) & 0x7) << 10)), "movrlez", "1jd"},
  {(((((2) & 0x3) << 30) | (((((((2) & 3) << 4) | ((15) & 0xf))) & 0x3f) << 19) | (((0) & 0x1) << 13)) | (((2) & 0x7) << 10)), "movrlez", "12d"},
  {(((((2) & 0x3) << 30) | (((((((2) & 3) << 4) | ((15) & 0xf))) & 0x3f) << 19) | (((1) & 0x1) << 13)) | (((3) & 0x7) << 10)), "movrlz", "1jd"},
  {(((((2) & 0x3) << 30) | (((((((2) & 3) << 4) | ((15) & 0xf))) & 0x3f) << 19) | (((0) & 0x1) << 13)) | (((3) & 0x7) << 10)), "movrlz", "12d"},
  {(((((2) & 0x3) << 30) | (((((((2) & 3) << 4) | ((15) & 0xf))) & 0x3f) << 19) | (((1) & 0x1) << 13)) | (((5) & 0x7) << 10)), "movrnz", "1jd"},
  {(((((2) & 0x3) << 30) | (((((((2) & 3) << 4) | ((15) & 0xf))) & 0x3f) << 19) | (((0) & 0x1) << 13)) | (((5) & 0x7) << 10)), "movrnz", "12d"},
  {(((((2) & 0x3) << 30) | (((((((2) & 3) << 4) | ((15) & 0xf))) & 0x3f) << 19) | (((1) & 0x1) << 13)) | (((6) & 0x7) << 10)), "movrgz", "1jd"},
  {(((((2) & 0x3) << 30) | (((((((2) & 3) << 4) | ((15) & 0xf))) & 0x3f) << 19) | (((0) & 0x1) << 13)) | (((6) & 0x7) << 10)), "movrgz", "12d"},
  {(((((2) & 0x3) << 30) | (((((((2) & 3) << 4) | ((15) & 0xf))) & 0x3f) << 19) | (((1) & 0x1) << 13)) | (((7) & 0x7) << 10)), "movrgez", "1jd"},
  {(((((2) & 0x3) << 30) | (((((((2) & 3) << 4) | ((15) & 0xf))) & 0x3f) << 19) | (((0) & 0x1) << 13)) | (((7) & 0x7) << 10)), "movrgez", "12d"},
 {((((2) & 0x3) << 30) | (((((((3) & 3) << 4) | ((15) & 0xf))) & 0x3f) << 19) | (((0) & 0x1) << 13)), "UNDEFINED", ""},
 {(((((3) & 0x3) << 30) | (((((((0) & 3) << 4) | ((0) & 0xf))) & 0x3f) << 19) | (((0) & 0x1) << 13))), "ld", "pd"},
 {(((((3) & 0x3) << 30) | (((((((0) & 3) << 4) | ((0) & 0xf))) & 0x3f) << 19) | (((1) & 0x1) << 13))), "ld", "qd"},
 {(((((3) & 0x3) << 30) | (((((((1) & 3) << 4) | ((0) & 0xf))) & 0x3f) << 19) | (((0) & 0x1) << 13))), "lda", "7d"},
 {(((((3) & 0x3) << 30) | (((((((1) & 3) << 4) | ((0) & 0xf))) & 0x3f) << 19) | (((1) & 0x1) << 13))), "lda", "8d"},
 {(((((3) & 0x3) << 30) | (((((((2) & 3) << 4) | ((0) & 0xf))) & 0x3f) << 19) | (((0) & 0x1) << 13))), "ldf", "pe"},
 {(((((3) & 0x3) << 30) | (((((((2) & 3) << 4) | ((0) & 0xf))) & 0x3f) << 19) | (((1) & 0x1) << 13))), "ldf", "qe"},
 {(((((3) & 0x3) << 30) | (((((((3) & 3) << 4) | ((0) & 0xf))) & 0x3f) << 19) | (((0) & 0x1) << 13))), "ldfa", "7e"},
 {(((((3) & 0x3) << 30) | (((((((3) & 3) << 4) | ((0) & 0xf))) & 0x3f) << 19) | (((1) & 0x1) << 13))), "ldfa", "8e"},
 {(((((3) & 0x3) << 30) | (((((((0) & 3) << 4) | ((1) & 0xf))) & 0x3f) << 19) | (((0) & 0x1) << 13))), "ldub", "pd"},
 {(((((3) & 0x3) << 30) | (((((((0) & 3) << 4) | ((1) & 0xf))) & 0x3f) << 19) | (((1) & 0x1) << 13))), "ldub", "qd"},
 {(((((3) & 0x3) << 30) | (((((((1) & 3) << 4) | ((1) & 0xf))) & 0x3f) << 19) | (((0) & 0x1) << 13))), "lduba", "7d"},
 {(((((3) & 0x3) << 30) | (((((((1) & 3) << 4) | ((1) & 0xf))) & 0x3f) << 19) | (((1) & 0x1) << 13))), "lduba", "8d"},
 {(((((3) & 0x3) << 30) | (((((((2) & 3) << 4) | ((1) & 0xf))) & 0x3f) << 19) | (((0) & 0x1) << 13)) | (((0) & 0x1f) << 25)), "ld", "p5"},
 {(((((3) & 0x3) << 30) | (((((((2) & 3) << 4) | ((1) & 0xf))) & 0x3f) << 19) | (((1) & 0x1) << 13)) | (((0) & 0x1f) << 25)), "ld", "q5"},
 {(((((3) & 0x3) << 30) | (((((((2) & 3) << 4) | ((1) & 0xf))) & 0x3f) << 19) | (((0) & 0x1) << 13)) | (((1) & 0x1f) << 25)), "ldx", "p6"},
 {(((((3) & 0x3) << 30) | (((((((2) & 3) << 4) | ((1) & 0xf))) & 0x3f) << 19) | (((1) & 0x1) << 13)) | (((1) & 0x1f) << 25)), "ldx", "q6"},
 {(((((3) & 0x3) << 30) | (((((((0) & 3) << 4) | ((2) & 0xf))) & 0x3f) << 19) | (((0) & 0x1) << 13))), "lduh", "pd"},
 {(((((3) & 0x3) << 30) | (((((((0) & 3) << 4) | ((2) & 0xf))) & 0x3f) << 19) | (((1) & 0x1) << 13))), "lduh", "qd"},
 {(((((3) & 0x3) << 30) | (((((((1) & 3) << 4) | ((2) & 0xf))) & 0x3f) << 19) | (((0) & 0x1) << 13))), "lduha", "7d"},
 {(((((3) & 0x3) << 30) | (((((((1) & 3) << 4) | ((2) & 0xf))) & 0x3f) << 19) | (((1) & 0x1) << 13))), "lduha", "8d"},
 {(((((3) & 0x3) << 30) | (((((((2) & 3) << 4) | ((2) & 0xf))) & 0x3f) << 19) | (((0) & 0x1) << 13))), "ldq", "pe"},
 {(((((3) & 0x3) << 30) | (((((((2) & 3) << 4) | ((2) & 0xf))) & 0x3f) << 19) | (((1) & 0x1) << 13))), "ldq", "qe"},
 {(((((3) & 0x3) << 30) | (((((((3) & 3) << 4) | ((2) & 0xf))) & 0x3f) << 19) | (((0) & 0x1) << 13))), "ldqa", "7e"},
 {(((((3) & 0x3) << 30) | (((((((3) & 3) << 4) | ((2) & 0xf))) & 0x3f) << 19) | (((1) & 0x1) << 13))), "ldqa", "8e"},
 {(((((3) & 0x3) << 30) | (((((((0) & 3) << 4) | ((3) & 0xf))) & 0x3f) << 19) | (((0) & 0x1) << 13))), "ldd", "pd"},
 {(((((3) & 0x3) << 30) | (((((((0) & 3) << 4) | ((3) & 0xf))) & 0x3f) << 19) | (((1) & 0x1) << 13))), "ldd", "qd"},
 {(((((3) & 0x3) << 30) | (((((((1) & 3) << 4) | ((3) & 0xf))) & 0x3f) << 19) | (((0) & 0x1) << 13))), "ldda", "7d"},
 {(((((3) & 0x3) << 30) | (((((((1) & 3) << 4) | ((3) & 0xf))) & 0x3f) << 19) | (((1) & 0x1) << 13))), "ldda", "8d"},
 {(((((3) & 0x3) << 30) | (((((((2) & 3) << 4) | ((3) & 0xf))) & 0x3f) << 19) | (((0) & 0x1) << 13))), "ldd", "pe"},
 {(((((3) & 0x3) << 30) | (((((((2) & 3) << 4) | ((3) & 0xf))) & 0x3f) << 19) | (((1) & 0x1) << 13))), "ldd", "qe"},
 {(((((3) & 0x3) << 30) | (((((((3) & 3) << 4) | ((3) & 0xf))) & 0x3f) << 19) | (((0) & 0x1) << 13))), "ldda", "7e"},
 {(((((3) & 0x3) << 30) | (((((((3) & 3) << 4) | ((3) & 0xf))) & 0x3f) << 19) | (((1) & 0x1) << 13))), "ldda", "8e"},
 {(((((3) & 0x3) << 30) | (((((((0) & 3) << 4) | ((4) & 0xf))) & 0x3f) << 19) | (((0) & 0x1) << 13))), "st", "dp"},
 {(((((3) & 0x3) << 30) | (((((((0) & 3) << 4) | ((4) & 0xf))) & 0x3f) << 19) | (((1) & 0x1) << 13))), "st", "dq"},
 {(((((3) & 0x3) << 30) | (((((((1) & 3) << 4) | ((4) & 0xf))) & 0x3f) << 19) | (((0) & 0x1) << 13))), "sta", "d7"},
 {(((((3) & 0x3) << 30) | (((((((1) & 3) << 4) | ((4) & 0xf))) & 0x3f) << 19) | (((1) & 0x1) << 13))), "sta", "d8"},
 {(((((3) & 0x3) << 30) | (((((((2) & 3) << 4) | ((4) & 0xf))) & 0x3f) << 19) | (((0) & 0x1) << 13))), "st", "ep"},
 {(((((3) & 0x3) << 30) | (((((((2) & 3) << 4) | ((4) & 0xf))) & 0x3f) << 19) | (((1) & 0x1) << 13))), "st", "eq"},
 {(((((3) & 0x3) << 30) | (((((((3) & 3) << 4) | ((4) & 0xf))) & 0x3f) << 19) | (((0) & 0x1) << 13))), "sta", "e7"},
 {(((((3) & 0x3) << 30) | (((((((3) & 3) << 4) | ((4) & 0xf))) & 0x3f) << 19) | (((1) & 0x1) << 13))), "sta", "e8"},
 {(((((3) & 0x3) << 30) | (((((((0) & 3) << 4) | ((5) & 0xf))) & 0x3f) << 19) | (((0) & 0x1) << 13))), "stb", "dp"},
 {(((((3) & 0x3) << 30) | (((((((0) & 3) << 4) | ((5) & 0xf))) & 0x3f) << 19) | (((1) & 0x1) << 13))), "stb", "dq"},
 {(((((3) & 0x3) << 30) | (((((((1) & 3) << 4) | ((5) & 0xf))) & 0x3f) << 19) | (((0) & 0x1) << 13))), "stba", "d7"},
 {(((((3) & 0x3) << 30) | (((((((1) & 3) << 4) | ((5) & 0xf))) & 0x3f) << 19) | (((1) & 0x1) << 13))), "stba", "d8"},
 {(((((3) & 0x3) << 30) | (((((((2) & 3) << 4) | ((5) & 0xf))) & 0x3f) << 19) | (((0) & 0x1) << 13))), "st", "5p"},
 {(((((3) & 0x3) << 30) | (((((((2) & 3) << 4) | ((5) & 0xf))) & 0x3f) << 19) | (((1) & 0x1) << 13))), "st", "5q"},
 {(((((3) & 0x3) << 30) | (((((((2) & 3) << 4) | ((5) & 0xf))) & 0x3f) << 19) | (((0) & 0x1) << 13))|(((1) & 0x1f) << 25)), "stx", "6p"},
 {(((((3) & 0x3) << 30) | (((((((2) & 3) << 4) | ((5) & 0xf))) & 0x3f) << 19) | (((1) & 0x1) << 13))|(((1) & 0x1f) << 25)), "stx", "6q"},
 {(((((3) & 0x3) << 30) | (((((((0) & 3) << 4) | ((6) & 0xf))) & 0x3f) << 19) | (((0) & 0x1) << 13))), "sth", "dp"},
 {(((((3) & 0x3) << 30) | (((((((0) & 3) << 4) | ((6) & 0xf))) & 0x3f) << 19) | (((1) & 0x1) << 13))), "sth", "dq"},
 {(((((3) & 0x3) << 30) | (((((((1) & 3) << 4) | ((6) & 0xf))) & 0x3f) << 19) | (((0) & 0x1) << 13))), "stha", "d7"},
 {(((((3) & 0x3) << 30) | (((((((1) & 3) << 4) | ((6) & 0xf))) & 0x3f) << 19) | (((1) & 0x1) << 13))), "stha", "d8"},
 {(((((3) & 0x3) << 30) | (((((((2) & 3) << 4) | ((6) & 0xf))) & 0x3f) << 19) | (((0) & 0x1) << 13))), "stq", "ep"},
 {(((((3) & 0x3) << 30) | (((((((2) & 3) << 4) | ((6) & 0xf))) & 0x3f) << 19) | (((1) & 0x1) << 13))), "stq", "eq"},
 {(((((3) & 0x3) << 30) | (((((((3) & 3) << 4) | ((6) & 0xf))) & 0x3f) << 19) | (((0) & 0x1) << 13))), "stqa", "e7"},
 {(((((3) & 0x3) << 30) | (((((((3) & 3) << 4) | ((6) & 0xf))) & 0x3f) << 19) | (((1) & 0x1) << 13))), "stqa", "e8"},
 {(((((3) & 0x3) << 30) | (((((((0) & 3) << 4) | ((7) & 0xf))) & 0x3f) << 19) | (((0) & 0x1) << 13))), "std", "dp"},
 {(((((3) & 0x3) << 30) | (((((((0) & 3) << 4) | ((7) & 0xf))) & 0x3f) << 19) | (((1) & 0x1) << 13))), "std", "dq"},
 {(((((3) & 0x3) << 30) | (((((((1) & 3) << 4) | ((7) & 0xf))) & 0x3f) << 19) | (((0) & 0x1) << 13))), "stda", "d7"},
 {(((((3) & 0x3) << 30) | (((((((1) & 3) << 4) | ((7) & 0xf))) & 0x3f) << 19) | (((1) & 0x1) << 13))), "stda", "d8"},
 {(((((3) & 0x3) << 30) | (((((((2) & 3) << 4) | ((7) & 0xf))) & 0x3f) << 19) | (((0) & 0x1) << 13))), "std", "ep"},
 {(((((3) & 0x3) << 30) | (((((((2) & 3) << 4) | ((7) & 0xf))) & 0x3f) << 19) | (((1) & 0x1) << 13))), "std", "eq"},
 {(((((3) & 0x3) << 30) | (((((((3) & 3) << 4) | ((7) & 0xf))) & 0x3f) << 19) | (((0) & 0x1) << 13))), "stda", "e7"},
 {(((((3) & 0x3) << 30) | (((((((3) & 3) << 4) | ((7) & 0xf))) & 0x3f) << 19) | (((1) & 0x1) << 13))), "stda", "e8"},
 {(((((3) & 0x3) << 30) | (((((((0) & 3) << 4) | ((8) & 0xf))) & 0x3f) << 19) | (((0) & 0x1) << 13))), "ldsw", "pd"},
 {(((((3) & 0x3) << 30) | (((((((0) & 3) << 4) | ((8) & 0xf))) & 0x3f) << 19) | (((1) & 0x1) << 13))), "ldsw", "qd"},
 {(((((3) & 0x3) << 30) | (((((((1) & 3) << 4) | ((8) & 0xf))) & 0x3f) << 19) | (((0) & 0x1) << 13))), "ldswa", "7d"},
 {(((((3) & 0x3) << 30) | (((((((1) & 3) << 4) | ((8) & 0xf))) & 0x3f) << 19) | (((1) & 0x1) << 13))), "ldswa", "8d"},
 {(((((3) & 0x3) << 30) | (((((((0) & 3) << 4) | ((9) & 0xf))) & 0x3f) << 19) | (((0) & 0x1) << 13))), "ldsb", "pd"},
 {(((((3) & 0x3) << 30) | (((((((0) & 3) << 4) | ((9) & 0xf))) & 0x3f) << 19) | (((1) & 0x1) << 13))), "ldsb", "qd"},
 {(((((3) & 0x3) << 30) | (((((((1) & 3) << 4) | ((9) & 0xf))) & 0x3f) << 19) | (((0) & 0x1) << 13))), "ldsba", "7d"},
 {(((((3) & 0x3) << 30) | (((((((1) & 3) << 4) | ((9) & 0xf))) & 0x3f) << 19) | (((1) & 0x1) << 13))), "ldsba", "8d"},
 {(((((3) & 0x3) << 30) | (((((((0) & 3) << 4) | ((10) & 0xf))) & 0x3f) << 19) | (((0) & 0x1) << 13))), "ldsh", "pd"},
 {(((((3) & 0x3) << 30) | (((((((0) & 3) << 4) | ((10) & 0xf))) & 0x3f) << 19) | (((1) & 0x1) << 13))), "ldsh", "qd"},
 {(((((3) & 0x3) << 30) | (((((((1) & 3) << 4) | ((10) & 0xf))) & 0x3f) << 19) | (((0) & 0x1) << 13))), "ldsha", "7d"},
 {(((((3) & 0x3) << 30) | (((((((1) & 3) << 4) | ((10) & 0xf))) & 0x3f) << 19) | (((1) & 0x1) << 13))), "ldsha", "8d"},
 {(((((3) & 0x3) << 30) | (((((((0) & 3) << 4) | ((11) & 0xf))) & 0x3f) << 19) | (((0) & 0x1) << 13))), "ldx", "pd"},
 {(((((3) & 0x3) << 30) | (((((((0) & 3) << 4) | ((11) & 0xf))) & 0x3f) << 19) | (((1) & 0x1) << 13))), "ldx", "qd"},
 {(((((3) & 0x3) << 30) | (((((((1) & 3) << 4) | ((11) & 0xf))) & 0x3f) << 19) | (((0) & 0x1) << 13))), "ldxa", "7d"},
 {(((((3) & 0x3) << 30) | (((((((1) & 3) << 4) | ((11) & 0xf))) & 0x3f) << 19) | (((1) & 0x1) << 13))), "ldxa", "8d"},
 {(((((3) & 0x3) << 30) | (((((((3) & 3) << 4) | ((12) & 0xf))) & 0x3f) << 19) | (((1) & 0x1) << 13))), "casa", "s2d"},
 {(((((3) & 0x3) << 30) | (((((((3) & 3) << 4) | ((12) & 0xf))) & 0x3f) << 19) | (((0) & 0x1) << 13))), "casa", "t2d"},
 {(((((3) & 0x3) << 30) | (((((((0) & 3) << 4) | ((13) & 0xf))) & 0x3f) << 19) | (((0) & 0x1) << 13))), "ldstub", "7d"},
 {(((((3) & 0x3) << 30) | (((((((0) & 3) << 4) | ((13) & 0xf))) & 0x3f) << 19) | (((1) & 0x1) << 13))), "ldstub", "8d"},
 {(((((3) & 0x3) << 30) | (((((((1) & 3) << 4) | ((13) & 0xf))) & 0x3f) << 19) | (((0) & 0x1) << 13))), "ldstuba", "pd"},
 {(((((3) & 0x3) << 30) | (((((((1) & 3) << 4) | ((13) & 0xf))) & 0x3f) << 19) | (((1) & 0x1) << 13))), "ldstuba", "qd"},
 {(((((3) & 0x3) << 30) | (((((((2) & 3) << 4) | ((13) & 0xf))) & 0x3f) << 19) | (((0) & 0x1) << 13))), "prefetch", "pr"},
 {(((((3) & 0x3) << 30) | (((((((2) & 3) << 4) | ((13) & 0xf))) & 0x3f) << 19) | (((1) & 0x1) << 13))), "prefetch", "qr"},
 {(((((3) & 0x3) << 30) | (((((((3) & 3) << 4) | ((13) & 0xf))) & 0x3f) << 19) | (((0) & 0x1) << 13))), "prefetcha", "7r"},
 {(((((3) & 0x3) << 30) | (((((((3) & 3) << 4) | ((13) & 0xf))) & 0x3f) << 19) | (((1) & 0x1) << 13))), "prefetcha", "8r"},
 {(((((3) & 0x3) << 30) | (((((((0) & 3) << 4) | ((14) & 0xf))) & 0x3f) << 19) | (((0) & 0x1) << 13))), "stx", "dp"},
 {(((((3) & 0x3) << 30) | (((((((0) & 3) << 4) | ((14) & 0xf))) & 0x3f) << 19) | (((1) & 0x1) << 13))), "stx", "dq"},
 {(((((3) & 0x3) << 30) | (((((((1) & 3) << 4) | ((14) & 0xf))) & 0x3f) << 19) | (((0) & 0x1) << 13))), "stwa", "d7"},
 {(((((3) & 0x3) << 30) | (((((((1) & 3) << 4) | ((14) & 0xf))) & 0x3f) << 19) | (((1) & 0x1) << 13))), "stwa", "d8"},
 {(((((3) & 0x3) << 30) | (((((((3) & 3) << 4) | ((14) & 0xf))) & 0x3f) << 19) | (((0) & 0x1) << 13))), "casxa", "t2d"},
 {(((((3) & 0x3) << 30) | (((((((3) & 3) << 4) | ((14) & 0xf))) & 0x3f) << 19) | (((1) & 0x1) << 13))), "casxa", "s2d"},
 {(((((3) & 0x3) << 30) | (((((((0) & 3) << 4) | ((15) & 0xf))) & 0x3f) << 19) | (((0) & 0x1) << 13))), "swap", "pd"},
 {(((((3) & 0x3) << 30) | (((((((0) & 3) << 4) | ((15) & 0xf))) & 0x3f) << 19) | (((1) & 0x1) << 13))), "swap", "qd"},
 {(((((3) & 0x3) << 30) | (((((((1) & 3) << 4) | ((15) & 0xf))) & 0x3f) << 19) | (((0) & 0x1) << 13))), "swapa", "7d"},
 {(((((3) & 0x3) << 30) | (((((((1) & 3) << 4) | ((15) & 0xf))) & 0x3f) << 19) | (((1) & 0x1) << 13))), "swapa", "8d"},
 {(((((2) & 0x3) << 30) | (((((((3) & 3) << 4) | ((4) & 0xf))) & 0x3f) << 19) | (((((((0) & 0x1f) << 4) | ((1) & 0xf))) & 0x1ff) << 5))), "fmovs", ".4e"},
 {(((((2) & 0x3) << 30) | (((((((3) & 3) << 4) | ((4) & 0xf))) & 0x3f) << 19) | (((((((0) & 0x1f) << 4) | ((2) & 0xf))) & 0x1ff) << 5))), "fmovd", ".4e"},
 {(((((2) & 0x3) << 30) | (((((((3) & 3) << 4) | ((4) & 0xf))) & 0x3f) << 19) | (((((((0) & 0x1f) << 4) | ((3) & 0xf))) & 0x1ff) << 5))), "fmovq", ".4e"},
 {(((((2) & 0x3) << 30) | (((((((3) & 3) << 4) | ((4) & 0xf))) & 0x3f) << 19) | (((((((0) & 0x1f) << 4) | ((5) & 0xf))) & 0x1ff) << 5))), "fnegs", "4e"},
 {(((((2) & 0x3) << 30) | (((((((3) & 3) << 4) | ((4) & 0xf))) & 0x3f) << 19) | (((((((0) & 0x1f) << 4) | ((6) & 0xf))) & 0x1ff) << 5))), "fnegd", "4e"},
 {(((((2) & 0x3) << 30) | (((((((3) & 3) << 4) | ((4) & 0xf))) & 0x3f) << 19) | (((((((0) & 0x1f) << 4) | ((7) & 0xf))) & 0x1ff) << 5))), "fnegq", "4e"},
 {(((((2) & 0x3) << 30) | (((((((3) & 3) << 4) | ((4) & 0xf))) & 0x3f) << 19) | (((((((0) & 0x1f) << 4) | ((9) & 0xf))) & 0x1ff) << 5))), "fabss", "4e"},
 {(((((2) & 0x3) << 30) | (((((((3) & 3) << 4) | ((4) & 0xf))) & 0x3f) << 19) | (((((((0) & 0x1f) << 4) | ((10) & 0xf))) & 0x1ff) << 5))), "fabsd", "4e"},
 {(((((2) & 0x3) << 30) | (((((((3) & 3) << 4) | ((4) & 0xf))) & 0x3f) << 19) | (((((((0) & 0x1f) << 4) | ((11) & 0xf))) & 0x1ff) << 5))), "fabsq", "4e"},
 {(((((2) & 0x3) << 30) | (((((((3) & 3) << 4) | ((4) & 0xf))) & 0x3f) << 19) | (((((((2) & 0x1f) << 4) | ((9) & 0xf))) & 0x1ff) << 5))), "fsqrts", "4e"},
 {(((((2) & 0x3) << 30) | (((((((3) & 3) << 4) | ((4) & 0xf))) & 0x3f) << 19) | (((((((2) & 0x1f) << 4) | ((10) & 0xf))) & 0x1ff) << 5))), "fsqrtd", "4e"},
 {(((((2) & 0x3) << 30) | (((((((3) & 3) << 4) | ((4) & 0xf))) & 0x3f) << 19) | (((((((2) & 0x1f) << 4) | ((11) & 0xf))) & 0x1ff) << 5))), "fsqrtq", "4e"},
 {(((((2) & 0x3) << 30) | (((((((3) & 3) << 4) | ((4) & 0xf))) & 0x3f) << 19) | (((((((4) & 0x1f) << 4) | ((1) & 0xf))) & 0x1ff) << 5))), "fadds", "34e"},
 {(((((2) & 0x3) << 30) | (((((((3) & 3) << 4) | ((4) & 0xf))) & 0x3f) << 19) | (((((((4) & 0x1f) << 4) | ((2) & 0xf))) & 0x1ff) << 5))), "faddd", "34e"},
 {(((((2) & 0x3) << 30) | (((((((3) & 3) << 4) | ((4) & 0xf))) & 0x3f) << 19) | (((((((4) & 0x1f) << 4) | ((3) & 0xf))) & 0x1ff) << 5))), "faddq", "34e"},
 {(((((2) & 0x3) << 30) | (((((((3) & 3) << 4) | ((4) & 0xf))) & 0x3f) << 19) | (((((((4) & 0x1f) << 4) | ((5) & 0xf))) & 0x1ff) << 5))), "fsubs", "34e"},
 {(((((2) & 0x3) << 30) | (((((((3) & 3) << 4) | ((4) & 0xf))) & 0x3f) << 19) | (((((((4) & 0x1f) << 4) | ((6) & 0xf))) & 0x1ff) << 5))), "fsubd", "34e"},
 {(((((2) & 0x3) << 30) | (((((((3) & 3) << 4) | ((4) & 0xf))) & 0x3f) << 19) | (((((((4) & 0x1f) << 4) | ((7) & 0xf))) & 0x1ff) << 5))), "fsubq", "34e"},
 {(((((2) & 0x3) << 30) | (((((((3) & 3) << 4) | ((4) & 0xf))) & 0x3f) << 19) | (((((((4) & 0x1f) << 4) | ((9) & 0xf))) & 0x1ff) << 5))), "fmuls", "34e"},
 {(((((2) & 0x3) << 30) | (((((((3) & 3) << 4) | ((4) & 0xf))) & 0x3f) << 19) | (((((((4) & 0x1f) << 4) | ((10) & 0xf))) & 0x1ff) << 5))), "fmuld", "34e"},
 {(((((2) & 0x3) << 30) | (((((((3) & 3) << 4) | ((4) & 0xf))) & 0x3f) << 19) | (((((((4) & 0x1f) << 4) | ((11) & 0xf))) & 0x1ff) << 5))), "fmulq", "34e"},
 {(((((2) & 0x3) << 30) | (((((((3) & 3) << 4) | ((4) & 0xf))) & 0x3f) << 19) | (((((((4) & 0x1f) << 4) | ((13) & 0xf))) & 0x1ff) << 5))), "fdivs", "34e"},
 {(((((2) & 0x3) << 30) | (((((((3) & 3) << 4) | ((4) & 0xf))) & 0x3f) << 19) | (((((((4) & 0x1f) << 4) | ((14) & 0xf))) & 0x1ff) << 5))), "fdivd", "34e"},
 {(((((2) & 0x3) << 30) | (((((((3) & 3) << 4) | ((4) & 0xf))) & 0x3f) << 19) | (((((((4) & 0x1f) << 4) | ((15) & 0xf))) & 0x1ff) << 5))), "fdivq", "34e"},
 {(((((2) & 0x3) << 30) | (((((((3) & 3) << 4) | ((4) & 0xf))) & 0x3f) << 19) | (((((((6) & 0x1f) << 4) | ((9) & 0xf))) & 0x1ff) << 5))), "fsmuld", "34e"},
 {(((((2) & 0x3) << 30) | (((((((3) & 3) << 4) | ((4) & 0xf))) & 0x3f) << 19) | (((((((6) & 0x1f) << 4) | ((14) & 0xf))) & 0x1ff) << 5))), "fdmulq", "34e"},
 {(((((2) & 0x3) << 30) | (((((((3) & 3) << 4) | ((4) & 0xf))) & 0x3f) << 19) | (((((((8) & 0x1f) << 4) | ((1) & 0xf))) & 0x1ff) << 5))), "fstox", "4e"},
 {(((((2) & 0x3) << 30) | (((((((3) & 3) << 4) | ((4) & 0xf))) & 0x3f) << 19) | (((((((8) & 0x1f) << 4) | ((2) & 0xf))) & 0x1ff) << 5))), "fdtox", "4e"},
 {(((((2) & 0x3) << 30) | (((((((3) & 3) << 4) | ((4) & 0xf))) & 0x3f) << 19) | (((((((8) & 0x1f) << 4) | ((3) & 0xf))) & 0x1ff) << 5))), "fqtox", "4e"},
 {(((((2) & 0x3) << 30) | (((((((3) & 3) << 4) | ((4) & 0xf))) & 0x3f) << 19) | (((((((8) & 0x1f) << 4) | ((4) & 0xf))) & 0x1ff) << 5))), "fxtos", "4e"},
 {(((((2) & 0x3) << 30) | (((((((3) & 3) << 4) | ((4) & 0xf))) & 0x3f) << 19) | (((((((8) & 0x1f) << 4) | ((8) & 0xf))) & 0x1ff) << 5))), "fxtod", "4e"},
 {(((((2) & 0x3) << 30) | (((((((3) & 3) << 4) | ((4) & 0xf))) & 0x3f) << 19) | (((((((8) & 0x1f) << 4) | ((12) & 0xf))) & 0x1ff) << 5))), "fxtoq", "4e"},
 {(((((2) & 0x3) << 30) | (((((((3) & 3) << 4) | ((4) & 0xf))) & 0x3f) << 19) | (((((((12) & 0x1f) << 4) | ((4) & 0xf))) & 0x1ff) << 5))), "fitos", "4e"},
 {(((((2) & 0x3) << 30) | (((((((3) & 3) << 4) | ((4) & 0xf))) & 0x3f) << 19) | (((((((12) & 0x1f) << 4) | ((6) & 0xf))) & 0x1ff) << 5))), "fdtos", "4e"},
 {(((((2) & 0x3) << 30) | (((((((3) & 3) << 4) | ((4) & 0xf))) & 0x3f) << 19) | (((((((12) & 0x1f) << 4) | ((7) & 0xf))) & 0x1ff) << 5))), "fqtos", "4e"},
 {(((((2) & 0x3) << 30) | (((((((3) & 3) << 4) | ((4) & 0xf))) & 0x3f) << 19) | (((((((12) & 0x1f) << 4) | ((8) & 0xf))) & 0x1ff) << 5))), "fitod", "4e"},
 {(((((2) & 0x3) << 30) | (((((((3) & 3) << 4) | ((4) & 0xf))) & 0x3f) << 19) | (((((((12) & 0x1f) << 4) | ((9) & 0xf))) & 0x1ff) << 5))), "fstod", "4e"},
 {(((((2) & 0x3) << 30) | (((((((3) & 3) << 4) | ((4) & 0xf))) & 0x3f) << 19) | (((((((12) & 0x1f) << 4) | ((11) & 0xf))) & 0x1ff) << 5))), "fqtod", "4e"},
 {(((((2) & 0x3) << 30) | (((((((3) & 3) << 4) | ((4) & 0xf))) & 0x3f) << 19) | (((((((12) & 0x1f) << 4) | ((12) & 0xf))) & 0x1ff) << 5))), "fitoq", "4e"},
 {(((((2) & 0x3) << 30) | (((((((3) & 3) << 4) | ((4) & 0xf))) & 0x3f) << 19) | (((((((12) & 0x1f) << 4) | ((13) & 0xf))) & 0x1ff) << 5))), "fstoq", "4e"},
 {(((((2) & 0x3) << 30) | (((((((3) & 3) << 4) | ((4) & 0xf))) & 0x3f) << 19) | (((((((12) & 0x1f) << 4) | ((14) & 0xf))) & 0x1ff) << 5))), "fdtoq", "4e"},
 {(((((2) & 0x3) << 30) | (((((((3) & 3) << 4) | ((4) & 0xf))) & 0x3f) << 19) | (((((((13) & 0x1f) << 4) | ((1) & 0xf))) & 0x1ff) << 5))), "fstoi", "4e"},
 {(((((2) & 0x3) << 30) | (((((((3) & 3) << 4) | ((4) & 0xf))) & 0x3f) << 19) | (((((((13) & 0x1f) << 4) | ((2) & 0xf))) & 0x1ff) << 5))), "fdtoi", "4e"},
 {(((((2) & 0x3) << 30) | (((((((3) & 3) << 4) | ((4) & 0xf))) & 0x3f) << 19) | (((((((13) & 0x1f) << 4) | ((3) & 0xf))) & 0x1ff) << 5))), "fqtoi", "4e"},
 {(((((2) & 0x3) << 30) | (((((((3) & 3) << 4) | ((6) & 0xf))) & 0x3f) << 19) | (((((((6) & 0x1f) << 4) | ((0) & 0xf))) & 0x1ff) << 5))), "fzero", "e"},
 {(((((2) & 0x3) << 30) | (((((((3) & 3) << 4) | ((6) & 0xf))) & 0x3f) << 19) | (((((((6) & 0x1f) << 4) | ((1) & 0xf))) & 0x1ff) << 5))), "fzeros", "e"},
 {(((((2) & 0x3) << 30) | (((((((3) & 3) << 4) | ((6) & 0xf))) & 0x3f) << 19) | (((((((7) & 0x1f) << 4) | ((14) & 0xf))) & 0x1ff) << 5))), "fone", "e"},
 {(((((2) & 0x3) << 30) | (((((((3) & 3) << 4) | ((6) & 0xf))) & 0x3f) << 19) | (((((((7) & 0x1f) << 4) | ((15) & 0xf))) & 0x1ff) << 5))), "fones", "e"},
 {(((((2) & 0x3) << 30) | (((((((3) & 3) << 4) | ((6) & 0xf))) & 0x3f) << 19) | (((((((7) & 0x1f) << 4) | ((4) & 0xf))) & 0x1ff) << 5))), "fsrc1", "3e"},
 {(((((2) & 0x3) << 30) | (((((((3) & 3) << 4) | ((6) & 0xf))) & 0x3f) << 19) | (((((((7) & 0x1f) << 4) | ((5) & 0xf))) & 0x1ff) << 5))), "fsrc1s", "3e"},
 {(((((2) & 0x3) << 30) | (((((((3) & 3) << 4) | ((6) & 0xf))) & 0x3f) << 19) | (((((((7) & 0x1f) << 4) | ((8) & 0xf))) & 0x1ff) << 5))), "fsrc2", "4e"},
 {(((((2) & 0x3) << 30) | (((((((3) & 3) << 4) | ((6) & 0xf))) & 0x3f) << 19) | (((((((7) & 0x1f) << 4) | ((9) & 0xf))) & 0x1ff) << 5))), "fsrc2s", "4e"},
 {(((((2) & 0x3) << 30) | (((((((3) & 3) << 4) | ((6) & 0xf))) & 0x3f) << 19) | (((((((6) & 0x1f) << 4) | ((10) & 0xf))) & 0x1ff) << 5))), "fnot1", "3e"},
 {(((((2) & 0x3) << 30) | (((((((3) & 3) << 4) | ((6) & 0xf))) & 0x3f) << 19) | (((((((6) & 0x1f) << 4) | ((11) & 0xf))) & 0x1ff) << 5))), "fnot1s", "3e"},
 {(((((2) & 0x3) << 30) | (((((((3) & 3) << 4) | ((6) & 0xf))) & 0x3f) << 19) | (((((((6) & 0x1f) << 4) | ((6) & 0xf))) & 0x1ff) << 5))), "fnot2", "4e"},
 {(((((2) & 0x3) << 30) | (((((((3) & 3) << 4) | ((6) & 0xf))) & 0x3f) << 19) | (((((((6) & 0x1f) << 4) | ((7) & 0xf))) & 0x1ff) << 5))), "fnot2s", "4e"},
 {(((((2) & 0x3) << 30) | (((((((3) & 3) << 4) | ((6) & 0xf))) & 0x3f) << 19) | (((((((7) & 0x1f) << 4) | ((12) & 0xf))) & 0x1ff) << 5))), "for", "34e"},
 {(((((2) & 0x3) << 30) | (((((((3) & 3) << 4) | ((6) & 0xf))) & 0x3f) << 19) | (((((((7) & 0x1f) << 4) | ((13) & 0xf))) & 0x1ff) << 5))), "fors", "34e"},
 {(((((2) & 0x3) << 30) | (((((((3) & 3) << 4) | ((6) & 0xf))) & 0x3f) << 19) | (((((((6) & 0x1f) << 4) | ((2) & 0xf))) & 0x1ff) << 5))), "fnor", "34e"},
 {(((((2) & 0x3) << 30) | (((((((3) & 3) << 4) | ((6) & 0xf))) & 0x3f) << 19) | (((((((6) & 0x1f) << 4) | ((3) & 0xf))) & 0x1ff) << 5))), "fnors", "34e"},
 {(((((2) & 0x3) << 30) | (((((((3) & 3) << 4) | ((6) & 0xf))) & 0x3f) << 19) | (((((((7) & 0x1f) << 4) | ((0) & 0xf))) & 0x1ff) << 5))), "fand", "34e"},
 {(((((2) & 0x3) << 30) | (((((((3) & 3) << 4) | ((6) & 0xf))) & 0x3f) << 19) | (((((((7) & 0x1f) << 4) | ((1) & 0xf))) & 0x1ff) << 5))), "fands", "34e"},
 {(((((2) & 0x3) << 30) | (((((((3) & 3) << 4) | ((6) & 0xf))) & 0x3f) << 19) | (((((((6) & 0x1f) << 4) | ((14) & 0xf))) & 0x1ff) << 5))), "fnand", "34e"},
 {(((((2) & 0x3) << 30) | (((((((3) & 3) << 4) | ((6) & 0xf))) & 0x3f) << 19) | (((((((6) & 0x1f) << 4) | ((15) & 0xf))) & 0x1ff) << 5))), "fnands", "34e"},
 {(((((2) & 0x3) << 30) | (((((((3) & 3) << 4) | ((6) & 0xf))) & 0x3f) << 19) | (((((((6) & 0x1f) << 4) | ((12) & 0xf))) & 0x1ff) << 5))), "fxor", "34e"},
 {(((((2) & 0x3) << 30) | (((((((3) & 3) << 4) | ((6) & 0xf))) & 0x3f) << 19) | (((((((6) & 0x1f) << 4) | ((13) & 0xf))) & 0x1ff) << 5))), "fxors", "34e"},
 {(((((2) & 0x3) << 30) | (((((((3) & 3) << 4) | ((6) & 0xf))) & 0x3f) << 19) | (((((((7) & 0x1f) << 4) | ((2) & 0xf))) & 0x1ff) << 5))), "fxnor", "34e"},
 {(((((2) & 0x3) << 30) | (((((((3) & 3) << 4) | ((6) & 0xf))) & 0x3f) << 19) | (((((((7) & 0x1f) << 4) | ((3) & 0xf))) & 0x1ff) << 5))), "fxnors", "34e"},
 {(((((2) & 0x3) << 30) | (((((((3) & 3) << 4) | ((6) & 0xf))) & 0x3f) << 19) | (((((((7) & 0x1f) << 4) | ((10) & 0xf))) & 0x1ff) << 5))), "fornot1", "34e"},
 {(((((2) & 0x3) << 30) | (((((((3) & 3) << 4) | ((6) & 0xf))) & 0x3f) << 19) | (((((((7) & 0x1f) << 4) | ((11) & 0xf))) & 0x1ff) << 5))), "fornot1s", "34e"},
 {(((((2) & 0x3) << 30) | (((((((3) & 3) << 4) | ((6) & 0xf))) & 0x3f) << 19) | (((((((7) & 0x1f) << 4) | ((6) & 0xf))) & 0x1ff) << 5))), "fornot2", "34e"},
 {(((((2) & 0x3) << 30) | (((((((3) & 3) << 4) | ((6) & 0xf))) & 0x3f) << 19) | (((((((7) & 0x1f) << 4) | ((7) & 0xf))) & 0x1ff) << 5))), "fornot2s", "34e"},
 {(((((2) & 0x3) << 30) | (((((((3) & 3) << 4) | ((6) & 0xf))) & 0x3f) << 19) | (((((((6) & 0x1f) << 4) | ((8) & 0xf))) & 0x1ff) << 5))), "fandnot1", "34e"},
 {(((((2) & 0x3) << 30) | (((((((3) & 3) << 4) | ((6) & 0xf))) & 0x3f) << 19) | (((((((6) & 0x1f) << 4) | ((9) & 0xf))) & 0x1ff) << 5))), "fandnot1s", "34e"},
 {(((((2) & 0x3) << 30) | (((((((3) & 3) << 4) | ((6) & 0xf))) & 0x3f) << 19) | (((((((6) & 0x1f) << 4) | ((4) & 0xf))) & 0x1ff) << 5))), "fandnot2", "34e"},
 {(((((2) & 0x3) << 30) | (((((((3) & 3) << 4) | ((6) & 0xf))) & 0x3f) << 19) | (((((((6) & 0x1f) << 4) | ((5) & 0xf))) & 0x1ff) << 5))), "fandnot2s", "34e"},
 {0, 0, 0}
};
db_addr_t
db_disasm(loc, altfmt)
 vaddr_t loc;
 boolean_t altfmt;
{
 struct sparc_insn* i_ptr = (struct sparc_insn *)&sparc_i;
 unsigned int insn, you_lose, bitmask;
 int matchp;
 char *f_ptr, *cp;
 you_lose = 0;
 matchp = 0;
 insn = db_get_value(loc, 4, 0);
 if (insn == 0x01000000) {
  db_printf("nop\n");
  return loc + 4;
 }
 while (i_ptr->name) {
  bitmask= (i_ptr->match);
  you_lose = (~bitmask);
  if (((bitmask>>30) & 0x3) == 0x1) {
   you_lose = ((~0x1)<<30);
  } else if (((bitmask>>30) & 0x3) == 0x0) {
   if (((bitmask>>22) & 0x7) == 0x4) {
    you_lose &= (((((0x3) & 0x3) << 30) | (((0x7) & 0x7) << 22)));
   } else {
    you_lose &= (((((0x3) & 0x3) << 30) | (((0x7) & 0x7) << 22))|(((0xf) & 0xf) << 25));
   }
  } else if (((bitmask>>30) & 0x3) == 0x2 &&
      ((bitmask>>19) & 0x3f) == 0x34) {
   you_lose &= (((((0x3) & 0x3) << 30) | (((0x3f) & 0x3f) << 19) | (((0x1) & 0x1) << 13)) | (((0x1ff) & 0x1ff) << 5));
  } else if (((bitmask>>30) & 0x3) == 0x2 &&
      ((bitmask>>19) & 0x3f) == 0x3a) {
   you_lose &= (((((0x3) & 0x3) << 30) | (((0x3f) & 0x3f) << 19) | (((0x1) & 0x1) << 13)) | (((0xf) & 0xf) << 25));
  } else if (((bitmask>>30) & 0x3) == 0x2 &&
      ((bitmask>>21) & 0xf) == 0x9 &&
      ((bitmask>>19) & 0x3) != 0) {
   you_lose &= (((((0x3) & 0x3) << 30) | (((0x3f) & 0x3f) << 19) | (((0x1) & 0x1) << 13)))|(((1) & 0x1) << 12);
  } else if (((bitmask>>30) & 0x3) == 0x2 &&
      ((bitmask>>19) & 0x3f) == 0x2c) {
   you_lose &= (((((0x3) & 0x3) << 30) | (((0x3f) & 0x3f) << 19) | (((0x1) & 0x1) << 13)) | (((((1)<<4) & 1)|((0xf) & 0xf)) << 14));
  } else if (((bitmask>>30) & 0x3) == 0x2 &&
      ((bitmask>>19) & 0x3f) == 0x35) {
   you_lose &= (((((0x3) & 0x3) << 30) | (((0x3f) & 0x3f) << 19) | (((0x1) & 0x1) << 13)) | (((((1)<<4) & 1)|((0xf) & 0xf)) << 14));
  } else if (((bitmask>>30) & 0x3) == 0x2 &&
      ((bitmask>>13) & 0x1) == 0 &&
      ((((bitmask>>19) & 0x3f) == ((((3) & 3) << 4) | ((1) & 0xf))) ||
      (((bitmask>>19) & 0x3f) == ((((3) & 3) << 4) | ((14) & 0xf))))) {
   you_lose &= (((((0x3) & 0x3) << 30) | (((0x3f) & 0x3f) << 19) | (((0x1) & 0x1) << 13))) | (((0x1f) & 0x1f) << 25);
  } else {
   you_lose &= (((((0x3) & 0x3) << 30) | (((0x3f) & 0x3f) << 19) | (((0x1) & 0x1) << 13)));
  }
  if (((bitmask & insn) == bitmask) && ((you_lose & insn) == 0)) {
   matchp = 1;
   break;
  }
  i_ptr++;
 };
 if (!matchp) {
  db_printf("undefined\n");
  return loc + 4;
 }
 db_printf("%s", i_ptr->name);
 f_ptr = i_ptr->format;
 for (cp = f_ptr; *cp; cp++) {
  if (*cp == ',') {
   for (;f_ptr < cp; f_ptr++)
    switch (*f_ptr) {
    case 'a':
     if (insn & (((1) & 0x1) << 29))
      db_printf(",a");
     break;
    case 'p':
     if (insn & (((1) & 0x1) << 19))
      db_printf(",pt");
     else
      db_printf(",pn");
     break;
    }
   f_ptr++;
   break;
  }
 }
 db_printf("      \t");
 while (*f_ptr) {
  switch (*f_ptr) {
   int64_t val;
  case '1':
   db_printf("%%%s", regs[((insn >> 14) & 0x1f)]);
   break;
  case '2':
   db_printf("%%%s", regs[(insn & 0x1f)]);
   break;
  case 'd':
   db_printf("%%%s", regs[((insn >> 25) & 0x1f)]);
   break;
  case '3':
   db_printf("%%f%d", ((insn >> 14) & 0x1f));
   break;
  case '4':
   db_printf("%%f%d", (insn & 0x1f));
   break;
  case 'e':
   db_printf("%%f%d", ((insn >> 25) & 0x1f));
   break;
  case 'i':
   val = ((((long long)(insn))<<(64-13))>>(64-13));
   db_printf("%s0x%x", (((val)<0)?"-":""), (int)abs(val));
   break;
  case 'j':
   val = ((((long long)(insn))<<(64-11))>>(64-11));
   db_printf("%s0x%x", (((val)<0)?"-":""), (int)abs(val));
   break;
  case 'l':
   val = (((insn>>20)&0x3)<<13)|(insn & 0x1fff);
   val = ((((long long)(val))<<(64-16))>>(64-16));
   db_printsym((db_addr_t)(loc + (4 * val)),
       0, db_printf);
   break;
  case 'm':
   db_printsym((db_addr_t)(loc + (4 * ((((long long)(insn))<<(64-22))>>(64-22)))),
    0, db_printf);
   break;
  case 'u':
   db_printsym((db_addr_t)(loc + (4 * ((((long long)(insn))<<(64-19))>>(64-19)))),
       0, db_printf);
   break;
  case 'n':
   db_printsym((db_addr_t)(loc + (4 * ((((long long)(insn))<<(64-30))>>(64-30)))),
       2, db_printf);
   break;
  case 's':
   db_printf("%%asi");
   break;
  case 't':
   db_printf("0x%-2.2x", ((insn >> 5) & 0xff));
   break;
  case 'o':
   db_printf("%%fcc%d", ((insn >> 25) & 0x3));
   break;
  case 'p':
  case '7':
   db_printf("[%%%s + %%%s]",
      regs[((insn >> 14) & 0x1f)],
      regs[(insn & 0x1f)]);
   if (*f_ptr == '7')
    db_printf(" %d", ((insn >> 5) & 0xff));
   break;
  case 'q':
  case '8':
   val = ((((long long)(insn))<<(64-13))>>(64-13));
   db_printf("[%%%s %c 0x%x]",
    regs[((insn >> 14) & 0x1f)],
    (int)((val<0)?'-':'+'),
    (int)abs(val));
   if (*f_ptr == '8')
    db_printf(" %%asi");
   break;
  case '5':
   db_printf("%%fsr");
   break;
  case '6':
   db_printf("%%fsr");
   break;
  case '9':
   db_printf("0x%xl",
      ((insn & 0xf) | ((insn >> 4) & 0x7)));
   break;
  case '0':
   db_printf("%%%s", ccodes[((insn >> 11) & 0x3) + 4]);
   break;
  case '.':
   db_printf("%%%s", ccodes[((insn >> 11) & 0x7)]);
   break;
  case 'r':
   db_printf("#%s", prefetch[((insn >> 25) & 0x1f)]);
   break;
  case 'A':
   db_printf("%%%s", priv_regs[((insn >> 14) & 0x1f)]);
   break;
  case 'B':
   db_printf("%%%s", state_regs[((insn >> 14) & 0x1f)]);
   break;
  case 'C':
   db_printf("%%hi(0x%x)", ((insn & 0x3fffff) << 10));
   break;
  case 'D':
   db_printf("0x%x", (insn & 0x1f));
   break;
  case 'E':
   db_printf("%d", (insn & 0x3f));
   break;
  case 'F':
   db_printf("%d", (insn & 0x3f));
   break;
  case 'G':
   db_printf("%%%s", priv_regs[((insn >> 25) & 0x1f)]);
   break;
  case 'H':
   db_printf("%%%s", state_regs[((insn >> 25) & 0x1f)]);
   break;
  default:
   db_printf("(UNKNOWN)");
   break;
  }
  if (*(++f_ptr))
   db_printf(", ");
 };
 db_printf("\n");
 return (loc + 4);
}
