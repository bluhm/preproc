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
struct nfs_args3 {
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
void vfs_unmountall(void);
extern struct mntlist { struct mount *tqh_first; struct mount **tqh_last; } mountlist;
struct mount *getvfs(fsid_t *);
int vfs_export(struct mount *, struct netexport *, struct export_args *);
struct netcred *vfs_export_lookup(struct mount *, struct netexport *,
     struct mbuf *);
int vfs_allocate_syncvnode(struct mount *);
int speedup_syncer(void);
int vfs_syncwait(int);
void vfs_shutdown(void);
int dounmount(struct mount *, int, struct proc *);
void vfsinit(void);
int vfs_register(struct vfsconf *);
int vfs_unregister(struct vfsconf *);
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
struct specinfo {
 struct vnode **si_hashchain;
 struct vnode *si_specnext;
 struct mount *si_mountpoint;
 dev_t si_rdev;
 struct lockf *si_lockf;
 daddr_t si_lastr;
 union {
  struct vnode *ci_parent;
  u_int8_t *ci_bitmap;
 } si_ci;
};
struct cloneinfo {
 struct vnode *ci_vp;
 void *ci_data;
};
extern struct vnode *speclisth[64];
int spec_badop(void *);
int spec_getattr(void *);
int spec_setattr(void *);
int spec_access(void *);
int spec_open(void *);
int spec_close(void *);
int spec_read(void *);
int spec_write(void *);
int spec_ioctl(void *);
int spec_poll(void *);
int spec_kqfilter(void *);
int spec_fsync(void *);
int spec_inactive(void *);
int spec_strategy(void *);
int spec_print(void *);
int spec_pathconf(void *);
int spec_advlock(void *);
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
struct direct {
 u_int32_t d_ino;
 u_int16_t d_reclen;
 u_int8_t d_type;
 u_int8_t d_namlen;
 char d_name[255 + 1];
};
struct dirtemplate {
 u_int32_t dot_ino;
 int16_t dot_reclen;
 u_int8_t dot_type;
 u_int8_t dot_namlen;
 char dot_name[4];
 u_int32_t dotdot_ino;
 int16_t dotdot_reclen;
 u_int8_t dotdot_type;
 u_int8_t dotdot_namlen;
 char dotdot_name[4];
};
struct odirtemplate {
 u_int32_t dot_ino;
 int16_t dot_reclen;
 u_int16_t dot_namlen;
 char dot_name[4];
 u_int32_t dotdot_ino;
 int16_t dotdot_reclen;
 u_int16_t dotdot_namlen;
 char dotdot_name[4];
};
struct dqblk {
 u_int32_t dqb_bhardlimit;
 u_int32_t dqb_bsoftlimit;
 u_int32_t dqb_curblocks;
 u_int32_t dqb_ihardlimit;
 u_int32_t dqb_isoftlimit;
 u_int32_t dqb_curinodes;
 u_int32_t dqb_btime;
 u_int32_t dqb_itime;
};
enum ufs_quota_flags {
 UFS_QUOTA_NOUID = 0x1,
 UFS_QUOTA_NOGID = 0x2,
 UFS_QUOTA_FORCE = 0x1000
};
struct dquot;
struct inode;
struct mount;
struct proc;
struct ucred;
struct ufsmount;
struct vnode;

int ufs_quota_alloc_blocks2(struct inode *, daddr_t, struct ucred *, enum ufs_quota_flags);
int ufs_quota_free_blocks2(struct inode *, daddr_t, struct ucred *, enum ufs_quota_flags);
int ufs_quota_alloc_inode2(struct inode *, struct ucred *, enum ufs_quota_flags);
int ufs_quota_free_inode2(struct inode *, struct ucred *, enum ufs_quota_flags);
int ufs_quota_delete(struct inode *);
int getinoquota(struct inode *);
int quotaoff(struct proc *, struct mount *, int);
int qsync(struct mount *mp);
int ufs_quotactl(struct mount *, int, uid_t, caddr_t, struct proc *);
void ufs_quota_init(void);

typedef u_int32_t ufsino_t;
struct ufs1_dinode {
 u_int16_t di_mode;
 int16_t di_nlink;
 union {
  u_int16_t oldids[2];
  u_int32_t inumber;
 } di_u;
 u_int64_t di_size;
 int32_t di_atime;
 int32_t di_atimensec;
 int32_t di_mtime;
 int32_t di_mtimensec;
 int32_t di_ctime;
 int32_t di_ctimensec;
 int32_t di_db[12];
 int32_t di_ib[3];
 u_int32_t di_flags;
 int32_t di_blocks;
 int32_t di_gen;
 u_int32_t di_uid;
 u_int32_t di_gid;
 int32_t di_spare[2];
};
struct ufs2_dinode {
 u_int16_t di_mode;
 int16_t di_nlink;
 u_int32_t di_uid;
 u_int32_t di_gid;
 u_int32_t di_blksize;
 u_int64_t di_size;
 u_int64_t di_blocks;
 int64_t di_atime;
 int64_t di_mtime;
 int64_t di_ctime;
 int64_t di_birthtime;
 int32_t di_mtimensec;
 int32_t di_atimensec;
 int32_t di_ctimensec;
 int32_t di_birthnsec;
 int32_t di_gen;
 u_int32_t di_kernflags;
 u_int32_t di_flags;
 int32_t di_extsize;
 int64_t di_extb[2];
 int64_t di_db[12];
 int64_t di_ib[3];
 int64_t di_spare[3];
};
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
struct ext2fs_dinode {
 u_int16_t e2di_mode;
 u_int16_t e2di_uid_low;
 u_int32_t e2di_size;
 u_int32_t e2di_atime;
 u_int32_t e2di_ctime;
 u_int32_t e2di_mtime;
 u_int32_t e2di_dtime;
 u_int16_t e2di_gid_low;
 u_int16_t e2di_nlink;
 u_int32_t e2di_nblock;
 u_int32_t e2di_flags;
 u_int32_t e2di_version_lo;
 u_int32_t e2di_blocks[12 +3];
 u_int32_t e2di_gen;
 u_int32_t e2di_facl;
 u_int32_t e2di_size_hi;
 u_int32_t e2di_faddr;
 u_int16_t e2di_nblock_hi;
 u_int16_t e2di_facl_hi;
 u_int16_t e2di_uid_high;
 u_int16_t e2di_gid_high;
 u_int16_t e2di_chksum_lo;
 u_int16_t e2di__reserved;
 u_int16_t e2di_isize;
 u_int16_t e2di_chksum_hi;
 u_int32_t e2di_x_ctime;
 u_int32_t e2di_x_mtime;
 u_int32_t e2di_x_atime;
 u_int32_t e2di_crtime;
 u_int32_t e2di_x_crtime;
 u_int32_t e2di_version_hi;
};
struct m_ext2fs;
void e2fs_i_bswap(struct m_ext2fs *, struct ext2fs_dinode *, struct ext2fs_dinode *);
struct ext4_extent {
 uint32_t e_blk;
 uint16_t e_len;
 uint16_t e_start_hi;
 uint32_t e_start_lo;
};
struct ext4_extent_index {
 uint32_t ei_blk;
 uint32_t ei_leaf_lo;
 uint16_t ei_leaf_hi;
 uint16_t ei_unused;
};
struct ext4_extent_header {
 uint16_t eh_magic;
 uint16_t eh_ecount;
 uint16_t eh_max;
 uint16_t eh_depth;
 uint32_t eh_gen;
};
struct ext4_extent_cache {
 daddr_t ec_start;
 uint32_t ec_blk;
 uint32_t ec_len;
 uint32_t ec_type;
};
struct ext4_extent_path {
 uint16_t ep_depth;
 struct buf *ep_bp;
 struct ext4_extent *ep_ext;
 struct ext4_extent_index *ep_index;
 struct ext4_extent_header *ep_header;
};
struct inode;
struct m_ext2fs;
int ext4_ext_in_cache(struct inode *, daddr_t, struct ext4_extent *);
void ext4_ext_put_cache(struct inode *, struct ext4_extent *, int);
struct ext4_extent_path *ext4_ext_find_extent(struct m_ext2fs *fs,
    struct inode *, daddr_t, struct ext4_extent_path *);
struct ext2fs_inode_ext {
 u_int32_t ext2fs_last_lblk;
 u_int32_t ext2fs_last_blk;
 u_int32_t ext2fs_effective_uid;
 u_int32_t ext2fs_effective_gid;
 struct ext4_extent_cache ext2fs_extent_cache;
};
struct inode {
 struct { struct inode *le_next; struct inode **le_prev; } i_hash;
 struct vnode *i_vnode;
 struct ufsmount *i_ump;
 u_int32_t i_flag;
 dev_t i_dev;
 ufsino_t i_number;
 int i_effnlink;
 union {
  struct fs *fs;
  struct m_ext2fs *e2fs;
 } inode_u;
 struct cluster_info i_ci;
 struct dquot *i_dquot[2];
 u_quad_t i_modrev;
 struct lockf *i_lockf;
 struct rrwlock i_lock;
 int32_t i_count;
 int32_t i_endoff;
 int32_t i_diroff;
 int32_t i_offset;
 ufsino_t i_ino;
 u_int32_t i_reclen;
 union {
  struct ext2fs_inode_ext e2fs;
  struct dirhash *dirhash;
 } inode_ext;
 union {
  struct ufs1_dinode *ffs1_din;
  struct ufs2_dinode *ffs2_din;
  struct ext2fs_dinode *e2fs_din;
 } dinode_u;
 struct inode_vtbl *i_vtbl;
};
struct inode_vtbl {
 int (* iv_truncate)(struct inode *, off_t, int,
     struct ucred *);
 int (* iv_update)(struct inode *, int waitfor);
 int (* iv_inode_alloc)(struct inode *, mode_t mode,
     struct ucred *, struct vnode **);
 int (* iv_inode_free)(struct inode *, ufsino_t ino, mode_t mode);
 int (* iv_buf_alloc)(struct inode *, off_t, int, struct ucred *,
     int, struct buf **);
 int (* iv_bufatoff)(struct inode *, off_t offset, char **res,
     struct buf **bpp);
};
struct indir {
 daddr_t in_lbn;
 int in_off;
 int in_exists;
};
struct ufid {
 u_int16_t ufid_len;
 u_int16_t ufid_pad;
 ufsino_t ufid_ino;
 int32_t ufid_gen;
};
struct buf;
struct inode;
struct nameidata;
struct timeval;
struct ucred;
struct uio;
struct vnode;
struct netexport;
struct ufsmount {
 struct mount *um_mountp;
 dev_t um_dev;
 struct vnode *um_devvp;
 u_long um_fstype;
 union {
  struct fs *fs;
  struct m_ext2fs *e2fs;
 } ufsmount_u;
 struct vnode *um_quotas[2];
 struct ucred *um_cred[2];
 u_long um_nindir;
 u_long um_bptrtodb;
 u_long um_seqinc;
 time_t um_btime[2];
 time_t um_itime[2];
 char um_qflags[2];
 struct netexport um_export;
 u_int64_t um_savedmaxfilesize;
 u_int um_maxsymlinklen;
};
struct csum {
 int32_t cs_ndir;
 int32_t cs_nbfree;
 int32_t cs_nifree;
 int32_t cs_nffree;
};
struct csum_total {
 int64_t cs_ndir;
 int64_t cs_nbfree;
 int64_t cs_nifree;
 int64_t cs_nffree;
 int64_t cs_spare[4];
};
struct fs {
 int32_t fs_firstfield;
 int32_t fs_unused_1;
 int32_t fs_sblkno;
 int32_t fs_cblkno;
 int32_t fs_iblkno;
 int32_t fs_dblkno;
 int32_t fs_cgoffset;
 int32_t fs_cgmask;
 int32_t fs_ffs1_time;
 int32_t fs_ffs1_size;
 int32_t fs_ffs1_dsize;
 int32_t fs_ncg;
 int32_t fs_bsize;
 int32_t fs_fsize;
 int32_t fs_frag;
 int32_t fs_minfree;
 int32_t fs_rotdelay;
 int32_t fs_rps;
 int32_t fs_bmask;
 int32_t fs_fmask;
 int32_t fs_bshift;
 int32_t fs_fshift;
 int32_t fs_maxcontig;
 int32_t fs_maxbpg;
 int32_t fs_fragshift;
 int32_t fs_fsbtodb;
 int32_t fs_sbsize;
 int32_t fs_csmask;
 int32_t fs_csshift;
 int32_t fs_nindir;
 int32_t fs_inopb;
 int32_t fs_nspf;
 int32_t fs_optim;
 int32_t fs_npsect;
 int32_t fs_interleave;
 int32_t fs_trackskew;
 int32_t fs_id[2];
 int32_t fs_ffs1_csaddr;
 int32_t fs_cssize;
 int32_t fs_cgsize;
 int32_t fs_ntrak;
 int32_t fs_nsect;
 int32_t fs_spc;
 int32_t fs_ncyl;
 int32_t fs_cpg;
 int32_t fs_ipg;
 int32_t fs_fpg;
 struct csum fs_ffs1_cstotal;
 int8_t fs_fmod;
 int8_t fs_clean;
 int8_t fs_ronly;
 int8_t fs_ffs1_flags;
 u_char fs_fsmnt[468];
 u_char fs_volname[32];
 u_int64_t fs_swuid;
 int32_t fs_pad;
 int32_t fs_cgrotor;
 void *fs_ocsp[((128 / sizeof(void *)) - 4)];
 u_int8_t *fs_contigdirs;
 struct csum *fs_csp;
 int32_t *fs_maxcluster;
 u_char *fs_active;
 int32_t fs_cpc;
 int32_t fs_maxbsize;
 int64_t fs_spareconf64[17];
 int64_t fs_sblockloc;
 struct csum_total fs_cstotal;
 int64_t fs_time;
 int64_t fs_size;
 int64_t fs_dsize;
 int64_t fs_csaddr;
 int64_t fs_pendingblocks;
 int32_t fs_pendinginodes;
 int32_t fs_snapinum[20];
 int32_t fs_avgfilesize;
 int32_t fs_avgfpdir;
 int32_t fs_sparecon[26];
 u_int32_t fs_flags;
 int32_t fs_fscktime;
 int32_t fs_contigsumsize;
 int32_t fs_maxsymlinklen;
 int32_t fs_inodefmt;
 u_int64_t fs_maxfilesize;
 int64_t fs_qbmask;
 int64_t fs_qfmask;
 int32_t fs_state;
 int32_t fs_postblformat;
 int32_t fs_nrpos;
 int32_t fs_postbloff;
 int32_t fs_rotbloff;
 int32_t fs_magic;
 u_int8_t fs_space[1];
};
struct cg {
 int32_t cg_firstfield;
 int32_t cg_magic;
 int32_t cg_time;
 int32_t cg_cgx;
 int16_t cg_ncyl;
 int16_t cg_niblk;
 int32_t cg_ndblk;
 struct csum cg_cs;
 int32_t cg_rotor;
 int32_t cg_frotor;
 int32_t cg_irotor;
 int32_t cg_frsum[8];
 int32_t cg_btotoff;
 int32_t cg_boff;
 int32_t cg_iusedoff;
 int32_t cg_freeoff;
 int32_t cg_nextfreeoff;
 int32_t cg_clustersumoff;
 int32_t cg_clusteroff;
 int32_t cg_nclusterblks;
 int32_t cg_ffs2_niblk;
 int32_t cg_initediblk;
 int32_t cg_sparecon32[3];
 int64_t cg_ffs2_time;
 int64_t cg_sparecon64[3];
};
struct ocg {
 int32_t cg_firstfield;
 int32_t cg_unused_1;
 int32_t cg_time;
 int32_t cg_cgx;
 int16_t cg_ncyl;
 int16_t cg_niblk;
 int32_t cg_ndblk;
 struct csum cg_cs;
 int32_t cg_rotor;
 int32_t cg_frotor;
 int32_t cg_irotor;
 int32_t cg_frsum[8];
 int32_t cg_btot[32];
 int16_t cg_b[32][8];
 u_int8_t cg_iused[256];
 int32_t cg_magic;
 u_int8_t cg_free[1];
};
extern const int inside[], around[];
extern const u_char *fragtbl[];
struct worklist {
 struct { struct worklist *le_next; struct worklist **le_prev; } wk_list;
 unsigned short wk_type;
 unsigned short wk_state;
};
struct dirremhd { struct dirrem *lh_first; };
struct diraddhd { struct diradd *lh_first; };
struct newblkhd { struct newblk *lh_first; };
struct inodedephd { struct inodedep *lh_first; };
struct allocindirhd { struct allocindir *lh_first; };
struct allocdirecthd { struct allocdirect *lh_first; };
struct allocdirectlst { struct allocdirect *tqh_first; struct allocdirect **tqh_last; };
struct pagedep {
 struct worklist pd_list;
 struct { struct pagedep *le_next; struct pagedep **le_prev; } pd_hash;
 struct mount *pd_mnt;
 ufsino_t pd_ino;
 daddr_t pd_lbn;
 struct dirremhd pd_dirremhd;
 struct diraddhd pd_diraddhd[6];
 struct diraddhd pd_pendinghd;
};
struct inodedep {
 struct worklist id_list;
 struct { struct inodedep *le_next; struct inodedep **le_prev; } id_hash;
 struct fs *id_fs;
 ufsino_t id_ino;
 nlink_t id_nlinkdelta;
 union {
  struct ufs1_dinode *idu_savedino1;
  struct ufs2_dinode *idu_savedino2;
 } id_un;
 struct { struct inodedep *le_next; struct inodedep **le_prev; } id_deps;
 struct buf *id_buf;
 off_t id_savedsize;
 struct workhead id_pendinghd;
 struct workhead id_bufwait;
 struct workhead id_inowait;
 struct allocdirectlst id_inoupdt;
 struct allocdirectlst id_newinoupdt;
};
struct newblk {
 struct { struct newblk *le_next; struct newblk **le_prev; } nb_hash;
 struct fs *nb_fs;
 daddr_t nb_newblkno;
 int nb_state;
 struct { struct newblk *le_next; struct newblk **le_prev; } nb_deps;
 struct bmsafemap *nb_bmsafemap;
};
struct bmsafemap {
 struct worklist sm_list;
 struct buf *sm_buf;
 struct allocdirecthd sm_allocdirecthd;
 struct allocindirhd sm_allocindirhd;
 struct inodedephd sm_inodedephd;
 struct newblkhd sm_newblkhd;
};
struct allocdirect {
 struct worklist ad_list;
 struct { struct allocdirect *tqe_next; struct allocdirect **tqe_prev; } ad_next;
 daddr_t ad_lbn;
 daddr_t ad_newblkno;
 daddr_t ad_oldblkno;
 long ad_newsize;
 long ad_oldsize;
 struct { struct allocdirect *le_next; struct allocdirect **le_prev; } ad_deps;
 struct buf *ad_buf;
 struct inodedep *ad_inodedep;
 struct freefrag *ad_freefrag;
 struct workhead ad_newdirblk;
};
struct indirdep {
 struct worklist ir_list;
 caddr_t ir_saveddata;
 struct buf *ir_savebp;
 struct allocindirhd ir_donehd;
 struct allocindirhd ir_deplisthd;
};
struct allocindir {
 struct worklist ai_list;
 struct { struct allocindir *le_next; struct allocindir **le_prev; } ai_next;
 int ai_offset;
 daddr_t ai_newblkno;
 daddr_t ai_oldblkno;
 struct freefrag *ai_freefrag;
 struct indirdep *ai_indirdep;
 struct { struct allocindir *le_next; struct allocindir **le_prev; } ai_deps;
 struct buf *ai_buf;
};
struct freefrag {
 struct worklist ff_list;
 struct vnode *ff_devvp;
 struct mount *ff_mnt;
 daddr_t ff_blkno;
 long ff_fragsize;
 ufsino_t ff_inum;
};
struct freeblks {
 struct worklist fb_list;
 ufsino_t fb_previousinum;
 struct vnode *fb_devvp;
 struct mount *fb_mnt;
 off_t fb_oldsize;
 off_t fb_newsize;
 int fb_chkcnt;
 uid_t fb_uid;
 daddr_t fb_dblks[12];
 daddr_t fb_iblks[3];
};
struct freefile {
 struct worklist fx_list;
 mode_t fx_mode;
 ufsino_t fx_oldinum;
 struct vnode *fx_devvp;
 struct mount *fx_mnt;
};
struct diradd {
 struct worklist da_list;
 struct { struct diradd *le_next; struct diradd **le_prev; } da_pdlist;
 int32_t da_offset;
 ufsino_t da_newinum;
 union {
 struct dirrem *dau_previous;
 struct pagedep *dau_pagedep;
 } da_un;
};
struct mkdir {
 struct worklist md_list;
 struct diradd *md_diradd;
 struct buf *md_buf;
 struct { struct mkdir *le_next; struct mkdir **le_prev; } md_mkdirs;
};
struct mkdirlist { struct mkdir *lh_first; } mkdirlisthd;
struct dirrem {
 struct worklist dm_list;
 struct { struct dirrem *le_next; struct dirrem **le_prev; } dm_next;
 struct mount *dm_mnt;
 ufsino_t dm_oldinum;
 union {
 struct pagedep *dmu_pagedep;
 ufsino_t dmu_dirinum;
 } dm_un;
};
struct newdirblk {
 struct worklist db_list;
 struct pagedep *db_pagedep;
};
struct buf;
struct fid;
struct fs;
struct inode;
struct mount;
struct nameidata;
struct proc;
struct statfs;
struct timeval;
struct ucred;
struct ufsmount;
struct vfsconf;
struct uio;
struct vnode;
struct mbuf;
struct cg;
struct vop_vfree_args;
extern struct vops ffs_vops;
extern struct vops ffs_specvops;
extern struct vops ffs_fifovops;
int ffs_alloc(struct inode *, daddr_t, daddr_t , int, struct ucred *,
     daddr_t *);
int ffs_realloccg(struct inode *, daddr_t, daddr_t, int, int ,
         struct ucred *, struct buf **, daddr_t *);
int ffs_inode_alloc(struct inode *, mode_t, struct ucred *, struct vnode **);
int ffs_inode_free(struct inode *, ufsino_t, mode_t);
int ffs_freefile(struct inode *, ufsino_t, mode_t);
int32_t ffs1_blkpref(struct inode *, daddr_t, int, int32_t *);
int64_t ffs2_blkpref(struct inode *, daddr_t, int, int64_t *);
void ffs_blkfree(struct inode *, daddr_t, long);
void ffs_clusteracct(struct fs *, struct cg *, daddr_t, int);
int ffs_balloc(struct inode *, off_t, int, struct ucred *, int, struct buf **);
int ffs_init(struct vfsconf *);
int ffs_update(struct inode *, int);
int ffs_truncate(struct inode *, off_t, int, struct ucred *);
int ffs_bufatoff(struct inode *, off_t, char **, struct buf **);
void ffs_fragacct(struct fs *, int, int32_t[], int);
void ffs_checkoverlap(struct buf *, struct inode *);
int ffs_isfreeblock(struct fs *, u_char *, daddr_t);
int ffs_isblock(struct fs *, u_char *, daddr_t);
void ffs_clrblock(struct fs *, u_char *, daddr_t);
void ffs_setblock(struct fs *, u_char *, daddr_t);
int ffs_vinit(struct mount *, struct vnode **);
int ffs_mountroot(void);
int ffs_mount(struct mount *, const char *, void *, struct nameidata *,
     struct proc *);
int ffs_reload(struct mount *, struct ucred *, struct proc *);
int ffs_mountfs(struct vnode *, struct mount *, struct proc *);
int ffs_oldfscompat(struct fs *);
int ffs_unmount(struct mount *, int, struct proc *);
int ffs_flushfiles(struct mount *, int, struct proc *);
int ffs_statfs(struct mount *, struct statfs *, struct proc *);
int ffs_sync(struct mount *, int, struct ucred *, struct proc *);
int ffs_vget(struct mount *, ino_t, struct vnode **);
int ffs_fhtovp(struct mount *, struct fid *, struct vnode **);
int ffs_vptofh(struct vnode *, struct fid *);
int ffs_sysctl(int *, u_int, void *, size_t *, void *, size_t,
      struct proc *);
int ffs_sbupdate(struct ufsmount *, int);
int ffs_cgupdate(struct ufsmount *, int);
int ffs_read(void *);
int ffs_write(void *);
int ffs_fsync(void *);
int ffs_reclaim(void *);
int ffsfifo_reclaim(void *);
struct vop_vfree_args;
struct vop_fsync_args;
void softdep_initialize(void);
int softdep_process_worklist(struct mount *);
int softdep_mount(struct vnode *, struct mount *, struct fs *,
          struct ucred *);
int softdep_flushworklist(struct mount *, int *, struct proc *);
int softdep_flushfiles(struct mount *, int, struct proc *);
void softdep_update_inodeblock(struct inode *, struct buf *, int);
void softdep_load_inodeblock(struct inode *);
void softdep_freefile(struct vnode *, ufsino_t, mode_t);
void softdep_setup_freeblocks(struct inode *, off_t);
void softdep_setup_inomapdep(struct buf *, struct inode *, ufsino_t);
void softdep_setup_blkmapdep(struct buf *, struct fs *, daddr_t);
void softdep_setup_allocdirect(struct inode *, daddr_t, daddr_t,
            daddr_t, long, long, struct buf *);
void softdep_setup_allocindir_meta(struct buf *, struct inode *,
            struct buf *, int, daddr_t);
void softdep_setup_allocindir_page(struct inode *, daddr_t,
            struct buf *, int, daddr_t, daddr_t, struct buf *);
void softdep_fsync_mountdev(struct vnode *, int);
int softdep_sync_metadata(struct vop_fsync_args *);
int softdep_fsync(struct vnode *);
extern struct pool ffs_ino_pool;
extern struct pool ffs_dinode1_pool;
extern struct pool ffs_dinode2_pool;
struct buf;
struct componentname;
struct direct;
struct disklabel;
struct dquot;
struct fid;
struct flock;
struct indir;
struct inode;
struct mbuf;
struct mount;
struct nameidata;
struct proc;
struct ucred;
struct ufs_args;
struct ufsmount;
struct uio;
struct vattr;
struct vfsconf;
struct vnode;
int ufs_access(void *);
int ufs_advlock(void *);
int ufs_bmap(void *);
int ufs_close(void *);
int ufs_create(void *);
int ufs_getattr(void *);
int ufs_inactive(void *);
int ufs_ioctl(void *);
int ufs_islocked(void *);
int ufs_link(void *);
int ufs_lock(void *);
int ufs_lookup(void *);
int ufs_mkdir(void *);
int ufs_mknod(void *);
int ufs_mmap(void *);
int ufs_open(void *);
int ufs_pathconf(void *);
int ufs_print(void *);
int ufs_readdir(void *);
int ufs_readlink(void *);
int ufs_remove(void *);
int ufs_rename(void *);
int ufs_rmdir(void *);
int ufs_poll(void *);
int ufs_kqfilter(void *);
int ufs_setattr(void *);
int ufs_strategy(void *);
int ufs_symlink(void *);
int ufs_unlock(void *);
int ufsspec_close(void *);
int ufsspec_read(void *);
int ufsspec_write(void *);
int ufsfifo_read(void *);
int ufsfifo_write(void *);
int ufsfifo_close(void *);
int ufs_bmaparray(struct vnode *, daddr_t, daddr_t *, struct indir *,
         int *, int *);
int ufs_getlbns(struct vnode *, daddr_t, struct indir *, int *);
void ufs_ihashinit(void);
struct vnode *ufs_ihashlookup(dev_t, ufsino_t);
struct vnode *ufs_ihashget(dev_t, ufsino_t);
int ufs_ihashins(struct inode *);
void ufs_ihashrem(struct inode *);
int ufs_init(struct vfsconf *);
int ufs_reclaim(struct vnode *, struct proc *);
void ufs_dirbad(struct inode *, int32_t, char *);
int ufs_dirbadentry(struct vnode *, struct direct *, int);
void ufs_makedirentry(struct inode *, struct componentname *,
      struct direct *);
int ufs_direnter(struct vnode *, struct vnode *, struct direct *,
        struct componentname *, struct buf *);
int ufs_dirremove(struct vnode *, struct inode *, int, int);
int ufs_dirrewrite(struct inode *, struct inode *,
          ufsino_t, int, int);
int ufs_dirempty(struct inode *, ufsino_t, struct ucred *);
int ufs_checkpath(struct inode *, struct inode *, struct ucred *);
int ufs_start(struct mount *, int, struct proc *);
int ufs_root(struct mount *, struct vnode **);
int ufs_quotactl(struct mount *, int, uid_t, caddr_t, struct proc *);
int ufs_fhtovp(struct mount *, struct ufid *, struct vnode **);
int ufs_check_export(struct mount *, struct mbuf *, int *,
  struct ucred **);
void ufs_itimes(struct vnode *);
int ufs_makeinode(int, struct vnode *, struct vnode **,
    struct componentname *);
int softdep_setup_directory_add(struct buf *, struct inode *, off_t,
          long, struct buf *, int);
void softdep_change_directoryentry_offset(struct inode *, caddr_t,
          caddr_t, caddr_t, int);
void softdep_setup_remove(struct buf *,struct inode *, struct inode *,
          int);
void softdep_setup_directory_change(struct buf *, struct inode *,
          struct inode *, long, int);
void softdep_change_linkcnt(struct inode *, int);
int softdep_slowdown(struct vnode *);
const char *softdep_typenames[] = {
 "pagedep",
 "inodedep",
 "newblk",
 "bmsafemap",
 "allocdirect",
 "indirdep",
 "allocindir",
 "freefrag",
 "freeblks",
 "freefile",
 "diradd",
 "mkdir",
 "dirrem",
 "newdirblk",
};
 void softdep_error(char *, int);
 void drain_output(struct vnode *, int);
 int getdirtybuf(struct buf *, int);
 void clear_remove(struct proc *);
 void clear_inodedeps(struct proc *);
 int flush_pagedep_deps(struct vnode *, struct mount *,
     struct diraddhd *);
 int flush_inodedep_deps(struct fs *, ufsino_t);
 int handle_written_filepage(struct pagedep *, struct buf *);
 void diradd_inode_written(struct diradd *, struct inodedep *);
 int handle_written_inodeblock(struct inodedep *, struct buf *);
 void handle_allocdirect_partdone(struct allocdirect *);
 void handle_allocindir_partdone(struct allocindir *);
 void initiate_write_filepage(struct pagedep *, struct buf *);
 void handle_written_mkdir(struct mkdir *, int);
 void initiate_write_inodeblock_ufs1(struct inodedep *, struct buf *);
 void initiate_write_inodeblock_ufs2(struct inodedep *, struct buf *);
 void handle_workitem_freefile(struct freefile *);
 void handle_workitem_remove(struct dirrem *);
 struct dirrem *newdirrem(struct buf *, struct inode *,
     struct inode *, int, struct dirrem **);
 void free_diradd(struct diradd *);
 void free_allocindir(struct allocindir *, struct inodedep *);
 void free_newdirblk(struct newdirblk *);
 int indir_trunc(struct inode *, daddr_t, int, daddr_t, long *);
 void deallocate_dependencies(struct buf *, struct inodedep *);
 void free_allocdirect(struct allocdirectlst *,
     struct allocdirect *, int);
 int check_inode_unwritten(struct inodedep *);
 int free_inodedep(struct inodedep *);
 void handle_workitem_freeblocks(struct freeblks *);
 void merge_inode_lists(struct inodedep *);
 void setup_allocindir_phase2(struct buf *, struct inode *,
     struct allocindir *);
 struct allocindir *newallocindir(struct inode *, int, daddr_t,
     daddr_t);
 void handle_workitem_freefrag(struct freefrag *);
 struct freefrag *newfreefrag(struct inode *, daddr_t, long);
 void allocdirect_merge(struct allocdirectlst *,
     struct allocdirect *, struct allocdirect *);
 struct bmsafemap *bmsafemap_lookup(struct buf *);
 int newblk_lookup(struct fs *, daddr_t, int,
     struct newblk **);
 int inodedep_lookup(struct fs *, ufsino_t, int, struct inodedep **);
 int pagedep_lookup(struct inode *, daddr_t, int, struct pagedep **);
 void pause_timer(void *);
 int request_cleanup(int, int);
 int process_worklist_item(struct mount *, int);
 void add_to_worklist(struct worklist *);
void softdep_disk_io_initiation(struct buf *);
void softdep_disk_write_complete(struct buf *);
void softdep_deallocate_dependencies(struct buf *);
void softdep_move_dependencies(struct buf *, struct buf *);
int softdep_count_dependencies(struct buf *bp, int, int);
 struct lockit {
 int lkt_spl;
} lk = { 0 };
struct sema {
 int value;
 pid_t holder;
 char *name;
 int prio;
 int timo;
};
 void sema_init(struct sema *, char *, int, int);
 int sema_get(struct sema *, struct lockit *);
 void sema_release(struct sema *);
 void
sema_init(struct sema *semap, char *name, int prio, int timo)
{
 semap->holder = -1;
 semap->value = 0;
 semap->name = name;
 semap->prio = prio;
 semap->timo = timo;
}
 int
sema_get(struct sema *semap, struct lockit *interlock)
{
 int s;
 if (semap->value++ > 0) {
  if (interlock != ((void *)0))
   s = ((interlock)->lkt_spl);
  tsleep((caddr_t)semap, semap->prio, semap->name, semap->timo);
  if (interlock != ((void *)0)) {
   (interlock)->lkt_spl = (s);
   _splx((interlock)->lkt_spl);
  }
  return (0);
 }
 semap->holder = (__curcpu->ci_self)->ci_curproc->p_tid;
 if (interlock != ((void *)0))
  _splx((interlock)->lkt_spl);
 return (1);
}
 void
sema_release(struct sema *semap)
{
 if (semap->value <= 0 || semap->holder != (__curcpu->ci_self)->ci_curproc->p_tid) {
  panic("sema_release: not held");
 }
 if (--semap->value > 0) {
  semap->value = 0;
  wakeup(semap);
 }
 semap->holder = -1;
}
 struct pool pagedep_pool;
 struct pool inodedep_pool;
 struct pool newblk_pool;
 struct pool bmsafemap_pool;
 struct pool allocdirect_pool;
 struct pool indirdep_pool;
 struct pool allocindir_pool;
 struct pool freefrag_pool;
 struct pool freeblks_pool;
 struct pool freefile_pool;
 struct pool diradd_pool;
 struct pool mkdir_pool;
 struct pool dirrem_pool;
 struct pool newdirblk_pool;
static __inline void
softdep_free(struct worklist *item, int type)
{
 switch (type) {
 case 0:
  pool_put(&pagedep_pool, item);
  break;
 case 1:
  pool_put(&inodedep_pool, item);
  break;
 case 3:
  pool_put(&bmsafemap_pool, item);
  break;
 case 4:
  pool_put(&allocdirect_pool, item);
  break;
 case 5:
  pool_put(&indirdep_pool, item);
  break;
 case 6:
  pool_put(&allocindir_pool, item);
  break;
 case 7:
  pool_put(&freefrag_pool, item);
  break;
 case 8:
  pool_put(&freeblks_pool, item);
  break;
 case 9:
  pool_put(&freefile_pool, item);
  break;
 case 10:
  pool_put(&diradd_pool, item);
  break;
 case 11:
  pool_put(&mkdir_pool, item);
  break;
 case 12:
  pool_put(&dirrem_pool, item);
  break;
 case 13:
  pool_put(&newdirblk_pool, item);
  break;
 default:
  panic("softdep_free: unknown type %d", type);
 }
}
struct workhead softdep_freequeue;
static __inline void
softdep_freequeue_add(struct worklist *item)
{
 int s;
 s = _splraise(5);
 do { if (((item)->wk_list.le_next = (&softdep_freequeue)->lh_first) != ((void *)0)) (&softdep_freequeue)->lh_first->wk_list.le_prev = &(item)->wk_list.le_next; (&softdep_freequeue)->lh_first = (item); (item)->wk_list.le_prev = &(&softdep_freequeue)->lh_first; } while (0);
 _splx(s);
}
static __inline void
softdep_freequeue_process(void)
{
 struct worklist *wk;
 do { if (splassert_ctl > 0) { splassert_check(5, __func__); } } while (0);
 while ((wk = ((&softdep_freequeue)->lh_first)) != ((void *)0)) {
  do { if ((wk)->wk_list.le_next != ((void *)0)) (wk)->wk_list.le_next->wk_list.le_prev = (wk)->wk_list.le_prev; *(wk)->wk_list.le_prev = (wk)->wk_list.le_next; ((wk)->wk_list.le_prev) = ((void *)-1); ((wk)->wk_list.le_next) = ((void *)-1); } while (0);
  _splx((&lk)->lkt_spl);
  softdep_free(wk, wk->wk_type);
  (&lk)->lkt_spl = _splraise(5);
 }
}
 struct workhead softdep_workitem_pending;
 struct worklist *worklist_tail;
 int num_on_worklist;
 int softdep_worklist_busy;
 int softdep_worklist_req;
 int max_softdeps;
 int tickdelay = 2;
 int proc_waiting;
 int *stat_countp;
 struct timeout proc_waiting_timeout;
 struct proc *filesys_syncer;
 int req_clear_inodedeps;
 int req_clear_remove;
 int stat_worklist_push;
 int stat_blk_limit_push;
 int stat_ino_limit_push;
 int stat_blk_limit_hit;
 int stat_ino_limit_hit;
 int stat_sync_limit_hit;
 int stat_indir_blk_ptrs;
 int stat_inode_bitmap;
 int stat_direct_blk_ptrs;
 int stat_dir_entry;
 void
add_to_worklist(struct worklist *wk)
{
 if (wk->wk_state & 0x8000) {
  panic("add_to_worklist: already on list");
 }
 wk->wk_state |= 0x8000;
 if (((&softdep_workitem_pending)->lh_first) == ((void *)0))
  do { if (((wk)->wk_list.le_next = (&softdep_workitem_pending)->lh_first) != ((void *)0)) (&softdep_workitem_pending)->lh_first->wk_list.le_prev = &(wk)->wk_list.le_next; (&softdep_workitem_pending)->lh_first = (wk); (wk)->wk_list.le_prev = &(&softdep_workitem_pending)->lh_first; } while (0);
 else
  do { if (((wk)->wk_list.le_next = (worklist_tail)->wk_list.le_next) != ((void *)0)) (worklist_tail)->wk_list.le_next->wk_list.le_prev = &(wk)->wk_list.le_next; (worklist_tail)->wk_list.le_next = (wk); (wk)->wk_list.le_prev = &(worklist_tail)->wk_list.le_next; } while (0);
 worklist_tail = wk;
 num_on_worklist += 1;
}
int
softdep_process_worklist(struct mount *matchmnt)
{
 struct proc *p = (__curcpu->ci_self)->ci_curproc;
 int matchcnt, loopcount;
 struct timeval starttime;
 (&lk)->lkt_spl = _splraise(5);
 softdep_freequeue_process();
 _splx((&lk)->lkt_spl);
 filesys_syncer = syncerproc;
 matchcnt = 0;
 if (matchmnt == ((void *)0)) {
  if (softdep_worklist_busy < 0)
   return(-1);
  softdep_worklist_busy += 1;
 }
 if (req_clear_inodedeps) {
  clear_inodedeps(p);
  req_clear_inodedeps -= 1;
  wakeup_n((&proc_waiting), 1);
 }
 if (req_clear_remove) {
  clear_remove(p);
  req_clear_remove -= 1;
  wakeup_n((&proc_waiting), 1);
 }
 loopcount = 1;
 getmicrouptime(&starttime);
 while (num_on_worklist > 0) {
  matchcnt += process_worklist_item(matchmnt, 0);
  if (softdep_worklist_req && matchmnt == ((void *)0)) {
   matchcnt = -1;
   break;
  }
  if (req_clear_inodedeps) {
   clear_inodedeps(p);
   req_clear_inodedeps -= 1;
   wakeup_n((&proc_waiting), 1);
  }
  if (req_clear_remove) {
   clear_remove(p);
   req_clear_remove -= 1;
   wakeup_n((&proc_waiting), 1);
  }
  {
   struct timeval diff;
   struct timeval tv;
   getmicrouptime(&tv);
   do { (&diff)->tv_sec = (&tv)->tv_sec - (&starttime)->tv_sec; (&diff)->tv_usec = (&tv)->tv_usec - (&starttime)->tv_usec; if ((&diff)->tv_usec < 0) { (&diff)->tv_sec--; (&diff)->tv_usec += 1000000; } } while (0);
   if (diff.tv_sec != 0 && matchmnt == ((void *)0)) {
    matchcnt = -1;
    break;
   }
  }
  (&lk)->lkt_spl = _splraise(5);
  softdep_freequeue_process();
  _splx((&lk)->lkt_spl);
 }
 if (matchmnt == ((void *)0)) {
  softdep_worklist_busy -= 1;
  if (softdep_worklist_req && softdep_worklist_busy == 0)
   wakeup(&softdep_worklist_req);
 }
 return (matchcnt);
}
 int
process_worklist_item(struct mount *matchmnt, int flags)
{
 struct worklist *wk, *wkend;
 struct dirrem *dirrem;
 struct mount *mp;
 struct vnode *vp;
 int matchcnt = 0;
 (&lk)->lkt_spl = _splraise(5);
 for((wk) = ((&softdep_workitem_pending)->lh_first); (wk)!= ((void *)0); (wk) = ((wk)->wk_list.le_next)) {
  if ((flags & 0x0040UL) == 0 || wk->wk_type != 12)
   break;
  dirrem = ((struct dirrem *)(wk));
  vp = ufs_ihashlookup(((struct ufsmount *)((dirrem->dm_mnt)->mnt_data))->um_dev,
      dirrem->dm_oldinum);
  if (vp == ((void *)0) || !VOP_ISLOCKED(vp))
   break;
 }
 if (wk == ((void *)0)) {
  _splx((&lk)->lkt_spl);
  return (0);
 }
 do { (wk)->wk_state &= ~0x8000; do { if ((wk)->wk_list.le_next != ((void *)0)) (wk)->wk_list.le_next->wk_list.le_prev = (wk)->wk_list.le_prev; *(wk)->wk_list.le_prev = (wk)->wk_list.le_next; ((wk)->wk_list.le_prev) = ((void *)-1); ((wk)->wk_list.le_next) = ((void *)-1); } while (0); } while (0);
 if (wk == worklist_tail) {
  for((wkend) = ((&softdep_workitem_pending)->lh_first); (wkend)!= ((void *)0); (wkend) = ((wkend)->wk_list.le_next))
   if (((wkend)->wk_list.le_next) == ((void *)0))
    break;
  worklist_tail = wkend;
 }
 num_on_worklist -= 1;
 _splx((&lk)->lkt_spl);
 switch (wk->wk_type) {
 case 12:
  mp = ((struct dirrem *)(wk))->dm_mnt;
  if (mp == matchmnt)
   matchcnt += 1;
  handle_workitem_remove(((struct dirrem *)(wk)));
  break;
 case 8:
  mp = ((struct freeblks *)(wk))->fb_mnt;
  if (mp == matchmnt)
   matchcnt += 1;
  handle_workitem_freeblocks(((struct freeblks *)(wk)));
  break;
 case 7:
  mp = ((struct freefrag *)(wk))->ff_mnt;
  if (mp == matchmnt)
   matchcnt += 1;
  handle_workitem_freefrag(((struct freefrag *)(wk)));
  break;
 case 9:
  mp = ((struct freefile *)(wk))->fx_mnt;
  if (mp == matchmnt)
   matchcnt += 1;
  handle_workitem_freefile(((struct freefile *)(wk)));
  break;
 default:
  panic("%s_process_worklist: Unknown type %s",
      "softdep", ((unsigned)(wk->wk_type) <= 13 ? softdep_typenames[wk->wk_type] : "???"));
 }
 return (matchcnt);
}
void
softdep_move_dependencies(struct buf *oldbp, struct buf *newbp)
{
 struct worklist *wk, *wktail;
 if (((&newbp->b_dep)->lh_first) != ((void *)0))
  panic("softdep_move_dependencies: need merge code");
 wktail = ((void *)0);
 (&lk)->lkt_spl = _splraise(5);
 while ((wk = ((&oldbp->b_dep)->lh_first)) != ((void *)0)) {
  do { if ((wk)->wk_list.le_next != ((void *)0)) (wk)->wk_list.le_next->wk_list.le_prev = (wk)->wk_list.le_prev; *(wk)->wk_list.le_prev = (wk)->wk_list.le_next; ((wk)->wk_list.le_prev) = ((void *)-1); ((wk)->wk_list.le_next) = ((void *)-1); } while (0);
  if (wktail == ((void *)0))
   do { if (((wk)->wk_list.le_next = (&newbp->b_dep)->lh_first) != ((void *)0)) (&newbp->b_dep)->lh_first->wk_list.le_prev = &(wk)->wk_list.le_next; (&newbp->b_dep)->lh_first = (wk); (wk)->wk_list.le_prev = &(&newbp->b_dep)->lh_first; } while (0);
  else
   do { if (((wk)->wk_list.le_next = (wktail)->wk_list.le_next) != ((void *)0)) (wktail)->wk_list.le_next->wk_list.le_prev = &(wk)->wk_list.le_next; (wktail)->wk_list.le_next = (wk); (wk)->wk_list.le_prev = &(wktail)->wk_list.le_next; } while (0);
  wktail = wk;
 }
 _splx((&lk)->lkt_spl);
}
int
softdep_flushworklist(struct mount *oldmnt, int *countp, struct proc *p)
{
 struct vnode *devvp;
 int count, error = 0;
 while (softdep_worklist_busy) {
  softdep_worklist_req += 1;
  tsleep(&softdep_worklist_req, 16, "softflush", 0);
  softdep_worklist_req -= 1;
 }
 softdep_worklist_busy = -1;
 *countp = 0;
 devvp = ((struct ufsmount *)((oldmnt)->mnt_data))->um_devvp;
 while ((count = softdep_process_worklist(oldmnt)) > 0) {
  *countp += count;
  vn_lock(devvp, 0x0001UL | 0x2000UL, p);
  error = VOP_FSYNC(devvp, p->p_ucred, 1, p);
  VOP_UNLOCK(devvp, p);
  if (error)
   break;
 }
 softdep_worklist_busy = 0;
 if (softdep_worklist_req)
  wakeup(&softdep_worklist_req);
 return (error);
}
int
softdep_flushfiles(struct mount *oldmnt, int flags, struct proc *p)
{
 int error, count, loopcnt;
 for (loopcnt = 10; loopcnt > 0; loopcnt--) {
  if ((error = ffs_flushfiles(oldmnt, flags, p)) != 0)
   break;
  if ((error = softdep_flushworklist(oldmnt, &count, p)) != 0 ||
      count == 0)
   break;
 }
 if (loopcnt == 0) {
  error = 16;
 }
 return (error);
}
SIPHASH_KEY softdep_hashkey;
struct pagedep_hashhead { struct pagedep *lh_first; } *pagedep_hashtbl;
u_long pagedep_hash;
 struct sema pagedep_in_progress;
 int
pagedep_lookup(struct inode *ip, daddr_t lbn, int flags,
    struct pagedep **pagedeppp)
{
 SIPHASH_CTX ctx;
 struct pagedep *pagedep;
 struct pagedep_hashhead *pagedephd;
 struct mount *mp;
 int i;
 do { if (splassert_ctl > 0) { splassert_check(5, __func__); } } while (0);
 mp = ((ip)->i_vnode)->v_mount;
 SipHash_Init((&ctx), (&softdep_hashkey));
 SipHash_Update((&ctx), 2, 4, (&mp), (sizeof(mp)));
 SipHash_Update((&ctx), 2, 4, (&ip->i_number), (sizeof(ip->i_number)));
 SipHash_Update((&ctx), 2, 4, (&lbn), (sizeof(lbn)));
 pagedephd = &pagedep_hashtbl[SipHash_End((&ctx), 2, 4) & pagedep_hash];
top:
 for((pagedep) = ((pagedephd)->lh_first); (pagedep)!= ((void *)0); (pagedep) = ((pagedep)->pd_hash.le_next))
  if (ip->i_number == pagedep->pd_ino &&
      lbn == pagedep->pd_lbn &&
      mp == pagedep->pd_mnt)
   break;
 if (pagedep) {
  *pagedeppp = pagedep;
  if ((flags & 0x0001) != 0 &&
      (pagedep->pd_list.wk_state & 0x8000) == 0)
   return (0);
  return (1);
 }
 if ((flags & 0x0001) == 0) {
  *pagedeppp = ((void *)0);
  return (0);
 }
 if (sema_get(&pagedep_in_progress, &lk) == 0) {
  (&lk)->lkt_spl = _splraise(5);
  goto top;
 }
 pagedep = pool_get(&pagedep_pool, 0x0001 | 0x0008);
 pagedep->pd_list.wk_type = 0;
 pagedep->pd_mnt = mp;
 pagedep->pd_ino = ip->i_number;
 pagedep->pd_lbn = lbn;
 do { ((&pagedep->pd_dirremhd)->lh_first) = ((void *)0); } while (0);
 do { ((&pagedep->pd_pendinghd)->lh_first) = ((void *)0); } while (0);
 for (i = 0; i < 6; i++)
  do { ((&pagedep->pd_diraddhd[i])->lh_first) = ((void *)0); } while (0);
 (&lk)->lkt_spl = _splraise(5);
 do { if (((pagedep)->pd_hash.le_next = (pagedephd)->lh_first) != ((void *)0)) (pagedephd)->lh_first->pd_hash.le_prev = &(pagedep)->pd_hash.le_next; (pagedephd)->lh_first = (pagedep); (pagedep)->pd_hash.le_prev = &(pagedephd)->lh_first; } while (0);
 sema_release(&pagedep_in_progress);
 *pagedeppp = pagedep;
 return (0);
}
struct inodedep_hashhead { struct inodedep *lh_first; } *inodedep_hashtbl;
 u_long inodedep_hash;
 long num_inodedep;
 struct sema inodedep_in_progress;
 int
inodedep_lookup(struct fs *fs, ufsino_t inum, int flags,
    struct inodedep **inodedeppp)
{
 SIPHASH_CTX ctx;
 struct inodedep *inodedep;
 struct inodedep_hashhead *inodedephd;
 int firsttry;
 do { if (splassert_ctl > 0) { splassert_check(5, __func__); } } while (0);
 firsttry = 1;
 SipHash_Init((&ctx), (&softdep_hashkey));
 SipHash_Update((&ctx), 2, 4, (&fs), (sizeof(fs)));
 SipHash_Update((&ctx), 2, 4, (&inum), (sizeof(inum)));
 inodedephd = &inodedep_hashtbl[SipHash_End((&ctx), 2, 4) & inodedep_hash];
top:
 for((inodedep) = ((inodedephd)->lh_first); (inodedep)!= ((void *)0); (inodedep) = ((inodedep)->id_hash.le_next))
  if (inum == inodedep->id_ino && fs == inodedep->id_fs)
   break;
 if (inodedep) {
  *inodedeppp = inodedep;
  return (1);
 }
 if ((flags & 0x0001) == 0) {
  *inodedeppp = ((void *)0);
  return (0);
 }
 if (num_inodedep > max_softdeps && firsttry && (flags & 0x0002) == 0 &&
     request_cleanup(1, 1)) {
  firsttry = 0;
  goto top;
 }
 if (sema_get(&inodedep_in_progress, &lk) == 0) {
  (&lk)->lkt_spl = _splraise(5);
  goto top;
 }
 num_inodedep += 1;
 inodedep = pool_get(&inodedep_pool, 0x0001);
 inodedep->id_list.wk_type = 1;
 inodedep->id_fs = fs;
 inodedep->id_ino = inum;
 inodedep->id_list.wk_state = (0x0001 | 0x0004 | 0x0008);
 inodedep->id_nlinkdelta = 0;
 inodedep->id_un.idu_savedino1 = ((void *)0);
 inodedep->id_savedsize = -1;
 inodedep->id_buf = ((void *)0);
 do { ((&inodedep->id_pendinghd)->lh_first) = ((void *)0); } while (0);
 do { ((&inodedep->id_inowait)->lh_first) = ((void *)0); } while (0);
 do { ((&inodedep->id_bufwait)->lh_first) = ((void *)0); } while (0);
 do { (&inodedep->id_inoupdt)->tqh_first = ((void *)0); (&inodedep->id_inoupdt)->tqh_last = &(&inodedep->id_inoupdt)->tqh_first; } while (0);
 do { (&inodedep->id_newinoupdt)->tqh_first = ((void *)0); (&inodedep->id_newinoupdt)->tqh_last = &(&inodedep->id_newinoupdt)->tqh_first; } while (0);
 (&lk)->lkt_spl = _splraise(5);
 do { if (((inodedep)->id_hash.le_next = (inodedephd)->lh_first) != ((void *)0)) (inodedephd)->lh_first->id_hash.le_prev = &(inodedep)->id_hash.le_next; (inodedephd)->lh_first = (inodedep); (inodedep)->id_hash.le_prev = &(inodedephd)->lh_first; } while (0);
 sema_release(&inodedep_in_progress);
 *inodedeppp = inodedep;
 return (0);
}
struct newblk_hashhead { struct newblk *lh_first; } *newblk_hashtbl;
u_long newblk_hash;
 struct sema newblk_in_progress;
 int
newblk_lookup(struct fs *fs, daddr_t newblkno, int flags,
    struct newblk **newblkpp)
{
 SIPHASH_CTX ctx;
 struct newblk *newblk;
 struct newblk_hashhead *newblkhd;
 SipHash_Init((&ctx), (&softdep_hashkey));
 SipHash_Update((&ctx), 2, 4, (&fs), (sizeof(fs)));
 SipHash_Update((&ctx), 2, 4, (&newblkno), (sizeof(newblkno)));
 newblkhd = &newblk_hashtbl[SipHash_End((&ctx), 2, 4) & newblk_hash];
top:
 for((newblk) = ((newblkhd)->lh_first); (newblk)!= ((void *)0); (newblk) = ((newblk)->nb_hash.le_next))
  if (newblkno == newblk->nb_newblkno && fs == newblk->nb_fs)
   break;
 if (newblk) {
  *newblkpp = newblk;
  return (1);
 }
 if ((flags & 0x0001) == 0) {
  *newblkpp = ((void *)0);
  return (0);
 }
 if (sema_get(&newblk_in_progress, ((void *)0)) == 0)
  goto top;
 newblk = pool_get(&newblk_pool, 0x0001);
 newblk->nb_state = 0;
 newblk->nb_fs = fs;
 newblk->nb_newblkno = newblkno;
 do { if (((newblk)->nb_hash.le_next = (newblkhd)->lh_first) != ((void *)0)) (newblkhd)->lh_first->nb_hash.le_prev = &(newblk)->nb_hash.le_next; (newblkhd)->lh_first = (newblk); (newblk)->nb_hash.le_prev = &(newblkhd)->lh_first; } while (0);
 sema_release(&newblk_in_progress);
 *newblkpp = newblk;
 return (0);
}
void
softdep_initialize(void)
{
 bioops.io_start = softdep_disk_io_initiation;
 bioops.io_complete = softdep_disk_write_complete;
 bioops.io_deallocate = softdep_deallocate_dependencies;
 bioops.io_movedeps = softdep_move_dependencies;
 bioops.io_countdeps = softdep_count_dependencies;
 do { ((&mkdirlisthd)->lh_first) = ((void *)0); } while (0);
 do { ((&softdep_workitem_pending)->lh_first) = ((void *)0); } while (0);
 max_softdeps = min (initialvnodes * 8,
     kmemstats[79].ks_limit / (2 * sizeof(struct inodedep)));
 arc4random_buf(&softdep_hashkey, sizeof(softdep_hashkey));
 pagedep_hashtbl = hashinit(initialvnodes / 5, 78, 0x0001,
     &pagedep_hash);
 sema_init(&pagedep_in_progress, "pagedep", 16, 0);
 inodedep_hashtbl = hashinit(initialvnodes, 79, 0x0001,
     &inodedep_hash);
 sema_init(&inodedep_in_progress, "inodedep", 16, 0);
 newblk_hashtbl = hashinit(64, 80, 0x0001, &newblk_hash);
 sema_init(&newblk_in_progress, "newblk", 16, 0);
 timeout_set(&proc_waiting_timeout, pause_timer, ((void *)0));
 pool_init(&pagedep_pool, sizeof(struct pagedep), 0, 0,
     0x0001, "pagedep", ((void *)0));
 pool_init(&inodedep_pool, sizeof(struct inodedep), 0, 0,
     0x0001, "inodedep", ((void *)0));
 pool_init(&newblk_pool, sizeof(struct newblk), 0, 0,
     0x0001, "newblk", ((void *)0));
 pool_init(&bmsafemap_pool, sizeof(struct bmsafemap), 0, 0,
     0x0001, "bmsafemap", ((void *)0));
 pool_init(&allocdirect_pool, sizeof(struct allocdirect), 0, 0,
     0x0001, "allocdir", ((void *)0));
 pool_init(&indirdep_pool, sizeof(struct indirdep), 0, 0,
     0x0001, "indirdep", ((void *)0));
 pool_init(&allocindir_pool, sizeof(struct allocindir), 0, 0,
     0x0001, "allocindir", ((void *)0));
 pool_init(&freefrag_pool, sizeof(struct freefrag), 0, 0,
     0x0001, "freefrag", ((void *)0));
 pool_init(&freeblks_pool, sizeof(struct freeblks), 0, 0,
     0x0001, "freeblks", ((void *)0));
 pool_init(&freefile_pool, sizeof(struct freefile), 0, 0,
     0x0001, "freefile", ((void *)0));
 pool_init(&diradd_pool, sizeof(struct diradd), 0, 0,
     0x0001, "diradd", ((void *)0));
 pool_init(&mkdir_pool, sizeof(struct mkdir), 0, 0,
     0x0001, "mkdir", ((void *)0));
 pool_init(&dirrem_pool, sizeof(struct dirrem), 0, 0,
     0x0001, "dirrem", ((void *)0));
 pool_init(&newdirblk_pool, sizeof(struct newdirblk), 0, 0,
     0x0001, "newdirblk", ((void *)0));
}
int
softdep_mount(struct vnode *devvp, struct mount *mp, struct fs *fs,
    struct ucred *cred)
{
 struct csum_total cstotal;
 struct cg *cgp;
 struct buf *bp;
 int error, cyl;
 if ((fs->fs_flags & 0x01) == 0)
  return (0);
 __builtin_memset((&cstotal), (0), (sizeof(cstotal)));
 for (cyl = 0; cyl < fs->fs_ncg; cyl++) {
  if ((error = bread(devvp, ((((((daddr_t)(fs)->fs_fpg * (cyl)) + (fs)->fs_cgoffset * ((cyl) & ~((fs)->fs_cgmask))) + (fs)->fs_cblkno)) << (fs)->fs_fsbtodb),
      fs->fs_cgsize, &bp)) != 0) {
   brelse(bp);
   return (error);
  }
  cgp = (struct cg *)bp->b_data;
  cstotal.cs_nffree += cgp->cg_cs.cs_nffree;
  cstotal.cs_nbfree += cgp->cg_cs.cs_nbfree;
  cstotal.cs_nifree += cgp->cg_cs.cs_nifree;
  cstotal.cs_ndir += cgp->cg_cs.cs_ndir;
  fs->fs_csp[cyl] = cgp->cg_cs;
  brelse(bp);
 }
 __builtin_memcpy((&fs->fs_cstotal), (&cstotal), (sizeof(cstotal)));
 return (0);
}
void
softdep_setup_inomapdep(struct buf *bp, struct inode *ip, ufsino_t newinum)
{
 struct inodedep *inodedep;
 struct bmsafemap *bmsafemap;
 (&lk)->lkt_spl = _splraise(5);
 if (inodedep_lookup(ip->inode_u.fs, newinum, 0x0001 | 0x0002, &inodedep)
     != 0) {
  _splx((&lk)->lkt_spl);
  panic("softdep_setup_inomapdep: found inode");
 }
 inodedep->id_buf = bp;
 inodedep->id_list.wk_state &= ~0x0008;
 bmsafemap = bmsafemap_lookup(bp);
 do { if (((inodedep)->id_deps.le_next = (&bmsafemap->sm_inodedephd)->lh_first) != ((void *)0)) (&bmsafemap->sm_inodedephd)->lh_first->id_deps.le_prev = &(inodedep)->id_deps.le_next; (&bmsafemap->sm_inodedephd)->lh_first = (inodedep); (inodedep)->id_deps.le_prev = &(&bmsafemap->sm_inodedephd)->lh_first; } while (0);
 _splx((&lk)->lkt_spl);
}
void
softdep_setup_blkmapdep(struct buf *bp, struct fs *fs, daddr_t newblkno)
{
 struct newblk *newblk;
 struct bmsafemap *bmsafemap;
 if (newblk_lookup(fs, newblkno, 0x0001, &newblk) != 0)
  panic("softdep_setup_blkmapdep: found block");
 (&lk)->lkt_spl = _splraise(5);
 newblk->nb_bmsafemap = bmsafemap = bmsafemap_lookup(bp);
 do { if (((newblk)->nb_deps.le_next = (&bmsafemap->sm_newblkhd)->lh_first) != ((void *)0)) (&bmsafemap->sm_newblkhd)->lh_first->nb_deps.le_prev = &(newblk)->nb_deps.le_next; (&bmsafemap->sm_newblkhd)->lh_first = (newblk); (newblk)->nb_deps.le_prev = &(&bmsafemap->sm_newblkhd)->lh_first; } while (0);
 _splx((&lk)->lkt_spl);
}
 struct bmsafemap *
bmsafemap_lookup(struct buf *bp)
{
 struct bmsafemap *bmsafemap;
 struct worklist *wk;
 do { if (splassert_ctl > 0) { splassert_check(5, __func__); } } while (0);
 for((wk) = ((&bp->b_dep)->lh_first); (wk)!= ((void *)0); (wk) = ((wk)->wk_list.le_next))
  if (wk->wk_type == 3)
   return (((struct bmsafemap *)(wk)));
 _splx((&lk)->lkt_spl);
 bmsafemap = pool_get(&bmsafemap_pool, 0x0001);
 bmsafemap->sm_list.wk_type = 3;
 bmsafemap->sm_list.wk_state = 0;
 bmsafemap->sm_buf = bp;
 do { ((&bmsafemap->sm_allocdirecthd)->lh_first) = ((void *)0); } while (0);
 do { ((&bmsafemap->sm_allocindirhd)->lh_first) = ((void *)0); } while (0);
 do { ((&bmsafemap->sm_inodedephd)->lh_first) = ((void *)0); } while (0);
 do { ((&bmsafemap->sm_newblkhd)->lh_first) = ((void *)0); } while (0);
 (&lk)->lkt_spl = _splraise(5);
 do { (&bmsafemap->sm_list)->wk_state |= 0x8000; do { if (((&bmsafemap->sm_list)->wk_list.le_next = (&bp->b_dep)->lh_first) != ((void *)0)) (&bp->b_dep)->lh_first->wk_list.le_prev = &(&bmsafemap->sm_list)->wk_list.le_next; (&bp->b_dep)->lh_first = (&bmsafemap->sm_list); (&bmsafemap->sm_list)->wk_list.le_prev = &(&bp->b_dep)->lh_first; } while (0); } while (0);
 return (bmsafemap);
}
void
softdep_setup_allocdirect(struct inode *ip, daddr_t lbn, daddr_t newblkno,
    daddr_t oldblkno, long newsize, long oldsize, struct buf *bp)
{
 struct allocdirect *adp, *oldadp;
 struct allocdirectlst *adphead;
 struct bmsafemap *bmsafemap;
 struct inodedep *inodedep;
 struct pagedep *pagedep;
 struct newblk *newblk;
 adp = pool_get(&allocdirect_pool, 0x0001 | 0x0008);
 adp->ad_list.wk_type = 4;
 adp->ad_lbn = lbn;
 adp->ad_newblkno = newblkno;
 adp->ad_oldblkno = oldblkno;
 adp->ad_newsize = newsize;
 adp->ad_oldsize = oldsize;
 adp->ad_list.wk_state = 0x0001;
 do { ((&adp->ad_newdirblk)->lh_first) = ((void *)0); } while (0);
 if (newblkno == oldblkno)
  adp->ad_freefrag = ((void *)0);
 else
  adp->ad_freefrag = newfreefrag(ip, oldblkno, oldsize);
 if (newblk_lookup(ip->inode_u.fs, newblkno, 0, &newblk) == 0)
  panic("softdep_setup_allocdirect: lost block");
 (&lk)->lkt_spl = _splraise(5);
 inodedep_lookup(ip->inode_u.fs, ip->i_number, 0x0001 | 0x0002, &inodedep);
 adp->ad_inodedep = inodedep;
 if (newblk->nb_state == 0x0008) {
  adp->ad_list.wk_state |= 0x0008;
  adp->ad_buf = ((void *)0);
 } else {
  bmsafemap = newblk->nb_bmsafemap;
  adp->ad_buf = bmsafemap->sm_buf;
  do { if ((newblk)->nb_deps.le_next != ((void *)0)) (newblk)->nb_deps.le_next->nb_deps.le_prev = (newblk)->nb_deps.le_prev; *(newblk)->nb_deps.le_prev = (newblk)->nb_deps.le_next; ((newblk)->nb_deps.le_prev) = ((void *)-1); ((newblk)->nb_deps.le_next) = ((void *)-1); } while (0);
  do { if (((adp)->ad_deps.le_next = (&bmsafemap->sm_allocdirecthd)->lh_first) != ((void *)0)) (&bmsafemap->sm_allocdirecthd)->lh_first->ad_deps.le_prev = &(adp)->ad_deps.le_next; (&bmsafemap->sm_allocdirecthd)->lh_first = (adp); (adp)->ad_deps.le_prev = &(&bmsafemap->sm_allocdirecthd)->lh_first; } while (0);
 }
 do { if ((newblk)->nb_hash.le_next != ((void *)0)) (newblk)->nb_hash.le_next->nb_hash.le_prev = (newblk)->nb_hash.le_prev; *(newblk)->nb_hash.le_prev = (newblk)->nb_hash.le_next; ((newblk)->nb_hash.le_prev) = ((void *)-1); ((newblk)->nb_hash.le_next) = ((void *)-1); } while (0);
 pool_put(&newblk_pool, newblk);
 if (bp == ((void *)0)) {
  panic("softdep_setup_allocdirect: Bonk art in the head");
 }
 do { (&adp->ad_list)->wk_state |= 0x8000; do { if (((&adp->ad_list)->wk_list.le_next = (&bp->b_dep)->lh_first) != ((void *)0)) (&bp->b_dep)->lh_first->wk_list.le_prev = &(&adp->ad_list)->wk_list.le_next; (&bp->b_dep)->lh_first = (&adp->ad_list); (&adp->ad_list)->wk_list.le_prev = &(&bp->b_dep)->lh_first; } while (0); } while (0);
 if (lbn >= 12) {
  if (oldblkno != 0) {
   _splx((&lk)->lkt_spl);
   panic("softdep_setup_allocdirect: non-zero indir");
  }
 } else {
  if (((((ip)->i_ump->um_fstype == 1) ? (ip)->dinode_u.ffs1_din->di_mode : (ip)->dinode_u.ffs2_din->di_mode) & 0170000) == 0040000 &&
      pagedep_lookup(ip, lbn, 0x0001, &pagedep) == 0)
   do { (&pagedep->pd_list)->wk_state |= 0x8000; do { if (((&pagedep->pd_list)->wk_list.le_next = (&bp->b_dep)->lh_first) != ((void *)0)) (&bp->b_dep)->lh_first->wk_list.le_prev = &(&pagedep->pd_list)->wk_list.le_next; (&bp->b_dep)->lh_first = (&pagedep->pd_list); (&pagedep->pd_list)->wk_list.le_prev = &(&bp->b_dep)->lh_first; } while (0); } while (0);
 }
 adphead = &inodedep->id_newinoupdt;
 oldadp = (*(((struct allocdirectlst *)((adphead)->tqh_last))->tqh_last));
 if (oldadp == ((void *)0) || oldadp->ad_lbn <= lbn) {
  do { (adp)->ad_next.tqe_next = ((void *)0); (adp)->ad_next.tqe_prev = (adphead)->tqh_last; *(adphead)->tqh_last = (adp); (adphead)->tqh_last = &(adp)->ad_next.tqe_next; } while (0);
  if (oldadp != ((void *)0) && oldadp->ad_lbn == lbn)
   allocdirect_merge(adphead, adp, oldadp);
  _splx((&lk)->lkt_spl);
  return;
 }
 for((oldadp) = ((adphead)->tqh_first); (oldadp) != ((void *)0); (oldadp) = ((oldadp)->ad_next.tqe_next)) {
  if (oldadp->ad_lbn >= lbn)
   break;
 }
 if (oldadp == ((void *)0)) {
  _splx((&lk)->lkt_spl);
  panic("softdep_setup_allocdirect: lost entry");
 }
 do { (adp)->ad_next.tqe_prev = (oldadp)->ad_next.tqe_prev; (adp)->ad_next.tqe_next = (oldadp); *(oldadp)->ad_next.tqe_prev = (adp); (oldadp)->ad_next.tqe_prev = &(adp)->ad_next.tqe_next; } while (0);
 if (oldadp->ad_lbn == lbn)
  allocdirect_merge(adphead, adp, oldadp);
 _splx((&lk)->lkt_spl);
}
 void
allocdirect_merge(struct allocdirectlst *adphead, struct allocdirect *newadp,
    struct allocdirect *oldadp)
{
 struct worklist *wk;
 struct freefrag *freefrag;
 struct newdirblk *newdirblk;
 do { if (splassert_ctl > 0) { splassert_check(5, __func__); } } while (0);
 if (newadp->ad_oldblkno != oldadp->ad_newblkno ||
     newadp->ad_oldsize != oldadp->ad_newsize ||
     newadp->ad_lbn >= 12) {
  _splx((&lk)->lkt_spl);
  panic("allocdirect_merge: old %lld != new %lld || lbn %lld >= "
      "%d", (long long)newadp->ad_oldblkno,
      (long long)oldadp->ad_newblkno, (long long)newadp->ad_lbn,
      12);
 }
 newadp->ad_oldblkno = oldadp->ad_oldblkno;
 newadp->ad_oldsize = oldadp->ad_oldsize;
 if (oldadp->ad_freefrag != ((void *)0) || oldadp->ad_oldblkno == 0) {
  freefrag = newadp->ad_freefrag;
  newadp->ad_freefrag = oldadp->ad_freefrag;
  oldadp->ad_freefrag = freefrag;
 }
 if ((wk = ((&oldadp->ad_newdirblk)->lh_first)) != ((void *)0)) {
  newdirblk = ((struct newdirblk *)(wk));
  do { (&newdirblk->db_list)->wk_state &= ~0x8000; do { if ((&newdirblk->db_list)->wk_list.le_next != ((void *)0)) (&newdirblk->db_list)->wk_list.le_next->wk_list.le_prev = (&newdirblk->db_list)->wk_list.le_prev; *(&newdirblk->db_list)->wk_list.le_prev = (&newdirblk->db_list)->wk_list.le_next; ((&newdirblk->db_list)->wk_list.le_prev) = ((void *)-1); ((&newdirblk->db_list)->wk_list.le_next) = ((void *)-1); } while (0); } while (0);
  if (((&oldadp->ad_newdirblk)->lh_first) != ((void *)0))
   panic("allocdirect_merge: extra newdirblk");
  do { (&newdirblk->db_list)->wk_state |= 0x8000; do { if (((&newdirblk->db_list)->wk_list.le_next = (&newadp->ad_newdirblk)->lh_first) != ((void *)0)) (&newadp->ad_newdirblk)->lh_first->wk_list.le_prev = &(&newdirblk->db_list)->wk_list.le_next; (&newadp->ad_newdirblk)->lh_first = (&newdirblk->db_list); (&newdirblk->db_list)->wk_list.le_prev = &(&newadp->ad_newdirblk)->lh_first; } while (0); } while (0);
 }
 free_allocdirect(adphead, oldadp, 0);
}
 struct freefrag *
newfreefrag(struct inode *ip, daddr_t blkno, long size)
{
 struct freefrag *freefrag;
 struct fs *fs;
 if (blkno == 0)
  return (((void *)0));
 fs = ip->inode_u.fs;
 if (((blkno) & ((fs)->fs_frag - 1)) + ((size) >> (fs)->fs_fshift) > fs->fs_frag)
  panic("newfreefrag: frag size");
 freefrag = pool_get(&freefrag_pool, 0x0001);
 freefrag->ff_list.wk_type = 7;
 freefrag->ff_list.wk_state = (((ip)->i_ump->um_fstype == 1) ? (ip)->dinode_u.ffs1_din->di_uid : (ip)->dinode_u.ffs2_din->di_uid) & ~0x8000;
 freefrag->ff_inum = ip->i_number;
 freefrag->ff_mnt = ((ip)->i_vnode)->v_mount;
 freefrag->ff_devvp = ip->i_ump->um_devvp;
 freefrag->ff_blkno = blkno;
 freefrag->ff_fragsize = size;
 return (freefrag);
}
 void
handle_workitem_freefrag(struct freefrag *freefrag)
{
 struct inode tip;
 struct ufs1_dinode dtip1;
 tip.i_vnode = ((void *)0);
 tip.dinode_u.ffs1_din = &dtip1;
 tip.inode_u.fs = ((struct ufsmount *)((freefrag->ff_mnt)->mnt_data))->ufsmount_u.fs;
 tip.i_ump = ((struct ufsmount *)((freefrag->ff_mnt)->mnt_data));
 tip.i_dev = freefrag->ff_devvp->v_un.vu_specinfo->si_rdev;
 tip.i_number = freefrag->ff_inum;
 tip.dinode_u.ffs1_din->di_uid = freefrag->ff_list.wk_state & ~0x8000;
 ffs_blkfree(&tip, freefrag->ff_blkno, freefrag->ff_fragsize);
 pool_put(&freefrag_pool, freefrag);
}
 struct allocindir *
newallocindir(struct inode *ip, int ptrno, daddr_t newblkno,
    daddr_t oldblkno)
{
 struct allocindir *aip;
 aip = pool_get(&allocindir_pool, 0x0001 | 0x0008);
 aip->ai_list.wk_type = 6;
 aip->ai_list.wk_state = 0x0001;
 aip->ai_offset = ptrno;
 aip->ai_newblkno = newblkno;
 aip->ai_oldblkno = oldblkno;
 aip->ai_freefrag = newfreefrag(ip, oldblkno, ip->inode_u.fs->fs_bsize);
 return (aip);
}
void
softdep_setup_allocindir_page(struct inode *ip, daddr_t lbn, struct buf *bp,
    int ptrno, daddr_t newblkno, daddr_t oldblkno, struct buf *nbp)
{
 struct allocindir *aip;
 struct pagedep *pagedep;
 aip = newallocindir(ip, ptrno, newblkno, oldblkno);
 (&lk)->lkt_spl = _splraise(5);
 if (((((ip)->i_ump->um_fstype == 1) ? (ip)->dinode_u.ffs1_din->di_mode : (ip)->dinode_u.ffs2_din->di_mode) & 0170000) == 0040000 &&
     pagedep_lookup(ip, lbn, 0x0001, &pagedep) == 0)
  do { (&pagedep->pd_list)->wk_state |= 0x8000; do { if (((&pagedep->pd_list)->wk_list.le_next = (&nbp->b_dep)->lh_first) != ((void *)0)) (&nbp->b_dep)->lh_first->wk_list.le_prev = &(&pagedep->pd_list)->wk_list.le_next; (&nbp->b_dep)->lh_first = (&pagedep->pd_list); (&pagedep->pd_list)->wk_list.le_prev = &(&nbp->b_dep)->lh_first; } while (0); } while (0);
 if (nbp == ((void *)0)) {
  panic("softdep_setup_allocindir_page: Bonk art in the head");
 }
 do { (&aip->ai_list)->wk_state |= 0x8000; do { if (((&aip->ai_list)->wk_list.le_next = (&nbp->b_dep)->lh_first) != ((void *)0)) (&nbp->b_dep)->lh_first->wk_list.le_prev = &(&aip->ai_list)->wk_list.le_next; (&nbp->b_dep)->lh_first = (&aip->ai_list); (&aip->ai_list)->wk_list.le_prev = &(&nbp->b_dep)->lh_first; } while (0); } while (0);
 _splx((&lk)->lkt_spl);
 setup_allocindir_phase2(bp, ip, aip);
}
void
softdep_setup_allocindir_meta(struct buf *nbp, struct inode *ip,
    struct buf *bp, int ptrno, daddr_t newblkno)
{
 struct allocindir *aip;
 aip = newallocindir(ip, ptrno, newblkno, 0);
 (&lk)->lkt_spl = _splraise(5);
 do { (&aip->ai_list)->wk_state |= 0x8000; do { if (((&aip->ai_list)->wk_list.le_next = (&nbp->b_dep)->lh_first) != ((void *)0)) (&nbp->b_dep)->lh_first->wk_list.le_prev = &(&aip->ai_list)->wk_list.le_next; (&nbp->b_dep)->lh_first = (&aip->ai_list); (&aip->ai_list)->wk_list.le_prev = &(&nbp->b_dep)->lh_first; } while (0); } while (0);
 _splx((&lk)->lkt_spl);
 setup_allocindir_phase2(bp, ip, aip);
}
 void
setup_allocindir_phase2(struct buf *bp, struct inode *ip,
    struct allocindir *aip)
{
 struct worklist *wk;
 struct indirdep *indirdep, *newindirdep;
 struct bmsafemap *bmsafemap;
 struct allocindir *oldaip;
 struct freefrag *freefrag;
 struct newblk *newblk;
 if (bp->b_lblkno >= 0)
  panic("setup_allocindir_phase2: not indir blk");
 for (indirdep = ((void *)0), newindirdep = ((void *)0); ; ) {
  (&lk)->lkt_spl = _splraise(5);
  for((wk) = ((&bp->b_dep)->lh_first); (wk)!= ((void *)0); (wk) = ((wk)->wk_list.le_next)) {
   if (wk->wk_type != 5)
    continue;
   indirdep = ((struct indirdep *)(wk));
   break;
  }
  if (indirdep == ((void *)0) && newindirdep) {
   indirdep = newindirdep;
   do { (&indirdep->ir_list)->wk_state |= 0x8000; do { if (((&indirdep->ir_list)->wk_list.le_next = (&bp->b_dep)->lh_first) != ((void *)0)) (&bp->b_dep)->lh_first->wk_list.le_prev = &(&indirdep->ir_list)->wk_list.le_next; (&bp->b_dep)->lh_first = (&indirdep->ir_list); (&indirdep->ir_list)->wk_list.le_prev = &(&bp->b_dep)->lh_first; } while (0); } while (0);
   newindirdep = ((void *)0);
  }
  _splx((&lk)->lkt_spl);
  if (indirdep) {
   if (newblk_lookup(ip->inode_u.fs, aip->ai_newblkno, 0,
       &newblk) == 0)
    panic("setup_allocindir: lost block");
   (&lk)->lkt_spl = _splraise(5);
   if (newblk->nb_state == 0x0008) {
    aip->ai_list.wk_state |= 0x0008;
    aip->ai_buf = ((void *)0);
   } else {
    bmsafemap = newblk->nb_bmsafemap;
    aip->ai_buf = bmsafemap->sm_buf;
    do { if ((newblk)->nb_deps.le_next != ((void *)0)) (newblk)->nb_deps.le_next->nb_deps.le_prev = (newblk)->nb_deps.le_prev; *(newblk)->nb_deps.le_prev = (newblk)->nb_deps.le_next; ((newblk)->nb_deps.le_prev) = ((void *)-1); ((newblk)->nb_deps.le_next) = ((void *)-1); } while (0);
    do { if (((aip)->ai_deps.le_next = (&bmsafemap->sm_allocindirhd)->lh_first) != ((void *)0)) (&bmsafemap->sm_allocindirhd)->lh_first->ai_deps.le_prev = &(aip)->ai_deps.le_next; (&bmsafemap->sm_allocindirhd)->lh_first = (aip); (aip)->ai_deps.le_prev = &(&bmsafemap->sm_allocindirhd)->lh_first; } while (0);
   }
   do { if ((newblk)->nb_hash.le_next != ((void *)0)) (newblk)->nb_hash.le_next->nb_hash.le_prev = (newblk)->nb_hash.le_prev; *(newblk)->nb_hash.le_prev = (newblk)->nb_hash.le_next; ((newblk)->nb_hash.le_prev) = ((void *)-1); ((newblk)->nb_hash.le_next) = ((void *)-1); } while (0);
   pool_put(&newblk_pool, newblk);
   aip->ai_indirdep = indirdep;
   if (aip->ai_oldblkno == 0)
    oldaip = ((void *)0);
   else
    for((oldaip) = ((&indirdep->ir_deplisthd)->lh_first); (oldaip)!= ((void *)0); (oldaip) = ((oldaip)->ai_next.le_next))
     if (oldaip->ai_offset == aip->ai_offset)
      break;
   freefrag = ((void *)0);
   if (oldaip != ((void *)0)) {
    if (oldaip->ai_newblkno != aip->ai_oldblkno) {
     _splx((&lk)->lkt_spl);
     panic("setup_allocindir_phase2: blkno");
    }
    aip->ai_oldblkno = oldaip->ai_oldblkno;
    freefrag = aip->ai_freefrag;
    aip->ai_freefrag = oldaip->ai_freefrag;
    oldaip->ai_freefrag = ((void *)0);
    free_allocindir(oldaip, ((void *)0));
   }
   do { if (((aip)->ai_next.le_next = (&indirdep->ir_deplisthd)->lh_first) != ((void *)0)) (&indirdep->ir_deplisthd)->lh_first->ai_next.le_prev = &(aip)->ai_next.le_next; (&indirdep->ir_deplisthd)->lh_first = (aip); (aip)->ai_next.le_prev = &(&indirdep->ir_deplisthd)->lh_first; } while (0);
   if (ip->i_ump->um_fstype == 1)
    ((int32_t *)indirdep->ir_savebp->b_data)
        [aip->ai_offset] = aip->ai_oldblkno;
   else
    ((int64_t *)indirdep->ir_savebp->b_data)
        [aip->ai_offset] = aip->ai_oldblkno;
   _splx((&lk)->lkt_spl);
   if (freefrag != ((void *)0))
    handle_workitem_freefrag(freefrag);
  }
  if (newindirdep) {
   if (indirdep->ir_savebp != ((void *)0))
    brelse(newindirdep->ir_savebp);
   softdep_freequeue_add((struct worklist *)newindirdep);
  }
  if (indirdep)
   break;
  newindirdep = pool_get(&indirdep_pool, 0x0001);
  newindirdep->ir_list.wk_type = 5;
  newindirdep->ir_list.wk_state = 0x0001;
  if (ip->i_ump->um_fstype == 1)
   newindirdep->ir_list.wk_state |= 0x2000;
  do { ((&newindirdep->ir_deplisthd)->lh_first) = ((void *)0); } while (0);
  do { ((&newindirdep->ir_donehd)->lh_first) = ((void *)0); } while (0);
  if (bp->b_blkno == bp->b_lblkno) {
   VOP_BMAP(bp->b_vp, bp->b_lblkno, ((void *)0), &bp->b_blkno,
    ((void *)0));
  }
  newindirdep->ir_savebp =
      getblk(ip->i_ump->um_devvp, bp->b_blkno, bp->b_bcount, 0, 0);
  __builtin_memcpy((newindirdep->ir_savebp->b_data), (bp->b_data), (bp->b_bcount));
 }
}
void
softdep_setup_freeblocks(struct inode *ip, off_t length)
{
 struct freeblks *freeblks;
 struct inodedep *inodedep;
 struct allocdirect *adp;
 struct vnode *vp;
 struct buf *bp;
 struct fs *fs;
 int i, delay, error;
 fs = ip->inode_u.fs;
 if (length != 0)
  panic("softdep_setup_freeblocks: non-zero length");
 freeblks = pool_get(&freeblks_pool, 0x0001 | 0x0008);
 freeblks->fb_list.wk_type = 8;
 freeblks->fb_list.wk_state = 0x0001;
 freeblks->fb_uid = (((ip)->i_ump->um_fstype == 1) ? (ip)->dinode_u.ffs1_din->di_uid : (ip)->dinode_u.ffs2_din->di_uid);
 freeblks->fb_previousinum = ip->i_number;
 freeblks->fb_devvp = ip->i_ump->um_devvp;
 freeblks->fb_mnt = ((ip)->i_vnode)->v_mount;
 freeblks->fb_oldsize = (((ip)->i_ump->um_fstype == 1) ? (ip)->dinode_u.ffs1_din->di_size : (ip)->dinode_u.ffs2_din->di_size);
 freeblks->fb_newsize = length;
 freeblks->fb_chkcnt = (((ip)->i_ump->um_fstype == 1) ? (ip)->dinode_u.ffs1_din->di_blocks : (ip)->dinode_u.ffs2_din->di_blocks);
 for (i = 0; i < 12; i++) {
  freeblks->fb_dblks[i] = (((ip)->i_ump->um_fstype == 1) ? (ip)->dinode_u.ffs1_din->di_db[i] : (ip)->dinode_u.ffs2_din->di_db[i]);
  do { if ((ip)->i_ump->um_fstype == 1) (ip)->dinode_u.ffs1_din->di_db[i] = (0); else (ip)->dinode_u.ffs2_din->di_db[i] = (0); } while (0);
 }
 for (i = 0; i < 3; i++) {
  freeblks->fb_iblks[i] = (((ip)->i_ump->um_fstype == 1) ? (ip)->dinode_u.ffs1_din->di_ib[i] : (ip)->dinode_u.ffs2_din->di_ib[i]);
  do { if ((ip)->i_ump->um_fstype == 1) (ip)->dinode_u.ffs1_din->di_ib[i] = (0); else (ip)->dinode_u.ffs2_din->di_ib[i] = (0); } while (0);
 }
 do { if ((ip)->i_ump->um_fstype == 1) (ip)->dinode_u.ffs1_din->di_blocks = (0); else (ip)->dinode_u.ffs2_din->di_blocks = (0); } while (0);
 do { if ((ip)->i_ump->um_fstype == 1) (ip)->dinode_u.ffs1_din->di_size = (0); else (ip)->dinode_u.ffs2_din->di_size = (0); } while (0);
 if ((error = bread(ip->i_ump->um_devvp,
     ((((daddr_t)(((((daddr_t)(fs)->fs_fpg * (((ip->i_number) / (fs)->fs_ipg))) + (fs)->fs_cgoffset * ((((ip->i_number) / (fs)->fs_ipg)) & ~((fs)->fs_cgmask))) + (fs)->fs_iblkno) + ((((((ip->i_number) % (fs)->fs_ipg) / ((fs)->fs_inopb))) << ((fs))->fs_fragshift))))) << (fs)->fs_fsbtodb),
     (int)fs->fs_bsize, &bp)) != 0)
  softdep_error("softdep_setup_freeblocks", error);
 if (ip->i_ump->um_fstype == 1)
  *((struct ufs1_dinode *) bp->b_data +
      ((ip->i_number) % ((fs)->fs_inopb))) = *ip->dinode_u.ffs1_din;
 else
  *((struct ufs2_dinode *) bp->b_data +
      ((ip->i_number) % ((fs)->fs_inopb))) = *ip->dinode_u.ffs2_din;
 (&lk)->lkt_spl = _splraise(5);
 (void) inodedep_lookup(fs, ip->i_number, 0x0001, &inodedep);
 if ((inodedep->id_list.wk_state & 0x0200) != 0) {
  _splx((&lk)->lkt_spl);
  panic("softdep_setup_freeblocks: inode busy");
 }
 delay = (inodedep->id_list.wk_state & 0x0008);
 if (delay)
  do { (&freeblks->fb_list)->wk_state |= 0x8000; do { if (((&freeblks->fb_list)->wk_list.le_next = (&inodedep->id_bufwait)->lh_first) != ((void *)0)) (&inodedep->id_bufwait)->lh_first->wk_list.le_prev = &(&freeblks->fb_list)->wk_list.le_next; (&inodedep->id_bufwait)->lh_first = (&freeblks->fb_list); (&freeblks->fb_list)->wk_list.le_prev = &(&inodedep->id_bufwait)->lh_first; } while (0); } while (0);
 merge_inode_lists(inodedep);
 while ((adp = ((&inodedep->id_inoupdt)->tqh_first)) != ((void *)0))
  free_allocdirect(&inodedep->id_inoupdt, adp, delay);
 _splx((&lk)->lkt_spl);
 bdwrite(bp);
 vp = ((ip)->i_vnode);
 (&lk)->lkt_spl = _splraise(5);
 drain_output(vp, 1);
 while ((bp = ((&vp->v_dirtyblkhd)->lh_first))) {
  if (getdirtybuf(bp, 1) <= 0)
   break;
  (void) inodedep_lookup(fs, ip->i_number, 0, &inodedep);
  deallocate_dependencies(bp, inodedep);
  bp->b_flags |= 0x00000800 | 0x00001000;
  _splx((&lk)->lkt_spl);
  brelse(bp);
  (&lk)->lkt_spl = _splraise(5);
 }
 if (inodedep_lookup(fs, ip->i_number, 0, &inodedep) != 0)
  (void) free_inodedep(inodedep);
 if (delay) {
  freeblks->fb_list.wk_state |= 0x0008;
  if ((freeblks->fb_list.wk_state & (0x0001 | 0x0004 | 0x0008)) == (0x0001 | 0x0004 | 0x0008))
   add_to_worklist(&freeblks->fb_list);
 }
 _splx((&lk)->lkt_spl);
 if (!delay)
  handle_workitem_freeblocks(freeblks);
}
 void
deallocate_dependencies(struct buf *bp, struct inodedep *inodedep)
{
 struct worklist *wk;
 struct indirdep *indirdep;
 struct allocindir *aip;
 struct pagedep *pagedep;
 struct dirrem *dirrem;
 struct diradd *dap;
 int i;
 while ((wk = ((&bp->b_dep)->lh_first)) != ((void *)0)) {
  switch (wk->wk_type) {
  case 5:
   indirdep = ((struct indirdep *)(wk));
   if (indirdep->ir_list.wk_state & 0x0100) {
    _splx((&lk)->lkt_spl);
    panic("deallocate_dependencies: already gone");
   }
   indirdep->ir_list.wk_state |= 0x0100;
   while ((aip = ((&indirdep->ir_deplisthd)->lh_first)))
    free_allocindir(aip, inodedep);
   if (bp->b_lblkno >= 0 ||
       bp->b_blkno != indirdep->ir_savebp->b_lblkno) {
    _splx((&lk)->lkt_spl);
    panic("deallocate_dependencies: not indir");
   }
   __builtin_memcpy((indirdep->ir_savebp->b_data), (bp->b_data), (bp->b_bcount));
   do { (wk)->wk_state &= ~0x8000; do { if ((wk)->wk_list.le_next != ((void *)0)) (wk)->wk_list.le_next->wk_list.le_prev = (wk)->wk_list.le_prev; *(wk)->wk_list.le_prev = (wk)->wk_list.le_next; ((wk)->wk_list.le_prev) = ((void *)-1); ((wk)->wk_list.le_next) = ((void *)-1); } while (0); } while (0);
   do { (wk)->wk_state |= 0x8000; do { if (((wk)->wk_list.le_next = (&indirdep->ir_savebp->b_dep)->lh_first) != ((void *)0)) (&indirdep->ir_savebp->b_dep)->lh_first->wk_list.le_prev = &(wk)->wk_list.le_next; (&indirdep->ir_savebp->b_dep)->lh_first = (wk); (wk)->wk_list.le_prev = &(&indirdep->ir_savebp->b_dep)->lh_first; } while (0); } while (0);
   continue;
  case 0:
   pagedep = ((struct pagedep *)(wk));
   for (i = 0; i < 6; i++)
    while ((dap =
        ((&pagedep->pd_diraddhd[i])->lh_first)))
     free_diradd(dap);
   while ((dap = ((&pagedep->pd_pendinghd)->lh_first)))
    free_diradd(dap);
   while ((dirrem = ((&pagedep->pd_dirremhd)->lh_first))) {
    do { if ((dirrem)->dm_next.le_next != ((void *)0)) (dirrem)->dm_next.le_next->dm_next.le_prev = (dirrem)->dm_next.le_prev; *(dirrem)->dm_next.le_prev = (dirrem)->dm_next.le_next; ((dirrem)->dm_next.le_prev) = ((void *)-1); ((dirrem)->dm_next.le_next) = ((void *)-1); } while (0);
    dirrem->dm_un.dmu_dirinum = pagedep->pd_ino;
    if (inodedep == ((void *)0) ||
        (inodedep->id_list.wk_state & (0x0001 | 0x0004 | 0x0008)) ==
         (0x0001 | 0x0004 | 0x0008))
     add_to_worklist(&dirrem->dm_list);
    else
     do { (&dirrem->dm_list)->wk_state |= 0x8000; do { if (((&dirrem->dm_list)->wk_list.le_next = (&inodedep->id_bufwait)->lh_first) != ((void *)0)) (&inodedep->id_bufwait)->lh_first->wk_list.le_prev = &(&dirrem->dm_list)->wk_list.le_next; (&inodedep->id_bufwait)->lh_first = (&dirrem->dm_list); (&dirrem->dm_list)->wk_list.le_prev = &(&inodedep->id_bufwait)->lh_first; } while (0); } while (0);
   }
   if ((pagedep->pd_list.wk_state & 0x0800) != 0) {
    for((wk) = ((&inodedep->id_bufwait)->lh_first); (wk)!= ((void *)0); (wk) = ((wk)->wk_list.le_next))
     if (wk->wk_type == 13 &&
         ((struct newdirblk *)(wk))->db_pagedep ==
         pagedep)
      break;
    if (wk != ((void *)0)) {
     do { (wk)->wk_state &= ~0x8000; do { if ((wk)->wk_list.le_next != ((void *)0)) (wk)->wk_list.le_next->wk_list.le_prev = (wk)->wk_list.le_prev; *(wk)->wk_list.le_prev = (wk)->wk_list.le_next; ((wk)->wk_list.le_prev) = ((void *)-1); ((wk)->wk_list.le_next) = ((void *)-1); } while (0); } while (0);
     free_newdirblk(((struct newdirblk *)(wk)));
    } else {
     _splx((&lk)->lkt_spl);
     panic("deallocate_dependencies: "
         "lost pagedep");
     }
   }
   do { (&pagedep->pd_list)->wk_state &= ~0x8000; do { if ((&pagedep->pd_list)->wk_list.le_next != ((void *)0)) (&pagedep->pd_list)->wk_list.le_next->wk_list.le_prev = (&pagedep->pd_list)->wk_list.le_prev; *(&pagedep->pd_list)->wk_list.le_prev = (&pagedep->pd_list)->wk_list.le_next; ((&pagedep->pd_list)->wk_list.le_prev) = ((void *)-1); ((&pagedep->pd_list)->wk_list.le_next) = ((void *)-1); } while (0); } while (0);
   do { if ((pagedep)->pd_hash.le_next != ((void *)0)) (pagedep)->pd_hash.le_next->pd_hash.le_prev = (pagedep)->pd_hash.le_prev; *(pagedep)->pd_hash.le_prev = (pagedep)->pd_hash.le_next; ((pagedep)->pd_hash.le_prev) = ((void *)-1); ((pagedep)->pd_hash.le_next) = ((void *)-1); } while (0);
   softdep_freequeue_add((struct worklist *)pagedep);
   continue;
  case 6:
   free_allocindir(((struct allocindir *)(wk)), inodedep);
   continue;
  case 4:
  case 1:
   _splx((&lk)->lkt_spl);
   panic("deallocate_dependencies: Unexpected type %s",
       ((unsigned)(wk->wk_type) <= 13 ? softdep_typenames[wk->wk_type] : "???"));
  default:
   _splx((&lk)->lkt_spl);
   panic("deallocate_dependencies: Unknown type %s",
       ((unsigned)(wk->wk_type) <= 13 ? softdep_typenames[wk->wk_type] : "???"));
  }
 }
}
 void
free_allocdirect(struct allocdirectlst *adphead, struct allocdirect *adp,
    int delay)
{
 struct newdirblk *newdirblk;
 struct worklist *wk;
 do { if (splassert_ctl > 0) { splassert_check(5, __func__); } } while (0);
 if ((adp->ad_list.wk_state & 0x0008) == 0)
  do { if ((adp)->ad_deps.le_next != ((void *)0)) (adp)->ad_deps.le_next->ad_deps.le_prev = (adp)->ad_deps.le_prev; *(adp)->ad_deps.le_prev = (adp)->ad_deps.le_next; ((adp)->ad_deps.le_prev) = ((void *)-1); ((adp)->ad_deps.le_next) = ((void *)-1); } while (0);
 do { if (((adp)->ad_next.tqe_next) != ((void *)0)) (adp)->ad_next.tqe_next->ad_next.tqe_prev = (adp)->ad_next.tqe_prev; else (adphead)->tqh_last = (adp)->ad_next.tqe_prev; *(adp)->ad_next.tqe_prev = (adp)->ad_next.tqe_next; ((adp)->ad_next.tqe_prev) = ((void *)-1); ((adp)->ad_next.tqe_next) = ((void *)-1); } while (0);
 if ((adp->ad_list.wk_state & 0x0004) == 0)
  do { (&adp->ad_list)->wk_state &= ~0x8000; do { if ((&adp->ad_list)->wk_list.le_next != ((void *)0)) (&adp->ad_list)->wk_list.le_next->wk_list.le_prev = (&adp->ad_list)->wk_list.le_prev; *(&adp->ad_list)->wk_list.le_prev = (&adp->ad_list)->wk_list.le_next; ((&adp->ad_list)->wk_list.le_prev) = ((void *)-1); ((&adp->ad_list)->wk_list.le_next) = ((void *)-1); } while (0); } while (0);
 if (adp->ad_freefrag != ((void *)0)) {
  if (delay)
   do { (&adp->ad_freefrag->ff_list)->wk_state |= 0x8000; do { if (((&adp->ad_freefrag->ff_list)->wk_list.le_next = (&adp->ad_inodedep->id_bufwait)->lh_first) != ((void *)0)) (&adp->ad_inodedep->id_bufwait)->lh_first->wk_list.le_prev = &(&adp->ad_freefrag->ff_list)->wk_list.le_next; (&adp->ad_inodedep->id_bufwait)->lh_first = (&adp->ad_freefrag->ff_list); (&adp->ad_freefrag->ff_list)->wk_list.le_prev = &(&adp->ad_inodedep->id_bufwait)->lh_first; } while (0); } while (0);
  else
   add_to_worklist(&adp->ad_freefrag->ff_list);
 }
 if ((wk = ((&adp->ad_newdirblk)->lh_first)) != ((void *)0)) {
  newdirblk = ((struct newdirblk *)(wk));
  do { (&newdirblk->db_list)->wk_state &= ~0x8000; do { if ((&newdirblk->db_list)->wk_list.le_next != ((void *)0)) (&newdirblk->db_list)->wk_list.le_next->wk_list.le_prev = (&newdirblk->db_list)->wk_list.le_prev; *(&newdirblk->db_list)->wk_list.le_prev = (&newdirblk->db_list)->wk_list.le_next; ((&newdirblk->db_list)->wk_list.le_prev) = ((void *)-1); ((&newdirblk->db_list)->wk_list.le_next) = ((void *)-1); } while (0); } while (0);
  if (((&adp->ad_newdirblk)->lh_first) != ((void *)0))
   panic("free_allocdirect: extra newdirblk");
  if (delay)
   do { (&newdirblk->db_list)->wk_state |= 0x8000; do { if (((&newdirblk->db_list)->wk_list.le_next = (&adp->ad_inodedep->id_bufwait)->lh_first) != ((void *)0)) (&adp->ad_inodedep->id_bufwait)->lh_first->wk_list.le_prev = &(&newdirblk->db_list)->wk_list.le_next; (&adp->ad_inodedep->id_bufwait)->lh_first = (&newdirblk->db_list); (&newdirblk->db_list)->wk_list.le_prev = &(&adp->ad_inodedep->id_bufwait)->lh_first; } while (0); } while (0);
  else
   free_newdirblk(newdirblk);
 }
 softdep_freequeue_add((struct worklist *)adp);
}
void
free_newdirblk(struct newdirblk *newdirblk)
{
 struct pagedep *pagedep;
 struct diradd *dap;
 int i;
 do { if (splassert_ctl > 0) { splassert_check(5, __func__); } } while (0);
 pagedep = newdirblk->db_pagedep;
 pagedep->pd_list.wk_state &= ~0x0800;
 if ((pagedep->pd_list.wk_state & 0x8000) == 0)
  while ((dap = ((&pagedep->pd_pendinghd)->lh_first)) != ((void *)0))
   free_diradd(dap);
 for (i = 0; i < 6; i++)
  if (((&pagedep->pd_diraddhd[i])->lh_first) != ((void *)0))
   break;
 if (i == 6 && (pagedep->pd_list.wk_state & 0x8000) == 0) {
  do { if ((pagedep)->pd_hash.le_next != ((void *)0)) (pagedep)->pd_hash.le_next->pd_hash.le_prev = (pagedep)->pd_hash.le_prev; *(pagedep)->pd_hash.le_prev = (pagedep)->pd_hash.le_next; ((pagedep)->pd_hash.le_prev) = ((void *)-1); ((pagedep)->pd_hash.le_next) = ((void *)-1); } while (0);
  softdep_freequeue_add((struct worklist *)pagedep);
 }
 softdep_freequeue_add((struct worklist *)newdirblk);
}
void
softdep_freefile(struct vnode *pvp, ufsino_t ino, mode_t mode)
{
 struct inode *ip = ((struct inode *)(pvp)->v_data);
 struct inodedep *inodedep;
 struct freefile *freefile;
 freefile = pool_get(&freefile_pool, 0x0001);
 freefile->fx_list.wk_type = 9;
 freefile->fx_list.wk_state = 0;
 freefile->fx_mode = mode;
 freefile->fx_oldinum = ino;
 freefile->fx_devvp = ip->i_ump->um_devvp;
 freefile->fx_mnt = ((ip)->i_vnode)->v_mount;
 (&lk)->lkt_spl = _splraise(5);
 if (inodedep_lookup(ip->inode_u.fs, ino, 0, &inodedep) == 0 ||
     check_inode_unwritten(inodedep)) {
  _splx((&lk)->lkt_spl);
  handle_workitem_freefile(freefile);
  return;
 }
 do { (&freefile->fx_list)->wk_state |= 0x8000; do { if (((&freefile->fx_list)->wk_list.le_next = (&inodedep->id_inowait)->lh_first) != ((void *)0)) (&inodedep->id_inowait)->lh_first->wk_list.le_prev = &(&freefile->fx_list)->wk_list.le_next; (&inodedep->id_inowait)->lh_first = (&freefile->fx_list); (&freefile->fx_list)->wk_list.le_prev = &(&inodedep->id_inowait)->lh_first; } while (0); } while (0);
 _splx((&lk)->lkt_spl);
}
 int
check_inode_unwritten(struct inodedep *inodedep)
{
 do { if (splassert_ctl > 0) { splassert_check(5, __func__); } } while (0);
 if ((inodedep->id_list.wk_state & 0x0008) != 0 ||
     ((&inodedep->id_pendinghd)->lh_first) != ((void *)0) ||
     ((&inodedep->id_bufwait)->lh_first) != ((void *)0) ||
     ((&inodedep->id_inowait)->lh_first) != ((void *)0) ||
     ((&inodedep->id_inoupdt)->tqh_first) != ((void *)0) ||
     ((&inodedep->id_newinoupdt)->tqh_first) != ((void *)0) ||
     inodedep->id_nlinkdelta != 0)
  return (0);
 inodedep->id_list.wk_state |= (0x0001 | 0x0004 | 0x0008);
 do { if ((inodedep)->id_deps.le_next != ((void *)0)) (inodedep)->id_deps.le_next->id_deps.le_prev = (inodedep)->id_deps.le_prev; *(inodedep)->id_deps.le_prev = (inodedep)->id_deps.le_next; ((inodedep)->id_deps.le_prev) = ((void *)-1); ((inodedep)->id_deps.le_next) = ((void *)-1); } while (0);
 inodedep->id_buf = ((void *)0);
 if (inodedep->id_list.wk_state & 0x8000)
  do { (&inodedep->id_list)->wk_state &= ~0x8000; do { if ((&inodedep->id_list)->wk_list.le_next != ((void *)0)) (&inodedep->id_list)->wk_list.le_next->wk_list.le_prev = (&inodedep->id_list)->wk_list.le_prev; *(&inodedep->id_list)->wk_list.le_prev = (&inodedep->id_list)->wk_list.le_next; ((&inodedep->id_list)->wk_list.le_prev) = ((void *)-1); ((&inodedep->id_list)->wk_list.le_next) = ((void *)-1); } while (0); } while (0);
 if (inodedep->id_un.idu_savedino1 != ((void *)0)) {
  free(inodedep->id_un.idu_savedino1, 79, 0);
  inodedep->id_un.idu_savedino1 = ((void *)0);
 }
 if (free_inodedep(inodedep) == 0) {
  _splx((&lk)->lkt_spl);
  panic("check_inode_unwritten: busy inode");
 }
 return (1);
}
 int
free_inodedep(struct inodedep *inodedep)
{
 if ((inodedep->id_list.wk_state & 0x8000) != 0 ||
     (inodedep->id_list.wk_state & (0x0001 | 0x0004 | 0x0008)) != (0x0001 | 0x0004 | 0x0008) ||
     ((&inodedep->id_pendinghd)->lh_first) != ((void *)0) ||
     ((&inodedep->id_bufwait)->lh_first) != ((void *)0) ||
     ((&inodedep->id_inowait)->lh_first) != ((void *)0) ||
     ((&inodedep->id_inoupdt)->tqh_first) != ((void *)0) ||
     ((&inodedep->id_newinoupdt)->tqh_first) != ((void *)0) ||
     inodedep->id_nlinkdelta != 0 || inodedep->id_un.idu_savedino1 != ((void *)0))
  return (0);
 do { if ((inodedep)->id_hash.le_next != ((void *)0)) (inodedep)->id_hash.le_next->id_hash.le_prev = (inodedep)->id_hash.le_prev; *(inodedep)->id_hash.le_prev = (inodedep)->id_hash.le_next; ((inodedep)->id_hash.le_prev) = ((void *)-1); ((inodedep)->id_hash.le_next) = ((void *)-1); } while (0);
 softdep_freequeue_add((struct worklist *)inodedep);
 num_inodedep -= 1;
 return (1);
}
 void
handle_workitem_freeblocks(struct freeblks *freeblks)
{
 struct inode tip;
 daddr_t bn;
 union {
  struct ufs1_dinode di1;
  struct ufs2_dinode di2;
 } di;
 struct fs *fs;
 int i, level, bsize;
 long nblocks, blocksreleased = 0;
 int error, allerror = 0;
 daddr_t baselbns[3], tmpval;
 if (((struct ufsmount *)((freeblks->fb_mnt)->mnt_data))->um_fstype == 1)
  tip.dinode_u.ffs1_din = &di.di1;
 else
  tip.dinode_u.ffs2_din = &di.di2;
 tip.inode_u.fs = fs = ((struct ufsmount *)((freeblks->fb_mnt)->mnt_data))->ufsmount_u.fs;
 tip.i_number = freeblks->fb_previousinum;
 tip.i_ump = ((struct ufsmount *)((freeblks->fb_mnt)->mnt_data));
 tip.i_dev = freeblks->fb_devvp->v_un.vu_specinfo->si_rdev;
 do { if ((&tip)->i_ump->um_fstype == 1) (&tip)->dinode_u.ffs1_din->di_size = (freeblks->fb_oldsize); else (&tip)->dinode_u.ffs2_din->di_size = (freeblks->fb_oldsize); } while (0);
 do { if ((&tip)->i_ump->um_fstype == 1) (&tip)->dinode_u.ffs1_din->di_uid = (freeblks->fb_uid); else (&tip)->dinode_u.ffs2_din->di_uid = (freeblks->fb_uid); } while (0);
 tip.i_vnode = ((void *)0);
 tmpval = 1;
 baselbns[0] = 12;
 for (i = 1; i < 3; i++) {
  tmpval *= ((fs)->fs_nindir);
  baselbns[i] = baselbns[i - 1] + tmpval;
 }
 nblocks = ((fs->fs_bsize) >> 9);
 blocksreleased = 0;
 for (level = (3 - 1); level >= 0; level--) {
  if ((bn = freeblks->fb_iblks[level]) == 0)
   continue;
  if ((error = indir_trunc(&tip, ((bn) << (fs)->fs_fsbtodb), level,
      baselbns[level], &blocksreleased)) != 0)
   allerror = error;
  ffs_blkfree(&tip, bn, fs->fs_bsize);
  blocksreleased += nblocks;
 }
 for (i = (12 - 1); i >= 0; i--) {
  if ((bn = freeblks->fb_dblks[i]) == 0)
   continue;
  bsize = (((i) >= 12 || ((((&tip))->i_ump->um_fstype == 1) ? ((&tip))->dinode_u.ffs1_din->di_size : ((&tip))->dinode_u.ffs2_din->di_size) >= ((i) + 1) << (fs)->fs_bshift) ? (u_int64_t)(fs)->fs_bsize : ((((((((((&tip))->i_ump->um_fstype == 1) ? ((&tip))->dinode_u.ffs1_din->di_size : ((&tip))->dinode_u.ffs2_din->di_size)) & (fs)->fs_qbmask)) + (fs)->fs_qfmask) & (fs)->fs_fmask)));
  ffs_blkfree(&tip, bn, bsize);
  blocksreleased += ((bsize) >> 9);
 }
 if (freeblks->fb_chkcnt != blocksreleased)
  printf("handle_workitem_freeblocks: block count\n");
 if (allerror)
  softdep_error("handle_workitem_freeblks", allerror);
 softdep_freequeue_add((struct worklist *)freeblks);
}
 int
indir_trunc(struct inode *ip, daddr_t dbn, int level, daddr_t lbn,
    long *countp)
{
 struct buf *bp;
 int32_t *bap1 = ((void *)0);
 int64_t nb, *bap2 = ((void *)0);
 struct fs *fs;
 struct worklist *wk;
 struct indirdep *indirdep;
 int i, lbnadd, nblocks, ufs1fmt;
 int error, allerror = 0;
 fs = ip->inode_u.fs;
 lbnadd = 1;
 for (i = level; i > 0; i--)
  lbnadd *= ((fs)->fs_nindir);
 (&lk)->lkt_spl = _splraise(5);
 if ((bp = incore(ip->i_ump->um_devvp, dbn)) != ((void *)0) &&
     (wk = ((&bp->b_dep)->lh_first)) != ((void *)0)) {
  if (wk->wk_type != 5 ||
      (indirdep = ((struct indirdep *)(wk)))->ir_savebp != bp ||
      (indirdep->ir_list.wk_state & 0x0100) == 0) {
   _splx((&lk)->lkt_spl);
   panic("indir_trunc: lost indirdep");
  }
  do { (wk)->wk_state &= ~0x8000; do { if ((wk)->wk_list.le_next != ((void *)0)) (wk)->wk_list.le_next->wk_list.le_prev = (wk)->wk_list.le_prev; *(wk)->wk_list.le_prev = (wk)->wk_list.le_next; ((wk)->wk_list.le_prev) = ((void *)-1); ((wk)->wk_list.le_next) = ((void *)-1); } while (0); } while (0);
  softdep_freequeue_add((struct worklist *)indirdep);
  if (((&bp->b_dep)->lh_first) != ((void *)0)) {
   _splx((&lk)->lkt_spl);
   panic("indir_trunc: dangling dep");
  }
  _splx((&lk)->lkt_spl);
 } else {
  _splx((&lk)->lkt_spl);
  error = bread(ip->i_ump->um_devvp, dbn, (int)fs->fs_bsize, &bp);
  if (error)
   return (error);
 }
 if (ip->i_ump->um_fstype == 1) {
  ufs1fmt = 1;
  bap1 = (int32_t *)bp->b_data;
 } else {
  ufs1fmt = 0;
  bap2 = (int64_t *)bp->b_data;
 }
 nblocks = ((fs->fs_bsize) >> 9);
 for (i = ((fs)->fs_nindir) - 1; i >= 0; i--) {
  if (ufs1fmt)
   nb = bap1[i];
  else
   nb = bap2[i];
  if (nb == 0)
   continue;
  if (level != 0) {
   if ((error = indir_trunc(ip, ((nb) << (fs)->fs_fsbtodb),
        level - 1, lbn + (i * lbnadd), countp)) != 0)
    allerror = error;
  }
  ffs_blkfree(ip, nb, fs->fs_bsize);
  *countp += nblocks;
 }
 bp->b_flags |= 0x00000800 | 0x00001000;
 brelse(bp);
 return (allerror);
}
 void
free_allocindir(struct allocindir *aip, struct inodedep *inodedep)
{
 struct freefrag *freefrag;
 do { if (splassert_ctl > 0) { splassert_check(5, __func__); } } while (0);
 if ((aip->ai_list.wk_state & 0x0008) == 0)
  do { if ((aip)->ai_deps.le_next != ((void *)0)) (aip)->ai_deps.le_next->ai_deps.le_prev = (aip)->ai_deps.le_prev; *(aip)->ai_deps.le_prev = (aip)->ai_deps.le_next; ((aip)->ai_deps.le_prev) = ((void *)-1); ((aip)->ai_deps.le_next) = ((void *)-1); } while (0);
 if (aip->ai_list.wk_state & 0x8000)
  do { (&aip->ai_list)->wk_state &= ~0x8000; do { if ((&aip->ai_list)->wk_list.le_next != ((void *)0)) (&aip->ai_list)->wk_list.le_next->wk_list.le_prev = (&aip->ai_list)->wk_list.le_prev; *(&aip->ai_list)->wk_list.le_prev = (&aip->ai_list)->wk_list.le_next; ((&aip->ai_list)->wk_list.le_prev) = ((void *)-1); ((&aip->ai_list)->wk_list.le_next) = ((void *)-1); } while (0); } while (0);
 do { if ((aip)->ai_next.le_next != ((void *)0)) (aip)->ai_next.le_next->ai_next.le_prev = (aip)->ai_next.le_prev; *(aip)->ai_next.le_prev = (aip)->ai_next.le_next; ((aip)->ai_next.le_prev) = ((void *)-1); ((aip)->ai_next.le_next) = ((void *)-1); } while (0);
 if ((freefrag = aip->ai_freefrag) != ((void *)0)) {
  if (inodedep == ((void *)0))
   add_to_worklist(&freefrag->ff_list);
  else
   do { (&freefrag->ff_list)->wk_state |= 0x8000; do { if (((&freefrag->ff_list)->wk_list.le_next = (&inodedep->id_bufwait)->lh_first) != ((void *)0)) (&inodedep->id_bufwait)->lh_first->wk_list.le_prev = &(&freefrag->ff_list)->wk_list.le_next; (&inodedep->id_bufwait)->lh_first = (&freefrag->ff_list); (&freefrag->ff_list)->wk_list.le_prev = &(&inodedep->id_bufwait)->lh_first; } while (0); } while (0);
 }
 softdep_freequeue_add((struct worklist *)aip);
}
int
softdep_setup_directory_add(struct buf *bp, struct inode *dp, off_t diroffset,
    long newinum, struct buf *newdirbp, int isnewblk)
{
 int offset;
 daddr_t lbn;
 struct fs *fs;
 struct diradd *dap;
 struct allocdirect *adp;
 struct pagedep *pagedep;
 struct inodedep *inodedep;
 struct newdirblk *newdirblk = ((void *)0);
 struct mkdir *mkdir1, *mkdir2;
 fs = dp->inode_u.fs;
 lbn = ((diroffset) >> (fs)->fs_bshift);
 offset = ((diroffset) & (fs)->fs_qbmask);
 dap = pool_get(&diradd_pool, 0x0001 | 0x0008);
 dap->da_list.wk_type = 10;
 dap->da_offset = offset;
 dap->da_newinum = newinum;
 dap->da_list.wk_state = 0x0001;
 if (isnewblk && lbn < 12 && ((diroffset) & (fs)->fs_qfmask) == 0) {
  newdirblk = pool_get(&newdirblk_pool, 0x0001);
  newdirblk->db_list.wk_type = 13;
  newdirblk->db_list.wk_state = 0;
 }
 if (newdirbp == ((void *)0)) {
  dap->da_list.wk_state |= 0x0008;
  (&lk)->lkt_spl = _splraise(5);
 } else {
  dap->da_list.wk_state |= 0x0020 | 0x0010;
  mkdir1 = pool_get(&mkdir_pool, 0x0001);
  mkdir1->md_list.wk_type = 11;
  mkdir1->md_list.wk_state = 0x0020;
  mkdir1->md_diradd = dap;
  mkdir2 = pool_get(&mkdir_pool, 0x0001);
  mkdir2->md_list.wk_type = 11;
  mkdir2->md_list.wk_state = 0x0010;
  mkdir2->md_diradd = dap;
  mkdir1->md_buf = newdirbp;
  (&lk)->lkt_spl = _splraise(5);
  do { if (((mkdir1)->md_mkdirs.le_next = (&mkdirlisthd)->lh_first) != ((void *)0)) (&mkdirlisthd)->lh_first->md_mkdirs.le_prev = &(mkdir1)->md_mkdirs.le_next; (&mkdirlisthd)->lh_first = (mkdir1); (mkdir1)->md_mkdirs.le_prev = &(&mkdirlisthd)->lh_first; } while (0);
  do { (&mkdir1->md_list)->wk_state |= 0x8000; do { if (((&mkdir1->md_list)->wk_list.le_next = (&newdirbp->b_dep)->lh_first) != ((void *)0)) (&newdirbp->b_dep)->lh_first->wk_list.le_prev = &(&mkdir1->md_list)->wk_list.le_next; (&newdirbp->b_dep)->lh_first = (&mkdir1->md_list); (&mkdir1->md_list)->wk_list.le_prev = &(&newdirbp->b_dep)->lh_first; } while (0); } while (0);
  _splx((&lk)->lkt_spl);
  bdwrite(newdirbp);
  (&lk)->lkt_spl = _splraise(5);
  if (inodedep_lookup(fs, dp->i_number, 0, &inodedep) == 0
      || (inodedep->id_list.wk_state & (0x0001 | 0x0004 | 0x0008)) == (0x0001 | 0x0004 | 0x0008)) {
   dap->da_list.wk_state &= ~0x0010;
   softdep_freequeue_add((struct worklist *)mkdir2);
  } else {
   do { if (((mkdir2)->md_mkdirs.le_next = (&mkdirlisthd)->lh_first) != ((void *)0)) (&mkdirlisthd)->lh_first->md_mkdirs.le_prev = &(mkdir2)->md_mkdirs.le_next; (&mkdirlisthd)->lh_first = (mkdir2); (mkdir2)->md_mkdirs.le_prev = &(&mkdirlisthd)->lh_first; } while (0);
   do { (&mkdir2->md_list)->wk_state |= 0x8000; do { if (((&mkdir2->md_list)->wk_list.le_next = (&inodedep->id_bufwait)->lh_first) != ((void *)0)) (&inodedep->id_bufwait)->lh_first->wk_list.le_prev = &(&mkdir2->md_list)->wk_list.le_next; (&inodedep->id_bufwait)->lh_first = (&mkdir2->md_list); (&mkdir2->md_list)->wk_list.le_prev = &(&inodedep->id_bufwait)->lh_first; } while (0); } while (0);
  }
 }
 if (pagedep_lookup(dp, lbn, 0x0001, &pagedep) == 0)
  do { (&pagedep->pd_list)->wk_state |= 0x8000; do { if (((&pagedep->pd_list)->wk_list.le_next = (&bp->b_dep)->lh_first) != ((void *)0)) (&bp->b_dep)->lh_first->wk_list.le_prev = &(&pagedep->pd_list)->wk_list.le_next; (&bp->b_dep)->lh_first = (&pagedep->pd_list); (&pagedep->pd_list)->wk_list.le_prev = &(&bp->b_dep)->lh_first; } while (0); } while (0);
 dap->da_un.dau_pagedep = pagedep;
 do { if (((dap)->da_pdlist.le_next = (&pagedep->pd_diraddhd[(((offset) >> 2) % 6)])->lh_first) != ((void *)0)) (&pagedep->pd_diraddhd[(((offset) >> 2) % 6)])->lh_first->da_pdlist.le_prev = &(dap)->da_pdlist.le_next; (&pagedep->pd_diraddhd[(((offset) >> 2) % 6)])->lh_first = (dap); (dap)->da_pdlist.le_prev = &(&pagedep->pd_diraddhd[(((offset) >> 2) % 6)])->lh_first; } while (0);
 (void) inodedep_lookup(fs, newinum, 0x0001, &inodedep);
 if ((inodedep->id_list.wk_state & (0x0001 | 0x0004 | 0x0008)) == (0x0001 | 0x0004 | 0x0008))
  diradd_inode_written(dap, inodedep);
 else
  do { (&dap->da_list)->wk_state |= 0x8000; do { if (((&dap->da_list)->wk_list.le_next = (&inodedep->id_bufwait)->lh_first) != ((void *)0)) (&inodedep->id_bufwait)->lh_first->wk_list.le_prev = &(&dap->da_list)->wk_list.le_next; (&inodedep->id_bufwait)->lh_first = (&dap->da_list); (&dap->da_list)->wk_list.le_prev = &(&inodedep->id_bufwait)->lh_first; } while (0); } while (0);
 if (isnewblk) {
  if (lbn >= 12) {
   _splx((&lk)->lkt_spl);
   if (((diroffset) & (fs)->fs_qbmask) == 0)
    return (1);
   return (0);
  }
  if (((diroffset) & (fs)->fs_qfmask) != 0) {
   _splx((&lk)->lkt_spl);
   return (0);
  }
  if ((pagedep->pd_list.wk_state & 0x0800) != 0) {
   softdep_freequeue_add((struct worklist *)newdirblk);
   _splx((&lk)->lkt_spl);
   return (0);
  }
  if (inodedep_lookup(fs, dp->i_number, 0, &inodedep) == 0)
   panic("softdep_setup_directory_add: lost inodedep");
  adp = (*(((struct allocdirectlst *)((&inodedep->id_newinoupdt)->tqh_last))->tqh_last));
  if (adp == ((void *)0) || adp->ad_lbn != lbn) {
   _splx((&lk)->lkt_spl);
   panic("softdep_setup_directory_add: lost entry");
  }
  pagedep->pd_list.wk_state |= 0x0800;
  newdirblk->db_pagedep = pagedep;
  do { (&newdirblk->db_list)->wk_state |= 0x8000; do { if (((&newdirblk->db_list)->wk_list.le_next = (&adp->ad_newdirblk)->lh_first) != ((void *)0)) (&adp->ad_newdirblk)->lh_first->wk_list.le_prev = &(&newdirblk->db_list)->wk_list.le_next; (&adp->ad_newdirblk)->lh_first = (&newdirblk->db_list); (&newdirblk->db_list)->wk_list.le_prev = &(&adp->ad_newdirblk)->lh_first; } while (0); } while (0);
 }
 _splx((&lk)->lkt_spl);
 return (0);
}
void
softdep_change_directoryentry_offset(struct inode *dp, caddr_t base,
    caddr_t oldloc, caddr_t newloc, int entrysize)
{
 int offset, oldoffset, newoffset;
 struct pagedep *pagedep;
 struct diradd *dap;
 daddr_t lbn;
 (&lk)->lkt_spl = _splraise(5);
 lbn = ((dp->i_offset) >> (dp->inode_u.fs)->fs_bshift);
 offset = ((dp->i_offset) & (dp->inode_u.fs)->fs_qbmask);
 if (pagedep_lookup(dp, lbn, 0, &pagedep) == 0)
  goto done;
 oldoffset = offset + (oldloc - base);
 newoffset = offset + (newloc - base);
 for((dap) = ((&pagedep->pd_diraddhd[(((oldoffset) >> 2) % 6)])->lh_first); (dap)!= ((void *)0); (dap) = ((dap)->da_pdlist.le_next)) {
  if (dap->da_offset != oldoffset)
   continue;
  dap->da_offset = newoffset;
  if ((((newoffset) >> 2) % 6) == (((oldoffset) >> 2) % 6))
   break;
  do { if ((dap)->da_pdlist.le_next != ((void *)0)) (dap)->da_pdlist.le_next->da_pdlist.le_prev = (dap)->da_pdlist.le_prev; *(dap)->da_pdlist.le_prev = (dap)->da_pdlist.le_next; ((dap)->da_pdlist.le_prev) = ((void *)-1); ((dap)->da_pdlist.le_next) = ((void *)-1); } while (0);
  do { if (((dap)->da_pdlist.le_next = (&pagedep->pd_diraddhd[(((newoffset) >> 2) % 6)])->lh_first) != ((void *)0)) (&pagedep->pd_diraddhd[(((newoffset) >> 2) % 6)])->lh_first->da_pdlist.le_prev = &(dap)->da_pdlist.le_next; (&pagedep->pd_diraddhd[(((newoffset) >> 2) % 6)])->lh_first = (dap); (dap)->da_pdlist.le_prev = &(&pagedep->pd_diraddhd[(((newoffset) >> 2) % 6)])->lh_first; } while (0);
  break;
 }
 if (dap == ((void *)0)) {
  for((dap) = ((&pagedep->pd_pendinghd)->lh_first); (dap)!= ((void *)0); (dap) = ((dap)->da_pdlist.le_next)) {
   if (dap->da_offset == oldoffset) {
    dap->da_offset = newoffset;
    break;
   }
  }
 }
done:
 __builtin_memmove((newloc), (oldloc), (entrysize));
 _splx((&lk)->lkt_spl);
}
 void
free_diradd(struct diradd *dap)
{
 struct dirrem *dirrem;
 struct pagedep *pagedep;
 struct inodedep *inodedep;
 struct mkdir *mkdir, *nextmd;
 do { if (splassert_ctl > 0) { splassert_check(5, __func__); } } while (0);
 do { (&dap->da_list)->wk_state &= ~0x8000; do { if ((&dap->da_list)->wk_list.le_next != ((void *)0)) (&dap->da_list)->wk_list.le_next->wk_list.le_prev = (&dap->da_list)->wk_list.le_prev; *(&dap->da_list)->wk_list.le_prev = (&dap->da_list)->wk_list.le_next; ((&dap->da_list)->wk_list.le_prev) = ((void *)-1); ((&dap->da_list)->wk_list.le_next) = ((void *)-1); } while (0); } while (0);
 do { if ((dap)->da_pdlist.le_next != ((void *)0)) (dap)->da_pdlist.le_next->da_pdlist.le_prev = (dap)->da_pdlist.le_prev; *(dap)->da_pdlist.le_prev = (dap)->da_pdlist.le_next; ((dap)->da_pdlist.le_prev) = ((void *)-1); ((dap)->da_pdlist.le_next) = ((void *)-1); } while (0);
 if ((dap->da_list.wk_state & 0x0080) == 0) {
  pagedep = dap->da_un.dau_pagedep;
 } else {
  dirrem = dap->da_un.dau_previous;
  pagedep = dirrem->dm_un.dmu_pagedep;
  dirrem->dm_un.dmu_dirinum = pagedep->pd_ino;
  add_to_worklist(&dirrem->dm_list);
 }
 if (inodedep_lookup(((struct ufsmount *)((pagedep->pd_mnt)->mnt_data))->ufsmount_u.fs, dap->da_newinum,
     0, &inodedep) != 0)
  (void) free_inodedep(inodedep);
 if ((dap->da_list.wk_state & (0x0010 | 0x0020)) != 0) {
  for (mkdir = ((&mkdirlisthd)->lh_first); mkdir; mkdir = nextmd) {
   nextmd = ((mkdir)->md_mkdirs.le_next);
   if (mkdir->md_diradd != dap)
    continue;
   dap->da_list.wk_state &= ~mkdir->md_list.wk_state;
   do { (&mkdir->md_list)->wk_state &= ~0x8000; do { if ((&mkdir->md_list)->wk_list.le_next != ((void *)0)) (&mkdir->md_list)->wk_list.le_next->wk_list.le_prev = (&mkdir->md_list)->wk_list.le_prev; *(&mkdir->md_list)->wk_list.le_prev = (&mkdir->md_list)->wk_list.le_next; ((&mkdir->md_list)->wk_list.le_prev) = ((void *)-1); ((&mkdir->md_list)->wk_list.le_next) = ((void *)-1); } while (0); } while (0);
   do { if ((mkdir)->md_mkdirs.le_next != ((void *)0)) (mkdir)->md_mkdirs.le_next->md_mkdirs.le_prev = (mkdir)->md_mkdirs.le_prev; *(mkdir)->md_mkdirs.le_prev = (mkdir)->md_mkdirs.le_next; ((mkdir)->md_mkdirs.le_prev) = ((void *)-1); ((mkdir)->md_mkdirs.le_next) = ((void *)-1); } while (0);
   softdep_freequeue_add((struct worklist *)mkdir);
  }
  if ((dap->da_list.wk_state & (0x0010 | 0x0020)) != 0) {
   _splx((&lk)->lkt_spl);
   panic("free_diradd: unfound ref");
  }
 }
 softdep_freequeue_add((struct worklist *)dap);
}
void
softdep_setup_remove(struct buf *bp, struct inode *dp, struct inode *ip,
    int isrmdir)
{
 struct dirrem *dirrem, *prevdirrem;
 dirrem = newdirrem(bp, dp, ip, isrmdir, &prevdirrem);
 if ((dirrem->dm_list.wk_state & 0x0004) == 0) {
  do { if (((dirrem)->dm_next.le_next = (&dirrem->dm_un.dmu_pagedep->pd_dirremhd)->lh_first) != ((void *)0)) (&dirrem->dm_un.dmu_pagedep->pd_dirremhd)->lh_first->dm_next.le_prev = &(dirrem)->dm_next.le_next; (&dirrem->dm_un.dmu_pagedep->pd_dirremhd)->lh_first = (dirrem); (dirrem)->dm_next.le_prev = &(&dirrem->dm_un.dmu_pagedep->pd_dirremhd)->lh_first; } while (0);
  _splx((&lk)->lkt_spl);
 } else {
  if (prevdirrem != ((void *)0))
   do { if (((prevdirrem)->dm_next.le_next = (&dirrem->dm_un.dmu_pagedep->pd_dirremhd)->lh_first) != ((void *)0)) (&dirrem->dm_un.dmu_pagedep->pd_dirremhd)->lh_first->dm_next.le_prev = &(prevdirrem)->dm_next.le_next; (&dirrem->dm_un.dmu_pagedep->pd_dirremhd)->lh_first = (prevdirrem); (prevdirrem)->dm_next.le_prev = &(&dirrem->dm_un.dmu_pagedep->pd_dirremhd)->lh_first; } while (0);
  dirrem->dm_un.dmu_dirinum = dirrem->dm_un.dmu_pagedep->pd_ino;
  _splx((&lk)->lkt_spl);
  handle_workitem_remove(dirrem);
 }
}
 long num_dirrem;
 struct dirrem *
newdirrem(struct buf *bp, struct inode *dp, struct inode *ip, int isrmdir,
    struct dirrem **prevdirremp)
{
 int offset;
 daddr_t lbn;
 struct diradd *dap;
 struct dirrem *dirrem;
 struct pagedep *pagedep;
 if (ip == ((void *)0))
  panic("newdirrem: whiteout");
 if (num_dirrem > max_softdeps / 2)
  (void) request_cleanup(2, 0);
 num_dirrem += 1;
 dirrem = pool_get(&dirrem_pool, 0x0001 | 0x0008);
 dirrem->dm_list.wk_type = 12;
 dirrem->dm_list.wk_state = isrmdir ? 0x0040 : 0;
 dirrem->dm_mnt = ((ip)->i_vnode)->v_mount;
 dirrem->dm_oldinum = ip->i_number;
 *prevdirremp = ((void *)0);
 (&lk)->lkt_spl = _splraise(5);
 lbn = ((dp->i_offset) >> (dp->inode_u.fs)->fs_bshift);
 offset = ((dp->i_offset) & (dp->inode_u.fs)->fs_qbmask);
 if (pagedep_lookup(dp, lbn, 0x0001, &pagedep) == 0)
  do { (&pagedep->pd_list)->wk_state |= 0x8000; do { if (((&pagedep->pd_list)->wk_list.le_next = (&bp->b_dep)->lh_first) != ((void *)0)) (&bp->b_dep)->lh_first->wk_list.le_prev = &(&pagedep->pd_list)->wk_list.le_next; (&bp->b_dep)->lh_first = (&pagedep->pd_list); (&pagedep->pd_list)->wk_list.le_prev = &(&bp->b_dep)->lh_first; } while (0); } while (0);
 dirrem->dm_un.dmu_pagedep = pagedep;
 for((dap) = ((&pagedep->pd_diraddhd[(((offset) >> 2) % 6)])->lh_first); (dap)!= ((void *)0); (dap) = ((dap)->da_pdlist.le_next))
  if (dap->da_offset == offset)
   break;
 if (dap == ((void *)0)) {
  for((dap) = ((&pagedep->pd_pendinghd)->lh_first); (dap)!= ((void *)0); (dap) = ((dap)->da_pdlist.le_next))
   if (dap->da_offset == offset)
    break;
  if (dap == ((void *)0))
   return (dirrem);
 }
 if ((dap->da_list.wk_state & 0x0001) == 0) {
  _splx((&lk)->lkt_spl);
  panic("newdirrem: not ATTACHED");
 }
 if (dap->da_newinum != ip->i_number) {
  _splx((&lk)->lkt_spl);
  panic("newdirrem: inum %u should be %u",
      ip->i_number, dap->da_newinum);
 }
 if ((dap->da_list.wk_state & 0x0080) != 0) {
  *prevdirremp = dap->da_un.dau_previous;
  dap->da_list.wk_state &= ~0x0080;
  dap->da_un.dau_pagedep = pagedep;
 }
 dirrem->dm_list.wk_state |= 0x0004;
 free_diradd(dap);
 return (dirrem);
}
void
softdep_setup_directory_change(struct buf *bp, struct inode *dp,
    struct inode *ip, long newinum, int isrmdir)
{
 int offset;
 struct diradd *dap;
 struct dirrem *dirrem, *prevdirrem;
 struct pagedep *pagedep;
 struct inodedep *inodedep;
 offset = ((dp->i_offset) & (dp->inode_u.fs)->fs_qbmask);
 dap = pool_get(&diradd_pool, 0x0001 | 0x0008);
 dap->da_list.wk_type = 10;
 dap->da_list.wk_state = 0x0080 | 0x0001 | 0x0008;
 dap->da_offset = offset;
 dap->da_newinum = newinum;
 dirrem = newdirrem(bp, dp, ip, isrmdir, &prevdirrem);
 pagedep = dirrem->dm_un.dmu_pagedep;
 if (isrmdir > 1)
  dirrem->dm_list.wk_state |= 0x0080;
 if ((dirrem->dm_list.wk_state & 0x0004) == 0) {
  dap->da_un.dau_previous = dirrem;
 } else {
  if (prevdirrem != ((void *)0)) {
   dap->da_un.dau_previous = prevdirrem;
  } else {
   dap->da_list.wk_state &= ~0x0080;
   dap->da_un.dau_pagedep = pagedep;
  }
  dirrem->dm_un.dmu_dirinum = pagedep->pd_ino;
  add_to_worklist(&dirrem->dm_list);
 }
 if (inodedep_lookup(dp->inode_u.fs, newinum, 0x0001, &inodedep) == 0 ||
     (inodedep->id_list.wk_state & (0x0001 | 0x0004 | 0x0008)) == (0x0001 | 0x0004 | 0x0008)) {
  dap->da_list.wk_state |= 0x0004;
  do { if (((dap)->da_pdlist.le_next = (&pagedep->pd_pendinghd)->lh_first) != ((void *)0)) (&pagedep->pd_pendinghd)->lh_first->da_pdlist.le_prev = &(dap)->da_pdlist.le_next; (&pagedep->pd_pendinghd)->lh_first = (dap); (dap)->da_pdlist.le_prev = &(&pagedep->pd_pendinghd)->lh_first; } while (0);
  do { (&dap->da_list)->wk_state |= 0x8000; do { if (((&dap->da_list)->wk_list.le_next = (&inodedep->id_pendinghd)->lh_first) != ((void *)0)) (&inodedep->id_pendinghd)->lh_first->wk_list.le_prev = &(&dap->da_list)->wk_list.le_next; (&inodedep->id_pendinghd)->lh_first = (&dap->da_list); (&dap->da_list)->wk_list.le_prev = &(&inodedep->id_pendinghd)->lh_first; } while (0); } while (0);
 } else {
  do { if (((dap)->da_pdlist.le_next = (&pagedep->pd_diraddhd[(((offset) >> 2) % 6)])->lh_first) != ((void *)0)) (&pagedep->pd_diraddhd[(((offset) >> 2) % 6)])->lh_first->da_pdlist.le_prev = &(dap)->da_pdlist.le_next; (&pagedep->pd_diraddhd[(((offset) >> 2) % 6)])->lh_first = (dap); (dap)->da_pdlist.le_prev = &(&pagedep->pd_diraddhd[(((offset) >> 2) % 6)])->lh_first; } while (0);
  do { (&dap->da_list)->wk_state |= 0x8000; do { if (((&dap->da_list)->wk_list.le_next = (&inodedep->id_bufwait)->lh_first) != ((void *)0)) (&inodedep->id_bufwait)->lh_first->wk_list.le_prev = &(&dap->da_list)->wk_list.le_next; (&inodedep->id_bufwait)->lh_first = (&dap->da_list); (&dap->da_list)->wk_list.le_prev = &(&inodedep->id_bufwait)->lh_first; } while (0); } while (0);
 }
 _splx((&lk)->lkt_spl);
}
void
softdep_change_linkcnt(struct inode *ip, int nodelay)
{
 struct inodedep *inodedep;
 int flags;
 flags = 0x0001;
 if (nodelay)
  flags |= 0x0002;
 (&lk)->lkt_spl = _splraise(5);
 (void) inodedep_lookup(ip->inode_u.fs, ip->i_number, flags, &inodedep);
 if ((((ip)->i_ump->um_fstype == 1) ? (ip)->dinode_u.ffs1_din->di_nlink : (ip)->dinode_u.ffs2_din->di_nlink) < ip->i_effnlink) {
  _splx((&lk)->lkt_spl);
  panic("softdep_change_linkcnt: bad delta");
 }
 inodedep->id_nlinkdelta = (((ip)->i_ump->um_fstype == 1) ? (ip)->dinode_u.ffs1_din->di_nlink : (ip)->dinode_u.ffs2_din->di_nlink) - ip->i_effnlink;
 _splx((&lk)->lkt_spl);
}
 void
handle_workitem_remove(struct dirrem *dirrem)
{
 struct proc *p = (__curcpu->ci_self)->ci_curproc;
 struct inodedep *inodedep;
 struct vnode *vp;
 struct inode *ip;
 ufsino_t oldinum;
 int error;
 if ((error = (*(dirrem->dm_mnt)->mnt_op->vfs_vget)(dirrem->dm_mnt, dirrem->dm_oldinum, &vp)) != 0) {
  softdep_error("handle_workitem_remove: vget", error);
  return;
 }
 ip = ((struct inode *)(vp)->v_data);
 (&lk)->lkt_spl = _splraise(5);
 if ((inodedep_lookup(ip->inode_u.fs, dirrem->dm_oldinum, 0, &inodedep))
     == 0) {
  _splx((&lk)->lkt_spl);
  panic("handle_workitem_remove: lost inodedep");
 }
 if ((dirrem->dm_list.wk_state & 0x0040) == 0) {
  do { if ((ip)->i_ump->um_fstype == 1) (ip)->dinode_u.ffs1_din->di_nlink += (-1); else (ip)->dinode_u.ffs2_din->di_nlink += (-1); } while (0);
  ip->i_flag |= 0x0002;
  if ((((ip)->i_ump->um_fstype == 1) ? (ip)->dinode_u.ffs1_din->di_nlink : (ip)->dinode_u.ffs2_din->di_nlink) < ip->i_effnlink) {
   _splx((&lk)->lkt_spl);
   panic("handle_workitem_remove: bad file delta");
  }
  inodedep->id_nlinkdelta = (((ip)->i_ump->um_fstype == 1) ? (ip)->dinode_u.ffs1_din->di_nlink : (ip)->dinode_u.ffs2_din->di_nlink) - ip->i_effnlink;
  _splx((&lk)->lkt_spl);
  vput(vp);
  num_dirrem -= 1;
  softdep_freequeue_add((struct worklist *)dirrem);
  return;
 }
 do { if ((ip)->i_ump->um_fstype == 1) (ip)->dinode_u.ffs1_din->di_nlink += (-2); else (ip)->dinode_u.ffs2_din->di_nlink += (-2); } while (0);
 ip->i_flag |= 0x0002;
 if ((((ip)->i_ump->um_fstype == 1) ? (ip)->dinode_u.ffs1_din->di_nlink : (ip)->dinode_u.ffs2_din->di_nlink) < ip->i_effnlink)
  panic("handle_workitem_remove: bad dir delta");
 inodedep->id_nlinkdelta = (((ip)->i_ump->um_fstype == 1) ? (ip)->dinode_u.ffs1_din->di_nlink : (ip)->dinode_u.ffs2_din->di_nlink) - ip->i_effnlink;
 _splx((&lk)->lkt_spl);
 if ((error = ((ip)->i_vtbl->iv_truncate)((ip), ((off_t)0), (0), (p->p_ucred))) != 0)
  softdep_error("handle_workitem_remove: truncate", error);
 if (dirrem->dm_list.wk_state & 0x0080) {
  vput(vp);
  num_dirrem -= 1;
  softdep_freequeue_add((struct worklist *)dirrem);
  return;
 }
 (&lk)->lkt_spl = _splraise(5);
 dirrem->dm_list.wk_state = 0;
 oldinum = dirrem->dm_oldinum;
 dirrem->dm_oldinum = dirrem->dm_un.dmu_dirinum;
 if (inodedep_lookup(ip->inode_u.fs, oldinum, 0, &inodedep) == 0 ||
     check_inode_unwritten(inodedep)) {
  _splx((&lk)->lkt_spl);
  vput(vp);
  handle_workitem_remove(dirrem);
  return;
 }
 do { (&dirrem->dm_list)->wk_state |= 0x8000; do { if (((&dirrem->dm_list)->wk_list.le_next = (&inodedep->id_inowait)->lh_first) != ((void *)0)) (&inodedep->id_inowait)->lh_first->wk_list.le_prev = &(&dirrem->dm_list)->wk_list.le_next; (&inodedep->id_inowait)->lh_first = (&dirrem->dm_list); (&dirrem->dm_list)->wk_list.le_prev = &(&inodedep->id_inowait)->lh_first; } while (0); } while (0);
 _splx((&lk)->lkt_spl);
 ip->i_flag |= 0x0002;
 ((((struct inode *)(vp)->v_data))->i_vtbl->iv_update)((((struct inode *)(vp)->v_data)), (0));
 vput(vp);
}
 void
handle_workitem_freefile(struct freefile *freefile)
{
 struct fs *fs;
 struct vnode vp;
 struct inode tip;
 int error;
 fs = ((struct ufsmount *)((freefile->fx_mnt)->mnt_data))->ufsmount_u.fs;
 tip.i_ump = ((struct ufsmount *)((freefile->fx_mnt)->mnt_data));
 tip.i_dev = freefile->fx_devvp->v_un.vu_specinfo->si_rdev;
 tip.inode_u.fs = fs;
 tip.i_vnode = &vp;
 vp.v_data = &tip;
 if ((error = ffs_freefile(&tip, freefile->fx_oldinum,
   freefile->fx_mode)) != 0) {
  softdep_error("handle_workitem_freefile", error);
 }
 softdep_freequeue_add((struct worklist *)freefile);
}
void
softdep_disk_io_initiation(struct buf *bp)
{
 struct worklist *wk, *nextwk;
 struct indirdep *indirdep;
 struct inodedep *inodedep;
 struct buf *sbp;
 if (bp->b_flags & 0x00008000)
  panic("softdep_disk_io_initiation: read");
 (&lk)->lkt_spl = _splraise(5);
 for (wk = ((&bp->b_dep)->lh_first); wk; wk = nextwk) {
  nextwk = ((wk)->wk_list.le_next);
  switch (wk->wk_type) {
  case 0:
   initiate_write_filepage(((struct pagedep *)(wk)), bp);
   continue;
  case 1:
   inodedep = ((struct inodedep *)(wk));
   if (inodedep->id_fs->fs_magic == 0x011954)
    initiate_write_inodeblock_ufs1(inodedep, bp);
   else
    initiate_write_inodeblock_ufs2(inodedep, bp);
   continue;
  case 5:
   indirdep = ((struct indirdep *)(wk));
   if (indirdep->ir_list.wk_state & 0x0100)
    panic("disk_io_initiation: indirdep gone");
   if (((&indirdep->ir_deplisthd)->lh_first) == ((void *)0)) {
    sbp = indirdep->ir_savebp;
    sbp->b_flags |= 0x00000800 | 0x00001000;
    wk->wk_state &= ~0x8000;
    do { if ((wk)->wk_list.le_next != ((void *)0)) (wk)->wk_list.le_next->wk_list.le_prev = (wk)->wk_list.le_prev; *(wk)->wk_list.le_prev = (wk)->wk_list.le_next; ((wk)->wk_list.le_prev) = ((void *)-1); ((wk)->wk_list.le_next) = ((void *)-1); } while (0);
    softdep_freequeue_add((struct worklist *)indirdep);
    _splx((&lk)->lkt_spl);
    brelse(sbp);
    (&lk)->lkt_spl = _splraise(5);
    continue;
   }
   _splx((&lk)->lkt_spl);
   indirdep->ir_saveddata = malloc(bp->b_bcount,
       83, 0x0001);
   (&lk)->lkt_spl = _splraise(5);
   indirdep->ir_list.wk_state &= ~0x0001;
   indirdep->ir_list.wk_state |= 0x0002;
   __builtin_memcpy((indirdep->ir_saveddata), (bp->b_data), (bp->b_bcount));
   __builtin_memcpy((bp->b_data), (indirdep->ir_savebp->b_data), (bp->b_bcount));
   continue;
  case 11:
  case 3:
  case 4:
  case 6:
   continue;
  default:
   _splx((&lk)->lkt_spl);
   panic("handle_disk_io_initiation: Unexpected type %s",
       ((unsigned)(wk->wk_type) <= 13 ? softdep_typenames[wk->wk_type] : "???"));
  }
 }
 _splx((&lk)->lkt_spl);
}
 void
initiate_write_filepage(struct pagedep *pagedep, struct buf *bp)
{
 struct diradd *dap;
 struct direct *ep;
 int i;
 if (pagedep->pd_list.wk_state & 0x0200) {
  printf("initiate_write_filepage: already started\n");
  return;
 }
 pagedep->pd_list.wk_state |= 0x0200;
 for (i = 0; i < 6; i++) {
  for((dap) = ((&pagedep->pd_diraddhd[i])->lh_first); (dap)!= ((void *)0); (dap) = ((dap)->da_pdlist.le_next)) {
   ep = (struct direct *)
       ((char *)bp->b_data + dap->da_offset);
   if (ep->d_ino != dap->da_newinum) {
    _splx((&lk)->lkt_spl);
    panic("%s: dir inum %u != new %u",
        "initiate_write_filepage",
        ep->d_ino, dap->da_newinum);
   }
   if (dap->da_list.wk_state & 0x0080)
    ep->d_ino = dap->da_un.dau_previous->dm_oldinum;
   else
    ep->d_ino = 0;
   dap->da_list.wk_state &= ~0x0001;
   dap->da_list.wk_state |= 0x0002;
  }
 }
}
 void
initiate_write_inodeblock_ufs1(struct inodedep *inodedep, struct buf *bp)
{
 struct allocdirect *adp, *lastadp;
 struct ufs1_dinode *dp;
 struct fs *fs;
 daddr_t prevlbn = 0;
 int32_t d1, d2;
 int i, deplist;
 if (inodedep->id_list.wk_state & 0x0200) {
  _splx((&lk)->lkt_spl);
  panic("initiate_write_inodeblock: already started");
 }
 inodedep->id_list.wk_state |= 0x0200;
 fs = inodedep->id_fs;
 dp = (struct ufs1_dinode *)bp->b_data +
     ((inodedep->id_ino) % ((fs)->fs_inopb));
 if ((inodedep->id_list.wk_state & 0x0008) == 0) {
  if (inodedep->id_un.idu_savedino1 != ((void *)0)) {
   _splx((&lk)->lkt_spl);
   panic("initiate_write_inodeblock: already doing I/O");
  }
  _splx((&lk)->lkt_spl);
  inodedep->id_un.idu_savedino1 = malloc(sizeof(struct ufs1_dinode),
      79, 0x0001);
  (&lk)->lkt_spl = _splraise(5);
  *inodedep->id_un.idu_savedino1 = *dp;
  __builtin_memset((dp), (0), (sizeof(struct ufs1_dinode)));
  return;
 }
 inodedep->id_savedsize = dp->di_size;
 if (((&inodedep->id_inoupdt)->tqh_first) == ((void *)0))
  return;
 for (deplist = 0, adp = ((&inodedep->id_inoupdt)->tqh_first); adp;
      adp = ((adp)->ad_next.tqe_next)) {
  if (deplist != 0 && prevlbn >= adp->ad_lbn) {
   _splx((&lk)->lkt_spl);
   panic("softdep_write_inodeblock: lbn order");
  }
  prevlbn = adp->ad_lbn;
  if (adp->ad_lbn < 12 &&
      (d1 = dp->di_db[adp->ad_lbn]) != (d2 = adp->ad_newblkno)) {
   _splx((&lk)->lkt_spl);
   panic("%s: direct pointer #%lld mismatch %d != %d",
       "softdep_write_inodeblock", (long long)adp->ad_lbn,
       d1, d2);
  }
  if (adp->ad_lbn >= 12 &&
      (d1 = dp->di_ib[adp->ad_lbn - 12]) !=
      (d2 = adp->ad_newblkno)) {
   _splx((&lk)->lkt_spl);
   panic("%s: indirect pointer #%lld mismatch %d != %d",
       "softdep_write_inodeblock", (long long)(adp->ad_lbn -
       12), d1, d2);
  }
  deplist |= 1 << adp->ad_lbn;
  if ((adp->ad_list.wk_state & 0x0001) == 0) {
   _splx((&lk)->lkt_spl);
   panic("softdep_write_inodeblock: Unknown state 0x%x",
       adp->ad_list.wk_state);
  }
  adp->ad_list.wk_state &= ~0x0001;
  adp->ad_list.wk_state |= 0x0002;
 }
 for (lastadp = ((void *)0), adp = ((&inodedep->id_inoupdt)->tqh_first); adp;
      lastadp = adp, adp = ((adp)->ad_next.tqe_next)) {
  if (adp->ad_lbn >= 12)
   break;
  dp->di_db[adp->ad_lbn] = adp->ad_oldblkno;
  if (adp->ad_oldsize == 0 || adp->ad_oldsize == fs->fs_bsize)
   continue;
  dp->di_size = fs->fs_bsize * adp->ad_lbn + adp->ad_oldsize;
  for (i = adp->ad_lbn + 1; i < 12; i++) {
   if (dp->di_db[i] != 0 && (deplist & (1 << i)) == 0) {
    _splx((&lk)->lkt_spl);
    panic("softdep_write_inodeblock: lost dep1");
   }
   dp->di_db[i] = 0;
  }
  for (i = 0; i < 3; i++) {
   if (dp->di_ib[i] != 0 &&
       (deplist & ((1 << 12) << i)) == 0) {
    _splx((&lk)->lkt_spl);
    panic("softdep_write_inodeblock: lost dep2");
   }
   dp->di_ib[i] = 0;
  }
  return;
 }
 if (lastadp != ((void *)0) &&
     dp->di_size <= (lastadp->ad_lbn + 1) * fs->fs_bsize) {
  for (i = lastadp->ad_lbn; i >= 0; i--)
   if (dp->di_db[i] != 0)
    break;
  dp->di_size = (i + 1) * fs->fs_bsize;
 }
 for (; adp; adp = ((adp)->ad_next.tqe_next))
  dp->di_ib[adp->ad_lbn - 12] = 0;
}
 void
initiate_write_inodeblock_ufs2(struct inodedep *inodedep, struct buf *bp)
{
 struct allocdirect *adp, *lastadp;
 struct ufs2_dinode *dp;
 struct fs *fs = inodedep->id_fs;
 daddr_t prevlbn = -1, d1, d2;
 int deplist, i;
 if (inodedep->id_list.wk_state & 0x0200)
  panic("initiate_write_inodeblock_ufs2: already started");
 inodedep->id_list.wk_state |= 0x0200;
 fs = inodedep->id_fs;
 dp = (struct ufs2_dinode *)bp->b_data +
     ((inodedep->id_ino) % ((fs)->fs_inopb));
 if ((inodedep->id_list.wk_state & 0x0008) == 0) {
  if (inodedep->id_un.idu_savedino2 != ((void *)0))
   panic("initiate_write_inodeblock_ufs2: I/O underway");
  inodedep->id_un.idu_savedino2 = malloc(sizeof(struct ufs2_dinode),
      79, 0x0001);
  *inodedep->id_un.idu_savedino2 = *dp;
  __builtin_memset((dp), (0), (sizeof(struct ufs2_dinode)));
  return;
 }
 inodedep->id_savedsize = dp->di_size;
 if (((&inodedep->id_inoupdt)->tqh_first) == ((void *)0))
  return;
 for (deplist = 0, adp = ((&inodedep->id_inoupdt)->tqh_first); adp;
      adp = ((adp)->ad_next.tqe_next)) {
  if (deplist != 0 && prevlbn >= adp->ad_lbn) {
   _splx((&lk)->lkt_spl);
   panic("softdep_write_inodeblock: lbn order");
  }
  prevlbn = adp->ad_lbn;
  if (adp->ad_lbn < 12 &&
      (d1 = dp->di_db[adp->ad_lbn]) != (d2 = adp->ad_newblkno)) {
   _splx((&lk)->lkt_spl);
   panic("%s: direct pointer #%lld mismatch %lld != %lld",
       "softdep_write_inodeblock", (long long)adp->ad_lbn,
       d1, d2);
  }
  if (adp->ad_lbn >= 12 &&
      (d1 = dp->di_ib[adp->ad_lbn - 12]) !=
      (d2 = adp->ad_newblkno)) {
   _splx((&lk)->lkt_spl);
   panic("%s: indirect pointer #%lld mismatch %lld != %lld",
       "softdep_write_inodeblock", (long long)(adp->ad_lbn -
       12), d1, d2);
  }
  deplist |= 1 << adp->ad_lbn;
  if ((adp->ad_list.wk_state & 0x0001) == 0) {
   _splx((&lk)->lkt_spl);
   panic("softdep_write_inodeblock: Unknown state 0x%x",
       adp->ad_list.wk_state);
  }
  adp->ad_list.wk_state &= ~0x0001;
  adp->ad_list.wk_state |= 0x0002;
 }
 for (lastadp = ((void *)0), adp = ((&inodedep->id_inoupdt)->tqh_first); adp;
      lastadp = adp, adp = ((adp)->ad_next.tqe_next)) {
  if (adp->ad_lbn >= 12)
   break;
  dp->di_db[adp->ad_lbn] = adp->ad_oldblkno;
  if (adp->ad_oldsize == 0 || adp->ad_oldsize == fs->fs_bsize)
   continue;
  dp->di_size = fs->fs_bsize * adp->ad_lbn + adp->ad_oldsize;
  for (i = adp->ad_lbn + 1; i < 12; i++) {
   if (dp->di_db[i] != 0 && (deplist & (1 << i)) == 0) {
    _splx((&lk)->lkt_spl);
    panic("softdep_write_inodeblock: lost dep2");
   }
   dp->di_db[i] = 0;
  }
  for (i = 0; i < 3; i++) {
   if (dp->di_ib[i] != 0 &&
       (deplist & ((1 << 12) << i)) == 0) {
    _splx((&lk)->lkt_spl);
    panic("softdep_write_inodeblock: lost dep3");
   }
   dp->di_ib[i] = 0;
  }
  return;
 }
 if (lastadp != ((void *)0) &&
     dp->di_size <= (lastadp->ad_lbn + 1) * fs->fs_bsize) {
  for (i = lastadp->ad_lbn; i >= 0; i--)
   if (dp->di_db[i] != 0)
    break;
  dp->di_size = (i + 1) * fs->fs_bsize;
 }
 for (; adp; adp = ((adp)->ad_next.tqe_next))
  dp->di_ib[adp->ad_lbn - 12] = 0;
}
void
softdep_disk_write_complete(struct buf *bp)
{
 struct worklist *wk;
 struct workhead reattach;
 struct newblk *newblk;
 struct allocindir *aip;
 struct allocdirect *adp;
 struct indirdep *indirdep;
 struct inodedep *inodedep;
 struct bmsafemap *bmsafemap;
 if ((bp->b_flags & 0x00000400) && !(bp->b_flags & 0x00000800))
  return;
 do { ((&reattach)->lh_first) = ((void *)0); } while (0);
 while ((wk = ((&bp->b_dep)->lh_first)) != ((void *)0)) {
  do { (wk)->wk_state &= ~0x8000; do { if ((wk)->wk_list.le_next != ((void *)0)) (wk)->wk_list.le_next->wk_list.le_prev = (wk)->wk_list.le_prev; *(wk)->wk_list.le_prev = (wk)->wk_list.le_next; ((wk)->wk_list.le_prev) = ((void *)-1); ((wk)->wk_list.le_next) = ((void *)-1); } while (0); } while (0);
  switch (wk->wk_type) {
  case 0:
   if (handle_written_filepage(((struct pagedep *)(wk)), bp))
    do { (wk)->wk_state |= 0x8000; do { if (((wk)->wk_list.le_next = (&reattach)->lh_first) != ((void *)0)) (&reattach)->lh_first->wk_list.le_prev = &(wk)->wk_list.le_next; (&reattach)->lh_first = (wk); (wk)->wk_list.le_prev = &(&reattach)->lh_first; } while (0); } while (0);
   continue;
  case 1:
   if (handle_written_inodeblock(((struct inodedep *)(wk)), bp))
    do { (wk)->wk_state |= 0x8000; do { if (((wk)->wk_list.le_next = (&reattach)->lh_first) != ((void *)0)) (&reattach)->lh_first->wk_list.le_prev = &(wk)->wk_list.le_next; (&reattach)->lh_first = (wk); (wk)->wk_list.le_prev = &(&reattach)->lh_first; } while (0); } while (0);
   continue;
  case 3:
   bmsafemap = ((struct bmsafemap *)(wk));
   while ((newblk = ((&bmsafemap->sm_newblkhd)->lh_first))) {
    newblk->nb_state |= 0x0008;
    newblk->nb_bmsafemap = ((void *)0);
    do { if ((newblk)->nb_deps.le_next != ((void *)0)) (newblk)->nb_deps.le_next->nb_deps.le_prev = (newblk)->nb_deps.le_prev; *(newblk)->nb_deps.le_prev = (newblk)->nb_deps.le_next; ((newblk)->nb_deps.le_prev) = ((void *)-1); ((newblk)->nb_deps.le_next) = ((void *)-1); } while (0);
   }
   while ((adp =
      ((&bmsafemap->sm_allocdirecthd)->lh_first))) {
    adp->ad_list.wk_state |= 0x0008;
    adp->ad_buf = ((void *)0);
    do { if ((adp)->ad_deps.le_next != ((void *)0)) (adp)->ad_deps.le_next->ad_deps.le_prev = (adp)->ad_deps.le_prev; *(adp)->ad_deps.le_prev = (adp)->ad_deps.le_next; ((adp)->ad_deps.le_prev) = ((void *)-1); ((adp)->ad_deps.le_next) = ((void *)-1); } while (0);
    handle_allocdirect_partdone(adp);
   }
   while ((aip =
       ((&bmsafemap->sm_allocindirhd)->lh_first))) {
    aip->ai_list.wk_state |= 0x0008;
    aip->ai_buf = ((void *)0);
    do { if ((aip)->ai_deps.le_next != ((void *)0)) (aip)->ai_deps.le_next->ai_deps.le_prev = (aip)->ai_deps.le_prev; *(aip)->ai_deps.le_prev = (aip)->ai_deps.le_next; ((aip)->ai_deps.le_prev) = ((void *)-1); ((aip)->ai_deps.le_next) = ((void *)-1); } while (0);
    handle_allocindir_partdone(aip);
   }
   while ((inodedep =
        ((&bmsafemap->sm_inodedephd)->lh_first)) != ((void *)0)) {
    inodedep->id_list.wk_state |= 0x0008;
    do { if ((inodedep)->id_deps.le_next != ((void *)0)) (inodedep)->id_deps.le_next->id_deps.le_prev = (inodedep)->id_deps.le_prev; *(inodedep)->id_deps.le_prev = (inodedep)->id_deps.le_next; ((inodedep)->id_deps.le_prev) = ((void *)-1); ((inodedep)->id_deps.le_next) = ((void *)-1); } while (0);
    inodedep->id_buf = ((void *)0);
   }
   softdep_freequeue_add((struct worklist *)bmsafemap);
   continue;
  case 11:
   handle_written_mkdir(((struct mkdir *)(wk)), 0x0020);
   continue;
  case 4:
   adp = ((struct allocdirect *)(wk));
   adp->ad_list.wk_state |= 0x0004;
   handle_allocdirect_partdone(adp);
   continue;
  case 6:
   aip = ((struct allocindir *)(wk));
   aip->ai_list.wk_state |= 0x0004;
   handle_allocindir_partdone(aip);
   continue;
  case 5:
   indirdep = ((struct indirdep *)(wk));
   if (indirdep->ir_list.wk_state & 0x0100)
    panic("disk_write_complete: indirdep gone");
   __builtin_memcpy((bp->b_data), (indirdep->ir_saveddata), (bp->b_bcount));
   free(indirdep->ir_saveddata, 83, 0);
   indirdep->ir_saveddata = ((void *)0);
   indirdep->ir_list.wk_state &= ~0x0002;
   indirdep->ir_list.wk_state |= 0x0001;
   while ((aip = ((&indirdep->ir_donehd)->lh_first))) {
    handle_allocindir_partdone(aip);
    if (aip == ((&indirdep->ir_donehd)->lh_first))
     panic("disk_write_complete: not gone");
   }
   do { (wk)->wk_state |= 0x8000; do { if (((wk)->wk_list.le_next = (&reattach)->lh_first) != ((void *)0)) (&reattach)->lh_first->wk_list.le_prev = &(wk)->wk_list.le_next; (&reattach)->lh_first = (wk); (wk)->wk_list.le_prev = &(&reattach)->lh_first; } while (0); } while (0);
   if ((bp->b_flags & 0x00000080) == 0)
    stat_indir_blk_ptrs++;
   buf_dirty(bp);
   continue;
  default:
   panic("handle_disk_write_complete: Unknown type %s",
       ((unsigned)(wk->wk_type) <= 13 ? softdep_typenames[wk->wk_type] : "???"));
  }
 }
 while ((wk = ((&reattach)->lh_first)) != ((void *)0)) {
  do { (wk)->wk_state &= ~0x8000; do { if ((wk)->wk_list.le_next != ((void *)0)) (wk)->wk_list.le_next->wk_list.le_prev = (wk)->wk_list.le_prev; *(wk)->wk_list.le_prev = (wk)->wk_list.le_next; ((wk)->wk_list.le_prev) = ((void *)-1); ((wk)->wk_list.le_next) = ((void *)-1); } while (0); } while (0);
  do { (wk)->wk_state |= 0x8000; do { if (((wk)->wk_list.le_next = (&bp->b_dep)->lh_first) != ((void *)0)) (&bp->b_dep)->lh_first->wk_list.le_prev = &(wk)->wk_list.le_next; (&bp->b_dep)->lh_first = (wk); (wk)->wk_list.le_prev = &(&bp->b_dep)->lh_first; } while (0); } while (0);
 }
}
 void
handle_allocdirect_partdone(struct allocdirect *adp)
{
 struct allocdirect *listadp;
 struct inodedep *inodedep;
 long bsize, delay;
 do { if (splassert_ctl > 0) { splassert_check(5, __func__); } } while (0);
 if ((adp->ad_list.wk_state & (0x0001 | 0x0004 | 0x0008)) != (0x0001 | 0x0004 | 0x0008))
  return;
 if (adp->ad_buf != ((void *)0))
  panic("handle_allocdirect_partdone: dangling dep");
 inodedep = adp->ad_inodedep;
 bsize = inodedep->id_fs->fs_bsize;
 for((listadp) = ((&inodedep->id_inoupdt)->tqh_first); (listadp) != ((void *)0); (listadp) = ((listadp)->ad_next.tqe_next)) {
  if (listadp == adp)
   break;
  if (listadp->ad_oldsize == 0 ||
      listadp->ad_oldsize == bsize)
   continue;
  return;
 }
 if (listadp == ((void *)0)) {
  return;
 }
 delay = (inodedep->id_list.wk_state & 0x0008);
 for (; adp; adp = listadp) {
  listadp = ((adp)->ad_next.tqe_next);
  if ((adp->ad_list.wk_state & (0x0001 | 0x0004 | 0x0008)) != (0x0001 | 0x0004 | 0x0008))
   return;
  free_allocdirect(&inodedep->id_inoupdt, adp, delay);
 }
}
 void
handle_allocindir_partdone(struct allocindir *aip)
{
 struct indirdep *indirdep;
 do { if (splassert_ctl > 0) { splassert_check(5, __func__); } } while (0);
 if ((aip->ai_list.wk_state & (0x0001 | 0x0004 | 0x0008)) != (0x0001 | 0x0004 | 0x0008))
  return;
 if (aip->ai_buf != ((void *)0))
  panic("handle_allocindir_partdone: dangling dependency");
 indirdep = aip->ai_indirdep;
 if (indirdep->ir_list.wk_state & 0x0002) {
  do { if ((aip)->ai_next.le_next != ((void *)0)) (aip)->ai_next.le_next->ai_next.le_prev = (aip)->ai_next.le_prev; *(aip)->ai_next.le_prev = (aip)->ai_next.le_next; ((aip)->ai_next.le_prev) = ((void *)-1); ((aip)->ai_next.le_next) = ((void *)-1); } while (0);
  do { if (((aip)->ai_next.le_next = (&indirdep->ir_donehd)->lh_first) != ((void *)0)) (&indirdep->ir_donehd)->lh_first->ai_next.le_prev = &(aip)->ai_next.le_next; (&indirdep->ir_donehd)->lh_first = (aip); (aip)->ai_next.le_prev = &(&indirdep->ir_donehd)->lh_first; } while (0);
  return;
 }
 if (indirdep->ir_list.wk_state & 0x2000)
  ((int32_t *)indirdep->ir_savebp->b_data)[aip->ai_offset] =
      aip->ai_newblkno;
 else
  ((int64_t *)indirdep->ir_savebp->b_data)[aip->ai_offset] =
      aip->ai_newblkno;
 do { if ((aip)->ai_next.le_next != ((void *)0)) (aip)->ai_next.le_next->ai_next.le_prev = (aip)->ai_next.le_prev; *(aip)->ai_next.le_prev = (aip)->ai_next.le_next; ((aip)->ai_next.le_prev) = ((void *)-1); ((aip)->ai_next.le_next) = ((void *)-1); } while (0);
 if (aip->ai_freefrag != ((void *)0))
  add_to_worklist(&aip->ai_freefrag->ff_list);
 softdep_freequeue_add((struct worklist *)aip);
}
 int
handle_written_inodeblock(struct inodedep *inodedep, struct buf *bp)
{
 struct worklist *wk, *filefree;
 struct allocdirect *adp, *nextadp;
 struct ufs1_dinode *dp1 = ((void *)0);
 struct ufs2_dinode *dp2 = ((void *)0);
 int hadchanges, fstype;
 do { if (splassert_ctl > 0) { splassert_check(5, __func__); } } while (0);
 if ((inodedep->id_list.wk_state & 0x0200) == 0)
  panic("handle_written_inodeblock: not started");
 inodedep->id_list.wk_state &= ~0x0200;
 if (inodedep->id_fs->fs_magic == 0x011954) {
  fstype = 1;
  dp1 = (struct ufs1_dinode *) bp->b_data +
      ((inodedep->id_ino) % ((inodedep->id_fs)->fs_inopb));
 } else {
  fstype = 2;
  dp2 = (struct ufs2_dinode *) bp->b_data +
      ((inodedep->id_ino) % ((inodedep->id_fs)->fs_inopb));
 }
 if (inodedep->id_un.idu_savedino1 != ((void *)0)) {
  if (fstype == 1)
   *dp1 = *inodedep->id_un.idu_savedino1;
  else
   *dp2 = *inodedep->id_un.idu_savedino2;
  free(inodedep->id_un.idu_savedino1, 79, 0);
  inodedep->id_un.idu_savedino1 = ((void *)0);
  if ((bp->b_flags & 0x00000080) == 0)
   stat_inode_bitmap++;
  buf_dirty(bp);
  return (1);
 }
 inodedep->id_list.wk_state |= 0x0004;
 hadchanges = 0;
 for (adp = ((&inodedep->id_inoupdt)->tqh_first); adp; adp = nextadp) {
  nextadp = ((adp)->ad_next.tqe_next);
  if (adp->ad_list.wk_state & 0x0001)
   panic("handle_written_inodeblock: new entry");
  if (fstype == 1) {
   if (adp->ad_lbn < 12) {
    if (dp1->di_db[adp->ad_lbn] != adp->ad_oldblkno)
      panic("%s: %s #%lld mismatch %d != "
          "%lld",
          "handle_written_inodeblock",
          "direct pointer",
          (long long)adp->ad_lbn,
          dp1->di_db[adp->ad_lbn],
          (long long)adp->ad_oldblkno);
    dp1->di_db[adp->ad_lbn] = adp->ad_newblkno;
   } else {
    if (dp1->di_ib[adp->ad_lbn - 12] != 0)
     panic("%s: %s #%lld allocated as %d",
         "handle_written_inodeblock",
         "indirect pointer",
         (long long)(adp->ad_lbn - 12),
         dp1->di_ib[adp->ad_lbn - 12]);
    dp1->di_ib[adp->ad_lbn - 12] =
       adp->ad_newblkno;
   }
  } else {
   if (adp->ad_lbn < 12) {
    if (dp2->di_db[adp->ad_lbn] != adp->ad_oldblkno)
     panic("%s: %s #%lld mismatch %lld != "
         "%lld", "handle_written_inodeblock",
         "direct pointer",
         (long long)adp->ad_lbn,
         dp2->di_db[adp->ad_lbn],
         (long long)adp->ad_oldblkno);
    dp2->di_db[adp->ad_lbn] = adp->ad_newblkno;
   } else {
    if (dp2->di_ib[adp->ad_lbn - 12] != 0)
     panic("%s: %s #%lld allocated as %lld",
         "handle_written_inodeblock",
         "indirect pointer",
         (long long)(adp->ad_lbn - 12),
         dp2->di_ib[adp->ad_lbn - 12]);
    dp2->di_ib[adp->ad_lbn - 12] =
        adp->ad_newblkno;
   }
  }
  adp->ad_list.wk_state &= ~0x0002;
  adp->ad_list.wk_state |= 0x0001;
  hadchanges = 1;
 }
 if (hadchanges && (bp->b_flags & 0x00000080) == 0)
  stat_direct_blk_ptrs++;
 if (inodedep->id_savedsize == -1)
  panic("handle_written_inodeblock: bad size");
 if (fstype == 1) {
  if (dp1->di_size != inodedep->id_savedsize) {
   dp1->di_size = inodedep->id_savedsize;
   hadchanges = 1;
  }
 } else {
  if (dp2->di_size != inodedep->id_savedsize) {
   dp2->di_size = inodedep->id_savedsize;
   hadchanges = 1;
  }
 }
 inodedep->id_savedsize = -1;
 if (hadchanges)
  buf_dirty(bp);
 if ((adp = ((&inodedep->id_inoupdt)->tqh_first)) != ((void *)0))
  handle_allocdirect_partdone(adp);
 filefree = ((void *)0);
 while ((wk = ((&inodedep->id_bufwait)->lh_first)) != ((void *)0)) {
  do { (wk)->wk_state &= ~0x8000; do { if ((wk)->wk_list.le_next != ((void *)0)) (wk)->wk_list.le_next->wk_list.le_prev = (wk)->wk_list.le_prev; *(wk)->wk_list.le_prev = (wk)->wk_list.le_next; ((wk)->wk_list.le_prev) = ((void *)-1); ((wk)->wk_list.le_next) = ((void *)-1); } while (0); } while (0);
  switch (wk->wk_type) {
  case 9:
   if (filefree != ((void *)0))
    panic("handle_written_inodeblock: filefree");
   filefree = wk;
   continue;
  case 11:
   handle_written_mkdir(((struct mkdir *)(wk)), 0x0010);
   continue;
  case 10:
   diradd_inode_written(((struct diradd *)(wk)), inodedep);
   continue;
  case 8:
   wk->wk_state |= 0x0004;
   if ((wk->wk_state & (0x0001 | 0x0004 | 0x0008)) != (0x0001 | 0x0004 | 0x0008))
    continue;
  case 7:
  case 12:
   add_to_worklist(wk);
   continue;
  case 13:
   free_newdirblk(((struct newdirblk *)(wk)));
   continue;
  default:
   panic("handle_written_inodeblock: Unknown type %s",
       ((unsigned)(wk->wk_type) <= 13 ? softdep_typenames[wk->wk_type] : "???"));
  }
 }
 if (filefree != ((void *)0)) {
  if (free_inodedep(inodedep) == 0)
   panic("handle_written_inodeblock: live inodedep");
  add_to_worklist(filefree);
  return (0);
 }
 if (free_inodedep(inodedep) ||
     ((&inodedep->id_inoupdt)->tqh_first) == ((void *)0))
  return (0);
 return (hadchanges);
}
 void
diradd_inode_written(struct diradd *dap, struct inodedep *inodedep)
{
 struct pagedep *pagedep;
 do { if (splassert_ctl > 0) { splassert_check(5, __func__); } } while (0);
 dap->da_list.wk_state |= 0x0004;
 if ((dap->da_list.wk_state & (0x0001 | 0x0004 | 0x0008)) == (0x0001 | 0x0004 | 0x0008)) {
  if (dap->da_list.wk_state & 0x0080)
   pagedep = dap->da_un.dau_previous->dm_un.dmu_pagedep;
  else
   pagedep = dap->da_un.dau_pagedep;
  do { if ((dap)->da_pdlist.le_next != ((void *)0)) (dap)->da_pdlist.le_next->da_pdlist.le_prev = (dap)->da_pdlist.le_prev; *(dap)->da_pdlist.le_prev = (dap)->da_pdlist.le_next; ((dap)->da_pdlist.le_prev) = ((void *)-1); ((dap)->da_pdlist.le_next) = ((void *)-1); } while (0);
  do { if (((dap)->da_pdlist.le_next = (&pagedep->pd_pendinghd)->lh_first) != ((void *)0)) (&pagedep->pd_pendinghd)->lh_first->da_pdlist.le_prev = &(dap)->da_pdlist.le_next; (&pagedep->pd_pendinghd)->lh_first = (dap); (dap)->da_pdlist.le_prev = &(&pagedep->pd_pendinghd)->lh_first; } while (0);
 }
 do { (&dap->da_list)->wk_state |= 0x8000; do { if (((&dap->da_list)->wk_list.le_next = (&inodedep->id_pendinghd)->lh_first) != ((void *)0)) (&inodedep->id_pendinghd)->lh_first->wk_list.le_prev = &(&dap->da_list)->wk_list.le_next; (&inodedep->id_pendinghd)->lh_first = (&dap->da_list); (&dap->da_list)->wk_list.le_prev = &(&inodedep->id_pendinghd)->lh_first; } while (0); } while (0);
}
 void
handle_written_mkdir(struct mkdir *mkdir, int type)
{
 struct diradd *dap;
 struct pagedep *pagedep;
 do { if (splassert_ctl > 0) { splassert_check(5, __func__); } } while (0);
 if (mkdir->md_list.wk_state != type)
  panic("handle_written_mkdir: bad type");
 dap = mkdir->md_diradd;
 dap->da_list.wk_state &= ~type;
 if ((dap->da_list.wk_state & (0x0010 | 0x0020)) == 0)
  dap->da_list.wk_state |= 0x0008;
 if ((dap->da_list.wk_state & (0x0001 | 0x0004 | 0x0008)) == (0x0001 | 0x0004 | 0x0008)) {
  if (dap->da_list.wk_state & 0x0080)
   pagedep = dap->da_un.dau_previous->dm_un.dmu_pagedep;
  else
   pagedep = dap->da_un.dau_pagedep;
  do { if ((dap)->da_pdlist.le_next != ((void *)0)) (dap)->da_pdlist.le_next->da_pdlist.le_prev = (dap)->da_pdlist.le_prev; *(dap)->da_pdlist.le_prev = (dap)->da_pdlist.le_next; ((dap)->da_pdlist.le_prev) = ((void *)-1); ((dap)->da_pdlist.le_next) = ((void *)-1); } while (0);
  do { if (((dap)->da_pdlist.le_next = (&pagedep->pd_pendinghd)->lh_first) != ((void *)0)) (&pagedep->pd_pendinghd)->lh_first->da_pdlist.le_prev = &(dap)->da_pdlist.le_next; (&pagedep->pd_pendinghd)->lh_first = (dap); (dap)->da_pdlist.le_prev = &(&pagedep->pd_pendinghd)->lh_first; } while (0);
 }
 do { if ((mkdir)->md_mkdirs.le_next != ((void *)0)) (mkdir)->md_mkdirs.le_next->md_mkdirs.le_prev = (mkdir)->md_mkdirs.le_prev; *(mkdir)->md_mkdirs.le_prev = (mkdir)->md_mkdirs.le_next; ((mkdir)->md_mkdirs.le_prev) = ((void *)-1); ((mkdir)->md_mkdirs.le_next) = ((void *)-1); } while (0);
 softdep_freequeue_add((struct worklist *)mkdir);
}
 int
handle_written_filepage(struct pagedep *pagedep, struct buf *bp)
{
 struct dirrem *dirrem;
 struct diradd *dap, *nextdap;
 struct direct *ep;
 int i, chgs;
 do { if (splassert_ctl > 0) { splassert_check(5, __func__); } } while (0);
 if ((pagedep->pd_list.wk_state & 0x0200) == 0)
  panic("handle_written_filepage: not started");
 pagedep->pd_list.wk_state &= ~0x0200;
 while ((dirrem = ((&pagedep->pd_dirremhd)->lh_first)) != ((void *)0)) {
  do { if ((dirrem)->dm_next.le_next != ((void *)0)) (dirrem)->dm_next.le_next->dm_next.le_prev = (dirrem)->dm_next.le_prev; *(dirrem)->dm_next.le_prev = (dirrem)->dm_next.le_next; ((dirrem)->dm_next.le_prev) = ((void *)-1); ((dirrem)->dm_next.le_next) = ((void *)-1); } while (0);
  dirrem->dm_un.dmu_dirinum = pagedep->pd_ino;
  add_to_worklist(&dirrem->dm_list);
 }
 if ((pagedep->pd_list.wk_state & 0x0800) == 0)
  while ((dap = ((&pagedep->pd_pendinghd)->lh_first)) != ((void *)0))
   free_diradd(dap);
 for (chgs = 0, i = 0; i < 6; i++) {
  for (dap = ((&pagedep->pd_diraddhd[i])->lh_first); dap;
       dap = nextdap) {
   nextdap = ((dap)->da_pdlist.le_next);
   if (dap->da_list.wk_state & 0x0001)
    panic("handle_written_filepage: attached");
   ep = (struct direct *)
       ((char *)bp->b_data + dap->da_offset);
   ep->d_ino = dap->da_newinum;
   dap->da_list.wk_state &= ~0x0002;
   dap->da_list.wk_state |= 0x0001;
   chgs = 1;
   if ((dap->da_list.wk_state & (0x0001 | 0x0004 | 0x0008)) == (0x0001 | 0x0004 | 0x0008)) {
    do { if ((dap)->da_pdlist.le_next != ((void *)0)) (dap)->da_pdlist.le_next->da_pdlist.le_prev = (dap)->da_pdlist.le_prev; *(dap)->da_pdlist.le_prev = (dap)->da_pdlist.le_next; ((dap)->da_pdlist.le_prev) = ((void *)-1); ((dap)->da_pdlist.le_next) = ((void *)-1); } while (0);
    do { if (((dap)->da_pdlist.le_next = (&pagedep->pd_pendinghd)->lh_first) != ((void *)0)) (&pagedep->pd_pendinghd)->lh_first->da_pdlist.le_prev = &(dap)->da_pdlist.le_next; (&pagedep->pd_pendinghd)->lh_first = (dap); (dap)->da_pdlist.le_prev = &(&pagedep->pd_pendinghd)->lh_first; } while (0);
   }
  }
 }
 if (chgs) {
  if ((bp->b_flags & 0x00000080) == 0)
   stat_dir_entry++;
  buf_dirty(bp);
  return (1);
 }
 if ((pagedep->pd_list.wk_state & 0x0800) == 0) {
  do { if ((pagedep)->pd_hash.le_next != ((void *)0)) (pagedep)->pd_hash.le_next->pd_hash.le_prev = (pagedep)->pd_hash.le_prev; *(pagedep)->pd_hash.le_prev = (pagedep)->pd_hash.le_next; ((pagedep)->pd_hash.le_prev) = ((void *)-1); ((pagedep)->pd_hash.le_next) = ((void *)-1); } while (0);
  softdep_freequeue_add((struct worklist *)pagedep);
 }
 return (0);
}
void
softdep_load_inodeblock(struct inode *ip)
{
 struct inodedep *inodedep;
 ip->i_effnlink = (((ip)->i_ump->um_fstype == 1) ? (ip)->dinode_u.ffs1_din->di_nlink : (ip)->dinode_u.ffs2_din->di_nlink);
 (&lk)->lkt_spl = _splraise(5);
 if (inodedep_lookup(ip->inode_u.fs, ip->i_number, 0, &inodedep) == 0) {
  _splx((&lk)->lkt_spl);
  return;
 }
 ip->i_effnlink -= inodedep->id_nlinkdelta;
 _splx((&lk)->lkt_spl);
}
void
softdep_update_inodeblock(struct inode *ip, struct buf *bp, int waitfor)
{
 struct inodedep *inodedep;
 struct worklist *wk;
 int error, gotit;
 (&lk)->lkt_spl = _splraise(5);
 if (inodedep_lookup(ip->inode_u.fs, ip->i_number, 0, &inodedep) == 0) {
  _splx((&lk)->lkt_spl);
  if (ip->i_effnlink != (((ip)->i_ump->um_fstype == 1) ? (ip)->dinode_u.ffs1_din->di_nlink : (ip)->dinode_u.ffs2_din->di_nlink))
   panic("softdep_update_inodeblock: bad link count");
  return;
 }
 if (inodedep->id_nlinkdelta != (((ip)->i_ump->um_fstype == 1) ? (ip)->dinode_u.ffs1_din->di_nlink : (ip)->dinode_u.ffs2_din->di_nlink) - ip->i_effnlink) {
  _splx((&lk)->lkt_spl);
  panic("softdep_update_inodeblock: bad delta");
 }
 inodedep->id_list.wk_state &= ~0x0004;
 if ((inodedep->id_list.wk_state & 0x8000) == 0)
  do { (&inodedep->id_list)->wk_state |= 0x8000; do { if (((&inodedep->id_list)->wk_list.le_next = (&bp->b_dep)->lh_first) != ((void *)0)) (&bp->b_dep)->lh_first->wk_list.le_prev = &(&inodedep->id_list)->wk_list.le_next; (&bp->b_dep)->lh_first = (&inodedep->id_list); (&inodedep->id_list)->wk_list.le_prev = &(&bp->b_dep)->lh_first; } while (0); } while (0);
 merge_inode_lists(inodedep);
 if (((&inodedep->id_inoupdt)->tqh_first) != ((void *)0))
  handle_allocdirect_partdone(((&inodedep->id_inoupdt)->tqh_first));
 while ((wk = ((&inodedep->id_inowait)->lh_first)) != ((void *)0)) {
  do { (wk)->wk_state &= ~0x8000; do { if ((wk)->wk_list.le_next != ((void *)0)) (wk)->wk_list.le_next->wk_list.le_prev = (wk)->wk_list.le_prev; *(wk)->wk_list.le_prev = (wk)->wk_list.le_next; ((wk)->wk_list.le_prev) = ((void *)-1); ((wk)->wk_list.le_next) = ((void *)-1); } while (0); } while (0);
  do { (wk)->wk_state |= 0x8000; do { if (((wk)->wk_list.le_next = (&inodedep->id_bufwait)->lh_first) != ((void *)0)) (&inodedep->id_bufwait)->lh_first->wk_list.le_prev = &(wk)->wk_list.le_next; (&inodedep->id_bufwait)->lh_first = (wk); (wk)->wk_list.le_prev = &(&inodedep->id_bufwait)->lh_first; } while (0); } while (0);
 }
 do {
  if ((inodedep->id_list.wk_state & 0x0008) != 0 || waitfor == 0) {
   _splx((&lk)->lkt_spl);
   return;
  }
  bp = inodedep->id_buf;
  gotit = getdirtybuf(bp, 1);
 } while (gotit == -1);
 _splx((&lk)->lkt_spl);
 if (gotit && (error = bwrite(bp)) != 0)
  softdep_error("softdep_update_inodeblock: bwrite", error);
 if ((inodedep->id_list.wk_state & 0x0008) == 0)
  panic("softdep_update_inodeblock: update failed");
}
 void
merge_inode_lists(struct inodedep *inodedep)
{
 struct allocdirect *listadp, *newadp;
 do { if (splassert_ctl > 0) { splassert_check(5, __func__); } } while (0);
 newadp = ((&inodedep->id_newinoupdt)->tqh_first);
 for (listadp = ((&inodedep->id_inoupdt)->tqh_first); listadp && newadp;) {
  if (listadp->ad_lbn < newadp->ad_lbn) {
   listadp = ((listadp)->ad_next.tqe_next);
   continue;
  }
  do { if (((newadp)->ad_next.tqe_next) != ((void *)0)) (newadp)->ad_next.tqe_next->ad_next.tqe_prev = (newadp)->ad_next.tqe_prev; else (&inodedep->id_newinoupdt)->tqh_last = (newadp)->ad_next.tqe_prev; *(newadp)->ad_next.tqe_prev = (newadp)->ad_next.tqe_next; ((newadp)->ad_next.tqe_prev) = ((void *)-1); ((newadp)->ad_next.tqe_next) = ((void *)-1); } while (0);
  do { (newadp)->ad_next.tqe_prev = (listadp)->ad_next.tqe_prev; (newadp)->ad_next.tqe_next = (listadp); *(listadp)->ad_next.tqe_prev = (newadp); (listadp)->ad_next.tqe_prev = &(newadp)->ad_next.tqe_next; } while (0);
  if (listadp->ad_lbn == newadp->ad_lbn) {
   allocdirect_merge(&inodedep->id_inoupdt, newadp,
       listadp);
   listadp = newadp;
  }
  newadp = ((&inodedep->id_newinoupdt)->tqh_first);
 }
 while ((newadp = ((&inodedep->id_newinoupdt)->tqh_first)) != ((void *)0)) {
  do { if (((newadp)->ad_next.tqe_next) != ((void *)0)) (newadp)->ad_next.tqe_next->ad_next.tqe_prev = (newadp)->ad_next.tqe_prev; else (&inodedep->id_newinoupdt)->tqh_last = (newadp)->ad_next.tqe_prev; *(newadp)->ad_next.tqe_prev = (newadp)->ad_next.tqe_next; ((newadp)->ad_next.tqe_prev) = ((void *)-1); ((newadp)->ad_next.tqe_next) = ((void *)-1); } while (0);
  do { (newadp)->ad_next.tqe_next = ((void *)0); (newadp)->ad_next.tqe_prev = (&inodedep->id_inoupdt)->tqh_last; *(&inodedep->id_inoupdt)->tqh_last = (newadp); (&inodedep->id_inoupdt)->tqh_last = &(newadp)->ad_next.tqe_next; } while (0);
 }
}
int
softdep_fsync(struct vnode *vp)
{
 struct inodedep *inodedep;
 struct pagedep *pagedep;
 struct worklist *wk;
 struct diradd *dap;
 struct mount *mnt;
 struct vnode *pvp;
 struct inode *ip;
 struct inode *pip;
 struct buf *bp;
 struct fs *fs;
 struct proc *p = (__curcpu->ci_self)->ci_curproc;
 int error, flushparent;
 ufsino_t parentino;
 daddr_t lbn;
 ip = ((struct inode *)(vp)->v_data);
 fs = ip->inode_u.fs;
 (&lk)->lkt_spl = _splraise(5);
 if (inodedep_lookup(fs, ip->i_number, 0, &inodedep) == 0) {
  _splx((&lk)->lkt_spl);
  return (0);
 }
 if (((&inodedep->id_inowait)->lh_first) != ((void *)0) ||
     ((&inodedep->id_bufwait)->lh_first) != ((void *)0) ||
     ((&inodedep->id_inoupdt)->tqh_first) != ((void *)0) ||
     ((&inodedep->id_newinoupdt)->tqh_first) != ((void *)0)) {
  _splx((&lk)->lkt_spl);
  panic("softdep_fsync: pending ops");
 }
 for (error = 0, flushparent = 0; ; ) {
  if ((wk = ((&inodedep->id_pendinghd)->lh_first)) == ((void *)0))
   break;
  if (wk->wk_type != 10) {
   _splx((&lk)->lkt_spl);
   panic("softdep_fsync: Unexpected type %s",
       ((unsigned)(wk->wk_type) <= 13 ? softdep_typenames[wk->wk_type] : "???"));
  }
  dap = ((struct diradd *)(wk));
  if (dap->da_list.wk_state & 0x0080)
   pagedep = dap->da_un.dau_previous->dm_un.dmu_pagedep;
  else
   pagedep = dap->da_un.dau_pagedep;
  mnt = pagedep->pd_mnt;
  parentino = pagedep->pd_ino;
  lbn = pagedep->pd_lbn;
  if ((dap->da_list.wk_state & (0x0020 | 0x0004)) != 0x0004) {
   _splx((&lk)->lkt_spl);
   panic("softdep_fsync: dirty");
  }
  if ((dap->da_list.wk_state & 0x0010) ||
      (pagedep->pd_list.wk_state & 0x0800))
   flushparent = 1;
  else
   flushparent = 0;
  if (vp->v_flag & 0x0100)
   break;
  _splx((&lk)->lkt_spl);
  VOP_UNLOCK(vp, p);
  error = (*(mnt)->mnt_op->vfs_vget)(mnt, parentino, &pvp);
  vn_lock(vp, 0x0001UL | 0x2000UL, p);
  if (error != 0)
   return (error);
  pip = ((struct inode *)(pvp)->v_data);
  if (flushparent) {
   error = ((pip)->i_vtbl->iv_update)((pip), (1));
   if (error) {
    vput(pvp);
    return (error);
   }
   if (pagedep->pd_list.wk_state & 0x0800) {
    error = VOP_FSYNC(pvp, p->p_ucred, 1, p);
    if (error) {
     vput(pvp);
     return (error);
    }
   }
  }
  error = bread(pvp, lbn, fs->fs_bsize, &bp);
  if (error == 0) {
   bp->b_bcount = (((lbn) >= 12 || ((((pip))->i_ump->um_fstype == 1) ? ((pip))->dinode_u.ffs1_din->di_size : ((pip))->dinode_u.ffs2_din->di_size) >= ((lbn) + 1) << (fs)->fs_bshift) ? (u_int64_t)(fs)->fs_bsize : ((((((((((pip))->i_ump->um_fstype == 1) ? ((pip))->dinode_u.ffs1_din->di_size : ((pip))->dinode_u.ffs2_din->di_size)) & (fs)->fs_qbmask)) + (fs)->fs_qfmask) & (fs)->fs_fmask)));
   error = bwrite(bp);
  } else
   brelse(bp);
  vput(pvp);
  if (error != 0)
   return (error);
  (&lk)->lkt_spl = _splraise(5);
  if (inodedep_lookup(fs, ip->i_number, 0, &inodedep) == 0)
   break;
 }
 _splx((&lk)->lkt_spl);
 return (0);
}
void
softdep_fsync_mountdev(struct vnode *vp, int waitfor)
{
 struct buf *bp, *nbp;
 struct worklist *wk;
 if (!vn_isdisk(vp, ((void *)0)))
  panic("softdep_fsync_mountdev: vnode not a disk");
 (&lk)->lkt_spl = _splraise(5);
 for (bp = ((&vp->v_dirtyblkhd)->lh_first); bp; bp = nbp) {
  nbp = ((bp)->b_vnbufs.le_next);
  do { if (splassert_ctl > 0) { splassert_check(5, __func__); } } while (0);
  if (bp->b_flags & 0x00000010)
   continue;
  if ((bp->b_flags & 0x00000080) == 0) {
   _splx((&lk)->lkt_spl);
   panic("softdep_fsync_mountdev: not dirty");
  }
  if ((wk = ((&bp->b_dep)->lh_first)) == ((void *)0) ||
      wk->wk_type != 3) {
   continue;
  }
  bufcache_take(bp);
  buf_acquire(bp);
  _splx((&lk)->lkt_spl);
  (void) bawrite(bp);
  (&lk)->lkt_spl = _splraise(5);
  nbp = ((&vp->v_dirtyblkhd)->lh_first);
 }
 if (waitfor == 1)
  drain_output(vp, 1);
 _splx((&lk)->lkt_spl);
}
int
softdep_sync_metadata(struct vop_fsync_args *ap)
{
 struct vnode *vp = ap->a_vp;
 struct pagedep *pagedep;
 struct allocdirect *adp;
 struct allocindir *aip;
 struct buf *bp, *nbp;
 struct worklist *wk;
 int i, gotit, error, waitfor;
 if (!vn_isdisk(vp, ((void *)0))) {
  if (!((vp)->v_mount->mnt_flag & 0x04000000))
   return (0);
 } else
  if (vp->v_un.vu_specinfo->si_mountpoint == ((void *)0) ||
      (vp->v_un.vu_specinfo->si_mountpoint->mnt_flag & 0x04000000) == 0)
   return (0);
 (&lk)->lkt_spl = _splraise(5);
 if ((error = flush_inodedep_deps(((struct inode *)(vp)->v_data)->inode_u.fs, ((struct inode *)(vp)->v_data)->i_number))) {
  _splx((&lk)->lkt_spl);
  return (error);
 }
 waitfor = 2;
top:
 drain_output(vp, 1);
 bp = ((&vp->v_dirtyblkhd)->lh_first);
 gotit = getdirtybuf(bp, 1);
 if (gotit == 0) {
  _splx((&lk)->lkt_spl);
  return (0);
 } else if (gotit == -1)
  goto top;
loop:
 for((wk) = ((&bp->b_dep)->lh_first); (wk)!= ((void *)0); (wk) = ((wk)->wk_list.le_next)) {
  switch (wk->wk_type) {
  case 4:
   adp = ((struct allocdirect *)(wk));
   if (adp->ad_list.wk_state & 0x0008)
    break;
   nbp = adp->ad_buf;
   gotit = getdirtybuf(nbp, waitfor);
   if (gotit == 0)
    break;
   else if (gotit == -1)
    goto loop;
   _splx((&lk)->lkt_spl);
   if (waitfor == 2) {
    bawrite(nbp);
   } else if ((error = VOP_BWRITE(nbp)) != 0) {
    bawrite(bp);
    return (error);
   }
   (&lk)->lkt_spl = _splraise(5);
   break;
  case 6:
   aip = ((struct allocindir *)(wk));
   if (aip->ai_list.wk_state & 0x0008)
    break;
   nbp = aip->ai_buf;
   gotit = getdirtybuf(nbp, waitfor);
   if (gotit == 0)
    break;
   else if (gotit == -1)
    goto loop;
   _splx((&lk)->lkt_spl);
   if (waitfor == 2) {
    bawrite(nbp);
   } else if ((error = VOP_BWRITE(nbp)) != 0) {
    bawrite(bp);
    return (error);
   }
   (&lk)->lkt_spl = _splraise(5);
   break;
  case 5:
  restart:
   for((aip) = ((&((struct indirdep *)(wk))->ir_deplisthd)->lh_first); (aip)!= ((void *)0); (aip) = ((aip)->ai_next.le_next)) {
    if (aip->ai_list.wk_state & 0x0008)
     continue;
    nbp = aip->ai_buf;
    if (getdirtybuf(nbp, 1) <= 0)
     goto restart;
    _splx((&lk)->lkt_spl);
    if ((error = VOP_BWRITE(nbp)) != 0) {
     bawrite(bp);
     return (error);
    }
    (&lk)->lkt_spl = _splraise(5);
    goto restart;
   }
   break;
  case 1:
   if ((error = flush_inodedep_deps(((struct inodedep *)(wk))->id_fs,
       ((struct inodedep *)(wk))->id_ino)) != 0) {
    _splx((&lk)->lkt_spl);
    bawrite(bp);
    return (error);
   }
   break;
  case 0:
   pagedep = ((struct pagedep *)(wk));
   for (i = 0; i < 6; i++) {
    if (((&pagedep->pd_diraddhd[i])->lh_first) ==
        ((void *)0))
     continue;
    if ((error =
        flush_pagedep_deps(vp, pagedep->pd_mnt,
      &pagedep->pd_diraddhd[i]))) {
     _splx((&lk)->lkt_spl);
     bawrite(bp);
     return (error);
    }
   }
   break;
  case 11:
   nbp = ((struct mkdir *)(wk))->md_buf;
   gotit = getdirtybuf(nbp, waitfor);
   if (gotit == 0)
    break;
   else if (gotit == -1)
    goto loop;
   _splx((&lk)->lkt_spl);
   if (waitfor == 2) {
    bawrite(nbp);
   } else if ((error = VOP_BWRITE(nbp)) != 0) {
    bawrite(bp);
    return (error);
   }
   (&lk)->lkt_spl = _splraise(5);
   break;
  case 3:
   nbp = ((struct bmsafemap *)(wk))->sm_buf;
   gotit = getdirtybuf(nbp, waitfor);
   if (gotit == 0)
    break;
   else if (gotit == -1)
    goto loop;
   _splx((&lk)->lkt_spl);
   if (waitfor == 2) {
    bawrite(nbp);
   } else if ((error = VOP_BWRITE(nbp)) != 0) {
    bawrite(bp);
    return (error);
   }
   (&lk)->lkt_spl = _splraise(5);
   break;
  default:
   _splx((&lk)->lkt_spl);
   panic("softdep_sync_metadata: Unknown type %s",
       ((unsigned)(wk->wk_type) <= 13 ? softdep_typenames[wk->wk_type] : "???"));
  }
 }
 do {
  nbp = ((bp)->b_vnbufs.le_next);
  gotit = getdirtybuf(nbp, 1);
 } while (gotit == -1);
 _splx((&lk)->lkt_spl);
 bawrite(bp);
 (&lk)->lkt_spl = _splraise(5);
 if (nbp != ((void *)0)) {
  bp = nbp;
  goto loop;
 }
 if (waitfor == 2) {
  waitfor = 1;
  _splx((&lk)->lkt_spl);
  (&lk)->lkt_spl = _splraise(5);
  goto top;
 }
 drain_output(vp, 1);
 if (((&vp->v_dirtyblkhd)->lh_first) == ((void *)0)) {
  _splx((&lk)->lkt_spl);
  return (0);
 }
 _splx((&lk)->lkt_spl);
 if (vn_isdisk(vp, ((void *)0)) &&
     vp->v_un.vu_specinfo->si_mountpoint && !VOP_ISLOCKED(vp) &&
     (error = (*(vp->v_un.vu_specinfo->si_mountpoint)->mnt_op->vfs_sync)(vp->v_un.vu_specinfo->si_mountpoint, 1, ap->a_cred, ap->a_p)) != 0)
  return (error);
 return (0);
}
 int
flush_inodedep_deps(struct fs *fs, ufsino_t ino)
{
 struct inodedep *inodedep;
 struct allocdirect *adp;
 int gotit, error, waitfor;
 struct buf *bp;
 do { if (splassert_ctl > 0) { splassert_check(5, __func__); } } while (0);
 for (waitfor = 2; ; ) {
 retry_ino:
  _splx((&lk)->lkt_spl);
  (&lk)->lkt_spl = _splraise(5);
  if (inodedep_lookup(fs, ino, 0, &inodedep) == 0)
   return (0);
  for((adp) = ((&inodedep->id_inoupdt)->tqh_first); (adp) != ((void *)0); (adp) = ((adp)->ad_next.tqe_next)) {
   if (adp->ad_list.wk_state & 0x0008)
    continue;
   bp = adp->ad_buf;
   gotit = getdirtybuf(bp, waitfor);
   if (gotit == 0) {
    if (waitfor == 2)
     continue;
    break;
   } else if (gotit == -1)
    goto retry_ino;
   _splx((&lk)->lkt_spl);
   if (waitfor == 2) {
    bawrite(bp);
   } else if ((error = VOP_BWRITE(bp)) != 0) {
    (&lk)->lkt_spl = _splraise(5);
    return (error);
   }
   (&lk)->lkt_spl = _splraise(5);
   break;
  }
  if (adp != ((void *)0))
   continue;
 retry_newino:
  for((adp) = ((&inodedep->id_newinoupdt)->tqh_first); (adp) != ((void *)0); (adp) = ((adp)->ad_next.tqe_next)) {
   if (adp->ad_list.wk_state & 0x0008)
    continue;
   bp = adp->ad_buf;
   gotit = getdirtybuf(bp, waitfor);
   if (gotit == 0) {
    if (waitfor == 2)
     continue;
    break;
   } else if (gotit == -1)
    goto retry_newino;
   _splx((&lk)->lkt_spl);
   if (waitfor == 2) {
    bawrite(bp);
   } else if ((error = VOP_BWRITE(bp)) != 0) {
    (&lk)->lkt_spl = _splraise(5);
    return (error);
   }
   (&lk)->lkt_spl = _splraise(5);
   break;
  }
  if (adp != ((void *)0))
   continue;
  if (waitfor == 1)
   break;
  waitfor = 1;
 }
 if (inodedep_lookup(fs, ino, 0, &inodedep) != 0)
  (void) free_inodedep(inodedep);
 return (0);
}
 int
flush_pagedep_deps(struct vnode *pvp, struct mount *mp,
    struct diraddhd *diraddhdp)
{
 struct proc *p = (__curcpu->ci_self)->ci_curproc;
 struct worklist *wk;
 struct inodedep *inodedep;
 struct ufsmount *ump;
 struct diradd *dap;
 struct vnode *vp;
 int gotit, error = 0;
 struct buf *bp;
 ufsino_t inum;
 do { if (splassert_ctl > 0) { splassert_check(5, __func__); } } while (0);
 ump = ((struct ufsmount *)((mp)->mnt_data));
 while ((dap = ((diraddhdp)->lh_first)) != ((void *)0)) {
  if (dap->da_list.wk_state & 0x0010) {
   _splx((&lk)->lkt_spl);
   if ((error = ((((struct inode *)(pvp)->v_data))->i_vtbl->iv_update)((((struct inode *)(pvp)->v_data)), (1))))
    break;
   (&lk)->lkt_spl = _splraise(5);
   if (dap != ((diraddhdp)->lh_first))
    continue;
   if (dap->da_list.wk_state & 0x0010) {
    _splx((&lk)->lkt_spl);
    panic("flush_pagedep_deps: MKDIR_PARENT");
   }
  }
  inum = dap->da_newinum;
  if (dap->da_list.wk_state & 0x0020) {
   _splx((&lk)->lkt_spl);
   if ((error = (*(mp)->mnt_op->vfs_vget)(mp, inum, &vp)) != 0)
    break;
   if ((error=VOP_FSYNC(vp, p->p_ucred, 2, p)) ||
       (error=VOP_FSYNC(vp, p->p_ucred, 2, p))) {
    vput(vp);
    break;
   }
   drain_output(vp, 0);
   for (;;) {
    error = 0;
    (&lk)->lkt_spl = _splraise(5);
    bp = incore(vp, 0);
    if (bp == ((void *)0)) {
     _splx((&lk)->lkt_spl);
     break;
    }
    for((wk) = ((&bp->b_dep)->lh_first); (wk)!= ((void *)0); (wk) = ((wk)->wk_list.le_next))
     if (wk->wk_type == 11)
      break;
    if (wk) {
     gotit = getdirtybuf(bp, 1);
     _splx((&lk)->lkt_spl);
     if (gotit == -1)
      continue;
     if (gotit && (error = bwrite(bp)) != 0)
      break;
    } else
     _splx((&lk)->lkt_spl);
    break;
   }
   vput(vp);
   if (error)
    break;
   (&lk)->lkt_spl = _splraise(5);
   if (dap != ((diraddhdp)->lh_first))
    continue;
   if (dap->da_list.wk_state & 0x0020) {
    _splx((&lk)->lkt_spl);
    panic("flush_pagedep_deps: MKDIR_BODY");
   }
  }
  if (inodedep_lookup(ump->ufsmount_u.fs, inum, 0, &inodedep) == 0) {
   _splx((&lk)->lkt_spl);
   panic("flush_pagedep_deps: lost inode");
  }
 retry:
  if ((inodedep->id_list.wk_state & 0x0008) == 0) {
   bp = inodedep->id_buf;
   gotit = getdirtybuf(bp, 1);
   if (gotit == -1)
    goto retry;
   _splx((&lk)->lkt_spl);
   if (gotit && (error = bwrite(bp)) != 0)
    break;
   (&lk)->lkt_spl = _splraise(5);
   if (dap != ((diraddhdp)->lh_first))
    continue;
  }
  _splx((&lk)->lkt_spl);
  if ((error = bread(ump->um_devvp,
      ((((daddr_t)(((((daddr_t)(ump->ufsmount_u.fs)->fs_fpg * (((inum) / (ump->ufsmount_u.fs)->fs_ipg))) + (ump->ufsmount_u.fs)->fs_cgoffset * ((((inum) / (ump->ufsmount_u.fs)->fs_ipg)) & ~((ump->ufsmount_u.fs)->fs_cgmask))) + (ump->ufsmount_u.fs)->fs_iblkno) + ((((((inum) % (ump->ufsmount_u.fs)->fs_ipg) / ((ump->ufsmount_u.fs)->fs_inopb))) << ((ump->ufsmount_u.fs))->fs_fragshift))))) << (ump->ufsmount_u.fs)->fs_fsbtodb),
      (int)ump->ufsmount_u.fs->fs_bsize, &bp)) != 0) {
       brelse(bp);
   break;
  }
  if ((error = bwrite(bp)) != 0)
   break;
  (&lk)->lkt_spl = _splraise(5);
  if (dap == ((diraddhdp)->lh_first)) {
   _splx((&lk)->lkt_spl);
   panic("flush_pagedep_deps: flush failed");
  }
 }
 if (error)
  (&lk)->lkt_spl = _splraise(5);
 return (error);
}
int
softdep_slowdown(struct vnode *vp)
{
 int max_softdeps_hard;
 max_softdeps_hard = max_softdeps * 11 / 10;
 if (num_dirrem < max_softdeps_hard / 2 &&
     num_inodedep < max_softdeps_hard)
  return (0);
 stat_sync_limit_hit += 1;
 return (1);
}
 int
request_cleanup(int resource, int islocked)
{
 struct proc *p = (__curcpu->ci_self)->ci_curproc;
 int s;
 if (p == filesys_syncer || (p->p_flag & 0x10000000))
  return (0);
 if (num_on_worklist > max_softdeps / 10) {
  atomic_setbits_int(&p->p_flag, 0x10000000);
  if (islocked)
   _splx((&lk)->lkt_spl);
  process_worklist_item(((void *)0), 0x0040UL);
  process_worklist_item(((void *)0), 0x0040UL);
  atomic_clearbits_int(&p->p_flag, 0x10000000);
  stat_worklist_push += 2;
  if (islocked)
   (&lk)->lkt_spl = _splraise(5);
  return(1);
 }
 if (speedup_syncer())
  return(0);
 switch (resource) {
 case 1:
  stat_ino_limit_push += 1;
  req_clear_inodedeps += 1;
  stat_countp = &stat_ino_limit_hit;
  break;
 case 2:
  stat_blk_limit_push += 1;
  req_clear_remove += 1;
  stat_countp = &stat_blk_limit_hit;
  break;
 default:
  if (islocked)
   _splx((&lk)->lkt_spl);
  panic("request_cleanup: unknown type");
 }
 if (islocked == 0)
  (&lk)->lkt_spl = _splraise(5);
 proc_waiting += 1;
 if (!((&proc_waiting_timeout)->to_flags & 2))
  timeout_add(&proc_waiting_timeout, tickdelay > 2 ? tickdelay : 2);
 s = ((&lk)->lkt_spl);
 (void) tsleep((caddr_t)&proc_waiting, 40, "softupdate", 0);
 (&lk)->lkt_spl = (s);
 proc_waiting -= 1;
 if (islocked == 0)
  _splx((&lk)->lkt_spl);
 return (1);
}
void
pause_timer(void *arg)
{
 *stat_countp += 1;
 wakeup_n((&proc_waiting), 1);
 if (proc_waiting > 0)
  timeout_add(&proc_waiting_timeout, tickdelay > 2 ? tickdelay : 2);
}
 void
clear_remove(struct proc *p)
{
 struct pagedep_hashhead *pagedephd;
 struct pagedep *pagedep;
 static int next = 0;
 struct mount *mp;
 struct vnode *vp;
 int error, cnt;
 ufsino_t ino;
 (&lk)->lkt_spl = _splraise(5);
 for (cnt = 0; cnt <= pagedep_hash; cnt++) {
  pagedephd = &pagedep_hashtbl[next++];
  if (next > pagedep_hash)
   next = 0;
  for((pagedep) = ((pagedephd)->lh_first); (pagedep)!= ((void *)0); (pagedep) = ((pagedep)->pd_hash.le_next)) {
   if (((&pagedep->pd_dirremhd)->lh_first) == ((void *)0))
    continue;
   mp = pagedep->pd_mnt;
   ino = pagedep->pd_ino;
   _splx((&lk)->lkt_spl);
   if ((error = (*(mp)->mnt_op->vfs_vget)(mp, ino, &vp)) != 0) {
    softdep_error("clear_remove: vget", error);
    return;
   }
   if ((error = VOP_FSYNC(vp, p->p_ucred, 2, p)))
    softdep_error("clear_remove: fsync", error);
   drain_output(vp, 0);
   vput(vp);
   return;
  }
 }
 _splx((&lk)->lkt_spl);
}
 void
clear_inodedeps(struct proc *p)
{
 struct inodedep_hashhead *inodedephd;
 struct inodedep *inodedep = ((void *)0);
 static int next = 0;
 struct mount *mp;
 struct vnode *vp;
 struct fs *fs;
 int error, cnt;
 ufsino_t firstino, lastino, ino;
 (&lk)->lkt_spl = _splraise(5);
 for (cnt = 0; cnt <= inodedep_hash; cnt++) {
  inodedephd = &inodedep_hashtbl[next++];
  if (next > inodedep_hash)
   next = 0;
  if ((inodedep = ((inodedephd)->lh_first)) != ((void *)0))
   break;
 }
 if (inodedep == ((void *)0)) {
  _splx((&lk)->lkt_spl);
  return;
 }
 fs = inodedep->id_fs;
 for((mp) = ((&mountlist)->tqh_first); (mp) != ((void *)0); (mp) = ((mp)->mnt_list.tqe_next))
  if ((mp->mnt_flag & 0x04000000) && fs == ((struct ufsmount *)((mp)->mnt_data))->ufsmount_u.fs)
   break;
 firstino = inodedep->id_ino & ~(((fs)->fs_inopb) - 1);
 for (lastino = firstino + ((fs)->fs_inopb) - 1; lastino > firstino; lastino--)
  if (inodedep_lookup(fs, lastino, 0, &inodedep) != 0)
   break;
 for (ino = firstino; ino <= lastino; ino++) {
  if (inodedep_lookup(fs, ino, 0, &inodedep) == 0)
   continue;
  _splx((&lk)->lkt_spl);
  if ((error = (*(mp)->mnt_op->vfs_vget)(mp, ino, &vp)) != 0) {
   softdep_error("clear_inodedeps: vget", error);
   return;
  }
  if (ino == lastino) {
   if ((error = VOP_FSYNC(vp, p->p_ucred, 1, p)))
    softdep_error("clear_inodedeps: fsync1", error);
  } else {
   if ((error = VOP_FSYNC(vp, p->p_ucred, 2, p)))
    softdep_error("clear_inodedeps: fsync2", error);
   drain_output(vp, 0);
  }
  vput(vp);
  (&lk)->lkt_spl = _splraise(5);
 }
 _splx((&lk)->lkt_spl);
}
int
softdep_count_dependencies(struct buf *bp, int wantcount, int islocked)
{
 struct worklist *wk;
 struct inodedep *inodedep;
 struct indirdep *indirdep;
 struct allocindir *aip;
 struct pagedep *pagedep;
 struct diradd *dap;
 int i, retval;
 retval = 0;
 if (!islocked)
  (&lk)->lkt_spl = _splraise(5);
 for((wk) = ((&bp->b_dep)->lh_first); (wk)!= ((void *)0); (wk) = ((wk)->wk_list.le_next)) {
  switch (wk->wk_type) {
  case 1:
   inodedep = ((struct inodedep *)(wk));
   if ((inodedep->id_list.wk_state & 0x0008) == 0) {
    retval += 1;
    if (!wantcount)
     goto out;
   }
   if (((&inodedep->id_inoupdt)->tqh_first)) {
    retval += 1;
    if (!wantcount)
     goto out;
   }
   continue;
  case 5:
   indirdep = ((struct indirdep *)(wk));
   for((aip) = ((&indirdep->ir_deplisthd)->lh_first); (aip)!= ((void *)0); (aip) = ((aip)->ai_next.le_next)) {
    retval += 1;
    if (!wantcount)
     goto out;
   }
   continue;
  case 0:
   pagedep = ((struct pagedep *)(wk));
   for (i = 0; i < 6; i++) {
    for((dap) = ((&pagedep->pd_diraddhd[i])->lh_first); (dap)!= ((void *)0); (dap) = ((dap)->da_pdlist.le_next)) {
     retval += 1;
     if (!wantcount)
      goto out;
    }
   }
   continue;
  case 3:
  case 4:
  case 6:
  case 11:
   continue;
  default:
   if (!islocked)
    _splx((&lk)->lkt_spl);
   panic("softdep_check_for_rollback: Unexpected type %s",
       ((unsigned)(wk->wk_type) <= 13 ? softdep_typenames[wk->wk_type] : "???"));
  }
 }
out:
 if (!islocked)
  _splx((&lk)->lkt_spl);
 return retval;
}
 int
getdirtybuf(struct buf *bp, int waitfor)
{
 int s;
 if (bp == ((void *)0))
  return (0);
 do { if (splassert_ctl > 0) { splassert_check(5, __func__); } } while (0);
 if (bp->b_flags & 0x00000010) {
  if (waitfor != 1)
   return (0);
  bp->b_flags |= 0x00010000;
  s = ((&lk)->lkt_spl);
  tsleep((caddr_t)bp, 16 + 1, "sdsdty", 0);
  (&lk)->lkt_spl = (s);
  return (-1);
 }
 if ((bp->b_flags & 0x00000080) == 0)
  return (0);
 bufcache_take(bp);
 buf_acquire(bp);
 return (1);
}
 void
drain_output(struct vnode *vp, int islocked)
{
 int s;
 if (!islocked)
  (&lk)->lkt_spl = _splraise(5);
 do { if (splassert_ctl > 0) { splassert_check(5, __func__); } } while (0);
 while (vp->v_numoutput) {
  vp->v_bioflag |= 0x0001;
  s = ((&lk)->lkt_spl);
  tsleep((caddr_t)&vp->v_numoutput, 16 + 1, "drain_output", 0);
  (&lk)->lkt_spl = (s);
 }
 if (!islocked)
  _splx((&lk)->lkt_spl);
}
void
softdep_deallocate_dependencies(struct buf *bp)
{
 if ((bp->b_flags & 0x00000400) == 0)
  panic("softdep_deallocate_dependencies: dangling deps");
 softdep_error(bp->b_vp->v_mount->mnt_stat.f_mntonname, bp->b_error);
 panic("softdep_deallocate_dependencies: unrecovered I/O error");
}
void
softdep_error(char *func, int error)
{
 printf("%s: got error %d while accessing filesystem\n", func, error);
}
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
void db_stack_trace_print(db_expr_t, int, db_expr_t, char *,
    int (*)(const char *, ...));
db_addr_t db_disasm(db_addr_t, boolean_t);
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
void
softdep_print(struct buf *bp, int full,
    int (*pr)(const char *, ...) __attribute__((__format__(__kprintf__,1,2))))
{
 struct worklist *wk;
 (*pr)("  deps:\n");
 for((wk) = ((&bp->b_dep)->lh_first); (wk)!= ((void *)0); (wk) = ((wk)->wk_list.le_next))
  worklist_print(wk, full, pr);
}
void
worklist_print(struct worklist *wk, int full,
    int (*pr)(const char *, ...) __attribute__((__format__(__kprintf__,1,2))))
{
 struct pagedep *pagedep;
 struct inodedep *inodedep;
 struct newblk *newblk;
 struct bmsafemap *bmsafemap;
 struct allocdirect *adp;
 struct indirdep *indirdep;
 struct allocindir *aip;
 struct freefrag *freefrag;
 struct freeblks *freeblks;
 struct freefile *freefile;
 struct diradd *dap;
 struct mkdir *mkdir;
 struct dirrem *dirrem;
 struct newdirblk *newdirblk;
 char prefix[33];
 int i;
 for (prefix[i = 2 * (((16)<(full))?(16):(full))] = '\0'; i--; prefix[i] = ' ')
  ;
 (*pr)("%s%s(%p) state %b\n%s", prefix, ((unsigned)(wk->wk_type) <= 13 ? softdep_typenames[wk->wk_type] : "???"), wk,
     wk->wk_state, "\020\01ATTACHED\02UNDONE\03COMPLETE\04DEPCOMPLETE" "\05MKDIR_PARENT\06MKDIR_BODY\07RMDIR\010DIRCHG\011GOINGAWAY" "\012IOSTARTED\013SPACECOUNTED\014NEWBLOCK\016UFS1FMT\020ONWORKLIST", prefix);
 switch (wk->wk_type) {
 case 0:
  pagedep = ((struct pagedep *)(wk));
  (*pr)("mount %p ino %u lbn %lld\n", pagedep->pd_mnt,
      pagedep->pd_ino, (long long)pagedep->pd_lbn);
  break;
 case 1:
  inodedep = ((struct inodedep *)(wk));
  (*pr)("fs %p ino %u nlinkdelta %u dino %p\n"
      "%s  bp %p savsz %lld\n", inodedep->id_fs,
      inodedep->id_ino, inodedep->id_nlinkdelta,
      inodedep->id_un.idu_savedino1,
      prefix, inodedep->id_buf, inodedep->id_savedsize);
  break;
 case 2:
  newblk = ((struct newblk *)(wk));
  (*pr)("fs %p newblk %lld state %d bmsafemap %p\n",
      newblk->nb_fs, (long long)newblk->nb_newblkno,
      newblk->nb_state, newblk->nb_bmsafemap);
  break;
 case 3:
  bmsafemap = ((struct bmsafemap *)(wk));
  (*pr)("buf %p\n", bmsafemap->sm_buf);
  break;
 case 4:
  adp = ((struct allocdirect *)(wk));
  (*pr)("lbn %lld newlbk %lld oldblk %lld newsize %ld olsize "
      "%ld\n%s  bp %p inodedep %p freefrag %p\n",
      (long long)adp->ad_lbn, (long long)adp->ad_newblkno,
      (long long)adp->ad_oldblkno, adp->ad_newsize,
      adp->ad_oldsize,
      prefix, adp->ad_buf, adp->ad_inodedep, adp->ad_freefrag);
  break;
 case 5:
  indirdep = ((struct indirdep *)(wk));
  (*pr)("savedata %p savebp %p\n", indirdep->ir_saveddata,
      indirdep->ir_savebp);
  break;
 case 6:
  aip = ((struct allocindir *)(wk));
  (*pr)("off %d newblk %lld oldblk %lld freefrag %p\n"
      "%s  indirdep %p buf %p\n", aip->ai_offset,
      (long long)aip->ai_newblkno, (long long)aip->ai_oldblkno,
      aip->ai_freefrag, prefix, aip->ai_indirdep, aip->ai_buf);
  break;
 case 7:
  freefrag = ((struct freefrag *)(wk));
  (*pr)("vnode %p mp %p blkno %lld fsize %ld ino %u\n",
      freefrag->ff_devvp, freefrag->ff_mnt,
      (long long)freefrag->ff_blkno, freefrag->ff_fragsize,
      freefrag->ff_inum);
  break;
 case 8:
  freeblks = ((struct freeblks *)(wk));
  (*pr)("previno %u devvp %p mp %p oldsz %lld newsz %lld\n"
      "%s  chkcnt %d uid %d\n", freeblks->fb_previousinum,
      freeblks->fb_devvp, freeblks->fb_mnt, freeblks->fb_oldsize,
      freeblks->fb_newsize,
      prefix, freeblks->fb_chkcnt, freeblks->fb_uid);
  break;
 case 9:
  freefile = ((struct freefile *)(wk));
  (*pr)("mode %x oldino %u vnode %p mp %p\n", freefile->fx_mode,
      freefile->fx_oldinum, freefile->fx_devvp, freefile->fx_mnt);
  break;
 case 10:
  dap = ((struct diradd *)(wk));
  (*pr)("off %d ino %u da_un %p\n", dap->da_offset,
      dap->da_newinum, dap->da_un.dau_previous);
  break;
 case 11:
  mkdir = ((struct mkdir *)(wk));
  (*pr)("diradd %p bp %p\n", mkdir->md_diradd, mkdir->md_buf);
  break;
 case 12:
  dirrem = ((struct dirrem *)(wk));
  (*pr)("mp %p ino %u dm_un %p\n", dirrem->dm_mnt,
      dirrem->dm_oldinum, dirrem->dm_un.dmu_pagedep);
  break;
 case 13:
  newdirblk = ((struct newdirblk *)(wk));
  (*pr)("pagedep %p\n", newdirblk->db_pagedep);
  break;
 }
}
