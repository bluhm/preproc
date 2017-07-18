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
 pid_t si_seltid;
 struct klist si_note;
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
int sogetopt(struct socket *so, int level, int optname,
     struct mbuf **mp);
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
typedef struct {
 u_int32_t state[5];
 u_int64_t count;
 unsigned char buffer[64];
} SHA1_CTX;
void SHA1Init(SHA1_CTX * context);
void SHA1Transform(u_int32_t state[5], const unsigned char buffer[64]);
void SHA1Update(SHA1_CTX *context, const void *data, unsigned int len);
void SHA1Final(unsigned char digest[20], SHA1_CTX *context);
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
struct ipovly {
 u_int8_t ih_x1[9];
 u_int8_t ih_pr;
 u_int16_t ih_len;
 struct in_addr ih_src;
 struct in_addr ih_dst;
};
struct ipstat {
 u_long ips_total;
 u_long ips_badsum;
 u_long ips_tooshort;
 u_long ips_toosmall;
 u_long ips_badhlen;
 u_long ips_badlen;
 u_long ips_fragments;
 u_long ips_fragdropped;
 u_long ips_fragtimeout;
 u_long ips_forward;
 u_long ips_cantforward;
 u_long ips_redirectsent;
 u_long ips_noproto;
 u_long ips_delivered;
 u_long ips_localout;
 u_long ips_odropped;
 u_long ips_reassembled;
 u_long ips_fragmented;
 u_long ips_ofragments;
 u_long ips_cantfrag;
 u_long ips_badoptions;
 u_long ips_noroute;
 u_long ips_badvers;
 u_long ips_rawout;
 u_long ips_badfrags;
 u_long ips_rcvmemdrop;
 u_long ips_toolong;
 u_long ips_nogif;
 u_long ips_badaddr;
 u_long ips_inswcsum;
 u_long ips_outswcsum;
 u_long ips_notmember;
};
struct ipoption {
 struct in_addr ipopt_dst;
 int8_t ipopt_list[40];
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
enum ipstat_counters {
 ips_total,
 ips_badsum,
 ips_tooshort,
 ips_toosmall,
 ips_badhlen,
 ips_badlen,
 ips_fragments,
 ips_fragdropped,
 ips_fragtimeout,
 ips_forward,
 ips_cantforward,
 ips_redirectsent,
 ips_noproto,
 ips_delivered,
 ips_localout,
 ips_odropped,
 ips_reassembled,
 ips_fragmented,
 ips_ofragments,
 ips_cantfrag,
 ips_badoptions,
 ips_noroute,
 ips_badvers,
 ips_rawout,
 ips_badfrags,
 ips_rcvmemdrop,
 ips_toolong,
 ips_nogif,
 ips_badaddr,
 ips_inswcsum,
 ips_outswcsum,
 ips_notmember,
 ips_ncounters
};
extern struct cpumem *ipcounters;
static inline void
ipstat_inc(enum ipstat_counters c)
{
 counters_inc(ipcounters, c);
}
struct ip_moptions {
 struct in_multi **imo_membership;
 unsigned short imo_ifidx;
 u_int8_t imo_ttl;
 u_int8_t imo_loop;
 u_int16_t imo_num_memberships;
 u_int16_t imo_max_memberships;
};
struct ipqehead { struct ipqent *lh_first; };
struct ipqent {
 struct { struct ipqent *le_next; struct ipqent **le_prev; } ipqe_q;
 struct ip *ipqe_ip;
 struct mbuf *ipqe_m;
 u_int8_t ipqe_mff;
};
struct ipq {
 struct { struct ipq *le_next; struct ipq **le_prev; } ipq_q;
 u_int8_t ipq_ttl;
 u_int8_t ipq_p;
 u_int16_t ipq_id;
 struct ipqehead ipq_fragq;
 struct in_addr ipq_src, ipq_dst;
};
extern struct ipstat ipstat;
extern struct ipqhead { struct ipq *lh_first; } ipq;
extern int ip_defttl;
extern int ip_mtudisc;
extern u_int ip_mtudisc_timeout;
extern int ipport_firstauto;
extern int ipport_lastauto;
extern int ipport_hifirstauto;
extern int ipport_hilastauto;
extern int encdebug;
extern int ipforwarding;
extern int ipmforwarding;
extern int ipmultipath;
extern int la_hold_total;
extern struct rttimer_queue *ip_mtudisc_timeout_q;
extern struct pool ipqent_pool;
struct route;
struct inpcb;
int ip_ctloutput(int, struct socket *, int, int, struct mbuf *);
void ip_drain(void);
void ip_flush(void);
int ip_fragment(struct mbuf *, struct ifnet *, u_long);
void ip_freef(struct ipq *);
void ip_freemoptions(struct ip_moptions *);
int ip_getmoptions(int, struct ip_moptions *, struct mbuf *);
void ip_init(void);
struct mbuf*
  ip_insertoptions(struct mbuf *, struct mbuf *, int *);
int ip_mforward(struct mbuf *, struct ifnet *);
int ip_optcopy(struct ip *, struct ip *);
int ip_output(struct mbuf *, struct mbuf *, struct route *, int,
     struct ip_moptions *, struct inpcb *, u_int32_t);
int ip_pcbopts(struct mbuf **, struct mbuf *);
struct mbuf *
  ip_reass(struct ipqent *, struct ipq *);
u_int16_t
  ip_randomid(void);
void ip_send(struct mbuf *);
int ip_setmoptions(int, struct ip_moptions **, struct mbuf *, u_int);
void ip_slowtimo(void);
struct mbuf *
  ip_srcroute(struct mbuf *);
void ip_stripoptions(struct mbuf *);
int ip_sysctl(int *, u_int, void *, size_t *, void *, size_t);
void ip_savecontrol(struct inpcb *, struct mbuf **, struct ip *,
     struct mbuf *);
void ipintr(void);
int ip_input_if(struct mbuf **, int *, int, int, struct ifnet *);
int ip_deliver(struct mbuf **, int *, int, int);
void ip_forward(struct mbuf *, struct ifnet *, struct rtentry *, int);
int rip_ctloutput(int, struct socket *, int, int, struct mbuf *);
void rip_init(void);
int rip_input(struct mbuf **, int *, int, int);
int rip_output(struct mbuf *, struct socket *, struct sockaddr *,
     struct mbuf *);
int rip_usrreq(struct socket *,
     int, struct mbuf *, struct mbuf *, struct mbuf *, struct proc *);
int rip_attach(struct socket *, int);
extern struct socket *ip_mrouter[];
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
struct m_tag;
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
union sockaddr_union {
 struct sockaddr sa;
 struct sockaddr_in sin;
 struct sockaddr_in6 sin6;
};
struct sockaddr_encap {
 u_int8_t sen_len;
 u_int8_t sen_family;
 u_int16_t sen_type;
 union {
  struct {
   u_int8_t Direction;
   struct in_addr Src;
   struct in_addr Dst;
   u_int8_t Proto;
   u_int16_t Sport;
   u_int16_t Dport;
  } Sip4;
  struct {
   u_int8_t Direction;
   struct in6_addr Src;
   struct in6_addr Dst;
   u_int8_t Proto;
   u_int16_t Sport;
   u_int16_t Dport;
  } Sip6;
  struct ipsec_policy *PolicyHead;
 } Sen;
};
struct ipsec_id {
 u_int16_t type;
 int16_t len;
};
struct ipsec_ids {
 struct rb_entry id_node_id;
 struct rb_entry id_node_flow;
 struct ipsec_id *id_local;
 struct ipsec_id *id_remote;
 u_int32_t id_flow;
 int id_refcount;
 struct timeout id_timeout;
};
struct ipsec_ids_flows { struct rb_tree rbh_root; };
struct ipsec_ids_tree { struct rb_tree rbh_root; };
struct ipsec_acquire {
 union sockaddr_union ipa_addr;
 u_int32_t ipa_seq;
 struct sockaddr_encap ipa_info;
 struct sockaddr_encap ipa_mask;
 struct timeout ipa_timeout;
 struct ipsec_policy *ipa_policy;
 struct inpcb *ipa_pcb;
 struct { struct ipsec_acquire *tqe_next; struct ipsec_acquire **tqe_prev; } ipa_ipo_next;
 struct { struct ipsec_acquire *tqe_next; struct ipsec_acquire **tqe_prev; } ipa_next;
};
struct ipsec_policy {
 struct radix_node ipo_nodes[2];
 struct sockaddr_encap ipo_addr;
 struct sockaddr_encap ipo_mask;
 union sockaddr_union ipo_src;
 union sockaddr_union ipo_dst;
 u_int64_t ipo_last_searched;
 u_int8_t ipo_flags;
 u_int8_t ipo_type;
 u_int8_t ipo_sproto;
 u_int ipo_rdomain;
 int ipo_ref_count;
 struct tdb *ipo_tdb;
 struct ipsec_ids *ipo_ids;
 struct ipo_acquires_head { struct ipsec_acquire *tqh_first; struct ipsec_acquire **tqh_last; } ipo_acquires;
 struct { struct ipsec_policy *tqe_next; struct ipsec_policy **tqe_prev; } ipo_tdb_next;
 struct { struct ipsec_policy *tqe_next; struct ipsec_policy **tqe_prev; } ipo_list;
};
struct tdb {
 struct tdb *tdb_hnext;
 struct tdb *tdb_dnext;
 struct tdb *tdb_snext;
 struct tdb *tdb_inext;
 struct tdb *tdb_onext;
 struct xformsw *tdb_xform;
 struct enc_xform *tdb_encalgxform;
 struct auth_hash *tdb_authalgxform;
 struct comp_algo *tdb_compalgxform;
 u_int32_t tdb_flags;
 struct timeout tdb_timer_tmo;
 struct timeout tdb_first_tmo;
 struct timeout tdb_stimer_tmo;
 struct timeout tdb_sfirst_tmo;
 u_int32_t tdb_seq;
 u_int32_t tdb_exp_allocations;
 u_int32_t tdb_soft_allocations;
 u_int32_t tdb_cur_allocations;
 u_int64_t tdb_exp_bytes;
 u_int64_t tdb_soft_bytes;
 u_int64_t tdb_cur_bytes;
 u_int64_t tdb_exp_timeout;
 u_int64_t tdb_soft_timeout;
 u_int64_t tdb_established;
 u_int64_t tdb_first_use;
 u_int64_t tdb_soft_first_use;
 u_int64_t tdb_exp_first_use;
 u_int64_t tdb_last_used;
 u_int64_t tdb_last_marked;
 u_int64_t tdb_cryptoid;
 u_int32_t tdb_spi;
 u_int16_t tdb_amxkeylen;
 u_int16_t tdb_emxkeylen;
 u_int16_t tdb_ivlen;
 u_int8_t tdb_sproto;
 u_int8_t tdb_wnd;
 u_int8_t tdb_satype;
 u_int8_t tdb_updates;
 union sockaddr_union tdb_dst;
 union sockaddr_union tdb_src;
 u_int8_t *tdb_amxkey;
 u_int8_t *tdb_emxkey;
 u_int64_t tdb_rpl;
 u_int32_t tdb_seen[((((2100+32)) + ((32) - 1)) / (32))];
 u_int8_t tdb_iv[4];
 struct ipsec_ids *tdb_ids;
 int tdb_ids_swapped;
 u_int32_t tdb_mtu;
 u_int64_t tdb_mtutimeout;
 u_int16_t tdb_udpencap_port;
 u_int16_t tdb_tag;
 u_int32_t tdb_tap;
 u_int tdb_rdomain;
 struct sockaddr_encap tdb_filter;
 struct sockaddr_encap tdb_filtermask;
 struct tdb_policy_head { struct ipsec_policy *tqh_first; struct ipsec_policy **tqh_last; } tdb_policy_head;
 struct { struct tdb *tqe_next; struct tdb **tqe_prev; } tdb_sync_entry;
};
struct tdb_ident {
 u_int32_t spi;
 union sockaddr_union dst;
 u_int8_t proto;
 u_int rdomain;
};
struct tdb_crypto {
 u_int32_t tc_spi;
 union sockaddr_union tc_dst;
 u_int8_t tc_proto;
 int tc_protoff;
 int tc_skip;
 u_int tc_rdomain;
};
struct ipsecinit {
 u_int8_t *ii_enckey;
 u_int8_t *ii_authkey;
 u_int16_t ii_enckeylen;
 u_int16_t ii_authkeylen;
 u_int8_t ii_encalg;
 u_int8_t ii_authalg;
 u_int8_t ii_compalg;
};
struct xformsw {
 u_short xf_type;
 u_short xf_flags;
 char *xf_name;
 int (*xf_attach)(void);
 int (*xf_init)(struct tdb *, struct xformsw *, struct ipsecinit *);
 int (*xf_zeroize)(struct tdb *);
 int (*xf_input)(struct mbuf *, struct tdb *, int, int);
 int (*xf_output)(struct mbuf *, struct tdb *, struct mbuf **,
     int, int);
};
extern int ipsec_in_use;
extern u_int64_t ipsec_last_added;
extern int ipsec_policy_pool_initialized;
extern int ipsec_keep_invalid;
extern int ipsec_require_pfs;
extern int ipsec_expire_acquire;
extern int ipsec_soft_allocations;
extern int ipsec_exp_allocations;
extern int ipsec_soft_bytes;
extern int ipsec_exp_bytes;
extern int ipsec_soft_timeout;
extern int ipsec_exp_timeout;
extern int ipsec_soft_first_use;
extern int ipsec_exp_first_use;
extern char ipsec_def_enc[];
extern char ipsec_def_auth[];
extern char ipsec_def_comp[];
extern struct enc_xform enc_xform_des;
extern struct enc_xform enc_xform_3des;
extern struct enc_xform enc_xform_blf;
extern struct enc_xform enc_xform_cast5;
extern struct auth_hash auth_hash_hmac_md5_96;
extern struct auth_hash auth_hash_hmac_sha1_96;
extern struct auth_hash auth_hash_hmac_ripemd_160_96;
extern struct comp_algo comp_algo_deflate;
extern struct ipsec_policy_head { struct ipsec_policy *tqh_first; struct ipsec_policy **tqh_last; } ipsec_policy_head;
extern struct ipsec_acquire_head { struct ipsec_acquire *tqh_first; struct ipsec_acquire **tqh_last; } ipsec_acquire_head;
struct radix_node_head *spd_table_add(unsigned int);
struct radix_node_head *spd_table_get(unsigned int);
uint32_t reserve_spi(u_int, u_int32_t, u_int32_t, union sockaddr_union *,
  union sockaddr_union *, u_int8_t, int *);
struct tdb *gettdb(u_int, u_int32_t, union sockaddr_union *, u_int8_t);
struct tdb *gettdbbydst(u_int, union sockaddr_union *, u_int8_t,
  struct ipsec_ids *,
  struct sockaddr_encap *, struct sockaddr_encap *);
struct tdb *gettdbbysrc(u_int, union sockaddr_union *, u_int8_t,
  struct ipsec_ids *,
  struct sockaddr_encap *, struct sockaddr_encap *);
struct tdb *gettdbbysrcdst(u_int, u_int32_t, union sockaddr_union *,
  union sockaddr_union *, u_int8_t);
void puttdb(struct tdb *);
void tdb_delete(struct tdb *);
struct tdb *tdb_alloc(u_int);
void tdb_free(struct tdb *);
int tdb_init(struct tdb *, u_int16_t, struct ipsecinit *);
void tdb_unlink(struct tdb *);
int tdb_walk(u_int, int (*)(struct tdb *, void *, int), void *);
int ipe4_attach(void);
int ipe4_init(struct tdb *, struct xformsw *, struct ipsecinit *);
int ipe4_zeroize(struct tdb *);
int ipe4_input(struct mbuf *, struct tdb *, int, int);
int ah_attach(void);
int ah_init(struct tdb *, struct xformsw *, struct ipsecinit *);
int ah_zeroize(struct tdb *);
int ah_input(struct mbuf *, struct tdb *, int, int);
int ah_output(struct mbuf *, struct tdb *, struct mbuf **, int, int);
int ah_sysctl(int *, u_int, void *, size_t *, void *, size_t);
int ah4_input(struct mbuf **, int *, int, int);
void ah4_ctlinput(int, struct sockaddr *, u_int, void *);
void udpencap_ctlinput(int, struct sockaddr *, u_int, void *);
int ah6_input(struct mbuf **, int *, int, int);
int esp_attach(void);
int esp_init(struct tdb *, struct xformsw *, struct ipsecinit *);
int esp_zeroize(struct tdb *);
int esp_input(struct mbuf *, struct tdb *, int, int);
int esp_output(struct mbuf *, struct tdb *, struct mbuf **, int, int);
int esp_sysctl(int *, u_int, void *, size_t *, void *, size_t);
int esp4_input(struct mbuf **, int *, int, int);
void esp4_ctlinput(int, struct sockaddr *, u_int, void *);
int esp6_input(struct mbuf **, int *, int, int);
int ipcomp_attach(void);
int ipcomp_init(struct tdb *, struct xformsw *, struct ipsecinit *);
int ipcomp_zeroize(struct tdb *);
int ipcomp_input(struct mbuf *, struct tdb *, int, int);
int ipcomp_output(struct mbuf *, struct tdb *, struct mbuf **, int, int);
int ipcomp_sysctl(int *, u_int, void *, size_t *, void *, size_t);
int ipcomp4_input(struct mbuf **, int *, int, int);
int ipcomp6_input(struct mbuf **, int *, int, int);
int tcp_signature_tdb_attach(void);
int tcp_signature_tdb_init(struct tdb *, struct xformsw *,
     struct ipsecinit *);
int tcp_signature_tdb_zeroize(struct tdb *);
int tcp_signature_tdb_input(struct mbuf *, struct tdb *, int, int);
int tcp_signature_tdb_output(struct mbuf *, struct tdb *, struct mbuf **,
   int, int);
int checkreplaywindow(struct tdb *, u_int32_t, u_int32_t *, int);
int ipsp_process_packet(struct mbuf *, struct tdb *, int, int);
int ipsp_process_done(struct mbuf *, struct tdb *);
struct tdb *ipsp_spd_lookup(struct mbuf *, int, int, int *, int,
     struct tdb *, struct inpcb *, u_int32_t);
struct tdb *ipsp_spd_inp(struct mbuf *, int, int, int *, int,
     struct tdb *, struct inpcb *, struct ipsec_policy *);
int ipsp_is_unspecified(union sockaddr_union);
int ipsp_aux_match(struct tdb *, struct ipsec_ids *,
     struct sockaddr_encap *, struct sockaddr_encap *);
int ipsp_ids_match(struct ipsec_ids *, struct ipsec_ids *);
struct ipsec_ids *ipsp_ids_insert(struct ipsec_ids *);
struct ipsec_ids *ipsp_ids_lookup(u_int32_t);
void ipsp_ids_free(struct ipsec_ids *);
int ipsec_common_input(struct mbuf *, int, int, int, int, int);
void ipsec_common_input_cb(struct mbuf *, struct tdb *, int, int);
int ipsec_delete_policy(struct ipsec_policy *);
ssize_t ipsec_hdrsz(struct tdb *);
void ipsec_adjust_mtu(struct mbuf *, u_int32_t);
struct ipsec_acquire *ipsec_get_acquire(u_int32_t);
int ipsec_forward_check(struct mbuf *, int, int);
int ipsec_local_check(struct mbuf *, int, int, int);
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
struct icmp6_hdr {
 u_int8_t icmp6_type;
 u_int8_t icmp6_code;
 u_int16_t icmp6_cksum;
 union {
  u_int32_t icmp6_un_data32[1];
  u_int16_t icmp6_un_data16[2];
  u_int8_t icmp6_un_data8[4];
 } icmp6_dataun;
} __attribute__((__packed__));
struct mld_hdr {
 struct icmp6_hdr mld_icmp6_hdr;
 struct in6_addr mld_addr;
} __attribute__((__packed__));
struct nd_router_solicit {
 struct icmp6_hdr nd_rs_hdr;
} __attribute__((__packed__));
struct nd_router_advert {
 struct icmp6_hdr nd_ra_hdr;
 u_int32_t nd_ra_reachable;
 u_int32_t nd_ra_retransmit;
} __attribute__((__packed__));
struct nd_neighbor_solicit {
 struct icmp6_hdr nd_ns_hdr;
 struct in6_addr nd_ns_target;
} __attribute__((__packed__));
struct nd_neighbor_advert {
 struct icmp6_hdr nd_na_hdr;
 struct in6_addr nd_na_target;
} __attribute__((__packed__));
struct nd_redirect {
 struct icmp6_hdr nd_rd_hdr;
 struct in6_addr nd_rd_target;
 struct in6_addr nd_rd_dst;
} __attribute__((__packed__));
struct nd_opt_hdr {
 u_int8_t nd_opt_type;
 u_int8_t nd_opt_len;
} __attribute__((__packed__));
struct nd_opt_prefix_info {
 u_int8_t nd_opt_pi_type;
 u_int8_t nd_opt_pi_len;
 u_int8_t nd_opt_pi_prefix_len;
 u_int8_t nd_opt_pi_flags_reserved;
 u_int32_t nd_opt_pi_valid_time;
 u_int32_t nd_opt_pi_preferred_time;
 u_int32_t nd_opt_pi_reserved2;
 struct in6_addr nd_opt_pi_prefix;
} __attribute__((__packed__));
struct nd_opt_rd_hdr {
 u_int8_t nd_opt_rh_type;
 u_int8_t nd_opt_rh_len;
 u_int16_t nd_opt_rh_reserved1;
 u_int32_t nd_opt_rh_reserved2;
} __attribute__((__packed__));
struct nd_opt_mtu {
 u_int8_t nd_opt_mtu_type;
 u_int8_t nd_opt_mtu_len;
 u_int16_t nd_opt_mtu_reserved;
 u_int32_t nd_opt_mtu_mtu;
} __attribute__((__packed__));
struct nd_opt_route_info {
 u_int8_t nd_opt_rti_type;
 u_int8_t nd_opt_rti_len;
 u_int8_t nd_opt_rti_prefixlen;
 u_int8_t nd_opt_rti_flags;
 u_int32_t nd_opt_rti_lifetime;
} __attribute__((__packed__));
struct nd_opt_rdnss {
 u_int8_t nd_opt_rdnss_type;
 u_int8_t nd_opt_rdnss_len;
 u_int16_t nd_opt_rdnss_reserved;
 u_int32_t nd_opt_rdnss_lifetime;
} __attribute__((__packed__));
struct nd_opt_dnssl {
 u_int8_t nd_opt_dnssl_type;
 u_int8_t nd_opt_dnssl_len;
 u_int16_t nd_opt_dnssl_reserved;
 u_int32_t nd_opt_dnssl_lifetime;
} __attribute__((__packed__));
struct icmp6_namelookup {
 struct icmp6_hdr icmp6_nl_hdr;
 u_int8_t icmp6_nl_nonce[8];
 int32_t icmp6_nl_ttl;
} __attribute__((__packed__));
struct icmp6_nodeinfo {
 struct icmp6_hdr icmp6_ni_hdr;
 u_int8_t icmp6_ni_nonce[8];
} __attribute__((__packed__));
struct ni_reply_fqdn {
 u_int32_t ni_fqdn_ttl;
 u_int8_t ni_fqdn_namelen;
 u_int8_t ni_fqdn_name[3];
} __attribute__((__packed__));
struct icmp6_router_renum {
 struct icmp6_hdr rr_hdr;
 u_int8_t rr_segnum;
 u_int8_t rr_flags;
 u_int16_t rr_maxdelay;
 u_int32_t rr_reserved;
} __attribute__((__packed__));
struct rr_pco_match {
 u_int8_t rpm_code;
 u_int8_t rpm_len;
 u_int8_t rpm_ordinal;
 u_int8_t rpm_matchlen;
 u_int8_t rpm_minlen;
 u_int8_t rpm_maxlen;
 u_int16_t rpm_reserved;
 struct in6_addr rpm_prefix;
} __attribute__((__packed__));
struct rr_pco_use {
 u_int8_t rpu_uselen;
 u_int8_t rpu_keeplen;
 u_int8_t rpu_ramask;
 u_int8_t rpu_raflags;
 u_int32_t rpu_vltime;
 u_int32_t rpu_pltime;
 u_int32_t rpu_flags;
 struct in6_addr rpu_prefix;
} __attribute__((__packed__));
struct rr_result {
 u_int16_t rrr_flags;
 u_int8_t rrr_ordinal;
 u_int8_t rrr_matchedlen;
 u_int32_t rrr_ifid;
 struct in6_addr rrr_prefix;
} __attribute__((__packed__));
struct icmp6_filter {
 u_int32_t icmp6_filt[8];
};
struct icmp6stat {
 u_int64_t icp6s_error;
 u_int64_t icp6s_canterror;
 u_int64_t icp6s_toofreq;
 u_int64_t icp6s_outhist[256];
 u_int64_t icp6s_badcode;
 u_int64_t icp6s_tooshort;
 u_int64_t icp6s_checksum;
 u_int64_t icp6s_badlen;
 u_int64_t icp6s_reflect;
 u_int64_t icp6s_inhist[256];
 u_int64_t icp6s_nd_toomanyopt;
 u_int64_t icp6s_odst_unreach_noroute;
 u_int64_t icp6s_odst_unreach_admin;
 u_int64_t icp6s_odst_unreach_beyondscope;
 u_int64_t icp6s_odst_unreach_addr;
 u_int64_t icp6s_odst_unreach_noport;
 u_int64_t icp6s_opacket_too_big;
 u_int64_t icp6s_otime_exceed_transit;
 u_int64_t icp6s_otime_exceed_reassembly;
 u_int64_t icp6s_oparamprob_header;
 u_int64_t icp6s_oparamprob_nextheader;
 u_int64_t icp6s_oparamprob_option;
 u_int64_t icp6s_oredirect;
 u_int64_t icp6s_ounknown;
 u_int64_t icp6s_pmtuchg;
 u_int64_t icp6s_nd_badopt;
 u_int64_t icp6s_badns;
 u_int64_t icp6s_badna;
 u_int64_t icp6s_badrs;
 u_int64_t icp6s_badra;
 u_int64_t icp6s_badredirect;
};
enum icmp6stat_counters {
 icp6s_error,
 icp6s_canterror,
 icp6s_toofreq,
 icp6s_outhist,
 icp6s_badcode = icp6s_outhist + 256,
 icp6s_tooshort,
 icp6s_checksum,
 icp6s_badlen,
 icp6s_reflect,
 icp6s_inhist,
 icp6s_nd_toomanyopt = icp6s_inhist + 256,
 icp6s_odst_unreach_noroute,
 icp6s_odst_unreach_admin,
 icp6s_odst_unreach_beyondscope,
 icp6s_odst_unreach_addr,
 icp6s_odst_unreach_noport,
 icp6s_opacket_too_big,
 icp6s_otime_exceed_transit,
 icp6s_otime_exceed_reassembly,
 icp6s_oparamprob_header,
 icp6s_oparamprob_nextheader,
 icp6s_oparamprob_option,
 icp6s_oredirect,
 icp6s_ounknown,
 icp6s_pmtuchg,
 icp6s_nd_badopt,
 icp6s_badns,
 icp6s_badna,
 icp6s_badrs,
 icp6s_badra,
 icp6s_badredirect,
 icp6s_ncounters,
};
extern struct cpumem *icmp6counters;
static inline void
icmp6stat_inc(enum icmp6stat_counters c)
{
 counters_inc(icmp6counters, c);
}
struct rtentry;
struct rttimer;
struct in6_multi;
void icmp6_init(void);
void icmp6_paramerror(struct mbuf *, int);
void icmp6_error(struct mbuf *, int, int, int);
int icmp6_input(struct mbuf **, int *, int, int);
void icmp6_fasttimo(void);
void icmp6_reflect(struct mbuf *, size_t);
void icmp6_prepare(struct mbuf *);
void icmp6_redirect_input(struct mbuf *, int);
void icmp6_redirect_output(struct mbuf *, struct rtentry *);
int icmp6_sysctl(int *, u_int, void *, size_t *, void *, size_t);
struct ip6ctlparam;
void icmp6_mtudisc_update(struct ip6ctlparam *, int);
void icmp6_mtudisc_callback_register(void (*)(struct sockaddr_in6 *, u_int));
extern int icmp6_redirtimeout;
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
struct nd_ifinfo {
 u_int32_t basereachable;
 u_int32_t reachable;
 u_int32_t retrans;
 u_int32_t flags;
 int recalctm;
 u_int8_t initialized;
 u_int8_t randomseed0[8];
 u_int8_t randomseed1[8];
 u_int8_t randomid[8];
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
extern int nd6_prune;
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
int in6_ifattach(struct ifnet *);
void in6_ifdetach(struct ifnet *);
int in6_nigroup(struct ifnet *, const char *, int, struct sockaddr_in6 *);
int in6_ifattach_linklocal(struct ifnet *, struct in6_addr *);
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
struct vlanreq {
 char vlr_parent[16];
 u_short vlr_tag;
};
struct vlan_mc_entry {
 struct { struct vlan_mc_entry *le_next; struct vlan_mc_entry **le_prev; } mc_entries;
 union {
  struct ether_multi *mcu_enm;
 } mc_u;
 struct sockaddr_storage mc_addr;
};
struct ifvlan {
 struct arpcom ifv_ac;
 unsigned int ifv_ifp0;
 struct ifv_linkmib {
  u_int16_t ifvm_proto;
  u_int16_t ifvm_tag;
  u_int16_t ifvm_prio;
  u_int16_t ifvm_type;
 } ifv_mib;
 struct __vlan_mchead { struct vlan_mc_entry *lh_first; } vlan_mc_listhead;
 struct { struct srp se_next; } ifv_list;
 int ifv_flags;
 struct refcnt ifv_refcnt;
 void *lh_cookie;
 void *dh_cookie;
 struct ifih *ifv_ifih;
};
struct mbuf *vlan_inject(struct mbuf *, uint16_t, uint16_t);
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
struct carp_mc_entry {
 struct { struct carp_mc_entry *le_next; struct carp_mc_entry **le_prev; } mc_entries;
 union {
  struct ether_multi *mcu_enm;
 } mc_u;
 struct sockaddr_storage mc_addr;
};
enum { HMAC_ORIG=0, HMAC_NOV6LL=1, HMAC_MAX=2 };
struct carp_vhost_entry {
 struct { struct srp se_next; } vhost_entries;
 struct refcnt vhost_refcnt;
 struct carp_softc *parent_sc;
 int vhe_leader;
 int vhid;
 int advskew;
 enum { INIT = 0, BACKUP, MASTER } state;
 struct timeout ad_tmo;
 struct timeout md_tmo;
 struct timeout md6_tmo;
 u_int64_t vhe_replay_cookie;
 unsigned char vhe_pad[64];
 SHA1_CTX vhe_sha1[HMAC_MAX];
 u_int8_t vhe_enaddr[6];
};
void carp_vh_ref(void *, void *);
void carp_vh_unref(void *, void *);
struct srpl_rc carp_vh_rc =
    { carp_vh_ref, { (carp_vh_unref), (((void *)0)), { .refs = 1 } } };
struct carp_softc {
 struct arpcom sc_ac;
 void *ah_cookie;
 void *lh_cookie;
 struct ip_moptions sc_imo;
 struct ip6_moptions sc_im6o;
 struct { struct srp se_next; } sc_list;
 struct refcnt sc_refcnt;
 int sc_suppress;
 int sc_bow_out;
 int sc_demote_cnt;
 int sc_sendad_errors;
 int sc_sendad_success;
 char sc_curlladdr[6];
 struct srpl carp_vhosts;
 int sc_vhe_count;
 u_int8_t sc_vhids[32];
 u_int8_t sc_advskews[32];
 u_int8_t sc_balancing;
 int sc_naddrs;
 int sc_naddrs6;
 int sc_advbase;
 unsigned char sc_key[20];
 u_int32_t sc_hashkey[2];
 u_int32_t sc_lsmask;
 int sc_lscount;
 int sc_delayed_arp;
 int sc_realmac;
 struct in_addr sc_peer;
 struct __carp_mchead { struct carp_mc_entry *lh_first; } carp_mc_listhead;
 struct carp_vhost_entry *cur_vhe;
};
void carp_sc_ref(void *, void *);
void carp_sc_unref(void *, void *);
struct srpl_rc carp_sc_rc =
    { carp_sc_ref, { (carp_sc_unref), (((void *)0)), { .refs = 1 } } };
int carp_opts[5] = { 0, 1, 0, 2 };
struct cpumem *carpcounters;
int carp_send_all_recur = 0;
struct carp_if {
 struct srpl vhif_vrs;
};
void carp_hmac_prepare(struct carp_softc *);
void carp_hmac_prepare_ctx(struct carp_vhost_entry *, u_int8_t);
void carp_hmac_generate(struct carp_vhost_entry *, u_int32_t *,
     unsigned char *, u_int8_t);
int carp_hmac_verify(struct carp_vhost_entry *, u_int32_t *,
     unsigned char *);
int carp_input(struct ifnet *, struct mbuf *, void *);
void carp_proto_input_c(struct ifnet *, struct mbuf *,
     struct carp_header *, int, sa_family_t);
int carp_proto_input_if(struct ifnet *, struct mbuf **, int *, int);
int carp6_proto_input_if(struct ifnet *, struct mbuf **, int *, int);
void carpattach(int);
void carpdetach(struct carp_softc *);
int carp_prepare_ad(struct mbuf *, struct carp_vhost_entry *,
     struct carp_header *);
void carp_send_ad_all(void);
void carp_vhe_send_ad_all(struct carp_softc *);
void carp_timer_ad(void *);
void carp_send_ad(struct carp_vhost_entry *);
void carp_send_arp(struct carp_softc *);
void carp_timer_down(void *);
void carp_master_down(struct carp_vhost_entry *);
int carp_ioctl(struct ifnet *, u_long, caddr_t);
int carp_vhids_ioctl(struct carp_softc *, struct carpreq *);
int carp_check_dup_vhids(struct carp_softc *, struct carp_if *,
     struct carpreq *);
void carp_ifgroup_ioctl(struct ifnet *, u_long, caddr_t);
void carp_ifgattr_ioctl(struct ifnet *, u_long, caddr_t);
void carp_start(struct ifnet *);
void carp_setrun_all(struct carp_softc *, sa_family_t);
void carp_setrun(struct carp_vhost_entry *, sa_family_t);
void carp_set_state_all(struct carp_softc *, int);
void carp_set_state(struct carp_vhost_entry *, int);
void carp_multicast_cleanup(struct carp_softc *);
int carp_set_ifp(struct carp_softc *, struct ifnet *);
void carp_set_enaddr(struct carp_softc *);
void carp_set_vhe_enaddr(struct carp_vhost_entry *);
void carp_addr_updated(void *);
int carp_set_addr(struct carp_softc *, struct sockaddr_in *);
int carp_join_multicast(struct carp_softc *);
void carp_send_na(struct carp_softc *);
int carp_set_addr6(struct carp_softc *, struct sockaddr_in6 *);
int carp_join_multicast6(struct carp_softc *);
int carp_clone_create(struct if_clone *, int);
int carp_clone_destroy(struct ifnet *);
int carp_ether_addmulti(struct carp_softc *, struct ifreq *);
int carp_ether_delmulti(struct carp_softc *, struct ifreq *);
void carp_ether_purgemulti(struct carp_softc *);
int carp_group_demote_count(struct carp_softc *);
void carp_update_lsmask(struct carp_softc *);
int carp_new_vhost(struct carp_softc *, int, int);
void carp_destroy_vhosts(struct carp_softc *);
void carp_del_all_timeouts(struct carp_softc *);
struct if_clone carp_cloner =
    { { 0 }, "carp", sizeof("carp") - 1, carp_clone_create, carp_clone_destroy };
void
carp_hmac_prepare(struct carp_softc *sc)
{
 struct carp_vhost_entry *vhe;
 u_int8_t i;
 ((_kernel_lock_held()) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../netinet/ip_carp.c", 278, "_kernel_lock_held()"));
 for ((vhe) = srp_get_locked(&(&sc->carp_vhosts)->sl_head); (vhe) != ((void *)0); (vhe) = srp_get_locked(&((vhe))->vhost_entries.se_next)) {
  for (i = 0; i < HMAC_MAX; i++) {
   carp_hmac_prepare_ctx(vhe, i);
  }
 }
}
void
carp_hmac_prepare_ctx(struct carp_vhost_entry *vhe, u_int8_t ctx)
{
 struct carp_softc *sc = vhe->parent_sc;
 u_int8_t version = 2, type = 0x01;
 u_int8_t vhid = vhe->vhid & 0xff;
 SHA1_CTX sha1ctx;
 u_int32_t kmd[5];
 struct ifaddr *ifa;
 int i, found;
 struct in_addr last, cur, in;
 struct in6_addr last6, cur6, in6;
 __builtin_memset((vhe->vhe_pad), (0), (sizeof(vhe->vhe_pad)));
 __builtin_bcopy((sc->sc_key), (vhe->vhe_pad), (sizeof(sc->sc_key)));
 for (i = 0; i < sizeof(vhe->vhe_pad); i++)
  vhe->vhe_pad[i] ^= 0x36;
 SHA1Init(&vhe->vhe_sha1[ctx]);
 SHA1Update(&vhe->vhe_sha1[ctx], vhe->vhe_pad, sizeof(vhe->vhe_pad));
 SHA1Update(&vhe->vhe_sha1[ctx], (void *)&version, sizeof(version));
 SHA1Update(&vhe->vhe_sha1[ctx], (void *)&type, sizeof(type));
 if (vhe->vhe_leader) {
  __builtin_bcopy((&vhe->vhe_sha1[ctx]), (&sha1ctx), (sizeof(sha1ctx)));
  SHA1Final((unsigned char *)kmd, &sha1ctx);
  sc->sc_hashkey[0] = kmd[0] ^ kmd[1];
  sc->sc_hashkey[1] = kmd[2] ^ kmd[3];
 }
 if (!sc->sc_realmac && vhe->vhe_leader &&
     __builtin_memcmp((sc->sc_ac.ac_enaddr), (vhe->vhe_enaddr), (6)) != 0)
  SHA1Update(&vhe->vhe_sha1[ctx], sc->sc_ac.ac_enaddr,
      6);
 SHA1Update(&vhe->vhe_sha1[ctx], (void *)&vhid, sizeof(vhid));
 cur.s_addr = 0;
 do {
  found = 0;
  last = cur;
  cur.s_addr = 0xffffffff;
  for((ifa) = ((&sc->sc_ac.ac_if.if_addrlist)->tqh_first); (ifa) != ((void *)0); (ifa) = ((ifa)->ifa_list.tqe_next)) {
   if (ifa->ifa_addr->sa_family != 2)
    continue;
   in.s_addr = ifatoia(ifa)->ia_addr.sin_addr.s_addr;
   if (((__uint32_t)(in.s_addr)) > ((__uint32_t)(last.s_addr)) &&
       ((__uint32_t)(in.s_addr)) < ((__uint32_t)(cur.s_addr))) {
    cur.s_addr = in.s_addr;
    found++;
   }
  }
  if (found)
   SHA1Update(&vhe->vhe_sha1[ctx],
       (void *)&cur, sizeof(cur));
 } while (found);
 __builtin_memset((&cur6), (0x00), (sizeof(cur6)));
 do {
  found = 0;
  last6 = cur6;
  __builtin_memset((&cur6), (0xff), (sizeof(cur6)));
  for((ifa) = ((&sc->sc_ac.ac_if.if_addrlist)->tqh_first); (ifa) != ((void *)0); (ifa) = ((ifa)->ifa_list.tqe_next)) {
   if (ifa->ifa_addr->sa_family != 24)
    continue;
   in6 = ifatoia6(ifa)->ia_addr.sin6_addr;
   if ((((((&in6)->__u6_addr.__u6_addr8[0] == 0xfe) && (((&in6)->__u6_addr.__u6_addr8[1] & 0xc0) == 0x80))) || ((((&in6)->__u6_addr.__u6_addr8[0] == 0xff) && (((&in6)->__u6_addr.__u6_addr8[1] & 0x0f) == 0x02))) || ((((&in6)->__u6_addr.__u6_addr8[0] == 0xff) && (((&in6)->__u6_addr.__u6_addr8[1] & 0x0f) == 0x01))))) {
    if (ctx == HMAC_NOV6LL)
     continue;
    in6.__u6_addr.__u6_addr16[1] = 0;
   }
   if (__builtin_memcmp((&in6), (&last6), (sizeof(in6))) > 0 &&
       __builtin_memcmp((&in6), (&cur6), (sizeof(in6))) < 0) {
    cur6 = in6;
    found++;
   }
  }
  if (found)
   SHA1Update(&vhe->vhe_sha1[ctx],
       (void *)&cur6, sizeof(cur6));
 } while (found);
 for (i = 0; i < sizeof(vhe->vhe_pad); i++)
  vhe->vhe_pad[i] ^= 0x36 ^ 0x5c;
}
void
carp_hmac_generate(struct carp_vhost_entry *vhe, u_int32_t counter[2],
    unsigned char md[20], u_int8_t ctx)
{
 SHA1_CTX sha1ctx;
 __builtin_bcopy((&vhe->vhe_sha1[ctx]), (&sha1ctx), (sizeof(sha1ctx)));
 SHA1Update(&sha1ctx, (void *)counter, sizeof(vhe->vhe_replay_cookie));
 SHA1Final(md, &sha1ctx);
 SHA1Init(&sha1ctx);
 SHA1Update(&sha1ctx, vhe->vhe_pad, sizeof(vhe->vhe_pad));
 SHA1Update(&sha1ctx, md, 20);
 SHA1Final(md, &sha1ctx);
}
int
carp_hmac_verify(struct carp_vhost_entry *vhe, u_int32_t counter[2],
    unsigned char md[20])
{
 unsigned char md2[20];
 u_int8_t i;
 for (i = 0; i < HMAC_MAX; i++) {
  carp_hmac_generate(vhe, counter, md2, i);
  if (!timingsafe_bcmp(md, md2, sizeof(md2)))
   return (0);
 }
 return (1);
}
int
carp_proto_input(struct mbuf **mp, int *offp, int proto, int af)
{
 struct ifnet *ifp;
 ifp = if_get((*mp)->M_dat.MH.MH_pkthdr.ph_ifidx);
 if (ifp == ((void *)0)) {
  m_freemp(mp);
  return 257;
 }
 proto = carp_proto_input_if(ifp, mp, offp, proto);
 if_put(ifp);
 return proto;
}
int
carp_proto_input_if(struct ifnet *ifp, struct mbuf **mp, int *offp, int proto)
{
 struct mbuf *m = *mp;
 struct ip *ip = ((struct ip *)((m)->m_hdr.mh_data));
 struct carp_softc *sc = ((void *)0);
 struct carp_header *ch;
 int iplen, len, ismulti;
 carpstat_inc(carps_ipackets);
 if (!carp_opts[1]) {
  m_freem(m);
  return 257;
 }
 ismulti = (((u_int32_t)(ip->ip_dst.s_addr) & ((u_int32_t) ((__uint32_t)((u_int32_t)(0xf0000000))))) == ((u_int32_t) ((__uint32_t)((u_int32_t)(0xe0000000)))));
 if (!(ifp->if_data.ifi_type == 0xf7 ||
     (ifp->if_data.ifi_type != 0xf7 && !ismulti && ifp->if_carp_ptr.carp_s != ((void *)0)))) {
  carpstat_inc(carps_badif);
  do { if (carp_opts[3] >= 6) { if (sc) log(6, "%s: ", (sc)->sc_ac.ac_if.if_xname); else log(6, "carp: "); addlog ("packet received on non-carp interface: %s", ifp->if_xname); addlog("\n"); } } while (0);
  m_freem(m);
  return 257;
 }
 if (ip->ip_ttl != 255) {
  carpstat_inc(carps_badttl);
  do { if (carp_opts[3] >= 5) { if (sc) log(5, "%s: ", (sc)->sc_ac.ac_if.if_xname); else log(5, "carp: "); addlog ("received ttl %d != %d on %s", ip->ip_ttl, 255, ifp->if_xname); addlog("\n"); } } while (0);
  m_freem(m);
  return 257;
 }
 iplen = ip->ip_hl << 2;
 len = iplen + sizeof(*ch);
 if (len > m->M_dat.MH.MH_pkthdr.len) {
  carpstat_inc(carps_badlen);
  do { if (carp_opts[3] >= 6) { if (sc) log(6, "%s: ", (sc)->sc_ac.ac_if.if_xname); else log(6, "carp: "); addlog ("packet too short %d on %s", m->M_dat.MH.MH_pkthdr.len, ifp->if_xname); addlog("\n"); } } while (0);
  m_freem(m);
  return 257;
 }
 if ((m = *mp = m_pullup(m, len)) == ((void *)0)) {
  carpstat_inc(carps_hdrops);
  return 257;
 }
 ip = ((struct ip *)((m)->m_hdr.mh_data));
 ch = (struct carp_header *)(((caddr_t)((m)->m_hdr.mh_data)) + iplen);
 m->m_hdr.mh_data += iplen;
 if (((u_int16_t)in_cksum((m), (len - iplen)))) {
  carpstat_inc(carps_badsum);
  do { if (carp_opts[3] >= 6) { if (sc) log(6, "%s: ", (sc)->sc_ac.ac_if.if_xname); else log(6, "carp: "); addlog ("checksum failed on %s", ifp->if_xname); addlog("\n"); } } while (0);
  m_freem(m);
  return 257;
 }
 m->m_hdr.mh_data -= iplen;
 carp_proto_input_c(ifp, m, ch, ismulti, 2);
 return 257;
}
int
carp6_proto_input(struct mbuf **mp, int *offp, int proto, int af)
{
 struct ifnet *ifp;
 ifp = if_get((*mp)->M_dat.MH.MH_pkthdr.ph_ifidx);
 if (ifp == ((void *)0)) {
  m_freemp(mp);
  return 257;
 }
 proto = carp6_proto_input_if(ifp, mp, offp, proto);
 if_put(ifp);
 return proto;
}
int
carp6_proto_input_if(struct ifnet *ifp, struct mbuf **mp, int *offp, int proto)
{
 struct mbuf *m = *mp;
 struct carp_softc *sc = ((void *)0);
 struct ip6_hdr *ip6 = ((struct ip6_hdr *)((m)->m_hdr.mh_data));
 struct carp_header *ch;
 u_int len;
 carpstat_inc(carps_ipackets6);
 if (!carp_opts[1]) {
  m_freem(m);
  return 257;
 }
 if (ifp->if_data.ifi_type != 0xf7) {
  carpstat_inc(carps_badif);
  do { if (carp_opts[3] >= 6) { if (sc) log(6, "%s: ", (sc)->sc_ac.ac_if.if_xname); else log(6, "carp: "); addlog ("packet received on non-carp interface: %s", ifp->if_xname); addlog("\n"); } } while (0);
  m_freem(m);
  return 257;
 }
 if (ip6->ip6_ctlun.ip6_un1.ip6_un1_hlim != 255) {
  carpstat_inc(carps_badttl);
  do { if (carp_opts[3] >= 5) { if (sc) log(5, "%s: ", (sc)->sc_ac.ac_if.if_xname); else log(5, "carp: "); addlog ("received ttl %d != %d on %s", ip6->ip6_ctlun.ip6_un1.ip6_un1_hlim, 255, ifp->if_xname); addlog("\n"); } } while (0);
  m_freem(m);
  return 257;
 }
 len = m->m_hdr.mh_len;
 if ((m = *mp = m_pullup(m, *offp + sizeof(*ch))) == ((void *)0)) {
  carpstat_inc(carps_badlen);
  do { if (carp_opts[3] >= 6) { if (sc) log(6, "%s: ", (sc)->sc_ac.ac_if.if_xname); else log(6, "carp: "); addlog ("packet size %u too small", len); addlog("\n"); } } while (0);
  return 257;
 }
 ch = (struct carp_header *)(((caddr_t)((m)->m_hdr.mh_data)) + *offp);
 m->m_hdr.mh_data += *offp;
 if (((u_int16_t)in_cksum((m), (sizeof(*ch))))) {
  carpstat_inc(carps_badsum);
  do { if (carp_opts[3] >= 6) { if (sc) log(6, "%s: ", (sc)->sc_ac.ac_if.if_xname); else log(6, "carp: "); addlog ("checksum failed, on %s", ifp->if_xname); addlog("\n"); } } while (0);
  m_freem(m);
  return 257;
 }
 m->m_hdr.mh_data -= *offp;
 carp_proto_input_c(ifp, m, ch, 1, 24);
 return 257;
}
void
carp_proto_input_c(struct ifnet *ifp, struct mbuf *m, struct carp_header *ch,
    int ismulti, sa_family_t af)
{
 struct carp_softc *sc;
 struct carp_vhost_entry *vhe;
 struct timeval sc_tv, ch_tv;
 struct carp_if *cif;
 if (ifp->if_data.ifi_type == 0xf7)
  cif = (struct carp_if *)ifp->if_carp_ptr.carp_d->if_carp_ptr.carp_s;
 else
  cif = (struct carp_if *)ifp->if_carp_ptr.carp_s;
 ((_kernel_lock_held()) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../netinet/ip_carp.c", 602, "_kernel_lock_held()"));
 for ((sc) = srp_get_locked(&(&cif->vhif_vrs)->sl_head); (sc) != ((void *)0); (sc) = srp_get_locked(&((sc))->sc_list.se_next)) {
  if (af == 2 &&
      ismulti != (((u_int32_t)(sc->sc_peer.s_addr) & ((u_int32_t) ((__uint32_t)((u_int32_t)(0xf0000000))))) == ((u_int32_t) ((__uint32_t)((u_int32_t)(0xe0000000))))))
   continue;
  for ((vhe) = srp_get_locked(&(&sc->carp_vhosts)->sl_head); (vhe) != ((void *)0); (vhe) = srp_get_locked(&((vhe))->vhost_entries.se_next)) {
   if (vhe->vhid == ch->carp_vhid)
    goto found;
  }
 }
 found:
 if (!sc || (sc->sc_ac.ac_if.if_flags & (0x1|0x40)) !=
     (0x1|0x40)) {
  carpstat_inc(carps_badvhid);
  m_freem(m);
  return;
 }
 getmicrotime(&sc->sc_ac.ac_if.if_data.ifi_lastchange);
 sc->sc_ac.ac_if.if_data.ifi_ipackets++;
 sc->sc_ac.ac_if.if_data.ifi_ibytes += m->M_dat.MH.MH_pkthdr.len;
 if (ch->carp_version != 2) {
  carpstat_inc(carps_badver);
  sc->sc_ac.ac_if.if_data.ifi_ierrors++;
  do { if (carp_opts[3] >= 5) { if (sc) log(5, "%s: ", (sc)->sc_ac.ac_if.if_xname); else log(5, "carp: "); addlog ("invalid version %d != %d", ch->carp_version, 2); addlog("\n"); } } while (0);
  m_freem(m);
  return;
 }
 if (carp_hmac_verify(vhe, ch->carp_counter, ch->carp_md)) {
  carpstat_inc(carps_badauth);
  sc->sc_ac.ac_if.if_data.ifi_ierrors++;
  do { if (carp_opts[3] >= 6) { if (sc) log(6, "%s: ", (sc)->sc_ac.ac_if.if_xname); else log(6, "carp: "); addlog ("incorrect hash"); addlog("\n"); } } while (0);
  m_freem(m);
  return;
 }
 if (!__builtin_memcmp((&vhe->vhe_replay_cookie), (ch->carp_counter), (sizeof(ch->carp_counter)))) {
  if (sc->sc_ac.ac_if.if_carp_ptr.carp_d->if_flags & 0x800) {
   carpstat_inc(carps_badauth);
   sc->sc_ac.ac_if.if_data.ifi_ierrors++;
   do { if (carp_opts[3] >= 4) { if (sc) log(4, "%s: ", (sc)->sc_ac.ac_if.if_xname); else log(4, "carp: "); addlog ("replay or network loop detected"); addlog("\n"); } } while (0);
  }
  m_freem(m);
  return;
 }
 sc_tv.tv_sec = sc->sc_advbase;
 sc_tv.tv_usec = vhe->advskew * 1000000 / 256;
 ch_tv.tv_sec = ch->carp_advbase;
 ch_tv.tv_usec = ch->carp_advskew * 1000000 / 256;
 switch (vhe->state) {
 case INIT:
  break;
 case MASTER:
  if ((((((&sc_tv)->tv_sec == (&ch_tv)->tv_sec) ? ((&sc_tv)->tv_usec > (&ch_tv)->tv_usec) : ((&sc_tv)->tv_sec > (&ch_tv)->tv_sec)) ||
      (((&sc_tv)->tv_sec == (&ch_tv)->tv_sec) ? ((&sc_tv)->tv_usec == (&ch_tv)->tv_usec) : ((&sc_tv)->tv_sec == (&ch_tv)->tv_sec))) &&
      (ch->carp_demote <= carp_group_demote_count(sc))) ||
      ch->carp_demote < carp_group_demote_count(sc)) {
   timeout_del(&vhe->ad_tmo);
   carp_set_state(vhe, BACKUP);
   carp_setrun(vhe, 0);
  }
  break;
 case BACKUP:
  if (carp_opts[2] &&
      (((&sc_tv)->tv_sec == (&ch_tv)->tv_sec) ? ((&sc_tv)->tv_usec < (&ch_tv)->tv_usec) : ((&sc_tv)->tv_sec < (&ch_tv)->tv_sec)) &&
      ch->carp_demote >= carp_group_demote_count(sc)) {
   carp_master_down(vhe);
   break;
  }
  if (ch->carp_demote > carp_group_demote_count(sc)) {
   carp_master_down(vhe);
   break;
  }
  sc_tv.tv_sec = sc->sc_advbase * 3;
  if (sc->sc_advbase && (((&sc_tv)->tv_sec == (&ch_tv)->tv_sec) ? ((&sc_tv)->tv_usec < (&ch_tv)->tv_usec) : ((&sc_tv)->tv_sec < (&ch_tv)->tv_sec))) {
   carp_master_down(vhe);
   break;
  }
  carp_setrun(vhe, af);
  break;
 }
 m_freem(m);
 return;
}
int
carp_sysctl_carpstat(void *oldp, size_t *oldlenp, void *newp)
{
 struct carpstats carpstat;
 extern char _ctassert[(sizeof(carpstat) == (carps_ncounters * sizeof(uint64_t))) ? 1 : -1 ] __attribute__((__unused__));
 __builtin_memset((&carpstat), (0), (sizeof carpstat));
 counters_read(carpcounters, (uint64_t *)&carpstat, carps_ncounters);
 return (sysctl_rdstruct(oldp, oldlenp, newp,
     &carpstat, sizeof(carpstat)));
}
int
carp_sysctl(int *name, u_int namelen, void *oldp, size_t *oldlenp, void *newp,
    size_t newlen)
{
 if (namelen != 1)
  return (20);
 switch (name[0]) {
 case 4:
  return (carp_sysctl_carpstat(oldp, oldlenp, newp));
 default:
  if (name[0] <= 0 || name[0] >= 5)
   return (42);
  return sysctl_int(oldp, oldlenp, newp, newlen,
      &carp_opts[name[0]]);
 }
}
void
carpattach(int n)
{
 struct ifg_group *ifg;
 if ((ifg = if_creategroup("carp")) != ((void *)0))
  ifg->ifg_refcnt++;
 if_clone_attach(&carp_cloner);
 carpcounters = counters_alloc(carps_ncounters);
}
int
carp_clone_create(struct if_clone *ifc, int unit)
{
 struct carp_softc *sc;
 struct ifnet *ifp;
 sc = malloc(sizeof(*sc), 2, 0x0002|0x0008);
 if (!sc)
  return (12);
 refcnt_init(&sc->sc_refcnt);
 srp_init(&(&sc->carp_vhosts)->sl_head);
 sc->sc_vhe_count = 0;
 if (carp_new_vhost(sc, 0, 0)) {
  free(sc, 2, sizeof(*sc));
  return (12);
 }
 sc->sc_suppress = 0;
 sc->sc_advbase = 1;
 sc->sc_naddrs = sc->sc_naddrs6 = 0;
 sc->sc_im6o.im6o_hlim = 255;
 sc->sc_imo.imo_membership = (struct in_multi **)malloc(
     (sizeof(struct in_multi *) * 15), 53,
     0x0001|0x0008);
 sc->sc_imo.imo_max_memberships = 15;
 do { ((&sc->carp_mc_listhead)->lh_first) = ((void *)0); } while (0);
 ifp = &sc->sc_ac.ac_if;
 ifp->if_softc = sc;
 snprintf(ifp->if_xname, sizeof ifp->if_xname, "%s%d", ifc->ifc_name,
     unit);
 ifp->if_flags = 0x2 | 0x800 | 0x8000;
 ifp->if_ioctl = carp_ioctl;
 ifp->if_start = carp_start;
 ifp->if_xflags = 0x2;
 ((&ifp->if_snd)->ifq_maxlen = (1));
 if_attach(ifp);
 ether_ifattach(ifp);
 ifp->if_data.ifi_type = 0xf7;
 ifp->if_sadl->sdl_type = 0xf7;
 ifp->if_output = carp_output;
 ifp->if_priority = 15;
 ifp->if_data.ifi_link_state = 1;
 sc->ah_cookie = hook_establish(sc->sc_ac.ac_if.if_addrhooks, 0,
     carp_addr_updated, sc);
 return (0);
}
int
carp_new_vhost(struct carp_softc *sc, int vhid, int advskew)
{
 struct carp_vhost_entry *vhe, *vhe0;
 vhe = malloc(sizeof(*vhe), 2, 0x0002 | 0x0008);
 if (vhe == ((void *)0))
  return (12);
 refcnt_init(&vhe->vhost_refcnt);
 carp_sc_ref(((void *)0), sc);
 vhe->parent_sc = sc;
 vhe->vhid = vhid;
 vhe->advskew = advskew;
 vhe->state = INIT;
 timeout_set_proc(&vhe->ad_tmo, carp_timer_ad, vhe);
 timeout_set_proc(&vhe->md_tmo, carp_timer_down, vhe);
 timeout_set_proc(&vhe->md6_tmo, carp_timer_down, vhe);
 ((_kernel_lock_held()) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../netinet/ip_carp.c", 847, "_kernel_lock_held()"));
 if ((srp_get_locked(&(&sc->carp_vhosts)->sl_head) == ((void *)0))) {
  vhe->vhe_leader = 1;
  do { void *head; srp_init(&(vhe)->vhost_entries.se_next); head = srp_get_locked(&(&sc->carp_vhosts)->sl_head); if (head != ((void *)0)) { (&carp_vh_rc)->srpl_ref(&(&carp_vh_rc)->srpl_gc.srp_gc_cookie, head); srp_update_locked(&(&carp_vh_rc)->srpl_gc, &(vhe)->vhost_entries.se_next, head); } (&carp_vh_rc)->srpl_ref(&(&carp_vh_rc)->srpl_gc.srp_gc_cookie, vhe); srp_update_locked(&(&carp_vh_rc)->srpl_gc, &(&sc->carp_vhosts)->sl_head, (vhe)); } while (0);
  sc->sc_vhe_count = 1;
  return (0);
 }
 for ((vhe0) = srp_get_locked(&(&sc->carp_vhosts)->sl_head); (vhe0) != ((void *)0); (vhe0) = srp_get_locked(&((vhe0))->vhost_entries.se_next)) {
  if (srp_get_locked(&(vhe0)->vhost_entries.se_next) == ((void *)0))
   break;
 }
 do { void *next; srp_init(&(vhe)->vhost_entries.se_next); next = srp_get_locked(&(vhe0)->vhost_entries.se_next); if (next != ((void *)0)) { (&carp_vh_rc)->srpl_ref(&(&carp_vh_rc)->srpl_gc.srp_gc_cookie, next); srp_update_locked(&(&carp_vh_rc)->srpl_gc, &(vhe)->vhost_entries.se_next, next); } (&carp_vh_rc)->srpl_ref(&(&carp_vh_rc)->srpl_gc.srp_gc_cookie, vhe); srp_update_locked(&(&carp_vh_rc)->srpl_gc, &(vhe0)->vhost_entries.se_next, (vhe)); } while (0);
 sc->sc_vhe_count++;
 return (0);
}
int
carp_clone_destroy(struct ifnet *ifp)
{
 struct carp_softc *sc = ifp->if_softc;
 int s;
 do { _rw_enter_write(&netlock ); s = _splraise(2); } while (0);
 carpdetach(sc);
 do { _splx(s); _rw_exit_write(&netlock ); } while (0);
 ether_ifdetach(ifp);
 if_detach(ifp);
 carp_destroy_vhosts(ifp->if_softc);
 refcnt_finalize(&sc->sc_refcnt, "carpdtor");
 free(sc->sc_imo.imo_membership, 53, 0);
 free(sc, 2, sizeof(*sc));
 return (0);
}
void
carp_del_all_timeouts(struct carp_softc *sc)
{
 struct carp_vhost_entry *vhe;
 ((_kernel_lock_held()) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../netinet/ip_carp.c", 893, "_kernel_lock_held()"));
 for ((vhe) = srp_get_locked(&(&sc->carp_vhosts)->sl_head); (vhe) != ((void *)0); (vhe) = srp_get_locked(&((vhe))->vhost_entries.se_next)) {
  timeout_del(&vhe->ad_tmo);
  timeout_del(&vhe->md_tmo);
  timeout_del(&vhe->md6_tmo);
 }
}
void
carpdetach(struct carp_softc *sc)
{
 struct ifnet *ifp0;
 struct carp_if *cif;
 carp_del_all_timeouts(sc);
 if (sc->sc_demote_cnt)
  carp_group_demote_adj(&sc->sc_ac.ac_if, -sc->sc_demote_cnt, "detach");
 sc->sc_suppress = 0;
 sc->sc_sendad_errors = 0;
 carp_set_state_all(sc, INIT);
 sc->sc_ac.ac_if.if_flags &= ~0x1;
 carp_setrun_all(sc, 0);
 carp_multicast_cleanup(sc);
 if (sc->ah_cookie != ((void *)0))
  hook_disestablish(sc->sc_ac.ac_if.if_addrhooks, sc->ah_cookie);
 ifp0 = sc->sc_ac.ac_if.if_carp_ptr.carp_d;
 if (ifp0 == ((void *)0))
  return;
 ((_kernel_lock_held()) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../netinet/ip_carp.c", 926, "_kernel_lock_held()"));
 cif = (struct carp_if *)ifp0->if_carp_ptr.carp_s;
 if_ih_remove(ifp0, carp_input, cif);
 if (sc->lh_cookie != ((void *)0))
  hook_disestablish(ifp0->if_linkstatehooks, sc->lh_cookie);
 do { struct srp *ref; struct carp_softc *c, *n; ref = &(&cif->vhif_vrs)->sl_head; while ((c = srp_get_locked(ref)) != (sc)) ref = &c->sc_list.se_next; n = srp_get_locked(&(c)->sc_list.se_next); if (n != ((void *)0)) (&carp_sc_rc)->srpl_ref(&(&carp_sc_rc)->srpl_gc.srp_gc_cookie, n); srp_update_locked(&(&carp_sc_rc)->srpl_gc, ref, n); srp_update_locked(&(&carp_sc_rc)->srpl_gc, &c->sc_list.se_next, ((void *)0)); } while (0);
 if ((srp_get_locked(&(&cif->vhif_vrs)->sl_head) == ((void *)0))) {
  ifpromisc(ifp0, 0);
  ifp0->if_carp_ptr.carp_s = ((void *)0);
  free(cif, 9, sizeof(*cif));
 }
 sc->sc_ac.ac_if.if_carp_ptr.carp_d = ((void *)0);
}
void
carp_ifdetach(struct ifnet *ifp0)
{
 struct carp_softc *sc, *nextsc;
 struct carp_if *cif = (struct carp_if *)ifp0->if_carp_ptr.carp_s;
 ((_kernel_lock_held()) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../netinet/ip_carp.c", 953, "_kernel_lock_held()"));
 for ((sc) = srp_get_locked(&(&cif->vhif_vrs)->sl_head); (sc) && ((nextsc) = srp_get_locked(&(sc)->sc_list.se_next), 1); (sc) = (nextsc))
  carpdetach(sc);
}
void
carp_destroy_vhosts(struct carp_softc *sc)
{
 struct carp_vhost_entry *vhe;
 ((_kernel_lock_held()) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../netinet/ip_carp.c", 965, "_kernel_lock_held()"));
 while ((vhe = srp_get_locked(&(&sc->carp_vhosts)->sl_head)) != ((void *)0)) {
  do { struct srp *ref; struct carp_vhost_entry *c, *n; ref = &(&sc->carp_vhosts)->sl_head; while ((c = srp_get_locked(ref)) != (vhe)) ref = &c->vhost_entries.se_next; n = srp_get_locked(&(c)->vhost_entries.se_next); if (n != ((void *)0)) (&carp_vh_rc)->srpl_ref(&(&carp_vh_rc)->srpl_gc.srp_gc_cookie, n); srp_update_locked(&(&carp_vh_rc)->srpl_gc, ref, n); srp_update_locked(&(&carp_vh_rc)->srpl_gc, &c->vhost_entries.se_next, ((void *)0)); } while (0);
  carp_vh_unref(((void *)0), vhe);
 }
 sc->sc_vhe_count = 0;
}
int
carp_prepare_ad(struct mbuf *m, struct carp_vhost_entry *vhe,
    struct carp_header *ch)
{
 if (!vhe->vhe_replay_cookie) {
  arc4random_buf(&vhe->vhe_replay_cookie,
      sizeof(vhe->vhe_replay_cookie));
 }
 __builtin_bcopy((&vhe->vhe_replay_cookie), (ch->carp_counter), (sizeof(ch->carp_counter)));
 carp_hmac_generate(vhe, ch->carp_counter, ch->carp_md, HMAC_NOV6LL);
 return (0);
}
void
carp_send_ad_all(void)
{
 struct ifnet *ifp0;
 struct carp_if *cif;
 struct carp_softc *vh;
 ((_kernel_lock_held()) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../netinet/ip_carp.c", 1003, "_kernel_lock_held()"));
 if (carp_send_all_recur > 0)
  return;
 ++carp_send_all_recur;
 for((ifp0) = ((&ifnet)->tqh_first); (ifp0) != ((void *)0); (ifp0) = ((ifp0)->if_list.tqe_next)) {
  if (ifp0->if_carp_ptr.carp_s == ((void *)0) || ifp0->if_data.ifi_type == 0xf7)
   continue;
  cif = (struct carp_if *)ifp0->if_carp_ptr.carp_s;
  for ((vh) = srp_get_locked(&(&cif->vhif_vrs)->sl_head); (vh) != ((void *)0); (vh) = srp_get_locked(&((vh))->sc_list.se_next)) {
   if ((vh->sc_ac.ac_if.if_flags & (0x1|0x40)) ==
       (0x1|0x40)) {
    carp_vhe_send_ad_all(vh);
   }
  }
 }
 --carp_send_all_recur;
}
void
carp_vhe_send_ad_all(struct carp_softc *sc)
{
 struct carp_vhost_entry *vhe;
 ((_kernel_lock_held()) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../netinet/ip_carp.c", 1028, "_kernel_lock_held()"));
 for ((vhe) = srp_get_locked(&(&sc->carp_vhosts)->sl_head); (vhe) != ((void *)0); (vhe) = srp_get_locked(&((vhe))->vhost_entries.se_next)) {
  if (vhe->state == MASTER)
   carp_send_ad(vhe);
 }
}
void
carp_timer_ad(void *v)
{
 int s;
 do { _rw_enter_write(&netlock ); s = _splraise(2); } while (0);
 carp_send_ad(v);
 do { _splx(s); _rw_exit_write(&netlock ); } while (0);
}
void
carp_send_ad(struct carp_vhost_entry *vhe)
{
 struct carp_header ch;
 struct timeval tv;
 struct carp_softc *sc = vhe->parent_sc;
 struct carp_header *ch_ptr;
 struct mbuf *m;
 int error, len, advbase, advskew;
 struct ifaddr *ifa;
 struct sockaddr sa;
 do { if (rw_status(&netlock) != 0x0001UL) splassert_fail(0x0001UL, rw_status(&netlock), __func__); do { if (splassert_ctl > 0) { splassert_check(2, __func__); } } while (0); } while (0);
 if (sc->sc_ac.ac_if.if_carp_ptr.carp_d == ((void *)0)) {
  sc->sc_ac.ac_if.if_data.ifi_oerrors++;
  return;
 }
 if (sc->sc_bow_out) {
  advbase = 255;
  advskew = 255;
 } else {
  advbase = sc->sc_advbase;
  advskew = vhe->advskew;
  tv.tv_sec = advbase;
  if (advbase == 0 && advskew == 0)
   tv.tv_usec = 1 * 1000000 / 256;
  else
   tv.tv_usec = advskew * 1000000 / 256;
 }
 ch.carp_version = 2;
 ch.carp_type = 0x01;
 ch.carp_vhid = vhe->vhid;
 ch.carp_demote = carp_group_demote_count(sc) & 0xff;
 ch.carp_advbase = advbase;
 ch.carp_advskew = advskew;
 ch.carp_authlen = 7;
 ch.carp_cksum = 0;
 sc->cur_vhe = vhe;
 if (sc->sc_naddrs) {
  struct ip *ip;
  m = m_gethdr((0x0002), (2));
  if (m == ((void *)0)) {
   sc->sc_ac.ac_if.if_data.ifi_oerrors++;
   carpstat_inc(carps_onomem);
   goto retry_later;
  }
  len = sizeof(*ip) + sizeof(ch);
  m->M_dat.MH.MH_pkthdr.len = len;
  m->M_dat.MH.MH_pkthdr.ph_ifidx = 0;
  m->M_dat.MH.MH_pkthdr.ph_rtableid = sc->sc_ac.ac_if.if_data.ifi_rdomain;
  m->M_dat.MH.MH_pkthdr.pf.prio = 6;
  m->m_hdr.mh_len = len;
  (m)->m_hdr.mh_data += (((256 - sizeof(struct m_hdr)) - sizeof(struct pkthdr)) - (m->m_hdr.mh_len)) &~ (sizeof(long) - 1);
  ip = ((struct ip *)((m)->m_hdr.mh_data));
  ip->ip_v = 4;
  ip->ip_hl = sizeof(*ip) >> 2;
  ip->ip_tos = 0x10;
  ip->ip_len = ((__uint16_t)(len));
  ip->ip_id = ((__uint16_t)(ip_randomid()));
  ip->ip_off = ((__uint16_t)(0x4000));
  ip->ip_ttl = 255;
  ip->ip_p = 112;
  ip->ip_sum = 0;
  __builtin_memset((&sa), (0), (sizeof(sa)));
  sa.sa_family = 2;
  ifa = ifaof_ifpforaddr(&sa, sc->sc_ac.ac_if.if_carp_ptr.carp_d);
  if (ifa == ((void *)0))
   ifa = ifaof_ifpforaddr(&sa, &sc->sc_ac.ac_if);
  ((ifa != ((void *)0)) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../netinet/ip_carp.c", 1124, "ifa != NULL"));
  ip->ip_src.s_addr = ifatoia(ifa)->ia_addr.sin_addr.s_addr;
  ip->ip_dst.s_addr = sc->sc_peer.s_addr;
  if ((((u_int32_t)(ip->ip_dst.s_addr) & ((u_int32_t) ((__uint32_t)((u_int32_t)(0xf0000000))))) == ((u_int32_t) ((__uint32_t)((u_int32_t)(0xe0000000))))))
   m->m_hdr.mh_flags |= 0x0200;
  ch_ptr = (struct carp_header *)(ip + 1);
  __builtin_bcopy((&ch), (ch_ptr), (sizeof(ch)));
  if (carp_prepare_ad(m, vhe, ch_ptr))
   goto retry_later;
  m->m_hdr.mh_data += sizeof(*ip);
  ch_ptr->carp_cksum = ((u_int16_t)in_cksum((m), (len - sizeof(*ip))));
  m->m_hdr.mh_data -= sizeof(*ip);
  getmicrotime(&sc->sc_ac.ac_if.if_data.ifi_lastchange);
  sc->sc_ac.ac_if.if_data.ifi_opackets++;
  sc->sc_ac.ac_if.if_data.ifi_obytes += len;
  carpstat_inc(carps_opackets);
  error = ip_output(m, ((void *)0), ((void *)0), 0x2, &sc->sc_imo,
      ((void *)0), 0);
  if (error) {
   if (error == 55)
    carpstat_inc(carps_onomem);
   else
    do { if (carp_opts[3] >= 4) { if (sc) log(4, "%s: ", (sc)->sc_ac.ac_if.if_xname); else log(4, "carp: "); addlog ("ip_output failed: %d", error); addlog("\n"); } } while (0);
   sc->sc_ac.ac_if.if_data.ifi_oerrors++;
   if (sc->sc_sendad_errors < 0x7fffffff)
    sc->sc_sendad_errors++;
   if (sc->sc_sendad_errors == (3 * (sc)->sc_vhe_count))
    carp_group_demote_adj(&sc->sc_ac.ac_if, 1,
        "> snderrors");
   sc->sc_sendad_success = 0;
  } else {
   if (sc->sc_sendad_errors >= (3 * (sc)->sc_vhe_count)) {
    if (++sc->sc_sendad_success >=
        (3 * (sc)->sc_vhe_count)) {
     carp_group_demote_adj(&sc->sc_ac.ac_if, -1,
         "< snderrors");
     sc->sc_sendad_errors = 0;
    }
   } else
    sc->sc_sendad_errors = 0;
  }
  if (vhe->vhe_leader) {
   if (sc->sc_delayed_arp > 0)
    sc->sc_delayed_arp--;
   if (sc->sc_delayed_arp == 0) {
    carp_send_arp(sc);
    sc->sc_delayed_arp = -1;
   }
  }
 }
 if (sc->sc_naddrs6) {
  struct ip6_hdr *ip6;
  m = m_gethdr((0x0002), (2));
  if (m == ((void *)0)) {
   sc->sc_ac.ac_if.if_data.ifi_oerrors++;
   carpstat_inc(carps_onomem);
   goto retry_later;
  }
  len = sizeof(*ip6) + sizeof(ch);
  m->M_dat.MH.MH_pkthdr.len = len;
  m->M_dat.MH.MH_pkthdr.ph_ifidx = 0;
  m->M_dat.MH.MH_pkthdr.pf.prio = 6;
  m->M_dat.MH.MH_pkthdr.ph_rtableid = sc->sc_ac.ac_if.if_data.ifi_rdomain;
  m->m_hdr.mh_len = len;
  (m)->m_hdr.mh_data += (((256 - sizeof(struct m_hdr)) - sizeof(struct pkthdr)) - (m->m_hdr.mh_len)) &~ (sizeof(long) - 1);
  m->m_hdr.mh_flags |= 0x0200;
  ip6 = ((struct ip6_hdr *)((m)->m_hdr.mh_data));
  __builtin_memset((ip6), (0), (sizeof(*ip6)));
  ip6->ip6_ctlun.ip6_un2_vfc |= 0x60;
  ip6->ip6_ctlun.ip6_un1.ip6_un1_hlim = 255;
  ip6->ip6_ctlun.ip6_un1.ip6_un1_nxt = 112;
  __builtin_memset((&sa), (0), (sizeof(sa)));
  sa.sa_family = 24;
  ifa = ifaof_ifpforaddr(&sa, sc->sc_ac.ac_if.if_carp_ptr.carp_d);
  if (ifa == ((void *)0))
   ifa = ifaof_ifpforaddr(&sa, &sc->sc_ac.ac_if);
  ((ifa != ((void *)0)) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../netinet/ip_carp.c", 1211, "ifa != NULL"));
  __builtin_bcopy((ifatoia6(ifa)->ia_addr.sin6_addr.__u6_addr.__u6_addr8), (&ip6->ip6_src), (sizeof(struct in6_addr)));
  ip6->ip6_dst.__u6_addr.__u6_addr16[0] = ((__uint16_t)(0xff02));
  ip6->ip6_dst.__u6_addr.__u6_addr16[1] = ((__uint16_t)(sc->sc_ac.ac_if.if_carp_ptr.carp_d->if_index));
  ip6->ip6_dst.__u6_addr.__u6_addr8[15] = 0x12;
  ch_ptr = (struct carp_header *)(ip6 + 1);
  __builtin_bcopy((&ch), (ch_ptr), (sizeof(ch)));
  if (carp_prepare_ad(m, vhe, ch_ptr))
   goto retry_later;
  m->m_hdr.mh_data += sizeof(*ip6);
  ch_ptr->carp_cksum = ((u_int16_t)in_cksum((m), (len - sizeof(*ip6))));
  m->m_hdr.mh_data -= sizeof(*ip6);
  getmicrotime(&sc->sc_ac.ac_if.if_data.ifi_lastchange);
  sc->sc_ac.ac_if.if_data.ifi_opackets++;
  sc->sc_ac.ac_if.if_data.ifi_obytes += len;
  carpstat_inc(carps_opackets6);
  error = ip6_output(m, ((void *)0), ((void *)0), 0, &sc->sc_im6o, ((void *)0));
  if (error) {
   if (error == 55)
    carpstat_inc(carps_onomem);
   else
    do { if (carp_opts[3] >= 4) { if (sc) log(4, "%s: ", (sc)->sc_ac.ac_if.if_xname); else log(4, "carp: "); addlog ("ip6_output failed: %d", error); addlog("\n"); } } while (0);
   sc->sc_ac.ac_if.if_data.ifi_oerrors++;
   if (sc->sc_sendad_errors < 0x7fffffff)
    sc->sc_sendad_errors++;
   if (sc->sc_sendad_errors == (3 * (sc)->sc_vhe_count))
    carp_group_demote_adj(&sc->sc_ac.ac_if, 1,
         "> snd6errors");
   sc->sc_sendad_success = 0;
  } else {
   if (sc->sc_sendad_errors >= (3 * (sc)->sc_vhe_count)) {
    if (++sc->sc_sendad_success >=
        (3 * (sc)->sc_vhe_count)) {
     carp_group_demote_adj(&sc->sc_ac.ac_if, -1,
         "< snd6errors");
     sc->sc_sendad_errors = 0;
    }
   } else
    sc->sc_sendad_errors = 0;
  }
 }
retry_later:
 sc->cur_vhe = ((void *)0);
 if (advbase != 255 || advskew != 255)
  timeout_add(&vhe->ad_tmo, tvtohz(&tv));
}
void
carp_send_arp(struct carp_softc *sc)
{
 struct ifaddr *ifa;
 in_addr_t in;
 for((ifa) = ((&sc->sc_ac.ac_if.if_addrlist)->tqh_first); (ifa) != ((void *)0); (ifa) = ((ifa)->ifa_list.tqe_next)) {
  if (ifa->ifa_addr->sa_family != 2)
   continue;
  in = ifatoia(ifa)->ia_addr.sin_addr.s_addr;
  arprequest(&sc->sc_ac.ac_if, &in, &in, sc->sc_ac.ac_enaddr);
  delay(1000);
 }
}
void
carp_send_na(struct carp_softc *sc)
{
 struct ifaddr *ifa;
 struct in6_addr *in6;
 static struct in6_addr mcast = {{{ 0xff, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01 }}};
 for((ifa) = ((&sc->sc_ac.ac_if.if_addrlist)->tqh_first); (ifa) != ((void *)0); (ifa) = ((ifa)->ifa_list.tqe_next)) {
  if (ifa->ifa_addr->sa_family != 24)
   continue;
  in6 = &ifatoia6(ifa)->ia_addr.sin6_addr;
  nd6_na_output(&sc->sc_ac.ac_if, &mcast, in6,
      ((__uint32_t)(0x20000000)) |
      (ip6_forwarding ? ((__uint32_t)(0x80000000)) : 0), 1, ((void *)0));
  delay(1000);
 }
}
void
carp_update_lsmask(struct carp_softc *sc)
{
 struct carp_vhost_entry *vhe;
 int count;
 if (sc->sc_balancing == 0)
  return;
 sc->sc_lsmask = 0;
 count = 0;
 ((_kernel_lock_held()) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../netinet/ip_carp.c", 1324, "_kernel_lock_held()"));
 for ((vhe) = srp_get_locked(&(&sc->carp_vhosts)->sl_head); (vhe) != ((void *)0); (vhe) = srp_get_locked(&((vhe))->vhost_entries.se_next)) {
  if (vhe->state == MASTER && count < sizeof(sc->sc_lsmask) * 8)
   sc->sc_lsmask |= 1 << count;
  count++;
 }
 sc->sc_lscount = count;
 do { if (carp_opts[3] >= 7) { if (sc) log(7, "%s: ", (sc)->sc_ac.ac_if.if_xname); else log(7, "carp: "); addlog ("carp_update_lsmask: %x", sc->sc_lsmask); addlog("\n"); } } while (0);
}
int
carp_iamatch(struct ifnet *ifp)
{
 struct carp_softc *sc = ifp->if_softc;
 struct carp_vhost_entry *vhe;
 struct srp_ref sr;
 int match = 0;
 vhe = srp_enter((&sr), &(&sc->carp_vhosts)->sl_head);
 if (vhe->state == MASTER)
  match = 1;
 srp_leave((&sr));
 return (match);
}
int
carp_iamatch6(struct ifnet *ifp)
{
 struct carp_softc *sc = ifp->if_softc;
 struct carp_vhost_entry *vhe = srp_get_locked(&(&sc->carp_vhosts)->sl_head);
 ((_kernel_lock_held()) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../netinet/ip_carp.c", 1357, "_kernel_lock_held()"));
 if (vhe->state == MASTER)
  return (1);
 return (0);
}
struct ifnet *
carp_ourether(void *v, u_int8_t *ena)
{
 struct carp_if *cif = (struct carp_if *)v;
 struct carp_softc *vh;
 ((_kernel_lock_held()) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../netinet/ip_carp.c", 1372, "_kernel_lock_held()"));
 for ((vh) = srp_get_locked(&(&cif->vhif_vrs)->sl_head); (vh) != ((void *)0); (vh) = srp_get_locked(&((vh))->sc_list.se_next)) {
  struct carp_vhost_entry *vhe;
  if ((vh->sc_ac.ac_if.if_flags & (0x1|0x40)) !=
      (0x1|0x40))
   continue;
  vhe = srp_get_locked(&(&vh->carp_vhosts)->sl_head);
  if ((vhe->state == MASTER || vh->sc_balancing >= 1) &&
      !__builtin_memcmp((ena), (vh->sc_ac.ac_enaddr), (6)))
   return (&vh->sc_ac.ac_if);
 }
 return (((void *)0));
}
int
carp_vhe_match(struct carp_softc *sc, uint8_t *ena)
{
 struct carp_vhost_entry *vhe;
 struct srp_ref sr;
 int match = 0;
 vhe = srp_enter((&sr), &(&sc->carp_vhosts)->sl_head);
 match = (vhe->state == MASTER || sc->sc_balancing >= 1) &&
     !__builtin_memcmp((ena), (sc->sc_ac.ac_enaddr), (6));
 srp_leave((&sr));
 return (match);
}
int
carp_input(struct ifnet *ifp0, struct mbuf *m, void *cookie)
{
 struct ether_header *eh;
 struct mbuf_list ml = { ((void *)0), ((void *)0), 0 };
 struct carp_if *cif;
 struct carp_softc *sc;
 struct srp_ref sr;
 if (((m->m_hdr.mh_flags) & (0x0020)))
  return (0);
 eh = ((struct ether_header *)((m)->m_hdr.mh_data));
 cif = (struct carp_if *)cookie;
 ((cif == (struct carp_if *)ifp0->if_carp_ptr.carp_s) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../netinet/ip_carp.c", 1422, "cif == (struct carp_if *)ifp0->if_carp"));
 for ((sc) = srp_enter((&sr), &(&cif->vhif_vrs)->sl_head); (sc) != ((void *)0); (sc) = srp_follow((&sr), &(sc)->sc_list.se_next)) {
  if ((sc->sc_ac.ac_if.if_flags & (0x1|0x40)) !=
      (0x1|0x40))
   continue;
  if (carp_vhe_match(sc, eh->ether_dhost)) {
   if (sc->sc_balancing == 1) {
    struct m_tag *mtag;
    mtag = m_tag_get(0x4000, 0,
        0x0002);
    if (mtag == ((void *)0)) {
     m_freem(m);
     goto out;
    }
    m_tag_prepend(m, mtag);
   }
   break;
  }
 }
 if (sc == ((void *)0)) {
  srp_leave((&sr));
  if (!(*(eh->ether_dhost) & 0x01))
   return (0);
  for ((sc) = srp_enter((&sr), &(&cif->vhif_vrs)->sl_head); (sc) != ((void *)0); (sc) = srp_follow((&sr), &(sc)->sc_list.se_next)) {
   struct mbuf *m0;
   if (!(sc->sc_ac.ac_if.if_flags & 0x1))
    continue;
   m0 = m_dup_pkt(m, 2, 0x0002);
   if (m0 == ((void *)0))
    continue;
   ml_init(&ml);
   ml_enqueue(&ml, m0);
   if_input(&sc->sc_ac.ac_if, &ml);
  }
  srp_leave((&sr));
  return (0);
 }
 ml_enqueue(&ml, m);
 if_input(&sc->sc_ac.ac_if, &ml);
out:
 srp_leave((&sr));
 return (1);
}
int
carp_lsdrop(struct mbuf *m, sa_family_t af, u_int32_t *src, u_int32_t *dst,
   int drop)
{
 struct ifnet *ifp;
 struct carp_softc *sc;
 int match = 1;
 u_int32_t fold;
 struct m_tag *mtag;
 ifp = if_get(m->M_dat.MH.MH_pkthdr.ph_ifidx);
 ((ifp != ((void *)0)) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../netinet/ip_carp.c", 1499, "ifp != NULL"));
 sc = ifp->if_softc;
 if (sc->sc_balancing == 0)
  goto done;
 if (m->m_hdr.mh_flags & 0x0200 &&
     (mtag = m_tag_find(m, 0x4000, ((void *)0)))) {
  m_tag_delete(m, mtag);
  m->m_hdr.mh_flags &= ~0x0200;
 }
 if (!drop)
  goto done;
 if (m->m_hdr.mh_flags & (0x0100|0x0200))
  goto done;
 fold = src[0] ^ dst[0];
 if (af == 24) {
  int i;
  for (i = 1; i < 4; i++)
   fold ^= src[i] ^ dst[i];
 }
 if (sc->sc_lscount == 0)
  match = 0;
 else
  match = (1 << (((__uint32_t)(fold)) % sc->sc_lscount)) & sc->sc_lsmask;
done:
 if_put(ifp);
 return (!match);
}
void
carp_timer_down(void *v)
{
 int s;
 do { _rw_enter_write(&netlock ); s = _splraise(2); } while (0);
 carp_master_down(v);
 do { _splx(s); _rw_exit_write(&netlock ); } while (0);
}
void
carp_master_down(struct carp_vhost_entry *vhe)
{
 struct carp_softc *sc = vhe->parent_sc;
 do { if (rw_status(&netlock) != 0x0001UL) splassert_fail(0x0001UL, rw_status(&netlock), __func__); do { if (splassert_ctl > 0) { splassert_check(2, __func__); } } while (0); } while (0);
 switch (vhe->state) {
 case INIT:
  printf("%s: master_down event in INIT state\n",
      sc->sc_ac.ac_if.if_xname);
  break;
 case MASTER:
  break;
 case BACKUP:
  carp_set_state(vhe, MASTER);
  carp_send_ad(vhe);
  if (sc->sc_balancing == 0 && vhe->vhe_leader) {
   carp_send_arp(sc);
   sc->sc_delayed_arp = 2;
   carp_send_na(sc);
  }
  carp_setrun(vhe, 0);
  carpstat_inc(carps_preempt);
  break;
 }
}
void
carp_setrun_all(struct carp_softc *sc, sa_family_t af)
{
 struct carp_vhost_entry *vhe;
 ((_kernel_lock_held()) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../netinet/ip_carp.c", 1594, "_kernel_lock_held()"));
 for ((vhe) = srp_get_locked(&(&sc->carp_vhosts)->sl_head); (vhe) != ((void *)0); (vhe) = srp_get_locked(&((vhe))->vhost_entries.se_next)) {
  carp_setrun(vhe, af);
 }
}
void
carp_setrun(struct carp_vhost_entry *vhe, sa_family_t af)
{
 struct timeval tv;
 struct carp_softc *sc = vhe->parent_sc;
 if (sc->sc_ac.ac_if.if_carp_ptr.carp_d == ((void *)0)) {
  sc->sc_ac.ac_if.if_flags &= ~0x40;
  carp_set_state_all(sc, INIT);
  return;
 }
 if (__builtin_memcmp((((struct arpcom *)sc->sc_ac.ac_if.if_carp_ptr.carp_d)->ac_enaddr), (sc->sc_ac.ac_enaddr), (6)) == 0)
  sc->sc_realmac = 1;
 else
  sc->sc_realmac = 0;
 if (sc->sc_ac.ac_if.if_flags & 0x1 && vhe->vhid > 0 &&
     (sc->sc_naddrs || sc->sc_naddrs6) && !sc->sc_suppress) {
  sc->sc_ac.ac_if.if_flags |= 0x40;
 } else {
  sc->sc_ac.ac_if.if_flags &= ~0x40;
  return;
 }
 switch (vhe->state) {
 case INIT:
  carp_set_state(vhe, BACKUP);
  carp_setrun(vhe, 0);
  break;
 case BACKUP:
  timeout_del(&vhe->ad_tmo);
  tv.tv_sec = 3 * sc->sc_advbase;
  if (sc->sc_advbase == 0 && vhe->advskew == 0)
   tv.tv_usec = 3 * 1000000 / 256;
  else if (sc->sc_advbase == 0)
   tv.tv_usec = 3 * vhe->advskew * 1000000 / 256;
  else
   tv.tv_usec = vhe->advskew * 1000000 / 256;
  if (vhe->vhe_leader)
   sc->sc_delayed_arp = -1;
  switch (af) {
  case 2:
   timeout_add(&vhe->md_tmo, tvtohz(&tv));
   break;
  case 24:
   timeout_add(&vhe->md6_tmo, tvtohz(&tv));
   break;
  default:
   if (sc->sc_naddrs)
    timeout_add(&vhe->md_tmo, tvtohz(&tv));
   if (sc->sc_naddrs6)
    timeout_add(&vhe->md6_tmo, tvtohz(&tv));
   break;
  }
  break;
 case MASTER:
  tv.tv_sec = sc->sc_advbase;
  if (sc->sc_advbase == 0 && vhe->advskew == 0)
   tv.tv_usec = 1 * 1000000 / 256;
  else
   tv.tv_usec = vhe->advskew * 1000000 / 256;
  timeout_add(&vhe->ad_tmo, tvtohz(&tv));
  break;
 }
}
void
carp_multicast_cleanup(struct carp_softc *sc)
{
 struct ip_moptions *imo = &sc->sc_imo;
 struct ip6_moptions *im6o = &sc->sc_im6o;
 u_int16_t n = imo->imo_num_memberships;
 while (n-- > 0) {
  if (imo->imo_membership[n] != ((void *)0)) {
   in_delmulti(imo->imo_membership[n]);
   imo->imo_membership[n] = ((void *)0);
  }
 }
 imo->imo_num_memberships = 0;
 imo->imo_ifidx = 0;
 while (!(((&im6o->im6o_memberships)->lh_first) == ((void *)0))) {
  struct in6_multi_mship *imm =
      ((&im6o->im6o_memberships)->lh_first);
  do { if ((imm)->i6mm_chain.le_next != ((void *)0)) (imm)->i6mm_chain.le_next->i6mm_chain.le_prev = (imm)->i6mm_chain.le_prev; *(imm)->i6mm_chain.le_prev = (imm)->i6mm_chain.le_next; ((imm)->i6mm_chain.le_prev) = ((void *)-1); ((imm)->i6mm_chain.le_next) = ((void *)-1); } while (0);
  in6_leavegroup(imm);
 }
 im6o->im6o_ifidx = 0;
 carp_ether_purgemulti(sc);
}
int
carp_set_ifp(struct carp_softc *sc, struct ifnet *ifp0)
{
 struct carp_if *cif, *ncif = ((void *)0);
 struct carp_softc *vr, *last = ((void *)0), *after = ((void *)0);
 int myself = 0, error = 0;
 ((ifp0 != sc->sc_ac.ac_if.if_carp_ptr.carp_d) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../netinet/ip_carp.c", 1715, "ifp0 != sc->sc_carpdev"));
 ((_kernel_lock_held()) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../netinet/ip_carp.c", 1716, "_kernel_lock_held()"));
 if ((ifp0->if_flags & 0x8000) == 0)
  return (49);
 if (ifp0->if_data.ifi_type == 0xf7)
  return (22);
 if (ifp0->if_carp_ptr.carp_s == ((void *)0)) {
  ncif = malloc(sizeof(*cif), 9, 0x0002|0x0008);
  if (ncif == ((void *)0))
   return (55);
  if ((error = ifpromisc(ifp0, 1))) {
   free(ncif, 9, sizeof(*ncif));
   return (error);
  }
  srp_init(&(&ncif->vhif_vrs)->sl_head);
 } else {
  cif = (struct carp_if *)ifp0->if_carp_ptr.carp_s;
  if (carp_check_dup_vhids(sc, cif, ((void *)0)))
   return (22);
 }
 if (sc->sc_ac.ac_if.if_carp_ptr.carp_d != ((void *)0))
  carpdetach(sc);
 if (ncif != ((void *)0))
  ifp0->if_carp_ptr.carp_s = (caddr_t)ncif;
 sc->sc_ac.ac_if.if_carp_ptr.carp_d = ifp0;
 sc->sc_ac.ac_if.if_data.ifi_capabilities = ifp0->if_data.ifi_capabilities &
     (0x00000001 | 0x00000002 | 0x00000004 | 0x00000080 | 0x00000100);
 cif = (struct carp_if *)ifp0->if_carp_ptr.carp_s;
 for ((vr) = srp_get_locked(&(&cif->vhif_vrs)->sl_head); (vr) != ((void *)0); (vr) = srp_get_locked(&((vr))->sc_list.se_next)) {
  struct carp_vhost_entry *vrhead, *schead;
  last = vr;
  if (vr == sc)
   myself = 1;
  vrhead = srp_get_locked(&(&vr->carp_vhosts)->sl_head);
  schead = srp_get_locked(&(&sc->carp_vhosts)->sl_head);
  if (vrhead->vhid < schead->vhid)
   after = vr;
 }
 if (!myself) {
  if (last == ((void *)0)) {
   do { void *head; srp_init(&(sc)->sc_list.se_next); head = srp_get_locked(&(&cif->vhif_vrs)->sl_head); if (head != ((void *)0)) { (&carp_sc_rc)->srpl_ref(&(&carp_sc_rc)->srpl_gc.srp_gc_cookie, head); srp_update_locked(&(&carp_sc_rc)->srpl_gc, &(sc)->sc_list.se_next, head); } (&carp_sc_rc)->srpl_ref(&(&carp_sc_rc)->srpl_gc.srp_gc_cookie, sc); srp_update_locked(&(&carp_sc_rc)->srpl_gc, &(&cif->vhif_vrs)->sl_head, (sc)); } while (0);
  } else if (after == ((void *)0)) {
   do { void *next; srp_init(&(sc)->sc_list.se_next); next = srp_get_locked(&(last)->sc_list.se_next); if (next != ((void *)0)) { (&carp_sc_rc)->srpl_ref(&(&carp_sc_rc)->srpl_gc.srp_gc_cookie, next); srp_update_locked(&(&carp_sc_rc)->srpl_gc, &(sc)->sc_list.se_next, next); } (&carp_sc_rc)->srpl_ref(&(&carp_sc_rc)->srpl_gc.srp_gc_cookie, sc); srp_update_locked(&(&carp_sc_rc)->srpl_gc, &(last)->sc_list.se_next, (sc)); } while (0);
  } else {
   do { void *next; srp_init(&(sc)->sc_list.se_next); next = srp_get_locked(&(after)->sc_list.se_next); if (next != ((void *)0)) { (&carp_sc_rc)->srpl_ref(&(&carp_sc_rc)->srpl_gc.srp_gc_cookie, next); srp_update_locked(&(&carp_sc_rc)->srpl_gc, &(sc)->sc_list.se_next, next); } (&carp_sc_rc)->srpl_ref(&(&carp_sc_rc)->srpl_gc.srp_gc_cookie, sc); srp_update_locked(&(&carp_sc_rc)->srpl_gc, &(after)->sc_list.se_next, (sc)); } while (0);
  }
 }
 if (sc->sc_naddrs || sc->sc_naddrs6)
  sc->sc_ac.ac_if.if_flags |= 0x1;
 carp_set_enaddr(sc);
 sc->lh_cookie = hook_establish(ifp0->if_linkstatehooks, 1,
     carp_carpdev_state, ifp0);
 if_ih_insert(ifp0, carp_input, cif);
 carp_carpdev_state(ifp0);
 return (0);
}
void
carp_set_vhe_enaddr(struct carp_vhost_entry *vhe)
{
 struct carp_softc *sc = vhe->parent_sc;
 if (vhe->vhid != 0 && sc->sc_ac.ac_if.if_carp_ptr.carp_d) {
  if (vhe->vhe_leader && sc->sc_balancing == 1)
   vhe->vhe_enaddr[0] = 1;
  else
   vhe->vhe_enaddr[0] = 0;
  vhe->vhe_enaddr[1] = 0;
  vhe->vhe_enaddr[2] = 0x5e;
  vhe->vhe_enaddr[3] = 0;
  vhe->vhe_enaddr[4] = 1;
  vhe->vhe_enaddr[5] = vhe->vhid;
 } else
  __builtin_memset((vhe->vhe_enaddr), (0), (6));
}
void
carp_set_enaddr(struct carp_softc *sc)
{
 struct carp_vhost_entry *vhe;
 ((_kernel_lock_held()) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../netinet/ip_carp.c", 1816, "_kernel_lock_held()"));
 for ((vhe) = srp_get_locked(&(&sc->carp_vhosts)->sl_head); (vhe) != ((void *)0); (vhe) = srp_get_locked(&((vhe))->vhost_entries.se_next))
  carp_set_vhe_enaddr(vhe);
 vhe = srp_get_locked(&(&sc->carp_vhosts)->sl_head);
 if ((__builtin_memcmp((sc->sc_ac.ac_enaddr + 1), (vhe->vhe_enaddr + 1), (6 - 2)) == 0) ||
     (!sc->sc_ac.ac_enaddr[0] && !sc->sc_ac.ac_enaddr[1] &&
     !sc->sc_ac.ac_enaddr[2] && !sc->sc_ac.ac_enaddr[3] &&
     !sc->sc_ac.ac_enaddr[4] && !sc->sc_ac.ac_enaddr[5]))
  __builtin_bcopy((vhe->vhe_enaddr), (sc->sc_ac.ac_enaddr), (6));
 if (__builtin_memcmp((sc->sc_ac.ac_enaddr), (sc->sc_curlladdr), (6)) != 0) {
  __builtin_bcopy((sc->sc_ac.ac_enaddr), (((caddr_t)((sc->sc_ac.ac_if.if_sadl)->sdl_data + (sc->sc_ac.ac_if.if_sadl)->sdl_nlen))), (6));
  __builtin_bcopy((sc->sc_ac.ac_enaddr), (sc->sc_curlladdr), (6));
  if (sc->sc_naddrs6)
   in6_ifattach_linklocal(&sc->sc_ac.ac_if, ((void *)0));
  carp_set_state_all(sc, INIT);
  carp_setrun_all(sc, 0);
 }
}
void
carp_addr_updated(void *v)
{
 struct carp_softc *sc = (struct carp_softc *) v;
 struct ifaddr *ifa;
 int new_naddrs = 0, new_naddrs6 = 0;
 for((ifa) = ((&sc->sc_ac.ac_if.if_addrlist)->tqh_first); (ifa) != ((void *)0); (ifa) = ((ifa)->ifa_list.tqe_next)) {
  if (ifa->ifa_addr->sa_family == 2)
   new_naddrs++;
  else if (ifa->ifa_addr->sa_family == 24)
   new_naddrs6++;
 }
 if (new_naddrs != sc->sc_naddrs || new_naddrs6 != sc->sc_naddrs6) {
  sc->sc_naddrs = new_naddrs;
  sc->sc_naddrs6 = new_naddrs6;
  if ((((u_int32_t)(sc->sc_peer.s_addr) & ((u_int32_t) ((__uint32_t)((u_int32_t)(0xf0000000))))) == ((u_int32_t) ((__uint32_t)((u_int32_t)(0xe0000000)))))) {
   if (!in_hasmulti(&sc->sc_peer, &sc->sc_ac.ac_if)) {
    struct in_multi **imm =
        sc->sc_imo.imo_membership;
    u_int16_t maxmem =
        sc->sc_imo.imo_max_memberships;
    __builtin_memset((&sc->sc_imo), (0), (sizeof(sc->sc_imo)));
    sc->sc_imo.imo_membership = imm;
    sc->sc_imo.imo_max_memberships = maxmem;
    if (sc->sc_ac.ac_if.if_carp_ptr.carp_d != ((void *)0) && sc->sc_naddrs > 0)
     carp_join_multicast(sc);
   }
  }
  if (sc->sc_naddrs == 0 && sc->sc_naddrs6 == 0) {
   sc->sc_ac.ac_if.if_flags &= ~0x1;
   carp_set_state_all(sc, INIT);
  } else
   carp_hmac_prepare(sc);
 }
 carp_setrun_all(sc, 0);
}
int
carp_set_addr(struct carp_softc *sc, struct sockaddr_in *sin)
{
 struct in_addr *in = &sin->sin_addr;
 int error;
 ((sc->sc_ac.ac_if.if_carp_ptr.carp_d != ((void *)0)) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../netinet/ip_carp.c", 1906, "sc->sc_carpdev != NULL"));
 if (in->s_addr == ((u_int32_t) ((__uint32_t)((u_int32_t)(0x00000000))))) {
  carp_setrun_all(sc, 0);
  return (0);
 }
 if (sc->sc_naddrs == 0 && (error = carp_join_multicast(sc)) != 0)
  return (error);
 carp_set_state_all(sc, INIT);
 return (0);
}
int
carp_join_multicast(struct carp_softc *sc)
{
 struct ip_moptions *imo = &sc->sc_imo;
 struct in_multi *imm;
 struct in_addr addr;
 if (!(((u_int32_t)(sc->sc_peer.s_addr) & ((u_int32_t) ((__uint32_t)((u_int32_t)(0xf0000000))))) == ((u_int32_t) ((__uint32_t)((u_int32_t)(0xe0000000))))))
  return (0);
 addr.s_addr = sc->sc_peer.s_addr;
 if ((imm = in_addmulti(&addr, &sc->sc_ac.ac_if)) == ((void *)0))
  return (55);
 imo->imo_membership[0] = imm;
 imo->imo_num_memberships = 1;
 imo->imo_ifidx = sc->sc_ac.ac_if.if_index;
 imo->imo_ttl = 255;
 imo->imo_loop = 0;
 return (0);
}
int
carp_set_addr6(struct carp_softc *sc, struct sockaddr_in6 *sin6)
{
 int error;
 ((sc->sc_ac.ac_if.if_carp_ptr.carp_d != ((void *)0)) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../netinet/ip_carp.c", 1951, "sc->sc_carpdev != NULL"));
 if (((*(const u_int32_t *)(const void *)(&(&sin6->sin6_addr)->__u6_addr.__u6_addr8[0]) == 0) && (*(const u_int32_t *)(const void *)(&(&sin6->sin6_addr)->__u6_addr.__u6_addr8[4]) == 0) && (*(const u_int32_t *)(const void *)(&(&sin6->sin6_addr)->__u6_addr.__u6_addr8[8]) == 0) && (*(const u_int32_t *)(const void *)(&(&sin6->sin6_addr)->__u6_addr.__u6_addr8[12]) == 0))) {
  carp_setrun_all(sc, 0);
  return (0);
 }
 if (sc->sc_naddrs6 == 0 && (error = carp_join_multicast6(sc)) != 0)
  return (error);
 carp_set_state_all(sc, INIT);
 return (0);
}
int
carp_join_multicast6(struct carp_softc *sc)
{
 struct in6_multi_mship *imm, *imm2;
 struct ip6_moptions *im6o = &sc->sc_im6o;
 struct sockaddr_in6 addr6;
 int error;
 __builtin_memset((&addr6), (0), (sizeof(addr6)));
 addr6.sin6_family = 24;
 addr6.sin6_len = sizeof(addr6);
 addr6.sin6_addr.__u6_addr.__u6_addr16[0] = ((__uint16_t)(0xff02));
 addr6.sin6_addr.__u6_addr.__u6_addr16[1] = ((__uint16_t)(sc->sc_ac.ac_if.if_index));
 addr6.sin6_addr.__u6_addr.__u6_addr8[15] = 0x12;
 if ((imm = in6_joingroup(&sc->sc_ac.ac_if,
     &addr6.sin6_addr, &error)) == ((void *)0)) {
  return (error);
 }
 __builtin_memset((&addr6.sin6_addr), (0), (sizeof(addr6.sin6_addr)));
 addr6.sin6_addr.__u6_addr.__u6_addr16[0] = ((__uint16_t)(0xff02));
 addr6.sin6_addr.__u6_addr.__u6_addr16[1] = ((__uint16_t)(sc->sc_ac.ac_if.if_index));
 addr6.sin6_addr.__u6_addr.__u6_addr32[1] = 0;
 addr6.sin6_addr.__u6_addr.__u6_addr32[2] = ((__uint32_t)(1));
 addr6.sin6_addr.__u6_addr.__u6_addr32[3] = 0;
 addr6.sin6_addr.__u6_addr.__u6_addr8[12] = 0xff;
 if ((imm2 = in6_joingroup(&sc->sc_ac.ac_if,
     &addr6.sin6_addr, &error)) == ((void *)0)) {
  in6_leavegroup(imm);
  return (error);
 }
 im6o->im6o_ifidx = sc->sc_ac.ac_if.if_index;
 if (imm)
  do { if (((imm)->i6mm_chain.le_next = (&im6o->im6o_memberships)->lh_first) != ((void *)0)) (&im6o->im6o_memberships)->lh_first->i6mm_chain.le_prev = &(imm)->i6mm_chain.le_next; (&im6o->im6o_memberships)->lh_first = (imm); (imm)->i6mm_chain.le_prev = &(&im6o->im6o_memberships)->lh_first; } while (0);
 if (imm2)
  do { if (((imm2)->i6mm_chain.le_next = (&im6o->im6o_memberships)->lh_first) != ((void *)0)) (&im6o->im6o_memberships)->lh_first->i6mm_chain.le_prev = &(imm2)->i6mm_chain.le_next; (&im6o->im6o_memberships)->lh_first = (imm2); (imm2)->i6mm_chain.le_prev = &(&im6o->im6o_memberships)->lh_first; } while (0);
 return (0);
}
int
carp_ioctl(struct ifnet *ifp, u_long cmd, caddr_t addr)
{
 struct proc *p = (__curcpu->ci_self)->ci_curproc;
 struct carp_softc *sc = ifp->if_softc;
 struct carp_vhost_entry *vhe;
 struct carpreq carpr;
 struct ifaddr *ifa = (struct ifaddr *)addr;
 struct ifreq *ifr = (struct ifreq *)addr;
 struct ifnet *ifp0 = sc->sc_ac.ac_if.if_carp_ptr.carp_d;
 int i, error = 0;
 switch (cmd) {
 case ((unsigned long)0x80000000 | ((sizeof(struct ifreq) & 0x1fff) << 16) | ((('i')) << 8) | ((12))):
  if (ifp0 == ((void *)0))
   return (22);
  switch (ifa->ifa_addr->sa_family) {
  case 2:
   sc->sc_ac.ac_if.if_flags |= 0x1;
   error = carp_set_addr(sc, satosin(ifa->ifa_addr));
   break;
  case 24:
   sc->sc_ac.ac_if.if_flags |= 0x1;
   error = carp_set_addr6(sc, satosin6(ifa->ifa_addr));
   break;
  default:
   error = 47;
   break;
  }
  break;
 case ((unsigned long)0x80000000 | ((sizeof(struct ifreq) & 0x1fff) << 16) | ((('i')) << 8) | ((16))):
  ((_kernel_lock_held()) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../netinet/ip_carp.c", 2048, "_kernel_lock_held()"));
  vhe = srp_get_locked(&(&sc->carp_vhosts)->sl_head);
  if (vhe->state != INIT && !(ifr->ifr_ifru.ifru_flags & 0x1)) {
   carp_del_all_timeouts(sc);
   sc->sc_ac.ac_if.if_flags |= 0x1;
   sc->sc_bow_out = 1;
   carp_vhe_send_ad_all(sc);
   sc->sc_bow_out = 0;
   sc->sc_ac.ac_if.if_flags &= ~0x1;
   carp_set_state_all(sc, INIT);
   carp_setrun_all(sc, 0);
  } else if (vhe->state == INIT && (ifr->ifr_ifru.ifru_flags & 0x1)) {
   sc->sc_ac.ac_if.if_flags |= 0x1;
   carp_setrun_all(sc, 0);
  }
  break;
 case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct ifreq) & 0x1fff) << 16) | ((('i')) << 8) | ((245))):
  ((_kernel_lock_held()) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../netinet/ip_carp.c", 2069, "_kernel_lock_held()"));
  vhe = srp_get_locked(&(&sc->carp_vhosts)->sl_head);
  if ((error = suser(p, 0)) != 0)
   break;
  if ((error = copyin(ifr->ifr_ifru.ifru_data, &carpr, sizeof carpr)))
   break;
  error = 1;
  if (carpr.carpr_carpdev[0] != '\0' &&
      (ifp0 = ifunit(carpr.carpr_carpdev)) == ((void *)0))
   return (22);
  if (carpr.carpr_peer.s_addr == 0)
   sc->sc_peer.s_addr = ((u_int32_t) ((__uint32_t)((u_int32_t)(0xe0000012))));
  else
   sc->sc_peer.s_addr = carpr.carpr_peer.s_addr;
  if (ifp0 != sc->sc_ac.ac_if.if_carp_ptr.carp_d) {
   if ((error = carp_set_ifp(sc, ifp0)))
    return (error);
  }
  if (vhe->state != INIT && carpr.carpr_state != vhe->state) {
   switch (carpr.carpr_state) {
   case BACKUP:
    timeout_del(&vhe->ad_tmo);
    carp_set_state_all(sc, BACKUP);
    carp_setrun_all(sc, 0);
    break;
   case MASTER:
    ((_kernel_lock_held()) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../netinet/ip_carp.c", 2095, "_kernel_lock_held()"));
    for ((vhe) = srp_get_locked(&(&sc->carp_vhosts)->sl_head); (vhe) != ((void *)0); (vhe) = srp_get_locked(&((vhe))->vhost_entries.se_next))
     carp_master_down(vhe);
    break;
   default:
    break;
   }
  }
  if ((error = carp_vhids_ioctl(sc, &carpr)))
   return (error);
  if (carpr.carpr_advbase >= 0) {
   if (carpr.carpr_advbase > 255) {
    error = 22;
    break;
   }
   sc->sc_advbase = carpr.carpr_advbase;
   error--;
  }
  if (__builtin_memcmp((sc->sc_advskews), (carpr.carpr_advskews), (sizeof(sc->sc_advskews)))) {
   i = 0;
   ((_kernel_lock_held()) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../netinet/ip_carp.c", 2118, "_kernel_lock_held()"));
   for ((vhe) = srp_get_locked(&(&sc->carp_vhosts)->sl_head); (vhe) != ((void *)0); (vhe) = srp_get_locked(&((vhe))->vhost_entries.se_next))
    vhe->advskew = carpr.carpr_advskews[i++];
   __builtin_bcopy((carpr.carpr_advskews), (sc->sc_advskews), (sizeof(sc->sc_advskews)));
  }
  if (sc->sc_balancing != carpr.carpr_balancing) {
   if (carpr.carpr_balancing > 3) {
    error = 22;
    break;
   }
   sc->sc_balancing = carpr.carpr_balancing;
   carp_set_enaddr(sc);
   carp_update_lsmask(sc);
  }
  __builtin_bcopy((carpr.carpr_key), (sc->sc_key), (sizeof(sc->sc_key)));
  if (error > 0)
   error = 22;
  else {
   error = 0;
   carp_hmac_prepare(sc);
   carp_setrun_all(sc, 0);
  }
  break;
 case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct ifreq) & 0x1fff) << 16) | ((('i')) << 8) | ((246))):
  __builtin_memset((&carpr), (0), (sizeof(carpr)));
  if (ifp0 != ((void *)0))
   strlcpy(carpr.carpr_carpdev, ifp0->if_xname, 16);
  i = 0;
  ((_kernel_lock_held()) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../netinet/ip_carp.c", 2149, "_kernel_lock_held()"));
  for ((vhe) = srp_get_locked(&(&sc->carp_vhosts)->sl_head); (vhe) != ((void *)0); (vhe) = srp_get_locked(&((vhe))->vhost_entries.se_next)) {
   carpr.carpr_vhids[i] = vhe->vhid;
   carpr.carpr_advskews[i] = vhe->advskew;
   carpr.carpr_states[i] = vhe->state;
   i++;
  }
  carpr.carpr_advbase = sc->sc_advbase;
  carpr.carpr_balancing = sc->sc_balancing;
  if (suser(p, 0) == 0)
   __builtin_bcopy((sc->sc_key), (carpr.carpr_key), (sizeof(carpr.carpr_key)));
  carpr.carpr_peer.s_addr = sc->sc_peer.s_addr;
  error = copyout(&carpr, ifr->ifr_ifru.ifru_data, sizeof(carpr));
  break;
 case ((unsigned long)0x80000000 | ((sizeof(struct ifreq) & 0x1fff) << 16) | ((('i')) << 8) | ((49))):
  error = carp_ether_addmulti(sc, ifr);
  break;
 case ((unsigned long)0x80000000 | ((sizeof(struct ifreq) & 0x1fff) << 16) | ((('i')) << 8) | ((50))):
  error = carp_ether_delmulti(sc, ifr);
  break;
 case ((unsigned long)0x80000000 | ((sizeof(struct ifgroupreq) & 0x1fff) << 16) | ((('i')) << 8) | ((135))):
 case ((unsigned long)0x80000000 | ((sizeof(struct ifgroupreq) & 0x1fff) << 16) | ((('i')) << 8) | ((137))):
  if (sc->sc_demote_cnt)
   carp_ifgroup_ioctl(ifp, cmd, addr);
  break;
 case ((unsigned long)0x80000000 | ((sizeof(struct ifgroupreq) & 0x1fff) << 16) | ((('i')) << 8) | ((140))):
  carp_ifgattr_ioctl(ifp, cmd, addr);
  break;
 default:
  error = 25;
 }
 if (__builtin_memcmp((sc->sc_ac.ac_enaddr), (sc->sc_curlladdr), (6)) != 0)
  carp_set_enaddr(sc);
 return (error);
}
int
carp_check_dup_vhids(struct carp_softc *sc, struct carp_if *cif,
    struct carpreq *carpr)
{
 struct carp_softc *vr;
 struct carp_vhost_entry *vhe, *vhe0;
 int i;
 ((_kernel_lock_held()) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../netinet/ip_carp.c", 2197, "_kernel_lock_held()"));
 for ((vr) = srp_get_locked(&(&cif->vhif_vrs)->sl_head); (vr) != ((void *)0); (vr) = srp_get_locked(&((vr))->sc_list.se_next)) {
  if (vr == sc)
   continue;
  for ((vhe) = srp_get_locked(&(&vr->carp_vhosts)->sl_head); (vhe) != ((void *)0); (vhe) = srp_get_locked(&((vhe))->vhost_entries.se_next)) {
   if (carpr) {
    for (i = 0; carpr->carpr_vhids[i]; i++) {
     if (vhe->vhid == carpr->carpr_vhids[i])
      return (22);
    }
   }
   for ((vhe0) = srp_get_locked(&(&sc->carp_vhosts)->sl_head); (vhe0) != ((void *)0); (vhe0) = srp_get_locked(&((vhe0))->vhost_entries.se_next)) {
    if (vhe->vhid == vhe0->vhid)
     return (22);
   }
  }
 }
 return (0);
}
int
carp_vhids_ioctl(struct carp_softc *sc, struct carpreq *carpr)
{
 int i, j;
 u_int8_t taken_vhids[256];
 if (carpr->carpr_vhids[0] == 0 ||
     !__builtin_memcmp((sc->sc_vhids), (carpr->carpr_vhids), (sizeof(sc->sc_vhids))))
  return (0);
 __builtin_memset((taken_vhids), (0), (sizeof(taken_vhids)));
 for (i = 0; carpr->carpr_vhids[i]; i++) {
  if (taken_vhids[carpr->carpr_vhids[i]])
   return (22);
  taken_vhids[carpr->carpr_vhids[i]] = 1;
  if (sc->sc_ac.ac_if.if_carp_ptr.carp_d) {
   struct carp_if *cif;
   cif = (struct carp_if *)sc->sc_ac.ac_if.if_carp_ptr.carp_d->if_carp_ptr.carp_s;
   if (carp_check_dup_vhids(sc, cif, carpr))
    return (22);
  }
  if (carpr->carpr_advskews[i] >= 255)
   return (22);
 }
 if (i <= 1)
  carpr->carpr_balancing = 0;
 else if (carpr->carpr_balancing == 0 &&
     sc->sc_balancing == 0)
  carpr->carpr_balancing = 1;
 carp_del_all_timeouts(sc);
 carp_destroy_vhosts(sc);
 __builtin_memset((sc->sc_vhids), (0), (sizeof(sc->sc_vhids)));
 for (j = 1; j <= 255; j++) {
  for (i = 0; carpr->carpr_vhids[i]; i++) {
   if (carpr->carpr_vhids[i] != j)
    continue;
   if (carp_new_vhost(sc, carpr->carpr_vhids[i],
       carpr->carpr_advskews[i]))
    return (12);
   sc->sc_vhids[i] = carpr->carpr_vhids[i];
   sc->sc_advskews[i] = carpr->carpr_advskews[i];
  }
 }
 carp_set_enaddr(sc);
 carp_set_state_all(sc, INIT);
 return (0);
}
void
carp_ifgroup_ioctl(struct ifnet *ifp, u_long cmd, caddr_t addr)
{
 struct ifgroupreq *ifgr = (struct ifgroupreq *)addr;
 struct ifg_list *ifgl;
 int *dm, adj;
 if (!strcmp(ifgr->ifgr_ifgru.ifgru_group, "all"))
  return;
 adj = ((struct carp_softc *)ifp->if_softc)->sc_demote_cnt;
 if (cmd == ((unsigned long)0x80000000 | ((sizeof(struct ifgroupreq) & 0x1fff) << 16) | ((('i')) << 8) | ((137))))
  adj = adj * -1;
 for((ifgl) = ((&ifp->if_groups)->tqh_first); (ifgl) != ((void *)0); (ifgl) = ((ifgl)->ifgl_next.tqe_next))
  if (!strcmp(ifgl->ifgl_group->ifg_group, ifgr->ifgr_ifgru.ifgru_group)) {
   dm = &ifgl->ifgl_group->ifg_carp_demoted;
   if (*dm + adj >= 0)
    *dm += adj;
   else
    *dm = 0;
  }
}
void
carp_ifgattr_ioctl(struct ifnet *ifp, u_long cmd, caddr_t addr)
{
 struct ifgroupreq *ifgr = (struct ifgroupreq *)addr;
 struct carp_softc *sc = ifp->if_softc;
 if (ifgr->ifgr_ifgru.ifgru_attrib.ifg_carp_demoted > 0 && (sc->sc_ac.ac_if.if_flags &
     (0x1|0x40)) == (0x1|0x40))
  carp_vhe_send_ad_all(sc);
}
void
carp_start(struct ifnet *ifp)
{
 struct carp_softc *sc = ifp->if_softc;
 struct mbuf *m;
 for (;;) {
  do { (m) = ifq_dequeue(&ifp->if_snd); } while ( 0);
  if (m == ((void *)0))
   break;
  if (ifp->if_bpf)
   bpf_mtap_ether(ifp->if_bpf, m, (1<<1));
  if ((ifp->if_carp_ptr.carp_d->if_flags & (0x1|0x40)) !=
      (0x1|0x40)) {
   ifp->if_data.ifi_oerrors++;
   m_freem(m);
   continue;
  }
  if (sc->sc_balancing == 1 ||
      sc->sc_balancing == 2) {
   struct ether_header *eh;
   uint8_t *esrc;
   eh = ((struct ether_header *)((m)->m_hdr.mh_data));
   esrc = ((struct arpcom*)ifp->if_carp_ptr.carp_d)->ac_enaddr;
   __builtin_memcpy((eh->ether_shost), (esrc), (sizeof(eh->ether_shost)));
  }
  if (if_enqueue(ifp->if_carp_ptr.carp_d, m)) {
   ifp->if_data.ifi_oerrors++;
   continue;
  }
  ifp->if_data.ifi_opackets++;
 }
}
int
carp_output(struct ifnet *ifp, struct mbuf *m, struct sockaddr *sa,
    struct rtentry *rt)
{
 struct carp_softc *sc = ((struct carp_softc *)ifp->if_softc);
 struct carp_vhost_entry *vhe;
 struct srp_ref sr;
 int ismaster;
 ((sc->sc_ac.ac_if.if_carp_ptr.carp_d != ((void *)0)) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../netinet/ip_carp.c", 2362, "sc->sc_carpdev != NULL"));
 if (sc->cur_vhe == ((void *)0)) {
  vhe = srp_enter((&sr), &(&sc->carp_vhosts)->sl_head);
  ismaster = (vhe->state == MASTER);
  srp_leave((&sr));
 } else {
  ismaster = (sc->cur_vhe->state == MASTER);
 }
 if ((sc->sc_balancing == 0 && !ismaster)) {
  m_freem(m);
  return (51);
 }
 return (ether_output(ifp, m, sa, rt));
}
void
carp_set_state_all(struct carp_softc *sc, int state)
{
 struct carp_vhost_entry *vhe;
 ((_kernel_lock_held()) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../netinet/ip_carp.c", 2385, "_kernel_lock_held()"));
 for ((vhe) = srp_get_locked(&(&sc->carp_vhosts)->sl_head); (vhe) != ((void *)0); (vhe) = srp_get_locked(&((vhe))->vhost_entries.se_next)) {
  if (vhe->state == state)
   continue;
  carp_set_state(vhe, state);
 }
}
void
carp_set_state(struct carp_vhost_entry *vhe, int state)
{
 struct carp_softc *sc = vhe->parent_sc;
 static const char *carp_states[] = { "INIT", "BACKUP", "MASTER" };
 int loglevel;
 struct carp_vhost_entry *vhe0;
 ((vhe->state != state) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../netinet/ip_carp.c", 2403, "vhe->state != state"));
 if (vhe->state == INIT || state == INIT)
  loglevel = 4;
 else
  loglevel = 2;
 if (sc->sc_vhe_count > 1)
  do { if (carp_opts[3] >= loglevel) { if (sc) log(loglevel, "%s: ", (sc)->sc_ac.ac_if.if_xname); else log(loglevel, "carp: "); addlog ("state transition (vhid %d): %s -> %s", vhe->vhid, carp_states[vhe->state], carp_states[state]); addlog("\n"); } } while (0);
 else
  do { if (carp_opts[3] >= loglevel) { if (sc) log(loglevel, "%s: ", (sc)->sc_ac.ac_if.if_xname); else log(loglevel, "carp: "); addlog ("state transition: %s -> %s", carp_states[vhe->state], carp_states[state]); addlog("\n"); } } while (0);
 vhe->state = state;
 carp_update_lsmask(sc);
 ((_kernel_lock_held()) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../netinet/ip_carp.c", 2422, "_kernel_lock_held()"));
 sc->sc_ac.ac_if.if_data.ifi_link_state = 1;
 for ((vhe0) = srp_get_locked(&(&sc->carp_vhosts)->sl_head); (vhe0) != ((void *)0); (vhe0) = srp_get_locked(&((vhe0))->vhost_entries.se_next)) {
  if (vhe0->state == MASTER) {
   sc->sc_ac.ac_if.if_data.ifi_link_state = 4;
   break;
  } else if (vhe0->state == BACKUP) {
   sc->sc_ac.ac_if.if_data.ifi_link_state = 2;
  }
 }
 if_link_state_change(&sc->sc_ac.ac_if);
}
void
carp_group_demote_adj(struct ifnet *ifp, int adj, char *reason)
{
 struct ifg_list *ifgl;
 int *dm, need_ad;
 struct carp_softc *nil = ((void *)0);
 if (ifp->if_data.ifi_type == 0xf7) {
  dm = &((struct carp_softc *)ifp->if_softc)->sc_demote_cnt;
  if (*dm + adj >= 0)
   *dm += adj;
  else
   *dm = 0;
 }
 need_ad = 0;
 for((ifgl) = ((&ifp->if_groups)->tqh_first); (ifgl) != ((void *)0); (ifgl) = ((ifgl)->ifgl_next.tqe_next)) {
  if (!strcmp(ifgl->ifgl_group->ifg_group, "all"))
   continue;
  dm = &ifgl->ifgl_group->ifg_carp_demoted;
  if (*dm + adj >= 0)
   *dm += adj;
  else
   *dm = 0;
  if (adj > 0 && *dm == 1)
   need_ad = 1;
  do { if (carp_opts[3] >= 3) { if (nil) log(3, "%s: ", (nil)->sc_ac.ac_if.if_xname); else log(3, "carp: "); addlog ("%s demoted group %s by %d to %d (%s)", ifp->if_xname, ifgl->ifgl_group->ifg_group, adj, *dm, reason); addlog("\n"); } } while (0);
 }
 if (need_ad)
  carp_send_ad_all();
}
int
carp_group_demote_count(struct carp_softc *sc)
{
 struct ifg_list *ifgl;
 int count = 0;
 for((ifgl) = ((&sc->sc_ac.ac_if.if_groups)->tqh_first); (ifgl) != ((void *)0); (ifgl) = ((ifgl)->ifgl_next.tqe_next))
  count += ifgl->ifgl_group->ifg_carp_demoted;
 if (count == 0 && sc->sc_demote_cnt)
  count = sc->sc_demote_cnt;
 return (count > 255 ? 255 : count);
}
void
carp_carpdev_state(void *v)
{
 struct carp_if *cif;
 struct carp_softc *sc;
 struct ifnet *ifp0 = v;
 if (ifp0->if_data.ifi_type == 0xf7)
  return;
 cif = (struct carp_if *)ifp0->if_carp_ptr.carp_s;
 ((_kernel_lock_held()) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../netinet/ip_carp.c", 2504, "_kernel_lock_held()"));
 for ((sc) = srp_get_locked(&(&cif->vhif_vrs)->sl_head); (sc) != ((void *)0); (sc) = srp_get_locked(&((sc))->sc_list.se_next)) {
  int suppressed = sc->sc_suppress;
  if (sc->sc_ac.ac_if.if_carp_ptr.carp_d->if_data.ifi_link_state == 2 ||
      !(sc->sc_ac.ac_if.if_carp_ptr.carp_d->if_flags & 0x1)) {
   sc->sc_ac.ac_if.if_flags &= ~0x40;
   carp_del_all_timeouts(sc);
   carp_set_state_all(sc, INIT);
   sc->sc_suppress = 1;
   carp_setrun_all(sc, 0);
   if (!suppressed)
    carp_group_demote_adj(&sc->sc_ac.ac_if, 1, "carpdev");
  } else if (suppressed) {
   carp_set_state_all(sc, INIT);
   sc->sc_suppress = 0;
   carp_setrun_all(sc, 0);
   carp_group_demote_adj(&sc->sc_ac.ac_if, -1, "carpdev");
  }
 }
}
int
carp_ether_addmulti(struct carp_softc *sc, struct ifreq *ifr)
{
 struct ifnet *ifp0;
 struct carp_mc_entry *mc;
 u_int8_t addrlo[6], addrhi[6];
 int error;
 ifp0 = sc->sc_ac.ac_if.if_carp_ptr.carp_d;
 if (ifp0 == ((void *)0))
  return (22);
 error = ether_addmulti(ifr, (struct arpcom *)&sc->sc_ac);
 if (error != 52)
  return (error);
 mc = malloc(sizeof(*mc), 2, 0x0002);
 if (mc == ((void *)0)) {
  error = 12;
  goto alloc_failed;
 }
 (void)ether_multiaddr(&ifr->ifr_ifru.ifru_addr, addrlo, addrhi);
 do { for ((mc->mc_u.mcu_enm) = ((&(&sc->sc_ac)->ac_multiaddrs)->lh_first); (mc->mc_u.mcu_enm) != ((void *)0) && (__builtin_memcmp(((mc->mc_u.mcu_enm)->enm_addrlo), ((addrlo)), (6)) != 0 || __builtin_memcmp(((mc->mc_u.mcu_enm)->enm_addrhi), ((addrhi)), (6)) != 0); (mc->mc_u.mcu_enm) = (((mc->mc_u.mcu_enm))->enm_list.le_next)); } while ( 0);
 __builtin_memcpy((&mc->mc_addr), (&ifr->ifr_ifru.ifru_addr), (ifr->ifr_ifru.ifru_addr.sa_len));
 do { if (((mc)->mc_entries.le_next = (&sc->carp_mc_listhead)->lh_first) != ((void *)0)) (&sc->carp_mc_listhead)->lh_first->mc_entries.le_prev = &(mc)->mc_entries.le_next; (&sc->carp_mc_listhead)->lh_first = (mc); (mc)->mc_entries.le_prev = &(&sc->carp_mc_listhead)->lh_first; } while (0);
 error = (*ifp0->if_ioctl)(ifp0, ((unsigned long)0x80000000 | ((sizeof(struct ifreq) & 0x1fff) << 16) | ((('i')) << 8) | ((49))), (caddr_t)ifr);
 if (error != 0)
  goto ioctl_failed;
 return (error);
 ioctl_failed:
 do { if ((mc)->mc_entries.le_next != ((void *)0)) (mc)->mc_entries.le_next->mc_entries.le_prev = (mc)->mc_entries.le_prev; *(mc)->mc_entries.le_prev = (mc)->mc_entries.le_next; ((mc)->mc_entries.le_prev) = ((void *)-1); ((mc)->mc_entries.le_next) = ((void *)-1); } while (0);
 free(mc, 2, sizeof(*mc));
 alloc_failed:
 (void)ether_delmulti(ifr, (struct arpcom *)&sc->sc_ac);
 return (error);
}
int
carp_ether_delmulti(struct carp_softc *sc, struct ifreq *ifr)
{
 struct ifnet *ifp0;
 struct ether_multi *enm;
 struct carp_mc_entry *mc;
 u_int8_t addrlo[6], addrhi[6];
 int error;
 ifp0 = sc->sc_ac.ac_if.if_carp_ptr.carp_d;
 if (ifp0 == ((void *)0))
  return (22);
 if ((error = ether_multiaddr(&ifr->ifr_ifru.ifru_addr, addrlo, addrhi)) != 0)
  return (error);
 do { for ((enm) = ((&(&sc->sc_ac)->ac_multiaddrs)->lh_first); (enm) != ((void *)0) && (__builtin_memcmp(((enm)->enm_addrlo), ((addrlo)), (6)) != 0 || __builtin_memcmp(((enm)->enm_addrhi), ((addrhi)), (6)) != 0); (enm) = (((enm))->enm_list.le_next)); } while ( 0);
 if (enm == ((void *)0))
  return (22);
 for((mc) = ((&sc->carp_mc_listhead)->lh_first); (mc)!= ((void *)0); (mc) = ((mc)->mc_entries.le_next))
  if (mc->mc_u.mcu_enm == enm)
   break;
 if (mc == ((void *)0))
  return (22);
 error = ether_delmulti(ifr, (struct arpcom *)&sc->sc_ac);
 if (error != 52)
  return (error);
 error = (*ifp0->if_ioctl)(ifp0, ((unsigned long)0x80000000 | ((sizeof(struct ifreq) & 0x1fff) << 16) | ((('i')) << 8) | ((50))), (caddr_t)ifr);
 if (error == 0) {
  do { if ((mc)->mc_entries.le_next != ((void *)0)) (mc)->mc_entries.le_next->mc_entries.le_prev = (mc)->mc_entries.le_prev; *(mc)->mc_entries.le_prev = (mc)->mc_entries.le_next; ((mc)->mc_entries.le_prev) = ((void *)-1); ((mc)->mc_entries.le_next) = ((void *)-1); } while (0);
  free(mc, 2, sizeof(*mc));
 } else
  (void)ether_addmulti(ifr, (struct arpcom *)&sc->sc_ac);
 return (error);
}
void
carp_ether_purgemulti(struct carp_softc *sc)
{
 struct ifnet *ifp0 = sc->sc_ac.ac_if.if_carp_ptr.carp_d;
 struct carp_mc_entry *mc;
 union {
  struct ifreq ifreq;
  struct {
   char ifr_name[16];
   struct sockaddr_storage ifr_ss;
  } ifreq_storage;
 } u;
 struct ifreq *ifr = &u.ifreq;
 if (ifp0 == ((void *)0))
  return;
 __builtin_memcpy((ifr->ifr_name), (ifp0->if_xname), (16));
 while ((mc = ((&sc->carp_mc_listhead)->lh_first)) != ((void *)0)) {
  __builtin_memcpy((&ifr->ifr_ifru.ifru_addr), (&mc->mc_addr), (mc->mc_addr.ss_len));
  (void)(*ifp0->if_ioctl)(ifp0, ((unsigned long)0x80000000 | ((sizeof(struct ifreq) & 0x1fff) << 16) | ((('i')) << 8) | ((50))), (caddr_t)ifr);
  do { if ((mc)->mc_entries.le_next != ((void *)0)) (mc)->mc_entries.le_next->mc_entries.le_prev = (mc)->mc_entries.le_prev; *(mc)->mc_entries.le_prev = (mc)->mc_entries.le_next; ((mc)->mc_entries.le_prev) = ((void *)-1); ((mc)->mc_entries.le_next) = ((void *)-1); } while (0);
  free(mc, 2, sizeof(*mc));
 }
}
void
carp_vh_ref(void *null, void *v)
{
 struct carp_vhost_entry *vhe = v;
 refcnt_take(&vhe->vhost_refcnt);
}
void
carp_vh_unref(void *null, void *v)
{
 struct carp_vhost_entry *vhe = v;
 if (refcnt_rele(&vhe->vhost_refcnt)) {
  carp_sc_unref(((void *)0), vhe->parent_sc);
  free(vhe, 2, sizeof(*vhe));
 }
}
void
carp_sc_ref(void *null, void *s)
{
 struct carp_softc *sc = s;
 refcnt_take(&sc->sc_refcnt);
}
void
carp_sc_unref(void *null, void *s)
{
 struct carp_softc *sc = s;
 refcnt_rele_wake(&sc->sc_refcnt);
}
