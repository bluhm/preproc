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
struct in_ifaddr {
 struct ifaddr ia_ifa;
 u_int32_t ia_net;
 u_int32_t ia_netmask;
 struct { struct in_ifaddr *tqe_next; struct in_ifaddr **tqe_prev; } ia_list;
 struct sockaddr_in ia_addr;
 struct sockaddr_in ia_dstaddr;
 struct sockaddr_in ia_sockmask;
 struct in_multi *ia_allhosts;
};
struct in_aliasreq {
 char ifra_name[16];
 union {
  struct sockaddr_in ifrau_addr;
  int ifrau_align;
 } ifra_ifrau;
 struct sockaddr_in ifra_dstaddr;
 struct sockaddr_in ifra_mask;
};
struct router_info {
 unsigned int rti_ifidx;
 int rti_type;
 int rti_age;
 struct router_info *rti_next;
};
struct in_multi {
 struct ifmaddr inm_ifma;
 struct sockaddr_in inm_sin;
 u_int inm_state;
 u_int inm_timer;
 struct router_info *inm_rti;
};
static __inline struct in_multi *
ifmatoinm(struct ifmaddr *ifma)
{
       return ((struct in_multi *)(ifma));
}
int in_ifinit(struct ifnet *,
     struct in_ifaddr *, struct sockaddr_in *, int);
struct in_multi *in_addmulti(struct in_addr *, struct ifnet *);
void in_delmulti(struct in_multi *);
int in_hasmulti(struct in_addr *, struct ifnet *);
void in_ifscrub(struct ifnet *, struct in_ifaddr *);
int in_control(struct socket *, u_long, caddr_t, struct ifnet *);
int in_ioctl(u_long, caddr_t, struct ifnet *, int);
void in_prefixlen2mask(struct in_addr *, int);
struct ip {
 u_int ip_v:4,
    ip_hl:4;
 u_int8_t ip_tos;
 u_int16_t ip_len;
 u_int16_t ip_id;
 u_int16_t ip_off;
 u_int8_t ip_ttl;
 u_int8_t ip_p;
 u_int16_t ip_sum;
 struct in_addr ip_src, ip_dst;
};
struct ip_timestamp {
 u_int8_t ipt_code;
 u_int8_t ipt_len;
 u_int8_t ipt_ptr;
 u_int ipt_oflw:4,
   ipt_flg:4;
 union ipt_timestamp {
   u_int32_t ipt_time[1];
   struct ipt_ta {
   struct in_addr ipt_addr;
   u_int32_t ipt_time;
   } ipt_ta[1];
 } ipt_timestamp;
};
struct ippseudo {
 struct in_addr ippseudo_src;
 struct in_addr ippseudo_dst;
 u_int8_t ippseudo_pad;
 u_int8_t ippseudo_p;
 u_int16_t ippseudo_len;
};
int in6_ifattach(struct ifnet *);
void in6_ifdetach(struct ifnet *);
int in6_nigroup(struct ifnet *, const char *, int, struct sockaddr_in6 *);
int in6_ifattach_linklocal(struct ifnet *, struct in6_addr *);
enum ppp_phase {
 PHASE_DEAD, PHASE_ESTABLISH, PHASE_TERMINATE,
 PHASE_AUTHENTICATE, PHASE_NETWORK
};
struct sauthreq {
 int cmd;
 u_short proto;
 u_short flags;
 u_char name[256];
 u_char secret[256];
};
struct spppreq {
 int cmd;
 enum ppp_phase phase;
};
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
int in6_leavegroup(struct in6_multi_mship *);
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
int in6_are_prefix_equal(struct in6_addr *, struct in6_addr *, int);
void in6_prefixlen2mask(struct in6_addr *, int);
void in6_purgeprefix(struct ifnet *);
struct slcp {
 u_long opts;
 u_long magic;
 u_long mru;
 u_long their_mru;
 u_long protos;
 u_char echoid;
 int timeout;
 int max_terminate;
 int max_configure;
 int max_failure;
};
struct sipcp {
 u_long opts;
 u_int flags;
 u_int32_t saved_hisaddr;
 u_int32_t req_hisaddr;
 u_int32_t req_myaddr;
 struct in6_aliasreq req_ifid;
 struct task set_addr_task;
 struct task clear_addr_task;
};
struct sauth {
 u_short proto;
 u_short flags;
 u_char *name;
 u_char *secret;
};
struct sppp {
 struct ifnet pp_if;
 struct mbuf_queue pp_cpq;
 struct sppp *pp_next;
 u_int pp_flags;
 u_int pp_framebytes;
 u_short pp_alivecnt;
 u_short pp_loopcnt;
 u_int32_t pp_seq;
 u_int32_t pp_rseq;
 time_t pp_last_receive;
 time_t pp_last_activity;
 enum ppp_phase pp_phase;
 int state[(4 + 1)];
 u_char confid[(4 + 1)];
 int rst_counter[(4 + 1)];
 int fail_counter[(4 + 1)];
 struct timeout ch[(4 + 1)];
 struct timeout pap_my_to_ch;
 struct slcp lcp;
 struct sipcp ipcp;
 struct sipcp ipv6cp;
 struct sauth myauth;
 struct sauth hisauth;
 u_char chap_challenge[16];
 void (*pp_up)(struct sppp *sp);
 void (*pp_down)(struct sppp *sp);
 void (*pp_tls)(struct sppp *sp);
 void (*pp_tlf)(struct sppp *sp);
 void (*pp_con)(struct sppp *sp);
 void (*pp_chg)(struct sppp *sp, int new_state);
};
void sppp_attach (struct ifnet *ifp);
void sppp_detach (struct ifnet *ifp);
void sppp_input (struct ifnet *ifp, struct mbuf *m);
void spppattach (struct ifnet *ifp);
int sppp_ioctl(struct ifnet *ifp, u_long cmd, void *data);
struct mbuf *sppp_dequeue (struct ifnet *ifp);
int sppp_isempty (struct ifnet *ifp);
void sppp_flush (struct ifnet *ifp);
struct ppp_header {
 u_char address;
 u_char control;
 u_short protocol;
};
struct lcp_header {
 u_char type;
 u_char ident;
 u_short len;
};
struct cp {
 u_short proto;
 u_char protoidx;
 u_char flags;
 const char *name;
 void (*Up)(struct sppp *sp);
 void (*Down)(struct sppp *sp);
 void (*Open)(struct sppp *sp);
 void (*Close)(struct sppp *sp);
 void (*TO)(void *sp);
 int (*RCR)(struct sppp *sp, struct lcp_header *h, int len);
 void (*RCN_rej)(struct sppp *sp, struct lcp_header *h, int len);
 void (*RCN_nak)(struct sppp *sp, struct lcp_header *h, int len);
 void (*tlu)(struct sppp *sp);
 void (*tld)(struct sppp *sp);
 void (*tls)(struct sppp *sp);
 void (*tlf)(struct sppp *sp);
 void (*scr)(struct sppp *sp);
};
static struct sppp *spppq;
static struct timeout keepalive_ch;
int sppp_output(struct ifnet *ifp, struct mbuf *m,
         struct sockaddr *dst, struct rtentry *rt);
void sppp_cp_input(const struct cp *cp, struct sppp *sp,
     struct mbuf *m);
void sppp_cp_send(struct sppp *sp, u_short proto, u_char type,
    u_char ident, u_short len, void *data);
void sppp_cp_change_state(const struct cp *cp, struct sppp *sp,
     int newstate);
void sppp_auth_send(const struct cp *cp,
      struct sppp *sp, unsigned int type, u_int id,
      ...);
void sppp_up_event(const struct cp *cp, struct sppp *sp);
void sppp_down_event(const struct cp *cp, struct sppp *sp);
void sppp_open_event(const struct cp *cp, struct sppp *sp);
void sppp_close_event(const struct cp *cp, struct sppp *sp);
void sppp_increasing_timeout(const struct cp *cp, struct sppp *sp);
void sppp_to_event(const struct cp *cp, struct sppp *sp);
void sppp_null(struct sppp *sp);
void sppp_lcp_init(struct sppp *sp);
void sppp_lcp_up(struct sppp *sp);
void sppp_lcp_down(struct sppp *sp);
void sppp_lcp_open(struct sppp *sp);
void sppp_lcp_close(struct sppp *sp);
void sppp_lcp_TO(void *sp);
int sppp_lcp_RCR(struct sppp *sp, struct lcp_header *h, int len);
void sppp_lcp_RCN_rej(struct sppp *sp, struct lcp_header *h, int len);
void sppp_lcp_RCN_nak(struct sppp *sp, struct lcp_header *h, int len);
void sppp_lcp_tlu(struct sppp *sp);
void sppp_lcp_tld(struct sppp *sp);
void sppp_lcp_tls(struct sppp *sp);
void sppp_lcp_tlf(struct sppp *sp);
void sppp_lcp_scr(struct sppp *sp);
void sppp_lcp_check_and_close(struct sppp *sp);
int sppp_ncp_check(struct sppp *sp);
void sppp_ipcp_init(struct sppp *sp);
void sppp_ipcp_destroy(struct sppp *sp);
void sppp_ipcp_up(struct sppp *sp);
void sppp_ipcp_down(struct sppp *sp);
void sppp_ipcp_open(struct sppp *sp);
void sppp_ipcp_close(struct sppp *sp);
void sppp_ipcp_TO(void *sp);
int sppp_ipcp_RCR(struct sppp *sp, struct lcp_header *h, int len);
void sppp_ipcp_RCN_rej(struct sppp *sp, struct lcp_header *h, int len);
void sppp_ipcp_RCN_nak(struct sppp *sp, struct lcp_header *h, int len);
void sppp_ipcp_tlu(struct sppp *sp);
void sppp_ipcp_tld(struct sppp *sp);
void sppp_ipcp_tls(struct sppp *sp);
void sppp_ipcp_tlf(struct sppp *sp);
void sppp_ipcp_scr(struct sppp *sp);
void sppp_ipv6cp_init(struct sppp *sp);
void sppp_ipv6cp_destroy(struct sppp *sp);
void sppp_ipv6cp_up(struct sppp *sp);
void sppp_ipv6cp_down(struct sppp *sp);
void sppp_ipv6cp_open(struct sppp *sp);
void sppp_ipv6cp_close(struct sppp *sp);
void sppp_ipv6cp_TO(void *sp);
int sppp_ipv6cp_RCR(struct sppp *sp, struct lcp_header *h, int len);
void sppp_ipv6cp_RCN_rej(struct sppp *sp, struct lcp_header *h, int len);
void sppp_ipv6cp_RCN_nak(struct sppp *sp, struct lcp_header *h, int len);
void sppp_ipv6cp_tlu(struct sppp *sp);
void sppp_ipv6cp_tld(struct sppp *sp);
void sppp_ipv6cp_tls(struct sppp *sp);
void sppp_ipv6cp_tlf(struct sppp *sp);
void sppp_ipv6cp_scr(struct sppp *sp);
const char *sppp_ipv6cp_opt_name(u_char opt);
void sppp_get_ip6_addrs(struct sppp *sp, struct in6_addr *src,
          struct in6_addr *dst, struct in6_addr *srcmask);
void sppp_set_ip6_addr(struct sppp *sp, const struct in6_addr *src, const struct in6_addr *dst);
void sppp_update_ip6_addr(void *sp);
void sppp_suggest_ip6_addr(struct sppp *sp, struct in6_addr *suggest);
void sppp_pap_input(struct sppp *sp, struct mbuf *m);
void sppp_pap_init(struct sppp *sp);
void sppp_pap_open(struct sppp *sp);
void sppp_pap_close(struct sppp *sp);
void sppp_pap_TO(void *sp);
void sppp_pap_my_TO(void *sp);
void sppp_pap_tlu(struct sppp *sp);
void sppp_pap_tld(struct sppp *sp);
void sppp_pap_scr(struct sppp *sp);
void sppp_chap_input(struct sppp *sp, struct mbuf *m);
void sppp_chap_init(struct sppp *sp);
void sppp_chap_open(struct sppp *sp);
void sppp_chap_close(struct sppp *sp);
void sppp_chap_TO(void *sp);
void sppp_chap_tlu(struct sppp *sp);
void sppp_chap_tld(struct sppp *sp);
void sppp_chap_scr(struct sppp *sp);
const char *sppp_auth_type_name(u_short proto, u_char type);
const char *sppp_cp_type_name(u_char type);
const char *sppp_dotted_quad(u_int32_t addr);
const char *sppp_ipcp_opt_name(u_char opt);
const char *sppp_lcp_opt_name(u_char opt);
const char *sppp_phase_name(enum ppp_phase phase);
const char *sppp_proto_name(u_short proto);
const char *sppp_state_name(int state);
int sppp_get_params(struct sppp *sp, struct ifreq *data);
int sppp_set_params(struct sppp *sp, struct ifreq *data);
void sppp_get_ip_addrs(struct sppp *sp, u_int32_t *src, u_int32_t *dst,
         u_int32_t *srcmask);
void sppp_keepalive(void *dummy);
void sppp_phase_network(struct sppp *sp);
void sppp_print_bytes(const u_char *p, u_short len);
void sppp_print_string(const char *p, u_short len);
int sppp_update_gw_walker(struct rtentry *rt, void *arg, unsigned int id);
void sppp_update_gw(struct ifnet *ifp);
void sppp_set_ip_addrs(void *);
void sppp_clear_ip_addrs(void *);
void sppp_set_phase(struct sppp *sp);
static const struct cp lcp = {
 0xc021, 0, 0x01, "lcp",
 sppp_lcp_up, sppp_lcp_down, sppp_lcp_open, sppp_lcp_close,
 sppp_lcp_TO, sppp_lcp_RCR, sppp_lcp_RCN_rej, sppp_lcp_RCN_nak,
 sppp_lcp_tlu, sppp_lcp_tld, sppp_lcp_tls, sppp_lcp_tlf,
 sppp_lcp_scr
};
static const struct cp ipcp = {
 0x8021, 1,
 0x04,
 "ipcp",
 sppp_ipcp_up, sppp_ipcp_down, sppp_ipcp_open, sppp_ipcp_close,
 sppp_ipcp_TO, sppp_ipcp_RCR, sppp_ipcp_RCN_rej, sppp_ipcp_RCN_nak,
 sppp_ipcp_tlu, sppp_ipcp_tld, sppp_ipcp_tls, sppp_ipcp_tlf,
 sppp_ipcp_scr
};
static const struct cp ipv6cp = {
 0x8057, 2,
 0x04,
 "ipv6cp",
 sppp_ipv6cp_up, sppp_ipv6cp_down, sppp_ipv6cp_open, sppp_ipv6cp_close,
 sppp_ipv6cp_TO, sppp_ipv6cp_RCR, sppp_ipv6cp_RCN_rej, sppp_ipv6cp_RCN_nak,
 sppp_ipv6cp_tlu, sppp_ipv6cp_tld, sppp_ipv6cp_tls, sppp_ipv6cp_tlf,
 sppp_ipv6cp_scr
};
static const struct cp pap = {
 0xc023, 3, 0x02, "pap",
 sppp_null, sppp_null, sppp_pap_open, sppp_pap_close,
 sppp_pap_TO, 0, 0, 0,
 sppp_pap_tlu, sppp_pap_tld, sppp_null, sppp_null,
 sppp_pap_scr
};
static const struct cp chap = {
 0xc223, 4, 0x02, "chap",
 sppp_null, sppp_null, sppp_chap_open, sppp_chap_close,
 sppp_chap_TO, 0, 0, 0,
 sppp_chap_tlu, sppp_chap_tld, sppp_null, sppp_null,
 sppp_chap_scr
};
static const struct cp *cps[(4 + 1)] = {
 &lcp,
 &ipcp,
 &ipv6cp,
 &pap,
 &chap,
};
void
spppattach(struct ifnet *ifp)
{
}
void
sppp_input(struct ifnet *ifp, struct mbuf *m)
{
 struct ppp_header ht;
 struct sppp *sp = (struct sppp *)ifp;
 struct timeval tv;
 int debug = ifp->if_flags & 0x4;
 if (ifp->if_flags & 0x1) {
  ifp->if_data.ifi_ibytes += m->M_dat.MH.MH_pkthdr.len + sp->pp_framebytes;
  getmicrouptime(&tv);
  sp->pp_last_receive = tv.tv_sec;
 }
 if (m->M_dat.MH.MH_pkthdr.len <= sizeof (struct ppp_header)) {
  if (debug)
   log(7,
       "%s: " "input packet is too small, %d bytes\n",
       (ifp)->if_xname, m->M_dat.MH.MH_pkthdr.len);
   drop:
  m_freem (m);
  ++ifp->if_data.ifi_ierrors;
  ++ifp->if_data.ifi_iqdrops;
  return;
 }
 m->M_dat.MH.MH_pkthdr.ph_rtableid = ifp->if_data.ifi_rdomain;
 m_copydata(m, 0, sizeof(ht.protocol), (caddr_t)&ht.protocol);
 m_adj(m, 2);
 ht.control = 0x03;
 ht.address = 0xff;
 if (m->m_hdr.mh_len < m->M_dat.MH.MH_pkthdr.len) {
  m = m_pullup(m, m->M_dat.MH.MH_pkthdr.len);
  if (m == ((void *)0)) {
   if (debug)
    log(7,
        "%s: " "Failed to align packet!\n", (ifp)->if_xname);
   ++ifp->if_data.ifi_ierrors;
   ++ifp->if_data.ifi_iqdrops;
   return;
  }
 }
 switch (ht.address) {
 case 0xff:
  if (ht.control != 0x03)
   goto invalid;
  switch (((__uint16_t)(ht.protocol))) {
  default:
   if (sp->state[0] == 9)
    sppp_cp_send (sp, 0xc021, 8,
        ++sp->pp_seq, 2, &ht.protocol);
   if (debug)
    log(7,
        "%s: " "invalid input protocol "
        "<addr=0x%x ctrl=0x%x proto=0x%x>\n",
        (ifp)->if_xname,
        ht.address, ht.control, ((__uint16_t)(ht.protocol)));
   ++ifp->if_data.ifi_noproto;
   goto drop;
  case 0xc021:
   sppp_cp_input(&lcp, sp, m);
   m_freem (m);
   return;
  case 0xc023:
   if (sp->pp_phase >= PHASE_AUTHENTICATE)
    sppp_pap_input(sp, m);
   m_freem (m);
   return;
  case 0xc223:
   if (sp->pp_phase >= PHASE_AUTHENTICATE)
    sppp_chap_input(sp, m);
   m_freem (m);
   return;
  case 0x8021:
   if (sp->pp_phase == PHASE_NETWORK)
    sppp_cp_input(&ipcp, sp, m);
   m_freem (m);
   return;
  case 0x0021:
   if (sp->state[1] == 9) {
    sp->pp_last_activity = tv.tv_sec;
    if (ifp->if_flags & 0x1) {
     ipv4_input(ifp, m);
     return;
    }
   }
   break;
  case 0x8057:
   if (sp->pp_phase == PHASE_NETWORK)
    sppp_cp_input(&ipv6cp, sp, m);
   m_freem (m);
   return;
  case 0x0057:
   if (sp->state[2] == 9) {
    sp->pp_last_activity = tv.tv_sec;
    if (ifp->if_flags & 0x1) {
     ipv6_input(ifp, m);
     return;
    }
   }
   break;
  }
  break;
 default:
   invalid:
  if (debug)
   log(7,
       "%s: " "invalid input packet "
       "<addr=0x%x ctrl=0x%x proto=0x%x>\n",
       (ifp)->if_xname,
       ht.address, ht.control, ((__uint16_t)(ht.protocol)));
  goto drop;
 }
 goto drop;
}
int
sppp_output(struct ifnet *ifp, struct mbuf *m,
     struct sockaddr *dst, struct rtentry *rt)
{
 struct sppp *sp = (struct sppp*) ifp;
 struct timeval tv;
 int s, rv = 0;
 u_int16_t protocol;
 if (ifp->if_data.ifi_rdomain != rtable_l2(m->M_dat.MH.MH_pkthdr.ph_rtableid)) {
  printf("%s: trying to send packet on wrong domain. "
      "if %d vs. mbuf %d, AF %d\n", ifp->if_xname,
      ifp->if_data.ifi_rdomain, rtable_l2(m->M_dat.MH.MH_pkthdr.ph_rtableid),
      dst->sa_family);
 }
 s = _splraise(6);
 getmicrouptime(&tv);
 sp->pp_last_activity = tv.tv_sec;
 if ((ifp->if_flags & 0x1) == 0 ||
     (ifp->if_flags & (0x40 | 0x2000)) == 0) {
  m_freem (m);
  _splx(s);
  return (50);
 }
 if ((ifp->if_flags & (0x40 | 0x2000)) == 0x2000) {
  ifp->if_flags |= 0x40;
  _splx(s);
  lcp.Open(sp);
  s = _splraise(6);
 }
 if (dst->sa_family == 2) {
  struct ip *ip = ((void *)0);
  if(ip && ip->ip_src.s_addr == ((u_int32_t) ((__uint32_t)((u_int32_t)(0x00000000))))) {
   u_int8_t proto = ip->ip_p;
   m_freem(m);
   _splx(s);
   if(proto == 6)
    return (49);
   else
    return (0);
  }
 }
 switch (dst->sa_family) {
 case 2:
  protocol = ((__uint16_t)(0x0021));
  if (sp->state[1] != 9)
   rv = 50;
  break;
 case 24:
  protocol = ((__uint16_t)(0x0057));
  if (sp->state[2] != 9)
   rv = 50;
  break;
 default:
  m_freem(m);
  ++ifp->if_data.ifi_oerrors;
  _splx(s);
  return (47);
 }
 (m) = m_prepend((m), (2), (0x0002));
 if (m == ((void *)0)) {
  if (ifp->if_flags & 0x4)
   log(7, "%s: "
       "no memory for transmit header\n",
       (ifp)->if_xname);
  ++ifp->if_data.ifi_oerrors;
  _splx(s);
  return (55);
 }
 *((u_int16_t *)((m)->m_hdr.mh_data)) = protocol;
 rv = if_enqueue(ifp, m);
 if (rv != 0) {
  ifp->if_data.ifi_oerrors++;
  _splx(s);
  return (rv);
 }
 ifp->if_data.ifi_obytes += sp->pp_framebytes;
 _splx(s);
 return (0);
}
void
sppp_attach(struct ifnet *ifp)
{
 struct sppp *sp = (struct sppp*) ifp;
 int i;
 if (! spppq) {
  timeout_set_proc(&keepalive_ch, sppp_keepalive, ((void *)0));
  timeout_add_sec(&keepalive_ch, 10);
 }
 sp->pp_next = spppq;
 spppq = sp;
 sp->pp_if.if_data.ifi_type = 0x17;
 sp->pp_if.if_output = sppp_output;
 ((&sp->pp_if.if_snd)->ifq_maxlen = (50));
 mq_init(&sp->pp_cpq, 50, 6);
 sp->pp_loopcnt = 0;
 sp->pp_alivecnt = 0;
 sp->pp_last_activity = 0;
 sp->pp_last_receive = 0;
 sp->pp_seq = 0;
 sp->pp_rseq = 0;
 sp->pp_phase = PHASE_DEAD;
 sp->pp_up = lcp.Up;
 sp->pp_down = lcp.Down;
 for (i = 0; i < (4 + 1); i++)
  timeout_set(&sp->ch[i], (cps[i])->TO, (void *)sp);
 timeout_set(&sp->pap_my_to_ch, sppp_pap_my_TO, (void *)sp);
 sppp_lcp_init(sp);
 sppp_ipcp_init(sp);
 sppp_ipv6cp_init(sp);
 sppp_pap_init(sp);
 sppp_chap_init(sp);
}
void
sppp_detach(struct ifnet *ifp)
{
 struct sppp **q, *p, *sp = (struct sppp*) ifp;
 int i;
 sppp_ipcp_destroy(sp);
 sppp_ipv6cp_destroy(sp);
 for (q = &spppq; (p = *q); q = &p->pp_next)
  if (p == sp) {
   *q = p->pp_next;
   break;
  }
 if (! spppq)
  timeout_del(&(keepalive_ch));
 for (i = 0; i < (4 + 1); i++)
  timeout_del(&(sp->ch[i]));
 timeout_del(&(sp->pap_my_to_ch));
 if (sp->myauth.name != ((void *)0))
  free(sp->myauth.name, 2, 0);
 if (sp->myauth.secret != ((void *)0))
  free(sp->myauth.secret, 2, 0);
 if (sp->hisauth.name != ((void *)0))
  free(sp->hisauth.name, 2, 0);
 if (sp->hisauth.secret != ((void *)0))
  free(sp->hisauth.secret, 2, 0);
}
void
sppp_flush(struct ifnet *ifp)
{
 struct sppp *sp = (struct sppp*) ifp;
 do { (void)ifq_purge(&sp->pp_if.if_snd); } while ( 0);
 mq_purge(&sp->pp_cpq);
}
int
sppp_isempty(struct ifnet *ifp)
{
 struct sppp *sp = (struct sppp*) ifp;
 int empty, s;
 s = _splraise(6);
 empty = ((&(&sp->pp_cpq)->mq_list)->ml_len == 0) && (((&sp->pp_if.if_snd)->ifq_len) == 0);
 _splx(s);
 return (empty);
}
struct mbuf *
sppp_dequeue(struct ifnet *ifp)
{
 struct sppp *sp = (struct sppp*) ifp;
 struct mbuf *m;
 int s;
 s = _splraise(6);
 m = mq_dequeue(&sp->pp_cpq);
 if (m == ((void *)0) && sppp_ncp_check(sp)) {
  do { (m) = ifq_dequeue(&sp->pp_if.if_snd); } while ( 0);
 }
 _splx(s);
 return m;
}
int
sppp_ioctl(struct ifnet *ifp, u_long cmd, void *data)
{
 struct ifreq *ifr = data;
 struct sppp *sp = (struct sppp*) ifp;
 int s, rv, going_up, going_down, newmode;
 s = _splraise(6);
 rv = 0;
 switch (cmd) {
 case ((unsigned long)0x80000000 | ((sizeof(struct ifreq) & 0x1fff) << 16) | ((('i')) << 8) | ((14))):
  break;
 case ((unsigned long)0x80000000 | ((sizeof(struct ifreq) & 0x1fff) << 16) | ((('i')) << 8) | ((12))):
  if_up(ifp);
 case ((unsigned long)0x80000000 | ((sizeof(struct ifreq) & 0x1fff) << 16) | ((('i')) << 8) | ((16))):
  going_up = (ifp->if_flags & 0x1) &&
   (ifp->if_flags & 0x40) == 0;
  going_down = (ifp->if_flags & 0x1) == 0 &&
   (ifp->if_flags & 0x40);
  newmode = ifp->if_flags & (0x2000 | 0x1000);
  if (newmode == (0x2000 | 0x1000)) {
   newmode = 0x1000;
   ifp->if_flags &= ~0x2000;
  }
  if (going_up || going_down)
   lcp.Close(sp);
  if (going_up && newmode == 0) {
   ifp->if_flags |= 0x40;
   lcp.Open(sp);
  } else if (going_down) {
   sppp_flush(ifp);
   ifp->if_flags &= ~0x40;
  }
  break;
 case ((unsigned long)0x80000000 | ((sizeof(struct ifreq) & 0x1fff) << 16) | ((('i')) << 8) | ((127))):
  if (ifr->ifr_ifru.ifru_metric < 128 ||
      (sp->lcp.their_mru > 0 &&
       ifr->ifr_ifru.ifru_metric > sp->lcp.their_mru)) {
   _splx(s);
   return (22);
  }
  ifp->if_data.ifi_mtu = ifr->ifr_ifru.ifru_metric;
  break;
 case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct ifreq) & 0x1fff) << 16) | ((('i')) << 8) | ((126))):
  ifr->ifr_ifru.ifru_metric = ifp->if_data.ifi_mtu;
  break;
 case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct ifreq) & 0x1fff) << 16) | ((('i')) << 8) | ((165))):
  ifr->ifr_ifru.ifru_metric = ifp->if_hardmtu;
  break;
 case ((unsigned long)0x80000000 | ((sizeof(struct ifreq) & 0x1fff) << 16) | ((('i')) << 8) | ((49))):
 case ((unsigned long)0x80000000 | ((sizeof(struct ifreq) & 0x1fff) << 16) | ((('i')) << 8) | ((50))):
  break;
 case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct ifreq) & 0x1fff) << 16) | ((('i')) << 8) | ((148))):
  rv = sppp_get_params(sp, ifr);
  break;
 case ((unsigned long)0x80000000 | ((sizeof(struct ifreq) & 0x1fff) << 16) | ((('i')) << 8) | ((147))):
  rv = sppp_set_params(sp, ifr);
  break;
 default:
  rv = 25;
 }
 _splx(s);
 return rv;
}
void
sppp_cp_send(struct sppp *sp, u_short proto, u_char type,
      u_char ident, u_short len, void *data)
{
 struct ifnet *ifp = &sp->pp_if; int debug = ifp->if_flags & 0x4;
 int s;
 struct lcp_header *lh;
 struct mbuf *m;
 if (len > ((256 - sizeof(struct m_hdr)) - sizeof(struct pkthdr)) - 2 - sizeof (struct lcp_header))
  len = ((256 - sizeof(struct m_hdr)) - sizeof(struct pkthdr)) - 2 - sizeof (struct lcp_header);
 m = m_gethdr((0x0002), (1));
 if (! m)
  return;
 m->M_dat.MH.MH_pkthdr.len = m->m_hdr.mh_len = 2 + sizeof (struct lcp_header) + len;
 m->M_dat.MH.MH_pkthdr.ph_ifidx = 0;
 m->M_dat.MH.MH_pkthdr.pf.prio = sp->pp_if.if_llprio;
 *((u_int16_t *)((m)->m_hdr.mh_data)) = ((__uint16_t)(proto));
 lh = (struct lcp_header *)(((u_int8_t *)((m)->m_hdr.mh_data)) + 2);
 lh->type = type;
 lh->ident = ident;
 lh->len = ((__uint16_t)(sizeof (struct lcp_header) + len));
 if (len)
  __builtin_bcopy((data), (lh+1), (len));
 if (debug) {
  log(7, "%s: " "%s output <%s id=0x%x len=%d",
      (ifp)->if_xname,
      sppp_proto_name(proto),
      sppp_cp_type_name (lh->type), lh->ident,
      ((__uint16_t)(lh->len)));
  if (len)
   sppp_print_bytes ((u_char*) (lh+1), len);
  addlog(">\n");
 }
 len = m->M_dat.MH.MH_pkthdr.len + sp->pp_framebytes;
 if (mq_enqueue(&sp->pp_cpq, m) != 0) {
  ifp->if_data.ifi_oerrors++;
  return;
 }
 ifp->if_data.ifi_obytes += len;
 s = _splraise(6);
 if_start(ifp);
 _splx(s);
}
void
sppp_cp_input(const struct cp *cp, struct sppp *sp, struct mbuf *m)
{
 struct ifnet *ifp = &sp->pp_if; int debug = ifp->if_flags & 0x4;
 struct lcp_header *h;
 int len = m->M_dat.MH.MH_pkthdr.len;
 int rv;
 u_char *p;
 u_long nmagic;
 if (len < 4) {
  if (debug)
   log(7,
       "%s: " "%s invalid packet length: %d bytes\n",
       (ifp)->if_xname, cp->name, len);
  return;
 }
 h = ((struct lcp_header*)((m)->m_hdr.mh_data));
 if (debug) {
  log(7,
      "%s: " "%s input(%s): <%s id=0x%x len=%d",
      (ifp)->if_xname, cp->name,
      sppp_state_name(sp->state[cp->protoidx]),
      sppp_cp_type_name (h->type), h->ident, ((__uint16_t)(h->len)));
  if (len > 4)
   sppp_print_bytes ((u_char*) (h+1), len-4);
  addlog(">\n");
 }
 if (len > ((__uint16_t)(h->len)))
  len = ((__uint16_t)(h->len));
 p = (u_char *)(h + 1);
 switch (h->type) {
 case 1:
  if (len < 4) {
   if (debug)
    addlog("%s: " "%s invalid conf-req length %d\n",
           (ifp)->if_xname, cp->name,
           len);
   ++ifp->if_data.ifi_ierrors;
   break;
  }
  switch (sp->state[cp->protoidx]) {
  case 4:
  case 5:
   return;
  case 2:
   sppp_cp_send(sp, cp->proto, 6, h->ident,
         0, 0);
   return;
  }
  rv = (cp->RCR)(sp, h, len);
  if (rv == -1)
   return;
  switch (sp->state[cp->protoidx]) {
  case 9:
   sppp_cp_change_state(cp, sp, rv?
          8: 6);
   (cp->tld)(sp);
   (cp->scr)(sp);
   break;
  case 8:
  case 6:
   sppp_cp_change_state(cp, sp, rv?
          8: 6);
   break;
  case 3:
   sp->rst_counter[cp->protoidx] = sp->lcp.max_configure;
   sppp_cp_change_state(cp, sp, rv?
          8: 6);
   (cp->scr)(sp);
   break;
  case 7:
   if (rv) {
    sppp_cp_change_state(cp, sp, 9);
    if (debug)
     log(7, "%s: " "%s tlu\n",
         (ifp)->if_xname,
         cp->name);
    (cp->tlu)(sp);
   } else
    sppp_cp_change_state(cp, sp, 7);
   break;
  default:
   ++ifp->if_data.ifi_ierrors;
  }
  break;
 case 2:
  if (h->ident != sp->confid[cp->protoidx]) {
   if (debug)
    addlog("%s: " "%s id mismatch 0x%x != 0x%x\n",
           (ifp)->if_xname, cp->name,
           h->ident, sp->confid[cp->protoidx]);
   ++ifp->if_data.ifi_ierrors;
   break;
  }
  switch (sp->state[cp->protoidx]) {
  case 2:
  case 3:
   sppp_cp_send(sp, cp->proto, 6, h->ident, 0, 0);
   break;
  case 4:
  case 5:
   break;
  case 6:
   sp->rst_counter[cp->protoidx] = sp->lcp.max_configure;
   sppp_cp_change_state(cp, sp, 7);
   break;
  case 9:
   sppp_cp_change_state(cp, sp, 6);
   (cp->tld)(sp);
   (cp->scr)(sp);
   break;
  case 7:
   sppp_cp_change_state(cp, sp, 6);
   (cp->scr)(sp);
   break;
  case 8:
   sp->rst_counter[cp->protoidx] = sp->lcp.max_configure;
   sppp_cp_change_state(cp, sp, 9);
   if (debug)
    log(7, "%s: " "%s tlu\n",
           (ifp)->if_xname, cp->name);
   (cp->tlu)(sp);
   break;
  default:
   ++ifp->if_data.ifi_ierrors;
  }
  break;
 case 3:
 case 4:
  if (h->ident != sp->confid[cp->protoidx]) {
   if (debug)
    addlog("%s: " "%s id mismatch 0x%x != 0x%x\n",
           (ifp)->if_xname, cp->name,
           h->ident, sp->confid[cp->protoidx]);
   ++ifp->if_data.ifi_ierrors;
   break;
  }
  if (h->type == 3)
   (cp->RCN_nak)(sp, h, len);
  else
   (cp->RCN_rej)(sp, h, len);
  switch (sp->state[cp->protoidx]) {
  case 2:
  case 3:
   sppp_cp_send(sp, cp->proto, 6, h->ident, 0, 0);
   break;
  case 6:
  case 8:
   sp->rst_counter[cp->protoidx] = sp->lcp.max_configure;
   (cp->scr)(sp);
   break;
  case 9:
   sppp_cp_change_state(cp, sp, 8);
   (cp->tld)(sp);
   (cp->scr)(sp);
   break;
  case 7:
   sppp_cp_change_state(cp, sp, 8);
   (cp->scr)(sp);
   break;
  case 4:
  case 5:
   break;
  default:
   ++ifp->if_data.ifi_ierrors;
  }
  break;
 case 5:
  switch (sp->state[cp->protoidx]) {
  case 7:
  case 8:
   sppp_cp_change_state(cp, sp, 6);
  case 2:
  case 3:
  case 4:
  case 5:
  case 6:
    sta:
   if (debug)
    log(7, "%s: " "%s send terminate-ack\n",
        (ifp)->if_xname, cp->name);
   sppp_cp_send(sp, cp->proto, 6, h->ident, 0, 0);
   break;
  case 9:
   sp->rst_counter[cp->protoidx] = 0;
   sppp_cp_change_state(cp, sp, 5);
   (cp->tld)(sp);
   goto sta;
   break;
  default:
   ++ifp->if_data.ifi_ierrors;
  }
  break;
 case 6:
  switch (sp->state[cp->protoidx]) {
  case 2:
  case 3:
  case 6:
  case 8:
   break;
  case 4:
   sppp_cp_change_state(cp, sp, 2);
   (cp->tlf)(sp);
   break;
  case 5:
   sppp_cp_change_state(cp, sp, 3);
   (cp->tlf)(sp);
   break;
  case 7:
   sppp_cp_change_state(cp, sp, 6);
   break;
  case 9:
   sppp_cp_change_state(cp, sp, 7);
   (cp->tld)(sp);
   (cp->scr)(sp);
   break;
  default:
   ++ifp->if_data.ifi_ierrors;
  }
  break;
 case 7:
 case 8:
     {
  int catastrophic = 0;
  const struct cp *upper = ((void *)0);
  int i;
  u_int16_t proto;
  if (len < 2) {
   if (debug)
    log(7, "%s: " "invalid proto-rej length\n",
           (ifp)->if_xname);
   ++ifp->if_data.ifi_ierrors;
   break;
  }
  proto = ((__uint16_t)(*((u_int16_t *)p)));
  for (i = 0; i < (4 + 1); i++) {
   if (cps[i]->proto == proto) {
    upper = cps[i];
    break;
   }
  }
  if (upper == ((void *)0))
   catastrophic++;
  if (catastrophic || debug)
   log(catastrophic? 6: 7,
       "%s: " "%s: RXJ%c (%s) for proto 0x%x (%s/%s)\n",
       (ifp)->if_xname, cp->name, catastrophic ? '-' : '+',
       sppp_cp_type_name(h->type), proto,
       upper ? upper->name : "unknown",
       upper ? sppp_state_name(sp->state[upper->protoidx]) : "?");
  if (upper) {
   if (sp->state[upper->protoidx] == 6) {
    upper->Close(sp);
    break;
   }
  }
  switch (sp->state[cp->protoidx]) {
  case 2:
  case 3:
  case 6:
  case 8:
  case 4:
  case 5:
  case 9:
   break;
  case 7:
   sppp_cp_change_state(cp, sp, 6);
   break;
  default:
   ++ifp->if_data.ifi_ierrors;
  }
  break;
     }
 case 11:
  if (cp->proto != 0xc021)
   goto illegal;
  break;
 case 9:
  if (cp->proto != 0xc021)
   goto illegal;
  if (sp->state[cp->protoidx] != 9) {
   if (debug)
    addlog("%s: " "lcp echo req but lcp closed\n",
           (ifp)->if_xname);
   ++ifp->if_data.ifi_ierrors;
   break;
  }
  if (len < 8) {
   if (debug)
    addlog("%s: " "invalid lcp echo request "
           "packet length: %d bytes\n",
           (ifp)->if_xname, len);
   break;
  }
  nmagic = (u_long)p[0] << 24 |
      (u_long)p[1] << 16 | p[2] << 8 | p[3];
  if (nmagic == sp->lcp.magic) {
   log(6, "%s: " "loopback\n", (ifp)->if_xname);
   lcp.Close(sp);
   break;
  }
  p[0] = sp->lcp.magic >> 24;
  p[1] = sp->lcp.magic >> 16;
  p[2] = sp->lcp.magic >> 8;
  p[3] = sp->lcp.magic;
  if (debug)
   addlog("%s: " "got lcp echo req, sending echo rep\n",
          (ifp)->if_xname);
  sppp_cp_send (sp, 0xc021, 10, h->ident, len-4, h+1);
  break;
 case 10:
  if (cp->proto != 0xc021)
   goto illegal;
  if (h->ident != sp->lcp.echoid) {
   ++ifp->if_data.ifi_ierrors;
   break;
  }
  if (len < 8) {
   if (debug)
    addlog("%s: " "lcp invalid echo reply "
           "packet length: %d bytes\n",
           (ifp)->if_xname, len);
   break;
  }
  if (debug)
   addlog("%s: " "lcp got echo rep\n",
          (ifp)->if_xname);
  nmagic = (u_long)p[0] << 24 |
      (u_long)p[1] << 16 | p[2] << 8 | p[3];
  if (nmagic != sp->lcp.magic)
   sp->pp_alivecnt = 0;
  break;
 default:
   illegal:
  if (debug)
   addlog("%s: " "%s send code-rej for 0x%x\n",
          (ifp)->if_xname, cp->name, h->type);
  sppp_cp_send(sp, cp->proto, 7, ++sp->pp_seq,
        m->M_dat.MH.MH_pkthdr.len, h);
  ++ifp->if_data.ifi_ierrors;
 }
}
void
sppp_up_event(const struct cp *cp, struct sppp *sp)
{
 struct ifnet *ifp = &sp->pp_if; int debug = ifp->if_flags & 0x4;
 if (debug)
  log(7, "%s: " "%s up(%s)\n",
      (ifp)->if_xname, cp->name,
      sppp_state_name(sp->state[cp->protoidx]));
 switch (sp->state[cp->protoidx]) {
 case 0:
  sppp_cp_change_state(cp, sp, 2);
  break;
 case 1:
  sp->rst_counter[cp->protoidx] = sp->lcp.max_configure;
  sppp_cp_change_state(cp, sp, 6);
  (cp->scr)(sp);
  break;
 default:
  break;
 }
}
void
sppp_down_event(const struct cp *cp, struct sppp *sp)
{
 struct ifnet *ifp = &sp->pp_if; int debug = ifp->if_flags & 0x4;
 if (debug)
  log(7, "%s: " "%s down(%s)\n",
      (ifp)->if_xname, cp->name,
      sppp_state_name(sp->state[cp->protoidx]));
 switch (sp->state[cp->protoidx]) {
 case 2:
 case 4:
  sppp_cp_change_state(cp, sp, 0);
  break;
 case 3:
  sppp_cp_change_state(cp, sp, 1);
  (cp->tls)(sp);
  break;
 case 5:
 case 6:
 case 7:
 case 8:
  sppp_cp_change_state(cp, sp, 1);
  break;
 case 9:
  sppp_cp_change_state(cp, sp, 1);
  (cp->tld)(sp);
  break;
 default:
  break;
 }
}
void
sppp_open_event(const struct cp *cp, struct sppp *sp)
{
 struct ifnet *ifp = &sp->pp_if; int debug = ifp->if_flags & 0x4;
 if (debug)
  log(7, "%s: " "%s open(%s)\n",
      (ifp)->if_xname, cp->name,
      sppp_state_name(sp->state[cp->protoidx]));
 switch (sp->state[cp->protoidx]) {
 case 0:
  sppp_cp_change_state(cp, sp, 1);
  (cp->tls)(sp);
  break;
 case 1:
  break;
 case 2:
  sp->rst_counter[cp->protoidx] = sp->lcp.max_configure;
  sppp_cp_change_state(cp, sp, 6);
  (cp->scr)(sp);
  break;
 case 3:
 case 5:
 case 6:
 case 7:
 case 8:
 case 9:
  break;
 case 4:
  sppp_cp_change_state(cp, sp, 5);
  break;
 }
}
void
sppp_close_event(const struct cp *cp, struct sppp *sp)
{
 struct ifnet *ifp = &sp->pp_if; int debug = ifp->if_flags & 0x4;
 if (debug)
  log(7, "%s: " "%s close(%s)\n",
      (ifp)->if_xname, cp->name,
      sppp_state_name(sp->state[cp->protoidx]));
 switch (sp->state[cp->protoidx]) {
 case 0:
 case 2:
 case 4:
  break;
 case 1:
  sppp_cp_change_state(cp, sp, 0);
  (cp->tlf)(sp);
  break;
 case 3:
  sppp_cp_change_state(cp, sp, 2);
  break;
 case 5:
  sppp_cp_change_state(cp, sp, 4);
  break;
 case 9:
  sppp_cp_change_state(cp, sp, 4);
  sp->rst_counter[cp->protoidx] = sp->lcp.max_terminate;
  sppp_cp_send(sp, cp->proto, 5, ++sp->pp_seq, 0, 0);
  (cp->tld)(sp);
  break;
 case 6:
 case 7:
 case 8:
  sp->rst_counter[cp->protoidx] = sp->lcp.max_terminate;
  sppp_cp_send(sp, cp->proto, 5, ++sp->pp_seq, 0, 0);
  sppp_cp_change_state(cp, sp, 4);
  break;
 }
}
void
sppp_increasing_timeout (const struct cp *cp, struct sppp *sp)
{
 int timo;
 timo = sp->lcp.max_configure - sp->rst_counter[cp->protoidx];
 if (timo < 1)
  timo = 1;
 timeout_add(&sp->ch[cp->protoidx], timo * sp->lcp.timeout);
}
void
sppp_to_event(const struct cp *cp, struct sppp *sp)
{
 struct ifnet *ifp = &sp->pp_if; int debug = ifp->if_flags & 0x4;
 int s;
 s = _splraise(6);
 if (debug)
  log(7, "%s: " "%s TO(%s) rst_counter = %d\n",
      (ifp)->if_xname, cp->name,
      sppp_state_name(sp->state[cp->protoidx]),
      sp->rst_counter[cp->protoidx]);
 if (--sp->rst_counter[cp->protoidx] < 0)
  switch (sp->state[cp->protoidx]) {
  case 4:
   sppp_cp_change_state(cp, sp, 2);
   (cp->tlf)(sp);
   break;
  case 5:
   sppp_cp_change_state(cp, sp, 3);
   (cp->tlf)(sp);
   break;
  case 6:
  case 7:
  case 8:
   sppp_cp_change_state(cp, sp, 3);
   (cp->tlf)(sp);
   break;
  }
 else
  switch (sp->state[cp->protoidx]) {
  case 4:
  case 5:
   sppp_cp_send(sp, cp->proto, 5, ++sp->pp_seq,
         0, 0);
   sppp_increasing_timeout (cp, sp);
   break;
  case 6:
  case 7:
   sppp_cp_change_state(cp, sp, 6);
   (cp->scr)(sp);
   break;
  case 8:
   sppp_increasing_timeout (cp, sp);
   (cp->scr)(sp);
   break;
  }
 _splx(s);
}
void
sppp_cp_change_state(const struct cp *cp, struct sppp *sp, int newstate)
{
 struct ifnet *ifp = &sp->pp_if; int debug = ifp->if_flags & 0x4;
 if (debug && sp->state[cp->protoidx] != newstate)
  log(7, "%s: " "%s %s->%s\n",
      (ifp)->if_xname, cp->name,
      sppp_state_name(sp->state[cp->protoidx]),
      sppp_state_name(newstate));
 sp->state[cp->protoidx] = newstate;
 switch (newstate) {
 case 0:
 case 1:
 case 2:
 case 3:
 case 9:
  timeout_del(&(sp->ch[cp->protoidx]));
  break;
 case 4:
 case 5:
 case 6:
 case 7:
 case 8:
  if (!((&sp->ch[cp->protoidx])->to_flags & 2))
   sppp_increasing_timeout (cp, sp);
  break;
 }
}
void
sppp_lcp_init(struct sppp *sp)
{
 sp->lcp.opts = (1 << 5);
 sp->lcp.magic = 0;
 sp->state[0] = 0;
 sp->fail_counter[0] = 0;
 sp->lcp.protos = 0;
 sp->lcp.mru = sp->pp_if.if_data.ifi_mtu;
 sp->lcp.their_mru = 0;
 sp->lcp.timeout = 1 * hz;
 sp->lcp.max_terminate = 2;
 sp->lcp.max_configure = 10;
 sp->lcp.max_failure = 10;
}
void
sppp_lcp_up(struct sppp *sp)
{
 struct ifnet *ifp = &sp->pp_if; int debug = ifp->if_flags & 0x4;
 struct timeval tv;
 sp->pp_alivecnt = 0;
 sp->lcp.opts = (1 << 5);
 sp->lcp.magic = 0;
 sp->lcp.protos = 0;
 if (sp->pp_if.if_data.ifi_mtu != 1500) {
  sp->lcp.mru = sp->pp_if.if_data.ifi_mtu;
  sp->lcp.opts |= (1 << 1);
 } else
  sp->lcp.mru = 1500;
 sp->lcp.their_mru = 1500;
 getmicrouptime(&tv);
 sp->pp_last_receive = sp->pp_last_activity = tv.tv_sec;
 if ((ifp->if_flags & (0x2000 | 0x1000)) != 0) {
  if (debug)
   log(7,
       "%s: " "Up event", (ifp)->if_xname);
  ifp->if_flags |= 0x40;
  if (sp->state[0] == 0) {
   if (debug)
    addlog("(incoming call)\n");
   sp->pp_flags |= 0x08;
   lcp.Open(sp);
  } else if (debug)
   addlog("\n");
 } else if ((ifp->if_flags & (0x2000 | 0x1000)) == 0 &&
     (sp->state[0] == 0)) {
   ifp->if_flags |= 0x40;
   lcp.Open(sp);
 }
 sppp_up_event(&lcp, sp);
}
void
sppp_lcp_down(struct sppp *sp)
{
 struct ifnet *ifp = &sp->pp_if; int debug = ifp->if_flags & 0x4;
 sppp_down_event(&lcp, sp);
 if ((ifp->if_flags & (0x2000 | 0x1000)) == 0) {
  if (debug)
   log(7, "%s: " "Down event (carrier loss), "
       "taking interface down.", (ifp)->if_xname);
  if_down(ifp);
 } else {
  if (debug)
   log(7, "%s: " "Down event (carrier loss)\n",
       (ifp)->if_xname);
 }
 if (sp->state[0] != 0)
  lcp.Close(sp);
 sp->lcp.their_mru = 0;
 sp->pp_flags &= ~0x08;
 ifp->if_flags &= ~0x40;
 sppp_flush(ifp);
}
void
sppp_lcp_open(struct sppp *sp)
{
 if (sp->hisauth.proto != 0)
  sp->lcp.opts |= (1 << 3);
 else
  sp->lcp.opts &= ~(1 << 3);
 sp->pp_flags &= ~0x10;
 sppp_open_event(&lcp, sp);
}
void
sppp_lcp_close(struct sppp *sp)
{
 sppp_close_event(&lcp, sp);
}
void
sppp_lcp_TO(void *cookie)
{
 sppp_to_event(&lcp, (struct sppp *)cookie);
}
int
sppp_lcp_RCR(struct sppp *sp, struct lcp_header *h, int len)
{
 struct ifnet *ifp = &sp->pp_if; int debug = ifp->if_flags & 0x4;
 u_char *buf, *r, *p;
 int origlen, rlen;
 u_long nmagic;
 u_short authproto;
 len -= 4;
 origlen = len;
 buf = r = malloc (len, 127, 0x0002);
 if (! buf)
  return (0);
 if (debug)
  log(7, "%s: " "lcp parse opts: ",
      (ifp)->if_xname);
 p = (void*) (h+1);
 for (rlen = 0; len > 1; len -= p[1], p += p[1]) {
  if (p[1] < 2 || p[1] > len) {
   free(buf, 127, 0);
   return (-1);
  }
  if (debug)
   addlog("%s ", sppp_lcp_opt_name(*p));
  switch (*p) {
  case 5:
  case 2:
   if (len >= 6 && p[1] == 6)
    continue;
   if (debug)
    addlog("[invalid] ");
   break;
  case 1:
   if (len >= 4 && p[1] == 4)
    continue;
   if (debug)
    addlog("[invalid] ");
   break;
  case 3:
   if (len < 4) {
    if (debug)
     addlog("[invalid] ");
    break;
   }
   authproto = (p[2] << 8) + p[3];
   if (authproto == 0xc223 && p[1] != 5) {
    if (debug)
     addlog("[invalid chap len] ");
    break;
   }
   if (sp->myauth.proto == 0) {
    if (debug)
     addlog("[not configured] ");
    break;
   }
   sp->pp_flags |= 0x10;
   continue;
  default:
   if (debug)
    addlog("[rej] ");
   break;
  }
  __builtin_bcopy((p), (r), (p[1]));
  r += p[1];
  rlen += p[1];
 }
 if (rlen) {
  if (debug)
   addlog(" send conf-rej\n");
  sppp_cp_send(sp, 0xc021, 4, h->ident, rlen, buf);
  goto end;
 } else if (debug)
  addlog("\n");
 if (debug)
  log(7, "%s: " "lcp parse opt values: ",
      (ifp)->if_xname);
 p = (void*) (h+1);
 len = origlen;
 for (rlen=0; len>1 && p[1]; len-=p[1], p+=p[1]) {
  if (debug)
   addlog("%s ", sppp_lcp_opt_name(*p));
  switch (*p) {
  case 5:
   nmagic = (u_long)p[2] << 24 |
    (u_long)p[3] << 16 | p[4] << 8 | p[5];
   if (nmagic != sp->lcp.magic) {
    if (debug)
     addlog("0x%lx ", nmagic);
    continue;
   }
   if (debug)
    addlog("[glitch] ");
   ++sp->pp_loopcnt;
   nmagic = ~sp->lcp.magic;
   p[2] = nmagic >> 24;
   p[3] = nmagic >> 16;
   p[4] = nmagic >> 8;
   p[5] = nmagic;
   break;
  case 2:
   if (! p[2] && ! p[3] && ! p[4] && ! p[5]) {
    if (debug)
     addlog("[empty] ");
    continue;
   }
   if (debug)
    addlog("[non-empty] ");
   p[2] = p[3] = p[4] = p[5] = 0;
   break;
  case 1:
   sp->lcp.their_mru = p[2] * 256 + p[3];
   if (debug)
    addlog("%lu ", sp->lcp.their_mru);
   continue;
  case 3:
   authproto = (p[2] << 8) + p[3];
   if (sp->myauth.proto != authproto) {
    if (debug)
     addlog("[mine %s != his %s] ",
            sppp_proto_name(sp->hisauth.proto),
            sppp_proto_name(authproto));
    p[2] = sp->myauth.proto >> 8;
    p[3] = sp->myauth.proto;
    break;
   }
   if (authproto == 0xc223 && p[4] != 5) {
    if (debug)
     addlog("[chap not MD5] ");
    p[4] = 5;
    break;
   }
   continue;
  }
  __builtin_bcopy((p), (r), (p[1]));
  r += p[1];
  rlen += p[1];
 }
 if (rlen) {
  if (++sp->fail_counter[0] >= sp->lcp.max_failure) {
   if (debug)
    addlog(" max_failure (%d) exceeded, "
           "send conf-rej\n",
           sp->lcp.max_failure);
   sppp_cp_send(sp, 0xc021, 4, h->ident, rlen, buf);
  } else {
   if (debug)
    addlog(" send conf-nak\n");
   sppp_cp_send(sp, 0xc021, 3, h->ident, rlen, buf);
  }
  goto end;
 } else {
  if (debug)
   addlog("send conf-ack\n");
  sp->fail_counter[0] = 0;
  sp->pp_loopcnt = 0;
  sppp_cp_send (sp, 0xc021, 2,
         h->ident, origlen, h+1);
 }
 end:
 free(buf, 127, 0);
 return (rlen == 0);
}
void
sppp_lcp_RCN_rej(struct sppp *sp, struct lcp_header *h, int len)
{
 struct ifnet *ifp = &sp->pp_if; int debug = ifp->if_flags & 0x4;
 u_char *p;
 len -= 4;
 if (debug)
  log(7, "%s: " "lcp rej opts: ",
      (ifp)->if_xname);
 p = (void*) (h+1);
 for (; len > 1; len -= p[1], p += p[1]) {
  if (p[1] < 2 || p[1] > len)
   return;
  if (debug)
   addlog("%s ", sppp_lcp_opt_name(*p));
  switch (*p) {
  case 5:
   sp->lcp.opts &= ~(1 << 5);
   sp->lcp.magic = 0;
   break;
  case 1:
   sp->lcp.opts &= ~(1 << 1);
   break;
  case 3:
   if ((sp->pp_flags & 0x08) == 0 &&
       (sp->hisauth.flags & 1) != 0) {
    if (debug)
     addlog("[don't insist on auth "
            "for callout]");
    sp->lcp.opts &= ~(1 << 3);
    break;
   }
   if (debug)
    addlog("[access denied]\n");
   lcp.Close(sp);
   break;
  }
 }
 if (debug)
  addlog("\n");
}
void
sppp_lcp_RCN_nak(struct sppp *sp, struct lcp_header *h, int len)
{
 struct ifnet *ifp = &sp->pp_if; int debug = ifp->if_flags & 0x4;
 u_char *p;
 u_long magic;
 len -= 4;
 if (debug)
  log(7, "%s: " "lcp nak opts: ",
      (ifp)->if_xname);
 p = (void*) (h+1);
 for (; len > 1; len -= p[1], p += p[1]) {
  if (p[1] < 2 || p[1] > len)
   return;
  if (debug)
   addlog("%s ", sppp_lcp_opt_name(*p));
  switch (*p) {
  case 5:
   if ((sp->lcp.opts & (1 << 5)) &&
       len >= 6 && p[1] == 6) {
    magic = (u_long)p[2] << 24 |
     (u_long)p[3] << 16 | p[4] << 8 | p[5];
    if (magic == ~sp->lcp.magic) {
     if (debug)
      addlog("magic glitch ");
     sp->lcp.magic = arc4random();
    } else {
     sp->lcp.magic = magic;
     if (debug)
      addlog("%lu ", magic);
    }
   }
   break;
  case 1:
   if (len >= 4 && p[1] == 4) {
    u_int mru = p[2] * 256 + p[3];
    if (debug)
     addlog("%d ", mru);
    if (mru < 576)
     mru = 576;
    if (mru > 2048)
     mru = 2048;
    sp->lcp.mru = mru;
    sp->lcp.opts |= (1 << 1);
   }
   break;
  case 3:
   if (debug)
    addlog("[access denied]\n");
   lcp.Close(sp);
   break;
  }
 }
 if (debug)
  addlog("\n");
}
void
sppp_lcp_tlu(struct sppp *sp)
{
 struct ifnet *ifp = &sp->pp_if;
 int i;
 u_long mask;
 if (! (ifp->if_flags & 0x1) &&
     (ifp->if_flags & 0x40)) {
  if_up(ifp);
  if (ifp->if_flags & 0x4)
   log(6, "%s: " "up\n", (ifp)->if_xname);
 }
 for (i = 0; i < (4 + 1); i++)
  if ((cps[i])->flags & 0x08)
   (cps[i])->Open(sp);
 if ((sp->lcp.opts & (1 << 3)) != 0 ||
     (sp->pp_flags & 0x10) != 0)
  sp->pp_phase = PHASE_AUTHENTICATE;
 else
  sp->pp_phase = PHASE_NETWORK;
 sppp_set_phase(sp);
 for (i = 0; i < (4 + 1); i++)
  if ((cps[i])->flags & 0x02)
   (cps[i])->Open(sp);
 if (sp->pp_phase == PHASE_NETWORK) {
  for (i = 0; i < (4 + 1); i++)
   if ((cps[i])->flags & 0x04)
    (cps[i])->Open(sp);
 }
 for (i = 0, mask = 1; i < (4 + 1); i++, mask <<= 1)
  if (sp->lcp.protos & mask && ((cps[i])->flags & 0x01) == 0)
   (cps[i])->Up(sp);
 if (sp->pp_chg)
  sp->pp_chg(sp, (int)sp->pp_phase);
 if (sp->pp_phase == PHASE_NETWORK)
  sppp_lcp_check_and_close(sp);
}
void
sppp_lcp_tld(struct sppp *sp)
{
 int i;
 u_long mask;
 sp->pp_phase = PHASE_TERMINATE;
 sppp_set_phase(sp);
 for (i = 0, mask = 1; i < (4 + 1); i++, mask <<= 1)
  if (sp->lcp.protos & mask && ((cps[i])->flags & 0x01) == 0) {
   (cps[i])->Down(sp);
   (cps[i])->Close(sp);
  }
}
void
sppp_lcp_tls(struct sppp *sp)
{
 sp->pp_phase = PHASE_ESTABLISH;
 sppp_set_phase(sp);
 if (sp->pp_tls)
  (sp->pp_tls)(sp);
}
void
sppp_lcp_tlf(struct sppp *sp)
{
 sp->pp_phase = PHASE_DEAD;
 sppp_set_phase(sp);
 if (sp->pp_tlf)
  (sp->pp_tlf)(sp);
}
void
sppp_lcp_scr(struct sppp *sp)
{
 char opt[6 + 4 + 5 ];
 int i = 0;
 u_short authproto;
 if (sp->lcp.opts & (1 << 5)) {
  if (! sp->lcp.magic)
   sp->lcp.magic = arc4random();
  opt[i++] = 5;
  opt[i++] = 6;
  opt[i++] = sp->lcp.magic >> 24;
  opt[i++] = sp->lcp.magic >> 16;
  opt[i++] = sp->lcp.magic >> 8;
  opt[i++] = sp->lcp.magic;
 }
 if (sp->lcp.opts & (1 << 1)) {
  opt[i++] = 1;
  opt[i++] = 4;
  opt[i++] = sp->lcp.mru >> 8;
  opt[i++] = sp->lcp.mru;
 }
 if (sp->lcp.opts & (1 << 3)) {
  authproto = sp->hisauth.proto;
  opt[i++] = 3;
  opt[i++] = authproto == 0xc223? 5: 4;
  opt[i++] = authproto >> 8;
  opt[i++] = authproto;
  if (authproto == 0xc223)
   opt[i++] = 5;
 }
 sp->confid[0] = ++sp->pp_seq;
 sppp_cp_send (sp, 0xc021, 1, sp->confid[0], i, opt);
}
int
sppp_ncp_check(struct sppp *sp)
{
 int i, mask;
 for (i = 0, mask = 1; i < (4 + 1); i++, mask <<= 1)
  if (sp->lcp.protos & mask && (cps[i])->flags & 0x04)
   return 1;
 return 0;
}
void
sppp_lcp_check_and_close(struct sppp *sp)
{
 if (sp->pp_phase < PHASE_NETWORK)
  return;
 if (sppp_ncp_check(sp))
  return;
 lcp.Close(sp);
}
void
sppp_ipcp_init(struct sppp *sp)
{
 sp->ipcp.opts = 0;
 sp->ipcp.flags = 0;
 sp->state[1] = 0;
 sp->fail_counter[1] = 0;
 task_set(&sp->ipcp.set_addr_task, sppp_set_ip_addrs, sp);
 task_set(&sp->ipcp.clear_addr_task, sppp_clear_ip_addrs, sp);
}
void
sppp_ipcp_destroy(struct sppp *sp)
{
 task_del(systq, &sp->ipcp.set_addr_task);
 task_del(systq, &sp->ipcp.clear_addr_task);
}
void
sppp_ipcp_up(struct sppp *sp)
{
 sppp_up_event(&ipcp, sp);
}
void
sppp_ipcp_down(struct sppp *sp)
{
 sppp_down_event(&ipcp, sp);
}
void
sppp_ipcp_open(struct sppp *sp)
{
 sppp_open_event(&ipcp, sp);
}
void
sppp_ipcp_close(struct sppp *sp)
{
 sppp_close_event(&ipcp, sp);
}
void
sppp_ipcp_TO(void *cookie)
{
 sppp_to_event(&ipcp, (struct sppp *)cookie);
}
int
sppp_ipcp_RCR(struct sppp *sp, struct lcp_header *h, int len)
{
 u_char *buf, *r, *p;
 struct ifnet *ifp = &sp->pp_if;
 int rlen, origlen, debug = ifp->if_flags & 0x4;
 u_int32_t hisaddr, desiredaddr;
 len -= 4;
 origlen = len;
 buf = r = malloc ((len < 6? 6: len), 127, 0x0002);
 if (! buf)
  return (0);
 if (debug)
  log(7, "%s: " "ipcp parse opts: ",
      (ifp)->if_xname);
 p = (void*) (h+1);
 for (rlen = 0; len > 1; len -= p[1], p += p[1]) {
  if (p[1] < 2 || p[1] > len) {
   free(buf, 127, 0);
   return (-1);
  }
  if (debug)
   addlog("%s ", sppp_ipcp_opt_name(*p));
  switch (*p) {
  case 3:
   if (len >= 6 && p[1] == 6) {
    continue;
   }
   if (debug)
    addlog("[invalid] ");
   break;
  default:
   if (debug)
    addlog("[rej] ");
   break;
  }
  __builtin_bcopy((p), (r), (p[1]));
  r += p[1];
  rlen += p[1];
 }
 if (rlen) {
  if (debug)
   addlog(" send conf-rej\n");
  sppp_cp_send(sp, 0x8021, 4, h->ident, rlen, buf);
  goto end;
 } else if (debug)
  addlog("\n");
 if (sp->ipcp.flags & 1)
  hisaddr = sp->ipcp.req_hisaddr;
 else
  sppp_get_ip_addrs(sp, 0, &hisaddr, 0);
 if (debug)
  log(7, "%s: " "ipcp parse opt values: ",
         (ifp)->if_xname);
 p = (void*) (h+1);
 len = origlen;
 for (rlen=0; len>1 && p[1]; len-=p[1], p+=p[1]) {
  if (debug)
   addlog(" %s ", sppp_ipcp_opt_name(*p));
  switch (*p) {
  case 3:
   desiredaddr = p[2] << 24 | p[3] << 16 |
    p[4] << 8 | p[5];
   if (desiredaddr == hisaddr ||
       ((sp->ipcp.flags & 8) &&
       desiredaddr != 0)) {
    if (debug)
     addlog("%s [ack] ",
            sppp_dotted_quad(desiredaddr));
    sp->ipcp.flags |= 1;
    sp->ipcp.req_hisaddr = desiredaddr;
    hisaddr = desiredaddr;
    continue;
   }
   if (debug) {
    if (desiredaddr == 0)
     addlog("[addr requested] ");
    else
     addlog("%s [not agreed] ",
            sppp_dotted_quad(desiredaddr));
   }
   p[2] = hisaddr >> 24;
   p[3] = hisaddr >> 16;
   p[4] = hisaddr >> 8;
   p[5] = hisaddr;
   break;
  }
  __builtin_bcopy((p), (r), (p[1]));
  r += p[1];
  rlen += p[1];
 }
 if (rlen == 0 && !(sp->ipcp.flags & 1)) {
  buf[0] = 3;
  buf[1] = 6;
  buf[2] = hisaddr >> 24;
  buf[3] = hisaddr >> 16;
  buf[4] = hisaddr >> 8;
  buf[5] = hisaddr;
  rlen = 6;
  if (debug)
   addlog("still need hisaddr ");
 }
 if (rlen) {
  if (debug)
   addlog(" send conf-nak\n");
  sppp_cp_send (sp, 0x8021, 3, h->ident, rlen, buf);
 } else {
  if (debug)
   addlog(" send conf-ack\n");
  sppp_cp_send (sp, 0x8021, 2,
         h->ident, origlen, h+1);
 }
 end:
 free(buf, 127, 0);
 return (rlen == 0);
}
void
sppp_ipcp_RCN_rej(struct sppp *sp, struct lcp_header *h, int len)
{
 u_char *p;
 struct ifnet *ifp = &sp->pp_if;
 int debug = ifp->if_flags & 0x4;
 len -= 4;
 if (debug)
  log(7, "%s: " "ipcp rej opts: ",
      (ifp)->if_xname);
 p = (void*) (h+1);
 for (; len > 1; len -= p[1], p += p[1]) {
  if (p[1] < 2 || p[1] > len)
   return;
  if (debug)
   addlog("%s ", sppp_ipcp_opt_name(*p));
  switch (*p) {
  case 3:
   sp->ipcp.opts &= ~(1 << 3);
   break;
  }
 }
 if (debug)
  addlog("\n");
}
void
sppp_ipcp_RCN_nak(struct sppp *sp, struct lcp_header *h, int len)
{
 u_char *p;
 struct ifnet *ifp = &sp->pp_if;
 int debug = ifp->if_flags & 0x4;
 u_int32_t wantaddr;
 len -= 4;
 if (debug)
  log(7, "%s: " "ipcp nak opts: ",
      (ifp)->if_xname);
 p = (void*) (h+1);
 for (; len > 1; len -= p[1], p += p[1]) {
  if (p[1] < 2 || p[1] > len)
   return;
  if (debug)
   addlog("%s ", sppp_ipcp_opt_name(*p));
  switch (*p) {
  case 3:
   if (len >= 6 && p[1] == 6) {
    wantaddr = p[2] << 24 | p[3] << 16 |
     p[4] << 8 | p[5];
    sp->ipcp.opts |= (1 << 3);
    if (debug)
     addlog("[wantaddr %s] ",
            sppp_dotted_quad(wantaddr));
    if (sp->ipcp.flags & 2) {
     if (debug)
      addlog("[agree] ");
     sp->ipcp.flags |= 4;
     sp->ipcp.req_myaddr = wantaddr;
    }
   }
   break;
  }
 }
 if (debug)
  addlog("\n");
}
void
sppp_ipcp_tlu(struct sppp *sp)
{
 if (sp->ipcp.req_myaddr != 0 || sp->ipcp.req_hisaddr != 0)
  task_add(systq, &sp->ipcp.set_addr_task);
}
void
sppp_ipcp_tld(struct sppp *sp)
{
}
void
sppp_ipcp_tls(struct sppp *sp)
{
 struct ifnet *ifp = &sp->pp_if; int debug = ifp->if_flags & 0x4;
 u_int32_t myaddr, hisaddr;
 sp->ipcp.flags &= ~(1|4|
     2|8);
 sp->ipcp.req_myaddr = 0;
 sp->ipcp.req_hisaddr = 0;
 sppp_get_ip_addrs(sp, &myaddr, &hisaddr, 0);
 if (hisaddr == 0) {
  if (debug)
   log(7, "%s: " "ipcp_open(): no IP interface\n",
       (ifp)->if_xname);
  return;
 }
 if (myaddr == 0) {
  sp->ipcp.flags |= 2;
  sp->ipcp.opts |= (1 << 3);
 }
 if (hisaddr >= 1 && hisaddr <= 255) {
  sp->ipcp.flags |= 8;
 }
 sp->lcp.protos |= (1 << 1);
}
void
sppp_ipcp_tlf(struct sppp *sp)
{
 if (sp->ipcp.flags & (2|8))
  task_add(systq, &sp->ipcp.clear_addr_task);
 sp->lcp.protos &= ~(1 << 1);
 sppp_lcp_check_and_close(sp);
}
void
sppp_ipcp_scr(struct sppp *sp)
{
 char opt[6 + 6 ];
 u_int32_t ouraddr;
 int i = 0;
 if (sp->ipcp.opts & (1 << 3)) {
  if (sp->ipcp.flags & 4)
   ouraddr = sp->ipcp.req_myaddr;
  else
   sppp_get_ip_addrs(sp, &ouraddr, 0, 0);
  opt[i++] = 3;
  opt[i++] = 6;
  opt[i++] = ouraddr >> 24;
  opt[i++] = ouraddr >> 16;
  opt[i++] = ouraddr >> 8;
  opt[i++] = ouraddr;
 }
 sp->confid[1] = ++sp->pp_seq;
 sppp_cp_send(sp, 0x8021, 1, sp->confid[1], i, opt);
}
void
sppp_ipv6cp_init(struct sppp *sp)
{
 sp->ipv6cp.opts = 0;
 sp->ipv6cp.flags = 0;
 sp->state[2] = 0;
 sp->fail_counter[2] = 0;
 task_set(&sp->ipv6cp.set_addr_task, sppp_update_ip6_addr, sp);
}
void
sppp_ipv6cp_destroy(struct sppp *sp)
{
 task_del(systq, &sp->ipv6cp.set_addr_task);
}
void
sppp_ipv6cp_up(struct sppp *sp)
{
 sppp_up_event(&ipv6cp, sp);
}
void
sppp_ipv6cp_down(struct sppp *sp)
{
 sppp_down_event(&ipv6cp, sp);
}
void
sppp_ipv6cp_open(struct sppp *sp)
{
 struct ifnet *ifp = &sp->pp_if; int debug = ifp->if_flags & 0x4;
 struct in6_addr myaddr, hisaddr;
 sp->ipv6cp.flags &= ~(2|1);
 sppp_get_ip6_addrs(sp, &myaddr, &hisaddr, ((void *)0));
 if (((*(const u_int32_t *)(const void *)(&(&myaddr)->__u6_addr.__u6_addr8[0]) == 0) && (*(const u_int32_t *)(const void *)(&(&myaddr)->__u6_addr.__u6_addr8[4]) == 0) && (*(const u_int32_t *)(const void *)(&(&myaddr)->__u6_addr.__u6_addr8[8]) == 0) && (*(const u_int32_t *)(const void *)(&(&myaddr)->__u6_addr.__u6_addr8[12]) == 0))) {
  if (debug)
   log(7, "%s: " "ipv6cp_open(): no IPv6 interface\n",
       (ifp)->if_xname);
  return;
 }
 sp->ipv6cp.opts |= (1 << 1);
 sppp_open_event(&ipv6cp, sp);
}
void
sppp_ipv6cp_close(struct sppp *sp)
{
 sppp_close_event(&ipv6cp, sp);
}
void
sppp_ipv6cp_TO(void *cookie)
{
 sppp_to_event(&ipv6cp, (struct sppp *)cookie);
}
int
sppp_ipv6cp_RCR(struct sppp *sp, struct lcp_header *h, int len)
{
 u_char *buf, *r, *p;
 struct ifnet *ifp = &sp->pp_if;
 int rlen, origlen, debug = ifp->if_flags & 0x4;
 struct in6_addr myaddr, desiredaddr, suggestaddr;
 int ifidcount;
 int type;
 int collision, nohisaddr;
 char addr[46];
 len -= 4;
 origlen = len;
 buf = r = malloc ((len < 6? 6: len), 127, 0x0002);
 if (! buf)
  return (0);
 if (debug)
  log(7, "%s: ipv6cp parse opts:",
      (ifp)->if_xname);
 p = (void *)(h + 1);
 ifidcount = 0;
 for (rlen=0; len>1 && p[1]; len-=p[1], p+=p[1]) {
  if (p[1] < 2 || p[1] > len) {
   free(buf, 127, 0);
   return (-1);
  }
  if (debug)
   addlog(" %s", sppp_ipv6cp_opt_name(*p));
  switch (*p) {
  case 1:
   if (len >= 10 && p[1] == 10 && ifidcount == 0) {
    ifidcount++;
    continue;
   }
   if (debug)
    addlog(" [invalid]");
   break;
  default:
   if (debug)
    addlog(" [rej]");
   break;
  }
  __builtin_bcopy((p), (r), (p[1]));
  r += p[1];
  rlen += p[1];
 }
 if (rlen) {
  if (debug)
   addlog(" send conf-rej\n");
  sppp_cp_send(sp, 0x8057, 4, h->ident, rlen, buf);
  goto end;
 } else if (debug)
  addlog("\n");
 if (sp->ipv6cp.flags & 1)
  myaddr = sp->ipv6cp.req_ifid.ifra_ifrau.ifrau_addr.sin6_addr;
 else
  sppp_get_ip6_addrs(sp, &myaddr, ((void *)0), ((void *)0));
 if (debug)
  log(7, "%s: ipv6cp parse opt values: ",
         (ifp)->if_xname);
 p = (void *)(h + 1);
 len = origlen;
 type = 2;
 for (rlen=0; len>1 && p[1]; len-=p[1], p+=p[1]) {
  if (debug)
   addlog(" %s", sppp_ipv6cp_opt_name(*p));
  switch (*p) {
  case 1:
   __builtin_memset((&desiredaddr), (0), (sizeof(desiredaddr)));
   __builtin_bcopy((&p[2]), (&desiredaddr.__u6_addr.__u6_addr8[8]), (8));
   collision = (__builtin_memcmp((&desiredaddr.__u6_addr.__u6_addr8[8]), (&myaddr.__u6_addr.__u6_addr8[8]), (8)) == 0);
   nohisaddr = ((*(const u_int32_t *)(const void *)(&(&desiredaddr)->__u6_addr.__u6_addr8[0]) == 0) && (*(const u_int32_t *)(const void *)(&(&desiredaddr)->__u6_addr.__u6_addr8[4]) == 0) && (*(const u_int32_t *)(const void *)(&(&desiredaddr)->__u6_addr.__u6_addr8[8]) == 0) && (*(const u_int32_t *)(const void *)(&(&desiredaddr)->__u6_addr.__u6_addr8[12]) == 0));
   desiredaddr.__u6_addr.__u6_addr16[0] = ((__uint16_t)(0xfe80));
   if (!collision && !nohisaddr) {
    type = 2;
    if (debug) {
     addlog(" %s [%s]",
         inet_ntop(24, &desiredaddr,
      addr, sizeof(addr)),
         sppp_cp_type_name(type));
    }
    sppp_set_ip6_addr(sp, &myaddr, &desiredaddr);
    continue;
   }
   __builtin_memset((&suggestaddr), (0), (sizeof(suggestaddr)));
   if (collision && nohisaddr) {
    type = 4;
    __builtin_memset((&p[2]), (0), (8));
   } else {
    type = 3;
    sppp_suggest_ip6_addr(sp, &suggestaddr);
    __builtin_bcopy((&suggestaddr.__u6_addr.__u6_addr8[8]), (&p[2]), (8));
   }
   if (debug)
    addlog(" %s [%s]",
        inet_ntop(24, &desiredaddr, addr,
     sizeof(addr)),
        sppp_cp_type_name(type));
   break;
  }
  __builtin_bcopy((p), (r), (p[1]));
  r += p[1];
  rlen += p[1];
 }
 if (rlen == 0 && type == 2) {
  if (debug)
   addlog(" send %s\n", sppp_cp_type_name(type));
  sppp_cp_send(sp, 0x8057, type, h->ident, origlen, h + 1);
 } else {
  if (debug) {
   addlog(" send %s suggest %s\n",
       sppp_cp_type_name(type),
       inet_ntop(24, &suggestaddr, addr,
    sizeof(addr)));
  }
  sppp_cp_send(sp, 0x8057, type, h->ident, rlen, buf);
 }
end:
 free(buf, 127, 0);
 return (rlen == 0);
}
void
sppp_ipv6cp_RCN_rej(struct sppp *sp, struct lcp_header *h, int len)
{
 u_char *p;
 struct ifnet *ifp = &sp->pp_if;
 int debug = ifp->if_flags & 0x4;
 len -= 4;
 if (debug)
  log(7, "%s: ipv6cp rej opts:",
      (ifp)->if_xname);
 p = (void *)(h + 1);
 for (; len > 1 && p[1]; len -= p[1], p += p[1]) {
  if (p[1] < 2 || p[1] > len)
   return;
  if (debug)
   addlog(" %s", sppp_ipv6cp_opt_name(*p));
  switch (*p) {
  case 1:
   sp->ipv6cp.opts &= ~(1 << 1);
   break;
  }
 }
 if (debug)
  addlog("\n");
 return;
}
void
sppp_ipv6cp_RCN_nak(struct sppp *sp, struct lcp_header *h, int len)
{
 u_char *p;
 struct ifnet *ifp = &sp->pp_if;
 int debug = ifp->if_flags & 0x4;
 struct in6_addr suggestaddr;
 char addr[46];
 len -= 4;
 if (debug)
  log(7, "%s: " "ipv6cp nak opts: ",
      (ifp)->if_xname);
 p = (void*) (h+1);
 for (; len > 1; len -= p[1], p += p[1]) {
  if (p[1] < 2 || p[1] > len)
   return;
  if (debug)
   addlog("%s ", sppp_ipv6cp_opt_name(*p));
  switch (*p) {
  case 1:
   if (len < 10 || p[1] != 10)
    break;
   sp->ipv6cp.flags |= 1;
   __builtin_memset((&suggestaddr), (0), (sizeof(suggestaddr)));
   __builtin_bcopy((&p[2]), (&suggestaddr.__u6_addr.__u6_addr8[8]), (8));
   if (((*(const u_int32_t *)(const void *)(&(&suggestaddr)->__u6_addr.__u6_addr8[0]) == 0) && (*(const u_int32_t *)(const void *)(&(&suggestaddr)->__u6_addr.__u6_addr8[4]) == 0) && (*(const u_int32_t *)(const void *)(&(&suggestaddr)->__u6_addr.__u6_addr8[8]) == 0) && (*(const u_int32_t *)(const void *)(&(&suggestaddr)->__u6_addr.__u6_addr8[12]) == 0)) ||
       (sp->ipv6cp.flags & 2)) {
    sppp_suggest_ip6_addr(sp, &suggestaddr);
    sppp_set_ip6_addr(sp, &suggestaddr, ((void *)0));
    sp->ipv6cp.flags &= ~2;
   } else {
    suggestaddr.__u6_addr.__u6_addr16[0] = ((__uint16_t)(0xfe80));
    sp->ipv6cp.opts |= (1 << 1);
    if (debug)
     addlog(" [suggestaddr %s]",
         inet_ntop(24, &suggestaddr,
             addr, sizeof(addr)));
    sppp_set_ip6_addr(sp, &suggestaddr, ((void *)0));
    if (debug)
     addlog(" [agree]");
    sp->ipv6cp.flags |= 2;
   }
   break;
  }
 }
 if (debug)
  addlog("\n");
}
void
sppp_ipv6cp_tlu(struct sppp *sp)
{
}
void
sppp_ipv6cp_tld(struct sppp *sp)
{
}
void
sppp_ipv6cp_tls(struct sppp *sp)
{
 sp->lcp.protos |= (1 << 2);
}
void
sppp_ipv6cp_tlf(struct sppp *sp)
{
 sp->lcp.protos &= ~(1 << 2);
 sppp_lcp_check_and_close(sp);
}
void
sppp_ipv6cp_scr(struct sppp *sp)
{
 char opt[10 + 4 ];
 struct in6_addr ouraddr;
 int i = 0;
 if (sp->ipv6cp.opts & (1 << 1)) {
  if (sp->ipv6cp.flags & 1)
   ouraddr = sp->ipv6cp.req_ifid.ifra_ifrau.ifrau_addr.sin6_addr;
  else
   sppp_get_ip6_addrs(sp, &ouraddr, ((void *)0), ((void *)0));
  opt[i++] = 1;
  opt[i++] = 10;
  __builtin_bcopy((&ouraddr.__u6_addr.__u6_addr8[8]), (&opt[i]), (8));
  i += 8;
 }
 sp->confid[2] = ++sp->pp_seq;
 sppp_cp_send(sp, 0x8057, 1, sp->confid[2], i, opt);
}
void
sppp_chap_input(struct sppp *sp, struct mbuf *m)
{
 struct ifnet *ifp = &sp->pp_if; int debug = ifp->if_flags & 0x4;
 struct lcp_header *h;
 int len, x;
 u_char *value, *name, digest[16], dsize;
 int value_len, name_len;
 MD5_CTX ctx;
 len = m->M_dat.MH.MH_pkthdr.len;
 if (len < 4) {
  if (debug)
   log(7,
       "%s: " "chap invalid packet length: %d bytes\n",
       (ifp)->if_xname, len);
  return;
 }
 h = ((struct lcp_header*)((m)->m_hdr.mh_data));
 if (len > ((__uint16_t)(h->len)))
  len = ((__uint16_t)(h->len));
 switch (h->type) {
 case 1:
  value = 1 + (u_char*)(h+1);
  value_len = value[-1];
  name = value + value_len;
  name_len = len - value_len - 5;
  if (name_len < 0) {
   if (debug) {
    log(7,
        "%s: " "chap corrupted challenge "
        "<%s id=0x%x len=%d",
        (ifp)->if_xname,
        sppp_auth_type_name(0xc223, h->type),
        h->ident, ((__uint16_t)(h->len)));
    if (len > 4)
     sppp_print_bytes((u_char*) (h+1), len-4);
    addlog(">\n");
   }
   break;
  }
  if (debug) {
   log(7,
       "%s: " "chap input <%s id=0x%x len=%d name=",
       (ifp)->if_xname,
       sppp_auth_type_name(0xc223, h->type), h->ident,
       ((__uint16_t)(h->len)));
   sppp_print_string((char*) name, name_len);
   addlog(" value-size=%d value=", value_len);
   sppp_print_bytes(value, value_len);
   addlog(">\n");
  }
  MD5Init(&ctx);
  MD5Update(&ctx, &h->ident, 1);
  MD5Update(&ctx, sp->myauth.secret, strlen(sp->myauth.secret));
  MD5Update(&ctx, value, value_len);
  MD5Final(digest, &ctx);
  dsize = sizeof digest;
  sppp_auth_send(&chap, sp, 2, h->ident,
          sizeof dsize, (const char *)&dsize,
          sizeof digest, digest,
          strlen(sp->myauth.name),
          sp->myauth.name,
          0);
  break;
 case 3:
  if (debug) {
   log(7, "%s: " "chap success",
       (ifp)->if_xname);
   if (len > 4) {
    addlog(": ");
    sppp_print_string((char*)(h + 1), len - 4);
   }
   addlog("\n");
  }
  x = _splraise(6);
  sp->pp_flags &= ~0x10;
  if (sp->myauth.proto == 0xc223 &&
      (sp->lcp.opts & (1 << 3)) &&
      (sp->lcp.protos & (1 << 4)) == 0) {
   _splx(x);
   break;
  }
  _splx(x);
  sppp_phase_network(sp);
  break;
 case 4:
  if (debug) {
   log(6, "%s: " "chap failure",
       (ifp)->if_xname);
   if (len > 4) {
    addlog(": ");
    sppp_print_string((char*)(h + 1), len - 4);
   }
   addlog("\n");
  } else
   log(6, "%s: " "chap failure\n",
       (ifp)->if_xname);
  break;
 case 2:
  value = 1 + (u_char*)(h+1);
  value_len = value[-1];
  name = value + value_len;
  name_len = len - value_len - 5;
  if (name_len < 0) {
   if (debug) {
    log(7,
        "%s: " "chap corrupted response "
        "<%s id=0x%x len=%d",
        (ifp)->if_xname,
        sppp_auth_type_name(0xc223, h->type),
        h->ident, ((__uint16_t)(h->len)));
    if (len > 4)
     sppp_print_bytes((u_char*)(h+1), len-4);
    addlog(">\n");
   }
   break;
  }
  if (h->ident != sp->confid[4]) {
   if (debug)
    log(7,
        "%s: " "chap dropping response for old ID "
        "(got %d, expected %d)\n",
        (ifp)->if_xname,
        h->ident, sp->confid[4]);
   break;
  }
  if (name_len != strlen(sp->hisauth.name)
      || __builtin_bcmp((name), (sp->hisauth.name), (name_len)) != 0) {
   log(6, "%s: " "chap response, his name ",
       (ifp)->if_xname);
   sppp_print_string(name, name_len);
   addlog(" != expected ");
   sppp_print_string(sp->hisauth.name,
       strlen(sp->hisauth.name));
   addlog("\n");
  }
  if (debug) {
   log(7, "%s: " "chap input(%s) "
       "<%s id=0x%x len=%d name=",
       (ifp)->if_xname,
       sppp_state_name(sp->state[4]),
       sppp_auth_type_name(0xc223, h->type),
       h->ident, ((__uint16_t)(h->len)));
   sppp_print_string((char*)name, name_len);
   addlog(" value-size=%d value=", value_len);
   sppp_print_bytes(value, value_len);
   addlog(">\n");
  }
  if (value_len != 16) {
   if (debug)
    log(7,
        "%s: " "chap bad hash value length: "
        "%d bytes, should be %d\n",
        (ifp)->if_xname, value_len,
        16);
   break;
  }
  MD5Init(&ctx);
  MD5Update(&ctx, &h->ident, 1);
  MD5Update(&ctx, sp->hisauth.secret, strlen(sp->hisauth.secret));
  MD5Update(&ctx, sp->chap_challenge, 16);
  MD5Final(digest, &ctx);
  if (value_len != sizeof digest ||
      timingsafe_bcmp(digest, value, value_len) != 0) {
   sppp_auth_send(&chap, sp, 4, h->ident,
           sizeof("Failed...") - 1, (u_char *)"Failed...",
           0);
   chap.tld(sp);
   break;
  }
  if (sp->state[4] == 6 ||
      sp->state[4] == 9)
   sppp_auth_send(&chap, sp, 3, h->ident,
           sizeof("Welcome!") - 1, (u_char *)"Welcome!",
           0);
  if (sp->state[4] == 6) {
   sppp_cp_change_state(&chap, sp, 9);
   chap.tlu(sp);
  }
  break;
 default:
  if (debug) {
   log(7, "%s: " "chap unknown input(%s) "
       "<0x%x id=0x%xh len=%d",
       (ifp)->if_xname,
       sppp_state_name(sp->state[4]),
       h->type, h->ident, ((__uint16_t)(h->len)));
   if (len > 4)
    sppp_print_bytes((u_char*)(h+1), len-4);
   addlog(">\n");
  }
  break;
 }
}
void
sppp_chap_init(struct sppp *sp)
{
 sp->state[4] = 2;
 sp->fail_counter[4] = 0;
}
void
sppp_chap_open(struct sppp *sp)
{
 if (sp->myauth.proto == 0xc223 &&
     (sp->lcp.opts & (1 << 3)) != 0) {
  chap.scr(sp);
  sp->rst_counter[4] = sp->lcp.max_configure;
  sppp_cp_change_state(&chap, sp, 6);
 }
}
void
sppp_chap_close(struct sppp *sp)
{
 if (sp->state[4] != 2)
  sppp_cp_change_state(&chap, sp, 2);
}
void
sppp_chap_TO(void *cookie)
{
 struct sppp *sp = (struct sppp *)cookie;
 struct ifnet *ifp = &sp->pp_if; int debug = ifp->if_flags & 0x4;
 int s;
 s = _splraise(6);
 if (debug)
  log(7, "%s: " "chap TO(%s) rst_counter = %d\n",
      (ifp)->if_xname,
      sppp_state_name(sp->state[4]),
      sp->rst_counter[4]);
 if (--sp->rst_counter[4] < 0)
  switch (sp->state[4]) {
  case 6:
   chap.tld(sp);
   sppp_cp_change_state(&chap, sp, 2);
   break;
  }
 else
  switch (sp->state[4]) {
  case 9:
   sp->rst_counter[4] = sp->lcp.max_configure;
  case 6:
   chap.scr(sp);
   sppp_cp_change_state(&chap, sp, 6);
   break;
  }
 _splx(s);
}
void
sppp_chap_tlu(struct sppp *sp)
{
 struct ifnet *ifp = &sp->pp_if; int debug = ifp->if_flags & 0x4;
 int i = 0, x;
 i = 0;
 sp->rst_counter[4] = sp->lcp.max_configure;
 if ((sp->hisauth.flags & 2) == 0) {
  i = 300 + (arc4random() & 0x01fe);
  timeout_add_sec(&sp->ch[4], i);
 }
 if (debug) {
  log(7,
      "%s: " "chap %s, ",
      (ifp)->if_xname,
      sp->pp_phase == PHASE_NETWORK? "reconfirmed": "tlu");
  if ((sp->hisauth.flags & 2) == 0)
   addlog("next re-challenge in %d seconds\n", i);
  else
   addlog("re-challenging suppressed\n");
 }
 x = _splraise(6);
 sp->lcp.protos |= (1 << 4);
 if (sp->pp_flags & 0x10) {
  _splx(x);
  return;
 }
 _splx(x);
 if (sp->pp_phase != PHASE_NETWORK)
  sppp_phase_network(sp);
}
void
sppp_chap_tld(struct sppp *sp)
{
 struct ifnet *ifp = &sp->pp_if; int debug = ifp->if_flags & 0x4;
 if (debug)
  log(7, "%s: " "chap tld\n", (ifp)->if_xname);
 timeout_del(&(sp->ch[4]));
 sp->lcp.protos &= ~(1 << 4);
 lcp.Close(sp);
}
void
sppp_chap_scr(struct sppp *sp)
{
 u_char clen;
 arc4random_buf(sp->chap_challenge, sizeof(sp->chap_challenge));
 clen = 16;
 sp->confid[4] = ++sp->pp_seq;
 sppp_auth_send(&chap, sp, 1, sp->confid[4],
         sizeof clen, (const char *)&clen,
         (size_t)16, sp->chap_challenge,
         strlen(sp->myauth.name),
         sp->myauth.name,
         0);
}
void
sppp_pap_input(struct sppp *sp, struct mbuf *m)
{
 struct ifnet *ifp = &sp->pp_if; int debug = ifp->if_flags & 0x4;
 struct lcp_header *h;
 int len, x;
 u_char *name, *passwd, mlen;
 int name_len, passwd_len;
 len = m->M_dat.MH.MH_pkthdr.len;
 if (len < 5) {
  if (debug)
   log(7,
       "%s: " "pap invalid packet length: %d bytes\n",
       (ifp)->if_xname, len);
  return;
 }
 h = ((struct lcp_header*)((m)->m_hdr.mh_data));
 if (len > ((__uint16_t)(h->len)))
  len = ((__uint16_t)(h->len));
 switch (h->type) {
 case 1:
  name = 1 + (u_char*)(h+1);
  name_len = name[-1];
  passwd = name + name_len + 1;
  if (name_len > len - 6 ||
      (passwd_len = passwd[-1]) > len - 6 - name_len) {
   if (debug) {
    log(7, "%s: " "pap corrupted input "
        "<%s id=0x%x len=%d",
        (ifp)->if_xname,
        sppp_auth_type_name(0xc023, h->type),
        h->ident, ((__uint16_t)(h->len)));
    if (len > 4)
     sppp_print_bytes((u_char*)(h+1), len-4);
    addlog(">\n");
   }
   break;
  }
  if (debug) {
   log(7, "%s: " "pap input(%s) "
       "<%s id=0x%x len=%d name=",
       (ifp)->if_xname,
       sppp_state_name(sp->state[3]),
       sppp_auth_type_name(0xc023, h->type),
       h->ident, ((__uint16_t)(h->len)));
   sppp_print_string((char*)name, name_len);
   addlog(" passwd=");
   sppp_print_string((char*)passwd, passwd_len);
   addlog(">\n");
  }
  if (name_len > 256 ||
      passwd_len > 256 ||
      __builtin_bcmp((name), (sp->hisauth.name), (name_len)) != 0 ||
      __builtin_bcmp((passwd), (sp->hisauth.secret), (passwd_len)) != 0) {
   mlen = sizeof("Failed...") - 1;
   sppp_auth_send(&pap, sp, 3, h->ident,
           sizeof mlen, (const char *)&mlen,
           sizeof("Failed...") - 1, (u_char *)"Failed...",
           0);
   pap.tld(sp);
   break;
  }
  if (sp->state[3] == 6 ||
      sp->state[3] == 9) {
   mlen = sizeof("Welcome!") - 1;
   sppp_auth_send(&pap, sp, 2, h->ident,
           sizeof mlen, (const char *)&mlen,
           sizeof("Welcome!") - 1, (u_char *)"Welcome!",
           0);
  }
  if (sp->state[3] == 6) {
   sppp_cp_change_state(&pap, sp, 9);
   pap.tlu(sp);
  }
  break;
 case 2:
  timeout_del(&(sp->pap_my_to_ch));
  if (debug) {
   log(7, "%s: " "pap success",
       (ifp)->if_xname);
   name_len = *((char *)h);
   if (len > 5 && name_len) {
    addlog(": ");
    sppp_print_string((char*)(h+1), name_len);
   }
   addlog("\n");
  }
  x = _splraise(6);
  sp->pp_flags &= ~0x10;
  if (sp->myauth.proto == 0xc023 &&
      (sp->lcp.opts & (1 << 3)) &&
      (sp->lcp.protos & (1 << 3)) == 0) {
   _splx(x);
   break;
  }
  _splx(x);
  sppp_phase_network(sp);
  break;
 case 3:
  timeout_del(&(sp->pap_my_to_ch));
  if (debug) {
   log(6, "%s: " "pap failure",
       (ifp)->if_xname);
   name_len = *((char *)h);
   if (len > 5 && name_len) {
    addlog(": ");
    sppp_print_string((char*)(h+1), name_len);
   }
   addlog("\n");
  } else
   log(6, "%s: " "pap failure\n",
       (ifp)->if_xname);
  break;
 default:
  if (debug) {
   log(7, "%s: " "pap corrupted input "
       "<0x%x id=0x%x len=%d",
       (ifp)->if_xname,
       h->type, h->ident, ((__uint16_t)(h->len)));
   if (len > 4)
    sppp_print_bytes((u_char*)(h+1), len-4);
   addlog(">\n");
  }
  break;
 }
}
void
sppp_pap_init(struct sppp *sp)
{
 sp->state[3] = 2;
 sp->fail_counter[3] = 0;
}
void
sppp_pap_open(struct sppp *sp)
{
 if (sp->hisauth.proto == 0xc023 &&
     (sp->lcp.opts & (1 << 3)) != 0) {
  sp->rst_counter[3] = sp->lcp.max_configure;
  sppp_cp_change_state(&pap, sp, 6);
 }
 if (sp->myauth.proto == 0xc023) {
  pap.scr(sp);
  timeout_add(&sp->pap_my_to_ch, sp->lcp.timeout);
 }
}
void
sppp_pap_close(struct sppp *sp)
{
 if (sp->state[3] != 2)
  sppp_cp_change_state(&pap, sp, 2);
}
void
sppp_pap_TO(void *cookie)
{
 struct sppp *sp = (struct sppp *)cookie;
 struct ifnet *ifp = &sp->pp_if; int debug = ifp->if_flags & 0x4;
 int s;
 s = _splraise(6);
 if (debug)
  log(7, "%s: " "pap TO(%s) rst_counter = %d\n",
      (ifp)->if_xname,
      sppp_state_name(sp->state[3]),
      sp->rst_counter[3]);
 if (--sp->rst_counter[3] < 0)
  switch (sp->state[3]) {
  case 6:
   pap.tld(sp);
   sppp_cp_change_state(&pap, sp, 2);
   break;
  }
 else
  switch (sp->state[3]) {
  case 6:
   sppp_cp_change_state(&pap, sp, 6);
   break;
  }
 _splx(s);
}
void
sppp_pap_my_TO(void *cookie)
{
 struct sppp *sp = (struct sppp *)cookie;
 struct ifnet *ifp = &sp->pp_if; int debug = ifp->if_flags & 0x4;
 if (debug)
  log(7, "%s: " "pap peer TO\n",
      (ifp)->if_xname);
 pap.scr(sp);
}
void
sppp_pap_tlu(struct sppp *sp)
{
 struct ifnet *ifp = &sp->pp_if; int debug = ifp->if_flags & 0x4;
 int x;
 sp->rst_counter[3] = sp->lcp.max_configure;
 if (debug)
  log(7, "%s: " "%s tlu\n",
      (ifp)->if_xname, pap.name);
 x = _splraise(6);
 sp->lcp.protos |= (1 << 3);
 if (sp->pp_flags & 0x10) {
  _splx(x);
  return;
 }
 _splx(x);
 sppp_phase_network(sp);
}
void
sppp_pap_tld(struct sppp *sp)
{
 struct ifnet *ifp = &sp->pp_if; int debug = ifp->if_flags & 0x4;
 if (debug)
  log(7, "%s: " "pap tld\n", (ifp)->if_xname);
 timeout_del(&(sp->ch[3]));
 timeout_del(&(sp->pap_my_to_ch));
 sp->lcp.protos &= ~(1 << 3);
 lcp.Close(sp);
}
void
sppp_pap_scr(struct sppp *sp)
{
 u_char idlen, pwdlen;
 sp->confid[3] = ++sp->pp_seq;
 pwdlen = strlen(sp->myauth.secret);
 idlen = strlen(sp->myauth.name);
 sppp_auth_send(&pap, sp, 1, sp->confid[3],
         sizeof idlen, (const char *)&idlen,
         (size_t)idlen, sp->myauth.name,
         sizeof pwdlen, (const char *)&pwdlen,
         (size_t)pwdlen, sp->myauth.secret,
         0);
}
void
sppp_auth_send(const struct cp *cp, struct sppp *sp,
  unsigned int type, u_int id, ...)
{
 struct ifnet *ifp = &sp->pp_if; int debug = ifp->if_flags & 0x4;
 struct lcp_header *lh;
 struct mbuf *m;
 u_char *p;
 int len, s;
 unsigned int mlen;
 const char *msg;
 va_list ap;
 m = m_gethdr((0x0002), (1));
 if (! m)
  return;
 m->M_dat.MH.MH_pkthdr.ph_ifidx = 0;
 m->M_dat.MH.MH_pkthdr.pf.prio = sp->pp_if.if_llprio;
 *((u_int16_t *)((m)->m_hdr.mh_data)) = ((__uint16_t)(cp->proto));
 lh = (struct lcp_header *)(((u_int8_t *)((m)->m_hdr.mh_data)) + 2);
 lh->type = type;
 lh->ident = id;
 p = (u_char*) (lh+1);
 __builtin_va_start((ap), id);
 len = 0;
 while ((mlen = (unsigned int)__builtin_va_arg((ap), size_t)) != 0) {
  msg = __builtin_va_arg((ap), const char *);
  len += mlen;
  if (len > ((256 - sizeof(struct m_hdr)) - sizeof(struct pkthdr)) - 2 - sizeof (struct lcp_header)) {
   __builtin_va_end((ap));
   m_freem(m);
   return;
  }
  __builtin_bcopy((msg), (p), (mlen));
  p += mlen;
 }
 __builtin_va_end((ap));
 m->M_dat.MH.MH_pkthdr.len = m->m_hdr.mh_len = 2 + sizeof (struct lcp_header) + len;
 lh->len = ((__uint16_t)(sizeof (struct lcp_header) + len));
 if (debug) {
  log(7, "%s: " "%s output <%s id=0x%x len=%d",
      (ifp)->if_xname, cp->name,
      sppp_auth_type_name(cp->proto, lh->type),
      lh->ident, ((__uint16_t)(lh->len)));
  if (len)
   sppp_print_bytes((u_char*) (lh+1), len);
  addlog(">\n");
 }
 len = m->M_dat.MH.MH_pkthdr.len + sp->pp_framebytes;
 if (mq_enqueue(&sp->pp_cpq, m) != 0) {
  ifp->if_data.ifi_oerrors++;
  return;
 }
 ifp->if_data.ifi_obytes += len;
 s = _splraise(6);
 if_start(ifp);
 _splx(s);
}
void
sppp_keepalive(void *dummy)
{
 struct sppp *sp;
 int s, sl;
 struct timeval tv;
 do { _rw_enter_write(&netlock ); sl = 2; } while (0);
 s = _splraise(6);
 getmicrouptime(&tv);
 for (sp=spppq; sp; sp=sp->pp_next) {
  struct ifnet *ifp = &sp->pp_if;
  if (! (sp->pp_flags & 0x01) ||
      ! (ifp->if_flags & 0x40))
   continue;
  if (sp->pp_phase < PHASE_AUTHENTICATE)
   continue;
  if ((tv.tv_sec - sp->pp_last_receive) < 15) {
   sp->pp_alivecnt = 0;
   continue;
  }
  if (sp->pp_alivecnt >= 3) {
   if_down (ifp);
   mq_purge(&sp->pp_cpq);
   log(6, "%s: " "LCP keepalive timeout\n",
       (ifp)->if_xname);
   sp->pp_alivecnt = 0;
   lcp.Close(sp);
   sppp_cp_change_state(&lcp, sp, 3);
   if (sp->pp_tlf)
    sp->pp_tlf(sp);
   continue;
  }
  if (sp->pp_alivecnt < 3)
   ++sp->pp_alivecnt;
  if (sp->pp_phase >= PHASE_AUTHENTICATE) {
   u_int32_t nmagic = ((__uint32_t)(sp->lcp.magic));
   sp->lcp.echoid = ++sp->pp_seq;
   sppp_cp_send (sp, 0xc021, 9,
    sp->lcp.echoid, 4, &nmagic);
  }
 }
 _splx(s);
 do { (void)sl; _rw_exit_write(&netlock ); } while (0);
 timeout_add_sec(&keepalive_ch, 10);
}
void
sppp_get_ip_addrs(struct sppp *sp, u_int32_t *src, u_int32_t *dst,
    u_int32_t *srcmask)
{
 struct ifnet *ifp = &sp->pp_if;
 struct ifaddr *ifa;
 struct sockaddr_in *si, *sm = 0;
 u_int32_t ssrc, ddst;
 sm = ((void *)0);
 ssrc = ddst = 0;
 si = 0;
 for((ifa) = ((&ifp->if_addrlist)->tqh_first); (ifa) != ((void *)0); (ifa) = ((ifa)->ifa_list.tqe_next))
 {
  if (ifa->ifa_addr->sa_family == 2) {
   si = (struct sockaddr_in *)ifa->ifa_addr;
   sm = (struct sockaddr_in *)ifa->ifa_netmask;
   if (si)
    break;
  }
 }
 if (ifa) {
  if (si && si->sin_addr.s_addr) {
   ssrc = si->sin_addr.s_addr;
   if (srcmask)
    *srcmask = ((__uint32_t)(sm->sin_addr.s_addr));
  }
  si = (struct sockaddr_in *)ifa->ifa_dstaddr;
  if (si && si->sin_addr.s_addr)
   ddst = si->sin_addr.s_addr;
 }
 if (dst) *dst = ((__uint32_t)(ddst));
 if (src) *src = ((__uint32_t)(ssrc));
}
int
sppp_update_gw_walker(struct rtentry *rt, void *arg, unsigned int id)
{
 struct ifnet *ifp = arg;
 if (rt->rt_ifidx == ifp->if_index) {
  if (rt->rt_ifa->ifa_dstaddr->sa_family !=
      rt->rt_gateway->sa_family ||
      !((rt->rt_flags) & (0x2)))
   return (0);
  rt_setgate(rt, rt->rt_ifa->ifa_dstaddr, ifp->if_data.ifi_rdomain);
 }
 return (0);
}
void
sppp_update_gw(struct ifnet *ifp)
{
 u_int tid;
 for (tid = 0; tid <= 255; tid++) {
  rtable_walk(tid, 2, sppp_update_gw_walker, ifp);
 }
}
void
sppp_set_ip_addrs(void *arg1)
{
 struct sppp *sp = arg1;
 u_int32_t myaddr;
 u_int32_t hisaddr;
 struct ifnet *ifp = &sp->pp_if;
 int debug = ifp->if_flags & 0x4;
 struct ifaddr *ifa;
 struct sockaddr_in *si;
 struct sockaddr_in *dest;
 int s;
 sppp_get_ip_addrs(sp, &myaddr, &hisaddr, ((void *)0));
 if ((sp->ipcp.flags & 2) &&
     (sp->ipcp.flags & 4))
  myaddr = sp->ipcp.req_myaddr;
 if ((sp->ipcp.flags & 8) &&
     (sp->ipcp.flags & 1))
  hisaddr = sp->ipcp.req_hisaddr;
 do { _rw_enter_write(&netlock ); s = 2; } while (0);
 si = 0;
 for((ifa) = ((&ifp->if_addrlist)->tqh_first); (ifa) != ((void *)0); (ifa) = ((ifa)->ifa_list.tqe_next))
 {
  if (ifa->ifa_addr->sa_family == 2)
  {
   si = (struct sockaddr_in *)ifa->ifa_addr;
   dest = (struct sockaddr_in *)ifa->ifa_dstaddr;
   if (si)
    break;
  }
 }
 if (ifa && si) {
  int error;
  struct sockaddr_in new_sin = *si;
  struct sockaddr_in new_dst = *dest;
  in_ifscrub(ifp, ifatoia(ifa));
  if (myaddr != 0)
   new_sin.sin_addr.s_addr = ((__uint32_t)(myaddr));
  if (hisaddr != 0) {
   new_dst.sin_addr.s_addr = ((__uint32_t)(hisaddr));
   if (new_dst.sin_addr.s_addr != dest->sin_addr.s_addr) {
    sp->ipcp.saved_hisaddr = dest->sin_addr.s_addr;
    *dest = new_dst;
   }
  }
  if (!(error = in_ifinit(ifp, ifatoia(ifa), &new_sin, 0)))
   dohooks(ifp->if_addrhooks, 0);
  if (debug && error) {
   log(7, "%s: " "sppp_set_ip_addrs: in_ifinit "
   " failed, error=%d\n", (ifp)->if_xname, error);
   goto out;
  }
  sppp_update_gw(ifp);
 }
out:
 do { (void)s; _rw_exit_write(&netlock ); } while (0);
}
void
sppp_clear_ip_addrs(void *arg1)
{
 struct sppp *sp = (struct sppp *)arg1;
 struct ifnet *ifp = &sp->pp_if;
 int debug = ifp->if_flags & 0x4;
 struct ifaddr *ifa;
 struct sockaddr_in *si;
 struct sockaddr_in *dest;
 u_int32_t remote;
 int s;
 do { _rw_enter_write(&netlock ); s = 2; } while (0);
 if (sp->ipcp.flags & 8)
  remote = sp->ipcp.saved_hisaddr;
 else
  sppp_get_ip_addrs(sp, 0, &remote, 0);
 si = 0;
 for((ifa) = ((&ifp->if_addrlist)->tqh_first); (ifa) != ((void *)0); (ifa) = ((ifa)->ifa_list.tqe_next)) {
  if (ifa->ifa_addr->sa_family == 2) {
   si = (struct sockaddr_in *)ifa->ifa_addr;
   dest = (struct sockaddr_in *)ifa->ifa_dstaddr;
   if (si)
    break;
  }
 }
 if (ifa && si) {
  int error;
  struct sockaddr_in new_sin = *si;
  in_ifscrub(ifp, ifatoia(ifa));
  if (sp->ipcp.flags & 2)
   new_sin.sin_addr.s_addr = 0;
  if (sp->ipcp.flags & 8)
   dest->sin_addr.s_addr = sp->ipcp.saved_hisaddr;
  if (!(error = in_ifinit(ifp, ifatoia(ifa), &new_sin, 0)))
   dohooks(ifp->if_addrhooks, 0);
  if (debug && error) {
   log(7, "%s: " "sppp_clear_ip_addrs: in_ifinit "
   " failed, error=%d\n", (ifp)->if_xname, error);
   goto out;
  }
  sppp_update_gw(ifp);
 }
out:
 do { (void)s; _rw_exit_write(&netlock ); } while (0);
}
void
sppp_get_ip6_addrs(struct sppp *sp, struct in6_addr *src, struct in6_addr *dst,
     struct in6_addr *srcmask)
{
 struct ifnet *ifp = &sp->pp_if;
 struct in6_ifaddr *ia6;
 struct in6_addr ssrc, ddst;
 __builtin_bzero((&ssrc), (sizeof(ssrc)));
 __builtin_bzero((&ddst), (sizeof(ddst)));
 ia6 = in6ifa_ifpforlinklocal(ifp, 0);
 if (ia6) {
  if (!((*(const u_int32_t *)(const void *)(&(&ia6->ia_addr.sin6_addr)->__u6_addr.__u6_addr8[0]) == 0) && (*(const u_int32_t *)(const void *)(&(&ia6->ia_addr.sin6_addr)->__u6_addr.__u6_addr8[4]) == 0) && (*(const u_int32_t *)(const void *)(&(&ia6->ia_addr.sin6_addr)->__u6_addr.__u6_addr8[8]) == 0) && (*(const u_int32_t *)(const void *)(&(&ia6->ia_addr.sin6_addr)->__u6_addr.__u6_addr8[12]) == 0))) {
   __builtin_bcopy((&ia6->ia_addr.sin6_addr), (&ssrc), (sizeof(ssrc)));
   if (srcmask) {
    __builtin_bcopy((&ia6->ia_prefixmask.sin6_addr), (srcmask), (sizeof(*srcmask)));
   }
  }
  if (!((*(const u_int32_t *)(const void *)(&(&ia6->ia_dstaddr.sin6_addr)->__u6_addr.__u6_addr8[0]) == 0) && (*(const u_int32_t *)(const void *)(&(&ia6->ia_dstaddr.sin6_addr)->__u6_addr.__u6_addr8[4]) == 0) && (*(const u_int32_t *)(const void *)(&(&ia6->ia_dstaddr.sin6_addr)->__u6_addr.__u6_addr8[8]) == 0) && (*(const u_int32_t *)(const void *)(&(&ia6->ia_dstaddr.sin6_addr)->__u6_addr.__u6_addr8[12]) == 0)))
   __builtin_bcopy((&ia6->ia_dstaddr.sin6_addr), (&ddst), (sizeof(ddst)));
 }
 if (dst)
  __builtin_bcopy((&ddst), (dst), (sizeof(*dst)));
 if (src)
  __builtin_bcopy((&ssrc), (src), (sizeof(*src)));
}
void
sppp_update_ip6_addr(void *arg)
{
 struct sppp *sp = arg;
 struct ifnet *ifp = &sp->pp_if;
 struct in6_aliasreq *ifra = &sp->ipv6cp.req_ifid;
 struct in6_addr mask = in6mask128;
 struct in6_ifaddr *ia6;
 int s, error;
 do { _rw_enter_write(&netlock ); s = 2; } while (0);
 ia6 = in6ifa_ifpforlinklocal(ifp, 0);
 if (ia6 == ((void *)0)) {
  goto out;
 }
 if (sp->ipv6cp.flags & 1) {
  in6_ifdetach(ifp);
  error = in6_ifattach_linklocal(ifp, &ifra->ifra_ifrau.ifrau_addr.sin6_addr);
  if (error)
   log(3, "%s: "
       "could not update IPv6 address (error %d)\n",
       (ifp)->if_xname, error);
  goto out;
 }
 if (!in6_are_prefix_equal(&ia6->ia_prefixmask.sin6_addr, &mask, 128)) {
  ifra->ifra_dstaddr.sin6_len = 0;
  ifra->ifra_dstaddr.sin6_family = 0;
 }
 ifra->ifra_lifetime = ia6->ia6_lifetime;
 error = in6_update_ifa(ifp, ifra, ia6);
 if (error) {
  log(3, "%s: "
      "could not update IPv6 address (error %d)\n",
      (ifp)->if_xname, error);
 }
out:
 do { (void)s; _rw_exit_write(&netlock ); } while (0);
}
void
sppp_set_ip6_addr(struct sppp *sp, const struct in6_addr *src,
 const struct in6_addr *dst)
{
 struct ifnet *ifp = &sp->pp_if;
 struct in6_aliasreq *ifra = &sp->ipv6cp.req_ifid;
 __builtin_bzero((ifra), (sizeof(*ifra)));
 __builtin_bcopy((ifp->if_xname), (ifra->ifra_name), (sizeof(ifra->ifra_name)));
 ifra->ifra_ifrau.ifrau_addr.sin6_len = sizeof(struct sockaddr_in6);
 ifra->ifra_ifrau.ifrau_addr.sin6_family = 24;
 ifra->ifra_ifrau.ifrau_addr.sin6_addr = *src;
 if (dst) {
  ifra->ifra_dstaddr.sin6_len = sizeof(struct sockaddr_in6);
  ifra->ifra_dstaddr.sin6_family = 24;
  ifra->ifra_dstaddr.sin6_addr = *dst;
 } else
  ifra->ifra_dstaddr.sin6_family = 0;
 ifra->ifra_prefixmask.sin6_family = 0;
 task_add(systq, &sp->ipv6cp.set_addr_task);
}
void
sppp_suggest_ip6_addr(struct sppp *sp, struct in6_addr *suggest)
{
 struct in6_addr myaddr;
 u_int32_t random;
 sppp_get_ip6_addrs(sp, &myaddr, ((void *)0), ((void *)0));
 myaddr.__u6_addr.__u6_addr8[8] &= ~0x02;
 random = arc4random();
 if ((random & 0xff) == 0 && (random & 0xff00) == 0) {
  myaddr.__u6_addr.__u6_addr8[14] ^= 0xff;
  myaddr.__u6_addr.__u6_addr8[15] ^= 0xff;
 } else {
  myaddr.__u6_addr.__u6_addr8[14] ^= (random & 0xff);
  myaddr.__u6_addr.__u6_addr8[15] ^= ((random & 0xff00) >> 8);
 }
 myaddr.__u6_addr.__u6_addr16[1] = 0;
 __builtin_bcopy((&myaddr), (suggest), (sizeof(myaddr)));
}
int
sppp_get_params(struct sppp *sp, struct ifreq *ifr)
{
 int cmd;
 if (copyin((caddr_t)ifr->ifr_ifru.ifru_data, &cmd, sizeof cmd) != 0)
  return 14;
 switch (cmd) {
 case ((int)(('S' << 24) + (1 << 16) + sizeof(struct spppreq))):
 {
  struct spppreq *spr;
  spr = malloc(sizeof(*spr), 2, 0x0001);
  spr->cmd = cmd;
  spr->phase = sp->pp_phase;
  if (copyout(spr, (caddr_t)ifr->ifr_ifru.ifru_data, sizeof(*spr)) != 0) {
   free(spr, 2, 0);
   return 14;
  }
  free(spr, 2, 0);
  break;
 }
 case ((int)(('S' << 24) + (3 << 16) + sizeof(struct sauthreq))):
 case ((int)(('S' << 24) + (5 << 16) + sizeof(struct sauthreq))):
 {
  struct sauthreq *spa;
  struct sauth *auth;
  spa = malloc(sizeof(*spa), 2, 0x0001);
  auth = (cmd == ((int)(('S' << 24) + (3 << 16) + sizeof(struct sauthreq)))) ? &sp->myauth : &sp->hisauth;
  __builtin_bzero((spa), (sizeof(*spa)));
  spa->proto = auth->proto;
  spa->flags = auth->flags;
  if (auth->name != ((void *)0) && suser((__curcpu->ci_self)->ci_curproc, 0) == 0)
   strlcpy(spa->name, auth->name, sizeof(spa->name));
  if (copyout(spa, (caddr_t)ifr->ifr_ifru.ifru_data, sizeof(*spa)) != 0) {
   free(spa, 2, 0);
   return 14;
  }
  free(spa, 2, 0);
  break;
 }
 default:
  return 22;
 }
 return 0;
}
int
sppp_set_params(struct sppp *sp, struct ifreq *ifr)
{
 int cmd;
 if (copyin((caddr_t)ifr->ifr_ifru.ifru_data, &cmd, sizeof cmd) != 0)
  return 14;
 switch (cmd) {
 case ((int)(('S' << 24) + (2 << 16) + sizeof(struct spppreq))):
 {
  struct spppreq *spr;
  spr = malloc(sizeof(*spr), 2, 0x0001);
  if (copyin((caddr_t)ifr->ifr_ifru.ifru_data, spr, sizeof(*spr)) != 0) {
   free(spr, 2, 0);
   return 14;
  }
  free(spr, 2, 0);
  break;
 }
 case ((int)(('S' << 24) + (4 << 16) + sizeof(struct sauthreq))):
 case ((int)(('S' << 24) + (6 << 16) + sizeof(struct sauthreq))):
 {
  struct sauthreq *spa;
  struct sauth *auth;
  char *p;
  int len;
  spa = malloc(sizeof(*spa), 2, 0x0001);
  auth = (cmd == ((int)(('S' << 24) + (4 << 16) + sizeof(struct sauthreq)))) ? &sp->myauth : &sp->hisauth;
  if (copyin((caddr_t)ifr->ifr_ifru.ifru_data, spa, sizeof(*spa)) != 0) {
   free(spa, 2, 0);
   return 14;
  }
  if (spa->proto != 0 && spa->proto != 0xc023 &&
      spa->proto != 0xc223) {
   free(spa, 2, 0);
   return 22;
  }
  if (spa->proto == 0) {
   if (auth->name != ((void *)0))
    free(auth->name, 2, 0);
   if (auth->secret != ((void *)0))
    free(auth->secret, 2, 0);
   __builtin_bzero((auth), (sizeof *auth));
   explicit_bzero(sp->chap_challenge, sizeof sp->chap_challenge);
  } else {
   auth->proto = spa->proto;
   auth->flags = spa->flags;
   spa->name[256 - 1] = '\0';
   len = strlen(spa->name) + 1;
   p = malloc(len, 2, 0x0001);
   strlcpy(p, spa->name, len);
   if (auth->name != ((void *)0))
    free(auth->name, 2, 0);
   auth->name = p;
   if (spa->secret[0] != '\0') {
    spa->secret[256 - 1] = '\0';
    len = strlen(spa->secret) + 1;
    p = malloc(len, 2, 0x0001);
    strlcpy(p, spa->secret, len);
    if (auth->secret != ((void *)0))
     free(auth->secret, 2, 0);
    auth->secret = p;
   } else if (!auth->secret) {
    p = malloc(1, 2, 0x0001);
    p[0] = '\0';
    auth->secret = p;
   }
  }
  free(spa, 2, 0);
  break;
 }
 default:
  return 22;
 }
 return (52);
}
void
sppp_phase_network(struct sppp *sp)
{
 int i;
 u_long mask;
 sp->pp_phase = PHASE_NETWORK;
 sppp_set_phase(sp);
 for (i = 0; i < (4 + 1); i++)
  if ((cps[i])->flags & 0x04)
   (cps[i])->Open(sp);
 for (i = 0, mask = 1; i < (4 + 1); i++, mask <<= 1)
  if (sp->lcp.protos & mask && ((cps[i])->flags & 0x04))
   (cps[i])->Up(sp);
 sppp_lcp_check_and_close(sp);
}
const char *
sppp_cp_type_name(u_char type)
{
 static char buf[12];
 switch (type) {
 case 1: return "conf-req";
 case 2: return "conf-ack";
 case 3: return "conf-nak";
 case 4: return "conf-rej";
 case 5: return "term-req";
 case 6: return "term-ack";
 case 7: return "code-rej";
 case 8: return "proto-rej";
 case 9: return "echo-req";
 case 10: return "echo-reply";
 case 11: return "discard-req";
 }
 snprintf (buf, sizeof buf, "0x%x", type);
 return buf;
}
const char *
sppp_auth_type_name(u_short proto, u_char type)
{
 static char buf[12];
 switch (proto) {
 case 0xc223:
  switch (type) {
  case 1: return "challenge";
  case 2: return "response";
  case 3: return "success";
  case 4: return "failure";
  }
 case 0xc023:
  switch (type) {
  case 1: return "req";
  case 2: return "ack";
  case 3: return "nak";
  }
 }
 snprintf (buf, sizeof buf, "0x%x", type);
 return buf;
}
const char *
sppp_lcp_opt_name(u_char opt)
{
 static char buf[12];
 switch (opt) {
 case 1: return "mru";
 case 2: return "async-map";
 case 3: return "auth-proto";
 case 4: return "qual-proto";
 case 5: return "magic";
 case 7: return "proto-comp";
 case 8: return "addr-comp";
 }
 snprintf (buf, sizeof buf, "0x%x", opt);
 return buf;
}
const char *
sppp_ipcp_opt_name(u_char opt)
{
 static char buf[12];
 switch (opt) {
 case 1: return "addresses";
 case 2: return "compression";
 case 3: return "address";
 }
 snprintf (buf, sizeof buf, "0x%x", opt);
 return buf;
}
const char *
sppp_ipv6cp_opt_name(u_char opt)
{
 static char buf[12];
 switch (opt) {
 case 1: return "ifid";
 case 2: return "compression";
 }
 snprintf (buf, sizeof buf, "0x%x", opt);
 return buf;
}
const char *
sppp_state_name(int state)
{
 switch (state) {
 case 0: return "initial";
 case 1: return "starting";
 case 2: return "closed";
 case 3: return "stopped";
 case 4: return "closing";
 case 5: return "stopping";
 case 6: return "req-sent";
 case 7: return "ack-rcvd";
 case 8: return "ack-sent";
 case 9: return "opened";
 }
 return "illegal";
}
const char *
sppp_phase_name(enum ppp_phase phase)
{
 switch (phase) {
 case PHASE_DEAD: return "dead";
 case PHASE_ESTABLISH: return "establish";
 case PHASE_TERMINATE: return "terminate";
 case PHASE_AUTHENTICATE: return "authenticate";
 case PHASE_NETWORK: return "network";
 }
 return "illegal";
}
const char *
sppp_proto_name(u_short proto)
{
 static char buf[12];
 switch (proto) {
 case 0xc021: return "lcp";
 case 0x8021: return "ipcp";
 case 0x8057: return "ipv6cp";
 case 0xc023: return "pap";
 case 0xc223: return "chap";
 }
 snprintf(buf, sizeof buf, "0x%x", (unsigned)proto);
 return buf;
}
void
sppp_print_bytes(const u_char *p, u_short len)
{
 addlog(" %02x", *p++);
 while (--len > 0)
  addlog("-%02x", *p++);
}
void
sppp_print_string(const char *p, u_short len)
{
 u_char c;
 while (len-- > 0) {
  c = *p++;
  if (c < ' ' || c > '~')
   addlog("\\x%x", c);
  else
   addlog("%c", c);
 }
}
const char *
sppp_dotted_quad(u_int32_t addr)
{
 static char s[16];
 snprintf(s, sizeof s, "%d.%d.%d.%d",
  (int)((addr >> 24) & 0xff),
  (int)((addr >> 16) & 0xff),
  (int)((addr >> 8) & 0xff),
  (int)(addr & 0xff));
 return s;
}
void
sppp_null(struct sppp *unused)
{
}
void
sppp_set_phase(struct sppp *sp)
{
 struct ifnet *ifp = &sp->pp_if; int debug = ifp->if_flags & 0x4;
 int lstate;
 if (debug)
  log(6, "%s: " "phase %s\n", (ifp)->if_xname,
      sppp_phase_name(sp->pp_phase));
 if (sp->pp_phase == PHASE_NETWORK)
  lstate = 4;
 else
  lstate = 2;
 if (ifp->if_data.ifi_link_state != lstate) {
  ifp->if_data.ifi_link_state = lstate;
  if_link_state_change(ifp);
 }
}
