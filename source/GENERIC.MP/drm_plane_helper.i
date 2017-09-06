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
struct mem_range_desc {
 u_int64_t mr_base;
 u_int64_t mr_len;
 int mr_flags;
 char mr_owner[8];
};
struct mem_range_op {
 struct mem_range_desc *mo_desc;
 int mo_arg[2];
};
struct mem_range_softc;
struct mem_range_ops {
 void (*init)(struct mem_range_softc *sc);
 int (*set)(struct mem_range_softc *sc,
      struct mem_range_desc *mrd, int *arg);
 void (*initAP)(struct mem_range_softc *sc);
 void (*reload)(struct mem_range_softc *sc);
};
struct mem_range_softc {
 struct mem_range_ops *mr_op;
 int mr_cap;
 int mr_ndesc;
 struct mem_range_desc *mr_desc;
};
extern struct mem_range_softc mem_range_softc;

extern void mem_range_attach(void);
extern int mem_range_attr_get(struct mem_range_desc *mrd, int *arg);
extern int mem_range_attr_set(struct mem_range_desc *mrd, int *arg);
extern void mem_range_AP_init(void);
extern void mem_range_reload(void);

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
extern int db_radix;
extern int db_max_width;
extern int db_tab_stop_width;
extern int db_max_line;
extern int db_panic;
extern int db_console;
extern int db_log;
extern int db_is_active;
extern int db_profile;
int ddb_sysctl(int *, u_int, void *, size_t *, void *, size_t,
         struct proc *);
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
struct agp_attach_args {
 char *aa_busname;
 struct pci_attach_args *aa_pa;
};
struct agpbus_attach_args {
 char *aa_busname;
        struct pci_attach_args *aa_pa;
 const struct agp_methods *aa_methods;
 bus_addr_t aa_apaddr;
 bus_size_t aa_apsize;
};
enum agp_acquire_state {
 AGP_ACQUIRE_FREE,
 AGP_ACQUIRE_USER,
 AGP_ACQUIRE_KERNEL
};
struct agp_info {
 u_int32_t ai_mode;
 bus_addr_t ai_aperture_base;
 bus_size_t ai_aperture_size;
 vsize_t ai_memory_allowed;
 vsize_t ai_memory_used;
 u_int32_t ai_devid;
};
struct agp_memory_info {
        vsize_t ami_size;
        bus_addr_t ami_physical;
        off_t ami_offset;
        int ami_is_bound;
};
struct agp_methods {
 void (*bind_page)(void *, bus_addr_t, paddr_t, int);
 void (*unbind_page)(void *, bus_addr_t);
 void (*flush_tlb)(void *);
 int (*enable)(void *, u_int32_t mode);
};
struct agp_softc {
 struct device sc_dev;
 const struct agp_methods *sc_methods;
 void *sc_chipc;
 bus_dma_tag_t sc_dmat;
 bus_space_tag_t sc_memt;
 pci_chipset_tag_t sc_pc;
 pcitag_t sc_pcitag;
 bus_addr_t sc_apaddr;
 bus_size_t sc_apsize;
 uint32_t sc_stolen_entries;
 pcireg_t sc_id;
 int sc_opened;
 int sc_capoff;
 int sc_nextid;
 enum agp_acquire_state sc_state;
 u_int32_t sc_maxmem;
 u_int32_t sc_allocated;
};
struct agp_gatt {
 u_int32_t ag_entries;
 u_int32_t *ag_virtual;
 bus_addr_t ag_physical;
 bus_dmamap_t ag_dmamap;
 bus_dma_segment_t ag_dmaseg;
 size_t ag_size;
};
struct agp_map;
struct device *agp_attach_bus(struct pci_attach_args *,
       const struct agp_methods *, bus_addr_t, bus_size_t,
       struct device *);
struct agp_gatt *
 agp_alloc_gatt(bus_dma_tag_t, u_int32_t);
void agp_free_gatt(bus_dma_tag_t, struct agp_gatt *);
void agp_flush_cache(void);
void agp_flush_cache_range(vaddr_t, vsize_t);
int agp_generic_enable(struct agp_softc *, u_int32_t);
int agp_init_map(bus_space_tag_t, bus_addr_t, bus_size_t, int, struct
     agp_map **);
void agp_destroy_map(struct agp_map *);
int agp_map_subregion(struct agp_map *, bus_size_t, bus_size_t,
     bus_space_handle_t *);
void agp_unmap_subregion(struct agp_map *, bus_space_handle_t,
     bus_size_t);
void agp_map_atomic(struct agp_map *, bus_size_t, bus_space_handle_t *);
void agp_unmap_atomic(struct agp_map *, bus_space_handle_t);
int agp_alloc_dmamem(bus_dma_tag_t, size_t, bus_dmamap_t *,
     bus_addr_t *, bus_dma_segment_t *);
void agp_free_dmamem(bus_dma_tag_t, size_t, bus_dmamap_t,
     bus_dma_segment_t *);
int agpdev_print(void *, const char *);
int agpbus_probe(struct agp_attach_args *aa);
paddr_t agp_mmap(struct agp_softc *, off_t, int);
void *agp_find_device(int);
enum agp_acquire_state agp_state(void *);
void agp_get_info(void *, struct agp_info *);
int agp_acquire(void *);
int agp_release(void *);
int agp_enable(void *, u_int32_t);
void agp_memory_info(void *, void *, struct agp_memory_info *);
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
typedef uint16_t i2c_addr_t;
typedef enum {
 I2C_OP_READ = 0,
 I2C_OP_READ_WITH_STOP = 1,
 I2C_OP_WRITE = 2,
 I2C_OP_WRITE_WITH_STOP = 3,
} i2c_op_t;
struct device;
typedef struct i2c_controller {
 void *ic_cookie;
 int (*ic_acquire_bus)(void *, int);
 void (*ic_release_bus)(void *, int);
 int (*ic_exec)(void *, i2c_op_t, i2c_addr_t, const void *, size_t,
      void *, size_t, int);
 int (*ic_send_start)(void *, int);
 int (*ic_send_stop)(void *, int);
 int (*ic_initiate_xfer)(void *, i2c_addr_t, int);
 int (*ic_read_byte)(void *, uint8_t *, int);
 int (*ic_write_byte)(void *, uint8_t, int);
 void *(*ic_intr_establish)(void *, void *, int, int (*)(void *),
      void *, const char *);
 const char *(*ic_intr_string)(void *, void *);
} *i2c_tag_t;
struct i2cbus_attach_args {
 const char *iba_name;
 i2c_tag_t iba_tag;
 void (*iba_bus_scan)(struct device *, struct i2cbus_attach_args *,
      void *);
 void *iba_bus_scan_arg;
};
struct i2c_attach_args {
 i2c_tag_t ia_tag;
 i2c_addr_t ia_addr;
 int ia_size;
 char *ia_name;
 void *ia_cookie;
 void *ia_intr;
};
int iicbus_print(void *, const char *);
int iic_exec(i2c_tag_t, i2c_op_t, i2c_addr_t, const void *,
     size_t, void *, size_t, int);
int iic_smbus_write_byte(i2c_tag_t, i2c_addr_t, uint8_t, uint8_t, int);
int iic_smbus_read_byte(i2c_tag_t, i2c_addr_t, uint8_t, uint8_t *, int);
int iic_smbus_receive_byte(i2c_tag_t, i2c_addr_t, uint8_t *, int);
void iic_ignore_addr(u_int8_t addr);
typedef int8_t __s8;
typedef uint8_t __u8;
typedef int16_t __s16;
typedef uint16_t __u16;
typedef int32_t __s32;
typedef uint32_t __u32;
typedef int64_t __s64;
typedef uint64_t __u64;
typedef uint32_t atomic_t;
static __inline int
atomic_xchg(volatile int *v, int n)
{
 __sync_synchronize();
 return __sync_lock_test_and_set(v, n);
}
static __inline int
atomic_add_unless(volatile int *v, int n, int u)
{
 int o = *v;
 do {
  o = *v;
  if (o == u)
   return 0;
 } while (__sync_val_compare_and_swap(v, o, o +n) != o);
 return 1;
}
typedef uint64_t atomic64_t;
static __inline int64_t
atomic64_xchg(volatile int64_t *v, int64_t n)
{
 __sync_synchronize();
 return __sync_lock_test_and_set(v, n);
}
static inline int
atomic_inc_not_zero(atomic_t *p)
{
 if (*p == 0)
  return (0);
 *(p) += 1;
 return (*p);
}
static __inline int
atomic_cmpset_int(__volatile__ u_int *dst, u_int old, u_int new)
{
 int s = _splraise(15);
 if (*dst==old) {
  *dst = new;
  _splx(s);
  return 1;
 }
 _splx(s);
 return 0;
}
static __inline atomic_t
test_and_set_bit(u_int b, volatile void *p)
{
 int s = _splraise(15);
 unsigned int m = 1<<b;
 unsigned int r = *(volatile int *)p & m;
 *(volatile int *)p |= m;
 _splx(s);
 return r;
}
static __inline void
clear_bit(u_int b, volatile void *p)
{
 atomic_clearbits_int(((volatile u_int *)p) + (b >> 5),1 << (b & 0x1f));
}
static __inline void
set_bit(u_int b, volatile void *p)
{
 atomic_setbits_int(((volatile u_int *)p) + (b >> 5),1 << (b & 0x1f));
}
static __inline void
__clear_bit(u_int b, volatile void *p)
{
 volatile u_int *ptr = (volatile u_int *)p;
 ptr[b >> 5] &= ~(1 << (b & 0x1f));
}
static __inline void
__set_bit(u_int b, volatile void *p)
{
 volatile u_int *ptr = (volatile u_int *)p;
 ptr[b >> 5] |= (1 << (b & 0x1f));
}
static __inline int
test_bit(u_int b, volatile void *p)
{
 return !!(((volatile u_int *)p)[b >> 5] & (1 << (b & 0x1f)));
}
static __inline int
__test_and_clear_bit(u_int b, volatile void *p)
{
 volatile u_int *ptr = (volatile u_int *)p;
 int rv = !!(ptr[b >> 5] & (1 << (b & 0x1f)));
 ptr[b >> 5] &= ~(1 << (b & 0x1f));
 return rv;
}
static __inline int
find_first_zero_bit(volatile void *p, int max)
{
 int b;
 volatile u_int *ptr = (volatile u_int *)p;
 for (b = 0; b < max; b += 32) {
  if (ptr[b >> 5] != ~0) {
   for (;;) {
    if ((ptr[b >> 5] & (1 << (b & 0x1f))) == 0)
     return b;
    b++;
   }
  }
 }
 return max;
}
static __inline int
find_first_bit(volatile void *p, int max)
{
 int b;
 volatile u_int *ptr = (volatile u_int *)p;
 for (b = 0; b < max; b += 32) {
  if (ptr[b >> 5] != 0) {
   for (;;) {
    if (ptr[b >> 5] & (1 << (b & 0x1f)))
     return b;
    b++;
   }
  }
 }
 return max;
}
static __inline int
find_next_bit(volatile void *p, int max, int b)
{
 volatile u_int *ptr = (volatile u_int *)p;
 for (; b < max; b+= 32) {
  if (ptr[b >> 5] != 0) {
   for (;;) {
    if (ptr[b >> 5] & (1 << (b & 0x1f)))
     return b;
    b++;
   }
  }
 }
 return max;
}
struct list_head {
 struct list_head *next, *prev;
};
static inline void
INIT_LIST_HEAD(struct list_head *head) {
 (head)->next = head;
 (head)->prev = head;
}
static inline int
list_empty(const struct list_head *head) {
 return (head)->next == head;
}
static inline int
list_is_singular(const struct list_head *head) {
 return !list_empty(head) && ((head)->next == (head)->prev);
}
static inline void
list_add(struct list_head *new, struct list_head *head) {
        (head)->next->prev = new;
        (new)->next = (head)->next;
        (new)->prev = head;
        (head)->next = new;
}
static inline void
list_add_tail(struct list_head *entry, struct list_head *head) {
 (entry)->prev = (head)->prev;
 (entry)->next = head;
 (head)->prev->next = entry;
 (head)->prev = entry;
}
static inline void
list_del(struct list_head *entry) {
 (entry)->next->prev = (entry)->prev;
 (entry)->prev->next = (entry)->next;
}
static inline void list_replace(struct list_head *old,
    struct list_head *new)
{
 new->next = old->next;
 new->next->prev = new;
 new->prev = old->prev;
 new->prev->next = new;
}
static inline void list_replace_init(struct list_head *old,
         struct list_head *new)
{
 list_replace(old, new);
 INIT_LIST_HEAD(old);
}
static inline void list_move(struct list_head *list, struct list_head *head)
{
 list_del(list);
 list_add(list, head);
}
static inline void list_move_tail(struct list_head *list,
    struct list_head *head)
{
 list_del(list);
 list_add_tail(list, head);
}
static inline void
list_del_init(struct list_head *entry) {
 (entry)->next->prev = (entry)->prev;
 (entry)->prev->next = (entry)->next;
 INIT_LIST_HEAD(entry);
}
static inline void
__list_splice(const struct list_head *list, struct list_head *prev,
    struct list_head *next)
{
 struct list_head *first = list->next;
 struct list_head *last = list->prev;
 first->prev = prev;
 prev->next = first;
 last->next = next;
 next->prev = last;
}
static inline void
list_splice(const struct list_head *list, struct list_head *head)
{
 if (list_empty(list))
  return;
 __list_splice(list, head, head->next);
}
static inline void
list_splice_tail(const struct list_head *list, struct list_head *head)
{
 if (list_empty(list))
  return;
 __list_splice(list, head->prev, head);
}
void list_sort(void *, struct list_head *,
     int (*)(void *, struct list_head *, struct list_head *));
struct hlist_node {
 struct hlist_node *next, **prev;
};
struct hlist_head {
 struct hlist_node *first;
};
static inline void
INIT_HLIST_HEAD(struct hlist_head *head) {
 head->first = ((void *)0);
}
static inline int
hlist_empty(const struct hlist_head *head) {
 return head->first == ((void *)0);
}
static inline void
hlist_add_head(struct hlist_node *new, struct hlist_head *head)
{
 if ((new->next = head->first) != ((void *)0))
  head->first->prev = &new->next;
 head->first = new;
 new->prev = &head->first;
}
static inline void
hlist_del_init(struct hlist_node *node)
{
 if (node->next != ((void *)0))
  node->next->prev = node->prev;
 *(node->prev) = node->next;
 node->next = ((void *)0);
 node->prev = ((void *)0);
}
typedef int irqreturn_t;
enum irqreturn {
 IRQ_NONE = 0,
 IRQ_HANDLED = 1
};
typedef int8_t s8;
typedef uint8_t u8;
typedef int16_t s16;
typedef uint16_t u16;
typedef int32_t s32;
typedef uint32_t u32;
typedef int64_t s64;
typedef uint64_t u64;
typedef uint16_t __le16;
typedef uint16_t __be16;
typedef uint32_t __le32;
typedef uint32_t __be32;
typedef bus_addr_t dma_addr_t;
typedef bus_addr_t phys_addr_t;
typedef bus_addr_t resource_size_t;
typedef off_t loff_t;
static inline uint8_t
hweight8(uint32_t x)
{
 x = (x & 0x55) + ((x & 0xaa) >> 1);
 x = (x & 0x33) + ((x & 0xcc) >> 2);
 x = (x + (x >> 4)) & 0x0f;
 return (x);
}
static inline uint16_t
hweight16(uint32_t x)
{
 x = (x & 0x5555) + ((x & 0xaaaa) >> 1);
 x = (x & 0x3333) + ((x & 0xcccc) >> 2);
 x = (x + (x >> 4)) & 0x0f0f;
 x = (x + (x >> 8)) & 0x00ff;
 return (x);
}
static inline uint32_t
hweight32(uint32_t x)
{
 x = (x & 0x55555555) + ((x & 0xaaaaaaaa) >> 1);
 x = (x & 0x33333333) + ((x & 0xcccccccc) >> 2);
 x = (x + (x >> 4)) & 0x0f0f0f0f;
 x = (x + (x >> 8));
 x = (x + (x >> 16)) & 0x000000ff;
 return x;
}
static inline uint32_t
hweight64(uint64_t x)
{
 x = (x & 0x5555555555555555ULL) + ((x & 0xaaaaaaaaaaaaaaaaULL) >> 1);
 x = (x & 0x3333333333333333ULL) + ((x & 0xccccccccccccccccULL) >> 2);
 x = (x + (x >> 4)) & 0x0f0f0f0f0f0f0f0fULL;
 x = (x + (x >> 8));
 x = (x + (x >> 16));
 x = (x + (x >> 32)) & 0x000000ff;
 return x;
}
static inline void
bitmap_set(void *p, int b, u_int n)
{
 u_int end = b + n;
 for (; b < end; b++)
  __set_bit(b, p);
}
static inline void
bitmap_zero(void *p, u_int n)
{
 u_int *ptr = p;
 u_int b;
 for (b = 0; b < n; b += 32)
  ptr[b >> 5] = 0;
}
static inline void
bitmap_or(void *d, void *s1, void *s2, u_int n)
{
 u_int *dst = d;
 u_int *src1 = s1;
 u_int *src2 = s2;
 u_int b;
 for (b = 0; b < n; b += 32)
  dst[b >> 5] = src1[b >> 5] | src2[b >> 5];
}
static inline int
bitmap_weight(void *p, u_int n)
{
 u_int *ptr = p;
 u_int b;
 int sum = 0;
 for (b = 0; b < n; b += 32)
  sum += hweight32(ptr[b >> 5]);
 return sum;
}
static inline void
__hash_init(struct hlist_head *table, u_int size)
{
 u_int i;
 for (i = 0; i < size; i++)
  INIT_HLIST_HEAD(&table[i]);
}
static inline _Bool
__hash_empty(struct hlist_head *table, u_int size)
{
 u_int i;
 for (i = 0; i < size; i++) {
  if (!hlist_empty(&table[i]))
   return 0;
 }
 return 1;
}
struct device_node;
struct device_driver {
 struct device *dev;
};
struct module;
enum {
 DUMP_PREFIX_NONE,
 DUMP_PREFIX_ADDRESS,
 DUMP_PREFIX_OFFSET
};
void print_hex_dump(const char *, const char *, int, int, int,
  const void *, size_t, _Bool);
static inline void *
ERR_PTR(long error)
{
 return (void *) error;
}
static inline long
PTR_ERR(const void *ptr)
{
 return (long) ptr;
}
static inline long
IS_ERR(const void *ptr)
{
        return __builtin_expect(!!(((unsigned long)ptr) >= (unsigned long)-95), 0);
}
static inline long
IS_ERR_OR_NULL(const void *ptr)
{
        return !ptr || __builtin_expect(!!(((unsigned long)ptr) >= (unsigned long)-95), 0);
}
static inline void *
ERR_CAST(const void *ptr)
{
 return (void *)ptr;
}
static inline int
PTR_ERR_OR_ZERO(const void *ptr)
{
 return IS_ERR(ptr)? PTR_ERR(ptr) : 0;
}
typedef struct rwlock rwlock_t;
typedef struct mutex spinlock_t;
static inline void
_spin_lock_irqsave(struct mutex *mtxp, __attribute__((__unused__)) unsigned long flags
    )
{
 __mtx_enter(mtxp );
}
static inline void
_spin_unlock_irqrestore(struct mutex *mtxp, __attribute__((__unused__)) unsigned long flags
    )
{
 __mtx_leave(mtxp );
}
struct wait_queue_head {
 struct mutex lock;
 unsigned int count;
};
typedef struct wait_queue_head wait_queue_head_t;
static inline void
init_waitqueue_head(wait_queue_head_t *wq)
{
 do { (void)(((void *)0)); (void)(0); __mtx_init((&wq->lock), ((((0)) > 0 && ((0)) < 12) ? 12 : ((0)))); } while (0);
 wq->count = 0;
}
struct completion {
 u_int done;
 wait_queue_head_t wait;
};
static inline void
init_completion(struct completion *x)
{
 x->done = 0;
 do { (void)(((void *)0)); (void)(0); __mtx_init((&x->wait.lock), ((((0)) > 0 && ((0)) < 12) ? 12 : ((0)))); } while (0);
}
static inline u_long
_wait_for_completion_interruptible_timeout(struct completion *x, u_long timo
    )
{
 int ret;
 __mtx_enter(&x->wait.lock );
 while (x->done == 0) {
  ret = msleep(x, &x->wait.lock, 0x100, "wfcit", timo);
  if (ret) {
   __mtx_leave(&x->wait.lock );
   return (ret == 35) ? 0 : -ret;
  }
 }
 return 1;
}
static inline void
_complete_all(struct completion *x )
{
 __mtx_enter(&x->wait.lock );
 x->done = 1;
 __mtx_leave(&x->wait.lock );
 wakeup(x);
}
struct workqueue_struct;
static inline struct workqueue_struct *
alloc_ordered_workqueue(const char *name, int flags)
{
 struct taskq *tq = taskq_create(name, 1, 6, 0);
 return (struct workqueue_struct *)tq;
}
static inline void
destroy_workqueue(struct workqueue_struct *wq)
{
 taskq_destroy((struct taskq *)wq);
}
struct work_struct {
 struct task task;
 struct taskq *tq;
};
typedef void (*work_func_t)(struct work_struct *);
static inline void
INIT_WORK(struct work_struct *work, work_func_t func)
{
 work->tq = systq;
 task_set(&work->task, (void (*)(void *))func, work);
}
static inline _Bool
queue_work(struct workqueue_struct *wq, struct work_struct *work)
{
 work->tq = (struct taskq *)wq;
 return task_add(work->tq, &work->task);
}
static inline void
cancel_work_sync(struct work_struct *work)
{
 task_del(work->tq, &work->task);
}
struct delayed_work {
 struct work_struct work;
 struct timeout to;
 struct taskq *tq;
};
static inline struct delayed_work *
to_delayed_work(struct work_struct *work)
{
 return ({ __typeof( ((struct delayed_work *)0)->work ) *__mptr = (work); (struct delayed_work *)( (char *)__mptr - __builtin_offsetof(struct delayed_work, work) );});
}
static void
__delayed_work_tick(void *arg)
{
 struct delayed_work *dwork = arg;
 task_add(dwork->tq, &dwork->work.task);
}
static inline void
INIT_DELAYED_WORK(struct delayed_work *dwork, work_func_t func)
{
 INIT_WORK(&dwork->work, func);
 timeout_set(&dwork->to, __delayed_work_tick, &dwork->work);
}
static inline _Bool
schedule_work(struct work_struct *work)
{
 return task_add(work->tq, &work->task);
}
static inline _Bool
schedule_delayed_work(struct delayed_work *dwork, int jiffies)
{
 dwork->tq = systq;
 return timeout_add(&dwork->to, jiffies);
}
static inline _Bool
queue_delayed_work(struct workqueue_struct *wq,
    struct delayed_work *dwork, int jiffies)
{
 dwork->tq = (struct taskq *)wq;
 return timeout_add(&dwork->to, jiffies);
}
static inline _Bool
mod_delayed_work(struct workqueue_struct *wq,
    struct delayed_work *dwork, int jiffies)
{
 dwork->tq = (struct taskq *)wq;
 return (timeout_add(&dwork->to, jiffies) == 0);
}
static inline _Bool
cancel_delayed_work(struct delayed_work *dwork)
{
 if (timeout_del(&dwork->to))
  return 1;
 return task_del(dwork->tq, &dwork->work.task);
}
static inline _Bool
cancel_delayed_work_sync(struct delayed_work *dwork)
{
 if (timeout_del(&dwork->to))
  return 1;
 return task_del(dwork->tq, &dwork->work.task);
}
void flush_workqueue(struct workqueue_struct *);
void flush_work(struct work_struct *);
void flush_delayed_work(struct delayed_work *);
typedef void *async_cookie_t;
extern struct timespec ns_to_timespec(const int64_t);
extern int64_t timeval_to_ns(const struct timeval *);
extern int64_t timeval_to_us(const struct timeval *);
extern struct timeval ns_to_timeval(const int64_t);
static inline struct timespec
timespec_sub(struct timespec t1, struct timespec t2)
{
 struct timespec diff;
 do { (&diff)->tv_sec = (&t1)->tv_sec - (&t2)->tv_sec; (&diff)->tv_nsec = (&t1)->tv_nsec - (&t2)->tv_nsec; if ((&diff)->tv_nsec < 0) { (&diff)->tv_sec--; (&diff)->tv_nsec += 1000000000L; } } while (0);
 return diff;
}
extern volatile unsigned long jiffies;
static inline unsigned long
round_jiffies_up(unsigned long j)
{
 return ((((j)+((hz)-1))/(hz))*(hz));
}
static inline unsigned long
round_jiffies_up_relative(unsigned long j)
{
 return ((((j)+((hz)-1))/(hz))*(hz));
}
static inline void
set_normalized_timespec(struct timespec *ts, time_t sec, int64_t nsec)
{
 while (nsec > 1000000000L) {
  nsec -= 1000000000L;
  sec++;
 }
 ts->tv_sec = sec;
 ts->tv_nsec = nsec;
}
static inline int64_t
timespec_to_ns(const struct timespec *ts)
{
 return ((ts->tv_sec * 1000000000L) + ts->tv_nsec);
}
static inline unsigned long
timespec_to_jiffies(const struct timespec *ts)
{
 long long to_ticks;
 to_ticks = (long long)hz * ts->tv_sec + ts->tv_nsec / (tick * 1000);
 if (to_ticks > 0x7fffffff)
  to_ticks = 0x7fffffff;
 return ((int)to_ticks);
}
static inline int
timespec_valid(const struct timespec *ts)
{
 if (ts->tv_sec < 0 || ts->tv_sec > 100000000 ||
     ts->tv_nsec < 0 || ts->tv_nsec >= 1000000000)
  return (0);
 return (1);
}
typedef struct timeval ktime_t;
static inline struct timeval
ktime_get(void)
{
 struct timeval tv;
 getmicrouptime(&tv);
 return tv;
}
static inline struct timeval
ktime_get_monotonic_offset(void)
{
 struct timeval tv = {0, 0};
 return tv;
}
static inline int64_t
ktime_to_us(struct timeval tv)
{
 return timeval_to_us(&tv);
}
static inline int64_t
ktime_to_ns(struct timeval tv)
{
 return timeval_to_ns(&tv);
}
static inline int64_t
ktime_get_raw_ns(void)
{
 return ktime_to_ns(ktime_get());
}
static inline struct timeval
ktime_sub(struct timeval a, struct timeval b)
{
 struct timeval res;
 do { (&res)->tv_sec = (&a)->tv_sec - (&b)->tv_sec; (&res)->tv_usec = (&a)->tv_usec - (&b)->tv_usec; if ((&res)->tv_usec < 0) { (&res)->tv_sec--; (&res)->tv_usec += 1000000; } } while (0);
 return res;
}
static inline struct timeval
ktime_add_ns(struct timeval tv, int64_t ns)
{
 return ns_to_timeval(timeval_to_ns(&tv) + ns);
}
static inline struct timeval
ktime_sub_ns(struct timeval tv, int64_t ns)
{
 return ns_to_timeval(timeval_to_ns(&tv) - ns);
}
static inline int64_t
ktime_us_delta(struct timeval a, struct timeval b)
{
 return ktime_to_us(ktime_sub(a, b));
}
static inline void *
kmalloc(size_t size, int flags)
{
 return malloc(size, 145, flags);
}
static inline void *
kmalloc_array(size_t n, size_t size, int flags)
{
 if (n == 0 || 0xffffffffffffffffUL / n < size)
  return ((void *)0);
 return malloc(n * size, 145, flags);
}
static inline void *
kcalloc(size_t n, size_t size, int flags)
{
 if (n == 0 || 0xffffffffffffffffUL / n < size)
  return ((void *)0);
 return malloc(n * size, 145, flags | 0x0008);
}
static inline void *
kzalloc(size_t size, int flags)
{
 return malloc(size, 145, flags | 0x0008);
}
static inline void
kfree(const void *objp)
{
 free((void *)objp, 145, 0);
}
static inline void *
kmemdup(const void *src, size_t len, int flags)
{
 void *p = malloc(len, 145, flags);
 if (p)
  __builtin_memcpy((p), (src), (len));
 return (p);
}
static inline char *
kasprintf(int flags, const char *fmt, ...)
{
 char *buf;
 size_t len;
 va_list ap;
 __builtin_va_start((ap), fmt);
 len = vsnprintf(((void *)0), 0, fmt, ap);
 __builtin_va_end((ap));
 buf = kmalloc(len, flags);
 if (buf) {
  __builtin_va_start((ap), fmt);
  vsnprintf(buf, len, fmt, ap);
  __builtin_va_end((ap));
 }
 return buf;
}
static inline void *
vzalloc(unsigned long size)
{
 return malloc(size, 145, 0x0001 | 0x0004 | 0x0008);
}
static inline void
vfree(void *objp)
{
 free(objp, 145, 0);
}
struct kref {
 uint32_t refcount;
};
static inline void
kref_init(struct kref *ref)
{
 ref->refcount = 1;
}
static inline void
kref_get(struct kref *ref)
{
 ((void)_atomic_add_int_nv((&ref->refcount), 1));
}
static inline int
kref_get_unless_zero(struct kref *ref)
{
 if (ref->refcount != 0) {
  ((void)_atomic_add_int_nv((&ref->refcount), 1));
  return (1);
 } else {
  return (0);
 }
}
static inline void
kref_put(struct kref *ref, void (*release)(struct kref *ref))
{
 if (_atomic_sub_int_nv((&ref->refcount), 1) == 0)
  release(ref);
}
static inline void
kref_sub(struct kref *ref, unsigned int v, void (*release)(struct kref *ref))
{
 if (_atomic_sub_int_nv(&ref->refcount, v) == 0)
  release(ref);
}
static inline int
kref_put_mutex(struct kref *kref, void (*release)(struct kref *kref),
    struct rwlock *lock)
{
 if (!atomic_add_unless(&kref->refcount, -1, 1)) {
  _rw_enter_write(lock );
  if (__builtin_expect(!!((__sync_sub_and_fetch((&kref->refcount), 1) == 0)), 1)) {
   release(kref);
   return 1;
  }
  _rw_exit_write(lock );
  return 0;
 }
 return 0;
}
struct kobject {
 struct kref kref;
 struct kobj_type *type;
};
struct kobj_type {
 void (*release)(struct kobject *);
};
static inline void
kobject_init(struct kobject *obj, struct kobj_type *type)
{
 kref_init(&obj->kref);
 obj->type = type;
}
static inline int
kobject_init_and_add(struct kobject *obj, struct kobj_type *type,
    struct kobject *parent, const char *fmt, ...)
{
 kobject_init(obj, type);
 return (0);
}
static inline struct kobject *
kobject_get(struct kobject *obj)
{
 if (obj != ((void *)0))
  kref_get(&obj->kref);
 return (obj);
}
static inline void
kobject_release(struct kref *ref)
{
 struct kobject *obj = ({ __typeof( ((struct kobject *)0)->kref ) *__mptr = (ref); (struct kobject *)( (char *)__mptr - __builtin_offsetof(struct kobject, kref) );});
 if (obj->type && obj->type->release)
  obj->type->release(obj);
}
static inline void
kobject_put(struct kobject *obj)
{
 if (obj != ((void *)0))
  kref_put(&obj->kref, kobject_release);
}
static inline void
kobject_del(struct kobject *obj)
{
}
struct idr_entry {
 struct { struct idr_entry *spe_left; struct idr_entry *spe_right; } entry;
 int id;
 void *ptr;
};
struct idr {
 struct idr_tree { struct idr_entry *sph_root; } tree;
};
void idr_init(struct idr *);
void idr_preload(unsigned int);
int idr_alloc(struct idr *, void *, int, int, unsigned int);
void *idr_find(struct idr *, int);
void *idr_replace(struct idr *, void *ptr, int);
void idr_remove(struct idr *, int);
void idr_destroy(struct idr *);
int idr_for_each(struct idr *, int (*)(int, void *, void *), void *);
void *idr_get_next(struct idr *, int *);
struct ida {
 int counter;
};
void ida_init(struct ida *);
void ida_destroy(struct ida *);
int ida_simple_get(struct ida *, unsigned int, unsigned nt, int);
void ida_remove(struct ida *, int);
struct notifier_block {
 void *notifier_call;
};
static inline uint64_t
div_u64(uint64_t x, uint32_t y)
{
 return (x / y);
}
static inline int64_t
div_s64(int64_t x, int64_t y)
{
 return (x / y);
}
static inline uint64_t
div64_u64(uint64_t x, uint64_t y)
{
 return (x / y);
}
static inline uint64_t
div64_u64_rem(uint64_t x, uint64_t y, uint64_t *rem)
{
 *rem = x % y;
 return (x / y);
}
static inline int64_t
div64_s64(int64_t x, int64_t y)
{
 return (x / y);
}
static inline int64_t
abs64(int64_t x)
{
 return (x < 0 ? -x : x);
}
static inline unsigned long
__copy_to_user(void *to, const void *from, unsigned len)
{
 if (copyout(from, to, len))
  return len;
 return 0;
}
static inline unsigned long
copy_to_user(void *to, const void *from, unsigned len)
{
 return __copy_to_user(to, from, len);
}
static inline unsigned long
__copy_from_user(void *to, const void *from, unsigned len)
{
 if (copyin(from, to, len))
  return len;
 return 0;
}
static inline unsigned long
copy_from_user(void *to, const void *from, unsigned len)
{
 return __copy_from_user(to, from, len);
}
enum dmi_field {
        DMI_NONE,
        DMI_BIOS_VENDOR,
        DMI_BIOS_VERSION,
        DMI_BIOS_DATE,
        DMI_SYS_VENDOR,
        DMI_PRODUCT_NAME,
        DMI_PRODUCT_VERSION,
        DMI_PRODUCT_SERIAL,
        DMI_PRODUCT_UUID,
        DMI_BOARD_VENDOR,
        DMI_BOARD_NAME,
        DMI_BOARD_VERSION,
        DMI_BOARD_SERIAL,
        DMI_BOARD_ASSET_TAG,
        DMI_CHASSIS_VENDOR,
        DMI_CHASSIS_TYPE,
        DMI_CHASSIS_VERSION,
        DMI_CHASSIS_SERIAL,
        DMI_CHASSIS_ASSET_TAG,
        DMI_STRING_MAX,
};
struct dmi_strmatch {
 unsigned char slot;
 char substr[79];
};
struct dmi_system_id {
        int (*callback)(const struct dmi_system_id *);
        const char *ident;
        struct dmi_strmatch matches[4];
};
int dmi_check_system(const struct dmi_system_id *);
struct resource {
 u_long start;
};
struct pci_bus {
 pci_chipset_tag_t pc;
 unsigned char number;
};
struct pci_dev {
 struct pci_bus _bus;
 struct pci_bus *bus;
 unsigned int devfn;
 uint16_t vendor;
 uint16_t device;
 uint16_t subsystem_vendor;
 uint16_t subsystem_device;
 uint8_t revision;
 pci_chipset_tag_t pc;
 pcitag_t tag;
 struct pci_softc *pci;
 int irq;
 int msi_enabled;
};
static inline int
pci_read_config_dword(struct pci_dev *pdev, int reg64, u32 *val)
{
 *val = pci_conf_read(pdev->pc, pdev->tag, reg64);
 return 0;
}
static inline int
pci_read_config_word(struct pci_dev *pdev, int reg64, u16 *val)
{
 uint32_t v;
 v = pci_conf_read(pdev->pc, pdev->tag, (reg64 & ~0x2));
 *val = (v >> ((reg64 & 0x2) * 8));
 return 0;
}
static inline int
pci_read_config_byte(struct pci_dev *pdev, int reg64, u8 *val)
{
 uint32_t v;
 v = pci_conf_read(pdev->pc, pdev->tag, (reg64 & ~0x3));
 *val = (v >> ((reg64 & 0x3) * 8));
 return 0;
}
static inline int
pci_write_config_dword(struct pci_dev *pdev, int reg64, u32 val)
{
 pci_conf_write(pdev->pc, pdev->tag, reg64, val);
 return 0;
}
static inline int
pci_write_config_word(struct pci_dev *pdev, int reg64, u16 val)
{
 uint32_t v;
 v = pci_conf_read(pdev->pc, pdev->tag, (reg64 & ~0x2));
 v &= ~(0xffff << ((reg64 & 0x2) * 8));
 v |= (val << ((reg64 & 0x2) * 8));
 pci_conf_write(pdev->pc, pdev->tag, (reg64 & ~0x2), v);
 return 0;
}
static inline int
pci_write_config_byte(struct pci_dev *pdev, int reg64, u8 val)
{
 uint32_t v;
 v = pci_conf_read(pdev->pc, pdev->tag, (reg64 & ~0x3));
 v &= ~(0xff << ((reg64 & 0x3) * 8));
 v |= (val << ((reg64 & 0x3) * 8));
 pci_conf_write(pdev->pc, pdev->tag, (reg64 & ~0x3), v);
 return 0;
}
static inline int
pci_bus_read_config_word(struct pci_bus *bus, unsigned int devfn,
    int reg64, u16 *val)
{
 pcitag_t tag = pci_make_tag(bus->pc, bus->number,
     ((devfn) >> 3), ((devfn) & 0x7));
 uint32_t v;
 v = pci_conf_read(bus->pc, tag, (reg64 & ~0x2));
 *val = (v >> ((reg64 & 0x2) * 8));
 return 0;
}
static inline int
pci_bus_read_config_byte(struct pci_bus *bus, unsigned int devfn,
    int reg64, u8 *val)
{
 pcitag_t tag = pci_make_tag(bus->pc, bus->number,
     ((devfn) >> 3), ((devfn) & 0x7));
 uint32_t v;
 v = pci_conf_read(bus->pc, tag, (reg64 & ~0x3));
 *val = (v >> ((reg64 & 0x3) * 8));
 return 0;
}
typedef enum {
 PCI_D0,
 PCI_D1,
 PCI_D2,
 PCI_D3hot,
 PCI_D3cold
} pci_power_t;
static inline int
vga_client_register(struct pci_dev *a, void *b, void *c, void *d)
{
 return -19;
}
struct i2c_algorithm;
struct i2c_adapter {
 struct i2c_controller ic;
 char name[48];
 const struct i2c_algorithm *algo;
 void *algo_data;
 int retries;
 void *data;
};
struct i2c_msg {
 uint16_t addr;
 uint16_t flags;
 uint16_t len;
 uint8_t *buf;
};
struct i2c_algorithm {
 u32 (*functionality)(struct i2c_adapter *);
 int (*master_xfer)(struct i2c_adapter *, struct i2c_msg *, int);
};
int i2c_transfer(struct i2c_adapter *, struct i2c_msg *, int);
static inline void *
i2c_get_adapdata(struct i2c_adapter *adap)
{
 return adap->data;
}
static inline void
i2c_set_adapdata(struct i2c_adapter *adap, void *data)
{
 adap->data = data;
}
static inline u32
ioread32(const volatile void *addr)
{
 return (*(volatile uint32_t *)addr);
}
static inline u64
ioread64(const volatile void *addr)
{
 return (*(volatile uint64_t *)addr);
}
static inline void
iowrite32(u32 val, volatile void *addr)
{
 *(volatile uint32_t *)addr = val;
}
static inline int
access_ok(int type, const void *addr, unsigned long size)
{
 return 1;
}
static inline int
capable(int cap)
{
 ((cap == 0x1) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../dev/pci/drm/drm_linux.h", 1659, "cap == CAP_SYS_ADMIN"));
 return suser((__curcpu->ci_self)->ci_curproc, 0);
}
typedef int pgprot_t;
void *kmap(struct vm_page *);
void kunmap(void *addr);
void *vmap(struct vm_page **, unsigned int, unsigned long, pgprot_t);
void vunmap(void *, size_t);
static inline unsigned long
roundup_pow_of_two(unsigned long x)
{
 return (1UL << flsl(x - 1));
}
static __inline void
udelay(unsigned long usecs)
{
 delay(usecs);
}
static __inline void
ndelay(unsigned long nsecs)
{
 delay(max(nsecs / 1000, 1));
}
static __inline void
usleep_range(unsigned long min, unsigned long max)
{
 delay(min);
}
static __inline void
mdelay(unsigned long msecs)
{
 int loops = msecs;
 while (loops--)
  delay(1000);
}
static __inline void
cpu_relax(void)
{
 do { __asm volatile( "999:	rd	%%ccr, %%g0			\n" "	rd	%%ccr, %%g0			\n" "	rd	%%ccr, %%g0			\n" "	.section .sun4v_pause_patch, \"ax\"	\n" "	.word	999b				\n" "	.word	0xb7802080	! pause	128	\n" "	.word	999b + 4			\n" "	nop					\n" "	.word	999b + 8			\n" "	nop					\n" "	.previous				\n" "	.section .sun4u_mtp_patch, \"ax\"	\n" "	.word	999b				\n" "	.word	0x81b01060	! sleep		\n" "	.word	999b + 4			\n" "	nop					\n" "	.word	999b + 8			\n" "	nop					\n" "	.previous				\n" : : : "memory"); } while (0);
 if (cold) {
  delay(tick);
  jiffies++;
 }
}
static inline uint32_t ror32(uint32_t word, unsigned int shift)
{
 return (word >> shift) | (word << (32 - shift));
}
static inline int
irqs_disabled(void)
{
 return (cold);
}
static inline int
in_dbg_master(void)
{
 return (db_is_active);
 return (0);
}
static inline int
power_supply_is_system_supplied(void)
{
 return (1);
}
static inline int
isascii(int c)
{
 return ((unsigned int)c <= 0177);
}
static inline int
isprint(int c)
{
 if (c == -1)
  return (0);
 if ((unsigned char)c >= 040 && (unsigned char)c <= 0176)
  return (1);
 return (0);
}
typedef unsigned int gfp_t;
struct vm_page *alloc_pages(unsigned int, unsigned int);
void __free_pages(struct vm_page *, unsigned int);
static inline struct vm_page *
alloc_page(unsigned int gfp_mask)
{
 return alloc_pages(gfp_mask, 0);
}
static inline void
__free_page(struct vm_page *page)
{
 return __free_pages(page, 0);
}
static inline unsigned int
get_order(size_t size)
{
 return flsl((size - 1) >> 13);
}
struct fb_var_screeninfo {
 int pixclock;
};
struct fb_info {
 struct fb_var_screeninfo var;
 void *par;
};
struct address_space;
typedef size_t acpi_size;
typedef int acpi_status;
struct acpi_table_header;
acpi_status acpi_get_table_with_size(const char *, int, struct acpi_table_header **, acpi_size *);
struct backlight_device;
struct backlight_properties {
 int type;
 int max_brightness;
 int brightness;
 int power;
};
struct backlight_ops {
 int (*update_status)(struct backlight_device *);
 int (*get_brightness)(struct backlight_device *);
};
struct backlight_device {
 const struct backlight_ops *ops;
 struct backlight_properties props;
 struct task task;
 void *data;
};
struct backlight_device *backlight_device_register(const char *, void *,
     void *, const struct backlight_ops *, struct backlight_properties *);
void backlight_device_unregister(struct backlight_device *);
static inline void
backlight_update_status(struct backlight_device *bd)
{
 bd->ops->update_status(bd);
}
void backlight_schedule_update_status(struct backlight_device *);
struct pwm_device;
static inline struct pwm_device *
pwm_get(struct device *dev, const char *consumer)
{
 return ERR_PTR(-19);
}
static inline void
pwm_put(struct pwm_device *pwm)
{
}
static inline unsigned int
pwm_get_duty_cycle(const struct pwm_device *pwm)
{
 return 0;
}
static inline int
pwm_config(struct pwm_device *pwm, int duty_ns, int period_ns)
{
 return -22;
}
static inline int
pwm_enable(struct pwm_device *pwm)
{
 return -22;
}
static inline void
pwm_disable(struct pwm_device *pwm)
{
}
struct scatterlist {
 dma_addr_t dma_address;
 unsigned int offset;
 unsigned int length;
};
struct sg_table {
 struct scatterlist *sgl;
 unsigned int nents;
 unsigned int orig_nents;
};
struct sg_page_iter {
 struct scatterlist *sg;
 unsigned int sg_pgoffset;
 unsigned int __nents;
};
int sg_alloc_table(struct sg_table *, unsigned int, gfp_t);
void sg_free_table(struct sg_table *);
static __inline void
__sg_page_iter_start(struct sg_page_iter *iter, struct scatterlist *sgl,
    unsigned int nents, unsigned long pgoffset)
{
 iter->sg = sgl;
 iter->sg_pgoffset = pgoffset - 1;
 iter->__nents = nents;
}
static inline _Bool
__sg_page_iter_next(struct sg_page_iter *iter)
{
 iter->sg_pgoffset++;
 while (iter->__nents > 0 &&
     iter->sg_pgoffset >= (iter->sg->length / (1 << 13))) {
  iter->sg_pgoffset -= (iter->sg->length / (1 << 13));
  iter->sg++;
  iter->__nents--;
 }
 return (iter->__nents > 0);
}
static inline paddr_t
sg_page_iter_dma_address(struct sg_page_iter *iter)
{
 return iter->sg->dma_address + (iter->sg_pgoffset << 13);
}
static inline struct vm_page *
sg_page_iter_page(struct sg_page_iter *iter)
{
 return PHYS_TO_VM_PAGE(sg_page_iter_dma_address(iter));
}
static inline struct vm_page *
sg_page(struct scatterlist *sgl)
{
 return PHYS_TO_VM_PAGE(sgl->dma_address);
}
size_t sg_copy_from_buffer(struct scatterlist *, unsigned int,
    const void *, size_t);
struct firmware {
 const u8 *data;
};
static inline int
request_firmware(const struct firmware **fw, const char *name,
    struct device *device)
{
 return -22;
}
static inline void
release_firmware(const struct firmware *fw)
{
}
void *memchr_inv(const void *, int, size_t);
typedef unsigned long drm_handle_t;
typedef unsigned int drm_context_t;
typedef unsigned int drm_drawable_t;
typedef unsigned int drm_magic_t;
struct drm_clip_rect {
 unsigned short x1;
 unsigned short y1;
 unsigned short x2;
 unsigned short y2;
};
struct drm_drawable_info {
 unsigned int num_rects;
 struct drm_clip_rect *rects;
};
struct drm_tex_region {
 unsigned char next;
 unsigned char prev;
 unsigned char in_use;
 unsigned char padding;
 unsigned int age;
};
struct drm_hw_lock {
 __volatile__ unsigned int lock;
 char padding[60];
};
struct drm_version {
 int version_major;
 int version_minor;
 int version_patchlevel;
 size_t name_len;
 char *name;
 size_t date_len;
 char *date;
 size_t desc_len;
 char *desc;
};
struct drm_unique {
 size_t unique_len;
 char *unique;
};
struct drm_list {
 int count;
 struct drm_version *version;
};
struct drm_block {
 int unused;
};
struct drm_control {
 enum {
  DRM_ADD_COMMAND,
  DRM_RM_COMMAND,
  DRM_INST_HANDLER,
  DRM_UNINST_HANDLER
 } func;
 int irq;
};
enum drm_map_type {
 _DRM_FRAME_BUFFER = 0,
 _DRM_REGISTERS = 1,
 _DRM_SHM = 2,
 _DRM_AGP = 3,
 _DRM_SCATTER_GATHER = 4,
 _DRM_CONSISTENT = 5,
 _DRM_GEM = 6
};
enum drm_map_flags {
 _DRM_RESTRICTED = 0x01,
 _DRM_READ_ONLY = 0x02,
 _DRM_LOCKED = 0x04,
 _DRM_KERNEL = 0x08,
 _DRM_WRITE_COMBINING = 0x10,
 _DRM_CONTAINS_LOCK = 0x20,
 _DRM_REMOVABLE = 0x40,
 _DRM_DRIVER = 0x80
};
struct drm_ctx_priv_map {
 unsigned int ctx_id;
 void *handle;
};
struct drm_map {
 unsigned long offset;
 unsigned long size;
 enum drm_map_type type;
 enum drm_map_flags flags;
 void *handle;
 int mtrr;
};
struct drm_client {
 int idx;
 int auth;
 unsigned long pid;
 unsigned long uid;
 unsigned long magic;
 unsigned long iocs;
};
enum drm_stat_type {
 _DRM_STAT_LOCK,
 _DRM_STAT_OPENS,
 _DRM_STAT_CLOSES,
 _DRM_STAT_IOCTLS,
 _DRM_STAT_LOCKS,
 _DRM_STAT_UNLOCKS,
 _DRM_STAT_VALUE,
 _DRM_STAT_BYTE,
 _DRM_STAT_COUNT,
 _DRM_STAT_IRQ,
 _DRM_STAT_PRIMARY,
 _DRM_STAT_SECONDARY,
 _DRM_STAT_DMA,
 _DRM_STAT_SPECIAL,
 _DRM_STAT_MISSED
};
struct drm_stats {
 unsigned long count;
 struct {
  unsigned long value;
  enum drm_stat_type type;
 } data[15];
};
enum drm_lock_flags {
 _DRM_LOCK_READY = 0x01,
 _DRM_LOCK_QUIESCENT = 0x02,
 _DRM_LOCK_FLUSH = 0x04,
 _DRM_LOCK_FLUSH_ALL = 0x08,
 _DRM_HALT_ALL_QUEUES = 0x10,
 _DRM_HALT_CUR_QUEUES = 0x20
};
struct drm_lock {
 int context;
 enum drm_lock_flags flags;
};
enum drm_dma_flags {
 _DRM_DMA_BLOCK = 0x01,
 _DRM_DMA_WHILE_LOCKED = 0x02,
 _DRM_DMA_PRIORITY = 0x04,
 _DRM_DMA_WAIT = 0x10,
 _DRM_DMA_SMALLER_OK = 0x20,
 _DRM_DMA_LARGER_OK = 0x40
};
struct drm_buf_desc {
 int count;
 int size;
 int low_mark;
 int high_mark;
 enum {
  _DRM_PAGE_ALIGN = 0x01,
  _DRM_AGP_BUFFER = 0x02,
  _DRM_SG_BUFFER = 0x04,
  _DRM_FB_BUFFER = 0x08,
  _DRM_PCI_BUFFER_RO = 0x10
 } flags;
 unsigned long agp_start;
};
struct drm_buf_info {
 int count;
 struct drm_buf_desc *list;
};
struct drm_buf_free {
 int count;
 int *list;
};
struct drm_buf_pub {
 int idx;
 int total;
 int used;
 void *address;
};
struct drm_buf_map {
 int count;
 void *virtual;
 struct drm_buf_pub *list;
};
struct drm_dma {
 int context;
 int send_count;
 int *send_indices;
 int *send_sizes;
 enum drm_dma_flags flags;
 int request_count;
 int request_size;
 int *request_indices;
 int *request_sizes;
 int granted_count;
};
enum drm_ctx_flags {
 _DRM_CONTEXT_PRESERVED = 0x01,
 _DRM_CONTEXT_2DONLY = 0x02
};
struct drm_ctx {
 drm_context_t handle;
 enum drm_ctx_flags flags;
};
struct drm_ctx_res {
 int count;
 struct drm_ctx *contexts;
};
struct drm_draw {
 drm_drawable_t handle;
};
typedef enum {
 DRM_DRAWABLE_CLIPRECTS
} drm_drawable_info_type_t;
struct drm_update_draw {
 drm_drawable_t handle;
 unsigned int type;
 unsigned int num;
 unsigned long long data;
};
struct drm_auth {
 drm_magic_t magic;
};
struct drm_irq_busid {
 int irq;
 int busnum;
 int devnum;
 int funcnum;
};
enum drm_vblank_seq_type {
 _DRM_VBLANK_ABSOLUTE = 0x0,
 _DRM_VBLANK_RELATIVE = 0x1,
 _DRM_VBLANK_HIGH_CRTC_MASK = 0x0000003e,
 _DRM_VBLANK_EVENT = 0x4000000,
 _DRM_VBLANK_FLIP = 0x8000000,
 _DRM_VBLANK_NEXTONMISS = 0x10000000,
 _DRM_VBLANK_SECONDARY = 0x20000000,
 _DRM_VBLANK_SIGNAL = 0x40000000
};
struct drm_wait_vblank_request {
 enum drm_vblank_seq_type type;
 unsigned int sequence;
 unsigned long signal;
};
struct drm_wait_vblank_reply {
 enum drm_vblank_seq_type type;
 unsigned int sequence;
 long tval_sec;
 long tval_usec;
};
union drm_wait_vblank {
 struct drm_wait_vblank_request request;
 struct drm_wait_vblank_reply reply;
};
struct drm_modeset_ctl {
 uint32_t crtc;
 uint32_t cmd;
};
struct drm_agp_mode {
 unsigned long mode;
};
struct drm_agp_buffer {
 unsigned long size;
 unsigned long handle;
 unsigned long type;
 unsigned long physical;
};
struct drm_agp_binding {
 unsigned long handle;
 unsigned long offset;
};
struct drm_agp_info {
 int agp_version_major;
 int agp_version_minor;
 unsigned long mode;
 unsigned long aperture_base;
 unsigned long aperture_size;
 unsigned long memory_allowed;
 unsigned long memory_used;
 unsigned short id_vendor;
 unsigned short id_device;
};
struct drm_scatter_gather {
 unsigned long size;
 unsigned long handle;
};
struct drm_set_version {
 int drm_di_major;
 int drm_di_minor;
 int drm_dd_major;
 int drm_dd_minor;
};
struct drm_gem_close {
 uint32_t handle;
 uint32_t pad;
};
struct drm_gem_flink {
 uint32_t handle;
 uint32_t name;
};
struct drm_gem_open {
 uint32_t name;
 uint32_t handle;
 uint64_t size;
};
struct drm_get_cap {
 uint64_t capability;
 uint64_t value;
};
struct drm_set_client_cap {
 uint64_t capability;
 uint64_t value;
};
struct drm_prime_handle {
 uint32_t handle;
 uint32_t flags;
 int32_t fd;
};
struct drm_event {
 u_int32_t type;
 u_int32_t length;
};
struct drm_event_vblank {
 struct drm_event base;
 u_int64_t user_data;
 u_int32_t tv_sec;
 u_int32_t tv_usec;
 u_int32_t sequence;
 u_int32_t reserved;
};
struct drm_pciinfo {
 uint16_t domain;
 uint8_t bus;
 uint8_t dev;
 uint8_t func;
 uint16_t vendor_id;
 uint16_t device_id;
 uint16_t subvendor_id;
 uint16_t subdevice_id;
 uint8_t revision_id;
};
struct drm_mode_modeinfo {
 __u32 clock;
 __u16 hdisplay;
 __u16 hsync_start;
 __u16 hsync_end;
 __u16 htotal;
 __u16 hskew;
 __u16 vdisplay;
 __u16 vsync_start;
 __u16 vsync_end;
 __u16 vtotal;
 __u16 vscan;
 __u32 vrefresh;
 __u32 flags;
 __u32 type;
 char name[32];
};
struct drm_mode_card_res {
 __u64 fb_id_ptr;
 __u64 crtc_id_ptr;
 __u64 connector_id_ptr;
 __u64 encoder_id_ptr;
 __u32 count_fbs;
 __u32 count_crtcs;
 __u32 count_connectors;
 __u32 count_encoders;
 __u32 min_width;
 __u32 max_width;
 __u32 min_height;
 __u32 max_height;
};
struct drm_mode_crtc {
 __u64 set_connectors_ptr;
 __u32 count_connectors;
 __u32 crtc_id;
 __u32 fb_id;
 __u32 x;
 __u32 y;
 __u32 gamma_size;
 __u32 mode_valid;
 struct drm_mode_modeinfo mode;
};
struct drm_mode_set_plane {
 __u32 plane_id;
 __u32 crtc_id;
 __u32 fb_id;
 __u32 flags;
 __s32 crtc_x;
 __s32 crtc_y;
 __u32 crtc_w;
 __u32 crtc_h;
 __u32 src_x;
 __u32 src_y;
 __u32 src_h;
 __u32 src_w;
};
struct drm_mode_get_plane {
 __u32 plane_id;
 __u32 crtc_id;
 __u32 fb_id;
 __u32 possible_crtcs;
 __u32 gamma_size;
 __u32 count_format_types;
 __u64 format_type_ptr;
};
struct drm_mode_get_plane_res {
 __u64 plane_id_ptr;
 __u32 count_planes;
};
struct drm_mode_get_encoder {
 __u32 encoder_id;
 __u32 encoder_type;
 __u32 crtc_id;
 __u32 possible_crtcs;
 __u32 possible_clones;
};
struct drm_mode_get_connector {
 __u64 encoders_ptr;
 __u64 modes_ptr;
 __u64 props_ptr;
 __u64 prop_values_ptr;
 __u32 count_modes;
 __u32 count_props;
 __u32 count_encoders;
 __u32 encoder_id;
 __u32 connector_id;
 __u32 connector_type;
 __u32 connector_type_id;
 __u32 connection;
 __u32 mm_width;
 __u32 mm_height;
 __u32 subpixel;
 __u32 pad;
};
struct drm_mode_property_enum {
 __u64 value;
 char name[32];
};
struct drm_mode_get_property {
 __u64 values_ptr;
 __u64 enum_blob_ptr;
 __u32 prop_id;
 __u32 flags;
 char name[32];
 __u32 count_values;
 __u32 count_enum_blobs;
};
struct drm_mode_connector_set_property {
 __u64 value;
 __u32 prop_id;
 __u32 connector_id;
};
struct drm_mode_obj_get_properties {
 __u64 props_ptr;
 __u64 prop_values_ptr;
 __u32 count_props;
 __u32 obj_id;
 __u32 obj_type;
};
struct drm_mode_obj_set_property {
 __u64 value;
 __u32 prop_id;
 __u32 obj_id;
 __u32 obj_type;
};
struct drm_mode_get_blob {
 __u32 blob_id;
 __u32 length;
 __u64 data;
};
struct drm_mode_fb_cmd {
 __u32 fb_id;
 __u32 width;
 __u32 height;
 __u32 pitch;
 __u32 bpp;
 __u32 depth;
 __u32 handle;
};
struct drm_mode_fb_cmd2 {
 __u32 fb_id;
 __u32 width;
 __u32 height;
 __u32 pixel_format;
 __u32 flags;
 __u32 handles[4];
 __u32 pitches[4];
 __u32 offsets[4];
 __u64 modifier[4];
};
struct drm_mode_fb_dirty_cmd {
 __u32 fb_id;
 __u32 flags;
 __u32 color;
 __u32 num_clips;
 __u64 clips_ptr;
};
struct drm_mode_mode_cmd {
 __u32 connector_id;
 struct drm_mode_modeinfo mode;
};
struct drm_mode_cursor {
 __u32 flags;
 __u32 crtc_id;
 __s32 x;
 __s32 y;
 __u32 width;
 __u32 height;
 __u32 handle;
};
struct drm_mode_cursor2 {
 __u32 flags;
 __u32 crtc_id;
 __s32 x;
 __s32 y;
 __u32 width;
 __u32 height;
 __u32 handle;
 __s32 hot_x;
 __s32 hot_y;
};
struct drm_mode_crtc_lut {
 __u32 crtc_id;
 __u32 gamma_size;
 __u64 red;
 __u64 green;
 __u64 blue;
};
struct drm_mode_crtc_page_flip {
 __u32 crtc_id;
 __u32 fb_id;
 __u32 flags;
 __u32 reserved;
 __u64 user_data;
};
struct drm_mode_create_dumb {
 uint32_t height;
 uint32_t width;
 uint32_t bpp;
 uint32_t flags;
 uint32_t handle;
 uint32_t pitch;
 uint64_t size;
};
struct drm_mode_map_dumb {
 __u32 handle;
 __u32 pad;
 __u64 offset;
};
struct drm_mode_destroy_dumb {
 uint32_t handle;
};
struct drm_mode_atomic {
 __u32 flags;
 __u32 count_objs;
 __u64 objs_ptr;
 __u64 count_props_ptr;
 __u64 props_ptr;
 __u64 prop_values_ptr;
 __u64 reserved;
 __u64 user_data;
};
struct drm_mode_create_blob {
 __u64 data;
 __u32 length;
 __u32 blob_id;
};
struct drm_mode_destroy_blob {
 __u32 blob_id;
};
typedef struct drm_clip_rect drm_clip_rect_t;
typedef struct drm_drawable_info drm_drawable_info_t;
typedef struct drm_tex_region drm_tex_region_t;
typedef struct drm_hw_lock drm_hw_lock_t;
typedef struct drm_version drm_version_t;
typedef struct drm_unique drm_unique_t;
typedef struct drm_list drm_list_t;
typedef struct drm_block drm_block_t;
typedef struct drm_control drm_control_t;
typedef enum drm_map_type drm_map_type_t;
typedef enum drm_map_flags drm_map_flags_t;
typedef struct drm_ctx_priv_map drm_ctx_priv_map_t;
typedef struct drm_map drm_map_t;
typedef struct drm_client drm_client_t;
typedef enum drm_stat_type drm_stat_type_t;
typedef struct drm_stats drm_stats_t;
typedef enum drm_lock_flags drm_lock_flags_t;
typedef struct drm_lock drm_lock_t;
typedef enum drm_dma_flags drm_dma_flags_t;
typedef struct drm_buf_desc drm_buf_desc_t;
typedef struct drm_buf_info drm_buf_info_t;
typedef struct drm_buf_free drm_buf_free_t;
typedef struct drm_buf_pub drm_buf_pub_t;
typedef struct drm_buf_map drm_buf_map_t;
typedef struct drm_dma drm_dma_t;
typedef union drm_wait_vblank drm_wait_vblank_t;
typedef struct drm_agp_mode drm_agp_mode_t;
typedef enum drm_ctx_flags drm_ctx_flags_t;
typedef struct drm_ctx drm_ctx_t;
typedef struct drm_ctx_res drm_ctx_res_t;
typedef struct drm_draw drm_draw_t;
typedef struct drm_update_draw drm_update_draw_t;
typedef struct drm_auth drm_auth_t;
typedef struct drm_irq_busid drm_irq_busid_t;
typedef enum drm_vblank_seq_type drm_vblank_seq_type_t;
typedef struct drm_agp_buffer drm_agp_buffer_t;
typedef struct drm_agp_binding drm_agp_binding_t;
typedef struct drm_agp_info drm_agp_info_t;
typedef struct drm_scatter_gather drm_scatter_gather_t;
typedef struct drm_set_version drm_set_version_t;
enum drm_mm_search_flags {
 DRM_MM_SEARCH_DEFAULT = 0,
 DRM_MM_SEARCH_BEST = 1 << 0,
 DRM_MM_SEARCH_BELOW = 1 << 1,
};
enum drm_mm_allocator_flags {
 DRM_MM_CREATE_DEFAULT = 0,
 DRM_MM_CREATE_TOP = 1 << 0,
};
struct drm_mm_node {
 struct list_head node_list;
 struct list_head hole_stack;
 unsigned hole_follows : 1;
 unsigned scanned_block : 1;
 unsigned scanned_prev_free : 1;
 unsigned scanned_next_free : 1;
 unsigned scanned_preceeds_hole : 1;
 unsigned allocated : 1;
 unsigned long color;
 u64 start;
 u64 size;
 struct drm_mm *mm;
};
struct drm_mm {
 struct list_head hole_stack;
 struct drm_mm_node head_node;
 unsigned int scan_check_range : 1;
 unsigned scan_alignment;
 unsigned long scan_color;
 u64 scan_size;
 u64 scan_hit_start;
 u64 scan_hit_end;
 unsigned scanned_blocks;
 u64 scan_start;
 u64 scan_end;
 struct drm_mm_node *prev_scanned_node;
 void (*color_adjust)(struct drm_mm_node *node, unsigned long color,
        u64 *start, u64 *end);
};
static inline _Bool drm_mm_node_allocated(struct drm_mm_node *node)
{
 return node->allocated;
}
static inline _Bool drm_mm_initialized(struct drm_mm *mm)
{
 return mm->hole_stack.next;
}
static inline u64 __drm_mm_hole_node_start(struct drm_mm_node *hole_node)
{
 return hole_node->start + hole_node->size;
}
static inline u64 drm_mm_hole_node_start(struct drm_mm_node *hole_node)
{
 ((!(!hole_node->hole_follows)) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../dev/pci/drm/drm_mm.h", 149, "!(!hole_node->hole_follows)"));
 return __drm_mm_hole_node_start(hole_node);
}
static inline u64 __drm_mm_hole_node_end(struct drm_mm_node *hole_node)
{
 return ({ __typeof( ((typeof(*(hole_node)) *)0)->node_list ) *__mptr = (((hole_node)->node_list.next)); (typeof(*(hole_node)) *)( (char *)__mptr - __builtin_offsetof(typeof(*(hole_node)), node_list) );})->start;
}
static inline u64 drm_mm_hole_node_end(struct drm_mm_node *hole_node)
{
 return __drm_mm_hole_node_end(hole_node);
}
int drm_mm_reserve_node(struct drm_mm *mm, struct drm_mm_node *node);
int drm_mm_insert_node_generic(struct drm_mm *mm,
          struct drm_mm_node *node,
          u64 size,
          unsigned alignment,
          unsigned long color,
          enum drm_mm_search_flags sflags,
          enum drm_mm_allocator_flags aflags);
static inline int drm_mm_insert_node(struct drm_mm *mm,
         struct drm_mm_node *node,
         u64 size,
         unsigned alignment,
         enum drm_mm_search_flags flags)
{
 return drm_mm_insert_node_generic(mm, node, size, alignment, 0, flags,
       DRM_MM_CREATE_DEFAULT);
}
int drm_mm_insert_node_in_range_generic(struct drm_mm *mm,
     struct drm_mm_node *node,
     u64 size,
     unsigned alignment,
     unsigned long color,
     u64 start,
     u64 end,
     enum drm_mm_search_flags sflags,
     enum drm_mm_allocator_flags aflags);
static inline int drm_mm_insert_node_in_range(struct drm_mm *mm,
           struct drm_mm_node *node,
           u64 size,
           unsigned alignment,
           u64 start,
           u64 end,
           enum drm_mm_search_flags flags)
{
 return drm_mm_insert_node_in_range_generic(mm, node, size, alignment,
         0, start, end, flags,
         DRM_MM_CREATE_DEFAULT);
}
void drm_mm_remove_node(struct drm_mm_node *node);
void drm_mm_replace_node(struct drm_mm_node *old, struct drm_mm_node *new);
void drm_mm_init(struct drm_mm *mm,
   u64 start,
   u64 size);
void drm_mm_takedown(struct drm_mm *mm);
_Bool drm_mm_clean(struct drm_mm *mm);
void drm_mm_init_scan(struct drm_mm *mm,
        u64 size,
        unsigned alignment,
        unsigned long color);
void drm_mm_init_scan_with_range(struct drm_mm *mm,
     u64 size,
     unsigned alignment,
     unsigned long color,
     u64 start,
     u64 end);
_Bool drm_mm_scan_add_block(struct drm_mm_node *node);
_Bool drm_mm_scan_remove_block(struct drm_mm_node *node);
void drm_mm_debug_table(struct drm_mm *mm, const char *prefix);
struct rb_node {
 struct { struct rb_node *rbe_left; struct rb_node *rbe_right; struct rb_node *rbe_parent; int rbe_color; } __entry;
};
struct rb_root {
 struct rb_node *rb_node;
};
int panic_cmp(struct rb_node *one, struct rb_node *two);
struct linux_root { struct rb_node *rbh_root; };
 void linux_root_RB_INSERT_COLOR(struct linux_root *, struct rb_node *); void linux_root_RB_REMOVE_COLOR(struct linux_root *, struct rb_node *, struct rb_node *); struct rb_node *linux_root_RB_REMOVE(struct linux_root *, struct rb_node *); struct rb_node *linux_root_RB_INSERT(struct linux_root *, struct rb_node *); struct rb_node *linux_root_RB_FIND(struct linux_root *, struct rb_node *); struct rb_node *linux_root_RB_NFIND(struct linux_root *, struct rb_node *); struct rb_node *linux_root_RB_NEXT(struct rb_node *); struct rb_node *linux_root_RB_PREV(struct rb_node *); struct rb_node *linux_root_RB_MINMAX(struct linux_root *, int);;
static inline void
rb_link_node(struct rb_node *node, struct rb_node *parent,
    struct rb_node **rb_link)
{
 ((node))->__entry.rbe_parent = (parent);
 ((node))->__entry.rbe_color = (1);
 node->__entry.rbe_left = node->__entry.rbe_right = ((void *)0);
 *rb_link = node;
}
static inline void
rb_replace_node(struct rb_node *victim, struct rb_node *new,
    struct rb_root *root)
{
 struct rb_node *p;
 p = (victim)->__entry.rbe_parent;
 if (p) {
  if (p->__entry.rbe_left == victim)
   p->__entry.rbe_left = new;
  else
   p->__entry.rbe_right = new;
 } else
  root->rb_node = new;
 if (victim->__entry.rbe_left)
  ((victim->__entry.rbe_left))->__entry.rbe_parent = (new);
 if (victim->__entry.rbe_right)
  ((victim->__entry.rbe_right))->__entry.rbe_parent = (new);
 *new = *victim;
}
struct drm_vma_offset_file {
 struct rb_node vm_rb;
 struct file *vm_filp;
 unsigned long vm_count;
};
struct drm_vma_offset_node {
 rwlock_t vm_lock;
 struct drm_mm_node vm_node;
 struct rb_node vm_rb;
 struct rb_root vm_files;
};
struct drm_vma_offset_manager {
 rwlock_t vm_lock;
 struct rb_root vm_addr_space_rb;
 struct drm_mm vm_addr_space_mm;
};
void drm_vma_offset_manager_init(struct drm_vma_offset_manager *mgr,
     unsigned long page_offset, unsigned long size);
void drm_vma_offset_manager_destroy(struct drm_vma_offset_manager *mgr);
struct drm_vma_offset_node *drm_vma_offset_lookup(struct drm_vma_offset_manager *mgr,
        unsigned long start,
        unsigned long pages);
struct drm_vma_offset_node *drm_vma_offset_lookup_locked(struct drm_vma_offset_manager *mgr,
          unsigned long start,
          unsigned long pages);
int drm_vma_offset_add(struct drm_vma_offset_manager *mgr,
         struct drm_vma_offset_node *node, unsigned long pages);
void drm_vma_offset_remove(struct drm_vma_offset_manager *mgr,
      struct drm_vma_offset_node *node);
int drm_vma_node_allow(struct drm_vma_offset_node *node, struct file *filp);
void drm_vma_node_revoke(struct drm_vma_offset_node *node, struct file *filp);
_Bool drm_vma_node_is_allowed(struct drm_vma_offset_node *node,
        struct file *filp);
static inline struct drm_vma_offset_node *
drm_vma_offset_exact_lookup(struct drm_vma_offset_manager *mgr,
       unsigned long start,
       unsigned long pages)
{
 struct drm_vma_offset_node *node;
 node = drm_vma_offset_lookup(mgr, start, pages);
 return (node && node->vm_node.start == start) ? node : ((void *)0);
}
static inline void drm_vma_offset_lock_lookup(struct drm_vma_offset_manager *mgr)
{
 _rw_enter_read(&mgr->vm_lock );
}
static inline void drm_vma_offset_unlock_lookup(struct drm_vma_offset_manager *mgr)
{
 _rw_exit_read(&mgr->vm_lock );
}
static inline void drm_vma_node_reset(struct drm_vma_offset_node *node)
{
 __builtin_memset((node), (0), (sizeof(*node)));
 node->vm_files = (struct rb_root) { ((void *)0) };
 _rw_init_flags(&node->vm_lock, "drmvma", 0, ((void *)0));
}
static inline unsigned long drm_vma_node_start(struct drm_vma_offset_node *node)
{
 return node->vm_node.start;
}
static inline unsigned long drm_vma_node_size(struct drm_vma_offset_node *node)
{
 return node->vm_node.size;
}
static inline _Bool drm_vma_node_has_offset(struct drm_vma_offset_node *node)
{
 return drm_mm_node_allocated(&node->vm_node);
}
static inline __u64 drm_vma_node_offset_addr(struct drm_vma_offset_node *node)
{
 return ((__u64)node->vm_node.start) << 13;
}
static inline void drm_vma_node_unmap(struct drm_vma_offset_node *node,
          struct address_space *file_mapping)
{
 if (file_mapping && drm_vma_node_has_offset(node))
  ;
}
static inline int drm_vma_node_verify_access(struct drm_vma_offset_node *node,
          struct file *filp)
{
 return drm_vma_node_is_allowed(node, filp) ? 0 : -13;
}
enum hdmi_infoframe_type {
 HDMI_INFOFRAME_TYPE_VENDOR = 0x81,
 HDMI_INFOFRAME_TYPE_AVI = 0x82,
 HDMI_INFOFRAME_TYPE_SPD = 0x83,
 HDMI_INFOFRAME_TYPE_AUDIO = 0x84,
};
struct hdmi_any_infoframe {
 enum hdmi_infoframe_type type;
 unsigned char version;
 unsigned char length;
};
enum hdmi_colorspace {
 HDMI_COLORSPACE_RGB,
 HDMI_COLORSPACE_YUV422,
 HDMI_COLORSPACE_YUV444,
 HDMI_COLORSPACE_YUV420,
 HDMI_COLORSPACE_RESERVED4,
 HDMI_COLORSPACE_RESERVED5,
 HDMI_COLORSPACE_RESERVED6,
 HDMI_COLORSPACE_IDO_DEFINED,
};
enum hdmi_scan_mode {
 HDMI_SCAN_MODE_NONE,
 HDMI_SCAN_MODE_OVERSCAN,
 HDMI_SCAN_MODE_UNDERSCAN,
 HDMI_SCAN_MODE_RESERVED,
};
enum hdmi_colorimetry {
 HDMI_COLORIMETRY_NONE,
 HDMI_COLORIMETRY_ITU_601,
 HDMI_COLORIMETRY_ITU_709,
 HDMI_COLORIMETRY_EXTENDED,
};
enum hdmi_picture_aspect {
 HDMI_PICTURE_ASPECT_NONE,
 HDMI_PICTURE_ASPECT_4_3,
 HDMI_PICTURE_ASPECT_16_9,
 HDMI_PICTURE_ASPECT_RESERVED,
};
enum hdmi_active_aspect {
 HDMI_ACTIVE_ASPECT_16_9_TOP = 2,
 HDMI_ACTIVE_ASPECT_14_9_TOP = 3,
 HDMI_ACTIVE_ASPECT_16_9_CENTER = 4,
 HDMI_ACTIVE_ASPECT_PICTURE = 8,
 HDMI_ACTIVE_ASPECT_4_3 = 9,
 HDMI_ACTIVE_ASPECT_16_9 = 10,
 HDMI_ACTIVE_ASPECT_14_9 = 11,
 HDMI_ACTIVE_ASPECT_4_3_SP_14_9 = 13,
 HDMI_ACTIVE_ASPECT_16_9_SP_14_9 = 14,
 HDMI_ACTIVE_ASPECT_16_9_SP_4_3 = 15,
};
enum hdmi_extended_colorimetry {
 HDMI_EXTENDED_COLORIMETRY_XV_YCC_601,
 HDMI_EXTENDED_COLORIMETRY_XV_YCC_709,
 HDMI_EXTENDED_COLORIMETRY_S_YCC_601,
 HDMI_EXTENDED_COLORIMETRY_ADOBE_YCC_601,
 HDMI_EXTENDED_COLORIMETRY_ADOBE_RGB,
 HDMI_EXTENDED_COLORIMETRY_BT2020_CONST_LUM,
 HDMI_EXTENDED_COLORIMETRY_BT2020,
 HDMI_EXTENDED_COLORIMETRY_RESERVED,
};
enum hdmi_quantization_range {
 HDMI_QUANTIZATION_RANGE_DEFAULT,
 HDMI_QUANTIZATION_RANGE_LIMITED,
 HDMI_QUANTIZATION_RANGE_FULL,
 HDMI_QUANTIZATION_RANGE_RESERVED,
};
enum hdmi_nups {
 HDMI_NUPS_UNKNOWN,
 HDMI_NUPS_HORIZONTAL,
 HDMI_NUPS_VERTICAL,
 HDMI_NUPS_BOTH,
};
enum hdmi_ycc_quantization_range {
 HDMI_YCC_QUANTIZATION_RANGE_LIMITED,
 HDMI_YCC_QUANTIZATION_RANGE_FULL,
};
enum hdmi_content_type {
 HDMI_CONTENT_TYPE_GRAPHICS,
 HDMI_CONTENT_TYPE_PHOTO,
 HDMI_CONTENT_TYPE_CINEMA,
 HDMI_CONTENT_TYPE_GAME,
};
struct hdmi_avi_infoframe {
 enum hdmi_infoframe_type type;
 unsigned char version;
 unsigned char length;
 enum hdmi_colorspace colorspace;
 enum hdmi_scan_mode scan_mode;
 enum hdmi_colorimetry colorimetry;
 enum hdmi_picture_aspect picture_aspect;
 enum hdmi_active_aspect active_aspect;
 _Bool itc;
 enum hdmi_extended_colorimetry extended_colorimetry;
 enum hdmi_quantization_range quantization_range;
 enum hdmi_nups nups;
 unsigned char video_code;
 enum hdmi_ycc_quantization_range ycc_quantization_range;
 enum hdmi_content_type content_type;
 unsigned char pixel_repeat;
 unsigned short top_bar;
 unsigned short bottom_bar;
 unsigned short left_bar;
 unsigned short right_bar;
};
int hdmi_avi_infoframe_init(struct hdmi_avi_infoframe *frame);
ssize_t hdmi_avi_infoframe_pack(struct hdmi_avi_infoframe *frame, void *buffer,
    size_t size);
enum hdmi_spd_sdi {
 HDMI_SPD_SDI_UNKNOWN,
 HDMI_SPD_SDI_DSTB,
 HDMI_SPD_SDI_DVDP,
 HDMI_SPD_SDI_DVHS,
 HDMI_SPD_SDI_HDDVR,
 HDMI_SPD_SDI_DVC,
 HDMI_SPD_SDI_DSC,
 HDMI_SPD_SDI_VCD,
 HDMI_SPD_SDI_GAME,
 HDMI_SPD_SDI_PC,
 HDMI_SPD_SDI_BD,
 HDMI_SPD_SDI_SACD,
 HDMI_SPD_SDI_HDDVD,
 HDMI_SPD_SDI_PMP,
};
struct hdmi_spd_infoframe {
 enum hdmi_infoframe_type type;
 unsigned char version;
 unsigned char length;
 char vendor[8];
 char product[16];
 enum hdmi_spd_sdi sdi;
};
int hdmi_spd_infoframe_init(struct hdmi_spd_infoframe *frame,
       const char *vendor, const char *product);
ssize_t hdmi_spd_infoframe_pack(struct hdmi_spd_infoframe *frame, void *buffer,
    size_t size);
enum hdmi_audio_coding_type {
 HDMI_AUDIO_CODING_TYPE_STREAM,
 HDMI_AUDIO_CODING_TYPE_PCM,
 HDMI_AUDIO_CODING_TYPE_AC3,
 HDMI_AUDIO_CODING_TYPE_MPEG1,
 HDMI_AUDIO_CODING_TYPE_MP3,
 HDMI_AUDIO_CODING_TYPE_MPEG2,
 HDMI_AUDIO_CODING_TYPE_AAC_LC,
 HDMI_AUDIO_CODING_TYPE_DTS,
 HDMI_AUDIO_CODING_TYPE_ATRAC,
 HDMI_AUDIO_CODING_TYPE_DSD,
 HDMI_AUDIO_CODING_TYPE_EAC3,
 HDMI_AUDIO_CODING_TYPE_DTS_HD,
 HDMI_AUDIO_CODING_TYPE_MLP,
 HDMI_AUDIO_CODING_TYPE_DST,
 HDMI_AUDIO_CODING_TYPE_WMA_PRO,
 HDMI_AUDIO_CODING_TYPE_CXT,
};
enum hdmi_audio_sample_size {
 HDMI_AUDIO_SAMPLE_SIZE_STREAM,
 HDMI_AUDIO_SAMPLE_SIZE_16,
 HDMI_AUDIO_SAMPLE_SIZE_20,
 HDMI_AUDIO_SAMPLE_SIZE_24,
};
enum hdmi_audio_sample_frequency {
 HDMI_AUDIO_SAMPLE_FREQUENCY_STREAM,
 HDMI_AUDIO_SAMPLE_FREQUENCY_32000,
 HDMI_AUDIO_SAMPLE_FREQUENCY_44100,
 HDMI_AUDIO_SAMPLE_FREQUENCY_48000,
 HDMI_AUDIO_SAMPLE_FREQUENCY_88200,
 HDMI_AUDIO_SAMPLE_FREQUENCY_96000,
 HDMI_AUDIO_SAMPLE_FREQUENCY_176400,
 HDMI_AUDIO_SAMPLE_FREQUENCY_192000,
};
enum hdmi_audio_coding_type_ext {
 HDMI_AUDIO_CODING_TYPE_EXT_CT,
 HDMI_AUDIO_CODING_TYPE_EXT_HE_AAC,
 HDMI_AUDIO_CODING_TYPE_EXT_HE_AAC_V2,
 HDMI_AUDIO_CODING_TYPE_EXT_MPEG_SURROUND,
 HDMI_AUDIO_CODING_TYPE_EXT_MPEG4_HE_AAC,
 HDMI_AUDIO_CODING_TYPE_EXT_MPEG4_HE_AAC_V2,
 HDMI_AUDIO_CODING_TYPE_EXT_MPEG4_AAC_LC,
 HDMI_AUDIO_CODING_TYPE_EXT_DRA,
 HDMI_AUDIO_CODING_TYPE_EXT_MPEG4_HE_AAC_SURROUND,
 HDMI_AUDIO_CODING_TYPE_EXT_MPEG4_AAC_LC_SURROUND = 10,
};
struct hdmi_audio_infoframe {
 enum hdmi_infoframe_type type;
 unsigned char version;
 unsigned char length;
 unsigned char channels;
 enum hdmi_audio_coding_type coding_type;
 enum hdmi_audio_sample_size sample_size;
 enum hdmi_audio_sample_frequency sample_frequency;
 enum hdmi_audio_coding_type_ext coding_type_ext;
 unsigned char channel_allocation;
 unsigned char level_shift_value;
 _Bool downmix_inhibit;
};
int hdmi_audio_infoframe_init(struct hdmi_audio_infoframe *frame);
ssize_t hdmi_audio_infoframe_pack(struct hdmi_audio_infoframe *frame,
      void *buffer, size_t size);
enum hdmi_3d_structure {
 HDMI_3D_STRUCTURE_INVALID = -1,
 HDMI_3D_STRUCTURE_FRAME_PACKING = 0,
 HDMI_3D_STRUCTURE_FIELD_ALTERNATIVE,
 HDMI_3D_STRUCTURE_LINE_ALTERNATIVE,
 HDMI_3D_STRUCTURE_SIDE_BY_SIDE_FULL,
 HDMI_3D_STRUCTURE_L_DEPTH,
 HDMI_3D_STRUCTURE_L_DEPTH_GFX_GFX_DEPTH,
 HDMI_3D_STRUCTURE_TOP_AND_BOTTOM,
 HDMI_3D_STRUCTURE_SIDE_BY_SIDE_HALF = 8,
};
struct hdmi_vendor_infoframe {
 enum hdmi_infoframe_type type;
 unsigned char version;
 unsigned char length;
 unsigned int oui;
 u8 vic;
 enum hdmi_3d_structure s3d_struct;
 unsigned int s3d_ext_data;
};
int hdmi_vendor_infoframe_init(struct hdmi_vendor_infoframe *frame);
ssize_t hdmi_vendor_infoframe_pack(struct hdmi_vendor_infoframe *frame,
       void *buffer, size_t size);
union hdmi_vendor_any_infoframe {
 struct {
  enum hdmi_infoframe_type type;
  unsigned char version;
  unsigned char length;
  unsigned int oui;
 } any;
 struct hdmi_vendor_infoframe hdmi;
};
union hdmi_infoframe {
 struct hdmi_any_infoframe any;
 struct hdmi_avi_infoframe avi;
 struct hdmi_spd_infoframe spd;
 union hdmi_vendor_any_infoframe vendor;
 struct hdmi_audio_infoframe audio;
};
ssize_t
hdmi_infoframe_pack(union hdmi_infoframe *frame, void *buffer, size_t size);
int hdmi_infoframe_unpack(union hdmi_infoframe *frame, void *buffer);
void hdmi_infoframe_log(const char *level, struct device *dev,
   union hdmi_infoframe *frame);
struct ww_class {
 volatile u_long stamp;
 const char *name;
};
struct ww_acquire_ctx {
 u_long stamp;
 struct ww_class *ww_class;
};
struct ww_mutex {
 struct mutex lock;
 volatile int acquired;
 volatile struct ww_acquire_ctx *ctx;
 volatile struct proc *owner;
};
static inline void
ww_acquire_init(struct ww_acquire_ctx *ctx, struct ww_class *ww_class) {
 ctx->stamp = __sync_fetch_and_add(&ww_class->stamp, 1);
 ctx->ww_class = ww_class;
}
static inline void
ww_acquire_done(__attribute__((__unused__)) struct ww_acquire_ctx *ctx) {
}
static inline void
ww_acquire_fini(__attribute__((__unused__)) struct ww_acquire_ctx *ctx) {
}
static inline void
ww_mutex_init(struct ww_mutex *lock, struct ww_class *ww_class) {
 do { (void)(((void *)0)); (void)(0); __mtx_init((&lock->lock), ((((0)) > 0 && ((0)) < 12) ? 12 : ((0)))); } while (0);
 lock->acquired = 0;
 lock->ctx = ((void *)0);
 lock->owner = ((void *)0);
}
static inline _Bool
ww_mutex_is_locked(struct ww_mutex *lock) {
 _Bool res = 0;
 __mtx_enter(&lock->lock );
 if (lock->acquired > 0) res = 1;
 __mtx_leave(&lock->lock );
 return res;
}
static inline int
ww_mutex_trylock(struct ww_mutex *lock) {
 int res = 0;
 __mtx_enter(&lock->lock );
 if (lock->acquired == 0) {
  ((lock->ctx == ((void *)0)) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../dev/pci/drm/linux_ww_mutex.h", 107, "lock->ctx == NULL"));
  lock->acquired = 1;
  lock->owner = (__curcpu->ci_self)->ci_curproc;
  res = 1;
 }
 __mtx_leave(&lock->lock );
 return res;
}
static inline int
__ww_mutex_lock(struct ww_mutex *lock, struct ww_acquire_ctx *ctx, _Bool slow, _Bool intr) {
 int err;
 __mtx_enter(&lock->lock );
 for (;;) {
  if (lock->acquired == 0) {
   ((lock->ctx == ((void *)0)) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../dev/pci/drm/linux_ww_mutex.h", 133, "lock->ctx == NULL"));
   lock->acquired = 1;
   lock->ctx = ctx;
   lock->owner = (__curcpu->ci_self)->ci_curproc;
   err = 0;
   break;
  }
  else if (lock->owner == (__curcpu->ci_self)->ci_curproc) {
   err = -37;
   break;
  }
  else {
   if (slow || ctx == ((void *)0) || ctx->stamp < lock->ctx->stamp) {
    int s = msleep(lock, &lock->lock,
            intr ? 0x100 : 0,
            ctx ? ctx->ww_class->name : "ww_mutex_lock", 0);
    if (intr && (s == 4 || s == -1)) {
     err = -4;
     break;
    }
   }
   else {
    err = -11;
    break;
   }
  }
 }
 __mtx_leave(&lock->lock );
 return err;
}
static inline int
ww_mutex_lock(struct ww_mutex *lock, struct ww_acquire_ctx *ctx) {
 return __ww_mutex_lock(lock, ctx, 0, 0);
}
static inline void
ww_mutex_lock_slow(struct ww_mutex *lock, struct ww_acquire_ctx *ctx) {
 (void)__ww_mutex_lock(lock, ctx, 1, 0);
}
static inline int
ww_mutex_lock_interruptible(struct ww_mutex *lock, struct ww_acquire_ctx *ctx) {
 return __ww_mutex_lock(lock, ctx, 0, 1);
}
static inline int
ww_mutex_lock_slow_interruptible(struct ww_mutex *lock, struct ww_acquire_ctx *ctx) {
 return __ww_mutex_lock(lock, ctx, 1, 1);
}
static inline void
ww_mutex_unlock(struct ww_mutex *lock) {
 __mtx_enter(&lock->lock );
 ((lock->owner == (__curcpu->ci_self)->ci_curproc) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../dev/pci/drm/linux_ww_mutex.h", 219, "lock->owner == curproc"));
 ((lock->acquired == 1) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../dev/pci/drm/linux_ww_mutex.h", 220, "lock->acquired == 1"));
 lock->acquired = 0;
 lock->ctx = ((void *)0);
 lock->owner = ((void *)0);
 __mtx_leave(&lock->lock );
 wakeup(lock);
}
static inline void
ww_mutex_destroy(struct ww_mutex *lock) {
 ((lock->acquired == 0) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../dev/pci/drm/linux_ww_mutex.h", 231, "lock->acquired == 0"));
 ((lock->ctx == ((void *)0)) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../dev/pci/drm/linux_ww_mutex.h", 232, "lock->ctx == NULL"));
 ((lock->owner == ((void *)0)) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../dev/pci/drm/linux_ww_mutex.h", 233, "lock->owner == NULL"));
}
struct drm_modeset_lock;
struct drm_modeset_acquire_ctx {
 struct ww_acquire_ctx ww_ctx;
 struct drm_modeset_lock *contended;
 struct list_head locked;
 _Bool trylock_only;
};
struct drm_modeset_lock {
 struct ww_mutex mutex;
 struct list_head head;
};
extern struct ww_class crtc_ww_class;
void drm_modeset_acquire_init(struct drm_modeset_acquire_ctx *ctx,
  uint32_t flags);
void drm_modeset_acquire_fini(struct drm_modeset_acquire_ctx *ctx);
void drm_modeset_drop_locks(struct drm_modeset_acquire_ctx *ctx);
void drm_modeset_backoff(struct drm_modeset_acquire_ctx *ctx);
int drm_modeset_backoff_interruptible(struct drm_modeset_acquire_ctx *ctx);
static inline void drm_modeset_lock_init(struct drm_modeset_lock *lock)
{
 ww_mutex_init(&lock->mutex, &crtc_ww_class);
 INIT_LIST_HEAD(&lock->head);
}
static inline void drm_modeset_lock_fini(struct drm_modeset_lock *lock)
{
 ({ int __ret = !!(!list_empty(&lock->head)); if (__ret) printf("WARNING %s failed at %s:%d\n", "!list_empty(&lock->head)", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../dev/pci/drm/drm_modeset_lock.h", 110); __builtin_expect(!!(__ret), 0); });
}
static inline _Bool drm_modeset_is_locked(struct drm_modeset_lock *lock)
{
 return ww_mutex_is_locked(&lock->mutex);
}
int drm_modeset_lock(struct drm_modeset_lock *lock,
  struct drm_modeset_acquire_ctx *ctx);
int drm_modeset_lock_interruptible(struct drm_modeset_lock *lock,
  struct drm_modeset_acquire_ctx *ctx);
void drm_modeset_unlock(struct drm_modeset_lock *lock);
struct drm_device;
struct drm_crtc;
struct drm_plane;
void drm_modeset_lock_all(struct drm_device *dev);
void drm_modeset_unlock_all(struct drm_device *dev);
void drm_modeset_lock_crtc(struct drm_crtc *crtc,
      struct drm_plane *plane);
void drm_modeset_unlock_crtc(struct drm_crtc *crtc);
void drm_warn_on_modeset_not_all_locked(struct drm_device *dev);
struct drm_modeset_acquire_ctx *
drm_modeset_legacy_acquire_ctx(struct drm_crtc *crtc);
int drm_modeset_lock_all_crtcs(struct drm_device *dev,
  struct drm_modeset_acquire_ctx *ctx);
struct drm_device;
struct drm_mode_set;
struct drm_framebuffer;
struct drm_object_properties;
struct drm_file;
struct drm_clip_rect;
struct device_node;
struct fence;
struct drm_mode_object {
 uint32_t id;
 uint32_t type;
 struct drm_object_properties *properties;
};
struct drm_object_properties {
 int count, atomic_count;
 struct drm_property *properties[24];
 uint64_t values[24];
};
static inline int64_t U642I64(uint64_t val)
{
 return (int64_t)*((int64_t *)&val);
}
static inline uint64_t I642U64(int64_t val)
{
 return (uint64_t)*((uint64_t *)&val);
}
enum drm_connector_force {
 DRM_FORCE_UNSPECIFIED,
 DRM_FORCE_OFF,
 DRM_FORCE_ON,
 DRM_FORCE_ON_DIGITAL,
};
struct videomode;
enum drm_mode_status {
    MODE_OK = 0,
    MODE_HSYNC,
    MODE_VSYNC,
    MODE_H_ILLEGAL,
    MODE_V_ILLEGAL,
    MODE_BAD_WIDTH,
    MODE_NOMODE,
    MODE_NO_INTERLACE,
    MODE_NO_DBLESCAN,
    MODE_NO_VSCAN,
    MODE_MEM,
    MODE_VIRTUAL_X,
    MODE_VIRTUAL_Y,
    MODE_MEM_VIRT,
    MODE_NOCLOCK,
    MODE_CLOCK_HIGH,
    MODE_CLOCK_LOW,
    MODE_CLOCK_RANGE,
    MODE_BAD_HVALUE,
    MODE_BAD_VVALUE,
    MODE_BAD_VSCAN,
    MODE_HSYNC_NARROW,
    MODE_HSYNC_WIDE,
    MODE_HBLANK_NARROW,
    MODE_HBLANK_WIDE,
    MODE_VSYNC_NARROW,
    MODE_VSYNC_WIDE,
    MODE_VBLANK_NARROW,
    MODE_VBLANK_WIDE,
    MODE_PANEL,
    MODE_INTERLACE_WIDTH,
    MODE_ONE_WIDTH,
    MODE_ONE_HEIGHT,
    MODE_ONE_SIZE,
    MODE_NO_REDUCED,
    MODE_NO_STEREO,
    MODE_UNVERIFIED = -3,
    MODE_BAD = -2,
    MODE_ERROR = -1
};
struct drm_display_mode {
 struct list_head head;
 struct drm_mode_object base;
 char name[32];
 enum drm_mode_status status;
 unsigned int type;
 int clock;
 int hdisplay;
 int hsync_start;
 int hsync_end;
 int htotal;
 int hskew;
 int vdisplay;
 int vsync_start;
 int vsync_end;
 int vtotal;
 int vscan;
 unsigned int flags;
 int width_mm;
 int height_mm;
 int crtc_clock;
 int crtc_hdisplay;
 int crtc_hblank_start;
 int crtc_hblank_end;
 int crtc_hsync_start;
 int crtc_hsync_end;
 int crtc_htotal;
 int crtc_hskew;
 int crtc_vdisplay;
 int crtc_vblank_start;
 int crtc_vblank_end;
 int crtc_vsync_start;
 int crtc_vsync_end;
 int crtc_vtotal;
 int *private;
 int private_flags;
 int vrefresh;
 int hsync;
 enum hdmi_picture_aspect picture_aspect_ratio;
};
struct drm_cmdline_mode {
 _Bool specified;
 _Bool refresh_specified;
 _Bool bpp_specified;
 int xres, yres;
 int bpp;
 int refresh;
 _Bool rb;
 _Bool interlace;
 _Bool cvt;
 _Bool margins;
 enum drm_connector_force force;
};
static inline _Bool drm_mode_is_stereo(const struct drm_display_mode *mode)
{
 return mode->flags & (0x1f<<14);
}
struct drm_connector;
struct drm_cmdline_mode;
struct drm_display_mode *drm_mode_create(struct drm_device *dev);
void drm_mode_destroy(struct drm_device *dev, struct drm_display_mode *mode);
void drm_mode_convert_to_umode(struct drm_mode_modeinfo *out,
                               const struct drm_display_mode *in);
int drm_mode_convert_umode(struct drm_display_mode *out,
      const struct drm_mode_modeinfo *in);
void drm_mode_probed_add(struct drm_connector *connector, struct drm_display_mode *mode);
void drm_mode_debug_printmodeline(const struct drm_display_mode *mode);
struct drm_display_mode *drm_cvt_mode(struct drm_device *dev,
          int hdisplay, int vdisplay, int vrefresh,
          _Bool reduced, _Bool interlaced,
          _Bool margins);
struct drm_display_mode *drm_gtf_mode(struct drm_device *dev,
          int hdisplay, int vdisplay, int vrefresh,
          _Bool interlaced, int margins);
struct drm_display_mode *drm_gtf_mode_complex(struct drm_device *dev,
           int hdisplay, int vdisplay,
           int vrefresh, _Bool interlaced,
           int margins,
           int GTF_M, int GTF_2C,
           int GTF_K, int GTF_2J);
void drm_display_mode_from_videomode(const struct videomode *vm,
         struct drm_display_mode *dmode);
void drm_display_mode_to_videomode(const struct drm_display_mode *dmode,
       struct videomode *vm);
int of_get_drm_display_mode(struct device_node *np,
       struct drm_display_mode *dmode,
       int index);
void drm_mode_set_name(struct drm_display_mode *mode);
int drm_mode_hsync(const struct drm_display_mode *mode);
int drm_mode_vrefresh(const struct drm_display_mode *mode);
void drm_mode_set_crtcinfo(struct drm_display_mode *p,
      int adjust_flags);
void drm_mode_copy(struct drm_display_mode *dst,
     const struct drm_display_mode *src);
struct drm_display_mode *drm_mode_duplicate(struct drm_device *dev,
         const struct drm_display_mode *mode);
_Bool drm_mode_equal(const struct drm_display_mode *mode1,
      const struct drm_display_mode *mode2);
_Bool drm_mode_equal_no_clocks_no_stereo(const struct drm_display_mode *mode1,
     const struct drm_display_mode *mode2);
enum drm_mode_status drm_mode_validate_basic(const struct drm_display_mode *mode);
enum drm_mode_status drm_mode_validate_size(const struct drm_display_mode *mode,
         int maxX, int maxY);
void drm_mode_prune_invalid(struct drm_device *dev,
       struct list_head *mode_list, _Bool verbose);
void drm_mode_sort(struct list_head *mode_list);
void drm_mode_connector_list_update(struct drm_connector *connector, _Bool merge_type_bits);
_Bool
drm_mode_parse_command_line_for_connector(const char *mode_option,
       struct drm_connector *connector,
       struct drm_cmdline_mode *mode);
struct drm_display_mode *
drm_mode_create_from_cmdline_mode(struct drm_device *dev,
      struct drm_cmdline_mode *cmd);
enum drm_connector_status {
 connector_status_connected = 1,
 connector_status_disconnected = 2,
 connector_status_unknown = 3,
};
enum subpixel_order {
 SubPixelUnknown = 0,
 SubPixelHorizontalRGB,
 SubPixelHorizontalBGR,
 SubPixelVerticalRGB,
 SubPixelVerticalBGR,
 SubPixelNone,
};
struct drm_display_info {
 char name[32];
        unsigned int width_mm;
 unsigned int height_mm;
 unsigned int min_vfreq, max_vfreq;
 unsigned int min_hfreq, max_hfreq;
 unsigned int pixel_clock;
 unsigned int bpc;
 enum subpixel_order subpixel_order;
 u32 color_formats;
 const u32 *bus_formats;
 unsigned int num_bus_formats;
 u8 edid_hdmi_dc_modes;
 u8 cea_rev;
};
struct drm_tile_group {
 struct kref refcount;
 struct drm_device *dev;
 int id;
 u8 group_data[8];
};
struct drm_framebuffer_funcs {
 void (*destroy)(struct drm_framebuffer *framebuffer);
 int (*create_handle)(struct drm_framebuffer *fb,
        struct drm_file *file_priv,
        unsigned int *handle);
 int (*dirty)(struct drm_framebuffer *framebuffer,
       struct drm_file *file_priv, unsigned flags,
       unsigned color, struct drm_clip_rect *clips,
       unsigned num_clips);
};
struct drm_framebuffer {
 struct drm_device *dev;
 struct kref refcount;
 struct list_head head;
 struct drm_mode_object base;
 const struct drm_framebuffer_funcs *funcs;
 unsigned int pitches[4];
 unsigned int offsets[4];
 uint64_t modifier[4];
 unsigned int width;
 unsigned int height;
 unsigned int depth;
 int bits_per_pixel;
 int flags;
 uint32_t pixel_format;
 struct list_head filp_head;
};
struct drm_property_blob {
 struct drm_mode_object base;
 struct drm_device *dev;
 struct kref refcount;
 struct list_head head_global;
 struct list_head head_file;
 size_t length;
 unsigned char data[];
};
struct drm_property_enum {
 uint64_t value;
 struct list_head head;
 char name[32];
};
struct drm_property {
 struct list_head head;
 struct drm_mode_object base;
 uint32_t flags;
 char name[32];
 uint32_t num_values;
 uint64_t *values;
 struct drm_device *dev;
 struct list_head enum_list;
};
struct drm_crtc;
struct drm_connector;
struct drm_encoder;
struct drm_pending_vblank_event;
struct drm_plane;
struct drm_bridge;
struct drm_atomic_state;
struct drm_crtc_state {
 struct drm_crtc *crtc;
 _Bool enable;
 _Bool active;
 _Bool planes_changed : 1;
 _Bool mode_changed : 1;
 _Bool active_changed : 1;
 _Bool connectors_changed : 1;
 u32 plane_mask;
 u32 last_vblank_count;
 struct drm_display_mode adjusted_mode;
 struct drm_display_mode mode;
 struct drm_property_blob *mode_blob;
 struct drm_pending_vblank_event *event;
 struct drm_atomic_state *state;
};
struct drm_crtc_funcs {
 void (*save)(struct drm_crtc *crtc);
 void (*restore)(struct drm_crtc *crtc);
 void (*reset)(struct drm_crtc *crtc);
 int (*cursor_set)(struct drm_crtc *crtc, struct drm_file *file_priv,
     uint32_t handle, uint32_t width, uint32_t height);
 int (*cursor_set2)(struct drm_crtc *crtc, struct drm_file *file_priv,
      uint32_t handle, uint32_t width, uint32_t height,
      int32_t hot_x, int32_t hot_y);
 int (*cursor_move)(struct drm_crtc *crtc, int x, int y);
 void (*gamma_set)(struct drm_crtc *crtc, u16 *r, u16 *g, u16 *b,
     uint32_t start, uint32_t size);
 void (*destroy)(struct drm_crtc *crtc);
 int (*set_config)(struct drm_mode_set *set);
 int (*page_flip)(struct drm_crtc *crtc,
    struct drm_framebuffer *fb,
    struct drm_pending_vblank_event *event,
    uint32_t flags);
 int (*set_property)(struct drm_crtc *crtc,
       struct drm_property *property, uint64_t val);
 struct drm_crtc_state *(*atomic_duplicate_state)(struct drm_crtc *crtc);
 void (*atomic_destroy_state)(struct drm_crtc *crtc,
         struct drm_crtc_state *state);
 int (*atomic_set_property)(struct drm_crtc *crtc,
       struct drm_crtc_state *state,
       struct drm_property *property,
       uint64_t val);
 int (*atomic_get_property)(struct drm_crtc *crtc,
       const struct drm_crtc_state *state,
       struct drm_property *property,
       uint64_t *val);
};
struct drm_crtc {
 struct drm_device *dev;
 struct device_node *port;
 struct list_head head;
 struct drm_modeset_lock mutex;
 struct drm_mode_object base;
 struct drm_plane *primary;
 struct drm_plane *cursor;
 int cursor_x;
 int cursor_y;
 _Bool enabled;
 struct drm_display_mode mode;
 struct drm_display_mode hwmode;
 int x, y;
 const struct drm_crtc_funcs *funcs;
 uint32_t gamma_size;
 uint16_t *gamma_store;
 const void *helper_private;
 struct drm_object_properties properties;
 struct drm_crtc_state *state;
 struct drm_modeset_acquire_ctx *acquire_ctx;
};
struct drm_connector_state {
 struct drm_connector *connector;
 struct drm_crtc *crtc;
 struct drm_encoder *best_encoder;
 struct drm_atomic_state *state;
};
struct drm_connector_funcs {
 int (*dpms)(struct drm_connector *connector, int mode);
 void (*save)(struct drm_connector *connector);
 void (*restore)(struct drm_connector *connector);
 void (*reset)(struct drm_connector *connector);
 enum drm_connector_status (*detect)(struct drm_connector *connector,
         _Bool force);
 int (*fill_modes)(struct drm_connector *connector, uint32_t max_width, uint32_t max_height);
 int (*set_property)(struct drm_connector *connector, struct drm_property *property,
        uint64_t val);
 void (*destroy)(struct drm_connector *connector);
 void (*force)(struct drm_connector *connector);
 struct drm_connector_state *(*atomic_duplicate_state)(struct drm_connector *connector);
 void (*atomic_destroy_state)(struct drm_connector *connector,
         struct drm_connector_state *state);
 int (*atomic_set_property)(struct drm_connector *connector,
       struct drm_connector_state *state,
       struct drm_property *property,
       uint64_t val);
 int (*atomic_get_property)(struct drm_connector *connector,
       const struct drm_connector_state *state,
       struct drm_property *property,
       uint64_t *val);
};
struct drm_encoder_funcs {
 void (*reset)(struct drm_encoder *encoder);
 void (*destroy)(struct drm_encoder *encoder);
};
struct drm_encoder {
 struct drm_device *dev;
 struct list_head head;
 struct drm_mode_object base;
 char *name;
 int encoder_type;
 uint32_t possible_crtcs;
 uint32_t possible_clones;
 struct drm_crtc *crtc;
 struct drm_bridge *bridge;
 const struct drm_encoder_funcs *funcs;
 const void *helper_private;
};
struct drm_connector {
 struct drm_device *dev;
 struct device *kdev;
 struct device_attribute *attr;
 struct list_head head;
 struct drm_mode_object base;
 char *name;
 int connector_type;
 int connector_type_id;
 _Bool interlace_allowed;
 _Bool doublescan_allowed;
 _Bool stereo_allowed;
 struct list_head modes;
 enum drm_connector_status status;
 struct list_head probed_modes;
 struct drm_display_info display_info;
 const struct drm_connector_funcs *funcs;
 struct drm_property_blob *edid_blob_ptr;
 struct drm_object_properties properties;
 struct drm_property_blob *path_blob_ptr;
 struct drm_property_blob *tile_blob_ptr;
 uint8_t polled;
 int dpms;
 const void *helper_private;
 struct drm_cmdline_mode cmdline_mode;
 enum drm_connector_force force;
 _Bool override_edid;
 uint32_t encoder_ids[3];
 struct drm_encoder *encoder;
 uint8_t eld[128];
 _Bool dvi_dual;
 int max_tmds_clock;
 _Bool latency_present[2];
 int video_latency[2];
 int audio_latency[2];
 int null_edid_counter;
 unsigned bad_edid_counter;
 _Bool edid_corrupt;
 struct dentry *debugfs_entry;
 struct drm_connector_state *state;
 _Bool has_tile;
 struct drm_tile_group *tile_group;
 _Bool tile_is_single_monitor;
 uint8_t num_h_tile, num_v_tile;
 uint8_t tile_h_loc, tile_v_loc;
 uint16_t tile_h_size, tile_v_size;
 struct backlight_device *backlight_device;
 struct drm_property *backlight_property;
};
struct drm_plane_state {
 struct drm_plane *plane;
 struct drm_crtc *crtc;
 struct drm_framebuffer *fb;
 struct fence *fence;
 int32_t crtc_x, crtc_y;
 uint32_t crtc_w, crtc_h;
 uint32_t src_x, src_y;
 uint32_t src_h, src_w;
 unsigned int rotation;
 struct drm_atomic_state *state;
};
struct drm_plane_funcs {
 int (*update_plane)(struct drm_plane *plane,
       struct drm_crtc *crtc, struct drm_framebuffer *fb,
       int crtc_x, int crtc_y,
       unsigned int crtc_w, unsigned int crtc_h,
       uint32_t src_x, uint32_t src_y,
       uint32_t src_w, uint32_t src_h);
 int (*disable_plane)(struct drm_plane *plane);
 void (*destroy)(struct drm_plane *plane);
 void (*reset)(struct drm_plane *plane);
 int (*set_property)(struct drm_plane *plane,
       struct drm_property *property, uint64_t val);
 struct drm_plane_state *(*atomic_duplicate_state)(struct drm_plane *plane);
 void (*atomic_destroy_state)(struct drm_plane *plane,
         struct drm_plane_state *state);
 int (*atomic_set_property)(struct drm_plane *plane,
       struct drm_plane_state *state,
       struct drm_property *property,
       uint64_t val);
 int (*atomic_get_property)(struct drm_plane *plane,
       const struct drm_plane_state *state,
       struct drm_property *property,
       uint64_t *val);
};
enum drm_plane_type {
 DRM_PLANE_TYPE_OVERLAY,
 DRM_PLANE_TYPE_PRIMARY,
 DRM_PLANE_TYPE_CURSOR,
};
struct drm_plane {
 struct drm_device *dev;
 struct list_head head;
 struct drm_modeset_lock mutex;
 struct drm_mode_object base;
 uint32_t possible_crtcs;
 uint32_t *format_types;
 unsigned int format_count;
 _Bool format_default;
 struct drm_crtc *crtc;
 struct drm_framebuffer *fb;
 struct drm_framebuffer *old_fb;
 const struct drm_plane_funcs *funcs;
 struct drm_object_properties properties;
 enum drm_plane_type type;
 const void *helper_private;
 struct drm_plane_state *state;
};
struct drm_bridge_funcs {
 int (*attach)(struct drm_bridge *bridge);
 _Bool (*mode_fixup)(struct drm_bridge *bridge,
      const struct drm_display_mode *mode,
      struct drm_display_mode *adjusted_mode);
 void (*disable)(struct drm_bridge *bridge);
 void (*post_disable)(struct drm_bridge *bridge);
 void (*mode_set)(struct drm_bridge *bridge,
    struct drm_display_mode *mode,
    struct drm_display_mode *adjusted_mode);
 void (*pre_enable)(struct drm_bridge *bridge);
 void (*enable)(struct drm_bridge *bridge);
};
struct drm_bridge {
 struct drm_device *dev;
 struct drm_encoder *encoder;
 struct drm_bridge *next;
 struct list_head list;
 const struct drm_bridge_funcs *funcs;
 void *driver_private;
};
struct drm_atomic_state {
 struct drm_device *dev;
 _Bool allow_modeset : 1;
 _Bool legacy_cursor_update : 1;
 struct drm_plane **planes;
 struct drm_plane_state **plane_states;
 struct drm_crtc **crtcs;
 struct drm_crtc_state **crtc_states;
 int num_connector;
 struct drm_connector **connectors;
 struct drm_connector_state **connector_states;
 struct drm_modeset_acquire_ctx *acquire_ctx;
};
struct drm_mode_set {
 struct drm_framebuffer *fb;
 struct drm_crtc *crtc;
 struct drm_display_mode *mode;
 uint32_t x;
 uint32_t y;
 struct drm_connector **connectors;
 size_t num_connectors;
};
struct drm_mode_config_funcs {
 struct drm_framebuffer *(*fb_create)(struct drm_device *dev,
          struct drm_file *file_priv,
          struct drm_mode_fb_cmd2 *mode_cmd);
 void (*output_poll_changed)(struct drm_device *dev);
 int (*atomic_check)(struct drm_device *dev,
       struct drm_atomic_state *a);
 int (*atomic_commit)(struct drm_device *dev,
        struct drm_atomic_state *a,
        _Bool async);
 struct drm_atomic_state *(*atomic_state_alloc)(struct drm_device *dev);
 void (*atomic_state_clear)(struct drm_atomic_state *state);
 void (*atomic_state_free)(struct drm_atomic_state *state);
};
struct drm_mode_config {
 struct rwlock mutex;
 struct drm_modeset_lock connection_mutex;
 struct drm_modeset_acquire_ctx *acquire_ctx;
 struct rwlock idr_mutex;
 struct idr crtc_idr;
 struct idr tile_idr;
 struct rwlock fb_lock;
 int num_fb;
 struct list_head fb_list;
 int num_connector;
 struct list_head connector_list;
 int num_encoder;
 struct list_head encoder_list;
 int num_overlay_plane;
 int num_total_plane;
 struct list_head plane_list;
 int num_crtc;
 struct list_head crtc_list;
 struct list_head property_list;
 int min_width, min_height;
 int max_width, max_height;
 const struct drm_mode_config_funcs *funcs;
 resource_size_t fb_base;
 _Bool poll_enabled;
 _Bool poll_running;
 _Bool delayed_event;
 struct delayed_work output_poll_work;
 struct rwlock blob_lock;
 struct list_head property_blob_list;
 struct drm_property *edid_property;
 struct drm_property *dpms_property;
 struct drm_property *path_property;
 struct drm_property *tile_property;
 struct drm_property *plane_type_property;
 struct drm_property *rotation_property;
 struct drm_property *prop_src_x;
 struct drm_property *prop_src_y;
 struct drm_property *prop_src_w;
 struct drm_property *prop_src_h;
 struct drm_property *prop_crtc_x;
 struct drm_property *prop_crtc_y;
 struct drm_property *prop_crtc_w;
 struct drm_property *prop_crtc_h;
 struct drm_property *prop_fb_id;
 struct drm_property *prop_crtc_id;
 struct drm_property *prop_active;
 struct drm_property *prop_mode_id;
 struct drm_property *dvi_i_subconnector_property;
 struct drm_property *dvi_i_select_subconnector_property;
 struct drm_property *tv_subconnector_property;
 struct drm_property *tv_select_subconnector_property;
 struct drm_property *tv_mode_property;
 struct drm_property *tv_left_margin_property;
 struct drm_property *tv_right_margin_property;
 struct drm_property *tv_top_margin_property;
 struct drm_property *tv_bottom_margin_property;
 struct drm_property *tv_brightness_property;
 struct drm_property *tv_contrast_property;
 struct drm_property *tv_flicker_reduction_property;
 struct drm_property *tv_overscan_property;
 struct drm_property *tv_saturation_property;
 struct drm_property *tv_hue_property;
 struct drm_property *scaling_mode_property;
 struct drm_property *aspect_ratio_property;
 struct drm_property *dirty_info_property;
 struct drm_property *suggested_x_property;
 struct drm_property *suggested_y_property;
 uint32_t preferred_depth, prefer_shadow;
 _Bool async_page_flip;
 _Bool allow_fb_modifiers;
 uint32_t cursor_width, cursor_height;
};
struct drm_prop_enum_list {
 int type;
 char *name;
};
extern int drm_crtc_init_with_planes(struct drm_device *dev,
         struct drm_crtc *crtc,
         struct drm_plane *primary,
         struct drm_plane *cursor,
         const struct drm_crtc_funcs *funcs);
extern void drm_crtc_cleanup(struct drm_crtc *crtc);
extern unsigned int drm_crtc_index(struct drm_crtc *crtc);
static inline uint32_t drm_crtc_mask(struct drm_crtc *crtc)
{
 return 1 << drm_crtc_index(crtc);
}
extern void drm_connector_ida_init(void);
extern void drm_connector_ida_destroy(void);
extern int drm_connector_init(struct drm_device *dev,
         struct drm_connector *connector,
         const struct drm_connector_funcs *funcs,
         int connector_type);
int drm_connector_register(struct drm_connector *connector);
void drm_connector_unregister(struct drm_connector *connector);
extern void drm_connector_cleanup(struct drm_connector *connector);
extern unsigned int drm_connector_index(struct drm_connector *connector);
extern void drm_connector_unplug_all(struct drm_device *dev);
extern int drm_bridge_add(struct drm_bridge *bridge);
extern void drm_bridge_remove(struct drm_bridge *bridge);
extern struct drm_bridge *of_drm_find_bridge(struct device_node *np);
extern int drm_bridge_attach(struct drm_device *dev, struct drm_bridge *bridge);
_Bool drm_bridge_mode_fixup(struct drm_bridge *bridge,
   const struct drm_display_mode *mode,
   struct drm_display_mode *adjusted_mode);
void drm_bridge_disable(struct drm_bridge *bridge);
void drm_bridge_post_disable(struct drm_bridge *bridge);
void drm_bridge_mode_set(struct drm_bridge *bridge,
   struct drm_display_mode *mode,
   struct drm_display_mode *adjusted_mode);
void drm_bridge_pre_enable(struct drm_bridge *bridge);
void drm_bridge_enable(struct drm_bridge *bridge);
extern int drm_encoder_init(struct drm_device *dev,
       struct drm_encoder *encoder,
       const struct drm_encoder_funcs *funcs,
       int encoder_type);
static inline _Bool drm_encoder_crtc_ok(struct drm_encoder *encoder,
           struct drm_crtc *crtc)
{
 return !!(encoder->possible_crtcs & drm_crtc_mask(crtc));
}
extern int drm_universal_plane_init(struct drm_device *dev,
        struct drm_plane *plane,
        unsigned long possible_crtcs,
        const struct drm_plane_funcs *funcs,
        const uint32_t *formats,
        unsigned int format_count,
        enum drm_plane_type type);
extern int drm_plane_init(struct drm_device *dev,
     struct drm_plane *plane,
     unsigned long possible_crtcs,
     const struct drm_plane_funcs *funcs,
     const uint32_t *formats, unsigned int format_count,
     _Bool is_primary);
extern void drm_plane_cleanup(struct drm_plane *plane);
extern unsigned int drm_plane_index(struct drm_plane *plane);
extern struct drm_plane * drm_plane_from_index(struct drm_device *dev, int idx);
extern void drm_plane_force_disable(struct drm_plane *plane);
extern int drm_plane_check_pixel_format(const struct drm_plane *plane,
     u32 format);
extern void drm_crtc_get_hv_timing(const struct drm_display_mode *mode,
       int *hdisplay, int *vdisplay);
extern int drm_crtc_check_viewport(const struct drm_crtc *crtc,
       int x, int y,
       const struct drm_display_mode *mode,
       const struct drm_framebuffer *fb);
extern void drm_encoder_cleanup(struct drm_encoder *encoder);
extern const char *drm_get_connector_status_name(enum drm_connector_status status);
extern const char *drm_get_subpixel_order_name(enum subpixel_order order);
extern const char *drm_get_dpms_name(int val);
extern const char *drm_get_dvi_i_subconnector_name(int val);
extern const char *drm_get_dvi_i_select_name(int val);
extern const char *drm_get_tv_subconnector_name(int val);
extern const char *drm_get_tv_select_name(int val);
extern void drm_fb_release(struct drm_file *file_priv);
extern void drm_property_destroy_user_blobs(struct drm_device *dev,
                                            struct drm_file *file_priv);
extern _Bool drm_probe_ddc(struct i2c_adapter *adapter);
extern struct edid *drm_get_edid(struct drm_connector *connector,
     struct i2c_adapter *adapter);
extern struct edid *drm_edid_duplicate(const struct edid *edid);
extern int drm_add_edid_modes(struct drm_connector *connector, struct edid *edid);
extern void drm_mode_config_init(struct drm_device *dev);
extern void drm_mode_config_reset(struct drm_device *dev);
extern void drm_mode_config_cleanup(struct drm_device *dev);
extern int drm_mode_connector_set_path_property(struct drm_connector *connector,
      const char *path);
int drm_mode_connector_set_tile_property(struct drm_connector *connector);
extern int drm_mode_connector_update_edid_property(struct drm_connector *connector,
         const struct edid *edid);
extern int drm_display_info_set_bus_formats(struct drm_display_info *info,
         const u32 *formats,
         unsigned int num_formats);
static inline _Bool drm_property_type_is(struct drm_property *property,
  uint32_t type)
{
 if (property->flags & 0x0000ffc0)
  return (property->flags & 0x0000ffc0) == type;
 return property->flags & type;
}
static inline _Bool drm_property_type_valid(struct drm_property *property)
{
 if (property->flags & 0x0000ffc0)
  return !(property->flags & ( (1<<1) | (1<<3) | (1<<4) | (1<<5)));
 return !!(property->flags & ( (1<<1) | (1<<3) | (1<<4) | (1<<5)));
}
extern int drm_object_property_set_value(struct drm_mode_object *obj,
      struct drm_property *property,
      uint64_t val);
extern int drm_object_property_get_value(struct drm_mode_object *obj,
      struct drm_property *property,
      uint64_t *value);
extern int drm_framebuffer_init(struct drm_device *dev,
    struct drm_framebuffer *fb,
    const struct drm_framebuffer_funcs *funcs);
extern struct drm_framebuffer *drm_framebuffer_lookup(struct drm_device *dev,
            uint32_t id);
extern void drm_framebuffer_unreference(struct drm_framebuffer *fb);
extern void drm_framebuffer_reference(struct drm_framebuffer *fb);
extern void drm_framebuffer_remove(struct drm_framebuffer *fb);
extern void drm_framebuffer_cleanup(struct drm_framebuffer *fb);
extern void drm_framebuffer_unregister_private(struct drm_framebuffer *fb);
extern void drm_object_attach_property(struct drm_mode_object *obj,
           struct drm_property *property,
           uint64_t init_val);
extern struct drm_property *drm_property_create(struct drm_device *dev, int flags,
      const char *name, int num_values);
extern struct drm_property *drm_property_create_enum(struct drm_device *dev, int flags,
      const char *name,
      const struct drm_prop_enum_list *props,
      int num_values);
struct drm_property *drm_property_create_bitmask(struct drm_device *dev,
      int flags, const char *name,
      const struct drm_prop_enum_list *props,
      int num_props,
      uint64_t supported_bits);
struct drm_property *drm_property_create_range(struct drm_device *dev, int flags,
      const char *name,
      uint64_t min, uint64_t max);
struct drm_property *drm_property_create_signed_range(struct drm_device *dev,
      int flags, const char *name,
      int64_t min, int64_t max);
struct drm_property *drm_property_create_object(struct drm_device *dev,
      int flags, const char *name, uint32_t type);
struct drm_property *drm_property_create_bool(struct drm_device *dev, int flags,
      const char *name);
struct drm_property_blob *drm_property_create_blob(struct drm_device *dev,
                                                   size_t length,
                                                   const void *data);
struct drm_property_blob *drm_property_lookup_blob(struct drm_device *dev,
                                                   uint32_t id);
struct drm_property_blob *drm_property_reference_blob(struct drm_property_blob *blob);
void drm_property_unreference_blob(struct drm_property_blob *blob);
extern void drm_property_destroy(struct drm_device *dev, struct drm_property *property);
extern int drm_property_add_enum(struct drm_property *property, int index,
     uint64_t value, const char *name);
extern int drm_mode_create_dvi_i_properties(struct drm_device *dev);
extern int drm_mode_create_tv_properties(struct drm_device *dev,
      unsigned int num_modes,
      const char * const modes[]);
extern int drm_mode_create_scaling_mode_property(struct drm_device *dev);
extern int drm_mode_create_aspect_ratio_property(struct drm_device *dev);
extern int drm_mode_create_dirty_info_property(struct drm_device *dev);
extern int drm_mode_create_suggested_offset_properties(struct drm_device *dev);
extern _Bool drm_property_change_valid_get(struct drm_property *property,
      uint64_t value, struct drm_mode_object **ref);
extern void drm_property_change_valid_put(struct drm_property *property,
  struct drm_mode_object *ref);
extern int drm_mode_connector_attach_encoder(struct drm_connector *connector,
          struct drm_encoder *encoder);
extern int drm_mode_crtc_set_gamma_size(struct drm_crtc *crtc,
      int gamma_size);
extern struct drm_mode_object *drm_mode_object_find(struct drm_device *dev,
  uint32_t id, uint32_t type);
extern int drm_mode_getresources(struct drm_device *dev,
     void *data, struct drm_file *file_priv);
extern int drm_mode_getplane_res(struct drm_device *dev, void *data,
       struct drm_file *file_priv);
extern int drm_mode_getcrtc(struct drm_device *dev,
       void *data, struct drm_file *file_priv);
extern int drm_mode_getconnector(struct drm_device *dev,
         void *data, struct drm_file *file_priv);
extern int drm_mode_set_config_internal(struct drm_mode_set *set);
extern int drm_mode_setcrtc(struct drm_device *dev,
       void *data, struct drm_file *file_priv);
extern int drm_mode_getplane(struct drm_device *dev,
          void *data, struct drm_file *file_priv);
extern int drm_mode_setplane(struct drm_device *dev,
          void *data, struct drm_file *file_priv);
extern int drm_mode_cursor_ioctl(struct drm_device *dev,
    void *data, struct drm_file *file_priv);
extern int drm_mode_cursor2_ioctl(struct drm_device *dev,
    void *data, struct drm_file *file_priv);
extern int drm_mode_addfb(struct drm_device *dev,
     void *data, struct drm_file *file_priv);
extern int drm_mode_addfb2(struct drm_device *dev,
      void *data, struct drm_file *file_priv);
extern uint32_t drm_mode_legacy_fb_format(uint32_t bpp, uint32_t depth);
extern int drm_mode_rmfb(struct drm_device *dev,
    void *data, struct drm_file *file_priv);
extern int drm_mode_getfb(struct drm_device *dev,
     void *data, struct drm_file *file_priv);
extern int drm_mode_dirtyfb_ioctl(struct drm_device *dev,
      void *data, struct drm_file *file_priv);
extern int drm_mode_getproperty_ioctl(struct drm_device *dev,
          void *data, struct drm_file *file_priv);
extern int drm_mode_getblob_ioctl(struct drm_device *dev,
      void *data, struct drm_file *file_priv);
extern int drm_mode_createblob_ioctl(struct drm_device *dev,
         void *data, struct drm_file *file_priv);
extern int drm_mode_destroyblob_ioctl(struct drm_device *dev,
          void *data, struct drm_file *file_priv);
extern int drm_mode_connector_property_set_ioctl(struct drm_device *dev,
           void *data, struct drm_file *file_priv);
extern int drm_mode_getencoder(struct drm_device *dev,
          void *data, struct drm_file *file_priv);
extern int drm_mode_gamma_get_ioctl(struct drm_device *dev,
        void *data, struct drm_file *file_priv);
extern int drm_mode_gamma_set_ioctl(struct drm_device *dev,
        void *data, struct drm_file *file_priv);
extern u8 drm_match_cea_mode(const struct drm_display_mode *to_match);
extern enum hdmi_picture_aspect drm_get_cea_aspect_ratio(const u8 video_code);
extern _Bool drm_detect_hdmi_monitor(struct edid *edid);
extern _Bool drm_detect_monitor_audio(struct edid *edid);
extern _Bool drm_rgb_quant_range_selectable(struct edid *edid);
extern int drm_mode_page_flip_ioctl(struct drm_device *dev,
        void *data, struct drm_file *file_priv);
extern int drm_add_modes_noedid(struct drm_connector *connector,
    int hdisplay, int vdisplay);
extern void drm_set_preferred_mode(struct drm_connector *connector,
       int hpref, int vpref);
extern int drm_edid_header_is_valid(const u8 *raw_edid);
extern _Bool drm_edid_block_valid(u8 *raw_edid, int block, _Bool print_bad_edid,
     _Bool *edid_corrupt);
extern _Bool drm_edid_is_valid(struct edid *edid);
extern struct drm_tile_group *drm_mode_create_tile_group(struct drm_device *dev,
        char topology[8]);
extern struct drm_tile_group *drm_mode_get_tile_group(struct drm_device *dev,
            char topology[8]);
extern void drm_mode_put_tile_group(struct drm_device *dev,
       struct drm_tile_group *tg);
struct drm_display_mode *drm_mode_find_dmt(struct drm_device *dev,
        int hsize, int vsize, int fresh,
        _Bool rb);
extern int drm_mode_create_dumb_ioctl(struct drm_device *dev,
          void *data, struct drm_file *file_priv);
extern int drm_mode_mmap_dumb_ioctl(struct drm_device *dev,
        void *data, struct drm_file *file_priv);
extern int drm_mode_destroy_dumb_ioctl(struct drm_device *dev,
          void *data, struct drm_file *file_priv);
extern int drm_mode_obj_get_properties_ioctl(struct drm_device *dev, void *data,
          struct drm_file *file_priv);
extern int drm_mode_obj_set_property_ioctl(struct drm_device *dev, void *data,
        struct drm_file *file_priv);
extern int drm_mode_plane_set_obj_prop(struct drm_plane *plane,
           struct drm_property *property,
           uint64_t value);
extern int drm_mode_atomic_ioctl(struct drm_device *dev,
     void *data, struct drm_file *file_priv);
extern void drm_fb_get_bpp_depth(uint32_t format, unsigned int *depth,
     int *bpp);
extern int drm_format_num_planes(uint32_t format);
extern int drm_format_plane_cpp(uint32_t format, int plane);
extern int drm_format_horz_chroma_subsampling(uint32_t format);
extern int drm_format_vert_chroma_subsampling(uint32_t format);
extern const char *drm_get_format_name(uint32_t format);
extern struct drm_property *drm_mode_create_rotation_property(struct drm_device *dev,
             unsigned int supported_rotations);
extern unsigned int drm_rotation_simplify(unsigned int rotation,
       unsigned int supported_rotations);
static inline struct drm_plane *drm_plane_find(struct drm_device *dev,
  uint32_t id)
{
 struct drm_mode_object *mo;
 mo = drm_mode_object_find(dev, id, 0xeeeeeeee);
 return mo ? ({ __typeof( ((struct drm_plane *)0)->base ) *__mptr = (mo); (struct drm_plane *)( (char *)__mptr - __builtin_offsetof(struct drm_plane, base) );}) : ((void *)0);
}
static inline struct drm_crtc *drm_crtc_find(struct drm_device *dev,
 uint32_t id)
{
 struct drm_mode_object *mo;
 mo = drm_mode_object_find(dev, id, 0xcccccccc);
 return mo ? ({ __typeof( ((struct drm_crtc *)0)->base ) *__mptr = (mo); (struct drm_crtc *)( (char *)__mptr - __builtin_offsetof(struct drm_crtc, base) );}) : ((void *)0);
}
static inline struct drm_encoder *drm_encoder_find(struct drm_device *dev,
 uint32_t id)
{
 struct drm_mode_object *mo;
 mo = drm_mode_object_find(dev, id, 0xe0e0e0e0);
 return mo ? ({ __typeof( ((struct drm_encoder *)0)->base ) *__mptr = (mo); (struct drm_encoder *)( (char *)__mptr - __builtin_offsetof(struct drm_encoder, base) );}) : ((void *)0);
}
static inline struct drm_connector *drm_connector_find(struct drm_device *dev,
  uint32_t id)
{
 struct drm_mode_object *mo;
 mo = drm_mode_object_find(dev, id, 0xc0c0c0c0);
 return mo ? ({ __typeof( ((struct drm_connector *)0)->base ) *__mptr = (mo); (struct drm_connector *)( (char *)__mptr - __builtin_offsetof(struct drm_connector, base) );}) : ((void *)0);
}
static inline struct drm_property *drm_property_find(struct drm_device *dev,
  uint32_t id)
{
 struct drm_mode_object *mo;
 mo = drm_mode_object_find(dev, id, 0xb0b0b0b0);
 return mo ? ({ __typeof( ((struct drm_property *)0)->base ) *__mptr = (mo); (struct drm_property *)( (char *)__mptr - __builtin_offsetof(struct drm_property, base) );}) : ((void *)0);
}
static inline void
assert_drm_connector_list_read_locked(struct drm_mode_config *mode_config)
{
 ({ int __ret = !!(!(rw_status(&mode_config->mutex) == 0x0001UL) && !drm_modeset_is_locked(&mode_config->connection_mutex)); if (__ret) printf("WARNING %s failed at %s:%d\n", "!(rw_status(&mode_config->mutex) == 0x0001UL) && !drm_modeset_is_locked(&mode_config->connection_mutex)", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../dev/pci/drm/drm_crtc.h", 1577); __builtin_expect(!!(__ret), 0); });
}
struct fb_cmap;
struct fb_fillrect;
struct fb_copyarea;
struct fb_image;
extern struct cfdriver drm_cd;
static inline _Bool
drm_can_sleep(void)
{
 if (in_dbg_master() || irqs_disabled())
  return 0;
 return 1;
}
struct drm_pcidev {
 uint16_t vendor;
 uint16_t device;
 uint16_t subvendor;
 uint16_t subdevice;
 uint32_t class;
 uint32_t class_mask;
 unsigned long driver_data;
};
struct drm_file;
struct drm_device;
typedef int drm_ioctl_t(struct drm_device *dev, void *data,
   struct drm_file *file_priv);
typedef int drm_ioctl_compat_t(struct file *filp, unsigned int cmd,
          unsigned long arg);
struct drm_ioctl_desc {
 unsigned int cmd;
 int flags;
 drm_ioctl_t *func;
 unsigned int cmd_drv;
};
struct drm_dmamem {
 bus_dmamap_t map;
 caddr_t kva;
 bus_size_t size;
 int nsegs;
 bus_dma_segment_t segs[1];
};
typedef struct drm_dma_handle {
 struct drm_dmamem *mem;
 dma_addr_t busaddr;
 void *vaddr;
 size_t size;
} drm_dma_handle_t;
struct drm_pending_event {
 struct drm_event *event;
 struct list_head link;
 struct drm_file *file_priv;
 pid_t pid;
 void (*destroy)(struct drm_pending_event *event);
};
struct drm_file {
 unsigned always_authenticated :1;
 unsigned authenticated :1;
 unsigned is_master :1;
 unsigned stereo_allowed :1;
 unsigned universal_planes:1;
 unsigned atomic:1;
 drm_magic_t magic;
 int minor;
 struct idr object_idr;
 spinlock_t table_lock;
 struct file *filp;
 void *driver_priv;
 struct list_head fbs;
 struct rwlock fbs_lock;
 struct list_head blobs;
 wait_queue_head_t event_wait;
 struct list_head event_list;
 int event_space;
 struct selinfo rsel;
 struct { struct drm_file *spe_left; struct drm_file *spe_right; } link;
};
struct drm_agp_head {
 struct agp_softc *agpdev;
 const char *chipset;
 struct agp_memlist { struct drm_agp_mem *tqh_first; struct drm_agp_mem **tqh_last; } memory;
 struct agp_info info;
 unsigned long base;
 unsigned long mode;
 unsigned long page_mask;
 int acquired;
 int cant_use_aperture;
 int enabled;
    int mtrr;
};
struct drm_gem_object {
 struct kref refcount;
 unsigned handle_count;
 struct drm_device *dev;
 struct file *filp;
 struct drm_vma_offset_node vma_node;
 size_t size;
 int name;
 uint32_t read_domains;
 uint32_t write_domain;
 uint32_t pending_read_domains;
 uint32_t pending_write_domain;
 struct uvm_object uobj;
 struct { struct drm_gem_object *spe_left; struct drm_gem_object *spe_right; } entry;
 struct uvm_object *uao;
};
struct drm_driver {
 int (*firstopen)(struct drm_device *);
 int (*open)(struct drm_device *, struct drm_file *);
 void (*close)(struct drm_device *, struct drm_file *);
 void (*preclose)(struct drm_device *, struct drm_file *);
 void (*postclose)(struct drm_device *, struct drm_file *);
 void (*lastclose)(struct drm_device *);
 struct uvm_object *(*mmap)(struct drm_device *, voff_t, vsize_t);
 int (*dma_ioctl)(struct drm_device *, struct drm_dma *,
      struct drm_file *);
 int (*irq_handler)(int, void *);
 void (*irq_preinstall) (struct drm_device *);
 int (*irq_install)(struct drm_device *);
 int (*irq_postinstall) (struct drm_device *);
 void (*irq_uninstall)(struct drm_device *);
 int vblank_pipes;
 u32 (*get_vblank_counter) (struct drm_device *dev, unsigned int pipe);
 int (*enable_vblank) (struct drm_device *dev, unsigned int pipe);
 void (*disable_vblank) (struct drm_device *dev, unsigned int pipe);
 int (*get_scanout_position) (struct drm_device *dev, unsigned int pipe,
         unsigned int flags, int *vpos, int *hpos,
         ktime_t *stime, ktime_t *etime,
         const struct drm_display_mode *mode);
 int (*get_vblank_timestamp) (struct drm_device *dev, unsigned int pipe,
         int *max_error,
         struct timeval *vblank_time,
         unsigned flags);
 void (*gem_free_object) (struct drm_gem_object *obj);
 int (*gem_open_object) (struct drm_gem_object *, struct drm_file *);
 void (*gem_close_object) (struct drm_gem_object *, struct drm_file *);
 int (*gem_fault)(struct drm_gem_object *, struct uvm_faultinfo *,
      off_t, vaddr_t, vm_page_t *, int, int, vm_prot_t, int);
 int (*dumb_create)(struct drm_file *file_priv,
      struct drm_device *dev, struct drm_mode_create_dumb *args);
 int (*dumb_map_offset)(struct drm_file *file_priv,
      struct drm_device *dev, uint32_t handle, uint64_t *offset);
 int (*dumb_destroy)(struct drm_file *file_priv,
      struct drm_device *dev, uint32_t handle);
 size_t gem_size;
 size_t buf_priv_size;
 size_t file_priv_size;
 int major;
 int minor;
 int patchlevel;
 const char *name;
 const char *desc;
 const char *date;
 u32 driver_features;
 const struct drm_ioctl_desc *ioctls;
 int num_ioctls;
};
enum drm_minor_type {
 DRM_MINOR_LEGACY,
 DRM_MINOR_CONTROL,
 DRM_MINOR_RENDER,
 DRM_MINOR_CNT,
};
struct drm_minor;
struct drm_pending_vblank_event {
 struct drm_pending_event base;
 int pipe;
 struct drm_event_vblank event;
};
struct drm_vblank_crtc {
 struct drm_device *dev;
 wait_queue_head_t queue;
 struct timeout disable_timer;
 u32 count;
 struct timeval time[2];
 atomic_t refcount;
 u32 last;
 u32 last_wait;
 unsigned int inmodeset;
 unsigned int pipe;
 int framedur_ns;
 int linedur_ns;
 _Bool enabled;
};
struct drm_device {
 struct device device;
 struct device *dev;
 struct drm_driver *driver;
 struct pci_dev _pdev;
 struct pci_dev *pdev;
 u_int16_t pci_device;
 u_int16_t pci_vendor;
 pci_chipset_tag_t pc;
 pcitag_t *bridgetag;
 bus_dma_tag_t dmat;
 bus_space_tag_t bst;
 struct mutex quiesce_mtx;
 int quiesce;
 int quiesce_count;
 char *unique;
 int unique_len;
 int if_version;
 struct rwlock struct_mutex;
 int open_count;
 struct drm_file_tree { struct drm_file *sph_root; } files;
 drm_magic_t magicid;
 _Bool irq_enabled;
 int irq;
 _Bool vblank_disable_allowed;
 _Bool vblank_disable_immediate;
 struct drm_vblank_crtc *vblank;
 struct mutex vblank_time_lock;
 struct mutex vbl_lock;
 u32 max_vblank_count;
 struct list_head vblank_event_list;
 spinlock_t event_lock;
 int *vblank_enabled;
 int *vblank_inmodeset;
 u32 *last_vblank_wait;
 int num_crtcs;
 pid_t buf_pgid;
 struct drm_agp_head *agp;
 void *dev_private;
 struct address_space *dev_mapping;
 struct drm_local_map *agp_buffer_map;
 struct drm_mode_config mode_config;
 atomic_t obj_count;
 u_int obj_name;
 atomic_t obj_memory;
 struct pool objpl;
 struct rwlock object_name_lock;
 struct idr object_name_idr;
 struct drm_vma_offset_manager *vma_offset_manager;
};
struct drm_attach_args {
 struct drm_driver *driver;
 char *busid;
 bus_dma_tag_t dmat;
 bus_space_tag_t bst;
 size_t busid_len;
 int is_agp;
 u_int16_t pci_vendor;
 u_int16_t pci_device;
 u_int16_t pci_subvendor;
 u_int16_t pci_subdevice;
 u_int8_t pci_revision;
 struct pci_attach_args *pa;
 pci_chipset_tag_t pc;
 pcitag_t tag;
 pcitag_t *bridgetag;
 int console;
};
extern int drm_debug_flag;
int drm_pciprobe(struct pci_attach_args *, const struct drm_pcidev * );
struct device *drm_attach_pci(struct drm_driver *,
       struct pci_attach_args *, int, int, struct device *);
int drmioctl(dev_t, u_long, caddr_t, int, struct proc *);
int drmread(dev_t, struct uio *, int);
int drmpoll(dev_t, int, struct proc *);
int drmopen(dev_t, int, int, struct proc *);
int drmclose(dev_t, int, int, struct proc *);
paddr_t drmmmap(dev_t, off_t, int);
struct drm_local_map *drm_getsarea(struct drm_device *);
struct drm_dmamem *drm_dmamem_alloc(bus_dma_tag_t, bus_size_t, bus_size_t,
        int, bus_size_t, int, int);
void drm_dmamem_free(bus_dma_tag_t, struct drm_dmamem *);
extern struct drm_dma_handle *drm_pci_alloc(struct drm_device *dev, size_t size,
         size_t align);
extern void drm_pci_free(struct drm_device *dev, struct drm_dma_handle * dmah);
const struct drm_pcidev *drm_find_description(int , int ,
        const struct drm_pcidev *);
int drm_order(unsigned long);
struct drm_file *drm_find_file_by_minor(struct drm_device *, int);
struct drm_device *drm_get_device_from_kdev(dev_t);
void *drm_alloc(size_t);
void *drm_calloc(size_t, size_t);
void *drm_realloc(void *, size_t, size_t);
void drm_free(void *);
static __inline__ void *drm_calloc_large(size_t nmemb, size_t size)
{
 return drm_calloc(nmemb, size);
}
static __inline__ void *drm_malloc_ab(size_t nmemb, size_t size)
{
 return (mallocarray(nmemb, size, 145, 0x0001 | 0x0004));
}
static __inline void drm_free_large(void *ptr)
{
 free(ptr, 145, 0);
}
void drm_core_ioremap(struct drm_local_map *, struct drm_device *);
void drm_core_ioremapfree(struct drm_local_map *, struct drm_device *);
int drm_mtrr_add(unsigned long, size_t, int);
int drm_mtrr_del(int, unsigned long, size_t, int);
int drm_noop(struct drm_device *dev, void *data,
      struct drm_file *file_priv);
int drm_invalid_op(struct drm_device *dev, void *data,
     struct drm_file *file_priv);
void drm_clflush_pages(struct vm_page *pages[], unsigned long num_pages);
void drm_clflush_sg(struct sg_table *st);
void drm_clflush_virt_range(void *addr, unsigned long length);
extern int drm_irq_install(struct drm_device *dev, int irq);
extern int drm_irq_uninstall(struct drm_device *dev);
extern int drm_vblank_init(struct drm_device *dev, unsigned int num_crtcs);
extern int drm_wait_vblank(struct drm_device *dev, void *data,
      struct drm_file *filp);
extern u32 drm_vblank_count(struct drm_device *dev, unsigned int pipe);
extern u32 drm_crtc_vblank_count(struct drm_crtc *crtc);
extern u32 drm_vblank_count_and_time(struct drm_device *dev, unsigned int pipe,
         struct timeval *vblanktime);
extern u32 drm_crtc_vblank_count_and_time(struct drm_crtc *crtc,
       struct timeval *vblanktime);
extern void drm_send_vblank_event(struct drm_device *dev, unsigned int pipe,
      struct drm_pending_vblank_event *e);
extern void drm_crtc_send_vblank_event(struct drm_crtc *crtc,
           struct drm_pending_vblank_event *e);
extern void drm_arm_vblank_event(struct drm_device *dev, unsigned int pipe,
     struct drm_pending_vblank_event *e);
extern void drm_crtc_arm_vblank_event(struct drm_crtc *crtc,
          struct drm_pending_vblank_event *e);
extern _Bool drm_handle_vblank(struct drm_device *dev, unsigned int pipe);
extern _Bool drm_crtc_handle_vblank(struct drm_crtc *crtc);
extern int drm_vblank_get(struct drm_device *dev, unsigned int pipe);
extern void drm_vblank_put(struct drm_device *dev, unsigned int pipe);
extern int drm_crtc_vblank_get(struct drm_crtc *crtc);
extern void drm_crtc_vblank_put(struct drm_crtc *crtc);
extern void drm_wait_one_vblank(struct drm_device *dev, unsigned int pipe);
extern void drm_crtc_wait_one_vblank(struct drm_crtc *crtc);
extern void drm_vblank_off(struct drm_device *dev, unsigned int pipe);
extern void drm_vblank_on(struct drm_device *dev, unsigned int pipe);
extern void drm_crtc_vblank_off(struct drm_crtc *crtc);
extern void drm_crtc_vblank_reset(struct drm_crtc *crtc);
extern void drm_crtc_vblank_on(struct drm_crtc *crtc);
extern void drm_vblank_cleanup(struct drm_device *dev);
extern u32 drm_vblank_no_hw_counter(struct drm_device *dev, unsigned int pipe);
extern int drm_calc_vbltimestamp_from_scanoutpos(struct drm_device *dev,
       unsigned int pipe, int *max_error,
       struct timeval *vblank_time,
       unsigned flags,
       const struct drm_display_mode *mode);
extern void drm_calc_timestamping_constants(struct drm_crtc *crtc,
         const struct drm_display_mode *mode);
static inline wait_queue_head_t *drm_crtc_vblank_waitqueue(struct drm_crtc *crtc)
{
 return &crtc->dev->vblank[drm_crtc_index(crtc)].queue;
}
extern void drm_vblank_pre_modeset(struct drm_device *dev, unsigned int pipe);
extern void drm_vblank_post_modeset(struct drm_device *dev, unsigned int pipe);
_Bool drm_mode_parse_command_line_for_connector(const char *,
     struct drm_connector *, struct drm_cmdline_mode *);
struct drm_display_mode *
  drm_mode_create_from_cmdline_mode(struct drm_device *,
      struct drm_cmdline_mode *);
extern unsigned int drm_timestamp_monotonic;
struct drm_agp_head *drm_agp_init(void);
void drm_agp_takedown(struct drm_device *);
int drm_agp_acquire(struct drm_device *);
int drm_agp_release(struct drm_device *);
int drm_agp_info(struct drm_device *, struct drm_agp_info *);
int drm_agp_enable(struct drm_device *, struct drm_agp_mode);
void *drm_agp_allocate_memory(size_t, u32);
int drm_agp_free_memory(void *);
int drm_agp_bind_memory(void *, off_t);
int drm_agp_unbind_memory(void *);
int drm_agp_alloc(struct drm_device *, struct drm_agp_buffer *);
int drm_agp_free(struct drm_device *, struct drm_agp_buffer *);
int drm_agp_bind(struct drm_device *, struct drm_agp_binding *);
int drm_agp_unbind(struct drm_device *, struct drm_agp_binding *);
int drm_agp_acquire_ioctl(struct drm_device *, void *, struct drm_file *);
int drm_agp_release_ioctl(struct drm_device *, void *, struct drm_file *);
int drm_agp_enable_ioctl(struct drm_device *, void *, struct drm_file *);
int drm_agp_info_ioctl(struct drm_device *, void *, struct drm_file *);
int drm_agp_alloc_ioctl(struct drm_device *, void *, struct drm_file *);
int drm_agp_free_ioctl(struct drm_device *, void *, struct drm_file *);
int drm_agp_unbind_ioctl(struct drm_device *, void *, struct drm_file *);
int drm_agp_bind_ioctl(struct drm_device *, void *, struct drm_file *);
static inline int
drm_sysfs_connector_add(struct drm_connector *connector)
{
 return 0;
}
static inline void
drm_sysfs_connector_remove(struct drm_connector *connector)
{
}
static inline void
drm_sysfs_hotplug_event(struct drm_device *dev)
{
}
int drm_gem_init(struct drm_device *dev);
void drm_gem_destroy(struct drm_device *dev);
void drm_gem_object_release(struct drm_gem_object *obj);
void drm_gem_object_free(struct kref *kref);
int drm_gem_object_init(struct drm_device *dev,
   struct drm_gem_object *obj, size_t size);
void drm_gem_private_object_init(struct drm_device *dev,
     struct drm_gem_object *obj, size_t size);
int drm_gem_handle_create_tail(struct drm_file *file_priv,
          struct drm_gem_object *obj,
          u32 *handlep);
int drm_gem_handle_create(struct drm_file *file_priv,
     struct drm_gem_object *obj,
     u32 *handlep);
int drm_gem_handle_delete(struct drm_file *filp, u32 handle);
void drm_gem_free_mmap_offset(struct drm_gem_object *obj);
int drm_gem_create_mmap_offset(struct drm_gem_object *obj);
struct drm_gem_object *drm_gem_object_lookup(struct drm_device *dev,
          struct drm_file *filp,
          u32 handle);
struct drm_gem_object *drm_gem_object_find(struct drm_file *, u32);
int drm_gem_close_ioctl(struct drm_device *dev, void *data,
   struct drm_file *file_priv);
int drm_gem_flink_ioctl(struct drm_device *dev, void *data,
   struct drm_file *file_priv);
int drm_gem_open_ioctl(struct drm_device *dev, void *data,
         struct drm_file *file_priv);
void drm_gem_open(struct drm_device *dev, struct drm_file *file_private);
void drm_gem_release(struct drm_device *dev,struct drm_file *file_private);
static __inline void
drm_gem_object_reference(struct drm_gem_object *obj)
{
 kref_get(&obj->refcount);
}
static __inline void
drm_gem_object_unreference(struct drm_gem_object *obj)
{
 if (obj != ((void *)0))
  kref_put(&obj->refcount, drm_gem_object_free);
}
static __inline void
drm_gem_object_unreference_unlocked(struct drm_gem_object *obj)
{
 if (obj && !atomic_add_unless(&obj->refcount.refcount, -1, 1)) {
  struct drm_device *dev = obj->dev;
  _rw_enter_write(&dev->struct_mutex );
  if (__builtin_expect(!!((__sync_sub_and_fetch((&obj->refcount.refcount), 1) == 0)), 1))
   drm_gem_object_free(&obj->refcount);
  _rw_exit_write(&dev->struct_mutex );
 }
}
int drm_gem_dumb_destroy(struct drm_file *file,
    struct drm_device *dev,
    uint32_t handle);
static __inline__ int drm_core_check_feature(struct drm_device *dev,
          int feature)
{
 return ((dev->driver->driver_features & feature) ? 1 : 0);
}
static inline _Bool drm_is_render_client(const struct drm_file *file_priv)
{
 return 0;
}
static inline _Bool drm_is_control_client(const struct drm_file *file_priv)
{
 return 0;
}
static inline _Bool drm_is_primary_client(const struct drm_file *file_priv)
{
 return 1;
}
static inline int drm_dev_to_irq(struct drm_device *dev)
{
 return -1;
}
int drm_pcie_get_speed_cap_mask(struct drm_device *, u32 *);
struct drm_rect {
 int x1, y1, x2, y2;
};
static inline void drm_rect_adjust_size(struct drm_rect *r, int dw, int dh)
{
 r->x1 -= dw >> 1;
 r->y1 -= dh >> 1;
 r->x2 += (dw + 1) >> 1;
 r->y2 += (dh + 1) >> 1;
}
static inline void drm_rect_translate(struct drm_rect *r, int dx, int dy)
{
 r->x1 += dx;
 r->y1 += dy;
 r->x2 += dx;
 r->y2 += dy;
}
static inline void drm_rect_downscale(struct drm_rect *r, int horz, int vert)
{
 r->x1 /= horz;
 r->y1 /= vert;
 r->x2 /= horz;
 r->y2 /= vert;
}
static inline int drm_rect_width(const struct drm_rect *r)
{
 return r->x2 - r->x1;
}
static inline int drm_rect_height(const struct drm_rect *r)
{
 return r->y2 - r->y1;
}
static inline _Bool drm_rect_visible(const struct drm_rect *r)
{
 return drm_rect_width(r) > 0 && drm_rect_height(r) > 0;
}
static inline _Bool drm_rect_equals(const struct drm_rect *r1,
       const struct drm_rect *r2)
{
 return r1->x1 == r2->x1 && r1->x2 == r2->x2 &&
  r1->y1 == r2->y1 && r1->y2 == r2->y2;
}
_Bool drm_rect_intersect(struct drm_rect *r, const struct drm_rect *clip);
_Bool drm_rect_clip_scaled(struct drm_rect *src, struct drm_rect *dst,
     const struct drm_rect *clip,
     int hscale, int vscale);
int drm_rect_calc_hscale(const struct drm_rect *src,
    const struct drm_rect *dst,
    int min_hscale, int max_hscale);
int drm_rect_calc_vscale(const struct drm_rect *src,
    const struct drm_rect *dst,
    int min_vscale, int max_vscale);
int drm_rect_calc_hscale_relaxed(struct drm_rect *src,
     struct drm_rect *dst,
     int min_hscale, int max_hscale);
int drm_rect_calc_vscale_relaxed(struct drm_rect *src,
     struct drm_rect *dst,
     int min_vscale, int max_vscale);
void drm_rect_debug_print(const struct drm_rect *r, _Bool fixed_point);
void drm_rect_rotate(struct drm_rect *r,
       int width, int height,
       unsigned int rotation);
void drm_rect_rotate_inv(struct drm_rect *r,
    int width, int height,
    unsigned int rotation);
int drm_crtc_init(struct drm_device *dev, struct drm_crtc *crtc,
    const struct drm_crtc_funcs *funcs);
struct drm_plane_helper_funcs {
 int (*prepare_fb)(struct drm_plane *plane,
     const struct drm_plane_state *new_state);
 void (*cleanup_fb)(struct drm_plane *plane,
      const struct drm_plane_state *old_state);
 int (*atomic_check)(struct drm_plane *plane,
       struct drm_plane_state *state);
 void (*atomic_update)(struct drm_plane *plane,
         struct drm_plane_state *old_state);
 void (*atomic_disable)(struct drm_plane *plane,
          struct drm_plane_state *old_state);
};
static inline void drm_plane_helper_add(struct drm_plane *plane,
     const struct drm_plane_helper_funcs *funcs)
{
 plane->helper_private = funcs;
}
int drm_plane_helper_check_update(struct drm_plane *plane,
      struct drm_crtc *crtc,
      struct drm_framebuffer *fb,
      struct drm_rect *src,
      struct drm_rect *dest,
      const struct drm_rect *clip,
      int min_scale,
      int max_scale,
      _Bool can_position,
      _Bool can_update_disabled,
      _Bool *visible);
int drm_primary_helper_update(struct drm_plane *plane,
         struct drm_crtc *crtc,
         struct drm_framebuffer *fb,
         int crtc_x, int crtc_y,
         unsigned int crtc_w, unsigned int crtc_h,
         uint32_t src_x, uint32_t src_y,
         uint32_t src_w, uint32_t src_h);
int drm_primary_helper_disable(struct drm_plane *plane);
void drm_primary_helper_destroy(struct drm_plane *plane);
extern const struct drm_plane_funcs drm_primary_helper_funcs;
int drm_plane_helper_update(struct drm_plane *plane, struct drm_crtc *crtc,
       struct drm_framebuffer *fb,
       int crtc_x, int crtc_y,
       unsigned int crtc_w, unsigned int crtc_h,
       uint32_t src_x, uint32_t src_y,
       uint32_t src_w, uint32_t src_h);
int drm_plane_helper_disable(struct drm_plane *plane);
int drm_plane_helper_commit(struct drm_plane *plane,
       struct drm_plane_state *plane_state,
       struct drm_framebuffer *old_fb);
struct drm_atomic_state *
drm_atomic_state_alloc(struct drm_device *dev);
void drm_atomic_state_clear(struct drm_atomic_state *state);
void drm_atomic_state_free(struct drm_atomic_state *state);
int
drm_atomic_state_init(struct drm_device *dev, struct drm_atomic_state *state);
void drm_atomic_state_default_clear(struct drm_atomic_state *state);
void drm_atomic_state_default_release(struct drm_atomic_state *state);
struct drm_crtc_state *
drm_atomic_get_crtc_state(struct drm_atomic_state *state,
     struct drm_crtc *crtc);
int drm_atomic_crtc_set_property(struct drm_crtc *crtc,
  struct drm_crtc_state *state, struct drm_property *property,
  uint64_t val);
struct drm_plane_state *
drm_atomic_get_plane_state(struct drm_atomic_state *state,
      struct drm_plane *plane);
int drm_atomic_plane_set_property(struct drm_plane *plane,
  struct drm_plane_state *state, struct drm_property *property,
  uint64_t val);
struct drm_connector_state *
drm_atomic_get_connector_state(struct drm_atomic_state *state,
          struct drm_connector *connector);
int drm_atomic_connector_set_property(struct drm_connector *connector,
  struct drm_connector_state *state, struct drm_property *property,
  uint64_t val);
static inline struct drm_crtc_state *
drm_atomic_get_existing_crtc_state(struct drm_atomic_state *state,
       struct drm_crtc *crtc)
{
 return state->crtc_states[drm_crtc_index(crtc)];
}
static inline struct drm_plane_state *
drm_atomic_get_existing_plane_state(struct drm_atomic_state *state,
        struct drm_plane *plane)
{
 return state->plane_states[drm_plane_index(plane)];
}
static inline struct drm_connector_state *
drm_atomic_get_existing_connector_state(struct drm_atomic_state *state,
     struct drm_connector *connector)
{
 int index = drm_connector_index(connector);
 if (index >= state->num_connector)
  return ((void *)0);
 return state->connector_states[index];
}
int
drm_atomic_set_mode_for_crtc(struct drm_crtc_state *state,
        struct drm_display_mode *mode);
int
drm_atomic_set_mode_prop_for_crtc(struct drm_crtc_state *state,
      struct drm_property_blob *blob);
int
drm_atomic_set_crtc_for_plane(struct drm_plane_state *plane_state,
         struct drm_crtc *crtc);
void drm_atomic_set_fb_for_plane(struct drm_plane_state *plane_state,
     struct drm_framebuffer *fb);
int
drm_atomic_set_crtc_for_connector(struct drm_connector_state *conn_state,
      struct drm_crtc *crtc);
int
drm_atomic_add_affected_connectors(struct drm_atomic_state *state,
       struct drm_crtc *crtc);
int
drm_atomic_add_affected_planes(struct drm_atomic_state *state,
          struct drm_crtc *crtc);
int
drm_atomic_connectors_for_crtc(struct drm_atomic_state *state,
          struct drm_crtc *crtc);
void drm_atomic_legacy_backoff(struct drm_atomic_state *state);
void
drm_atomic_clean_old_fb(struct drm_device *dev, unsigned plane_mask, int ret);
int drm_atomic_check_only(struct drm_atomic_state *state);
int drm_atomic_commit(struct drm_atomic_state *state);
int drm_atomic_async_commit(struct drm_atomic_state *state);
static inline _Bool
drm_atomic_crtc_needs_modeset(struct drm_crtc_state *state)
{
 return state->mode_changed || state->active_changed ||
        state->connectors_changed;
}
enum mode_set_atomic {
 LEAVE_ATOMIC_MODE_SET,
 ENTER_ATOMIC_MODE_SET,
};
struct drm_crtc_helper_funcs {
 void (*dpms)(struct drm_crtc *crtc, int mode);
 void (*prepare)(struct drm_crtc *crtc);
 void (*commit)(struct drm_crtc *crtc);
 _Bool (*mode_fixup)(struct drm_crtc *crtc,
      const struct drm_display_mode *mode,
      struct drm_display_mode *adjusted_mode);
 int (*mode_set)(struct drm_crtc *crtc, struct drm_display_mode *mode,
   struct drm_display_mode *adjusted_mode, int x, int y,
   struct drm_framebuffer *old_fb);
 void (*mode_set_nofb)(struct drm_crtc *crtc);
 int (*mode_set_base)(struct drm_crtc *crtc, int x, int y,
        struct drm_framebuffer *old_fb);
 int (*mode_set_base_atomic)(struct drm_crtc *crtc,
        struct drm_framebuffer *fb, int x, int y,
        enum mode_set_atomic);
 void (*load_lut)(struct drm_crtc *crtc);
 void (*disable)(struct drm_crtc *crtc);
 void (*enable)(struct drm_crtc *crtc);
 int (*atomic_check)(struct drm_crtc *crtc,
       struct drm_crtc_state *state);
 void (*atomic_begin)(struct drm_crtc *crtc,
        struct drm_crtc_state *old_crtc_state);
 void (*atomic_flush)(struct drm_crtc *crtc,
        struct drm_crtc_state *old_crtc_state);
};
struct drm_encoder_helper_funcs {
 void (*dpms)(struct drm_encoder *encoder, int mode);
 void (*save)(struct drm_encoder *encoder);
 void (*restore)(struct drm_encoder *encoder);
 _Bool (*mode_fixup)(struct drm_encoder *encoder,
      const struct drm_display_mode *mode,
      struct drm_display_mode *adjusted_mode);
 void (*prepare)(struct drm_encoder *encoder);
 void (*commit)(struct drm_encoder *encoder);
 void (*mode_set)(struct drm_encoder *encoder,
    struct drm_display_mode *mode,
    struct drm_display_mode *adjusted_mode);
 struct drm_crtc *(*get_crtc)(struct drm_encoder *encoder);
 enum drm_connector_status (*detect)(struct drm_encoder *encoder,
         struct drm_connector *connector);
 void (*disable)(struct drm_encoder *encoder);
 void (*enable)(struct drm_encoder *encoder);
 int (*atomic_check)(struct drm_encoder *encoder,
       struct drm_crtc_state *crtc_state,
       struct drm_connector_state *conn_state);
};
struct drm_connector_helper_funcs {
 int (*get_modes)(struct drm_connector *connector);
 enum drm_mode_status (*mode_valid)(struct drm_connector *connector,
        struct drm_display_mode *mode);
 struct drm_encoder *(*best_encoder)(struct drm_connector *connector);
 struct drm_encoder *(*atomic_best_encoder)(struct drm_connector *connector,
         struct drm_connector_state *connector_state);
};
extern void drm_helper_disable_unused_functions(struct drm_device *dev);
extern int drm_crtc_helper_set_config(struct drm_mode_set *set);
extern _Bool drm_crtc_helper_set_mode(struct drm_crtc *crtc,
         struct drm_display_mode *mode,
         int x, int y,
         struct drm_framebuffer *old_fb);
extern _Bool drm_helper_crtc_in_use(struct drm_crtc *crtc);
extern _Bool drm_helper_encoder_in_use(struct drm_encoder *encoder);
extern int drm_helper_connector_dpms(struct drm_connector *connector, int mode);
extern void drm_helper_move_panel_connectors_to_head(struct drm_device *);
extern void drm_helper_mode_fill_fb_struct(struct drm_framebuffer *fb,
        struct drm_mode_fb_cmd2 *mode_cmd);
static inline void drm_crtc_helper_add(struct drm_crtc *crtc,
           const struct drm_crtc_helper_funcs *funcs)
{
 crtc->helper_private = funcs;
}
static inline void drm_encoder_helper_add(struct drm_encoder *encoder,
       const struct drm_encoder_helper_funcs *funcs)
{
 encoder->helper_private = funcs;
}
static inline void drm_connector_helper_add(struct drm_connector *connector,
         const struct drm_connector_helper_funcs *funcs)
{
 connector->helper_private = funcs;
}
extern void drm_helper_resume_force_mode(struct drm_device *dev);
int drm_helper_crtc_mode_set(struct drm_crtc *crtc, struct drm_display_mode *mode,
        struct drm_display_mode *adjusted_mode, int x, int y,
        struct drm_framebuffer *old_fb);
int drm_helper_crtc_mode_set_base(struct drm_crtc *crtc, int x, int y,
      struct drm_framebuffer *old_fb);
extern int drm_helper_probe_single_connector_modes(struct drm_connector
         *connector, uint32_t maxX,
         uint32_t maxY);
extern int drm_helper_probe_single_connector_modes_nomerge(struct drm_connector
          *connector,
          uint32_t maxX,
          uint32_t maxY);
extern void drm_kms_helper_poll_init(struct drm_device *dev);
extern void drm_kms_helper_poll_fini(struct drm_device *dev);
extern _Bool drm_helper_hpd_irq_event(struct drm_device *dev);
extern void drm_kms_helper_hotplug_event(struct drm_device *dev);
extern void drm_kms_helper_poll_disable(struct drm_device *dev);
extern void drm_kms_helper_poll_enable(struct drm_device *dev);
extern void drm_kms_helper_poll_enable_locked(struct drm_device *dev);
struct drm_atomic_state;
int drm_atomic_helper_check_modeset(struct drm_device *dev,
    struct drm_atomic_state *state);
int drm_atomic_helper_check_planes(struct drm_device *dev,
          struct drm_atomic_state *state);
int drm_atomic_helper_check(struct drm_device *dev,
       struct drm_atomic_state *state);
int drm_atomic_helper_commit(struct drm_device *dev,
        struct drm_atomic_state *state,
        _Bool async);
void drm_atomic_helper_wait_for_vblanks(struct drm_device *dev,
     struct drm_atomic_state *old_state);
void
drm_atomic_helper_update_legacy_modeset_state(struct drm_device *dev,
           struct drm_atomic_state *old_state);
void drm_atomic_helper_commit_modeset_disables(struct drm_device *dev,
            struct drm_atomic_state *state);
void drm_atomic_helper_commit_modeset_enables(struct drm_device *dev,
       struct drm_atomic_state *old_state);
int drm_atomic_helper_prepare_planes(struct drm_device *dev,
         struct drm_atomic_state *state);
void drm_atomic_helper_commit_planes(struct drm_device *dev,
         struct drm_atomic_state *state,
         _Bool active_only);
void drm_atomic_helper_cleanup_planes(struct drm_device *dev,
          struct drm_atomic_state *old_state);
void drm_atomic_helper_commit_planes_on_crtc(struct drm_crtc_state *old_crtc_state);
void drm_atomic_helper_swap_state(struct drm_device *dev,
      struct drm_atomic_state *state);
int drm_atomic_helper_update_plane(struct drm_plane *plane,
       struct drm_crtc *crtc,
       struct drm_framebuffer *fb,
       int crtc_x, int crtc_y,
       unsigned int crtc_w, unsigned int crtc_h,
       uint32_t src_x, uint32_t src_y,
       uint32_t src_w, uint32_t src_h);
int drm_atomic_helper_disable_plane(struct drm_plane *plane);
int __drm_atomic_helper_disable_plane(struct drm_plane *plane,
  struct drm_plane_state *plane_state);
int drm_atomic_helper_set_config(struct drm_mode_set *set);
int __drm_atomic_helper_set_config(struct drm_mode_set *set,
  struct drm_atomic_state *state);
int drm_atomic_helper_crtc_set_property(struct drm_crtc *crtc,
     struct drm_property *property,
     uint64_t val);
int drm_atomic_helper_plane_set_property(struct drm_plane *plane,
     struct drm_property *property,
     uint64_t val);
int drm_atomic_helper_connector_set_property(struct drm_connector *connector,
     struct drm_property *property,
     uint64_t val);
int drm_atomic_helper_page_flip(struct drm_crtc *crtc,
    struct drm_framebuffer *fb,
    struct drm_pending_vblank_event *event,
    uint32_t flags);
int drm_atomic_helper_connector_dpms(struct drm_connector *connector,
         int mode);
void drm_atomic_helper_crtc_reset(struct drm_crtc *crtc);
void __drm_atomic_helper_crtc_duplicate_state(struct drm_crtc *crtc,
           struct drm_crtc_state *state);
struct drm_crtc_state *
drm_atomic_helper_crtc_duplicate_state(struct drm_crtc *crtc);
void __drm_atomic_helper_crtc_destroy_state(struct drm_crtc *crtc,
         struct drm_crtc_state *state);
void drm_atomic_helper_crtc_destroy_state(struct drm_crtc *crtc,
       struct drm_crtc_state *state);
void drm_atomic_helper_plane_reset(struct drm_plane *plane);
void __drm_atomic_helper_plane_duplicate_state(struct drm_plane *plane,
            struct drm_plane_state *state);
struct drm_plane_state *
drm_atomic_helper_plane_duplicate_state(struct drm_plane *plane);
void __drm_atomic_helper_plane_destroy_state(struct drm_plane *plane,
          struct drm_plane_state *state);
void drm_atomic_helper_plane_destroy_state(struct drm_plane *plane,
       struct drm_plane_state *state);
void drm_atomic_helper_connector_reset(struct drm_connector *connector);
void
__drm_atomic_helper_connector_duplicate_state(struct drm_connector *connector,
        struct drm_connector_state *state);
struct drm_connector_state *
drm_atomic_helper_connector_duplicate_state(struct drm_connector *connector);
struct drm_atomic_state *
drm_atomic_helper_duplicate_state(struct drm_device *dev,
      struct drm_modeset_acquire_ctx *ctx);
void
__drm_atomic_helper_connector_destroy_state(struct drm_connector *connector,
         struct drm_connector_state *state);
void drm_atomic_helper_connector_destroy_state(struct drm_connector *connector,
       struct drm_connector_state *state);
static inline _Bool
drm_atomic_plane_disabling(struct drm_plane *plane,
      struct drm_plane_state *old_state)
{
 ({ int __ret = !!((plane->state->crtc == ((void *)0) && plane->state->fb != ((void *)0)) || (plane->state->crtc != ((void *)0) && plane->state->fb == ((void *)0))); if (__ret) printf("WARNING %s failed at %s:%d\n", "(plane->state->crtc == ((void *)0) && plane->state->fb != ((void *)0)) || (plane->state->crtc != ((void *)0) && plane->state->fb == ((void *)0))", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../dev/pci/drm/drm_atomic_helper.h", 183); __builtin_expect(!!(__ret), 0); });
 return (!old_state || old_state->crtc) && !plane->state->crtc;
}
static const uint32_t safe_modeset_formats[] = {
 ((__u32)('X') | ((__u32)('R') << 8) | ((__u32)('2') << 16) | ((__u32)('4') << 24)),
 ((__u32)('A') | ((__u32)('R') << 8) | ((__u32)('2') << 16) | ((__u32)('4') << 24)),
};
static int get_connectors_for_crtc(struct drm_crtc *crtc,
       struct drm_connector **connector_list,
       int num_connectors)
{
 struct drm_device *dev = crtc->dev;
 struct drm_connector *connector;
 int count = 0;
 ({ int __ret = !!(!drm_modeset_is_locked(&dev->mode_config.connection_mutex)); if (__ret) printf("WARNING %s failed at %s:%d\n", "!drm_modeset_is_locked(&dev->mode_config.connection_mutex)", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../dev/pci/drm/drm_plane_helper.c", 94); __builtin_expect(!!(__ret), 0); });
 for (assert_drm_connector_list_read_locked(&(dev)->mode_config), connector = ({ __typeof( ((struct drm_connector *)0)->head ) *__mptr = ((&(dev)->mode_config.connector_list)->next); (struct drm_connector *)( (char *)__mptr - __builtin_offsetof(struct drm_connector, head) );}); &connector->head != (&(dev)->mode_config.connector_list); connector = ({ __typeof( ((typeof(*(connector)) *)0)->head ) *__mptr = (((connector)->head.next)); (typeof(*(connector)) *)( (char *)__mptr - __builtin_offsetof(typeof(*(connector)), head) );})) {
  if (connector->encoder && connector->encoder->crtc == crtc) {
   if (connector_list != ((void *)0) && count < num_connectors)
    *(connector_list++) = connector;
   count++;
  }
 }
 return count;
}
int drm_plane_helper_check_update(struct drm_plane *plane,
        struct drm_crtc *crtc,
        struct drm_framebuffer *fb,
        struct drm_rect *src,
        struct drm_rect *dest,
        const struct drm_rect *clip,
        int min_scale,
        int max_scale,
        _Bool can_position,
        _Bool can_update_disabled,
        _Bool *visible)
{
 int hscale, vscale;
 if (!fb) {
  *visible = 0;
  return 0;
 }
 if (({ int __ret = !!(!crtc); if (__ret) printf("WARNING %s failed at %s:%d\n", "!crtc", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../dev/pci/drm/drm_plane_helper.c", 154); __builtin_expect(!!(__ret), 0); })) {
  *visible = 0;
  return 0;
 }
 if (!crtc->enabled && !can_update_disabled) {
  do { } while( 0);
  return -22;
 }
 hscale = drm_rect_calc_hscale(src, dest, min_scale, max_scale);
 vscale = drm_rect_calc_vscale(src, dest, min_scale, max_scale);
 if (hscale < 0 || vscale < 0) {
  do { } while( 0);
  return -34;
 }
 *visible = drm_rect_clip_scaled(src, dest, clip, hscale, vscale);
 if (!*visible)
  return 0;
 if (!can_position && !drm_rect_equals(dest, clip)) {
  do { } while( 0);
  return -22;
 }
 return 0;
}
;
int drm_primary_helper_update(struct drm_plane *plane, struct drm_crtc *crtc,
         struct drm_framebuffer *fb,
         int crtc_x, int crtc_y,
         unsigned int crtc_w, unsigned int crtc_h,
         uint32_t src_x, uint32_t src_y,
         uint32_t src_w, uint32_t src_h)
{
 struct drm_mode_set set = {
  .crtc = crtc,
  .fb = fb,
  .mode = &crtc->mode,
  .x = src_x >> 16,
  .y = src_y >> 16,
 };
 struct drm_rect src = {
  .x1 = src_x,
  .y1 = src_y,
  .x2 = src_x + src_w,
  .y2 = src_y + src_h,
 };
 struct drm_rect dest = {
  .x1 = crtc_x,
  .y1 = crtc_y,
  .x2 = crtc_x + crtc_w,
  .y2 = crtc_y + crtc_h,
 };
 const struct drm_rect clip = {
  .x2 = crtc->mode.hdisplay,
  .y2 = crtc->mode.vdisplay,
 };
 struct drm_connector **connector_list;
 int num_connectors, ret;
 _Bool visible;
 ret = drm_plane_helper_check_update(plane, crtc, fb,
         &src, &dest, &clip,
         (1<<16),
         (1<<16),
         0, 0, &visible);
 if (ret)
  return ret;
 if (!visible)
  return plane->funcs->disable_plane(plane);
 num_connectors = get_connectors_for_crtc(crtc, ((void *)0), 0);
 ((!(num_connectors == 0)) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../dev/pci/drm/drm_plane_helper.c", 278, "!(num_connectors == 0)"));
 connector_list = kzalloc(num_connectors * sizeof(*connector_list),
     (0x0001 | 0x0004));
 if (!connector_list)
  return -12;
 get_connectors_for_crtc(crtc, connector_list, num_connectors);
 set.connectors = connector_list;
 set.num_connectors = num_connectors;
 ret = crtc->funcs->set_config(&set);
 kfree(connector_list);
 return ret;
}
;
int drm_primary_helper_disable(struct drm_plane *plane)
{
 return -22;
}
;
void drm_primary_helper_destroy(struct drm_plane *plane)
{
 drm_plane_cleanup(plane);
 kfree(plane);
}
;
const struct drm_plane_funcs drm_primary_helper_funcs = {
 .update_plane = drm_primary_helper_update,
 .disable_plane = drm_primary_helper_disable,
 .destroy = drm_primary_helper_destroy,
};
;
static struct drm_plane *create_primary_plane(struct drm_device *dev)
{
 struct drm_plane *primary;
 int ret;
 primary = kzalloc(sizeof(*primary), (0x0001 | 0x0004));
 if (primary == ((void *)0)) {
  do { } while( 0);
  return ((void *)0);
 }
 primary->format_default = 1;
 ret = drm_universal_plane_init(dev, primary, 0,
           &drm_primary_helper_funcs,
           safe_modeset_formats,
           (sizeof((safe_modeset_formats)) / sizeof((safe_modeset_formats)[0])),
           DRM_PLANE_TYPE_PRIMARY);
 if (ret) {
  kfree(primary);
  primary = ((void *)0);
 }
 return primary;
}
int drm_crtc_init(struct drm_device *dev, struct drm_crtc *crtc,
    const struct drm_crtc_funcs *funcs)
{
 struct drm_plane *primary;
 primary = create_primary_plane(dev);
 return drm_crtc_init_with_planes(dev, crtc, primary, ((void *)0), funcs);
}
;
int drm_plane_helper_commit(struct drm_plane *plane,
       struct drm_plane_state *plane_state,
       struct drm_framebuffer *old_fb)
{
 const struct drm_plane_helper_funcs *plane_funcs;
 struct drm_crtc *crtc[2];
 const struct drm_crtc_helper_funcs *crtc_funcs[2];
 int i, ret = 0;
 plane_funcs = plane->helper_private;
 crtc[0] = plane->crtc;
 crtc[1] = crtc[0] != plane_state->crtc ? plane_state->crtc : ((void *)0);
 for (i = 0; i < 2; i++)
  crtc_funcs[i] = crtc[i] ? crtc[i]->helper_private : ((void *)0);
 if (plane_funcs->atomic_check) {
  ret = plane_funcs->atomic_check(plane, plane_state);
  if (ret)
   goto out;
 }
 if (plane_funcs->prepare_fb && plane_state->fb &&
     plane_state->fb != old_fb) {
  ret = plane_funcs->prepare_fb(plane,
           plane_state);
  if (ret)
   goto out;
 }
 do { __typeof(plane->state) __tmp = (plane->state); (plane->state) = (plane_state); (plane_state) = __tmp; } while(0);
 for (i = 0; i < 2; i++) {
  if (crtc_funcs[i] && crtc_funcs[i]->atomic_begin)
   crtc_funcs[i]->atomic_begin(crtc[i], crtc[i]->state);
 }
 if (drm_atomic_plane_disabling(plane, plane_state) &&
     plane_funcs->atomic_disable)
  plane_funcs->atomic_disable(plane, plane_state);
 else
  plane_funcs->atomic_update(plane, plane_state);
 for (i = 0; i < 2; i++) {
  if (crtc_funcs[i] && crtc_funcs[i]->atomic_flush)
   crtc_funcs[i]->atomic_flush(crtc[i], crtc[i]->state);
 }
 if (plane->state->fb == old_fb)
  goto out;
 for (i = 0; i < 2; i++) {
  if (!crtc[i])
   continue;
  if (crtc[i]->cursor == plane)
   continue;
  ret = drm_crtc_vblank_get(crtc[i]);
  if (ret == 0) {
   drm_crtc_wait_one_vblank(crtc[i]);
   drm_crtc_vblank_put(crtc[i]);
  }
  ret = 0;
 }
 if (plane_funcs->cleanup_fb)
  plane_funcs->cleanup_fb(plane, plane_state);
out:
 if (plane_state) {
  if (plane->funcs->atomic_destroy_state)
   plane->funcs->atomic_destroy_state(plane, plane_state);
  else
   drm_atomic_helper_plane_destroy_state(plane, plane_state);
 }
 return ret;
}
int drm_plane_helper_update(struct drm_plane *plane, struct drm_crtc *crtc,
       struct drm_framebuffer *fb,
       int crtc_x, int crtc_y,
       unsigned int crtc_w, unsigned int crtc_h,
       uint32_t src_x, uint32_t src_y,
       uint32_t src_w, uint32_t src_h)
{
 struct drm_plane_state *plane_state;
 if (plane->funcs->atomic_duplicate_state)
  plane_state = plane->funcs->atomic_duplicate_state(plane);
 else {
  if (!plane->state)
   drm_atomic_helper_plane_reset(plane);
  plane_state = drm_atomic_helper_plane_duplicate_state(plane);
 }
 if (!plane_state)
  return -12;
 plane_state->plane = plane;
 plane_state->crtc = crtc;
 drm_atomic_set_fb_for_plane(plane_state, fb);
 plane_state->crtc_x = crtc_x;
 plane_state->crtc_y = crtc_y;
 plane_state->crtc_h = crtc_h;
 plane_state->crtc_w = crtc_w;
 plane_state->src_x = src_x;
 plane_state->src_y = src_y;
 plane_state->src_h = src_h;
 plane_state->src_w = src_w;
 return drm_plane_helper_commit(plane, plane_state, plane->fb);
}
;
int drm_plane_helper_disable(struct drm_plane *plane)
{
 struct drm_plane_state *plane_state;
 if (!plane->crtc)
  return 0;
 if (plane->funcs->atomic_duplicate_state)
  plane_state = plane->funcs->atomic_duplicate_state(plane);
 else {
  if (!plane->state)
   drm_atomic_helper_plane_reset(plane);
  plane_state = drm_atomic_helper_plane_duplicate_state(plane);
 }
 if (!plane_state)
  return -12;
 plane_state->plane = plane;
 plane_state->crtc = ((void *)0);
 drm_atomic_set_fb_for_plane(plane_state, ((void *)0));
 return drm_plane_helper_commit(plane, plane_state, plane->fb);
}
;
