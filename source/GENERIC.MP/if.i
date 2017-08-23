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
int sosetopt(struct socket *so, int level, int optname,
     struct mbuf *m0);
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
struct mbuf;
struct sockaddr;
struct socket;
struct domain;
struct proc;
struct protosw {
 short pr_type;
 struct domain *pr_domain;
 short pr_protocol;
 short pr_flags;
 int (*pr_input)(struct mbuf **, int *, int, int);
 int (*pr_output)(struct mbuf *, struct socket *, struct sockaddr *,
      struct mbuf *);
 void (*pr_ctlinput)(int, struct sockaddr *, u_int, void *);
 int (*pr_ctloutput)(int, struct socket *, int, int, struct mbuf *);
 int (*pr_usrreq)(struct socket *, int, struct mbuf *,
      struct mbuf *, struct mbuf *, struct proc *);
 int (*pr_attach)(struct socket *, int);
 void (*pr_init)(void);
 void (*pr_fasttimo)(void);
 void (*pr_slowtimo)(void);
 void (*pr_drain)(void);
 int (*pr_sysctl)(int *, u_int, void *, size_t *, void *, size_t);
};
struct sockaddr;
struct protosw *pffindproto(int, int, int);
struct protosw *pffindtype(int, int);
void pfctlinput(int, struct sockaddr *);
extern u_char ip_protox[];
extern struct protosw inetsw[];
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
struct mbuf;
struct ifnet;
struct domain {
 int dom_family;
 char *dom_name;
 void (*dom_init)(void);
 int (*dom_externalize)(struct mbuf *, socklen_t, int);
 void (*dom_dispose)(struct mbuf *);
 struct protosw *dom_protosw, *dom_protoswNPROTOSW;
 unsigned int dom_rtkeylen;
 unsigned int dom_rtoffset;
 unsigned int dom_maxplen;
 void *(*dom_ifattach)(struct ifnet *);
 void (*dom_ifdetach)(struct ifnet *, void *);
};
extern struct domain *domains[];
void domaininit(void);
extern struct domain inetdomain;
extern struct domain inet6domain;
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
struct mdproc {
 struct trapframe64 *md_tf;
 struct fpstate64 *md_fpstate;
 volatile int md_astpending;
};
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
struct whitepaths;
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
 struct whitepaths *ps_pledgepaths;
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
void random_start(void);
void enqueue_randomness(unsigned int, unsigned int);
void suspend_randomness(void);
void resume_randomness(char *, size_t);
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
struct sockaddr_dl {
 u_char sdl_len;
 u_char sdl_family;
 u_int16_t sdl_index;
 u_char sdl_type;
 u_char sdl_nlen;
 u_char sdl_alen;
 u_char sdl_slen;
 char sdl_data[24];
};
static inline struct sockaddr_dl *
satosdl(struct sockaddr *sa)
{
 return ((struct sockaddr_dl *)(sa));
}
static inline struct sockaddr *
sdltosa(struct sockaddr_dl *sdl)
{
 return ((struct sockaddr *)(sdl));
}
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
extern int netisr;
extern struct task if_input_task_locked;
void arpintr(void);
void ipintr(void);
void ip6intr(void);
void pppintr(void);
void bridgeintr(void);
void pppoeintr(void);
void switchintr(void);
void pfsyncintr(void);
void pipexintr(void);
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
void in6_get_rand_ifid(struct ifnet *, struct in6_addr *);
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
int sysctl_mq(int *, u_int, void *, size_t *, void *, size_t,
     struct mbuf_queue *);
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
struct igmp {
 u_int8_t igmp_type;
 u_int8_t igmp_code;
 u_int16_t igmp_cksum;
 struct in_addr igmp_group;
};
void rti_delete(struct ifnet *);
typedef u_int32_t vifbitmap_t;
typedef u_int16_t vifi_t;
struct vifctl {
 vifi_t vifc_vifi;
 u_int8_t vifc_flags;
 u_int8_t vifc_threshold;
 u_int32_t vifc_rate_limit;
 struct in_addr vifc_lcl_addr;
 struct in_addr vifc_rmt_addr;
};
struct mfcctl {
 struct in_addr mfcc_origin;
 struct in_addr mfcc_mcastgrp;
 vifi_t mfcc_parent;
 u_int8_t mfcc_ttls[32];
};
struct mfcctl2 {
 struct in_addr mfcc_origin;
 struct in_addr mfcc_mcastgrp;
 vifi_t mfcc_parent;
 u_int8_t mfcc_ttls[32];
 u_int8_t mfcc_flags[32];
 struct in_addr mfcc_rp;
};
struct mfcinfo {
 struct in_addr mfc_origin;
 struct in_addr mfc_mcastgrp;
 vifi_t mfc_parent;
 u_long mfc_pkt_cnt;
 u_long mfc_byte_cnt;
 u_int8_t mfc_ttls[32];
};
struct vifinfo {
 vifi_t v_vifi;
 u_int8_t v_flags;
 u_int8_t v_threshold;
 struct in_addr v_lcl_addr;
 struct in_addr v_rmt_addr;
 u_long v_pkt_in;
 u_long v_pkt_out;
 u_long v_bytes_in;
 u_long v_bytes_out;
};
struct sioc_sg_req {
 struct in_addr src;
 struct in_addr grp;
 u_long pktcnt;
 u_long bytecnt;
 u_long wrong_if;
};
struct sioc_vif_req {
 vifi_t vifi;
 u_long icount;
 u_long ocount;
 u_long ibytes;
 u_long obytes;
};
struct mrtstat {
 u_long mrts_mfc_lookups;
 u_long mrts_mfc_misses;
 u_long mrts_upcalls;
 u_long mrts_no_route;
 u_long mrts_bad_tunnel;
 u_long mrts_cant_tunnel;
 u_long mrts_wrong_if;
 u_long mrts_upq_ovflw;
 u_long mrts_cache_cleanups;
 u_long mrts_drop_sel;
 u_long mrts_q_overflow;
 u_long mrts_pkt2large;
 u_long mrts_upq_sockfull;
};
struct vif {
 vifi_t v_id;
 u_int8_t v_flags;
 u_int8_t v_threshold;
 struct in_addr v_lcl_addr;
 struct in_addr v_rmt_addr;
 u_long v_pkt_in;
 u_long v_pkt_out;
 u_long v_bytes_in;
 u_long v_bytes_out;
};
struct mfc {
 vifi_t mfc_parent;
 u_long mfc_pkt_cnt;
 u_long mfc_byte_cnt;
 u_long mfc_wrong_if;
 uint8_t mfc_ttl;
 uint8_t mfc_flags;
 struct in_addr mfc_rp;
 u_long mfc_expire;
};
struct igmpmsg {
 u_int32_t unused1;
 u_int32_t unused2;
 u_int8_t im_msgtype;
 u_int8_t im_mbz;
 u_int8_t im_vif;
 u_int8_t unused3;
 struct in_addr im_src, im_dst;
};
int ip_mrouter_set(struct socket *, int, struct mbuf *);
int ip_mrouter_get(struct socket *, int, struct mbuf *);
int mrt_ioctl(struct socket *, u_long, caddr_t);
int mrt_sysctl_vif(void *, size_t *);
int mrt_sysctl_mfc(void *, size_t *);
int ip_mrouter_done(struct socket *);
void vif_delete(struct ifnet *);
struct in6_addrlifetime {
 time_t ia6t_expire;
 time_t ia6t_preferred;
 u_int32_t ia6t_vltime;
 u_int32_t ia6t_pltime;
};
struct nd_ifinfo;
struct in6_ifextra {
 struct nd_ifinfo *nd_ifinfo;
 void *rs_lhcookie;
 int nprefixes;
 int ndefrouters;
};
struct in6_ifaddr {
 struct ifaddr ia_ifa;
 struct sockaddr_in6 ia_addr;
 struct sockaddr_in6 ia_dstaddr;
 struct sockaddr_in6 ia_prefixmask;
 struct { struct in6_ifaddr *tqe_next; struct in6_ifaddr **tqe_prev; } ia_list;
 int ia6_flags;
 struct in6_addrlifetime ia6_lifetime;
 time_t ia6_createtime;
 time_t ia6_updatetime;
 struct { struct in6_multi_mship *lh_first; } ia6_memberships;
};
struct in6_ifstat {
 u_int64_t ifs6_in_receive;
 u_int64_t ifs6_in_hdrerr;
 u_int64_t ifs6_in_toobig;
 u_int64_t ifs6_in_noroute;
 u_int64_t ifs6_in_addrerr;
 u_int64_t ifs6_in_protounknown;
 u_int64_t ifs6_in_truncated;
 u_int64_t ifs6_in_discard;
 u_int64_t ifs6_in_deliver;
 u_int64_t ifs6_out_forward;
 u_int64_t ifs6_out_request;
 u_int64_t ifs6_out_discard;
 u_int64_t ifs6_out_fragok;
 u_int64_t ifs6_out_fragfail;
 u_int64_t ifs6_out_fragcreat;
 u_int64_t ifs6_reass_reqd;
 u_int64_t ifs6_reass_ok;
 u_int64_t ifs6_reass_fail;
 u_int64_t ifs6_in_mcast;
 u_int64_t ifs6_out_mcast;
};
struct icmp6_ifstat {
 u_int64_t ifs6_in_msg;
 u_int64_t ifs6_in_error;
 u_int64_t ifs6_in_dstunreach;
 u_int64_t ifs6_in_adminprohib;
 u_int64_t ifs6_in_timeexceed;
 u_int64_t ifs6_in_paramprob;
 u_int64_t ifs6_in_pkttoobig;
 u_int64_t ifs6_in_echo;
 u_int64_t ifs6_in_echoreply;
 u_int64_t ifs6_in_routersolicit;
 u_int64_t ifs6_in_routeradvert;
 u_int64_t ifs6_in_neighborsolicit;
 u_int64_t ifs6_in_neighboradvert;
 u_int64_t ifs6_in_redirect;
 u_int64_t ifs6_in_mldquery;
 u_int64_t ifs6_in_mldreport;
 u_int64_t ifs6_in_mlddone;
 u_int64_t ifs6_out_msg;
 u_int64_t ifs6_out_error;
 u_int64_t ifs6_out_dstunreach;
 u_int64_t ifs6_out_adminprohib;
 u_int64_t ifs6_out_timeexceed;
 u_int64_t ifs6_out_paramprob;
 u_int64_t ifs6_out_pkttoobig;
 u_int64_t ifs6_out_echo;
 u_int64_t ifs6_out_echoreply;
 u_int64_t ifs6_out_routersolicit;
 u_int64_t ifs6_out_routeradvert;
 u_int64_t ifs6_out_neighborsolicit;
 u_int64_t ifs6_out_neighboradvert;
 u_int64_t ifs6_out_redirect;
 u_int64_t ifs6_out_mldquery;
 u_int64_t ifs6_out_mldreport;
 u_int64_t ifs6_out_mlddone;
};
struct in6_ifreq {
 char ifr_name[16];
 union {
  struct sockaddr_in6 ifru_addr;
  struct sockaddr_in6 ifru_dstaddr;
  short ifru_flags;
  int ifru_flags6;
  int ifru_metric;
  caddr_t ifru_data;
  struct in6_addrlifetime ifru_lifetime;
  struct in6_ifstat ifru_stat;
  struct icmp6_ifstat ifru_icmp6stat;
 } ifr_ifru;
};
struct in6_aliasreq {
 char ifra_name[16];
 union {
  struct sockaddr_in6 ifrau_addr;
  int ifrau_align;
  } ifra_ifrau;
 struct sockaddr_in6 ifra_dstaddr;
 struct sockaddr_in6 ifra_prefixmask;
 int ifra_flags;
 struct in6_addrlifetime ifra_lifetime;
};
struct in6_multi_mship {
 struct in6_multi *i6mm_maddr;
 struct { struct in6_multi_mship *le_next; struct in6_multi_mship **le_prev; } i6mm_chain;
};
struct in6_multi {
 struct ifmaddr in6m_ifma;
 struct sockaddr_in6 in6m_sin;
 u_int in6m_state;
 u_int in6m_timer;
};
static __inline struct in6_multi *
ifmatoin6m(struct ifmaddr *ifma)
{
       return ((struct in6_multi *)(ifma));
}
struct in6_multi *in6_addmulti(struct in6_addr *, struct ifnet *, int *);
void in6_delmulti(struct in6_multi *);
int in6_hasmulti(struct in6_addr *, struct ifnet *);
struct in6_multi_mship *in6_joingroup(struct ifnet *, struct in6_addr *, int *);
void in6_leavegroup(struct in6_multi_mship *);
int in6_control(struct socket *, u_long, caddr_t, struct ifnet *);
int in6_ioctl(u_long, caddr_t, struct ifnet *, int);
int in6_update_ifa(struct ifnet *, struct in6_aliasreq *,
 struct in6_ifaddr *);
void in6_purgeaddr(struct ifaddr *);
int in6if_do_dad(struct ifnet *);
void *in6_domifattach(struct ifnet *);
void in6_domifdetach(struct ifnet *, void *);
struct in6_ifaddr *in6ifa_ifpforlinklocal(struct ifnet *, int);
struct in6_ifaddr *in6ifa_ifpwithaddr(struct ifnet *, struct in6_addr *);
int in6_addr2scopeid(unsigned int, struct in6_addr *);
int in6_matchlen(struct in6_addr *, struct in6_addr *);
void in6_prefixlen2mask(struct in6_addr *, int);
void in6_purgeprefix(struct ifnet *);
int in6_ifattach(struct ifnet *);
void in6_ifdetach(struct ifnet *);
int in6_nigroup(struct ifnet *, const char *, int, struct sockaddr_in6 *);
int in6_ifattach_linklocal(struct ifnet *, struct in6_addr *);
struct nd_ifinfo {
 u_int32_t basereachable;
 u_int32_t reachable;
 u_int32_t retrans;
 int recalctm;
 u_int8_t initialized;
};
struct in6_nbrinfo {
 char ifname[16];
 struct in6_addr addr;
 time_t expire;
 long asked;
 int isrouter;
 int state;
};
struct prf_ra {
 u_int onlink : 1;
 u_int autonomous : 1;
 u_int router : 1;
 u_int reserved : 5;
};
struct in6_ndireq {
 char ifname[16];
 struct nd_ifinfo ndi;
};
struct in6_ndifreq {
 char ifname[16];
 u_long ifindex;
};
struct llinfo_nd6 {
 struct { struct llinfo_nd6 *tqe_next; struct llinfo_nd6 **tqe_prev; } ln_list;
 struct rtentry *ln_rt;
 struct mbuf *ln_hold;
 long ln_asked;
 int ln_byhint;
 short ln_state;
 short ln_router;
 struct timeout ln_timer_ch;
};
extern int nd6_delay;
extern int nd6_umaxtries;
extern int nd6_mmaxtries;
extern int nd6_maxnudhint;
extern int nd6_gctimer;
extern int nd6_debug;
union nd_opts {
 struct nd_opt_hdr *nd_opt_array[9];
 struct {
  struct nd_opt_hdr *zero;
  struct nd_opt_hdr *src_lladdr;
  struct nd_opt_hdr *tgt_lladdr;
  struct nd_opt_prefix_info *pi_beg;
  struct nd_opt_rd_hdr *rh;
  struct nd_opt_mtu *mtu;
  struct nd_opt_hdr *search;
  struct nd_opt_hdr *last;
  int done;
  struct nd_opt_prefix_info *pi_end;
 } nd_opt_each;
};
void nd6_init(void);
struct nd_ifinfo *nd6_ifattach(struct ifnet *);
void nd6_ifdetach(struct nd_ifinfo *);
int nd6_is_addr_neighbor(struct sockaddr_in6 *, struct ifnet *);
void nd6_option_init(void *, int, union nd_opts *);
struct nd_opt_hdr *nd6_option(union nd_opts *);
int nd6_options(union nd_opts *);
struct rtentry *nd6_lookup(struct in6_addr *, int, struct ifnet *, u_int);
void nd6_setmtu(struct ifnet *);
void nd6_llinfo_settimer(struct llinfo_nd6 *, int);
void nd6_purge(struct ifnet *);
void nd6_nud_hint(struct rtentry *);
void nd6_rtrequest(struct ifnet *, int, struct rtentry *);
int nd6_ioctl(u_long, caddr_t, struct ifnet *);
void nd6_cache_lladdr(struct ifnet *, struct in6_addr *, char *, int, int, int);
int nd6_resolve(struct ifnet *, struct rtentry *, struct mbuf *,
  struct sockaddr *, u_char *);
int nd6_need_cache(struct ifnet *);
void nd6_na_input(struct mbuf *, int, int);
void nd6_na_output(struct ifnet *, struct in6_addr *,
 struct in6_addr *, u_long, int, struct sockaddr *);
void nd6_ns_input(struct mbuf *, int, int);
void nd6_ns_output(struct ifnet *, struct in6_addr *,
 struct in6_addr *, struct llinfo_nd6 *, int);
caddr_t nd6_ifptomac(struct ifnet *);
void nd6_dad_start(struct ifaddr *);
void nd6_dad_stop(struct ifaddr *);
void nd6_ra_input(struct mbuf *, int, int);
void nd6_rs_input(struct mbuf *, int, int);
int in6_ifdel(struct ifnet *, struct in6_addr *);
void rt6_flush(struct in6_addr *, struct ifnet *);
void nd6_expire_timer_update(struct in6_ifaddr *);
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
struct shim_hdr {
 u_int32_t shim_label;
};
struct sockaddr_mpls {
 u_int8_t smpls_len;
 u_int8_t smpls_family;
 u_int16_t smpls_pad0;
 u_int32_t smpls_label;
 u_int32_t smpls_pad1[2];
};
struct rt_mpls {
 u_int32_t mpls_label;
 u_int8_t mpls_operation;
 u_int8_t mpls_exp;
};
struct ifmpwreq {
 uint32_t imr_flags;
 uint32_t imr_type;
 struct shim_hdr imr_lshim;
 struct shim_hdr imr_rshim;
 struct sockaddr_storage imr_nexthop;
};
extern struct domain mplsdomain;
struct mpe_softc {
 struct ifnet sc_if;
 struct ifaddr sc_ifa;
 int sc_unit;
 struct sockaddr_mpls sc_smpls;
 struct { struct mpe_softc *le_next; struct mpe_softc **le_prev; } sc_list;
};
void mpe_input(struct mbuf *, struct ifnet *, struct sockaddr_mpls *,
     u_int8_t);
void mpe_input6(struct mbuf *, struct ifnet *, struct sockaddr_mpls *,
     u_int8_t);
extern int mpls_defttl;
extern int mpls_mapttl_ip;
extern int mpls_mapttl_ip6;
extern int mpls_inkloop;
struct mbuf *mpls_shim_pop(struct mbuf *);
struct mbuf *mpls_shim_swap(struct mbuf *, struct rt_mpls *);
struct mbuf *mpls_shim_push(struct mbuf *, struct rt_mpls *);
int mpls_output(struct ifnet *, struct mbuf *, struct sockaddr *,
      struct rtentry *);
void mpls_input(struct mbuf *);
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
struct ifbreq {
 char ifbr_name[16];
 char ifbr_ifsname[16];
 u_int32_t ifbr_ifsflags;
 u_int32_t ifbr_portno;
 u_int8_t ifbr_state;
 u_int8_t ifbr_priority;
 u_int32_t ifbr_path_cost;
 u_int32_t ifbr_stpflags;
 u_int8_t ifbr_proto;
 u_int8_t ifbr_role;
 u_int32_t ifbr_fwd_trans;
 u_int64_t ifbr_desg_bridge;
 u_int32_t ifbr_desg_port;
 u_int64_t ifbr_root_bridge;
 u_int32_t ifbr_root_cost;
 u_int32_t ifbr_root_port;
};
struct ifbifconf {
 char ifbic_name[16];
 u_int32_t ifbic_len;
 union {
  caddr_t ifbicu_buf;
  struct ifbreq *ifbicu_req;
 } ifbic_ifbicu;
};
struct ifbareq {
 char ifba_name[16];
 char ifba_ifsname[16];
 u_int8_t ifba_age;
 u_int8_t ifba_flags;
 struct ether_addr ifba_dst;
 struct sockaddr_storage ifba_dstsa;
};
struct ifbaconf {
 char ifbac_name[16];
 u_int32_t ifbac_len;
 union {
  caddr_t ifbacu_buf;
  struct ifbareq *ifbacu_req;
 } ifbac_ifbacu;
};
struct ifbrparam {
 char ifbrp_name[16];
 union {
  u_int32_t ifbrpu_csize;
  int ifbrpu_ctime;
  u_int16_t ifbrpu_prio;
  u_int8_t ifbrpu_hellotime;
  u_int8_t ifbrpu_fwddelay;
  u_int8_t ifbrpu_maxage;
  u_int8_t ifbrpu_proto;
  u_int8_t ifbrpu_txhc;
  u_int64_t ifbrpu_datapath;
  u_int32_t ifbrpu_maxgroup;
 } ifbrp_ifbrpu;
};
struct ifbropreq {
 char ifbop_name[16];
 u_int8_t ifbop_holdcount;
 u_int8_t ifbop_maxage;
 u_int8_t ifbop_hellotime;
 u_int8_t ifbop_fwddelay;
 u_int8_t ifbop_protocol;
 u_int16_t ifbop_priority;
 u_int64_t ifbop_root_bridge;
 u_int16_t ifbop_root_port;
 u_int32_t ifbop_root_path_cost;
 u_int64_t ifbop_desg_bridge;
 struct timeval ifbop_last_tc_time;
};
struct ifbrlreq {
 char ifbr_name[16];
 char ifbr_ifsname[16];
 u_int8_t ifbr_action;
 u_int8_t ifbr_flags;
 struct ether_addr ifbr_src;
 struct ether_addr ifbr_dst;
 char ifbr_tagname[64];
};
struct ifbrlconf {
 char ifbrl_name[16];
 char ifbrl_ifsname[16];
 u_int32_t ifbrl_len;
 union {
  caddr_t ifbrlu_buf;
  struct ifbrlreq *ifbrlu_req;
 } ifbrl_ifbrlu;
};
struct brl_head { struct brl_node *sqh_first; struct brl_node **sqh_last; };
struct brl_node {
 struct { struct brl_node *sqe_next; } brl_next;
 struct ether_addr brl_src;
 struct ether_addr brl_dst;
 u_int16_t brl_tag;
 u_int8_t brl_action;
 u_int8_t brl_flags;
};
struct bstp_timer {
 u_int16_t active;
 u_int16_t value;
 u_int32_t latched;
};
struct bstp_pri_vector {
 u_int64_t pv_root_id;
 u_int32_t pv_cost;
 u_int64_t pv_dbridge_id;
 u_int16_t pv_dport_id;
 u_int16_t pv_port_id;
};
struct bstp_config_unit {
 struct bstp_pri_vector cu_pv;
 u_int16_t cu_message_age;
 u_int16_t cu_max_age;
 u_int16_t cu_forward_delay;
 u_int16_t cu_hello_time;
 u_int8_t cu_message_type;
 u_int8_t cu_topology_change_ack;
 u_int8_t cu_topology_change;
 u_int8_t cu_proposal;
 u_int8_t cu_agree;
 u_int8_t cu_learning;
 u_int8_t cu_forwarding;
 u_int8_t cu_role;
};
struct bstp_tcn_unit {
 u_int8_t tu_message_type;
};
struct bstp_port {
 struct { struct bstp_port *le_next; struct bstp_port **le_prev; } bp_next;
 struct ifnet *bp_ifp;
 struct bstp_state *bp_bs;
 void *bp_lhcookie;
 u_int8_t bp_active;
 u_int8_t bp_protover;
 u_int32_t bp_flags;
 u_int32_t bp_path_cost;
 u_int16_t bp_port_msg_age;
 u_int16_t bp_port_max_age;
 u_int16_t bp_port_fdelay;
 u_int16_t bp_port_htime;
 u_int16_t bp_desg_msg_age;
 u_int16_t bp_desg_max_age;
 u_int16_t bp_desg_fdelay;
 u_int16_t bp_desg_htime;
 struct bstp_timer bp_edge_delay_timer;
 struct bstp_timer bp_forward_delay_timer;
 struct bstp_timer bp_hello_timer;
 struct bstp_timer bp_message_age_timer;
 struct bstp_timer bp_migrate_delay_timer;
 struct bstp_timer bp_recent_backup_timer;
 struct bstp_timer bp_recent_root_timer;
 struct bstp_timer bp_tc_timer;
 struct bstp_config_unit bp_msg_cu;
 struct bstp_pri_vector bp_desg_pv;
 struct bstp_pri_vector bp_port_pv;
 u_int16_t bp_port_id;
 u_int8_t bp_state;
 u_int8_t bp_tcstate;
 u_int8_t bp_role;
 u_int8_t bp_infois;
 u_int8_t bp_tc_ack;
 u_int8_t bp_tc_prop;
 u_int8_t bp_fdbflush;
 u_int8_t bp_priority;
 u_int8_t bp_ptp_link;
 u_int8_t bp_agree;
 u_int8_t bp_agreed;
 u_int8_t bp_sync;
 u_int8_t bp_synced;
 u_int8_t bp_proposing;
 u_int8_t bp_proposed;
 u_int8_t bp_operedge;
 u_int8_t bp_reroot;
 u_int8_t bp_rcvdtc;
 u_int8_t bp_rcvdtca;
 u_int8_t bp_rcvdtcn;
 u_int32_t bp_forward_transitions;
 u_int8_t bp_txcount;
};
struct bstp_state {
 struct ifnet *bs_ifp;
 struct bstp_pri_vector bs_bridge_pv;
 struct bstp_pri_vector bs_root_pv;
 struct bstp_port *bs_root_port;
 u_int8_t bs_protover;
 u_int16_t bs_migration_delay;
 u_int16_t bs_edge_delay;
 u_int16_t bs_bridge_max_age;
 u_int16_t bs_bridge_fdelay;
 u_int16_t bs_bridge_htime;
 u_int16_t bs_root_msg_age;
 u_int16_t bs_root_max_age;
 u_int16_t bs_root_fdelay;
 u_int16_t bs_root_htime;
 u_int16_t bs_hold_time;
 u_int16_t bs_bridge_priority;
 u_int8_t bs_txholdcount;
 u_int8_t bs_allsynced;
 struct timeout bs_bstptimeout;
 struct bstp_timer bs_link_timer;
 struct timeval bs_last_tc_time;
 struct { struct bstp_port *lh_first; } bs_bplist;
};
struct bridge_iflist {
 struct { struct bridge_iflist *tqe_next; struct bridge_iflist **tqe_prev; } next;
 struct bridge_softc *bridge_sc;
 struct bstp_port *bif_stp;
 struct brl_head bif_brlin;
 struct brl_head bif_brlout;
 struct ifnet *ifp;
 u_int32_t bif_flags;
 void *bif_dhcookie;
};
union brsockaddr_union {
 struct sockaddr sa;
 struct sockaddr_in sin;
 struct sockaddr_in6 sin6;
};
struct bridge_tunneltag {
 union brsockaddr_union brtag_peer;
 union brsockaddr_union brtag_local;
 u_int32_t brtag_id;
};
struct bridge_rtnode {
 struct { struct bridge_rtnode *le_next; struct bridge_rtnode **le_prev; } brt_next;
 struct ifnet *brt_if;
 u_int8_t brt_flags;
 u_int8_t brt_age;
 struct ether_addr brt_addr;
 struct bridge_tunneltag brt_tunnel;
};
struct bridge_softc {
 struct ifnet sc_if;
 u_int32_t sc_brtmax;
 u_int32_t sc_brtcnt;
 int sc_brttimeout;
 u_int64_t sc_hashkey[2];
 struct timeout sc_brtimeout;
 struct bstp_state *sc_stp;
 struct { struct bridge_iflist *tqh_first; struct bridge_iflist **tqh_last; } sc_iflist;
 struct { struct bridge_iflist *tqh_first; struct bridge_iflist **tqh_last; } sc_spanlist;
 struct { struct bridge_rtnode *lh_first; } sc_rts[1024];
};
extern const u_int8_t bstp_etheraddr[];
struct llc;
int bridge_output(struct ifnet *, struct mbuf *, struct sockaddr *,
    struct rtentry *);
void bridge_update(struct ifnet *, struct ether_addr *, int);
void bridge_rtdelete(struct bridge_softc *, struct ifnet *, int);
void bridge_rtagenode(struct ifnet *, int);
struct bridge_tunneltag *bridge_tunnel(struct mbuf *);
struct bridge_tunneltag *bridge_tunneltag(struct mbuf *);
void bridge_tunneluntag(struct mbuf *);
void bridge_copyaddr(struct sockaddr *, struct sockaddr *);
void bridge_copytag(struct bridge_tunneltag *, struct bridge_tunneltag *);
struct bstp_state *bstp_create(struct ifnet *);
void bstp_destroy(struct bstp_state *);
void bstp_initialization(struct bstp_state *);
void bstp_stop(struct bstp_state *);
int bstp_ioctl(struct ifnet *, u_long, caddr_t);
struct bstp_port *bstp_add(struct bstp_state *, struct ifnet *);
void bstp_delete(struct bstp_port *);
struct mbuf *bstp_input(struct bstp_state *, struct bstp_port *,
    struct ether_header *, struct mbuf *);
void bstp_ifstate(void *);
u_int8_t bstp_getstate(struct bstp_state *, struct bstp_port *);
void bstp_ifsflags(struct bstp_port *, u_int);
void bridge_send_icmp_err(struct bridge_softc *, struct ifnet *,
    struct ether_header *, struct mbuf *, int, struct llc *, int, int, int);
int bridgectl_ioctl(struct ifnet *, u_long, caddr_t);
struct ifnet *bridge_rtupdate(struct bridge_softc *,
    struct ether_addr *, struct ifnet *ifp, int, u_int8_t, struct mbuf *);
struct bridge_rtnode *bridge_rtlookup(struct bridge_softc *,
    struct ether_addr *);
void bridge_rtflush(struct bridge_softc *, int);
void bridge_rtage(void *);
u_int8_t bridge_filterrule(struct brl_head *, struct ether_header *,
    struct mbuf *);
void bridge_flushrule(struct bridge_iflist *);
struct mbuf *bridge_ip(struct bridge_softc *, int, struct ifnet *,
    struct ether_header *, struct mbuf *);
void bridge_fragment(struct bridge_softc *, struct ifnet *,
    struct ether_header *, struct mbuf *);
int bridge_ifenqueue(struct bridge_softc *, struct ifnet *, struct mbuf *);
struct carp_header {
 u_int carp_version:4,
   carp_type:4;
 u_int8_t carp_vhid;
 u_int8_t carp_advskew;
 u_int8_t carp_authlen;
 u_int8_t carp_demote;
 u_int8_t carp_advbase;
 u_int16_t carp_cksum;
 u_int32_t carp_counter[2];
 unsigned char carp_md[20];
} __attribute__((__packed__));
struct carpstats {
 u_int64_t carps_ipackets;
 u_int64_t carps_ipackets6;
 u_int64_t carps_badif;
 u_int64_t carps_badttl;
 u_int64_t carps_hdrops;
 u_int64_t carps_badsum;
 u_int64_t carps_badver;
 u_int64_t carps_badlen;
 u_int64_t carps_badauth;
 u_int64_t carps_badvhid;
 u_int64_t carps_badaddrs;
 u_int64_t carps_opackets;
 u_int64_t carps_opackets6;
 u_int64_t carps_onomem;
 u_int64_t carps_ostates;
 u_int64_t carps_preempt;
};
struct carpreq {
 int carpr_state;
 char carpr_carpdev[16];
 u_int8_t carpr_vhids[32];
 u_int8_t carpr_advskews[32];
 u_int8_t carpr_states[32];
 u_int8_t carpr_balancing;
 int carpr_advbase;
 unsigned char carpr_key[20];
 struct in_addr carpr_peer;
};
enum carpstat_counters {
 carps_ipackets,
 carps_ipackets6,
 carps_badif,
 carps_badttl,
 carps_hdrops,
 carps_badsum,
 carps_badver,
 carps_badlen,
 carps_badauth,
 carps_badvhid,
 carps_badaddrs,
 carps_opackets,
 carps_opackets6,
 carps_onomem,
 carps_ostates,
 carps_preempt,
 carps_ncounters,
};
extern struct cpumem *carpcounters;
static inline void
carpstat_inc(enum carpstat_counters c)
{
 counters_inc(carpcounters, c);
}
void carp_ifdetach (struct ifnet *);
int carp_proto_input(struct mbuf **, int *, int, int);
void carp_carpdev_state(void *);
void carp_group_demote_adj(struct ifnet *, int, char *);
int carp6_proto_input(struct mbuf **, int *, int, int);
int carp_iamatch(struct ifnet *);
int carp_iamatch6(struct ifnet *);
struct ifnet *carp_ourether(void *, u_int8_t *);
int carp_output(struct ifnet *, struct mbuf *, struct sockaddr *,
       struct rtentry *);
int carp_sysctl(int *, u_int, void *, size_t *, void *, size_t);
int carp_lsdrop(struct mbuf *, sa_family_t, u_int32_t *,
       u_int32_t *, int);
void if_attachsetup(struct ifnet *);
void if_attachdomain(struct ifnet *);
void if_attach_common(struct ifnet *);
int if_setrdomain(struct ifnet *, int);
void if_slowtimo(void *);
void if_detached_qstart(struct ifqueue *);
int if_detached_ioctl(struct ifnet *, u_long, caddr_t);
int if_getgroup(caddr_t, struct ifnet *);
int if_getgroupmembers(caddr_t);
int if_getgroupattribs(caddr_t);
int if_setgroupattribs(caddr_t);
void if_linkstate(struct ifnet *);
void if_linkstate_task(void *);
int if_clone_list(struct if_clonereq *);
struct if_clone *if_clone_lookup(const char *, int *);
int if_group_egress_build(void);
void if_watchdog_task(void *);
void if_input_process(void *);
void if_netisr(void *);
void ifa_print_all(void);
void if_qstart_compat(struct ifqueue *);
void if_ifp_dtor(void *, void *);
void if_map_dtor(void *, void *);
struct ifnet *if_ref(struct ifnet *);
struct if_map {
 unsigned long limit;
};
struct if_idxmap {
 unsigned int serial;
 unsigned int count;
 struct srp map;
};
void if_idxmap_init(unsigned int);
void if_idxmap_insert(struct ifnet *);
void if_idxmap_remove(struct ifnet *);
struct { struct ifg_group *tqh_first; struct ifg_group **tqh_last; } ifg_head = { ((void *)0), &(ifg_head).tqh_first };
struct { struct if_clone *lh_first; } if_cloners = { ((void *)0) };
int if_cloners_count;
struct timeout net_tick_to;
void net_tick(void *);
int net_livelocked(void);
int ifq_congestion;
int netisr;
struct taskq *softnettq;
struct task if_input_task_locked = {{ ((void *)0), ((void *)0) }, (if_netisr), (((void *)0)), 0 };
struct rwlock netlock = { 0, "netlock" };
void
ifinit(void)
{
 if_idxmap_init(8);
 timeout_set(&net_tick_to, net_tick, &net_tick_to);
 softnettq = taskq_create("softnet", 1, 6, (1 << 0));
 if (softnettq == ((void *)0))
  panic("unable to create softnet taskq");
 net_tick(&net_tick_to);
}
static struct if_idxmap if_idxmap = {
 0,
 0,
 { ((void *)0) }
};
struct srp_gc if_ifp_gc = { (if_ifp_dtor), (((void *)0)), { .refs = 1 } };
struct srp_gc if_map_gc = { (if_map_dtor), (((void *)0)), { .refs = 1 } };
struct ifnet_head ifnet = { ((void *)0), &(ifnet).tqh_first };
void
if_idxmap_init(unsigned int limit)
{
 struct if_map *if_map;
 struct srp *map;
 unsigned int i;
 if_idxmap.serial = 1;
 if_map = malloc(sizeof(*if_map) + limit * sizeof(*map),
     9, 0x0001);
 if_map->limit = limit;
 map = (struct srp *)(if_map + 1);
 for (i = 0; i < limit; i++)
  srp_init(&map[i]);
 srp_update_locked(&if_map_gc, &if_idxmap.map, if_map);
}
void
if_idxmap_insert(struct ifnet *ifp)
{
 struct if_map *if_map;
 struct srp *map;
 unsigned int index, i;
 refcnt_init(&ifp->if_refcnt);
 ((_kernel_lock_held()) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../net/if.c", 301, "_kernel_lock_held()"));
 if (++if_idxmap.count > 0xffff)
  panic("too many interfaces");
 if_map = srp_get_locked(&if_idxmap.map);
 map = (struct srp *)(if_map + 1);
 index = if_idxmap.serial++ & 0xffff;
 if (index >= if_map->limit) {
  struct if_map *nif_map;
  struct srp *nmap;
  unsigned int nlimit;
  struct ifnet *nifp;
  nlimit = if_map->limit * 2;
  nif_map = malloc(sizeof(*nif_map) + nlimit * sizeof(*nmap),
      9, 0x0001);
  nmap = (struct srp *)(nif_map + 1);
  nif_map->limit = nlimit;
  for (i = 0; i < if_map->limit; i++) {
   srp_init(&nmap[i]);
   nifp = srp_get_locked(&map[i]);
   if (nifp != ((void *)0)) {
    srp_update_locked(&if_ifp_gc, &nmap[i],
        if_ref(nifp));
   }
  }
  while (i < nlimit) {
   srp_init(&nmap[i]);
   i++;
  }
  srp_update_locked(&if_map_gc, &if_idxmap.map, nif_map);
  if_map = nif_map;
  map = nmap;
 }
 for (i = 0; i < 0xffff; i++) {
  if (index != 0 && srp_get_locked(&map[index]) == ((void *)0))
   break;
  index = if_idxmap.serial++ & 0xffff;
 }
 ifp->if_index = index;
 srp_update_locked(&if_ifp_gc, &map[index], if_ref(ifp));
}
void
if_idxmap_remove(struct ifnet *ifp)
{
 struct if_map *if_map;
 struct srp *map;
 unsigned int index;
 index = ifp->if_index;
 ((_kernel_lock_held()) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../net/if.c", 365, "_kernel_lock_held()"));
 if_map = srp_get_locked(&if_idxmap.map);
 ((index < if_map->limit) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../net/if.c", 368, "index < if_map->limit"));
 map = (struct srp *)(if_map + 1);
 ((ifp == (struct ifnet *)srp_get_locked(&map[index])) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../net/if.c", 371, "ifp == (struct ifnet *)srp_get_locked(&map[index])"));
 srp_update_locked(&if_ifp_gc, &map[index], ((void *)0));
 if_idxmap.count--;
 refcnt_finalize(&ifp->if_refcnt, "ifidxrm");
}
void
if_ifp_dtor(void *null, void *ifp)
{
 if_put(ifp);
}
void
if_map_dtor(void *null, void *m)
{
 struct if_map *if_map = m;
 struct srp *map = (struct srp *)(if_map + 1);
 unsigned int i;
 for (i = 0; i < if_map->limit; i++)
  srp_update_locked(&if_ifp_gc, &map[i], ((void *)0));
 free(if_map, 9, sizeof(*if_map) + if_map->limit * sizeof(*map));
}
void
if_attachsetup(struct ifnet *ifp)
{
 unsigned long ifidx;
 do { if (rw_status(&netlock) != 0x0001UL) splassert_fail(0x0001UL, rw_status(&netlock), __func__);} while (0);
 do { (&ifp->if_groups)->tqh_first = ((void *)0); (&ifp->if_groups)->tqh_last = &(&ifp->if_groups)->tqh_first; } while (0);
 if_addgroup(ifp, "all");
 if_attachdomain(ifp);
 pfi_attach_ifnet(ifp);
 timeout_set(ifp->if_slowtimo, if_slowtimo, ifp);
 if_slowtimo(ifp);
 if_idxmap_insert(ifp);
 ((if_get(0) == ((void *)0)) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../net/if.c", 428, "if_get(0) == NULL"));
 ifidx = ifp->if_index;
 mq_init(&ifp->if_inputqueue, 8192, 6);
 task_set(ifp->if_inputtask, if_input_process, (void *)ifidx);
 task_set(ifp->if_watchdogtask, if_watchdog_task, (void *)ifidx);
 task_set(ifp->if_linkstatetask, if_linkstate_task, (void *)ifidx);
 rtm_ifannounce(ifp, 0);
}
void
if_alloc_sadl(struct ifnet *ifp)
{
 unsigned int socksize;
 int namelen, masklen;
 struct sockaddr_dl *sdl;
 if (ifp->if_sadl != ((void *)0))
  if_free_sadl(ifp);
 namelen = strlen(ifp->if_xname);
 masklen = __builtin_offsetof(struct sockaddr_dl, sdl_data[0]) + namelen;
 socksize = masklen + ifp->if_data.ifi_addrlen;
 if (socksize < sizeof(*sdl))
  socksize = sizeof(*sdl);
 socksize = (1 + (((socksize) - 1) | (sizeof(long) - 1)));
 sdl = malloc(socksize, 9, 0x0001|0x0008);
 sdl->sdl_len = socksize;
 sdl->sdl_family = 18;
 __builtin_bcopy((ifp->if_xname), (sdl->sdl_data), (namelen));
 sdl->sdl_nlen = namelen;
 sdl->sdl_alen = ifp->if_data.ifi_addrlen;
 sdl->sdl_index = ifp->if_index;
 sdl->sdl_type = ifp->if_data.ifi_type;
 ifp->if_sadl = sdl;
}
void
if_free_sadl(struct ifnet *ifp)
{
 free(ifp->if_sadl, 9, 0);
 ifp->if_sadl = ((void *)0);
}
void
if_attachdomain(struct ifnet *ifp)
{
 struct domain *dp;
 int i, s;
 s = _splraise(6);
 __builtin_bzero((ifp->if_afdata), (sizeof(ifp->if_afdata)));
 for (i = 0; (dp = domains[i]) != ((void *)0); i++) {
  if (dp->dom_ifattach)
   ifp->if_afdata[dp->dom_family] =
       (*dp->dom_ifattach)(ifp);
 }
 _splx(s);
}
void
if_attachhead(struct ifnet *ifp)
{
 if_attach_common(ifp);
 do { _rw_enter_write(&netlock ); } while (0);
 do { if (((ifp)->if_list.tqe_next = (&ifnet)->tqh_first) != ((void *)0)) (&ifnet)->tqh_first->if_list.tqe_prev = &(ifp)->if_list.tqe_next; else (&ifnet)->tqh_last = &(ifp)->if_list.tqe_next; (&ifnet)->tqh_first = (ifp); (ifp)->if_list.tqe_prev = &(&ifnet)->tqh_first; } while (0);
 if_attachsetup(ifp);
 do { _rw_exit_write(&netlock ); } while (0);
}
void
if_attach(struct ifnet *ifp)
{
 if_attach_common(ifp);
 do { _rw_enter_write(&netlock ); } while (0);
 do { (ifp)->if_list.tqe_next = ((void *)0); (ifp)->if_list.tqe_prev = (&ifnet)->tqh_last; *(&ifnet)->tqh_last = (ifp); (&ifnet)->tqh_last = &(ifp)->if_list.tqe_next; } while (0);
 if_attachsetup(ifp);
 do { _rw_exit_write(&netlock ); } while (0);
}
void
if_attach_queues(struct ifnet *ifp, unsigned int nqs)
{
 struct ifqueue **map;
 struct ifqueue *ifq;
 int i;
 ((ifp->if_ifqs == ifp->if_snd._ifq_ptr._ifq_ifqs) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../net/if.c", 538, "ifp->if_ifqs == ifp->if_snd.ifq_ifqs"));
 ((nqs != 0) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../net/if.c", 539, "nqs != 0"));
 map = mallocarray(sizeof(*map), nqs, 2, 0x0001);
 ifp->if_snd._ifq_ptr._ifq_softc = ((void *)0);
 map[0] = &ifp->if_snd;
 for (i = 1; i < nqs; i++) {
  ifq = malloc(sizeof(*ifq), 2, 0x0001|0x0008);
  ((ifq)->ifq_maxlen = (ifp->if_snd.ifq_maxlen));
  ifq_init(ifq, ifp, i);
  map[i] = ifq;
 }
 ifp->if_ifqs = map;
 ifp->if_nifqs = nqs;
}
void
if_attach_common(struct ifnet *ifp)
{
 do { (&ifp->if_addrlist)->tqh_first = ((void *)0); (&ifp->if_addrlist)->tqh_last = &(&ifp->if_addrlist)->tqh_first; } while (0);
 do { (&ifp->if_maddrlist)->tqh_first = ((void *)0); (&ifp->if_maddrlist)->tqh_last = &(&ifp->if_maddrlist)->tqh_first; } while (0);
 if (!((ifp->if_xflags) & (0x1))) {
  ((ifp->if_qstart == ((void *)0)) ? (void)0 : panic("kernel %sassertion \"%s\" failed: file \"%s\", line %d" " " "%s: if_qstart set without MPSAFE set", "diagnostic ", "ifp->if_qstart == NULL", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../net/if.c", 565, ifp->if_xname));
  ifp->if_qstart = if_qstart_compat;
 } else {
  ((ifp->if_start == ((void *)0)) ? (void)0 : panic("kernel %sassertion \"%s\" failed: file \"%s\", line %d" " " "%s: if_start set with MPSAFE set", "diagnostic ", "ifp->if_start == NULL", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../net/if.c", 569, ifp->if_xname));
  ((ifp->if_qstart != ((void *)0)) ? (void)0 : panic("kernel %sassertion \"%s\" failed: file \"%s\", line %d" " " "%s: if_qstart not set with MPSAFE set", "diagnostic ", "ifp->if_qstart != NULL", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../net/if.c", 571, ifp->if_xname));
 }
 ifq_init(&ifp->if_snd, ifp, 0);
 ifp->if_snd._ifq_ptr._ifq_ifqs[0] = &ifp->if_snd;
 ifp->if_ifqs = ifp->if_snd._ifq_ptr._ifq_ifqs;
 ifp->if_nifqs = 1;
 ifp->if_addrhooks = malloc(sizeof(*ifp->if_addrhooks),
     127, 0x0001);
 do { (ifp->if_addrhooks)->tqh_first = ((void *)0); (ifp->if_addrhooks)->tqh_last = &(ifp->if_addrhooks)->tqh_first; } while (0);
 ifp->if_linkstatehooks = malloc(sizeof(*ifp->if_linkstatehooks),
     127, 0x0001);
 do { (ifp->if_linkstatehooks)->tqh_first = ((void *)0); (ifp->if_linkstatehooks)->tqh_last = &(ifp->if_linkstatehooks)->tqh_first; } while (0);
 ifp->if_detachhooks = malloc(sizeof(*ifp->if_detachhooks),
     127, 0x0001);
 do { (ifp->if_detachhooks)->tqh_first = ((void *)0); (ifp->if_detachhooks)->tqh_last = &(ifp->if_detachhooks)->tqh_first; } while (0);
 if (ifp->if_rtrequest == ((void *)0))
  ifp->if_rtrequest = if_rtrequest_dummy;
 ifp->if_slowtimo = malloc(sizeof(*ifp->if_slowtimo), 127,
     0x0001|0x0008);
 ifp->if_watchdogtask = malloc(sizeof(*ifp->if_watchdogtask),
     127, 0x0001|0x0008);
 ifp->if_linkstatetask = malloc(sizeof(*ifp->if_linkstatetask),
     127, 0x0001|0x0008);
 ifp->if_inputtask = malloc(sizeof(*ifp->if_inputtask),
     127, 0x0001|0x0008);
 ifp->if_llprio = 3;
 srp_init(&(&ifp->if_inputs)->sl_head);
}
void
if_attach_ifq(struct ifnet *ifp, const struct ifq_ops *newops, void *args)
{
 ifq_attach(&ifp->if_snd, newops, args);
}
void
if_start(struct ifnet *ifp)
{
 ((ifp->if_qstart == if_qstart_compat) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../net/if.c", 623, "ifp->if_qstart == if_qstart_compat"));
 if_qstart_compat(&ifp->if_snd);
}
void
if_qstart_compat(struct ifqueue *ifq)
{
 struct ifnet *ifp = ifq->ifq_if;
 int s;
 _kernel_lock("/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../net/if.c", 641);
 s = _splraise(6);
 (*ifp->if_start)(ifp);
 _splx(s);
 _kernel_unlock();
}
int
if_enqueue(struct ifnet *ifp, struct mbuf *m)
{
 unsigned int idx;
 struct ifqueue *ifq;
 int error;
 if (ifp->if_bridgeport && (m->m_hdr.mh_flags & 0x0010) == 0) {
  _kernel_lock("/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../net/if.c", 657);
  error = bridge_output(ifp, m, ((void *)0), ((void *)0));
  _kernel_unlock();
  return (error);
 }
 pf_pkt_unlink_state_key(m);
 idx = ifq_idx(&ifp->if_snd, ifp->if_nifqs, m);
 ifq = ifp->if_ifqs[idx];
 error = ifq_enqueue(ifq, m);
 if (error)
  return (error);
 ifq_start(ifq);
 return (0);
}
void
if_input(struct ifnet *ifp, struct mbuf_list *ml)
{
 struct mbuf *m;
 size_t ibytes = 0;
 caddr_t if_bpf;
 if (((ml)->ml_len == 0))
  return;
 for ((m) = ((ml)->ml_head); (m) != ((void *)0); (m) = ((m)->m_hdr.mh_nextpkt)) {
  m->M_dat.MH.MH_pkthdr.ph_ifidx = ifp->if_index;
  m->M_dat.MH.MH_pkthdr.ph_rtableid = ifp->if_data.ifi_rdomain;
  ibytes += m->M_dat.MH.MH_pkthdr.len;
 }
 ifp->if_data.ifi_ipackets += ((ml)->ml_len);
 ifp->if_data.ifi_ibytes += ibytes;
 if_bpf = ifp->if_bpf;
 if (if_bpf) {
  struct mbuf_list ml0;
  ml_init(&ml0);
  ml_enlist(&ml0, ml);
  ml_init(ml);
  while ((m = ml_dequeue(&ml0)) != ((void *)0)) {
   if (bpf_mtap_ether(if_bpf, m, 1))
    m_freem(m);
   else
    ml_enqueue(ml, m);
  }
  if (((ml)->ml_len == 0))
   return;
 }
 if (mq_enlist(&ifp->if_inputqueue, ml) == 0)
  task_add(softnettq, ifp->if_inputtask);
}
int
if_input_local(struct ifnet *ifp, struct mbuf *m, sa_family_t af)
{
 if (ifp->if_flags & 0x8) {
  caddr_t if_bpf = ifp->if_bpf;
  if (if_bpf)
   bpf_mtap_af(if_bpf, af, m, (1<<1));
 }
 m_resethdr(m);
 m->m_hdr.mh_flags |= 0x0040;
 m->M_dat.MH.MH_pkthdr.ph_ifidx = ifp->if_index;
 m->M_dat.MH.MH_pkthdr.ph_rtableid = ifp->if_data.ifi_rdomain;
 ifp->if_data.ifi_opackets++;
 ifp->if_data.ifi_obytes += m->M_dat.MH.MH_pkthdr.len;
 ifp->if_data.ifi_ipackets++;
 ifp->if_data.ifi_ibytes += m->M_dat.MH.MH_pkthdr.len;
 switch (af) {
 case 2:
  ipv4_input(ifp, m);
  break;
 case 24:
  ipv6_input(ifp, m);
  break;
 case 33:
  mpls_input(m);
  break;
 default:
  printf("%s: can't handle af%d\n", ifp->if_xname, af);
  m_freem(m);
  return (47);
 }
 return (0);
}
struct ifih {
 struct { struct srp se_next; } ifih_next;
 int (*ifih_input)(struct ifnet *, struct mbuf *,
          void *);
 void *ifih_cookie;
 int ifih_refcnt;
 struct refcnt ifih_srpcnt;
};
void if_ih_ref(void *, void *);
void if_ih_unref(void *, void *);
struct srpl_rc ifih_rc = { if_ih_ref, { (if_ih_unref), (((void *)0)), { .refs = 1 } } };
void
if_ih_insert(struct ifnet *ifp, int (*input)(struct ifnet *, struct mbuf *,
    void *), void *cookie)
{
 struct ifih *ifih;
 ((_kernel_lock_held()) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../net/if.c", 803, "_kernel_lock_held()"));
 for ((ifih) = srp_get_locked(&(&ifp->if_inputs)->sl_head); (ifih) != ((void *)0); (ifih) = srp_get_locked(&((ifih))->ifih_next.se_next)) {
  if (ifih->ifih_input == input && ifih->ifih_cookie == cookie) {
   ifih->ifih_refcnt++;
   break;
  }
 }
 if (ifih == ((void *)0)) {
  ifih = malloc(sizeof(*ifih), 2, 0x0001);
  ifih->ifih_input = input;
  ifih->ifih_cookie = cookie;
  ifih->ifih_refcnt = 1;
  refcnt_init(&ifih->ifih_srpcnt);
  do { void *head; srp_init(&(ifih)->ifih_next.se_next); head = srp_get_locked(&(&ifp->if_inputs)->sl_head); if (head != ((void *)0)) { (&ifih_rc)->srpl_ref(&(&ifih_rc)->srpl_gc.srp_gc_cookie, head); srp_update_locked(&(&ifih_rc)->srpl_gc, &(ifih)->ifih_next.se_next, head); } (&ifih_rc)->srpl_ref(&(&ifih_rc)->srpl_gc.srp_gc_cookie, ifih); srp_update_locked(&(&ifih_rc)->srpl_gc, &(&ifp->if_inputs)->sl_head, (ifih)); } while (0);
 }
}
void
if_ih_ref(void *null, void *i)
{
 struct ifih *ifih = i;
 refcnt_take(&ifih->ifih_srpcnt);
}
void
if_ih_unref(void *null, void *i)
{
 struct ifih *ifih = i;
 refcnt_rele_wake(&ifih->ifih_srpcnt);
}
void
if_ih_remove(struct ifnet *ifp, int (*input)(struct ifnet *, struct mbuf *,
    void *), void *cookie)
{
 struct ifih *ifih;
 ((_kernel_lock_held()) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../net/if.c", 847, "_kernel_lock_held()"));
 for ((ifih) = srp_get_locked(&(&ifp->if_inputs)->sl_head); (ifih) != ((void *)0); (ifih) = srp_get_locked(&((ifih))->ifih_next.se_next)) {
  if (ifih->ifih_input == input && ifih->ifih_cookie == cookie)
   break;
 }
 ((ifih != ((void *)0)) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../net/if.c", 854, "ifih != NULL"));
 if (--ifih->ifih_refcnt == 0) {
  do { struct srp *ref; struct ifih *c, *n; ref = &(&ifp->if_inputs)->sl_head; while ((c = srp_get_locked(ref)) != (ifih)) ref = &c->ifih_next.se_next; n = srp_get_locked(&(c)->ifih_next.se_next); if (n != ((void *)0)) (&ifih_rc)->srpl_ref(&(&ifih_rc)->srpl_gc.srp_gc_cookie, n); srp_update_locked(&(&ifih_rc)->srpl_gc, ref, n); srp_update_locked(&(&ifih_rc)->srpl_gc, &c->ifih_next.se_next, ((void *)0)); } while (0);
  refcnt_finalize(&ifih->ifih_srpcnt, "ifihrm");
  free(ifih, 2, sizeof(*ifih));
 }
}
void
if_input_process(void *xifidx)
{
 unsigned int ifidx = (unsigned long)xifidx;
 struct mbuf_list ml;
 struct mbuf *m;
 struct ifnet *ifp;
 struct ifih *ifih;
 struct srp_ref sr;
 int s;
 int locked = 0;
 ifp = if_get(ifidx);
 if (ifp == ((void *)0))
  return;
 mq_delist(&ifp->if_inputqueue, &ml);
 if (((&ml)->ml_len == 0))
  goto out;
 if (!((ifp->if_xflags) & (0x2)))
  enqueue_randomness(5, (int)(((&ml)->ml_len)));
 do { _rw_enter_write(&netlock ); } while (0);
 s = _splraise(6);
 extern int ipsec_in_use;
 if (ipsec_in_use) {
  do { _rw_exit_write(&netlock ); } while (0);
  _kernel_lock("/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../net/if.c", 914);
  do { _rw_enter_write(&netlock ); } while (0);
  locked = 1;
 }
 while ((m = ml_dequeue(&ml)) != ((void *)0)) {
  for ((ifih) = srp_enter((&sr), &(&ifp->if_inputs)->sl_head); (ifih) != ((void *)0); (ifih) = srp_follow((&sr), &(ifih)->ifih_next.se_next)) {
   if ((*ifih->ifih_input)(ifp, m, ifih->ifih_cookie))
    break;
  }
  srp_leave((&sr));
  if (ifih == ((void *)0))
   m_freem(m);
 }
 _splx(s);
 do { _rw_exit_write(&netlock ); } while (0);
 if (locked)
  _kernel_unlock();
out:
 if_put(ifp);
}
void
if_netisr(void *unused)
{
 int n, t = 0;
 _kernel_lock("/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../net/if.c", 950);
 do { _rw_enter_write(&netlock ); } while (0);
 while ((n = netisr) != 0) {
  if ((__curcpu->ci_self)->ci_schedstate.spc_schedflags & 0x0002) {
   do { _rw_exit_write(&netlock ); } while (0);
   yield();
   do { _rw_enter_write(&netlock ); } while (0);
  }
  atomic_clearbits_int(&netisr, n);
  if (n & (1 << 18))
   arpintr();
  if (n & (1 << 2))
   ipintr();
  if (n & (1 << 24))
   ip6intr();
  if (n & (1 << 28))
   pppintr();
  if (n & (1 << 29))
   bridgeintr();
  if (n & (1 << 31))
   switchintr();
  if (n & (1 << 30))
   pppoeintr();
  if (n & (1 << 27))
   pipexintr();
  t |= n;
 }
 if (t & (1 << 5))
  pfsyncintr();
 do { _rw_exit_write(&netlock ); } while (0);
 _kernel_unlock();
}
void
if_deactivate(struct ifnet *ifp)
{
 do { _rw_enter_write(&netlock ); } while (0);
 dohooks(ifp->if_detachhooks, 0x01 | 0x02);
 if (ifp->if_carp_ptr.carp_s && ifp->if_data.ifi_type != 0xf7)
  carp_ifdetach(ifp);
 do { _rw_exit_write(&netlock ); } while (0);
}
void
if_detach(struct ifnet *ifp)
{
 struct ifaddr *ifa;
 struct ifg_list *ifg;
 struct domain *dp;
 int i, s;
 if_deactivate(ifp);
 ifq_clr_oactive(&ifp->if_snd);
 if_idxmap_remove(ifp);
 do { _rw_enter_write(&netlock ); } while (0);
 s = _splraise(6);
 ifp->if_qstart = if_detached_qstart;
 ifp->if_ioctl = if_detached_ioctl;
 ifp->if_watchdog = ((void *)0);
 task_del(softnettq, ifp->if_inputtask);
 mq_purge(&ifp->if_inputqueue);
 timeout_del(ifp->if_slowtimo);
 task_del(softnettq, ifp->if_watchdogtask);
 task_del(softnettq, ifp->if_linkstatetask);
 bpfdetach(ifp);
 rti_delete(ifp);
 if (ifp->if_index == revarp_ifidx)
  revarp_ifidx = 0;
 vif_delete(ifp);
 in_ifdetach(ifp);
 in6_ifdetach(ifp);
 pfi_detach_ifnet(ifp);
 do { if (((ifp)->if_list.tqe_next) != ((void *)0)) (ifp)->if_list.tqe_next->if_list.tqe_prev = (ifp)->if_list.tqe_prev; else (&ifnet)->tqh_last = (ifp)->if_list.tqe_prev; *(ifp)->if_list.tqe_prev = (ifp)->if_list.tqe_next; ((ifp)->if_list.tqe_prev) = ((void *)-1); ((ifp)->if_list.tqe_next) = ((void *)-1); } while (0);
 while ((ifg = ((&ifp->if_groups)->tqh_first)) != ((void *)0))
  if_delgroup(ifp, ifg->ifgl_group->ifg_group);
 if_free_sadl(ifp);
 if (!(((&ifp->if_addrlist)->tqh_first) == ((void *)0))) {
  printf("%s: address list non empty\n", ifp->if_xname);
  while ((ifa = ((&ifp->if_addrlist)->tqh_first)) != ((void *)0)) {
   ifa_del(ifp, ifa);
   ifa->ifa_ifp = ((void *)0);
   ifafree(ifa);
  }
 }
 free(ifp->if_addrhooks, 127, 0);
 free(ifp->if_linkstatehooks, 127, 0);
 free(ifp->if_detachhooks, 127, 0);
 free(ifp->if_slowtimo, 127, sizeof(*ifp->if_slowtimo));
 free(ifp->if_watchdogtask, 127, sizeof(*ifp->if_watchdogtask));
 free(ifp->if_linkstatetask, 127, sizeof(*ifp->if_linkstatetask));
 free(ifp->if_inputtask, 127, sizeof(*ifp->if_inputtask));
 for (i = 0; (dp = domains[i]) != ((void *)0); i++) {
  if (dp->dom_ifdetach && ifp->if_afdata[dp->dom_family])
   (*dp->dom_ifdetach)(ifp,
       ifp->if_afdata[dp->dom_family]);
 }
 rtm_ifannounce(ifp, 1);
 _splx(s);
 do { _rw_exit_write(&netlock ); } while (0);
 for (i = 0; i < ifp->if_nifqs; i++)
  ifq_destroy(ifp->if_ifqs[i]);
 if (ifp->if_ifqs != ifp->if_snd._ifq_ptr._ifq_ifqs) {
  for (i = 1; i < ifp->if_nifqs; i++) {
   free(ifp->if_ifqs[i], 2,
       sizeof(struct ifqueue));
  }
  free(ifp->if_ifqs, 2,
      sizeof(struct ifqueue *) * ifp->if_nifqs);
 }
}
int
if_isconnected(const struct ifnet *ifp0, unsigned int ifidx)
{
 struct ifnet *ifp;
 int connected = 0;
 ifp = if_get(ifidx);
 if (ifp == ((void *)0))
  return (0);
 if (ifp0->if_index == ifp->if_index)
  connected = 1;
 if ((ifp0->if_bridgeport && ifp->if_bridgeport && ((struct bridge_iflist *)ifp0->if_bridgeport)->bridge_sc == ((struct bridge_iflist *)ifp->if_bridgeport)->bridge_sc))
  connected = 1;
 if ((ifp0->if_data.ifi_type == 0xf7 && ifp0->if_carp_ptr.carp_d == ifp) ||
     (ifp->if_data.ifi_type == 0xf7 && ifp->if_carp_ptr.carp_d == ifp0))
  connected = 1;
 if_put(ifp);
 return (connected);
}
int
if_clone_create(const char *name, int rdomain)
{
 struct if_clone *ifc;
 struct ifnet *ifp;
 int unit, ret;
 do { if (rw_status(&netlock) != 0x0001UL) splassert_fail(0x0001UL, rw_status(&netlock), __func__);} while (0);
 ifc = if_clone_lookup(name, &unit);
 if (ifc == ((void *)0))
  return (22);
 if (ifunit(name) != ((void *)0))
  return (17);
 do { _rw_exit_write(&netlock ); } while (0);
 ret = (*ifc->ifc_create)(ifc, unit);
 do { _rw_enter_write(&netlock ); } while (0);
 if (ret != 0 || (ifp = ifunit(name)) == ((void *)0))
  return (ret);
 if_addgroup(ifp, ifc->ifc_name);
 if (rdomain != 0)
  if_setrdomain(ifp, rdomain);
 return (ret);
}
int
if_clone_destroy(const char *name)
{
 struct if_clone *ifc;
 struct ifnet *ifp;
 int ret;
 do { if (rw_status(&netlock) != 0x0001UL) splassert_fail(0x0001UL, rw_status(&netlock), __func__);} while (0);
 ifc = if_clone_lookup(name, ((void *)0));
 if (ifc == ((void *)0))
  return (22);
 ifp = ifunit(name);
 if (ifp == ((void *)0))
  return (6);
 if (ifc->ifc_destroy == ((void *)0))
  return (45);
 if (ifp->if_flags & 0x1) {
  int s;
  s = _splraise(6);
  if_down(ifp);
  _splx(s);
 }
 do { _rw_exit_write(&netlock ); } while (0);
 ret = (*ifc->ifc_destroy)(ifp);
 do { _rw_enter_write(&netlock ); } while (0);
 return (ret);
}
struct if_clone *
if_clone_lookup(const char *name, int *unitp)
{
 struct if_clone *ifc;
 const char *cp;
 int unit;
 for (cp = name;
     cp - name < 16 && *cp && (*cp < '0' || *cp > '9');
     cp++)
  continue;
 if (cp == name || cp - name == 16 || !*cp)
  return (((void *)0));
 if (cp - name < 16 -1 && *cp == '0' && cp[1] != '\0')
  return (((void *)0));
 for((ifc) = ((&if_cloners)->lh_first); (ifc)!= ((void *)0); (ifc) = ((ifc)->ifc_list.le_next)) {
  if (strlen(ifc->ifc_name) == cp - name &&
      !strncmp(name, ifc->ifc_name, cp - name))
   break;
 }
 if (ifc == ((void *)0))
  return (((void *)0));
 unit = 0;
 while (cp - name < 16 && *cp) {
  if (*cp < '0' || *cp > '9' ||
      unit > (0x7fffffff - (*cp - '0')) / 10) {
   return (((void *)0));
  }
  unit = (unit * 10) + (*cp++ - '0');
 }
 if (unitp != ((void *)0))
  *unitp = unit;
 return (ifc);
}
void
if_clone_attach(struct if_clone *ifc)
{
 do { if (((ifc)->ifc_list.le_next = (&if_cloners)->lh_first) != ((void *)0)) (&if_cloners)->lh_first->ifc_list.le_prev = &(ifc)->ifc_list.le_next; (&if_cloners)->lh_first = (ifc); (ifc)->ifc_list.le_prev = &(&if_cloners)->lh_first; } while (0);
 if_cloners_count++;
}
void
if_clone_detach(struct if_clone *ifc)
{
 do { if ((ifc)->ifc_list.le_next != ((void *)0)) (ifc)->ifc_list.le_next->ifc_list.le_prev = (ifc)->ifc_list.le_prev; *(ifc)->ifc_list.le_prev = (ifc)->ifc_list.le_next; ((ifc)->ifc_list.le_prev) = ((void *)-1); ((ifc)->ifc_list.le_next) = ((void *)-1); } while (0);
 if_cloners_count--;
}
int
if_clone_list(struct if_clonereq *ifcr)
{
 char outbuf[16], *dst;
 struct if_clone *ifc;
 int count, error = 0;
 ifcr->ifcr_total = if_cloners_count;
 if ((dst = ifcr->ifcr_buffer) == ((void *)0)) {
  return (0);
 }
 if (ifcr->ifcr_count < 0)
  return (22);
 count = (if_cloners_count < ifcr->ifcr_count) ?
     if_cloners_count : ifcr->ifcr_count;
 for((ifc) = ((&if_cloners)->lh_first); (ifc)!= ((void *)0); (ifc) = ((ifc)->ifc_list.le_next)) {
  if (count == 0)
   break;
  __builtin_bzero((outbuf), (sizeof outbuf));
  strlcpy(outbuf, ifc->ifc_name, 16);
  error = copyout(outbuf, dst, 16);
  if (error)
   break;
  count--;
  dst += 16;
 }
 return (error);
}
void
if_congestion(void)
{
 extern int ticks;
 ifq_congestion = ticks;
}
int
if_congested(void)
{
 extern int ticks;
 int diff;
 diff = ticks - ifq_congestion;
 if (diff < 0) {
  ifq_congestion = ticks - hz;
  return (0);
 }
 return (diff <= (hz / 100));
}
struct ifaddr *
ifa_ifwithaddr(struct sockaddr *addr, u_int rtableid)
{
 struct ifnet *ifp;
 struct ifaddr *ifa;
 u_int rdomain;
 ((_kernel_lock_held()) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../net/if.c", 1378, "_kernel_lock_held()"));
 rdomain = rtable_l2(rtableid);
 for((ifp) = ((&ifnet)->tqh_first); (ifp) != ((void *)0); (ifp) = ((ifp)->if_list.tqe_next)) {
  if (ifp->if_data.ifi_rdomain != rdomain)
   continue;
  for((ifa) = ((&ifp->if_addrlist)->tqh_first); (ifa) != ((void *)0); (ifa) = ((ifa)->ifa_list.tqe_next)) {
   if (ifa->ifa_addr->sa_family != addr->sa_family)
    continue;
   if ((__builtin_bcmp(((caddr_t)(addr)), ((caddr_t)(ifa->ifa_addr)), ((addr)->sa_len)) == 0))
    return (ifa);
  }
 }
 return (((void *)0));
}
struct ifaddr *
ifa_ifwithdstaddr(struct sockaddr *addr, u_int rdomain)
{
 struct ifnet *ifp;
 struct ifaddr *ifa;
 ((_kernel_lock_held()) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../net/if.c", 1404, "_kernel_lock_held()"));
 rdomain = rtable_l2(rdomain);
 for((ifp) = ((&ifnet)->tqh_first); (ifp) != ((void *)0); (ifp) = ((ifp)->if_list.tqe_next)) {
  if (ifp->if_data.ifi_rdomain != rdomain)
   continue;
  if (ifp->if_flags & 0x10) {
   for((ifa) = ((&ifp->if_addrlist)->tqh_first); (ifa) != ((void *)0); (ifa) = ((ifa)->ifa_list.tqe_next)) {
    if (ifa->ifa_addr->sa_family !=
        addr->sa_family || ifa->ifa_dstaddr == ((void *)0))
     continue;
    if ((__builtin_bcmp(((caddr_t)(addr)), ((caddr_t)(ifa->ifa_dstaddr)), ((addr)->sa_len)) == 0))
     return (ifa);
   }
  }
 }
 return (((void *)0));
}
struct ifaddr *
ifaof_ifpforaddr(struct sockaddr *addr, struct ifnet *ifp)
{
 struct ifaddr *ifa;
 char *cp, *cp2, *cp3;
 char *cplim;
 struct ifaddr *ifa_maybe = ((void *)0);
 u_int af = addr->sa_family;
 if (af >= 36)
  return (((void *)0));
 for((ifa) = ((&ifp->if_addrlist)->tqh_first); (ifa) != ((void *)0); (ifa) = ((ifa)->ifa_list.tqe_next)) {
  if (ifa->ifa_addr->sa_family != af)
   continue;
  if (ifa_maybe == ((void *)0))
   ifa_maybe = ifa;
  if (ifa->ifa_netmask == 0 || ifp->if_flags & 0x10) {
   if ((__builtin_bcmp(((caddr_t)(addr)), ((caddr_t)(ifa->ifa_addr)), ((addr)->sa_len)) == 0) ||
       (ifa->ifa_dstaddr && (__builtin_bcmp(((caddr_t)(addr)), ((caddr_t)(ifa->ifa_dstaddr)), ((addr)->sa_len)) == 0)))
    return (ifa);
   continue;
  }
  cp = addr->sa_data;
  cp2 = ifa->ifa_addr->sa_data;
  cp3 = ifa->ifa_netmask->sa_data;
  cplim = ifa->ifa_netmask->sa_len + (char *)ifa->ifa_netmask;
  for (; cp3 < cplim; cp3++)
   if ((*cp++ ^ *cp2++) & *cp3)
    break;
  if (cp3 == cplim)
   return (ifa);
 }
 return (ifa_maybe);
}
void
if_rtrequest_dummy(struct ifnet *ifp, int req, struct rtentry *rt)
{
}
void
p2p_rtrequest(struct ifnet *ifp, int req, struct rtentry *rt)
{
 struct ifnet *lo0ifp;
 struct ifaddr *ifa, *lo0ifa;
 switch (req) {
 case 0x1:
  if (!((rt->rt_flags) & (0x200000)))
   break;
  for((ifa) = ((&ifp->if_addrlist)->tqh_first); (ifa) != ((void *)0); (ifa) = ((ifa)->ifa_list.tqe_next)) {
   if (__builtin_memcmp((((rt)->rt_dest)), (ifa->ifa_addr), (((rt)->rt_dest)->sa_len)) == 0)
    break;
  }
  if (ifa == ((void *)0))
   break;
  ((ifa == rt->rt_ifa) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../net/if.c", 1490, "ifa == rt->rt_ifa"));
  lo0ifp = if_get(rtable_loindex(ifp->if_data.ifi_rdomain));
  ((lo0ifp != ((void *)0)) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../net/if.c", 1493, "lo0ifp != NULL"));
  for((lo0ifa) = ((&lo0ifp->if_addrlist)->tqh_first); (lo0ifa) != ((void *)0); (lo0ifa) = ((lo0ifa)->ifa_list.tqe_next)) {
   if (lo0ifa->ifa_addr->sa_family ==
       ifa->ifa_addr->sa_family)
    break;
  }
  if_put(lo0ifp);
  if (lo0ifa == ((void *)0))
   break;
  rt->rt_flags &= ~0x400;
  break;
 case 0x2:
 case 0xb:
 default:
  break;
 }
}
void
if_downall(void)
{
 struct ifreq ifrq;
 struct ifnet *ifp;
 do { _rw_enter_write(&netlock ); } while (0);
 for((ifp) = ((&ifnet)->tqh_first); (ifp) != ((void *)0); (ifp) = ((ifp)->if_list.tqe_next)) {
  if ((ifp->if_flags & 0x1) == 0)
   continue;
  if_down(ifp);
  if (ifp->if_ioctl) {
   ifrq.ifr_ifru.ifru_flags = ifp->if_flags;
   (void) (*ifp->if_ioctl)(ifp, ((unsigned long)0x80000000 | ((sizeof(struct ifreq) & 0x1fff) << 16) | ((('i')) << 8) | ((16))),
       (caddr_t)&ifrq);
  }
 }
 do { _rw_exit_write(&netlock ); } while (0);
}
void
if_down(struct ifnet *ifp)
{
 do { if (rw_status(&netlock) != 0x0001UL) splassert_fail(0x0001UL, rw_status(&netlock), __func__);} while (0);
 ifp->if_flags &= ~0x1;
 getmicrotime(&ifp->if_data.ifi_lastchange);
 do { (void)ifq_purge(&ifp->if_snd); } while ( 0);
 if_linkstate(ifp);
}
void
if_up(struct ifnet *ifp)
{
 do { if (rw_status(&netlock) != 0x0001UL) splassert_fail(0x0001UL, rw_status(&netlock), __func__);} while (0);
 ifp->if_flags |= 0x1;
 getmicrotime(&ifp->if_data.ifi_lastchange);
 if (ifp->if_index == rtable_loindex(ifp->if_data.ifi_rdomain))
  in6_ifattach(ifp);
 if_linkstate(ifp);
}
void
if_linkstate_task(void *xifidx)
{
 unsigned int ifidx = (unsigned long)xifidx;
 struct ifnet *ifp;
 _kernel_lock("/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../net/if.c", 1584);
 do { _rw_enter_write(&netlock ); } while (0);
 ifp = if_get(ifidx);
 if (ifp != ((void *)0))
  if_linkstate(ifp);
 if_put(ifp);
 do { _rw_exit_write(&netlock ); } while (0);
 _kernel_unlock();
}
void
if_linkstate(struct ifnet *ifp)
{
 do { if (rw_status(&netlock) != 0x0001UL) splassert_fail(0x0001UL, rw_status(&netlock), __func__);} while (0);
 rtm_ifchg(ifp);
 rt_if_track(ifp);
 dohooks(ifp->if_linkstatehooks, 0);
}
void
if_link_state_change(struct ifnet *ifp)
{
 task_add(softnettq, ifp->if_linkstatetask);
}
void
if_slowtimo(void *arg)
{
 struct ifnet *ifp = arg;
 int s = _splraise(6);
 if (ifp->if_watchdog) {
  if (ifp->if_timer > 0 && --ifp->if_timer == 0)
   task_add(softnettq, ifp->if_watchdogtask);
  timeout_add(ifp->if_slowtimo, hz / 1);
 }
 _splx(s);
}
void
if_watchdog_task(void *xifidx)
{
 unsigned int ifidx = (unsigned long)xifidx;
 struct ifnet *ifp;
 int s;
 ifp = if_get(ifidx);
 if (ifp == ((void *)0))
  return;
 _kernel_lock("/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../net/if.c", 1645);
 s = _splraise(6);
 if (ifp->if_watchdog)
  (*ifp->if_watchdog)(ifp);
 _splx(s);
 _kernel_unlock();
 if_put(ifp);
}
struct ifnet *
ifunit(const char *name)
{
 struct ifnet *ifp;
 for((ifp) = ((&ifnet)->tqh_first); (ifp) != ((void *)0); (ifp) = ((ifp)->if_list.tqe_next)) {
  if (strcmp(ifp->if_xname, name) == 0)
   return (ifp);
 }
 return (((void *)0));
}
struct ifnet *
if_get(unsigned int index)
{
 struct srp_ref sr;
 struct if_map *if_map;
 struct srp *map;
 struct ifnet *ifp = ((void *)0);
 if_map = srp_enter(&sr, &if_idxmap.map);
 if (index < if_map->limit) {
  map = (struct srp *)(if_map + 1);
  ifp = srp_follow(&sr, &map[index]);
  if (ifp != ((void *)0)) {
   ((ifp->if_index == index) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../net/if.c", 1687, "ifp->if_index == index"));
   if_ref(ifp);
  }
 }
 srp_leave(&sr);
 return (ifp);
}
struct ifnet *
if_ref(struct ifnet *ifp)
{
 refcnt_take(&ifp->if_refcnt);
 return (ifp);
}
void
if_put(struct ifnet *ifp)
{
 if (ifp == ((void *)0))
  return;
 refcnt_rele_wake(&ifp->if_refcnt);
}
int
if_setlladdr(struct ifnet *ifp, const uint8_t *lladdr)
{
 if (ifp->if_sadl == ((void *)0))
  return (22);
 __builtin_memcpy((((struct arpcom *)ifp)->ac_enaddr), (lladdr), (6));
 __builtin_memcpy((((caddr_t)((ifp->if_sadl)->sdl_data + (ifp->if_sadl)->sdl_nlen))), (lladdr), (6));
 return (0);
}
int
if_setrdomain(struct ifnet *ifp, int rdomain)
{
 struct ifreq ifr;
 int error, up = 0, s;
 if (rdomain < 0 || rdomain > 255)
  return (22);
 if (!rtable_exists(rdomain)) {
  struct ifnet *loifp;
  char loifname[16];
  unsigned int unit = rdomain;
  snprintf(loifname, sizeof(loifname), "lo%u", unit);
  error = if_clone_create(loifname, 0);
  if ((loifp = ifunit(loifname)) == ((void *)0))
   return (6);
  if (error && (ifp != loifp || error != 17))
   return (error);
  if ((error = rtable_add(rdomain)) == 0)
   rtable_l2set(rdomain, rdomain, loifp->if_index);
  if (error) {
   if_clone_destroy(loifname);
   return (error);
  }
  loifp->if_data.ifi_rdomain = rdomain;
 }
 if (rdomain != rtable_l2(rdomain))
  return (22);
 if (rdomain != ifp->if_data.ifi_rdomain) {
  s = _splraise(6);
  if (ifp->if_flags & 0x1) {
   up = 1;
   if_down(ifp);
  }
  rti_delete(ifp);
  vif_delete(ifp);
  in_ifdetach(ifp);
  in6_ifdetach(ifp);
  _splx(s);
 }
 ifr.ifr_ifru.ifru_metric = rdomain;
 if ((error = (*ifp->if_ioctl)(ifp, ((unsigned long)0x80000000 | ((sizeof(struct ifreq) & 0x1fff) << 16) | ((('i')) << 8) | ((159))),
     (caddr_t)&ifr)) != 25)
  return (error);
 error = 0;
 ifp->if_data.ifi_rdomain = rdomain;
 if (up) {
  s = _splraise(6);
  if_up(ifp);
  _splx(s);
 }
 return (0);
}
int
ifioctl(struct socket *so, u_long cmd, caddr_t data, struct proc *p)
{
 struct ifnet *ifp;
 struct ifreq *ifr;
 struct sockaddr_dl *sdl;
 struct ifgroupreq *ifgr;
 struct if_afreq *ifar;
 char ifdescrbuf[64];
 char ifrtlabelbuf[32];
 int s, error = 0, oif_xflags;
 size_t bytesdone;
 short oif_flags;
 const char *label;
 switch (cmd) {
 case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct ifconf) & 0x1fff) << 16) | ((('i')) << 8) | ((36))):
  return (ifconf(cmd, data));
 }
 ifr = (struct ifreq *)data;
 switch (cmd) {
 case ((unsigned long)0x80000000 | ((sizeof(struct ifreq) & 0x1fff) << 16) | ((('i')) << 8) | ((122))):
 case ((unsigned long)0x80000000 | ((sizeof(struct ifreq) & 0x1fff) << 16) | ((('i')) << 8) | ((121))):
  if ((error = suser(p, 0)) != 0)
   return (error);
  return ((cmd == ((unsigned long)0x80000000 | ((sizeof(struct ifreq) & 0x1fff) << 16) | ((('i')) << 8) | ((122)))) ?
      if_clone_create(ifr->ifr_name, 0) :
      if_clone_destroy(ifr->ifr_name));
 case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct if_clonereq) & 0x1fff) << 16) | ((('i')) << 8) | ((120))):
  return (if_clone_list((struct if_clonereq *)data));
 case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct ifgroupreq) & 0x1fff) << 16) | ((('i')) << 8) | ((138))):
  return (if_getgroupmembers(data));
 case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct ifgroupreq) & 0x1fff) << 16) | ((('i')) << 8) | ((139))):
  return (if_getgroupattribs(data));
 case ((unsigned long)0x80000000 | ((sizeof(struct ifgroupreq) & 0x1fff) << 16) | ((('i')) << 8) | ((140))):
  if ((error = suser(p, 0)) != 0)
   return (error);
  return (if_setgroupattribs(data));
 case ((unsigned long)0x80000000 | ((sizeof(struct if_afreq) & 0x1fff) << 16) | ((('i')) << 8) | ((171))):
 case ((unsigned long)0x80000000 | ((sizeof(struct if_afreq) & 0x1fff) << 16) | ((('i')) << 8) | ((172))):
  if ((error = suser(p, 0)) != 0)
   return (error);
  ifar = (struct if_afreq *)data;
  if ((ifp = ifunit(ifar->ifar_name)) == ((void *)0))
   return (6);
  oif_flags = ifp->if_flags;
  oif_xflags = ifp->if_xflags;
  switch (ifar->ifar_af) {
  case 2:
   if (cmd == ((unsigned long)0x80000000 | ((sizeof(struct if_afreq) & 0x1fff) << 16) | ((('i')) << 8) | ((172))))
    in_ifdetach(ifp);
   break;
  case 24:
   if (cmd == ((unsigned long)0x80000000 | ((sizeof(struct if_afreq) & 0x1fff) << 16) | ((('i')) << 8) | ((171))))
    error = in6_ifattach(ifp);
   else
    in6_ifdetach(ifp);
   break;
  default:
   return (47);
  }
  if (oif_flags != ifp->if_flags || oif_xflags != ifp->if_xflags)
   rtm_ifchg(ifp);
  return (error);
 }
 ifp = ifunit(ifr->ifr_name);
 if (ifp == 0)
  return (6);
 oif_flags = ifp->if_flags;
 switch (cmd) {
 case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct ifreq) & 0x1fff) << 16) | ((('i')) << 8) | ((17))):
  ifr->ifr_ifru.ifru_flags = ifp->if_flags;
  if (ifq_is_oactive(&ifp->if_snd))
   ifr->ifr_ifru.ifru_flags |= 0x400;
  break;
 case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct ifreq) & 0x1fff) << 16) | ((('i')) << 8) | ((158))):
  ifr->ifr_ifru.ifru_flags = ifp->if_xflags & ~(0x1|0x2);
  break;
 case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct ifreq) & 0x1fff) << 16) | ((('i')) << 8) | ((23))):
  ifr->ifr_ifru.ifru_metric = ifp->if_data.ifi_metric;
  break;
 case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct ifreq) & 0x1fff) << 16) | ((('i')) << 8) | ((126))):
  ifr->ifr_ifru.ifru_metric = ifp->if_data.ifi_mtu;
  break;
 case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct ifreq) & 0x1fff) << 16) | ((('i')) << 8) | ((165))):
  ifr->ifr_ifru.ifru_metric = ifp->if_hardmtu;
  break;
 case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct ifreq) & 0x1fff) << 16) | ((('i')) << 8) | ((27))): {
  struct if_data ifdata;
  if_getdata(ifp, &ifdata);
  error = copyout(&ifdata, ifr->ifr_ifru.ifru_data, sizeof(ifdata));
  break;
 }
 case ((unsigned long)0x80000000 | ((sizeof(struct ifreq) & 0x1fff) << 16) | ((('i')) << 8) | ((16))):
  if ((error = suser(p, 0)) != 0)
   return (error);
  ifp->if_flags = (ifp->if_flags & (0x2|0x10|0x40|0x400| 0x800|0x8000|0x200)) |
   (ifr->ifr_ifru.ifru_flags & ~(0x2|0x10|0x40|0x400| 0x800|0x8000|0x200));
  if (ifp->if_ioctl != ((void *)0)) {
   error = (*ifp->if_ioctl)(ifp, cmd, data);
   if (error != 0) {
    ifp->if_flags = oif_flags;
    break;
   }
  }
  if (((oif_flags ^ ifp->if_flags) & (0x1))) {
   s = _splraise(6);
   if (((ifp->if_flags) & (0x1)))
    if_up(ifp);
   else
    if_down(ifp);
   _splx(s);
  }
  break;
 case ((unsigned long)0x80000000 | ((sizeof(struct ifreq) & 0x1fff) << 16) | ((('i')) << 8) | ((157))):
  if ((error = suser(p, 0)) != 0)
   return (error);
  if (((ifr->ifr_ifru.ifru_flags) & (0x20))) {
   error = in6_ifattach(ifp);
   if (error != 0)
    return (error);
  }
  if (((ifr->ifr_ifru.ifru_flags) & (0x8)) &&
      !((ifp->if_xflags) & (0x8))) {
   s = _splraise(6);
   ifp->if_xflags |= 0x8;
   ifp->if_ll_output = ifp->if_output;
   ifp->if_output = mpls_output;
   _splx(s);
  }
  if (((ifp->if_xflags) & (0x8)) &&
      !((ifr->ifr_ifru.ifru_flags) & (0x8))) {
   s = _splraise(6);
   ifp->if_xflags &= ~0x8;
   ifp->if_output = ifp->if_ll_output;
   ifp->if_ll_output = ((void *)0);
   _splx(s);
  }
  if (ifp->if_data.ifi_capabilities & 0x00008000) {
   if (((ifr->ifr_ifru.ifru_flags) & (0x10)) &&
       !((ifp->if_xflags) & (0x10))) {
    s = _splraise(6);
    ifp->if_xflags |= 0x10;
    error = ifp->if_wol(ifp, 1);
    _splx(s);
    if (error)
     return (error);
   }
   if (((ifp->if_xflags) & (0x10)) &&
       !((ifr->ifr_ifru.ifru_flags) & (0x10))) {
    s = _splraise(6);
    ifp->if_xflags &= ~0x10;
    error = ifp->if_wol(ifp, 0);
    _splx(s);
    if (error)
     return (error);
   }
  } else if (((ifr->ifr_ifru.ifru_flags) & (0x10))) {
   ifr->ifr_ifru.ifru_flags &= ~0x10;
   error = 91;
  }
  ifp->if_xflags = (ifp->if_xflags & (0x1|0x2)) |
   (ifr->ifr_ifru.ifru_flags & ~(0x1|0x2));
  rtm_ifchg(ifp);
  break;
 case ((unsigned long)0x80000000 | ((sizeof(struct ifreq) & 0x1fff) << 16) | ((('i')) << 8) | ((24))):
  if ((error = suser(p, 0)) != 0)
   return (error);
  ifp->if_data.ifi_metric = ifr->ifr_ifru.ifru_metric;
  break;
 case ((unsigned long)0x80000000 | ((sizeof(struct ifreq) & 0x1fff) << 16) | ((('i')) << 8) | ((127))):
  if ((error = suser(p, 0)) != 0)
   return (error);
  if (ifp->if_ioctl == ((void *)0))
   return (45);
  error = (*ifp->if_ioctl)(ifp, cmd, data);
  if (!error)
   rtm_ifchg(ifp);
  break;
 case ((unsigned long)0x80000000 | ((sizeof(struct ifaliasreq) & 0x1fff) << 16) | ((('i')) << 8) | ((70))):
 case ((unsigned long)0x80000000 | ((sizeof(struct ifreq) & 0x1fff) << 16) | ((('i')) << 8) | ((73))):
 case ((unsigned long)0x80000000 | ((sizeof(struct in6_aliasreq) & 0x1fff) << 16) | ((('i')) << 8) | ((70))):
 case ((unsigned long)0x80000000 | ((sizeof(struct if_laddrreq) & 0x1fff) << 16) | ((('i')) << 8) | ((74))):
 case ((unsigned long)0x80000000 | ((sizeof(struct ifreq) & 0x1fff) << 16) | ((('i')) << 8) | ((161))):
 case ((unsigned long)0x80000000 | ((sizeof(struct ifreq) & 0x1fff) << 16) | ((('i')) << 8) | ((168))):
 case ((unsigned long)0x80000000 | ((sizeof(struct ifreq) & 0x1fff) << 16) | ((('i')) << 8) | ((49))):
 case ((unsigned long)0x80000000 | ((sizeof(struct ifreq) & 0x1fff) << 16) | ((('i')) << 8) | ((50))):
 case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct ifreq) & 0x1fff) << 16) | ((('i')) << 8) | ((55))):
 case ((unsigned long)0x80000000 | ((sizeof(struct ifreq) & 0x1fff) << 16) | ((('i')) << 8) | ((166))):
 case ((unsigned long)0x80000000 | ((sizeof(struct ifreq) & 0x1fff) << 16) | ((('i')) << 8) | ((176))):
 case ((unsigned long)0x80000000 | ((sizeof(struct if_parent) & 0x1fff) << 16) | ((('i')) << 8) | ((178))):
 case ((unsigned long)0x80000000 | ((sizeof(struct ifreq) & 0x1fff) << 16) | ((('i')) << 8) | ((180))):
  if ((error = suser(p, 0)) != 0)
   return (error);
 case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct ifreq) & 0x1fff) << 16) | ((('i')) << 8) | ((71))):
 case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct ifreq) & 0x1fff) << 16) | ((('i')) << 8) | ((72))):
 case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct if_laddrreq) & 0x1fff) << 16) | ((('i')) << 8) | ((75))):
 case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct ifreq) & 0x1fff) << 16) | ((('i')) << 8) | ((162))):
 case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct ifreq) & 0x1fff) << 16) | ((('i')) << 8) | ((169))):
 case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct ifmediareq) & 0x1fff) << 16) | ((('i')) << 8) | ((56))):
 case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct ifreq) & 0x1fff) << 16) | ((('i')) << 8) | ((167))):
 case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct ifreq) & 0x1fff) << 16) | ((('i')) << 8) | ((177))):
 case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct if_parent) & 0x1fff) << 16) | ((('i')) << 8) | ((179))):
  if (ifp->if_ioctl == 0)
   return (45);
  error = (*ifp->if_ioctl)(ifp, cmd, data);
  break;
 case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct ifreq) & 0x1fff) << 16) | ((('i')) << 8) | ((129))):
  strlcpy(ifdescrbuf, ifp->if_description, 64);
  error = copyoutstr(ifdescrbuf, ifr->ifr_ifru.ifru_data, 64,
      &bytesdone);
  break;
 case ((unsigned long)0x80000000 | ((sizeof(struct ifreq) & 0x1fff) << 16) | ((('i')) << 8) | ((128))):
  if ((error = suser(p, 0)) != 0)
   return (error);
  error = copyinstr(ifr->ifr_ifru.ifru_data, ifdescrbuf,
      64, &bytesdone);
  if (error == 0) {
   (void)__builtin_memset((ifp->if_description), (0), (64));
   strlcpy(ifp->if_description, ifdescrbuf, 64);
  }
  break;
 case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct ifreq) & 0x1fff) << 16) | ((('i')) << 8) | ((131))):
  if (ifp->if_rtlabelid &&
      (label = rtlabel_id2name(ifp->if_rtlabelid)) != ((void *)0)) {
   strlcpy(ifrtlabelbuf, label, 32);
   error = copyoutstr(ifrtlabelbuf, ifr->ifr_ifru.ifru_data,
       32, &bytesdone);
  } else
   error = 2;
  break;
 case ((unsigned long)0x80000000 | ((sizeof(struct ifreq) & 0x1fff) << 16) | ((('i')) << 8) | ((130))):
  if ((error = suser(p, 0)) != 0)
   return (error);
  error = copyinstr(ifr->ifr_ifru.ifru_data, ifrtlabelbuf,
      32, &bytesdone);
  if (error == 0) {
   rtlabel_unref(ifp->if_rtlabelid);
   ifp->if_rtlabelid = rtlabel_name2id(ifrtlabelbuf);
  }
  break;
 case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct ifreq) & 0x1fff) << 16) | ((('i')) << 8) | ((156))):
  ifr->ifr_ifru.ifru_metric = ifp->if_priority;
  break;
 case ((unsigned long)0x80000000 | ((sizeof(struct ifreq) & 0x1fff) << 16) | ((('i')) << 8) | ((155))):
  if ((error = suser(p, 0)) != 0)
   return (error);
  if (ifr->ifr_ifru.ifru_metric < 0 || ifr->ifr_ifru.ifru_metric > 15)
   return (22);
  ifp->if_priority = ifr->ifr_ifru.ifru_metric;
  break;
 case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct ifreq) & 0x1fff) << 16) | ((('i')) << 8) | ((160))):
  ifr->ifr_ifru.ifru_metric = ifp->if_data.ifi_rdomain;
  break;
 case ((unsigned long)0x80000000 | ((sizeof(struct ifreq) & 0x1fff) << 16) | ((('i')) << 8) | ((159))):
  if ((error = suser(p, 0)) != 0)
   return (error);
  if ((error = if_setrdomain(ifp, ifr->ifr_ifru.ifru_metric)) != 0)
   return (error);
  break;
 case ((unsigned long)0x80000000 | ((sizeof(struct ifgroupreq) & 0x1fff) << 16) | ((('i')) << 8) | ((135))):
  if ((error = suser(p, 0)))
   return (error);
  ifgr = (struct ifgroupreq *)data;
  if ((error = if_addgroup(ifp, ifgr->ifgr_ifgru.ifgru_group)))
   return (error);
  (*ifp->if_ioctl)(ifp, cmd, data);
  break;
 case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct ifgroupreq) & 0x1fff) << 16) | ((('i')) << 8) | ((136))):
  if ((error = if_getgroup(data, ifp)))
   return (error);
  break;
 case ((unsigned long)0x80000000 | ((sizeof(struct ifgroupreq) & 0x1fff) << 16) | ((('i')) << 8) | ((137))):
  if ((error = suser(p, 0)))
   return (error);
  (*ifp->if_ioctl)(ifp, cmd, data);
  ifgr = (struct ifgroupreq *)data;
  if ((error = if_delgroup(ifp, ifgr->ifgr_ifgru.ifgru_group)))
   return (error);
  break;
 case ((unsigned long)0x80000000 | ((sizeof(struct ifreq) & 0x1fff) << 16) | ((('i')) << 8) | ((31))):
  if ((error = suser(p, 0)))
   return (error);
  sdl = ifp->if_sadl;
  if (sdl == ((void *)0))
   return (22);
  if (ifr->ifr_ifru.ifru_addr.sa_len != 6)
   return (22);
  if ((*(ifr->ifr_ifru.ifru_addr.sa_data) & 0x01))
   return (22);
  switch (ifp->if_data.ifi_type) {
  case 0x06:
  case 0xf7:
  case 0x1a:
  case 0x09:
   if_setlladdr(ifp, ifr->ifr_ifru.ifru_addr.sa_data);
   error = (*ifp->if_ioctl)(ifp, cmd, data);
   if (error == 25)
    error = 0;
   break;
  default:
   return (19);
  }
  ifnewlladdr(ifp);
  break;
 case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct ifreq) & 0x1fff) << 16) | ((('i')) << 8) | ((182))):
  ifr->ifr_ifru.ifru_metric = ifp->if_llprio;
  break;
 case ((unsigned long)0x80000000 | ((sizeof(struct ifreq) & 0x1fff) << 16) | ((('i')) << 8) | ((181))):
  if ((error = suser(p, 0)))
   return (error);
  if (ifr->ifr_ifru.ifru_metric > 0xff)
   return (22);
  ifp->if_llprio = ifr->ifr_ifru.ifru_metric;
  break;
 default:
  error = ((*so->so_proto->pr_usrreq)(so, 11,
   (struct mbuf *) cmd, (struct mbuf *) data,
   (struct mbuf *) ifp, p));
  break;
 }
 if (((oif_flags ^ ifp->if_flags) & 0x1) != 0)
  getmicrotime(&ifp->if_data.ifi_lastchange);
 return (error);
}
int
ifconf(u_long cmd, caddr_t data)
{
 struct ifconf *ifc = (struct ifconf *)data;
 struct ifnet *ifp;
 struct ifaddr *ifa;
 struct ifreq ifr, *ifrp;
 int space = ifc->ifc_len, error = 0;
 if (space == 0) {
  for((ifp) = ((&ifnet)->tqh_first); (ifp) != ((void *)0); (ifp) = ((ifp)->if_list.tqe_next)) {
   struct sockaddr *sa;
   if ((((&ifp->if_addrlist)->tqh_first) == ((void *)0)))
    space += sizeof (ifr);
   else
    for((ifa) = ((&ifp->if_addrlist)->tqh_first); (ifa) != ((void *)0); (ifa) = ((ifa)->ifa_list.tqe_next)) {
     sa = ifa->ifa_addr;
     if (sa->sa_len > sizeof(*sa))
      space += sa->sa_len -
          sizeof(*sa);
     space += sizeof(ifr);
    }
  }
  ifc->ifc_len = space;
  return (0);
 }
 ifrp = ifc->ifc_ifcu.ifcu_req;
 for((ifp) = ((&ifnet)->tqh_first); (ifp) != ((void *)0); (ifp) = ((ifp)->if_list.tqe_next)) {
  if (space < sizeof(ifr))
   break;
  __builtin_bcopy((ifp->if_xname), (ifr.ifr_name), (16));
  if ((((&ifp->if_addrlist)->tqh_first) == ((void *)0))) {
   __builtin_bzero(((caddr_t)&ifr.ifr_ifru.ifru_addr), (sizeof(ifr.ifr_ifru.ifru_addr)));
   error = copyout((caddr_t)&ifr, (caddr_t)ifrp,
       sizeof(ifr));
   if (error)
    break;
   space -= sizeof (ifr), ifrp++;
  } else
   for((ifa) = ((&ifp->if_addrlist)->tqh_first); (ifa) != ((void *)0); (ifa) = ((ifa)->ifa_list.tqe_next)) {
    struct sockaddr *sa = ifa->ifa_addr;
    if (space < sizeof(ifr))
     break;
    if (sa->sa_len <= sizeof(*sa)) {
     ifr.ifr_ifru.ifru_addr = *sa;
     error = copyout((caddr_t)&ifr,
         (caddr_t)ifrp, sizeof (ifr));
     ifrp++;
    } else {
     space -= sa->sa_len - sizeof(*sa);
     if (space < sizeof (ifr))
      break;
     error = copyout((caddr_t)&ifr,
         (caddr_t)ifrp,
         sizeof(ifr.ifr_name));
     if (error == 0)
      error = copyout((caddr_t)sa,
          (caddr_t)&ifrp->ifr_ifru.ifru_addr,
          sa->sa_len);
     ifrp = (struct ifreq *)(sa->sa_len +
         (caddr_t)&ifrp->ifr_ifru.ifru_addr);
    }
    if (error)
     break;
    space -= sizeof (ifr);
   }
 }
 ifc->ifc_len -= space;
 return (error);
}
void
if_getdata(struct ifnet *ifp, struct if_data *data)
{
 unsigned int i;
 struct ifqueue *ifq;
 uint64_t opackets = 0;
 uint64_t obytes = 0;
 uint64_t omcasts = 0;
 uint64_t oqdrops = 0;
 for (i = 0; i < ifp->if_nifqs; i++) {
  ifq = ifp->if_ifqs[i];
  __mtx_enter(&ifq->ifq_mtx );
  opackets += ifq->ifq_packets;
  obytes += ifq->ifq_bytes;
  oqdrops += ifq->ifq_qdrops;
  omcasts += ifq->ifq_mcasts;
  __mtx_leave(&ifq->ifq_mtx );
 }
 *data = ifp->if_data;
 data->ifi_opackets += opackets;
 data->ifi_obytes += obytes;
 data->ifi_oqdrops += oqdrops;
 data->ifi_omcasts += omcasts;
}
void
if_detached_qstart(struct ifqueue *ifq)
{
 ifq_purge(ifq);
}
int
if_detached_ioctl(struct ifnet *ifp, u_long a, caddr_t b)
{
 return 19;
}
struct ifg_group *
if_creategroup(const char *groupname)
{
 struct ifg_group *ifg;
 if ((ifg = malloc(sizeof(*ifg), 127, 0x0002)) == ((void *)0))
  return (((void *)0));
 strlcpy(ifg->ifg_group, groupname, sizeof(ifg->ifg_group));
 ifg->ifg_refcnt = 0;
 ifg->ifg_carp_demoted = 0;
 do { (&ifg->ifg_members)->tqh_first = ((void *)0); (&ifg->ifg_members)->tqh_last = &(&ifg->ifg_members)->tqh_first; } while (0);
 pfi_attach_ifgroup(ifg);
 do { (ifg)->ifg_next.tqe_next = ((void *)0); (ifg)->ifg_next.tqe_prev = (&ifg_head)->tqh_last; *(&ifg_head)->tqh_last = (ifg); (&ifg_head)->tqh_last = &(ifg)->ifg_next.tqe_next; } while (0);
 return (ifg);
}
int
if_addgroup(struct ifnet *ifp, const char *groupname)
{
 struct ifg_list *ifgl;
 struct ifg_group *ifg = ((void *)0);
 struct ifg_member *ifgm;
 if (groupname[0] && groupname[strlen(groupname) - 1] >= '0' &&
     groupname[strlen(groupname) - 1] <= '9')
  return (22);
 for((ifgl) = ((&ifp->if_groups)->tqh_first); (ifgl) != ((void *)0); (ifgl) = ((ifgl)->ifgl_next.tqe_next))
  if (!strcmp(ifgl->ifgl_group->ifg_group, groupname))
   return (17);
 if ((ifgl = malloc(sizeof(*ifgl), 127, 0x0002)) == ((void *)0))
  return (12);
 if ((ifgm = malloc(sizeof(*ifgm), 127, 0x0002)) == ((void *)0)) {
  free(ifgl, 127, sizeof(*ifgl));
  return (12);
 }
 for((ifg) = ((&ifg_head)->tqh_first); (ifg) != ((void *)0); (ifg) = ((ifg)->ifg_next.tqe_next))
  if (!strcmp(ifg->ifg_group, groupname))
   break;
 if (ifg == ((void *)0) && (ifg = if_creategroup(groupname)) == ((void *)0)) {
  free(ifgl, 127, sizeof(*ifgl));
  free(ifgm, 127, sizeof(*ifgm));
  return (12);
 }
 ifg->ifg_refcnt++;
 ifgl->ifgl_group = ifg;
 ifgm->ifgm_ifp = ifp;
 do { (ifgm)->ifgm_next.tqe_next = ((void *)0); (ifgm)->ifgm_next.tqe_prev = (&ifg->ifg_members)->tqh_last; *(&ifg->ifg_members)->tqh_last = (ifgm); (&ifg->ifg_members)->tqh_last = &(ifgm)->ifgm_next.tqe_next; } while (0);
 do { (ifgl)->ifgl_next.tqe_next = ((void *)0); (ifgl)->ifgl_next.tqe_prev = (&ifp->if_groups)->tqh_last; *(&ifp->if_groups)->tqh_last = (ifgl); (&ifp->if_groups)->tqh_last = &(ifgl)->ifgl_next.tqe_next; } while (0);
 pfi_group_change(groupname);
 return (0);
}
int
if_delgroup(struct ifnet *ifp, const char *groupname)
{
 struct ifg_list *ifgl;
 struct ifg_member *ifgm;
 for((ifgl) = ((&ifp->if_groups)->tqh_first); (ifgl) != ((void *)0); (ifgl) = ((ifgl)->ifgl_next.tqe_next))
  if (!strcmp(ifgl->ifgl_group->ifg_group, groupname))
   break;
 if (ifgl == ((void *)0))
  return (2);
 do { if (((ifgl)->ifgl_next.tqe_next) != ((void *)0)) (ifgl)->ifgl_next.tqe_next->ifgl_next.tqe_prev = (ifgl)->ifgl_next.tqe_prev; else (&ifp->if_groups)->tqh_last = (ifgl)->ifgl_next.tqe_prev; *(ifgl)->ifgl_next.tqe_prev = (ifgl)->ifgl_next.tqe_next; ((ifgl)->ifgl_next.tqe_prev) = ((void *)-1); ((ifgl)->ifgl_next.tqe_next) = ((void *)-1); } while (0);
 for((ifgm) = ((&ifgl->ifgl_group->ifg_members)->tqh_first); (ifgm) != ((void *)0); (ifgm) = ((ifgm)->ifgm_next.tqe_next))
  if (ifgm->ifgm_ifp == ifp)
   break;
 if (ifgm != ((void *)0)) {
  do { if (((ifgm)->ifgm_next.tqe_next) != ((void *)0)) (ifgm)->ifgm_next.tqe_next->ifgm_next.tqe_prev = (ifgm)->ifgm_next.tqe_prev; else (&ifgl->ifgl_group->ifg_members)->tqh_last = (ifgm)->ifgm_next.tqe_prev; *(ifgm)->ifgm_next.tqe_prev = (ifgm)->ifgm_next.tqe_next; ((ifgm)->ifgm_next.tqe_prev) = ((void *)-1); ((ifgm)->ifgm_next.tqe_next) = ((void *)-1); } while (0);
  free(ifgm, 127, sizeof(*ifgm));
 }
 if (--ifgl->ifgl_group->ifg_refcnt == 0) {
  do { if (((ifgl->ifgl_group)->ifg_next.tqe_next) != ((void *)0)) (ifgl->ifgl_group)->ifg_next.tqe_next->ifg_next.tqe_prev = (ifgl->ifgl_group)->ifg_next.tqe_prev; else (&ifg_head)->tqh_last = (ifgl->ifgl_group)->ifg_next.tqe_prev; *(ifgl->ifgl_group)->ifg_next.tqe_prev = (ifgl->ifgl_group)->ifg_next.tqe_next; ((ifgl->ifgl_group)->ifg_next.tqe_prev) = ((void *)-1); ((ifgl->ifgl_group)->ifg_next.tqe_next) = ((void *)-1); } while (0);
  pfi_detach_ifgroup(ifgl->ifgl_group);
  free(ifgl->ifgl_group, 127, 0);
 }
 free(ifgl, 127, sizeof(*ifgl));
 pfi_group_change(groupname);
 return (0);
}
int
if_getgroup(caddr_t data, struct ifnet *ifp)
{
 int len, error;
 struct ifg_list *ifgl;
 struct ifg_req ifgrq, *ifgp;
 struct ifgroupreq *ifgr = (struct ifgroupreq *)data;
 if (ifgr->ifgr_len == 0) {
  for((ifgl) = ((&ifp->if_groups)->tqh_first); (ifgl) != ((void *)0); (ifgl) = ((ifgl)->ifgl_next.tqe_next))
   ifgr->ifgr_len += sizeof(struct ifg_req);
  return (0);
 }
 len = ifgr->ifgr_len;
 ifgp = ifgr->ifgr_ifgru.ifgru_groups;
 for((ifgl) = ((&ifp->if_groups)->tqh_first); (ifgl) != ((void *)0); (ifgl) = ((ifgl)->ifgl_next.tqe_next)) {
  if (len < sizeof(ifgrq))
   return (22);
  __builtin_bzero((&ifgrq), (sizeof ifgrq));
  strlcpy(ifgrq.ifgrq_ifgrqu.ifgrqu_group, ifgl->ifgl_group->ifg_group,
      sizeof(ifgrq.ifgrq_ifgrqu.ifgrqu_group));
  if ((error = copyout((caddr_t)&ifgrq, (caddr_t)ifgp,
      sizeof(struct ifg_req))))
   return (error);
  len -= sizeof(ifgrq);
  ifgp++;
 }
 return (0);
}
int
if_getgroupmembers(caddr_t data)
{
 struct ifgroupreq *ifgr = (struct ifgroupreq *)data;
 struct ifg_group *ifg;
 struct ifg_member *ifgm;
 struct ifg_req ifgrq, *ifgp;
 int len, error;
 for((ifg) = ((&ifg_head)->tqh_first); (ifg) != ((void *)0); (ifg) = ((ifg)->ifg_next.tqe_next))
  if (!strcmp(ifg->ifg_group, ifgr->ifgr_name))
   break;
 if (ifg == ((void *)0))
  return (2);
 if (ifgr->ifgr_len == 0) {
  for((ifgm) = ((&ifg->ifg_members)->tqh_first); (ifgm) != ((void *)0); (ifgm) = ((ifgm)->ifgm_next.tqe_next))
   ifgr->ifgr_len += sizeof(ifgrq);
  return (0);
 }
 len = ifgr->ifgr_len;
 ifgp = ifgr->ifgr_ifgru.ifgru_groups;
 for((ifgm) = ((&ifg->ifg_members)->tqh_first); (ifgm) != ((void *)0); (ifgm) = ((ifgm)->ifgm_next.tqe_next)) {
  if (len < sizeof(ifgrq))
   return (22);
  __builtin_bzero((&ifgrq), (sizeof ifgrq));
  strlcpy(ifgrq.ifgrq_ifgrqu.ifgrqu_member, ifgm->ifgm_ifp->if_xname,
      sizeof(ifgrq.ifgrq_ifgrqu.ifgrqu_member));
  if ((error = copyout((caddr_t)&ifgrq, (caddr_t)ifgp,
      sizeof(struct ifg_req))))
   return (error);
  len -= sizeof(ifgrq);
  ifgp++;
 }
 return (0);
}
int
if_getgroupattribs(caddr_t data)
{
 struct ifgroupreq *ifgr = (struct ifgroupreq *)data;
 struct ifg_group *ifg;
 for((ifg) = ((&ifg_head)->tqh_first); (ifg) != ((void *)0); (ifg) = ((ifg)->ifg_next.tqe_next))
  if (!strcmp(ifg->ifg_group, ifgr->ifgr_name))
   break;
 if (ifg == ((void *)0))
  return (2);
 ifgr->ifgr_ifgru.ifgru_attrib.ifg_carp_demoted = ifg->ifg_carp_demoted;
 return (0);
}
int
if_setgroupattribs(caddr_t data)
{
 struct ifgroupreq *ifgr = (struct ifgroupreq *)data;
 struct ifg_group *ifg;
 struct ifg_member *ifgm;
 int demote;
 for((ifg) = ((&ifg_head)->tqh_first); (ifg) != ((void *)0); (ifg) = ((ifg)->ifg_next.tqe_next))
  if (!strcmp(ifg->ifg_group, ifgr->ifgr_name))
   break;
 if (ifg == ((void *)0))
  return (2);
 demote = ifgr->ifgr_ifgru.ifgru_attrib.ifg_carp_demoted;
 if (demote + ifg->ifg_carp_demoted > 0xff ||
     demote + ifg->ifg_carp_demoted < 0)
  return (22);
 ifg->ifg_carp_demoted += demote;
 for((ifgm) = ((&ifg->ifg_members)->tqh_first); (ifgm) != ((void *)0); (ifgm) = ((ifgm)->ifgm_next.tqe_next))
  if (ifgm->ifgm_ifp->if_ioctl)
   ifgm->ifgm_ifp->if_ioctl(ifgm->ifgm_ifp,
       ((unsigned long)0x80000000 | ((sizeof(struct ifgroupreq) & 0x1fff) << 16) | ((('i')) << 8) | ((140))), data);
 return (0);
}
void
if_group_routechange(struct sockaddr *dst, struct sockaddr *mask)
{
 switch (dst->sa_family) {
 case 2:
  if (satosin(dst)->sin_addr.s_addr == ((u_int32_t) ((__uint32_t)((u_int32_t)(0x00000000)))) &&
      mask && (mask->sa_len == 0 ||
      satosin(mask)->sin_addr.s_addr == ((u_int32_t) ((__uint32_t)((u_int32_t)(0x00000000))))))
   if_group_egress_build();
  break;
 case 24:
  if ((__builtin_memcmp((&(&(satosin6(dst))->sin6_addr)->__u6_addr.__u6_addr8[0]), (&(&in6addr_any)->__u6_addr.__u6_addr8[0]), (sizeof(struct in6_addr))) == 0) && mask && (mask->sa_len == 0 ||
      (__builtin_memcmp((&(&(satosin6(mask))->sin6_addr)->__u6_addr.__u6_addr8[0]), (&(&in6addr_any)->__u6_addr.__u6_addr8[0]), (sizeof(struct in6_addr))) == 0)))
   if_group_egress_build();
  break;
 }
}
int
if_group_egress_build(void)
{
 struct ifnet *ifp;
 struct ifg_group *ifg;
 struct ifg_member *ifgm, *next;
 struct sockaddr_in sa_in;
 struct sockaddr_in6 sa_in6;
 struct rtentry *rt;
 for((ifg) = ((&ifg_head)->tqh_first); (ifg) != ((void *)0); (ifg) = ((ifg)->ifg_next.tqe_next))
  if (!strcmp(ifg->ifg_group, "egress"))
   break;
 if (ifg != ((void *)0))
  for ((ifgm) = ((&ifg->ifg_members)->tqh_first); (ifgm) != ((void *)0) && ((next) = ((ifgm)->ifgm_next.tqe_next), 1); (ifgm) = (next))
   if_delgroup(ifgm->ifgm_ifp, "egress");
 __builtin_bzero((&sa_in), (sizeof(sa_in)));
 sa_in.sin_len = sizeof(sa_in);
 sa_in.sin_family = 2;
 rt = rtable_lookup(0, sintosa(&sa_in), sintosa(&sa_in), ((void *)0), 64);
 while (rt != ((void *)0)) {
  ifp = if_get(rt->rt_ifidx);
  if (ifp != ((void *)0)) {
   if_addgroup(ifp, "egress");
   if_put(ifp);
  }
  rt = rtable_iterate(rt);
 }
 __builtin_bcopy((&sa6_any), (&sa_in6), (sizeof(sa_in6)));
 rt = rtable_lookup(0, sin6tosa(&sa_in6), sin6tosa(&sa_in6), ((void *)0),
     64);
 while (rt != ((void *)0)) {
  ifp = if_get(rt->rt_ifidx);
  if (ifp != ((void *)0)) {
   if_addgroup(ifp, "egress");
   if_put(ifp);
  }
  rt = rtable_iterate(rt);
 }
 return (0);
}
int
ifpromisc(struct ifnet *ifp, int pswitch)
{
 struct ifreq ifr;
 if (pswitch) {
  if ((ifp->if_flags & 0x1) == 0)
   return (50);
  if (ifp->if_pcount++ != 0)
   return (0);
  ifp->if_flags |= 0x100;
 } else {
  if (--ifp->if_pcount > 0)
   return (0);
  ifp->if_flags &= ~0x100;
  if ((ifp->if_flags & 0x1) == 0)
   return (0);
 }
 ifr.ifr_ifru.ifru_flags = ifp->if_flags;
 return ((*ifp->if_ioctl)(ifp, ((unsigned long)0x80000000 | ((sizeof(struct ifreq) & 0x1fff) << 16) | ((('i')) << 8) | ((16))), (caddr_t)&ifr));
}
int
sysctl_mq(int *name, u_int namelen, void *oldp, size_t *oldlenp,
    void *newp, size_t newlen, struct mbuf_queue *mq)
{
 if (namelen != 1)
  return (20);
 switch (name[0]) {
 case 1:
  return (sysctl_rdint(oldp, oldlenp, newp, ((&(mq)->mq_list)->ml_len)));
 case 2:
  return (sysctl_int(oldp, oldlenp, newp, newlen,
      &mq->mq_maxlen));
 case 3:
  return (sysctl_rdint(oldp, oldlenp, newp, ((mq)->mq_drops)));
 default:
  return (45);
 }
}
void
ifa_add(struct ifnet *ifp, struct ifaddr *ifa)
{
 do { (ifa)->ifa_list.tqe_next = ((void *)0); (ifa)->ifa_list.tqe_prev = (&ifp->if_addrlist)->tqh_last; *(&ifp->if_addrlist)->tqh_last = (ifa); (&ifp->if_addrlist)->tqh_last = &(ifa)->ifa_list.tqe_next; } while (0);
}
void
ifa_del(struct ifnet *ifp, struct ifaddr *ifa)
{
 do { if (((ifa)->ifa_list.tqe_next) != ((void *)0)) (ifa)->ifa_list.tqe_next->ifa_list.tqe_prev = (ifa)->ifa_list.tqe_prev; else (&ifp->if_addrlist)->tqh_last = (ifa)->ifa_list.tqe_prev; *(ifa)->ifa_list.tqe_prev = (ifa)->ifa_list.tqe_next; ((ifa)->ifa_list.tqe_prev) = ((void *)-1); ((ifa)->ifa_list.tqe_next) = ((void *)-1); } while (0);
}
void
ifa_update_broadaddr(struct ifnet *ifp, struct ifaddr *ifa, struct sockaddr *sa)
{
 if (ifa->ifa_dstaddr->sa_len != sa->sa_len)
  panic("ifa_update_broadaddr does not support dynamic length");
 __builtin_bcopy((sa), (ifa->ifa_dstaddr), (sa->sa_len));
}
void
ifa_print_all(void)
{
 struct ifnet *ifp;
 struct ifaddr *ifa;
 for((ifp) = ((&ifnet)->tqh_first); (ifp) != ((void *)0); (ifp) = ((ifp)->if_list.tqe_next)) {
  for((ifa) = ((&ifp->if_addrlist)->tqh_first); (ifa) != ((void *)0); (ifa) = ((ifa)->ifa_list.tqe_next)) {
   char addr[46];
   switch (ifa->ifa_addr->sa_family) {
   case 2:
    printf("%s", inet_ntop(2,
        &satosin(ifa->ifa_addr)->sin_addr,
        addr, sizeof(addr)));
    break;
   case 24:
    printf("%s", inet_ntop(24,
        &(satosin6(ifa->ifa_addr))->sin6_addr,
        addr, sizeof(addr)));
    break;
   }
   printf(" on %s\n", ifp->if_xname);
  }
 }
}
void
ifnewlladdr(struct ifnet *ifp)
{
 struct ifaddr *ifa;
 struct ifreq ifrq;
 short up;
 int s;
 s = _splraise(6);
 up = ifp->if_flags & 0x1;
 if (up) {
  ifp->if_flags &= ~0x1;
  ifrq.ifr_ifru.ifru_flags = ifp->if_flags;
  (*ifp->if_ioctl)(ifp, ((unsigned long)0x80000000 | ((sizeof(struct ifreq) & 0x1fff) << 16) | ((('i')) << 8) | ((16))), (caddr_t)&ifrq);
 }
 ifp->if_flags |= 0x1;
 ifrq.ifr_ifru.ifru_flags = ifp->if_flags;
 (*ifp->if_ioctl)(ifp, ((unsigned long)0x80000000 | ((sizeof(struct ifreq) & 0x1fff) << 16) | ((('i')) << 8) | ((16))), (caddr_t)&ifrq);
 if (!ip6_forwarding) {
  ifa = &in6ifa_ifpforlinklocal(ifp, 0)->ia_ifa;
  if (ifa) {
   in6_purgeaddr(ifa);
   dohooks(ifp->if_addrhooks, 0);
   in6_ifattach(ifp);
  }
 }
 if (!up) {
  ifp->if_flags &= ~0x1;
  ifrq.ifr_ifru.ifru_flags = ifp->if_flags;
  (*ifp->if_ioctl)(ifp, ((unsigned long)0x80000000 | ((sizeof(struct ifreq) & 0x1fff) << 16) | ((('i')) << 8) | ((16))), (caddr_t)&ifrq);
 }
 _splx(s);
}
int net_ticks;
u_int net_livelocks;
void
net_tick(void *null)
{
 extern int ticks;
 if (ticks - net_ticks > 1)
  net_livelocks++;
 net_ticks = ticks;
 timeout_add(&net_tick_to, 1);
}
int
net_livelocked(void)
{
 extern int ticks;
 return (ticks - net_ticks > 1);
}
void
if_rxr_init(struct if_rxring *rxr, u_int lwm, u_int hwm)
{
 extern int ticks;
 __builtin_memset((rxr), (0), (sizeof(*rxr)));
 rxr->rxr_adjusted = ticks;
 rxr->rxr_cwm = rxr->rxr_lwm = lwm;
 rxr->rxr_hwm = hwm;
}
static inline void
if_rxr_adjust_cwm(struct if_rxring *rxr)
{
 extern int ticks;
 if (net_livelocked()) {
  if (rxr->rxr_cwm > rxr->rxr_lwm)
   rxr->rxr_cwm--;
  else
   return;
 } else if (rxr->rxr_alive >= rxr->rxr_lwm)
  return;
 else if (rxr->rxr_cwm < rxr->rxr_hwm)
  rxr->rxr_cwm++;
 rxr->rxr_adjusted = ticks;
}
u_int
if_rxr_get(struct if_rxring *rxr, u_int max)
{
 extern int ticks;
 u_int diff;
 if (ticks - rxr->rxr_adjusted >= 1) {
  if_rxr_adjust_cwm(rxr);
 }
 if (rxr->rxr_alive >= rxr->rxr_cwm)
  return (0);
 diff = min(rxr->rxr_cwm - rxr->rxr_alive, max);
 rxr->rxr_alive += diff;
 return (diff);
}
int
if_rxr_info_ioctl(struct if_rxrinfo *uifri, u_int t, struct if_rxring_info *e)
{
 struct if_rxrinfo kifri;
 int error;
 u_int n;
 error = copyin(uifri, &kifri, sizeof(kifri));
 if (error)
  return (error);
 n = min(t, kifri.ifri_total);
 kifri.ifri_total = t;
 if (n > 0) {
  error = copyout(e, kifri.ifri_entries, sizeof(*e) * n);
  if (error)
   return (error);
 }
 return (copyout(&kifri, uifri, sizeof(kifri)));
}
int
if_rxr_ioctl(struct if_rxrinfo *ifri, const char *name, u_int size,
    struct if_rxring *rxr)
{
 struct if_rxring_info ifr;
 __builtin_memset((&ifr), (0), (sizeof(ifr)));
 if (name != ((void *)0))
  strlcpy(ifr.ifr_name, name, sizeof(ifr.ifr_name));
 ifr.ifr_size = size;
 ifr.ifr_info = *rxr;
 return (if_rxr_info_ioctl(ifri, 1, &ifr));
}
void
niq_init(struct niqueue *niq, u_int maxlen, u_int isr)
{
 mq_init(&niq->ni_q, maxlen, 6);
 niq->ni_isr = isr;
}
int
niq_enqueue(struct niqueue *niq, struct mbuf *m)
{
 int rv;
 rv = mq_enqueue(&niq->ni_q, m);
 if (rv == 0)
  do { atomic_setbits_int(&netisr, (1 << (niq->ni_isr))); task_add(softnettq, &if_input_task_locked); } while ( 0);
 else
  if_congestion();
 return (rv);
}
int
niq_enlist(struct niqueue *niq, struct mbuf_list *ml)
{
 int rv;
 rv = mq_enlist(&niq->ni_q, ml);
 if (rv == 0)
  do { atomic_setbits_int(&netisr, (1 << (niq->ni_isr))); task_add(softnettq, &if_input_task_locked); } while ( 0);
 else
  if_congestion();
 return (rv);
}
__attribute__((__noreturn__)) void
unhandled_af(int af)
{
 panic("unhandled af %d", af);
}
