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
struct consdev {
 void (*cn_probe)(struct consdev *);
 void (*cn_init)(struct consdev *);
 int (*cn_getc)(dev_t);
 void (*cn_putc)(dev_t, int);
 void (*cn_pollc)(dev_t, int);
 void (*cn_bell)(dev_t, u_int, u_int, u_int);
 dev_t cn_dev;
 u_int cn_pri;
};
extern struct consdev constab[];
extern struct consdev *cn_tab;
extern struct tty *constty;
extern struct vnode *cn_devvp;
struct knote;
void cninit(void);
int cnopen(dev_t, int, int, struct proc *);
int cnclose(dev_t, int, int, struct proc *);
int cnread(dev_t, struct uio *, int);
int cnwrite(dev_t, struct uio *, int);
int cnioctl(dev_t, u_long, caddr_t, int, struct proc *);
int cnpoll(dev_t, int, struct proc *);
int cnkqfilter(dev_t, struct knote *);
int cngetc(void);
void cnputc(int);
void cnpollc(int);
void cnbell(u_int, u_int, u_int);
void cnrint(void);
void nullcnpollc(dev_t, int);
extern char *locnames[];
extern short locnamp[];
extern short cfroots[];
extern int cfroots_size;
extern int pv_size;
extern short pv[];
extern struct timezone tz;
extern char *pdevnames[];
extern int pdevnames_size;
extern struct pdevinit pdevinit[];
int userconf_base = 16;
int userconf_maxdev = -1;
int userconf_totdev = -1;
int userconf_maxlocnames = -1;
int userconf_cnt = -1;
int userconf_lines = 12;
int userconf_histlen = 0;
int userconf_histcur = 0;
char userconf_history[1024];
int userconf_histsz = sizeof(userconf_history);
char userconf_argbuf[40];
char userconf_cmdbuf[40];
char userconf_histbuf[40];
void userconf_init(void);
int userconf_more(void);
void userconf_modify(char *, long *, long);
void userconf_hist_cmd(char);
void userconf_hist_int(long);
void userconf_hist_eoc(void);
void userconf_pnum(long);
void userconf_pdevnam(short);
void userconf_pdev(short);
int userconf_number(char *, long *, long);
int userconf_device(char *, long *, short *, short *);
int userconf_attr(char *, long *);
void userconf_change(int);
void userconf_disable(int);
void userconf_enable(int);
void userconf_help(void);
void userconf_list(void);
void userconf_show(void);
void userconf_common_attr_val(short, long *, char);
void userconf_show_attr(char *);
void userconf_common_dev(char *, int, short, short, char);
void userconf_common_attr(char *, int, char);
void userconf_add_read(char *, char, char *, int, long *);
void userconf_add(char *, int, short, short);
int userconf_parse(char *);
char *userconf_cmds[] = {
 "add", "a",
 "base", "b",
 "change", "c",
 "ddb", "D",
 "disable", "d",
 "enable", "e",
 "exit", "q",
 "find", "f",
 "help", "h",
 "list", "l",
 "lines", "L",
 "quit", "q",
 "show", "s",
 "timezone", "t",
 "verbose", "v",
 "?", "h",
 "", "",
};
void
userconf_init(void)
{
 int i = 0;
 struct cfdata *cd;
 int ln;
 while (cfdata[i].cf_attach != 0) {
  userconf_maxdev = i;
  userconf_totdev = i;
  cd = &cfdata[i];
  ln = cd->cf_locnames;
  while (locnamp[ln] != -1) {
   if (locnamp[ln] > userconf_maxlocnames)
    userconf_maxlocnames = locnamp[ln];
   ln++;
  }
  i++;
 }
 while (cfdata[i].cf_attach == 0) {
  userconf_totdev = i;
  i++;
 }
 userconf_totdev = userconf_totdev - 1;
}
int
userconf_more(void)
{
 int quit = 0;
 char c = '\0';
 if (userconf_cnt != -1) {
  if (userconf_cnt == userconf_lines) {
   printf("--- more ---");
   c = cngetc();
   userconf_cnt = 0;
   printf("\r            \r");
  }
  userconf_cnt++;
  if (c == 'q' || c == 'Q')
   quit = 1;
 }
 return (quit);
}
void
userconf_hist_cmd(char cmd)
{
 userconf_histcur = userconf_histlen;
 if (userconf_histcur < userconf_histsz) {
  userconf_history[userconf_histcur] = cmd;
  userconf_histcur++;
 }
}
void
userconf_hist_int(long val)
{
 snprintf(userconf_histbuf, sizeof userconf_histbuf, " %ld", val);
 if (userconf_histcur + strlen(userconf_histbuf) < userconf_histsz) {
  __builtin_bcopy((userconf_histbuf), (&userconf_history[userconf_histcur]), (strlen(userconf_histbuf)));
  userconf_histcur = userconf_histcur + strlen(userconf_histbuf);
 }
}
void
userconf_hist_eoc(void)
{
 if (userconf_histcur < userconf_histsz) {
  userconf_history[userconf_histcur] = '\n';
  userconf_histcur++;
  userconf_histlen = userconf_histcur;
 }
}
void
userconf_pnum(long val)
{
 if (val > -2 && val < 16) {
  printf("%ld",val);
  return;
 }
 switch (userconf_base) {
 case 8:
  printf("0%lo",val);
  break;
 case 10:
  printf("%ld",val);
  break;
 case 16:
 default:
  printf("0x%lx",val);
  break;
 }
}
void
userconf_pdevnam(short dev)
{
 struct cfdata *cd;
 cd = &cfdata[dev];
 printf("%s", cd->cf_driver->cd_name);
 switch (cd->cf_fstate) {
 case 0:
 case 3:
  printf("%d", cd->cf_unit);
  break;
 case 1:
  printf("*FOUND*");
  break;
 case 2:
 case 4:
  printf("*");
  break;
 default:
  printf("*UNKNOWN*");
  break;
 }
}
void
userconf_pdev(short devno)
{
 struct cfdata *cd;
 short *p;
 long *l;
 int ln;
 char c;
 if (devno > userconf_maxdev && devno <= userconf_totdev) {
  printf("%3d free slot (for add)\n", devno);
  return;
 }
 if (devno > userconf_totdev &&
     devno <= userconf_totdev+pdevnames_size) {
  printf("%3d %s count %d", devno,
      pdevnames[devno-userconf_totdev-1],
      abs(pdevinit[devno-userconf_totdev-1].pdev_count));
  if (pdevinit[devno-userconf_totdev-1].pdev_count < 1)
   printf(" disable");
  printf(" (pseudo device)\n");
  return;
 }
 if (devno > userconf_maxdev) {
  printf("Unknown devno (max is %d)\n", userconf_maxdev);
  return;
 }
 cd = &cfdata[devno];
 printf("%3d ", devno);
 userconf_pdevnam(devno);
 printf(" at");
 c = ' ';
 p = cd->cf_parents;
 if (*p == -1)
  printf(" root");
 while (*p != -1) {
  printf("%c", c);
  userconf_pdevnam(*p++);
  c = '|';
 }
 switch (cd->cf_fstate) {
 case 0:
 case 1:
 case 2:
  break;
 case 3:
 case 4:
  printf(" disable");
  break;
 default:
  printf(" ???");
  break;
 }
 l = cd->cf_loc;
 ln = cd->cf_locnames;
 while (locnamp[ln] != -1) {
  printf(" %s ", locnames[locnamp[ln]]);
  ln++;
  userconf_pnum(*l++);
 }
 printf(" flags 0x%x\n", cd->cf_flags);
}
int
userconf_number(char *c, long *val, long limit)
{
 u_long num = 0;
 int neg = 0;
 int base = 10;
 if (*c == '-') {
  neg = 1;
  c++;
 }
 if (*c == '0') {
  base = 8;
  c++;
  if (*c == 'x' || *c == 'X') {
   base = 16;
   c++;
  }
 }
 while (*c != '\n' && *c != '\t' && *c != ' ' && *c != '\0') {
  u_char cc = *c;
  if (cc >= '0' && cc <= '9')
   cc = cc - '0';
  else if (cc >= 'a' && cc <= 'f')
   cc = cc - 'a' + 10;
  else if (cc >= 'A' && cc <= 'F')
   cc = cc - 'A' + 10;
  else
   return (-1);
  if (cc > base)
   return (-1);
  num = num * base + cc;
  c++;
 }
 if (neg && num > limit)
  return (1);
 *val = neg ? - num : num;
 return (0);
}
int
userconf_device(char *cmd, long *len, short *unit, short *state)
{
 short u = 0, s = 1;
 int l = 0;
 char *c;
 c = cmd;
 while (*c >= 'a' && *c <= 'z') {
  l++;
  c++;
 }
 if (*c == '*') {
  s = 2;
  c++;
 } else {
  while (*c >= '0' && *c <= '9') {
   s = 0;
   u = u*10 + *c - '0';
   c++;
  }
 }
 while (*c == ' ' || *c == '\t' || *c == '\n')
  c++;
 if (*c == '\0') {
  *len = l;
  *unit = u;
  *state = s;
  return(0);
 }
 return(-1);
}
int
userconf_attr(char *cmd, long *val)
{
 char *c;
 short attr = -1, i = 0, l = 0;
 c = cmd;
 while (*c != ' ' && *c != '\t' && *c != '\n' && *c != '\0') {
  c++;
  l++;
 }
 while (i <= userconf_maxlocnames) {
  if (strlen(locnames[i]) == l) {
   if (strncasecmp(cmd, locnames[i], l) == 0)
    attr = i;
  }
  i++;
 }
 if (attr == -1) {
  return (-1);
 }
 *val = attr;
 return(0);
}
void
userconf_modify(char *item, long *val, long limit)
{
 int ok = 0;
 long a;
 char *c;
 int i;
 while (!ok) {
  printf("%s [", item);
  userconf_pnum(*val);
  printf("] ? ");
  i = getsn(userconf_argbuf, sizeof(userconf_argbuf));
  c = userconf_argbuf;
  while (*c == ' ' || *c == '\t' || *c == '\n') c++;
  if (*c != '\0') {
   if (userconf_number(c, &a, limit) == 0) {
    *val = a;
    ok = 1;
   } else {
    printf("Unknown argument\n");
   }
  } else {
   ok = 1;
  }
 }
}
void
userconf_change(int devno)
{
 struct cfdata *cd;
 char c = '\0';
 long *l, tmp;
 int ln;
 if (devno <= userconf_maxdev) {
  userconf_pdev(devno);
  while (c != 'y' && c != 'Y' && c != 'n' && c != 'N') {
   printf("change (y/n) ?");
   c = cngetc();
   printf("\n");
  }
  if (c == 'y' || c == 'Y') {
   int share = 0, i, lklen;
   long *lk;
   userconf_hist_cmd('c');
   userconf_hist_int(devno);
   cd = &cfdata[devno];
   l = cd->cf_loc;
   ln = cd->cf_locnames;
   for (i = 0; cfdata[i].cf_driver; i++)
    if (i != devno && cfdata[i].cf_loc == l)
     share = 1;
   if (share) {
    for (i = 0; locnamp[ln+i] != -1 ; i++)
     ;
    lk = l = mallocarray(i, sizeof(long),
        127, 0x0002);
    if (lk == ((void *)0)) {
     printf("out of memory.\n");
     return;
    }
    lklen = i * sizeof(long);
    __builtin_bcopy((cd->cf_loc), (l), (lklen));
   }
   while (locnamp[ln] != -1) {
    userconf_modify(locnames[locnamp[ln]], l,
        0x7fffffffffffffffL);
    userconf_hist_int(*l);
    ln++;
    l++;
   }
   tmp = cd->cf_flags;
   userconf_modify("flags", &tmp, 0x7fffffff);
   userconf_hist_int(tmp);
   cd->cf_flags = tmp;
   if (share) {
    if (__builtin_memcmp((cd->cf_loc), (lk), (lklen)))
     cd->cf_loc = lk;
    else
     free(lk, 127, lklen);
   }
   printf("%3d ", devno);
   userconf_pdevnam(devno);
   printf(" changed\n");
   userconf_pdev(devno);
  }
  return;
 }
 if (devno > userconf_maxdev && devno <= userconf_totdev) {
  printf("%3d can't change free slot\n", devno);
  return;
 }
 if (devno > userconf_totdev &&
     devno <= userconf_totdev+pdevnames_size) {
  userconf_pdev(devno);
  while (c != 'y' && c != 'Y' && c != 'n' && c != 'N') {
   printf("change (y/n) ?");
   c = cngetc();
   printf("\n");
  }
  if (c == 'y' || c == 'Y') {
   userconf_hist_cmd('c');
   userconf_hist_int(devno);
   tmp = pdevinit[devno-userconf_totdev-1].pdev_count;
   userconf_modify("count", &tmp, 0x7fffffff);
   userconf_hist_int(tmp);
   pdevinit[devno-userconf_totdev-1].pdev_count = tmp;
   printf("%3d %s changed\n", devno,
       pdevnames[devno-userconf_totdev-1]);
   userconf_pdev(devno);
   userconf_hist_eoc();
  }
  return;
 }
 printf("Unknown devno (max is %d)\n", userconf_totdev+pdevnames_size);
}
void
userconf_disable(int devno)
{
 int done = 0;
 if (devno <= userconf_maxdev) {
  switch (cfdata[devno].cf_fstate) {
  case 0:
   cfdata[devno].cf_fstate = 3;
   break;
  case 2:
   cfdata[devno].cf_fstate = 4;
   break;
  case 3:
  case 4:
   done = 1;
   break;
  default:
   printf("Error unknown state\n");
   break;
  }
  printf("%3d ", devno);
  userconf_pdevnam(devno);
  if (done) {
   printf(" already");
  } else {
   userconf_hist_cmd('d');
   userconf_hist_int(devno);
   userconf_hist_eoc();
  }
  printf(" disabled\n");
  return;
 }
 if (devno > userconf_maxdev && devno <= userconf_totdev) {
  printf("%3d can't disable free slot\n", devno);
  return;
 }
 if (devno > userconf_totdev &&
     devno <= userconf_totdev+pdevnames_size) {
  printf("%3d %s", devno, pdevnames[devno-userconf_totdev-1]);
  if (pdevinit[devno-userconf_totdev-1].pdev_count < 1) {
   printf(" already ");
  } else {
   pdevinit[devno-userconf_totdev-1].pdev_count *= -1;
   userconf_hist_cmd('d');
   userconf_hist_int(devno);
   userconf_hist_eoc();
  }
  printf(" disabled\n");
  return;
 }
 printf("Unknown devno (max is %d)\n", userconf_totdev+pdevnames_size);
}
void
userconf_enable(int devno)
{
 int done = 0;
 if (devno <= userconf_maxdev) {
  switch (cfdata[devno].cf_fstate) {
  case 3:
   cfdata[devno].cf_fstate = 0;
   break;
  case 4:
   cfdata[devno].cf_fstate = 2;
   break;
  case 0:
  case 2:
   done = 1;
   break;
  default:
   printf("Error unknown state\n");
   break;
  }
  printf("%3d ", devno);
  userconf_pdevnam(devno);
  if (done) {
   printf(" already");
  } else {
   userconf_hist_cmd('e');
   userconf_hist_int(devno);
   userconf_hist_eoc();
  }
  printf(" enabled\n");
  return;
 }
 if (devno > userconf_maxdev && devno <= userconf_totdev) {
  printf("%3d can't enable free slot\n", devno);
  return;
 }
 if (devno > userconf_totdev &&
     devno <= userconf_totdev+pdevnames_size) {
  printf("%3d %s", devno, pdevnames[devno-userconf_totdev-1]);
  if (pdevinit[devno-userconf_totdev-1].pdev_count > 0) {
   printf(" already");
  } else {
   pdevinit[devno-userconf_totdev-1].pdev_count *= -1;
   userconf_hist_cmd('e');
   userconf_hist_int(devno);
   userconf_hist_eoc();
  }
  printf(" enabled\n");
  return;
 }
 printf("Unknown devno (max is %d)\n", userconf_totdev+pdevnames_size);
}
void
userconf_help(void)
{
 int j = 0, k;
 printf("command   args                description\n");
 while (*userconf_cmds[j] != '\0') {
  printf("%s", userconf_cmds[j]);
  k = strlen(userconf_cmds[j]);
  while (k < 10) {
   printf(" ");
   k++;
  }
  switch (*userconf_cmds[j+1]) {
  case 'L':
   printf("[count]             number of lines before more");
   break;
  case 'a':
   printf("dev                 add a device");
   break;
  case 'b':
   printf("8|10|16             base on large numbers");
   break;
  case 'c':
   printf("devno|dev           change devices");
   break;
  case 'D':
   printf("                    enter ddb");
   break;
  case 'd':
   printf("attr val|devno|dev  disable devices");
   break;
  case 'e':
   printf("attr val|devno|dev  enable devices");
   break;
  case 'f':
   printf("devno|dev           find devices");
   break;
  case 'h':
   printf("                    this message");
   break;
  case 'l':
   printf("                    list configuration");
   break;
  case 'q':
   printf("                    leave UKC");
   break;
  case 's':
   printf("[attr [val]]        "
      "show attributes (or devices with an attribute)");
   break;
  case 't':
   printf("[mins [dst]]        set timezone/dst");
   break;
  case 'v':
   printf("                    toggle verbose booting");
   break;
  default:
   printf("                    don't know");
   break;
  }
  printf("\n");
  j += 2;
 }
}
void
userconf_list(void)
{
 int i = 0;
 userconf_cnt = 0;
 while (i <= (userconf_totdev+pdevnames_size)) {
  if (userconf_more())
   break;
  userconf_pdev(i++);
 }
 userconf_cnt = -1;
}
void
userconf_show(void)
{
 int i = 0;
 userconf_cnt = 0;
 while (i <= userconf_maxlocnames) {
  if (userconf_more())
   break;
  printf("%s\n", locnames[i++]);
 }
 userconf_cnt = -1;
}
void
userconf_common_attr_val(short attr, long *val, char routine)
{
 struct cfdata *cd;
 long *l;
 int ln;
 int i = 0, quit = 0;
 userconf_cnt = 0;
 while (i <= userconf_maxdev) {
  cd = &cfdata[i];
  l = cd->cf_loc;
  ln = cd->cf_locnames;
  while (locnamp[ln] != -1) {
   if (locnamp[ln] == attr) {
    if (val == ((void *)0)) {
     quit = userconf_more();
     userconf_pdev(i);
    } else {
     if (*val == *l) {
      quit = userconf_more();
      switch (routine) {
      case 'e':
       userconf_enable(i);
       break;
      case 'd':
       userconf_disable(i);
       break;
      case 's':
       userconf_pdev(i);
       break;
      default:
       printf("Unknown routine /%c/\n",
           routine);
       break;
      }
     }
    }
   }
   if (quit)
    break;
   ln++;
   l++;
  }
  if (quit)
   break;
  i++;
 }
 userconf_cnt = -1;
}
void
userconf_show_attr(char *cmd)
{
 char *c;
 short attr = -1, i = 0, l = 0;
 long a;
 c = cmd;
 while (*c != ' ' && *c != '\t' && *c != '\n' && *c != '\0') {
  c++;
  l++;
 }
 while (*c == ' ' || *c == '\t' || *c == '\n') {
  c++;
 }
 while (i <= userconf_maxlocnames) {
  if (strlen(locnames[i]) == l) {
   if (strncasecmp(cmd, locnames[i], l) == 0) {
    attr = i;
   }
  }
  i++;
 }
 if (attr == -1) {
  printf("Unknown attribute\n");
  return;
 }
 if (*c == '\0') {
  userconf_common_attr_val(attr, ((void *)0), 's');
 } else {
  if (userconf_number(c, &a, 0x7fffffff) == 0) {
   userconf_common_attr_val(attr, &a, 's');
  } else {
   printf("Unknown argument\n");
  }
 }
}
void
userconf_common_dev(char *dev, int len, short unit, short state, char routine)
{
 int i = 0;
 switch (routine) {
 case 'c':
  break;
 default:
  userconf_cnt = 0;
  break;
 }
 while (cfdata[i].cf_attach != 0) {
  if (strlen(cfdata[i].cf_driver->cd_name) == len) {
   if (strncasecmp(dev, cfdata[i].cf_driver->cd_name,
     len) == 0 &&
       (state == 1 ||
        (state == 2 &&
         (cfdata[i].cf_fstate == 2 ||
          cfdata[i].cf_fstate == 4)) ||
        (state == 0 &&
         cfdata[i].cf_unit == unit &&
         (cfdata[i].cf_fstate == 0 ||
          cfdata[i].cf_fstate == 3)))) {
    if (userconf_more())
     break;
    switch (routine) {
    case 'c':
     userconf_change(i);
     break;
    case 'e':
     userconf_enable(i);
     break;
    case 'd':
     userconf_disable(i);
     break;
    case 'f':
     userconf_pdev(i);
     break;
    default:
     printf("Unknown routine /%c/\n",
         routine);
     break;
    }
   }
  }
  i++;
 }
 for (i = 0; i < pdevnames_size; i++) {
  if (strncasecmp(dev, pdevnames[i], len) == 0 &&
      state == 1) {
   switch(routine) {
   case 'c':
    userconf_change(userconf_totdev+1+i);
    break;
   case 'e':
    userconf_enable(userconf_totdev+1+i);
    break;
   case 'd':
    userconf_disable(userconf_totdev+1+i);
    break;
   case 'f':
    userconf_pdev(userconf_totdev+1+i);
    break;
   default:
    printf("Unknown pseudo routine /%c/\n",routine);
    break;
   }
  }
 }
 switch (routine) {
 case 'c':
  break;
 default:
  userconf_cnt = -1;
  break;
 }
}
void
userconf_common_attr(char *cmd, int attr, char routine)
{
 char *c;
 short l = 0;
 long a;
 c = cmd;
 while (*c != ' ' && *c != '\t' && *c != '\n' && *c != '\0') {
  c++;
  l++;
 }
 while (*c == ' ' || *c == '\t' || *c == '\n')
  c++;
 if (*c == '\0') {
  printf("Value missing for attribute\n");
  return;
 }
 if (userconf_number(c, &a, 0x7fffffff) == 0) {
  userconf_common_attr_val(attr, &a, routine);
 } else {
  printf("Unknown argument\n");
 }
}
void
userconf_add_read(char *prompt, char field, char *dev, int len, long *val)
{
 int ok = 0;
 long a;
 char *c;
 int i;
 *val = -1;
 while (!ok) {
  printf("%s ? ", prompt);
  i = getsn(userconf_argbuf, sizeof(userconf_argbuf));
  c = userconf_argbuf;
  while (*c == ' ' || *c == '\t' || *c == '\n')
   c++;
  if (*c != '\0') {
   if (userconf_number(c, &a, 0x7fffffff) == 0) {
    if (a > userconf_maxdev) {
     printf("Unknown devno (max is %d)\n",
         userconf_maxdev);
    } else if (strncasecmp(dev,
        cfdata[a].cf_driver->cd_name, len) != 0 &&
        field == 'a') {
     printf("Not same device type\n");
    } else {
     *val = a;
     ok = 1;
    }
   } else if (*c == '?') {
    userconf_common_dev(dev, len, 0,
        1, 'f');
   } else if (*c == 'q' || *c == 'Q') {
    ok = 1;
   } else {
    printf("Unknown argument\n");
   }
  } else {
   ok = 1;
  }
 }
}
void
userconf_add(char *dev, int len, short unit, short state)
{
 int found = 0;
 struct cfdata new;
 int max_unit, star_unit;
 long i = 0, val, orig;
 __builtin_memset((&new), (0), (sizeof(struct cfdata)));
 if (userconf_maxdev == userconf_totdev) {
  printf("No more space for new devices.\n");
  return;
 }
 if (state == 1) {
  printf("Device not complete number or * is missing\n");
  return;
 }
 for (i = 0; cfdata[i].cf_driver; i++)
  if (strlen(cfdata[i].cf_driver->cd_name) == len &&
      strncasecmp(dev, cfdata[i].cf_driver->cd_name, len) == 0)
   found = 1;
 if (!found) {
  printf("No device of this type exists.\n");
  return;
 }
 userconf_add_read("Clone Device (DevNo, 'q' or '?')",
     'a', dev, len, &val);
 if (val != -1) {
  orig = val;
  new = cfdata[val];
  new.cf_unit = unit;
  new.cf_fstate = state;
  userconf_add_read("Insert before Device (DevNo, 'q' or '?')",
      'i', dev, len, &val);
 }
 if (val != -1) {
  userconf_hist_cmd('a');
  userconf_hist_int(orig);
  userconf_hist_int(unit);
  userconf_hist_int(state);
  userconf_hist_int(val);
  userconf_hist_eoc();
  for (i = userconf_maxdev; val <= i; i--)
   cfdata[i+1] = cfdata[i];
  cfdata[val] = new;
  for (i = 0; i < pv_size; i++) {
   if (pv[i] != -1 && pv[i] >= val)
    pv[i]++;
  }
  for (i = 0; i < cfroots_size; i++) {
   if (cfroots[i] != -1 && cfroots[i] >= val)
    cfroots[i]++;
  }
  userconf_maxdev++;
  max_unit = -1;
  i = 0;
  while (cfdata[i].cf_attach != 0) {
   if (strlen(cfdata[i].cf_driver->cd_name) == len &&
       strncasecmp(dev, cfdata[i].cf_driver->cd_name,
       len) == 0) {
    switch (cfdata[i].cf_fstate) {
    case 0:
    case 3:
     if (cfdata[i].cf_unit > max_unit)
      max_unit = cfdata[i].cf_unit;
     break;
    default:
     break;
    }
   }
   i++;
  }
  max_unit++;
  star_unit = -1;
  i = 0;
  while (cfdata[i].cf_attach != 0) {
   if (strlen(cfdata[i].cf_driver->cd_name) == len &&
       strncasecmp(dev, cfdata[i].cf_driver->cd_name,
       len) == 0) {
    switch (cfdata[i].cf_fstate) {
    case 0:
    case 3:
     if (cfdata[i].cf_unit > star_unit)
      star_unit = cfdata[i].cf_unit;
     break;
    default:
     break;
    }
   }
   i++;
  }
  star_unit++;
  i = 0;
  while (cfdata[i].cf_attach != 0) {
   if (strlen(cfdata[i].cf_driver->cd_name) == len &&
       strncasecmp(dev, cfdata[i].cf_driver->cd_name,
       len) == 0) {
    switch (cfdata[i].cf_fstate) {
    case 2:
    case 4:
     cfdata[i].cf_unit = max_unit;
     if (cfdata[i].cf_starunit1 < star_unit)
      cfdata[i].cf_starunit1 =
          star_unit;
     break;
    default:
     break;
    }
   }
   i++;
  }
  userconf_pdev(val);
 }
}
int
userconf_parse(char *cmd)
{
 char *c, *v;
 int i = 0, j = 0, k;
 long a;
 short unit, state;
 c = cmd;
 while (*c == ' ' || *c == '\t')
  c++;
 v = c;
 while (*c != ' ' && *c != '\t' && *c != '\n' && *c != '\0') {
  c++;
  i++;
 }
 k = -1;
 while (*userconf_cmds[j] != '\0') {
  if (strlen(userconf_cmds[j]) == i) {
   if (strncasecmp(v, userconf_cmds[j], i) == 0)
    k = j;
  }
  j += 2;
 }
 while (*c == ' ' || *c == '\t' || *c == '\n')
  c++;
 if (k == -1) {
  if (*v != '\n')
   printf("Unknown command, try help\n");
 } else {
  switch (*userconf_cmds[k+1]) {
  case 'L':
   if (*c == '\0')
    printf("Argument expected\n");
   else if (userconf_number(c, &a, 0x7fffffff) == 0)
    userconf_lines = a;
   else
    printf("Unknown argument\n");
   break;
  case 'a':
   if (*c == '\0')
    printf("Dev expected\n");
   else if (userconf_device(c, &a, &unit, &state) == 0)
    userconf_add(c, a, unit, state);
   else
    printf("Unknown argument\n");
   break;
  case 'b':
   if (*c == '\0')
    printf("8|10|16 expected\n");
   else if (userconf_number(c, &a, 0x7fffffff) == 0) {
    if (a == 8 || a == 10 || a == 16) {
     userconf_base = a;
    } else {
     printf("8|10|16 expected\n");
    }
   } else
    printf("Unknown argument\n");
   break;
  case 'c':
   if (*c == '\0')
    printf("DevNo or Dev expected\n");
   else if (userconf_number(c, &a, 0x7fffffff) == 0)
    userconf_change(a);
   else if (userconf_device(c, &a, &unit, &state) == 0)
    userconf_common_dev(c, a, unit, state, 'c');
   else
    printf("Unknown argument\n");
   break;
  case 'D':
   db_enter();
   break;
  case 'd':
   if (*c == '\0')
    printf("Attr, DevNo or Dev expected\n");
   else if (userconf_attr(c, &a) == 0)
    userconf_common_attr(c, a, 'd');
   else if (userconf_number(c, &a, 0x7fffffff) == 0)
    userconf_disable(a);
   else if (userconf_device(c, &a, &unit, &state) == 0)
    userconf_common_dev(c, a, unit, state, 'd');
   else
    printf("Unknown argument\n");
   break;
  case 'e':
   if (*c == '\0')
    printf("Attr, DevNo or Dev expected\n");
   else if (userconf_attr(c, &a) == 0)
    userconf_common_attr(c, a, 'e');
   else if (userconf_number(c, &a, 0x7fffffff) == 0)
    userconf_enable(a);
   else if (userconf_device(c, &a, &unit, &state) == 0)
    userconf_common_dev(c, a, unit, state, 'e');
   else
    printf("Unknown argument\n");
   break;
  case 'f':
   if (*c == '\0')
    printf("DevNo or Dev expected\n");
   else if (userconf_number(c, &a, 0x7fffffff) == 0)
    userconf_pdev(a);
   else if (userconf_device(c, &a, &unit, &state) == 0)
    userconf_common_dev(c, a, unit, state, 'f');
   else
    printf("Unknown argument\n");
   break;
  case 'h':
   userconf_help();
   break;
  case 'l':
   if (*c == '\0')
    userconf_list();
   else
    printf("Unknown argument\n");
   break;
  case 'q':
   userconf_hist_cmd('q');
   userconf_hist_eoc();
   return(-1);
   break;
  case 's':
   if (*c == '\0')
    userconf_show();
   else
    userconf_show_attr(c);
   break;
  case 't':
   if (*c == '\0' ||
       userconf_number(c, &a, 0x7fffffff) == 0) {
    if (*c != '\0') {
     tz.tz_minuteswest = a;
     while (*c != '\n' && *c != '\t' &&
         *c != ' ' && *c != '\0')
      c++;
     while (*c == '\t' || *c == ' ')
      c++;
     if (*c != '\0' && userconf_number(c,
         &a, 0x7fffffff) == 0)
      tz.tz_dsttime = a;
     userconf_hist_cmd('t');
     userconf_hist_int(tz.tz_minuteswest);
     userconf_hist_int(tz.tz_dsttime);
     userconf_hist_eoc();
    }
    printf("timezone = %d, dst = %d\n",
        tz.tz_minuteswest, tz.tz_dsttime);
   } else
    printf("Unknown argument\n");
   break;
  case 'v':
   autoconf_verbose = !autoconf_verbose;
   printf("autoconf verbose %sabled\n",
       autoconf_verbose ? "en" : "dis");
   break;
  default:
   printf("Unknown command\n");
   break;
  }
 }
 return(0);
}
void
user_config(void)
{
 userconf_init();
 printf("User Kernel Config\n");
 cnpollc(1);
 while (1) {
  printf("UKC> ");
  if (getsn(userconf_cmdbuf, sizeof(userconf_cmdbuf)) > 0 &&
      userconf_parse(userconf_cmdbuf))
   break;
 }
 cnpollc(0);
 printf("Continuing...\n");
}
