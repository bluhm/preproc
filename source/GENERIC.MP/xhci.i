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
typedef u_int8_t uByte;
typedef u_int8_t uWord[2];
typedef u_int8_t uDWord[4];
struct usb_device_request {
 uByte bmRequestType;
 uByte bRequest;
 uWord wValue;
 uWord wIndex;
 uWord wLength;
} __attribute__((__packed__));
typedef struct usb_device_request usb_device_request_t;
struct usb_descriptor {
 uByte bLength;
 uByte bDescriptorType;
 uByte bDescriptorSubtype;
} __attribute__((__packed__));
typedef struct usb_descriptor usb_descriptor_t;
struct usb_device_descriptor {
 uByte bLength;
 uByte bDescriptorType;
 uWord bcdUSB;
 uByte bDeviceClass;
 uByte bDeviceSubClass;
 uByte bDeviceProtocol;
 uByte bMaxPacketSize;
 uWord idVendor;
 uWord idProduct;
 uWord bcdDevice;
 uByte iManufacturer;
 uByte iProduct;
 uByte iSerialNumber;
 uByte bNumConfigurations;
} __attribute__((__packed__));
typedef struct usb_device_descriptor usb_device_descriptor_t;
struct usb_config_descriptor {
 uByte bLength;
 uByte bDescriptorType;
 uWord wTotalLength;
 uByte bNumInterface;
 uByte bConfigurationValue;
 uByte iConfiguration;
 uByte bmAttributes;
 uByte bMaxPower;
} __attribute__((__packed__));
typedef struct usb_config_descriptor usb_config_descriptor_t;
struct usb_interface_descriptor {
 uByte bLength;
 uByte bDescriptorType;
 uByte bInterfaceNumber;
 uByte bAlternateSetting;
 uByte bNumEndpoints;
 uByte bInterfaceClass;
 uByte bInterfaceSubClass;
 uByte bInterfaceProtocol;
 uByte iInterface;
} __attribute__((__packed__));
typedef struct usb_interface_descriptor usb_interface_descriptor_t;
struct usb_interface_assoc_descriptor {
 uByte bLength;
 uByte bDescriptorType;
 uByte bFirstInterface;
 uByte bInterfaceCount;
 uByte bFunctionClass;
 uByte bFunctionSubClass;
 uByte bFunctionProtocol;
 uByte iFunction;
} __attribute__((__packed__));
typedef struct usb_interface_assoc_descriptor usb_interface_assoc_descriptor_t;
struct usb_endpoint_descriptor {
 uByte bLength;
 uByte bDescriptorType;
 uByte bEndpointAddress;
 uByte bmAttributes;
 uWord wMaxPacketSize;
 uByte bInterval;
} __attribute__((__packed__));
typedef struct usb_endpoint_descriptor usb_endpoint_descriptor_t;
struct usb_endpoint_ss_comp_descriptor {
 uByte bLength;
 uByte bDescriptorType;
 uByte bMaxBurst;
 uByte bmAttributes;
 uWord wBytesPerInterval;
} __attribute__((__packed__));
typedef struct usb_endpoint_ss_comp_descriptor
  usb_endpoint_ss_comp_descriptor_t;
struct usb_string_descriptor {
 uByte bLength;
 uByte bDescriptorType;
 uWord bString[126];
} __attribute__((__packed__));
typedef struct usb_string_descriptor usb_string_descriptor_t;
struct usb_hub_descriptor {
 uByte bDescLength;
 uByte bDescriptorType;
 uByte bNbrPorts;
 uWord wHubCharacteristics;
 uByte bPwrOn2PwrGood;
 uByte bHubContrCurrent;
 uByte DeviceRemovable[32];
} __attribute__((__packed__));
typedef struct usb_hub_descriptor usb_hub_descriptor_t;
struct usb_hub_ss_descriptor {
 uByte bDescLength;
 uByte bDescriptorType;
 uByte bNbrPorts;
 uWord wHubCharacteristics;
 uByte bPwrOn2PwrGood;
 uByte bHubContrCurrent;
 uByte bHubHdrDecLat;
 uWord wHubDelay;
 uByte DeviceRemovable[32];
} __attribute__((__packed__));
typedef struct usb_hub_ss_descriptor usb_hub_ss_descriptor_t;
struct usb_device_qualifier {
 uByte bLength;
 uByte bDescriptorType;
 uWord bcdUSB;
 uByte bDeviceClass;
 uByte bDeviceSubClass;
 uByte bDeviceProtocol;
 uByte bMaxPacketSize0;
 uByte bNumConfigurations;
 uByte bReserved;
} __attribute__((__packed__));
typedef struct usb_device_qualifier usb_device_qualifier_t;
struct usb_otg_descriptor {
 uByte bLength;
 uByte bDescriptorType;
 uByte bmAttributes;
} __attribute__((__packed__));
typedef struct usb_otg_descriptor usb_otg_descriptor_t;
struct usb_status {
 uWord wStatus;
} __attribute__((__packed__));
typedef struct usb_status usb_status_t;
struct usb_hub_status {
 uWord wHubStatus;
 uWord wHubChange;
} __attribute__((__packed__));
typedef struct usb_hub_status usb_hub_status_t;
struct usb_port_status {
 uWord wPortStatus;
 uWord wPortChange;
} __attribute__((__packed__));
typedef struct usb_port_status usb_port_status_t;
struct usb_ctl_request {
 int ucr_addr;
 usb_device_request_t ucr_request;
 void *ucr_data;
 int ucr_flags;
 int ucr_actlen;
};
struct usb_alt_interface {
 int uai_config_index;
 int uai_interface_index;
 int uai_alt_no;
};
struct usb_config_desc {
 int ucd_config_index;
 struct usb_config_descriptor ucd_desc;
};
struct usb_device_cdesc {
 u_int8_t udc_bus;
 u_int8_t udc_addr;
 int udc_config_index;
 struct usb_config_descriptor udc_desc;
};
struct usb_interface_desc {
 int uid_config_index;
 int uid_interface_index;
 int uid_alt_index;
 struct usb_interface_descriptor uid_desc;
};
struct usb_endpoint_desc {
 int ued_config_index;
 int ued_interface_index;
 int ued_alt_index;
 int ued_endpoint_index;
 struct usb_endpoint_descriptor ued_desc;
};
struct usb_full_desc {
 int ufd_config_index;
 u_int ufd_size;
 u_char *ufd_data;
};
struct usb_device_fdesc {
 u_int8_t udf_bus;
 u_int8_t udf_addr;
 int udf_config_index;
 u_int udf_size;
 u_char *udf_data;
};
struct usb_device_ddesc {
 u_int8_t udd_bus;
 u_int8_t udd_addr;
 struct usb_device_descriptor udd_desc;
};
struct usb_string_desc {
 int usd_string_index;
 int usd_language_id;
 struct usb_string_descriptor usd_desc;
};
struct usb_ctl_report_desc {
 int ucrd_size;
 u_char ucrd_data[1024];
};
struct usb_device_info {
 u_int8_t udi_bus;
 u_int8_t udi_addr;
 char udi_product[127];
 char udi_vendor[127];
 char udi_release[8];
 u_int16_t udi_productNo;
 u_int16_t udi_vendorNo;
 u_int16_t udi_releaseNo;
 u_int8_t udi_class;
 u_int8_t udi_subclass;
 u_int8_t udi_protocol;
 u_int8_t udi_config;
 u_int8_t udi_speed;
 int udi_power;
 int udi_nports;
 char udi_devnames[4][16];
 u_int8_t udi_ports[16];
 char udi_serial[127];
};
struct usb_ctl_report {
 int ucr_report;
 u_char ucr_data[1024];
};
struct usb_device_stats {
 u_long uds_requests[4];
};
struct usbd_bus;
struct usbd_device;
struct usbd_interface;
struct usbd_pipe;
struct usbd_xfer;
typedef enum {
 USBD_NORMAL_COMPLETION = 0,
 USBD_IN_PROGRESS,
 USBD_PENDING_REQUESTS,
 USBD_NOT_STARTED,
 USBD_INVAL,
 USBD_NOMEM,
 USBD_CANCELLED,
 USBD_BAD_ADDRESS,
 USBD_IN_USE,
 USBD_NO_ADDR,
 USBD_SET_ADDR_FAILED,
 USBD_NO_POWER,
 USBD_TOO_DEEP,
 USBD_IOERROR,
 USBD_NOT_CONFIGURED,
 USBD_TIMEOUT,
 USBD_SHORT_XFER,
 USBD_STALLED,
 USBD_INTERRUPTED,
 USBD_ERROR_MAX
} usbd_status;
typedef void (*usbd_callback)(struct usbd_xfer *, void *, usbd_status);
usbd_status usbd_open_pipe(struct usbd_interface *iface, u_int8_t address,
    u_int8_t flags, struct usbd_pipe **pipe);
usbd_status usbd_close_pipe(struct usbd_pipe *pipe);
usbd_status usbd_transfer(struct usbd_xfer *req);
struct usbd_xfer *usbd_alloc_xfer(struct usbd_device *);
void usbd_free_xfer(struct usbd_xfer *xfer);
void usbd_setup_xfer(struct usbd_xfer *xfer, struct usbd_pipe *pipe,
    void *priv, void *buffer, u_int32_t length, u_int16_t flags,
    u_int32_t timeout, usbd_callback);
void usbd_setup_default_xfer(struct usbd_xfer *xfer, struct usbd_device *dev,
    void *priv, u_int32_t timeout, usb_device_request_t *req,
    void *buffer, u_int32_t length, u_int16_t flags, usbd_callback);
void usbd_setup_isoc_xfer(struct usbd_xfer *xfer, struct usbd_pipe *pipe,
    void *priv, u_int16_t *frlengths, u_int32_t nframes,
    u_int16_t flags, usbd_callback);
void usbd_get_xfer_status(struct usbd_xfer *xfer, void **priv,
    void **buffer, u_int32_t *count, usbd_status *status);
usb_endpoint_descriptor_t *usbd_interface2endpoint_descriptor(
    struct usbd_interface *iface, u_int8_t address);
void usbd_abort_pipe(struct usbd_pipe *pipe);
usbd_status usbd_clear_endpoint_stall(struct usbd_pipe *pipe);
usbd_status usbd_clear_endpoint_stall_async(struct usbd_pipe *pipe);
void usbd_clear_endpoint_toggle(struct usbd_pipe *pipe);
usbd_status usbd_device2interface_handle(struct usbd_device *dev,
    u_int8_t ifaceno, struct usbd_interface **iface);
void *usbd_alloc_buffer(struct usbd_xfer *xfer, u_int32_t size);
void usbd_free_buffer(struct usbd_xfer *xfer);
usbd_status usbd_open_pipe_intr(struct usbd_interface *iface, u_int8_t address,
    u_int8_t flags, struct usbd_pipe **pipe, void *priv,
    void *buffer, u_int32_t length, usbd_callback, int);
usbd_status usbd_do_request(struct usbd_device *pipe, usb_device_request_t *req,
    void *data);
usbd_status usbd_request_async(struct usbd_xfer *xfer,
    usb_device_request_t *req, void *priv, usbd_callback callback);
usbd_status usbd_do_request_flags(struct usbd_device *pipe,
    usb_device_request_t *req, void *data, u_int16_t flags, int*, u_int32_t);
usb_interface_descriptor_t *usbd_get_interface_descriptor(
    struct usbd_interface *iface);
usb_config_descriptor_t *usbd_get_config_descriptor(struct usbd_device *dev);
usb_device_descriptor_t *usbd_get_device_descriptor(struct usbd_device *dev);
usbd_status usbd_set_interface(struct usbd_interface *, int);
int usbd_get_no_alts(usb_config_descriptor_t *, int);
void usbd_fill_deviceinfo(struct usbd_device *, struct usb_device_info *, int);
usb_config_descriptor_t *usbd_get_cdesc(struct usbd_device *, int, u_int *);
int usbd_get_interface_altindex(struct usbd_interface *iface);
usb_interface_descriptor_t *usbd_find_idesc(usb_config_descriptor_t *cd,
    int iindex, int ano);
usb_endpoint_descriptor_t *usbd_find_edesc(usb_config_descriptor_t *cd,
    int ifaceidx, int altidx, int endptidx);
void usbd_dopoll(struct usbd_device *);
void usbd_set_polling(struct usbd_device *iface, int on);
const char *usbd_errstr(usbd_status err);
const struct usbd_quirks *usbd_get_quirks(struct usbd_device *);
usb_endpoint_descriptor_t *usbd_get_endpoint_descriptor(
    struct usbd_interface *iface, u_int8_t address);
usbd_status usbd_reload_device_desc(struct usbd_device *);
int usbd_ratecheck(struct timeval *last);
int usbd_get_devcnt(struct usbd_device *);
void usbd_claim_iface(struct usbd_device *, int);
int usbd_iface_claimed(struct usbd_device *, int);
int usbd_is_dying(struct usbd_device *);
void usbd_deactivate(struct usbd_device *);
void usbd_ref_incr(struct usbd_device *);
void usbd_ref_decr(struct usbd_device *);
void usbd_ref_wait(struct usbd_device *);
struct usbd_desc_iter {
 const uByte *cur;
 const uByte *end;
};
void usbd_desc_iter_init(struct usbd_device *, struct usbd_desc_iter *);
const usb_descriptor_t *usbd_desc_iter_next(struct usbd_desc_iter *);
int usbd_str(usb_string_descriptor_t *, int, const char *);
struct usb_task {
 struct { struct usb_task *tqe_next; struct usb_task **tqe_prev; } next;
 struct usbd_device *dev;
 void (*fun)(void *);
 void *arg;
 char type;
 u_int state;
};
void usb_add_task(struct usbd_device *, struct usb_task *);
void usb_rem_task(struct usbd_device *, struct usb_task *);
void usb_wait_task(struct usbd_device *, struct usb_task *);
void usb_rem_wait_task(struct usbd_device *, struct usb_task *);
struct usb_devno {
 u_int16_t ud_vendor;
 u_int16_t ud_product;
};
const struct usb_devno *usbd_match_device(const struct usb_devno *tbl,
    u_int nentries, u_int sz, u_int16_t vendor, u_int16_t product);
struct usb_attach_arg {
 int port;
 int configno;
 int ifaceno;
 int vendor;
 int product;
 int release;
 struct usbd_device *device;
 struct usbd_interface *iface;
 int usegeneric;
 struct usbd_interface **ifaces;
 int nifaces;
};
struct usb_dma_block;
struct usb_dma {
 struct usb_dma_block *block;
 u_int offs;
};
struct usbd_xfer;
struct usbd_pipe;
struct usbd_endpoint {
 usb_endpoint_descriptor_t *edesc;
 int refcnt;
 int savedtoggle;
};
struct usbd_bus_methods {
 usbd_status (*open_pipe)(struct usbd_pipe *);
 int (*dev_setaddr)(struct usbd_device *, int);
 void (*soft_intr)(void *);
 void (*do_poll)(struct usbd_bus *);
 struct usbd_xfer * (*allocx)(struct usbd_bus *);
 void (*freex)(struct usbd_bus *, struct usbd_xfer *);
};
struct usbd_pipe_methods {
 usbd_status (*transfer)(struct usbd_xfer *);
 usbd_status (*start)(struct usbd_xfer *);
 void (*abort)(struct usbd_xfer *);
 void (*close)(struct usbd_pipe *);
 void (*cleartoggle)(struct usbd_pipe *);
 void (*done)(struct usbd_xfer *);
};
struct usbd_tt {
 struct usbd_hub *hub;
};
struct usbd_port {
 usb_port_status_t status;
 u_int16_t power;
 u_int8_t portno;
 u_int8_t restartcnt;
 u_int8_t reattach;
 struct usbd_device *device;
 struct usbd_device *parent;
 struct usbd_tt *tt;
};
struct usbd_hub {
 int (*explore)(struct usbd_device *);
 void *hubsoftc;
 struct usbd_port *ports;
 int nports;
 u_int8_t powerdelay;
 u_int8_t ttthink;
};
struct usbd_bus {
 struct device bdev;
 struct usbd_bus_methods *methods;
 u_int32_t pipe_size;
 struct usbd_device *root_hub;
 struct usbd_device *devices[128];
 char use_polling;
 char dying;
 int flags;
 struct device *usbctl;
 struct usb_device_stats stats;
 int intr_context;
 u_int no_intrs;
 int usbrev;
 void *soft;
 bus_dma_tag_t dmatag;
};
struct usbd_device {
 struct usbd_bus *bus;
 struct usbd_pipe *default_pipe;
 u_int8_t dying;
 u_int8_t ref_cnt;
 u_int8_t address;
 u_int8_t config;
 u_int8_t depth;
 u_int8_t speed;
 u_int8_t self_powered;
 u_int16_t power;
 int16_t langid;
 struct usbd_port *powersrc;
 struct usbd_device *myhub;
 struct usbd_port *myhsport;
 struct usbd_endpoint def_ep;
 usb_endpoint_descriptor_t def_ep_desc;
 struct usbd_interface *ifaces;
 usb_device_descriptor_t ddesc;
 usb_config_descriptor_t *cdesc;
 const struct usbd_quirks *quirks;
 struct usbd_hub *hub;
 struct device **subdevs;
 int ndevs;
 char *serial;
 char *vendor;
 char *product;
};
struct usbd_interface {
 struct usbd_device *device;
 usb_interface_descriptor_t *idesc;
 int index;
 int altindex;
 struct usbd_endpoint *endpoints;
 void *priv;
 struct { struct usbd_pipe *lh_first; } pipes;
 u_int8_t claimed;
};
struct usbd_pipe {
 struct usbd_interface *iface;
 struct usbd_device *device;
 struct usbd_endpoint *endpoint;
 size_t pipe_size;
 char running;
 char aborting;
 struct { struct usbd_xfer *sqh_first; struct usbd_xfer **sqh_last; } queue;
 struct { struct usbd_pipe *le_next; struct usbd_pipe **le_prev; } next;
 struct usbd_xfer *intrxfer;
 char repeat;
 int interval;
 struct usbd_pipe_methods *methods;
};
struct usbd_xfer {
 struct usbd_pipe *pipe;
 void *priv;
 char *buffer;
 u_int32_t length;
 u_int32_t actlen;
 u_int16_t flags;
 u_int32_t timeout;
 usbd_status status;
 usbd_callback callback;
 volatile char done;
 u_int32_t busy_free;
 usb_device_request_t request;
 u_int16_t *frlengths;
 int nframes;
 struct usbd_device *device;
 struct usb_dma dmabuf;
 int rqflags;
 struct { struct usbd_xfer *sqe_next; } next;
 void *hcpriv;
 struct usb_task abort_task;
 struct timeout timeout_handle;
};
void usbd_dump_iface(struct usbd_interface *);
void usbd_dump_device(struct usbd_device *);
void usbd_dump_endpoint(struct usbd_endpoint *);
void usbd_dump_queue(struct usbd_pipe *);
void usbd_dump_pipe(struct usbd_pipe *);
int usbctlprint(void *, const char *);
void usb_delay_ms(struct usbd_bus *, u_int);
usbd_status usbd_port_disown_to_1_1(struct usbd_device *, int);
int usbd_reset_port(struct usbd_device *, int);
usbd_status usbd_setup_pipe(struct usbd_device *,
      struct usbd_interface *, struct usbd_endpoint *, int,
      struct usbd_pipe **);
int usbd_set_address(struct usbd_device *, int);
usbd_status usbd_new_device(struct device *, struct usbd_bus *,
      int, int, int, struct usbd_port *);
usbd_status usbd_fill_iface_data(struct usbd_device *, int, int);
usbd_status usb_insert_transfer(struct usbd_xfer *);
void usb_transfer_complete(struct usbd_xfer *);
int usbd_detach(struct usbd_device *, struct device *);
void usb_needs_explore(struct usbd_device *, int);
void usb_needs_reattach(struct usbd_device *);
void usb_schedsoftintr(struct usbd_bus *);
static inline int
usbd_xfer_isread(struct usbd_xfer *xfer)
{
 if (xfer->rqflags & 0x01)
  return (xfer->request.bmRequestType & 0x80);
 return (xfer->pipe->endpoint->edesc->bEndpointAddress & 0x80);
}
struct usb_frag_dma;
struct usb_dma_block {
 bus_dma_tag_t tag;
 bus_dmamap_t map;
        caddr_t kaddr;
        bus_dma_segment_t segs[1];
        int nsegs;
        size_t size;
        size_t align;
 struct usb_frag_dma *frags;
 struct { struct usb_dma_block *le_next; struct usb_dma_block **le_prev; } next;
};
usbd_status usb_allocmem(struct usbd_bus *,size_t,size_t, struct usb_dma *);
void usb_freemem(struct usbd_bus *, struct usb_dma *);
void usb_syncmem(struct usb_dma *, bus_addr_t, bus_size_t, int);
struct xhci_erseg {
 uint64_t er_addr;
 uint32_t er_size;
 uint32_t er_rsvd;
} __attribute__((__packed__));
struct xhci_sctx {
  uint32_t info_lo;
  uint32_t info_hi;
  uint32_t tt;
  uint32_t state;
  uint32_t rsvd[4];
} __attribute__((__packed__));
struct xhci_epctx {
  uint32_t info_lo;
  uint32_t info_hi;
  uint64_t deqp;
  uint32_t txinfo;
  uint32_t rsvd[3];
} __attribute__((__packed__));
struct xhci_inctx {
  uint32_t drop_flags;
  uint32_t add_flags;
  uint32_t rsvd[6];
} __attribute__((__packed__));
struct xhci_trb {
 uint64_t trb_paddr;
 uint32_t trb_status;
 uint32_t trb_flags;
} __attribute__((__packed__));
struct usbd_dma_info {
 bus_dma_tag_t tag;
 bus_dmamap_t map;
 bus_dma_segment_t seg;
 int nsegs;
 bus_addr_t paddr;
 caddr_t vaddr;
 bus_size_t size;
};
struct xhci_xfer {
 struct usbd_xfer xfer;
 int index;
 size_t ntrb;
};
struct xhci_ring {
 struct xhci_trb *trbs;
 size_t ntrb;
 struct usbd_dma_info dma;
 uint32_t index;
 uint32_t toggle;
};
struct xhci_soft_dev {
 struct xhci_inctx *input_ctx;
 struct xhci_sctx *slot_ctx;
 struct xhci_epctx *ep_ctx[31];
 struct usbd_dma_info ictx_dma;
 struct usbd_dma_info octx_dma;
 struct xhci_pipe *pipes[31];
};
struct xhci_devctx {
 uint64_t *segs;
 struct usbd_dma_info dma;
};
struct xhci_erst {
 struct xhci_erseg *segs;
 struct usbd_dma_info dma;
};
struct xhci_scratchpad {
 struct usbd_dma_info table_dma;
 struct usbd_dma_info pages_dma;
 int npage;
};
struct xhci_softc {
 struct usbd_bus sc_bus;
 bus_space_tag_t iot;
 bus_space_handle_t ioh;
 bus_size_t sc_size;
 bus_size_t sc_oper_off;
 bus_size_t sc_runt_off;
 bus_size_t sc_door_off;
 uint32_t sc_pagesize;
 uint32_t sc_ctxsize;
 int sc_noport;
 u_int8_t sc_conf;
 struct usbd_xfer *sc_intrxfer;
 struct xhci_devctx sc_dcbaa;
 struct xhci_ring sc_cmd_ring;
 struct xhci_erst sc_erst;
 struct xhci_ring sc_evt_ring;
 struct xhci_scratchpad sc_spad;
 int sc_noslot;
 struct xhci_soft_dev sc_sdevs[128];
 struct xhci_trb *sc_cmd_trb;
 struct xhci_trb sc_result_trb;
 char sc_vendor[16];
 int sc_id_vendor;
};
int xhci_init(struct xhci_softc *);
void xhci_config(struct xhci_softc *);
int xhci_intr(void *);
int xhci_detach(struct device *, int);
int xhci_activate(struct device *, int);
struct cfdriver xhci_cd = {
 ((void *)0), "xhci", DV_DULL
};
struct pool *xhcixfer;
struct xhci_pipe {
 struct usbd_pipe pipe;
 uint8_t dci;
 uint8_t slot;
 struct xhci_ring ring;
 struct usbd_xfer *pending_xfers[(16 * 16)];
 struct usbd_xfer *aborted_xfer;
 int halted;
 size_t free_trbs;
};
int xhci_reset(struct xhci_softc *);
int xhci_intr1(struct xhci_softc *);
void xhci_event_dequeue(struct xhci_softc *);
void xhci_event_xfer(struct xhci_softc *, uint64_t, uint32_t, uint32_t);
void xhci_event_command(struct xhci_softc *, uint64_t);
void xhci_event_port_change(struct xhci_softc *, uint64_t, uint32_t);
int xhci_pipe_init(struct xhci_softc *, struct usbd_pipe *);
void xhci_context_setup(struct xhci_softc *, struct usbd_pipe *);
int xhci_scratchpad_alloc(struct xhci_softc *, int);
void xhci_scratchpad_free(struct xhci_softc *);
int xhci_softdev_alloc(struct xhci_softc *, uint8_t);
void xhci_softdev_free(struct xhci_softc *, uint8_t);
int xhci_ring_alloc(struct xhci_softc *, struct xhci_ring *, size_t,
     size_t);
void xhci_ring_free(struct xhci_softc *, struct xhci_ring *);
void xhci_ring_reset(struct xhci_softc *, struct xhci_ring *);
struct xhci_trb *xhci_ring_consume(struct xhci_softc *, struct xhci_ring *);
struct xhci_trb *xhci_ring_produce(struct xhci_softc *, struct xhci_ring *);
struct xhci_trb *xhci_xfer_get_trb(struct xhci_softc *, struct usbd_xfer*,
     uint8_t *, int);
void xhci_xfer_done(struct usbd_xfer *xfer);
int xhci_command_submit(struct xhci_softc *, struct xhci_trb *, int);
int xhci_command_abort(struct xhci_softc *);
void xhci_cmd_reset_ep_async(struct xhci_softc *, uint8_t, uint8_t);
void xhci_cmd_set_tr_deq_async(struct xhci_softc *, uint8_t, uint8_t, uint64_t);
int xhci_cmd_configure_ep(struct xhci_softc *, uint8_t, uint64_t);
int xhci_cmd_stop_ep(struct xhci_softc *, uint8_t, uint8_t);
int xhci_cmd_slot_control(struct xhci_softc *, uint8_t *, int);
int xhci_cmd_set_address(struct xhci_softc *, uint8_t, uint64_t, uint32_t);
int xhci_cmd_evaluate_ctx(struct xhci_softc *, uint8_t, uint64_t);
void xhci_abort_xfer(struct usbd_xfer *, usbd_status);
void xhci_pipe_close(struct usbd_pipe *);
void xhci_noop(struct usbd_xfer *);
void xhci_timeout(void *);
void xhci_timeout_task(void *);
usbd_status xhci_pipe_open(struct usbd_pipe *);
int xhci_setaddr(struct usbd_device *, int);
void xhci_softintr(void *);
void xhci_poll(struct usbd_bus *);
struct usbd_xfer *xhci_allocx(struct usbd_bus *);
void xhci_freex(struct usbd_bus *, struct usbd_xfer *);
usbd_status xhci_root_ctrl_transfer(struct usbd_xfer *);
usbd_status xhci_root_ctrl_start(struct usbd_xfer *);
usbd_status xhci_root_intr_transfer(struct usbd_xfer *);
usbd_status xhci_root_intr_start(struct usbd_xfer *);
void xhci_root_intr_abort(struct usbd_xfer *);
void xhci_root_intr_done(struct usbd_xfer *);
usbd_status xhci_device_ctrl_transfer(struct usbd_xfer *);
usbd_status xhci_device_ctrl_start(struct usbd_xfer *);
void xhci_device_ctrl_abort(struct usbd_xfer *);
usbd_status xhci_device_generic_transfer(struct usbd_xfer *);
usbd_status xhci_device_generic_start(struct usbd_xfer *);
void xhci_device_generic_abort(struct usbd_xfer *);
void xhci_device_generic_done(struct usbd_xfer *);
struct usbd_bus_methods xhci_bus_methods = {
 .open_pipe = xhci_pipe_open,
 .dev_setaddr = xhci_setaddr,
 .soft_intr = xhci_softintr,
 .do_poll = xhci_poll,
 .allocx = xhci_allocx,
 .freex = xhci_freex,
};
struct usbd_pipe_methods xhci_root_ctrl_methods = {
 .transfer = xhci_root_ctrl_transfer,
 .start = xhci_root_ctrl_start,
 .abort = xhci_noop,
 .close = xhci_pipe_close,
 .done = xhci_noop,
};
struct usbd_pipe_methods xhci_root_intr_methods = {
 .transfer = xhci_root_intr_transfer,
 .start = xhci_root_intr_start,
 .abort = xhci_root_intr_abort,
 .close = xhci_pipe_close,
 .done = xhci_root_intr_done,
};
struct usbd_pipe_methods xhci_device_ctrl_methods = {
 .transfer = xhci_device_ctrl_transfer,
 .start = xhci_device_ctrl_start,
 .abort = xhci_device_ctrl_abort,
 .close = xhci_pipe_close,
 .done = xhci_noop,
};
struct usbd_pipe_methods xhci_device_bulk_methods = {
 .transfer = xhci_device_generic_transfer,
 .start = xhci_device_generic_start,
 .abort = xhci_device_generic_abort,
 .close = xhci_pipe_close,
 .done = xhci_device_generic_done,
};
struct usbd_pipe_methods xhci_device_generic_methods = {
 .transfer = xhci_device_generic_transfer,
 .start = xhci_device_generic_start,
 .abort = xhci_device_generic_abort,
 .close = xhci_pipe_close,
 .done = xhci_device_generic_done,
};
int usbd_dma_contig_alloc(struct usbd_bus *, struct usbd_dma_info *,
     void **, bus_size_t, bus_size_t, bus_size_t);
void usbd_dma_contig_free(struct usbd_bus *, struct usbd_dma_info *);
int
usbd_dma_contig_alloc(struct usbd_bus *bus, struct usbd_dma_info *dma,
    void **kvap, bus_size_t size, bus_size_t alignment, bus_size_t boundary)
{
 int error;
 dma->tag = bus->dmatag;
 dma->size = size;
 error = bus_dmamap_create(dma->tag, size, 1, size, boundary,
     0x0001, &dma->map);
 if (error != 0)
  return (error);
 error = bus_dmamem_alloc(dma->tag, size, alignment, boundary, &dma->seg,
     1, &dma->nsegs, 0x0001 | 0x0800);
 if (error != 0)
  goto destroy;
 error = bus_dmamem_map(dma->tag, &dma->seg, 1, size, &dma->vaddr,
     0x0001 | 0x0004);
 if (error != 0)
  goto free;
 error = bus_dmamap_load_raw(dma->tag, dma->map, &dma->seg, 1, size,
     0x0001);
 if (error != 0)
  goto unmap;
 bus_dmamap_sync(dma->tag, dma->map, 0, size, 0x01 |
     0x04);
 dma->paddr = dma->map->dm_segs[0].ds_addr;
 if (kvap != ((void *)0))
  *kvap = dma->vaddr;
 return (0);
unmap:
 bus_dmamem_unmap(dma->tag, dma->vaddr, size);
free:
 bus_dmamem_free(dma->tag, &dma->seg, 1);
destroy:
 bus_dmamap_destroy(dma->tag, dma->map);
 return (error);
}
void
usbd_dma_contig_free(struct usbd_bus *bus, struct usbd_dma_info *dma)
{
 if (dma->map != ((void *)0)) {
  bus_dmamap_sync(bus->dmatag, dma->map, 0, dma->size,
      0x02 | 0x08);
  bus_dmamap_unload(bus->dmatag, dma->map);
  bus_dmamem_unmap(bus->dmatag, dma->vaddr, dma->size);
  bus_dmamem_free(bus->dmatag, &dma->seg, 1);
  bus_dmamap_destroy(bus->dmatag, dma->map);
  dma->map = ((void *)0);
 }
}
int
xhci_init(struct xhci_softc *sc)
{
 uint32_t hcr;
 int npage, error;
 sc->sc_bus.usbrev = 5;
 sc->sc_bus.methods = &xhci_bus_methods;
 sc->sc_bus.pipe_size = sizeof(struct xhci_pipe);
 sc->sc_oper_off = bus_space_read_1((sc)->iot, (sc)->ioh, (0x00));
 sc->sc_door_off = bus_space_read_4((sc)->iot, (sc)->ioh, (0x14));
 sc->sc_runt_off = bus_space_read_4((sc)->iot, (sc)->ioh, (0x18));
 error = xhci_reset(sc);
 if (error)
  return (error);
 if (xhcixfer == ((void *)0)) {
  xhcixfer = malloc(sizeof(struct pool), 2, 0x0002);
  if (xhcixfer == ((void *)0)) {
   printf("%s: unable to allocate pool descriptor\n",
       ((sc)->sc_bus.bdev.dv_xname));
   return (12);
  }
  pool_init(xhcixfer, sizeof(struct xhci_xfer), 0, 2,
      0, "xhcixfer", ((void *)0));
 }
 hcr = bus_space_read_4((sc)->iot, (sc)->ioh, (0x10));
 sc->sc_ctxsize = (((hcr) >> 2) & 0x1) ? 64 : 32;
 ;
 sc->sc_pagesize = 4096;
 hcr = bus_space_read_4((sc)->iot, (sc)->ioh, (0x04));
 sc->sc_noport = (((hcr) >> 24) & 0xff);
 sc->sc_noslot = ((hcr) & 0xff);
 ;
 error = usbd_dma_contig_alloc(&sc->sc_bus, &sc->sc_dcbaa.dma,
     (void **)&sc->sc_dcbaa.segs, (sc->sc_noslot + 1) * sizeof(uint64_t),
     64, sc->sc_pagesize);
 if (error)
  return (12);
 error = xhci_ring_alloc(sc, &sc->sc_cmd_ring, (16 * 1),
     64);
 if (error) {
  printf("%s: could not allocate command ring.\n", ((sc)->sc_bus.bdev.dv_xname));
  usbd_dma_contig_free(&sc->sc_bus, &sc->sc_dcbaa.dma);
  return (error);
 }
 error = xhci_ring_alloc(sc, &sc->sc_evt_ring, (16 * 13),
     64);
 if (error) {
  printf("%s: could not allocate event ring.\n", ((sc)->sc_bus.bdev.dv_xname));
  xhci_ring_free(sc, &sc->sc_cmd_ring);
  usbd_dma_contig_free(&sc->sc_bus, &sc->sc_dcbaa.dma);
  return (error);
 }
 error = usbd_dma_contig_alloc(&sc->sc_bus, &sc->sc_erst.dma,
     (void **)&sc->sc_erst.segs, sizeof(struct xhci_erseg),
     64, 0);
 if (error) {
  printf("%s: could not allocate segment table.\n", ((sc)->sc_bus.bdev.dv_xname));
  xhci_ring_free(sc, &sc->sc_evt_ring);
  xhci_ring_free(sc, &sc->sc_cmd_ring);
  usbd_dma_contig_free(&sc->sc_bus, &sc->sc_dcbaa.dma);
  return (12);
 }
 sc->sc_erst.segs[0].er_addr = __extension__({ __uint64_t __swap64gen_x = (sc->sc_evt_ring.dma.paddr); (__uint64_t)((__swap64gen_x & 0xff) << 56 | (__swap64gen_x & 0xff00ULL) << 40 | (__swap64gen_x & 0xff0000ULL) << 24 | (__swap64gen_x & 0xff000000ULL) << 8 | (__swap64gen_x & 0xff00000000ULL) >> 8 | (__swap64gen_x & 0xff0000000000ULL) >> 24 | (__swap64gen_x & 0xff000000000000ULL) >> 40 | (__swap64gen_x & 0xff00000000000000ULL) >> 56); });
 sc->sc_erst.segs[0].er_size = __extension__({ __uint32_t __swap32gen_x = ((16 * 13)); (__uint32_t)((__swap32gen_x & 0xff) << 24 | (__swap32gen_x & 0xff00) << 8 | (__swap32gen_x & 0xff0000) >> 8 | (__swap32gen_x & 0xff000000) >> 24); });
 sc->sc_erst.segs[0].er_rsvd = 0;
 bus_dmamap_sync(sc->sc_erst.dma.tag, sc->sc_erst.dma.map, 0,
     sc->sc_erst.dma.size, 0x01 | 0x04);
 hcr = bus_space_read_4((sc)->iot, (sc)->ioh, (0x08));
 npage = (((hcr) >> 27) & 0x7f);
 ;
 if (npage > 0 && xhci_scratchpad_alloc(sc, npage)) {
  printf("%s: could not allocate scratchpad.\n", ((sc)->sc_bus.bdev.dv_xname));
  usbd_dma_contig_free(&sc->sc_bus, &sc->sc_erst.dma);
  xhci_ring_free(sc, &sc->sc_evt_ring);
  xhci_ring_free(sc, &sc->sc_cmd_ring);
  usbd_dma_contig_free(&sc->sc_bus, &sc->sc_dcbaa.dma);
  return (12);
 }
 return (0);
}
void
xhci_config(struct xhci_softc *sc)
{
 uint64_t paddr;
 uint32_t hcr;
 if (sc->sc_noslot > 128)
  sc->sc_noslot = 128;
 hcr = bus_space_read_4((sc)->iot, (sc)->ioh, (sc)->sc_oper_off + (0x38)) & ~0x000000ff;
 bus_space_write_4((sc)->iot, (sc)->ioh, (sc)->sc_oper_off + (0x38), (hcr | sc->sc_noslot));
 paddr = (uint64_t)sc->sc_dcbaa.dma.paddr;
 bus_space_write_4((sc)->iot, (sc)->ioh, (sc)->sc_oper_off + (0x30), ((uint32_t)paddr));
 bus_space_write_4((sc)->iot, (sc)->ioh, (sc)->sc_oper_off + (0x34), ((uint32_t)(paddr >> 32)));
 ;
 paddr = (uint64_t)sc->sc_cmd_ring.dma.paddr;
 bus_space_write_4((sc)->iot, (sc)->ioh, (sc)->sc_oper_off + (0x18), (((uint32_t)paddr) | 0x00000001));
 bus_space_write_4((sc)->iot, (sc)->ioh, (sc)->sc_oper_off + (0x1C), ((uint32_t)(paddr >> 32)));
 ;
 bus_space_write_4((sc)->iot, (sc)->ioh, (sc)->sc_runt_off + ((0x0028 + (0x20 * (0)))), (((1) & 0xffff)));
 paddr = (uint64_t)sc->sc_erst.dma.paddr;
 bus_space_write_4((sc)->iot, (sc)->ioh, (sc)->sc_runt_off + ((0x0030 + (0x20 * (0)))), ((uint32_t)paddr));
 bus_space_write_4((sc)->iot, (sc)->ioh, (sc)->sc_runt_off + ((0x0034 + (0x20 * (0)))), ((uint32_t)(paddr >> 32)));
 ;
 paddr = (uint64_t)sc->sc_evt_ring.dma.paddr;
 bus_space_write_4((sc)->iot, (sc)->ioh, (sc)->sc_runt_off + ((0x0038 + (0x20 * (0)))), ((uint32_t)paddr));
 bus_space_write_4((sc)->iot, (sc)->ioh, (sc)->sc_runt_off + ((0x003c + (0x20 * (0)))), ((uint32_t)(paddr >> 32)));
 ;
 hcr = bus_space_read_4((sc)->iot, (sc)->ioh, (sc)->sc_runt_off + ((0x0020 + (0x20 * (0)))));
 bus_space_write_4((sc)->iot, (sc)->ioh, (sc)->sc_runt_off + ((0x0020 + (0x20 * (0)))), (hcr | 0x00000002));
 bus_space_write_4((sc)->iot, (sc)->ioh, (sc)->sc_runt_off + ((0x0024 + (0x20 * (0)))), (0x000001F4U));
 bus_space_write_4((sc)->iot, (sc)->ioh, (sc)->sc_oper_off + (0x00), (0x00000004|0x00000001));
 ;
 ;
}
int
xhci_detach(struct device *self, int flags)
{
 struct xhci_softc *sc = (struct xhci_softc *)self;
 int rv;
 rv = config_detach_children(self, flags);
 if (rv != 0) {
  printf("%s: error while detaching %d\n", ((sc)->sc_bus.bdev.dv_xname), rv);
  return (rv);
 }
 xhci_command_abort(sc);
 xhci_reset(sc);
 bus_space_write_4((sc)->iot, (sc)->ioh, (sc)->sc_runt_off + ((0x0024 + (0x20 * (0)))), (0));
 bus_space_write_4((sc)->iot, (sc)->ioh, (sc)->sc_runt_off + ((0x0020 + (0x20 * (0)))), (0));
 bus_space_write_4((sc)->iot, (sc)->ioh, (sc)->sc_runt_off + ((0x0038 + (0x20 * (0)))), (0));
 bus_space_write_4((sc)->iot, (sc)->ioh, (sc)->sc_runt_off + ((0x003c + (0x20 * (0)))), (0));
 bus_space_write_4((sc)->iot, (sc)->ioh, (sc)->sc_runt_off + ((0x0030 + (0x20 * (0)))), (0));
 bus_space_write_4((sc)->iot, (sc)->ioh, (sc)->sc_runt_off + ((0x0034 + (0x20 * (0)))), (0));
 bus_space_write_4((sc)->iot, (sc)->ioh, (sc)->sc_runt_off + ((0x0028 + (0x20 * (0)))), (0));
 bus_space_write_4((sc)->iot, (sc)->ioh, (sc)->sc_oper_off + (0x18), (0));
 bus_space_write_4((sc)->iot, (sc)->ioh, (sc)->sc_oper_off + (0x1C), (0));
 bus_space_write_4((sc)->iot, (sc)->ioh, (sc)->sc_oper_off + (0x30), (0));
 bus_space_write_4((sc)->iot, (sc)->ioh, (sc)->sc_oper_off + (0x34), (0));
 if (sc->sc_spad.npage > 0)
  xhci_scratchpad_free(sc);
 usbd_dma_contig_free(&sc->sc_bus, &sc->sc_erst.dma);
 xhci_ring_free(sc, &sc->sc_evt_ring);
 xhci_ring_free(sc, &sc->sc_cmd_ring);
 usbd_dma_contig_free(&sc->sc_bus, &sc->sc_dcbaa.dma);
 return (0);
}
int
xhci_activate(struct device *self, int act)
{
 struct xhci_softc *sc = (struct xhci_softc *)self;
 int rv = 0;
 switch (act) {
 case 4:
  sc->sc_bus.use_polling++;
  xhci_reset(sc);
  xhci_ring_reset(sc, &sc->sc_cmd_ring);
  xhci_ring_reset(sc, &sc->sc_evt_ring);
  usb_delay_ms(&sc->sc_bus, 50);
  xhci_config(sc);
  sc->sc_bus.use_polling--;
  rv = config_activate_children(self, act);
  break;
 case 6:
  rv = config_activate_children(self, act);
  xhci_reset(sc);
  break;
 default:
  rv = config_activate_children(self, act);
  break;
 }
 return (rv);
}
int
xhci_reset(struct xhci_softc *sc)
{
 uint32_t hcr;
 int i;
 bus_space_write_4((sc)->iot, (sc)->ioh, (sc)->sc_oper_off + (0x00), (0));
 for (i = 0; i < 100; i++) {
  usb_delay_ms(&sc->sc_bus, 1);
  hcr = bus_space_read_4((sc)->iot, (sc)->ioh, (sc)->sc_oper_off + (0x04)) & 0x00000001;
  if (hcr)
   break;
 }
 if (!hcr)
  printf("%s: halt timeout\n", ((sc)->sc_bus.bdev.dv_xname));
 bus_space_write_4((sc)->iot, (sc)->ioh, (sc)->sc_oper_off + (0x00), (0x00000002));
 for (i = 0; i < 100; i++) {
  usb_delay_ms(&sc->sc_bus, 1);
  hcr = (bus_space_read_4((sc)->iot, (sc)->ioh, (sc)->sc_oper_off + (0x00)) & 0x00000002) |
      (bus_space_read_4((sc)->iot, (sc)->ioh, (sc)->sc_oper_off + (0x04)) & 0x00000800);
  if (!hcr)
   break;
 }
 if (hcr) {
  printf("%s: reset timeout\n", ((sc)->sc_bus.bdev.dv_xname));
  return (5);
 }
 return (0);
}
int
xhci_intr(void *v)
{
 struct xhci_softc *sc = v;
 if (sc == ((void *)0) || sc->sc_bus.dying)
  return (0);
 if (sc->sc_bus.use_polling) {
  ;
  return (0);
 }
 return (xhci_intr1(sc));
}
int
xhci_intr1(struct xhci_softc *sc)
{
 uint32_t intrs;
 intrs = bus_space_read_4((sc)->iot, (sc)->ioh, (sc)->sc_oper_off + (0x04));
 if (intrs == 0xffffffff) {
  sc->sc_bus.dying = 1;
  return (0);
 }
 if ((intrs & 0x00000008) == 0)
  return (0);
 sc->sc_bus.no_intrs++;
 if (intrs & 0x00000004) {
  printf("%s: host system error\n", ((sc)->sc_bus.bdev.dv_xname));
  sc->sc_bus.dying = 1;
  return (1);
 }
 bus_space_write_4((sc)->iot, (sc)->ioh, (sc)->sc_oper_off + (0x04), (intrs));
 usb_schedsoftintr(&sc->sc_bus);
 intrs = bus_space_read_4((sc)->iot, (sc)->ioh, (sc)->sc_runt_off + ((0x0020 + (0x20 * (0)))));
 bus_space_write_4((sc)->iot, (sc)->ioh, (sc)->sc_runt_off + ((0x0020 + (0x20 * (0)))), (intrs | 0x00000001));
 return (1);
}
void
xhci_poll(struct usbd_bus *bus)
{
 struct xhci_softc *sc = (struct xhci_softc *)bus;
 if (bus_space_read_4((sc)->iot, (sc)->ioh, (sc)->sc_oper_off + (0x04)))
  xhci_intr1(sc);
}
void
xhci_softintr(void *v)
{
 struct xhci_softc *sc = v;
 if (sc->sc_bus.dying)
  return;
 sc->sc_bus.intr_context++;
 xhci_event_dequeue(sc);
 sc->sc_bus.intr_context--;
}
void
xhci_event_dequeue(struct xhci_softc *sc)
{
 struct xhci_trb *trb;
 uint64_t paddr;
 uint32_t status, flags;
 while ((trb = xhci_ring_consume(sc, &sc->sc_evt_ring)) != ((void *)0)) {
  paddr = __extension__({ __uint64_t __swap64gen_x = (trb->trb_paddr); (__uint64_t)((__swap64gen_x & 0xff) << 56 | (__swap64gen_x & 0xff00ULL) << 40 | (__swap64gen_x & 0xff0000ULL) << 24 | (__swap64gen_x & 0xff000000ULL) << 8 | (__swap64gen_x & 0xff00000000ULL) >> 8 | (__swap64gen_x & 0xff0000000000ULL) >> 24 | (__swap64gen_x & 0xff000000000000ULL) >> 40 | (__swap64gen_x & 0xff00000000000000ULL) >> 56); });
  status = __extension__({ __uint32_t __swap32gen_x = (trb->trb_status); (__uint32_t)((__swap32gen_x & 0xff) << 24 | (__swap32gen_x & 0xff00) << 8 | (__swap32gen_x & 0xff0000) >> 8 | (__swap32gen_x & 0xff000000) >> 24); });
  flags = __extension__({ __uint32_t __swap32gen_x = (trb->trb_flags); (__uint32_t)((__swap32gen_x & 0xff) << 24 | (__swap32gen_x & 0xff00) << 8 | (__swap32gen_x & 0xff0000) >> 8 | (__swap32gen_x & 0xff000000) >> 24); });
  switch (flags & 0xfc00) {
  case (32 << 10):
   xhci_event_xfer(sc, paddr, status, flags);
   break;
  case (33 << 10):
   __builtin_memcpy((&sc->sc_result_trb), (trb), (sizeof(*trb)));
   xhci_event_command(sc, paddr);
   break;
  case (34 << 10):
   xhci_event_port_change(sc, paddr, status);
   break;
  default:
   break;
  }
 }
 paddr = (uint64_t)((sc->sc_evt_ring).dma.paddr + (sizeof(struct xhci_trb) * (sc->sc_evt_ring).index));
 bus_space_write_4((sc)->iot, (sc)->ioh, (sc)->sc_runt_off + ((0x0038 + (0x20 * (0)))), (((uint32_t)paddr) | 0x00000008));
 bus_space_write_4((sc)->iot, (sc)->ioh, (sc)->sc_runt_off + ((0x003c + (0x20 * (0)))), ((uint32_t)(paddr >> 32)));
}
void
xhci_event_xfer(struct xhci_softc *sc, uint64_t paddr, uint32_t status,
    uint32_t flags)
{
 struct xhci_pipe *xp;
 struct usbd_xfer *xfer;
 struct xhci_xfer *xx;
 uint8_t dci, slot, code;
 uint32_t remain;
 int trb_idx;
 slot = (((flags) >> 24) & 0xff);
 dci = (((flags) >> 16) & 0x1f);
 if (slot > sc->sc_noslot) {
  ;
  return;
 }
 xp = sc->sc_sdevs[slot].pipes[dci - 1];
 if (xp == ((void *)0))
  return;
 code = (((status) >> 24) & 0xff);
 remain = ((status) & 0xffffff);
 trb_idx = (paddr - xp->ring.dma.paddr) / sizeof(struct xhci_trb);
 if (trb_idx < 0 || trb_idx >= xp->ring.ntrb) {
  printf("%s: wrong trb index (%d) max is %zu\n", ((sc)->sc_bus.bdev.dv_xname),
      trb_idx, xp->ring.ntrb - 1);
  return;
 }
 xfer = xp->pending_xfers[trb_idx];
 if (xfer == ((void *)0)) {
  printf("%s: NULL xfer pointer\n", ((sc)->sc_bus.bdev.dv_xname));
  return;
 }
 if (remain > xfer->length)
  remain = xfer->length;
 switch (code) {
 case 1:
  if (xfer->actlen == 0)
   xfer->actlen = xfer->length - remain;
  xfer->status = USBD_NORMAL_COMPLETION;
  break;
 case 13:
  xfer->actlen = xfer->length - remain;
  xx = (struct xhci_xfer *)xfer;
  if (xx->index != trb_idx)
   return;
  xfer->status = USBD_NORMAL_COMPLETION;
  break;
 case 4:
 case 36:
  xfer->status = USBD_IOERROR;
  break;
 case 6:
 case 3:
  timeout_del(&xfer->timeout_handle);
  usb_rem_task(xfer->device, &xfer->abort_task);
  if (code == 6)
   xp->halted = USBD_STALLED;
  else
   xp->halted = USBD_IOERROR;
  xp->aborted_xfer = xfer;
  xhci_cmd_reset_ep_async(sc, slot, dci);
  return;
 case 26:
 case 27:
  if (xfer == xp->aborted_xfer) {
   ;
       return;
  }
 default:
  ;
  xfer->status = USBD_IOERROR;
  xp->halted = 1;
  break;
 }
 xhci_xfer_done(xfer);
}
void
xhci_event_command(struct xhci_softc *sc, uint64_t paddr)
{
 struct xhci_trb *trb;
 struct xhci_pipe *xp;
 uint32_t flags;
 uint8_t dci, slot;
 int trb_idx, status;
 trb_idx = (paddr - sc->sc_cmd_ring.dma.paddr) / sizeof(*trb);
 if (trb_idx < 0 || trb_idx >= sc->sc_cmd_ring.ntrb) {
  printf("%s: wrong trb index (%d) max is %zu\n", ((sc)->sc_bus.bdev.dv_xname),
      trb_idx, sc->sc_cmd_ring.ntrb - 1);
  return;
 }
 trb = &sc->sc_cmd_ring.trbs[trb_idx];
 bus_dmamap_sync(sc->sc_cmd_ring.dma.tag, sc->sc_cmd_ring.dma.map,
     ((char *)(trb) - (char *)((&sc->sc_cmd_ring)->trbs)), sizeof(struct xhci_trb),
     0x02 | 0x08);
 flags = __extension__({ __uint32_t __swap32gen_x = (trb->trb_flags); (__uint32_t)((__swap32gen_x & 0xff) << 24 | (__swap32gen_x & 0xff00) << 8 | (__swap32gen_x & 0xff0000) >> 8 | (__swap32gen_x & 0xff000000) >> 24); });
 slot = (((flags) >> 24) & 0xff);
 dci = (((flags) >> 16) & 0x1f);
 switch (flags & 0xfc00) {
 case (14 << 10):
  xp = sc->sc_sdevs[slot].pipes[dci - 1];
  if (xp == ((void *)0))
   break;
  xhci_cmd_set_tr_deq_async(sc, xp->slot, xp->dci,
      ((xp->ring).dma.paddr + (sizeof(struct xhci_trb) * (xp->ring).index)) | xp->ring.toggle);
  break;
 case (16 << 10):
  xp = sc->sc_sdevs[slot].pipes[dci - 1];
  if (xp == ((void *)0))
   break;
  status = xp->halted;
  xp->halted = 0;
  if (xp->aborted_xfer != ((void *)0)) {
   xp->aborted_xfer->status = status;
   xhci_xfer_done(xp->aborted_xfer);
   wakeup(xp);
  }
  break;
 case (12 << 10):
 case (15 << 10):
 case (10 << 10):
 case (9 << 10):
 case (11 << 10):
 case (13 << 10):
 case (23 << 10):
  ((sc->sc_cmd_trb == trb) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../dev/usb/xhci.c", 853, "sc->sc_cmd_trb == trb"));
  sc->sc_cmd_trb = ((void *)0);
  wakeup(&sc->sc_cmd_trb);
  break;
 default:
  ;
 }
}
void
xhci_event_port_change(struct xhci_softc *sc, uint64_t paddr, uint32_t status)
{
 struct usbd_xfer *xfer = sc->sc_intrxfer;
 uint32_t port = (((paddr) & (0xff << 24)) >> 24);
 uint8_t *p;
 if ((((status) >> 24) & 0xff) != 1) {
  ;
  return;
 }
 if (xfer == ((void *)0))
  return;
 p = ((void *)((char *)((&xfer->dmabuf)->block->kaddr + (&xfer->dmabuf)->offs) + (0)));
 __builtin_memset((p), (0), (xfer->length));
 p[port/8] |= 1 << (port%8);
 ;
 xfer->actlen = xfer->length;
 xfer->status = USBD_NORMAL_COMPLETION;
 usb_transfer_complete(xfer);
}
void
xhci_xfer_done(struct usbd_xfer *xfer)
{
 struct xhci_pipe *xp = (struct xhci_pipe *)xfer->pipe;
 struct xhci_xfer *xx = (struct xhci_xfer *)xfer;
 int ntrb, i;
 do { if (splassert_ctl > 0) { splassert_check(2, __func__); } } while (0);
 if (xp->aborted_xfer == xfer)
  xp->aborted_xfer = ((void *)0);
 for (ntrb = 0, i = xx->index; ntrb < xx->ntrb; ntrb++, i--) {
  xp->pending_xfers[i] = ((void *)0);
  if (i == 0)
   i = (xp->ring.ntrb - 1);
 }
 xp->free_trbs += xx->ntrb;
 xx->index = -1;
 xx->ntrb = 0;
 timeout_del(&xfer->timeout_handle);
 usb_rem_task(xfer->device, &xfer->abort_task);
 usb_transfer_complete(xfer);
}
static inline uint8_t
xhci_ed2dci(usb_endpoint_descriptor_t *ed)
{
 uint8_t dir;
 if (((ed->bmAttributes) & 0x03) == 0x00)
  return (((ed->bEndpointAddress) & 0x0f) * 2 + 1);
 if (((ed->bEndpointAddress) & 0x80) == 0x80)
  dir = 1;
 else
  dir = 0;
 return (((ed->bEndpointAddress) & 0x0f) * 2 + dir);
}
usbd_status
xhci_pipe_open(struct usbd_pipe *pipe)
{
 struct xhci_softc *sc = (struct xhci_softc *)pipe->device->bus;
 struct xhci_pipe *xp = (struct xhci_pipe *)pipe;
 usb_endpoint_descriptor_t *ed = pipe->endpoint->edesc;
 uint8_t slot = 0, xfertype = ((ed->bmAttributes) & 0x03);
 int error;
 ((xp->slot == 0) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../dev/usb/xhci.c", 951, "xp->slot == 0"));
 if (sc->sc_bus.dying)
  return (USBD_IOERROR);
 if (pipe->device->depth == 0) {
  switch (ed->bEndpointAddress) {
  case 0:
   pipe->methods = &xhci_root_ctrl_methods;
   break;
  case 0x80 | 1:
   pipe->methods = &xhci_root_intr_methods;
   break;
  default:
   pipe->methods = ((void *)0);
   return (USBD_INVAL);
  }
  return (USBD_NORMAL_COMPLETION);
 }
 switch (xfertype) {
 case 0x00:
  pipe->methods = &xhci_device_ctrl_methods;
  error = xhci_cmd_slot_control(sc, &slot, 1);
  if (error || slot == 0 || slot > sc->sc_noslot)
   return (USBD_INVAL);
  if (xhci_softdev_alloc(sc, slot)) {
   xhci_cmd_slot_control(sc, &slot, 0);
   return (USBD_NOMEM);
  }
  break;
 case 0x01:
  ;
  return (USBD_INVAL);
 case 0x02:
  pipe->methods = &xhci_device_bulk_methods;
  break;
 case 0x03:
  pipe->methods = &xhci_device_generic_methods;
  break;
 default:
  return (USBD_INVAL);
 }
 if (slot == 0)
  slot = ((struct xhci_pipe *)pipe->device->default_pipe)->slot;
 xp->slot = slot;
 xp->dci = xhci_ed2dci(ed);
 if (xhci_pipe_init(sc, pipe)) {
  xhci_cmd_slot_control(sc, &slot, 0);
  return (USBD_IOERROR);
 }
 return (USBD_NORMAL_COMPLETION);
}
static inline uint32_t
xhci_get_txinfo(struct xhci_softc *sc, struct usbd_pipe *pipe)
{
 usb_endpoint_descriptor_t *ed = pipe->endpoint->edesc;
 uint32_t mep, atl, mps = ((ed->wMaxPacketSize)[0] | ((ed->wMaxPacketSize)[1] << 8));
 switch (ed->bmAttributes & 0x03) {
 case 0x00:
  mep = 0;
  atl = 8;
  break;
 case 0x03:
 case 0x01:
  if (pipe->device->speed == 4) {
  }
  mep = ((((mps) >> 11) & 0x3) | 0x1) * ((mps) & 0x7ff);
  atl = min(sc->sc_pagesize, mep);
  break;
 case 0x02:
 default:
  mep = 0;
  atl = 0;
 }
 return ((((mep) & 0xffff) << 16) | ((atl) & 0xffff));
}
void
xhci_context_setup(struct xhci_softc *sc, struct usbd_pipe *pipe)
{
 struct xhci_pipe *xp = (struct xhci_pipe *)pipe;
 struct xhci_soft_dev *sdev = &sc->sc_sdevs[xp->slot];
 usb_endpoint_descriptor_t *ed = pipe->endpoint->edesc;
 uint32_t mps = ((((ed->wMaxPacketSize)[0] | ((ed->wMaxPacketSize)[1] << 8))) & 0x7ff);
 uint8_t xfertype = ((ed->bmAttributes) & 0x03);
 uint8_t ival, speed, cerr = 0;
 uint32_t route = 0, rhport = 0;
 struct usbd_device *hub;
 for (hub = pipe->device; hub->myhub->depth; hub = hub->myhub) {
  uint32_t port = hub->powersrc->portno;
  uint32_t depth = hub->myhub->depth;
  route |= port << (4 * (depth - 1));
 }
 rhport = hub->powersrc->portno;
 switch (pipe->device->speed) {
 case 1:
  ival= 3;
  speed = 2;
  break;
 case 2:
  ival = 3;
  speed = 1;
  break;
 case 3:
  ival = min(3, ed->bInterval);
  speed = 3;
  break;
 case 4:
  ival = min(3, ed->bInterval);
  speed = 4;
  break;
 default:
  return;
 }
 if (pipe->interval != (-1))
  ival = min(ival, pipe->interval);
 if (xfertype != 0x01)
  cerr = 3;
 if (xfertype == 0x00 || xfertype == 0x02)
  ival = 0;
 if ((ed->bEndpointAddress & 0x80) || (xfertype == 0x00))
  xfertype |= 0x4;
 sdev->ep_ctx[xp->dci-1]->info_lo = __extension__({ __uint32_t __swap32gen_x = ((((ival) & 0xff) << 16)); (__uint32_t)((__swap32gen_x & 0xff) << 24 | (__swap32gen_x & 0xff00) << 8 | (__swap32gen_x & 0xff0000) >> 8 | (__swap32gen_x & 0xff000000) >> 24); });
 sdev->ep_ctx[xp->dci-1]->info_hi = __extension__({ __uint32_t __swap32gen_x = ((((mps) & 0xffff) << 16) | (((xfertype) & 0x7) << 3) | (((cerr) & 0x3) << 1) | (((0) & 0xff) << 8)); (__uint32_t)((__swap32gen_x & 0xff) << 24 | (__swap32gen_x & 0xff00) << 8 | (__swap32gen_x & 0xff0000) >> 8 | (__swap32gen_x & 0xff000000) >> 24); });
 sdev->ep_ctx[xp->dci-1]->txinfo = __extension__({ __uint32_t __swap32gen_x = (xhci_get_txinfo(sc, pipe)); (__uint32_t)((__swap32gen_x & 0xff) << 24 | (__swap32gen_x & 0xff00) << 8 | (__swap32gen_x & 0xff0000) >> 8 | (__swap32gen_x & 0xff000000) >> 24); });
 sdev->ep_ctx[xp->dci-1]->deqp = __extension__({ __uint64_t __swap64gen_x = (((xp->ring).dma.paddr + (sizeof(struct xhci_trb) * (xp->ring).index)) | xp->ring.toggle); (__uint64_t)((__swap64gen_x & 0xff) << 56 | (__swap64gen_x & 0xff00ULL) << 40 | (__swap64gen_x & 0xff0000ULL) << 24 | (__swap64gen_x & 0xff000000ULL) << 8 | (__swap64gen_x & 0xff00000000ULL) >> 8 | (__swap64gen_x & 0xff0000000000ULL) >> 24 | (__swap64gen_x & 0xff000000000000ULL) >> 40 | (__swap64gen_x & 0xff00000000000000ULL) >> 56); });
 sdev->input_ctx->drop_flags = 0;
 sdev->input_ctx->add_flags = __extension__({ __uint32_t __swap32gen_x = ((0x1 << (xp->dci))); (__uint32_t)((__swap32gen_x & 0xff) << 24 | (__swap32gen_x & 0xff00) << 8 | (__swap32gen_x & 0xff0000) >> 8 | (__swap32gen_x & 0xff000000) >> 24); });
 sdev->slot_ctx->info_lo = __extension__({ __uint32_t __swap32gen_x = ((((xp->dci) & 0x1f) << 27) | (((speed) & 0xf) << 20) | ((route) & 0xfffff)); (__uint32_t)((__swap32gen_x & 0xff) << 24 | (__swap32gen_x & 0xff00) << 8 | (__swap32gen_x & 0xff0000) >> 8 | (__swap32gen_x & 0xff000000) >> 24); });
 sdev->slot_ctx->info_hi = __extension__({ __uint32_t __swap32gen_x = ((((rhport) & 0xff) << 16)); (__uint32_t)((__swap32gen_x & 0xff) << 24 | (__swap32gen_x & 0xff00) << 8 | (__swap32gen_x & 0xff0000) >> 8 | (__swap32gen_x & 0xff000000) >> 24); });
 sdev->slot_ctx->tt = 0;
 sdev->slot_ctx->state = 0;
 if (pipe->device->hub != ((void *)0)) {
  int nports = pipe->device->hub->nports;
  sdev->slot_ctx->info_lo |= __extension__({ __uint32_t __swap32gen_x = ((((1) & 0x1) << 26)); (__uint32_t)((__swap32gen_x & 0xff) << 24 | (__swap32gen_x & 0xff00) << 8 | (__swap32gen_x & 0xff0000) >> 8 | (__swap32gen_x & 0xff000000) >> 24); });
  sdev->slot_ctx->info_hi |= __extension__({ __uint32_t __swap32gen_x = ((((nports) & 0xff) << 24)); (__uint32_t)((__swap32gen_x & 0xff) << 24 | (__swap32gen_x & 0xff00) << 8 | (__swap32gen_x & 0xff0000) >> 8 | (__swap32gen_x & 0xff000000) >> 24); });
  if ((pipe->device->ddesc.bDeviceProtocol == 0x02))
   sdev->slot_ctx->info_lo |= __extension__({ __uint32_t __swap32gen_x = ((((1) & 0x1) << 25)); (__uint32_t)((__swap32gen_x & 0xff) << 24 | (__swap32gen_x & 0xff00) << 8 | (__swap32gen_x & 0xff0000) >> 8 | (__swap32gen_x & 0xff000000) >> 24); });
  sdev->slot_ctx->tt |= __extension__({ __uint32_t __swap32gen_x = ((((pipe->device->hub->ttthink) & 0x3) << 16)); (__uint32_t)((__swap32gen_x & 0xff) << 24 | (__swap32gen_x & 0xff00) << 8 | (__swap32gen_x & 0xff0000) >> 8 | (__swap32gen_x & 0xff000000) >> 24); });
 }
 if (speed < 3 && pipe->device->myhsport != ((void *)0)) {
  struct usbd_device *hshub = pipe->device->myhsport->parent;
  uint8_t slot = ((struct xhci_pipe *)hshub->default_pipe)->slot;
  if ((hshub->ddesc.bDeviceProtocol == 0x02))
   sdev->slot_ctx->info_lo |= __extension__({ __uint32_t __swap32gen_x = ((((1) & 0x1) << 25)); (__uint32_t)((__swap32gen_x & 0xff) << 24 | (__swap32gen_x & 0xff00) << 8 | (__swap32gen_x & 0xff0000) >> 8 | (__swap32gen_x & 0xff000000) >> 24); });
  sdev->slot_ctx->tt |= __extension__({ __uint32_t __swap32gen_x = (((slot) & 0xff) | (((pipe->device->myhsport->portno) & 0xff) << 8)); (__uint32_t)((__swap32gen_x & 0xff) << 24 | (__swap32gen_x & 0xff00) << 8 | (__swap32gen_x & 0xff0000) >> 8 | (__swap32gen_x & 0xff000000) >> 24); });
 }
 sdev->input_ctx->add_flags |= __extension__({ __uint32_t __swap32gen_x = ((0x1 << (0))); (__uint32_t)((__swap32gen_x & 0xff) << 24 | (__swap32gen_x & 0xff00) << 8 | (__swap32gen_x & 0xff0000) >> 8 | (__swap32gen_x & 0xff000000) >> 24); });
 bus_dmamap_sync(sdev->ictx_dma.tag, sdev->ictx_dma.map, 0,
     sc->sc_pagesize, 0x01 | 0x04);
}
int
xhci_pipe_init(struct xhci_softc *sc, struct usbd_pipe *pipe)
{
 struct xhci_pipe *xp = (struct xhci_pipe *)pipe;
 struct xhci_soft_dev *sdev = &sc->sc_sdevs[xp->slot];
 int error;
 if (xhci_ring_alloc(sc, &xp->ring, (16 * 16), 16))
  return (12);
 xp->free_trbs = xp->ring.ntrb;
 xp->halted = 0;
 sdev->pipes[xp->dci - 1] = xp;
 xhci_context_setup(sc, pipe);
 if (xp->dci == 1) {
  error = xhci_cmd_set_address(sc, xp->slot,
      sdev->ictx_dma.paddr, (1 << 9));
 } else {
  error = xhci_cmd_configure_ep(sc, xp->slot,
      sdev->ictx_dma.paddr);
 }
 if (error) {
  xhci_ring_free(sc, &xp->ring);
  return (5);
 }
 return (0);
}
void
xhci_pipe_close(struct usbd_pipe *pipe)
{
 struct xhci_softc *sc = (struct xhci_softc *)pipe->device->bus;
 struct xhci_pipe *lxp, *xp = (struct xhci_pipe *)pipe;
 struct xhci_soft_dev *sdev = &sc->sc_sdevs[xp->slot];
 int i;
 if (pipe->device->depth == 0)
  return;
 sdev->input_ctx->drop_flags = __extension__({ __uint32_t __swap32gen_x = ((0x1 << (xp->dci))); (__uint32_t)((__swap32gen_x & 0xff) << 24 | (__swap32gen_x & 0xff00) << 8 | (__swap32gen_x & 0xff0000) >> 8 | (__swap32gen_x & 0xff000000) >> 24); });
 sdev->input_ctx->add_flags = 0;
 for (i = 30; i >= 0; i--) {
  lxp = sdev->pipes[i];
  if (lxp != ((void *)0) && lxp != xp)
   break;
 }
 sdev->slot_ctx->info_lo = __extension__({ __uint32_t __swap32gen_x = ((((lxp->dci) & 0x1f) << 27)); (__uint32_t)((__swap32gen_x & 0xff) << 24 | (__swap32gen_x & 0xff00) << 8 | (__swap32gen_x & 0xff0000) >> 8 | (__swap32gen_x & 0xff000000) >> 24); });
 __builtin_memset((sdev->ep_ctx[xp->dci - 1]), (0), (sizeof(struct xhci_epctx)));
 bus_dmamap_sync(sdev->ictx_dma.tag, sdev->ictx_dma.map, 0,
     sc->sc_pagesize, 0x01 | 0x04);
 if (xhci_cmd_configure_ep(sc, xp->slot, sdev->ictx_dma.paddr))
  ;
 xhci_ring_free(sc, &xp->ring);
 sdev->pipes[xp->dci - 1] = ((void *)0);
 if (xp->dci == 1) {
  xhci_cmd_slot_control(sc, &xp->slot, 0);
  xhci_softdev_free(sc, xp->slot);
 }
}
int
xhci_setaddr(struct usbd_device *dev, int addr)
{
 struct xhci_softc *sc = (struct xhci_softc *)dev->bus;
 struct xhci_pipe *xp = (struct xhci_pipe *)dev->default_pipe;
 struct xhci_soft_dev *sdev = &sc->sc_sdevs[xp->slot];
 int error;
 if (dev->depth == 0)
  return (0);
 ((xp->dci == 1) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../dev/usb/xhci.c", 1312, "xp->dci == 1"));
 xhci_context_setup(sc, dev->default_pipe);
 error = xhci_cmd_set_address(sc, xp->slot, sdev->ictx_dma.paddr, 0);
 return (error);
}
struct usbd_xfer *
xhci_allocx(struct usbd_bus *bus)
{
 return (pool_get(xhcixfer, 0x0002 | 0x0008));
}
void
xhci_freex(struct usbd_bus *bus, struct usbd_xfer *xfer)
{
 pool_put(xhcixfer, xfer);
}
int
xhci_scratchpad_alloc(struct xhci_softc *sc, int npage)
{
 uint64_t *pte;
 int error, i;
 error = usbd_dma_contig_alloc(&sc->sc_bus, &sc->sc_spad.table_dma,
     (void **)&pte, npage * sizeof(uint64_t), 64,
     sc->sc_pagesize);
 if (error)
  return (12);
 error = usbd_dma_contig_alloc(&sc->sc_bus, &sc->sc_spad.pages_dma,
     ((void *)0), npage * sc->sc_pagesize, sc->sc_pagesize, 0);
 if (error) {
  usbd_dma_contig_free(&sc->sc_bus, &sc->sc_spad.table_dma);
  return (12);
 }
 for (i = 0; i < npage; i++) {
  pte[i] = __extension__({ __uint64_t __swap64gen_x = (sc->sc_spad.pages_dma.paddr + (i * sc->sc_pagesize)); (__uint64_t)((__swap64gen_x & 0xff) << 56 | (__swap64gen_x & 0xff00ULL) << 40 | (__swap64gen_x & 0xff0000ULL) << 24 | (__swap64gen_x & 0xff000000ULL) << 8 | (__swap64gen_x & 0xff00000000ULL) >> 8 | (__swap64gen_x & 0xff0000000000ULL) >> 24 | (__swap64gen_x & 0xff000000000000ULL) >> 40 | (__swap64gen_x & 0xff00000000000000ULL) >> 56); });
 }
 bus_dmamap_sync(sc->sc_spad.table_dma.tag, sc->sc_spad.table_dma.map, 0,
     npage * sizeof(uint64_t), 0x01 |
     0x04);
 sc->sc_dcbaa.segs[0] = __extension__({ __uint64_t __swap64gen_x = (sc->sc_spad.table_dma.paddr); (__uint64_t)((__swap64gen_x & 0xff) << 56 | (__swap64gen_x & 0xff00ULL) << 40 | (__swap64gen_x & 0xff0000ULL) << 24 | (__swap64gen_x & 0xff000000ULL) << 8 | (__swap64gen_x & 0xff00000000ULL) >> 8 | (__swap64gen_x & 0xff0000000000ULL) >> 24 | (__swap64gen_x & 0xff000000000000ULL) >> 40 | (__swap64gen_x & 0xff00000000000000ULL) >> 56); });
 bus_dmamap_sync(sc->sc_dcbaa.dma.tag, sc->sc_dcbaa.dma.map, 0,
     sizeof(uint64_t), 0x01 | 0x04);
 sc->sc_spad.npage = npage;
 return (0);
}
void
xhci_scratchpad_free(struct xhci_softc *sc)
{
 sc->sc_dcbaa.segs[0] = 0;
 bus_dmamap_sync(sc->sc_dcbaa.dma.tag, sc->sc_dcbaa.dma.map, 0,
     sizeof(uint64_t), 0x01 | 0x04);
 usbd_dma_contig_free(&sc->sc_bus, &sc->sc_spad.pages_dma);
 usbd_dma_contig_free(&sc->sc_bus, &sc->sc_spad.table_dma);
}
int
xhci_ring_alloc(struct xhci_softc *sc, struct xhci_ring *ring, size_t ntrb,
    size_t alignment)
{
 size_t size;
 int error;
 size = ntrb * sizeof(struct xhci_trb);
 error = usbd_dma_contig_alloc(&sc->sc_bus, &ring->dma,
     (void **)&ring->trbs, size, alignment, (64 * 1024));
 if (error)
  return (error);
 ring->ntrb = ntrb;
 xhci_ring_reset(sc, ring);
 return (0);
}
void
xhci_ring_free(struct xhci_softc *sc, struct xhci_ring *ring)
{
 usbd_dma_contig_free(&sc->sc_bus, &ring->dma);
}
void
xhci_ring_reset(struct xhci_softc *sc, struct xhci_ring *ring)
{
 size_t size;
 size = ring->ntrb * sizeof(struct xhci_trb);
 __builtin_memset((ring->trbs), (0), (size));
 ring->index = 0;
 ring->toggle = (1 << 0);
 if (ring != &sc->sc_evt_ring) {
  struct xhci_trb *trb = &ring->trbs[ring->ntrb - 1];
  trb->trb_paddr = __extension__({ __uint64_t __swap64gen_x = (ring->dma.paddr); (__uint64_t)((__swap64gen_x & 0xff) << 56 | (__swap64gen_x & 0xff00ULL) << 40 | (__swap64gen_x & 0xff0000ULL) << 24 | (__swap64gen_x & 0xff000000ULL) << 8 | (__swap64gen_x & 0xff00000000ULL) >> 8 | (__swap64gen_x & 0xff0000000000ULL) >> 24 | (__swap64gen_x & 0xff000000000000ULL) >> 40 | (__swap64gen_x & 0xff00000000000000ULL) >> 56); });
  trb->trb_flags = __extension__({ __uint32_t __swap32gen_x = ((6 << 10) | (1 << 1)); (__uint32_t)((__swap32gen_x & 0xff) << 24 | (__swap32gen_x & 0xff00) << 8 | (__swap32gen_x & 0xff0000) >> 8 | (__swap32gen_x & 0xff000000) >> 24); });
  bus_dmamap_sync(ring->dma.tag, ring->dma.map, 0, size,
      0x04);
 } else
  bus_dmamap_sync(ring->dma.tag, ring->dma.map, 0, size,
      0x01 | 0x04);
}
struct xhci_trb*
xhci_ring_consume(struct xhci_softc *sc, struct xhci_ring *ring)
{
 struct xhci_trb *trb = &ring->trbs[ring->index];
 ((ring->index < ring->ntrb) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../dev/usb/xhci.c", 1462, "ring->index < ring->ntrb"));
 bus_dmamap_sync(ring->dma.tag, ring->dma.map, ((char *)(trb) - (char *)((ring)->trbs)),
     sizeof(struct xhci_trb), 0x02);
 if (ring->toggle != (__extension__({ __uint32_t __swap32gen_x = (trb->trb_flags); (__uint32_t)((__swap32gen_x & 0xff) << 24 | (__swap32gen_x & 0xff00) << 8 | (__swap32gen_x & 0xff0000) >> 8 | (__swap32gen_x & 0xff000000) >> 24); }) & (1 << 0)))
  return (((void *)0));
 ring->index++;
 if (ring->index == ring->ntrb) {
  ring->index = 0;
  ring->toggle ^= 1;
 }
 return (trb);
}
struct xhci_trb*
xhci_ring_produce(struct xhci_softc *sc, struct xhci_ring *ring)
{
 struct xhci_trb *trb = &ring->trbs[ring->index];
 ((ring->index < ring->ntrb) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../dev/usb/xhci.c", 1486, "ring->index < ring->ntrb"));
 bus_dmamap_sync(ring->dma.tag, ring->dma.map, ((char *)(trb) - (char *)((ring)->trbs)),
     sizeof(struct xhci_trb), 0x02 |
     0x08);
 ring->index++;
 if (ring->index == (ring->ntrb - 1)) {
  struct xhci_trb *lnk = &ring->trbs[ring->index];
  bus_dmamap_sync(ring->dma.tag, ring->dma.map, ((char *)(lnk) - (char *)((ring)->trbs)),
      sizeof(struct xhci_trb), 0x02 |
      0x08);
  lnk->trb_flags ^= __extension__({ __uint32_t __swap32gen_x = ((1 << 0)); (__uint32_t)((__swap32gen_x & 0xff) << 24 | (__swap32gen_x & 0xff00) << 8 | (__swap32gen_x & 0xff0000) >> 8 | (__swap32gen_x & 0xff000000) >> 24); });
  bus_dmamap_sync(ring->dma.tag, ring->dma.map, ((char *)(lnk) - (char *)((ring)->trbs)),
      sizeof(struct xhci_trb), 0x04);
  ring->index = 0;
  ring->toggle ^= 1;
 }
 return (trb);
}
struct xhci_trb *
xhci_xfer_get_trb(struct xhci_softc *sc, struct usbd_xfer *xfer,
    uint8_t *togglep, int last)
{
 struct xhci_pipe *xp = (struct xhci_pipe *)xfer->pipe;
 struct xhci_xfer *xx = (struct xhci_xfer *)xfer;
 ((xp->free_trbs >= 1) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../dev/usb/xhci.c", 1521, "xp->free_trbs >= 1"));
 xp->pending_xfers[xp->ring.index] = xfer;
 xp->free_trbs--;
 xx->index = (last) ? xp->ring.index : -2;
 xx->ntrb += 1;
 *togglep = xp->ring.toggle;
 return (xhci_ring_produce(sc, &xp->ring));
}
int
xhci_command_submit(struct xhci_softc *sc, struct xhci_trb *trb0, int timeout)
{
 struct xhci_trb *trb;
 int s, error = 0;
 ((timeout == 0 || sc->sc_cmd_trb == ((void *)0)) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../dev/usb/xhci.c", 1540, "timeout == 0 || sc->sc_cmd_trb == NULL"));
 trb0->trb_flags |= __extension__({ __uint32_t __swap32gen_x = (sc->sc_cmd_ring.toggle); (__uint32_t)((__swap32gen_x & 0xff) << 24 | (__swap32gen_x & 0xff00) << 8 | (__swap32gen_x & 0xff0000) >> 8 | (__swap32gen_x & 0xff000000) >> 24); });
 trb = xhci_ring_produce(sc, &sc->sc_cmd_ring);
 if (trb == ((void *)0))
  return (35);
 __builtin_memcpy((trb), (trb0), (sizeof(struct xhci_trb)));
 bus_dmamap_sync(sc->sc_cmd_ring.dma.tag, sc->sc_cmd_ring.dma.map,
     ((char *)(trb) - (char *)((&sc->sc_cmd_ring)->trbs)), sizeof(struct xhci_trb),
     0x04);
 if (timeout == 0) {
  bus_space_write_4((sc)->iot, (sc)->ioh, (sc)->sc_door_off + ((0x0000 + (4 * (0)))), (0));
  return (0);
 }
 assertwaitok();
 s = splraise(2);
 sc->sc_cmd_trb = trb;
 bus_space_write_4((sc)->iot, (sc)->ioh, (sc)->sc_door_off + ((0x0000 + (4 * (0)))), (0));
 error = tsleep(&sc->sc_cmd_trb, 22, "xhcicmd",
     (timeout*hz+999)/ 1000 + 1);
 if (error) {
  ((sc->sc_cmd_trb == trb) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../dev/usb/xhci.c", 1571, "sc->sc_cmd_trb == trb"));
  sc->sc_cmd_trb = ((void *)0);
  _splx(s);
  return (error);
 }
 _splx(s);
 __builtin_memcpy((trb0), (&sc->sc_result_trb), (sizeof(struct xhci_trb)));
 if ((((__extension__({ __uint32_t __swap32gen_x = (trb0->trb_status); (__uint32_t)((__swap32gen_x & 0xff) << 24 | (__swap32gen_x & 0xff00) << 8 | (__swap32gen_x & 0xff0000) >> 8 | (__swap32gen_x & 0xff000000) >> 24); })) >> 24) & 0xff) == 1)
  return (0);
 return (5);
}
int
xhci_command_abort(struct xhci_softc *sc)
{
 uint32_t reg64;
 int i;
 reg64 = bus_space_read_4((sc)->iot, (sc)->ioh, (sc)->sc_oper_off + (0x18));
 if ((reg64 & 0x00000008) == 0)
  return (0);
 bus_space_write_4((sc)->iot, (sc)->ioh, (sc)->sc_oper_off + (0x18), (reg64 | 0x00000004));
 bus_space_write_4((sc)->iot, (sc)->ioh, (sc)->sc_oper_off + (0x1C), (0));
 for (i = 0; i < 250; i++) {
  usb_delay_ms(&sc->sc_bus, 1);
  reg64 = bus_space_read_4((sc)->iot, (sc)->ioh, (sc)->sc_oper_off + (0x18)) & 0x00000008;
  if (!reg64)
   break;
 }
 if (reg64) {
  printf("%s: command ring abort timeout\n", ((sc)->sc_bus.bdev.dv_xname));
  return (1);
 }
 return (0);
}
int
xhci_cmd_configure_ep(struct xhci_softc *sc, uint8_t slot, uint64_t addr)
{
 struct xhci_trb trb;
 ;
 trb.trb_paddr = __extension__({ __uint64_t __swap64gen_x = (addr); (__uint64_t)((__swap64gen_x & 0xff) << 56 | (__swap64gen_x & 0xff00ULL) << 40 | (__swap64gen_x & 0xff0000ULL) << 24 | (__swap64gen_x & 0xff000000ULL) << 8 | (__swap64gen_x & 0xff00000000ULL) >> 8 | (__swap64gen_x & 0xff0000000000ULL) >> 24 | (__swap64gen_x & 0xff000000000000ULL) >> 40 | (__swap64gen_x & 0xff00000000000000ULL) >> 56); });
 trb.trb_status = 0;
 trb.trb_flags = __extension__({ __uint32_t __swap32gen_x = ((((slot) & 0xff) << 24) | (12 << 10)); (__uint32_t)((__swap32gen_x & 0xff) << 24 | (__swap32gen_x & 0xff00) << 8 | (__swap32gen_x & 0xff0000) >> 8 | (__swap32gen_x & 0xff000000) >> 24); });
 return (xhci_command_submit(sc, &trb, 500));
}
int
xhci_cmd_stop_ep(struct xhci_softc *sc, uint8_t slot, uint8_t dci)
{
 struct xhci_trb trb;
 ;
 trb.trb_paddr = 0;
 trb.trb_status = 0;
 trb.trb_flags = __extension__({ __uint32_t __swap32gen_x = ((((slot) & 0xff) << 24) | (((dci) & 0x1f) << 16) | (15 << 10)); (__uint32_t)((__swap32gen_x & 0xff) << 24 | (__swap32gen_x & 0xff00) << 8 | (__swap32gen_x & 0xff0000) >> 8 | (__swap32gen_x & 0xff000000) >> 24); });
 return (xhci_command_submit(sc, &trb, 500));
}
void
xhci_cmd_reset_ep_async(struct xhci_softc *sc, uint8_t slot, uint8_t dci)
{
 struct xhci_trb trb;
 ;
 trb.trb_paddr = 0;
 trb.trb_status = 0;
 trb.trb_flags = __extension__({ __uint32_t __swap32gen_x = ((((slot) & 0xff) << 24) | (((dci) & 0x1f) << 16) | (14 << 10)); (__uint32_t)((__swap32gen_x & 0xff) << 24 | (__swap32gen_x & 0xff00) << 8 | (__swap32gen_x & 0xff0000) >> 8 | (__swap32gen_x & 0xff000000) >> 24); });
 xhci_command_submit(sc, &trb, 0);
}
void
xhci_cmd_set_tr_deq_async(struct xhci_softc *sc, uint8_t slot, uint8_t dci,
   uint64_t addr)
{
 struct xhci_trb trb;
 ;
 trb.trb_paddr = __extension__({ __uint64_t __swap64gen_x = (addr); (__uint64_t)((__swap64gen_x & 0xff) << 56 | (__swap64gen_x & 0xff00ULL) << 40 | (__swap64gen_x & 0xff0000ULL) << 24 | (__swap64gen_x & 0xff000000ULL) << 8 | (__swap64gen_x & 0xff00000000ULL) >> 8 | (__swap64gen_x & 0xff0000000000ULL) >> 24 | (__swap64gen_x & 0xff000000000000ULL) >> 40 | (__swap64gen_x & 0xff00000000000000ULL) >> 56); });
 trb.trb_status = 0;
 trb.trb_flags = __extension__({ __uint32_t __swap32gen_x = ((((slot) & 0xff) << 24) | (((dci) & 0x1f) << 16) | (16 << 10)); (__uint32_t)((__swap32gen_x & 0xff) << 24 | (__swap32gen_x & 0xff00) << 8 | (__swap32gen_x & 0xff0000) >> 8 | (__swap32gen_x & 0xff000000) >> 24); });
 xhci_command_submit(sc, &trb, 0);
}
int
xhci_cmd_slot_control(struct xhci_softc *sc, uint8_t *slotp, int enable)
{
 struct xhci_trb trb;
 ;
 trb.trb_paddr = 0;
 trb.trb_status = 0;
 if (enable)
  trb.trb_flags = __extension__({ __uint32_t __swap32gen_x = ((9 << 10)); (__uint32_t)((__swap32gen_x & 0xff) << 24 | (__swap32gen_x & 0xff00) << 8 | (__swap32gen_x & 0xff0000) >> 8 | (__swap32gen_x & 0xff000000) >> 24); });
 else
  trb.trb_flags = __extension__({ __uint32_t __swap32gen_x = ((((*slotp) & 0xff) << 24) | (10 << 10)); (__uint32_t)((__swap32gen_x & 0xff) << 24 | (__swap32gen_x & 0xff00) << 8 | (__swap32gen_x & 0xff0000) >> 8 | (__swap32gen_x & 0xff000000) >> 24); });
 if (xhci_command_submit(sc, &trb, 500))
  return (5);
 if (enable)
  *slotp = (((__extension__({ __uint32_t __swap32gen_x = (trb.trb_flags); (__uint32_t)((__swap32gen_x & 0xff) << 24 | (__swap32gen_x & 0xff00) << 8 | (__swap32gen_x & 0xff0000) >> 8 | (__swap32gen_x & 0xff000000) >> 24); })) >> 24) & 0xff);
 return (0);
}
int
xhci_cmd_set_address(struct xhci_softc *sc, uint8_t slot, uint64_t addr,
    uint32_t bsr)
{
 struct xhci_trb trb;
 ;
 trb.trb_paddr = __extension__({ __uint64_t __swap64gen_x = (addr); (__uint64_t)((__swap64gen_x & 0xff) << 56 | (__swap64gen_x & 0xff00ULL) << 40 | (__swap64gen_x & 0xff0000ULL) << 24 | (__swap64gen_x & 0xff000000ULL) << 8 | (__swap64gen_x & 0xff00000000ULL) >> 8 | (__swap64gen_x & 0xff0000000000ULL) >> 24 | (__swap64gen_x & 0xff000000000000ULL) >> 40 | (__swap64gen_x & 0xff00000000000000ULL) >> 56); });
 trb.trb_status = 0;
 trb.trb_flags = __extension__({ __uint32_t __swap32gen_x = ((((slot) & 0xff) << 24) | (11 << 10) | bsr); (__uint32_t)((__swap32gen_x & 0xff) << 24 | (__swap32gen_x & 0xff00) << 8 | (__swap32gen_x & 0xff0000) >> 8 | (__swap32gen_x & 0xff000000) >> 24); });
 return (xhci_command_submit(sc, &trb, 500));
}
int
xhci_cmd_evaluate_ctx(struct xhci_softc *sc, uint8_t slot, uint64_t addr)
{
 struct xhci_trb trb;
 ;
 trb.trb_paddr = __extension__({ __uint64_t __swap64gen_x = (addr); (__uint64_t)((__swap64gen_x & 0xff) << 56 | (__swap64gen_x & 0xff00ULL) << 40 | (__swap64gen_x & 0xff0000ULL) << 24 | (__swap64gen_x & 0xff000000ULL) << 8 | (__swap64gen_x & 0xff00000000ULL) >> 8 | (__swap64gen_x & 0xff0000000000ULL) >> 24 | (__swap64gen_x & 0xff000000000000ULL) >> 40 | (__swap64gen_x & 0xff00000000000000ULL) >> 56); });
 trb.trb_status = 0;
 trb.trb_flags = __extension__({ __uint32_t __swap32gen_x = ((((slot) & 0xff) << 24) | (13 << 10)); (__uint32_t)((__swap32gen_x & 0xff) << 24 | (__swap32gen_x & 0xff00) << 8 | (__swap32gen_x & 0xff0000) >> 8 | (__swap32gen_x & 0xff000000) >> 24); });
 return (xhci_command_submit(sc, &trb, 500));
}
int
xhci_softdev_alloc(struct xhci_softc *sc, uint8_t slot)
{
 struct xhci_soft_dev *sdev = &sc->sc_sdevs[slot];
 int i, error;
 uint8_t *kva;
 error = usbd_dma_contig_alloc(&sc->sc_bus, &sdev->ictx_dma,
     (void **)&kva, sc->sc_pagesize, 64, sc->sc_pagesize);
 if (error)
  return (12);
 sdev->input_ctx = (struct xhci_inctx *)kva;
 sdev->slot_ctx = (struct xhci_sctx *)(kva + sc->sc_ctxsize);
 for (i = 0; i < 31; i++)
  sdev->ep_ctx[i] =
      (struct xhci_epctx *)(kva + (i + 2) * sc->sc_ctxsize);
 ;
 error = usbd_dma_contig_alloc(&sc->sc_bus, &sdev->octx_dma, ((void *)0),
     sc->sc_pagesize, 32, sc->sc_pagesize);
 if (error) {
  usbd_dma_contig_free(&sc->sc_bus, &sdev->ictx_dma);
  return (12);
 }
 __builtin_memset((&sdev->pipes), (0), (sizeof(sdev->pipes)));
 ;
 sc->sc_dcbaa.segs[slot] = __extension__({ __uint64_t __swap64gen_x = (sdev->octx_dma.paddr); (__uint64_t)((__swap64gen_x & 0xff) << 56 | (__swap64gen_x & 0xff00ULL) << 40 | (__swap64gen_x & 0xff0000ULL) << 24 | (__swap64gen_x & 0xff000000ULL) << 8 | (__swap64gen_x & 0xff00000000ULL) >> 8 | (__swap64gen_x & 0xff0000000000ULL) >> 24 | (__swap64gen_x & 0xff000000000000ULL) >> 40 | (__swap64gen_x & 0xff00000000000000ULL) >> 56); });
 bus_dmamap_sync(sc->sc_dcbaa.dma.tag, sc->sc_dcbaa.dma.map,
     slot * sizeof(uint64_t), sizeof(uint64_t), 0x01 |
     0x04);
 return (0);
}
void
xhci_softdev_free(struct xhci_softc *sc, uint8_t slot)
{
 struct xhci_soft_dev *sdev = &sc->sc_sdevs[slot];
 sc->sc_dcbaa.segs[slot] = 0;
 bus_dmamap_sync(sc->sc_dcbaa.dma.tag, sc->sc_dcbaa.dma.map,
     slot * sizeof(uint64_t), sizeof(uint64_t), 0x01 |
     0x04);
 usbd_dma_contig_free(&sc->sc_bus, &sdev->octx_dma);
 usbd_dma_contig_free(&sc->sc_bus, &sdev->ictx_dma);
 __builtin_memset((sdev), (0), (sizeof(struct xhci_soft_dev)));
}
usb_device_descriptor_t xhci_devd = {
 18,
 0x01,
 {0x00, 0x03},
 0x09,
 0x00,
 0x01,
 9,
 {0},{0},{0x00,0x01},
 1,2,0,
 1
};
const usb_config_descriptor_t xhci_confd = {
 9,
 0x02,
 {9 +
  9 +
  7},
 1,
 1,
 0,
 0x40,
 0
};
const usb_interface_descriptor_t xhci_ifcd = {
 9,
 0x04,
 0,
 0,
 1,
 0x09,
 0,
 0,
 0
};
const usb_endpoint_descriptor_t xhci_endpd = {
 7,
 0x05,
 0x80 | 1,
 0x03,
 {2, 0},
 255
};
const usb_endpoint_ss_comp_descriptor_t xhci_endpcd = {
 6,
 0x30,
 0,
 0,
 {0, 0}
};
const usb_hub_descriptor_t xhci_hubd = {
 8,
 0x2A,
 0,
 {0,0},
 0,
 0,
 {0},
};
void
xhci_abort_xfer(struct usbd_xfer *xfer, usbd_status status)
{
 struct xhci_softc *sc = (struct xhci_softc *)xfer->device->bus;
 struct xhci_pipe *xp = (struct xhci_pipe *)xfer->pipe;
 int error;
 do { if (splassert_ctl > 0) { splassert_check(2, __func__); } } while (0);
 ;
 if (sc->sc_bus.dying || xfer->status == USBD_NOT_STARTED) {
  xfer->status = status;
  timeout_del(&xfer->timeout_handle);
  usb_rem_task(xfer->device, &xfer->abort_task);
  usb_transfer_complete(xfer);
  return;
 }
 if (xfer->status != USBD_IN_PROGRESS) {
  ;
  return;
 }
 timeout_del(&xfer->timeout_handle);
 usb_rem_task(xfer->device, &xfer->abort_task);
 xp->halted = status;
 xp->aborted_xfer = xfer;
 if (xhci_cmd_stop_ep(sc, xp->slot, xp->dci))
  ;
 if (xp->aborted_xfer == ((void *)0)) {
  ;
  xp->halted = 0;
  return;
 }
 xhci_cmd_set_tr_deq_async(sc, xp->slot, xp->dci,
     ((xp->ring).dma.paddr + (sizeof(struct xhci_trb) * (xp->ring).index)) | xp->ring.toggle);
 error = tsleep(xp, 22, "xhciab", (500*hz+999)/1000 + 1);
 if (error)
  printf("%s: timeout aborting transfer\n", ((sc)->sc_bus.bdev.dv_xname));
}
void
xhci_timeout(void *addr)
{
 struct usbd_xfer *xfer = addr;
 struct xhci_softc *sc = (struct xhci_softc *)xfer->device->bus;
 if (sc->sc_bus.dying) {
  xhci_timeout_task(addr);
  return;
 }
 ((&xfer->abort_task)->fun = (xhci_timeout_task), (&xfer->abort_task)->arg = (addr), (&xfer->abort_task)->type = (2), (&xfer->abort_task)->state = 0x0);
 usb_add_task(xfer->device, &xfer->abort_task);
}
void
xhci_timeout_task(void *addr)
{
 struct usbd_xfer *xfer = addr;
 int s;
 s = splraise(2);
 xhci_abort_xfer(xfer, USBD_TIMEOUT);
 _splx(s);
}
usbd_status
xhci_root_ctrl_transfer(struct usbd_xfer *xfer)
{
 usbd_status err;
 err = usb_insert_transfer(xfer);
 if (err)
  return (err);
 return (xhci_root_ctrl_start(((&xfer->pipe->queue)->sqh_first)));
}
usbd_status
xhci_root_ctrl_start(struct usbd_xfer *xfer)
{
 struct xhci_softc *sc = (struct xhci_softc *)xfer->device->bus;
 usb_port_status_t ps;
 usb_device_request_t *req;
 void *buf = ((void *)0);
 usb_hub_descriptor_t hubd;
 usbd_status err;
 int s, len, value, index;
 int l, totlen = 0;
 int port, i;
 uint32_t v;
 ((xfer->rqflags & 0x01) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../dev/usb/xhci.c", 2005, "xfer->rqflags & URQ_REQUEST"));
 if (sc->sc_bus.dying)
  return (USBD_IOERROR);
 req = &xfer->request;
 ;
 len = ((req->wLength)[0] | ((req->wLength)[1] << 8));
 value = ((req->wValue)[0] | ((req->wValue)[1] << 8));
 index = ((req->wIndex)[0] | ((req->wIndex)[1] << 8));
 if (len != 0)
  buf = ((void *)((char *)((&xfer->dmabuf)->block->kaddr + (&xfer->dmabuf)->offs) + (0)));
 switch(((req->bRequest) | ((req->bmRequestType) << 8))) {
 case ((0x01) | (((0x00 | 0x00 | 0x00)) << 8)):
 case ((0x01) | (((0x00 | 0x00 | 0x01)) << 8)):
 case ((0x01) | (((0x00 | 0x00 | 0x02)) << 8)):
  break;
 case ((0x08) | (((0x80 | 0x00 | 0x00)) << 8)):
  if (len > 0) {
   *(uint8_t *)buf = sc->sc_conf;
   totlen = 1;
  }
  break;
 case ((0x06) | (((0x80 | 0x00 | 0x00)) << 8)):
  ;
  switch(value >> 8) {
  case 0x01:
   if ((value & 0xff) != 0) {
    err = USBD_IOERROR;
    goto ret;
   }
   totlen = l = min(len, 18);
   ((xhci_devd.idVendor)[0] = (u_int8_t)(sc->sc_id_vendor), (xhci_devd.idVendor)[1] = (u_int8_t)((sc->sc_id_vendor) >> 8));
   __builtin_memcpy((buf), (&xhci_devd), (l));
   break;
  case 0x07:
  case 0x02:
   if ((value & 0xff) != 0) {
    err = USBD_IOERROR;
    goto ret;
   }
   totlen = l = min(len, 9);
   __builtin_memcpy((buf), (&xhci_confd), (l));
   ((usb_config_descriptor_t *)buf)->bDescriptorType =
       value >> 8;
   buf = (char *)buf + l;
   len -= l;
   l = min(len, 9);
   totlen += l;
   __builtin_memcpy((buf), (&xhci_ifcd), (l));
   buf = (char *)buf + l;
   len -= l;
   l = min(len, 7);
   totlen += l;
   __builtin_memcpy((buf), (&xhci_endpd), (l));
   break;
  case 0x03:
   if (len == 0)
    break;
   *(u_int8_t *)buf = 0;
   totlen = 1;
   switch (value & 0xff) {
   case 0:
    totlen = usbd_str(buf, len, "\001");
    break;
   case 1:
    totlen = usbd_str(buf, len, sc->sc_vendor);
    break;
   case 2:
    totlen = usbd_str(buf, len, "xHCI root hub");
    break;
   }
   break;
  default:
   err = USBD_IOERROR;
   goto ret;
  }
  break;
 case ((0x0a) | (((0x80 | 0x00 | 0x01)) << 8)):
  if (len > 0) {
   *(uint8_t *)buf = 0;
   totlen = 1;
  }
  break;
 case ((0x00) | (((0x80 | 0x00 | 0x00)) << 8)):
  if (len > 1) {
   ((((usb_status_t *)buf)->wStatus)[0] = (u_int8_t)(0x0001), (((usb_status_t *)buf)->wStatus)[1] = (u_int8_t)((0x0001) >> 8));
   totlen = 2;
  }
  break;
 case ((0x00) | (((0x80 | 0x00 | 0x01)) << 8)):
 case ((0x00) | (((0x80 | 0x00 | 0x02)) << 8)):
  if (len > 1) {
   ((((usb_status_t *)buf)->wStatus)[0] = (u_int8_t)(0), (((usb_status_t *)buf)->wStatus)[1] = (u_int8_t)((0) >> 8));
   totlen = 2;
  }
  break;
 case ((0x05) | (((0x00 | 0x00 | 0x00)) << 8)):
  if (value >= 128) {
   err = USBD_IOERROR;
   goto ret;
  }
  break;
 case ((0x09) | (((0x00 | 0x00 | 0x00)) << 8)):
  if (value != 0 && value != 1) {
   err = USBD_IOERROR;
   goto ret;
  }
  sc->sc_conf = value;
  break;
 case ((0x07) | (((0x00 | 0x00 | 0x00)) << 8)):
  break;
 case ((0x03) | (((0x00 | 0x00 | 0x00)) << 8)):
 case ((0x03) | (((0x00 | 0x00 | 0x01)) << 8)):
 case ((0x03) | (((0x00 | 0x00 | 0x02)) << 8)):
  err = USBD_IOERROR;
  goto ret;
 case ((0x0b) | (((0x00 | 0x00 | 0x01)) << 8)):
  break;
 case ((0x0c) | (((0x00 | 0x00 | 0x02)) << 8)):
  break;
 case ((0x01) | (((0x00 | 0x20 | 0x00)) << 8)):
  break;
 case ((0x01) | (((0x00 | 0x20 | 0x03)) << 8)):
  ;
  if (index < 1 || index > sc->sc_noport) {
   err = USBD_IOERROR;
   goto ret;
  }
  port = (0x3f0 + (0x10 * (index)));
  v = bus_space_read_4((sc)->iot, (sc)->ioh, (sc)->sc_oper_off + (port)) & ~0x80ff01ffu;
  switch (value) {
  case 1:
   bus_space_write_4((sc)->iot, (sc)->ioh, (sc)->sc_oper_off + (port), (v | 0x00000002));
   break;
  case 2:
   break;
  case 8:
   bus_space_write_4((sc)->iot, (sc)->ioh, (sc)->sc_oper_off + (port), (v & ~0x00000200));
   break;
  case 22:
   bus_space_write_4((sc)->iot, (sc)->ioh, (sc)->sc_oper_off + (port), (v & ~(((3) & 0x3) << 14)));
   break;
  case 16:
   bus_space_write_4((sc)->iot, (sc)->ioh, (sc)->sc_oper_off + (port), (v | 0x00020000));
   break;
  case 17:
   bus_space_write_4((sc)->iot, (sc)->ioh, (sc)->sc_oper_off + (port), (v | 0x00040000));
   break;
  case 18:
  case 25:
   bus_space_write_4((sc)->iot, (sc)->ioh, (sc)->sc_oper_off + (port), (v | 0x00400000));
   break;
  case 19:
   bus_space_write_4((sc)->iot, (sc)->ioh, (sc)->sc_oper_off + (port), (v | 0x00100000));
   break;
  case 20:
   bus_space_write_4((sc)->iot, (sc)->ioh, (sc)->sc_oper_off + (port), (v | 0x00200000));
   break;
  case 29:
   bus_space_write_4((sc)->iot, (sc)->ioh, (sc)->sc_oper_off + (port), (v | 0x00080000));
   break;
  default:
   err = USBD_IOERROR;
   goto ret;
  }
  break;
 case ((0x06) | (((0x80 | 0x20 | 0x00)) << 8)):
  if (len == 0)
   break;
  if ((value & 0xff) != 0) {
   err = USBD_IOERROR;
   goto ret;
  }
  v = bus_space_read_4((sc)->iot, (sc)->ioh, (0x10));
  hubd = xhci_hubd;
  hubd.bNbrPorts = sc->sc_noport;
  ((hubd.wHubCharacteristics)[0] = (u_int8_t)(((((v) >> 3) & 0x1) ? 0x0001 : 0x0000) | ((((v) >> 4) & 0x1) ? 0x0080 : 0)), (hubd.wHubCharacteristics)[1] = (u_int8_t)((((((v) >> 3) & 0x1) ? 0x0001 : 0x0000) | ((((v) >> 4) & 0x1) ? 0x0080 : 0)) >> 8));
  hubd.bPwrOn2PwrGood = 10;
  for (i = 1; i <= sc->sc_noport; i++) {
   v = bus_space_read_4((sc)->iot, (sc)->ioh, (sc)->sc_oper_off + ((0x3f0 + (0x10 * (i)))));
   if (v & 0x40000000)
    hubd.DeviceRemovable[i / 8] |= 1U << (i % 8);
  }
  hubd.bDescLength = 8 + i;
  l = min(len, hubd.bDescLength);
  totlen = l;
  __builtin_memcpy((buf), (&hubd), (l));
  break;
 case ((0x00) | (((0x80 | 0x20 | 0x00)) << 8)):
  if (len != 16) {
   err = USBD_IOERROR;
   goto ret;
  }
  __builtin_memset((buf), (0), (len));
  totlen = len;
  break;
 case ((0x00) | (((0x80 | 0x20 | 0x03)) << 8)):
  ;
  if (index < 1 || index > sc->sc_noport) {
   err = USBD_IOERROR;
   goto ret;
  }
  if (len != 4) {
   err = USBD_IOERROR;
   goto ret;
  }
  v = bus_space_read_4((sc)->iot, (sc)->ioh, (sc)->sc_oper_off + ((0x3f0 + (0x10 * (index)))));
  ;
  i = ((((((v) >> 5) & 0xf)) & 0xf) << 5);
  switch ((((v) >> 10) & 0xf)) {
  case 1:
   i |= 0x0000;
   break;
  case 2:
   i |= 0x0200;
   break;
  case 3:
   i |= 0x0400;
   break;
  case 4:
  default:
   break;
  }
  if (v & 0x00000001) i |= 0x0001;
  if (v & 0x00000002) i |= 0x0002;
  if (v & 0x00000008) i |= 0x0008;
  if (v & 0x00000010) i |= 0x0010;
  if (v & 0x00000200) {
   if ((((v) >> 10) & 0xf) >= 1 &&
       (((v) >> 10) & 0xf) <= 3)
    i |= 0x0100;
   else
    i |= 0x0200;
  }
  ((ps.wPortStatus)[0] = (u_int8_t)(i), (ps.wPortStatus)[1] = (u_int8_t)((i) >> 8));
  i = 0;
  if (v & 0x00020000) i |= 0x0001;
  if (v & 0x00040000) i |= 0x0002;
  if (v & 0x00100000) i |= 0x0008;
  if (v & 0x00200000) i |= 0x0010;
  if (v & 0x00080000) i |= 0x0020;
  if (v & 0x00400000) i |= 0x0040;
  if (v & 0x00800000) i |= 0x0080;
  ((ps.wPortChange)[0] = (u_int8_t)(i), (ps.wPortChange)[1] = (u_int8_t)((i) >> 8));
  l = min(len, sizeof ps);
  __builtin_memcpy((buf), (&ps), (l));
  totlen = l;
  break;
 case ((0x07) | (((0x00 | 0x20 | 0x00)) << 8)):
  err = USBD_IOERROR;
  goto ret;
 case ((0x03) | (((0x00 | 0x20 | 0x00)) << 8)):
  break;
 case ((0x03) | (((0x00 | 0x20 | 0x03)) << 8)):
  i = index >> 8;
  index &= 0x00ff;
  if (index < 1 || index > sc->sc_noport) {
   err = USBD_IOERROR;
   goto ret;
  }
  port = (0x3f0 + (0x10 * (index)));
  v = bus_space_read_4((sc)->iot, (sc)->ioh, (sc)->sc_oper_off + (port)) & ~0x80ff01ffu;
  switch (value) {
  case 1:
   bus_space_write_4((sc)->iot, (sc)->ioh, (sc)->sc_oper_off + (port), (v | 0x00000002));
   break;
  case 2:
   ;
   if ((((v) >> 10) & 0xf) == 4) {
    err = USBD_IOERROR;
    goto ret;
   }
   bus_space_write_4((sc)->iot, (sc)->ioh, (sc)->sc_oper_off + (port), (v | (((i ? 2 : 3) & 0xf) << 5) | 0x00010000));
   break;
  case 4:
   ;
   bus_space_write_4((sc)->iot, (sc)->ioh, (sc)->sc_oper_off + (port), (v | 0x00000010));
   break;
  case 8:
   ;
   bus_space_write_4((sc)->iot, (sc)->ioh, (sc)->sc_oper_off + (port), (v | 0x00000200));
   break;
  case 22:
   ;
   v &= ~(((3) & 0x3) << 14);
   v |= (((1) & 0x3) << 14);
   bus_space_write_4((sc)->iot, (sc)->ioh, (sc)->sc_oper_off + (port), (v));
   break;
  case 20:
   bus_space_write_4((sc)->iot, (sc)->ioh, (sc)->sc_oper_off + (port), (v | 0x00200000));
   break;
  case 29:
   bus_space_write_4((sc)->iot, (sc)->ioh, (sc)->sc_oper_off + (port), (v | 0x00080000));
   break;
  default:
   err = USBD_IOERROR;
   goto ret;
  }
  break;
 case ((0x08) | (((0x00 | 0x20 | 0x03)) << 8)):
 case ((0x09) | (((0x00 | 0x20 | 0x03)) << 8)):
 case ((0x0a) | (((0x80 | 0x20 | 0x03)) << 8)):
 case ((0x0b) | (((0x00 | 0x20 | 0x03)) << 8)):
  break;
 default:
  err = USBD_IOERROR;
  goto ret;
 }
 xfer->actlen = totlen;
 err = USBD_NORMAL_COMPLETION;
ret:
 xfer->status = err;
 s = splraise(2);
 usb_transfer_complete(xfer);
 _splx(s);
 return (err);
}
void
xhci_noop(struct usbd_xfer *xfer)
{
}
usbd_status
xhci_root_intr_transfer(struct usbd_xfer *xfer)
{
 usbd_status err;
 err = usb_insert_transfer(xfer);
 if (err)
  return (err);
 return (xhci_root_intr_start(((&xfer->pipe->queue)->sqh_first)));
}
usbd_status
xhci_root_intr_start(struct usbd_xfer *xfer)
{
 struct xhci_softc *sc = (struct xhci_softc *)xfer->device->bus;
 if (sc->sc_bus.dying)
  return (USBD_IOERROR);
 sc->sc_intrxfer = xfer;
 return (USBD_IN_PROGRESS);
}
void
xhci_root_intr_abort(struct usbd_xfer *xfer)
{
 struct xhci_softc *sc = (struct xhci_softc *)xfer->device->bus;
 int s;
 sc->sc_intrxfer = ((void *)0);
 xfer->status = USBD_CANCELLED;
 s = splraise(2);
 usb_transfer_complete(xfer);
 _splx(s);
}
void
xhci_root_intr_done(struct usbd_xfer *xfer)
{
}
static inline uint32_t
xhci_xfer_tdsize(struct usbd_xfer *xfer, uint32_t remain, uint32_t len)
{
 uint32_t npkt, mps = ((xfer->pipe->endpoint->edesc->wMaxPacketSize)[0] | ((xfer->pipe->endpoint->edesc->wMaxPacketSize)[1] << 8));
 if (len == 0)
  return (((0) & 0x1f) << 17);
 npkt = (remain - len) / mps;
 if (npkt > 31)
  npkt = 31;
 return (((npkt) & 0x1f) << 17);
}
usbd_status
xhci_device_ctrl_transfer(struct usbd_xfer *xfer)
{
 usbd_status err;
 err = usb_insert_transfer(xfer);
 if (err)
  return (err);
 return (xhci_device_ctrl_start(((&xfer->pipe->queue)->sqh_first)));
}
usbd_status
xhci_device_ctrl_start(struct usbd_xfer *xfer)
{
 struct xhci_softc *sc = (struct xhci_softc *)xfer->device->bus;
 struct xhci_pipe *xp = (struct xhci_pipe *)xfer->pipe;
 struct xhci_trb *trb0, *trb;
 uint32_t flags, len = ((xfer->request.wLength)[0] | ((xfer->request.wLength)[1] << 8));
 uint8_t toggle0, toggle;
 int s;
 ((xfer->rqflags & 0x01) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../dev/usb/xhci.c", 2440, "xfer->rqflags & URQ_REQUEST"));
 if (sc->sc_bus.dying || xp->halted)
  return (USBD_IOERROR);
 if (xp->free_trbs < 3)
  return (USBD_NOMEM);
 trb0 = xhci_xfer_get_trb(sc, xfer, &toggle0, 0);
 if (len != 0) {
  trb = xhci_xfer_get_trb(sc, xfer, &toggle, 0);
  flags = (3 << 10) | toggle;
  if (usbd_xfer_isread(xfer))
   flags |= (1 << 16) | (1 << 2);
  trb->trb_paddr = __extension__({ __uint64_t __swap64gen_x = (((&xfer->dmabuf)->block->map->dm_segs[0].ds_addr + (&xfer->dmabuf)->offs + (0))); (__uint64_t)((__swap64gen_x & 0xff) << 56 | (__swap64gen_x & 0xff00ULL) << 40 | (__swap64gen_x & 0xff0000ULL) << 24 | (__swap64gen_x & 0xff000000ULL) << 8 | (__swap64gen_x & 0xff00000000ULL) >> 8 | (__swap64gen_x & 0xff0000000000ULL) >> 24 | (__swap64gen_x & 0xff000000000000ULL) >> 40 | (__swap64gen_x & 0xff00000000000000ULL) >> 56); });
  trb->trb_status = __extension__({ __uint32_t __swap32gen_x = ((((0) & 0x3ff) << 22) | ((len) & 0x1ffff) | xhci_xfer_tdsize(xfer, len, len)); (__uint32_t)((__swap32gen_x & 0xff) << 24 | (__swap32gen_x & 0xff00) << 8 | (__swap32gen_x & 0xff0000) >> 8 | (__swap32gen_x & 0xff000000) >> 24); });
  trb->trb_flags = __extension__({ __uint32_t __swap32gen_x = (flags); (__uint32_t)((__swap32gen_x & 0xff) << 24 | (__swap32gen_x & 0xff00) << 8 | (__swap32gen_x & 0xff0000) >> 8 | (__swap32gen_x & 0xff000000) >> 24); });
  bus_dmamap_sync(xp->ring.dma.tag, xp->ring.dma.map,
      ((char *)(trb) - (char *)((&xp->ring)->trbs)), sizeof(struct xhci_trb),
      0x04);
 }
 trb = xhci_xfer_get_trb(sc, xfer, &toggle, 1);
 flags = (4 << 10) | (1 << 5) | toggle;
 if (len == 0 || !usbd_xfer_isread(xfer))
  flags |= (1 << 16);
 trb->trb_paddr = 0;
 trb->trb_status = __extension__({ __uint32_t __swap32gen_x = ((((0) & 0x3ff) << 22)); (__uint32_t)((__swap32gen_x & 0xff) << 24 | (__swap32gen_x & 0xff00) << 8 | (__swap32gen_x & 0xff0000) >> 8 | (__swap32gen_x & 0xff000000) >> 24); });
 trb->trb_flags = __extension__({ __uint32_t __swap32gen_x = (flags); (__uint32_t)((__swap32gen_x & 0xff) << 24 | (__swap32gen_x & 0xff00) << 8 | (__swap32gen_x & 0xff0000) >> 8 | (__swap32gen_x & 0xff000000) >> 24); });
 bus_dmamap_sync(xp->ring.dma.tag, xp->ring.dma.map,
     ((char *)(trb) - (char *)((&xp->ring)->trbs)), sizeof(struct xhci_trb),
     0x04);
 flags = (2 << 10) | (1 << 6) | toggle0;
 if (len != 0) {
  if (usbd_xfer_isread(xfer))
   flags |= (3 << 16);
  else
   flags |= (2 << 16);
 }
 __builtin_memcpy((&trb0->trb_paddr), (&xfer->request), (sizeof(trb0->trb_paddr)));
 trb0->trb_status = __extension__({ __uint32_t __swap32gen_x = ((((0) & 0x3ff) << 22) | ((8) & 0x1ffff)); (__uint32_t)((__swap32gen_x & 0xff) << 24 | (__swap32gen_x & 0xff00) << 8 | (__swap32gen_x & 0xff0000) >> 8 | (__swap32gen_x & 0xff000000) >> 24); });
 trb0->trb_flags = __extension__({ __uint32_t __swap32gen_x = (flags); (__uint32_t)((__swap32gen_x & 0xff) << 24 | (__swap32gen_x & 0xff00) << 8 | (__swap32gen_x & 0xff0000) >> 8 | (__swap32gen_x & 0xff000000) >> 24); });
 bus_dmamap_sync(xp->ring.dma.tag, xp->ring.dma.map,
     ((char *)(trb0) - (char *)((&xp->ring)->trbs)), sizeof(struct xhci_trb),
     0x04);
 s = splraise(2);
 bus_space_write_4((sc)->iot, (sc)->ioh, (sc)->sc_door_off + ((0x0000 + (4 * (xp->slot)))), (xp->dci));
 xfer->status = USBD_IN_PROGRESS;
 if (xfer->timeout && !sc->sc_bus.use_polling) {
  timeout_del(&xfer->timeout_handle);
  timeout_set(&xfer->timeout_handle, xhci_timeout, xfer);
  timeout_add_msec(&xfer->timeout_handle, xfer->timeout);
 }
 _splx(s);
 return (USBD_IN_PROGRESS);
}
void
xhci_device_ctrl_abort(struct usbd_xfer *xfer)
{
 xhci_abort_xfer(xfer, USBD_CANCELLED);
}
usbd_status
xhci_device_generic_transfer(struct usbd_xfer *xfer)
{
 usbd_status err;
 err = usb_insert_transfer(xfer);
 if (err)
  return (err);
 return (xhci_device_generic_start(((&xfer->pipe->queue)->sqh_first)));
}
usbd_status
xhci_device_generic_start(struct usbd_xfer *xfer)
{
 struct xhci_softc *sc = (struct xhci_softc *)xfer->device->bus;
 struct xhci_pipe *xp = (struct xhci_pipe *)xfer->pipe;
 struct xhci_trb *trb0, *trb;
 uint32_t len, remain, flags;
 uint32_t len0, mps;
 uint64_t paddr = ((&xfer->dmabuf)->block->map->dm_segs[0].ds_addr + (&xfer->dmabuf)->offs + (0));
 uint8_t toggle0, toggle;
 int s, i, ntrb;
 ((!(xfer->rqflags & 0x01)) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../dev/usb/xhci.c", 2547, "!(xfer->rqflags & URQ_REQUEST)"));
 if (sc->sc_bus.dying || xp->halted)
  return (USBD_IOERROR);
 ntrb = (xfer->length + (64 * 1024) - 1) / (64 * 1024);
 len0 = (64 * 1024) - (paddr & ((64 * 1024) - 1));
 if (len0 < xfer->length)
  ntrb++;
 else
  len0 = xfer->length;
 mps = ((xfer->pipe->endpoint->edesc->wMaxPacketSize)[0] | ((xfer->pipe->endpoint->edesc->wMaxPacketSize)[1] << 8));
 if ((xfer->flags & 0x08 || xfer->length == 0) &&
     (xfer->length % mps == 0))
  ntrb++;
 if (xp->free_trbs < ntrb)
  return (USBD_NOMEM);
 trb0 = xhci_xfer_get_trb(sc, xfer, &toggle0, (ntrb == 1));
 remain = xfer->length - len0;
 paddr += len0;
 len = min(remain, (64 * 1024));
 for (i = ntrb - 1; i > 0; i--) {
  trb = xhci_xfer_get_trb(sc, xfer, &toggle, (i == 1));
  flags = (1 << 10) | toggle;
  if (usbd_xfer_isread(xfer))
   flags |= (1 << 2);
  flags |= (i == 1) ? (1 << 5) : (1 << 4);
  trb->trb_paddr = __extension__({ __uint64_t __swap64gen_x = (paddr); (__uint64_t)((__swap64gen_x & 0xff) << 56 | (__swap64gen_x & 0xff00ULL) << 40 | (__swap64gen_x & 0xff0000ULL) << 24 | (__swap64gen_x & 0xff000000ULL) << 8 | (__swap64gen_x & 0xff00000000ULL) >> 8 | (__swap64gen_x & 0xff0000000000ULL) >> 24 | (__swap64gen_x & 0xff000000000000ULL) >> 40 | (__swap64gen_x & 0xff00000000000000ULL) >> 56); });
  trb->trb_status = __extension__({ __uint32_t __swap32gen_x = ((((0) & 0x3ff) << 22) | ((len) & 0x1ffff) | xhci_xfer_tdsize(xfer, remain, len)); (__uint32_t)((__swap32gen_x & 0xff) << 24 | (__swap32gen_x & 0xff00) << 8 | (__swap32gen_x & 0xff0000) >> 8 | (__swap32gen_x & 0xff000000) >> 24); });
  trb->trb_flags = __extension__({ __uint32_t __swap32gen_x = (flags); (__uint32_t)((__swap32gen_x & 0xff) << 24 | (__swap32gen_x & 0xff00) << 8 | (__swap32gen_x & 0xff0000) >> 8 | (__swap32gen_x & 0xff000000) >> 24); });
  bus_dmamap_sync(xp->ring.dma.tag, xp->ring.dma.map,
      ((char *)(trb) - (char *)((&xp->ring)->trbs)), sizeof(struct xhci_trb),
      0x04);
  remain -= len;
  paddr += len;
  len = min(remain, (64 * 1024));
 }
 flags = (1 << 10) | toggle0;
 if (usbd_xfer_isread(xfer))
  flags |= (1 << 2);
 flags |= (ntrb == 1) ? (1 << 5) : (1 << 4);
 trb0->trb_paddr = __extension__({ __uint64_t __swap64gen_x = (((&xfer->dmabuf)->block->map->dm_segs[0].ds_addr + (&xfer->dmabuf)->offs + (0))); (__uint64_t)((__swap64gen_x & 0xff) << 56 | (__swap64gen_x & 0xff00ULL) << 40 | (__swap64gen_x & 0xff0000ULL) << 24 | (__swap64gen_x & 0xff000000ULL) << 8 | (__swap64gen_x & 0xff00000000ULL) >> 8 | (__swap64gen_x & 0xff0000000000ULL) >> 24 | (__swap64gen_x & 0xff000000000000ULL) >> 40 | (__swap64gen_x & 0xff00000000000000ULL) >> 56); });
 trb0->trb_status = __extension__({ __uint32_t __swap32gen_x = ((((0) & 0x3ff) << 22) | ((len0) & 0x1ffff) | xhci_xfer_tdsize(xfer, xfer->length, len0)); (__uint32_t)((__swap32gen_x & 0xff) << 24 | (__swap32gen_x & 0xff00) << 8 | (__swap32gen_x & 0xff0000) >> 8 | (__swap32gen_x & 0xff000000) >> 24); });
 trb0->trb_flags = __extension__({ __uint32_t __swap32gen_x = (flags); (__uint32_t)((__swap32gen_x & 0xff) << 24 | (__swap32gen_x & 0xff00) << 8 | (__swap32gen_x & 0xff0000) >> 8 | (__swap32gen_x & 0xff000000) >> 24); });
 bus_dmamap_sync(xp->ring.dma.tag, xp->ring.dma.map,
     ((char *)(trb0) - (char *)((&xp->ring)->trbs)), sizeof(struct xhci_trb),
     0x04);
 s = splraise(2);
 bus_space_write_4((sc)->iot, (sc)->ioh, (sc)->sc_door_off + ((0x0000 + (4 * (xp->slot)))), (xp->dci));
 xfer->status = USBD_IN_PROGRESS;
 if (xfer->timeout && !sc->sc_bus.use_polling) {
  timeout_del(&xfer->timeout_handle);
  timeout_set(&xfer->timeout_handle, xhci_timeout, xfer);
  timeout_add_msec(&xfer->timeout_handle, xfer->timeout);
 }
 _splx(s);
 return (USBD_IN_PROGRESS);
}
void
xhci_device_generic_done(struct usbd_xfer *xfer)
{
 if (xfer->pipe->repeat) {
  xfer->actlen = 0;
  xhci_device_generic_start(xfer);
 }
}
void
xhci_device_generic_abort(struct usbd_xfer *xfer)
{
 ((!xfer->pipe->repeat || xfer->pipe->intrxfer == xfer) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../dev/usb/xhci.c", 2647, "!xfer->pipe->repeat || xfer->pipe->intrxfer == xfer"));
 xhci_abort_xfer(xfer, USBD_CANCELLED);
}
