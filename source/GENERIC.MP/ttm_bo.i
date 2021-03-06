struct kobject;
extern struct kobject *ttm_get_kobj(void);
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
void taskq_barrier(struct taskq *);
void task_set(struct task *, void (*)(void *), void *);
int task_add(struct taskq *, struct task *);
int task_del(struct taskq *, struct task *);
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
static __inline __uint16_t
__swap16md(__uint16_t x)
{
 return ((__uint16_t)(((__uint16_t)(x) & 0xffU) << 8 | ((__uint16_t)(x) & 0xff00U) >> 8));
}
static __inline __uint32_t
__swap32md(__uint32_t x)
{
 return ((__uint32_t)(((__uint32_t)(x) & 0xff) << 24 | ((__uint32_t)(x) & 0xff00) << 8 | ((__uint32_t)(x) & 0xff0000) >> 8 | ((__uint32_t)(x) & 0xff000000) >> 24));
}
static __inline __uint64_t
__swap64md(__uint64_t x)
{
 return ((__uint64_t)((((__uint64_t)(x) & 0xff) << 56) | ((__uint64_t)(x) & 0xff00ULL) << 40 | ((__uint64_t)(x) & 0xff0000ULL) << 24 | ((__uint64_t)(x) & 0xff000000ULL) << 8 | ((__uint64_t)(x) & 0xff00000000ULL) >> 8 | ((__uint64_t)(x) & 0xff0000000000ULL) >> 24 | ((__uint64_t)(x) & 0xff000000000000ULL) >> 40 | ((__uint64_t)(x) & 0xff00000000000000ULL) >> 56));
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
int suser(struct proc *p);
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
static inline u_int64_t sparc_rd_asi(void); static inline u_int64_t sparc_rd_asi() { u_int64_t r; __asm volatile("rd %%" "asi" ", %0" : "=r" (r) : : "%g0"); return (r); };
static inline u_int64_t sparc_rd_fprs(void); static inline u_int64_t sparc_rd_fprs() { u_int64_t r; __asm volatile("rd %%" "fprs" ", %0" : "=r" (r) : : "%g0"); return (r); };
static inline u_int64_t sparc_rd_asr22(void); static inline u_int64_t sparc_rd_asr22() { u_int64_t r; __asm volatile("rd %%" "asr22" ", %0" : "=r" (r) : : "%g0"); return (r); };
static inline u_int64_t sparc_rd_sys_tick(void); static inline u_int64_t sparc_rd_sys_tick() { u_int64_t r; __asm volatile("rd %%" "sys_tick" ", %0" : "=r" (r) : : "%g0"); return (r); };
static inline u_int64_t sparc_rd_sys_tick_cmpr(void); static inline u_int64_t sparc_rd_sys_tick_cmpr() { u_int64_t r; __asm volatile("rd %%" "sys_tick_cmpr" ", %0" : "=r" (r) : : "%g0"); return (r); };
static inline u_int64_t sparc_rdpr_tick(void); static inline u_int64_t sparc_rdpr_tick() { u_int64_t r; __asm volatile("rdpr %%" "tick" ", %0" : "=r" (r) : : "%g0"); return (r); };
static inline u_int64_t sparc_rdpr_tba(void); static inline u_int64_t sparc_rdpr_tba() { u_int64_t r; __asm volatile("rdpr %%" "tba" ", %0" : "=r" (r) : : "%g0"); return (r); };
static inline u_int64_t sparc_rdpr_pstate(void); static inline u_int64_t sparc_rdpr_pstate() { u_int64_t r; __asm volatile("rdpr %%" "pstate" ", %0" : "=r" (r) : : "%g0"); return (r); };
static inline u_int64_t sparc_rdpr_pil(void); static inline u_int64_t sparc_rdpr_pil() { u_int64_t r; __asm volatile("rdpr %%" "pil" ", %0" : "=r" (r) : : "%g0"); return (r); };
static inline u_int64_t sparc_rdpr_cwp(void); static inline u_int64_t sparc_rdpr_cwp() { u_int64_t r; __asm volatile("rdpr %%" "cwp" ", %0" : "=r" (r) : : "%g0"); return (r); };
static inline u_int64_t sparc_rdpr_cansave(void); static inline u_int64_t sparc_rdpr_cansave() { u_int64_t r; __asm volatile("rdpr %%" "cansave" ", %0" : "=r" (r) : : "%g0"); return (r); };
static inline u_int64_t sparc_rdpr_canrestore(void); static inline u_int64_t sparc_rdpr_canrestore() { u_int64_t r; __asm volatile("rdpr %%" "canrestore" ", %0" : "=r" (r) : : "%g0"); return (r); };
static inline u_int64_t sparc_rdpr_cleanwin(void); static inline u_int64_t sparc_rdpr_cleanwin() { u_int64_t r; __asm volatile("rdpr %%" "cleanwin" ", %0" : "=r" (r) : : "%g0"); return (r); };
static inline u_int64_t sparc_rdpr_otherwin(void); static inline u_int64_t sparc_rdpr_otherwin() { u_int64_t r; __asm volatile("rdpr %%" "otherwin" ", %0" : "=r" (r) : : "%g0"); return (r); };
static inline u_int64_t sparc_rdpr_wstate(void); static inline u_int64_t sparc_rdpr_wstate() { u_int64_t r; __asm volatile("rdpr %%" "wstate" ", %0" : "=r" (r) : : "%g0"); return (r); };
static inline u_int64_t sparc_rdpr_ver(void); static inline u_int64_t sparc_rdpr_ver() { u_int64_t r; __asm volatile("rdpr %%" "ver" ", %0" : "=r" (r) : : "%g0"); return (r); };
static inline u_char lduba_asi(paddr_t); static inline u_char lduba_asi(paddr_t va) { u_char r; __asm volatile( "lduba" " [%1] %%asi, %0" : "=r" (r) : "r" ((volatile u_char *)va) : "%g0"); return (r); } static inline u_char lduba_nc(paddr_t, int); static inline u_char lduba_nc(paddr_t va, int asi) { do { if (__builtin_constant_p(0)) __asm volatile("wr %%g0, %0, %%" "asi" : : "rI" ((asi) ^ (0)) : "%g0"); else __asm volatile("wr %0, %1, %%" "asi" : : "r" (asi), "rI" (0) : "%g0"); } while(0); return (lduba_asi(va)); };
static inline u_short lduha_asi(paddr_t); static inline u_short lduha_asi(paddr_t va) { u_short r; __asm volatile( "lduha" " [%1] %%asi, %0" : "=r" (r) : "r" ((volatile u_short *)va) : "%g0"); return (r); } static inline u_short lduha_nc(paddr_t, int); static inline u_short lduha_nc(paddr_t va, int asi) { do { if (__builtin_constant_p(0)) __asm volatile("wr %%g0, %0, %%" "asi" : : "rI" ((asi) ^ (0)) : "%g0"); else __asm volatile("wr %0, %1, %%" "asi" : : "r" (asi), "rI" (0) : "%g0"); } while(0); return (lduha_asi(va)); };
static inline u_int lduwa_asi(paddr_t); static inline u_int lduwa_asi(paddr_t va) { u_int r; __asm volatile( "lduwa" " [%1] %%asi, %0" : "=r" (r) : "r" ((volatile u_int *)va) : "%g0"); return (r); } static inline u_int lduwa_nc(paddr_t, int); static inline u_int lduwa_nc(paddr_t va, int asi) { do { if (__builtin_constant_p(0)) __asm volatile("wr %%g0, %0, %%" "asi" : : "rI" ((asi) ^ (0)) : "%g0"); else __asm volatile("wr %0, %1, %%" "asi" : : "r" (asi), "rI" (0) : "%g0"); } while(0); return (lduwa_asi(va)); };
static inline u_int64_t ldxa_asi(paddr_t); static inline u_int64_t ldxa_asi(paddr_t va) { u_int64_t r; __asm volatile( "ldxa" " [%1] %%asi, %0" : "=r" (r) : "r" ((volatile u_int64_t *)va) : "%g0"); return (r); } static inline u_int64_t ldxa_nc(paddr_t, int); static inline u_int64_t ldxa_nc(paddr_t va, int asi) { do { if (__builtin_constant_p(0)) __asm volatile("wr %%g0, %0, %%" "asi" : : "rI" ((asi) ^ (0)) : "%g0"); else __asm volatile("wr %0, %1, %%" "asi" : : "r" (asi), "rI" (0) : "%g0"); } while(0); return (ldxa_asi(va)); };
static inline int lda_asi(paddr_t); static inline int lda_asi(paddr_t va) { int r; __asm volatile( "lda" " [%1] %%asi, %0" : "=r" (r) : "r" ((volatile int *)va) : "%g0"); return (r); } static inline int lda_nc(paddr_t, int); static inline int lda_nc(paddr_t va, int asi) { do { if (__builtin_constant_p(0)) __asm volatile("wr %%g0, %0, %%" "asi" : : "rI" ((asi) ^ (0)) : "%g0"); else __asm volatile("wr %0, %1, %%" "asi" : : "r" (asi), "rI" (0) : "%g0"); } while(0); return (lda_asi(va)); };
static inline void stba_asi(paddr_t, u_int8_t); static inline void stba_asi(paddr_t va, u_int8_t val) { __asm volatile( "stba" " %0, [%1] %%asi" : : "r" (val), "r" ((volatile u_int8_t *)va) : "memory"); } static inline void stba_nc(paddr_t, int, u_int8_t); static inline void stba_nc(paddr_t va, int asi, u_int8_t val) { do { if (__builtin_constant_p(0)) __asm volatile("wr %%g0, %0, %%" "asi" : : "rI" ((asi) ^ (0)) : "%g0"); else __asm volatile("wr %0, %1, %%" "asi" : : "r" (asi), "rI" (0) : "%g0"); } while(0); stba_asi(va, val); };
static inline void stha_asi(paddr_t, u_int16_t); static inline void stha_asi(paddr_t va, u_int16_t val) { __asm volatile( "stha" " %0, [%1] %%asi" : : "r" (val), "r" ((volatile u_int16_t *)va) : "memory"); } static inline void stha_nc(paddr_t, int, u_int16_t); static inline void stha_nc(paddr_t va, int asi, u_int16_t val) { do { if (__builtin_constant_p(0)) __asm volatile("wr %%g0, %0, %%" "asi" : : "rI" ((asi) ^ (0)) : "%g0"); else __asm volatile("wr %0, %1, %%" "asi" : : "r" (asi), "rI" (0) : "%g0"); } while(0); stha_asi(va, val); };
static inline void stwa_asi(paddr_t, u_int32_t); static inline void stwa_asi(paddr_t va, u_int32_t val) { __asm volatile( "stwa" " %0, [%1] %%asi" : : "r" (val), "r" ((volatile u_int32_t *)va) : "memory"); } static inline void stwa_nc(paddr_t, int, u_int32_t); static inline void stwa_nc(paddr_t va, int asi, u_int32_t val) { do { if (__builtin_constant_p(0)) __asm volatile("wr %%g0, %0, %%" "asi" : : "rI" ((asi) ^ (0)) : "%g0"); else __asm volatile("wr %0, %1, %%" "asi" : : "r" (asi), "rI" (0) : "%g0"); } while(0); stwa_asi(va, val); };
static inline void stxa_asi(paddr_t, u_int64_t); static inline void stxa_asi(paddr_t va, u_int64_t val) { __asm volatile( "stxa" " %0, [%1] %%asi" : : "r" (val), "r" ((volatile u_int64_t *)va) : "memory"); } static inline void stxa_nc(paddr_t, int, u_int64_t); static inline void stxa_nc(paddr_t va, int asi, u_int64_t val) { do { if (__builtin_constant_p(0)) __asm volatile("wr %%g0, %0, %%" "asi" : : "rI" ((asi) ^ (0)) : "%g0"); else __asm volatile("wr %0, %1, %%" "asi" : : "r" (asi), "rI" (0) : "%g0"); } while(0); stxa_asi(va, val); };
static inline void sta_asi(paddr_t, u_int); static inline void sta_asi(paddr_t va, u_int val) { __asm volatile( "sta" " %0, [%1] %%asi" : : "r" (val), "r" ((volatile u_int *)va) : "memory"); } static inline void sta_nc(paddr_t, int, u_int); static inline void sta_nc(paddr_t va, int asi, u_int val) { do { if (__builtin_constant_p(0)) __asm volatile("wr %%g0, %0, %%" "asi" : : "rI" ((asi) ^ (0)) : "%g0"); else __asm volatile("wr %0, %1, %%" "asi" : : "r" (asi), "rI" (0) : "%g0"); } while(0); sta_asi(va, val); };
static inline void asi_set(int);
static inline
void asi_set(int asi)
{
 do { if (__builtin_constant_p(0)) __asm volatile("wr %%g0, %0, %%" "asi" : : "rI" ((asi) ^ (0)) : "%g0"); else __asm volatile("wr %0, %1, %%" "asi" : : "r" (asi), "rI" (0) : "%g0"); } while(0);
}
static inline u_int8_t asi_get(void);
static inline
u_int8_t asi_get(void)
{
 return sparc_rd_asi();
}
static inline void flush(void *);
static inline
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
void splassert_fail(int, int, const char *);
extern int splassert_ctl;
void splassert_check(int, const char *);
static inline u_int64_t getpstate(void);
static inline
u_int64_t getpstate(void)
{
 return (sparc_rdpr_pstate());
}
static inline void setpstate(u_int64_t);
static inline void setpstate(u_int64_t newpstate)
{
 do { if (__builtin_constant_p(0)) __asm volatile("wrpr %%g0, %0, %%" "pstate" : : "rI" ((newpstate) ^ (0)) : "%g0"); else __asm volatile("wrpr %0, %1, %%" "pstate" : : "r" (newpstate), "rI" (0) : "%g0"); __asm volatile("" : : : "memory"); } while(0);
}
static inline int getcwp(void);
static inline
int getcwp(void)
{
 return (sparc_rdpr_cwp());
}
static inline void setcwp(u_int64_t);
static inline void
setcwp(u_int64_t newcwp)
{
 do { if (__builtin_constant_p(0)) __asm volatile("wrpr %%g0, %0, %%" "cwp" : : "rI" ((newcwp) ^ (0)) : "%g0"); else __asm volatile("wrpr %0, %1, %%" "cwp" : : "r" (newcwp), "rI" (0) : "%g0"); __asm volatile("" : : : "memory"); } while(0);
}
static inline u_int64_t getver(void);
static inline
u_int64_t getver(void)
{
 return (sparc_rdpr_ver());
}
static inline u_int64_t intr_disable(void);
static inline u_int64_t
intr_disable(void)
{
 u_int64_t s;
 s = sparc_rdpr_pstate();
 do { if (__builtin_constant_p(0)) __asm volatile("wrpr %%g0, %0, %%" "pstate" : : "rI" ((s & ~0x002) ^ (0)) : "%g0"); else __asm volatile("wrpr %0, %1, %%" "pstate" : : "r" (s & ~0x002), "rI" (0) : "%g0"); __asm volatile("" : : : "memory"); } while(0);
 return (s);
}
static inline void intr_restore(u_int64_t);
static inline void
intr_restore(u_int64_t s)
{
 do { if (__builtin_constant_p(0)) __asm volatile("wrpr %%g0, %0, %%" "pstate" : : "rI" ((s) ^ (0)) : "%g0"); else __asm volatile("wrpr %0, %1, %%" "pstate" : : "r" (s), "rI" (0) : "%g0"); __asm volatile("" : : : "memory"); } while(0);
}
static inline void stxa_sync(u_int64_t, u_int64_t, u_int64_t);
static inline void
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
 struct proc *spc_idleproc;
 struct prochead { struct proc *tqh_first; struct proc **tqh_last; } spc_qs[32];
 struct { struct proc *lh_first; } spc_deadproc;
 struct timespec spc_runtime;
 volatile int spc_schedflags;
 u_int spc_schedticks;
 u_int64_t spc_cp_time[6];
 u_char spc_curpriority;
 int spc_rrticks;
 int spc_pscnt;
 int spc_psdiv;
 u_int spc_nrun;
 fixpt_t spc_ldavg;
 volatile uint32_t spc_whichqs;
 volatile u_int spc_spinning;
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
 int ci_cpuid;
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
int __mp_lock_held(struct __mp_lock *, struct cpu_info *);
extern struct __mp_lock kernel_lock;
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
typedef __builtin_va_list __gnuc_va_list;
typedef __gnuc_va_list va_list;
extern int securelevel;
extern const char *panicstr;
extern const char *faultstr;
extern const char version[];
extern const char copyright[];
extern const char ostype[];
extern const char osversion[];
extern const char osrelease[];
extern int cold;
extern int db_active;
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
struct arc4random_ctx;
void arc4random_buf(void *, size_t)
  __attribute__ ((__bounded__(__buffer__,1,2)));
struct arc4random_ctx *arc4random_ctx_new(void);
void arc4random_ctx_free(struct arc4random_ctx *);
void arc4random_ctx_buf(struct arc4random_ctx *, void *, size_t);
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
struct cond;
void cond_init(struct cond *);
void cond_wait(struct cond *, const char *);
void cond_signal(struct cond *);
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
size_t getsn(char *, size_t)
  __attribute__ ((__bounded__(__string__,1,2)));
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
void timeout_barrier(struct timeout *);
void timeout_startup(void);
void timeout_adjust_ticks(int);
int timeout_hardclock_update(void);
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
struct mutex {
 volatile void *mtx_owner;
 int mtx_wantipl;
 int mtx_oldipl;
};
void __mtx_init(struct mutex *, int);
void __mtx_enter(struct mutex *);
int __mtx_enter_try(struct mutex *);
void __mtx_leave(struct mutex *);
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
 u_int serial;
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
boolean_t uvm_map_check_stack_range(struct proc *, vaddr_t sp);
boolean_t uvm_map_is_stack_remappable(vm_map_t, vaddr_t, vsize_t);
int uvm_map_remap_as_stack(struct proc *, vaddr_t, vsize_t);
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
extern int db_radix;
extern int db_max_width;
extern int db_tab_stop_width;
extern int db_max_line;
extern int db_panic;
extern int db_console;
extern int db_log;
extern int db_is_active;
extern int db_profile;
int ddb_sysctl(int *, u_int, void *, size_t *, void *, size_t,
         struct proc *);
typedef uint16_t i2c_addr_t;
typedef enum {
 I2C_OP_READ = 0,
 I2C_OP_READ_WITH_STOP = 1,
 I2C_OP_WRITE = 2,
 I2C_OP_WRITE_WITH_STOP = 3,
} i2c_op_t;
struct device;
typedef struct i2c_controller {
 void *ic_cookie;
 int (*ic_acquire_bus)(void *, int);
 void (*ic_release_bus)(void *, int);
 int (*ic_exec)(void *, i2c_op_t, i2c_addr_t, const void *, size_t,
      void *, size_t, int);
 int (*ic_send_start)(void *, int);
 int (*ic_send_stop)(void *, int);
 int (*ic_initiate_xfer)(void *, i2c_addr_t, int);
 int (*ic_read_byte)(void *, uint8_t *, int);
 int (*ic_write_byte)(void *, uint8_t, int);
 void *(*ic_intr_establish)(void *, void *, int, int (*)(void *),
      void *, const char *);
 const char *(*ic_intr_string)(void *, void *);
} *i2c_tag_t;
struct i2cbus_attach_args {
 const char *iba_name;
 i2c_tag_t iba_tag;
 void (*iba_bus_scan)(struct device *, struct i2cbus_attach_args *,
      void *);
 void *iba_bus_scan_arg;
};
struct i2c_attach_args {
 i2c_tag_t ia_tag;
 i2c_addr_t ia_addr;
 int ia_size;
 char *ia_name;
 void *ia_cookie;
 void *ia_intr;
};
int iicbus_print(void *, const char *);
int iic_exec(i2c_tag_t, i2c_op_t, i2c_addr_t, const void *,
     size_t, void *, size_t, int);
int iic_smbus_write_byte(i2c_tag_t, i2c_addr_t, uint8_t, uint8_t, int);
int iic_smbus_read_byte(i2c_tag_t, i2c_addr_t, uint8_t, uint8_t *, int);
int iic_smbus_receive_byte(i2c_tag_t, i2c_addr_t, uint8_t *, int);
void iic_ignore_addr(u_int8_t addr);
typedef u_int16_t pci_vendor_id_t;
typedef u_int16_t pci_product_id_t;
typedef u_int8_t pci_class_t;
typedef u_int8_t pci_subclass_t;
typedef u_int8_t pci_interface_t;
typedef u_int8_t pci_revision_t;
typedef u_int8_t pci_intr_pin_t;
typedef u_int8_t pci_intr_line_t;
struct pci_vpd_smallres {
 uint8_t vpdres_byte0;
} __attribute__((__packed__));
struct pci_vpd_largeres {
 uint8_t vpdres_byte0;
 uint8_t vpdres_len_lsb;
 uint8_t vpdres_len_msb;
} __attribute__((__packed__));
struct pci_vpd {
 uint8_t vpd_key0;
 uint8_t vpd_key1;
 uint8_t vpd_len;
} __attribute__((__packed__));
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
struct extent_region {
 struct { struct extent_region *le_next; struct extent_region **le_prev; } er_link;
 u_long er_start;
 u_long er_end;
 int er_flags;
};
struct extent {
 char *ex_name;
 struct { struct extent_region *lh_first; } ex_regions;
 u_long ex_start;
 u_long ex_end;
 int ex_mtype;
 int ex_flags;
 struct { struct extent *le_next; struct extent **le_prev; } ex_link;
};
struct extent_fixed {
 struct extent fex_extent;
 struct { struct extent_region *lh_first; } fex_freelist;
 caddr_t fex_storage;
 size_t fex_storagesize;
};
void extent_print_all(void);
struct extent *extent_create(char *, u_long, u_long, int,
     caddr_t, size_t, int);
void extent_destroy(struct extent *);
int extent_alloc_subregion(struct extent *, u_long, u_long,
     u_long, u_long, u_long, u_long, int, u_long *);
int extent_alloc_subregion_with_descr(struct extent *, u_long, u_long,
     u_long, u_long, u_long, u_long, int, struct extent_region *,
     u_long *);
int extent_alloc_region(struct extent *, u_long, u_long, int);
int extent_free(struct extent *, u_long, u_long, int);
void extent_print(struct extent *);
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
typedef u_int32_t pcireg_t;
struct pcibus_attach_args;
struct pci_softc;
struct pci_attach_args;
typedef struct sparc_pci_chipset *pci_chipset_tag_t;
typedef u_int pci_intr_handle_t;
typedef u_int64_t pcitag_t;
struct sparc_pci_chipset {
 void *cookie;
 bus_space_tag_t bustag;
 bus_space_handle_t bushandle;
 int rootnode;
 int busnode[256];
 int (*conf_size)(pci_chipset_tag_t, pcitag_t);
 pcireg_t (*conf_read)(pci_chipset_tag_t, pcitag_t, int);
 void (*conf_write)(pci_chipset_tag_t, pcitag_t, int, pcireg_t);
 int (*intr_map)(struct pci_attach_args *, pci_intr_handle_t *);
};
void pci_attach_hook(struct device *, struct device *,
         struct pcibus_attach_args *);
int pci_bus_maxdevs(pci_chipset_tag_t, int);
pcitag_t pci_make_tag(pci_chipset_tag_t, int, int, int);
void pci_decompose_tag(pci_chipset_tag_t, pcitag_t, int *, int *,
      int *);
int pci_conf_size(pci_chipset_tag_t, pcitag_t);
pcireg_t pci_conf_read(pci_chipset_tag_t, pcitag_t, int);
void pci_conf_write(pci_chipset_tag_t, pcitag_t, int,
        pcireg_t);
int pci_intr_map(struct pci_attach_args *, pci_intr_handle_t *);
int pci_intr_map_msi(struct pci_attach_args *, pci_intr_handle_t *);
int pci_intr_line(pci_chipset_tag_t, pci_intr_handle_t);
const char *pci_intr_string(pci_chipset_tag_t, pci_intr_handle_t);
void *pci_intr_establish(pci_chipset_tag_t, pci_intr_handle_t,
     int, int (*)(void *), void *, const char *);
void pci_intr_disestablish(pci_chipset_tag_t, void *);
void pci_msi_enable(pci_chipset_tag_t, pcitag_t, bus_addr_t, int);
int sparc64_pci_enumerate_bus(struct pci_softc *,
      int (*match)(struct pci_attach_args *),
      struct pci_attach_args *);
struct pcibus_attach_args {
 char *pba_busname;
 bus_space_tag_t pba_iot;
 bus_space_tag_t pba_memt;
 bus_dma_tag_t pba_dmat;
 pci_chipset_tag_t pba_pc;
 int pba_flags;
 struct extent *pba_ioex;
 struct extent *pba_memex;
 struct extent *pba_pmemex;
 struct extent *pba_busex;
 int pba_domain;
 int pba_bus;
 pcitag_t *pba_bridgetag;
 pci_intr_handle_t *pba_bridgeih;
 u_int pba_intrswiz;
 pcitag_t pba_intrtag;
};
struct pci_attach_args {
 bus_space_tag_t pa_iot;
 bus_space_tag_t pa_memt;
 bus_dma_tag_t pa_dmat;
 pci_chipset_tag_t pa_pc;
 int pa_flags;
 struct extent *pa_ioex;
 struct extent *pa_memex;
 struct extent *pa_pmemex;
 struct extent *pa_busex;
 u_int pa_domain;
 u_int pa_bus;
 u_int pa_device;
 u_int pa_function;
 pcitag_t pa_tag;
 pcireg_t pa_id, pa_class;
 pcitag_t *pa_bridgetag;
 pci_intr_handle_t *pa_bridgeih;
 u_int pa_intrswiz;
 pcitag_t pa_intrtag;
 pci_intr_pin_t pa_intrpin;
 pci_intr_line_t pa_intrline;
 pci_intr_pin_t pa_rawintrpin;
};
struct pci_quirkdata {
 pci_vendor_id_t vendor;
 pci_product_id_t product;
 int quirks;
};
struct pci_softc {
 struct device sc_dev;
 bus_space_tag_t sc_iot, sc_memt;
 bus_dma_tag_t sc_dmat;
 pci_chipset_tag_t sc_pc;
 int sc_flags;
 struct extent *sc_ioex;
 struct extent *sc_memex;
 struct extent *sc_pmemex;
 struct extent *sc_busex;
 struct { struct pci_dev *lh_first; } sc_devs;
 int sc_domain, sc_bus, sc_maxndevs;
 pcitag_t *sc_bridgetag;
 pci_intr_handle_t *sc_bridgeih;
 u_int sc_intrswiz;
 pcitag_t sc_intrtag;
};
extern int pci_ndomains;
extern int pci_dopm;
int pci_mapreg_probe(pci_chipset_tag_t, pcitag_t, int, pcireg_t *);
pcireg_t pci_mapreg_type(pci_chipset_tag_t, pcitag_t, int);
int pci_mapreg_info(pci_chipset_tag_t, pcitag_t, int, pcireg_t,
     bus_addr_t *, bus_size_t *, int *);
int pci_mapreg_map(struct pci_attach_args *, int, pcireg_t, int,
     bus_space_tag_t *, bus_space_handle_t *, bus_addr_t *,
     bus_size_t *, bus_size_t);
int pci_io_find(pci_chipset_tag_t, pcitag_t, int, bus_addr_t *,
     bus_size_t *);
int pci_mem_find(pci_chipset_tag_t, pcitag_t, int, bus_addr_t *,
     bus_size_t *, int *);
int pci_get_capability(pci_chipset_tag_t, pcitag_t, int,
     int *, pcireg_t *);
int pci_get_ht_capability(pci_chipset_tag_t, pcitag_t, int,
     int *, pcireg_t *);
struct pci_matchid {
 pci_vendor_id_t pm_vid;
 pci_product_id_t pm_pid;
};
int pci_matchbyid(struct pci_attach_args *, const struct pci_matchid *, int);
int pci_get_powerstate(pci_chipset_tag_t, pcitag_t);
int pci_set_powerstate(pci_chipset_tag_t, pcitag_t, int);
void pci_disable_legacy_vga(struct device *);
int pci_vpd_read(pci_chipset_tag_t, pcitag_t, int, int, pcireg_t *);
int pci_vpd_write(pci_chipset_tag_t, pcitag_t, int, int, pcireg_t *);
const char *pci_findvendor(pcireg_t);
const char *pci_findproduct(pcireg_t);
int pci_find_device(struct pci_attach_args *pa,
     int (*match)(struct pci_attach_args *));
int pci_probe_device(struct pci_softc *, pcitag_t tag,
     int (*)(struct pci_attach_args *), struct pci_attach_args *);
int pci_detach_devices(struct pci_softc *, int);
void pci_devinfo(pcireg_t, pcireg_t, int, char *, size_t);
const struct pci_quirkdata *
 pci_lookup_quirkdata(pci_vendor_id_t, pci_product_id_t);
void pciagp_set_pchb(struct pci_attach_args *);
typedef int8_t __s8;
typedef uint8_t __u8;
typedef int16_t __s16;
typedef uint16_t __u16;
typedef int32_t __s32;
typedef uint32_t __u32;
typedef int64_t __s64;
typedef uint64_t __u64;
typedef uint32_t atomic_t;
static __inline int
atomic_xchg(volatile int *v, int n)
{
 __sync_synchronize();
 return __sync_lock_test_and_set(v, n);
}
static __inline int
atomic_add_unless(volatile int *v, int n, int u)
{
 int o = *v;
 do {
  o = *v;
  if (o == u)
   return 0;
 } while (__sync_val_compare_and_swap(v, o, o +n) != o);
 return 1;
}
typedef uint64_t atomic64_t;
static __inline int64_t
atomic64_xchg(volatile int64_t *v, int64_t n)
{
 __sync_synchronize();
 return __sync_lock_test_and_set(v, n);
}
static inline int
atomic_inc_not_zero(atomic_t *p)
{
 if (*p == 0)
  return (0);
 *(p) += 1;
 return (*p);
}
static __inline int
atomic_cmpset_int(__volatile__ u_int *dst, u_int old, u_int new)
{
 int s = _splraise(15);
 if (*dst==old) {
  *dst = new;
  _splx(s);
  return 1;
 }
 _splx(s);
 return 0;
}
static __inline atomic_t
test_and_set_bit(u_int b, volatile void *p)
{
 int s = _splraise(15);
 unsigned int m = 1<<b;
 unsigned int r = *(volatile int *)p & m;
 *(volatile int *)p |= m;
 _splx(s);
 return r;
}
static __inline void
clear_bit(u_int b, volatile void *p)
{
 atomic_clearbits_int(((volatile u_int *)p) + (b >> 5),1 << (b & 0x1f));
}
static __inline void
set_bit(u_int b, volatile void *p)
{
 atomic_setbits_int(((volatile u_int *)p) + (b >> 5),1 << (b & 0x1f));
}
static __inline void
__clear_bit(u_int b, volatile void *p)
{
 volatile u_int *ptr = (volatile u_int *)p;
 ptr[b >> 5] &= ~(1 << (b & 0x1f));
}
static __inline void
__set_bit(u_int b, volatile void *p)
{
 volatile u_int *ptr = (volatile u_int *)p;
 ptr[b >> 5] |= (1 << (b & 0x1f));
}
static __inline int
test_bit(u_int b, volatile void *p)
{
 return !!(((volatile u_int *)p)[b >> 5] & (1 << (b & 0x1f)));
}
static __inline int
__test_and_clear_bit(u_int b, volatile void *p)
{
 volatile u_int *ptr = (volatile u_int *)p;
 int rv = !!(ptr[b >> 5] & (1 << (b & 0x1f)));
 ptr[b >> 5] &= ~(1 << (b & 0x1f));
 return rv;
}
static __inline int
find_first_zero_bit(volatile void *p, int max)
{
 int b;
 volatile u_int *ptr = (volatile u_int *)p;
 for (b = 0; b < max; b += 32) {
  if (ptr[b >> 5] != ~0) {
   for (;;) {
    if ((ptr[b >> 5] & (1 << (b & 0x1f))) == 0)
     return b;
    b++;
   }
  }
 }
 return max;
}
static __inline int
find_first_bit(volatile void *p, int max)
{
 int b;
 volatile u_int *ptr = (volatile u_int *)p;
 for (b = 0; b < max; b += 32) {
  if (ptr[b >> 5] != 0) {
   for (;;) {
    if (ptr[b >> 5] & (1 << (b & 0x1f)))
     return b;
    b++;
   }
  }
 }
 return max;
}
static __inline int
find_next_bit(volatile void *p, int max, int b)
{
 volatile u_int *ptr = (volatile u_int *)p;
 for (; b < max; b+= 32) {
  if (ptr[b >> 5] != 0) {
   for (;;) {
    if (ptr[b >> 5] & (1 << (b & 0x1f)))
     return b;
    b++;
   }
  }
 }
 return max;
}
struct list_head {
 struct list_head *next, *prev;
};
static inline void
INIT_LIST_HEAD(struct list_head *head) {
 (head)->next = head;
 (head)->prev = head;
}
static inline int
list_empty(const struct list_head *head) {
 return (head)->next == head;
}
static inline int
list_is_singular(const struct list_head *head) {
 return !list_empty(head) && ((head)->next == (head)->prev);
}
static inline void
list_add(struct list_head *new, struct list_head *head) {
        (head)->next->prev = new;
        (new)->next = (head)->next;
        (new)->prev = head;
        (head)->next = new;
}
static inline void
list_add_tail(struct list_head *entry, struct list_head *head) {
 (entry)->prev = (head)->prev;
 (entry)->next = head;
 (head)->prev->next = entry;
 (head)->prev = entry;
}
static inline void
list_del(struct list_head *entry) {
 (entry)->next->prev = (entry)->prev;
 (entry)->prev->next = (entry)->next;
}
static inline void list_replace(struct list_head *old,
    struct list_head *new)
{
 new->next = old->next;
 new->next->prev = new;
 new->prev = old->prev;
 new->prev->next = new;
}
static inline void list_replace_init(struct list_head *old,
         struct list_head *new)
{
 list_replace(old, new);
 INIT_LIST_HEAD(old);
}
static inline void list_move(struct list_head *list, struct list_head *head)
{
 list_del(list);
 list_add(list, head);
}
static inline void list_move_tail(struct list_head *list,
    struct list_head *head)
{
 list_del(list);
 list_add_tail(list, head);
}
static inline void
list_del_init(struct list_head *entry) {
 (entry)->next->prev = (entry)->prev;
 (entry)->prev->next = (entry)->next;
 INIT_LIST_HEAD(entry);
}
static inline void
__list_splice(const struct list_head *list, struct list_head *prev,
    struct list_head *next)
{
 struct list_head *first = list->next;
 struct list_head *last = list->prev;
 first->prev = prev;
 prev->next = first;
 last->next = next;
 next->prev = last;
}
static inline void
list_splice(const struct list_head *list, struct list_head *head)
{
 if (list_empty(list))
  return;
 __list_splice(list, head, head->next);
}
static inline void
list_splice_tail(const struct list_head *list, struct list_head *head)
{
 if (list_empty(list))
  return;
 __list_splice(list, head->prev, head);
}
void list_sort(void *, struct list_head *,
     int (*)(void *, struct list_head *, struct list_head *));
struct hlist_node {
 struct hlist_node *next, **prev;
};
struct hlist_head {
 struct hlist_node *first;
};
static inline void
INIT_HLIST_HEAD(struct hlist_head *head) {
 head->first = ((void *)0);
}
static inline int
hlist_empty(const struct hlist_head *head) {
 return head->first == ((void *)0);
}
static inline void
hlist_add_head(struct hlist_node *new, struct hlist_head *head)
{
 if ((new->next = head->first) != ((void *)0))
  head->first->prev = &new->next;
 head->first = new;
 new->prev = &head->first;
}
static inline void
hlist_del_init(struct hlist_node *node)
{
 if (node->next != ((void *)0))
  node->next->prev = node->prev;
 *(node->prev) = node->next;
 node->next = ((void *)0);
 node->prev = ((void *)0);
}
#pragma GCC diagnostic ignored "-Wformat-zero-length"
typedef int irqreturn_t;
enum irqreturn {
 IRQ_NONE = 0,
 IRQ_HANDLED = 1
};
typedef int8_t s8;
typedef uint8_t u8;
typedef int16_t s16;
typedef uint16_t u16;
typedef int32_t s32;
typedef uint32_t u32;
typedef int64_t s64;
typedef uint64_t u64;
typedef uint16_t __le16;
typedef uint16_t __be16;
typedef uint32_t __le32;
typedef uint32_t __be32;
typedef bus_addr_t dma_addr_t;
typedef bus_addr_t phys_addr_t;
typedef bus_addr_t resource_size_t;
typedef off_t loff_t;
static inline uint8_t
hweight8(uint32_t x)
{
 x = (x & 0x55) + ((x & 0xaa) >> 1);
 x = (x & 0x33) + ((x & 0xcc) >> 2);
 x = (x + (x >> 4)) & 0x0f;
 return (x);
}
static inline uint16_t
hweight16(uint32_t x)
{
 x = (x & 0x5555) + ((x & 0xaaaa) >> 1);
 x = (x & 0x3333) + ((x & 0xcccc) >> 2);
 x = (x + (x >> 4)) & 0x0f0f;
 x = (x + (x >> 8)) & 0x00ff;
 return (x);
}
static inline uint32_t
hweight32(uint32_t x)
{
 x = (x & 0x55555555) + ((x & 0xaaaaaaaa) >> 1);
 x = (x & 0x33333333) + ((x & 0xcccccccc) >> 2);
 x = (x + (x >> 4)) & 0x0f0f0f0f;
 x = (x + (x >> 8));
 x = (x + (x >> 16)) & 0x000000ff;
 return x;
}
static inline uint32_t
hweight64(uint64_t x)
{
 x = (x & 0x5555555555555555ULL) + ((x & 0xaaaaaaaaaaaaaaaaULL) >> 1);
 x = (x & 0x3333333333333333ULL) + ((x & 0xccccccccccccccccULL) >> 2);
 x = (x + (x >> 4)) & 0x0f0f0f0f0f0f0f0fULL;
 x = (x + (x >> 8));
 x = (x + (x >> 16));
 x = (x + (x >> 32)) & 0x000000ff;
 return x;
}
static inline void
bitmap_set(void *p, int b, u_int n)
{
 u_int end = b + n;
 for (; b < end; b++)
  __set_bit(b, p);
}
static inline void
bitmap_zero(void *p, u_int n)
{
 u_int *ptr = p;
 u_int b;
 for (b = 0; b < n; b += 32)
  ptr[b >> 5] = 0;
}
static inline void
bitmap_or(void *d, void *s1, void *s2, u_int n)
{
 u_int *dst = d;
 u_int *src1 = s1;
 u_int *src2 = s2;
 u_int b;
 for (b = 0; b < n; b += 32)
  dst[b >> 5] = src1[b >> 5] | src2[b >> 5];
}
static inline int
bitmap_weight(void *p, u_int n)
{
 u_int *ptr = p;
 u_int b;
 int sum = 0;
 for (b = 0; b < n; b += 32)
  sum += hweight32(ptr[b >> 5]);
 return sum;
}
static inline void
__hash_init(struct hlist_head *table, u_int size)
{
 u_int i;
 for (i = 0; i < size; i++)
  INIT_HLIST_HEAD(&table[i]);
}
static inline _Bool
__hash_empty(struct hlist_head *table, u_int size)
{
 u_int i;
 for (i = 0; i < size; i++) {
  if (!hlist_empty(&table[i]))
   return 0;
 }
 return 1;
}
struct device_node;
struct device_driver {
 struct device *dev;
};
struct module;
enum {
 DUMP_PREFIX_NONE,
 DUMP_PREFIX_ADDRESS,
 DUMP_PREFIX_OFFSET
};
void print_hex_dump(const char *, const char *, int, int, int,
  const void *, size_t, _Bool);
static inline void *
ERR_PTR(long error)
{
 return (void *) error;
}
static inline long
PTR_ERR(const void *ptr)
{
 return (long) ptr;
}
static inline long
IS_ERR(const void *ptr)
{
        return __builtin_expect(!!(((unsigned long)ptr) >= (unsigned long)-95), 0);
}
static inline long
IS_ERR_OR_NULL(const void *ptr)
{
        return !ptr || __builtin_expect(!!(((unsigned long)ptr) >= (unsigned long)-95), 0);
}
static inline void *
ERR_CAST(const void *ptr)
{
 return (void *)ptr;
}
static inline int
PTR_ERR_OR_ZERO(const void *ptr)
{
 return IS_ERR(ptr)? PTR_ERR(ptr) : 0;
}
typedef struct rwlock rwlock_t;
typedef struct mutex spinlock_t;
static inline void
_spin_lock_irqsave(struct mutex *mtxp, __attribute__((__unused__)) unsigned long flags
    )
{
 __mtx_enter(mtxp );
}
static inline void
_spin_unlock_irqrestore(struct mutex *mtxp, __attribute__((__unused__)) unsigned long flags
    )
{
 __mtx_leave(mtxp );
}
typedef struct wait_queue wait_queue_t;
struct wait_queue {
 unsigned int flags;
 void *private;
 int (*func)(wait_queue_t *, unsigned, int, void *);
};
extern struct mutex sch_mtx;
extern void *sch_ident;
extern int sch_priority;
struct wait_queue_head {
 struct mutex lock;
 unsigned int count;
 struct wait_queue *_wq;
};
typedef struct wait_queue_head wait_queue_head_t;
static inline void
init_waitqueue_head(wait_queue_head_t *wq)
{
 do { (void)(((void *)0)); (void)(0); __mtx_init((&wq->lock), ((((6)) > 0 && ((6)) < 12) ? 12 : ((6)))); } while (0);
 wq->count = 0;
 wq->_wq = ((void *)0);
}
static inline void
__add_wait_queue(wait_queue_head_t *head, wait_queue_t *new)
{
 head->_wq = new;
}
static inline void
__remove_wait_queue(wait_queue_head_t *head, wait_queue_t *old)
{
 head->_wq = ((void *)0);
}
static inline void
_wake_up(wait_queue_head_t *wq )
{
 __mtx_enter(&wq->lock );
 if (wq->_wq != ((void *)0) && wq->_wq->func != ((void *)0))
  wq->_wq->func(wq->_wq, 0, wq->_wq->flags, ((void *)0));
 else {
  __mtx_enter(&sch_mtx );
  wakeup(wq);
  __mtx_leave(&sch_mtx );
 }
 __mtx_leave(&wq->lock );
}
static inline void
wake_up_all_locked(wait_queue_head_t *wq)
{
 if (wq->_wq != ((void *)0) && wq->_wq->func != ((void *)0))
  wq->_wq->func(wq->_wq, 0, wq->_wq->flags, ((void *)0));
 else {
  __mtx_enter(&sch_mtx );
  wakeup(wq);
  __mtx_leave(&sch_mtx );
 }
}
struct completion {
 u_int done;
 wait_queue_head_t wait;
};
static inline void
init_completion(struct completion *x)
{
 x->done = 0;
 do { (void)(((void *)0)); (void)(0); __mtx_init((&x->wait.lock), ((((0)) > 0 && ((0)) < 12) ? 12 : ((0)))); } while (0);
}
static inline u_long
_wait_for_completion_interruptible_timeout(struct completion *x, u_long timo
    )
{
 int ret;
 __mtx_enter(&x->wait.lock );
 while (x->done == 0) {
  ret = msleep(x, &x->wait.lock, 0x100, "wfcit", timo);
  if (ret) {
   __mtx_leave(&x->wait.lock );
   return (ret == 35) ? 0 : -ret;
  }
 }
 return 1;
}
static inline void
_complete_all(struct completion *x )
{
 __mtx_enter(&x->wait.lock );
 x->done = 1;
 __mtx_leave(&x->wait.lock );
 wakeup(x);
}
struct workqueue_struct;
static inline struct workqueue_struct *
alloc_ordered_workqueue(const char *name, int flags)
{
 struct taskq *tq = taskq_create(name, 1, 6, 0);
 return (struct workqueue_struct *)tq;
}
static inline struct workqueue_struct *
create_singlethread_workqueue(const char *name)
{
 struct taskq *tq = taskq_create(name, 1, 6, 0);
 return (struct workqueue_struct *)tq;
}
static inline void
destroy_workqueue(struct workqueue_struct *wq)
{
 taskq_destroy((struct taskq *)wq);
}
struct work_struct {
 struct task task;
 struct taskq *tq;
};
typedef void (*work_func_t)(struct work_struct *);
static inline void
INIT_WORK(struct work_struct *work, work_func_t func)
{
 work->tq = systq;
 task_set(&work->task, (void (*)(void *))func, work);
}
static inline _Bool
queue_work(struct workqueue_struct *wq, struct work_struct *work)
{
 work->tq = (struct taskq *)wq;
 return task_add(work->tq, &work->task);
}
static inline void
cancel_work_sync(struct work_struct *work)
{
 task_del(work->tq, &work->task);
}
struct delayed_work {
 struct work_struct work;
 struct timeout to;
 struct taskq *tq;
};
static inline struct delayed_work *
to_delayed_work(struct work_struct *work)
{
 return ({ const __typeof( ((struct delayed_work *)0)->work ) *__mptr = (work); (struct delayed_work *)( (char *)__mptr - __builtin_offsetof(struct delayed_work, work) );});
}
static void
__delayed_work_tick(void *arg)
{
 struct delayed_work *dwork = arg;
 task_add(dwork->tq, &dwork->work.task);
}
static inline void
INIT_DELAYED_WORK(struct delayed_work *dwork, work_func_t func)
{
 INIT_WORK(&dwork->work, func);
 timeout_set(&dwork->to, __delayed_work_tick, &dwork->work);
}
static inline _Bool
schedule_work(struct work_struct *work)
{
 return task_add(work->tq, &work->task);
}
static inline _Bool
schedule_delayed_work(struct delayed_work *dwork, int jiffies)
{
 dwork->tq = systq;
 return timeout_add(&dwork->to, jiffies);
}
static inline _Bool
queue_delayed_work(struct workqueue_struct *wq,
    struct delayed_work *dwork, int jiffies)
{
 dwork->tq = (struct taskq *)wq;
 return timeout_add(&dwork->to, jiffies);
}
static inline _Bool
mod_delayed_work(struct workqueue_struct *wq,
    struct delayed_work *dwork, int jiffies)
{
 dwork->tq = (struct taskq *)wq;
 return (timeout_add(&dwork->to, jiffies) == 0);
}
static inline _Bool
cancel_delayed_work(struct delayed_work *dwork)
{
 if (timeout_del(&dwork->to))
  return 1;
 return task_del(dwork->tq, &dwork->work.task);
}
static inline _Bool
cancel_delayed_work_sync(struct delayed_work *dwork)
{
 if (timeout_del(&dwork->to))
  return 1;
 return task_del(dwork->tq, &dwork->work.task);
}
void flush_workqueue(struct workqueue_struct *);
void flush_work(struct work_struct *);
void flush_delayed_work(struct delayed_work *);
typedef void *async_cookie_t;
extern struct timespec ns_to_timespec(const int64_t);
extern int64_t timeval_to_ns(const struct timeval *);
extern int64_t timeval_to_us(const struct timeval *);
extern struct timeval ns_to_timeval(const int64_t);
static inline struct timespec
timespec_sub(struct timespec t1, struct timespec t2)
{
 struct timespec diff;
 do { (&diff)->tv_sec = (&t1)->tv_sec - (&t2)->tv_sec; (&diff)->tv_nsec = (&t1)->tv_nsec - (&t2)->tv_nsec; if ((&diff)->tv_nsec < 0) { (&diff)->tv_sec--; (&diff)->tv_nsec += 1000000000L; } } while (0);
 return diff;
}
extern volatile unsigned long jiffies;
static inline unsigned long
round_jiffies_up(unsigned long j)
{
 return ((((j)+((hz)-1))/(hz))*(hz));
}
static inline unsigned long
round_jiffies_up_relative(unsigned long j)
{
 return ((((j)+((hz)-1))/(hz))*(hz));
}
static inline void
set_normalized_timespec(struct timespec *ts, time_t sec, int64_t nsec)
{
 while (nsec > 1000000000L) {
  nsec -= 1000000000L;
  sec++;
 }
 ts->tv_sec = sec;
 ts->tv_nsec = nsec;
}
static inline int64_t
timespec_to_ns(const struct timespec *ts)
{
 return ((ts->tv_sec * 1000000000L) + ts->tv_nsec);
}
static inline unsigned long
timespec_to_jiffies(const struct timespec *ts)
{
 long long to_ticks;
 to_ticks = (long long)hz * ts->tv_sec + ts->tv_nsec / (tick * 1000);
 if (to_ticks > 0x7fffffff)
  to_ticks = 0x7fffffff;
 return ((int)to_ticks);
}
static inline int
timespec_valid(const struct timespec *ts)
{
 if (ts->tv_sec < 0 || ts->tv_sec > 100000000 ||
     ts->tv_nsec < 0 || ts->tv_nsec >= 1000000000)
  return (0);
 return (1);
}
typedef struct timeval ktime_t;
static inline struct timeval
ktime_get(void)
{
 struct timeval tv;
 getmicrouptime(&tv);
 return tv;
}
static inline struct timeval
ktime_get_monotonic_offset(void)
{
 struct timeval tv = {0, 0};
 return tv;
}
static inline int64_t
ktime_to_us(struct timeval tv)
{
 return timeval_to_us(&tv);
}
static inline int64_t
ktime_to_ns(struct timeval tv)
{
 return timeval_to_ns(&tv);
}
static inline int64_t
ktime_get_raw_ns(void)
{
 return ktime_to_ns(ktime_get());
}
static inline struct timeval
ktime_sub(struct timeval a, struct timeval b)
{
 struct timeval res;
 do { (&res)->tv_sec = (&a)->tv_sec - (&b)->tv_sec; (&res)->tv_usec = (&a)->tv_usec - (&b)->tv_usec; if ((&res)->tv_usec < 0) { (&res)->tv_sec--; (&res)->tv_usec += 1000000; } } while (0);
 return res;
}
static inline struct timeval
ktime_add_ns(struct timeval tv, int64_t ns)
{
 return ns_to_timeval(timeval_to_ns(&tv) + ns);
}
static inline struct timeval
ktime_sub_ns(struct timeval tv, int64_t ns)
{
 return ns_to_timeval(timeval_to_ns(&tv) - ns);
}
static inline int64_t
ktime_us_delta(struct timeval a, struct timeval b)
{
 return ktime_to_us(ktime_sub(a, b));
}
static inline void *
kmalloc(size_t size, int flags)
{
 return malloc(size, 145, flags);
}
static inline void *
kmalloc_array(size_t n, size_t size, int flags)
{
 if (n == 0 || 0xffffffffffffffffUL / n < size)
  return ((void *)0);
 return malloc(n * size, 145, flags);
}
static inline void *
kcalloc(size_t n, size_t size, int flags)
{
 if (n == 0 || 0xffffffffffffffffUL / n < size)
  return ((void *)0);
 return malloc(n * size, 145, flags | 0x0008);
}
static inline void *
kzalloc(size_t size, int flags)
{
 return malloc(size, 145, flags | 0x0008);
}
static inline void
kfree(const void *objp)
{
 free((void *)objp, 145, 0);
}
static inline void *
kmemdup(const void *src, size_t len, int flags)
{
 void *p = malloc(len, 145, flags);
 if (p)
  __builtin_memcpy((p), (src), (len));
 return (p);
}
static inline char *
kasprintf(int flags, const char *fmt, ...)
{
 char *buf;
 size_t len;
 va_list ap;
 __builtin_va_start((ap), fmt);
 len = vsnprintf(((void *)0), 0, fmt, ap);
 __builtin_va_end((ap));
 buf = kmalloc(len, flags);
 if (buf) {
  __builtin_va_start((ap), fmt);
  vsnprintf(buf, len, fmt, ap);
  __builtin_va_end((ap));
 }
 return buf;
}
static inline void *
vmalloc(unsigned long size)
{
 return malloc(size, 145, 0x0001 | 0x0004);
}
static inline void *
vzalloc(unsigned long size)
{
 return malloc(size, 145, 0x0001 | 0x0004 | 0x0008);
}
static inline void
vfree(void *objp)
{
 free(objp, 145, 0);
}
struct kref {
 uint32_t refcount;
};
static inline void
kref_init(struct kref *ref)
{
 ref->refcount = 1;
}
static inline void
kref_get(struct kref *ref)
{
 ((void)_atomic_add_int_nv((&ref->refcount), 1));
}
static inline int
kref_get_unless_zero(struct kref *ref)
{
 if (ref->refcount != 0) {
  ((void)_atomic_add_int_nv((&ref->refcount), 1));
  return (1);
 } else {
  return (0);
 }
}
static inline void
kref_put(struct kref *ref, void (*release)(struct kref *ref))
{
 if (_atomic_sub_int_nv((&ref->refcount), 1) == 0)
  release(ref);
}
static inline void
kref_sub(struct kref *ref, unsigned int v, void (*release)(struct kref *ref))
{
 if (_atomic_sub_int_nv(&ref->refcount, v) == 0)
  release(ref);
}
static inline int
kref_put_mutex(struct kref *kref, void (*release)(struct kref *kref),
    struct rwlock *lock)
{
 if (!atomic_add_unless(&kref->refcount, -1, 1)) {
  _rw_enter_write(lock );
  if (__builtin_expect(!!((__sync_sub_and_fetch((&kref->refcount), 1) == 0)), 1)) {
   release(kref);
   return 1;
  }
  _rw_exit_write(lock );
  return 0;
 }
 return 0;
}
struct kobject {
 struct kref kref;
 struct kobj_type *type;
};
struct kobj_type {
 void (*release)(struct kobject *);
};
static inline void
kobject_init(struct kobject *obj, struct kobj_type *type)
{
 kref_init(&obj->kref);
 obj->type = type;
}
static inline int
kobject_init_and_add(struct kobject *obj, struct kobj_type *type,
    struct kobject *parent, const char *fmt, ...)
{
 kobject_init(obj, type);
 return (0);
}
static inline struct kobject *
kobject_get(struct kobject *obj)
{
 if (obj != ((void *)0))
  kref_get(&obj->kref);
 return (obj);
}
static inline void
kobject_release(struct kref *ref)
{
 struct kobject *obj = ({ const __typeof( ((struct kobject *)0)->kref ) *__mptr = (ref); (struct kobject *)( (char *)__mptr - __builtin_offsetof(struct kobject, kref) );});
 if (obj->type && obj->type->release)
  obj->type->release(obj);
}
static inline void
kobject_put(struct kobject *obj)
{
 if (obj != ((void *)0))
  kref_put(&obj->kref, kobject_release);
}
static inline void
kobject_del(struct kobject *obj)
{
}
static inline void
prepare_to_wait(wait_queue_head_t *wq, wait_queue_head_t **wait, int state)
{
 if (*wait == ((void *)0)) {
  __mtx_enter(&sch_mtx );
  *wait = wq;
 }
 do { if (((&sch_mtx)->mtx_owner != (__curcpu->ci_self)) && !(panicstr || db_active)) panic("mutex %p not held in %s", (&sch_mtx), __func__); } while (0);
 sch_ident = wq;
 sch_priority = state;
}
static inline void
finish_wait(wait_queue_head_t *wq, wait_queue_head_t **wait)
{
 if (*wait) {
  do { if (((&sch_mtx)->mtx_owner != (__curcpu->ci_self)) && !(panicstr || db_active)) panic("mutex %p not held in %s", (&sch_mtx), __func__); } while (0);
  sch_ident = ((void *)0);
  __mtx_leave(&sch_mtx );
 }
}
static inline void
set_current_state(int state)
{
 if (sch_ident != (__curcpu->ci_self)->ci_curproc)
  __mtx_enter(&sch_mtx );
 do { if (((&sch_mtx)->mtx_owner != (__curcpu->ci_self)) && !(panicstr || db_active)) panic("mutex %p not held in %s", (&sch_mtx), __func__); } while (0);
 sch_ident = (__curcpu->ci_self)->ci_curproc;
 sch_priority = state;
}
static inline void
__set_current_state(int state)
{
 ((state == -1) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../dev/pci/drm/drm_linux.h", 1318, "state == TASK_RUNNING"));
 if (sch_ident == (__curcpu->ci_self)->ci_curproc) {
  do { if (((&sch_mtx)->mtx_owner != (__curcpu->ci_self)) && !(panicstr || db_active)) panic("mutex %p not held in %s", (&sch_mtx), __func__); } while (0);
  sch_ident = ((void *)0);
  __mtx_leave(&sch_mtx );
 }
}
static inline long
schedule_timeout(long timeout)
{
 int err;
 long deadline;
 if (cold) {
  delay((timeout * 1000000) / hz);
  return 0;
 }
 if (timeout == (0x7fffffff)) {
  err = msleep(sch_ident, &sch_mtx, sch_priority, "schto", 0);
  sch_ident = (__curcpu->ci_self)->ci_curproc;
  return timeout;
 }
 deadline = ticks + timeout;
 err = msleep(sch_ident, &sch_mtx, sch_priority, "schto", timeout);
 timeout = deadline - ticks;
 if (timeout < 0)
  timeout = 0;
 sch_ident = (__curcpu->ci_self)->ci_curproc;
 return timeout;
}
struct seq_file;
static inline void
seq_printf(struct seq_file *m, const char *fmt, ...) {};
struct fence {
 struct kref refcount;
 const struct fence_ops *ops;
 unsigned long flags;
 unsigned int context;
 unsigned int seqno;
 struct mutex *lock;
 struct list_head cb_list;
};
enum fence_flag_bits {
 FENCE_FLAG_SIGNALED_BIT,
 FENCE_FLAG_ENABLE_SIGNAL_BIT,
 FENCE_FLAG_USER_BITS,
};
struct fence_ops {
 const char * (*get_driver_name)(struct fence *);
 const char * (*get_timeline_name)(struct fence *);
 _Bool (*enable_signaling)(struct fence *);
 _Bool (*signaled)(struct fence *);
 long (*wait)(struct fence *, _Bool, long);
 void (*release)(struct fence *);
};
struct fence_cb;
typedef void (*fence_func_t)(struct fence *fence, struct fence_cb *cb);
struct fence_cb {
 struct list_head node;
 fence_func_t func;
};
unsigned int fence_context_alloc(unsigned int);
static inline struct fence *
fence_get(struct fence *fence)
{
 if (fence)
  kref_get(&fence->refcount);
 return fence;
}
static inline struct fence *
fence_get_rcu(struct fence *fence)
{
 if (fence)
  kref_get(&fence->refcount);
 return fence;
}
static inline void
fence_release(struct kref *ref)
{
 struct fence *fence = ({ const __typeof( ((struct fence *)0)->refcount ) *__mptr = (ref); (struct fence *)( (char *)__mptr - __builtin_offsetof(struct fence, refcount) );});
 if (fence->ops && fence->ops->release)
  fence->ops->release(fence);
 else
  free(fence, 145, 0);
}
static inline void
fence_put(struct fence *fence)
{
 if (fence)
  kref_put(&fence->refcount, fence_release);
}
static inline int
fence_signal(struct fence *fence)
{
 if (fence == ((void *)0))
  return -22;
 if (test_and_set_bit(FENCE_FLAG_SIGNALED_BIT, &fence->flags))
  return -22;
 if (test_bit(FENCE_FLAG_ENABLE_SIGNAL_BIT, &fence->flags)) {
  struct fence_cb *cur, *tmp;
  __mtx_enter(fence->lock );
  for (cur = ({ const __typeof( ((__typeof(*cur) *)0)->node ) *__mptr = ((&fence->cb_list)->next); (__typeof(*cur) *)( (char *)__mptr - __builtin_offsetof(__typeof(*cur), node) );}), tmp = ({ const __typeof( ((__typeof(*cur) *)0)->node ) *__mptr = (cur->node.next); (__typeof(*cur) *)( (char *)__mptr - __builtin_offsetof(__typeof(*cur), node) );}); &cur->node != (&fence->cb_list); cur = tmp, tmp = ({ const __typeof( ((__typeof(*tmp) *)0)->node ) *__mptr = (tmp->node.next); (__typeof(*tmp) *)( (char *)__mptr - __builtin_offsetof(__typeof(*tmp), node) );})) {
   list_del_init(&cur->node);
   cur->func(fence, cur);
  }
  __mtx_leave(fence->lock );
 }
 return 0;
}
static inline int
fence_signal_locked(struct fence *fence)
{
 struct fence_cb *cur, *tmp;
 if (fence == ((void *)0))
  return -22;
 if (test_and_set_bit(FENCE_FLAG_SIGNALED_BIT, &fence->flags))
  return -22;
 for (cur = ({ const __typeof( ((__typeof(*cur) *)0)->node ) *__mptr = ((&fence->cb_list)->next); (__typeof(*cur) *)( (char *)__mptr - __builtin_offsetof(__typeof(*cur), node) );}), tmp = ({ const __typeof( ((__typeof(*cur) *)0)->node ) *__mptr = (cur->node.next); (__typeof(*cur) *)( (char *)__mptr - __builtin_offsetof(__typeof(*cur), node) );}); &cur->node != (&fence->cb_list); cur = tmp, tmp = ({ const __typeof( ((__typeof(*tmp) *)0)->node ) *__mptr = (tmp->node.next); (__typeof(*tmp) *)( (char *)__mptr - __builtin_offsetof(__typeof(*tmp), node) );})) {
  list_del_init(&cur->node);
  cur->func(fence, cur);
 }
 return 0;
}
static inline _Bool
fence_is_signaled(struct fence *fence)
{
 if (test_bit(FENCE_FLAG_SIGNALED_BIT, &fence->flags))
  return 1;
 if (fence->ops->signaled && fence->ops->signaled(fence)) {
  fence_signal(fence);
  return 1;
 }
 return 0;
}
static inline long
fence_wait_timeout(struct fence *fence, _Bool intr, signed long timeout)
{
 if (timeout < 0)
  return -22;
 if (timeout == 0)
  return fence_is_signaled(fence);
 return fence->ops->wait(fence, intr, timeout);
}
static inline long
fence_wait(struct fence *fence, _Bool intr)
{
 return fence_wait_timeout(fence, intr, (0x7fffffff));
}
static inline void
fence_enable_sw_signaling(struct fence *fence)
{
 if (!test_and_set_bit(FENCE_FLAG_ENABLE_SIGNAL_BIT, &fence->flags) &&
     !test_bit(FENCE_FLAG_SIGNALED_BIT, &fence->flags)) {
  __mtx_enter(fence->lock );
  if (!fence->ops->enable_signaling(fence))
   fence_signal_locked(fence);
  __mtx_leave(fence->lock );
 }
}
static inline void
fence_init(struct fence *fence, const struct fence_ops *ops,
    struct mutex *lock, unsigned context, unsigned seqno)
{
 fence->ops = ops;
 fence->lock = lock;
 fence->context = context;
 fence->seqno = seqno;
 fence->flags = 0;
 kref_init(&fence->refcount);
 INIT_LIST_HEAD(&fence->cb_list);
}
static inline int
fence_add_callback(struct fence *fence, struct fence_cb *cb,
    fence_func_t func)
{
 int ret = 0;
 _Bool was_set;
 if (({ int __ret = !!(!fence || !func); if (__ret) printf("WARNING %s failed at %s:%d\n", "!fence || !func", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../dev/pci/drm/drm_linux.h", 1536); __builtin_expect(!!(__ret), 0); }))
  return -22;
 if (test_bit(FENCE_FLAG_SIGNALED_BIT, &fence->flags)) {
  INIT_LIST_HEAD(&cb->node);
  return -2;
 }
 __mtx_enter(fence->lock );
 was_set = test_and_set_bit(FENCE_FLAG_ENABLE_SIGNAL_BIT, &fence->flags);
 if (test_bit(FENCE_FLAG_SIGNALED_BIT, &fence->flags))
  ret = -2;
 else if (!was_set) {
  if (!fence->ops->enable_signaling(fence)) {
   fence_signal_locked(fence);
   ret = -2;
  }
 }
 if (!ret) {
  cb->func = func;
  list_add_tail(&cb->node, &fence->cb_list);
 } else
  INIT_LIST_HEAD(&cb->node);
 __mtx_leave(fence->lock );
 return ret;
}
static inline _Bool
fence_remove_callback(struct fence *fence, struct fence_cb *cb)
{
 _Bool ret;
 __mtx_enter(fence->lock );
 ret = !list_empty(&cb->node);
 if (ret)
  list_del_init(&cb->node);
 __mtx_leave(fence->lock );
 return ret;
}
struct idr_entry {
 struct { struct idr_entry *spe_left; struct idr_entry *spe_right; } entry;
 int id;
 void *ptr;
};
struct idr {
 struct idr_tree { struct idr_entry *sph_root; } tree;
};
void idr_init(struct idr *);
void idr_preload(unsigned int);
int idr_alloc(struct idr *, void *, int, int, unsigned int);
void *idr_find(struct idr *, int);
void *idr_replace(struct idr *, void *ptr, int);
void idr_remove(struct idr *, int);
void idr_destroy(struct idr *);
int idr_for_each(struct idr *, int (*)(int, void *, void *), void *);
void *idr_get_next(struct idr *, int *);
struct ida {
 int counter;
};
void ida_init(struct ida *);
void ida_destroy(struct ida *);
int ida_simple_get(struct ida *, unsigned int, unsigned nt, int);
void ida_remove(struct ida *, int);
struct notifier_block {
 void *notifier_call;
};
static inline uint64_t
div_u64(uint64_t x, uint32_t y)
{
 return (x / y);
}
static inline int64_t
div_s64(int64_t x, int64_t y)
{
 return (x / y);
}
static inline uint64_t
div64_u64(uint64_t x, uint64_t y)
{
 return (x / y);
}
static inline uint64_t
div64_u64_rem(uint64_t x, uint64_t y, uint64_t *rem)
{
 *rem = x % y;
 return (x / y);
}
static inline int64_t
div64_s64(int64_t x, int64_t y)
{
 return (x / y);
}
static inline int64_t
abs64(int64_t x)
{
 return (x < 0 ? -x : x);
}
static inline unsigned long
__copy_to_user(void *to, const void *from, unsigned len)
{
 if (copyout(from, to, len))
  return len;
 return 0;
}
static inline unsigned long
copy_to_user(void *to, const void *from, unsigned len)
{
 return __copy_to_user(to, from, len);
}
static inline unsigned long
__copy_from_user(void *to, const void *from, unsigned len)
{
 if (copyin(from, to, len))
  return len;
 return 0;
}
static inline unsigned long
copy_from_user(void *to, const void *from, unsigned len)
{
 return __copy_from_user(to, from, len);
}
enum dmi_field {
        DMI_NONE,
        DMI_BIOS_VENDOR,
        DMI_BIOS_VERSION,
        DMI_BIOS_DATE,
        DMI_SYS_VENDOR,
        DMI_PRODUCT_NAME,
        DMI_PRODUCT_VERSION,
        DMI_PRODUCT_SERIAL,
        DMI_PRODUCT_UUID,
        DMI_BOARD_VENDOR,
        DMI_BOARD_NAME,
        DMI_BOARD_VERSION,
        DMI_BOARD_SERIAL,
        DMI_BOARD_ASSET_TAG,
        DMI_CHASSIS_VENDOR,
        DMI_CHASSIS_TYPE,
        DMI_CHASSIS_VERSION,
        DMI_CHASSIS_SERIAL,
        DMI_CHASSIS_ASSET_TAG,
        DMI_STRING_MAX,
};
struct dmi_strmatch {
 unsigned char slot;
 char substr[79];
};
struct dmi_system_id {
        int (*callback)(const struct dmi_system_id *);
        const char *ident;
        struct dmi_strmatch matches[4];
};
int dmi_check_system(const struct dmi_system_id *);
_Bool dmi_match(int, const char *);
struct resource {
 u_long start;
};
struct pci_bus {
 pci_chipset_tag_t pc;
 unsigned char number;
 pcitag_t *bridgetag;
};
struct pci_dev {
 struct pci_bus _bus;
 struct pci_bus *bus;
 unsigned int devfn;
 uint16_t vendor;
 uint16_t device;
 uint16_t subsystem_vendor;
 uint16_t subsystem_device;
 uint8_t revision;
 pci_chipset_tag_t pc;
 pcitag_t tag;
 struct pci_softc *pci;
 int irq;
 int msi_enabled;
};
static inline int
pci_read_config_dword(struct pci_dev *pdev, int reg64, u32 *val)
{
 *val = pci_conf_read(pdev->pc, pdev->tag, reg64);
 return 0;
}
static inline int
pci_read_config_word(struct pci_dev *pdev, int reg64, u16 *val)
{
 uint32_t v;
 v = pci_conf_read(pdev->pc, pdev->tag, (reg64 & ~0x2));
 *val = (v >> ((reg64 & 0x2) * 8));
 return 0;
}
static inline int
pci_read_config_byte(struct pci_dev *pdev, int reg64, u8 *val)
{
 uint32_t v;
 v = pci_conf_read(pdev->pc, pdev->tag, (reg64 & ~0x3));
 *val = (v >> ((reg64 & 0x3) * 8));
 return 0;
}
static inline int
pci_write_config_dword(struct pci_dev *pdev, int reg64, u32 val)
{
 pci_conf_write(pdev->pc, pdev->tag, reg64, val);
 return 0;
}
static inline int
pci_write_config_word(struct pci_dev *pdev, int reg64, u16 val)
{
 uint32_t v;
 v = pci_conf_read(pdev->pc, pdev->tag, (reg64 & ~0x2));
 v &= ~(0xffff << ((reg64 & 0x2) * 8));
 v |= (val << ((reg64 & 0x2) * 8));
 pci_conf_write(pdev->pc, pdev->tag, (reg64 & ~0x2), v);
 return 0;
}
static inline int
pci_write_config_byte(struct pci_dev *pdev, int reg64, u8 val)
{
 uint32_t v;
 v = pci_conf_read(pdev->pc, pdev->tag, (reg64 & ~0x3));
 v &= ~(0xff << ((reg64 & 0x3) * 8));
 v |= (val << ((reg64 & 0x3) * 8));
 pci_conf_write(pdev->pc, pdev->tag, (reg64 & ~0x3), v);
 return 0;
}
static inline int
pci_bus_read_config_word(struct pci_bus *bus, unsigned int devfn,
    int reg64, u16 *val)
{
 pcitag_t tag = pci_make_tag(bus->pc, bus->number,
     ((devfn) >> 3), ((devfn) & 0x7));
 uint32_t v;
 v = pci_conf_read(bus->pc, tag, (reg64 & ~0x2));
 *val = (v >> ((reg64 & 0x2) * 8));
 return 0;
}
static inline int
pci_bus_read_config_byte(struct pci_bus *bus, unsigned int devfn,
    int reg64, u8 *val)
{
 pcitag_t tag = pci_make_tag(bus->pc, bus->number,
     ((devfn) >> 3), ((devfn) & 0x7));
 uint32_t v;
 v = pci_conf_read(bus->pc, tag, (reg64 & ~0x3));
 *val = (v >> ((reg64 & 0x3) * 8));
 return 0;
}
static inline int
pci_pcie_cap(struct pci_dev *pdev)
{
 int pos;
 if (!pci_get_capability(pdev->pc, pdev->tag, 0x10,
     &pos, ((void *)0)))
  return -22;
 return pos;
}
static inline _Bool
pci_is_root_bus(struct pci_bus *pbus)
{
 return (pbus->bridgetag == ((void *)0));
}
static inline int
pcie_capability_read_dword(struct pci_dev *pdev, int off, u32 *val)
{
 int pos;
 if (!pci_get_capability(pdev->pc, pdev->tag, 0x10,
     &pos, ((void *)0))) {
  *val = 0;
  return -22;
 }
 *val = pci_conf_read(pdev->pc, pdev->tag, pos + off);
 return 0;
}
typedef enum {
 PCI_D0,
 PCI_D1,
 PCI_D2,
 PCI_D3hot,
 PCI_D3cold
} pci_power_t;
static inline int
vga_client_register(struct pci_dev *a, void *b, void *c, void *d)
{
 return -19;
}
struct i2c_algorithm;
struct i2c_adapter {
 struct i2c_controller ic;
 char name[48];
 const struct i2c_algorithm *algo;
 void *algo_data;
 int retries;
 void *data;
};
struct i2c_msg {
 uint16_t addr;
 uint16_t flags;
 uint16_t len;
 uint8_t *buf;
};
struct i2c_algorithm {
 int (*master_xfer)(struct i2c_adapter *, struct i2c_msg *, int);
 u32 (*functionality)(struct i2c_adapter *);
};
extern struct i2c_algorithm i2c_bit_algo;
struct i2c_algo_bit_data {
 struct i2c_controller ic;
};
int i2c_transfer(struct i2c_adapter *, struct i2c_msg *, int);
static inline void *
i2c_get_adapdata(struct i2c_adapter *adap)
{
 return adap->data;
}
static inline void
i2c_set_adapdata(struct i2c_adapter *adap, void *data)
{
 adap->data = data;
}
int i2c_bit_add_bus(struct i2c_adapter *);
static inline u32
ioread32(const volatile void *addr)
{
 return (*(volatile uint32_t *)addr);
}
static inline u64
ioread64(const volatile void *addr)
{
 return (*(volatile uint64_t *)addr);
}
static inline void
iowrite32(u32 val, volatile void *addr)
{
 *(volatile uint32_t *)addr = val;
}
static inline void
iowrite64(u64 val, volatile void *addr)
{
 *(volatile uint64_t *)addr = val;
}
static inline int
access_ok(int type, const void *addr, unsigned long size)
{
 return 1;
}
static inline int
capable(int cap)
{
 ((cap == 0x1) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../dev/pci/drm/drm_linux.h", 2114, "cap == CAP_SYS_ADMIN"));
 return suser((__curcpu->ci_self)->ci_curproc);
}
typedef int pgprot_t;
void *kmap(struct vm_page *);
void kunmap(void *addr);
void *vmap(struct vm_page **, unsigned int, unsigned long, pgprot_t);
void vunmap(void *, size_t);
static inline unsigned long
gcd(unsigned long a, unsigned long b)
{
 unsigned long c;
 c = a % b;
 while (c != 0) {
  a = b;
  b = c;
  c = a % b;
 }
 return (b);
}
static inline unsigned long
roundup_pow_of_two(unsigned long x)
{
 return (1UL << flsl(x - 1));
}
static __inline void
udelay(unsigned long usecs)
{
 delay(usecs);
}
static __inline void
ndelay(unsigned long nsecs)
{
 delay(max(nsecs / 1000, 1));
}
static __inline void
usleep_range(unsigned long min, unsigned long max)
{
 delay(min);
}
static __inline void
mdelay(unsigned long msecs)
{
 int loops = msecs;
 while (loops--)
  delay(1000);
}
static __inline void
cpu_relax(void)
{
 do { __asm volatile( "999:	rd	%%ccr, %%g0			\n" "	rd	%%ccr, %%g0			\n" "	rd	%%ccr, %%g0			\n" "	.section .sun4v_pause_patch, \"ax\"	\n" "	.word	999b				\n" "	.word	0xb7802080	! pause	128	\n" "	.word	999b + 4			\n" "	nop					\n" "	.word	999b + 8			\n" "	nop					\n" "	.previous				\n" "	.section .sun4u_mtp_patch, \"ax\"	\n" "	.word	999b				\n" "	.word	0x81b01060	! sleep		\n" "	.word	999b + 4			\n" "	nop					\n" "	.word	999b + 8			\n" "	nop					\n" "	.previous				\n" : : : "memory"); } while (0);
 if (cold) {
  delay(tick);
  jiffies++;
 }
}
struct lock_class_key {
};
typedef struct {
 unsigned int sequence;
} seqcount_t;
static inline void
__seqcount_init(seqcount_t *s, const char *name,
    struct lock_class_key *key)
{
 s->sequence = 0;
}
static inline unsigned int
read_seqcount_begin(const seqcount_t *s)
{
 unsigned int r;
 for (;;) {
  r = s->sequence;
  if ((r & 1) == 0)
   break;
  cpu_relax();
 }
 __asm volatile("membar " "#LoadLoad" ::: "memory");
 return r;
}
static inline int
read_seqcount_retry(const seqcount_t *s, unsigned start)
{
 __asm volatile("membar " "#LoadLoad" ::: "memory");
 return (s->sequence != start);
}
static inline void
write_seqcount_begin(seqcount_t *s)
{
 s->sequence++;
 __asm volatile("membar " "#StoreStore" ::: "memory");
}
static inline void
write_seqcount_end(seqcount_t *s)
{
 __asm volatile("membar " "#StoreStore" ::: "memory");
 s->sequence++;
}
static inline uint32_t ror32(uint32_t word, unsigned int shift)
{
 return (word >> shift) | (word << (32 - shift));
}
static inline int
irqs_disabled(void)
{
 return (cold);
}
static inline int
in_dbg_master(void)
{
 return (db_is_active);
 return (0);
}
static inline int
power_supply_is_system_supplied(void)
{
 return (1);
}
static inline int
pm_runtime_get_sync(struct device *dev)
{
 return 0;
}
static inline int
isascii(int c)
{
 return ((unsigned int)c <= 0177);
}
static inline int
isprint(int c)
{
 if (c == -1)
  return (0);
 if ((unsigned char)c >= 040 && (unsigned char)c <= 0176)
  return (1);
 return (0);
}
typedef unsigned int gfp_t;
struct vm_page *alloc_pages(unsigned int, unsigned int);
void __free_pages(struct vm_page *, unsigned int);
static inline struct vm_page *
alloc_page(unsigned int gfp_mask)
{
 return alloc_pages(gfp_mask, 0);
}
static inline void
__free_page(struct vm_page *page)
{
 return __free_pages(page, 0);
}
static inline unsigned int
get_order(size_t size)
{
 return flsl((size - 1) >> 13);
}
struct fb_var_screeninfo {
 int pixclock;
};
struct fb_info {
 struct fb_var_screeninfo var;
 void *par;
};
struct address_space;
typedef size_t acpi_size;
typedef int acpi_status;
struct acpi_table_header;
acpi_status acpi_get_table_with_size(const char *, int, struct acpi_table_header **, acpi_size *);
struct backlight_device;
struct backlight_properties {
 int type;
 int max_brightness;
 int brightness;
 int power;
};
struct backlight_ops {
 int (*update_status)(struct backlight_device *);
 int (*get_brightness)(struct backlight_device *);
};
struct backlight_device {
 const struct backlight_ops *ops;
 struct backlight_properties props;
 struct task task;
 void *data;
};
struct backlight_device *backlight_device_register(const char *, void *,
     void *, const struct backlight_ops *, struct backlight_properties *);
void backlight_device_unregister(struct backlight_device *);
static inline void
backlight_update_status(struct backlight_device *bd)
{
 bd->ops->update_status(bd);
}
void backlight_schedule_update_status(struct backlight_device *);
struct pwm_device;
static inline struct pwm_device *
pwm_get(struct device *dev, const char *consumer)
{
 return ERR_PTR(-19);
}
static inline void
pwm_put(struct pwm_device *pwm)
{
}
static inline unsigned int
pwm_get_duty_cycle(const struct pwm_device *pwm)
{
 return 0;
}
static inline int
pwm_config(struct pwm_device *pwm, int duty_ns, int period_ns)
{
 return -22;
}
static inline int
pwm_enable(struct pwm_device *pwm)
{
 return -22;
}
static inline void
pwm_disable(struct pwm_device *pwm)
{
}
struct scatterlist {
 dma_addr_t dma_address;
 unsigned int offset;
 unsigned int length;
};
struct sg_table {
 struct scatterlist *sgl;
 unsigned int nents;
 unsigned int orig_nents;
};
struct sg_page_iter {
 struct scatterlist *sg;
 unsigned int sg_pgoffset;
 unsigned int __nents;
};
int sg_alloc_table(struct sg_table *, unsigned int, gfp_t);
void sg_free_table(struct sg_table *);
static __inline void
__sg_page_iter_start(struct sg_page_iter *iter, struct scatterlist *sgl,
    unsigned int nents, unsigned long pgoffset)
{
 iter->sg = sgl;
 iter->sg_pgoffset = pgoffset - 1;
 iter->__nents = nents;
}
static inline _Bool
__sg_page_iter_next(struct sg_page_iter *iter)
{
 iter->sg_pgoffset++;
 while (iter->__nents > 0 &&
     iter->sg_pgoffset >= (iter->sg->length / (1 << 13))) {
  iter->sg_pgoffset -= (iter->sg->length / (1 << 13));
  iter->sg++;
  iter->__nents--;
 }
 return (iter->__nents > 0);
}
static inline paddr_t
sg_page_iter_dma_address(struct sg_page_iter *iter)
{
 return iter->sg->dma_address + (iter->sg_pgoffset << 13);
}
static inline struct vm_page *
sg_page_iter_page(struct sg_page_iter *iter)
{
 return PHYS_TO_VM_PAGE(sg_page_iter_dma_address(iter));
}
static inline struct vm_page *
sg_page(struct scatterlist *sgl)
{
 return PHYS_TO_VM_PAGE(sgl->dma_address);
}
size_t sg_copy_from_buffer(struct scatterlist *, unsigned int,
    const void *, size_t);
struct firmware {
 size_t size;
 const u8 *data;
};
static inline int
request_firmware(const struct firmware **fw, const char *name,
    struct device *device)
{
 int r;
 struct firmware *f = malloc(sizeof(struct firmware), 145,
     0x0001 | 0x0008);
 *fw = f;
 r = loadfirmware(name, ((u_char **)(__uintptr_t)(const void *)(&f->data)), &f->size);
 if (r != 0)
  return -r;
 else
  return 0;
}
static inline void
release_firmware(const struct firmware *fw)
{
 if (fw)
  free(((u_char *)(__uintptr_t)(const void *)(fw->data)), 2, fw->size);
 free(((struct firmware *)(__uintptr_t)(const void *)(fw)), 145, sizeof(*fw));
}
void *memchr_inv(const void *, int, size_t);
struct ww_class {
 volatile u_long stamp;
 const char *name;
};
struct ww_acquire_ctx {
 u_long stamp;
 struct ww_class *ww_class;
};
struct ww_mutex {
 struct mutex lock;
 volatile int acquired;
 volatile struct ww_acquire_ctx *ctx;
 volatile struct proc *owner;
};
static inline void
ww_acquire_init(struct ww_acquire_ctx *ctx, struct ww_class *ww_class) {
 ctx->stamp = __sync_fetch_and_add(&ww_class->stamp, 1);
 ctx->ww_class = ww_class;
}
static inline void
ww_acquire_done(__attribute__((__unused__)) struct ww_acquire_ctx *ctx) {
}
static inline void
ww_acquire_fini(__attribute__((__unused__)) struct ww_acquire_ctx *ctx) {
}
static inline void
ww_mutex_init(struct ww_mutex *lock, struct ww_class *ww_class) {
 do { (void)(((void *)0)); (void)(0); __mtx_init((&lock->lock), ((((0)) > 0 && ((0)) < 12) ? 12 : ((0)))); } while (0);
 lock->acquired = 0;
 lock->ctx = ((void *)0);
 lock->owner = ((void *)0);
}
static inline _Bool
ww_mutex_is_locked(struct ww_mutex *lock) {
 _Bool res = 0;
 __mtx_enter(&lock->lock );
 if (lock->acquired > 0) res = 1;
 __mtx_leave(&lock->lock );
 return res;
}
static inline int
ww_mutex_trylock(struct ww_mutex *lock) {
 int res = 0;
 __mtx_enter(&lock->lock );
 if (lock->acquired == 0) {
  ((lock->ctx == ((void *)0)) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../dev/pci/drm/linux_ww_mutex.h", 107, "lock->ctx == NULL"));
  lock->acquired = 1;
  lock->owner = (__curcpu->ci_self)->ci_curproc;
  res = 1;
 }
 __mtx_leave(&lock->lock );
 return res;
}
static inline int
__ww_mutex_lock(struct ww_mutex *lock, struct ww_acquire_ctx *ctx, _Bool slow, _Bool intr) {
 int err;
 __mtx_enter(&lock->lock );
 for (;;) {
  if (lock->acquired == 0) {
   ((lock->ctx == ((void *)0)) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../dev/pci/drm/linux_ww_mutex.h", 133, "lock->ctx == NULL"));
   lock->acquired = 1;
   lock->ctx = ctx;
   lock->owner = (__curcpu->ci_self)->ci_curproc;
   err = 0;
   break;
  }
  else if (lock->owner == (__curcpu->ci_self)->ci_curproc) {
   err = -37;
   break;
  }
  else {
   if (slow || ctx == ((void *)0) ||
       (lock->ctx && ctx->stamp < lock->ctx->stamp)) {
    int s = msleep(lock, &lock->lock,
            intr ? 0x100 : 0,
            ctx ? ctx->ww_class->name : "ww_mutex_lock", 0);
    if (intr && (s == 4 || s == -1)) {
     err = -4;
     break;
    }
   }
   else {
    err = -11;
    break;
   }
  }
 }
 __mtx_leave(&lock->lock );
 return err;
}
static inline int
ww_mutex_lock(struct ww_mutex *lock, struct ww_acquire_ctx *ctx) {
 return __ww_mutex_lock(lock, ctx, 0, 0);
}
static inline void
ww_mutex_lock_slow(struct ww_mutex *lock, struct ww_acquire_ctx *ctx) {
 (void)__ww_mutex_lock(lock, ctx, 1, 0);
}
static inline int
ww_mutex_lock_interruptible(struct ww_mutex *lock, struct ww_acquire_ctx *ctx) {
 return __ww_mutex_lock(lock, ctx, 0, 1);
}
static inline int
ww_mutex_lock_slow_interruptible(struct ww_mutex *lock, struct ww_acquire_ctx *ctx) {
 return __ww_mutex_lock(lock, ctx, 1, 1);
}
static inline void
ww_mutex_unlock(struct ww_mutex *lock) {
 __mtx_enter(&lock->lock );
 ((lock->owner == (__curcpu->ci_self)->ci_curproc) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../dev/pci/drm/linux_ww_mutex.h", 220, "lock->owner == curproc"));
 ((lock->acquired == 1) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../dev/pci/drm/linux_ww_mutex.h", 221, "lock->acquired == 1"));
 lock->acquired = 0;
 lock->ctx = ((void *)0);
 lock->owner = ((void *)0);
 __mtx_leave(&lock->lock );
 wakeup(lock);
}
static inline void
ww_mutex_destroy(struct ww_mutex *lock) {
 ((lock->acquired == 0) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../dev/pci/drm/linux_ww_mutex.h", 232, "lock->acquired == 0"));
 ((lock->ctx == ((void *)0)) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../dev/pci/drm/linux_ww_mutex.h", 233, "lock->ctx == NULL"));
 ((lock->owner == ((void *)0)) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../dev/pci/drm/linux_ww_mutex.h", 234, "lock->owner == NULL"));
}
struct rcu_head {
};
extern struct ww_class reservation_ww_class;
extern struct lock_class_key reservation_seqcount_class;
extern const char reservation_seqcount_string[];
struct reservation_object_list {
 struct rcu_head rcu;
 u32 shared_count, shared_max;
 struct fence *shared[];
};
struct reservation_object {
 struct ww_mutex lock;
 seqcount_t seq;
 struct fence *fence_excl;
 struct reservation_object_list *fence;
 struct reservation_object_list *staged;
};
static inline void
reservation_object_init(struct reservation_object *obj)
{
 ww_mutex_init(&obj->lock, &reservation_ww_class);
 __seqcount_init(&obj->seq, reservation_seqcount_string, &reservation_seqcount_class);
 do { (obj->fence) = (((void *)0)); } while(0);
 do { (obj->fence_excl) = (((void *)0)); } while(0);
 obj->staged = ((void *)0);
}
static inline void
reservation_object_fini(struct reservation_object *obj)
{
 int i;
 struct reservation_object_list *fobj;
 struct fence *excl;
 excl = (obj->fence_excl);
 if (excl)
  fence_put(excl);
 fobj = (obj->fence);
 if (fobj) {
  for (i = 0; i < fobj->shared_count; ++i)
   fence_put((fobj->shared[i]));
  kfree(fobj);
 }
 kfree(obj->staged);
 ww_mutex_destroy(&obj->lock);
}
static inline struct reservation_object_list *
reservation_object_get_list(struct reservation_object *obj)
{
 return (obj->fence);
}
static inline struct fence *
reservation_object_get_excl(struct reservation_object *obj)
{
 return (obj->fence_excl);
}
int reservation_object_reserve_shared(struct reservation_object *obj);
void reservation_object_add_shared_fence(struct reservation_object *obj,
      struct fence *fence);
void reservation_object_add_excl_fence(struct reservation_object *obj,
           struct fence *fence);
int reservation_object_get_fences_rcu(struct reservation_object *obj,
          struct fence **pfence_excl,
          unsigned *pshared_count,
          struct fence ***pshared);
long reservation_object_wait_timeout_rcu(struct reservation_object *obj,
      _Bool wait_all, _Bool intr,
      unsigned long timeout);
_Bool reservation_object_test_signaled_rcu(struct reservation_object *obj,
       _Bool test_all);
struct drm_hash_item {
 struct { struct drm_hash_item *le_next; struct drm_hash_item **le_prev; } head;
 unsigned long key;
};
struct drm_open_hash {
 struct drm_hash_item_list { struct drm_hash_item *lh_first; } *table;
 uint8_t order;
};
extern int drm_ht_create(struct drm_open_hash *ht, unsigned int order);
extern int drm_ht_insert_item(struct drm_open_hash *ht, struct drm_hash_item *item);
extern int drm_ht_just_insert_please(struct drm_open_hash *ht, struct drm_hash_item *item,
         unsigned long seed, int bits, int shift,
         unsigned long add);
extern int drm_ht_find_item(struct drm_open_hash *ht, unsigned long key, struct drm_hash_item **item);
extern void drm_ht_verbose_list(struct drm_open_hash *ht, unsigned long key);
extern int drm_ht_remove_key(struct drm_open_hash *ht, unsigned long key);
extern int drm_ht_remove_item(struct drm_open_hash *ht, struct drm_hash_item *item);
extern void drm_ht_remove(struct drm_open_hash *ht);
enum drm_mm_search_flags {
 DRM_MM_SEARCH_DEFAULT = 0,
 DRM_MM_SEARCH_BEST = 1 << 0,
 DRM_MM_SEARCH_BELOW = 1 << 1,
};
enum drm_mm_allocator_flags {
 DRM_MM_CREATE_DEFAULT = 0,
 DRM_MM_CREATE_TOP = 1 << 0,
};
struct drm_mm_node {
 struct list_head node_list;
 struct list_head hole_stack;
 unsigned hole_follows : 1;
 unsigned scanned_block : 1;
 unsigned scanned_prev_free : 1;
 unsigned scanned_next_free : 1;
 unsigned scanned_preceeds_hole : 1;
 unsigned allocated : 1;
 unsigned long color;
 u64 start;
 u64 size;
 struct drm_mm *mm;
};
struct drm_mm {
 struct list_head hole_stack;
 struct drm_mm_node head_node;
 unsigned int scan_check_range : 1;
 unsigned scan_alignment;
 unsigned long scan_color;
 u64 scan_size;
 u64 scan_hit_start;
 u64 scan_hit_end;
 unsigned scanned_blocks;
 u64 scan_start;
 u64 scan_end;
 struct drm_mm_node *prev_scanned_node;
 void (*color_adjust)(struct drm_mm_node *node, unsigned long color,
        u64 *start, u64 *end);
};
static inline _Bool drm_mm_node_allocated(struct drm_mm_node *node)
{
 return node->allocated;
}
static inline _Bool drm_mm_initialized(struct drm_mm *mm)
{
 return mm->hole_stack.next;
}
static inline u64 __drm_mm_hole_node_start(struct drm_mm_node *hole_node)
{
 return hole_node->start + hole_node->size;
}
static inline u64 drm_mm_hole_node_start(struct drm_mm_node *hole_node)
{
 ((!(!hole_node->hole_follows)) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../dev/pci/drm/drm_mm.h", 149, "!(!hole_node->hole_follows)"));
 return __drm_mm_hole_node_start(hole_node);
}
static inline u64 __drm_mm_hole_node_end(struct drm_mm_node *hole_node)
{
 return ({ const __typeof( ((typeof(*(hole_node)) *)0)->node_list ) *__mptr = (((hole_node)->node_list.next)); (typeof(*(hole_node)) *)( (char *)__mptr - __builtin_offsetof(typeof(*(hole_node)), node_list) );})->start;
}
static inline u64 drm_mm_hole_node_end(struct drm_mm_node *hole_node)
{
 return __drm_mm_hole_node_end(hole_node);
}
int drm_mm_reserve_node(struct drm_mm *mm, struct drm_mm_node *node);
int drm_mm_insert_node_generic(struct drm_mm *mm,
          struct drm_mm_node *node,
          u64 size,
          unsigned alignment,
          unsigned long color,
          enum drm_mm_search_flags sflags,
          enum drm_mm_allocator_flags aflags);
static inline int drm_mm_insert_node(struct drm_mm *mm,
         struct drm_mm_node *node,
         u64 size,
         unsigned alignment,
         enum drm_mm_search_flags flags)
{
 return drm_mm_insert_node_generic(mm, node, size, alignment, 0, flags,
       DRM_MM_CREATE_DEFAULT);
}
int drm_mm_insert_node_in_range_generic(struct drm_mm *mm,
     struct drm_mm_node *node,
     u64 size,
     unsigned alignment,
     unsigned long color,
     u64 start,
     u64 end,
     enum drm_mm_search_flags sflags,
     enum drm_mm_allocator_flags aflags);
static inline int drm_mm_insert_node_in_range(struct drm_mm *mm,
           struct drm_mm_node *node,
           u64 size,
           unsigned alignment,
           u64 start,
           u64 end,
           enum drm_mm_search_flags flags)
{
 return drm_mm_insert_node_in_range_generic(mm, node, size, alignment,
         0, start, end, flags,
         DRM_MM_CREATE_DEFAULT);
}
void drm_mm_remove_node(struct drm_mm_node *node);
void drm_mm_replace_node(struct drm_mm_node *old, struct drm_mm_node *new);
void drm_mm_init(struct drm_mm *mm,
   u64 start,
   u64 size);
void drm_mm_takedown(struct drm_mm *mm);
_Bool drm_mm_clean(struct drm_mm *mm);
void drm_mm_init_scan(struct drm_mm *mm,
        u64 size,
        unsigned alignment,
        unsigned long color);
void drm_mm_init_scan_with_range(struct drm_mm *mm,
     u64 size,
     unsigned alignment,
     unsigned long color,
     u64 start,
     u64 end);
_Bool drm_mm_scan_add_block(struct drm_mm_node *node);
_Bool drm_mm_scan_remove_block(struct drm_mm_node *node);
void drm_mm_debug_table(struct drm_mm *mm, const char *prefix);
struct rb_node {
 struct { struct rb_node *rbe_left; struct rb_node *rbe_right; struct rb_node *rbe_parent; int rbe_color; } __entry;
};
struct rb_root {
 struct rb_node *rb_node;
};
int panic_cmp(struct rb_node *one, struct rb_node *two);
struct linux_root { struct rb_node *rbh_root; };
 void linux_root_RB_INSERT_COLOR(struct linux_root *, struct rb_node *); void linux_root_RB_REMOVE_COLOR(struct linux_root *, struct rb_node *, struct rb_node *); struct rb_node *linux_root_RB_REMOVE(struct linux_root *, struct rb_node *); struct rb_node *linux_root_RB_INSERT(struct linux_root *, struct rb_node *); struct rb_node *linux_root_RB_FIND(struct linux_root *, struct rb_node *); struct rb_node *linux_root_RB_NFIND(struct linux_root *, struct rb_node *); struct rb_node *linux_root_RB_NEXT(struct rb_node *); struct rb_node *linux_root_RB_PREV(struct rb_node *); struct rb_node *linux_root_RB_MINMAX(struct linux_root *, int);;
static inline void
rb_link_node(struct rb_node *node, struct rb_node *parent,
    struct rb_node **rb_link)
{
 ((node))->__entry.rbe_parent = (parent);
 ((node))->__entry.rbe_color = (1);
 node->__entry.rbe_left = node->__entry.rbe_right = ((void *)0);
 *rb_link = node;
}
static inline void
rb_replace_node(struct rb_node *victim, struct rb_node *new,
    struct rb_root *root)
{
 struct rb_node *p;
 p = (victim)->__entry.rbe_parent;
 if (p) {
  if (p->__entry.rbe_left == victim)
   p->__entry.rbe_left = new;
  else
   p->__entry.rbe_right = new;
 } else
  root->rb_node = new;
 if (victim->__entry.rbe_left)
  ((victim->__entry.rbe_left))->__entry.rbe_parent = (new);
 if (victim->__entry.rbe_right)
  ((victim->__entry.rbe_right))->__entry.rbe_parent = (new);
 *new = *victim;
}
struct interval_tree_node {
 struct rb_node rb;
 unsigned long start;
 unsigned long last;
};
static inline struct interval_tree_node *
interval_tree_iter_first(struct rb_root *root,
    unsigned long start, unsigned long last)
{
 return ((void *)0);
}
static inline void
interval_tree_insert(struct interval_tree_node *node, struct rb_root *root)
{
}
static inline void
interval_tree_remove(struct interval_tree_node *node, struct rb_root *root)
{
}
struct drm_vma_offset_file {
 struct rb_node vm_rb;
 struct file *vm_filp;
 unsigned long vm_count;
};
struct drm_vma_offset_node {
 rwlock_t vm_lock;
 struct drm_mm_node vm_node;
 struct rb_node vm_rb;
 struct rb_root vm_files;
};
struct drm_vma_offset_manager {
 rwlock_t vm_lock;
 struct rb_root vm_addr_space_rb;
 struct drm_mm vm_addr_space_mm;
};
void drm_vma_offset_manager_init(struct drm_vma_offset_manager *mgr,
     unsigned long page_offset, unsigned long size);
void drm_vma_offset_manager_destroy(struct drm_vma_offset_manager *mgr);
struct drm_vma_offset_node *drm_vma_offset_lookup(struct drm_vma_offset_manager *mgr,
        unsigned long start,
        unsigned long pages);
struct drm_vma_offset_node *drm_vma_offset_lookup_locked(struct drm_vma_offset_manager *mgr,
          unsigned long start,
          unsigned long pages);
int drm_vma_offset_add(struct drm_vma_offset_manager *mgr,
         struct drm_vma_offset_node *node, unsigned long pages);
void drm_vma_offset_remove(struct drm_vma_offset_manager *mgr,
      struct drm_vma_offset_node *node);
int drm_vma_node_allow(struct drm_vma_offset_node *node, struct file *filp);
void drm_vma_node_revoke(struct drm_vma_offset_node *node, struct file *filp);
_Bool drm_vma_node_is_allowed(struct drm_vma_offset_node *node,
        struct file *filp);
static inline struct drm_vma_offset_node *
drm_vma_offset_exact_lookup(struct drm_vma_offset_manager *mgr,
       unsigned long start,
       unsigned long pages)
{
 struct drm_vma_offset_node *node;
 node = drm_vma_offset_lookup(mgr, start, pages);
 return (node && node->vm_node.start == start) ? node : ((void *)0);
}
static inline void drm_vma_offset_lock_lookup(struct drm_vma_offset_manager *mgr)
{
 _rw_enter_read(&mgr->vm_lock );
}
static inline void drm_vma_offset_unlock_lookup(struct drm_vma_offset_manager *mgr)
{
 _rw_exit_read(&mgr->vm_lock );
}
static inline void drm_vma_node_reset(struct drm_vma_offset_node *node)
{
 __builtin_memset((node), (0), (sizeof(*node)));
 node->vm_files = (struct rb_root) { ((void *)0) };
 _rw_init_flags(&node->vm_lock, "drmvma", 0, ((void *)0));
}
static inline unsigned long drm_vma_node_start(struct drm_vma_offset_node *node)
{
 return node->vm_node.start;
}
static inline unsigned long drm_vma_node_size(struct drm_vma_offset_node *node)
{
 return node->vm_node.size;
}
static inline _Bool drm_vma_node_has_offset(struct drm_vma_offset_node *node)
{
 return drm_mm_node_allocated(&node->vm_node);
}
static inline __u64 drm_vma_node_offset_addr(struct drm_vma_offset_node *node)
{
 return ((__u64)node->vm_node.start) << 13;
}
static inline void drm_vma_node_unmap(struct drm_vma_offset_node *node,
          struct address_space *file_mapping)
{
 if (file_mapping && drm_vma_node_has_offset(node))
  ;
}
static inline int drm_vma_node_verify_access(struct drm_vma_offset_node *node,
          struct file *filp)
{
 return drm_vma_node_is_allowed(node, filp) ? 0 : -13;
}
struct ttm_bo_device;
struct drm_mm_node;
struct ttm_place {
 unsigned fpfn;
 unsigned lpfn;
 uint32_t flags;
};
struct ttm_placement {
 unsigned num_placement;
 const struct ttm_place *placement;
 unsigned num_busy_placement;
 const struct ttm_place *busy_placement;
};
struct ttm_bus_placement {
 void *addr;
 unsigned long base;
 unsigned long size;
 unsigned long offset;
 _Bool is_iomem;
 _Bool io_reserved_vm;
 uint64_t io_reserved_count;
 bus_space_handle_t bsh;
};
struct ttm_mem_reg {
 void *mm_node;
 unsigned long start;
 unsigned long size;
 unsigned long num_pages;
 uint32_t page_alignment;
 uint32_t mem_type;
 uint32_t placement;
 struct ttm_bus_placement bus;
};
enum ttm_bo_type {
 ttm_bo_type_device,
 ttm_bo_type_kernel,
 ttm_bo_type_sg
};
struct ttm_tt;
struct ttm_buffer_object {
 struct uvm_object uobj;
 struct ttm_bo_global *glob;
 struct ttm_bo_device *bdev;
 enum ttm_bo_type type;
 void (*destroy) (struct ttm_buffer_object *);
 unsigned long num_pages;
 size_t acc_size;
 struct kref kref;
 struct kref list_kref;
 struct ttm_mem_reg mem;
 struct uvm_object *persistent_swap_storage;
 struct ttm_tt *ttm;
 _Bool evicted;
 atomic_t cpu_writers;
 struct list_head lru;
 struct list_head ddestroy;
 struct list_head swap;
 struct list_head io_reserve_lru;
 unsigned long priv_flags;
 struct drm_vma_offset_node vma_node;
 uint64_t offset;
 uint32_t cur_placement;
 struct sg_table *sg;
 struct reservation_object *resv;
 struct reservation_object ttm_resv;
 struct rwlock wu_mutex;
};
struct ttm_bo_kmap_obj {
 void *virtual;
 struct vm_page *page;
 enum {
  ttm_bo_map_iomap = 1 | 0x80,
  ttm_bo_map_vmap = 2,
  ttm_bo_map_kmap = 3,
  ttm_bo_map_premapped = 4 | 0x80,
 } bo_kmap_type;
 struct ttm_buffer_object *bo;
};
static inline struct ttm_buffer_object *
ttm_bo_reference(struct ttm_buffer_object *bo)
{
 kref_get(&bo->kref);
 return bo;
}
extern int ttm_bo_wait(struct ttm_buffer_object *bo, _Bool lazy,
         _Bool interruptible, _Bool no_wait);
extern _Bool ttm_bo_mem_compat(struct ttm_placement *placement,
         struct ttm_mem_reg *mem,
         uint32_t *new_flags);
extern int ttm_bo_validate(struct ttm_buffer_object *bo,
    struct ttm_placement *placement,
    _Bool interruptible,
    _Bool no_wait_gpu);
extern void ttm_bo_unref(struct ttm_buffer_object **bo);
extern void ttm_bo_list_ref_sub(struct ttm_buffer_object *bo, int count,
    _Bool never_free);
extern void ttm_bo_add_to_lru(struct ttm_buffer_object *bo);
extern int ttm_bo_del_from_lru(struct ttm_buffer_object *bo);
extern int ttm_bo_lock_delayed_workqueue(struct ttm_bo_device *bdev);
extern void ttm_bo_unlock_delayed_workqueue(struct ttm_bo_device *bdev,
         int resched);
extern int
ttm_bo_synccpu_write_grab(struct ttm_buffer_object *bo, _Bool no_wait);
extern void ttm_bo_synccpu_write_release(struct ttm_buffer_object *bo);
size_t ttm_bo_acc_size(struct ttm_bo_device *bdev,
         unsigned long bo_size,
         unsigned struct_size);
size_t ttm_bo_dma_acc_size(struct ttm_bo_device *bdev,
      unsigned long bo_size,
      unsigned struct_size);
extern int ttm_bo_init(struct ttm_bo_device *bdev,
   struct ttm_buffer_object *bo,
   unsigned long size,
   enum ttm_bo_type type,
   struct ttm_placement *placement,
   uint32_t page_alignment,
   _Bool interrubtible,
   struct uvm_object *persistent_swap_storage,
   size_t acc_size,
   struct sg_table *sg,
   struct reservation_object *resv,
   void (*destroy) (struct ttm_buffer_object *));
extern int ttm_bo_create(struct ttm_bo_device *bdev,
    unsigned long size,
    enum ttm_bo_type type,
    struct ttm_placement *placement,
    uint32_t page_alignment,
    _Bool interruptible,
    struct uvm_object *persistent_swap_storage,
    struct ttm_buffer_object **p_bo);
extern int ttm_bo_init_mm(struct ttm_bo_device *bdev, unsigned type,
    unsigned long p_size);
extern int ttm_bo_clean_mm(struct ttm_bo_device *bdev, unsigned mem_type);
extern int ttm_bo_evict_mm(struct ttm_bo_device *bdev, unsigned mem_type);
static inline void *ttm_kmap_obj_virtual(struct ttm_bo_kmap_obj *map,
      _Bool *is_iomem)
{
 *is_iomem = !!(map->bo_kmap_type & 0x80);
 return map->virtual;
}
extern int ttm_bo_kmap(struct ttm_buffer_object *bo, unsigned long start_page,
         unsigned long num_pages, struct ttm_bo_kmap_obj *map);
extern void ttm_bo_kunmap(struct ttm_bo_kmap_obj *map);
extern struct uvm_object *ttm_bo_mmap(voff_t, vsize_t,
          struct ttm_bo_device *);
extern ssize_t ttm_bo_io(struct ttm_bo_device *bdev, struct file *filp,
    const char *wbuf, char *rbuf,
    size_t count, loff_t *f_pos, _Bool write);
extern void ttm_bo_swapout_all(struct ttm_bo_device *bdev);
extern int ttm_bo_wait_unreserved(struct ttm_buffer_object *bo);
struct ttm_mem_shrink {
 int (*do_shrink) (struct ttm_mem_shrink *);
};
struct ttm_mem_zone;
struct ttm_mem_global {
 struct kobject kobj;
 struct ttm_mem_shrink *shrink;
 struct workqueue_struct *swap_queue;
 struct work_struct work;
 spinlock_t lock;
 struct ttm_mem_zone *zones[2];
 unsigned int num_zones;
 struct ttm_mem_zone *zone_kernel;
 struct ttm_mem_zone *zone_dma32;
};
static inline void ttm_mem_init_shrink(struct ttm_mem_shrink *shrink,
           int (*func) (struct ttm_mem_shrink *))
{
 shrink->do_shrink = func;
}
static inline int ttm_mem_register_shrink(struct ttm_mem_global *glob,
       struct ttm_mem_shrink *shrink)
{
 __mtx_enter(&glob->lock );
 if (glob->shrink != ((void *)0)) {
  __mtx_leave(&glob->lock );
  return -16;
 }
 glob->shrink = shrink;
 __mtx_leave(&glob->lock );
 return 0;
}
static inline void ttm_mem_unregister_shrink(struct ttm_mem_global *glob,
          struct ttm_mem_shrink *shrink)
{
 __mtx_enter(&glob->lock );
 ((!(glob->shrink != shrink)) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../dev/pci/drm/ttm/ttm_memory.h", 135, "!(glob->shrink != shrink)"));
 glob->shrink = ((void *)0);
 __mtx_leave(&glob->lock );
}
extern int ttm_mem_global_init(struct ttm_mem_global *glob);
extern void ttm_mem_global_release(struct ttm_mem_global *glob);
extern int ttm_mem_global_alloc(struct ttm_mem_global *glob, uint64_t memory,
    _Bool no_wait, _Bool interruptible);
extern void ttm_mem_global_free(struct ttm_mem_global *glob,
    uint64_t amount);
extern int ttm_mem_global_alloc_page(struct ttm_mem_global *glob,
         struct vm_page *page,
         _Bool no_wait, _Bool interruptible);
extern void ttm_mem_global_free_page(struct ttm_mem_global *glob,
         struct vm_page *page);
extern size_t ttm_round_pot(size_t size);
enum drm_global_types {
 DRM_GLOBAL_TTM_MEM = 0,
 DRM_GLOBAL_TTM_BO,
 DRM_GLOBAL_TTM_OBJECT,
 DRM_GLOBAL_NUM
};
struct drm_global_reference {
 enum drm_global_types global_type;
 size_t size;
 void *object;
 int (*init) (struct drm_global_reference *);
 void (*release) (struct drm_global_reference *);
};
extern void drm_global_init(void);
extern void drm_global_release(void);
extern int drm_global_item_ref(struct drm_global_reference *ref);
extern void drm_global_item_unref(struct drm_global_reference *ref);
struct ttm_backend_func {
 int (*bind) (struct ttm_tt *ttm, struct ttm_mem_reg *bo_mem);
 int (*unbind) (struct ttm_tt *ttm);
 void (*destroy) (struct ttm_tt *ttm);
};
enum ttm_caching_state {
 tt_uncached,
 tt_wc,
 tt_cached
};
struct ttm_tt {
 struct ttm_bo_device *bdev;
 struct ttm_backend_func *func;
 struct vm_page *dummy_read_page;
 struct vm_page **pages;
 uint32_t page_flags;
 unsigned long num_pages;
 struct sg_table *sg;
 struct ttm_bo_global *glob;
 struct uvm_object *swap_storage;
 enum ttm_caching_state caching_state;
 enum {
  tt_bound,
  tt_unbound,
  tt_unpopulated,
 } state;
};
struct ttm_dma_tt {
 struct ttm_tt ttm;
 void **cpu_address;
 dma_addr_t *dma_address;
 struct list_head pages_list;
};
struct ttm_mem_type_manager;
struct ttm_mem_type_manager_func {
 int (*init)(struct ttm_mem_type_manager *man, unsigned long p_size);
 int (*takedown)(struct ttm_mem_type_manager *man);
 int (*get_node)(struct ttm_mem_type_manager *man,
    struct ttm_buffer_object *bo,
    const struct ttm_place *place,
    struct ttm_mem_reg *mem);
 void (*put_node)(struct ttm_mem_type_manager *man,
    struct ttm_mem_reg *mem);
 void (*debug)(struct ttm_mem_type_manager *man, const char *prefix);
};
struct ttm_mem_type_manager {
 struct ttm_bo_device *bdev;
 _Bool has_type;
 _Bool use_type;
 uint32_t flags;
 uint64_t gpu_offset;
 uint64_t size;
 uint32_t available_caching;
 uint32_t default_caching;
 const struct ttm_mem_type_manager_func *func;
 void *priv;
 struct rwlock io_reserve_mutex;
 _Bool use_io_reserve_lru;
 _Bool io_reserve_fastpath;
 struct list_head io_reserve_lru;
 struct list_head lru;
};
struct ttm_bo_driver {
 struct ttm_tt *(*ttm_tt_create)(struct ttm_bo_device *bdev,
     unsigned long size,
     uint32_t page_flags,
     struct vm_page *dummy_read_page);
 int (*ttm_tt_populate)(struct ttm_tt *ttm);
 void (*ttm_tt_unpopulate)(struct ttm_tt *ttm);
 int (*invalidate_caches) (struct ttm_bo_device *bdev, uint32_t flags);
 int (*init_mem_type) (struct ttm_bo_device *bdev, uint32_t type,
         struct ttm_mem_type_manager *man);
  void(*evict_flags) (struct ttm_buffer_object *bo,
    struct ttm_placement *placement);
 int (*move) (struct ttm_buffer_object *bo,
       _Bool evict, _Bool interruptible,
       _Bool no_wait_gpu,
       struct ttm_mem_reg *new_mem);
 int (*verify_access) (struct ttm_buffer_object *bo,
         struct file *filp);
 void (*move_notify)(struct ttm_buffer_object *bo,
       struct ttm_mem_reg *new_mem);
 int (*fault_reserve_notify)(struct ttm_buffer_object *bo);
 void (*swap_notify) (struct ttm_buffer_object *bo);
 int (*io_mem_reserve)(struct ttm_bo_device *bdev, struct ttm_mem_reg *mem);
 void (*io_mem_free)(struct ttm_bo_device *bdev, struct ttm_mem_reg *mem);
};
struct ttm_bo_global_ref {
 struct drm_global_reference ref;
 struct ttm_mem_global *mem_glob;
};
struct ttm_bo_global {
 struct kobject kobj;
 struct ttm_mem_global *mem_glob;
 struct vm_page *dummy_read_page;
 struct ttm_mem_shrink shrink;
 struct rwlock device_list_mutex;
 spinlock_t lru_lock;
 struct list_head device_list;
 struct list_head swap_lru;
 atomic_t bo_count;
};
struct ttm_bo_device {
 struct list_head device_list;
 struct ttm_bo_global *glob;
 struct ttm_bo_driver *driver;
 struct ttm_mem_type_manager man[8];
 bus_space_tag_t iot;
 bus_space_tag_t memt;
 bus_dma_tag_t dmat;
 struct drm_vma_offset_manager vma_manager;
 struct list_head ddestroy;
 uint32_t val_seq;
 struct address_space *dev_mapping;
 struct delayed_work wq;
 _Bool need_dma32;
};
static inline uint32_t
ttm_flag_masked(uint32_t *old, uint32_t new, uint32_t mask)
{
 *old ^= (*old ^ new) & mask;
 return *old;
}
extern int ttm_tt_init(struct ttm_tt *ttm, struct ttm_bo_device *bdev,
   unsigned long size, uint32_t page_flags,
   struct vm_page *dummy_read_page);
extern int ttm_dma_tt_init(struct ttm_dma_tt *ttm_dma, struct ttm_bo_device *bdev,
      unsigned long size, uint32_t page_flags,
      struct vm_page *dummy_read_page);
extern void ttm_tt_fini(struct ttm_tt *ttm);
extern void ttm_dma_tt_fini(struct ttm_dma_tt *ttm_dma);
extern int ttm_tt_bind(struct ttm_tt *ttm, struct ttm_mem_reg *bo_mem);
extern void ttm_tt_destroy(struct ttm_tt *ttm);
extern void ttm_tt_unbind(struct ttm_tt *ttm);
extern int ttm_tt_swapin(struct ttm_tt *ttm);
extern int ttm_tt_set_placement_caching(struct ttm_tt *ttm, uint32_t placement);
extern int ttm_tt_swapout(struct ttm_tt *ttm,
     struct uvm_object *persistent_swap_storage);
extern void ttm_tt_unpopulate(struct ttm_tt *ttm);
extern _Bool ttm_mem_reg_is_pci(struct ttm_bo_device *bdev,
       struct ttm_mem_reg *mem);
extern int ttm_bo_mem_space(struct ttm_buffer_object *bo,
    struct ttm_placement *placement,
    struct ttm_mem_reg *mem,
    _Bool interruptible,
    _Bool no_wait_gpu);
extern void ttm_bo_mem_put(struct ttm_buffer_object *bo,
      struct ttm_mem_reg *mem);
extern void ttm_bo_mem_put_locked(struct ttm_buffer_object *bo,
      struct ttm_mem_reg *mem);
extern void ttm_bo_global_release(struct drm_global_reference *ref);
extern int ttm_bo_global_init(struct drm_global_reference *ref);
extern int ttm_bo_device_release(struct ttm_bo_device *bdev);
extern int ttm_bo_device_init(struct ttm_bo_device *bdev,
         struct ttm_bo_global *glob,
         struct ttm_bo_driver *driver,
         struct address_space *mapping,
         uint64_t file_page_offset, _Bool need_dma32);
extern void ttm_bo_unmap_virtual(struct ttm_buffer_object *bo);
extern void ttm_bo_unmap_virtual_locked(struct ttm_buffer_object *bo);
extern int ttm_mem_io_reserve_vm(struct ttm_buffer_object *bo);
extern void ttm_mem_io_free_vm(struct ttm_buffer_object *bo);
extern int ttm_mem_io_lock(struct ttm_mem_type_manager *man,
      _Bool interruptible);
extern void ttm_mem_io_unlock(struct ttm_mem_type_manager *man);
extern void ttm_bo_del_sub_from_lru(struct ttm_buffer_object *bo);
extern void ttm_bo_add_to_lru(struct ttm_buffer_object *bo);
static inline int __ttm_bo_reserve(struct ttm_buffer_object *bo,
       _Bool interruptible,
       _Bool no_wait, _Bool use_ticket,
       struct ww_acquire_ctx *ticket)
{
 int ret = 0;
 if (no_wait) {
  _Bool success;
  if (({ int __ret = !!(ticket); if (__ret) printf("WARNING %s failed at %s:%d\n", "ticket", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../dev/pci/drm/ttm/ttm_bo_driver.h", 788); __builtin_expect(!!(__ret), 0); }))
   return -16;
  success = ww_mutex_trylock(&bo->resv->lock);
  return success ? 0 : -16;
 }
 if (interruptible)
  ret = ww_mutex_lock_interruptible(&bo->resv->lock, ticket);
 else
  ret = ww_mutex_lock(&bo->resv->lock, ticket);
 if (ret == -4)
  return -4;
 return ret;
}
static inline int ttm_bo_reserve(struct ttm_buffer_object *bo,
     _Bool interruptible,
     _Bool no_wait, _Bool use_ticket,
     struct ww_acquire_ctx *ticket)
{
 int ret;
 ({ int __ret = !!(!(*(&bo->kref.refcount))); if (__ret) printf("WARNING %s failed at %s:%d\n", "!(*(&bo->kref.refcount))", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../dev/pci/drm/ttm/ttm_bo_driver.h", 856); __builtin_expect(!!(__ret), 0); });
 ret = __ttm_bo_reserve(bo, interruptible, no_wait, use_ticket, ticket);
 if (__builtin_expect(!!(ret == 0), 1))
  ttm_bo_del_sub_from_lru(bo);
 return ret;
}
static inline int ttm_bo_reserve_slowpath(struct ttm_buffer_object *bo,
       _Bool interruptible,
       struct ww_acquire_ctx *ticket)
{
 int ret = 0;
 ({ int __ret = !!(!(*(&bo->kref.refcount))); if (__ret) printf("WARNING %s failed at %s:%d\n", "!(*(&bo->kref.refcount))", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../dev/pci/drm/ttm/ttm_bo_driver.h", 881); __builtin_expect(!!(__ret), 0); });
 if (interruptible)
  ret = ww_mutex_lock_slow_interruptible(&bo->resv->lock,
             ticket);
 else
  ww_mutex_lock_slow(&bo->resv->lock, ticket);
 if (__builtin_expect(!!(ret == 0), 1))
  ttm_bo_del_sub_from_lru(bo);
 else if (ret == -4)
  ret = -4;
 return ret;
}
static inline void __ttm_bo_unreserve(struct ttm_buffer_object *bo)
{
 ww_mutex_unlock(&bo->resv->lock);
}
static inline void ttm_bo_unreserve(struct ttm_buffer_object *bo)
{
 if (!(bo->mem.placement & (1 << 21))) {
  __mtx_enter(&bo->glob->lru_lock );
  ttm_bo_add_to_lru(bo);
  __mtx_leave(&bo->glob->lru_lock );
 }
 __ttm_bo_unreserve(bo);
}
static inline void ttm_bo_unreserve_ticket(struct ttm_buffer_object *bo,
        struct ww_acquire_ctx *t)
{
 ttm_bo_unreserve(bo);
}
int ttm_mem_io_reserve(struct ttm_bo_device *bdev,
         struct ttm_mem_reg *mem);
void ttm_mem_io_free(struct ttm_bo_device *bdev,
       struct ttm_mem_reg *mem);
extern int ttm_bo_move_ttm(struct ttm_buffer_object *bo,
      _Bool evict, _Bool no_wait_gpu,
      struct ttm_mem_reg *new_mem);
extern int ttm_bo_move_memcpy(struct ttm_buffer_object *bo,
         _Bool evict, _Bool no_wait_gpu,
         struct ttm_mem_reg *new_mem);
extern void ttm_bo_free_old_node(struct ttm_buffer_object *bo);
extern int ttm_bo_move_accel_cleanup(struct ttm_buffer_object *bo,
         struct fence *fence,
         _Bool evict, _Bool no_wait_gpu,
         struct ttm_mem_reg *new_mem);
extern pgprot_t ttm_io_prot(uint32_t caching_flags, pgprot_t tmp);
extern const struct ttm_mem_type_manager_func ttm_bo_manager_func;
static int ttm_bo_swapout(struct ttm_mem_shrink *shrink);
static void ttm_bo_global_kobj_release(struct kobject *kobj);
struct kobject *
ttm_get_kobj(void)
{
 return (((void *)0));
}
static inline int ttm_mem_type_from_place(const struct ttm_place *place,
       uint32_t *mem_type)
{
 int i;
 for (i = 0; i <= 8; i++)
  if (place->flags & (1 << i)) {
   *mem_type = i;
   return 0;
  }
 return -22;
}
static void ttm_mem_type_debug(struct ttm_bo_device *bdev, int mem_type)
{
 struct ttm_mem_type_manager *man = &bdev->man[mem_type];
 printf("[TTM] " "    has_type: %d\n", man->has_type);
 printf("[TTM] " "    use_type: %d\n", man->use_type);
 printf("[TTM] " "    flags: 0x%08X\n", man->flags);
 printf("[TTM] " "    gpu_offset: 0x%08llX\n", man->gpu_offset);
 printf("[TTM] " "    size: %llu\n", man->size);
 printf("[TTM] " "    available_caching: 0x%08X\n", man->available_caching);
 printf("[TTM] " "    default_caching: 0x%08X\n", man->default_caching);
 if (mem_type != 0)
  (*man->func->debug)(man, "[TTM] ");
}
static void ttm_bo_mem_space_debug(struct ttm_buffer_object *bo,
     struct ttm_placement *placement)
{
 int i, ret, mem_type;
 printf("[TTM] " "No space for %p (%lu pages, %luK, %luM)\n", bo, bo->mem.num_pages, bo->mem.size >> 10, bo->mem.size >> 20);
 for (i = 0; i < placement->num_placement; i++) {
  ret = ttm_mem_type_from_place(&placement->placement[i],
      &mem_type);
  if (ret)
   return;
  printf("[TTM] " "  placement[%d]=0x%08X (%d)\n", i, placement->placement[i].flags, mem_type);
  ttm_mem_type_debug(bo->bdev, mem_type);
 }
}
static struct kobj_type ttm_bo_glob_kobj_type = {
 .release = &ttm_bo_global_kobj_release,
};
static inline uint32_t ttm_bo_type_flags(unsigned type)
{
 return 1 << (type);
}
static void ttm_bo_release_list(struct kref *list_kref)
{
 struct ttm_buffer_object *bo =
     ({ const __typeof( ((struct ttm_buffer_object *)0)->list_kref ) *__mptr = (list_kref); (struct ttm_buffer_object *)( (char *)__mptr - __builtin_offsetof(struct ttm_buffer_object, list_kref) );});
 struct ttm_bo_device *bdev = bo->bdev;
 size_t acc_size = bo->acc_size;
 ((!((*(&bo->list_kref.refcount)))) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../dev/pci/drm/ttm/ttm_bo.c", 151, "!((*(&bo->list_kref.refcount)))"));
 ((!((*(&bo->kref.refcount)))) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../dev/pci/drm/ttm/ttm_bo.c", 152, "!((*(&bo->kref.refcount)))"));
 ((!((*(&bo->cpu_writers)))) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../dev/pci/drm/ttm/ttm_bo.c", 153, "!((*(&bo->cpu_writers)))"));
 ((!(bo->mem.mm_node != ((void *)0))) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../dev/pci/drm/ttm/ttm_bo.c", 154, "!(bo->mem.mm_node != ((void *)0))"));
 ((!(!list_empty(&bo->lru))) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../dev/pci/drm/ttm/ttm_bo.c", 155, "!(!list_empty(&bo->lru))"));
 ((!(!list_empty(&bo->ddestroy))) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../dev/pci/drm/ttm/ttm_bo.c", 156, "!(!list_empty(&bo->ddestroy))"));
 if (bo->ttm)
  ttm_tt_destroy(bo->ttm);
 __sync_fetch_and_sub(&bo->glob->bo_count, 1);
 if (bo->resv == &bo->ttm_resv)
  reservation_object_fini(&bo->ttm_resv);
 ;
 if (bo->destroy)
  bo->destroy(bo);
 else {
  kfree(bo);
 }
 ttm_mem_global_free(bdev->glob->mem_glob, acc_size);
}
void ttm_bo_add_to_lru(struct ttm_buffer_object *bo)
{
 struct ttm_bo_device *bdev = bo->bdev;
 struct ttm_mem_type_manager *man;
 if (!(bo->mem.placement & (1 << 21))) {
  ((!(!list_empty(&bo->lru))) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../dev/pci/drm/ttm/ttm_bo.c", 183, "!(!list_empty(&bo->lru))"));
  man = &bdev->man[bo->mem.mem_type];
  list_add_tail(&bo->lru, &man->lru);
  kref_get(&bo->list_kref);
  if (bo->ttm != ((void *)0)) {
   list_add_tail(&bo->swap, &bo->glob->swap_lru);
   kref_get(&bo->list_kref);
  }
 }
}
;
int ttm_bo_del_from_lru(struct ttm_buffer_object *bo)
{
 int put_count = 0;
 if (!list_empty(&bo->swap)) {
  list_del_init(&bo->swap);
  ++put_count;
 }
 if (!list_empty(&bo->lru)) {
  list_del_init(&bo->lru);
  ++put_count;
 }
 return put_count;
}
static void ttm_bo_ref_bug(struct kref *list_kref)
{
 do { panic("BUG at %s:%d", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../dev/pci/drm/ttm/ttm_bo.c", 220); } while (0);
}
void ttm_bo_list_ref_sub(struct ttm_buffer_object *bo, int count,
    _Bool never_free)
{
 kref_sub(&bo->list_kref, count,
   (never_free) ? ttm_bo_ref_bug : ttm_bo_release_list);
}
void ttm_bo_del_sub_from_lru(struct ttm_buffer_object *bo)
{
 int put_count;
 __mtx_enter(&bo->glob->lru_lock );
 put_count = ttm_bo_del_from_lru(bo);
 __mtx_leave(&bo->glob->lru_lock );
 ttm_bo_list_ref_sub(bo, put_count, 1);
}
;
static int ttm_bo_add_ttm(struct ttm_buffer_object *bo, _Bool zero_alloc)
{
 struct ttm_bo_device *bdev = bo->bdev;
 struct ttm_bo_global *glob = bo->glob;
 int ret = 0;
 uint32_t page_flags = 0;
 ;
 bo->ttm = ((void *)0);
 if (bdev->need_dma32)
  page_flags |= (1 << 7);
 switch (bo->type) {
 case ttm_bo_type_device:
  if (zero_alloc)
   page_flags |= (1 << 6);
 case ttm_bo_type_kernel:
  bo->ttm = bdev->driver->ttm_tt_create(bdev, bo->num_pages << 13,
            page_flags, glob->dummy_read_page);
  if (__builtin_expect(!!(bo->ttm == ((void *)0)), 0))
   ret = -12;
  break;
 case ttm_bo_type_sg:
  bo->ttm = bdev->driver->ttm_tt_create(bdev, bo->num_pages << 13,
            page_flags | (1 << 8),
            glob->dummy_read_page);
  if (__builtin_expect(!!(bo->ttm == ((void *)0)), 0)) {
   ret = -12;
   break;
  }
  bo->ttm->sg = bo->sg;
  break;
 default:
  printf("[TTM] " "Illegal buffer object type\n");
  ret = -22;
  break;
 }
 return ret;
}
static int ttm_bo_handle_move_mem(struct ttm_buffer_object *bo,
      struct ttm_mem_reg *mem,
      _Bool evict, _Bool interruptible,
      _Bool no_wait_gpu)
{
 struct ttm_bo_device *bdev = bo->bdev;
 _Bool old_is_pci = ttm_mem_reg_is_pci(bdev, &bo->mem);
 _Bool new_is_pci = ttm_mem_reg_is_pci(bdev, mem);
 struct ttm_mem_type_manager *old_man = &bdev->man[bo->mem.mem_type];
 struct ttm_mem_type_manager *new_man = &bdev->man[mem->mem_type];
 int ret = 0;
 if (old_is_pci || new_is_pci ||
     ((mem->placement & bo->mem.placement & ((1 << 16) | (1 << 17) | (1 << 18))) == 0)) {
  ret = ttm_mem_io_lock(old_man, 1);
  if (__builtin_expect(!!(ret != 0), 0))
   goto out_err;
  ttm_bo_unmap_virtual_locked(bo);
  ttm_mem_io_unlock(old_man);
 }
 if (!(new_man->flags & (1 << 0))) {
  if (bo->ttm == ((void *)0)) {
   _Bool zero = !(old_man->flags & (1 << 0));
   ret = ttm_bo_add_ttm(bo, zero);
   if (ret)
    goto out_err;
  }
  ret = ttm_tt_set_placement_caching(bo->ttm, mem->placement);
  if (ret)
   goto out_err;
  if (mem->mem_type != 0) {
   ret = ttm_tt_bind(bo->ttm, mem);
   if (ret)
    goto out_err;
  }
  if (bo->mem.mem_type == 0) {
   if (bdev->driver->move_notify)
    bdev->driver->move_notify(bo, mem);
   bo->mem = *mem;
   mem->mm_node = ((void *)0);
   goto moved;
  }
 }
 if (bdev->driver->move_notify)
  bdev->driver->move_notify(bo, mem);
 if (!(old_man->flags & (1 << 0)) &&
     !(new_man->flags & (1 << 0)))
  ret = ttm_bo_move_ttm(bo, evict, no_wait_gpu, mem);
 else if (bdev->driver->move)
  ret = bdev->driver->move(bo, evict, interruptible,
      no_wait_gpu, mem);
 else
  ret = ttm_bo_move_memcpy(bo, evict, no_wait_gpu, mem);
 if (ret) {
  if (bdev->driver->move_notify) {
   struct ttm_mem_reg tmp_mem = *mem;
   *mem = bo->mem;
   bo->mem = tmp_mem;
   bdev->driver->move_notify(bo, mem);
   bo->mem = *mem;
   *mem = tmp_mem;
  }
  goto out_err;
 }
moved:
 if (bo->evicted) {
  if (bdev->driver->invalidate_caches) {
   ret = bdev->driver->invalidate_caches(bdev, bo->mem.placement);
   if (ret)
    printf("[TTM] " "Can not flush read caches\n");
  }
  bo->evicted = 0;
 }
 if (bo->mem.mm_node) {
  bo->offset = (bo->mem.start << 13) +
      bdev->man[bo->mem.mem_type].gpu_offset;
  bo->cur_placement = bo->mem.placement;
 } else
  bo->offset = 0;
 return 0;
out_err:
 new_man = &bdev->man[bo->mem.mem_type];
 if ((new_man->flags & (1 << 0)) && bo->ttm) {
  ttm_tt_unbind(bo->ttm);
  ttm_tt_destroy(bo->ttm);
  bo->ttm = ((void *)0);
 }
 return ret;
}
static void ttm_bo_cleanup_memtype_use(struct ttm_buffer_object *bo)
{
 if (bo->bdev->driver->move_notify)
  bo->bdev->driver->move_notify(bo, ((void *)0));
 if (bo->ttm) {
  ttm_tt_unbind(bo->ttm);
  ttm_tt_destroy(bo->ttm);
  bo->ttm = ((void *)0);
 }
 ttm_bo_mem_put(bo, &bo->mem);
 ww_mutex_unlock (&bo->resv->lock);
}
static void ttm_bo_flush_all_fences(struct ttm_buffer_object *bo)
{
 struct reservation_object_list *fobj;
 struct fence *fence;
 int i;
 fobj = reservation_object_get_list(bo->resv);
 fence = reservation_object_get_excl(bo->resv);
 if (fence && !fence->ops->signaled)
  fence_enable_sw_signaling(fence);
 for (i = 0; fobj && i < fobj->shared_count; ++i) {
  fence = (fobj->shared[i]);
  if (!fence->ops->signaled)
   fence_enable_sw_signaling(fence);
 }
}
static void ttm_bo_cleanup_refs_or_queue(struct ttm_buffer_object *bo)
{
 struct ttm_bo_device *bdev = bo->bdev;
 struct ttm_bo_global *glob = bo->glob;
 int put_count;
 int ret;
 __mtx_enter(&glob->lru_lock );
 ret = __ttm_bo_reserve(bo, 0, 1, 0, ((void *)0));
 if (!ret) {
  if (!ttm_bo_wait(bo, 0, 0, 1)) {
   put_count = ttm_bo_del_from_lru(bo);
   __mtx_leave(&glob->lru_lock );
   ttm_bo_cleanup_memtype_use(bo);
   ttm_bo_list_ref_sub(bo, put_count, 1);
   return;
  } else
   ttm_bo_flush_all_fences(bo);
  if (bo->mem.placement & (1 << 21)) {
   bo->mem.placement &= ~(1 << 21);
   ttm_bo_add_to_lru(bo);
  }
  __ttm_bo_unreserve(bo);
 }
 kref_get(&bo->list_kref);
 list_add_tail(&bo->ddestroy, &bdev->ddestroy);
 __mtx_leave(&glob->lru_lock );
 schedule_delayed_work(&bdev->wq,
         ((hz / 100) < 1) ? 1 : hz / 100);
}
static int ttm_bo_cleanup_refs_and_unlock(struct ttm_buffer_object *bo,
       _Bool interruptible,
       _Bool no_wait_gpu)
{
 struct ttm_bo_global *glob = bo->glob;
 int put_count;
 int ret;
 ret = ttm_bo_wait(bo, 0, 0, 1);
 if (ret && !no_wait_gpu) {
  long lret;
  ww_mutex_unlock(&bo->resv->lock);
  __mtx_leave(&glob->lru_lock );
  lret = reservation_object_wait_timeout_rcu(bo->resv,
          1,
          interruptible,
          30 * hz);
  if (lret < 0)
   return lret;
  else if (lret == 0)
   return -16;
  __mtx_enter(&glob->lru_lock );
  ret = __ttm_bo_reserve(bo, 0, 1, 0, ((void *)0));
  if (ret) {
   __mtx_leave(&glob->lru_lock );
   return 0;
  }
  ret = ttm_bo_wait(bo, 0, 0, 1);
  ({ int __ret = !!(ret); if (__ret) printf("WARNING %s failed at %s:%d\n", "ret", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../dev/pci/drm/ttm/ttm_bo.c", 538); __builtin_expect(!!(__ret), 0); });
 }
 if (ret || __builtin_expect(!!(list_empty(&bo->ddestroy)), 0)) {
  __ttm_bo_unreserve(bo);
  __mtx_leave(&glob->lru_lock );
  return ret;
 }
 put_count = ttm_bo_del_from_lru(bo);
 list_del_init(&bo->ddestroy);
 ++put_count;
 __mtx_leave(&glob->lru_lock );
 ttm_bo_cleanup_memtype_use(bo);
 ttm_bo_list_ref_sub(bo, put_count, 1);
 return 0;
}
static int ttm_bo_delayed_delete(struct ttm_bo_device *bdev, _Bool remove_all)
{
 struct ttm_bo_global *glob = bdev->glob;
 struct ttm_buffer_object *entry = ((void *)0);
 int ret = 0;
 __mtx_enter(&glob->lru_lock );
 if (list_empty(&bdev->ddestroy))
  goto out_unlock;
 entry = ({ const __typeof( ((struct ttm_buffer_object *)0)->ddestroy ) *__mptr = ((&bdev->ddestroy)->next); (struct ttm_buffer_object *)( (char *)__mptr - __builtin_offsetof(struct ttm_buffer_object, ddestroy) );});
 kref_get(&entry->list_kref);
 for (;;) {
  struct ttm_buffer_object *nentry = ((void *)0);
  if (entry->ddestroy.next != &bdev->ddestroy) {
   nentry = ({ const __typeof( ((struct ttm_buffer_object *)0)->ddestroy ) *__mptr = ((&entry->ddestroy)->next); (struct ttm_buffer_object *)( (char *)__mptr - __builtin_offsetof(struct ttm_buffer_object, ddestroy) );});
   kref_get(&nentry->list_kref);
  }
  ret = __ttm_bo_reserve(entry, 0, 1, 0, ((void *)0));
  if (remove_all && ret) {
   __mtx_leave(&glob->lru_lock );
   ret = __ttm_bo_reserve(entry, 0, 0,
            0, ((void *)0));
   __mtx_enter(&glob->lru_lock );
  }
  if (!ret)
   ret = ttm_bo_cleanup_refs_and_unlock(entry, 0,
            !remove_all);
  else
   __mtx_leave(&glob->lru_lock );
  kref_put(&entry->list_kref, ttm_bo_release_list);
  entry = nentry;
  if (ret || !entry)
   goto out;
  __mtx_enter(&glob->lru_lock );
  if (list_empty(&entry->ddestroy))
   break;
 }
out_unlock:
 __mtx_leave(&glob->lru_lock );
out:
 if (entry)
  kref_put(&entry->list_kref, ttm_bo_release_list);
 return ret;
}
static void ttm_bo_delayed_workqueue(struct work_struct *work)
{
 struct ttm_bo_device *bdev =
     ({ const __typeof( ((struct ttm_bo_device *)0)->wq.work ) *__mptr = (work); (struct ttm_bo_device *)( (char *)__mptr - __builtin_offsetof(struct ttm_bo_device, wq.work) );});
 if (ttm_bo_delayed_delete(bdev, 0)) {
  schedule_delayed_work(&bdev->wq,
          ((hz / 100) < 1) ? 1 : hz / 100);
 }
}
static void ttm_bo_release(struct kref *kref)
{
 struct ttm_buffer_object *bo =
     ({ const __typeof( ((struct ttm_buffer_object *)0)->kref ) *__mptr = (kref); (struct ttm_buffer_object *)( (char *)__mptr - __builtin_offsetof(struct ttm_buffer_object, kref) );});
 struct ttm_bo_device *bdev = bo->bdev;
 struct ttm_mem_type_manager *man = &bdev->man[bo->mem.mem_type];
 drm_vma_offset_remove(&bdev->vma_manager, &bo->vma_node);
 ttm_mem_io_lock(man, 0);
 ttm_mem_io_free_vm(bo);
 ttm_mem_io_unlock(man);
 ttm_bo_cleanup_refs_or_queue(bo);
 kref_put(&bo->list_kref, ttm_bo_release_list);
}
void ttm_bo_unref(struct ttm_buffer_object **p_bo)
{
 struct ttm_buffer_object *bo = *p_bo;
 *p_bo = ((void *)0);
 kref_put(&bo->kref, ttm_bo_release);
}
;
int ttm_bo_lock_delayed_workqueue(struct ttm_bo_device *bdev)
{
 return cancel_delayed_work_sync(&bdev->wq);
}
;
void ttm_bo_unlock_delayed_workqueue(struct ttm_bo_device *bdev, int resched)
{
 if (resched)
  schedule_delayed_work(&bdev->wq,
          ((hz / 100) < 1) ? 1 : hz / 100);
}
;
static int ttm_bo_evict(struct ttm_buffer_object *bo, _Bool interruptible,
   _Bool no_wait_gpu)
{
 struct ttm_bo_device *bdev = bo->bdev;
 struct ttm_mem_reg evict_mem;
 struct ttm_placement placement;
 int ret = 0;
 ret = ttm_bo_wait(bo, 0, interruptible, no_wait_gpu);
 if (__builtin_expect(!!(ret != 0), 0)) {
  if (ret != -4) {
   printf("[TTM] " "Failed to expire sync object before buffer eviction\n");
  }
  goto out;
 }
 evict_mem = bo->mem;
 evict_mem.mm_node = ((void *)0);
 evict_mem.bus.io_reserved_vm = 0;
 evict_mem.bus.io_reserved_count = 0;
 placement.num_placement = 0;
 placement.num_busy_placement = 0;
 bdev->driver->evict_flags(bo, &placement);
 ret = ttm_bo_mem_space(bo, &placement, &evict_mem, interruptible,
    no_wait_gpu);
 if (ret) {
  if (ret != -4) {
   printf("[TTM] " "Failed to find memory space for buffer 0x%p eviction\n", bo);
   ttm_bo_mem_space_debug(bo, &placement);
  }
  goto out;
 }
 ret = ttm_bo_handle_move_mem(bo, &evict_mem, 1, interruptible,
         no_wait_gpu);
 if (ret) {
  if (ret != -4)
   printf("[TTM] " "Buffer eviction failed\n");
  ttm_bo_mem_put(bo, &evict_mem);
  goto out;
 }
 bo->evicted = 1;
out:
 return ret;
}
static int ttm_mem_evict_first(struct ttm_bo_device *bdev,
    uint32_t mem_type,
    const struct ttm_place *place,
    _Bool interruptible,
    _Bool no_wait_gpu)
{
 struct ttm_bo_global *glob = bdev->glob;
 struct ttm_mem_type_manager *man = &bdev->man[mem_type];
 struct ttm_buffer_object *bo;
 int ret = -16, put_count;
 __mtx_enter(&glob->lru_lock );
 for (bo = ({ const __typeof( ((__typeof(*bo) *)0)->lru ) *__mptr = ((&man->lru)->next); (__typeof(*bo) *)( (char *)__mptr - __builtin_offsetof(__typeof(*bo), lru) );}); &bo->lru != (&man->lru); bo = ({ const __typeof( ((__typeof(*bo) *)0)->lru ) *__mptr = (bo->lru.next); (__typeof(*bo) *)( (char *)__mptr - __builtin_offsetof(__typeof(*bo), lru) );})) {
  ret = __ttm_bo_reserve(bo, 0, 1, 0, ((void *)0));
  if (!ret) {
   if (place && (place->fpfn || place->lpfn)) {
    if (place->fpfn >= (bo->mem.start + bo->mem.size) ||
        (place->lpfn && place->lpfn <= bo->mem.start)) {
     __ttm_bo_unreserve(bo);
     ret = -16;
     continue;
    }
   }
   break;
  }
 }
 if (ret) {
  __mtx_leave(&glob->lru_lock );
  return ret;
 }
 kref_get(&bo->list_kref);
 if (!list_empty(&bo->ddestroy)) {
  ret = ttm_bo_cleanup_refs_and_unlock(bo, interruptible,
           no_wait_gpu);
  kref_put(&bo->list_kref, ttm_bo_release_list);
  return ret;
 }
 put_count = ttm_bo_del_from_lru(bo);
 __mtx_leave(&glob->lru_lock );
 ((!(ret != 0)) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../dev/pci/drm/ttm/ttm_bo.c", 770, "!(ret != 0)"));
 ttm_bo_list_ref_sub(bo, put_count, 1);
 ret = ttm_bo_evict(bo, interruptible, no_wait_gpu);
 ttm_bo_unreserve(bo);
 kref_put(&bo->list_kref, ttm_bo_release_list);
 return ret;
}
void ttm_bo_mem_put(struct ttm_buffer_object *bo, struct ttm_mem_reg *mem)
{
 struct ttm_mem_type_manager *man = &bo->bdev->man[mem->mem_type];
 if (mem->mm_node)
  (*man->func->put_node)(man, mem);
}
;
static int ttm_bo_mem_force_space(struct ttm_buffer_object *bo,
     uint32_t mem_type,
     const struct ttm_place *place,
     struct ttm_mem_reg *mem,
     _Bool interruptible,
     _Bool no_wait_gpu)
{
 struct ttm_bo_device *bdev = bo->bdev;
 struct ttm_mem_type_manager *man = &bdev->man[mem_type];
 int ret;
 do {
  ret = (*man->func->get_node)(man, bo, place, mem);
  if (__builtin_expect(!!(ret != 0), 0))
   return ret;
  if (mem->mm_node)
   break;
  ret = ttm_mem_evict_first(bdev, mem_type, place,
       interruptible, no_wait_gpu);
  if (__builtin_expect(!!(ret != 0), 0))
   return ret;
 } while (1);
 if (mem->mm_node == ((void *)0))
  return -12;
 mem->mem_type = mem_type;
 return 0;
}
static uint32_t ttm_bo_select_caching(struct ttm_mem_type_manager *man,
          uint32_t cur_placement,
          uint32_t proposed_placement)
{
 uint32_t caching = proposed_placement & ((1 << 16) | (1 << 17) | (1 << 18));
 uint32_t result = proposed_placement & ~((1 << 16) | (1 << 17) | (1 << 18));
 if ((cur_placement & caching) != 0)
  result |= (cur_placement & caching);
 else if ((man->default_caching & caching) != 0)
  result |= man->default_caching;
 else if (((1 << 16) & caching) != 0)
  result |= (1 << 16);
 else if (((1 << 18) & caching) != 0)
  result |= (1 << 18);
 else if (((1 << 17) & caching) != 0)
  result |= (1 << 17);
 return result;
}
static _Bool ttm_bo_mt_compatible(struct ttm_mem_type_manager *man,
     uint32_t mem_type,
     const struct ttm_place *place,
     uint32_t *masked_placement)
{
 uint32_t cur_flags = ttm_bo_type_flags(mem_type);
 if ((cur_flags & place->flags & 0x0000FFFF) == 0)
  return 0;
 if ((place->flags & man->available_caching) == 0)
  return 0;
 cur_flags |= (place->flags & man->available_caching);
 *masked_placement = cur_flags;
 return 1;
}
int ttm_bo_mem_space(struct ttm_buffer_object *bo,
   struct ttm_placement *placement,
   struct ttm_mem_reg *mem,
   _Bool interruptible,
   _Bool no_wait_gpu)
{
 struct ttm_bo_device *bdev = bo->bdev;
 struct ttm_mem_type_manager *man;
 uint32_t mem_type = 0;
 uint32_t cur_flags = 0;
 _Bool type_found = 0;
 _Bool type_ok = 0;
 _Bool has_erestartsys = 0;
 int i, ret;
 mem->mm_node = ((void *)0);
 for (i = 0; i < placement->num_placement; ++i) {
  const struct ttm_place *place = &placement->placement[i];
  ret = ttm_mem_type_from_place(place, &mem_type);
  if (ret)
   return ret;
  man = &bdev->man[mem_type];
  if (!man->has_type || !man->use_type)
   continue;
  type_ok = ttm_bo_mt_compatible(man, mem_type, place,
      &cur_flags);
  if (!type_ok)
   continue;
  type_found = 1;
  cur_flags = ttm_bo_select_caching(man, bo->mem.placement,
        cur_flags);
  ttm_flag_masked(&cur_flags, place->flags,
    ~(0x0000FFFF | ((1 << 16) | (1 << 17) | (1 << 18))));
  if (mem_type == 0)
   break;
  ret = (*man->func->get_node)(man, bo, place, mem);
  if (__builtin_expect(!!(ret), 0))
   return ret;
  if (mem->mm_node)
   break;
 }
 if ((type_ok && (mem_type == 0)) || mem->mm_node) {
  mem->mem_type = mem_type;
  mem->placement = cur_flags;
  return 0;
 }
 for (i = 0; i < placement->num_busy_placement; ++i) {
  const struct ttm_place *place = &placement->busy_placement[i];
  ret = ttm_mem_type_from_place(place, &mem_type);
  if (ret)
   return ret;
  man = &bdev->man[mem_type];
  if (!man->has_type || !man->use_type)
   continue;
  if (!ttm_bo_mt_compatible(man, mem_type, place, &cur_flags))
   continue;
  type_found = 1;
  cur_flags = ttm_bo_select_caching(man, bo->mem.placement,
        cur_flags);
  ttm_flag_masked(&cur_flags, place->flags,
    ~(0x0000FFFF | ((1 << 16) | (1 << 17) | (1 << 18))));
  if (mem_type == 0) {
   mem->mem_type = mem_type;
   mem->placement = cur_flags;
   mem->mm_node = ((void *)0);
   return 0;
  }
  ret = ttm_bo_mem_force_space(bo, mem_type, place, mem,
      interruptible, no_wait_gpu);
  if (ret == 0 && mem->mm_node) {
   mem->placement = cur_flags;
   return 0;
  }
  if (ret == -4)
   has_erestartsys = 1;
 }
 if (!type_found) {
  printf("" "[TTM] " "No compatible memory type found.\n");
  return -22;
 }
 return (has_erestartsys) ? -4 : -12;
}
;
static int ttm_bo_move_buffer(struct ttm_buffer_object *bo,
   struct ttm_placement *placement,
   _Bool interruptible,
   _Bool no_wait_gpu)
{
 int ret = 0;
 struct ttm_mem_reg mem;
 ret = ttm_bo_wait(bo, 0, interruptible, no_wait_gpu);
 if (ret)
  return ret;
 mem.num_pages = bo->num_pages;
 mem.size = mem.num_pages << 13;
 mem.page_alignment = bo->mem.page_alignment;
 mem.bus.io_reserved_vm = 0;
 mem.bus.io_reserved_count = 0;
 ret = ttm_bo_mem_space(bo, placement, &mem,
          interruptible, no_wait_gpu);
 if (ret)
  goto out_unlock;
 ret = ttm_bo_handle_move_mem(bo, &mem, 0,
         interruptible, no_wait_gpu);
out_unlock:
 if (ret && mem.mm_node)
  ttm_bo_mem_put(bo, &mem);
 return ret;
}
_Bool ttm_bo_mem_compat(struct ttm_placement *placement,
         struct ttm_mem_reg *mem,
         uint32_t *new_flags)
{
 int i;
 for (i = 0; i < placement->num_placement; i++) {
  const struct ttm_place *heap = &placement->placement[i];
  if (mem->mm_node &&
      (mem->start < heap->fpfn ||
       (heap->lpfn != 0 && (mem->start + mem->num_pages) > heap->lpfn)))
   continue;
  *new_flags = heap->flags;
  if ((*new_flags & mem->placement & ((1 << 16) | (1 << 17) | (1 << 18))) &&
      (*new_flags & mem->placement & 0x0000FFFF))
   return 1;
 }
 for (i = 0; i < placement->num_busy_placement; i++) {
  const struct ttm_place *heap = &placement->busy_placement[i];
  if (mem->mm_node &&
      (mem->start < heap->fpfn ||
       (heap->lpfn != 0 && (mem->start + mem->num_pages) > heap->lpfn)))
   continue;
  *new_flags = heap->flags;
  if ((*new_flags & mem->placement & ((1 << 16) | (1 << 17) | (1 << 18))) &&
      (*new_flags & mem->placement & 0x0000FFFF))
   return 1;
 }
 return 0;
}
;
int ttm_bo_validate(struct ttm_buffer_object *bo,
   struct ttm_placement *placement,
   _Bool interruptible,
   _Bool no_wait_gpu)
{
 int ret;
 uint32_t new_flags;
 if (!ttm_bo_mem_compat(placement, &bo->mem, &new_flags)) {
  ret = ttm_bo_move_buffer(bo, placement, interruptible,
      no_wait_gpu);
  if (ret)
   return ret;
 } else {
  ttm_flag_masked(&bo->mem.placement, new_flags,
    ~(0x0000FFFF | ((1 << 16) | (1 << 17) | (1 << 18))));
 }
 if (bo->mem.mem_type == 0 && bo->ttm == ((void *)0)) {
  ret = ttm_bo_add_ttm(bo, 1);
  if (ret)
   return ret;
 }
 return 0;
}
;
int ttm_bo_init(struct ttm_bo_device *bdev,
  struct ttm_buffer_object *bo,
  unsigned long size,
  enum ttm_bo_type type,
  struct ttm_placement *placement,
  uint32_t page_alignment,
  _Bool interruptible,
  struct uvm_object *persistent_swap_storage,
  size_t acc_size,
  struct sg_table *sg,
  struct reservation_object *resv,
  void (*destroy) (struct ttm_buffer_object *))
{
 int ret = 0;
 unsigned long num_pages;
 struct ttm_mem_global *mem_glob = bdev->glob->mem_glob;
 _Bool locked;
 ret = ttm_mem_global_alloc(mem_glob, acc_size, 0, 0);
 if (ret) {
  printf("[TTM] " "Out of kernel memory\n");
  if (destroy)
   (*destroy)(bo);
  else
   kfree(bo);
  return -12;
 }
 num_pages = (size + (1 << 13) - 1) >> 13;
 if (num_pages == 0) {
  printf("[TTM] " "Illegal buffer object size\n");
  if (destroy)
   (*destroy)(bo);
  else
   kfree(bo);
  ttm_mem_global_free(mem_glob, acc_size);
  return -22;
 }
 bo->destroy = destroy;
 uvm_objinit(&bo->uobj, ((void *)0), 0);
 kref_init(&bo->kref);
 kref_init(&bo->list_kref);
 (*(&bo->cpu_writers) = (0));
 INIT_LIST_HEAD(&bo->lru);
 INIT_LIST_HEAD(&bo->ddestroy);
 INIT_LIST_HEAD(&bo->swap);
 INIT_LIST_HEAD(&bo->io_reserve_lru);
 _rw_init_flags(&bo->wu_mutex, "ttmwu", 0, ((void *)0));
 bo->bdev = bdev;
 bo->glob = bdev->glob;
 bo->type = type;
 bo->num_pages = num_pages;
 bo->mem.size = num_pages << 13;
 bo->mem.mem_type = 0;
 bo->mem.num_pages = bo->num_pages;
 bo->mem.mm_node = ((void *)0);
 bo->mem.page_alignment = page_alignment;
 bo->mem.bus.io_reserved_vm = 0;
 bo->mem.bus.io_reserved_count = 0;
 bo->priv_flags = 0;
 bo->mem.placement = ((1 << 0) | (1 << 16));
 bo->persistent_swap_storage = persistent_swap_storage;
 bo->acc_size = acc_size;
 bo->sg = sg;
 if (resv) {
  bo->resv = resv;
 } else {
  bo->resv = &bo->ttm_resv;
  reservation_object_init(&bo->ttm_resv);
 }
 __sync_fetch_and_add(&bo->glob->bo_count, 1);
 drm_vma_node_reset(&bo->vma_node);
 if (bo->type == ttm_bo_type_device ||
     bo->type == ttm_bo_type_sg)
  ret = drm_vma_offset_add(&bdev->vma_manager, &bo->vma_node,
      bo->mem.num_pages);
 if (!resv) {
  locked = ww_mutex_trylock(&bo->resv->lock);
  ({ int __ret = !!(!locked); if (__ret) printf("WARNING %s failed at %s:%d\n", "!locked", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../dev/pci/drm/ttm/ttm_bo.c", 1187); __builtin_expect(!!(__ret), 0); });
 }
 if (__builtin_expect(!!(!ret), 1))
  ret = ttm_bo_validate(bo, placement, interruptible, 0);
 if (!resv)
  ttm_bo_unreserve(bo);
 if (__builtin_expect(!!(ret), 0))
  ttm_bo_unref(&bo);
 return ret;
}
;
size_t ttm_bo_acc_size(struct ttm_bo_device *bdev,
         unsigned long bo_size,
         unsigned struct_size)
{
 unsigned npages = ((((bo_size) + ((1 << 13) - 1)) & ~((1 << 13) - 1))) >> 13;
 size_t size = 0;
 size += ttm_round_pot(struct_size);
 size += (((npages * sizeof(void *)) + ((1 << 13) - 1)) & ~((1 << 13) - 1));
 size += ttm_round_pot(sizeof(struct ttm_tt));
 return size;
}
;
size_t ttm_bo_dma_acc_size(struct ttm_bo_device *bdev,
      unsigned long bo_size,
      unsigned struct_size)
{
 unsigned npages = ((((bo_size) + ((1 << 13) - 1)) & ~((1 << 13) - 1))) >> 13;
 size_t size = 0;
 size += ttm_round_pot(struct_size);
 size += (((npages * sizeof(void *)) + ((1 << 13) - 1)) & ~((1 << 13) - 1));
 size += (((npages * sizeof(dma_addr_t)) + ((1 << 13) - 1)) & ~((1 << 13) - 1));
 size += ttm_round_pot(sizeof(struct ttm_dma_tt));
 return size;
}
;
int ttm_bo_create(struct ttm_bo_device *bdev,
   unsigned long size,
   enum ttm_bo_type type,
   struct ttm_placement *placement,
   uint32_t page_alignment,
   _Bool interruptible,
   struct uvm_object *persistent_swap_storage,
   struct ttm_buffer_object **p_bo)
{
 struct ttm_buffer_object *bo;
 size_t acc_size;
 int ret;
 bo = kzalloc(sizeof(*bo), (0x0001 | 0x0004));
 if (__builtin_expect(!!(bo == ((void *)0)), 0))
  return -12;
 acc_size = ttm_bo_acc_size(bdev, size, sizeof(struct ttm_buffer_object));
 ret = ttm_bo_init(bdev, bo, size, type, placement, page_alignment,
     interruptible, persistent_swap_storage, acc_size,
     ((void *)0), ((void *)0), ((void *)0));
 if (__builtin_expect(!!(ret == 0), 1))
  *p_bo = bo;
 return ret;
}
;
static int ttm_bo_force_list_clean(struct ttm_bo_device *bdev,
     unsigned mem_type, _Bool allow_errors)
{
 struct ttm_mem_type_manager *man = &bdev->man[mem_type];
 struct ttm_bo_global *glob = bdev->glob;
 int ret;
 __mtx_enter(&glob->lru_lock );
 while (!list_empty(&man->lru)) {
  __mtx_leave(&glob->lru_lock );
  ret = ttm_mem_evict_first(bdev, mem_type, ((void *)0), 0, 0);
  if (ret) {
   if (allow_errors) {
    return ret;
   } else {
    printf("[TTM] " "Cleanup eviction failed\n");
   }
  }
  __mtx_enter(&glob->lru_lock );
 }
 __mtx_leave(&glob->lru_lock );
 return 0;
}
int ttm_bo_clean_mm(struct ttm_bo_device *bdev, unsigned mem_type)
{
 struct ttm_mem_type_manager *man;
 int ret = -22;
 if (mem_type >= 8) {
  printf("[TTM] " "Illegal memory type %d\n", mem_type);
  return ret;
 }
 man = &bdev->man[mem_type];
 if (!man->has_type) {
  printf("[TTM] " "Trying to take down uninitialized memory manager type %u\n", mem_type);
  return ret;
 }
 man->use_type = 0;
 man->has_type = 0;
 ret = 0;
 if (mem_type > 0) {
  ttm_bo_force_list_clean(bdev, mem_type, 0);
  ret = (*man->func->takedown)(man);
 }
 return ret;
}
;
int ttm_bo_evict_mm(struct ttm_bo_device *bdev, unsigned mem_type)
{
 struct ttm_mem_type_manager *man = &bdev->man[mem_type];
 if (mem_type == 0 || mem_type >= 8) {
  printf("[TTM] " "Illegal memory manager memory type %u\n", mem_type);
  return -22;
 }
 if (!man->has_type) {
  printf("[TTM] " "Memory type %u has not been initialized\n", mem_type);
  return 0;
 }
 return ttm_bo_force_list_clean(bdev, mem_type, 1);
}
;
int ttm_bo_init_mm(struct ttm_bo_device *bdev, unsigned type,
   unsigned long p_size)
{
 int ret = -22;
 struct ttm_mem_type_manager *man;
 ((!(type >= 8)) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../dev/pci/drm/ttm/ttm_bo.c", 1343, "!(type >= 8)"));
 man = &bdev->man[type];
 ((!(man->has_type)) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../dev/pci/drm/ttm/ttm_bo.c", 1345, "!(man->has_type)"));
 man->io_reserve_fastpath = 1;
 man->use_io_reserve_lru = 0;
 _rw_init_flags(&man->io_reserve_mutex, "ior", 0, ((void *)0));
 INIT_LIST_HEAD(&man->io_reserve_lru);
 ret = bdev->driver->init_mem_type(bdev, type, man);
 if (ret)
  return ret;
 man->bdev = bdev;
 ret = 0;
 if (type != 0) {
  ret = (*man->func->init)(man, p_size);
  if (ret)
   return ret;
 }
 man->has_type = 1;
 man->use_type = 1;
 man->size = p_size;
 INIT_LIST_HEAD(&man->lru);
 return 0;
}
;
static void ttm_bo_global_kobj_release(struct kobject *kobj)
{
 struct ttm_bo_global *glob =
  ({ const __typeof( ((struct ttm_bo_global *)0)->kobj ) *__mptr = (kobj); (struct ttm_bo_global *)( (char *)__mptr - __builtin_offsetof(struct ttm_bo_global, kobj) );});
 ttm_mem_unregister_shrink(glob->mem_glob, &glob->shrink);
 __free_page(glob->dummy_read_page);
 kfree(glob);
}
void ttm_bo_global_release(struct drm_global_reference *ref)
{
 struct ttm_bo_global *glob = ref->object;
 kobject_del(&glob->kobj);
 kobject_put(&glob->kobj);
}
;
int ttm_bo_global_init(struct drm_global_reference *ref)
{
 struct ttm_bo_global_ref *bo_ref =
  ({ const __typeof( ((struct ttm_bo_global_ref *)0)->ref ) *__mptr = (ref); (struct ttm_bo_global_ref *)( (char *)__mptr - __builtin_offsetof(struct ttm_bo_global_ref, ref) );});
 struct ttm_bo_global *glob = ref->object;
 int ret;
 _rw_init_flags(&glob->device_list_mutex, "gdl", 0, ((void *)0));
 do { (void)(((void *)0)); (void)(0); __mtx_init((&glob->lru_lock), ((((0)) > 0 && ((0)) < 12) ? 12 : ((0)))); } while (0);
 glob->mem_glob = bo_ref->mem_glob;
 glob->dummy_read_page = alloc_page(0x0008 | 0);
 if (__builtin_expect(!!(glob->dummy_read_page == ((void *)0)), 0)) {
  ret = -12;
  goto out_no_drp;
 }
 INIT_LIST_HEAD(&glob->swap_lru);
 INIT_LIST_HEAD(&glob->device_list);
 ttm_mem_init_shrink(&glob->shrink, ttm_bo_swapout);
 ret = ttm_mem_register_shrink(glob->mem_glob, &glob->shrink);
 if (__builtin_expect(!!(ret != 0), 0)) {
  printf("[TTM] " "Could not register buffer object swapout\n");
  goto out_no_shrink;
 }
 (*(&glob->bo_count) = (0));
 ret = kobject_init_and_add(
  &glob->kobj, &ttm_bo_glob_kobj_type, ttm_get_kobj(), "buffer_objects");
 if (__builtin_expect(!!(ret != 0), 0))
  kobject_put(&glob->kobj);
 return ret;
out_no_shrink:
 __free_page(glob->dummy_read_page);
out_no_drp:
 kfree(glob);
 return ret;
}
;
int ttm_bo_device_release(struct ttm_bo_device *bdev)
{
 int ret = 0;
 unsigned i = 8;
 struct ttm_mem_type_manager *man;
 struct ttm_bo_global *glob = bdev->glob;
 while (i--) {
  man = &bdev->man[i];
  if (man->has_type) {
   man->use_type = 0;
   if ((i != 0) && ttm_bo_clean_mm(bdev, i)) {
    ret = -16;
    printf("[TTM] " "DRM memory manager type %d is not clean\n", i);
   }
   man->has_type = 0;
  }
 }
 _rw_enter_write(&glob->device_list_mutex );
 list_del(&bdev->device_list);
 _rw_exit_write(&glob->device_list_mutex );
 cancel_delayed_work_sync(&bdev->wq);
 while (ttm_bo_delayed_delete(bdev, 1))
  ;
 __mtx_enter(&glob->lru_lock );
 if (list_empty(&bdev->ddestroy))
  ;
 if (list_empty(&bdev->man[0].lru))
  ;
 __mtx_leave(&glob->lru_lock );
 drm_vma_offset_manager_destroy(&bdev->vma_manager);
 return ret;
}
;
int ttm_bo_device_init(struct ttm_bo_device *bdev,
         struct ttm_bo_global *glob,
         struct ttm_bo_driver *driver,
         struct address_space *mapping,
         uint64_t file_page_offset,
         _Bool need_dma32)
{
 int ret = -22;
 bdev->driver = driver;
 __builtin_memset((bdev->man), (0), (sizeof(bdev->man)));
 ret = ttm_bo_init_mm(bdev, 0, 0);
 if (__builtin_expect(!!(ret != 0), 0))
  goto out_no_sys;
 drm_vma_offset_manager_init(&bdev->vma_manager, file_page_offset,
        0x10000000);
 INIT_DELAYED_WORK(&bdev->wq, ttm_bo_delayed_workqueue);
 INIT_LIST_HEAD(&bdev->ddestroy);
 bdev->dev_mapping = mapping;
 bdev->glob = glob;
 bdev->need_dma32 = need_dma32;
 bdev->val_seq = 0;
 _rw_enter_write(&glob->device_list_mutex );
 list_add_tail(&bdev->device_list, &glob->device_list);
 _rw_exit_write(&glob->device_list_mutex );
 return 0;
out_no_sys:
 return ret;
}
;
_Bool ttm_mem_reg_is_pci(struct ttm_bo_device *bdev, struct ttm_mem_reg *mem)
{
 struct ttm_mem_type_manager *man = &bdev->man[mem->mem_type];
 if (!(man->flags & (1 << 0))) {
  if (mem->mem_type == 0)
   return 0;
  if (man->flags & (1 << 3))
   return 0;
  if (mem->placement & (1 << 16))
   return 0;
 }
 return 1;
}
void ttm_bo_unmap_virtual_locked(struct ttm_buffer_object *bo)
{
 struct ttm_tt *ttm = bo->ttm;
 struct vm_page *page;
 bus_addr_t addr;
 paddr_t paddr;
 int i;
 if (drm_vma_node_has_offset(&bo->vma_node)) {
  if (bo->mem.bus.is_iomem) {
   for (i = 0; i < bo->mem.num_pages; ++i) {
    addr = bo->mem.bus.base + bo->mem.bus.offset;
    paddr = bus_space_mmap(bo->bdev->memt, addr,
             i << 13, 0, 0);
    page = PHYS_TO_VM_PAGE(paddr);
    if (__builtin_expect(!!(page == ((void *)0)), 0))
     continue;
    pmap_page_protect(page, 0x00);
   }
  } else if (ttm) {
   for (i = 0; i < ttm->num_pages; ++i) {
    page = ttm->pages[i];
    if (__builtin_expect(!!(page == ((void *)0)), 0))
     continue;
    pmap_page_protect(page, 0x00);
   }
  }
 }
 ttm_mem_io_free_vm(bo);
}
void ttm_bo_unmap_virtual(struct ttm_buffer_object *bo)
{
 struct ttm_bo_device *bdev = bo->bdev;
 struct ttm_mem_type_manager *man = &bdev->man[bo->mem.mem_type];
 ttm_mem_io_lock(man, 0);
 ttm_bo_unmap_virtual_locked(bo);
 ttm_mem_io_unlock(man);
}
;
int ttm_bo_wait(struct ttm_buffer_object *bo,
  _Bool lazy, _Bool interruptible, _Bool no_wait)
{
 struct reservation_object_list *fobj;
 struct reservation_object *resv;
 struct fence *excl;
 long timeout = 15 * hz;
 int i;
 resv = bo->resv;
 fobj = reservation_object_get_list(resv);
 excl = reservation_object_get_excl(resv);
 if (excl) {
  if (!fence_is_signaled(excl)) {
   if (no_wait)
    return -16;
   timeout = fence_wait_timeout(excl,
           interruptible, timeout);
  }
 }
 for (i = 0; fobj && timeout > 0 && i < fobj->shared_count; ++i) {
  struct fence *fence;
  fence = (fobj->shared[i]);
  if (!fence_is_signaled(fence)) {
   if (no_wait)
    return -16;
   timeout = fence_wait_timeout(fence,
           interruptible, timeout);
  }
 }
 if (timeout < 0)
  return timeout;
 if (timeout == 0)
  return -16;
 reservation_object_add_excl_fence(resv, ((void *)0));
 clear_bit(0, &bo->priv_flags);
 return 0;
}
;
int ttm_bo_synccpu_write_grab(struct ttm_buffer_object *bo, _Bool no_wait)
{
 int ret = 0;
 ret = ttm_bo_reserve(bo, 1, no_wait, 0, ((void *)0));
 if (__builtin_expect(!!(ret != 0), 0))
  return ret;
 ret = ttm_bo_wait(bo, 0, 1, no_wait);
 if (__builtin_expect(!!(ret == 0), 1))
  __sync_fetch_and_add(&bo->cpu_writers, 1);
 ttm_bo_unreserve(bo);
 return ret;
}
;
void ttm_bo_synccpu_write_release(struct ttm_buffer_object *bo)
{
 __sync_fetch_and_sub(&bo->cpu_writers, 1);
}
;
static int ttm_bo_swapout(struct ttm_mem_shrink *shrink)
{
 struct ttm_bo_global *glob =
     ({ const __typeof( ((struct ttm_bo_global *)0)->shrink ) *__mptr = (shrink); (struct ttm_bo_global *)( (char *)__mptr - __builtin_offsetof(struct ttm_bo_global, shrink) );});
 struct ttm_buffer_object *bo;
 int ret = -16;
 int put_count;
 __mtx_enter(&glob->lru_lock );
 for (bo = ({ const __typeof( ((__typeof(*bo) *)0)->swap ) *__mptr = ((&glob->swap_lru)->next); (__typeof(*bo) *)( (char *)__mptr - __builtin_offsetof(__typeof(*bo), swap) );}); &bo->swap != (&glob->swap_lru); bo = ({ const __typeof( ((__typeof(*bo) *)0)->swap ) *__mptr = (bo->swap.next); (__typeof(*bo) *)( (char *)__mptr - __builtin_offsetof(__typeof(*bo), swap) );})) {
  ret = __ttm_bo_reserve(bo, 0, 1, 0, ((void *)0));
  if (!ret)
   break;
 }
 if (ret) {
  __mtx_leave(&glob->lru_lock );
  return ret;
 }
 kref_get(&bo->list_kref);
 if (!list_empty(&bo->ddestroy)) {
  ret = ttm_bo_cleanup_refs_and_unlock(bo, 0, 0);
  kref_put(&bo->list_kref, ttm_bo_release_list);
  return ret;
 }
 put_count = ttm_bo_del_from_lru(bo);
 __mtx_leave(&glob->lru_lock );
 ttm_bo_list_ref_sub(bo, put_count, 1);
 ret = ttm_bo_wait(bo, 0, 0, 0);
 if (__builtin_expect(!!(ret != 0), 0))
  goto out;
 if (bo->mem.mem_type != 0 ||
     bo->ttm->caching_state != tt_cached) {
  struct ttm_mem_reg evict_mem;
  evict_mem = bo->mem;
  evict_mem.mm_node = ((void *)0);
  evict_mem.placement = (1 << 0) | (1 << 16);
  evict_mem.mem_type = 0;
  ret = ttm_bo_handle_move_mem(bo, &evict_mem, 1,
          0, 0);
  if (__builtin_expect(!!(ret != 0), 0))
   goto out;
 }
 ttm_bo_unmap_virtual(bo);
 if (bo->bdev->driver->swap_notify)
  bo->bdev->driver->swap_notify(bo);
 ret = ttm_tt_swapout(bo->ttm, bo->persistent_swap_storage);
out:
 __ttm_bo_unreserve(bo);
 kref_put(&bo->list_kref, ttm_bo_release_list);
 return ret;
}
void ttm_bo_swapout_all(struct ttm_bo_device *bdev)
{
 while (ttm_bo_swapout(&bdev->glob->shrink) == 0)
  ;
}
;
int ttm_bo_wait_unreserved(struct ttm_buffer_object *bo)
{
 int ret;
 ret = -_rw_enter(&bo->wu_mutex, 0x0001UL | 0x0010UL );
 if (__builtin_expect(!!(ret != 0), 0))
  return -4;
 if (!ww_mutex_is_locked(&bo->resv->lock))
  goto out_unlock;
 ret = __ttm_bo_reserve(bo, 1, 0, 0, ((void *)0));
 if (__builtin_expect(!!(ret != 0), 0))
  goto out_unlock;
 __ttm_bo_unreserve(bo);
out_unlock:
 _rw_exit_write(&bo->wu_mutex );
 return ret;
}
