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
struct ifnet;
typedef int (*ifm_change_cb_t)(struct ifnet *);
typedef void (*ifm_stat_cb_t)(struct ifnet *, struct ifmediareq *);
struct ifmedia_entry {
 struct { struct ifmedia_entry *tqe_next; struct ifmedia_entry **tqe_prev; } ifm_list;
 uint64_t ifm_media;
 u_int ifm_data;
 void *ifm_aux;
};
struct ifmedia {
 uint64_t ifm_mask;
 uint64_t ifm_media;
 struct ifmedia_entry *ifm_cur;
 struct { struct ifmedia_entry *tqh_first; struct ifmedia_entry **tqh_last; } ifm_list;
 ifm_change_cb_t ifm_change;
 ifm_stat_cb_t ifm_status;
};
void ifmedia_init(struct ifmedia *, uint64_t, ifm_change_cb_t,
      ifm_stat_cb_t);
void ifmedia_add(struct ifmedia *, uint64_t, int, void *);
void ifmedia_list_add(struct ifmedia *, struct ifmedia_entry *,
     int);
void ifmedia_set(struct ifmedia *, uint64_t);
int ifmedia_ioctl(struct ifnet *, struct ifreq *, struct ifmedia *,
     u_long);
struct ifmedia_entry *ifmedia_match(struct ifmedia *, uint64_t, uint64_t);
void ifmedia_delete_instance(struct ifmedia *, uint64_t);
uint64_t ifmedia_baudrate(uint64_t);
struct ifmedia_description {
 uint64_t ifmt_word;
 const char *ifmt_string;
};
struct ifmedia_baudrate {
 uint64_t ifmb_word;
 uint64_t ifmb_baudrate;
};
struct ifmedia_status_description {
 uint64_t ifms_type;
 uint64_t ifms_valid;
 uint64_t ifms_bit;
 const char *ifms_string[2];
};
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
struct ieee80211_frame {
 u_int8_t i_fc[2];
 u_int8_t i_dur[2];
 u_int8_t i_addr1[6];
 u_int8_t i_addr2[6];
 u_int8_t i_addr3[6];
 u_int8_t i_seq[2];
} __attribute__((__packed__));
struct ieee80211_qosframe {
 u_int8_t i_fc[2];
 u_int8_t i_dur[2];
 u_int8_t i_addr1[6];
 u_int8_t i_addr2[6];
 u_int8_t i_addr3[6];
 u_int8_t i_seq[2];
 u_int8_t i_qos[2];
} __attribute__((__packed__));
struct ieee80211_htframe {
 u_int8_t i_fc[2];
 u_int8_t i_dur[2];
 u_int8_t i_addr1[6];
 u_int8_t i_addr2[6];
 u_int8_t i_addr3[6];
 u_int8_t i_seq[2];
 u_int8_t i_qos[2];
 u_int8_t i_ht[4];
} __attribute__((__packed__));
struct ieee80211_frame_addr4 {
 u_int8_t i_fc[2];
 u_int8_t i_dur[2];
 u_int8_t i_addr1[6];
 u_int8_t i_addr2[6];
 u_int8_t i_addr3[6];
 u_int8_t i_seq[2];
 u_int8_t i_addr4[6];
} __attribute__((__packed__));
struct ieee80211_qosframe_addr4 {
 u_int8_t i_fc[2];
 u_int8_t i_dur[2];
 u_int8_t i_addr1[6];
 u_int8_t i_addr2[6];
 u_int8_t i_addr3[6];
 u_int8_t i_seq[2];
 u_int8_t i_addr4[6];
 u_int8_t i_qos[2];
} __attribute__((__packed__));
struct ieee80211_htframe_addr4 {
 u_int8_t i_fc[2];
 u_int8_t i_dur[2];
 u_int8_t i_addr1[6];
 u_int8_t i_addr2[6];
 u_int8_t i_addr3[6];
 u_int8_t i_seq[2];
 u_int8_t i_addr4[6];
 u_int8_t i_qos[2];
 u_int8_t i_ht[4];
} __attribute__((__packed__));
struct ieee80211_frame_min {
 u_int8_t i_fc[2];
 u_int8_t i_dur[2];
 u_int8_t i_addr1[6];
 u_int8_t i_addr2[6];
} __attribute__((__packed__));
struct ieee80211_frame_rts {
 u_int8_t i_fc[2];
 u_int8_t i_dur[2];
 u_int8_t i_ra[6];
 u_int8_t i_ta[6];
} __attribute__((__packed__));
struct ieee80211_frame_cts {
 u_int8_t i_fc[2];
 u_int8_t i_dur[2];
 u_int8_t i_ra[6];
} __attribute__((__packed__));
struct ieee80211_frame_ack {
 u_int8_t i_fc[2];
 u_int8_t i_dur[2];
 u_int8_t i_ra[6];
} __attribute__((__packed__));
struct ieee80211_frame_pspoll {
 u_int8_t i_fc[2];
 u_int8_t i_aid[2];
 u_int8_t i_bssid[6];
 u_int8_t i_ta[6];
} __attribute__((__packed__));
struct ieee80211_frame_cfend {
 u_int8_t i_fc[2];
 u_int8_t i_dur[2];
 u_int8_t i_ra[6];
 u_int8_t i_bssid[6];
} __attribute__((__packed__));
static __inline int
ieee80211_has_seq(const struct ieee80211_frame *wh)
{
 return (wh->i_fc[0] & 0x0c) !=
     0x04;
}
static __inline int
ieee80211_has_addr4(const struct ieee80211_frame *wh)
{
 return (wh->i_fc[1] & 0x03) ==
     0x03;
}
static __inline int
ieee80211_has_qos(const struct ieee80211_frame *wh)
{
 return (wh->i_fc[0] &
     (0x0c | 0x80)) ==
     (0x08 | 0x80);
}
static __inline int
ieee80211_has_htc(const struct ieee80211_frame *wh)
{
 return (wh->i_fc[1] & 0x80) &&
     (ieee80211_has_qos(wh) ||
      (wh->i_fc[0] & 0x0c) ==
      0x00);
}
static __inline u_int16_t
ieee80211_get_qos(const struct ieee80211_frame *wh)
{
 const u_int8_t *frm;
 if (ieee80211_has_addr4(wh))
  frm = ((const struct ieee80211_qosframe_addr4 *)wh)->i_qos;
 else
  frm = ((const struct ieee80211_qosframe *)wh)->i_qos;
 return __extension__({ __uint16_t __swap16gen_x = (*(const u_int16_t *)frm); (__uint16_t)((__swap16gen_x & 0xff) << 8 | (__swap16gen_x & 0xff00) >> 8); });
}
enum {
 IEEE80211_ELEMID_SSID = 0,
 IEEE80211_ELEMID_RATES = 1,
 IEEE80211_ELEMID_FHPARMS = 2,
 IEEE80211_ELEMID_DSPARMS = 3,
 IEEE80211_ELEMID_CFPARMS = 4,
 IEEE80211_ELEMID_TIM = 5,
 IEEE80211_ELEMID_IBSSPARMS = 6,
 IEEE80211_ELEMID_COUNTRY = 7,
 IEEE80211_ELEMID_HOPPING_PARMS = 8,
 IEEE80211_ELEMID_HOPPING_PATTERN = 9,
 IEEE80211_ELEMID_REQUEST = 10,
 IEEE80211_ELEMID_QBSS_LOAD = 11,
 IEEE80211_ELEMID_EDCAPARMS = 12,
 IEEE80211_ELEMID_TSPEC = 13,
 IEEE80211_ELEMID_TCLASS = 14,
 IEEE80211_ELEMID_SCHEDULE = 15,
 IEEE80211_ELEMID_CHALLENGE = 16,
 IEEE80211_ELEMID_POWER_CONSTRAINT = 32,
 IEEE80211_ELEMID_POWER_CAP = 33,
 IEEE80211_ELEMID_TPC_REQUEST = 34,
 IEEE80211_ELEMID_TPC_REPORT = 35,
 IEEE80211_ELEMID_SUPP_CHNLS = 35,
 IEEE80211_ELEMID_CSA = 37,
 IEEE80211_ELEMID_MEASUREMENT_REQUEST = 38,
 IEEE80211_ELEMID_MEASUREMENT_REPORT = 39,
 IEEE80211_ELEMID_QUIET = 40,
 IEEE80211_ELEMID_IBSS_DFS = 41,
 IEEE80211_ELEMID_ERP = 42,
 IEEE80211_ELEMID_TS_DELAY = 43,
 IEEE80211_ELEMID_TCLAS = 44,
 IEEE80211_ELEMID_HTCAPS = 45,
 IEEE80211_ELEMID_QOS_CAP = 46,
 IEEE80211_ELEMID_RSN = 48,
 IEEE80211_ELEMID_XRATES = 50,
 IEEE80211_ELEMID_AP_CHNL_REPORT = 51,
 IEEE80211_ELEMID_NBR_REPORT = 52,
 IEEE80211_ELEMID_RCPI = 53,
 IEEE80211_ELEMID_MDE = 54,
 IEEE80211_ELEMID_FTE = 55,
 IEEE80211_ELEMID_TIE = 56,
 IEEE80211_ELEMID_RDE = 57,
 IEEE80211_ELEMID_DSE = 58,
 IEEE80211_ELEMID_SUPP_OPCLASS = 59,
 IEEE80211_ELEMID_XCSA = 60,
 IEEE80211_ELEMID_HTOP = 61,
 IEEE80211_ELEMID_SECONDARY_CHANL_OFFSET = 62,
 IEEE80211_ELEMID_AVG_ACCESS_DELAY = 63,
 IEEE80211_ELEMID_ANTENNA = 64,
 IEEE80211_ELEMID_RSNI = 65,
 IEEE80211_ELEMID_MEASUREMENT_PILOT_TX = 66,
 IEEE80211_ELEMID_AVAIL_CAPACITY = 67,
 IEEE80211_ELEMID_AC_ACCESS_DELAY = 68,
 IEEE80211_ELEMID_TIME_ADVERT = 69,
 IEEE80211_ELEMID_RM = 70,
 IEEE80211_ELEMID_MULTI_BSSID = 71,
 IEEE80211_ELEMID_20_40_CBW_COEX = 72,
 IEEE80211_ELEMID_20_40_CBW_INTOLERANT = 73,
 IEEE80211_ELEMID_SCAN_PARAM_OVERLAP = 74,
 IEEE80211_ELEMID_RIC = 75,
 IEEE80211_ELEMID_MMIE = 76,
 IEEE80211_ELEMID_EVENT_REQUEST = 78,
 IEEE80211_ELEMID_EVENT_REPORT = 79,
 IEEE80211_ELEMID_DIAG_REQUEST = 80,
 IEEE80211_ELEMID_DIAG_REPORT = 81,
 IEEE80211_ELEMID_LOCATION_PARMS = 82,
 IEEE80211_ELEMID_NONTX_BSSID = 83,
 IEEE80211_ELEMID_SSID_LIST = 84,
 IEEE80211_ELEMID_MULTI_BSSID_IDX = 85,
 IEEE80211_ELEMID_FMS_DESC = 86,
 IEEE80211_ELEMID_FMS_REQUEST = 87,
 IEEE80211_ELEMID_FMS_RESPONSE = 88,
 IEEE80211_ELEMID_QOS_TRAFFIC_CAP = 89,
 IEEE80211_ELEMID_MAX_IDLE_PERIOD = 90,
 IEEE80211_ELEMID_TFS_REQUEST = 91,
 IEEE80211_ELEMID_TFS_RESPONSE = 92,
 IEEE80211_ELEMID_WNM_SLEEP = 93,
 IEEE80211_ELEMID_TIM_BCAST_REQUEST = 94,
 IEEE80211_ELEMID_TIM_BCAST_RESPONSE = 95,
 IEEE80211_ELEMID_INTERFERENCE_REPORT = 96,
 IEEE80211_ELEMID_CHNL_USAGE = 97,
 IEEE80211_ELEMID_TIME_ZONE = 98,
 IEEE80211_ELEMID_DMS_REQUEST = 99,
 IEEE80211_ELEMID_DMS_RESPONSE = 100,
 IEEE80211_ELEMID_LINK_ID = 101,
 IEEE80211_ELEMID_WAKE_SCHED = 102,
 IEEE80211_ELEMID_CHNL_SWITCH_TIMING = 104,
 IEEE80211_ELEMID_PTI_CTRL = 105,
 IEEE80211_ELEMID_TPU_BUF_STATUS = 106,
 IEEE80211_ELEMID_INTERWORKING = 107,
 IEEE80211_ELEMID_ADVERT_PROTOCOL = 108,
 IEEE80211_ELEMID_EXPEDITED_BW_REQUEST = 109,
 IEEE80211_ELEMID_QOS_MAP_SET = 110,
 IEEE80211_ELEMID_ROAMING_CONSORTIUM = 111,
 IEEE80211_ELEMID_EMERGENCY_ALERT_ID = 112,
 IEEE80211_ELEMID_MESHCONF = 113,
 IEEE80211_ELEMID_MESHID = 114,
 IEEE80211_ELEMID_MESHLINK = 115,
 IEEE80211_ELEMID_MESHCNGST = 116,
 IEEE80211_ELEMID_MESHPEER = 117,
 IEEE80211_ELEMID_MESHCSA = 118,
 IEEE80211_ELEMID_MESHAWAKEW = 119,
 IEEE80211_ELEMID_MESHBEACONT = 120,
 IEEE80211_ELEMID_MCCAOP_SETUP_REQUEST = 121,
 IEEE80211_ELEMID_MCCAOP_SETUP_REPLY = 122,
 IEEE80211_ELEMID_MCCAOP_ADVERT = 123,
 IEEE80211_ELEMID_MCCAOP_TEARDOWN = 124,
 IEEE80211_ELEMID_MESHGANN = 125,
 IEEE80211_ELEMID_MESHRANN = 126,
 IEEE80211_ELEMID_XCAPS = 127,
 IEEE80211_ELEMID_MESHPREQ = 130,
 IEEE80211_ELEMID_MESHPREP = 131,
 IEEE80211_ELEMID_MESHPERR = 132,
 IEEE80211_ELEMID_MESHPXU = 137,
 IEEE80211_ELEMID_MESHPXUC = 138,
 IEEE80211_ELEMID_AUTH_MESH_PEERING_XCHG = 139,
 IEEE80211_ELEMID_MIC = 140,
 IEEE80211_ELEMID_DEST_URI = 141,
 IEEE80211_ELEMID_U_APSD_COEX = 142,
 IEEE80211_ELEMID_MCCAOP_ADVERT_OVIEW = 174,
 IEEE80211_ELEMID_VENDOR = 221
};
enum {
 IEEE80211_CATEG_SPECTRUM = 0,
 IEEE80211_CATEG_QOS = 1,
 IEEE80211_CATEG_DLS = 2,
 IEEE80211_CATEG_BA = 3,
 IEEE80211_CATEG_PUB = 4,
 IEEE80211_CATEG_RADIO_MSRMNT = 5,
 IEEE80211_CATEG_FAST_BSS_TRANS = 6,
 IEEE80211_CATEG_HT = 7,
 IEEE80211_CATEG_SA_QUERY = 8,
 IEEE80211_CATEG_PROT_DUAL_PUBLIC_ACTION = 9,
 IEEE80211_CATEG_WNM = 10,
 IEEE80211_CATEG_UNPROT_WNM = 11,
 IEEE80211_CATEG_TDLS = 12,
 IEEE80211_CATEG_MESH = 13,
 IEEE80211_CATEG_MULTIHOP = 14,
 IEEE80211_CATEG_SELF_PROT = 15,
 IEEE80211_CATEG_PROT_VENDOR = 126,
 IEEE80211_CATEG_VENDOR = 127
};
enum ieee80211_edca_ac {
 EDCA_AC_BK = 1,
 EDCA_AC_BE = 0,
 EDCA_AC_VI = 2,
 EDCA_AC_VO = 3
};
enum {
 IEEE80211_AUTH_OPEN_REQUEST = 1,
 IEEE80211_AUTH_OPEN_RESPONSE = 2
};
enum {
 IEEE80211_AUTH_SHARED_REQUEST = 1,
 IEEE80211_AUTH_SHARED_CHALLENGE = 2,
 IEEE80211_AUTH_SHARED_RESPONSE = 3,
 IEEE80211_AUTH_SHARED_PASS = 4
};
enum {
 IEEE80211_REASON_UNSPECIFIED = 1,
 IEEE80211_REASON_AUTH_EXPIRE = 2,
 IEEE80211_REASON_AUTH_LEAVE = 3,
 IEEE80211_REASON_ASSOC_EXPIRE = 4,
 IEEE80211_REASON_ASSOC_TOOMANY = 5,
 IEEE80211_REASON_NOT_AUTHED = 6,
 IEEE80211_REASON_NOT_ASSOCED = 7,
 IEEE80211_REASON_ASSOC_LEAVE = 8,
 IEEE80211_REASON_ASSOC_NOT_AUTHED = 9,
 IEEE80211_REASON_RSN_REQUIRED = 11,
 IEEE80211_REASON_RSN_INCONSISTENT = 12,
 IEEE80211_REASON_IE_INVALID = 13,
 IEEE80211_REASON_MIC_FAILURE = 14,
 IEEE80211_REASON_4WAY_TIMEOUT = 15,
 IEEE80211_REASON_GROUP_TIMEOUT = 16,
 IEEE80211_REASON_RSN_DIFFERENT_IE = 17,
 IEEE80211_REASON_BAD_GROUP_CIPHER = 18,
 IEEE80211_REASON_BAD_PAIRWISE_CIPHER = 19,
 IEEE80211_REASON_BAD_AKMP = 20,
 IEEE80211_REASON_RSN_IE_VER_UNSUP = 21,
 IEEE80211_REASON_RSN_IE_BAD_CAP = 22,
 IEEE80211_REASON_CIPHER_REJ_POLICY = 24,
 IEEE80211_REASON_SETUP_REQUIRED = 38,
 IEEE80211_REASON_TIMEOUT = 39
};
enum {
 IEEE80211_STATUS_SUCCESS = 0,
 IEEE80211_STATUS_UNSPECIFIED = 1,
 IEEE80211_STATUS_CAPINFO = 10,
 IEEE80211_STATUS_NOT_ASSOCED = 11,
 IEEE80211_STATUS_OTHER = 12,
 IEEE80211_STATUS_ALG = 13,
 IEEE80211_STATUS_SEQUENCE = 14,
 IEEE80211_STATUS_CHALLENGE = 15,
 IEEE80211_STATUS_TIMEOUT = 16,
 IEEE80211_STATUS_TOOMANY = 17,
 IEEE80211_STATUS_BASIC_RATE = 18,
 IEEE80211_STATUS_SP_REQUIRED = 19,
 IEEE80211_STATUS_PBCC_REQUIRED = 20,
 IEEE80211_STATUS_CA_REQUIRED = 21,
 IEEE80211_STATUS_TOO_MANY_STATIONS = 22,
 IEEE80211_STATUS_RATES = 23,
 IEEE80211_STATUS_SHORTSLOT_REQUIRED = 25,
 IEEE80211_STATUS_DSSSOFDM_REQUIRED = 26,
 IEEE80211_STATUS_TRY_AGAIN_LATER = 30,
 IEEE80211_STATUS_MFP_POLICY = 31,
 IEEE80211_STATUS_REFUSED = 37,
 IEEE80211_STATUS_INVALID_PARAM = 38,
 IEEE80211_STATUS_IE_INVALID = 40,
 IEEE80211_STATUS_BAD_GROUP_CIPHER = 41,
 IEEE80211_STATUS_BAD_PAIRWISE_CIPHER = 42,
 IEEE80211_STATUS_BAD_AKMP = 43,
 IEEE80211_STATUS_RSN_IE_VER_UNSUP = 44,
 IEEE80211_STATUS_CIPHER_REJ_POLICY = 46
};
struct ieee80211_eapol_key {
 u_int8_t version;
 u_int8_t type;
 u_int8_t len[2];
 u_int8_t desc;
 u_int8_t info[2];
 u_int8_t keylen[2];
 u_int8_t replaycnt[8];
 u_int8_t nonce[32];
 u_int8_t iv[16];
 u_int8_t rsc[8];
 u_int8_t reserved[8];
 u_int8_t mic[16];
 u_int8_t paylen[2];
} __attribute__((__packed__));
struct ieee80211_ptk {
 u_int8_t kck[16];
 u_int8_t kek[16];
 u_int8_t tk[32];
} __attribute__((__packed__));
enum {
 IEEE80211_KDE_GTK = 1,
 IEEE80211_KDE_MACADDR = 3,
 IEEE80211_KDE_PMKID = 4,
 IEEE80211_KDE_SMK = 5,
 IEEE80211_KDE_NONCE = 6,
 IEEE80211_KDE_LIFETIME = 7,
 IEEE80211_KDE_ERROR = 8,
 IEEE80211_KDE_IGTK = 9
};
enum ieee80211_htprot {
 IEEE80211_HTPROT_NONE = 0,
 IEEE80211_HTPROT_NONMEMBER,
 IEEE80211_HTPROT_20MHZ,
 IEEE80211_HTPROT_NONHT_MIXED
};
enum ieee80211_cipher {
 IEEE80211_CIPHER_NONE = 0x00000000,
 IEEE80211_CIPHER_USEGROUP = 0x00000001,
 IEEE80211_CIPHER_WEP40 = 0x00000002,
 IEEE80211_CIPHER_TKIP = 0x00000004,
 IEEE80211_CIPHER_CCMP = 0x00000008,
 IEEE80211_CIPHER_WEP104 = 0x00000010,
 IEEE80211_CIPHER_BIP = 0x00000020
};
enum ieee80211_akm {
 IEEE80211_AKM_NONE = 0x00000000,
 IEEE80211_AKM_8021X = 0x00000001,
 IEEE80211_AKM_PSK = 0x00000002,
 IEEE80211_AKM_SHA256_8021X = 0x00000004,
 IEEE80211_AKM_SHA256_PSK = 0x00000008
};
static __inline int
ieee80211_is_8021x_akm(enum ieee80211_akm akm)
{
 return akm == IEEE80211_AKM_8021X ||
     akm == IEEE80211_AKM_SHA256_8021X;
}
static __inline int
ieee80211_is_sha256_akm(enum ieee80211_akm akm)
{
 return akm == IEEE80211_AKM_SHA256_8021X ||
     akm == IEEE80211_AKM_SHA256_PSK;
}
struct ieee80211_key {
 u_int8_t k_id;
 enum ieee80211_cipher k_cipher;
 u_int k_flags;
 u_int k_len;
 u_int64_t k_rsc[16];
 u_int64_t k_mgmt_rsc;
 u_int64_t k_tsc;
 u_int8_t k_key[32];
 void *k_priv;
};
struct ieee80211_pmk {
 enum ieee80211_akm pmk_akm;
 u_int32_t pmk_lifetime;
 u_int8_t pmk_pmkid[16];
 u_int8_t pmk_macaddr[6];
 u_int8_t pmk_key[32];
 struct { struct ieee80211_pmk *tqe_next; struct ieee80211_pmk **tqe_prev; } pmk_next;
};
struct ieee80211com;
struct ieee80211_node;
void ieee80211_crypto_attach(struct ifnet *);
void ieee80211_crypto_detach(struct ifnet *);
void ieee80211_crypto_clear_groupkeys(struct ieee80211com *);
struct ieee80211_key *ieee80211_get_txkey(struct ieee80211com *,
     const struct ieee80211_frame *, struct ieee80211_node *);
struct ieee80211_key *ieee80211_get_rxkey(struct ieee80211com *,
     struct mbuf *, struct ieee80211_node *);
struct mbuf *ieee80211_encrypt(struct ieee80211com *, struct mbuf *,
     struct ieee80211_key *);
struct mbuf *ieee80211_decrypt(struct ieee80211com *, struct mbuf *,
     struct ieee80211_node *);
int ieee80211_set_key(struct ieee80211com *, struct ieee80211_node *,
     struct ieee80211_key *);
void ieee80211_delete_key(struct ieee80211com *, struct ieee80211_node *,
     struct ieee80211_key *);
void ieee80211_eapol_key_mic(struct ieee80211_eapol_key *,
     const u_int8_t *);
int ieee80211_eapol_key_check_mic(struct ieee80211_eapol_key *,
     const u_int8_t *);
void ieee80211_eapol_key_encrypt(struct ieee80211com *,
     struct ieee80211_eapol_key *, const u_int8_t *);
int ieee80211_eapol_key_decrypt(struct ieee80211_eapol_key *,
     const u_int8_t *);
struct ieee80211_pmk *ieee80211_pmksa_add(struct ieee80211com *,
     enum ieee80211_akm, const u_int8_t *, const u_int8_t *, u_int32_t);
struct ieee80211_pmk *ieee80211_pmksa_find(struct ieee80211com *,
     struct ieee80211_node *, const u_int8_t *);
void ieee80211_derive_ptk(enum ieee80211_akm, const u_int8_t *,
     const u_int8_t *, const u_int8_t *, const u_int8_t *,
     const u_int8_t *, struct ieee80211_ptk *);
int ieee80211_cipher_keylen(enum ieee80211_cipher);
int ieee80211_wep_set_key(struct ieee80211com *, struct ieee80211_key *);
void ieee80211_wep_delete_key(struct ieee80211com *,
     struct ieee80211_key *);
struct mbuf *ieee80211_wep_encrypt(struct ieee80211com *, struct mbuf *,
     struct ieee80211_key *);
struct mbuf *ieee80211_wep_decrypt(struct ieee80211com *, struct mbuf *,
     struct ieee80211_key *);
int ieee80211_tkip_set_key(struct ieee80211com *, struct ieee80211_key *);
void ieee80211_tkip_delete_key(struct ieee80211com *,
     struct ieee80211_key *);
struct mbuf *ieee80211_tkip_encrypt(struct ieee80211com *,
     struct mbuf *, struct ieee80211_key *);
struct mbuf *ieee80211_tkip_decrypt(struct ieee80211com *,
     struct mbuf *, struct ieee80211_key *);
void ieee80211_tkip_mic(struct mbuf *, int, const u_int8_t *,
     u_int8_t[8]);
void ieee80211_michael_mic_failure(struct ieee80211com *, u_int64_t);
void ieee80211_michael_mic_failure_timeout(void *);
int ieee80211_ccmp_set_key(struct ieee80211com *, struct ieee80211_key *);
void ieee80211_ccmp_delete_key(struct ieee80211com *,
     struct ieee80211_key *);
struct mbuf *ieee80211_ccmp_encrypt(struct ieee80211com *, struct mbuf *,
     struct ieee80211_key *);
struct mbuf *ieee80211_ccmp_decrypt(struct ieee80211com *, struct mbuf *,
     struct ieee80211_key *);
int ieee80211_bip_set_key(struct ieee80211com *, struct ieee80211_key *);
void ieee80211_bip_delete_key(struct ieee80211com *,
     struct ieee80211_key *);
struct mbuf *ieee80211_bip_encap(struct ieee80211com *, struct mbuf *,
     struct ieee80211_key *);
struct mbuf *ieee80211_bip_decap(struct ieee80211com *, struct mbuf *,
     struct ieee80211_key *);
struct ieee80211_stats {
 u_int32_t is_rx_badversion;
 u_int32_t is_rx_tooshort;
 u_int32_t is_rx_wrongbss;
 u_int32_t is_rx_dup;
 u_int32_t is_rx_wrongdir;
 u_int32_t is_rx_mcastecho;
 u_int32_t is_rx_notassoc;
 u_int32_t is_rx_nowep;
 u_int32_t is_rx_unencrypted;
 u_int32_t is_rx_wepfail;
 u_int32_t is_rx_decap;
 u_int32_t is_rx_mgtdiscard;
 u_int32_t is_rx_ctl;
 u_int32_t is_rx_rstoobig;
 u_int32_t is_rx_elem_missing;
 u_int32_t is_rx_elem_toobig;
 u_int32_t is_rx_elem_toosmall;
 u_int32_t is_rx_badchan;
 u_int32_t is_rx_chanmismatch;
 u_int32_t is_rx_nodealloc;
 u_int32_t is_rx_ssidmismatch;
 u_int32_t is_rx_auth_unsupported;
 u_int32_t is_rx_auth_fail;
 u_int32_t is_rx_assoc_bss;
 u_int32_t is_rx_assoc_notauth;
 u_int32_t is_rx_assoc_capmismatch;
 u_int32_t is_rx_assoc_norate;
 u_int32_t is_rx_deauth;
 u_int32_t is_rx_disassoc;
 u_int32_t is_rx_badsubtype;
 u_int32_t is_rx_nombuf;
 u_int32_t is_rx_decryptcrc;
 u_int32_t is_rx_ahdemo_mgt;
 u_int32_t is_rx_bad_auth;
 u_int32_t is_tx_nombuf;
 u_int32_t is_tx_nonode;
 u_int32_t is_tx_unknownmgt;
 u_int32_t is_scan_active;
 u_int32_t is_scan_passive;
 u_int32_t is_node_timeout;
 u_int32_t is_crypto_nomem;
 u_int32_t is_rx_assoc_badrsnie;
 u_int32_t is_rx_unauth;
 u_int32_t is_tx_noauth;
 u_int32_t is_rx_eapol_key;
 u_int32_t is_rx_eapol_replay;
 u_int32_t is_rx_eapol_badmic;
 u_int32_t is_rx_remmicfail;
 u_int32_t is_rx_locmicfail;
 u_int32_t is_tkip_replays;
 u_int32_t is_tkip_icv_errs;
 u_int32_t is_ccmp_replays;
 u_int32_t is_ccmp_dec_errs;
 u_int32_t is_cmac_replays;
 u_int32_t is_cmac_icv_errs;
 u_int32_t is_pbac_errs;
 u_int32_t is_ht_nego_no_mandatory_mcs;
 u_int32_t is_ht_nego_no_basic_mcs;
 u_int32_t is_ht_nego_bad_crypto;
 u_int32_t is_ht_prot_change;
 u_int32_t is_ht_rx_ba_agreements;
 u_int32_t is_ht_tx_ba_agreements;
 u_int32_t is_ht_rx_frame_below_ba_winstart;
 u_int32_t is_ht_rx_frame_above_ba_winend;
 u_int32_t is_ht_rx_ba_window_slide;
 u_int32_t is_ht_rx_ba_window_jump;
 u_int32_t is_ht_rx_ba_no_buf;
 u_int32_t is_ht_rx_ba_frame_lost;
 u_int32_t is_ht_rx_ba_window_gap_timeout;
 u_int32_t is_ht_rx_ba_timeout;
 u_int32_t is_ht_tx_ba_timeout;
};
struct ieee80211_nwid {
 u_int8_t i_len;
 u_int8_t i_nwid[32];
};
struct ieee80211_nwkey {
 char i_name[16];
 int i_wepon;
 int i_defkid;
 struct {
  int i_keylen;
  u_int8_t *i_keydat;
 } i_key[4];
};
struct ieee80211_power {
 char i_name[16];
 int i_enabled;
 int i_maxsleep;
};
struct ieee80211_auth {
 char i_name[16];
 int i_authtype;
};
struct ieee80211chanreq {
 char i_name[16];
 u_int16_t i_channel;
};
struct ieee80211_chanreq_all {
 char i_name[16];
 struct ieee80211_channel *i_chans;
};
struct ieee80211_bssid {
 char i_name[16];
 u_int8_t i_bssid[6];
};
struct ieee80211_txpower {
 char i_name[16];
 int i_mode;
 int16_t i_val;
};
struct ieee80211_wpapsk {
 char i_name[16];
 int i_enabled;
 u_int8_t i_psk[32];
};
struct ieee80211_wpaparams {
 char i_name[16];
 int i_enabled;
 u_int i_protos;
 u_int i_akms;
 u_int i_ciphers;
 u_int i_groupcipher;
};
struct ieee80211_wmmparams {
 char i_name[16];
 int i_enabled;
};
struct ieee80211_keyavail {
 char i_name[16];
 u_int8_t i_macaddr[6];
 u_int8_t i_key[32];
 u_int32_t i_lifetime;
};
struct ieee80211_keyrun {
 char i_name[16];
 u_int8_t i_macaddr[6];
};
struct ieee80211_nodereq {
 char nr_ifname[16];
 u_int8_t nr_macaddr[6];
 u_int8_t nr_bssid[6];
 u_int8_t nr_nwid_len;
 u_int8_t nr_nwid[32];
 u_int16_t nr_channel;
 u_int16_t nr_chan_flags;
 u_int8_t nr_nrates;
 u_int8_t nr_rates[15];
 int8_t nr_rssi;
 int8_t nr_max_rssi;
 u_int8_t nr_tstamp[8];
 u_int16_t nr_intval;
 u_int16_t nr_capinfo;
 u_int8_t nr_erp;
 u_int8_t nr_pwrsave;
 u_int16_t nr_associd;
 u_int16_t nr_txseq;
 u_int16_t nr_rxseq;
 u_int32_t nr_fails;
 u_int32_t nr_inact;
 u_int8_t nr_txrate;
 u_int16_t nr_state;
 u_int nr_rsnprotos;
 u_int nr_rsnciphers;
 u_int nr_rsnakms;
 u_int8_t nr_flags;
 uint16_t nr_htcaps;
 uint8_t nr_rxmcs[(((80) + ((8) - 1)) / (8))];
 uint16_t nr_max_rxrate;
 uint8_t nr_tx_mcs_set;
 uint8_t nr_txmcs;
};
struct ieee80211_nodereq_all {
 char na_ifname[16];
 int na_nodes;
 size_t na_size;
 struct ieee80211_nodereq *na_node;
 u_int8_t na_flags;
};
struct ieee80211_flags {
 const char *f_name;
 u_int f_flag;
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
struct ieee80211_rateset {
 u_int8_t rs_nrates;
 u_int8_t rs_rates[15];
};
extern const struct ieee80211_rateset ieee80211_std_rateset_11a;
extern const struct ieee80211_rateset ieee80211_std_rateset_11b;
extern const struct ieee80211_rateset ieee80211_std_rateset_11g;
enum ieee80211_node_state {
 IEEE80211_STA_CACHE,
 IEEE80211_STA_BSS,
 IEEE80211_STA_AUTH,
 IEEE80211_STA_ASSOC,
 IEEE80211_STA_COLLECT
};
enum ieee80211_node_psstate {
 IEEE80211_PS_AWAKE,
 IEEE80211_PS_DOZE
};
enum {
 RSNA_INITIALIZE,
 RSNA_AUTHENTICATION,
 RSNA_AUTHENTICATION_2,
 RSNA_INITPMK,
 RSNA_INITPSK,
 RSNA_PTKSTART,
 RSNA_PTKCALCNEGOTIATING,
 RSNA_PTKCALCNEGOTIATING_2,
 RSNA_PTKINITNEGOTIATING,
 RSNA_PTKINITDONE,
 RSNA_DISCONNECT,
 RSNA_DISCONNECTED
};
enum {
 RSNA_IDLE,
 RSNA_REKEYNEGOTIATING,
 RSNA_REKEYESTABLISHED,
 RSNA_KEYERROR
};
enum {
 RSNA_SUPP_INITIALIZE,
 RSNA_SUPP_PTKSTART,
 RSNA_SUPP_PTKNEGOTIATING,
 RNSA_SUPP_PTKDONE
};
struct ieee80211_rxinfo {
 u_int32_t rxi_flags;
 u_int32_t rxi_tstamp;
 int rxi_rssi;
};
struct ieee80211_tx_ba {
 struct ieee80211_node *ba_ni;
 struct timeout ba_to;
 int ba_timeout_val;
 int ba_state;
 u_int16_t ba_params;
 u_int16_t ba_winstart;
 u_int16_t ba_winend;
 u_int16_t ba_winsize;
 u_int8_t ba_token;
};
struct ieee80211_rx_ba {
 struct ieee80211_node *ba_ni;
 struct {
  struct mbuf *m;
  struct ieee80211_rxinfo rxi;
 } *ba_buf;
 struct timeout ba_to;
 int ba_timeout_val;
 int ba_state;
 u_int16_t ba_params;
 u_int16_t ba_winstart;
 u_int16_t ba_winend;
 u_int16_t ba_winsize;
 u_int16_t ba_head;
 struct timeout ba_gap_to;
 int ba_winmiss;
 uint16_t ba_missedsn;
 uint8_t ba_token;
};
struct ieee80211_node {
 struct rb_entry ni_node;
 struct ieee80211com *ni_ic;
 u_int ni_refcnt;
 u_int ni_scangen;
 u_int32_t ni_rstamp;
 u_int8_t ni_rssi;
 u_int8_t ni_macaddr[6];
 u_int8_t ni_bssid[6];
 u_int8_t ni_tstamp[8];
 u_int16_t ni_intval;
 u_int16_t ni_capinfo;
 u_int8_t ni_esslen;
 u_int8_t ni_essid[32];
 struct ieee80211_rateset ni_rates;
 u_int8_t *ni_country;
 struct ieee80211_channel *ni_chan;
 u_int8_t ni_erp;
 u_int8_t ni_dtimcount;
 u_int8_t ni_dtimperiod;
 u_int8_t ni_pwrsave;
 struct mbuf_queue ni_savedq;
 struct timeout ni_eapol_to;
 u_int ni_rsn_state;
 u_int ni_rsn_supp_state;
 u_int ni_rsn_gstate;
 u_int ni_rsn_retries;
 u_int ni_supported_rsnprotos;
 u_int ni_rsnprotos;
 u_int ni_supported_rsnakms;
 u_int ni_rsnakms;
 u_int ni_rsnciphers;
 enum ieee80211_cipher ni_rsngroupcipher;
 enum ieee80211_cipher ni_rsngroupmgmtcipher;
 u_int16_t ni_rsncaps;
 enum ieee80211_cipher ni_rsncipher;
 u_int8_t ni_nonce[32];
 u_int8_t ni_pmk[32];
 u_int8_t ni_pmkid[16];
 u_int64_t ni_replaycnt;
 u_int8_t ni_replaycnt_ok;
 u_int64_t ni_reqreplaycnt;
 u_int8_t ni_reqreplaycnt_ok;
 u_int8_t *ni_rsnie;
 struct ieee80211_key ni_pairwise_key;
 struct ieee80211_ptk ni_ptk;
 u_int8_t ni_key_count;
 int ni_port_valid;
 u_int16_t ni_sa_query_trid;
 struct timeout ni_sa_query_to;
 int ni_sa_query_count;
 uint16_t ni_htcaps;
 uint8_t ni_ampdu_param;
 uint8_t ni_rxmcs[(((80) + ((8) - 1)) / (8))];
 uint16_t ni_max_rxrate;
 uint8_t ni_tx_mcs_set;
 uint16_t ni_htxcaps;
 uint32_t ni_txbfcaps;
 uint8_t ni_aselcaps;
 uint8_t ni_primary_chan;
 uint8_t ni_htop0;
 uint16_t ni_htop1;
 uint16_t ni_htop2;
 uint8_t ni_basic_mcs[(((128) + ((8) - 1)) / (8))];
 struct ieee80211_tx_ba ni_tx_ba[16];
 struct ieee80211_rx_ba ni_rx_ba[16];
 int ni_txmcs;
 u_int16_t ni_associd;
 u_int16_t ni_txseq;
 u_int16_t ni_rxseq;
 u_int16_t ni_qos_txseqs[16];
 u_int16_t ni_qos_rxseqs[16];
 int ni_fails;
 int ni_inact;
 int ni_txrate;
 int ni_state;
 u_int16_t ni_flags;
};
struct ieee80211_tree { struct rb_tree rbh_root; };
static __inline void
ieee80211_node_incref(struct ieee80211_node *ni)
{
 int s;
 s = _splraise(6);
 ni->ni_refcnt++;
 _splx(s);
}
static __inline u_int
ieee80211_node_decref(struct ieee80211_node *ni)
{
 u_int refcnt;
 int s;
 s = _splraise(6);
 refcnt = --ni->ni_refcnt;
 _splx(s);
 return refcnt;
}
static __inline struct ieee80211_node *
ieee80211_ref_node(struct ieee80211_node *ni)
{
 ieee80211_node_incref(ni);
 return ni;
}
static __inline void
ieee80211_unref_node(struct ieee80211_node **ni)
{
 ieee80211_node_decref(*ni);
 *ni = ((void *)0);
}
struct ieee80211com;
extern void ieee80211_node_attach(struct ifnet *);
extern void ieee80211_node_lateattach(struct ifnet *);
extern void ieee80211_node_detach(struct ifnet *);
extern void ieee80211_begin_scan(struct ifnet *);
extern void ieee80211_next_scan(struct ifnet *);
extern void ieee80211_end_scan(struct ifnet *);
extern void ieee80211_reset_scan(struct ifnet *);
extern struct ieee80211_node *ieee80211_alloc_node(struct ieee80211com *,
  const u_int8_t *);
extern struct ieee80211_node *ieee80211_dup_bss(struct ieee80211com *,
  const u_int8_t *);
extern struct ieee80211_node *ieee80211_find_node(struct ieee80211com *,
  const u_int8_t *);
extern struct ieee80211_node *ieee80211_find_rxnode(struct ieee80211com *,
  const struct ieee80211_frame *);
extern struct ieee80211_node *ieee80211_find_txnode(struct ieee80211com *,
  const u_int8_t *);
extern struct ieee80211_node *
  ieee80211_find_node_for_beacon(struct ieee80211com *,
  const u_int8_t *, const struct ieee80211_channel *,
  const char *, u_int8_t);
extern void ieee80211_release_node(struct ieee80211com *,
  struct ieee80211_node *);
extern void ieee80211_free_allnodes(struct ieee80211com *);
typedef void ieee80211_iter_func(void *, struct ieee80211_node *);
extern void ieee80211_iterate_nodes(struct ieee80211com *ic,
  ieee80211_iter_func *, void *);
extern void ieee80211_clean_cached(struct ieee80211com *ic);
extern void ieee80211_clean_nodes(struct ieee80211com *, int);
void ieee80211_setup_htcaps(struct ieee80211_node *, const uint8_t *,
    uint8_t);
void ieee80211_clear_htcaps(struct ieee80211_node *);
int ieee80211_setup_htop(struct ieee80211_node *, const uint8_t *,
    uint8_t);
extern int ieee80211_setup_rates(struct ieee80211com *,
     struct ieee80211_node *, const u_int8_t *, const u_int8_t *, int);
extern int ieee80211_iserp_sta(const struct ieee80211_node *);
extern void ieee80211_count_longslotsta(void *, struct ieee80211_node *);
extern void ieee80211_count_nonerpsta(void *, struct ieee80211_node *);
extern void ieee80211_count_pssta(void *, struct ieee80211_node *);
extern void ieee80211_count_rekeysta(void *, struct ieee80211_node *);
extern void ieee80211_node_join(struct ieee80211com *,
  struct ieee80211_node *, int);
extern void ieee80211_node_leave(struct ieee80211com *,
  struct ieee80211_node *);
extern int ieee80211_match_bss(struct ieee80211com *,
  struct ieee80211_node *);
extern void ieee80211_create_ibss(struct ieee80211com* ,
  struct ieee80211_channel *);
extern void ieee80211_notify_dtim(struct ieee80211com *);
extern void ieee80211_set_tim(struct ieee80211com *, int, int);
extern int ieee80211_node_cmp(const struct ieee80211_node *,
  const struct ieee80211_node *);
extern const struct rb_type *const ieee80211_tree_RBT_TYPE; __attribute__((__unused__)) static inline void ieee80211_tree_RBT_INIT(struct ieee80211_tree *head) { _rb_init(&head->rbh_root); } __attribute__((__unused__)) static inline struct ieee80211_node * ieee80211_tree_RBT_INSERT(struct ieee80211_tree *head, struct ieee80211_node *elm) { return _rb_insert(ieee80211_tree_RBT_TYPE, &head->rbh_root, elm); } __attribute__((__unused__)) static inline struct ieee80211_node * ieee80211_tree_RBT_REMOVE(struct ieee80211_tree *head, struct ieee80211_node *elm) { return _rb_remove(ieee80211_tree_RBT_TYPE, &head->rbh_root, elm); } __attribute__((__unused__)) static inline struct ieee80211_node * ieee80211_tree_RBT_FIND(struct ieee80211_tree *head, const struct ieee80211_node *key) { return _rb_find(ieee80211_tree_RBT_TYPE, &head->rbh_root, key); } __attribute__((__unused__)) static inline struct ieee80211_node * ieee80211_tree_RBT_NFIND(struct ieee80211_tree *head, const struct ieee80211_node *key) { return _rb_nfind(ieee80211_tree_RBT_TYPE, &head->rbh_root, key); } __attribute__((__unused__)) static inline struct ieee80211_node * ieee80211_tree_RBT_ROOT(struct ieee80211_tree *head) { return _rb_root(ieee80211_tree_RBT_TYPE, &head->rbh_root); } __attribute__((__unused__)) static inline int ieee80211_tree_RBT_EMPTY(struct ieee80211_tree *head) { return _rb_empty(&head->rbh_root); } __attribute__((__unused__)) static inline struct ieee80211_node * ieee80211_tree_RBT_MIN(struct ieee80211_tree *head) { return _rb_min(ieee80211_tree_RBT_TYPE, &head->rbh_root); } __attribute__((__unused__)) static inline struct ieee80211_node * ieee80211_tree_RBT_MAX(struct ieee80211_tree *head) { return _rb_max(ieee80211_tree_RBT_TYPE, &head->rbh_root); } __attribute__((__unused__)) static inline struct ieee80211_node * ieee80211_tree_RBT_NEXT(struct ieee80211_node *elm) { return _rb_next(ieee80211_tree_RBT_TYPE, elm); } __attribute__((__unused__)) static inline struct ieee80211_node * ieee80211_tree_RBT_PREV(struct ieee80211_node *elm) { return _rb_prev(ieee80211_tree_RBT_TYPE, elm); } __attribute__((__unused__)) static inline struct ieee80211_node * ieee80211_tree_RBT_LEFT(struct ieee80211_node *elm) { return _rb_left(ieee80211_tree_RBT_TYPE, elm); } __attribute__((__unused__)) static inline struct ieee80211_node * ieee80211_tree_RBT_RIGHT(struct ieee80211_node *elm) { return _rb_right(ieee80211_tree_RBT_TYPE, elm); } __attribute__((__unused__)) static inline struct ieee80211_node * ieee80211_tree_RBT_PARENT(struct ieee80211_node *elm) { return _rb_parent(ieee80211_tree_RBT_TYPE, elm); } __attribute__((__unused__)) static inline void ieee80211_tree_RBT_SET_LEFT(struct ieee80211_node *elm, struct ieee80211_node *left) { return _rb_set_left(ieee80211_tree_RBT_TYPE, elm, left); } __attribute__((__unused__)) static inline void ieee80211_tree_RBT_SET_RIGHT(struct ieee80211_node *elm, struct ieee80211_node *right) { return _rb_set_right(ieee80211_tree_RBT_TYPE, elm, right); } __attribute__((__unused__)) static inline void ieee80211_tree_RBT_SET_PARENT(struct ieee80211_node *elm, struct ieee80211_node *parent) { return _rb_set_parent(ieee80211_tree_RBT_TYPE, elm, parent); } __attribute__((__unused__)) static inline void ieee80211_tree_RBT_POISON(struct ieee80211_node *elm, unsigned long poison) { return _rb_poison(ieee80211_tree_RBT_TYPE, elm, poison); } __attribute__((__unused__)) static inline int ieee80211_tree_RBT_CHECK(struct ieee80211_node *elm, unsigned long poison) { return _rb_check(ieee80211_tree_RBT_TYPE, elm, poison); };
enum ieee80211_state {
 IEEE80211_S_INIT = 0,
 IEEE80211_S_SCAN = 1,
 IEEE80211_S_AUTH = 2,
 IEEE80211_S_ASSOC = 3,
 IEEE80211_S_RUN = 4
};
extern const char * const ieee80211_mgt_subtype_name[];
extern const char * const ieee80211_state_name[(IEEE80211_S_RUN+1)];
extern const char * const ieee80211_phymode_name[];
extern void ieee80211_proto_attach(struct ifnet *);
extern void ieee80211_proto_detach(struct ifnet *);
struct ieee80211_node;
struct ieee80211_rxinfo;
struct ieee80211_rsnparams;
extern void ieee80211_set_link_state(struct ieee80211com *, int);
extern u_int ieee80211_get_hdrlen(const struct ieee80211_frame *);
extern void ieee80211_input(struct ifnet *, struct mbuf *,
  struct ieee80211_node *, struct ieee80211_rxinfo *);
extern int ieee80211_output(struct ifnet *, struct mbuf *, struct sockaddr *,
  struct rtentry *);
extern void ieee80211_recv_mgmt(struct ieee80211com *, struct mbuf *,
  struct ieee80211_node *, struct ieee80211_rxinfo *, int);
extern int ieee80211_send_mgmt(struct ieee80211com *, struct ieee80211_node *,
  int, int, int);
extern void ieee80211_eapol_key_input(struct ieee80211com *, struct mbuf *,
  struct ieee80211_node *);
extern struct mbuf *ieee80211_encap(struct ifnet *, struct mbuf *,
  struct ieee80211_node **);
extern struct mbuf *ieee80211_get_rts(struct ieee80211com *,
  const struct ieee80211_frame *, u_int16_t);
extern struct mbuf *ieee80211_get_cts_to_self(struct ieee80211com *,
  u_int16_t);
extern struct mbuf *ieee80211_beacon_alloc(struct ieee80211com *,
  struct ieee80211_node *);
extern int ieee80211_save_ie(const u_int8_t *, u_int8_t **);
extern void ieee80211_eapol_timeout(void *);
extern int ieee80211_send_4way_msg1(struct ieee80211com *,
  struct ieee80211_node *);
extern int ieee80211_send_4way_msg2(struct ieee80211com *,
  struct ieee80211_node *, const u_int8_t *,
  const struct ieee80211_ptk *);
extern int ieee80211_send_4way_msg3(struct ieee80211com *,
  struct ieee80211_node *);
extern int ieee80211_send_4way_msg4(struct ieee80211com *,
  struct ieee80211_node *);
extern int ieee80211_send_group_msg1(struct ieee80211com *,
  struct ieee80211_node *);
extern int ieee80211_send_group_msg2(struct ieee80211com *,
  struct ieee80211_node *, const struct ieee80211_key *);
extern int ieee80211_send_eapol_key_req(struct ieee80211com *,
  struct ieee80211_node *, u_int16_t, u_int64_t);
extern int ieee80211_pwrsave(struct ieee80211com *, struct mbuf *,
  struct ieee80211_node *);
extern enum ieee80211_edca_ac ieee80211_up_to_ac(struct ieee80211com *, int);
extern u_int8_t *ieee80211_add_capinfo(u_int8_t *, struct ieee80211com *,
  const struct ieee80211_node *);
extern u_int8_t *ieee80211_add_ssid(u_int8_t *, const u_int8_t *, u_int);
extern u_int8_t *ieee80211_add_rates(u_int8_t *,
  const struct ieee80211_rateset *);
extern u_int8_t *ieee80211_add_fh_params(u_int8_t *, struct ieee80211com *,
  const struct ieee80211_node *);
extern u_int8_t *ieee80211_add_ds_params(u_int8_t *, struct ieee80211com *,
  const struct ieee80211_node *);
extern u_int8_t *ieee80211_add_tim(u_int8_t *, struct ieee80211com *);
extern u_int8_t *ieee80211_add_ibss_params(u_int8_t *,
  const struct ieee80211_node *);
extern u_int8_t *ieee80211_add_edca_params(u_int8_t *, struct ieee80211com *);
extern u_int8_t *ieee80211_add_erp(u_int8_t *, struct ieee80211com *);
extern u_int8_t *ieee80211_add_qos_capability(u_int8_t *,
  struct ieee80211com *);
extern u_int8_t *ieee80211_add_rsn(u_int8_t *, struct ieee80211com *,
  const struct ieee80211_node *);
extern u_int8_t *ieee80211_add_wpa(u_int8_t *, struct ieee80211com *,
  const struct ieee80211_node *);
extern u_int8_t *ieee80211_add_xrates(u_int8_t *,
  const struct ieee80211_rateset *);
extern u_int8_t *ieee80211_add_htcaps(u_int8_t *, struct ieee80211com *);
extern u_int8_t *ieee80211_add_htop(u_int8_t *, struct ieee80211com *);
extern u_int8_t *ieee80211_add_tie(u_int8_t *, u_int8_t, u_int32_t);
extern int ieee80211_parse_rsn(struct ieee80211com *, const u_int8_t *,
  struct ieee80211_rsnparams *);
extern int ieee80211_parse_wpa(struct ieee80211com *, const u_int8_t *,
  struct ieee80211_rsnparams *);
extern void ieee80211_print_essid(const u_int8_t *, int);
extern int ieee80211_ibss_merge(struct ieee80211com *,
  struct ieee80211_node *, u_int64_t);
extern void ieee80211_reset_erp(struct ieee80211com *);
extern void ieee80211_set_shortslottime(struct ieee80211com *, int);
extern void ieee80211_auth_open(struct ieee80211com *,
     const struct ieee80211_frame *, struct ieee80211_node *,
     struct ieee80211_rxinfo *rs, u_int16_t, u_int16_t);
extern void ieee80211_gtk_rekey_timeout(void *);
extern int ieee80211_keyrun(struct ieee80211com *, u_int8_t *);
extern void ieee80211_setkeys(struct ieee80211com *);
extern void ieee80211_setkeysdone(struct ieee80211com *);
extern void ieee80211_sa_query_timeout(void *);
extern void ieee80211_sa_query_request(struct ieee80211com *,
     struct ieee80211_node *);
extern void ieee80211_ht_negotiate(struct ieee80211com *,
    struct ieee80211_node *);
extern void ieee80211_tx_ba_timeout(void *);
extern void ieee80211_rx_ba_timeout(void *);
extern int ieee80211_addba_request(struct ieee80211com *,
     struct ieee80211_node *, u_int16_t, u_int8_t);
extern void ieee80211_delba_request(struct ieee80211com *,
     struct ieee80211_node *, u_int16_t, u_int8_t, u_int8_t);
extern void ieee80211_addba_req_accept(struct ieee80211com *,
     struct ieee80211_node *, uint8_t);
extern void ieee80211_addba_req_refuse(struct ieee80211com *,
     struct ieee80211_node *, uint8_t);
enum ieee80211_phytype {
 IEEE80211_T_DS,
 IEEE80211_T_OFDM,
 IEEE80211_T_XR
};
enum ieee80211_phymode {
 IEEE80211_MODE_AUTO = 0,
 IEEE80211_MODE_11A = 1,
 IEEE80211_MODE_11B = 2,
 IEEE80211_MODE_11G = 3,
 IEEE80211_MODE_11N = 4,
};
enum ieee80211_opmode {
 IEEE80211_M_STA = 1,
 IEEE80211_M_IBSS = 0,
 IEEE80211_M_AHDEMO = 3,
 IEEE80211_M_HOSTAP = 6,
 IEEE80211_M_MONITOR = 8
};
enum ieee80211_protmode {
 IEEE80211_PROT_NONE = 0,
 IEEE80211_PROT_CTSONLY = 1,
 IEEE80211_PROT_RTSCTS = 2
};
struct ieee80211_channel {
 u_int16_t ic_freq;
 u_int16_t ic_flags;
};
struct ieee80211_edca_ac_params {
 u_int8_t ac_ecwmin;
 u_int8_t ac_ecwmax;
 u_int8_t ac_aifsn;
 u_int16_t ac_txoplimit;
 u_int8_t ac_acm;
};
extern const struct ieee80211_edca_ac_params
     ieee80211_edca_table[(IEEE80211_MODE_11N+1)][4];
extern const struct ieee80211_edca_ac_params
     ieee80211_qap_edca_table[(IEEE80211_MODE_11N+1)][4];
struct ieee80211_defrag {
 struct timeout df_to;
 struct mbuf *df_m;
 u_int16_t df_seq;
 u_int8_t df_frag;
};
struct ieee80211com {
 struct arpcom ic_ac;
 struct { struct ieee80211com *le_next; struct ieee80211com **le_prev; } ic_list;
 void (*ic_recv_mgmt)(struct ieee80211com *,
        struct mbuf *, struct ieee80211_node *,
        struct ieee80211_rxinfo *, int);
 int (*ic_send_mgmt)(struct ieee80211com *,
        struct ieee80211_node *, int, int, int);
 int (*ic_newstate)(struct ieee80211com *,
        enum ieee80211_state, int);
 void (*ic_newassoc)(struct ieee80211com *,
        struct ieee80211_node *, int);
 void (*ic_node_leave)(struct ieee80211com *,
        struct ieee80211_node *);
 void (*ic_updateslot)(struct ieee80211com *);
 void (*ic_updateedca)(struct ieee80211com *);
 void (*ic_set_tim)(struct ieee80211com *, int, int);
 int (*ic_set_key)(struct ieee80211com *,
        struct ieee80211_node *,
        struct ieee80211_key *);
 void (*ic_delete_key)(struct ieee80211com *,
        struct ieee80211_node *,
        struct ieee80211_key *);
 int (*ic_ampdu_tx_start)(struct ieee80211com *,
        struct ieee80211_node *, u_int8_t);
 void (*ic_ampdu_tx_stop)(struct ieee80211com *,
        struct ieee80211_node *, u_int8_t);
 int (*ic_ampdu_rx_start)(struct ieee80211com *,
        struct ieee80211_node *, u_int8_t);
 void (*ic_ampdu_rx_stop)(struct ieee80211com *,
        struct ieee80211_node *, u_int8_t);
 void (*ic_update_htprot)(struct ieee80211com *,
     struct ieee80211_node *);
 u_int8_t ic_myaddr[6];
 struct ieee80211_rateset ic_sup_rates[(IEEE80211_MODE_11N+1)];
 struct ieee80211_channel ic_channels[255 +1];
 u_char ic_chan_avail[(((255) + ((8) - 1)) / (8))];
 u_char ic_chan_active[(((255) + ((8) - 1)) / (8))];
 u_char ic_chan_scan[(((255) + ((8) - 1)) / (8))];
 struct mbuf_queue ic_mgtq;
 struct mbuf_queue ic_pwrsaveq;
 u_int ic_scan_lock;
 u_int8_t ic_scan_count;
 u_int32_t ic_flags;
 u_int32_t ic_caps;
 u_int16_t ic_modecaps;
 u_int16_t ic_curmode;
 enum ieee80211_phytype ic_phytype;
 enum ieee80211_opmode ic_opmode;
 enum ieee80211_state ic_state;
 u_int32_t *ic_aid_bitmap;
 u_int16_t ic_max_aid;
 enum ieee80211_protmode ic_protmode;
 struct ifmedia ic_media;
 caddr_t ic_rawbpf;
 struct ieee80211_node *ic_bss;
 struct ieee80211_channel *ic_ibss_chan;
 int ic_fixed_rate;
 u_int16_t ic_rtsthreshold;
 u_int16_t ic_fragthreshold;
 u_int ic_scangen;
 struct ieee80211_node *(*ic_node_alloc)(struct ieee80211com *);
 void (*ic_node_free)(struct ieee80211com *,
     struct ieee80211_node *);
 void (*ic_node_copy)(struct ieee80211com *,
     struct ieee80211_node *,
     const struct ieee80211_node *);
 u_int8_t (*ic_node_getrssi)(struct ieee80211com *,
     const struct ieee80211_node *);
 u_int8_t ic_max_rssi;
 struct ieee80211_tree ic_tree;
 int ic_nnodes;
 int ic_max_nnodes;
 u_int16_t ic_lintval;
 int16_t ic_txpower;
 int ic_bmissthres;
 int ic_mgt_timer;
 struct timeout ic_inact_timeout;
 struct timeout ic_node_cache_timeout;
 int ic_des_esslen;
 u_int8_t ic_des_essid[32];
 struct ieee80211_channel *ic_des_chan;
 u_int8_t ic_des_bssid[6];
 struct ieee80211_key ic_nw_keys[6];
 int ic_def_txkey;
 int ic_igtk_kid;
 u_int32_t ic_iv;
 struct ieee80211_stats ic_stats;
 struct timeval ic_last_merge_print;
 struct ieee80211_edca_ac_params ic_edca_ac[4];
 u_int ic_edca_updtcount;
 u_int16_t ic_tid_noack;
 u_int8_t ic_globalcnt[32];
 u_int8_t ic_nonce[32];
 u_int8_t ic_psk[32];
 struct timeout ic_rsn_timeout;
 int ic_tkip_micfail;
 u_int64_t ic_tkip_micfail_last_tsc;
 struct timeout ic_tkip_micfail_timeout;
 struct { struct ieee80211_pmk *tqh_first; struct ieee80211_pmk **tqh_last; } ic_pmksa;
 u_int ic_rsnprotos;
 u_int ic_rsnakms;
 u_int ic_rsnciphers;
 enum ieee80211_cipher ic_rsngroupcipher;
 enum ieee80211_cipher ic_rsngroupmgmtcipher;
 struct ieee80211_defrag ic_defrag[3];
 int ic_defrag_cur;
 u_int8_t *ic_tim_bitmap;
 u_int ic_tim_len;
 u_int ic_tim_mcast_pending;
 u_int ic_dtim_period;
 u_int ic_dtim_count;
 u_int32_t ic_txbfcaps;
 u_int16_t ic_htcaps;
 u_int8_t ic_ampdu_params;
 u_int8_t ic_sup_mcs[(((80) + ((8) - 1)) / (8))];
 u_int16_t ic_max_rxrate;
 u_int8_t ic_tx_mcs_set;
 u_int16_t ic_htxcaps;
 u_int8_t ic_aselcaps;
 u_int8_t ic_dialog_token;
 int ic_fixed_mcs;
 struct { struct ieee80211_vap *lh_first; } ic_vaps;
};
struct ieee80211com_head { struct ieee80211com *lh_first; };
extern struct ieee80211com_head ieee80211com_head;
void ieee80211_ifattach(struct ifnet *);
void ieee80211_ifdetach(struct ifnet *);
void ieee80211_channel_init(struct ifnet *);
void ieee80211_media_init(struct ifnet *, ifm_change_cb_t, ifm_stat_cb_t);
int ieee80211_media_change(struct ifnet *);
void ieee80211_media_status(struct ifnet *, struct ifmediareq *);
int ieee80211_ioctl(struct ifnet *, u_long, caddr_t);
int ieee80211_get_rate(struct ieee80211com *);
void ieee80211_watchdog(struct ifnet *);
int ieee80211_fix_rate(struct ieee80211com *, struct ieee80211_node *, int);
uint64_t ieee80211_rate2media(struct ieee80211com *, int,
      enum ieee80211_phymode);
int ieee80211_media2rate(uint64_t);
uint64_t ieee80211_mcs2media(struct ieee80211com *, int,
      enum ieee80211_phymode);
int ieee80211_media2mcs(uint64_t);
u_int8_t ieee80211_rate2plcp(u_int8_t, enum ieee80211_phymode);
u_int8_t ieee80211_plcp2rate(u_int8_t, enum ieee80211_phymode);
u_int ieee80211_mhz2ieee(u_int, u_int);
u_int ieee80211_chan2ieee(struct ieee80211com *,
  const struct ieee80211_channel *);
u_int ieee80211_ieee2mhz(u_int, u_int);
int ieee80211_min_basic_rate(struct ieee80211com *);
int ieee80211_max_basic_rate(struct ieee80211com *);
int ieee80211_setmode(struct ieee80211com *, enum ieee80211_phymode);
enum ieee80211_phymode ieee80211_next_mode(struct ifnet *);
enum ieee80211_phymode ieee80211_chan2mode(struct ieee80211com *,
  const struct ieee80211_channel *);
extern int ieee80211_cache_size;
struct ieee80211_amrr {
 u_int amrr_min_success_threshold;
 u_int amrr_max_success_threshold;
};
struct ieee80211_amrr_node {
 u_int amn_success;
 u_int amn_recovery;
 u_int amn_success_threshold;
 u_int amn_txcnt;
 u_int amn_retrycnt;
};
void ieee80211_amrr_node_init(const struct ieee80211_amrr *,
     struct ieee80211_amrr_node *);
void ieee80211_amrr_choose(struct ieee80211_amrr *, struct ieee80211_node *,
     struct ieee80211_amrr_node *);
struct ieee80211_radiotap_header {
 u_int8_t it_version;
 u_int8_t it_pad;
 u_int16_t it_len;
 u_int32_t it_present;
} __attribute__((__packed__));
enum ieee80211_radiotap_type {
 IEEE80211_RADIOTAP_TSFT = 0,
 IEEE80211_RADIOTAP_FLAGS = 1,
 IEEE80211_RADIOTAP_RATE = 2,
 IEEE80211_RADIOTAP_CHANNEL = 3,
 IEEE80211_RADIOTAP_FHSS = 4,
 IEEE80211_RADIOTAP_DBM_ANTSIGNAL = 5,
 IEEE80211_RADIOTAP_DBM_ANTNOISE = 6,
 IEEE80211_RADIOTAP_LOCK_QUALITY = 7,
 IEEE80211_RADIOTAP_TX_ATTENUATION = 8,
 IEEE80211_RADIOTAP_DB_TX_ATTENUATION = 9,
 IEEE80211_RADIOTAP_DBM_TX_POWER = 10,
 IEEE80211_RADIOTAP_ANTENNA = 11,
 IEEE80211_RADIOTAP_DB_ANTSIGNAL = 12,
 IEEE80211_RADIOTAP_DB_ANTNOISE = 13,
 IEEE80211_RADIOTAP_FCS = 14,
 IEEE80211_RADIOTAP_HWQUEUE = 15,
 IEEE80211_RADIOTAP_RSSI = 16,
 IEEE80211_RADIOTAP_EXT = 31
};
struct rt2661_rx_radiotap_header {
 struct ieee80211_radiotap_header wr_ihdr;
 uint64_t wr_tsf;
 uint8_t wr_flags;
 uint8_t wr_rate;
 uint16_t wr_chan_freq;
 uint16_t wr_chan_flags;
 uint8_t wr_antsignal;
} __attribute__((__packed__));
struct rt2661_tx_radiotap_header {
 struct ieee80211_radiotap_header wt_ihdr;
 uint8_t wt_flags;
 uint8_t wt_rate;
 uint16_t wt_chan_freq;
 uint16_t wt_chan_flags;
} __attribute__((__packed__));
struct rt2661_tx_data {
 bus_dmamap_t map;
 struct mbuf *m;
 struct ieee80211_node *ni;
};
struct rt2661_tx_ring {
 bus_dmamap_t map;
 bus_dma_segment_t seg;
 bus_addr_t physaddr;
 struct rt2661_tx_desc *desc;
 struct rt2661_tx_data *data;
 int count;
 int queued;
 int cur;
 int next;
 int stat;
};
struct rt2661_rx_data {
 bus_dmamap_t map;
 struct mbuf *m;
};
struct rt2661_rx_ring {
 bus_dmamap_t map;
 bus_dma_segment_t seg;
 bus_addr_t physaddr;
 struct rt2661_rx_desc *desc;
 struct rt2661_rx_data *data;
 int count;
 int cur;
 int next;
};
struct rt2661_amrr_node {
 struct ieee80211_amrr_node amn;
 struct rt2661_node *rn;
 u_int8_t id;
 struct { struct rt2661_amrr_node *tqe_next; struct rt2661_amrr_node **tqe_prev; } entry;
};
struct rt2661_node {
 struct ieee80211_node ni;
 struct rt2661_amrr_node *amn;
};
struct rt2661_softc {
 struct device sc_dev;
 struct ieee80211com sc_ic;
 int (*sc_newstate)(struct ieee80211com *,
         enum ieee80211_state, int);
 struct ieee80211_amrr amrr;
 int (*sc_enable)(struct rt2661_softc *);
 void (*sc_disable)(struct rt2661_softc *);
 bus_dma_tag_t sc_dmat;
 bus_space_tag_t sc_st;
 bus_space_handle_t sc_sh;
 struct timeout scan_to;
 struct timeout amrr_to;
 int sc_id;
 int sc_flags;
 int sc_tx_timer;
 struct ieee80211_channel *sc_curchan;
 u_char *ucode;
 size_t ucsize;
 uint8_t rf_rev;
 uint8_t rfprog;
 uint8_t rffreq;
 struct rt2661_tx_ring txq[5];
 struct rt2661_tx_ring mgtq;
 struct rt2661_rx_ring rxq;
 uint32_t rf_regs[4];
 int8_t txpow[38];
 struct {
  uint8_t reg64;
  uint8_t val;
 } bbp_prom[16];
 int hw_radio;
 int rx_ant;
 int tx_ant;
 int nb_ant;
 int ext_2ghz_lna;
 int ext_5ghz_lna;
 int rssi_2ghz_corr;
 int rssi_5ghz_corr;
 int ncalls;
 int avg_rssi;
 int sifs;
 uint32_t erp_csr;
 uint8_t bbp18;
 uint8_t bbp21;
 uint8_t bbp22;
 uint8_t bbp16;
 uint8_t bbp17;
 uint8_t bbp64;
 caddr_t sc_drvbpf;
 union {
  struct rt2661_rx_radiotap_header th;
  uint8_t pad[64];
 } sc_rxtapu;
 int sc_rxtap_len;
 union {
  struct rt2661_tx_radiotap_header th;
  uint8_t pad[64];
 } sc_txtapu;
 int sc_txtap_len;
 void (*sc_node_free)(struct ieee80211com *,
         struct ieee80211_node *);
 struct { struct rt2661_amrr_node *tqh_first; struct rt2661_amrr_node **tqh_last; } amn;
 u_int8_t amn_count;
};
int rt2661_attach(void *, int);
int rt2661_detach(void *);
void rt2661_suspend(void *);
void rt2661_wakeup(void *);
int rt2661_intr(void *);
struct rt2661_tx_desc {
 uint32_t flags;
 uint16_t wme;
 uint16_t xflags;
 uint8_t plcp_signal;
 uint8_t plcp_service;
 uint8_t plcp_length_lo;
 uint8_t plcp_length_hi;
 uint32_t iv;
 uint32_t eiv;
 uint8_t offset;
 uint8_t priv_data;
 uint8_t txpower;
 uint8_t reserved1;
 uint32_t addr[5];
 uint16_t len[5];
 uint16_t reserved2;
} __attribute__((__packed__));
struct rt2661_rx_desc {
 uint32_t flags;
 uint8_t rate;
 uint8_t rssi;
 uint8_t reserved1;
 uint8_t offset;
 uint32_t iv;
 uint32_t eiv;
 uint32_t reserved2;
 uint32_t physaddr;
 uint32_t reserved3[10];
} __attribute__((__packed__));
static __inline uint32_t
RAL_READ(struct rt2661_softc *sc, bus_size_t reg64)
{
 bus_space_read_4(sc->sc_st, sc->sc_sh, 0x3000);
 return bus_space_read_4(sc->sc_st, sc->sc_sh, reg64);
}
static __inline void
RAL_READ_REGION_4(struct rt2661_softc *sc, bus_size_t offset,
    uint32_t *datap, bus_size_t count)
{
 for (; count > 0; count--, datap++, offset += 4)
  *datap = RAL_READ(sc, offset);
}
static __inline void
RAL_WRITE(struct rt2661_softc *sc, bus_size_t reg64, uint32_t val)
{
 bus_space_read_4(sc->sc_st, sc->sc_sh, 0x3000);
 bus_space_write_4(sc->sc_st, sc->sc_sh, reg64, val);
}
static __inline void
RAL_WRITE_1(struct rt2661_softc *sc, bus_size_t reg64, uint8_t val)
{
 bus_space_read_4(sc->sc_st, sc->sc_sh, 0x3000);
 bus_space_write_1(sc->sc_st, sc->sc_sh, reg64, val);
}
static __inline void
RAL_WRITE_REGION_1(struct rt2661_softc *sc, bus_size_t offset,
    const uint8_t *datap, bus_size_t count)
{
 for (; count > 0; count--, datap++, offset++)
  RAL_WRITE_1(sc, offset, *datap);
}
void rt2661_attachhook(struct device *);
int rt2661_alloc_tx_ring(struct rt2661_softc *,
      struct rt2661_tx_ring *, int);
void rt2661_reset_tx_ring(struct rt2661_softc *,
      struct rt2661_tx_ring *);
void rt2661_free_tx_ring(struct rt2661_softc *,
      struct rt2661_tx_ring *);
int rt2661_alloc_rx_ring(struct rt2661_softc *,
      struct rt2661_rx_ring *, int);
void rt2661_reset_rx_ring(struct rt2661_softc *,
      struct rt2661_rx_ring *);
void rt2661_free_rx_ring(struct rt2661_softc *,
      struct rt2661_rx_ring *);
struct ieee80211_node *rt2661_node_alloc(struct ieee80211com *);
void rt2661_node_free(struct ieee80211com *,
      struct ieee80211_node *);
int rt2661_media_change(struct ifnet *);
void rt2661_next_scan(void *);
void rt2661_iter_func(void *, struct ieee80211_node *);
void rt2661_updatestats(void *);
void rt2661_newassoc(struct ieee80211com *, struct ieee80211_node *,
      int);
int rt2661_newstate(struct ieee80211com *, enum ieee80211_state,
      int);
uint16_t rt2661_eeprom_read(struct rt2661_softc *, uint8_t);
void rt2661_tx_intr(struct rt2661_softc *);
void rt2661_tx_dma_intr(struct rt2661_softc *,
      struct rt2661_tx_ring *);
void rt2661_rx_intr(struct rt2661_softc *);
void rt2661_mcu_beacon_expire(struct rt2661_softc *);
void rt2661_mcu_wakeup(struct rt2661_softc *);
void rt2661_mcu_cmd_intr(struct rt2661_softc *);
int rt2661_intr(void *);
uint8_t rt2661_rxrate(const struct rt2661_rx_desc *);
int rt2661_ack_rate(struct ieee80211com *, int);
uint16_t rt2661_txtime(int, int, uint32_t);
uint8_t rt2661_plcp_signal(int);
void rt2661_setup_tx_desc(struct rt2661_softc *,
      struct rt2661_tx_desc *, uint32_t, uint16_t, int, int,
      const bus_dma_segment_t *, int, int, u_int8_t);
int rt2661_tx_mgt(struct rt2661_softc *, struct mbuf *,
      struct ieee80211_node *);
int rt2661_tx_data(struct rt2661_softc *, struct mbuf *,
      struct ieee80211_node *, int);
void rt2661_start(struct ifnet *);
void rt2661_watchdog(struct ifnet *);
int rt2661_ioctl(struct ifnet *, u_long, caddr_t);
void rt2661_bbp_write(struct rt2661_softc *, uint8_t, uint8_t);
uint8_t rt2661_bbp_read(struct rt2661_softc *, uint8_t);
void rt2661_rf_write(struct rt2661_softc *, uint8_t, uint32_t);
int rt2661_tx_cmd(struct rt2661_softc *, uint8_t, uint16_t);
void rt2661_select_antenna(struct rt2661_softc *);
void rt2661_enable_mrr(struct rt2661_softc *);
void rt2661_set_txpreamble(struct rt2661_softc *);
void rt2661_set_basicrates(struct rt2661_softc *);
void rt2661_select_band(struct rt2661_softc *,
      struct ieee80211_channel *);
void rt2661_set_chan(struct rt2661_softc *,
      struct ieee80211_channel *);
void rt2661_set_bssid(struct rt2661_softc *, const uint8_t *);
void rt2661_set_macaddr(struct rt2661_softc *, const uint8_t *);
void rt2661_update_promisc(struct rt2661_softc *);
void rt2661_updateslot(struct ieee80211com *);
void rt2661_set_slottime(struct rt2661_softc *);
const char *rt2661_get_rf(int);
void rt2661_read_eeprom(struct rt2661_softc *);
int rt2661_bbp_init(struct rt2661_softc *);
int rt2661_init(struct ifnet *);
void rt2661_stop(struct ifnet *, int);
int rt2661_load_microcode(struct rt2661_softc *);
void rt2661_rx_tune(struct rt2661_softc *);
int rt2661_prepare_beacon(struct rt2661_softc *);
void rt2661_enable_tsf_sync(struct rt2661_softc *);
int rt2661_get_rssi(struct rt2661_softc *, uint8_t);
struct rt2661_amrr_node *rt2661_amrr_node_alloc(struct ieee80211com *,
      struct rt2661_node *);
void rt2661_amrr_node_free(struct rt2661_softc *,
      struct rt2661_amrr_node *);
void rt2661_amrr_node_free_all(struct rt2661_softc *);
void rt2661_amrr_node_free_unused(struct rt2661_softc *);
struct rt2661_amrr_node *rt2661_amrr_node_find(struct rt2661_softc *,
      u_int8_t);
static const struct {
 uint32_t reg64;
 uint32_t val;
} rt2661_def_mac[] = {
 { 0x3040, 0x0000b032 }, { 0x3044, 0x9eb39eb3 }, { 0x3048, 0x8a8b8c8d }, { 0x304c, 0x00858687 }, { 0x305c, 0x2e31353b }, { 0x3060, 0x2a2a2a2c }, { 0x307c, 0x0000000f }, { 0x3018, 0x00000fff }, { 0x3020, 0x016c030a }, { 0x3028, 0x00000718 }, { 0x3030, 0x00000004 }, { 0x3034, 0x0000e000 }, { 0x30a0, 0x00000000 }, { 0x30a4, 0x00000000 }, { 0x30b4, 0x00000000 }, { 0x3084, 0x000023b0 }, { 0x3094, 0x060a100c }, { 0x3098, 0x00080606 }, { 0x309c, 0x00000a08 }, { 0x3460, 0x3cca4808 }, { 0x3420, 0x00002273 }, { 0x3424, 0x00002344 }, { 0x3428, 0x000034aa }, { 0x3484, 0x00000200 }, { 0x2104, 0xffffffff }, { 0x2c00, 0x00000000 }, { 0x2d00, 0x00000000 }, { 0x2e00, 0x00000000 }, { 0x2f00, 0x00000000 }
};
static const struct {
 uint8_t reg64;
 uint8_t val;
} rt2661_def_bbp[] = {
 { 3, 0x00 }, { 15, 0x30 }, { 17, 0x20 }, { 21, 0xc8 }, { 22, 0x38 }, { 23, 0x06 }, { 24, 0xfe }, { 25, 0x0a }, { 26, 0x0d }, { 34, 0x12 }, { 37, 0x07 }, { 39, 0xf8 }, { 41, 0x60 }, { 53, 0x10 }, { 54, 0x18 }, { 60, 0x10 }, { 61, 0x04 }, { 62, 0x04 }, { 75, 0xfe }, { 86, 0xfe }, { 88, 0xfe }, { 90, 0x0f }, { 99, 0x00 }, { 102, 0x16 }, { 107, 0x04 }
};
static const struct rfprog {
 uint8_t chan;
 uint32_t r1, r2, r3, r4;
} rt2661_rf5225_1[] = {
 { 1, 0x00b33, 0x011e1, 0x1a014, 0x30282 }, { 2, 0x00b33, 0x011e1, 0x1a014, 0x30287 }, { 3, 0x00b33, 0x011e2, 0x1a014, 0x30282 }, { 4, 0x00b33, 0x011e2, 0x1a014, 0x30287 }, { 5, 0x00b33, 0x011e3, 0x1a014, 0x30282 }, { 6, 0x00b33, 0x011e3, 0x1a014, 0x30287 }, { 7, 0x00b33, 0x011e4, 0x1a014, 0x30282 }, { 8, 0x00b33, 0x011e4, 0x1a014, 0x30287 }, { 9, 0x00b33, 0x011e5, 0x1a014, 0x30282 }, { 10, 0x00b33, 0x011e5, 0x1a014, 0x30287 }, { 11, 0x00b33, 0x011e6, 0x1a014, 0x30282 }, { 12, 0x00b33, 0x011e6, 0x1a014, 0x30287 }, { 13, 0x00b33, 0x011e7, 0x1a014, 0x30282 }, { 14, 0x00b33, 0x011e8, 0x1a014, 0x30284 }, { 36, 0x00b33, 0x01266, 0x26014, 0x30288 }, { 40, 0x00b33, 0x01268, 0x26014, 0x30280 }, { 44, 0x00b33, 0x01269, 0x26014, 0x30282 }, { 48, 0x00b33, 0x0126a, 0x26014, 0x30284 }, { 52, 0x00b33, 0x0126b, 0x26014, 0x30286 }, { 56, 0x00b33, 0x0126c, 0x26014, 0x30288 }, { 60, 0x00b33, 0x0126e, 0x26014, 0x30280 }, { 64, 0x00b33, 0x0126f, 0x26014, 0x30282 }, { 100, 0x00b33, 0x0128a, 0x2e014, 0x30280 }, { 104, 0x00b33, 0x0128b, 0x2e014, 0x30282 }, { 108, 0x00b33, 0x0128c, 0x2e014, 0x30284 }, { 112, 0x00b33, 0x0128d, 0x2e014, 0x30286 }, { 116, 0x00b33, 0x0128e, 0x2e014, 0x30288 }, { 120, 0x00b33, 0x012a0, 0x2e014, 0x30280 }, { 124, 0x00b33, 0x012a1, 0x2e014, 0x30282 }, { 128, 0x00b33, 0x012a2, 0x2e014, 0x30284 }, { 132, 0x00b33, 0x012a3, 0x2e014, 0x30286 }, { 136, 0x00b33, 0x012a4, 0x2e014, 0x30288 }, { 140, 0x00b33, 0x012a6, 0x2e014, 0x30280 }, { 149, 0x00b33, 0x012a8, 0x2e014, 0x30287 }, { 153, 0x00b33, 0x012a9, 0x2e014, 0x30289 }, { 157, 0x00b33, 0x012ab, 0x2e014, 0x30281 }, { 161, 0x00b33, 0x012ac, 0x2e014, 0x30283 }, { 165, 0x00b33, 0x012ad, 0x2e014, 0x30285 }
}, rt2661_rf5225_2[] = {
 { 1, 0x00b33, 0x011e1, 0x1a014, 0x30282 }, { 2, 0x00b33, 0x011e1, 0x1a014, 0x30287 }, { 3, 0x00b33, 0x011e2, 0x1a014, 0x30282 }, { 4, 0x00b33, 0x011e2, 0x1a014, 0x30287 }, { 5, 0x00b33, 0x011e3, 0x1a014, 0x30282 }, { 6, 0x00b33, 0x011e3, 0x1a014, 0x30287 }, { 7, 0x00b33, 0x011e4, 0x1a014, 0x30282 }, { 8, 0x00b33, 0x011e4, 0x1a014, 0x30287 }, { 9, 0x00b33, 0x011e5, 0x1a014, 0x30282 }, { 10, 0x00b33, 0x011e5, 0x1a014, 0x30287 }, { 11, 0x00b33, 0x011e6, 0x1a014, 0x30282 }, { 12, 0x00b33, 0x011e6, 0x1a014, 0x30287 }, { 13, 0x00b33, 0x011e7, 0x1a014, 0x30282 }, { 14, 0x00b33, 0x011e8, 0x1a014, 0x30284 }, { 36, 0x00b35, 0x11206, 0x26014, 0x30280 }, { 40, 0x00b34, 0x111a0, 0x26014, 0x30280 }, { 44, 0x00b34, 0x111a1, 0x26014, 0x30286 }, { 48, 0x00b34, 0x111a3, 0x26014, 0x30282 }, { 52, 0x00b34, 0x111a4, 0x26014, 0x30288 }, { 56, 0x00b34, 0x111a6, 0x26014, 0x30284 }, { 60, 0x00b34, 0x111a8, 0x26014, 0x30280 }, { 64, 0x00b34, 0x111a9, 0x26014, 0x30286 }, { 100, 0x00b35, 0x11226, 0x2e014, 0x30280 }, { 104, 0x00b35, 0x11228, 0x2e014, 0x30280 }, { 108, 0x00b35, 0x1122a, 0x2e014, 0x30280 }, { 112, 0x00b35, 0x1122c, 0x2e014, 0x30280 }, { 116, 0x00b35, 0x1122e, 0x2e014, 0x30280 }, { 120, 0x00b34, 0x111c0, 0x2e014, 0x30280 }, { 124, 0x00b34, 0x111c1, 0x2e014, 0x30286 }, { 128, 0x00b34, 0x111c3, 0x2e014, 0x30282 }, { 132, 0x00b34, 0x111c4, 0x2e014, 0x30288 }, { 136, 0x00b34, 0x111c6, 0x2e014, 0x30284 }, { 140, 0x00b34, 0x111c8, 0x2e014, 0x30280 }, { 149, 0x00b34, 0x111cb, 0x2e014, 0x30286 }, { 153, 0x00b34, 0x111cd, 0x2e014, 0x30282 }, { 157, 0x00b35, 0x11242, 0x2e014, 0x30285 }, { 161, 0x00b35, 0x11244, 0x2e014, 0x30285 }, { 165, 0x00b35, 0x11246, 0x2e014, 0x30285 }
};
int
rt2661_attach(void *xsc, int id)
{
 struct rt2661_softc *sc = xsc;
 struct ieee80211com *ic = &sc->sc_ic;
 uint32_t val;
 int error, ac, ntries;
 sc->sc_id = id;
 sc->amrr.amrr_min_success_threshold = 1;
 sc->amrr.amrr_max_success_threshold = 15;
 timeout_set(&sc->amrr_to, rt2661_updatestats, sc);
 timeout_set(&sc->scan_to, rt2661_next_scan, sc);
 do { (&sc->amn)->tqh_first = ((void *)0); (&sc->amn)->tqh_last = &(&sc->amn)->tqh_first; } while (0);
 for (ntries = 0; ntries < 1000; ntries++) {
  if ((val = RAL_READ(sc, 0x3000)) != 0)
   break;
  delay(1000);
 }
 if (ntries == 1000) {
  printf("%s: timeout waiting for NIC to initialize\n",
      sc->sc_dev.dv_xname);
  return 5;
 }
 rt2661_read_eeprom(sc);
 printf(", address %s\n", ether_sprintf(ic->ic_myaddr));
 printf("%s: MAC/BBP RT%X, RF %s\n", sc->sc_dev.dv_xname, val,
     rt2661_get_rf(sc->rf_rev));
 for (ac = 0; ac < 4; ac++) {
  error = rt2661_alloc_tx_ring(sc, &sc->txq[ac],
      32);
  if (error != 0) {
   printf("%s: could not allocate Tx ring %d\n",
       sc->sc_dev.dv_xname, ac);
   goto fail1;
  }
 }
 error = rt2661_alloc_tx_ring(sc, &sc->mgtq, 32);
 if (error != 0) {
  printf("%s: could not allocate Mgt ring\n",
      sc->sc_dev.dv_xname);
  goto fail1;
 }
 error = rt2661_alloc_rx_ring(sc, &sc->rxq, 64);
 if (error != 0) {
  printf("%s: could not allocate Rx ring\n",
      sc->sc_dev.dv_xname);
  goto fail2;
 }
 config_mountroot(xsc, rt2661_attachhook);
 return 0;
fail2: rt2661_free_tx_ring(sc, &sc->mgtq);
fail1: while (--ac >= 0)
  rt2661_free_tx_ring(sc, &sc->txq[ac]);
 return 6;
}
void
rt2661_attachhook(struct device *self)
{
 struct rt2661_softc *sc = (struct rt2661_softc *)self;
 struct ieee80211com *ic = &sc->sc_ic;
 struct ifnet *ifp = &ic->ic_ac.ac_if;
 const char *name = ((void *)0);
 int i, error;
 switch (sc->sc_id) {
 case 0x0302:
  name = "ral-rt2561";
  break;
 case 0x0301:
  name = "ral-rt2561s";
  break;
 case 0x0401:
  name = "ral-rt2661";
  break;
 }
 if ((error = loadfirmware(name, &sc->ucode, &sc->ucsize)) != 0) {
  printf("%s: error %d, could not read firmware %s\n",
      sc->sc_dev.dv_xname, error, name);
  return;
 }
 ic->ic_phytype = IEEE80211_T_OFDM;
 ic->ic_opmode = IEEE80211_M_STA;
 ic->ic_state = IEEE80211_S_INIT;
 ic->ic_caps =
     0x00000200 |
     0x00000002 |
     0x00000008 |
     0x00000040 |
     0x00000100 |
     0x00000080 |
     0x00000001 |
     0x00001000;
 if (sc->rf_rev == 1 || sc->rf_rev == 2) {
  ic->ic_sup_rates[IEEE80211_MODE_11A] =
      ieee80211_std_rateset_11a;
  for (i = 36; i <= 64; i += 4) {
   ic->ic_channels[i].ic_freq =
       ieee80211_ieee2mhz(i, 0x0100);
   ic->ic_channels[i].ic_flags = (0x0100 | 0x0040);
  }
  for (i = 100; i <= 140; i += 4) {
   ic->ic_channels[i].ic_freq =
       ieee80211_ieee2mhz(i, 0x0100);
   ic->ic_channels[i].ic_flags = (0x0100 | 0x0040);
  }
  for (i = 149; i <= 165; i += 4) {
   ic->ic_channels[i].ic_freq =
       ieee80211_ieee2mhz(i, 0x0100);
   ic->ic_channels[i].ic_flags = (0x0100 | 0x0040);
  }
 }
 ic->ic_sup_rates[IEEE80211_MODE_11B] = ieee80211_std_rateset_11b;
 ic->ic_sup_rates[IEEE80211_MODE_11G] = ieee80211_std_rateset_11g;
 for (i = 1; i <= 14; i++) {
  ic->ic_channels[i].ic_freq =
      ieee80211_ieee2mhz(i, 0x0080);
  ic->ic_channels[i].ic_flags =
      0x0020 | 0x0040 |
      0x0400 | 0x0080;
 }
 ifp->if_softc = sc;
 ifp->if_flags = 0x2 | 0x800 | 0x8000;
 ifp->if_ioctl = rt2661_ioctl;
 ifp->if_start = rt2661_start;
 ifp->if_watchdog = rt2661_watchdog;
 __builtin_memcpy((ifp->if_xname), (sc->sc_dev.dv_xname), (16));
 if_attach(ifp);
 ieee80211_ifattach(ifp);
 ic->ic_node_alloc = rt2661_node_alloc;
 sc->sc_node_free = ic->ic_node_free;
 ic->ic_node_free = rt2661_node_free;
 ic->ic_newassoc = rt2661_newassoc;
 ic->ic_updateslot = rt2661_updateslot;
 sc->sc_newstate = ic->ic_newstate;
 ic->ic_newstate = rt2661_newstate;
 ieee80211_media_init(ifp, rt2661_media_change, ieee80211_media_status);
 bpfattach(&sc->sc_drvbpf, ifp, 127,
     sizeof (struct ieee80211_frame) + 64);
 sc->sc_rxtap_len = sizeof sc->sc_rxtapu;
 sc->sc_rxtapu.th.wr_ihdr.it_len = __extension__({ __uint16_t __swap16gen_x = (sc->sc_rxtap_len); (__uint16_t)((__swap16gen_x & 0xff) << 8 | (__swap16gen_x & 0xff00) >> 8); });
 sc->sc_rxtapu.th.wr_ihdr.it_present = __extension__({ __uint32_t __swap32gen_x = (((1 << IEEE80211_RADIOTAP_TSFT) | (1 << IEEE80211_RADIOTAP_FLAGS) | (1 << IEEE80211_RADIOTAP_RATE) | (1 << IEEE80211_RADIOTAP_CHANNEL) | (1 << IEEE80211_RADIOTAP_DB_ANTSIGNAL))); (__uint32_t)((__swap32gen_x & 0xff) << 24 | (__swap32gen_x & 0xff00) << 8 | (__swap32gen_x & 0xff0000) >> 8 | (__swap32gen_x & 0xff000000) >> 24); });
 sc->sc_txtap_len = sizeof sc->sc_txtapu;
 sc->sc_txtapu.th.wt_ihdr.it_len = __extension__({ __uint16_t __swap16gen_x = (sc->sc_txtap_len); (__uint16_t)((__swap16gen_x & 0xff) << 8 | (__swap16gen_x & 0xff00) >> 8); });
 sc->sc_txtapu.th.wt_ihdr.it_present = __extension__({ __uint32_t __swap32gen_x = (((1 << IEEE80211_RADIOTAP_FLAGS) | (1 << IEEE80211_RADIOTAP_RATE) | (1 << IEEE80211_RADIOTAP_CHANNEL))); (__uint32_t)((__swap32gen_x & 0xff) << 24 | (__swap32gen_x & 0xff00) << 8 | (__swap32gen_x & 0xff0000) >> 8 | (__swap32gen_x & 0xff000000) >> 24); });
}
int
rt2661_detach(void *xsc)
{
 struct rt2661_softc *sc = xsc;
 struct ifnet *ifp = &sc->sc_ic.ic_ac.ac_if;
 int ac;
 timeout_del(&sc->scan_to);
 timeout_del(&sc->amrr_to);
 ieee80211_ifdetach(ifp);
 rt2661_amrr_node_free_all(sc);
 if_detach(ifp);
 for (ac = 0; ac < 4; ac++)
  rt2661_free_tx_ring(sc, &sc->txq[ac]);
 rt2661_free_tx_ring(sc, &sc->mgtq);
 rt2661_free_rx_ring(sc, &sc->rxq);
 if (sc->ucode != ((void *)0))
  free(sc->ucode, 2, sc->ucsize);
 return 0;
}
void
rt2661_suspend(void *xsc)
{
 struct rt2661_softc *sc = xsc;
 struct ifnet *ifp = &sc->sc_ic.ic_ac.ac_if;
 if (ifp->if_flags & 0x40) {
  rt2661_stop(ifp, 1);
  sc->sc_flags &= ~(1 << 3);
 }
}
void
rt2661_wakeup(void *xsc)
{
 struct rt2661_softc *sc = xsc;
 struct ifnet *ifp = &sc->sc_ic.ic_ac.ac_if;
 if (ifp->if_flags & 0x1)
  rt2661_init(ifp);
}
int
rt2661_alloc_tx_ring(struct rt2661_softc *sc, struct rt2661_tx_ring *ring,
    int count)
{
 int i, nsegs, error;
 ring->count = count;
 ring->queued = 0;
 ring->cur = ring->next = ring->stat = 0;
 error = bus_dmamap_create(sc->sc_dmat, count * (sizeof (struct rt2661_tx_desc)), 1,
     count * (sizeof (struct rt2661_tx_desc)), 0, 0x0001, &ring->map);
 if (error != 0) {
  printf("%s: could not create desc DMA map\n",
      sc->sc_dev.dv_xname);
  goto fail;
 }
 error = bus_dmamem_alloc(sc->sc_dmat, count * (sizeof (struct rt2661_tx_desc)),
     (1 << 13), 0, &ring->seg, 1, &nsegs, 0x0001 | 0x0800);
 if (error != 0) {
  printf("%s: could not allocate DMA memory\n",
      sc->sc_dev.dv_xname);
  goto fail;
 }
 error = bus_dmamem_map(sc->sc_dmat, &ring->seg, nsegs,
     count * (sizeof (struct rt2661_tx_desc)), (caddr_t *)&ring->desc,
     0x0001);
 if (error != 0) {
  printf("%s: can't map desc DMA memory\n",
      sc->sc_dev.dv_xname);
  goto fail;
 }
 error = bus_dmamap_load(sc->sc_dmat, ring->map, ring->desc,
     count * (sizeof (struct rt2661_tx_desc)), ((void *)0), 0x0001);
 if (error != 0) {
  printf("%s: could not load desc DMA map\n",
      sc->sc_dev.dv_xname);
  goto fail;
 }
 ring->physaddr = ring->map->dm_segs->ds_addr;
 ring->data = mallocarray(count, sizeof (struct rt2661_tx_data),
     2, 0x0002 | 0x0008);
 if (ring->data == ((void *)0)) {
  printf("%s: could not allocate soft data\n",
      sc->sc_dev.dv_xname);
  error = 12;
  goto fail;
 }
 for (i = 0; i < count; i++) {
  error = bus_dmamap_create(sc->sc_dmat, (1 << 11),
      5, (1 << 11), 0, 0x0001,
      &ring->data[i].map);
  if (error != 0) {
   printf("%s: could not create DMA map\n",
       sc->sc_dev.dv_xname);
   goto fail;
  }
 }
 return 0;
fail: rt2661_free_tx_ring(sc, ring);
 return error;
}
void
rt2661_reset_tx_ring(struct rt2661_softc *sc, struct rt2661_tx_ring *ring)
{
 int i;
 for (i = 0; i < ring->count; i++) {
  struct rt2661_tx_desc *desc = &ring->desc[i];
  struct rt2661_tx_data *data = &ring->data[i];
  if (data->m != ((void *)0)) {
   bus_dmamap_sync(sc->sc_dmat, data->map, 0,
       data->map->dm_mapsize, 0x08);
   bus_dmamap_unload(sc->sc_dmat, data->map);
   m_freem(data->m);
   data->m = ((void *)0);
  }
  data->ni = ((void *)0);
  desc->flags = 0;
 }
 bus_dmamap_sync(sc->sc_dmat, ring->map, 0, ring->map->dm_mapsize,
     0x04);
 ring->queued = 0;
 ring->cur = ring->next = ring->stat = 0;
}
void
rt2661_free_tx_ring(struct rt2661_softc *sc, struct rt2661_tx_ring *ring)
{
 int i;
 if (ring->desc != ((void *)0)) {
  bus_dmamap_sync(sc->sc_dmat, ring->map, 0,
      ring->map->dm_mapsize, 0x08);
  bus_dmamap_unload(sc->sc_dmat, ring->map);
  bus_dmamem_unmap(sc->sc_dmat, (caddr_t)ring->desc,
      ring->count * (sizeof (struct rt2661_tx_desc)));
  bus_dmamem_free(sc->sc_dmat, &ring->seg, 1);
 }
 if (ring->data != ((void *)0)) {
  for (i = 0; i < ring->count; i++) {
   struct rt2661_tx_data *data = &ring->data[i];
   if (data->m != ((void *)0)) {
    bus_dmamap_sync(sc->sc_dmat, data->map, 0,
        data->map->dm_mapsize,
        0x08);
    bus_dmamap_unload(sc->sc_dmat, data->map);
    m_freem(data->m);
   }
   data->ni = ((void *)0);
   if (data->map != ((void *)0))
    bus_dmamap_destroy(sc->sc_dmat, data->map);
  }
  free(ring->data, 2, ring->count * sizeof *ring->data);
 }
}
int
rt2661_alloc_rx_ring(struct rt2661_softc *sc, struct rt2661_rx_ring *ring,
    int count)
{
 int i, nsegs, error;
 ring->count = count;
 ring->cur = ring->next = 0;
 error = bus_dmamap_create(sc->sc_dmat, count * (sizeof (struct rt2661_rx_desc)), 1,
     count * (sizeof (struct rt2661_rx_desc)), 0, 0x0001, &ring->map);
 if (error != 0) {
  printf("%s: could not create desc DMA map\n",
      sc->sc_dev.dv_xname);
  goto fail;
 }
 error = bus_dmamem_alloc(sc->sc_dmat, count * (sizeof (struct rt2661_rx_desc)),
     (1 << 13), 0, &ring->seg, 1, &nsegs, 0x0001 | 0x0800);
 if (error != 0) {
  printf("%s: could not allocate DMA memory\n",
      sc->sc_dev.dv_xname);
  goto fail;
 }
 error = bus_dmamem_map(sc->sc_dmat, &ring->seg, nsegs,
     count * (sizeof (struct rt2661_rx_desc)), (caddr_t *)&ring->desc,
     0x0001);
 if (error != 0) {
  printf("%s: can't map desc DMA memory\n",
      sc->sc_dev.dv_xname);
  goto fail;
 }
 error = bus_dmamap_load(sc->sc_dmat, ring->map, ring->desc,
     count * (sizeof (struct rt2661_rx_desc)), ((void *)0), 0x0001);
 if (error != 0) {
  printf("%s: could not load desc DMA map\n",
      sc->sc_dev.dv_xname);
  goto fail;
 }
 ring->physaddr = ring->map->dm_segs->ds_addr;
 ring->data = mallocarray(count, sizeof (struct rt2661_rx_data),
     2, 0x0002 | 0x0008);
 if (ring->data == ((void *)0)) {
  printf("%s: could not allocate soft data\n",
      sc->sc_dev.dv_xname);
  error = 12;
  goto fail;
 }
 for (i = 0; i < count; i++) {
  struct rt2661_rx_desc *desc = &sc->rxq.desc[i];
  struct rt2661_rx_data *data = &sc->rxq.data[i];
  error = bus_dmamap_create(sc->sc_dmat, (1 << 11), 1, (1 << 11),
      0, 0x0001, &data->map);
  if (error != 0) {
   printf("%s: could not create DMA map\n",
       sc->sc_dev.dv_xname);
   goto fail;
  }
  data->m = m_gethdr((0x0002), (1));
  if (data->m == ((void *)0)) {
   printf("%s: could not allocate rx mbuf\n",
       sc->sc_dev.dv_xname);
   error = 12;
   goto fail;
  }
  (void) m_clget((data->m), (0x0002), (1 << 11));
  if (!(data->m->m_hdr.mh_flags & 0x0001)) {
   printf("%s: could not allocate rx mbuf cluster\n",
       sc->sc_dev.dv_xname);
   error = 12;
   goto fail;
  }
  error = bus_dmamap_load(sc->sc_dmat, data->map,
      ((void *)((data->m)->m_hdr.mh_data)), (1 << 11), ((void *)0), 0x0001);
  if (error != 0) {
   printf("%s: could not load rx buf DMA map",
       sc->sc_dev.dv_xname);
   goto fail;
  }
  desc->flags = __extension__({ __uint32_t __swap32gen_x = ((1 << 0)); (__uint32_t)((__swap32gen_x & 0xff) << 24 | (__swap32gen_x & 0xff00) << 8 | (__swap32gen_x & 0xff0000) >> 8 | (__swap32gen_x & 0xff000000) >> 24); });
  desc->physaddr = __extension__({ __uint32_t __swap32gen_x = (data->map->dm_segs->ds_addr); (__uint32_t)((__swap32gen_x & 0xff) << 24 | (__swap32gen_x & 0xff00) << 8 | (__swap32gen_x & 0xff0000) >> 8 | (__swap32gen_x & 0xff000000) >> 24); });
 }
 bus_dmamap_sync(sc->sc_dmat, ring->map, 0, ring->map->dm_mapsize,
     0x04);
 return 0;
fail: rt2661_free_rx_ring(sc, ring);
 return error;
}
void
rt2661_reset_rx_ring(struct rt2661_softc *sc, struct rt2661_rx_ring *ring)
{
 int i;
 for (i = 0; i < ring->count; i++)
  ring->desc[i].flags = __extension__({ __uint32_t __swap32gen_x = ((1 << 0)); (__uint32_t)((__swap32gen_x & 0xff) << 24 | (__swap32gen_x & 0xff00) << 8 | (__swap32gen_x & 0xff0000) >> 8 | (__swap32gen_x & 0xff000000) >> 24); });
 bus_dmamap_sync(sc->sc_dmat, ring->map, 0, ring->map->dm_mapsize,
     0x04);
 ring->cur = ring->next = 0;
}
void
rt2661_free_rx_ring(struct rt2661_softc *sc, struct rt2661_rx_ring *ring)
{
 int i;
 if (ring->desc != ((void *)0)) {
  bus_dmamap_sync(sc->sc_dmat, ring->map, 0,
      ring->map->dm_mapsize, 0x08);
  bus_dmamap_unload(sc->sc_dmat, ring->map);
  bus_dmamem_unmap(sc->sc_dmat, (caddr_t)ring->desc,
      ring->count * (sizeof (struct rt2661_rx_desc)));
  bus_dmamem_free(sc->sc_dmat, &ring->seg, 1);
 }
 if (ring->data != ((void *)0)) {
  for (i = 0; i < ring->count; i++) {
   struct rt2661_rx_data *data = &ring->data[i];
   if (data->m != ((void *)0)) {
    bus_dmamap_sync(sc->sc_dmat, data->map, 0,
        data->map->dm_mapsize,
        0x02);
    bus_dmamap_unload(sc->sc_dmat, data->map);
    m_freem(data->m);
   }
   if (data->map != ((void *)0))
    bus_dmamap_destroy(sc->sc_dmat, data->map);
  }
  free(ring->data, 2, ring->count * sizeof *ring->data);
 }
}
struct rt2661_amrr_node *
rt2661_amrr_node_alloc(struct ieee80211com *ic, struct rt2661_node *rn)
{
 struct rt2661_softc *sc = ic->ic_ac.ac_if.if_softc;
 struct rt2661_amrr_node *amn;
 int s;
 if (sc->amn_count >= 100)
  rt2661_amrr_node_free_unused(sc);
 if (sc->amn_count >= 100)
  return ((void *)0);
 amn = malloc(sizeof (struct rt2661_amrr_node), 2,
     0x0002 | 0x0008);
 if (amn) {
  s = _splraise(6);
  amn->id = sc->amn_count++;
  amn->rn = rn;
  do { (amn)->entry.tqe_next = ((void *)0); (amn)->entry.tqe_prev = (&sc->amn)->tqh_last; *(&sc->amn)->tqh_last = (amn); (&sc->amn)->tqh_last = &(amn)->entry.tqe_next; } while (0);
  _splx(s);
 }
 return amn;
}
void
rt2661_amrr_node_free(struct rt2661_softc *sc, struct rt2661_amrr_node *amn)
{
 int s;
 s = _splraise(6);
 if (amn->rn)
  amn->rn->amn = ((void *)0);
 do { if (((amn)->entry.tqe_next) != ((void *)0)) (amn)->entry.tqe_next->entry.tqe_prev = (amn)->entry.tqe_prev; else (&sc->amn)->tqh_last = (amn)->entry.tqe_prev; *(amn)->entry.tqe_prev = (amn)->entry.tqe_next; ((amn)->entry.tqe_prev) = ((void *)-1); ((amn)->entry.tqe_next) = ((void *)-1); } while (0);
 sc->amn_count--;
 _splx(s);
 free(amn, 2, sizeof *amn);
}
void
rt2661_amrr_node_free_all(struct rt2661_softc *sc)
{
 struct rt2661_amrr_node *amn, *a;
 int s;
 s = _splraise(6);
 for ((amn) = ((&sc->amn)->tqh_first); (amn) != ((void *)0) && ((a) = ((amn)->entry.tqe_next), 1); (amn) = (a))
  rt2661_amrr_node_free(sc, amn);
 _splx(s);
}
void
rt2661_amrr_node_free_unused(struct rt2661_softc *sc)
{
 struct rt2661_amrr_node *amn, *a;
 int s;
 s = _splraise(6);
 for ((amn) = ((&sc->amn)->tqh_first); (amn) != ((void *)0) && ((a) = ((amn)->entry.tqe_next), 1); (amn) = (a)) {
  if (amn->rn == ((void *)0))
   rt2661_amrr_node_free(sc, amn);
 }
 _splx(s);
}
struct rt2661_amrr_node *
rt2661_amrr_node_find(struct rt2661_softc *sc, u_int8_t id)
{
 struct rt2661_amrr_node *amn, *a, *ret = ((void *)0);
 int s;
 if (id == (100 + 1))
  return ((void *)0);
 s = _splraise(6);
 for ((amn) = ((&sc->amn)->tqh_first); (amn) != ((void *)0) && ((a) = ((amn)->entry.tqe_next), 1); (amn) = (a)) {
  if (amn->rn == ((void *)0))
   rt2661_amrr_node_free(sc, amn);
  else if (amn->id == id)
   ret = amn;
 }
 _splx(s);
 return ret;
}
struct ieee80211_node *
rt2661_node_alloc(struct ieee80211com *ic)
{
 struct rt2661_node *rn;
 rn = malloc(sizeof (struct rt2661_node), 2,
     0x0002 | 0x0008);
 if (rn == ((void *)0))
  return ((void *)0);
 rn->amn = rt2661_amrr_node_alloc(ic, rn);
 return (struct ieee80211_node *)rn;
}
void
rt2661_node_free(struct ieee80211com *ic, struct ieee80211_node *ni)
{
 struct rt2661_softc *sc = ic->ic_ac.ac_if.if_softc;
 struct rt2661_node *rn = (struct rt2661_node *)ni;
 if (rn->amn)
  rn->amn->rn = ((void *)0);
 sc->sc_node_free(ic, ni);
}
int
rt2661_media_change(struct ifnet *ifp)
{
 int error;
 error = ieee80211_media_change(ifp);
 if (error != 52)
  return error;
 if ((ifp->if_flags & (0x1 | 0x40)) == (0x1 | 0x40))
  rt2661_init(ifp);
 return 0;
}
void
rt2661_next_scan(void *arg)
{
 struct rt2661_softc *sc = arg;
 struct ieee80211com *ic = &sc->sc_ic;
 struct ifnet *ifp = &ic->ic_ac.ac_if;
 int s;
 s = _splraise(6);
 if (ic->ic_state == IEEE80211_S_SCAN)
  ieee80211_next_scan(ifp);
 _splx(s);
}
void
rt2661_iter_func(void *arg, struct ieee80211_node *ni)
{
 struct rt2661_softc *sc = arg;
 struct rt2661_node *rn = (struct rt2661_node *)ni;
 if (rn->amn)
  ieee80211_amrr_choose(&sc->amrr, ni, &rn->amn->amn);
}
void
rt2661_updatestats(void *arg)
{
 struct rt2661_softc *sc = arg;
 struct ieee80211com *ic = &sc->sc_ic;
 int s;
 s = _splraise(6);
 if (ic->ic_opmode == IEEE80211_M_STA)
  rt2661_iter_func(sc, ic->ic_bss);
 else
  ieee80211_iterate_nodes(ic, rt2661_iter_func, arg);
 if (++sc->ncalls & 1) {
  rt2661_rx_tune(sc);
  rt2661_amrr_node_free_unused(sc);
 }
 _splx(s);
 timeout_add_msec(&sc->amrr_to, 500);
}
void
rt2661_newassoc(struct ieee80211com *ic, struct ieee80211_node *ni, int isnew)
{
 struct rt2661_softc *sc = ic->ic_ac.ac_if.if_softc;
 struct rt2661_node *rn = (struct rt2661_node *)ni;
 int i;
 if (rn->amn)
  ieee80211_amrr_node_init(&sc->amrr, &rn->amn->amn);
 for (i = ni->ni_rates.rs_nrates - 1;
      i > 0 && (ni->ni_rates.rs_rates[i] & 0x7f) > 72;
      i--);
 ni->ni_txrate = i;
}
int
rt2661_newstate(struct ieee80211com *ic, enum ieee80211_state nstate, int arg)
{
 struct rt2661_softc *sc = ic->ic_ac.ac_if.if_softc;
 enum ieee80211_state ostate;
 struct ieee80211_node *ni;
 uint32_t tmp;
 ostate = ic->ic_state;
 timeout_del(&sc->scan_to);
 timeout_del(&sc->amrr_to);
 switch (nstate) {
 case IEEE80211_S_INIT:
  if (ostate == IEEE80211_S_RUN) {
   tmp = RAL_READ(sc, 0x3064);
   RAL_WRITE(sc, 0x3064, tmp & ~0x00ffffff);
  }
  break;
 case IEEE80211_S_SCAN:
  rt2661_set_chan(sc, ic->ic_bss->ni_chan);
  timeout_add_msec(&sc->scan_to, 200);
  break;
 case IEEE80211_S_AUTH:
 case IEEE80211_S_ASSOC:
  rt2661_set_chan(sc, ic->ic_bss->ni_chan);
  break;
 case IEEE80211_S_RUN:
  rt2661_set_chan(sc, ic->ic_bss->ni_chan);
  ni = ic->ic_bss;
  if (ic->ic_opmode != IEEE80211_M_MONITOR) {
   rt2661_set_slottime(sc);
   rt2661_enable_mrr(sc);
   rt2661_set_txpreamble(sc);
   rt2661_set_basicrates(sc);
   rt2661_set_bssid(sc, ni->ni_bssid);
  }
  if (ic->ic_opmode == IEEE80211_M_HOSTAP ||
      ic->ic_opmode == IEEE80211_M_IBSS)
   rt2661_prepare_beacon(sc);
  if (ic->ic_opmode == IEEE80211_M_STA) {
   rt2661_newassoc(ic, ni, 1);
  }
  if (ic->ic_opmode != IEEE80211_M_MONITOR) {
   sc->ncalls = 0;
   sc->avg_rssi = -95;
   timeout_add_msec(&sc->amrr_to, 500);
   rt2661_enable_tsf_sync(sc);
  }
  break;
 }
 return sc->sc_newstate(ic, nstate, arg);
}
uint16_t
rt2661_eeprom_read(struct rt2661_softc *sc, uint8_t addr)
{
 uint32_t tmp;
 uint16_t val;
 int n;
 do { RAL_WRITE((sc), 0x3470, (0)); delay(1); } while ( 0);
 do { RAL_WRITE((sc), 0x3470, ((1 << 2))); delay(1); } while ( 0);
 do { RAL_WRITE((sc), 0x3470, ((1 << 2) | (1 << 1))); delay(1); } while ( 0);
 do { RAL_WRITE((sc), 0x3470, ((1 << 2))); delay(1); } while ( 0);
 do { RAL_WRITE((sc), 0x3470, ((1 << 2) | (1 << 3))); delay(1); } while ( 0);
 do { RAL_WRITE((sc), 0x3470, ((1 << 2) | (1 << 3) | (1 << 1))); delay(1); } while ( 0);
 do { RAL_WRITE((sc), 0x3470, ((1 << 2) | (1 << 3))); delay(1); } while ( 0);
 do { RAL_WRITE((sc), 0x3470, ((1 << 2) | (1 << 3) | (1 << 1))); delay(1); } while ( 0);
 do { RAL_WRITE((sc), 0x3470, ((1 << 2))); delay(1); } while ( 0);
 do { RAL_WRITE((sc), 0x3470, ((1 << 2) | (1 << 1))); delay(1); } while ( 0);
 n = (RAL_READ(sc, 0x3470) & (1 << 5)) ? 5 : 7;
 for (; n >= 0; n--) {
  do { RAL_WRITE((sc), 0x3470, ((1 << 2) | (((addr >> n) & 1) << 3))); delay(1); } while ( 0);
  do { RAL_WRITE((sc), 0x3470, ((1 << 2) | (((addr >> n) & 1) << 3) | (1 << 1))); delay(1); } while ( 0);
 }
 do { RAL_WRITE((sc), 0x3470, ((1 << 2))); delay(1); } while ( 0);
 val = 0;
 for (n = 15; n >= 0; n--) {
  do { RAL_WRITE((sc), 0x3470, ((1 << 2) | (1 << 1))); delay(1); } while ( 0);
  tmp = RAL_READ(sc, 0x3470);
  val |= ((tmp & (1 << 4)) >> 4) << n;
  do { RAL_WRITE((sc), 0x3470, ((1 << 2))); delay(1); } while ( 0);
 }
 do { RAL_WRITE((sc), 0x3470, (0)); delay(1); } while ( 0);
 do { RAL_WRITE((sc), 0x3470, ((1 << 2))); delay(1); } while ( 0);
 do { RAL_WRITE((sc), 0x3470, (0)); delay(1); } while ( 0);
 do { RAL_WRITE((sc), 0x3470, ((1 << 1))); delay(1); } while ( 0);
 return val;
}
void
rt2661_tx_intr(struct rt2661_softc *sc)
{
 struct ieee80211com *ic = &sc->sc_ic;
 struct ifnet *ifp = &ic->ic_ac.ac_if;
 struct rt2661_amrr_node *amn;
 int retrycnt;
 u_int8_t amrr_id;
 for (;;) {
  const uint32_t val = RAL_READ(sc, 0x30d0);
  if (!(val & (1 << 0)))
   break;
  amrr_id = (((val) >> 8) & 0xff);
  amn = rt2661_amrr_node_find(sc, amrr_id);
  switch ((((val) >> 1) & 0x7)) {
  case 0:
   retrycnt = (((val) >> 4) & 0xf);
   ;
   if (amn) {
    amn->amn.amn_txcnt++;
    if (retrycnt > 0)
     amn->amn.amn_retrycnt++;
   }
   break;
  case 6:
   ;
   if (amn) {
    amn->amn.amn_txcnt++;
    amn->amn.amn_retrycnt++;
   }
   ifp->if_data.ifi_oerrors++;
   break;
  default:
   printf("%s: sending data frame failed 0x%08x\n",
       sc->sc_dev.dv_xname, val);
   ifp->if_data.ifi_oerrors++;
  }
  ;
 }
}
void
rt2661_tx_dma_intr(struct rt2661_softc *sc, struct rt2661_tx_ring *txq)
{
 struct ieee80211com *ic = &sc->sc_ic;
 struct ifnet *ifp = &ic->ic_ac.ac_if;
 for (;;) {
  struct rt2661_tx_desc *desc = &txq->desc[txq->next];
  struct rt2661_tx_data *data = &txq->data[txq->next];
  bus_dmamap_sync(sc->sc_dmat, txq->map,
      txq->next * (sizeof (struct rt2661_tx_desc)), (sizeof (struct rt2661_tx_desc)),
      0x02);
  if ((__extension__({ __uint32_t __swap32gen_x = (desc->flags); (__uint32_t)((__swap32gen_x & 0xff) << 24 | (__swap32gen_x & 0xff00) << 8 | (__swap32gen_x & 0xff0000) >> 8 | (__swap32gen_x & 0xff000000) >> 24); }) & (1 << 0)) ||
      !(__extension__({ __uint32_t __swap32gen_x = (desc->flags); (__uint32_t)((__swap32gen_x & 0xff) << 24 | (__swap32gen_x & 0xff00) << 8 | (__swap32gen_x & 0xff0000) >> 8 | (__swap32gen_x & 0xff000000) >> 24); }) & (1 << 1)))
   break;
  desc->flags &= ~__extension__({ __uint32_t __swap32gen_x = ((1 << 1)); (__uint32_t)((__swap32gen_x & 0xff) << 24 | (__swap32gen_x & 0xff00) << 8 | (__swap32gen_x & 0xff0000) >> 8 | (__swap32gen_x & 0xff000000) >> 24); });
  bus_dmamap_sync(sc->sc_dmat, txq->map,
      txq->next * (sizeof (struct rt2661_tx_desc)), (sizeof (struct rt2661_tx_desc)),
      0x04);
  bus_dmamap_sync(sc->sc_dmat, data->map, 0,
      data->map->dm_mapsize, 0x08);
  bus_dmamap_unload(sc->sc_dmat, data->map);
  m_freem(data->m);
  data->m = ((void *)0);
  ieee80211_release_node(ic, data->ni);
  data->ni = ((void *)0);
  ;
  txq->queued--;
  if (++txq->next >= txq->count)
   txq->next = 0;
 }
 if (sc->mgtq.queued == 0 && sc->txq[0].queued == 0)
  sc->sc_tx_timer = 0;
 if (sc->mgtq.queued < 32 &&
     sc->txq[0].queued < 32 - 1) {
  if (sc->mgtq.queued < 32)
   sc->sc_flags &= ~(1 << 4);
  if (sc->txq[0].queued < 32 - 1)
   sc->sc_flags &= ~(1 << 5);
  if (!(sc->sc_flags & ((1 << 4)|(1 << 5))))
   ifq_clr_oactive(&ifp->if_snd);
  rt2661_start(ifp);
 }
}
void
rt2661_rx_intr(struct rt2661_softc *sc)
{
 struct ieee80211com *ic = &sc->sc_ic;
 struct ifnet *ifp = &ic->ic_ac.ac_if;
 struct ieee80211_frame *wh;
 struct ieee80211_rxinfo rxi;
 struct ieee80211_node *ni;
 struct mbuf *mnew, *m;
 int error, rssi;
 for (;;) {
  struct rt2661_rx_desc *desc = &sc->rxq.desc[sc->rxq.cur];
  struct rt2661_rx_data *data = &sc->rxq.data[sc->rxq.cur];
  bus_dmamap_sync(sc->sc_dmat, sc->rxq.map,
      sc->rxq.cur * (sizeof (struct rt2661_rx_desc)), (sizeof (struct rt2661_rx_desc)),
      0x02);
  if (__extension__({ __uint32_t __swap32gen_x = (desc->flags); (__uint32_t)((__swap32gen_x & 0xff) << 24 | (__swap32gen_x & 0xff00) << 8 | (__swap32gen_x & 0xff0000) >> 8 | (__swap32gen_x & 0xff000000) >> 24); }) & (1 << 0))
   break;
  if ((__extension__({ __uint32_t __swap32gen_x = (desc->flags); (__uint32_t)((__swap32gen_x & 0xff) << 24 | (__swap32gen_x & 0xff00) << 8 | (__swap32gen_x & 0xff0000) >> 8 | (__swap32gen_x & 0xff000000) >> 24); }) & (1 << 8)) ||
      (__extension__({ __uint32_t __swap32gen_x = (desc->flags); (__uint32_t)((__swap32gen_x & 0xff) << 24 | (__swap32gen_x & 0xff00) << 8 | (__swap32gen_x & 0xff0000) >> 8 | (__swap32gen_x & 0xff000000) >> 24); }) & (1 << 6))) {
   ;
   ifp->if_data.ifi_ierrors++;
   goto skip;
  }
  if ((__extension__({ __uint32_t __swap32gen_x = (desc->flags); (__uint32_t)((__swap32gen_x & 0xff) << 24 | (__swap32gen_x & 0xff00) << 8 | (__swap32gen_x & 0xff0000) >> 8 | (__swap32gen_x & 0xff000000) >> 24); }) & 0x00000600) != 0) {
   ifp->if_data.ifi_ierrors++;
   goto skip;
  }
  mnew = m_gethdr((0x0002), (1));
  if (mnew == ((void *)0)) {
   ifp->if_data.ifi_ierrors++;
   goto skip;
  }
  (void) m_clget((mnew), (0x0002), (1 << 11));
  if (!(mnew->m_hdr.mh_flags & 0x0001)) {
   m_freem(mnew);
   ifp->if_data.ifi_ierrors++;
   goto skip;
  }
  bus_dmamap_sync(sc->sc_dmat, data->map, 0,
      data->map->dm_mapsize, 0x02);
  bus_dmamap_unload(sc->sc_dmat, data->map);
  error = bus_dmamap_load(sc->sc_dmat, data->map,
      ((void *)((mnew)->m_hdr.mh_data)), (1 << 11), ((void *)0), 0x0001);
  if (error != 0) {
   m_freem(mnew);
   error = bus_dmamap_load(sc->sc_dmat, data->map,
       ((void *)((data->m)->m_hdr.mh_data)), (1 << 11), ((void *)0),
       0x0001);
   if (error != 0) {
    panic("%s: could not load old rx mbuf",
        sc->sc_dev.dv_xname);
   }
   desc->physaddr = __extension__({ __uint32_t __swap32gen_x = (data->map->dm_segs->ds_addr); (__uint32_t)((__swap32gen_x & 0xff) << 24 | (__swap32gen_x & 0xff00) << 8 | (__swap32gen_x & 0xff0000) >> 8 | (__swap32gen_x & 0xff000000) >> 24); });
   ifp->if_data.ifi_ierrors++;
   goto skip;
  }
  m = data->m;
  data->m = mnew;
  desc->physaddr = __extension__({ __uint32_t __swap32gen_x = (data->map->dm_segs->ds_addr); (__uint32_t)((__swap32gen_x & 0xff) << 24 | (__swap32gen_x & 0xff00) << 8 | (__swap32gen_x & 0xff0000) >> 8 | (__swap32gen_x & 0xff000000) >> 24); });
  m->M_dat.MH.MH_pkthdr.len = m->m_hdr.mh_len =
      (__extension__({ __uint32_t __swap32gen_x = (desc->flags); (__uint32_t)((__swap32gen_x & 0xff) << 24 | (__swap32gen_x & 0xff00) << 8 | (__swap32gen_x & 0xff0000) >> 8 | (__swap32gen_x & 0xff000000) >> 24); }) >> 16) & 0xfff;
  if (sc->sc_drvbpf != ((void *)0)) {
   struct mbuf mb;
   struct rt2661_rx_radiotap_header *tap = &sc->sc_rxtapu.th;
   uint32_t tsf_lo, tsf_hi;
   tsf_hi = RAL_READ(sc, 0x3074);
   tsf_lo = RAL_READ(sc, 0x3070);
   tap->wr_tsf =
       __extension__({ __uint64_t __swap64gen_x = (((uint64_t)tsf_hi << 32) | tsf_lo); (__uint64_t)((__swap64gen_x & 0xff) << 56 | (__swap64gen_x & 0xff00ULL) << 40 | (__swap64gen_x & 0xff0000ULL) << 24 | (__swap64gen_x & 0xff000000ULL) << 8 | (__swap64gen_x & 0xff00000000ULL) >> 8 | (__swap64gen_x & 0xff0000000000ULL) >> 24 | (__swap64gen_x & 0xff000000000000ULL) >> 40 | (__swap64gen_x & 0xff00000000000000ULL) >> 56); });
   tap->wr_flags = 0;
   tap->wr_rate = rt2661_rxrate(desc);
   tap->wr_chan_freq = __extension__({ __uint16_t __swap16gen_x = (sc->sc_curchan->ic_freq); (__uint16_t)((__swap16gen_x & 0xff) << 8 | (__swap16gen_x & 0xff00) >> 8); });
   tap->wr_chan_flags = __extension__({ __uint16_t __swap16gen_x = (sc->sc_curchan->ic_flags); (__uint16_t)((__swap16gen_x & 0xff) << 8 | (__swap16gen_x & 0xff00) >> 8); });
   tap->wr_antsignal = desc->rssi;
   mb.m_hdr.mh_data = (caddr_t)tap;
   mb.m_hdr.mh_len = sc->sc_rxtap_len;
   mb.m_hdr.mh_next = m;
   mb.m_hdr.mh_nextpkt = ((void *)0);
   mb.m_hdr.mh_type = 0;
   mb.m_hdr.mh_flags = 0;
   bpf_mtap(sc->sc_drvbpf, &mb, 1);
  }
  wh = ((struct ieee80211_frame *)((m)->m_hdr.mh_data));
  ni = ieee80211_find_rxnode(ic, wh);
  rxi.rxi_flags = 0;
  rxi.rxi_rssi = desc->rssi;
  rxi.rxi_tstamp = 0;
  ieee80211_input(ifp, m, ni, &rxi);
  rssi = rt2661_get_rssi(sc, desc->rssi);
  sc->avg_rssi = (rssi + 7 * sc->avg_rssi) / 8;
  ieee80211_release_node(ic, ni);
skip: desc->flags |= __extension__({ __uint32_t __swap32gen_x = ((1 << 0)); (__uint32_t)((__swap32gen_x & 0xff) << 24 | (__swap32gen_x & 0xff00) << 8 | (__swap32gen_x & 0xff0000) >> 8 | (__swap32gen_x & 0xff000000) >> 24); });
  bus_dmamap_sync(sc->sc_dmat, sc->rxq.map,
      sc->rxq.cur * (sizeof (struct rt2661_rx_desc)), (sizeof (struct rt2661_rx_desc)),
      0x04);
  ;
  sc->rxq.cur = (sc->rxq.cur + 1) % 64;
 }
}
void
rt2661_mcu_beacon_expire(struct rt2661_softc *sc)
{
 struct ieee80211com *ic = &sc->sc_ic;
 if (sc->sc_flags & (1 << 1)) {
  sc->sc_flags &= ~(1 << 1);
  sc->sc_flags |= (1 << 2);
 } else if (sc->sc_flags & (1 << 2)) {
  sc->sc_flags &= ~(1 << 2);
  rt2661_set_slottime(sc);
 }
 if (ic->ic_curmode == IEEE80211_MODE_11G) {
  RAL_WRITE_1(sc, sc->erp_csr, ic->ic_bss->ni_erp);
  bus_space_barrier((sc)->sc_st, (sc)->sc_sh, (sc->erp_csr), 1, 0x01 | 0x02);
 }
 ;
}
void
rt2661_mcu_wakeup(struct rt2661_softc *sc)
{
 RAL_WRITE(sc, 0x302c, 5 << 16);
 RAL_WRITE(sc, 0x0010, 0x7);
 RAL_WRITE(sc, 0x3498, 0x18);
 RAL_WRITE(sc, 0x001c, 0x20);
 rt2661_tx_cmd(sc, 0x31, 0);
}
void
rt2661_mcu_cmd_intr(struct rt2661_softc *sc)
{
 RAL_READ(sc, 0x2104);
 RAL_WRITE(sc, 0x2104, 0xffffffff);
}
int
rt2661_intr(void *arg)
{
 struct rt2661_softc *sc = arg;
 struct ifnet *ifp = &sc->sc_ic.ic_ac.ac_if;
 uint32_t r1, r2;
 r1 = RAL_READ(sc, 0x3468);
 r2 = RAL_READ(sc, 0x0014);
 if (__builtin_expect(((r1 == 0xffffffff && r2 == 0xffffffff) != 0), 0))
  return 0;
 if (r1 == 0 && r2 == 0)
  return 0;
 RAL_WRITE(sc, 0x346c, 0xffffff7f);
 RAL_WRITE(sc, 0x0018, 0xffffffff);
 RAL_WRITE(sc, 0x3468, r1);
 RAL_WRITE(sc, 0x0014, r2);
 if (!(ifp->if_flags & 0x40))
  return 0;
 if (r1 & (1 << 20))
  rt2661_tx_dma_intr(sc, &sc->mgtq);
 if (r1 & (1 << 1))
  rt2661_rx_intr(sc);
 if (r1 & (1 << 16))
  rt2661_tx_dma_intr(sc, &sc->txq[0]);
 if (r1 & (1 << 17))
  rt2661_tx_dma_intr(sc, &sc->txq[1]);
 if (r1 & (1 << 18))
  rt2661_tx_dma_intr(sc, &sc->txq[2]);
 if (r1 & (1 << 19))
  rt2661_tx_dma_intr(sc, &sc->txq[3]);
 if (r1 & (1 << 0))
  rt2661_tx_intr(sc);
 if (r2 & 0xff)
  rt2661_mcu_cmd_intr(sc);
 if (r2 & (1 << 9))
  rt2661_mcu_beacon_expire(sc);
 if (r2 & (1 << 8))
  rt2661_mcu_wakeup(sc);
 RAL_WRITE(sc, 0x346c, 0x0000ff10);
 RAL_WRITE(sc, 0x0018, 0);
 return 1;
}
uint8_t
rt2661_rxrate(const struct rt2661_rx_desc *desc)
{
 if (__extension__({ __uint32_t __swap32gen_x = (desc->flags); (__uint32_t)((__swap32gen_x & 0xff) << 24 | (__swap32gen_x & 0xff00) << 8 | (__swap32gen_x & 0xff0000) >> 8 | (__swap32gen_x & 0xff000000) >> 24); }) & (1 << 7)) {
  switch (desc->rate & 0xf) {
  case 0xb: return 12;
  case 0xf: return 18;
  case 0xa: return 24;
  case 0xe: return 36;
  case 0x9: return 48;
  case 0xd: return 72;
  case 0x8: return 96;
  case 0xc: return 108;
  }
 } else {
  if (desc->rate == 10)
   return 2;
  if (desc->rate == 20)
   return 4;
  if (desc->rate == 55)
   return 11;
  if (desc->rate == 110)
   return 22;
 }
 return 2;
}
int
rt2661_ack_rate(struct ieee80211com *ic, int rate)
{
 switch (rate) {
 case 2:
  return 2;
 case 4:
 case 11:
 case 22:
  return (ic->ic_curmode == IEEE80211_MODE_11B) ? 4 : rate;
 case 12:
 case 18:
  return 12;
 case 24:
 case 36:
  return 24;
 case 48:
 case 72:
 case 96:
 case 108:
  return 48;
 }
 return 2;
}
uint16_t
rt2661_txtime(int len, int rate, uint32_t flags)
{
 uint16_t txtime;
 if (((rate) >= 12 && (rate) != 22)) {
  txtime = (8 + 4 * len + 3 + rate - 1) / rate;
  txtime = 16 + 4 + 4 * txtime + 6;
 } else {
  txtime = (16 * len + rate - 1) / rate;
  if (rate != 2 && (flags & 0x00040000))
   txtime += 72 + 24;
  else
   txtime += 144 + 48;
 }
 return txtime;
}
uint8_t
rt2661_plcp_signal(int rate)
{
 switch (rate) {
 case 2: return 0x0;
 case 4: return 0x1;
 case 11: return 0x2;
 case 22: return 0x3;
 case 12: return 0xb;
 case 18: return 0xf;
 case 24: return 0xa;
 case 36: return 0xe;
 case 48: return 0x9;
 case 72: return 0xd;
 case 96: return 0x8;
 case 108: return 0xc;
 default: return 0xff;
 }
}
void
rt2661_setup_tx_desc(struct rt2661_softc *sc, struct rt2661_tx_desc *desc,
    uint32_t flags, uint16_t xflags, int len, int rate,
    const bus_dma_segment_t *segs, int nsegs, int ac, u_int8_t amrr_id)
{
 struct ieee80211com *ic = &sc->sc_ic;
 uint16_t plcp_length;
 int i, remainder;
 desc->flags = __extension__({ __uint32_t __swap32gen_x = (flags); (__uint32_t)((__swap32gen_x & 0xff) << 24 | (__swap32gen_x & 0xff00) << 8 | (__swap32gen_x & 0xff0000) >> 8 | (__swap32gen_x & 0xff000000) >> 24); });
 desc->flags |= __extension__({ __uint32_t __swap32gen_x = (len << 16); (__uint32_t)((__swap32gen_x & 0xff) << 24 | (__swap32gen_x & 0xff00) << 8 | (__swap32gen_x & 0xff0000) >> 8 | (__swap32gen_x & 0xff000000) >> 24); });
 desc->flags |= __extension__({ __uint32_t __swap32gen_x = ((1 << 0) | (1 << 1)); (__uint32_t)((__swap32gen_x & 0xff) << 24 | (__swap32gen_x & 0xff00) << 8 | (__swap32gen_x & 0xff0000) >> 8 | (__swap32gen_x & 0xff000000) >> 24); });
 desc->xflags = __extension__({ __uint16_t __swap16gen_x = (xflags); (__uint16_t)((__swap16gen_x & 0xff) << 8 | (__swap16gen_x & 0xff00) >> 8); });
 desc->xflags |= __extension__({ __uint16_t __swap16gen_x = (nsegs << 13); (__uint16_t)((__swap16gen_x & 0xff) << 8 | (__swap16gen_x & 0xff00) >> 8); });
 desc->wme = __extension__({ __uint16_t __swap16gen_x = ((ac) | ((2) << 4) | ((4) << 8) | ((10) << 12)); (__uint16_t)((__swap16gen_x & 0xff) << 8 | (__swap16gen_x & 0xff00) >> 8); });
 desc->priv_data = amrr_id;
 desc->plcp_signal = rt2661_plcp_signal(rate);
 desc->plcp_service = 4;
 len += 4;
 if (((rate) >= 12 && (rate) != 22)) {
  desc->flags |= __extension__({ __uint32_t __swap32gen_x = ((1 << 5)); (__uint32_t)((__swap32gen_x & 0xff) << 24 | (__swap32gen_x & 0xff00) << 8 | (__swap32gen_x & 0xff0000) >> 8 | (__swap32gen_x & 0xff000000) >> 24); });
  plcp_length = len & 0xfff;
  desc->plcp_length_hi = plcp_length >> 6;
  desc->plcp_length_lo = plcp_length & 0x3f;
 } else {
  plcp_length = (16 * len + rate - 1) / rate;
  if (rate == 22) {
   remainder = (16 * len) % 22;
   if (remainder != 0 && remainder < 7)
    desc->plcp_service |= 0x80;
  }
  desc->plcp_length_hi = plcp_length >> 8;
  desc->plcp_length_lo = plcp_length & 0xff;
  if (rate != 2 && (ic->ic_flags & 0x00040000))
   desc->plcp_signal |= 0x08;
 }
 for (i = 0; i < nsegs; i++) {
  desc->addr[i] = __extension__({ __uint32_t __swap32gen_x = (segs[i].ds_addr); (__uint32_t)((__swap32gen_x & 0xff) << 24 | (__swap32gen_x & 0xff00) << 8 | (__swap32gen_x & 0xff0000) >> 8 | (__swap32gen_x & 0xff000000) >> 24); });
  desc->len [i] = __extension__({ __uint16_t __swap16gen_x = (segs[i].ds_len); (__uint16_t)((__swap16gen_x & 0xff) << 8 | (__swap16gen_x & 0xff00) >> 8); });
 }
}
int
rt2661_tx_mgt(struct rt2661_softc *sc, struct mbuf *m0,
    struct ieee80211_node *ni)
{
 struct ieee80211com *ic = &sc->sc_ic;
 struct rt2661_tx_desc *desc;
 struct rt2661_tx_data *data;
 struct ieee80211_frame *wh;
 uint16_t dur;
 uint32_t flags = 0;
 int rate, error;
 desc = &sc->mgtq.desc[sc->mgtq.cur];
 data = &sc->mgtq.data[sc->mgtq.cur];
 rate = (((ni->ni_chan)->ic_flags & 0x0100) != 0) ? 12 : 2;
 error = bus_dmamap_load_mbuf(sc->sc_dmat, data->map, m0,
     0x0001);
 if (error != 0) {
  printf("%s: can't map mbuf (error %d)\n",
      sc->sc_dev.dv_xname, error);
  m_freem(m0);
  return error;
 }
 if (sc->sc_drvbpf != ((void *)0)) {
  struct mbuf mb;
  struct rt2661_tx_radiotap_header *tap = &sc->sc_txtapu.th;
  tap->wt_flags = 0;
  tap->wt_rate = rate;
  tap->wt_chan_freq = __extension__({ __uint16_t __swap16gen_x = (sc->sc_curchan->ic_freq); (__uint16_t)((__swap16gen_x & 0xff) << 8 | (__swap16gen_x & 0xff00) >> 8); });
  tap->wt_chan_flags = __extension__({ __uint16_t __swap16gen_x = (sc->sc_curchan->ic_flags); (__uint16_t)((__swap16gen_x & 0xff) << 8 | (__swap16gen_x & 0xff00) >> 8); });
  mb.m_hdr.mh_data = (caddr_t)tap;
  mb.m_hdr.mh_len = sc->sc_txtap_len;
  mb.m_hdr.mh_next = m0;
  mb.m_hdr.mh_nextpkt = ((void *)0);
  mb.m_hdr.mh_type = 0;
  mb.m_hdr.mh_flags = 0;
  bpf_mtap(sc->sc_drvbpf, &mb, (1<<1));
 }
 data->m = m0;
 data->ni = ni;
 wh = ((struct ieee80211_frame *)((m0)->m_hdr.mh_data));
 if (!(*(wh->i_addr1) & 0x01)) {
  flags |= (1 << 3);
  dur = rt2661_txtime(14, rate, ic->ic_flags) +
      sc->sifs;
  *(uint16_t *)wh->i_dur = __extension__({ __uint16_t __swap16gen_x = (dur); (__uint16_t)((__swap16gen_x & 0xff) << 8 | (__swap16gen_x & 0xff00) >> 8); });
  if ((wh->i_fc[0] &
      (0x0c | 0xf0)) ==
      (0x00 | 0x50))
   flags |= (1 << 4);
 }
 rt2661_setup_tx_desc(sc, desc, flags, 0 ,
     m0->M_dat.MH.MH_pkthdr.len, rate, data->map->dm_segs, data->map->dm_nsegs,
     13, (100 + 1));
 bus_dmamap_sync(sc->sc_dmat, data->map, 0, data->map->dm_mapsize,
     0x04);
 bus_dmamap_sync(sc->sc_dmat, sc->mgtq.map,
     sc->mgtq.cur * (sizeof (struct rt2661_tx_desc)), (sizeof (struct rt2661_tx_desc)),
     0x04);
 ;
 sc->mgtq.queued++;
 sc->mgtq.cur = (sc->mgtq.cur + 1) % 32;
 RAL_WRITE(sc, 0x3430, (1 << 4));
 return 0;
}
int
rt2661_tx_data(struct rt2661_softc *sc, struct mbuf *m0,
    struct ieee80211_node *ni, int ac)
{
 struct ieee80211com *ic = &sc->sc_ic;
 struct rt2661_tx_ring *txq = &sc->txq[ac];
 struct rt2661_node *rn;
 struct rt2661_tx_desc *desc;
 struct rt2661_tx_data *data;
 struct ieee80211_frame *wh;
 struct ieee80211_key *k;
 struct mbuf *m1;
 uint16_t dur;
 uint32_t flags = 0;
 int pktlen, rate, needcts = 0, needrts = 0, error;
 rn = ((ni == ic->ic_bss) ? ((void *)0) : (struct rt2661_node *)ni);
 wh = ((struct ieee80211_frame *)((m0)->m_hdr.mh_data));
 if (wh->i_fc[1] & 0x40) {
  k = ieee80211_get_txkey(ic, wh, ni);
  if ((m0 = ieee80211_encrypt(ic, m0, k)) == ((void *)0))
   return 55;
  wh = ((struct ieee80211_frame *)((m0)->m_hdr.mh_data));
 }
 pktlen = m0->M_dat.MH.MH_pkthdr.len + 4;
 if ((*(wh->i_addr1) & 0x01)) {
  rate = ni->ni_rates.rs_rates[0];
 } else if (ic->ic_fixed_rate != -1) {
  rate = ic->ic_sup_rates[ic->ic_curmode].
      rs_rates[ic->ic_fixed_rate];
 } else
  rate = ni->ni_rates.rs_rates[ni->ni_txrate];
 if (rate == 0)
  rate = 2;
 rate &= 0x7f;
 if (ic->ic_opmode == IEEE80211_M_STA && (ni->ni_txseq & 7))
  flags |= (1 << 6);
 if (!(*(wh->i_addr1) & 0x01)) {
  if (pktlen > ic->ic_rtsthreshold) {
   needrts = 1;
  } else if ((ic->ic_flags & 0x00100000) &&
      ((rate) >= 12 && (rate) != 22)) {
   if (ic->ic_protmode == IEEE80211_PROT_CTSONLY)
    needcts = 1;
   else if (ic->ic_protmode == IEEE80211_PROT_RTSCTS)
    needrts = 1;
  }
 }
 if (needrts || needcts) {
  struct mbuf *mprot;
  int protrate, ackrate;
  protrate = (((ni->ni_chan)->ic_flags & 0x0100) != 0) ? 12 : 2;
  ackrate = rt2661_ack_rate(ic, rate);
  dur = rt2661_txtime(pktlen, rate, ic->ic_flags) +
        rt2661_txtime(14, ackrate, ic->ic_flags) +
        2 * sc->sifs;
  if (needrts) {
   dur += rt2661_txtime(14, rt2661_ack_rate(ic,
       protrate), ic->ic_flags) + sc->sifs;
   mprot = ieee80211_get_rts(ic, wh, dur);
  } else {
   mprot = ieee80211_get_cts_to_self(ic, dur);
  }
  if (mprot == ((void *)0)) {
   printf("%s: could not allocate protection frame\n",
       sc->sc_dev.dv_xname);
   m_freem(m0);
   return 55;
  }
  desc = &txq->desc[txq->cur];
  data = &txq->data[txq->cur];
  error = bus_dmamap_load_mbuf(sc->sc_dmat, data->map, mprot,
      0x0001);
  if (error != 0) {
   printf("%s: can't map mbuf (error %d)\n",
       sc->sc_dev.dv_xname, error);
   m_freem(mprot);
   m_freem(m0);
   return error;
  }
  data->m = mprot;
  data->ni = ieee80211_ref_node(ni);
  rt2661_setup_tx_desc(sc, desc,
      (needrts ? (1 << 3) : 0) | (1 << 2),
      0, mprot->M_dat.MH.MH_pkthdr.len, protrate, data->map->dm_segs,
      data->map->dm_nsegs, ac,
          (rn && rn->amn) ? rn->amn->id : (100 + 1));
  bus_dmamap_sync(sc->sc_dmat, data->map, 0,
      data->map->dm_mapsize, 0x04);
  bus_dmamap_sync(sc->sc_dmat, txq->map,
      txq->cur * (sizeof (struct rt2661_tx_desc)), (sizeof (struct rt2661_tx_desc)),
      0x04);
  txq->queued++;
  txq->cur = (txq->cur + 1) % 32;
  flags |= (1 << 7) | (1 << 6);
 }
 data = &txq->data[txq->cur];
 desc = &txq->desc[txq->cur];
 error = bus_dmamap_load_mbuf(sc->sc_dmat, data->map, m0,
     0x0001);
 if (error != 0 && error != 27) {
  printf("%s: can't map mbuf (error %d)\n",
      sc->sc_dev.dv_xname, error);
  m_freem(m0);
  return error;
 }
 if (error != 0) {
  m1 = m_gethdr((0x0002), (1));
  if (m1 == ((void *)0)) {
   m_freem(m0);
   return 55;
  }
  if (m0->M_dat.MH.MH_pkthdr.len > ((256 - sizeof(struct m_hdr)) - sizeof(struct pkthdr))) {
   (void) m_clget((m1), (0x0002), (1 << 11));
   if (!(m1->m_hdr.mh_flags & 0x0001)) {
    m_freem(m0);
    m_freem(m1);
    return 55;
   }
  }
  m_copydata(m0, 0, m0->M_dat.MH.MH_pkthdr.len, ((caddr_t)((m1)->m_hdr.mh_data)));
  m1->M_dat.MH.MH_pkthdr.len = m1->m_hdr.mh_len = m0->M_dat.MH.MH_pkthdr.len;
  m_freem(m0);
  m0 = m1;
  error = bus_dmamap_load_mbuf(sc->sc_dmat, data->map, m0,
      0x0001);
  if (error != 0) {
   printf("%s: can't map mbuf (error %d)\n",
       sc->sc_dev.dv_xname, error);
   m_freem(m0);
   return error;
  }
  wh = ((struct ieee80211_frame *)((m0)->m_hdr.mh_data));
 }
 if (sc->sc_drvbpf != ((void *)0)) {
  struct mbuf mb;
  struct rt2661_tx_radiotap_header *tap = &sc->sc_txtapu.th;
  tap->wt_flags = 0;
  tap->wt_rate = rate;
  tap->wt_chan_freq = __extension__({ __uint16_t __swap16gen_x = (sc->sc_curchan->ic_freq); (__uint16_t)((__swap16gen_x & 0xff) << 8 | (__swap16gen_x & 0xff00) >> 8); });
  tap->wt_chan_flags = __extension__({ __uint16_t __swap16gen_x = (sc->sc_curchan->ic_flags); (__uint16_t)((__swap16gen_x & 0xff) << 8 | (__swap16gen_x & 0xff00) >> 8); });
  mb.m_hdr.mh_data = (caddr_t)tap;
  mb.m_hdr.mh_len = sc->sc_txtap_len;
  mb.m_hdr.mh_next = m0;
  mb.m_hdr.mh_nextpkt = ((void *)0);
  mb.m_hdr.mh_type = 0;
  mb.m_hdr.mh_flags = 0;
  bpf_mtap(sc->sc_drvbpf, &mb, (1<<1));
 }
 data->m = m0;
 data->ni = ni;
 if (!(*(wh->i_addr1) & 0x01)) {
  flags |= (1 << 3);
  dur = rt2661_txtime(14, rt2661_ack_rate(ic, rate),
      ic->ic_flags) + sc->sifs;
  *(uint16_t *)wh->i_dur = __extension__({ __uint16_t __swap16gen_x = (dur); (__uint16_t)((__swap16gen_x & 0xff) << 8 | (__swap16gen_x & 0xff00) >> 8); });
 }
 rt2661_setup_tx_desc(sc, desc, flags, 0, m0->M_dat.MH.MH_pkthdr.len, rate,
     data->map->dm_segs, data->map->dm_nsegs, ac,
     (rn && rn->amn) ? rn->amn->id : (100 + 1));
 bus_dmamap_sync(sc->sc_dmat, data->map, 0, data->map->dm_mapsize,
     0x04);
 bus_dmamap_sync(sc->sc_dmat, txq->map, txq->cur * (sizeof (struct rt2661_tx_desc)),
     (sizeof (struct rt2661_tx_desc)), 0x04);
 ;
 txq->queued++;
 txq->cur = (txq->cur + 1) % 32;
 RAL_WRITE(sc, 0x3430, 1);
 return 0;
}
void
rt2661_start(struct ifnet *ifp)
{
 struct rt2661_softc *sc = ifp->if_softc;
 struct ieee80211com *ic = &sc->sc_ic;
 struct mbuf *m0;
 struct ieee80211_node *ni;
 if (!(ifp->if_flags & 0x40) || ifq_is_oactive(&ifp->if_snd))
  return;
 for (;;) {
  if (((&(&ic->ic_mgtq)->mq_list)->ml_len) > 0) {
   if (sc->mgtq.queued >= 32) {
    ifq_set_oactive(&ifp->if_snd);
    break;
   }
   m0 = mq_dequeue(&ic->ic_mgtq);
   if (m0 == ((void *)0))
    continue;
   ni = m0->M_dat.MH.MH_pkthdr.ph_cookie;
   if (ic->ic_rawbpf != ((void *)0))
    bpf_mtap(ic->ic_rawbpf, m0, (1<<1));
   if (rt2661_tx_mgt(sc, m0, ni) != 0)
    break;
  } else {
   if (sc->txq[0].queued >= 32 - 1) {
    ifq_set_oactive(&ifp->if_snd);
    break;
   }
   if (ic->ic_state != IEEE80211_S_RUN)
    break;
   do { (m0) = ifq_dequeue(&ifp->if_snd); } while ( 0);
   if (m0 == ((void *)0))
    break;
   if (ifp->if_bpf != ((void *)0))
    bpf_mtap(ifp->if_bpf, m0, (1<<1));
   m0 = ieee80211_encap(ifp, m0, &ni);
   if (m0 == ((void *)0))
    continue;
   if (ic->ic_rawbpf != ((void *)0))
    bpf_mtap(ic->ic_rawbpf, m0,
        (1<<1));
   if (rt2661_tx_data(sc, m0, ni, 0) != 0) {
    if (ni != ((void *)0))
     ieee80211_release_node(ic, ni);
    ifp->if_data.ifi_oerrors++;
    break;
   }
  }
  sc->sc_tx_timer = 5;
  ifp->if_timer = 1;
 }
}
void
rt2661_watchdog(struct ifnet *ifp)
{
 struct rt2661_softc *sc = ifp->if_softc;
 ifp->if_timer = 0;
 if (sc->sc_tx_timer > 0) {
  if (--sc->sc_tx_timer == 0) {
   printf("%s: device timeout\n", sc->sc_dev.dv_xname);
   rt2661_init(ifp);
   ifp->if_data.ifi_oerrors++;
   return;
  }
  ifp->if_timer = 1;
 }
 ieee80211_watchdog(ifp);
}
int
rt2661_ioctl(struct ifnet *ifp, u_long cmd, caddr_t data)
{
 struct rt2661_softc *sc = ifp->if_softc;
 struct ieee80211com *ic = &sc->sc_ic;
 struct ifreq *ifr;
 int s, error = 0;
 s = _splraise(6);
 switch (cmd) {
 case ((unsigned long)0x80000000 | ((sizeof(struct ifreq) & 0x1fff) << 16) | ((('i')) << 8) | ((12))):
  ifp->if_flags |= 0x1;
 case ((unsigned long)0x80000000 | ((sizeof(struct ifreq) & 0x1fff) << 16) | ((('i')) << 8) | ((16))):
  if (ifp->if_flags & 0x1) {
   if (ifp->if_flags & 0x40)
    rt2661_update_promisc(sc);
   else
    rt2661_init(ifp);
  } else {
   if (ifp->if_flags & 0x40)
    rt2661_stop(ifp, 1);
  }
  break;
 case ((unsigned long)0x80000000 | ((sizeof(struct ifreq) & 0x1fff) << 16) | ((('i')) << 8) | ((49))):
 case ((unsigned long)0x80000000 | ((sizeof(struct ifreq) & 0x1fff) << 16) | ((('i')) << 8) | ((50))):
  ifr = (struct ifreq *)data;
  error = (cmd == ((unsigned long)0x80000000 | ((sizeof(struct ifreq) & 0x1fff) << 16) | ((('i')) << 8) | ((49)))) ?
      ether_addmulti(ifr, &ic->ic_ac) :
      ether_delmulti(ifr, &ic->ic_ac);
  if (error == 52)
   error = 0;
  break;
 case ((unsigned long)0x80000000 | ((sizeof(struct ieee80211chanreq) & 0x1fff) << 16) | ((('i')) << 8) | ((238))):
  error = ieee80211_ioctl(ifp, cmd, data);
  if (error == 52 &&
      ic->ic_opmode == IEEE80211_M_MONITOR) {
   if ((ifp->if_flags & (0x1 | 0x40)) ==
       (0x1 | 0x40))
    rt2661_set_chan(sc, ic->ic_ibss_chan);
   error = 0;
  }
  break;
 default:
  error = ieee80211_ioctl(ifp, cmd, data);
 }
 if (error == 52) {
  if ((ifp->if_flags & (0x1 | 0x40)) ==
      (0x1 | 0x40))
   rt2661_init(ifp);
  error = 0;
 }
 _splx(s);
 return error;
}
void
rt2661_bbp_write(struct rt2661_softc *sc, uint8_t reg64, uint8_t val)
{
 uint32_t tmp;
 int ntries;
 for (ntries = 0; ntries < 100; ntries++) {
  if (!(RAL_READ(sc, 0x308c) & (1 << 16)))
   break;
  delay(1);
 }
 if (ntries == 100) {
  printf("%s: could not write to BBP\n", sc->sc_dev.dv_xname);
  return;
 }
 tmp = (1 << 16) | (reg64 & 0x7f) << 8 | val;
 RAL_WRITE(sc, 0x308c, tmp);
 ;
}
uint8_t
rt2661_bbp_read(struct rt2661_softc *sc, uint8_t reg64)
{
 uint32_t val;
 int ntries;
 for (ntries = 0; ntries < 100; ntries++) {
  if (!(RAL_READ(sc, 0x308c) & (1 << 16)))
   break;
  delay(1);
 }
 if (ntries == 100) {
  printf("%s: could not read from BBP\n", sc->sc_dev.dv_xname);
  return 0;
 }
 val = (1 << 16) | (1 << 15) | reg64 << 8;
 RAL_WRITE(sc, 0x308c, val);
 for (ntries = 0; ntries < 100; ntries++) {
  val = RAL_READ(sc, 0x308c);
  if (!(val & (1 << 16)))
   return val & 0xff;
  delay(1);
 }
 printf("%s: could not read from BBP\n", sc->sc_dev.dv_xname);
 return 0;
}
void
rt2661_rf_write(struct rt2661_softc *sc, uint8_t reg64, uint32_t val)
{
 uint32_t tmp;
 int ntries;
 for (ntries = 0; ntries < 100; ntries++) {
  if (!(RAL_READ(sc, 0x3090) & (1U << 31)))
   break;
  delay(1);
 }
 if (ntries == 100) {
  printf("%s: could not write to RF\n", sc->sc_dev.dv_xname);
  return;
 }
 tmp = (1U << 31) | (21U << 24) | (val & 0x1fffff) << 2 |
     (reg64 & 3);
 RAL_WRITE(sc, 0x3090, tmp);
 sc->rf_regs[reg64] = val;
 ;
}
int
rt2661_tx_cmd(struct rt2661_softc *sc, uint8_t cmd, uint16_t arg)
{
 if (RAL_READ(sc, 0x2100) & (1 << 24))
  return 5;
 RAL_WRITE(sc, 0x2100,
     (1 << 24) | 0xff << 16 | arg);
 RAL_WRITE(sc, 0x0008, (1 << 7) | cmd);
 return 0;
}
void
rt2661_select_antenna(struct rt2661_softc *sc)
{
 uint8_t bbp4, bbp77;
 uint32_t tmp;
 bbp4 = rt2661_bbp_read(sc, 4);
 bbp77 = rt2661_bbp_read(sc, 77);
 tmp = RAL_READ(sc, 0x3040);
 RAL_WRITE(sc, 0x3040, tmp | (1 << 16));
 rt2661_bbp_write(sc, 4, bbp4);
 rt2661_bbp_write(sc, 77, bbp77);
 RAL_WRITE(sc, 0x3040, tmp);
}
void
rt2661_enable_mrr(struct rt2661_softc *sc)
{
 struct ieee80211com *ic = &sc->sc_ic;
 uint32_t tmp;
 tmp = RAL_READ(sc, 0x3050);
 tmp &= ~(1 << 22);
 if (!(((ic->ic_bss->ni_chan)->ic_flags & 0x0100) != 0))
  tmp |= (1 << 22);
 tmp |= (1 << 19);
 RAL_WRITE(sc, 0x3050, tmp);
}
void
rt2661_set_txpreamble(struct rt2661_softc *sc)
{
 uint32_t tmp;
 tmp = RAL_READ(sc, 0x3050);
 tmp &= ~(1 << 18);
 if (sc->sc_ic.ic_flags & 0x00040000)
  tmp |= (1 << 18);
 RAL_WRITE(sc, 0x3050, tmp);
}
void
rt2661_set_basicrates(struct rt2661_softc *sc)
{
 struct ieee80211com *ic = &sc->sc_ic;
 if (ic->ic_curmode == IEEE80211_MODE_11B) {
  RAL_WRITE(sc, 0x3054, 0x3);
 } else if (ic->ic_curmode == IEEE80211_MODE_11A) {
  RAL_WRITE(sc, 0x3054, 0x150);
 } else {
  RAL_WRITE(sc, 0x3054, 0xf);
 }
}
void
rt2661_select_band(struct rt2661_softc *sc, struct ieee80211_channel *c)
{
 uint8_t bbp17, bbp35, bbp96, bbp97, bbp98, bbp104;
 uint32_t tmp;
 bbp17 = 0x20; bbp96 = 0x48; bbp104 = 0x2c;
 bbp35 = 0x50; bbp97 = 0x48; bbp98 = 0x48;
 if ((((c)->ic_flags & 0x0100) != 0)) {
  bbp17 += 0x08; bbp96 += 0x10; bbp104 += 0x0c;
  bbp35 += 0x10; bbp97 += 0x10; bbp98 += 0x10;
 }
 if (((((c)->ic_flags & 0x0080) != 0) && sc->ext_2ghz_lna) ||
     ((((c)->ic_flags & 0x0100) != 0) && sc->ext_5ghz_lna)) {
  bbp17 += 0x10; bbp96 += 0x10; bbp104 += 0x10;
 }
 sc->bbp17 = bbp17;
 rt2661_bbp_write(sc, 17, bbp17);
 rt2661_bbp_write(sc, 96, bbp96);
 rt2661_bbp_write(sc, 104, bbp104);
 if (((((c)->ic_flags & 0x0080) != 0) && sc->ext_2ghz_lna) ||
     ((((c)->ic_flags & 0x0100) != 0) && sc->ext_5ghz_lna)) {
  rt2661_bbp_write(sc, 75, 0x80);
  rt2661_bbp_write(sc, 86, 0x80);
  rt2661_bbp_write(sc, 88, 0x80);
 }
 rt2661_bbp_write(sc, 35, bbp35);
 rt2661_bbp_write(sc, 97, bbp97);
 rt2661_bbp_write(sc, 98, bbp98);
 tmp = RAL_READ(sc, 0x3080);
 tmp &= ~((1 << 16) | (1 << 17));
 if ((((c)->ic_flags & 0x0080) != 0))
  tmp |= (1 << 16);
 else
  tmp |= (1 << 17);
 RAL_WRITE(sc, 0x3080, tmp);
 sc->sifs = (((c)->ic_flags & 0x0100) != 0) ? 16 : 10;
}
void
rt2661_set_chan(struct rt2661_softc *sc, struct ieee80211_channel *c)
{
 struct ieee80211com *ic = &sc->sc_ic;
 const struct rfprog *rfprog;
 uint8_t bbp3, bbp94 = 6;
 int8_t power;
 u_int i, chan;
 chan = ieee80211_chan2ieee(ic, c);
 if (chan == 0 || chan == 0xffff)
  return;
 rfprog = (sc->rfprog == 0) ? rt2661_rf5225_1 : rt2661_rf5225_2;
 for (i = 0; rfprog[i].chan != chan; i++);
 power = sc->txpow[i];
 if (power < 0) {
  bbp94 += power;
  power = 0;
 } else if (power > 31) {
  bbp94 += power - 31;
  power = 31;
 }
 if (c->ic_flags != sc->sc_curchan->ic_flags) {
  rt2661_select_band(sc, c);
  rt2661_select_antenna(sc);
 }
 sc->sc_curchan = c;
 rt2661_rf_write(sc, 0, rfprog[i].r1);
 rt2661_rf_write(sc, 2, rfprog[i].r2);
 rt2661_rf_write(sc, 1, rfprog[i].r3 | power << 7);
 rt2661_rf_write(sc, 3, rfprog[i].r4 | sc->rffreq << 10);
 delay(200);
 rt2661_rf_write(sc, 0, rfprog[i].r1);
 rt2661_rf_write(sc, 2, rfprog[i].r2);
 rt2661_rf_write(sc, 1, rfprog[i].r3 | power << 7 | 1);
 rt2661_rf_write(sc, 3, rfprog[i].r4 | sc->rffreq << 10);
 delay(200);
 rt2661_rf_write(sc, 0, rfprog[i].r1);
 rt2661_rf_write(sc, 2, rfprog[i].r2);
 rt2661_rf_write(sc, 1, rfprog[i].r3 | power << 7);
 rt2661_rf_write(sc, 3, rfprog[i].r4 | sc->rffreq << 10);
 bbp3 = rt2661_bbp_read(sc, 3);
 bbp3 &= ~(1 << 0);
 if (sc->rf_rev == 2 || sc->rf_rev == 4)
  bbp3 |= (1 << 0);
 rt2661_bbp_write(sc, 3, bbp3);
 if (bbp94 != 6)
  rt2661_bbp_write(sc, 94, bbp94);
 if ((((c)->ic_flags & 0x0100) != 0))
  delay(1000);
}
void
rt2661_set_bssid(struct rt2661_softc *sc, const uint8_t *bssid)
{
 uint32_t tmp;
 tmp = bssid[0] | bssid[1] << 8 | bssid[2] << 16 | bssid[3] << 24;
 RAL_WRITE(sc, 0x3010, tmp);
 tmp = bssid[4] | bssid[5] << 8 | 3 << 16;
 RAL_WRITE(sc, 0x3014, tmp);
}
void
rt2661_set_macaddr(struct rt2661_softc *sc, const uint8_t *addr)
{
 uint32_t tmp;
 tmp = addr[0] | addr[1] << 8 | addr[2] << 16 | addr[3] << 24;
 RAL_WRITE(sc, 0x3008, tmp);
 tmp = addr[4] | addr[5] << 8 | 0xff << 16;
 RAL_WRITE(sc, 0x300c, tmp);
}
void
rt2661_update_promisc(struct rt2661_softc *sc)
{
 struct ifnet *ifp = &sc->sc_ic.ic_ac.ac_if;
 uint32_t tmp;
 tmp = RAL_READ(sc, 0x3040);
 tmp &= ~(1 << 20);
 if (!(ifp->if_flags & 0x100))
  tmp |= (1 << 20);
 RAL_WRITE(sc, 0x3040, tmp);
 ;
}
void
rt2661_updateslot(struct ieee80211com *ic)
{
 struct rt2661_softc *sc = ic->ic_ac.ac_if.if_softc;
 if (ic->ic_opmode == IEEE80211_M_HOSTAP) {
  sc->sc_flags |= (1 << 1);
 } else
  rt2661_set_slottime(sc);
}
void
rt2661_set_slottime(struct rt2661_softc *sc)
{
 struct ieee80211com *ic = &sc->sc_ic;
 uint8_t slottime;
 uint32_t tmp;
 slottime = (ic->ic_flags & 0x00020000) ?
     9: 20;
 tmp = RAL_READ(sc, 0x3024);
 tmp = (tmp & ~0xff) | slottime;
 RAL_WRITE(sc, 0x3024, tmp);
 ;
}
const char *
rt2661_get_rf(int rev)
{
 switch (rev) {
 case 1: return "RT5225";
 case 2: return "RT5325 (MIMO XR)";
 case 3: return "RT2527";
 case 4: return "RT2529 (MIMO XR)";
 default: return "unknown";
 }
}
void
rt2661_read_eeprom(struct rt2661_softc *sc)
{
 struct ieee80211com *ic = &sc->sc_ic;
 uint16_t val;
 int i;
 val = rt2661_eeprom_read(sc, 0x02);
 ic->ic_myaddr[0] = val & 0xff;
 ic->ic_myaddr[1] = val >> 8;
 val = rt2661_eeprom_read(sc, 0x03);
 ic->ic_myaddr[2] = val & 0xff;
 ic->ic_myaddr[3] = val >> 8;
 val = rt2661_eeprom_read(sc, 0x04);
 ic->ic_myaddr[4] = val & 0xff;
 ic->ic_myaddr[5] = val >> 8;
 val = rt2661_eeprom_read(sc, 0x10);
 sc->rf_rev = (val >> 11) & 0x1f;
 sc->hw_radio = (val >> 10) & 0x1;
 sc->rx_ant = (val >> 4) & 0x3;
 sc->tx_ant = (val >> 2) & 0x3;
 sc->nb_ant = val & 0x3;
 ;
 val = rt2661_eeprom_read(sc, 0x11);
 sc->ext_5ghz_lna = (val >> 6) & 0x1;
 sc->ext_2ghz_lna = (val >> 4) & 0x1;
 ;
 val = rt2661_eeprom_read(sc, 0x4d);
 if ((val & 0xff) != 0xff)
  sc->rssi_2ghz_corr = (int8_t)(val & 0xff);
 val = rt2661_eeprom_read(sc, 0x4e);
 if ((val & 0xff) != 0xff)
  sc->rssi_5ghz_corr = (int8_t)(val & 0xff);
 if (sc->ext_2ghz_lna)
  sc->rssi_2ghz_corr -= 14;
 if (sc->ext_5ghz_lna)
  sc->rssi_5ghz_corr -= 14;
 ;
 val = rt2661_eeprom_read(sc, 0x2f);
 if ((val >> 8) != 0xff)
  sc->rfprog = (val >> 8) & 0x3;
 if ((val & 0xff) != 0xff)
  sc->rffreq = val & 0xff;
 ;
 for (i = 0; i < 19; i++) {
  val = rt2661_eeprom_read(sc, 0x23 + i);
  sc->txpow[i * 2] = (int8_t)(val >> 8);
  ;
  sc->txpow[i * 2 + 1] = (int8_t)(val & 0xff);
  ;
 }
 for (i = 0; i < 16; i++) {
  val = rt2661_eeprom_read(sc, 0x13 + i);
  if (val == 0 || val == 0xffff)
   continue;
  sc->bbp_prom[i].reg64 = val >> 8;
  sc->bbp_prom[i].val = val & 0xff;
  ;
 }
}
int
rt2661_bbp_init(struct rt2661_softc *sc)
{
 int i, ntries;
 for (ntries = 0; ntries < 100; ntries++) {
  const uint8_t val = rt2661_bbp_read(sc, 0);
  if (val != 0 && val != 0xff)
   break;
  delay(100);
 }
 if (ntries == 100) {
  printf("%s: timeout waiting for BBP\n", sc->sc_dev.dv_xname);
  return 5;
 }
 for (i = 0; i < (sizeof((rt2661_def_bbp)) / sizeof((rt2661_def_bbp)[0])); i++) {
  rt2661_bbp_write(sc, rt2661_def_bbp[i].reg64,
      rt2661_def_bbp[i].val);
 }
 for (i = 0; i < 16; i++) {
  if (sc->bbp_prom[i].reg64 == 0)
   continue;
  rt2661_bbp_write(sc, sc->bbp_prom[i].reg64, sc->bbp_prom[i].val);
 }
 return 0;
}
int
rt2661_init(struct ifnet *ifp)
{
 struct rt2661_softc *sc = ifp->if_softc;
 struct ieee80211com *ic = &sc->sc_ic;
 uint32_t tmp, sta[3];
 int i, ntries;
 if (!(sc->sc_flags & (1 << 0))) {
  if (sc->sc_enable != ((void *)0) && (*sc->sc_enable)(sc) != 0) {
   printf("%s: could not enable device\n",
       sc->sc_dev.dv_xname);
   return 5;
  }
  sc->sc_flags |= (1 << 0);
 }
 rt2661_stop(ifp, 0);
 if (!(sc->sc_flags & (1 << 3))) {
  if (rt2661_load_microcode(sc) != 0) {
   printf("%s: could not load 8051 microcode\n",
       sc->sc_dev.dv_xname);
   rt2661_stop(ifp, 1);
   return 5;
  }
  sc->sc_flags |= (1 << 3);
 }
 RAL_WRITE(sc, 0x3404, sc->txq[1].physaddr);
 RAL_WRITE(sc, 0x3400, sc->txq[0].physaddr);
 RAL_WRITE(sc, 0x3408, sc->txq[2].physaddr);
 RAL_WRITE(sc, 0x340c, sc->txq[3].physaddr);
 RAL_WRITE(sc, 0x3410, sc->mgtq.physaddr);
 RAL_WRITE(sc, 0x3450, sc->rxq.physaddr);
 RAL_WRITE(sc, 0x3418,
     32 << 24 |
     32 << 16 |
     32 << 8 |
     32);
 RAL_WRITE(sc, 0x341c,
     ((sizeof (struct rt2661_tx_desc)) / 4) << 16 |
     32 << 8 |
     32);
 RAL_WRITE(sc, 0x3454,
     4 << 16 |
     ((sizeof (struct rt2661_rx_desc)) / 4) << 8 |
     64);
 RAL_WRITE(sc, 0x342c, 0xaa);
 RAL_WRITE(sc, 0x3434, 0x1f);
 RAL_WRITE(sc, 0x3458, 2);
 for (i = 0; i < (sizeof((rt2661_def_mac)) / sizeof((rt2661_def_mac)[0])); i++)
  RAL_WRITE(sc, rt2661_def_mac[i].reg64, rt2661_def_mac[i].val);
 __builtin_memcpy((ic->ic_myaddr), (((caddr_t)((ifp->if_sadl)->sdl_data + (ifp->if_sadl)->sdl_nlen))), (6));
 rt2661_set_macaddr(sc, ic->ic_myaddr);
 RAL_WRITE(sc, 0x3004, 3);
 RAL_WRITE(sc, 0x3004, 0);
 for (ntries = 0; ntries < 1000; ntries++) {
  if (RAL_READ(sc, 0x3030) & 8)
   break;
  delay(1000);
 }
 if (ntries == 1000) {
  printf("timeout waiting for BBP/RF to wakeup\n");
  rt2661_stop(ifp, 1);
  return 5;
 }
 if (rt2661_bbp_init(sc) != 0) {
  rt2661_stop(ifp, 1);
  return 5;
 }
 sc->sc_curchan = ic->ic_bss->ni_chan = ic->ic_ibss_chan;
 rt2661_select_band(sc, sc->sc_curchan);
 rt2661_select_antenna(sc);
 rt2661_set_chan(sc, sc->sc_curchan);
 tmp = RAL_READ(sc, 0x3040) & 0xffff;
 tmp |= (1 << 18) | (1 << 17);
 if (ic->ic_opmode != IEEE80211_M_MONITOR) {
  tmp |= (1 << 19) | (1 << 22) |
         (1 << 25);
  if (ic->ic_opmode != IEEE80211_M_HOSTAP)
   tmp |= (1 << 21);
  if (!(ifp->if_flags & 0x100))
   tmp |= (1 << 20);
 }
 RAL_WRITE(sc, 0x3040, tmp);
 RAL_READ_REGION_4(sc, 0x30c0, sta, (sizeof((sta)) / sizeof((sta)[0])));
 RAL_WRITE(sc, 0x3004, 4);
 RAL_WRITE(sc, 0x3468, 0xffffffff);
 RAL_WRITE(sc, 0x346c, 0x0000ff10);
 RAL_WRITE(sc, 0x0018, 0);
 RAL_WRITE(sc, 0x3458, 1);
 ifp->if_flags |= 0x40;
 ifq_clr_oactive(&ifp->if_snd);
 if (ic->ic_opmode != IEEE80211_M_MONITOR)
  (((ic)->ic_newstate)((ic), (IEEE80211_S_SCAN), (-1)));
 else
  (((ic)->ic_newstate)((ic), (IEEE80211_S_RUN), (-1)));
 return 0;
}
void
rt2661_stop(struct ifnet *ifp, int disable)
{
 struct rt2661_softc *sc = ifp->if_softc;
 struct ieee80211com *ic = &sc->sc_ic;
 uint32_t tmp;
 int ac;
 sc->sc_tx_timer = 0;
 ifp->if_timer = 0;
 ifp->if_flags &= ~0x40;
 ifq_clr_oactive(&ifp->if_snd);
 (((ic)->ic_newstate)((ic), (IEEE80211_S_INIT), (-1)));
 rt2661_amrr_node_free_all(sc);
 RAL_WRITE(sc, 0x3430, 0x1f << 16);
 tmp = RAL_READ(sc, 0x3040);
 RAL_WRITE(sc, 0x3040, tmp | (1 << 16));
 RAL_WRITE(sc, 0x3004, 3);
 RAL_WRITE(sc, 0x3004, 0);
 RAL_WRITE(sc, 0x346c, 0xffffff7f);
 RAL_WRITE(sc, 0x0018, 0xffffffff);
 RAL_WRITE(sc, 0x3468, 0xffffffff);
 RAL_WRITE(sc, 0x0014, 0xffffffff);
 for (ac = 0; ac < 4; ac++)
  rt2661_reset_tx_ring(sc, &sc->txq[ac]);
 rt2661_reset_tx_ring(sc, &sc->mgtq);
 rt2661_reset_rx_ring(sc, &sc->rxq);
 if (disable && sc->sc_disable != ((void *)0)) {
  if (sc->sc_flags & (1 << 0)) {
   (*sc->sc_disable)(sc);
   sc->sc_flags &= ~((1 << 0) | (1 << 3));
  }
 }
}
int
rt2661_load_microcode(struct rt2661_softc *sc)
{
 int ntries;
 RAL_WRITE(sc, 0x000c, (1 << 1));
 RAL_WRITE(sc, 0x2100, 0);
 RAL_WRITE(sc, 0x2104, 0xffffffff);
 RAL_WRITE(sc, 0x0008, 0);
 RAL_WRITE(sc, 0x000c, (1 << 1) | (1 << 0));
 RAL_WRITE_REGION_1(sc, 0x4000, sc->ucode, sc->ucsize);
 RAL_WRITE(sc, 0x000c, (1 << 1));
 RAL_WRITE(sc, 0x000c, 0);
 for (ntries = 0; ntries < 500; ntries++) {
  if (RAL_READ(sc, 0x000c) & (1 << 2))
   break;
  delay(100);
 }
 if (ntries == 500) {
  printf("%s: timeout waiting for MCU to initialize\n",
      sc->sc_dev.dv_xname);
  return 5;
 }
 return 0;
}
void
rt2661_rx_tune(struct rt2661_softc *sc)
{
 uint8_t bbp17;
 uint16_t cca;
 int lo, hi, dbm;
 lo = 0x20;
 if ((((sc->sc_curchan)->ic_flags & 0x0100) != 0))
  lo += 0x08;
 if (((((sc->sc_curchan)->ic_flags & 0x0080) != 0) && sc->ext_2ghz_lna) ||
     ((((sc->sc_curchan)->ic_flags & 0x0100) != 0) && sc->ext_5ghz_lna))
  lo += 0x10;
 hi = lo + 0x20;
 dbm = sc->avg_rssi;
 cca = RAL_READ(sc, 0x30c4) & 0xffff;
 ;
 if (dbm < -74) {
  bbp17 = sc->bbp17;
  hi -= 2 * (-74 - dbm);
  if (hi < lo)
   hi = lo;
  if (bbp17 > hi)
   bbp17 = hi;
  else if (cca > 512)
   bbp17 = min(bbp17 + 1, hi);
  else if (cca < 100)
   bbp17 = max(bbp17 - 1, lo);
 } else if (dbm < -66) {
  bbp17 = lo + 0x08;
 } else if (dbm < -58) {
  bbp17 = lo + 0x10;
 } else if (dbm < -35) {
  bbp17 = hi;
 } else {
  bbp17 = 0x60;
 }
 if (bbp17 != sc->bbp17) {
  ;
  rt2661_bbp_write(sc, 17, bbp17);
  sc->bbp17 = bbp17;
 }
}
int
rt2661_prepare_beacon(struct rt2661_softc *sc)
{
 struct ieee80211com *ic = &sc->sc_ic;
 struct ieee80211_node *ni = ic->ic_bss;
 struct rt2661_tx_desc desc;
 struct mbuf *m0;
 int rate;
 m0 = ieee80211_beacon_alloc(ic, ni);
 if (m0 == ((void *)0)) {
  printf("%s: could not allocate beacon frame\n",
      sc->sc_dev.dv_xname);
  return 55;
 }
 rate = (((ni->ni_chan)->ic_flags & 0x0100) != 0) ? 12 : 2;
 __builtin_memset((&desc), (0), (sizeof(desc)));
 rt2661_setup_tx_desc(sc, &desc, (1 << 4), (1 << 12),
     m0->M_dat.MH.MH_pkthdr.len, rate, ((void *)0), 0, 13,
     (100 + 1));
 RAL_WRITE_REGION_1(sc, 0x2c00, (uint8_t *)&desc, 24);
 RAL_WRITE_REGION_1(sc, 0x2c00 + 24,
     ((uint8_t *)((m0)->m_hdr.mh_data)), m0->M_dat.MH.MH_pkthdr.len);
 m_freem(m0);
 if (ic->ic_curmode == IEEE80211_MODE_11G) {
  sc->erp_csr =
      0x2c00 + 24 +
      sizeof (struct ieee80211_frame) +
      8 + 2 + 2 +
      ((ic->ic_flags & 0x10000000) ?
   1 : 2 + ni->ni_esslen) +
      2 + min(ni->ni_rates.rs_nrates, 8) +
      2 + 1 +
      ((ic->ic_opmode == IEEE80211_M_IBSS) ? 4 : 6) +
      2;
 }
 return 0;
}
void
rt2661_enable_tsf_sync(struct rt2661_softc *sc)
{
 struct ieee80211com *ic = &sc->sc_ic;
 uint32_t tmp;
 if (ic->ic_opmode != IEEE80211_M_STA) {
  RAL_WRITE(sc, 0x3068, 1 << 12 | 8);
 }
 tmp = RAL_READ(sc, 0x3064) & 0xff000000;
 tmp |= ic->ic_bss->ni_intval * 16;
 tmp |= (1 << 16) | (1 << 19);
 if (ic->ic_opmode == IEEE80211_M_STA)
  tmp |= (((1) & 0x3) << 17);
 else
  tmp |= (((2) & 0x3) << 17) | (1 << 20);
 RAL_WRITE(sc, 0x3064, tmp);
}
int
rt2661_get_rssi(struct rt2661_softc *sc, uint8_t raw)
{
 int lna, agc, rssi;
 lna = (raw >> 5) & 0x3;
 agc = raw & 0x1f;
 rssi = 2 * agc;
 if ((((sc->sc_curchan)->ic_flags & 0x0080) != 0)) {
  rssi += sc->rssi_2ghz_corr;
  if (lna == 1)
   rssi -= 64;
  else if (lna == 2)
   rssi -= 74;
  else if (lna == 3)
   rssi -= 90;
 } else {
  rssi += sc->rssi_5ghz_corr;
  if (lna == 1)
   rssi -= 64;
  else if (lna == 2)
   rssi -= 86;
  else if (lna == 3)
   rssi -= 100;
 }
 return rssi;
}
