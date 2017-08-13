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
struct mpi_sge {
 u_int32_t sg_hdr;
 u_int32_t sg_addr_lo;
 u_int32_t sg_addr_hi;
} __attribute__((__packed__)) __attribute__((__aligned__(4)));
struct mpi_fw_tce {
 u_int8_t reserved1;
 u_int8_t context_size;
 u_int8_t details_length;
 u_int8_t flags;
 u_int32_t reserved2;
 u_int32_t image_offset;
 u_int32_t image_size;
} __attribute__((__packed__)) __attribute__((__aligned__(4)));
struct mpi_msg_request {
 u_int8_t reserved1;
 u_int8_t reserved2;
 u_int8_t chain_offset;
 u_int8_t function;
 u_int8_t reserved3;
 u_int8_t reserved4;
 u_int8_t reserved5;
 u_int8_t msg_flags;
 u_int32_t msg_context;
} __attribute__((__packed__)) __attribute__((__aligned__(4)));
struct mpi_msg_reply {
 u_int8_t reserved1;
 u_int8_t reserved2;
 u_int8_t msg_length;
 u_int8_t function;
 u_int8_t reserved3;
 u_int8_t reserved4;
 u_int8_t reserved5;
 u_int8_t msg_flags;
 u_int32_t msg_context;
 u_int8_t reserved6;
 u_int8_t reserved7;
 u_int16_t ioc_status;
 u_int32_t ioc_loginfo;
} __attribute__((__packed__)) __attribute__((__aligned__(4)));
struct mpi_msg_iocinit_request {
 u_int8_t whoinit;
 u_int8_t reserved1;
 u_int8_t chain_offset;
 u_int8_t function;
 u_int8_t flags;
 u_int8_t max_devices;
 u_int8_t max_buses;
 u_int8_t msg_flags;
 u_int32_t msg_context;
 u_int16_t reply_frame_size;
 u_int16_t reserved2;
 u_int32_t host_mfa_hi_addr;
 u_int32_t sense_buffer_hi_addr;
 u_int32_t reply_fifo_host_signalling_addr;
 struct mpi_sge host_page_buffer_sge;
 u_int8_t msg_version_min;
 u_int8_t msg_version_maj;
 u_int8_t hdr_version_unit;
 u_int8_t hdr_version_dev;
} __attribute__((__packed__)) __attribute__((__aligned__(4)));
struct mpi_msg_iocinit_reply {
 u_int8_t whoinit;
 u_int8_t reserved1;
 u_int8_t msg_length;
 u_int8_t function;
 u_int8_t flags;
 u_int8_t max_devices;
 u_int8_t max_buses;
 u_int8_t msg_flags;
 u_int32_t msg_context;
 u_int16_t reserved2;
 u_int16_t ioc_status;
 u_int32_t ioc_loginfo;
} __attribute__((__packed__)) __attribute__((__aligned__(4)));
struct mpi_msg_iocfacts_request {
 u_int8_t reserved1;
 u_int8_t reserved2;
 u_int8_t chain_offset;
 u_int8_t function;
 u_int8_t reserved3;
 u_int8_t reserved4;
 u_int8_t reserved5;
 u_int8_t msg_flags;
 u_int32_t msg_context;
} __attribute__((__packed__)) __attribute__((__aligned__(4)));
struct mpi_msg_iocfacts_reply {
 u_int8_t msg_version_min;
 u_int8_t msg_version_maj;
 u_int8_t msg_length;
 u_int8_t function;
 u_int8_t header_version_min;
 u_int8_t header_version_maj;
 u_int8_t ioc_number;
 u_int8_t msg_flags;
 u_int32_t msg_context;
 u_int16_t ioc_exceptions;
 u_int16_t ioc_status;
 u_int32_t ioc_loginfo;
 u_int8_t max_chain_depth;
 u_int8_t whoinit;
 u_int8_t block_size;
 u_int8_t flags;
 u_int16_t reply_queue_depth;
 u_int16_t request_frame_size;
 u_int16_t reserved1;
 u_int16_t product_id;
 u_int32_t current_host_mfa_hi_addr;
 u_int16_t global_credits;
 u_int8_t number_of_ports;
 u_int8_t event_state;
 u_int32_t current_sense_buffer_hi_addr;
 u_int16_t current_reply_frame_size;
 u_int8_t max_devices;
 u_int8_t max_buses;
 u_int32_t fw_image_size;
 u_int32_t ioc_capabilities;
 u_int8_t fw_version_dev;
 u_int8_t fw_version_unit;
 u_int8_t fw_version_min;
 u_int8_t fw_version_maj;
 u_int16_t hi_priority_queue_depth;
 u_int16_t reserved2;
 struct mpi_sge host_page_buffer_sge;
 u_int32_t reply_fifo_host_signalling_addr;
} __attribute__((__packed__)) __attribute__((__aligned__(4)));
struct mpi_msg_portfacts_request {
 u_int8_t reserved1;
 u_int8_t reserved2;
 u_int8_t chain_offset;
 u_int8_t function;
 u_int8_t reserved3;
 u_int8_t reserved4;
 u_int8_t port_number;
 u_int8_t msg_flags;
 u_int32_t msg_context;
} __attribute__((__packed__)) __attribute__((__aligned__(4)));
struct mpi_msg_portfacts_reply {
 u_int16_t reserved1;
 u_int8_t msg_length;
 u_int8_t function;
 u_int16_t reserved2;
 u_int8_t port_number;
 u_int8_t msg_flags;
 u_int32_t msg_context;
 u_int16_t reserved3;
 u_int16_t ioc_status;
 u_int32_t ioc_loginfo;
 u_int8_t reserved4;
 u_int8_t port_type;
 u_int16_t max_devices;
 u_int16_t port_scsi_id;
 u_int16_t protocol_flags;
 u_int16_t max_posted_cmd_buffers;
 u_int16_t max_persistent_ids;
 u_int16_t max_lan_buckets;
 u_int16_t reserved5;
 u_int32_t reserved6;
} __attribute__((__packed__)) __attribute__((__aligned__(4)));
struct mpi_msg_portenable_request {
 u_int16_t reserved1;
 u_int8_t chain_offset;
 u_int8_t function;
 u_int16_t reserved2;
 u_int8_t port_number;
 u_int8_t msg_flags;
 u_int32_t msg_context;
} __attribute__((__packed__)) __attribute__((__aligned__(4)));
struct mpi_msg_portenable_reply {
 u_int16_t reserved1;
 u_int8_t msg_length;
 u_int8_t function;
 u_int16_t reserved2;
 u_int8_t port_number;
 u_int8_t msg_flags;
 u_int32_t msg_context;
 u_int16_t reserved3;
 u_int16_t ioc_status;
 u_int32_t ioc_loginfo;
} __attribute__((__packed__)) __attribute__((__aligned__(4)));
struct mpi_msg_event_request {
 u_int8_t event_switch;
 u_int8_t reserved1;
 u_int8_t chain_offset;
 u_int8_t function;
 u_int8_t reserved2[3];
 u_int8_t msg_flags;
 u_int32_t msg_context;
} __attribute__((__packed__)) __attribute__((__aligned__(4)));
struct mpi_msg_event_reply {
 u_int16_t data_length;
 u_int8_t msg_length;
 u_int8_t function;
 u_int16_t reserved1;
 u_int8_t ack_required;
 u_int8_t msg_flags;
 u_int32_t msg_context;
 u_int16_t reserved2;
 u_int16_t ioc_status;
 u_int32_t ioc_loginfo;
 u_int32_t event;
 u_int32_t event_context;
} __attribute__((__packed__)) __attribute__((__aligned__(4)));
struct mpi_evt_change {
 u_int8_t event_state;
 u_int8_t reserved[3];
} __attribute__((__packed__)) __attribute__((__aligned__(4)));
struct mpi_evt_link_status_change {
 u_int8_t state;
 u_int8_t _reserved1[3];
 u_int8_t _reserved2[1];
 u_int8_t port;
 u_int8_t _reserved3[2];
} __attribute__((__packed__)) __attribute__((__aligned__(4)));
struct mpi_evt_loop_status_change {
 u_int8_t character4;
 u_int8_t character3;
 u_int8_t type;
 u_int8_t _reserved1[1];
 u_int8_t _reserved2[1];
 u_int8_t port;
 u_int8_t _reserved3[2];
} __attribute__((__packed__)) __attribute__((__aligned__(4)));
struct mpi_evt_logout {
 u_int32_t n_portid;
 u_int8_t alias_index;
 u_int8_t port;
 u_int8_t _reserved[2];
} __attribute__((__packed__)) __attribute__((__aligned__(4)));
struct mpi_evt_sas_phy {
 u_int8_t phy_num;
 u_int8_t link_rates;
 u_int16_t dev_handle;
 u_int64_t sas_addr;
} __attribute__((__packed__)) __attribute__((__aligned__(4)));
struct mpi_evt_sas_change {
 u_int8_t target;
 u_int8_t bus;
 u_int8_t reason;
 u_int8_t reserved1;
 u_int8_t asc;
 u_int8_t ascq;
 u_int16_t dev_handle;
 u_int32_t device_info;
 u_int16_t parent_dev_handle;
 u_int8_t phy_num;
 u_int8_t reserved2;
 u_int64_t sas_addr;
} __attribute__((__packed__)) __attribute__((__aligned__(4)));
struct mpi_msg_eventack_request {
 u_int16_t reserved1;
 u_int8_t chain_offset;
 u_int8_t function;
 u_int8_t reserved2[3];
 u_int8_t msg_flags;
 u_int32_t msg_context;
 u_int32_t event;
 u_int32_t event_context;
} __attribute__((__packed__)) __attribute__((__aligned__(4)));
struct mpi_msg_eventack_reply {
 u_int16_t reserved1;
 u_int8_t msg_length;
 u_int8_t function;
 u_int8_t reserved2[3];
 u_int8_t msg_flags;
 u_int32_t msg_context;
 u_int16_t reserved3;
 u_int32_t ioc_status;
 u_int32_t ioc_loginfo;
} __attribute__((__packed__)) __attribute__((__aligned__(4)));
struct mpi_msg_fwupload_request {
 u_int8_t image_type;
 u_int8_t reserved1;
 u_int8_t chain_offset;
 u_int8_t function;
 u_int8_t reserved2[3];
 u_int8_t msg_flags;
 u_int32_t msg_context;
 struct mpi_fw_tce tce;
} __attribute__((__packed__)) __attribute__((__aligned__(4)));
struct mpi_msg_fwupload_reply {
 u_int8_t image_type;
 u_int8_t reserved1;
 u_int8_t msg_length;
 u_int8_t function;
 u_int8_t reserved2[3];
 u_int8_t msg_flags;
 u_int32_t msg_context;
 u_int16_t reserved3;
 u_int16_t ioc_status;
 u_int32_t ioc_loginfo;
 u_int32_t actual_image_size;
} __attribute__((__packed__)) __attribute__((__aligned__(4)));
struct mpi_msg_scsi_io {
 u_int8_t target_id;
 u_int8_t bus;
 u_int8_t chain_offset;
 u_int8_t function;
 u_int8_t cdb_length;
 u_int8_t sense_buf_len;
 u_int8_t reserved1;
 u_int8_t msg_flags;
 u_int32_t msg_context;
 u_int16_t lun[4];
 u_int8_t reserved2;
 u_int8_t tagging;
 u_int8_t reserved3;
 u_int8_t direction;
 u_int8_t cdb[16];
 u_int32_t data_length;
 u_int32_t sense_buf_low_addr;
} __attribute__((__packed__)) __attribute__((__aligned__(4)));
struct mpi_msg_scsi_io_error {
 u_int8_t target_id;
 u_int8_t bus;
 u_int8_t msg_length;
 u_int8_t function;
 u_int8_t cdb_length;
 u_int8_t sense_buf_len;
 u_int8_t reserved1;
 u_int8_t msg_flags;
 u_int32_t msg_context;
 u_int8_t scsi_status;
 u_int8_t scsi_state;
 u_int16_t ioc_status;
 u_int32_t ioc_loginfo;
 u_int32_t transfer_count;
 u_int32_t sense_count;
 u_int32_t response_info;
 u_int16_t tag;
 u_int16_t reserved2;
} __attribute__((__packed__)) __attribute__((__aligned__(4)));
struct mpi_msg_scsi_task_request {
 u_int8_t target_id;
 u_int8_t bus;
 u_int8_t chain_offset;
 u_int8_t function;
 u_int8_t reserved1;
 u_int8_t task_type;
 u_int8_t reserved2;
 u_int8_t msg_flags;
 u_int32_t msg_context;
 u_int16_t lun[4];
 u_int32_t reserved3[7];
 u_int32_t target_msg_context;
} __attribute__((__packed__)) __attribute__((__aligned__(4)));
struct mpi_msg_scsi_task_reply {
 u_int8_t target_id;
 u_int8_t bus;
 u_int8_t msg_length;
 u_int8_t function;
 u_int8_t response_code;
 u_int8_t task_type;
 u_int8_t reserved1;
 u_int8_t msg_flags;
 u_int32_t msg_context;
 u_int16_t reserved2;
 u_int16_t ioc_status;
 u_int32_t ioc_loginfo;
 u_int32_t termination_count;
} __attribute__((__packed__)) __attribute__((__aligned__(4)));
struct mpi_msg_raid_action_request {
 u_int8_t action;
 u_int8_t _reserved1;
 u_int8_t chain_offset;
 u_int8_t function;
 u_int8_t vol_id;
 u_int8_t vol_bus;
 u_int8_t phys_disk_num;
 u_int8_t message_flags;
 u_int32_t msg_context;
 u_int32_t _reserved2;
 u_int32_t data_word;
 u_int32_t data_sge;
} __attribute__((__packed__)) __attribute__((__aligned__(4)));
struct mpi_msg_raid_action_reply {
 u_int8_t action;
 u_int8_t _reserved1;
 u_int8_t message_length;
 u_int8_t function;
 u_int8_t vol_id;
 u_int8_t vol_bus;
 u_int8_t phys_disk_num;
 u_int8_t message_flags;
 u_int32_t message_context;
 u_int16_t action_status;
 u_int16_t ioc_status;
 u_int32_t ioc_log_info;
 u_int32_t volume_status;
 u_int32_t action_data;
} __attribute__((__packed__)) __attribute__((__aligned__(4)));
struct mpi_cfg_hdr {
 u_int8_t page_version;
 u_int8_t page_length;
 u_int8_t page_number;
 u_int8_t page_type;
} __attribute__((__packed__)) __attribute__((__aligned__(4)));
struct mpi_ecfg_hdr {
 u_int8_t page_version;
 u_int8_t reserved1;
 u_int8_t page_number;
 u_int8_t page_type;
 u_int16_t ext_page_length;
 u_int8_t ext_page_type;
 u_int8_t reserved2;
} __attribute__((__packed__)) __attribute__((__aligned__(4)));
struct mpi_msg_config_request {
 u_int8_t action;
 u_int8_t reserved1;
 u_int8_t chain_offset;
 u_int8_t function;
 u_int16_t ext_page_len;
 u_int8_t ext_page_type;
 u_int8_t msg_flags;
 u_int32_t msg_context;
 u_int32_t reserved2[2];
 struct mpi_cfg_hdr config_header;
 u_int32_t page_address;
 struct mpi_sge page_buffer;
} __attribute__((__packed__)) __attribute__((__aligned__(4)));
struct mpi_msg_config_reply {
 u_int8_t action;
 u_int8_t reserved1;
 u_int8_t msg_length;
 u_int8_t function;
 u_int16_t ext_page_length;
 u_int8_t ext_page_type;
 u_int8_t msg_flags;
 u_int32_t msg_context;
 u_int16_t reserved2;
 u_int16_t ioc_status;
 u_int32_t ioc_loginfo;
 struct mpi_cfg_hdr config_header;
} __attribute__((__packed__)) __attribute__((__aligned__(4)));
struct mpi_cfg_spi_port_pg0 {
 struct mpi_cfg_hdr config_header;
 u_int8_t capabilities1;
 u_int8_t min_period;
 u_int8_t max_offset;
 u_int8_t capabilities2;
 u_int8_t signalling_type;
 u_int16_t reserved;
 u_int8_t connected_id;
} __attribute__((__packed__)) __attribute__((__aligned__(4)));
struct mpi_cfg_spi_port_pg1 {
 struct mpi_cfg_hdr config_header;
 u_int8_t port_scsi_id;
 u_int8_t reserved1;
 u_int16_t port_resp_ids;
 u_int32_t on_bus_timer_value;
 u_int8_t target_config;
 u_int8_t reserved2;
 u_int16_t id_config;
} __attribute__((__packed__)) __attribute__((__aligned__(4)));
struct mpi_cfg_spi_port_pg2 {
 struct mpi_cfg_hdr config_header;
 u_int32_t port_flags;
 u_int32_t port_settings;
 struct {
  u_int8_t timeout;
  u_int8_t sync_factor;
  u_int16_t device_flags;
 } __attribute__((__packed__)) device_settings[16];
};
struct mpi_cfg_spi_dev_pg0 {
 struct mpi_cfg_hdr config_header;
 u_int8_t neg_params1;
 u_int8_t neg_period;
 u_int8_t neg_offset;
 u_int8_t neg_params2;
 u_int32_t information;
} __attribute__((__packed__)) __attribute__((__aligned__(4)));
struct mpi_cfg_spi_dev_pg1 {
 struct mpi_cfg_hdr config_header;
 u_int8_t req_params1;
 u_int8_t req_period;
 u_int8_t req_offset;
 u_int8_t req_params2;
 u_int32_t reserved;
 u_int32_t configuration;
} __attribute__((__packed__)) __attribute__((__aligned__(4)));
struct mpi_cfg_spi_dev_pg2 {
 struct mpi_cfg_hdr config_header;
 u_int32_t domain_validation;
 u_int32_t parity_pipe_select;
 u_int32_t data_pipe_select;
} __attribute__((__packed__)) __attribute__((__aligned__(4)));
struct mpi_cfg_spi_dev_pg3 {
 struct mpi_cfg_hdr config_header;
 u_int16_t msg_reject_count;
 u_int16_t phase_error_count;
 u_int16_t parity_error_count;
 u_int16_t reserved;
} __attribute__((__packed__)) __attribute__((__aligned__(4)));
struct mpi_cfg_manufacturing_pg0 {
 struct mpi_cfg_hdr config_header;
 char chip_name[16];
 char chip_revision[8];
 char board_name[16];
 char board_assembly[16];
 char board_tracer_number[16];
} __attribute__((__packed__)) __attribute__((__aligned__(4)));
struct mpi_cfg_ioc_pg1 {
 struct mpi_cfg_hdr config_header;
 u_int32_t flags;
 u_int32_t coalescing_timeout;
 u_int8_t coalescing_depth;
 u_int8_t pci_slot_num;
 u_int8_t _reserved[2];
} __attribute__((__packed__)) __attribute__((__aligned__(4)));
struct mpi_cfg_ioc_pg2 {
 struct mpi_cfg_hdr config_header;
 u_int32_t capabilities;
 u_int8_t active_vols;
 u_int8_t max_vols;
 u_int8_t active_physdisks;
 u_int8_t max_physdisks;
} __attribute__((__packed__)) __attribute__((__aligned__(4)));
struct mpi_cfg_raid_vol {
 u_int8_t vol_id;
 u_int8_t vol_bus;
 u_int8_t vol_ioc;
 u_int8_t vol_page;
 u_int8_t vol_type;
 u_int8_t flags;
 u_int16_t reserved;
} __attribute__((__packed__)) __attribute__((__aligned__(4)));
struct mpi_cfg_ioc_pg3 {
 struct mpi_cfg_hdr config_header;
 u_int8_t no_phys_disks;
 u_int8_t reserved[3];
} __attribute__((__packed__)) __attribute__((__aligned__(4)));
struct mpi_cfg_raid_physdisk {
 u_int8_t phys_disk_id;
 u_int8_t phys_disk_bus;
 u_int8_t phys_disk_ioc;
 u_int8_t phys_disk_num;
} __attribute__((__packed__)) __attribute__((__aligned__(4)));
struct mpi_cfg_fc_port_pg0 {
 struct mpi_cfg_hdr config_header;
 u_int32_t flags;
 u_int8_t mpi_port_nr;
 u_int8_t link_type;
 u_int8_t port_state;
 u_int8_t reserved1;
 u_int32_t port_id;
 u_int64_t wwnn;
 u_int64_t wwpn;
 u_int32_t supported_service_class;
 u_int32_t supported_speeds;
 u_int32_t current_speed;
 u_int32_t max_frame_size;
 u_int64_t fabric_wwnn;
 u_int64_t fabric_wwpn;
 u_int32_t discovered_port_count;
 u_int32_t max_initiators;
 u_int8_t max_aliases_supported;
 u_int8_t max_hard_aliases_supported;
 u_int8_t num_current_aliases;
 u_int8_t reserved2;
} __attribute__((__packed__)) __attribute__((__aligned__(4)));
struct mpi_cfg_fc_port_pg1 {
 struct mpi_cfg_hdr config_header;
 u_int32_t flags;
 u_int64_t noseepromwwnn;
 u_int64_t noseepromwwpn;
 u_int8_t hard_alpa;
 u_int8_t link_config;
 u_int8_t topology_config;
 u_int8_t alt_connector;
 u_int8_t num_req_aliases;
 u_int8_t rr_tov;
 u_int8_t initiator_dev_to;
 u_int8_t initiator_lo_pend_to;
} __attribute__((__packed__)) __attribute__((__aligned__(4)));
struct mpi_cfg_fc_device_pg0 {
 struct mpi_cfg_hdr config_header;
 u_int64_t wwnn;
 u_int64_t wwpn;
 u_int32_t port_id;
 u_int8_t protocol;
 u_int8_t flags;
 u_int16_t bb_credit;
 u_int16_t max_rx_frame_size;
 u_int8_t adisc_hard_alpa;
 u_int8_t port_nr;
 u_int8_t fc_ph_low_version;
 u_int8_t fc_ph_high_version;
 u_int8_t current_target_id;
 u_int8_t current_bus;
} __attribute__((__packed__)) __attribute__((__aligned__(4)));
struct mpi_raid_settings {
 u_int16_t volume_settings;
 u_int8_t hot_spare_pool;
 u_int8_t reserved2;
} __attribute__((__packed__)) __attribute__((__aligned__(4)));
struct mpi_cfg_raid_vol_pg0 {
 struct mpi_cfg_hdr config_header;
 u_int8_t volume_id;
 u_int8_t volume_bus;
 u_int8_t volume_ioc;
 u_int8_t volume_type;
 u_int8_t volume_status;
 u_int8_t volume_state;
 u_int16_t _reserved1;
 struct mpi_raid_settings settings;
 u_int32_t max_lba;
 u_int32_t _reserved2;
 u_int32_t stripe_size;
 u_int32_t _reserved3;
 u_int32_t _reserved4;
 u_int8_t num_phys_disks;
 u_int8_t data_scrub_rate;
 u_int8_t resync_rate;
 u_int8_t inactive_status;
} __attribute__((__packed__)) __attribute__((__aligned__(4)));
struct mpi_cfg_raid_vol_pg0_physdisk {
 u_int16_t reserved;
 u_int8_t phys_disk_map;
 u_int8_t phys_disk_num;
} __attribute__((__packed__)) __attribute__((__aligned__(4)));
struct mpi_cfg_raid_vol_pg1 {
 struct mpi_cfg_hdr config_header;
 u_int8_t volume_id;
 u_int8_t volume_bus;
 u_int8_t volume_ioc;
 u_int8_t reserved1;
 u_int8_t guid[24];
 u_int8_t name[32];
 u_int64_t wwid;
 u_int32_t reserved2;
 u_int32_t reserved3;
} __attribute__((__packed__)) __attribute__((__aligned__(4)));
struct mpi_cfg_raid_physdisk_pg0 {
 struct mpi_cfg_hdr config_header;
 u_int8_t phys_disk_id;
 u_int8_t phys_disk_bus;
 u_int8_t phys_disk_ioc;
 u_int8_t phys_disk_num;
 u_int8_t enc_id;
 u_int8_t enc_bus;
 u_int8_t hot_spare_pool;
 u_int8_t enc_type;
 u_int32_t reserved1;
 u_int8_t ext_disk_id[8];
 u_int8_t disk_id[16];
 u_int8_t vendor_id[8];
 u_int8_t product_id[16];
 u_int8_t product_rev[4];
 u_int8_t info[32];
 u_int8_t phys_disk_status;
 u_int8_t phys_disk_state;
 u_int16_t reserved2;
 u_int32_t max_lba;
 u_int8_t error_cdb_byte;
 u_int8_t error_sense_key;
 u_int16_t reserved3;
 u_int16_t error_count;
 u_int8_t error_asc;
 u_int8_t error_ascq;
 u_int16_t smart_count;
 u_int8_t smart_asc;
 u_int8_t smart_ascq;
} __attribute__((__packed__)) __attribute__((__aligned__(4)));
struct mpi_cfg_raid_physdisk_pg1 {
 struct mpi_cfg_hdr config_header;
 u_int8_t num_phys_disk_paths;
 u_int8_t phys_disk_num;
 u_int16_t reserved1;
 u_int32_t reserved2;
} __attribute__((__packed__)) __attribute__((__aligned__(4)));
struct mpi_cfg_raid_physdisk_path {
 u_int8_t phys_disk_id;
 u_int8_t phys_disk_bus;
 u_int16_t reserved1;
 u_int64_t wwwid;
 u_int64_t owner_wwid;
 u_int8_t ownder_id;
 u_int8_t reserved2;
 u_int16_t flags;
} __attribute__((__packed__)) __attribute__((__aligned__(4)));
struct mpi_cfg_sas_iou_pg0 {
 struct mpi_ecfg_hdr config_header;
 u_int16_t nvdata_version_default;
 u_int16_t nvdata_version_persistent;
 u_int8_t num_phys;
 u_int8_t _reserved1[3];
} __attribute__((__packed__)) __attribute__((__aligned__(4)));
struct mpi_cfg_sas_iou_pg0_phy {
 u_int8_t port;
 u_int8_t port_flags;
 u_int8_t phy_flags;
 u_int8_t negotiated_link_rate;
 u_int32_t controller_phy_dev_info;
 u_int16_t attached_dev_handle;
 u_int16_t controller_dev_handle;
 u_int32_t discovery_status;
} __attribute__((__packed__)) __attribute__((__aligned__(4)));
struct mpi_cfg_sas_iou_pg1 {
 struct mpi_ecfg_hdr config_header;
 u_int16_t control_flags;
 u_int16_t max_sata_targets;
 u_int16_t additional_control_flags;
 u_int16_t _reserved1;
 u_int8_t num_phys;
 u_int8_t max_sata_q_depth;
 u_int8_t report_dev_missing_delay;
 u_int8_t io_dev_missing_delay;
} __attribute__((__packed__)) __attribute__((__aligned__(4)));
struct mpi_cfg_sas_iou_pg1_phy {
 u_int8_t port;
 u_int8_t port_flags;
 u_int8_t phy_flags;
 u_int8_t max_min_link_rate;
 u_int32_t controller_phy_dev_info;
 u_int16_t max_target_port_connect_time;
 u_int16_t _reserved1;
} __attribute__((__packed__)) __attribute__((__aligned__(4)));
struct mpi_cfg_sas_dev_pg0 {
 struct mpi_ecfg_hdr config_header;
 u_int16_t slot;
 u_int16_t enc_handle;
 u_int64_t sas_addr;
 u_int16_t parent_dev_handle;
 u_int8_t phy_num;
 u_int8_t access_status;
 u_int16_t dev_handle;
 u_int8_t target;
 u_int8_t bus;
 u_int32_t device_info;
 u_int16_t flags;
 u_int8_t physical_port;
 u_int8_t reserved;
} __attribute__((__packed__)) __attribute__((__aligned__(4)));
struct mpi_dmamem {
 bus_dmamap_t mdm_map;
 bus_dma_segment_t mdm_seg;
 size_t mdm_size;
 caddr_t mdm_kva;
};
struct mpi_ccb_bundle {
 struct mpi_msg_scsi_io mcb_io;
 struct mpi_sge mcb_sgl[36];
 struct scsi_sense_data mcb_sense;
} __attribute__((__packed__));
struct mpi_softc;
struct mpi_rcb {
 struct { struct mpi_rcb *sqe_next; } rcb_link;
 void *rcb_reply;
 bus_addr_t rcb_offset;
 u_int32_t rcb_reply_dva;
};
struct mpi_rcb_list { struct mpi_rcb *sqh_first; struct mpi_rcb **sqh_last; };
struct mpi_ccb {
 struct mpi_softc *ccb_sc;
 int ccb_id;
 void *ccb_cookie;
 bus_dmamap_t ccb_dmamap;
 bus_addr_t ccb_offset;
 void *ccb_cmd;
 u_int64_t ccb_cmd_dva;
 volatile enum {
  MPI_CCB_FREE,
  MPI_CCB_READY,
  MPI_CCB_QUEUED
 } ccb_state;
 void (*ccb_done)(struct mpi_ccb *);
 struct mpi_rcb *ccb_rcb;
 struct { struct mpi_ccb *sle_next; } ccb_link;
};
struct mpi_ccb_list { struct mpi_ccb *slh_first; };
struct mpi_softc {
 struct device sc_dev;
 struct scsi_link sc_link;
 int sc_flags;
 struct scsibus_softc *sc_scsibus;
 bus_space_tag_t sc_iot;
 bus_space_handle_t sc_ioh;
 bus_size_t sc_ios;
 bus_dma_tag_t sc_dmat;
 u_int8_t sc_fw_maj;
 u_int8_t sc_fw_min;
 u_int8_t sc_fw_unit;
 u_int8_t sc_fw_dev;
 u_int8_t sc_porttype;
 int sc_maxcmds;
 int sc_maxchdepth;
 int sc_first_sgl_len;
 int sc_chain_len;
 int sc_max_sgl_len;
 int sc_buswidth;
 int sc_target;
 int sc_ioc_number;
 struct mpi_dmamem *sc_requests;
 struct mpi_ccb *sc_ccbs;
 struct mpi_ccb_list sc_ccb_free;
 struct mutex sc_ccb_mtx;
 struct scsi_iopool sc_iopool;
 struct mpi_dmamem *sc_replies;
 struct mpi_rcb *sc_rcbs;
 int sc_repq;
 struct mpi_ccb *sc_evt_ccb;
 struct mpi_rcb_list sc_evt_ack_queue;
 struct mutex sc_evt_ack_mtx;
 struct scsi_iohandler sc_evt_ack_handler;
 struct mpi_rcb_list sc_evt_scan_queue;
 struct mutex sc_evt_scan_mtx;
 struct scsi_iohandler sc_evt_scan_handler;
 struct task sc_evt_rescan;
 size_t sc_fw_len;
 struct mpi_dmamem *sc_fw;
 int (*sc_ioctl)(struct device *, u_long, caddr_t);
 struct rwlock sc_lock;
 struct mpi_cfg_hdr sc_cfg_hdr;
 struct mpi_cfg_ioc_pg2 *sc_vol_page;
 struct mpi_cfg_raid_vol *sc_vol_list;
 struct mpi_cfg_raid_vol_pg0 *sc_rpg0;
 struct ksensor *sc_sensors;
 struct ksensordev sc_sensordev;
};
int mpi_attach(struct mpi_softc *);
void mpi_detach(struct mpi_softc *);
int mpi_intr(void *);
struct cfdriver mpi_cd = {
 ((void *)0),
 "mpi",
 DV_DULL
};
void mpi_scsi_cmd(struct scsi_xfer *);
void mpi_scsi_cmd_done(struct mpi_ccb *);
void mpi_minphys(struct buf *bp, struct scsi_link *sl);
int mpi_scsi_probe(struct scsi_link *);
int mpi_scsi_ioctl(struct scsi_link *, u_long, caddr_t,
       int);
struct scsi_adapter mpi_switch = {
 mpi_scsi_cmd,
 mpi_minphys,
 mpi_scsi_probe,
 ((void *)0),
 mpi_scsi_ioctl
};
struct mpi_dmamem *mpi_dmamem_alloc(struct mpi_softc *, size_t);
void mpi_dmamem_free(struct mpi_softc *,
       struct mpi_dmamem *);
int mpi_alloc_ccbs(struct mpi_softc *);
void *mpi_get_ccb(void *);
void mpi_put_ccb(void *, void *);
int mpi_alloc_replies(struct mpi_softc *);
void mpi_push_replies(struct mpi_softc *);
void mpi_push_reply(struct mpi_softc *, struct mpi_rcb *);
void mpi_start(struct mpi_softc *, struct mpi_ccb *);
int mpi_poll(struct mpi_softc *, struct mpi_ccb *, int);
void mpi_poll_done(struct mpi_ccb *);
void mpi_reply(struct mpi_softc *, u_int32_t);
void mpi_wait(struct mpi_softc *sc, struct mpi_ccb *);
void mpi_wait_done(struct mpi_ccb *);
int mpi_cfg_spi_port(struct mpi_softc *);
void mpi_squash_ppr(struct mpi_softc *);
void mpi_run_ppr(struct mpi_softc *);
int mpi_ppr(struct mpi_softc *, struct scsi_link *,
       struct mpi_cfg_raid_physdisk *, int, int, int);
int mpi_inq(struct mpi_softc *, u_int16_t, int);
int mpi_cfg_sas(struct mpi_softc *);
int mpi_cfg_fc(struct mpi_softc *);
void mpi_timeout_xs(void *);
int mpi_load_xs(struct mpi_ccb *);
u_int32_t mpi_read(struct mpi_softc *, bus_size_t);
void mpi_write(struct mpi_softc *, bus_size_t, u_int32_t);
int mpi_wait_eq(struct mpi_softc *, bus_size_t, u_int32_t,
       u_int32_t);
int mpi_wait_ne(struct mpi_softc *, bus_size_t, u_int32_t,
       u_int32_t);
int mpi_init(struct mpi_softc *);
int mpi_reset_soft(struct mpi_softc *);
int mpi_reset_hard(struct mpi_softc *);
int mpi_handshake_send(struct mpi_softc *, void *, size_t);
int mpi_handshake_recv_dword(struct mpi_softc *,
       u_int32_t *);
int mpi_handshake_recv(struct mpi_softc *, void *, size_t);
void mpi_empty_done(struct mpi_ccb *);
int mpi_iocinit(struct mpi_softc *);
int mpi_iocfacts(struct mpi_softc *);
int mpi_portfacts(struct mpi_softc *);
int mpi_portenable(struct mpi_softc *);
int mpi_cfg_coalescing(struct mpi_softc *);
void mpi_get_raid(struct mpi_softc *);
int mpi_fwupload(struct mpi_softc *);
int mpi_manufacturing(struct mpi_softc *);
int mpi_scsi_probe_virtual(struct scsi_link *);
int mpi_eventnotify(struct mpi_softc *);
void mpi_eventnotify_done(struct mpi_ccb *);
void mpi_eventnotify_free(struct mpi_softc *,
       struct mpi_rcb *);
void mpi_eventack(void *, void *);
void mpi_eventack_done(struct mpi_ccb *);
int mpi_evt_sas(struct mpi_softc *, struct mpi_rcb *);
void mpi_evt_sas_detach(void *, void *);
void mpi_evt_sas_detach_done(struct mpi_ccb *);
void mpi_fc_rescan(void *);
int mpi_req_cfg_header(struct mpi_softc *, u_int8_t,
       u_int8_t, u_int32_t, int, void *);
int mpi_req_cfg_page(struct mpi_softc *, u_int32_t, int,
       void *, int, void *, size_t);
int mpi_ioctl_cache(struct scsi_link *, u_long,
       struct dk_cache *);
int mpi_bio_get_pg0_raid(struct mpi_softc *, int);
int mpi_ioctl(struct device *, u_long, caddr_t);
int mpi_ioctl_inq(struct mpi_softc *, struct bioc_inq *);
int mpi_ioctl_vol(struct mpi_softc *, struct bioc_vol *);
int mpi_ioctl_disk(struct mpi_softc *, struct bioc_disk *);
int mpi_ioctl_setstate(struct mpi_softc *, struct bioc_setstate *);
int mpi_create_sensors(struct mpi_softc *);
void mpi_refresh_sensors(void *);
static inline void
mpi_dvatosge(struct mpi_sge *sge, u_int64_t dva)
{
 __swapm32((&sge->sg_addr_lo), (dva));
 __swapm32((&sge->sg_addr_hi), (dva >> 32));
}
int
mpi_attach(struct mpi_softc *sc)
{
 struct scsibus_attach_args saa;
 struct mpi_ccb *ccb;
 printf("\n");
 _rw_init_flags(&sc->sc_lock, "mpi_lock", 0, ((void *)0));
 task_set(&sc->sc_evt_rescan, mpi_fc_rescan, sc);
 mpi_write(sc, 0x34,
     (1<<3) | (1<<0));
 if (mpi_init(sc) != 0) {
  printf("%s: unable to initialise\n", ((sc)->sc_dev.dv_xname));
  return (1);
 }
 if (mpi_iocfacts(sc) != 0) {
  printf("%s: unable to get iocfacts\n", ((sc)->sc_dev.dv_xname));
  return (1);
 }
 if (mpi_alloc_ccbs(sc) != 0) {
  return (1);
 }
 if (mpi_alloc_replies(sc) != 0) {
  printf("%s: unable to allocate reply space\n", ((sc)->sc_dev.dv_xname));
  goto free_ccbs;
 }
 if (mpi_iocinit(sc) != 0) {
  printf("%s: unable to send iocinit\n", ((sc)->sc_dev.dv_xname));
  goto free_ccbs;
 }
 if (mpi_wait_eq(sc, 0x00, (0xf<<28),
     (0x2<<28)) != 0) {
  printf("%s: state: 0x%08x\n", ((sc)->sc_dev.dv_xname),
      mpi_read((sc), 0x00) & (0xf<<28));
  printf("%s: operational state timeout\n", ((sc)->sc_dev.dv_xname));
  goto free_ccbs;
 }
 mpi_push_replies(sc);
 if (mpi_portfacts(sc) != 0) {
  printf("%s: unable to get portfacts\n", ((sc)->sc_dev.dv_xname));
  goto free_replies;
 }
 if (mpi_cfg_coalescing(sc) != 0) {
  printf("%s: unable to configure coalescing\n", ((sc)->sc_dev.dv_xname));
  goto free_replies;
 }
 switch (sc->sc_porttype) {
 case 0x30:
  do { (&sc->sc_evt_scan_queue)->sqh_first = ((void *)0); (&sc->sc_evt_scan_queue)->sqh_last = &(&sc->sc_evt_scan_queue)->sqh_first; } while (0);
  do { (void)(((void *)0)); (void)(0); __mtx_init((&sc->sc_evt_scan_mtx), ((((5)) > 0 && ((5)) < 12) ? 12 : ((5)))); } while (0);
  scsi_ioh_set(&sc->sc_evt_scan_handler, &sc->sc_iopool,
      mpi_evt_sas_detach, sc);
 case 0x10:
  if (mpi_eventnotify(sc) != 0) {
   printf("%s: unable to enable events\n", ((sc)->sc_dev.dv_xname));
   goto free_replies;
  }
  break;
 }
 if (mpi_portenable(sc) != 0) {
  printf("%s: unable to enable port\n", ((sc)->sc_dev.dv_xname));
  goto free_replies;
 }
 if (mpi_fwupload(sc) != 0) {
  printf("%s: unable to upload firmware\n", ((sc)->sc_dev.dv_xname));
  goto free_replies;
 }
 if (mpi_manufacturing(sc) != 0) {
  printf("%s: unable to fetch manufacturing info\n", ((sc)->sc_dev.dv_xname)); goto free_replies;
 }
 switch (sc->sc_porttype) {
 case 0x01:
  if (mpi_cfg_spi_port(sc) != 0) {
   printf("%s: unable to configure spi\n", ((sc)->sc_dev.dv_xname));
   goto free_replies;
  }
  mpi_squash_ppr(sc);
  break;
 case 0x30:
  if (mpi_cfg_sas(sc) != 0) {
   printf("%s: unable to configure sas\n", ((sc)->sc_dev.dv_xname));
   goto free_replies;
  }
  break;
 case 0x10:
  if (mpi_cfg_fc(sc) != 0) {
   printf("%s: unable to configure fc\n", ((sc)->sc_dev.dv_xname));
   goto free_replies;
  }
  break;
 }
 mpi_get_raid(sc);
 if (sc->sc_flags & (1<<1)) {
  if (bio_register(&sc->sc_dev, mpi_ioctl) != 0)
   panic("%s: controller registration failed",
       ((sc)->sc_dev.dv_xname));
  else {
   if (mpi_req_cfg_header((sc), ((0x01)), (2), (0), (1<<1), (&sc->sc_cfg_hdr)) != 0) {
    panic("%s: can't get IOC page 2 hdr",
        ((sc)->sc_dev.dv_xname));
   }
   sc->sc_vol_page = mallocarray(sc->sc_cfg_hdr.page_length,
       4, 127, 0x0001 | 0x0004);
   if (sc->sc_vol_page == ((void *)0)) {
    panic("%s: can't get memory for IOC page 2, "
        "bio disabled", ((sc)->sc_dev.dv_xname));
   }
   if (mpi_req_cfg_page((sc), (0), (1<<1), (&sc->sc_cfg_hdr), (1), (sc->sc_vol_page), (sc->sc_cfg_hdr.page_length * 4)) != 0) {
    panic("%s: can't get IOC page 2", ((sc)->sc_dev.dv_xname));
   }
   sc->sc_vol_list = (struct mpi_cfg_raid_vol *)
       (sc->sc_vol_page + 1);
   sc->sc_ioctl = mpi_ioctl;
  }
 }
 sc->sc_link.adapter = &mpi_switch;
 sc->sc_link.adapter_softc = sc;
 sc->sc_link.adapter_target = sc->sc_target;
 sc->sc_link.adapter_buswidth = sc->sc_buswidth;
 sc->sc_link.openings = (((sc->sc_maxcmds / sc->sc_buswidth)>(16))?(sc->sc_maxcmds / sc->sc_buswidth):(16));
 sc->sc_link.pool = &sc->sc_iopool;
 __builtin_memset((&saa), (0), (sizeof(saa)));
 saa.saa_sc_link = &sc->sc_link;
 sc->sc_scsibus = (struct scsibus_softc *) config_found_sm((&sc->sc_dev), (&saa), (scsiprint), ((void *)0));
 if (sc->sc_porttype == 0x01)
  mpi_run_ppr(sc);
 mpi_write(sc, 0x34, (1<<0));
 mpi_create_sensors(sc);
 return (0);
free_replies:
 bus_dmamap_sync(sc->sc_dmat, ((sc->sc_replies)->mdm_map), 0,
     sc->sc_repq * 80, 0x02);
 mpi_dmamem_free(sc, sc->sc_replies);
free_ccbs:
 while ((ccb = mpi_get_ccb(sc)) != ((void *)0))
  bus_dmamap_destroy(sc->sc_dmat, ccb->ccb_dmamap);
 mpi_dmamem_free(sc, sc->sc_requests);
 free(sc->sc_ccbs, 2, 0);
 return(1);
}
int
mpi_cfg_spi_port(struct mpi_softc *sc)
{
 struct mpi_cfg_hdr hdr;
 struct mpi_cfg_spi_port_pg1 port;
 if (mpi_req_cfg_header((sc), ((0x03)), (1), (0x0), (1<<1), (&hdr)) != 0)
  return (1);
 if (mpi_req_cfg_page((sc), (0x0), (1<<1), (&hdr), (1), (&port), (sizeof(port))) != 0)
  return (1);
 ;
 ;
 ;
 ;
 if (port.port_scsi_id == sc->sc_target &&
     port.port_resp_ids == __extension__({ __uint16_t __swap16gen_x = (1 << sc->sc_target); (__uint16_t)((__swap16gen_x & 0xff) << 8 | (__swap16gen_x & 0xff00) >> 8); }) &&
     port.on_bus_timer_value != __extension__({ __uint32_t __swap32gen_x = (0x0); (__uint32_t)((__swap32gen_x & 0xff) << 24 | (__swap32gen_x & 0xff00) << 8 | (__swap32gen_x & 0xff0000) >> 8 | (__swap32gen_x & 0xff000000) >> 24); }))
  return (0);
 ;
 port.port_scsi_id = sc->sc_target;
 port.port_resp_ids = __extension__({ __uint16_t __swap16gen_x = (1 << sc->sc_target); (__uint16_t)((__swap16gen_x & 0xff) << 8 | (__swap16gen_x & 0xff00) >> 8); });
 port.on_bus_timer_value = __extension__({ __uint32_t __swap32gen_x = (0x07000000); (__uint32_t)((__swap32gen_x & 0xff) << 24 | (__swap32gen_x & 0xff00) << 8 | (__swap32gen_x & 0xff0000) >> 8 | (__swap32gen_x & 0xff000000) >> 24); });
 if (mpi_req_cfg_page((sc), (0x0), (1<<1), (&hdr), (0), (&port), (sizeof(port))) != 0) {
  printf("%s: unable to configure port scsi id\n", ((sc)->sc_dev.dv_xname));
  return (1);
 }
 return (0);
}
void
mpi_squash_ppr(struct mpi_softc *sc)
{
 struct mpi_cfg_hdr hdr;
 struct mpi_cfg_spi_dev_pg1 page;
 int i;
 ;
 for (i = 0; i < sc->sc_buswidth; i++) {
  if (mpi_req_cfg_header((sc), ((0x04)), (1), (i), (1<<1), (&hdr)) != 0)
   return;
  if (mpi_req_cfg_page((sc), (i), (1<<1), (&hdr), (1), (&page), (sizeof(page))) != 0)
   return;
  ;
  page.req_params1 = 0x0;
  page.req_offset = 0x0;
  page.req_period = 0x0;
  page.req_params2 = 0x0;
  page.configuration = __extension__({ __uint32_t __swap32gen_x = (0x0); (__uint32_t)((__swap32gen_x & 0xff) << 24 | (__swap32gen_x & 0xff00) << 8 | (__swap32gen_x & 0xff0000) >> 8 | (__swap32gen_x & 0xff000000) >> 24); });
  if (mpi_req_cfg_page((sc), (i), (1<<1), (&hdr), (0), (&page), (sizeof(page))) != 0)
   return;
 }
}
void
mpi_run_ppr(struct mpi_softc *sc)
{
 struct mpi_cfg_hdr hdr;
 struct mpi_cfg_spi_port_pg0 port_pg;
 struct mpi_cfg_ioc_pg3 *physdisk_pg;
 struct mpi_cfg_raid_physdisk *physdisk_list, *physdisk;
 size_t pagelen;
 struct scsi_link *link;
 int i, tries;
 if (mpi_req_cfg_header((sc), ((0x03)), (0), (0x0), (1<<1), (&hdr)) != 0) {
  ;
  return;
 }
 if (mpi_req_cfg_page((sc), (0x0), (1<<1), (&hdr), (1), (&port_pg), (sizeof(port_pg))) != 0) {
  ;
  return;
 }
 for (i = 0; i < sc->sc_buswidth; i++) {
  link = scsi_get_link(sc->sc_scsibus, i, 0);
  if (link == ((void *)0))
   continue;
  if (link->flags & 0x1000)
   continue;
  tries = 0;
  while (mpi_ppr(sc, link, ((void *)0), port_pg.min_period,
      port_pg.max_offset, tries) == 35)
   tries++;
 }
 if ((sc->sc_flags & (1<<1)) == 0)
  return;
 if (mpi_req_cfg_header((sc), ((0x01)), (3), (0x0), (1<<1), (&hdr)) != 0) {
  ;
  return;
 }
 pagelen = hdr.page_length * 4;
 physdisk_pg = malloc(pagelen, 127, 0x0001|0x0004);
 if (physdisk_pg == ((void *)0)) {
  ;
  return;
 }
 physdisk_list = (struct mpi_cfg_raid_physdisk *)(physdisk_pg + 1);
 if (mpi_req_cfg_page((sc), (0), (1<<1), (&hdr), (1), (physdisk_pg), (pagelen)) != 0) {
  ;
  goto out;
 }
 ;
 for (i = 0; i < physdisk_pg->no_phys_disks; i++) {
  physdisk = &physdisk_list[i];
  ;
  if (physdisk->phys_disk_ioc != sc->sc_ioc_number)
   continue;
  tries = 0;
  while (mpi_ppr(sc, ((void *)0), physdisk, port_pg.min_period,
      port_pg.max_offset, tries) == 35)
   tries++;
 }
out:
 free(physdisk_pg, 127, pagelen);
}
int
mpi_ppr(struct mpi_softc *sc, struct scsi_link *link,
    struct mpi_cfg_raid_physdisk *physdisk, int period, int offset, int try)
{
 struct mpi_cfg_hdr hdr0, hdr1;
 struct mpi_cfg_spi_dev_pg0 pg0;
 struct mpi_cfg_spi_dev_pg1 pg1;
 u_int32_t address;
 int id;
 int raid = 0;
 ;
 if (try >= 3)
  return (5);
 if (physdisk == ((void *)0)) {
  if ((link->inqdata.device & 0x1F) == 3)
   return (5);
  address = link->target;
  id = link->target;
 } else {
  raid = 1;
  address = (physdisk->phys_disk_bus << 8) |
      (physdisk->phys_disk_id);
  id = physdisk->phys_disk_num;
 }
 if (mpi_req_cfg_header((sc), ((0x04)), (0), (address), (1<<1), (&hdr0)) != 0) {
  ;
  return (5);
 }
 if (mpi_req_cfg_header((sc), ((0x04)), (1), (address), (1<<1), (&hdr1)) != 0) {
  ;
  return (5);
 }
 if (mpi_req_cfg_page((sc), (address), (1<<1), (&hdr1), (1), (&pg1), (sizeof(pg1))) != 0) {
  ;
  return (5);
 }
 ;
 pg1.req_params1 = 0;
 pg1.req_offset = offset;
 pg1.req_period = period;
 pg1.req_params2 &= ~(1<<5);
 if (raid || !(link->quirks & 0x0002)) {
  pg1.req_params2 |= (1<<5);
  switch (try) {
  case 0:
   break;
  case 1:
   pg1.req_period = 0x09;
   break;
  case 2:
   pg1.req_period = 0x0a;
   break;
  }
  if (pg1.req_period < 0x09) {
   pg1.req_params1 |= (1<<2) |
       (1<<0);
  }
  if (pg1.req_period < 0xa) {
   pg1.req_params1 |=
       (1<<1);
  }
 }
 ;
 if (mpi_req_cfg_page((sc), (address), (1<<1), (&hdr1), (0), (&pg1), (sizeof(pg1))) != 0) {
  ;
  return (5);
 }
 if (mpi_req_cfg_page((sc), (address), (1<<1), (&hdr1), (1), (&pg1), (sizeof(pg1))) != 0) {
  ;
  return (5);
 }
 ;
 if (mpi_inq(sc, id, raid) != 0) {
  ;
  return (5);
 }
 if (mpi_req_cfg_page((sc), (address), (1<<1), (&hdr0), (1), (&pg0), (sizeof(pg0))) != 0) {
  ;
  return (5);
 }
 ;
 if (!(__mswap32(&pg0.information) & 0x07) && (try == 0)) {
  ;
  return (35);
 }
 if ((((__mswap32(&pg0.information) >> 8) & 0xff) > 0x09) && (try == 1)) {
  ;
  return (35);
 }
 if (__mswap32(&pg0.information) & 0x0e) {
  ;
  return (35);
 }
 switch(pg0.neg_period) {
 case 0x08:
  period = 160;
  break;
 case 0x09:
  period = 80;
  break;
 case 0x0a:
  period = 40;
  break;
 case 0x0b:
  period = 20;
  break;
 case 0x0c:
  period = 10;
  break;
 default:
  period = 0;
  break;
 }
 printf("%s: %s %d %s at %dMHz width %dbit offset %d "
     "QAS %d DT %d IU %d\n", ((sc)->sc_dev.dv_xname), raid ? "phys disk" : "target",
     id, period ? "Sync" : "Async", period,
     (pg0.neg_params2 & (1<<5)) ? 16 : 8,
     pg0.neg_offset,
     (pg0.neg_params1 & (1<<2)) ? 1 : 0,
     (pg0.neg_params1 & (1<<1)) ? 1 : 0,
     (pg0.neg_params1 & (1<<0)) ? 1 : 0);
 return (0);
}
int
mpi_inq(struct mpi_softc *sc, u_int16_t target, int physdisk)
{
 struct mpi_ccb *ccb;
 struct scsi_inquiry inq;
 struct inq_bundle {
  struct mpi_msg_scsi_io io;
  struct mpi_sge sge;
  struct scsi_inquiry_data inqbuf;
  struct scsi_sense_data sense;
 } __attribute__((__packed__)) *bundle;
 struct mpi_msg_scsi_io *io;
 struct mpi_sge *sge;
 ;
 __builtin_memset((&inq), (0), (sizeof(inq)));
 inq.opcode = 0x12;
 _lto2b(sizeof(struct scsi_inquiry_data), inq.length);
 ccb = scsi_io_get(&sc->sc_iopool, 0x00001);
 if (ccb == ((void *)0))
  return (1);
 ccb->ccb_done = mpi_empty_done;
 bundle = ccb->ccb_cmd;
 io = &bundle->io;
 sge = &bundle->sge;
 io->function = physdisk ? (0x16) :
     (0x00);
 io->target_id = target;
 io->cdb_length = sizeof(inq);
 io->sense_buf_len = sizeof(struct scsi_sense_data);
 io->msg_flags = (1<<0);
 io->direction = (0x2);
 io->tagging = (0x7);
 __builtin_memcpy((io->cdb), (&inq), (sizeof(inq)));
 __swapm32((&io->data_length), (sizeof(struct scsi_inquiry_data)));
 __swapm32((&io->sense_buf_low_addr), (ccb->ccb_cmd_dva + __builtin_offsetof(struct inq_bundle, sense)));
 __swapm32((&sge->sg_hdr), ((0x1<<28) | (0x1<<25) | (0x1<<31) | (0x1<<30) | (0x1<<24) | (u_int32_t)sizeof(inq)));
 mpi_dvatosge(sge, ccb->ccb_cmd_dva +
     __builtin_offsetof(struct inq_bundle, inqbuf));
 if (mpi_poll(sc, ccb, 5000) != 0)
  return (1);
 if (ccb->ccb_rcb != ((void *)0))
  mpi_push_reply(sc, ccb->ccb_rcb);
 scsi_io_put(&sc->sc_iopool, ccb);
 return (0);
}
int
mpi_cfg_sas(struct mpi_softc *sc)
{
 struct mpi_ecfg_hdr ehdr;
 struct mpi_cfg_sas_iou_pg1 *pg;
 size_t pagelen;
 int rv = 0;
 if (mpi_req_cfg_header((sc), ((0x10)), (1), (0), (1<<1)|(1<<0), (&ehdr)) != 0)
  return (0);
 pagelen = __mswap16(&ehdr.ext_page_length) * 4;
 pg = malloc(pagelen, 127, 0x0002 | 0x0008);
 if (pg == ((void *)0))
  return (12);
 if (mpi_req_cfg_page((sc), (0), (1<<1)|(1<<0), (&ehdr), (1), (pg), (pagelen)) != 0)
  goto out;
 if (pg->max_sata_q_depth != 32) {
  pg->max_sata_q_depth = 32;
  if (mpi_req_cfg_page((sc), (0), (1<<1)|(1<<0), (&ehdr), (0), (pg), (pagelen)) != 0)
   goto out;
 }
out:
 free(pg, 127, pagelen);
 return (rv);
}
int
mpi_cfg_fc(struct mpi_softc *sc)
{
 struct mpi_cfg_hdr hdr;
 struct mpi_cfg_fc_port_pg0 pg0;
 struct mpi_cfg_fc_port_pg1 pg1;
 if (mpi_req_cfg_header((sc), ((0x05)), (0), (0), (1<<1), (&hdr)) != 0) {
  printf("%s: unable to fetch FC port header 0\n", ((sc)->sc_dev.dv_xname));
  return (1);
 }
 if (mpi_req_cfg_page((sc), (0), (1<<1), (&hdr), (1), (&pg0), (sizeof(pg0))) != 0) {
  printf("%s: unable to fetch FC port page 0\n", ((sc)->sc_dev.dv_xname));
  return (1);
 }
 sc->sc_link.port_wwn = __extension__({ __uint64_t __swap64gen_x = (pg0.wwpn); (__uint64_t)((__swap64gen_x & 0xff) << 56 | (__swap64gen_x & 0xff00ULL) << 40 | (__swap64gen_x & 0xff0000ULL) << 24 | (__swap64gen_x & 0xff000000ULL) << 8 | (__swap64gen_x & 0xff00000000ULL) >> 8 | (__swap64gen_x & 0xff0000000000ULL) >> 24 | (__swap64gen_x & 0xff000000000000ULL) >> 40 | (__swap64gen_x & 0xff00000000000000ULL) >> 56); });
 sc->sc_link.node_wwn = __extension__({ __uint64_t __swap64gen_x = (pg0.wwnn); (__uint64_t)((__swap64gen_x & 0xff) << 56 | (__swap64gen_x & 0xff00ULL) << 40 | (__swap64gen_x & 0xff0000ULL) << 24 | (__swap64gen_x & 0xff000000ULL) << 8 | (__swap64gen_x & 0xff00000000ULL) >> 8 | (__swap64gen_x & 0xff0000000000ULL) >> 24 | (__swap64gen_x & 0xff000000000000ULL) >> 40 | (__swap64gen_x & 0xff00000000000000ULL) >> 56); });
 if (mpi_req_cfg_header((sc), ((0x05)), (1), (0), (1<<1), (&hdr)) != 0) {
  printf("%s: unable to fetch FC port header 1\n", ((sc)->sc_dev.dv_xname));
  return (1);
 }
 if (mpi_req_cfg_page((sc), (0), (1<<1), (&hdr), (1), (&pg1), (sizeof(pg1))) != 0) {
  printf("%s: unable to fetch FC port page 1\n", ((sc)->sc_dev.dv_xname));
  return (1);
 }
 ((pg1.flags) |= (__extension__({ __uint32_t __swap32gen_x = ((1<<26) | (1<<24)); (__uint32_t)((__swap32gen_x & 0xff) << 24 | (__swap32gen_x & 0xff00) << 8 | (__swap32gen_x & 0xff0000) >> 8 | (__swap32gen_x & 0xff000000) >> 24); })));
 if (mpi_req_cfg_page((sc), (0), (1<<1), (&hdr), (0), (&pg1), (sizeof(pg1))) != 0) {
  printf("%s: unable to set FC port page 1\n", ((sc)->sc_dev.dv_xname));
  return (1);
 }
 return (0);
}
void
mpi_detach(struct mpi_softc *sc)
{
}
int
mpi_intr(void *arg)
{
 struct mpi_softc *sc = arg;
 u_int32_t reg64;
 int rv = 0;
 if ((bus_space_read_4((sc)->sc_iot, (sc)->sc_ioh, 0x30) & (1<<3)) == 0)
  return (rv);
 while ((reg64 = bus_space_read_4((sc)->sc_iot, (sc)->sc_ioh, 0x44)) != 0xffffffff) {
  mpi_reply(sc, reg64);
  rv = 1;
 }
 return (rv);
}
void
mpi_reply(struct mpi_softc *sc, u_int32_t reg64)
{
 struct mpi_ccb *ccb;
 struct mpi_rcb *rcb = ((void *)0);
 struct mpi_msg_reply *reply = ((void *)0);
 u_int32_t reply_dva;
 int id;
 int i;
 ;
 if (reg64 & (1<<31)) {
  reply_dva = (reg64 & 0x7fffffff) << 1;
  i = (reply_dva - (u_int32_t)((u_int64_t)(sc->sc_replies)->mdm_map->dm_segs[0].ds_addr)) /
      80;
  rcb = &sc->sc_rcbs[i];
  bus_dmamap_sync(sc->sc_dmat,
      ((sc->sc_replies)->mdm_map), rcb->rcb_offset,
      80, 0x02);
  reply = rcb->rcb_reply;
  id = __mswap32(&reply->msg_context);
 } else {
  switch (reg64 & (3<<29)) {
  case (0<<29):
   id = reg64 & 0x1fffffff;
   break;
  default:
   panic("%s: unsupported context reply",
       ((sc)->sc_dev.dv_xname));
  }
 }
 ;
 ccb = &sc->sc_ccbs[id];
 bus_dmamap_sync(sc->sc_dmat, ((sc->sc_requests)->mdm_map),
     ccb->ccb_offset, 512,
     0x02 | 0x08);
 ccb->ccb_state = MPI_CCB_READY;
 ccb->ccb_rcb = rcb;
 ccb->ccb_done(ccb);
}
struct mpi_dmamem *
mpi_dmamem_alloc(struct mpi_softc *sc, size_t size)
{
 struct mpi_dmamem *mdm;
 int nsegs;
 mdm = malloc(sizeof(struct mpi_dmamem), 2, 0x0002 | 0x0008);
 if (mdm == ((void *)0))
  return (((void *)0));
 mdm->mdm_size = size;
 if (bus_dmamap_create(sc->sc_dmat, size, 1, size, 0,
     0x0001 | 0x0002, &mdm->mdm_map) != 0)
  goto mdmfree;
 if (bus_dmamem_alloc(sc->sc_dmat, size, (1 << 13), 0, &mdm->mdm_seg,
     1, &nsegs, 0x0001 | 0x0800) != 0)
  goto destroy;
 if (bus_dmamem_map(sc->sc_dmat, &mdm->mdm_seg, nsegs, size,
     &mdm->mdm_kva, 0x0001) != 0)
  goto free;
 if (bus_dmamap_load(sc->sc_dmat, mdm->mdm_map, mdm->mdm_kva, size,
     ((void *)0), 0x0001) != 0)
  goto unmap;
 ;
 return (mdm);
unmap:
 bus_dmamem_unmap(sc->sc_dmat, mdm->mdm_kva, size);
free:
 bus_dmamem_free(sc->sc_dmat, &mdm->mdm_seg, 1);
destroy:
 bus_dmamap_destroy(sc->sc_dmat, mdm->mdm_map);
mdmfree:
 free(mdm, 2, sizeof *mdm);
 return (((void *)0));
}
void
mpi_dmamem_free(struct mpi_softc *sc, struct mpi_dmamem *mdm)
{
 ;
 bus_dmamap_unload(sc->sc_dmat, mdm->mdm_map);
 bus_dmamem_unmap(sc->sc_dmat, mdm->mdm_kva, mdm->mdm_size);
 bus_dmamem_free(sc->sc_dmat, &mdm->mdm_seg, 1);
 bus_dmamap_destroy(sc->sc_dmat, mdm->mdm_map);
 free(mdm, 2, sizeof *mdm);
}
int
mpi_alloc_ccbs(struct mpi_softc *sc)
{
 struct mpi_ccb *ccb;
 u_int8_t *cmd;
 int i;
 { ((&sc->sc_ccb_free)->slh_first) = ((void *)0); };
 do { (void)(((void *)0)); (void)(0); __mtx_init((&sc->sc_ccb_mtx), ((((5)) > 0 && ((5)) < 12) ? 12 : ((5)))); } while (0);
 sc->sc_ccbs = mallocarray(sc->sc_maxcmds, sizeof(struct mpi_ccb),
     2, 0x0001 | 0x0004 | 0x0008);
 if (sc->sc_ccbs == ((void *)0)) {
  printf("%s: unable to allocate ccbs\n", ((sc)->sc_dev.dv_xname));
  return (1);
 }
 sc->sc_requests = mpi_dmamem_alloc(sc,
     512 * sc->sc_maxcmds);
 if (sc->sc_requests == ((void *)0)) {
  printf("%s: unable to allocate ccb dmamem\n", ((sc)->sc_dev.dv_xname));
  goto free_ccbs;
 }
 cmd = ((void *)(sc->sc_requests)->mdm_kva);
 __builtin_memset((cmd), (0), (512 * sc->sc_maxcmds));
 for (i = 0; i < sc->sc_maxcmds; i++) {
  ccb = &sc->sc_ccbs[i];
  if (bus_dmamap_create(sc->sc_dmat, (64 * 1024),
      sc->sc_max_sgl_len, (64 * 1024), 0,
      0x0001 | 0x0002,
      &ccb->ccb_dmamap) != 0) {
   printf("%s: unable to create dma map\n", ((sc)->sc_dev.dv_xname));
   goto free_maps;
  }
  ccb->ccb_sc = sc;
  ccb->ccb_id = i;
  ccb->ccb_offset = 512 * i;
  ccb->ccb_state = MPI_CCB_READY;
  ccb->ccb_cmd = &cmd[ccb->ccb_offset];
  ccb->ccb_cmd_dva = (u_int32_t)((u_int64_t)(sc->sc_requests)->mdm_map->dm_segs[0].ds_addr) +
      ccb->ccb_offset;
  ;
  mpi_put_ccb(sc, ccb);
 }
 scsi_iopool_init(&sc->sc_iopool, sc, mpi_get_ccb, mpi_put_ccb);
 return (0);
free_maps:
 while ((ccb = mpi_get_ccb(sc)) != ((void *)0))
  bus_dmamap_destroy(sc->sc_dmat, ccb->ccb_dmamap);
 mpi_dmamem_free(sc, sc->sc_requests);
free_ccbs:
 free(sc->sc_ccbs, 2, 0);
 return (1);
}
void *
mpi_get_ccb(void *xsc)
{
 struct mpi_softc *sc = xsc;
 struct mpi_ccb *ccb;
 __mtx_enter(&sc->sc_ccb_mtx );
 ccb = ((&sc->sc_ccb_free)->slh_first);
 if (ccb != ((void *)0)) {
  do { (&sc->sc_ccb_free)->slh_first = (&sc->sc_ccb_free)->slh_first->ccb_link.sle_next; } while (0);
  ccb->ccb_state = MPI_CCB_READY;
 }
 __mtx_leave(&sc->sc_ccb_mtx );
 ;
 return (ccb);
}
void
mpi_put_ccb(void *xsc, void *io)
{
 struct mpi_softc *sc = xsc;
 struct mpi_ccb *ccb = io;
 ;
 if (ccb->ccb_state == MPI_CCB_FREE)
  panic("mpi_put_ccb: double free");
 ccb->ccb_state = MPI_CCB_FREE;
 ccb->ccb_cookie = ((void *)0);
 ccb->ccb_done = ((void *)0);
 __builtin_memset((ccb->ccb_cmd), (0), (512));
 __mtx_enter(&sc->sc_ccb_mtx );
 do { (ccb)->ccb_link.sle_next = (&sc->sc_ccb_free)->slh_first; (&sc->sc_ccb_free)->slh_first = (ccb); } while (0);
 __mtx_leave(&sc->sc_ccb_mtx );
}
int
mpi_alloc_replies(struct mpi_softc *sc)
{
 ;
 sc->sc_rcbs = mallocarray(sc->sc_repq, sizeof(struct mpi_rcb), 2,
     0x0001|0x0004);
 if (sc->sc_rcbs == ((void *)0))
  return (1);
 sc->sc_replies = mpi_dmamem_alloc(sc, sc->sc_repq * 80);
 if (sc->sc_replies == ((void *)0)) {
  free(sc->sc_rcbs, 2, 0);
  return (1);
 }
 return (0);
}
void
mpi_push_reply(struct mpi_softc *sc, struct mpi_rcb *rcb)
{
 bus_dmamap_sync(sc->sc_dmat, ((sc->sc_replies)->mdm_map),
     rcb->rcb_offset, 80, 0x01);
 bus_space_write_4((sc)->sc_iot, (sc)->sc_ioh, 0x44, (rcb->rcb_reply_dva));
}
void
mpi_push_replies(struct mpi_softc *sc)
{
 struct mpi_rcb *rcb;
 char *kva = ((void *)(sc->sc_replies)->mdm_kva);
 int i;
 bus_dmamap_sync(sc->sc_dmat, ((sc->sc_replies)->mdm_map), 0,
     sc->sc_repq * 80, 0x01);
 for (i = 0; i < sc->sc_repq; i++) {
  rcb = &sc->sc_rcbs[i];
  rcb->rcb_reply = kva + 80 * i;
  rcb->rcb_offset = 80 * i;
  rcb->rcb_reply_dva = (u_int32_t)((u_int64_t)(sc->sc_replies)->mdm_map->dm_segs[0].ds_addr) +
      80 * i;
  bus_space_write_4((sc)->sc_iot, (sc)->sc_ioh, 0x44, (rcb->rcb_reply_dva));
 }
}
void
mpi_start(struct mpi_softc *sc, struct mpi_ccb *ccb)
{
 struct mpi_msg_request *msg;
 ;
 msg = ccb->ccb_cmd;
 __swapm32((&msg->msg_context), (ccb->ccb_id));
 bus_dmamap_sync(sc->sc_dmat, ((sc->sc_requests)->mdm_map),
     ccb->ccb_offset, 512,
     0x01 | 0x04);
 ccb->ccb_state = MPI_CCB_QUEUED;
 bus_space_write_4(sc->sc_iot, sc->sc_ioh,
     0x40, ccb->ccb_cmd_dva);
}
int
mpi_poll(struct mpi_softc *sc, struct mpi_ccb *ccb, int timeout)
{
 void (*done)(struct mpi_ccb *);
 void *cookie;
 int rv = 1;
 u_int32_t reg64;
 ;
 done = ccb->ccb_done;
 cookie = ccb->ccb_cookie;
 ccb->ccb_done = mpi_poll_done;
 ccb->ccb_cookie = &rv;
 mpi_start(sc, ccb);
 while (rv == 1) {
  reg64 = bus_space_read_4((sc)->sc_iot, (sc)->sc_ioh, 0x44);
  if (reg64 == 0xffffffff) {
   if (timeout-- == 0) {
    printf("%s: timeout\n", ((sc)->sc_dev.dv_xname));
    goto timeout;
   }
   delay(1000);
   continue;
  }
  mpi_reply(sc, reg64);
 }
 ccb->ccb_cookie = cookie;
 done(ccb);
timeout:
 return (rv);
}
void
mpi_poll_done(struct mpi_ccb *ccb)
{
 int *rv = ccb->ccb_cookie;
 *rv = 0;
}
void
mpi_wait(struct mpi_softc *sc, struct mpi_ccb *ccb)
{
 struct mutex cookie = { ((void *)0), ((((5)) > 0 && ((5)) < 12) ? 12 : ((5))), 0 };
 void (*done)(struct mpi_ccb *);
 done = ccb->ccb_done;
 ccb->ccb_done = mpi_wait_done;
 ccb->ccb_cookie = &cookie;
 mpi_start(sc, ccb);
 __mtx_enter(&cookie );
 while (ccb->ccb_cookie != ((void *)0))
  msleep(ccb, &cookie, 16, "mpiwait", 0);
 __mtx_leave(&cookie );
 done(ccb);
}
void
mpi_wait_done(struct mpi_ccb *ccb)
{
 struct mutex *cookie = ccb->ccb_cookie;
 __mtx_enter(cookie );
 ccb->ccb_cookie = ((void *)0);
 wakeup_n((ccb), 1);
 __mtx_leave(cookie );
}
void
mpi_scsi_cmd(struct scsi_xfer *xs)
{
 struct scsi_link *link = xs->sc_link;
 struct mpi_softc *sc = link->adapter_softc;
 struct mpi_ccb *ccb;
 struct mpi_ccb_bundle *mcb;
 struct mpi_msg_scsi_io *io;
 ;
 _kernel_unlock();
 if (xs->cmdlen > 16) {
  ;
  __builtin_memset((&xs->sense), (0), (sizeof(xs->sense)));
  xs->sense.error_code = 0x80 | 0x70;
  xs->sense.flags = 0x05;
  xs->sense.add_sense_code = 0x20;
  xs->error = 1;
  goto done;
 }
 ccb = xs->io;
 ;
 ccb->ccb_cookie = xs;
 ccb->ccb_done = mpi_scsi_cmd_done;
 mcb = ccb->ccb_cmd;
 io = &mcb->mcb_io;
 io->function = (0x00);
 io->target_id = link->target;
 io->cdb_length = xs->cmdlen;
 io->sense_buf_len = sizeof(xs->sense);
 io->msg_flags = (1<<0);
 (*(__uint16_t *)(&io->lun[0]) = ((__uint16_t)(link->lun)));
 switch (xs->flags & (0x00800 | 0x01000)) {
 case 0x00800:
  io->direction = (0x2);
  break;
 case 0x01000:
  io->direction = (0x1);
  break;
 default:
  io->direction = (0x0);
  break;
 }
 if (sc->sc_porttype != 0x01 &&
     (link->quirks & 0x0008))
  io->tagging = (0x5);
 else
  io->tagging = (0x0);
 __builtin_memcpy((io->cdb), (xs->cmd), (xs->cmdlen));
 __swapm32((&io->data_length), (xs->datalen));
 __swapm32((&io->sense_buf_low_addr), (ccb->ccb_cmd_dva + __builtin_offsetof(struct mpi_ccb_bundle, mcb_sense)));
 if (mpi_load_xs(ccb) != 0)
  goto stuffup;
 timeout_set(&xs->stimeout, mpi_timeout_xs, ccb);
 if (xs->flags & 0x00002) {
  if (mpi_poll(sc, ccb, xs->timeout) != 0)
   goto stuffup;
 } else
  mpi_start(sc, ccb);
 _kernel_lock("/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../dev/ic/mpi.c", 1385);
 return;
stuffup:
 xs->error = 2;
done:
 _kernel_lock("/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../dev/ic/mpi.c", 1391);
 scsi_done(xs);
}
void
mpi_scsi_cmd_done(struct mpi_ccb *ccb)
{
 struct mpi_softc *sc = ccb->ccb_sc;
 struct scsi_xfer *xs = ccb->ccb_cookie;
 struct mpi_ccb_bundle *mcb = ccb->ccb_cmd;
 bus_dmamap_t dmap = ccb->ccb_dmamap;
 struct mpi_msg_scsi_io_error *sie;
 if (xs->datalen != 0) {
  bus_dmamap_sync(sc->sc_dmat, dmap, 0, dmap->dm_mapsize,
      (xs->flags & 0x00800) ? 0x02 :
      0x08);
  bus_dmamap_unload(sc->sc_dmat, dmap);
 }
 xs->error = 0;
 xs->resid = 0;
 if (ccb->ccb_rcb == ((void *)0)) {
  xs->status = 0x00;
  _kernel_lock("/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../dev/ic/mpi.c", 1419);
  scsi_done(xs);
  _kernel_unlock();
  return;
 }
 sie = ccb->ccb_rcb->rcb_reply;
 ;
 ;
 ;
 ;
 ;
 ;
 ;
 ;
 ;
 ;
 if (sie->scsi_state & (1<<3))
  xs->status = 0x22;
 else
  xs->status = sie->scsi_status;
 xs->resid = 0;
 switch (__mswap16(&sie->ioc_status)) {
 case (0x0045):
  xs->resid = xs->datalen - __mswap32(&sie->transfer_count);
 case (0x0000):
 case (0x0040):
  switch (xs->status) {
  case 0x00:
   xs->error = 0;
   break;
  case 0x02:
   xs->error = 1;
   break;
  case 0x08:
  case 0x28:
   xs->error = 5;
   break;
  default:
   xs->error = 2;
   break;
  }
  break;
 case (0x0002):
 case (0x0006):
  xs->error = 5;
  break;
 case (0x0041):
 case (0x0042):
 case (0x0043):
  xs->error = 3;
  break;
 case (0x004B):
 case (0x004C):
  xs->error = 8;
  break;
 default:
  xs->error = 2;
  break;
 }
 if (sie->scsi_state & (1<<0))
  __builtin_memcpy((&xs->sense), (&mcb->mcb_sense), (sizeof(xs->sense)));
 ;
 mpi_push_reply(sc, ccb->ccb_rcb);
 _kernel_lock("/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../dev/ic/mpi.c", 1512);
 scsi_done(xs);
 _kernel_unlock();
}
void
mpi_timeout_xs(void *arg)
{
}
int
mpi_load_xs(struct mpi_ccb *ccb)
{
 struct mpi_softc *sc = ccb->ccb_sc;
 struct scsi_xfer *xs = ccb->ccb_cookie;
 struct mpi_ccb_bundle *mcb = ccb->ccb_cmd;
 struct mpi_msg_scsi_io *io = &mcb->mcb_io;
 struct mpi_sge *sge = ((void *)0);
 struct mpi_sge *nsge = &mcb->mcb_sgl[0];
 struct mpi_sge *ce = ((void *)0), *nce;
 bus_dmamap_t dmap = ccb->ccb_dmamap;
 u_int32_t addr, flags;
 int i, error;
 if (xs->datalen == 0) {
  __swapm32((&nsge->sg_hdr), ((0x1<<28) | (0x1<<31) | (0x1<<30) | (0x1<<24)));
  return (0);
 }
 error = bus_dmamap_load(sc->sc_dmat, dmap,
     xs->data, xs->datalen, ((void *)0), 0x0100 |
     ((xs->flags & 0x00001) ? 0x0001 : 0x0000));
 if (error) {
  printf("%s: error %d loading dmamap\n", ((sc)->sc_dev.dv_xname), error);
  return (1);
 }
 flags = (0x1<<28) | (0x1<<25);
 if (xs->flags & 0x01000)
  flags |= (0x1<<26);
 if (dmap->dm_nsegs > sc->sc_first_sgl_len) {
  ce = &mcb->mcb_sgl[sc->sc_first_sgl_len - 1];
  io->chain_offset = (u_int32_t *)ce - (u_int32_t *)io;
 }
 for (i = 0; i < dmap->dm_nsegs; i++) {
  if (nsge == ce) {
   nsge++;
   sge->sg_hdr |= __extension__({ __uint32_t __swap32gen_x = ((0x1<<31)); (__uint32_t)((__swap32gen_x & 0xff) << 24 | (__swap32gen_x & 0xff00) << 8 | (__swap32gen_x & 0xff0000) >> 8 | (__swap32gen_x & 0xff000000) >> 24); });
   if ((dmap->dm_nsegs - i) > sc->sc_chain_len) {
    nce = &nsge[sc->sc_chain_len - 1];
    addr = (u_int32_t *)nce - (u_int32_t *)nsge;
    addr = addr << 16 |
        sizeof(struct mpi_sge) * sc->sc_chain_len;
   } else {
    nce = ((void *)0);
    addr = sizeof(struct mpi_sge) *
        (dmap->dm_nsegs - i);
   }
   ce->sg_hdr = __extension__({ __uint32_t __swap32gen_x = ((0x3<<28) | (0x1<<25) | addr); (__uint32_t)((__swap32gen_x & 0xff) << 24 | (__swap32gen_x & 0xff00) << 8 | (__swap32gen_x & 0xff0000) >> 8 | (__swap32gen_x & 0xff000000) >> 24); });
   mpi_dvatosge(ce, ccb->ccb_cmd_dva +
       ((u_int8_t *)nsge - (u_int8_t *)mcb));
   ce = nce;
  }
  ;
  sge = nsge++;
  sge->sg_hdr = __extension__({ __uint32_t __swap32gen_x = (flags | dmap->dm_segs[i].ds_len); (__uint32_t)((__swap32gen_x & 0xff) << 24 | (__swap32gen_x & 0xff00) << 8 | (__swap32gen_x & 0xff0000) >> 8 | (__swap32gen_x & 0xff000000) >> 24); });
  mpi_dvatosge(sge, dmap->dm_segs[i].ds_addr);
 }
 sge->sg_hdr |= __extension__({ __uint32_t __swap32gen_x = ((0x1<<31) | (0x1<<30) | (0x1<<24)); (__uint32_t)((__swap32gen_x & 0xff) << 24 | (__swap32gen_x & 0xff00) << 8 | (__swap32gen_x & 0xff0000) >> 8 | (__swap32gen_x & 0xff000000) >> 24); });
 bus_dmamap_sync(sc->sc_dmat, dmap, 0, dmap->dm_mapsize,
     (xs->flags & 0x00800) ? 0x01 :
     0x04);
 return (0);
}
void
mpi_minphys(struct buf *bp, struct scsi_link *sl)
{
 if (bp->b_bcount > (64 * 1024))
  bp->b_bcount = (64 * 1024);
 minphys(bp);
}
int
mpi_scsi_probe_virtual(struct scsi_link *link)
{
 struct mpi_softc *sc = link->adapter_softc;
 struct mpi_cfg_hdr hdr;
 struct mpi_cfg_raid_vol_pg0 *rp0;
 int len;
 int rv;
 if (!((sc->sc_flags) & ((1<<1))))
  return (0);
 if (link->lun > 0)
  return (0);
 rv = mpi_req_cfg_header(sc, (0x08),
     0, link->target, (1<<1), &hdr);
 if (rv != 0)
  return (0);
 len = hdr.page_length * 4;
 rp0 = malloc(len, 127, 0x0002);
 if (rp0 == ((void *)0))
  return (12);
 rv = mpi_req_cfg_page(sc, link->target, (1<<1), &hdr, 1, rp0, len);
 if (rv == 0)
  ((link->flags) |= (0x1000));
 free(rp0, 127, len);
 return (0);
}
int
mpi_scsi_probe(struct scsi_link *link)
{
 struct mpi_softc *sc = link->adapter_softc;
 struct mpi_ecfg_hdr ehdr;
 struct mpi_cfg_sas_dev_pg0 pg0;
 u_int32_t address;
 int rv;
 rv = mpi_scsi_probe_virtual(link);
 if (rv != 0)
  return (rv);
 if (((link->flags) & (0x1000)))
  return (0);
 if (sc->sc_porttype != 0x30)
  return (0);
 address = (1<<28) | link->target;
 if (mpi_req_cfg_header((sc), ((0x12)), (0), (address), (1<<1)|(1<<0), (&ehdr)) != 0)
  return (5);
 if (mpi_req_cfg_page((sc), (address), (1<<1)|(1<<0), (&ehdr), (1), (&pg0), (sizeof(pg0))) != 0)
  return (0);
 ;
 ;
 ;
 ;
 ;
 ;
 ;
 if (((__mswap32(&pg0.device_info)) & ((1<<13)))) {
  ;
  link->flags |= 0x0200;
  link->quirks |= 0x4000;
 }
 return (0);
}
u_int32_t
mpi_read(struct mpi_softc *sc, bus_size_t r)
{
 u_int32_t rv;
 bus_space_barrier(sc->sc_iot, sc->sc_ioh, r, 4,
     0x01);
 rv = bus_space_read_4(sc->sc_iot, sc->sc_ioh, r);
 ;
 return (rv);
}
void
mpi_write(struct mpi_softc *sc, bus_size_t r, u_int32_t v)
{
 ;
 bus_space_write_4(sc->sc_iot, sc->sc_ioh, r, v);
 bus_space_barrier(sc->sc_iot, sc->sc_ioh, r, 4,
     0x02);
}
int
mpi_wait_eq(struct mpi_softc *sc, bus_size_t r, u_int32_t mask,
    u_int32_t target)
{
 int i;
 ;
 for (i = 0; i < 10000; i++) {
  if ((mpi_read(sc, r) & mask) == target)
   return (0);
  delay(1000);
 }
 return (1);
}
int
mpi_wait_ne(struct mpi_softc *sc, bus_size_t r, u_int32_t mask,
    u_int32_t target)
{
 int i;
 ;
 for (i = 0; i < 10000; i++) {
  if ((mpi_read(sc, r) & mask) != target)
   return (0);
  delay(1000);
 }
 return (1);
}
int
mpi_init(struct mpi_softc *sc)
{
 u_int32_t db;
 int i;
 if (mpi_wait_ne(sc, 0x00, (0xf<<28),
     (0x0<<28)) != 0) {
  ;
  return (1);
 }
 db = mpi_read((sc), 0x00);
 if ((db & (0x7<<24)) == (0x3<<24)) {
  ;
  return (0);
 }
 for (i = 0; i < 5; i++) {
  switch (db & (0xf<<28)) {
  case (0x1<<28):
   ;
   return (0);
  case (0x2<<28):
  case (0x4<<28):
   ;
   if (mpi_reset_soft(sc) != 0)
    mpi_reset_hard(sc);
   break;
  case (0x0<<28):
   ;
   if (mpi_wait_ne(sc, 0x00, (0xf<<28),
       (0x0<<28)) != 0)
    return (1);
   break;
  }
  db = mpi_read((sc), 0x00);
 }
 return (1);
}
int
mpi_reset_soft(struct mpi_softc *sc)
{
 ;
 if (mpi_read((sc), 0x00) & (0x1<<27))
  return (1);
 mpi_write((sc), 0x00, (((((0x40)) << 24) & (0xff << 24))));
 if (mpi_wait_eq(sc, 0x30,
     (1<<31), 0) != 0)
  return (1);
 if (mpi_wait_eq(sc, 0x00, (0xf<<28),
     (0x1<<28)) != 0)
  return (1);
 return (0);
}
int
mpi_reset_hard(struct mpi_softc *sc)
{
 ;
 mpi_write(sc, 0x04, 0xff);
 mpi_write(sc, 0x04, 0x04);
 mpi_write(sc, 0x04, 0x0b);
 mpi_write(sc, 0x04, 0x02);
 mpi_write(sc, 0x04, 0x07);
 mpi_write(sc, 0x04, 0x0d);
 mpi_write(sc, 0x08, (1<<2));
 delay(10000);
 mpi_write(sc, 0x04, 0xff);
 return (0);
}
int
mpi_handshake_send(struct mpi_softc *sc, void *buf, size_t dwords)
{
 u_int32_t *query = buf;
 int i;
 if (mpi_read((sc), 0x00) & (0x1<<27))
  return (1);
 if (bus_space_read_4((sc)->sc_iot, (sc)->sc_ioh, 0x30) & (1<<0))
  mpi_write((sc), 0x30, (0));
 mpi_write((sc), 0x00, (((((0x42)) << 24) & (0xff << 24)) | (((dwords) << 16) & (0xff << 16))));
 if (mpi_wait_ne((sc), 0x30, (1<<0), 0) != 0)
  return (1);
 mpi_write((sc), 0x30, (0));
 if (mpi_wait_eq((sc), 0x30, (1<<31), 0) != 0)
  return (1);
 for (i = 0; i < dwords; i++) {
  mpi_write((sc), 0x00, (__extension__({ __uint32_t __swap32gen_x = (query[i]); (__uint32_t)((__swap32gen_x & 0xff) << 24 | (__swap32gen_x & 0xff00) << 8 | (__swap32gen_x & 0xff0000) >> 8 | (__swap32gen_x & 0xff000000) >> 24); })));
  if (mpi_wait_eq((sc), 0x30, (1<<31), 0) != 0)
   return (1);
 }
 return (0);
}
int
mpi_handshake_recv_dword(struct mpi_softc *sc, u_int32_t *dword)
{
 u_int16_t *words = (u_int16_t *)dword;
 int i;
 for (i = 0; i < 2; i++) {
  if (mpi_wait_ne((sc), 0x30, (1<<0), 0) != 0)
   return (1);
  words[i] = __extension__({ __uint16_t __swap16gen_x = (mpi_read((sc), 0x00) & 0xffff); (__uint16_t)((__swap16gen_x & 0xff) << 8 | (__swap16gen_x & 0xff00) >> 8); });
  mpi_write((sc), 0x30, (0));
 }
 return (0);
}
int
mpi_handshake_recv(struct mpi_softc *sc, void *buf, size_t dwords)
{
 struct mpi_msg_reply *reply = buf;
 u_int32_t *dbuf = buf, dummy;
 int i;
 if (mpi_handshake_recv_dword(sc, &dbuf[0]) != 0)
  return (1);
 ;
 for (i = 1; i < (((dwords)<(reply->msg_length))?(dwords):(reply->msg_length)); i++) {
  if (mpi_handshake_recv_dword(sc, &dbuf[i]) != 0)
   return (1);
 }
 while (i++ < reply->msg_length) {
  if (mpi_handshake_recv_dword(sc, &dummy) != 0)
   return (1);
  ;
 }
 if (mpi_wait_ne((sc), 0x30, (1<<0), 0) != 0)
  return (1);
 mpi_write((sc), 0x30, (0));
 return (0);
}
void
mpi_empty_done(struct mpi_ccb *ccb)
{
}
int
mpi_iocfacts(struct mpi_softc *sc)
{
 struct mpi_msg_iocfacts_request ifq;
 struct mpi_msg_iocfacts_reply ifp;
 ;
 __builtin_memset((&ifq), (0), (sizeof(ifq)));
 __builtin_memset((&ifp), (0), (sizeof(ifp)));
 ifq.function = (0x03);
 ifq.chain_offset = 0;
 ifq.msg_flags = 0;
 ifq.msg_context = __extension__({ __uint32_t __swap32gen_x = (0xdeadbeef); (__uint32_t)((__swap32gen_x & 0xff) << 24 | (__swap32gen_x & 0xff00) << 8 | (__swap32gen_x & 0xff0000) >> 8 | (__swap32gen_x & 0xff000000) >> 24); });
 if (mpi_handshake_send(sc, &ifq, (sizeof(ifq) / sizeof(u_int32_t))) != 0) {
  ;
  return (1);
 }
 if (mpi_handshake_recv(sc, &ifp, (sizeof(ifp) / sizeof(u_int32_t))) != 0) {
  ;
  return (1);
 }
 ;
 ;
 ;
 ;
 ;
 ;
 ;
 ;
 ;
 ;
 ;
 ;
 ;
 ;
 ;
 ;
 ;
 sc->sc_fw_maj = ifp.fw_version_maj;
 sc->sc_fw_min = ifp.fw_version_min;
 sc->sc_fw_unit = ifp.fw_version_unit;
 sc->sc_fw_dev = ifp.fw_version_dev;
 sc->sc_maxcmds = __mswap16(&ifp.global_credits);
 sc->sc_maxchdepth = ifp.max_chain_depth;
 sc->sc_ioc_number = ifp.ioc_number;
 if (sc->sc_flags & (1<<0))
  sc->sc_buswidth = 16;
 else
  sc->sc_buswidth =
      (ifp.max_devices == 0) ? 256 : ifp.max_devices;
 if (ifp.flags & (1<<0))
  sc->sc_fw_len = __mswap32(&ifp.fw_image_size);
 sc->sc_repq = (((128)<(__mswap16(&ifp.reply_queue_depth)))?(128):(__mswap16(&ifp.reply_queue_depth)));
 sc->sc_first_sgl_len = ((__mswap16(&ifp.request_frame_size) * 4) -
     sizeof(struct mpi_msg_scsi_io)) / sizeof(struct mpi_sge);
 ;
 sc->sc_chain_len = (__mswap16(&ifp.request_frame_size) * 4) /
     sizeof(struct mpi_sge);
 ;
 sc->sc_max_sgl_len = 36 - 1;
 sc->sc_max_sgl_len -= (36 - sc->sc_first_sgl_len) /
     sc->sc_chain_len;
 ;
 return (0);
}
int
mpi_iocinit(struct mpi_softc *sc)
{
 struct mpi_msg_iocinit_request iiq;
 struct mpi_msg_iocinit_reply iip;
 u_int32_t hi_addr;
 ;
 __builtin_memset((&iiq), (0), (sizeof(iiq)));
 __builtin_memset((&iip), (0), (sizeof(iip)));
 iiq.function = (0x02);
 iiq.whoinit = 0x04;
 iiq.max_devices = (sc->sc_buswidth == 256) ? 0 : sc->sc_buswidth;
 iiq.max_buses = 1;
 iiq.msg_context = __extension__({ __uint32_t __swap32gen_x = (0xd00fd00f); (__uint32_t)((__swap32gen_x & 0xff) << 24 | (__swap32gen_x & 0xff00) << 8 | (__swap32gen_x & 0xff0000) >> 8 | (__swap32gen_x & 0xff000000) >> 24); });
 iiq.reply_frame_size = __extension__({ __uint16_t __swap16gen_x = (80); (__uint16_t)((__swap16gen_x & 0xff) << 8 | (__swap16gen_x & 0xff00) >> 8); });
 hi_addr = (u_int32_t)(((u_int64_t)(sc->sc_requests)->mdm_map->dm_segs[0].ds_addr) >> 32);
 __swapm32((&iiq.host_mfa_hi_addr), (hi_addr));
 __swapm32((&iiq.sense_buffer_hi_addr), (hi_addr));
 iiq.msg_version_maj = 0x01;
 iiq.msg_version_min = 0x02;
 iiq.hdr_version_unit = 0x0d;
 iiq.hdr_version_dev = 0x00;
 if (mpi_handshake_send(sc, &iiq, (sizeof(iiq) / sizeof(u_int32_t))) != 0) {
  ;
  return (1);
 }
 if (mpi_handshake_recv(sc, &iip, (sizeof(iip) / sizeof(u_int32_t))) != 0) {
  ;
  return (1);
 }
 ;
 ;
 ;
 ;
 ;
 return (0);
}
int
mpi_portfacts(struct mpi_softc *sc)
{
 struct mpi_ccb *ccb;
 struct mpi_msg_portfacts_request *pfq;
 volatile struct mpi_msg_portfacts_reply *pfp;
 int rv = 1;
 ;
 ccb = scsi_io_get(&sc->sc_iopool, 0x00001);
 if (ccb == ((void *)0)) {
  ;
  return (rv);
 }
 ccb->ccb_done = mpi_empty_done;
 pfq = ccb->ccb_cmd;
 pfq->function = (0x05);
 pfq->chain_offset = 0;
 pfq->msg_flags = 0;
 pfq->port_number = 0;
 if (mpi_poll(sc, ccb, 50000) != 0) {
  ;
  goto err;
 }
 if (ccb->ccb_rcb == ((void *)0)) {
  ;
  goto err;
 }
 pfp = ccb->ccb_rcb->rcb_reply;
 ;
 ;
 ;
 ;
 ;
 ;
 ;
 ;
 ;
 sc->sc_porttype = pfp->port_type;
 if (sc->sc_target == -1)
  sc->sc_target = __mswap16(&pfp->port_scsi_id);
 mpi_push_reply(sc, ccb->ccb_rcb);
 rv = 0;
err:
 scsi_io_put(&sc->sc_iopool, ccb);
 return (rv);
}
int
mpi_cfg_coalescing(struct mpi_softc *sc)
{
 struct mpi_cfg_hdr hdr;
 struct mpi_cfg_ioc_pg1 pg;
 u_int32_t flags;
 if (mpi_req_cfg_header((sc), ((0x01)), (1), (0), (1<<1), (&hdr)) != 0) {
  ;
  return (1);
 }
 if (mpi_req_cfg_page((sc), (0), (1<<1), (&hdr), (1), (&pg), (sizeof(pg))) != 0) {
  ;
  return (1);
 }
 ;
 ;
 ;
 ;
 flags = __mswap32(&pg.flags);
 if (!((flags) & ((1<<0))))
  return (0);
 ((pg.flags) &= ~(__extension__({ __uint32_t __swap32gen_x = ((1<<0)); (__uint32_t)((__swap32gen_x & 0xff) << 24 | (__swap32gen_x & 0xff00) << 8 | (__swap32gen_x & 0xff0000) >> 8 | (__swap32gen_x & 0xff000000) >> 24); })));
 if (mpi_req_cfg_page((sc), (0), (1<<1), (&hdr), (0), (&pg), (sizeof(pg))) != 0) {
  ;
  return (1);
 }
 return (0);
}
int
mpi_eventnotify(struct mpi_softc *sc)
{
 struct mpi_ccb *ccb;
 struct mpi_msg_event_request *enq;
 ccb = scsi_io_get(&sc->sc_iopool, 0x00001);
 if (ccb == ((void *)0)) {
  ;
  return (1);
 }
 sc->sc_evt_ccb = ccb;
 do { (&sc->sc_evt_ack_queue)->sqh_first = ((void *)0); (&sc->sc_evt_ack_queue)->sqh_last = &(&sc->sc_evt_ack_queue)->sqh_first; } while (0);
 do { (void)(((void *)0)); (void)(0); __mtx_init((&sc->sc_evt_ack_mtx), ((((5)) > 0 && ((5)) < 12) ? 12 : ((5)))); } while (0);
 scsi_ioh_set(&sc->sc_evt_ack_handler, &sc->sc_iopool,
     mpi_eventack, sc);
 ccb->ccb_done = mpi_eventnotify_done;
 enq = ccb->ccb_cmd;
 enq->function = (0x07);
 enq->chain_offset = 0;
 enq->event_switch = (0x01);
 mpi_start(sc, ccb);
 return (0);
}
void
mpi_eventnotify_done(struct mpi_ccb *ccb)
{
 struct mpi_softc *sc = ccb->ccb_sc;
 struct mpi_rcb *rcb = ccb->ccb_rcb;
 struct mpi_msg_event_reply *enp = rcb->rcb_reply;
 ;
 ;
 ;
 ;
 ;
 ;
 ;
 ;
 switch (__mswap32(&enp->event)) {
 case 0x0a:
 case 0x12:
  break;
 case 0x0f:
  if (sc->sc_scsibus == ((void *)0))
   break;
  if (mpi_evt_sas(sc, rcb) != 0) {
   return;
  }
  break;
 case 0x06:
  if (sc->sc_scsibus != ((void *)0) &&
      sc->sc_porttype == 0x10)
   task_add(systq, &sc->sc_evt_rescan);
  break;
 default:
  ;
  break;
 }
 mpi_eventnotify_free(sc, rcb);
}
void
mpi_eventnotify_free(struct mpi_softc *sc, struct mpi_rcb *rcb)
{
 struct mpi_msg_event_reply *enp = rcb->rcb_reply;
 if (enp->ack_required) {
  __mtx_enter(&sc->sc_evt_ack_mtx );
  do { (rcb)->rcb_link.sqe_next = ((void *)0); *(&sc->sc_evt_ack_queue)->sqh_last = (rcb); (&sc->sc_evt_ack_queue)->sqh_last = &(rcb)->rcb_link.sqe_next; } while (0);
  __mtx_leave(&sc->sc_evt_ack_mtx );
  scsi_ioh_add(&sc->sc_evt_ack_handler);
 } else
  mpi_push_reply(sc, rcb);
}
int
mpi_evt_sas(struct mpi_softc *sc, struct mpi_rcb *rcb)
{
 struct mpi_evt_sas_change *ch;
 u_int8_t *data;
 data = rcb->rcb_reply;
 data += sizeof(struct mpi_msg_event_reply);
 ch = (struct mpi_evt_sas_change *)data;
 if (ch->bus != 0)
  return (0);
 switch (ch->reason) {
 case 0x03:
 case 0x06:
  _kernel_lock("/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../dev/ic/mpi.c", 2378);
  if (scsi_req_probe(sc->sc_scsibus, ch->target, -1) != 0) {
   printf("%s: unable to request attach of %d\n",
       ((sc)->sc_dev.dv_xname), ch->target);
  }
  _kernel_unlock();
  break;
 case 0x04:
  _kernel_lock("/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../dev/ic/mpi.c", 2387);
  scsi_activate(sc->sc_scsibus, ch->target, -1, 1);
  _kernel_unlock();
  __mtx_enter(&sc->sc_evt_scan_mtx );
  do { (rcb)->rcb_link.sqe_next = ((void *)0); *(&sc->sc_evt_scan_queue)->sqh_last = (rcb); (&sc->sc_evt_scan_queue)->sqh_last = &(rcb)->rcb_link.sqe_next; } while (0);
  __mtx_leave(&sc->sc_evt_scan_mtx );
  scsi_ioh_add(&sc->sc_evt_scan_handler);
  return (1);
 case 0x05:
 case 0x07:
 case 0x08:
  break;
 default:
  printf("%s: unknown reason for SAS device status change: "
      "0x%02x\n", ((sc)->sc_dev.dv_xname), ch->reason);
  break;
 }
 return (0);
}
void
mpi_evt_sas_detach(void *cookie, void *io)
{
 struct mpi_softc *sc = cookie;
 struct mpi_ccb *ccb = io;
 struct mpi_rcb *rcb, *next;
 struct mpi_msg_event_reply *enp;
 struct mpi_evt_sas_change *ch;
 struct mpi_msg_scsi_task_request *str;
 ;
 __mtx_enter(&sc->sc_evt_scan_mtx );
 rcb = ((&sc->sc_evt_scan_queue)->sqh_first);
 if (rcb != ((void *)0)) {
  next = ((rcb)->rcb_link.sqe_next);
  do { if (((&sc->sc_evt_scan_queue)->sqh_first = (&sc->sc_evt_scan_queue)->sqh_first->rcb_link.sqe_next) == ((void *)0)) (&sc->sc_evt_scan_queue)->sqh_last = &(&sc->sc_evt_scan_queue)->sqh_first; } while (0);
 }
 __mtx_leave(&sc->sc_evt_scan_mtx );
 if (rcb == ((void *)0)) {
  scsi_io_put(&sc->sc_iopool, ccb);
  return;
 }
 enp = rcb->rcb_reply;
 ch = (struct mpi_evt_sas_change *)(enp + 1);
 ccb->ccb_done = mpi_evt_sas_detach_done;
 str = ccb->ccb_cmd;
 str->target_id = ch->target;
 str->bus = 0;
 str->function = (0x01);
 str->task_type = (0x03);
 mpi_eventnotify_free(sc, rcb);
 mpi_start(sc, ccb);
 if (next != ((void *)0))
  scsi_ioh_add(&sc->sc_evt_scan_handler);
}
void
mpi_evt_sas_detach_done(struct mpi_ccb *ccb)
{
 struct mpi_softc *sc = ccb->ccb_sc;
 struct mpi_msg_scsi_task_reply *r = ccb->ccb_rcb->rcb_reply;
 _kernel_lock("/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../dev/ic/mpi.c", 2463);
 if (scsi_req_detach(sc->sc_scsibus, r->target_id, -1,
     0x01) != 0) {
  printf("%s: unable to request detach of %d\n",
      ((sc)->sc_dev.dv_xname), r->target_id);
 }
 _kernel_unlock();
 mpi_push_reply(sc, ccb->ccb_rcb);
 scsi_io_put(&sc->sc_iopool, ccb);
}
void
mpi_fc_rescan(void *xsc)
{
 struct mpi_softc *sc = xsc;
 struct mpi_cfg_hdr hdr;
 struct mpi_cfg_fc_device_pg0 pg;
 struct scsi_link *link;
 u_int8_t devmap[256 / 8];
 u_int32_t id = 0xffffff;
 int i;
 __builtin_memset((devmap), (0), (sizeof(devmap)));
 do {
  if (mpi_req_cfg_header(sc, (0x06), 0,
      id, 0, &hdr) != 0) {
   printf("%s: header get for rescan of 0x%08x failed\n",
       ((sc)->sc_dev.dv_xname), id);
   return;
  }
  __builtin_memset((&pg), (0), (sizeof(pg)));
  if (mpi_req_cfg_page(sc, id, 0, &hdr, 1, &pg, sizeof(pg)) != 0)
   break;
  if (((pg.flags) & ((1<<0))) &&
      pg.current_bus == 0)
   ((devmap)[(pg.current_target_id)>>3] |= 1<<((pg.current_target_id)&(8 -1)));
  id = __mswap32(&pg.port_id);
 } while (id <= 0xff0000);
 for (i = 0; i < sc->sc_buswidth; i++) {
  link = scsi_get_link(sc->sc_scsibus, i, 0);
  if (((devmap)[(i)>>3] & (1<<((i)&(8 -1))))) {
   if (link == ((void *)0))
    scsi_probe_target(sc->sc_scsibus, i);
  } else {
   if (link != ((void *)0)) {
    scsi_activate(sc->sc_scsibus, i, -1,
        1);
    scsi_detach_target(sc->sc_scsibus, i,
        0x01);
   }
  }
 }
}
void
mpi_eventack(void *cookie, void *io)
{
 struct mpi_softc *sc = cookie;
 struct mpi_ccb *ccb = io;
 struct mpi_rcb *rcb, *next;
 struct mpi_msg_event_reply *enp;
 struct mpi_msg_eventack_request *eaq;
 ;
 __mtx_enter(&sc->sc_evt_ack_mtx );
 rcb = ((&sc->sc_evt_ack_queue)->sqh_first);
 if (rcb != ((void *)0)) {
  next = ((rcb)->rcb_link.sqe_next);
  do { if (((&sc->sc_evt_ack_queue)->sqh_first = (&sc->sc_evt_ack_queue)->sqh_first->rcb_link.sqe_next) == ((void *)0)) (&sc->sc_evt_ack_queue)->sqh_last = &(&sc->sc_evt_ack_queue)->sqh_first; } while (0);
 }
 __mtx_leave(&sc->sc_evt_ack_mtx );
 if (rcb == ((void *)0)) {
  scsi_io_put(&sc->sc_iopool, ccb);
  return;
 }
 enp = rcb->rcb_reply;
 ccb->ccb_done = mpi_eventack_done;
 eaq = ccb->ccb_cmd;
 eaq->function = (0x08);
 eaq->event = enp->event;
 eaq->event_context = enp->event_context;
 mpi_push_reply(sc, rcb);
 mpi_start(sc, ccb);
 if (next != ((void *)0))
  scsi_ioh_add(&sc->sc_evt_ack_handler);
}
void
mpi_eventack_done(struct mpi_ccb *ccb)
{
 struct mpi_softc *sc = ccb->ccb_sc;
 ;
 mpi_push_reply(sc, ccb->ccb_rcb);
 scsi_io_put(&sc->sc_iopool, ccb);
}
int
mpi_portenable(struct mpi_softc *sc)
{
 struct mpi_ccb *ccb;
 struct mpi_msg_portenable_request *peq;
 int rv = 0;
 ;
 ccb = scsi_io_get(&sc->sc_iopool, 0x00001);
 if (ccb == ((void *)0)) {
  ;
  return (1);
 }
 ccb->ccb_done = mpi_empty_done;
 peq = ccb->ccb_cmd;
 peq->function = (0x06);
 peq->port_number = 0;
 if (mpi_poll(sc, ccb, 50000) != 0) {
  ;
  return (1);
 }
 if (ccb->ccb_rcb == ((void *)0)) {
  ;
  rv = 1;
 } else
  mpi_push_reply(sc, ccb->ccb_rcb);
 scsi_io_put(&sc->sc_iopool, ccb);
 return (rv);
}
int
mpi_fwupload(struct mpi_softc *sc)
{
 struct mpi_ccb *ccb;
 struct {
  struct mpi_msg_fwupload_request req;
  struct mpi_sge sge;
 } __attribute__((__packed__)) *bundle;
 struct mpi_msg_fwupload_reply *upp;
 int rv = 0;
 if (sc->sc_fw_len == 0)
  return (0);
 ;
 sc->sc_fw = mpi_dmamem_alloc(sc, sc->sc_fw_len);
 if (sc->sc_fw == ((void *)0)) {
  ;
  return (1);
 }
 ccb = scsi_io_get(&sc->sc_iopool, 0x00001);
 if (ccb == ((void *)0)) {
  ;
  goto err;
 }
 ccb->ccb_done = mpi_empty_done;
 bundle = ccb->ccb_cmd;
 bundle->req.function = (0x12);
 bundle->req.image_type = (0x00);
 bundle->req.tce.details_length = 12;
 __swapm32((&bundle->req.tce.image_size), (sc->sc_fw_len));
 __swapm32((&bundle->sge.sg_hdr), ((0x1<<28) | (0x1<<25) | (0x1<<31) | (0x1<<30) | (0x1<<24) | (u_int32_t)sc->sc_fw_len));
 mpi_dvatosge(&bundle->sge, ((u_int64_t)(sc->sc_fw)->mdm_map->dm_segs[0].ds_addr));
 if (mpi_poll(sc, ccb, 50000) != 0) {
  ;
  goto err;
 }
 if (ccb->ccb_rcb == ((void *)0))
  panic("%s: unable to do fw upload", ((sc)->sc_dev.dv_xname));
 upp = ccb->ccb_rcb->rcb_reply;
 if (__mswap16(&upp->ioc_status) != (0x0000))
  rv = 1;
 mpi_push_reply(sc, ccb->ccb_rcb);
 scsi_io_put(&sc->sc_iopool, ccb);
 return (rv);
err:
 mpi_dmamem_free(sc, sc->sc_fw);
 return (1);
}
int
mpi_manufacturing(struct mpi_softc *sc)
{
 char board_name[33];
 struct mpi_cfg_hdr hdr;
 struct mpi_cfg_manufacturing_pg0 *pg;
 size_t pagelen;
 int rv = 1;
 if (mpi_req_cfg_header((sc), ((0x09)), (0), (0), (1<<1), (&hdr)) != 0)
  return (1);
 pagelen = hdr.page_length * 4;
 if (pagelen < sizeof(*pg))
  return (1);
 pg = malloc(pagelen, 127, 0x0001|0x0004);
 if (pg == ((void *)0))
  return (1);
 if (mpi_req_cfg_page((sc), (0), (1<<1), (&hdr), (1), (pg), (pagelen)) != 0)
  goto out;
 scsi_strvis(board_name, pg->board_name, sizeof(pg->board_name));
 printf("%s: %s, firmware %d.%d.%d.%d\n", ((sc)->sc_dev.dv_xname), board_name,
     sc->sc_fw_maj, sc->sc_fw_min, sc->sc_fw_unit, sc->sc_fw_dev);
 rv = 0;
out:
 free(pg, 127, pagelen);
 return (rv);
}
void
mpi_get_raid(struct mpi_softc *sc)
{
 struct mpi_cfg_hdr hdr;
 struct mpi_cfg_ioc_pg2 *vol_page;
 size_t pagelen;
 u_int32_t capabilities;
 ;
 if (mpi_req_cfg_header((sc), ((0x01)), (2), (0), (1<<1), (&hdr)) != 0) {
  ;
  return;
 }
 pagelen = hdr.page_length * 4;
 vol_page = malloc(pagelen, 127, 0x0001|0x0004);
 if (vol_page == ((void *)0)) {
  ;
  return;
 }
 if (mpi_req_cfg_page((sc), (0), (1<<1), (&hdr), (1), (vol_page), (pagelen)) != 0) {
  ;
  goto out;
 }
 capabilities = __mswap32(&vol_page->capabilities);
 ;
 ;
 if (capabilities == 0xdeadbeef) {
  printf("%s: deadbeef in raid configuration\n", ((sc)->sc_dev.dv_xname));
  goto out;
 }
 if (((capabilities) & (( (1<<0) | (1<<1) | (1<<2)))))
  sc->sc_flags |= (1<<1);
out:
 free(vol_page, 127, pagelen);
}
int
mpi_req_cfg_header(struct mpi_softc *sc, u_int8_t type, u_int8_t number,
    u_int32_t address, int flags, void *p)
{
 struct mpi_ccb *ccb;
 struct mpi_msg_config_request *cq;
 struct mpi_msg_config_reply *cp;
 struct mpi_cfg_hdr *hdr = p;
 struct mpi_ecfg_hdr *ehdr = p;
 int etype = 0;
 int rv = 0;
 ;
 ccb = scsi_io_get(&sc->sc_iopool,
     ((flags) & ((1<<1))) ? 0x00001 : 0);
 if (ccb == ((void *)0)) {
  ;
  return (1);
 }
 if (((flags) & ((1<<0)))) {
  etype = type;
  type = (0x0F);
 }
 cq = ccb->ccb_cmd;
 cq->function = (0x04);
 cq->action = (0x00);
 cq->config_header.page_number = number;
 cq->config_header.page_type = type;
 cq->ext_page_type = etype;
 __swapm32((&cq->page_address), (address));
 __swapm32((&cq->page_buffer.sg_hdr), ((0x1<<28) | (0x1<<31) | (0x1<<30) | (0x1<<24)));
 ccb->ccb_done = mpi_empty_done;
 if (((flags) & ((1<<1)))) {
  if (mpi_poll(sc, ccb, 50000) != 0) {
   ;
   return (1);
  }
 } else
  mpi_wait(sc, ccb);
 if (ccb->ccb_rcb == ((void *)0))
  panic("%s: unable to fetch config header", ((sc)->sc_dev.dv_xname));
 cp = ccb->ccb_rcb->rcb_reply;
 ;
 ;
 ;
 ;
 ;
 ;
 if (__mswap16(&cp->ioc_status) != (0x0000))
  rv = 1;
 else if (((flags) & ((1<<0)))) {
  __builtin_memset((ehdr), (0), (sizeof(*ehdr)));
  ehdr->page_version = cp->config_header.page_version;
  ehdr->page_number = cp->config_header.page_number;
  ehdr->page_type = cp->config_header.page_type;
  ehdr->ext_page_length = cp->ext_page_length;
  ehdr->ext_page_type = cp->ext_page_type;
 } else
  *hdr = cp->config_header;
 mpi_push_reply(sc, ccb->ccb_rcb);
 scsi_io_put(&sc->sc_iopool, ccb);
 return (rv);
}
int
mpi_req_cfg_page(struct mpi_softc *sc, u_int32_t address, int flags,
    void *p, int read, void *page, size_t len)
{
 struct mpi_ccb *ccb;
 struct mpi_msg_config_request *cq;
 struct mpi_msg_config_reply *cp;
 struct mpi_cfg_hdr *hdr = p;
 struct mpi_ecfg_hdr *ehdr = p;
 char *kva;
 int page_length;
 int rv = 0;
 ;
 page_length = ((flags) & ((1<<0))) ?
     __mswap16(&ehdr->ext_page_length) : hdr->page_length;
 if (len > 512 - sizeof(struct mpi_msg_config_request) ||
     len < page_length * 4)
  return (1);
 ccb = scsi_io_get(&sc->sc_iopool,
     ((flags) & ((1<<1))) ? 0x00001 : 0);
 if (ccb == ((void *)0)) {
  ;
  return (1);
 }
 cq = ccb->ccb_cmd;
 cq->function = (0x04);
 cq->action = (read ? (0x01) :
     (0x02));
 if (((flags) & ((1<<0)))) {
  cq->config_header.page_version = ehdr->page_version;
  cq->config_header.page_number = ehdr->page_number;
  cq->config_header.page_type = ehdr->page_type;
  cq->ext_page_len = ehdr->ext_page_length;
  cq->ext_page_type = ehdr->ext_page_type;
 } else
  cq->config_header = *hdr;
 cq->config_header.page_type &= (0x0f);
 __swapm32((&cq->page_address), (address));
 __swapm32((&cq->page_buffer.sg_hdr), ((0x1<<28) | (0x1<<31) | (0x1<<30) | (0x1<<24) | (page_length * 4) | (read ? (0x0<<26) : (0x1<<26))));
 mpi_dvatosge(&cq->page_buffer, ccb->ccb_cmd_dva +
     sizeof(struct mpi_msg_config_request));
 kva = ccb->ccb_cmd;
 kva += sizeof(struct mpi_msg_config_request);
 if (!read)
  __builtin_memcpy((kva), (page), (len));
 ccb->ccb_done = mpi_empty_done;
 if (((flags) & ((1<<1)))) {
  if (mpi_poll(sc, ccb, 50000) != 0) {
   ;
   return (1);
  }
 } else
  mpi_wait(sc, ccb);
 if (ccb->ccb_rcb == ((void *)0)) {
  scsi_io_put(&sc->sc_iopool, ccb);
  return (1);
 }
 cp = ccb->ccb_rcb->rcb_reply;
 ;
 ;
 ;
 ;
 ;
 ;
 if (__mswap16(&cp->ioc_status) != (0x0000))
  rv = 1;
 else if (read)
  __builtin_memcpy((page), (kva), (len));
 mpi_push_reply(sc, ccb->ccb_rcb);
 scsi_io_put(&sc->sc_iopool, ccb);
 return (rv);
}
int
mpi_scsi_ioctl(struct scsi_link *link, u_long cmd, caddr_t addr, int flag)
{
 struct mpi_softc *sc = (struct mpi_softc *)link->adapter_softc;
 ;
 switch (cmd) {
 case ((unsigned long)0x40000000 | ((sizeof(struct dk_cache) & 0x1fff) << 16) | ((('d')) << 8) | ((117))):
 case ((unsigned long)0x80000000 | ((sizeof(struct dk_cache) & 0x1fff) << 16) | ((('d')) << 8) | ((118))):
  if (((link->flags) & (0x1000))) {
   return (mpi_ioctl_cache(link, cmd,
       (struct dk_cache *)addr));
  }
  break;
 default:
  if (sc->sc_ioctl)
   return (sc->sc_ioctl(link->adapter_softc, cmd, addr));
  break;
 }
 return (25);
}
int
mpi_ioctl_cache(struct scsi_link *link, u_long cmd, struct dk_cache *dc)
{
 struct mpi_softc *sc = (struct mpi_softc *)link->adapter_softc;
 struct mpi_ccb *ccb;
 int len, rv;
 struct mpi_cfg_hdr hdr;
 struct mpi_cfg_raid_vol_pg0 *rpg0;
 int enabled;
 struct mpi_msg_raid_action_request *req;
 struct mpi_msg_raid_action_reply *rep;
 struct mpi_raid_settings settings;
 rv = mpi_req_cfg_header(sc, (0x08), 0,
     link->target, (1<<1), &hdr);
 if (rv != 0)
  return (5);
 len = sizeof(*rpg0) + sc->sc_vol_page->max_physdisks *
     sizeof(struct mpi_cfg_raid_vol_pg0_physdisk);
 rpg0 = malloc(len, 127, 0x0002);
 if (rpg0 == ((void *)0))
  return (12);
 if (mpi_req_cfg_page(sc, link->target, (1<<1), &hdr, 1,
     rpg0, len) != 0) {
  ;
  rv = 5;
  goto done;
 }
 enabled = ((__mswap16(&rpg0->settings.volume_settings)) & ((1<<0))) ? 1 : 0;
 if (cmd == ((unsigned long)0x40000000 | ((sizeof(struct dk_cache) & 0x1fff) << 16) | ((('d')) << 8) | ((117)))) {
  dc->wrcache = enabled;
  dc->rdcache = 0;
  goto done;
 }
 if (dc->rdcache) {
  rv = 45;
  goto done;
 }
 if (((dc->wrcache) ? 1 : 0) == enabled)
  goto done;
 settings = rpg0->settings;
 if (dc->wrcache) {
  ((settings.volume_settings) |= (__extension__({ __uint16_t __swap16gen_x = ((1<<0)); (__uint16_t)((__swap16gen_x & 0xff) << 8 | (__swap16gen_x & 0xff00) >> 8); })));
 } else {
  ((settings.volume_settings) &= ~(__extension__({ __uint16_t __swap16gen_x = ((1<<0)); (__uint16_t)((__swap16gen_x & 0xff) << 8 | (__swap16gen_x & 0xff00) >> 8); })));
 }
 ccb = scsi_io_get(&sc->sc_iopool, 0x00001);
 if (ccb == ((void *)0)) {
  rv = 12;
  goto done;
 }
 req = ccb->ccb_cmd;
 req->function = (0x15);
 req->action = (0x08);
 req->vol_id = rpg0->volume_id;
 req->vol_bus = rpg0->volume_bus;
 __builtin_memcpy((&req->data_word), (&settings), (sizeof(req->data_word)));
 ccb->ccb_done = mpi_empty_done;
 if (mpi_poll(sc, ccb, 50000) != 0) {
  rv = 5;
  goto done;
 }
 rep = (struct mpi_msg_raid_action_reply *)ccb->ccb_rcb;
 if (rep == ((void *)0))
  panic("%s: raid volume settings change failed", ((sc)->sc_dev.dv_xname));
 switch (__mswap16(&rep->action_status)) {
 case (0x0000):
  rv = 0;
  break;
 default:
  rv = 5;
  break;
 }
 mpi_push_reply(sc, ccb->ccb_rcb);
 scsi_io_put(&sc->sc_iopool, ccb);
done:
 free(rpg0, 127, len);
 return (rv);
}
int
mpi_bio_get_pg0_raid(struct mpi_softc *sc, int id)
{
 int len, rv = 22;
 u_int32_t address;
 struct mpi_cfg_hdr hdr;
 struct mpi_cfg_raid_vol_pg0 *rpg0;
 if (mpi_req_cfg_page(sc, 0, 0, &sc->sc_cfg_hdr, 1, sc->sc_vol_page,
     sc->sc_cfg_hdr.page_length * 4) != 0) {
  ;
  goto done;
 }
 if (id > sc->sc_vol_page->active_vols) {
  ;
  goto done;
 }
 len = sizeof *rpg0 + sc->sc_vol_page->max_physdisks *
     sizeof(struct mpi_cfg_raid_vol_pg0_physdisk);
 rpg0 = malloc(len, 2, 0x0001 | 0x0004);
 if (rpg0 == ((void *)0)) {
  printf("%s: can't get memory for RAID page 0, "
      "bio disabled\n", ((sc)->sc_dev.dv_xname));
  goto done;
 }
 if (sc->sc_rpg0)
  free(sc->sc_rpg0, 2, 0);
 sc->sc_rpg0 = rpg0;
 address = sc->sc_vol_list[id].vol_id |
     (sc->sc_vol_list[id].vol_bus << 8);
 if (mpi_req_cfg_header(sc, (0x08), 0,
     address, 0, &hdr) != 0)
  goto done;
 if (mpi_req_cfg_page(sc, address, 0, &hdr, 1, rpg0, len)) {
  ;
  goto done;
 }
 rv = 0;
done:
 return (rv);
}
int
mpi_ioctl(struct device *dev, u_long cmd, caddr_t addr)
{
 struct mpi_softc *sc = (struct mpi_softc *)dev;
 int error = 0;
 ;
 if (sc->sc_ioctl != mpi_ioctl)
  return (22);
 _rw_enter_write(&sc->sc_lock );
 switch (cmd) {
 case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct bioc_inq) & 0x1fff) << 16) | ((('B')) << 8) | ((32))):
  ;
  error = mpi_ioctl_inq(sc, (struct bioc_inq *)addr);
  break;
 case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct bioc_vol) & 0x1fff) << 16) | ((('B')) << 8) | ((34))):
  ;
  error = mpi_ioctl_vol(sc, (struct bioc_vol *)addr);
  break;
 case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct bioc_disk) & 0x1fff) << 16) | ((('B')) << 8) | ((33))):
  ;
  error = mpi_ioctl_disk(sc, (struct bioc_disk *)addr);
  break;
 case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct bioc_alarm) & 0x1fff) << 16) | ((('B')) << 8) | ((35))):
  ;
  break;
 case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct bioc_blink) & 0x1fff) << 16) | ((('B')) << 8) | ((36))):
  ;
  break;
 case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(struct bioc_setstate) & 0x1fff) << 16) | ((('B')) << 8) | ((37))):
  ;
  error = mpi_ioctl_setstate(sc, (struct bioc_setstate *)addr);
  break;
 default:
  ;
  error = 22;
 }
 _rw_exit_write(&sc->sc_lock );
 return (error);
}
int
mpi_ioctl_inq(struct mpi_softc *sc, struct bioc_inq *bi)
{
 if (!(sc->sc_flags & (1<<1))) {
  bi->bi_novol = 0;
  bi->bi_nodisk = 0;
 }
 if (mpi_req_cfg_page((sc), (0), (1<<1), (&sc->sc_cfg_hdr), (1), (sc->sc_vol_page), (sc->sc_cfg_hdr.page_length * 4)) != 0) {
  ;
  return (22);
 }
 ;
 bi->bi_novol = sc->sc_vol_page->active_vols;
 bi->bi_nodisk = sc->sc_vol_page->active_physdisks;
 strlcpy(bi->bi_dev, ((sc)->sc_dev.dv_xname), sizeof(bi->bi_dev));
 return (0);
}
int
mpi_ioctl_vol(struct mpi_softc *sc, struct bioc_vol *bv)
{
 int i, vol, id, rv = 22;
 struct device *dev;
 struct scsi_link *link;
 struct mpi_cfg_raid_vol_pg0 *rpg0;
 char *vendp;
 id = bv->bv_volid;
 if (mpi_bio_get_pg0_raid(sc, id))
  goto done;
 if (id > sc->sc_vol_page->active_vols)
  return (22);
 rpg0 = sc->sc_rpg0;
 if (rpg0 == ((void *)0))
  goto done;
 switch (rpg0->volume_state) {
 case (0x00):
  bv->bv_status = 0x00;
  break;
 case (0x01):
  bv->bv_status = 0x02;
  break;
 case (0x02):
 case (0x03):
  bv->bv_status = 0x01;
  break;
 default:
  bv->bv_status = 0xff;
 }
 if (rpg0->volume_status & (1<<2))
  bv->bv_status = 0x05;
 bv->bv_size = (uint64_t)__mswap32(&rpg0->max_lba) * 512;
 switch (sc->sc_vol_list[id].vol_type) {
 case (0x00):
  bv->bv_level = 0;
  break;
 case (0x01):
 case (0x02):
  bv->bv_level = 1;
  break;
 case (0x03):
  bv->bv_level = 5;
  break;
 case (0x04):
  bv->bv_level = 6;
  break;
 case (0x05):
  bv->bv_level = 10;
  break;
 case (0x06):
  bv->bv_level = 50;
  break;
 default:
  bv->bv_level = -1;
 }
 bv->bv_nodisk = rpg0->num_phys_disks;
 for (i = 0, vol = -1; i < sc->sc_buswidth; i++) {
  link = scsi_get_link(sc->sc_scsibus, i, 0);
  if (link == ((void *)0))
   continue;
  if (!(link->flags & 0x1000))
   continue;
  vol++;
  if (vol == bv->bv_volid) {
   dev = link->device_softc;
   vendp = link->inqdata.vendor;
   __builtin_memcpy((bv->bv_vendor), (vendp), (sizeof bv->bv_vendor));
   bv->bv_vendor[sizeof(bv->bv_vendor) - 1] = '\0';
   strlcpy(bv->bv_dev, dev->dv_xname, sizeof bv->bv_dev);
   break;
  }
 }
 rv = 0;
done:
 return (rv);
}
int
mpi_ioctl_disk(struct mpi_softc *sc, struct bioc_disk *bd)
{
 int pdid, id, rv = 22;
 u_int32_t address;
 struct mpi_cfg_hdr hdr;
 struct mpi_cfg_raid_vol_pg0 *rpg0;
 struct mpi_cfg_raid_vol_pg0_physdisk *physdisk;
 struct mpi_cfg_raid_physdisk_pg0 pdpg0;
 id = bd->bd_volid;
 if (mpi_bio_get_pg0_raid(sc, id))
  goto done;
 if (id > sc->sc_vol_page->active_vols)
  return (22);
 rpg0 = sc->sc_rpg0;
 if (rpg0 == ((void *)0))
  goto done;
 pdid = bd->bd_diskid;
 if (pdid > rpg0->num_phys_disks)
  goto done;
 physdisk = (struct mpi_cfg_raid_vol_pg0_physdisk *)(rpg0 + 1);
 physdisk += pdid;
 address = physdisk->phys_disk_num;
 if (mpi_req_cfg_header((sc), ((0x0A)), (0), (address), (1<<1), (&hdr)) != 0)
  goto done;
 if (mpi_req_cfg_page((sc), (address), (1<<1), (&hdr), (1), (&pdpg0), (sizeof pdpg0))) {
  bd->bd_status = 0x02;
  return (0);
 }
 bd->bd_channel = pdpg0.phys_disk_bus;
 bd->bd_target = pdpg0.phys_disk_id;
 bd->bd_lun = 0;
 bd->bd_size = (uint64_t)__mswap32(&pdpg0.max_lba) * 512;
 strlcpy(bd->bd_vendor, (char *)pdpg0.vendor_id, sizeof(bd->bd_vendor));
 switch (pdpg0.phys_disk_state) {
 case (0x00):
  bd->bd_status = 0x00;
  break;
 case (0x01):
 case (0x03):
  bd->bd_status = 0x02;
  break;
 case (0x06):
 case (0xff):
 case (0x05):
  bd->bd_status = 0x01;
  break;
 case (0x04):
  bd->bd_status = 0x06;
  break;
 case (0x02):
 default:
  bd->bd_status = 0xff;
  break;
 }
 rv = 0;
done:
 return (rv);
}
int
mpi_ioctl_setstate(struct mpi_softc *sc, struct bioc_setstate *bs)
{
 return (25);
}
int
mpi_create_sensors(struct mpi_softc *sc)
{
 struct device *dev;
 struct scsi_link *link;
 int i, vol, nsensors;
 for (i = 0, vol = 0; i < sc->sc_buswidth; i++) {
  link = scsi_get_link(sc->sc_scsibus, i, 0);
  if (link == ((void *)0))
   continue;
  if (!(link->flags & 0x1000))
   continue;
  vol++;
 }
 if (vol == 0)
  return (0);
 sc->sc_sensors = mallocarray(vol, sizeof(struct ksensor),
     2, 0x0002 | 0x0008);
 if (sc->sc_sensors == ((void *)0))
  return (1);
 nsensors = vol;
 strlcpy(sc->sc_sensordev.xname, ((sc)->sc_dev.dv_xname),
     sizeof(sc->sc_sensordev.xname));
 for (i = 0, vol= 0; i < sc->sc_buswidth; i++) {
  link = scsi_get_link(sc->sc_scsibus, i, 0);
  if (link == ((void *)0))
   continue;
  if (!(link->flags & 0x1000))
   continue;
  dev = link->device_softc;
  strlcpy(sc->sc_sensors[vol].desc, dev->dv_xname,
      sizeof(sc->sc_sensors[vol].desc));
  sc->sc_sensors[vol].type = SENSOR_DRIVE;
  sc->sc_sensors[vol].status = SENSOR_S_UNKNOWN;
  sensor_attach(&sc->sc_sensordev, &sc->sc_sensors[vol]);
  vol++;
 }
 if (sensor_task_register(sc, mpi_refresh_sensors, 10) == ((void *)0))
  goto bad;
 sensordev_install(&sc->sc_sensordev);
 return (0);
bad:
 free(sc->sc_sensors, 2, nsensors * sizeof(struct ksensor));
 return (1);
}
void
mpi_refresh_sensors(void *arg)
{
 int i, vol;
 struct scsi_link *link;
 struct mpi_softc *sc = arg;
 struct mpi_cfg_raid_vol_pg0 *rpg0;
 _rw_enter_write(&sc->sc_lock );
 for (i = 0, vol = 0; i < sc->sc_buswidth; i++) {
  link = scsi_get_link(sc->sc_scsibus, i, 0);
  if (link == ((void *)0))
   continue;
  if (!(link->flags & 0x1000))
   continue;
  if (mpi_bio_get_pg0_raid(sc, vol))
   continue;
  rpg0 = sc->sc_rpg0;
  if (rpg0 == ((void *)0))
   goto done;
  switch (rpg0->volume_state) {
  case (0x00):
   sc->sc_sensors[vol].value = 4;
   sc->sc_sensors[vol].status = SENSOR_S_OK;
   break;
  case (0x01):
   sc->sc_sensors[vol].value = 10;
   sc->sc_sensors[vol].status = SENSOR_S_WARN;
   break;
  case (0x02):
  case (0x03):
   sc->sc_sensors[vol].value = 9;
   sc->sc_sensors[vol].status = SENSOR_S_CRIT;
   break;
  default:
   sc->sc_sensors[vol].value = 0;
   sc->sc_sensors[vol].status = SENSOR_S_UNKNOWN;
  }
  if (rpg0->volume_status & (1<<2)) {
   sc->sc_sensors[vol].value = 7;
   sc->sc_sensors[vol].status = SENSOR_S_WARN;
  }
  vol++;
 }
done:
 _rw_exit_write(&sc->sc_lock );
}
