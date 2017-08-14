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
static char *rn_zeros;
static char *rn_ones;
static unsigned int max_keylen;
struct radix_node_head *mask_rnhead;
struct pool rtmask_pool;
static inline int rn_satisfies_leaf(char *, struct radix_node *, int);
static inline int rn_lexobetter(void *, void *);
static inline struct radix_mask *rn_new_radix_mask(struct radix_node *,
    struct radix_mask *);
int rn_refines(void *, void *);
int rn_inithead0(struct radix_node_head *, int);
struct radix_node *rn_addmask(void *, int, int);
struct radix_node *rn_insert(void *, struct radix_node_head *, int *,
    struct radix_node [2]);
struct radix_node *rn_newpair(void *, int, struct radix_node[2]);
void rn_link_dupedkey(struct radix_node *, struct radix_node *, int);
static inline struct radix_node *rn_search(void *, struct radix_node *);
struct radix_node *rn_search_m(void *, struct radix_node *, void *);
int rn_add_dupedkey(struct radix_node *, struct radix_node_head *,
    struct radix_node [2], u_int8_t);
void rn_fixup_nodes(struct radix_node *);
static inline struct radix_node *rn_lift_node(struct radix_node *);
void rn_add_radix_mask(struct radix_node *, int);
int rn_del_radix_mask(struct radix_node *);
static inline void rn_swap_nodes(struct radix_node *, struct radix_node *);
static inline struct radix_node *
rn_search(void *v_arg, struct radix_node *head)
{
 struct radix_node *x = head;
 caddr_t v = v_arg;
 while (x->rn_b >= 0) {
  if (x->rn_bmask & v[x->rn_u.rn_node.rn_Off])
   x = x->rn_u.rn_node.rn_R;
  else
   x = x->rn_u.rn_node.rn_L;
 }
 return (x);
}
struct radix_node *
rn_search_m(void *v_arg, struct radix_node *head, void *m_arg)
{
 struct radix_node *x = head;
 caddr_t v = v_arg;
 caddr_t m = m_arg;
 while (x->rn_b >= 0) {
  if ((x->rn_bmask & m[x->rn_u.rn_node.rn_Off]) &&
      (x->rn_bmask & v[x->rn_u.rn_node.rn_Off]))
   x = x->rn_u.rn_node.rn_R;
  else
   x = x->rn_u.rn_node.rn_L;
 }
 return x;
}
int
rn_refines(void *m_arg, void *n_arg)
{
 caddr_t m = m_arg;
 caddr_t n = n_arg;
 caddr_t lim, lim2;
 int longer;
 int masks_are_equal = 1;
 lim2 = lim = n + *(u_char *)n;
 longer = (*(u_char *)n++) - (int)(*(u_char *)m++);
 if (longer > 0)
  lim -= longer;
 while (n < lim) {
  if (*n & ~(*m))
   return 0;
  if (*n++ != *m++)
   masks_are_equal = 0;
 }
 while (n < lim2)
  if (*n++)
   return 0;
 if (masks_are_equal && (longer < 0))
  for (lim2 = m - longer; m < lim2; )
   if (*m++)
    return 1;
 return (!masks_are_equal);
}
struct radix_node *
rn_lookup(void *v_arg, void *m_arg, struct radix_node_head *head)
{
 struct radix_node *x, *tm;
 caddr_t netmask = 0;
 if (m_arg) {
  tm = rn_addmask(m_arg, 1, head->rnh_treetop->rn_u.rn_node.rn_Off);
  if (tm == ((void *)0))
   return (((void *)0));
  netmask = tm->rn_u.rn_leaf.rn_Key;
 }
 x = rn_match(v_arg, head);
 if (x && netmask) {
  while (x && x->rn_u.rn_leaf.rn_Mask != netmask)
   x = x->rn_u.rn_leaf.rn_Dupedkey;
 }
 if (x && (x->rn_flags & 2))
  return (((void *)0));
 return x;
}
static inline int
rn_satisfies_leaf(char *trial, struct radix_node *leaf, int skip)
{
 char *cp = trial;
 char *cp2 = leaf->rn_u.rn_leaf.rn_Key;
 char *cp3 = leaf->rn_u.rn_leaf.rn_Mask;
 char *cplim;
 int length;
 length = min((*(u_char *)(cp)), (*(u_char *)(cp2)));
 if (cp3 == ((void *)0))
  cp3 = rn_ones;
 else
  length = min(length, (*(u_char *)(cp3)));
 cplim = cp + length;
 cp += skip;
 cp2 += skip;
 cp3 += skip;
 while (cp < cplim) {
  if ((*cp ^ *cp2) & *cp3)
   return 0;
  cp++, cp2++, cp3++;
 }
 return 1;
}
struct radix_node *
rn_match(void *v_arg, struct radix_node_head *head)
{
 caddr_t v = v_arg;
 caddr_t cp, cp2, cplim;
 struct radix_node *top = head->rnh_treetop;
 struct radix_node *saved_t, *t;
 int off = top->rn_u.rn_node.rn_Off;
 int vlen, matched_off;
 int test, b, rn_b;
 t = rn_search(v, top);
 if (t->rn_u.rn_leaf.rn_Mask)
  vlen = (*(u_char *)(t->rn_u.rn_leaf.rn_Mask));
 else
  vlen = (*(u_char *)(v));
 cp = v + off;
 cp2 = t->rn_u.rn_leaf.rn_Key + off;
 cplim = v + vlen;
 for (; cp < cplim; cp++, cp2++)
  if (*cp != *cp2)
   goto on1;
 if (t->rn_flags & 2)
  t = t->rn_u.rn_leaf.rn_Dupedkey;
 ((t == ((void *)0) || (t->rn_flags & 2) == 0) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../net/radix.c", 273, "t == NULL || (t->rn_flags & RNF_ROOT) == 0"));
 return t;
on1:
 test = (*cp ^ *cp2) & 0xff;
 for (b = 7; (test >>= 1) > 0;)
  b--;
 matched_off = cp - v;
 b += matched_off << 3;
 rn_b = -1 - b;
 saved_t = t;
 if (t->rn_u.rn_leaf.rn_Mask == ((void *)0))
  t = t->rn_u.rn_leaf.rn_Dupedkey;
 for (; t; t = t->rn_u.rn_leaf.rn_Dupedkey)
  if (t->rn_flags & 1) {
   if (rn_b <= t->rn_b) {
    (((t->rn_flags & 2) == 0) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../net/radix.c", 296, "(t->rn_flags & RNF_ROOT) == 0"));
    return t;
   }
  } else if (rn_satisfies_leaf(v, t, matched_off)) {
   (((t->rn_flags & 2) == 0) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../net/radix.c", 300, "(t->rn_flags & RNF_ROOT) == 0"));
   return t;
  }
 t = saved_t;
 do {
  struct radix_mask *m;
  t = t->rn_p;
  m = t->rn_mklist;
  while (m) {
   if (m->rm_flags & 1) {
    if (rn_b <= m->rm_b) {
     (((m->rm_rmu.rmu_leaf->rn_flags & 2) == 0) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../net/radix.c", 319, "(m->rm_leaf->rn_flags & RNF_ROOT) == 0"));
     return (m->rm_rmu.rmu_leaf);
    }
   } else {
    struct radix_node *x;
    off = min(t->rn_u.rn_node.rn_Off, matched_off);
    x = rn_search_m(v, t, m->rm_rmu.rmu_mask);
    while (x && x->rn_u.rn_leaf.rn_Mask != m->rm_rmu.rmu_mask)
     x = x->rn_u.rn_leaf.rn_Dupedkey;
    if (x && rn_satisfies_leaf(v, x, off)) {
     (((x->rn_flags & 2) == 0) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../net/radix.c", 329, "(x->rn_flags & RNF_ROOT) == 0"));
     return x;
    }
   }
   m = m->rm_mklist;
  }
 } while (t != top);
 return ((void *)0);
}
struct radix_node *
rn_newpair(void *v, int b, struct radix_node nodes[2])
{
 struct radix_node *tt = nodes, *t = nodes + 1;
 t->rn_b = b;
 t->rn_bmask = 0x80 >> (b & 7);
 t->rn_u.rn_node.rn_L = tt;
 t->rn_u.rn_node.rn_Off = b >> 3;
 tt->rn_b = -1;
 tt->rn_u.rn_leaf.rn_Key = v;
 tt->rn_p = t;
 tt->rn_flags = t->rn_flags = 4;
 return t;
}
struct radix_node *
rn_insert(void *v_arg, struct radix_node_head *head,
    int *dupentry, struct radix_node nodes[2])
{
 caddr_t v = v_arg;
 struct radix_node *top = head->rnh_treetop;
 struct radix_node *t, *tt;
 int off = top->rn_u.rn_node.rn_Off;
 int b;
 t = rn_search(v_arg, top);
    {
 caddr_t cp, cp2, cplim;
 int vlen, cmp_res;
 vlen = (*(u_char *)(v));
 cp = v + off;
 cp2 = t->rn_u.rn_leaf.rn_Key + off;
 cplim = v + vlen;
 while (cp < cplim)
  if (*cp2++ != *cp++)
   goto on1;
 *dupentry = 1;
 return t;
on1:
 *dupentry = 0;
 cmp_res = (cp[-1] ^ cp2[-1]) & 0xff;
 for (b = (cp - v) << 3; cmp_res; b--)
  cmp_res >>= 1;
    }
    {
 struct radix_node *p, *x = top;
 caddr_t cp = v;
 do {
  p = x;
  if (cp[x->rn_u.rn_node.rn_Off] & x->rn_bmask)
   x = x->rn_u.rn_node.rn_R;
  else
   x = x->rn_u.rn_node.rn_L;
 } while (b > (unsigned int) x->rn_b);
 t = rn_newpair(v_arg, b, nodes);
 tt = t->rn_u.rn_node.rn_L;
 if ((cp[p->rn_u.rn_node.rn_Off] & p->rn_bmask) == 0)
  p->rn_u.rn_node.rn_L = t;
 else
  p->rn_u.rn_node.rn_R = t;
 x->rn_p = t;
 t->rn_p = p;
 if ((cp[t->rn_u.rn_node.rn_Off] & t->rn_bmask) == 0) {
  t->rn_u.rn_node.rn_R = x;
 } else {
  t->rn_u.rn_node.rn_R = tt;
  t->rn_u.rn_node.rn_L = x;
 }
    }
 return (tt);
}
struct radix_node *
rn_addmask(void *n_arg, int search, int skip)
{
 caddr_t netmask = n_arg;
 struct radix_node *tm, *saved_tm;
 caddr_t cp, cplim;
 int b = 0, mlen, j;
 int maskduplicated, m0, isnormal;
 char addmask_key[64];
 if ((mlen = (*(u_char *)(netmask))) > max_keylen)
  mlen = max_keylen;
 if (skip == 0)
  skip = 1;
 if (mlen <= skip)
  return (mask_rnhead->rnh_nodes);
 if (skip > 1)
  __builtin_memcpy((addmask_key + 1), (rn_ones + 1), (skip - 1));
 if ((m0 = mlen) > skip)
  __builtin_memcpy((addmask_key + skip), (netmask + skip), (mlen - skip));
 for (cp = addmask_key + mlen; (cp > addmask_key) && cp[-1] == 0;)
  cp--;
 mlen = cp - addmask_key;
 if (mlen <= skip)
  return (mask_rnhead->rnh_nodes);
 __builtin_memset((addmask_key + m0), (0), (max_keylen - m0));
 (*(u_char *)(addmask_key)) = mlen;
 tm = rn_search(addmask_key, mask_rnhead->rnh_treetop);
 if (__builtin_memcmp((addmask_key), (tm->rn_u.rn_leaf.rn_Key), (mlen)) != 0)
  tm = ((void *)0);
 if (tm || search)
  return (tm);
 tm = malloc(max_keylen + 2 * sizeof (*tm), 5, 0x0002 | 0x0008);
 if (tm == ((void *)0))
  return (0);
 saved_tm = tm;
 netmask = cp = (caddr_t)(tm + 2);
 __builtin_memcpy((cp), (addmask_key), (mlen));
 tm = rn_insert(cp, mask_rnhead, &maskduplicated, tm);
 if (maskduplicated) {
  log(3, "%s: mask impossibly already in tree\n", __func__);
  free(saved_tm, 5, 0);
  return (tm);
 }
 cplim = netmask + mlen;
 isnormal = 1;
 for (cp = netmask + skip; (cp < cplim) && *(u_char *)cp == 0xff;)
  cp++;
 if (cp != cplim) {
  static const char normal_chars[] = {
   0, 0x80, 0xc0, 0xe0, 0xf0, 0xf8, 0xfc, 0xfe, -1
  };
  for (j = 0x80; (j & *cp) != 0; j >>= 1)
   b++;
  if (*cp != normal_chars[b] || cp != (cplim - 1))
   isnormal = 0;
 }
 b += (cp - netmask) << 3;
 tm->rn_b = -1 - b;
 if (isnormal)
  tm->rn_flags |= 1;
 return (tm);
}
static inline int
rn_lexobetter(void *m_arg, void *n_arg)
{
 u_char *mp = m_arg, *np = n_arg;
 if ((*(u_char *)(mp)) > (*(u_char *)(np)))
  return 1;
 if ((*(u_char *)(mp)) < (*(u_char *)(np)))
  return 0;
 return (__builtin_memcmp((mp), (np), (*mp)) > 0);
}
static inline struct radix_mask *
rn_new_radix_mask(struct radix_node *tt, struct radix_mask *next)
{
 struct radix_mask *m;
 m = pool_get(&rtmask_pool, 0x0002 | 0x0008);
 if (m == ((void *)0)) {
  log(3, "Mask for route not entered\n");
  return (0);
 }
 m->rm_b = tt->rn_b;
 m->rm_flags = tt->rn_flags;
 if (tt->rn_flags & 1)
  m->rm_rmu.rmu_leaf = tt;
 else
  m->rm_rmu.rmu_mask = tt->rn_u.rn_leaf.rn_Mask;
 m->rm_mklist = next;
 tt->rn_mklist = m;
 return m;
}
static inline struct radix_node *
rn_lift_node(struct radix_node *t)
{
 struct radix_node *x = t;
 int b = -1 - t->rn_b;
 while (t->rn_b < 0)
  t = t->rn_p;
 if (b > t->rn_b)
  return (((void *)0));
 do {
  x = t;
  t = t->rn_p;
 } while (b <= t->rn_b && x != t);
 return (x);
}
void
rn_add_radix_mask(struct radix_node *tt, int keyduplicated)
{
 caddr_t netmask, mmask;
 struct radix_node *x;
 struct radix_mask *m, **mp;
 int b_leaf = tt->rn_b;
 if (tt->rn_u.rn_leaf.rn_Mask == ((void *)0))
  return;
 x = rn_lift_node(tt);
 if (x == ((void *)0))
  return;
 netmask = tt->rn_u.rn_leaf.rn_Mask;
 for (mp = &x->rn_mklist; (m = *mp); mp = &m->rm_mklist) {
  if (m->rm_b < b_leaf)
   continue;
  if (m->rm_b > b_leaf)
   break;
  if (m->rm_flags & 1) {
   if (keyduplicated) {
    if (m->rm_rmu.rmu_leaf->rn_p == tt)
     m->rm_rmu.rmu_leaf = tt;
    else {
     struct radix_node *t;
     for (t = m->rm_rmu.rmu_leaf;
         t && t->rn_mklist == m;
         t = t->rn_u.rn_leaf.rn_Dupedkey)
      if (t == tt)
       break;
     if (t == ((void *)0)) {
      log(3, "Non-unique "
          "normal route on dupedkey, "
          "mask not entered\n");
      return;
     }
    }
    m->rm_refs++;
    tt->rn_mklist = m;
    return;
   } else if (tt->rn_flags & 1) {
    log(3, "Non-unique normal route,"
        " mask not entered\n");
    return;
   }
   mmask = m->rm_rmu.rmu_leaf->rn_u.rn_leaf.rn_Mask;
  } else
   mmask = m->rm_rmu.rmu_mask;
  if (mmask == netmask) {
   m->rm_refs++;
   tt->rn_mklist = m;
   return;
  }
  if (rn_refines(netmask, mmask) || rn_lexobetter(netmask, mmask))
   break;
 }
 *mp = rn_new_radix_mask(tt, *mp);
}
int
rn_add_dupedkey(struct radix_node *saved_tt, struct radix_node_head *head,
    struct radix_node *tt, u_int8_t prio)
{
 caddr_t netmask = tt->rn_u.rn_leaf.rn_Mask;
 struct radix_node *x = saved_tt, *xp;
 int before = -1;
 int b_leaf = 0;
 if (netmask)
  b_leaf = tt->rn_b;
 for (xp = x; x; xp = x, x = x->rn_u.rn_leaf.rn_Dupedkey) {
  if (x->rn_u.rn_leaf.rn_Mask == netmask)
   return (-1);
  if (netmask == ((void *)0) ||
      (x->rn_u.rn_leaf.rn_Mask &&
       ((b_leaf < x->rn_b) ||
         rn_refines(netmask, x->rn_u.rn_leaf.rn_Mask) ||
         rn_lexobetter(netmask, x->rn_u.rn_leaf.rn_Mask))))
   break;
 }
 if ((x == saved_tt && before) || before == 1)
  before = 1;
 else
  before = 0;
 rn_link_dupedkey(tt, xp, before);
 return (0);
}
void
rn_link_dupedkey(struct radix_node *tt, struct radix_node *x, int before)
{
 if (before) {
  if (x->rn_p->rn_b > 0) {
   tt->rn_u.rn_leaf.rn_Dupedkey = x;
   tt->rn_flags = x->rn_flags;
   tt->rn_p = x->rn_p;
   x->rn_p = tt;
   if (tt->rn_p->rn_u.rn_node.rn_L == x)
    tt->rn_p->rn_u.rn_node.rn_L = tt;
   else
    tt->rn_p->rn_u.rn_node.rn_R = tt;
  } else {
   tt->rn_u.rn_leaf.rn_Dupedkey = x;
   x->rn_p->rn_u.rn_leaf.rn_Dupedkey = tt;
   tt->rn_p = x->rn_p;
   x->rn_p = tt;
  }
 } else {
  tt->rn_u.rn_leaf.rn_Dupedkey = x->rn_u.rn_leaf.rn_Dupedkey;
  x->rn_u.rn_leaf.rn_Dupedkey = tt;
  tt->rn_p = x;
  if (tt->rn_u.rn_leaf.rn_Dupedkey)
   tt->rn_u.rn_leaf.rn_Dupedkey->rn_p = tt;
 }
}
void
rn_fixup_nodes(struct radix_node *tt)
{
 struct radix_node *tp, *x;
 struct radix_mask *m, **mp;
 int b_leaf;
 tp = tt->rn_p;
 if (tp->rn_u.rn_node.rn_R == tt)
  x = tp->rn_u.rn_node.rn_L;
 else
  x = tp->rn_u.rn_node.rn_R;
 b_leaf = -1 - tp->rn_b;
 if (x->rn_b < 0) {
  struct radix_node *xx = ((void *)0);
  for (mp = &tp->rn_mklist; x; xx = x, x = x->rn_u.rn_leaf.rn_Dupedkey) {
   if (xx && xx->rn_mklist && xx->rn_u.rn_leaf.rn_Mask == x->rn_u.rn_leaf.rn_Mask &&
       x->rn_mklist == 0) {
    x->rn_mklist = xx->rn_mklist;
    x->rn_mklist->rm_refs++;
   }
   if (x->rn_u.rn_leaf.rn_Mask && (x->rn_b >= b_leaf) &&
       x->rn_mklist == 0) {
    *mp = m = rn_new_radix_mask(x, 0);
    if (m)
     mp = &m->rm_mklist;
   }
  }
 } else if (x->rn_mklist) {
  for (mp = &x->rn_mklist; (m = *mp); mp = &m->rm_mklist)
   if (m->rm_b >= b_leaf)
    break;
  tp->rn_mklist = m;
  *mp = 0;
 }
}
struct radix_node *
rn_addroute(void *v_arg, void *n_arg, struct radix_node_head *head,
    struct radix_node treenodes[2], u_int8_t prio)
{
 caddr_t v = v_arg;
 struct radix_node *top = head->rnh_treetop;
 struct radix_node *tt, *saved_tt, *tm = ((void *)0);
 int keyduplicated;
 if (n_arg) {
  if ((tm = rn_addmask(n_arg, 0, top->rn_u.rn_node.rn_Off)) == 0)
   return (0);
 }
 tt = rn_insert(v, head, &keyduplicated, treenodes);
 if (keyduplicated) {
  saved_tt = tt;
  tt = treenodes;
  tt->rn_u.rn_leaf.rn_Key = v_arg;
  tt->rn_b = -1;
  tt->rn_flags = 4;
 }
 if (tm) {
  tt->rn_u.rn_leaf.rn_Mask = tm->rn_u.rn_leaf.rn_Key;
  tt->rn_b = tm->rn_b;
  tt->rn_flags |= tm->rn_flags & 1;
 }
 if (keyduplicated) {
  if (rn_add_dupedkey(saved_tt, head, tt, prio))
   return (((void *)0));
 } else {
  rn_fixup_nodes(tt);
 }
 rn_add_radix_mask(tt, keyduplicated);
 return (tt);
}
int
rn_del_radix_mask(struct radix_node *tt)
{
 struct radix_node *x;
 struct radix_mask *m, *saved_m, **mp;
 saved_m = m = tt->rn_mklist;
 if (tt->rn_u.rn_leaf.rn_Mask == ((void *)0) || m == ((void *)0))
  return (0);
 if (tt->rn_flags & 1) {
  if (m->rm_rmu.rmu_leaf != tt && m->rm_refs == 0) {
   log(3, "rn_delete: inconsistent normal "
       "annotation\n");
   return (-1);
  }
  if (m->rm_rmu.rmu_leaf != tt) {
   if (--m->rm_refs >= 0)
    return (0);
   else
    log(3, "rn_delete: "
        "inconsistent mklist refcount\n");
  }
  if (m->rm_refs > 0) {
   if (tt->rn_u.rn_leaf.rn_Dupedkey == ((void *)0) ||
       tt->rn_u.rn_leaf.rn_Dupedkey->rn_mklist != m) {
    log(3, "rn_delete: inconsistent "
        "dupedkey list\n");
    return (-1);
   }
   m->rm_rmu.rmu_leaf = tt->rn_u.rn_leaf.rn_Dupedkey;
   --m->rm_refs;
   return (0);
  }
 } else {
  if (m->rm_rmu.rmu_mask != tt->rn_u.rn_leaf.rn_Mask) {
   log(3, "rn_delete: inconsistent annotation\n");
   return (0);
  }
  if (--m->rm_refs >= 0)
   return (0);
 }
 x = rn_lift_node(tt);
 if (x == ((void *)0))
  return (0);
 for (mp = &x->rn_mklist; (m = *mp); mp = &m->rm_mklist)
  if (m == saved_m) {
   *mp = m->rm_mklist;
   pool_put(&rtmask_pool, m);
   break;
  }
 if (m == ((void *)0)) {
  log(3, "rn_delete: couldn't find our annotation\n");
  if (tt->rn_flags & 1)
   return (-1);
 }
 return (0);
}
static inline void
rn_swap_nodes(struct radix_node *from, struct radix_node *to)
{
 *to = *from;
 if (from->rn_p->rn_u.rn_node.rn_L == from)
  from->rn_p->rn_u.rn_node.rn_L = to;
 else
  from->rn_p->rn_u.rn_node.rn_R = to;
 to->rn_u.rn_node.rn_L->rn_p = to;
 to->rn_u.rn_node.rn_R->rn_p = to;
}
struct radix_node *
rn_delete(void *v_arg, void *n_arg, struct radix_node_head *head,
    struct radix_node *rn)
{
 caddr_t v = v_arg;
 caddr_t netmask = n_arg;
 struct radix_node *top = head->rnh_treetop;
 struct radix_node *tt, *tp, *pp, *x;
 struct radix_node *dupedkey_tt, *saved_tt;
 int off = top->rn_u.rn_node.rn_Off;
 int vlen;
 vlen = (*(u_char *)(v));
 tt = rn_search(v, top);
 if (__builtin_memcmp((v + off), (tt->rn_u.rn_leaf.rn_Key + off), (vlen - off)))
  return (((void *)0));
 saved_tt = tt;
 if (netmask) {
  struct radix_node *tm;
  if ((tm = rn_addmask(netmask, 1, off)) == ((void *)0))
   return (((void *)0));
  netmask = tm->rn_u.rn_leaf.rn_Key;
  while (tt->rn_u.rn_leaf.rn_Mask != netmask)
   if ((tt = tt->rn_u.rn_leaf.rn_Dupedkey) == ((void *)0))
    return (((void *)0));
 }
 dupedkey_tt = tt;
 (((tt->rn_flags & 2) == 0) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../net/radix.c", 952, "(tt->rn_flags & RNF_ROOT) == 0"));
 if (rn_del_radix_mask(tt))
  return (((void *)0));
 tp = tt->rn_p;
 if (saved_tt->rn_u.rn_leaf.rn_Dupedkey) {
  if (tt == saved_tt) {
   x = saved_tt->rn_u.rn_leaf.rn_Dupedkey;
   x->rn_p = tp;
   if (tp->rn_u.rn_node.rn_L == tt)
    tp->rn_u.rn_node.rn_L = x;
   else
    tp->rn_u.rn_node.rn_R = x;
   dupedkey_tt = x;
  } else {
   x = saved_tt;
   if (dupedkey_tt == tt)
    dupedkey_tt = tt->rn_u.rn_leaf.rn_Dupedkey;
   tp->rn_u.rn_leaf.rn_Dupedkey = tt->rn_u.rn_leaf.rn_Dupedkey;
   if (tt->rn_u.rn_leaf.rn_Dupedkey)
    tt->rn_u.rn_leaf.rn_Dupedkey->rn_p = tp;
  }
  if (tt[1].rn_flags & 4)
   rn_swap_nodes(&tt[1], &x[1]);
  goto out;
 }
 if (tp->rn_u.rn_node.rn_L == tt)
  x = tp->rn_u.rn_node.rn_R;
 else
  x = tp->rn_u.rn_node.rn_L;
 pp = tp->rn_p;
 if (pp->rn_u.rn_node.rn_R == tp)
  pp->rn_u.rn_node.rn_R = x;
 else
  pp->rn_u.rn_node.rn_L = x;
 x->rn_p = pp;
 if (tp->rn_mklist) {
  struct radix_mask *m, **mp;
  if (x->rn_b >= 0) {
   for (mp = &x->rn_mklist; (m = *mp);)
    mp = &m->rm_mklist;
   *mp = tp->rn_mklist;
  } else {
   for (m = tp->rn_mklist; m && x; x = x->rn_u.rn_leaf.rn_Dupedkey)
    if (m == x->rn_mklist) {
     struct radix_mask *mm = m->rm_mklist;
     x->rn_mklist = 0;
     if (--(m->rm_refs) < 0)
      pool_put(&rtmask_pool, m);
     else if (m->rm_flags & 1)
      mm = m;
     m = mm;
    }
   if (m)
    log(3, "%s %p at %p\n",
        "rn_delete: Orphaned Mask", m, x);
  }
 }
 if (tp != &tt[1])
  rn_swap_nodes(&tt[1], tp);
out:
 tt[0].rn_flags &= ~4;
 tt[1].rn_flags &= ~4;
 return (tt);
}
int
rn_walktree(struct radix_node_head *h, int (*f)(struct radix_node *, void *,
    u_int), void *w)
{
 int error;
 struct radix_node *base, *next;
 struct radix_node *rn = h->rnh_treetop;
 while (rn->rn_b >= 0)
  rn = rn->rn_u.rn_node.rn_L;
 for (;;) {
  base = rn;
  while (rn->rn_p->rn_u.rn_node.rn_R == rn && (rn->rn_flags & 2) == 0)
   rn = rn->rn_p;
  for (rn = rn->rn_p->rn_u.rn_node.rn_R; rn->rn_b >= 0;)
   rn = rn->rn_u.rn_node.rn_L;
  next = rn;
  while ((rn = base) != ((void *)0)) {
   base = rn->rn_u.rn_leaf.rn_Dupedkey;
   if (!(rn->rn_flags & 2) &&
       (error = (*f)(rn, w, h->rnh_rtableid)))
    return (error);
  }
  rn = next;
  if (rn->rn_flags & 2)
   return (0);
 }
}
int
rn_initmask(void)
{
 if (mask_rnhead != ((void *)0))
  return (0);
 ((max_keylen > 0) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../net/radix.c", 1098, "max_keylen > 0"));
 mask_rnhead = malloc(sizeof(*mask_rnhead), 5, 0x0002);
 if (mask_rnhead == ((void *)0))
  return (1);
 rn_inithead0(mask_rnhead, 0);
 return (0);
}
int
rn_inithead(void **head, int off)
{
 struct radix_node_head *rnh;
 if (*head != ((void *)0))
  return (1);
 if (rn_initmask())
  panic("failed to initialize the mask tree");
 rnh = malloc(sizeof(*rnh), 5, 0x0002);
 if (rnh == ((void *)0))
  return (0);
 *head = rnh;
 rn_inithead0(rnh, off);
 return (1);
}
int
rn_inithead0(struct radix_node_head *rnh, int offset)
{
 struct radix_node *t, *tt, *ttt;
 int off = offset * 8;
 __builtin_memset((rnh), (0), (sizeof(*rnh)));
 t = rn_newpair(rn_zeros, off, rnh->rnh_nodes);
 ttt = rnh->rnh_nodes + 2;
 t->rn_u.rn_node.rn_R = ttt;
 t->rn_p = t;
 tt = t->rn_u.rn_node.rn_L;
 tt->rn_flags = t->rn_flags = 2 | 4;
 tt->rn_b = -1 - off;
 *ttt = *tt;
 ttt->rn_u.rn_leaf.rn_Key = rn_ones;
 rnh->rnh_treetop = t;
 return (1);
}
void
rn_init(unsigned int keylen)
{
 char *cp, *cplim;
 ((keylen <= 64) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../net/radix.c", 1156, "keylen <= KEYLEN_LIMIT"));
 if (max_keylen == 0) {
  pool_init(&rtmask_pool, sizeof(struct radix_mask), 0,
      2, 0, "rtmask", ((void *)0));
 }
 if (keylen <= max_keylen)
  return;
 ((mask_rnhead == ((void *)0)) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../net/radix.c", 1166, "mask_rnhead == NULL"));
 free(rn_zeros, 5, 2 * max_keylen);
 rn_zeros = mallocarray(2, keylen, 5, 0x0002 | 0x0008);
 if (rn_zeros == ((void *)0))
  panic("cannot initialize a radix tree without memory");
 max_keylen = keylen;
 cp = rn_ones = rn_zeros + max_keylen;
 cplim = rn_ones + max_keylen;
 while (cp < cplim)
  *cp++ = -1;
}
