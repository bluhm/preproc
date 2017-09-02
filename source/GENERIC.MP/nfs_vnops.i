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
typedef struct pollfd {
 int fd;
 short events;
 short revents;
} pollfd_t;
typedef unsigned int nfds_t;
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
struct dirent {
 __ino_t d_fileno;
 __off_t d_off;
 __uint16_t d_reclen;
 __uint8_t d_type;
 __uint8_t d_namlen;
 __uint8_t __d_padding[4];
 char d_name[255 + 1];
};
struct flock {
 off_t l_start;
 off_t l_len;
 pid_t l_pid;
 short l_type;
 short l_whence;
};
struct locklist { struct lockf *tqh_first; struct lockf **tqh_last; };
struct lockf {
 short lf_flags;
 short lf_type;
 off_t lf_start;
 off_t lf_end;
 caddr_t lf_id;
 struct lockf **lf_head;
 struct lockf *lf_next;
 struct locklist lf_blkhd;
 struct { struct lockf *tqe_next; struct lockf **tqe_prev; } lf_block;
 uid_t lf_uid;
 pid_t lf_pid;
};

void lf_init(void);
int lf_advlock(struct lockf **,
     off_t, caddr_t, int, struct flock *, int);
int lf_clearlock(struct lockf *);
int lf_findoverlap(struct lockf *,
     struct lockf *, int, struct lockf ***, struct lockf **);
struct lockf *
  lf_getblock(struct lockf *);
int lf_getlock(struct lockf *, struct flock *);
int lf_setlock(struct lockf *);
void lf_split(struct lockf *, struct lockf *);
void lf_wakelock(struct lockf *);

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
struct __tfork {
 void *tf_tcb;
 pid_t *tf_tid;
 void *tf_stack;
};
struct __kbind {
 void *kb_addr;
 size_t kb_size;
};
int fifo_badop(void *);
int fifo_ebadf(void *);
int fifo_open(void *);
int fifo_close(void *);
int fifo_read(void *);
int fifo_write(void *);
int fifo_ioctl(void *);
int fifo_poll(void *);
int fifo_kqfilter(void *);
int fifo_inactive(void *);
int fifo_reclaim(void *);
int fifo_print(void *);
int fifo_pathconf(void *);
int fifo_advlock(void *);
void fifo_printinfo(struct vnode *);
typedef enum { NFNON=0, NFREG=1, NFDIR=2, NFBLK=3, NFCHR=4, NFLNK=5,
 NFSOCK=6, NFFIFO=7 } nfstype;
union nfsfh {
 fhandle_t fh_generic;
 u_char fh_bytes[64];
};
typedef union nfsfh nfsfh_t;
struct nfsv2_time {
 u_int32_t nfsv2_sec;
 u_int32_t nfsv2_usec;
};
typedef struct nfsv2_time nfstime2;
struct nfsv3_time {
 u_int32_t nfsv3_sec;
 u_int32_t nfsv3_nsec;
};
typedef struct nfsv3_time nfstime3;
struct nfs_uquad {
 u_int32_t nfsuquad[2];
};
typedef struct nfs_uquad nfsuint64;
struct nfsv3_spec {
 u_int32_t specdata1;
 u_int32_t specdata2;
};
typedef struct nfsv3_spec nfsv3spec;
struct nfs_fattr {
 u_int32_t fa_type;
 u_int32_t fa_mode;
 u_int32_t fa_nlink;
 u_int32_t fa_uid;
 u_int32_t fa_gid;
 union {
  struct {
   u_int32_t nfsv2fa_size;
   u_int32_t nfsv2fa_blocksize;
   u_int32_t nfsv2fa_rdev;
   u_int32_t nfsv2fa_blocks;
   u_int32_t nfsv2fa_fsid;
   u_int32_t nfsv2fa_fileid;
   nfstime2 nfsv2fa_atime;
   nfstime2 nfsv2fa_mtime;
   nfstime2 nfsv2fa_ctime;
  } fa_nfsv2;
  struct {
   nfsuint64 nfsv3fa_size;
   nfsuint64 nfsv3fa_used;
   nfsv3spec nfsv3fa_rdev;
   nfsuint64 nfsv3fa_fsid;
   nfsuint64 nfsv3fa_fileid;
   nfstime3 nfsv3fa_atime;
   nfstime3 nfsv3fa_mtime;
   nfstime3 nfsv3fa_ctime;
  } fa_nfsv3;
 } fa_un;
};
struct nfsv2_sattr {
 u_int32_t sa_mode;
 u_int32_t sa_uid;
 u_int32_t sa_gid;
 u_int32_t sa_size;
 nfstime2 sa_atime;
 nfstime2 sa_mtime;
};
struct nfsv3_sattr {
 u_int32_t sa_modetrue;
 u_int32_t sa_mode;
 u_int32_t sa_uidfalse;
 u_int32_t sa_gidfalse;
 u_int32_t sa_sizefalse;
 u_int32_t sa_atimetype;
 nfstime3 sa_atime;
 u_int32_t sa_mtimetype;
 nfstime3 sa_mtime;
};
struct nfs_statfs {
 union {
  struct {
   u_int32_t nfsv2sf_tsize;
   u_int32_t nfsv2sf_bsize;
   u_int32_t nfsv2sf_blocks;
   u_int32_t nfsv2sf_bfree;
   u_int32_t nfsv2sf_bavail;
  } sf_nfsv2;
  struct {
   nfsuint64 nfsv3sf_tbytes;
   nfsuint64 nfsv3sf_fbytes;
   nfsuint64 nfsv3sf_abytes;
   nfsuint64 nfsv3sf_tfiles;
   nfsuint64 nfsv3sf_ffiles;
   nfsuint64 nfsv3sf_afiles;
   u_int32_t nfsv3sf_invarsec;
  } sf_nfsv3;
 } sf_un;
};
struct nfsv3_fsinfo {
 u_int32_t fs_rtmax;
 u_int32_t fs_rtpref;
 u_int32_t fs_rtmult;
 u_int32_t fs_wtmax;
 u_int32_t fs_wtpref;
 u_int32_t fs_wtmult;
 u_int32_t fs_dtpref;
 nfsuint64 fs_maxfilesize;
 nfstime3 fs_timedelta;
 u_int32_t fs_properties;
};
struct nfsv3_pathconf {
 u_int32_t pc_linkmax;
 u_int32_t pc_namemax;
 u_int32_t pc_notrunc;
 u_int32_t pc_chownrestricted;
 u_int32_t pc_caseinsensitive;
 u_int32_t pc_casepreserving;
};
struct nfsd_args {
 int sock;
 caddr_t name;
 int namelen;
};
struct nfsd_srvargs {
 struct nfsd *nsd_nfsd;
 uid_t nsd_uid;
 u_int32_t nsd_haddr;
 struct xucred nsd_cr;
 int nsd_authlen;
 u_char *nsd_authstr;
 int nsd_verflen;
 u_char *nsd_verfstr;
 struct timeval nsd_timestamp;
 u_int32_t nsd_ttl;
};
struct nfsstats {
 uint64_t attrcache_hits;
 uint64_t attrcache_misses;
 uint64_t lookupcache_hits;
 uint64_t lookupcache_misses;
 uint64_t direofcache_hits;
 uint64_t direofcache_misses;
 uint64_t biocache_reads;
 uint64_t read_bios;
 uint64_t read_physios;
 uint64_t biocache_writes;
 uint64_t write_bios;
 uint64_t write_physios;
 uint64_t biocache_readlinks;
 uint64_t readlink_bios;
 uint64_t biocache_readdirs;
 uint64_t readdir_bios;
 uint64_t rpccnt[23];
 uint64_t rpcretries;
 uint64_t srvrpccnt[23];
 uint64_t srvrpc_errs;
 uint64_t srv_errs;
 uint64_t rpcrequests;
 uint64_t rpctimeouts;
 uint64_t rpcunexpected;
 uint64_t rpcinvalid;
 uint64_t srvcache_inproghits;
 uint64_t srvcache_idemdonehits;
 uint64_t srvcache_nonidemdonehits;
 uint64_t srvcache_misses;
 uint64_t forcedsync;
 uint64_t srvnqnfs_leases;
 uint64_t srvnqnfs_maxleases;
 uint64_t srvnqnfs_getleases;
 uint64_t srvvop_writes;
};
extern int nfs_niothreads;
struct uio; struct buf; struct vattr; struct nameidata;
struct nfsreq {
 struct { struct nfsreq *tqe_next; struct nfsreq **tqe_prev; } r_chain;
 struct mbuf *r_mreq;
 struct mbuf *r_mrep;
 struct mbuf *r_md;
 caddr_t r_dpos;
 struct nfsmount *r_nmp;
 struct vnode *r_vp;
 u_int32_t r_xid;
 int r_flags;
 int r_rexmit;
 int r_timer;
 int r_procnum;
 int r_rtt;
 struct proc *r_procp;
};
enum nfs_rto_timers {
 NFS_DEFAULT_TIMER,
 NFS_GETATTR_TIMER,
 NFS_LOOKUP_TIMER,
 NFS_READ_TIMER,
 NFS_WRITE_TIMER,
};
union nethostaddr {
 u_int32_t had_inetaddr;
 struct mbuf *had_nam;
};
struct nfssvc_sock {
 struct { struct nfssvc_sock *tqe_next; struct nfssvc_sock **tqe_prev; } ns_chain;
 struct file *ns_fp;
 struct socket *ns_so;
 struct mbuf *ns_nam;
 struct mbuf *ns_raw;
 struct mbuf *ns_rawend;
 struct mbuf *ns_rec;
 struct mbuf *ns_recend;
 struct mbuf *ns_frag;
 int ns_flag;
 int ns_solock;
 int ns_cc;
 int ns_reclen;
 u_int32_t ns_sref;
};
struct nfsd {
 struct { struct nfsd *tqe_next; struct nfsd **tqe_prev; } nfsd_chain;
 int nfsd_flag;
 struct nfssvc_sock *nfsd_slp;
 struct proc *nfsd_procp;
 struct nfsrv_descript *nfsd_nd;
};
struct nfsrv_descript {
 struct mbuf *nd_mrep;
 struct mbuf *nd_md;
 struct mbuf *nd_nam;
 struct mbuf *nd_nam2;
 caddr_t nd_dpos;
 unsigned int nd_procnum;
 int nd_flag;
 int nd_repstat;
 u_int32_t nd_retxid;
 struct ucred nd_cr;
};
extern struct pool nfsreqpl;
extern struct pool nfs_node_pool;
extern struct nfsdhead { struct nfsd *tqh_first; struct nfsd **tqh_last; } nfsd_head;
extern int nfsd_head_flag;
struct sillyrename {
 struct ucred *s_cred;
 struct vnode *s_dvp;
 long s_namlen;
 char s_name[24];
};
struct nfsnode {
 struct { struct nfsnode *rbe_left; struct nfsnode *rbe_right; struct nfsnode *rbe_parent; int rbe_color; } n_entry;
 u_quad_t n_size;
 struct vattr n_vattr;
 time_t n_attrstamp;
 struct timespec n_mtime;
 time_t n_ctime;
 nfsfh_t *n_fhp;
 struct vnode *n_vnode;
 struct lockf *n_lockf;
 int n_error;
 union {
  struct timespec nf_atim;
  nfsuint64 nd_cookieverf;
 } n_un1;
 union {
  struct timespec nf_mtim;
  off_t nd_direof;
 } n_un2;
 struct sillyrename *n_sillyrename;
 short n_fhsize;
 short n_flag;
 nfsfh_t n_fh;
 time_t n_accstamp;
 uid_t n_accuid;
 int n_accmode;
 int n_accerror;
 struct ucred *n_rcred;
 struct ucred *n_wcred;
 off_t n_pushedlo;
 off_t n_pushedhi;
 off_t n_pushlo;
 off_t n_pushhi;
 struct rwlock n_commitlock;
 int n_commitflags;
};
extern struct nfs_bufqhead { struct buf *tqh_first; struct buf **tqh_last; } nfs_bufq;
extern uint32_t nfs_bufqlen, nfs_bufqmax;
struct nfsmount {
 struct nfs_nodetree { struct rb_tree rbh_root; }
  nm_ntree;
 struct reqs { struct nfsreq *tqh_first; struct nfsreq **tqh_last; }
  nm_reqsq;
 struct timeout nm_rtimeout;
 int nm_flag;
 struct mount *nm_mountp;
 int nm_numgrps;
 u_char nm_fh[64];
 int nm_fhsize;
 struct socket *nm_so;
 int nm_sotype;
 int nm_soproto;
 int nm_soflags;
 struct mbuf *nm_nam;
 int nm_timeo;
 int nm_retry;
 int nm_srtt[(NFS_WRITE_TIMER)];
 int nm_sdrtt[(NFS_WRITE_TIMER)];
 int nm_sent;
 int nm_cwnd;
 int nm_timeouts;
 int nm_rsize;
 int nm_wsize;
 int nm_readdirsize;
 int nm_readahead;
 u_char nm_verf[8];
 u_short nm_acregmin;
 u_short nm_acregmax;
 u_short nm_acdirmin;
 u_short nm_acdirmax;
};
int nfs_mount(struct mount *, const char *, void *, struct nameidata *,
     struct proc *);
int nfs_fsinfo(struct nfsmount *, struct vnode *, struct ucred *,
     struct proc *);
void nfs_init(void);
struct nfsv2_time;
void txdr_nfsv2time(const struct timespec *_from, struct nfsv2_time *_to);
struct nfsm_info {
 struct mbuf *nmi_mreq;
 struct mbuf *nmi_mrep;
 struct proc *nmi_procp;
 struct ucred *nmi_cred;
 struct mbuf *nmi_md;
 struct mbuf *nmi_mb;
 caddr_t nmi_dpos;
 int nmi_v3;
};
struct nfsnode;
struct sillyrename;
struct componentname;
struct nfs_diskless;
struct nfsm_info;
int nfs_bioread(struct vnode *, struct uio *, int, struct ucred *);
int nfs_write(void *);
int nfs_vinvalbuf(struct vnode *, int, struct ucred *, struct proc *);
int nfs_asyncio(struct buf *, int readahead);
int nfs_doio(struct buf *, struct proc *);
int nfs_boot_init(struct nfs_diskless *, struct proc *);
void nfs_ninit(struct nfsmount *);
int nfs_nget(struct mount *, nfsfh_t *, int, struct nfsnode **);
int nfs_inactive(void *);
int nfs_reclaim(void *);
int nfs_readlink(void *);
int nfs_readlinkrpc(struct vnode *, struct uio *, struct ucred *);
int nfs_readrpc(struct vnode *, struct uio *);
int nfs_writerpc(struct vnode *, struct uio *, int *, int *);
int nfs_removeit(struct sillyrename *);
int nfs_mmap(void *);
int nfs_blkatoff(void *);
int nfs_writebp(struct buf *, int);
int nfsrv3_access(struct nfsrv_descript *, struct nfssvc_sock *,
         struct proc *, struct mbuf **);
int nfsrv_getattr(struct nfsrv_descript *, struct nfssvc_sock *,
         struct proc *, struct mbuf **);
int nfsrv_setattr(struct nfsrv_descript *, struct nfssvc_sock *,
         struct proc *, struct mbuf **);
int nfsrv_lookup(struct nfsrv_descript *, struct nfssvc_sock *,
        struct proc *, struct mbuf **);
int nfsrv_readlink(struct nfsrv_descript *, struct nfssvc_sock *,
   struct proc *, struct mbuf **);
int nfsrv_read(struct nfsrv_descript *, struct nfssvc_sock *,
      struct proc *, struct mbuf **);
int nfsrv_write(struct nfsrv_descript *, struct nfssvc_sock *,
       struct proc *, struct mbuf **);
int nfsrv_create(struct nfsrv_descript *, struct nfssvc_sock *,
        struct proc *, struct mbuf **);
int nfsrv_mknod(struct nfsrv_descript *, struct nfssvc_sock *,
       struct proc *, struct mbuf **);
int nfsrv_remove(struct nfsrv_descript *, struct nfssvc_sock *,
        struct proc *, struct mbuf **);
int nfsrv_rename(struct nfsrv_descript *, struct nfssvc_sock *,
        struct proc *, struct mbuf **);
int nfsrv_link(struct nfsrv_descript *, struct nfssvc_sock *,
      struct proc *, struct mbuf **);
int nfsrv_symlink(struct nfsrv_descript *, struct nfssvc_sock *,
         struct proc *, struct mbuf **);
int nfsrv_mkdir(struct nfsrv_descript *, struct nfssvc_sock *,
       struct proc *, struct mbuf **);
int nfsrv_rmdir(struct nfsrv_descript *, struct nfssvc_sock *,
       struct proc *, struct mbuf **);
int nfsrv_readdir(struct nfsrv_descript *, struct nfssvc_sock *,
         struct proc *, struct mbuf **);
int nfsrv_readdirplus(struct nfsrv_descript *, struct nfssvc_sock *,
      struct proc *, struct mbuf **);
int nfsrv_commit(struct nfsrv_descript *, struct nfssvc_sock *,
        struct proc *, struct mbuf **);
int nfsrv_statfs(struct nfsrv_descript *, struct nfssvc_sock *,
        struct proc *, struct mbuf **);
int nfsrv_fsinfo(struct nfsrv_descript *, struct nfssvc_sock *,
        struct proc *, struct mbuf **);
int nfsrv_pathconf(struct nfsrv_descript *, struct nfssvc_sock *,
          struct proc *, struct mbuf **);
int nfsrv_null(struct nfsrv_descript *, struct nfssvc_sock *,
      struct proc *, struct mbuf **);
int nfsrv_noop(struct nfsrv_descript *, struct nfssvc_sock *,
      struct proc *, struct mbuf **);
int nfs_connect(struct nfsmount *, struct nfsreq *);
void nfs_disconnect(struct nfsmount *);
int nfs_send(struct socket *, struct mbuf *, struct mbuf *,
    struct nfsreq *);
int nfs_request(struct vnode *, int, struct nfsm_info *);
int nfs_rephead(int, struct nfsrv_descript *, struct nfssvc_sock *, int,
  struct mbuf **, struct mbuf **);
void nfs_timer(void *);
int nfs_sigintr(struct nfsmount *, struct nfsreq *, struct proc *);
int nfs_sndlock(int *, struct nfsreq *);
void nfs_sndunlock(int *);
void nfsrv_rcv(struct socket *, caddr_t, int);
int nfsrv_dorec(struct nfssvc_sock *, struct nfsd *,
       struct nfsrv_descript **);
void nfsrv_wakenfsd(struct nfssvc_sock *);
void nfsrv_initcache(void );
int nfsrv_getcache(struct nfsrv_descript *, struct nfssvc_sock *,
   struct mbuf **);
void nfsrv_updatecache(struct nfsrv_descript *, int, struct mbuf *);
void nfsrv_cleancache(void);
struct mbuf *nfsm_reqhead(int);
void nfsm_rpchead(struct nfsreq *, struct ucred *, int);
void *nfsm_build(struct mbuf **, u_int);
int nfsm_mbuftouio(struct mbuf **, struct uio *, int, caddr_t *);
void nfsm_uiotombuf(struct mbuf **, struct uio *, size_t);
void nfsm_strtombuf(struct mbuf **, void *, size_t);
void nfsm_buftombuf(struct mbuf **, void *, size_t);
int nfsm_disct(struct mbuf **, caddr_t *, int, int, caddr_t *);
int nfs_adv(struct mbuf **, caddr_t *, int, int);
int nfsm_strtmbuf(struct mbuf **, char **, char *, long);
int nfs_vfs_init(struct vfsconf *);
int nfs_attrtimeo(struct nfsnode *);
int nfs_loadattrcache(struct vnode **, struct mbuf **, caddr_t *,
      struct vattr *);
int nfs_getattrcache(struct vnode *, struct vattr *);
int nfs_namei(struct nameidata *, fhandle_t *, int, struct nfssvc_sock *,
     struct mbuf *, struct mbuf **, caddr_t *, struct vnode **,
     struct proc *);
void nfsm_v3attrbuild(struct mbuf **, struct vattr *, int);
void nfsm_adj(struct mbuf *, int, int);
void nfsm_srvwcc(struct nfsrv_descript *, int, struct vattr *, int,
        struct vattr *, struct nfsm_info *);
void nfsm_srvpostop_attr(struct nfsrv_descript *, int, struct vattr *,
        struct nfsm_info *);
void nfsm_srvfattr(struct nfsrv_descript *, struct vattr *,
   struct nfs_fattr *);
int nfsrv_fhtovp(fhandle_t *, int, struct vnode **, struct ucred *,
        struct nfssvc_sock *, struct mbuf *, int *);
int netaddr_match(int, union nethostaddr *, struct mbuf *);
void nfs_clearcommit(struct mount *);
int nfs_in_committed_range(struct vnode *, struct buf *);
int nfs_in_tobecommitted_range(struct vnode *, struct buf *);
void nfs_add_committed_range(struct vnode *, struct buf *);
void nfs_del_committed_range(struct vnode *, struct buf *);
void nfs_add_tobecommitted_range(struct vnode *, struct buf *);
void nfs_del_tobecommitted_range(struct vnode *, struct buf *);
void nfs_merge_commit_ranges(struct vnode *);
int nfsrv_errmap(struct nfsrv_descript *, int);
int nfsm_srvsattr(struct mbuf **, struct vattr *, struct mbuf *, caddr_t *);
void nfsm_fhtom(struct nfsm_info *, struct vnode *, int);
void nfsm_srvfhtom(struct mbuf **, fhandle_t *, int);
int sys_nfssvc(struct proc *, void *, register_t *);
void nfsrv_init(int);
void start_nfsio(void *);
void nfs_getset_niothreads(int);
int nfs_kqfilter(void *);
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
int nfs_access(void *);
int nfs_advlock(void *);
int nfs_bmap(void *);
int nfs_bwrite(void *);
int nfs_close(void *);
int nfs_commit(struct vnode *, u_quad_t, int, struct proc *);
int nfs_create(void *);
int nfs_flush(struct vnode *, struct ucred *, int, struct proc *, int);
int nfs_fsync(void *);
int nfs_getattr(void *);
int nfs_getreq(struct nfsrv_descript *, struct nfsd *, int);
int nfs_link(void *);
int nfs_lookitup(struct vnode *, char *, int, struct ucred *, struct proc *,
 struct nfsnode **);
int nfs_lookup(void *);
int nfs_mkdir(void *);
int nfs_mknod(void *);
int nfs_mknodrpc(struct vnode *, struct vnode **, struct componentname *,
 struct vattr *);
int nfs_null(struct vnode *, struct ucred *, struct proc *);
int nfs_open(void *);
int nfs_pathconf(void *);
int nfs_poll(void *);
int nfs_print(void *);
int nfs_read(void *);
int nfs_readdir(void *);
int nfs_readdirplusrpc(struct vnode *, struct uio *, struct ucred *, int *,
 struct proc *);
int nfs_readdirrpc(struct vnode *, struct uio *, struct ucred *, int *);
int nfs_remove(void *);
int nfs_removerpc(struct vnode *, char *, int, struct ucred *, struct proc *);
int nfs_rename(void *);
int nfs_renameit(struct vnode *, struct componentname *, struct sillyrename *);
int nfs_renamerpc(struct vnode *, char *, int, struct vnode *, char *, int,
 struct ucred *, struct proc *);
int nfs_rmdir(void *);
int nfs_setattr(void *);
int nfs_setattrrpc(struct vnode *, struct vattr *, struct ucred *,
 struct proc *);
int nfs_sillyrename(struct vnode *, struct vnode *,
    struct componentname *);
int nfs_strategy(void *);
int nfs_symlink(void *);
void nfs_cache_enter(struct vnode *, struct vnode *, struct componentname *);
int nfsfifo_close(void *);
int nfsfifo_read(void *);
int nfsfifo_reclaim(void *);
int nfsfifo_write(void *);
int nfsspec_access(void *);
int nfsspec_close(void *);
int nfsspec_read(void *);
int nfsspec_write(void *);
struct vops nfs_vops = {
 .vop_lookup = nfs_lookup,
 .vop_create = nfs_create,
 .vop_mknod = nfs_mknod,
 .vop_open = nfs_open,
 .vop_close = nfs_close,
 .vop_access = nfs_access,
 .vop_getattr = nfs_getattr,
 .vop_setattr = nfs_setattr,
 .vop_read = nfs_read,
 .vop_write = nfs_write,
 .vop_ioctl = ((int (*)(void *))enoioctl),
 .vop_poll = nfs_poll,
 .vop_kqfilter = nfs_kqfilter,
 .vop_revoke = vop_generic_revoke,
 .vop_fsync = nfs_fsync,
 .vop_remove = nfs_remove,
 .vop_link = nfs_link,
 .vop_rename = nfs_rename,
 .vop_mkdir = nfs_mkdir,
 .vop_rmdir = nfs_rmdir,
 .vop_symlink = nfs_symlink,
 .vop_readdir = nfs_readdir,
 .vop_readlink = nfs_readlink,
 .vop_abortop = vop_generic_abortop,
 .vop_inactive = nfs_inactive,
 .vop_reclaim = nfs_reclaim,
 .vop_lock = vop_generic_lock,
 .vop_unlock = vop_generic_unlock,
 .vop_bmap = nfs_bmap,
 .vop_strategy = nfs_strategy,
 .vop_print = nfs_print,
 .vop_islocked = vop_generic_islocked,
 .vop_pathconf = nfs_pathconf,
 .vop_advlock = nfs_advlock,
 .vop_bwrite = nfs_bwrite
};
struct vops nfs_specvops = {
 .vop_close = nfsspec_close,
 .vop_access = nfsspec_access,
 .vop_getattr = nfs_getattr,
 .vop_setattr = nfs_setattr,
 .vop_read = nfsspec_read,
 .vop_write = nfsspec_write,
 .vop_fsync = nfs_fsync,
 .vop_inactive = nfs_inactive,
 .vop_reclaim = nfs_reclaim,
 .vop_lock = vop_generic_lock,
 .vop_unlock = vop_generic_unlock,
 .vop_print = nfs_print,
 .vop_islocked = vop_generic_islocked,
 .vop_lookup = vop_generic_lookup,
 .vop_create = spec_badop,
 .vop_mknod = spec_badop,
 .vop_open = spec_open,
 .vop_ioctl = spec_ioctl,
 .vop_poll = spec_poll,
 .vop_kqfilter = spec_kqfilter,
 .vop_revoke = vop_generic_revoke,
 .vop_remove = spec_badop,
 .vop_link = spec_badop,
 .vop_rename = spec_badop,
 .vop_mkdir = spec_badop,
 .vop_rmdir = spec_badop,
 .vop_symlink = spec_badop,
 .vop_readdir = spec_badop,
 .vop_readlink = spec_badop,
 .vop_abortop = spec_badop,
 .vop_bmap = vop_generic_bmap,
 .vop_strategy = spec_strategy,
 .vop_pathconf = spec_pathconf,
 .vop_advlock = spec_advlock,
 .vop_bwrite = vop_generic_bwrite,
};
struct vops nfs_fifovops = {
 .vop_close = nfsfifo_close,
 .vop_access = nfsspec_access,
 .vop_getattr = nfs_getattr,
 .vop_setattr = nfs_setattr,
 .vop_read = nfsfifo_read,
 .vop_write = nfsfifo_write,
 .vop_fsync = nfs_fsync,
 .vop_inactive = nfs_inactive,
 .vop_reclaim = nfsfifo_reclaim,
 .vop_lock = vop_generic_lock,
 .vop_unlock = vop_generic_unlock,
 .vop_print = nfs_print,
 .vop_islocked = vop_generic_islocked,
 .vop_bwrite = vop_generic_bwrite,
 .vop_lookup = vop_generic_lookup,
 .vop_create = fifo_badop,
 .vop_mknod = fifo_badop,
 .vop_open = fifo_open,
 .vop_ioctl = fifo_ioctl,
 .vop_poll = fifo_poll,
 .vop_kqfilter = fifo_kqfilter,
 .vop_revoke = vop_generic_revoke,
 .vop_remove = fifo_badop,
 .vop_link = fifo_badop,
 .vop_rename = fifo_badop,
 .vop_mkdir = fifo_badop,
 .vop_rmdir = fifo_badop,
 .vop_symlink = fifo_badop,
 .vop_readdir = fifo_badop,
 .vop_readlink = fifo_badop,
 .vop_abortop = fifo_badop,
 .vop_bmap = vop_generic_bmap,
 .vop_strategy = fifo_badop,
 .vop_pathconf = fifo_pathconf,
 .vop_advlock = fifo_advlock,
};
extern u_int32_t nfs_true, nfs_false;
extern u_int32_t nfs_xdrneg1;
extern struct nfsstats nfsstats;
extern nfstype nfsv3_type[9];
int nfs_numasync = 0;
void
nfs_cache_enter(struct vnode *dvp, struct vnode *vp, struct componentname *cnp)
{
 struct nfsnode *np;
 if (vp != ((void *)0)) {
  np = ((struct nfsnode *)(vp)->v_data);
  np->n_ctime = np->n_vattr.va_ctime.tv_sec;
 } else {
  np = ((struct nfsnode *)(dvp)->v_data);
  if (!np->n_ctime)
   np->n_ctime = np->n_vattr.va_mtime.tv_sec;
 }
 cache_enter(dvp, vp, cnp);
}
int
nfs_null(struct vnode *vp, struct ucred *cred, struct proc *procp)
{
 struct nfsm_info info;
 int error = 0;
 info.nmi_mb = info.nmi_mreq = nfsm_reqhead(0);
 error = nfs_request(vp, 0, &info);
 m_freem(info.nmi_mrep);
 return (error);
}
int
nfs_access(void *v)
{
 struct vop_access_args *ap = v;
 struct vnode *vp = ap->a_vp;
 u_int32_t *tl;
 int32_t t1;
 caddr_t cp2;
 int error = 0, attrflag;
 u_int32_t mode, rmode;
 int v3 = (((struct nfsmount *)(((vp)->v_mount)->mnt_data))->nm_flag & 0x00000200);
 int cachevalid;
 struct nfsm_info info;
 struct nfsnode *np = ((struct nfsnode *)(vp)->v_data);
 if ((ap->a_mode & 00200) && (vp->v_mount->mnt_flag & 0x00000001)) {
  switch (vp->v_type) {
  case VREG:
  case VDIR:
  case VLNK:
   return (30);
  default:
   break;
  }
 }
  cachevalid = (np->n_accstamp != -1 &&
      (time_second - np->n_accstamp) < nfs_attrtimeo(np) &&
      np->n_accuid == ap->a_cred->cr_uid);
 if (cachevalid) {
  if (!np->n_accerror) {
   if ((np->n_accmode & ap->a_mode) == ap->a_mode)
    return (np->n_accerror);
  } else if ((np->n_accmode & ap->a_mode) == np->n_accmode)
   return (np->n_accerror);
 }
 if (v3) {
  nfsstats.rpccnt[4]++;
  info.nmi_mb = info.nmi_mreq = nfsm_reqhead(((v3) ? (64 + 4) : 32) + 4);
  nfsm_fhtom(&info, vp, v3);
  tl = nfsm_build(&info.nmi_mb, 4);
  if (ap->a_mode & 00400)
   mode = 0x01;
  else
   mode = 0;
  if (vp->v_type == VDIR) {
   if (ap->a_mode & 00200)
    mode |= (0x04 | 0x08 |
      0x10);
   if (ap->a_mode & 00100)
    mode |= 0x02;
  } else {
   if (ap->a_mode & 00200)
    mode |= (0x04 | 0x08);
   if (ap->a_mode & 00100)
    mode |= 0x20;
  }
  *tl = (((__uint32_t)((int32_t)(mode))));
  info.nmi_procp = ap->a_p;
  info.nmi_cred = ap->a_cred;
  error = nfs_request(vp, 4, &info);
  { if (info.nmi_mrep != ((void *)0)) { struct vnode *ttvp = (vp); { t1 = ((caddr_t)((info.nmi_md)->m_hdr.mh_data)) + info.nmi_md->m_hdr.mh_len - info.nmi_dpos; if (t1 >= (4)) { (tl) = (u_int32_t *)(info.nmi_dpos); info.nmi_dpos += (4); } else if ((t1 = nfsm_disct(&info.nmi_md, &info.nmi_dpos, (4), t1, &cp2)) != 0) { error = t1; m_freem(info.nmi_mrep); goto nfsmout; } else { (tl) = (u_int32_t *)cp2; } }; if (((attrflag) = ((int)((__uint32_t)((int32_t)(*tl))))) != 0) { if ((t1 = nfs_loadattrcache(&ttvp, &info.nmi_md, &info.nmi_dpos, ((void *)0))) != 0) { error = t1; (attrflag) = 0; m_freem(info.nmi_mrep); goto nfsmout; } (vp) = ttvp; } } };
  if (error) {
   m_freem(info.nmi_mrep);
   goto nfsmout;
  }
  { t1 = ((caddr_t)((info.nmi_md)->m_hdr.mh_data)) + info.nmi_md->m_hdr.mh_len - info.nmi_dpos; if (t1 >= (4)) { (tl) = (u_int32_t *)(info.nmi_dpos); info.nmi_dpos += (4); } else if ((t1 = nfsm_disct(&info.nmi_md, &info.nmi_dpos, (4), t1, &cp2)) != 0) { error = t1; m_freem(info.nmi_mrep); goto nfsmout; } else { (tl) = (u_int32_t *)cp2; } };
  rmode = ((u_int32_t)((__uint32_t)((int32_t)(*tl))));
  if ((rmode & mode) != mode)
   error = 13;
  m_freem(info.nmi_mrep);
 } else
  return (nfsspec_access(ap));
  if (!error || error == 13) {
  if (cachevalid && np->n_accstamp != -1 &&
      error == np->n_accerror) {
   if (!error)
    np->n_accmode |= ap->a_mode;
   else {
    if ((np->n_accmode & ap->a_mode) == ap->a_mode)
     np->n_accmode = ap->a_mode;
   }
  } else {
   np->n_accstamp = time_second;
   np->n_accuid = ap->a_cred->cr_uid;
   np->n_accmode = ap->a_mode;
   np->n_accerror = error;
  }
 }
nfsmout:
 return (error);
}
int
nfs_open(void *v)
{
 struct vop_open_args *ap = v;
 struct vnode *vp = ap->a_vp;
 struct nfsnode *np = ((struct nfsnode *)(vp)->v_data);
 struct vattr vattr;
 int error;
 if (vp->v_type != VREG && vp->v_type != VDIR && vp->v_type != VLNK) {
  printf("open eacces vtyp=%d\n",vp->v_type);
  return (13);
 }
 if (ap->a_mode & 0x0001) {
  if (np->n_rcred) {
   crfree(np->n_rcred);
  }
  np->n_rcred = ap->a_cred;
  (np->n_rcred)->cr_ref++;
 }
 if (ap->a_mode & 0x0002) {
  if (np->n_wcred) {
   crfree(np->n_wcred);
  }
  np->n_wcred = ap->a_cred;
  (np->n_wcred)->cr_ref++;
 }
 if (np->n_flag & 0x0004) {
  error = nfs_vinvalbuf(vp, 0x0001, ap->a_cred, ap->a_p);
  if (error == 4)
   return (error);
  uvm_vnp_uncache(vp);
  ((np)->n_attrstamp = 0);
  if (vp->v_type == VDIR)
   np->n_un2.nd_direof = 0;
  error = VOP_GETATTR(vp, &vattr, ap->a_cred, ap->a_p);
  if (error)
   return (error);
  np->n_mtime = vattr.va_mtime;
 } else {
  error = VOP_GETATTR(vp, &vattr, ap->a_cred, ap->a_p);
  if (error)
   return (error);
  if ((((&np->n_mtime)->tv_sec == (&vattr.va_mtime)->tv_sec) ? ((&np->n_mtime)->tv_nsec != (&vattr.va_mtime)->tv_nsec) : ((&np->n_mtime)->tv_sec != (&vattr.va_mtime)->tv_sec))) {
   if (vp->v_type == VDIR)
    np->n_un2.nd_direof = 0;
   error = nfs_vinvalbuf(vp, 0x0001, ap->a_cred, ap->a_p);
   if (error == 4)
    return (error);
   uvm_vnp_uncache(vp);
   np->n_mtime = vattr.va_mtime;
  }
 }
 ((np)->n_attrstamp = 0);
 return (0);
}
int
nfs_close(void *v)
{
 struct vop_close_args *ap = v;
 struct vnode *vp = ap->a_vp;
 struct nfsnode *np = ((struct nfsnode *)(vp)->v_data);
 int error = 0;
 if (vp->v_type == VREG) {
     if (np->n_flag & 0x0004) {
  if ((((struct nfsmount *)(((vp)->v_mount)->mnt_data))->nm_flag & 0x00000200)) {
      error = nfs_flush(vp, ap->a_cred, 1, ap->a_p, 0);
      np->n_flag &= ~0x0004;
  } else
      error = nfs_vinvalbuf(vp, 0x0001, ap->a_cred, ap->a_p);
  ((np)->n_attrstamp = 0);
     }
     if (np->n_flag & 0x0008) {
  np->n_flag &= ~0x0008;
  error = np->n_error;
     }
 }
 return (error);
}
int
nfs_getattr(void *v)
{
 struct vop_getattr_args *ap = v;
 struct vnode *vp = ap->a_vp;
 struct nfsnode *np = ((struct nfsnode *)(vp)->v_data);
 struct nfsm_info info;
 int32_t t1;
 int error = 0;
 info.nmi_v3 = (((struct nfsmount *)(((vp)->v_mount)->mnt_data))->nm_flag & 0x00000200);
 if (np->n_flag & (0x0100 | 0x0200))
  np->n_flag |= 0x0400;
 if (nfs_getattrcache(vp, ap->a_vap) == 0)
  return (0);
 nfsstats.rpccnt[1]++;
 info.nmi_mb = info.nmi_mreq = nfsm_reqhead(((info.nmi_v3) ? (64 + 4) : 32));
 nfsm_fhtom(&info, vp, info.nmi_v3);
 info.nmi_procp = ap->a_p;
 info.nmi_cred = ap->a_cred;
 error = nfs_request(vp, 1, &info);
 if (!error)
  { struct vnode *ttvp = (vp); if ((t1 = nfs_loadattrcache(&ttvp, &info.nmi_md, &info.nmi_dpos, (ap->a_vap))) != 0) { error = t1; m_freem(info.nmi_mrep); goto nfsmout; } (vp) = ttvp; };
 m_freem(info.nmi_mrep);
nfsmout:
 return (error);
}
int
nfs_setattr(void *v)
{
 struct vop_setattr_args *ap = v;
 struct vnode *vp = ap->a_vp;
 struct nfsnode *np = ((struct nfsnode *)(vp)->v_data);
 struct vattr *vap = ap->a_vap;
 int hint = 0x0008;
 int error = 0;
 u_quad_t tsize = 0;
 if (vap->va_flags != (-1))
  return (45);
 if ((vap->va_uid != (uid_t)(-1) ||
     vap->va_gid != (gid_t)(-1) ||
     vap->va_atime.tv_nsec != (-1) ||
     vap->va_mtime.tv_nsec != (-1) ||
     vap->va_mode != (mode_t)(-1)) &&
     (vp->v_mount->mnt_flag & 0x00000001))
  return (30);
 if (vap->va_size != (-1)) {
  switch (vp->v_type) {
  case VDIR:
   return (21);
  case VCHR:
  case VBLK:
  case VSOCK:
  case VFIFO:
   if (vap->va_mtime.tv_nsec == (-1) &&
       vap->va_atime.tv_nsec == (-1) &&
       vap->va_mode == (mode_t)(-1) &&
       vap->va_uid == (uid_t)(-1) &&
       vap->va_gid == (gid_t)(-1))
    return (0);
   vap->va_size = (-1);
   break;
  default:
   if (vp->v_mount->mnt_flag & 0x00000001)
    return (30);
   if (vap->va_size == 0)
    error = nfs_vinvalbuf(vp, 0,
         ap->a_cred, ap->a_p);
   else
    error = nfs_vinvalbuf(vp, 0x0001,
         ap->a_cred, ap->a_p);
   if (error)
    return (error);
   tsize = np->n_size;
   np->n_size = np->n_vattr.va_size = vap->va_size;
   uvm_vnp_setsize(vp, np->n_size);
  };
 } else if ((vap->va_mtime.tv_nsec != (-1) ||
  vap->va_atime.tv_nsec != (-1)) &&
  vp->v_type == VREG &&
  (error = nfs_vinvalbuf(vp, 0x0001, ap->a_cred,
      ap->a_p)) == 4)
  return (error);
 error = nfs_setattrrpc(vp, vap, ap->a_cred, ap->a_p);
 if (error && vap->va_size != (-1)) {
  np->n_size = np->n_vattr.va_size = tsize;
  uvm_vnp_setsize(vp, np->n_size);
 }
 if (vap->va_size != (-1) && vap->va_size < tsize)
  hint |= 0x0080;
 do { struct klist *list = (&vp->v_selectinfo.si_note); if ((list) != ((void *)0)) knote((list), ((hint))); } while (0);
 return (error);
}
int
nfs_setattrrpc(struct vnode *vp, struct vattr *vap, struct ucred *cred,
    struct proc *procp)
{
 struct nfsv2_sattr *sp;
 struct nfsm_info info;
 int32_t t1;
 caddr_t cp2;
 u_int32_t *tl;
 int error = 0, wccflag = 0;
 int v3 = (((struct nfsmount *)(((vp)->v_mount)->mnt_data))->nm_flag & 0x00000200);
 info.nmi_v3 = (((struct nfsmount *)(((vp)->v_mount)->mnt_data))->nm_flag & 0x00000200);
 nfsstats.rpccnt[2]++;
 info.nmi_mb = info.nmi_mreq = nfsm_reqhead(((v3) ? (64 + 4) : 32) + ((v3) ? 60 : 32));
 nfsm_fhtom(&info, vp, v3);
 if (info.nmi_v3) {
  nfsm_v3attrbuild(&info.nmi_mb, vap, 1);
  tl = nfsm_build(&info.nmi_mb, 4);
  *tl = nfs_false;
 } else {
  sp = nfsm_build(&info.nmi_mb, 32);
  if (vap->va_mode == (mode_t)(-1))
   sp->sa_mode = nfs_xdrneg1;
  else
   sp->sa_mode = (((__uint32_t)((int32_t)(((vp->v_type) == VFIFO) ? (int)((vttoif_tab[(int)(VCHR)]) | ((vap->va_mode))) : (int)((vttoif_tab[(int)((vp->v_type))]) | ((vap->va_mode)))))));
  if (vap->va_uid == (uid_t)(-1))
   sp->sa_uid = nfs_xdrneg1;
  else
   sp->sa_uid = (((__uint32_t)((int32_t)(vap->va_uid))));
  if (vap->va_gid == (gid_t)(-1))
   sp->sa_gid = nfs_xdrneg1;
  else
   sp->sa_gid = (((__uint32_t)((int32_t)(vap->va_gid))));
  sp->sa_size = (((__uint32_t)((int32_t)(vap->va_size))));
  txdr_nfsv2time(&vap->va_atime, &sp->sa_atime);
  txdr_nfsv2time(&vap->va_mtime, &sp->sa_mtime);
 }
 info.nmi_procp = procp;
 info.nmi_cred = cred;
 error = nfs_request(vp, 2, &info);
 if (info.nmi_v3)
  do { if (info.nmi_mrep != ((void *)0)) { struct timespec _mtime; int ttattrf, ttretf = 0; { t1 = ((caddr_t)((info.nmi_md)->m_hdr.mh_data)) + info.nmi_md->m_hdr.mh_len - info.nmi_dpos; if (t1 >= (4)) { (tl) = (u_int32_t *)(info.nmi_dpos); info.nmi_dpos += (4); } else if ((t1 = nfsm_disct(&info.nmi_md, &info.nmi_dpos, (4), t1, &cp2)) != 0) { error = t1; m_freem(info.nmi_mrep); goto nfsmout; } else { (tl) = (u_int32_t *)cp2; } }; if (*tl == nfs_true) { { t1 = ((caddr_t)((info.nmi_md)->m_hdr.mh_data)) + info.nmi_md->m_hdr.mh_len - info.nmi_dpos; if (t1 >= (6 * 4)) { (tl) = (u_int32_t *)(info.nmi_dpos); info.nmi_dpos += (6 * 4); } else if ((t1 = nfsm_disct(&info.nmi_md, &info.nmi_dpos, (6 * 4), t1, &cp2)) != 0) { error = t1; m_freem(info.nmi_mrep); goto nfsmout; } else { (tl) = (u_int32_t *)cp2; } }; do { (&_mtime)->tv_sec = ((__uint32_t)(((struct nfsv3_time *)(tl + 2))->nfsv3_sec)); (&_mtime)->tv_nsec = ((__uint32_t)(((struct nfsv3_time *)(tl + 2))->nfsv3_nsec)); } while (0); if (wccflag) { ttretf = (((&((struct nfsnode *)(vp)->v_data)->n_mtime)->tv_sec == (&_mtime)->tv_sec) ? ((&((struct nfsnode *)(vp)->v_data)->n_mtime)->tv_nsec != (&_mtime)->tv_nsec) : ((&((struct nfsnode *)(vp)->v_data)->n_mtime)->tv_sec != (&_mtime)->tv_sec)); } } { if (info.nmi_mrep != ((void *)0)) { struct vnode *ttvp = ((vp)); { t1 = ((caddr_t)((info.nmi_md)->m_hdr.mh_data)) + info.nmi_md->m_hdr.mh_len - info.nmi_dpos; if (t1 >= (4)) { (tl) = (u_int32_t *)(info.nmi_dpos); info.nmi_dpos += (4); } else if ((t1 = nfsm_disct(&info.nmi_md, &info.nmi_dpos, (4), t1, &cp2)) != 0) { error = t1; m_freem(info.nmi_mrep); goto nfsmout; } else { (tl) = (u_int32_t *)cp2; } }; if (((ttattrf) = ((int)((__uint32_t)((int32_t)(*tl))))) != 0) { if ((t1 = nfs_loadattrcache(&ttvp, &info.nmi_md, &info.nmi_dpos, ((void *)0))) != 0) { error = t1; (ttattrf) = 0; m_freem(info.nmi_mrep); goto nfsmout; } ((vp)) = ttvp; } } }; if (wccflag) { (wccflag) = ttretf; } else { (wccflag) = ttattrf; } } } while (0);
 else if (error == 0)
  { struct vnode *ttvp = (vp); if ((t1 = nfs_loadattrcache(&ttvp, &info.nmi_md, &info.nmi_dpos, (((void *)0)))) != 0) { error = t1; m_freem(info.nmi_mrep); goto nfsmout; } (vp) = ttvp; };
 m_freem(info.nmi_mrep);
nfsmout:
 return (error);
}
int
nfs_lookup(void *v)
{
 struct vop_lookup_args *ap = v;
 struct componentname *cnp = ap->a_cnp;
 struct vnode *dvp = ap->a_dvp;
 struct vnode **vpp = ap->a_vpp;
 struct proc *p = cnp->cn_proc;
 struct nfsm_info info;
 int flags;
 struct vnode *newvp;
 u_int32_t *tl;
 int32_t t1;
 struct nfsmount *nmp;
 caddr_t cp2;
 long len;
 nfsfh_t *fhp;
 struct nfsnode *np;
 int lockparent, wantparent, error = 0, attrflag, fhsize;
 info.nmi_v3 = (((struct nfsmount *)(((dvp)->v_mount)->mnt_data))->nm_flag & 0x00000200);
 cnp->cn_flags &= ~0x200000;
 flags = cnp->cn_flags;
 *vpp = ((struct vnode *)((void *)0));
 if ((flags & 0x008000) && (dvp->v_mount->mnt_flag & 0x00000001) &&
     (cnp->cn_nameiop == 2 || cnp->cn_nameiop == 3))
  return (30);
 if (dvp->v_type != VDIR)
  return (20);
 lockparent = flags & 0x0008;
 wantparent = flags & (0x0008|0x0010);
 nmp = ((struct nfsmount *)((dvp->v_mount)->mnt_data));
 np = ((struct nfsnode *)(dvp)->v_data);
 if ((error = cache_lookup(dvp, vpp, cnp)) >= 0) {
  struct vattr vattr;
  int err2;
  if (error && error != 2) {
   *vpp = ((struct vnode *)((void *)0));
   return (error);
  }
  if (cnp->cn_flags & 0x200000) {
   err2 = vn_lock(dvp, 0x0001UL | 0x2000UL, p);
   if (err2 != 0) {
    *vpp = ((struct vnode *)((void *)0));
    return (err2);
   }
   cnp->cn_flags &= ~0x200000;
  }
  err2 = VOP_ACCESS(dvp, 00100, cnp->cn_cred, cnp->cn_proc);
  if (err2 != 0) {
   if (error == 0) {
    if (*vpp != dvp)
     vput(*vpp);
    else
     vrele(*vpp);
   }
   *vpp = ((struct vnode *)((void *)0));
   return (err2);
  }
  if (error == 2) {
   if (!VOP_GETATTR(dvp, &vattr, cnp->cn_cred,
       cnp->cn_proc) && vattr.va_mtime.tv_sec ==
       ((struct nfsnode *)(dvp)->v_data)->n_ctime)
    return (2);
   cache_purge(dvp);
   np->n_ctime = 0;
   goto dorpc;
  }
  newvp = *vpp;
  if (!VOP_GETATTR(newvp, &vattr, cnp->cn_cred, cnp->cn_proc)
   && vattr.va_ctime.tv_sec == ((struct nfsnode *)(newvp)->v_data)->n_ctime)
  {
   nfsstats.lookupcache_hits++;
   if (cnp->cn_nameiop != 0 && (flags & 0x008000))
    cnp->cn_flags |= 0x000800;
   if ((!lockparent || !(flags & 0x008000)) &&
        newvp != dvp)
    VOP_UNLOCK(dvp, p);
   return (0);
  }
  cache_purge(newvp);
  if (newvp != dvp)
   vput(newvp);
  else
   vrele(newvp);
  *vpp = ((struct vnode *)((void *)0));
 }
dorpc:
 error = 0;
 newvp = ((struct vnode *)((void *)0));
 nfsstats.lookupcache_misses++;
 nfsstats.rpccnt[3]++;
 len = cnp->cn_namelen;
 info.nmi_mb = info.nmi_mreq = nfsm_reqhead(((info.nmi_v3) ? (64 + 4) : 32) +
     4 + (((len)+3)&(~0x3)));
 nfsm_fhtom(&info, dvp, info.nmi_v3);
 if ((len) > (255)) { m_freem(info.nmi_mreq); error = 63; goto nfsmout; } nfsm_strtombuf(&info.nmi_mb, (cnp->cn_nameptr), (len));
 info.nmi_procp = cnp->cn_proc;
 info.nmi_cred = cnp->cn_cred;
 error = nfs_request(dvp, 3, &info);
 if (error) {
  if (info.nmi_v3)
   { if (info.nmi_mrep != ((void *)0)) { struct vnode *ttvp = (dvp); { t1 = ((caddr_t)((info.nmi_md)->m_hdr.mh_data)) + info.nmi_md->m_hdr.mh_len - info.nmi_dpos; if (t1 >= (4)) { (tl) = (u_int32_t *)(info.nmi_dpos); info.nmi_dpos += (4); } else if ((t1 = nfsm_disct(&info.nmi_md, &info.nmi_dpos, (4), t1, &cp2)) != 0) { error = t1; m_freem(info.nmi_mrep); goto nfsmout; } else { (tl) = (u_int32_t *)cp2; } }; if (((attrflag) = ((int)((__uint32_t)((int32_t)(*tl))))) != 0) { if ((t1 = nfs_loadattrcache(&ttvp, &info.nmi_md, &info.nmi_dpos, ((void *)0))) != 0) { error = t1; (attrflag) = 0; m_freem(info.nmi_mrep); goto nfsmout; } (dvp) = ttvp; } } };
  m_freem(info.nmi_mrep);
  goto nfsmout;
 }
 { if (info.nmi_v3) { { t1 = ((caddr_t)((info.nmi_md)->m_hdr.mh_data)) + info.nmi_md->m_hdr.mh_len - info.nmi_dpos; if (t1 >= (4)) { (tl) = (u_int32_t *)(info.nmi_dpos); info.nmi_dpos += (4); } else if ((t1 = nfsm_disct(&info.nmi_md, &info.nmi_dpos, (4), t1, &cp2)) != 0) { error = t1; m_freem(info.nmi_mrep); goto nfsmout; } else { (tl) = (u_int32_t *)cp2; } }; if (((fhsize) = ((int)((__uint32_t)((int32_t)(*tl))))) <= 0 || (fhsize) > 64) { m_freem(info.nmi_mrep); error = 72; goto nfsmout; } } else (fhsize) = 32; { t1 = ((caddr_t)((info.nmi_md)->m_hdr.mh_data)) + info.nmi_md->m_hdr.mh_len - info.nmi_dpos; if (t1 >= ((((fhsize)+3)&(~0x3)))) { ((fhp)) = (nfsfh_t *)(info.nmi_dpos); info.nmi_dpos += ((((fhsize)+3)&(~0x3))); } else if ((t1 = nfsm_disct(&info.nmi_md, &info.nmi_dpos, ((((fhsize)+3)&(~0x3))), t1, &cp2)) != 0) { error = t1; m_freem(info.nmi_mrep); goto nfsmout; } else { ((fhp)) = (nfsfh_t *)cp2; } }; };
 if (cnp->cn_nameiop == 3 && wantparent && (flags & 0x008000)) {
  if (((np)->n_fhsize == (fhsize) && !__builtin_bcmp(((caddr_t)(np)->n_fhp), ((caddr_t)(fhp)), ((fhsize))))) {
   m_freem(info.nmi_mrep);
   return (21);
  }
  error = nfs_nget(dvp->v_mount, fhp, fhsize, &np);
  if (error) {
   m_freem(info.nmi_mrep);
   return (error);
  }
  newvp = ((np)->n_vnode);
  if (info.nmi_v3) {
   { if (info.nmi_mrep != ((void *)0)) { struct vnode *ttvp = (newvp); { t1 = ((caddr_t)((info.nmi_md)->m_hdr.mh_data)) + info.nmi_md->m_hdr.mh_len - info.nmi_dpos; if (t1 >= (4)) { (tl) = (u_int32_t *)(info.nmi_dpos); info.nmi_dpos += (4); } else if ((t1 = nfsm_disct(&info.nmi_md, &info.nmi_dpos, (4), t1, &cp2)) != 0) { error = t1; m_freem(info.nmi_mrep); goto nfsmout; } else { (tl) = (u_int32_t *)cp2; } }; if (((attrflag) = ((int)((__uint32_t)((int32_t)(*tl))))) != 0) { if ((t1 = nfs_loadattrcache(&ttvp, &info.nmi_md, &info.nmi_dpos, ((void *)0))) != 0) { error = t1; (attrflag) = 0; m_freem(info.nmi_mrep); goto nfsmout; } (newvp) = ttvp; } } };
   { if (info.nmi_mrep != ((void *)0)) { struct vnode *ttvp = (dvp); { t1 = ((caddr_t)((info.nmi_md)->m_hdr.mh_data)) + info.nmi_md->m_hdr.mh_len - info.nmi_dpos; if (t1 >= (4)) { (tl) = (u_int32_t *)(info.nmi_dpos); info.nmi_dpos += (4); } else if ((t1 = nfsm_disct(&info.nmi_md, &info.nmi_dpos, (4), t1, &cp2)) != 0) { error = t1; m_freem(info.nmi_mrep); goto nfsmout; } else { (tl) = (u_int32_t *)cp2; } }; if (((attrflag) = ((int)((__uint32_t)((int32_t)(*tl))))) != 0) { if ((t1 = nfs_loadattrcache(&ttvp, &info.nmi_md, &info.nmi_dpos, ((void *)0))) != 0) { error = t1; (attrflag) = 0; m_freem(info.nmi_mrep); goto nfsmout; } (dvp) = ttvp; } } };
  } else
   { struct vnode *ttvp = (newvp); if ((t1 = nfs_loadattrcache(&ttvp, &info.nmi_md, &info.nmi_dpos, (((void *)0)))) != 0) { error = t1; m_freem(info.nmi_mrep); goto nfsmout; } (newvp) = ttvp; };
  *vpp = newvp;
  m_freem(info.nmi_mrep);
  cnp->cn_flags |= 0x000800;
  if (!lockparent) {
   VOP_UNLOCK(dvp, p);
   cnp->cn_flags |= 0x200000;
  }
  return (0);
 }
 if (((np)->n_fhsize == (fhsize) && !__builtin_bcmp(((caddr_t)(np)->n_fhp), ((caddr_t)(fhp)), ((fhsize))))) {
  vref(dvp);
  newvp = dvp;
  if (info.nmi_v3) {
   { if (info.nmi_mrep != ((void *)0)) { struct vnode *ttvp = (newvp); { t1 = ((caddr_t)((info.nmi_md)->m_hdr.mh_data)) + info.nmi_md->m_hdr.mh_len - info.nmi_dpos; if (t1 >= (4)) { (tl) = (u_int32_t *)(info.nmi_dpos); info.nmi_dpos += (4); } else if ((t1 = nfsm_disct(&info.nmi_md, &info.nmi_dpos, (4), t1, &cp2)) != 0) { error = t1; m_freem(info.nmi_mrep); goto nfsmout; } else { (tl) = (u_int32_t *)cp2; } }; if (((attrflag) = ((int)((__uint32_t)((int32_t)(*tl))))) != 0) { if ((t1 = nfs_loadattrcache(&ttvp, &info.nmi_md, &info.nmi_dpos, ((void *)0))) != 0) { error = t1; (attrflag) = 0; m_freem(info.nmi_mrep); goto nfsmout; } (newvp) = ttvp; } } };
   { if (info.nmi_mrep != ((void *)0)) { struct vnode *ttvp = (dvp); { t1 = ((caddr_t)((info.nmi_md)->m_hdr.mh_data)) + info.nmi_md->m_hdr.mh_len - info.nmi_dpos; if (t1 >= (4)) { (tl) = (u_int32_t *)(info.nmi_dpos); info.nmi_dpos += (4); } else if ((t1 = nfsm_disct(&info.nmi_md, &info.nmi_dpos, (4), t1, &cp2)) != 0) { error = t1; m_freem(info.nmi_mrep); goto nfsmout; } else { (tl) = (u_int32_t *)cp2; } }; if (((attrflag) = ((int)((__uint32_t)((int32_t)(*tl))))) != 0) { if ((t1 = nfs_loadattrcache(&ttvp, &info.nmi_md, &info.nmi_dpos, ((void *)0))) != 0) { error = t1; (attrflag) = 0; m_freem(info.nmi_mrep); goto nfsmout; } (dvp) = ttvp; } } };
  } else
   { struct vnode *ttvp = (newvp); if ((t1 = nfs_loadattrcache(&ttvp, &info.nmi_md, &info.nmi_dpos, (((void *)0)))) != 0) { error = t1; m_freem(info.nmi_mrep); goto nfsmout; } (newvp) = ttvp; };
 } else if (flags & 0x002000) {
  VOP_UNLOCK(dvp, p);
  cnp->cn_flags |= 0x200000;
  error = nfs_nget(dvp->v_mount, fhp, fhsize, &np);
  if (error) {
   if (vn_lock(dvp, 0x0001UL | 0x2000UL, p) == 0)
    cnp->cn_flags &= ~0x200000;
   m_freem(info.nmi_mrep);
   return (error);
  }
  newvp = ((np)->n_vnode);
  if (info.nmi_v3) {
   { if (info.nmi_mrep != ((void *)0)) { struct vnode *ttvp = (newvp); { t1 = ((caddr_t)((info.nmi_md)->m_hdr.mh_data)) + info.nmi_md->m_hdr.mh_len - info.nmi_dpos; if (t1 >= (4)) { (tl) = (u_int32_t *)(info.nmi_dpos); info.nmi_dpos += (4); } else if ((t1 = nfsm_disct(&info.nmi_md, &info.nmi_dpos, (4), t1, &cp2)) != 0) { error = t1; m_freem(info.nmi_mrep); goto nfsmout; } else { (tl) = (u_int32_t *)cp2; } }; if (((attrflag) = ((int)((__uint32_t)((int32_t)(*tl))))) != 0) { if ((t1 = nfs_loadattrcache(&ttvp, &info.nmi_md, &info.nmi_dpos, ((void *)0))) != 0) { error = t1; (attrflag) = 0; m_freem(info.nmi_mrep); goto nfsmout; } (newvp) = ttvp; } } };
   { if (info.nmi_mrep != ((void *)0)) { struct vnode *ttvp = (dvp); { t1 = ((caddr_t)((info.nmi_md)->m_hdr.mh_data)) + info.nmi_md->m_hdr.mh_len - info.nmi_dpos; if (t1 >= (4)) { (tl) = (u_int32_t *)(info.nmi_dpos); info.nmi_dpos += (4); } else if ((t1 = nfsm_disct(&info.nmi_md, &info.nmi_dpos, (4), t1, &cp2)) != 0) { error = t1; m_freem(info.nmi_mrep); goto nfsmout; } else { (tl) = (u_int32_t *)cp2; } }; if (((attrflag) = ((int)((__uint32_t)((int32_t)(*tl))))) != 0) { if ((t1 = nfs_loadattrcache(&ttvp, &info.nmi_md, &info.nmi_dpos, ((void *)0))) != 0) { error = t1; (attrflag) = 0; m_freem(info.nmi_mrep); goto nfsmout; } (dvp) = ttvp; } } };
  } else
   { struct vnode *ttvp = (newvp); if ((t1 = nfs_loadattrcache(&ttvp, &info.nmi_md, &info.nmi_dpos, (((void *)0)))) != 0) { error = t1; m_freem(info.nmi_mrep); goto nfsmout; } (newvp) = ttvp; };
  if (lockparent && (flags & 0x008000)) {
   if ((error = vn_lock(dvp, 0x0001UL, p))) {
    m_freem(info.nmi_mrep);
    vput(newvp);
    return error;
   }
   cnp->cn_flags &= ~0x200000;
  }
 } else {
  error = nfs_nget(dvp->v_mount, fhp, fhsize, &np);
  if (error) {
   m_freem(info.nmi_mrep);
   return error;
  }
  newvp = ((np)->n_vnode);
  if (info.nmi_v3) {
   { if (info.nmi_mrep != ((void *)0)) { struct vnode *ttvp = (newvp); { t1 = ((caddr_t)((info.nmi_md)->m_hdr.mh_data)) + info.nmi_md->m_hdr.mh_len - info.nmi_dpos; if (t1 >= (4)) { (tl) = (u_int32_t *)(info.nmi_dpos); info.nmi_dpos += (4); } else if ((t1 = nfsm_disct(&info.nmi_md, &info.nmi_dpos, (4), t1, &cp2)) != 0) { error = t1; m_freem(info.nmi_mrep); goto nfsmout; } else { (tl) = (u_int32_t *)cp2; } }; if (((attrflag) = ((int)((__uint32_t)((int32_t)(*tl))))) != 0) { if ((t1 = nfs_loadattrcache(&ttvp, &info.nmi_md, &info.nmi_dpos, ((void *)0))) != 0) { error = t1; (attrflag) = 0; m_freem(info.nmi_mrep); goto nfsmout; } (newvp) = ttvp; } } };
   { if (info.nmi_mrep != ((void *)0)) { struct vnode *ttvp = (dvp); { t1 = ((caddr_t)((info.nmi_md)->m_hdr.mh_data)) + info.nmi_md->m_hdr.mh_len - info.nmi_dpos; if (t1 >= (4)) { (tl) = (u_int32_t *)(info.nmi_dpos); info.nmi_dpos += (4); } else if ((t1 = nfsm_disct(&info.nmi_md, &info.nmi_dpos, (4), t1, &cp2)) != 0) { error = t1; m_freem(info.nmi_mrep); goto nfsmout; } else { (tl) = (u_int32_t *)cp2; } }; if (((attrflag) = ((int)((__uint32_t)((int32_t)(*tl))))) != 0) { if ((t1 = nfs_loadattrcache(&ttvp, &info.nmi_md, &info.nmi_dpos, ((void *)0))) != 0) { error = t1; (attrflag) = 0; m_freem(info.nmi_mrep); goto nfsmout; } (dvp) = ttvp; } } };
  } else
   { struct vnode *ttvp = (newvp); if ((t1 = nfs_loadattrcache(&ttvp, &info.nmi_md, &info.nmi_dpos, (((void *)0)))) != 0) { error = t1; m_freem(info.nmi_mrep); goto nfsmout; } (newvp) = ttvp; };
  if (!lockparent || !(flags & 0x008000)) {
   VOP_UNLOCK(dvp, p);
   cnp->cn_flags |= 0x200000;
  }
 }
 if (cnp->cn_nameiop != 0 && (flags & 0x008000))
  cnp->cn_flags |= 0x000800;
 if ((cnp->cn_flags & 0x004000) &&
     (cnp->cn_nameiop != 2 || !(flags & 0x008000))) {
  nfs_cache_enter(dvp, newvp, cnp);
 }
 *vpp = newvp;
 m_freem(info.nmi_mrep);
nfsmout:
 if (error) {
  if (error == 2 && (cnp->cn_flags & 0x004000) &&
      cnp->cn_nameiop != 1) {
   nfs_cache_enter(dvp, ((void *)0), cnp);
  }
  if (newvp != ((struct vnode *)((void *)0))) {
   vrele(newvp);
   if (newvp != dvp)
    VOP_UNLOCK(newvp, p);
  }
  if ((cnp->cn_nameiop == 1 || cnp->cn_nameiop == 3) &&
      (flags & 0x008000) && error == 2) {
   if (dvp->v_mount->mnt_flag & 0x00000001)
    error = 30;
   else
    error = -2;
  }
  if (cnp->cn_nameiop != 0 && (flags & 0x008000))
   cnp->cn_flags |= 0x000800;
  *vpp = ((void *)0);
 }
 return (error);
}
int
nfs_read(void *v)
{
 struct vop_read_args *ap = v;
 struct vnode *vp = ap->a_vp;
 if (vp->v_type != VREG)
  return (1);
 return (nfs_bioread(vp, ap->a_uio, ap->a_ioflag, ap->a_cred));
}
int
nfs_readlink(void *v)
{
 struct vop_readlink_args *ap = v;
 struct vnode *vp = ap->a_vp;
 if (vp->v_type != VLNK)
  return (1);
 return (nfs_bioread(vp, ap->a_uio, 0, ap->a_cred));
}
int
nfs_readlinkrpc(struct vnode *vp, struct uio *uiop, struct ucred *cred)
{
 struct nfsm_info info;
 u_int32_t *tl;
 int32_t t1;
 caddr_t cp2;
 int error = 0, len, attrflag;
 info.nmi_v3 = (((struct nfsmount *)(((vp)->v_mount)->mnt_data))->nm_flag & 0x00000200);
 nfsstats.rpccnt[5]++;
 info.nmi_mb = info.nmi_mreq = nfsm_reqhead(((info.nmi_v3) ? (64 + 4) : 32));
 nfsm_fhtom(&info, vp, info.nmi_v3);
 info.nmi_procp = (__curcpu->ci_self)->ci_curproc;
 info.nmi_cred = cred;
 error = nfs_request(vp, 5, &info);
 if (info.nmi_v3)
  { if (info.nmi_mrep != ((void *)0)) { struct vnode *ttvp = (vp); { t1 = ((caddr_t)((info.nmi_md)->m_hdr.mh_data)) + info.nmi_md->m_hdr.mh_len - info.nmi_dpos; if (t1 >= (4)) { (tl) = (u_int32_t *)(info.nmi_dpos); info.nmi_dpos += (4); } else if ((t1 = nfsm_disct(&info.nmi_md, &info.nmi_dpos, (4), t1, &cp2)) != 0) { error = t1; m_freem(info.nmi_mrep); goto nfsmout; } else { (tl) = (u_int32_t *)cp2; } }; if (((attrflag) = ((int)((__uint32_t)((int32_t)(*tl))))) != 0) { if ((t1 = nfs_loadattrcache(&ttvp, &info.nmi_md, &info.nmi_dpos, ((void *)0))) != 0) { error = t1; (attrflag) = 0; m_freem(info.nmi_mrep); goto nfsmout; } (vp) = ttvp; } } };
 if (!error) {
  { { t1 = ((caddr_t)((info.nmi_md)->m_hdr.mh_data)) + info.nmi_md->m_hdr.mh_len - info.nmi_dpos; if (t1 >= (4)) { (tl) = (u_int32_t *)(info.nmi_dpos); info.nmi_dpos += (4); } else if ((t1 = nfsm_disct(&info.nmi_md, &info.nmi_dpos, (4), t1, &cp2)) != 0) { error = t1; m_freem(info.nmi_mrep); goto nfsmout; } else { (tl) = (u_int32_t *)cp2; } }; if (((len) = ((int32_t)((__uint32_t)((int32_t)(*tl))))) > (1024)) { m_freem(info.nmi_mrep); error = 72; goto nfsmout; } };
  if ((len) > 0 && (t1 = nfsm_mbuftouio(&info.nmi_md, (uiop), (len), &info.nmi_dpos)) != 0) { error = t1; m_freem(info.nmi_mrep); goto nfsmout; };
 }
 m_freem(info.nmi_mrep);
nfsmout:
 return (error);
}
int
nfs_readrpc(struct vnode *vp, struct uio *uiop)
{
 struct nfsm_info info;
 u_int32_t *tl;
 int32_t t1;
 caddr_t cp2;
 struct nfsmount *nmp;
 int error = 0, len, retlen, tsiz, eof, attrflag;
 info.nmi_v3 = (((struct nfsmount *)(((vp)->v_mount)->mnt_data))->nm_flag & 0x00000200);
 eof = 0;
 nmp = ((struct nfsmount *)((vp->v_mount)->mnt_data));
 tsiz = uiop->uio_resid;
 if (uiop->uio_offset + tsiz > 0xffffffff && !info.nmi_v3)
  return (27);
 while (tsiz > 0) {
  nfsstats.rpccnt[6]++;
  len = (tsiz > nmp->nm_rsize) ? nmp->nm_rsize : tsiz;
  info.nmi_mb = info.nmi_mreq = nfsm_reqhead(((info.nmi_v3) ? (64 + 4) : 32) +
      4 * 3);
  nfsm_fhtom(&info, vp, info.nmi_v3);
  tl = nfsm_build(&info.nmi_mb, 4 * 3);
  if (info.nmi_v3) {
   do { ((u_int32_t *)(tl))[0] = ((__uint32_t)((u_int32_t)((uiop->uio_offset) >> 32))); ((u_int32_t *)(tl))[1] = ((__uint32_t)((u_int32_t)((uiop->uio_offset) & 0xffffffff))); } while (0);
   *(tl + 2) = (((__uint32_t)((int32_t)(len))));
  } else {
   *tl++ = (((__uint32_t)((int32_t)(uiop->uio_offset))));
   *tl++ = (((__uint32_t)((int32_t)(len))));
   *tl = 0;
  }
  info.nmi_procp = (__curcpu->ci_self)->ci_curproc;
  info.nmi_cred = ((struct nfsnode *)(vp)->v_data)->n_rcred;
  error = nfs_request(vp, 6, &info);
  if (info.nmi_v3)
   { if (info.nmi_mrep != ((void *)0)) { struct vnode *ttvp = (vp); { t1 = ((caddr_t)((info.nmi_md)->m_hdr.mh_data)) + info.nmi_md->m_hdr.mh_len - info.nmi_dpos; if (t1 >= (4)) { (tl) = (u_int32_t *)(info.nmi_dpos); info.nmi_dpos += (4); } else if ((t1 = nfsm_disct(&info.nmi_md, &info.nmi_dpos, (4), t1, &cp2)) != 0) { error = t1; m_freem(info.nmi_mrep); goto nfsmout; } else { (tl) = (u_int32_t *)cp2; } }; if (((attrflag) = ((int)((__uint32_t)((int32_t)(*tl))))) != 0) { if ((t1 = nfs_loadattrcache(&ttvp, &info.nmi_md, &info.nmi_dpos, ((void *)0))) != 0) { error = t1; (attrflag) = 0; m_freem(info.nmi_mrep); goto nfsmout; } (vp) = ttvp; } } };
  if (error) {
   m_freem(info.nmi_mrep);
   goto nfsmout;
  }
  if (info.nmi_v3) {
   { t1 = ((caddr_t)((info.nmi_md)->m_hdr.mh_data)) + info.nmi_md->m_hdr.mh_len - info.nmi_dpos; if (t1 >= (2 * 4)) { (tl) = (u_int32_t *)(info.nmi_dpos); info.nmi_dpos += (2 * 4); } else if ((t1 = nfsm_disct(&info.nmi_md, &info.nmi_dpos, (2 * 4), t1, &cp2)) != 0) { error = t1; m_freem(info.nmi_mrep); goto nfsmout; } else { (tl) = (u_int32_t *)cp2; } };
   eof = ((int)((__uint32_t)((int32_t)(*(tl + 1)))));
  } else {
   { struct vnode *ttvp = (vp); if ((t1 = nfs_loadattrcache(&ttvp, &info.nmi_md, &info.nmi_dpos, (((void *)0)))) != 0) { error = t1; m_freem(info.nmi_mrep); goto nfsmout; } (vp) = ttvp; };
  }
  { { t1 = ((caddr_t)((info.nmi_md)->m_hdr.mh_data)) + info.nmi_md->m_hdr.mh_len - info.nmi_dpos; if (t1 >= (4)) { (tl) = (u_int32_t *)(info.nmi_dpos); info.nmi_dpos += (4); } else if ((t1 = nfsm_disct(&info.nmi_md, &info.nmi_dpos, (4), t1, &cp2)) != 0) { error = t1; m_freem(info.nmi_mrep); goto nfsmout; } else { (tl) = (u_int32_t *)cp2; } }; if (((retlen) = ((int32_t)((__uint32_t)((int32_t)(*tl))))) > (nmp->nm_rsize)) { m_freem(info.nmi_mrep); error = 72; goto nfsmout; } };
  if ((retlen) > 0 && (t1 = nfsm_mbuftouio(&info.nmi_md, (uiop), (retlen), &info.nmi_dpos)) != 0) { error = t1; m_freem(info.nmi_mrep); goto nfsmout; };
  m_freem(info.nmi_mrep);
  tsiz -= retlen;
  if (info.nmi_v3) {
   if (eof || retlen == 0)
    tsiz = 0;
  } else if (retlen < len)
   tsiz = 0;
 }
nfsmout:
 return (error);
}
int
nfs_writerpc(struct vnode *vp, struct uio *uiop, int *iomode, int *must_commit)
{
 struct nfsm_info info;
 u_int32_t *tl;
 int32_t t1, backup;
 caddr_t cp2;
 struct nfsmount *nmp = ((struct nfsmount *)((vp->v_mount)->mnt_data));
 int error = 0, len, tsiz, wccflag = 0, rlen, commit;
 int committed = 2;
 info.nmi_v3 = (((struct nfsmount *)(((vp)->v_mount)->mnt_data))->nm_flag & 0x00000200);
 if (uiop->uio_iovcnt != 1)
  panic("nfs: writerpc iovcnt > 1");
 *must_commit = 0;
 tsiz = uiop->uio_resid;
 if (uiop->uio_offset + tsiz > 0xffffffff && !info.nmi_v3)
  return (27);
 while (tsiz > 0) {
  nfsstats.rpccnt[7]++;
  len = (tsiz > nmp->nm_wsize) ? nmp->nm_wsize : tsiz;
  info.nmi_mb = info.nmi_mreq = nfsm_reqhead(((info.nmi_v3) ? (64 + 4) : 32)
      + 5 * 4 + (((len)+3)&(~0x3)));
  nfsm_fhtom(&info, vp, info.nmi_v3);
  if (info.nmi_v3) {
   tl = nfsm_build(&info.nmi_mb, 5 * 4);
   do { ((u_int32_t *)(tl))[0] = ((__uint32_t)((u_int32_t)((uiop->uio_offset) >> 32))); ((u_int32_t *)(tl))[1] = ((__uint32_t)((u_int32_t)((uiop->uio_offset) & 0xffffffff))); } while (0);
   tl += 2;
   *tl++ = (((__uint32_t)((int32_t)(len))));
   *tl++ = (((__uint32_t)((int32_t)(*iomode))));
   *tl = (((__uint32_t)((int32_t)(len))));
  } else {
   u_int32_t x;
   tl = nfsm_build(&info.nmi_mb, 4 * 4);
   x = (((__uint32_t)((int32_t)((u_int32_t)uiop->uio_offset))));
   *tl++ = x;
   *tl++ = x;
   x = (((__uint32_t)((int32_t)(len))));
   *tl++ = x;
   *tl = x;
  }
  nfsm_uiotombuf(&info.nmi_mb, uiop, len);
  info.nmi_procp = (__curcpu->ci_self)->ci_curproc;
  info.nmi_cred = ((struct nfsnode *)(vp)->v_data)->n_wcred;
  error = nfs_request(vp, 7, &info);
  if (info.nmi_v3) {
   wccflag = 1;
   do { if (info.nmi_mrep != ((void *)0)) { struct timespec _mtime; int ttattrf, ttretf = 0; { t1 = ((caddr_t)((info.nmi_md)->m_hdr.mh_data)) + info.nmi_md->m_hdr.mh_len - info.nmi_dpos; if (t1 >= (4)) { (tl) = (u_int32_t *)(info.nmi_dpos); info.nmi_dpos += (4); } else if ((t1 = nfsm_disct(&info.nmi_md, &info.nmi_dpos, (4), t1, &cp2)) != 0) { error = t1; m_freem(info.nmi_mrep); goto nfsmout; } else { (tl) = (u_int32_t *)cp2; } }; if (*tl == nfs_true) { { t1 = ((caddr_t)((info.nmi_md)->m_hdr.mh_data)) + info.nmi_md->m_hdr.mh_len - info.nmi_dpos; if (t1 >= (6 * 4)) { (tl) = (u_int32_t *)(info.nmi_dpos); info.nmi_dpos += (6 * 4); } else if ((t1 = nfsm_disct(&info.nmi_md, &info.nmi_dpos, (6 * 4), t1, &cp2)) != 0) { error = t1; m_freem(info.nmi_mrep); goto nfsmout; } else { (tl) = (u_int32_t *)cp2; } }; do { (&_mtime)->tv_sec = ((__uint32_t)(((struct nfsv3_time *)(tl + 2))->nfsv3_sec)); (&_mtime)->tv_nsec = ((__uint32_t)(((struct nfsv3_time *)(tl + 2))->nfsv3_nsec)); } while (0); if (wccflag) { ttretf = (((&((struct nfsnode *)(vp)->v_data)->n_mtime)->tv_sec == (&_mtime)->tv_sec) ? ((&((struct nfsnode *)(vp)->v_data)->n_mtime)->tv_nsec != (&_mtime)->tv_nsec) : ((&((struct nfsnode *)(vp)->v_data)->n_mtime)->tv_sec != (&_mtime)->tv_sec)); } } { if (info.nmi_mrep != ((void *)0)) { struct vnode *ttvp = ((vp)); { t1 = ((caddr_t)((info.nmi_md)->m_hdr.mh_data)) + info.nmi_md->m_hdr.mh_len - info.nmi_dpos; if (t1 >= (4)) { (tl) = (u_int32_t *)(info.nmi_dpos); info.nmi_dpos += (4); } else if ((t1 = nfsm_disct(&info.nmi_md, &info.nmi_dpos, (4), t1, &cp2)) != 0) { error = t1; m_freem(info.nmi_mrep); goto nfsmout; } else { (tl) = (u_int32_t *)cp2; } }; if (((ttattrf) = ((int)((__uint32_t)((int32_t)(*tl))))) != 0) { if ((t1 = nfs_loadattrcache(&ttvp, &info.nmi_md, &info.nmi_dpos, ((void *)0))) != 0) { error = t1; (ttattrf) = 0; m_freem(info.nmi_mrep); goto nfsmout; } ((vp)) = ttvp; } } }; if (wccflag) { (wccflag) = ttretf; } else { (wccflag) = ttattrf; } } } while (0);
  }
  if (error) {
   m_freem(info.nmi_mrep);
   goto nfsmout;
  }
  if (info.nmi_v3) {
   wccflag = 1;
   { t1 = ((caddr_t)((info.nmi_md)->m_hdr.mh_data)) + info.nmi_md->m_hdr.mh_len - info.nmi_dpos; if (t1 >= (2 * 4 + 8)) { (tl) = (u_int32_t *)(info.nmi_dpos); info.nmi_dpos += (2 * 4 + 8); } else if ((t1 = nfsm_disct(&info.nmi_md, &info.nmi_dpos, (2 * 4 + 8), t1, &cp2)) != 0) { error = t1; m_freem(info.nmi_mrep); goto nfsmout; } else { (tl) = (u_int32_t *)cp2; } };
   rlen = ((int)((__uint32_t)((int32_t)(*tl++))));
   if (rlen == 0) {
    error = 5;
    break;
   } else if (rlen < len) {
    backup = len - rlen;
    uiop->uio_iov->iov_base =
        (char *)uiop->uio_iov->iov_base -
        backup;
    uiop->uio_iov->iov_len += backup;
    uiop->uio_offset -= backup;
    uiop->uio_resid += backup;
    len = rlen;
   }
   commit = ((int)((__uint32_t)((int32_t)(*tl++))));
   if (committed == 2)
    committed = commit;
   else if (committed == 1 &&
    commit == 0)
    committed = commit;
   if ((nmp->nm_flag & 0x00040000) == 0) {
    __builtin_bcopy((tl), (nmp->nm_verf), (8));
    nmp->nm_flag |= 0x00040000;
   } else if (__builtin_bcmp((tl), (nmp->nm_verf), (8))) {
    *must_commit = 1;
    __builtin_bcopy((tl), (nmp->nm_verf), (8));
   }
  } else {
   { struct vnode *ttvp = (vp); if ((t1 = nfs_loadattrcache(&ttvp, &info.nmi_md, &info.nmi_dpos, (((void *)0)))) != 0) { error = t1; m_freem(info.nmi_mrep); goto nfsmout; } (vp) = ttvp; };
  }
  if (wccflag)
      ((struct nfsnode *)(vp)->v_data)->n_mtime = ((struct nfsnode *)(vp)->v_data)->n_vattr.va_mtime;
  m_freem(info.nmi_mrep);
  tsiz -= len;
 }
nfsmout:
 *iomode = committed;
 if (error)
  uiop->uio_resid = tsiz;
 return (error);
}
int
nfs_mknodrpc(struct vnode *dvp, struct vnode **vpp, struct componentname *cnp,
    struct vattr *vap)
{
 struct nfsv2_sattr *sp;
 struct nfsm_info info;
 u_int32_t *tl;
 int32_t t1;
 struct vnode *newvp = ((void *)0);
 struct nfsnode *np = ((void *)0);
 char *cp2;
 int error = 0, wccflag = 0, gotvp = 0;
 u_int32_t rdev;
 info.nmi_v3 = (((struct nfsmount *)(((dvp)->v_mount)->mnt_data))->nm_flag & 0x00000200);
 if (vap->va_type == VCHR || vap->va_type == VBLK)
  rdev = (((__uint32_t)((int32_t)(vap->va_rdev))));
 else if (vap->va_type == VFIFO || vap->va_type == VSOCK)
  rdev = nfs_xdrneg1;
 else {
  VOP_ABORTOP(dvp, cnp);
  vput(dvp);
  return (45);
 }
 nfsstats.rpccnt[11]++;
 info.nmi_mb = info.nmi_mreq = nfsm_reqhead(((info.nmi_v3) ? (64 + 4) : 32) +
     4 * 4 + (((cnp->cn_namelen)+3)&(~0x3)) +
     ((info.nmi_v3) ? 60 : 32));
 nfsm_fhtom(&info, dvp, info.nmi_v3);
 if ((cnp->cn_namelen) > (255)) { m_freem(info.nmi_mreq); error = 63; goto nfsmout; } nfsm_strtombuf(&info.nmi_mb, (cnp->cn_nameptr), (cnp->cn_namelen));
 if (info.nmi_v3) {
  tl = nfsm_build(&info.nmi_mb, 4);
  *tl++ = (((__uint32_t)((int32_t)(nfsv3_type[((int32_t)(vap->va_type))]))));
  nfsm_v3attrbuild(&info.nmi_mb, vap, 0);
  if (vap->va_type == VCHR || vap->va_type == VBLK) {
   tl = nfsm_build(&info.nmi_mb, 2 * 4);
   *tl++ = (((__uint32_t)((int32_t)(((int32_t)(((u_int32_t)(vap->va_rdev) >> 8) & 0xff))))));
   *tl = (((__uint32_t)((int32_t)(((int32_t)((vap->va_rdev) & 0xff) | (((vap->va_rdev) & 0xffff0000) >> 8))))));
  }
 } else {
  sp = nfsm_build(&info.nmi_mb, 32);
  sp->sa_mode = (((__uint32_t)((int32_t)(((vap->va_type) == VFIFO) ? (int)((vttoif_tab[(int)(VCHR)]) | ((vap->va_mode))) : (int)((vttoif_tab[(int)((vap->va_type))]) | ((vap->va_mode)))))));
  sp->sa_uid = nfs_xdrneg1;
  sp->sa_gid = nfs_xdrneg1;
  sp->sa_size = rdev;
  txdr_nfsv2time(&vap->va_atime, &sp->sa_atime);
  txdr_nfsv2time(&vap->va_mtime, &sp->sa_mtime);
 }
 ((cnp->cn_proc == (__curcpu->ci_self)->ci_curproc) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../nfs/nfs_vnops.c", 1314, "cnp->cn_proc == curproc"));
 info.nmi_procp = cnp->cn_proc;
 info.nmi_cred = cnp->cn_cred;
 error = nfs_request(dvp, 11, &info);
 if (!error) {
  { struct nfsnode *ttnp; nfsfh_t *ttfhp; int ttfhsize; if (info.nmi_v3) { { t1 = ((caddr_t)((info.nmi_md)->m_hdr.mh_data)) + info.nmi_md->m_hdr.mh_len - info.nmi_dpos; if (t1 >= (4)) { (tl) = (u_int32_t *)(info.nmi_dpos); info.nmi_dpos += (4); } else if ((t1 = nfsm_disct(&info.nmi_md, &info.nmi_dpos, (4), t1, &cp2)) != 0) { error = t1; m_freem(info.nmi_mrep); goto nfsmout; } else { (tl) = (u_int32_t *)cp2; } }; (gotvp) = ((int)((__uint32_t)((int32_t)(*tl)))); } else (gotvp) = 1; if (gotvp) { { if ((info.nmi_v3)) { { t1 = ((caddr_t)((info.nmi_md)->m_hdr.mh_data)) + info.nmi_md->m_hdr.mh_len - info.nmi_dpos; if (t1 >= (4)) { (tl) = (u_int32_t *)(info.nmi_dpos); info.nmi_dpos += (4); } else if ((t1 = nfsm_disct(&info.nmi_md, &info.nmi_dpos, (4), t1, &cp2)) != 0) { error = t1; m_freem(info.nmi_mrep); goto nfsmout; } else { (tl) = (u_int32_t *)cp2; } }; if (((ttfhsize) = ((int)((__uint32_t)((int32_t)(*tl))))) <= 0 || (ttfhsize) > 64) { m_freem(info.nmi_mrep); error = 72; goto nfsmout; } } else (ttfhsize) = 32; { t1 = ((caddr_t)((info.nmi_md)->m_hdr.mh_data)) + info.nmi_md->m_hdr.mh_len - info.nmi_dpos; if (t1 >= ((((ttfhsize)+3)&(~0x3)))) { ((ttfhp)) = (nfsfh_t *)(info.nmi_dpos); info.nmi_dpos += ((((ttfhsize)+3)&(~0x3))); } else if ((t1 = nfsm_disct(&info.nmi_md, &info.nmi_dpos, ((((ttfhsize)+3)&(~0x3))), t1, &cp2)) != 0) { error = t1; m_freem(info.nmi_mrep); goto nfsmout; } else { ((ttfhp)) = (nfsfh_t *)cp2; } }; }; if ((t1 = nfs_nget((dvp)->v_mount, ttfhp, ttfhsize, &ttnp)) != 0) { error = t1; m_freem(info.nmi_mrep); goto nfsmout; } (newvp) = ((ttnp)->n_vnode); } if (info.nmi_v3) { { t1 = ((caddr_t)((info.nmi_md)->m_hdr.mh_data)) + info.nmi_md->m_hdr.mh_len - info.nmi_dpos; if (t1 >= (4)) { (tl) = (u_int32_t *)(info.nmi_dpos); info.nmi_dpos += (4); } else if ((t1 = nfsm_disct(&info.nmi_md, &info.nmi_dpos, (4), t1, &cp2)) != 0) { error = t1; m_freem(info.nmi_mrep); goto nfsmout; } else { (tl) = (u_int32_t *)cp2; } }; if (gotvp) (gotvp) = ((int)((__uint32_t)((int32_t)(*tl)))); else if (((int)((__uint32_t)((int32_t)(*tl))))) { t1 = ((caddr_t)((info.nmi_md)->m_hdr.mh_data)) + info.nmi_md->m_hdr.mh_len - info.nmi_dpos; if (t1 >= (84)) { info.nmi_dpos += (84); } else if ((t1 = nfs_adv(&info.nmi_md, &info.nmi_dpos, (84), t1)) != 0) { error = t1; m_freem(info.nmi_mrep); goto nfsmout; } }; } if (gotvp) { struct vnode *ttvp = ((newvp)); if ((t1 = nfs_loadattrcache(&ttvp, &info.nmi_md, &info.nmi_dpos, (((void *)0)))) != 0) { error = t1; m_freem(info.nmi_mrep); goto nfsmout; } ((newvp)) = ttvp; }; };
  if (!gotvp) {
   if (newvp) {
    vrele(newvp);
    newvp = ((void *)0);
   }
   error = nfs_lookitup(dvp, cnp->cn_nameptr,
       cnp->cn_namelen, cnp->cn_cred, cnp->cn_proc, &np);
   if (!error)
    newvp = ((np)->n_vnode);
  }
 }
 if (info.nmi_v3)
  do { if (info.nmi_mrep != ((void *)0)) { struct timespec _mtime; int ttattrf, ttretf = 0; { t1 = ((caddr_t)((info.nmi_md)->m_hdr.mh_data)) + info.nmi_md->m_hdr.mh_len - info.nmi_dpos; if (t1 >= (4)) { (tl) = (u_int32_t *)(info.nmi_dpos); info.nmi_dpos += (4); } else if ((t1 = nfsm_disct(&info.nmi_md, &info.nmi_dpos, (4), t1, &cp2)) != 0) { error = t1; m_freem(info.nmi_mrep); goto nfsmout; } else { (tl) = (u_int32_t *)cp2; } }; if (*tl == nfs_true) { { t1 = ((caddr_t)((info.nmi_md)->m_hdr.mh_data)) + info.nmi_md->m_hdr.mh_len - info.nmi_dpos; if (t1 >= (6 * 4)) { (tl) = (u_int32_t *)(info.nmi_dpos); info.nmi_dpos += (6 * 4); } else if ((t1 = nfsm_disct(&info.nmi_md, &info.nmi_dpos, (6 * 4), t1, &cp2)) != 0) { error = t1; m_freem(info.nmi_mrep); goto nfsmout; } else { (tl) = (u_int32_t *)cp2; } }; do { (&_mtime)->tv_sec = ((__uint32_t)(((struct nfsv3_time *)(tl + 2))->nfsv3_sec)); (&_mtime)->tv_nsec = ((__uint32_t)(((struct nfsv3_time *)(tl + 2))->nfsv3_nsec)); } while (0); if (wccflag) { ttretf = (((&((struct nfsnode *)(dvp)->v_data)->n_mtime)->tv_sec == (&_mtime)->tv_sec) ? ((&((struct nfsnode *)(dvp)->v_data)->n_mtime)->tv_nsec != (&_mtime)->tv_nsec) : ((&((struct nfsnode *)(dvp)->v_data)->n_mtime)->tv_sec != (&_mtime)->tv_sec)); } } { if (info.nmi_mrep != ((void *)0)) { struct vnode *ttvp = ((dvp)); { t1 = ((caddr_t)((info.nmi_md)->m_hdr.mh_data)) + info.nmi_md->m_hdr.mh_len - info.nmi_dpos; if (t1 >= (4)) { (tl) = (u_int32_t *)(info.nmi_dpos); info.nmi_dpos += (4); } else if ((t1 = nfsm_disct(&info.nmi_md, &info.nmi_dpos, (4), t1, &cp2)) != 0) { error = t1; m_freem(info.nmi_mrep); goto nfsmout; } else { (tl) = (u_int32_t *)cp2; } }; if (((ttattrf) = ((int)((__uint32_t)((int32_t)(*tl))))) != 0) { if ((t1 = nfs_loadattrcache(&ttvp, &info.nmi_md, &info.nmi_dpos, ((void *)0))) != 0) { error = t1; (ttattrf) = 0; m_freem(info.nmi_mrep); goto nfsmout; } ((dvp)) = ttvp; } } }; if (wccflag) { (wccflag) = ttretf; } else { (wccflag) = ttattrf; } } } while (0);
 m_freem(info.nmi_mrep);
nfsmout:
 if (error) {
  if (newvp)
   vrele(newvp);
 } else {
  if (cnp->cn_flags & 0x004000)
   nfs_cache_enter(dvp, newvp, cnp);
  *vpp = newvp;
 }
 pool_put(&namei_pool, cnp->cn_pnbuf);
 ((struct nfsnode *)(dvp)->v_data)->n_flag |= 0x0004;
 if (!wccflag)
  ((((struct nfsnode *)(dvp)->v_data))->n_attrstamp = 0);
 vrele(dvp);
 return (error);
}
int
nfs_mknod(void *v)
{
 struct vop_mknod_args *ap = v;
 struct vnode *newvp;
 int error;
 error = nfs_mknodrpc(ap->a_dvp, &newvp, ap->a_cnp, ap->a_vap);
 if (!error)
  vrele(newvp);
 do { struct klist *list = (&ap->a_dvp->v_selectinfo.si_note); if ((list) != ((void *)0)) knote((list), ((0x0002))); } while (0);
 return (error);
}
int
nfs_create(void *v)
{
 struct vop_create_args *ap = v;
 struct vnode *dvp = ap->a_dvp;
 struct vattr *vap = ap->a_vap;
 struct componentname *cnp = ap->a_cnp;
 struct nfsv2_sattr *sp;
 struct nfsm_info info;
 u_int32_t *tl;
 int32_t t1;
 struct nfsnode *np = ((void *)0);
 struct vnode *newvp = ((void *)0);
 caddr_t cp2;
 int error = 0, wccflag = 0, gotvp = 0, fmode = 0;
 info.nmi_v3 = (((struct nfsmount *)(((dvp)->v_mount)->mnt_data))->nm_flag & 0x00000200);
 if (vap->va_type == VSOCK)
  return (nfs_mknodrpc(dvp, ap->a_vpp, cnp, vap));
 if (vap->va_vaflags & 0x02)
  fmode |= 0x0800;
again:
 nfsstats.rpccnt[8]++;
 info.nmi_mb = info.nmi_mreq = nfsm_reqhead(((info.nmi_v3) ? (64 + 4) : 32) +
     2 * 4 + (((cnp->cn_namelen)+3)&(~0x3)) +
     ((info.nmi_v3) ? 60 : 32));
 nfsm_fhtom(&info, dvp, info.nmi_v3);
 if ((cnp->cn_namelen) > (255)) { m_freem(info.nmi_mreq); error = 63; goto nfsmout; } nfsm_strtombuf(&info.nmi_mb, (cnp->cn_nameptr), (cnp->cn_namelen));
 if (info.nmi_v3) {
  tl = nfsm_build(&info.nmi_mb, 4);
  if (fmode & 0x0800) {
   *tl = (((__uint32_t)((int32_t)(2))));
   tl = nfsm_build(&info.nmi_mb, 8);
   arc4random_buf(tl, sizeof(*tl) * 2);
  } else {
   *tl = (((__uint32_t)((int32_t)(0))));
   nfsm_v3attrbuild(&info.nmi_mb, vap, 0);
  }
 } else {
  sp = nfsm_build(&info.nmi_mb, 32);
  sp->sa_mode = (((__uint32_t)((int32_t)(((vap->va_type) == VFIFO) ? (int)((vttoif_tab[(int)(VCHR)]) | ((vap->va_mode))) : (int)((vttoif_tab[(int)((vap->va_type))]) | ((vap->va_mode)))))));
  sp->sa_uid = nfs_xdrneg1;
  sp->sa_gid = nfs_xdrneg1;
  sp->sa_size = 0;
  txdr_nfsv2time(&vap->va_atime, &sp->sa_atime);
  txdr_nfsv2time(&vap->va_mtime, &sp->sa_mtime);
 }
 ((cnp->cn_proc == (__curcpu->ci_self)->ci_curproc) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../nfs/nfs_vnops.c", 1426, "cnp->cn_proc == curproc"));
 info.nmi_procp = cnp->cn_proc;
 info.nmi_cred = cnp->cn_cred;
 error = nfs_request(dvp, 8, &info);
 if (!error) {
  { struct nfsnode *ttnp; nfsfh_t *ttfhp; int ttfhsize; if (info.nmi_v3) { { t1 = ((caddr_t)((info.nmi_md)->m_hdr.mh_data)) + info.nmi_md->m_hdr.mh_len - info.nmi_dpos; if (t1 >= (4)) { (tl) = (u_int32_t *)(info.nmi_dpos); info.nmi_dpos += (4); } else if ((t1 = nfsm_disct(&info.nmi_md, &info.nmi_dpos, (4), t1, &cp2)) != 0) { error = t1; m_freem(info.nmi_mrep); goto nfsmout; } else { (tl) = (u_int32_t *)cp2; } }; (gotvp) = ((int)((__uint32_t)((int32_t)(*tl)))); } else (gotvp) = 1; if (gotvp) { { if ((info.nmi_v3)) { { t1 = ((caddr_t)((info.nmi_md)->m_hdr.mh_data)) + info.nmi_md->m_hdr.mh_len - info.nmi_dpos; if (t1 >= (4)) { (tl) = (u_int32_t *)(info.nmi_dpos); info.nmi_dpos += (4); } else if ((t1 = nfsm_disct(&info.nmi_md, &info.nmi_dpos, (4), t1, &cp2)) != 0) { error = t1; m_freem(info.nmi_mrep); goto nfsmout; } else { (tl) = (u_int32_t *)cp2; } }; if (((ttfhsize) = ((int)((__uint32_t)((int32_t)(*tl))))) <= 0 || (ttfhsize) > 64) { m_freem(info.nmi_mrep); error = 72; goto nfsmout; } } else (ttfhsize) = 32; { t1 = ((caddr_t)((info.nmi_md)->m_hdr.mh_data)) + info.nmi_md->m_hdr.mh_len - info.nmi_dpos; if (t1 >= ((((ttfhsize)+3)&(~0x3)))) { ((ttfhp)) = (nfsfh_t *)(info.nmi_dpos); info.nmi_dpos += ((((ttfhsize)+3)&(~0x3))); } else if ((t1 = nfsm_disct(&info.nmi_md, &info.nmi_dpos, ((((ttfhsize)+3)&(~0x3))), t1, &cp2)) != 0) { error = t1; m_freem(info.nmi_mrep); goto nfsmout; } else { ((ttfhp)) = (nfsfh_t *)cp2; } }; }; if ((t1 = nfs_nget((dvp)->v_mount, ttfhp, ttfhsize, &ttnp)) != 0) { error = t1; m_freem(info.nmi_mrep); goto nfsmout; } (newvp) = ((ttnp)->n_vnode); } if (info.nmi_v3) { { t1 = ((caddr_t)((info.nmi_md)->m_hdr.mh_data)) + info.nmi_md->m_hdr.mh_len - info.nmi_dpos; if (t1 >= (4)) { (tl) = (u_int32_t *)(info.nmi_dpos); info.nmi_dpos += (4); } else if ((t1 = nfsm_disct(&info.nmi_md, &info.nmi_dpos, (4), t1, &cp2)) != 0) { error = t1; m_freem(info.nmi_mrep); goto nfsmout; } else { (tl) = (u_int32_t *)cp2; } }; if (gotvp) (gotvp) = ((int)((__uint32_t)((int32_t)(*tl)))); else if (((int)((__uint32_t)((int32_t)(*tl))))) { t1 = ((caddr_t)((info.nmi_md)->m_hdr.mh_data)) + info.nmi_md->m_hdr.mh_len - info.nmi_dpos; if (t1 >= (84)) { info.nmi_dpos += (84); } else if ((t1 = nfs_adv(&info.nmi_md, &info.nmi_dpos, (84), t1)) != 0) { error = t1; m_freem(info.nmi_mrep); goto nfsmout; } }; } if (gotvp) { struct vnode *ttvp = ((newvp)); if ((t1 = nfs_loadattrcache(&ttvp, &info.nmi_md, &info.nmi_dpos, (((void *)0)))) != 0) { error = t1; m_freem(info.nmi_mrep); goto nfsmout; } ((newvp)) = ttvp; }; };
  if (!gotvp) {
   if (newvp) {
    vrele(newvp);
    newvp = ((void *)0);
   }
   error = nfs_lookitup(dvp, cnp->cn_nameptr,
       cnp->cn_namelen, cnp->cn_cred, cnp->cn_proc, &np);
   if (!error)
    newvp = ((np)->n_vnode);
  }
 }
 if (info.nmi_v3)
  do { if (info.nmi_mrep != ((void *)0)) { struct timespec _mtime; int ttattrf, ttretf = 0; { t1 = ((caddr_t)((info.nmi_md)->m_hdr.mh_data)) + info.nmi_md->m_hdr.mh_len - info.nmi_dpos; if (t1 >= (4)) { (tl) = (u_int32_t *)(info.nmi_dpos); info.nmi_dpos += (4); } else if ((t1 = nfsm_disct(&info.nmi_md, &info.nmi_dpos, (4), t1, &cp2)) != 0) { error = t1; m_freem(info.nmi_mrep); goto nfsmout; } else { (tl) = (u_int32_t *)cp2; } }; if (*tl == nfs_true) { { t1 = ((caddr_t)((info.nmi_md)->m_hdr.mh_data)) + info.nmi_md->m_hdr.mh_len - info.nmi_dpos; if (t1 >= (6 * 4)) { (tl) = (u_int32_t *)(info.nmi_dpos); info.nmi_dpos += (6 * 4); } else if ((t1 = nfsm_disct(&info.nmi_md, &info.nmi_dpos, (6 * 4), t1, &cp2)) != 0) { error = t1; m_freem(info.nmi_mrep); goto nfsmout; } else { (tl) = (u_int32_t *)cp2; } }; do { (&_mtime)->tv_sec = ((__uint32_t)(((struct nfsv3_time *)(tl + 2))->nfsv3_sec)); (&_mtime)->tv_nsec = ((__uint32_t)(((struct nfsv3_time *)(tl + 2))->nfsv3_nsec)); } while (0); if (wccflag) { ttretf = (((&((struct nfsnode *)(dvp)->v_data)->n_mtime)->tv_sec == (&_mtime)->tv_sec) ? ((&((struct nfsnode *)(dvp)->v_data)->n_mtime)->tv_nsec != (&_mtime)->tv_nsec) : ((&((struct nfsnode *)(dvp)->v_data)->n_mtime)->tv_sec != (&_mtime)->tv_sec)); } } { if (info.nmi_mrep != ((void *)0)) { struct vnode *ttvp = ((dvp)); { t1 = ((caddr_t)((info.nmi_md)->m_hdr.mh_data)) + info.nmi_md->m_hdr.mh_len - info.nmi_dpos; if (t1 >= (4)) { (tl) = (u_int32_t *)(info.nmi_dpos); info.nmi_dpos += (4); } else if ((t1 = nfsm_disct(&info.nmi_md, &info.nmi_dpos, (4), t1, &cp2)) != 0) { error = t1; m_freem(info.nmi_mrep); goto nfsmout; } else { (tl) = (u_int32_t *)cp2; } }; if (((ttattrf) = ((int)((__uint32_t)((int32_t)(*tl))))) != 0) { if ((t1 = nfs_loadattrcache(&ttvp, &info.nmi_md, &info.nmi_dpos, ((void *)0))) != 0) { error = t1; (ttattrf) = 0; m_freem(info.nmi_mrep); goto nfsmout; } ((dvp)) = ttvp; } } }; if (wccflag) { (wccflag) = ttretf; } else { (wccflag) = ttattrf; } } } while (0);
 m_freem(info.nmi_mrep);
nfsmout:
 if (error) {
  if (info.nmi_v3 && (fmode & 0x0800) && error == 10004) {
   fmode &= ~0x0800;
   goto again;
  }
  if (newvp)
   vrele(newvp);
 } else if (info.nmi_v3 && (fmode & 0x0800))
  error = nfs_setattrrpc(newvp, vap, cnp->cn_cred, cnp->cn_proc);
 if (!error) {
  if (cnp->cn_flags & 0x004000)
   nfs_cache_enter(dvp, newvp, cnp);
  *ap->a_vpp = newvp;
 }
 pool_put(&namei_pool, cnp->cn_pnbuf);
 ((struct nfsnode *)(dvp)->v_data)->n_flag |= 0x0004;
 if (!wccflag)
  ((((struct nfsnode *)(dvp)->v_data))->n_attrstamp = 0);
 do { struct klist *list = (&ap->a_dvp->v_selectinfo.si_note); if ((list) != ((void *)0)) knote((list), ((0x0002))); } while (0);
 vrele(dvp);
 return (error);
}
int
nfs_remove(void *v)
{
 struct vop_remove_args *ap = v;
 struct vnode *vp = ap->a_vp;
 struct vnode *dvp = ap->a_dvp;
 struct componentname *cnp = ap->a_cnp;
 struct nfsnode *np = ((struct nfsnode *)(vp)->v_data);
 int error = 0;
 struct vattr vattr;
 if ((cnp->cn_flags & 0x000400) == 0)
  panic("nfs_remove: no name");
 if (vp->v_usecount < 1)
  panic("nfs_remove: bad v_usecount");
 if (vp->v_type == VDIR)
  error = 1;
 else if (vp->v_usecount == 1 || (np->n_sillyrename &&
     VOP_GETATTR(vp, &vattr, cnp->cn_cred, cnp->cn_proc) == 0 &&
     vattr.va_nlink > 1)) {
  cache_purge(vp);
  error = nfs_vinvalbuf(vp, 0, cnp->cn_cred, cnp->cn_proc);
  if (error != 4)
   error = nfs_removerpc(dvp, cnp->cn_nameptr,
    cnp->cn_namelen, cnp->cn_cred, cnp->cn_proc);
  if (error == 2)
   error = 0;
 } else if (!np->n_sillyrename)
  error = nfs_sillyrename(dvp, vp, cnp);
 pool_put(&namei_pool, cnp->cn_pnbuf);
 ((np)->n_attrstamp = 0);
 vrele(dvp);
 vrele(vp);
 do { struct klist *list = (&vp->v_selectinfo.si_note); if ((list) != ((void *)0)) knote((list), ((0x0001))); } while (0);
 do { struct klist *list = (&dvp->v_selectinfo.si_note); if ((list) != ((void *)0)) knote((list), ((0x0002))); } while (0);
 return (error);
}
int
nfs_removeit(struct sillyrename *sp)
{
 if (sp->s_dvp->v_type == VBAD)
  return (0);
 return (nfs_removerpc(sp->s_dvp, sp->s_name, sp->s_namlen, sp->s_cred,
  ((void *)0)));
}
int
nfs_removerpc(struct vnode *dvp, char *name, int namelen, struct ucred *cred,
    struct proc *proc)
{
 struct nfsm_info info;
 u_int32_t *tl;
 int32_t t1;
 caddr_t cp2;
 int error = 0, wccflag = 0;
 info.nmi_v3 = (((struct nfsmount *)(((dvp)->v_mount)->mnt_data))->nm_flag & 0x00000200);
 nfsstats.rpccnt[12]++;
 info.nmi_mb = info.nmi_mreq = nfsm_reqhead(((info.nmi_v3) ? (64 + 4) : 32) +
      4 + (((namelen)+3)&(~0x3)));
 nfsm_fhtom(&info, dvp, info.nmi_v3);
 if ((namelen) > (255)) { m_freem(info.nmi_mreq); error = 63; goto nfsmout; } nfsm_strtombuf(&info.nmi_mb, (name), (namelen));
 info.nmi_procp = proc;
 info.nmi_cred = cred;
 error = nfs_request(dvp, 12, &info);
 if (info.nmi_v3)
  do { if (info.nmi_mrep != ((void *)0)) { struct timespec _mtime; int ttattrf, ttretf = 0; { t1 = ((caddr_t)((info.nmi_md)->m_hdr.mh_data)) + info.nmi_md->m_hdr.mh_len - info.nmi_dpos; if (t1 >= (4)) { (tl) = (u_int32_t *)(info.nmi_dpos); info.nmi_dpos += (4); } else if ((t1 = nfsm_disct(&info.nmi_md, &info.nmi_dpos, (4), t1, &cp2)) != 0) { error = t1; m_freem(info.nmi_mrep); goto nfsmout; } else { (tl) = (u_int32_t *)cp2; } }; if (*tl == nfs_true) { { t1 = ((caddr_t)((info.nmi_md)->m_hdr.mh_data)) + info.nmi_md->m_hdr.mh_len - info.nmi_dpos; if (t1 >= (6 * 4)) { (tl) = (u_int32_t *)(info.nmi_dpos); info.nmi_dpos += (6 * 4); } else if ((t1 = nfsm_disct(&info.nmi_md, &info.nmi_dpos, (6 * 4), t1, &cp2)) != 0) { error = t1; m_freem(info.nmi_mrep); goto nfsmout; } else { (tl) = (u_int32_t *)cp2; } }; do { (&_mtime)->tv_sec = ((__uint32_t)(((struct nfsv3_time *)(tl + 2))->nfsv3_sec)); (&_mtime)->tv_nsec = ((__uint32_t)(((struct nfsv3_time *)(tl + 2))->nfsv3_nsec)); } while (0); if (wccflag) { ttretf = (((&((struct nfsnode *)(dvp)->v_data)->n_mtime)->tv_sec == (&_mtime)->tv_sec) ? ((&((struct nfsnode *)(dvp)->v_data)->n_mtime)->tv_nsec != (&_mtime)->tv_nsec) : ((&((struct nfsnode *)(dvp)->v_data)->n_mtime)->tv_sec != (&_mtime)->tv_sec)); } } { if (info.nmi_mrep != ((void *)0)) { struct vnode *ttvp = ((dvp)); { t1 = ((caddr_t)((info.nmi_md)->m_hdr.mh_data)) + info.nmi_md->m_hdr.mh_len - info.nmi_dpos; if (t1 >= (4)) { (tl) = (u_int32_t *)(info.nmi_dpos); info.nmi_dpos += (4); } else if ((t1 = nfsm_disct(&info.nmi_md, &info.nmi_dpos, (4), t1, &cp2)) != 0) { error = t1; m_freem(info.nmi_mrep); goto nfsmout; } else { (tl) = (u_int32_t *)cp2; } }; if (((ttattrf) = ((int)((__uint32_t)((int32_t)(*tl))))) != 0) { if ((t1 = nfs_loadattrcache(&ttvp, &info.nmi_md, &info.nmi_dpos, ((void *)0))) != 0) { error = t1; (ttattrf) = 0; m_freem(info.nmi_mrep); goto nfsmout; } ((dvp)) = ttvp; } } }; if (wccflag) { (wccflag) = ttretf; } else { (wccflag) = ttattrf; } } } while (0);
 m_freem(info.nmi_mrep);
nfsmout:
 ((struct nfsnode *)(dvp)->v_data)->n_flag |= 0x0004;
 if (!wccflag)
  ((((struct nfsnode *)(dvp)->v_data))->n_attrstamp = 0);
 return (error);
}
int
nfs_rename(void *v)
{
 struct vop_rename_args *ap = v;
 struct vnode *fvp = ap->a_fvp;
 struct vnode *tvp = ap->a_tvp;
 struct vnode *fdvp = ap->a_fdvp;
 struct vnode *tdvp = ap->a_tdvp;
 struct componentname *tcnp = ap->a_tcnp;
 struct componentname *fcnp = ap->a_fcnp;
 int error;
 if ((tcnp->cn_flags & 0x000400) == 0 ||
     (fcnp->cn_flags & 0x000400) == 0)
  panic("nfs_rename: no name");
 if ((fvp->v_mount != tdvp->v_mount) ||
     (tvp && (fvp->v_mount != tvp->v_mount))) {
  error = 18;
  goto out;
 }
 if (tvp && tvp->v_usecount > 1 && !((struct nfsnode *)(tvp)->v_data)->n_sillyrename &&
     tvp->v_type != VDIR && !nfs_sillyrename(tdvp, tvp, tcnp)) {
  do { struct klist *list = (&tvp->v_selectinfo.si_note); if ((list) != ((void *)0)) knote((list), ((0x0001))); } while (0);
  vrele(tvp);
  tvp = ((void *)0);
 }
 error = nfs_renamerpc(fdvp, fcnp->cn_nameptr, fcnp->cn_namelen,
  tdvp, tcnp->cn_nameptr, tcnp->cn_namelen, tcnp->cn_cred,
  tcnp->cn_proc);
 do { struct klist *list = (&fdvp->v_selectinfo.si_note); if ((list) != ((void *)0)) knote((list), ((0x0002))); } while (0);
 do { struct klist *list = (&tdvp->v_selectinfo.si_note); if ((list) != ((void *)0)) knote((list), ((0x0002))); } while (0);
 if (fvp->v_type == VDIR) {
  if (tvp != ((void *)0) && tvp->v_type == VDIR)
   cache_purge(tdvp);
  cache_purge(fdvp);
 }
out:
 if (tdvp == tvp)
  vrele(tdvp);
 else
  vput(tdvp);
 if (tvp)
  vput(tvp);
 vrele(fdvp);
 vrele(fvp);
 if (error == 2)
  error = 0;
 return (error);
}
int
nfs_renameit(struct vnode *sdvp, struct componentname *scnp,
    struct sillyrename *sp)
{
 return (nfs_renamerpc(sdvp, scnp->cn_nameptr, scnp->cn_namelen,
  sdvp, sp->s_name, sp->s_namlen, scnp->cn_cred, (__curcpu->ci_self)->ci_curproc));
}
int
nfs_renamerpc(struct vnode *fdvp, char *fnameptr, int fnamelen,
    struct vnode *tdvp, char *tnameptr, int tnamelen, struct ucred *cred,
    struct proc *proc)
{
 struct nfsm_info info;
 u_int32_t *tl;
 int32_t t1;
 caddr_t cp2;
 int error = 0, fwccflag = 0, twccflag = 0;
 info.nmi_v3 = (((struct nfsmount *)(((fdvp)->v_mount)->mnt_data))->nm_flag & 0x00000200);
 nfsstats.rpccnt[14]++;
 info.nmi_mb = info.nmi_mreq = nfsm_reqhead((((info.nmi_v3) ? (64 + 4) : 32) +
     4) * 2 + (((fnamelen)+3)&(~0x3)) + (((tnamelen)+3)&(~0x3)));
 nfsm_fhtom(&info, fdvp, info.nmi_v3);
 if ((fnamelen) > (255)) { m_freem(info.nmi_mreq); error = 63; goto nfsmout; } nfsm_strtombuf(&info.nmi_mb, (fnameptr), (fnamelen));
 nfsm_fhtom(&info, tdvp, info.nmi_v3);
 if ((tnamelen) > (255)) { m_freem(info.nmi_mreq); error = 63; goto nfsmout; } nfsm_strtombuf(&info.nmi_mb, (tnameptr), (tnamelen));
 info.nmi_procp = proc;
 info.nmi_cred = cred;
 error = nfs_request(fdvp, 14, &info);
 if (info.nmi_v3) {
  do { if (info.nmi_mrep != ((void *)0)) { struct timespec _mtime; int ttattrf, ttretf = 0; { t1 = ((caddr_t)((info.nmi_md)->m_hdr.mh_data)) + info.nmi_md->m_hdr.mh_len - info.nmi_dpos; if (t1 >= (4)) { (tl) = (u_int32_t *)(info.nmi_dpos); info.nmi_dpos += (4); } else if ((t1 = nfsm_disct(&info.nmi_md, &info.nmi_dpos, (4), t1, &cp2)) != 0) { error = t1; m_freem(info.nmi_mrep); goto nfsmout; } else { (tl) = (u_int32_t *)cp2; } }; if (*tl == nfs_true) { { t1 = ((caddr_t)((info.nmi_md)->m_hdr.mh_data)) + info.nmi_md->m_hdr.mh_len - info.nmi_dpos; if (t1 >= (6 * 4)) { (tl) = (u_int32_t *)(info.nmi_dpos); info.nmi_dpos += (6 * 4); } else if ((t1 = nfsm_disct(&info.nmi_md, &info.nmi_dpos, (6 * 4), t1, &cp2)) != 0) { error = t1; m_freem(info.nmi_mrep); goto nfsmout; } else { (tl) = (u_int32_t *)cp2; } }; do { (&_mtime)->tv_sec = ((__uint32_t)(((struct nfsv3_time *)(tl + 2))->nfsv3_sec)); (&_mtime)->tv_nsec = ((__uint32_t)(((struct nfsv3_time *)(tl + 2))->nfsv3_nsec)); } while (0); if (fwccflag) { ttretf = (((&((struct nfsnode *)(fdvp)->v_data)->n_mtime)->tv_sec == (&_mtime)->tv_sec) ? ((&((struct nfsnode *)(fdvp)->v_data)->n_mtime)->tv_nsec != (&_mtime)->tv_nsec) : ((&((struct nfsnode *)(fdvp)->v_data)->n_mtime)->tv_sec != (&_mtime)->tv_sec)); } } { if (info.nmi_mrep != ((void *)0)) { struct vnode *ttvp = ((fdvp)); { t1 = ((caddr_t)((info.nmi_md)->m_hdr.mh_data)) + info.nmi_md->m_hdr.mh_len - info.nmi_dpos; if (t1 >= (4)) { (tl) = (u_int32_t *)(info.nmi_dpos); info.nmi_dpos += (4); } else if ((t1 = nfsm_disct(&info.nmi_md, &info.nmi_dpos, (4), t1, &cp2)) != 0) { error = t1; m_freem(info.nmi_mrep); goto nfsmout; } else { (tl) = (u_int32_t *)cp2; } }; if (((ttattrf) = ((int)((__uint32_t)((int32_t)(*tl))))) != 0) { if ((t1 = nfs_loadattrcache(&ttvp, &info.nmi_md, &info.nmi_dpos, ((void *)0))) != 0) { error = t1; (ttattrf) = 0; m_freem(info.nmi_mrep); goto nfsmout; } ((fdvp)) = ttvp; } } }; if (fwccflag) { (fwccflag) = ttretf; } else { (fwccflag) = ttattrf; } } } while (0);
  do { if (info.nmi_mrep != ((void *)0)) { struct timespec _mtime; int ttattrf, ttretf = 0; { t1 = ((caddr_t)((info.nmi_md)->m_hdr.mh_data)) + info.nmi_md->m_hdr.mh_len - info.nmi_dpos; if (t1 >= (4)) { (tl) = (u_int32_t *)(info.nmi_dpos); info.nmi_dpos += (4); } else if ((t1 = nfsm_disct(&info.nmi_md, &info.nmi_dpos, (4), t1, &cp2)) != 0) { error = t1; m_freem(info.nmi_mrep); goto nfsmout; } else { (tl) = (u_int32_t *)cp2; } }; if (*tl == nfs_true) { { t1 = ((caddr_t)((info.nmi_md)->m_hdr.mh_data)) + info.nmi_md->m_hdr.mh_len - info.nmi_dpos; if (t1 >= (6 * 4)) { (tl) = (u_int32_t *)(info.nmi_dpos); info.nmi_dpos += (6 * 4); } else if ((t1 = nfsm_disct(&info.nmi_md, &info.nmi_dpos, (6 * 4), t1, &cp2)) != 0) { error = t1; m_freem(info.nmi_mrep); goto nfsmout; } else { (tl) = (u_int32_t *)cp2; } }; do { (&_mtime)->tv_sec = ((__uint32_t)(((struct nfsv3_time *)(tl + 2))->nfsv3_sec)); (&_mtime)->tv_nsec = ((__uint32_t)(((struct nfsv3_time *)(tl + 2))->nfsv3_nsec)); } while (0); if (twccflag) { ttretf = (((&((struct nfsnode *)(tdvp)->v_data)->n_mtime)->tv_sec == (&_mtime)->tv_sec) ? ((&((struct nfsnode *)(tdvp)->v_data)->n_mtime)->tv_nsec != (&_mtime)->tv_nsec) : ((&((struct nfsnode *)(tdvp)->v_data)->n_mtime)->tv_sec != (&_mtime)->tv_sec)); } } { if (info.nmi_mrep != ((void *)0)) { struct vnode *ttvp = ((tdvp)); { t1 = ((caddr_t)((info.nmi_md)->m_hdr.mh_data)) + info.nmi_md->m_hdr.mh_len - info.nmi_dpos; if (t1 >= (4)) { (tl) = (u_int32_t *)(info.nmi_dpos); info.nmi_dpos += (4); } else if ((t1 = nfsm_disct(&info.nmi_md, &info.nmi_dpos, (4), t1, &cp2)) != 0) { error = t1; m_freem(info.nmi_mrep); goto nfsmout; } else { (tl) = (u_int32_t *)cp2; } }; if (((ttattrf) = ((int)((__uint32_t)((int32_t)(*tl))))) != 0) { if ((t1 = nfs_loadattrcache(&ttvp, &info.nmi_md, &info.nmi_dpos, ((void *)0))) != 0) { error = t1; (ttattrf) = 0; m_freem(info.nmi_mrep); goto nfsmout; } ((tdvp)) = ttvp; } } }; if (twccflag) { (twccflag) = ttretf; } else { (twccflag) = ttattrf; } } } while (0);
 }
 m_freem(info.nmi_mrep);
nfsmout:
 ((struct nfsnode *)(fdvp)->v_data)->n_flag |= 0x0004;
 ((struct nfsnode *)(tdvp)->v_data)->n_flag |= 0x0004;
 if (!fwccflag)
  ((((struct nfsnode *)(fdvp)->v_data))->n_attrstamp = 0);
 if (!twccflag)
  ((((struct nfsnode *)(tdvp)->v_data))->n_attrstamp = 0);
 return (error);
}
int
nfs_link(void *v)
{
 struct vop_link_args *ap = v;
 struct vnode *vp = ap->a_vp;
 struct vnode *dvp = ap->a_dvp;
 struct componentname *cnp = ap->a_cnp;
 struct nfsm_info info;
 u_int32_t *tl;
 int32_t t1;
 caddr_t cp2;
 int error = 0, wccflag = 0, attrflag = 0;
 info.nmi_v3 = (((struct nfsmount *)(((vp)->v_mount)->mnt_data))->nm_flag & 0x00000200);
 if (dvp->v_mount != vp->v_mount) {
  pool_put(&namei_pool, cnp->cn_pnbuf);
  vput(dvp);
  return (18);
 }
 VOP_FSYNC(vp, cnp->cn_cred, 1, cnp->cn_proc);
 nfsstats.rpccnt[15]++;
 info.nmi_mb = info.nmi_mreq = nfsm_reqhead(2 * ((info.nmi_v3) ? (64 + 4) : 32) +
     4 + (((cnp->cn_namelen)+3)&(~0x3)));
 nfsm_fhtom(&info, vp, info.nmi_v3);
 nfsm_fhtom(&info, dvp, info.nmi_v3);
 if ((cnp->cn_namelen) > (255)) { m_freem(info.nmi_mreq); error = 63; goto nfsmout; } nfsm_strtombuf(&info.nmi_mb, (cnp->cn_nameptr), (cnp->cn_namelen));
 info.nmi_procp = cnp->cn_proc;
 info.nmi_cred = cnp->cn_cred;
 error = nfs_request(vp, 15, &info);
 if (info.nmi_v3) {
  { if (info.nmi_mrep != ((void *)0)) { struct vnode *ttvp = (vp); { t1 = ((caddr_t)((info.nmi_md)->m_hdr.mh_data)) + info.nmi_md->m_hdr.mh_len - info.nmi_dpos; if (t1 >= (4)) { (tl) = (u_int32_t *)(info.nmi_dpos); info.nmi_dpos += (4); } else if ((t1 = nfsm_disct(&info.nmi_md, &info.nmi_dpos, (4), t1, &cp2)) != 0) { error = t1; m_freem(info.nmi_mrep); goto nfsmout; } else { (tl) = (u_int32_t *)cp2; } }; if (((attrflag) = ((int)((__uint32_t)((int32_t)(*tl))))) != 0) { if ((t1 = nfs_loadattrcache(&ttvp, &info.nmi_md, &info.nmi_dpos, ((void *)0))) != 0) { error = t1; (attrflag) = 0; m_freem(info.nmi_mrep); goto nfsmout; } (vp) = ttvp; } } };
  do { if (info.nmi_mrep != ((void *)0)) { struct timespec _mtime; int ttattrf, ttretf = 0; { t1 = ((caddr_t)((info.nmi_md)->m_hdr.mh_data)) + info.nmi_md->m_hdr.mh_len - info.nmi_dpos; if (t1 >= (4)) { (tl) = (u_int32_t *)(info.nmi_dpos); info.nmi_dpos += (4); } else if ((t1 = nfsm_disct(&info.nmi_md, &info.nmi_dpos, (4), t1, &cp2)) != 0) { error = t1; m_freem(info.nmi_mrep); goto nfsmout; } else { (tl) = (u_int32_t *)cp2; } }; if (*tl == nfs_true) { { t1 = ((caddr_t)((info.nmi_md)->m_hdr.mh_data)) + info.nmi_md->m_hdr.mh_len - info.nmi_dpos; if (t1 >= (6 * 4)) { (tl) = (u_int32_t *)(info.nmi_dpos); info.nmi_dpos += (6 * 4); } else if ((t1 = nfsm_disct(&info.nmi_md, &info.nmi_dpos, (6 * 4), t1, &cp2)) != 0) { error = t1; m_freem(info.nmi_mrep); goto nfsmout; } else { (tl) = (u_int32_t *)cp2; } }; do { (&_mtime)->tv_sec = ((__uint32_t)(((struct nfsv3_time *)(tl + 2))->nfsv3_sec)); (&_mtime)->tv_nsec = ((__uint32_t)(((struct nfsv3_time *)(tl + 2))->nfsv3_nsec)); } while (0); if (wccflag) { ttretf = (((&((struct nfsnode *)(dvp)->v_data)->n_mtime)->tv_sec == (&_mtime)->tv_sec) ? ((&((struct nfsnode *)(dvp)->v_data)->n_mtime)->tv_nsec != (&_mtime)->tv_nsec) : ((&((struct nfsnode *)(dvp)->v_data)->n_mtime)->tv_sec != (&_mtime)->tv_sec)); } } { if (info.nmi_mrep != ((void *)0)) { struct vnode *ttvp = ((dvp)); { t1 = ((caddr_t)((info.nmi_md)->m_hdr.mh_data)) + info.nmi_md->m_hdr.mh_len - info.nmi_dpos; if (t1 >= (4)) { (tl) = (u_int32_t *)(info.nmi_dpos); info.nmi_dpos += (4); } else if ((t1 = nfsm_disct(&info.nmi_md, &info.nmi_dpos, (4), t1, &cp2)) != 0) { error = t1; m_freem(info.nmi_mrep); goto nfsmout; } else { (tl) = (u_int32_t *)cp2; } }; if (((ttattrf) = ((int)((__uint32_t)((int32_t)(*tl))))) != 0) { if ((t1 = nfs_loadattrcache(&ttvp, &info.nmi_md, &info.nmi_dpos, ((void *)0))) != 0) { error = t1; (ttattrf) = 0; m_freem(info.nmi_mrep); goto nfsmout; } ((dvp)) = ttvp; } } }; if (wccflag) { (wccflag) = ttretf; } else { (wccflag) = ttattrf; } } } while (0);
 }
 m_freem(info.nmi_mrep);
nfsmout:
 pool_put(&namei_pool, cnp->cn_pnbuf);
 ((struct nfsnode *)(dvp)->v_data)->n_flag |= 0x0004;
 if (!attrflag)
  ((((struct nfsnode *)(vp)->v_data))->n_attrstamp = 0);
 if (!wccflag)
  ((((struct nfsnode *)(dvp)->v_data))->n_attrstamp = 0);
 do { struct klist *list = (&vp->v_selectinfo.si_note); if ((list) != ((void *)0)) knote((list), ((0x0010))); } while (0);
 do { struct klist *list = (&dvp->v_selectinfo.si_note); if ((list) != ((void *)0)) knote((list), ((0x0002))); } while (0);
 vput(dvp);
 return (error);
}
int
nfs_symlink(void *v)
{
 struct vop_symlink_args *ap = v;
 struct vnode *dvp = ap->a_dvp;
 struct vattr *vap = ap->a_vap;
 struct componentname *cnp = ap->a_cnp;
 struct nfsv2_sattr *sp;
 struct nfsm_info info;
 u_int32_t *tl;
 int32_t t1;
 caddr_t cp2;
 int slen, error = 0, wccflag = 0, gotvp;
 struct vnode *newvp = ((void *)0);
 info.nmi_v3 = (((struct nfsmount *)(((dvp)->v_mount)->mnt_data))->nm_flag & 0x00000200);
 nfsstats.rpccnt[10]++;
 slen = strlen(ap->a_target);
 info.nmi_mb = info.nmi_mreq = nfsm_reqhead(((info.nmi_v3) ? (64 + 4) : 32) +
     2 * 4 + (((cnp->cn_namelen)+3)&(~0x3)) + (((slen)+3)&(~0x3)) +
     ((info.nmi_v3) ? 60 : 32));
 nfsm_fhtom(&info, dvp, info.nmi_v3);
 if ((cnp->cn_namelen) > (255)) { m_freem(info.nmi_mreq); error = 63; goto nfsmout; } nfsm_strtombuf(&info.nmi_mb, (cnp->cn_nameptr), (cnp->cn_namelen));
 if (info.nmi_v3)
  nfsm_v3attrbuild(&info.nmi_mb, vap, 0);
 if ((slen) > (1024)) { m_freem(info.nmi_mreq); error = 63; goto nfsmout; } nfsm_strtombuf(&info.nmi_mb, (ap->a_target), (slen));
 if (!info.nmi_v3) {
  sp = nfsm_build(&info.nmi_mb, 32);
  sp->sa_mode = (((__uint32_t)((int32_t)(((VLNK) == VFIFO) ? (int)((vttoif_tab[(int)(VCHR)]) | ((vap->va_mode))) : (int)((vttoif_tab[(int)((VLNK))]) | ((vap->va_mode)))))));
  sp->sa_uid = nfs_xdrneg1;
  sp->sa_gid = nfs_xdrneg1;
  sp->sa_size = nfs_xdrneg1;
  txdr_nfsv2time(&vap->va_atime, &sp->sa_atime);
  txdr_nfsv2time(&vap->va_mtime, &sp->sa_mtime);
 }
 info.nmi_procp = cnp->cn_proc;
 info.nmi_cred = cnp->cn_cred;
 error = nfs_request(dvp, 10, &info);
 if (info.nmi_v3) {
  if (!error)
   { struct nfsnode *ttnp; nfsfh_t *ttfhp; int ttfhsize; if (info.nmi_v3) { { t1 = ((caddr_t)((info.nmi_md)->m_hdr.mh_data)) + info.nmi_md->m_hdr.mh_len - info.nmi_dpos; if (t1 >= (4)) { (tl) = (u_int32_t *)(info.nmi_dpos); info.nmi_dpos += (4); } else if ((t1 = nfsm_disct(&info.nmi_md, &info.nmi_dpos, (4), t1, &cp2)) != 0) { error = t1; m_freem(info.nmi_mrep); goto nfsmout; } else { (tl) = (u_int32_t *)cp2; } }; (gotvp) = ((int)((__uint32_t)((int32_t)(*tl)))); } else (gotvp) = 1; if (gotvp) { { if ((info.nmi_v3)) { { t1 = ((caddr_t)((info.nmi_md)->m_hdr.mh_data)) + info.nmi_md->m_hdr.mh_len - info.nmi_dpos; if (t1 >= (4)) { (tl) = (u_int32_t *)(info.nmi_dpos); info.nmi_dpos += (4); } else if ((t1 = nfsm_disct(&info.nmi_md, &info.nmi_dpos, (4), t1, &cp2)) != 0) { error = t1; m_freem(info.nmi_mrep); goto nfsmout; } else { (tl) = (u_int32_t *)cp2; } }; if (((ttfhsize) = ((int)((__uint32_t)((int32_t)(*tl))))) <= 0 || (ttfhsize) > 64) { m_freem(info.nmi_mrep); error = 72; goto nfsmout; } } else (ttfhsize) = 32; { t1 = ((caddr_t)((info.nmi_md)->m_hdr.mh_data)) + info.nmi_md->m_hdr.mh_len - info.nmi_dpos; if (t1 >= ((((ttfhsize)+3)&(~0x3)))) { ((ttfhp)) = (nfsfh_t *)(info.nmi_dpos); info.nmi_dpos += ((((ttfhsize)+3)&(~0x3))); } else if ((t1 = nfsm_disct(&info.nmi_md, &info.nmi_dpos, ((((ttfhsize)+3)&(~0x3))), t1, &cp2)) != 0) { error = t1; m_freem(info.nmi_mrep); goto nfsmout; } else { ((ttfhp)) = (nfsfh_t *)cp2; } }; }; if ((t1 = nfs_nget((dvp)->v_mount, ttfhp, ttfhsize, &ttnp)) != 0) { error = t1; m_freem(info.nmi_mrep); goto nfsmout; } (newvp) = ((ttnp)->n_vnode); } if (info.nmi_v3) { { t1 = ((caddr_t)((info.nmi_md)->m_hdr.mh_data)) + info.nmi_md->m_hdr.mh_len - info.nmi_dpos; if (t1 >= (4)) { (tl) = (u_int32_t *)(info.nmi_dpos); info.nmi_dpos += (4); } else if ((t1 = nfsm_disct(&info.nmi_md, &info.nmi_dpos, (4), t1, &cp2)) != 0) { error = t1; m_freem(info.nmi_mrep); goto nfsmout; } else { (tl) = (u_int32_t *)cp2; } }; if (gotvp) (gotvp) = ((int)((__uint32_t)((int32_t)(*tl)))); else if (((int)((__uint32_t)((int32_t)(*tl))))) { t1 = ((caddr_t)((info.nmi_md)->m_hdr.mh_data)) + info.nmi_md->m_hdr.mh_len - info.nmi_dpos; if (t1 >= (84)) { info.nmi_dpos += (84); } else if ((t1 = nfs_adv(&info.nmi_md, &info.nmi_dpos, (84), t1)) != 0) { error = t1; m_freem(info.nmi_mrep); goto nfsmout; } }; } if (gotvp) { struct vnode *ttvp = ((newvp)); if ((t1 = nfs_loadattrcache(&ttvp, &info.nmi_md, &info.nmi_dpos, (((void *)0)))) != 0) { error = t1; m_freem(info.nmi_mrep); goto nfsmout; } ((newvp)) = ttvp; }; };
  do { if (info.nmi_mrep != ((void *)0)) { struct timespec _mtime; int ttattrf, ttretf = 0; { t1 = ((caddr_t)((info.nmi_md)->m_hdr.mh_data)) + info.nmi_md->m_hdr.mh_len - info.nmi_dpos; if (t1 >= (4)) { (tl) = (u_int32_t *)(info.nmi_dpos); info.nmi_dpos += (4); } else if ((t1 = nfsm_disct(&info.nmi_md, &info.nmi_dpos, (4), t1, &cp2)) != 0) { error = t1; m_freem(info.nmi_mrep); goto nfsmout; } else { (tl) = (u_int32_t *)cp2; } }; if (*tl == nfs_true) { { t1 = ((caddr_t)((info.nmi_md)->m_hdr.mh_data)) + info.nmi_md->m_hdr.mh_len - info.nmi_dpos; if (t1 >= (6 * 4)) { (tl) = (u_int32_t *)(info.nmi_dpos); info.nmi_dpos += (6 * 4); } else if ((t1 = nfsm_disct(&info.nmi_md, &info.nmi_dpos, (6 * 4), t1, &cp2)) != 0) { error = t1; m_freem(info.nmi_mrep); goto nfsmout; } else { (tl) = (u_int32_t *)cp2; } }; do { (&_mtime)->tv_sec = ((__uint32_t)(((struct nfsv3_time *)(tl + 2))->nfsv3_sec)); (&_mtime)->tv_nsec = ((__uint32_t)(((struct nfsv3_time *)(tl + 2))->nfsv3_nsec)); } while (0); if (wccflag) { ttretf = (((&((struct nfsnode *)(dvp)->v_data)->n_mtime)->tv_sec == (&_mtime)->tv_sec) ? ((&((struct nfsnode *)(dvp)->v_data)->n_mtime)->tv_nsec != (&_mtime)->tv_nsec) : ((&((struct nfsnode *)(dvp)->v_data)->n_mtime)->tv_sec != (&_mtime)->tv_sec)); } } { if (info.nmi_mrep != ((void *)0)) { struct vnode *ttvp = ((dvp)); { t1 = ((caddr_t)((info.nmi_md)->m_hdr.mh_data)) + info.nmi_md->m_hdr.mh_len - info.nmi_dpos; if (t1 >= (4)) { (tl) = (u_int32_t *)(info.nmi_dpos); info.nmi_dpos += (4); } else if ((t1 = nfsm_disct(&info.nmi_md, &info.nmi_dpos, (4), t1, &cp2)) != 0) { error = t1; m_freem(info.nmi_mrep); goto nfsmout; } else { (tl) = (u_int32_t *)cp2; } }; if (((ttattrf) = ((int)((__uint32_t)((int32_t)(*tl))))) != 0) { if ((t1 = nfs_loadattrcache(&ttvp, &info.nmi_md, &info.nmi_dpos, ((void *)0))) != 0) { error = t1; (ttattrf) = 0; m_freem(info.nmi_mrep); goto nfsmout; } ((dvp)) = ttvp; } } }; if (wccflag) { (wccflag) = ttretf; } else { (wccflag) = ttattrf; } } } while (0);
 }
 m_freem(info.nmi_mrep);
nfsmout:
 if (newvp)
  vrele(newvp);
 pool_put(&namei_pool, cnp->cn_pnbuf);
 ((struct nfsnode *)(dvp)->v_data)->n_flag |= 0x0004;
 if (!wccflag)
  ((((struct nfsnode *)(dvp)->v_data))->n_attrstamp = 0);
 do { struct klist *list = (&dvp->v_selectinfo.si_note); if ((list) != ((void *)0)) knote((list), ((0x0002))); } while (0);
 vrele(dvp);
 return (error);
}
int
nfs_mkdir(void *v)
{
 struct vop_mkdir_args *ap = v;
 struct vnode *dvp = ap->a_dvp;
 struct vattr *vap = ap->a_vap;
 struct componentname *cnp = ap->a_cnp;
 struct nfsv2_sattr *sp;
 struct nfsm_info info;
 u_int32_t *tl;
 int32_t t1;
 int len;
 struct nfsnode *np = ((void *)0);
 struct vnode *newvp = ((void *)0);
 caddr_t cp2;
 int error = 0, wccflag = 0;
 int gotvp = 0;
 info.nmi_v3 = (((struct nfsmount *)(((dvp)->v_mount)->mnt_data))->nm_flag & 0x00000200);
 len = cnp->cn_namelen;
 nfsstats.rpccnt[9]++;
 info.nmi_mb = info.nmi_mreq = nfsm_reqhead(((info.nmi_v3) ? (64 + 4) : 32) +
     4 + (((len)+3)&(~0x3)) + ((info.nmi_v3) ? 60 : 32));
 nfsm_fhtom(&info, dvp, info.nmi_v3);
 if ((len) > (255)) { m_freem(info.nmi_mreq); error = 63; goto nfsmout; } nfsm_strtombuf(&info.nmi_mb, (cnp->cn_nameptr), (len));
 if (info.nmi_v3) {
  nfsm_v3attrbuild(&info.nmi_mb, vap, 0);
 } else {
  sp = nfsm_build(&info.nmi_mb, 32);
  sp->sa_mode = (((__uint32_t)((int32_t)(((VDIR) == VFIFO) ? (int)((vttoif_tab[(int)(VCHR)]) | ((vap->va_mode))) : (int)((vttoif_tab[(int)((VDIR))]) | ((vap->va_mode)))))));
  sp->sa_uid = nfs_xdrneg1;
  sp->sa_gid = nfs_xdrneg1;
  sp->sa_size = nfs_xdrneg1;
  txdr_nfsv2time(&vap->va_atime, &sp->sa_atime);
  txdr_nfsv2time(&vap->va_mtime, &sp->sa_mtime);
 }
 info.nmi_procp = cnp->cn_proc;
 info.nmi_cred = cnp->cn_cred;
 error = nfs_request(dvp, 9, &info);
 if (!error)
  { struct nfsnode *ttnp; nfsfh_t *ttfhp; int ttfhsize; if (info.nmi_v3) { { t1 = ((caddr_t)((info.nmi_md)->m_hdr.mh_data)) + info.nmi_md->m_hdr.mh_len - info.nmi_dpos; if (t1 >= (4)) { (tl) = (u_int32_t *)(info.nmi_dpos); info.nmi_dpos += (4); } else if ((t1 = nfsm_disct(&info.nmi_md, &info.nmi_dpos, (4), t1, &cp2)) != 0) { error = t1; m_freem(info.nmi_mrep); goto nfsmout; } else { (tl) = (u_int32_t *)cp2; } }; (gotvp) = ((int)((__uint32_t)((int32_t)(*tl)))); } else (gotvp) = 1; if (gotvp) { { if ((info.nmi_v3)) { { t1 = ((caddr_t)((info.nmi_md)->m_hdr.mh_data)) + info.nmi_md->m_hdr.mh_len - info.nmi_dpos; if (t1 >= (4)) { (tl) = (u_int32_t *)(info.nmi_dpos); info.nmi_dpos += (4); } else if ((t1 = nfsm_disct(&info.nmi_md, &info.nmi_dpos, (4), t1, &cp2)) != 0) { error = t1; m_freem(info.nmi_mrep); goto nfsmout; } else { (tl) = (u_int32_t *)cp2; } }; if (((ttfhsize) = ((int)((__uint32_t)((int32_t)(*tl))))) <= 0 || (ttfhsize) > 64) { m_freem(info.nmi_mrep); error = 72; goto nfsmout; } } else (ttfhsize) = 32; { t1 = ((caddr_t)((info.nmi_md)->m_hdr.mh_data)) + info.nmi_md->m_hdr.mh_len - info.nmi_dpos; if (t1 >= ((((ttfhsize)+3)&(~0x3)))) { ((ttfhp)) = (nfsfh_t *)(info.nmi_dpos); info.nmi_dpos += ((((ttfhsize)+3)&(~0x3))); } else if ((t1 = nfsm_disct(&info.nmi_md, &info.nmi_dpos, ((((ttfhsize)+3)&(~0x3))), t1, &cp2)) != 0) { error = t1; m_freem(info.nmi_mrep); goto nfsmout; } else { ((ttfhp)) = (nfsfh_t *)cp2; } }; }; if ((t1 = nfs_nget((dvp)->v_mount, ttfhp, ttfhsize, &ttnp)) != 0) { error = t1; m_freem(info.nmi_mrep); goto nfsmout; } (newvp) = ((ttnp)->n_vnode); } if (info.nmi_v3) { { t1 = ((caddr_t)((info.nmi_md)->m_hdr.mh_data)) + info.nmi_md->m_hdr.mh_len - info.nmi_dpos; if (t1 >= (4)) { (tl) = (u_int32_t *)(info.nmi_dpos); info.nmi_dpos += (4); } else if ((t1 = nfsm_disct(&info.nmi_md, &info.nmi_dpos, (4), t1, &cp2)) != 0) { error = t1; m_freem(info.nmi_mrep); goto nfsmout; } else { (tl) = (u_int32_t *)cp2; } }; if (gotvp) (gotvp) = ((int)((__uint32_t)((int32_t)(*tl)))); else if (((int)((__uint32_t)((int32_t)(*tl))))) { t1 = ((caddr_t)((info.nmi_md)->m_hdr.mh_data)) + info.nmi_md->m_hdr.mh_len - info.nmi_dpos; if (t1 >= (84)) { info.nmi_dpos += (84); } else if ((t1 = nfs_adv(&info.nmi_md, &info.nmi_dpos, (84), t1)) != 0) { error = t1; m_freem(info.nmi_mrep); goto nfsmout; } }; } if (gotvp) { struct vnode *ttvp = ((newvp)); if ((t1 = nfs_loadattrcache(&ttvp, &info.nmi_md, &info.nmi_dpos, (((void *)0)))) != 0) { error = t1; m_freem(info.nmi_mrep); goto nfsmout; } ((newvp)) = ttvp; }; };
 if (info.nmi_v3)
  do { if (info.nmi_mrep != ((void *)0)) { struct timespec _mtime; int ttattrf, ttretf = 0; { t1 = ((caddr_t)((info.nmi_md)->m_hdr.mh_data)) + info.nmi_md->m_hdr.mh_len - info.nmi_dpos; if (t1 >= (4)) { (tl) = (u_int32_t *)(info.nmi_dpos); info.nmi_dpos += (4); } else if ((t1 = nfsm_disct(&info.nmi_md, &info.nmi_dpos, (4), t1, &cp2)) != 0) { error = t1; m_freem(info.nmi_mrep); goto nfsmout; } else { (tl) = (u_int32_t *)cp2; } }; if (*tl == nfs_true) { { t1 = ((caddr_t)((info.nmi_md)->m_hdr.mh_data)) + info.nmi_md->m_hdr.mh_len - info.nmi_dpos; if (t1 >= (6 * 4)) { (tl) = (u_int32_t *)(info.nmi_dpos); info.nmi_dpos += (6 * 4); } else if ((t1 = nfsm_disct(&info.nmi_md, &info.nmi_dpos, (6 * 4), t1, &cp2)) != 0) { error = t1; m_freem(info.nmi_mrep); goto nfsmout; } else { (tl) = (u_int32_t *)cp2; } }; do { (&_mtime)->tv_sec = ((__uint32_t)(((struct nfsv3_time *)(tl + 2))->nfsv3_sec)); (&_mtime)->tv_nsec = ((__uint32_t)(((struct nfsv3_time *)(tl + 2))->nfsv3_nsec)); } while (0); if (wccflag) { ttretf = (((&((struct nfsnode *)(dvp)->v_data)->n_mtime)->tv_sec == (&_mtime)->tv_sec) ? ((&((struct nfsnode *)(dvp)->v_data)->n_mtime)->tv_nsec != (&_mtime)->tv_nsec) : ((&((struct nfsnode *)(dvp)->v_data)->n_mtime)->tv_sec != (&_mtime)->tv_sec)); } } { if (info.nmi_mrep != ((void *)0)) { struct vnode *ttvp = ((dvp)); { t1 = ((caddr_t)((info.nmi_md)->m_hdr.mh_data)) + info.nmi_md->m_hdr.mh_len - info.nmi_dpos; if (t1 >= (4)) { (tl) = (u_int32_t *)(info.nmi_dpos); info.nmi_dpos += (4); } else if ((t1 = nfsm_disct(&info.nmi_md, &info.nmi_dpos, (4), t1, &cp2)) != 0) { error = t1; m_freem(info.nmi_mrep); goto nfsmout; } else { (tl) = (u_int32_t *)cp2; } }; if (((ttattrf) = ((int)((__uint32_t)((int32_t)(*tl))))) != 0) { if ((t1 = nfs_loadattrcache(&ttvp, &info.nmi_md, &info.nmi_dpos, ((void *)0))) != 0) { error = t1; (ttattrf) = 0; m_freem(info.nmi_mrep); goto nfsmout; } ((dvp)) = ttvp; } } }; if (wccflag) { (wccflag) = ttretf; } else { (wccflag) = ttattrf; } } } while (0);
 m_freem(info.nmi_mrep);
nfsmout:
 ((struct nfsnode *)(dvp)->v_data)->n_flag |= 0x0004;
 if (!wccflag)
  ((((struct nfsnode *)(dvp)->v_data))->n_attrstamp = 0);
 if (error == 0 && newvp == ((void *)0)) {
  error = nfs_lookitup(dvp, cnp->cn_nameptr, len, cnp->cn_cred,
   cnp->cn_proc, &np);
  if (!error) {
   newvp = ((np)->n_vnode);
   if (newvp->v_type != VDIR)
    error = 17;
  }
 }
 if (error) {
  if (newvp)
   vrele(newvp);
 } else {
  do { struct klist *list = (&dvp->v_selectinfo.si_note); if ((list) != ((void *)0)) knote((list), ((0x0002|0x0010))); } while (0);
  if (cnp->cn_flags & 0x004000)
   nfs_cache_enter(dvp, newvp, cnp);
  *ap->a_vpp = newvp;
 }
 pool_put(&namei_pool, cnp->cn_pnbuf);
 vrele(dvp);
 return (error);
}
int
nfs_rmdir(void *v)
{
 struct vop_rmdir_args *ap = v;
 struct vnode *vp = ap->a_vp;
 struct vnode *dvp = ap->a_dvp;
 struct componentname *cnp = ap->a_cnp;
 struct nfsm_info info;
 u_int32_t *tl;
 int32_t t1;
 caddr_t cp2;
 int error = 0, wccflag = 0;
 info.nmi_v3 = (((struct nfsmount *)(((dvp)->v_mount)->mnt_data))->nm_flag & 0x00000200);
 if (dvp == vp) {
  vrele(dvp);
  vrele(dvp);
  pool_put(&namei_pool, cnp->cn_pnbuf);
  return (22);
 }
 nfsstats.rpccnt[13]++;
 info.nmi_mb = info.nmi_mreq = nfsm_reqhead(((info.nmi_v3) ? (64 + 4) : 32) +
     4 + (((cnp->cn_namelen)+3)&(~0x3)));
 nfsm_fhtom(&info, dvp, info.nmi_v3);
 if ((cnp->cn_namelen) > (255)) { m_freem(info.nmi_mreq); error = 63; goto nfsmout; } nfsm_strtombuf(&info.nmi_mb, (cnp->cn_nameptr), (cnp->cn_namelen));
 info.nmi_procp = cnp->cn_proc;
 info.nmi_cred = cnp->cn_cred;
 error = nfs_request(dvp, 13, &info);
 if (info.nmi_v3)
  do { if (info.nmi_mrep != ((void *)0)) { struct timespec _mtime; int ttattrf, ttretf = 0; { t1 = ((caddr_t)((info.nmi_md)->m_hdr.mh_data)) + info.nmi_md->m_hdr.mh_len - info.nmi_dpos; if (t1 >= (4)) { (tl) = (u_int32_t *)(info.nmi_dpos); info.nmi_dpos += (4); } else if ((t1 = nfsm_disct(&info.nmi_md, &info.nmi_dpos, (4), t1, &cp2)) != 0) { error = t1; m_freem(info.nmi_mrep); goto nfsmout; } else { (tl) = (u_int32_t *)cp2; } }; if (*tl == nfs_true) { { t1 = ((caddr_t)((info.nmi_md)->m_hdr.mh_data)) + info.nmi_md->m_hdr.mh_len - info.nmi_dpos; if (t1 >= (6 * 4)) { (tl) = (u_int32_t *)(info.nmi_dpos); info.nmi_dpos += (6 * 4); } else if ((t1 = nfsm_disct(&info.nmi_md, &info.nmi_dpos, (6 * 4), t1, &cp2)) != 0) { error = t1; m_freem(info.nmi_mrep); goto nfsmout; } else { (tl) = (u_int32_t *)cp2; } }; do { (&_mtime)->tv_sec = ((__uint32_t)(((struct nfsv3_time *)(tl + 2))->nfsv3_sec)); (&_mtime)->tv_nsec = ((__uint32_t)(((struct nfsv3_time *)(tl + 2))->nfsv3_nsec)); } while (0); if (wccflag) { ttretf = (((&((struct nfsnode *)(dvp)->v_data)->n_mtime)->tv_sec == (&_mtime)->tv_sec) ? ((&((struct nfsnode *)(dvp)->v_data)->n_mtime)->tv_nsec != (&_mtime)->tv_nsec) : ((&((struct nfsnode *)(dvp)->v_data)->n_mtime)->tv_sec != (&_mtime)->tv_sec)); } } { if (info.nmi_mrep != ((void *)0)) { struct vnode *ttvp = ((dvp)); { t1 = ((caddr_t)((info.nmi_md)->m_hdr.mh_data)) + info.nmi_md->m_hdr.mh_len - info.nmi_dpos; if (t1 >= (4)) { (tl) = (u_int32_t *)(info.nmi_dpos); info.nmi_dpos += (4); } else if ((t1 = nfsm_disct(&info.nmi_md, &info.nmi_dpos, (4), t1, &cp2)) != 0) { error = t1; m_freem(info.nmi_mrep); goto nfsmout; } else { (tl) = (u_int32_t *)cp2; } }; if (((ttattrf) = ((int)((__uint32_t)((int32_t)(*tl))))) != 0) { if ((t1 = nfs_loadattrcache(&ttvp, &info.nmi_md, &info.nmi_dpos, ((void *)0))) != 0) { error = t1; (ttattrf) = 0; m_freem(info.nmi_mrep); goto nfsmout; } ((dvp)) = ttvp; } } }; if (wccflag) { (wccflag) = ttretf; } else { (wccflag) = ttattrf; } } } while (0);
 m_freem(info.nmi_mrep);
nfsmout:
 pool_put(&namei_pool, cnp->cn_pnbuf);
 ((struct nfsnode *)(dvp)->v_data)->n_flag |= 0x0004;
 if (!wccflag)
  ((((struct nfsnode *)(dvp)->v_data))->n_attrstamp = 0);
 do { struct klist *list = (&dvp->v_selectinfo.si_note); if ((list) != ((void *)0)) knote((list), ((0x0002|0x0010))); } while (0);
 do { struct klist *list = (&vp->v_selectinfo.si_note); if ((list) != ((void *)0)) knote((list), ((0x0001))); } while (0);
 cache_purge(vp);
 vrele(vp);
 vrele(dvp);
 if (error == 2)
  error = 0;
 return (error);
}
struct nfs_dirent {
 u_int32_t cookie[2];
 struct dirent dirent;
};
int
nfs_readdir(void *v)
{
 struct vop_readdir_args *ap = v;
 struct vnode *vp = ap->a_vp;
 struct nfsnode *np = ((struct nfsnode *)(vp)->v_data);
 struct uio *uio = ap->a_uio;
 int tresid, error = 0;
 struct vattr vattr;
 int cnt;
 u_int64_t newoff = uio->uio_offset;
 struct nfsmount *nmp = ((struct nfsmount *)((vp->v_mount)->mnt_data));
 struct uio readdir_uio;
 struct iovec readdir_iovec;
 struct proc * p = uio->uio_procp;
 int done = 0, eof = 0;
 struct ucred *cred = ap->a_cred;
 void *data;
 if (vp->v_type != VDIR)
  return (1);
 if (np->n_un2.nd_direof != 0 &&
     uio->uio_offset == np->n_un2.nd_direof) {
  if (VOP_GETATTR(vp, &vattr, ap->a_cred, uio->uio_procp) == 0 &&
      (((&np->n_mtime)->tv_sec == (&vattr.va_mtime)->tv_sec) ? ((&np->n_mtime)->tv_nsec == (&vattr.va_mtime)->tv_nsec) : ((&np->n_mtime)->tv_sec == (&vattr.va_mtime)->tv_sec))) {
   nfsstats.direofcache_hits++;
   *ap->a_eofflag = 1;
   return (0);
  }
 }
 if (uio->uio_resid < 512)
  return (22);
 tresid = uio->uio_resid;
 if (uio->uio_rw != UIO_READ)
  return (22);
 if ((nmp->nm_flag & (0x00000200 | 0x00100000)) == 0x00000200)
  (void)nfs_fsinfo(nmp, vp, cred, p);
 cnt = 5;
 data = malloc(1024, 127, 0x0001|0x0008);
 do {
  struct nfs_dirent *ndp = data;
  readdir_iovec.iov_len = 1024;
  readdir_iovec.iov_base = data;
  readdir_uio.uio_offset = newoff;
  readdir_uio.uio_iov = &readdir_iovec;
  readdir_uio.uio_iovcnt = 1;
  readdir_uio.uio_segflg = UIO_SYSSPACE;
  readdir_uio.uio_rw = UIO_READ;
  readdir_uio.uio_resid = 1024;
  readdir_uio.uio_procp = (__curcpu->ci_self)->ci_curproc;
  if (nmp->nm_flag & 0x00010000) {
   error = nfs_readdirplusrpc(vp, &readdir_uio, cred,
       &eof, p);
   if (error == 10004)
    nmp->nm_flag &= ~0x00010000;
  }
  if ((nmp->nm_flag & 0x00010000) == 0)
   error = nfs_readdirrpc(vp, &readdir_uio, cred, &eof);
  if (error == 10003)
   error = 22;
  while (error == 0 &&
      ndp < (struct nfs_dirent *)readdir_iovec.iov_base) {
   struct dirent *dp = &ndp->dirent;
   int reclen = dp->d_reclen;
   dp->d_reclen -= __builtin_offsetof(struct nfs_dirent, dirent);
   dp->d_off = ((((u_quad_t)((__uint32_t)(((u_int32_t *)(&ndp->cookie[0]))[0]))) << 32) | (u_quad_t)(((__uint32_t)(((u_int32_t *)(&ndp->cookie[0]))[1]))));
   if (uio->uio_resid < dp->d_reclen) {
    eof = 0;
    done = 1;
    break;
   }
   if ((error = uiomove(dp, dp->d_reclen, uio)))
    break;
   newoff = ((((u_quad_t)((__uint32_t)(((u_int32_t *)(&ndp->cookie[0]))[0]))) << 32) | (u_quad_t)(((__uint32_t)(((u_int32_t *)(&ndp->cookie[0]))[1]))));
   ndp = (struct nfs_dirent *)((u_int8_t *)ndp + reclen);
  }
 } while (!error && !done && !eof && cnt--);
 free(data, 127, 1024);
 data = ((void *)0);
 uio->uio_offset = newoff;
 if (!error && (eof || uio->uio_resid == tresid)) {
  nfsstats.direofcache_misses++;
  *ap->a_eofflag = 1;
  return (0);
 }
 *ap->a_eofflag = 0;
 return (error);
}
int
nfs_readdirrpc(struct vnode *vp, struct uio *uiop, struct ucred *cred,
    int *end_of_directory)
{
 int len, left;
 struct nfs_dirent *ndp = ((void *)0);
 struct dirent *dp = ((void *)0);
 struct nfsm_info info;
 u_int32_t *tl;
 caddr_t cp;
 int32_t t1;
 caddr_t cp2;
 nfsuint64 cookie;
 struct nfsmount *nmp = ((struct nfsmount *)((vp->v_mount)->mnt_data));
 struct nfsnode *dnp = ((struct nfsnode *)(vp)->v_data);
 u_quad_t fileno;
 int error = 0, tlen, more_dirs = 1, blksiz = 0, bigenough = 1;
 int attrflag;
 info.nmi_v3 = (((struct nfsmount *)(((vp)->v_mount)->mnt_data))->nm_flag & 0x00000200);
 if (uiop->uio_iovcnt != 1 ||
  (uiop->uio_resid & (1024 - 1)))
  panic("nfs readdirrpc bad uio");
 do { ((u_int32_t *)(&cookie.nfsuquad[0]))[0] = ((__uint32_t)((u_int32_t)((uiop->uio_offset) >> 32))); ((u_int32_t *)(&cookie.nfsuquad[0]))[1] = ((__uint32_t)((u_int32_t)((uiop->uio_offset) & 0xffffffff))); } while (0);
 while (more_dirs && bigenough) {
  nfsstats.rpccnt[16]++;
  info.nmi_mb = info.nmi_mreq = nfsm_reqhead(((info.nmi_v3) ? (64 + 4) : 32)
      + ((info.nmi_v3) ? (5 * 4) : (2 * 4)));
  nfsm_fhtom(&info, vp, info.nmi_v3);
  if (info.nmi_v3) {
   tl = nfsm_build(&info.nmi_mb, 5 * 4);
   *tl++ = cookie.nfsuquad[0];
   *tl++ = cookie.nfsuquad[1];
   if (cookie.nfsuquad[0] == 0 &&
       cookie.nfsuquad[1] == 0) {
    *tl++ = 0;
    *tl++ = 0;
   } else {
    *tl++ = dnp->n_un1.nd_cookieverf.nfsuquad[0];
    *tl++ = dnp->n_un1.nd_cookieverf.nfsuquad[1];
   }
  } else {
   tl = nfsm_build(&info.nmi_mb, 2 * 4);
   *tl++ = cookie.nfsuquad[1];
  }
  *tl = (((__uint32_t)((int32_t)(nmp->nm_readdirsize))));
  info.nmi_procp = uiop->uio_procp;
  info.nmi_cred = cred;
  error = nfs_request(vp, 16, &info);
  if (info.nmi_v3)
   { if (info.nmi_mrep != ((void *)0)) { struct vnode *ttvp = (vp); { t1 = ((caddr_t)((info.nmi_md)->m_hdr.mh_data)) + info.nmi_md->m_hdr.mh_len - info.nmi_dpos; if (t1 >= (4)) { (tl) = (u_int32_t *)(info.nmi_dpos); info.nmi_dpos += (4); } else if ((t1 = nfsm_disct(&info.nmi_md, &info.nmi_dpos, (4), t1, &cp2)) != 0) { error = t1; m_freem(info.nmi_mrep); goto nfsmout; } else { (tl) = (u_int32_t *)cp2; } }; if (((attrflag) = ((int)((__uint32_t)((int32_t)(*tl))))) != 0) { if ((t1 = nfs_loadattrcache(&ttvp, &info.nmi_md, &info.nmi_dpos, ((void *)0))) != 0) { error = t1; (attrflag) = 0; m_freem(info.nmi_mrep); goto nfsmout; } (vp) = ttvp; } } };
  if (error) {
   m_freem(info.nmi_mrep);
   goto nfsmout;
  }
  if (info.nmi_v3) {
   { t1 = ((caddr_t)((info.nmi_md)->m_hdr.mh_data)) + info.nmi_md->m_hdr.mh_len - info.nmi_dpos; if (t1 >= (2 * 4)) { (tl) = (u_int32_t *)(info.nmi_dpos); info.nmi_dpos += (2 * 4); } else if ((t1 = nfsm_disct(&info.nmi_md, &info.nmi_dpos, (2 * 4), t1, &cp2)) != 0) { error = t1; m_freem(info.nmi_mrep); goto nfsmout; } else { (tl) = (u_int32_t *)cp2; } };
   dnp->n_un1.nd_cookieverf.nfsuquad[0] = *tl++;
   dnp->n_un1.nd_cookieverf.nfsuquad[1] = *tl;
  }
  { t1 = ((caddr_t)((info.nmi_md)->m_hdr.mh_data)) + info.nmi_md->m_hdr.mh_len - info.nmi_dpos; if (t1 >= (4)) { (tl) = (u_int32_t *)(info.nmi_dpos); info.nmi_dpos += (4); } else if ((t1 = nfsm_disct(&info.nmi_md, &info.nmi_dpos, (4), t1, &cp2)) != 0) { error = t1; m_freem(info.nmi_mrep); goto nfsmout; } else { (tl) = (u_int32_t *)cp2; } };
  more_dirs = ((int)((__uint32_t)((int32_t)(*tl))));
  while (more_dirs && bigenough) {
   if (info.nmi_v3) {
    { t1 = ((caddr_t)((info.nmi_md)->m_hdr.mh_data)) + info.nmi_md->m_hdr.mh_len - info.nmi_dpos; if (t1 >= (3 * 4)) { (tl) = (u_int32_t *)(info.nmi_dpos); info.nmi_dpos += (3 * 4); } else if ((t1 = nfsm_disct(&info.nmi_md, &info.nmi_dpos, (3 * 4), t1, &cp2)) != 0) { error = t1; m_freem(info.nmi_mrep); goto nfsmout; } else { (tl) = (u_int32_t *)cp2; } };
    fileno = ((((u_quad_t)((__uint32_t)(((u_int32_t *)(tl))[0]))) << 32) | (u_quad_t)(((__uint32_t)(((u_int32_t *)(tl))[1]))));
    len = ((int)((__uint32_t)((int32_t)(*(tl + 2)))));
   } else {
    { t1 = ((caddr_t)((info.nmi_md)->m_hdr.mh_data)) + info.nmi_md->m_hdr.mh_len - info.nmi_dpos; if (t1 >= (2 * 4)) { (tl) = (u_int32_t *)(info.nmi_dpos); info.nmi_dpos += (2 * 4); } else if ((t1 = nfsm_disct(&info.nmi_md, &info.nmi_dpos, (2 * 4), t1, &cp2)) != 0) { error = t1; m_freem(info.nmi_mrep); goto nfsmout; } else { (tl) = (u_int32_t *)cp2; } };
    fileno = ((u_quad_t)((__uint32_t)((int32_t)(*tl++))));
    len = ((int)((__uint32_t)((int32_t)(*tl))));
   }
   if (len <= 0 || len > 255) {
    error = 72;
    m_freem(info.nmi_mrep);
    goto nfsmout;
   }
   tlen = ((__builtin_offsetof(struct dirent, d_name) + (len) + 1 + 7) &~ 7) + __builtin_offsetof(struct nfs_dirent, dirent);
   left = 512 - blksiz;
   if (tlen > left) {
    dp->d_reclen += left;
    uiop->uio_iov->iov_base += left;
    uiop->uio_iov->iov_len -= left;
    uiop->uio_resid -= left;
    blksiz = 0;
   }
   if (tlen > uiop->uio_resid)
    bigenough = 0;
   if (bigenough) {
    ndp = (struct nfs_dirent *)
        uiop->uio_iov->iov_base;
    dp = &ndp->dirent;
    dp->d_fileno = fileno;
    dp->d_namlen = len;
    dp->d_reclen = tlen;
    dp->d_type = 0;
    blksiz += tlen;
    if (blksiz == 512)
     blksiz = 0;
    uiop->uio_resid -= (sizeof (struct nfs_dirent) - (255 + 1));
    uiop->uio_iov->iov_base =
        (char *)uiop->uio_iov->iov_base +
        (sizeof (struct nfs_dirent) - (255 + 1));
    uiop->uio_iov->iov_len -= (sizeof (struct nfs_dirent) - (255 + 1));
    if ((len) > 0 && (t1 = nfsm_mbuftouio(&info.nmi_md, (uiop), (len), &info.nmi_dpos)) != 0) { error = t1; m_freem(info.nmi_mrep); goto nfsmout; };
    cp = uiop->uio_iov->iov_base;
    tlen -= (sizeof (struct nfs_dirent) - (255 + 1)) + len;
    *cp = '\0';
    uiop->uio_iov->iov_base += tlen;
    uiop->uio_iov->iov_len -= tlen;
    uiop->uio_resid -= tlen;
   } else
    { t1 = ((caddr_t)((info.nmi_md)->m_hdr.mh_data)) + info.nmi_md->m_hdr.mh_len - info.nmi_dpos; if (t1 >= ((((len)+3)&(~0x3)))) { info.nmi_dpos += ((((len)+3)&(~0x3))); } else if ((t1 = nfs_adv(&info.nmi_md, &info.nmi_dpos, ((((len)+3)&(~0x3))), t1)) != 0) { error = t1; m_freem(info.nmi_mrep); goto nfsmout; } };
   if (info.nmi_v3) {
    { t1 = ((caddr_t)((info.nmi_md)->m_hdr.mh_data)) + info.nmi_md->m_hdr.mh_len - info.nmi_dpos; if (t1 >= (3 * 4)) { (tl) = (u_int32_t *)(info.nmi_dpos); info.nmi_dpos += (3 * 4); } else if ((t1 = nfsm_disct(&info.nmi_md, &info.nmi_dpos, (3 * 4), t1, &cp2)) != 0) { error = t1; m_freem(info.nmi_mrep); goto nfsmout; } else { (tl) = (u_int32_t *)cp2; } };
   } else {
    { t1 = ((caddr_t)((info.nmi_md)->m_hdr.mh_data)) + info.nmi_md->m_hdr.mh_len - info.nmi_dpos; if (t1 >= (2 * 4)) { (tl) = (u_int32_t *)(info.nmi_dpos); info.nmi_dpos += (2 * 4); } else if ((t1 = nfsm_disct(&info.nmi_md, &info.nmi_dpos, (2 * 4), t1, &cp2)) != 0) { error = t1; m_freem(info.nmi_mrep); goto nfsmout; } else { (tl) = (u_int32_t *)cp2; } };
   }
   if (bigenough) {
    if (info.nmi_v3) {
     ndp->cookie[0] = cookie.nfsuquad[0] =
         *tl++;
    } else
     ndp->cookie[0] = 0;
    ndp->cookie[1] = cookie.nfsuquad[1] = *tl++;
   } else if (info.nmi_v3)
    tl += 2;
   else
    tl++;
   more_dirs = ((int)((__uint32_t)((int32_t)(*tl))));
  }
  if (!more_dirs) {
   { t1 = ((caddr_t)((info.nmi_md)->m_hdr.mh_data)) + info.nmi_md->m_hdr.mh_len - info.nmi_dpos; if (t1 >= (4)) { (tl) = (u_int32_t *)(info.nmi_dpos); info.nmi_dpos += (4); } else if ((t1 = nfsm_disct(&info.nmi_md, &info.nmi_dpos, (4), t1, &cp2)) != 0) { error = t1; m_freem(info.nmi_mrep); goto nfsmout; } else { (tl) = (u_int32_t *)cp2; } };
   more_dirs = (((int)((__uint32_t)((int32_t)(*tl)))) == 0);
  }
  m_freem(info.nmi_mrep);
 }
 if (blksiz > 0) {
  left = 512 - blksiz;
  dp->d_reclen += left;
  uiop->uio_iov->iov_base = (char *)uiop->uio_iov->iov_base +
      left;
  uiop->uio_iov->iov_len -= left;
  uiop->uio_resid -= left;
 }
 if (bigenough) {
  dnp->n_un2.nd_direof = ((((u_quad_t)((__uint32_t)(((u_int32_t *)(&cookie.nfsuquad[0]))[0]))) << 32) | (u_quad_t)(((__uint32_t)(((u_int32_t *)(&cookie.nfsuquad[0]))[1]))));
  if (end_of_directory) *end_of_directory = 1;
 } else {
  if (uiop->uio_resid > 0)
   printf("EEK! readdirrpc resid > 0\n");
 }
nfsmout:
 return (error);
}
int
nfs_readdirplusrpc(struct vnode *vp, struct uio *uiop, struct ucred *cred,
    int *end_of_directory, struct proc *p)
{
 int len, left;
 struct nfs_dirent *ndirp = ((void *)0);
 struct dirent *dp = ((void *)0);
 struct nfsm_info info;
 u_int32_t *tl;
 caddr_t cp;
 int32_t t1;
 struct vnode *newvp;
 caddr_t cp2, dpossav1, dpossav2;
 struct mbuf *mdsav1, *mdsav2;
 struct nameidata nami, *ndp = &nami;
 struct componentname *cnp = &ndp->ni_cnd;
 nfsuint64 cookie;
 struct nfsmount *nmp = ((struct nfsmount *)((vp->v_mount)->mnt_data));
 struct nfsnode *dnp = ((struct nfsnode *)(vp)->v_data), *np;
 nfsfh_t *fhp;
 u_quad_t fileno;
 int error = 0, tlen, more_dirs = 1, blksiz = 0, doit, bigenough = 1, i;
 int attrflag, fhsize;
 if (uiop->uio_iovcnt != 1 ||
  (uiop->uio_resid & (1024 - 1)))
  panic("nfs readdirplusrpc bad uio");
 ndinitat(ndp, 0, 0, UIO_SYSSPACE, -100, ((void *)0), p);
 ndp->ni_dvp = vp;
 newvp = ((struct vnode *)((void *)0));
 do { ((u_int32_t *)(&cookie.nfsuquad[0]))[0] = ((__uint32_t)((u_int32_t)((uiop->uio_offset) >> 32))); ((u_int32_t *)(&cookie.nfsuquad[0]))[1] = ((__uint32_t)((u_int32_t)((uiop->uio_offset) & 0xffffffff))); } while (0);
 while (more_dirs && bigenough) {
  nfsstats.rpccnt[17]++;
  info.nmi_mb = info.nmi_mreq = nfsm_reqhead(((1) ? (64 + 4) : 32) + 6 * 4);
  nfsm_fhtom(&info, vp, 1);
  tl = nfsm_build(&info.nmi_mb, 6 * 4);
  *tl++ = cookie.nfsuquad[0];
  *tl++ = cookie.nfsuquad[1];
  if (cookie.nfsuquad[0] == 0 &&
      cookie.nfsuquad[1] == 0) {
   *tl++ = 0;
   *tl++ = 0;
  } else {
   *tl++ = dnp->n_un1.nd_cookieverf.nfsuquad[0];
   *tl++ = dnp->n_un1.nd_cookieverf.nfsuquad[1];
  }
  *tl++ = (((__uint32_t)((int32_t)(nmp->nm_readdirsize))));
  *tl = (((__uint32_t)((int32_t)(nmp->nm_rsize))));
  info.nmi_procp = uiop->uio_procp;
  info.nmi_cred = cred;
  error = nfs_request(vp, 17, &info);
  { if (info.nmi_mrep != ((void *)0)) { struct vnode *ttvp = (vp); { t1 = ((caddr_t)((info.nmi_md)->m_hdr.mh_data)) + info.nmi_md->m_hdr.mh_len - info.nmi_dpos; if (t1 >= (4)) { (tl) = (u_int32_t *)(info.nmi_dpos); info.nmi_dpos += (4); } else if ((t1 = nfsm_disct(&info.nmi_md, &info.nmi_dpos, (4), t1, &cp2)) != 0) { error = t1; m_freem(info.nmi_mrep); goto nfsmout; } else { (tl) = (u_int32_t *)cp2; } }; if (((attrflag) = ((int)((__uint32_t)((int32_t)(*tl))))) != 0) { if ((t1 = nfs_loadattrcache(&ttvp, &info.nmi_md, &info.nmi_dpos, ((void *)0))) != 0) { error = t1; (attrflag) = 0; m_freem(info.nmi_mrep); goto nfsmout; } (vp) = ttvp; } } };
  if (error) {
   m_freem(info.nmi_mrep);
   goto nfsmout;
  }
  { t1 = ((caddr_t)((info.nmi_md)->m_hdr.mh_data)) + info.nmi_md->m_hdr.mh_len - info.nmi_dpos; if (t1 >= (3 * 4)) { (tl) = (u_int32_t *)(info.nmi_dpos); info.nmi_dpos += (3 * 4); } else if ((t1 = nfsm_disct(&info.nmi_md, &info.nmi_dpos, (3 * 4), t1, &cp2)) != 0) { error = t1; m_freem(info.nmi_mrep); goto nfsmout; } else { (tl) = (u_int32_t *)cp2; } };
  dnp->n_un1.nd_cookieverf.nfsuquad[0] = *tl++;
  dnp->n_un1.nd_cookieverf.nfsuquad[1] = *tl++;
  more_dirs = ((int)((__uint32_t)((int32_t)(*tl))));
  while (more_dirs && bigenough) {
   { t1 = ((caddr_t)((info.nmi_md)->m_hdr.mh_data)) + info.nmi_md->m_hdr.mh_len - info.nmi_dpos; if (t1 >= (3 * 4)) { (tl) = (u_int32_t *)(info.nmi_dpos); info.nmi_dpos += (3 * 4); } else if ((t1 = nfsm_disct(&info.nmi_md, &info.nmi_dpos, (3 * 4), t1, &cp2)) != 0) { error = t1; m_freem(info.nmi_mrep); goto nfsmout; } else { (tl) = (u_int32_t *)cp2; } };
   fileno = ((((u_quad_t)((__uint32_t)(((u_int32_t *)(tl))[0]))) << 32) | (u_quad_t)(((__uint32_t)(((u_int32_t *)(tl))[1]))));
   len = ((int)((__uint32_t)((int32_t)(*(tl + 2)))));
   if (len <= 0 || len > 255) {
    error = 72;
    m_freem(info.nmi_mrep);
    goto nfsmout;
   }
   tlen = ((__builtin_offsetof(struct dirent, d_name) + (len) + 1 + 7) &~ 7) + __builtin_offsetof(struct nfs_dirent, dirent);
   left = 512 - blksiz;
   if (tlen > left) {
    dp->d_reclen += left;
    uiop->uio_iov->iov_base =
        (char *)uiop->uio_iov->iov_base + left;
    uiop->uio_iov->iov_len -= left;
    uiop->uio_resid -= left;
    blksiz = 0;
   }
   if (tlen > uiop->uio_resid)
    bigenough = 0;
   if (bigenough) {
    ndirp = (struct nfs_dirent *)
        uiop->uio_iov->iov_base;
    dp = &ndirp->dirent;
    dp->d_fileno = fileno;
    dp->d_namlen = len;
    dp->d_reclen = tlen;
    dp->d_type = 0;
    blksiz += tlen;
    if (blksiz == 512)
     blksiz = 0;
    uiop->uio_resid -= (sizeof (struct nfs_dirent) - (255 + 1));
    uiop->uio_iov->iov_base =
        (char *)uiop->uio_iov->iov_base +
        (sizeof (struct nfs_dirent) - (255 + 1));
    uiop->uio_iov->iov_len -= (sizeof (struct nfs_dirent) - (255 + 1));
    cnp->cn_nameptr = uiop->uio_iov->iov_base;
    cnp->cn_namelen = len;
    if ((len) > 0 && (t1 = nfsm_mbuftouio(&info.nmi_md, (uiop), (len), &info.nmi_dpos)) != 0) { error = t1; m_freem(info.nmi_mrep); goto nfsmout; };
    cp = uiop->uio_iov->iov_base;
    tlen -= (sizeof (struct nfs_dirent) - (255 + 1)) + len;
    *cp = '\0';
    uiop->uio_iov->iov_base += tlen;
    uiop->uio_iov->iov_len -= tlen;
    uiop->uio_resid -= tlen;
   } else
    { t1 = ((caddr_t)((info.nmi_md)->m_hdr.mh_data)) + info.nmi_md->m_hdr.mh_len - info.nmi_dpos; if (t1 >= ((((len)+3)&(~0x3)))) { info.nmi_dpos += ((((len)+3)&(~0x3))); } else if ((t1 = nfs_adv(&info.nmi_md, &info.nmi_dpos, ((((len)+3)&(~0x3))), t1)) != 0) { error = t1; m_freem(info.nmi_mrep); goto nfsmout; } };
   { t1 = ((caddr_t)((info.nmi_md)->m_hdr.mh_data)) + info.nmi_md->m_hdr.mh_len - info.nmi_dpos; if (t1 >= (3 * 4)) { (tl) = (u_int32_t *)(info.nmi_dpos); info.nmi_dpos += (3 * 4); } else if ((t1 = nfsm_disct(&info.nmi_md, &info.nmi_dpos, (3 * 4), t1, &cp2)) != 0) { error = t1; m_freem(info.nmi_mrep); goto nfsmout; } else { (tl) = (u_int32_t *)cp2; } };
   if (bigenough) {
    ndirp->cookie[0] = cookie.nfsuquad[0] = *tl++;
    ndirp->cookie[1] = cookie.nfsuquad[1] = *tl++;
   } else
    tl += 2;
   attrflag = ((int)((__uint32_t)((int32_t)(*tl))));
   if (attrflag) {
    dpossav1 = info.nmi_dpos;
    mdsav1 = info.nmi_md;
    { t1 = ((caddr_t)((info.nmi_md)->m_hdr.mh_data)) + info.nmi_md->m_hdr.mh_len - info.nmi_dpos; if (t1 >= (84)) { info.nmi_dpos += (84); } else if ((t1 = nfs_adv(&info.nmi_md, &info.nmi_dpos, (84), t1)) != 0) { error = t1; m_freem(info.nmi_mrep); goto nfsmout; } };
    { t1 = ((caddr_t)((info.nmi_md)->m_hdr.mh_data)) + info.nmi_md->m_hdr.mh_len - info.nmi_dpos; if (t1 >= (4)) { (tl) = (u_int32_t *)(info.nmi_dpos); info.nmi_dpos += (4); } else if ((t1 = nfsm_disct(&info.nmi_md, &info.nmi_dpos, (4), t1, &cp2)) != 0) { error = t1; m_freem(info.nmi_mrep); goto nfsmout; } else { (tl) = (u_int32_t *)cp2; } };
    doit = ((int)((__uint32_t)((int32_t)(*tl))));
    if (doit) {
     { if (1) { { t1 = ((caddr_t)((info.nmi_md)->m_hdr.mh_data)) + info.nmi_md->m_hdr.mh_len - info.nmi_dpos; if (t1 >= (4)) { (tl) = (u_int32_t *)(info.nmi_dpos); info.nmi_dpos += (4); } else if ((t1 = nfsm_disct(&info.nmi_md, &info.nmi_dpos, (4), t1, &cp2)) != 0) { error = t1; m_freem(info.nmi_mrep); goto nfsmout; } else { (tl) = (u_int32_t *)cp2; } }; if (((fhsize) = ((int)((__uint32_t)((int32_t)(*tl))))) <= 0 || (fhsize) > 64) { m_freem(info.nmi_mrep); error = 72; goto nfsmout; } } else (fhsize) = 32; { t1 = ((caddr_t)((info.nmi_md)->m_hdr.mh_data)) + info.nmi_md->m_hdr.mh_len - info.nmi_dpos; if (t1 >= ((((fhsize)+3)&(~0x3)))) { ((fhp)) = (nfsfh_t *)(info.nmi_dpos); info.nmi_dpos += ((((fhsize)+3)&(~0x3))); } else if ((t1 = nfsm_disct(&info.nmi_md, &info.nmi_dpos, ((((fhsize)+3)&(~0x3))), t1, &cp2)) != 0) { error = t1; m_freem(info.nmi_mrep); goto nfsmout; } else { ((fhp)) = (nfsfh_t *)cp2; } }; };
     if (((dnp)->n_fhsize == (fhsize) && !__builtin_bcmp(((caddr_t)(dnp)->n_fhp), ((caddr_t)(fhp)), ((fhsize))))) {
      vref(vp);
      newvp = vp;
      np = dnp;
     } else {
      error = nfs_nget(vp->v_mount,
          fhp, fhsize, &np);
      if (error)
       doit = 0;
      else
       newvp = ((np)->n_vnode);
     }
    }
    if (doit && bigenough) {
     dpossav2 = info.nmi_dpos;
     info.nmi_dpos = dpossav1;
     mdsav2 = info.nmi_md;
     info.nmi_md = mdsav1;
     { struct vnode *ttvp = (newvp); if ((t1 = nfs_loadattrcache(&ttvp, &info.nmi_md, &info.nmi_dpos, (((void *)0)))) != 0) { error = t1; m_freem(info.nmi_mrep); goto nfsmout; } (newvp) = ttvp; };
     info.nmi_dpos = dpossav2;
     info.nmi_md = mdsav2;
     dp->d_type = ((((vttoif_tab[(int)(np->n_vattr.va_type)])) & 0170000) >> 12);
     if (cnp->cn_namelen <=
         31) {
      ndp->ni_vp = newvp;
      cache_purge(ndp->ni_dvp);
      nfs_cache_enter(ndp->ni_dvp,
          ndp->ni_vp, cnp);
     }
    }
   } else {
    { t1 = ((caddr_t)((info.nmi_md)->m_hdr.mh_data)) + info.nmi_md->m_hdr.mh_len - info.nmi_dpos; if (t1 >= (4)) { (tl) = (u_int32_t *)(info.nmi_dpos); info.nmi_dpos += (4); } else if ((t1 = nfsm_disct(&info.nmi_md, &info.nmi_dpos, (4), t1, &cp2)) != 0) { error = t1; m_freem(info.nmi_mrep); goto nfsmout; } else { (tl) = (u_int32_t *)cp2; } };
    i = ((int)((__uint32_t)((int32_t)(*tl))));
    { t1 = ((caddr_t)((info.nmi_md)->m_hdr.mh_data)) + info.nmi_md->m_hdr.mh_len - info.nmi_dpos; if (t1 >= ((((i)+3)&(~0x3)))) { info.nmi_dpos += ((((i)+3)&(~0x3))); } else if ((t1 = nfs_adv(&info.nmi_md, &info.nmi_dpos, ((((i)+3)&(~0x3))), t1)) != 0) { error = t1; m_freem(info.nmi_mrep); goto nfsmout; } };
   }
   if (newvp != ((struct vnode *)((void *)0))) {
    vrele(newvp);
    newvp = ((struct vnode *)((void *)0));
   }
   { t1 = ((caddr_t)((info.nmi_md)->m_hdr.mh_data)) + info.nmi_md->m_hdr.mh_len - info.nmi_dpos; if (t1 >= (4)) { (tl) = (u_int32_t *)(info.nmi_dpos); info.nmi_dpos += (4); } else if ((t1 = nfsm_disct(&info.nmi_md, &info.nmi_dpos, (4), t1, &cp2)) != 0) { error = t1; m_freem(info.nmi_mrep); goto nfsmout; } else { (tl) = (u_int32_t *)cp2; } };
   more_dirs = ((int)((__uint32_t)((int32_t)(*tl))));
  }
  if (!more_dirs) {
   { t1 = ((caddr_t)((info.nmi_md)->m_hdr.mh_data)) + info.nmi_md->m_hdr.mh_len - info.nmi_dpos; if (t1 >= (4)) { (tl) = (u_int32_t *)(info.nmi_dpos); info.nmi_dpos += (4); } else if ((t1 = nfsm_disct(&info.nmi_md, &info.nmi_dpos, (4), t1, &cp2)) != 0) { error = t1; m_freem(info.nmi_mrep); goto nfsmout; } else { (tl) = (u_int32_t *)cp2; } };
   more_dirs = (((int)((__uint32_t)((int32_t)(*tl)))) == 0);
  }
  m_freem(info.nmi_mrep);
 }
 if (blksiz > 0) {
  left = 512 - blksiz;
  dp->d_reclen += left;
  uiop->uio_iov->iov_base = (char *)uiop->uio_iov->iov_base +
      left;
  uiop->uio_iov->iov_len -= left;
  uiop->uio_resid -= left;
 }
 if (bigenough) {
  dnp->n_un2.nd_direof = ((((u_quad_t)((__uint32_t)(((u_int32_t *)(&cookie.nfsuquad[0]))[0]))) << 32) | (u_quad_t)(((__uint32_t)(((u_int32_t *)(&cookie.nfsuquad[0]))[1]))));
  if (end_of_directory) *end_of_directory = 1;
 } else {
  if (uiop->uio_resid > 0)
   printf("EEK! readdirplusrpc resid > 0\n");
 }
nfsmout:
 if (newvp != ((struct vnode *)((void *)0)))
  vrele(newvp);
 return (error);
}
int
nfs_sillyrename(struct vnode *dvp, struct vnode *vp, struct componentname *cnp)
{
 struct sillyrename *sp;
 struct nfsnode *np;
 int error;
 cache_purge(dvp);
 np = ((struct nfsnode *)(vp)->v_data);
 sp = malloc(sizeof(*sp), 22, 0x0001);
 sp->s_cred = crdup(cnp->cn_cred);
 sp->s_dvp = dvp;
 vref(dvp);
 if (vp->v_type == VDIR) {
  printf("nfs: sillyrename dir\n");
  error = 22;
  goto bad;
 }
 while (1) {
  u_int32_t rnd[2];
  arc4random_buf(&rnd, sizeof rnd);
  sp->s_namlen = snprintf(sp->s_name, sizeof sp->s_name,
      ".nfs%08X%08X", rnd[0], rnd[1]);
  if (sp->s_namlen > sizeof sp->s_name)
   sp->s_namlen = strlen(sp->s_name);
  if (nfs_lookitup(dvp, sp->s_name, sp->s_namlen, sp->s_cred,
      cnp->cn_proc, ((void *)0)))
   break;
 }
 error = nfs_renameit(dvp, cnp, sp);
 if (error)
  goto bad;
 error = nfs_lookitup(dvp, sp->s_name, sp->s_namlen, sp->s_cred,
  cnp->cn_proc, &np);
 np->n_sillyrename = sp;
 return (0);
bad:
 vrele(sp->s_dvp);
 crfree(sp->s_cred);
 free(sp, 22, sizeof(*sp));
 return (error);
}
int
nfs_lookitup(struct vnode *dvp, char *name, int len, struct ucred *cred,
    struct proc *procp, struct nfsnode **npp)
{
 struct nfsm_info info;
 u_int32_t *tl;
 int32_t t1;
 struct vnode *newvp = ((void *)0);
 struct nfsnode *np, *dnp = ((struct nfsnode *)(dvp)->v_data);
 caddr_t cp2;
 int error = 0, fhlen, attrflag = 0;
 nfsfh_t *nfhp;
 info.nmi_v3 = (((struct nfsmount *)(((dvp)->v_mount)->mnt_data))->nm_flag & 0x00000200);
 nfsstats.rpccnt[3]++;
 info.nmi_mb = info.nmi_mreq = nfsm_reqhead(((info.nmi_v3) ? (64 + 4) : 32) + 4 +
     (((len)+3)&(~0x3)));
 nfsm_fhtom(&info, dvp, info.nmi_v3);
 if ((len) > (255)) { m_freem(info.nmi_mreq); error = 63; goto nfsmout; } nfsm_strtombuf(&info.nmi_mb, (name), (len));
 info.nmi_procp = procp;
 info.nmi_cred = cred;
 error = nfs_request(dvp, 3, &info);
 if (error && !info.nmi_v3) {
  m_freem(info.nmi_mrep);
  goto nfsmout;
 }
 if (npp && !error) {
  { if (info.nmi_v3) { { t1 = ((caddr_t)((info.nmi_md)->m_hdr.mh_data)) + info.nmi_md->m_hdr.mh_len - info.nmi_dpos; if (t1 >= (4)) { (tl) = (u_int32_t *)(info.nmi_dpos); info.nmi_dpos += (4); } else if ((t1 = nfsm_disct(&info.nmi_md, &info.nmi_dpos, (4), t1, &cp2)) != 0) { error = t1; m_freem(info.nmi_mrep); goto nfsmout; } else { (tl) = (u_int32_t *)cp2; } }; if (((fhlen) = ((int)((__uint32_t)((int32_t)(*tl))))) <= 0 || (fhlen) > 64) { m_freem(info.nmi_mrep); error = 72; goto nfsmout; } } else (fhlen) = 32; { t1 = ((caddr_t)((info.nmi_md)->m_hdr.mh_data)) + info.nmi_md->m_hdr.mh_len - info.nmi_dpos; if (t1 >= ((((fhlen)+3)&(~0x3)))) { ((nfhp)) = (nfsfh_t *)(info.nmi_dpos); info.nmi_dpos += ((((fhlen)+3)&(~0x3))); } else if ((t1 = nfsm_disct(&info.nmi_md, &info.nmi_dpos, ((((fhlen)+3)&(~0x3))), t1, &cp2)) != 0) { error = t1; m_freem(info.nmi_mrep); goto nfsmout; } else { ((nfhp)) = (nfsfh_t *)cp2; } }; };
  if (*npp) {
   np = *npp;
   np->n_fhp = &np->n_fh;
   __builtin_bcopy((nfhp), (np->n_fhp), (fhlen));
   np->n_fhsize = fhlen;
   newvp = ((np)->n_vnode);
  } else if (((dnp)->n_fhsize == (fhlen) && !__builtin_bcmp(((caddr_t)(dnp)->n_fhp), ((caddr_t)(nfhp)), ((fhlen))))) {
   vref(dvp);
   newvp = dvp;
   np = dnp;
  } else {
   error = nfs_nget(dvp->v_mount, nfhp, fhlen, &np);
   if (error) {
    m_freem(info.nmi_mrep);
    return (error);
   }
   newvp = ((np)->n_vnode);
  }
  if (info.nmi_v3) {
   { if (info.nmi_mrep != ((void *)0)) { struct vnode *ttvp = (newvp); { t1 = ((caddr_t)((info.nmi_md)->m_hdr.mh_data)) + info.nmi_md->m_hdr.mh_len - info.nmi_dpos; if (t1 >= (4)) { (tl) = (u_int32_t *)(info.nmi_dpos); info.nmi_dpos += (4); } else if ((t1 = nfsm_disct(&info.nmi_md, &info.nmi_dpos, (4), t1, &cp2)) != 0) { error = t1; m_freem(info.nmi_mrep); goto nfsmout; } else { (tl) = (u_int32_t *)cp2; } }; if (((attrflag) = ((int)((__uint32_t)((int32_t)(*tl))))) != 0) { if ((t1 = nfs_loadattrcache(&ttvp, &info.nmi_md, &info.nmi_dpos, ((void *)0))) != 0) { error = t1; (attrflag) = 0; m_freem(info.nmi_mrep); goto nfsmout; } (newvp) = ttvp; } } };
   if (!attrflag && *npp == ((void *)0)) {
    m_freem(info.nmi_mrep);
    vrele(newvp);
    return (2);
   }
  } else
   { struct vnode *ttvp = (newvp); if ((t1 = nfs_loadattrcache(&ttvp, &info.nmi_md, &info.nmi_dpos, (((void *)0)))) != 0) { error = t1; m_freem(info.nmi_mrep); goto nfsmout; } (newvp) = ttvp; };
 }
 m_freem(info.nmi_mrep);
nfsmout:
 if (npp && *npp == ((void *)0)) {
  if (error) {
   if (newvp)
    vrele(newvp);
  } else
   *npp = np;
 }
 return (error);
}
int
nfs_commit(struct vnode *vp, u_quad_t offset, int cnt, struct proc *procp)
{
 struct nfsm_info info;
 u_int32_t *tl;
 int32_t t1;
 struct nfsmount *nmp = ((struct nfsmount *)((vp->v_mount)->mnt_data));
 caddr_t cp2;
 int error = 0, wccflag = 0;
 if ((nmp->nm_flag & 0x00040000) == 0)
  return (0);
 nfsstats.rpccnt[21]++;
 info.nmi_mb = info.nmi_mreq = nfsm_reqhead(((1) ? (64 + 4) : 32));
 nfsm_fhtom(&info, vp, 1);
 tl = nfsm_build(&info.nmi_mb, 3 * 4);
 do { ((u_int32_t *)(tl))[0] = ((__uint32_t)((u_int32_t)((offset) >> 32))); ((u_int32_t *)(tl))[1] = ((__uint32_t)((u_int32_t)((offset) & 0xffffffff))); } while (0);
 tl += 2;
 *tl = (((__uint32_t)((int32_t)(cnt))));
 info.nmi_procp = procp;
 info.nmi_cred = ((struct nfsnode *)(vp)->v_data)->n_wcred;
 error = nfs_request(vp, 21, &info);
 do { if (info.nmi_mrep != ((void *)0)) { struct timespec _mtime; int ttattrf, ttretf = 0; { t1 = ((caddr_t)((info.nmi_md)->m_hdr.mh_data)) + info.nmi_md->m_hdr.mh_len - info.nmi_dpos; if (t1 >= (4)) { (tl) = (u_int32_t *)(info.nmi_dpos); info.nmi_dpos += (4); } else if ((t1 = nfsm_disct(&info.nmi_md, &info.nmi_dpos, (4), t1, &cp2)) != 0) { error = t1; m_freem(info.nmi_mrep); goto nfsmout; } else { (tl) = (u_int32_t *)cp2; } }; if (*tl == nfs_true) { { t1 = ((caddr_t)((info.nmi_md)->m_hdr.mh_data)) + info.nmi_md->m_hdr.mh_len - info.nmi_dpos; if (t1 >= (6 * 4)) { (tl) = (u_int32_t *)(info.nmi_dpos); info.nmi_dpos += (6 * 4); } else if ((t1 = nfsm_disct(&info.nmi_md, &info.nmi_dpos, (6 * 4), t1, &cp2)) != 0) { error = t1; m_freem(info.nmi_mrep); goto nfsmout; } else { (tl) = (u_int32_t *)cp2; } }; do { (&_mtime)->tv_sec = ((__uint32_t)(((struct nfsv3_time *)(tl + 2))->nfsv3_sec)); (&_mtime)->tv_nsec = ((__uint32_t)(((struct nfsv3_time *)(tl + 2))->nfsv3_nsec)); } while (0); if (wccflag) { ttretf = (((&((struct nfsnode *)(vp)->v_data)->n_mtime)->tv_sec == (&_mtime)->tv_sec) ? ((&((struct nfsnode *)(vp)->v_data)->n_mtime)->tv_nsec != (&_mtime)->tv_nsec) : ((&((struct nfsnode *)(vp)->v_data)->n_mtime)->tv_sec != (&_mtime)->tv_sec)); } } { if (info.nmi_mrep != ((void *)0)) { struct vnode *ttvp = ((vp)); { t1 = ((caddr_t)((info.nmi_md)->m_hdr.mh_data)) + info.nmi_md->m_hdr.mh_len - info.nmi_dpos; if (t1 >= (4)) { (tl) = (u_int32_t *)(info.nmi_dpos); info.nmi_dpos += (4); } else if ((t1 = nfsm_disct(&info.nmi_md, &info.nmi_dpos, (4), t1, &cp2)) != 0) { error = t1; m_freem(info.nmi_mrep); goto nfsmout; } else { (tl) = (u_int32_t *)cp2; } }; if (((ttattrf) = ((int)((__uint32_t)((int32_t)(*tl))))) != 0) { if ((t1 = nfs_loadattrcache(&ttvp, &info.nmi_md, &info.nmi_dpos, ((void *)0))) != 0) { error = t1; (ttattrf) = 0; m_freem(info.nmi_mrep); goto nfsmout; } ((vp)) = ttvp; } } }; if (wccflag) { (wccflag) = ttretf; } else { (wccflag) = ttattrf; } } } while (0);
 if (!error) {
  { t1 = ((caddr_t)((info.nmi_md)->m_hdr.mh_data)) + info.nmi_md->m_hdr.mh_len - info.nmi_dpos; if (t1 >= (8)) { (tl) = (u_int32_t *)(info.nmi_dpos); info.nmi_dpos += (8); } else if ((t1 = nfsm_disct(&info.nmi_md, &info.nmi_dpos, (8), t1, &cp2)) != 0) { error = t1; m_freem(info.nmi_mrep); goto nfsmout; } else { (tl) = (u_int32_t *)cp2; } };
  if (__builtin_bcmp((nmp->nm_verf), (tl), (8))) {
   __builtin_bcopy((tl), (nmp->nm_verf), (8));
   error = 30001;
  }
 }
 m_freem(info.nmi_mrep);
nfsmout:
 return (error);
}
int
nfs_bmap(void *v)
{
 struct vop_bmap_args *ap = v;
 struct vnode *vp = ap->a_vp;
 if (ap->a_vpp != ((void *)0))
  *ap->a_vpp = vp;
 if (ap->a_bnp != ((void *)0))
  *ap->a_bnp = ap->a_bn * ((vp->v_mount->mnt_stat.f_iosize) >> 9);
 return (0);
}
int
nfs_strategy(void *v)
{
 struct vop_strategy_args *ap = v;
 struct buf *bp = ap->a_bp;
 struct proc *p;
 int error = 0;
 if ((bp->b_flags & (0x00002000|0x00000004)) == (0x00002000|0x00000004))
  panic("nfs physio/async");
 if (bp->b_flags & 0x00000004)
  p = ((void *)0);
 else
  p = (__curcpu->ci_self)->ci_curproc;
 if ((bp->b_flags & 0x00000004) == 0 || nfs_asyncio(bp, 0))
  error = nfs_doio(bp, p);
 return (error);
}
int
nfs_fsync(void *v)
{
 struct vop_fsync_args *ap = v;
 return (nfs_flush(ap->a_vp, ap->a_cred, ap->a_waitfor, ap->a_p, 1));
}
int
nfs_flush(struct vnode *vp, struct ucred *cred, int waitfor, struct proc *p,
    int commit)
{
 struct nfsnode *np = ((struct nfsnode *)(vp)->v_data);
 struct buf *bp;
 int i;
 struct buf *nbp;
 struct nfsmount *nmp = ((struct nfsmount *)((vp->v_mount)->mnt_data));
 int s, error = 0, slptimeo = 0, slpflag = 0, retv, bvecpos;
 int passone = 1;
 u_quad_t off = (u_quad_t)-1, endoff = 0, toff;
 struct buf *bvec[20];
 if (nmp->nm_flag & 0x00000040)
  slpflag = 0x100;
 if (!commit)
  passone = 0;
again:
 bvecpos = 0;
 if ((((struct nfsmount *)(((vp)->v_mount)->mnt_data))->nm_flag & 0x00000200) && commit) {
  s = _splraise(5);
  for (bp = ((&vp->v_dirtyblkhd)->lh_first); bp != ((void *)0); bp = nbp) {
   if (bvecpos >= 20)
    break;
   if ((bp->b_flags & (0x00000010 | 0x00000080 | 0x00000002))
       != (0x00000080 | 0x00000002)) {
    nbp = ((bp)->b_vnbufs.le_next);
    continue;
   }
   bufcache_take(bp);
   bp->b_flags |= 0x00020000;
   buf_acquire(bp);
   nbp = ((bp)->b_vnbufs.le_next);
   bvec[bvecpos++] = bp;
   toff = ((u_quad_t)bp->b_blkno) * (1 << 9) +
    bp->b_dirtyoff;
   if (toff < off)
    off = toff;
   toff += (u_quad_t)(bp->b_dirtyend - bp->b_dirtyoff);
   if (toff > endoff)
    endoff = toff;
  }
  _splx(s);
 }
 if (bvecpos > 0) {
  bcstats.pendingwrites++;
  bcstats.numwrites++;
  retv = nfs_commit(vp, off, (int)(endoff - off), p);
  if (retv == 30001)
   nfs_clearcommit(vp->v_mount);
  for (i = 0; i < bvecpos; i++) {
   bp = bvec[i];
   bp->b_flags &= ~(0x00000002 | 0x00020000);
   if (retv) {
    if (i == 0)
     bcstats.pendingwrites--;
    brelse(bp);
   } else {
    if (i > 0)
     bcstats.pendingwrites++;
    s = _splraise(5);
    buf_undirty(bp);
    vp->v_numoutput++;
    bp->b_flags |= 0x00000004;
    bp->b_flags &= ~(0x00008000|0x00000100|0x00000400);
    bp->b_dirtyoff = bp->b_dirtyend = 0;
    biodone(bp);
    _splx(s);
   }
  }
 }
loop:
 s = _splraise(5);
 for (bp = ((&vp->v_dirtyblkhd)->lh_first); bp != ((void *)0); bp = nbp) {
  nbp = ((bp)->b_vnbufs.le_next);
  if (bp->b_flags & 0x00000010) {
   if (waitfor != 1 || passone)
    continue;
   bp->b_flags |= 0x00010000;
   error = tsleep(bp, slpflag | (16 + 1),
    "nfsfsync", slptimeo);
   _splx(s);
   if (error) {
    if (nfs_sigintr(nmp, ((void *)0), p))
     return (4);
    if (slpflag == 0x100) {
     slpflag = 0;
     slptimeo = 2 * hz;
    }
   }
   goto loop;
  }
  if ((bp->b_flags & 0x00000080) == 0)
   panic("nfs_fsync: not dirty");
  if ((passone || !commit) && (bp->b_flags & 0x00000002))
   continue;
  bufcache_take(bp);
  if (passone || !commit) {
   bp->b_flags |= 0x00000004;
  } else {
   bp->b_flags |= (0x00000004|0x00020000|0x00000002);
  }
  buf_acquire(bp);
  _splx(s);
  VOP_BWRITE(bp);
  goto loop;
 }
 _splx(s);
 if (passone) {
  passone = 0;
  goto again;
 }
 if (waitfor == 1) {
 loop2:
  s = _splraise(5);
  error = vwaitforio(vp, slpflag, "nfs_fsync", slptimeo);
  _splx(s);
  if (error) {
   if (nfs_sigintr(nmp, ((void *)0), p))
    return (4);
   if (slpflag == 0x100) {
    slpflag = 0;
    slptimeo = 2 * hz;
   }
   goto loop2;
  }
  if (((&vp->v_dirtyblkhd)->lh_first) && commit) {
   goto loop;
  }
 }
 if (np->n_flag & 0x0008) {
  error = np->n_error;
  np->n_flag &= ~0x0008;
 }
 return (error);
}
int
nfs_pathconf(void *v)
{
 struct vop_pathconf_args *ap = v;
 struct nfsmount *nmp = ((struct nfsmount *)((ap->a_vp->v_mount)->mnt_data));
 int error = 0;
 switch (ap->a_name) {
 case 1:
  *ap->a_retval = 32767;
  break;
 case 4:
  *ap->a_retval = 255;
  break;
 case 7:
  *ap->a_retval = 1;
  break;
 case 8:
  *ap->a_retval = 1;
  break;
 case 11:
  *ap->a_retval = 512;
  break;
 case 13:
  *ap->a_retval = 64;
  break;
 case 15:
  *ap->a_retval = min(nmp->nm_rsize, nmp->nm_wsize);
  break;
 case 16:
  *ap->a_retval = -1;
  break;
 case 17:
  *ap->a_retval = min(nmp->nm_rsize, nmp->nm_wsize);
  break;
 case 18:
  *ap->a_retval = (1 << 13);
  break;
 case 19:
  *ap->a_retval = 1024;
  break;
 case 10:
  *ap->a_retval = 1;
  break;
 case 21:
  *ap->a_retval = (((struct nfsmount *)(((ap->a_vp)->v_mount)->mnt_data))->nm_flag & 0x00000200) ? 1 : 1000;
  break;
 default:
  error = 22;
  break;
 }
 return (error);
}
int
nfs_advlock(void *v)
{
 struct vop_advlock_args *ap = v;
 struct nfsnode *np = ((struct nfsnode *)(ap->a_vp)->v_data);
 return (lf_advlock(&np->n_lockf, np->n_size, ap->a_id, ap->a_op,
     ap->a_fl, ap->a_flags));
}
int
nfs_print(void *v)
{
 struct vop_print_args *ap = v;
 struct vnode *vp = ap->a_vp;
 struct nfsnode *np = ((struct nfsnode *)(vp)->v_data);
 printf("tag VT_NFS, fileid %lld fsid 0x%lx",
  np->n_vattr.va_fileid, np->n_vattr.va_fsid);
 if (vp->v_type == VFIFO)
  fifo_printinfo(vp);
 printf("\n");
 return (0);
}
int
nfs_bwrite(void *v)
{
 struct vop_bwrite_args *ap = v;
 return (nfs_writebp(ap->a_bp, 1));
}
int
nfs_writebp(struct buf *bp, int force)
{
 int oldflags = bp->b_flags, retv = 1;
 struct proc *p = (__curcpu->ci_self)->ci_curproc;
 off_t off;
 size_t cnt;
 int s;
 struct vnode *vp;
 struct nfsnode *np;
 if(!(bp->b_flags & 0x00000010))
  panic("bwrite: buffer is not busy???");
 vp = bp->b_vp;
 np = ((struct nfsnode *)(vp)->v_data);
 bp->b_flags &= ~(0x00008000|0x00000100|0x00000400);
 s = _splraise(5);
 buf_undirty(bp);
 if ((oldflags & 0x00000004) && !(oldflags & 0x00000080) && p)
  ++p->p_ru.ru_oublock;
 bp->b_vp->v_numoutput++;
 _splx(s);
 if ((oldflags & (0x00000002 | 0x00020000)) == 0x00000002) {
  off = ((u_quad_t)bp->b_blkno) * (1 << 9) + bp->b_dirtyoff;
  cnt = bp->b_dirtyend - bp->b_dirtyoff;
  _rw_enter_write(&np->n_commitlock );
  if (!(bp->b_flags & 0x00000002)) {
   _rw_exit_write(&np->n_commitlock );
   return (0);
  }
  if (!nfs_in_committed_range(vp, bp)) {
   int pushedrange = 0;
   if (nfs_in_tobecommitted_range(vp, bp)) {
    pushedrange = 1;
    off = np->n_pushlo;
    cnt = np->n_pushhi - np->n_pushlo;
   }
   bp->b_flags |= 0x00020000;
   bcstats.pendingwrites++;
   bcstats.numwrites++;
   retv = nfs_commit(bp->b_vp, off, cnt, (__curcpu->ci_self)->ci_curproc);
   bp->b_flags &= ~0x00020000;
   if (retv == 0) {
    if (pushedrange)
     nfs_merge_commit_ranges(vp);
    else
     nfs_add_committed_range(vp, bp);
   } else
    bcstats.pendingwrites--;
  } else
   retv = 0;
  _rw_exit_write(&np->n_commitlock );
  if (!retv) {
   bp->b_dirtyoff = bp->b_dirtyend = 0;
   bp->b_flags &= ~0x00000002;
   s = _splraise(5);
   biodone(bp);
   _splx(s);
  } else if (retv == 30001)
   nfs_clearcommit(bp->b_vp->v_mount);
 }
 if (retv) {
  buf_flip_dma(bp);
  if (force)
   bp->b_flags |= 0x00020000;
  VOP_STRATEGY(bp);
 }
 if( (oldflags & 0x00000004) == 0) {
  int rtval;
  bp->b_flags |= 0x00004000;
  rtval = biowait(bp);
  if (!(oldflags & 0x00000080) && p) {
   ++p->p_ru.ru_oublock;
  }
  brelse(bp);
  return (rtval);
 }
 return (0);
}
int
nfsspec_access(void *v)
{
 struct vop_access_args *ap = v;
 struct vattr va;
 struct vnode *vp = ap->a_vp;
 int error;
 if ((ap->a_mode & 00200) && (vp->v_mount->mnt_flag & 0x00000001)) {
  switch (vp->v_type) {
  case VREG:
  case VDIR:
  case VLNK:
   return (30);
  default:
   break;
  }
 }
 error = VOP_GETATTR(vp, &va, ap->a_cred, ap->a_p);
 if (error)
  return (error);
 return (vaccess(vp->v_type, va.va_mode, va.va_uid, va.va_gid,
     ap->a_mode, ap->a_cred));
}
int
nfs_poll(void *v)
{
 struct vop_poll_args *ap = v;
 return (ap->a_events & (0x0001 | 0x0004 | 0x0040 | 0x0004));
}
int
nfsspec_read(void *v)
{
 struct vop_read_args *ap = v;
 struct nfsnode *np = ((struct nfsnode *)(ap->a_vp)->v_data);
 np->n_flag |= 0x0100;
 getnanotime(&np->n_un1.nf_atim);
 return (spec_read(ap));
}
int
nfsspec_write(void *v)
{
 struct vop_write_args *ap = v;
 struct nfsnode *np = ((struct nfsnode *)(ap->a_vp)->v_data);
 np->n_flag |= 0x0200;
 getnanotime(&np->n_un2.nf_mtim);
 return (spec_write(ap));
}
int
nfsspec_close(void *v)
{
 struct vop_close_args *ap = v;
 struct vnode *vp = ap->a_vp;
 struct nfsnode *np = ((struct nfsnode *)(vp)->v_data);
 struct vattr vattr;
 if (np->n_flag & (0x0100 | 0x0200)) {
  np->n_flag |= 0x0400;
  if (vp->v_usecount == 1 &&
      (vp->v_mount->mnt_flag & 0x00000001) == 0) {
   vattr_null(&vattr);
   if (np->n_flag & 0x0100)
    vattr.va_atime = np->n_un1.nf_atim;
   if (np->n_flag & 0x0200)
    vattr.va_mtime = np->n_un2.nf_mtim;
   (void)VOP_SETATTR(vp, &vattr, ap->a_cred, ap->a_p);
  }
 }
 return (spec_close(ap));
}
int
nfsfifo_read(void *v)
{
 struct vop_read_args *ap = v;
 struct nfsnode *np = ((struct nfsnode *)(ap->a_vp)->v_data);
 np->n_flag |= 0x0100;
 getnanotime(&np->n_un1.nf_atim);
 return (fifo_read(ap));
}
int
nfsfifo_write(void *v)
{
 struct vop_write_args *ap = v;
 struct nfsnode *np = ((struct nfsnode *)(ap->a_vp)->v_data);
 np->n_flag |= 0x0200;
 getnanotime(&np->n_un2.nf_mtim);
 return (fifo_write(ap));
}
int
nfsfifo_close(void *v)
{
 struct vop_close_args *ap = v;
 struct vnode *vp = ap->a_vp;
 struct nfsnode *np = ((struct nfsnode *)(vp)->v_data);
 struct vattr vattr;
 if (np->n_flag & (0x0100 | 0x0200)) {
  if (np->n_flag & 0x0100) {
   getnanotime(&np->n_un1.nf_atim);
  }
  if (np->n_flag & 0x0200) {
   getnanotime(&np->n_un2.nf_mtim);
  }
  np->n_flag |= 0x0400;
  if (vp->v_usecount == 1 &&
      (vp->v_mount->mnt_flag & 0x00000001) == 0) {
   vattr_null(&vattr);
   if (np->n_flag & 0x0100)
    vattr.va_atime = np->n_un1.nf_atim;
   if (np->n_flag & 0x0200)
    vattr.va_mtime = np->n_un2.nf_mtim;
   (void)VOP_SETATTR(vp, &vattr, ap->a_cred, ap->a_p);
  }
 }
 return (fifo_close(ap));
}
int
nfsfifo_reclaim(void *v)
{
 fifo_reclaim(v);
 return (nfs_reclaim(v));
}
