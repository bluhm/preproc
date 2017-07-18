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
struct flock {
 off_t l_start;
 off_t l_len;
 pid_t l_pid;
 short l_type;
 short l_whence;
};
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
struct device;
struct wsdisplay_emulops {
 int (*cursor)(void *c, int on, int row, int col);
 int (*mapchar)(void *, int, unsigned int *);
 int (*putchar)(void *c, int row, int col, u_int uc, long attr);
 int (*copycols)(void *c, int row, int srccol, int dstcol,
      int ncols);
 int (*erasecols)(void *c, int row, int startcol, int ncols, long);
 int (*copyrows)(void *c, int srcrow, int dstrow, int nrows);
 int (*eraserows)(void *c, int row, int nrows, long attr);
 int (*alloc_attr)(void *c, int fg, int bg, int flags, long *attrp);
 void (*unpack_attr)(void *c, long attr, int *fg, int *bg, int *ul);
};
struct wsscreen_descr {
 char name[16];
 int ncols, nrows;
 const struct wsdisplay_emulops *textops;
 int fontwidth, fontheight;
 int capabilities;
};
struct wsdisplay_charcell {
 u_int uc;
 long attr;
};
struct wsdisplay_font;
struct wsdisplay_accessops {
 int (*ioctl)(void *v, u_long cmd, caddr_t data, int flag,
      struct proc *p);
 paddr_t (*mmap)(void *v, off_t off, int prot);
 int (*alloc_screen)(void *, const struct wsscreen_descr *,
         void **, int *, int *, long *);
 void (*free_screen)(void *, void *);
 int (*show_screen)(void *, void *, int,
          void (*) (void *, int, int), void *);
 int (*load_font)(void *, void *, struct wsdisplay_font *);
 int (*list_font)(void *, struct wsdisplay_font *);
 void (*scrollback)(void *, void *, int);
 int (*getchar)(void *, int, int, struct wsdisplay_charcell *);
 void (*burn_screen)(void *, u_int, u_int);
 void (*pollc)(void *, int);
};
struct wsscreen_list {
 int nscreens;
 const struct wsscreen_descr **screens;
};
struct wsemuldisplaydev_attach_args {
 int console;
 const struct wsscreen_list *scrdata;
 const struct wsdisplay_accessops *accessops;
 void *accesscookie;
 u_int defaultscreens;
};
struct wscons_syncops {
 int (*detach)(void *, int, void (*)(void *, int, int), void *);
 int (*attach)(void *, int, void (*)(void *, int, int), void *);
 int (*check)(void *);
 void (*destroy)(void *);
};
void wsdisplay_cnattach(const struct wsscreen_descr *, void *,
    int, int, long);
int wsemuldisplaydevprint(void *, const char *);
int wsemuldisplaydevsubmatch(struct device *, void *, void *);
void wsdisplay_cnputc(dev_t dev, int i);
struct wsdisplay_softc;
struct wsscreen;
int wsscreen_attach_sync(struct wsscreen *,
         const struct wscons_syncops *, void *);
int wsscreen_detach_sync(struct wsscreen *);
int wsscreen_lookup_sync(struct wsscreen *,
         const struct wscons_syncops *, void **);
int wsdisplay_maxscreenidx(struct wsdisplay_softc *);
int wsdisplay_screenstate(struct wsdisplay_softc *, int);
int wsdisplay_getactivescreen(struct wsdisplay_softc *);
int wsscreen_switchwait(struct wsdisplay_softc *, int);
int wsdisplay_internal_ioctl(struct wsdisplay_softc *sc,
      struct wsscreen *,
      u_long cmd, caddr_t data,
      int flag, struct proc *p);
int wsdisplay_usl_ioctl1(struct wsdisplay_softc *,
        u_long, caddr_t, int, struct proc *);
int wsdisplay_usl_ioctl2(struct wsdisplay_softc *, struct wsscreen *,
        u_long, caddr_t, int, struct proc *);
int wsdisplay_cfg_ioctl(struct wsdisplay_softc *sc,
        u_long cmd, caddr_t data,
        int flag, struct proc *p);
void wsdisplay_switchtoconsole(void);
void wsdisplay_suspend(void);
void wsdisplay_resume(void);
const struct wsscreen_descr *
    wsdisplay_screentype_pick(const struct wsscreen_list *, const char *);
void wsdisplay_burn(void *v, u_int flags);
void wsscrollback(void *v, int op);
struct device;
struct wsdisplay_emulops;
enum wsemul_resetops {
 WSEMUL_RESET,
 WSEMUL_SYNCFONT,
 WSEMUL_CLEARSCREEN,
 WSEMUL_CLEARCURSOR
};
struct wsemul_ops {
 char name[16];
 void *(*cnattach)(const struct wsscreen_descr *, void *,
      int, int, long);
 void *(*attach)(int, const struct wsscreen_descr *, void *,
    int, int, void *, long);
 u_int (*output)(void *, const u_char *, u_int, int);
 int (*translate)(void *, kbd_t, keysym_t, const u_char **);
 void (*detach)(void *, u_int *, u_int *);
 void (*reset)(void *, enum wsemul_resetops);
};
struct wsemul_inputstate {
 u_int32_t inchar;
 u_int mbleft;
};
extern const struct wsemul_ops wsemul_dumb_ops;
extern const struct wsemul_ops wsemul_sun_ops;
extern const struct wsemul_ops wsemul_vt100_ops;
const struct wsemul_ops *wsemul_pick(const char *);
const char *wsemul_getname(int);
void wsdisplay_emulbell(void *v);
void wsdisplay_emulinput(void *v, const u_char *, u_int);
int wsemul_getchar(const u_char **, u_int *, struct wsemul_inputstate *,
     int);
int wsemul_utf8_translate(u_int32_t, kbd_t, u_char *, int);
struct wsemul_abortstate {
 enum {
  ABORT_OK,
  ABORT_FAILED_CURSOR,
  ABORT_FAILED_JUMP_SCROLL,
  ABORT_FAILED_OTHER
 } state;
 int skip;
 int done;
 int lines;
};
static inline void
wsemul_resume_abort(struct wsemul_abortstate *was)
{
 was->state = ABORT_OK;
 was->done = 0;
}
static inline void
wsemul_abort_cursor(struct wsemul_abortstate *was)
{
 was->state = ABORT_FAILED_CURSOR;
}
static inline void
wsemul_abort_jump_scroll(struct wsemul_abortstate *was, int lines)
{
 was->state = ABORT_FAILED_JUMP_SCROLL;
 was->skip = was->done;
 was->lines = lines;
}
static inline void
wsemul_abort_other(struct wsemul_abortstate *was)
{
 was->state = ABORT_FAILED_OTHER;
 was->skip = was->done;
}
static inline void
wsemul_reset_abortstate(struct wsemul_abortstate *was)
{
 was->state = ABORT_OK;
 was->skip = 0;
}
void *wsemul_sun_cnattach(const struct wsscreen_descr *, void *,
    int, int, long);
void *wsemul_sun_attach(int, const struct wsscreen_descr *,
    void *, int, int, void *, long);
u_int wsemul_sun_output(void *, const u_char *, u_int, int);
int wsemul_sun_translate(void *, kbd_t, keysym_t, const u_char **);
void wsemul_sun_detach(void *, u_int *, u_int *);
void wsemul_sun_resetop(void *, enum wsemul_resetops);
const struct wsemul_ops wsemul_sun_ops = {
 "sun",
 wsemul_sun_cnattach,
 wsemul_sun_attach,
 wsemul_sun_output,
 wsemul_sun_translate,
 wsemul_sun_detach,
 wsemul_sun_resetop
};
struct wsemul_sun_emuldata {
 const struct wsdisplay_emulops *emulops;
 struct wsemul_abortstate abortstate;
 void *emulcookie;
 void *cbcookie;
 int scrcapabilities;
 u_int nrows, ncols, crow, ccol;
 long defattr;
 u_int state;
 u_int flags;
 u_int args[2];
 int nargs;
 u_int scrolldist;
 long curattr, bkgdattr;
 long kernattr;
 int attrflags, fgcol, bgcol;
 struct wsemul_inputstate instate;
 struct wsemul_inputstate kstate;
 u_char translatebuf[6];
 int console;
};
void wsemul_sun_init(struct wsemul_sun_emuldata *,
     const struct wsscreen_descr *, void *, int, int, long);
int wsemul_sun_jump_scroll(struct wsemul_sun_emuldata *, const u_char *,
     u_int, int);
void wsemul_sun_reset(struct wsemul_sun_emuldata *);
int wsemul_sun_output_lowchars(struct wsemul_sun_emuldata *,
     struct wsemul_inputstate *, int);
int wsemul_sun_output_normal(struct wsemul_sun_emuldata *,
     struct wsemul_inputstate *, int);
int wsemul_sun_output_haveesc(struct wsemul_sun_emuldata *,
     struct wsemul_inputstate *);
int wsemul_sun_output_control(struct wsemul_sun_emuldata *,
     struct wsemul_inputstate *);
int wsemul_sun_output_percent(struct wsemul_sun_emuldata *,
     struct wsemul_inputstate *);
int wsemul_sun_control(struct wsemul_sun_emuldata *,
     struct wsemul_inputstate *);
int wsemul_sun_selectattribute(struct wsemul_sun_emuldata *, int, int, int,
     long *, long *);
int wsemul_sun_scrollup(struct wsemul_sun_emuldata *, u_int);
struct wsemul_sun_emuldata wsemul_sun_console_emuldata;
void
wsemul_sun_init(struct wsemul_sun_emuldata *edp,
    const struct wsscreen_descr *type, void *cookie, int ccol, int crow,
    long defattr)
{
 edp->emulops = type->textops;
 edp->emulcookie = cookie;
 edp->scrcapabilities = type->capabilities;
 edp->nrows = type->nrows;
 edp->ncols = type->ncols;
 edp->crow = crow;
 edp->ccol = ccol;
 edp->defattr = defattr;
 wsemul_reset_abortstate(&edp->abortstate);
}
void
wsemul_sun_reset(struct wsemul_sun_emuldata *edp)
{
 edp->flags = 0;
 edp->state = 0;
 edp->bkgdattr = edp->curattr = edp->defattr;
 edp->attrflags = 0;
 edp->fgcol = 0;
 edp->bgcol = 7;
 edp->scrolldist = 1;
 edp->instate.inchar = 0;
 edp->instate.mbleft = 0;
 edp->kstate.inchar = 0;
 edp->kstate.mbleft = 0;
}
void *
wsemul_sun_cnattach(const struct wsscreen_descr *type, void *cookie, int ccol,
    int crow, long defattr)
{
 struct wsemul_sun_emuldata *edp;
 int res;
 edp = &wsemul_sun_console_emuldata;
 wsemul_sun_init(edp, type, cookie, ccol, crow, defattr);
 if (type->capabilities & 1)
  res = (*edp->emulops->alloc_attr)(cookie,
         0, 7,
         0 | 16,
         &edp->kernattr);
 else
  res = (*edp->emulops->alloc_attr)(cookie, 0, 0,
         0,
         &edp->kernattr);
 if (res)
  edp->kernattr = defattr;
 edp->cbcookie = ((void *)0);
 edp->console = 1;
 wsemul_sun_reset(edp);
 return (edp);
}
void *
wsemul_sun_attach(int console, const struct wsscreen_descr *type, void *cookie,
    int ccol, int crow, void *cbcookie, long defattr)
{
 struct wsemul_sun_emuldata *edp;
 if (console) {
  edp = &wsemul_sun_console_emuldata;
  ((edp->console == 1) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../dev/wscons/wsemul_sun.c", 246, "edp->console == 1"));
 } else {
  edp = malloc(sizeof *edp, 2, 0x0002);
  if (edp == ((void *)0))
   return (((void *)0));
  wsemul_sun_init(edp, type, cookie, ccol, crow, defattr);
  edp->console = 0;
 }
 edp->cbcookie = cbcookie;
 wsemul_sun_reset(edp);
 return (edp);
}
int
wsemul_sun_output_lowchars(struct wsemul_sun_emuldata *edp,
    struct wsemul_inputstate *instate, int kernel)
{
 u_int n;
 int rc = 0;
 switch (instate->inchar) {
 case 0x00:
 default:
  break;
 case 0x07:
  wsdisplay_emulbell(edp->cbcookie);
  break;
 case 0x08:
  if (edp->ccol > 0)
   edp->ccol--;
  break;
 case 0x0d:
  edp->ccol = 0;
  break;
 case 0x09:
  n = min(8 - (edp->ccol & 7), (edp->ncols - 1 - edp->ccol));
  if (n != 0) {
   do { if ((&edp->abortstate)->skip != 0) { (&edp->abortstate)->skip--; (rc) = 0; } else { (rc) = (*(edp)->emulops->erasecols) (edp->emulcookie, edp->crow, edp->ccol, n, kernel ? edp->kernattr : edp->bkgdattr) ; } if ((rc) == 0) (&edp->abortstate)->done++; } while (0);
   if (rc != 0)
    break;
   edp->ccol += n;
  }
  break;
 case 0x0c:
  do { if ((&edp->abortstate)->skip != 0) { (&edp->abortstate)->skip--; (rc) = 0; } else { (rc) = (*(edp)->emulops->eraserows) (edp->emulcookie, 0, edp->nrows, edp->bkgdattr) ; } if ((rc) == 0) (&edp->abortstate)->done++; } while (0);
  if (rc != 0)
   break;
  edp->ccol = edp->crow = 0;
  break;
 case 0x0b:
  if (edp->crow > 0)
   edp->crow--;
  break;
 case 0x1b:
  if (kernel) {
   printf("wsemul_sun_output_lowchars: ESC in kernel "
       "output ignored\n");
   break;
  }
  edp->state = 1;
  break;
 case 0x0a:
  if ((edp->nrows - 1 - edp->crow) > 0)
   edp->crow++;
  else {
   rc = wsemul_sun_scrollup(edp, edp->scrolldist);
   if (rc != 0)
    break;
  }
  break;
 }
 return rc;
}
int
wsemul_sun_output_normal(struct wsemul_sun_emuldata *edp,
    struct wsemul_inputstate *instate, int kernel)
{
 int rc;
 u_int outchar;
 (*edp->emulops->mapchar)(edp->emulcookie, instate->inchar, &outchar);
 do { if ((&edp->abortstate)->skip != 0) { (&edp->abortstate)->skip--; (rc) = 0; } else { (rc) = (*(edp)->emulops->putchar) (edp->emulcookie, edp->crow, edp->ccol, outchar, kernel ? edp->kernattr : edp->curattr) ; } if ((rc) == 0) (&edp->abortstate)->done++; } while (0);
 if (rc != 0)
  return rc;
 if (++edp->ccol >= edp->ncols) {
  if ((edp->nrows - 1 - edp->crow) > 0)
   edp->crow++;
  else {
   rc = wsemul_sun_scrollup(edp, edp->scrolldist);
   if (rc != 0) {
    edp->ccol--;
    return rc;
   }
  }
  edp->ccol = 0;
 }
 return 0;
}
int
wsemul_sun_output_haveesc(struct wsemul_sun_emuldata *edp,
    struct wsemul_inputstate *instate)
{
 switch (instate->inchar) {
 case '[':
  edp->nargs = 0;
  __builtin_bzero((edp->args), (sizeof (edp->args)));
  edp->state = 2;
  break;
 case '%':
  edp->state = 3;
  break;
 default:
  edp->state = 0;
  break;
 }
 return 0;
}
int
wsemul_sun_control(struct wsemul_sun_emuldata *edp,
    struct wsemul_inputstate *instate)
{
 u_int n, src, dst;
 int flags, fgcol, bgcol;
 long attr, bkgdattr;
 int rc = 0;
 switch (instate->inchar) {
 case '@':
  n = min(((((0) >= edp->nargs ? 0 : edp->args[(0) + (((0)>(edp->nargs - (1)))?(0):(edp->nargs - (1)))])) != 0 ? (((0) >= edp->nargs ? 0 : edp->args[(0) + (((0)>(edp->nargs - (1)))?(0):(edp->nargs - (1)))])) : 1), (edp->ncols - 1 - edp->ccol) + 1);
  src = edp->ccol;
  dst = edp->ccol + n;
  if (dst < edp->ncols) {
   do { if ((&edp->abortstate)->skip != 0) { (&edp->abortstate)->skip--; (rc) = 0; } else { (rc) = (*(edp)->emulops->copycols) (edp->emulcookie, edp->crow, src, dst, edp->ncols - dst) ; } if ((rc) == 0) (&edp->abortstate)->done++; } while (0);
   if (rc != 0)
    break;
  }
  do { if ((&edp->abortstate)->skip != 0) { (&edp->abortstate)->skip--; (rc) = 0; } else { (rc) = (*(edp)->emulops->erasecols) (edp->emulcookie, edp->crow, src, n, edp->bkgdattr) ; } if ((rc) == 0) (&edp->abortstate)->done++; } while (0);
  break;
 case 'A':
  edp->crow -= min(((((0) >= edp->nargs ? 0 : edp->args[(0) + (((0)>(edp->nargs - (1)))?(0):(edp->nargs - (1)))])) != 0 ? (((0) >= edp->nargs ? 0 : edp->args[(0) + (((0)>(edp->nargs - (1)))?(0):(edp->nargs - (1)))])) : 1), edp->crow);
  break;
 case 'E':
  edp->ccol = 0;
 case 'B':
  edp->crow += min(((((0) >= edp->nargs ? 0 : edp->args[(0) + (((0)>(edp->nargs - (1)))?(0):(edp->nargs - (1)))])) != 0 ? (((0) >= edp->nargs ? 0 : edp->args[(0) + (((0)>(edp->nargs - (1)))?(0):(edp->nargs - (1)))])) : 1), (edp->nrows - 1 - edp->crow));
  break;
 case 'C':
  edp->ccol += min(((((0) >= edp->nargs ? 0 : edp->args[(0) + (((0)>(edp->nargs - (1)))?(0):(edp->nargs - (1)))])) != 0 ? (((0) >= edp->nargs ? 0 : edp->args[(0) + (((0)>(edp->nargs - (1)))?(0):(edp->nargs - (1)))])) : 1), (edp->ncols - 1 - edp->ccol));
  break;
 case 'D':
  edp->ccol -= min(((((0) >= edp->nargs ? 0 : edp->args[(0) + (((0)>(edp->nargs - (1)))?(0):(edp->nargs - (1)))])) != 0 ? (((0) >= edp->nargs ? 0 : edp->args[(0) + (((0)>(edp->nargs - (1)))?(0):(edp->nargs - (1)))])) : 1), edp->ccol);
  break;
 case 'f':
 case 'H':
  edp->crow = min(((((0) >= edp->nargs ? 0 : edp->args[(0) + (((0)>(edp->nargs - (2)))?(0):(edp->nargs - (2)))])) != 0 ? (((0) >= edp->nargs ? 0 : edp->args[(0) + (((0)>(edp->nargs - (2)))?(0):(edp->nargs - (2)))])) : 1), edp->nrows) - 1;
  edp->ccol = min(((((1) >= edp->nargs ? 0 : edp->args[(1) + (((0)>(edp->nargs - (2)))?(0):(edp->nargs - (2)))])) != 0 ? (((1) >= edp->nargs ? 0 : edp->args[(1) + (((0)>(edp->nargs - (2)))?(0):(edp->nargs - (2)))])) : 1), edp->ncols) - 1;
  break;
 case 'J':
  if ((edp->nrows - 1 - edp->crow) > 0) {
   do { if ((&edp->abortstate)->skip != 0) { (&edp->abortstate)->skip--; (rc) = 0; } else { (rc) = (*(edp)->emulops->eraserows) (edp->emulcookie, edp->crow + 1, (edp->nrows - 1 - edp->crow), edp->bkgdattr) ; } if ((rc) == 0) (&edp->abortstate)->done++; } while (0);
   if (rc != 0)
    break;
  }
 case 'K':
  do { if ((&edp->abortstate)->skip != 0) { (&edp->abortstate)->skip--; (rc) = 0; } else { (rc) = (*(edp)->emulops->erasecols) (edp->emulcookie, edp->crow, edp->ccol, (edp->ncols - 1 - edp->ccol) + 1, edp->bkgdattr) ; } if ((rc) == 0) (&edp->abortstate)->done++; } while (0);
  break;
 case 'L':
  n = min(((((0) >= edp->nargs ? 0 : edp->args[(0) + (((0)>(edp->nargs - (1)))?(0):(edp->nargs - (1)))])) != 0 ? (((0) >= edp->nargs ? 0 : edp->args[(0) + (((0)>(edp->nargs - (1)))?(0):(edp->nargs - (1)))])) : 1), (edp->nrows - 1 - edp->crow) + 1);
  src = edp->crow;
  dst = edp->crow + n;
  if (dst < edp->nrows) {
   do { if ((&edp->abortstate)->skip != 0) { (&edp->abortstate)->skip--; (rc) = 0; } else { (rc) = (*(edp)->emulops->copyrows) (edp->emulcookie, src, dst, edp->nrows - dst) ; } if ((rc) == 0) (&edp->abortstate)->done++; } while (0);
   if (rc != 0)
    break;
  }
  do { if ((&edp->abortstate)->skip != 0) { (&edp->abortstate)->skip--; (rc) = 0; } else { (rc) = (*(edp)->emulops->eraserows) (edp->emulcookie, src, n, edp->bkgdattr) ; } if ((rc) == 0) (&edp->abortstate)->done++; } while (0);
  break;
 case 'M':
  n = min(((((0) >= edp->nargs ? 0 : edp->args[(0) + (((0)>(edp->nargs - (1)))?(0):(edp->nargs - (1)))])) != 0 ? (((0) >= edp->nargs ? 0 : edp->args[(0) + (((0)>(edp->nargs - (1)))?(0):(edp->nargs - (1)))])) : 1), (edp->nrows - 1 - edp->crow) + 1);
  src = edp->crow + n;
  dst = edp->crow;
  if (src < edp->nrows) {
   do { if ((&edp->abortstate)->skip != 0) { (&edp->abortstate)->skip--; (rc) = 0; } else { (rc) = (*(edp)->emulops->copyrows) (edp->emulcookie, src, dst, edp->nrows - src) ; } if ((rc) == 0) (&edp->abortstate)->done++; } while (0);
   if (rc != 0)
    break;
  }
  do { if ((&edp->abortstate)->skip != 0) { (&edp->abortstate)->skip--; (rc) = 0; } else { (rc) = (*(edp)->emulops->eraserows) (edp->emulcookie, dst + edp->nrows - src, n, edp->bkgdattr) ; } if ((rc) == 0) (&edp->abortstate)->done++; } while (0);
  break;
 case 'P':
  n = min(((((0) >= edp->nargs ? 0 : edp->args[(0) + (((0)>(edp->nargs - (1)))?(0):(edp->nargs - (1)))])) != 0 ? (((0) >= edp->nargs ? 0 : edp->args[(0) + (((0)>(edp->nargs - (1)))?(0):(edp->nargs - (1)))])) : 1), (edp->ncols - 1 - edp->ccol) + 1);
  src = edp->ccol + n;
  dst = edp->ccol;
  if (src < edp->ncols) {
   do { if ((&edp->abortstate)->skip != 0) { (&edp->abortstate)->skip--; (rc) = 0; } else { (rc) = (*(edp)->emulops->copycols) (edp->emulcookie, edp->crow, src, dst, edp->ncols - src) ; } if ((rc) == 0) (&edp->abortstate)->done++; } while (0);
   if (rc != 0)
    break;
  }
  do { if ((&edp->abortstate)->skip != 0) { (&edp->abortstate)->skip--; (rc) = 0; } else { (rc) = (*(edp)->emulops->erasecols) (edp->emulcookie, edp->crow, edp->ncols - n, n, edp->bkgdattr) ; } if ((rc) == 0) (&edp->abortstate)->done++; } while (0);
  break;
 case 'm':
  flags = edp->attrflags;
  fgcol = edp->fgcol;
  bgcol = edp->bgcol;
  for (n = 0; n < edp->nargs; n++) {
   switch (((n) >= edp->nargs ? 0 : edp->args[(n) + (((0)>(edp->nargs - (edp->nargs)))?(0):(edp->nargs - (edp->nargs)))])) {
   case 0:
    if (n == edp->nargs - 1) {
     edp->bkgdattr =
         edp->curattr = edp->defattr;
     edp->attrflags = 0;
     edp->fgcol = 0;
     edp->bgcol = 7;
     return 0;
    }
    flags = 0;
    fgcol = 0;
    bgcol = 7;
    break;
   case 1:
    flags |= 2;
    break;
   case 4:
    flags |= 8;
    break;
   case 7:
    flags |= 1;
    break;
   case 30: case 31: case 32: case 33:
   case 34: case 35: case 36: case 37:
    fgcol = ((n) >= edp->nargs ? 0 : edp->args[(n) + (((0)>(edp->nargs - (edp->nargs)))?(0):(edp->nargs - (edp->nargs)))]) - 30;
    break;
   case 40: case 41: case 42: case 43:
   case 44: case 45: case 46: case 47:
    bgcol = ((n) >= edp->nargs ? 0 : edp->args[(n) + (((0)>(edp->nargs - (edp->nargs)))?(0):(edp->nargs - (edp->nargs)))]) - 40;
    break;
   }
  }
setattr:
  if (wsemul_sun_selectattribute(edp, flags, fgcol, bgcol, &attr,
      &bkgdattr)) {
  } else {
   edp->curattr = attr;
   edp->bkgdattr = bkgdattr;
   edp->attrflags = flags;
   edp->fgcol = fgcol;
   edp->bgcol = bgcol;
  }
  break;
 case 'p':
  flags = 0;
  fgcol = 0;
  bgcol = 7;
  goto setattr;
 case 'q':
  flags = 0;
  fgcol = 7;
  bgcol = 0;
  goto setattr;
 case 'r':
  edp->scrolldist = min(((0) >= edp->nargs ? 0 : edp->args[(0) + (((0)>(edp->nargs - (1)))?(0):(edp->nargs - (1)))]), edp->nrows);
  break;
 case 's':
  wsemul_sun_reset(edp);
  break;
 }
 return rc;
}
int
wsemul_sun_output_control(struct wsemul_sun_emuldata *edp,
    struct wsemul_inputstate *instate)
{
 int oargs;
 int rc;
 switch (instate->inchar) {
 case '0': case '1': case '2': case '3': case '4':
 case '5': case '6': case '7': case '8': case '9':
  if (edp->nargs > 2 - 1) {
   __builtin_bcopy((edp->args + 1), (edp->args), ((2 - 1) * sizeof(edp->args[0])));
   edp->args[edp->nargs = 2 - 1] = 0;
  }
  edp->args[edp->nargs] = (edp->args[edp->nargs] * 10) +
      (instate->inchar - '0');
  break;
 case ';':
  edp->nargs++;
  break;
 default:
  oargs = edp->nargs++;
  if (edp->nargs > 2)
   edp->nargs = 2;
  rc = wsemul_sun_control(edp, instate);
  if (rc != 0) {
   edp->nargs = oargs;
   return rc;
  }
  edp->state = 0;
  break;
 }
 return 0;
}
int
wsemul_sun_output_percent(struct wsemul_sun_emuldata *edp,
    struct wsemul_inputstate *instate)
{
 switch (instate->inchar) {
 case 'G':
  edp->flags |= 0x01;
  edp->kstate.mbleft = edp->instate.mbleft = 0;
  break;
 case '@':
  edp->flags &= ~0x01;
  break;
 }
 edp->state = 0;
 return 0;
}
u_int
wsemul_sun_output(void *cookie, const u_char *data, u_int count, int kernel)
{
 struct wsemul_sun_emuldata *edp = cookie;
 struct wsemul_inputstate *instate;
 u_int processed = 0;
 int lines;
 int rc = 0;
 if (kernel && !edp->console)
  panic("wsemul_sun_output: kernel output, not console");
 instate = kernel ? &edp->kstate : &edp->instate;
 switch (edp->abortstate.state) {
 case ABORT_FAILED_CURSOR:
  data++, count--;
  processed++;
  wsemul_reset_abortstate(&edp->abortstate);
  break;
 case ABORT_OK:
  rc = (*edp->emulops->cursor)
      (edp->emulcookie, 0, edp->crow, edp->ccol);
  if (rc != 0)
   return 0;
  break;
 default:
  break;
 }
 for (;;) {
  switch (edp->abortstate.state) {
  case ABORT_FAILED_JUMP_SCROLL:
   lines = edp->abortstate.lines;
   break;
  case ABORT_OK:
   if ((edp->state == 0 || kernel) &&
       (edp->nrows - 1 - edp->crow) == 0 && edp->scrolldist != 0)
    lines = wsemul_sun_jump_scroll(edp, data,
        count, kernel);
   else
    lines = 0;
   break;
  default:
   lines = 0;
   break;
  }
  if (lines > 1) {
   wsemul_resume_abort(&edp->abortstate);
   rc = wsemul_sun_scrollup(edp, lines);
   if (rc != 0) {
    wsemul_abort_jump_scroll(&edp->abortstate,
        lines);
    return processed;
   }
   wsemul_reset_abortstate(&edp->abortstate);
   edp->crow--;
  }
  wsemul_resume_abort(&edp->abortstate);
  if (wsemul_getchar(&data, &count, instate,
      (edp->state == 0 && !kernel) ?
        edp->flags & 0x01 : 0
      ) != 0)
   break;
  if (instate->inchar < ' ') {
   rc = wsemul_sun_output_lowchars(edp, instate, kernel);
   if (rc != 0)
    break;
   processed++;
   continue;
  }
  if (kernel) {
   rc = wsemul_sun_output_normal(edp, instate, 1);
   if (rc != 0)
    break;
   processed++;
   continue;
  }
  switch (edp->state) {
  case 0:
   rc = wsemul_sun_output_normal(edp, instate, 0);
   break;
  case 1:
   rc = wsemul_sun_output_haveesc(edp, instate);
   break;
  case 2:
   rc = wsemul_sun_output_control(edp, instate);
   break;
  case 3:
   rc = wsemul_sun_output_percent(edp, instate);
   break;
  default:
   panic("wsemul_sun: invalid state %d", edp->state);
   break;
  }
  if (rc != 0)
   break;
  processed++;
 }
 if (rc != 0)
  wsemul_abort_other(&edp->abortstate);
 else {
  rc = (*edp->emulops->cursor)
      (edp->emulcookie, 1, edp->crow, edp->ccol);
  if (rc != 0) {
   wsemul_abort_cursor(&edp->abortstate);
   processed--;
  }
 }
 if (rc == 0)
  wsemul_reset_abortstate(&edp->abortstate);
 return processed;
}
int
wsemul_sun_jump_scroll(struct wsemul_sun_emuldata *edp, const u_char *data,
    u_int count, int kernel)
{
 u_int pos, lines;
 struct wsemul_inputstate tmpstate;
 lines = 0;
 pos = edp->ccol;
 tmpstate = kernel ? edp->kstate : edp->instate;
 while (wsemul_getchar(&data, &count, &tmpstate,
     kernel ? 0 : edp->flags & 0x01
     ) == 0) {
  if (tmpstate.inchar == 0x0c ||
      tmpstate.inchar == 0x0b ||
      tmpstate.inchar == 0x1b)
   break;
  switch (tmpstate.inchar) {
  case 0x08:
   if (pos > 0)
    pos--;
   break;
  case 0x0d:
   pos = 0;
   break;
  case 0x09:
   pos = (pos + 7) & ~7;
   if (pos >= edp->ncols)
    pos = edp->ncols - 1;
   break;
  case 0x0a:
   break;
  default:
   if (++pos >= edp->ncols) {
    pos = 0;
    tmpstate.inchar = 0x0a;
   }
   break;
  }
  if (tmpstate.inchar == 0x0a) {
   if (++lines >= edp->nrows - 1)
    break;
  }
 }
 return lines;
}
int
wsemul_sun_selectattribute(struct wsemul_sun_emuldata *edp, int flags,
    int fgcol, int bgcol, long *attr, long *bkgdattr)
{
 int error;
 if (!(edp->scrcapabilities & 1)) {
  flags &= ~16;
 } else {
  flags |= 16;
 }
 error = (*edp->emulops->alloc_attr)(edp->emulcookie, fgcol, bgcol,
         flags & 16, bkgdattr);
 if (error)
  return (error);
 if ((flags & 2) &&
     !(edp->scrcapabilities & 4)) {
  flags &= ~2;
  if (edp->scrcapabilities & 1) {
   fgcol = 1;
   flags |= 16;
  }
 }
 if ((flags & 8) &&
     !(edp->scrcapabilities & 16)) {
  flags &= ~8;
  if (edp->scrcapabilities & 1) {
   fgcol = 6;
   flags &= ~8;
   flags |= 16;
  }
 }
 if ((flags & 4) &&
     !(edp->scrcapabilities & 8)) {
  flags &= ~4;
 }
 if ((flags & 1) &&
     !(edp->scrcapabilities & 2)) {
  flags &= ~1;
  if (edp->scrcapabilities & 1) {
   int help;
   help = bgcol;
   bgcol = fgcol;
   fgcol = help;
   flags |= 16;
  }
 }
 error = (*edp->emulops->alloc_attr)(edp->emulcookie, fgcol, bgcol,
         flags, attr);
 if (error)
  return (error);
 return (0);
}
static const u_char *sun_fkeys[] = {
 "\033[224z",
 "\033[225z",
 "\033[226z",
 "\033[227z",
 "\033[228z",
 "\033[229z",
 "\033[230z",
 "\033[231z",
 "\033[232z",
 "\033[233z",
 "\033[234z",
 "\033[235z",
};
static const u_char *sun_lkeys[] = {
 "\033[207z",
 ((void *)0),
 "\033[200z",
 ((void *)0),
 "\033[193z",
 "\033[194z",
 "\033[195z",
 "\033[196z",
 "\033[197z",
 "\033[198z",
 "\033[199z",
 "\033[201z",
};
int
wsemul_sun_translate(void *cookie, kbd_t layout, keysym_t in,
    const u_char **out)
{
 struct wsemul_sun_emuldata *edp = cookie;
 if (((in) >= 0x0300 && (in) < 0x0370 ? 0xf801 : (((in) & 0xf000) == 0xe000 ? 0xf803 : (((in) & 0xf800) == 0xf000 ? ((in) & 0xff00) : 0xf802))) == 0xf802) {
  *out = edp->translatebuf;
  return (wsemul_utf8_translate((((in) & 0xf000) == 0xe000 ? ((in) & 0x0fff) : (((in) & 0xf800) == 0xf000 ? ((in) & 0x00ff) : (in))), layout,
      edp->translatebuf, edp->flags & 0x01));
 }
 if (((in) >= 0x0300 && (in) < 0x0370 ? 0xf801 : (((in) & 0xf000) == 0xe000 ? 0xf803 : (((in) & 0xf800) == 0xf000 ? ((in) & 0xff00) : 0xf802))) == 0xf200 && (in & 0x80) == 0) {
  edp->translatebuf[0] = in & 0xff;
  *out = edp->translatebuf;
  return (1);
 }
 if (in >= 0xf300 && in <= 0xf30b) {
  *out = sun_fkeys[in - 0xf300];
  return (6);
 }
 if (in >= 0xf340 && in <= 0xf34b) {
  *out = sun_fkeys[in - 0xf340];
  return (6);
 }
 if (in >= 0xf291 && in <= 0xf294) {
  *out = sun_fkeys[in - 0xf291];
  return (6);
 }
 if (in >= 0xf38a && in <= 0xf395 && sun_lkeys[in - 0xf38a] != ((void *)0)) {
  *out = sun_lkeys[in - 0xf38a];
  return (6);
 }
 switch (in) {
 case 0xf381:
 case 0xf295:
 case 0xf29d:
  *out = "\033[214z";
  return (6);
 case 0xf388:
 case 0xf29c:
  *out = "\033[220z";
  return (6);
 case 0xf389:
 case 0xf29e:
  *out = "\033[247z";
  return (6);
 case 0xf382:
 case 0xf29a:
  *out = "\033[216z";
  return (6);
 case 0xf383:
 case 0xf29b:
  *out = "\033[222z";
  return (6);
 case 0xf384:
 case 0xf297:
  *out = "\033[A";
  return (3);
 case 0xf385:
 case 0xf299:
  *out = "\033[B";
  return (3);
 case 0xf386:
 case 0xf296:
  *out = "\033[D";
  return (3);
 case 0xf387:
 case 0xf298:
  *out = "\033[C";
  return (3);
 case 0xf29f:
  *out = "\177";
  return (1);
 }
 return (0);
}
void
wsemul_sun_detach(void *cookie, u_int *crowp, u_int *ccolp)
{
 struct wsemul_sun_emuldata *edp = cookie;
 *crowp = edp->crow;
 *ccolp = edp->ccol;
 if (edp != &wsemul_sun_console_emuldata)
  free(edp, 2, sizeof *edp);
}
void
wsemul_sun_resetop(void *cookie, enum wsemul_resetops op)
{
 struct wsemul_sun_emuldata *edp = cookie;
 switch (op) {
 case WSEMUL_RESET:
  wsemul_sun_reset(edp);
  break;
 case WSEMUL_CLEARSCREEN:
  (*edp->emulops->eraserows)(edp->emulcookie, 0, edp->nrows,
      edp->bkgdattr);
  edp->ccol = edp->crow = 0;
  (*edp->emulops->cursor)(edp->emulcookie, 1, 0, 0);
  break;
 case WSEMUL_CLEARCURSOR:
  (*edp->emulops->cursor)(edp->emulcookie, 0, edp->crow,
      edp->ccol);
  break;
 default:
  break;
 }
}
int
wsemul_sun_scrollup(struct wsemul_sun_emuldata *edp, u_int lines)
{
 int rc;
 if (lines == 0) {
  do { if ((&edp->abortstate)->skip != 0) { (&edp->abortstate)->skip--; (rc) = 0; } else { (rc) = (*(edp)->emulops->eraserows) (edp->emulcookie, 0, 1, edp->bkgdattr) ; } if ((rc) == 0) (&edp->abortstate)->done++; } while (0);
  if (rc != 0)
   return rc;
  edp->crow = 0;
  return 0;
 }
 if (lines < edp->nrows) {
  do { if ((&edp->abortstate)->skip != 0) { (&edp->abortstate)->skip--; (rc) = 0; } else { (rc) = (*(edp)->emulops->copyrows) (edp->emulcookie, lines, 0, edp->nrows - lines) ; } if ((rc) == 0) (&edp->abortstate)->done++; } while (0);
  if (rc != 0)
   return rc;
 }
 do { if ((&edp->abortstate)->skip != 0) { (&edp->abortstate)->skip--; (rc) = 0; } else { (rc) = (*(edp)->emulops->eraserows) (edp->emulcookie, edp->nrows - lines, lines, edp->bkgdattr) ; } if ((rc) == 0) (&edp->abortstate)->done++; } while (0);
 if (rc != 0)
  return rc;
 edp->crow -= lines - 1;
 return 0;
}
