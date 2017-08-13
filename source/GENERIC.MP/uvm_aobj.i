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
struct pool {
 struct mutex pr_mtx;
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
 int pr_ipl;
 struct phtree { struct rb_tree rbh_root; }
   pr_phtree;
 struct cpumem * pr_cache;
 unsigned long pr_cache_magic[2];
 struct mutex pr_cache_mtx;
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
 struct mutex pr_requests_mtx;
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
 void (*pr_handler)(void *, void *);
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
      void (*)(void *, void *), void *);
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
typedef __int_least8_t int_least8_t;
typedef __uint_least8_t uint_least8_t;
typedef __int_least16_t int_least16_t;
typedef __uint_least16_t uint_least16_t;
typedef __int_least32_t int_least32_t;
typedef __uint_least32_t uint_least32_t;
typedef __int_least64_t int_least64_t;
typedef __uint_least64_t uint_least64_t;
typedef __int_fast8_t int_fast8_t;
typedef __uint_fast8_t uint_fast8_t;
typedef __int_fast16_t int_fast16_t;
typedef __uint_fast16_t uint_fast16_t;
typedef __int_fast32_t int_fast32_t;
typedef __uint_fast32_t uint_fast32_t;
typedef __int_fast64_t int_fast64_t;
typedef __uint_fast64_t uint_fast64_t;
typedef __intptr_t intptr_t;
typedef __uintptr_t uintptr_t;
typedef __intmax_t intmax_t;
typedef __uintmax_t uintmax_t;
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
struct vm_amap;
void amap_populate(struct vm_aref *, vaddr_t);
int amap_add(struct vm_aref *, vaddr_t, struct vm_anon *,
      boolean_t);
struct vm_amap *amap_alloc(vaddr_t, int, int);
void amap_copy(vm_map_t, vm_map_entry_t, int, boolean_t, vaddr_t,
      vaddr_t);
void amap_cow_now(vm_map_t, vm_map_entry_t);
void amap_free(struct vm_amap *);
void amap_init(void);
struct vm_anon *amap_lookup(struct vm_aref *, vaddr_t);
void amap_lookups(struct vm_aref *, vaddr_t, struct vm_anon **, int);
void amap_ref(struct vm_amap *, vaddr_t, vsize_t, int);
void amap_splitref(struct vm_aref *, struct vm_aref *, vaddr_t);
void amap_unadd(struct vm_aref *, vaddr_t);
void amap_unref(struct vm_amap *, vaddr_t, vsize_t, int);
void amap_wipeout(struct vm_amap *);
boolean_t amap_swap_off(int, int);
struct vm_amap_chunk {
 struct { struct vm_amap_chunk *tqe_next; struct vm_amap_chunk **tqe_prev; } ac_list;
 int ac_baseslot;
 uint16_t ac_usedmap;
 uint16_t ac_nslot;
 struct vm_anon *ac_anon[];
};
struct vm_amap {
 int am_ref;
 int am_flags;
 int am_nslot;
 int am_nused;
 int *am_ppref;
 struct { struct vm_amap *le_next; struct vm_amap **le_prev; } am_list;
 union {
  struct {
   struct vm_amap_chunk **amn_buckets;
   struct { struct vm_amap_chunk *tqh_first; struct vm_amap_chunk **tqh_last; } amn_chunks;
   int amn_ncused;
   int amn_hashshift;
  } ami_normal;
  struct vm_amap_chunk ami_small;
 } am_impl;
};
void amap_pp_adjref(struct vm_amap *, int, vsize_t, int);
void amap_pp_establish(struct vm_amap *);
void amap_wiperange(struct vm_amap *, int, int);
void uao_init(void);
int uao_set_swslot(struct uvm_object *, int, int);
int uao_dropswap(struct uvm_object *, int);
int uao_swap_off(int, int);
int uao_shrink(struct uvm_object *, int);
int uao_grow(struct uvm_object *, int);
extern struct uvm_pagerops aobj_pager;
void uvm_swapout_threads(void);
struct vm_page *uvm_atopg(vaddr_t);
void uvm_km_init(vaddr_t, vaddr_t, vaddr_t);
void uvm_km_page_init(void);
void uvm_km_page_lateinit(void);
void uvm_km_pgremove(struct uvm_object *, vaddr_t, vaddr_t);
void uvm_km_pgremove_intrsafe(vaddr_t, vaddr_t);
struct uvm_km_free_page {
 struct uvm_km_free_page *next;
};
struct uvm_km_pages {
 struct mutex mtx;
 int lowat;
 int hiwat;
 int free;
 vaddr_t page[(4 * (2048))];
 struct uvm_km_free_page *freelist;
 int freelistlen;
 struct proc *km_proc;
};
extern struct uvm_km_pages uvm_km_pages;
int uvm_swap_get(struct vm_page *, int, int);
int uvm_swap_put(int, struct vm_page **, int, int);
int uvm_swap_alloc(int *, boolean_t);
void uvm_swap_free(int, int);
void uvm_swap_markbad(int, int);
void uvm_swap_freepages(struct vm_page **, int);
void uvm_swap_initcrypt_all(void);
void uvm_swap_finicrypt_all(void);
struct uvm_pmr_addr { struct rb_tree rbh_root; };
struct uvm_pmr_size { struct rb_tree rbh_root; };
struct uvm_pmemrange {
 struct uvm_pmr_addr addr;
 struct uvm_pmr_size size[2];
 struct { struct vm_page *tqh_first; struct vm_page **tqh_last; } single[2];
 paddr_t low;
 paddr_t high;
 int use;
 psize_t nsegs;
 struct { struct uvm_pmemrange *tqe_next; struct uvm_pmemrange **tqe_prev; } pmr_use;
 struct rb_entry pmr_addr;
};
struct uvm_pmalloc {
 struct { struct uvm_pmalloc *tqe_next; struct uvm_pmalloc **tqe_prev; } pmq;
 struct uvm_constraint_range pm_constraint;
 psize_t pm_size;
 int pm_flags;
};
struct uvm_pmemrange_addr { struct rb_tree rbh_root; };
struct uvm_pmemrange_use { struct uvm_pmemrange *tqh_first; struct uvm_pmemrange **tqh_last; };
struct uvm_pmr_control {
 struct uvm_pmemrange_addr addr;
 struct uvm_pmemrange_use use;
 struct { struct uvm_pmalloc *tqh_first; struct uvm_pmalloc **tqh_last; } allocs;
};
void uvm_pmr_freepages(struct vm_page *, psize_t);
void uvm_pmr_freepageq(struct pglist *);
int uvm_pmr_getpages(psize_t, paddr_t, paddr_t, paddr_t, paddr_t,
     int, int, struct pglist *);
void uvm_pmr_init(void);
int uvm_wait_pla(paddr_t, paddr_t, paddr_t, int);
void uvm_wakeup_pla(paddr_t, psize_t);
int uvm_pmr_isfree(struct vm_page *pg);
int uvm_pmr_addr_cmp(const struct vm_page *, const struct vm_page *);
int uvm_pmr_size_cmp(const struct vm_page *, const struct vm_page *);
extern const struct rb_type *const uvm_pmr_addr_RBT_TYPE; __attribute__((__unused__)) static inline void uvm_pmr_addr_RBT_INIT(struct uvm_pmr_addr *head) { _rb_init(&head->rbh_root); } __attribute__((__unused__)) static inline struct vm_page * uvm_pmr_addr_RBT_INSERT(struct uvm_pmr_addr *head, struct vm_page *elm) { return _rb_insert(uvm_pmr_addr_RBT_TYPE, &head->rbh_root, elm); } __attribute__((__unused__)) static inline struct vm_page * uvm_pmr_addr_RBT_REMOVE(struct uvm_pmr_addr *head, struct vm_page *elm) { return _rb_remove(uvm_pmr_addr_RBT_TYPE, &head->rbh_root, elm); } __attribute__((__unused__)) static inline struct vm_page * uvm_pmr_addr_RBT_FIND(struct uvm_pmr_addr *head, const struct vm_page *key) { return _rb_find(uvm_pmr_addr_RBT_TYPE, &head->rbh_root, key); } __attribute__((__unused__)) static inline struct vm_page * uvm_pmr_addr_RBT_NFIND(struct uvm_pmr_addr *head, const struct vm_page *key) { return _rb_nfind(uvm_pmr_addr_RBT_TYPE, &head->rbh_root, key); } __attribute__((__unused__)) static inline struct vm_page * uvm_pmr_addr_RBT_ROOT(struct uvm_pmr_addr *head) { return _rb_root(uvm_pmr_addr_RBT_TYPE, &head->rbh_root); } __attribute__((__unused__)) static inline int uvm_pmr_addr_RBT_EMPTY(struct uvm_pmr_addr *head) { return _rb_empty(&head->rbh_root); } __attribute__((__unused__)) static inline struct vm_page * uvm_pmr_addr_RBT_MIN(struct uvm_pmr_addr *head) { return _rb_min(uvm_pmr_addr_RBT_TYPE, &head->rbh_root); } __attribute__((__unused__)) static inline struct vm_page * uvm_pmr_addr_RBT_MAX(struct uvm_pmr_addr *head) { return _rb_max(uvm_pmr_addr_RBT_TYPE, &head->rbh_root); } __attribute__((__unused__)) static inline struct vm_page * uvm_pmr_addr_RBT_NEXT(struct vm_page *elm) { return _rb_next(uvm_pmr_addr_RBT_TYPE, elm); } __attribute__((__unused__)) static inline struct vm_page * uvm_pmr_addr_RBT_PREV(struct vm_page *elm) { return _rb_prev(uvm_pmr_addr_RBT_TYPE, elm); } __attribute__((__unused__)) static inline struct vm_page * uvm_pmr_addr_RBT_LEFT(struct vm_page *elm) { return _rb_left(uvm_pmr_addr_RBT_TYPE, elm); } __attribute__((__unused__)) static inline struct vm_page * uvm_pmr_addr_RBT_RIGHT(struct vm_page *elm) { return _rb_right(uvm_pmr_addr_RBT_TYPE, elm); } __attribute__((__unused__)) static inline struct vm_page * uvm_pmr_addr_RBT_PARENT(struct vm_page *elm) { return _rb_parent(uvm_pmr_addr_RBT_TYPE, elm); } __attribute__((__unused__)) static inline void uvm_pmr_addr_RBT_SET_LEFT(struct vm_page *elm, struct vm_page *left) { return _rb_set_left(uvm_pmr_addr_RBT_TYPE, elm, left); } __attribute__((__unused__)) static inline void uvm_pmr_addr_RBT_SET_RIGHT(struct vm_page *elm, struct vm_page *right) { return _rb_set_right(uvm_pmr_addr_RBT_TYPE, elm, right); } __attribute__((__unused__)) static inline void uvm_pmr_addr_RBT_SET_PARENT(struct vm_page *elm, struct vm_page *parent) { return _rb_set_parent(uvm_pmr_addr_RBT_TYPE, elm, parent); } __attribute__((__unused__)) static inline void uvm_pmr_addr_RBT_POISON(struct vm_page *elm, unsigned long poison) { return _rb_poison(uvm_pmr_addr_RBT_TYPE, elm, poison); } __attribute__((__unused__)) static inline int uvm_pmr_addr_RBT_CHECK(struct vm_page *elm, unsigned long poison) { return _rb_check(uvm_pmr_addr_RBT_TYPE, elm, poison); };
extern const struct rb_type *const uvm_pmr_size_RBT_TYPE; __attribute__((__unused__)) static inline void uvm_pmr_size_RBT_INIT(struct uvm_pmr_size *head) { _rb_init(&head->rbh_root); } __attribute__((__unused__)) static inline struct vm_page * uvm_pmr_size_RBT_INSERT(struct uvm_pmr_size *head, struct vm_page *elm) { return _rb_insert(uvm_pmr_size_RBT_TYPE, &head->rbh_root, elm); } __attribute__((__unused__)) static inline struct vm_page * uvm_pmr_size_RBT_REMOVE(struct uvm_pmr_size *head, struct vm_page *elm) { return _rb_remove(uvm_pmr_size_RBT_TYPE, &head->rbh_root, elm); } __attribute__((__unused__)) static inline struct vm_page * uvm_pmr_size_RBT_FIND(struct uvm_pmr_size *head, const struct vm_page *key) { return _rb_find(uvm_pmr_size_RBT_TYPE, &head->rbh_root, key); } __attribute__((__unused__)) static inline struct vm_page * uvm_pmr_size_RBT_NFIND(struct uvm_pmr_size *head, const struct vm_page *key) { return _rb_nfind(uvm_pmr_size_RBT_TYPE, &head->rbh_root, key); } __attribute__((__unused__)) static inline struct vm_page * uvm_pmr_size_RBT_ROOT(struct uvm_pmr_size *head) { return _rb_root(uvm_pmr_size_RBT_TYPE, &head->rbh_root); } __attribute__((__unused__)) static inline int uvm_pmr_size_RBT_EMPTY(struct uvm_pmr_size *head) { return _rb_empty(&head->rbh_root); } __attribute__((__unused__)) static inline struct vm_page * uvm_pmr_size_RBT_MIN(struct uvm_pmr_size *head) { return _rb_min(uvm_pmr_size_RBT_TYPE, &head->rbh_root); } __attribute__((__unused__)) static inline struct vm_page * uvm_pmr_size_RBT_MAX(struct uvm_pmr_size *head) { return _rb_max(uvm_pmr_size_RBT_TYPE, &head->rbh_root); } __attribute__((__unused__)) static inline struct vm_page * uvm_pmr_size_RBT_NEXT(struct vm_page *elm) { return _rb_next(uvm_pmr_size_RBT_TYPE, elm); } __attribute__((__unused__)) static inline struct vm_page * uvm_pmr_size_RBT_PREV(struct vm_page *elm) { return _rb_prev(uvm_pmr_size_RBT_TYPE, elm); } __attribute__((__unused__)) static inline struct vm_page * uvm_pmr_size_RBT_LEFT(struct vm_page *elm) { return _rb_left(uvm_pmr_size_RBT_TYPE, elm); } __attribute__((__unused__)) static inline struct vm_page * uvm_pmr_size_RBT_RIGHT(struct vm_page *elm) { return _rb_right(uvm_pmr_size_RBT_TYPE, elm); } __attribute__((__unused__)) static inline struct vm_page * uvm_pmr_size_RBT_PARENT(struct vm_page *elm) { return _rb_parent(uvm_pmr_size_RBT_TYPE, elm); } __attribute__((__unused__)) static inline void uvm_pmr_size_RBT_SET_LEFT(struct vm_page *elm, struct vm_page *left) { return _rb_set_left(uvm_pmr_size_RBT_TYPE, elm, left); } __attribute__((__unused__)) static inline void uvm_pmr_size_RBT_SET_RIGHT(struct vm_page *elm, struct vm_page *right) { return _rb_set_right(uvm_pmr_size_RBT_TYPE, elm, right); } __attribute__((__unused__)) static inline void uvm_pmr_size_RBT_SET_PARENT(struct vm_page *elm, struct vm_page *parent) { return _rb_set_parent(uvm_pmr_size_RBT_TYPE, elm, parent); } __attribute__((__unused__)) static inline void uvm_pmr_size_RBT_POISON(struct vm_page *elm, unsigned long poison) { return _rb_poison(uvm_pmr_size_RBT_TYPE, elm, poison); } __attribute__((__unused__)) static inline int uvm_pmr_size_RBT_CHECK(struct vm_page *elm, unsigned long poison) { return _rb_check(uvm_pmr_size_RBT_TYPE, elm, poison); };
extern const struct rb_type *const uvm_pmemrange_addr_RBT_TYPE; __attribute__((__unused__)) static inline void uvm_pmemrange_addr_RBT_INIT(struct uvm_pmemrange_addr *head) { _rb_init(&head->rbh_root); } __attribute__((__unused__)) static inline struct uvm_pmemrange * uvm_pmemrange_addr_RBT_INSERT(struct uvm_pmemrange_addr *head, struct uvm_pmemrange *elm) { return _rb_insert(uvm_pmemrange_addr_RBT_TYPE, &head->rbh_root, elm); } __attribute__((__unused__)) static inline struct uvm_pmemrange * uvm_pmemrange_addr_RBT_REMOVE(struct uvm_pmemrange_addr *head, struct uvm_pmemrange *elm) { return _rb_remove(uvm_pmemrange_addr_RBT_TYPE, &head->rbh_root, elm); } __attribute__((__unused__)) static inline struct uvm_pmemrange * uvm_pmemrange_addr_RBT_FIND(struct uvm_pmemrange_addr *head, const struct uvm_pmemrange *key) { return _rb_find(uvm_pmemrange_addr_RBT_TYPE, &head->rbh_root, key); } __attribute__((__unused__)) static inline struct uvm_pmemrange * uvm_pmemrange_addr_RBT_NFIND(struct uvm_pmemrange_addr *head, const struct uvm_pmemrange *key) { return _rb_nfind(uvm_pmemrange_addr_RBT_TYPE, &head->rbh_root, key); } __attribute__((__unused__)) static inline struct uvm_pmemrange * uvm_pmemrange_addr_RBT_ROOT(struct uvm_pmemrange_addr *head) { return _rb_root(uvm_pmemrange_addr_RBT_TYPE, &head->rbh_root); } __attribute__((__unused__)) static inline int uvm_pmemrange_addr_RBT_EMPTY(struct uvm_pmemrange_addr *head) { return _rb_empty(&head->rbh_root); } __attribute__((__unused__)) static inline struct uvm_pmemrange * uvm_pmemrange_addr_RBT_MIN(struct uvm_pmemrange_addr *head) { return _rb_min(uvm_pmemrange_addr_RBT_TYPE, &head->rbh_root); } __attribute__((__unused__)) static inline struct uvm_pmemrange * uvm_pmemrange_addr_RBT_MAX(struct uvm_pmemrange_addr *head) { return _rb_max(uvm_pmemrange_addr_RBT_TYPE, &head->rbh_root); } __attribute__((__unused__)) static inline struct uvm_pmemrange * uvm_pmemrange_addr_RBT_NEXT(struct uvm_pmemrange *elm) { return _rb_next(uvm_pmemrange_addr_RBT_TYPE, elm); } __attribute__((__unused__)) static inline struct uvm_pmemrange * uvm_pmemrange_addr_RBT_PREV(struct uvm_pmemrange *elm) { return _rb_prev(uvm_pmemrange_addr_RBT_TYPE, elm); } __attribute__((__unused__)) static inline struct uvm_pmemrange * uvm_pmemrange_addr_RBT_LEFT(struct uvm_pmemrange *elm) { return _rb_left(uvm_pmemrange_addr_RBT_TYPE, elm); } __attribute__((__unused__)) static inline struct uvm_pmemrange * uvm_pmemrange_addr_RBT_RIGHT(struct uvm_pmemrange *elm) { return _rb_right(uvm_pmemrange_addr_RBT_TYPE, elm); } __attribute__((__unused__)) static inline struct uvm_pmemrange * uvm_pmemrange_addr_RBT_PARENT(struct uvm_pmemrange *elm) { return _rb_parent(uvm_pmemrange_addr_RBT_TYPE, elm); } __attribute__((__unused__)) static inline void uvm_pmemrange_addr_RBT_SET_LEFT(struct uvm_pmemrange *elm, struct uvm_pmemrange *left) { return _rb_set_left(uvm_pmemrange_addr_RBT_TYPE, elm, left); } __attribute__((__unused__)) static inline void uvm_pmemrange_addr_RBT_SET_RIGHT(struct uvm_pmemrange *elm, struct uvm_pmemrange *right) { return _rb_set_right(uvm_pmemrange_addr_RBT_TYPE, elm, right); } __attribute__((__unused__)) static inline void uvm_pmemrange_addr_RBT_SET_PARENT(struct uvm_pmemrange *elm, struct uvm_pmemrange *parent) { return _rb_set_parent(uvm_pmemrange_addr_RBT_TYPE, elm, parent); } __attribute__((__unused__)) static inline void uvm_pmemrange_addr_RBT_POISON(struct uvm_pmemrange *elm, unsigned long poison) { return _rb_poison(uvm_pmemrange_addr_RBT_TYPE, elm, poison); } __attribute__((__unused__)) static inline int uvm_pmemrange_addr_RBT_CHECK(struct uvm_pmemrange *elm, unsigned long poison) { return _rb_check(uvm_pmemrange_addr_RBT_TYPE, elm, poison); };
struct vm_page *uvm_pmr_insert_addr(struct uvm_pmemrange *,
       struct vm_page *, int);
void uvm_pmr_insert_size(struct uvm_pmemrange *,
       struct vm_page *);
struct vm_page *uvm_pmr_insert(struct uvm_pmemrange *,
       struct vm_page *, int);
void uvm_pmr_remove_addr(struct uvm_pmemrange *,
       struct vm_page *);
void uvm_pmr_remove_size(struct uvm_pmemrange *,
       struct vm_page *);
void uvm_pmr_remove(struct uvm_pmemrange *,
       struct vm_page *);
struct vm_page *uvm_pmr_extract_range(struct uvm_pmemrange *,
       struct vm_page *, paddr_t, paddr_t,
       struct pglist *);
struct uvm {
 struct pglist page_active;
 struct pglist page_inactive_swp;
 struct pglist page_inactive_obj;
 struct mutex pageqlock;
 struct mutex fpageqlock;
 boolean_t page_init_done;
 struct uvm_pmr_control pmr_control;
 int pagedaemon;
 struct proc *pagedaemon_proc;
 int aiodoned;
 struct proc *aiodoned_proc;
 struct mutex aiodoned_lock;
 struct { struct vm_map_entry *slh_first; } kentry_free;
 struct { struct buf *tqh_first; struct buf **tqh_last; } aio_done;
 struct uvm_object *kernel_object;
};
extern struct uvm uvm;
struct vm_map_entry *uvm_map_entrybyaddr(struct uvm_map_addr *, vaddr_t);
int uvm_map_isavail(struct vm_map *,
       struct uvm_addr_state *,
       struct vm_map_entry **, struct vm_map_entry**,
       vaddr_t, vsize_t);
struct uvm_addr_state *uvm_map_uaddr(struct vm_map *, vaddr_t);
struct uvm_addr_state *uvm_map_uaddr_e(struct vm_map *, struct vm_map_entry *);
struct uao_swhash_elt {
 struct { struct uao_swhash_elt *le_next; struct uao_swhash_elt **le_prev; } list;
 voff_t tag;
 int count;
 int slots[(1 << 4)];
};
struct uao_swhash { struct uao_swhash_elt *lh_first; };
struct pool uao_swhash_elt_pool;
struct uvm_aobj {
 struct uvm_object u_obj;
 int u_pages;
 int u_flags;
 union swslots {
  int *slot_array;
  struct uao_swhash *slot_hash;
 } u_swap;
 u_long u_swhashmask;
 struct { struct uvm_aobj *le_next; struct uvm_aobj **le_prev; } u_list;
};
struct pool uvm_aobj_pool;
static struct uao_swhash_elt *uao_find_swhash_elt(struct uvm_aobj *, int,
         boolean_t);
static int uao_find_swslot(struct uvm_aobj *, int);
static boolean_t uao_flush(struct uvm_object *, voff_t,
         voff_t, int);
static void uao_free(struct uvm_aobj *);
static int uao_get(struct uvm_object *, voff_t,
         vm_page_t *, int *, int, vm_prot_t,
         int, int);
static boolean_t uao_pagein(struct uvm_aobj *, int, int);
static boolean_t uao_pagein_page(struct uvm_aobj *, int);
void uao_dropswap_range(struct uvm_object *, voff_t, voff_t);
void uao_shrink_flush(struct uvm_object *, int, int);
int uao_shrink_hash(struct uvm_object *, int);
int uao_shrink_array(struct uvm_object *, int);
int uao_shrink_convert(struct uvm_object *, int);
int uao_grow_hash(struct uvm_object *, int);
int uao_grow_array(struct uvm_object *, int);
int uao_grow_convert(struct uvm_object *, int);
struct uvm_pagerops aobj_pager = {
 ((void *)0),
 uao_reference,
 uao_detach,
 ((void *)0),
 uao_flush,
 uao_get,
};
static struct aobjlist { struct uvm_aobj *lh_first; } uao_list = { ((void *)0) };
static struct mutex uao_list_lock = { ((void *)0), ((((0)) > 0 && ((0)) < 12) ? 12 : ((0))), 0 };
static struct uao_swhash_elt *
uao_find_swhash_elt(struct uvm_aobj *aobj, int pageidx, boolean_t create)
{
 struct uao_swhash *swhash;
 struct uao_swhash_elt *elt;
 voff_t page_tag;
 swhash = (&(aobj)->u_swap.slot_hash[(((pageidx) >> 4) & (aobj)->u_swhashmask)]);
 page_tag = ((pageidx) >> 4);
 for((elt) = ((swhash)->lh_first); (elt)!= ((void *)0); (elt) = ((elt)->list.le_next)) {
  if (elt->tag == page_tag)
   return(elt);
 }
 if (!create)
  return ((void *)0);
 elt = pool_get(&uao_swhash_elt_pool, 0x0002 | 0x0008);
 if (elt == ((void *)0))
  panic("%s: can't allocate entry", __func__);
 do { if (((elt)->list.le_next = (swhash)->lh_first) != ((void *)0)) (swhash)->lh_first->list.le_prev = &(elt)->list.le_next; (swhash)->lh_first = (elt); (elt)->list.le_prev = &(swhash)->lh_first; } while (0);
 elt->tag = page_tag;
 return(elt);
}
__inline static int
uao_find_swslot(struct uvm_aobj *aobj, int pageidx)
{
 if (aobj->u_flags & 0x8)
  return(0);
 if (aobj->u_pages > ((1 << 4) * 4)) {
  struct uao_swhash_elt *elt =
      uao_find_swhash_elt(aobj, pageidx, 0);
  if (elt)
   return(((elt)->slots[(pageidx) & ((1 << 4) - 1)]));
  else
   return(0);
 }
 return(aobj->u_swap.slot_array[pageidx]);
}
int
uao_set_swslot(struct uvm_object *uobj, int pageidx, int slot)
{
 struct uvm_aobj *aobj = (struct uvm_aobj *)uobj;
 int oldslot;
 if (aobj->u_flags & 0x8) {
  if (slot == 0)
   return(0);
  printf("uao_set_swslot: uobj = %p\n", uobj);
  panic("uao_set_swslot: attempt to set a slot"
      " on a NOSWAP object");
 }
 if (aobj->u_pages > ((1 << 4) * 4)) {
  struct uao_swhash_elt *elt =
      uao_find_swhash_elt(aobj, pageidx, slot ? 1 : 0);
  if (elt == ((void *)0)) {
   ((slot == 0) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../uvm/uvm_aobj.c", 314, "slot == 0"));
   return (0);
  }
  oldslot = ((elt)->slots[(pageidx) & ((1 << 4) - 1)]);
  ((elt)->slots[(pageidx) & ((1 << 4) - 1)]) = slot;
  if (slot) {
   if (oldslot == 0)
    elt->count++;
  } else {
   if (oldslot)
    elt->count--;
   if (elt->count == 0) {
    do { if ((elt)->list.le_next != ((void *)0)) (elt)->list.le_next->list.le_prev = (elt)->list.le_prev; *(elt)->list.le_prev = (elt)->list.le_next; ((elt)->list.le_prev) = ((void *)-1); ((elt)->list.le_next) = ((void *)-1); } while (0);
    pool_put(&uao_swhash_elt_pool, elt);
   }
  }
 } else {
  oldslot = aobj->u_swap.slot_array[pageidx];
  aobj->u_swap.slot_array[pageidx] = slot;
 }
 return (oldslot);
}
static void
uao_free(struct uvm_aobj *aobj)
{
 if (aobj->u_pages > ((1 << 4) * 4)) {
  int i, hashbuckets = aobj->u_swhashmask + 1;
  for (i = 0; i < hashbuckets; i++) {
   struct uao_swhash_elt *elt, *next;
   for (elt = ((&aobj->u_swap.slot_hash[i])->lh_first);
        elt != ((void *)0);
        elt = next) {
    int j;
    for (j = 0; j < (1 << 4); j++) {
     int slot = elt->slots[j];
     if (slot == 0) {
      continue;
     }
     uvm_swap_free(slot, 1);
     uvmexp.swpgonly--;
    }
    next = ((elt)->list.le_next);
    pool_put(&uao_swhash_elt_pool, elt);
   }
  }
  hashfree(aobj->u_swap.slot_hash, (min((aobj->u_pages) >> 4, 256)), 99);
 } else {
  int i;
  for (i = 0; i < aobj->u_pages; i++) {
   int slot = aobj->u_swap.slot_array[i];
   if (slot) {
    uvm_swap_free(slot, 1);
    uvmexp.swpgonly--;
   }
  }
  free(aobj->u_swap.slot_array, 99, aobj->u_pages * sizeof(int));
 }
 pool_put(&uvm_aobj_pool, aobj);
}
void
uao_shrink_flush(struct uvm_object *uobj, int startpg, int endpg)
{
 ((startpg < endpg) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../uvm/uvm_aobj.c", 427, "startpg < endpg"));
 ((uobj->uo_refs == 1) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../uvm/uvm_aobj.c", 428, "uobj->uo_refs == 1"));
 uao_flush(uobj, (voff_t)startpg << 13,
     (voff_t)endpg << 13, 0x008);
 uao_dropswap_range(uobj, startpg, endpg);
}
int
uao_shrink_hash(struct uvm_object *uobj, int pages)
{
 struct uvm_aobj *aobj = (struct uvm_aobj *)uobj;
 struct uao_swhash *new_swhash;
 struct uao_swhash_elt *elt;
 unsigned long new_hashmask;
 int i;
 ((aobj->u_pages > ((1 << 4) * 4)) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../uvm/uvm_aobj.c", 443, "aobj->u_pages > UAO_SWHASH_THRESHOLD"));
 if ((min((aobj->u_pages) >> 4, 256)) == (min((pages) >> 4, 256))) {
  uao_shrink_flush(uobj, pages, aobj->u_pages);
  aobj->u_pages = pages;
  return 0;
 }
 new_swhash = hashinit((min((pages) >> 4, 256)), 99,
     0x0001 | 0x0004, &new_hashmask);
 if (new_swhash == ((void *)0))
  return 12;
 uao_shrink_flush(uobj, pages, aobj->u_pages);
 for (i = 0; i < (min((aobj->u_pages) >> 4, 256)); i++) {
  while ((((&aobj->u_swap.slot_hash[i])->lh_first) == ((void *)0)) == 0) {
   elt = ((&aobj->u_swap.slot_hash[i])->lh_first);
   do { if ((elt)->list.le_next != ((void *)0)) (elt)->list.le_next->list.le_prev = (elt)->list.le_prev; *(elt)->list.le_prev = (elt)->list.le_next; ((elt)->list.le_prev) = ((void *)-1); ((elt)->list.le_next) = ((void *)-1); } while (0);
   do { if (((elt)->list.le_next = (&new_swhash[i])->lh_first) != ((void *)0)) (&new_swhash[i])->lh_first->list.le_prev = &(elt)->list.le_next; (&new_swhash[i])->lh_first = (elt); (elt)->list.le_prev = &(&new_swhash[i])->lh_first; } while (0);
  }
 }
 hashfree(aobj->u_swap.slot_hash, (min((aobj->u_pages) >> 4, 256)), 99);
 aobj->u_swap.slot_hash = new_swhash;
 aobj->u_pages = pages;
 aobj->u_swhashmask = new_hashmask;
 return 0;
}
int
uao_shrink_convert(struct uvm_object *uobj, int pages)
{
 struct uvm_aobj *aobj = (struct uvm_aobj *)uobj;
 struct uao_swhash_elt *elt;
 int i, *new_swslots;
 new_swslots = mallocarray(pages, sizeof(int), 99,
     0x0001 | 0x0004 | 0x0008);
 if (new_swslots == ((void *)0))
  return 12;
 uao_shrink_flush(uobj, pages, aobj->u_pages);
 for (i = 0; i < pages; i++) {
  elt = uao_find_swhash_elt(aobj, i, 0);
  if (elt != ((void *)0)) {
   new_swslots[i] = ((elt)->slots[(i) & ((1 << 4) - 1)]);
   if (new_swslots[i] != 0)
    elt->count--;
   if (elt->count == 0) {
    do { if ((elt)->list.le_next != ((void *)0)) (elt)->list.le_next->list.le_prev = (elt)->list.le_prev; *(elt)->list.le_prev = (elt)->list.le_next; ((elt)->list.le_prev) = ((void *)-1); ((elt)->list.le_next) = ((void *)-1); } while (0);
    pool_put(&uao_swhash_elt_pool, elt);
   }
  }
 }
 hashfree(aobj->u_swap.slot_hash, (min((aobj->u_pages) >> 4, 256)), 99);
 aobj->u_swap.slot_array = new_swslots;
 aobj->u_pages = pages;
 return 0;
}
int
uao_shrink_array(struct uvm_object *uobj, int pages)
{
 struct uvm_aobj *aobj = (struct uvm_aobj *)uobj;
 int i, *new_swslots;
 new_swslots = mallocarray(pages, sizeof(int), 99,
     0x0001 | 0x0004 | 0x0008);
 if (new_swslots == ((void *)0))
  return 12;
 uao_shrink_flush(uobj, pages, aobj->u_pages);
 for (i = 0; i < pages; i++)
  new_swslots[i] = aobj->u_swap.slot_array[i];
 free(aobj->u_swap.slot_array, 99, aobj->u_pages * sizeof(int));
 aobj->u_swap.slot_array = new_swslots;
 aobj->u_pages = pages;
 return 0;
}
int
uao_shrink(struct uvm_object *uobj, int pages)
{
 struct uvm_aobj *aobj = (struct uvm_aobj *)uobj;
 ((pages < aobj->u_pages) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../uvm/uvm_aobj.c", 548, "pages < aobj->u_pages"));
 if (pages > ((1 << 4) * 4))
  return uao_shrink_hash(uobj, pages);
 else if (aobj->u_pages > ((1 << 4) * 4))
  return uao_shrink_convert(uobj, pages);
 else
  return uao_shrink_array(uobj, pages);
}
int
uao_grow_array(struct uvm_object *uobj, int pages)
{
 struct uvm_aobj *aobj = (struct uvm_aobj *)uobj;
 int i, *new_swslots;
 ((aobj->u_pages <= ((1 << 4) * 4)) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../uvm/uvm_aobj.c", 578, "aobj->u_pages <= UAO_SWHASH_THRESHOLD"));
 new_swslots = mallocarray(pages, sizeof(int), 99,
     0x0001 | 0x0004 | 0x0008);
 if (new_swslots == ((void *)0))
  return 12;
 for (i = 0; i < aobj->u_pages; i++)
  new_swslots[i] = aobj->u_swap.slot_array[i];
 free(aobj->u_swap.slot_array, 99, aobj->u_pages * sizeof(int));
 aobj->u_swap.slot_array = new_swslots;
 aobj->u_pages = pages;
 return 0;
}
int
uao_grow_hash(struct uvm_object *uobj, int pages)
{
 struct uvm_aobj *aobj = (struct uvm_aobj *)uobj;
 struct uao_swhash *new_swhash;
 struct uao_swhash_elt *elt;
 unsigned long new_hashmask;
 int i;
 ((pages > ((1 << 4) * 4)) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../uvm/uvm_aobj.c", 605, "pages > UAO_SWHASH_THRESHOLD"));
 if ((min((aobj->u_pages) >> 4, 256)) == (min((pages) >> 4, 256))) {
  aobj->u_pages = pages;
  return 0;
 }
 (((min((aobj->u_pages) >> 4, 256)) < (min((pages) >> 4, 256))) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../uvm/uvm_aobj.c", 616, "UAO_SWHASH_BUCKETS(aobj->u_pages) < UAO_SWHASH_BUCKETS(pages)"));
 new_swhash = hashinit((min((pages) >> 4, 256)), 99,
     0x0001 | 0x0004, &new_hashmask);
 if (new_swhash == ((void *)0))
  return 12;
 for (i = 0; i < (min((aobj->u_pages) >> 4, 256)); i++) {
  while ((((&aobj->u_swap.slot_hash[i])->lh_first) == ((void *)0)) == 0) {
   elt = ((&aobj->u_swap.slot_hash[i])->lh_first);
   do { if ((elt)->list.le_next != ((void *)0)) (elt)->list.le_next->list.le_prev = (elt)->list.le_prev; *(elt)->list.le_prev = (elt)->list.le_next; ((elt)->list.le_prev) = ((void *)-1); ((elt)->list.le_next) = ((void *)-1); } while (0);
   do { if (((elt)->list.le_next = (&new_swhash[i])->lh_first) != ((void *)0)) (&new_swhash[i])->lh_first->list.le_prev = &(elt)->list.le_next; (&new_swhash[i])->lh_first = (elt); (elt)->list.le_prev = &(&new_swhash[i])->lh_first; } while (0);
  }
 }
 hashfree(aobj->u_swap.slot_hash, (min((aobj->u_pages) >> 4, 256)), 99);
 aobj->u_swap.slot_hash = new_swhash;
 aobj->u_pages = pages;
 aobj->u_swhashmask = new_hashmask;
 return 0;
}
int
uao_grow_convert(struct uvm_object *uobj, int pages)
{
 struct uvm_aobj *aobj = (struct uvm_aobj *)uobj;
 struct uao_swhash *new_swhash;
 struct uao_swhash_elt *elt;
 unsigned long new_hashmask;
 int i, *old_swslots;
 new_swhash = hashinit((min((pages) >> 4, 256)), 99,
     0x0001 | 0x0004, &new_hashmask);
 if (new_swhash == ((void *)0))
  return 12;
 old_swslots = aobj->u_swap.slot_array;
 aobj->u_swap.slot_hash = new_swhash;
 aobj->u_swhashmask = new_hashmask;
 for (i = 0; i < aobj->u_pages; i++) {
  if (old_swslots[i] != 0) {
   elt = uao_find_swhash_elt(aobj, i, 1);
   elt->count++;
   ((elt)->slots[(i) & ((1 << 4) - 1)]) = old_swslots[i];
  }
 }
 free(old_swslots, 99, aobj->u_pages * sizeof(int));
 aobj->u_pages = pages;
 return 0;
}
int
uao_grow(struct uvm_object *uobj, int pages)
{
 struct uvm_aobj *aobj = (struct uvm_aobj *)uobj;
 ((pages > aobj->u_pages) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../uvm/uvm_aobj.c", 678, "pages > aobj->u_pages"));
 if (pages <= ((1 << 4) * 4))
  return uao_grow_array(uobj, pages);
 else if (aobj->u_pages > ((1 << 4) * 4))
  return uao_grow_hash(uobj, pages);
 else
  return uao_grow_convert(uobj, pages);
}
struct uvm_object *
uao_create(vsize_t size, int flags)
{
 static struct uvm_aobj kernel_object_store;
 static int kobj_alloced = 0;
 int pages = (((size) + ((1 << 13) - 1)) & ~((1 << 13) - 1)) >> 13;
 int refs = (-2);
 int mflags;
 struct uvm_aobj *aobj;
 if (flags & 0x1) {
  if (kobj_alloced)
   panic("uao_create: kernel object already allocated");
  aobj = &kernel_object_store;
  aobj->u_pages = pages;
  aobj->u_flags = 0x8;
  kobj_alloced = 0x1;
 } else if (flags & 0x2) {
  aobj = &kernel_object_store;
  if (kobj_alloced != 0x1)
      panic("uao_create: asked to enable swap on kernel object");
  kobj_alloced = 0x2;
 } else {
  aobj = pool_get(&uvm_aobj_pool, 0x0001);
  aobj->u_pages = pages;
  aobj->u_flags = 0;
  refs = 1;
 }
  if (flags == 0 || (flags & (0x2 | 0x4))) {
  if (flags)
   mflags = 0x0002;
  else
   mflags = 0x0001;
  if (aobj->u_pages > ((1 << 4) * 4)) {
   aobj->u_swap.slot_hash = hashinit((min((pages) >> 4, 256)),
       99, mflags, &aobj->u_swhashmask);
   if (aobj->u_swap.slot_hash == ((void *)0)) {
    if (flags & 0x4) {
     pool_put(&uvm_aobj_pool, aobj);
     return (((void *)0));
    }
    panic("uao_create: hashinit swhash failed");
   }
  } else {
   aobj->u_swap.slot_array = mallocarray(pages, sizeof(int),
       99, mflags|0x0008);
   if (aobj->u_swap.slot_array == ((void *)0)) {
    if (flags & 0x4) {
     pool_put(&uvm_aobj_pool, aobj);
     return (((void *)0));
    }
    panic("uao_create: malloc swslots failed");
   }
  }
  if (flags & 0x2) {
   aobj->u_flags &= ~0x8;
   return(&aobj->u_obj);
  }
 }
 uvm_objinit(&aobj->u_obj, &aobj_pager, refs);
 __mtx_enter(&uao_list_lock );
 do { if (((aobj)->u_list.le_next = (&uao_list)->lh_first) != ((void *)0)) (&uao_list)->lh_first->u_list.le_prev = &(aobj)->u_list.le_next; (&uao_list)->lh_first = (aobj); (aobj)->u_list.le_prev = &(&uao_list)->lh_first; } while (0);
 __mtx_leave(&uao_list_lock );
 return(&aobj->u_obj);
}
void
uao_init(void)
{
 static int uao_initialized;
 if (uao_initialized)
  return;
 uao_initialized = 1;
 pool_init(&uao_swhash_elt_pool, sizeof(struct uao_swhash_elt), 0,
     0, 0x0001, "uaoeltpl", ((void *)0));
 pool_init(&uvm_aobj_pool, sizeof(struct uvm_aobj), 0,
     0, 0x0001, "aobjpl", ((void *)0));
}
void
uao_reference(struct uvm_object *uobj)
{
 uao_reference_locked(uobj);
}
void
uao_reference_locked(struct uvm_object *uobj)
{
 if (((uobj)->uo_refs == (-2)))
  return;
 uobj->uo_refs++;
}
void
uao_detach(struct uvm_object *uobj)
{
 uao_detach_locked(uobj);
}
void
uao_detach_locked(struct uvm_object *uobj)
{
 struct uvm_aobj *aobj = (struct uvm_aobj *)uobj;
 struct vm_page *pg;
 if (((uobj)->uo_refs == (-2))) {
  return;
 }
 uobj->uo_refs--;
 if (uobj->uo_refs) {
  return;
 }
 __mtx_enter(&uao_list_lock );
 do { if ((aobj)->u_list.le_next != ((void *)0)) (aobj)->u_list.le_next->u_list.le_prev = (aobj)->u_list.le_prev; *(aobj)->u_list.le_prev = (aobj)->u_list.le_next; ((aobj)->u_list.le_prev) = ((void *)-1); ((aobj)->u_list.le_next) = ((void *)-1); } while (0);
 __mtx_leave(&uao_list_lock );
 __mtx_enter(&uvm.pageqlock );
 while((pg = uvm_objtree_RBT_ROOT(&uobj->memt)) != ((void *)0)) {
  if (pg->pg_flags & 0x00000001) {
   atomic_setbits_int(&pg->pg_flags, 0x00000002);
   __mtx_leave(&uvm.pageqlock );
   do { tsleep(pg, 4|(0 ? 0x100 : 0), "uao_det", 0); } while (0);
   __mtx_enter(&uvm.pageqlock );
   continue;
  }
  pmap_page_protect(pg, 0x00);
  uao_dropswap(&aobj->u_obj, pg->offset >> 13);
  uvm_pagefree(pg);
 }
 __mtx_leave(&uvm.pageqlock );
 uao_free(aobj);
}
boolean_t
uao_flush(struct uvm_object *uobj, voff_t start, voff_t stop, int flags)
{
 struct uvm_aobj *aobj = (struct uvm_aobj *) uobj;
 struct vm_page *pp;
 voff_t curoff;
 if (flags & 0x010) {
  start = 0;
  stop = (voff_t)aobj->u_pages << 13;
 } else {
  start = ((start) & ~((1 << 13) - 1));
  stop = (((stop) + ((1 << 13) - 1)) & ~((1 << 13) - 1));
  if (stop > ((voff_t)aobj->u_pages << 13)) {
   printf("uao_flush: strange, got an out of range "
       "flush (fixed)\n");
   stop = (voff_t)aobj->u_pages << 13;
  }
 }
 if ((flags & (0x004|0x008)) == 0)
  return (1);
 curoff = start;
 for (;;) {
  if (curoff < stop) {
   pp = uvm_pagelookup(uobj, curoff);
   curoff += (1 << 13);
   if (pp == ((void *)0))
    continue;
  } else {
   break;
  }
  if (pp->pg_flags & 0x00000001) {
   atomic_setbits_int(&pp->pg_flags, 0x00000002);
   do { tsleep(pp, 4|(0 ? 0x100 : 0), "uaoflsh", 0); } while (0);
   curoff -= (1 << 13);
   continue;
  }
  switch (flags & (0x001|0x008|0x004)) {
  case 0x001|0x008:
  case 0x001|0x004:
  case 0x004:
 deactivate_it:
   if (pp->wire_count != 0)
    continue;
   __mtx_enter(&uvm.pageqlock );
   pmap_page_protect(pp, 0x00);
   uvm_pagedeactivate(pp);
   __mtx_leave(&uvm.pageqlock );
   continue;
  case 0x008:
   if (uobj->uo_refs > 1)
    goto deactivate_it;
   if (pp->wire_count != 0)
    continue;
   pmap_page_protect(pp, 0x00);
   uao_dropswap(uobj, pp->offset >> 13);
   __mtx_enter(&uvm.pageqlock );
   uvm_pagefree(pp);
   __mtx_leave(&uvm.pageqlock );
   continue;
  default:
   panic("uao_flush: weird flags");
  }
 }
 return (1);
}
static int
uao_get(struct uvm_object *uobj, voff_t offset, struct vm_page **pps,
    int *npagesp, int centeridx, vm_prot_t access_type, int advice, int flags)
{
 struct uvm_aobj *aobj = (struct uvm_aobj *)uobj;
 voff_t current_offset;
 vm_page_t ptmp;
 int lcv, gotpages, maxpages, swslot, rv, pageidx;
 boolean_t done;
 maxpages = *npagesp;
 if (flags & 0x040) {
  done = 1;
  gotpages = 0;
  for (lcv = 0, current_offset = offset ; lcv < maxpages ;
      lcv++, current_offset += (1 << 13)) {
   if (pps[lcv] == ((struct vm_page *) -1L))
    continue;
   ptmp = uvm_pagelookup(uobj, current_offset);
   if (ptmp == ((void *)0) && uao_find_swslot(aobj,
       current_offset >> 13) == 0) {
    ptmp = uvm_pagealloc(uobj, current_offset,
        ((void *)0), 0x0002);
    if (ptmp) {
     atomic_clearbits_int(&ptmp->pg_flags,
         0x00000001|0x00000040);
     atomic_setbits_int(&ptmp->pg_flags,
         0x00200000);
     ;
    }
   }
   if (ptmp == ((void *)0) ||
       (ptmp->pg_flags & 0x00000001) != 0) {
    if (lcv == centeridx ||
        (flags & 0x010) != 0)
     done = 0;
    continue;
   }
   atomic_setbits_int(&ptmp->pg_flags, 0x00000001);
   ;
   pps[lcv] = ptmp;
   gotpages++;
  }
  *npagesp = gotpages;
  if (done)
   return(0);
  else
   return(6);
 }
 for (lcv = 0, current_offset = offset ; lcv < maxpages ;
     lcv++, current_offset += (1 << 13)) {
  if (pps[lcv] != ((void *)0) ||
      (lcv != centeridx && (flags & 0x010) == 0))
   continue;
  pageidx = current_offset >> 13;
  while (pps[lcv] == ((void *)0)) {
   ptmp = uvm_pagelookup(uobj, current_offset);
   if (ptmp == ((void *)0)) {
    ptmp = uvm_pagealloc(uobj, current_offset,
        ((void *)0), 0);
    if (ptmp == ((void *)0)) {
     uvm_wait("uao_getpage");
     continue;
    }
    atomic_setbits_int(&ptmp->pg_flags, 0x00200000);
    break;
   }
   if ((ptmp->pg_flags & 0x00000001) != 0) {
    atomic_setbits_int(&ptmp->pg_flags, 0x00000002);
    do { tsleep(ptmp, 4|(0 ? 0x100 : 0), "uao_get", 0); } while (0);
    continue;
   }
   atomic_setbits_int(&ptmp->pg_flags, 0x00000001);
   ;
   pps[lcv] = ptmp;
  }
  if (pps[lcv])
   continue;
  swslot = uao_find_swslot(aobj, pageidx);
  if (swslot == 0) {
   uvm_pagezero(ptmp);
  } else {
   rv = uvm_swap_get(ptmp, swslot, 0x002);
   if (rv != 0) {
    swslot = uao_set_swslot(&aobj->u_obj, pageidx,
       (-1));
    uvm_swap_markbad(swslot, 1);
    if (ptmp->pg_flags & 0x00000002)
     wakeup(ptmp);
    atomic_clearbits_int(&ptmp->pg_flags,
        0x00000002|0x00000001);
    ;
    __mtx_enter(&uvm.pageqlock );
    uvm_pagefree(ptmp);
    __mtx_leave(&uvm.pageqlock );
    return (rv);
   }
  }
  atomic_clearbits_int(&ptmp->pg_flags, 0x00000040);
  pmap_clear_modify(ptmp);
  pps[lcv] = ptmp;
 }
 return(0);
}
int
uao_dropswap(struct uvm_object *uobj, int pageidx)
{
 int slot;
 slot = uao_set_swslot(uobj, pageidx, 0);
 if (slot) {
  uvm_swap_free(slot, 1);
 }
 return (slot);
}
boolean_t
uao_swap_off(int startslot, int endslot)
{
 struct uvm_aobj *aobj, *nextaobj, *prevaobj = ((void *)0);
 __mtx_enter(&uao_list_lock );
 for (aobj = ((&uao_list)->lh_first);
      aobj != ((void *)0);
      aobj = nextaobj) {
  boolean_t rv;
  uao_reference_locked(&aobj->u_obj);
  __mtx_leave(&uao_list_lock );
  if (prevaobj) {
   uao_detach_locked(&prevaobj->u_obj);
   prevaobj = ((void *)0);
  }
  rv = uao_pagein(aobj, startslot, endslot);
  if (rv) {
   uao_detach_locked(&aobj->u_obj);
   return rv;
  }
  __mtx_enter(&uao_list_lock );
  nextaobj = ((aobj)->u_list.le_next);
  prevaobj = aobj;
 }
 __mtx_leave(&uao_list_lock );
 if (prevaobj) {
  uao_detach_locked(&prevaobj->u_obj);
 }
 return 0;
}
static boolean_t
uao_pagein(struct uvm_aobj *aobj, int startslot, int endslot)
{
 boolean_t rv;
 if (aobj->u_pages > ((1 << 4) * 4)) {
  struct uao_swhash_elt *elt;
  int bucket;
restart:
  for (bucket = aobj->u_swhashmask; bucket >= 0; bucket--) {
   for (elt = ((&aobj->u_swap.slot_hash[bucket])->lh_first);
        elt != ((void *)0);
        elt = ((elt)->list.le_next)) {
    int i;
    for (i = 0; i < (1 << 4); i++) {
     int slot = elt->slots[i];
     if (slot < startslot ||
         slot >= endslot) {
      continue;
     }
     rv = uao_pagein_page(aobj,
       ((elt)->tag << 4) + i);
     if (rv) {
      return rv;
     }
     goto restart;
    }
   }
  }
 } else {
  int i;
  for (i = 0; i < aobj->u_pages; i++) {
   int slot = aobj->u_swap.slot_array[i];
   if (slot < startslot || slot >= endslot) {
    continue;
   }
   rv = uao_pagein_page(aobj, i);
   if (rv) {
    return rv;
   }
  }
 }
 return 0;
}
static boolean_t
uao_pagein_page(struct uvm_aobj *aobj, int pageidx)
{
 struct vm_page *pg;
 int rv, slot, npages;
 pg = ((void *)0);
 npages = 1;
 rv = uao_get(&aobj->u_obj, (voff_t)pageidx << 13,
     &pg, &npages, 0, 0x01 | 0x02, 0, 0);
 switch (rv) {
 case 0:
  break;
 case 4:
 case 7:
  return 0;
 }
 slot = uao_set_swslot(&aobj->u_obj, pageidx, 0);
 uvm_swap_free(slot, 1);
 atomic_clearbits_int(&pg->pg_flags, 0x00000001|0x00000008|0x00000040);
 ;
 pmap_clear_reference(pg);
 __mtx_enter(&uvm.pageqlock );
 uvm_pagedeactivate(pg);
 __mtx_leave(&uvm.pageqlock );
 return 0;
}
void
uao_dropswap_range(struct uvm_object *uobj, voff_t start, voff_t end)
{
 struct uvm_aobj *aobj = (struct uvm_aobj *)uobj;
 int swpgonlydelta = 0;
 if (end == 0) {
  end = 0x7fffffffffffffffLL;
 }
 if (aobj->u_pages > ((1 << 4) * 4)) {
  int i, hashbuckets = aobj->u_swhashmask + 1;
  voff_t taghi;
  voff_t taglo;
  taglo = ((start) >> 4);
  taghi = ((end) >> 4);
  for (i = 0; i < hashbuckets; i++) {
   struct uao_swhash_elt *elt, *next;
   for (elt = ((&aobj->u_swap.slot_hash[i])->lh_first);
        elt != ((void *)0);
        elt = next) {
    int startidx, endidx;
    int j;
    next = ((elt)->list.le_next);
    if (elt->tag < taglo || taghi < elt->tag) {
     continue;
    }
    if (elt->tag == taglo) {
     startidx =
         ((start) & ((1 << 4) - 1));
    } else {
     startidx = 0;
    }
    if (elt->tag == taghi) {
     endidx =
         ((end) & ((1 << 4) - 1));
    } else {
     endidx = (1 << 4);
    }
    for (j = startidx; j < endidx; j++) {
     int slot = elt->slots[j];
     ((uvm_pagelookup(&aobj->u_obj, (voff_t)(((elt)->tag << 4) + j) << 13) == ((void *)0)) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../uvm/uvm_aobj.c", 1513, "uvm_pagelookup(&aobj->u_obj, (voff_t)(UAO_SWHASH_ELT_PAGEIDX_BASE(elt) + j) << PAGE_SHIFT) == NULL"));
     if (slot > 0) {
      uvm_swap_free(slot, 1);
      swpgonlydelta++;
      ((elt->count > 0) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../uvm/uvm_aobj.c", 1518, "elt->count > 0"));
      elt->slots[j] = 0;
      elt->count--;
     }
    }
    if (elt->count == 0) {
     do { if ((elt)->list.le_next != ((void *)0)) (elt)->list.le_next->list.le_prev = (elt)->list.le_prev; *(elt)->list.le_prev = (elt)->list.le_next; ((elt)->list.le_prev) = ((void *)-1); ((elt)->list.le_next) = ((void *)-1); } while (0);
     pool_put(&uao_swhash_elt_pool, elt);
    }
   }
  }
 } else {
  int i;
  if (aobj->u_pages < end) {
   end = aobj->u_pages;
  }
  for (i = start; i < end; i++) {
   int slot = aobj->u_swap.slot_array[i];
   if (slot > 0) {
    uvm_swap_free(slot, 1);
    swpgonlydelta++;
   }
  }
 }
 if (swpgonlydelta > 0) {
  ((uvmexp.swpgonly >= swpgonlydelta) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../uvm/uvm_aobj.c", 1551, "uvmexp.swpgonly >= swpgonlydelta"));
  uvmexp.swpgonly -= swpgonlydelta;
 }
}
