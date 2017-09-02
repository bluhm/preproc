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
int sosetopt(struct socket *so, int level, int optname, struct mbuf *m);
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
struct mdproc {
 struct trapframe64 *md_tf;
 struct fpstate64 *md_fpstate;
 volatile int md_astpending;
};
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
typedef struct _SHA2_CTX {
 union {
  u_int32_t st32[8];
  u_int64_t st64[8];
 } state;
 u_int64_t bitcount[2];
 u_int8_t buffer[128];
} SHA2_CTX;

void SHA256Init(SHA2_CTX *);
void SHA256Update(SHA2_CTX *, const void *, size_t)
 __attribute__((__bounded__(__string__,2,3)));
void SHA256Final(u_int8_t[32], SHA2_CTX *)
 __attribute__((__bounded__(__minbytes__,1,32)));
void SHA384Init(SHA2_CTX *);
void SHA384Update(SHA2_CTX *, const void *, size_t)
 __attribute__((__bounded__(__string__,2,3)));
void SHA384Final(u_int8_t[48], SHA2_CTX *)
 __attribute__((__bounded__(__minbytes__,1,48)));
void SHA512Init(SHA2_CTX *);
void SHA512Update(SHA2_CTX *, const void *, size_t)
 __attribute__((__bounded__(__string__,2,3)));
void SHA512Final(u_int8_t[64], SHA2_CTX *)
 __attribute__((__bounded__(__minbytes__,1,64)));

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
struct m_tag;
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
struct pf_state_key;
union inpaddru {
 struct in6_addr iau_addr6;
 struct {
  uint8_t pad[12];
  struct in_addr inaddr;
 } iau_a4u;
};
struct inpcb {
 struct { struct inpcb *le_next; struct inpcb **le_prev; } inp_hash;
 struct { struct inpcb *le_next; struct inpcb **le_prev; } inp_lhash;
 struct { struct inpcb *tqe_next; struct inpcb **tqe_prev; } inp_queue;
 struct inpcbtable *inp_table;
 union inpaddru inp_faddru;
 union inpaddru inp_laddru;
 u_int16_t inp_fport;
 u_int16_t inp_lport;
 struct socket *inp_socket;
 caddr_t inp_ppcb;
 union {
  struct route ru_route;
  struct route_in6 ru_route6;
 } inp_ru;
 int inp_flags;
 union {
  struct ip hu_ip;
  struct ip6_hdr hu_ipv6;
 } inp_hu;
 struct mbuf *inp_options;
 struct ip6_pktopts *inp_outputopts6;
 int inp_hops;
 union {
  struct ip_moptions *mou_mo;
  struct ip6_moptions *mou_mo6;
 } inp_mou;
 u_char inp_seclevel[4];
 u_char inp_ip_minttl;
 int inp_cksum6;
 struct icmp6_filter *inp_icmp6filt;
 struct pf_state_key *inp_pf_sk;
 u_int inp_rtableid;
 int inp_pipex;
 int inp_divertfl;
};
struct inpcbhead { struct inpcb *lh_first; };
struct inpcbtable {
 struct inpthead { struct inpcb *tqh_first; struct inpcb **tqh_last; } inpt_queue;
 struct inpcbhead *inpt_hashtbl, *inpt_lhashtbl;
 SIPHASH_KEY inpt_key;
 u_long inpt_hash, inpt_lhash;
 int inpt_count;
};
struct baddynamicports {
 u_int32_t tcp[((((65536) + (((sizeof(u_int32_t) * 8)) - 1)) / ((sizeof(u_int32_t) * 8))))];
 u_int32_t udp[((((65536) + (((sizeof(u_int32_t) * 8)) - 1)) / ((sizeof(u_int32_t) * 8))))];
};
extern struct baddynamicports baddynamicports;
extern struct baddynamicports rootonlyports;
void in_losing(struct inpcb *);
int in_pcballoc(struct socket *, struct inpcbtable *);
int in_pcbbind(struct inpcb *, struct mbuf *, struct proc *);
int in_pcbaddrisavail(struct inpcb *, struct sockaddr_in *, int,
     struct proc *);
int in_pcbconnect(struct inpcb *, struct mbuf *);
void in_pcbdetach(struct inpcb *);
void in_pcbdisconnect(struct inpcb *);
struct inpcb *
  in_pcbhashlookup(struct inpcbtable *, struct in_addr,
          u_int, struct in_addr, u_int, u_int);
struct inpcb *
  in_pcblookup_listen(struct inpcbtable *, struct in_addr, u_int, int,
     struct mbuf *, u_int);
struct inpcb *
  in6_pcbhashlookup(struct inpcbtable *, const struct in6_addr *,
          u_int, const struct in6_addr *, u_int, u_int);
struct inpcb *
  in6_pcblookup_listen(struct inpcbtable *,
          struct in6_addr *, u_int, int, struct mbuf *,
          u_int);
int in6_pcbaddrisavail(struct inpcb *, struct sockaddr_in6 *, int,
     struct proc *);
int in6_pcbconnect(struct inpcb *, struct mbuf *);
int in6_setsockaddr(struct inpcb *, struct mbuf *);
int in6_setpeeraddr(struct inpcb *, struct mbuf *);
void in_pcbinit(struct inpcbtable *, int);
struct inpcb *
  in_pcblookup_local(struct inpcbtable *, void *, u_int, int, u_int);
void in_pcbnotifyall(struct inpcbtable *, struct sockaddr *,
     u_int, int, void (*)(struct inpcb *, int));
void in_pcbrehash(struct inpcb *);
void in_rtchange(struct inpcb *, int);
void in_setpeeraddr(struct inpcb *, struct mbuf *);
void in_setsockaddr(struct inpcb *, struct mbuf *);
int in_baddynamic(u_int16_t, u_int16_t);
int in_rootonly(u_int16_t, u_int16_t);
int in_pcbselsrc(struct in_addr **, struct sockaddr_in *, struct inpcb *);
struct rtentry *
 in_pcbrtentry(struct inpcb *);
int in6_pcbnotify(struct inpcbtable *, struct sockaddr_in6 *,
 u_int, const struct sockaddr_in6 *, u_int, u_int, int, void *,
 void (*)(struct inpcb *, int));
int in6_selecthlim(struct inpcb *);
int in_pcbpickport(u_int16_t *, void *, int, struct inpcb *, struct proc *);
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
struct mbuf *
  ip_reass(struct ipqent *, struct ipq *);
u_int16_t
  ip_randomid(void);
void ip_send(struct mbuf *);
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
struct icmp_ra_addr {
 u_int32_t ira_addr;
 u_int32_t ira_preference;
};
struct icmp {
 u_int8_t icmp_type;
 u_int8_t icmp_code;
 u_int16_t icmp_cksum;
 union {
  u_int8_t ih_pptr;
  struct ih_exthdr {
   u_int8_t iex_pad;
   u_int8_t iex_length;
  } ih_exthdr;
  struct in_addr ih_gwaddr;
  struct ih_idseq {
     u_int16_t icd_id;
     u_int16_t icd_seq;
  } ih_idseq;
  int32_t ih_void;
  struct ih_pmtu {
     u_int16_t ipm_void;
     u_int16_t ipm_nextmtu;
  } ih_pmtu;
  struct ih_rtradv {
   u_int8_t irt_num_addrs;
   u_int8_t irt_wpa;
   u_int16_t irt_lifetime;
  } ih_rtradv;
 } icmp_hun;
 union {
  struct id_ts {
     u_int32_t its_otime;
     u_int32_t its_rtime;
     u_int32_t its_ttime;
  } id_ts;
  struct id_ip {
     struct ip idi_ip;
  } id_ip;
  u_int32_t id_mask;
  int8_t id_data[1];
 } icmp_dun;
};
struct icmp_ext_hdr {
 u_int8_t ieh_version;
 u_int8_t ieh_res;
 u_int16_t ieh_cksum;
};
struct icmp_ext_obj_hdr {
 u_int16_t ieo_length;
 u_int8_t ieo_cnum;
 u_int8_t ieo_ctype;
};
struct mbuf *
 icmp_do_error(struct mbuf *, int, int, u_int32_t, int);
void icmp_error(struct mbuf *, int, int, u_int32_t, int);
int icmp_input(struct mbuf **, int *, int, int);
void icmp_init(void);
int icmp_reflect(struct mbuf *, struct mbuf **, struct in_ifaddr *);
void icmp_send(struct mbuf *, struct mbuf *);
int icmp_sysctl(int *, u_int, void *, size_t *, void *, size_t);
struct rtentry *
 icmp_mtudisc_clone(struct in_addr, u_int);
void icmp_mtudisc(struct icmp *, u_int);
int icmp_do_exthdr(struct mbuf *, u_int16_t, u_int8_t, void *, size_t);
struct icmpstat {
 u_long icps_error;
 u_long icps_toofreq;
 u_long icps_oldshort;
 u_long icps_oldicmp;
 u_long icps_outhist[40 + 1];
 u_long icps_badcode;
 u_long icps_tooshort;
 u_long icps_checksum;
 u_long icps_badlen;
 u_long icps_reflect;
 u_long icps_bmcastecho;
 u_long icps_inhist[40 + 1];
};
enum icmpstat_counters {
 icps_error,
 icps_toofreq,
 icps_oldshort,
 icps_oldicmp,
 icps_outhist,
 icps_badcode = icps_outhist + 40 + 1,
 icps_tooshort,
 icps_checksum,
 icps_badlen,
 icps_reflect,
 icps_bmcastecho,
 icps_inhist,
 icps_ncounters = icps_inhist + 40 + 1
};
extern struct cpumem *icmpcounters;
static inline void
icmpstat_inc(enum icmpstat_counters c)
{
 counters_inc(icmpcounters, c);
}
typedef u_int32_t tcp_seq;
struct tcphdr {
 u_int16_t th_sport;
 u_int16_t th_dport;
 tcp_seq th_seq;
 tcp_seq th_ack;
 u_int32_t th_off:4,
    th_x2:4;
 u_int8_t th_flags;
 u_int16_t th_win;
 u_int16_t th_sum;
 u_int16_t th_urp;
};
extern tcp_seq tcp_iss;
typedef void (*tcp_timer_func_t)(void *);
extern const tcp_timer_func_t tcp_timer_funcs[4];
extern int tcptv_keep_init;
extern int tcp_always_keepalive;
extern int tcp_keepidle;
extern int tcp_keepintvl;
extern int tcp_maxidle;
extern int tcp_ttl;
extern int tcp_backoff[];
void tcp_timer_init(void);
struct sackblk {
 tcp_seq start;
 tcp_seq end;
};
struct sackhole {
 tcp_seq start;
 tcp_seq end;
 int dups;
 tcp_seq rxmit;
 struct sackhole *next;
};
struct tcpqehead { struct tcpqent *tqh_first; struct tcpqent **tqh_last; };
struct tcpqent {
 struct { struct tcpqent *tqe_next; struct tcpqent **tqe_prev; } tcpqe_q;
 struct tcphdr *tcpqe_tcp;
 struct mbuf *tcpqe_m;
};
struct tcpcb {
 struct tcpqehead t_segq;
 struct timeout t_timer[4];
 short t_state;
 short t_rxtshift;
 short t_rxtcur;
 short t_dupacks;
 u_short t_maxseg;
 char t_force;
 u_int t_flags;
 struct mbuf *t_template;
 struct inpcb *t_inpcb;
 struct timeout t_delack_to;
 tcp_seq snd_una;
 tcp_seq snd_nxt;
 tcp_seq snd_up;
 tcp_seq snd_wl1;
 tcp_seq snd_wl2;
 tcp_seq iss;
 u_long snd_wnd;
 int sack_enable;
 int snd_numholes;
 struct sackhole *snd_holes;
 tcp_seq snd_fack;
 u_long snd_awnd;
 int retran_data;
 tcp_seq snd_last;
 u_long rcv_wnd;
 tcp_seq rcv_nxt;
 tcp_seq rcv_up;
 tcp_seq irs;
 tcp_seq rcv_lastsack;
 int rcv_numsacks;
 struct sackblk sackblks[6];
 tcp_seq rcv_adv;
 tcp_seq snd_max;
 u_long snd_cwnd;
 u_long snd_ssthresh;
 u_int rfbuf_cnt;
 u_int32_t rfbuf_ts;
 u_short t_maxopd;
 u_short t_peermss;
 uint32_t t_rcvtime;
 uint32_t t_rtttime;
 tcp_seq t_rtseq;
 short t_srtt;
 short t_rttvar;
 u_short t_rttmin;
 u_long max_sndwnd;
 char t_oobflags;
 char t_iobc;
 short t_softerror;
 u_char snd_scale;
 u_char rcv_scale;
 u_char request_r_scale;
 u_char requested_s_scale;
 u_int32_t ts_recent;
 u_int32_t ts_modulate;
 u_int32_t ts_recent_age;
 tcp_seq last_ack_sent;
 struct { struct syn_cache *lh_first; } t_sc;
 u_int t_pmtud_mss_acked;
 u_int t_pmtud_mtu_sent;
 tcp_seq t_pmtud_th_seq;
 u_int t_pmtud_nextmtu;
 u_short t_pmtud_ip_len;
 u_short t_pmtud_ip_hl;
 int pf;
 struct timeout t_reap_to;
};
extern int tcp_delack_ticks;
void tcp_delack(void *);
struct tcp_opt_info {
 int ts_present;
 u_int32_t ts_val;
 u_int32_t ts_ecr;
 u_int16_t maxseg;
};
union syn_cache_sa {
 struct sockaddr sa;
 struct sockaddr_in sin;
 struct sockaddr_in6 sin6;
};
struct syn_cache {
 struct { struct syn_cache *tqe_next; struct syn_cache **tqe_prev; } sc_bucketq;
 struct timeout sc_timer;
 union {
  struct route route4;
  struct route_in6 route6;
 } sc_route_u;
 long sc_win;
 struct syn_cache_head *sc_buckethead;
 struct syn_cache_set *sc_set;
 u_int32_t sc_hash;
 u_int32_t sc_timestamp;
 u_int32_t sc_modulate;
 union syn_cache_sa sc_src;
 union syn_cache_sa sc_dst;
 tcp_seq sc_irs;
 tcp_seq sc_iss;
 u_int sc_rtableid;
 u_int sc_rxtcur;
 u_int sc_rxttot;
 u_short sc_rxtshift;
 u_short sc_flags;
 struct mbuf *sc_ipopts;
 u_int16_t sc_peermaxseg;
 u_int16_t sc_ourmaxseg;
 u_int sc_request_r_scale : 4,
    sc_requested_s_scale : 4;
 struct tcpcb *sc_tp;
 struct { struct syn_cache *le_next; struct syn_cache **le_prev; } sc_tpq;
};
struct syn_cache_head {
 struct { struct syn_cache *tqh_first; struct syn_cache **tqh_last; } sch_bucket;
 u_short sch_length;
};
struct syn_cache_set {
 struct syn_cache_head *scs_buckethead;
 int scs_size;
 int scs_count;
 int scs_use;
 u_int32_t scs_random[5];
};
struct tcpstat {
 u_int32_t tcps_connattempt;
 u_int32_t tcps_accepts;
 u_int32_t tcps_connects;
 u_int32_t tcps_drops;
 u_int32_t tcps_conndrops;
 u_int32_t tcps_closed;
 u_int32_t tcps_segstimed;
 u_int32_t tcps_rttupdated;
 u_int32_t tcps_delack;
 u_int32_t tcps_timeoutdrop;
 u_int32_t tcps_rexmttimeo;
 u_int32_t tcps_persisttimeo;
 u_int32_t tcps_persistdrop;
 u_int32_t tcps_keeptimeo;
 u_int32_t tcps_keepprobe;
 u_int32_t tcps_keepdrops;
 u_int32_t tcps_sndtotal;
 u_int32_t tcps_sndpack;
 u_int64_t tcps_sndbyte;
 u_int32_t tcps_sndrexmitpack;
 u_int64_t tcps_sndrexmitbyte;
 u_int64_t tcps_sndrexmitfast;
 u_int32_t tcps_sndacks;
 u_int32_t tcps_sndprobe;
 u_int32_t tcps_sndurg;
 u_int32_t tcps_sndwinup;
 u_int32_t tcps_sndctrl;
 u_int32_t tcps_rcvtotal;
 u_int32_t tcps_rcvpack;
 u_int64_t tcps_rcvbyte;
 u_int32_t tcps_rcvbadsum;
 u_int32_t tcps_rcvbadoff;
 u_int32_t tcps_rcvmemdrop;
 u_int32_t tcps_rcvnosec;
 u_int32_t tcps_rcvshort;
 u_int32_t tcps_rcvduppack;
 u_int64_t tcps_rcvdupbyte;
 u_int32_t tcps_rcvpartduppack;
 u_int64_t tcps_rcvpartdupbyte;
 u_int32_t tcps_rcvoopack;
 u_int64_t tcps_rcvoobyte;
 u_int32_t tcps_rcvpackafterwin;
 u_int64_t tcps_rcvbyteafterwin;
 u_int32_t tcps_rcvafterclose;
 u_int32_t tcps_rcvwinprobe;
 u_int32_t tcps_rcvdupack;
 u_int32_t tcps_rcvacktoomuch;
 u_int32_t tcps_rcvacktooold;
 u_int32_t tcps_rcvackpack;
 u_int64_t tcps_rcvackbyte;
 u_int32_t tcps_rcvwinupd;
 u_int32_t tcps_pawsdrop;
 u_int32_t tcps_predack;
 u_int32_t tcps_preddat;
 u_int32_t tcps_pcbhashmiss;
 u_int32_t tcps_noport;
 u_int32_t tcps_badsyn;
 u_int32_t tcps_dropsyn;
 u_int32_t tcps_rcvbadsig;
 u_int64_t tcps_rcvgoodsig;
 u_int32_t tcps_inswcsum;
 u_int32_t tcps_outswcsum;
 u_int32_t tcps_ecn_accepts;
 u_int32_t tcps_ecn_rcvece;
 u_int32_t tcps_ecn_rcvcwr;
 u_int32_t tcps_ecn_rcvce;
 u_int32_t tcps_ecn_sndect;
 u_int32_t tcps_ecn_sndece;
 u_int32_t tcps_ecn_sndcwr;
 u_int32_t tcps_cwr_ecn;
 u_int32_t tcps_cwr_frecovery;
 u_int32_t tcps_cwr_timeout;
 u_int64_t tcps_sc_added;
 u_int64_t tcps_sc_completed;
 u_int64_t tcps_sc_timed_out;
 u_int64_t tcps_sc_overflowed;
 u_int64_t tcps_sc_reset;
 u_int64_t tcps_sc_unreach;
 u_int64_t tcps_sc_bucketoverflow;
 u_int64_t tcps_sc_aborted;
 u_int64_t tcps_sc_dupesyn;
 u_int64_t tcps_sc_dropped;
 u_int64_t tcps_sc_collisions;
 u_int64_t tcps_sc_retransmitted;
 u_int64_t tcps_sc_seedrandom;
 u_int64_t tcps_sc_hash_size;
 u_int64_t tcps_sc_entry_count;
 u_int64_t tcps_sc_entry_limit;
 u_int64_t tcps_sc_bucket_maxlen;
 u_int64_t tcps_sc_bucket_limit;
 u_int64_t tcps_sc_uses_left;
 u_int64_t tcps_conndrained;
 u_int64_t tcps_sack_recovery_episode;
 u_int64_t tcps_sack_rexmits;
 u_int64_t tcps_sack_rexmit_bytes;
 u_int64_t tcps_sack_rcv_opts;
 u_int64_t tcps_sack_snd_opts;
};
struct tcp_ident_mapping {
 struct sockaddr_storage faddr, laddr;
 int euid, ruid;
 u_int rdomain;
};
enum tcpstat_counters {
 tcps_connattempt,
 tcps_accepts,
 tcps_connects,
 tcps_drops,
 tcps_conndrops,
 tcps_closed,
 tcps_segstimed,
 tcps_rttupdated,
 tcps_delack,
 tcps_timeoutdrop,
 tcps_rexmttimeo,
 tcps_persisttimeo,
 tcps_persistdrop,
 tcps_keeptimeo,
 tcps_keepprobe,
 tcps_keepdrops,
 tcps_sndtotal,
 tcps_sndpack,
 tcps_sndbyte,
 tcps_sndrexmitpack,
 tcps_sndrexmitbyte,
 tcps_sndrexmitfast,
 tcps_sndacks,
 tcps_sndprobe,
 tcps_sndurg,
 tcps_sndwinup,
 tcps_sndctrl,
 tcps_rcvtotal,
 tcps_rcvpack,
 tcps_rcvbyte,
 tcps_rcvbadsum,
 tcps_rcvbadoff,
 tcps_rcvmemdrop,
 tcps_rcvnosec,
 tcps_rcvshort,
 tcps_rcvduppack,
 tcps_rcvdupbyte,
 tcps_rcvpartduppack,
 tcps_rcvpartdupbyte,
 tcps_rcvoopack,
 tcps_rcvoobyte,
 tcps_rcvpackafterwin,
 tcps_rcvbyteafterwin,
 tcps_rcvafterclose,
 tcps_rcvwinprobe,
 tcps_rcvdupack,
 tcps_rcvacktoomuch,
 tcps_rcvacktooold,
 tcps_rcvackpack,
 tcps_rcvackbyte,
 tcps_rcvwinupd,
 tcps_pawsdrop,
 tcps_predack,
 tcps_preddat,
 tcps_pcbhashmiss,
 tcps_noport,
 tcps_badsyn,
 tcps_dropsyn,
 tcps_rcvbadsig,
 tcps_rcvgoodsig,
 tcps_inswcsum,
 tcps_outswcsum,
 tcps_ecn_accepts,
 tcps_ecn_rcvece,
 tcps_ecn_rcvcwr,
 tcps_ecn_rcvce,
 tcps_ecn_sndect,
 tcps_ecn_sndece,
 tcps_ecn_sndcwr,
 tcps_cwr_ecn,
 tcps_cwr_frecovery,
 tcps_cwr_timeout,
 tcps_sc_added,
 tcps_sc_completed,
 tcps_sc_timed_out,
 tcps_sc_overflowed,
 tcps_sc_reset,
 tcps_sc_unreach,
 tcps_sc_bucketoverflow,
 tcps_sc_aborted,
 tcps_sc_dupesyn,
 tcps_sc_dropped,
 tcps_sc_collisions,
 tcps_sc_retransmitted,
 tcps_sc_seedrandom,
 tcps_sc_hash_size,
 tcps_sc_entry_count,
 tcps_sc_entry_limit,
 tcps_sc_bucket_maxlen,
 tcps_sc_bucket_limit,
 tcps_sc_uses_left,
 tcps_conndrained,
 tcps_sack_recovery_episode,
 tcps_sack_rexmits,
 tcps_sack_rexmit_bytes,
 tcps_sack_rcv_opts,
 tcps_sack_snd_opts,
 tcps_ncounters,
};
extern struct cpumem *tcpcounters;
static inline void
tcpstat_inc(enum tcpstat_counters c)
{
 counters_inc(tcpcounters, c);
}
static inline void
tcpstat_add(enum tcpstat_counters c, uint64_t v)
{
 counters_add(tcpcounters, c, v);
}
static inline void
tcpstat_pkt(enum tcpstat_counters pcounter, enum tcpstat_counters bcounter,
    uint64_t v)
{
 counters_pkt(tcpcounters, pcounter, bcounter, v);
}
extern struct inpcbtable tcbtable;
extern u_int32_t tcp_now;
extern int tcp_do_rfc1323;
extern int tcptv_keep_init;
extern int tcp_mssdflt;
extern int tcp_rst_ppslim;
extern int tcp_ack_on_push;
extern int tcp_do_sack;
extern struct pool sackhl_pool;
extern int tcp_sackhole_limit;
extern int tcp_do_ecn;
extern int tcp_do_rfc3390;
extern struct pool tcpqe_pool;
extern int tcp_reass_limit;
extern int tcp_syn_hash_size;
extern int tcp_syn_cache_limit;
extern int tcp_syn_bucket_limit;
extern int tcp_syn_use_limit;
extern struct syn_cache_set tcp_syn_cache[];
extern int tcp_syn_cache_active;
void tcp_canceltimers(struct tcpcb *);
struct tcpcb *
  tcp_close(struct tcpcb *);
void tcp_reaper(void *);
int tcp_freeq(struct tcpcb *);
void tcp6_ctlinput(int, struct sockaddr *, u_int, void *);
void tcp_ctlinput(int, struct sockaddr *, u_int, void *);
int tcp_ctloutput(int, struct socket *, int, int, struct mbuf *);
struct tcpcb *
  tcp_disconnect(struct tcpcb *);
struct tcpcb *
  tcp_drop(struct tcpcb *, int);
int tcp_dooptions(struct tcpcb *, u_char *, int, struct tcphdr *,
  struct mbuf *, int, struct tcp_opt_info *, u_int);
void tcp_init(void);
int tcp_input(struct mbuf **, int *, int, int);
int tcp_mss(struct tcpcb *, int);
void tcp_mss_update(struct tcpcb *);
u_int tcp_hdrsz(struct tcpcb *);
void tcp_mtudisc(struct inpcb *, int);
void tcp_mtudisc_increase(struct inpcb *, int);
void tcp6_mtudisc(struct inpcb *, int);
void tcp6_mtudisc_callback(struct sockaddr_in6 *, u_int);
struct tcpcb *
  tcp_newtcpcb(struct inpcb *);
void tcp_notify(struct inpcb *, int);
int tcp_output(struct tcpcb *);
void tcp_pulloutofband(struct socket *, u_int, struct mbuf *, int);
int tcp_reass(struct tcpcb *, struct tcphdr *, struct mbuf *, int *);
void tcp_rscale(struct tcpcb *, u_long);
void tcp_respond(struct tcpcb *, caddr_t, struct tcphdr *, tcp_seq,
  tcp_seq, int, u_int);
void tcp_setpersist(struct tcpcb *);
void tcp_update_sndspace(struct tcpcb *);
void tcp_update_rcvspace(struct tcpcb *);
void tcp_slowtimo(void);
struct mbuf *
  tcp_template(struct tcpcb *);
void tcp_trace(short, short, struct tcpcb *, caddr_t, int, int);
struct tcpcb *
  tcp_usrclosed(struct tcpcb *);
int tcp_sysctl(int *, u_int, void *, size_t *, void *, size_t);
int tcp_usrreq(struct socket *,
     int, struct mbuf *, struct mbuf *, struct mbuf *, struct proc *);
int tcp_attach(struct socket *, int);
void tcp_xmit_timer(struct tcpcb *, int);
void tcpdropoldhalfopen(struct tcpcb *, u_int16_t);
void tcp_sack_option(struct tcpcb *,struct tcphdr *,u_char *,int);
void tcp_update_sack_list(struct tcpcb *tp, tcp_seq, tcp_seq);
void tcp_del_sackholes(struct tcpcb *, struct tcphdr *);
void tcp_clean_sackreport(struct tcpcb *tp);
void tcp_sack_adjust(struct tcpcb *tp);
struct sackhole *
  tcp_sack_output(struct tcpcb *tp);
int tcp_sack_partialack(struct tcpcb *, struct tcphdr *);
int tcp_newreno(struct tcpcb *, struct tcphdr *);
u_long tcp_seq_subtract(u_long, u_long );
int tcp_signature_apply(caddr_t, caddr_t, unsigned int);
int tcp_signature(struct tdb *, int, struct mbuf *, struct tcphdr *,
     int, int, char *);
void tcp_set_iss_tsm(struct tcpcb *);
void syn_cache_unreach(struct sockaddr *, struct sockaddr *,
    struct tcphdr *, u_int);
void syn_cache_init(void);
void syn_cache_cleanup(struct tcpcb *);
struct udphdr {
 u_int16_t uh_sport;
 u_int16_t uh_dport;
 u_int16_t uh_ulen;
 u_int16_t uh_sum;
};
struct udpiphdr {
 struct ipovly ui_i;
 struct udphdr ui_u;
};
struct udpstat {
 u_long udps_ipackets;
 u_long udps_hdrops;
 u_long udps_badsum;
 u_long udps_nosum;
 u_long udps_badlen;
 u_long udps_noport;
 u_long udps_noportbcast;
 u_long udps_nosec;
 u_long udps_fullsock;
 u_long udps_pcbhashmiss;
 u_long udps_inswcsum;
 u_long udps_opackets;
 u_long udps_outswcsum;
};
enum udpstat_counters {
 udps_ipackets,
 udps_hdrops,
 udps_badsum,
 udps_nosum,
 udps_badlen,
 udps_noport,
 udps_noportbcast,
 udps_nosec,
 udps_fullsock,
 udps_pcbhashmiss,
 udps_inswcsum,
 udps_opackets,
 udps_outswcsum,
 udps_ncounters
};
extern struct cpumem *udpcounters;
static inline void
udpstat_inc(enum udpstat_counters c)
{
 counters_inc(udpcounters, c);
}
extern struct inpcbtable udbtable;
extern struct udpstat udpstat;
void udp6_ctlinput(int, struct sockaddr *, u_int, void *);
void udp_ctlinput(int, struct sockaddr *, u_int, void *);
void udp_init(void);
int udp_input(struct mbuf **, int *, int, int);
int udp6_output(struct inpcb *, struct mbuf *, struct mbuf *,
 struct mbuf *);
int udp_sysctl(int *, u_int, void *, size_t *, void *, size_t);
int udp_usrreq(struct socket *,
     int, struct mbuf *, struct mbuf *, struct mbuf *, struct proc *);
int udp_attach(struct socket *, int);
struct divstat {
 u_long divs_ipackets;
 u_long divs_noport;
 u_long divs_fullsock;
 u_long divs_opackets;
 u_long divs_errors;
};
enum divstat_counters {
 divs_ipackets,
 divs_noport,
 divs_fullsock,
 divs_opackets,
 divs_errors,
 divs_ncounters,
};
extern struct cpumem *divcounters;
static inline void
divstat_inc(enum divstat_counters c)
{
 counters_inc(divcounters, c);
}
extern struct inpcbtable divbtable;
void divert_init(void);
int divert_packet(struct mbuf *, int, u_int16_t);
int divert_sysctl(int *, u_int, void *, size_t *, void *, size_t);
int divert_usrreq(struct socket *,
     int, struct mbuf *, struct mbuf *, struct mbuf *, struct proc *);
int divert_attach(struct socket *, int);
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
struct div6stat {
 u_long divs_ipackets;
 u_long divs_noport;
 u_long divs_fullsock;
 u_long divs_opackets;
 u_long divs_errors;
};
enum div6stat_counters {
 div6s_ipackets,
 div6s_noport,
 div6s_fullsock,
 div6s_opackets,
 div6s_errors,
 div6s_ncounters,
};
extern struct cpumem *div6counters;
static inline void
div6stat_inc(enum div6stat_counters c)
{
 counters_inc(div6counters, c);
}
extern struct inpcbtable divb6table;
void divert6_init(void);
int divert6_packet(struct mbuf *, int, u_int16_t);
int divert6_sysctl(int *, u_int, void *, size_t *, void *, size_t);
int divert6_usrreq(struct socket *,
     int, struct mbuf *, struct mbuf *, struct mbuf *, struct proc *);
int divert6_attach(struct socket *, int);
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
extern struct rwlock pf_lock;
struct pf_pdesc {
 struct {
  int done;
  uid_t uid;
  gid_t gid;
  pid_t pid;
 } lookup;
 u_int64_t tot_len;
 struct pf_addr nsaddr;
 struct pf_addr ndaddr;
 struct pfi_kif *kif;
 struct mbuf *m;
 struct pf_addr *src;
 struct pf_addr *dst;
 u_int16_t *pcksum;
 u_int16_t *sport;
 u_int16_t *dport;
 u_int16_t osport;
 u_int16_t odport;
 u_int16_t nsport;
 u_int16_t ndport;
 u_int32_t off;
 u_int32_t hdrlen;
 u_int32_t p_len;
 u_int32_t extoff;
 u_int32_t fragoff;
 u_int32_t jumbolen;
 u_int32_t badopts;
 u_int16_t rdomain;
 u_int16_t virtual_proto;
 sa_family_t af;
 sa_family_t naf;
 u_int8_t proto;
 u_int8_t tos;
 u_int8_t ttl;
 u_int8_t dir;
 u_int8_t sidx;
 u_int8_t didx;
 u_int8_t destchg;
 u_int8_t pflog;
 union {
  struct tcphdr tcp;
  struct udphdr udp;
  struct icmp icmp;
  struct icmp6_hdr icmp6;
  struct mld_hdr mld;
  struct nd_neighbor_solicit nd_ns;
 } hdr;
};
extern struct task pf_purge_task;
extern struct timeout pf_purge_to;
extern void pf_purge_timeout(void *);
extern void pf_purge(void *);
struct pfloghdr {
 u_int8_t length;
 sa_family_t af;
 u_int8_t action;
 u_int8_t reason;
 char ifname[16];
 char ruleset[16];
 u_int32_t rulenr;
 u_int32_t subrulenr;
 uid_t uid;
 pid_t pid;
 uid_t rule_uid;
 pid_t rule_pid;
 u_int8_t dir;
 u_int8_t rewritten;
 sa_family_t naf;
 u_int8_t pad[1];
 struct pf_addr saddr;
 struct pf_addr daddr;
 u_int16_t sport;
 u_int16_t dport;
};
struct pflog_softc {
 struct ifnet sc_if;
 int sc_unit;
};
struct pflow_flow {
 u_int32_t src_ip;
 u_int32_t dest_ip;
 u_int32_t nexthop_ip;
 u_int16_t if_index_in;
 u_int16_t if_index_out;
 u_int32_t flow_packets;
 u_int32_t flow_octets;
 u_int32_t flow_start;
 u_int32_t flow_finish;
 u_int16_t src_port;
 u_int16_t dest_port;
 u_int8_t pad1;
 u_int8_t tcp_flags;
 u_int8_t protocol;
 u_int8_t tos;
 u_int16_t src_as;
 u_int16_t dest_as;
 u_int8_t src_mask;
 u_int8_t dest_mask;
 u_int16_t pad2;
} __attribute__((__packed__));
struct pflow_set_header {
 u_int16_t set_id;
 u_int16_t set_length;
} __attribute__((__packed__));
struct pflow_tmpl_hdr {
 u_int16_t tmpl_id;
 u_int16_t field_count;
} __attribute__((__packed__));
struct pflow_tmpl_fspec {
 u_int16_t field_id;
 u_int16_t len;
} __attribute__((__packed__));
struct pflow_ipfix_tmpl_ipv4 {
 struct pflow_tmpl_hdr h;
 struct pflow_tmpl_fspec src_ip;
 struct pflow_tmpl_fspec dest_ip;
 struct pflow_tmpl_fspec if_index_in;
 struct pflow_tmpl_fspec if_index_out;
 struct pflow_tmpl_fspec packets;
 struct pflow_tmpl_fspec octets;
 struct pflow_tmpl_fspec start;
 struct pflow_tmpl_fspec finish;
 struct pflow_tmpl_fspec src_port;
 struct pflow_tmpl_fspec dest_port;
 struct pflow_tmpl_fspec tos;
 struct pflow_tmpl_fspec protocol;
} __attribute__((__packed__));
struct pflow_ipfix_tmpl_ipv6 {
 struct pflow_tmpl_hdr h;
 struct pflow_tmpl_fspec src_ip;
 struct pflow_tmpl_fspec dest_ip;
 struct pflow_tmpl_fspec if_index_in;
 struct pflow_tmpl_fspec if_index_out;
 struct pflow_tmpl_fspec packets;
 struct pflow_tmpl_fspec octets;
 struct pflow_tmpl_fspec start;
 struct pflow_tmpl_fspec finish;
 struct pflow_tmpl_fspec src_port;
 struct pflow_tmpl_fspec dest_port;
 struct pflow_tmpl_fspec tos;
 struct pflow_tmpl_fspec protocol;
} __attribute__((__packed__));
struct pflow_ipfix_tmpl {
 struct pflow_set_header set_header;
 struct pflow_ipfix_tmpl_ipv4 ipv4_tmpl;
 struct pflow_ipfix_tmpl_ipv6 ipv6_tmpl;
} __attribute__((__packed__));
struct pflow_ipfix_flow4 {
 u_int32_t src_ip;
 u_int32_t dest_ip;
 u_int32_t if_index_in;
 u_int32_t if_index_out;
 u_int64_t flow_packets;
 u_int64_t flow_octets;
 int64_t flow_start;
 int64_t flow_finish;
 u_int16_t src_port;
 u_int16_t dest_port;
 u_int8_t tos;
 u_int8_t protocol;
} __attribute__((__packed__));
struct pflow_ipfix_flow6 {
 struct in6_addr src_ip;
 struct in6_addr dest_ip;
 u_int32_t if_index_in;
 u_int32_t if_index_out;
 u_int64_t flow_packets;
 u_int64_t flow_octets;
 int64_t flow_start;
 int64_t flow_finish;
 u_int16_t src_port;
 u_int16_t dest_port;
 u_int8_t tos;
 u_int8_t protocol;
} __attribute__((__packed__));
struct pflow_softc {
 struct ifnet sc_if;
 struct ifnet *sc_pflow_ifp;
 unsigned int sc_count;
 unsigned int sc_count4;
 unsigned int sc_count6;
 unsigned int sc_maxcount;
 unsigned int sc_maxcount4;
 unsigned int sc_maxcount6;
 u_int64_t sc_gcounter;
 u_int32_t sc_sequence;
 struct timeout sc_tmo;
 struct timeout sc_tmo6;
 struct timeout sc_tmo_tmpl;
 struct mbuf_queue sc_outputqueue;
 struct task sc_outputtask;
 struct socket *so;
 struct mbuf *send_nam;
 struct sockaddr *sc_flowsrc;
 struct sockaddr *sc_flowdst;
 u_char sc_send_templates;
 struct pflow_ipfix_tmpl sc_tmpl_ipfix;
 u_int8_t sc_version;
 struct mbuf *sc_mbuf;
 struct mbuf *sc_mbuf6;
 struct { struct pflow_softc *sle_next; } sc_next;
};
extern struct pflow_softc *pflowif;
struct pflow_header {
 u_int16_t version;
 u_int16_t count;
 u_int32_t uptime_ms;
 u_int32_t time_sec;
 u_int32_t time_nanosec;
 u_int32_t flow_sequence;
 u_int8_t engine_type;
 u_int8_t engine_id;
 u_int8_t reserved1;
 u_int8_t reserved2;
} __attribute__((__packed__));
struct pflow_v10_header {
 u_int16_t version;
 u_int16_t length;
 u_int32_t time_sec;
 u_int32_t flow_sequence;
 u_int32_t observation_dom;
} __attribute__((__packed__));
struct pflowstats {
 u_int64_t pflow_flows;
 u_int64_t pflow_packets;
 u_int64_t pflow_onomem;
 u_int64_t pflow_oerrors;
};
struct pflow_protos {
 const char *ppr_name;
 u_int8_t ppr_proto;
};
struct pflowreq {
 struct sockaddr_storage flowsrc;
 struct sockaddr_storage flowdst;
 u_int16_t addrmask;
 u_int8_t version;
};
int export_pflow(struct pf_state *);
int pflow_sysctl(int *, u_int, void *, size_t *, void *, size_t);
struct pfsync_header {
 u_int8_t version;
 u_int8_t _pad;
 u_int16_t len;
 u_int8_t pfcksum[16];
} __attribute__((__packed__));
struct pfsync_subheader {
 u_int8_t action;
 u_int8_t len;
 u_int16_t count;
} __attribute__((__packed__));
struct pfsync_clr {
 char ifname[16];
 u_int32_t creatorid;
} __attribute__((__packed__));
struct pfsync_ins_ack {
 u_int64_t id;
 u_int32_t creatorid;
} __attribute__((__packed__));
struct pfsync_upd_c {
 u_int64_t id;
 struct pfsync_state_peer src;
 struct pfsync_state_peer dst;
 u_int32_t creatorid;
 u_int32_t expire;
 u_int8_t timeout;
 u_int8_t state_flags;
 u_int8_t _pad[2];
} __attribute__((__packed__));
struct pfsync_upd_req {
 u_int64_t id;
 u_int32_t creatorid;
} __attribute__((__packed__));
struct pfsync_del_c {
 u_int64_t id;
 u_int32_t creatorid;
} __attribute__((__packed__));
struct pfsync_bus {
 u_int32_t creatorid;
 u_int32_t endtime;
 u_int8_t status;
 u_int8_t _pad[3];
} __attribute__((__packed__));
struct pfsync_tdb {
 u_int32_t spi;
 union sockaddr_union dst;
 u_int64_t rpl;
 u_int64_t cur_bytes;
 u_int8_t sproto;
 u_int8_t updates;
 u_int16_t rdomain;
} __attribute__((__packed__));
struct pfsyncstats {
 u_int64_t pfsyncs_ipackets;
 u_int64_t pfsyncs_ipackets6;
 u_int64_t pfsyncs_badif;
 u_int64_t pfsyncs_badttl;
 u_int64_t pfsyncs_hdrops;
 u_int64_t pfsyncs_badver;
 u_int64_t pfsyncs_badact;
 u_int64_t pfsyncs_badlen;
 u_int64_t pfsyncs_badauth;
 u_int64_t pfsyncs_stale;
 u_int64_t pfsyncs_badval;
 u_int64_t pfsyncs_badstate;
 u_int64_t pfsyncs_opackets;
 u_int64_t pfsyncs_opackets6;
 u_int64_t pfsyncs_onomem;
 u_int64_t pfsyncs_oerrors;
};
struct pfsyncreq {
 char pfsyncr_syncdev[16];
 struct in_addr pfsyncr_syncpeer;
 int pfsyncr_maxupdates;
 int pfsyncr_defer;
};
enum pfsync_counters {
 pfsyncs_ipackets,
 pfsyncs_ipackets6,
 pfsyncs_badif,
 pfsyncs_badttl,
 pfsyncs_hdrops,
 pfsyncs_badver,
 pfsyncs_badact,
 pfsyncs_badlen,
 pfsyncs_badauth,
 pfsyncs_stale,
 pfsyncs_badval,
 pfsyncs_badstate,
 pfsyncs_opackets,
 pfsyncs_opackets6,
 pfsyncs_onomem,
 pfsyncs_oerrors,
 pfsyncs_ncounters,
};
extern struct cpumem *pfsynccounters;
static inline void
pfsyncstat_inc(enum pfsync_counters c)
{
 counters_inc(pfsynccounters, c);
}
int pfsync_input(struct mbuf **, int *, int, int);
int pfsync_sysctl(int *, u_int, void *, size_t *,
       void *, size_t);
int pfsync_state_import(struct pfsync_state *, int);
void pfsync_state_export(struct pfsync_state *,
       struct pf_state *);
void pfsync_insert_state(struct pf_state *);
void pfsync_update_state(struct pf_state *);
void pfsync_delete_state(struct pf_state *);
void pfsync_clear_states(u_int32_t, const char *);
void pfsync_update_tdb(struct tdb *, int);
void pfsync_delete_tdb(struct tdb *);
int pfsync_defer(struct pf_state *, struct mbuf *);
int pfsync_up(void);
int pfsync_state_in_use(struct pf_state *);
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
struct pf_state_tree pf_statetbl;
struct pf_queuehead pf_queues[2];
struct pf_queuehead *pf_queues_active;
struct pf_queuehead *pf_queues_inactive;
struct pf_status pf_status;
int pf_hdr_limit = 20;
SHA2_CTX pf_tcp_secret_ctx;
u_char pf_tcp_secret[16];
int pf_tcp_secret_init;
int pf_tcp_iss_off;
int pf_npurge;
struct task pf_purge_task = {{ ((void *)0), ((void *)0) }, (pf_purge), (&pf_npurge), 0 };
struct timeout pf_purge_to = { { ((void *)0), ((void *)0) }, (pf_purge_timeout), (((void *)0)), 0, 4 };
enum pf_test_status {
 PF_TEST_FAIL = -1,
 PF_TEST_OK,
 PF_TEST_QUICK
};
struct pf_test_ctx {
 enum pf_test_status test_status;
 struct pf_pdesc *pd;
 struct pf_rule_actions act;
 u_int8_t icmpcode;
 u_int8_t icmptype;
 int icmp_dir;
 int state_icmp;
 int tag;
 u_short reason;
 struct pf_rule_item *ri;
 struct pf_src_node *sns[PF_SN_MAX];
 struct pf_rule_slist rules;
 struct pf_rule *nr;
 struct pf_rule **rm;
 struct pf_rule *a;
 struct pf_rule **am;
 struct pf_ruleset **rsm;
 struct pf_ruleset *arsm;
 struct pf_ruleset *aruleset;
 struct tcphdr *th;
 int depth;
};
struct pool pf_src_tree_pl, pf_rule_pl, pf_queue_pl;
struct pool pf_state_pl, pf_state_key_pl, pf_state_item_pl;
struct pool pf_rule_item_pl, pf_sn_item_pl;
void pf_init_threshold(struct pf_threshold *, u_int32_t,
       u_int32_t);
void pf_add_threshold(struct pf_threshold *);
int pf_check_threshold(struct pf_threshold *);
int pf_check_tcp_cksum(struct mbuf *, int, int,
       sa_family_t);
static __inline void pf_cksum_fixup(u_int16_t *, u_int16_t, u_int16_t,
       u_int8_t);
void pf_cksum_fixup_a(u_int16_t *, const struct pf_addr *,
       const struct pf_addr *, sa_family_t, u_int8_t);
int pf_modulate_sack(struct pf_pdesc *,
       struct pf_state_peer *);
int pf_icmp_mapping(struct pf_pdesc *, u_int8_t, int *,
       u_int16_t *, u_int16_t *);
int pf_change_icmp_af(struct mbuf *, int,
       struct pf_pdesc *, struct pf_pdesc *,
       struct pf_addr *, struct pf_addr *, sa_family_t,
       sa_family_t);
int pf_translate_a(struct pf_pdesc *, struct pf_addr *,
       struct pf_addr *);
void pf_translate_icmp(struct pf_pdesc *, struct pf_addr *,
       u_int16_t *, struct pf_addr *, struct pf_addr *,
       u_int16_t);
int pf_translate_icmp_af(struct pf_pdesc*, int, void *);
void pf_send_icmp(struct mbuf *, u_int8_t, u_int8_t,
       sa_family_t, struct pf_rule *, u_int);
void pf_detach_state(struct pf_state *);
void pf_state_key_detach(struct pf_state *, int);
u_int32_t pf_tcp_iss(struct pf_pdesc *);
void pf_rule_to_actions(struct pf_rule *,
       struct pf_rule_actions *);
int pf_test_rule(struct pf_pdesc *, struct pf_rule **,
       struct pf_state **, struct pf_rule **,
       struct pf_ruleset **, u_short *);
static __inline int pf_create_state(struct pf_pdesc *, struct pf_rule *,
       struct pf_rule *, struct pf_rule *,
       struct pf_state_key **, struct pf_state_key **,
       int *, struct pf_state **, int,
       struct pf_rule_slist *, struct pf_rule_actions *,
       struct pf_src_node *[]);
static __inline int pf_state_key_addr_setup(struct pf_pdesc *, void *,
       int, struct pf_addr *, int, struct pf_addr *,
       int, int);
int pf_state_key_setup(struct pf_pdesc *, struct
       pf_state_key **, struct pf_state_key **, int);
int pf_tcp_track_full(struct pf_pdesc *,
       struct pf_state **, u_short *, int *, int);
int pf_tcp_track_sloppy(struct pf_pdesc *,
       struct pf_state **, u_short *);
static __inline int pf_synproxy(struct pf_pdesc *, struct pf_state **,
       u_short *);
int pf_test_state(struct pf_pdesc *, struct pf_state **,
       u_short *);
int pf_icmp_state_lookup(struct pf_pdesc *,
       struct pf_state_key_cmp *, struct pf_state **,
       u_int16_t, u_int16_t, int, int *, int, int);
int pf_test_state_icmp(struct pf_pdesc *,
       struct pf_state **, u_short *);
u_int16_t pf_calc_mss(struct pf_addr *, sa_family_t, int,
       u_int16_t);
static __inline int pf_set_rt_ifp(struct pf_state *, struct pf_addr *,
       sa_family_t);
struct pf_divert *pf_get_divert(struct mbuf *);
int pf_walk_header(struct pf_pdesc *, struct ip *,
       u_short *);
int pf_walk_option6(struct pf_pdesc *, struct ip6_hdr *,
       int, int, u_short *);
int pf_walk_header6(struct pf_pdesc *, struct ip6_hdr *,
       u_short *);
void pf_print_state_parts(struct pf_state *,
       struct pf_state_key *, struct pf_state_key *);
int pf_addr_wrap_neq(struct pf_addr_wrap *,
       struct pf_addr_wrap *);
int pf_compare_state_keys(struct pf_state_key *,
       struct pf_state_key *, struct pfi_kif *, u_int);
struct pf_state *pf_find_state(struct pfi_kif *,
       struct pf_state_key_cmp *, u_int, struct mbuf *);
int pf_src_connlimit(struct pf_state **);
int pf_match_rcvif(struct mbuf *, struct pf_rule *);
int pf_step_into_anchor(struct pf_test_ctx *,
       struct pf_rule *);
int pf_match_rule(struct pf_test_ctx *,
       struct pf_ruleset *);
void pf_counters_inc(int, struct pf_pdesc *,
       struct pf_state *, struct pf_rule *,
       struct pf_rule *);
void pf_state_key_link(struct pf_state_key *,
       struct pf_state_key *);
void pf_inpcb_unlink_state_key(struct inpcb *);
void pf_state_key_unlink_reverse(struct pf_state_key *);
void pf_log_matches(struct pf_pdesc *, struct pf_rule *,
       struct pf_rule *, struct pf_ruleset *,
       struct pf_rule_slist *);
extern struct pool pfr_ktable_pl;
extern struct pool pfr_kentry_pl;
struct pf_pool_limit pf_pool_limits[PF_LIMIT_MAX] = {
 { &pf_state_pl, 10000, 10000 },
 { &pf_src_tree_pl, 10000, 10000 },
 { &pf_frent_pl, ((16 * 1024) / 16), ((16 * 1024) / 16) },
 { &pfr_ktable_pl, 1000, 1000 },
 { &pfr_kentry_pl, 200000, 200000 }
};
static __inline int pf_src_compare(struct pf_src_node *, struct pf_src_node *);
static __inline int pf_state_compare_key(struct pf_state_key *,
 struct pf_state_key *);
static __inline int pf_state_compare_id(struct pf_state *,
 struct pf_state *);
static __inline void pf_cksum_uncover(u_int16_t *, u_int16_t, u_int8_t);
static __inline void pf_cksum_cover(u_int16_t *, u_int16_t, u_int8_t);
static __inline void pf_set_protostate(struct pf_state *, int, u_int8_t);
struct pf_src_tree tree_src_tracking;
struct pf_state_tree_id tree_id;
struct pf_state_queue state_list;
 void pf_src_tree_RB_INSERT_COLOR(struct pf_src_tree *head, struct pf_src_node *elm) { struct pf_src_node *parent, *gparent, *tmp; while ((parent = (elm)->entry.rbe_parent) && (parent)->entry.rbe_color == 1) { gparent = (parent)->entry.rbe_parent; if (parent == (gparent)->entry.rbe_left) { tmp = (gparent)->entry.rbe_right; if (tmp && (tmp)->entry.rbe_color == 1) { (tmp)->entry.rbe_color = 0; do { (parent)->entry.rbe_color = 0; (gparent)->entry.rbe_color = 1; } while (0); elm = gparent; continue; } if ((parent)->entry.rbe_right == elm) { do { (tmp) = (parent)->entry.rbe_right; if (((parent)->entry.rbe_right = (tmp)->entry.rbe_left)) { ((tmp)->entry.rbe_left)->entry.rbe_parent = (parent); } do {} while (0); if (((tmp)->entry.rbe_parent = (parent)->entry.rbe_parent)) { if ((parent) == ((parent)->entry.rbe_parent)->entry.rbe_left) ((parent)->entry.rbe_parent)->entry.rbe_left = (tmp); else ((parent)->entry.rbe_parent)->entry.rbe_right = (tmp); } else (head)->rbh_root = (tmp); (tmp)->entry.rbe_left = (parent); (parent)->entry.rbe_parent = (tmp); do {} while (0); if (((tmp)->entry.rbe_parent)) do {} while (0); } while (0); tmp = parent; parent = elm; elm = tmp; } do { (parent)->entry.rbe_color = 0; (gparent)->entry.rbe_color = 1; } while (0); do { (tmp) = (gparent)->entry.rbe_left; if (((gparent)->entry.rbe_left = (tmp)->entry.rbe_right)) { ((tmp)->entry.rbe_right)->entry.rbe_parent = (gparent); } do {} while (0); if (((tmp)->entry.rbe_parent = (gparent)->entry.rbe_parent)) { if ((gparent) == ((gparent)->entry.rbe_parent)->entry.rbe_left) ((gparent)->entry.rbe_parent)->entry.rbe_left = (tmp); else ((gparent)->entry.rbe_parent)->entry.rbe_right = (tmp); } else (head)->rbh_root = (tmp); (tmp)->entry.rbe_right = (gparent); (gparent)->entry.rbe_parent = (tmp); do {} while (0); if (((tmp)->entry.rbe_parent)) do {} while (0); } while (0); } else { tmp = (gparent)->entry.rbe_left; if (tmp && (tmp)->entry.rbe_color == 1) { (tmp)->entry.rbe_color = 0; do { (parent)->entry.rbe_color = 0; (gparent)->entry.rbe_color = 1; } while (0); elm = gparent; continue; } if ((parent)->entry.rbe_left == elm) { do { (tmp) = (parent)->entry.rbe_left; if (((parent)->entry.rbe_left = (tmp)->entry.rbe_right)) { ((tmp)->entry.rbe_right)->entry.rbe_parent = (parent); } do {} while (0); if (((tmp)->entry.rbe_parent = (parent)->entry.rbe_parent)) { if ((parent) == ((parent)->entry.rbe_parent)->entry.rbe_left) ((parent)->entry.rbe_parent)->entry.rbe_left = (tmp); else ((parent)->entry.rbe_parent)->entry.rbe_right = (tmp); } else (head)->rbh_root = (tmp); (tmp)->entry.rbe_right = (parent); (parent)->entry.rbe_parent = (tmp); do {} while (0); if (((tmp)->entry.rbe_parent)) do {} while (0); } while (0); tmp = parent; parent = elm; elm = tmp; } do { (parent)->entry.rbe_color = 0; (gparent)->entry.rbe_color = 1; } while (0); do { (tmp) = (gparent)->entry.rbe_right; if (((gparent)->entry.rbe_right = (tmp)->entry.rbe_left)) { ((tmp)->entry.rbe_left)->entry.rbe_parent = (gparent); } do {} while (0); if (((tmp)->entry.rbe_parent = (gparent)->entry.rbe_parent)) { if ((gparent) == ((gparent)->entry.rbe_parent)->entry.rbe_left) ((gparent)->entry.rbe_parent)->entry.rbe_left = (tmp); else ((gparent)->entry.rbe_parent)->entry.rbe_right = (tmp); } else (head)->rbh_root = (tmp); (tmp)->entry.rbe_left = (gparent); (gparent)->entry.rbe_parent = (tmp); do {} while (0); if (((tmp)->entry.rbe_parent)) do {} while (0); } while (0); } } (head->rbh_root)->entry.rbe_color = 0; } void pf_src_tree_RB_REMOVE_COLOR(struct pf_src_tree *head, struct pf_src_node *parent, struct pf_src_node *elm) { struct pf_src_node *tmp; while ((elm == ((void *)0) || (elm)->entry.rbe_color == 0) && elm != (head)->rbh_root) { if ((parent)->entry.rbe_left == elm) { tmp = (parent)->entry.rbe_right; if ((tmp)->entry.rbe_color == 1) { do { (tmp)->entry.rbe_color = 0; (parent)->entry.rbe_color = 1; } while (0); do { (tmp) = (parent)->entry.rbe_right; if (((parent)->entry.rbe_right = (tmp)->entry.rbe_left)) { ((tmp)->entry.rbe_left)->entry.rbe_parent = (parent); } do {} while (0); if (((tmp)->entry.rbe_parent = (parent)->entry.rbe_parent)) { if ((parent) == ((parent)->entry.rbe_parent)->entry.rbe_left) ((parent)->entry.rbe_parent)->entry.rbe_left = (tmp); else ((parent)->entry.rbe_parent)->entry.rbe_right = (tmp); } else (head)->rbh_root = (tmp); (tmp)->entry.rbe_left = (parent); (parent)->entry.rbe_parent = (tmp); do {} while (0); if (((tmp)->entry.rbe_parent)) do {} while (0); } while (0); tmp = (parent)->entry.rbe_right; } if (((tmp)->entry.rbe_left == ((void *)0) || ((tmp)->entry.rbe_left)->entry.rbe_color == 0) && ((tmp)->entry.rbe_right == ((void *)0) || ((tmp)->entry.rbe_right)->entry.rbe_color == 0)) { (tmp)->entry.rbe_color = 1; elm = parent; parent = (elm)->entry.rbe_parent; } else { if ((tmp)->entry.rbe_right == ((void *)0) || ((tmp)->entry.rbe_right)->entry.rbe_color == 0) { struct pf_src_node *oleft; if ((oleft = (tmp)->entry.rbe_left)) (oleft)->entry.rbe_color = 0; (tmp)->entry.rbe_color = 1; do { (oleft) = (tmp)->entry.rbe_left; if (((tmp)->entry.rbe_left = (oleft)->entry.rbe_right)) { ((oleft)->entry.rbe_right)->entry.rbe_parent = (tmp); } do {} while (0); if (((oleft)->entry.rbe_parent = (tmp)->entry.rbe_parent)) { if ((tmp) == ((tmp)->entry.rbe_parent)->entry.rbe_left) ((tmp)->entry.rbe_parent)->entry.rbe_left = (oleft); else ((tmp)->entry.rbe_parent)->entry.rbe_right = (oleft); } else (head)->rbh_root = (oleft); (oleft)->entry.rbe_right = (tmp); (tmp)->entry.rbe_parent = (oleft); do {} while (0); if (((oleft)->entry.rbe_parent)) do {} while (0); } while (0); tmp = (parent)->entry.rbe_right; } (tmp)->entry.rbe_color = (parent)->entry.rbe_color; (parent)->entry.rbe_color = 0; if ((tmp)->entry.rbe_right) ((tmp)->entry.rbe_right)->entry.rbe_color = 0; do { (tmp) = (parent)->entry.rbe_right; if (((parent)->entry.rbe_right = (tmp)->entry.rbe_left)) { ((tmp)->entry.rbe_left)->entry.rbe_parent = (parent); } do {} while (0); if (((tmp)->entry.rbe_parent = (parent)->entry.rbe_parent)) { if ((parent) == ((parent)->entry.rbe_parent)->entry.rbe_left) ((parent)->entry.rbe_parent)->entry.rbe_left = (tmp); else ((parent)->entry.rbe_parent)->entry.rbe_right = (tmp); } else (head)->rbh_root = (tmp); (tmp)->entry.rbe_left = (parent); (parent)->entry.rbe_parent = (tmp); do {} while (0); if (((tmp)->entry.rbe_parent)) do {} while (0); } while (0); elm = (head)->rbh_root; break; } } else { tmp = (parent)->entry.rbe_left; if ((tmp)->entry.rbe_color == 1) { do { (tmp)->entry.rbe_color = 0; (parent)->entry.rbe_color = 1; } while (0); do { (tmp) = (parent)->entry.rbe_left; if (((parent)->entry.rbe_left = (tmp)->entry.rbe_right)) { ((tmp)->entry.rbe_right)->entry.rbe_parent = (parent); } do {} while (0); if (((tmp)->entry.rbe_parent = (parent)->entry.rbe_parent)) { if ((parent) == ((parent)->entry.rbe_parent)->entry.rbe_left) ((parent)->entry.rbe_parent)->entry.rbe_left = (tmp); else ((parent)->entry.rbe_parent)->entry.rbe_right = (tmp); } else (head)->rbh_root = (tmp); (tmp)->entry.rbe_right = (parent); (parent)->entry.rbe_parent = (tmp); do {} while (0); if (((tmp)->entry.rbe_parent)) do {} while (0); } while (0); tmp = (parent)->entry.rbe_left; } if (((tmp)->entry.rbe_left == ((void *)0) || ((tmp)->entry.rbe_left)->entry.rbe_color == 0) && ((tmp)->entry.rbe_right == ((void *)0) || ((tmp)->entry.rbe_right)->entry.rbe_color == 0)) { (tmp)->entry.rbe_color = 1; elm = parent; parent = (elm)->entry.rbe_parent; } else { if ((tmp)->entry.rbe_left == ((void *)0) || ((tmp)->entry.rbe_left)->entry.rbe_color == 0) { struct pf_src_node *oright; if ((oright = (tmp)->entry.rbe_right)) (oright)->entry.rbe_color = 0; (tmp)->entry.rbe_color = 1; do { (oright) = (tmp)->entry.rbe_right; if (((tmp)->entry.rbe_right = (oright)->entry.rbe_left)) { ((oright)->entry.rbe_left)->entry.rbe_parent = (tmp); } do {} while (0); if (((oright)->entry.rbe_parent = (tmp)->entry.rbe_parent)) { if ((tmp) == ((tmp)->entry.rbe_parent)->entry.rbe_left) ((tmp)->entry.rbe_parent)->entry.rbe_left = (oright); else ((tmp)->entry.rbe_parent)->entry.rbe_right = (oright); } else (head)->rbh_root = (oright); (oright)->entry.rbe_left = (tmp); (tmp)->entry.rbe_parent = (oright); do {} while (0); if (((oright)->entry.rbe_parent)) do {} while (0); } while (0); tmp = (parent)->entry.rbe_left; } (tmp)->entry.rbe_color = (parent)->entry.rbe_color; (parent)->entry.rbe_color = 0; if ((tmp)->entry.rbe_left) ((tmp)->entry.rbe_left)->entry.rbe_color = 0; do { (tmp) = (parent)->entry.rbe_left; if (((parent)->entry.rbe_left = (tmp)->entry.rbe_right)) { ((tmp)->entry.rbe_right)->entry.rbe_parent = (parent); } do {} while (0); if (((tmp)->entry.rbe_parent = (parent)->entry.rbe_parent)) { if ((parent) == ((parent)->entry.rbe_parent)->entry.rbe_left) ((parent)->entry.rbe_parent)->entry.rbe_left = (tmp); else ((parent)->entry.rbe_parent)->entry.rbe_right = (tmp); } else (head)->rbh_root = (tmp); (tmp)->entry.rbe_right = (parent); (parent)->entry.rbe_parent = (tmp); do {} while (0); if (((tmp)->entry.rbe_parent)) do {} while (0); } while (0); elm = (head)->rbh_root; break; } } } if (elm) (elm)->entry.rbe_color = 0; } struct pf_src_node * pf_src_tree_RB_REMOVE(struct pf_src_tree *head, struct pf_src_node *elm) { struct pf_src_node *child, *parent, *old = elm; int color; if ((elm)->entry.rbe_left == ((void *)0)) child = (elm)->entry.rbe_right; else if ((elm)->entry.rbe_right == ((void *)0)) child = (elm)->entry.rbe_left; else { struct pf_src_node *left; elm = (elm)->entry.rbe_right; while ((left = (elm)->entry.rbe_left)) elm = left; child = (elm)->entry.rbe_right; parent = (elm)->entry.rbe_parent; color = (elm)->entry.rbe_color; if (child) (child)->entry.rbe_parent = parent; if (parent) { if ((parent)->entry.rbe_left == elm) (parent)->entry.rbe_left = child; else (parent)->entry.rbe_right = child; do {} while (0); } else (head)->rbh_root = child; if ((elm)->entry.rbe_parent == old) parent = elm; (elm)->entry = (old)->entry; if ((old)->entry.rbe_parent) { if (((old)->entry.rbe_parent)->entry.rbe_left == old) ((old)->entry.rbe_parent)->entry.rbe_left = elm; else ((old)->entry.rbe_parent)->entry.rbe_right = elm; do {} while (0); } else (head)->rbh_root = elm; ((old)->entry.rbe_left)->entry.rbe_parent = elm; if ((old)->entry.rbe_right) ((old)->entry.rbe_right)->entry.rbe_parent = elm; if (parent) { left = parent; do { do {} while (0); } while ((left = (left)->entry.rbe_parent)); } goto color; } parent = (elm)->entry.rbe_parent; color = (elm)->entry.rbe_color; if (child) (child)->entry.rbe_parent = parent; if (parent) { if ((parent)->entry.rbe_left == elm) (parent)->entry.rbe_left = child; else (parent)->entry.rbe_right = child; do {} while (0); } else (head)->rbh_root = child; color: if (color == 0) pf_src_tree_RB_REMOVE_COLOR(head, parent, child); return (old); } struct pf_src_node * pf_src_tree_RB_INSERT(struct pf_src_tree *head, struct pf_src_node *elm) { struct pf_src_node *tmp; struct pf_src_node *parent = ((void *)0); int comp = 0; tmp = (head)->rbh_root; while (tmp) { parent = tmp; comp = (pf_src_compare)(elm, parent); if (comp < 0) tmp = (tmp)->entry.rbe_left; else if (comp > 0) tmp = (tmp)->entry.rbe_right; else return (tmp); } do { (elm)->entry.rbe_parent = parent; (elm)->entry.rbe_left = (elm)->entry.rbe_right = ((void *)0); (elm)->entry.rbe_color = 1; } while (0); if (parent != ((void *)0)) { if (comp < 0) (parent)->entry.rbe_left = elm; else (parent)->entry.rbe_right = elm; do {} while (0); } else (head)->rbh_root = elm; pf_src_tree_RB_INSERT_COLOR(head, elm); return (((void *)0)); } struct pf_src_node * pf_src_tree_RB_FIND(struct pf_src_tree *head, struct pf_src_node *elm) { struct pf_src_node *tmp = (head)->rbh_root; int comp; while (tmp) { comp = pf_src_compare(elm, tmp); if (comp < 0) tmp = (tmp)->entry.rbe_left; else if (comp > 0) tmp = (tmp)->entry.rbe_right; else return (tmp); } return (((void *)0)); } struct pf_src_node * pf_src_tree_RB_NFIND(struct pf_src_tree *head, struct pf_src_node *elm) { struct pf_src_node *tmp = (head)->rbh_root; struct pf_src_node *res = ((void *)0); int comp; while (tmp) { comp = pf_src_compare(elm, tmp); if (comp < 0) { res = tmp; tmp = (tmp)->entry.rbe_left; } else if (comp > 0) tmp = (tmp)->entry.rbe_right; else return (tmp); } return (res); } struct pf_src_node * pf_src_tree_RB_NEXT(struct pf_src_node *elm) { if ((elm)->entry.rbe_right) { elm = (elm)->entry.rbe_right; while ((elm)->entry.rbe_left) elm = (elm)->entry.rbe_left; } else { if ((elm)->entry.rbe_parent && (elm == ((elm)->entry.rbe_parent)->entry.rbe_left)) elm = (elm)->entry.rbe_parent; else { while ((elm)->entry.rbe_parent && (elm == ((elm)->entry.rbe_parent)->entry.rbe_right)) elm = (elm)->entry.rbe_parent; elm = (elm)->entry.rbe_parent; } } return (elm); } struct pf_src_node * pf_src_tree_RB_PREV(struct pf_src_node *elm) { if ((elm)->entry.rbe_left) { elm = (elm)->entry.rbe_left; while ((elm)->entry.rbe_right) elm = (elm)->entry.rbe_right; } else { if ((elm)->entry.rbe_parent && (elm == ((elm)->entry.rbe_parent)->entry.rbe_right)) elm = (elm)->entry.rbe_parent; else { while ((elm)->entry.rbe_parent && (elm == ((elm)->entry.rbe_parent)->entry.rbe_left)) elm = (elm)->entry.rbe_parent; elm = (elm)->entry.rbe_parent; } } return (elm); } struct pf_src_node * pf_src_tree_RB_MINMAX(struct pf_src_tree *head, int val) { struct pf_src_node *tmp = (head)->rbh_root; struct pf_src_node *parent = ((void *)0); while (tmp) { parent = tmp; if (val < 0) tmp = (tmp)->entry.rbe_left; else tmp = (tmp)->entry.rbe_right; } return (parent); };
 void pf_state_tree_RB_INSERT_COLOR(struct pf_state_tree *head, struct pf_state_key *elm) { struct pf_state_key *parent, *gparent, *tmp; while ((parent = (elm)->entry.rbe_parent) && (parent)->entry.rbe_color == 1) { gparent = (parent)->entry.rbe_parent; if (parent == (gparent)->entry.rbe_left) { tmp = (gparent)->entry.rbe_right; if (tmp && (tmp)->entry.rbe_color == 1) { (tmp)->entry.rbe_color = 0; do { (parent)->entry.rbe_color = 0; (gparent)->entry.rbe_color = 1; } while (0); elm = gparent; continue; } if ((parent)->entry.rbe_right == elm) { do { (tmp) = (parent)->entry.rbe_right; if (((parent)->entry.rbe_right = (tmp)->entry.rbe_left)) { ((tmp)->entry.rbe_left)->entry.rbe_parent = (parent); } do {} while (0); if (((tmp)->entry.rbe_parent = (parent)->entry.rbe_parent)) { if ((parent) == ((parent)->entry.rbe_parent)->entry.rbe_left) ((parent)->entry.rbe_parent)->entry.rbe_left = (tmp); else ((parent)->entry.rbe_parent)->entry.rbe_right = (tmp); } else (head)->rbh_root = (tmp); (tmp)->entry.rbe_left = (parent); (parent)->entry.rbe_parent = (tmp); do {} while (0); if (((tmp)->entry.rbe_parent)) do {} while (0); } while (0); tmp = parent; parent = elm; elm = tmp; } do { (parent)->entry.rbe_color = 0; (gparent)->entry.rbe_color = 1; } while (0); do { (tmp) = (gparent)->entry.rbe_left; if (((gparent)->entry.rbe_left = (tmp)->entry.rbe_right)) { ((tmp)->entry.rbe_right)->entry.rbe_parent = (gparent); } do {} while (0); if (((tmp)->entry.rbe_parent = (gparent)->entry.rbe_parent)) { if ((gparent) == ((gparent)->entry.rbe_parent)->entry.rbe_left) ((gparent)->entry.rbe_parent)->entry.rbe_left = (tmp); else ((gparent)->entry.rbe_parent)->entry.rbe_right = (tmp); } else (head)->rbh_root = (tmp); (tmp)->entry.rbe_right = (gparent); (gparent)->entry.rbe_parent = (tmp); do {} while (0); if (((tmp)->entry.rbe_parent)) do {} while (0); } while (0); } else { tmp = (gparent)->entry.rbe_left; if (tmp && (tmp)->entry.rbe_color == 1) { (tmp)->entry.rbe_color = 0; do { (parent)->entry.rbe_color = 0; (gparent)->entry.rbe_color = 1; } while (0); elm = gparent; continue; } if ((parent)->entry.rbe_left == elm) { do { (tmp) = (parent)->entry.rbe_left; if (((parent)->entry.rbe_left = (tmp)->entry.rbe_right)) { ((tmp)->entry.rbe_right)->entry.rbe_parent = (parent); } do {} while (0); if (((tmp)->entry.rbe_parent = (parent)->entry.rbe_parent)) { if ((parent) == ((parent)->entry.rbe_parent)->entry.rbe_left) ((parent)->entry.rbe_parent)->entry.rbe_left = (tmp); else ((parent)->entry.rbe_parent)->entry.rbe_right = (tmp); } else (head)->rbh_root = (tmp); (tmp)->entry.rbe_right = (parent); (parent)->entry.rbe_parent = (tmp); do {} while (0); if (((tmp)->entry.rbe_parent)) do {} while (0); } while (0); tmp = parent; parent = elm; elm = tmp; } do { (parent)->entry.rbe_color = 0; (gparent)->entry.rbe_color = 1; } while (0); do { (tmp) = (gparent)->entry.rbe_right; if (((gparent)->entry.rbe_right = (tmp)->entry.rbe_left)) { ((tmp)->entry.rbe_left)->entry.rbe_parent = (gparent); } do {} while (0); if (((tmp)->entry.rbe_parent = (gparent)->entry.rbe_parent)) { if ((gparent) == ((gparent)->entry.rbe_parent)->entry.rbe_left) ((gparent)->entry.rbe_parent)->entry.rbe_left = (tmp); else ((gparent)->entry.rbe_parent)->entry.rbe_right = (tmp); } else (head)->rbh_root = (tmp); (tmp)->entry.rbe_left = (gparent); (gparent)->entry.rbe_parent = (tmp); do {} while (0); if (((tmp)->entry.rbe_parent)) do {} while (0); } while (0); } } (head->rbh_root)->entry.rbe_color = 0; } void pf_state_tree_RB_REMOVE_COLOR(struct pf_state_tree *head, struct pf_state_key *parent, struct pf_state_key *elm) { struct pf_state_key *tmp; while ((elm == ((void *)0) || (elm)->entry.rbe_color == 0) && elm != (head)->rbh_root) { if ((parent)->entry.rbe_left == elm) { tmp = (parent)->entry.rbe_right; if ((tmp)->entry.rbe_color == 1) { do { (tmp)->entry.rbe_color = 0; (parent)->entry.rbe_color = 1; } while (0); do { (tmp) = (parent)->entry.rbe_right; if (((parent)->entry.rbe_right = (tmp)->entry.rbe_left)) { ((tmp)->entry.rbe_left)->entry.rbe_parent = (parent); } do {} while (0); if (((tmp)->entry.rbe_parent = (parent)->entry.rbe_parent)) { if ((parent) == ((parent)->entry.rbe_parent)->entry.rbe_left) ((parent)->entry.rbe_parent)->entry.rbe_left = (tmp); else ((parent)->entry.rbe_parent)->entry.rbe_right = (tmp); } else (head)->rbh_root = (tmp); (tmp)->entry.rbe_left = (parent); (parent)->entry.rbe_parent = (tmp); do {} while (0); if (((tmp)->entry.rbe_parent)) do {} while (0); } while (0); tmp = (parent)->entry.rbe_right; } if (((tmp)->entry.rbe_left == ((void *)0) || ((tmp)->entry.rbe_left)->entry.rbe_color == 0) && ((tmp)->entry.rbe_right == ((void *)0) || ((tmp)->entry.rbe_right)->entry.rbe_color == 0)) { (tmp)->entry.rbe_color = 1; elm = parent; parent = (elm)->entry.rbe_parent; } else { if ((tmp)->entry.rbe_right == ((void *)0) || ((tmp)->entry.rbe_right)->entry.rbe_color == 0) { struct pf_state_key *oleft; if ((oleft = (tmp)->entry.rbe_left)) (oleft)->entry.rbe_color = 0; (tmp)->entry.rbe_color = 1; do { (oleft) = (tmp)->entry.rbe_left; if (((tmp)->entry.rbe_left = (oleft)->entry.rbe_right)) { ((oleft)->entry.rbe_right)->entry.rbe_parent = (tmp); } do {} while (0); if (((oleft)->entry.rbe_parent = (tmp)->entry.rbe_parent)) { if ((tmp) == ((tmp)->entry.rbe_parent)->entry.rbe_left) ((tmp)->entry.rbe_parent)->entry.rbe_left = (oleft); else ((tmp)->entry.rbe_parent)->entry.rbe_right = (oleft); } else (head)->rbh_root = (oleft); (oleft)->entry.rbe_right = (tmp); (tmp)->entry.rbe_parent = (oleft); do {} while (0); if (((oleft)->entry.rbe_parent)) do {} while (0); } while (0); tmp = (parent)->entry.rbe_right; } (tmp)->entry.rbe_color = (parent)->entry.rbe_color; (parent)->entry.rbe_color = 0; if ((tmp)->entry.rbe_right) ((tmp)->entry.rbe_right)->entry.rbe_color = 0; do { (tmp) = (parent)->entry.rbe_right; if (((parent)->entry.rbe_right = (tmp)->entry.rbe_left)) { ((tmp)->entry.rbe_left)->entry.rbe_parent = (parent); } do {} while (0); if (((tmp)->entry.rbe_parent = (parent)->entry.rbe_parent)) { if ((parent) == ((parent)->entry.rbe_parent)->entry.rbe_left) ((parent)->entry.rbe_parent)->entry.rbe_left = (tmp); else ((parent)->entry.rbe_parent)->entry.rbe_right = (tmp); } else (head)->rbh_root = (tmp); (tmp)->entry.rbe_left = (parent); (parent)->entry.rbe_parent = (tmp); do {} while (0); if (((tmp)->entry.rbe_parent)) do {} while (0); } while (0); elm = (head)->rbh_root; break; } } else { tmp = (parent)->entry.rbe_left; if ((tmp)->entry.rbe_color == 1) { do { (tmp)->entry.rbe_color = 0; (parent)->entry.rbe_color = 1; } while (0); do { (tmp) = (parent)->entry.rbe_left; if (((parent)->entry.rbe_left = (tmp)->entry.rbe_right)) { ((tmp)->entry.rbe_right)->entry.rbe_parent = (parent); } do {} while (0); if (((tmp)->entry.rbe_parent = (parent)->entry.rbe_parent)) { if ((parent) == ((parent)->entry.rbe_parent)->entry.rbe_left) ((parent)->entry.rbe_parent)->entry.rbe_left = (tmp); else ((parent)->entry.rbe_parent)->entry.rbe_right = (tmp); } else (head)->rbh_root = (tmp); (tmp)->entry.rbe_right = (parent); (parent)->entry.rbe_parent = (tmp); do {} while (0); if (((tmp)->entry.rbe_parent)) do {} while (0); } while (0); tmp = (parent)->entry.rbe_left; } if (((tmp)->entry.rbe_left == ((void *)0) || ((tmp)->entry.rbe_left)->entry.rbe_color == 0) && ((tmp)->entry.rbe_right == ((void *)0) || ((tmp)->entry.rbe_right)->entry.rbe_color == 0)) { (tmp)->entry.rbe_color = 1; elm = parent; parent = (elm)->entry.rbe_parent; } else { if ((tmp)->entry.rbe_left == ((void *)0) || ((tmp)->entry.rbe_left)->entry.rbe_color == 0) { struct pf_state_key *oright; if ((oright = (tmp)->entry.rbe_right)) (oright)->entry.rbe_color = 0; (tmp)->entry.rbe_color = 1; do { (oright) = (tmp)->entry.rbe_right; if (((tmp)->entry.rbe_right = (oright)->entry.rbe_left)) { ((oright)->entry.rbe_left)->entry.rbe_parent = (tmp); } do {} while (0); if (((oright)->entry.rbe_parent = (tmp)->entry.rbe_parent)) { if ((tmp) == ((tmp)->entry.rbe_parent)->entry.rbe_left) ((tmp)->entry.rbe_parent)->entry.rbe_left = (oright); else ((tmp)->entry.rbe_parent)->entry.rbe_right = (oright); } else (head)->rbh_root = (oright); (oright)->entry.rbe_left = (tmp); (tmp)->entry.rbe_parent = (oright); do {} while (0); if (((oright)->entry.rbe_parent)) do {} while (0); } while (0); tmp = (parent)->entry.rbe_left; } (tmp)->entry.rbe_color = (parent)->entry.rbe_color; (parent)->entry.rbe_color = 0; if ((tmp)->entry.rbe_left) ((tmp)->entry.rbe_left)->entry.rbe_color = 0; do { (tmp) = (parent)->entry.rbe_left; if (((parent)->entry.rbe_left = (tmp)->entry.rbe_right)) { ((tmp)->entry.rbe_right)->entry.rbe_parent = (parent); } do {} while (0); if (((tmp)->entry.rbe_parent = (parent)->entry.rbe_parent)) { if ((parent) == ((parent)->entry.rbe_parent)->entry.rbe_left) ((parent)->entry.rbe_parent)->entry.rbe_left = (tmp); else ((parent)->entry.rbe_parent)->entry.rbe_right = (tmp); } else (head)->rbh_root = (tmp); (tmp)->entry.rbe_right = (parent); (parent)->entry.rbe_parent = (tmp); do {} while (0); if (((tmp)->entry.rbe_parent)) do {} while (0); } while (0); elm = (head)->rbh_root; break; } } } if (elm) (elm)->entry.rbe_color = 0; } struct pf_state_key * pf_state_tree_RB_REMOVE(struct pf_state_tree *head, struct pf_state_key *elm) { struct pf_state_key *child, *parent, *old = elm; int color; if ((elm)->entry.rbe_left == ((void *)0)) child = (elm)->entry.rbe_right; else if ((elm)->entry.rbe_right == ((void *)0)) child = (elm)->entry.rbe_left; else { struct pf_state_key *left; elm = (elm)->entry.rbe_right; while ((left = (elm)->entry.rbe_left)) elm = left; child = (elm)->entry.rbe_right; parent = (elm)->entry.rbe_parent; color = (elm)->entry.rbe_color; if (child) (child)->entry.rbe_parent = parent; if (parent) { if ((parent)->entry.rbe_left == elm) (parent)->entry.rbe_left = child; else (parent)->entry.rbe_right = child; do {} while (0); } else (head)->rbh_root = child; if ((elm)->entry.rbe_parent == old) parent = elm; (elm)->entry = (old)->entry; if ((old)->entry.rbe_parent) { if (((old)->entry.rbe_parent)->entry.rbe_left == old) ((old)->entry.rbe_parent)->entry.rbe_left = elm; else ((old)->entry.rbe_parent)->entry.rbe_right = elm; do {} while (0); } else (head)->rbh_root = elm; ((old)->entry.rbe_left)->entry.rbe_parent = elm; if ((old)->entry.rbe_right) ((old)->entry.rbe_right)->entry.rbe_parent = elm; if (parent) { left = parent; do { do {} while (0); } while ((left = (left)->entry.rbe_parent)); } goto color; } parent = (elm)->entry.rbe_parent; color = (elm)->entry.rbe_color; if (child) (child)->entry.rbe_parent = parent; if (parent) { if ((parent)->entry.rbe_left == elm) (parent)->entry.rbe_left = child; else (parent)->entry.rbe_right = child; do {} while (0); } else (head)->rbh_root = child; color: if (color == 0) pf_state_tree_RB_REMOVE_COLOR(head, parent, child); return (old); } struct pf_state_key * pf_state_tree_RB_INSERT(struct pf_state_tree *head, struct pf_state_key *elm) { struct pf_state_key *tmp; struct pf_state_key *parent = ((void *)0); int comp = 0; tmp = (head)->rbh_root; while (tmp) { parent = tmp; comp = (pf_state_compare_key)(elm, parent); if (comp < 0) tmp = (tmp)->entry.rbe_left; else if (comp > 0) tmp = (tmp)->entry.rbe_right; else return (tmp); } do { (elm)->entry.rbe_parent = parent; (elm)->entry.rbe_left = (elm)->entry.rbe_right = ((void *)0); (elm)->entry.rbe_color = 1; } while (0); if (parent != ((void *)0)) { if (comp < 0) (parent)->entry.rbe_left = elm; else (parent)->entry.rbe_right = elm; do {} while (0); } else (head)->rbh_root = elm; pf_state_tree_RB_INSERT_COLOR(head, elm); return (((void *)0)); } struct pf_state_key * pf_state_tree_RB_FIND(struct pf_state_tree *head, struct pf_state_key *elm) { struct pf_state_key *tmp = (head)->rbh_root; int comp; while (tmp) { comp = pf_state_compare_key(elm, tmp); if (comp < 0) tmp = (tmp)->entry.rbe_left; else if (comp > 0) tmp = (tmp)->entry.rbe_right; else return (tmp); } return (((void *)0)); } struct pf_state_key * pf_state_tree_RB_NFIND(struct pf_state_tree *head, struct pf_state_key *elm) { struct pf_state_key *tmp = (head)->rbh_root; struct pf_state_key *res = ((void *)0); int comp; while (tmp) { comp = pf_state_compare_key(elm, tmp); if (comp < 0) { res = tmp; tmp = (tmp)->entry.rbe_left; } else if (comp > 0) tmp = (tmp)->entry.rbe_right; else return (tmp); } return (res); } struct pf_state_key * pf_state_tree_RB_NEXT(struct pf_state_key *elm) { if ((elm)->entry.rbe_right) { elm = (elm)->entry.rbe_right; while ((elm)->entry.rbe_left) elm = (elm)->entry.rbe_left; } else { if ((elm)->entry.rbe_parent && (elm == ((elm)->entry.rbe_parent)->entry.rbe_left)) elm = (elm)->entry.rbe_parent; else { while ((elm)->entry.rbe_parent && (elm == ((elm)->entry.rbe_parent)->entry.rbe_right)) elm = (elm)->entry.rbe_parent; elm = (elm)->entry.rbe_parent; } } return (elm); } struct pf_state_key * pf_state_tree_RB_PREV(struct pf_state_key *elm) { if ((elm)->entry.rbe_left) { elm = (elm)->entry.rbe_left; while ((elm)->entry.rbe_right) elm = (elm)->entry.rbe_right; } else { if ((elm)->entry.rbe_parent && (elm == ((elm)->entry.rbe_parent)->entry.rbe_right)) elm = (elm)->entry.rbe_parent; else { while ((elm)->entry.rbe_parent && (elm == ((elm)->entry.rbe_parent)->entry.rbe_left)) elm = (elm)->entry.rbe_parent; elm = (elm)->entry.rbe_parent; } } return (elm); } struct pf_state_key * pf_state_tree_RB_MINMAX(struct pf_state_tree *head, int val) { struct pf_state_key *tmp = (head)->rbh_root; struct pf_state_key *parent = ((void *)0); while (tmp) { parent = tmp; if (val < 0) tmp = (tmp)->entry.rbe_left; else tmp = (tmp)->entry.rbe_right; } return (parent); };
 void pf_state_tree_id_RB_INSERT_COLOR(struct pf_state_tree_id *head, struct pf_state *elm) { struct pf_state *parent, *gparent, *tmp; while ((parent = (elm)->entry_id.rbe_parent) && (parent)->entry_id.rbe_color == 1) { gparent = (parent)->entry_id.rbe_parent; if (parent == (gparent)->entry_id.rbe_left) { tmp = (gparent)->entry_id.rbe_right; if (tmp && (tmp)->entry_id.rbe_color == 1) { (tmp)->entry_id.rbe_color = 0; do { (parent)->entry_id.rbe_color = 0; (gparent)->entry_id.rbe_color = 1; } while (0); elm = gparent; continue; } if ((parent)->entry_id.rbe_right == elm) { do { (tmp) = (parent)->entry_id.rbe_right; if (((parent)->entry_id.rbe_right = (tmp)->entry_id.rbe_left)) { ((tmp)->entry_id.rbe_left)->entry_id.rbe_parent = (parent); } do {} while (0); if (((tmp)->entry_id.rbe_parent = (parent)->entry_id.rbe_parent)) { if ((parent) == ((parent)->entry_id.rbe_parent)->entry_id.rbe_left) ((parent)->entry_id.rbe_parent)->entry_id.rbe_left = (tmp); else ((parent)->entry_id.rbe_parent)->entry_id.rbe_right = (tmp); } else (head)->rbh_root = (tmp); (tmp)->entry_id.rbe_left = (parent); (parent)->entry_id.rbe_parent = (tmp); do {} while (0); if (((tmp)->entry_id.rbe_parent)) do {} while (0); } while (0); tmp = parent; parent = elm; elm = tmp; } do { (parent)->entry_id.rbe_color = 0; (gparent)->entry_id.rbe_color = 1; } while (0); do { (tmp) = (gparent)->entry_id.rbe_left; if (((gparent)->entry_id.rbe_left = (tmp)->entry_id.rbe_right)) { ((tmp)->entry_id.rbe_right)->entry_id.rbe_parent = (gparent); } do {} while (0); if (((tmp)->entry_id.rbe_parent = (gparent)->entry_id.rbe_parent)) { if ((gparent) == ((gparent)->entry_id.rbe_parent)->entry_id.rbe_left) ((gparent)->entry_id.rbe_parent)->entry_id.rbe_left = (tmp); else ((gparent)->entry_id.rbe_parent)->entry_id.rbe_right = (tmp); } else (head)->rbh_root = (tmp); (tmp)->entry_id.rbe_right = (gparent); (gparent)->entry_id.rbe_parent = (tmp); do {} while (0); if (((tmp)->entry_id.rbe_parent)) do {} while (0); } while (0); } else { tmp = (gparent)->entry_id.rbe_left; if (tmp && (tmp)->entry_id.rbe_color == 1) { (tmp)->entry_id.rbe_color = 0; do { (parent)->entry_id.rbe_color = 0; (gparent)->entry_id.rbe_color = 1; } while (0); elm = gparent; continue; } if ((parent)->entry_id.rbe_left == elm) { do { (tmp) = (parent)->entry_id.rbe_left; if (((parent)->entry_id.rbe_left = (tmp)->entry_id.rbe_right)) { ((tmp)->entry_id.rbe_right)->entry_id.rbe_parent = (parent); } do {} while (0); if (((tmp)->entry_id.rbe_parent = (parent)->entry_id.rbe_parent)) { if ((parent) == ((parent)->entry_id.rbe_parent)->entry_id.rbe_left) ((parent)->entry_id.rbe_parent)->entry_id.rbe_left = (tmp); else ((parent)->entry_id.rbe_parent)->entry_id.rbe_right = (tmp); } else (head)->rbh_root = (tmp); (tmp)->entry_id.rbe_right = (parent); (parent)->entry_id.rbe_parent = (tmp); do {} while (0); if (((tmp)->entry_id.rbe_parent)) do {} while (0); } while (0); tmp = parent; parent = elm; elm = tmp; } do { (parent)->entry_id.rbe_color = 0; (gparent)->entry_id.rbe_color = 1; } while (0); do { (tmp) = (gparent)->entry_id.rbe_right; if (((gparent)->entry_id.rbe_right = (tmp)->entry_id.rbe_left)) { ((tmp)->entry_id.rbe_left)->entry_id.rbe_parent = (gparent); } do {} while (0); if (((tmp)->entry_id.rbe_parent = (gparent)->entry_id.rbe_parent)) { if ((gparent) == ((gparent)->entry_id.rbe_parent)->entry_id.rbe_left) ((gparent)->entry_id.rbe_parent)->entry_id.rbe_left = (tmp); else ((gparent)->entry_id.rbe_parent)->entry_id.rbe_right = (tmp); } else (head)->rbh_root = (tmp); (tmp)->entry_id.rbe_left = (gparent); (gparent)->entry_id.rbe_parent = (tmp); do {} while (0); if (((tmp)->entry_id.rbe_parent)) do {} while (0); } while (0); } } (head->rbh_root)->entry_id.rbe_color = 0; } void pf_state_tree_id_RB_REMOVE_COLOR(struct pf_state_tree_id *head, struct pf_state *parent, struct pf_state *elm) { struct pf_state *tmp; while ((elm == ((void *)0) || (elm)->entry_id.rbe_color == 0) && elm != (head)->rbh_root) { if ((parent)->entry_id.rbe_left == elm) { tmp = (parent)->entry_id.rbe_right; if ((tmp)->entry_id.rbe_color == 1) { do { (tmp)->entry_id.rbe_color = 0; (parent)->entry_id.rbe_color = 1; } while (0); do { (tmp) = (parent)->entry_id.rbe_right; if (((parent)->entry_id.rbe_right = (tmp)->entry_id.rbe_left)) { ((tmp)->entry_id.rbe_left)->entry_id.rbe_parent = (parent); } do {} while (0); if (((tmp)->entry_id.rbe_parent = (parent)->entry_id.rbe_parent)) { if ((parent) == ((parent)->entry_id.rbe_parent)->entry_id.rbe_left) ((parent)->entry_id.rbe_parent)->entry_id.rbe_left = (tmp); else ((parent)->entry_id.rbe_parent)->entry_id.rbe_right = (tmp); } else (head)->rbh_root = (tmp); (tmp)->entry_id.rbe_left = (parent); (parent)->entry_id.rbe_parent = (tmp); do {} while (0); if (((tmp)->entry_id.rbe_parent)) do {} while (0); } while (0); tmp = (parent)->entry_id.rbe_right; } if (((tmp)->entry_id.rbe_left == ((void *)0) || ((tmp)->entry_id.rbe_left)->entry_id.rbe_color == 0) && ((tmp)->entry_id.rbe_right == ((void *)0) || ((tmp)->entry_id.rbe_right)->entry_id.rbe_color == 0)) { (tmp)->entry_id.rbe_color = 1; elm = parent; parent = (elm)->entry_id.rbe_parent; } else { if ((tmp)->entry_id.rbe_right == ((void *)0) || ((tmp)->entry_id.rbe_right)->entry_id.rbe_color == 0) { struct pf_state *oleft; if ((oleft = (tmp)->entry_id.rbe_left)) (oleft)->entry_id.rbe_color = 0; (tmp)->entry_id.rbe_color = 1; do { (oleft) = (tmp)->entry_id.rbe_left; if (((tmp)->entry_id.rbe_left = (oleft)->entry_id.rbe_right)) { ((oleft)->entry_id.rbe_right)->entry_id.rbe_parent = (tmp); } do {} while (0); if (((oleft)->entry_id.rbe_parent = (tmp)->entry_id.rbe_parent)) { if ((tmp) == ((tmp)->entry_id.rbe_parent)->entry_id.rbe_left) ((tmp)->entry_id.rbe_parent)->entry_id.rbe_left = (oleft); else ((tmp)->entry_id.rbe_parent)->entry_id.rbe_right = (oleft); } else (head)->rbh_root = (oleft); (oleft)->entry_id.rbe_right = (tmp); (tmp)->entry_id.rbe_parent = (oleft); do {} while (0); if (((oleft)->entry_id.rbe_parent)) do {} while (0); } while (0); tmp = (parent)->entry_id.rbe_right; } (tmp)->entry_id.rbe_color = (parent)->entry_id.rbe_color; (parent)->entry_id.rbe_color = 0; if ((tmp)->entry_id.rbe_right) ((tmp)->entry_id.rbe_right)->entry_id.rbe_color = 0; do { (tmp) = (parent)->entry_id.rbe_right; if (((parent)->entry_id.rbe_right = (tmp)->entry_id.rbe_left)) { ((tmp)->entry_id.rbe_left)->entry_id.rbe_parent = (parent); } do {} while (0); if (((tmp)->entry_id.rbe_parent = (parent)->entry_id.rbe_parent)) { if ((parent) == ((parent)->entry_id.rbe_parent)->entry_id.rbe_left) ((parent)->entry_id.rbe_parent)->entry_id.rbe_left = (tmp); else ((parent)->entry_id.rbe_parent)->entry_id.rbe_right = (tmp); } else (head)->rbh_root = (tmp); (tmp)->entry_id.rbe_left = (parent); (parent)->entry_id.rbe_parent = (tmp); do {} while (0); if (((tmp)->entry_id.rbe_parent)) do {} while (0); } while (0); elm = (head)->rbh_root; break; } } else { tmp = (parent)->entry_id.rbe_left; if ((tmp)->entry_id.rbe_color == 1) { do { (tmp)->entry_id.rbe_color = 0; (parent)->entry_id.rbe_color = 1; } while (0); do { (tmp) = (parent)->entry_id.rbe_left; if (((parent)->entry_id.rbe_left = (tmp)->entry_id.rbe_right)) { ((tmp)->entry_id.rbe_right)->entry_id.rbe_parent = (parent); } do {} while (0); if (((tmp)->entry_id.rbe_parent = (parent)->entry_id.rbe_parent)) { if ((parent) == ((parent)->entry_id.rbe_parent)->entry_id.rbe_left) ((parent)->entry_id.rbe_parent)->entry_id.rbe_left = (tmp); else ((parent)->entry_id.rbe_parent)->entry_id.rbe_right = (tmp); } else (head)->rbh_root = (tmp); (tmp)->entry_id.rbe_right = (parent); (parent)->entry_id.rbe_parent = (tmp); do {} while (0); if (((tmp)->entry_id.rbe_parent)) do {} while (0); } while (0); tmp = (parent)->entry_id.rbe_left; } if (((tmp)->entry_id.rbe_left == ((void *)0) || ((tmp)->entry_id.rbe_left)->entry_id.rbe_color == 0) && ((tmp)->entry_id.rbe_right == ((void *)0) || ((tmp)->entry_id.rbe_right)->entry_id.rbe_color == 0)) { (tmp)->entry_id.rbe_color = 1; elm = parent; parent = (elm)->entry_id.rbe_parent; } else { if ((tmp)->entry_id.rbe_left == ((void *)0) || ((tmp)->entry_id.rbe_left)->entry_id.rbe_color == 0) { struct pf_state *oright; if ((oright = (tmp)->entry_id.rbe_right)) (oright)->entry_id.rbe_color = 0; (tmp)->entry_id.rbe_color = 1; do { (oright) = (tmp)->entry_id.rbe_right; if (((tmp)->entry_id.rbe_right = (oright)->entry_id.rbe_left)) { ((oright)->entry_id.rbe_left)->entry_id.rbe_parent = (tmp); } do {} while (0); if (((oright)->entry_id.rbe_parent = (tmp)->entry_id.rbe_parent)) { if ((tmp) == ((tmp)->entry_id.rbe_parent)->entry_id.rbe_left) ((tmp)->entry_id.rbe_parent)->entry_id.rbe_left = (oright); else ((tmp)->entry_id.rbe_parent)->entry_id.rbe_right = (oright); } else (head)->rbh_root = (oright); (oright)->entry_id.rbe_left = (tmp); (tmp)->entry_id.rbe_parent = (oright); do {} while (0); if (((oright)->entry_id.rbe_parent)) do {} while (0); } while (0); tmp = (parent)->entry_id.rbe_left; } (tmp)->entry_id.rbe_color = (parent)->entry_id.rbe_color; (parent)->entry_id.rbe_color = 0; if ((tmp)->entry_id.rbe_left) ((tmp)->entry_id.rbe_left)->entry_id.rbe_color = 0; do { (tmp) = (parent)->entry_id.rbe_left; if (((parent)->entry_id.rbe_left = (tmp)->entry_id.rbe_right)) { ((tmp)->entry_id.rbe_right)->entry_id.rbe_parent = (parent); } do {} while (0); if (((tmp)->entry_id.rbe_parent = (parent)->entry_id.rbe_parent)) { if ((parent) == ((parent)->entry_id.rbe_parent)->entry_id.rbe_left) ((parent)->entry_id.rbe_parent)->entry_id.rbe_left = (tmp); else ((parent)->entry_id.rbe_parent)->entry_id.rbe_right = (tmp); } else (head)->rbh_root = (tmp); (tmp)->entry_id.rbe_right = (parent); (parent)->entry_id.rbe_parent = (tmp); do {} while (0); if (((tmp)->entry_id.rbe_parent)) do {} while (0); } while (0); elm = (head)->rbh_root; break; } } } if (elm) (elm)->entry_id.rbe_color = 0; } struct pf_state * pf_state_tree_id_RB_REMOVE(struct pf_state_tree_id *head, struct pf_state *elm) { struct pf_state *child, *parent, *old = elm; int color; if ((elm)->entry_id.rbe_left == ((void *)0)) child = (elm)->entry_id.rbe_right; else if ((elm)->entry_id.rbe_right == ((void *)0)) child = (elm)->entry_id.rbe_left; else { struct pf_state *left; elm = (elm)->entry_id.rbe_right; while ((left = (elm)->entry_id.rbe_left)) elm = left; child = (elm)->entry_id.rbe_right; parent = (elm)->entry_id.rbe_parent; color = (elm)->entry_id.rbe_color; if (child) (child)->entry_id.rbe_parent = parent; if (parent) { if ((parent)->entry_id.rbe_left == elm) (parent)->entry_id.rbe_left = child; else (parent)->entry_id.rbe_right = child; do {} while (0); } else (head)->rbh_root = child; if ((elm)->entry_id.rbe_parent == old) parent = elm; (elm)->entry_id = (old)->entry_id; if ((old)->entry_id.rbe_parent) { if (((old)->entry_id.rbe_parent)->entry_id.rbe_left == old) ((old)->entry_id.rbe_parent)->entry_id.rbe_left = elm; else ((old)->entry_id.rbe_parent)->entry_id.rbe_right = elm; do {} while (0); } else (head)->rbh_root = elm; ((old)->entry_id.rbe_left)->entry_id.rbe_parent = elm; if ((old)->entry_id.rbe_right) ((old)->entry_id.rbe_right)->entry_id.rbe_parent = elm; if (parent) { left = parent; do { do {} while (0); } while ((left = (left)->entry_id.rbe_parent)); } goto color; } parent = (elm)->entry_id.rbe_parent; color = (elm)->entry_id.rbe_color; if (child) (child)->entry_id.rbe_parent = parent; if (parent) { if ((parent)->entry_id.rbe_left == elm) (parent)->entry_id.rbe_left = child; else (parent)->entry_id.rbe_right = child; do {} while (0); } else (head)->rbh_root = child; color: if (color == 0) pf_state_tree_id_RB_REMOVE_COLOR(head, parent, child); return (old); } struct pf_state * pf_state_tree_id_RB_INSERT(struct pf_state_tree_id *head, struct pf_state *elm) { struct pf_state *tmp; struct pf_state *parent = ((void *)0); int comp = 0; tmp = (head)->rbh_root; while (tmp) { parent = tmp; comp = (pf_state_compare_id)(elm, parent); if (comp < 0) tmp = (tmp)->entry_id.rbe_left; else if (comp > 0) tmp = (tmp)->entry_id.rbe_right; else return (tmp); } do { (elm)->entry_id.rbe_parent = parent; (elm)->entry_id.rbe_left = (elm)->entry_id.rbe_right = ((void *)0); (elm)->entry_id.rbe_color = 1; } while (0); if (parent != ((void *)0)) { if (comp < 0) (parent)->entry_id.rbe_left = elm; else (parent)->entry_id.rbe_right = elm; do {} while (0); } else (head)->rbh_root = elm; pf_state_tree_id_RB_INSERT_COLOR(head, elm); return (((void *)0)); } struct pf_state * pf_state_tree_id_RB_FIND(struct pf_state_tree_id *head, struct pf_state *elm) { struct pf_state *tmp = (head)->rbh_root; int comp; while (tmp) { comp = pf_state_compare_id(elm, tmp); if (comp < 0) tmp = (tmp)->entry_id.rbe_left; else if (comp > 0) tmp = (tmp)->entry_id.rbe_right; else return (tmp); } return (((void *)0)); } struct pf_state * pf_state_tree_id_RB_NFIND(struct pf_state_tree_id *head, struct pf_state *elm) { struct pf_state *tmp = (head)->rbh_root; struct pf_state *res = ((void *)0); int comp; while (tmp) { comp = pf_state_compare_id(elm, tmp); if (comp < 0) { res = tmp; tmp = (tmp)->entry_id.rbe_left; } else if (comp > 0) tmp = (tmp)->entry_id.rbe_right; else return (tmp); } return (res); } struct pf_state * pf_state_tree_id_RB_NEXT(struct pf_state *elm) { if ((elm)->entry_id.rbe_right) { elm = (elm)->entry_id.rbe_right; while ((elm)->entry_id.rbe_left) elm = (elm)->entry_id.rbe_left; } else { if ((elm)->entry_id.rbe_parent && (elm == ((elm)->entry_id.rbe_parent)->entry_id.rbe_left)) elm = (elm)->entry_id.rbe_parent; else { while ((elm)->entry_id.rbe_parent && (elm == ((elm)->entry_id.rbe_parent)->entry_id.rbe_right)) elm = (elm)->entry_id.rbe_parent; elm = (elm)->entry_id.rbe_parent; } } return (elm); } struct pf_state * pf_state_tree_id_RB_PREV(struct pf_state *elm) { if ((elm)->entry_id.rbe_left) { elm = (elm)->entry_id.rbe_left; while ((elm)->entry_id.rbe_right) elm = (elm)->entry_id.rbe_right; } else { if ((elm)->entry_id.rbe_parent && (elm == ((elm)->entry_id.rbe_parent)->entry_id.rbe_right)) elm = (elm)->entry_id.rbe_parent; else { while ((elm)->entry_id.rbe_parent && (elm == ((elm)->entry_id.rbe_parent)->entry_id.rbe_left)) elm = (elm)->entry_id.rbe_parent; elm = (elm)->entry_id.rbe_parent; } } return (elm); } struct pf_state * pf_state_tree_id_RB_MINMAX(struct pf_state_tree_id *head, int val) { struct pf_state *tmp = (head)->rbh_root; struct pf_state *parent = ((void *)0); while (tmp) { parent = tmp; if (val < 0) tmp = (tmp)->entry_id.rbe_left; else tmp = (tmp)->entry_id.rbe_right; } return (parent); };
struct pf_rule_gcl { struct pf_rule *slh_first; } pf_rule_gcl =
 { ((void *)0) };
__inline int
pf_addr_compare(struct pf_addr *a, struct pf_addr *b, sa_family_t af)
{
 switch (af) {
 case 2:
  if (a->pfa.addr32[0] > b->pfa.addr32[0])
   return (1);
  if (a->pfa.addr32[0] < b->pfa.addr32[0])
   return (-1);
  break;
 case 24:
  if (a->pfa.addr32[3] > b->pfa.addr32[3])
   return (1);
  if (a->pfa.addr32[3] < b->pfa.addr32[3])
   return (-1);
  if (a->pfa.addr32[2] > b->pfa.addr32[2])
   return (1);
  if (a->pfa.addr32[2] < b->pfa.addr32[2])
   return (-1);
  if (a->pfa.addr32[1] > b->pfa.addr32[1])
   return (1);
  if (a->pfa.addr32[1] < b->pfa.addr32[1])
   return (-1);
  if (a->pfa.addr32[0] > b->pfa.addr32[0])
   return (1);
  if (a->pfa.addr32[0] < b->pfa.addr32[0])
   return (-1);
  break;
 }
 return (0);
}
static __inline int
pf_src_compare(struct pf_src_node *a, struct pf_src_node *b)
{
 int diff;
 if (a->rule.ptr > b->rule.ptr)
  return (1);
 if (a->rule.ptr < b->rule.ptr)
  return (-1);
 if ((diff = a->type - b->type) != 0)
  return (diff);
 if ((diff = a->af - b->af) != 0)
  return (diff);
 if ((diff = pf_addr_compare(&a->addr, &b->addr, a->af)) != 0)
  return (diff);
 return (0);
}
static __inline void
pf_set_protostate(struct pf_state *s, int which, u_int8_t newstate)
{
 if (which == PF_PEER_DST || which == PF_PEER_BOTH)
  s->dst.state = newstate;
 if (which == PF_PEER_DST)
  return;
 if (s->src.state == newstate)
  return;
 if (s->key[PF_SK_STACK]->proto == 6 &&
     !(((s->src.state) >= 4) ||
     s->src.state == 0) &&
     (((newstate) >= 4) || newstate == 0))
  pf_status.states_halfopen--;
 s->src.state = newstate;
}
void
pf_addrcpy(struct pf_addr *dst, struct pf_addr *src, sa_family_t af)
{
 switch (af) {
 case 2:
  dst->pfa.addr32[0] = src->pfa.addr32[0];
  break;
 case 24:
  dst->pfa.addr32[0] = src->pfa.addr32[0];
  dst->pfa.addr32[1] = src->pfa.addr32[1];
  dst->pfa.addr32[2] = src->pfa.addr32[2];
  dst->pfa.addr32[3] = src->pfa.addr32[3];
  break;
 default:
  unhandled_af(af);
 }
}
void
pf_init_threshold(struct pf_threshold *threshold,
    u_int32_t limit, u_int32_t seconds)
{
 threshold->limit = limit * 1000;
 threshold->seconds = seconds;
 threshold->count = 0;
 threshold->last = time_uptime;
}
void
pf_add_threshold(struct pf_threshold *threshold)
{
 u_int32_t t = time_uptime, diff = t - threshold->last;
 if (diff >= threshold->seconds)
  threshold->count = 0;
 else
  threshold->count -= threshold->count * diff /
      threshold->seconds;
 threshold->count += 1000;
 threshold->last = t;
}
int
pf_check_threshold(struct pf_threshold *threshold)
{
 return (threshold->count > threshold->limit);
}
int
pf_src_connlimit(struct pf_state **state)
{
 int bad = 0;
 struct pf_src_node *sn;
 if ((sn = pf_get_src_node((*state), PF_SN_NONE)) == ((void *)0))
  return (0);
 sn->conn++;
 (*state)->src.tcp_est = 1;
 pf_add_threshold(&sn->conn_rate);
 if ((*state)->rule.ptr->max_src_conn &&
     (*state)->rule.ptr->max_src_conn < sn->conn) {
  pf_status.lcounters[3]++;
  bad++;
 }
 if ((*state)->rule.ptr->max_src_conn_rate.limit &&
     pf_check_threshold(&sn->conn_rate)) {
  pf_status.lcounters[4]++;
  bad++;
 }
 if (!bad)
  return (0);
 if ((*state)->rule.ptr->overload_tbl) {
  struct pfr_addr p;
  u_int32_t killed = 0;
  pf_status.lcounters[5]++;
  if (pf_status.debug >= 5) {
   log(5,
       "pf: pf_src_connlimit: blocking address ");
   pf_print_host(&sn->addr, 0,
       (*state)->key[PF_SK_WIRE]->af);
  }
  __builtin_bzero((&p), (sizeof(p)));
  p.pfra_af = (*state)->key[PF_SK_WIRE]->af;
  switch ((*state)->key[PF_SK_WIRE]->af) {
  case 2:
   p.pfra_net = 32;
   p.pfra_u._pfra_ip4addr = sn->addr.pfa.v4;
   break;
  case 24:
   p.pfra_net = 128;
   p.pfra_u._pfra_ip6addr = sn->addr.pfa.v6;
   break;
  }
  pfr_insert_kentry((*state)->rule.ptr->overload_tbl,
      &p, time_second);
  if ((*state)->rule.ptr->flush) {
   struct pf_state_key *sk;
   struct pf_state *st;
   pf_status.lcounters[6]++;
   for ((st) = pf_state_tree_id_RB_MINMAX(&tree_id, -1); (st) != ((void *)0); (st) = pf_state_tree_id_RB_NEXT(st)) {
    sk = st->key[PF_SK_WIRE];
    if (sk->af ==
        (*state)->key[PF_SK_WIRE]->af &&
        (((*state)->direction == PF_OUT &&
        ((sk->af == 2 && (&sn->addr)->pfa.addr32[0] == (&sk->addr[1])->pfa.addr32[0]) || (sk->af == 24 && (&sn->addr)->pfa.addr32[3] == (&sk->addr[1])->pfa.addr32[3] && (&sn->addr)->pfa.addr32[2] == (&sk->addr[1])->pfa.addr32[2] && (&sn->addr)->pfa.addr32[1] == (&sk->addr[1])->pfa.addr32[1] && (&sn->addr)->pfa.addr32[0] == (&sk->addr[1])->pfa.addr32[0]))) ||
        ((*state)->direction == PF_IN &&
        ((sk->af == 2 && (&sn->addr)->pfa.addr32[0] == (&sk->addr[0])->pfa.addr32[0]) || (sk->af == 24 && (&sn->addr)->pfa.addr32[3] == (&sk->addr[0])->pfa.addr32[3] && (&sn->addr)->pfa.addr32[2] == (&sk->addr[0])->pfa.addr32[2] && (&sn->addr)->pfa.addr32[1] == (&sk->addr[0])->pfa.addr32[1] && (&sn->addr)->pfa.addr32[0] == (&sk->addr[0])->pfa.addr32[0])))) &&
        ((*state)->rule.ptr->flush &
        0x02 ||
        (*state)->rule.ptr == st->rule.ptr)) {
     st->timeout = PFTM_PURGE;
     pf_set_protostate(st, PF_PEER_BOTH,
         0);
     killed++;
    }
   }
   if (pf_status.debug >= 5)
    addlog(", %u states killed", killed);
  }
  if (pf_status.debug >= 5)
   addlog("\n");
 }
 (*state)->timeout = PFTM_PURGE;
 pf_set_protostate(*state, PF_PEER_BOTH, 0);
 return (1);
}
int
pf_insert_src_node(struct pf_src_node **sn, struct pf_rule *rule,
    enum pf_sn_types type, sa_family_t af, struct pf_addr *src,
    struct pf_addr *raddr)
{
 struct pf_src_node k;
 if (*sn == ((void *)0)) {
  k.af = af;
  k.type = type;
  pf_addrcpy(&k.addr, src, af);
  k.rule.ptr = rule;
  pf_status.scounters[0]++;
  *sn = pf_src_tree_RB_FIND(&tree_src_tracking, &k);
 }
 if (*sn == ((void *)0)) {
  if (!rule->max_src_nodes ||
      rule->src_nodes < rule->max_src_nodes)
   (*sn) = pool_get(&pf_src_tree_pl, 0x0002 | 0x0008);
  else
   pf_status.lcounters[2]++;
  if ((*sn) == ((void *)0))
   return (-1);
  pf_init_threshold(&(*sn)->conn_rate,
      rule->max_src_conn_rate.limit,
      rule->max_src_conn_rate.seconds);
  (*sn)->type = type;
  (*sn)->af = af;
  (*sn)->rule.ptr = rule;
  pf_addrcpy(&(*sn)->addr, src, af);
  if (raddr)
   pf_addrcpy(&(*sn)->raddr, raddr, af);
  if (pf_src_tree_RB_INSERT(&tree_src_tracking, *sn) != ((void *)0)) {
   if (pf_status.debug >= 5) {
    log(5,
        "pf: src_tree insert failed: ");
    pf_print_host(&(*sn)->addr, 0, af);
    addlog("\n");
   }
   pool_put(&pf_src_tree_pl, *sn);
   return (-1);
  }
  (*sn)->creation = time_uptime;
  (*sn)->rule.ptr->src_nodes++;
  pf_status.scounters[1]++;
  pf_status.src_nodes++;
 } else {
  if (rule->max_src_states &&
      (*sn)->states >= rule->max_src_states) {
   pf_status.lcounters[1]++;
   return (-1);
  }
 }
 return (0);
}
void
pf_remove_src_node(struct pf_src_node *sn)
{
 if (sn->states > 0 || sn->expire > time_uptime)
  return;
 sn->rule.ptr->src_nodes--;
 if (sn->rule.ptr->states_cur == 0 &&
     sn->rule.ptr->src_nodes == 0)
  pf_rm_rule(((void *)0), sn->rule.ptr);
 pf_src_tree_RB_REMOVE(&tree_src_tracking, sn);
 pf_status.scounters[2]++;
 pf_status.src_nodes--;
 pool_put(&pf_src_tree_pl, sn);
}
struct pf_src_node *
pf_get_src_node(struct pf_state *s, enum pf_sn_types type)
{
 struct pf_sn_item *sni;
 for((sni) = ((&s->src_nodes)->slh_first); (sni) != ((void *)0); (sni) = ((sni)->next.sle_next))
  if (sni->sn->type == type)
   return (sni->sn);
 return (((void *)0));
}
void
pf_state_rm_src_node(struct pf_state *s, struct pf_src_node *sn)
{
 struct pf_sn_item *sni, *snin, *snip = ((void *)0);
 for (sni = ((&s->src_nodes)->slh_first); sni; sni = snin) {
  snin = ((sni)->next.sle_next);
  if (sni->sn == sn) {
   if (snip)
    do { (snip)->next.sle_next = (snip)->next.sle_next->next.sle_next; } while (0);
   else
    do { (&s->src_nodes)->slh_first = (&s->src_nodes)->slh_first->next.sle_next; } while (0);
   pool_put(&pf_sn_item_pl, sni);
   sni = ((void *)0);
   sn->states--;
  }
  if (sni != ((void *)0))
   snip = sni;
 }
}
static __inline int
pf_state_compare_key(struct pf_state_key *a, struct pf_state_key *b)
{
 int diff;
 if ((diff = a->proto - b->proto) != 0)
  return (diff);
 if ((diff = a->af - b->af) != 0)
  return (diff);
 if ((diff = pf_addr_compare(&a->addr[0], &b->addr[0], a->af)) != 0)
  return (diff);
 if ((diff = pf_addr_compare(&a->addr[1], &b->addr[1], a->af)) != 0)
  return (diff);
 if ((diff = a->port[0] - b->port[0]) != 0)
  return (diff);
 if ((diff = a->port[1] - b->port[1]) != 0)
  return (diff);
 if ((diff = a->rdomain - b->rdomain) != 0)
  return (diff);
 return (0);
}
static __inline int
pf_state_compare_id(struct pf_state *a, struct pf_state *b)
{
 if (a->id > b->id)
  return (1);
 if (a->id < b->id)
  return (-1);
 if (a->creatorid > b->creatorid)
  return (1);
 if (a->creatorid < b->creatorid)
  return (-1);
 return (0);
}
int
pf_state_key_attach(struct pf_state_key *sk, struct pf_state *s, int idx)
{
 struct pf_state_item *si;
 struct pf_state_key *cur;
 struct pf_state *olds = ((void *)0);
 ((s->key[idx] == ((void *)0)) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../net/pf.c", 698, "s->key[idx] == NULL"));
 if ((cur = pf_state_tree_RB_INSERT(&pf_statetbl, sk)) != ((void *)0)) {
  for((si) = ((&cur->states)->tqh_first); (si) != ((void *)0); (si) = ((si)->entry.tqe_next))
   if (si->s->kif == s->kif &&
       ((si->s->key[PF_SK_WIRE]->af == sk->af &&
        si->s->direction == s->direction) ||
       (si->s->key[PF_SK_WIRE]->af !=
        si->s->key[PF_SK_STACK]->af &&
        sk->af == si->s->key[PF_SK_STACK]->af &&
        si->s->direction != s->direction))) {
    int reuse = 0;
    if (sk->proto == 6 &&
        si->s->src.state >= 9 &&
        si->s->dst.state >= 9)
     reuse = 1;
    if (pf_status.debug >= 5) {
     log(5,
         "pf: %s key attach %s on %s: ",
         (idx == PF_SK_WIRE) ?
         "wire" : "stack",
         reuse ? "reuse" : "failed",
         s->kif->pfik_name);
     pf_print_state_parts(s,
         (idx == PF_SK_WIRE) ? sk : ((void *)0),
         (idx == PF_SK_STACK) ? sk : ((void *)0));
     addlog(", existing: ");
     pf_print_state_parts(si->s,
         (idx == PF_SK_WIRE) ? sk : ((void *)0),
         (idx == PF_SK_STACK) ? sk : ((void *)0));
     addlog("\n");
    }
    if (reuse) {
     pf_set_protostate(si->s, PF_PEER_BOTH,
         0);
     olds = si->s;
    } else {
     pool_put(&pf_state_key_pl, sk);
     return (-1);
    }
   }
  pool_put(&pf_state_key_pl, sk);
  s->key[idx] = cur;
 } else
  s->key[idx] = sk;
 if ((si = pool_get(&pf_state_item_pl, 0x0002)) == ((void *)0)) {
  pf_state_key_detach(s, idx);
  return (-1);
 }
 si->s = s;
 if (s->kif == pfi_all)
  do { (si)->entry.tqe_next = ((void *)0); (si)->entry.tqe_prev = (&s->key[idx]->states)->tqh_last; *(&s->key[idx]->states)->tqh_last = (si); (&s->key[idx]->states)->tqh_last = &(si)->entry.tqe_next; } while (0);
 else
  do { if (((si)->entry.tqe_next = (&s->key[idx]->states)->tqh_first) != ((void *)0)) (&s->key[idx]->states)->tqh_first->entry.tqe_prev = &(si)->entry.tqe_next; else (&s->key[idx]->states)->tqh_last = &(si)->entry.tqe_next; (&s->key[idx]->states)->tqh_first = (si); (si)->entry.tqe_prev = &(&s->key[idx]->states)->tqh_first; } while (0);
 if (olds)
  pf_remove_state(olds);
 return (0);
}
void
pf_detach_state(struct pf_state *s)
{
 if (s->key[PF_SK_WIRE] == s->key[PF_SK_STACK])
  s->key[PF_SK_WIRE] = ((void *)0);
 if (s->key[PF_SK_STACK] != ((void *)0))
  pf_state_key_detach(s, PF_SK_STACK);
 if (s->key[PF_SK_WIRE] != ((void *)0))
  pf_state_key_detach(s, PF_SK_WIRE);
}
void
pf_state_key_detach(struct pf_state *s, int idx)
{
 struct pf_state_item *si;
 struct pf_state_key *sk;
 if (s->key[idx] == ((void *)0))
  return;
 si = ((&s->key[idx]->states)->tqh_first);
 while (si && si->s != s)
     si = ((si)->entry.tqe_next);
 if (si) {
  do { if (((si)->entry.tqe_next) != ((void *)0)) (si)->entry.tqe_next->entry.tqe_prev = (si)->entry.tqe_prev; else (&s->key[idx]->states)->tqh_last = (si)->entry.tqe_prev; *(si)->entry.tqe_prev = (si)->entry.tqe_next; ((si)->entry.tqe_prev) = ((void *)-1); ((si)->entry.tqe_next) = ((void *)-1); } while (0);
  pool_put(&pf_state_item_pl, si);
 }
 sk = s->key[idx];
 s->key[idx] = ((void *)0);
 if ((((&sk->states)->tqh_first) == ((void *)0))) {
  pf_state_tree_RB_REMOVE(&pf_statetbl, sk);
  sk->removed = 1;
  pf_state_key_unlink_reverse(sk);
  pf_inpcb_unlink_state_key(sk->inp);
  sk->inp = ((void *)0);
  pf_state_key_unref(sk);
 }
}
struct pf_state_key *
pf_alloc_state_key(int pool_flags)
{
 struct pf_state_key *sk;
 if ((sk = pool_get(&pf_state_key_pl, pool_flags)) == ((void *)0))
  return (((void *)0));
 do { (&sk->states)->tqh_first = ((void *)0); (&sk->states)->tqh_last = &(&sk->states)->tqh_first; } while (0);
 return (sk);
}
static __inline int
pf_state_key_addr_setup(struct pf_pdesc *pd, void *arg, int sidx,
    struct pf_addr *saddr, int didx, struct pf_addr *daddr, int af, int multi)
{
 struct pf_state_key_cmp *key = arg;
 struct pf_addr *target;
 if (af == 2 || pd->proto != 58)
  goto copy;
 switch (pd->hdr.icmp6.icmp6_type) {
 case 135:
  if (multi)
   return (-1);
  target = (struct pf_addr *)&pd->hdr.nd_ns.nd_ns_target;
  daddr = target;
  break;
 case 136:
  if (multi)
   return (-1);
  target = (struct pf_addr *)&pd->hdr.nd_ns.nd_ns_target;
  saddr = target;
  if (((&pd->dst->pfa.v6)->__u6_addr.__u6_addr8[0] == 0xff)) {
   key->addr[didx].pfa.addr32[0] = 0;
   key->addr[didx].pfa.addr32[1] = 0;
   key->addr[didx].pfa.addr32[2] = 0;
   key->addr[didx].pfa.addr32[3] = 0;
   daddr = ((void *)0);
  }
  break;
 default:
  if (multi) {
   key->addr[sidx].pfa.addr32[0] = ((__uint32_t)(0xff020000));
   key->addr[sidx].pfa.addr32[1] = 0;
   key->addr[sidx].pfa.addr32[2] = 0;
   key->addr[sidx].pfa.addr32[3] = ((__uint32_t)(1));
   saddr = ((void *)0);
  }
 }
 copy:
 if (saddr)
  pf_addrcpy(&key->addr[sidx], saddr, af);
 if (daddr)
  pf_addrcpy(&key->addr[didx], daddr, af);
 return (0);
}
int
pf_state_key_setup(struct pf_pdesc *pd, struct pf_state_key **skw,
    struct pf_state_key **sks, int rtableid)
{
 struct pf_state_key *sk1, *sk2;
 u_int wrdom = pd->rdomain;
 int afto = pd->af != pd->naf;
 if ((sk1 = pf_alloc_state_key(0x0002 | 0x0008)) == ((void *)0))
  return (12);
 pf_state_key_addr_setup(pd, sk1, pd->sidx, pd->src, pd->didx, pd->dst,
     pd->af, 0);
 sk1->port[pd->sidx] = pd->osport;
 sk1->port[pd->didx] = pd->odport;
 sk1->proto = pd->proto;
 sk1->af = pd->af;
 sk1->rdomain = pd->rdomain;
 refcnt_init(&(sk1->refcnt));
 sk1->removed = 0;
 if (rtableid >= 0)
  wrdom = rtable_l2(rtableid);
 if (((pd->af == 2 && (&pd->nsaddr)->pfa.addr32[0] != (pd->src)->pfa.addr32[0]) || (pd->af == 24 && ((&pd->nsaddr)->pfa.addr32[3] != (pd->src)->pfa.addr32[3] || (&pd->nsaddr)->pfa.addr32[2] != (pd->src)->pfa.addr32[2] || (&pd->nsaddr)->pfa.addr32[1] != (pd->src)->pfa.addr32[1] || (&pd->nsaddr)->pfa.addr32[0] != (pd->src)->pfa.addr32[0]))) ||
     ((pd->af == 2 && (&pd->ndaddr)->pfa.addr32[0] != (pd->dst)->pfa.addr32[0]) || (pd->af == 24 && ((&pd->ndaddr)->pfa.addr32[3] != (pd->dst)->pfa.addr32[3] || (&pd->ndaddr)->pfa.addr32[2] != (pd->dst)->pfa.addr32[2] || (&pd->ndaddr)->pfa.addr32[1] != (pd->dst)->pfa.addr32[1] || (&pd->ndaddr)->pfa.addr32[0] != (pd->dst)->pfa.addr32[0]))) ||
     pd->nsport != pd->osport || pd->ndport != pd->odport ||
     wrdom != pd->rdomain || afto) {
  if ((sk2 = pf_alloc_state_key(0x0002 | 0x0008)) == ((void *)0)) {
   pool_put(&pf_state_key_pl, sk1);
   return (12);
  }
  pf_state_key_addr_setup(pd, sk2, afto ? pd->didx : pd->sidx,
      &pd->nsaddr, afto ? pd->sidx : pd->didx, &pd->ndaddr,
      pd->naf, 0);
  sk2->port[afto ? pd->didx : pd->sidx] = pd->nsport;
  sk2->port[afto ? pd->sidx : pd->didx] = pd->ndport;
  if (afto) {
   switch (pd->proto) {
   case 1:
    sk2->proto = 58;
    break;
   case 58:
    sk2->proto = 1;
    break;
   default:
    sk2->proto = pd->proto;
   }
  } else
   sk2->proto = pd->proto;
  sk2->af = pd->naf;
  sk2->rdomain = wrdom;
  refcnt_init(&(sk2->refcnt));
  sk2->removed = 0;
 } else
  sk2 = sk1;
 if (pd->dir == PF_IN) {
  *skw = sk1;
  *sks = sk2;
 } else {
  *sks = sk1;
  *skw = sk2;
 }
 if (pf_status.debug >= 7) {
  log(7, "pf: key setup: ");
  pf_print_state_parts(((void *)0), *skw, *sks);
  addlog("\n");
 }
 return (0);
}
int
pf_state_insert(struct pfi_kif *kif, struct pf_state_key **skw,
    struct pf_state_key **sks, struct pf_state *s)
{
 (void)(0);
 s->kif = kif;
 if (*skw == *sks) {
  if (pf_state_key_attach(*skw, s, PF_SK_WIRE))
   return (-1);
  *skw = *sks = s->key[PF_SK_WIRE];
  s->key[PF_SK_STACK] = s->key[PF_SK_WIRE];
 } else {
  if (pf_state_key_attach(*skw, s, PF_SK_WIRE)) {
   pool_put(&pf_state_key_pl, *sks);
   return (-1);
  }
  *skw = s->key[PF_SK_WIRE];
  if (pf_state_key_attach(*sks, s, PF_SK_STACK)) {
   pf_state_key_detach(s, PF_SK_WIRE);
   return (-1);
  }
  *sks = s->key[PF_SK_STACK];
 }
 if (s->id == 0 && s->creatorid == 0) {
  s->id = ((__uint64_t)(pf_status.stateid++));
  s->creatorid = pf_status.hostid;
 }
 if (pf_state_tree_id_RB_INSERT(&tree_id, s) != ((void *)0)) {
  if (pf_status.debug >= 5) {
   log(5, "pf: state insert failed: "
       "id: %016llx creatorid: %08x",
       ((__uint64_t)(s->id)), ((__uint32_t)(s->creatorid)));
   addlog("\n");
  }
  pf_detach_state(s);
  return (-1);
 }
 do { (s)->entry_list.tqe_next = ((void *)0); (s)->entry_list.tqe_prev = (&state_list)->tqh_last; *(&state_list)->tqh_last = (s); (&state_list)->tqh_last = &(s)->entry_list.tqe_next; } while (0);
 pf_status.fcounters[1]++;
 pf_status.states++;
 pfi_kif_ref(kif, PFI_KIF_REF_STATE);
 pfsync_insert_state(s);
 return (0);
}
struct pf_state *
pf_find_state_byid(struct pf_state_cmp *key)
{
 pf_status.fcounters[0]++;
 return (pf_state_tree_id_RB_FIND(&tree_id, (struct pf_state *)key));
}
int
pf_compare_state_keys(struct pf_state_key *a, struct pf_state_key *b,
    struct pfi_kif *kif, u_int dir)
{
 if (a->af == b->af && a->proto == b->proto &&
     ((a->af == 2 && (&a->addr[0])->pfa.addr32[0] == (&b->addr[1])->pfa.addr32[0]) || (a->af == 24 && (&a->addr[0])->pfa.addr32[3] == (&b->addr[1])->pfa.addr32[3] && (&a->addr[0])->pfa.addr32[2] == (&b->addr[1])->pfa.addr32[2] && (&a->addr[0])->pfa.addr32[1] == (&b->addr[1])->pfa.addr32[1] && (&a->addr[0])->pfa.addr32[0] == (&b->addr[1])->pfa.addr32[0])) &&
     ((a->af == 2 && (&a->addr[1])->pfa.addr32[0] == (&b->addr[0])->pfa.addr32[0]) || (a->af == 24 && (&a->addr[1])->pfa.addr32[3] == (&b->addr[0])->pfa.addr32[3] && (&a->addr[1])->pfa.addr32[2] == (&b->addr[0])->pfa.addr32[2] && (&a->addr[1])->pfa.addr32[1] == (&b->addr[0])->pfa.addr32[1] && (&a->addr[1])->pfa.addr32[0] == (&b->addr[0])->pfa.addr32[0])) &&
     a->port[0] == b->port[1] &&
     a->port[1] == b->port[0] && a->rdomain == b->rdomain)
  return (0);
 else {
  if (pf_status.debug >= 3) {
   log(3,
       "pf: state key linking mismatch! dir=%s, "
       "if=%s, stored af=%u, a0: ",
       dir == PF_OUT ? "OUT" : "IN",
       kif->pfik_name, a->af);
   pf_print_host(&a->addr[0], a->port[0], a->af);
   addlog(", a1: ");
   pf_print_host(&a->addr[1], a->port[1], a->af);
   addlog(", proto=%u", a->proto);
   addlog(", found af=%u, a0: ", b->af);
   pf_print_host(&b->addr[0], b->port[0], b->af);
   addlog(", a1: ");
   pf_print_host(&b->addr[1], b->port[1], b->af);
   addlog(", proto=%u", b->proto);
   addlog("\n");
  }
  return (-1);
 }
}
struct pf_state *
pf_find_state(struct pfi_kif *kif, struct pf_state_key_cmp *key, u_int dir,
    struct mbuf *m)
{
 struct pf_state_key *sk, *pkt_sk, *inp_sk;
 struct pf_state_item *si;
 pf_status.fcounters[0]++;
 if (pf_status.debug >= 7) {
  log(7, "pf: key search, if=%s: ", kif->pfik_name);
  pf_print_state_parts(((void *)0), (struct pf_state_key *)key, ((void *)0));
  addlog("\n");
 }
 inp_sk = ((void *)0);
 pkt_sk = ((void *)0);
 sk = ((void *)0);
 if (dir == PF_OUT) {
  pkt_sk = m->M_dat.MH.MH_pkthdr.pf.statekey;
  if (!pf_state_key_isvalid(pkt_sk)) {
   pf_pkt_unlink_state_key(m);
   pkt_sk = ((void *)0);
  }
  if (pkt_sk && pf_state_key_isvalid(pkt_sk->reverse))
   sk = pkt_sk->reverse;
  if (pkt_sk == ((void *)0)) {
   if (m->M_dat.MH.MH_pkthdr.pf.inp != ((void *)0)) {
    inp_sk = m->M_dat.MH.MH_pkthdr.pf.inp->inp_pf_sk;
    if (pf_state_key_isvalid(inp_sk))
     sk = inp_sk;
    else
     pf_inpcb_unlink_state_key(
         m->M_dat.MH.MH_pkthdr.pf.inp);
   }
  }
 }
 if (sk == ((void *)0)) {
  if ((sk = pf_state_tree_RB_FIND(&pf_statetbl, (struct pf_state_key *)key)) == ((void *)0))
   return (((void *)0));
  if (dir == PF_OUT && pkt_sk &&
      pf_compare_state_keys(pkt_sk, sk, kif, dir) == 0)
   pf_state_key_link(sk, pkt_sk);
  else if (dir == PF_OUT)
   pf_inp_link(m, m->M_dat.MH.MH_pkthdr.pf.inp);
 }
 if (dir == PF_OUT)
  pf_pkt_addr_changed(m);
 for((si) = ((&sk->states)->tqh_first); (si) != ((void *)0); (si) = ((si)->entry.tqe_next))
  if ((si->s->kif == pfi_all || si->s->kif == kif) &&
      ((si->s->key[PF_SK_WIRE]->af == si->s->key[PF_SK_STACK]->af
      && sk == (dir == PF_IN ? si->s->key[PF_SK_WIRE] :
      si->s->key[PF_SK_STACK])) ||
      (si->s->key[PF_SK_WIRE]->af != si->s->key[PF_SK_STACK]->af
      && dir == PF_IN && (sk == si->s->key[PF_SK_STACK] ||
      sk == si->s->key[PF_SK_WIRE]))))
   return (si->s);
 return (((void *)0));
}
struct pf_state *
pf_find_state_all(struct pf_state_key_cmp *key, u_int dir, int *more)
{
 struct pf_state_key *sk;
 struct pf_state_item *si, *ret = ((void *)0);
 pf_status.fcounters[0]++;
 sk = pf_state_tree_RB_FIND(&pf_statetbl, (struct pf_state_key *)key);
 if (sk != ((void *)0)) {
  for((si) = ((&sk->states)->tqh_first); (si) != ((void *)0); (si) = ((si)->entry.tqe_next))
   if (dir == PF_INOUT ||
       (sk == (dir == PF_IN ? si->s->key[PF_SK_WIRE] :
       si->s->key[PF_SK_STACK]))) {
    if (more == ((void *)0))
     return (si->s);
    if (ret)
     (*more)++;
    else
     ret = si;
   }
 }
 return (ret ? ret->s : ((void *)0));
}
void
pf_state_export(struct pfsync_state *sp, struct pf_state *st)
{
 int32_t expire;
 __builtin_bzero((sp), (sizeof(struct pfsync_state)));
 sp->key[PF_SK_WIRE].addr[0] = st->key[PF_SK_WIRE]->addr[0];
 sp->key[PF_SK_WIRE].addr[1] = st->key[PF_SK_WIRE]->addr[1];
 sp->key[PF_SK_WIRE].port[0] = st->key[PF_SK_WIRE]->port[0];
 sp->key[PF_SK_WIRE].port[1] = st->key[PF_SK_WIRE]->port[1];
 sp->key[PF_SK_WIRE].rdomain = ((__uint16_t)(st->key[PF_SK_WIRE]->rdomain));
 sp->key[PF_SK_WIRE].af = st->key[PF_SK_WIRE]->af;
 sp->key[PF_SK_STACK].addr[0] = st->key[PF_SK_STACK]->addr[0];
 sp->key[PF_SK_STACK].addr[1] = st->key[PF_SK_STACK]->addr[1];
 sp->key[PF_SK_STACK].port[0] = st->key[PF_SK_STACK]->port[0];
 sp->key[PF_SK_STACK].port[1] = st->key[PF_SK_STACK]->port[1];
 sp->key[PF_SK_STACK].rdomain = ((__uint16_t)(st->key[PF_SK_STACK]->rdomain));
 sp->key[PF_SK_STACK].af = st->key[PF_SK_STACK]->af;
 sp->rtableid[PF_SK_WIRE] = ((__uint32_t)(st->rtableid[PF_SK_WIRE]));
 sp->rtableid[PF_SK_STACK] = ((__uint32_t)(st->rtableid[PF_SK_STACK]));
 sp->proto = st->key[PF_SK_WIRE]->proto;
 sp->af = st->key[PF_SK_WIRE]->af;
 strlcpy(sp->ifname, st->kif->pfik_name, sizeof(sp->ifname));
 __builtin_memcpy((&sp->rt_addr), (&st->rt_addr), (sizeof(sp->rt_addr)));
 sp->creation = ((__uint32_t)(time_uptime - st->creation));
 expire = pf_state_expires(st);
 if (expire <= time_uptime)
  sp->expire = ((__uint32_t)(0));
 else
  sp->expire = ((__uint32_t)(expire - time_uptime));
 sp->direction = st->direction;
 sp->log = st->log;
 sp->timeout = st->timeout;
 sp->state_flags = ((__uint16_t)(st->state_flags));
 if (!(((&st->src_nodes)->slh_first) == ((void *)0)))
  sp->sync_flags |= 0x04;
 sp->id = st->id;
 sp->creatorid = st->creatorid;
 do { (&sp->src)->seqlo = ((__uint32_t)((&st->src)->seqlo)); (&sp->src)->seqhi = ((__uint32_t)((&st->src)->seqhi)); (&sp->src)->seqdiff = ((__uint32_t)((&st->src)->seqdiff)); (&sp->src)->max_win = ((__uint16_t)((&st->src)->max_win)); (&sp->src)->mss = ((__uint16_t)((&st->src)->mss)); (&sp->src)->state = (&st->src)->state; (&sp->src)->wscale = (&st->src)->wscale; if ((&st->src)->scrub) { (&sp->src)->scrub.pfss_flags = ((__uint16_t)((&st->src)->scrub->pfss_flags & 0x0001)); (&sp->src)->scrub.pfss_ttl = (&st->src)->scrub->pfss_ttl; (&sp->src)->scrub.pfss_ts_mod = ((__uint32_t)((&st->src)->scrub->pfss_ts_mod)); (&sp->src)->scrub.scrub_flag = 0x01; } } while (0);
 do { (&sp->dst)->seqlo = ((__uint32_t)((&st->dst)->seqlo)); (&sp->dst)->seqhi = ((__uint32_t)((&st->dst)->seqhi)); (&sp->dst)->seqdiff = ((__uint32_t)((&st->dst)->seqdiff)); (&sp->dst)->max_win = ((__uint16_t)((&st->dst)->max_win)); (&sp->dst)->mss = ((__uint16_t)((&st->dst)->mss)); (&sp->dst)->state = (&st->dst)->state; (&sp->dst)->wscale = (&st->dst)->wscale; if ((&st->dst)->scrub) { (&sp->dst)->scrub.pfss_flags = ((__uint16_t)((&st->dst)->scrub->pfss_flags & 0x0001)); (&sp->dst)->scrub.pfss_ttl = (&st->dst)->scrub->pfss_ttl; (&sp->dst)->scrub.pfss_ts_mod = ((__uint32_t)((&st->dst)->scrub->pfss_ts_mod)); (&sp->dst)->scrub.scrub_flag = 0x01; } } while (0);
 if (st->rule.ptr == ((void *)0))
  sp->rule = ((__uint32_t)(-1));
 else
  sp->rule = ((__uint32_t)(st->rule.ptr->nr));
 if (st->anchor.ptr == ((void *)0))
  sp->anchor = ((__uint32_t)(-1));
 else
  sp->anchor = ((__uint32_t)(st->anchor.ptr->nr));
 sp->nat_rule = ((__uint32_t)(-1));
 do { sp->packets[0][0] = ((__uint32_t)((st->packets[0]>>32)&0xffffffff)); sp->packets[0][1] = ((__uint32_t)(st->packets[0]&0xffffffff)); } while (0);
 do { sp->packets[1][0] = ((__uint32_t)((st->packets[1]>>32)&0xffffffff)); sp->packets[1][1] = ((__uint32_t)(st->packets[1]&0xffffffff)); } while (0);
 do { sp->bytes[0][0] = ((__uint32_t)((st->bytes[0]>>32)&0xffffffff)); sp->bytes[0][1] = ((__uint32_t)(st->bytes[0]&0xffffffff)); } while (0);
 do { sp->bytes[1][0] = ((__uint32_t)((st->bytes[1]>>32)&0xffffffff)); sp->bytes[1][1] = ((__uint32_t)(st->bytes[1]&0xffffffff)); } while (0);
 sp->max_mss = ((__uint16_t)(st->max_mss));
 sp->min_ttl = st->min_ttl;
 sp->set_tos = st->set_tos;
 sp->set_prio[0] = st->set_prio[0];
 sp->set_prio[1] = st->set_prio[1];
}
void
pf_purge_expired_rules(void)
{
 struct pf_rule *r;
 (void)(0);
 if ((((&pf_rule_gcl)->slh_first) == ((void *)0)))
  return;
 while ((r = ((&pf_rule_gcl)->slh_first)) != ((void *)0)) {
  do { if ((&pf_rule_gcl)->slh_first == (r)) { do { ((&pf_rule_gcl))->slh_first = ((&pf_rule_gcl))->slh_first->gcle.sle_next; } while (0); } else { struct pf_rule *curelm = (&pf_rule_gcl)->slh_first; while (curelm->gcle.sle_next != (r)) curelm = curelm->gcle.sle_next; curelm->gcle.sle_next = curelm->gcle.sle_next->gcle.sle_next; } ((r)->gcle.sle_next) = ((void *)-1); } while (0);
  ((r->rule_flag & 0x00400000) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../net/pf.c", 1217, "r->rule_flag & PFRULE_EXPIRED"));
  pf_purge_rule(r);
 }
}
void
pf_purge_timeout(void *unused)
{
 task_add(softnettq, &pf_purge_task);
}
void
pf_purge(void *xnloops)
{
 int *nloops = xnloops;
 _kernel_lock("/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../net/pf.c", 1233);
 do { _rw_enter_write(&netlock ); } while (0);
 (void)(0);
 pf_purge_expired_states(1 + (pf_status.states
     / pf_default_rule.timeout[PFTM_INTERVAL]));
 if (++(*nloops) >= pf_default_rule.timeout[PFTM_INTERVAL]) {
  pf_purge_expired_src_nodes(0);
  pf_purge_expired_rules();
 }
 (void)(0);
 if ((*nloops) >= pf_default_rule.timeout[PFTM_INTERVAL]) {
  pf_purge_expired_fragments();
  *nloops = 0;
 }
 do { _rw_exit_write(&netlock ); } while (0);
 _kernel_unlock();
 timeout_add(&pf_purge_to, 1 * hz);
}
int32_t
pf_state_expires(const struct pf_state *state)
{
 u_int32_t timeout;
 u_int32_t start;
 u_int32_t end;
 u_int32_t states;
 if (state->timeout == PFTM_PURGE)
  return (0);
 ((state->timeout != PFTM_UNLINKED) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../net/pf.c", 1273, "state->timeout != PFTM_UNLINKED"));
 ((state->timeout < PFTM_MAX) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../net/pf.c", 1274, "state->timeout < PFTM_MAX"));
 timeout = state->rule.ptr->timeout[state->timeout];
 if (!timeout)
  timeout = pf_default_rule.timeout[state->timeout];
 start = state->rule.ptr->timeout[PFTM_ADAPTIVE_START];
 if (start) {
  end = state->rule.ptr->timeout[PFTM_ADAPTIVE_END];
  states = state->rule.ptr->states_cur;
 } else {
  start = pf_default_rule.timeout[PFTM_ADAPTIVE_START];
  end = pf_default_rule.timeout[PFTM_ADAPTIVE_END];
  states = pf_status.states;
 }
 if (end && states > start && start < end) {
  if (states >= end)
   return (0);
  timeout = (u_int64_t)timeout * (end - states) / (end - start);
 }
 return (state->expire + timeout);
}
void
pf_purge_expired_src_nodes(void)
{
 struct pf_src_node *cur, *next;
 (void)(0);
 for (cur = pf_src_tree_RB_MINMAX(&tree_src_tracking, -1); cur; cur = next) {
 next = pf_src_tree_RB_NEXT(cur);
  if (cur->states == 0 && cur->expire <= time_uptime) {
   next = pf_src_tree_RB_NEXT(cur);
   pf_remove_src_node(cur);
  }
 }
}
void
pf_src_tree_remove_state(struct pf_state *s)
{
 u_int32_t timeout;
 struct pf_sn_item *sni;
 while ((sni = ((&s->src_nodes)->slh_first)) != ((void *)0)) {
  do { (&s->src_nodes)->slh_first = (&s->src_nodes)->slh_first->next.sle_next; } while (0);
  if (s->src.tcp_est)
   --sni->sn->conn;
  if (--sni->sn->states == 0) {
   timeout = s->rule.ptr->timeout[PFTM_SRC_NODE];
   if (!timeout)
    timeout =
        pf_default_rule.timeout[PFTM_SRC_NODE];
   sni->sn->expire = time_uptime + timeout;
  }
  pool_put(&pf_sn_item_pl, sni);
 }
}
void
pf_remove_state(struct pf_state *cur)
{
 (void)(0);
 pf_postprocess_addr(cur);
 if (cur->src.state == ((11)+1)) {
  pf_send_tcp(cur->rule.ptr, cur->key[PF_SK_WIRE]->af,
      &cur->key[PF_SK_WIRE]->addr[1],
      &cur->key[PF_SK_WIRE]->addr[0],
      cur->key[PF_SK_WIRE]->port[1],
      cur->key[PF_SK_WIRE]->port[0],
      cur->src.seqhi, cur->src.seqlo + 1,
      0x04|0x10, 0, 0, 0, 1, cur->tag,
      cur->key[PF_SK_WIRE]->rdomain);
 }
 if (cur->key[PF_SK_STACK]->proto == 6)
  pf_set_protostate(cur, PF_PEER_BOTH, 0);
 pf_state_tree_id_RB_REMOVE(&tree_id, cur);
 if (cur->state_flags & 0x0004)
  export_pflow(cur);
 pfsync_delete_state(cur);
 cur->timeout = PFTM_UNLINKED;
 pf_src_tree_remove_state(cur);
 pf_detach_state(cur);
}
void
pf_remove_divert_state(struct pf_state_key *sk)
{
 struct pf_state_item *si;
 for((si) = ((&sk->states)->tqh_first); (si) != ((void *)0); (si) = ((si)->entry.tqe_next)) {
  if (sk == si->s->key[PF_SK_STACK] && si->s->rule.ptr &&
      si->s->rule.ptr->divert.port) {
   pf_remove_state(si->s);
   break;
  }
 }
}
void
pf_free_state(struct pf_state *cur)
{
 struct pf_rule_item *ri;
 (void)(0);
 if (pfsync_state_in_use(cur))
  return;
 ((cur->timeout == PFTM_UNLINKED) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../net/pf.c", 1396, "cur->timeout == PFTM_UNLINKED"));
 if (--cur->rule.ptr->states_cur == 0 &&
     cur->rule.ptr->src_nodes == 0)
  pf_rm_rule(((void *)0), cur->rule.ptr);
 if (cur->anchor.ptr != ((void *)0))
  if (--cur->anchor.ptr->states_cur == 0)
   pf_rm_rule(((void *)0), cur->anchor.ptr);
 while ((ri = ((&cur->match_rules)->slh_first))) {
  do { (&cur->match_rules)->slh_first = (&cur->match_rules)->slh_first->entry.sle_next; } while (0);
  if (--ri->r->states_cur == 0 &&
      ri->r->src_nodes == 0)
   pf_rm_rule(((void *)0), ri->r);
  pool_put(&pf_rule_item_pl, ri);
 }
 pf_normalize_tcp_cleanup(cur);
 pfi_kif_unref(cur->kif, PFI_KIF_REF_STATE);
 do { if (((cur)->entry_list.tqe_next) != ((void *)0)) (cur)->entry_list.tqe_next->entry_list.tqe_prev = (cur)->entry_list.tqe_prev; else (&state_list)->tqh_last = (cur)->entry_list.tqe_prev; *(cur)->entry_list.tqe_prev = (cur)->entry_list.tqe_next; ((cur)->entry_list.tqe_prev) = ((void *)-1); ((cur)->entry_list.tqe_next) = ((void *)-1); } while (0);
 if (cur->tag)
  pf_tag_unref(cur->tag);
 pool_put(&pf_state_pl, cur);
 pf_status.fcounters[2]++;
 pf_status.states--;
}
void
pf_purge_expired_states(u_int32_t maxcheck)
{
 static struct pf_state *cur = ((void *)0);
 struct pf_state *next;
 (void)(0);
 while (maxcheck--) {
  if (cur == ((void *)0)) {
   cur = ((&state_list)->tqh_first);
   if (cur == ((void *)0))
    break;
  }
  next = ((cur)->entry_list.tqe_next);
  if (cur->timeout == PFTM_UNLINKED) {
   pf_free_state(cur);
  } else if (pf_state_expires(cur) <= time_uptime) {
   pf_remove_state(cur);
   pf_free_state(cur);
  }
  cur = next;
 }
}
int
pf_tbladdr_setup(struct pf_ruleset *rs, struct pf_addr_wrap *aw)
{
 if (aw->type != PF_ADDR_TABLE)
  return (0);
 if ((aw->p.tbl = pfr_attach_table(rs, aw->v.tblname, 1)) == ((void *)0))
  return (1);
 return (0);
}
void
pf_tbladdr_remove(struct pf_addr_wrap *aw)
{
 if (aw->type != PF_ADDR_TABLE || aw->p.tbl == ((void *)0))
  return;
 pfr_detach_table(aw->p.tbl);
 aw->p.tbl = ((void *)0);
}
void
pf_tbladdr_copyout(struct pf_addr_wrap *aw)
{
 struct pfr_ktable *kt = aw->p.tbl;
 if (aw->type != PF_ADDR_TABLE || kt == ((void *)0))
  return;
 if (!(kt->pfrkt_ts.pfrts_t.pfrt_flags & 0x00000004) && kt->pfrkt_root != ((void *)0))
  kt = kt->pfrkt_root;
 aw->p.tbl = ((void *)0);
 aw->p.tblcnt = (kt->pfrkt_ts.pfrts_t.pfrt_flags & 0x00000004) ?
  kt->pfrkt_ts.pfrts_cnt : -1;
}
void
pf_print_host(struct pf_addr *addr, u_int16_t p, sa_family_t af)
{
 switch (af) {
 case 2: {
  u_int32_t a = ((__uint32_t)(addr->pfa.addr32[0]));
  addlog("%u.%u.%u.%u", (a>>24)&255, (a>>16)&255,
      (a>>8)&255, a&255);
  if (p) {
   p = ((__uint16_t)(p));
   addlog(":%u", p);
  }
  break;
 }
 case 24: {
  u_int16_t b;
  u_int8_t i, curstart, curend, maxstart, maxend;
  curstart = curend = maxstart = maxend = 255;
  for (i = 0; i < 8; i++) {
   if (!addr->pfa.addr16[i]) {
    if (curstart == 255)
     curstart = i;
    curend = i;
   } else {
    if ((curend - curstart) >
        (maxend - maxstart)) {
     maxstart = curstart;
     maxend = curend;
    }
    curstart = curend = 255;
   }
  }
  if ((curend - curstart) >
      (maxend - maxstart)) {
   maxstart = curstart;
   maxend = curend;
  }
  for (i = 0; i < 8; i++) {
   if (i >= maxstart && i <= maxend) {
    if (i == 0)
     addlog(":");
    if (i == maxend)
     addlog(":");
   } else {
    b = ((__uint16_t)(addr->pfa.addr16[i]));
    addlog("%x", b);
    if (i < 7)
     addlog(":");
   }
  }
  if (p) {
   p = ((__uint16_t)(p));
   addlog("[%u]", p);
  }
  break;
 }
 }
}
void
pf_print_state(struct pf_state *s)
{
 pf_print_state_parts(s, ((void *)0), ((void *)0));
}
void
pf_print_state_parts(struct pf_state *s,
    struct pf_state_key *skwp, struct pf_state_key *sksp)
{
 struct pf_state_key *skw, *sks;
 u_int8_t proto, dir;
 skw = skwp ? skwp : (s ? s->key[PF_SK_WIRE] : ((void *)0));
 sks = sksp ? sksp : (s ? s->key[PF_SK_STACK] : ((void *)0));
 proto = skw ? skw->proto : (sks ? sks->proto : 0);
 dir = s ? s->direction : 0;
 switch (proto) {
 case 4:
  addlog("IPv4");
  break;
 case 41:
  addlog("IPv6");
  break;
 case 6:
  addlog("TCP");
  break;
 case 17:
  addlog("UDP");
  break;
 case 1:
  addlog("ICMP");
  break;
 case 58:
  addlog("ICMPv6");
  break;
 default:
  addlog("%u", proto);
  break;
 }
 switch (dir) {
 case PF_IN:
  addlog(" in");
  break;
 case PF_OUT:
  addlog(" out");
  break;
 }
 if (skw) {
  addlog(" wire: (%d) ", skw->rdomain);
  pf_print_host(&skw->addr[0], skw->port[0], skw->af);
  addlog(" ");
  pf_print_host(&skw->addr[1], skw->port[1], skw->af);
 }
 if (sks) {
  addlog(" stack: (%d) ", sks->rdomain);
  if (sks != skw) {
   pf_print_host(&sks->addr[0], sks->port[0], sks->af);
   addlog(" ");
   pf_print_host(&sks->addr[1], sks->port[1], sks->af);
  } else
   addlog("-");
 }
 if (s) {
  if (proto == 6) {
   addlog(" [lo=%u high=%u win=%u modulator=%u",
       s->src.seqlo, s->src.seqhi,
       s->src.max_win, s->src.seqdiff);
   if (s->src.wscale && s->dst.wscale)
    addlog(" wscale=%u",
        s->src.wscale & 0x0f);
   addlog("]");
   addlog(" [lo=%u high=%u win=%u modulator=%u",
       s->dst.seqlo, s->dst.seqhi,
       s->dst.max_win, s->dst.seqdiff);
   if (s->src.wscale && s->dst.wscale)
    addlog(" wscale=%u",
    s->dst.wscale & 0x0f);
   addlog("]");
  }
  addlog(" %u:%u", s->src.state, s->dst.state);
  if (s->rule.ptr)
   addlog(" @%d", s->rule.ptr->nr);
 }
}
void
pf_print_flags(u_int8_t f)
{
 if (f)
  addlog(" ");
 if (f & 0x01)
  addlog("F");
 if (f & 0x02)
  addlog("S");
 if (f & 0x04)
  addlog("R");
 if (f & 0x08)
  addlog("P");
 if (f & 0x10)
  addlog("A");
 if (f & 0x20)
  addlog("U");
 if (f & 0x40)
  addlog("E");
 if (f & 0x80)
  addlog("W");
}
void
pf_calc_skip_steps(struct pf_rulequeue *rules)
{
 struct pf_rule *cur, *prev, *head[9];
 int i;
 cur = ((rules)->tqh_first);
 prev = cur;
 for (i = 0; i < 9; ++i)
  head[i] = cur;
 while (cur != ((void *)0)) {
  if (cur->kif != prev->kif || cur->ifnot != prev->ifnot)
   do { while (head[0] != cur) { head[0]->skip[0].ptr = cur; head[0] = ((head[0])->entries.tqe_next); } } while (0);
  if (cur->direction != prev->direction)
   do { while (head[1] != cur) { head[1]->skip[1].ptr = cur; head[1] = ((head[1])->entries.tqe_next); } } while (0);
  if (cur->onrdomain != prev->onrdomain ||
      cur->ifnot != prev->ifnot)
   do { while (head[2] != cur) { head[2]->skip[2].ptr = cur; head[2] = ((head[2])->entries.tqe_next); } } while (0);
  if (cur->af != prev->af)
   do { while (head[3] != cur) { head[3]->skip[3].ptr = cur; head[3] = ((head[3])->entries.tqe_next); } } while (0);
  if (cur->proto != prev->proto)
   do { while (head[4] != cur) { head[4]->skip[4].ptr = cur; head[4] = ((head[4])->entries.tqe_next); } } while (0);
  if (cur->src.neg != prev->src.neg ||
      pf_addr_wrap_neq(&cur->src.addr, &prev->src.addr))
   do { while (head[5] != cur) { head[5]->skip[5].ptr = cur; head[5] = ((head[5])->entries.tqe_next); } } while (0);
  if (cur->dst.neg != prev->dst.neg ||
      pf_addr_wrap_neq(&cur->dst.addr, &prev->dst.addr))
   do { while (head[6] != cur) { head[6]->skip[6].ptr = cur; head[6] = ((head[6])->entries.tqe_next); } } while (0);
  if (cur->src.port[0] != prev->src.port[0] ||
      cur->src.port[1] != prev->src.port[1] ||
      cur->src.port_op != prev->src.port_op)
   do { while (head[7] != cur) { head[7]->skip[7].ptr = cur; head[7] = ((head[7])->entries.tqe_next); } } while (0);
  if (cur->dst.port[0] != prev->dst.port[0] ||
      cur->dst.port[1] != prev->dst.port[1] ||
      cur->dst.port_op != prev->dst.port_op)
   do { while (head[8] != cur) { head[8]->skip[8].ptr = cur; head[8] = ((head[8])->entries.tqe_next); } } while (0);
  prev = cur;
  cur = ((cur)->entries.tqe_next);
 }
 for (i = 0; i < 9; ++i)
  do { while (head[i] != cur) { head[i]->skip[i].ptr = cur; head[i] = ((head[i])->entries.tqe_next); } } while (0);
}
int
pf_addr_wrap_neq(struct pf_addr_wrap *aw1, struct pf_addr_wrap *aw2)
{
 if (aw1->type != aw2->type)
  return (1);
 switch (aw1->type) {
 case PF_ADDR_ADDRMASK:
 case PF_ADDR_RANGE:
  if (((24 == 2 && (&aw1->v.a.addr)->pfa.addr32[0] != (&aw2->v.a.addr)->pfa.addr32[0]) || (24 == 24 && ((&aw1->v.a.addr)->pfa.addr32[3] != (&aw2->v.a.addr)->pfa.addr32[3] || (&aw1->v.a.addr)->pfa.addr32[2] != (&aw2->v.a.addr)->pfa.addr32[2] || (&aw1->v.a.addr)->pfa.addr32[1] != (&aw2->v.a.addr)->pfa.addr32[1] || (&aw1->v.a.addr)->pfa.addr32[0] != (&aw2->v.a.addr)->pfa.addr32[0]))))
   return (1);
  if (((24 == 2 && (&aw1->v.a.mask)->pfa.addr32[0] != (&aw2->v.a.mask)->pfa.addr32[0]) || (24 == 24 && ((&aw1->v.a.mask)->pfa.addr32[3] != (&aw2->v.a.mask)->pfa.addr32[3] || (&aw1->v.a.mask)->pfa.addr32[2] != (&aw2->v.a.mask)->pfa.addr32[2] || (&aw1->v.a.mask)->pfa.addr32[1] != (&aw2->v.a.mask)->pfa.addr32[1] || (&aw1->v.a.mask)->pfa.addr32[0] != (&aw2->v.a.mask)->pfa.addr32[0]))))
   return (1);
  return (0);
 case PF_ADDR_DYNIFTL:
  return (aw1->p.dyn->pfid_kt != aw2->p.dyn->pfid_kt);
 case PF_ADDR_NONE:
 case PF_ADDR_NOROUTE:
 case PF_ADDR_URPFFAILED:
  return (0);
 case PF_ADDR_TABLE:
  return (aw1->p.tbl != aw2->p.tbl);
 case PF_ADDR_RTLABEL:
  return (aw1->v.rtlabel != aw2->v.rtlabel);
 default:
  addlog("invalid address type: %d\n", aw1->type);
  return (1);
 }
}
static __inline void
pf_cksum_fixup(u_int16_t *cksum, u_int16_t was, u_int16_t now,
    u_int8_t proto)
{
 u_int32_t x;
 const int udp = proto == 17;
 x = *cksum + was - now;
 x = (x + (x >> 16)) & 0xffff;
 if (udp && *cksum == 0x0000)
  return;
 if (udp && x == 0x0000)
  x = 0xffff;
 *cksum = (u_int16_t)(x);
}
static __inline void
pf_cksum_uncover(u_int16_t *cksum, u_int16_t covered_cksum, u_int8_t proto)
{
 pf_cksum_fixup(cksum, ~covered_cksum, 0x0, proto);
}
static __inline void
pf_cksum_cover(u_int16_t *cksum, u_int16_t uncovered_cksum, u_int8_t proto)
{
 pf_cksum_fixup(cksum, 0x0, ~uncovered_cksum, proto);
}
void
pf_cksum_fixup_a(u_int16_t *cksum, const struct pf_addr *a,
    const struct pf_addr *an, sa_family_t af, u_int8_t proto)
{
 u_int32_t x;
 const u_int16_t *n = an->pfa.addr16;
 const u_int16_t *o = a->pfa.addr16;
 const int udp = proto == 17;
 switch (af) {
 case 2:
  x = *cksum + o[0] + ((u_int16_t)~(n[0])) + o[1] + ((u_int16_t)~(n[1]));
  break;
 case 24:
  x = *cksum + o[0] + ((u_int16_t)~(n[0])) + o[1] + ((u_int16_t)~(n[1])) + o[2] + ((u_int16_t)~(n[2])) + o[3] + ((u_int16_t)~(n[3])) + o[4] + ((u_int16_t)~(n[4])) + o[5] + ((u_int16_t)~(n[5])) + o[6] + ((u_int16_t)~(n[6])) + o[7] + ((u_int16_t)~(n[7]));
  break;
 default:
  unhandled_af(af);
 }
 x = (x & 0xffff) + (x >> 16);
 x = (x & 0xffff) + (x >> 16);
 if (udp && *cksum == 0x0000)
  return;
 if (udp && x == 0x0000)
  x = 0xffff;
 *cksum = (u_int16_t)(x);
}
int
pf_patch_8(struct pf_pdesc *pd, u_int8_t *f, u_int8_t v, _Bool hi)
{
 int rewrite = 0;
 if (*f != v) {
  u_int16_t old = ((__uint16_t)(hi ? (*f << 8) : *f));
  u_int16_t new = ((__uint16_t)(hi ? ( v << 8) : v));
  pf_cksum_fixup(pd->pcksum, old, new, pd->proto);
  *f = v;
  rewrite = 1;
 }
 return (rewrite);
}
int
pf_patch_16(struct pf_pdesc *pd, u_int16_t *f, u_int16_t v)
{
 int rewrite = 0;
 if (*f != v) {
  pf_cksum_fixup(pd->pcksum, *f, v, pd->proto);
  *f = v;
  rewrite = 1;
 }
 return (rewrite);
}
int
pf_patch_16_unaligned(struct pf_pdesc *pd, void *f, u_int16_t v, _Bool hi)
{
 int rewrite = 0;
 u_int8_t *fb = (u_int8_t*)f;
 u_int8_t *vb = (u_int8_t*)&v;
 if (hi && ((((unsigned long)(f)) & (sizeof(u_int16_t) - 1)) == 0)) {
  return (pf_patch_16(pd, f, v));
 }
 rewrite += pf_patch_8(pd, fb++, *vb++, hi);
 rewrite += pf_patch_8(pd, fb++, *vb++,!hi);
 return (rewrite);
}
int
pf_patch_32(struct pf_pdesc *pd, u_int32_t *f, u_int32_t v)
{
 int rewrite = 0;
 u_int16_t *pc = pd->pcksum;
 u_int8_t proto = pd->proto;
 if (proto == 17)
  panic("pf_patch_32: udp");
 pf_cksum_fixup(pc, *f / (1 << 16), v / (1 << 16), proto);
 pf_cksum_fixup(pc, *f % (1 << 16), v % (1 << 16), proto);
 *f = v;
 rewrite = 1;
 return (rewrite);
}
int
pf_patch_32_unaligned(struct pf_pdesc *pd, void *f, u_int32_t v, _Bool hi)
{
 int rewrite = 0;
 u_int8_t *fb = (u_int8_t*)f;
 u_int8_t *vb = (u_int8_t*)&v;
 if (hi && ((((unsigned long)(f)) & (sizeof(u_int32_t) - 1)) == 0)) {
  return (pf_patch_32(pd, f, v));
 }
 rewrite += pf_patch_8(pd, fb++, *vb++, hi);
 rewrite += pf_patch_8(pd, fb++, *vb++,!hi);
 rewrite += pf_patch_8(pd, fb++, *vb++, hi);
 rewrite += pf_patch_8(pd, fb++, *vb++,!hi);
 return (rewrite);
}
int
pf_icmp_mapping(struct pf_pdesc *pd, u_int8_t type, int *icmp_dir,
    u_int16_t *virtual_id, u_int16_t *virtual_type)
{
 *icmp_dir = PF_OUT;
 switch (pd->af) {
 case 2:
  switch (type) {
  case 8:
   *icmp_dir = PF_IN;
  case 0:
   *virtual_type = 8;
   *virtual_id = pd->hdr.icmp.icmp_hun.ih_idseq.icd_id;
   break;
  case 13:
   *icmp_dir = PF_IN;
  case 14:
   *virtual_type = 13;
   *virtual_id = pd->hdr.icmp.icmp_hun.ih_idseq.icd_id;
   break;
  case 15:
   *icmp_dir = PF_IN;
  case 16:
   *virtual_type = 15;
   *virtual_id = pd->hdr.icmp.icmp_hun.ih_idseq.icd_id;
   break;
  case 17:
   *icmp_dir = PF_IN;
  case 18:
   *virtual_type = 17;
   *virtual_id = pd->hdr.icmp.icmp_hun.ih_idseq.icd_id;
   break;
  case 33:
   *icmp_dir = PF_IN;
  case 34:
   *virtual_type = 33;
   *virtual_id = 0;
   break;
  case 35:
   *icmp_dir = PF_IN;
  case 36:
   *virtual_type = 35;
   *virtual_id = 0;
   break;
  case 10:
   *icmp_dir = PF_IN;
  case 9:
   *virtual_type = 10;
   *virtual_id = 0;
   break;
  case 3:
  case 4:
  case 5:
  case 11:
  case 12:
   *icmp_dir = PF_IN;
   *virtual_type = ((__uint16_t)(type));
   *virtual_id = 0;
   return (1);
  default:
   *icmp_dir = PF_IN;
   *virtual_type = type;
   *virtual_id = 0;
   break;
  }
  break;
 case 24:
  switch (type) {
  case 128:
   *icmp_dir = PF_IN;
  case 129:
   *virtual_type = 128;
   *virtual_id = pd->hdr.icmp6.icmp6_dataun.icmp6_un_data16[0];
   break;
  case 130:
  case 131: {
   struct mld_hdr *mld = &pd->hdr.mld;
   u_int32_t h;
   *icmp_dir = PF_IN;
   *virtual_type = 130;
   h = mld->mld_addr.__u6_addr.__u6_addr32[0] ^
       mld->mld_addr.__u6_addr.__u6_addr32[1] ^
       mld->mld_addr.__u6_addr.__u6_addr32[2] ^
       mld->mld_addr.__u6_addr.__u6_addr32[3];
   *virtual_id = (h >> 16) ^ (h & 0xffff);
   break;
  }
  case 139:
   *icmp_dir = PF_IN;
  case 140:
   *virtual_type = 139;
   *virtual_id = 0;
   break;
  case 201:
   *icmp_dir = PF_IN;
  case 200:
   *virtual_type = 201;
   *virtual_id = 0;
   break;
  case 135:
   *icmp_dir = PF_IN;
  case 136: {
   struct nd_neighbor_solicit *nd = &pd->hdr.nd_ns;
   u_int32_t h;
   *virtual_type = 135;
   h = nd->nd_ns_target.__u6_addr.__u6_addr32[0] ^
       nd->nd_ns_target.__u6_addr.__u6_addr32[1] ^
       nd->nd_ns_target.__u6_addr.__u6_addr32[2] ^
       nd->nd_ns_target.__u6_addr.__u6_addr32[3];
   *virtual_id = (h >> 16) ^ (h & 0xffff);
   break;
  }
  case 1:
  case 2:
  case 3:
  case 4:
   *icmp_dir = PF_IN;
   *virtual_type = ((__uint16_t)(type));
   *virtual_id = 0;
   return (1);
  default:
   *icmp_dir = PF_IN;
   *virtual_type = type;
   *virtual_id = 0;
   break;
  }
  break;
 }
 *virtual_type = ((__uint16_t)(*virtual_type));
 return (0);
}
void
pf_translate_icmp(struct pf_pdesc *pd, struct pf_addr *qa, u_int16_t *qp,
    struct pf_addr *oa, struct pf_addr *na, u_int16_t np)
{
 if (qp != ((void *)0))
  pf_patch_16(pd, qp, np);
 pf_cksum_fixup_a(pd->pcksum, qa, na, pd->af, pd->proto);
 pf_addrcpy(qa, na, pd->af);
 if (oa)
  pf_translate_a(pd, oa, na);
}
int
pf_translate_a(struct pf_pdesc *pd, struct pf_addr *a, struct pf_addr *an)
{
 int rewrite = 0;
 if (!((pd->af == 2 && (a)->pfa.addr32[0] != (an)->pfa.addr32[0]) || (pd->af == 24 && ((a)->pfa.addr32[3] != (an)->pfa.addr32[3] || (a)->pfa.addr32[2] != (an)->pfa.addr32[2] || (a)->pfa.addr32[1] != (an)->pfa.addr32[1] || (a)->pfa.addr32[0] != (an)->pfa.addr32[0]))))
  return (0);
 switch (pd->proto) {
 case 6:
 case 17:
 case 58:
  pf_cksum_fixup_a(pd->pcksum, a, an, pd->af, pd->proto);
  break;
 default:
  break;
 }
 pf_addrcpy(a, an, pd->af);
 rewrite = 1;
 return (rewrite);
}
int
pf_translate_af(struct pf_pdesc *pd)
{
 static const struct pf_addr zero;
 struct ip *ip4;
 struct ip6_hdr *ip6;
 int copyback = 0;
 u_int hlen, ohlen, dlen;
 u_int16_t *pc;
 u_int8_t af_proto, naf_proto;
 hlen = (pd->naf == 2) ? sizeof(*ip4) : sizeof(*ip6);
 ohlen = pd->off;
 dlen = pd->tot_len - pd->off;
 pc = pd->pcksum;
 af_proto = naf_proto = pd->proto;
 if (naf_proto == 1)
  af_proto = 58;
 if (naf_proto == 58)
  af_proto = 1;
 switch (af_proto) {
 case 58:
  pf_cksum_fixup(pc, ((__uint16_t)(af_proto)), 0x0, af_proto);
  pf_cksum_fixup(pc, ((__uint16_t)(dlen)), 0x0, af_proto);
 case 17:
 case 6:
  pf_cksum_fixup_a(pc, pd->src, &zero, pd->af, af_proto);
  pf_cksum_fixup_a(pc, pd->dst, &zero, pd->af, af_proto);
  copyback = 1;
  break;
 default:
  break;
 }
 m_adj(pd->m, pd->off);
 pd->src = ((void *)0);
 pd->dst = ((void *)0);
 if (((pd->m) = m_prepend((pd->m), (hlen), (0x0002))) == ((void *)0)) {
  pd->m = ((void *)0);
  return (-1);
 }
 pd->off = hlen;
 pd->tot_len += hlen - ohlen;
 switch (pd->naf) {
 case 2:
  ip4 = ((struct ip *)((pd->m)->m_hdr.mh_data));
  __builtin_bzero((ip4), (hlen));
  ip4->ip_v = 4;
  ip4->ip_hl = hlen >> 2;
  ip4->ip_tos = pd->tos;
  ip4->ip_len = ((__uint16_t)(hlen + dlen));
  ip4->ip_id = ((__uint16_t)(ip_randomid()));
  ip4->ip_off = ((__uint16_t)(0x4000));
  ip4->ip_ttl = pd->ttl;
  ip4->ip_p = pd->proto;
  ip4->ip_src = pd->nsaddr.pfa.v4;
  ip4->ip_dst = pd->ndaddr.pfa.v4;
  break;
 case 24:
  ip6 = ((struct ip6_hdr *)((pd->m)->m_hdr.mh_data));
  __builtin_bzero((ip6), (hlen));
  ip6->ip6_ctlun.ip6_un2_vfc = 0x60;
  ip6->ip6_ctlun.ip6_un1.ip6_un1_flow |= ((__uint32_t)((u_int32_t)pd->tos << 20));
  ip6->ip6_ctlun.ip6_un1.ip6_un1_plen = ((__uint16_t)(dlen));
  ip6->ip6_ctlun.ip6_un1.ip6_un1_nxt = pd->proto;
  if (!pd->ttl || pd->ttl > 64)
   ip6->ip6_ctlun.ip6_un1.ip6_un1_hlim = 64;
  else
   ip6->ip6_ctlun.ip6_un1.ip6_un1_hlim = pd->ttl;
  ip6->ip6_src = pd->nsaddr.pfa.v6;
  ip6->ip6_dst = pd->ndaddr.pfa.v6;
  break;
 default:
  unhandled_af(pd->naf);
 }
 if (naf_proto == 17 && *pc == 0x0000 &&
     pd->naf == 24) {
  pd->m->M_dat.MH.MH_pkthdr.csum_flags |= 0x0004;
 }
 switch (naf_proto) {
 case 58:
  pf_cksum_fixup(pc, 0x0, ((__uint16_t)(naf_proto)), naf_proto);
  pf_cksum_fixup(pc, 0x0, ((__uint16_t)(dlen)), naf_proto);
 case 17:
 case 6:
  pf_cksum_fixup_a(pc, &zero, &pd->nsaddr, pd->naf, naf_proto);
  pf_cksum_fixup_a(pc, &zero, &pd->ndaddr, pd->naf, naf_proto);
  copyback = 1;
  break;
 default:
  break;
 }
 if (copyback)
  m_copyback(pd->m, pd->off, pd->hdrlen, &pd->hdr, 0x0002);
 return (0);
}
int
pf_change_icmp_af(struct mbuf *m, int ipoff2, struct pf_pdesc *pd,
    struct pf_pdesc *pd2, struct pf_addr *src, struct pf_addr *dst,
    sa_family_t af, sa_family_t naf)
{
 struct mbuf *n = ((void *)0);
 struct ip *ip4;
 struct ip6_hdr *ip6;
 u_int hlen, ohlen, dlen;
 int d;
 if (af == naf || (af != 2 && af != 24) ||
     (naf != 2 && naf != 24))
  return (-1);
 if ((n = m_split(m, ipoff2, 0x0002)) == ((void *)0))
  return (-1);
 hlen = naf == 2 ? sizeof(*ip4) : sizeof(*ip6);
 ohlen = pd2->off - ipoff2;
 pf_cksum_uncover(pd->pcksum, in_cksum(n, ohlen), pd->proto);
 m_adj(n, ohlen);
 if (((n) = m_prepend((n), (hlen), (0x0002))) == ((void *)0))
  return (-1);
 switch (naf) {
 case 2:
  ip4 = ((struct ip *)((n)->m_hdr.mh_data));
  __builtin_bzero((ip4), (sizeof(*ip4)));
  ip4->ip_v = 4;
  ip4->ip_hl = sizeof(*ip4) >> 2;
  ip4->ip_len = ((__uint16_t)(sizeof(*ip4) + pd2->tot_len - ohlen));
  ip4->ip_id = ((__uint16_t)(ip_randomid()));
  ip4->ip_off = ((__uint16_t)(0x4000));
  ip4->ip_ttl = pd2->ttl;
  if (pd2->proto == 58)
   ip4->ip_p = 1;
  else
   ip4->ip_p = pd2->proto;
  ip4->ip_src = src->pfa.v4;
  ip4->ip_dst = dst->pfa.v4;
  ip4->ip_sum = in_cksum(n, ip4->ip_hl << 2);
  break;
 case 24:
  ip6 = ((struct ip6_hdr *)((n)->m_hdr.mh_data));
  __builtin_bzero((ip6), (sizeof(*ip6)));
  ip6->ip6_ctlun.ip6_un2_vfc = 0x60;
  ip6->ip6_ctlun.ip6_un1.ip6_un1_plen = ((__uint16_t)(pd2->tot_len - ohlen));
  if (pd2->proto == 1)
   ip6->ip6_ctlun.ip6_un1.ip6_un1_nxt = 58;
  else
   ip6->ip6_ctlun.ip6_un1.ip6_un1_nxt = pd2->proto;
  if (!pd2->ttl || pd2->ttl > 64)
   ip6->ip6_ctlun.ip6_un1.ip6_un1_hlim = 64;
  else
   ip6->ip6_ctlun.ip6_un1.ip6_un1_hlim = pd2->ttl;
  ip6->ip6_src = src->pfa.v6;
  ip6->ip6_dst = dst->pfa.v6;
  break;
 }
 if (naf != 2) {
  pf_cksum_cover(pd->pcksum, in_cksum(n, hlen), pd->proto);
 }
 {
  int nlen = n->M_dat.MH.MH_pkthdr.len;
  m_cat(m, n);
  m->M_dat.MH.MH_pkthdr.len += nlen;
 }
 d = hlen - ohlen;
 if (pd->proto == 58) {
  dlen = pd->tot_len - pd->off;
  pf_cksum_fixup(pd->pcksum,
      ((__uint16_t)(dlen)), ((__uint16_t)(dlen + d)), pd->proto);
 }
 pd->tot_len += d;
 pd2->tot_len += d;
 pd2->off += d;
 return (0);
}
int
pf_translate_icmp_af(struct pf_pdesc *pd, int af, void *arg)
{
 struct icmp *icmp4;
 struct icmp6_hdr *icmp6;
 u_int32_t mtu;
 int32_t ptr = -1;
 u_int8_t type;
 u_int8_t code;
 switch (af) {
 case 2:
  icmp6 = arg;
  type = icmp6->icmp6_type;
  code = icmp6->icmp6_code;
  mtu = ((__uint32_t)(icmp6->icmp6_dataun.icmp6_un_data32[0]));
  switch (type) {
  case 128:
   type = 8;
   break;
  case 129:
   type = 0;
   break;
  case 1:
   type = 3;
   switch (code) {
   case 0:
   case 2:
   case 3:
    code = 1;
    break;
   case 1:
    code = 10;
    break;
   case 4:
    code = 3;
    break;
   default:
    return (-1);
   }
   break;
  case 2:
   type = 3;
   code = 4;
   mtu -= 20;
   break;
  case 3:
   type = 11;
   break;
  case 4:
   switch (code) {
   case 0:
    type = 12;
    code = 0;
    ptr = ((__uint32_t)(icmp6->icmp6_dataun.icmp6_un_data32[0]));
    if (ptr == (__builtin_offsetof(struct ip6_hdr, ip6_ctlun.ip6_un2_vfc)))
     ;
    else if (ptr == (__builtin_offsetof(struct ip6_hdr, ip6_ctlun.ip6_un2_vfc)) + 1)
     ptr = (__builtin_offsetof(struct ip, ip_tos));
    else if (ptr == (__builtin_offsetof(struct ip6_hdr, ip6_ctlun.ip6_un1.ip6_un1_plen)) ||
        ptr == (__builtin_offsetof(struct ip6_hdr, ip6_ctlun.ip6_un1.ip6_un1_plen)) + 1)
     ptr = (__builtin_offsetof(struct ip, ip_len));
    else if (ptr == (__builtin_offsetof(struct ip6_hdr, ip6_ctlun.ip6_un1.ip6_un1_nxt)))
     ptr = (__builtin_offsetof(struct ip, ip_p));
    else if (ptr == (__builtin_offsetof(struct ip6_hdr, ip6_ctlun.ip6_un1.ip6_un1_hlim)))
     ptr = (__builtin_offsetof(struct ip, ip_ttl));
    else if (ptr >= (__builtin_offsetof(struct ip6_hdr, ip6_src)) &&
        ptr < (__builtin_offsetof(struct ip6_hdr, ip6_dst)))
     ptr = (__builtin_offsetof(struct ip, ip_src));
    else if (ptr >= (__builtin_offsetof(struct ip6_hdr, ip6_dst)) &&
        ptr < sizeof(struct ip6_hdr))
     ptr = (__builtin_offsetof(struct ip, ip_dst));
    else {
     return (-1);
    }
    break;
   case 1:
    type = 3;
    code = 2;
    break;
   default:
    return (-1);
   }
   break;
  default:
   return (-1);
  }
  pf_patch_8(pd, &icmp6->icmp6_type, type, (1));
  pf_patch_8(pd, &icmp6->icmp6_code, code, (!(1)));
  pf_patch_32(pd, &icmp6->icmp6_dataun.icmp6_un_data32[0], ((__uint32_t)(mtu)));
  if (ptr >= 0)
   pf_patch_32(pd, &icmp6->icmp6_dataun.icmp6_un_data32[0], ((__uint32_t)(ptr << 24)));
  break;
 case 24:
  icmp4 = arg;
  type = icmp4->icmp_type;
  code = icmp4->icmp_code;
  mtu = ((__uint16_t)(icmp4->icmp_hun.ih_pmtu.ipm_nextmtu));
  switch (type) {
  case 8:
   type = 128;
   break;
  case 0:
   type = 129;
   break;
  case 3:
   type = 1;
   switch (code) {
   case 0:
   case 1:
   case 6:
   case 7:
   case 8:
   case 11:
   case 12:
    code = 0;
    break;
   case 3:
    code = 4;
    break;
   case 9:
   case 10:
   case 13:
   case 15:
    code = 1;
    break;
   case 2:
    type = 4;
    code = 1;
    ptr = __builtin_offsetof(struct ip6_hdr, ip6_ctlun.ip6_un1.ip6_un1_nxt);
    break;
   case 4:
    type = 2;
    code = 0;
    mtu += 20;
    break;
   default:
    return (-1);
   }
   break;
  case 11:
   type = 3;
   break;
  case 12:
   type = 4;
   switch (code) {
   case 0:
    code = 0;
    break;
   case 2:
    code = 0;
    break;
   default:
    return (-1);
   }
   ptr = icmp4->icmp_hun.ih_pptr;
   if (ptr == 0 || ptr == (__builtin_offsetof(struct ip, ip_tos)))
    ;
   else if (ptr == (__builtin_offsetof(struct ip, ip_len)) ||
       ptr == (__builtin_offsetof(struct ip, ip_len)) + 1)
    ptr = (__builtin_offsetof(struct ip6_hdr, ip6_ctlun.ip6_un1.ip6_un1_plen));
   else if (ptr == (__builtin_offsetof(struct ip, ip_ttl)))
    ptr = (__builtin_offsetof(struct ip6_hdr, ip6_ctlun.ip6_un1.ip6_un1_hlim));
   else if (ptr == (__builtin_offsetof(struct ip, ip_p)))
    ptr = (__builtin_offsetof(struct ip6_hdr, ip6_ctlun.ip6_un1.ip6_un1_nxt));
   else if (ptr >= (__builtin_offsetof(struct ip, ip_src)) &&
       ptr < (__builtin_offsetof(struct ip, ip_dst)))
    ptr = (__builtin_offsetof(struct ip6_hdr, ip6_src));
   else if (ptr >= (__builtin_offsetof(struct ip, ip_dst)) &&
       ptr < sizeof(struct ip))
    ptr = (__builtin_offsetof(struct ip6_hdr, ip6_dst));
   else {
    return (-1);
   }
   break;
  default:
   return (-1);
  }
  pf_patch_8(pd, &icmp4->icmp_type, type, (1));
  pf_patch_8(pd, &icmp4->icmp_code, code, (!(1)));
  pf_patch_16(pd, &icmp4->icmp_hun.ih_pmtu.ipm_nextmtu, ((__uint16_t)(mtu)));
  if (ptr >= 0)
   pf_patch_32(pd, &icmp4->icmp_hun.ih_void, ((__uint32_t)(ptr)));
  break;
 }
 return (0);
}
int
pf_modulate_sack(struct pf_pdesc *pd, struct pf_state_peer *dst)
{
 struct tcphdr *th = &pd->hdr.tcp;
 int hlen = (th->th_off << 2) - sizeof(*th);
 int thoptlen = hlen;
 u_int8_t opts[40], *opt = opts;
 int copyback = 0, i, olen;
 struct sackblk sack;
 if (hlen < (8 + 2) || hlen > 40 || !pf_pull_hdr(
     pd->m, pd->off + sizeof(*th), opts, hlen, ((void *)0), ((void *)0), pd->af))
  return 0;
 while (hlen >= (8 + 2)) {
  olen = opt[1];
  switch (*opt) {
  case 0:
  case 1:
   opt++;
   hlen--;
   break;
  case 5:
   if (olen > hlen)
    olen = hlen;
   if (olen >= (8 + 2)) {
    for (i = 2; i + 8 <= olen;
        i += 8) {
     size_t startoff = (opt + i) - opts;
     __builtin_memcpy((&sack), (&opt[i]), (sizeof(sack)));
     pf_patch_32_unaligned(pd, &sack.start,
         ((__uint32_t)(((__uint32_t)(sack.start)) - dst->seqdiff)),
         (((startoff) % 2) == 0 ? (1) : (!(1))));
     pf_patch_32_unaligned(pd, &sack.end,
         ((__uint32_t)(((__uint32_t)(sack.end)) - dst->seqdiff)),
         (((startoff + sizeof(sack.start)) % 2) == 0 ? (1) : (!(1))));
     __builtin_memcpy((&opt[i]), (&sack), (sizeof(sack)));
    }
    copyback = 1;
   }
  default:
   if (olen < 2)
    olen = 2;
   hlen -= olen;
   opt += olen;
  }
 }
 if (copyback)
  m_copyback(pd->m, pd->off + sizeof(*th), thoptlen, opts,
      0x0002);
 return (copyback);
}
struct mbuf *
pf_build_tcp(const struct pf_rule *r, sa_family_t af,
    const struct pf_addr *saddr, const struct pf_addr *daddr,
    u_int16_t sport, u_int16_t dport, u_int32_t seq, u_int32_t ack,
    u_int8_t flags, u_int16_t win, u_int16_t mss, u_int8_t ttl, int tag,
    u_int16_t rtag, u_int sack, u_int rdom)
{
 struct mbuf *m;
 int len, tlen;
 struct ip *h;
 struct ip6_hdr *h6;
 struct tcphdr *th;
 char *opt;
 tlen = sizeof(struct tcphdr);
 if (mss)
  tlen += 4;
 if (sack)
  tlen += 2;
 switch (af) {
 case 2:
  len = sizeof(struct ip) + tlen;
  break;
 case 24:
  len = sizeof(struct ip6_hdr) + tlen;
  break;
 default:
  unhandled_af(af);
 }
 m = m_gethdr(0x0002, 2);
 if (m == ((void *)0))
  return (((void *)0));
 if (tag)
  m->M_dat.MH.MH_pkthdr.pf.flags |= 0x01;
 m->M_dat.MH.MH_pkthdr.pf.tag = rtag;
 m->M_dat.MH.MH_pkthdr.ph_rtableid = rdom;
 if (r && (r->scrub_flags & 0x0200))
  m->M_dat.MH.MH_pkthdr.pf.prio = r->set_prio[0];
 if (r && r->qid)
  m->M_dat.MH.MH_pkthdr.pf.qid = r->qid;
 m->m_hdr.mh_data += max_linkhdr;
 m->M_dat.MH.MH_pkthdr.len = m->m_hdr.mh_len = len;
 m->M_dat.MH.MH_pkthdr.ph_ifidx = 0;
 m->M_dat.MH.MH_pkthdr.csum_flags |= 0x0002;
 __builtin_bzero((m->m_hdr.mh_data), (len));
 switch (af) {
 case 2:
  h = ((struct ip *)((m)->m_hdr.mh_data));
  h->ip_p = 6;
  h->ip_len = ((__uint16_t)(tlen));
  h->ip_v = 4;
  h->ip_hl = sizeof(*h) >> 2;
  h->ip_tos = 0x10;
  h->ip_len = ((__uint16_t)(len));
  h->ip_off = ((__uint16_t)(ip_mtudisc ? 0x4000 : 0));
  h->ip_ttl = ttl ? ttl : ip_defttl;
  h->ip_sum = 0;
  h->ip_src.s_addr = saddr->pfa.v4.s_addr;
  h->ip_dst.s_addr = daddr->pfa.v4.s_addr;
  th = (struct tcphdr *)((caddr_t)h + sizeof(struct ip));
  break;
 case 24:
  h6 = ((struct ip6_hdr *)((m)->m_hdr.mh_data));
  h6->ip6_ctlun.ip6_un1.ip6_un1_nxt = 6;
  h6->ip6_ctlun.ip6_un1.ip6_un1_plen = ((__uint16_t)(tlen));
  h6->ip6_ctlun.ip6_un2_vfc |= 0x60;
  h6->ip6_ctlun.ip6_un1.ip6_un1_hlim = 64;
  __builtin_memcpy((&h6->ip6_src), (&saddr->pfa.v6), (sizeof(struct in6_addr)));
  __builtin_memcpy((&h6->ip6_dst), (&daddr->pfa.v6), (sizeof(struct in6_addr)));
  th = (struct tcphdr *)((caddr_t)h6 + sizeof(struct ip6_hdr));
  break;
 default:
  unhandled_af(af);
 }
 th->th_sport = sport;
 th->th_dport = dport;
 th->th_seq = ((__uint32_t)(seq));
 th->th_ack = ((__uint32_t)(ack));
 th->th_off = tlen >> 2;
 th->th_flags = flags;
 th->th_win = ((__uint16_t)(win));
 opt = (char *)(th + 1);
 if (mss) {
  opt[0] = 2;
  opt[1] = 4;
  mss = ((__uint16_t)(mss));
  __builtin_memcpy(((opt + 2)), (&mss), (2));
  opt += 4;
 }
 if (sack) {
  opt[0] = 4;
  opt[1] = 2;
  opt += 2;
 }
 return (m);
}
void
pf_send_tcp(const struct pf_rule *r, sa_family_t af,
    const struct pf_addr *saddr, const struct pf_addr *daddr,
    u_int16_t sport, u_int16_t dport, u_int32_t seq, u_int32_t ack,
    u_int8_t flags, u_int16_t win, u_int16_t mss, u_int8_t ttl, int tag,
    u_int16_t rtag, u_int rdom)
{
 struct mbuf *m;
 if ((m = pf_build_tcp(r, af, saddr, daddr, sport, dport, seq, ack,
     flags, win, mss, ttl, tag, rtag, 0, rdom)) == ((void *)0))
  return;
 switch (af) {
 case 2:
  ip_send(m);
  break;
 case 24:
  ip6_send(m);
  break;
 }
}
static void
pf_send_challenge_ack(struct pf_pdesc *pd, struct pf_state *s,
    struct pf_state_peer *src, struct pf_state_peer *dst)
{
 pf_send_tcp(s->rule.ptr, pd->af, pd->dst, pd->src,
     pd->hdr.tcp.th_dport, pd->hdr.tcp.th_sport, dst->seqlo,
     src->seqlo, 0x10, 0, 0, s->rule.ptr->return_ttl, 1, 0,
     pd->rdomain);
}
void
pf_send_icmp(struct mbuf *m, u_int8_t type, u_int8_t code, sa_family_t af,
    struct pf_rule *r, u_int rdomain)
{
 struct mbuf *m0;
 if ((m0 = m_copym(m, 0, 1000000000, 0x0002)) == ((void *)0))
  return;
 m0->M_dat.MH.MH_pkthdr.pf.flags |= 0x01;
 m0->M_dat.MH.MH_pkthdr.ph_rtableid = rdomain;
 if (r && (r->scrub_flags & 0x0200))
  m0->M_dat.MH.MH_pkthdr.pf.prio = r->set_prio[0];
 if (r && r->qid)
  m0->M_dat.MH.MH_pkthdr.pf.qid = r->qid;
 switch (af) {
 case 2:
  icmp_error(m0, type, code, 0, 0);
  break;
 case 24:
  icmp6_error(m0, type, code, 0);
  break;
 }
}
int
pf_match_addr(u_int8_t n, struct pf_addr *a, struct pf_addr *m,
    struct pf_addr *b, sa_family_t af)
{
 switch (af) {
 case 2:
  if ((a->pfa.addr32[0] & m->pfa.addr32[0]) ==
      (b->pfa.addr32[0] & m->pfa.addr32[0]))
   return (n == 0);
  break;
 case 24:
  if (((a->pfa.addr32[0] & m->pfa.addr32[0]) ==
       (b->pfa.addr32[0] & m->pfa.addr32[0])) &&
      ((a->pfa.addr32[1] & m->pfa.addr32[1]) ==
       (b->pfa.addr32[1] & m->pfa.addr32[1])) &&
      ((a->pfa.addr32[2] & m->pfa.addr32[2]) ==
       (b->pfa.addr32[2] & m->pfa.addr32[2])) &&
      ((a->pfa.addr32[3] & m->pfa.addr32[3]) ==
       (b->pfa.addr32[3] & m->pfa.addr32[3])))
   return (n == 0);
  break;
 }
 return (n != 0);
}
int
pf_match_addr_range(struct pf_addr *b, struct pf_addr *e,
    struct pf_addr *a, sa_family_t af)
{
 switch (af) {
 case 2:
  if ((((__uint32_t)(a->pfa.addr32[0])) < ((__uint32_t)(b->pfa.addr32[0]))) ||
      (((__uint32_t)(a->pfa.addr32[0])) > ((__uint32_t)(e->pfa.addr32[0]))))
   return (0);
  break;
 case 24: {
  int i;
  for (i = 0; i < 4; ++i)
   if (((__uint32_t)(a->pfa.addr32[i])) > ((__uint32_t)(b->pfa.addr32[i])))
    break;
   else if (((__uint32_t)(a->pfa.addr32[i])) < ((__uint32_t)(b->pfa.addr32[i])))
    return (0);
  for (i = 0; i < 4; ++i)
   if (((__uint32_t)(a->pfa.addr32[i])) < ((__uint32_t)(e->pfa.addr32[i])))
    break;
   else if (((__uint32_t)(a->pfa.addr32[i])) > ((__uint32_t)(e->pfa.addr32[i])))
    return (0);
  break;
 }
 }
 return (1);
}
int
pf_match(u_int8_t op, u_int32_t a1, u_int32_t a2, u_int32_t p)
{
 switch (op) {
 case PF_OP_IRG:
  return ((p > a1) && (p < a2));
 case PF_OP_XRG:
  return ((p < a1) || (p > a2));
 case PF_OP_RRG:
  return ((p >= a1) && (p <= a2));
 case PF_OP_EQ:
  return (p == a1);
 case PF_OP_NE:
  return (p != a1);
 case PF_OP_LT:
  return (p < a1);
 case PF_OP_LE:
  return (p <= a1);
 case PF_OP_GT:
  return (p > a1);
 case PF_OP_GE:
  return (p >= a1);
 }
 return (0);
}
int
pf_match_port(u_int8_t op, u_int16_t a1, u_int16_t a2, u_int16_t p)
{
 return (pf_match(op, ((__uint16_t)(a1)), ((__uint16_t)(a2)), ((__uint16_t)(p))));
}
int
pf_match_uid(u_int8_t op, uid_t a1, uid_t a2, uid_t u)
{
 if (u == 0xffffffffU && op != PF_OP_EQ && op != PF_OP_NE)
  return (0);
 return (pf_match(op, a1, a2, u));
}
int
pf_match_gid(u_int8_t op, gid_t a1, gid_t a2, gid_t g)
{
 if (g == 0xffffffffU && op != PF_OP_EQ && op != PF_OP_NE)
  return (0);
 return (pf_match(op, a1, a2, g));
}
int
pf_match_tag(struct mbuf *m, struct pf_rule *r, int *tag)
{
 if (*tag == -1)
  *tag = m->M_dat.MH.MH_pkthdr.pf.tag;
 return ((!r->match_tag_not && r->match_tag == *tag) ||
     (r->match_tag_not && r->match_tag != *tag));
}
int
pf_match_rcvif(struct mbuf *m, struct pf_rule *r)
{
 struct ifnet *ifp;
 struct pfi_kif *kif;
 ifp = if_get(m->M_dat.MH.MH_pkthdr.ph_ifidx);
 if (ifp == ((void *)0))
  return (0);
 if (ifp->if_data.ifi_type == 0xf7 && ifp->if_carp_ptr.carp_d)
  kif = (struct pfi_kif *)ifp->if_carp_ptr.carp_d->if_pf_kif;
 else
  kif = (struct pfi_kif *)ifp->if_pf_kif;
 if_put(ifp);
 if (kif == ((void *)0)) {
  do { if (pf_status.debug >= (3)) { log(3, "pf: "); addlog("%s: kif == NULL, @%d via %s", __func__, r->nr, r->rcv_ifname); addlog("\n"); } } while (0);
  return (0);
 }
 return (pfi_kif_match(r->rcv_kif, kif));
}
void
pf_tag_packet(struct mbuf *m, int tag, int rtableid)
{
 if (tag > 0)
  m->M_dat.MH.MH_pkthdr.pf.tag = tag;
 if (rtableid >= 0)
  m->M_dat.MH.MH_pkthdr.ph_rtableid = (u_int)rtableid;
}
enum pf_test_status
pf_step_into_anchor(struct pf_test_ctx *ctx, struct pf_rule *r)
{
 int rv;
 if (ctx->depth >= 64) {
  log(3, "pf_step_into_anchor: stack overflow\n");
  return (PF_TEST_FAIL);
 }
 ctx->depth++;
 if (r->anchor_wildcard) {
  struct pf_anchor *child;
  rv = PF_TEST_OK;
  for ((child) = pf_anchor_node_RB_MINMAX(&r->anchor->children, -1); (child) != ((void *)0); (child) = pf_anchor_node_RB_NEXT(child)) {
   rv = pf_match_rule(ctx, &child->ruleset);
   if ((rv == PF_TEST_QUICK) || (rv == PF_TEST_FAIL)) {
    break;
   }
  }
 } else {
  rv = pf_match_rule(ctx, &r->anchor->ruleset);
 }
 ctx->depth--;
 return (rv);
}
void
pf_poolmask(struct pf_addr *naddr, struct pf_addr *raddr,
    struct pf_addr *rmask, struct pf_addr *saddr, sa_family_t af)
{
 switch (af) {
 case 2:
  naddr->pfa.addr32[0] = (raddr->pfa.addr32[0] & rmask->pfa.addr32[0]) |
  ((rmask->pfa.addr32[0] ^ 0xffffffff ) & saddr->pfa.addr32[0]);
  break;
 case 24:
  naddr->pfa.addr32[0] = (raddr->pfa.addr32[0] & rmask->pfa.addr32[0]) |
  ((rmask->pfa.addr32[0] ^ 0xffffffff ) & saddr->pfa.addr32[0]);
  naddr->pfa.addr32[1] = (raddr->pfa.addr32[1] & rmask->pfa.addr32[1]) |
  ((rmask->pfa.addr32[1] ^ 0xffffffff ) & saddr->pfa.addr32[1]);
  naddr->pfa.addr32[2] = (raddr->pfa.addr32[2] & rmask->pfa.addr32[2]) |
  ((rmask->pfa.addr32[2] ^ 0xffffffff ) & saddr->pfa.addr32[2]);
  naddr->pfa.addr32[3] = (raddr->pfa.addr32[3] & rmask->pfa.addr32[3]) |
  ((rmask->pfa.addr32[3] ^ 0xffffffff ) & saddr->pfa.addr32[3]);
  break;
 default:
  unhandled_af(af);
 }
}
void
pf_addr_inc(struct pf_addr *addr, sa_family_t af)
{
 switch (af) {
 case 2:
  addr->pfa.addr32[0] = ((__uint32_t)(((__uint32_t)(addr->pfa.addr32[0])) + 1));
  break;
 case 24:
  if (addr->pfa.addr32[3] == 0xffffffff) {
   addr->pfa.addr32[3] = 0;
   if (addr->pfa.addr32[2] == 0xffffffff) {
    addr->pfa.addr32[2] = 0;
    if (addr->pfa.addr32[1] == 0xffffffff) {
     addr->pfa.addr32[1] = 0;
     addr->pfa.addr32[0] =
         ((__uint32_t)(((__uint32_t)(addr->pfa.addr32[0])) + 1));
    } else
     addr->pfa.addr32[1] =
         ((__uint32_t)(((__uint32_t)(addr->pfa.addr32[1])) + 1));
   } else
    addr->pfa.addr32[2] =
        ((__uint32_t)(((__uint32_t)(addr->pfa.addr32[2])) + 1));
  } else
   addr->pfa.addr32[3] =
       ((__uint32_t)(((__uint32_t)(addr->pfa.addr32[3])) + 1));
  break;
 default:
  unhandled_af(af);
 }
}
int
pf_socket_lookup(struct pf_pdesc *pd)
{
 struct pf_addr *saddr, *daddr;
 u_int16_t sport, dport;
 struct inpcbtable *tb;
 struct inpcb *inp;
 pd->lookup.uid = 0xffffffffU;
 pd->lookup.gid = 0xffffffffU;
 pd->lookup.pid = (99999 +1);
 switch (pd->virtual_proto) {
 case 6:
  sport = pd->hdr.tcp.th_sport;
  dport = pd->hdr.tcp.th_dport;
  (void)(0);
  tb = &tcbtable;
  break;
 case 17:
  sport = pd->hdr.udp.uh_sport;
  dport = pd->hdr.udp.uh_dport;
  (void)(0);
  tb = &udbtable;
  break;
 default:
  return (-1);
 }
 if (pd->dir == PF_IN) {
  saddr = pd->src;
  daddr = pd->dst;
 } else {
  u_int16_t p;
  p = sport;
  sport = dport;
  dport = p;
  saddr = pd->dst;
  daddr = pd->src;
 }
 switch (pd->af) {
 case 2:
  inp = in_pcbhashlookup(tb, saddr->pfa.v4, sport, daddr->pfa.v4, dport,
      pd->rdomain);
  if (inp == ((void *)0)) {
   inp = in_pcblookup_listen(tb, daddr->pfa.v4, dport, 0,
       ((void *)0), pd->rdomain);
   if (inp == ((void *)0))
    return (-1);
  }
  break;
 case 24:
  inp = in6_pcbhashlookup(tb, &saddr->pfa.v6, sport, &daddr->pfa.v6,
      dport, pd->rdomain);
  if (inp == ((void *)0)) {
   inp = in6_pcblookup_listen(tb, &daddr->pfa.v6, dport, 0,
       ((void *)0), pd->rdomain);
   if (inp == ((void *)0))
    return (-1);
  }
  break;
 default:
  unhandled_af(pd->af);
 }
 pd->lookup.uid = inp->inp_socket->so_euid;
 pd->lookup.gid = inp->inp_socket->so_egid;
 pd->lookup.pid = inp->inp_socket->so_cpid;
 return (1);
}
u_int8_t
pf_get_wscale(struct pf_pdesc *pd)
{
 struct tcphdr *th = &pd->hdr.tcp;
 int hlen;
 u_int8_t hdr[60];
 u_int8_t *opt, optlen;
 u_int8_t wscale = 0;
 hlen = th->th_off << 2;
 if (hlen <= sizeof(struct tcphdr))
  return (0);
 if (!pf_pull_hdr(pd->m, pd->off, hdr, hlen, ((void *)0), ((void *)0), pd->af))
  return (0);
 opt = hdr + sizeof(struct tcphdr);
 hlen -= sizeof(struct tcphdr);
 while (hlen >= 3) {
  switch (*opt) {
  case 0:
  case 1:
   ++opt;
   --hlen;
   break;
  case 3:
   wscale = opt[2];
   if (wscale > 14)
    wscale = 14;
   wscale |= 0x80;
  default:
   optlen = opt[1];
   if (optlen < 2)
    optlen = 2;
   hlen -= optlen;
   opt += optlen;
   break;
  }
 }
 return (wscale);
}
u_int16_t
pf_get_mss(struct pf_pdesc *pd)
{
 struct tcphdr *th = &pd->hdr.tcp;
 int hlen;
 u_int8_t hdr[60];
 u_int8_t *opt, optlen;
 u_int16_t mss = tcp_mssdflt;
 hlen = th->th_off << 2;
 if (hlen <= sizeof(struct tcphdr))
  return (0);
 if (!pf_pull_hdr(pd->m, pd->off, hdr, hlen, ((void *)0), ((void *)0), pd->af))
  return (0);
 opt = hdr + sizeof(struct tcphdr);
 hlen -= sizeof(struct tcphdr);
 while (hlen >= 4) {
  switch (*opt) {
  case 0:
  case 1:
   ++opt;
   --hlen;
   break;
  case 2:
   __builtin_memcpy((&mss), ((opt + 2)), (2));
   mss = ((__uint16_t)(mss));
  default:
   optlen = opt[1];
   if (optlen < 2)
    optlen = 2;
   hlen -= optlen;
   opt += optlen;
   break;
  }
 }
 return (mss);
}
u_int16_t
pf_calc_mss(struct pf_addr *addr, sa_family_t af, int rtableid, u_int16_t offer)
{
 struct ifnet *ifp;
 struct sockaddr_in *dst;
 struct sockaddr_in6 *dst6;
 struct rtentry *rt = ((void *)0);
 struct sockaddr_storage ss;
 int hlen;
 u_int16_t mss = tcp_mssdflt;
 __builtin_memset((&ss), (0), (sizeof(ss)));
 switch (af) {
 case 2:
  hlen = sizeof(struct ip);
  dst = (struct sockaddr_in *)&ss;
  dst->sin_family = 2;
  dst->sin_len = sizeof(*dst);
  dst->sin_addr = addr->pfa.v4;
  rt = rtalloc(sintosa(dst), 0, rtableid);
  break;
 case 24:
  hlen = sizeof(struct ip6_hdr);
  dst6 = (struct sockaddr_in6 *)&ss;
  dst6->sin6_family = 24;
  dst6->sin6_len = sizeof(*dst6);
  dst6->sin6_addr = addr->pfa.v6;
  rt = rtalloc(sin6tosa(dst6), 0, rtableid);
  break;
 }
 if (rt != ((void *)0) && (ifp = if_get(rt->rt_ifidx)) != ((void *)0)) {
  mss = ifp->if_data.ifi_mtu - hlen - sizeof(struct tcphdr);
  mss = max(tcp_mssdflt, mss);
  if_put(ifp);
 }
 rtfree(rt);
 mss = min(mss, offer);
 mss = max(mss, 64);
 return (mss);
}
static __inline int
pf_set_rt_ifp(struct pf_state *s, struct pf_addr *saddr, sa_family_t af)
{
 struct pf_rule *r = s->rule.ptr;
 struct pf_src_node *sns[PF_SN_MAX];
 int rv;
 s->rt_kif = ((void *)0);
 if (!r->rt)
  return (0);
 __builtin_bzero((sns), (sizeof(sns)));
 switch (af) {
 case 2:
  rv = pf_map_addr(2, r, saddr, &s->rt_addr, ((void *)0), sns,
      &r->route, PF_SN_ROUTE);
  break;
 case 24:
  rv = pf_map_addr(24, r, saddr, &s->rt_addr, ((void *)0), sns,
      &r->route, PF_SN_ROUTE);
  break;
 default:
  rv = 1;
 }
 if (rv == 0) {
  s->rt_kif = r->route.kif;
  s->natrule.ptr = r;
 }
 return (rv);
}
u_int32_t
pf_tcp_iss(struct pf_pdesc *pd)
{
 SHA2_CTX ctx;
 union {
  uint8_t bytes[64];
  uint32_t words[1];
 } digest;
 if (pf_tcp_secret_init == 0) {
  arc4random_buf(pf_tcp_secret, sizeof(pf_tcp_secret));
  SHA512Init(&pf_tcp_secret_ctx);
  SHA512Update(&pf_tcp_secret_ctx, pf_tcp_secret,
      sizeof(pf_tcp_secret));
  pf_tcp_secret_init = 1;
 }
 ctx = pf_tcp_secret_ctx;
 SHA512Update(&ctx, &pd->rdomain, sizeof(pd->rdomain));
 SHA512Update(&ctx, &pd->hdr.tcp.th_sport, sizeof(u_short));
 SHA512Update(&ctx, &pd->hdr.tcp.th_dport, sizeof(u_short));
 switch (pd->af) {
 case 2:
  SHA512Update(&ctx, &pd->src->pfa.v4, sizeof(struct in_addr));
  SHA512Update(&ctx, &pd->dst->pfa.v4, sizeof(struct in_addr));
  break;
 case 24:
  SHA512Update(&ctx, &pd->src->pfa.v6, sizeof(struct in6_addr));
  SHA512Update(&ctx, &pd->dst->pfa.v6, sizeof(struct in6_addr));
  break;
 }
 SHA512Final(digest.bytes, &ctx);
 pf_tcp_iss_off += 4096;
 return (digest.words[0] + tcp_iss + pf_tcp_iss_off);
}
void
pf_rule_to_actions(struct pf_rule *r, struct pf_rule_actions *a)
{
 if (r->qid)
  a->qid = r->qid;
 if (r->pqid)
  a->pqid = r->pqid;
 if (r->rtableid >= 0)
  a->rtableid = r->rtableid;
 a->log |= r->log;
 if (r->scrub_flags & 0x0040)
  a->set_tos = r->set_tos;
 if (r->min_ttl)
  a->min_ttl = r->min_ttl;
 if (r->max_mss)
  a->max_mss = r->max_mss;
 a->flags |= (r->scrub_flags & (0x0020|0x0080|
     0x0040|0x0100|0x0200));
 if (r->scrub_flags & 0x0200) {
  a->set_prio[0] = r->set_prio[0];
  a->set_prio[1] = r->set_prio[1];
 }
}
enum pf_test_status
pf_match_rule(struct pf_test_ctx *ctx, struct pf_ruleset *ruleset)
{
 struct pf_rule *r;
 r = ((ruleset->rules.active.ptr)->tqh_first);
 while (r != ((void *)0)) {
  r->evaluations++;
  if ((pfi_kif_match(r->kif, ctx->pd->kif) == r->ifnot)) { r = r->skip[0].ptr; continue; } else do { } while (0);
  if ((r->direction && r->direction != ctx->pd->dir)) { r = r->skip[1].ptr; continue; } else do { } while (0);
  if ((r->onrdomain >= 0 && (r->onrdomain == ctx->pd->rdomain) == r->ifnot)) { r = r->skip[2].ptr; continue; } else do { } while (0);
  if ((r->af && r->af != ctx->pd->af)) { r = r->skip[3].ptr; continue; } else do { } while (0);
  if ((r->proto && r->proto != ctx->pd->proto)) { r = r->skip[4].ptr; continue; } else do { } while (0);
  if ((( (((&r->src.addr)->type == PF_ADDR_NOROUTE && pf_routable((&ctx->pd->nsaddr), (ctx->pd->naf), ((void *)0), (ctx->act.rtableid))) || (((&r->src.addr)->type == PF_ADDR_URPFFAILED && (ctx->pd->kif) != ((void *)0) && pf_routable((&ctx->pd->nsaddr), (ctx->pd->naf), (ctx->pd->kif), (ctx->act.rtableid))) || ((&r->src.addr)->type == PF_ADDR_RTLABEL && !pf_rtlabel_match((&ctx->pd->nsaddr), (ctx->pd->naf), (&r->src.addr), (ctx->act.rtableid))) || ((&r->src.addr)->type == PF_ADDR_TABLE && !pfr_match_addr((&r->src.addr)->p.tbl, (&ctx->pd->nsaddr), (ctx->pd->naf))) || ((&r->src.addr)->type == PF_ADDR_DYNIFTL && !pfi_match_addr((&r->src.addr)->p.dyn, (&ctx->pd->nsaddr), (ctx->pd->naf))) || ((&r->src.addr)->type == PF_ADDR_RANGE && !pf_match_addr_range(&(&r->src.addr)->v.a.addr, &(&r->src.addr)->v.a.mask, (&ctx->pd->nsaddr), (ctx->pd->naf))) || ((&r->src.addr)->type == PF_ADDR_ADDRMASK && !(((ctx->pd->naf) == 2 && !(&(&r->src.addr)->v.a.mask)->pfa.addr32[0]) || ((ctx->pd->naf) == 24 && !(&(&r->src.addr)->v.a.mask)->pfa.addr32[0] && !(&(&r->src.addr)->v.a.mask)->pfa.addr32[1] && !(&(&r->src.addr)->v.a.mask)->pfa.addr32[2] && !(&(&r->src.addr)->v.a.mask)->pfa.addr32[3] )) && !pf_match_addr(0, &(&r->src.addr)->v.a.addr, &(&r->src.addr)->v.a.mask, (&ctx->pd->nsaddr), (ctx->pd->naf))))) != (r->src.neg) ))) { r = r->skip[5].ptr; continue; } else do { } while (0);
  if ((( (((&r->dst.addr)->type == PF_ADDR_NOROUTE && pf_routable((&ctx->pd->ndaddr), (ctx->pd->af), ((void *)0), (ctx->act.rtableid))) || (((&r->dst.addr)->type == PF_ADDR_URPFFAILED && (((void *)0)) != ((void *)0) && pf_routable((&ctx->pd->ndaddr), (ctx->pd->af), (((void *)0)), (ctx->act.rtableid))) || ((&r->dst.addr)->type == PF_ADDR_RTLABEL && !pf_rtlabel_match((&ctx->pd->ndaddr), (ctx->pd->af), (&r->dst.addr), (ctx->act.rtableid))) || ((&r->dst.addr)->type == PF_ADDR_TABLE && !pfr_match_addr((&r->dst.addr)->p.tbl, (&ctx->pd->ndaddr), (ctx->pd->af))) || ((&r->dst.addr)->type == PF_ADDR_DYNIFTL && !pfi_match_addr((&r->dst.addr)->p.dyn, (&ctx->pd->ndaddr), (ctx->pd->af))) || ((&r->dst.addr)->type == PF_ADDR_RANGE && !pf_match_addr_range(&(&r->dst.addr)->v.a.addr, &(&r->dst.addr)->v.a.mask, (&ctx->pd->ndaddr), (ctx->pd->af))) || ((&r->dst.addr)->type == PF_ADDR_ADDRMASK && !(((ctx->pd->af) == 2 && !(&(&r->dst.addr)->v.a.mask)->pfa.addr32[0]) || ((ctx->pd->af) == 24 && !(&(&r->dst.addr)->v.a.mask)->pfa.addr32[0] && !(&(&r->dst.addr)->v.a.mask)->pfa.addr32[1] && !(&(&r->dst.addr)->v.a.mask)->pfa.addr32[2] && !(&(&r->dst.addr)->v.a.mask)->pfa.addr32[3] )) && !pf_match_addr(0, &(&r->dst.addr)->v.a.addr, &(&r->dst.addr)->v.a.mask, (&ctx->pd->ndaddr), (ctx->pd->af))))) != (r->dst.neg) ))) { r = r->skip[6].ptr; continue; } else do { } while (0);
  switch (ctx->pd->virtual_proto) {
  case 256:
   if ((r->src.port_op || r->dst.port_op)) { r = ((r)->entries.tqe_next); continue; } else do { } while (0);
   if ((ctx->pd->proto == 6 && r->flagset)) { r = ((r)->entries.tqe_next); continue; } else do { } while (0);
   if ((r->type || r->code)) { r = ((r)->entries.tqe_next); continue; } else do { } while (0);
   if ((r->gid.op || r->uid.op)) { r = ((r)->entries.tqe_next); continue; } else do { } while (0);
   break;
  case 6:
   if (((r->flagset & ctx->th->th_flags) != r->flags)) { r = ((r)->entries.tqe_next); continue; } else do { } while (0);
   if ((r->os_fingerprint != ((pf_osfp_t)0) && !pf_osfp_match(pf_osfp_fingerprint(ctx->pd), r->os_fingerprint))) { r = ((r)->entries.tqe_next); continue; } else do { } while (0);
  case 17:
   if ((r->src.port_op && !pf_match_port(r->src.port_op, r->src.port[0], r->src.port[1], ctx->pd->nsport))) { r = r->skip[7].ptr; continue; } else do { } while (0);
   if ((r->dst.port_op && !pf_match_port(r->dst.port_op, r->dst.port[0], r->dst.port[1], ctx->pd->ndport))) { r = r->skip[8].ptr; continue; } else do { } while (0);
   if ((r->uid.op && (ctx->pd->lookup.done || (ctx->pd->lookup.done = pf_socket_lookup(ctx->pd), 1)) && !pf_match_uid(r->uid.op, r->uid.uid[0], r->uid.uid[1], ctx->pd->lookup.uid))) { r = ((r)->entries.tqe_next); continue; } else do { } while (0);
   if ((r->gid.op && (ctx->pd->lookup.done || (ctx->pd->lookup.done = pf_socket_lookup(ctx->pd), 1)) && !pf_match_gid(r->gid.op, r->gid.gid[0], r->gid.gid[1], ctx->pd->lookup.gid))) { r = ((r)->entries.tqe_next); continue; } else do { } while (0);
   break;
  case 1:
  case 58:
   if ((r->type && r->type != ctx->icmptype + 1)) { r = ((r)->entries.tqe_next); continue; } else do { } while (0);
   if ((r->code && r->code != ctx->icmpcode + 1)) { r = ((r)->entries.tqe_next); continue; } else do { } while (0);
   if ((r->keep_state && !ctx->state_icmp && (r->rule_flag & 0x00020000) == 0 && ctx->icmp_dir != PF_IN)) { r = ((r)->entries.tqe_next); continue; } else do { } while (0);
   break;
  default:
   break;
  }
  if ((r->rule_flag & 0x0002 && ctx->pd->virtual_proto != 256)) { r = ((r)->entries.tqe_next); continue; } else do { } while (0);
  if ((r->tos && !(r->tos == ctx->pd->tos))) { r = ((r)->entries.tqe_next); continue; } else do { } while (0);
  if ((r->prob && r->prob <= arc4random_uniform(0xffffffffU - 1) + 1)) { r = ((r)->entries.tqe_next); continue; } else do { } while (0);
  if ((r->match_tag && !pf_match_tag(ctx->pd->m, r, &ctx->tag))) { r = ((r)->entries.tqe_next); continue; } else do { } while (0);
  if ((r->rcv_kif && pf_match_rcvif(ctx->pd->m, r) == r->rcvifnot)) { r = ((r)->entries.tqe_next); continue; } else do { } while (0);
  if ((r->prio && (r->prio == 0xff ? 0 : r->prio) != ctx->pd->m->M_dat.MH.MH_pkthdr.pf.prio)) { r = ((r)->entries.tqe_next); continue; } else do { } while (0);
  if (r->tag)
   ctx->tag = r->tag;
  if (r->anchor == ((void *)0)) {
   if (r->action == PF_MATCH) {
    if ((ctx->ri = pool_get(&pf_rule_item_pl,
        0x0002)) == ((void *)0)) {
     do { if ((void *)(&ctx->reason) != ((void *)0)) { *(&ctx->reason) = (5); if (5 < 17) pf_status.counters[5]++; } } while (0);
     ctx->test_status = PF_TEST_FAIL;
     break;
    }
    ctx->ri->r = r;
    do { (ctx->ri)->entry.sle_next = (&ctx->rules)->slh_first; (&ctx->rules)->slh_first = (ctx->ri); } while (0);
    ctx->ri = ((void *)0);
    pf_rule_to_actions(r, &ctx->act);
    if (r->rule_flag & 0x00200000)
     ctx->pd->naf = r->naf;
    if (pf_get_transaddr(r, ctx->pd, ctx->sns,
        &ctx->nr) == -1) {
     do { if ((void *)(&ctx->reason) != ((void *)0)) { *(&ctx->reason) = (15); if (15 < 17) pf_status.counters[15]++; } } while (0);
     ctx->test_status = PF_TEST_FAIL;
     break;
    }
    if (r->log) {
     do { if ((void *)(&ctx->reason) != ((void *)0)) { *(&ctx->reason) = (0); if (0 < 17) pf_status.counters[0]++; } } while (0);
     pflog_packet(ctx->pd,ctx->reason,r,ctx->a,ruleset,((void *)0));
    }
   } else {
    *ctx->rm = r;
    *ctx->am = ctx->a;
    *ctx->rsm = ruleset;
    ctx->arsm = ctx->aruleset;
   }
   if (ctx->act.log & 0x10)
    pf_log_matches(ctx->pd, r, ctx->a, ruleset,
        &ctx->rules);
   if (r->quick) {
    ctx->test_status = PF_TEST_QUICK;
    break;
   }
  } else {
   ctx->a = r;
   ctx->aruleset = ruleset;
   if (pf_step_into_anchor(ctx, r) != PF_TEST_OK) {
    break;
   }
  }
  r = ((r)->entries.tqe_next);
 }
 return (ctx->test_status);
}
int
pf_test_rule(struct pf_pdesc *pd, struct pf_rule **rm, struct pf_state **sm,
    struct pf_rule **am, struct pf_ruleset **rsm, u_short *reason)
{
 struct pf_rule *r = ((void *)0);
 struct pf_rule *a = ((void *)0);
 struct pf_ruleset *ruleset = ((void *)0);
 struct pf_state_key *skw = ((void *)0), *sks = ((void *)0);
 int rewrite = 0;
 u_int16_t virtual_type, virtual_id;
 int action = PF_DROP;
 struct pf_test_ctx ctx;
 int rv;
 __builtin_bzero((&ctx), (sizeof(ctx)));
 ctx.pd = pd;
 ctx.rm = rm;
 ctx.am = am;
 ctx.rsm = rsm;
 ctx.th = &pd->hdr.tcp;
 ctx.act.rtableid = pd->rdomain;
 ctx.tag = -1;
 { ((&ctx.rules)->slh_first) = ((void *)0); };
 if (pd->dir == PF_IN && if_congested()) {
  do { if ((void *)(&ctx.reason) != ((void *)0)) { *(&ctx.reason) = (7); if (7 < 17) pf_status.counters[7]++; } } while (0);
  return (PF_DROP);
 }
 switch (pd->virtual_proto) {
 case 1:
  ctx.icmptype = pd->hdr.icmp.icmp_type;
  ctx.icmpcode = pd->hdr.icmp.icmp_code;
  ctx.state_icmp = pf_icmp_mapping(pd, ctx.icmptype,
      &ctx.icmp_dir, &virtual_id, &virtual_type);
  if (ctx.icmp_dir == PF_IN) {
   pd->osport = pd->nsport = virtual_id;
   pd->odport = pd->ndport = virtual_type;
  } else {
   pd->osport = pd->nsport = virtual_type;
   pd->odport = pd->ndport = virtual_id;
  }
  break;
 case 58:
  ctx.icmptype = pd->hdr.icmp6.icmp6_type;
  ctx.icmpcode = pd->hdr.icmp6.icmp6_code;
  ctx.state_icmp = pf_icmp_mapping(pd, ctx.icmptype,
      &ctx.icmp_dir, &virtual_id, &virtual_type);
  if (ctx.icmp_dir == PF_IN) {
   pd->osport = pd->nsport = virtual_id;
   pd->odport = pd->ndport = virtual_type;
  } else {
   pd->osport = pd->nsport = virtual_type;
   pd->odport = pd->ndport = virtual_id;
  }
  break;
 }
 ruleset = &pf_main_anchor.ruleset;
 rv = pf_match_rule(&ctx, ruleset);
 if (rv == PF_TEST_FAIL) {
  goto cleanup;
 }
 r = *ctx.rm;
 a = *ctx.am;
 ruleset = *ctx.rsm;
 ctx.aruleset = ctx.arsm;
 pf_rule_to_actions(r, &ctx.act);
 if (r->rule_flag & 0x00200000)
  pd->naf = r->naf;
 if (pf_get_transaddr(r, pd, ctx.sns, &ctx.nr) == -1) {
  do { if ((void *)(&ctx.reason) != ((void *)0)) { *(&ctx.reason) = (15); if (15 < 17) pf_status.counters[15]++; } } while (0);
  goto cleanup;
 }
 do { if ((void *)(&ctx.reason) != ((void *)0)) { *(&ctx.reason) = (0); if (0 < 17) pf_status.counters[0]++; } } while (0);
 if (r->log)
  pflog_packet(pd,ctx.reason,r,ctx.a,ruleset,((void *)0));
 if (ctx.act.log & 0x10)
  pf_log_matches(pd, r, ctx.a, ruleset, &ctx.rules);
 if (pd->virtual_proto != 256 &&
     (r->action == PF_DROP) &&
     ((r->rule_flag & 0x0001) ||
     (r->rule_flag & 0x0004) ||
     (r->rule_flag & 0x0008))) {
  if (pd->proto == 6 &&
      ((r->rule_flag & 0x0001) ||
      (r->rule_flag & 0x0008)) &&
      !(ctx.th->th_flags & 0x04)) {
   u_int32_t ack =
       ((__uint32_t)(ctx.th->th_seq)) + pd->p_len;
   if (pf_check_tcp_cksum(pd->m, pd->off,
       pd->tot_len - pd->off, pd->af))
    do { if ((void *)(&ctx.reason) != ((void *)0)) { *(&ctx.reason) = (9); if (9 < 17) pf_status.counters[9]++; } } while (0);
   else {
    if (ctx.th->th_flags & 0x02)
     ack++;
    if (ctx.th->th_flags & 0x01)
     ack++;
    pf_send_tcp(r, pd->af, pd->dst,
        pd->src, ctx.th->th_dport,
        ctx.th->th_sport, ((__uint32_t)(ctx.th->th_ack)),
        ack, 0x04|0x10, 0, 0, r->return_ttl,
        1, 0, pd->rdomain);
   }
  } else if ((pd->proto != 1 ||
      ((ctx.icmptype) == 0 || (ctx.icmptype) == 8 || (ctx.icmptype) == 9 || (ctx.icmptype) == 10 || (ctx.icmptype) == 13 || (ctx.icmptype) == 14 || (ctx.icmptype) == 15 || (ctx.icmptype) == 16 || (ctx.icmptype) == 17 || (ctx.icmptype) == 18)) && pd->af == 2 &&
      r->return_icmp)
   pf_send_icmp(pd->m, r->return_icmp >> 8,
       r->return_icmp & 255, pd->af, r, pd->rdomain);
  else if ((pd->proto != 58 ||
      (ctx.icmptype >= 128 &&
      ctx.icmptype != 137)) && pd->af == 24 &&
      r->return_icmp6)
   pf_send_icmp(pd->m, r->return_icmp6 >> 8,
       r->return_icmp6 & 255, pd->af, r, pd->rdomain);
 }
 if (r->action == PF_DROP)
  goto cleanup;
 pf_tag_packet(pd->m, ctx.tag, ctx.act.rtableid);
 if (ctx.act.rtableid >= 0 &&
     rtable_l2(ctx.act.rtableid) != pd->rdomain)
  pd->destchg = 1;
 if (r->action == PF_PASS && pd->badopts && ! r->allow_opts) {
  do { if ((void *)(&ctx.reason) != ((void *)0)) { *(&ctx.reason) = (8); if (8 < 17) pf_status.counters[8]++; } } while (0);
  pd->pflog |= 0x08;
  do { if (pf_status.debug >= (5)) { log(5, "pf: "); addlog("dropping packet with " "ip/ipv6 options in pf_test_rule()"); addlog("\n"); } } while (0);
  goto cleanup;
 }
 action = PF_PASS;
 if (pd->virtual_proto != 256
     && !ctx.state_icmp && r->keep_state) {
  if (r->rule_flag & 0x0020 &&
      pf_insert_src_node(&ctx.sns[PF_SN_NONE], r, PF_SN_NONE,
      pd->af, pd->src, ((void *)0)) != 0) {
   do { if ((void *)(&ctx.reason) != ((void *)0)) { *(&ctx.reason) = (13); if (13 < 17) pf_status.counters[13]++; } } while (0);
   goto cleanup;
  }
  if (r->max_states && (r->states_cur >= r->max_states)) {
   pf_status.lcounters[0]++;
   do { if ((void *)(&ctx.reason) != ((void *)0)) { *(&ctx.reason) = (12); if (12 < 17) pf_status.counters[12]++; } } while (0);
   goto cleanup;
  }
  action = pf_create_state(pd, r, a, ctx.nr, &skw, &sks,
      &rewrite, sm, ctx.tag, &ctx.rules, &ctx.act, ctx.sns);
  if (action != PF_PASS)
   goto cleanup;
  if (sks != skw) {
   struct pf_state_key *sk;
   if (pd->dir == PF_IN)
    sk = sks;
   else
    sk = skw;
   rewrite += pf_translate(pd,
       &sk->addr[pd->af == pd->naf ? pd->sidx : pd->didx],
       sk->port[pd->af == pd->naf ? pd->sidx : pd->didx],
       &sk->addr[pd->af == pd->naf ? pd->didx : pd->sidx],
       sk->port[pd->af == pd->naf ? pd->didx : pd->sidx],
       virtual_type, ctx.icmp_dir);
  }
  if (rewrite && skw->af != sks->af)
   action = PF_AFRT;
 } else {
  while ((ctx.ri = ((&ctx.rules)->slh_first))) {
   do { (&ctx.rules)->slh_first = (&ctx.rules)->slh_first->entry.sle_next; } while (0);
   pool_put(&pf_rule_item_pl, ctx.ri);
  }
 }
 if (rewrite && pd->hdrlen) {
  m_copyback(pd->m, pd->off, pd->hdrlen, &pd->hdr, 0x0002);
 }
 if (*sm != ((void *)0) && !(((*sm)->state_flags) & (0x0008)) &&
     pd->dir == PF_OUT && pfsync_up()) {
  if (pfsync_defer(*sm, pd->m))
   return (PF_DEFER);
 }
 if (r->rule_flag & 0x00100000) {
  r->rule_flag |= 0x00400000;
  r->exptime = time_second;
  do { (r)->gcle.sle_next = (&pf_rule_gcl)->slh_first; (&pf_rule_gcl)->slh_first = (r); } while (0);
 }
 return (action);
cleanup:
 while ((ctx.ri = ((&ctx.rules)->slh_first))) {
  do { (&ctx.rules)->slh_first = (&ctx.rules)->slh_first->entry.sle_next; } while (0);
  pool_put(&pf_rule_item_pl, ctx.ri);
 }
 return (action);
}
static __inline int
pf_create_state(struct pf_pdesc *pd, struct pf_rule *r, struct pf_rule *a,
    struct pf_rule *nr, struct pf_state_key **skw, struct pf_state_key **sks,
    int *rewrite, struct pf_state **sm, int tag, struct pf_rule_slist *rules,
    struct pf_rule_actions *act, struct pf_src_node *sns[PF_SN_MAX])
{
 struct pf_state *s = ((void *)0);
 struct tcphdr *th = &pd->hdr.tcp;
 u_int16_t mss = tcp_mssdflt;
 u_short reason;
 u_int i;
 s = pool_get(&pf_state_pl, 0x0002 | 0x0008);
 if (s == ((void *)0)) {
  do { if ((void *)(&reason) != ((void *)0)) { *(&reason) = (5); if (5 < 17) pf_status.counters[5]++; } } while (0);
  goto csfailed;
 }
 s->rule.ptr = r;
 s->anchor.ptr = a;
 s->natrule.ptr = nr;
 if (r->allow_opts)
  s->state_flags |= 0x0001;
 if (r->rule_flag & 0x00020000)
  s->state_flags |= 0x0002;
 if (r->rule_flag & 0x00040000)
  s->state_flags |= 0x0004;
 s->log = act->log & 0x02;
 s->qid = act->qid;
 s->pqid = act->pqid;
 s->rtableid[pd->didx] = act->rtableid;
 s->rtableid[pd->sidx] = -1;
 s->min_ttl = act->min_ttl;
 s->set_tos = act->set_tos;
 s->max_mss = act->max_mss;
 s->state_flags |= act->flags;
 s->sync_state = 0xff;
 s->set_prio[0] = act->set_prio[0];
 s->set_prio[1] = act->set_prio[1];
 { ((&s->src_nodes)->slh_first) = ((void *)0); };
 switch (pd->proto) {
 case 6:
  s->src.seqlo = ((__uint32_t)(th->th_seq));
  s->src.seqhi = s->src.seqlo + pd->p_len + 1;
  if ((th->th_flags & (0x02|0x10)) == 0x02 &&
      r->keep_state == 0x2) {
   if ((s->src.seqdiff = pf_tcp_iss(pd) - s->src.seqlo) ==
       0)
    s->src.seqdiff = 1;
   pf_patch_32(pd,
       &th->th_seq, ((__uint32_t)(s->src.seqlo + s->src.seqdiff)));
   *rewrite = 1;
  } else
   s->src.seqdiff = 0;
  if (th->th_flags & 0x02) {
   s->src.seqhi++;
   s->src.wscale = pf_get_wscale(pd);
  }
  s->src.max_win = (((((__uint16_t)(th->th_win)))>(1))?(((__uint16_t)(th->th_win))):(1));
  if (s->src.wscale & 0x0f) {
   int win = s->src.max_win;
   win += 1 << (s->src.wscale & 0x0f);
   s->src.max_win = (win - 1) >>
       (s->src.wscale & 0x0f);
  }
  if (th->th_flags & 0x01)
   s->src.seqhi++;
  s->dst.seqhi = 1;
  s->dst.max_win = 1;
  pf_set_protostate(s, PF_PEER_SRC, 2);
  pf_set_protostate(s, PF_PEER_DST, 0);
  s->timeout = PFTM_TCP_FIRST_PACKET;
  pf_status.states_halfopen++;
  break;
 case 17:
  pf_set_protostate(s, PF_PEER_SRC, 1);
  pf_set_protostate(s, PF_PEER_DST, 0);
  s->timeout = PFTM_UDP_FIRST_PACKET;
  break;
 case 1:
 case 58:
  s->timeout = PFTM_ICMP_FIRST_PACKET;
  break;
 default:
  pf_set_protostate(s, PF_PEER_SRC, 1);
  pf_set_protostate(s, PF_PEER_DST, 0);
  s->timeout = PFTM_OTHER_FIRST_PACKET;
 }
 s->creation = time_uptime;
 s->expire = time_uptime;
 if (pd->proto == 6) {
  if (s->state_flags & 0x0100 &&
      pf_normalize_tcp_init(pd, &s->src)) {
   do { if ((void *)(&reason) != ((void *)0)) { *(&reason) = (5); if (5 < 17) pf_status.counters[5]++; } } while (0);
   goto csfailed;
  }
  if (s->state_flags & 0x0100 && s->src.scrub &&
      pf_normalize_tcp_stateful(pd, &reason, s, &s->src, &s->dst,
      rewrite)) {
   do { if (pf_status.debug >= (3)) { log(3, "pf: "); addlog("%s: tcp normalize failed on first pkt", __func__); addlog("\n"); } } while (0);
   goto csfailed;
  }
 }
 s->direction = pd->dir;
 if (pf_state_key_setup(pd, skw, sks, act->rtableid)) {
  do { if ((void *)(&reason) != ((void *)0)) { *(&reason) = (5); if (5 < 17) pf_status.counters[5]++; } } while (0);
  goto csfailed;
 }
 for (i = 0; i < PF_SN_MAX; i++)
  if (sns[i] != ((void *)0)) {
   struct pf_sn_item *sni;
   sni = pool_get(&pf_sn_item_pl, 0x0002);
   if (sni == ((void *)0)) {
    do { if ((void *)(&reason) != ((void *)0)) { *(&reason) = (5); if (5 < 17) pf_status.counters[5]++; } } while (0);
    goto csfailed;
   }
   sni->sn = sns[i];
   do { (sni)->next.sle_next = (&s->src_nodes)->slh_first; (&s->src_nodes)->slh_first = (sni); } while (0);
   sni->sn->states++;
  }
 if (pf_set_rt_ifp(s, pd->src, (*skw)->af) != 0) {
  do { if ((void *)(&reason) != ((void *)0)) { *(&reason) = (16); if (16 < 17) pf_status.counters[16]++; } } while (0);
  goto csfailed;
 }
 if (pf_state_insert(((r)->rule_flag & 0x00010000) ? (pd->kif) : pfi_all, skw, sks, s)) {
  pf_detach_state(s);
  *sks = *skw = ((void *)0);
  do { if ((void *)(&reason) != ((void *)0)) { *(&reason) = (11); if (11 < 17) pf_status.counters[11]++; } } while (0);
  goto csfailed;
 } else
  *sm = s;
 __builtin_memcpy((&s->match_rules), (rules), (sizeof(s->match_rules)));
 __builtin_bzero((rules), (sizeof(*rules)));
 do { struct pf_rule_item *mrm; s->rule.ptr->states_cur++; s->rule.ptr->states_tot++; if (s->anchor.ptr != ((void *)0)) { s->anchor.ptr->states_cur++; s->anchor.ptr->states_tot++; } for((mrm) = ((&s->match_rules)->slh_first); (mrm) != ((void *)0); (mrm) = ((mrm)->entry.sle_next)) mrm->r->states_cur++; } while (0);
 if (tag > 0) {
  pf_tag_ref(tag);
  s->tag = tag;
 }
 if (pd->proto == 6 && (th->th_flags & (0x02|0x10)) ==
     0x02 && r->keep_state == 0x3) {
  int rtid = pd->rdomain;
  if (act->rtableid >= 0)
   rtid = act->rtableid;
  pf_set_protostate(s, PF_PEER_SRC, ((11)+0));
  s->src.seqhi = arc4random();
  mss = pf_get_mss(pd);
  mss = pf_calc_mss(pd->src, pd->af, rtid, mss);
  mss = pf_calc_mss(pd->dst, pd->af, rtid, mss);
  s->src.mss = mss;
  pf_send_tcp(r, pd->af, pd->dst, pd->src, th->th_dport,
      th->th_sport, s->src.seqhi, ((__uint32_t)(th->th_seq)) + 1,
      0x02|0x10, 0, s->src.mss, 0, 1, 0, pd->rdomain);
  do { if ((void *)(&reason) != ((void *)0)) { *(&reason) = (14); if (14 < 17) pf_status.counters[14]++; } } while (0);
  return (PF_SYNPROXY_DROP);
 }
 return (PF_PASS);
csfailed:
 if (s) {
  pf_normalize_tcp_cleanup(s);
  pf_src_tree_remove_state(s);
  pool_put(&pf_state_pl, s);
 }
 for (i = 0; i < PF_SN_MAX; i++)
  if (sns[i] != ((void *)0))
   pf_remove_src_node(sns[i]);
 return (PF_DROP);
}
int
pf_translate(struct pf_pdesc *pd, struct pf_addr *saddr, u_int16_t sport,
    struct pf_addr *daddr, u_int16_t dport, u_int16_t virtual_type,
    int icmp_dir)
{
 int rewrite = 0;
 int afto = pd->af != pd->naf;
 if (afto || ((pd->af == 2 && (daddr)->pfa.addr32[0] != (pd->dst)->pfa.addr32[0]) || (pd->af == 24 && ((daddr)->pfa.addr32[3] != (pd->dst)->pfa.addr32[3] || (daddr)->pfa.addr32[2] != (pd->dst)->pfa.addr32[2] || (daddr)->pfa.addr32[1] != (pd->dst)->pfa.addr32[1] || (daddr)->pfa.addr32[0] != (pd->dst)->pfa.addr32[0]))))
  pd->destchg = 1;
 switch (pd->proto) {
 case 6:
 case 17:
  rewrite += pf_patch_16(pd, pd->sport, sport);
  rewrite += pf_patch_16(pd, pd->dport, dport);
  break;
 case 1:
  if (pd->af != 2)
   return (0);
  if (afto) {
   if (pf_translate_icmp_af(pd, 24, &pd->hdr.icmp))
    return (0);
   pd->proto = 58;
   rewrite = 1;
  }
  if (virtual_type == ((__uint16_t)(8))) {
   u_int16_t icmpid = (icmp_dir == PF_IN) ? sport : dport;
   rewrite += pf_patch_16(pd,
       &pd->hdr.icmp.icmp_hun.ih_idseq.icd_id, icmpid);
  }
  break;
 case 58:
  if (pd->af != 24)
   return (0);
  if (afto) {
   if (pf_translate_icmp_af(pd, 2, &pd->hdr.icmp6))
    return (0);
   pd->proto = 1;
   rewrite = 1;
  }
  if (virtual_type == ((__uint16_t)(128))) {
   u_int16_t icmpid = (icmp_dir == PF_IN) ? sport : dport;
   rewrite += pf_patch_16(pd,
       &pd->hdr.icmp6.icmp6_dataun.icmp6_un_data16[0], icmpid);
  }
  break;
 }
 if (!afto) {
  rewrite += pf_translate_a(pd, pd->src, saddr);
  rewrite += pf_translate_a(pd, pd->dst, daddr);
 }
 return (rewrite);
}
int
pf_tcp_track_full(struct pf_pdesc *pd, struct pf_state **state, u_short *reason,
    int *copyback, int reverse)
{
 struct tcphdr *th = &pd->hdr.tcp;
 struct pf_state_peer *src, *dst;
 u_int16_t win = ((__uint16_t)(th->th_win));
 u_int32_t ack, end, data_end, seq, orig_seq;
 u_int8_t sws, dws, psrc, pdst;
 int ackskew;
 if ((pd->dir == (*state)->direction && !reverse) ||
     (pd->dir != (*state)->direction && reverse)) {
  src = &(*state)->src;
  dst = &(*state)->dst;
  psrc = PF_PEER_SRC;
  pdst = PF_PEER_DST;
 } else {
  src = &(*state)->dst;
  dst = &(*state)->src;
  psrc = PF_PEER_DST;
  pdst = PF_PEER_SRC;
 }
 if (src->wscale && dst->wscale && !(th->th_flags & 0x02)) {
  sws = src->wscale & 0x0f;
  dws = dst->wscale & 0x0f;
 } else
  sws = dws = 0;
 orig_seq = seq = ((__uint32_t)(th->th_seq));
 if (src->seqlo == 0) {
  if (((*state)->state_flags & 0x0100 || dst->scrub) &&
      src->scrub == ((void *)0)) {
   if (pf_normalize_tcp_init(pd, src)) {
    do { if ((void *)(reason) != ((void *)0)) { *(reason) = (5); if (5 < 17) pf_status.counters[5]++; } } while (0);
    return (PF_DROP);
   }
  }
  if (dst->seqdiff && !src->seqdiff) {
   while ((src->seqdiff = arc4random() - seq) == 0)
    continue;
   ack = ((__uint32_t)(th->th_ack)) - dst->seqdiff;
   pf_patch_32(pd, &th->th_seq, ((__uint32_t)(seq + src->seqdiff)));
   pf_patch_32(pd, &th->th_ack, ((__uint32_t)(ack)));
   *copyback = 1;
  } else {
   ack = ((__uint32_t)(th->th_ack));
  }
  end = seq + pd->p_len;
  if (th->th_flags & 0x02) {
   end++;
   if (dst->wscale & 0x80) {
    src->wscale = pf_get_wscale(pd);
    if (src->wscale & 0x80) {
     sws = src->wscale & 0x0f;
     win = ((u_int32_t)win + (1 << sws) - 1)
         >> sws;
     dws = dst->wscale & 0x0f;
    } else {
     dst->max_win = (((65535)<((u_int32_t)dst->max_win << (dst->wscale & 0x0f)))?(65535):((u_int32_t)dst->max_win << (dst->wscale & 0x0f)));
     dst->wscale = 0;
    }
   }
  }
  data_end = end;
  if (th->th_flags & 0x01)
   end++;
  src->seqlo = seq;
  if (src->state < 2)
   pf_set_protostate(*state, psrc, 2);
  if (src->seqhi == 1 ||
      ((int)((end + (((1)>(dst->max_win << dws))?(1):(dst->max_win << dws)))-(src->seqhi)) >= 0))
   src->seqhi = end + (((1)>(dst->max_win << dws))?(1):(dst->max_win << dws));
  if (win > src->max_win)
   src->max_win = win;
 } else {
  ack = ((__uint32_t)(th->th_ack)) - dst->seqdiff;
  if (src->seqdiff) {
   pf_patch_32(pd, &th->th_seq, ((__uint32_t)(seq + src->seqdiff)));
   pf_patch_32(pd, &th->th_ack, ((__uint32_t)(ack)));
   *copyback = 1;
  }
  end = seq + pd->p_len;
  if (th->th_flags & 0x02)
   end++;
  data_end = end;
  if (th->th_flags & 0x01)
   end++;
 }
 if ((th->th_flags & 0x10) == 0) {
  ack = dst->seqlo;
 } else if ((ack == 0 &&
     (th->th_flags & (0x10|0x04)) == (0x10|0x04)) ||
     (dst->state < 2)) {
  ack = dst->seqlo;
 }
 if (seq == end) {
  seq = src->seqlo;
  data_end = end = seq;
 }
 ackskew = dst->seqlo - ack;
 if (dst->seqdiff && (th->th_off << 2) > sizeof(struct tcphdr)) {
  if (pf_modulate_sack(pd, dst))
   *copyback = 1;
 }
 if (((int)((src->seqhi)-(data_end)) >= 0) &&
     ((int)((seq)-(src->seqlo - (dst->max_win << dws))) >= 0) &&
     (ackskew >= -(0xffff + 1500)) &&
     (ackskew <= ((0xffff + 1500) << sws)) &&
     ((th->th_flags & 0x04) == 0 || orig_seq == src->seqlo ||
     (orig_seq == src->seqlo + 1) || (orig_seq + 1 == src->seqlo))) {
  if (dst->scrub || src->scrub) {
   if (pf_normalize_tcp_stateful(pd, reason, *state, src,
       dst, copyback))
    return (PF_DROP);
  }
  if (src->max_win < win)
   src->max_win = win;
  if (((int)((end)-(src->seqlo)) > 0))
   src->seqlo = end;
  if (((int)((ack + (win << sws))-(dst->seqhi)) >= 0))
   dst->seqhi = ack + ((((win << sws))>(1))?((win << sws)):(1));
  if (th->th_flags & 0x02)
   if (src->state < 2)
    pf_set_protostate(*state, psrc, 2);
  if (th->th_flags & 0x01)
   if (src->state < 7)
    pf_set_protostate(*state, psrc, 7);
  if (th->th_flags & 0x10) {
   if (dst->state == 2) {
    pf_set_protostate(*state, pdst,
        4);
    if (src->state == 4 &&
        !(((&(*state)->src_nodes)->slh_first) == ((void *)0)) &&
        pf_src_connlimit(state)) {
     do { if ((void *)(reason) != ((void *)0)) { *(reason) = (13); if (13 < 17) pf_status.counters[13]++; } } while (0);
     return (PF_DROP);
    }
   } else if (dst->state == 7)
    pf_set_protostate(*state, pdst,
        9);
  }
  if (th->th_flags & 0x04)
   pf_set_protostate(*state, PF_PEER_BOTH, 10);
  (*state)->expire = time_uptime;
  if (src->state >= 9 &&
      dst->state >= 9)
   (*state)->timeout = PFTM_TCP_CLOSED;
  else if (src->state >= 7 &&
      dst->state >= 7)
   (*state)->timeout = PFTM_TCP_FIN_WAIT;
  else if (src->state < 4 ||
      dst->state < 4)
   (*state)->timeout = PFTM_TCP_OPENING;
  else if (src->state >= 7 ||
      dst->state >= 7)
   (*state)->timeout = PFTM_TCP_CLOSING;
  else
   (*state)->timeout = PFTM_TCP_ESTABLISHED;
 } else if ((dst->state < 2 ||
  dst->state >= 9 ||
  src->state >= 9) &&
     ((int)((src->seqhi + (0xffff + 1500))-(data_end)) >= 0) &&
     ((int)((seq)-(src->seqlo - (0xffff + 1500))) >= 0)) {
  if (pf_status.debug >= 5) {
   log(5, "pf: loose state match: ");
   pf_print_state(*state);
   pf_print_flags(th->th_flags);
   addlog(" seq=%u (%u) ack=%u len=%u ackskew=%d "
       "pkts=%llu:%llu dir=%s,%s\n", seq, orig_seq, ack,
       pd->p_len, ackskew, (*state)->packets[0],
       (*state)->packets[1],
       pd->dir == PF_IN ? "in" : "out",
       pd->dir == (*state)->direction ? "fwd" : "rev");
  }
  if (dst->scrub || src->scrub) {
   if (pf_normalize_tcp_stateful(pd, reason, *state, src,
       dst, copyback))
    return (PF_DROP);
  }
  if (src->max_win < win)
   src->max_win = win;
  if (((int)((end)-(src->seqlo)) > 0))
   src->seqlo = end;
  if (((int)((ack + (win << sws))-(dst->seqhi)) >= 0))
   dst->seqhi = ack + ((((win << sws))>(1))?((win << sws)):(1));
  if (th->th_flags & 0x01)
   if (src->state < 7)
    pf_set_protostate(*state, psrc, 7);
  if (th->th_flags & 0x04)
   pf_set_protostate(*state, PF_PEER_BOTH, 10);
 } else {
  if ((*state)->dst.state == 2 &&
      (*state)->src.state == 2) {
   if (!(th->th_flags & 0x04))
    pf_send_tcp((*state)->rule.ptr, pd->af,
        pd->dst, pd->src, th->th_dport,
        th->th_sport, ((__uint32_t)(th->th_ack)), 0,
        0x04, 0, 0,
        (*state)->rule.ptr->return_ttl, 1, 0,
        pd->rdomain);
   src->seqlo = 0;
   src->seqhi = 1;
   src->max_win = 1;
  } else if (pf_status.debug >= 5) {
   log(5, "pf: BAD state: ");
   pf_print_state(*state);
   pf_print_flags(th->th_flags);
   addlog(" seq=%u (%u) ack=%u len=%u ackskew=%d "
       "pkts=%llu:%llu dir=%s,%s\n",
       seq, orig_seq, ack, pd->p_len, ackskew,
       (*state)->packets[0], (*state)->packets[1],
       pd->dir == PF_IN ? "in" : "out",
       pd->dir == (*state)->direction ? "fwd" : "rev");
   addlog("pf: State failure on: %c %c %c %c | %c %c\n",
       ((int)((src->seqhi)-(data_end)) >= 0) ? ' ' : '1',
       ((int)((seq)-(src->seqlo - (dst->max_win << dws))) >= 0) ?
       ' ': '2',
       (ackskew >= -(0xffff + 1500)) ? ' ' : '3',
       (ackskew <= ((0xffff + 1500) << sws)) ? ' ' : '4',
       ((int)((src->seqhi + (0xffff + 1500))-(data_end)) >= 0) ?
       ' ' :'5',
       ((int)((seq)-(src->seqlo - (0xffff + 1500))) >= 0) ?' ' :'6');
  }
  do { if ((void *)(reason) != ((void *)0)) { *(reason) = (10); if (10 < 17) pf_status.counters[10]++; } } while (0);
  return (PF_DROP);
 }
 return (PF_PASS);
}
int
pf_tcp_track_sloppy(struct pf_pdesc *pd, struct pf_state **state,
    u_short *reason)
{
 struct tcphdr *th = &pd->hdr.tcp;
 struct pf_state_peer *src, *dst;
 u_int8_t psrc, pdst;
 if (pd->dir == (*state)->direction) {
  src = &(*state)->src;
  dst = &(*state)->dst;
  psrc = PF_PEER_SRC;
  pdst = PF_PEER_DST;
 } else {
  src = &(*state)->dst;
  dst = &(*state)->src;
  psrc = PF_PEER_DST;
  pdst = PF_PEER_SRC;
 }
 if (th->th_flags & 0x02)
  if (src->state < 2)
   pf_set_protostate(*state, psrc, 2);
 if (th->th_flags & 0x01)
  if (src->state < 7)
   pf_set_protostate(*state, psrc, 7);
 if (th->th_flags & 0x10) {
  if (dst->state == 2) {
   pf_set_protostate(*state, pdst, 4);
   if (src->state == 4 &&
       !(((&(*state)->src_nodes)->slh_first) == ((void *)0)) &&
       pf_src_connlimit(state)) {
    do { if ((void *)(reason) != ((void *)0)) { *(reason) = (13); if (13 < 17) pf_status.counters[13]++; } } while (0);
    return (PF_DROP);
   }
  } else if (dst->state == 7) {
   pf_set_protostate(*state, pdst, 9);
  } else if (src->state == 2 &&
      dst->state < 2) {
   pf_set_protostate(*state, PF_PEER_BOTH,
       4);
   if (!(((&(*state)->src_nodes)->slh_first) == ((void *)0)) &&
       pf_src_connlimit(state)) {
    do { if ((void *)(reason) != ((void *)0)) { *(reason) = (13); if (13 < 17) pf_status.counters[13]++; } } while (0);
    return (PF_DROP);
   }
  } else if (src->state == 7 &&
      dst->state == 4 &&
      dst->seqlo == 0) {
   pf_set_protostate(*state, pdst, 7);
  }
 }
 if (th->th_flags & 0x04)
  pf_set_protostate(*state, PF_PEER_BOTH, 10);
 (*state)->expire = time_uptime;
 if (src->state >= 9 &&
     dst->state >= 9)
  (*state)->timeout = PFTM_TCP_CLOSED;
 else if (src->state >= 7 &&
     dst->state >= 7)
  (*state)->timeout = PFTM_TCP_FIN_WAIT;
 else if (src->state < 4 ||
     dst->state < 4)
  (*state)->timeout = PFTM_TCP_OPENING;
 else if (src->state >= 7 ||
     dst->state >= 7)
  (*state)->timeout = PFTM_TCP_CLOSING;
 else
  (*state)->timeout = PFTM_TCP_ESTABLISHED;
 return (PF_PASS);
}
static __inline int
pf_synproxy(struct pf_pdesc *pd, struct pf_state **state, u_short *reason)
{
 struct pf_state_key *sk = (*state)->key[pd->didx];
 if ((*state)->src.state == ((11)+0)) {
  struct tcphdr *th = &pd->hdr.tcp;
  if (pd->dir != (*state)->direction) {
   do { if ((void *)(reason) != ((void *)0)) { *(reason) = (14); if (14 < 17) pf_status.counters[14]++; } } while (0);
   return (PF_SYNPROXY_DROP);
  }
  if (th->th_flags & 0x02) {
   if (((__uint32_t)(th->th_seq)) != (*state)->src.seqlo) {
    do { if ((void *)(reason) != ((void *)0)) { *(reason) = (14); if (14 < 17) pf_status.counters[14]++; } } while (0);
    return (PF_DROP);
   }
   pf_send_tcp((*state)->rule.ptr, pd->af, pd->dst,
       pd->src, th->th_dport, th->th_sport,
       (*state)->src.seqhi, ((__uint32_t)(th->th_seq)) + 1,
       0x02|0x10, 0, (*state)->src.mss, 0, 1,
       0, pd->rdomain);
   do { if ((void *)(reason) != ((void *)0)) { *(reason) = (14); if (14 < 17) pf_status.counters[14]++; } } while (0);
   return (PF_SYNPROXY_DROP);
  } else if ((th->th_flags & (0x10|0x04|0x01)) != 0x10 ||
      (((__uint32_t)(th->th_ack)) != (*state)->src.seqhi + 1) ||
      (((__uint32_t)(th->th_seq)) != (*state)->src.seqlo + 1)) {
   do { if ((void *)(reason) != ((void *)0)) { *(reason) = (14); if (14 < 17) pf_status.counters[14]++; } } while (0);
   return (PF_DROP);
  } else if (!(((&(*state)->src_nodes)->slh_first) == ((void *)0)) &&
      pf_src_connlimit(state)) {
   do { if ((void *)(reason) != ((void *)0)) { *(reason) = (13); if (13 < 17) pf_status.counters[13]++; } } while (0);
   return (PF_DROP);
  } else
   pf_set_protostate(*state, PF_PEER_SRC,
       ((11)+1));
 }
 if ((*state)->src.state == ((11)+1)) {
  struct tcphdr *th = &pd->hdr.tcp;
  if (pd->dir == (*state)->direction) {
   if (((th->th_flags & (0x02|0x10)) != 0x10) ||
       (((__uint32_t)(th->th_ack)) != (*state)->src.seqhi + 1) ||
       (((__uint32_t)(th->th_seq)) != (*state)->src.seqlo + 1)) {
    do { if ((void *)(reason) != ((void *)0)) { *(reason) = (14); if (14 < 17) pf_status.counters[14]++; } } while (0);
    return (PF_DROP);
   }
   (*state)->src.max_win = (((((__uint16_t)(th->th_win)))>(1))?(((__uint16_t)(th->th_win))):(1));
   if ((*state)->dst.seqhi == 1)
    (*state)->dst.seqhi = arc4random();
   pf_send_tcp((*state)->rule.ptr, pd->af,
       &sk->addr[pd->sidx], &sk->addr[pd->didx],
       sk->port[pd->sidx], sk->port[pd->didx],
       (*state)->dst.seqhi, 0, 0x02, 0,
       (*state)->src.mss, 0, 0, (*state)->tag,
       sk->rdomain);
   do { if ((void *)(reason) != ((void *)0)) { *(reason) = (14); if (14 < 17) pf_status.counters[14]++; } } while (0);
   return (PF_SYNPROXY_DROP);
  } else if (((th->th_flags & (0x02|0x10)) !=
      (0x02|0x10)) ||
      (((__uint32_t)(th->th_ack)) != (*state)->dst.seqhi + 1)) {
   do { if ((void *)(reason) != ((void *)0)) { *(reason) = (14); if (14 < 17) pf_status.counters[14]++; } } while (0);
   return (PF_DROP);
  } else {
   (*state)->dst.max_win = (((((__uint16_t)(th->th_win)))>(1))?(((__uint16_t)(th->th_win))):(1));
   (*state)->dst.seqlo = ((__uint32_t)(th->th_seq));
   pf_send_tcp((*state)->rule.ptr, pd->af, pd->dst,
       pd->src, th->th_dport, th->th_sport,
       ((__uint32_t)(th->th_ack)), ((__uint32_t)(th->th_seq)) + 1,
       0x10, (*state)->src.max_win, 0, 0, 0,
       (*state)->tag, pd->rdomain);
   pf_send_tcp((*state)->rule.ptr, pd->af,
       &sk->addr[pd->sidx], &sk->addr[pd->didx],
       sk->port[pd->sidx], sk->port[pd->didx],
       (*state)->src.seqhi + 1, (*state)->src.seqlo + 1,
       0x10, (*state)->dst.max_win, 0, 0, 1,
       0, sk->rdomain);
   (*state)->src.seqdiff = (*state)->dst.seqhi -
       (*state)->src.seqlo;
   (*state)->dst.seqdiff = (*state)->src.seqhi -
       (*state)->dst.seqlo;
   (*state)->src.seqhi = (*state)->src.seqlo +
       (*state)->dst.max_win;
   (*state)->dst.seqhi = (*state)->dst.seqlo +
       (*state)->src.max_win;
   (*state)->src.wscale = (*state)->dst.wscale = 0;
   pf_set_protostate(*state, PF_PEER_BOTH,
       4);
   do { if ((void *)(reason) != ((void *)0)) { *(reason) = (14); if (14 < 17) pf_status.counters[14]++; } } while (0);
   return (PF_SYNPROXY_DROP);
  }
 }
 return (PF_PASS);
}
int
pf_test_state(struct pf_pdesc *pd, struct pf_state **state, u_short *reason)
{
 struct pf_state_key_cmp key;
 int copyback = 0;
 struct pf_state_peer *src, *dst;
 int action = PF_PASS;
 struct inpcb *inp;
 u_int8_t psrc, pdst;
 key.af = pd->af;
 key.proto = pd->virtual_proto;
 key.rdomain = pd->rdomain;
 pf_addrcpy(&key.addr[pd->sidx], pd->src, key.af);
 pf_addrcpy(&key.addr[pd->didx], pd->dst, key.af);
 key.port[pd->sidx] = pd->osport;
 key.port[pd->didx] = pd->odport;
 inp = pd->m->M_dat.MH.MH_pkthdr.pf.inp;
 do { *state = pf_find_state(pd->kif, &key, pd->dir, pd->m); if (*state == ((void *)0) || (*state)->timeout == PFTM_PURGE) return (PF_DROP); if (pd->dir == PF_OUT && (((*state)->rule.ptr->rt == PF_ROUTETO && (*state)->rule.ptr->direction == PF_OUT) || ((*state)->rule.ptr->rt == PF_REPLYTO && (*state)->rule.ptr->direction == PF_IN)) && (*state)->rt_kif != ((void *)0) && (*state)->rt_kif != pd->kif) return (PF_PASS); } while (0);
 if (pd->dir == (*state)->direction) {
  src = &(*state)->src;
  dst = &(*state)->dst;
  psrc = PF_PEER_SRC;
  pdst = PF_PEER_DST;
 } else {
  src = &(*state)->dst;
  dst = &(*state)->src;
  psrc = PF_PEER_DST;
  pdst = PF_PEER_SRC;
 }
 switch (pd->virtual_proto) {
 case 6:
  if ((action = pf_synproxy(pd, state, reason)) != PF_PASS)
   return (action);
  if ((pd->hdr.tcp.th_flags & (0x02|0x10)) == 0x02) {
   if (dst->state >= 9 &&
       src->state >= 9) {
    if (pf_status.debug >= 5) {
     log(5, "pf: state reuse ");
     pf_print_state(*state);
     pf_print_flags(pd->hdr.tcp.th_flags);
     addlog("\n");
    }
    pf_remove_state(*state);
    *state = ((void *)0);
    pd->m->M_dat.MH.MH_pkthdr.pf.inp = inp;
    return (PF_DROP);
   } else if (dst->state >= 4 &&
       src->state >= 4) {
    pf_send_challenge_ack(pd, *state, src, dst);
    return (PF_DROP);
   }
  }
  if ((*state)->state_flags & 0x0002) {
   if (pf_tcp_track_sloppy(pd, state, reason) == PF_DROP)
    return (PF_DROP);
  } else {
   if (pf_tcp_track_full(pd, state, reason, &copyback,
       (((*state)->key[PF_SK_WIRE]->af != (*state)->key[PF_SK_STACK]->af) && ((*state)->key[PF_SK_WIRE]->af != (pd->af)))) == PF_DROP)
    return (PF_DROP);
  }
  break;
 case 17:
  if (src->state < 1)
   pf_set_protostate(*state, psrc, 1);
  if (dst->state == 1)
   pf_set_protostate(*state, pdst, 2);
  (*state)->expire = time_uptime;
  if (src->state == 2 &&
      dst->state == 2)
   (*state)->timeout = PFTM_UDP_MULTIPLE;
  else
   (*state)->timeout = PFTM_UDP_SINGLE;
  break;
 default:
  if (src->state < 1)
   pf_set_protostate(*state, psrc, 1);
  if (dst->state == 1)
   pf_set_protostate(*state, pdst, 2);
  (*state)->expire = time_uptime;
  if (src->state == 2 &&
      dst->state == 2)
   (*state)->timeout = PFTM_OTHER_MULTIPLE;
  else
   (*state)->timeout = PFTM_OTHER_SINGLE;
  break;
 }
 if ((*state)->key[PF_SK_WIRE] != (*state)->key[PF_SK_STACK]) {
  struct pf_state_key *nk;
  int afto, sidx, didx;
  if ((((*state)->key[PF_SK_WIRE]->af != (*state)->key[PF_SK_STACK]->af) && ((*state)->key[PF_SK_WIRE]->af != (pd->af))))
   nk = (*state)->key[pd->sidx];
  else
   nk = (*state)->key[pd->didx];
  afto = pd->af != nk->af;
  sidx = afto ? pd->didx : pd->sidx;
  didx = afto ? pd->sidx : pd->didx;
  if (afto) {
   pf_addrcpy(&pd->nsaddr, &nk->addr[sidx], nk->af);
   pf_addrcpy(&pd->ndaddr, &nk->addr[didx], nk->af);
   pd->naf = nk->af;
   action = PF_AFRT;
  }
  if (!afto)
   pf_translate_a(pd, pd->src, &nk->addr[sidx]);
  if (pd->sport != ((void *)0))
   pf_patch_16(pd, pd->sport, nk->port[sidx]);
  if (afto || ((pd->af == 2 && (pd->dst)->pfa.addr32[0] != (&nk->addr[didx])->pfa.addr32[0]) || (pd->af == 24 && ((pd->dst)->pfa.addr32[3] != (&nk->addr[didx])->pfa.addr32[3] || (pd->dst)->pfa.addr32[2] != (&nk->addr[didx])->pfa.addr32[2] || (pd->dst)->pfa.addr32[1] != (&nk->addr[didx])->pfa.addr32[1] || (pd->dst)->pfa.addr32[0] != (&nk->addr[didx])->pfa.addr32[0]))) ||
      pd->rdomain != nk->rdomain)
   pd->destchg = 1;
  if (!afto)
   pf_translate_a(pd, pd->dst, &nk->addr[didx]);
  if (pd->dport != ((void *)0))
   pf_patch_16(pd, pd->dport, nk->port[didx]);
  pd->m->M_dat.MH.MH_pkthdr.ph_rtableid = nk->rdomain;
  copyback = 1;
 }
 if (copyback && pd->hdrlen > 0) {
  m_copyback(pd->m, pd->off, pd->hdrlen, &pd->hdr, 0x0002);
 }
 return (action);
}
int
pf_icmp_state_lookup(struct pf_pdesc *pd, struct pf_state_key_cmp *key,
    struct pf_state **state, u_int16_t icmpid, u_int16_t type,
    int icmp_dir, int *iidx, int multi, int inner)
{
 int direction;
 key->af = pd->af;
 key->proto = pd->proto;
 key->rdomain = pd->rdomain;
 if (icmp_dir == PF_IN) {
  *iidx = pd->sidx;
  key->port[pd->sidx] = icmpid;
  key->port[pd->didx] = type;
 } else {
  *iidx = pd->didx;
  key->port[pd->sidx] = type;
  key->port[pd->didx] = icmpid;
 }
 if (pf_state_key_addr_setup(pd, key, pd->sidx, pd->src, pd->didx,
     pd->dst, pd->af, multi))
  return (PF_DROP);
 do { *state = pf_find_state(pd->kif, key, pd->dir, pd->m); if (*state == ((void *)0) || (*state)->timeout == PFTM_PURGE) return (PF_DROP); if (pd->dir == PF_OUT && (((*state)->rule.ptr->rt == PF_ROUTETO && (*state)->rule.ptr->direction == PF_OUT) || ((*state)->rule.ptr->rt == PF_REPLYTO && (*state)->rule.ptr->direction == PF_IN)) && (*state)->rt_kif != ((void *)0) && (*state)->rt_kif != pd->kif) return (PF_PASS); } while (0);
 if ((*state)->state_flags & 0x0002)
  return (-1);
 if ((*state)->key[PF_SK_WIRE]->af != (*state)->key[PF_SK_STACK]->af)
  direction = (pd->af == (*state)->key[PF_SK_WIRE]->af) ?
      PF_IN : PF_OUT;
 else
  direction = (*state)->direction;
 if ((((!inner && direction == pd->dir) ||
     (inner && direction != pd->dir)) ?
     PF_IN : PF_OUT) != icmp_dir) {
  if (pf_status.debug >= 5) {
   log(5,
       "pf: icmp type %d in wrong direction (%d): ",
       ((__uint16_t)(type)), icmp_dir);
   pf_print_state(*state);
   addlog("\n");
  }
  return (PF_DROP);
 }
 return (-1);
}
int
pf_test_state_icmp(struct pf_pdesc *pd, struct pf_state **state,
    u_short *reason)
{
 u_int16_t virtual_id, virtual_type;
 u_int8_t icmptype;
 int icmp_dir, iidx, ret, copyback = 0;
 struct pf_state_key_cmp key;
 switch (pd->proto) {
 case 1:
  icmptype = pd->hdr.icmp.icmp_type;
  break;
 case 58:
  icmptype = pd->hdr.icmp6.icmp6_type;
  break;
 default:
  panic("unhandled proto %d", pd->proto);
 }
 if (pf_icmp_mapping(pd, icmptype, &icmp_dir, &virtual_id,
     &virtual_type) == 0) {
  ret = pf_icmp_state_lookup(pd, &key, state,
      virtual_id, virtual_type, icmp_dir, &iidx,
      0, 0);
  if (ret == PF_DROP && pd->af == 24 && icmp_dir == PF_OUT)
   ret = pf_icmp_state_lookup(pd, &key, state, virtual_id,
       virtual_type, icmp_dir, &iidx, 1, 0);
  if (ret >= 0)
   return (ret);
  (*state)->expire = time_uptime;
  (*state)->timeout = PFTM_ICMP_ERROR_REPLY;
  if ((*state)->key[PF_SK_WIRE] != (*state)->key[PF_SK_STACK]) {
   struct pf_state_key *nk;
   int afto, sidx, didx;
   if ((((*state)->key[PF_SK_WIRE]->af != (*state)->key[PF_SK_STACK]->af) && ((*state)->key[PF_SK_WIRE]->af != (pd->af))))
    nk = (*state)->key[pd->sidx];
   else
    nk = (*state)->key[pd->didx];
   afto = pd->af != nk->af;
   sidx = afto ? pd->didx : pd->sidx;
   didx = afto ? pd->sidx : pd->didx;
   iidx = afto ? !iidx : iidx;
   if (afto) {
    pf_addrcpy(&pd->nsaddr, &nk->addr[sidx], nk->af);
    pf_addrcpy(&pd->ndaddr, &nk->addr[didx], nk->af);
    pd->naf = nk->af;
   }
   if (!afto) {
    pf_translate_a(pd, pd->src, &nk->addr[sidx]);
    pf_translate_a(pd, pd->dst, &nk->addr[didx]);
   }
   if (pd->rdomain != nk->rdomain)
    pd->destchg = 1;
   if (!afto && ((pd->af == 2 && (pd->dst)->pfa.addr32[0] != (&nk->addr[didx])->pfa.addr32[0]) || (pd->af == 24 && ((pd->dst)->pfa.addr32[3] != (&nk->addr[didx])->pfa.addr32[3] || (pd->dst)->pfa.addr32[2] != (&nk->addr[didx])->pfa.addr32[2] || (pd->dst)->pfa.addr32[1] != (&nk->addr[didx])->pfa.addr32[1] || (pd->dst)->pfa.addr32[0] != (&nk->addr[didx])->pfa.addr32[0]))))
    pd->destchg = 1;
   pd->m->M_dat.MH.MH_pkthdr.ph_rtableid = nk->rdomain;
   switch (pd->af) {
   case 2:
    if (afto) {
     if (pf_translate_icmp_af(pd, 24,
         &pd->hdr.icmp))
      return (PF_DROP);
     pd->proto = 58;
    }
    pf_patch_16(pd,
        &pd->hdr.icmp.icmp_hun.ih_idseq.icd_id, nk->port[iidx]);
    m_copyback(pd->m, pd->off, 8,
        &pd->hdr.icmp, 0x0002);
    copyback = 1;
    break;
   case 24:
    if (afto) {
     if (pf_translate_icmp_af(pd, 2,
         &pd->hdr.icmp6))
      return (PF_DROP);
     pd->proto = 1;
    }
    pf_patch_16(pd,
        &pd->hdr.icmp6.icmp6_dataun.icmp6_un_data16[0], nk->port[iidx]);
    m_copyback(pd->m, pd->off,
        sizeof(struct icmp6_hdr), &pd->hdr.icmp6,
        0x0002);
    copyback = 1;
    break;
   }
   if (afto)
    return (PF_AFRT);
  }
 } else {
  struct pf_pdesc pd2;
  struct ip h2;
  struct ip6_hdr h2_6;
  int ipoff2;
  __builtin_bzero((&pd2), (sizeof(pd2)));
  pd2.af = pd->af;
  pd2.dir = pd->dir;
  pd2.kif = pd->kif;
  pd2.m = pd->m;
  pd2.rdomain = pd->rdomain;
  pd2.sidx = (pd2.dir == PF_IN) ? 1 : 0;
  pd2.didx = (pd2.dir == PF_IN) ? 0 : 1;
  switch (pd->af) {
  case 2:
   ipoff2 = pd->off + 8;
   if (!pf_pull_hdr(pd2.m, ipoff2, &h2, sizeof(h2),
       ((void *)0), reason, pd2.af)) {
    do { if (pf_status.debug >= (5)) { log(5, "pf: "); addlog("ICMP error message too short (ip)"); addlog("\n"); } } while (0);
    return (PF_DROP);
   }
   if (h2.ip_off & ((__uint16_t)(0x1fff))) {
    do { if ((void *)(reason) != ((void *)0)) { *(reason) = (2); if (2 < 17) pf_status.counters[2]++; } } while (0);
    return (PF_DROP);
   }
   pd2.off = ipoff2;
   if (pf_walk_header(&pd2, &h2, reason) != PF_PASS)
    return (PF_DROP);
   pd2.tot_len = ((__uint16_t)(h2.ip_len));
   pd2.src = (struct pf_addr *)&h2.ip_src;
   pd2.dst = (struct pf_addr *)&h2.ip_dst;
   break;
  case 24:
   ipoff2 = pd->off + sizeof(struct icmp6_hdr);
   if (!pf_pull_hdr(pd2.m, ipoff2, &h2_6, sizeof(h2_6),
       ((void *)0), reason, pd2.af)) {
    do { if (pf_status.debug >= (5)) { log(5, "pf: "); addlog("ICMP error message too short (ip6)"); addlog("\n"); } } while (0);
    return (PF_DROP);
   }
   pd2.off = ipoff2;
   if (pf_walk_header6(&pd2, &h2_6, reason) != PF_PASS)
    return (PF_DROP);
   pd2.tot_len = ((__uint16_t)(h2_6.ip6_ctlun.ip6_un1.ip6_un1_plen)) +
       sizeof(struct ip6_hdr);
   pd2.src = (struct pf_addr *)&h2_6.ip6_src;
   pd2.dst = (struct pf_addr *)&h2_6.ip6_dst;
   break;
  default:
   unhandled_af(pd->af);
  }
  switch (pd2.proto) {
  case 6: {
   struct tcphdr *th = &pd2.hdr.tcp;
   u_int32_t seq;
   struct pf_state_peer *src, *dst;
   u_int8_t dws;
   if (!pf_pull_hdr(pd2.m, pd2.off, th, 8, ((void *)0), reason,
       pd2.af)) {
    do { if (pf_status.debug >= (5)) { log(5, "pf: "); addlog("ICMP error message too short (tcp)"); addlog("\n"); } } while (0);
    return (PF_DROP);
   }
   key.af = pd2.af;
   key.proto = 6;
   key.rdomain = pd2.rdomain;
   pf_addrcpy(&key.addr[pd2.sidx], pd2.src, key.af);
   pf_addrcpy(&key.addr[pd2.didx], pd2.dst, key.af);
   key.port[pd2.sidx] = th->th_sport;
   key.port[pd2.didx] = th->th_dport;
   do { *state = pf_find_state(pd2.kif, &key, pd2.dir, pd2.m); if (*state == ((void *)0) || (*state)->timeout == PFTM_PURGE) return (PF_DROP); if (pd2.dir == PF_OUT && (((*state)->rule.ptr->rt == PF_ROUTETO && (*state)->rule.ptr->direction == PF_OUT) || ((*state)->rule.ptr->rt == PF_REPLYTO && (*state)->rule.ptr->direction == PF_IN)) && (*state)->rt_kif != ((void *)0) && (*state)->rt_kif != pd2.kif) return (PF_PASS); } while (0);
   if (pd2.dir == (*state)->direction) {
    if ((((*state)->key[PF_SK_WIRE]->af != (*state)->key[PF_SK_STACK]->af) && ((*state)->key[PF_SK_WIRE]->af != (pd->af)))) {
     src = &(*state)->src;
     dst = &(*state)->dst;
    } else {
     src = &(*state)->dst;
     dst = &(*state)->src;
    }
   } else {
    if ((((*state)->key[PF_SK_WIRE]->af != (*state)->key[PF_SK_STACK]->af) && ((*state)->key[PF_SK_WIRE]->af != (pd->af)))) {
     src = &(*state)->dst;
     dst = &(*state)->src;
    } else {
     src = &(*state)->src;
     dst = &(*state)->dst;
    }
   }
   if (src->wscale && dst->wscale)
    dws = dst->wscale & 0x0f;
   else
    dws = 0;
   seq = ((__uint32_t)(th->th_seq)) - src->seqdiff;
   if (src->seqdiff) {
    pf_patch_32(pd, &th->th_seq, ((__uint32_t)(seq)));
    copyback = 1;
   }
   if (!((*state)->state_flags & 0x0002) &&
       (!((int)((src->seqhi)-(seq)) >= 0) || !((int)((seq)-(src->seqlo - (dst->max_win << dws))) >= 0))) {
    if (pf_status.debug >= 5) {
     log(5,
         "pf: BAD ICMP %d:%d ",
         icmptype, pd->hdr.icmp.icmp_code);
     pf_print_host(pd->src, 0, pd->af);
     addlog(" -> ");
     pf_print_host(pd->dst, 0, pd->af);
     addlog(" state: ");
     pf_print_state(*state);
     addlog(" seq=%u\n", seq);
    }
    do { if ((void *)(reason) != ((void *)0)) { *(reason) = (10); if (10 < 17) pf_status.counters[10]++; } } while (0);
    return (PF_DROP);
   } else {
    if (pf_status.debug >= 7) {
     log(7,
         "pf: OK ICMP %d:%d ",
         icmptype, pd->hdr.icmp.icmp_code);
     pf_print_host(pd->src, 0, pd->af);
     addlog(" -> ");
     pf_print_host(pd->dst, 0, pd->af);
     addlog(" state: ");
     pf_print_state(*state);
     addlog(" seq=%u\n", seq);
    }
   }
   if ((*state)->key[PF_SK_WIRE] !=
       (*state)->key[PF_SK_STACK]) {
    struct pf_state_key *nk;
    int afto, sidx, didx;
    if ((((*state)->key[PF_SK_WIRE]->af != (*state)->key[PF_SK_STACK]->af) && ((*state)->key[PF_SK_WIRE]->af != (pd->af))))
     nk = (*state)->key[pd->sidx];
    else
     nk = (*state)->key[pd->didx];
    afto = pd->af != nk->af;
    sidx = afto ? pd2.didx : pd2.sidx;
    didx = afto ? pd2.sidx : pd2.didx;
    if (afto) {
     if (pf_translate_icmp_af(pd, nk->af,
         &pd->hdr.icmp))
      return (PF_DROP);
     m_copyback(pd->m, pd->off,
         sizeof(struct icmp6_hdr),
         &pd->hdr.icmp6, 0x0002);
     if (pf_change_icmp_af(pd->m, ipoff2,
         pd, &pd2, &nk->addr[sidx],
         &nk->addr[didx], pd->af, nk->af))
      return (PF_DROP);
     if (nk->af == 2)
      pd->proto = 1;
     else
      pd->proto = 58;
     pd->m->M_dat.MH.MH_pkthdr.ph_rtableid =
         nk->rdomain;
     pd->destchg = 1;
     pf_addrcpy(&pd->nsaddr, &nk->addr[pd2.sidx], nk->af);
     pf_addrcpy(&pd->ndaddr, &nk->addr[pd2.didx], nk->af);
     pd->naf = nk->af;
     pf_patch_16(pd,
         &th->th_sport, nk->port[sidx]);
     pf_patch_16(pd,
         &th->th_dport, nk->port[didx]);
     m_copyback(pd2.m, pd2.off, 8, th,
         0x0002);
     return (PF_AFRT);
    }
    if (((pd2.af == 2 && (pd2.src)->pfa.addr32[0] != (&nk->addr[pd2.sidx])->pfa.addr32[0]) || (pd2.af == 24 && ((pd2.src)->pfa.addr32[3] != (&nk->addr[pd2.sidx])->pfa.addr32[3] || (pd2.src)->pfa.addr32[2] != (&nk->addr[pd2.sidx])->pfa.addr32[2] || (pd2.src)->pfa.addr32[1] != (&nk->addr[pd2.sidx])->pfa.addr32[1] || (pd2.src)->pfa.addr32[0] != (&nk->addr[pd2.sidx])->pfa.addr32[0]))) ||
        nk->port[pd2.sidx] != th->th_sport)
     pf_translate_icmp(pd, pd2.src,
         &th->th_sport, pd->dst,
         &nk->addr[pd2.sidx],
         nk->port[pd2.sidx]);
    if (((pd2.af == 2 && (pd2.dst)->pfa.addr32[0] != (&nk->addr[pd2.didx])->pfa.addr32[0]) || (pd2.af == 24 && ((pd2.dst)->pfa.addr32[3] != (&nk->addr[pd2.didx])->pfa.addr32[3] || (pd2.dst)->pfa.addr32[2] != (&nk->addr[pd2.didx])->pfa.addr32[2] || (pd2.dst)->pfa.addr32[1] != (&nk->addr[pd2.didx])->pfa.addr32[1] || (pd2.dst)->pfa.addr32[0] != (&nk->addr[pd2.didx])->pfa.addr32[0]))) || pd2.rdomain != nk->rdomain)
     pd->destchg = 1;
    pd->m->M_dat.MH.MH_pkthdr.ph_rtableid = nk->rdomain;
    if (((pd2.af == 2 && (pd2.dst)->pfa.addr32[0] != (&nk->addr[pd2.didx])->pfa.addr32[0]) || (pd2.af == 24 && ((pd2.dst)->pfa.addr32[3] != (&nk->addr[pd2.didx])->pfa.addr32[3] || (pd2.dst)->pfa.addr32[2] != (&nk->addr[pd2.didx])->pfa.addr32[2] || (pd2.dst)->pfa.addr32[1] != (&nk->addr[pd2.didx])->pfa.addr32[1] || (pd2.dst)->pfa.addr32[0] != (&nk->addr[pd2.didx])->pfa.addr32[0]))) ||
        nk->port[pd2.didx] != th->th_dport)
     pf_translate_icmp(pd, pd2.dst,
         &th->th_dport, pd->src,
         &nk->addr[pd2.didx],
         nk->port[pd2.didx]);
    copyback = 1;
   }
   if (copyback) {
    switch (pd2.af) {
    case 2:
     m_copyback(pd->m, pd->off, 8,
         &pd->hdr.icmp, 0x0002);
     m_copyback(pd2.m, ipoff2, sizeof(h2),
         &h2, 0x0002);
     break;
    case 24:
     m_copyback(pd->m, pd->off,
         sizeof(struct icmp6_hdr),
         &pd->hdr.icmp6, 0x0002);
     m_copyback(pd2.m, ipoff2, sizeof(h2_6),
         &h2_6, 0x0002);
     break;
    }
    m_copyback(pd2.m, pd2.off, 8, th, 0x0002);
   }
   break;
  }
  case 17: {
   struct udphdr *uh = &pd2.hdr.udp;
   if (!pf_pull_hdr(pd2.m, pd2.off, uh, sizeof(*uh),
       ((void *)0), reason, pd2.af)) {
    do { if (pf_status.debug >= (5)) { log(5, "pf: "); addlog("ICMP error message too short (udp)"); addlog("\n"); } } while (0);
    return (PF_DROP);
   }
   key.af = pd2.af;
   key.proto = 17;
   key.rdomain = pd2.rdomain;
   pf_addrcpy(&key.addr[pd2.sidx], pd2.src, key.af);
   pf_addrcpy(&key.addr[pd2.didx], pd2.dst, key.af);
   key.port[pd2.sidx] = uh->uh_sport;
   key.port[pd2.didx] = uh->uh_dport;
   do { *state = pf_find_state(pd2.kif, &key, pd2.dir, pd2.m); if (*state == ((void *)0) || (*state)->timeout == PFTM_PURGE) return (PF_DROP); if (pd2.dir == PF_OUT && (((*state)->rule.ptr->rt == PF_ROUTETO && (*state)->rule.ptr->direction == PF_OUT) || ((*state)->rule.ptr->rt == PF_REPLYTO && (*state)->rule.ptr->direction == PF_IN)) && (*state)->rt_kif != ((void *)0) && (*state)->rt_kif != pd2.kif) return (PF_PASS); } while (0);
   if ((*state)->key[PF_SK_WIRE] !=
       (*state)->key[PF_SK_STACK]) {
    struct pf_state_key *nk;
    int afto, sidx, didx;
    if ((((*state)->key[PF_SK_WIRE]->af != (*state)->key[PF_SK_STACK]->af) && ((*state)->key[PF_SK_WIRE]->af != (pd->af))))
     nk = (*state)->key[pd->sidx];
    else
     nk = (*state)->key[pd->didx];
    afto = pd->af != nk->af;
    sidx = afto ? pd2.didx : pd2.sidx;
    didx = afto ? pd2.sidx : pd2.didx;
    if (afto) {
     if (pf_translate_icmp_af(pd, nk->af,
         &pd->hdr.icmp))
      return (PF_DROP);
     m_copyback(pd->m, pd->off,
         sizeof(struct icmp6_hdr),
         &pd->hdr.icmp6, 0x0002);
     if (pf_change_icmp_af(pd->m, ipoff2,
         pd, &pd2, &nk->addr[sidx],
         &nk->addr[didx], pd->af, nk->af))
      return (PF_DROP);
     if (nk->af == 2)
      pd->proto = 1;
     else
      pd->proto = 58;
     pd->m->M_dat.MH.MH_pkthdr.ph_rtableid =
         nk->rdomain;
     pd->destchg = 1;
     pf_addrcpy(&pd->nsaddr, &nk->addr[pd2.sidx], nk->af);
     pf_addrcpy(&pd->ndaddr, &nk->addr[pd2.didx], nk->af);
     pd->naf = nk->af;
     pf_patch_16(pd,
         &uh->uh_sport, nk->port[sidx]);
     pf_patch_16(pd,
         &uh->uh_dport, nk->port[didx]);
     m_copyback(pd2.m, pd2.off, sizeof(*uh),
         uh, 0x0002);
     return (PF_AFRT);
    }
    if (((pd2.af == 2 && (pd2.src)->pfa.addr32[0] != (&nk->addr[pd2.sidx])->pfa.addr32[0]) || (pd2.af == 24 && ((pd2.src)->pfa.addr32[3] != (&nk->addr[pd2.sidx])->pfa.addr32[3] || (pd2.src)->pfa.addr32[2] != (&nk->addr[pd2.sidx])->pfa.addr32[2] || (pd2.src)->pfa.addr32[1] != (&nk->addr[pd2.sidx])->pfa.addr32[1] || (pd2.src)->pfa.addr32[0] != (&nk->addr[pd2.sidx])->pfa.addr32[0]))) ||
        nk->port[pd2.sidx] != uh->uh_sport)
     pf_translate_icmp(pd, pd2.src,
         &uh->uh_sport, pd->dst,
         &nk->addr[pd2.sidx],
         nk->port[pd2.sidx]);
    if (((pd2.af == 2 && (pd2.dst)->pfa.addr32[0] != (&nk->addr[pd2.didx])->pfa.addr32[0]) || (pd2.af == 24 && ((pd2.dst)->pfa.addr32[3] != (&nk->addr[pd2.didx])->pfa.addr32[3] || (pd2.dst)->pfa.addr32[2] != (&nk->addr[pd2.didx])->pfa.addr32[2] || (pd2.dst)->pfa.addr32[1] != (&nk->addr[pd2.didx])->pfa.addr32[1] || (pd2.dst)->pfa.addr32[0] != (&nk->addr[pd2.didx])->pfa.addr32[0]))) || pd2.rdomain != nk->rdomain)
     pd->destchg = 1;
    pd->m->M_dat.MH.MH_pkthdr.ph_rtableid = nk->rdomain;
    if (((pd2.af == 2 && (pd2.dst)->pfa.addr32[0] != (&nk->addr[pd2.didx])->pfa.addr32[0]) || (pd2.af == 24 && ((pd2.dst)->pfa.addr32[3] != (&nk->addr[pd2.didx])->pfa.addr32[3] || (pd2.dst)->pfa.addr32[2] != (&nk->addr[pd2.didx])->pfa.addr32[2] || (pd2.dst)->pfa.addr32[1] != (&nk->addr[pd2.didx])->pfa.addr32[1] || (pd2.dst)->pfa.addr32[0] != (&nk->addr[pd2.didx])->pfa.addr32[0]))) ||
        nk->port[pd2.didx] != uh->uh_dport)
     pf_translate_icmp(pd, pd2.dst,
         &uh->uh_dport, pd->src,
         &nk->addr[pd2.didx],
         nk->port[pd2.didx]);
    switch (pd2.af) {
    case 2:
     m_copyback(pd->m, pd->off, 8,
         &pd->hdr.icmp, 0x0002);
     m_copyback(pd2.m, ipoff2, sizeof(h2),
         &h2, 0x0002);
     break;
    case 24:
     m_copyback(pd->m, pd->off,
         sizeof(struct icmp6_hdr),
         &pd->hdr.icmp6, 0x0002);
     m_copyback(pd2.m, ipoff2, sizeof(h2_6),
         &h2_6, 0x0002);
     break;
    }
    pf_patch_16(pd, &uh->uh_sum, 0);
    m_copyback(pd2.m, pd2.off, sizeof(*uh), uh,
        0x0002);
    copyback = 1;
   }
   break;
  }
  case 1: {
   struct icmp *iih = &pd2.hdr.icmp;
   if (pd2.af != 2) {
    do { if ((void *)(reason) != ((void *)0)) { *(reason) = (4); if (4 < 17) pf_status.counters[4]++; } } while (0);
    return (PF_DROP);
   }
   if (!pf_pull_hdr(pd2.m, pd2.off, iih, 8,
       ((void *)0), reason, pd2.af)) {
    do { if (pf_status.debug >= (5)) { log(5, "pf: "); addlog("ICMP error message too short (icmp)"); addlog("\n"); } } while (0);
    return (PF_DROP);
   }
   pf_icmp_mapping(&pd2, iih->icmp_type,
       &icmp_dir, &virtual_id, &virtual_type);
   ret = pf_icmp_state_lookup(&pd2, &key, state,
       virtual_id, virtual_type, icmp_dir, &iidx, 0, 1);
   if (ret >= 0)
    return (ret);
   if ((*state)->key[PF_SK_WIRE] !=
       (*state)->key[PF_SK_STACK]) {
    struct pf_state_key *nk;
    int afto, sidx, didx;
    if ((((*state)->key[PF_SK_WIRE]->af != (*state)->key[PF_SK_STACK]->af) && ((*state)->key[PF_SK_WIRE]->af != (pd->af))))
     nk = (*state)->key[pd->sidx];
    else
     nk = (*state)->key[pd->didx];
    afto = pd->af != nk->af;
    sidx = afto ? pd2.didx : pd2.sidx;
    didx = afto ? pd2.sidx : pd2.didx;
    iidx = afto ? !iidx : iidx;
    if (afto) {
     if (nk->af != 24)
      return (PF_DROP);
     if (pf_translate_icmp_af(pd, nk->af,
         &pd->hdr.icmp))
      return (PF_DROP);
     m_copyback(pd->m, pd->off,
         sizeof(struct icmp6_hdr),
         &pd->hdr.icmp6, 0x0002);
     if (pf_change_icmp_af(pd->m, ipoff2,
         pd, &pd2, &nk->addr[sidx],
         &nk->addr[didx], pd->af, nk->af))
      return (PF_DROP);
     pd->proto = 58;
     if (pf_translate_icmp_af(pd,
      nk->af, iih))
      return (PF_DROP);
     if (virtual_type == ((__uint16_t)(8)))
      pf_patch_16(pd, &iih->icmp_hun.ih_idseq.icd_id,
          nk->port[iidx]);
     m_copyback(pd2.m, pd2.off, 8,
         iih, 0x0002);
     pd->m->M_dat.MH.MH_pkthdr.ph_rtableid =
         nk->rdomain;
     pd->destchg = 1;
     pf_addrcpy(&pd->nsaddr, &nk->addr[pd2.sidx], nk->af);
     pf_addrcpy(&pd->ndaddr, &nk->addr[pd2.didx], nk->af);
     pd->naf = nk->af;
     return (PF_AFRT);
    }
    if (((pd2.af == 2 && (pd2.src)->pfa.addr32[0] != (&nk->addr[pd2.sidx])->pfa.addr32[0]) || (pd2.af == 24 && ((pd2.src)->pfa.addr32[3] != (&nk->addr[pd2.sidx])->pfa.addr32[3] || (pd2.src)->pfa.addr32[2] != (&nk->addr[pd2.sidx])->pfa.addr32[2] || (pd2.src)->pfa.addr32[1] != (&nk->addr[pd2.sidx])->pfa.addr32[1] || (pd2.src)->pfa.addr32[0] != (&nk->addr[pd2.sidx])->pfa.addr32[0]))) ||
        (virtual_type == ((__uint16_t)(8)) &&
        nk->port[iidx] != iih->icmp_hun.ih_idseq.icd_id))
     pf_translate_icmp(pd, pd2.src,
         (virtual_type == ((__uint16_t)(8))) ?
         &iih->icmp_hun.ih_idseq.icd_id : ((void *)0),
         pd->dst, &nk->addr[pd2.sidx],
         (virtual_type == ((__uint16_t)(8))) ?
         nk->port[iidx] : 0);
    if (((pd2.af == 2 && (pd2.dst)->pfa.addr32[0] != (&nk->addr[pd2.didx])->pfa.addr32[0]) || (pd2.af == 24 && ((pd2.dst)->pfa.addr32[3] != (&nk->addr[pd2.didx])->pfa.addr32[3] || (pd2.dst)->pfa.addr32[2] != (&nk->addr[pd2.didx])->pfa.addr32[2] || (pd2.dst)->pfa.addr32[1] != (&nk->addr[pd2.didx])->pfa.addr32[1] || (pd2.dst)->pfa.addr32[0] != (&nk->addr[pd2.didx])->pfa.addr32[0]))) || pd2.rdomain != nk->rdomain)
     pd->destchg = 1;
    pd->m->M_dat.MH.MH_pkthdr.ph_rtableid = nk->rdomain;
    if (((pd2.af == 2 && (pd2.dst)->pfa.addr32[0] != (&nk->addr[pd2.didx])->pfa.addr32[0]) || (pd2.af == 24 && ((pd2.dst)->pfa.addr32[3] != (&nk->addr[pd2.didx])->pfa.addr32[3] || (pd2.dst)->pfa.addr32[2] != (&nk->addr[pd2.didx])->pfa.addr32[2] || (pd2.dst)->pfa.addr32[1] != (&nk->addr[pd2.didx])->pfa.addr32[1] || (pd2.dst)->pfa.addr32[0] != (&nk->addr[pd2.didx])->pfa.addr32[0]))))
     pf_translate_icmp(pd, pd2.dst, ((void *)0),
         pd->src, &nk->addr[pd2.didx], 0);
    m_copyback(pd->m, pd->off, 8,
        &pd->hdr.icmp, 0x0002);
    m_copyback(pd2.m, ipoff2, sizeof(h2), &h2,
        0x0002);
    m_copyback(pd2.m, pd2.off, 8, iih,
        0x0002);
    copyback = 1;
   }
   break;
  }
  case 58: {
   struct icmp6_hdr *iih = &pd2.hdr.icmp6;
   if (pd2.af != 24) {
    do { if ((void *)(reason) != ((void *)0)) { *(reason) = (4); if (4 < 17) pf_status.counters[4]++; } } while (0);
    return (PF_DROP);
   }
   if (!pf_pull_hdr(pd2.m, pd2.off, iih,
       sizeof(struct icmp6_hdr), ((void *)0), reason, pd2.af)) {
    do { if (pf_status.debug >= (5)) { log(5, "pf: "); addlog("ICMP error message too short (icmp6)"); addlog("\n"); } } while (0);
    return (PF_DROP);
   }
   pf_icmp_mapping(&pd2, iih->icmp6_type,
       &icmp_dir, &virtual_id, &virtual_type);
   ret = pf_icmp_state_lookup(&pd2, &key, state,
       virtual_id, virtual_type, icmp_dir, &iidx, 0, 1);
   if (ret == PF_DROP && pd2.af == 24 &&
       icmp_dir == PF_OUT)
    ret = pf_icmp_state_lookup(&pd2, &key, state,
        virtual_id, virtual_type, icmp_dir, &iidx,
        1, 1);
   if (ret >= 0)
    return (ret);
   if ((*state)->key[PF_SK_WIRE] !=
       (*state)->key[PF_SK_STACK]) {
    struct pf_state_key *nk;
    int afto, sidx, didx;
    if ((((*state)->key[PF_SK_WIRE]->af != (*state)->key[PF_SK_STACK]->af) && ((*state)->key[PF_SK_WIRE]->af != (pd->af))))
     nk = (*state)->key[pd->sidx];
    else
     nk = (*state)->key[pd->didx];
    afto = pd->af != nk->af;
    sidx = afto ? pd2.didx : pd2.sidx;
    didx = afto ? pd2.sidx : pd2.didx;
    iidx = afto ? !iidx : iidx;
    if (afto) {
     if (nk->af != 2)
      return (PF_DROP);
     if (pf_translate_icmp_af(pd, nk->af,
         &pd->hdr.icmp))
      return (PF_DROP);
     m_copyback(pd->m, pd->off,
         sizeof(struct icmp6_hdr),
         &pd->hdr.icmp6, 0x0002);
     if (pf_change_icmp_af(pd->m, ipoff2,
         pd, &pd2, &nk->addr[sidx],
         &nk->addr[didx], pd->af, nk->af))
      return (PF_DROP);
     pd->proto = 1;
     if (pf_translate_icmp_af(pd,
      nk->af, iih))
      return (PF_DROP);
     if (virtual_type ==
         ((__uint16_t)(128)))
      pf_patch_16(pd, &iih->icmp6_dataun.icmp6_un_data16[0],
          nk->port[iidx]);
     m_copyback(pd2.m, pd2.off,
         sizeof(struct icmp6_hdr), iih,
         0x0002);
     pd->m->M_dat.MH.MH_pkthdr.ph_rtableid =
         nk->rdomain;
     pd->destchg = 1;
     pf_addrcpy(&pd->nsaddr, &nk->addr[pd2.sidx], nk->af);
     pf_addrcpy(&pd->ndaddr, &nk->addr[pd2.didx], nk->af);
     pd->naf = nk->af;
     return (PF_AFRT);
    }
    if (((pd2.af == 2 && (pd2.src)->pfa.addr32[0] != (&nk->addr[pd2.sidx])->pfa.addr32[0]) || (pd2.af == 24 && ((pd2.src)->pfa.addr32[3] != (&nk->addr[pd2.sidx])->pfa.addr32[3] || (pd2.src)->pfa.addr32[2] != (&nk->addr[pd2.sidx])->pfa.addr32[2] || (pd2.src)->pfa.addr32[1] != (&nk->addr[pd2.sidx])->pfa.addr32[1] || (pd2.src)->pfa.addr32[0] != (&nk->addr[pd2.sidx])->pfa.addr32[0]))) ||
        ((virtual_type ==
        ((__uint16_t)(128))) &&
        nk->port[pd2.sidx] != iih->icmp6_dataun.icmp6_un_data16[0]))
     pf_translate_icmp(pd, pd2.src,
         (virtual_type ==
         ((__uint16_t)(128)))
         ? &iih->icmp6_dataun.icmp6_un_data16[0] : ((void *)0),
         pd->dst, &nk->addr[pd2.sidx],
         (virtual_type ==
         ((__uint16_t)(128)))
         ? nk->port[iidx] : 0);
    if (((pd2.af == 2 && (pd2.dst)->pfa.addr32[0] != (&nk->addr[pd2.didx])->pfa.addr32[0]) || (pd2.af == 24 && ((pd2.dst)->pfa.addr32[3] != (&nk->addr[pd2.didx])->pfa.addr32[3] || (pd2.dst)->pfa.addr32[2] != (&nk->addr[pd2.didx])->pfa.addr32[2] || (pd2.dst)->pfa.addr32[1] != (&nk->addr[pd2.didx])->pfa.addr32[1] || (pd2.dst)->pfa.addr32[0] != (&nk->addr[pd2.didx])->pfa.addr32[0]))) || pd2.rdomain != nk->rdomain)
     pd->destchg = 1;
    pd->m->M_dat.MH.MH_pkthdr.ph_rtableid = nk->rdomain;
    if (((pd2.af == 2 && (pd2.dst)->pfa.addr32[0] != (&nk->addr[pd2.didx])->pfa.addr32[0]) || (pd2.af == 24 && ((pd2.dst)->pfa.addr32[3] != (&nk->addr[pd2.didx])->pfa.addr32[3] || (pd2.dst)->pfa.addr32[2] != (&nk->addr[pd2.didx])->pfa.addr32[2] || (pd2.dst)->pfa.addr32[1] != (&nk->addr[pd2.didx])->pfa.addr32[1] || (pd2.dst)->pfa.addr32[0] != (&nk->addr[pd2.didx])->pfa.addr32[0]))))
     pf_translate_icmp(pd, pd2.dst, ((void *)0),
         pd->src, &nk->addr[pd2.didx], 0);
    m_copyback(pd->m, pd->off,
        sizeof(struct icmp6_hdr), &pd->hdr.icmp6,
        0x0002);
    m_copyback(pd2.m, ipoff2, sizeof(h2_6), &h2_6,
        0x0002);
    m_copyback(pd2.m, pd2.off,
        sizeof(struct icmp6_hdr), iih, 0x0002);
    copyback = 1;
   }
   break;
  }
  default: {
   key.af = pd2.af;
   key.proto = pd2.proto;
   key.rdomain = pd2.rdomain;
   pf_addrcpy(&key.addr[pd2.sidx], pd2.src, key.af);
   pf_addrcpy(&key.addr[pd2.didx], pd2.dst, key.af);
   key.port[0] = key.port[1] = 0;
   do { *state = pf_find_state(pd2.kif, &key, pd2.dir, pd2.m); if (*state == ((void *)0) || (*state)->timeout == PFTM_PURGE) return (PF_DROP); if (pd2.dir == PF_OUT && (((*state)->rule.ptr->rt == PF_ROUTETO && (*state)->rule.ptr->direction == PF_OUT) || ((*state)->rule.ptr->rt == PF_REPLYTO && (*state)->rule.ptr->direction == PF_IN)) && (*state)->rt_kif != ((void *)0) && (*state)->rt_kif != pd2.kif) return (PF_PASS); } while (0);
   if ((*state)->key[PF_SK_WIRE] !=
       (*state)->key[PF_SK_STACK]) {
    struct pf_state_key *nk =
        (*state)->key[pd->didx];
    if (((pd2.af == 2 && (pd2.src)->pfa.addr32[0] != (&nk->addr[pd2.sidx])->pfa.addr32[0]) || (pd2.af == 24 && ((pd2.src)->pfa.addr32[3] != (&nk->addr[pd2.sidx])->pfa.addr32[3] || (pd2.src)->pfa.addr32[2] != (&nk->addr[pd2.sidx])->pfa.addr32[2] || (pd2.src)->pfa.addr32[1] != (&nk->addr[pd2.sidx])->pfa.addr32[1] || (pd2.src)->pfa.addr32[0] != (&nk->addr[pd2.sidx])->pfa.addr32[0]))))
     pf_translate_icmp(pd, pd2.src, ((void *)0),
         pd->dst, &nk->addr[pd2.sidx], 0);
    if (((pd2.af == 2 && (pd2.dst)->pfa.addr32[0] != (&nk->addr[pd2.didx])->pfa.addr32[0]) || (pd2.af == 24 && ((pd2.dst)->pfa.addr32[3] != (&nk->addr[pd2.didx])->pfa.addr32[3] || (pd2.dst)->pfa.addr32[2] != (&nk->addr[pd2.didx])->pfa.addr32[2] || (pd2.dst)->pfa.addr32[1] != (&nk->addr[pd2.didx])->pfa.addr32[1] || (pd2.dst)->pfa.addr32[0] != (&nk->addr[pd2.didx])->pfa.addr32[0]))) || pd2.rdomain != nk->rdomain)
     pd->destchg = 1;
    pd->m->M_dat.MH.MH_pkthdr.ph_rtableid = nk->rdomain;
    if (((pd2.af == 2 && (pd2.dst)->pfa.addr32[0] != (&nk->addr[pd2.didx])->pfa.addr32[0]) || (pd2.af == 24 && ((pd2.dst)->pfa.addr32[3] != (&nk->addr[pd2.didx])->pfa.addr32[3] || (pd2.dst)->pfa.addr32[2] != (&nk->addr[pd2.didx])->pfa.addr32[2] || (pd2.dst)->pfa.addr32[1] != (&nk->addr[pd2.didx])->pfa.addr32[1] || (pd2.dst)->pfa.addr32[0] != (&nk->addr[pd2.didx])->pfa.addr32[0]))))
     pf_translate_icmp(pd, pd2.dst, ((void *)0),
         pd->src, &nk->addr[pd2.didx], 0);
    switch (pd2.af) {
    case 2:
     m_copyback(pd->m, pd->off, 8,
         &pd->hdr.icmp, 0x0002);
     m_copyback(pd2.m, ipoff2, sizeof(h2),
         &h2, 0x0002);
     break;
    case 24:
     m_copyback(pd->m, pd->off,
         sizeof(struct icmp6_hdr),
         &pd->hdr.icmp6, 0x0002);
     m_copyback(pd2.m, ipoff2, sizeof(h2_6),
         &h2_6, 0x0002);
     break;
    }
    copyback = 1;
   }
   break;
  }
  }
 }
 if (copyback) {
  m_copyback(pd->m, pd->off, pd->hdrlen, &pd->hdr, 0x0002);
 }
 return (PF_PASS);
}
void *
pf_pull_hdr(struct mbuf *m, int off, void *p, int len,
    u_short *actionp, u_short *reasonp, sa_family_t af)
{
 int iplen = 0;
 switch (af) {
 case 2: {
  struct ip *h = ((struct ip *)((m)->m_hdr.mh_data));
  u_int16_t fragoff = (((__uint16_t)(h->ip_off)) & 0x1fff) << 3;
  if (fragoff) {
   if (fragoff >= len)
    do { if ((actionp) != ((void *)0)) *(actionp) = (PF_PASS); } while (0);
   else {
    do { if ((actionp) != ((void *)0)) *(actionp) = (PF_DROP); } while (0);
    do { if ((void *)(reasonp) != ((void *)0)) { *(reasonp) = (2); if (2 < 17) pf_status.counters[2]++; } } while (0);
   }
   return (((void *)0));
  }
  iplen = ((__uint16_t)(h->ip_len));
  break;
 }
 case 24: {
  struct ip6_hdr *h = ((struct ip6_hdr *)((m)->m_hdr.mh_data));
  iplen = ((__uint16_t)(h->ip6_ctlun.ip6_un1.ip6_un1_plen)) + sizeof(struct ip6_hdr);
  break;
 }
 }
 if (m->M_dat.MH.MH_pkthdr.len < off + len || iplen < off + len) {
  do { if ((actionp) != ((void *)0)) *(actionp) = (PF_DROP); } while (0);
  do { if ((void *)(reasonp) != ((void *)0)) { *(reasonp) = (3); if (3 < 17) pf_status.counters[3]++; } } while (0);
  return (((void *)0));
 }
 m_copydata(m, off, len, p);
 return (p);
}
int
pf_routable(struct pf_addr *addr, sa_family_t af, struct pfi_kif *kif,
    int rtableid)
{
 struct sockaddr_storage ss;
 struct sockaddr_in *dst;
 int ret = 1;
 int check_mpath;
 struct sockaddr_in6 *dst6;
 struct rtentry *rt = ((void *)0);
 check_mpath = 0;
 __builtin_memset((&ss), (0), (sizeof(ss)));
 switch (af) {
 case 2:
  dst = (struct sockaddr_in *)&ss;
  dst->sin_family = 2;
  dst->sin_len = sizeof(*dst);
  dst->sin_addr = addr->pfa.v4;
  if (ipmultipath)
   check_mpath = 1;
  break;
 case 24:
  if ((((((&addr->pfa.v6)->__u6_addr.__u6_addr8[0] == 0xfe) && (((&addr->pfa.v6)->__u6_addr.__u6_addr8[1] & 0xc0) == 0x80))) || ((((&addr->pfa.v6)->__u6_addr.__u6_addr8[0] == 0xff) && (((&addr->pfa.v6)->__u6_addr.__u6_addr8[1] & 0x0f) == 0x02))) || ((((&addr->pfa.v6)->__u6_addr.__u6_addr8[0] == 0xff) && (((&addr->pfa.v6)->__u6_addr.__u6_addr8[1] & 0x0f) == 0x01)))))
   goto out;
  dst6 = (struct sockaddr_in6 *)&ss;
  dst6->sin6_family = 24;
  dst6->sin6_len = sizeof(*dst6);
  dst6->sin6_addr = addr->pfa.v6;
  if (ip6_multipath)
   check_mpath = 1;
  break;
 }
 if (kif != ((void *)0) && kif->pfik_ifp->if_data.ifi_type == 0xf4)
  goto out;
 rt = rtalloc(sstosa(&ss), 0, rtableid);
 if (rt != ((void *)0)) {
  if (kif == ((void *)0))
   goto out;
  if (kif->pfik_ifp == ((void *)0)) {
   ret = 0;
   goto out;
  }
  ret = 0;
  do {
   if (rt->rt_ifidx == kif->pfik_ifp->if_index) {
    ret = 1;
   } else {
    struct ifnet *ifp;
    ifp = if_get(rt->rt_ifidx);
    if (ifp != ((void *)0) && ifp->if_data.ifi_type == 0xf7 &&
        ifp->if_carp_ptr.carp_d == kif->pfik_ifp)
     ret = 1;
    if_put(ifp);
   }
   rt = rtable_iterate(rt);
  } while (check_mpath == 1 && rt != ((void *)0) && ret == 0);
 } else
  ret = 0;
out:
 rtfree(rt);
 return (ret);
}
int
pf_rtlabel_match(struct pf_addr *addr, sa_family_t af, struct pf_addr_wrap *aw,
    int rtableid)
{
 struct sockaddr_storage ss;
 struct sockaddr_in *dst;
 struct sockaddr_in6 *dst6;
 struct rtentry *rt;
 int ret = 0;
 __builtin_memset((&ss), (0), (sizeof(ss)));
 switch (af) {
 case 2:
  dst = (struct sockaddr_in *)&ss;
  dst->sin_family = 2;
  dst->sin_len = sizeof(*dst);
  dst->sin_addr = addr->pfa.v4;
  break;
 case 24:
  dst6 = (struct sockaddr_in6 *)&ss;
  dst6->sin6_family = 24;
  dst6->sin6_len = sizeof(*dst6);
  dst6->sin6_addr = addr->pfa.v6;
  break;
 }
 rt = rtalloc(sstosa(&ss), 1, rtableid);
 if (rt != ((void *)0)) {
  if (rt->rt_labelid == aw->v.rtlabel)
   ret = 1;
  rtfree(rt);
 }
 return (ret);
}
void
pf_route(struct pf_pdesc *pd, struct pf_rule *r, struct pf_state *s)
{
 struct mbuf *m0, *m1;
 struct sockaddr_in *dst, sin;
 struct rtentry *rt = ((void *)0);
 struct ip *ip;
 struct ifnet *ifp = ((void *)0);
 struct pf_addr naddr;
 struct pf_src_node *sns[PF_SN_MAX];
 int error = 0;
 unsigned int rtableid;
 if (pd->m->M_dat.MH.MH_pkthdr.pf.routed++ > 3) {
  m_freem(pd->m);
  pd->m = ((void *)0);
  return;
 }
 if (r->rt == PF_DUPTO) {
  if ((m0 = m_dup_pkt(pd->m, max_linkhdr, 0x0002)) == ((void *)0))
   return;
 } else {
  if ((r->rt == PF_REPLYTO) == (r->direction == pd->dir))
   return;
  m0 = pd->m;
 }
 if (m0->m_hdr.mh_len < sizeof(struct ip)) {
  do { if (pf_status.debug >= (3)) { log(3, "pf: "); addlog("%s: m0->m_len < sizeof(struct ip)", __func__); addlog("\n"); } } while (0);
  goto bad;
 }
 ip = ((struct ip *)((m0)->m_hdr.mh_data));
 __builtin_memset((&sin), (0), (sizeof(sin)));
 dst = &sin;
 dst->sin_family = 2;
 dst->sin_len = sizeof(*dst);
 dst->sin_addr = ip->ip_dst;
 rtableid = m0->M_dat.MH.MH_pkthdr.ph_rtableid;
 if (s == ((void *)0)) {
  __builtin_bzero((sns), (sizeof(sns)));
  if (pf_map_addr(2, r,
      (struct pf_addr *)&ip->ip_src,
      &naddr, ((void *)0), sns, &r->route, PF_SN_ROUTE)) {
   do { if (pf_status.debug >= (3)) { log(3, "pf: "); addlog("%s: pf_map_addr() failed", __func__); addlog("\n"); } } while (0);
   goto bad;
  }
  if (!((2 == 2 && !(&naddr)->pfa.addr32[0]) || (2 == 24 && !(&naddr)->pfa.addr32[0] && !(&naddr)->pfa.addr32[1] && !(&naddr)->pfa.addr32[2] && !(&naddr)->pfa.addr32[3] )))
   dst->sin_addr.s_addr = naddr.pfa.v4.s_addr;
  ifp = r->route.kif ?
      r->route.kif->pfik_ifp : ((void *)0);
 } else {
  if (!((2 == 2 && !(&s->rt_addr)->pfa.addr32[0]) || (2 == 24 && !(&s->rt_addr)->pfa.addr32[0] && !(&s->rt_addr)->pfa.addr32[1] && !(&s->rt_addr)->pfa.addr32[2] && !(&s->rt_addr)->pfa.addr32[3] )))
   dst->sin_addr.s_addr =
       s->rt_addr.pfa.v4.s_addr;
  ifp = s->rt_kif ? s->rt_kif->pfik_ifp : ((void *)0);
 }
 if (ifp == ((void *)0))
  goto bad;
 if (pd->kif->pfik_ifp != ifp) {
  if (pf_test(2, PF_OUT, ifp, &m0) != PF_PASS)
   goto bad;
  else if (m0 == ((void *)0))
   goto done;
  if (m0->m_hdr.mh_len < sizeof(struct ip)) {
   do { if (pf_status.debug >= (3)) { log(3, "pf: "); addlog("%s: m0->m_len < sizeof(struct ip)", __func__); addlog("\n"); } } while (0);
   goto bad;
  }
  ip = ((struct ip *)((m0)->m_hdr.mh_data));
 }
 in_proto_cksum_out(m0, ifp);
 rt = rtalloc(sintosa(dst), 1, rtableid);
 if (!rtisvalid(rt)) {
  ipstat_inc(ips_noroute);
  goto bad;
 }
 if (((__uint16_t)(ip->ip_len)) <= ifp->if_data.ifi_mtu) {
  ip->ip_sum = 0;
  if (ifp->if_data.ifi_capabilities & 0x00000001)
   m0->M_dat.MH.MH_pkthdr.csum_flags |= 0x0001;
  else {
   ipstat_inc(ips_outswcsum);
   ip->ip_sum = in_cksum(m0, ip->ip_hl << 2);
  }
  error = ifp->if_output(ifp, m0, sintosa(dst), rt);
  goto done;
 }
 if (ip->ip_off & ((__uint16_t)(0x4000))) {
  ipstat_inc(ips_cantfrag);
  if (r->rt != PF_DUPTO) {
   icmp_error(m0, 3, 4, 0,
       ifp->if_data.ifi_mtu);
   goto done;
  } else
   goto bad;
 }
 m1 = m0;
 error = ip_fragment(m0, ifp, ifp->if_data.ifi_mtu);
 if (error) {
  m0 = ((void *)0);
  goto bad;
 }
 for (m0 = m1; m0; m0 = m1) {
  m1 = m0->m_hdr.mh_nextpkt;
  m0->m_hdr.mh_nextpkt = 0;
  if (error == 0)
   error = ifp->if_output(ifp, m0, sintosa(dst), rt);
  else
   m_freem(m0);
 }
 if (error == 0)
  ipstat_inc(ips_fragmented);
done:
 if (r->rt != PF_DUPTO)
  pd->m = ((void *)0);
 rtfree(rt);
 return;
bad:
 m_freem(m0);
 goto done;
}
void
pf_route6(struct pf_pdesc *pd, struct pf_rule *r, struct pf_state *s)
{
 struct mbuf *m0;
 struct sockaddr_in6 *dst, sin6;
 struct rtentry *rt = ((void *)0);
 struct ip6_hdr *ip6;
 struct ifnet *ifp = ((void *)0);
 struct pf_addr naddr;
 struct pf_src_node *sns[PF_SN_MAX];
 struct m_tag *mtag;
 unsigned int rtableid;
 if (pd->m->M_dat.MH.MH_pkthdr.pf.routed++ > 3) {
  m_freem(pd->m);
  pd->m = ((void *)0);
  return;
 }
 if (r->rt == PF_DUPTO) {
  if ((m0 = m_dup_pkt(pd->m, max_linkhdr, 0x0002)) == ((void *)0))
   return;
 } else {
  if ((r->rt == PF_REPLYTO) == (r->direction == pd->dir))
   return;
  m0 = pd->m;
 }
 if (m0->m_hdr.mh_len < sizeof(struct ip6_hdr)) {
  do { if (pf_status.debug >= (3)) { log(3, "pf: "); addlog("%s: m0->m_len < sizeof(struct ip6_hdr)", __func__); addlog("\n"); } } while (0);
  goto bad;
 }
 ip6 = ((struct ip6_hdr *)((m0)->m_hdr.mh_data));
 __builtin_memset((&sin6), (0), (sizeof(sin6)));
 dst = &sin6;
 dst->sin6_family = 24;
 dst->sin6_len = sizeof(*dst);
 dst->sin6_addr = ip6->ip6_dst;
 rtableid = m0->M_dat.MH.MH_pkthdr.ph_rtableid;
 if (s == ((void *)0)) {
  __builtin_bzero((sns), (sizeof(sns)));
  if (pf_map_addr(24, r, (struct pf_addr *)&ip6->ip6_src,
      &naddr, ((void *)0), sns, &r->route, PF_SN_ROUTE)) {
   do { if (pf_status.debug >= (3)) { log(3, "pf: "); addlog("%s: pf_map_addr() failed", __func__); addlog("\n"); } } while (0);
   goto bad;
  }
  if (!((24 == 2 && !(&naddr)->pfa.addr32[0]) || (24 == 24 && !(&naddr)->pfa.addr32[0] && !(&naddr)->pfa.addr32[1] && !(&naddr)->pfa.addr32[2] && !(&naddr)->pfa.addr32[3] )))
   pf_addrcpy((struct pf_addr *)&dst->sin6_addr, &naddr, 24);
  ifp = r->route.kif ? r->route.kif->pfik_ifp : ((void *)0);
 } else {
  if (!((24 == 2 && !(&s->rt_addr)->pfa.addr32[0]) || (24 == 24 && !(&s->rt_addr)->pfa.addr32[0] && !(&s->rt_addr)->pfa.addr32[1] && !(&s->rt_addr)->pfa.addr32[2] && !(&s->rt_addr)->pfa.addr32[3] )))
   pf_addrcpy((struct pf_addr *)&dst->sin6_addr, &s->rt_addr, 24);
  ifp = s->rt_kif ? s->rt_kif->pfik_ifp : ((void *)0);
 }
 if (ifp == ((void *)0))
  goto bad;
 if (pd->kif->pfik_ifp != ifp) {
  if (pf_test(24, PF_OUT, ifp, &m0) != PF_PASS)
   goto bad;
  else if (m0 == ((void *)0))
   goto done;
  if (m0->m_hdr.mh_len < sizeof(struct ip6_hdr)) {
   do { if (pf_status.debug >= (3)) { log(3, "pf: "); addlog("%s: m0->m_len < sizeof(struct ip6_hdr)", __func__); addlog("\n"); } } while (0);
   goto bad;
  }
 }
 in6_proto_cksum_out(m0, ifp);
 if ((((((&dst->sin6_addr)->__u6_addr.__u6_addr8[0] == 0xfe) && (((&dst->sin6_addr)->__u6_addr.__u6_addr8[1] & 0xc0) == 0x80))) || ((((&dst->sin6_addr)->__u6_addr.__u6_addr8[0] == 0xff) && (((&dst->sin6_addr)->__u6_addr.__u6_addr8[1] & 0x0f) == 0x02))) || ((((&dst->sin6_addr)->__u6_addr.__u6_addr8[0] == 0xff) && (((&dst->sin6_addr)->__u6_addr.__u6_addr8[1] & 0x0f) == 0x01)))))
  dst->sin6_addr.__u6_addr.__u6_addr16[1] = ((__uint16_t)(ifp->if_index));
 rt = rtalloc(sin6tosa(dst), 1, rtableid);
 if (!rtisvalid(rt)) {
  ip6stat_inc(ip6s_noroute);
  goto bad;
 }
 if ((mtag = m_tag_find(m0, 0x0800, ((void *)0)))) {
  (void) pf_refragment6(&m0, mtag, dst, ifp, rt);
 } else if ((u_long)m0->M_dat.MH.MH_pkthdr.len <= ifp->if_data.ifi_mtu) {
  ifp->if_output(ifp, m0, sin6tosa(dst), rt);
 } else {
  icmp6_error(m0, 2, 0, ifp->if_data.ifi_mtu);
 }
done:
 if (r->rt != PF_DUPTO)
  pd->m = ((void *)0);
 rtfree(rt);
 return;
bad:
 m_freem(m0);
 goto done;
}
int
pf_check_tcp_cksum(struct mbuf *m, int off, int len, sa_family_t af)
{
 u_int16_t sum;
 if (m->M_dat.MH.MH_pkthdr.csum_flags &
     (0x0020 | 0x0002)) {
  return (0);
 }
 if (m->M_dat.MH.MH_pkthdr.csum_flags & 0x0040 ||
     off < sizeof(struct ip) ||
     m->M_dat.MH.MH_pkthdr.len < off + len) {
  return (1);
 }
 tcpstat_inc(tcps_inswcsum);
 switch (af) {
 case 2:
  if (m->m_hdr.mh_len < sizeof(struct ip))
   return (1);
  sum = in4_cksum(m, 6, off, len);
  break;
 case 24:
  if (m->m_hdr.mh_len < sizeof(struct ip6_hdr))
   return (1);
  sum = in6_cksum(m, 6, off, len);
  break;
 default:
  unhandled_af(af);
 }
 if (sum) {
  tcpstat_inc(tcps_rcvbadsum);
  m->M_dat.MH.MH_pkthdr.csum_flags |= 0x0040;
  return (1);
 }
 m->M_dat.MH.MH_pkthdr.csum_flags |= 0x0020;
 return (0);
}
struct pf_divert *
pf_find_divert(struct mbuf *m)
{
 struct m_tag *mtag;
 if ((mtag = m_tag_find(m, 0x0200, ((void *)0))) == ((void *)0))
  return (((void *)0));
 return ((struct pf_divert *)(mtag + 1));
}
struct pf_divert *
pf_get_divert(struct mbuf *m)
{
 struct m_tag *mtag;
 if ((mtag = m_tag_find(m, 0x0200, ((void *)0))) == ((void *)0)) {
  mtag = m_tag_get(0x0200, sizeof(struct pf_divert),
      0x0002);
  if (mtag == ((void *)0))
   return (((void *)0));
  __builtin_bzero((mtag + 1), (sizeof(struct pf_divert)));
  m_tag_prepend(m, mtag);
 }
 return ((struct pf_divert *)(mtag + 1));
}
int
pf_walk_header(struct pf_pdesc *pd, struct ip *h, u_short *reason)
{
 struct ip6_ext ext;
 u_int32_t hlen, end;
 int hdr_cnt;
 hlen = h->ip_hl << 2;
 if (hlen < sizeof(struct ip) || hlen > ((__uint16_t)(h->ip_len))) {
  do { if ((void *)(reason) != ((void *)0)) { *(reason) = (3); if (3 < 17) pf_status.counters[3]++; } } while (0);
  return (PF_DROP);
 }
 if (hlen != sizeof(struct ip))
  pd->badopts++;
 end = pd->off + ((__uint16_t)(h->ip_len));
 pd->off += hlen;
 pd->proto = h->ip_p;
 if ((h->ip_off & ((__uint16_t)(0x1fff))) != 0)
  return (PF_PASS);
 for (hdr_cnt = 0; hdr_cnt < pf_hdr_limit; hdr_cnt++) {
  switch (pd->proto) {
  case 51:
   if ((h->ip_off & ((__uint16_t)(0x2000 | 0x1fff))) != 0 &&
       end < pd->off + sizeof(ext))
    return (PF_PASS);
   if (!pf_pull_hdr(pd->m, pd->off, &ext, sizeof(ext),
       ((void *)0), reason, 2)) {
    do { if (pf_status.debug >= (5)) { log(5, "pf: "); addlog("IP short exthdr"); addlog("\n"); } } while (0);
    return (PF_DROP);
   }
   pd->off += (ext.ip6e_len + 2) * 4;
   pd->proto = ext.ip6e_nxt;
   break;
  default:
   return (PF_PASS);
  }
 }
 do { if (pf_status.debug >= (5)) { log(5, "pf: "); addlog("IPv4 nested authentication header limit"); addlog("\n"); } } while (0);
 do { if ((void *)(reason) != ((void *)0)) { *(reason) = (8); if (8 < 17) pf_status.counters[8]++; } } while (0);
 return (PF_DROP);
}
int
pf_walk_option6(struct pf_pdesc *pd, struct ip6_hdr *h, int off, int end,
    u_short *reason)
{
 struct ip6_opt opt;
 struct ip6_opt_jumbo jumbo;
 while (off < end) {
  if (!pf_pull_hdr(pd->m, off, &opt.ip6o_type,
      sizeof(opt.ip6o_type), ((void *)0), reason, 24)) {
   do { if (pf_status.debug >= (5)) { log(5, "pf: "); addlog("IPv6 short opt type"); addlog("\n"); } } while (0);
   return (PF_DROP);
  }
  if (opt.ip6o_type == 0x00) {
   off++;
   continue;
  }
  if (!pf_pull_hdr(pd->m, off, &opt, sizeof(opt),
      ((void *)0), reason, 24)) {
   do { if (pf_status.debug >= (5)) { log(5, "pf: "); addlog("IPv6 short opt"); addlog("\n"); } } while (0);
   return (PF_DROP);
  }
  if (off + sizeof(opt) + opt.ip6o_len > end) {
   do { if (pf_status.debug >= (5)) { log(5, "pf: "); addlog("IPv6 long opt"); addlog("\n"); } } while (0);
   do { if ((void *)(reason) != ((void *)0)) { *(reason) = (8); if (8 < 17) pf_status.counters[8]++; } } while (0);
   return (PF_DROP);
  }
  switch (opt.ip6o_type) {
  case 0xC2:
   if (pd->jumbolen != 0) {
    do { if (pf_status.debug >= (5)) { log(5, "pf: "); addlog("IPv6 multiple jumbo"); addlog("\n"); } } while (0);
    do { if ((void *)(reason) != ((void *)0)) { *(reason) = (8); if (8 < 17) pf_status.counters[8]++; } } while (0);
    return (PF_DROP);
   }
   if (((__uint16_t)(h->ip6_ctlun.ip6_un1.ip6_un1_plen)) != 0) {
    do { if (pf_status.debug >= (5)) { log(5, "pf: "); addlog("IPv6 bad jumbo plen"); addlog("\n"); } } while (0);
    do { if ((void *)(reason) != ((void *)0)) { *(reason) = (8); if (8 < 17) pf_status.counters[8]++; } } while (0);
    return (PF_DROP);
   }
   if (!pf_pull_hdr(pd->m, off, &jumbo, sizeof(jumbo),
       ((void *)0), reason, 24)) {
    do { if (pf_status.debug >= (5)) { log(5, "pf: "); addlog("IPv6 short jumbo"); addlog("\n"); } } while (0);
    return (PF_DROP);
   }
   __builtin_memcpy((&pd->jumbolen), (jumbo.ip6oj_jumbo_len), (sizeof(pd->jumbolen)));
   pd->jumbolen = ((__uint32_t)(pd->jumbolen));
   if (pd->jumbolen < 65535) {
    do { if (pf_status.debug >= (5)) { log(5, "pf: "); addlog("IPv6 short jumbolen"); addlog("\n"); } } while (0);
    do { if ((void *)(reason) != ((void *)0)) { *(reason) = (8); if (8 < 17) pf_status.counters[8]++; } } while (0);
    return (PF_DROP);
   }
   break;
  default:
   break;
  }
  off += sizeof(opt) + opt.ip6o_len;
 }
 return (PF_PASS);
}
int
pf_walk_header6(struct pf_pdesc *pd, struct ip6_hdr *h, u_short *reason)
{
 struct ip6_frag frag;
 struct ip6_ext ext;
 struct ip6_rthdr rthdr;
 u_int32_t end;
 int hdr_cnt, fraghdr_cnt = 0, rthdr_cnt = 0;
 pd->off += sizeof(struct ip6_hdr);
 end = pd->off + ((__uint16_t)(h->ip6_ctlun.ip6_un1.ip6_un1_plen));
 pd->fragoff = pd->extoff = pd->jumbolen = 0;
 pd->proto = h->ip6_ctlun.ip6_un1.ip6_un1_nxt;
 for (hdr_cnt = 0; hdr_cnt < pf_hdr_limit; hdr_cnt++) {
  switch (pd->proto) {
  case 0:
  case 60:
   pd->badopts++;
  }
  switch (pd->proto) {
  case 44:
   if (fraghdr_cnt++) {
    do { if (pf_status.debug >= (5)) { log(5, "pf: "); addlog("IPv6 multiple fragment"); addlog("\n"); } } while (0);
    do { if ((void *)(reason) != ((void *)0)) { *(reason) = (2); if (2 < 17) pf_status.counters[2]++; } } while (0);
    return (PF_DROP);
   }
   if (pd->jumbolen != 0) {
    do { if (pf_status.debug >= (5)) { log(5, "pf: "); addlog("IPv6 fragmented jumbo"); addlog("\n"); } } while (0);
    do { if ((void *)(reason) != ((void *)0)) { *(reason) = (2); if (2 < 17) pf_status.counters[2]++; } } while (0);
    return (PF_DROP);
   }
   if (!pf_pull_hdr(pd->m, pd->off, &frag, sizeof(frag),
       ((void *)0), reason, 24)) {
    do { if (pf_status.debug >= (5)) { log(5, "pf: "); addlog("IPv6 short fragment"); addlog("\n"); } } while (0);
    return (PF_DROP);
   }
   if (((__uint16_t)((frag.ip6f_offlg & 0xfff8))) != 0) {
    pd->fragoff = pd->off;
    return (PF_PASS);
   }
   if (frag.ip6f_offlg & 0x0001)
    pd->fragoff = pd->off;
   pd->off += sizeof(frag);
   pd->proto = frag.ip6f_nxt;
   break;
  case 43:
   if (rthdr_cnt++) {
    do { if (pf_status.debug >= (5)) { log(5, "pf: "); addlog("IPv6 multiple rthdr"); addlog("\n"); } } while (0);
    do { if ((void *)(reason) != ((void *)0)) { *(reason) = (8); if (8 < 17) pf_status.counters[8]++; } } while (0);
    return (PF_DROP);
   }
   if (pd->fragoff != 0 && end < pd->off + sizeof(rthdr)) {
    pd->off = pd->fragoff;
    pd->proto = 44;
    return (PF_PASS);
   }
   if (!pf_pull_hdr(pd->m, pd->off, &rthdr, sizeof(rthdr),
       ((void *)0), reason, 24)) {
    do { if (pf_status.debug >= (5)) { log(5, "pf: "); addlog("IPv6 short rthdr"); addlog("\n"); } } while (0);
    return (PF_DROP);
   }
   if (rthdr.ip6r_type == 0) {
    do { if (pf_status.debug >= (5)) { log(5, "pf: "); addlog("IPv6 rthdr0"); addlog("\n"); } } while (0);
    do { if ((void *)(reason) != ((void *)0)) { *(reason) = (8); if (8 < 17) pf_status.counters[8]++; } } while (0);
    return (PF_DROP);
   }
  case 0:
   if (pd->proto == 0 && hdr_cnt > 0) {
    do { if (pf_status.debug >= (5)) { log(5, "pf: "); addlog("IPv6 hopopts not first"); addlog("\n"); } } while (0);
    do { if ((void *)(reason) != ((void *)0)) { *(reason) = (8); if (8 < 17) pf_status.counters[8]++; } } while (0);
    return (PF_DROP);
   }
  case 51:
  case 60:
   if (pd->fragoff != 0 && end < pd->off + sizeof(ext)) {
    pd->off = pd->fragoff;
    pd->proto = 44;
    return (PF_PASS);
   }
   if (!pf_pull_hdr(pd->m, pd->off, &ext, sizeof(ext),
       ((void *)0), reason, 24)) {
    do { if (pf_status.debug >= (5)) { log(5, "pf: "); addlog("IPv6 short exthdr"); addlog("\n"); } } while (0);
    return (PF_DROP);
   }
   if (pd->fragoff == 0)
    pd->extoff = pd->off;
   if (pd->proto == 0 && pd->fragoff == 0) {
    if (pf_walk_option6(pd, h,
        pd->off + sizeof(ext),
        pd->off + (ext.ip6e_len + 1) * 8, reason)
        != PF_PASS)
     return (PF_DROP);
    if (((__uint16_t)(h->ip6_ctlun.ip6_un1.ip6_un1_plen)) == 0 &&
        pd->jumbolen != 0) {
     do { if (pf_status.debug >= (5)) { log(5, "pf: "); addlog("IPv6 missing jumbo"); addlog("\n"); } } while (0);
     do { if ((void *)(reason) != ((void *)0)) { *(reason) = (8); if (8 < 17) pf_status.counters[8]++; } } while (0);
     return (PF_DROP);
    }
   }
   if (pd->proto == 51)
    pd->off += (ext.ip6e_len + 2) * 4;
   else
    pd->off += (ext.ip6e_len + 1) * 8;
   pd->proto = ext.ip6e_nxt;
   break;
  case 6:
  case 17:
  case 58:
   if (pd->fragoff != 0 && end < pd->off +
       (pd->proto == 6 ? sizeof(struct tcphdr) :
       pd->proto == 17 ? sizeof(struct udphdr) :
       sizeof(struct icmp6_hdr))) {
    pd->off = pd->fragoff;
    pd->proto = 44;
   }
  default:
   return (PF_PASS);
  }
 }
 do { if (pf_status.debug >= (5)) { log(5, "pf: "); addlog("IPv6 nested extension header limit"); addlog("\n"); } } while (0);
 do { if ((void *)(reason) != ((void *)0)) { *(reason) = (8); if (8 < 17) pf_status.counters[8]++; } } while (0);
 return (PF_DROP);
}
int
pf_setup_pdesc(struct pf_pdesc *pd, sa_family_t af, int dir,
    struct pfi_kif *kif, struct mbuf *m, u_short *reason)
{
 __builtin_bzero((pd), (sizeof(*pd)));
 pd->dir = dir;
 pd->kif = kif;
 pd->m = m;
 pd->sidx = (dir == PF_IN) ? 0 : 1;
 pd->didx = (dir == PF_IN) ? 1 : 0;
 pd->af = pd->naf = af;
 pd->rdomain = rtable_l2(pd->m->M_dat.MH.MH_pkthdr.ph_rtableid);
 switch (pd->af) {
 case 2: {
  struct ip *h;
  if (pd->m->M_dat.MH.MH_pkthdr.len < (int)sizeof(struct ip)) {
   do { if ((void *)(reason) != ((void *)0)) { *(reason) = (3); if (3 < 17) pf_status.counters[3]++; } } while (0);
   return (PF_DROP);
  }
  h = ((struct ip *)((pd->m)->m_hdr.mh_data));
  if (pd->m->M_dat.MH.MH_pkthdr.len < ((__uint16_t)(h->ip_len))) {
   do { if ((void *)(reason) != ((void *)0)) { *(reason) = (3); if (3 < 17) pf_status.counters[3]++; } } while (0);
   return (PF_DROP);
  }
  if (pf_walk_header(pd, h, reason) != PF_PASS)
   return (PF_DROP);
  pd->src = (struct pf_addr *)&h->ip_src;
  pd->dst = (struct pf_addr *)&h->ip_dst;
  pd->tot_len = ((__uint16_t)(h->ip_len));
  pd->tos = h->ip_tos & ~0x03;
  pd->ttl = h->ip_ttl;
  pd->virtual_proto = (h->ip_off & ((__uint16_t)(0x2000 | 0x1fff))) ?
       256 : pd->proto;
  break;
 }
 case 24: {
  struct ip6_hdr *h;
  if (pd->m->M_dat.MH.MH_pkthdr.len < (int)sizeof(struct ip6_hdr)) {
   do { if ((void *)(reason) != ((void *)0)) { *(reason) = (3); if (3 < 17) pf_status.counters[3]++; } } while (0);
   return (PF_DROP);
  }
  h = ((struct ip6_hdr *)((pd->m)->m_hdr.mh_data));
  if (pd->m->M_dat.MH.MH_pkthdr.len <
      sizeof(struct ip6_hdr) + ((__uint16_t)(h->ip6_ctlun.ip6_un1.ip6_un1_plen))) {
   do { if ((void *)(reason) != ((void *)0)) { *(reason) = (3); if (3 < 17) pf_status.counters[3]++; } } while (0);
   return (PF_DROP);
  }
  if (pf_walk_header6(pd, h, reason) != PF_PASS)
   return (PF_DROP);
  if (pd->jumbolen != 0) {
   do { if ((void *)(reason) != ((void *)0)) { *(reason) = (4); if (4 < 17) pf_status.counters[4]++; } } while (0);
   return (PF_DROP);
  }
  pd->src = (struct pf_addr *)&h->ip6_src;
  pd->dst = (struct pf_addr *)&h->ip6_dst;
  pd->tot_len = ((__uint16_t)(h->ip6_ctlun.ip6_un1.ip6_un1_plen)) + sizeof(struct ip6_hdr);
  pd->tos = (((__uint32_t)(h->ip6_ctlun.ip6_un1.ip6_un1_flow)) & 0x0fc00000) >> 20;
  pd->ttl = h->ip6_ctlun.ip6_un1.ip6_un1_hlim;
  pd->virtual_proto = (pd->fragoff != 0) ?
   256 : pd->proto;
  break;
 }
 default:
  panic("pf_setup_pdesc called with illegal af %u", pd->af);
 }
 pf_addrcpy(&pd->nsaddr, pd->src, pd->af);
 pf_addrcpy(&pd->ndaddr, pd->dst, pd->af);
 switch (pd->virtual_proto) {
 case 6: {
  struct tcphdr *th = &pd->hdr.tcp;
  if (!pf_pull_hdr(pd->m, pd->off, th, sizeof(*th),
      ((void *)0), reason, pd->af))
   return (PF_DROP);
  pd->hdrlen = sizeof(*th);
  if (pd->off + (th->th_off << 2) > pd->tot_len ||
      (th->th_off << 2) < sizeof(struct tcphdr)) {
   do { if ((void *)(reason) != ((void *)0)) { *(reason) = (3); if (3 < 17) pf_status.counters[3]++; } } while (0);
   return (PF_DROP);
  }
  pd->p_len = pd->tot_len - pd->off - (th->th_off << 2);
  pd->sport = &th->th_sport;
  pd->dport = &th->th_dport;
  pd->pcksum = &th->th_sum;
  break;
 }
 case 17: {
  struct udphdr *uh = &pd->hdr.udp;
  if (!pf_pull_hdr(pd->m, pd->off, uh, sizeof(*uh),
      ((void *)0), reason, pd->af))
   return (PF_DROP);
  pd->hdrlen = sizeof(*uh);
  if (uh->uh_dport == 0 ||
      pd->off + ((__uint16_t)(uh->uh_ulen)) > pd->tot_len ||
      ((__uint16_t)(uh->uh_ulen)) < sizeof(struct udphdr)) {
   do { if ((void *)(reason) != ((void *)0)) { *(reason) = (3); if (3 < 17) pf_status.counters[3]++; } } while (0);
   return (PF_DROP);
  }
  pd->sport = &uh->uh_sport;
  pd->dport = &uh->uh_dport;
  pd->pcksum = &uh->uh_sum;
  break;
 }
 case 1: {
  if (!pf_pull_hdr(pd->m, pd->off, &pd->hdr.icmp, 8,
      ((void *)0), reason, pd->af))
   return (PF_DROP);
  pd->hdrlen = 8;
  if (pd->off + pd->hdrlen > pd->tot_len) {
   do { if ((void *)(reason) != ((void *)0)) { *(reason) = (3); if (3 < 17) pf_status.counters[3]++; } } while (0);
   return (PF_DROP);
  }
  pd->pcksum = &pd->hdr.icmp.icmp_cksum;
  break;
 }
 case 58: {
  size_t icmp_hlen = sizeof(struct icmp6_hdr);
  if (!pf_pull_hdr(pd->m, pd->off, &pd->hdr.icmp6, icmp_hlen,
      ((void *)0), reason, pd->af))
   return (PF_DROP);
  switch (pd->hdr.icmp6.icmp6_type) {
  case 130:
  case 131:
   icmp_hlen = sizeof(struct mld_hdr);
   break;
  case 135:
  case 136:
   icmp_hlen = sizeof(struct nd_neighbor_solicit);
   break;
  }
  if (icmp_hlen > sizeof(struct icmp6_hdr) &&
      !pf_pull_hdr(pd->m, pd->off, &pd->hdr.icmp6, icmp_hlen,
      ((void *)0), reason, pd->af))
   return (PF_DROP);
  pd->hdrlen = icmp_hlen;
  if (pd->off + pd->hdrlen > pd->tot_len) {
   do { if ((void *)(reason) != ((void *)0)) { *(reason) = (3); if (3 < 17) pf_status.counters[3]++; } } while (0);
   return (PF_DROP);
  }
  pd->pcksum = &pd->hdr.icmp6.icmp6_cksum;
  break;
 }
 }
 if (pd->sport)
  pd->osport = pd->nsport = *pd->sport;
 if (pd->dport)
  pd->odport = pd->ndport = *pd->dport;
 return (PF_PASS);
}
void
pf_counters_inc(int action, struct pf_pdesc *pd, struct pf_state *s,
    struct pf_rule *r, struct pf_rule *a)
{
 int dirndx;
 pd->kif->pfik_bytes[pd->af == 24][pd->dir == PF_OUT]
     [action != PF_PASS] += pd->tot_len;
 pd->kif->pfik_packets[pd->af == 24][pd->dir == PF_OUT]
     [action != PF_PASS]++;
 if (action == PF_PASS || action == PF_AFRT || r->action == PF_DROP) {
  dirndx = (pd->dir == PF_OUT);
  r->packets[dirndx]++;
  r->bytes[dirndx] += pd->tot_len;
  if (a != ((void *)0)) {
   a->packets[dirndx]++;
   a->bytes[dirndx] += pd->tot_len;
  }
  if (s != ((void *)0)) {
   struct pf_rule_item *ri;
   struct pf_sn_item *sni;
   for((sni) = ((&s->src_nodes)->slh_first); (sni) != ((void *)0); (sni) = ((sni)->next.sle_next)) {
    sni->sn->packets[dirndx]++;
    sni->sn->bytes[dirndx] += pd->tot_len;
   }
   dirndx = (pd->dir == s->direction) ? 0 : 1;
   s->packets[dirndx]++;
   s->bytes[dirndx] += pd->tot_len;
   for((ri) = ((&s->match_rules)->slh_first); (ri) != ((void *)0); (ri) = ((ri)->entry.sle_next)) {
    ri->r->packets[dirndx]++;
    ri->r->bytes[dirndx] += pd->tot_len;
    if (ri->r->src.addr.type == PF_ADDR_TABLE)
     pfr_update_stats(ri->r->src.addr.p.tbl,
         &s->key[(s->direction == PF_IN)]->
      addr[(s->direction == PF_OUT)],
         pd, ri->r->action, ri->r->src.neg);
    if (ri->r->dst.addr.type == PF_ADDR_TABLE)
     pfr_update_stats(ri->r->dst.addr.p.tbl,
         &s->key[(s->direction == PF_IN)]->
      addr[(s->direction == PF_IN)],
         pd, ri->r->action, ri->r->dst.neg);
   }
  }
  if (r->src.addr.type == PF_ADDR_TABLE)
   pfr_update_stats(r->src.addr.p.tbl,
       (s == ((void *)0)) ? pd->src :
       &s->key[(s->direction == PF_IN)]->
    addr[(s->direction == PF_OUT)],
       pd, r->action, r->src.neg);
  if (r->dst.addr.type == PF_ADDR_TABLE)
   pfr_update_stats(r->dst.addr.p.tbl,
       (s == ((void *)0)) ? pd->dst :
       &s->key[(s->direction == PF_IN)]->
    addr[(s->direction == PF_IN)],
       pd, r->action, r->dst.neg);
 }
}
int
pf_test(sa_family_t af, int fwdir, struct ifnet *ifp, struct mbuf **m0)
{
 struct pfi_kif *kif;
 u_short action, reason = 0;
 struct pf_rule *a = ((void *)0), *r = &pf_default_rule;
 struct pf_state *s = ((void *)0);
 struct pf_ruleset *ruleset = ((void *)0);
 struct pf_pdesc pd;
 int dir = (fwdir == PF_FWD) ? PF_OUT : fwdir;
 u_int32_t qid, pqid = 0;
 if (!pf_status.running)
  return (PF_PASS);
 if (ifp->if_data.ifi_type == 0xf7 && ifp->if_carp_ptr.carp_d)
  kif = (struct pfi_kif *)ifp->if_carp_ptr.carp_d->if_pf_kif;
 else
  kif = (struct pfi_kif *)ifp->if_pf_kif;
 if (kif == ((void *)0)) {
  do { if (pf_status.debug >= (3)) { log(3, "pf: "); addlog("%s: kif == NULL, if_xname %s", __func__, ifp->if_xname); addlog("\n"); } } while (0);
  return (PF_DROP);
 }
 if (kif->pfik_flags & 0x0100)
  return (PF_PASS);
 if (((*m0)->m_hdr.mh_flags & 0x0002) == 0)
  panic("non-M_PKTHDR is passed to pf_test");
 if ((*m0)->M_dat.MH.MH_pkthdr.pf.flags & 0x01)
  return (PF_PASS);
 if ((*m0)->M_dat.MH.MH_pkthdr.pf.flags & 0x10)
  return (PF_PASS);
 if ((*m0)->M_dat.MH.MH_pkthdr.pf.flags & 0x40) {
  (*m0)->M_dat.MH.MH_pkthdr.pf.flags &= ~0x40;
  return (PF_PASS);
 }
 action = pf_setup_pdesc(&pd, af, dir, kif, *m0, &reason);
 if (action != PF_PASS) {
  pd.pflog |= 0x08;
  goto done;
 }
 switch (pd.af) {
 case 2:
  action = pf_normalize_ip(&pd, &reason);
  break;
 case 24:
  action = pf_normalize_ip6(&pd, &reason);
  break;
 }
 *m0 = pd.m;
 if (pd.m == ((void *)0))
  return PF_PASS;
 if (action != PF_PASS) {
  pd.pflog |= 0x08;
  goto done;
 }
 if (pf_status.reass && pd.virtual_proto == 256) {
  action = pf_setup_pdesc(&pd, af, dir, kif, pd.m, &reason);
  if (action != PF_PASS) {
   pd.pflog |= 0x08;
   goto done;
  }
 }
 pd.m->M_dat.MH.MH_pkthdr.pf.flags |= 0x80;
 (void)(0);
 switch (pd.virtual_proto) {
 case 256: {
  action = pf_test_rule(&pd, &r, &s, &a, &ruleset, &reason);
  if (action != PF_PASS)
   do { if ((void *)(&reason) != ((void *)0)) { *(&reason) = (2); if (2 < 17) pf_status.counters[2]++; } } while (0);
  break;
 }
 case 1: {
  if (pd.af != 2) {
   action = PF_DROP;
   do { if ((void *)(&reason) != ((void *)0)) { *(&reason) = (4); if (4 < 17) pf_status.counters[4]++; } } while (0);
   do { if (pf_status.debug >= (5)) { log(5, "pf: "); addlog("dropping IPv6 packet with ICMPv4 payload"); addlog("\n"); } } while (0);
   goto unlock;
  }
  action = pf_test_state_icmp(&pd, &s, &reason);
  if (action == PF_PASS || action == PF_AFRT) {
   pfsync_update_state(s);
   r = s->rule.ptr;
   a = s->anchor.ptr;
   pd.pflog |= s->log;
  } else if (s == ((void *)0))
   action = pf_test_rule(&pd, &r, &s, &a, &ruleset,
       &reason);
  break;
 }
 case 58: {
  if (pd.af != 24) {
   action = PF_DROP;
   do { if ((void *)(&reason) != ((void *)0)) { *(&reason) = (4); if (4 < 17) pf_status.counters[4]++; } } while (0);
   do { if (pf_status.debug >= (5)) { log(5, "pf: "); addlog("dropping IPv4 packet with ICMPv6 payload"); addlog("\n"); } } while (0);
   goto unlock;
  }
  action = pf_test_state_icmp(&pd, &s, &reason);
  if (action == PF_PASS || action == PF_AFRT) {
   pfsync_update_state(s);
   r = s->rule.ptr;
   a = s->anchor.ptr;
   pd.pflog |= s->log;
  } else if (s == ((void *)0))
   action = pf_test_rule(&pd, &r, &s, &a, &ruleset,
       &reason);
  break;
 }
 default:
  if (pd.virtual_proto == 6) {
   if ((pd.hdr.tcp.th_flags & 0x10) && pd.p_len == 0)
    pqid = 1;
   action = pf_normalize_tcp(&pd);
   if (action == PF_DROP)
    goto unlock;
  }
  action = pf_test_state(&pd, &s, &reason);
  if (action == PF_PASS || action == PF_AFRT) {
   pfsync_update_state(s);
   r = s->rule.ptr;
   a = s->anchor.ptr;
   pd.pflog |= s->log;
  } else if (s == ((void *)0))
   action = pf_test_rule(&pd, &r, &s, &a, &ruleset,
       &reason);
  if (pd.virtual_proto == 6) {
   if (s) {
    if (s->max_mss)
     pf_normalize_mss(&pd, s->max_mss);
   } else if (r->max_mss)
    pf_normalize_mss(&pd, r->max_mss);
  }
  break;
 }
unlock:
 (void)(0);
done:
 if (action != PF_DROP) {
  if (s) {
   if (action == PF_PASS && pd.badopts &&
       !(s->state_flags & 0x0001)) {
    action = PF_DROP;
    do { if ((void *)(&reason) != ((void *)0)) { *(&reason) = (8); if (8 < 17) pf_status.counters[8]++; } } while (0);
    pd.pflog |= 0x08;
    do { if (pf_status.debug >= (5)) { log(5, "pf: "); addlog("dropping packet with " "ip/ipv6 options in pf_test()"); addlog("\n"); } } while (0);
   }
   pf_scrub(pd.m, s->state_flags, pd.af, s->min_ttl,
       s->set_tos);
   pf_tag_packet(pd.m, s->tag, s->rtableid[pd.didx]);
   if (pqid || (pd.tos & 0x10)) {
    qid = s->pqid;
    if (s->state_flags & 0x0200)
     pd.m->M_dat.MH.MH_pkthdr.pf.prio = s->set_prio[1];
   } else {
    qid = s->qid;
    if (s->state_flags & 0x0200)
     pd.m->M_dat.MH.MH_pkthdr.pf.prio = s->set_prio[0];
   }
  } else {
   pf_scrub(pd.m, r->scrub_flags, pd.af, r->min_ttl,
       r->set_tos);
   if (pqid || (pd.tos & 0x10)) {
    qid = r->pqid;
    if (r->scrub_flags & 0x0200)
     pd.m->M_dat.MH.MH_pkthdr.pf.prio = r->set_prio[1];
   } else {
    qid = r->qid;
    if (r->scrub_flags & 0x0200)
     pd.m->M_dat.MH.MH_pkthdr.pf.prio = r->set_prio[0];
   }
  }
 }
 if (action == PF_PASS && qid)
  pd.m->M_dat.MH.MH_pkthdr.pf.qid = qid;
 if (pd.dir == PF_IN && s && s->key[PF_SK_STACK]) {
  if (pd.m->M_dat.MH.MH_pkthdr.pf.statekey != ((void *)0)) {
   m_print(pd.m, printf);
   panic("incoming mbuf already has a statekey");
  }
  pd.m->M_dat.MH.MH_pkthdr.pf.statekey =
      pf_state_key_ref(s->key[PF_SK_STACK]);
 }
 if (pd.dir == PF_OUT &&
     pd.m->M_dat.MH.MH_pkthdr.pf.inp && !pd.m->M_dat.MH.MH_pkthdr.pf.inp->inp_pf_sk &&
     s && s->key[PF_SK_STACK] && !s->key[PF_SK_STACK]->inp) {
  pd.m->M_dat.MH.MH_pkthdr.pf.inp->inp_pf_sk =
      pf_state_key_ref(s->key[PF_SK_STACK]);
  s->key[PF_SK_STACK]->inp = pd.m->M_dat.MH.MH_pkthdr.pf.inp;
 }
 if (s && (pd.m->M_dat.MH.MH_pkthdr.ph_flowid & 0x8000) == 0) {
  pd.m->M_dat.MH.MH_pkthdr.ph_flowid = 0x8000 |
      (0x7fff & ((__uint64_t)(*(__uint64_t *)(&s->id))));
 }
 if (pd.destchg)
  if ((pd.af == 2 && (((__uint32_t)(pd.dst->pfa.v4.s_addr)) >>
      24) == 127) ||
      (pd.af == 24 && ((*(const u_int32_t *)(const void *)(&(&pd.dst->pfa.v6)->__u6_addr.__u6_addr8[0]) == 0) && (*(const u_int32_t *)(const void *)(&(&pd.dst->pfa.v6)->__u6_addr.__u6_addr8[4]) == 0) && (*(const u_int32_t *)(const void *)(&(&pd.dst->pfa.v6)->__u6_addr.__u6_addr8[8]) == 0) && (*(const u_int32_t *)(const void *)(&(&pd.dst->pfa.v6)->__u6_addr.__u6_addr8[12]) == ((__uint32_t)(1))))))
   pd.m->M_dat.MH.MH_pkthdr.pf.flags |= 0x04;
 if (pd.destchg && pd.dir == PF_OUT)
  pd.m->M_dat.MH.MH_pkthdr.pf.flags |= 0x20;
 if (pd.dir == PF_IN && action == PF_PASS && r->divert.port) {
  struct pf_divert *divert;
  if ((divert = pf_get_divert(pd.m))) {
   pd.m->M_dat.MH.MH_pkthdr.pf.flags |= 0x08;
   divert->port = r->divert.port;
   divert->rdomain = pd.rdomain;
   divert->addr = r->divert.addr;
  }
 }
 if (action == PF_PASS && r->divert_packet.port)
  action = PF_DIVERT;
 if (pd.pflog) {
  struct pf_rule_item *ri;
  if (pd.pflog & 0x08 || r->log & 0x02)
   pflog_packet(&pd,reason,r,a,ruleset,((void *)0));
  if (s) {
   for((ri) = ((&s->match_rules)->slh_first); (ri) != ((void *)0); (ri) = ((ri)->entry.sle_next))
    if (ri->r->log & 0x02)
     pflog_packet(&pd,reason,ri->r,a,ruleset,((void *)0));
  }
 }
 pf_counters_inc(action, &pd, s, r, a);
 switch (action) {
 case PF_SYNPROXY_DROP:
  m_freem(pd.m);
 case PF_DEFER:
  pd.m = ((void *)0);
  action = PF_PASS;
  break;
 case PF_DIVERT:
  switch (pd.af) {
  case 2:
   if (!divert_packet(pd.m, pd.dir, r->divert_packet.port))
    pd.m = ((void *)0);
   break;
  case 24:
   if (!divert6_packet(pd.m, pd.dir,
       r->divert_packet.port))
    pd.m = ((void *)0);
   break;
  }
  action = PF_PASS;
  break;
 case PF_AFRT:
  if (pf_translate_af(&pd)) {
   action = PF_DROP;
   break;
  }
  pd.m->M_dat.MH.MH_pkthdr.pf.flags |= 0x01;
  switch (pd.naf) {
  case 2:
   if (pd.dir == PF_IN)
    ip_forward(pd.m, ifp, ((void *)0), 1);
   else
    ip_output(pd.m, ((void *)0), ((void *)0), 0, ((void *)0), ((void *)0), 0);
   break;
  case 24:
   if (pd.dir == PF_IN)
    ip6_forward(pd.m, ((void *)0), 1);
   else
    ip6_output(pd.m, ((void *)0), ((void *)0), 0, ((void *)0), ((void *)0));
   break;
  }
  pd.m = ((void *)0);
  action = PF_PASS;
  break;
 case PF_DROP:
  m_freem(pd.m);
  pd.m = ((void *)0);
  break;
 default:
  if (r->rt) {
   switch (pd.af) {
   case 2:
    pf_route(&pd, r, s);
    break;
   case 24:
    pf_route6(&pd, r, s);
    break;
   }
  }
  break;
 }
 if (pf_status.reass && action == PF_PASS && pd.m && fwdir == PF_FWD) {
  struct m_tag *mtag;
  if ((mtag = m_tag_find(pd.m, 0x0800, ((void *)0))))
   action = pf_refragment6(&pd.m, mtag, ((void *)0), ((void *)0), ((void *)0));
 }
 if (s && action != PF_DROP) {
  if (!s->if_index_in && dir == PF_IN)
   s->if_index_in = ifp->if_index;
  else if (!s->if_index_out && dir == PF_OUT)
   s->if_index_out = ifp->if_index;
 }
 *m0 = pd.m;
 return (action);
}
int
pf_ouraddr(struct mbuf *m)
{
 struct pf_state_key *sk;
 if (m->M_dat.MH.MH_pkthdr.pf.flags & 0x08)
  return (1);
 sk = m->M_dat.MH.MH_pkthdr.pf.statekey;
 if (sk != ((void *)0)) {
  if (sk->inp != ((void *)0))
   return (1);
  if (sk->reverse != ((void *)0))
   return (0);
 }
 return (-1);
}
void
pf_pkt_addr_changed(struct mbuf *m)
{
 pf_pkt_unlink_state_key(m);
 m->M_dat.MH.MH_pkthdr.pf.inp = ((void *)0);
}
struct inpcb *
pf_inp_lookup(struct mbuf *m)
{
 struct inpcb *inp = ((void *)0);
 struct pf_state_key *sk = m->M_dat.MH.MH_pkthdr.pf.statekey;
 if (!pf_state_key_isvalid(sk))
  pf_pkt_unlink_state_key(m);
 else
  inp = m->M_dat.MH.MH_pkthdr.pf.statekey->inp;
 if (inp && inp->inp_pf_sk)
  ((m->M_dat.MH.MH_pkthdr.pf.statekey == inp->inp_pf_sk) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../net/pf.c", 7124, "m->m_pkthdr.pf.statekey == inp->inp_pf_sk"));
 return (inp);
}
void
pf_inp_link(struct mbuf *m, struct inpcb *inp)
{
 struct pf_state_key *sk = m->M_dat.MH.MH_pkthdr.pf.statekey;
 if (!pf_state_key_isvalid(sk)) {
  pf_pkt_unlink_state_key(m);
  return;
 }
 if (inp && !sk->inp && !inp->inp_pf_sk) {
  sk->inp = inp;
  inp->inp_pf_sk = pf_state_key_ref(sk);
 }
 pf_pkt_unlink_state_key(m);
}
void
pf_inp_unlink(struct inpcb *inp)
{
 if (inp->inp_pf_sk) {
  inp->inp_pf_sk->inp = ((void *)0);
  pf_inpcb_unlink_state_key(inp);
 }
}
void
pf_state_key_link(struct pf_state_key *sk, struct pf_state_key *pkt_sk)
{
 (((pkt_sk->reverse == ((void *)0)) && (sk->reverse == ((void *)0))) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../net/pf.c", 7167, "(pkt_sk->reverse == NULL) && (sk->reverse == NULL)"));
 pkt_sk->reverse = pf_state_key_ref(sk);
 sk->reverse = pf_state_key_ref(pkt_sk);
}
void
pf_log_matches(struct pf_pdesc *pd, struct pf_rule *rm, struct pf_rule *am,
    struct pf_ruleset *ruleset, struct pf_rule_slist *matchrules)
{
 struct pf_rule_item *ri;
 if (rm->log & 0x10)
  return;
 for((ri) = ((matchrules)->slh_first); (ri) != ((void *)0); (ri) = ((ri)->entry.sle_next))
  if (ri->r->log & 0x10)
   pflog_packet(pd,0,rm,am,ruleset,ri->r);
}
struct pf_state_key *
pf_state_key_ref(struct pf_state_key *sk)
{
 if (sk != ((void *)0))
  refcnt_take(&(sk->refcnt));
 return (sk);
}
void
pf_state_key_unref(struct pf_state_key *sk)
{
 if ((sk != ((void *)0)) && refcnt_rele(&(sk->refcnt))) {
  ((!pf_state_key_isvalid(sk)) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../net/pf.c", 7203, "!pf_state_key_isvalid(sk)"));
  ((sk->reverse == ((void *)0)) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../net/pf.c", 7205, "sk->reverse == NULL"));
  ((sk->inp == ((void *)0)) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../net/pf.c", 7207, "sk->inp == NULL"));
  pool_put(&pf_state_key_pl, sk);
 }
}
int
pf_state_key_isvalid(struct pf_state_key *sk)
{
 return ((sk != ((void *)0)) && (sk->removed == 0));
}
void
pf_pkt_unlink_state_key(struct mbuf *m)
{
 pf_state_key_unref(m->M_dat.MH.MH_pkthdr.pf.statekey);
 m->M_dat.MH.MH_pkthdr.pf.statekey = ((void *)0);
}
void
pf_pkt_state_key_ref(struct mbuf *m)
{
 pf_state_key_ref(m->M_dat.MH.MH_pkthdr.pf.statekey);
}
void
pf_inpcb_unlink_state_key(struct inpcb *inp)
{
 if (inp != ((void *)0)) {
  pf_state_key_unref(inp->inp_pf_sk);
  inp->inp_pf_sk = ((void *)0);
 }
}
void
pf_state_key_unlink_reverse(struct pf_state_key *sk)
{
 if ((sk != ((void *)0)) && (sk->reverse != ((void *)0))) {
  pf_state_key_unref(sk->reverse->reverse);
  sk->reverse->reverse = ((void *)0);
  pf_state_key_unref(sk->reverse);
  sk->reverse = ((void *)0);
 }
}
