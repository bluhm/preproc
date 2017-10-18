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
struct sigacts {
 sig_t ps_sigact[33];
 sigset_t ps_catchmask[33];
 sigset_t ps_sigonstack;
 sigset_t ps_sigintr;
 sigset_t ps_sigreset;
 sigset_t ps_siginfo;
 sigset_t ps_sigignore;
 sigset_t ps_sigcatch;
 int ps_flags;
 int ps_refcnt;
};
enum signal_type { SPROCESS, STHREAD, SPROPAGATED };
int coredump(struct proc *p);
void execsigs(struct proc *p);
void gsignal(int pgid, int sig);
void csignal(pid_t pgid, int signum, uid_t uid, uid_t euid);
int issignal(struct proc *p);
void pgsignal(struct pgrp *pgrp, int sig, int checkctty);
void postsig(int sig);
void psignal(struct proc *p, int sig);
void ptsignal(struct proc *p, int sig, enum signal_type type);
void siginit(struct process *);
void trapsignal(struct proc *p, int sig, u_long code, int type,
     union sigval val);
void sigexit(struct proc *, int);
int sigonstack(size_t);
void setsigvec(struct proc *, int, struct sigaction *);
int killpg1(struct proc *, int, int, int);
void signal_init(void);
struct sigacts *sigactsinit(struct process *);
struct sigacts *sigactsshare(struct process *);
void sigstkinit(struct sigaltstack *);
void sigactsunshare(struct process *);
void sigactsfree(struct process *);
void sendsig(sig_t action, int sig, int returnmask, u_long code,
     int type, union sigval val);
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
struct wseventvar {
 u_int get;
 volatile u_int put;
 struct selinfo sel;
 struct process *io;
 int wanted;
 int async;
 struct wscons_event *q;
};
void wsevent_init(struct wseventvar *);
void wsevent_fini(struct wseventvar *);
int wsevent_read(struct wseventvar *, struct uio *, int);
int wsevent_poll(struct wseventvar *, int, struct proc *);
int wsevent_kqfilter(struct wseventvar *, struct knote *);
struct btn_state {
 u_int buttons;
 u_int sync;
};
struct motion_state {
 int dx;
 int dy;
 int dz;
 int dw;
 int x;
 int y;
 u_int sync;
 int x_delta;
 int y_delta;
};
struct touch_state {
 int pressure;
 int contacts;
 int width;
 u_int sync;
 int min_pressure;
 int prev_contacts;
};
struct mt_slot {
 int x;
 int y;
 int pressure;
 int id;
};
struct mt_state {
 u_int touches;
 u_int frame;
 int num_slots;
 struct mt_slot *slots;
 u_int sync[4];
 int num_touches;
 u_int ptr;
 u_int ptr_cycle;
 u_int prev_ptr;
 int *matrix;
};
struct axis_filter {
 int scale;
 int rmdr;
 int inv;
 int hysteresis;
 int acc;
 int avg;
 int avg_rmdr;
 int mag_scale;
 int dclr_rmdr;
 int dmax;
};
struct interval {
 long avg;
 long sum;
 int samples;
 struct timespec ts;
 int track;
};
struct wsmouseinput {
 u_int flags;
 struct btn_state btn;
 struct btn_state sbtn;
 struct motion_state motion;
 struct touch_state touch;
 struct mt_state mt;
 struct {
  struct axis_filter h;
  struct axis_filter v;
  int dclr;
  int mag;
  u_int mode;
  int ratio;
  int swapxy;
  int tracking_maxdist;
  int pressure_lo;
  int pressure_hi;
 } filter;
 struct wsmousehw hw;
 struct interval intv;
 struct wstpad *tp;
 struct wseventvar **evar;
};
struct evq_access {
 struct wseventvar *evar;
 struct timespec ts;
 int put;
 int result;
};
void wsmouse_evq_put(struct evq_access *, int, int);
void wsmouse_input_reset(struct wsmouseinput *);
void wsmouse_input_cleanup(struct wsmouseinput *);
void wstpad_compat_convert(struct wsmouseinput *, struct evq_access *);
void wstpad_init_deceleration(struct wsmouseinput *);
int wstpad_configure(struct wsmouseinput *);
void wstpad_reset(struct wsmouseinput *);
int wstpad_get_param(struct wsmouseinput *, int, int *);
int wstpad_set_param(struct wsmouseinput *, int, int);
enum tpad_handlers {
 SOFTBUTTON_HDLR,
 TOPBUTTON_HDLR,
 TAP_HDLR,
 F2SCROLL_HDLR,
 EDGESCROLL_HDLR,
 CLICK_HDLR,
};
enum tap_state {
 TAP_DETECT,
 TAP_IGNORE,
 TAP_LIFTED,
 TAP_2ND_TOUCH,
 TAP_LOCKED,
 TAP_NTH_TOUCH,
};
enum tpad_cmd {
 CLEAR_MOTION_DELTAS,
 SOFTBUTTON_DOWN,
 SOFTBUTTON_UP,
 TAPBUTTON_DOWN,
 TAPBUTTON_UP,
 TAPBUTTON_DOUBLECLK,
 VSCROLL,
 HSCROLL,
};
enum touchstates {
 TOUCH_NONE,
 TOUCH_BEGIN,
 TOUCH_UPDATE,
 TOUCH_END,
};
struct tpad_touch {
 u_int flags;
 enum touchstates state;
 int x;
 int y;
 int dir;
 int matches;
 struct {
  int x;
  int y;
  struct timespec time;
 } orig;
};
struct wstpad {
 u_int features;
 u_int handlers;
 struct tpad_touch *t;
 struct tpad_touch *tpad_touches;
 u_int mtcycle;
 int dx;
 int dy;
 int contacts;
 int prev_contacts;
 u_int btns;
 u_int btns_sync;
 int ratio;
 struct timespec time;
 u_int freeze;
 struct timespec freeze_ts;
 struct {
  int left;
  int right;
  int top;
  int bottom;
  int center;
  int center_left;
  int center_right;
  int middle;
 } edge;
 struct {
  int left_edge;
  int right_edge;
  int top_edge;
  int bottom_edge;
  int center_width;
  int f2pressure;
  int f2width;
 } params;
 u_int softbutton;
 u_int sbtnswap;
 struct {
  enum tap_state state;
  int contacts;
  u_int button;
  int maxdist;
  struct timeout to;
  struct timespec maxtime;
  int clicktime;
  int locktime;
 } tap;
 struct {
  int acc_dx;
  int acc_dy;
  int dz;
  int dw;
  int hdist;
  int vdist;
 } scroll;
};
static inline int
normalize_abs(struct axis_filter *filter, int val)
{
 return (filter->inv ? filter->inv - val : val);
}
static inline int
normalize_rel(struct axis_filter *filter, int val)
{
 return (filter->inv ? -val : val);
}
static inline int
direction(int dx, int dy, int ratio)
{
 int rdy, dir = -1;
 if (dx || dy) {
  rdy = abs(dy) * ratio;
  if (abs(dx) * 7094 < rdy)
   dir = 0;
  else if (abs(dx) * 2365 < rdy)
   dir = 1;
  else
   dir = 2;
  if ((dx < 0) != (dy < 0))
   dir = 5 - dir;
  if (dx < 0)
   dir += 6;
 }
 return dir;
}
static inline int
dircmp(int dir1, int dir2)
{
 int diff = abs(dir1 - dir2);
 return (diff <= 6 ? diff : 12 - diff);
}
void
wstpad_set_direction(struct tpad_touch *t, int dx, int dy, int ratio)
{
 int dir;
 if (t->state != TOUCH_UPDATE) {
  t->dir = -1;
  t->matches = 0;
 } else {
  dir = direction(dx, dy, ratio);
  if (t->dir >= 0 && dir >= 0 && dircmp(t->dir, dir) <= 1)
   t->matches++;
  else
   t->matches = 1;
  t->dir = dir;
 }
}
static inline u_int
edge_flags(struct wstpad *tp, int x, int y)
{
 u_int flags = 0;
 if (x < tp->edge.left)
  flags |= (1 << 0);
 else if (x >= tp->edge.right)
  flags |= (1 << 1);
 if (y < tp->edge.bottom)
  flags |= (1 << 3);
 else if (y >= tp->edge.top)
  flags |= (1 << 2);
 return (flags);
}
static inline struct tpad_touch *
get_2nd_touch(struct wsmouseinput *input)
{
 struct wstpad *tp = input->tp;
 int slot;
 if (((tp)->features & (1 << 31))) {
  slot = ffs(input->mt.touches & ~input->mt.ptr);
  if (slot)
   return &tp->tpad_touches[--slot];
 }
 return ((void *)0);
}
static inline void
set_freeze_ts(struct wstpad *tp, int sec, int ms)
{
 tp->freeze_ts.tv_sec = sec;
 tp->freeze_ts.tv_nsec = ms * 1000000;
 do { (&tp->freeze_ts)->tv_sec = (&tp->time)->tv_sec + (&tp->freeze_ts)->tv_sec; (&tp->freeze_ts)->tv_nsec = (&tp->time)->tv_nsec + (&tp->freeze_ts)->tv_nsec; if ((&tp->freeze_ts)->tv_nsec >= 1000000000L) { (&tp->freeze_ts)->tv_sec++; (&tp->freeze_ts)->tv_nsec -= 1000000000L; } } while (0);
}
static inline int
chk_scroll_state(struct wstpad *tp)
{
 if (tp->contacts != tp->prev_contacts || tp->btns || tp->btns_sync) {
  tp->scroll.dz = 0;
  tp->scroll.dw = 0;
  return (0);
 }
 return (tp->dx || tp->dy);
}
void
wstpad_scroll(struct wstpad *tp, int dx, int dy, u_int *cmds)
{
 int sign;
 sign = (dy > 0) - (dy < 0);
 if (sign) {
  if (tp->scroll.dz != -sign) {
   if (tp->t->matches < 3)
    return;
   tp->scroll.dz = -sign;
   tp->scroll.acc_dy = -tp->scroll.vdist / 2;
  }
  tp->scroll.acc_dy += abs(dy);
  if (tp->scroll.acc_dy >= 0) {
   tp->scroll.acc_dy -= tp->scroll.vdist;
   *cmds |= 1 << VSCROLL;
  }
 } else if ((sign = (dx > 0) - (dx < 0))) {
  if (tp->scroll.dw != sign) {
   if (tp->t->matches < 3)
    return;
   tp->scroll.dw = sign;
   tp->scroll.acc_dx = -tp->scroll.hdist / 2;
  }
  tp->scroll.acc_dx += abs(dx);
  if (tp->scroll.acc_dx >= 0) {
   tp->scroll.acc_dx -= tp->scroll.hdist;
   *cmds |= 1 << HSCROLL;
  }
 }
}
void
wstpad_f2scroll(struct wsmouseinput *input, u_int *cmds)
{
 struct wstpad *tp = input->tp;
 struct tpad_touch *t2;
 int dir, dx, dy;
 if (tp->contacts != 2 || !chk_scroll_state(tp))
  return;
 dir = tp->t->dir;
 dy = ((dir) == 0 || (dir) == 11) || ((dir) == 5 || (dir) == 6) ? tp->dy : 0;
 dx = ((dir) == 2 || (dir) == 3) || ((dir) == 8 || (dir) == 9) ? tp->dx : 0;
 if (dx || dy) {
  if (((tp)->features & (1 << 31))) {
   t2 = get_2nd_touch(input);
   if (t2 == ((void *)0))
    return;
   dir = t2->dir;
   if ((dy > 0 && !((dir) == 0 || (dir) == 11)) || (dy < 0 && !((dir) == 5 || (dir) == 6)))
    return;
   if ((dx > 0 && !((dir) == 2 || (dir) == 3)) || (dx < 0 && !((dir) == 8 || (dir) == 9)))
    return;
  }
  wstpad_scroll(tp, dx, dy, cmds);
  set_freeze_ts(tp, 0, 100);
 }
}
void
wstpad_edgescroll(struct wsmouseinput *input, u_int *cmds)
{
 struct wstpad *tp = input->tp;
 struct tpad_touch *t = tp->t;
 int dx = 0, dy = 0;
 if (tp->contacts != 1 || !chk_scroll_state(tp))
  return;
 if (tp->features & (1 << 6)) {
  if (t->flags & (1 << 0))
   dy = tp->dy;
 } else if (t->flags & (1 << 1)) {
  dy = tp->dy;
 } else if ((t->flags & (1 << 3)) &&
     (tp->features & (1 << 5))) {
  dx = tp->dx;
 }
 if (dx || dy)
  wstpad_scroll(tp, dx, dy, cmds);
}
static inline u_int
sbtn(struct wstpad *tp, int x, int y)
{
 if (y >= tp->edge.bottom)
  return (0);
 if ((tp->features & (1 << 1))
     && x >= tp->edge.center_left
     && x < tp->edge.center_right)
  return ((1 << 1));
 return ((x < tp->edge.center ? (1 << 0) : (1 << 2)) ^ tp->sbtnswap);
}
static inline u_int
top_sbtn(struct wstpad *tp, int x, int y)
{
 if (y < tp->edge.top)
  return (0);
 if (x < tp->edge.center_left)
  return ((1 << 0) ^ tp->sbtnswap);
 return (x > tp->edge.center_right
     ? ((1 << 2) ^ tp->sbtnswap) : (1 << 1));
}
u_int
wstpad_get_sbtn(struct wsmouseinput *input, int top)
{
 struct wstpad *tp = input->tp;
 struct tpad_touch *t = tp->t;
 u_int btn;
 btn = 0;
 if (tp->contacts) {
  btn = top ? top_sbtn(tp, t->x, t->y) : sbtn(tp, t->x, t->y);
  if (btn && ((tp)->features & (1 << 31)) && tp->contacts == 2
      && !top && !(tp->features & (1 << 1))) {
   if ((t = get_2nd_touch(input)) != ((void *)0))
    btn |= sbtn(tp, t->x, t->y);
   if (btn == ((1 << 0) | (1 << 2)))
    btn = (1 << 1);
  }
 }
 return (btn != (1 << 0) ? btn : 0);
}
void
wstpad_softbuttons(struct wsmouseinput *input, u_int *cmds, int hdlr)
{
 struct wstpad *tp = input->tp;
 int top = (hdlr == TOPBUTTON_HDLR);
 if (tp->softbutton && ((tp)->btns_sync & (1 << 0) & ~(tp)->btns)) {
  *cmds |= 1 << SOFTBUTTON_UP;
  return;
 }
 if (tp->softbutton == 0 && ((tp)->btns_sync & (1 << 0) & (tp)->btns)) {
  tp->softbutton = wstpad_get_sbtn(input, top);
  if (tp->softbutton)
   *cmds |= 1 << SOFTBUTTON_DOWN;
 }
}
int
wstpad_is_tap(struct wstpad *tp, struct tpad_touch *t)
{
 struct timespec ts;
 int dx, dy, dist = 0;
 if (t->flags & ((1 << 0) | (1 << 1) | (1 << 2) | (1 << 3)))
  return (0);
 if (((tp)->features & (1 << 31)) || tp->tap.contacts < 2) {
  dx = abs(t->x - t->orig.x) << 12;
  dy = abs(t->y - t->orig.y) * tp->ratio;
  dist = (dx >= dy ? dx + 3 * dy / 8 : dy + 3 * dx / 8);
 }
 if (dist <= (tp->tap.maxdist << 12)) {
  do { (&ts)->tv_sec = (&tp->time)->tv_sec - (&t->orig.time)->tv_sec; (&ts)->tv_nsec = (&tp->time)->tv_nsec - (&t->orig.time)->tv_nsec; if ((&ts)->tv_nsec < 0) { (&ts)->tv_sec--; (&ts)->tv_nsec += 1000000000L; } } while (0);
  return ((((&ts)->tv_sec == (&tp->tap.maxtime)->tv_sec) ? ((&ts)->tv_nsec < (&tp->tap.maxtime)->tv_nsec) : ((&ts)->tv_sec < (&tp->tap.maxtime)->tv_sec)));
 }
 return (0);
}
void
wstpad_tap(struct wsmouseinput *input, u_int *cmds)
{
 struct wstpad *tp = input->tp;
 struct tpad_touch *t = tp->t;
 int err = 0;
 if (tp->btns) {
  if (tp->tap.state > TAP_IGNORE) {
   timeout_del(&tp->tap.to);
   *cmds |= 1 << TAPBUTTON_UP;
  }
  tp->tap.state = TAP_IGNORE;
 }
 switch (tp->tap.state) {
 case TAP_DETECT:
  if (t->state == TOUCH_END) {
   if (wstpad_is_tap(tp, t)) {
    tp->tap.button = (tp->tap.contacts == 2
        ? (1 << 2) : (tp->tap.contacts == 3
        ? (1 << 1) : (1 << 0)));
    *cmds |= 1 << TAPBUTTON_DOWN;
    tp->tap.state = TAP_LIFTED;
    err = !timeout_add_msec(
        &tp->tap.to, tp->tap.clicktime);
   }
   tp->tap.contacts = 0;
  } else if (tp->contacts != tp->tap.contacts) {
   if (!wstpad_is_tap(tp, t)) {
    tp->tap.state = TAP_IGNORE;
    tp->tap.contacts = 0;
   } else if (tp->contacts > tp->tap.contacts) {
    tp->tap.contacts = tp->contacts;
   }
  }
  break;
 case TAP_IGNORE:
  if (t->state != TOUCH_UPDATE)
   tp->tap.state = TAP_DETECT;
  break;
 case TAP_LIFTED:
  if (t->state >= TOUCH_BEGIN) {
   timeout_del(&tp->tap.to);
   if (tp->tap.button == (1 << 0)) {
    tp->tap.state = TAP_2ND_TOUCH;
   } else {
    *cmds |= 1 << TAPBUTTON_UP;
    tp->tap.state = TAP_DETECT;
   }
  }
  break;
 case TAP_2ND_TOUCH:
  if (t->state == TOUCH_END) {
   if (wstpad_is_tap(tp, t)) {
    *cmds |= 1 << TAPBUTTON_DOUBLECLK;
    tp->tap.state = TAP_LIFTED;
    err = !timeout_add_msec(
        &tp->tap.to, 20);
   } else if (tp->tap.locktime == 0) {
    *cmds |= 1 << TAPBUTTON_UP;
    tp->tap.state = TAP_DETECT;
   } else {
    tp->tap.state = TAP_LOCKED;
    err = !timeout_add_msec(
        &tp->tap.to, tp->tap.locktime);
   }
  } else if (tp->contacts > 1) {
   *cmds |= 1 << TAPBUTTON_UP;
   tp->tap.state = TAP_DETECT;
  }
  break;
 case TAP_LOCKED:
  if (t->state >= TOUCH_BEGIN) {
   timeout_del(&tp->tap.to);
   tp->tap.state = TAP_NTH_TOUCH;
  }
  break;
 case TAP_NTH_TOUCH:
  if (t->state == TOUCH_END) {
   if (wstpad_is_tap(tp, t)) {
    *cmds |= 1 << TAPBUTTON_UP;
    tp->tap.state = TAP_DETECT;
   } else {
    tp->tap.state = TAP_LOCKED;
    err = !timeout_add_msec(
        &tp->tap.to, tp->tap.locktime);
   }
  } else if (tp->contacts > 1) {
   *cmds |= 1 << TAPBUTTON_UP;
   tp->tap.state = TAP_DETECT;
  }
  break;
 }
 if (err) {
  if (tp->tap.state == TAP_LIFTED)
   *cmds &= ~(1 << TAPBUTTON_DOWN);
  else
   *cmds |= 1 << TAPBUTTON_UP;
  tp->tap.state = TAP_DETECT;
 }
}
void
wstpad_tap_timeout(void *p)
{
 struct wsmouseinput *input = p;
 struct wstpad *tp = input->tp;
 struct evq_access evq;
 u_int btn;
 int s;
 s = _splraise(6);
 evq.evar = *input->evar;
 if (evq.evar != ((void *)0) && tp != ((void *)0) &&
     (tp->tap.state == TAP_LIFTED || tp->tap.state == TAP_LOCKED)) {
  tp->tap.state = TAP_DETECT;
  input->sbtn.buttons &= ~tp->tap.button;
  btn = ffs(tp->tap.button) - 1;
  evq.put = evq.evar->put;
  evq.result = 0;
  wsmouse_evq_put(&evq, 4, btn);
  wsmouse_evq_put(&evq, 18, 0);
  if (evq.result == 1) {
   evq.evar->put = evq.put;
   { selwakeup(&(evq.evar)->sel); if ((evq.evar)->wanted) { (evq.evar)->wanted = 0; wakeup((caddr_t)(evq.evar)); } if ((evq.evar)->async) pgsignal((evq.evar)->io->ps_pgrp, 23, 0); };
  } else {
   input->sbtn.sync |= tp->tap.button;
  }
 }
 _splx(s);
}
void
wstpad_click(struct wsmouseinput *input)
{
 struct wstpad *tp = input->tp;
 if (tp->contacts == 1 &&
     (((tp)->btns_sync & (1 << 0) & (tp)->btns) || ((tp)->btns_sync & (1 << 0) & ~(tp)->btns)))
  set_freeze_ts(tp, 0, 100);
}
void
wstpad_cmds(struct wsmouseinput *input, struct evq_access *evq, u_int cmds)
{
 struct wstpad *tp = input->tp;
 u_int btn, sbtns_dn = 0, sbtns_up = 0;
 int n;
 for ((n) = ffs(cmds) - 1; (n) != -1; (n) = ffs((cmds) & (~1 << (n))) - 1) {
  switch (n) {
  case CLEAR_MOTION_DELTAS:
   input->motion.dx = input->motion.dy = 0;
   if (input->motion.dz == 0 && input->motion.dw == 0)
    input->motion.sync &= ~(1 << 0);
   continue;
  case SOFTBUTTON_DOWN:
   input->btn.sync &= ~(1 << 0);
   sbtns_dn |= tp->softbutton;
   continue;
  case SOFTBUTTON_UP:
   input->btn.sync &= ~(1 << 0);
   sbtns_up |= tp->softbutton;
   tp->softbutton = 0;
   continue;
  case TAPBUTTON_DOWN:
   sbtns_dn |= tp->tap.button;
   continue;
  case TAPBUTTON_UP:
   sbtns_up |= tp->tap.button;
   continue;
  case TAPBUTTON_DOUBLECLK:
   btn = ffs((1 << 0)) - 1;
   wsmouse_evq_put(evq, 4, btn);
   wsmouse_evq_put(evq, 18, 0);
   wsmouse_evq_put(evq, 5, btn);
   continue;
  case HSCROLL:
   input->motion.dw = tp->scroll.dw;
   input->motion.sync |= (1 << 0);
   continue;
  case VSCROLL:
   input->motion.dz = tp->scroll.dz;
   input->motion.sync |= (1 << 0);
   continue;
  default:
   printf("[wstpad] invalid cmd %d\n", n);
   break;
  }
 }
 if (sbtns_dn || sbtns_up) {
  input->sbtn.buttons |= sbtns_dn;
  input->sbtn.buttons &= ~sbtns_up;
  input->sbtn.sync |= (sbtns_dn | sbtns_up);
 }
}
static inline void
clear_touchstates(struct wsmouseinput *input, enum touchstates state)
{
 u_int touches;
 int slot;
 touches = input->mt.sync[0] & ~input->mt.touches;
 for ((slot) = ffs(touches) - 1; (slot) != -1; (slot) = ffs((touches) & (~1 << (slot))) - 1)
  input->tp->tpad_touches[slot].state = state;
}
void
wstpad_mt_inputs(struct wsmouseinput *input)
{
 struct wstpad *tp = input->tp;
 struct tpad_touch *t;
 struct mt_slot *mts;
 int slot, dx, dy;
 u_int touches, inactive;
 touches = input->mt.touches & input->mt.sync[0];
 for ((slot) = ffs(touches) - 1; (slot) != -1; (slot) = ffs((touches) & (~1 << (slot))) - 1) {
  t = &tp->tpad_touches[slot];
  t->state = TOUCH_BEGIN;
  mts = &input->mt.slots[slot];
  t->x = normalize_abs(&input->filter.h, mts->x);
  t->y = normalize_abs(&input->filter.v, mts->y);
  t->orig.x = t->x;
  t->orig.y = t->y;
  __builtin_memcpy((&t->orig.time), (&tp->time), (sizeof(struct timespec)));
  t->flags = edge_flags(tp, t->x, t->y);
  wstpad_set_direction(t, 0, 0, tp->ratio);
 }
 touches = input->mt.touches & input->mt.frame;
 if (touches & tp->mtcycle) {
  inactive = input->mt.touches & ~tp->mtcycle;
  tp->mtcycle = touches;
 } else {
  inactive = 0;
  tp->mtcycle |= touches;
 }
 touches = input->mt.touches & ~input->mt.sync[0];
 for ((slot) = ffs(touches) - 1; (slot) != -1; (slot) = ffs((touches) & (~1 << (slot))) - 1) {
  t = &tp->tpad_touches[slot];
  t->state = TOUCH_UPDATE;
  if ((1 << slot) & input->mt.frame) {
   mts = &input->mt.slots[slot];
   dx = normalize_abs(&input->filter.h, mts->x) - t->x;
   t->x += dx;
   dy = normalize_abs(&input->filter.v, mts->y) - t->y;
   t->y += dy;
   t->flags &= (~((1 << 0) | (1 << 1) | (1 << 2) | (1 << 3)) | edge_flags(tp, t->x, t->y));
   wstpad_set_direction(t, dx, dy, tp->ratio);
  } else if ((1 << slot) & inactive) {
   wstpad_set_direction(t, 0, 0, tp->ratio);
  }
 }
 clear_touchstates(input, TOUCH_END);
}
void
wstpad_touch_inputs(struct wsmouseinput *input)
{
 struct wstpad *tp = input->tp;
 struct tpad_touch *t;
 int slot;
 tp->dx = normalize_rel(&input->filter.h, input->motion.dx);
 tp->dy = normalize_rel(&input->filter.v, input->motion.dy);
 tp->btns = input->btn.buttons;
 tp->btns_sync = input->btn.sync;
 tp->prev_contacts = tp->contacts;
 tp->contacts = input->touch.contacts;
 if (tp->contacts == 1 &&
     ((tp->params.f2width &&
     input->touch.width >= tp->params.f2width)
     || (tp->params.f2pressure &&
     input->touch.pressure >= tp->params.f2pressure)))
  tp->contacts = 2;
 if (((tp)->features & (1 << 31))) {
  wstpad_mt_inputs(input);
  if (input->mt.ptr) {
   slot = ffs(input->mt.ptr) - 1;
   tp->t = &tp->tpad_touches[slot];
  }
 } else {
  t = tp->t;
  t->x = normalize_abs(&input->filter.h, input->motion.x);
  t->y = normalize_abs(&input->filter.v, input->motion.y);
  if (tp->contacts)
   t->state = (tp->prev_contacts ?
       TOUCH_UPDATE : TOUCH_BEGIN);
  else
   t->state = (tp->prev_contacts ?
       TOUCH_END : TOUCH_NONE);
  if (t->state == TOUCH_BEGIN) {
   t->orig.x = t->x;
   t->orig.y = t->y;
   __builtin_memcpy((&t->orig.time), (&tp->time), (sizeof(struct timespec)));
   t->flags = edge_flags(tp, t->x, t->y);
  } else {
   t->flags &= (~((1 << 0) | (1 << 1) | (1 << 2) | (1 << 3)) | edge_flags(tp, t->x, t->y));
  }
  wstpad_set_direction(t,
      normalize_rel(&input->filter.h, input->motion.x_delta),
      normalize_rel(&input->filter.v, input->motion.y_delta),
      input->filter.ratio);
 }
}
void
wstpad_process_input(struct wsmouseinput *input, struct evq_access *evq)
{
 struct wstpad *tp = input->tp;
 u_int handlers, hdlr, cmds;
 __builtin_memcpy((&tp->time), (&evq->ts), (sizeof(struct timespec)));
 wstpad_touch_inputs(input);
 cmds = 0;
 handlers = tp->handlers;
 if (((tp)->features & (1 << 7)))
  handlers &= ((1 << TOPBUTTON_HDLR) | (1 << SOFTBUTTON_HDLR));
 for ((hdlr) = ffs(handlers) - 1; (hdlr) != -1; (hdlr) = ffs((handlers) & (~1 << (hdlr))) - 1) {
  switch (hdlr) {
  case SOFTBUTTON_HDLR:
  case TOPBUTTON_HDLR:
   wstpad_softbuttons(input, &cmds, hdlr);
   continue;
  case TAP_HDLR:
   wstpad_tap(input, &cmds);
   continue;
  case F2SCROLL_HDLR:
   wstpad_f2scroll(input, &cmds);
   continue;
  case EDGESCROLL_HDLR:
   wstpad_edgescroll(input, &cmds);
   continue;
  case CLICK_HDLR:
   wstpad_click(input);
   continue;
  }
 }
 if (tp->dx || tp->dy) {
  if (((tp)->features & (1 << 7))
      || (tp->t->flags & tp->freeze)
      || (((&tp->time)->tv_sec == (&tp->freeze_ts)->tv_sec) ? ((&tp->time)->tv_nsec < (&tp->freeze_ts)->tv_nsec) : ((&tp->time)->tv_sec < (&tp->freeze_ts)->tv_sec))
      || tp->contacts > 2
      || (tp->contacts == 2 && !(tp->btns & (1 << 0)))) {
   cmds |= 1 << CLEAR_MOTION_DELTAS;
  }
 }
 wstpad_cmds(input, evq, cmds);
 if (((tp)->features & (1 << 31)))
  clear_touchstates(input, TOUCH_NONE);
}
void
wstpad_track_interval(struct wsmouseinput *input, struct timespec *time)
{
 static const struct timespec limit = { 0, 30 * 1000000L };
 struct timespec ts;
 int samples;
 if (input->motion.sync == 0
     || (input->touch.sync & (1 << 1))
     || (input->touch.contacts > 1)) {
  input->intv.track = 0;
  return;
 }
 if (input->intv.track) {
  do { (&ts)->tv_sec = (time)->tv_sec - (&input->intv.ts)->tv_sec; (&ts)->tv_nsec = (time)->tv_nsec - (&input->intv.ts)->tv_nsec; if ((&ts)->tv_nsec < 0) { (&ts)->tv_sec--; (&ts)->tv_nsec += 1000000000L; } } while (0);
  if ((((&ts)->tv_sec == (&limit)->tv_sec) ? ((&ts)->tv_nsec < (&limit)->tv_nsec) : ((&ts)->tv_sec < (&limit)->tv_sec))) {
   input->intv.sum += ts.tv_nsec >> 12;
   samples = ++input->intv.samples;
   if (samples == 8) {
    input->intv.avg = input->intv.sum << 9;
    wstpad_init_deceleration(input);
   } else if (samples == 128) {
    input->intv.avg = input->intv.sum << 5;
    wstpad_init_deceleration(input);
    input->intv.samples = 0;
    input->intv.sum = 0;
    input->flags &= ~(1 << 17);
   }
  }
 }
 __builtin_memcpy((&input->intv.ts), (time), (sizeof(struct timespec)));
 input->intv.track = 1;
}
int
wstpad_decelerate(struct wsmouseinput *input, int *dx, int *dy)
{
 int h = abs(*dx) * input->filter.h.mag_scale;
 int v = abs(*dy) * input->filter.v.mag_scale;
 int mag = (h >= v ? h + 3 * v / 8 : v + 3 * h / 8);
 int n;
 mag = (mag + 7 * input->filter.mag) / 8;
 input->filter.mag = imin(mag, 24 << 12);
 n = imax((mag >> 12) - 4, 2);
 if (n < 8) {
  h = *dx * n + input->filter.h.dclr_rmdr;
  v = *dy * n + input->filter.v.dclr_rmdr;
  input->filter.h.dclr_rmdr = (h >= 0 ? h & 7 : -(-h & 7));
  input->filter.v.dclr_rmdr = (v >= 0 ? v & 7 : -(-v & 7));
  *dx = h / 8;
  *dy = v / 8;
  return (1);
 }
 return (0);
}
void
wstpad_strong_hysteresis(int *dx, int *dy,
    int *h_acc, int *v_acc, int h_threshold, int v_threshold)
{
 *h_acc += *dx;
 *v_acc += *dy;
 if (*h_acc > h_threshold)
  *dx = *h_acc - h_threshold;
 else if (*h_acc < -h_threshold)
  *dx = *h_acc + h_threshold;
 else
  *dx = 0;
 *h_acc -= *dx;
 if (*v_acc > v_threshold)
  *dy = *v_acc - v_threshold;
 else if (*v_acc < -v_threshold)
  *dy = *v_acc + v_threshold;
 else
  *dy = 0;
 *v_acc -= *dy;
}
void
wstpad_weak_hysteresis(int *dx, int *dy,
    int *h_acc, int *v_acc, int h_threshold, int v_threshold)
{
 *h_acc += *dx;
 *v_acc += *dy;
 if ((*dx > 0 && *h_acc < *dx)
     || (*dx < 0 && *h_acc > *dx))
  *h_acc = *dx;
 if ((*dy > 0 && *v_acc < *dy)
     || (*dy < 0 && *v_acc > *dy))
  *v_acc = *dy;
 if (abs(*h_acc) < h_threshold
     && abs(*v_acc) < v_threshold)
  *dx = *dy = 0;
}
void
wstpad_filter(struct wsmouseinput *input, int *dx, int *dy)
{
 struct axis_filter *h = &input->filter.h;
 struct axis_filter *v = &input->filter.v;
 int strength = input->filter.mode & 7;
 if ((h->dmax && (abs(*dx) > h->dmax))
     || (v->dmax && (abs(*dy) > v->dmax)))
  *dx = *dy = 0;
 if (h->hysteresis || v->hysteresis) {
  if (input->filter.mode & (1 << 3))
   wstpad_strong_hysteresis(dx, dy, &h->acc,
       &v->acc, h->hysteresis, v->hysteresis);
  else
   wstpad_weak_hysteresis(dx, dy, &h->acc,
       &v->acc, h->hysteresis, v->hysteresis);
 }
 if (input->filter.dclr && wstpad_decelerate(input, dx, dy))
  strength = imin(strength, 2);
 if (strength) {
  *dx = *dx * (8 - strength) + h->avg * strength + h->avg_rmdr;
  *dy = *dy * (8 - strength) + v->avg * strength + v->avg_rmdr;
  h->avg_rmdr = (*dx >= 0 ? *dx & 7 : -(-*dx & 7));
  v->avg_rmdr = (*dy >= 0 ? *dy & 7 : -(-*dy & 7));
  *dx = h->avg = *dx / 8;
  *dy = v->avg = *dy / 8;
 }
}
void
wstpad_compat_convert(struct wsmouseinput *input, struct evq_access *evq)
{
 int dx, dy;
 if (input->flags & (1 << 17))
  wstpad_track_interval(input, &evq->ts);
 dx = (input->motion.sync & (1 << 1)) ? input->motion.x_delta : 0;
 dy = (input->motion.sync & (1 << 2)) ? input->motion.y_delta : 0;
 if ((input->touch.sync & (1 << 1))
     || input->mt.ptr != input->mt.prev_ptr) {
  input->filter.h.acc = input->filter.v.acc = 0;
  input->filter.h.avg = input->filter.v.avg = 0;
 }
 wstpad_filter(input, &dx, &dy);
 input->motion.dx = dx;
 input->motion.dy = dy;
 if ((dx || dy) && !(input->motion.sync & (1 << 0))) {
  input->motion.dz = input->motion.dw = 0;
  input->motion.sync |= (1 << 0);
 }
 if (input->tp != ((void *)0))
  wstpad_process_input(input, evq);
 input->motion.sync &= ~((1 << 1) | (1 << 2));
 input->touch.sync = 0;
}
int
wstpad_init(struct wsmouseinput *input)
{
 struct wstpad *tp = input->tp;
 int slots;
 if (tp != ((void *)0))
  return (0);
 input->tp = tp = malloc(sizeof(struct wstpad),
     2, 0x0001 | 0x0008);
 if (tp == ((void *)0))
  return (-1);
 slots = imax(input->mt.num_slots, 1);
 tp->tpad_touches = malloc(slots * sizeof(struct tpad_touch),
     2, 0x0001 | 0x0008);
 if (tp->tpad_touches == ((void *)0)) {
  free(tp, 2, sizeof(struct wstpad));
  return (-1);
 }
 tp->t = &tp->tpad_touches[0];
 if (input->mt.num_slots)
  tp->features |= (1 << 31);
 timeout_set(&tp->tap.to, wstpad_tap_timeout, input);
 tp->ratio = input->filter.ratio;
 return (0);
}
static inline u_int
isqrt(u_int n)
{
 u_int root, sqbit;
 root = 0;
 sqbit = 1 << (sizeof(u_int) * 8 - 2);
 while (sqbit) {
  if (n >= (sqbit | root)) {
   n -= (sqbit | root);
   root = (root >> 1) | sqbit;
  } else {
   root >>= 1;
  }
  sqbit >>= 2;
 }
 return (root);
}
void
wstpad_init_deceleration(struct wsmouseinput *input)
{
 int n, dclr;
 if ((dclr = input->filter.dclr) == 0)
  return;
 dclr = imax(dclr, 4);
 if (input->intv.avg == 0) {
  n = 8;
 } else {
  n = 8 * 13000000 / input->intv.avg;
  n = imax(imin(n, 32), 4);
 }
 input->filter.h.mag_scale = (n << 12) / dclr;
 input->filter.v.mag_scale = (input->filter.ratio ?
     n * input->filter.ratio : n << 12) / dclr;
 input->filter.h.dclr_rmdr = 0;
 input->filter.v.dclr_rmdr = 0;
 input->flags |= (1 << 17);
}
int
wstpad_configure(struct wsmouseinput *input)
{
 struct wstpad *tp;
 int width, height, diag, ratio, h_res, v_res, h_unit, v_unit;
 width = abs(input->hw.x_max - input->hw.x_min);
 height = abs(input->hw.y_max - input->hw.y_min);
 if (width == 0 || height == 0)
  return (-1);
 if (input->tp == ((void *)0) && wstpad_init(input))
  return (-1);
 tp = input->tp;
 if (!(input->flags & (1 << 18))) {
  h_res = input->hw.h_res;
  v_res = input->hw.v_res;
  if (h_res == 0 || v_res == 0)
   h_res = v_res = 1;
  diag = isqrt(width * width + height * height);
  input->filter.h.scale = (imin(920, diag) << 12) / diag;
  input->filter.v.scale = input->filter.h.scale * h_res / v_res;
  h_unit = imax(diag / 280, 3);
  v_unit = imax((h_unit * v_res + h_res / 2) / h_res, 3);
  input->filter.h.hysteresis = h_unit;
  input->filter.v.hysteresis = v_unit;
  input->filter.mode = 0;
  input->filter.dclr = h_unit - h_unit / 5;
  wstpad_init_deceleration(input);
  tp->features &= ((1 << 31) | (1 << 7));
  if (input->hw.hw_type == WSMOUSEHW_TOUCHPAD)
   tp->features |= ((1 << 3));
  else
   tp->features |= ((1 << 0) | (1 << 1) | (1 << 3));
  if (input->hw.contacts_max == 1) {
   tp->features &= ~(1 << 3);
   tp->features |= (1 << 4);
  }
  tp->params.left_edge = 0;
  tp->params.right_edge = 0;
  tp->params.bottom_edge = 0;
  tp->params.top_edge = 0;
  tp->params.center_width = 0;
  tp->tap.maxtime.tv_nsec = 180 * 1000000;
  tp->tap.clicktime = 180;
  tp->tap.locktime = 0;
  tp->scroll.hdist = 4 * h_unit;
  tp->scroll.vdist = 4 * v_unit;
  tp->tap.maxdist = 3 * h_unit;
 }
 tp->freeze = 0;
 if ((ratio = tp->params.left_edge) == 0
     && (tp->features & (1 << 4))
     && (tp->features & (1 << 6)))
  ratio = (4096 / 16);
 tp->edge.left = input->hw.x_min + width * ratio / 4096;
 if (ratio)
  tp->freeze |= (1 << 0);
 if ((ratio = tp->params.right_edge) == 0
     && (tp->features & (1 << 4))
     && !(tp->features & (1 << 6)))
  ratio = (4096 / 16);
 tp->edge.right = input->hw.x_max - width * ratio / 4096;
 if (ratio)
  tp->freeze |= (1 << 1);
 if ((ratio = tp->params.bottom_edge) == 0
     && ((tp->features & (1 << 0))
     || ((tp->features & (1 << 4))
     && (tp->features & (1 << 5)))))
  ratio = (4096 / 16);
 tp->edge.bottom = input->hw.y_min + height * ratio / 4096;
 if (ratio)
  tp->freeze |= (1 << 3);
 if ((ratio = tp->params.top_edge) == 0
     && (tp->features & (1 << 2)))
  ratio = (4096 / 16);
 tp->edge.top = input->hw.y_max - height * ratio / 4096;
 if (ratio)
  tp->freeze |= (1 << 2);
 if ((ratio = abs(tp->params.center_width)) == 0)
  ratio = (4096 / 8);
 tp->edge.center = (input->hw.x_min + input->hw.x_max) / 2;
 tp->edge.center_left = tp->edge.center - width * ratio / 8192;
 tp->edge.center_right = tp->edge.center + width * ratio / 8192;
 tp->edge.middle = (input->hw.y_max - input->hw.y_min) / 2;
 tp->handlers = 0;
 if (tp->features & (1 << 0))
  tp->handlers |= 1 << SOFTBUTTON_HDLR;
 if (tp->features & (1 << 2))
  tp->handlers |= 1 << TOPBUTTON_HDLR;
 if (tp->features & (1 << 3))
  tp->handlers |= 1 << F2SCROLL_HDLR;
 else if (tp->features & (1 << 4))
  tp->handlers |= 1 << EDGESCROLL_HDLR;
 if (tp->features & (1 << 8)) {
  tp->tap.clicktime = imin(imax(tp->tap.clicktime, 80), 350);
  if (tp->tap.locktime)
   tp->tap.locktime =
       imin(imax(tp->tap.locktime, 150), 5000);
  tp->handlers |= 1 << TAP_HDLR;
 }
 if (input->hw.hw_type == WSMOUSEHW_CLICKPAD)
  tp->handlers |= 1 << CLICK_HDLR;
 tp->sbtnswap = ((tp->features & (1 << 6))
     ? ((1 << 0) | (1 << 2)) : 0);
 return (0);
}
void
wstpad_reset(struct wsmouseinput *input)
{
 struct wstpad *tp = input->tp;
 if (tp != ((void *)0)) {
  timeout_del(&tp->tap.to);
  tp->tap.state = TAP_DETECT;
 }
 if (input->sbtn.buttons) {
  input->sbtn.sync = input->sbtn.buttons;
  input->sbtn.buttons = 0;
 }
}
int
wstpad_set_param(struct wsmouseinput *input, int key, int val)
{
 struct wstpad *tp = input->tp;
 u_int flag;
 if (tp == ((void *)0))
  return (22);
 switch (key) {
 case WSMOUSECFG_SOFTBUTTONS ... WSMOUSECFG_TAPPING:
  switch (key) {
  case WSMOUSECFG_SOFTBUTTONS:
   flag = (1 << 0);
   break;
  case WSMOUSECFG_SOFTMBTN:
   flag = (1 << 1);
   break;
  case WSMOUSECFG_TOPBUTTONS:
   flag = (1 << 2);
   break;
  case WSMOUSECFG_TWOFINGERSCROLL:
   flag = (1 << 3);
   break;
  case WSMOUSECFG_EDGESCROLL:
   flag = (1 << 4);
   break;
  case WSMOUSECFG_HORIZSCROLL:
   flag = (1 << 5);
   break;
  case WSMOUSECFG_SWAPSIDES:
   flag = (1 << 6);
   break;
  case WSMOUSECFG_DISABLE:
   flag = (1 << 7);
   break;
  case WSMOUSECFG_TAPPING:
   flag = (1 << 8);
   break;
  }
  if (val)
   tp->features |= flag;
  else
   tp->features &= ~flag;
  break;
 case WSMOUSECFG_LEFT_EDGE:
  tp->params.left_edge = val;
  break;
 case WSMOUSECFG_RIGHT_EDGE:
  tp->params.right_edge = val;
  break;
 case WSMOUSECFG_TOP_EDGE:
  tp->params.top_edge = val;
  break;
 case WSMOUSECFG_BOTTOM_EDGE:
  tp->params.bottom_edge = val;
  break;
 case WSMOUSECFG_CENTERWIDTH:
  tp->params.center_width = val;
  break;
 case WSMOUSECFG_HORIZSCROLLDIST:
  tp->scroll.hdist = val;
  break;
 case WSMOUSECFG_VERTSCROLLDIST:
  tp->scroll.vdist = val;
  break;
 case WSMOUSECFG_F2WIDTH:
  tp->params.f2width = val;
  break;
 case WSMOUSECFG_F2PRESSURE:
  tp->params.f2pressure = val;
  break;
 case WSMOUSECFG_TAP_MAXTIME:
  tp->tap.maxtime.tv_nsec = imin(val, 999) * 1000000;
  break;
 case WSMOUSECFG_TAP_CLICKTIME:
  tp->tap.clicktime = val;
  break;
 case WSMOUSECFG_TAP_LOCKTIME:
  tp->tap.locktime = val;
  break;
 default:
  return (91);
 }
 return (0);
}
int
wstpad_get_param(struct wsmouseinput *input, int key, int *pval)
{
 struct wstpad *tp = input->tp;
 u_int flag;
 if (tp == ((void *)0))
  return (22);
 switch (key) {
 case WSMOUSECFG_SOFTBUTTONS ... WSMOUSECFG_TAPPING:
  switch (key) {
  case WSMOUSECFG_SOFTBUTTONS:
   flag = (1 << 0);
   break;
  case WSMOUSECFG_SOFTMBTN:
   flag = (1 << 1);
   break;
  case WSMOUSECFG_TOPBUTTONS:
   flag = (1 << 2);
   break;
  case WSMOUSECFG_TWOFINGERSCROLL:
   flag = (1 << 3);
   break;
  case WSMOUSECFG_EDGESCROLL:
   flag = (1 << 4);
   break;
  case WSMOUSECFG_HORIZSCROLL:
   flag = (1 << 5);
   break;
  case WSMOUSECFG_SWAPSIDES:
   flag = (1 << 6);
   break;
  case WSMOUSECFG_DISABLE:
   flag = (1 << 7);
   break;
  case WSMOUSECFG_TAPPING:
   flag = (1 << 8);
   break;
  }
  *pval = !!(tp->features & flag);
  break;
 case WSMOUSECFG_LEFT_EDGE:
  *pval = tp->params.left_edge;
  break;
 case WSMOUSECFG_RIGHT_EDGE:
  *pval = tp->params.right_edge;
  break;
 case WSMOUSECFG_TOP_EDGE:
  *pval = tp->params.top_edge;
  break;
 case WSMOUSECFG_BOTTOM_EDGE:
  *pval = tp->params.bottom_edge;
  break;
 case WSMOUSECFG_CENTERWIDTH:
  *pval = tp->params.center_width;
  break;
 case WSMOUSECFG_HORIZSCROLLDIST:
  *pval = tp->scroll.hdist;
  break;
 case WSMOUSECFG_VERTSCROLLDIST:
  *pval = tp->scroll.vdist;
  break;
 case WSMOUSECFG_F2WIDTH:
  *pval = tp->params.f2width;
  break;
 case WSMOUSECFG_F2PRESSURE:
  *pval = tp->params.f2pressure;
  break;
 case WSMOUSECFG_TAP_MAXTIME:
  *pval = tp->tap.maxtime.tv_nsec / 1000000;
  break;
 case WSMOUSECFG_TAP_CLICKTIME:
  *pval = tp->tap.clicktime;
  break;
 case WSMOUSECFG_TAP_LOCKTIME:
  *pval = tp->tap.locktime;
  break;
 default:
  return (91);
 }
 return (0);
}
