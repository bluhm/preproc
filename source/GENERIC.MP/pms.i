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
typedef void *pckbc_tag_t;
typedef int pckbc_slot_t;
struct pckbc_internal {
 bus_space_tag_t t_iot;
 bus_space_handle_t t_ioh_d, t_ioh_c;
 bus_addr_t t_addr;
 u_char t_cmdbyte;
 int t_flags;
 int t_haveaux;
 struct pckbc_slotdata *t_slotdata[2];
 struct pckbc_softc *t_sc;
 struct timeout t_cleanup;
 struct timeout t_poll;
};
typedef void (*pckbc_inputfcn)(void *, int);
struct pckbc_softc {
 struct device sc_dv;
 struct pckbc_internal *id;
 pckbc_inputfcn inputhandler[2];
 void *inputarg[2];
 char *subname[2];
};
struct pckbc_attach_args {
 pckbc_tag_t pa_tag;
 pckbc_slot_t pa_slot;
};
extern const char *pckbc_slot_names[];
extern struct pckbc_internal pckbc_consdata;
extern int pckbc_console_attached;
void pckbc_set_inputhandler(pckbc_tag_t, pckbc_slot_t,
     pckbc_inputfcn, void *, char *);
void pckbc_flush(pckbc_tag_t, pckbc_slot_t);
int pckbc_poll_cmd(pckbc_tag_t, pckbc_slot_t, u_char *, int,
   int, u_char *, int);
int pckbc_enqueue_cmd(pckbc_tag_t, pckbc_slot_t, u_char *, int,
      int, int, u_char *);
int pckbc_send_cmd(bus_space_tag_t, bus_space_handle_t, u_char);
int pckbc_poll_data(pckbc_tag_t, pckbc_slot_t);
int pckbc_poll_data1(bus_space_tag_t, bus_space_handle_t,
     bus_space_handle_t, pckbc_slot_t, int);
void pckbc_set_poll(pckbc_tag_t, pckbc_slot_t, int);
int pckbc_xt_translation(pckbc_tag_t);
void pckbc_slot_enable(pckbc_tag_t, pckbc_slot_t, int);
void pckbc_attach(struct pckbc_softc *, int);
int pckbc_cnattach(bus_space_tag_t, bus_addr_t, bus_size_t, int);
int pckbc_is_console(bus_space_tag_t, bus_addr_t);
void pckbc_reset(struct pckbc_softc *);
void pckbc_stop(struct pckbc_softc *);
int pckbcintr(void *);
void pckbc_release_console(void);
typedef u_int16_t keysym_t;
typedef u_int32_t kbd_t;
struct wscons_keymap {
 keysym_t command;
 keysym_t group1[2];
 keysym_t group2[2];
};
struct wscons_keydesc {
 kbd_t name;
 kbd_t base;
 int map_size;
 const keysym_t *map;
};
struct wskbd_mapdata {
 const struct wscons_keydesc *keydesc;
 kbd_t layout;
};
void wskbd_get_mapentry(const struct wskbd_mapdata *, int,
                                struct wscons_keymap *);
void wskbd_init_keymap(int, struct wscons_keymap **, int *);
int wskbd_load_keymap(const struct wskbd_mapdata *, kbd_t,
                               struct wscons_keymap **, int *);
keysym_t wskbd_compose_value(keysym_t *);
struct pcisel {
 u_int8_t pc_bus;
 u_int8_t pc_dev;
 u_int8_t pc_func;
};
struct pci_io {
 struct pcisel pi_sel;
 int pi_reg;
 int pi_width;
 u_int32_t pi_data;
};
struct pci_rom {
 struct pcisel pr_sel;
 int pr_romlen;
 char *pr_rom;
};
struct pci_vga {
 struct pcisel pv_sel;
 int pv_lock;
 int pv_decode;
};
struct wscons_event {
 u_int type;
 int value;
 struct timespec time;
};
struct wskbd_bell_data {
 u_int which;
 u_int pitch;
 u_int period;
 u_int volume;
};
struct wskbd_keyrepeat_data {
 u_int which;
 u_int del1;
 u_int delN;
};
struct wskbd_map_data {
 u_int maplen;
 struct wscons_keymap *map;
};
struct wskbd_backlight {
 unsigned int min, max, curval;
};
struct wskbd_encoding_data {
 int nencodings;
 kbd_t *encodings;
};
struct wsmouse_calibcoords {
 int minx, miny;
 int maxx, maxy;
 int swapxy;
 int resx, resy;
 int samplelen;
 struct wsmouse_calibcoord {
  int rawx, rawy;
  int x, y;
 } samples[16];
};
enum wsmousecfg {
 WSMOUSECFG_DX_SCALE = 0,
 WSMOUSECFG_DY_SCALE,
 WSMOUSECFG_PRESSURE_LO,
 WSMOUSECFG_PRESSURE_HI,
 WSMOUSECFG_TRKMAXDIST,
 WSMOUSECFG_SWAPXY,
 WSMOUSECFG_X_INV,
 WSMOUSECFG_Y_INV,
 WSMOUSECFG_DX_MAX = 32,
 WSMOUSECFG_DY_MAX,
 WSMOUSECFG_X_HYSTERESIS,
 WSMOUSECFG_Y_HYSTERESIS,
 WSMOUSECFG_DECELERATION,
 WSMOUSECFG_STRONG_HYSTERESIS,
 WSMOUSECFG_SMOOTHING,
 WSMOUSECFG_SOFTBUTTONS = 64,
 WSMOUSECFG_SOFTMBTN,
 WSMOUSECFG_TOPBUTTONS,
 WSMOUSECFG_TWOFINGERSCROLL,
 WSMOUSECFG_EDGESCROLL,
 WSMOUSECFG_HORIZSCROLL,
 WSMOUSECFG_SWAPSIDES,
 WSMOUSECFG_DISABLE,
 WSMOUSECFG_TAPPING,
 WSMOUSECFG_LEFT_EDGE = 128,
 WSMOUSECFG_RIGHT_EDGE,
 WSMOUSECFG_TOP_EDGE,
 WSMOUSECFG_BOTTOM_EDGE,
 WSMOUSECFG_CENTERWIDTH,
 WSMOUSECFG_HORIZSCROLLDIST,
 WSMOUSECFG_VERTSCROLLDIST,
 WSMOUSECFG_F2WIDTH,
 WSMOUSECFG_F2PRESSURE,
 WSMOUSECFG_TAP_MAXTIME,
 WSMOUSECFG_TAP_CLICKTIME,
 WSMOUSECFG_TAP_LOCKTIME,
};
struct wsmouse_param {
 enum wsmousecfg key;
 int value;
};
struct wsmouse_parameters {
 struct wsmouse_param *params;
 u_int nparams;
};
struct wsdisplay_fbinfo {
 u_int height;
 u_int width;
 u_int depth;
 u_int cmsize;
};
struct wsdisplay_cmap {
 u_int index;
 u_int count;
 u_char *red;
 u_char *green;
 u_char *blue;
};
struct wsdisplay_curpos {
 u_int x, y;
};
struct wsdisplay_cursor {
 u_int which;
 u_int enable;
 struct wsdisplay_curpos pos;
 struct wsdisplay_curpos hot;
 struct wsdisplay_cmap cmap;
 struct wsdisplay_curpos size;
 u_char *image;
 u_char *mask;
};
struct wsdisplay_font {
 char name[32];
 int index;
 int firstchar, numchars;
 int encoding;
 u_int fontwidth, fontheight, stride;
 int bitorder, byteorder;
 void *cookie;
 void *data;
};
struct wsdisplay_burner {
 u_int off;
 u_int on;
 u_int flags;
};
struct wsdisplay_addscreendata {
 int idx;
 char screentype[16];
 char emul[16];
};
struct wsdisplay_delscreendata {
 int idx;
 int flags;
};
struct wsdisplay_param {
        int param;
        int min, max, curval;
        int reserved[4];
};
struct wsdisplay_gfx_mode {
 int width;
 int height;
 int depth;
};
struct wsdisplay_screentype {
 int idx;
 int nidx;
 char name[16];
 int ncols, nrows;
 int fontwidth, fontheight;
};
struct wsdisplay_emultype {
 int idx;
 char name[16];
};
struct wsmux_device {
 int type;
 int idx;
};
struct wsmux_device_list {
 int ndevices;
 struct wsmux_device devices[32];
};
struct wsmouse_accessops {
 int (*enable)(void *);
 int (*ioctl)(void *v, u_long cmd, caddr_t data, int flag,
      struct proc *p);
 void (*disable)(void *);
};
struct wsmousedev_attach_args {
 const struct wsmouse_accessops *accessops;
 void *accesscookie;
};
int wsmousedevprint(void *, const char *);
struct device;
enum wsmouseval {
 WSMOUSE_REL_X,
 WSMOUSE_ABS_X,
 WSMOUSE_REL_Y,
 WSMOUSE_ABS_Y,
 WSMOUSE_PRESSURE,
 WSMOUSE_CONTACTS,
 WSMOUSE_TOUCH_WIDTH,
 WSMOUSE_MT_REL_X,
 WSMOUSE_MT_ABS_X,
 WSMOUSE_MT_REL_Y,
 WSMOUSE_MT_ABS_Y,
 WSMOUSE_MT_PRESSURE
};
struct mtpoint {
 int x;
 int y;
 int pressure;
 int slot;
};
void wsmouse_buttons(struct device *, u_int);
void wsmouse_motion(struct device *, int, int, int, int);
void wsmouse_position(struct device *, int, int);
void wsmouse_touch(struct device *, int, int);
void wsmouse_mtstate(struct device *, int, int, int, int);
void wsmouse_mtframe(struct device *, struct mtpoint *, int);
void wsmouse_set(struct device *, enum wsmouseval, int, int);
int wsmouse_id_to_slot(struct device *, int);
void wsmouse_input_sync(struct device *);
int wsmouse_mt_init(struct device *, int, int);
int wsmouse_set_mode(struct device *, int);
int wsmouse_get_params(struct device *, struct wsmouse_param *, u_int);
int wsmouse_set_params(struct device *, const struct wsmouse_param *, u_int);
enum wsmousehw_type {
 WSMOUSEHW_RAW,
 WSMOUSEHW_MOUSE,
 WSMOUSEHW_TOUCHPAD,
 WSMOUSEHW_CLICKPAD,
 WSMOUSEHW_TPANEL,
};
struct wsmousehw {
 int type;
 enum wsmousehw_type hw_type;
 int x_min;
 int x_max;
 int y_min;
 int y_max;
 int h_res;
 int v_res;
 int flags;
 int mt_slots;
 int contacts_max;
};
struct wsmousehw *wsmouse_get_hw(struct device*);
int wsmouse_configure(struct device *, struct wsmouse_param *, u_int);
int mouse_has_softbtn;
struct pms_softc;
struct pms_protocol {
 int type;
 u_int packetsize;
 int (*enable)(struct pms_softc *);
 int (*ioctl)(struct pms_softc *, u_long, caddr_t, int, struct proc *);
 int (*sync)(struct pms_softc *, int);
 void (*proc)(struct pms_softc *);
 void (*disable)(struct pms_softc *);
};
struct synaptics_softc {
 int identify;
 int capabilities, ext_capabilities, ext2_capabilities;
 int model, ext_model;
 int modes;
 int mode;
 int mask;
 u_int sec_buttons;
};
struct alps_softc {
 int model;
 int mask;
 int version;
 u_int gesture;
 u_int sec_buttons;
 int old_x, old_y;
};
struct elantech_softc {
 int flags;
 int fw_version;
 int min_x, min_y;
 int max_x, max_y;
 u_int mt_slots;
 int width;
 u_char parity[256];
 u_char p1, p2, p3;
 int wsmode;
 int old_x, old_y;
 u_int old_buttons;
};
struct pms_softc {
 struct device sc_dev;
 pckbc_tag_t sc_kbctag;
 int sc_state;
 struct rwlock sc_state_lock;
 int sc_dev_enable;
 int poll;
 int inputstate;
 const struct pms_protocol *protocol;
 struct synaptics_softc *synaptics;
 struct alps_softc *alps;
 struct elantech_softc *elantech;
 u_char packet[8];
 struct device *sc_wsmousedev;
 struct device *sc_sec_wsmousedev;
};
static const u_int butmap[8] = {
 0,
 (1 << ((1) - 1)),
 (1 << ((3) - 1)),
 (1 << ((1) - 1)) | (1 << ((3) - 1)),
 (1 << ((2) - 1)),
 (1 << ((1) - 1)) | (1 << ((2) - 1)),
 (1 << ((2) - 1)) | (1 << ((3) - 1)),
 (1 << ((1) - 1)) | (1 << ((2) - 1)) | (1 << ((3) - 1))
};
static const struct alps_model {
 int version;
 int mask;
 int model;
} alps_models[] = {
 { 0x2021, 0xf8, (1 << 2) | (1 << 3) },
 { 0x2221, 0xf8, (1 << 2) | (1 << 3) },
 { 0x2222, 0xff, (1 << 2) | (1 << 3) },
 { 0x3222, 0xf8, (1 << 2) | (1 << 3) },
 { 0x5212, 0xff, (1 << 2) | (1 << 3) | (1 << 4) },
 { 0x5321, 0xf8, (1 << 1) },
 { 0x5322, 0xf8, (1 << 1) },
 { 0x603b, 0xf8, (1 << 1) },
 { 0x6222, 0xcf, (1 << 2) | (1 << 3) | (1 << 4) },
 { 0x6321, 0xf8, (1 << 1) },
 { 0x6322, 0xf8, (1 << 1) },
 { 0x6323, 0xf8, (1 << 1) },
 { 0x6324, 0x8f, (1 << 1) },
 { 0x6325, 0xef, (1 << 1) },
 { 0x6326, 0xf8, (1 << 1) },
 { 0x7301, 0xf8, (1 << 2) },
 { 0x7321, 0xf8, (1 << 1) },
 { 0x7322, 0xf8, (1 << 1) },
 { 0x7325, 0xcf, (1 << 1) },
};
static struct wsmouse_param synaptics_params[] = {
 { WSMOUSECFG_PRESSURE_LO, 25 },
 { WSMOUSECFG_PRESSURE_HI, 30 }
};
static struct wsmouse_param alps_params[] = {
 { WSMOUSECFG_SMOOTHING, 3 }
};
int pmsprobe(struct device *, void *, void *);
void pmsattach(struct device *, struct device *, void *);
int pmsactivate(struct device *, int);
void pmsinput(void *, int);
int pms_change_state(struct pms_softc *, int, int);
int pms_ioctl(void *, u_long, caddr_t, int, struct proc *);
int pms_enable(void *);
void pms_disable(void *);
int pms_sec_ioctl(void *, u_long, caddr_t, int, struct proc *);
int pms_sec_enable(void *);
void pms_sec_disable(void *);
int pms_cmd(struct pms_softc *, u_char *, int, u_char *, int);
int pms_spec_cmd(struct pms_softc *, int);
int pms_get_devid(struct pms_softc *, u_char *);
int pms_get_status(struct pms_softc *, u_char *);
int pms_set_rate(struct pms_softc *, int);
int pms_set_resolution(struct pms_softc *, int);
int pms_set_scaling(struct pms_softc *, int);
int pms_reset(struct pms_softc *);
int pms_dev_enable(struct pms_softc *);
int pms_dev_disable(struct pms_softc *);
void pms_protocol_lookup(struct pms_softc *);
int pms_enable_intelli(struct pms_softc *);
int pms_ioctl_mouse(struct pms_softc *, u_long, caddr_t, int, struct proc *);
int pms_sync_mouse(struct pms_softc *, int);
void pms_proc_mouse(struct pms_softc *);
int pms_enable_synaptics(struct pms_softc *);
int pms_ioctl_synaptics(struct pms_softc *, u_long, caddr_t, int, struct proc *);
int pms_sync_synaptics(struct pms_softc *, int);
void pms_proc_synaptics(struct pms_softc *);
void pms_disable_synaptics(struct pms_softc *);
int pms_enable_alps(struct pms_softc *);
int pms_ioctl_alps(struct pms_softc *, u_long, caddr_t, int, struct proc *);
int pms_sync_alps(struct pms_softc *, int);
void pms_proc_alps(struct pms_softc *);
int pms_enable_elantech_v1(struct pms_softc *);
int pms_enable_elantech_v2(struct pms_softc *);
int pms_enable_elantech_v3(struct pms_softc *);
int pms_enable_elantech_v4(struct pms_softc *);
int pms_ioctl_elantech(struct pms_softc *, u_long, caddr_t, int,
    struct proc *);
int pms_sync_elantech_v1(struct pms_softc *, int);
int pms_sync_elantech_v2(struct pms_softc *, int);
int pms_sync_elantech_v3(struct pms_softc *, int);
int pms_sync_elantech_v4(struct pms_softc *, int);
void pms_proc_elantech_v1(struct pms_softc *);
void pms_proc_elantech_v2(struct pms_softc *);
void pms_proc_elantech_v3(struct pms_softc *);
void pms_proc_elantech_v4(struct pms_softc *);
int synaptics_knock(struct pms_softc *);
int synaptics_set_mode(struct pms_softc *, int);
int synaptics_query(struct pms_softc *, int, int *);
int synaptics_get_hwinfo(struct pms_softc *);
void synaptics_sec_proc(struct pms_softc *);
int alps_sec_proc(struct pms_softc *);
int alps_get_hwinfo(struct pms_softc *);
int elantech_knock(struct pms_softc *);
void elantech_send_input(struct pms_softc *, int, int, int, int);
int elantech_get_hwinfo_v1(struct pms_softc *);
int elantech_get_hwinfo_v2(struct pms_softc *);
int elantech_get_hwinfo_v3(struct pms_softc *);
int elantech_get_hwinfo_v4(struct pms_softc *);
int elantech_ps2_cmd(struct pms_softc *, u_char);
int elantech_set_absolute_mode_v1(struct pms_softc *);
int elantech_set_absolute_mode_v2(struct pms_softc *);
int elantech_set_absolute_mode_v3(struct pms_softc *);
int elantech_set_absolute_mode_v4(struct pms_softc *);
struct cfattach pms_ca = {
 sizeof(struct pms_softc), pmsprobe, pmsattach, ((void *)0),
 pmsactivate
};
struct cfdriver pms_cd = {
 ((void *)0), "pms", DV_DULL
};
const struct wsmouse_accessops pms_accessops = {
 pms_enable,
 pms_ioctl,
 pms_disable,
};
const struct wsmouse_accessops pms_sec_accessops = {
 pms_sec_enable,
 pms_sec_ioctl,
 pms_sec_disable,
};
const struct pms_protocol pms_protocols[] = {
 {
  0, 3,
  ((void *)0),
  pms_ioctl_mouse,
  pms_sync_mouse,
  pms_proc_mouse,
  ((void *)0)
 },
 {
  2, 6,
  pms_enable_synaptics,
  pms_ioctl_synaptics,
  pms_sync_synaptics,
  pms_proc_synaptics,
  pms_disable_synaptics
 },
 {
  3, 6,
  pms_enable_alps,
  pms_ioctl_alps,
  pms_sync_alps,
  pms_proc_alps,
  ((void *)0)
 },
 {
  4, 4,
  pms_enable_elantech_v1,
  pms_ioctl_elantech,
  pms_sync_elantech_v1,
  pms_proc_elantech_v1,
  ((void *)0)
 },
 {
  5, 6,
  pms_enable_elantech_v2,
  pms_ioctl_elantech,
  pms_sync_elantech_v2,
  pms_proc_elantech_v2,
  ((void *)0)
 },
 {
  6, 6,
  pms_enable_elantech_v3,
  pms_ioctl_elantech,
  pms_sync_elantech_v3,
  pms_proc_elantech_v3,
  ((void *)0)
 },
 {
  7, 6,
  pms_enable_elantech_v4,
  pms_ioctl_elantech,
  pms_sync_elantech_v4,
  pms_proc_elantech_v4,
  ((void *)0)
 },
 {
  1, 4,
  pms_enable_intelli,
  pms_ioctl_mouse,
  pms_sync_mouse,
  pms_proc_mouse,
  ((void *)0)
 },
};
int
pms_cmd(struct pms_softc *sc, u_char *cmd, int len, u_char *resp, int resplen)
{
 if (sc->poll) {
  return pckbc_poll_cmd(sc->sc_kbctag, 1,
      cmd, len, resplen, resp, 1);
 } else {
  return pckbc_enqueue_cmd(sc->sc_kbctag, 1,
      cmd, len, resplen, 1, resp);
 }
}
int
pms_spec_cmd(struct pms_softc *sc, int cmd)
{
 if (pms_set_scaling(sc, 1) ||
     pms_set_resolution(sc, (cmd >> 6) & 0x03) ||
     pms_set_resolution(sc, (cmd >> 4) & 0x03) ||
     pms_set_resolution(sc, (cmd >> 2) & 0x03) ||
     pms_set_resolution(sc, (cmd >> 0) & 0x03))
  return (-1);
 return (0);
}
int
pms_get_devid(struct pms_softc *sc, u_char *resp)
{
 u_char cmd[1];
 cmd[0] = 0xf2;
 return (pms_cmd(sc, cmd, 1, resp, 1));
}
int
pms_get_status(struct pms_softc *sc, u_char *resp)
{
 u_char cmd[1];
 cmd[0] = 0xe9;
 return (pms_cmd(sc, cmd, 1, resp, 3));
}
int
pms_set_rate(struct pms_softc *sc, int value)
{
 u_char cmd[2];
 cmd[0] = 0xf3;
 cmd[1] = value;
 return (pms_cmd(sc, cmd, 2, ((void *)0), 0));
}
int
pms_set_resolution(struct pms_softc *sc, int value)
{
 u_char cmd[2];
 cmd[0] = 0xe8;
 cmd[1] = value;
 return (pms_cmd(sc, cmd, 2, ((void *)0), 0));
}
int
pms_set_scaling(struct pms_softc *sc, int scale)
{
 u_char cmd[1];
 switch (scale) {
 case 1:
 default:
  cmd[0] = 0xe6;
  break;
 case 2:
  cmd[0] = 0xe7;
  break;
 }
 return (pms_cmd(sc, cmd, 1, ((void *)0), 0));
}
int
pms_reset(struct pms_softc *sc)
{
 u_char cmd[1], resp[2];
 int res;
 cmd[0] = 0xff;
 res = pms_cmd(sc, cmd, 1, resp, 2);
 return (res);
}
int
pms_dev_enable(struct pms_softc *sc)
{
 u_char cmd[1];
 int res;
 cmd[0] = 0xf4;
 res = pms_cmd(sc, cmd, 1, ((void *)0), 0);
 if (res)
  printf("%s: enable error\n", ((sc)->sc_dev.dv_xname));
 return (res);
}
int
pms_dev_disable(struct pms_softc *sc)
{
 u_char cmd[1];
 int res;
 cmd[0] = 0xf5;
 res = pms_cmd(sc, cmd, 1, ((void *)0), 0);
 if (res)
  printf("%s: disable error\n", ((sc)->sc_dev.dv_xname));
 return (res);
}
void
pms_protocol_lookup(struct pms_softc *sc)
{
 int i;
 sc->protocol = &pms_protocols[0];
 for (i = 1; i < (sizeof((pms_protocols)) / sizeof((pms_protocols)[0])); i++) {
  pms_reset(sc);
  if (pms_protocols[i].enable(sc)) {
   sc->protocol = &pms_protocols[i];
   break;
  }
 }
 ;
}
int
pms_enable_intelli(struct pms_softc *sc)
{
 u_char resp;
 if (pms_set_rate(sc, 200) ||
     pms_set_rate(sc, 100) ||
     pms_set_rate(sc, 80) ||
     pms_get_devid(sc, &resp) ||
     resp != 0x03)
  return (0);
 return (1);
}
int
pms_ioctl_mouse(struct pms_softc *sc, u_long cmd, caddr_t data, int flag,
    struct proc *p)
{
 int i;
 switch (cmd) {
 case ((unsigned long)0x40000000 | ((sizeof(u_int) & 0x1fff) << 16) | ((('W')) << 8) | ((32))):
  *(u_int *)data = 2;
  break;
 case ((unsigned long)0x80000000 | ((sizeof(u_int) & 0x1fff) << 16) | ((('W')) << 8) | ((33))):
  i = ((int) *(u_int *)data - 12) / 25;
  if (i < 0)
   i = 0;
  if (i > 3)
   i = 3;
  if (pms_set_resolution(sc, i))
   printf("%s: SET_RES command error\n", ((sc)->sc_dev.dv_xname));
  break;
 default:
  return (-1);
 }
 return (0);
}
int
pms_sync_mouse(struct pms_softc *sc, int data)
{
 if (sc->inputstate != 0)
  return (0);
 switch (sc->protocol->type) {
 case 0:
  if ((data & 0xc0) != 0)
   return (-1);
  break;
 case 1:
  if ((data & 0x08) != 0x08)
   return (-1);
  break;
 }
 return (0);
}
void
pms_proc_mouse(struct pms_softc *sc)
{
 u_int buttons;
 int dx, dy, dz;
 buttons = butmap[sc->packet[0] & 0x07];
 dx = (sc->packet[0] & 0x10) ?
     (int)sc->packet[1] - 256 : sc->packet[1];
 dy = (sc->packet[0] & 0x20) ?
     (int)sc->packet[2] - 256 : sc->packet[2];
 if (sc->protocol->type == 1)
  dz = (signed char)sc->packet[3];
 else
  dz = 0;
 do { wsmouse_buttons((sc->sc_wsmousedev), (buttons)); wsmouse_motion((sc->sc_wsmousedev), (dx), (dy), (dz), (0)); wsmouse_input_sync(sc->sc_wsmousedev); } while (0);
}
int
pmsprobe(struct device *parent, void *match, void *aux)
{
 struct pckbc_attach_args *pa = aux;
 u_char cmd[1], resp[2];
 int res;
 if (pa->pa_slot != 1)
  return (0);
 pckbc_flush(pa->pa_tag, pa->pa_slot);
 cmd[0] = 0xff;
 res = pckbc_poll_cmd(pa->pa_tag, pa->pa_slot, cmd, 1, 2, resp, 1);
 if (res || resp[0] != 0xaa || resp[1] != 0) {
  return (0);
 }
 return (1);
}
void
pmsattach(struct device *parent, struct device *self, void *aux)
{
 struct pms_softc *sc = (void *)self;
 struct pckbc_attach_args *pa = aux;
 struct wsmousedev_attach_args a;
 sc->sc_kbctag = pa->pa_tag;
 pckbc_set_inputhandler(sc->sc_kbctag, 1,
     pmsinput, sc, ((sc)->sc_dev.dv_xname));
 printf("\n");
 a.accessops = &pms_accessops;
 a.accesscookie = sc;
 _rw_init_flags(&sc->sc_state_lock, "pmsst", 0, ((void *)0));
 sc->sc_wsmousedev = config_found_sm((self), (&a), (wsmousedevprint), ((void *)0));
 sc->poll = 1;
 sc->sc_dev_enable = 0;
 pms_protocol_lookup(sc);
 pms_change_state(sc, 0, 0x00);
}
int
pmsactivate(struct device *self, int act)
{
 struct pms_softc *sc = (struct pms_softc *)self;
 switch (act) {
 case 3:
  if (sc->sc_state == 1)
   pms_change_state(sc, 2,
       0x00);
  break;
 case 4:
  if (sc->sc_state == 2)
   pms_change_state(sc, 1,
       0x00);
  break;
 }
 return (0);
}
int
pms_change_state(struct pms_softc *sc, int newstate, int dev)
{
 if (dev != 0x00) {
  switch (newstate) {
  case 1:
   if (sc->sc_dev_enable & dev)
    return (16);
   sc->sc_dev_enable |= dev;
   if (sc->sc_state == 1)
    return (0);
   break;
  case 0:
   sc->sc_dev_enable &= ~dev;
   if (sc->sc_dev_enable)
    return (0);
   break;
  }
 }
 switch (newstate) {
 case 1:
  sc->inputstate = 0;
  pckbc_slot_enable(sc->sc_kbctag, 1, 1);
  if (sc->poll)
   pckbc_flush(sc->sc_kbctag, 1);
  pms_reset(sc);
  if (sc->protocol->enable != ((void *)0) &&
      sc->protocol->enable(sc) == 0)
   pms_protocol_lookup(sc);
  pms_dev_enable(sc);
  break;
 case 0:
 case 2:
  pms_dev_disable(sc);
  if (sc->protocol->disable)
   sc->protocol->disable(sc);
  pckbc_slot_enable(sc->sc_kbctag, 1, 0);
  break;
 }
 sc->sc_state = newstate;
 sc->poll = (newstate == 2) ? 1 : 0;
 return (0);
}
int
pms_enable(void *v)
{
 struct pms_softc *sc = v;
 int rv;
 _rw_enter_write(&sc->sc_state_lock );
 rv = pms_change_state(sc, 1, 0x01);
 _rw_exit_write(&sc->sc_state_lock );
 return (rv);
}
void
pms_disable(void *v)
{
 struct pms_softc *sc = v;
 _rw_enter_write(&sc->sc_state_lock );
 pms_change_state(sc, 0, 0x01);
 _rw_exit_write(&sc->sc_state_lock );
}
int
pms_ioctl(void *v, u_long cmd, caddr_t data, int flag, struct proc *p)
{
 struct pms_softc *sc = v;
 if (sc->protocol->ioctl)
  return (sc->protocol->ioctl(sc, cmd, data, flag, p));
 else
  return (-1);
}
int
pms_sec_enable(void *v)
{
 struct pms_softc *sc = v;
 int rv;
 _rw_enter_write(&sc->sc_state_lock );
 rv = pms_change_state(sc, 1, 0x02);
 _rw_exit_write(&sc->sc_state_lock );
 return (rv);
}
void
pms_sec_disable(void *v)
{
 struct pms_softc *sc = v;
 _rw_enter_write(&sc->sc_state_lock );
 pms_change_state(sc, 0, 0x02);
 _rw_exit_write(&sc->sc_state_lock );
}
int
pms_sec_ioctl(void *v, u_long cmd, caddr_t data, int flag, struct proc *p)
{
 switch (cmd) {
 case ((unsigned long)0x40000000 | ((sizeof(u_int) & 0x1fff) << 16) | ((('W')) << 8) | ((32))):
  *(u_int *)data = 2;
  break;
 default:
  return (-1);
 }
 return (0);
}
void
pmsinput(void *vsc, int data)
{
 struct pms_softc *sc = vsc;
 if (sc->sc_state != 1) {
  return;
 }
 sc->packet[sc->inputstate] = data;
 if (sc->protocol->sync(sc, data)) {
  printf("%s: not in sync yet, discard input (state %d)\n",
      ((sc)->sc_dev.dv_xname), sc->inputstate);
  sc->inputstate = 0;
  return;
 }
 sc->inputstate++;
 if (sc->inputstate != sc->protocol->packetsize)
  return;
 sc->inputstate = 0;
 sc->protocol->proc(sc);
}
int
synaptics_set_mode(struct pms_softc *sc, int mode)
{
 struct synaptics_softc *syn = sc->synaptics;
 if (pms_spec_cmd(sc, mode) ||
     pms_set_rate(sc, 0x14))
  return (-1);
 syn->mode = mode;
 return (0);
}
int
synaptics_query(struct pms_softc *sc, int query, int *val)
{
 u_char resp[3];
 if (pms_spec_cmd(sc, query) ||
     pms_get_status(sc, resp))
  return (-1);
 if (val)
  *val = (resp[0] << 16) | (resp[1] << 8) | resp[2];
 return (0);
}
int
synaptics_get_hwinfo(struct pms_softc *sc)
{
 struct synaptics_softc *syn = sc->synaptics;
 struct wsmousehw *hw;
 int resolution = 0, max_coords = 0, min_coords = 0;
 hw = wsmouse_get_hw(sc->sc_wsmousedev);
 if (synaptics_query(sc, 0x00, &syn->identify))
  return (-1);
 if (synaptics_query(sc, 0x02,
     &syn->capabilities))
  return (-1);
 if (synaptics_query(sc, 0x03, &syn->model))
  return (-1);
 if (((((syn->capabilities) >> 20) & 0x07) >= 1) &&
     synaptics_query(sc, 0x09, &syn->ext_model))
  return (-1);
 if (((((syn->capabilities) >> 20) & 0x07) >= 4) &&
     synaptics_query(sc, 0x0c,
  &syn->ext_capabilities))
  return (-1);
 if ((((syn->identify) & 0x0f) >= 4) &&
     synaptics_query(sc, 0x08, &resolution))
  return (-1);
 if (((((syn->capabilities) >> 20) & 0x07) >= 5) &&
     (syn->ext_capabilities & (1 << 17)) &&
     synaptics_query(sc, 0x0d, &max_coords))
  return (-1);
 if (((((syn->capabilities) >> 20) & 0x07) >= 7 ||
     (((syn->identify) & 0x0f) << 8 | (((syn->identify) >> 16) & 0xff)) == 0x801) &&
     (syn->ext_capabilities & (1 << 13)) &&
     synaptics_query(sc, 0x0f, &min_coords))
  return (-1);
 if ((((syn->identify) & 0x0f) << 8 | (((syn->identify) >> 16) & 0xff)) >= 0x705) {
  if (synaptics_query(sc, 0x01, &syn->modes))
   return (-1);
  if ((syn->modes & (1 << 17)) &&
      synaptics_query(sc, 0x10,
      &syn->ext2_capabilities))
   return (-1);
 }
 if ((syn->ext_capabilities & (1 << 20)) &&
     !(syn->ext2_capabilities & (1 << 16))
     && mouse_has_softbtn)
  hw->type = 19;
 else
  hw->type = 15;
 hw->hw_type = (syn->ext_capabilities & (1 << 20))
     ? WSMOUSEHW_CLICKPAD : WSMOUSEHW_TOUCHPAD;
 if (resolution & (1 << 15)) {
  hw->h_res = (((resolution) >> 16) & 0xff);
  hw->v_res = ((resolution) & 0xff);
 }
 hw->x_min = (min_coords ?
     ((((min_coords) & 0xff0000) >> 11) | (((min_coords) & 0xf00) >> 7)) : 1472);
 hw->y_min = (min_coords ?
     ((((min_coords) & 0xff) << 5) | (((min_coords) & 0xf000) >> 11)) : 1408);
 hw->x_max = (max_coords ?
     ((((max_coords) & 0xff0000) >> 11) | (((max_coords) & 0xf00) >> 7)) : 5472);
 hw->y_max = (max_coords ?
     ((((max_coords) & 0xff) << 5) | (((max_coords) & 0xf000) >> 11)) : 4448);
 hw->contacts_max = 3;
 syn->sec_buttons = 0;
 if (((syn->ext_model >> 12) & 0x0f) > 8)
  syn->ext_model &= ~0xf000;
 if ((syn->model & (1 << 7)) == 0) {
  printf("%s: don't support Synaptics OLDABS\n", ((sc)->sc_dev.dv_xname));
  return (-1);
 }
 if ((((syn->identify) & 0x0f) == 5) &&
     ((((syn->identify) >> 16) & 0xff) == 9))
  syn->mask = 0xc0;
 else
  syn->mask = 0xc8;
 return (0);
}
void
synaptics_sec_proc(struct pms_softc *sc)
{
 struct synaptics_softc *syn = sc->synaptics;
 u_int buttons;
 int dx, dy;
 if ((sc->sc_dev_enable & 0x02) == 0)
  return;
 buttons = butmap[sc->packet[1] & 0x07];
 buttons |= syn->sec_buttons;
 dx = (sc->packet[1] & 0x10) ?
     (int)sc->packet[4] - 256 : sc->packet[4];
 dy = (sc->packet[1] & 0x20) ?
     (int)sc->packet[5] - 256 : sc->packet[5];
 do { wsmouse_buttons((sc->sc_sec_wsmousedev), (buttons)); wsmouse_motion((sc->sc_sec_wsmousedev), (dx), (dy), (0), (0)); wsmouse_input_sync(sc->sc_sec_wsmousedev); } while (0);
}
int
synaptics_knock(struct pms_softc *sc)
{
 u_char resp[3];
 if (pms_set_resolution(sc, 0) ||
     pms_set_resolution(sc, 0) ||
     pms_set_resolution(sc, 0) ||
     pms_set_resolution(sc, 0) ||
     pms_get_status(sc, resp) ||
     resp[1] != 0x47)
  return (-1);
 return (0);
}
int
pms_enable_synaptics(struct pms_softc *sc)
{
 struct synaptics_softc *syn = sc->synaptics;
 struct wsmousedev_attach_args a;
 int mode, i;
 if (synaptics_knock(sc)) {
  if (sc->synaptics == ((void *)0))
   goto err;
  for (i = 10; i > 0; --i) {
   printf("%s: device not resuming, retrying\n",
       ((sc)->sc_dev.dv_xname));
   pms_reset(sc);
   if (synaptics_knock(sc) == 0)
    break;
   delay(100000);
  }
  if (i == 0) {
   printf("%s: lost device\n", ((sc)->sc_dev.dv_xname));
   goto err;
  }
 }
 if (sc->synaptics == ((void *)0)) {
  sc->synaptics = syn = malloc(sizeof(struct synaptics_softc),
      2, 0x0001 | 0x0008);
  if (syn == ((void *)0)) {
   printf("%s: synaptics: not enough memory\n",
       ((sc)->sc_dev.dv_xname));
   goto err;
  }
  if (synaptics_get_hwinfo(sc)) {
   free(sc->synaptics, 2,
       sizeof(struct synaptics_softc));
   sc->synaptics = ((void *)0);
   goto err;
  }
  if (syn->capabilities & (1 << 7)) {
   a.accessops = &pms_sec_accessops;
   a.accesscookie = sc;
   sc->sc_sec_wsmousedev = config_found_sm(((void *)sc), (&a), (wsmousedevprint), ((void *)0));
  }
  if (wsmouse_configure(sc->sc_wsmousedev, synaptics_params,
      (sizeof((synaptics_params)) / sizeof((synaptics_params)[0]))))
   goto err;
  printf("%s: Synaptics %s, firmware %d.%d, 0x%x 0x%x\n",
      ((sc)->sc_dev.dv_xname),
      (syn->ext_capabilities & (1 << 20) ?
   "clickpad" : "touchpad"),
      ((syn->identify) & 0x0f),
      (((syn->identify) >> 16) & 0xff),
      syn->model, syn->ext_model);
 }
 mode = (1 << 7) | (1 << 6);
 if (((syn->identify) & 0x0f) >= 4)
  mode |= (1 << 2);
 if (syn->capabilities & (1 << 23))
  mode |= (1 << 0);
 if (synaptics_set_mode(sc, mode))
  goto err;
 if ((syn->ext_capabilities & (1 << 19)) &&
     (pms_spec_cmd(sc, 0x03) ||
      pms_set_rate(sc, 0xc8)))
  goto err;
 return (1);
err:
 pms_reset(sc);
 return (0);
}
int
pms_ioctl_synaptics(struct pms_softc *sc, u_long cmd, caddr_t data, int flag,
    struct proc *p)
{
 struct wsmouse_calibcoords *wsmc = (struct wsmouse_calibcoords *)data;
 struct wsmousehw *hw;
 int wsmode;
 hw = wsmouse_get_hw(sc->sc_wsmousedev);
 switch (cmd) {
 case ((unsigned long)0x40000000 | ((sizeof(u_int) & 0x1fff) << 16) | ((('W')) << 8) | ((32))):
  *(u_int *)data = hw->type;
  break;
 case ((unsigned long)0x40000000 | ((sizeof(struct wsmouse_calibcoords) & 0x1fff) << 16) | ((('W')) << 8) | ((37))):
  wsmc->minx = hw->x_min;
  wsmc->maxx = hw->x_max;
  wsmc->miny = hw->y_min;
  wsmc->maxy = hw->y_max;
  wsmc->swapxy = 0;
  wsmc->resx = hw->h_res;
  wsmc->resy = hw->v_res;
  break;
 case ((unsigned long)0x80000000 | ((sizeof(int) & 0x1fff) << 16) | ((('W')) << 8) | ((38))):
  wsmode = *(u_int *)data;
  if (wsmode != 0 && wsmode != 1)
   return (22);
  wsmouse_set_mode(sc->sc_wsmousedev, wsmode);
  break;
 default:
  return (-1);
 }
 return (0);
}
int
pms_sync_synaptics(struct pms_softc *sc, int data)
{
 struct synaptics_softc *syn = sc->synaptics;
 switch (sc->inputstate) {
 case 0:
  if ((data & syn->mask) != 0x80)
   return (-1);
  break;
 case 3:
  if ((data & syn->mask) != 0xc0)
   return (-1);
  break;
 }
 return (0);
}
void
pms_proc_synaptics(struct pms_softc *sc)
{
 struct synaptics_softc *syn = sc->synaptics;
 u_int buttons;
 int x, y, z, w, fingerwidth;
 w = ((sc->packet[0] & 0x30) >> 2) | ((sc->packet[0] & 0x04) >> 1) |
     ((sc->packet[3] & 0x04) >> 2);
 z = sc->packet[2];
 if ((syn->capabilities & (1 << 23)) == 0) {
  if (w & 8)
   w = 4;
  else
   z = w = 0;
 }
 if ((syn->capabilities & (1 << 7)) && w == 3) {
  synaptics_sec_proc(sc);
  return;
 }
 if ((sc->sc_dev_enable & 0x01) == 0)
  return;
 if ((syn->ext_capabilities & (1 << 19)) && w == 2)
  return;
 x = ((sc->packet[3] & 0x10) << 8) | ((sc->packet[1] & 0x0f) << 8) |
     sc->packet[4];
 y = ((sc->packet[3] & 0x20) << 7) | ((sc->packet[1] & 0xf0) << 4) |
     sc->packet[5];
 buttons = ((sc->packet[0] & sc->packet[3]) & 0x01) ?
     (1 << ((1) - 1)) : 0;
 buttons |= ((sc->packet[0] & sc->packet[3]) & 0x02) ?
     (1 << ((3) - 1)) : 0;
 if (syn->ext_capabilities & (1 << 20)) {
  buttons |= ((sc->packet[0] ^ sc->packet[3]) & 0x01) ?
      (1 << ((1) - 1)) : 0;
 } else if (syn->capabilities & (1 << 18)) {
  buttons |= ((sc->packet[0] ^ sc->packet[3]) & 0x01) ?
      (1 << ((2) - 1)) : 0;
 }
 if (syn->capabilities & (1 << 3)) {
  buttons |= ((sc->packet[0] ^ sc->packet[3]) & 0x01) ?
      (1 << ((4) - 1)) : 0;
  buttons |= ((sc->packet[0] ^ sc->packet[3]) & 0x02) ?
      (1 << ((5) - 1)) : 0;
 } else if (((syn->ext_model >> 12) & 0x0f) &&
     ((sc->packet[0] ^ sc->packet[3]) & 0x02)) {
  if (syn->ext2_capabilities & (1 << 16)) {
   syn->sec_buttons =
       (sc->packet[4] & 0x01) ? (1 << ((1) - 1)) : 0;
   syn->sec_buttons |=
       (sc->packet[5] & 0x01) ? (1 << ((3) - 1)) : 0;
   syn->sec_buttons |=
       (sc->packet[4] & 0x02) ? (1 << ((2) - 1)) : 0;
   wsmouse_buttons(
       sc->sc_sec_wsmousedev, syn->sec_buttons);
   wsmouse_input_sync(sc->sc_sec_wsmousedev);
   return;
  }
  buttons |= (sc->packet[4] & 0x01) ? (1 << ((6) - 1)) : 0;
  buttons |= (sc->packet[5] & 0x01) ? (1 << ((7) - 1)) : 0;
  buttons |= (sc->packet[4] & 0x02) ? (1 << ((8) - 1)) : 0;
  buttons |= (sc->packet[5] & 0x02) ? (1 << ((9) - 1)) : 0;
  buttons |= (sc->packet[4] & 0x04) ? (1 << ((10) - 1)) : 0;
  buttons |= (sc->packet[5] & 0x04) ? (1 << ((11) - 1)) : 0;
  buttons |= (sc->packet[4] & 0x08) ? (1 << ((12) - 1)) : 0;
  buttons |= (sc->packet[5] & 0x08) ? (1 << ((13) - 1)) : 0;
  x &= ~0x0f;
  y &= ~0x0f;
 }
 if (z) {
  fingerwidth = max(w, 4);
  w = (w < 2 ? w + 2 : 1);
 } else {
  fingerwidth = 0;
  w = 0;
 }
 wsmouse_set(sc->sc_wsmousedev, WSMOUSE_TOUCH_WIDTH, fingerwidth, 0);
 do { wsmouse_buttons((sc->sc_wsmousedev), (buttons)); wsmouse_position((sc->sc_wsmousedev), (x), (y)); wsmouse_touch((sc->sc_wsmousedev), (z), (w)); wsmouse_input_sync(sc->sc_wsmousedev); } while (0);
}
void
pms_disable_synaptics(struct pms_softc *sc)
{
 struct synaptics_softc *syn = sc->synaptics;
 if (syn->capabilities & (1 << 4))
  synaptics_set_mode(sc, (1 << 3) |
      (1 << 2));
}
int
alps_sec_proc(struct pms_softc *sc)
{
 struct alps_softc *alps = sc->alps;
 int dx, dy, pos = 0;
 if ((sc->packet[0] & 0xc8) == 0x08) {
  alps->sec_buttons = butmap[sc->packet[0] & 0x07];
 } else if ((sc->packet[3] & 0xcf) ==
     0x0f) {
  sc->inputstate = 3;
  pos = 3;
 } else {
  return (0);
 }
 if ((sc->sc_dev_enable & 0x02) == 0)
  return (1);
 dx = (sc->packet[pos] & 0x10) ?
     (int)sc->packet[pos + 1] - 256 : sc->packet[pos + 1];
 dy = (sc->packet[pos] & 0x20) ?
     (int)sc->packet[pos + 2] - 256 : sc->packet[pos + 2];
 do { wsmouse_buttons((sc->sc_sec_wsmousedev), (alps->sec_buttons)); wsmouse_motion((sc->sc_sec_wsmousedev), (dx), (dy), (0), (0)); wsmouse_input_sync(sc->sc_sec_wsmousedev); } while (0);
 return (1);
}
int
alps_get_hwinfo(struct pms_softc *sc)
{
 struct alps_softc *alps = sc->alps;
 u_char resp[3];
 int i;
 struct wsmousehw *hw;
 if (pms_set_resolution(sc, 0) ||
     pms_set_scaling(sc, 2) ||
     pms_set_scaling(sc, 2) ||
     pms_set_scaling(sc, 2) ||
     pms_get_status(sc, resp)) {
  ;
  return (-1);
 }
 alps->version = (resp[0] << 8) | (resp[1] << 4) | (resp[2] / 20 + 1);
 for (i = 0; i < (sizeof((alps_models)) / sizeof((alps_models)[0])); i++)
  if (alps->version == alps_models[i].version) {
   alps->model = alps_models[i].model;
   alps->mask = alps_models[i].mask;
   hw = wsmouse_get_hw(sc->sc_wsmousedev);
   hw->type = 16;
   hw->hw_type = WSMOUSEHW_TOUCHPAD;
   hw->x_min = 130;
   hw->y_min = 130;
   hw->x_max = 840;
   hw->y_max = 640;
   return (0);
  }
 return (-1);
}
int
pms_enable_alps(struct pms_softc *sc)
{
 struct alps_softc *alps = sc->alps;
 struct wsmousedev_attach_args a;
 u_char resp[3];
 if (pms_set_resolution(sc, 0) ||
     pms_set_scaling(sc, 1) ||
     pms_set_scaling(sc, 1) ||
     pms_set_scaling(sc, 1) ||
     pms_get_status(sc, resp) ||
     resp[0] != 0 ||
     resp[1] != 0 ||
     (resp[2] != 10 && resp[2] != 80 &&
     resp[2] != 100))
  goto err;
 if (sc->alps == ((void *)0)) {
  sc->alps = alps = malloc(sizeof(struct alps_softc),
      2, 0x0001 | 0x0008);
  if (alps == ((void *)0)) {
   printf("%s: alps: not enough memory\n", ((sc)->sc_dev.dv_xname));
   goto err;
  }
  if (alps_get_hwinfo(sc)) {
   free(sc->alps, 2, sizeof(struct alps_softc));
   sc->alps = ((void *)0);
   goto err;
  }
  if (wsmouse_configure(sc->sc_wsmousedev, alps_params,
      (sizeof((alps_params)) / sizeof((alps_params)[0])))) {
   free(sc->alps, 2, sizeof(struct alps_softc));
   sc->alps = ((void *)0);
   printf("%s: setup failed\n", ((sc)->sc_dev.dv_xname));
   goto err;
  }
  printf("%s: ALPS %s, version 0x%04x\n", ((sc)->sc_dev.dv_xname),
      (alps->model & (1 << 2) ? "Dualpoint" : "Glidepoint"),
      alps->version);
  if (alps->model & (1 << 2)) {
   a.accessops = &pms_sec_accessops;
   a.accesscookie = sc;
   sc->sc_sec_wsmousedev = config_found_sm(((void *)sc), (&a), (wsmousedevprint), ((void *)0));
  }
 }
 if (alps->model == 0)
  goto err;
 if ((alps->model & (1 << 3)) &&
    (pms_set_scaling(sc, 2) ||
     pms_set_scaling(sc, 2) ||
     pms_set_scaling(sc, 2) ||
     pms_dev_disable(sc))) {
  ;
  goto err;
 }
 if (pms_dev_disable(sc) ||
     pms_dev_disable(sc) ||
     pms_set_rate(sc, 0x0a)) {
  ;
  goto err;
 }
 if (pms_dev_disable(sc) ||
     pms_dev_disable(sc) ||
     pms_dev_disable(sc) ||
     pms_dev_disable(sc) ||
     pms_dev_enable(sc)) {
  ;
  goto err;
 }
 if ((alps->model & (1 << 3)) &&
    (pms_set_scaling(sc, 1) ||
     pms_set_scaling(sc, 1) ||
     pms_set_scaling(sc, 1) ||
     pms_dev_disable(sc))) {
  ;
  goto err;
 }
 alps->sec_buttons = 0;
 return (1);
err:
 pms_reset(sc);
 return (0);
}
int
pms_ioctl_alps(struct pms_softc *sc, u_long cmd, caddr_t data, int flag,
    struct proc *p)
{
 struct wsmouse_calibcoords *wsmc = (struct wsmouse_calibcoords *)data;
 int wsmode;
 struct wsmousehw *hw;
 switch (cmd) {
 case ((unsigned long)0x40000000 | ((sizeof(u_int) & 0x1fff) << 16) | ((('W')) << 8) | ((32))):
  *(u_int *)data = 16;
  break;
 case ((unsigned long)0x40000000 | ((sizeof(struct wsmouse_calibcoords) & 0x1fff) << 16) | ((('W')) << 8) | ((37))):
  hw = wsmouse_get_hw(sc->sc_wsmousedev);
  wsmc->minx = hw->x_min;
  wsmc->maxx = hw->x_max;
  wsmc->miny = hw->y_min;
  wsmc->maxy = hw->y_max;
  wsmc->swapxy = 0;
  break;
 case ((unsigned long)0x80000000 | ((sizeof(int) & 0x1fff) << 16) | ((('W')) << 8) | ((38))):
  wsmode = *(u_int *)data;
  if (wsmode != 0 && wsmode != 1)
   return (22);
  wsmouse_set_mode(sc->sc_wsmousedev, wsmode);
  break;
 default:
  return (-1);
 }
 return (0);
}
int
pms_sync_alps(struct pms_softc *sc, int data)
{
 struct alps_softc *alps = sc->alps;
 if ((alps->model & (1 << 2)) &&
     (sc->packet[0] & 0xc8) == 0x08) {
  if (sc->inputstate == 2)
   sc->inputstate += 3;
  return (0);
 }
 switch (sc->inputstate) {
 case 0:
  if ((data & alps->mask) != alps->mask)
   return (-1);
  break;
 case 1:
 case 2:
 case 3:
  if ((data & 0x80) != 0x00)
   return (-1);
  break;
 case 4:
 case 5:
  if ((alps->model & (1 << 4)) == 0 &&
      (data & 0x80) != 0x00)
   return (-1);
  break;
 }
 return (0);
}
void
pms_proc_alps(struct pms_softc *sc)
{
 struct alps_softc *alps = sc->alps;
 int x, y, z, dx, dy;
 u_int buttons, gesture;
 if ((alps->model & (1 << 2)) && alps_sec_proc(sc))
  return;
 x = sc->packet[1] | ((sc->packet[2] & 0x78) << 4);
 y = sc->packet[4] | ((sc->packet[3] & 0x70) << 3);
 z = sc->packet[5];
 buttons = ((sc->packet[3] & 1) ? (1 << ((1) - 1)) : 0) |
     ((sc->packet[3] & 2) ? (1 << ((3) - 1)) : 0) |
     ((sc->packet[3] & 4) ? (1 << ((2) - 1)) : 0);
 if ((sc->sc_dev_enable & 0x02) && z == 127) {
  dx = (x > 768 / 2) ? (x - 768) : x;
  dy = (y > 512 / 2) ? (y - 512) : y;
  do { wsmouse_buttons((sc->sc_sec_wsmousedev), (buttons)); wsmouse_motion((sc->sc_sec_wsmousedev), (dx), (dy), (0), (0)); wsmouse_input_sync(sc->sc_sec_wsmousedev); } while (0);
  return;
 }
 if ((sc->sc_dev_enable & 0x01) == 0)
  return;
 y = 640 - y + 130;
 if (alps->gesture == 0x01) {
  do { wsmouse_buttons((sc->sc_wsmousedev), (buttons)); wsmouse_position((sc->sc_wsmousedev), (alps->old_x), (alps->old_y)); wsmouse_touch((sc->sc_wsmousedev), (40), (0)); wsmouse_input_sync(sc->sc_wsmousedev); } while (0);
  if (z > 0) {
   do { wsmouse_buttons((sc->sc_wsmousedev), (buttons)); wsmouse_position((sc->sc_wsmousedev), (alps->old_x), (alps->old_y)); wsmouse_touch((sc->sc_wsmousedev), (0), (0)); wsmouse_input_sync(sc->sc_wsmousedev); } while (0);
  }
 }
 gesture = sc->packet[2] & 0x03;
 if (gesture != 0x01)
  do { wsmouse_buttons((sc->sc_wsmousedev), (buttons)); wsmouse_position((sc->sc_wsmousedev), (x), (y)); wsmouse_touch((sc->sc_wsmousedev), (z), (0)); wsmouse_input_sync(sc->sc_wsmousedev); } while (0);
 if (alps->gesture != 0x03 || gesture != 0x01)
  alps->gesture = gesture;
 alps->old_x = x;
 alps->old_y = y;
}
int
elantech_set_absolute_mode_v1(struct pms_softc *sc)
{
 int i;
 u_char resp[3];
 if (pms_spec_cmd(sc, 0x11) ||
     pms_spec_cmd(sc, 0x10) ||
     pms_spec_cmd(sc, 0x16) ||
     pms_set_scaling(sc, 1) ||
     pms_spec_cmd(sc, 0x11) ||
     pms_spec_cmd(sc, 0x11) ||
     pms_spec_cmd(sc, 0x8f) ||
     pms_set_scaling(sc, 1))
  return (-1);
 for (i = 0; i < 5; i++) {
  if (pms_spec_cmd(sc, 0x10) ||
      pms_spec_cmd(sc, 0x10) ||
      pms_get_status(sc, resp) == 0)
   break;
  delay(2000);
 }
 if (i == 5)
  return (-1);
 if ((resp[0] & 0x04) == 0)
  return (-1);
 return (0);
}
int
elantech_set_absolute_mode_v2(struct pms_softc *sc)
{
 int i;
 u_char resp[3];
 u_char reg10 = (sc->elantech->fw_version == 0x20030 ? 0x54 : 0xc4);
 if (elantech_ps2_cmd(sc, 0xf8) ||
     elantech_ps2_cmd(sc, 0x11) ||
     elantech_ps2_cmd(sc, 0xf8) ||
     elantech_ps2_cmd(sc, 0x10) ||
     elantech_ps2_cmd(sc, 0xf8) ||
     elantech_ps2_cmd(sc, reg10) ||
     pms_set_scaling(sc, 1) ||
     elantech_ps2_cmd(sc, 0xf8) ||
     elantech_ps2_cmd(sc, 0x11) ||
     elantech_ps2_cmd(sc, 0xf8) ||
     elantech_ps2_cmd(sc, 0x11) ||
     elantech_ps2_cmd(sc, 0xf8) ||
     elantech_ps2_cmd(sc, 0x88) ||
     pms_set_scaling(sc, 1))
  return (-1);
 for (i = 0; i < 5; i++) {
  if (elantech_ps2_cmd(sc, 0xf8) ||
      elantech_ps2_cmd(sc, 0x10) ||
      elantech_ps2_cmd(sc, 0xf8) ||
      elantech_ps2_cmd(sc, 0x10) ||
      pms_get_status(sc, resp) == 0)
   break;
  delay(2000);
 }
 if (i == 5)
  return (-1);
 return (0);
}
int
elantech_set_absolute_mode_v3(struct pms_softc *sc)
{
 int i;
 u_char resp[3];
 if (elantech_ps2_cmd(sc, 0xf8) ||
     elantech_ps2_cmd(sc, 0x00) ||
     elantech_ps2_cmd(sc, 0xf8) ||
     elantech_ps2_cmd(sc, 0x10) ||
     elantech_ps2_cmd(sc, 0xf8) ||
     elantech_ps2_cmd(sc, 0x0b) ||
     pms_set_scaling(sc, 1))
  return (-1);
 for (i = 0; i < 5; i++) {
  if (elantech_ps2_cmd(sc, 0xf8) ||
      elantech_ps2_cmd(sc, 0x00) ||
      elantech_ps2_cmd(sc, 0xf8) ||
      elantech_ps2_cmd(sc, 0x10) ||
      pms_get_status(sc, resp) == 0)
   break;
  delay(2000);
 }
 if (i == 5)
  return (-1);
 return (0);
}
int
elantech_set_absolute_mode_v4(struct pms_softc *sc)
{
 if (elantech_ps2_cmd(sc, 0xf8) ||
     elantech_ps2_cmd(sc, 0x00) ||
     elantech_ps2_cmd(sc, 0xf8) ||
     elantech_ps2_cmd(sc, 0x07) ||
     elantech_ps2_cmd(sc, 0xf8) ||
     elantech_ps2_cmd(sc, 0x00) ||
     elantech_ps2_cmd(sc, 0xf8) ||
     elantech_ps2_cmd(sc, 0x01) ||
     pms_set_scaling(sc, 1))
  return (-1);
 return (0);
}
int
elantech_get_hwinfo_v1(struct pms_softc *sc)
{
 struct elantech_softc *elantech = sc->elantech;
 int fw_version;
 u_char capabilities[3];
 if (synaptics_query(sc, 1, &fw_version))
  return (-1);
 if (fw_version < 0x20030 || fw_version == 0x20600) {
  if (fw_version < 0x20000)
   elantech->flags |= 0x08;
 } else
  return (-1);
 elantech->fw_version = fw_version;
 if (pms_spec_cmd(sc, 2) ||
     pms_get_status(sc, capabilities))
  return (-1);
 if (capabilities[0] & 4)
  elantech->flags |= 0x02;
 if (elantech_set_absolute_mode_v1(sc))
  return (-1);
 elantech->min_x = (0 + 32);
 elantech->max_x = (576 - 32);
 elantech->min_y = (0 + 32);
 elantech->max_y = (384 - 32);
 return (0);
}
int
elantech_get_hwinfo_v2(struct pms_softc *sc)
{
 struct elantech_softc *elantech = sc->elantech;
 int fw_version, ic_ver;
 u_char capabilities[3];
 int i, fixed_dpi;
 u_char resp[3];
 if (synaptics_query(sc, 1, &fw_version))
  return (-1);
 ic_ver = (fw_version & 0x0f0000) >> 16;
 if (ic_ver != 2 && ic_ver != 4)
  return (-1);
 elantech->fw_version = fw_version;
 if (fw_version >= 0x20800)
  elantech->flags |= 0x01;
 if (pms_spec_cmd(sc, 2) ||
     pms_get_status(sc, capabilities))
  return (-1);
 if (elantech_set_absolute_mode_v2(sc))
  return (-1);
 if (fw_version == 0x20800 || fw_version == 0x20b00 ||
     fw_version == 0x20030) {
  elantech->max_x = 1152;
  elantech->max_y = 768;
 } else {
  if (pms_spec_cmd(sc, 0) ||
      pms_get_status(sc, resp))
   return (-1);
  fixed_dpi = resp[1] & 0x10;
  i = (fw_version > 0x20800 && fw_version < 0x20900) ? 1 : 2;
  if ((fw_version >> 16) == 0x14 && fixed_dpi) {
   if (pms_spec_cmd(sc, 3) ||
       pms_get_status(sc, resp))
    return (-1);
   elantech->max_x = (capabilities[1] - i) * resp[1] / 2;
   elantech->max_y = (capabilities[2] - i) * resp[2] / 2;
  } else if (fw_version == 0x040216) {
   elantech->max_x = 819;
   elantech->max_y = 405;
  } else if (fw_version == 0x040219 || fw_version == 0x040215) {
   elantech->max_x = 900;
   elantech->max_y = 500;
  } else {
   elantech->max_x = (capabilities[1] - i) * 64;
   elantech->max_y = (capabilities[2] - i) * 64;
  }
 }
 return (0);
}
int
elantech_get_hwinfo_v3(struct pms_softc *sc)
{
 struct elantech_softc *elantech = sc->elantech;
 int fw_version;
 u_char resp[3];
 if (synaptics_query(sc, 1, &fw_version))
  return (-1);
 if (((fw_version & 0x0f0000) >> 16) != 5)
  return (-1);
 elantech->fw_version = fw_version;
 elantech->flags |= 0x01;
 if ((fw_version & 0x4000) == 0x4000)
  elantech->flags |= 0x10;
 if (elantech_set_absolute_mode_v3(sc))
  return (-1);
 if (pms_spec_cmd(sc, 0) ||
     pms_get_status(sc, resp))
  return (-1);
 elantech->max_x = (resp[0] & 0x0f) << 8 | resp[1];
 elantech->max_y = (resp[0] & 0xf0) << 4 | resp[2];
 return (0);
}
int
elantech_get_hwinfo_v4(struct pms_softc *sc)
{
 struct elantech_softc *elantech = sc->elantech;
 struct wsmousehw *hw;
 int fw_version;
 u_char capabilities[3];
 u_char resp[3];
 if (synaptics_query(sc, 1, &fw_version))
  return (-1);
 if (((fw_version & 0x0f0000) >> 16) != 6 &&
     (fw_version & 0x0f0000) >> 16 != 8)
  return (-1);
 elantech->fw_version = fw_version;
 elantech->flags |= 0x01;
 if (elantech_set_absolute_mode_v4(sc))
  return (-1);
 if (pms_spec_cmd(sc, 2) ||
     pms_get_status(sc, capabilities))
  return (-1);
 if (pms_spec_cmd(sc, 0) ||
     pms_get_status(sc, resp))
  return (-1);
 hw = wsmouse_get_hw(sc->sc_wsmousedev);
 hw->x_max = (resp[0] & 0x0f) << 8 | resp[1];
 hw->y_max = (resp[0] & 0xf0) << 4 | resp[2];
 if ((capabilities[1] < 2) || (capabilities[1] > hw->x_max))
  return (-1);
 hw->type = 18;
 hw->hw_type = WSMOUSEHW_CLICKPAD;
 hw->mt_slots = 5;
 elantech->width = hw->x_max / (capabilities[1] - 1);
 return (0);
}
int
elantech_ps2_cmd(struct pms_softc *sc, u_char command)
{
 u_char cmd[1];
 cmd[0] = command;
 return (pms_cmd(sc, cmd, 1, ((void *)0), 0));
}
int
elantech_knock(struct pms_softc *sc)
{
 u_char resp[3];
 if (pms_dev_disable(sc) ||
     pms_set_scaling(sc, 1) ||
     pms_set_scaling(sc, 1) ||
     pms_set_scaling(sc, 1) ||
     pms_get_status(sc, resp) ||
     resp[0] != 0x3c ||
     resp[1] != 0x03 ||
     (resp[2] != 0xc8 &&
     resp[2] != 0x00))
  return (-1);
 return (0);
}
int
pms_enable_elantech_v1(struct pms_softc *sc)
{
 struct elantech_softc *elantech = sc->elantech;
 int i;
 if (elantech_knock(sc))
  goto err;
 if (sc->elantech == ((void *)0)) {
  sc->elantech = elantech = malloc(sizeof(struct elantech_softc),
      2, 0x0001 | 0x0008);
  if (elantech == ((void *)0)) {
   printf("%s: elantech: not enough memory\n",
       ((sc)->sc_dev.dv_xname));
   goto err;
  }
  if (elantech_get_hwinfo_v1(sc)) {
   free(sc->elantech, 2,
       sizeof(struct elantech_softc));
   sc->elantech = ((void *)0);
   goto err;
  }
  printf("%s: Elantech Touchpad, version %d, firmware 0x%x\n",
      ((sc)->sc_dev.dv_xname), 1, sc->elantech->fw_version);
 } else if (elantech_set_absolute_mode_v1(sc))
  goto err;
 for (i = 0; i < (sizeof((sc->elantech->parity)) / sizeof((sc->elantech->parity)[0])); i++)
  sc->elantech->parity[i] = sc->elantech->parity[i & (i - 1)] ^ 1;
 return (1);
err:
 pms_reset(sc);
 return (0);
}
int
pms_enable_elantech_v2(struct pms_softc *sc)
{
 struct elantech_softc *elantech = sc->elantech;
 if (elantech_knock(sc))
  goto err;
 if (sc->elantech == ((void *)0)) {
  sc->elantech = elantech = malloc(sizeof(struct elantech_softc),
      2, 0x0001 | 0x0008);
  if (elantech == ((void *)0)) {
   printf("%s: elantech: not enough memory\n",
       ((sc)->sc_dev.dv_xname));
   goto err;
  }
  if (elantech_get_hwinfo_v2(sc)) {
   free(sc->elantech, 2,
       sizeof(struct elantech_softc));
   sc->elantech = ((void *)0);
   goto err;
  }
  printf("%s: Elantech Touchpad, version %d, firmware 0x%x\n",
      ((sc)->sc_dev.dv_xname), 2, sc->elantech->fw_version);
 } else if (elantech_set_absolute_mode_v2(sc))
  goto err;
 return (1);
err:
 pms_reset(sc);
 return (0);
}
int
pms_enable_elantech_v3(struct pms_softc *sc)
{
 struct elantech_softc *elantech = sc->elantech;
 if (elantech_knock(sc))
  goto err;
 if (sc->elantech == ((void *)0)) {
  sc->elantech = elantech = malloc(sizeof(struct elantech_softc),
      2, 0x0001 | 0x0008);
  if (elantech == ((void *)0)) {
   printf("%s: elantech: not enough memory\n",
       ((sc)->sc_dev.dv_xname));
   goto err;
  }
  if (elantech_get_hwinfo_v3(sc)) {
   free(sc->elantech, 2,
       sizeof(struct elantech_softc));
   sc->elantech = ((void *)0);
   goto err;
  }
  printf("%s: Elantech Touchpad, version %d, firmware 0x%x\n",
      ((sc)->sc_dev.dv_xname), 3, sc->elantech->fw_version);
 } else if (elantech_set_absolute_mode_v3(sc))
  goto err;
 return (1);
err:
 pms_reset(sc);
 return (0);
}
int
pms_enable_elantech_v4(struct pms_softc *sc)
{
 struct elantech_softc *elantech = sc->elantech;
 if (elantech_knock(sc))
  goto err;
 if (sc->elantech == ((void *)0)) {
  sc->elantech = elantech = malloc(sizeof(struct elantech_softc),
      2, 0x0001 | 0x0008);
  if (elantech == ((void *)0)) {
   printf("%s: elantech: not enough memory\n",
       ((sc)->sc_dev.dv_xname));
   goto err;
  }
  if (elantech_get_hwinfo_v4(sc)) {
   free(sc->elantech, 2,
       sizeof(struct elantech_softc));
   sc->elantech = ((void *)0);
   goto err;
  }
  if (wsmouse_configure(sc->sc_wsmousedev, ((void *)0), 0)) {
   free(sc->elantech, 2, 0);
   sc->elantech = ((void *)0);
   printf("%s: setup failed\n", ((sc)->sc_dev.dv_xname));
   goto err;
  }
  wsmouse_set_mode(sc->sc_wsmousedev, 0);
  printf("%s: Elantech Clickpad, version %d, firmware 0x%x\n",
      ((sc)->sc_dev.dv_xname), 4, sc->elantech->fw_version);
 } else if (elantech_set_absolute_mode_v4(sc))
  goto err;
 return (1);
err:
 pms_reset(sc);
 return (0);
}
int
pms_ioctl_elantech(struct pms_softc *sc, u_long cmd, caddr_t data, int flag,
    struct proc *p)
{
 struct elantech_softc *elantech = sc->elantech;
 struct wsmouse_calibcoords *wsmc = (struct wsmouse_calibcoords *)data;
 struct wsmousehw *hw;
 int wsmode;
 switch (cmd) {
 case ((unsigned long)0x40000000 | ((sizeof(u_int) & 0x1fff) << 16) | ((('W')) << 8) | ((32))):
  *(u_int *)data = 18;
  break;
 case ((unsigned long)0x40000000 | ((sizeof(struct wsmouse_calibcoords) & 0x1fff) << 16) | ((('W')) << 8) | ((37))):
  if (sc->protocol->type == 7) {
   hw = wsmouse_get_hw(sc->sc_wsmousedev);
   wsmc->minx = hw->x_min;
   wsmc->maxx = hw->x_max;
   wsmc->miny = hw->y_min;
   wsmc->maxy = hw->y_max;
  } else {
   wsmc->minx = elantech->min_x;
   wsmc->maxx = elantech->max_x;
   wsmc->miny = elantech->min_y;
   wsmc->maxy = elantech->max_y;
  }
  wsmc->swapxy = 0;
  wsmc->resx = 0;
  wsmc->resy = 0;
  break;
 case ((unsigned long)0x80000000 | ((sizeof(int) & 0x1fff) << 16) | ((('W')) << 8) | ((38))):
  wsmode = *(u_int *)data;
  if (wsmode != 0 && wsmode != 1)
   return (22);
  elantech->wsmode = wsmode;
  if (sc->protocol->type == 7)
   wsmouse_set_mode(sc->sc_wsmousedev, wsmode);
  break;
 default:
  return (-1);
 }
 return (0);
}
int
pms_sync_elantech_v1(struct pms_softc *sc, int data)
{
 struct elantech_softc *elantech = sc->elantech;
 u_char p;
 switch (sc->inputstate) {
 case 0:
  if (elantech->flags & 0x08) {
   elantech->p1 = (data & 0x20) >> 5;
   elantech->p2 = (data & 0x10) >> 4;
  } else {
   elantech->p1 = (data & 0x10) >> 4;
   elantech->p2 = (data & 0x20) >> 5;
  }
  elantech->p3 = (data & 0x04) >> 2;
  return (0);
 case 1:
  p = elantech->p1;
  break;
 case 2:
  p = elantech->p2;
  break;
 case 3:
  p = elantech->p3;
  break;
 default:
  return (-1);
 }
 if (data < 0 || data >= (sizeof((elantech->parity)) / sizeof((elantech->parity)[0])) ||
     elantech->parity[data] != p)
  return (-1);
 return (0);
}
int
pms_sync_elantech_v2(struct pms_softc *sc, int data)
{
 struct elantech_softc *elantech = sc->elantech;
 if (elantech->flags & 0x01) {
  if (sc->inputstate == 0 && (data & 0x0c) != 0x04)
   return (-1);
  if (sc->inputstate == 3 && (data & 0x0f) != 0x02)
   return (-1);
  return (0);
 }
 switch (sc->inputstate) {
 case 0:
  if ((data & 0xc0) == 0x80) {
   if ((data & 0x0c) != 0x0c)
    return (-1);
   elantech->flags |= 0x04;
  } else {
   if ((data & 0x3c) != 0x3c)
    return (-1);
   elantech->flags &= ~0x04;
  }
  break;
 case 1:
 case 4:
  if (elantech->flags & 0x04)
   break;
  if ((data & 0xf0) != 0x00)
   return (-1);
  break;
 case 3:
  if (elantech->flags & 0x04) {
   if ((data & 0x0e) != 0x08)
    return (-1);
  } else {
   if ((data & 0x3e) != 0x38)
    return (-1);
  }
  break;
 default:
  break;
 }
 return (0);
}
int
pms_sync_elantech_v3(struct pms_softc *sc, int data)
{
 struct elantech_softc *elantech = sc->elantech;
 switch (sc->inputstate) {
 case 0:
  if (elantech->flags & 0x10)
   break;
  if ((data & 0x0c) != 0x04 && (data & 0x0c) != 0x0c)
   return (-1);
  break;
 case 3:
  if (elantech->flags & 0x10) {
   if ((data & 0x09) != 0x08 && (data & 0x09) != 0x09)
    return (-1);
  } else {
   if ((data & 0xcf) != 0x02 && (data & 0xce) != 0x0c)
    return (-1);
  }
  break;
 }
 return (0);
}
int
pms_sync_elantech_v4(struct pms_softc *sc, int data)
{
 if (sc->inputstate == 0 && (data & 0x0c) != 0x04)
  return (-1);
 else
  return (0);
}
void
pms_proc_elantech_v1(struct pms_softc *sc)
{
 struct elantech_softc *elantech = sc->elantech;
 int x, y, w, z;
 if (elantech->flags & 0x08)
  w = ((sc->packet[1] & 0x80) >> 7) +
      ((sc->packet[1] & 0x30) >> 4);
 else
  w = (sc->packet[0] & 0xc0) >> 6;
 if (w) {
  x = ((sc->packet[1] & 0x0c) << 6) | sc->packet[2];
  y = ((sc->packet[1] & 0x03) << 8) | sc->packet[3];
  z = 30;
 } else {
  x = elantech->old_x;
  y = elantech->old_y;
  z = 0;
 }
 elantech_send_input(sc, x, y, z, w);
}
void
pms_proc_elantech_v2(struct pms_softc *sc)
{
 const u_char debounce_pkt[] = { 0x84, 0xff, 0xff, 0x02, 0xff, 0xff };
 struct elantech_softc *elantech = sc->elantech;
 int x, y, w, z;
 if (!__builtin_memcmp((sc->packet), (debounce_pkt), (sizeof(debounce_pkt))))
  return;
 w = (sc->packet[0] & 0xc0) >> 6;
 if (w == 1 || w == 3) {
  x = ((sc->packet[1] & 0x0f) << 8) | sc->packet[2];
  y = ((sc->packet[4] & 0x0f) << 8) | sc->packet[5];
  if (elantech->flags & 0x01)
   z = ((sc->packet[1] & 0xf0) |
       (sc->packet[4] & 0xf0) >> 4);
  else
   z = 30;
 } else if (w == 2) {
  x = (((sc->packet[0] & 0x10) << 4) | sc->packet[1]) << 2;
  y = (((sc->packet[0] & 0x20) << 3) | sc->packet[2]) << 2;
  z = 30;
 } else {
  x = elantech->old_x;
  y = elantech->old_y;
  z = 0;
 }
 elantech_send_input(sc, x, y, z, w);
}
void
pms_proc_elantech_v3(struct pms_softc *sc)
{
 const u_char debounce_pkt[] = { 0xc4, 0xff, 0xff, 0x02, 0xff, 0xff };
 struct elantech_softc *elantech = sc->elantech;
 int x, y, w, z;
 x = ((sc->packet[1] & 0x0f) << 8 | sc->packet[2]);
 y = ((sc->packet[4] & 0x0f) << 8 | sc->packet[5]);
 z = 0;
 w = (sc->packet[0] & 0xc0) >> 6;
 if (w == 2) {
  if (elantech->flags & 0x10) {
   if ((sc->packet[3] & 0x09) != 0x08)
    return;
  } else {
   if (!__builtin_memcmp((sc->packet), (debounce_pkt), (sizeof(debounce_pkt))))
    return;
   if ((sc->packet[0] & 0x0c) != 0x04 &&
       (sc->packet[3] & 0xcf) != 0x02) {
    return;
   }
  }
 }
 if (w == 0 ||
     ((x == 0 || y == 0 || x == elantech->max_x || y == elantech->max_y)
     && (x != elantech->old_x || y != elantech->old_y))) {
  x = elantech->old_x;
  y = elantech->old_y;
 }
 if (elantech->flags & 0x01)
  z = (sc->packet[1] & 0xf0) | ((sc->packet[4] & 0xf0) >> 4);
 else if (w)
  z = 30;
 elantech_send_input(sc, x, y, z, w);
}
void
pms_proc_elantech_v4(struct pms_softc *sc)
{
 struct elantech_softc *elantech = sc->elantech;
 struct device *sc_wsmousedev = sc->sc_wsmousedev;
 int id, weight, n, x, y, z;
 u_int buttons, slots;
 switch (sc->packet[3] & 0x1f) {
 case 0x10:
  slots = elantech->mt_slots;
  elantech->mt_slots = sc->packet[1] & 0x1f;
  slots &= ~elantech->mt_slots;
  for (id = 0; slots; id++, slots >>= 1) {
   if (slots & 1)
    wsmouse_mtstate(sc_wsmousedev, id, 0, 0, 0);
  }
  break;
 case 0x11:
  id = ((sc->packet[3] & 0xe0) >> 5) - 1;
  if (id > -1 && id < 5) {
   x = ((sc->packet[1] & 0x0f) << 8) | sc->packet[2];
   y = ((sc->packet[4] & 0x0f) << 8) | sc->packet[5];
   z = (sc->packet[1] & 0xf0)
       | ((sc->packet[4] & 0xf0) >> 4);
   wsmouse_mtstate(sc_wsmousedev, id, x, y, z);
  }
  break;
 case 0x12:
  weight = (sc->packet[0] & 0x10) ? 5 : 1;
  for (n = 0; n < 6; n += 3) {
   id = ((sc->packet[n] & 0xe0) >> 5) - 1;
   if (id < 0 || id >= 5)
    continue;
   x = weight * (signed char)sc->packet[n + 1];
   y = weight * (signed char)sc->packet[n + 2];
   z = 45;
   wsmouse_set(sc_wsmousedev, WSMOUSE_MT_REL_X, x, id);
   wsmouse_set(sc_wsmousedev, WSMOUSE_MT_REL_Y, y, id);
   wsmouse_set(sc_wsmousedev, WSMOUSE_MT_PRESSURE, z, id);
  }
  break;
 default:
  printf("%s: unknown packet type 0x%x\n", ((sc)->sc_dev.dv_xname),
      sc->packet[3] & 0x1f);
  return;
 }
 buttons = 0;
 if (sc->packet[0] & 0x01)
  buttons |= (1 << ((1) - 1));
 if (sc->packet[0] & 0x02)
  buttons |= (1 << ((3) - 1));
 wsmouse_buttons(sc_wsmousedev, buttons);
 wsmouse_input_sync(sc_wsmousedev);
}
void
elantech_send_input(struct pms_softc *sc, int x, int y, int z, int w)
{
 struct elantech_softc *elantech = sc->elantech;
 int dx, dy;
 u_int buttons = 0;
 if (sc->packet[0] & 0x01)
  buttons |= (1 << ((1) - 1));
 if (sc->packet[0] & 0x02)
  buttons |= (1 << ((3) - 1));
 if (elantech->flags & 0x02) {
  if (sc->packet[0] & 0x40)
   buttons |= (1 << ((4) - 1));
  if (sc->packet[0] & 0x80)
   buttons |= (1 << ((5) - 1));
 }
 if (elantech->wsmode == 1) {
  do { wsmouse_buttons((sc->sc_wsmousedev), (buttons)); wsmouse_position((sc->sc_wsmousedev), (x), (y)); wsmouse_touch((sc->sc_wsmousedev), (z), (w)); wsmouse_input_sync(sc->sc_wsmousedev); } while (0);
 } else {
  dx = dy = 0;
  if ((elantech->flags & 0x01) &&
      z > 30) {
   dx = x - elantech->old_x;
   dy = y - elantech->old_y;
   dx /= 4;
   dy /= 4;
  }
  if (dx || dy || buttons != elantech->old_buttons)
   do { wsmouse_buttons((sc->sc_wsmousedev), (buttons)); wsmouse_motion((sc->sc_wsmousedev), (dx), (dy), (0), (0)); wsmouse_input_sync(sc->sc_wsmousedev); } while (0);
  elantech->old_buttons = buttons;
 }
 elantech->old_x = x;
 elantech->old_y = y;
}
